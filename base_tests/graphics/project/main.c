#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <math.h>

#include "main.h"


#include "apis.h"
#include "graphics/graphics.h"
#include "audio/audio.h"

//extern uint8_t snd1Test[];
//uint8_t rockybottom[512 * 192];
uint8_t *rockybottom;
uint8_t *snd1Test;


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



MEMALIGN4 int sbx = 4;
MEMALIGN4 int sby = 4;
MEMALIGN4 int sbsx = 4;
MEMALIGN4 int sbsy = 4;

gfx_bitmap_t *bm1, *bm2;
volatile uint8_t gdb = 0;

#define WORM_COUNT 10
#define WORM_W 16
#define WORM_H 16

#define WORM_X_MIN 8
#define WORM_Y_MIN 8
#define WORM_X_MAX (480 - (WORM_W + 8))
#define WORM_Y_MAX (320 - (WORM_H + 8))

#define TURN_STEP 4
#define WALL_MARGIN 24
#define SPEED_MIN 2
#define SPEED_MAX 5

#define WORM_TRAIL_LEN 40   // longer worms

#define max_astroids    32

typedef struct {
    int16_t x, y, sx, sy;
    int8_t frame;
    uint8_t frames; // speed 
    uint8_t framei; // frame timer index
    int8_t framed;
} stroids;

stroids astroids[max_astroids];

void initAstroids(){
    for(int16_t a = 0; a < max_astroids; a ++){
        astroids[a].x = sbx_rng_range(-60, 480-4);
        astroids[a].y = sbx_rng_range(-60, 320-4);

        do{
            astroids[a].sx = sbx_rng_range(-3, 3);
        } while(astroids[a].sx == 0);   // ensure its NOT 0

        do{
            astroids[a].sy = sbx_rng_range(-3, 3);
        } while(astroids[a].sy == 0);

        astroids[a].frame = sbx_rng_range(0, 23);
        astroids[a].frames = sbx_rng_range(1, 3);
        if(sbx_rng_range(1,4) % 2)
            astroids[a].framed = 1;
        else
            astroids[a].framed = -1;
        
    }
}

void proc_astroids(){
    for(int16_t a = 0; a < max_astroids; a++){
        astroids[a].framei ++;
        if(astroids[a].framei > astroids[a].frames) {
            astroids[a].framei = 0;
            astroids[a].frame += astroids[a].framed;
            if(astroids[a].frame < 0) astroids[a].frame = 23;
            if(astroids[a].frame > 23) astroids[a].frame = 0;
        }
        astroids[a].x += astroids[a].sx;
        astroids[a].y += astroids[a].sy;

        if(astroids[a].x > 480) astroids[a].x = -64;
        if(astroids[a].y > 320) astroids[a].y = -64;
        if(astroids[a].x < -64) astroids[a].x = 480;
        if(astroids[a].y <- 64) astroids[a].y = 320;

        int16_t x, y, frameid;

        x = astroids[a].x;
        y = astroids[a].y;
        frameid = astroids[a].frame;

        gfx_blitcell(rockybottom, x, y, 512, 192, 64, 64, frameid);

    }

}


