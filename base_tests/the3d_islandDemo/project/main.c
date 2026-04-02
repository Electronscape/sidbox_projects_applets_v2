
#include "main.h"

// basic includes
#include "gfx.h"


#include "sb3d/sb3d.h"
#include "splinerail.h"


#define DAY_SEA_DOT_COL     2
#define NIGHT_SEA_DOT_COL   25

// Display Bitmap Buffers
extern uint8_t c64cat[];
extern uint8_t targetr[];


volatile gfx_bitmap_t MEMALIGN32 *bm1, *bm2;               // front Buffers 1 and 2
volatile gfx_bitmap_t MEMALIGN32 backbitmap;    // background image
volatile uint8_t gdb = 0;   // Buffer index

void initSystem(){
    //DIVZEROOFF;
    configure_runmode(GAMEMODE_PROFILE_0);  // Cache memory setup, profile 2 (bigger area) - without this........ god! things are SLOWWWE

    initMalloc();   // go memory!! yey

    // hardware preps //
    gfx_setlcd(DEFAULT_RENDER_ORDER, FPS_30);
    //gfx_setlcd(DEFAULT_RENDER_ORDER, FPS_40);
    //gfx_setlcd(DEFAULT_RENDER_ORDER, FPS_50);
    lcd_bright(0);
    gfx_mode(480, 320, 480, 320, DISPFLAG_SINGLELAYER | DISPFLAG_NOSCROLLABLE);
    //gfx_mode(480, 320, 480, 320, DISPFLAG_DUALLAYER | DISPFLAG_NOSCROLLABLE);
    set_audio_dma(512); // a few ms about 7ms enough for a full frame.
    set_music_dma = 1;

    //initDepthBandMem();

    // get the default display buffers (OS assigned, from internal memory)
    bm1 = gfx_getdrawbuffer();
    bm2 = gfx_getshowbuffer();

    

    //frontclut[0] = 0x00000000;  // ensure front palette index 0 is black and transparent
}

uint8_t HosSky, HosHorizonLine, HosGround, SeaDots;


uint8_t seatex[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x02, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x02, 0x02, 0x02, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};


uint8_t skytex[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x05, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 
    0x01, 0x01, 0x00, 0x01, 0x01, 0x01, 0x01, 0x02, 0x02, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x02, 
    0x01, 0x01, 0x01, 0x01, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 
    0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x01, 0x01, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x01, 0x01, 0x01, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 
    0x02, 0x02, 0x02, 0x02, 0x02, 0x05, 0x05, 0x02, 0x02, 0x02, 0x02, 0x02, 0x01, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x01, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 
    0x02, 0x02, 0x02, 0x05, 0x05, 0x05, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x01, 0x02, 0x02, 0x02, 0x02, 0x02, 0x05, 0x05, 0x05, 0x05, 0x02, 0x01, 0x01, 0x02, 
    0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x00, 0x00, 0x00, 
    0x00, 0x01, 0x01, 0x02, 0x02, 0x02, 0x02, 0x02, 0x01, 0x01, 0x01, 0x01, 0x00, 0x01, 0x01, 0x02, 
    0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x06, 0x02, 0x02, 0x02, 0x02, 0x00, 0x00, 0x00, 
    0x00, 0x01, 0x01, 0x02, 0x02, 0x02, 0x02, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x02, 
    0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x01, 0x01, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x01, 0x02, 0x02, 0x02, 0x02, 0x01, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x02, 0x02, 
    0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x01, 0x02, 0x02, 0x02, 0x02, 0x01, 0x01, 0x01, 0x01, 0x01, 0x05, 0x05, 0x02, 0x02, 
    0x02, 0x02, 0x02, 0x06, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x01, 0x01, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x05, 0x05, 0x02, 0x02, 0x02, 
    0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x01, 0x01, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 
    0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x01, 0x01, 0x01, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 
    0x02, 0x02, 0x02, 0x02, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 
    0x02, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x01, 0x01, 
    0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x06, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x02, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x01, 0x01, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x01, 0x01, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x01, 0x01, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 
    0x01, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x02, 
    0x02, 0x02, 0x00, 0x02, 0x02, 0x02, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 
    0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};


