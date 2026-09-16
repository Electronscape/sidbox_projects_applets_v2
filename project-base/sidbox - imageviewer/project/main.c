#include "main.h"
#include "apis.h"

#define APP_TITLE       "Image Viewer"
#define LCD_W           480
#define LCD_H           320
#define FILE_HANDLE     0
#define MAX_PALETTE     256
#define HIST_BITS_R     5
#define HIST_BITS_G     6
#define HIST_BITS_B     5
#define HIST_SIZE       65536u
#define QUANT_EMPTY     0xffu

#define IFF_ID(a,b,c,d) (((uint32_t)(a) << 24) | ((uint32_t)(b) << 16) | \
                         ((uint32_t)(c) << 8)  |  (uint32_t)(d))

#define CAMG_HAM        0x00000800u
#define CAMG_EHB        0x00000080u

typedef struct {
    uint16_t width;
    uint16_t height;
    uint8_t *pixels;
    uint32_t palette[MAX_PALETTE];
} Image8;

typedef struct {
    uint32_t count;
    uint32_t rsum;
    uint32_t gsum;
    uint32_t bsum;
} HistBin;

typedef struct {
    uint32_t first;
    uint32_t count;
    uint32_t pixels;
    uint8_t rmin;
    uint8_t rmax;
    uint8_t gmin;
    uint8_t gmax;
    uint8_t bmin;
    uint8_t bmax;
} QuantBox;

typedef struct {
    uint16_t w;
    uint16_t h;
    uint8_t nplanes;
    uint8_t masking;
    uint8_t compression;
    uint16_t transparent;
    uint16_t page_w;
    uint16_t page_h;
} BMHD;

static uint32_t g_default_palette[MAX_PALETTE];
static char g_status[160];
static Image8 g_image;

static HistBin *g_hist;
static uint16_t *g_bins;
static uint8_t *g_bin_to_pal;
static QuantBox g_boxes[MAX_PALETTE];
static uint8_t g_sort_channel;

static uint16_t rd_le16(const uint8_t *p)
{
    return (uint16_t)p[0] | ((uint16_t)p[1] << 8);
}

static uint32_t rd_le32(const uint8_t *p)
{
    return (uint32_t)p[0] | ((uint32_t)p[1] << 8) |
           ((uint32_t)p[2] << 16) | ((uint32_t)p[3] << 24);
}

static uint16_t rd_be16(const uint8_t *p)
{
    return ((uint16_t)p[0] << 8) | (uint16_t)p[1];
}

static uint32_t rd_be32(const uint8_t *p)
{
    return ((uint32_t)p[0] << 24) | ((uint32_t)p[1] << 16) |
           ((uint32_t)p[2] << 8) | (uint32_t)p[3];
}

static uint32_t argb(uint8_t r, uint8_t g, uint8_t b)
{
    return 0xff000000u | ((uint32_t)r << 16) | ((uint32_t)g << 8) | b;
}

static uint8_t pal_r(uint32_t c)
{
    return (uint8_t)((c >> 16) & 0xffu);
}

static uint8_t pal_g(uint32_t c)
{
    return (uint8_t)((c >> 8) & 0xffu);
}

static uint8_t pal_b(uint32_t c)
{
    return (uint8_t)(c & 0xffu);
}

static void init_default_palette(void)
{
    g_default_palette[0] = argb(0, 0, 0);
    g_default_palette[1] = argb(255, 255, 255);
    g_default_palette[2] = argb(96, 96, 96);
    g_default_palette[3] = argb(220, 220, 220);

    for (uint16_t i = 4; i < MAX_PALETTE; ++i) {
        uint8_t v = (uint8_t)i;
        g_default_palette[i] = argb(v, v, v);
    }
}

static void set_status(const char *text)
{
    strncpy(g_status, text, sizeof(g_status) - 1u);
    g_status[sizeof(g_status) - 1u] = '\0';
    dbug(g_status);
    dbug("\n");
}

static void restore_lcd_desktop_mode(void)
{
    gfx_lcdwait();
    gfx_mode(LCD_W, LCD_H, LCD_W, LCD_H,
             DISPFLAG_DUALLAYER | DISPFLAG_NOSCROLLABLE);
    restore_desktop();
    gfx_lcdwait();
}

static int has_image_ext(const char *path)
{
    const char *dot = strrchr(path, '.');

    if (!dot) {
        return 0;
    }

    return ((dot[1] == 'b' || dot[1] == 'B') &&
            (dot[2] == 'm' || dot[2] == 'M') &&
            (dot[3] == 'p' || dot[3] == 'P') && dot[4] == '\0') ||
           ((dot[1] == 'i' || dot[1] == 'I') &&
            (dot[2] == 'f' || dot[2] == 'F') &&
            (dot[3] == 'f' || dot[3] == 'F') && dot[4] == '\0') ||
           ((dot[1] == 'i' || dot[1] == 'I') &&
            (dot[2] == 'l' || dot[2] == 'L') &&
            (dot[3] == 'b' || dot[3] == 'B') &&
            (dot[4] == 'm' || dot[4] == 'M') && dot[5] == '\0') ||
           ((dot[1] == 'l' || dot[1] == 'L') &&
            (dot[2] == 'b' || dot[2] == 'B') &&
            (dot[3] == 'm' || dot[3] == 'M') && dot[4] == '\0');
}

