#ifndef _SIDBOX_3D_LIB_H_
#define _SIDBOX_3D_LIB_H_

#include <stdint.h>

/*==============================================================================
    Core constants
==============================================================================*/

#ifndef M_PI
#define M_PI 3.14159265358979323846f
#endif

#define SCREEN_W            480
#define SCREEN_H            320

/*==============================================================================
    WORLD            
==============================================================================*/

void worldClear(void);

/*==============================================================================
    Basic types
==============================================================================*/

typedef struct {
    float x;
    float y;
    float z;
} Vec3;

/*==============================================================================
    Materials
==============================================================================*/

/*
    Material guide:

    ambient          = base light even in darkness
    diffuse          = how strongly it reacts to light
    specularStrength = strength of highlight
    shininess        = size/tightness of highlight
    emissive         = self-lit glow amount
*/
typedef struct {
    float ambient;           /* 0.0 .. 1.0 */
    float diffuse;           /* 0.0 .. 2.0 */
    float specularStrength;  /* 0.0 .. 2.0 */
    float shininess;         /* e.g. 4, 8, 16, 32 */
    float emissive;          /* 0.0 .. 1.0 */
} Material;

/*==============================================================================
    Geometry / mesh types
==============================================================================*/

typedef struct {
    int a;
    int b;
} Edge;

typedef struct {
    int a;
    int b;
    int c;
    uint8_t color;
    uint8_t emission;
} Tri;

typedef struct {
    Vec3 *verts;
    int vertCount;

    Edge *edges;
    int edgeCount;

    Tri *tris;
    int triCount;

    float boundsRadius;
    Material material;
} Mesh;

/*==============================================================================
    Camera
==============================================================================*/

typedef struct {
    Vec3 pos;
    Vec3 rotation;

    Vec3 right;
    Vec3 up;
    Vec3 forward;

    float invDepthRange;
    float nearPlane;
    float farPlane;
} Camera;

/*==============================================================================
    Lighting
==============================================================================*/

typedef enum {
    LIGHT_POINT = 0,
    LIGHT_DIRECTIONAL = 1
} LightType;

typedef struct {
    LightType type;
    Vec3 pos;
    Vec3 dir;
    float intensity;
    float near;
    float far;
    float beyond;
    int enabled;
} Light;

/*==============================================================================
    Entities / collision
==============================================================================*/

typedef enum {
    COLLISION_NONE = 0,
    COLLISION_SPHERE,
    COLLISION_AABB,
    COLLISION_MESH
} EntityCollisionType;

#define ENTITY_VISIBLE       (1u << 0)
#define ENTITY_HITTEST       (1u << 1)
#define ENTITY_COLLIDABLE    (1u << 2)

#define COLOUR_OFFSET           32
#define DEFAULT_COLOUR_BOTTOM  (COLOUR_OFFSET + 2)
#define DEFAULT_COLOUR_TOP     (COLOUR_OFFSET + 3)
#define DEFAULT_COLOUR_SIDE1   (COLOUR_OFFSET + 4)
#define DEFAULT_COLOUR_SIDE2   (COLOUR_OFFSET + 5)
#define DEFAULT_COLOUR_SIDE3   (COLOUR_OFFSET + 2)
#define DEFAULT_COLOUR_SIDE4   (COLOUR_OFFSET + 3)
#define DEFAULT_COLOUR         (COLOUR_OFFSET + 1)
#define DEFAULT_EMISSION       0

typedef struct {
    Vec3 pos;
    Mesh *mesh;

    Vec3 forward;
    Vec3 right;
    Vec3 up;

    uint8_t active;
    uint8_t flags;

    EntityCollisionType collisionType;
    float collisionRadius;
    Vec3 collisionHalfSize;
} Entity;

/*==============================================================================
    Raycast
==============================================================================*/

typedef struct {
    uint8_t hit;
    int entityId;
    int triIndex;
    float distance;

    Vec3 point;
    Vec3 normal;

    Vec3 right;
    Vec3 up;
    Vec3 forward;

    float yaw;
    float pitch;
    float roll;
} SB3DRaycastHit;

/*==============================================================================
    Particles
==============================================================================*/

#ifndef SB3D_MAX_QUAD_PARTICLES
#define SB3D_MAX_QUAD_PARTICLES 256
#endif

