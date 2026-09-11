#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "main.h"
#include "apis.h"


#define APP_TITLE       "SIDBOX CRT DEMO"
#define SCREEN_W        API_CRT_WIDTH
#define SCREEN_H        API_CRT_HEIGHT
#define LCD_W           480
#define LCD_H           320
#define STAR_COUNT      72u
#define SCOPE_POINTS    96u
#define BARS_H          24
#define GRID_TOP        32
#define GRID_BOTTOM     220
#define GRID_HEIGHT     (GRID_BOTTOM - GRID_TOP)
#define GRID_MID_Y      (GRID_TOP + (GRID_HEIGHT / 2))
#define STATUS_TOP      224

extern const uint8_t crtimage[];
extern const uint8_t crtimage2[];
extern const uint8_t crtimage3[];
extern const uint8_t crtimage4[];
extern const uint8_t crtimage5[];
extern const uint8_t crtimage6[];

#define imagelen 6

const uint8_t *images[] = {
    crtimage, crtimage2, crtimage3, crtimage4, crtimage5, 
    crtimage6
};

typedef struct {
    uint16_t x;
    uint8_t y;
    uint8_t speed;
    uint8_t colour;
} Star;

static uint8_t MEMALIGN32 crt_pixels[SCREEN_W * SCREEN_H];
static Star MEMALIGN32 stars[STAR_COUNT];
static gfx_bitmap_t MEMALIGN32 lcd_bitmap;
static uint32_t rng_state = 0x51DB0A56u;
static char status_line[40];
static const char lcd_msg_top[] = "CRT demo running";
static const char lcd_msg_bottom[] = "Press FIRE + OK to exit";

static const uint8_t bars[16] = {
    API_CRT_COLOUR_BLACK, API_CRT_COLOUR_BLUE, API_CRT_COLOUR_RED,
    API_CRT_COLOUR_MAGENTA, API_CRT_COLOUR_GREEN, API_CRT_COLOUR_CYAN,
    API_CRT_COLOUR_YELLOW, API_CRT_COLOUR_WHITE, API_CRT_COLOUR_BRIGHT,
    API_CRT_COLOUR_BBLUE, API_CRT_COLOUR_BRED, API_CRT_COLOUR_BMAGENTA,
    API_CRT_COLOUR_BGREEN, API_CRT_COLOUR_BCYAN, API_CRT_COLOUR_BYELLOW,
    API_CRT_COLOUR_BWHITE
};

