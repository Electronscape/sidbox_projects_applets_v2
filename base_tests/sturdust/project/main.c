
#include "main.h"

#include "resource.h"
#include "player.h"
#include "astroids.h"
#include "graphics.h"
#include "sound.h"

// Display Bitmap Buffers
volatile gfx_bitmap_t *bm1, *bm2;               // front Buffers 1 and 2
MEMALIGN32 volatile gfx_bitmap_t backbitmap;    // background image

MEMALIGN32 volatile gfx_bitmap_t tunnelbg[8];   // CRAP idea, but no choice if we want speed!

volatile uint8_t gdb = 0;   // Buffer index

float backscreenx, backscreeny; // background scroll offsets




uint8_t FireState = 0;
uint8_t lastFireState = 0;

gfxbob_t tunnelsect[8];

int8_t pillrt = 0;
int8_t pilltmr = 0;

#define TUNNEL_DEMO 1


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
    

    SetPlayerLives(3);


    char tfname[64];
    frontclut[0] = 0x00000000;  // ensure front palette index 0 is black and transparent

    LoadGraphics();
    LoadCommonGameGraphics();
    LoadShipGfx();



#if(TUNNEL_DEMO)
    // Tunnel Sequence Test;
    // load the tunnel data
    dbug("\nLoading Tunnel data...\n");



    gfx_lcdwait();  // here if the lcd hasnt finished rendering to the screen
    gfx_usefpalette(frontclut);
    gfx_lcdwait();  // here if the lcd hasnt finished rendering to the screen
    gfx_usebpalette(tunnelClut);
    gfx_lcdwait();  // here if the lcd hasnt finished rendering to the screen


    // tunnel system
    freeSFX(&snd2firem);
    uint32_t samplelen = LoadSFX("res/photon.wav", &snd2firem);
    sound_assign(1, snd2firem, samplelen, 0);
    sound_setfrequency(1, 22000);
    sound_setvolume(1, 355);
    sound_setpanning(1, 0);
    sound_setloop(1, 200, 4433);
    sound_enableloop(1, 0);


    for(uint8_t tl = 0; tl < 8; tl++){
        tunnelsect[tl].imgdat = malloc( 320 * 240 );
        tunnelsect[tl].atlas_height = 240;
        tunnelsect[tl].atlas_stride = 320;
        tunnelsect[tl].height = 240;
        tunnelsect[tl].width  = 320;
        tunnelsect[tl].drawx = 0;
        tunnelsect[tl].drawy = 0;
        sprintf(tfname, "res/t%u.ppb\n", tl+1);
        LoadPPB(tfname, tunnelsect[tl].imgdat);
        dbug(tfname);

        tunnelbg[tl].memspacelen = (640 * 480);
        tunnelbg[tl].width = 640;
        tunnelbg[tl].height = 480;
        tunnelbg[tl].stride = 480u;
        tunnelbg[tl].bitmap = malloc(640 * 480);



        gfx_usebuffer(&tunnelbg[tl]);
        gfx_cls();

        tunnelsect[tl].flags = 0;
        tunnelsect[tl].drawx = 0;
        tunnelsect[tl].drawy = 0;
        gfx_drawbob(&tunnelsect[tl]);

        tunnelsect[tl].flags = BLIT_FLAG_FLIP_X;
        tunnelsect[tl].drawx = 320;
        tunnelsect[tl].drawy = 0;
        gfx_drawbob(&tunnelsect[tl]);


        tunnelsect[tl].flags = BLIT_FLAG_FLIP_Y;
        tunnelsect[tl].drawx = 0;
        tunnelsect[tl].drawy = 240;
        gfx_drawbob(&tunnelsect[tl]);

        tunnelsect[tl].flags = BLIT_FLAG_FLIP_Y | BLIT_FLAG_FLIP_X;
        tunnelsect[tl].drawx = 320;
        tunnelsect[tl].drawy = 240;
        gfx_drawbob(&tunnelsect[tl]);

    }

    MusicPlay(1);

    
    gfx_showbbuffer(&tunnelbg[0]);   // show the background buffer (assigns the buffer to the lcd)
    gfx_showfbuffer(bm1);           // initial buffers
    gfx_usebuffer(bm1);



    uint8_t tunnelFrame = 0;
    int16_t tunnelSX, tunnelSY;
    int16_t shipTX, shipTY, tscrx, tscry;
    float tDX, tDY;

    
    gdb = 0;


    
    #define SCROLL_RANGE_TUNNEL_X   (640 - 480)
    #define SCROLL_RANGE_TUNNEL_Y   (480 - 320)

    int16_t DTSWidth  = 480 - shiptunnel.width;
    int16_t DTSHeight = 320 - (shiptunnel.height - 32);

    shipTX = (480/2) - (shiptunnel.width  / 2);  // starting x
    shipTY = (320/2) - (shiptunnel.height / 2);  // starting y

    initTorpedos3D();
    initAstroids3D();
    initPills3D();

    uint8_t altCannon = 0;
    uint8_t fireTimer = 0;
    uint8_t jitterT = 0;
    
    for(;;){

        jitterT++;
        if(jitterT > 2){
            jitterT = 0;
        }
        if(gdb){// || (jitterT==1)){
            tunnelFrame++;
            if(tunnelFrame > 7) tunnelFrame = 0;
        }

        joyb = getjoyport();
        FireState = (joyb & BTN_FIRE);                
        if(FireState){   // only works when Pressed down
            if(++fireTimer > 7){
                fireTimer = 0;
                altCannon = 1 - altCannon;
                if(altCannon) spawnTorpedo(shiptunnel.drawx - (32 + 20), shiptunnel.drawy-12);
                else          spawnTorpedo(shiptunnel.drawx - (32 - 20), shiptunnel.drawy-12);
            }
        } else 
        FireState = 16;

        if (joyb & BTN_UP)    shipTY -= 8;
        if (joyb & BTN_DOWN)  shipTY += 8;
        if (joyb & BTN_LEFT)  shipTX -= 8;
        if (joyb & BTN_RIGHT) shipTX += 8;

        if (shipTX < 0) shipTX = 0;
        if (shipTX > (480-shiptunnel.width)) shipTX = (480-shiptunnel.width);
        if (shipTY < -24) shipTY = -24;
        if (shipTY > (320-(shiptunnel.height-24))) shipTY = (320-(shiptunnel.height-24));

        tunnelSX = shipTX / 80;
        tunnelSY = shipTY / 48;

        if (tunnelSX < 0) tunnelSX = 0;
        if (tunnelSX > 4) tunnelSX = 4;
        if (tunnelSY < 0) tunnelSY = 0;
        if (tunnelSY > 4) tunnelSY = 4;

        uint8_t shipIndex;

        shipIndex = shipframetunnel[tunnelSY][tunnelSX];

        float shipCX = shipTX + 32.0f;
        float shipCY = shipTY + 32.0f;

        shiptunnel.drawx = shipTX;
        shiptunnel.drawy = shipTY;
        shiptunnel.index = shipIndex;

        tDX = shipTX * ((float)SCROLL_RANGE_TUNNEL_X / (float)DTSWidth);
        tDY = shipTY * ((float)SCROLL_RANGE_TUNNEL_Y / (float)DTSHeight);
        tscrx = tDX;
        tscry = tDY;
       

        { //// Prepare Screen buffers ;)
            gfx_lcdwait();  // here if the lcd hasnt finished rendering to the screen

            gfx_showbbuffer(&tunnelbg[tunnelFrame]);   // show the background buffer (assigns the buffer to the lcd)
            gdb = 1 - gdb;
            if(gdb) gfx_dispfbuffer(bm1, bm2);
            else    gfx_dispfbuffer(bm2, bm1);
            
            gfx_cls();

            proc_astroids3D(tscrx, tscry);
            proc_photo_torps(tscrx, tscry);
            procExplodes3d(tscrx, tscry);
            procPills3D(tscrx, tscry);

            render3Dstuff();

            gfx_drawbob(&shiptunnel);
            gfx_scrollb(tscrx, tscry+16);       



            DrawHUD();
            gfx_displaynow();
        }
    }



