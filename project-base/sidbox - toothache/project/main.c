#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "main.h"
#include "apis.h"

#define APP_TITLE       "TOOTH ACHE"
#define SCREEN_W        480
#define SCREEN_H        320
#define METER_COUNT     16

#define PLAYLIST_X      28
#define PLAYLIST_Y      222
#define PLAYLIST_W      294
#define PLAYLIST_H      70
#define TRANSPORT_X     340
#define TRANSPORT_Y     222
#define TRANSPORT_W     110
#define TRANSPORT_H     70
#define SCRUB_X         360
#define SCRUB_Y         277
#define SCRUB_W         84
#define SCRUB_H         9

enum {
    COL_BLACK = 0,
    COL_BG,
    COL_BG_2,
    COL_PANEL,
    COL_PANEL_HI,
    COL_TEXT,
    COL_TEXT_DIM,
    COL_CYAN,
    COL_GREEN,
    COL_YELLOW,
    COL_RED,
    COL_BLUE,
    COL_MAGENTA,
    COL_WHITE,
    COL_SHADOW,
    COL_SCAN
};

MEMALIGN32 volatile gfx_bitmap_t *front_a;
MEMALIGN32 volatile gfx_bitmap_t *front_b;
volatile static uint8_t draw_side;

static uint32_t MEMALIGN32 palette[256];
static int16_t touch_x;
static int16_t touch_y;
static uint8_t touch_down;
static uint8_t last_touch_down;
static uint8_t touch_flash;
static uint8_t selected_track;
static uint8_t player_paused;
static uint8_t play_pos;

static uint32_t argb(uint8_t r, uint8_t g, uint8_t b)
{
    return 0xFF000000u | ((uint32_t)r << 16) | ((uint32_t)g << 8) | b;
}

static void build_palette(void)
{
    memset(palette, 0, sizeof(palette));

    palette[COL_BLACK]    = argb(0, 0, 0);
    palette[COL_BG]       = argb(4, 8, 18);
    palette[COL_BG_2]     = argb(8, 16, 30);
    palette[COL_PANEL]    = argb(18, 29, 42);
    palette[COL_PANEL_HI] = argb(31, 50, 66);
    palette[COL_TEXT]     = argb(226, 241, 239);
    palette[COL_TEXT_DIM] = argb(117, 145, 151);
    palette[COL_CYAN]     = argb(0, 215, 224);
    palette[COL_GREEN]    = argb(51, 232, 144);
    palette[COL_YELLOW]   = argb(255, 207, 82);
    palette[COL_RED]      = argb(247, 91, 91);
    palette[COL_BLUE]     = argb(63, 129, 255);
    palette[COL_MAGENTA]  = argb(227, 89, 255);
    palette[COL_WHITE]    = argb(255, 255, 255);
    palette[COL_SHADOW]   = argb(2, 4, 10);
    palette[COL_SCAN]     = argb(21, 80, 87);

    for (uint16_t i = 0; i < 32; ++i) {
        palette[32 + i] = argb((uint8_t)(4 + i),
                               (uint8_t)(10 + (i * 2)),
                               (uint8_t)(22 + (i * 3)));
    }

    for (uint16_t i = 0; i < 32; ++i) {
        palette[64 + i] = argb((uint8_t)(0 + (i / 3)),
                               (uint8_t)(88 + (i * 4)),
                               (uint8_t)(108 + (i * 3)));
    }

    for (uint16_t i = 0; i < 32; ++i) {
        palette[96 + i] = argb((uint8_t)(80 + (i * 5)),
                               (uint8_t)(40 + (i * 3)),
                               (uint8_t)(210 - (i * 2)));
    }
}

static uint8_t meter_level(uint32_t frame, uint8_t meter)
{
    uint8_t phase = (uint8_t)((frame * 3u + (uint32_t)meter * 13u) & 63u);
    uint8_t tri = (phase < 32u) ? phase : (uint8_t)(63u - phase);

    return (uint8_t)(14u + (tri * 2u));
}

static uint8_t hit_rect(int16_t x, int16_t y, int16_t w, int16_t h)
{
    return (touch_x >= x && touch_y >= y &&
            touch_x < (int16_t)(x + w) && touch_y < (int16_t)(y + h));
}

static void poll_touch(void)
{
    uint8_t state = touch_getxy(&touch_x, &touch_y);
    touch_down = (state != 0u);

    if (touch_x < 0) {
        touch_x = 0;
    } else if (touch_x >= SCREEN_W) {
        touch_x = SCREEN_W - 1;
    }

    if (touch_y < 0) {
        touch_y = 0;
    } else if (touch_y >= SCREEN_H) {
        touch_y = SCREEN_H - 1;
    }
}

