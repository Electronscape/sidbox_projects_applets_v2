// file: entity.c


#include <stdint.h>
#include <stdlib.h>
#include <math.h>


#include "sb3d.h"

int entityIdValid(int id)
{
    if (id < 0 || id >= WORLD_MAX) return 0;
    if (!worldEntities[id].active) return 0;
    if (!worldEntities[id].mesh) return 0;
    return 1;
}



/*
Vec3 entityLocalToWorld(const Entity *e, Vec3 v)
{
    Vec3 world = e->pos;

    world = vec3Add(world, vec3Scale(e->right,   v.x));
    world = vec3Add(world, vec3Scale(e->up,      v.y));
    world = vec3Add(world, vec3Scale(e->forward, v.z));

    return world;
}
*/


Vec3 entityLocalToWorld(const Entity *ent, Vec3 p)
{
    Vec3 out;

    out.x = ent->pos.x + (ent->right.x * p.x) + (ent->up.x * p.y) + (ent->forward.x * p.z);
    out.y = ent->pos.y + (ent->right.y * p.x) + (ent->up.y * p.y) + (ent->forward.y * p.z);
    out.z = ent->pos.z + (ent->right.z * p.x) + (ent->up.z * p.y) + (ent->forward.z * p.z);

    return out;
}



float meshComputeBoundsRadius(const Mesh *mesh)
{
    float maxDist2 = 0.0f;

    if (!mesh || !mesh->verts || mesh->vertCount <= 0) {
        return 0.0f;
    }

    for (int i = 0; i < mesh->vertCount; i++) {
        Vec3 v = mesh->verts[i];
        float d2 = (v.x * v.x) + (v.y * v.y) + (v.z * v.z);

        if (d2 > maxDist2) {
            maxDist2 = d2;
        }
    }

    return sqrtf(maxDist2);
}


int entityWorldSpawn(Mesh *mesh, Vec3 pos)
{
    int id;

    for (id = 0; id < WORLD_MAX; id++) {
        if (!worldEntities[id].active) {
            worldEntities[id].mesh = mesh;
            worldEntities[id].pos = pos;
            worldEntities[id].prevPos = pos;    // the same

            worldEntities[id].right   = (Vec3){ 1.0f, 0.0f, 0.0f };
            worldEntities[id].up      = (Vec3){ 0.0f, 1.0f, 0.0f };
            worldEntities[id].forward = (Vec3){ 0.0f, 0.0f, 1.0f };

            worldEntities[id].active          = 1;
            worldEntities[id].flags = ENTITY_VISIBLE;
            worldEntities[id].collisionType = COLLISION_NONE;
            worldEntities[id].collisionHalfSize = (Vec3) {0.0f, 0.0f, 0.0f};
            worldEntities[id].collisionRadius = 0.0f;


            return id;
        }
    }

    return -1;
}

void entityWorldDestroy(int *id)
{
    if (!id) return;
    if (*id < 0 || *id >= WORLD_MAX) {
        *id = -1;
        return;
    }

    worldEntities[*id].active = 0;
    worldEntities[*id].mesh = NULL;
    worldEntities[*id].pos = (Vec3){ 0.0f, 0.0f, 0.0f };
    worldEntities[*id].prevPos = (Vec3){ 0.0f, 0.0f, 0.0f };
    worldEntities[*id].right = (Vec3){ 1.0f, 0.0f, 0.0f };
    worldEntities[*id].up = (Vec3){ 0.0f, 1.0f, 0.0f };
    worldEntities[*id].forward = (Vec3){ 0.0f, 0.0f, 1.0f };

    *id = -1;
}


void entitySetPosition(int id, Vec3 pos)
{
    if (!entityIdValid(id)) return;
    worldEntities[id].pos = pos;
    worldEntities[id].prevPos = pos;
}

void entityMove(int id, Vec3 delta)
{
    if (!entityIdValid(id)) return;
    worldEntities[id].prevPos = worldEntities[id].pos;
    worldEntities[id].pos = vec3Add(worldEntities[id].pos, delta);
}

Vec3 entityGetPosition(int id)
{
    if (!entityIdValid(id)) {
        return (Vec3){0.0f, 0.0f, 0.0f};
    }
    return worldEntities[id].pos;
}


Vec3 entityGetForward(int id)
{
    if (!entityIdValid(id)) {
        return (Vec3){ 0.0f, 0.0f, 1.0f };
    }

    return worldEntities[id].forward;
}
Vec3 entityGetRight(int id)
{
    if (!entityIdValid(id)) {
        return (Vec3){ 1.0f, 0.0f, 0.0f };
    }

    return worldEntities[id].right;
}

Vec3 entityGetUp(int id)
{
    if (!entityIdValid(id)) {
        return (Vec3){ 0.0f, 1.0f, 0.0f };
    }

    return worldEntities[id].up;
}


void entityMoveForward(int id, float dist)
{
    if (!entityIdValid(id)) return;
    worldEntities[id].prevPos = worldEntities[id].pos;
    worldEntities[id].pos = vec3Add(
        worldEntities[id].pos,
        vec3Scale(worldEntities[id].forward, dist)
    );
}


void entityMoveRight(int id, float dist)
{
    if (!entityIdValid(id)) return;
    worldEntities[id].prevPos = worldEntities[id].pos;
    worldEntities[id].pos = vec3Add(
        worldEntities[id].pos,
        vec3Scale(worldEntities[id].right, dist)
    );
}

void entityMoveUp(int id, float dist)
{
    if (!entityIdValid(id)) return;
    worldEntities[id].prevPos = worldEntities[id].pos;
    worldEntities[id].pos = vec3Add(
        worldEntities[id].pos,
        vec3Scale(worldEntities[id].up, dist)
    );
}


// note colour palette SHOULD be 5 shades available, BUT not STRICTLY required ;)
// Set the whole mesh to a single colour
void entityColour(int id, uint8_t colour) {
    if (!entityIdValid(id)) return;

    Mesh *m = worldEntities[id].mesh;
    if (!m || !m->tris) return;

    for (int i = 0; i < m->triCount; i++) {
        m->tris[i].color = colour;
    }
}

void meshColour(Mesh *mesh, uint8_t colour){
    if (!mesh || !mesh->tris) return;

    for (int i = 0; i < mesh->triCount; i++) {
        mesh->tris[i].color = colour;
    }
}

// Set a specific face / triangle to a colour
void entityColourFace(int id, int faceId, uint8_t colour)
{
    if (!entityIdValid(id)) return;

    Mesh *m = worldEntities[id].mesh;
    if (!m || !m->tris) return;
    if (faceId < 0 || faceId >= m->triCount) return;

    m->tris[faceId].color = colour;
}


void normalizeEntity(Entity *e)
{
    if (!e) return;

    e->forward = vec3Normalize(e->forward);
    e->right   = vec3Normalize(e->right);

    e->up = vec3Cross(e->forward, e->right);
    e->up = vec3Normalize(e->up);

    e->right = vec3Cross(e->up, e->forward);
    e->right = vec3Normalize(e->right);
}

void entityResetAxes(Entity *e)
{
    if (!e) return;

    e->right   = (Vec3){ 1.0f, 0.0f, 0.0f };
    e->up      = (Vec3){ 0.0f, 1.0f, 0.0f };
    e->forward = (Vec3){ 0.0f, 0.0f, 1.0f };
}


void entityTurnLocal(int id, float yaw, float pitch, float roll)
{
    Entity *e;

    if (!entityIdValid(id)) return;
    e = &worldEntities[id];

    if (yaw != 0.0f) {
        e->forward = rotateAroundAxis(e->forward, e->up, yaw);
        e->right   = rotateAroundAxis(e->right,   e->up, yaw);
    }

    if (pitch != 0.0f) {
        e->forward = rotateAroundAxis(e->forward, e->right, pitch);
        e->up      = rotateAroundAxis(e->up,      e->right, pitch);
    }

    if (roll != 0.0f) {
        e->right = rotateAroundAxis(e->right,   e->forward, roll);
        e->up    = rotateAroundAxis(e->up,      e->forward, roll);
    }

    normalizeEntity(e);
}


void entityRotation(int id, float yaw, float pitch, float roll, uint8_t global)
{
    Entity *e;
    Vec3 axisYaw;
    Vec3 axisPitch;
    Vec3 axisRoll;

    if (!entityIdValid(id)) return;
    e = &worldEntities[id];

    if (global) {
        /*
            Absolute/global rotation:
            reset to identity, then rotate around WORLD axes.
        */
        e->right   = (Vec3){ 1.0f, 0.0f, 0.0f };
        e->up      = (Vec3){ 0.0f, 1.0f, 0.0f };
        e->forward = (Vec3){ 0.0f, 0.0f, 1.0f };

        axisYaw   = (Vec3){ 0.0f, 1.0f, 0.0f };
        axisPitch = (Vec3){ 1.0f, 0.0f, 0.0f };
        axisRoll  = (Vec3){ 0.0f, 0.0f, 1.0f };

        if (yaw != 0.0f) {
            e->forward = rotateAroundAxis(e->forward, axisYaw, yaw);
            e->right   = rotateAroundAxis(e->right,   axisYaw, yaw);
            e->up      = rotateAroundAxis(e->up,      axisYaw, yaw);
        }

        if (pitch != 0.0f) {
            e->forward = rotateAroundAxis(e->forward, axisPitch, pitch);
            e->right   = rotateAroundAxis(e->right,   axisPitch, pitch);
            e->up      = rotateAroundAxis(e->up,      axisPitch, pitch);
        }

        if (roll != 0.0f) {
            e->forward = rotateAroundAxis(e->forward, axisRoll, roll);
            e->right   = rotateAroundAxis(e->right,   axisRoll, roll);
            e->up      = rotateAroundAxis(e->up,      axisRoll, roll);
        }
    } else {
        /*
            Local/incremental rotation:
            rotate around the entity's CURRENT local axes.
        */
        if (yaw != 0.0f) {
            axisYaw = e->up;

            e->forward = rotateAroundAxis(e->forward, axisYaw, yaw);
            e->right   = rotateAroundAxis(e->right,   axisYaw, yaw);
            e->up      = rotateAroundAxis(e->up,      axisYaw, yaw);
        }

        if (pitch != 0.0f) {
            axisPitch = e->right;

            e->forward = rotateAroundAxis(e->forward, axisPitch, pitch);
            e->right   = rotateAroundAxis(e->right,   axisPitch, pitch);
            e->up      = rotateAroundAxis(e->up,      axisPitch, pitch);
        }

        if (roll != 0.0f) {
            axisRoll = e->forward;

            e->forward = rotateAroundAxis(e->forward, axisRoll, roll);
            e->right   = rotateAroundAxis(e->right,   axisRoll, roll);
            e->up      = rotateAroundAxis(e->up,      axisRoll, roll);
        }
    }

    normalizeEntity(e);
}