#endif


    MusicPlay(0);


/////////////////////////



    
    

   
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

#if(0)
    
    //SpawnAstroid(100, 100, 0);
    for(;;)
    {
        int16_t mx, my;
        getmouse(&mx, &my);

        if(mx < 0) mx = 0;
        if(my < 0) my = 0;
        if(mx > 480) mx = 480;
        if(my > 320) my = 320;

        shipmain.handle = 0;//BLIT_HANDLE_CENTER;
        shipmain.drawx = (int)mx;
        shipmain.drawy = (int)my;

        astroid_bob[0].handle = 0;//BLIT_HANDLE_CENTER;   // these can be changed and the blitbob will handle the rest
        astroid_bob[0].drawx  = 240;   // these can be changed and the blitbob will handle the rest
        astroid_bob[0].drawy  = 160;

        {   // ALL the graphics ready stuff
            gfx_lcdwait();  // here if the lcd hasnt finished rendering to the screen
            
            gdb = 1 - gdb;
            if(gdb) gfx_dispfbuffer(bm1, bm2);
            else    gfx_dispfbuffer(bm2, bm1);
            
            gfx_cls();

            uint8_t col = gfx_bcollide(&shipmain, &astroid_bob[0]);
            
            gfx_drawbob(&astroid_bob[0]);
            
            shipmain.flags = 0;
            if(col==2) shipmain.flags = 1;
            shipmain.flagval[0] = 3;
            gfx_drawbob(&shipmain);
            
            gfx_displaynow();
        }
    }
#endif

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
            //doExplodes();

            if(!(shipInvincible & 0b01)){
                gfx_drawbob(&shipmain);
            }
            if(shipInvincible > 0){
                shipInvincible --;
            }

            DrawHUD();

            shipmain.flags = 0x0;       // back to normal colour
            
            gfx_scrollb(scrollx, scrolly);       
            gfx_displaynow();
        }
    }
    
    return 0x00;
}
