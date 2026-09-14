#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "main.h"
#include "apis.h"


#include "resources.h"

#include "screensavers.h"

#define APP_TITLE       "TOOTH ACHE"


extern const char txtTitle[];

MEMALIGN32 volatile gfx_bitmap_t *front_a;
MEMALIGN32 volatile gfx_bitmap_t *front_b;
//MEMALIGN32 volatile gfx_bitmap_t *backbuff;
volatile static uint8_t db;

MEMALIGN32 volatile gfx_bitmap_t backbitmap;    // background image


static uint32_t argb(uint8_t r, uint8_t g, uint8_t b)
{
    return 0xFF000000u | ((uint32_t)r << 16) | ((uint32_t)g << 8) | b;
}


static int32_t scrollx_title = SCREEN_W;
static int32_t scrollwidth_title = 0;
static int32_t scrolltitlebar_x = 0;



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

#define SCREEN_SAVE_NONE        0
#define SCREEN_SAVE_PROJECTX    1
#define SCREEN_SAVE_BUBBANSTIX  2

#define SCREEN_SAVE_ID  SCREEN_SAVE_PROJECTX   // Project X screen saver
//#define SCREEN_SAVE_ID  SCREEN_SAVE_BUBBANSTIX

extern const unsigned char gfx_bub_treehead[];

static void draw_scene(uint32_t frame){
    if(SCREEN_SAVE_ID != SCREEN_SAVE_BUBBANSTIX)
        draw_star_fields_layer1();  // stars that go behind things ;)

    if(SCREEN_SAVE_ID == SCREEN_SAVE_PROJECTX){
        do_projectx_playdemo_screensaver();
        draw_projectx_scoreboard();
    }
    if(SCREEN_SAVE_ID == SCREEN_SAVE_PROJECTX){
        do_bubbastix_playdemo_screensaver();
    }

    //gfx_blit(bk_bub_tree1, 200, 50, 64, 32);
    //gfx_blit(gfx_bub_treehead, 200, 50, 64, 112);
    //lcd_draw1bit(20, 20, 480, 40, gfx_bub_treehead, 1, backbitmap.bitmap );

    if(SCREEN_SAVE_ID != SCREEN_SAVE_BUBBANSTIX)
        draw_star_fields_layer2();  // the faster moving ones over the graphics

    draw_scroll_bar_bg();
    draw_top_scrolly();
    

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

static void restore_lcd_desktop_mode(void)
{
    gfx_lcdwait();
    gfx_mode(480, 320, 480, 320, DISPFLAG_DUALLAYER | DISPFLAG_NOSCROLLABLE);
    restore_desktop();
    gfx_lcdwait();
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
    //set_audio_dma(512); // a few ms about 7ms enough for a full frame.
    //set_music_dma = 1;

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
    //lcd_bright(23);

    init_scene();

    //music_play("sdcard:/level1.mod", 0);
    uint8_t joy = 0;
    while(joy = getjoyport()){
        //poll_touch();
        //process_touch();

        

        gfx_lcdwait();

        // background scene should be static

        // forground stuff
        gfx_cls();
        draw_scene(0);
        flip_front_buffer();
        gfx_displaynow();
        music_update();

        if ((joy & BTN_FIRE) && (joy & BTN_FIRE2)){
            while((getjoyport() & BTN_FIRE) && (getjoyport() & BTN_FIRE2));
            break;
        }
        
    }

    printf("Yupp Toothache desktop Ended :)\n");
    restore_lcd_desktop_mode();
    HWKERNAL->exitgamemode();

    return 0x00;
}



const char txtTitle[] = {
    "this is a test scrolly, something to test for now, but will make it a little better filly texty stuff\0"
};
