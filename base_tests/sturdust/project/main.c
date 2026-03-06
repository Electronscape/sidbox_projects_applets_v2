
#include "main.h"

#include "resource.h"
#include "player.h"
#include "astroids.h"
#include "graphics.h"
#include "sound.h"

// Display Bitmap Buffers
volatile gfx_bitmap_t *bm1, *bm2;               // front Buffers 1 and 2
MEMALIGN32 volatile gfx_bitmap_t backbitmap;    // background image

volatile uint8_t gdb = 0;   // Buffer index

float backscreenx, backscreeny; // background scroll offsets


uint32_t SCORE_VAL = 0;
uint8_t  LIVES_VAL = 0;
uint8_t  WAVES_VAL = 0;
char vstring[64];

int main(int argc, char *argv[]) {
    //DIVZEROOFF;
    configure_runmode(GAMEMODE_PROFILE_1);
    initMalloc();   // go memory!! yey

    // hardware preps //
    gfx_setlcd(DEFAULT_RENDER_ORDER, FPS_50);
    lcd_bright(0);
    gfx_mode(480, 320, 640, 480, DISPFLAG_DUALLAYER | DISPFLAG_SCROLLABLE);
    set_audio_dma(512); // a few ms about 7ms enough for a full frame.
    set_music_dma = 1;

    // get the default display buffers (OS assigned, from internal memory)
    bm1 = gfx_getdrawbuffer();
    bm2 = gfx_getshowbuffer();
    
    uint8_t lcdbright = 0;      // display fade in/out
    uint8_t joyb;

    int scrollx = 0;
    int scrolly = 0;
   
    lcd_bright(100);

    loadSounds();


    MusicPlay(0);

    LoadGraphics();
    LoadShipGfx();

    LoadCommonGameGraphics();
   
    backbitmap.memspacelen = (640 * 480);
    backbitmap.width = 640;
    backbitmap.height = 480;
    backbitmap.stride = 480u;   // should be the height of the bitmap
    backbitmap.bitmap = malloc(640 * 480);//bitground;
    LoadPPB("res/back.ppb", backbitmap.bitmap);  // 640 x 480

    initAstroids();
    initFlames();
    initExplodes();
    initShip();
    initBullets();

    frontclut[0] = 0x00000000;  // ensure front palette index 0 is black and transparent
    gfx_usefpalette(frontclut);
    gfx_usebpalette(backclut);
    
    gfx_showbbuffer(&backbitmap);   // show the background buffer (assigns the buffer to the lcd)
    gfx_showfbuffer(bm1);           // initial buffers
    gfx_usebuffer(bm1);

    uint8_t FireState = 0;
    uint8_t lastFireState = 0;

    uint8_t FireState2 = 0;
    uint8_t lastFireState2 = 0;

    uint8_t tmExpld = 0;
    uint8_t thrustOn = 0;

    backscreenx = 0.0f;
    backscreeny = 0.0f;

    SCORE_VAL = 0;
    LIVES_VAL = 3;
    WAVES_VAL = 1;

    shipInvincible = 100;

    SpawnAstroid(200, 200, 0);
    //SpawnAstroid(100, 100, 0);


    for(;;) {

        // input systems
        joyb = getjoyport();
        ShipUpdate(joyb);

        FireState = (joyb & BTN_FIRE);
        if(FireState != lastFireState){
            if(FireState)   // only works when Pressed down
                fireBullet();
        }
        lastFireState = FireState;

        FireState2 = (joyb & BTN_FIRE2);
        if(FireState2 != lastFireState2){
            if(FireState2){
                tmExpld = 32;
                SpawnAstroid(200, 200, 0);
            }
        }
        lastFireState2 = FireState2;

        if(tmExpld>0){
            tmExpld--;
            if((tmExpld % 4) == 0){
                int16_t sx, sy;
                sx = sbx_rng_range(-32, 480-32);
                sy = sbx_rng_range(-32, 320-32);
                spawnExplode(sx, sy);       
            }
        }

        if(gdb == 0){
            if(joyb & BTN_UP){
                spawnFlame();
                if(thrustOn==0){
                    thrustOn = 1;
                    sound_play(2);
                }
                int16_t pan1;
                int16_t cx = shipmain.drawx + (shipcellsize >> 1);

                pan1 = (cx - 240) * 127 / 240;
                if(pan1 < -127) pan1 = -127;
                if(pan1 > 127)  pan1 = 127;

                sound_setpanning(2, pan1);

            } else {
                if(thrustOn == 1){
                    thrustOn = 0;
                    sound_stop(2);
                }
            }

            if(joyb & BTN_DOWN) ShieldON();
            else                ShieldOFF();

        }

        shipmain.index = shipRot;
        shipmain.drawx = (int)shipX;
        shipmain.drawy = (int)shipY;

        if(lcdbright<100){
            lcdbright++;
            lcd_bright(lcdbright);
        }

        // background scroll offsets
        backscreenx += shipVX;
        backscreeny += shipVY;
        if(backscreenx > 160.0f) backscreenx = 160.0f;
        if(backscreenx < 0.0f)   backscreenx = 0.0f;
        if(backscreeny > 160.0f) backscreeny = 160.0f;
        if(backscreeny < 0.0f)   backscreeny = 0.0f;
        scrollx = backscreenx;
        scrolly = backscreeny;


        /// --- all the game logic that does NOT involved any graphics math above

        {   // ALL the graphics ready stuff
            gfx_lcdwait();  // here if the lcd hasnt finished rendering to the screen
            
            gdb = 1 - gdb;
            if(gdb) gfx_dispfbuffer(bm1, bm2);
            else    gfx_dispfbuffer(bm2, bm1);
            
            gfx_cls();

            proc_astroids();
            
            doBullets();
            doFlames();
            doExplodes();

            if(!(shipInvincible & 0b01)){
                gfx_drawbob(&shipmain);
            }
            if(shipInvincible > 0){
                shipInvincible --;
            }

            sprintf(vstring, "SCORE: %06lu", SCORE_VAL);
            drawText(vstring, 10, 10);

            sprintf(vstring, "LIVES: %lu", LIVES_VAL);
            drawText(vstring, 340, 10);

            sprintf(vstring, "WAVES: %lu", WAVES_VAL);
            drawText(vstring, 10, 294);
           

            shipmain.flags = 0x0;       // back to normal colour
            
            gfx_scrollb(scrollx, scrolly);       
            gfx_displaynow();
        }
    }
    
    return 0x00;
}
