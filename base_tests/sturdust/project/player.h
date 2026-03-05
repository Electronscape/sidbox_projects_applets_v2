#ifndef PLAYER_H
#define PLAYER_H




#include "main.h"





#define shipcellsize    64
#define MAXBULLETS      32



typedef struct MEMALIGN4 {
    float velocX, velocY;   // velocity direction 
    float fx, fy;

    int16_t x, y;
    int8_t  rotation;   // current rotation
    uint8_t types;      // type of bullet
    uint8_t timeout;    // bullet cant last long
    uint8_t strength;   // bullet strength (usually for powerups later)
    uint8_t flags;
    uint8_t flagval[3];
} bullets_t;

extern volatile bullets_t MEMALIGN4 bullet[MAXBULLETS];  // shouldnt really ever see more than 3 but never know
extern volatile MEMALIGN32 gfxbob_t shipbullet;
extern volatile MEMALIGN32 gfxbob_t shipmain;


extern float shipX, shipY;
extern float shipVX, shipVY;
extern int   shipRot; // 0..35, 0 = up
extern int8_t shipRotTmr;



#endif