#include "main.h"

#include "resource.h"
#include "graphics.h"
#include "player.h"
#include "astroids.h"


float shipX, shipY;
float shipVX, shipVY;
int   shipRot; // 0..35, 0 = up
int8_t shipRotTmr = 0;
uint8_t shipInvincible;
uint8_t shieldActive = 0;

uint32_t SCORE_VAL = 0;
uint8_t  LIVES_VAL = 0;
uint8_t  WAVES_VAL = 0;
int8_t   health_VAL  = 100;
int8_t   shields_VAL = 100;


volatile bullets_t   MEMALIGN4 bullet  [MAXBULLETS];  // shouldnt really ever see more than 3 but never know
volatile bullets3d_t MEMALIGN4 bullet3d[MAX_TORPEDOS];  // 3D bullet

volatile bullets3d_t MEMALIGN4 pills[MAX_PILLS]; // can use these as upgrade pills

volatile gfxbob_t  MEMALIGN32 shipbullet;
volatile gfxbob_t  MEMALIGN32 shipmain;
volatile gfxbob_t  MEMALIGN32 shiptunnel;
volatile gfxbob_t  MEMALIGN32 shipshield;
volatile uint8_t  shieldStep = 0;

const uint8_t shipframetunnel[5][5] = {
    0, 1, 2, 3, 4,
    5, 6, 7, 8, 9,
    10,11,12,13,14,
    15,16,17,18,19,
    20,21,22,23,24
};


static inline float clampf(float v, float lo, float hi)
{
    if(v < lo) return lo;
    if(v > hi) return hi;
    return v;
}



void ShieldBounceAsteroid(stroids *as)
{

    if( shieldActive  == 0 ) return;

    // --- radii (tweak if you want tighter/looser shield) ---
    const float shipR = (float)shipcellsize * 0.45f;   // ~half, slightly smaller
    const float astR  = (float)as->cellw * 0.45f;

    // centers
    float shipCx = shipX + (float)shipcellsize * 0.5f;
    float shipCy = shipY + (float)shipcellsize * 0.5f;

    float astCx  = (float)as->x + (float)as->cellw * 0.5f;
    float astCy  = (float)as->y + (float)as->cellh * 0.5f;

    float dx = shipCx - astCx;
    float dy = shipCy - astCy;

    float rs = shipR + astR;
    float d2 = dx*dx + dy*dy;
    if(d2 >= rs*rs) return; // no hit

    sound_stop(6);
    sound_play(6);


    // avoid divide-by-zero if perfectly on top
    float dist = sqrtf(d2);
    if(dist < 0.001f){
        dx = 1.0f; dy = 0.0f; dist = 1.0f;
    }

    // normal from asteroid -> ship
    float nx = dx / dist;
    float ny = dy / dist;

    // asteroid velocity (int -> float)
    float avx = (float)as->sx;
    float avy = (float)as->sy;

    // relative velocity (ship vs asteroid)
    float rvx = shipVX - avx;
    float rvy = shipVY - avy;

    // only bounce if moving INTO each other along normal
    float relN = rvx*nx + rvy*ny;
    if(relN >= 0.0f){
        // still do a tiny push-out to prevent "sticking"
        float pen = rs - dist;
        float push = pen * 0.6f;
        shipX += nx * push;
        shipY += ny * push;
        as->x -= (int16_t)(nx * (pen - push));
        as->y -= (int16_t)(ny * (pen - push));
        return;
    }

    // masses: heavier asteroid
    float mShip = 1.0f;
    float mAst  = 3.0f + (float)as->type; // bigger types feel heavier; tweak

    // impulse scalar (e=1.0 -> bouncy)
    const float e = 1.0f;
    float j = -(1.0f + e) * relN;
    j /= (1.0f/mShip + 1.0f/mAst);

    float impX = j * nx;
    float impY = j * ny;

    // apply impulse
    shipVX += impX / mShip;
    shipVY += impY / mShip;

    avx     -= impX / mAst;
    avy     -= impY / mAst;

    // clamp ship so it doesn't go insane
    const float MAX_SPEED = 4.0f;
    shipVX = clampf(shipVX, -MAX_SPEED, MAX_SPEED);
    shipVY = clampf(shipVY, -MAX_SPEED, MAX_SPEED);

    // write asteroid vel back (ensure not 0 so it doesn't "die")
    int16_t nsx = (int16_t)lroundf(avx);
    int16_t nsy = (int16_t)lroundf(avy);
    if(nsx == 0) nsx = (as->sx >= 0) ? 1 : -1;
    if(nsy == 0) nsy = (as->sy >= 0) ? 1 : -1;
    as->sx = nsx;
    as->sy = nsy;

    // --- push-out so they separate immediately (prevents sticky overlap) ---
    float pen = rs - dist;
    float push = pen * 0.6f;         // ship takes 60% of correction
    shipX += nx * push;
    shipY += ny * push;
    as->x -= (int16_t)(nx * (pen - push));
    as->y -= (int16_t)(ny * (pen - push));
}

