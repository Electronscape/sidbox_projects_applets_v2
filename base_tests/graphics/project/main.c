#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <math.h>

#include "main.h"

#include "graphics/graphics.h"
#include "apis.h"

MEMALIGN4 int sbx = 4;
MEMALIGN4 int sby = 4;
MEMALIGN4 int sbsx = 4;
MEMALIGN4 int sbsy = 4;

gfx_bitmap_t *bm1, *bm2;
volatile uint8_t gdb = 0;

// ===================== RNG =====================
static uint32_t rng_state = 0x12345678u;

static uint32_t sbx_rng_u32(void) {
    uint32_t x = rng_state;
    x ^= x << 13;
    x ^= x >> 17;
    x ^= x << 5;
    rng_state = x;
    return x;
}

static int16_t sbx_rng_range(int16_t lo, int16_t hi) {
    uint32_t r = sbx_rng_u32();
    return (int16_t)(lo + (r % (uint32_t)(hi - lo + 1)));
}

// ===================== LINE (clipped) =====================
static void gfx_plot_clip(int x, int y) {
    //if((x>0) && (x < 479) && (y>0) && (y<319) )
    API->gfx->gfx_primative->rectf(x, y, 3, 3);
}

void gfx_line(int x0, int y0, int x1, int y1)
{
    int dx = (x1 > x0) ? (x1 - x0) : (x0 - x1);
    int sx = (x0 < x1) ? 1 : -1;

    int dy = (y1 > y0) ? -(y1 - y0) : -(y0 - y1);
    int sy = (y0 < y1) ? 1 : -1;

    int err = dx + dy;

    while (1) {
        gfx_plot_clip(x0, y0);

        if (x0 == x1 && y0 == y1) break;

        int e2 = err << 1;

        if (e2 >= dy) { err += dy; x0 += sx; }
        if (e2 <= dx) { err += dx; y0 += sy; }
    }
}

// ===================== WORMS =====================
#define WORM_COUNT 40
#define WORM_W 6
#define WORM_H 6

#define WORM_X_MIN 8
#define WORM_Y_MIN 8
#define WORM_X_MAX (480 - (WORM_W + 8))
#define WORM_Y_MAX (320 - (WORM_H + 8))

#define TURN_STEP 4
#define WALL_MARGIN 24
#define SPEED_MIN 2
#define SPEED_MAX 5

#define WORM_TRAIL_LEN 20   // longer worms

typedef struct MEMALIGN32 {
    int16_t x, y;
    uint8_t ang;       // 0..255
    uint8_t speed;
    uint8_t col;

    int16_t trail_x[WORM_TRAIL_LEN];
    int16_t trail_y[WORM_TRAIL_LEN];
    uint8_t trail_head;
} sbx_worm_t;

static sbx_worm_t MEMALIGN32 worms[WORM_COUNT];

// quarter-wave sine table 0..90deg => Q7 (0..127)
static const int8_t sin_q7_0_90[65] = {
    0,   3,   6,   9,   12,  16,  19,  22, 
    25,  28,  31,  34,  37,  40,  43,  46,
    49,  51,  54,  57,  60,  62,  65,  67, 
    70,  72,  75,  77,  79,  82,  84,  86,
    88,  90,  92,  94,  96,  98,  100, 102, 
    103, 105, 107, 108, 110, 111, 113, 114,
    115, 117, 118, 119, 120, 121, 122, 123, 
    124, 124, 125, 126, 126, 127, 127, 127, 
    127
};

// Correct quadrant/mirroring mapping
static int8_t sin_q7_u8(uint8_t a)
{
    uint8_t q = a >> 6;      // 0..3
    uint8_t o = a & 63;      // 0..63
    uint8_t idx = (uint8_t)((o * 64u) / 63u); // 0..64

    int8_t s;
    switch (q) {
        case 0: s = sin_q7_0_90[idx];         return s;
        case 1: s = sin_q7_0_90[64 - idx];    return s;
        case 2: s = sin_q7_0_90[idx];         return (int8_t)-s;
        default:s = sin_q7_0_90[64 - idx];    return (int8_t)-s;
    }
}

static int8_t cos_q7_u8(uint8_t a) {
    return sin_q7_u8((uint8_t)(a + 64));
}

static uint8_t ang_step_toward(uint8_t cur, uint8_t target, uint8_t step) {
    uint8_t d = (uint8_t)(target - cur);
    if (d == 0) return cur;

    if (d < 128) {
        if (d < step) return target;
        return (uint8_t)(cur + step);
    } else {
        uint8_t cw = (uint8_t)(256 - d);
        if (cw < step) return target;
        return (uint8_t)(cur - step);
    }
}

void sbx_init_worms(uint32_t seed, uint8_t base_col) {
    rng_state = seed ? seed : 0xA5A5A5A5u;

    for (int i = 0; i < WORM_COUNT; i++) {
        sbx_worm_t *w = &worms[i];

        w->x = sbx_rng_range(WORM_X_MIN, WORM_X_MAX);
        w->y = sbx_rng_range(WORM_Y_MIN, WORM_Y_MAX);

        w->ang = (uint8_t)sbx_rng_u32();
        w->speed = (uint8_t)sbx_rng_range(SPEED_MIN, SPEED_MAX);
        w->col = (uint8_t)(base_col + (sbx_rng_u32() & 0x0F));

        w->trail_head = 0;
        for (int t = 0; t < WORM_TRAIL_LEN; t++) {
            w->trail_x[t] = w->x;
            w->trail_y[t] = w->y;
        }
    }
}