static const uint8_t font_8x8_32_90[][8] = {
    { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },   /* space */
    { 0x00, 0x00, 0x00, 0x5F, 0x5F, 0x00, 0x00, 0x00 },
    { 0x00, 0x03, 0x03, 0x00, 0x03, 0x03, 0x00, 0x00 },
    { 0x14, 0x7F, 0x7F, 0x14, 0x7F, 0x7F, 0x14, 0x00 },
    { 0x00, 0x24, 0x2E, 0x6B, 0x6B, 0x3A, 0x12, 0x00 },
    { 0x4C, 0x6A, 0x36, 0x18, 0x6C, 0x56, 0x32, 0x00 },
    { 0x30, 0x7E, 0x4F, 0x59, 0x77, 0x3A, 0x68, 0x40 },
    { 0x00, 0x00, 0x04, 0x07, 0x03, 0x00, 0x00, 0x00 },
    { 0x00, 0x00, 0x1C, 0x3E, 0x63, 0x41, 0x00, 0x00 },
    { 0x00, 0x00, 0x41, 0x63, 0x3E, 0x1C, 0x00, 0x00 },
    { 0x08, 0x2A, 0x3E, 0x1C, 0x1C, 0x3E, 0x2A, 0x08 },
    { 0x00, 0x08, 0x08, 0x3E, 0x3E, 0x08, 0x08, 0x00 },
    { 0x00, 0x00, 0x80, 0xE0, 0x60, 0x00, 0x00, 0x00 },
    { 0x00, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x00 },
    { 0x00, 0x00, 0x00, 0x00, 0x60, 0x60, 0x00, 0x00 },
    { 0x40, 0x60, 0x30, 0x18, 0x0C, 0x06, 0x03, 0x01 },
    { 0x00, 0x3E, 0x7F, 0x59, 0x4D, 0x7F, 0x3E, 0x00 },
    { 0x00, 0x04, 0x06, 0x7F, 0x7F, 0x00, 0x00, 0x00 },
    { 0x00, 0x42, 0x63, 0x71, 0x59, 0x4F, 0x46, 0x00 },
    { 0x00, 0x22, 0x63, 0x49, 0x49, 0x7F, 0x36, 0x00 },
    { 0x18, 0x1C, 0x16, 0x13, 0x7F, 0x7F, 0x10, 0x00 },
    { 0x00, 0x27, 0x67, 0x45, 0x45, 0x7D, 0x39, 0x00 },
    { 0x00, 0x3C, 0x7E, 0x4B, 0x49, 0x79, 0x30, 0x00 },
    { 0x00, 0x01, 0x01, 0x71, 0x79, 0x0F, 0x07, 0x00 },
    { 0x00, 0x36, 0x7F, 0x49, 0x49, 0x7F, 0x36, 0x00 },
    { 0x00, 0x06, 0x4F, 0x49, 0x69, 0x3F, 0x1E, 0x00 },
    { 0x00, 0x00, 0x00, 0x66, 0x66, 0x00, 0x00, 0x00 },
    { 0x00, 0x00, 0x80, 0xE6, 0x66, 0x00, 0x00, 0x00 },
    { 0x00, 0x08, 0x08, 0x14, 0x14, 0x22, 0x22, 0x00 },
    { 0x00, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x00 },
    { 0x00, 0x22, 0x22, 0x14, 0x14, 0x08, 0x08, 0x00 },
    { 0x00, 0x02, 0x03, 0x51, 0x59, 0x0F, 0x06, 0x00 },
    { 0x3E, 0x7F, 0x41, 0x5D, 0x55, 0x1F, 0x1E, 0x00 },
    { 0x00, 0x7E, 0x7F, 0x09, 0x09, 0x7F, 0x7E, 0x00 },
    { 0x00, 0x7F, 0x7F, 0x49, 0x49, 0x7F, 0x36, 0x00 },
    { 0x00, 0x1C, 0x3E, 0x63, 0x41, 0x41, 0x41, 0x00 },
    { 0x00, 0x7F, 0x7F, 0x41, 0x63, 0x3E, 0x1C, 0x00 },
    { 0x00, 0x7F, 0x7F, 0x49, 0x49, 0x41, 0x41, 0x00 },
    { 0x00, 0x7F, 0x7F, 0x09, 0x09, 0x01, 0x01, 0x00 },
    { 0x00, 0x3E, 0x7F, 0x41, 0x49, 0x7B, 0x7A, 0x00 },
    { 0x00, 0x7F, 0x7F, 0x08, 0x08, 0x7F, 0x7F, 0x00 },
    { 0x00, 0x00, 0x41, 0x7F, 0x7F, 0x41, 0x00, 0x00 },
    { 0x00, 0x20, 0x60, 0x40, 0x40, 0x7F, 0x3F, 0x00 },
    { 0x7F, 0x7F, 0x08, 0x1C, 0x36, 0x63, 0x41, 0x00 },
    { 0x00, 0x7F, 0x7F, 0x40, 0x40, 0x40, 0x40, 0x00 },
    { 0x7F, 0x7F, 0x06, 0x0C, 0x06, 0x7F, 0x7F, 0x00 },
    { 0x7F, 0x7F, 0x06, 0x0C, 0x18, 0x7F, 0x7F, 0x00 },
    { 0x00, 0x3E, 0x7F, 0x41, 0x41, 0x7F, 0x3E, 0x00 },
    { 0x00, 0x7F, 0x7F, 0x09, 0x09, 0x0F, 0x06, 0x00 },
    { 0x3E, 0x7F, 0x41, 0x61, 0x7F, 0x7E, 0x40, 0x00 },
    { 0x00, 0x7F, 0x7F, 0x09, 0x19, 0x7F, 0x66, 0x00 },
    { 0x00, 0x26, 0x6F, 0x4D, 0x59, 0x7B, 0x32, 0x00 },
    { 0x00, 0x01, 0x01, 0x7F, 0x7F, 0x01, 0x01, 0x00 },
    { 0x00, 0x3F, 0x7F, 0x40, 0x40, 0x7F, 0x3F, 0x00 },
    { 0x00, 0x0F, 0x3F, 0x70, 0x70, 0x3F, 0x0F, 0x00 },
    { 0x7F, 0x7F, 0x30, 0x18, 0x30, 0x7F, 0x7F, 0x00 },
    { 0x41, 0x63, 0x36, 0x1C, 0x1C, 0x36, 0x63, 0x41 },
    { 0x01, 0x03, 0x06, 0x7C, 0x7C, 0x06, 0x03, 0x01 },
    { 0x61, 0x71, 0x59, 0x4D, 0x47, 0x43, 0x41, 0x00 }
};