void entityTurnGlobal(int id, float yaw, float pitch, float roll)
{
    Entity *e;
    Vec3 worldX = { 1.0f, 0.0f, 0.0f };
    Vec3 worldY = { 0.0f, 1.0f, 0.0f };
    Vec3 worldZ = { 0.0f, 0.0f, 1.0f };

    if (!entityIdValid(id)) return;
    e = &worldEntities[id];

    if (yaw != 0.0f) {
        e->forward = rotateAroundAxis(e->forward, worldY, yaw);
        e->right   = rotateAroundAxis(e->right,   worldY, yaw);
        e->up      = rotateAroundAxis(e->up,      worldY, yaw);
    }

    if (pitch != 0.0f) {
        e->forward = rotateAroundAxis(e->forward, worldX, pitch);
        e->right   = rotateAroundAxis(e->right,   worldX, pitch);
        e->up      = rotateAroundAxis(e->up,      worldX, pitch);
    }

    if (roll != 0.0f) {
        e->forward = rotateAroundAxis(e->forward, worldZ, roll);
        e->right   = rotateAroundAxis(e->right,   worldZ, roll);
        e->up      = rotateAroundAxis(e->up,      worldZ, roll);
    }

    normalizeEntity(e);
}

//////////// primative creator factory /////////////////////////////////
// Create a box mesh at origin with given width, height, depth
Mesh createBox(float width, float height, float depth)
{
    Mesh mesh = {0};

    // Allocate vertices (8 corners)
    mesh.vertCount = 8;
    mesh.verts = malloc(sizeof(Vec3) * mesh.vertCount);

    float hw = width  * 0.5f;
    float hh = height * 0.5f;
    float hd = depth  * 0.5f;

    // Bottom vertices
    mesh.verts[0] = (Vec3){ -hw, -hh, -hd };
    mesh.verts[1] = (Vec3){  hw, -hh, -hd };
    mesh.verts[2] = (Vec3){  hw, -hh,  hd };
    mesh.verts[3] = (Vec3){ -hw, -hh,  hd };

    // Top vertices
    mesh.verts[4] = (Vec3){ -hw,  hh, -hd };
    mesh.verts[5] = (Vec3){  hw,  hh, -hd };
    mesh.verts[6] = (Vec3){  hw,  hh,  hd };
    mesh.verts[7] = (Vec3){ -hw,  hh,  hd };

    // Allocate edges (12 edges)
    mesh.edgeCount = 12;
    mesh.edges = malloc(sizeof(Edge) * mesh.edgeCount);
    Edge e[] = {
        {0,1},{1,2},{2,3},{3,0},     // bottom
        {4,5},{5,6},{6,7},{7,4},     // top
        {0,4},{1,5},{2,6},{3,7}      // verticals
    };
    for (int i = 0; i < mesh.edgeCount; i++) mesh.edges[i] = e[i];

    // Allocate triangles (12 tris, 2 per face)
    mesh.triCount = 12;
    mesh.tris = malloc(sizeof(Tri) * mesh.triCount);
    Tri t[] = {
        // bottom
        {0,1,2, DEFAULT_COLOUR_BOTTOM, DEFAULT_EMISSION}, {0,2,3, DEFAULT_COLOUR_BOTTOM, DEFAULT_EMISSION},
        // top
        {4,6,5, DEFAULT_COLOUR_TOP, DEFAULT_EMISSION}, {4,7,6, DEFAULT_COLOUR_TOP, DEFAULT_EMISSION},
        // side 1
        {0,4,5, DEFAULT_COLOUR_SIDE1, DEFAULT_EMISSION}, {0,5,1, DEFAULT_COLOUR_SIDE1, DEFAULT_EMISSION},
        // side 2
        {1,5,6, DEFAULT_COLOUR_SIDE2, DEFAULT_EMISSION}, {1,6,2, DEFAULT_COLOUR_SIDE2, DEFAULT_EMISSION},
        // side 3
        {2,6,7, DEFAULT_COLOUR_SIDE3, DEFAULT_EMISSION}, {2,7,3, DEFAULT_COLOUR_SIDE3, DEFAULT_EMISSION},
        // side 4
        {3,7,4, DEFAULT_COLOUR_SIDE4, DEFAULT_EMISSION}, {3,4,0, DEFAULT_COLOUR_SIDE4, DEFAULT_EMISSION}
    };
    for (int i = 0; i < mesh.triCount; i++) mesh.tris[i] = t[i];

    // Compute bounds radius
    mesh.boundsRadius = meshComputeBoundsRadius(&mesh);
    meshSetDefaultMaterial(&mesh);
    //setMeshColour(&mesh, 32);
    return mesh;
}




Mesh createSphere(float radius, int stacks, int slices) 
{
    Mesh mesh = {0};
    

    mesh.vertCount = (stacks + 1) * (slices + 1);
    mesh.triCount = stacks * slices * 2;

    mesh.verts = malloc(sizeof(Vec3) * mesh.vertCount);
    mesh.tris  = malloc(sizeof(Tri) * mesh.triCount);
    // edges optional

    int vi = 0;
    for (int s = 0; s <= stacks; s++) {
        float phi = -M_PI/2 + (float)s / stacks * M_PI;
        float y = radius * sinf(phi);
        float r = radius * cosf(phi);
        for (int t = 0; t <= slices; t++) {
            float theta = (float)t / slices * 2.0f * M_PI;
            float x = r * sinf(theta);
            float z = r * cosf(theta);
            mesh.verts[vi++] = (Vec3){x, y, z};
        }
    }

    // generate triangles
    int ti = 0;
    for (int s = 0; s < stacks; s++) {
        for (int t = 0; t < slices; t++) {
            int i0 = s * (slices+1) + t;
            int i1 = i0 + slices + 1;
            int i2 = i0 + 1;
            int i3 = i1 + 1;

            mesh.tris[ti++] = (Tri){i0, i2, i1, DEFAULT_COLOUR, DEFAULT_EMISSION};
            mesh.tris[ti++] = (Tri){i2, i3, i1, DEFAULT_COLOUR, DEFAULT_EMISSION};
        }
    }

    mesh.boundsRadius = meshComputeBoundsRadius(&mesh);
    meshSetDefaultMaterial(&mesh);
    return mesh;
}


Mesh createPlane(float sizeX, float sizeZ, int divisions)
{
    Mesh mesh = {0};   

    int vertsPerSide = divisions + 1;

    mesh.vertCount = vertsPerSide * vertsPerSide;
    mesh.triCount  = divisions * divisions * 2;

    mesh.verts = malloc(sizeof(Vec3) * mesh.vertCount);
    mesh.tris  = malloc(sizeof(Tri)  * mesh.triCount);
    mesh.edges = NULL;
    mesh.edgeCount = 0;

    float halfX = sizeX * 0.5f;
    float halfZ = sizeZ * 0.5f;

    float stepX = sizeX / divisions;
    float stepZ = sizeZ / divisions;

    // ---- generate vertices ----
    int vi = 0;

    for (int z = 0; z <= divisions; z++) {
        for (int x = 0; x <= divisions; x++) {

            float px = -halfX + (x * stepX);
            float pz = -halfZ + (z * stepZ);

            mesh.verts[vi++] = (Vec3){ px, 0.0f, pz };
        }
    }

    // ---- generate triangles ----
    int ti = 0;

    for (int z = 0; z < divisions; z++) {
        for (int x = 0; x < divisions; x++) {

            int i0 =  z      * vertsPerSide + x;
            int i1 = (z + 1) * vertsPerSide + x;
            int i2 =  i0 + 1;
            int i3 =  i1 + 1;

            mesh.tris[ti++] = (Tri){ i0, i1, i2, DEFAULT_COLOUR, DEFAULT_EMISSION };
            mesh.tris[ti++] = (Tri){ i2, i1, i3, DEFAULT_COLOUR, DEFAULT_EMISSION };
        }
    }
    mesh.boundsRadius = meshComputeBoundsRadius(&mesh);
    meshSetDefaultMaterial(&mesh);
    return mesh;
}


Mesh createCylinder(float radius, float height, int segments)
{
    Mesh mesh = {0};
    int vertCount = (segments + 1) * 2; // top + bottom rings
    int triCount  = segments * 4;       // 2 for top cap, 2 for bottom cap, 2 per side quad
    mesh.vertCount = vertCount;
    mesh.triCount  = triCount;
    mesh.edgeCount = segments * 6;      // optional for wireframe edges

    mesh.verts = malloc(sizeof(Vec3) * vertCount);
    mesh.tris  = malloc(sizeof(Tri) * triCount);
    mesh.edges = malloc(sizeof(Edge) * mesh.edgeCount);

    float halfH = height * 0.5f;

    // vertices
    for (int i = 0; i <= segments; i++) {
        float theta = (float)i / segments * 2.0f * M_PI;
        float x = radius * cosf(theta);
        float z = radius * sinf(theta);

        // bottom ring
        mesh.verts[i] = (Vec3){ x, -halfH, z };
        // top ring
        mesh.verts[i + segments + 1] = (Vec3){ x, halfH, z };
    }

    int ti = 0;
    int ei = 0;

    // side quads -> 2 tris per segment
    for (int i = 0; i < segments; i++) {
        int b0 = i;
        int b1 = (i + 1) % (segments + 1);
        int t0 = b0 + segments + 1;
        int t1 = b1 + segments + 1;

        // first triangle
        mesh.tris[ti++] = (Tri){ b0, t0, t1, DEFAULT_COLOUR, DEFAULT_EMISSION };
        // second triangle
        mesh.tris[ti++] = (Tri){ b0, t1, b1, DEFAULT_COLOUR, DEFAULT_EMISSION };

        // edges for wireframe
        mesh.edges[ei++] = (Edge){ b0, b1 };
        mesh.edges[ei++] = (Edge){ t0, t1 };
        mesh.edges[ei++] = (Edge){ b0, t0 };
    }

    // top cap (normal points up)
    Vec3 topCenter = (Vec3){0, halfH, 0};
    mesh.verts = realloc(mesh.verts, sizeof(Vec3) * (mesh.vertCount + 1));
    mesh.verts[mesh.vertCount++] = topCenter;
    int topCenterIndex = mesh.vertCount - 1;

    for (int i = 0; i < segments; i++) {
        int t0 = i + segments + 1;
        int t1 = (i + 1) % (segments + 1) + segments + 1;
        // flip order for correct CCW
        mesh.tris[ti++] = (Tri){ topCenterIndex, t1, t0, DEFAULT_COLOUR, DEFAULT_EMISSION };
    }

    // bottom cap (normal points down)
    Vec3 bottomCenter = (Vec3){0, -halfH, 0};
    mesh.verts = realloc(mesh.verts, sizeof(Vec3) * (mesh.vertCount + 1));
    mesh.verts[mesh.vertCount++] = bottomCenter;
    int bottomCenterIndex = mesh.vertCount - 1;

    for (int i = 0; i < segments; i++) {
        int b0 = i;
        int b1 = (i + 1) % (segments + 1);
        // flip order for correct CCW
        mesh.tris[ti++] = (Tri){ bottomCenterIndex, b0, b1, DEFAULT_COLOUR, DEFAULT_EMISSION };
    }

    mesh.boundsRadius = meshComputeBoundsRadius(&mesh);
    meshSetDefaultMaterial(&mesh);

    return mesh;
}




