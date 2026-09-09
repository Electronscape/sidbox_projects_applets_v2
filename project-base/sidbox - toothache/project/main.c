#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "main.h"
#include "apis.h"


#include "resources.h"

#define APP_TITLE       "TOOTH ACHE"
#define SCREEN_W        480
#define SCREEN_H        320
#define METER_COUNT     16
#define FONT_W          8
#define STAR_COUNT      96
#define STARFIELD_Y     38

typedef struct {
    int16_t x;
    int16_t y;
    uint8_t speed;
    uint8_t colour;
} Star;



extern const char txtTitle[];

MEMALIGN32 volatile gfx_bitmap_t *front_a;
MEMALIGN32 volatile gfx_bitmap_t *front_b;
//MEMALIGN32 volatile gfx_bitmap_t *backbuff;
volatile static uint8_t db;
MEMALIGN32 static Star stars[STAR_COUNT];
MEMALIGN32 static uint32_t star_seed = 0x0051DB0Au;
MEMALIGN32 volatile gfx_bitmap_t backbitmap;    // background image


static uint32_t argb(uint8_t r, uint8_t g, uint8_t b)
{
    return 0xFF000000u | ((uint32_t)r << 16) | ((uint32_t)g << 8) | b;
}


static int32_t scrollx_title = SCREEN_W;
static int32_t scrollwidth_title = 0;
static int32_t scrolltitlebar_x = 0;

static uint16_t star_rand(uint16_t range)
{
    star_seed = (star_seed * 1103515245u) + 12345u;
    return (uint16_t)((star_seed >> 16) % range);
}

static void reset_star(uint8_t i, int16_t min_x)
{
    stars[i].x = (int16_t)(min_x + (int16_t)star_rand(SCREEN_W-1));
    stars[i].y = (int16_t)(STARFIELD_Y + star_rand((SCREEN_H-1) - STARFIELD_Y));

    if(i < 32) {
        stars[i].speed = 1;
        stars[i].colour = 6;
    } else if(i < 54) {
        stars[i].speed = 2;
        stars[i].colour = 6;
    } else if(i < 72) {
        stars[i].speed = 3;
        stars[i].colour = 5;
    } else if(i < 84) {
        stars[i].speed = 5;
        stars[i].colour = 1;
    } else if(i < 92) {
        stars[i].speed = 7;
        stars[i].colour = 1;
    } else {
        stars[i].speed = 9;
        stars[i].colour = 2;
    }
}

static void init_star_fields(void)
{
    uint8_t i;

    for(i = 0; i < STAR_COUNT; ++i) {
        reset_star(i, 0);
    }
}

static void draw_star_pixel(int16_t x, int16_t y)
{
    if(x < 0 || x >= SCREEN_W || y < STARFIELD_Y || y >= SCREEN_H) {
        return;
    }

    gfx_plot(x, y);
}

static int16_t star_tail_width(uint8_t speed)
{
    if(speed >= 9) return 9;
    if(speed >= 7) return 7;
    if(speed >= 5) return 5;
    if(speed >= 3) return 3;
    if(speed >= 2) return 2;
    return 1;
}

static void draw_star_shape(const Star *star)
{
    int16_t len = star_tail_width(star->speed);
    int16_t p;

    for(p = 0; p < len; ++p) {
        draw_star_pixel((int16_t)(star->x + p), star->y);
    }

    if(star->speed >= 7) {
        draw_star_pixel((int16_t)(star->x + 1), (int16_t)(star->y - 1));
        draw_star_pixel((int16_t)(star->x + 1), (int16_t)(star->y + 1));
    }

    if(star->speed >= 9) {
        draw_star_pixel((int16_t)(star->x + 3), (int16_t)(star->y - 1));
        draw_star_pixel((int16_t)(star->x + 3), (int16_t)(star->y + 1));
    }
}

static void draw_star_fields(void)
{
    uint8_t i;

    for(i = 0; i < STAR_COUNT; ++i) {
        gfx_setcolour(stars[i].colour);
        draw_star_shape(&stars[i]);

        stars[i].x -= stars[i].speed;
        if(stars[i].x < -star_tail_width(stars[i].speed)) {
            reset_star(i, SCREEN_W);
        }
    }
}