uint32_t frontclut[256] = {
    0x00FF00FF, 0xFFAFAFAF, 0xFFFFFFFF, 0xFF3B67A2, 0xFFAA907C, 0xFF959595, 0xFF7B7B7B, 0xFFFFA997,
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
    0xFF10152B, 0xFF151B31, 0xFF1A2138, 0xFF20273F, 0xFF252D46, 0xFF2B334D, 0xFF303A54, 0xFF36405A,
    0xFF3B4661, 0xFF414C68, 0xFF46526F, 0xFF4C5976, 0xFF515F7D, 0xFF576583, 0xFF5C6B8A, 0xFF627191,
    0xFF677898, 0xFF6D7E9F, 0xFF7284A6, 0xFF788AAC, 0xFF7D90B3, 0xFF8397BA, 0xFF889DC1, 0xFF8EA3C8,
    0xFF93A9CF, 0xFFA2B5D5, 0xFFB1C1DC, 0xFFC1CDE3, 0xFFD0DAEA, 0xFFE0E6F1, 0xFFEFF2F8, 0xFFFFFFFF,
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



// ===================== LINE (clipped) =====================
static void gfx_plot_clip(int x, int y) {
    //if((x>0) && (x < 479) && (y>0) && (y<319) )
    //API->gfx->gfx_primative->rectf(x, y, 3, 3);
    gfx_rectf(x,y, WORM_W, WORM_H);
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

        //API->gfx->gfx_primative->setcolour(w->col);
        gfx_setcolour(w->col);

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
    //DIVZEROOFF;
    configure_runmode(GAMEMODE_PROFILE_1);
    printf("GOD ITS LIKE WATCHING A BULL FIGHT!!\n"); 
    printf("------------------------------------\n");
    printf("Graphics API Version: %u\n", GFXAPI_VERSION);
    printf("NEW API system\n");

    initMalloc();   // go memory!! yey

    //const API_GFX_PRIMATIVES * volatile MEMALIGN4 const prim = API->gfx->gfx_primative; // adjust type name to yours
    //const API_GFX_HARDWARE   * volatile MEMALIGN4 const ghw  = API->gfx->gfx_hardware;
    //printf("GFX API %08X\n", (unsigned)prim);


    // hardware preps //
    // display set up //
    gfx_setlcd(DEFAULT_RENDER_ORDER, FPS_50);
    //gfx_mode(480, 320, 480, 320, DISPFLAG_DUALLAYER | DISPFLAG_NOSCROLLABLE);
    gfx_mode(480, 320, 480, 320, DISPFLAG_SINGLELAYER | DISPFLAG_NOSCROLLABLE);
    set_audio_dma(512); // a few ms about 7ms enough for a full frame.
    set_music_dma = 1;

    char restext[128];

    uint32_t samplelen;
    samplelen = LoadSFX("extralife.wav", &snd1Test);
    
    sound_assign(0, snd1Test, samplelen, 0);
    sound_setfrequency(0, 44100);
    sound_play(0);
    sound_setvolume(0, 240);
    sound_setpanning(0, 0);
    sound_setloop(0, 200, 4433);
    sound_enableloop(0, 1);
    

    frontclut[0] = 0x00000000;

    gfx_usefpalette(frontclut);

    bm1 = gfx_getdrawbuffer();
    bm2 = gfx_getshowbuffer();

    

    sbx_init_worms(144, 80);
    initAstroids();

    //music_play("music/1_67YT-Turrican_III_Remix.sid", 0);
    music_play("level1.mod", 0);
    //music_play("/music/s3m.testmain5.s3m", 0);
    //music_play("/music/wavs/games/dhero32/05 - Level 2.wav", 0);



    rockybottom = malloc(512 * 192);
    LoadPPB("ast1.ppb", rockybottom);
    
       
    gfx_showbuffer(bm1);
    gfx_usebuffer(bm1);
    uint8_t sndPlayCnt = 0;
    int8_t panSound = -127;
    uint8_t loopy  = 0;
    uint8_t rotorspeed = 0;
    uint8_t frameid = 0;
    
    for(;;) {
        
        gfx_lcdwait();
        
        gdb = 1 - gdb;
        
        if(gdb) gfx_dispbuffer(bm1, bm2);
        else    gfx_dispbuffer(bm2, bm1);
        
        gfx_cls();
        //sbx_update_draw_worms();

        proc_astroids();

        sndPlayCnt++;
        if(sndPlayCnt>100) {
            sndPlayCnt = 0;
            sound_stop(0);  // will allow to re-trigger 
            sound_play(0);
            loopy = 1 - loopy;
            sound_enableloop(0, loopy);
        }
        panSound++;
        sound_setpanning(0, panSound);
       
        //if(gdb) 
        //music_update();
        
        //sysevents();
        //gfx_lcdwait();

        gfx_displaynow();
    

        
        //asm("nop");
    }
    
    return 0x00;
}
