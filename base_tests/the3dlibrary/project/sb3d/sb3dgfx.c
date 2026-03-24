// file: sb3dgfx.c


#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#include "apis.h"
#include "sb3dgfx.h"



static const uint8_t bayer4x4[4][4] = {
    {  0,  8,  2, 10 },
    { 12,  4, 14,  6 },
    {  3, 11,  1,  9 },
    { 15,  7, 13,  5 }
};





/* keep your existing clut[] here */
/* keep your existing bayer4x4[][] here */
/* keep your existing font[][] here */

//uint8_t fb[SCREEN_W * SCREEN_H] = {0};

uint8_t *drawbuffer;

//static uint16_t align32 g_depthBufferBand[SCREEN_W * ZBUF_BAND_H];
static uint16_t *g_depthBufferBand = NULL;
static int g_depthBandY0 = 0;
static int g_depthBandY1 = 0;

void initDepthBandMem(){
    g_depthBufferBand = get32kmem();
}

void beginDepthBand(int y0)
{
    int bandH;

    g_depthBandY0 = y0;
    g_depthBandY1 = y0 + ZBUF_BAND_H - 1;

    if (g_depthBandY1 >= SCREEN_H) {
        g_depthBandY1 = SCREEN_H - 1;
    }

    bandH = g_depthBandY1 - g_depthBandY0 + 1;

    memset(g_depthBufferBand, 0xff, SCREEN_W * bandH * sizeof(uint16_t));
}

int getDepthBandY0(void)
{
    return g_depthBandY0;
}

int getDepthBandY1(void)
{
    return g_depthBandY1;
}


void set3DRenderBuffer(uint8_t *buffer){
    drawbuffer = buffer;
}

static uint32_t g_ditherSeed = 0x12345678;

static inline void putPixelFast(int32_t x, int32_t y, uint8_t colIndex)
{
    //fb[(y * SCREEN_W) + x] = colIndex;
    drawbuffer[FB_INDEX(x, y)] = colIndex;
}

// doesnt get used 
static inline uint8_t *fbRowPtr(int y)
{
    (void)y;
    return NULL;
}

static inline int clampi(int v, int lo, int hi)
{
    if (v < lo) return lo;
    if (v > hi) return hi;
    return v;
}

/* ========================================================================= */
/* basic framebuffer ops                                                     */
/* ========================================================================= */


void putPixel(int32_t x, int32_t y, uint8_t colIndex)
{
    if ((unsigned)x >= SCREEN_W) return;
    if ((unsigned)y >= SCREEN_H) return;
    drawbuffer[FB_INDEX(x, y)] = colIndex;
}

void drawLine(int x0, int y0, int x1, int y1, uint8_t colorIndex)
{
    int dx = abs(x1 - x0);
    int sx = (x0 < x1) ? 1 : -1;
    int dy = -abs(y1 - y0);
    int sy = (y0 < y1) ? 1 : -1;
    int err = dx + dy;

    for (;;) {
        if ((unsigned)x0 < SCREEN_W && (unsigned)y0 < SCREEN_H) {
            //fb[(y0 * SCREEN_W) + x0] = colorIndex;
            drawbuffer[FB_INDEX(x0, y0)] = colorIndex;
        }

        if (x0 == x1 && y0 == y1) {
            break;
        }

        const int e2 = err << 1;

        if (e2 >= dy) {
            err += dy;
            x0 += sx;
        }

        if (e2 <= dx) {
            err += dx;
            y0 += sy;
        }
    }
}

/* ========================================================================= */
/* dither helpers                                                            */
/* ========================================================================= */

static int hashNoise4bit(int x, int y)
{
    uint32_t n = (uint32_t)x;
    n *= 0x1f123bb5u;
    n += (uint32_t)y * 0x159a55e5u;
    n ^= n >> 15;
    n *= 0x85ebca6bu;
    n ^= n >> 13;
    n *= 0xc2b2ae35u;
    n ^= n >> 16;

    return (int)(n & 15u);
}

void resetRand(void)
{
    g_ditherSeed = 0x34188195;
}

static uint32_t fastRand(void){
    g_ditherSeed = (g_ditherSeed * 1664525u) + 1013904223u;
    return g_ditherSeed;
}

uint8_t shadeColor(uint8_t baseColor, int shade)
{
    if (shade < 0) shade = 0;
    if (shade >= MAX_PALETTE_SHADE_COUNT) return BLACK_SHADE_PALETTE;

    return (uint8_t)(PALETTE_SHADE_OFFSETS + (baseColor & 15) + (shade * 16));
}

static uint8_t ditherShadeColor(uint8_t baseColor, float shadeF, int x, int y, DitherMode mode)
{
    if (shadeF < 0.0f) shadeF = 0.0f;
    if (shadeF > (float)MAX_PALETTE_SHADE_INDEX) shadeF = (float)MAX_PALETTE_SHADE_INDEX;

    int s0 = (int)shadeF;
    int s1 = s0 + 1;
    if (s1 > (int)MAX_PALETTE_SHADE_COUNT) s1 = (int)MAX_PALETTE_SHADE_COUNT;

    const float frac = shadeF - (float)s0;

    int threshold;
    if (mode == DITHER_RANDOM) {
        threshold = hashNoise4bit(x, y);
    } else {
        threshold = bayer4x4[y & 3][x & 3];
    }

    return ((frac * 16.0f) > (float)threshold)
        ? shadeColor(baseColor, s1)
        : shadeColor(baseColor, s0);
}

/* ========================================================================= */
/* triangle helpers                                                          */
/* ========================================================================= */

static inline void triBounds(
    int x0, int y0, int x1, int y1, int x2, int y2,
    int *minX, int *minY, int *maxX, int *maxY)
{
    int mnx = x0;
    int mny = y0;
    int mxx = x0;
    int mxy = y0;

    if (x1 < mnx) mnx = x1;
    if (x2 < mnx) mnx = x2;
    if (y1 < mny) mny = y1;
    if (y2 < mny) mny = y2;

    if (x1 > mxx) mxx = x1;
    if (x2 > mxx) mxx = x2;
    if (y1 > mxy) mxy = y1;
    if (y2 > mxy) mxy = y2;

    *minX = mnx;
    *minY = mny;
    *maxX = mxx;
    *maxY = mxy;
}

static inline int triAreaInt(int x0, int y0, int x1, int y1, int x2, int y2)
{
    return ((x1 - x0) * (y2 - y0)) - ((y1 - y0) * (x2 - x0));
}

/* ========================================================================= */
/* z+dither banded fill                                                      */
/* ========================================================================= */