uint8_t weatherLightning(float dt, int sunlightId)
{
    enum {
        WL_IDLE = 0,
        WL_FLASH_ON,
        WL_FLASH_GAP
    };

    static uint32_t rng = 0xC0FFEE77u;

    static int state = WL_IDLE;

    static float idleTimer = 2.5f;
    static float stateTimer = 0.0f;

    static float flashIntensity = 0.0f;
    static float currentIntensity = 0.0f;

    static int flashesRemaining = 0;

    /* tune these */
    // gentle weather 
    //const float minWait        = 2.5f;   /* seconds between lightning events */
    //const float maxWait        = 11.0f;
    //const float minIntensity   = 0.4f;   /* stronger than normal sunlight */
    //const float maxIntensity   = 3.0f;
    //const int   minBurstCount = 1;
    //const int   maxBurstCount = 4;

    // major storm
    const float minWait      = 0.8f;
    const float maxWait      = 3.5f;
    const float minIntensity   = 0.3f;   /* stronger than normal sunlight */
    const float maxIntensity   = 2.0f;
    const int   minBurstCount = 2;
    const int   maxBurstCount = 6;
    
    
    
    const float minFlashOn     = 0.025f; /* single flash on-time */
    const float maxFlashOn     = 0.040f;

    const float minFlashGap    = 0.020f; /* gap between flickers in same burst */
    const float maxFlashGap    = 0.120f;

    if (dt <= 0.0f) dt = 0.016f;
    if (dt > 0.1f)  dt = 0.1f;

    /* tiny local RNG */
    rng ^= rng << 13;
    rng ^= rng >> 17;
    rng ^= rng << 5;

    uint8_t lightening=0;

    switch (state) {
        default:
        case WL_IDLE:
        {
            idleTimer -= dt;

            lightEnable(sunlightId, 0);
            lightSetIntensity(sunlightId, 0.0f);

            if (idleTimer <= 0.0f) {
                uint32_t r1, r2;

                rng ^= rng << 13;
                rng ^= rng >> 17;
                rng ^= rng << 5;
                r1 = rng;

                rng ^= rng << 13;
                rng ^= rng >> 17;
                rng ^= rng << 5;
                r2 = rng;

                flashesRemaining = minBurstCount + (int)(r1 % (uint32_t)(maxBurstCount - minBurstCount + 1));

                flashIntensity =
                    minIntensity +
                    ((float)(r2 & 1023u) * (1.0f / 1023.0f)) * (maxIntensity - minIntensity);

                currentIntensity = flashIntensity;

                rng ^= rng << 13;
                rng ^= rng >> 17;
                rng ^= rng << 5;

                stateTimer =
                    minFlashOn +
                    ((float)(rng & 1023u) * (1.0f / 1023.0f)) * (maxFlashOn - minFlashOn);

                state = WL_FLASH_ON;
            }
        } break;

        case WL_FLASH_ON:
        {
            float t;

            stateTimer -= dt;

            /* fast chaotic decay while lit */
            currentIntensity -= flashIntensity * (dt * 10.0f);
            if (currentIntensity < 0.0f) currentIntensity = 0.0f;

            if(currentIntensity>0 ) lightening = 1;

            /* optional tiny sparkle jitter while on */
            rng ^= rng << 13;
            rng ^= rng >> 17;
            rng ^= rng << 5;
            t = (float)(rng & 255u) * (1.0f / 255.0f);

            lightEnable(sunlightId, 1);
            lightSetIntensity(sunlightId, currentIntensity + (t * 0.35f));

            if (stateTimer <= 0.0f) {
                flashesRemaining--;

                if (flashesRemaining > 0) {
                    rng ^= rng << 13;
                    rng ^= rng >> 17;
                    rng ^= rng << 5;

                    stateTimer =
                        minFlashGap +
                        ((float)(rng & 1023u) * (1.0f / 1023.0f)) * (maxFlashGap - minFlashGap);

                    state = WL_FLASH_GAP;
                } else {
                    uint32_t r;

                    rng ^= rng << 13;
                    rng ^= rng >> 17;
                    rng ^= rng << 5;
                    r = rng;

                    idleTimer =
                        minWait +
                        ((float)(r & 2047u) * (1.0f / 2047.0f)) * (maxWait - minWait);

                    lightEnable(sunlightId, 0);
                    lightSetIntensity(sunlightId, 0.0f);
                    state = WL_IDLE;
                }
            }
        } break;

        case WL_FLASH_GAP:
        {
            stateTimer -= dt;

            lightEnable(sunlightId, 0);
            lightSetIntensity(sunlightId, 0.0f);

            if (stateTimer <= 0.0f) {
                uint32_t r1, r2;

                rng ^= rng << 13;
                rng ^= rng >> 17;
                rng ^= rng << 5;
                r1 = rng;

                rng ^= rng << 13;
                rng ^= rng >> 17;
                rng ^= rng << 5;
                r2 = rng;

                flashIntensity =
                    minIntensity +
                    ((float)(r1 & 1023u) * (1.0f / 1023.0f)) * (maxIntensity - minIntensity);

                /* later flickers in same burst can be weaker or stronger */
                flashIntensity *= 0.65f + (((float)(r2 & 255u) * (1.0f / 255.0f)) * 0.70f);

                currentIntensity = flashIntensity;

                rng ^= rng << 13;
                rng ^= rng >> 17;
                rng ^= rng << 5;

                stateTimer =
                    minFlashOn +
                    ((float)(rng & 1023u) * (1.0f / 1023.0f)) * (maxFlashOn - minFlashOn);

                state = WL_FLASH_ON;
            }
        } break;
    }
    return (lightening>0);
}




extern uint8_t presents[];
extern uint8_t bigpic[];

void goIntro(){

    uint8_t gdb = 0;
    float fadeTime = 0.0f;

    gfx_showfbuffer(bm1);           // initial buffers
    gfx_usebuffer(bm1);

    // image 400 x 128
    lcd_bright(0);    // need this back on

    for(int pause = 0; pause < 40 * 3; pause++){
        gfx_lcdwait();  // essentially vwait //
    }

    uint32_t imagei = 0;
    for(int iy = 0; iy < 128; iy++ ){
        for(int ix = 0; ix < 400; ix++ ){
            bm1->bitmap[((ix + 40) * SCREEN_H) + (iy + 96)] = presents[imagei++];
        }
    }

    for(;;){
        {
            gfx_lcdwait();  // essentially vwait //
            fadeTime += 0.01f;
            lcd_bright(fadeTime * 100.0);
            gfx_displaynow();
            if(fadeTime > 1.0f) {
                fadeTime  = 1.0f;
                //music_play("boomd.mod", 0);
                //music_play("red_lights.mod", 0);
                    music_play("black_absorber.mod", 0);

                break;
            }
        }
    }

    for(int pause = 0; pause < 40 * 2; pause++){
        gfx_lcdwait();  // essentially vwait //
        gfx_displaynow();
    }
    for(;;){
        gfx_lcdwait();  // essentially vwait //
        fadeTime -= 0.02f;
        lcd_bright(fadeTime * 100.0);
        gfx_displaynow();
        if(fadeTime < 0.0f) {
            fadeTime  = 0.0f;
            break;
        }
    }

    // large pic time
    imagei = 0;
    for(int iy = 0; iy < 320; iy++ ){
        for(int ix = 0; ix < 480; ix++ ){
            bm1->bitmap[((ix) * SCREEN_H) + (iy)] = bigpic[imagei++];
        }
    }

    fadeTime = 0;
    for(;;){
        gfx_lcdwait();  // essentially vwait //
        fadeTime += 0.02f;
        lcd_bright(fadeTime * 100.0);
        gfx_displaynow();
        if(fadeTime > 1.0f) {
            fadeTime  = 1.0f;
            break;
        }
    }

    for(int pause = 0; pause < 40 * 2; pause++){
        gfx_lcdwait();  // essentially vwait //
        gfx_displaynow();
    }

    fadeTime = 1;
    for(;;){
        gfx_lcdwait();  // essentially vwait //
        fadeTime -= 0.02f;
        lcd_bright(fadeTime * 100.0);
        gfx_displaynow();
        if(fadeTime < 0.0f) {
            fadeTime  = 0.0f;
            break;
        }
    }

    for(int clr = 0; clr < (SCREEN_H * SCREEN_W); clr++ ){
        bm1->bitmap[clr] = 0x00;
    }
    gfx_displaynow();

}



static Camera cam;
static int turret0;
static int carrier0;
static int island0;
static int hitCube0;

static int16_t turretShotTimer = 0;
static int16_t turretBurstShotsLeft = 0;


//// Impact Hot spots
#define IMPACT_MAX            8
#define IMPACT_PARTS_PER      4
#define IMPACT_TOTAL_PARTS    (IMPACT_MAX * IMPACT_PARTS_PER)

typedef struct {
    uint8_t active;
    uint8_t _pad[3];
    Vec3    pos;
    float   age;
    float   life;
    float   scale;
} ImpactFlame;

static int impactParticleIds[IMPACT_TOTAL_PARTS];
static ImpactFlame impactFlames[IMPACT_MAX];


