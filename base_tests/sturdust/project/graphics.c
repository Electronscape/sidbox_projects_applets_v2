
#include "player.h"
#include "graphics.h"
#include "resource.h"
#include "astroids.h"




volatile gfxbob_t MEMALIGN32 flames_bob;
volatile gfxbob_t MEMALIGN32 explode_bob;
volatile gfxbob_t MEMALIGN32 font1616_bob;

volatile flames_t MEMALIGN4  flames[MAX_FLAMES];
volatile flames_t MEMALIGN4  explodes[MAX_EXPLODES];


void drawText(const char *text, int16_t x, int16_t y)
{
    int16_t cx = x;
    int16_t cy = y;

    while (*text)
    {
        unsigned char c = (unsigned char)*text++;

        if (c == '\n') {                 // newline support
            cx = x;
            cy += 16;
            continue;
        }

        // Map ASCII -> atlas index (space is 0)
        int idx = (int)c - 32;

        // Optional: clamp to something sane if char not in font
        if (idx < 0) idx = 0;            // unknown -> space
        // if you know your font has N cells, clamp high too:
        // if (idx >= FONT_CELLS) idx = 0;

        font1616_bob.drawx = cx;
        font1616_bob.drawy = cy;
        font1616_bob.index = idx;

        gfx_drawbob(&font1616_bob);

        cx += 16;                        // advance one character
    }
}


void initFlames(){
    for(uint8_t f = 0; f < MAX_FLAMES; f++){
        memset(&flames[f], 0, sizeof(flames_t));
    }
}

void initExplodes(){
    for(uint8_t f = 0; f < MAX_EXPLODES; f++){
        memset(&explodes[f], 0, sizeof(flames_t));
    }
}


void spawnFlame(){
    int rots[3] = { shipRot-1, shipRot+1, shipRot };

    // wrap the two outer rotations
    if(rots[0] < 0) rots[0] = SHIP_ROTATION_FRAMES-1;
    if(rots[2] >= SHIP_ROTATION_FRAMES) rots[2] = 0;

    for(int r = 0; r < 3; r++){
        for(uint8_t f = 0; f < MAX_FLAMES; f++){
            if(flames[f].timeout == 0){
                //flames
                flames[f].timeout = 17;
                flames[f].fadeout = 0;

                flames[f].fx = shipmain.drawx + (shipcellsize / 2) - 8;
                flames[f].fy = shipmain.drawy + (shipcellsize / 2) - 8;

                flames[f].rotation = rots[r];

                float fx = dirTable[rots[r]][0];
                float fy = dirTable[rots[r]][1];

                flames[f].rotation = sbx_rng_range(0, 15);

                flames[f].velocX = fx * 2.0f;
                flames[f].velocY = fy * 2.0f;

                flames[f].fx -= (fx * 22.0f);
                flames[f].fy += (fy * 22.0f);

                break;
            }
        }
    }
}

void doFlames(){
    for(uint8_t b = 0; b < MAX_FLAMES; b++){
        if(flames[b].timeout>0){
            flames[b].timeout--;
            flames[b].fx -= flames[b].velocX;
            flames[b].fy += flames[b].velocY;

            if(flames[b].fx < -20.0f) flames[b].fx = 480.0f;
            if(flames[b].fx > 480.0f) flames[b].fx = -20.0f;

            if(flames[b].fy < -20.0f) flames[b].fy = 320.0f;
            if(flames[b].fy > 320.0f) flames[b].fy = -20.0f;

            flames[b].x = (int)flames[b].fx;
            flames[b].y = (int)flames[b].fy;

            //flames_bob.index = flames[b].rotation;
            flames_bob.drawx = flames[b].x;
            flames_bob.drawy = flames[b].y;
            flames_bob.flags = 0x02;
            flames_bob.flagval[1] = flames[b].fadeout;

            flames[b].fadeout += 5;
            if(flames[b].fadeout > 100) flames[b].fadeout = 100;

            gfx_drawbob(&flames_bob);
        }
    }
}

void spawnExplode(int16_t x, int16_t y){
    for(uint8_t e = 0; e < MAX_EXPLODES; e++){
        if(explodes[e].timeout == 0){
            //flames
            explodes[e].timeout = 20;   // 1 frame every 2
            explodes[e].rotation = 0;   // will use this as frames
            explodes[e].fadeout = 0;

            explodes[e].x = x;
            explodes[e].y = y;

            explodes[e].rotation = 0;

            break;
        }
    }
}