static const char *pick_filename(int argc, char *argv[])
{
    for (int i = 1; i < argc; ++i) {
        if (argv[i] && argv[i][0]) {
            return argv[i];
        }
    }

    if (argc > 0 && argv[0] && has_image_ext(argv[0])) {
        return argv[0];
    }

    return NULL;
}

static uint8_t *load_file(const char *path, uint32_t *out_len)
{
    uint32_t len;
    uint32_t got = 0;
    uint8_t *data;
    FRESULT res;

    *out_len = 0;

    res = sfopen(FILE_HANDLE, (char *)path, SD_OPEN_EXISTING | SD_READ);
    if (res != FR_OK) {
        snprintf(g_status, sizeof(g_status), "Open failed FR %u: %s",
                 (unsigned)res, path);
        set_status(g_status);
        return NULL;
    }

    len = SYSFileSystem->sbfilelen(FILE_HANDLE);
    if (len == 0u) {
        sfclose(FILE_HANDLE);
        set_status("File is empty");
        return NULL;
    }

    data = (uint8_t *)malloc(len);
    if (!data) {
        sfclose(FILE_HANDLE);
        set_status("Not enough memory for file");
        return NULL;
    }

    res = sfread(FILE_HANDLE, data, len, &got);
    sfclose(FILE_HANDLE);

    if (res != FR_OK || got != len) {
        free(data);
        snprintf(g_status, sizeof(g_status), "Read failed FR %u",
                 (unsigned)res);
        set_status(g_status);
        return NULL;
    }

    *out_len = len;
    return data;
}

static void free_image(Image8 *img)
{
    if (img->pixels) {
        free(img->pixels);
    }

    memset(img, 0, sizeof(*img));
}

static uint16_t hist_key(uint8_t r, uint8_t g, uint8_t b)
{
    return (uint16_t)(((uint16_t)(r >> 3) << 11) |
                      ((uint16_t)(g >> 2) << 5) |
                      (uint16_t)(b >> 3));
}

static uint8_t bin_r(uint16_t key)
{
    uint8_t v = (uint8_t)((key >> 11) & 0x1fu);
    return (uint8_t)((v << 3) | (v >> 2));
}

static uint8_t bin_g(uint16_t key)
{
    uint8_t v = (uint8_t)((key >> 5) & 0x3fu);
    return (uint8_t)((v << 2) | (v >> 4));
}

static uint8_t bin_b(uint16_t key)
{
    uint8_t v = (uint8_t)(key & 0x1fu);
    return (uint8_t)((v << 3) | (v >> 2));
}

static int compare_bins(const void *a, const void *b)
{
    uint16_t ka = *(const uint16_t *)a;
    uint16_t kb = *(const uint16_t *)b;
    int va;
    int vb;

    if (g_sort_channel == 0u) {
        va = bin_r(ka);
        vb = bin_r(kb);
    } else if (g_sort_channel == 1u) {
        va = bin_g(ka);
        vb = bin_g(kb);
    } else {
        va = bin_b(ka);
        vb = bin_b(kb);
    }

    return va - vb;
}

static void update_box(QuantBox *box)
{
    uint32_t end = box->first + box->count;
    uint8_t rmin = 255;
    uint8_t gmin = 255;
    uint8_t bmin = 255;
    uint8_t rmax = 0;
    uint8_t gmax = 0;
    uint8_t bmax = 0;
    uint32_t pixels = 0;

    for (uint32_t i = box->first; i < end; ++i) {
        uint16_t key = g_bins[i];
        uint8_t r = bin_r(key);
        uint8_t g = bin_g(key);
        uint8_t b = bin_b(key);

        if (r < rmin) rmin = r;
        if (r > rmax) rmax = r;
        if (g < gmin) gmin = g;
        if (g > gmax) gmax = g;
        if (b < bmin) bmin = b;
        if (b > bmax) bmax = b;
        pixels += g_hist[key].count;
    }

    box->rmin = rmin;
    box->rmax = rmax;
    box->gmin = gmin;
    box->gmax = gmax;
    box->bmin = bmin;
    box->bmax = bmax;
    box->pixels = pixels;
}

static int pick_split_box(QuantBox *boxes, uint16_t box_count)
{
    int best = -1;
    uint32_t best_score = 0;

    for (uint16_t i = 0; i < box_count; ++i) {
        uint32_t rr = (uint32_t)(boxes[i].rmax - boxes[i].rmin);
        uint32_t gr = (uint32_t)(boxes[i].gmax - boxes[i].gmin);
        uint32_t br = (uint32_t)(boxes[i].bmax - boxes[i].bmin);
        uint32_t range = MAX(rr, MAX(gr, br));
        uint32_t score = range * boxes[i].pixels;

        if (boxes[i].count > 1u && score > best_score) {
            best = (int)i;
            best_score = score;
        }
    }

    return best;
}

static uint8_t nearest_palette_colour(uint8_t r, uint8_t g, uint8_t b,
                                      const uint32_t *palette,
                                      uint16_t palette_count)
{
    uint32_t best_dist = 0xffffffffu;
    uint16_t best = 0;

    for (uint16_t i = 0; i < palette_count; ++i) {
        int32_t dr = (int32_t)r - (int32_t)pal_r(palette[i]);
        int32_t dg = (int32_t)g - (int32_t)pal_g(palette[i]);
        int32_t db = (int32_t)b - (int32_t)pal_b(palette[i]);
        uint32_t dist = (uint32_t)(dr * dr + dg * dg + db * db);

        if (dist < best_dist) {
            best_dist = dist;
            best = i;
        }
    }

    return (uint8_t)best;
}

