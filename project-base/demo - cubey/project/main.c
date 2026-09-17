#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "main.h"
#include "apis.h"
#include "cracktro.h"

#define APP_TITLE       "CUBEY"
#define CUBE_SIZE       100
#define CAMERA_DIST     500
#define GRID_RES        4

#define TILE_SIZE       64
#define BACK_W          (SCREEN_W * 2)
#define BACK_H          (SCREEN_H * 2)
#define GRID_COLS       10
#define GRID_ROWS       10
#define ZOOM_BASE       128
#define ZOOM_RANGE      64

#define VERTS_PER_FACE  ((GRID_RES + 1) * (GRID_RES + 1))
#define TOTAL_VERTS     (VERTS_PER_FACE * 6)
#define TOTAL_TRIS      (GRID_RES * GRID_RES * 2 * 6)

typedef struct __attribute__((packed, aligned(4))) {
    int16_t x;
    int16_t y;
    int16_t z;
    int16_t _pad;
} Vec3;

typedef struct {
    int16_t x;
    int16_t y;
} Vec2;

typedef struct {
    int16_t v0;
    int16_t v1;
    int16_t v2;
    uint8_t colour;
} Face;

MEMALIGN32 static uint32_t demo_palette[256];
MEMALIGN32 static volatile gfx_bitmap_t *front_a;
MEMALIGN32 static volatile gfx_bitmap_t *front_b;
MEMALIGN32 static volatile gfx_bitmap_t backbitmap;

static volatile uint8_t db;
static Vec3 cube_verts[TOTAL_VERTS];
static Vec3 sphere_verts[TOTAL_VERTS];
static Vec3 interp_verts[TOTAL_VERTS];
static Vec3 rotated_verts[TOTAL_VERTS];
static Face faces[TOTAL_TRIS];
static int last_morph = 9999;

static int angle_x;
static int angle_y;
static int angle_z;
static int morph;
static int morph_dir = 1;
static int scroll_y = SCREEN_H;
static int scroll_extent;
static int border_in;
static int mod_play_result;

static const uint8_t face_base_idx[6] = {1, 2, 3, 4, 5, 6};

static const char message[] =
    "            **** HELLO ****\n"
    "\n"
    "--------------------------------------\n"
    "\n"
    "Hello, I hope this demo works!\n"
    "\n"
    "This is the old 3dcubetest idea\n"
    "\n"
    "ported to the newer Sidbox API.\n"
    "\n"
    "It draws a morphing subdivided cube,\n"
    "\n"
    "a big scrolling checkerboard layer,\n"
    "\n"
    "and this very important scrolly text.\n"
    "\n"
    "--------------------------------------\n"
    "\n"
    "The old demo poked API structures\n"
    "\n"
    "directly. This one uses the v2 wrappers\n"
    "\n"
    "and keeps the tiny triangle rasterizer\n"
    "\n"
    "local to the applet.\n"
    "\n"
    "--------------------------------------\n"
    "\n"
    "Hold FIRE + OK to exit.\n"
    "\n"
    "               end end!\n\n\n\n";

static int imin_int(int a, int b)
{
    return (a < b) ? a : b;
}

static int imax_int(int a, int b)
{
    return (a > b) ? a : b;
}

static int iclamp_int(int v, int lo, int hi)
{
    if (v < lo) return lo;
    if (v > hi) return hi;
    return v;
}

static uint32_t isqrt32(uint32_t n)
{
    uint32_t root = 0;
    uint32_t bit = 1u << 30;

    while (bit > n) {
        bit >>= 2;
    }

    while (bit != 0u) {
        if (n >= root + bit) {
            n -= root + bit;
            root = (root >> 1) + bit;
        } else {
            root >>= 1;
        }
        bit >>= 2;
    }

    return root;
}