Mesh createCone(float radius, float height, int segments)
{
    Mesh mesh = {0};
    float halfH = height * 0.5f;

    // Vertices: bottom ring + tip
    mesh.vertCount = segments + 2;
    mesh.triCount  = segments * 2; // sides + bottom
    mesh.edgeCount = segments * 3;

    mesh.verts = malloc(sizeof(Vec3) * mesh.vertCount);
    mesh.tris  = malloc(sizeof(Tri) * mesh.triCount);
    mesh.edges = malloc(sizeof(Edge) * mesh.edgeCount);

    // bottom ring
    for (int i = 0; i <= segments; i++) {
        float theta = (float)i / segments * 2.0f * M_PI;
        float x = radius * cosf(theta);
        float z = radius * sinf(theta);
        mesh.verts[i] = (Vec3){ x, -halfH, z };
    }

    // tip vertex
    mesh.verts[mesh.vertCount - 1] = (Vec3){ 0, halfH, 0 };
    int tipIndex = mesh.vertCount - 1;

    int ti = 0;
    int ei = 0;

    // side triangles
    for (int i = 0; i < segments; i++) {
        int b0 = i;
        int b1 = (i + 1) % (segments + 1);
        // flip b0 and b1 to fix winding
        mesh.tris[ti++] = (Tri){ b1, b0, tipIndex, DEFAULT_COLOUR, DEFAULT_EMISSION };

        mesh.edges[ei++] = (Edge){ b0, b1 };
        mesh.edges[ei++] = (Edge){ b0, tipIndex };
    }

    // bottom cap
    Vec3 bottomCenter = (Vec3){ 0, -halfH, 0 };
    mesh.verts = realloc(mesh.verts, sizeof(Vec3) * (mesh.vertCount + 1));
    mesh.verts[mesh.vertCount++] = bottomCenter;
    int bottomIndex = mesh.vertCount - 1;

    for (int i = 0; i < segments; i++) {
        int b0 = i;
        int b1 = (i + 1) % (segments + 1);
        mesh.tris[ti++] = (Tri){ bottomIndex, b0, b1, DEFAULT_COLOUR, DEFAULT_EMISSION };
        mesh.edges[ei++] = (Edge){ b0, bottomIndex };
    }

    mesh.boundsRadius = meshComputeBoundsRadius(&mesh);
    meshSetDefaultMaterial(&mesh);
    return mesh;
}



Mesh createPyramid(float width, float height)
{
    Mesh mesh = {0};
    mesh.vertCount = 5;
    mesh.triCount  = 6;
    mesh.edgeCount = 8;

    mesh.verts = malloc(sizeof(Vec3) * mesh.vertCount);
    mesh.tris  = malloc(sizeof(Tri) * mesh.triCount);
    mesh.edges = malloc(sizeof(Edge) * mesh.edgeCount);

    float hw = width * 0.5f;
    float hh = height * 0.5f;

    // base vertices
    mesh.verts[0] = (Vec3){ -hw, -hh, -hw };
    mesh.verts[1] = (Vec3){  hw, -hh, -hw };
    mesh.verts[2] = (Vec3){  hw, -hh,  hw };
    mesh.verts[3] = (Vec3){ -hw, -hh,  hw };

    // tip
    mesh.verts[4] = (Vec3){ 0, hh, 0 };

    // base
    mesh.tris[0] = (Tri){ 0, 1, 2, DEFAULT_COLOUR, DEFAULT_EMISSION };
    mesh.tris[1] = (Tri){ 0, 2, 3, DEFAULT_COLOUR, DEFAULT_EMISSION };

    // sides
    mesh.tris[2] = (Tri){ 0, 4, 1, DEFAULT_COLOUR, DEFAULT_EMISSION };
    mesh.tris[3] = (Tri){ 1, 4, 2, DEFAULT_COLOUR, DEFAULT_EMISSION };
    mesh.tris[4] = (Tri){ 2, 4, 3, DEFAULT_COLOUR, DEFAULT_EMISSION };
    mesh.tris[5] = (Tri){ 3, 4, 0, DEFAULT_COLOUR, DEFAULT_EMISSION };

    // edges (optional)
    mesh.edges[0] = (Edge){0,1}; mesh.edges[1] = (Edge){1,2};
    mesh.edges[2] = (Edge){2,3}; mesh.edges[3] = (Edge){3,0};
    mesh.edges[4] = (Edge){0,4}; mesh.edges[5] = (Edge){1,4};
    mesh.edges[6] = (Edge){2,4}; mesh.edges[7] = (Edge){3,4};

    mesh.boundsRadius = meshComputeBoundsRadius(&mesh);
    meshSetDefaultMaterial(&mesh);
    return mesh;
}





Mesh createTorus(float majorRadius, float minorRadius, int majorSegs, int minorSegs)
{
    Mesh mesh = {0};
    mesh.vertCount = (majorSegs + 1) * (minorSegs + 1);
    mesh.triCount  = majorSegs * minorSegs * 2;
    mesh.edgeCount = 0; // optional

    mesh.verts = malloc(sizeof(Vec3) * mesh.vertCount);
    mesh.tris  = malloc(sizeof(Tri) * mesh.triCount);
    mesh.edges = NULL;

    int vi = 0;
    for (int i = 0; i <= majorSegs; i++) {
        float phi = (float)i / majorSegs * 2.0f * M_PI;
        float cosPhi = cosf(phi);
        float sinPhi = sinf(phi);

        for (int j = 0; j <= minorSegs; j++) {
            float theta = (float)j / minorSegs * 2.0f * M_PI;
            float cosTheta = cosf(theta);
            float sinTheta = sinf(theta);

            float x = (majorRadius + minorRadius * cosTheta) * cosPhi;
            float y = minorRadius * sinTheta;
            float z = (majorRadius + minorRadius * cosTheta) * sinPhi;

            mesh.verts[vi++] = (Vec3){x, y, z};
        }
    }

    int ti = 0;
    for (int i = 0; i < majorSegs; i++) {
        for (int j = 0; j < minorSegs; j++) {
            int i0 = i * (minorSegs + 1) + j;
            int i1 = i0 + minorSegs + 1;
            int i2 = i0 + 1;
            int i3 = i1 + 1;

            mesh.tris[ti++] = (Tri){i0, i2, i1, DEFAULT_COLOUR, DEFAULT_EMISSION};
            mesh.tris[ti++] = (Tri){i2, i3, i1, DEFAULT_COLOUR, DEFAULT_EMISSION};
        }
    }

    mesh.boundsRadius = meshComputeBoundsRadius(&mesh);
    meshSetDefaultMaterial(&mesh);
    return mesh;
}




void meshSetVertex(Mesh *mesh, int index, Vec3 v)
{
    if (!mesh || !mesh->verts) return;
    if (index < 0 || index >= mesh->vertCount) return;

    mesh->verts[index] = v;
}

void meshOffsetVertex(Mesh *mesh, int index, Vec3 delta)
{
    if (!mesh) return;
    if (index < 0 || index >= mesh->vertCount) return;

    mesh->verts[index] = vec3Add(mesh->verts[index], delta);
}

Vec3 meshGetVertex(const Mesh *mesh, int index)
{
    if (!mesh || !mesh->verts) return (Vec3){0.0f, 0.0f, 0.0f};
    
    if (index < 0 || index >= mesh->vertCount) return (Vec3){0.0f, 0.0f, 0.0f};

    return mesh->verts[index];
}

void meshSetVertexRecalc(Mesh *mesh, int index, Vec3 v)
{
    if (!mesh) return;
    if (index < 0 || index >= mesh->vertCount) return;

    mesh->verts[index] = v;
    mesh->boundsRadius = meshComputeBoundsRadius(mesh);
}

void meshOffsetVertexRecalc(Mesh *mesh, int index, Vec3 delta)
{
    if (!mesh) return;
    if (index < 0 || index >= mesh->vertCount) return;

    mesh->verts[index] = vec3Add(mesh->verts[index], delta);
    mesh->boundsRadius = meshComputeBoundsRadius(mesh);
}

void meshResetFromSource(Mesh *dst, const Mesh *src)
{
    if (!dst || !src) return;
    if (!dst->verts || !src->verts) return;
    if (dst->vertCount != src->vertCount) return;

    for (int i = 0; i < src->vertCount; i++) {
        dst->verts[i] = src->verts[i];
    }

    dst->boundsRadius = src->boundsRadius;
}






// demo test
void meshDeformWaveY(Mesh *mesh, float time, float amount, float freq)
{
    if (!mesh) return;

    for (int i = 0; i < mesh->vertCount; i++) {
        Vec3 v = mesh->verts[i];
        v.y += sinf(time + (v.x * freq)) * amount;
        mesh->verts[i] = v;
    }

    mesh->boundsRadius = meshComputeBoundsRadius(mesh);
}

void meshDeformWavePlaneY(Mesh *mesh, float time, float amp, float freqX, float freqZ, float speed)
{
    if (!mesh) return;

    for (int i = 0; i < mesh->vertCount; i++) {
        Vec3 v = mesh->verts[i];

        float wave =
            sinf((v.x * freqX) + (time * speed)) +
            cosf((v.z * freqZ) + (time * speed * 0.7f));

        v.y += wave * amp;
        mesh->verts[i] = v;
    }

    mesh->boundsRadius = meshComputeBoundsRadius(mesh);
}





// Deep copy a mesh (returns independent instance)
Mesh copyMesh(const Mesh *src)
{
    Mesh dst = {0};
    if (!src) return dst;

    dst.vertCount = src->vertCount;
    dst.edgeCount = src->edgeCount;
    dst.triCount  = src->triCount;

    dst.verts = NULL;
    dst.edges = NULL;
    dst.tris  = NULL;

    if (dst.vertCount > 0) {
        dst.verts = malloc(sizeof(Vec3) * dst.vertCount);
    }

    if (dst.edgeCount > 0) {
        dst.edges = malloc(sizeof(Edge) * dst.edgeCount);
    }

    if (dst.triCount > 0) {
        dst.tris = malloc(sizeof(Tri) * dst.triCount);
    }

    for (int i = 0; i < dst.vertCount; i++) {
        dst.verts[i] = src->verts[i];
    }

    for (int i = 0; i < dst.edgeCount; i++) {
        dst.edges[i] = src->edges[i];
    }

    for (int i = 0; i < dst.triCount; i++) {
        dst.tris[i] = src->tris[i];
    }

    dst.boundsRadius = src->boundsRadius;
    dst.material     = src->material;

    return dst;
}



void entityFollowCameraXZ(int id, const Camera *cam, float worldY, float snap)
{
    float px;
    float pz;

    if (!cam) return;
    if (!entityIdValid(id)) return;

    if (snap <= 0.0f) {
        snap = 1.0f;
    }

    px = floorf(cam->pos.x / snap) * snap;
    pz = floorf(cam->pos.z / snap) * snap;

    worldEntities[id].pos.x = px;
    worldEntities[id].pos.y = worldY;
    worldEntities[id].pos.z = pz;
}