static uint32_t rnd_u32(void)
{
    rng_state ^= rng_state << 13;
    rng_state ^= rng_state >> 17;
    rng_state ^= rng_state << 5;
    return rng_state;
}

static uint16_t rnd_range(uint16_t range)
{
    if (range == 0u) {
        return 0u;
    }
    return (uint16_t)(rnd_u32() % range);
}

static void put_pixel(int16_t x, int16_t y, uint8_t colour)
{
    if (x < 0 || y < 0 || x >= (int16_t)SCREEN_W || y >= (int16_t)SCREEN_H) {
        return;
    }

    crt_pixels[((uint32_t)x * SCREEN_H) + (uint32_t)y] = (uint8_t)(colour & 0x0fu);
}

static void fill_rect(int16_t x, int16_t y, int16_t w, int16_t h, uint8_t colour)
{
    int16_t x0 = x;
    int16_t y0 = y;
    int16_t x1 = (int16_t)(x + w);
    int16_t y1 = (int16_t)(y + h);

    if (x1 <= 0 || y1 <= 0 || x0 >= (int16_t)SCREEN_W || y0 >= (int16_t)SCREEN_H) {
        return;
    }

    if (x0 < 0) x0 = 0;
    if (y0 < 0) y0 = 0;
    if (x1 > (int16_t)SCREEN_W) x1 = (int16_t)SCREEN_W;
    if (y1 > (int16_t)SCREEN_H) y1 = (int16_t)SCREEN_H;

    for (int16_t xx = x0; xx < x1; ++xx) {
        uint8_t *column = &crt_pixels[((uint32_t)xx * SCREEN_H) + (uint32_t)y0];
        memset(column, (int)(colour & 0x0fu), (uint32_t)(y1 - y0));
    }
}

static void draw_hline(int16_t x, int16_t y, int16_t w, uint8_t colour)
{
    for (int16_t xx = 0; xx < w; ++xx) {
        put_pixel((int16_t)(x + xx), y, colour);
    }
}

static void draw_vline(int16_t x, int16_t y, int16_t h, uint8_t colour)
{
    if (x < 0 || x >= (int16_t)SCREEN_W) {
        return;
    }

    fill_rect(x, y, 1, h, colour);
}

void draw_line(int16_t x0, int16_t y0, int16_t x1, int16_t y1,
                      uint8_t colour)
{
    int16_t dx = (x1 > x0) ? (int16_t)(x1 - x0) : (int16_t)(x0 - x1);
    int16_t sx = (x0 < x1) ? 1 : -1;
    int16_t dy = (y1 > y0) ? (int16_t)(y0 - y1) : (int16_t)(y1 - y0);
    int16_t sy = (y0 < y1) ? 1 : -1;
    int16_t err = (int16_t)(dx + dy);

    for (;;) {
        put_pixel(x0, y0, colour);
        put_pixel((int16_t)(x0 + 1), y0, colour);

        if (x0 == x1 && y0 == y1) {
            break;
        }

        int16_t e2 = (int16_t)(err << 1);
        if (e2 >= dy) {
            err = (int16_t)(err + dy);
            x0 = (int16_t)(x0 + sx);
        }
        if (e2 <= dx) {
            err = (int16_t)(err + dx);
            y0 = (int16_t)(y0 + sy);
        }
    }
}

static int16_t tri_wave(uint16_t phase, int16_t amp)
{
    uint16_t p = (uint16_t)(phase & 0xffu);
    int16_t v = (p < 128u) ? (int16_t)p : (int16_t)(255u - p);

    return (int16_t)(((v * amp * 2) / 127) - amp);
}

