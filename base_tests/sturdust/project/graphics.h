#include "main.h"

#define font_width  16
#define font_height 16


#define MAX_EXPLODES     32
#define MAX_FLAMES       32


#define tunnelShipCellSize  96


// back blast flamsies
typedef struct MEMALIGN4 {
    float velocX, velocY, velocZ;   // velocity direction 
    float fx, fy, fz;


    int16_t x, y, z, scale;
    int8_t  rotation;   // current rotation
    int8_t  rotDir;     // direction for rotation
    uint8_t timeout;    // bullet cant last long
    uint8_t strength;   // bullet strength (usually for powerups later)
    uint8_t fadeout;    // fade out
    uint8_t flags;
    uint8_t flagval[3];
} flames_t;


#define RENDER3D_ASTEROID   0
#define RENDER3D_TORPEDO    1
#define RENDER3D_EXPLODES   2
#define RENDER3D_PILLS      3

#define MAX_RENDER3D   (MAX_ASTROIDS_3D + MAX_TORPEDOS + MAX_EXPLODES + MAX_PILLS)

typedef struct MEMALIGN4 {
    float   z;
    uint8_t kind;   // 0 = asteroid, 1 = torpedo
    uint8_t index;  // index into astroids3d[] or bullet3d[]
    uint8_t pad[2];
} render3d_t;









extern volatile flames_t MEMALIGN4 flames[MAX_FLAMES];
extern volatile flames_t MEMALIGN4 explodes[MAX_EXPLODES];

extern volatile gfxbob_t MEMALIGN32 photons_bob;  // photon blast
extern volatile MEMALIGN32 gfxbob_t flames_bob;
extern volatile MEMALIGN32 gfxbob_t explode_bob;
extern volatile MEMALIGN32 gfxbob_t font1616_bob;