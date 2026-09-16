#include "main.h"
#include "apis.h"
#include "picojpeg.h"
#include "stb_image.h"

#define APP_TITLE       "Image Viewer"
#define LCD_W           480
#define LCD_H           320
#define FILE_HANDLE     0
#define MAX_PALETTE     256

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
    uint16_t w;
    uint16_t h;
    uint8_t nplanes;
    uint8_t masking;
    uint8_t compression;
    uint16_t transparent;
    uint16_t page_w;
    uint16_t page_h;
} BMHD;

typedef struct {
    uint32_t mask;
    uint32_t shift;
    uint32_t max_value;
} BmpMaskInfo;

typedef struct {
    const uint8_t *data;
    uint32_t len;
    uint32_t pos;
} JpegInput;

typedef struct {
    uint8_t filenum;
    uint32_t len;
    uint32_t pos;
} JpegFileInput;

static uint32_t g_default_palette[MAX_PALETTE];
static char g_status[160];
static Image8 g_image;

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
            (dot[3] == 'm' || dot[3] == 'M') && dot[4] == '\0') ||
           ((dot[1] == 'g' || dot[1] == 'G') &&
            (dot[2] == 'i' || dot[2] == 'I') &&
            (dot[3] == 'f' || dot[3] == 'F') && dot[4] == '\0') ||
           ((dot[1] == 'j' || dot[1] == 'J') &&
            (dot[2] == 'p' || dot[2] == 'P') &&
            (dot[3] == 'g' || dot[3] == 'G') && dot[4] == '\0') ||
           ((dot[1] == 'j' || dot[1] == 'J') &&
            (dot[2] == 'p' || dot[2] == 'P') &&
            (dot[3] == 'e' || dot[3] == 'E') &&
            (dot[4] == 'g' || dot[4] == 'G') && dot[5] == '\0');
}