static void draw_circle(int16_t cx, int16_t cy, int16_t radius, uint8_t colour)
{
    int16_t x = radius;
    int16_t y = 0;
    int16_t err = 0;

    while (x >= y) {
        put_pixel((int16_t)(cx + x), (int16_t)(cy + y), colour);
        put_pixel((int16_t)(cx + y), (int16_t)(cy + x), colour);
        put_pixel((int16_t)(cx - y), (int16_t)(cy + x), colour);
        put_pixel((int16_t)(cx - x), (int16_t)(cy + y), colour);
        put_pixel((int16_t)(cx - x), (int16_t)(cy - y), colour);
        put_pixel((int16_t)(cx - y), (int16_t)(cy - x), colour);
        put_pixel((int16_t)(cx + y), (int16_t)(cy - x), colour);
        put_pixel((int16_t)(cx + x), (int16_t)(cy - y), colour);

        if (err <= 0) {
            ++y;
            err = (int16_t)(err + (2 * y) + 1);
        }
        if (err > 0) {
            --x;
            err = (int16_t)(err - (2 * x) + 1);
        }
    }
}

static const uint8_t *get_font_glyph(char c)
{
    uint8_t ch = (uint8_t)c;

    if (ch >= (uint8_t)'a' && ch <= (uint8_t)'z') {
        ch = (uint8_t)(ch - ((uint8_t)'a' - (uint8_t)'A'));
    }
    if (ch < 32u || ch > 90u) {
        ch = (uint8_t)'?';
    }

    return font_8x8_32_90[ch - 32u];
}

static void draw_text_cell(uint16_t x, uint16_t y, char c,
                           uint8_t fg, uint8_t bg)
{
    const uint8_t *glyph = get_font_glyph(c);

    for (uint8_t gx = 0; gx < 8u; ++gx) {
        uint8_t column = glyph[gx];

        for (uint8_t gy = 0; gy < 8u; ++gy) {
            uint8_t colour = (column & (uint8_t)(0x01u << gy)) ? fg : bg;
            if(colour)
            put_pixel((int16_t)(x + gx), (int16_t)(y + gy), colour);
        }
    }
}

static void draw_crt_text(uint16_t x, uint16_t y, const char *text,
                          uint8_t fg, uint8_t bg)
{
    while (*text && x < SCREEN_W) {
        draw_text_cell(x, y, *text, fg, bg);
        x = (uint16_t)(x + 8u);
        ++text;
    }
}

static void reset_star(uint8_t i, uint16_t min_x)
{
    stars[i].x = (uint16_t)(min_x + rnd_range((uint16_t)(SCREEN_W * 16u)));
    stars[i].y = (uint8_t)((GRID_TOP + 2u) + rnd_range((uint16_t)(GRID_HEIGHT - 4u)));
    stars[i].speed = (uint8_t)(2u + rnd_range(12u));
    stars[i].colour = (stars[i].speed > 9u) ? API_CRT_COLOUR_BWHITE :
                      (stars[i].speed > 6u) ? API_CRT_COLOUR_BCYAN :
                      API_CRT_COLOUR_CYAN;
}

static void init_stars(void)
{
    for (uint8_t i = 0; i < STAR_COUNT; ++i) {
        reset_star(i, 0u);
    }
}

static void draw_stars(void)
{
    for (uint8_t i = 0; i < STAR_COUNT; ++i) {
        int16_t x = (int16_t)(stars[i].x >> 4);
        uint8_t tail = (stars[i].speed > 8u) ? 4u : 2u;

        draw_hline((int16_t)(x - tail), stars[i].y, tail, stars[i].colour);
        stars[i].x = (uint16_t)(stars[i].x - stars[i].speed);
        if (stars[i].x > (uint16_t)(SCREEN_W * 16u)) {
            reset_star(i, (uint16_t)(SCREEN_W * 16u));
        }
    }
}

static void draw_colour_bars(uint32_t frame)
{
    uint8_t bar_w = (uint8_t)(SCREEN_W / 16u);

    for (uint8_t i = 0; i < 16u; ++i) {
        uint8_t colour = bars[(uint8_t)((i + (frame >> 1)) & 0x0fu)];
        fill_rect((int16_t)(i * bar_w), 0, bar_w, BARS_H, colour);
    }

    fill_rect(0, BARS_H, SCREEN_W, 2, API_CRT_COLOUR_BWHITE);
}