void initImpactFlames(void)
{
    for (int i = 0; i < IMPACT_MAX; i++) {
        impactFlames[i].active = 0;
        impactFlames[i].pos = (Vec3){ 0.0f, 0.0f, 0.0f };
        impactFlames[i].age = 0.0f;
        impactFlames[i].life = 0.0f;
        impactFlames[i].scale = 1.0f;
    }

    for (int i = 0; i < IMPACT_TOTAL_PARTS; i++) {
        impactParticleIds[i] = sb3dParticleSpawnQuad(
            (Vec3){ 0.0f, 0.0f, 0.0f },
            1.0f,
            COLOUR_OFFSET + 2,   /* start orange/yellow-ish */
            2.0f,
            1,                   /* emission on */
            1.0f
        );

        if (impactParticleIds[i] >= 0) {
            sb3dParticleSetPosition(impactParticleIds[i], (Vec3){ 999999.0f, 999999.0f, 999999.0f });
            sb3dParticleSetSize(impactParticleIds[i], 0.0f);
            sb3dParticleSetShade(impactParticleIds[i], 4.0f);
            sb3dParticleSetEmission(impactParticleIds[i], 0);
        }
    }
}

void updateImpactFlames(float dt)
{
    for (int imp = 0; imp < IMPACT_MAX; imp++) {
        ImpactFlame *fx = &impactFlames[imp];
        const int base = imp * IMPACT_PARTS_PER;

        if (!fx->active) {
            for (int j = 0; j < IMPACT_PARTS_PER; j++) {
                int pid = impactParticleIds[base + j];
                if (pid >= 0) {
                    sb3dParticleSetPosition(pid, (Vec3){ 999999.0f, 999999.0f, 999999.0f });
                    sb3dParticleSetSize(pid, 0.0f);
                    sb3dParticleSetShade(pid, 4.0f);
                    sb3dParticleSetEmission(pid, 0);
                }
            }
            continue;
        }

        fx->age += dt;

        if (fx->age >= fx->life) {
            fx->active = 0;

            for (int j = 0; j < IMPACT_PARTS_PER; j++) {
                int pid = impactParticleIds[base + j];
                if (pid >= 0) {
                    sb3dParticleSetPosition(pid, (Vec3){ 999999.0f, 999999.0f, 999999.0f });
                    sb3dParticleSetSize(pid, 0.0f);
                    sb3dParticleSetShade(pid, 4.0f);
                    sb3dParticleSetEmission(pid, 0);
                }
            }
            continue;
        }

        {
            float t = fx->age / fx->life;       /* 0..1 */
            float invT = 1.0f - t;
            float scale = fx->scale;

            for (int j = 0; j < IMPACT_PARTS_PER; j++) {
                int pid = impactParticleIds[base + j];
                Vec3 p;
                float ang;
                float ring;
                float rise;
                float flicker;
                float size;
                float shade;
                uint8_t col;

                if (pid < 0) continue;

                /*
                    spread:
                    early = tight hot burst
                    later = opens outward a bit
                */
                ang = ((float)j / (float)IMPACT_PARTS_PER) * 6.28318530718f;
                ang += fx->age * (3.0f + (float)(j & 3));

                ring = (2.0f + (t * 8.0f)) * scale;
                rise = (t * 28.0f) * scale;

                flicker = 0.7f + 0.3f * sinf((fx->age * 40.0f) + ((float)j * 1.7f));

                p.x = fx->pos.x + cosf(ang) * ring * (0.35f + 0.65f * invT);
                p.y = fx->pos.y + rise;
                p.z = fx->pos.z + sinf(ang) * ring * (0.35f + 0.65f * invT);

                size = (8.0f + (12.0f * invT) + ((float)(j & 1) * 2.0f)) * scale * flicker;

                /*
                    shade:
                    low = bright
                    higher = darker
                */
                shade = 0.01f + (t * 0.5f);

                /*
                    colour ramp by age:
                    46 = bright yellow/greenish if that's your palette
                    34 = red
                    tweak these two to your palette reality
                */
                if (t < 0.35f) {
                    col = COLOUR_OFFSET + 37;   /* hottest */
                } else if (t < 0.70f) {
                    col = COLOUR_OFFSET + 34;   /* orange/red */
                } else {
                    col = COLOUR_OFFSET + 49;   /* darker smoke ember */
                }

                sb3dParticleSetPosition(pid, p);
                sb3dParticleSetSize(pid, size);
                sb3dParticleSetShade(pid, shade);
                sb3dParticleSetColor(pid, col);
                sb3dParticleSetEmission(pid, 200);//(t < 0.55f) ? 1 : 0);
            }
        }
    }
}


void spawnImpactFlame(Vec3 pos, float scale)
{
    int best = -1;
    float oldest = -1.0f;

    for (int i = 0; i < IMPACT_MAX; i++) {
        if (!impactFlames[i].active) {
            best = i;
            break;
        }

        if (impactFlames[i].age > oldest) {
            oldest = impactFlames[i].age;
            best = i;
        }
    }

    if (best < 0) return;

    impactFlames[best].active = 1;
    impactFlames[best].pos = pos;
    impactFlames[best].age = 0.0f;
    impactFlames[best].life = 1.05f;   /* short hot flash */
    impactFlames[best].scale = scale;
}







#define MAX_LASERS 8

typedef struct {
    uint8_t  active;
    uint8_t  _pad;
    uint16_t timer;
    uint16_t entityID;
} Laser;

Mesh LaserBlast, PlayerLaser;
Laser Lasers[MAX_LASERS];
Laser CameraLasers[MAX_LASERS];

void InitLasers(void)
{
    memset(Lasers, 0, sizeof(Lasers));
    memset(CameraLasers, 0, sizeof(CameraLasers));

    LaserBlast = createBox(10.0f, 10.0f, 50.0f);
    PlayerLaser = createBox(10.0f, 10.0f, 50.0f);

    /* adjust to your real parameter order */
    meshSetMaterial(&LaserBlast, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f);
    meshColour(&LaserBlast, 34);

    meshSetMaterial(&PlayerLaser, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f);
    meshColour(&PlayerLaser, 39);    // (players are good guys, so green lasers!)

    for (int l = 0; l < MAX_LASERS; l++) {
        Lasers[l].entityID = entityWorldSpawn(&LaserBlast, vec3(0, 0, 0));
        Lasers[l].active = 0;
        Lasers[l].timer = 0;
        entityVisible(Lasers[l].entityID, 0);
    }


    for (int l = 0; l < MAX_LASERS; l++) {
        CameraLasers[l].entityID = entityWorldSpawn(&PlayerLaser, vec3(0, 0, 0));
        CameraLasers[l].active = 0;
        CameraLasers[l].timer = 0;
        entityVisible(CameraLasers[l].entityID, 0);
    }
}

