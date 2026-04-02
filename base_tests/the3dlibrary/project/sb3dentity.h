#ifndef _SIDBOX_3D_ENTITIES_H_
#define _SIDBOX_3D_ENTITIES_H_


#include <stdint.h>

#include "sb3dworld.h"
#include "sb3dmath.h"


//meshSetMaterial(&theTorsu, 0.00f, 0.55f, 0.0f, 1.50f, 64.0f);   // shiny metal

/* -------------------------------------------------------------------------- */
/* Default colour offsets                                                     */
/* -------------------------------------------------------------------------- */

#define DEFAULT_COLOUR_BOTTOM  (COLOUR_OFFSET + 2)
#define DEFAULT_COLOUR_TOP     (COLOUR_OFFSET + 3)
#define DEFAULT_COLOUR_SIDE1   (COLOUR_OFFSET + 4)
#define DEFAULT_COLOUR_SIDE2   (COLOUR_OFFSET + 5)
#define DEFAULT_COLOUR_SIDE3   (COLOUR_OFFSET + 2)
#define DEFAULT_COLOUR_SIDE4   (COLOUR_OFFSET + 3)
#define DEFAULT_COLOUR         (COLOUR_OFFSET + 1)
#define DEFAULT_EMISSION       0

/* -------------------------------------------------------------------------- */
/* Entity FLAGS                                                               */
/* -------------------------------------------------------------------------- */
#define ENTITY_VISIBLE       (1u << 0)
#define ENTITY_HITTEST       (1u << 1)
#define ENTITY_COLLIDABLE    (1u << 2)

typedef enum {
    COLLISION_NONE = 0,
    COLLISION_SPHERE,
    COLLISION_AABB,
    COLLISION_MESH
} EntityCollisionType;

/* -------------------------------------------------------------------------- */
/* Entity                                                                     */
/* -------------------------------------------------------------------------- */

typedef struct {
    float minx, miny, minz;
    float maxx, maxy, maxz;
} SB3DTriBounds;

typedef struct {
    uint8_t valid;
    uint8_t dirty;
    uint8_t _pad[2];
    SB3DTriBounds meshBounds;
} EntityCollisionCache;



typedef struct align32 {
    Vec3 pos;
    Vec3 prevPos; // this should only be used for the engine
    Mesh *mesh;
    
    Vec3 forward;
    Vec3 right;
    Vec3 up;

    uint8_t active;
    uint8_t flags;  

    // collision cache
    EntityCollisionType collisionType;
    float collisionRadius;
    Vec3  collisionHalfSize;

    EntityCollisionCache cache;
} Entity;


typedef struct {
    float minx, miny, minz;
    float maxx, maxy, maxz;
} SB3DBounds;


extern Entity worldEntities[WORLD_MAX];


/* -------------------------------------------------------------------------- */
/* Entity world management                                                    */
/* -------------------------------------------------------------------------- */

int  entityIdValid(int id);
int  entityWorldSpawn(Mesh *mesh, Vec3 pos);
void entityWorldDestroy(int *id);

void entityAllowHit(int id, uint8_t hitenable);
void entityVisible(int id, uint8_t viewenable);

// collision
void entityEnableCollision(int id, uint8_t colenable);
int  entityMoveWithCollision(int moverId, Vec3 moveDelta, int *outHitId, uint8_t global);

int  entityCollisionTestSphereMesh(int idSphere, int idMesh);
void entitySetCollisionType(int id, EntityCollisionType type);
void entitySetCollisionRadius(int id, float radius);
void entitySetCollisionHalfSize(int id, Vec3 halfSize);

/* World-space helper */
Vec3 LookAtPointToPoint(Vec3 a, Vec3 b);

/* -------------------------------------------------------------------------- */
/* Entity transforms / movement                                               */
/* -------------------------------------------------------------------------- */

// Entity transforms / motion
Vec3 entityLocalToWorld(const Entity *e, Vec3 v);   // INTERNAL FUNCTION, but SHARED across other source files.


void entitySetPosition(int id, Vec3 pos);           // new position, without setting previous position to new 
void entitySetPositionAbs(int id, Vec3 pos);        // sets both new position and previous position
Vec3 entityGetPosition(int id);

float entityDistanceToPosition(int id, Vec3 target);
float entityDistanceToEntity(int aId, int bId);