Vec3 entityLookAt(int aId, int bId, uint8_t rotate)
{
    Vec3 ang;
    float dx, dy, dz;
    float horiz;

    if (!entityIdValid(aId) || !entityIdValid(bId)) {
        return (Vec3){ 0.0f, 0.0f, 0.0f };
    }

    dx = worldEntities[bId].pos.x - worldEntities[aId].pos.x;
    dy = worldEntities[bId].pos.y - worldEntities[aId].pos.y;
    dz = worldEntities[bId].pos.z - worldEntities[aId].pos.z;

    if ((dx == 0.0f) && (dy == 0.0f) && (dz == 0.0f)) {
        return (Vec3){ 0.0f, 0.0f, 0.0f };
    }

    /*
        Absolute yaw:
        forward = +Z
        yaw 0 faces +Z
        positive yaw turns toward +X
    */
    ang.y = atan2f(dx, dz);

    /*
        Absolute pitch from horizontal plane
    */
    horiz = sqrtf((dx * dx) + (dz * dz));
    ang.x = -atan2f(dy, horiz);

    /*
        Roll cannot be derived from just two positions.
        Keep it at zero.
    */
    ang.z = 0.0f;

    if (rotate) {
        entityRotation(aId, ang.y, ang.x, ang.z, 1);
    }

    return ang;
}

Vec3 positionLookAt(Vec3 a, Vec3 b)
{
    Vec3 ang;
    float dx, dy, dz;
    float horiz;

    dx = b.x - a.x;
    dy = b.y - a.y;
    dz = b.z - a.z;

    if ((dx == 0.0f) && (dy == 0.0f) && (dz == 0.0f)) {
        return (Vec3){ 0.0f, 0.0f, 0.0f };
    }

    /*
        Absolute yaw:
        forward = +Z
        yaw 0 faces +Z
        positive yaw turns toward +X
    */
    ang.y = atan2f(dx, dz);

    /*
        Absolute pitch from horizontal plane
    */
    horiz = sqrtf((dx * dx) + (dz * dz));
    ang.x = -atan2f(dy, horiz);

    /*
        Roll cannot be derived from just two positions.
        Keep it at zero.
    */
    ang.z = 0.0f;

    return ang;
}

Vec3 entityLookAtPosition(int entityId, Vec3 target, uint8_t rotate)
{
    Vec3 ang;
    float dx, dy, dz;
    float horiz;

    if (!entityIdValid(entityId)) {
        return (Vec3){ 0.0f, 0.0f, 0.0f };
    }

    dx = target.x - worldEntities[entityId].pos.x;
    dy = target.y - worldEntities[entityId].pos.y;
    dz = target.z - worldEntities[entityId].pos.z;

    if ((dx == 0.0f) && (dy == 0.0f) && (dz == 0.0f)) {
        return (Vec3){ 0.0f, 0.0f, 0.0f };
    }

    ang.y = atan2f(dx, dz);

    horiz = sqrtf((dx * dx) + (dz * dz));
    ang.x = -atan2f(dy, horiz);

    ang.z = 0.0f;

    if (rotate) {
        entityRotation(entityId, ang.y, ang.x, ang.z, 1);
    }

    return ang;
}


void entitySetBasis(int id, Vec3 right, Vec3 up, Vec3 forward)
{
    Entity *e;
    float len2;

    if (!entityIdValid(id)) return;
    e = &worldEntities[id];

    /* normalize forward */
    len2 = (forward.x * forward.x) + (forward.y * forward.y) + (forward.z * forward.z);
    if (len2 > 0.000001f) {
        float invLen = 1.0f / sqrtf(len2);
        forward.x *= invLen;
        forward.y *= invLen;
        forward.z *= invLen;
    } else {
        forward = (Vec3){ 0.0f, 0.0f, 1.0f };
    }

    /* normalize up */
    len2 = (up.x * up.x) + (up.y * up.y) + (up.z * up.z);
    if (len2 > 0.000001f) {
        float invLen = 1.0f / sqrtf(len2);
        up.x *= invLen;
        up.y *= invLen;
        up.z *= invLen;
    } else {
        up = (Vec3){ 0.0f, 1.0f, 0.0f };
    }

    /* rebuild right = up x forward */
    right.x = (up.y * forward.z) - (up.z * forward.y);
    right.y = (up.z * forward.x) - (up.x * forward.z);
    right.z = (up.x * forward.y) - (up.y * forward.x);

    len2 = (right.x * right.x) + (right.y * right.y) + (right.z * right.z);
    if (len2 > 0.000001f) {
        float invLen = 1.0f / sqrtf(len2);
        right.x *= invLen;
        right.y *= invLen;
        right.z *= invLen;
    } else {
        right = (Vec3){ 1.0f, 0.0f, 0.0f };
    }

    /* rebuild up = forward x right for orthogonality */
    up.x = (forward.y * right.z) - (forward.z * right.y);
    up.y = (forward.z * right.x) - (forward.x * right.z);
    up.z = (forward.x * right.y) - (forward.y * right.x);

    len2 = (up.x * up.x) + (up.y * up.y) + (up.z * up.z);
    if (len2 > 0.000001f) {
        float invLen = 1.0f / sqrtf(len2);
        up.x *= invLen;
        up.y *= invLen;
        up.z *= invLen;
    } else {
        up = (Vec3){ 0.0f, 1.0f, 0.0f };
    }

    e->right = right;
    e->up = up;
    e->forward = forward;
}

void entityAlignToHit(int id, const SB3DRaycastHit *hit){
    Entity *e;

    if (!hit) return;
    if (!hit->hit) return;
    if (!entityIdValid(id)) return;

    e = &worldEntities[id];

    e->right   = hit->right;
    e->up      = hit->up;
    e->forward = hit->forward;

    normalizeEntity(e);
}

void entityAllowHit(int id, uint8_t hitenable){
    Entity *e;
    if (!entityIdValid(id)) return;
    e = &worldEntities[id];

    if(hitenable) e->flags |=  ENTITY_HITTEST;
    else          e->flags &= ~ENTITY_HITTEST;
}

void entityVisible(int id, uint8_t viewenable){
    Entity *e;
    if (!entityIdValid(id)) return;
    e = &worldEntities[id];

    if(viewenable) e->flags |=  ENTITY_VISIBLE;
    else           e->flags &= ~ENTITY_VISIBLE;
}


void entityEnableCollision(int id, uint8_t enable)
{
    Entity *e;

    if (!entityIdValid(id)) return;
    e = &worldEntities[id];

    if (enable)
        e->flags |= ENTITY_COLLIDABLE;
    else
        e->flags &= ~ENTITY_COLLIDABLE;
}

void entitySetCollisionType(int id, EntityCollisionType type)
{
    Entity *e;

    if (!entityIdValid(id)) return;
    e = &worldEntities[id];
    e->collisionType = type;
}

void entitySetCollisionRadius(int id, float radius)
{
    Entity *e;

    if (!entityIdValid(id)) return;
    if (radius < 0.0f) radius = 0.0f;

    e = &worldEntities[id];
    e->collisionRadius = radius;
}

void entitySetCollisionHalfSize(int id, Vec3 halfSize)
{
    Entity *e;

    if (!entityIdValid(id)) return;

    if (halfSize.x < 0.0f) halfSize.x = 0.0f;
    if (halfSize.y < 0.0f) halfSize.y = 0.0f;
    if (halfSize.z < 0.0f) halfSize.z = 0.0f;

    e = &worldEntities[id];
    e->collisionHalfSize = halfSize;
}







/* -------------------------------------------------------------------------- */
/* Entity collision testings                                                  */
/* -------------------------------------------------------------------------- */
static float clampf_local(float v, float lo, float hi)
{
    if (v < lo) return lo;
    if (v > hi) return hi;
    return v;
}

static Vec3 closestPointOnTriangle(Vec3 p, Vec3 a, Vec3 b, Vec3 c)
{
    Vec3 ab = vec3Sub(b, a);
    Vec3 ac = vec3Sub(c, a);
    Vec3 ap = vec3Sub(p, a);

    float d1 = vec3Dot(ab, ap);
    float d2 = vec3Dot(ac, ap);

    if (d1 <= 0.0f && d2 <= 0.0f) return a;

    Vec3 bp = vec3Sub(p, b);
    float d3 = vec3Dot(ab, bp);
    float d4 = vec3Dot(ac, bp);

    if (d3 >= 0.0f && d4 <= d3) return b;

    float vc = (d1 * d4) - (d3 * d2);
    if (vc <= 0.0f && d1 >= 0.0f && d3 <= 0.0f) {
        float v = d1 / (d1 - d3);
        return vec3Add(a, vec3Scale(ab, v));
    }

    Vec3 cp = vec3Sub(p, c);
    float d5 = vec3Dot(ab, cp);
    float d6 = vec3Dot(ac, cp);

    if (d6 >= 0.0f && d5 <= d6) return c;

    float vb = (d5 * d2) - (d1 * d6);
    if (vb <= 0.0f && d2 >= 0.0f && d6 <= 0.0f) {
        float w = d2 / (d2 - d6);
        return vec3Add(a, vec3Scale(ac, w));
    }

    float va = (d3 * d6) - (d5 * d4);
    if (va <= 0.0f && (d4 - d3) >= 0.0f && (d5 - d6) >= 0.0f) {
        Vec3 bc = vec3Sub(c, b);
        float w = (d4 - d3) / ((d4 - d3) + (d5 - d6));
        return vec3Add(b, vec3Scale(bc, w));
    }

    {
        float denom = 1.0f / (va + vb + vc);
        float v = vb * denom;
        float w = vc * denom;

        Vec3 out = a;
        out = vec3Add(out, vec3Scale(ab, v));
        out = vec3Add(out, vec3Scale(ac, w));
        return out;
    }
}

