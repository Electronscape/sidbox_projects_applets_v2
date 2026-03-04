#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <math.h>

#include "main.h"

#include "apis.h"
#include "graphics/graphics.h"
#include "audio/audio.h"


uint8_t *snd1Test;
uint8_t *snd2firem;


volatile uint32_t MEMALIGN32 frontclut[256] = {
    0x00000000, 0xFFB68954, 0xFFEACE73, 0xFFD09242, 0xFFDFAE4F, 0xFFE6D2B8, 0xFFFC02FC, 0xFFDBB37D,
    0xFFF2E986, 0xFFA26E44, 0xFF726568, 0xFFADADAA, 0xFF6B4F4C, 0xFFFBFAE7, 0xFF918F94, 0xFFC17A34,
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
    0xFF393C5C, 0xFFB68954, 0xFFEACC5F, 0xFFD0903A, 0xFFD6AA56, 0xFFCCCAC2, 0xFFFC02FC, 0xFFD7A87A,
    0xFFF2E986, 0xFF5E667F, 0xFF9B643E, 0xFFC17A34, 0xFFCC9860, 0xFFF7F3B9, 0xFFEACF85, 0xFFE5A941,
    0xFFA6A6A5, 0xFF664E4F, 0xFF858793, 0xFF835F4C, 0xFFA77549, 0xFFB39380, 0xFF777B8A, 0xFFEDD5B5,
    0xFF494C68, 0xFFFCFDF3, 0xFFDEB97F, 0xFFE69B29, 0xFF82543E, 0xFFB7B7B3, 0xFF95979E, 0xFFE9B751,
    0xFFFC02FC, 0xFFFCFEFC, 0xFF3C4753, 0xFF070809, 0xFF141821, 0xFF51575D, 0xFF333738, 0xFF22272D,
    0xFF1E2A4C, 0xFF2E3A51, 0xFF6A737E, 0xFF43545E, 0xFF596568, 0xFF34487A, 0xFF48587C, 0xFF596979,
    0xFF74777E, 0xFFB6B4B7, 0xFF434B66, 0xFFAEA9AD, 0xFF131727, 0xFF969197, 0xFFC2C0C0, 0xFF202C50,
    0xFF505057, 0xFF2D3146, 0xFF6F6D73, 0xFF5A6077, 0xFF242A37, 0xFF8C8F95, 0xFF32394F, 0xFF374A81,
    0xFF3A4060, 0xFFB68954, 0xFFEACE73, 0xFFD09242, 0xFFDFAE4F, 0xFFE6D2B8, 0xFFFC02FC, 0xFFDBB37D,
    0xFFF2E986, 0xFFA26E44, 0xFF726568, 0xFFADADAA, 0xFF6B4F4C, 0xFFFBFAE7, 0xFF918F94, 0xFFC17A34,
    0xFF171921, 0xFF978570, 0xFFFC02FC, 0xFF4C4847, 0xFFCBBCAA, 0xFFB6957E, 0xFF0B1000, 0xFF726758,
    0xFFA99982, 0xFF867360, 0xFF2A3041, 0xFFE3D7C1, 0xFF60554A, 0xFFB9A58C, 0xFF403A3C, 0xFF271B27,
    0xFF111623, 0xFF738E92, 0xFFFC02FC, 0xFF3C5369, 0xFFB2D1D3, 0xFF3A5AA7, 0xFF5E717A, 0xFF243557,
    0xFF9698B0, 0xFF857C9D, 0xFFD3DEE8, 0xFF86A9A8, 0xFF496EC3, 0xFF9CB3BA, 0xFF5C87EC, 0xFFE6F4F4,
    0xFF040204, 0xFF8F8F8F, 0xFFD0D0D0, 0xFF585658, 0xFF717171, 0xFF303030, 0xFFB2B0B2, 0xFFF9FBF9,
    0xFF5BE300, 0xFF5BE555, 0xFF5BE6AA, 0xFF5BE7FF, 0xFF6DE800, 0xFF6DE955, 0xFF6DEAAA, 0xFF6DEBFF,
    0xFF07080A, 0xFF8D8834, 0xFFFC02FC, 0xFF3C4753, 0xFF33487A, 0xFF6B1F24, 0xFF586568, 0xFF22282D,
    0xFF535325, 0xFF596979, 0xFF1E2A4C, 0xFFCCC45A, 0xFFBCB45E, 0xFF6A737E, 0xFF43545E, 0xFF51575E,
    0xFF7B868E, 0xFF847B2B, 0xFFC0CBD0, 0xFFF4F5F6, 0xFFA1A9AD, 0xFF66685A, 0xFF4D3932, 0xFF91969A,
    0xFF48587C, 0xFF333738, 0xFF2E3A51, 0xFFB0B9BD, 0xFF757637, 0xFF4B6BC1, 0xFF9C9737, 0xFF141921
};