static int fixed_sin_deg(int deg)
{
    int sign = 1;
    int x;
    int n;
    int d;

    deg %= 360;
    if (deg < 0) deg += 360;
    if (deg > 180) {
        deg -= 180;
        sign = -1;
    }

    x = deg;
    n = 4 * x * (180 - x);
    d = 40500 - (x * (180 - x));
    if (d == 0) return 0;

    return sign * ((n * 32767) / d);
}

static int fixed_cos_deg(int deg)
{
    return fixed_sin_deg(deg + 90);
}

static void init_palette(void)
{
    for (int i = 0; i < 256; ++i) {
        demo_palette[i] = 0xFF000000u;
    }

    demo_palette[0] = 0x00000000u;
    demo_palette[1] = 0x8F245DFFu;
    demo_palette[2] = 0x8F24E06Fu;
    demo_palette[3] = 0x8FFF3D52u;
    demo_palette[4] = 0x8FB24BFFu;
    demo_palette[5] = 0x8FFFF040u;
    demo_palette[6] = 0x8FFF9A24u;
    demo_palette[7] = 0x6F102C88u;
    demo_palette[8] = 0x6F08763Fu;
    demo_palette[9] = 0x6F8D1723u;
    demo_palette[10] = 0x6F5A257Fu;
    demo_palette[11] = 0x6F8F8420u;
    demo_palette[12] = 0x6F9A5412u;
    demo_palette[13] = 0x5F15315Au;
    demo_palette[14] = 0x5FB7C7D9u;
    demo_palette[15] = 0x5F07101Fu;
    demo_palette[16] = 0x5FFF3348u;
    demo_palette[17] = 0xFFFFFFFFu;
    demo_palette[18] = 0xFF000000u;
    //demo_palette[19] = 0x6F35E7FFu;
    demo_palette[19] = 0x6f000147;
}

static gfx_bitmap_t *hidden_front_buffer(void)
{
    return db ? (gfx_bitmap_t *)front_a : (gfx_bitmap_t *)front_b;
}

static void flip_front_buffer(void)
{
    db = (uint8_t)(1u - db);

    if (db) {
        gfx_dispfbuffer((gfx_bitmap_t *)front_a, (gfx_bitmap_t *)front_b);
    } else {
        gfx_dispfbuffer((gfx_bitmap_t *)front_b, (gfx_bitmap_t *)front_a);
    }
}

static void restore_lcd_desktop_mode(void)
{
    gfx_lcdwait();
    gfx_mode(SCREEN_W, SCREEN_H, SCREEN_W, SCREEN_H,
             DISPFLAG_DUALLAYER | DISPFLAG_NOSCROLLABLE);
    restore_desktop();
    gfx_lcdwait();
}

static void put_pixel(gfx_bitmap_t *bmp, int x, int y, uint8_t colour)
{
    if (!bmp || !bmp->bitmap) return;
    if (x < 0 || y < 0 || x >= (int)bmp->width || y >= (int)bmp->height) return;

    bmp->bitmap[((uint32_t)x * bmp->stride) + (uint32_t)y] = colour;
}

static int edge_func(Vec2 a, Vec2 b, int x, int y)
{
    return ((int)b.x - (int)a.x) * (y - (int)a.y) -
           ((int)b.y - (int)a.y) * (x - (int)a.x);
}

static void draw_filled_triangle(gfx_bitmap_t *bmp, const Vec2 *pts, uint8_t colour)
{
    int min_x;
    int max_x;
    int min_y;
    int max_y;
    int area;

    if (!bmp || !bmp->bitmap) return;

    min_x = imin_int((int)pts[0].x, imin_int((int)pts[1].x, (int)pts[2].x));
    max_x = imax_int((int)pts[0].x, imax_int((int)pts[1].x, (int)pts[2].x));
    min_y = imin_int((int)pts[0].y, imin_int((int)pts[1].y, (int)pts[2].y));
    max_y = imax_int((int)pts[0].y, imax_int((int)pts[1].y, (int)pts[2].y));

    min_x = iclamp_int(min_x, 0, (int)bmp->width - 1);
    max_x = iclamp_int(max_x, 0, (int)bmp->width - 1);
    min_y = iclamp_int(min_y, 0, (int)bmp->height - 1);
    max_y = iclamp_int(max_y, 0, (int)bmp->height - 1);
    if (min_x > max_x || min_y > max_y) return;

    area = edge_func(pts[0], pts[1], pts[2].x, pts[2].y);
    if (area == 0) return;

    for (int y = min_y; y <= max_y; ++y) {
        for (int x = min_x; x <= max_x; ++x) {
            int w0 = edge_func(pts[1], pts[2], x, y);
            int w1 = edge_func(pts[2], pts[0], x, y);
            int w2 = edge_func(pts[0], pts[1], x, y);

            if ((area > 0 && w0 >= 0 && w1 >= 0 && w2 >= 0) ||
                (area < 0 && w0 <= 0 && w1 <= 0 && w2 <= 0)) {
                put_pixel(bmp, x, y, colour);
            }
        }
    }
}