static int quantize_rgb_to_image(const uint8_t *rgb, uint32_t pixel_count,
                                 Image8 *img)
{
    uint16_t box_count = 1;
    uint32_t used_bins = 0;

    g_hist = (HistBin *)calloc(HIST_SIZE, sizeof(HistBin));
    g_bins = (uint16_t *)malloc(HIST_SIZE * sizeof(uint16_t));
    g_bin_to_pal = (uint8_t *)malloc(HIST_SIZE);

    if (!g_hist || !g_bins || !g_bin_to_pal) {
        free(g_hist);
        free(g_bins);
        free(g_bin_to_pal);
        g_hist = NULL;
        g_bins = NULL;
        g_bin_to_pal = NULL;
        set_status("Not enough memory for quantizer");
        return 0;
    }

    memset(g_bin_to_pal, QUANT_EMPTY, HIST_SIZE);

    for (uint32_t i = 0; i < pixel_count; ++i) {
        uint8_t r = rgb[(i * 3u) + 0u];
        uint8_t g = rgb[(i * 3u) + 1u];
        uint8_t b = rgb[(i * 3u) + 2u];
        uint16_t key = hist_key(r, g, b);

        if (g_hist[key].count == 0u) {
            g_bins[used_bins++] = key;
        }

        ++g_hist[key].count;
        g_hist[key].rsum += r;
        g_hist[key].gsum += g;
        g_hist[key].bsum += b;
    }

    if (used_bins == 0u) {
        free(g_hist);
        free(g_bins);
        free(g_bin_to_pal);
        g_hist = NULL;
        g_bins = NULL;
        g_bin_to_pal = NULL;
        set_status("Image had no pixels");
        return 0;
    }

    g_boxes[0].first = 0;
    g_boxes[0].count = used_bins;
    update_box(&g_boxes[0]);

    while (box_count < MAX_PALETTE) {
        int split_index = pick_split_box(g_boxes, box_count);
        QuantBox *box;
        uint32_t split;
        uint32_t acc = 0;
        uint32_t half;
        uint32_t rr;
        uint32_t gr;
        uint32_t br;

        if (split_index < 0) {
            break;
        }

        box = &g_boxes[split_index];
        rr = (uint32_t)(box->rmax - box->rmin);
        gr = (uint32_t)(box->gmax - box->gmin);
        br = (uint32_t)(box->bmax - box->bmin);

        if (rr >= gr && rr >= br) {
            g_sort_channel = 0;
        } else if (gr >= br) {
            g_sort_channel = 1;
        } else {
            g_sort_channel = 2;
        }

        qsort(&g_bins[box->first], box->count, sizeof(uint16_t), compare_bins);

        half = box->pixels / 2u;
        split = box->first;
        for (uint32_t i = box->first; i < box->first + box->count; ++i) {
            acc += g_hist[g_bins[i]].count;
            split = i + 1u;
            if (acc >= half) {
                break;
            }
        }

        if (split <= box->first || split >= box->first + box->count) {
            split = box->first + (box->count / 2u);
        }

        g_boxes[box_count].first = split;
        g_boxes[box_count].count = (box->first + box->count) - split;
        box->count = split - box->first;

        update_box(box);
        update_box(&g_boxes[box_count]);
        ++box_count;
    }

    for (uint16_t i = 0; i < box_count; ++i) {
        uint64_t rsum = 0;
        uint64_t gsum = 0;
        uint64_t bsum = 0;
        uint32_t pixels = 0;
        uint32_t end = g_boxes[i].first + g_boxes[i].count;

        for (uint32_t j = g_boxes[i].first; j < end; ++j) {
            uint16_t key = g_bins[j];
            rsum += g_hist[key].rsum;
            gsum += g_hist[key].gsum;
            bsum += g_hist[key].bsum;
            pixels += g_hist[key].count;
        }

        if (pixels == 0u) {
            img->palette[i] = argb(0, 0, 0);
        } else {
            img->palette[i] = argb((uint8_t)(rsum / pixels),
                                   (uint8_t)(gsum / pixels),
                                   (uint8_t)(bsum / pixels));
        }
    }

    for (uint16_t i = box_count; i < MAX_PALETTE; ++i) {
        img->palette[i] = argb(0, 0, 0);
    }

    img->pixels = (uint8_t *)malloc(pixel_count);
    if (!img->pixels) {
        free(g_hist);
        free(g_bins);
        free(g_bin_to_pal);
        g_hist = NULL;
        g_bins = NULL;
        g_bin_to_pal = NULL;
        set_status("Not enough memory for indexed image");
        return 0;
    }

    for (uint32_t i = 0; i < pixel_count; ++i) {
        uint8_t r = rgb[(i * 3u) + 0u];
        uint8_t g = rgb[(i * 3u) + 1u];
        uint8_t b = rgb[(i * 3u) + 2u];
        uint16_t key = hist_key(r, g, b);
        uint8_t pi = g_bin_to_pal[key];

        if (pi == QUANT_EMPTY) {
            pi = nearest_palette_colour(bin_r(key), bin_g(key), bin_b(key),
                                        img->palette, box_count);
            g_bin_to_pal[key] = pi;
        }

        img->pixels[i] = pi;
    }

    free(g_hist);
    free(g_bins);
    free(g_bin_to_pal);
    g_hist = NULL;
    g_bins = NULL;
    g_bin_to_pal = NULL;

    return 1;
}