void entityMatchOrientation(int id, int targetId);
void entityMatchOrientationCamera(int id, const Camera *cam);

void entityTurn(int id, float yaw, float pitch, float roll, uint8_t global);
void entityRotation(int id, float yaw, float pitch, float roll, uint8_t global);
Vec3 entityLookAtEntity(int aId, int bId, uint8_t rotate);

void entityTranslate(int id, Vec3 delta, uint8_t global);
void entityMove(int id, Vec3 delta);
void entityMoveForward(int id, float dist);
void entityMoveRight(int id, float dist);
void entityMoveUp(int id, float dist);
void entityMoveTowardsPosition(int id, Vec3 target, float step);
void entityMoveTowardsEntity(int id, int targetId, float step);

// assistance with sound changes
float dopplerValueEntityToEntity(int idA, int idB, float deltaTime, float strength, float distanceMin, float distanceMax);
void entityAudio(int listenerId, int sourceId, float panStrength, float distanceMin, float distanceMax, float *pan, float *volume);



/* -------------------------------------------------------------------------- */
/* Entity collision tests                                                     */
/* -------------------------------------------------------------------------- */
// collision testers
// public available if knowing exactly what is needed by the programmer
int entityCollisionTestSphereSphere(int idA, int idB);
int entityCollisionTestAABBAABB(int idA, int idB);
int entityCollisionTestSphereAABB(int idSphere, int idBox);

// API side
int entityCollisionTest(int idA, int idB);
int entityCollision(int id, int *outOtherId);


/* -------------------------------------------------------------------------- */
/* Entity colour helpers                                                      */
/* -------------------------------------------------------------------------- */
void entityColour(int id, uint8_t colour);
void entityColourFace(int id, int faceId, uint8_t colour);



/* -------------------------------------------------------------------------- */
/* Mesh material                                                              */
/* -------------------------------------------------------------------------- */

void meshSetDefaultMaterial(Mesh *mesh);
void meshSetMaterial(Mesh *mesh, float ambient, float diffuse, float emissive, float specularStrength, float shininess);
void meshColour(Mesh *mesh, uint8_t colour);
void meshColourFace(Mesh *mesh, int faceId, uint8_t colour);


/* -------------------------------------------------------------------------- */
/* Mesh utilities                                                             */
/* -------------------------------------------------------------------------- */

// calculations
void meshRecalcBounds(Mesh *mesh);
float meshComputeBoundsRadius(const Mesh *mesh);


uint8_t entityHasLineOfSightToPosition(int fromId, Vec3 pos);
uint8_t entityHasLineOfSightToEntity(int fromId, int toId);

void meshSetVertex(Mesh *mesh, int index, Vec3 v);
void meshOffsetVertex(Mesh *mesh, int index, Vec3 delta);
Vec3 meshGetVertex(const Mesh *mesh, int index);

void meshSetVertexRecalc(Mesh *mesh, int index, Vec3 v);
void meshOffsetVertexRecalc(Mesh *mesh, int index, Vec3 delta);
void meshResetFromSource(Mesh *dst, const Mesh *src);

void meshAnchorToBounds(Mesh *mesh, Vec3 anchor);
void meshTranslate(Mesh *mesh, Vec3 delta);
void meshScale(Mesh *mesh, Vec3 scale);

// WARNING:
// Separates all triangles into private vertices.
// Very useful for shattering / explode-face effects.
// Very bad if you enjoy having free RAM.
// ram goblin enabled.
Mesh meshSeparateTriangles(const Mesh *src);

// restore separated faces to their positions without welding the vertices
void refaceMesh(const Mesh *src, Mesh *target);

Mesh copyMesh(const Mesh *src);



/* -------------------------------------------------------------------------- */
/* Primitive mesh factories                                                   */
/* -------------------------------------------------------------------------- */

Mesh createBox(float width, float height, float depth);
Mesh createSphere(float radius, int stacks, int slices);
Mesh createPlane(float sizeX, float sizeZ, int divisions);
Mesh createCylinder(float radius, float height, int segments);
Mesh createCone(float radius, float height, int segments);
Mesh createPyramid(float width, float height);
Mesh createTorus(float majorRadius, float minorRadius, int majorSegs, int minorSegs);

#endif

