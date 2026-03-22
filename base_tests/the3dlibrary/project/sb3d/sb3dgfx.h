#ifndef _SIDBOX_3D_GRAPHICS_H_
#define _SIDBOX_3D_GRAPHICS_H_

#include "memalign.h"
#include <stdint.h>

#define SCREEN_W  480
#define SCREEN_H  320


#define FB_INDEX(x, y) (((x) * SCREEN_H) + (y))
extern uint8_t *drawbuffer;    // framebuffer (interal)
void set3DRenderBuffer(uint8_t *buffer);

#define zbufferaccurate 48      // adjust this for Zbuffer accuracy, the higher the number, the less accurate, 4 is good, 32 is compromise, 64 cursed 


typedef enum {
    DITHER_BAYER4X4 = 0,
    DITHER_RANDOM   = 1
} DitherMode;

#define MAX_PALETTE_SHADE_INDEX  5
#define MAX_PALETTE_SHADE_COUNT  (MAX_PALETTE_SHADE_INDEX)  // this is used when the light doesnt hit at all (uses)

#define PALETTE_SHADE_OFFSETS    32
#define WHITE_SHADE_PALETTE      255    
#define BLACK_SHADE_PALETTE      16


void resetDepthBufferBand(void);

void putPixel(int32_t x, int32_t y, uint8_t colIndex);
void drawLine(int x0, int y0, int x1, int y1, uint8_t colorIndex);


uint8_t shadeColor(uint8_t baseColor, int shade);
void fillTriangle(int x0, int y0, int x1, int y1, int x2, int y2, uint8_t color);
void fillTriangleDither(int x0, int y0, int x1, int y1, int x2, int y2, uint8_t baseColor, float shadeF, DitherMode mode);

// ZORDERED


void resetDepthBufferBand(void);

void fillTriangleFlat(int x0, int y0,  int x1, int y1,  int x2, int y2, uint16_t z0,  uint16_t z1,  uint16_t z2, float camz0, float camz1, float camz2, uint8_t baseColor,  float shadeF);
void fillTriangleDitherBayer( int x0, int y0, int x1, int y1, int x2, int y2, uint16_t z0, uint16_t z1, uint16_t z2, float camz0, float camz1, float camz2, uint8_t baseColor, float shadeF);
void fillTriangleDitherBayer2Mode(int x0, int y0, int x1, int y1, int x2, int y2, uint16_t z0, uint16_t z1, uint16_t z2, float camz0, float camz1, float camz2, uint8_t baseColor, float shadeF);

void resetRand();

#endif