int entityCollisionTestSphereMeshDetailed(
    int idSphere,
    int idMesh,
    Vec3 *outNormal,
    Vec3 *outPoint,
    float *outPenetration
)
{
    Entity *sphereEnt;
    Entity *meshEnt;
    Mesh *mesh;

    Vec3 spherePos;
    float radius;
    float radius2;

    int found = 0;
    float bestPenetration = -999999.0f;
    Vec3 bestNormal = { 0.0f, 1.0f, 0.0f };
    Vec3 bestPoint  = { 0.0f, 0.0f, 0.0f };

    if (!entityIdValid(idSphere)) return 0;
    if (!entityIdValid(idMesh)) return 0;
    if (idSphere == idMesh) return 0;

    sphereEnt = &worldEntities[idSphere];
    meshEnt   = &worldEntities[idMesh];

    if (!sphereEnt->active || !meshEnt->active) return 0;
    if (!(sphereEnt->flags & ENTITY_COLLIDABLE)) return 0;
    if (!(meshEnt->flags & ENTITY_COLLIDABLE)) return 0;

    if (sphereEnt->collisionType != COLLISION_SPHERE) return 0;
    if (meshEnt->collisionType != COLLISION_MESH) return 0;

    mesh = meshEnt->mesh;
    if (!mesh) return 0;
    if (!mesh->verts || !mesh->tris) return 0;
    if (mesh->triCount <= 0) return 0;

    spherePos = sphereEnt->pos;
    radius    = sphereEnt->collisionRadius;
    radius2   = radius * radius;

    /* early out against mesh bounds sphere */
    {
        float dx = spherePos.x - meshEnt->pos.x;
        float dy = spherePos.y - meshEnt->pos.y;
        float dz = spherePos.z - meshEnt->pos.z;
        float rr = radius + mesh->boundsRadius;
        float dist2 = (dx * dx) + (dy * dy) + (dz * dz);

        if (dist2 > (rr * rr)) {
            return 0;
        }
    }

    for (int ti = 0; ti < mesh->triCount; ti++) {
        const Tri *t = &mesh->tris[ti];

        Vec3 a = entityLocalToWorld(meshEnt, mesh->verts[t->a]);
        Vec3 b = entityLocalToWorld(meshEnt, mesh->verts[t->b]);
        Vec3 c = entityLocalToWorld(meshEnt, mesh->verts[t->c]);

        Vec3 closest = closestPointOnTriangle(spherePos, a, b, c);

        float dx = spherePos.x - closest.x;
        float dy = spherePos.y - closest.y;
        float dz = spherePos.z - closest.z;
        float dist2 = (dx * dx) + (dy * dy) + (dz * dz);

        if (dist2 <= radius2) {
            float dist;
            float penetration;
            Vec3 normal;

            if (dist2 > 0.000001f) {
                float invDist = 1.0f / sqrtf(dist2);
                dist = dist2 * invDist;

                normal.x = dx * invDist;
                normal.y = dy * invDist;
                normal.z = dz * invDist;
            } else {
                /* sphere center exactly on triangle closest point; use face normal */
                Vec3 ab, ac;
                float len2;

                ab.x = b.x - a.x;
                ab.y = b.y - a.y;
                ab.z = b.z - a.z;

                ac.x = c.x - a.x;
                ac.y = c.y - a.y;
                ac.z = c.z - a.z;

                normal.x = (ab.y * ac.z) - (ab.z * ac.y);
                normal.y = (ab.z * ac.x) - (ab.x * ac.z);
                normal.z = (ab.x * ac.y) - (ab.y * ac.x);

                len2 = (normal.x * normal.x) + (normal.y * normal.y) + (normal.z * normal.z);
                if (len2 > 0.000001f) {
                    float invLen = 1.0f / sqrtf(len2);
                    normal.x *= invLen;
                    normal.y *= invLen;
                    normal.z *= invLen;
                } else {
                    normal.x = 0.0f;
                    normal.y = 1.0f;
                    normal.z = 0.0f;
                }

                dist = 0.0f;
            }

            penetration = radius - dist;

            if (!found || penetration > bestPenetration) {
                found = 1;
                bestPenetration = penetration;
                bestNormal = normal;
                bestPoint = closest;
            }
        }
    }

    if (!found) return 0;

    if (outNormal) *outNormal = bestNormal;
    if (outPoint) *outPoint = bestPoint;
    if (outPenetration) *outPenetration = bestPenetration;

    return 1;
}

int entityCollisionTestSphereMesh(int idSphere, int idMesh)
{
    return entityCollisionTestSphereMeshDetailed(idSphere, idMesh, NULL, NULL, NULL);
}



int entityCollisionTestSphereSphere(int idA, int idB)
{
    Entity *a;
    Entity *b;
    float dx, dy, dz;
    float rsum;
    float dist2;

    if (!entityIdValid(idA)) return 0;
    if (!entityIdValid(idB)) return 0;
    if (idA == idB) return 0;

    a = &worldEntities[idA];
    b = &worldEntities[idB];

    if (!a->active || !b->active) return 0;
    if (!(a->flags & ENTITY_COLLIDABLE)) return 0;
    if (!(b->flags & ENTITY_COLLIDABLE)) return 0;

    if (a->collisionType != COLLISION_SPHERE) return 0;
    if (b->collisionType != COLLISION_SPHERE) return 0;

    dx = a->pos.x - b->pos.x;
    dy = a->pos.y - b->pos.y;
    dz = a->pos.z - b->pos.z;

    rsum = a->collisionRadius + b->collisionRadius;
    dist2 = (dx * dx) + (dy * dy) + (dz * dz);

    return (dist2 <= (rsum * rsum));
}


int entityCollisionTestAABBAABB(int idA, int idB)
{
    Entity *a;
    Entity *b;

    float aMinX, aMinY, aMinZ;
    float aMaxX, aMaxY, aMaxZ;

    float bMinX, bMinY, bMinZ;
    float bMaxX, bMaxY, bMaxZ;

    if (!entityIdValid(idA)) return 0;
    if (!entityIdValid(idB)) return 0;
    if (idA == idB) return 0;

    a = &worldEntities[idA];
    b = &worldEntities[idB];

    if (!a->active || !b->active) return 0;
    if (!(a->flags & ENTITY_COLLIDABLE)) return 0;
    if (!(b->flags & ENTITY_COLLIDABLE)) return 0;

    if (a->collisionType != COLLISION_AABB) return 0;
    if (b->collisionType != COLLISION_AABB) return 0;

    aMinX = a->pos.x - a->collisionHalfSize.x;
    aMinY = a->pos.y - a->collisionHalfSize.y;
    aMinZ = a->pos.z - a->collisionHalfSize.z;
    aMaxX = a->pos.x + a->collisionHalfSize.x;
    aMaxY = a->pos.y + a->collisionHalfSize.y;
    aMaxZ = a->pos.z + a->collisionHalfSize.z;

    bMinX = b->pos.x - b->collisionHalfSize.x;
    bMinY = b->pos.y - b->collisionHalfSize.y;
    bMinZ = b->pos.z - b->collisionHalfSize.z;
    bMaxX = b->pos.x + b->collisionHalfSize.x;
    bMaxY = b->pos.y + b->collisionHalfSize.y;
    bMaxZ = b->pos.z + b->collisionHalfSize.z;

    if (aMaxX < bMinX) return 0;
    if (aMinX > bMaxX) return 0;

    if (aMaxY < bMinY) return 0;
    if (aMinY > bMaxY) return 0;

    if (aMaxZ < bMinZ) return 0;
    if (aMinZ > bMaxZ) return 0;

    return 1;
}


int entityCollisionTestSphereAABB(int idSphere, int idBox)
{
    Entity *sphereEnt;
    Entity *boxEnt;

    float boxMinX, boxMinY, boxMinZ;
    float boxMaxX, boxMaxY, boxMaxZ;

    float cx, cy, cz;
    float dx, dy, dz;
    float dist2;
    float r;

    if (!entityIdValid(idSphere)) return 0;
    if (!entityIdValid(idBox)) return 0;
    if (idSphere == idBox) return 0;

    sphereEnt = &worldEntities[idSphere];
    boxEnt    = &worldEntities[idBox];

    if (!sphereEnt->active || !boxEnt->active) return 0;
    if (!(sphereEnt->flags & ENTITY_COLLIDABLE)) return 0;
    if (!(boxEnt->flags & ENTITY_COLLIDABLE)) return 0;

    if (sphereEnt->collisionType != COLLISION_SPHERE) return 0;
    if (boxEnt->collisionType != COLLISION_AABB) return 0;

    boxMinX = boxEnt->pos.x - boxEnt->collisionHalfSize.x;
    boxMinY = boxEnt->pos.y - boxEnt->collisionHalfSize.y;
    boxMinZ = boxEnt->pos.z - boxEnt->collisionHalfSize.z;

    boxMaxX = boxEnt->pos.x + boxEnt->collisionHalfSize.x;
    boxMaxY = boxEnt->pos.y + boxEnt->collisionHalfSize.y;
    boxMaxZ = boxEnt->pos.z + boxEnt->collisionHalfSize.z;

    cx = sphereEnt->pos.x;
    cy = sphereEnt->pos.y;
    cz = sphereEnt->pos.z;

    if (cx < boxMinX) dx = boxMinX - cx;
    else if (cx > boxMaxX) dx = cx - boxMaxX;
    else dx = 0.0f;

    if (cy < boxMinY) dy = boxMinY - cy;
    else if (cy > boxMaxY) dy = cy - boxMaxY;
    else dy = 0.0f;

    if (cz < boxMinZ) dz = boxMinZ - cz;
    else if (cz > boxMaxZ) dz = cz - boxMaxZ;
    else dz = 0.0f;

    dist2 = (dx * dx) + (dy * dy) + (dz * dz);
    r = sphereEnt->collisionRadius;

    return (dist2 <= (r * r));
}

int entityCollisionTest(int idA, int idB)
{
    Entity *a;
    Entity *b;

    if (!entityIdValid(idA)) return 0;
    if (!entityIdValid(idB)) return 0;
    if (idA == idB) return 0;

    a = &worldEntities[idA];
    b = &worldEntities[idB];

    if (!a->active || !b->active) return 0;
    if (!(a->flags & ENTITY_COLLIDABLE)) return 0;
    if (!(b->flags & ENTITY_COLLIDABLE)) return 0;

    if (a->collisionType == COLLISION_NONE) return 0;
    if (b->collisionType == COLLISION_NONE) return 0;

    if (a->collisionType == COLLISION_SPHERE &&
        b->collisionType == COLLISION_SPHERE) {
        return entityCollisionTestSphereSphere(idA, idB);
    }

    if (a->collisionType == COLLISION_AABB &&
        b->collisionType == COLLISION_AABB) {
        return entityCollisionTestAABBAABB(idA, idB);
    }

    if (a->collisionType == COLLISION_SPHERE &&
        b->collisionType == COLLISION_AABB) {
        return entityCollisionTestSphereAABB(idA, idB);
    }

    if (a->collisionType == COLLISION_AABB &&
        b->collisionType == COLLISION_SPHERE) {
        return entityCollisionTestSphereAABB(idB, idA);
    }

    if (a->collisionType == COLLISION_SPHERE &&
        b->collisionType == COLLISION_MESH) {
        return entityCollisionTestSphereMesh(idA, idB);
    }

    if (a->collisionType == COLLISION_MESH &&
        b->collisionType == COLLISION_SPHERE) {
        return entityCollisionTestSphereMesh(idB, idA);
    }

    /* COLLISION_MESH vs COLLISION_MESH not implemented yet */
    return 0;
}


int entityCollision(int id, int *outOtherId)
{
    Entity *e;

    if (outOtherId) {
        *outOtherId = -1;
    }

    if (!entityIdValid(id)) return 0;

    e = &worldEntities[id];

    if (!e->active) return 0;
    if (!(e->flags & ENTITY_COLLIDABLE)) return 0;
    if (e->collisionType == COLLISION_NONE) return 0;

    for (int i = 0; i < WORLD_MAX; i++) {
        if (i == id) continue;

        if (entityCollisionTest(id, i)) {
            if (outOtherId) {
                *outOtherId = i;
            }
            return 1;
        }
    }

    return 0;
}