void fillTriangleFlat(
    int x0, int y0,
    int x1, int y1,
    int x2, int y2,
    uint16_t z0_in,
    uint16_t z1_in,
    uint16_t z2_in,
    float camz0,
    float camz1,
    float camz2,
    uint8_t baseColor,
    float shadeF
)
{
    typedef struct
    {
        float x, y;
        float q;
        float zq;
    } Vtx;

    Vtx v0, v1, v2, tv;
    uint8_t col;
    int shade;

    float long_dxdy, long_dqdy, long_dzqdy;
    float top_dxdy,  top_dqdy,  top_dzqdy;
    float bot_dxdy,  bot_dqdy,  bot_dzqdy;

    v0.x = (float)x0; v0.y = (float)y0;
    v1.x = (float)x1; v1.y = (float)y1;
    v2.x = (float)x2; v2.y = (float)y2;

    if (camz0 <= 0.0001f || camz1 <= 0.0001f || camz2 <= 0.0001f) return;

    v0.q  = 1.0f / camz0;
    v1.q  = 1.0f / camz1;
    v2.q  = 1.0f / camz2;

    v0.zq = (float)z0_in * v0.q;
    v1.zq = (float)z1_in * v1.q;
    v2.zq = (float)z2_in * v2.q;

    shade = (int)(shadeF + 0.5f);
    if (shade < 0) shade = 0;
    if (shade > (int)MAX_PALETTE_SHADE_INDEX) shade = (int)MAX_PALETTE_SHADE_INDEX;
    col = shadeColor(baseColor, shade);

    /* sort by y ascending */
    if (v1.y < v0.y) { tv = v0; v0 = v1; v1 = tv; }
    if (v2.y < v0.y) { tv = v0; v0 = v2; v2 = tv; }
    if (v2.y < v1.y) { tv = v1; v1 = v2; v2 = tv; }

    if ((int)(v0.y + 0.5f) == (int)(v2.y + 0.5f)) return;

    {
        const float dy_long = v2.y - v0.y;
        if (dy_long <= 0.0001f) return;

        long_dxdy  = (v2.x  - v0.x)  / dy_long;
        long_dqdy  = (v2.q  - v0.q)  / dy_long;
        long_dzqdy = (v2.zq - v0.zq) / dy_long;
    }

    if ((v1.y - v0.y) > 0.0001f) {
        const float dy_top = v1.y - v0.y;
        top_dxdy  = (v1.x  - v0.x)  / dy_top;
        top_dqdy  = (v1.q  - v0.q)  / dy_top;
        top_dzqdy = (v1.zq - v0.zq) / dy_top;
    } else {
        top_dxdy = top_dqdy = top_dzqdy = 0.0f;
    }

    if ((v2.y - v1.y) > 0.0001f) {
        const float dy_bot = v2.y - v1.y;
        bot_dxdy  = (v2.x  - v1.x)  / dy_bot;
        bot_dqdy  = (v2.q  - v1.q)  / dy_bot;
        bot_dzqdy = (v2.zq - v1.zq) / dy_bot;
    } else {
        bot_dxdy = bot_dqdy = bot_dzqdy = 0.0f;
    }

    /* ---------------- top half ---------------- */
    if ((v1.y - v0.y) > 0.0001f) {
        int yStart = (int)ceilf(v0.y);
        int yEnd   = (int)ceilf(v1.y) - 1;

        if (yStart < g_depthBandY0) yStart = g_depthBandY0;
        if (yEnd > g_depthBandY1) yEnd = g_depthBandY1;

        if (yStart <= yEnd) {
            const float py0 = (float)yStart + 0.5f;
            const float offLong = py0 - v0.y;
            const float offTop  = py0 - v0.y;

            float lx  = v0.x  + (long_dxdy  * offLong);
            float lq  = v0.q  + (long_dqdy  * offLong);
            float lzq = v0.zq + (long_dzqdy * offLong);

            float rx  = v0.x  + (top_dxdy   * offTop);
            float rq  = v0.q  + (top_dqdy   * offTop);
            float rzq = v0.zq + (top_dzqdy  * offTop);

            for (int y = yStart; y <= yEnd; y++) {
                float ax = lx,  aq = lq,  azq = lzq;
                float bx = rx,  bq = rq,  bzq = rzq;

                if (ax > bx) {
                    float tf;
                    tf = ax;  ax  = bx;  bx  = tf;
                    tf = aq;  aq  = bq;  bq  = tf;
                    tf = azq; azq = bzq; bzq = tf;
                }

                {
                    int xStart = (int)ceilf(ax);
                    int xEnd   = (int)ceilf(bx) - 1;

                    if (xStart < 0) xStart = 0;
                    if (xEnd >= SCREEN_W) xEnd = SCREEN_W - 1;

                    if (xStart <= xEnd) {
                        const float dx = bx - ax;
                        float q, zq, qStep, zqStep;

                        if (dx > 0.0001f) {
                            const float invDx = 1.0f / dx;
                            const float px0 = ((float)xStart + 0.5f) - ax;

                            qStep  = (bq  - aq)  * invDx;
                            zqStep = (bzq - azq) * invDx;

                            q  = aq  + (qStep  * px0);
                            zq = azq + (zqStep * px0);
                        } else {
                            q = aq;
                            zq = azq;
                            qStep = 0.0f;
                            zqStep = 0.0f;
                        }

                        uint16_t *zbp = &g_depthBufferBand[((y - g_depthBandY0) * SCREEN_W) + xStart];
                        uint8_t  *dst = &drawbuffer[FB_INDEX(xStart, y)];

                        int x = xStart;
                        while (x <= xEnd) {
                            int block = xEnd - x + 1;
                            if (block > zbufferaccurate) block = zbufferaccurate;

                            float q0 = q;
                            float zq0 = zq;
                            float z0, z1, zStep;

                            if (q0 <= 0.0000001f) {
                                int skip = block;
                                q  += qStep  * (float)skip;
                                zq += zqStep * (float)skip;
                                zbp += skip;
                                dst += SCREEN_H * skip;
                                x   += skip;
                                continue;
                            }

                            z0 = zq0 / q0;

                            if (block > 1) {
                                float q1  = q  + (qStep  * (float)(block - 1));
                                float zq1 = zq + (zqStep * (float)(block - 1));

                                if (q1 > 0.0000001f) {
                                    z1 = zq1 / q1;
                                    zStep = (z1 - z0) * (1.0f / (float)(block - 1));
                                } else {
                                    zStep = 0.0f;
                                }
                            } else {
                                zStep = 0.0f;
                            }

                            {
                                float z = z0;
                                for (int i = 0; i < block; i++) {
                                    float zc = z;
                                    uint16_t zi;

                                    if (zc < 0.0f) zc = 0.0f;
                                    if (zc > 65535.0f) zc = 65535.0f;

                                    zi = (uint16_t)(zc + 0.5f);

                                    if (zi < *zbp) {
                                        *zbp = zi;
                                        *dst = col;
                                    }

                                    z += zStep;
                                    zbp += 1;
                                    dst += SCREEN_H;
                                }
                            }

                            q  += qStep  * (float)block;
                            zq += zqStep * (float)block;
                            x  += block;
                        }
                    }
                }

                lx  += long_dxdy;
                lq  += long_dqdy;
                lzq += long_dzqdy;

                rx  += top_dxdy;
                rq  += top_dqdy;
                rzq += top_dzqdy;
            }
        }
    }

    /* ---------------- bottom half ---------------- */
    if ((v2.y - v1.y) > 0.0001f) {
        int yStart = (int)ceilf(v1.y);
        int yEnd   = (int)ceilf(v2.y) - 1;

        if (yStart < g_depthBandY0) yStart = g_depthBandY0;
        if (yEnd > g_depthBandY1) yEnd = g_depthBandY1;

        if (yStart <= yEnd) {
            const float py0 = (float)yStart + 0.5f;
            const float offLong = py0 - v0.y;
            const float offBot  = py0 - v1.y;

            float lx  = v0.x  + (long_dxdy  * offLong);
            float lq  = v0.q  + (long_dqdy  * offLong);
            float lzq = v0.zq + (long_dzqdy * offLong);

            float rx  = v1.x  + (bot_dxdy   * offBot);
            float rq  = v1.q  + (bot_dqdy   * offBot);
            float rzq = v1.zq + (bot_dzqdy  * offBot);

            for (int y = yStart; y <= yEnd; y++) {
                float ax = lx,  aq = lq,  azq = lzq;
                float bx = rx,  bq = rq,  bzq = rzq;

                if (ax > bx) {
                    float tf;
                    tf = ax;  ax  = bx;  bx  = tf;
                    tf = aq;  aq  = bq;  bq  = tf;
                    tf = azq; azq = bzq; bzq = tf;
                }

                {
                    int xStart = (int)ceilf(ax);
                    int xEnd   = (int)ceilf(bx) - 1;

                    if (xStart < 0) xStart = 0;
                    if (xEnd >= SCREEN_W) xEnd = SCREEN_W - 1;

                    if (xStart <= xEnd) {
                        const float dx = bx - ax;
                        float q, zq, qStep, zqStep;

                        if (dx > 0.0001f) {
                            const float invDx = 1.0f / dx;
                            const float px0 = ((float)xStart + 0.5f) - ax;

                            qStep  = (bq  - aq)  * invDx;
                            zqStep = (bzq - azq) * invDx;

                            q  = aq  + (qStep  * px0);
                            zq = azq + (zqStep * px0);
                        } else {
                            q = aq;
                            zq = azq;
                            qStep = 0.0f;
                            zqStep = 0.0f;
                        }

                        uint16_t *zbp = &g_depthBufferBand[((y - g_depthBandY0) * SCREEN_W) + xStart];
                        uint8_t  *dst = &drawbuffer[FB_INDEX(xStart, y)];

                        int x = xStart;
                        while (x <= xEnd) {
                            int block = xEnd - x + 1;
                            if (block > zbufferaccurate) block = zbufferaccurate;

                            float q0 = q;
                            float zq0 = zq;
                            float z0, z1, zStep;

                            if (q0 <= 0.0000001f) {
                                int skip = block;
                                q  += qStep  * (float)skip;
                                zq += zqStep * (float)skip;
                                zbp += skip;
                                dst += SCREEN_H * skip;
                                x   += skip;
                                continue;
                            }

                            z0 = zq0 / q0;

                            if (block > 1) {
                                float q1  = q  + (qStep  * (float)(block - 1));
                                float zq1 = zq + (zqStep * (float)(block - 1));

                                if (q1 > 0.0000001f) {
                                    z1 = zq1 / q1;
                                    zStep = (z1 - z0) * (1.0f / (float)(block - 1));
                                } else {
                                    zStep = 0.0f;
                                }
                            } else {
                                zStep = 0.0f;
                            }

                            {
                                float z = z0;
                                for (int i = 0; i < block; i++) {
                                    float zc = z;
                                    uint16_t zi;

                                    if (zc < 0.0f) zc = 0.0f;
                                    if (zc > 65535.0f) zc = 65535.0f;

                                    zi = (uint16_t)(zc + 0.5f);

                                    if (zi < *zbp) {
                                        *zbp = zi;
                                        *dst = col;
                                    }

                                    z += zStep;
                                    zbp += 1;
                                    dst += SCREEN_H;
                                }
                            }

                            q  += qStep  * (float)block;
                            zq += zqStep * (float)block;
                            x  += block;
                        }
                    }
                }

                lx  += long_dxdy;
                lq  += long_dqdy;
                lzq += long_dzqdy;

                rx  += bot_dxdy;
                rq  += bot_dqdy;
                rzq += bot_dzqdy;
            }
        }
    }
}