volatile uint32_t MEMALIGN32 backclut[256] = {
    0x00040409, 0xFF9B8384, 0xFF851A1B, 0xFF2A446B, 0xFF8B4F4E, 0xFFCAC3BE, 0xFF460E10, 0xFFC9847F,
    0xFFC55151, 0xFFC7A4A2, 0xFF876F72, 0xFF1B2347, 0xFF443140, 0xFF57444A, 0xFF8D3433, 0xFFE9A4A2,
    0xFF232556, 0xFFE78483, 0xFF57657E, 0xFFA9504E, 0xFFC86D6A, 0xFFA86D68, 0xFF9CAABC, 0xFF692729,
    0xFFAC3536, 0xFFF7E3DF, 0xFF61437A, 0xFF660E0F, 0xFFA78583, 0xFFEAC4C1, 0xFF290E0D, 0xFF894442,
    0xFFE56F70, 0xFFAC9391, 0xFFC8B4B3, 0xFF22345A, 0xFFEAB4B1, 0xFFC9948E, 0xFF2C6264, 0xFF384583,
    0xFF1E324B, 0xFF473367, 0xFFA9615E, 0xFFEBD4D2, 0xFF845887, 0xFFE89492, 0xFF5C5360, 0xFFA87D84,
    0xFF84729C, 0xFF866568, 0xFFC87873, 0xFFA97976, 0xFF8C777A, 0xFF2F2332, 0xFF663D73, 0xFF38345A,
    0xFF4A1B1A, 0xFF681E1F, 0xFF733837, 0xFF9E3434, 0xFFA98D98, 0xFF12142C, 0xFF9C2625, 0xFFC86260,
    0xFF424257, 0xFFDAA49F, 0xFF60546F, 0xFF241638, 0xFF7C4241, 0xFFB8504E, 0xFFF5A4A3, 0xFFA14542,
    0xFFF5B4B2, 0xFFB88480, 0xFFD9B4B1, 0xFFD99490, 0xFFD98481, 0xFF892928, 0xFFB79492, 0xFFF49494,
    0xFF99504E, 0xFFF6C4C2, 0xFF493C5E, 0xFFAF4645, 0xFF483842, 0xFF782828, 0xFF2F2540, 0xFF79646A,
    0xFFB96D6A, 0xFF191C3F, 0xFF9A6C69, 0xFF564558, 0xFFF7D4D1, 0xFF24192B, 0xFF8E3C3B, 0xFF781D1B,
    0xFFF48585, 0xFFD87A78, 0xFF570E10, 0xFFD76E6D, 0xFF362E60, 0xFFE67B7A, 0xFF3B548A, 0xFFB8625F,
    0xFF39336D, 0xFFD9C4C0, 0xFFDD6465, 0xFF243B5F, 0xFFBCB5B1, 0xFF6D555B, 0xFFB97975, 0xFF967B7C,
    0xFF141B33, 0xFF6C5674, 0xFFB492B2, 0xFFC6ADBC, 0xFF944645, 0xFF6E778F, 0xFF9A615E, 0xFF591C1D,
    0xFF445571, 0xFF1C2B4B, 0xFFEBBCB9, 0xFF9A5855, 0xFF543E4A, 0xFF322C43, 0xFF2E506E, 0xFFA95856,
    0xFF942B2B, 0xFF347A6C, 0xFF8895A8, 0xFFF5F2EA, 0xFF6F447A, 0xFF47669C, 0xFFBBA3A2, 0xFF987A94,
    0xFF8482A4, 0xFF393346, 0xFF865F96, 0xFF6C6D8F, 0xFF1C0B10, 0xFF5B2726, 0xFF64738E, 0xFF485B7C,
    0xFF5A3B72, 0xFF64529C, 0xFF381112, 0xFFD4595A, 0xFF761616, 0xFF464587, 0xFFDBCFC9, 0xFF584284,
    0xFF464569, 0xFF6D4E57, 0xFFB57D84, 0xFF3B1614, 0xFFA49EB4, 0xFF55366C, 0xFF946E97, 0xFFB68D94,
    0xFFBD4849, 0xFF6F5C6C, 0xFFBBBABE, 0xFF9C9AA4, 0xFF872121, 0xFF222C59, 0xFFAD3D3C, 0xFFFAEBE7,
    0xFF615B72, 0xFF7C6B71, 0xFF715C61, 0xFFC4C6D8, 0xFF443E82, 0xFFACA49F, 0xFF0B0C1A, 0xFF8B5957,
    0xFFCA8C87, 0xFF624C4B, 0xFFE9ACAA, 0xFF574E74, 0xFFEACCC9, 0xFFC9BCBA, 0xFFC89C98, 0xFFE89C9A,
    0xFF382C32, 0xFF9D2D2D, 0xFFD9ACA9, 0xFF241C45, 0xFFB85856, 0xFFF5ACAB, 0xFFF5BCBA, 0xFFD8BCBA,
    0xFFDA9C98, 0xFFD98C88, 0xFFF6CCCA, 0xFF792F30, 0xFF5B4C5A, 0xFFF8DCD8, 0xFF774C7E, 0xFF5C4D94,
    0xFF454B6B, 0xFF24122C, 0xFFDCCAD3, 0xFF485A9C, 0xFF908CAC, 0xFF24234A, 0xFF2C335F, 0xFF7C5387,
    0xFF7C5A8C, 0xFF34466C, 0xFFF47274, 0xFF7C3839, 0xFFD46362, 0xFF946694, 0xFF9C8A88, 0xFFC75857,
    0xFFC7ACAA, 0xFFE88C8B, 0xFF6A2F2E, 0xFF671516, 0xFFA88C8A, 0xFFAB9B99, 0xFFECDBD7, 0xFFA03C3B,
    0xFFB88C87, 0xFFB89C99, 0xFFF59C9B, 0xFFF48C8C, 0xFF581515, 0xFF3C5C8B, 0xFFFCFEFC, 0xFFBBACAA,
    0xFF3C3A4A, 0xFF494D81, 0xFF646786, 0xFFC87174, 0xFFA77175, 0xFF8A484C, 0xFF645460, 0xFFA47BA2,
    0xFFCA7C7C, 0xFF4C4456, 0xFFA0494C, 0xFF872E34, 0xFF473C50, 0xFF997075, 0xFF782124, 0xFFF47C7F,
    0xFF7C7698, 0xFF99656C, 0xFF7C484C, 0xFF481414, 0xFF394C82, 0xFF3A3B57, 0xFF373B74, 0xFFBA9DA4
};



