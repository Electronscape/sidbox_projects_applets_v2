#include "main.h"

#include "resource.h"
#include "player.h"


float shipX, shipY;
float shipVX, shipVY;
int   shipRot; // 0..35, 0 = up
int8_t shipRotTmr = 0;


volatile bullets_t MEMALIGN4  bullet[MAXBULLETS];  // shouldnt really ever see more than 3 but never know
volatile gfxbob_t  MEMALIGN32 shipbullet;
volatile gfxbob_t  MEMALIGN32 shipmain;

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
        int16_t pan1;

        sound_stop(1);

        // use ship center
        int16_t cx = shipmain.drawx + (shipcellsize >> 1);

        // convert 0..480 -> -127..127
        pan1 = (cx - 240) * 127 / 240;

        // clamp just in case
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