void FireTurret(uint16_t turret, Vec3 target)
{
    Vec3 pos;
    Vec3 rot;
    Vec3 spawnPos;

    pos = entityGetPosition(turret);
    target.y -= 50.0f;
    rot = entityLookAtPosition(turret, target, 0);

    for (int l = 0; l < MAX_LASERS; l++) {
        if (!Lasers[l].active) {
            Lasers[l].active = 1;
            Lasers[l].timer  = 50;   /* frames alive */

            /*
                Spawn slightly forward so beam starts in front of turret.
                Assumes forward is +Z in local space and entityForward()
                returns a normalized forward vector.
            */
            {
                Vec3 fwd = entityGetForward(turret);
                spawnPos.x = pos.x;// + (fwd.x * 1.6f);
                spawnPos.y = pos.y + 50.0f;//(fwd.y * 1.6f);
                spawnPos.z = pos.z;// + (fwd.z * 1.6f);
            }

            entitySetPosition(Lasers[l].entityID, spawnPos);

            /* use same angle order as your existing engine expects */
            //entityRotation(Lasers[l].entityID, rot.y, rot.x, rot.z, 0);
            entityRotation(Lasers[l].entityID,rot.y, 0, 0, 1);
            entityRotation(Lasers[l].entityID, 0, rot.x, 0, 0);

            entityVisible(Lasers[l].entityID, 1);
            return;
        }
    }
}


Vec3 makeCameraGunSpawn(float sideOffset, float forwardOffset, float upOffset)
{
    Vec3 p = cam.pos;

    p.x += cam.right.x   * sideOffset;
    p.y += cam.right.y   * sideOffset;
    p.z += cam.right.z   * sideOffset;

    p.x += cam.forward.x * forwardOffset;
    p.y += cam.forward.y * forwardOffset;
    p.z += cam.forward.z * forwardOffset;

    p.x += cam.up.x      * upOffset;
    p.y += cam.up.y      * upOffset;
    p.z += cam.up.z      * upOffset;

    return p;
}

static uint8_t sndside = 0;
static uint8_t FireOnePlayerLaserFrom(Vec3 spawnPos, Vec3 rot)
{
    for (int l = 0; l < MAX_LASERS; l++) {
        if (!CameraLasers[l].active) {
            CameraLasers[l].active = 1;
            CameraLasers[l].timer  = 50;

            entitySetPosition(CameraLasers[l].entityID, spawnPos);

            entityRotation(CameraLasers[l].entityID, rot.x, 0, 0, 1);
            entityRotation(CameraLasers[l].entityID, 0, -rot.y, 0, 0);

            entityVisible(CameraLasers[l].entityID, 1);
            return 1;
        }
    }
    return 0;
}


void FirePlayerLaser(void)
{
    uint8_t something = 0;
    Vec3 rot = cameraGetRotation(&cam, 0);

    Vec3 leftSpawn  = makeCameraGunSpawn(-58.0f, 30.0f, -4.0f);
    Vec3 rightSpawn = makeCameraGunSpawn( 58.0f, 30.0f, -4.0f);

    
    something += FireOnePlayerLaserFrom(leftSpawn, rot);
    something += FireOnePlayerLaserFrom(rightSpawn, rot);
    if(something){
        sndside = 1 - sndside;
        if(sndside){
            sound_stop(SNDC_LASER_CANON1);
            sound_play(SNDC_LASER_CANON1);
        }
        else{
            sound_stop(SNDC_LASER_CANON2);
            sound_play(SNDC_LASER_CANON2);
        }
    }
}



void UpdateLasers(float deltatime)
{
    for (int l = 0; l < MAX_LASERS; l++) {
        if (Lasers[l].active) {
            if (Lasers[l].timer > 0) {
                Lasers[l].timer--;
                // this is where we move things
                entityMoveForward(Lasers[l].entityID, deltatime * 2000.0f);
            }

            if (Lasers[l].timer == 0) {
                Lasers[l].active = 0;
                entityVisible(Lasers[l].entityID, 0);
            }
        }
    }

    // update Player Lasers!!
    for (int l = 0; l < MAX_LASERS; l++) {
        if (CameraLasers[l].active) {
            if (CameraLasers[l].timer > 0) {
                CameraLasers[l].timer--;
                // this is where we move things
                entityMoveForward(CameraLasers[l].entityID, deltatime * 2000.0f);
                //uint8_t hit = entityIntersectTest(CameraLasers[l].entityID, island0);
                Vec3 hitPoint;
                uint8_t hit = entitySweepRaycastTest(CameraLasers[l].entityID, island0, &hitPoint, NULL);

                if(hit){
                    CameraLasers[l].timer = 0;
                    //entitySetPosition(hitCube0, vec3(hitPoint.x, hitPoint.y, hitPoint.z));
                    spawnImpactFlame(vec3(hitPoint.x, hitPoint.y, hitPoint.z), 0.7f);
                }
            }

            if (CameraLasers[l].timer == 0) {
                CameraLasers[l].active = 0;
                entityVisible(CameraLasers[l].entityID, 0);
            }
        }
    }

}

void drawPlayerLaserCooldownHUD(int x, int y, int cellW, int cellH, int gap, uint8_t borderCol, uint8_t readyCol, uint8_t coolCol)
{
    for (int i = 0; i < MAX_LASERS; i++) {
        const int cy = y + (i * (cellH + gap));

        /* outline */
        gfx_setcolour(borderCol);
        gfx_rectf(x, cy, cellW, cellH);

        /* inner area */
        const int ix = x + 1;
        const int iy = cy + 1;
        const int iw = cellW - 2;
        const int ih = cellH - 2;

        int fillH;

        if (iw <= 0 || ih <= 0) continue;

        if (!CameraLasers[i].active) {
            fillH = ih;   /* ready */
        } else {
            /*
                timer goes from 50 -> 0
                so fill rises smoothly from 0 -> full
            */
            fillH = (ih * (50 - (int)CameraLasers[i].timer)) / 50;

            if (fillH < 0)  fillH = 0;
            if (fillH > ih) fillH = ih;
        }

        /* background / empty part */
        gfx_setcolour(0);
        gfx_rectf(ix, iy, iw, ih);

        /* filled part grows upward */
        if (fillH > 0) {
            gfx_setcolour(CameraLasers[i].active ? coolCol : readyCol);
            gfx_rectf(ix, iy + (ih - fillH), iw, fillH);
        }
    }
}

static int irand_range(int minv, int maxv)
{
    return minv + (rand() % (maxv - minv + 1));
}