static void process_touch(void)
{
    uint8_t pressed = (uint8_t)(touch_down && !last_touch_down);

    if (touch_flash > 0u) {
        --touch_flash;
    }

    if (!pressed) {
        last_touch_down = touch_down;
        return;
    }

    touch_flash = 10;

    if (hit_rect(PLAYLIST_X + 11, PLAYLIST_Y + 25, PLAYLIST_W - 22, 39)) {
        selected_track = (uint8_t)((touch_y - (PLAYLIST_Y + 25)) / 13);
        if (selected_track > 2u) {
            selected_track = 2u;
        }
        play_pos = 0;
        player_paused = 0;
    } else if (hit_rect(SCRUB_X, SCRUB_Y - 3, SCRUB_W, SCRUB_H + 6)) {
        play_pos = (uint8_t)(((uint32_t)(touch_x - SCRUB_X) * 100u) / SCRUB_W);
    } else if (hit_rect(TRANSPORT_X, TRANSPORT_Y, TRANSPORT_W, TRANSPORT_H)) {
        player_paused = (uint8_t)!player_paused;
    }

    last_touch_down = touch_down;
}

static void draw_text_shadow(int16_t x, int16_t y, const char *text)
{
    gfx_setcolour(COL_SHADOW);
    gfx_drawtext((long)(x + 1), (long)(y + 1), text);
    gfx_setcolour(COL_TEXT);
    gfx_drawtext(x, y, text);
}

static void draw_panel(int16_t x, int16_t y, int16_t w, int16_t h)
{
    gfx_setcolour(COL_SHADOW);
    gfx_rectf((int16_t)(x + 3), (int16_t)(y + 3), w, h);
    gfx_setcolour(COL_PANEL);
    gfx_rectf(x, y, w, h);
    gfx_setcolour(COL_PANEL_HI);
    gfx_rectf(x, y, w, 2);
    gfx_rectf(x, y, 2, h);
}

static void draw_background(uint32_t frame)
{
    uint8_t offset = (uint8_t)((frame >> 2) & 31u);

    for (int16_t y = 0; y < SCREEN_H; y = (int16_t)(y + 8)) {
        gfx_setcolour((uint8_t)(32u + (((uint16_t)y >> 3) + offset) % 32u));
        gfx_rectf(0, y, SCREEN_W, 8);
    }

    gfx_setcolour(COL_SCAN);
    for (int16_t y = (int16_t)(frame & 15u); y < SCREEN_H; y = (int16_t)(y + 16)) {
        gfx_rectf(0, y, SCREEN_W, 1);
    }

    for (uint8_t i = 0; i < 36; ++i) {
        int16_t x = (int16_t)(((uint32_t)i * 73u + frame * 2u) % SCREEN_W);
        int16_t y = (int16_t)(52u + (((uint32_t)i * 47u) % 148u));
        gfx_setcolour((uint8_t)(COL_CYAN + ((i + frame) & 3u)));
        gfx_plot(x, y);
    }
}

static void draw_header(uint32_t frame)
{
    gfx_setcolour(COL_PANEL);
    gfx_rectf(0, 0, SCREEN_W, 42);
    gfx_setcolour(COL_CYAN);
    gfx_rectf(0, 40, SCREEN_W, 2);

    draw_text_shadow(18, 13, "SIDBOX MUSIC BOX");

    gfx_setcolour((frame & 32u) ? COL_GREEN : COL_YELLOW);
    gfx_rectf(362, 12, 10, 10);
    gfx_setcolour(COL_TEXT_DIM);
    gfx_drawtext(380, 13, touch_down ? "TOUCH ACTIVE" : "BOOT FRONTEND");
}

static void draw_meters(uint32_t frame)
{
    const int16_t x0 = 30;
    const int16_t y0 = 64;
    const int16_t w = 420;
    const int16_t h = 138;
    const int16_t base_y = (int16_t)(y0 + h - 18);
    const int16_t bar_w = 18;
    const int16_t gap = 8;

    draw_panel(x0, y0, w, h);

    gfx_setcolour(COL_TEXT_DIM);
    gfx_drawtext(x0 + 14, y0 + 12, "GRAPHICS PRIMITIVE TEST");

    for (uint8_t i = 0; i < METER_COUNT; ++i) {
        int16_t x = (int16_t)(x0 + 14 + (int16_t)i * (bar_w + gap));
        uint8_t height = meter_level(frame, i);

        gfx_setcolour(COL_BG_2);
        gfx_rectf(x, (int16_t)(base_y - 96), bar_w, 96);

        for (uint8_t seg = 0; seg < height; seg = (uint8_t)(seg + 8)) {
            uint8_t colour = COL_GREEN;
            if (seg > 64u) {
                colour = COL_RED;
            } else if (seg > 42u) {
                colour = COL_YELLOW;
            }

            gfx_setcolour(colour);
            gfx_rectf(x, (int16_t)(base_y - seg - 6), bar_w, 5);
        }
    }

    gfx_setcolour(COL_CYAN);
    gfx_rectf(x0 + 14, base_y + 11, (int16_t)(80 + (frame % 318u)), 3);
}