#define ASTROID_TYPES 4
volatile MEMALIGN32 gfxbob_t astroid_bob[ASTROID_TYPES];
volatile MEMALIGN32 gfxbob_t flames_bob;
volatile MEMALIGN32 gfxbob_t explode_bob;

#define SHIP_ROTATION_FRAMES 36
#define SHIP_ROT_LAST (SHIP_ROTATION_FRAMES - 1)

#define max_astroids    8
#define MAXBULLETS      32


volatile MEMALIGN32 gfxbob_t shipmain;
volatile MEMALIGN32 gfxbob_t shipbullet;

static const float dirTable[SHIP_ROTATION_FRAMES][2] = {
    {  0.0000f,  1.0000f }, // 0: up
    {  0.1736f,  0.9848f },
    {  0.3420f,  0.9397f },
    {  0.5000f,  0.8660f },
    {  0.6428f,  0.7660f },
    {  0.7660f,  0.6428f },
    {  0.8660f,  0.5000f },
    {  0.9397f,  0.3420f },
    {  0.9848f,  0.1736f },

    {  1.0000f,  0.0000f }, // 9: right
    {  0.9848f, -0.1736f },
    {  0.9397f, -0.3420f },
    {  0.8660f, -0.5000f },
    {  0.7660f, -0.6428f },
    {  0.6428f, -0.7660f },
    {  0.5000f, -0.8660f },
    {  0.3420f, -0.9397f },
    {  0.1736f, -0.9848f },

    {  0.0000f, -1.0000f }, // 18: down
    { -0.1736f, -0.9848f },
    { -0.3420f, -0.9397f },
    { -0.5000f, -0.8660f },
    { -0.6428f, -0.7660f },
    { -0.7660f, -0.6428f },
    { -0.8660f, -0.5000f },
    { -0.9397f, -0.3420f },
    { -0.9848f, -0.1736f },

    { -1.0000f,  0.0000f }, // 27: left
    { -0.9848f,  0.1736f },
    { -0.9397f,  0.3420f },
    { -0.8660f,  0.5000f },
    { -0.7660f,  0.6428f },
    { -0.6428f,  0.7660f },
    { -0.5000f,  0.8660f },
    { -0.3420f,  0.9397f },
    { -0.1736f,  0.9848f }
};


// ===================== RNG =====================
static uint32_t rng_state = 0x15121553u;

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

MEMALIGN4 int sbx  = 4;
MEMALIGN4 int sby  = 4;
MEMALIGN4 int sbsx = 4;
MEMALIGN4 int sbsy = 4;

volatile gfx_bitmap_t *bm1, *bm2;
volatile gfx_bitmap_t *backgroundPlane;

volatile uint8_t gdb = 0;



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