void UpdateTurretTest(float deltatime)
{
    (void)deltatime;

    UpdateLasers(deltatime);

    turretShotTimer--;

    if (turretShotTimer > 0) {
        return;
    }

    if (turretBurstShotsLeft <= 0) {
        /* start a new burst */
        turretBurstShotsLeft = irand_range(3, 6);   /* shots in this burst */
        turretShotTimer = irand_range(20, 90);      /* pause before burst starts */
        return;
    }

    /* fire one shot */
    if(irand_range(0, 10)< 3){
        Vec3 carrierpos = entityGetPosition(carrier0);

        FireTurret(turret0, carrierpos);
    }
    else
        FireTurret(turret0, cam.pos);


    turretBurstShotsLeft--;

    if (turretBurstShotsLeft > 0) {
        turretShotTimer = irand_range(4, 8);       /* short gap inside burst */
    } else {
        turretShotTimer = irand_range(15, 20);     /* longer pause after burst */
    }
}

uint32_t sampleLen;
// sound memory buffers
uint8_t MEMALIGN32 *thund1;     // thunder 1 sfx
uint8_t MEMALIGN32 *thund2;     // thunder 2 sfx
uint8_t MEMALIGN32 *pewpew;     // Laser blast sfx
uint8_t MEMALIGN32 *mantaeng;   // the Mantas- engine ambience sfx



int smokeIds[32];

void initSmoke(void)
{
    for (int i = 0; i < 32; i++) {
        smokeIds[i] = sb3dParticleSpawnQuad(
            (Vec3){ 0.0f, 0.0f, 0.0f },
            0.5f,
            COLOUR_OFFSET + 1,
            3.0f,
            0,
            0.5
        );
    }
}



void updateSmoke(float t, Vec3 origin)
{
    float scale = 16.0f;

    for (int i = 0; i < 32; i++) {
        Vec3 p;
        float age;
        float rise;
        float driftX;
        float driftZ;
        float size;
        float shade;

        if (smokeIds[i] < 0) continue;

        age = fmodf((t * 0.35f) + ((float)i / 32.0f), 1.0f);

        /* taller plume */
        rise = (age * 14.0f) * scale;

        /* wider sideways drift */
        driftX =
            sinf((t * 1.2f) + (float)i * 1.37f) *
            ((0.35f + age * 1.25f) * scale);

        driftZ =
            cosf((t * 0.9f) + (float)i * 1.91f) *
            ((0.35f + age * 1.00f) * scale);

        p.x = origin.x + driftX;
        p.y = origin.y + rise;
        p.z = origin.z + driftZ;

        /* bigger puffs */
        size = (1.2f + (age * 3.5f)) * scale;

        shade = 2.0f + (age * 2.0f);

        sb3dParticleSetPosition(smokeIds[i], p);
        sb3dParticleSetSize(smokeIds[i], size);
        sb3dParticleSetShade(smokeIds[i], shade);
        sb3dParticleSetColor(smokeIds[i], COLOUR_OFFSET + 1);
        sb3dParticleSetEmission(smokeIds[i], 0);
    }
}




// spline test
static const SplineRailNode museumRail[] = {
    //        x       y         z // Our world here

    //        x       z         y // from blender
    { {   -38.0f,   60.0f,     1.0f  }, 1.0f, 0.0f }, // waypoint 1
    { {   -38.0f,   72.0f,   700.0f  }, 0.0f, 0.0f }, // waypoint 2
    { {   -30.0f,  180.0f,  1080.0f  }, 0.0f, 0.4f }, // waypoint 3
    { {   760.0f,  189.0f,  2068.0f  }, 0.0f, 0.4f }, // waypoint 4
    { {  1333.0f,  052.0f,  1165.0f  }, 0.0f, 0.4f }, // waypoint 5
    { {  1257.0f,  200.0f,  -642.0f  }, 0.0f, 0.4f }, // waypoint 6
    { {   792.0f,  277.0f, -1650.0f  }, 0.0f, 0.4f }, // waypoint 7
    { {    36.0f,  440.0f, -1750.0f  }, 0.0f, 0.4f }, // waypoint 8

    { {   149.0f,  440.0f,  -256.0f  }, 0.0f, 0.4f }, // waypoint 9
    { {  -807.0f,  196.0f,   419.0f  }, 0.0f, 0.4f }, // waypoint 10
    { { -1086.0f,  176.0f,   178.0f  }, 0.0f, 0.4f }, // waypoint 11
    { {  -917.0f,  120.0f,    95.0f  }, 0.0f, 0.4f }, // waypoint 12
    { {  -343.0f,   83.0f,   -22.0f  }, 0.0f, 0.4f }, // waypoint 13
    { {  -216.0f,   47.0f,    51.0f  }, 0.0f, 0.4f }, // waypoint 14
    { {   639.0f,   47.0f,   -47.0f  }, 0.0f, 0.4f }, // waypoint 15
    { {  1801.0f,  368.0f,   -60.0f  }, 2.0f, 0.4f }, // waypoint 16

    { {  1757.0f,  440.0f,   660.0f  }, 0.0f, 0.4f }, // waypoint 17
    { {   548.0f,  126.0f,  1067.0f  }, 0.0f, 0.4f }, // waypoint 18
    { {  -124.0f,   81.0f,  1407.0f  }, 0.0f, 0.4f }, // waypoint 19
    { {  -35.0f,   57.0f,  1085.0f  }, 0.0f, 0.4f },  // waypoint 20
    { {  -35.0f,   60.0f,   235.0f  }, 0.0f, 0.4f },  // waypoint 21
    { {  -173.0f,  60.0f,   194.0f  }, 0.0f, 0.4f },  // waypoint 22
};