static uint32_t bmp_mask_to_shift(uint32_t mask)
{
    uint32_t shift = 0;

    if (mask == 0u) {
        return 0;
    }

    while ((mask & 1u) == 0u) {
        mask >>= 1;
        ++shift;
    }

    return shift;
}

static uint32_t bmp_mask_to_bits(uint32_t mask)
{
    uint32_t bits = 0;

    while (mask && (mask & 1u) == 0u) {
        mask >>= 1;
    }

    while (mask & 1u) {
        ++bits;
        mask >>= 1;
    }

    return bits;
}

static uint8_t scale_masked(uint32_t pixel, uint32_t mask)
{
    uint32_t shift;
    uint32_t bits;
    uint32_t value;
    uint32_t max_value;

    if (mask == 0u) {
        return 0;
    }

    shift = bmp_mask_to_shift(mask);
    bits = bmp_mask_to_bits(mask);
    value = (pixel & mask) >> shift;
    max_value = (1u << bits) - 1u;

    return (uint8_t)((value * 255u + (max_value / 2u)) / max_value);
}

static int load_bmp_from_memory(const uint8_t *data, uint32_t len, Image8 *img)
{
    uint32_t pixel_offset;
    uint32_t dib_size;
    int32_t width;
    int32_t height_raw;
    uint32_t height;
    uint16_t bpp;
    uint32_t compression;
    uint32_t clr_used;
    uint32_t row_stride;
    uint32_t palette_entries = 0;
    uint32_t masks[4] = { 0x7c00u, 0x03e0u, 0x001fu, 0u };
    uint8_t top_down = 0;
    uint8_t *rgb = NULL;

    if (len < 54u || data[0] != 'B' || data[1] != 'M') {
        set_status("Not a BMP file");
        return 0;
    }

    pixel_offset = rd_le32(&data[10]);
    dib_size = rd_le32(&data[14]);
    if (dib_size < 40u || 14u + dib_size > len) {
        set_status("Unsupported BMP header");
        return 0;
    }

    width = (int32_t)rd_le32(&data[18]);
    height_raw = (int32_t)rd_le32(&data[22]);
    bpp = rd_le16(&data[28]);
    compression = rd_le32(&data[30]);
    clr_used = rd_le32(&data[46]);

    if (width <= 0 || height_raw == 0) {
        set_status("Invalid BMP dimensions");
        return 0;
    }

    if (height_raw < 0) {
        top_down = 1;
        height = (uint32_t)(-height_raw);
    } else {
        height = (uint32_t)height_raw;
    }

    if ((uint32_t)width > 4096u || height > 4096u ||
        (uint64_t)(uint32_t)width * (uint64_t)height > 5000000ull) {
        set_status("BMP is too large for this applet");
        return 0;
    }

    if (pixel_offset >= len) {
        set_status("BMP pixel offset is outside the file");
        return 0;
    }

    if (compression != 0u && compression != 3u) {
        set_status("Only uncompressed BMP files are supported");
        return 0;
    }

    if (bpp <= 8u) {
        palette_entries = clr_used ? clr_used : (1u << bpp);
        if (palette_entries > MAX_PALETTE) {
            palette_entries = MAX_PALETTE;
        }
        if (14u + dib_size + (palette_entries * 4u) > len) {
            set_status("BMP palette is truncated");
            return 0;
        }
    }

    if (compression == 3u && (bpp == 16u || bpp == 32u)) {
        uint32_t mask_offset = 14u + 40u;
        if (dib_size >= 52u) {
            masks[0] = rd_le32(&data[54]);
            masks[1] = rd_le32(&data[58]);
            masks[2] = rd_le32(&data[62]);
            if (dib_size >= 56u) {
                masks[3] = rd_le32(&data[66]);
            }
        } else if (mask_offset + 12u <= len) {
            masks[0] = rd_le32(&data[mask_offset]);
            masks[1] = rd_le32(&data[mask_offset + 4u]);
            masks[2] = rd_le32(&data[mask_offset + 8u]);
        }
    } else if (bpp == 16u) {
        masks[0] = 0x7c00u;
        masks[1] = 0x03e0u;
        masks[2] = 0x001fu;
    } else if (bpp == 32u) {
        masks[0] = 0x00ff0000u;
        masks[1] = 0x0000ff00u;
        masks[2] = 0x000000ffu;
    }

    row_stride = (((uint32_t)width * (uint32_t)bpp + 31u) / 32u) * 4u;
    if (pixel_offset + (row_stride * height) > len) {
        set_status("BMP pixel data is truncated");
        return 0;
    }

    img->width = (uint16_t)width;
    img->height = (uint16_t)height;

    if (bpp <= 8u) {
        const uint8_t *pal = &data[14u + dib_size];

        for (uint32_t i = 0; i < palette_entries; ++i) {
            img->palette[i] = argb(pal[(i * 4u) + 2u],
                                   pal[(i * 4u) + 1u],
                                   pal[(i * 4u) + 0u]);
        }
        for (uint32_t i = palette_entries; i < MAX_PALETTE; ++i) {
            img->palette[i] = argb(0, 0, 0);
        }

        img->pixels = (uint8_t *)malloc((uint32_t)width * height);
        if (!img->pixels) {
            set_status("Not enough memory for BMP pixels");
            return 0;
        }

        for (uint32_t y = 0; y < height; ++y) {
            uint32_t src_y = top_down ? y : (height - 1u - y);
            const uint8_t *src = &data[pixel_offset + (src_y * row_stride)];
            uint8_t *dst = &img->pixels[y * (uint32_t)width];

            for (uint32_t x = 0; x < (uint32_t)width; ++x) {
                if (bpp == 8u) {
                    dst[x] = src[x];
                } else if (bpp == 4u) {
                    uint8_t byte = src[x >> 1];
                    dst[x] = (x & 1u) ? (byte & 0x0fu) : (byte >> 4);
                } else if (bpp == 1u) {
                    uint8_t byte = src[x >> 3];
                    dst[x] = (byte & (0x80u >> (x & 7u))) ? 1u : 0u;
                } else {
                    set_status("Unsupported BMP bit depth");
                    return 0;
                }
            }
        }

        return 1;
    }

    if (bpp != 16u && bpp != 24u && bpp != 32u) {
        set_status("Unsupported BMP bit depth");
        return 0;
    }

    rgb = (uint8_t *)malloc((uint32_t)width * height * 3u);
    if (!rgb) {
        set_status("Not enough memory for BMP truecolour");
        return 0;
    }

    for (uint32_t y = 0; y < height; ++y) {
        uint32_t src_y = top_down ? y : (height - 1u - y);
        const uint8_t *src = &data[pixel_offset + (src_y * row_stride)];

        for (uint32_t x = 0; x < (uint32_t)width; ++x) {
            uint8_t r;
            uint8_t g;
            uint8_t b;

            if (bpp == 24u) {
                b = src[(x * 3u) + 0u];
                g = src[(x * 3u) + 1u];
                r = src[(x * 3u) + 2u];
            } else if (bpp == 32u) {
                uint32_t p = rd_le32(&src[x * 4u]);
                r = scale_masked(p, masks[0]);
                g = scale_masked(p, masks[1]);
                b = scale_masked(p, masks[2]);
            } else {
                uint32_t p = rd_le16(&src[x * 2u]);
                r = scale_masked(p, masks[0]);
                g = scale_masked(p, masks[1]);
                b = scale_masked(p, masks[2]);
            }

            rgb[((y * (uint32_t)width + x) * 3u) + 0u] = r;
            rgb[((y * (uint32_t)width + x) * 3u) + 1u] = g;
            rgb[((y * (uint32_t)width + x) * 3u) + 2u] = b;
        }
    }

    if (!quantize_rgb_to_image(rgb, (uint32_t)width * height, img)) {
        free(rgb);
        return 0;
    }

    free(rgb);
    return 1;
}

