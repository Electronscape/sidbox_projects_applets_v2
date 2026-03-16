#include "main.h"

#include "astroids.h"
#include "player.h"

volatile stroids   MEMALIGN4  astroids[max_astroids];
volatile stroids3d MEMALIGN4  astroids3d[MAX_ASTROIDS_3D];
volatile gfxbob_t  MEMALIGN32 astroid_bob[ASTROID_TYPES];

#define ASTROID_ROCK_LARGE_SCORE        20
#define ASTROID_ROCK_MEDIUM_SCORE       25
#define ASTROID_ROCK_SMALL_SCORE        50
#define ASTROID_METAL_LARGE_SCORE       100
#define ASTROID_METAL_MEDIUM_SCORE      120
#define ASTROID_METAL_SMALL_SCORE       150
#define ASTROID_HARD_LARGE_SCORE        200
#define ASTROID_HARD_MEDIUM_SCORE       220
#define ASTROID_HARD_SMALL_SCORE        250

uint8_t scoreSizes[] = {
    ASTROID_ROCK_LARGE_SCORE,   5,
    ASTROID_ROCK_MEDIUM_SCORE,  4,
    ASTROID_ROCK_SMALL_SCORE,   3,

    ASTROID_METAL_LARGE_SCORE,  4,
    ASTROID_METAL_MEDIUM_SCORE, 5,
    ASTROID_METAL_SMALL_SCORE,  5,

    ASTROID_HARD_LARGE_SCORE,   6,
    ASTROID_HARD_MEDIUM_SCORE,  6,
    ASTROID_HARD_SMALL_SCORE,   6
};


void SpawnAstroid(int16_t x, int16_t y, uint8_t type)
{
    if (type >= ASTROID_TYPES) return;

    int16_t astroidIndex = -1;
    for (uint8_t a = 0; a < max_astroids; a++) {
        if (astroids[a].health == 0) {
            astroidIndex = a;
            break;
        }
    }
    if (astroidIndex < 0) return; // no free slot

    memset(&astroids[astroidIndex], 0, sizeof(stroids));

    astroids[astroidIndex].score  = scoreSizes[(type * 2) + 0];
    astroids[astroidIndex].health = scoreSizes[(type * 2) + 1];

    astroids[astroidIndex].x = x;
    astroids[astroidIndex].y = y;

    do { astroids[astroidIndex].sx = sbx_rng_range(-3, 3); } while (astroids[astroidIndex].sx == 0);
    do { astroids[astroidIndex].sy = sbx_rng_range(-3, 3); } while (astroids[astroidIndex].sy == 0);

    astroids[astroidIndex].type = type;

    if (type == 0) { astroids[astroidIndex].cellw = astroids[astroidIndex].cellh = 96; astroids[astroidIndex].frames_max = 24; }
    if (type == 1) { astroids[astroidIndex].cellw = astroids[astroidIndex].cellh = 64; astroids[astroidIndex].frames_max = 24; }
    if (type == 2) { astroids[astroidIndex].cellw = astroids[astroidIndex].cellh = 64; astroids[astroidIndex].frames_max = 24; }
    if (type == 3) { astroids[astroidIndex].cellw = astroids[astroidIndex].cellh = 32; astroids[astroidIndex].frames_max = 16; }

    astroids[astroidIndex].frame  = sbx_rng_range(0, astroids[astroidIndex].frames_max - 1);
    astroids[astroidIndex].frames = sbx_rng_range(1, 3);
    astroids[astroidIndex].framed = (sbx_rng_range(1, 4) & 1) ? -1 : 1;
}

void initAstroids(){
    for(uint8_t a = 0; a < max_astroids; a ++){
        memset(&astroids[a], 0, sizeof(stroids));   // empty all the astroids
    }
}