void fillTriangleDitherBayer(
    int x0, int y0,
    int x1, int y1,
    int x2, int y2,
    uint16_t z0_in,
    uint16_t z1_in,
    uint16_t z2_in,
    float camz0,
    float camz1,
    float camz2,
    uint8_t baseColor,
    float shadeF
)
{
    typedef struct
    {
        float x, y;
        float q;
        float zq;
    } Vtx;

    Vtx v0, v1, v2, tv;
    int s0, s1;
    float frac;
    int threshold16;
    uint8_t col0, col1;
    int solidFill;

    float long_dxdy, long_dqdy, long_dzqdy;
    float top_dxdy,  top_dqdy,  top_dzqdy;
    float bot_dxdy,  bot_dqdy,  bot_dzqdy;

    v0.x = (float)x0; v0.y = (float)y0;
    v1.x = (float)x1; v1.y = (float)y1;
    v2.x = (float)x2; v2.y = (float)y2;

    if (camz0 <= 0.0001f || camz1 <= 0.0001f || camz2 <= 0.0001f) return;

    v0.q  = 1.0f / camz0;
    v1.q  = 1.0f / camz1;
    v2.q  = 1.0f / camz2;

    v0.zq = (float)z0_in * v0.q;
    v1.zq = (float)z1_in * v1.q;
    v2.zq = (float)z2_in * v2.q;

    if (shadeF < 0.0f) shadeF = 0.0f;
    if (shadeF > (float)MAX_PALETTE_SHADE_INDEX) shadeF = (float)MAX_PALETTE_SHADE_INDEX;

    s0 = (int)shadeF;
    s1 = s0 + 1;
    if (s1 > (int)MAX_PALETTE_SHADE_COUNT) s1 = (int)MAX_PALETTE_SHADE_COUNT;

    frac = shadeF - (float)s0;
    threshold16 = (int)(frac * 16.0f);
    if (threshold16 < 0) threshold16 = 0;
    if (threshold16 > 15) threshold16 = 15;

    col0 = shadeColor(baseColor, s0);
    col1 = shadeColor(baseColor, s1);
    solidFill = (col0 == col1) || (threshold16 <= 0);

    /* sort by y ascending */
    if (v1.y < v0.y) { tv = v0; v0 = v1; v1 = tv; }
    if (v2.y < v0.y) { tv = v0; v0 = v2; v2 = tv; }
    if (v2.y < v1.y) { tv = v1; v1 = v2; v2 = tv; }

    if ((int)(v0.y + 0.5f) == (int)(v2.y + 0.5f)) return;

    {
        const float dy_long = v2.y - v0.y;
        if (dy_long <= 0.0001f) return;

        long_dxdy  = (v2.x  - v0.x)  / dy_long;
        long_dqdy  = (v2.q  - v0.q)  / dy_long;
        long_dzqdy = (v2.zq - v0.zq) / dy_long;
    }

    if ((v1.y - v0.y) > 0.0001f) {
        const float dy_top = v1.y - v0.y;
        top_dxdy  = (v1.x  - v0.x)  / dy_top;
        top_dqdy  = (v1.q  - v0.q)  / dy_top;
        top_dzqdy = (v1.zq - v0.zq) / dy_top;
    } else {
        top_dxdy = top_dqdy = top_dzqdy = 0.0f;
    }

    if ((v2.y - v1.y) > 0.0001f) {
        const float dy_bot = v2.y - v1.y;
        bot_dxdy  = (v2.x  - v1.x)  / dy_bot;
        bot_dqdy  = (v2.q  - v1.q)  / dy_bot;
        bot_dzqdy = (v2.zq - v1.zq) / dy_bot;
    } else {
        bot_dxdy = bot_dqdy = bot_dzqdy = 0.0f;
    }

    /* ---------------- top half ---------------- */
    if ((v1.y - v0.y) > 0.0001f) {
        int yStart = (int)ceilf(v0.y);
        int yEnd   = (int)ceilf(v1.y) - 1;

        if (yStart < g_depthBandY0) yStart = g_depthBandY0;
        if (yEnd > g_depthBandY1) yEnd = g_depthBandY1;

        if (yStart <= yEnd) {
            const float py0 = (float)yStart + 0.5f;
            const float offLong = py0 - v0.y;
            const float offTop  = py0 - v0.y;

            float lx  = v0.x  + (long_dxdy  * offLong);
            float lq  = v0.q  + (long_dqdy  * offLong);
            float lzq = v0.zq + (long_dzqdy * offLong);

            float rx  = v0.x  + (top_dxdy   * offTop);
            float rq  = v0.q  + (top_dqdy   * offTop);
            float rzq = v0.zq + (top_dzqdy  * offTop);

            for (int y = yStart; y <= yEnd; y++) {
                float ax = lx,  aq = lq,  azq = lzq;
                float bx = rx,  bq = rq,  bzq = rzq;

                if (ax > bx) {
                    float tf;
                    tf = ax;  ax  = bx;  bx  = tf;
                    tf = aq;  aq  = bq;  bq  = tf;
                    tf = azq; azq = bzq; bzq = tf;
                }

                {
                    int xStart = (int)ceilf(ax);
                    int xEnd   = (int)ceilf(bx) - 1;

                    if (xStart < 0) xStart = 0;
                    if (xEnd >= SCREEN_W) xEnd = SCREEN_W - 1;

                    if (xStart <= xEnd) {
                        const float dx = bx - ax;
                        float q, zq, qStep, zqStep;

                        if (dx > 0.0001f) {
                            const float invDx = 1.0f / dx;
                            const float px0 = ((float)xStart + 0.5f) - ax;

                            qStep  = (bq  - aq)  * invDx;
                            zqStep = (bzq - azq) * invDx;

                            q  = aq  + (qStep  * px0);
                            zq = azq + (zqStep * px0);
                        } else {
                            q = aq;
                            zq = azq;
                            qStep = 0.0f;
                            zqStep = 0.0f;
                        }

                        uint16_t *zbp = &g_depthBufferBand[((y - g_depthBandY0) * SCREEN_W) + xStart];
                        uint8_t  *dst = &drawbuffer[FB_INDEX(xStart, y)];
                        const uint8_t *brow = bayer4x4[y & 3];

                        int x = xStart;
                        while (x <= xEnd) {
                            int block = xEnd - x + 1;
                            if (block > zbufferaccurate) block = zbufferaccurate;

                            float q0 = q;
                            float zq0 = zq;
                            float z0, z1, zStep;

                            if (q0 <= 0.0000001f) {
                                int skip = block;
                                q  += qStep  * (float)skip;
                                zq += zqStep * (float)skip;
                                zbp += skip;
                                dst += SCREEN_H * skip;
                                x   += skip;
                                continue;
                            }

                            z0 = zq0 / q0;

                            if (block > 1) {
                                float q1  = q  + (qStep  * (float)(block - 1));
                                float zq1 = zq + (zqStep * (float)(block - 1));

                                if (q1 > 0.0000001f) {
                                    z1 = zq1 / q1;
                                    zStep = (z1 - z0) * (1.0f / (float)(block - 1));
                                } else {
                                    zStep = 0.0f;
                                }
                            } else {
                                zStep = 0.0f;
                            }

                            {
                                float z = z0;
                                for (int i = 0; i < block; i++) {
                                    float zc = z;
                                    uint16_t zi;

                                    if (zc < 0.0f) zc = 0.0f;
                                    if (zc > 65535.0f) zc = 65535.0f;

                                    zi = (uint16_t)(zc + 0.5f);

                                    if (zi < *zbp) {
                                        *zbp = zi;
                                        *dst = solidFill ? col0 : ((brow[(x + i) & 3] < threshold16) ? col1 : col0);
                                    }

                                    z += zStep;
                                    zbp += 1;
                                    dst += SCREEN_H;
                                }
                            }

                            q  += qStep  * (float)block;
                            zq += zqStep * (float)block;
                            x  += block;
                        }
                    }
                }

                lx  += long_dxdy;
                lq  += long_dqdy;
                lzq += long_dzqdy;

                rx  += top_dxdy;
                rq  += top_dqdy;
                rzq += top_dzqdy;
            }
        }
    }
    

    /* ---------------- bottom half ---------------- */
    if ((v2.y - v1.y) > 0.0001f) {
        int yStart = (int)ceilf(v1.y);
        int yEnd   = (int)ceilf(v2.y) - 1;

        if (yStart < g_depthBandY0) yStart = g_depthBandY0;
        if (yEnd > g_depthBandY1) yEnd = g_depthBandY1;

        if (yStart <= yEnd) {
            const float py0 = (float)yStart + 0.5f;
            const float offLong = py0 - v0.y;
            const float offBot  = py0 - v1.y;

            float lx  = v0.x  + (long_dxdy  * offLong);
            float lq  = v0.q  + (long_dqdy  * offLong);
            float lzq = v0.zq + (long_dzqdy * offLong);

            float rx  = v1.x  + (bot_dxdy   * offBot);
            float rq  = v1.q  + (bot_dqdy   * offBot);
            float rzq = v1.zq + (bot_dzqdy  * offBot);

            for (int y = yStart; y <= yEnd; y++) {
                float ax = lx,  aq = lq,  azq = lzq;
                float bx = rx,  bq = rq,  bzq = rzq;

                if (ax > bx) {
                    float tf;
                    tf = ax;  ax  = bx;  bx  = tf;
                    tf = aq;  aq  = bq;  bq  = tf;
                    tf = azq; azq = bzq; bzq = tf;
                }

                {
                    int xStart = (int)ceilf(ax);
                    int xEnd   = (int)ceilf(bx) - 1;

                    if (xStart < 0) xStart = 0;
                    if (xEnd >= SCREEN_W) xEnd = SCREEN_W - 1;

                    if (xStart <= xEnd) {
                        const float dx = bx - ax;
                        float q, zq, qStep, zqStep;

                        if (dx > 0.0001f) {
                            const float invDx = 1.0f / dx;
                            const float px0 = ((float)xStart + 0.5f) - ax;

                            qStep  = (bq  - aq)  * invDx;
                            zqStep = (bzq - azq) * invDx;

                            q  = aq  + (qStep  * px0);
                            zq = azq + (zqStep * px0);
                        } else {
                            q = aq;
                            zq = azq;
                            qStep = 0.0f;
                            zqStep = 0.0f;
                        }

                        uint16_t *zbp = &g_depthBufferBand[((y - g_depthBandY0) * SCREEN_W) + xStart];
                        uint8_t  *dst = &drawbuffer[FB_INDEX(xStart, y)];
                        const uint8_t *brow = bayer4x4[y & 3];

                        int x = xStart;
                        while (x <= xEnd) {
                            int block = xEnd - x + 1;
                            if (block > zbufferaccurate) block = zbufferaccurate;

                            float q0 = q;
                            float zq0 = zq;
                            float z0, z1, zStep;

                            if (q0 <= 0.0000001f) {
                                int skip = block;
                                q  += qStep  * (float)skip;
                                zq += zqStep * (float)skip;
                                zbp += skip;
                                dst += SCREEN_H * skip;
                                x   += skip;
                                continue;
                            }

                            z0 = zq0 / q0;

                            if (block > 1) {
                                float q1  = q  + (qStep  * (float)(block - 1));
                                float zq1 = zq + (zqStep * (float)(block - 1));

                                if (q1 > 0.0000001f) {
                                    z1 = zq1 / q1;
                                    zStep = (z1 - z0) * (1.0f / (float)(block - 1));
                                } else {
                                    zStep = 0.0f;
                                }
                            } else {
                                zStep = 0.0f;
                            }

                            {
                                float z = z0;
                                for (int i = 0; i < block; i++) {
                                    float zc = z;
                                    uint16_t zi;

                                    if (zc < 0.0f) zc = 0.0f;
                                    if (zc > 65535.0f) zc = 65535.0f;

                                    zi = (uint16_t)(zc + 0.5f);

                                    if (zi < *zbp) {
                                        *zbp = zi;
                                        *dst = solidFill ? col0 : ((brow[(x + i) & 3] < threshold16) ? col1 : col0);
                                    }

                                    z += zStep;
                                    zbp += 1;
                                    dst += SCREEN_H;
                                }
                            }

                            q  += qStep  * (float)block;
                            zq += zqStep * (float)block;
                            x  += block;
                        }
                    }
                }

                lx  += long_dxdy;
                lq  += long_dqdy;
                lzq += long_dzqdy;

                rx  += bot_dxdy;
                rq  += bot_dqdy;
                rzq += bot_dzqdy;
            }
        }
    }
}



