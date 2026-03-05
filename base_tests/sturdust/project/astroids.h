#ifndef ASTROIDS_H
#define ASTROIDS_H

#include "main.h"


#define ASTROID_TYPES   4
#define max_astroids    8



typedef struct MEMALIGN4 {
    int16_t x, y, sx, sy;
    int16_t cellw, cellh;

    uint8_t size;   // 0 - the LARGE size, 1 - smaller, 2 - shitty little pissy ones!
    int8_t  frame;
    uint8_t frames; // speed 
    uint8_t framei; // frame timer index
    uint8_t frames_max; // maximum frames
    
    int8_t  framed;
    uint8_t flags;
    uint8_t flagval[3];
} stroids;


extern volatile stroids MEMALIGN4 astroids[max_astroids];
extern volatile MEMALIGN32 gfxbob_t astroid_bob[ASTROID_TYPES];

#endif