static Vec3 normalize_to_cube_radius(Vec3 v)
{
    int32_t xx = (int32_t)v.x * v.x;
    int32_t yy = (int32_t)v.y * v.y;
    int32_t zz = (int32_t)v.z * v.z;
    uint32_t len = isqrt32((uint32_t)(xx + yy + zz));

    if (len == 0u) len = 1u;

    return (Vec3){
        (int16_t)(((int32_t)v.x * CUBE_SIZE) / (int32_t)len),
        (int16_t)(((int32_t)v.y * CUBE_SIZE) / (int32_t)len),
        (int16_t)(((int32_t)v.z * CUBE_SIZE) / (int32_t)len),
        0
    };
}

static Vec3 interp(Vec3 a, Vec3 b, int t)
{
    Vec3 o;

    o.x = (int16_t)(a.x + ((((int)b.x - (int)a.x) * t) >> 8));
    o.y = (int16_t)(a.y + ((((int)b.y - (int)a.y) * t) >> 8));
    o.z = (int16_t)(a.z + ((((int)b.z - (int)a.z) * t) >> 8));
    o._pad = 0;

    return o;
}

static Vec3 rotate(Vec3 v, int ax, int ay, int az)
{
    int sx = fixed_sin_deg(ax);
    int cx = fixed_cos_deg(ax);
    int sy = fixed_sin_deg(ay);
    int cy = fixed_cos_deg(ay);
    int sz = fixed_sin_deg(az);
    int cz = fixed_cos_deg(az);
    Vec3 r = v;
    int x;
    int y;
    int z;

    y = (((int)r.y * cx) - ((int)r.z * sx)) >> 15;
    z = (((int)r.y * sx) + ((int)r.z * cx)) >> 15;
    r.y = (int16_t)y;
    r.z = (int16_t)z;

    x = (((int)r.x * cy) + ((int)r.z * sy)) >> 15;
    z = ((-(int)r.x * sy) + ((int)r.z * cy)) >> 15;
    r.x = (int16_t)x;
    r.z = (int16_t)z;

    x = (((int)r.x * cz) - ((int)r.y * sz)) >> 15;
    y = (((int)r.x * sz) + ((int)r.y * cz)) >> 15;
    r.x = (int16_t)x;
    r.y = (int16_t)y;

    return r;
}