static int has_jpeg_ext(const char *path)
{
    const char *dot = strrchr(path, '.');

    if (!dot) {
        return 0;
    }

    return ((dot[1] == 'j' || dot[1] == 'J') &&
            (dot[2] == 'p' || dot[2] == 'P') &&
            (dot[3] == 'g' || dot[3] == 'G') && dot[4] == '\0') ||
           ((dot[1] == 'j' || dot[1] == 'J') &&
            (dot[2] == 'p' || dot[2] == 'P') &&
            (dot[3] == 'e' || dot[3] == 'E') &&
            (dot[4] == 'g' || dot[4] == 'G') && dot[5] == '\0');
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

static uint8_t rgb332_index(uint8_t r, uint8_t g, uint8_t b)
{
    return (uint8_t)((r & 0xe0u) | ((g & 0xe0u) >> 3) | (b >> 6));
}

static void init_rgb332_palette(uint32_t *palette)
{
    for (uint16_t r = 0; r < 8u; ++r) {
        for (uint16_t g = 0; g < 8u; ++g) {
            for (uint16_t b = 0; b < 4u; ++b) {
                uint16_t i = (uint16_t)((r << 5) | (g << 2) | b);
                uint8_t rr = (uint8_t)((r * 255u + 3u) / 7u);
                uint8_t gg = (uint8_t)((g * 255u + 3u) / 7u);
                uint8_t bb = (uint8_t)((b * 255u + 1u) / 3u);

                palette[i] = argb(rr, gg, bb);
            }
        }
    }
}

static const char *jpeg_status_name(uint8_t status)
{
    if (status == PJPG_UNSUPPORTED_MODE) {
        return "progressive JPEG";
    }
    if (status == PJPG_UNSUPPORTED_SAMP_FACTORS) {
        return "unsupported JPEG sampling";
    }
    if (status == PJPG_UNSUPPORTED_COLORSPACE) {
        return "unsupported JPEG colourspace";
    }
    if (status == PJPG_NOT_JPEG) {
        return "not a JPEG";
    }

    return "JPEG decode error";
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

static BmpMaskInfo bmp_make_mask_info(uint32_t mask)
{
    BmpMaskInfo info;
    uint32_t bits = bmp_mask_to_bits(mask);

    info.mask = mask;
    info.shift = bmp_mask_to_shift(mask);
    info.max_value = bits ? ((1u << bits) - 1u) : 0u;

    return info;
}

static uint8_t scale_masked(uint32_t pixel, const BmpMaskInfo *info)
{
    uint32_t value;

    if (info->mask == 0u || info->max_value == 0u) {
        return 0;
    }

    value = (pixel & info->mask) >> info->shift;
    return (uint8_t)((value * 255u + (info->max_value / 2u)) /
                     info->max_value);
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

        if (bpp == 8u) {
            for (uint32_t y = 0; y < height; ++y) {
                uint32_t src_y = top_down ? y : (height - 1u - y);
                const uint8_t *src = &data[pixel_offset + (src_y * row_stride)];
                uint8_t *dst = &img->pixels[y * (uint32_t)width];

                memcpy(dst, src, (uint32_t)width);
            }
        } else if (bpp == 4u) {
            for (uint32_t y = 0; y < height; ++y) {
                uint32_t src_y = top_down ? y : (height - 1u - y);
                const uint8_t *src = &data[pixel_offset + (src_y * row_stride)];
                uint8_t *dst = &img->pixels[y * (uint32_t)width];

                for (uint32_t x = 0; x < (uint32_t)width; ++x) {
                    uint8_t byte = src[x >> 1];
                    dst[x] = (x & 1u) ? (byte & 0x0fu) : (byte >> 4);
                }
            }
        } else if (bpp == 1u) {
            for (uint32_t y = 0; y < height; ++y) {
                uint32_t src_y = top_down ? y : (height - 1u - y);
                const uint8_t *src = &data[pixel_offset + (src_y * row_stride)];
                uint8_t *dst = &img->pixels[y * (uint32_t)width];

                for (uint32_t x = 0; x < (uint32_t)width; ++x) {
                    uint8_t byte = src[x >> 3];
                    dst[x] = (byte & (0x80u >> (x & 7u))) ? 1u : 0u;
                }
            }
        } else {
            set_status("Unsupported BMP bit depth");
            return 0;
        }

        return 1;
    }

    if (bpp != 16u && bpp != 24u && bpp != 32u) {
        set_status("Unsupported BMP bit depth");
        return 0;
    }

    img->pixels = (uint8_t *)malloc((uint32_t)width * height);
    if (!img->pixels) {
        set_status("Not enough memory for BMP truecolour");
        return 0;
    }
    init_rgb332_palette(img->palette);

    if (bpp == 24u) {
        for (uint32_t y = 0; y < height; ++y) {
            uint32_t src_y = top_down ? y : (height - 1u - y);
            const uint8_t *src = &data[pixel_offset + (src_y * row_stride)];
            uint8_t *dst = &img->pixels[y * (uint32_t)width];

            for (uint32_t x = 0; x < (uint32_t)width; ++x) {
                uint8_t b = *src++;
                uint8_t g = *src++;
                uint8_t r = *src++;

                dst[x] = rgb332_index(r, g, b);
            }
        }
    } else if (bpp == 32u && masks[0] == 0x00ff0000u &&
               masks[1] == 0x0000ff00u && masks[2] == 0x000000ffu) {
        for (uint32_t y = 0; y < height; ++y) {
            uint32_t src_y = top_down ? y : (height - 1u - y);
            const uint8_t *src = &data[pixel_offset + (src_y * row_stride)];
            uint8_t *dst = &img->pixels[y * (uint32_t)width];

            for (uint32_t x = 0; x < (uint32_t)width; ++x) {
                uint8_t b = src[(x * 4u) + 0u];
                uint8_t g = src[(x * 4u) + 1u];
                uint8_t r = src[(x * 4u) + 2u];

                dst[x] = rgb332_index(r, g, b);
            }
        }
    } else {
        BmpMaskInfo rmask = bmp_make_mask_info(masks[0]);
        BmpMaskInfo gmask = bmp_make_mask_info(masks[1]);
        BmpMaskInfo bmask = bmp_make_mask_info(masks[2]);

        for (uint32_t y = 0; y < height; ++y) {
            uint32_t src_y = top_down ? y : (height - 1u - y);
            const uint8_t *src = &data[pixel_offset + (src_y * row_stride)];
            uint8_t *dst = &img->pixels[y * (uint32_t)width];

            for (uint32_t x = 0; x < (uint32_t)width; ++x) {
                uint32_t p = (bpp == 32u) ? rd_le32(&src[x * 4u]) :
                                            rd_le16(&src[x * 2u]);
                uint8_t r = scale_masked(p, &rmask);
                uint8_t g = scale_masked(p, &gmask);
                uint8_t b = scale_masked(p, &bmask);

                dst[x] = rgb332_index(r, g, b);
            }
        }
    }

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

    img->pixels = (uint8_t *)malloc((uint32_t)bmhd.w * (uint32_t)bmhd.h);
    if (!img->pixels) {
        free(rowbuf);
        set_status("Not enough memory for IFF pixels");
        return 0;
    }

    pos = 0;
    for (uint32_t y = 0; y < bmhd.h; ++y) {
        if (bmhd.compression == 0u) {
            uint32_t need = rowbytes * planes_in_file;
            if (pos + need > body_len) {
                free(rowbuf);
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
                    set_status("IFF ByteRun1 data is corrupt");
                    return 0;
                }
            }
        }

        if (is_pbm) {
            memcpy(&img->pixels[y * (uint32_t)bmhd.w], rowbuf, bmhd.w);
        } else if (is_true24) {
            for (uint32_t x = 0; x < bmhd.w; ++x) {
                uint8_t r = ilbm_8bit_channel(rowbuf, rowbytes, 0, x);
                uint8_t g = ilbm_8bit_channel(rowbuf, rowbytes, 8, x);
                uint8_t b = ilbm_8bit_channel(rowbuf, rowbytes, 16, x);

                img->pixels[y * (uint32_t)bmhd.w + x] = rgb332_index(r, g, b);
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

                img->pixels[y * (uint32_t)bmhd.w + x] = rgb332_index(r, g, b);
            }
        } else {
            for (uint32_t x = 0; x < bmhd.w; ++x) {
                img->pixels[y * (uint32_t)bmhd.w + x] =
                    ilbm_plane_pixel(rowbuf, rowbytes, bmhd.nplanes, x);
            }
        }
    }

    free(rowbuf);

    if (is_ham || is_true24) {
        init_rgb332_palette(img->palette);
    }

    return 1;
}

