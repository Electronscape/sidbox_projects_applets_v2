/*
    SIDBOX 3D Library
    Public API Header

    Copyright (c) 2026 Electronscape / SIDBOX (GNU)

    Version:
        1.0

    Description:
        Public interface for the SIDBOX software 3D engine library.
        This header exposes the engine types and functions required for:
            - camera control
            - mesh loading and creation
            - entity management
            - lighting
            - particles
            - collision and raycasts
            - final scene rendering

    Notes for programmers:
        - Call set3DRenderBuffer() before Render3D().
        - Mesh memory loaded or created by the library should be released with freeMesh().
        - Some public structs intentionally use align32. Do not remove alignment.
        - Screen resolution is fixed to SCREEN_W x SCREEN_H for this build.
        - Palette-based colour defaults assume the standard SIDBOX colour layout.
        - Internal renderer limits still exist in the library implementation. Check the
          manual / documentation for recommended scene complexity and usage limits.

    Compatibility:
        This header is intended to match the currently built SIDBOX 3D static library.
        If the library binary changes, rebuild dependent projects against the updated version.
*/

#ifndef _SIDBOX_3D_LIB_H_
#define _SIDBOX_3D_LIB_H_

#include <stdint.h>

#define align32 __attribute__((aligned(32)))

/*==============================================================================
    Core constants
==============================================================================*/

#ifndef M_PI
#define M_PI 3.14159265358979323846f
#endif

#define COLOUR_OFFSET            32

#define DEFAULT_COLOUR_BOTTOM  (COLOUR_OFFSET + 2)
#define DEFAULT_COLOUR_TOP     (COLOUR_OFFSET + 3)
#define DEFAULT_COLOUR_SIDE1   (COLOUR_OFFSET + 4)
#define DEFAULT_COLOUR_SIDE2   (COLOUR_OFFSET + 5)
#define DEFAULT_COLOUR_SIDE3   (COLOUR_OFFSET + 2)
#define DEFAULT_COLOUR_SIDE4   (COLOUR_OFFSET + 3)
#define DEFAULT_COLOUR         (COLOUR_OFFSET + 1)
#define DEFAULT_EMISSION       0

#define SCREEN_W            480
#define SCREEN_H            320

/*==============================================================================
    WORLD
==============================================================================*/