static void generate_subdivided_cube(void)
{
    const int step = (2 * CUBE_SIZE) / GRID_RES;
    const Vec3 normals[6] = {
        {0, 0, -1, 0}, {0, 0, 1, 0}, {0, -1, 0, 0},
        {0, 1, 0, 0}, {-1, 0, 0, 0}, {1, 0, 0, 0}
    };
    const Vec3 u_dirs[6] = {
        {0, 1, 0, 0}, {1, 0, 0, 0}, {1, 0, 0, 0},
        {0, 0, 1, 0}, {0, 0, 1, 0}, {0, 1, 0, 0}
    };
    const Vec3 v_dirs[6] = {
        {1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 1, 0},
        {1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 1, 0}
    };
    int vi = 0;
    int fi = 0;

    for (int f = 0; f < 6; ++f) {
        int base = vi;

        for (int j = 0; j <= GRID_RES; ++j) {
            for (int i = 0; i <= GRID_RES; ++i) {
                Vec3 p = {
                    (int16_t)(normals[f].x * CUBE_SIZE +
                              (i - GRID_RES / 2) * step * u_dirs[f].x +
                              (j - GRID_RES / 2) * step * v_dirs[f].x),
                    (int16_t)(normals[f].y * CUBE_SIZE +
                              (i - GRID_RES / 2) * step * u_dirs[f].y +
                              (j - GRID_RES / 2) * step * v_dirs[f].y),
                    (int16_t)(normals[f].z * CUBE_SIZE +
                              (i - GRID_RES / 2) * step * u_dirs[f].z +
                              (j - GRID_RES / 2) * step * v_dirs[f].z),
                    0
                };

                cube_verts[vi] = p;
                sphere_verts[vi] = normalize_to_cube_radius(p);
                ++vi;
            }
        }

        for (int j = 0; j < GRID_RES; ++j) {
            for (int i = 0; i < GRID_RES; ++i) {
                int i0 = base + j * (GRID_RES + 1) + i;
                int i1 = i0 + 1;
                int i2 = i0 + (GRID_RES + 1);
                int i3 = i2 + 1;
                uint8_t col = (uint8_t)(((i + j) & 1) ? face_base_idx[f] + 6 : face_base_idx[f]);

                faces[fi++] = (Face){(int16_t)i0, (int16_t)i1, (int16_t)i3, col};
                faces[fi++] = (Face){(int16_t)i0, (int16_t)i3, (int16_t)i2, col};
            }
        }
    }
}

static void update_vertices(int next_morph)
{
    if (next_morph == last_morph) return;

    for (int i = 0; i < TOTAL_VERTS; ++i) {
        interp_verts[i] = interp(cube_verts[i], sphere_verts[i], next_morph);
    }
    last_morph = next_morph;
}

static void update_rotations(void)
{
    for (int i = 0; i < TOTAL_VERTS; ++i) {
        rotated_verts[i] = rotate(interp_verts[i], angle_x, angle_y, angle_z);
    }
}

static uint8_t project_point(Vec3 v, Vec2 *out)
{
    int z = (int)v.z + CAMERA_DIST;
    int x_proj;
    int y_proj;

    if (z <= 0) return 0;

    x_proj = ((int)v.x * (SCREEN_W / 2)) / z;
    y_proj = ((int)v.y * (SCREEN_W / 2)) / z;
    out->x = (int16_t)((SCREEN_W / 2) + x_proj);
    out->y = (int16_t)((SCREEN_H / 2) - y_proj);

    return 1;
}

static int cross_z(Vec2 a, Vec2 b, Vec2 c)
{
    int abx = (int)b.x - (int)a.x;
    int aby = (int)b.y - (int)a.y;
    int acx = (int)c.x - (int)a.x;
    int acy = (int)c.y - (int)a.y;

    return abx * acy - aby * acx;
}

static void draw_cube(gfx_bitmap_t *draw)
{
    Vec2 screen[TOTAL_VERTS];
    uint8_t visible[TOTAL_VERTS];

    morph += morph_dir * 2;
    if (morph > 256) {
        morph = 256;
        morph_dir = -5;
    }
    if (morph < -255) {
        morph = -255;
        morph_dir = 5;
    }

    update_vertices(morph);
    update_rotations();

    for (int i = 0; i < TOTAL_VERTS; ++i) {
        visible[i] = project_point(rotated_verts[i], &screen[i]);
    }

    for (int i = 0; i < TOTAL_TRIS; ++i) {
        Face f = faces[i];
        Vec2 tri[3];

        if (!visible[f.v0] || !visible[f.v1] || !visible[f.v2]) continue;
        if (cross_z(screen[f.v0], screen[f.v1], screen[f.v2]) < 0) continue;

        tri[0] = screen[f.v0];
        tri[1] = screen[f.v1];
        tri[2] = screen[f.v2];
        draw_filled_triangle(draw, tri, f.colour);
    }
}