typedef struct {
    Vec3 pos;
    float size;
    float shadeF;
    float lightStrength;
    uint8_t color;
    uint8_t emission;
    uint8_t active;
} SB3DQuadParticle;

/*==============================================================================
    Renderer
==============================================================================*/

typedef enum {
    DITHER_BAYER4X4 = 0,
    DITHER_RANDOM   = 1
} DitherMode;


/*==============================================================================
    Maths API
==============================================================================*/

void sb3dInitTrigTable(void);

float sbsinf(float radians);
float sbcosf(float radians);

Vec3 vec3(float x, float y, float z);
Vec3 vec3Add(Vec3 a, Vec3 b);
Vec3 vec3Sub(Vec3 a, Vec3 b);
Vec3 vec3Scale(Vec3 v, float s);
float vec3Dot(Vec3 a, Vec3 b);
Vec3 vec3Cross(Vec3 a, Vec3 b);
Vec3 vec3Normalize(Vec3 v);
Vec3 triangleCenter(Vec3 a, Vec3 b, Vec3 c);
Vec3 rotateAroundAxis(Vec3 v, Vec3 axis, float angle);

float degrees(float angle);
float degToRad(float angle);
float radToDeg(float angle);

/*==============================================================================
    Mesh loading / mesh utilities
==============================================================================*/

int loadMeshOBJ(const char *filename, Mesh *mesh, uint8_t colour, float scale);
int loadMeshSB3D(const char *filename, Mesh *mesh, float scale);
void freeMesh(Mesh *mesh);

void meshSetDefaultMaterial(Mesh *mesh);
void meshSetMaterial(
    Mesh *mesh,
    float ambient,
    float diffuse,
    float emissive,
    float specularStrength,
    float shininess
);

float meshComputeBoundsRadius(const Mesh *mesh);

void meshSetVertex(Mesh *mesh, int index, Vec3 v);
void meshOffsetVertex(Mesh *mesh, int index, Vec3 delta);
Vec3 meshGetVertex(const Mesh *mesh, int index);

void meshSetVertexRecalc(Mesh *mesh, int index, Vec3 v);
void meshOffsetVertexRecalc(Mesh *mesh, int index, Vec3 delta);
void meshResetFromSource(Mesh *dst, const Mesh *src);

Mesh copyMesh(const Mesh *src);

/* Primitive mesh factories */
Mesh createBox(float width, float height, float depth);
Mesh createSphere(float radius, int stacks, int slices);
Mesh createPlane(float sizeX, float sizeZ, int divisions);
Mesh createCylinder(float radius, float height, int segments);
Mesh createCone(float radius, float height, int segments);
Mesh createPyramid(float width, float height);
Mesh createTorus(float majorRadius, float minorRadius, int majorSegs, int minorSegs);

/*==============================================================================
    Camera API
==============================================================================*/

Camera cameraCreate(void);
void cameraNormalize(Camera *cam);
Vec3 worldToCamera(Vec3 p, Camera cam);
void cameraSetRange(Camera *cam, float nearPlane, float farPlane);
void cameraSetPosition(Camera *cam, Vec3 pos);
void cameraMove(Camera *cam, float x, float y, float z);
void cameraRotate(Camera *cam, float yaw, float pitch, float roll);
void cameraTurn(Camera *cam, float x, float y, float z, uint8_t global);

/*==============================================================================
    Entity world management
==============================================================================*/

int entityWorldSpawn(Mesh *mesh, Vec3 pos);
void entityWorldDestroy(int *id);

void entityAllowHit(int id, uint8_t hitenable);
void entityVisible(int id, uint8_t viewenable);
int entityBuildWorldCache(Entity *ent);

/*==============================================================================
    Entity transform / movement
==============================================================================*/

void entitySetPosition(int id, Vec3 pos);
Vec3 entityGetPosition(int id);

void entityMove(int id, Vec3 delta);
void entityMoveForward(int id, float dist);
void entityMoveRight(int id, float dist);
void entityMoveUp(int id, float dist);

void entityTurnLocal(int id, float yaw, float pitch, float roll);
void entityTurnGlobal(int id, float yaw, float pitch, float roll);
void entityRotation(int id, float yaw, float pitch, float roll, uint8_t global);

void normalizeEntity(Entity *e);
void entityResetAxes(Entity *e);
void entitySetBasis(int id, Vec3 right, Vec3 up, Vec3 forward);