int entityMoveWithCollision(int moverId, Vec3 moveDelta, int *outHitId, uint8_t global)
{
    Entity *e;
    Vec3 worldDelta;
    Vec3 stepDelta;
    float moveLen;
    int steps;
    int collided = 0;

    if (outHitId) *outHitId = -1;
    if (!entityIdValid(moverId)) return 0;

    e = &worldEntities[moverId];
    if (!e->active) return 0;

    if (global) {
        worldDelta = moveDelta;
    } else {
        worldDelta.x =
            (e->right.x   * moveDelta.x) +
            (e->up.x      * moveDelta.y) +
            (e->forward.x * moveDelta.z);

        worldDelta.y =
            (e->right.y   * moveDelta.x) +
            (e->up.y      * moveDelta.y) +
            (e->forward.y * moveDelta.z);

        worldDelta.z =
            (e->right.z   * moveDelta.x) +
            (e->up.z      * moveDelta.y) +
            (e->forward.z * moveDelta.z);
    }

    moveLen = sqrtf(
        (worldDelta.x * worldDelta.x) +
        (worldDelta.y * worldDelta.y) +
        (worldDelta.z * worldDelta.z)
    );

    if (moveLen <= 0.000001f) {
        return 0;
    }

    steps = (int)(moveLen / 0.5f);
    if (steps < 1) steps = 1;
    if (steps > 32) steps = 32;

    stepDelta.x = worldDelta.x / (float)steps;
    stepDelta.y = worldDelta.y / (float)steps;
    stepDelta.z = worldDelta.z / (float)steps;

    for (int s = 0; s < steps; s++) {
        Vec3 remaining = stepDelta;

        for (int bump = 0; bump < 4; bump++) {
            Vec3 startPos;
            Vec3 blockedPos;
            int hitId = -1;
            int blocked = 0;

            startPos = e->pos;

            /* try remaining move */
            blockedPos.x = startPos.x + remaining.x;
            blockedPos.y = startPos.y + remaining.y;
            blockedPos.z = startPos.z + remaining.z;
            e->pos = blockedPos;

            for (int i = 0; i < WORLD_MAX; i++) {
                if (i == moverId) continue;

                if (entityCollisionTest(moverId, i)) {
                    blocked = 1;
                    hitId = i;
                    collided = 1;
                    if (outHitId) *outHitId = i;
                    break;
                }
            }

            if (!blocked) {
                break;
            }

            /* ------------------------------------------------------------ */
            /* sphere sliding on mesh                                       */
            /* ------------------------------------------------------------ */
            if (e->collisionType == COLLISION_SPHERE &&
                hitId >= 0 &&
                worldEntities[hitId].collisionType == COLLISION_MESH)
            {
                Vec3 bestNormal = { 0.0f, 0.0f, 0.0f };
                float bestPen = -1.0f;
                int foundMeshHit = 0;
                const float pushBias = 0.02f;

                /*
                    IMPORTANT:
                    keep entity at BLOCKED position while gathering detailed hit info
                */
                e->pos = blockedPos;

                for (int i = 0; i < WORLD_MAX; i++) {
                    Vec3 n, p;
                    float pen;

                    if (i == moverId) continue;
                    if (!worldEntities[i].active) continue;
                    if (!(worldEntities[i].flags & ENTITY_COLLIDABLE)) continue;
                    if (worldEntities[i].collisionType != COLLISION_MESH) continue;

                    if (entityCollisionTestSphereMeshDetailed(moverId, i, &n, &p, &pen)) {
                        if (!foundMeshHit || pen > bestPen) {
                            foundMeshHit = 1;
                            bestPen = pen;
                            bestNormal = n;
                            hitId = i;
                        }
                    }
                }

                if (foundMeshHit) {
                    float into;
                    float maxStepLen;
                    float outDx, outDy, outDz;
                    float outLen;
                    float slideLen;
                    float allowedLen;
                    float scale;

                    /*
                        push OUT from the blocked position
                    */
                    e->pos.x = blockedPos.x + (bestNormal.x * (bestPen + pushBias));
                    e->pos.y = blockedPos.y + (bestNormal.y * (bestPen + pushBias));
                    e->pos.z = blockedPos.z + (bestNormal.z * (bestPen + pushBias));

                    /*
                        remove only the component going INTO the surface
                    */
                    into = vec3Dot(remaining, bestNormal);

                    if (into < 0.0f) {
                        remaining.x -= bestNormal.x * into;
                        remaining.y -= bestNormal.y * into;
                        remaining.z -= bestNormal.z * into;
                    }

                    /*
                        small damp for stability
                    */
                    remaining.x *= 0.98f;
                    remaining.y *= 0.98f;
                    remaining.z *= 0.98f;

                    /*
                        IMPORTANT:
                        prevent speed boost.
                        Push-out already moved us, so only allow the remaining slide
                        to use whatever distance budget is left from this substep.
                    */
                    maxStepLen = sqrtf(
                        (stepDelta.x * stepDelta.x) +
                        (stepDelta.y * stepDelta.y) +
                        (stepDelta.z * stepDelta.z)
                    );

                    outDx = e->pos.x - startPos.x;
                    outDy = e->pos.y - startPos.y;
                    outDz = e->pos.z - startPos.z;

                    outLen = sqrtf((outDx * outDx) + (outDy * outDy) + (outDz * outDz));

                    slideLen = sqrtf(
                        (remaining.x * remaining.x) +
                        (remaining.y * remaining.y) +
                        (remaining.z * remaining.z)
                    );

                    allowedLen = maxStepLen - outLen;
                    if (allowedLen < 0.0f) allowedLen = 0.0f;

                    if (slideLen > 0.000001f && slideLen > allowedLen) {
                        scale = allowedLen / slideLen;
                        remaining.x *= scale;
                        remaining.y *= scale;
                        remaining.z *= scale;
                    }

                    /*
                        try the projected move from pushed-out position
                    */
                    {
                        Vec3 slideStart = e->pos;
                        int stillBlocked = 0;

                        e->pos.x = slideStart.x + remaining.x;
                        e->pos.y = slideStart.y + remaining.y;
                        e->pos.z = slideStart.z + remaining.z;

                        for (int i = 0; i < WORLD_MAX; i++) {
                            if (i == moverId) continue;

                            if (entityCollisionTest(moverId, i)) {
                                stillBlocked = 1;
                                break;
                            }
                        }

                        if (stillBlocked) {
                            /*
                                keep only the push-out
                            */
                            e->pos = slideStart;
                        }
                    }

                    /*
                        IMPORTANT:
                        this substep is done now.
                        do NOT continue bump loop or you'll apply extra motion again.
                    */
                    break;
                }
            }

            /* ------------------------------------------------------------ */
            /* fallback old axis slide                                      */
            /* ------------------------------------------------------------ */
            e->pos = startPos;

            {
                Vec3 tryPos;

                tryPos = e->pos;
                tryPos.x += remaining.x;
                e->pos = tryPos;

                {
                    int axisBlocked = 0;
                    for (int i = 0; i < WORLD_MAX; i++) {
                        if (i == moverId) continue;
                        if (entityCollisionTest(moverId, i)) {
                            axisBlocked = 1;
                            break;
                        }
                    }
                    if (axisBlocked) {
                        e->pos = startPos;
                    }
                }

                tryPos = e->pos;
                tryPos.y += remaining.y;
                e->pos = tryPos;

                {
                    int axisBlocked = 0;
                    for (int i = 0; i < WORLD_MAX; i++) {
                        if (i == moverId) continue;
                        if (entityCollisionTest(moverId, i)) {
                            axisBlocked = 1;
                            break;
                        }
                    }
                    if (axisBlocked) {
                        e->pos.y -= remaining.y;
                    }
                }

                tryPos = e->pos;
                tryPos.z += remaining.z;
                e->pos = tryPos;

                {
                    int axisBlocked = 0;
                    for (int i = 0; i < WORLD_MAX; i++) {
                        if (i == moverId) continue;
                        if (entityCollisionTest(moverId, i)) {
                            axisBlocked = 1;
                            break;
                        }
                    }
                    if (axisBlocked) {
                        e->pos.z -= remaining.z;
                    }
                }
            }

            break;
        }
    }

    return collided;
}


//// complex / basic ray hit testers ////


static Vec3 g_intersectWorldVertsA[SB3D_MAX_VERTS];
static Vec3 g_intersectWorldVertsB[SB3D_MAX_VERTS];

static SB3DTriBounds g_intersectBoundsA[SB3D_MAX_TRIS];
static SB3DTriBounds g_intersectBoundsB[SB3D_MAX_TRIS];

static inline float sb3d_min3f(float a, float b, float c)
{
    float m = a;
    if (b < m) m = b;
    if (c < m) m = c;
    return m;
}

static inline float sb3d_max3f(float a, float b, float c)
{
    float m = a;
    if (b > m) m = b;
    if (c > m) m = c;
    return m;
}

static void sb3dBuildWorldVertsCache(
    const Entity *ent,
    const Mesh *mesh,
    Vec3 *outWorldVerts
)
{
    for (int i = 0; i < mesh->vertCount; i++) {
        const Vec3 p = mesh->verts[i];

        outWorldVerts[i].x =
            ent->pos.x +
            (ent->right.x   * p.x) +
            (ent->up.x      * p.y) +
            (ent->forward.x * p.z);

        outWorldVerts[i].y =
            ent->pos.y +
            (ent->right.y   * p.x) +
            (ent->up.y      * p.y) +
            (ent->forward.y * p.z);

        outWorldVerts[i].z =
            ent->pos.z +
            (ent->right.z   * p.x) +
            (ent->up.z      * p.y) +
            (ent->forward.z * p.z);
    }
}

static void sb3dBuildTriBoundsCache(
    const Mesh *mesh,
    const Vec3 *worldVerts,
    SB3DTriBounds *outBounds
)
{
    for (int i = 0; i < mesh->triCount; i++) {
        const Tri *t = &mesh->tris[i];

        const Vec3 *a = &worldVerts[t->a];
        const Vec3 *b = &worldVerts[t->b];
        const Vec3 *c = &worldVerts[t->c];

        SB3DTriBounds *bb = &outBounds[i];

        bb->minx = sb3d_min3f(a->x, b->x, c->x);
        bb->miny = sb3d_min3f(a->y, b->y, c->y);
        bb->minz = sb3d_min3f(a->z, b->z, c->z);

        bb->maxx = sb3d_max3f(a->x, b->x, c->x);
        bb->maxy = sb3d_max3f(a->y, b->y, c->y);
        bb->maxz = sb3d_max3f(a->z, b->z, c->z);
    }
}

static void sb3dBuildMeshBoundsFromTriBounds(
    const SB3DTriBounds *triBounds,
    int triCount,
    SB3DTriBounds *outBounds
)
{
    if (!triBounds || triCount <= 0 || !outBounds) return;

    *outBounds = triBounds[0];

    for (int i = 1; i < triCount; i++) {
        const SB3DTriBounds *b = &triBounds[i];

        if (b->minx < outBounds->minx) outBounds->minx = b->minx;
        if (b->miny < outBounds->miny) outBounds->miny = b->miny;
        if (b->minz < outBounds->minz) outBounds->minz = b->minz;

        if (b->maxx > outBounds->maxx) outBounds->maxx = b->maxx;
        if (b->maxy > outBounds->maxy) outBounds->maxy = b->maxy;
        if (b->maxz > outBounds->maxz) outBounds->maxz = b->maxz;
    }
}

static inline uint8_t sb3dTriBoundsOverlap(
    const SB3DTriBounds *a,
    const SB3DTriBounds *b
)
{
    if (a->maxx < b->minx || b->maxx < a->minx) return 0;
    if (a->maxy < b->miny || b->maxy < a->miny) return 0;
    if (a->maxz < b->minz || b->maxz < a->minz) return 0;
    return 1;
}

static inline uint8_t sb3dBoundsOverlap(
    const SB3DTriBounds *a,
    const SB3DTriBounds *b
)
{
    if (a->maxx < b->minx || b->maxx < a->minx) return 0;
    if (a->maxy < b->miny || b->maxy < a->miny) return 0;
    if (a->maxz < b->minz || b->maxz < a->minz) return 0;
    return 1;
}