static int byterun_read(const uint8_t *src, uint32_t len, uint32_t *pos,
                        uint8_t *dst, uint32_t need)
{
    uint32_t out = 0;

    while (out < need && *pos < len) {
        int8_t n = (int8_t)src[*pos];
        ++(*pos);

        if (n >= 0) {
            uint32_t count = (uint32_t)n + 1u;
            if (*pos + count > len || out + count > need) {
                return 0;
            }
            memcpy(&dst[out], &src[*pos], count);
            *pos += count;
            out += count;
        } else if (n != -128) {
            uint32_t count = (uint32_t)(1 - n);
            uint8_t value;
            if (*pos >= len || out + count > need) {
                return 0;
            }
            value = src[*pos];
            ++(*pos);
            memset(&dst[out], value, count);
            out += count;
        }
    }

    return out == need;
}

static uint8_t ilbm_plane_pixel(const uint8_t *planes, uint32_t rowbytes,
                                uint8_t plane_count, uint32_t x)
{
    uint8_t value = 0;
    uint8_t mask = (uint8_t)(0x80u >> (x & 7u));
    uint32_t byte_index = x >> 3;

    for (uint8_t p = 0; p < plane_count && p < 8u; ++p) {
        const uint8_t *plane = &planes[(uint32_t)p * rowbytes];
        if (plane[byte_index] & mask) {
            value |= (uint8_t)(1u << p);
        }
    }

    return value;
}

static uint8_t ilbm_8bit_channel(const uint8_t *planes, uint32_t rowbytes,
                                 uint8_t first_plane, uint32_t x)
{
    uint8_t value = 0;
    uint8_t mask = (uint8_t)(0x80u >> (x & 7u));
    uint32_t byte_index = x >> 3;

    for (uint8_t bit = 0; bit < 8u; ++bit) {
        const uint8_t *plane = &planes[(uint32_t)(first_plane + bit) * rowbytes];
        if (plane[byte_index] & mask) {
            value |= (uint8_t)(0x80u >> bit);
        }
    }

    return value;
}

static int parse_bmhd(const uint8_t *data, uint32_t len, BMHD *bmhd)
{
    if (len < 20u) {
        return 0;
    }

    bmhd->w = rd_be16(&data[0]);
    bmhd->h = rd_be16(&data[2]);
    bmhd->nplanes = data[8];
    bmhd->masking = data[9];
    bmhd->compression = data[10];
    bmhd->transparent = rd_be16(&data[12]);
    bmhd->page_w = rd_be16(&data[16]);
    bmhd->page_h = rd_be16(&data[18]);

    return bmhd->w != 0u && bmhd->h != 0u;
}