static uint8_t jpeg_need_bytes(unsigned char *buf, unsigned char buf_size,
                               unsigned char *bytes_read, void *user)
{
    JpegInput *in = (JpegInput *)user;
    uint32_t remain = in->len - in->pos;
    uint32_t n = buf_size;

    if (n > remain) {
        n = remain;
    }

    if (n) {
        memcpy(buf, &in->data[in->pos], n);
        in->pos += n;
    }

    *bytes_read = (unsigned char)n;
    return 0;
}

static uint8_t jpeg_need_file_bytes(unsigned char *buf, unsigned char buf_size,
                                    unsigned char *bytes_read, void *user)
{
    JpegFileInput *in = (JpegFileInput *)user;
    uint32_t got = 0;
    FRESULT res;

    res = sfread(in->filenum, buf, buf_size, &got);
    if (res != FR_OK) {
        *bytes_read = 0;
        return PJPG_STREAM_READ_ERROR;
    }

    in->pos += got;
    *bytes_read = (unsigned char)got;
    return 0;
}

static int stb_file_read(void *user, char *data, int size)
{
    JpegFileInput *in = (JpegFileInput *)user;
    uint32_t got = 0;

    if (size <= 0) {
        return 0;
    }

    if (sfread(in->filenum, data, (uint32_t)size, &got) != FR_OK) {
        return 0;
    }

    in->pos += got;
    return (int)got;
}

static void stb_file_skip(void *user, int n)
{
    JpegFileInput *in = (JpegFileInput *)user;
    int64_t target = (int64_t)in->pos + (int64_t)n;

    if (target < 0) {
        target = 0;
    }
    if ((uint64_t)target > in->len) {
        target = in->len;
    }

    if (sflseek(in->filenum, (uint32_t)target) == FR_OK) {
        in->pos = (uint32_t)target;
    }
}

static int stb_file_eof(void *user)
{
    JpegFileInput *in = (JpegFileInput *)user;

    return in->pos >= in->len;
}

static uint16_t jpeg_mcu_offset(const pjpeg_image_info_t *info,
                                uint16_t x, uint16_t y)
{
    switch (info->m_scanType) {
        case PJPG_YH2V1:
            return (uint16_t)(((x >> 3) * 64u) + (y * 8u) + (x & 7u));
        case PJPG_YH1V2:
            return (uint16_t)(((y >> 3) * 128u) + ((y & 7u) * 8u) + x);
        case PJPG_YH2V2:
            return (uint16_t)((((y >> 3) * 2u) + (x >> 3)) * 64u +
                              ((y & 7u) * 8u) + (x & 7u));
        default:
            return (uint16_t)((y * 8u) + x);
    }
}

