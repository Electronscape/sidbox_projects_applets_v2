// file: gfx.c

#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#include "apis.h"
#include "gfx.h"

// basic colour look up table, for use with the graphics memory look up

uint32_t clut[256] = {
    0x00000000, 0xFFAFAFAF, 0xFFFFFFFF, 0xFF3B67A2, 0xFFAA907C, 0xFF959595, 0xFF7B7B7B, 0xFFFFA997,
    0xFF37A91D, 0xFF7CA9FF, 0xFFBF8112, 0xFFEBBF66, 0xFF78C178, 0xFF3D9318, 0xFFB33418, 0xFFD9311C,
    0xFF000000, 0xFF00000E, 0xFF00001D, 0xFF00002B, 0xFF000139, 0xFF000147, 0xFF000156, 0xFF000164,
    0xFF0001D2, 0xFF0001FF, 0xFFCECECE, 0xFF00FF00, 0xFFB2FF00, 0xFFFFE700, 0xFFFF9600, 0xFFFF1100,
    0xFF491200, 0xFF491355, 0xFF4914AA, 0xFF4916FF, 0xFF5B1700, 0xFF5B1855, 0xFF5B19AA, 0xFF5B1AFF,
    0xFF6D1B00, 0xFF6D1C55, 0xFF00E300, 0xFF85FF54, 0xFFC4FF00, 0xFFFFD900, 0xFFFFA41F, 0xFFE05400,
    0xFFFF0000, 0xFF922655, 0xFF9227AA, 0xFF9228FF, 0xFFA42900, 0xFFA42A55, 0xFFA42BAA, 0xFFA42CFF,
    0xFFB62D00, 0xFFB62F55, 0xFFB630AA, 0xFFB631FF, 0xFFC93200, 0xFFC93355, 0xFFC934AA, 0xFFC935FF,
    0xFFDB3700, 0xFFDB3855, 0xFFDB39AA, 0xFFDB3AFF, 0xFFED3B00, 0xFFED3C55, 0xFFED3DAA, 0xFFED3FFF,
    0xFFFF4000, 0xFFFF4155, 0xFFFF42AA, 0xFFFF43FF, 0xFF004400, 0xFF004555, 0xFF0046AA, 0xFF0048FF,
    0xFFFFFF00, 0xFF12FF55, 0xFF12EE55, 0xFF12B6FF, 0xFF001FFF, 0xFF9D0EC7, 0xFFF10000, 0xFFFF7700,
    0xFF375200, 0xFF375355, 0xFF3754AA, 0xFF3755FF, 0xFF495600, 0xFF495855, 0xFF4959AA, 0xFF495AFF,
    0xFF5B5B00, 0xFF5B5C55, 0xFF5B5DAA, 0xFF5B5EFF, 0xFF6D6000, 0xFF6D6155, 0xFF6D62AA, 0xFF6D63FF,
    0xFF6D6400, 0xFF806555, 0xFF8066AA, 0xFF8067FF, 0xFF926900, 0xFF926A55, 0xFF926BAA, 0xFF926CFF,
    0xFFA46D00, 0xFFA46E55, 0xFFA46FAA, 0xFFA471FF, 0xFFB67200, 0xFFB67355, 0xFFB674AA, 0xFFB675FF,
    0xFFC97600, 0xFFC97755, 0xFFC979AA, 0xFFC97AFF, 0xFFDB7B00, 0xFFDB7C55, 0xFFDB7DAA, 0xFFDB7EFF,
    0xFFED7F00, 0xFFED8055, 0xFFED82AA, 0xFFED83FF, 0xFFFF8400, 0xFFFF8555, 0xFFFF86AA, 0xFFFF87FF,
    0xFF008800, 0xFF008A55, 0xFF008BAA, 0xFF008CFF, 0xFF128D00, 0xFF128E55, 0xFF128FAA, 0xFF1290FF,
    0xFF249200, 0xFF249355, 0xFF2494AA, 0xFF2495FF, 0xFF379600, 0xFF379755, 0xFF3798AA, 0xFF3799FF,
    0xFF499B00, 0xFF499C55, 0xFF499DAA, 0xFF499EFF, 0xFF5B9F00, 0xFF5BA055, 0xFF5BA1AA, 0xFF5BA3FF,
    0xFFA4B5D5, 0xFFA0B0F8, 0xFF94A3E6, 0xFF7C89C1, 0xFF6281C0, 0xFF1C62A1, 0xFF4254EA, 0xFF62A1BD,
    0xFF7093C0, 0xFF4977A1, 0xFF003FAA, 0xFF1554FF, 0xFF1C50B9, 0xFF00B3FF, 0xFF0088AA, 0xFF00B5FF,
    0xFF0E62FF, 0xFF5EB7E3, 0xFFBDC0B9, 0xFF85B9FF, 0xFF006CAF, 0xFF1F81B9, 0xFF3F5BAA, 0xFFC9BEFF,
    0xFF5BAFCB, 0xFFDBC055, 0xFFDBC1AA, 0xFFBDC0C0, 0xFFEDC400, 0xFFEDC555, 0xFFEDC6AA, 0xFFEDC7FF,
    0xFFFFC800, 0xFFFFC955, 0xFFFFCAAA, 0xFFFFCCFF, 0xFF00CD00, 0xFF00CE55, 0xFF00CFAA, 0xFF00D0FF,
    0xFF12D100, 0xFF12D255, 0xFF12D3AA, 0xFF12D5FF, 0xFF24D600, 0xFF24D755, 0xFF24D8AA, 0xFF24D9FF,
    0xFF37DA00, 0xFF37DB55, 0xFF37DDAA, 0xFF37DEFF, 0xFF49DF00, 0xFF49E055, 0xFF49E1AA, 0xFF49E2FF,
    0xFF5BE300, 0xFF5BE555, 0xFF5BE6AA, 0xFF5BE7FF, 0xFF6DE800, 0xFF6DE955, 0xFF6DEAAA, 0xFF6DEBFF,
    0xFF6DEC00, 0xFF80EE55, 0xFF80EFAA, 0xFF80F0FF, 0xFF93CEA2, 0xFF92F255, 0xFF92F3AA, 0xFF92F4FF,
    0xFFA4F600, 0xFFA4F755, 0xFFA4F8AA, 0xFFA4F9FF, 0xFFB6FA00, 0xFFB6FB55, 0xFFB6FCAA, 0xFFB6FEFF,
    0xFFC9FF00, 0xFFC9FF55, 0xFFC9FFAA, 0xFFC9FFFF, 0xFFDBFF00, 0xFFDBFF55, 0xFFDBFFAA, 0xFFDBFFFF,
    0xFFEDFF00, 0xFFEDFF55, 0xFFEDFFAA, 0xFFEDFFFF, 0xFFFFFF00, 0xFFFFFF55, 0xFFFFFFAA, 0xFFFFFFFF
};



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

        if (yStart < 0) yStart = 0;
        if (yEnd >= SCREEN_H) yEnd = SCREEN_H - 1;

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

                        uint16_t *zbp = &g_depthBuffer[(y * SCREEN_W) + xStart];
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

        if (yStart < 0) yStart = 0;
        if (yEnd >= SCREEN_H) yEnd = SCREEN_H - 1;

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

                        uint16_t *zbp = &g_depthBuffer[(y * SCREEN_W) + xStart];
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

        if (yStart < 0) yStart = 0;
        if (yEnd >= SCREEN_H) yEnd = SCREEN_H - 1;

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

                        uint16_t *zbp = &g_depthBuffer[(y * SCREEN_W) + xStart];
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

        if (yStart < 0) yStart = 0;
        if (yEnd >= SCREEN_H) yEnd = SCREEN_H - 1;

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

                        uint16_t *zbp = &g_depthBuffer[(y * SCREEN_W) + xStart];
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

        if (yStart < 0) yStart = 0;
        if (yEnd >= SCREEN_H) yEnd = SCREEN_H - 1;

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

                        uint16_t *zbp = &g_depthBuffer[(y * SCREEN_W) + xStart];
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

        if (yStart < 0) yStart = 0;
        if (yEnd >= SCREEN_H) yEnd = SCREEN_H - 1;

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

                        uint16_t *zbp = &g_depthBuffer[(y * SCREEN_W) + xStart];
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