static int load_iff_from_memory(const uint8_t *data, uint32_t len, Image8 *img)
{
    BMHD bmhd;
    const uint8_t *cmap = NULL;
    const uint8_t *body = NULL;
    uint32_t cmap_len = 0;
    uint32_t body_len = 0;
    uint32_t pos = 12u;
    uint32_t form_type;
    uint32_t camg = 0;
    uint8_t has_bmhd = 0;
    uint8_t is_pbm = 0;
    uint8_t is_ham = 0;
    uint8_t is_true24 = 0;
    uint32_t rowbytes;
    uint32_t planes_in_file;
    uint8_t *rowbuf = NULL;
    uint8_t *rgb = NULL;

    memset(&bmhd, 0, sizeof(bmhd));

    if (len < 12u || rd_be32(&data[0]) != IFF_ID('F','O','R','M')) {
        set_status("Not an IFF FORM file");
        return 0;
    }

    form_type = rd_be32(&data[8]);
    if (form_type == IFF_ID('P','B','M',' ')) {
        is_pbm = 1;
    } else if (form_type != IFF_ID('I','L','B','M')) {
        set_status("IFF file is not ILBM/PBM");
        return 0;
    }

    while (pos + 8u <= len) {
        uint32_t id = rd_be32(&data[pos]);
        uint32_t size = rd_be32(&data[pos + 4u]);
        const uint8_t *chunk = &data[pos + 8u];
        uint32_t next = pos + 8u + size + (size & 1u);

        if (pos + 8u + size > len) {
            set_status("IFF chunk is truncated");
            return 0;
        }

        if (id == IFF_ID('B','M','H','D')) {
            if (!parse_bmhd(chunk, size, &bmhd)) {
                set_status("Invalid BMHD chunk");
                return 0;
            }
            has_bmhd = 1;
        } else if (id == IFF_ID('C','M','A','P')) {
            cmap = chunk;
            cmap_len = size;
        } else if (id == IFF_ID('B','O','D','Y')) {
            body = chunk;
            body_len = size;
        } else if (id == IFF_ID('C','A','M','G') && size >= 4u) {
            camg = rd_be32(chunk);
        }

        pos = next;
    }

    if (!has_bmhd || !body) {
        set_status("IFF is missing BMHD or BODY");
        return 0;
    }

    if (bmhd.compression > 1u) {
        set_status("Unsupported IFF compression");
        return 0;
    }

    if (bmhd.w > 4096u || bmhd.h > 4096u ||
        (uint64_t)bmhd.w * (uint64_t)bmhd.h > 5000000ull) {
        set_status("IFF is too large for this applet");
        return 0;
    }

    img->width = bmhd.w;
    img->height = bmhd.h;

    for (uint16_t i = 0; i < MAX_PALETTE; ++i) {
        img->palette[i] = argb(0, 0, 0);
    }

    if (cmap) {
        uint32_t entries = cmap_len / 3u;
        if (entries > MAX_PALETTE) {
            entries = MAX_PALETTE;
        }

        for (uint32_t i = 0; i < entries; ++i) {
            img->palette[i] = argb(cmap[(i * 3u) + 0u],
                                   cmap[(i * 3u) + 1u],
                                   cmap[(i * 3u) + 2u]);
        }

        if ((camg & CAMG_EHB) && entries <= 32u) {
            for (uint32_t i = 0; i < entries && i + 32u < MAX_PALETTE; ++i) {
                img->palette[i + 32u] = argb((uint8_t)(pal_r(img->palette[i]) >> 1),
                                             (uint8_t)(pal_g(img->palette[i]) >> 1),
                                             (uint8_t)(pal_b(img->palette[i]) >> 1));
            }
        }
    }

    is_ham = ((camg & CAMG_HAM) != 0u) ? 1u : 0u;
    is_true24 = (!is_pbm && bmhd.nplanes == 24u) ? 1u : 0u;

    if (!is_ham && !is_true24 && bmhd.nplanes > 8u) {
        set_status("IFF has more than 8 planes; only HAM/24-bit are supported");
        return 0;
    }

    if (is_pbm) {
        rowbytes = (bmhd.w + 1u) & ~1u;
        planes_in_file = 1u;
    } else {
        rowbytes = (((uint32_t)bmhd.w + 15u) / 16u) * 2u;
        planes_in_file = bmhd.nplanes + ((bmhd.masking == 1u) ? 1u : 0u);
    }

    rowbuf = (uint8_t *)malloc(rowbytes * planes_in_file);
    if (!rowbuf) {
        set_status("Not enough memory for IFF row");
        return 0;
    }

    if (is_ham || is_true24) {
        rgb = (uint8_t *)malloc((uint32_t)bmhd.w * (uint32_t)bmhd.h * 3u);
        if (!rgb) {
            free(rowbuf);
            set_status("Not enough memory for IFF truecolour");
            return 0;
        }
    } else {
        img->pixels = (uint8_t *)malloc((uint32_t)bmhd.w * (uint32_t)bmhd.h);
        if (!img->pixels) {
            free(rowbuf);
            set_status("Not enough memory for IFF pixels");
            return 0;
        }
    }

    pos = 0;
    for (uint32_t y = 0; y < bmhd.h; ++y) {
        if (bmhd.compression == 0u) {
            uint32_t need = rowbytes * planes_in_file;
            if (pos + need > body_len) {
                free(rowbuf);
                free(rgb);
                set_status("IFF BODY is truncated");
                return 0;
            }
            memcpy(rowbuf, &body[pos], need);
            pos += need;
        } else {
            for (uint32_t p = 0; p < planes_in_file; ++p) {
                if (!byterun_read(body, body_len, &pos, &rowbuf[p * rowbytes],
                                  rowbytes)) {
                    free(rowbuf);
                    free(rgb);
                    set_status("IFF ByteRun1 data is corrupt");
                    return 0;
                }
            }
        }

        if (is_pbm) {
            memcpy(&img->pixels[y * (uint32_t)bmhd.w], rowbuf, bmhd.w);
        } else if (is_true24) {
            for (uint32_t x = 0; x < bmhd.w; ++x) {
                uint32_t dst = ((y * (uint32_t)bmhd.w + x) * 3u);
                rgb[dst + 0u] = ilbm_8bit_channel(rowbuf, rowbytes, 0, x);
                rgb[dst + 1u] = ilbm_8bit_channel(rowbuf, rowbytes, 8, x);
                rgb[dst + 2u] = ilbm_8bit_channel(rowbuf, rowbytes, 16, x);
            }
        } else if (is_ham) {
            uint8_t data_bits = (bmhd.nplanes >= 8u) ? 6u : 4u;
            uint8_t data_mask = (uint8_t)((1u << data_bits) - 1u);
            uint8_t r = 0;
            uint8_t g = 0;
            uint8_t b = 0;

            for (uint32_t x = 0; x < bmhd.w; ++x) {
                uint8_t v = ilbm_plane_pixel(rowbuf, rowbytes, bmhd.nplanes, x);
                uint8_t control = (uint8_t)(v >> data_bits);
                uint8_t value = (uint8_t)(v & data_mask);
                uint8_t scaled = (data_bits == 6u) ?
                                 (uint8_t)((value << 2) | (value >> 4)) :
                                 (uint8_t)((value << 4) | value);

                if (control == 0u) {
                    uint32_t c = img->palette[value];
                    r = pal_r(c);
                    g = pal_g(c);
                    b = pal_b(c);
                } else if (control == 1u) {
                    b = scaled;
                } else if (control == 2u) {
                    r = scaled;
                } else {
                    g = scaled;
                }

                rgb[((y * (uint32_t)bmhd.w + x) * 3u) + 0u] = r;
                rgb[((y * (uint32_t)bmhd.w + x) * 3u) + 1u] = g;
                rgb[((y * (uint32_t)bmhd.w + x) * 3u) + 2u] = b;
            }
        } else {
            for (uint32_t x = 0; x < bmhd.w; ++x) {
                img->pixels[y * (uint32_t)bmhd.w + x] =
                    ilbm_plane_pixel(rowbuf, rowbytes, bmhd.nplanes, x);
            }
        }
    }

    free(rowbuf);

    if (rgb) {
        int ok = quantize_rgb_to_image(rgb, (uint32_t)bmhd.w * (uint32_t)bmhd.h,
                                       img);
        free(rgb);
        return ok;
    }

    return 1;
}