void sbx_update_draw_worms(void){
    for (int i = 0; i < WORM_COUNT; i++) {
        sbx_worm_t *w = &worms[i];

        uint8_t desired = w->ang;

        if (w->x < (WORM_X_MIN + WALL_MARGIN)) desired = 0;
        else if (w->x > (WORM_X_MAX - WALL_MARGIN)) desired = 128;

        if (w->y < (WORM_Y_MIN + WALL_MARGIN)) desired = 64;
        else if (w->y > (WORM_Y_MAX - WALL_MARGIN)) desired = 192;

        w->ang = ang_step_toward(w->ang, desired, TURN_STEP);

        // tiny wander
        if ((sbx_rng_u32() & 31u) == 0u) {
            int8_t jitter = (int8_t)sbx_rng_range(-3, 3);
            w->ang = (uint8_t)(w->ang + jitter);
        }

        int16_t dx = ((int16_t)cos_q7_u8(w->ang) * (int16_t)w->speed) / 127;
        int16_t dy = ((int16_t)sin_q7_u8(w->ang) * (int16_t)w->speed) / 127;

        w->x += dx;
        w->y += dy;

        if (w->x < WORM_X_MIN) w->x = WORM_X_MIN;
        if (w->x > WORM_X_MAX) w->x = WORM_X_MAX;
        if (w->y < WORM_Y_MIN) w->y = WORM_Y_MIN;
        if (w->y > WORM_Y_MAX) w->y = WORM_Y_MAX;

        // store new position in trail
        w->trail_x[w->trail_head] = w->x;
        w->trail_y[w->trail_head] = w->y;
        w->trail_head++;
        if (w->trail_head >= WORM_TRAIL_LEN) w->trail_head = 0;

        API->gfx->gfx_primative->setcolour(w->col);

        // draw oldest -> newest
        int idx = w->trail_head;
        for (int t = 0; t < WORM_TRAIL_LEN - 1; t++) {
            int a = idx;
            int b = idx + 1;
            if (b >= WORM_TRAIL_LEN) b = 0;

            gfx_line(w->trail_x[a], w->trail_y[a],
                     w->trail_x[b], w->trail_y[b]);

            idx = b;
        }
    }
}


int main(int argc, char *argv[]) {
    DIVZEROOFF;
    //printf("GOD ITS LIKE WATCHING A BULL FIGHT!!\n"); 
    //printf("------------------------------------\n");
    //printf("Graphics API Version: %u\n", GFXAPI_VERSION);
    //printf("NEW API system\n");

    //const API_GFX_PRIMATIVES * volatile MEMALIGN4 const prim = API->gfx->gfx_primative; // adjust type name to yours
    //const API_GFX_HARDWARE   * volatile MEMALIGN4 const ghw  = API->gfx->gfx_hardware;
    //printf("GFX API %08X\n", (unsigned)prim);


    // hardware preps //
    // display set up //
    API->gfx->gfx_hardware->setlcd(220, 60);    // base setup at 60hz
    API->gfx->gfx_hardware->setdisplaymode(480, 320, 480, 320, DISPFLAG_SINGLELAYER | DISPFLAG_NOSCROLLABLE);   // flags is zero really



    volatile MEMALIGN4 uint8_t colindex = 0;
    volatile MEMALIGN4 uint16_t step = 0;
    


    bm1 = API->gfx->gfx_hardware->getdrawbuffer();
    bm2 = API->gfx->gfx_hardware->getshowbuffer();

    API->hwl->gamemode();

    //sbx_init_boxes(122, 4);
    sbx_init_worms(144, 80);
    
    API->gfx->gfx_hardware->usebuffer(bm1); 
    //API->gfx->gfx_primative->cls();
    API->gfx->gfx_primative->setcolour(29);
    API->gfx->gfx_primative->rectf(30, 30, 64, 64);


    API->gfx->gfx_hardware->usebuffer(bm2);
    //API->gfx->gfx_primative->cls();
    API->gfx->gfx_primative->setcolour(13);
    API->gfx->gfx_primative->rectf(130, 60, 64, 64);

    
    
    for(;;) {
        //

        colindex++;
        colindex &= 0xff;
        

        //disable_irq();

        //prim->setcolour(colindex);
        //prim->rectf(sbx, sby, 8, 8);

        
        API->gfx->gfx_hardware->vwait();
        gdb = 1 - gdb;
        if(gdb) {
            API->gfx->gfx_hardware->showbuffer(bm1);	// set the buffer to go to LCD output
            API->gfx->gfx_hardware->usebuffer(bm2);
        }
        else    {
            API->gfx->gfx_hardware->showbuffer(bm2);
            API->gfx->gfx_hardware->usebuffer(bm1);
        }
        
        API->gfx->gfx_primative->cls();
        sbx_update_draw_worms();
        API->gfx->gfx_hardware->displaynow();
            
        asm("nop");
    }
    
    return 0x00;
}

