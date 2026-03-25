
#ifndef _GFX_LIB_TEST_H_
#define _GFX_LIB_TEST_H_


#include <stdint.h>


#define SCREEN_TEST 0

#define SCREEN_W  480
#define SCREEN_H  320

#define FB_INDEX(x, y) (((x) * SCREEN_H) + (y))

extern uint32_t clut[256];


void drawRect(int x, int y, int w, int h, uint8_t col);

#endif