void ShowShield(){
    shipshield.drawx = shipX - 8;
    shipshield.drawy = shipY - 8;
    shieldStep++;
    if(shieldStep > 1){
        shieldStep = 0;
        shipshield.index ++;
        if(shipshield.index > 7){
            shipshield.index = 0;
        }
    }
    shipshield.flags = 2;
    shipshield.flagval[1] = 50;
    gfx_drawbob(&shipshield);
}


void ShieldON(){
    
    if(shieldActive == 0){
        
        sound_play(3);
    }
    shieldActive = 1;
    int16_t cx = shipmain.drawx + (shipcellsize >> 1); // use ship center
    int16_t pan1 = (cx - 240) * 127 / 240;  // convert 0..480 -> -127..127
    if(pan1 < -127) pan1 = -127;
    if(pan1 > 127)  pan1 = 127;
    sound_setpanning(3, pan1);
    ShowShield();
    
}

void ShieldOFF(){
    if(shieldActive == 1){
        sound_stop(3);
    }
    shieldActive = 0;
}


void WrapRot(void)
{
    if (shipRot >= SHIP_ROTATION_FRAMES) shipRot = 0;
    if (shipRot < 0) shipRot = SHIP_ROT_LAST;
}

void initShip(){
    shipX = (480 / 2) - (shipcellsize/2);     // screen width half - ship width half (32)
    shipY = (320 / 2) - (shipcellsize/2);     // screen width half - ship width half (32)
    shipVX = 0.0f;
    shipVY = 0.0f;
    shipRot = 0;
    shipRotTmr = 0;
}

void ShipUpdate(uint32_t joyb)
{
    // rotation (one step per update; add your timer later)
    if(++shipRotTmr > 1){
        shipRotTmr = 0;
        if (joyb & BTN_LEFT)  shipRot--;
        if (joyb & BTN_RIGHT) shipRot++;
        WrapRot();
    }
    
    // forward unit vector in math coords (+Y up)
    float fx = dirTable[shipRot][0];
    float fy = dirTable[shipRot][1];

    // convert to screen coords (+Y down) by flipping Y when applying
    float thrust = (joyb & BTN_UP) ? 0.25f : 0.0f;  // tune this

        
    shipVX += fx * thrust;
    shipVY -= fy * thrust;

    // clamp speed
    const float MAX_SPEED = 4.0f;
    float speedSq = shipVX * shipVX + shipVY * shipVY;

    if (speedSq > (MAX_SPEED * MAX_SPEED))
    {
        float speed = sqrtf(speedSq);
        float scale = MAX_SPEED / speed;
        shipVX *= scale;
        shipVY *= scale;
    }

    // integrate
    shipX += shipVX;
    shipY += shipVY;

    // drag
    const float DRAG = 0.99f;
    shipVX *= DRAG;
    shipVY *= DRAG;


    if(shipX < -(float)shipcellsize) shipX = 480.0f;
    if(shipX > 480.0f) shipX = -(float)shipcellsize;

    if(shipY < -(float)shipcellsize) shipY = 320.0f;
    if(shipY > 320.0f) shipY = -(float)shipcellsize;

    // optional tiny damping while testing (comment out for pure Asteroids)
    // shipVX *= 0.99f;
    // shipVY *= 0.99f;
}









void initBullets(){
    // clear them and prepare
    for(uint8_t b = 0; b < MAXBULLETS; b++){
        memset(&bullet[b], 0, sizeof(bullets_t));
    }
}