static int load_stb_jpeg_from_memory(const uint8_t *data, uint32_t len,
                                     Image8 *img)
{
    int w;
    int h;
    int comp;
    stbi_uc *rgb;

    if (len > 0x7fffffffu) {
        set_status("JPEG file is too large");
        return 0;
    }

    rgb = stbi_load_from_memory(data, (int)len, &w, &h, &comp, 3);
    if (!rgb) {
        const char *why = stbi_failure_reason();
        snprintf(g_status, sizeof(g_status), "JPEG fallback failed: %s",
                 why ? why : "unknown");
        set_status(g_status);
        return 0;
    }

    if (w <= 0 || h <= 0 || w > 4096 || h > 4096 ||
        (uint64_t)w * (uint64_t)h > 5000000ull) {
        stbi_image_free(rgb);
        set_status("JPEG is too large for this applet");
        return 0;
    }

    img->width = (uint16_t)w;
    img->height = (uint16_t)h;
    img->pixels = (uint8_t *)malloc((uint32_t)img->width * img->height);
    if (!img->pixels) {
        stbi_image_free(rgb);
        set_status("Not enough memory for JPEG pixels");
        return 0;
    }
    init_rgb332_palette(img->palette);

    for (uint32_t i = 0; i < (uint32_t)img->width * img->height; ++i) {
        img->pixels[i] = rgb332_index(rgb[(i * 3u) + 0u],
                                      rgb[(i * 3u) + 1u],
                                      rgb[(i * 3u) + 2u]);
    }

    stbi_image_free(rgb);
    return 1;
}

static int load_stb_jpeg_from_file(JpegFileInput *input, Image8 *img)
{
    stbi_io_callbacks callbacks;
    int w;
    int h;
    int comp;
    stbi_uc *rgb;

    callbacks.read = stb_file_read;
    callbacks.skip = stb_file_skip;
    callbacks.eof = stb_file_eof;

    if (sflseek(input->filenum, 0u) != FR_OK) {
        set_status("JPEG seek failed");
        return 0;
    }
    input->pos = 0;

    rgb = stbi_load_from_callbacks(&callbacks, input, &w, &h, &comp, 3);
    if (!rgb) {
        const char *why = stbi_failure_reason();
        snprintf(g_status, sizeof(g_status), "JPEG fallback failed: %s",
                 why ? why : "unknown");
        set_status(g_status);
        return 0;
    }

    if (w <= 0 || h <= 0 || w > 4096 || h > 4096 ||
        (uint64_t)w * (uint64_t)h > 5000000ull) {
        stbi_image_free(rgb);
        set_status("JPEG is too large for this applet");
        return 0;
    }

    img->width = (uint16_t)w;
    img->height = (uint16_t)h;
    img->pixels = (uint8_t *)malloc((uint32_t)img->width * img->height);
    if (!img->pixels) {
        stbi_image_free(rgb);
        set_status("Not enough memory for JPEG pixels");
        return 0;
    }
    init_rgb332_palette(img->palette);

    for (uint32_t i = 0; i < (uint32_t)img->width * img->height; ++i) {
        img->pixels[i] = rgb332_index(rgb[(i * 3u) + 0u],
                                      rgb[(i * 3u) + 1u],
                                      rgb[(i * 3u) + 2u]);
    }

    stbi_image_free(rgb);
    return 1;
}

static int decode_pjpeg_mcus_to_image(pjpeg_image_info_t *info, Image8 *img)
{
    uint8_t status;

    if (info->m_width <= 0 || info->m_height <= 0 ||
        info->m_width > 4096 || info->m_height > 4096 ||
        (uint64_t)info->m_width * (uint64_t)info->m_height > 5000000ull) {
        set_status("JPEG is too large for this applet");
        return 0;
    }

    img->width = (uint16_t)info->m_width;
    img->height = (uint16_t)info->m_height;
    img->pixels = (uint8_t *)malloc((uint32_t)img->width * img->height);
    if (!img->pixels) {
        set_status("Not enough memory for JPEG pixels");
        return 0;
    }
    init_rgb332_palette(img->palette);

    for (uint16_t my = 0; my < (uint16_t)info->m_MCUSPerCol; ++my) {
        for (uint16_t mx = 0; mx < (uint16_t)info->m_MCUSPerRow; ++mx) {
            uint16_t base_x = (uint16_t)(mx * (uint16_t)info->m_MCUWidth);
            uint16_t base_y = (uint16_t)(my * (uint16_t)info->m_MCUHeight);

            status = pjpeg_decode_mcu();
            if (status) {
                snprintf(g_status, sizeof(g_status), "JPEG decode failed %u",
                         (unsigned)status);
                set_status(g_status);
                return 0;
            }

            for (uint16_t y = 0; y < (uint16_t)info->m_MCUHeight; ++y) {
                uint16_t py = (uint16_t)(base_y + y);
                uint8_t *dst;

                if (py >= img->height) {
                    break;
                }

                dst = &img->pixels[(uint32_t)py * img->width];
                for (uint16_t x = 0; x < (uint16_t)info->m_MCUWidth; ++x) {
                    uint16_t px = (uint16_t)(base_x + x);
                    uint16_t src;

                    if (px >= img->width) {
                        break;
                    }

                    src = jpeg_mcu_offset(info, x, y);
                    if (info->m_comps == 1) {
                        uint8_t v = info->m_pMCUBufR[src];
                        dst[px] = rgb332_index(v, v, v);
                    } else {
                        dst[px] = rgb332_index(info->m_pMCUBufR[src],
                                               info->m_pMCUBufG[src],
                                               info->m_pMCUBufB[src]);
                    }
                }
            }
        }
    }

    return 1;
}