int main(int argc, char *argv[]) {
    initSystem();
    

    float fadeTime = 0.0f;
    char tfname[64];

    //uint8_t *dispChunky = get16k8mem();
    //memset(dispChunky, 0x3, 480 * 32);

    //music_play("music2.mod", 0);
    //music_play("3_double_paula.mod", 0);
    //music_play("boomd.mod", 0);
    //music_play("red_lights.mod", 0);


    //goIntro();
    music_play("black_absorber.mod", 0);
    lcd_bright(100);    // need this back on




    // init world ------------- 3D here to come!!! -------------- ///
    worldClear();   
    setDefaultRenderMode();

    cam = cameraCreate();
    cameraSetRange(&cam, 0.01, 5000.0f);
    cameraSetPosition(&cam, vec3(0, 50, 0));
    //cameraNormalize(&cam);

    Mesh camBoxMesh = createBox(1,1,1);
    int camBox0 = entityWorldSpawn(&camBoxMesh, vec3(0,0,0));
    


    initSmoke();
    initImpactFlames();

/// prepare the palette for use with the 3D engine

    uint32_t baseColors[16] = {
        0xFF5516e3, 0xFFFFFFFF, 0xFFFF0000, 0xFF00FF00,
        0xFF0000FF, 0xFFFFFF00, 0xFFFF00FF, 0xFF00FFFF,
        0xFF808080, 0xFFFF8000, 0xFF8000FF, 0xFF0080FF,
        0xFF80FF00, 0xFFFF0080, 0xFF00FF80, 0xFFC0C0C0
    };
    clut[0] = 0xff000000;
    clut[16] = 0xff000000;
    float shades[5] = {1.0f, 0.75f, 0.55f, 0.35f, 0.20f};
    uint32_t lightTarget = clut[16]; // e.g., warm sunlight tint
    buildLightingCLUT(clut, baseColors, 16, lightTarget, shades);


    gfx_usefpalette(clut);

    


    // setup scene
    uint8_t Camlightid = addPointLight(vec3(0,0,0), 0.01, 1);
    uint8_t SunlightId = addDirectionalLight((Vec3){ -1.0, -0.50f, 0.30}, 1, 1);
    lightSetIntensity(SunlightId, 1.0);

    lightEnable(SunlightId, 0);

    // sound effects, only for the thundies


    sampleLen = LoadSFX("thunder1.wav", &thund1);
    sound_assign(SNDC_THUNDER_1, thund1, sampleLen, 0);
    sound_setfrequency(SNDC_THUNDER_1, 20100);
    sound_setvolume(SNDC_THUNDER_1, 440);
    sound_setpanning(SNDC_THUNDER_1, -64);
    sound_enableloop(SNDC_THUNDER_1, 0);

    sampleLen = LoadSFX("thunder2.wav", &thund2);
    sound_assign(SNDC_THUNDER_2, thund2, sampleLen, 0);
    sound_setfrequency(SNDC_THUNDER_2, 17100);
    sound_setvolume(SNDC_THUNDER_2, 440);
    sound_setpanning(SNDC_THUNDER_2, 64);
    sound_enableloop(SNDC_THUNDER_2, 0);


    //*pewpew;
    //*mantaeng;
    sampleLen = LoadSFX("manta_eng1.wav", &mantaeng);
    sound_assign(SNDC_MANTA, mantaeng, sampleLen, 0);
    sound_setfrequency(SNDC_MANTA, 44100);
    sound_setvolume(SNDC_MANTA, 40);
    sound_setpanning(SNDC_MANTA, 0);
    sound_enableloop(SNDC_MANTA, 1);
    sound_setloop(SNDC_MANTA, 0, sampleLen);
    sound_play(SNDC_MANTA);

    // manta 2 sound effect
    sound_assign(SNDC_MANTA2, mantaeng, sampleLen, 0);
    sound_setfrequency(SNDC_MANTA2, 44100);
    sound_setvolume(SNDC_MANTA2, 40);
    sound_setpanning(SNDC_MANTA2, 0);
    sound_enableloop(SNDC_MANTA2, 1);
    sound_setloop(SNDC_MANTA2, 0, sampleLen);
    sound_play(SNDC_MANTA2);

    
    sampleLen = LoadSFX("pewpew.wav", &pewpew);
    sound_assign(SNDC_LASER_CANON1, pewpew, sampleLen, 0);
    sound_assign(SNDC_LASER_CANON2, pewpew, sampleLen, 0);
    sound_setfrequency(SNDC_LASER_CANON1, 44100);
    sound_setfrequency(SNDC_LASER_CANON2, 44100);
    sound_setvolume(SNDC_LASER_CANON1, 320);
    sound_setvolume(SNDC_LASER_CANON2, 320);
    sound_setpanning(SNDC_LASER_CANON1, -40);
    sound_setpanning(SNDC_LASER_CANON2, 40);
    sound_enableloop(SNDC_LASER_CANON1, 0);
    sound_enableloop(SNDC_LASER_CANON2, 0);
    //sound_play(3);
    




    Mesh turretMesh;
    loadMeshSB3D("turret1.sb3d", &turretMesh, 25.0f);
    turret0 = entityWorldSpawn(&turretMesh, vec3(-272*2, 40*2, 396*2));
    meshSetMaterial(&turretMesh, 0.00f, 0.45f, 0.00f, 2.00f, 96.0f);
    InitLasers();

    Mesh torusMesh;
    torusMesh = createTorus(100, 20, 24, 10);
    meshColour(&torusMesh, 37);

    int torus0 = entityWorldSpawn(&torusMesh, vec3(-500, 300, 0));
    meshSetMaterial(&torusMesh, 0.00f, 0.45f, 0.00f, 1.50f, 96.0f);
    


    Mesh islandMesh;
    loadMeshSB3D("islandx.sb3d", &islandMesh, 200.0f);
    island0 = entityWorldSpawn(&islandMesh, vec3(0, 0, 0));
    entityAllowHit(island0, 1); // enable for raycast hit test
    meshSetMaterial(&islandMesh, 0.00f, 1.0f, 0.00f, 0.20f, 0.0f);

    Mesh hitCubeMesh = createBox(10,10,10);
    Vec3 startPos = {0,0,0};
    hitCube0 = entityWorldSpawn(&hitCubeMesh, startPos);


    //Mesh theHouseMesh;
    //loadMeshSB3D("building1.sb3d", &theHouseMesh, 50.0f);
    //int theHouse0 = entityWorldSpawn(&theHouseMesh, vec3(-100, 50, 300));

    Mesh carrierMesh;
    loadMeshSB3D("carrier.sb3d", &carrierMesh, 50.0f);
    carrier0 = entityWorldSpawn(&carrierMesh, vec3(1950, 0, -100));


    // ship yard part
    Mesh shipMesh; loadMeshSB3D("shipv1.sb3d", &shipMesh, 10.0f);
    Mesh shipTestMesh = copyMesh(&shipMesh);
    int shipTest = entityWorldSpawn(&shipTestMesh, vec3(-135,50, -200) );

    uint8_t fighterLightId = addPointLight(vec3(0,0,0), 1.0f, 1);
    lightSetRanges(fighterLightId, 100.0f, 320.0f, 530.0f);
    Mesh ShipYard[3]; int shipYardID[3];
    for(int i = 0; i < 3; i++){
        ShipYard[i] = copyMesh(&shipMesh);
        shipYardID[i] = entityWorldSpawn(&ShipYard[i], vec3(-245, 42, 100 + (i * 100)));
        entityRotation(shipYardID[i], degrees(90), 0, 0, 1);
    }

    entitySetPosition(shipYardID[1], vec3(-245, 82, 100 + (1 * 100)));



    Mesh textMesh;
    loadMeshSB3D("text.sb3d", &textMesh, 50.0f);
    int text0 = entityWorldSpawn(&textMesh, vec3(2000, 350, 200));
    meshSetMaterial(&textMesh, 0.00f, 0.45f, 0.00f, 2.00f, 96.0f);

    
    

    SplineRail rail;

    splineRailInit(&rail, museumRail, 22, 180.0f, 1);
    splineRailSetTuning(&rail, 1.4f, 1.8f, 2.7f);
    splineRailSetBanking(&rail, 2.0f, 1.5f, 0.85f);


    //Mesh SuzanneMesh;
    //loadMeshSB3D("suzanne.sb3d", &SuzanneMesh, 100.0f);
    //int suzzie0 = entityWorldSpawn(&SuzanneMesh, vec3(00, 200, 2300));
    //meshSetMaterial(&SuzanneMesh, 0.00f, 0.55f, 0.00f, 3.40f, 64.0f);

    //setRenderMode(REND_MODE_WIREFRAME);  // sidbox display doesnt like the floyd effect yet

    
    gfx_showfbuffer(bm1);           // initial buffers
    gfx_usebuffer(bm1);

    gfx_setcolour(1);
    gfx_plot(30,30);
    uint16_t pla;

    int mouseDeltaX, mouseDeltaY;
    int mx, my;

    getmousepos(&mx, &my);
    clrmousedelta();


    uint32_t lastTicks = getTicks();

    char testout[32];

    uint8_t weathermode = 0;    // daylight
    uint8_t railmode = 1;

            // horizon stuff
    // day time
    HosSky         = 9;   
    HosGround      = 59;
    HosHorizonLine = 43;
    SeaDots = DAY_SEA_DOT_COL;

    
        // night time
    HosSky         = 19;   
    HosGround      = 18;
    HosHorizonLine = 21;
    SeaDots = NIGHT_SEA_DOT_COL;

    for (;;) {
        fadeTime += 0.004f;
        if(fadeTime>1.0f) fadeTime = 1.0f;
        lcd_bright(fadeTime * 100.0f);

        uint32_t nowTicks = getTicks();
        uint32_t tickDelta = nowTicks - lastTicks;
        lastTicks = nowTicks;

        float dt = (float)tickDelta * TICK_TO_SECONDS;
        if (dt < 0.0f) dt = 0.0f;
        if (dt > 0.550f) dt = 0.550f;

        const float moveSpeedPerSec = 220.0f;
        const float mousePitchScale = 1.0f / 120.0f;
        const float mouseRollScale  = 1.0f / 200.0f;
        const float autoYawSpeed    = 2.5f;
        const float speed = 10.0f  * dt;   // carrier movement

        float moveStep = moveSpeedPerSec * dt;

        int32_t dx, dy;
        uint8_t joybutts = getjoyport();

        getmousedelta(&dx, &dy);

        float rx = 0.0f;
        float rz = 0.0f;
        float ryGlobal = 0.0f;
        float targetOffsetX = 0.0f;

        /* mouse delta is already frame-relative input */
        rx += (float)(-dy) * mousePitchScale;
        rz += (float)(-dx) * mouseRollScale;

        cameraTurn(&cam, rx, 0.0f, rz, 0);

        /* auto-turn is simulation, so this DOES use dt */
        targetOffsetX = cam.right.y * autoYawSpeed;
        ryGlobal += targetOffsetX * dt;

        if (ryGlobal != 0.0f) {
            cameraTurn(&cam, 0.0f, -ryGlobal, 0.0f, 1);
        }


        entityTurn(carrier0, -0.003f * speed, 0, 0, 0);
        entityMoveForward(carrier0, 6.8f * speed);//vec3(0,0,0.7f));

        entityTurn(text0, 1.2f * dt,0,0,0);
        //entityTurnLocal(suzzie0, 1.0f * dt, 0, 0);
        




        // ship yard test -- the ship that is launching, over and over again ;)
        entityMoveForward(shipTest, 266.3f * dt);//vec3(0,0,0.7f));
        Vec3 theShipPos = entityGetPosition(shipTest);
        if(theShipPos.z > 2500){
            entitySetPosition(shipTest, vec3(-135, 50, -400));
        }
        lightSetPosition(fighterLightId, theShipPos);
        entitySetPosition(camBox0, cam.pos);
        entityMatchOrientationCamera(camBox0, &cam);


        SB3DAudioData ao = sb3dEntityAudioInfoDefault(camBox0, shipTest, dt);
        sound_setpanning(SNDC_MANTA2, (int8_t)(ao.pan * 127.0f));
        sound_setfrequency(SNDC_MANTA2, 44100 + (int16_t)(ao.doppler * 5500.0f));
        sound_setvolume(SNDC_MANTA2, (uint8_t)(ao.volume * 140.0f));
        




        lightSetPosition(Camlightid, cam.pos);
        lightSetIntensity(Camlightid, 2.0f);
        lightSetRanges(Camlightid, 100.0f, 320.0f, 530.0f);

        uint8_t flash = 0;
        if(weathermode==0){
            lightEnable(Camlightid, 1);
            flash = weatherLightning(dt, SunlightId);
        } else {
            lightEnable(Camlightid, 0);
        }


        clrmousedelta();

        static joyfireLatch = 0;
        if ((joybutts & BTN_FIRE) & (!joyfireLatch)){   // PEW PEW...
            joyfireLatch = 1;
            FirePlayerLaser();
        }
        if(!(joybutts & BTN_FIRE)){
            joyfireLatch = 0;
        }


        if (joybutts & BTN_FIRE2)  {
            cameraMove(&cam, 0, 0,  moveStep);
            railmode = 0;
        }
        //if (joybutts & BTN_FIRE2) cameraMove(&cam, 0, 0, -moveStep);


        UpdateTurretTest(dt);
        updateImpactFlames(dt);

        #if(0)
        // HIT TESTING 
        //*
        static SB3DRaycastHit hit;
        entitySetPosition(hitCube0, vec3(999999.0f, 999999.0f, 999999.0f));
        if (sb3dRaycastFromCamera(&cam, 2200.0f, &hit)) {
            entitySetPosition(hitCube0, vec3(hit.point.x, hit.point.y, hit.point.z));
            //entitySetBasis(hitSphere0, hit.right, hit.up, hit.forward);
            entityAlignToHit(hitCube0, &hit); // same as entitySetBasis, just more convenient
        }

        // point at test
        Vec3 pv1 = entityLookAt(shipYardID[1], hitCube0, 0);
        entityRotation(shipYardID[1], pv1.y, 0, 0, 1);
        entityRotation(shipYardID[1], 0, pv1.x, 0, 0);

        #endif

        static float worldTime;
        worldTime += 0.01;
        updateSmoke(worldTime, vec3(-565,430,-800));


        entityTurn(torus0, 0, 0, 2 * dt, 0);
        entityTurn(torus0, 0, 1 * dt, 0, 0);

        {
            gfx_lcdwait();

            static uint8_t do3D = 0;
            gdb = 1 - gdb;
            if (gdb) {
                gfx_dispfbuffer(bm1, bm2);
                set3DRenderBuffer(bm2->bitmap);
            } else {
                gfx_dispfbuffer(bm2, bm1);
                set3DRenderBuffer(bm1->bitmap);
            }

            static uint8_t  thundOn[2] = {0, 0};
            static uint32_t thundTime[2] = {0, 0};

            static uint8_t nextSndCharge = 5;
            static uint8_t altThund = 0;

            for (uint8_t v = 0; v < 2; v++) {
                uint8_t sndT = SNDC_THUNDER_1 + v; 
                if (thundOn[v]) {
                    if (thundTime[v] > 0) {
                        thundTime[v]--;

                        if (thundTime[v] == 0) {
                            sound_stop(sndT);
                            sound_play(sndT);
                            thundOn[v] = 0;
                        }
                    } else {
                        sound_stop(sndT);
                        sound_play(sndT);
                        thundOn[v] = 0;
                    }
                }
            }

            // raycast hit test


            if(railmode)
                splineRailUpdate(&rail, &cam, dt);

            if(weathermode==0){
                if (flash) {
                    drawFakeHorizon(&cam, HosSky, 21, 5, 0);

                    
                    if(nextSndCharge == 0){
                        nextSndCharge = 5; // prevents both sounds playing at the same time (tho meant to be staggered)
                        altThund = 1 - altThund;
                        if (thundOn[altThund] == 0) {
                            thundOn[altThund] = 1;
                            thundTime[altThund] = 30 * 4;
                        }
                    } else {
                        nextSndCharge--;
                    }
                } else {
                    drawFakeHorizon(&cam, HosSky, HosGround, HosHorizonLine, 0);
                }
            } else {
                lightEnable(SunlightId, 1);
                lightSetIntensity(SunlightId, 1.0f);
                drawFakeHorizon(&cam, 43, 36, 1, 0);
                
            }

            #if(0)
            static uint32_t skyU = 0;
            skyU +=1;
            drawFakeHorizonTex(&cam, skytex, seatex, HosSky, HosGround, HosHorizonLine, 0, 1600, 10000  ,0.02f, 0.04f, skyU, 0, 0, 0, 1, 1, 60, 255);
            //drawFakeHorizonGroundTex(&cam, seatex, HosSky,HosGround,HosHorizonLine, 0, 0.02f, 0, 0, 1, 1, 60);
            //drawFakeHorizonSkyTex(&cam, skytex, HosSky, HosGround, HosHorizonLine, 0, 1600, 10000, 0.02f, skyU, 0, 1, 1, 40);
            #endif


            if(!weathermode) drawFakeSkyDots(&cam, 5, 128, 32, 8);
            drawFakeHorizonDots(&cam, SeaDots, 128, 0, 110);
            
            static float fpsTimer = 0.0f;
            static uint32_t fpsFrames = 0;
            static uint32_t fpsWhole = 0;
            static uint32_t fpsFrac  = 0;

            static uint32_t ticka, tickb, tickr;
            static char strout[64] = "FPS: 0.00  MS: 0.000  WP: 0 !!";

            ticka = getTicks();
            Render3D(&cam);
            tickb = getTicks();
            tickr = tickb - ticka;

            /* FPS update */
            fpsTimer += dt;
            fpsFrames++;

            if (fpsTimer >= 0.25f) {
                uint32_t fps100 = 0;

                if (fpsTimer > 0.00001f) {
                    fps100 = (uint32_t)((fpsFrames * 100.0f) / fpsTimer);
                }

                fpsWhole = fps100 / 100;
                fpsFrac  = fps100 % 100;

                fpsFrames = 0;
                fpsTimer = 0.0f;
            }

            /* Render time in ms */
            uint8_t wpt = splineRailGetCurrentNode(&rail);
            if (joybutts & BTN_FIRE2) {
                wpt = 20;
            }
            //if ((joybutts & BTN_FIRE2)) wpt = 19;
            static uint8_t lwpt = 0;
            {
                uint32_t ms_whole = tickr / 480000UL;
                uint32_t ms_frac  = ((tickr % 480000UL) * 1000UL) / 480000UL;

                sprintf(strout, "FPS:%lu.%02lu  MS:%3lu.%03lu  WP:%2u  TRIS:%lu",
                        fpsWhole, fpsFrac,
                        ms_whole, ms_frac, wpt, getRenderTriCount());

                if(wpt != lwpt){
                    if(wpt == 20){
                        weathermode = 1 - weathermode;
                        if(weathermode == 1){
                            // day time
                            HosSky         = 9;   
                            HosGround      = 59;
                            HosHorizonLine = 43;
                            SeaDots = DAY_SEA_DOT_COL;
                        }
                        else{ 
                                // night time
                            HosSky         = 19;   
                            HosGround      = 18;
                            HosHorizonLine = 21;
                            SeaDots = NIGHT_SEA_DOT_COL;
                        }
                    }
                }
                lwpt = wpt;

                
            }

            //gfx_blitchunk(dispChunky, 0);
            //test_render_chunk(dispChunky, 0);


            gfx_setcolour(1 + (weathermode * 16));
            gfx_drawtext(8, 8, strout);


            //Vec3 camrot = cameraGetRotation(&cam, 0);
            //targetOffsetX = camrot.z;
            //int32_t rollMilli = (int32_t)(targetOffsetX * 100.0f);
            static float targetRollVisual = 0.0f;
            static float rollPressure;

            rollPressure = fabs(targetOffsetX * 1150.0f);
            

            sound_setfrequency(SNDC_MANTA, 44100 + rollPressure);

            float targetRollWanted = targetOffsetX * 50.0f;
            float follow = 12.0f * dt;
            if (follow > 1.0f) follow = 1.0f;
            targetRollVisual += (targetRollWanted - targetRollVisual) * follow;
            int32_t rollz = (int32_t)(targetRollVisual + (targetRollVisual >= 0.0f ? 0.5f : -0.5f));
            gfx_blit(c64cat, 10, 256, 64, 64);
            if (gdb)
                gfx_blit(targetr, (-rollz) + 208, 128, 64, 64);
            drawPlayerLaserCooldownHUD(8, 50, 8, 20, 2, 27, 27, 14);

            
            //sprintf(strout, "R: %ld", -(long)rollMilli);
            //gfx_drawtext(8, 28, strout);
            

            gfx_displaynow();
        }
    }
    
    return 0x00;
}

