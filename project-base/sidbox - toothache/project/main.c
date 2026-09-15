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
    gfx_drawtextfc(scrollx_title, scrolly_y, txtTitle,2,2, 80, 87, 12);

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

//#define SCREEN_SAVE_ID  SCREEN_SAVE_PROJECTX   // Project X screen saver
#define SCREEN_SAVE_ID  SCREEN_SAVE_BUBBANSTIX

extern const unsigned char gfx_bub_treehead[];

static void draw_scene(uint32_t frame){
    if(SCREEN_SAVE_ID != SCREEN_SAVE_BUBBANSTIX)
        draw_star_fields_layer1();  // stars that go behind things ;)

    if(SCREEN_SAVE_ID == SCREEN_SAVE_PROJECTX){
        do_projectx_playdemo_screensaver();
        draw_projectx_scoreboard();
    }
    if(SCREEN_SAVE_ID == SCREEN_SAVE_BUBBANSTIX){
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

const uint32_t thePallete[] = {
    0x00000000, 0xFFAFAFAF, 0xFFFFFFFF, 0xFF3B67A2, 0xFFAA907C, 0xFF959595, 0xFF7B7B7B, 0xFFFFA997,
    0xFF37A91D, 0xFF7CA9FF, 0xFFBF8112, 0xFFEBBF66, 0xFF78C178, 0xFF3D9318, 0xFFB33418, 0xFFD9311C,
    0xFF000000, 0xFF00000E, 0xFF00001D, 0xFF00002B, 0xFF000139, 0xFF000147, 0xFF000156, 0xFF000164,
    0xFF0001D2, 0xFF0001FF, 0xFFCECECE, 0xFF00FF00, 0xFFB2FF00, 0xFFFFE700, 0xFFFF9600, 0xFFFF1100,
    0xFFBF13D5, 0xFFA411C7, 0xFF890EB9, 0xFF6E0BAA, 0xFF52099C, 0xFF37068D, 0xFF1C037F, 0xFF000070,
    0xFF6D1B00, 0xFF6D1C55, 0xFF00E300, 0xFF85FF54, 0xFFC4FF00, 0xFFFFD900, 0xFFFFA41F, 0xFFE05400,
    0xFFFF0000, 0xFF922655, 0xFF9227AA, 0xFF9228FF, 0xFFA42900, 0xFFA42A55, 0xFFA42BAA, 0xFFA42CFF,
    0xFFB62D00, 0xFFB62F55, 0xFFB630AA, 0xFFB631FF, 0xFFC93200, 0xFFC93355, 0xFFC934AA, 0xFFC935FF,
    0xFFDB3700, 0xFFDB3855, 0xFFDB39AA, 0xFFDB3AFF, 0xFFED3B00, 0xFFED3C55, 0xFFED3DAA, 0xFFED3FFF,
    0xFFFF4000, 0xFFFF4155, 0xFFFF42AA, 0xFFFF43FF, 0xFF004400, 0xFF004555, 0xFF0046AA, 0xFF0048FF,
    0xFFFFFF00, 0xFF12FF55, 0xFF12EE55, 0xFF12B6FF, 0xFF001FFF, 0xFF9D0EC7, 0xFFF10000, 0xFFFF7700,
    0xFF375200, 0xFF375355, 0xFF3754AA, 0xFF3755FF, 0xFF495600, 0xFF495855, 0xFF4959AA, 0xFF495AFF,
    0xFF5B5B00, 0xFF5B5C55, 0xFF5B5DAA, 0xFF5B5EFF, 0xFF6D6000, 0xFF6D6155, 0xFF6D62AA, 0xFF6D63FF,
    0xFF6D6400, 0xFF806555, 0xFF8066AA, 0xFF8067FF, 0xFF926900, 0xFF926A55, 0xFF926BAA, 0xFF926CFF,
    0xFFA46D00, 0xFFA46E55, 0xFFA46FAA, 0xFFA471FF, 0xFFB67200, 0xFFB67355, 0xFFB674AA, 0xFFB675FF,
    0xFFC97600, 0xFFC97755, 0xFFC979AA, 0xFFC97AFF, 0xFFDB7B00, 0xFFDB7C55, 0xFFDB7DAA, 0xFFDB7EFF,
    0xFFED7F00, 0xFFED8055, 0xFFED82AA, 0xFFED83FF, 0xFFFF8400, 0xFFFF8555, 0xFFFF86AA, 0xFFFF87FF,
    0xFF008800, 0xFF008A55, 0xFF008BAA, 0xFF008CFF, 0xFF128D00, 0xFF128E55, 0xFF128FAA, 0xFF1290FF,
    0xFF249200, 0xFF249355, 0xFF2494AA, 0xFF2495FF, 0xFF379600, 0xFF379755, 0xFF3798AA, 0xFF3799FF,
    0xFF499B00, 0xFF499C55, 0xFF499DAA, 0xFF499EFF, 0xFF5B9F00, 0xFF5BA055, 0xFF5BA1AA, 0xFF5BA3FF,
    0xFFA4B5D5, 0xFFA0B0F8, 0xFF94A3E6, 0xFF7C89C1, 0xFF6281C0, 0xFF1C62A1, 0xFF4254EA, 0xFF62A1BD,
    0xFF7093C0, 0xFF4977A1, 0xFF003FAA, 0xFF1554FF, 0xFF1C50B9, 0xFF00B3FF, 0xFF0088AA, 0xFF00B5FF,
    0xFF0E62FF, 0xFF5EB7E3, 0xFFBDC0B9, 0xFF85B9FF, 0xFF006CAF, 0xFF1F81B9, 0xFF3F5BAA, 0xFFC9BEFF,
    0xFF5BAFCB, 0xFFDBC055, 0xFFDBC1AA, 0xFFBDC0C0, 0xFFEDC400, 0xFFEDC555, 0xFFEDC6AA, 0xFFEDC7FF,
    0xFFFFC800, 0xFFFFC955, 0xFFFFCAAA, 0xFFFFCCFF, 0xFF00CD00, 0xFF00CE55, 0xFF00CFAA, 0xFF00D0FF,
    0xFF12D100, 0xFF12D255, 0xFF12D3AA, 0xFF12D5FF, 0xFF24D600, 0xFF24D755, 0xFF24D8AA, 0xFF24D9FF,
    0xFF37DA00, 0xFF37DB55, 0xFF37DDAA, 0xFF37DEFF, 0xFF49DF00, 0xFF49E055, 0xFF49E1AA, 0xFF49E2FF,
    0xFF5BE300, 0xFF5BE555, 0xFF5BE6AA, 0xFF5BE7FF, 0xFF6DE800, 0xFF6DE955, 0xFF6DEAAA, 0xFF6DEBFF,
    0xFF6DEC00, 0xFF80EE55, 0xFF80EFAA, 0xFF80F0FF, 0xFF93CEA2, 0xFF92F255, 0xFF92F3AA, 0xFF92F4FF,
    0xFFA4F600, 0xFFA4F755, 0xFFA4F8AA, 0xFFA4F9FF, 0xFFB6FA00, 0xFFB6FB55, 0xFFB6FCAA, 0xFFB6FEFF,
    0xFFC9FF00, 0xFFC9FF55, 0xFFC9FFAA, 0xFFC9FFFF, 0xFFDBFF00, 0xFFDBFF55, 0xFFDBFFAA, 0xFFDBFFFF,
    0xFFEDFF00, 0xFFEDFF55, 0xFFEDFFAA, 0xFFEDFFFF, 0xFFFFFF00, 0xFFFFFF55, 0xFFFFFFAA, 0xFFFFFFFF
};

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

    
    gfx_usebpalette(thePallete);
    
    gfx_usefpalette(clut);
    touch_init();


    gfx_palcycleon();
    gfx_palcyclerange(80,87);
    gfx_palcyclerate(4);
    gfx_createBitmap(&backbitmap, SCREEN_W, SCREEN_H);

    if(SCREEN_SAVE_ID == SCREEN_SAVE_PROJECTX)
        setup_background();
    if(SCREEN_SAVE_ID == SCREEN_SAVE_BUBBANSTIX)
        setup_background_bub();
   
    

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
