#include "main.h"

#define font_width  16
#define font_height 16


#define MAX_EXPLODES    32

#define MAX_FLAMES      32




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

extern volatile flames_t MEMALIGN4 flames[MAX_FLAMES];
extern volatile flames_t MEMALIGN4 explodes[MAX_EXPLODES];


extern volatile MEMALIGN32 gfxbob_t flames_bob;
extern volatile MEMALIGN32 gfxbob_t explode_bob;
extern volatile MEMALIGN32 gfxbob_t font1616_bob;