static int load_jpeg_from_memory(const uint8_t *data, uint32_t len, Image8 *img)
{
    JpegInput input;
    pjpeg_image_info_t info;
    uint8_t status;

    if (len < 2u || data[0] != 0xffu || data[1] != 0xd8u) {
        set_status("Not a JPEG file");
        return 0;
    }

    input.data = data;
    input.len = len;
    input.pos = 0;

    status = pjpeg_decode_init(&info, jpeg_need_bytes, &input, 0);
    if (status) {
        if (status == PJPG_UNSUPPORTED_MODE) {
            if (load_stb_jpeg_from_memory(data, len, img)) {
                return 1;
            }
            return 0;
        }

        snprintf(g_status, sizeof(g_status), "%s (%u)",
                 jpeg_status_name(status), (unsigned)status);
        set_status(g_status);
        return 0;
    }

    return decode_pjpeg_mcus_to_image(&info, img);
}

static int load_jpeg_from_file(const char *path, Image8 *img)
{
    JpegFileInput input;
    pjpeg_image_info_t info;
    uint8_t status;
    FRESULT res;

    res = sfopen(FILE_HANDLE, (char *)path, SD_OPEN_EXISTING | SD_READ);
    if (res != FR_OK) {
        snprintf(g_status, sizeof(g_status), "Open failed FR %u: %s",
                 (unsigned)res, path);
        set_status(g_status);
        return 0;
    }

    input.filenum = FILE_HANDLE;
    input.len = SYSFileSystem->sbfilelen(FILE_HANDLE);
    input.pos = 0;

    if (input.len == 0u) {
        sfclose(FILE_HANDLE);
        set_status("File is empty");
        return 0;
    }

    status = pjpeg_decode_init(&info, jpeg_need_file_bytes, &input, 0);
    if (status) {
        int ok;

        if (status != PJPG_UNSUPPORTED_MODE) {
            snprintf(g_status, sizeof(g_status), "%s (%u)",
                     jpeg_status_name(status), (unsigned)status);
            set_status(g_status);
            sfclose(FILE_HANDLE);
            return 0;
        }

        ok = load_stb_jpeg_from_file(&input, img);
        sfclose(FILE_HANDLE);
        return ok;
    }

    if (!decode_pjpeg_mcus_to_image(&info, img)) {
        sfclose(FILE_HANDLE);
        return 0;
    }

    sfclose(FILE_HANDLE);
    return 1;
}

static int gif_skip_subblocks(const uint8_t *data, uint32_t len, uint32_t *pos)
{
    while (*pos < len) {
        uint8_t n = data[(*pos)++];

        if (n == 0u) {
            return 1;
        }
        if (*pos + n > len) {
            return 0;
        }
        *pos += n;
    }

    return 0;
}

static int gif_read_subblocks(const uint8_t *data, uint32_t len, uint32_t *pos,
                              uint8_t **out, uint32_t *out_len)
{
    uint32_t scan = *pos;
    uint32_t total = 0;
    uint8_t *buf;
    uint32_t dst = 0;

    *out = NULL;
    *out_len = 0;

    while (scan < len) {
        uint8_t n = data[scan++];

        if (n == 0u) {
            break;
        }
        if (scan + n > len) {
            return 0;
        }
        total += n;
        scan += n;
    }

    if (scan > len || total == 0u) {
        return 0;
    }

    buf = (uint8_t *)malloc(total);
    if (!buf) {
        set_status("Not enough memory for GIF data");
        return 0;
    }

    while (*pos < len) {
        uint8_t n = data[(*pos)++];

        if (n == 0u) {
            break;
        }
        memcpy(&buf[dst], &data[*pos], n);
        dst += n;
        *pos += n;
    }

    *out = buf;
    *out_len = total;
    return 1;
}