void fireBullet(){

    uint8_t go=0;   // if at least one bullet can be found free, set to 1
    int rots[3] = { shipRot-1, shipRot, shipRot+1 };

    // wrap the two outer rotations
    if(rots[0] < 0) rots[0] = SHIP_ROTATION_FRAMES-1;
    if(rots[2] >= SHIP_ROTATION_FRAMES) rots[2] = 0;

    go = 0;
    for(int r = 0; r < 3; r++){
        for(uint8_t b = 0; b < MAXBULLETS; b++){
            if(bullet[b].timeout == 0){
                bullet[b].timeout = 17;
                go = 1;

                bullet[b].fx = shipmain.drawx + (shipcellsize / 2) - 8;
                bullet[b].fy = shipmain.drawy + (shipcellsize / 2) - 8;

                bullet[b].rotation = rots[r];

                float fx = dirTable[rots[r]][0];
                float fy = dirTable[rots[r]][1];

                bullet[b].velocX = fx * 8.0f;
                bullet[b].velocY = fy * 8.0f;

                bullet[b].fx += (fx * 22.0f);
                bullet[b].fy -= (fy * 22.0f);

                break;
            }
        }
    }

    if(go == 1){
        sound_stop(1);
        int16_t cx = shipmain.drawx + (shipcellsize >> 1); // use ship center
        int16_t pan1 = (cx - 240) * 127 / 240;  // convert 0..480 -> -127..127
        if(pan1 < -127) pan1 = -127;
        if(pan1 > 127)  pan1 = 127;
        sound_setpanning(1, pan1);
        sound_play(1);
    }
    
}

void doBullets(){
    for(uint8_t b = 0; b < MAXBULLETS; b++){
        if(bullet[b].timeout>0){
            bullet[b].timeout--;
            bullet[b].fx += bullet[b].velocX;
            bullet[b].fy -= bullet[b].velocY;

            if(bullet[b].fx < -16.0f) bullet[b].fx = 480.0f;
            if(bullet[b].fx > 480.0f) bullet[b].fx = -16.0f;

            if(bullet[b].fy < -16.0f) bullet[b].fy = 320.0f;
            if(bullet[b].fy > 320.0f) bullet[b].fy = -16.0f;

            bullet[b].x = (int)bullet[b].fx;
            bullet[b].y = (int)bullet[b].fy;

            shipbullet.index = bullet[b].rotation;
            shipbullet.drawx = bullet[b].x;
            shipbullet.drawy = bullet[b].y;
            gfx_drawbob(&shipbullet);
        }
    }
}



void spawnTorpedo(int16_t startx, int16_t starty)
{
    const float focal = 260.0f;
    const float z0    = 80.0f;

    startx *= 2.0f;
    starty *= 2.2f;

    for(uint8_t i = 0; i < MAX_TORPEDOS; i++){
        if(bullet3d[i].health == 0){
            memset((void*)&bullet3d[i], 0, sizeof(bullets3d_t));

            bullet3d[i].health = 1;
            bullet3d[i].type   = 0;


            // startx/starty are assumed to already be in the 640x480 tunnel space
            // inverse of:
            // fx = 320 + (x * focal / z)
            // fy = 240 + (y * focal / z)
            bullet3d[i].z = z0;
            bullet3d[i].x = ((float)(startx - 320) * z0) / focal;
            bullet3d[i].y = ((float)(starty - 240) * z0) / focal;

            bullet3d[i].sx = 0.0f;
            bullet3d[i].sy = 0.0f;
            bullet3d[i].sz = 16.0f;   // speed away into tunnel

            bullet3d[i].cellw = 64;
            bullet3d[i].cellh = 64;

            bullet3d[i].framet = 0;  // frame timer 0
            bullet3d[i].framei = 4; // index
            bullet3d[i].frames = (sbx_rng_range(1, 4) & 1) ? -1 : 1;
            bullet3d[i].frames_max = 18;

            bullet3d[i].scale  = 100;
            bullet3d[i].radius = 6;

            sound_stop(1);
            int16_t cx = shiptunnel.drawx + (shipcellsize >> 1); // use ship center
            int16_t pan1 = (cx - 240) * 127 / 240;  // convert 0..480 -> -127..127
            if(pan1 < -127) pan1 = -127;
            if(pan1 > 127)  pan1 = 127;
            sound_setpanning(1, pan1);
            sound_play(1);
            return;
        }
    }
}

