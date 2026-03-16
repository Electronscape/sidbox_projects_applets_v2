
#include "player.h"
#include "graphics.h"
#include "resource.h"
#include "astroids.h"




volatile gfxbob_t MEMALIGN32 flames_bob;
volatile gfxbob_t MEMALIGN32 explode_bob;
volatile gfxbob_t MEMALIGN32 font1616_bob;
volatile gfxbob_t MEMALIGN32 photons_bob;       // photon blast
volatile gfxbob_t MEMALIGN32 pills_bob;         // pills
volatile gfxbob_t MEMALIGN32 powerhealth_bob;   // the power and health bar

volatile flames_t MEMALIGN4  flames[MAX_FLAMES];
volatile flames_t MEMALIGN4  explodes[MAX_EXPLODES];    // works in 3D too



render3d_t render3dList[MAX_RENDER3D];
uint8_t render3dCount = 0;


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


void spawnExplode3d(stroids3d *src)
{
    if(!src) return;

    for(uint8_t e = 0; e < MAX_EXPLODES; e++){
        if(explodes[e].timeout == 0){
            memset((void*)&explodes[e], 0, sizeof(flames_t));

            explodes[e].timeout  = 20;   // total lifetime
            explodes[e].rotation = 0;    // explosion frame index
            explodes[e].fadeout  = 0;

            // copy 3D tunnel-space position directly
            explodes[e].fx = src->x;
            explodes[e].fy = src->y;
            explodes[e].fz = src->z;

            explodes[e].x = 0;
            explodes[e].y = 0;
            explodes[e].z = 0;
            explodes[e].scale = 100;

            break;
        }
    }
}