static int gif_next_interlaced_row(uint16_t h, uint16_t *row, uint8_t *pass)
{
    static const uint8_t starts[4] = { 0u, 4u, 2u, 1u };
    static const uint8_t steps[4] = { 8u, 8u, 4u, 2u };

    *row = (uint16_t)(*row + steps[*pass]);
    while (*pass < 3u && *row >= h) {
        ++(*pass);
        *row = starts[*pass];
    }

    return *row < h;
}

static int gif_lzw_decode(const uint8_t *src, uint32_t src_len,
                          uint8_t min_code_size, Image8 *img,
                          uint16_t left, uint16_t top,
                          uint16_t w, uint16_t h,
                          uint8_t interlaced,
                          int transparent_index)
{
    uint16_t *prefix;
    uint8_t *suffix;
    uint8_t *stack;
    uint32_t bit_pos = 0;
    uint16_t clear;
    uint16_t end;
    uint16_t avail;
    uint16_t old = 0xffffu;
    uint8_t code_size;
    uint16_t code_mask;
    uint8_t first_char = 0;
    uint16_t x = 0;
    uint16_t y = 0;
    uint8_t pass = 0;
    int ok = 1;

    if (min_code_size < 2u || min_code_size > 8u) {
        set_status("Unsupported GIF code size");
        return 0;
    }

    prefix = (uint16_t *)malloc(4096u * sizeof(uint16_t));
    suffix = (uint8_t *)malloc(4096u);
    stack = (uint8_t *)malloc(4096u);
    if (!prefix || !suffix || !stack) {
        free(prefix);
        free(suffix);
        free(stack);
        set_status("Not enough memory for GIF LZW");
        return 0;
    }

    clear = (uint16_t)(1u << min_code_size);
    end = (uint16_t)(clear + 1u);
    avail = (uint16_t)(clear + 2u);
    code_size = (uint8_t)(min_code_size + 1u);
    code_mask = (uint16_t)((1u << code_size) - 1u);

    for (uint16_t i = 0; i < clear; ++i) {
        prefix[i] = 0;
        suffix[i] = (uint8_t)i;
    }

    while (ok && y < h) {
        uint32_t raw = 0;
        uint16_t code;
        uint16_t in_code;
        uint16_t top_stack = 0;
        uint8_t first;

        if (bit_pos + code_size > src_len * 8u) {
            break;
        }

        for (uint8_t b = 0; b < code_size; ++b) {
            uint32_t byte_pos = (bit_pos + b) >> 3;
            uint8_t bit = (uint8_t)((bit_pos + b) & 7u);
            raw |= (uint32_t)((src[byte_pos] >> bit) & 1u) << b;
        }
        bit_pos += code_size;
        code = (uint16_t)(raw & code_mask);

        if (code == clear) {
            code_size = (uint8_t)(min_code_size + 1u);
            code_mask = (uint16_t)((1u << code_size) - 1u);
            avail = (uint16_t)(clear + 2u);
            old = 0xffffu;
            continue;
        }
        if (code == end) {
            break;
        }

        if (code >= 4096u || (old == 0xffffu && code >= clear) ||
            (old != 0xffffu && code > avail)) {
            ok = 0;
            break;
        }

        if (old == 0xffffu) {
            first = suffix[code];
            first_char = first;
        } else {
            in_code = code;
            if (code >= avail) {
                stack[top_stack++] = first_char;
                code = old;
            }

            while (code >= clear) {
                if (top_stack >= 4096u || code >= 4096u) {
                    ok = 0;
                    break;
                }
                stack[top_stack++] = suffix[code];
                code = prefix[code];
            }
            if (!ok) {
                break;
            }

            first = suffix[code];
            if (avail < 4096u) {
                prefix[avail] = old;
                suffix[avail] = first;
                ++avail;
                if (avail == (uint16_t)(1u << code_size) && code_size < 12u) {
                    ++code_size;
                    code_mask = (uint16_t)((1u << code_size) - 1u);
                }
            }
            old = in_code;
            first_char = first;
        }

        stack[top_stack++] = first;
        if (old == 0xffffu) {
            old = code;
        }

        while (top_stack && y < h) {
            uint8_t pi = stack[--top_stack];

            if ((int)pi != transparent_index &&
                left + x < img->width && top + y < img->height) {
                img->pixels[(uint32_t)(top + y) * img->width + (left + x)] = pi;
            }

            ++x;
            if (x >= w) {
                x = 0;
                if (interlaced) {
                    if (!gif_next_interlaced_row(h, &y, &pass)) {
                        break;
                    }
                } else {
                    ++y;
                }
            }
        }
    }

    free(prefix);
    free(suffix);
    free(stack);

    if (!ok) {
        set_status("GIF LZW data is corrupt");
    }

    return ok;
}