// back blast flamsies
typedef struct MEMALIGN4 {
    float velocX, velocY;   // velocity direction 
    float fx, fy;

    int16_t x, y;
    int8_t  rotation;   // current rotation
    int8_t  rotDir;     // direction for rotation
    uint8_t timeout;    // bullet cant last long
    uint8_t strength;   // bullet strength (usually for powerups later)
    uint8_t fadeout;    // fade out
    uint8_t flags;
    uint8_t flagval[3];
} flames_t;

#define MAX_FLAMES      32
#define MAX_EXPLODES    32

volatile flames_t MEMALIGN4 flames[MAX_FLAMES];
volatile flames_t MEMALIGN4 explodes[MAX_EXPLODES];

volatile bullets_t MEMALIGN4 bullet[MAXBULLETS];  // shouldnt really ever see more than 3 but never know

volatile stroids MEMALIGN4 astroids[max_astroids];

void initBullets(){
    // clear them and prepare
    for(uint8_t b = 0; b < MAXBULLETS; b++){
        memset(&bullet[b], 0, sizeof(bullets_t));
    }
}

void initFlames(){
    for(uint8_t f = 0; f < MAX_FLAMES; f++){
        memset(&flames[f], 0, sizeof(flames_t));
    }
}

void initExplodes(){
    for(uint8_t f = 0; f < MAX_EXPLODES; f++){
        memset(&explodes[f], 0, sizeof(flames_t));
    }
}


MEMALIGN32 volatile gfx_bitmap_t backbitmap;

// Ship state (MUST be float for motion)
static float shipX, shipY;
static float shipVX, shipVY;
static int   shipRot; // 0..35, 0 = up
static int8_t shipRotTmr = 0;

#define shipcellsize    64


void spawnFlame(){
    int rots[3] = { shipRot-1, shipRot+1, shipRot };

    // wrap the two outer rotations
    if(rots[0] < 0) rots[0] = SHIP_ROTATION_FRAMES-1;
    if(rots[2] >= SHIP_ROTATION_FRAMES) rots[2] = 0;

    for(int r = 0; r < 3; r++){
        for(uint8_t f = 0; f < MAX_FLAMES; f++){
            if(flames[f].timeout == 0){
                //flames
                flames[f].timeout = 17;
                flames[f].fadeout = 0;

                flames[f].fx = shipmain.drawx + (shipcellsize / 2) - 8;
                flames[f].fy = shipmain.drawy + (shipcellsize / 2) - 8;

                flames[f].rotation = rots[r];

                float fx = dirTable[rots[r]][0];
                float fy = dirTable[rots[r]][1];

                flames[f].rotation = sbx_rng_range(0, 15);

                flames[f].velocX = fx * 2.0f;
                flames[f].velocY = fy * 2.0f;

                flames[f].fx -= (fx * 22.0f);
                flames[f].fy += (fy * 22.0f);

                break;
            }
        }
    }
}

void doFlames(){
    for(uint8_t b = 0; b < MAX_FLAMES; b++){
        if(flames[b].timeout>0){
            flames[b].timeout--;
            flames[b].fx -= flames[b].velocX;
            flames[b].fy += flames[b].velocY;

            if(flames[b].fx < -20.0f) flames[b].fx = 480.0f;
            if(flames[b].fx > 480.0f) flames[b].fx = -20.0f;

            if(flames[b].fy < -20.0f) flames[b].fy = 320.0f;
            if(flames[b].fy > 320.0f) flames[b].fy = -20.0f;

            flames[b].x = (int)flames[b].fx;
            flames[b].y = (int)flames[b].fy;

            //flames_bob.index = flames[b].rotation;
            flames_bob.drawx = flames[b].x;
            flames_bob.drawy = flames[b].y;
            flames_bob.flags = 0x02;
            flames_bob.flagval[1] = flames[b].fadeout;

            flames[b].fadeout += 5;
            if(flames[b].fadeout > 100) flames[b].fadeout = 100;

            gfx_drawbob(&flames_bob);
        }
    }
}

void spawnExplode(int16_t x, int16_t y){
    for(uint8_t e = 0; e < MAX_EXPLODES; e++){
        if(explodes[e].timeout == 0){
            //flames
            explodes[e].timeout = 20;   // 1 frame every 2
            explodes[e].rotation = 0;   // will use this as frames
            explodes[e].fadeout = 0;

            explodes[e].x = x;
            explodes[e].y = y;

            explodes[e].rotation = 0;

            break;
        }
    }
}

void doExplodes(){
    for(uint8_t e = 0; e < MAX_EXPLODES; e++){
        if(explodes[e].timeout > 0){
            explode_bob.drawx = explodes[e].x;
            explode_bob.drawy = explodes[e].y;

            // timeout 20..1 -> frame 0..9 (each frame lasts 2 ticks)
            uint8_t tframe = (uint8_t)((20 - explodes[e].timeout) >> 1);
            if(tframe > 9) tframe = 9; // safety clamp

            explode_bob.index = tframe;

            explodes[e].timeout--;
            gfx_drawbob(&explode_bob);
        }
    }
}


