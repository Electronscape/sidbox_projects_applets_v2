#ifndef RESOURCE_H
#define RESOURCE_H

#include "main.h"



#define SHIP_ROTATION_FRAMES 36
#define SHIP_ROT_LAST (SHIP_ROTATION_FRAMES - 1)

extern volatile uint32_t MEMALIGN32 frontclut[256];
extern volatile uint32_t MEMALIGN32 backclut[256];

extern const float dirTable[SHIP_ROTATION_FRAMES][2];



#endif