void worldClear(void);//

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
typedef struct align32 {
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

    // v3 stuff
    uint8_t transparency;
    uint8_t roughness;
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

typedef struct align32 {
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

typedef struct align32 {
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

#define ENTITY_VISIBLE       (1u << 0)
#define ENTITY_HITTEST       (1u << 1)
#define ENTITY_COLLIDABLE    (1u << 2)


typedef enum {
    COLLISION_NONE = 0,
    COLLISION_SPHERE,
    COLLISION_AABB,
    COLLISION_MESH
} EntityCollisionType;//



typedef struct align32 {
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

typedef struct align32 {
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

typedef struct align32 {
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

float fastRecipf(float x);
void  sb3dInitTrigTable(void);

float sbsinf(float radians);
float sbcosf(float radians);

Vec3  vec3(float x, float y, float z);//
Vec3  vec3Add(Vec3 a, Vec3 b);//
Vec3  vec3Sub(Vec3 a, Vec3 b);//
Vec3  vec3Scale(Vec3 v, float s);//
float vec3Dot(Vec3 a, Vec3 b);//
Vec3  vec3Cross(Vec3 a, Vec3 b);//
Vec3  vec3Normalize(Vec3 v);//
Vec3  triangleCenter(Vec3 a, Vec3 b, Vec3 c);//
Vec3  rotateAroundAxis(Vec3 v, Vec3 axis, float angle);//

float degrees(float angle);//
float degToRad(float angle);//
float radToDeg(float angle);//




/*==============================================================================
    Audio assistance                               
==============================================================================*/



typedef struct {    // internal
    float dopplerStrength;
    float panStrength;
    float distanceMin;
    float distanceMax;
} SB3DAudioInfo;


typedef struct {    // external
    float doppler;  // effect on the doppler results
    float pan;      // effect pan results
    float volume;   // effect volule result
    float _pad;
} SB3DAudioData;


// used if you just want to use the world audio info
void sb3dWorldAudioSetup(float dopplerStrength, float panStrength, float distanceMin, float distanceMax);//
void sb3dAudioInfoSetup(SB3DAudioInfo *info, float dopplerStrength, float panStrength, float distanceMin, float distanceMax);//

SB3DAudioData sb3dEntityAudioInfo(int listenerId, int sourceId, float deltaTime, const SB3DAudioInfo *info);//
SB3DAudioData sb3dEntityAudioInfoDefault(int listenerId, int sourceId, float deltaTime);//

// assistance with sound changes
float dopplerValueEntityToEntity(int idA, int idB, float deltaTime, float strength, float distanceMin, float distanceMax);
void entityAudio(int listenerId, int sourceId, float panStrength, float distanceMin, float distanceMax, float *pan, float *volume);



/*==============================================================================
    Mesh loading / mesh utilities
==============================================================================*/

int  loadMeshOBJ(const char *filename, Mesh *mesh, uint8_t colour, float scale);
int  loadMeshSB3D(const char *filename, Mesh *mesh, float scale);//
void freeMesh(Mesh *mesh);//


// MATERIALS //
void meshSetDefaultMaterial(Mesh *mesh);//
void meshSetMaterial(Mesh *mesh, float ambient, float diffuse, float emissive, float specularStrength, float shininess);//
void meshColour(Mesh *mesh, uint8_t colour);//



float meshComputeBoundsRadius(const Mesh *mesh);

void meshSetVertex(Mesh *mesh, int index, Vec3 v);//
Vec3 meshGetVertex(const Mesh *mesh, int index);//
void meshOffsetVertex(Mesh *mesh, int index, Vec3 delta);//

void meshSetVertexRecalc(Mesh *mesh, int index, Vec3 v);//
void meshOffsetVertexRecalc(Mesh *mesh, int index, Vec3 delta);//
void meshResetFromSource(Mesh *dst, const Mesh *src);//


Mesh copyMesh(const Mesh *src);//

/* Primitive mesh factories */
Mesh createBox(float width, float height, float depth);//
Mesh createSphere(float radius, int stacks, int slices);//
Mesh createPlane(float sizeX, float sizeZ, int divisions);//
Mesh createCylinder(float radius, float height, int segments);//
Mesh createCone(float radius, float height, int segments);//
Mesh createPyramid(float width, float height);//
Mesh createTorus(float majorRadius, float minorRadius, int majorSegs, int minorSegs);//

/*==============================================================================
    Camera API
==============================================================================*/

Camera cameraCreate(void);//
Vec3 worldToCamera(Vec3 p, Camera cam);//
void cameraSetRange(Camera *cam, float nearPlane, float farPlane);//
void cameraSetPosition(Camera *cam, Vec3 pos);//
Vec3 cameraGetPosition(Camera *cam);//
void cameraMove(Camera *cam, float x, float y, float z);//

void cameraRotate(Camera *cam, float yaw, float pitch, float roll);//
Vec3 cameraGetRotation(Camera *cam, uint8_t local);//
void cameraTurn(Camera *cam, float x, float y, float z, uint8_t global);//


/*==============================================================================
    Entity world management
==============================================================================*/

int entityWorldSpawn(Mesh *mesh, Vec3 pos);//
void entityWorldDestroy(int *id);//

void entityAllowHit(int id, uint8_t hitenable);
void entityVisible(int id, uint8_t viewenable);

/*==============================================================================
    Entity transform / movement
==============================================================================*/
void entitySetPosition(int id, Vec3 pos);//
void entitySetPositionAbs(int id, Vec3 pos);//       /// sets both new position and previous position
Vec3 entityGetPosition(int id);//

Vec3 entityGetForward(int id);//
Vec3 entityGetRight(int id);//
Vec3 entityGetUp(int id);//

void entityMove(int id, Vec3 delta);//
void entityMoveForward(int id, float dist);//
void entityMoveRight(int id, float dist);//
void entityMoveUp(int id, float dist);//

void entityTurn(int id, float yaw, float pitch, float roll, uint8_t global);//
void entityRotation(int id, float yaw, float pitch, float roll, uint8_t global);//

Vec3 entityLookAtEntity(int aId, int bId, uint8_t rotate);//    
Vec3 entityLookAtPosition(int entityId, Vec3 target, uint8_t rotate);//
Vec3 LookAtPointToPoint(Vec3 a, Vec3 b);//                    


/*==============================================================================
    Entity collision
==============================================================================*/
void entityEnableCollision(int id, uint8_t enable);//
void entitySetCollisionType(int id, EntityCollisionType type);//
void entitySetCollisionRadius(int id, float radius);//
void entitySetCollisionHalfSize(int id, Vec3 halfSize);//

// advanced calls
uint8_t entityIntersectTest(int a, int b);//
void entityAlignToHit(int id, const SB3DRaycastHit *hit);//

int entityMoveWithCollision(int moverId, Vec3 moveDelta, int *outHitId, uint8_t global);//
uint8_t entitySweepRaycastTest(int movingId, int targetId, Vec3 *hitPos, Tri *triHit);//


int entityCollisionTestSphereSphere(int idA, int idB);//
int entityCollisionTestAABBAABB(int idA, int idB);//
int entityCollisionTestSphereAABB(int idSphere, int idBox);//
int entityCollisionTestSphereMesh(int idSphere, int idMesh);//

int entityCollisionTest(int idA, int idB);//
int entityCollision(int id, int *outOtherId);//


void entityMatchOrientation(int id, int targetId);//
void entityMatchOrientationCamera(int id, const Camera *cam);//



/*==============================================================================
    Entity / mesh colour helpers
==============================================================================*/
void entityColour(int id, uint8_t colour);//
void entityColourFace(int id, int faceId, uint8_t colour);//


/*==============================================================================
    Lighting API
==============================================================================*/
int addPointLight(Vec3 pos, float intensity, int enabled);//
int addDirectionalLight(Vec3 dir, float intensity, int enabled);//

void lightEnable(uint8_t lightIndex, uint8_t enable);//
Light *lightsGet(void);//
int lightsGetCount(void);//
void lightsClear(void);//

void lightSetPosition(int index, Vec3 pos);//
void lightSetDirection(int index, Vec3 dir);//
void lightSetIntensity(int index, float bright);//
void lightSetRanges(int lightId, float near, float far, float beyond);//


void buildLightingCLUT(uint32_t *clut, uint32_t *baseColors, int numColors, uint32_t target, float shades[5]);//

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

void sb3dParticleSetPosition(int id, Vec3 pos);//
void sb3dParticleSetSize(int id, float size);//

void sb3dParticleSetShade(int id, float shadeF);//
void sb3dParticleSetLightStrength(int id, float lightStrength);//
void sb3dParticleSetColor(int id, uint8_t color);//
void sb3dParticleSetEmission(int id, uint8_t emission);//
void sb3dParticleEnable(int id, uint8_t enable);//

void sb3dParticlesRender(const Camera *cam);    // INTERNAL should NOT be used for outside access

/*==============================================================================
    Low level graphics / raster
==============================================================================*/

void initDepthBandMem(void);
void set3DRenderBuffer(uint8_t *buffer);
void resetRand(void);
void test_render_chunk(uint8_t *buffer, uint32_t bandY0);

/*==============================================================================
    Render pipeline
==============================================================================*/

int getRenderTriCount(void);
void initCoarseDepth8Mem(void);

typedef enum {
    REND_MODE_WIREFRAME = 0,
    REND_MODE_STANDARD,
    REND_MODE_FLAT,
    REND_MODE_TWOSHADE
} RENDERMODE;

void setRenderMode(RENDERMODE mode);//

void Render3D(const Camera *cam);//   /* Call set3DRenderBuffer() before Render3D(). */

/*==============================================================================
    Horizon helpers
==============================================================================*/
// very slow for STM32 - use sparingly
void drawFakeHorizonTex(
    const Camera *cam,
    const uint8_t *skyTex,
    const uint8_t *groundTex,
    uint8_t skySolidCol,
    uint8_t groundSolidCol,
    uint8_t lineCol,
    float groundY,
    float skyY,
    float skyFadeDist,
    float skyScale,
    float groundScale,
    int skyScrollU,
    int skyScrollV,
    int groundScrollU,
    int groundScrollV,
    uint8_t transparentZero,
    uint8_t proceduralPatchMode,
    uint8_t skyPatchDensity,
    uint8_t groundPatchDensity
);//


// very slow for STM32
void drawFakeHorizonGroundTex(
    const Camera *cam,
    const uint8_t *groundTex,
    uint8_t skySolidCol,
    uint8_t groundSolidCol,
    uint8_t lineCol,
    float groundY,
    float groundScale,
    int groundScrollU,
    int groundScrollV,
    uint8_t transparentZero,
    uint8_t proceduralPatchMode,
    uint8_t groundPatchDensity
);//


void drawFakeHorizonSkyTex(
    const Camera *cam,
    const uint8_t *skyTex,
    uint8_t skySolidCol,
    uint8_t groundSolidCol,
    uint8_t lineCol,
    float groundY,
    float skyY,
    float skyFadeDist,
    float skyScale,
    int skyScrollU,
    int skyScrollV,
    uint8_t transparentZero,
    uint8_t proceduralPatchMode,
    uint8_t skyPatchDensity
);//

void drawFakeSkyDots(const Camera *cam, uint8_t dotCol, int azSteps, int elSteps, uint8_t density);//
void drawFakeHorizonDots(const Camera *cam, uint8_t dotCol, int spacing, float ylevel, uint8_t density);//
void drawFakeHorizon(const Camera *cam, uint8_t skyCol, uint8_t groundCol, uint8_t lineCol, float ylevel);//
void drawFakeHorizonGrid(const Camera *cam, uint8_t gridCol, int spacing, float ylevel, int rangeCells);//

/*==============================================================================
    Raycast API
==============================================================================*/

int sb3dRaycastWorld(Vec3 rayOrig, Vec3 rayDir, float maxDist, SB3DRaycastHit *outHit);//
int sb3dRaycastFromCamera(const Camera *cam, float maxDist, SB3DRaycastHit *outHit);//

#endif /* _SIDBOX_3D_LIB_H_ */















/*
    Example materials:
    meshSetMaterial(mesh, ambient, diffuse, emissive, specularStrength, shininess);

    // dull matte / chalk / unpolished surface
    meshSetMaterial(&mesh, 0.10f, 0.90f, 0.00f, 0.00f, 4.0f);

    // plastic
    meshSetMaterial(&mesh, 0.08f, 0.85f, 0.00f, 0.25f, 8.0f);

    // glossy plastic
    meshSetMaterial(&mesh, 0.06f, 0.90f, 0.00f, 0.55f, 16.0f);

    // rubber / tyre
    meshSetMaterial(&mesh, 0.04f, 0.55f, 0.00f, 0.08f, 4.0f);

    // brushed metal
    meshSetMaterial(&mesh, 0.03f, 0.65f, 0.00f, 0.80f, 16.0f);

    // shiny metal
    meshSetMaterial(&mesh, 0.00f, 0.55f, 0.00f, 1.50f, 64.0f);

    // chrome / polished metal
    meshSetMaterial(&mesh, 0.00f, 0.45f, 0.00f, 2.00f, 96.0f);

    // dull stone
    meshSetMaterial(&mesh, 0.14f, 0.75f, 0.00f, 0.03f, 4.0f);

    // ceramic
    meshSetMaterial(&mesh, 0.10f, 0.80f, 0.00f, 0.35f, 12.0f);

    // glassy / crystal-ish fake
    meshSetMaterial(&mesh, 0.02f, 0.35f, 0.00f, 1.20f, 64.0f);

    // glowing panel / UI / engine light
    meshSetMaterial(&mesh, 0.00f, 0.20f, 0.55f, 0.00f, 4.0f);

    // strong emissive glow
    meshSetMaterial(&mesh, 0.00f, 0.10f, 1.00f, 0.00f, 4.0f);

    // dark spaceship hull
    meshSetMaterial(&mesh, 0.03f, 0.70f, 0.00f, 0.20f, 8.0f);

    // painted ship hull
    meshSetMaterial(&mesh, 0.06f, 0.95f, 0.00f, 0.30f, 12.0f);

    // old worn metal
    meshSetMaterial(&mesh, 0.05f, 0.70f, 0.00f, 0.35f, 8.0f);
*/



/* --- REFRESHER NOTES: ---------

    FLAGS: 1 = no backface culling

    SIDBOX material setup:

    - Put SBX_<paletteid> or SBX<flag>_<paletteid> somewhere in the material name
      Examples:
          Grass_SBX_39
          Grass_SBX1_39

    - Base Colour is ignored

    - Alpha controls transparency

    - Emission + Emission Strength control glow

    - The converter reads:
          SBX_<colour>
      or
          SBX<flag>_<colour>

      Examples:
          SBX_33       -> colour 33, no flag
          SBX1_39      -> flag 1, colour 39
          Rock_SBX2_12 -> flag 2, colour 12
*/


/* --- FULL Material Setup Notes: --------
    ============================================================
        SIDBOX SB3D MATERIAL SETUP
    ============================================================

    Modelling in Blender (or another modelling app):

    The material name is used to choose the SIDBOX palette colour,
    and may also include an optional SIDBOX material flag.

    The name can contain either:

        SBX_<paletteid>
    or
        SBX<flag>_<paletteid>

    ------------------------------------------------------------
    MATERIAL NAME
    ------------------------------------------------------------

    Examples of valid material names:

        SBX_33
        Grass_SBX_39
        SBX1_12
        Rock-SBX2_44
        PalmTreeBark_SBX3_61_Mat
        Sand,SBX_20

    Rules:

        - The converter scans the material name for "SBX"
        - Legacy format:
              SBX_<colour>
        - Flagged format:
              SBX<flag>_<colour>
        - The digits before the underscore are treated as the SIDBOX flag
        - The digits after the underscore are treated as the palette colour index
        - Valid palette index range is 0 to 255
        - Anything before or after that token is ignored

    Examples:

        "Grass_SBX_39"
            -> flag 0
            -> palette index 39

        "SBX1_12_Leaves"
            -> flag 1
            -> palette index 12

        "Rock-SBX2_44"
            -> flag 2
            -> palette index 44

        "PalmTreeBark_SBX3_61_Mat"
            -> flag 3
            -> palette index 61

    If no valid SBX token is found:
        the converter falls back to the default colour index

    ------------------------------------------------------------
    TOKEN FORMAT
    ------------------------------------------------------------

    Legacy format:

        SBX_<colour>

    Example:

        SBX_39
            -> flag 0
            -> colour 39

    Flagged format:

        SBX<flag>_<colour>

    Example:

        SBX1_39
            -> flag 1
            -> colour 39

    Meaning:

        SBXflag_colour

    ------------------------------------------------------------
    MATERIAL VALUES
    ------------------------------------------------------------

    Base Colour:
        ignored by the converter

    Alpha:
        used as transparency

    Emission:
        used as emissive/glow strength

    ------------------------------------------------------------
    BLENDER NOTES
    ------------------------------------------------------------

    Base Color:
        does nothing for SB3D export colour selection

    Alpha:
        controls triangle transparency

    Emission:
        controls triangle emissive strength

        For full emissive range:
            at least one of R, G, or B should be 1.0

        Then:
            Emission Strength controls the final brightness

    ------------------------------------------------------------
    SUMMARY
    ------------------------------------------------------------

    Colour:
        comes from the material name
        via SBX_<paletteid>
        or SBX<flag>_<paletteid>

    Flag:
        optional
        comes from the digits between SBX and the underscore

    Transparency:
        comes from Alpha

    Glow / Emission:
        comes from Emission + Emission Strength

    ------------------------------------------------------------
    QUICK EXAMPLES
    ------------------------------------------------------------

    Material name:
        Grass_SBX_39

    Result:
        flag = 0
        palette colour index = 39

    Material name:
        Grass_SBX1_39

    Result:
        flag = 1
        palette colour index = 39

    Blender settings:
        Alpha = 0.50
        Emission Color = (1.0, 1.0, 1.0)
        Emission Strength = 1.00

    Result:
        semi-transparent
        emissive/glowing
*/