static int load_gif_from_memory(const uint8_t *data, uint32_t len, Image8 *img)
{
    uint16_t screen_w;
    uint16_t screen_h;
    uint8_t packed;
    uint16_t global_entries = 0;
    uint8_t bg_index;
    uint32_t pos = 13u;
    int transparent_index = -1;

    if (len < 13u || memcmp(data, "GIF", 3u) != 0 ||
        (memcmp(&data[3], "87a", 3u) != 0 && memcmp(&data[3], "89a", 3u) != 0)) {
        set_status("Not a GIF file");
        return 0;
    }

    screen_w = rd_le16(&data[6]);
    screen_h = rd_le16(&data[8]);
    packed = data[10];
    bg_index = data[11];

    if (screen_w == 0u || screen_h == 0u ||
        screen_w > 4096u || screen_h > 4096u ||
        (uint64_t)screen_w * (uint64_t)screen_h > 5000000ull) {
        set_status("GIF is too large for this applet");
        return 0;
    }

    for (uint16_t i = 0; i < MAX_PALETTE; ++i) {
        img->palette[i] = argb(0, 0, 0);
    }

    if (packed & 0x80u) {
        global_entries = (uint16_t)(1u << ((packed & 7u) + 1u));
        if (pos + (uint32_t)global_entries * 3u > len) {
            set_status("GIF global palette is truncated");
            return 0;
        }

        for (uint16_t i = 0; i < global_entries && i < MAX_PALETTE; ++i) {
            img->palette[i] = argb(data[pos + (uint32_t)i * 3u + 0u],
                                   data[pos + (uint32_t)i * 3u + 1u],
                                   data[pos + (uint32_t)i * 3u + 2u]);
        }
        pos += (uint32_t)global_entries * 3u;
    }

    img->width = screen_w;
    img->height = screen_h;
    img->pixels = (uint8_t *)malloc((uint32_t)screen_w * screen_h);
    if (!img->pixels) {
        set_status("Not enough memory for GIF pixels");
        return 0;
    }
    memset(img->pixels, bg_index, (uint32_t)screen_w * screen_h);

    while (pos < len) {
        uint8_t marker = data[pos++];

        if (marker == 0x3bu) {
            set_status("GIF has no image frame");
            return 0;
        }

        if (marker == 0x21u) {
            uint8_t label;

            if (pos >= len) {
                set_status("GIF extension is truncated");
                return 0;
            }
            label = data[pos++];
            if (label == 0xf9u) {
                uint8_t block_size;
                uint8_t flags;

                if (pos + 6u > len) {
                    set_status("GIF control block is truncated");
                    return 0;
                }
                block_size = data[pos++];
                if (block_size != 4u || pos + block_size + 1u > len) {
                    set_status("Bad GIF control block");
                    return 0;
                }
                flags = data[pos];
                transparent_index = (flags & 1u) ? data[pos + 3u] : -1;
                pos += block_size;
                if (data[pos++] != 0u) {
                    set_status("Bad GIF control terminator");
                    return 0;
                }
            } else if (!gif_skip_subblocks(data, len, &pos)) {
                set_status("GIF extension is truncated");
                return 0;
            }
        } else if (marker == 0x2cu) {
            uint16_t left;
            uint16_t top;
            uint16_t w;
            uint16_t h;
            uint8_t image_packed;
            uint8_t interlaced;
            uint8_t lzw_min;
            uint8_t *compressed = NULL;
            uint32_t compressed_len = 0;
            int ok;

            if (pos + 9u > len) {
                set_status("GIF image descriptor is truncated");
                return 0;
            }

            left = rd_le16(&data[pos + 0u]);
            top = rd_le16(&data[pos + 2u]);
            w = rd_le16(&data[pos + 4u]);
            h = rd_le16(&data[pos + 6u]);
            image_packed = data[pos + 8u];
            interlaced = (image_packed & 0x40u) ? 1u : 0u;
            pos += 9u;

            if (w == 0u || h == 0u || left >= screen_w || top >= screen_h) {
                set_status("Invalid GIF frame dimensions");
                return 0;
            }

            if (image_packed & 0x80u) {
                uint16_t entries = (uint16_t)(1u << ((image_packed & 7u) + 1u));

                if (pos + (uint32_t)entries * 3u > len) {
                    set_status("GIF local palette is truncated");
                    return 0;
                }
                for (uint16_t i = 0; i < entries && i < MAX_PALETTE; ++i) {
                    img->palette[i] = argb(data[pos + (uint32_t)i * 3u + 0u],
                                           data[pos + (uint32_t)i * 3u + 1u],
                                           data[pos + (uint32_t)i * 3u + 2u]);
                }
                pos += (uint32_t)entries * 3u;
            }

            if (pos >= len) {
                set_status("GIF image data is missing");
                return 0;
            }
            lzw_min = data[pos++];

            if (!gif_read_subblocks(data, len, &pos, &compressed,
                                    &compressed_len)) {
                set_status("GIF image data is truncated");
                return 0;
            }

            ok = gif_lzw_decode(compressed, compressed_len, lzw_min, img,
                                left, top, w, h, interlaced,
                                transparent_index);
            free(compressed);
            return ok;
        } else {
            set_status("GIF block marker is unsupported");
            return 0;
        }
    }

    set_status("GIF ended before image data");
    return 0;
}