void initAstroids(){
    for(uint8_t a = 0; a < max_astroids; a ++){
        memset(&astroids[a], 0, sizeof(stroids));
        astroids[a].x = sbx_rng_range(-60, 480-4);
        astroids[a].y = sbx_rng_range(-60, 320-4);

        do{
            astroids[a].sx = sbx_rng_range(-3, 3);
        } while(astroids[a].sx == 0);   // ensure its NOT 0

        do{
            astroids[a].sy = sbx_rng_range(-3, 3);
        } while(astroids[a].sy == 0);

        //astroids[a].flags = 0x02;// * (sbx_rng_range(1, 8) & 0x02);
        //astroids[a].flagval[1] = sbx_rng_range(1, 50);

        astroids[a].size = sbx_rng_range(0, ASTROID_TYPES-1);

        if(astroids[a].size==0) {
            astroids[a].cellw = astroids[a].cellh = 96;
            astroids[a].frames_max = 24;
        }

        if(astroids[a].size==1) {
            astroids[a].cellw = astroids[a].cellh = 64;
            astroids[a].frames_max = 24;

        }

        if(astroids[a].size==2) {
            astroids[a].cellw = astroids[a].cellh = 64;
            astroids[a].frames_max = 24;
        }

        if(astroids[a].size==3) {
            astroids[a].cellw = astroids[a].cellh = 32;
            astroids[a].frames_max = 16;
        }


        astroids[a].frame = sbx_rng_range(0, astroids[a].frames_max-1);
        astroids[a].frames = sbx_rng_range(1, 3);
        if(sbx_rng_range(1,4) % 2){
            astroids[a].framed = -1;
        } else {
            astroids[a].framed = 1;
        }
    }
}

void proc_astroids(){
    bullets_t *thebullet;
    for(uint8_t a = 0; a < max_astroids; a++){
        uint8_t asize = astroids[a].size;

        astroids[a].framei ++;
        if(astroids[a].framei > astroids[a].frames) {
            astroids[a].framei = 0;
            astroids[a].frame += astroids[a].framed;
            if(astroids[a].frame < 0) astroids[a].frame = (astroids[a].frames_max-1);
            if(astroids[a].frame > (astroids[a].frames_max-1)) astroids[a].frame = 0;
        }
        astroids[a].x += astroids[a].sx;
        astroids[a].y += astroids[a].sy;

        if(astroids[a].x > 480) astroids[a].x = -astroids[a].cellw;
        if(astroids[a].y > 320) astroids[a].y = -astroids[a].cellh;
        if(astroids[a].x < -astroids[a].cellw) astroids[a].x = 480;
        if(astroids[a].y < -astroids[a].cellh) astroids[a].y = 320;

        astroid_bob[asize].index = astroids[a].frame;
        astroid_bob[asize].drawx = astroids[a].x;
        astroid_bob[asize].drawy = astroids[a].y;
        astroid_bob[asize].flags = astroids[a].flags;
        astroid_bob[asize].flagval[1] = astroids[a].flagval[1];


        uint8_t bcol = 0;
        /*
        uint8_t bcol = gfx_bcollide(&astroid_bob[asize], &shipmain);
        if(bcol==2){
            astroid_bob[asize].flags = 1;   // colour tint
            astroid_bob[asize].flagval[0] = 168;
        }
        */
        for(uint8_t b = 0; b < MAXBULLETS; b++){
            thebullet = &bullet[b];
            if(thebullet->timeout>0){
                shipbullet.drawx = thebullet->x;
                shipbullet.drawy = thebullet->y;
                shipbullet.index = thebullet->rotation;
                
                bcol = gfx_bcollide(&astroid_bob[asize], &shipbullet);
                if(bcol == 2){
                    astroid_bob[asize].flags = 1;   // colour tint
                    astroid_bob[asize].flagval[0] = 168;
                    thebullet->timeout=1;
                }
            }
        }



        //astroid_bob[asize].flags = 0;   // colour tint
        gfx_drawbob(&astroid_bob[asize]);
        astroid_bob[asize].flags = 0;   // colour tint
    }
}


static inline void WrapRot(void)
{
    if (shipRot >= SHIP_ROTATION_FRAMES) shipRot = 0;
    if (shipRot < 0) shipRot = SHIP_ROT_LAST;
}

void initShip(){
    shipX = (480 / 2) - (shipcellsize/2);     // screen width half - ship width half (32)
    shipY = (320 / 2) - (shipcellsize/2);     // screen width half - ship width half (32)
    shipVX = 0.0f;
    shipVY = 0.0f;
    shipRot = 0;
    shipRotTmr = 0;
}

