#ifndef RENDER3D_H
#define RENDER3D_H

#include "sb3dworld.h"

#define CLIP_MAX_VERTS 8
#define SB3D_MAX_VERTS 4096

// internal flaggy stuff
// used for things that are special, transparency for now
#define TRI_COLOUR_MASK         0x0F

#define TRI_FLAG_TRANSPARENT    0x10
#define TRI_FLAG_RESERVED2      0x20
#define TRI_FLAG_RESERVED3      0x40
#define TRI_FLAG_RESERVED4      0x80

#define PROJ_F 200.0f

typedef enum {
    PLANE_NEAR = 0,
    PLANE_LEFT,
    PLANE_RIGHT,
    PLANE_TOP,
    PLANE_BOTTOM
} ClipPlane;



typedef struct align32 {
    Vec2 p0;
    Vec2 p1;
    Vec2 p2;
    float depth;
    float shadeF;
    uint16_t z0;
    uint16_t z1;
    uint16_t z2;

    float camz0;
    float camz1;
    float camz2;

    uint8_t color;
    uint8_t emission;
    uint8_t transparency;

    int16_t minY;
    int16_t maxY;

    uint8_t firstBand;
    uint8_t lastBand;
} RenderTri;


// internals
void initClipScratch(void);


int clipTriangleToFrustum(Vec3 a, Vec3 b, Vec3 c, Vec3 *outVerts, const Camera *cam);
//void submitClippedTri(Vec3 a, Vec3 b, Vec3 c, const Camera *cam, uint8_t color, uint8_t emission, float shadeF);
void submitClippedTri(Vec3 a, Vec3 b, Vec3 c, const Camera *cam, uint8_t color, uint8_t emission, uint8_t trans, float shadeF);
void entitySetBasis(int id, Vec3 right, Vec3 up, Vec3 forward);

void setDefaultRenderMode();
void enableZOrdering(int enable);
void enableFlatMode(int en);
void enableTwoShade(int en);
void enableWireFrame(int en);


int projectPoint(Vec3 p, const Camera *cam, Vec2 *out);
int clipLineToNearPlane(Vec3 *a, Vec3 *b, const Camera *cam);
void resetRenderList(void);

int getRenderTriCount(void);
void Render3D(const Camera *cam);

// sorting
void sortEntitiesByDepth(Entity *entities, int count, const Camera *cam);

void submitWorldEntities(const Camera *cam);
void submitEntitySolid(const Entity *ent, const Camera *cam);
void drawEntitySolid(const Entity *ent, const Camera *cam);
void drawEntity(const Entity *ent, const Camera *cam, uint8_t color);
void drawWorldLine(Vec3 a, Vec3 b, const Camera *cam, uint8_t color);


void drawFakeHorizonDots(const Camera *cam, uint8_t dotCol, int spacing, float ylevel, uint8_t density);
void drawFakeHorizon(const Camera *cam, uint8_t skyCol, uint8_t groundCol, uint8_t lineCol, float ylevel);
void drawFakeHorizonGrid(
    const Camera *cam,
    uint8_t gridCol,
    int spacing,
    float ylevel,
    int rangeCells
);

#endif