void fillTriangleDitherBayerT(
    int x0, int y0,
    int x1, int y1,
    int x2, int y2,
    uint16_t z0_in,
    uint16_t z1_in,
    uint16_t z2_in,
    float camz0,
    float camz1,
    float camz2,
    uint8_t baseColor,
    uint8_t transparancy,
    float shadeF
)
{
    typedef struct
    {
        float x, y;
        float q;
        float zq;
    } Vtx;

    Vtx v0, v1, v2, tv;
    int s0, s1;
    float frac;
    int threshold16;
    int transThreshold16;
    uint8_t col0, col1;
    int solidFill;

    float long_dxdy, long_dqdy, long_dzqdy;
    float top_dxdy,  top_dqdy,  top_dzqdy;
    float bot_dxdy,  bot_dqdy,  bot_dzqdy;

    v0.x = (float)x0; v0.y = (float)y0;
    v1.x = (float)x1; v1.y = (float)y1;
    v2.x = (float)x2; v2.y = (float)y2;

    if (camz0 <= 0.0001f || camz1 <= 0.0001f || camz2 <= 0.0001f) return;

    v0.q  = 1.0f / camz0;
    v1.q  = 1.0f / camz1;
    v2.q  = 1.0f / camz2;

    v0.zq = (float)z0_in * v0.q;
    v1.zq = (float)z1_in * v1.q;
    v2.zq = (float)z2_in * v2.q;

    if (shadeF < 0.0f) shadeF = 0.0f;
    if (shadeF > (float)MAX_PALETTE_SHADE_INDEX) shadeF = (float)MAX_PALETTE_SHADE_INDEX;

    s0 = (int)shadeF;
    s1 = s0 + 1;
    if (s1 > (int)MAX_PALETTE_SHADE_COUNT) s1 = (int)MAX_PALETTE_SHADE_COUNT;

    frac = shadeF - (float)s0;
    threshold16 = (int)(frac * 16.0f);
    if (threshold16 < 0) threshold16 = 0;
    if (threshold16 > 15) threshold16 = 15;

    /* 0 = solid, 255 = fully invisible */
    transThreshold16 = (((int)transparancy * 17) >> 8);
    if (transThreshold16 < 0) transThreshold16 = 0;
    if (transThreshold16 > 16) transThreshold16 = 16;

    col0 = shadeColor(baseColor, s0);
    col1 = shadeColor(baseColor, s1);
    solidFill = (col0 == col1) || (threshold16 <= 0);

    /* sort by y ascending */
    if (v1.y < v0.y) { tv = v0; v0 = v1; v1 = tv; }
    if (v2.y < v0.y) { tv = v0; v0 = v2; v2 = tv; }
    if (v2.y < v1.y) { tv = v1; v1 = v2; v2 = tv; }

    if ((int)(v0.y + 0.5f) == (int)(v2.y + 0.5f)) return;

    {
        const float dy_long = v2.y - v0.y;
        if (dy_long <= 0.0001f) return;

        long_dxdy  = (v2.x  - v0.x)  / dy_long;
        long_dqdy  = (v2.q  - v0.q)  / dy_long;
        long_dzqdy = (v2.zq - v0.zq) / dy_long;
    }

    if ((v1.y - v0.y) > 0.0001f) {
        const float dy_top = v1.y - v0.y;
        top_dxdy  = (v1.x  - v0.x)  / dy_top;
        top_dqdy  = (v1.q  - v0.q)  / dy_top;
        top_dzqdy = (v1.zq - v0.zq) / dy_top;
    } else {
        top_dxdy = top_dqdy = top_dzqdy = 0.0f;
    }

    if ((v2.y - v1.y) > 0.0001f) {
        const float dy_bot = v2.y - v1.y;
        bot_dxdy  = (v2.x  - v1.x)  / dy_bot;
        bot_dqdy  = (v2.q  - v1.q)  / dy_bot;
        bot_dzqdy = (v2.zq - v1.zq) / dy_bot;
    } else {
        bot_dxdy = bot_dqdy = bot_dzqdy = 0.0f;
    }

    /* ---------------- top half ---------------- */
    if ((v1.y - v0.y) > 0.0001f) {
        int yStart = (int)ceilf(v0.y);
        int yEnd   = (int)ceilf(v1.y) - 1;

        if (yStart < g_depthBandY0) yStart = g_depthBandY0;
        if (yEnd > g_depthBandY1) yEnd = g_depthBandY1;

        if (yStart <= yEnd) {
            const float py0 = (float)yStart + 0.5f;
            const float offLong = py0 - v0.y;
            const float offTop  = py0 - v0.y;

            float lx  = v0.x  + (long_dxdy  * offLong);
            float lq  = v0.q  + (long_dqdy  * offLong);
            float lzq = v0.zq + (long_dzqdy * offLong);

            float rx  = v0.x  + (top_dxdy   * offTop);
            float rq  = v0.q  + (top_dqdy   * offTop);
            float rzq = v0.zq + (top_dzqdy  * offTop);

            for (int y = yStart; y <= yEnd; y++) {
                float ax = lx,  aq = lq,  azq = lzq;
                float bx = rx,  bq = rq,  bzq = rzq;

                if (ax > bx) {
                    float tf;
                    tf = ax;  ax  = bx;  bx  = tf;
                    tf = aq;  aq  = bq;  bq  = tf;
                    tf = azq; azq = bzq; bzq = tf;
                }

                {
                    int xStart = (int)ceilf(ax);
                    int xEnd   = (int)ceilf(bx) - 1;

                    if (xStart < 0) xStart = 0;
                    if (xEnd >= SCREEN_W) xEnd = SCREEN_W - 1;

                    if (xStart <= xEnd) {
                        const float dx = bx - ax;
                        float q, zq, qStep, zqStep;

                        if (dx > 0.0001f) {
                            const float invDx = 1.0f / dx;
                            const float px0 = ((float)xStart + 0.5f) - ax;

                            qStep  = (bq  - aq)  * invDx;
                            zqStep = (bzq - azq) * invDx;

                            q  = aq  + (qStep  * px0);
                            zq = azq + (zqStep * px0);
                        } else {
                            q = aq;
                            zq = azq;
                            qStep = 0.0f;
                            zqStep = 0.0f;
                        }

                        uint16_t *zbp = &g_depthBufferBand[((y - g_depthBandY0) * SCREEN_W) + xStart];
                        uint8_t  *dst = &drawbuffer[FB_INDEX(xStart, y)];
                        const uint8_t *brow = bayer4x4[y & 3];

                        int x = xStart;
                        while (x <= xEnd) {
                            int block = xEnd - x + 1;
                            if (block > zbufferaccurate) block = zbufferaccurate;

                            float q0 = q;
                            float zq0 = zq;
                            float z0, z1, zStep;

                            if (q0 <= 0.0000001f) {
                                int skip = block;
                                q  += qStep  * (float)skip;
                                zq += zqStep * (float)skip;
                                zbp += skip;
                                dst += SCREEN_H * skip;
                                x   += skip;
                                continue;
                            }

                            z0 = zq0 / q0;

                            if (block > 1) {
                                float q1  = q  + (qStep  * (float)(block - 1));
                                float zq1 = zq + (zqStep * (float)(block - 1));

                                if (q1 > 0.0000001f) {
                                    z1 = zq1 / q1;
                                    zStep = (z1 - z0) * (1.0f / (float)(block - 1));
                                } else {
                                    zStep = 0.0f;
                                }
                            } else {
                                zStep = 0.0f;
                            }

                            {
                                float z = z0;
                                for (int i = 0; i < block; i++) {
                                    float zc = z;
                                    uint16_t zi;
                                    uint8_t b;

                                    if (zc < 0.0f) zc = 0.0f;
                                    if (zc > 65535.0f) zc = 65535.0f;

                                    zi = (uint16_t)(zc + 0.5f);
                                    b = brow[(x + i) & 3];

                                    if (zi < *zbp) {
                                        if (b >= transThreshold16) {
                                            *zbp = zi;
                                            *dst = solidFill ? col0 : ((b < threshold16) ? col1 : col0);
                                        }
                                    }

                                    z += zStep;
                                    zbp += 1;
                                    dst += SCREEN_H;
                                }
                            }

                            q  += qStep  * (float)block;
                            zq += zqStep * (float)block;
                            x  += block;
                        }
                    }
                }

                lx  += long_dxdy;
                lq  += long_dqdy;
                lzq += long_dzqdy;

                rx  += top_dxdy;
                rq  += top_dqdy;
                rzq += top_dzqdy;
            }
        }
    }

    /* ---------------- bottom half ---------------- */
    if ((v2.y - v1.y) > 0.0001f) {
        int yStart = (int)ceilf(v1.y);
        int yEnd   = (int)ceilf(v2.y) - 1;

        if (yStart < g_depthBandY0) yStart = g_depthBandY0;
        if (yEnd > g_depthBandY1) yEnd = g_depthBandY1;

        if (yStart <= yEnd) {
            const float py0 = (float)yStart + 0.5f;
            const float offLong = py0 - v0.y;
            const float offBot  = py0 - v1.y;

            float lx  = v0.x  + (long_dxdy  * offLong);
            float lq  = v0.q  + (long_dqdy  * offLong);
            float lzq = v0.zq + (long_dzqdy * offLong);

            float rx  = v1.x  + (bot_dxdy   * offBot);
            float rq  = v1.q  + (bot_dqdy   * offBot);
            float rzq = v1.zq + (bot_dzqdy  * offBot);

            for (int y = yStart; y <= yEnd; y++) {
                float ax = lx,  aq = lq,  azq = lzq;
                float bx = rx,  bq = rq,  bzq = rzq;

                if (ax > bx) {
                    float tf;
                    tf = ax;  ax  = bx;  bx  = tf;
                    tf = aq;  aq  = bq;  bq  = tf;
                    tf = azq; azq = bzq; bzq = tf;
                }

                {
                    int xStart = (int)ceilf(ax);
                    int xEnd   = (int)ceilf(bx) - 1;

                    if (xStart < 0) xStart = 0;
                    if (xEnd >= SCREEN_W) xEnd = SCREEN_W - 1;

                    if (xStart <= xEnd) {
                        const float dx = bx - ax;
                        float q, zq, qStep, zqStep;

                        if (dx > 0.0001f) {
                            const float invDx = 1.0f / dx;
                            const float px0 = ((float)xStart + 0.5f) - ax;

                            qStep  = (bq  - aq)  * invDx;
                            zqStep = (bzq - azq) * invDx;

                            q  = aq  + (qStep  * px0);
                            zq = azq + (zqStep * px0);
                        } else {
                            q = aq;
                            zq = azq;
                            qStep = 0.0f;
                            zqStep = 0.0f;
                        }

                        uint16_t *zbp = &g_depthBufferBand[((y - g_depthBandY0) * SCREEN_W) + xStart];
                        uint8_t  *dst = &drawbuffer[FB_INDEX(xStart, y)];
                        const uint8_t *brow = bayer4x4[y & 3];

                        int x = xStart;
                        while (x <= xEnd) {
                            int block = xEnd - x + 1;
                            if (block > zbufferaccurate) block = zbufferaccurate;

                            float q0 = q;
                            float zq0 = zq;
                            float z0, z1, zStep;

                            if (q0 <= 0.0000001f) {
                                int skip = block;
                                q  += qStep  * (float)skip;
                                zq += zqStep * (float)skip;
                                zbp += skip;
                                dst += SCREEN_H * skip;
                                x   += skip;
                                continue;
                            }

                            z0 = zq0 / q0;

                            if (block > 1) {
                                float q1  = q  + (qStep  * (float)(block - 1));
                                float zq1 = zq + (zqStep * (float)(block - 1));

                                if (q1 > 0.0000001f) {
                                    z1 = zq1 / q1;
                                    zStep = (z1 - z0) * (1.0f / (float)(block - 1));
                                } else {
                                    zStep = 0.0f;
                                }
                            } else {
                                zStep = 0.0f;
                            }

                            {
                                float z = z0;
                                for (int i = 0; i < block; i++) {
                                    float zc = z;
                                    uint16_t zi;
                                    uint8_t b;

                                    if (zc < 0.0f) zc = 0.0f;
                                    if (zc > 65535.0f) zc = 65535.0f;

                                    zi = (uint16_t)(zc + 0.5f);
                                    b = brow[(x + i) & 3];

                                    if (zi < *zbp) {
                                        if (b >= transThreshold16) {
                                            *zbp = zi;
                                            *dst = solidFill ? col0 : ((b < threshold16) ? col1 : col0);
                                        }
                                    }

                                    z += zStep;
                                    zbp += 1;
                                    dst += SCREEN_H;
                                }
                            }

                            q  += qStep  * (float)block;
                            zq += zqStep * (float)block;
                            x  += block;
                        }
                    }
                }

                lx  += long_dxdy;
                lq  += long_dqdy;
                lzq += long_dzqdy;

                rx  += bot_dxdy;
                rq  += bot_dqdy;
                rzq += bot_dzqdy;
            }
        }
    }
}