void ShipUpdate(uint32_t joyb)
{
    // rotation (one step per update; add your timer later)
    if(++shipRotTmr > 1){
        shipRotTmr = 0;
        if (joyb & BTN_LEFT)  shipRot--;
        if (joyb & BTN_RIGHT) shipRot++;
        WrapRot();
    }
    
    // forward unit vector in math coords (+Y up)
    float fx = dirTable[shipRot][0];
    float fy = dirTable[shipRot][1];

    // convert to screen coords (+Y down) by flipping Y when applying
    float thrust = (joyb & BTN_UP) ? 0.25f : 0.0f;  // tune this

        
    shipVX += fx * thrust;
    shipVY -= fy * thrust;

    // clamp speed
    const float MAX_SPEED = 4.0f;
    float speedSq = shipVX * shipVX + shipVY * shipVY;

    if (speedSq > (MAX_SPEED * MAX_SPEED))
    {
        float speed = sqrtf(speedSq);
        float scale = MAX_SPEED / speed;
        shipVX *= scale;
        shipVY *= scale;
    }

    // integrate
    shipX += shipVX;
    shipY += shipVY;

    // drag
    const float DRAG = 0.99f;
    shipVX *= DRAG;
    shipVY *= DRAG;


    if(shipX < -(float)shipcellsize) shipX = 480.0f;
    if(shipX > 480.0f) shipX = -(float)shipcellsize;

    if(shipY < -(float)shipcellsize) shipY = 320.0f;
    if(shipY > 320.0f) shipY = -(float)shipcellsize;

    // optional tiny damping while testing (comment out for pure Asteroids)
    // shipVX *= 0.99f;
    // shipVY *= 0.99f;
}

void fireBullet(){

    uint8_t go=0;   // if at least one bullet can be found free, set to 1
    int rots[3] = { shipRot-1, shipRot, shipRot+1 };

    // wrap the two outer rotations
    if(rots[0] < 0) rots[0] = SHIP_ROTATION_FRAMES-1;
    if(rots[2] >= SHIP_ROTATION_FRAMES) rots[2] = 0;

    go = 0;
    for(int r = 0; r < 3; r++){
        for(uint8_t b = 0; b < MAXBULLETS; b++){
            if(bullet[b].timeout == 0){
                bullet[b].timeout = 17;
                go = 1;

                bullet[b].fx = shipmain.drawx + (shipcellsize / 2) - 8;
                bullet[b].fy = shipmain.drawy + (shipcellsize / 2) - 8;

                bullet[b].rotation = rots[r];

                float fx = dirTable[rots[r]][0];
                float fy = dirTable[rots[r]][1];

                bullet[b].velocX = fx * 8.0f;
                bullet[b].velocY = fy * 8.0f;

                bullet[b].fx += (fx * 22.0f);
                bullet[b].fy -= (fy * 22.0f);

                break;
            }
        }
    }

    if(go == 1){
        sound_stop(1);
        sound_play(1);
    }
    
}

void doBullets(){
    for(uint8_t b = 0; b < MAXBULLETS; b++){
        if(bullet[b].timeout>0){
            bullet[b].timeout--;
            bullet[b].fx += bullet[b].velocX;
            bullet[b].fy -= bullet[b].velocY;

            if(bullet[b].fx < -16.0f) bullet[b].fx = 480.0f;
            if(bullet[b].fx > 480.0f) bullet[b].fx = -16.0f;

            if(bullet[b].fy < -16.0f) bullet[b].fy = 320.0f;
            if(bullet[b].fy > 320.0f) bullet[b].fy = -16.0f;

            bullet[b].x = (int)bullet[b].fx;
            bullet[b].y = (int)bullet[b].fy;

            shipbullet.index = bullet[b].rotation;
            shipbullet.drawx = bullet[b].x;
            shipbullet.drawy = bullet[b].y;
            gfx_drawbob(&shipbullet);
        }
    }
}

float backscreenx, backscreeny;