static void draw_background_checkerboard(void)
{
    int angle = 33;
    int zoom_angle = 140;
    int cos_a = fixed_cos_deg(angle);
    int sin_a = fixed_sin_deg(angle);
    int zoom = ZOOM_BASE + ((fixed_cos_deg(zoom_angle) * ZOOM_RANGE) >> 15);
    int cx = BACK_W / 2;
    int cy = BACK_H / 2;

    memset(backbitmap.bitmap, 15, backbitmap.memspacelen);

    for (int j = -GRID_ROWS / 2; j < GRID_ROWS / 2; ++j) {
        for (int i = -GRID_COLS / 2; i < GRID_COLS / 2; ++i) {
            int base_x = i * TILE_SIZE;
            int base_y = j * TILE_SIZE;
            int x0 = (base_x * zoom) >> 6;
            int y0 = (base_y * zoom) >> 6;
            int x1 = ((base_x + TILE_SIZE) * zoom) >> 6;
            int y1 = ((base_y + TILE_SIZE) * zoom) >> 6;
            int sx0 = cx + ((x0 * cos_a - y0 * sin_a) >> 15);
            int sy0 = cy + ((x0 * sin_a + y0 * cos_a) >> 15);
            int sx1 = cx + ((x1 * cos_a - y0 * sin_a) >> 15);
            int sy1 = cy + ((x1 * sin_a + y0 * cos_a) >> 15);
            int sx2 = cx + ((x1 * cos_a - y1 * sin_a) >> 15);
            int sy2 = cy + ((x1 * sin_a + y1 * cos_a) >> 15);
            int sx3 = cx + ((x0 * cos_a - y1 * sin_a) >> 15);
            int sy3 = cy + ((x0 * sin_a + y1 * cos_a) >> 15);
            uint8_t colour = (uint8_t)(((i + j) & 1) ? 13 : 14);
            Vec2 tri_a[3] = {
                {(int16_t)sx0, (int16_t)sy0},
                {(int16_t)sx1, (int16_t)sy1},
                {(int16_t)sx2, (int16_t)sy2}
            };
            Vec2 tri_b[3] = {
                {(int16_t)sx0, (int16_t)sy0},
                {(int16_t)sx2, (int16_t)sy2},
                {(int16_t)sx3, (int16_t)sy3}
            };

            draw_filled_triangle((gfx_bitmap_t *)&backbitmap, tri_a, colour);
            draw_filled_triangle((gfx_bitmap_t *)&backbitmap, tri_b, colour);
        }
    }
}

static void scroll_background_wave(uint32_t frame)
{
    int scroll_x = (fixed_sin_deg((int)(frame * 3u)) * TILE_SIZE) >> 15;
    int scroll_yy = (fixed_cos_deg((int)(frame * 2u)) * TILE_SIZE) >> 15;

    gfx_scrollb(240 + scroll_x, 160 + scroll_yy);
}

static void draw_textf_multiline(int16_t x, int16_t y, const char *text, uint8_t sizex, uint8_t sizey)
{
    char line[48];
    uint8_t pos = 0;
    int16_t draw_y = y;
    int16_t line_h = (int16_t)(FONT_H * sizey);

    if (line_h <= 0) line_h = FONT_H;

    while (*text) {
        char ch = *text++;

        if (ch == '\n') {
            line[pos] = '\0';
            gfx_drawtextf(x, draw_y, line, sizex, sizey);
            pos = 0;
            draw_y = (int16_t)(draw_y + line_h);
            continue;
        }

        if (pos < (uint8_t)(sizeof(line) - 1u)) {
            line[pos++] = ch;
        }
    }

    if (pos > 0u) {
        line[pos] = '\0';
        gfx_drawtextf(x, draw_y, line, sizex, sizey);
    }
}