void proc_astroids(){
    bullets_t *thebullet;
    for(uint8_t a = 0; a < max_astroids; a++){

        if(astroids[a].health == 0) continue;

        uint8_t asize = astroids[a].type;

        astroids[a].framei ++;
        if(astroids[a].framei > astroids[a].frames) {
            astroids[a].framei = 0;
            astroids[a].frame += astroids[a].framed;
            if(astroids[a].frame < 0) astroids[a].frame = (astroids[a].frames_max-1);
            if(astroids[a].frame > (astroids[a].frames_max-1)) astroids[a].frame = 0;
        }
        astroids[a].x += astroids[a].sx;
        astroids[a].y += astroids[a].sy;

        if(astroids[a].x > 480) astroids[a].x = -astroids[a].cellw;
        if(astroids[a].y > 320) astroids[a].y = -astroids[a].cellh;
        if(astroids[a].x < -astroids[a].cellw) astroids[a].x = 480;
        if(astroids[a].y < -astroids[a].cellh) astroids[a].y = 320;

        astroid_bob[asize].index = astroids[a].frame;
        astroid_bob[asize].drawx = astroids[a].x;
        astroid_bob[asize].drawy = astroids[a].y;
        astroid_bob[asize].flags = astroids[a].flags;
        astroid_bob[asize].flagval[1] = astroids[a].flagval[1];
        astroid_bob[asize].handle = 0;//BLIT_HANDLE_CENTER;


        ShieldBounceAsteroid(&astroids[a]);   // bounce + save ship

        uint8_t bcol = 0;
        for(uint8_t b = 0; b < MAXBULLETS; b++){
            thebullet = &bullet[b];
            if(thebullet->timeout>0){
                shipbullet.drawx = thebullet->x;
                shipbullet.drawy = thebullet->y;
                shipbullet.index = thebullet->rotation;
                
                bcol = gfx_bcollide(&astroid_bob[asize], &shipbullet);
                if(bcol == 2){
                    astroid_bob[asize].flags = 1;   // colour tint
                    astroid_bob[asize].flagval[0] = 168;
                    astroids[a].health --;
                    thebullet->timeout=0;
                    break;                   
                }
            }
        }

        gfx_drawbob(&astroid_bob[asize]);
        astroid_bob[asize].flags = 0;   // colour tint

        if (astroids[a].health <= 0) {
            uint8_t deadType = astroids[a].type;
            int16_t deadX = astroids[a].x;
            int16_t deadY = astroids[a].y;

            // 64 is the width/height of the explotion cell
            int16_t tx = (astroids[a].cellw - 64) / 2;
            int16_t ty = (astroids[a].cellh - 64) / 2;

            uint8_t explodeSize = 1;
            uint8_t naLen = 0;
            uint8_t naType = 0;
            int16_t sx, sy;


            SCORE_VAL += astroids[a].score;

            astroids[a].health = 0;   // FREE SLOT FIRST
            int16_t cx = deadX + (astroids[a].cellw >> 1); // use ship center
            int16_t pan1 = (cx - 240) * 127 / 240;  // convert 0..480 -> -127..127
            if(pan1 < -127) pan1 = -127;
            if(pan1 > 127)  pan1 = 127;

            if (deadType == 0) {
                naLen = 2;
                naType = 1;
                explodeSize = 3;
                sound_stop(4);
                sound_setpanning(4, pan1);
                sound_play(4);  
            } else if(deadType == 1){
                naLen = 3;
                naType = 3;
                explodeSize = 3;
                sound_stop(4);
                sound_setpanning(4, pan1);
                sound_play(4);  
            } else {   
                // usually the smaller ones
                sound_stop(5);
                sound_setpanning(5, pan1);
                sound_play(5);
            }
            

            for(uint8_t na = 0; na < naLen; na++){
                sx = sbx_rng_range(deadX - 32, deadX + 32); 
                sy = sbx_rng_range(deadY - 32, deadY + 32);
                SpawnAstroid(sx, sy, naType);
            }

            for(uint8_t m = 0; m < explodeSize; m++){
                
                if(m == 0) {
                    sx = sbx_rng_range(deadX, deadX);
                    sy = sbx_rng_range(deadY, deadY);
                } else {
                    sx = sbx_rng_range(deadX - 32, deadX + 32);
                    sy = sbx_rng_range(deadY - 32, deadY + 32);
                }
                //sx = deadX;
                //sy = deadY;
                spawnExplode(sx + tx, sy + ty);
            }
        }

    }
}


void SpawnAstroid3D(uint8_t i, uint8_t type)
{
    if(i >= MAX_ASTROIDS_3D) return;
    if(type >= ASTROID_TYPES) type = 0;

    memset(&astroids3d[i], 0, sizeof(stroids3d));

    astroids3d[i].type   = type;
    astroids3d[i].health = 2;
    astroids3d[i].score  = scoreSizes[type * 2];

    // tunnel space
    // wider range = wider spread across the tunnel
    astroids3d[i].x = (float)sbx_rng_range(-240, 240);
    astroids3d[i].y = (float)sbx_rng_range(-220, 220);
    astroids3d[i].z = 2020;//(float)sbx_rng_range(-100, 260);

    // drift
    astroids3d[i].sx = (float)sbx_rng_range(-10, 10) * 0.05f;
    astroids3d[i].sy = (float)sbx_rng_range(-10, 10) * 0.05f;

    // speed towards camera
    astroids3d[i].sz = (float)sbx_rng_range(20, 28) * 1.10f;

    // sprite setup by type
    astroids3d[i].type = type;
    if(type == 0){ astroids3d[i].cellw = astroids3d[i].cellh = 96; astroids3d[i].frames_max = 24; }
    if(type == 1){ astroids3d[i].cellw = astroids3d[i].cellh = 64; astroids3d[i].frames_max = 24; }
    if(type == 2){ astroids3d[i].cellw = astroids3d[i].cellh = 64; astroids3d[i].frames_max = 24; }
    if(type == 3){ astroids3d[i].cellw = astroids3d[i].cellh = 32; astroids3d[i].frames_max = 16; }

    astroids3d[i].frame  = sbx_rng_range(0, astroids3d[i].frames_max - 1);
    astroids3d[i].frames = sbx_rng_range(1, 3);
    astroids3d[i].framed = (sbx_rng_range(1, 4) & 1) ? -1 : 1;

    astroids3d[i].scale = 100;
}