static int load_image(const char *path, Image8 *img)
{
    uint32_t len = 0;
    uint8_t *data = load_file(path, &len);
    int ok = 0;

    if (!data) {
        return 0;
    }

    memset(img, 0, sizeof(*img));

    if (len >= 2u && data[0] == 'B' && data[1] == 'M') {
        ok = load_bmp_from_memory(data, len, img);
    } else if (len >= 12u && rd_be32(data) == IFF_ID('F','O','R','M')) {
        ok = load_iff_from_memory(data, len, img);
    } else {
        set_status("Unknown image format");
    }

    free(data);

    if (!ok) {
        free_image(img);
    } else {
        snprintf(g_status, sizeof(g_status), "Loaded %ux%u: %s",
                 (unsigned)img->width, (unsigned)img->height, path);
        set_status(g_status);
    }

    return ok;
}

MEMALIGN32 volatile gfx_bitmap_t backbitmap;    // background image
MEMALIGN32 volatile gfx_bitmap_t *front_a;
MEMALIGN32 volatile gfx_bitmap_t *front_b;
//MEMALIGN32 volatile gfx_bitmap_t *backbuff;
volatile static uint8_t db;

static void flip_front_buffer(void)
{
    db = (uint8_t)(1u - db);

    if (db) { gfx_dispfbuffer(front_a, front_b);
    } else {  gfx_dispfbuffer(front_b, front_a);
    }
}
static gfx_bitmap_t *hidden_front_buffer(void)
{
    return db ? (gfx_bitmap_t *)front_a : (gfx_bitmap_t *)front_b;
}

static int clamp_int(int v, int lo, int hi)
{
    if (v < lo) {
        return lo;
    }
    if (v > hi) {
        return hi;
    }
    return v;
}

static void draw_image_to_current_buffer(const Image8 *img,
                                         int src_x, int src_y,
                                         int dst_x, int dst_y,
                                         int blit_w, int blit_h)
{
    gfx_bitmap_t *draw = gfx_getdrawbuffer();

    if (!draw || !draw->bitmap) {
        return;
    }

    for (int x = 0; x < blit_w; ++x) {
        uint8_t *dst_col = &draw->bitmap[((uint32_t)(dst_x + x) * SCREEN_H) +
                                         (uint32_t)dst_y];
        const uint8_t *src_px = &img->pixels[((uint32_t)src_y * img->width) +
                                             (uint32_t)(src_x + x)];

        for (int y = 0; y < blit_h; ++y) {
            dst_col[y] = src_px[(uint32_t)y * img->width];
        }
    }
}