static void draw_scrolly(void)
{
    scroll_y--;
    if (scroll_y < -scroll_extent) {
        scroll_y = SCREEN_H;
    }

    if (scroll_y < -(scroll_extent - SCREEN_H)) {
        --border_in;
        if (border_in < 0) border_in = 0;
    } else if (scroll_y < SCREEN_H && scroll_y > -(scroll_extent - SCREEN_H)) {
        ++border_in;
        if (border_in > 64) border_in = 64;
    }

    gfx_setcolour(18);
    draw_textf_multiline(88, (int16_t)(scroll_y + 2), message, 1, 2);
    gfx_setcolour(17);
    draw_textf_multiline(86, (int16_t)scroll_y, message, 1, 2);

    gfx_setcolour(19);
    gfx_rectf(0, 0, SCREEN_W, 16);
    gfx_rectf(0, SCREEN_H - 16, SCREEN_W, 16);
    gfx_rectf(0, 18, border_in, SCREEN_H - 36);
    gfx_rectf(SCREEN_W - border_in, 18, border_in, SCREEN_H - 36);

    // white lines
    gfx_setcolour(17);
    gfx_rectf(0, 16, SCREEN_W, 2);  // white line
    gfx_rectf(0, SCREEN_H - 18, SCREEN_W, 2);
    gfx_rectf(border_in, 18, 2, SCREEN_H - 36);
    gfx_rectf(SCREEN_W - border_in - 2, 18, 2, SCREEN_H - 36);

    //gfx_setcolour(19);
    //gfx_drawtextf(8, 2, APP_TITLE, 1, 1);
}

static uint8_t should_exit(void)
{
    uint8_t joy = getjoyport();
    uint8_t both = (uint8_t)(BTN_FIRE | BTN_FIRE2);

    return ((joy & both) == both) ? 1u : 0u;
}

static void init_scene(void)
{
    int line_count = 0;

    init_palette();
    generate_subdivided_cube();

    for (const char *p = message; *p; ++p) {
        if (*p == '\n') ++line_count;
    }
    scroll_extent = (line_count + 20) * 16;
}

int main(int argc, char *argv[])
{
    uint32_t frame = 0;

    (void)argc;
    (void)argv;

    configure_runmode(GAMEMODE_PROFILE_0);
    initMalloc();
    set_audio_dma(512);
    set_music_dma = 1;
    enable_audio_dma();

    gfx_setlcd(DEFAULT_RENDER_ORDER, FPS_50);
    gfx_mode(SCREEN_W, SCREEN_H, BACK_W, BACK_H, DISPFLAG_DUALLAYER | DISPFLAG_SCROLLABLE);

    front_a = gfx_getdrawbuffer();
    front_b = gfx_getshowbuffer();
    gfx_createBitmap((gfx_bitmap_t *)&backbitmap, BACK_W, BACK_H);

    init_scene();

    mod_play_result = music_mod_from_ram_play(tune, sizeof(tune));
    music_update();
    music_update();

    gfx_usefpalette(demo_palette);
    gfx_usebpalette(demo_palette);
    draw_background_checkerboard();

    gfx_showbbuffer((gfx_bitmap_t *)&backbitmap);
    gfx_showfbuffer((gfx_bitmap_t *)front_a);
    gfx_usebuffer((gfx_bitmap_t *)front_b);
    gfx_displaynow();

    while (!should_exit()) {
        gfx_bitmap_t *draw = hidden_front_buffer();

        gfx_lcdwait();
        gfx_usebuffer(draw);
        gfx_cls();

        draw_cube(draw);
        draw_scrolly();
        scroll_background_wave(frame);

        flip_front_buffer();
        gfx_displaynow();
        music_update();

        angle_x = (angle_x + 2) % 360;
        angle_y = (angle_y + 3) % 360;
        angle_z = (angle_z + 1) % 360;
        ++frame;
    }

    while (should_exit()) {
    }

    printf("Cubey demo ended :) mod=%d\n", mod_play_result);
    restore_lcd_desktop_mode();
    HWKERNAL->exitgamemode();

    return 0;
}