#define scrolly_y 14
static void draw_top_scrolly(){
    scrollx_title-=3;
    if(scrollx_title <= -scrollwidth_title) {
        scrollx_title = SCREEN_W;
    }

    // background
    gfx_setcolour(16);
    gfx_drawtextf(scrollx_title-2, scrolly_y, txtTitle,2,2);
    gfx_drawtextf(scrollx_title+2, scrolly_y, txtTitle,2,2);
    gfx_drawtextf(scrollx_title, scrolly_y-2, txtTitle,2,2);
    gfx_drawtextf(scrollx_title, scrolly_y+2, txtTitle,2,2);

    // dont need to set colour, as this just uses the palette scroll
    gfx_drawtextfc(scrollx_title, scrolly_y, txtTitle,2,2, 80,87, 12);

    gfx_setcolour(1);
    gfx_rectf(0, 32, SCREEN_W, 5);
}

static void draw_scroll_bar_bg(){
    uint16_t step;
    scrolltitlebar_x -=2;
    if(scrolltitlebar_x <= -68){
        scrolltitlebar_x = 0;
    }
    for(step = 0; step < SCREEN_W; step += 68){
   
        gfx_blit(topscroll_bar_bg1, step + scrolltitlebar_x, 0, 68, 32);
    }
}

static void setup_background(){
    static const uint8_t gradient_cols[] = {
        16, 16, 16, 17,
        17, 18, 18, 19,
        19, 20, 20, 21,
        21, 22, 22, 23,
        23, 23
    };
    const int16_t band_count = (int16_t)(sizeof(gradient_cols) / sizeof(gradient_cols[0]));
    const int16_t band_h = (int16_t)(SCREEN_H / band_count);
    int16_t band;

    gfx_usebuffer(&backbitmap);
    gfx_cls();

    for(band = 0; band < band_count; ++band) {
        int16_t y0 = (int16_t)(band * band_h);
        int16_t y1 = (band == (band_count - 1)) ? SCREEN_H : (int16_t)(y0 + band_h);
        uint8_t col = gradient_cols[band];
        uint8_t prev_col = (band > 0) ? gradient_cols[band - 1] : col;

        gfx_setcolour(col);
        gfx_rectf(0, y0, SCREEN_W, (int16_t)(y1 - y0));

        if(band > 0 && prev_col != col) {
            if((y0 + 1) < y1) {
                gfx_setcolour(prev_col);
                gfx_rectf(0, (int16_t)(y0 + 3), SCREEN_W, 2);
            }
        }
    }
}

static void draw_scene(uint32_t frame)
{
    draw_scroll_bar_bg();
    draw_top_scrolly();

    draw_star_fields();     // this is a "scrolling from right to left" effect
}

static void flip_front_buffer(void)
{
    db = (uint8_t)(1u - db);

    if (db) { gfx_dispfbuffer(front_a, front_b);
    } else {  gfx_dispfbuffer(front_b, front_a);
    }
}

static void init_scene(){
    scrollwidth_title = (int32_t)strlen(txtTitle) * FONT_W * 2;
    if(scrollwidth_title <= 0) scrollwidth_title = FONT_W;

    scrollx_title = SCREEN_W;
    init_star_fields();
}

int main(int argc, char *argv[])
{
    (void)argc;
    (void)argv;

    //DIVZEROOFF;

    configure_runmode(GAMEMODE_PROFILE_1);
    initMalloc();

    gfx_setlcd(DEFAULT_RENDER_ORDER, FPS_50);
    gfx_mode(SCREEN_W, SCREEN_H, SCREEN_W, SCREEN_H, DISPFLAG_DUALLAYER);
    set_audio_dma(512); // a few ms about 7ms enough for a full frame.
    set_music_dma = 1;

    front_a = gfx_getdrawbuffer();
    front_b = gfx_getshowbuffer();

    gfx_usefpalette(clut);
    touch_init();


    gfx_palcycleon();
    gfx_palcyclerange(80,87);
    gfx_palcyclerate(4);
    gfx_createBitmap(&backbitmap, SCREEN_W, SCREEN_H);
    setup_background();

    gfx_showbbuffer(&backbitmap);
    gfx_showfbuffer(front_a);
    gfx_usebuffer(front_b);
    //lcd_bright(100);

    init_scene();

    //music_play("sdcard:/level1.mod", 0);

    for (;;) {
        //poll_touch();
        //process_touch();


        gfx_lcdwait();

        // background scene should be static

        // forground stuff
        gfx_cls();
        draw_scene(0);
        flip_front_buffer();
        gfx_displaynow();
    }

    return 0x00;
}



const char txtTitle[] = {
    "this is a test scrolly, something to test for now, but will make it a little better filly texty stuff\0"
};