static void draw_message(const char *line1, const char *line2)
{
    gfx_usefpalette(g_default_palette);

    for (uint8_t pass = 0; pass < 2u; ++pass) {
        gfx_bitmap_t *draw = hidden_front_buffer();

        gfx_lcdwait();
        gfx_usebuffer(draw);
        gfx_setcolour(0);
        gfx_cls();
        gfx_setcolour(1);
        gfx_drawtext(24, 120, line1);
        if (line2) {
            gfx_drawtext(24, 144, line2);
        }
        flip_front_buffer();
        gfx_displaynow();
    }

    gfx_lcdwait();
}

static void render_view(const Image8 *img, int offx, int offy)
{
    int src_x = 0;
    int src_y = 0;
    int dst_x = 0;
    int dst_y = 0;
    int blit_w = img->width;
    int blit_h = img->height;
    if (img->width < LCD_W) {
        dst_x = (LCD_W - img->width) / 2;
    } else {
        src_x = offx;
        blit_w = LCD_W;
    }

    if (img->height < LCD_H) {
        dst_y = (LCD_H - img->height) / 2;
    } else {
        src_y = offy;
        blit_h = LCD_H;
    }

    gfx_lcdwait();
    gfx_cls();
    draw_image_to_current_buffer(img, src_x, src_y, dst_x, dst_y, blit_w, blit_h);
    flip_front_buffer();
    gfx_displaynow();
}

static uint8_t should_exit(uint8_t joy)
{
    return ((joy & BTN_FIRE) && (joy & BTN_FIRE2)) ? 1u : 0u;
}

static void wait_for_exit_combo(void)
{
    while (!should_exit(getjoyport())) {
    }

    while (should_exit(getjoyport())) {
    }
}

static void view_image(const Image8 *img)
{
    int offx = 0;
    int offy = 0;
    int maxx = MAX(0, (int)img->width - LCD_W);
    int maxy = MAX(0, (int)img->height - LCD_H);
    uint8_t redraw = 0;
    uint8_t last_mouse_down = 0;
    int16_t last_mouse_x = 0;
    int16_t last_mouse_y = 0;
    uint8_t last_touch_down = 0;
    int16_t last_touch_x = 0;
    int16_t last_touch_y = 0;

    gfx_usefpalette((uint32_t *)img->palette);
    clrmousedelta();
    render_view(img, offx, offy);

    while (1) {
        int16_t mx = 0;
        int16_t my = 0;
        int16_t tx = 0;
        int16_t ty = 0;
        uint8_t mouse_left;
        uint8_t touch_pressed;
        uint8_t joy;

        (void)getmousepos(&mx, &my);
        touch_pressed = touch_getxy(&tx, &ty);

        joy = getjoyport();
        mouse_left = (uint8_t)(joy & BTN_FIRE);
        if (should_exit(joy)) {
            while (should_exit(getjoyport())) {
            }
            break;
        }

        if (mouse_left) {
            if (last_mouse_down) {
                offx -= (int)(mx - last_mouse_x);
                offy -= (int)(my - last_mouse_y);
                redraw = 1;
            }

            last_mouse_x = mx;
            last_mouse_y = my;
        }
        last_mouse_down = mouse_left;

        if (touch_pressed) {
            if (last_touch_down) {
                offx -= (int)(tx - last_touch_x);
                offy -= (int)(ty - last_touch_y);
                redraw = 1;
            }

            last_touch_x = tx;
            last_touch_y = ty;
        }
        last_touch_down = touch_pressed;

        offx = clamp_int(offx, 0, maxx);
        offy = clamp_int(offy, 0, maxy);

        if (redraw) {
            render_view(img, offx, offy);
            redraw = 0;
        }
    }
}



int main(int argc, char *argv[])
{
    const char *path;
    int rc = 0;

    suspect_desktop();

    configure_runmode(GAMEMODE_PROFILE_1);
    initMalloc();
    init_default_palette();
    memset(&g_image, 0, sizeof(g_image));

    gfx_setlcd(DEFAULT_RENDER_ORDER, FPS_50);
    gfx_mode(SCREEN_W, SCREEN_H, SCREEN_W, SCREEN_H, DISPFLAG_DUALLAYER);

    front_a = gfx_getdrawbuffer();
    front_b = gfx_getshowbuffer();
    db = 0;

    gfx_palcycleoff();
    touch_init();

    gfx_usebpalette(g_default_palette);
    gfx_usefpalette(g_default_palette);
    gfx_createBitmap(&backbitmap, SCREEN_W, SCREEN_H);
    gfx_showbbuffer(&backbitmap);

    gfx_usebuffer(&backbitmap);
    gfx_setcolour(0);
    gfx_cls();

    gfx_showfbuffer(front_a);
    gfx_usebuffer(front_b);

    path = pick_filename(argc, argv);
    if (!path) {
        draw_message(APP_TITLE, "Launch with a .bmp, .iff, .ilbm or .lbm file.");
        wait_for_exit_combo();
        rc = 1;
        goto done;
    }

    draw_message(APP_TITLE, "Loading image...");

    if (load_image(path, &g_image)) {
        view_image(&g_image);
    } else {
        draw_message(APP_TITLE, g_status);
        wait_for_exit_combo();
        rc = 1;
    }

done:
    free_image(&g_image);
    if (backbitmap.bitmap) {
        free(backbitmap.bitmap);
        memset((void *)&backbitmap, 0, sizeof(backbitmap));
    }
    restore_lcd_desktop_mode();
    HWKERNAL->exitgamemode();
    return rc;
}
