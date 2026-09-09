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

static void draw_line(int16_t x0, int16_t y0, int16_t x1, int16_t y1,
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

static void reset_star(uint8_t i, uint16_t min_x)
{
    stars[i].x = (uint16_t)(min_x + rnd_range((uint16_t)(SCREEN_W * 16u)));
    stars[i].y = (uint8_t)(34u + rnd_range(154u));
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
        uint8_t colour = bars[(uint8_t)((i + (frame >> 4)) & 0x0fu)];
        fill_rect((int16_t)(i * bar_w), 0, bar_w, 24, colour);
    }

    fill_rect(0, 24, SCREEN_W, 2, API_CRT_COLOUR_BWHITE);
}

static void draw_grid(void)
{
    for (int16_t y = 40; y < 184; y = (int16_t)(y + 16)) {
        draw_hline(0, y, SCREEN_W, API_CRT_COLOUR_BLUE);
    }

    for (int16_t x = 0; x < (int16_t)SCREEN_W; x = (int16_t)(x + 16)) {
        draw_vline(x, 32, 152, API_CRT_COLOUR_BLUE);
    }

    draw_hline(0, 104, SCREEN_W, API_CRT_COLOUR_CYAN);
    draw_vline(160, 32, 152, API_CRT_COLOUR_CYAN);
}

static void draw_scope(uint32_t frame)
{
    int16_t last_x = 0;
    int16_t last_y = 104;

    for (uint16_t i = 0; i < SCOPE_POINTS; ++i) {
        int16_t x = (int16_t)((i * (SCREEN_W - 1u)) / (SCOPE_POINTS - 1u));
        int16_t y = (int16_t)(104 +
            tri_wave((uint16_t)((i * 9u) + frame), 28) +
            tri_wave((uint16_t)((i * 19u) + (frame * 2u)), 9));

        if (i != 0u) {
            draw_line(last_x, last_y, x, y, API_CRT_COLOUR_BGREEN);
        }
        last_x = x;
        last_y = y;
    }
}

static void draw_movers(uint32_t frame)
{
    int16_t box_x = (int16_t)(20 + tri_wave((uint16_t)(frame * 2u), 88));
    int16_t box_y = (int16_t)(70 + tri_wave((uint16_t)(frame * 3u), 34));
    int16_t orb_x = (int16_t)(248 + tri_wave((uint16_t)(frame * 2u + 64u), 48));
    int16_t orb_y = (int16_t)(106 + tri_wave((uint16_t)(frame * 5u), 38));

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
    uint8_t y = (uint8_t)(32u + ((frame * 3u) % 152u));

    draw_hline(0, y, SCREEN_W, API_CRT_COLOUR_BWHITE);

    for (uint8_t i = 0; i < 28u; ++i) {
        int16_t x = (int16_t)rnd_range(SCREEN_W);
        int16_t yy = (int16_t)(32u + rnd_range(152u));
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

    fill_rect(0, 184, SCREEN_W, 16, API_CRT_COLOUR_BLUE);
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
    gfx_rectf(0, 132, LCD_W, 58);
    gfx_setcolour(11);
    gfx_rectf(0, 190, LCD_W, 3);
    gfx_setcolour(11);
    gfx_rectf(0, 127, LCD_W, 3);

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
    show_lcd_notice();

    if (API->crt == 0 || !crt_enable()) {
        dbug("CRT API unavailable\n");
        return 1;
    }

    rng_state ^= getTicks();
    init_stars();

    while (!should_exit()) {
        border = bars[(frame >> 3) & 0x0fu];

        crt_waitframe();
        draw_demo_frame(frame);
        crt_render(crt_pixels, border);

        crt_text(8, 7, APP_TITLE, API_CRT_COLOUR_BWHITE);
        crt_text(176, 7, "RGBI 320x200 50HZ", API_CRT_COLOUR_BYELLOW);
        snprintf(status_line, sizeof(status_line), "FRAME %lu  HOLD FIRE+OK TO EXIT",
                 (unsigned long)frame);
        crt_text(8, 188, status_line, API_CRT_COLOUR_BCYAN);
        crt_flush();

        music_update();
        sysevents();
        ++frame;
    }

    crt_disable();
    restore_lcd_desktop_mode();
    HWKERNAL->exitgamemode();
    return 0;
}