void initTorpedos3D(void){
    memset((void*)bullet3d, 0, sizeof(bullets3d_t) * MAX_TORPEDOS);
}

void initPills3D(void){
    memset((void*)pills, 0, sizeof(bullets3d_t) * MAX_PILLS);
}

void proc_photo_torps(int16_t scroffx, int16_t scroffy)
{
    const float focal      = 260.0f;
    const float scale_mul  = 220.0f;
    const float z_far_kill = 2020.0f;

    uint8_t drawList[MAX_TORPEDOS];
    uint8_t drawCount = 0;

    // -----------------------------
    // update + project
    // -----------------------------
    for(uint8_t i = 0; i < MAX_TORPEDOS; i++){
        if(bullet3d[i].health == 0) continue;

        // move away down tunnel
        bullet3d[i].x += bullet3d[i].sx;
        bullet3d[i].y += bullet3d[i].sy;
        bullet3d[i].z += bullet3d[i].sz;

        // frames ;)
        bullet3d[i].framet++;
        if(bullet3d[i].framet > 2){
            bullet3d[i].framet = 0;
            int8_t nextframe = bullet3d[i].framei + bullet3d[i].frames;
            if(nextframe >= bullet3d[i].frames_max) nextframe = 0;
            else if(nextframe < 0) nextframe = bullet3d[i].frames_max - 1;
            bullet3d[i].framei = nextframe;
        }

        // kill when too far
        if(bullet3d[i].z >= z_far_kill){
            bullet3d[i].health = 0;
            continue;
        }

        // perspective project
        float iz = 1.0f / bullet3d[i].z;

        float fx = 320.0f + (bullet3d[i].x * focal * iz);
        float fy = 240.0f + (bullet3d[i].y * focal * iz);

        uint16_t scale = (uint16_t)(scale_mul * iz * 100.0f);
        if(scale < 8)  scale = 8;
        if(scale > 80) scale = 80;   // torpedos should stay smaller than rocks

        bullet3d[i].drawx = (int16_t)fx - scroffx;
        bullet3d[i].drawy = (int16_t)fy - scroffy;
        bullet3d[i].scale = scale;

        // collision radius in screen space
        bullet3d[i].radius = (int16_t)(((uint32_t)bullet3d[i].cellw * scale) / 100u / 2);
        if(bullet3d[i].radius < 2) bullet3d[i].radius = 2;

        // cull if off screen
        {
            int16_t draww = (int16_t)(((uint32_t)bullet3d[i].cellw * scale) / 100u);
            int16_t drawh = (int16_t)(((uint32_t)bullet3d[i].cellh * scale) / 100u);

            if(bullet3d[i].drawx < -draww || bullet3d[i].drawx > (640 + draww) ||
               bullet3d[i].drawy < -drawh || bullet3d[i].drawy > (480 + drawh))
            {
                bullet3d[i].health = 0;
                continue;
            }
        }

        // collide against asteroids // bullet collide
        for(uint8_t a = 0; a < MAX_ASTROIDS_3D; a++){
            if(astroids3d[a].health == 0) continue;

            // only test if somewhat near same depth
            float dz = astroids3d[a].z - bullet3d[i].z;
            if(dz < -120.0f || dz > 120.0f) continue;

            float dx = (float)(astroids3d[a].drawx - bullet3d[i].drawx);
            float dy = (float)(astroids3d[a].drawy - bullet3d[i].drawy);

            float rr = (float)(astroids3d[a].radius + bullet3d[i].radius);
            if((dx * dx + dy * dy) <= (rr * rr)){
                astroids3d[a].health--;
                bullet3d[i].health = 0;


                if(astroids3d[a].health == 0){
                    sound_stop(5);
                    sound_play(5);

                    int16_t cx = astroids3d[a].drawx + (shipcellsize >> 1); // use ship center
                    int16_t pan1 = (cx - 240) * 127 / 240;  // convert 0..480 -> -127..127
                    if(pan1 < -127) pan1 = -127;
                    if(pan1 > 127)  pan1 = 127;
                    sound_setpanning(5, pan1);
                    AddScore(astroids3d[a].score);
                    if(sbx_rng_range(0, 4) == 1)
                        spawnPill(&astroids3d[a]);

                    spawnExplode3d(&astroids3d[a]); // <-- tis isnt really doin the placin right, i cannot see the spawn
                    SpawnAstroid3D(a, sbx_rng_range(0, ASTROID_TYPES - 1));
                }
                break;
            }
        }
        

        if(bullet3d[i].health)
            drawList[drawCount++] = i;
    }
}