static void draw_grid(void)
{
    for (int16_t y = (int16_t)(GRID_TOP + 8); y < (int16_t)GRID_BOTTOM;
         y = (int16_t)(y + 16)) {
        draw_hline(0, y, SCREEN_W, API_CRT_COLOUR_BLUE);
    }

    for (int16_t x = 0; x < (int16_t)SCREEN_W; x = (int16_t)(x + 16)) {
        draw_vline(x, GRID_TOP, GRID_HEIGHT, API_CRT_COLOUR_BLUE);
    }

    draw_hline(0, GRID_MID_Y, SCREEN_W, API_CRT_COLOUR_CYAN);
    draw_vline(160, GRID_TOP, GRID_HEIGHT, API_CRT_COLOUR_CYAN);
}

static void draw_scope(uint32_t frame)
{
    int16_t last_x = 0;
    int16_t last_y = GRID_MID_Y;

    for (uint16_t i = 0; i < SCOPE_POINTS; ++i) {
        int16_t x = (int16_t)((i * (SCREEN_W - 1u)) / (SCOPE_POINTS - 1u));
        int16_t y = (int16_t)(GRID_MID_Y +
            tri_wave((uint16_t)((i * 9u) + frame), 42) +
            tri_wave((uint16_t)((i * 19u) + (frame * 2u)), 13));

        if (i != 0u) {
            draw_line(last_x, last_y, x, y, API_CRT_COLOUR_BGREEN);
        }
        last_x = x;
        last_y = y;
    }
}

static void draw_movers(uint32_t frame)
{
    int16_t box_x = (int16_t)(1 + tri_wave((uint16_t)(frame * 2u), 128));
    int16_t box_y = (int16_t)(112 + tri_wave((uint16_t)(frame * 3u), 84));
    int16_t orb_x = (int16_t)(248 + tri_wave((uint16_t)(frame * 2u + 64u), 48));
    int16_t orb_y = (int16_t)(128 + tri_wave((uint16_t)(frame * 5u), 58));

    fill_rect((int16_t)(160 + box_x), box_y, 24, 18, API_CRT_COLOUR_BMAGENTA);
    fill_rect((int16_t)(164 + box_x), (int16_t)(box_y + 4), 16, 10,
              API_CRT_COLOUR_BWHITE);

    draw_circle(orb_x, orb_y, 18, API_CRT_COLOUR_BYELLOW);
    draw_circle(orb_x, orb_y, 10, API_CRT_COLOUR_YELLOW);
    fill_rect((int16_t)(orb_x - 2), (int16_t)(orb_y - 2), 5, 5,
              API_CRT_COLOUR_BRED);
}

static void draw_scan_noise(uint32_t frame)
{
    uint8_t y = (uint8_t)(GRID_TOP + ((frame * 3u) % GRID_HEIGHT));

    draw_hline(0, y, SCREEN_W, API_CRT_COLOUR_BWHITE);

    for (uint8_t i = 0; i < 28u; ++i) {
        int16_t x = (int16_t)rnd_range(SCREEN_W);
        int16_t yy = (int16_t)(GRID_TOP + rnd_range(GRID_HEIGHT));
        put_pixel(x, yy, (i & 1u) ? API_CRT_COLOUR_BBLUE : API_CRT_COLOUR_BRIGHT);
    }
}

static void draw_demo_frame(uint32_t frame)
{
    fill_rect(0, 0, SCREEN_W, SCREEN_H, API_CRT_COLOUR_BLACK);
    draw_colour_bars(frame);
    draw_grid();
    draw_stars();
    draw_scope(frame);
    draw_movers(frame);
    draw_scan_noise(frame);

    fill_rect(0, STATUS_TOP, SCREEN_W, 16, API_CRT_COLOUR_BLUE);
    fill_rect(4, 4, 160, 12, API_CRT_COLOUR_BLACK);
    fill_rect(168, 4, 148, 12, API_CRT_COLOUR_BLACK);
}

static uint8_t should_exit(void)
{
    uint8_t joy = getjoyport();
    uint8_t both_fire = (uint8_t)(BTN_FIRE | BTN_FIRE2);

    return ((joy & both_fire) == both_fire) ? 1u : 0u;
}

static void draw_lcd_centered(int16_t y, const char *text, uint8_t colour)
{
    int16_t text_w = (int16_t)(strlen(text) * 16u);
    int16_t x = (int16_t)((LCD_W - text_w) / 2);

    gfx_setcolour(colour);
    gfx_drawtextf(x, y, text, 2, 2);
}