/* ========================================================================= */
/* misc drawing                                                              */
/* ========================================================================= */

uint32_t darken(uint32_t c, float f)
{
    uint8_t r = (c >> 16) & 0xFF;
    uint8_t g = (c >> 8)  & 0xFF;
    uint8_t b = (c >> 0)  & 0xFF;

    r = (uint8_t)(r * f);
    g = (uint8_t)(g * f);
    b = (uint8_t)(b * f);

    return (0xFFu << 24) | ((uint32_t)r << 16) | ((uint32_t)g << 8) | b;
}

void drawRect(int x, int y, int w, int h, uint8_t col)
{
    if (w <= 0 || h <= 0) return;

    int x0 = x;
    int y0 = y;
    int x1 = x + w - 1;
    int y1 = y + h - 1;

    if (x0 < 0) x0 = 0;
    if (y0 < 0) y0 = 0;
    if (x1 >= SCREEN_W) x1 = SCREEN_W - 1;
    if (y1 >= SCREEN_H) y1 = SCREEN_H - 1;

    if (x0 > x1 || y0 > y1) return;

    for (int xx = x0; xx <= x1; xx++) {
        uint8_t *dst = &drawbuffer[FB_INDEX(xx, y0)];
        for (int yy = y0; yy <= y1; yy++) {
            *dst++ = col;
        }
    }
}