static int sb3dRayTriangleHitDetailed(
    Vec3 rayOrig,
    Vec3 rayDir,
    float maxDist,
    Vec3 v0,
    Vec3 v1,
    Vec3 v2,
    float *outT,
    Vec3 *outNormal
)
{
    const float EPS = 0.0001f;

    const float e1x = v1.x - v0.x;
    const float e1y = v1.y - v0.y;
    const float e1z = v1.z - v0.z;

    const float e2x = v2.x - v0.x;
    const float e2y = v2.y - v0.y;
    const float e2z = v2.z - v0.z;

    const float px = (rayDir.y * e2z) - (rayDir.z * e2y);
    const float py = (rayDir.z * e2x) - (rayDir.x * e2z);
    const float pz = (rayDir.x * e2y) - (rayDir.y * e2x);

    const float det = (e1x * px) + (e1y * py) + (e1z * pz);

    if (det > -EPS && det < EPS) {
        return 0;
    }

    {
        const float tx = rayOrig.x - v0.x;
        const float ty = rayOrig.y - v0.y;
        const float tz = rayOrig.z - v0.z;

        const float invDet = 1.0f / det;
        const float u = ((tx * px) + (ty * py) + (tz * pz)) * invDet;

        if (u < 0.0f || u > 1.0f) {
            return 0;
        }

        const float qx = (ty * e1z) - (tz * e1y);
        const float qy = (tz * e1x) - (tx * e1z);
        const float qz = (tx * e1y) - (ty * e1x);

        const float v = ((rayDir.x * qx) + (rayDir.y * qy) + (rayDir.z * qz)) * invDet;

        if (v < 0.0f || (u + v) > 1.0f) {
            return 0;
        }

        {
            const float tHit = ((e2x * qx) + (e2y * qy) + (e2z * qz)) * invDet;

            if (tHit <= EPS || tHit > maxDist) {
                return 0;
            }

            if (outT) {
                *outT = tHit;
            }
        }
    }

    if (outNormal) {
        float nx = (e1y * e2z) - (e1z * e2y);
        float ny = (e1z * e2x) - (e1x * e2z);
        float nz = (e1x * e2y) - (e1y * e2x);

        const float nlen2 = (nx * nx) + (ny * ny) + (nz * nz);

        if (nlen2 > 0.000001f) {
            if (nlen2 < 0.999f || nlen2 > 1.001f) 
            {
                const float invNLen = 1.0f / sqrtf(nlen2);
                nx *= invNLen;
                ny *= invNLen;
                nz *= invNLen;
            }
        } else {
            nx = 0.0f;
            ny = 0.0f;
            nz = 0.0f;
        }

        outNormal->x = nx;
        outNormal->y = ny;
        outNormal->z = nz;
    }

    return 1;
}

static uint8_t sb3dSegmentTriangleHit(
    Vec3 p0,
    Vec3 p1,
    Vec3 v0,
    Vec3 v1,
    Vec3 v2)
{
    const float EPS = 0.0001f;

    Vec3 dir;
    float segLen;
    float segLen2;
    float tHit;

    dir.x = p1.x - p0.x;
    dir.y = p1.y - p0.y;
    dir.z = p1.z - p0.z;

    segLen2 = (dir.x * dir.x) + (dir.y * dir.y) + (dir.z * dir.z);
    if (segLen2 <= EPS) {
        return 0;
    }

    segLen = sqrtf(segLen2);
    dir.x /= segLen;
    dir.y /= segLen;
    dir.z /= segLen;

    if (!sb3dRayTriangleHitDetailed(p0, dir, segLen, v0, v1, v2, &tHit, NULL)) {
        return 0;
    }

    return (tHit >= 0.0f && tHit <= segLen);
}

static uint8_t sb3dPointInTriangle3D(Vec3 p, Vec3 a, Vec3 b, Vec3 c)
{
    const float EPS = 0.0001f;

    Vec3 ab, bc, ca;
    Vec3 ap, bp, cp;
    Vec3 c0, c1, c2;
    Vec3 n;
    float d0, d1, d2;

    ab.x = b.x - a.x; ab.y = b.y - a.y; ab.z = b.z - a.z;
    bc.x = c.x - b.x; bc.y = c.y - b.y; bc.z = c.z - b.z;
    ca.x = a.x - c.x; ca.y = a.y - c.y; ca.z = a.z - c.z;

    ap.x = p.x - a.x; ap.y = p.y - a.y; ap.z = p.z - a.z;
    bp.x = p.x - b.x; bp.y = p.y - b.y; bp.z = p.z - b.z;
    cp.x = p.x - c.x; cp.y = p.y - c.y; cp.z = p.z - c.z;

    n.x = (ab.y * (c.z - a.z)) - (ab.z * (c.y - a.y));
    n.y = (ab.z * (c.x - a.x)) - (ab.x * (c.z - a.z));
    n.z = (ab.x * (c.y - a.y)) - (ab.y * (c.x - a.x));

    c0.x = (ab.y * ap.z) - (ab.z * ap.y);
    c0.y = (ab.z * ap.x) - (ab.x * ap.z);
    c0.z = (ab.x * ap.y) - (ab.y * ap.x);

    c1.x = (bc.y * bp.z) - (bc.z * bp.y);
    c1.y = (bc.z * bp.x) - (bc.x * bp.z);
    c1.z = (bc.x * bp.y) - (bc.y * bp.x);

    c2.x = (ca.y * cp.z) - (ca.z * cp.y);
    c2.y = (ca.z * cp.x) - (ca.x * cp.z);
    c2.z = (ca.x * cp.y) - (ca.y * cp.x);

    d0 = (c0.x * n.x) + (c0.y * n.y) + (c0.z * n.z);
    d1 = (c1.x * n.x) + (c1.y * n.y) + (c1.z * n.z);
    d2 = (c2.x * n.x) + (c2.y * n.y) + (c2.z * n.z);

    if (d0 < -EPS) return 0;
    if (d1 < -EPS) return 0;
    if (d2 < -EPS) return 0;

    return 1;
}

static uint8_t sb3dCoplanarTriOverlapFallback(
    Vec3 a0, Vec3 a1, Vec3 a2,
    Vec3 b0, Vec3 b1, Vec3 b2)
{
    if (sb3dPointInTriangle3D(a0, b0, b1, b2)) return 1;
    if (sb3dPointInTriangle3D(a1, b0, b1, b2)) return 1;
    if (sb3dPointInTriangle3D(a2, b0, b1, b2)) return 1;

    if (sb3dPointInTriangle3D(b0, a0, a1, a2)) return 1;
    if (sb3dPointInTriangle3D(b1, a0, a1, a2)) return 1;
    if (sb3dPointInTriangle3D(b2, a0, a1, a2)) return 1;

    return 0;
}

static uint8_t sb3dTriTriIntersectFast(
    Vec3 a0, Vec3 a1, Vec3 a2,
    Vec3 b0, Vec3 b1, Vec3 b2)
{
    Vec3 na, nb;
    float da0, da1, da2;
    float db0, db1, db2;
    const float EPS = 0.0001f;

    na.x = ((a1.y - a0.y) * (a2.z - a0.z)) - ((a1.z - a0.z) * (a2.y - a0.y));
    na.y = ((a1.z - a0.z) * (a2.x - a0.x)) - ((a1.x - a0.x) * (a2.z - a0.z));
    na.z = ((a1.x - a0.x) * (a2.y - a0.y)) - ((a1.y - a0.y) * (a2.x - a0.x));

    da0 = ((b0.x - a0.x) * na.x) + ((b0.y - a0.y) * na.y) + ((b0.z - a0.z) * na.z);
    da1 = ((b1.x - a0.x) * na.x) + ((b1.y - a0.y) * na.y) + ((b1.z - a0.z) * na.z);
    da2 = ((b2.x - a0.x) * na.x) + ((b2.y - a0.y) * na.y) + ((b2.z - a0.z) * na.z);

    if ((da0 > EPS && da1 > EPS && da2 > EPS) ||
        (da0 < -EPS && da1 < -EPS && da2 < -EPS)) {
        return 0;
    }

    nb.x = ((b1.y - b0.y) * (b2.z - b0.z)) - ((b1.z - b0.z) * (b2.y - b0.y));
    nb.y = ((b1.z - b0.z) * (b2.x - b0.x)) - ((b1.x - b0.x) * (b2.z - b0.z));
    nb.z = ((b1.x - b0.x) * (b2.y - b0.y)) - ((b1.y - b0.y) * (b2.x - b0.x));

    db0 = ((a0.x - b0.x) * nb.x) + ((a0.y - b0.y) * nb.y) + ((a0.z - b0.z) * nb.z);
    db1 = ((a1.x - b0.x) * nb.x) + ((a1.y - b0.y) * nb.y) + ((a1.z - b0.z) * nb.z);
    db2 = ((a2.x - b0.x) * nb.x) + ((a2.y - b0.y) * nb.y) + ((a2.z - b0.z) * nb.z);

    if ((db0 > EPS && db1 > EPS && db2 > EPS) ||
        (db0 < -EPS && db1 < -EPS && db2 < -EPS)) {
        return 0;
    }

    if (sb3dSegmentTriangleHit(a0, a1, b0, b1, b2)) return 1;
    if (sb3dSegmentTriangleHit(a1, a2, b0, b1, b2)) return 1;
    if (sb3dSegmentTriangleHit(a2, a0, b0, b1, b2)) return 1;

    if (sb3dSegmentTriangleHit(b0, b1, a0, a1, a2)) return 1;
    if (sb3dSegmentTriangleHit(b1, b2, a0, a1, a2)) return 1;
    if (sb3dSegmentTriangleHit(b2, b0, a0, a1, a2)) return 1;

    if (fabsf(da0) <= EPS && fabsf(da1) <= EPS && fabsf(da2) <= EPS &&
        fabsf(db0) <= EPS && fabsf(db1) <= EPS && fabsf(db2) <= EPS) {
        return sb3dCoplanarTriOverlapFallback(a0, a1, a2, b0, b1, b2);
    }

    return 0;
}