void procExplodes3d(int16_t scroffx, int16_t scroffy)
{
    const float focal     = 260.0f;
    const float scale_mul = 420.0f;
    const float z_far_kill = 2020.0f;

    uint8_t drawList[MAX_EXPLODES];
    uint8_t drawCount = 0;

    // -----------------------------
    // update + project
    // -----------------------------
    for(uint8_t i = 0; i < MAX_EXPLODES; i++){
        if(explodes[i].timeout == 0) continue;

        // countdown
        explodes[i].timeout--;

        // kill if z is nonsense
        if(explodes[i].fz <= 1.0f || explodes[i].fz >= z_far_kill){
            explodes[i].timeout = 0;
            continue;
        }

        // animate explosion frame
        // total 20 ticks, frame changes every 2 ticks => 10 frame steps
        explodes[i].rotation = (int8_t)((20 - explodes[i].timeout) / 2);
        if(explodes[i].rotation > 9) explodes[i].rotation = 9;

        // project

        explodes[i].fz -= 30.0f;
        float iz = 1.0f / explodes[i].fz;

        float fx = 320.0f + (explodes[i].fx * focal * iz);
        float fy = 240.0f + (explodes[i].fy * focal * iz);

        uint16_t scale = (uint16_t)(scale_mul * iz * 200.0f);
        if(scale < 16)  scale = 16;
        if(scale > 400) scale = 400;

        explodes[i].x = (int16_t)fx - scroffx;
        explodes[i].y = (int16_t)fy - scroffy;
        explodes[i].scale = (int16_t)scale;

        // fade out near the end
        if(explodes[i].timeout < 8){
            uint8_t fadepower = (uint8_t)((8 - explodes[i].timeout) * 12);
            if(fadepower > 95) fadepower = 95;

            explodes[i].flags = BLIT_FLAG_ALPHABLEND;
            explodes[i].flagval[BLIT_FLAG_TYPE_FADE_VALUE] = fadepower;
        } else {
            explodes[i].flags = 0;
            explodes[i].flagval[BLIT_FLAG_TYPE_FADE_VALUE] = 0;
        }

        // cull if off screen
        {
            int16_t draww = (int16_t)((64u * scale) / 100u);
            int16_t drawh = (int16_t)((64u * scale) / 100u);

            if(explodes[i].x < -draww || explodes[i].x > (640 + draww) ||
               explodes[i].y < -drawh || explodes[i].y > (480 + drawh))
            {
                explodes[i].timeout = 0;
                continue;
            }
        }

        drawList[drawCount++] = i;
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



    
    shiptunnel.imgdat = malloc( (tunnelShipCellSize * 5) * (tunnelShipCellSize * 5) );
    shiptunnel.atlas_height = (tunnelShipCellSize * 5);
    shiptunnel.atlas_stride = (tunnelShipCellSize * 5);
    shiptunnel.height = tunnelShipCellSize;
    shiptunnel.width  = tunnelShipCellSize;
    shiptunnel.index  = 12;
    shiptunnel.drawx  = 10;
    shiptunnel.drawy  = 10;
    LoadPPB("res/tunnelship.ppb", shiptunnel.imgdat);
    


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


    shipshield.imgdat = malloc(320 * 160);
    shipshield.atlas_height = 160;
    shipshield.atlas_stride = 320;
    shipshield.width  = 80;
    shipshield.height = 80;
    shipshield.index  = 0;
    LoadPPB("res/shield.ppb", shipshield.imgdat);

    photons_bob.imgdat = malloc(384 * 192);
    photons_bob.atlas_height = 192;
    photons_bob.atlas_stride = 384;
    photons_bob.handle = BLIT_HANDLE_CENTER;
    photons_bob.width  = 64;
    photons_bob.height = 64;
    photons_bob.index  = 0;
    LoadPPB("res/photont.ppb", photons_bob.imgdat);
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

    pills_bob.imgdat = malloc(192 * 192);
    pills_bob.atlas_stride = 192;
    pills_bob.atlas_height = 192;
    pills_bob.height = 32;
    pills_bob.width  = 32;
    LoadPPB("res/pill_health.ppb", pills_bob.imgdat);

    powerhealth_bob.imgdat = malloc(48 * 16);
    powerhealth_bob.atlas_height = 16;
    powerhealth_bob.atlas_stride = 48;
    powerhealth_bob.height = 16;
    powerhealth_bob.width  = 8;
    LoadPPB("res/powerhealth.ppb", powerhealth_bob.imgdat);
}


void render3Dstuff(void)
{
    render3dCount = 0;

    // collect asteroids
    for(uint8_t i = 0; i < MAX_ASTROIDS_3D; i++){
        if(astroids3d[i].health == 0) continue;

        render3dList[render3dCount].z     = astroids3d[i].z;
        render3dList[render3dCount].kind  = RENDER3D_ASTEROID;
        render3dList[render3dCount].index = i;
        render3dCount++;
    }

    // collect torpedos
    for(uint8_t i = 0; i < MAX_TORPEDOS; i++){
        if(bullet3d[i].health == 0) continue;

        render3dList[render3dCount].z     = bullet3d[i].z;
        render3dList[render3dCount].kind  = RENDER3D_TORPEDO;
        render3dList[render3dCount].index = i;
        render3dCount++;
    }

    // collect explodes
    for(uint8_t i = 0; i < MAX_EXPLODES; i++){
        if(explodes[i].timeout == 0) continue;
        
        render3dList[render3dCount].z     = explodes[i].fz;
        render3dList[render3dCount].kind  = RENDER3D_EXPLODES;
        render3dList[render3dCount].index = i;
        render3dCount++;
    }

    for(uint8_t i = 0; i < MAX_PILLS; i++){
        if(pills[i].health == 0) continue;  // we will use HEALTH as a PILL TYPE

        render3dList[render3dCount].z     = pills[i].z;
        render3dList[render3dCount].kind  = RENDER3D_PILLS;
        render3dList[render3dCount].index = i;
        render3dCount++;
    }

    // sort far -> near
    for(uint8_t a = 0; a < render3dCount; a++){
        for(uint8_t b = a + 1; b < render3dCount; b++){
            if(render3dList[a].z < render3dList[b].z){
                render3d_t t   = render3dList[a];
                render3dList[a] = render3dList[b];
                render3dList[b] = t;
            }
        }
    }

    // draw far -> near
    for(uint8_t n = 0; n < render3dCount; n++){
        uint8_t i = render3dList[n].index;

        if(render3dList[n].kind == RENDER3D_ASTEROID){
            uint8_t t = astroids3d[i].type;

            astroid_bob[t].index  = astroids3d[i].frame;
            astroid_bob[t].drawx  = astroids3d[i].drawx;
            astroid_bob[t].drawy  = astroids3d[i].drawy;
            astroid_bob[t].scale  = astroids3d[i].scale;
            astroid_bob[t].handle = BLIT_HANDLE_CENTER;

            astroid_bob[t].flags      = astroids3d[i].flags;
            astroid_bob[t].flagval[0] = astroids3d[i].flagval[0];
            astroid_bob[t].flagval[1] = astroids3d[i].flagval[1];

            // ship collision time
            if(astroids3d[i].z < 210.0f){
                uint8_t bcol = gfx_bcollide(&astroid_bob[t], &shiptunnel);
                if(bcol == 2){
                    sound_stop(6);
                    int16_t cx = shiptunnel.drawx + (shipcellsize >> 1); // use ship center
                    int16_t pan1 = (cx - 240) * 127 / 240;  // convert 0..480 -> -127..127
                    if(pan1 < -127) pan1 = -127;
                    if(pan1 > 127)  pan1 = 127;
                    sound_setpanning(6, pan1);
                    sound_play(6);

                    UpdateHealth(-5);
                    astroids3d[i].health = 0;
                    SpawnAstroid3D(i, sbx_rng_range(0, ASTROID_TYPES - 1));
                    astroid_bob[t].flags = BLIT_FLAG_SOLIDCOLOUR;
                    astroid_bob[t].flagval[BLIT_FLAG_TYPE_TINT_VALUE] = 7;
                }
            }

            gfx_drawbob(&astroid_bob[t]);
            astroid_bob[t].flags = 0;
        }
        else if(render3dList[n].kind == RENDER3D_TORPEDO){
            photons_bob.index  = bullet3d[i].framei;
            photons_bob.drawx  = bullet3d[i].drawx;
            photons_bob.drawy  = bullet3d[i].drawy;
            photons_bob.scale  = bullet3d[i].scale;
            photons_bob.handle = BLIT_HANDLE_CENTER;
            photons_bob.flags  = 0;

            gfx_drawbob(&photons_bob);
        } 
        else if(render3dList[n].kind == RENDER3D_EXPLODES){
            if(explodes[i].timeout > 0){
                explode_bob.drawx = explodes[i].x;
                explode_bob.drawy = explodes[i].y;
    
                explode_bob.handle = BLIT_HANDLE_CENTER;
                explode_bob.scale = explodes[i].scale;
                explode_bob.index = (uint8_t)explodes[i].rotation;

                gfx_drawbob(&explode_bob);
            }
        }
        else if(render3dList[n].kind == RENDER3D_PILLS){
            pills_bob.index = pills[i].framei;  // frame index
            pills_bob.drawx = pills[i].drawx;
            pills_bob.drawy = pills[i].drawy;
            pills_bob.handle = BLIT_HANDLE_CENTER;
            pills_bob.scale = pills[i].scale;
            if(pills[i].z < 210.0f){
                uint8_t bcol = gfx_bcollide(&pills_bob, &shiptunnel);
                if(bcol == 2){
                    sound_stop(6);
                    int16_t cx = shiptunnel.drawx + (shipcellsize >> 1); // use ship center
                    int16_t pan1 = (cx - 240) * 127 / 240;  // convert 0..480 -> -127..127
                    if(pan1 < -127) pan1 = -127;
                    if(pan1 > 127)  pan1 = 127;
                    sound_setpanning(6, pan1);
                    sound_play(6);

                    pills_bob.flags = BLIT_FLAG_SOLIDCOLOUR;
                    pills_bob.flagval[BLIT_FLAG_TYPE_TINT_VALUE] = 7;

                    AddScore(1000);
                    UpdateHealth(15);

                    pills[i].health = 0;
                }
            }
            gfx_drawbob(&pills_bob);
            pills_bob.flags = 0;

        }
    }
}




char vstring[64];
//volatile gfxbob_t MEMALIGN32 powerhealth_bob;   // the power and health bar

int8_t targHealth, targSheild;
uint8_t statusTmr= 0;

void drawPowerHealthBar(uint8_t health)
{
    const int16_t barX = 212;
    const int16_t barY = 294;

    // health_VAL is the actual value of the health status
    // targHealth is the target health status to slowly show up here
    if(statusTmr == 0){
        if(targHealth < health) targHealth++;
        else if(targHealth > health) targHealth--;
    }
    

    // 22 middle cells * 8 pixels = 88 pixels of fill
    uint16_t fillPx = ((uint16_t)targHealth * 88) / 100;

    uint8_t midCount = fillPx / 8;
    uint8_t remPx    = fillPx % 8;


    // middle pieces
    powerhealth_bob.index = 1;
    for(uint8_t x = 0; x < midCount; x++){
        powerhealth_bob.drawx = barX + (x * 8) + remPx;
        powerhealth_bob.drawy = barY;
        gfx_drawbob(&powerhealth_bob);
    }

    // left cap
    powerhealth_bob.index = 0;
    powerhealth_bob.drawx = barX;
    powerhealth_bob.drawy = barY;
    gfx_drawbob(&powerhealth_bob);

    // right cap follows end of filled middle
    powerhealth_bob.index = 2;
    powerhealth_bob.drawx = barX + (midCount * 8) + remPx;
    powerhealth_bob.drawy = barY;
    gfx_drawbob(&powerhealth_bob);
}


void drawPowerShieldBar(uint8_t health)
{
    const int16_t barX = 366;
    const int16_t barY = 294;

    if(statusTmr == 0){
        if(targSheild < health) targSheild++;
        else if(targSheild > health) targSheild--;
    }

    // 22 middle cells * 8 pixels = 88 pixels of fill
    uint16_t fillPx = ((uint16_t)targSheild * 88) / 100;

    uint8_t midCount = fillPx / 8;
    uint8_t remPx    = fillPx % 8;


    // middle pieces
    powerhealth_bob.index = 4;
    for(uint8_t x = 0; x < midCount; x++){
        powerhealth_bob.drawx = barX + (x * 8) + remPx;
        powerhealth_bob.drawy = barY;
        gfx_drawbob(&powerhealth_bob);
    }

    // left cap
    powerhealth_bob.index = 3;
    powerhealth_bob.drawx = barX;
    powerhealth_bob.drawy = barY;
    gfx_drawbob(&powerhealth_bob);

    // right cap follows end of filled middle
    powerhealth_bob.index = 5;
    powerhealth_bob.drawx = barX + (midCount * 8) + remPx;
    powerhealth_bob.drawy = barY;
    gfx_drawbob(&powerhealth_bob);
}



void DrawHUD(){
    
    sprintf(vstring, "SCORE: %07lu", SCORE_VAL);
    drawText(vstring, 10, 10);

    sprintf(vstring, "LIVES: %lu", LIVES_VAL);
    drawText(vstring, 340, 10);

    sprintf(vstring, "WAVES: %lu", WAVES_VAL);
    drawText(vstring, 10, 294);

    sprintf(vstring, "H:");
    drawText(vstring, 180, 294);

    sprintf(vstring, "S:");
    drawText(vstring, 334, 294);

    statusTmr ++;
    if(statusTmr> 1) statusTmr = 0;

    drawPowerHealthBar(health_VAL);
    drawPowerShieldBar(shields_VAL);           
}