static void draw_playlist(void)
{
    draw_panel(PLAYLIST_X, PLAYLIST_Y, PLAYLIST_W, PLAYLIST_H);
    gfx_setcolour(COL_TEXT_DIM);
    gfx_drawtext(42, 234, "TAP A TRACK");

    for (uint8_t row = 0; row < 3; ++row) {
        int16_t y = (int16_t)(250 + row * 13);

        if (row == selected_track) {
            gfx_setcolour(COL_BLUE);
            gfx_rectf(39, (int16_t)(y - 2), 270, 11);
        }

        gfx_setcolour(row == selected_track ? COL_WHITE : COL_TEXT_DIM);
        if (row == 0) {
            gfx_drawtext(46, y, "01  BOOT_TEST.MOD");
        } else if (row == 1) {
            gfx_drawtext(46, y, "02  SD CARD SCAN SOON");
        } else {
            gfx_drawtext(46, y, "03  TOOTHACHE.APP");
        }
    }
}

static void draw_transport(uint32_t frame)
{
    int16_t pos_w = (int16_t)(((uint16_t)play_pos * SCRUB_W) / 100u);

    draw_panel(TRANSPORT_X, TRANSPORT_Y, TRANSPORT_W, TRANSPORT_H);

    if (touch_down && hit_rect(TRANSPORT_X, TRANSPORT_Y, TRANSPORT_W, TRANSPORT_H)) {
        gfx_setcolour(COL_PANEL_HI);
        gfx_rectf(TRANSPORT_X + 4, TRANSPORT_Y + 4, TRANSPORT_W - 8, TRANSPORT_H - 8);
    }

    if (player_paused) {
        gfx_setcolour(COL_GREEN);
        for (int16_t i = 0; i < 18; ++i) {
            gfx_rectf((int16_t)(368 + i), (int16_t)(244 - (i / 2)), 1, (int16_t)(10 + i));
        }
    } else {
        gfx_setcolour(COL_YELLOW);
        gfx_rectf(376, 239, 5, 30);
        gfx_rectf(389, 239, 5, 30);
    }

    gfx_setcolour(COL_BG_2);
    gfx_rectf(SCRUB_X, SCRUB_Y, SCRUB_W, 3);

    gfx_setcolour(COL_CYAN);
    gfx_rectf(SCRUB_X, SCRUB_Y, pos_w, 3);

    gfx_setcolour(COL_TEXT_DIM);
    gfx_drawtext(358, 228, player_paused ? "PAUSED" : "PLAYING");
}

static void draw_touch_marker(void)
{
    if (!touch_down && touch_flash == 0u) {
        return;
    }

    gfx_setcolour(touch_down ? COL_WHITE : COL_CYAN);
    gfx_rectf((int16_t)(touch_x - 8), touch_y, 17, 1);
    gfx_rectf(touch_x, (int16_t)(touch_y - 8), 1, 17);

    if (touch_flash > 0u) {
        gfx_setcolour(COL_MAGENTA);
        gfx_rectf((int16_t)(touch_x - 2), (int16_t)(touch_y - 2), 5, 5);
    }
}

static void draw_scene(uint32_t frame)
{
    draw_background(frame);
    draw_header(frame);
    draw_meters(frame);
    draw_playlist();
    draw_transport(frame);
    draw_touch_marker();

    gfx_setcolour(COL_TEXT_DIM);
    gfx_drawtext(18, 304, "TOUCH PLAYLIST / TRANSPORT - CORE GRAPHICS ONLY");
}

static void flip_to_next_draw_buffer(void)
{
    draw_side = (uint8_t)(1u - draw_side);

    if (draw_side) { gfx_dispfbuffer(front_a, front_b);
    } else {         gfx_dispfbuffer(front_b, front_a);
    }
}

int main(int argc, char *argv[])
{
    uint32_t frame = 0;

    (void)argc;
    (void)argv;

    //DIVZEROOFF;

    configure_runmode(GAMEMODE_PROFILE_1);
    initMalloc();

    gfx_setlcd(DEFAULT_RENDER_ORDER, FPS_50);
    gfx_mode(SCREEN_W, SCREEN_H, SCREEN_W, SCREEN_H, DISPFLAG_SINGLELAYER | DISPFLAG_NOSCROLLABLE);
    set_audio_dma(512); // a few ms about 7ms enough for a full frame.
    set_music_dma = 1;

    front_a = gfx_getdrawbuffer();
    front_b = gfx_getshowbuffer();

    build_palette();
    gfx_usefpalette(palette);
    touch_init();

    gfx_showfbuffer(front_a);
    gfx_usebuffer(front_b);
    lcd_bright(100);

    music_play("sdcard:/level1.mod", 0);

    for (;;) {
        poll_touch();
        process_touch();

        if (!player_paused && ((frame & 3u) == 0u)) {
            play_pos = (uint8_t)((play_pos + 1u) % 101u);
        }

        gfx_lcdwait();
        flip_to_next_draw_buffer();
        draw_scene(frame++);
        gfx_displaynow();
    }

    return 0x00;
}