Vec3 entityLocalToWorld(const Entity *e, Vec3 v);
void entityFollowCameraXZ(int id, const Camera *cam, float worldY, float snap);
Vec3 entityLookAt(int aId, int bId, uint8_t rotate);
void entityAlignToHit(int id, const SB3DRaycastHit *hit);

/*==============================================================================
    Entity collision
==============================================================================*/

void entityEnableCollision(int id, uint8_t colenable);
int entityMoveWithCollision(int moverId, Vec3 moveDelta, int *outHitId, uint8_t global);

void entitySetCollisionType(int id, EntityCollisionType type);
void entitySetCollisionRadius(int id, float radius);
void entitySetCollisionHalfSize(int id, Vec3 halfSize);

int entityCollisionTestSphereSphere(int idA, int idB);
int entityCollisionTestAABBAABB(int idA, int idB);
int entityCollisionTestSphereAABB(int idSphere, int idBox);
int entityCollisionTestSphereMesh(int idSphere, int idMesh);

int entityCollisionTest(int idA, int idB);
int entityCollision(int id, int *outOtherId);

/*==============================================================================
    Entity / mesh colour helpers
==============================================================================*/

void entityColour(int id, uint8_t colour);
void entityColourFace(int id, int faceId, uint8_t colour);

/*==============================================================================
    Lighting API
==============================================================================*/

Light *lightsGet(void);
int lightsGetCount(void);
void lightsClear(void);

void lightEnable(uint8_t lightIndex, uint8_t enable);

int addPointLight(Vec3 pos, float intensity, int enabled);
int addDirectionalLight(Vec3 dir, float intensity, int enabled);

void lightSetPosition(int index, Vec3 pos);
void lightSetDirection(int index, Vec3 dir);
void lightSetIntensity(int index, float bright);
void lightSetRanges(int lightId, float near, float far, float beyond);

float brightnessToShadeF(float brightness);

void buildLightingCLUT(
    uint32_t *clut,
    uint32_t *baseColors,
    int numColors,
    uint32_t target,
    float shades[5]
);

/*==============================================================================
    Particle API
==============================================================================*/

void sb3dParticlesClear(void);

int sb3dParticleSpawnQuad(
    Vec3 pos,
    float size,
    uint8_t color,
    float shadeF,
    uint8_t emission,
    float lightStrength
);

void sb3dParticleSetPosition(int id, Vec3 pos);
void sb3dParticleSetSize(int id, float size);
void sb3dParticleSetShade(int id, float shadeF);
void sb3dParticleSetLightStrength(int id, float lightStrength);
void sb3dParticleSetColor(int id, uint8_t color);
void sb3dParticleSetEmission(int id, uint8_t emission);
void sb3dParticleEnable(int id, uint8_t enable);

void sb3dParticlesRender(const Camera *cam);

/*==============================================================================
    Low level graphics / raster
==============================================================================*/

void set3DRenderBuffer(uint8_t *buffer);
void resetRand(void);


/*==============================================================================
    Render pipeline
==============================================================================*/

int getRenderTriCount(void);

void setDefaultRenderMode(void);
void enableFlatMode(int en);
void enableTwoShade(int en);
void enableWireFrame(int en);

/* Set the target buffer first with set3DRenderBuffer(), then call Render3D(). */
void Render3D(const Camera *cam); 

/*==============================================================================
    Horizon helpers
==============================================================================*/

void drawFakeHorizonDots(const Camera *cam, uint8_t dotCol, int spacing, float ylevel, uint8_t density);

void drawFakeHorizon(
    const Camera *cam,
    uint8_t skyCol,
    uint8_t groundCol,
    uint8_t lineCol,
    float ylevel
);

void drawFakeHorizonGrid(
    const Camera *cam,
    uint8_t gridCol,
    int spacing,
    float ylevel,
    int rangeCells
);

/*==============================================================================
    Raycast API
==============================================================================*/

int sb3dRaycastWorld(
    Vec3 rayOrig,
    Vec3 rayDir,
    float maxDist,
    SB3DRaycastHit *outHit
);

int sb3dRaycastFromCamera(
    const Camera *cam,
    float maxDist,
    SB3DRaycastHit *outHit
);

#endif /* _SIDBOX_3D_LIB_H_ */