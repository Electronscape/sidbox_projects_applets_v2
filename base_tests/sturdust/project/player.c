#include "main.h"

#include "resource.h"
#include "player.h"
#include "astroids.h"


float shipX, shipY;
float shipVX, shipVY;
int   shipRot; // 0..35, 0 = up
int8_t shipRotTmr = 0;
uint8_t shipInvincible;
uint8_t shieldActive = 0;


volatile bullets_t MEMALIGN4  bullet[MAXBULLETS];  // shouldnt really ever see more than 3 but never know
volatile gfxbob_t  MEMALIGN32 shipbullet;
volatile gfxbob_t  MEMALIGN32 shipmain;
volatile gfxbob_t  MEMALIGN32 shipshield;
volatile uint8_t  shieldStep = 0;


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