//////////// UPGRADE PILLS ////////////
void spawnPill(stroids3d *src)
{
    if(!src) return;
    for(uint8_t i = 0; i < MAX_PILLS; i++){
        if(pills[i].health == 0){
            memset((void*)&pills[i], 0, sizeof(bullets3d_t));

            pills[i].health = 1;
            pills[i].type   = 0;
            pills[i].z = src->z;
            pills[i].x = src->x;
            pills[i].y = src->y;

            pills[i].sx = 0.0f;
            pills[i].sy = 0.0f;
            pills[i].sz = 16.0f;   // speed away into tunnel

            pills[i].cellw = 64;
            pills[i].cellh = 64;

            pills[i].framet = 0;  // frame timer 0
            pills[i].framei = 4; // index
            pills[i].frames = (sbx_rng_range(1, 4) & 1) ? -1 : 1;
            pills[i].frames_max = 36;

            pills[i].scale  = 100;
            pills[i].radius = 6;
            return;
        }
    }
}

void procPills3D(int16_t scroffx, int16_t scroffy)
{
    const float focal       = 260.0f;
    const float scale_mul   = 320.0f;
    const float z_near_kill = 90.0f;

    for(uint8_t i = 0; i < MAX_PILLS; i++){
        if(pills[i].health == 0) continue;

        // move toward player
        pills[i].x += pills[i].sx;
        pills[i].y += pills[i].sy;
        pills[i].z -= pills[i].sz;

        // frames
        pills[i].framet++;
        if(pills[i].framet > 1){
            pills[i].framet = 0;

            int16_t nextframe = (int16_t)pills[i].framei + (int16_t)pills[i].frames;

            while(nextframe >= pills[i].frames_max)
                nextframe -= pills[i].frames_max;

            while(nextframe < 0)
                nextframe += pills[i].frames_max;

            pills[i].framei = (uint8_t)nextframe;
        }

        // kill when too near
        if(pills[i].z <= z_near_kill){
            pills[i].health = 0;
            continue;
        }

        // perspective project
        float iz = 1.0f / pills[i].z;

        float fx = 320.0f + (pills[i].x * focal * iz);
        float fy = 240.0f + (pills[i].y * focal * iz);

        uint16_t scale = (uint16_t)(scale_mul * iz * 100.0f);
        if(scale < 4)   scale = 4;
        if(scale > scale_mul) scale = scale_mul;   // pills can grow a bit bigger

        pills[i].drawx = (int16_t)fx - scroffx;
        pills[i].drawy = (int16_t)fy - scroffy;
        pills[i].scale = scale * 2.5f;// * 3.2f;

        // collision radius in screen space
        pills[i].radius = (int16_t)(((uint32_t)pills[i].cellw * scale) / 100u / 3);
        if(pills[i].radius < 4) pills[i].radius = 4;

        // cull if off screen
        {
            int16_t draww = (int16_t)(((uint32_t)pills[i].cellw * scale) / 100u);
            int16_t drawh = (int16_t)(((uint32_t)pills[i].cellh * scale) / 100u);

            if(pills[i].drawx < -draww || pills[i].drawx > (640 + draww) ||
               pills[i].drawy < -drawh || pills[i].drawy > (480 + drawh))
            {
                pills[i].health = 0;
                continue;
            }
        }
    }
}

uint8_t UpdateHealth(int8_t healthload){
    health_VAL +=healthload;
    if(health_VAL < 0) {
        health_VAL = 0;
        return 0;   // no more health left!
    }
    if(health_VAL > 100) health_VAL = 100;

    return 1;  // some health left
}

void SetPlayerLives(uint8_t newlive){
    LIVES_VAL = newlive;
}

void AddScore(uint8_t scoreadd){
    SCORE_VAL += scoreadd;
}

void SetWaves(uint8_t newWave){
    WAVES_VAL = newWave;
}