void initAstroids3D(void)
{
    for(uint8_t i = 0; i < MAX_ASTROIDS_3D; i++){
        SpawnAstroid3D(i, sbx_rng_range(0, ASTROID_TYPES - 1));
    }
}


void proc_astroids3D(int16_t scroffx, int16_t scroffy)
{
    const float focal     = 260.0f;   // perspective strength -- bigger faster spread
    const float scale_mul = 820.0f;   // sprite size from z
    const float z_near    = 90.0f;     // too close = respawn

    uint8_t drawList[MAX_ASTROIDS_3D];
    uint8_t drawCount = 0;


    // -----------------------------
    // update + project
    // -----------------------------
    for(uint8_t i = 0; i < MAX_ASTROIDS_3D; i++){
        if(astroids3d[i].health == 0) continue;

        // animate sprite frame
        astroids3d[i].framei++;
        if(astroids3d[i].framei > astroids3d[i].frames){
            astroids3d[i].framei = 0;
            astroids3d[i].frame += astroids3d[i].framed;

            if(astroids3d[i].frame < 0) astroids3d[i].frame = astroids3d[i].frames_max - 1;
            if(astroids3d[i].frame >= astroids3d[i].frames_max) astroids3d[i].frame = 0;
        }

        // move in fake 3D space
        astroids3d[i].x += astroids3d[i].sx;
        astroids3d[i].y += astroids3d[i].sy;
        astroids3d[i].z -= astroids3d[i].sz;

        // recycle if too near
        if(astroids3d[i].z <= z_near){
            SpawnAstroid3D(i, sbx_rng_range(0, ASTROID_TYPES - 1));
            continue;
        }

        // perspective project
        float iz = 1.0f / astroids3d[i].z;

        // fade-in over the farthest 30% of the spawn range
        astroids3d[i].flags = BLIT_FLAG_ALPHABLEND;

        const float z_spawn_far   = 2020.0f;   // where they start
        const float z_near_solid  = 900.0f;   // fully solid by here

        uint8_t fadepower;

        if (astroids3d[i].z >= z_spawn_far) {
            fadepower = 95;   // almost invisible
        }
        else if (astroids3d[i].z <= z_near_solid) {
            fadepower = 0;    // fully solid
        }
        else {
            float t = (astroids3d[i].z - z_near_solid) / (z_spawn_far - z_near_solid); // 0..1
            fadepower = (uint8_t)(t * 95.0f);
        }

        astroids3d[i].flags = BLIT_FLAG_ALPHABLEND;
        astroids3d[i].flagval[BLIT_FLAG_TYPE_FADE_VALUE] = fadepower;

        float fx = 320.0f + (astroids3d[i].x * focal * iz);
        float fy = 240.0f + (astroids3d[i].y * focal * iz);

        uint16_t scale = (uint16_t)(scale_mul * iz * 100.0f);
        if(scale < 8)   scale = 8;
        if(scale > 550) scale = 550;

        // circular collision radius in screen space
        // 35% feels about right for rocky sprites
        astroids3d[i].radius = (int16_t)(((uint32_t)astroids3d[i].cellw * scale) / 100u / 3);
        if(astroids3d[i].radius < 4) astroids3d[i].radius = 4;


        astroids3d[i].drawx = (int16_t)fx - scroffx;
        astroids3d[i].drawy = (int16_t)fy - scroffy;
        astroids3d[i].scale = scale;

        // optional cull if projected way off-screen
        {
            int16_t draww = (int16_t)(((uint32_t)astroids3d[i].cellw * scale) / 100u);
            int16_t drawh = (int16_t)(((uint32_t)astroids3d[i].cellh * scale) / 100u);

            if(astroids3d[i].drawx < -draww || astroids3d[i].drawx > (640 + draww) ||
               astroids3d[i].drawy < -drawh || astroids3d[i].drawy > (480 + drawh))
            {
                SpawnAstroid3D(i, sbx_rng_range(0, ASTROID_TYPES - 1));
                continue;
            }
        }

        drawList[drawCount++] = i;
    }
}