int main(int argc, char *argv[]) {
    //DIVZEROOFF;
    configure_runmode(GAMEMODE_PROFILE_1);
    initMalloc();   // go memory!! yey

    // hardware preps //
    // display set up //
    gfx_setlcd(DEFAULT_RENDER_ORDER, FPS_50);
    lcd_bright(0);
    //gfx_mode(480, 320, 480, 320, DISPFLAG_DUALLAYER | DISPFLAG_NOSCROLLABLE);
    //gfx_mode(480, 320, 480, 320, DISPFLAG_SINGLELAYER | DISPFLAG_NOSCROLLABLE);
    gfx_mode(480, 320, 640, 480, DISPFLAG_DUALLAYER | DISPFLAG_SCROLLABLE);
    set_audio_dma(512); // a few ms about 7ms enough for a full frame.
    set_music_dma = 1;

    bm1 = gfx_getdrawbuffer();
    bm2 = gfx_getshowbuffer();
    
    uint8_t sndPlayCnt = 0;
    int8_t panSound = -127;
    uint8_t loopy  = 0;
    uint8_t rotorspeed = 0;
    uint8_t frameid = 0;
    uint8_t lcdbright = 0;
    uint8_t joyb;

    int scrollx = 0;
    int scrolly = 0;
    static int8_t scrxs = 1;
    static int8_t scrys = 2;
   
    lcd_bright(100);

    uint32_t samplelen;
    samplelen = LoadSFX("res/extralife.wav", &snd1Test);
    sound_assign(0, snd1Test, samplelen, 0);
    sound_setfrequency(0, 44100);
    sound_play(0);
    sound_setvolume(0, 240);
    sound_setpanning(0, 0);
    sound_setloop(0, 200, 4433);
    sound_enableloop(0, 0);


    samplelen = LoadSFX("res/firem.wav", &snd2firem);
    sound_assign(1, snd2firem, samplelen, 0);
    sound_setfrequency(1, 44100);
    sound_setvolume(1, 255);
    sound_setpanning(1, 0);
    sound_setloop(1, 200, 4433);
    sound_enableloop(1, 0);



    

    frontclut[0] = 0x00000000;



    //music_play("music/1_67YT-Turrican_III_Remix.sid", 0);
    music_play("res/sdlev1.mod", 0);
    //music_play("/music/s3m.testmain5.s3m", 0);
    //music_play("/music/wavs/games/dhero32/05 - Level 2.wav", 0);


    // astroid large //
    //memset(&astroid_bob[0], 0, sizeof(gfxbob_t));
    //memset(&astroid_bob[1], 0, sizeof(gfxbob_t));
    //memset(&astroid_bob[2], 0, sizeof(gfxbob_t));
    //memset(&shipmain,       0, sizeof(gfxbob_t));

    // astroid LARGE ROCKY // 
    astroid_bob[0].imgdat = malloc(480 * 480);//ast0;
    astroid_bob[0].atlas_stride = 480;
    astroid_bob[0].atlas_height = 480;
    astroid_bob[0].width  = 96;
    astroid_bob[0].height = 96;
    astroid_bob[0].drawx = 0;   // these can be changed and the blitbob will handle the rest
    astroid_bob[0].drawy = 0;
    LoadPPB("res/astroid_large_1.ppb", astroid_bob[0].imgdat);

    // astroid medium ROCKY //
    astroid_bob[1].imgdat = malloc(512 * 192);//ast1;
    astroid_bob[1].atlas_stride = 512;
    astroid_bob[1].atlas_height = 192;
    astroid_bob[1].width  = 64;
    astroid_bob[1].height = 64;
    astroid_bob[1].drawx = 0;   // these can be changed and the blitbob will handle the rest
    astroid_bob[1].drawy = 0;
    LoadPPB("res/astroid_medium_1.ppb", astroid_bob[1].imgdat);

    // astroid medium metalic
    astroid_bob[2].imgdat = malloc(512 * 192);//ast2;
    astroid_bob[2].atlas_stride = 512;
    astroid_bob[2].atlas_height = 192;
    astroid_bob[2].width  = 64;
    astroid_bob[2].height = 64;
    astroid_bob[2].drawx = 0;   // these can be changed and the blitbob will handle the rest
    astroid_bob[2].drawy = 0;
    LoadPPB("res/astroid_medium_2.ppb", astroid_bob[2].imgdat);

    // astroid small metalic
    astroid_bob[3].imgdat = malloc(256 * 64);//ast2;
    astroid_bob[3].atlas_stride = 256;
    astroid_bob[3].atlas_height = 64;
    astroid_bob[3].width  = 32;
    astroid_bob[3].height = 32;
    astroid_bob[3].drawx = 0;   // these can be changed and the blitbob will handle the rest
    astroid_bob[3].drawy = 0;
    LoadPPB("res/astroid_small_2.ppb", astroid_bob[3].imgdat);


    shipmain.imgdat = malloc((shipcellsize * 6) * (shipcellsize * 6));//shipgfx;
    shipmain.atlas_height = (shipcellsize * 6);
    shipmain.atlas_stride = (shipcellsize * 6);
    shipmain.height = shipcellsize;
    shipmain.width = shipcellsize;
    shipmain.index = 0;
    shipmain.drawx = 10;
    shipmain.drawy = 10;
    LoadPPB("res/shiprs.ppb", shipmain.imgdat);


    shipbullet.imgdat = malloc(96 * 96);    // bullets Type1
    shipbullet.atlas_height = 96;
    shipbullet.atlas_stride = 96;
    shipbullet.height = 16;
    shipbullet.width  = 16;
    shipbullet.index  = 0;
    LoadPPB("res/bullets_type1.ppb", shipbullet.imgdat);
    

    flames_bob.imgdat = malloc(160 * 20);
    flames_bob.atlas_height = 20;
    flames_bob.atlas_stride = 160;
    flames_bob.height = 20;
    flames_bob.width = 20;
    flames_bob.index = 0;
    LoadPPB("res/flames.ppb", flames_bob.imgdat);

    explode_bob.imgdat = malloc(320 * 128);
    explode_bob.atlas_height = 128;
    explode_bob.atlas_stride = 320;
    explode_bob.height = 64;
    explode_bob.width  = 64;
    explode_bob.index  = 0;
    LoadPPB("res/explode.ppb", explode_bob.imgdat);

    backbitmap.memspacelen = (640 * 480);
    backbitmap.width = 640;
    backbitmap.height = 480;
    backbitmap.stride = 480u;   // should be the height of the bitmap
    backbitmap.bitmap = malloc(640 * 480);//bitground;
    LoadPPB("res/back.ppb", backbitmap.bitmap);  // 640 x 480

    initAstroids();
    initFlames();
    initExplodes();
    initShip();
    initBullets();
    
    gfx_usefpalette(frontclut);
    gfx_usebpalette(backclut);
    
    gfx_showbbuffer(&backbitmap);
    gfx_showfbuffer(bm1);
    gfx_usebuffer(bm1);

    uint8_t FireState = 0;
    uint8_t lastFireState = 0;

    uint8_t FireState2 = 0;
    uint8_t lastFireState2 = 0;

    uint8_t tmExpld = 0;

    backscreenx = 0.0f;
    backscreeny = 0.0f;

    for(;;) {
        sndPlayCnt++;
        if(sndPlayCnt>100) {
            sndPlayCnt = 0;
            sound_stop(0);  // will allow to re-trigger 
            //sound_play(0);
            loopy = 1 - loopy;
            //sound_enableloop(0, loopy);
        }
        panSound++;
        //sound_setpanning(0, panSound);

        joyb = getjoyport();

        ShipUpdate(joyb);

        FireState = (joyb & BTN_FIRE);
        if(FireState != lastFireState){
            if(FireState)   // only works when Pressed down
                fireBullet();
        }
        lastFireState = FireState;

        FireState2 = (joyb & BTN_FIRE2);
        if(FireState2 != lastFireState2){
            if(FireState2){
                tmExpld = 32;
            }
        }
        lastFireState2 = FireState2;

        if(tmExpld>0){
            tmExpld--;
            if((tmExpld % 4) == 0){
                int16_t sx, sy;
                sx = sbx_rng_range(-32, 480-32);
                sy = sbx_rng_range(-32, 320-32);
                spawnExplode(sx, sy);       
            }
        }

        if(gdb == 0){
            if(joyb & BTN_UP){
                spawnFlame();
            }
        }

        shipmain.index = shipRot;
        shipmain.drawx = (int)shipX;
        shipmain.drawy = (int)shipY;

        if(lcdbright<100){
            lcdbright++;
            lcd_bright(lcdbright);
        }

        // scrolling background demo-ing right now
        //scrollx += scrxs;
        //scrolly += scrys;
        //if(scrollx>160) scrxs = -scrxs;
        //if(scrolly>160) scrys = -scrys;
        //if(scrollx < 1) scrxs = -scrxs;
        //if(scrolly < 1) scrys = -scrys;

        backscreenx += shipVX;
        backscreeny += shipVY;


        if(backscreenx > 160.0f) backscreenx = 160.0f;
        if(backscreenx < 0.0f)   backscreenx = 0.0f;

        if(backscreeny > 160.0f) backscreeny = 160.0f;
        if(backscreeny < 0.0f)   backscreeny = 0.0f;

        scrollx = backscreenx;
        scrolly = backscreeny;


        /// --- all the game logic that does NOT involved any graphics math above

        {   // ALL the graphics ready stuff
            gfx_lcdwait();  // here if the lcd hasnt finished rendering to the screen
            
            gdb = 1 - gdb;
            if(gdb) gfx_dispfbuffer(bm1, bm2);
            else    gfx_dispfbuffer(bm2, bm1);
            
            gfx_cls();

            proc_astroids();
            
            doBullets();
            doFlames();
            doExplodes();

            gfx_drawbob(&shipmain);
           

            shipmain.flags = 0x0;       // back to normal colour
            
            gfx_scrollb(scrollx, scrolly);       
            gfx_displaynow();
        }
    }
    
    return 0x00;
}
