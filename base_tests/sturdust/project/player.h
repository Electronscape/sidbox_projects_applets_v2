#ifndef PLAYER_H
#define PLAYER_H




#include "main.h"





#define shipcellsize    64

#define MAX_TORPEDOS    32
#define MAXBULLETS      32
#define MAX_EXPLOSIONS  32
#define MAX_PILLS       8


extern uint32_t SCORE_VAL;
extern uint8_t  LIVES_VAL;
extern uint8_t  WAVES_VAL;
extern int8_t   health_VAL;
extern int8_t   shields_VAL;


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


typedef struct MEMALIGN4 {
    float x, y, z;
    float sx, sy, sz;

    int16_t  drawx, drawy;
    int16_t  radius;
    uint16_t scale;

    int16_t  cellw, cellh;

    uint8_t  type;
    uint8_t  health;
    int8_t   framed;
    uint8_t  score;

    uint8_t  framet;    // frame timer
    int8_t   frames;    // frame speed (-1 or 1)
    uint8_t  framei;    // frame index
    uint8_t  frames_max;

    uint8_t  flags;
    uint8_t  flagval[3];
} bullets3d_t;





extern const    uint8_t     shipframetunnel[5][5];
extern volatile bullets_t   MEMALIGN4 bullet[MAXBULLETS];  // shouldnt really ever see more than 3 but never know
extern volatile bullets3d_t MEMALIGN4 bullet3d[MAX_TORPEDOS];
extern volatile bullets3d_t MEMALIGN4 pills[MAX_PILLS];

extern volatile gfxbob_t  MEMALIGN32 shipbullet;
extern volatile gfxbob_t  MEMALIGN32 shipmain;
extern volatile gfxbob_t  MEMALIGN32 shiptunnel;
extern volatile gfxbob_t  MEMALIGN32 shipshield;
extern volatile gfxbob_t  MEMALIGN32 pill;


extern float   shipX,  shipY;
extern float   shipVX, shipVY;
extern int     shipRot; // 0..35, 0 = up
extern int8_t  shipRotTmr;
extern uint8_t shipInvincible;



#endif