static int load_image(const char *path, Image8 *img)
{
    uint32_t len = 0;
    uint8_t *data;
    int ok = 0;

    memset(img, 0, sizeof(*img));

    if (has_jpeg_ext(path)) {
        ok = load_jpeg_from_file(path, img);
        if (!ok) {
            free_image(img);
        } else {
            snprintf(g_status, sizeof(g_status), "Loaded %ux%u: %s",
                     (unsigned)img->width, (unsigned)img->height, path);
            set_status(g_status);
        }
        return ok;
    }

    data = load_file(path, &len);
    if (!data) {
        return 0;
    }

    if (len >= 2u && data[0] == 'B' && data[1] == 'M') {
        ok = load_bmp_from_memory(data, len, img);
    } else if (len >= 12u && rd_be32(data) == IFF_ID('F','O','R','M')) {
        ok = load_iff_from_memory(data, len, img);
    } else if (len >= 6u && memcmp(data, "GIF", 3u) == 0) {
        ok = load_gif_from_memory(data, len, img);
    } else if (len >= 2u && data[0] == 0xffu && data[1] == 0xd8u) {
        ok = load_jpeg_from_memory(data, len, img);
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
    //return ((joy & BTN_FIRE) && (joy & BTN_FIRE2)) ? 1u : 0u;
    return ( (joy & BTN_FIRE2)) ? 1u : 0u;
}

static void wait_for_exit_combo(void)
{
    while (!should_exit(getjoyport())) {
    }

    while (should_exit(getjoyport())) {
    }
}

volatile uint8_t joy;
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
        

        (void)getmousepos(&mx, &my);
        touch_pressed = touch_getxy(&tx, &ty);

        joy = getjoyport();
        mouse_left = (uint8_t)(joy & BTN_FIRE);
        if(!!(joy & BTN_FIRE2)) {
            //while(!!(joy = getjoyport() & BTN_FIRE2))
            int32_t timeout = 10;
            gfx_usefpalette(g_default_palette);
            while(joy = getjoyport()){
                gfx_lcdwait();
                gfx_setcolour(0);
                gfx_cls();
                gfx_setcolour(1);
                gfx_drawtext(20,20,"Release button to exit.");
                flip_front_buffer();
                gfx_displaynow();
                if(timeout-- < 0) timeout = 0;
                if((timeout == 0) && (!(joy & BTN_FIRE2))) return;
            }
            //return;
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

    suspend_desktop();

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
        //draw_message(APP_TITLE, "Launch with BMP, IFF/ILBM, GIF or JPG.");
        //wait_for_exit_combo();
        printf("%s: Launch with Image file\n", APP_TITLE);
        rc = 1;
        goto done;
    }

    draw_message(APP_TITLE, "Loading image... Please wait...");

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