void fillTriangleDitherBayer2Mode(
    int x0, int y0,
    int x1, int y1,
    int x2, int y2,
    uint16_t z0_in,
    uint16_t z1_in,
    uint16_t z2_in,
    float camz0,
    float camz1,
    float camz2,
    uint8_t baseColor,
    float shadeF
)
{
    typedef struct
    {
        float x, y;
        float q;
        float zq;
    } Vtx;

    Vtx v0, v1, v2, tv;
    uint8_t col0, col1;

    float long_dxdy, long_dqdy, long_dzqdy;
    float top_dxdy,  top_dqdy,  top_dzqdy;
    float bot_dxdy,  bot_dqdy,  bot_dzqdy;

    int threshold16;
    int solidBase;
    int solidBlack;

    v0.x = (float)x0; v0.y = (float)y0;
    v1.x = (float)x1; v1.y = (float)y1;
    v2.x = (float)x2; v2.y = (float)y2;

    if (camz0 <= 0.0001f || camz1 <= 0.0001f || camz2 <= 0.0001f) return;

    v0.q  = 1.0f / camz0;
    v1.q  = 1.0f / camz1;
    v2.q  = 1.0f / camz2;

    v0.zq = (float)z0_in * v0.q;
    v1.zq = (float)z1_in * v1.q;
    v2.zq = (float)z2_in * v2.q;

    if (shadeF < 0.0f) shadeF = 0.0f;
    if (shadeF > (float)MAX_PALETTE_SHADE_INDEX) shadeF = (float)MAX_PALETTE_SHADE_INDEX;

    col0 = baseColor;
    col1 = BLACK_SHADE_PALETTE;

    threshold16 = (int)((shadeF / MAX_PALETTE_SHADE_COUNT) * 16.0f);
    if (threshold16 < 0) threshold16 = 0;
    if (threshold16 > 16) threshold16 = 16;

    solidBase  = (threshold16 <= 0);
    solidBlack = (threshold16 >= 16);

    /* sort by y ascending */
    if (v1.y < v0.y) { tv = v0; v0 = v1; v1 = tv; }
    if (v2.y < v0.y) { tv = v0; v0 = v2; v2 = tv; }
    if (v2.y < v1.y) { tv = v1; v1 = v2; v2 = tv; }

    if ((int)(v0.y + 0.5f) == (int)(v2.y + 0.5f)) return;

    {
        const float dy_long = v2.y - v0.y;
        if (dy_long <= 0.0001f) return;

        long_dxdy  = (v2.x  - v0.x)  / dy_long;
        long_dqdy  = (v2.q  - v0.q)  / dy_long;
        long_dzqdy = (v2.zq - v0.zq) / dy_long;
    }

    if ((v1.y - v0.y) > 0.0001f) {
        const float dy_top = v1.y - v0.y;
        top_dxdy  = (v1.x  - v0.x)  / dy_top;
        top_dqdy  = (v1.q  - v0.q)  / dy_top;
        top_dzqdy = (v1.zq - v0.zq) / dy_top;
    } else {
        top_dxdy = top_dqdy = top_dzqdy = 0.0f;
    }

    if ((v2.y - v1.y) > 0.0001f) {
        const float dy_bot = v2.y - v1.y;
        bot_dxdy  = (v2.x  - v1.x)  / dy_bot;
        bot_dqdy  = (v2.q  - v1.q)  / dy_bot;
        bot_dzqdy = (v2.zq - v1.zq) / dy_bot;
    } else {
        bot_dxdy = bot_dqdy = bot_dzqdy = 0.0f;
    }

    /* ---------------- top half ---------------- */
    if ((v1.y - v0.y) > 0.0001f) {
        int yStart = (int)ceilf(v0.y);
        int yEnd   = (int)ceilf(v1.y) - 1;

        if (yStart < g_depthBandY0) yStart = g_depthBandY0;
        if (yEnd > g_depthBandY1) yEnd = g_depthBandY1;

        if (yStart <= yEnd) {
            const float py0 = (float)yStart + 0.5f;
            const float offLong = py0 - v0.y;
            const float offTop  = py0 - v0.y;

            float lx  = v0.x  + (long_dxdy  * offLong);
            float lq  = v0.q  + (long_dqdy  * offLong);
            float lzq = v0.zq + (long_dzqdy * offLong);

            float rx  = v0.x  + (top_dxdy   * offTop);
            float rq  = v0.q  + (top_dqdy   * offTop);
            float rzq = v0.zq + (top_dzqdy  * offTop);

            for (int y = yStart; y <= yEnd; y++) {
                float ax = lx,  aq = lq,  azq = lzq;
                float bx = rx,  bq = rq,  bzq = rzq;

                if (ax > bx) {
                    float tf;
                    tf = ax;  ax  = bx;  bx  = tf;
                    tf = aq;  aq  = bq;  bq  = tf;
                    tf = azq; azq = bzq; bzq = tf;
                }

                {
                    int xStart = (int)ceilf(ax);
                    int xEnd   = (int)ceilf(bx) - 1;

                    if (xStart < 0) xStart = 0;
                    if (xEnd >= SCREEN_W) xEnd = SCREEN_W - 1;

                    if (xStart <= xEnd) {
                        const float dx = bx - ax;
                        float q, zq, qStep, zqStep;

                        if (dx > 0.0001f) {
                            const float invDx = 1.0f / dx;
                            const float px0 = ((float)xStart + 0.5f) - ax;

                            qStep  = (bq  - aq)  * invDx;
                            zqStep = (bzq - azq) * invDx;

                            q  = aq  + (qStep  * px0);
                            zq = azq + (zqStep * px0);
                        } else {
                            q = aq;
                            zq = azq;
                            qStep = 0.0f;
                            zqStep = 0.0f;
                        }

                        uint16_t *zbp = &g_depthBufferBand[((y - g_depthBandY0) * SCREEN_W) + xStart];
                        uint8_t  *dst = &drawbuffer[FB_INDEX(xStart, y)];
                        const uint8_t *brow = bayer4x4[y & 3];

                        int x = xStart;
                        while (x <= xEnd) {
                            int block = xEnd - x + 1;
                            if (block > zbufferaccurate) block = zbufferaccurate;

                            float q0 = q;
                            float zq0 = zq;
                            float z0, z1, zStep;

                            if (q0 <= 0.0000001f) {
                                int skip = block;
                                q  += qStep  * (float)skip;
                                zq += zqStep * (float)skip;
                                zbp += skip;
                                dst += SCREEN_H * skip;
                                x   += skip;
                                continue;
                            }

                            z0 = zq0 / q0;

                            if (block > 1) {
                                float q1  = q  + (qStep  * (float)(block - 1));
                                float zq1 = zq + (zqStep * (float)(block - 1));

                                if (q1 > 0.0000001f) {
                                    z1 = zq1 / q1;
                                    zStep = (z1 - z0) * (1.0f / (float)(block - 1));
                                } else {
                                    zStep = 0.0f;
                                }
                            } else {
                                zStep = 0.0f;
                            }

                            {
                                float z = z0;
                                for (int i = 0; i < block; i++) {
                                    float zc = z;
                                    uint16_t zi;

                                    if (zc < 0.0f) zc = 0.0f;
                                    if (zc > 65535.0f) zc = 65535.0f;

                                    zi = (uint16_t)(zc + 0.5f);

                                    if (zi < *zbp) {
                                        *zbp = zi;

                                        if (solidBase)       *dst = col0;
                                        else if (solidBlack) *dst = col1;
                                        else                 *dst = (brow[(x + i) & 3] < threshold16) ? col1 : col0;
                                    }

                                    z += zStep;
                                    zbp += 1;
                                    dst += SCREEN_H;
                                }
                            }

                            q  += qStep  * (float)block;
                            zq += zqStep * (float)block;
                            x  += block;
                        }
                    }
                }

                lx  += long_dxdy;
                lq  += long_dqdy;
                lzq += long_dzqdy;

                rx  += top_dxdy;
                rq  += top_dqdy;
                rzq += top_dzqdy;
            }
        }
    }

    /* ---------------- bottom half ---------------- */
    if ((v2.y - v1.y) > 0.0001f) {
        int yStart = (int)ceilf(v1.y);
        int yEnd   = (int)ceilf(v2.y) - 1;

        if (yStart < g_depthBandY0) yStart = g_depthBandY0;
        if (yEnd > g_depthBandY1) yEnd = g_depthBandY1;

        if (yStart <= yEnd) {
            const float py0 = (float)yStart + 0.5f;
            const float offLong = py0 - v0.y;
            const float offBot  = py0 - v1.y;

            float lx  = v0.x  + (long_dxdy  * offLong);
            float lq  = v0.q  + (long_dqdy  * offLong);
            float lzq = v0.zq + (long_dzqdy * offLong);

            float rx  = v1.x  + (bot_dxdy   * offBot);
            float rq  = v1.q  + (bot_dqdy   * offBot);
            float rzq = v1.zq + (bot_dzqdy  * offBot);

            for (int y = yStart; y <= yEnd; y++) {
                float ax = lx,  aq = lq,  azq = lzq;
                float bx = rx,  bq = rq,  bzq = rzq;

                if (ax > bx) {
                    float tf;
                    tf = ax;  ax  = bx;  bx  = tf;
                    tf = aq;  aq  = bq;  bq  = tf;
                    tf = azq; azq = bzq; bzq = tf;
                }

                {
                    int xStart = (int)ceilf(ax);
                    int xEnd   = (int)ceilf(bx) - 1;

                    if (xStart < 0) xStart = 0;
                    if (xEnd >= SCREEN_W) xEnd = SCREEN_W - 1;

                    if (xStart <= xEnd) {
                        const float dx = bx - ax;
                        float q, zq, qStep, zqStep;

                        if (dx > 0.0001f) {
                            const float invDx = 1.0f / dx;
                            const float px0 = ((float)xStart + 0.5f) - ax;

                            qStep  = (bq  - aq)  * invDx;
                            zqStep = (bzq - azq) * invDx;

                            q  = aq  + (qStep  * px0);
                            zq = azq + (zqStep * px0);
                        } else {
                            q = aq;
                            zq = azq;
                            qStep = 0.0f;
                            zqStep = 0.0f;
                        }

                        uint16_t *zbp = &g_depthBufferBand[((y - g_depthBandY0) * SCREEN_W) + xStart];
                        uint8_t  *dst = &drawbuffer[FB_INDEX(xStart, y)];
                        const uint8_t *brow = bayer4x4[y & 3];

                        int x = xStart;
                        while (x <= xEnd) {
                            int block = xEnd - x + 1;
                            if (block > zbufferaccurate) block = zbufferaccurate;

                            float q0 = q;
                            float zq0 = zq;
                            float z0, z1, zStep;

                            if (q0 <= 0.0000001f) {
                                int skip = block;
                                q  += qStep  * (float)skip;
                                zq += zqStep * (float)skip;
                                zbp += skip;
                                dst += SCREEN_H * skip;
                                x   += skip;
                                continue;
                            }

                            z0 = zq0 / q0;

                            if (block > 1) {
                                float q1  = q  + (qStep  * (float)(block - 1));
                                float zq1 = zq + (zqStep * (float)(block - 1));

                                if (q1 > 0.0000001f) {
                                    z1 = zq1 / q1;
                                    zStep = (z1 - z0) * (1.0f / (float)(block - 1));
                                } else {
                                    zStep = 0.0f;
                                }
                            } else {
                                zStep = 0.0f;
                            }

                            {
                                float z = z0;
                                for (int i = 0; i < block; i++) {
                                    float zc = z;
                                    uint16_t zi;

                                    if (zc < 0.0f) zc = 0.0f;
                                    if (zc > 65535.0f) zc = 65535.0f;

                                    zi = (uint16_t)(zc + 0.5f);

                                    if (zi < *zbp) {
                                        *zbp = zi;

                                        if (solidBase)       *dst = col0;
                                        else if (solidBlack) *dst = col1;
                                        else                 *dst = (brow[(x + i) & 3] < threshold16) ? col1 : col0;
                                    }

                                    z += zStep;
                                    zbp += 1;
                                    dst += SCREEN_H;
                                }
                            }

                            q  += qStep  * (float)block;
                            zq += zqStep * (float)block;
                            x  += block;
                        }
                    }
                }

                lx  += long_dxdy;
                lq  += long_dqdy;
                lzq += long_dzqdy;

                rx  += bot_dxdy;
                rq  += bot_dqdy;
                rzq += bot_dzqdy;
            }
        }
    }
}