uint8_t entityIntersectTest(int a, int b)
{
    Entity *ea;
    Entity *eb;
    Mesh *ma;
    Mesh *mb;

    Vec3 *worldVertsA = g_intersectWorldVertsA;
    Vec3 *worldVertsB = g_intersectWorldVertsB;
    SB3DTriBounds *boundsA = g_intersectBoundsA;
    SB3DTriBounds *boundsB = g_intersectBoundsB;

    SB3DTriBounds meshBoundsA;
    SB3DTriBounds meshBoundsB;

    static uint16_t candidateBig[SB3D_MAX_TRIS];
    int candidateCount = 0;

    if (!entityIdValid(a) || !entityIdValid(b)) return 0;
    if (a == b) return 0;

    ea = &worldEntities[a];
    eb = &worldEntities[b];

    if (!ea->active || !eb->active) return 0;
    if (!ea->mesh || !eb->mesh) return 0;

    ma = ea->mesh;
    mb = eb->mesh;

    if (!ma->verts || !ma->tris || ma->vertCount <= 0 || ma->triCount <= 0) return 0;
    if (!mb->verts || !mb->tris || mb->vertCount <= 0 || mb->triCount <= 0) return 0;

    if (ma->vertCount > SB3D_MAX_VERTS || mb->vertCount > SB3D_MAX_VERTS) return 0;
    if (ma->triCount  > SB3D_MAX_TRIS  || mb->triCount  > SB3D_MAX_TRIS)  return 0;

    /* broad phase 1: sphere vs sphere */
    {
        const float dx = eb->pos.x - ea->pos.x;
        const float dy = eb->pos.y - ea->pos.y;
        const float dz = eb->pos.z - ea->pos.z;
        const float rr = ma->boundsRadius + mb->boundsRadius;
        const float dist2 = (dx * dx) + (dy * dy) + (dz * dz);

        if (dist2 > (rr * rr)) {
            return 0;
        }
    }

    /* smaller mesh goes outer loop automatically */
    if (mb->triCount < ma->triCount) {
        Entity *tmpE = ea; ea = eb; eb = tmpE;
        Mesh   *tmpM = ma; ma = mb; mb = tmpM;
    }

    /* A = smaller mesh, B = bigger mesh */
    sb3dBuildWorldVertsCache(ea, ma, worldVertsA);
    sb3dBuildWorldVertsCache(eb, mb, worldVertsB);

    sb3dBuildTriBoundsCache(ma, worldVertsA, boundsA);
    sb3dBuildTriBoundsCache(mb, worldVertsB, boundsB);

    sb3dBuildMeshBoundsFromTriBounds(boundsA, ma->triCount, &meshBoundsA);
    sb3dBuildMeshBoundsFromTriBounds(boundsB, mb->triCount, &meshBoundsB);

    /* broad phase 2: whole mesh AABB */
    if (!sb3dBoundsOverlap(&meshBoundsA, &meshBoundsB)) {
        return 0;
    }

    /* build candidate list from BIG mesh once */
    for (int tb = 0; tb < mb->triCount; tb++) {
        if (sb3dTriBoundsOverlap(&meshBoundsA, &boundsB[tb])) {
            candidateBig[candidateCount++] = (uint16_t)tb;
        }
    }

    if (candidateCount == 0) {
        return 0;
    }

    /* now only test small tris against candidate big tris */
    for (int ta = 0; ta < ma->triCount; ta++) {
        const Tri *tria = &ma->tris[ta];
        const SB3DTriBounds *ba = &boundsA[ta];

        const Vec3 a0 = worldVertsA[tria->a];
        const Vec3 a1 = worldVertsA[tria->b];
        const Vec3 a2 = worldVertsA[tria->c];

        for (int ci = 0; ci < candidateCount; ci++) {
            const int tb = candidateBig[ci];
            const Tri *trib = &mb->tris[tb];
            const SB3DTriBounds *bb = &boundsB[tb];

            if (!sb3dTriBoundsOverlap(ba, bb)) {
                continue;
            }

            {
                const Vec3 b0 = worldVertsB[trib->a];
                const Vec3 b1 = worldVertsB[trib->b];
                const Vec3 b2 = worldVertsB[trib->c];

                if (sb3dTriTriIntersectFast(a0, a1, a2, b0, b1, b2)) {
                    return 1;
                }
            }
        }
    }

    return 0;
}













static Vec3 sb3dEntityWorldToLocalPoint(const Entity *ent, Vec3 p)
{
    Vec3 d;
    Vec3 out;

    d.x = p.x - ent->pos.x;
    d.y = p.y - ent->pos.y;
    d.z = p.z - ent->pos.z;

    out.x = (d.x * ent->right.x)   + (d.y * ent->right.y)   + (d.z * ent->right.z);
    out.y = (d.x * ent->up.x)      + (d.y * ent->up.y)      + (d.z * ent->up.z);
    out.z = (d.x * ent->forward.x) + (d.y * ent->forward.y) + (d.z * ent->forward.z);

    return out;
}

static Vec3 sb3dEntityWorldToLocalDir(const Entity *ent, Vec3 v)
{
    Vec3 out;

    out.x = (v.x * ent->right.x)   + (v.y * ent->right.y)   + (v.z * ent->right.z);
    out.y = (v.x * ent->up.x)      + (v.y * ent->up.y)      + (v.z * ent->up.z);
    out.z = (v.x * ent->forward.x) + (v.y * ent->forward.y) + (v.z * ent->forward.z);

    return out;
}

static float sb3dVec3Length(Vec3 v)
{
    return sqrtf((v.x * v.x) + (v.y * v.y) + (v.z * v.z));
}

static Vec3 sb3dVec3NormalizeSafe(Vec3 v)
{
    float len = sb3dVec3Length(v);

    if (len <= 0.00001f) {
        return (Vec3){ 0.0f, 0.0f, 1.0f };
    }

    v.x /= len;
    v.y /= len;
    v.z /= len;
    return v;
}

static float sb3dDistancePointToSegmentSq(Vec3 p, Vec3 a, Vec3 b)
{
    Vec3 ab, ap;
    float abLen2, t;
    Vec3 q;
    float dx, dy, dz;

    ab.x = b.x - a.x;
    ab.y = b.y - a.y;
    ab.z = b.z - a.z;

    ap.x = p.x - a.x;
    ap.y = p.y - a.y;
    ap.z = p.z - a.z;

    abLen2 = (ab.x * ab.x) + (ab.y * ab.y) + (ab.z * ab.z);
    if (abLen2 <= 0.00001f) {
        dx = p.x - a.x;
        dy = p.y - a.y;
        dz = p.z - a.z;
        return (dx * dx) + (dy * dy) + (dz * dz);
    }

    t = ((ap.x * ab.x) + (ap.y * ab.y) + (ap.z * ab.z)) / abLen2;
    if (t < 0.0f) t = 0.0f;
    if (t > 1.0f) t = 1.0f;

    q.x = a.x + (ab.x * t);
    q.y = a.y + (ab.y * t);
    q.z = a.z + (ab.z * t);

    dx = p.x - q.x;
    dy = p.y - q.y;
    dz = p.z - q.z;

    return (dx * dx) + (dy * dy) + (dz * dz);
}


// this calls on a SIDBOX hardware...
uint8_t entitySweepRaycastTest(int movingId, int targetId, Vec3 *hitPos, Tri *triHit)
{
    uint8_t res;

    Vec3_api ahit;
    Tri_api  tHit;

    res = sb3D_entitySweepRaycastTestAPI(
        movingId,
        targetId,
        hitPos ? &ahit : NULL,
        triHit ? &tHit : NULL,
        (Entity_api *)&worldEntities[0]
    );

    if (res) {
        if (hitPos) {
            hitPos->x = ahit.x;
            hitPos->y = ahit.y;
            hitPos->z = ahit.z;
        }

        if (triHit) {
            triHit->a            = tHit.a;
            triHit->b            = tHit.b;
            triHit->c            = tHit.c;
            triHit->color        = tHit.color;
            triHit->emission     = tHit.emission;
            triHit->transparency = tHit.transparency;
            triHit->roughness    = tHit.roughness;
        }
    }

    return res;
}


// THIS is the same function as above, but purely in software
#if(0)
uint8_t entitySweepRaycastTest_OLD(int movingId, int targetId, Vec3 *hitPos, Tri *triHit)
{
    Entity *em;
    Entity *et;
    Mesh *mt;
    Vec3 startPos;
    Vec3 endPos;
    Vec3 moveVec;
    Vec3 rayDir;
    Vec3 castEnd;
    float rayLen;
    float extraLen;

    if (hitPos) {
        hitPos->x = 0.0f;
        hitPos->y = 0.0f;
        hitPos->z = 0.0f;
    }

    if (triHit) {
        memset(triHit, 0, sizeof(Tri));
    }

    if (!entityIdValid(movingId) || !entityIdValid(targetId)) return 0;
    if (movingId == targetId) return 0;

    em = &worldEntities[movingId];
    et = &worldEntities[targetId];

    if (!em->active || !et->active) return 0;
    if (!em->mesh || !et->mesh) return 0;

    mt = et->mesh;
    if (!mt->verts || !mt->tris || mt->triCount <= 0) return 0;

    startPos = em->prevPos;
    endPos   = em->pos;

    moveVec.x = endPos.x - startPos.x;
    moveVec.y = endPos.y - startPos.y;
    moveVec.z = endPos.z - startPos.z;

    rayLen = sb3dVec3Length(moveVec);

    /* extend by moving object's approximate size */
    extraLen = em->mesh->boundsRadius;

    /* if almost stationary, still cast a little forward */
    if (rayLen <= 0.0001f) {
        rayDir = sb3dVec3NormalizeSafe(em->forward);
        rayLen = extraLen;
    } else {
        rayDir = sb3dVec3NormalizeSafe(moveVec);
        rayLen += extraLen;
    }

    castEnd.x = startPos.x + (rayDir.x * rayLen);
    castEnd.y = startPos.y + (rayDir.y * rayLen);
    castEnd.z = startPos.z + (rayDir.z * rayLen);

    /* broad phase: swept segment against target sphere */
    {
        const float rr = em->mesh->boundsRadius + et->mesh->boundsRadius;
        const float dist2 = sb3dDistancePointToSegmentSq(et->pos, startPos, castEnd);

        if (dist2 > (rr * rr)) {
            return 0;
        }
    }

    /* ray into target local space */
    {
        Vec3 localRayOrig = sb3dEntityWorldToLocalPoint(et, startPos);
        Vec3 localRayDir  = sb3dEntityWorldToLocalDir(et, rayDir);

        float bestHitT = rayLen + 1.0f;
        int found = 0;
        const Tri *bestTri = NULL;

        localRayDir = sb3dVec3NormalizeSafe(localRayDir);

        for (int ti = 0; ti < mt->triCount; ti++) {
            const Tri *t = &mt->tris[ti];
            const Vec3 v0 = mt->verts[t->a];
            const Vec3 v1 = mt->verts[t->b];
            const Vec3 v2 = mt->verts[t->c];
            float hitT;

            if (sb3dRayTriangleHitDetailed(
                    localRayOrig,
                    localRayDir,
                    rayLen,
                    v0, v1, v2,
                    &hitT,
                    NULL))
            {
                if (hitT < bestHitT) {
                    bestHitT = hitT;
                    bestTri = t;
                    found = 1;
                }
            }
        }

        if (found) {
            if (hitPos) {
                Vec3 localHit;
                localHit.x = localRayOrig.x + (localRayDir.x * bestHitT);
                localHit.y = localRayOrig.y + (localRayDir.y * bestHitT);
                localHit.z = localRayOrig.z + (localRayDir.z * bestHitT);

                hitPos->x =
                    et->pos.x +
                    (et->right.x   * localHit.x) +
                    (et->up.x      * localHit.y) +
                    (et->forward.x * localHit.z);

                hitPos->y =
                    et->pos.y +
                    (et->right.y   * localHit.x) +
                    (et->up.y      * localHit.y) +
                    (et->forward.y * localHit.z);

                hitPos->z =
                    et->pos.z +
                    (et->right.z   * localHit.x) +
                    (et->up.z      * localHit.y) +
                    (et->forward.z * localHit.z);
            }

            if (triHit && bestTri) {
                *triHit = *bestTri;
            }
            return 1;
        }
    }
    return 0;
}
#endif