static void show_lcd_notice(void)
{
    gfx_setlcd(DEFAULT_RENDER_ORDER, FPS_50);
    gfx_mode(LCD_W, LCD_H, 0, 0, DISPFLAG_SINGLELAYER | DISPFLAG_NOSCROLLABLE);
    gfx_createBitmap(&lcd_bitmap, LCD_W, LCD_H);
    gfx_showfbuffer(&lcd_bitmap);
    gfx_usebuffer(&lcd_bitmap);
    gfx_cls();

    gfx_setcolour(16);
    gfx_rectf(0, 0, LCD_W, LCD_H);
    gfx_setcolour(3);
    gfx_rectf(0, 128, LCD_W, 64);
    gfx_setcolour(11);
    gfx_rectf(0, 190, LCD_W, 3);
    gfx_setcolour(11);
    gfx_rectf(0, 125, LCD_W, 3);

    draw_lcd_centered(140, lcd_msg_top, 2);
    draw_lcd_centered(164, lcd_msg_bottom, 11);
    gfx_displaynow();
    gfx_lcdwait();
}

static void restore_lcd_desktop_mode(void)
{
    gfx_lcdwait();
    gfx_mode(LCD_W, LCD_H, LCD_W, LCD_H, DISPFLAG_DUALLAYER | DISPFLAG_NOSCROLLABLE);
    gfx_showfbuffer(gfx_getfbuffer1());
    gfx_showbbuffer(gfx_getbbuffer1());
    gfx_usebuffer(gfx_getbbuffer1());
    gfx_displaynow();
    gfx_lcdwait();
}

void RenderBouncingCube(uint8_t colour);
void RenderBouncingCubeFilled(uint8_t fallback_colour) ;
int main(int argc, char *argv[])
{
    uint32_t frame = 0;
    uint8_t border = API_CRT_COLOUR_BLUE;

    (void)argc;
    (void)argv;

    configure_runmode(GAMEMODE_PROFILE_1);
    initMalloc();

    set_audio_dma(512);
    set_music_dma = 1;
    //music_play("sdcard:/music/sid/1_67YT-Turrican_III_Remix.sid",0);
    //music_play("sdcard:/music/sid/Adventure_2SID.sid", 0);
    //music_play("sdcard:/music/xm/(Z00)_Nwhere (+).xm",0);
    show_lcd_notice();

    if (API->crt == 0 || !crt_enable()) {
        dbug("CRT API unavailable\n");
        return 1;
    }

    uint8_t imageid = 0;
    uint16_t swapimage = 0;

    for(;;){
        fill_rect(0, 0, SCREEN_W, SCREEN_H, API_CRT_COLOUR_BLACK);  // clear screen
        //if(imageid == 0)CRT_DrawImage(crtimage, 0, 0, 320, 240, crt_pixels);
        //if(imageid == 1)CRT_DrawImage(crtimage2, 0, 0, 320, 240, crt_pixels);

        //CRT_DrawImage(images[imageid], 0, 0, 320, 240, crt_pixels);
        CRT_FrameImage(images[imageid], crt_pixels);
        
        RenderBouncingCubeFilled(4);
        RenderBouncingCube(0);

        crt_vsync();
        crt_render(crt_pixels, 0);

        for(uint16_t i = 0; i < 50 * 3; i++){
            //crt_vsync();
        }
        swapimage++;
        if(swapimage > (50 *3)){
            swapimage=0;
            imageid ++;
            if(imageid > imagelen-1) imageid = 0;
        }
        
    }



    rng_state ^= getTicks();
    init_stars();

    while (!should_exit()) {
        border = bars[(frame >>3) & 0x0fu];

        draw_demo_frame(frame);
        draw_crt_text(8, 7, APP_TITLE, API_CRT_COLOUR_BWHITE,
                      API_CRT_COLOUR_BLACK);
        draw_crt_text(176, 7, "RGBI 320x240 50HZ", API_CRT_COLOUR_BYELLOW,
                      API_CRT_COLOUR_BLACK);
        snprintf(status_line, sizeof(status_line), "FRAME %lu  HOLD FIRE+OK TO EXIT",
                 (unsigned long)frame);
        draw_crt_text(8, 228, status_line, API_CRT_COLOUR_BCYAN,
                      API_CRT_COLOUR_BLACK);

        crt_vsync();
        crt_render(crt_pixels, border);

        music_update();
        sysevents();
        ++frame;
    }

    crt_disable();
    restore_lcd_desktop_mode();
    HWKERNAL->exitgamemode();
    return 0;
}