void doExplodes(){
    for(uint8_t e = 0; e < MAX_EXPLODES; e++){
        if(explodes[e].timeout > 0){
            explode_bob.drawx = explodes[e].x;
            explode_bob.drawy = explodes[e].y;

            // timeout 20..1 -> frame 0..9 (each frame lasts 2 ticks)
            uint8_t tframe = (uint8_t)((20 - explodes[e].timeout) >> 1);
            if(tframe > 9) tframe = 9; // safety clamp

            explode_bob.index = tframe;

            explodes[e].timeout--;
            gfx_drawbob(&explode_bob);
        }
    }
}


void LoadGraphics(){
      // astroid LARGE ROCKY // 
    astroid_bob[0].imgdat = malloc(480 * 480);//ast0;
    astroid_bob[0].atlas_stride = 480;
    astroid_bob[0].atlas_height = 480;
    astroid_bob[0].width  = 96;
    astroid_bob[0].height = 96;
    astroid_bob[0].drawx = 0;   // these can be changed and the blitbob will handle the rest
    astroid_bob[0].drawy = 0;
    LoadPPB("res/astroid_large_1.ppb", astroid_bob[0].imgdat);

    // astroid medium ROCKY //
    astroid_bob[1].imgdat = malloc(512 * 192);//ast1;
    astroid_bob[1].atlas_stride = 512;
    astroid_bob[1].atlas_height = 192;
    astroid_bob[1].width  = 64;
    astroid_bob[1].height = 64;
    astroid_bob[1].drawx = 0;   // these can be changed and the blitbob will handle the rest
    astroid_bob[1].drawy = 0;
    LoadPPB("res/astroid_medium_1.ppb", astroid_bob[1].imgdat);

    // astroid medium metalic
    astroid_bob[2].imgdat = malloc(512 * 192);//ast2;
    astroid_bob[2].atlas_stride = 512;
    astroid_bob[2].atlas_height = 192;
    astroid_bob[2].width  = 64;
    astroid_bob[2].height = 64;
    astroid_bob[2].drawx = 0;   // these can be changed and the blitbob will handle the rest
    astroid_bob[2].drawy = 0;
    LoadPPB("res/astroid_medium_2.ppb", astroid_bob[2].imgdat);

    // astroid small metalic
    astroid_bob[3].imgdat = malloc(256 * 64);//ast2;
    astroid_bob[3].atlas_stride = 256;
    astroid_bob[3].atlas_height = 64;
    astroid_bob[3].width  = 32;
    astroid_bob[3].height = 32;
    astroid_bob[3].drawx = 0;   // these can be changed and the blitbob will handle the rest
    astroid_bob[3].drawy = 0;
    LoadPPB("res/astroid_small_2.ppb", astroid_bob[3].imgdat);
}

void LoadShipGfx(){

    shipmain.imgdat = malloc((shipcellsize * 6) * (shipcellsize * 6));//shipgfx;
    shipmain.atlas_height = (shipcellsize * 6);
    shipmain.atlas_stride = (shipcellsize * 6);
    shipmain.height = shipcellsize;
    shipmain.width = shipcellsize;
    shipmain.index = 0;
    shipmain.drawx = 10;
    shipmain.drawy = 10;
    LoadPPB("res/shiprs.ppb", shipmain.imgdat);


    shipbullet.imgdat = malloc(96 * 96);    // bullets Type1
    shipbullet.atlas_height = 96;
    shipbullet.atlas_stride = 96;
    shipbullet.height = 16;
    shipbullet.width  = 16;
    shipbullet.index  = 0;
    LoadPPB("res/bullets_type1.ppb", shipbullet.imgdat);
    

    flames_bob.imgdat = malloc(160 * 20);
    flames_bob.atlas_height = 20;
    flames_bob.atlas_stride = 160;
    flames_bob.height = 20;
    flames_bob.width = 20;
    flames_bob.index = 0;
    LoadPPB("res/flames.ppb", flames_bob.imgdat);
}

void LoadCommonGameGraphics(){
    explode_bob.imgdat = malloc(320 * 128);
    explode_bob.atlas_height = 128;
    explode_bob.atlas_stride = 320;
    explode_bob.height = 64;
    explode_bob.width  = 64;
    explode_bob.index  = 0;
    LoadPPB("res/explode.ppb", explode_bob.imgdat);


    font1616_bob.imgdat = malloc(128 * 192);
    font1616_bob.atlas_height = 192;
    font1616_bob.atlas_stride = 128;
    font1616_bob.width  = 16;
    font1616_bob.height = 16;
    font1616_bob.index  = 0;
    LoadPPB("res/font1616.ppb", font1616_bob.imgdat);

}