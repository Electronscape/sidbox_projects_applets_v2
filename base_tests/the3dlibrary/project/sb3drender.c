// file: render.c

#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>


#include "sb3dgfx.h"
#include "sb3d.h"



#define USE_BACKFACE_CULL 1

//static Entity align32 *renderEntities[WORLD_MAX];
static RenderTri align32 g_renderTris[MAX_RENDER_TRIS];

// cache
static Vec3 align32 g_worldVertsCache[SB3D_MAX_VERTS];
static Vec3 align32 g_camVertsCache[SB3D_MAX_VERTS];

#define TRI_SORT_BUCKETS 32

static int g_triBucketHead[TRI_SORT_BUCKETS];
static int g_triBucketNext[MAX_RENDER_TRIS];
static RenderTri align32 g_renderTriSortTmp[MAX_RENDER_TRIS];


static int g_renderTriCount = 0;


// 480 x 320 * 2
//uint16_t g_depthBufferBand[SCREEN_W * ZBUF_BAND_H];
//uint16_t align32 g_depthBuffer[SCREEN_W * SCREEN_H];

//static int g_enableZOrdering = 0;
static int g_flatMode        = 0;
static int g_twoshadeMode    = 0;
static int g_wireframe       = 0;

static inline Vec3 lerpVec3(Vec3 a, Vec3 b, float t)
{
    Vec3 out;
    out.x = a.x + ((b.x - a.x) * t);
    out.y = a.y + ((b.y - a.y) * t);
    out.z = a.z + ((b.z - a.z) * t);
    return out;
}

static inline uint16_t encodeZ(float z, const Camera *cam)
{
    float t = (z - cam->nearPlane) * cam->invDepthRange;
    if (t < 0.0f) t = 0.0f;
    if (t > 1.0f) t = 1.0f;
    return (uint16_t)(t * 65535.0f);
}


void setDefaultRenderMode(void)
{
    //g_enableZOrdering = 1;
    g_flatMode        = 0;
    g_twoshadeMode    = 0;
    g_wireframe       = 0;
}

//void enableZOrdering(int enable) { g_enableZOrdering = enable; }
void enableFlatMode(int en)      { g_flatMode = en; }
void enableTwoShade(int en)      { g_twoshadeMode = en; }
void enableWireFrame(int en)     { g_wireframe = en; }

static inline float planeEval(Vec3 p, ClipPlane plane, const Camera *cam)
{
    switch (plane) {
        case PLANE_NEAR:   return p.z - cam->nearPlane;
        case PLANE_LEFT:   return p.x + p.z;
        case PLANE_RIGHT:  return p.z - p.x;
        case PLANE_TOP:    return (p.z * cam->halfOverW) - p.y;
        case PLANE_BOTTOM: return p.y + (p.z * cam->halfOverW);
    }

    return -1.0f;
}

static inline int pointInsidePlane(Vec3 p, ClipPlane plane, const Camera *cam)
{
    return (planeEval(p, plane, cam) >= 0.0f);
}

static inline Vec3 intersectPlane(Vec3 a, Vec3 b, ClipPlane plane, const Camera *cam)
{
    float fa = planeEval(a, plane, cam);
    float fb = planeEval(b, plane, cam);
    float t  = fa / (fa - fb);
    return lerpVec3(a, b, t);
}

static int clipPolygonAgainstPlane(Vec3 *inVerts, int inCount, Vec3 *outVerts, ClipPlane plane, const Camera *cam)
{
    int outCount = 0;
    const float nearPlane  = cam->nearPlane;
    const float halfHOverW = cam->halfOverW;

    Vec3 prev = inVerts[inCount - 1];
    float prevDist;

    switch (plane) {
        case PLANE_NEAR:   prevDist = prev.z - nearPlane; break;
        case PLANE_LEFT:   prevDist = prev.x + prev.z; break;
        case PLANE_RIGHT:  prevDist = prev.z - prev.x; break;
        case PLANE_TOP:    prevDist = (prev.z * halfHOverW) - prev.y; break;
        default:           prevDist = prev.y + (prev.z * halfHOverW); break;
    }

    for (int i = 0; i < inCount; i++) {
        const Vec3 curr = inVerts[i];
        float currDist;

        switch (plane) {
            case PLANE_NEAR:   currDist = curr.z - nearPlane; break;
            case PLANE_LEFT:   currDist = curr.x + curr.z; break;
            case PLANE_RIGHT:  currDist = curr.z - curr.x; break;
            case PLANE_TOP:    currDist = (curr.z * halfHOverW) - curr.y; break;
            default:           currDist = curr.y + (curr.z * halfHOverW); break;
        }

        const int prevInside = (prevDist >= 0.0f);
        const int currInside = (currDist >= 0.0f);

        if (prevInside && currInside) {
            outVerts[outCount++] = curr;
        }
        else if (prevInside && !currInside) {
            const float t = prevDist / (prevDist - currDist);

            outVerts[outCount].x = prev.x + ((curr.x - prev.x) * t);
            outVerts[outCount].y = prev.y + ((curr.y - prev.y) * t);
            outVerts[outCount].z = prev.z + ((curr.z - prev.z) * t);
            outCount++;
        }
        else if (!prevInside && currInside) {
            const float t = prevDist / (prevDist - currDist);

            outVerts[outCount].x = prev.x + ((curr.x - prev.x) * t);
            outVerts[outCount].y = prev.y + ((curr.y - prev.y) * t);
            outVerts[outCount].z = prev.z + ((curr.z - prev.z) * t);
            outCount++;

            outVerts[outCount++] = curr;
        }

        prev = curr;
        prevDist = currDist;
    }

    return outCount;
}


static Vec3 *g_clipScratchA = NULL;
static Vec3 *g_clipScratchB = NULL;

void initClipScratch(void)
{
    uint8_t *p = get16k8mem();
    if (!p) return;

    g_clipScratchA = (Vec3 *)p;
    g_clipScratchB = (Vec3 *)(p + sizeof(Vec3) * CLIP_MAX_VERTS);
}


int clipTriangleToFrustum(Vec3 a, Vec3 b, Vec3 c, Vec3 *outVerts, const Camera *cam)
{
    Vec3 *src = g_clipScratchA;
    Vec3 *dst = g_clipScratchB;
    Vec3 *tmp;
    int count = 3;

    const float nearPlane  = cam->nearPlane;
    const float halfHOverW = cam->halfOverW;

    if (!src || !dst) return 0;

    src[0] = a;
    src[1] = b;
    src[2] = c;

    /* ---- NEAR ---- */
    {
        int outCount = 0;
        Vec3 prev = src[count - 1];
        float prevDist = prev.z - nearPlane;

        for (int i = 0; i < count; i++) {
            Vec3 curr = src[i];
            float currDist = curr.z - nearPlane;

            int prevInside = (prevDist >= 0.0f);
            int currInside = (currDist >= 0.0f);

            if (prevInside && currInside) {
                dst[outCount++] = curr;
            }
            else if (prevInside && !currInside) {
                float t = prevDist / (prevDist - currDist);
                dst[outCount].x = prev.x + ((curr.x - prev.x) * t);
                dst[outCount].y = prev.y + ((curr.y - prev.y) * t);
                dst[outCount].z = prev.z + ((curr.z - prev.z) * t);
                outCount++;
            }
            else if (!prevInside && currInside) {
                float t = prevDist / (prevDist - currDist);
                dst[outCount].x = prev.x + ((curr.x - prev.x) * t);
                dst[outCount].y = prev.y + ((curr.y - prev.y) * t);
                dst[outCount].z = prev.z + ((curr.z - prev.z) * t);
                outCount++;
                dst[outCount++] = curr;
            }

            prev = curr;
            prevDist = currDist;
        }

        count = outCount;
        if (count < 3) return 0;
        tmp = src; src = dst; dst = tmp;
    }

    /* ---- LEFT ---- */
    {
        int outCount = 0;
        Vec3 prev = src[count - 1];
        float prevDist = prev.x + prev.z;

        for (int i = 0; i < count; i++) {
            Vec3 curr = src[i];
            float currDist = curr.x + curr.z;

            int prevInside = (prevDist >= 0.0f);
            int currInside = (currDist >= 0.0f);

            if (prevInside && currInside) {
                dst[outCount++] = curr;
            }
            else if (prevInside && !currInside) {
                float t = prevDist / (prevDist - currDist);
                dst[outCount].x = prev.x + ((curr.x - prev.x) * t);
                dst[outCount].y = prev.y + ((curr.y - prev.y) * t);
                dst[outCount].z = prev.z + ((curr.z - prev.z) * t);
                outCount++;
            }
            else if (!prevInside && currInside) {
                float t = prevDist / (prevDist - currDist);
                dst[outCount].x = prev.x + ((curr.x - prev.x) * t);
                dst[outCount].y = prev.y + ((curr.y - prev.y) * t);
                dst[outCount].z = prev.z + ((curr.z - prev.z) * t);
                outCount++;
                dst[outCount++] = curr;
            }

            prev = curr;
            prevDist = currDist;
        }

        count = outCount;
        if (count < 3) return 0;
        tmp = src; src = dst; dst = tmp;
    }

    /* ---- RIGHT ---- */
    {
        int outCount = 0;
        Vec3 prev = src[count - 1];
        float prevDist = prev.z - prev.x;

        for (int i = 0; i < count; i++) {
            Vec3 curr = src[i];
            float currDist = curr.z - curr.x;

            int prevInside = (prevDist >= 0.0f);
            int currInside = (currDist >= 0.0f);

            if (prevInside && currInside) {
                dst[outCount++] = curr;
            }
            else if (prevInside && !currInside) {
                float t = prevDist / (prevDist - currDist);
                dst[outCount].x = prev.x + ((curr.x - prev.x) * t);
                dst[outCount].y = prev.y + ((curr.y - prev.y) * t);
                dst[outCount].z = prev.z + ((curr.z - prev.z) * t);
                outCount++;
            }
            else if (!prevInside && currInside) {
                float t = prevDist / (prevDist - currDist);
                dst[outCount].x = prev.x + ((curr.x - prev.x) * t);
                dst[outCount].y = prev.y + ((curr.y - prev.y) * t);
                dst[outCount].z = prev.z + ((curr.z - prev.z) * t);
                outCount++;
                dst[outCount++] = curr;
            }

            prev = curr;
            prevDist = currDist;
        }

        count = outCount;
        if (count < 3) return 0;
        tmp = src; src = dst; dst = tmp;
    }

    /* ---- TOP ---- */
    {
        int outCount = 0;
        Vec3 prev = src[count - 1];
        float prevDist = (prev.z * halfHOverW) - prev.y;

        for (int i = 0; i < count; i++) {
            Vec3 curr = src[i];
            float currDist = (curr.z * halfHOverW) - curr.y;

            int prevInside = (prevDist >= 0.0f);
            int currInside = (currDist >= 0.0f);

            if (prevInside && currInside) {
                dst[outCount++] = curr;
            }
            else if (prevInside && !currInside) {
                float t = prevDist / (prevDist - currDist);
                dst[outCount].x = prev.x + ((curr.x - prev.x) * t);
                dst[outCount].y = prev.y + ((curr.y - prev.y) * t);
                dst[outCount].z = prev.z + ((curr.z - prev.z) * t);
                outCount++;
            }
            else if (!prevInside && currInside) {
                float t = prevDist / (prevDist - currDist);
                dst[outCount].x = prev.x + ((curr.x - prev.x) * t);
                dst[outCount].y = prev.y + ((curr.y - prev.y) * t);
                dst[outCount].z = prev.z + ((curr.z - prev.z) * t);
                outCount++;
                dst[outCount++] = curr;
            }

            prev = curr;
            prevDist = currDist;
        }

        count = outCount;
        if (count < 3) return 0;
        tmp = src; src = dst; dst = tmp;
    }

    /* ---- BOTTOM ---- */
    {
        int outCount = 0;
        Vec3 prev = src[count - 1];
        float prevDist = prev.y + (prev.z * halfHOverW);

        for (int i = 0; i < count; i++) {
            Vec3 curr = src[i];
            float currDist = curr.y + (curr.z * halfHOverW);

            int prevInside = (prevDist >= 0.0f);
            int currInside = (currDist >= 0.0f);

            if (prevInside && currInside) {
                dst[outCount++] = curr;
            }
            else if (prevInside && !currInside) {
                float t = prevDist / (prevDist - currDist);
                dst[outCount].x = prev.x + ((curr.x - prev.x) * t);
                dst[outCount].y = prev.y + ((curr.y - prev.y) * t);
                dst[outCount].z = prev.z + ((curr.z - prev.z) * t);
                outCount++;
            }
            else if (!prevInside && currInside) {
                float t = prevDist / (prevDist - currDist);
                dst[outCount].x = prev.x + ((curr.x - prev.x) * t);
                dst[outCount].y = prev.y + ((curr.y - prev.y) * t);
                dst[outCount].z = prev.z + ((curr.z - prev.z) * t);
                outCount++;
                dst[outCount++] = curr;
            }

            prev = curr;
            prevDist = currDist;
        }

        count = outCount;
        if (count < 3) return 0;
        tmp = src; src = dst; dst = tmp;
    }

    for (int i = 0; i < count; i++) {
        outVerts[i] = src[i];
    }

    return count;
}

static inline int triangleFacingScreen(Vec2 a, Vec2 b, Vec2 c){
    int cross = (b.x - a.x) * (c.y - a.y) - (b.y - a.y) * (c.x - a.x);
    return (cross > 0);
}

static inline int triangleFacingCamera(Vec3 a, Vec3 b, Vec3 c)
{
    const float abx = b.x - a.x;
    const float aby = b.y - a.y;
    const float abz = b.z - a.z;

    const float acx = c.x - a.x;
    const float acy = c.y - a.y;
    const float acz = c.z - a.z;

    const float nx = (aby * acz) - (abz * acy);
    const float ny = (abz * acx) - (abx * acz);
    const float nz = (abx * acy) - (aby * acx);

    const float d = (nx * a.x) + (ny * a.y) + (nz * a.z);
    return (d < 0.0f);
}

void submitClippedTri(Vec3 a, Vec3 b, Vec3 c, const Camera *cam, uint8_t color, uint8_t emission, uint8_t trans, float shadeF)
{
    Vec2 pa, pb, pc;
    float invZa, invZb, invZc;
    int cross;

    if (a.z <= cam->nearPlane || b.z <= cam->nearPlane || c.z <= cam->nearPlane) {
        return;
    }

    invZa = 1.0f / a.z;
    invZb = 1.0f / b.z;
    invZc = 1.0f / c.z;

    pa.x = (int)((a.x * cam->projF * invZa) + cam->halfW + 0.5f);
    pa.y = (int)((-a.y * cam->projF * invZa) + cam->halfH + 0.5f);

    pb.x = (int)((b.x * cam->projF * invZb) + cam->halfW + 0.5f);
    pb.y = (int)((-b.y * cam->projF * invZb) + cam->halfH + 0.5f);

    pc.x = (int)((c.x * cam->projF * invZc) + cam->halfW + 0.5f);
    pc.y = (int)((-c.y * cam->projF * invZc) + cam->halfH + 0.5f);

    cross = (pb.x - pa.x) * (pc.y - pa.y) - (pb.y - pa.y) * (pc.x - pa.x);
    if (cross <= 0) {
        return;
    }

    if (g_renderTriCount >= MAX_RENDER_TRIS) {
        return;
    }

    {
        RenderTri *rt = &g_renderTris[g_renderTriCount++];

        rt->p0 = pa;
        rt->p1 = pb;
        rt->p2 = pc;

        rt->color        = color;
        rt->emission     = emission;
        rt->shadeF       = shadeF;
        rt->transparency = trans;

        rt->z0 = encodeZ(a.z, cam);
        rt->z1 = encodeZ(b.z, cam);
        rt->z2 = encodeZ(c.z, cam);

        rt->camz0 = a.z;
        rt->camz1 = b.z;
        rt->camz2 = c.z;

        rt->minY = pa.y;
        if (pb.y < rt->minY) rt->minY = pb.y;
        if (pc.y < rt->minY) rt->minY = pc.y;

        rt->maxY = pa.y;
        if (pb.y > rt->maxY) rt->maxY = pb.y;
        if (pc.y > rt->maxY) rt->maxY = pc.y;

        if (rt->minY < 0) rt->minY = 0;
        if (rt->maxY >= SCREEN_H) rt->maxY = SCREEN_H - 1;

        rt->firstBand = (uint8_t)(rt->minY / ZBUF_BAND_H);
        rt->lastBand  = (uint8_t)(rt->maxY / ZBUF_BAND_H);
    }
}


int projectPoint(Vec3 p, const Camera *cam, Vec2 *out)
{
    const float invZ = 1.0f / p.z;

    if (p.z <= cam->nearPlane) {
        return 0;
    }

    out->x = (int)((p.x * cam->projF * invZ) + cam->halfW + 0.5f);
    out->y = (int)((-p.y * cam->projF * invZ) + cam->halfH + 0.5f);
    return 1;
}

int clipLineToNearPlane(Vec3 *a, Vec3 *b, const Camera *cam)
{
    int a_in = (a->z >= cam->nearPlane);
    int b_in = (b->z >= cam->nearPlane);

    if (!a_in && !b_in) return 0;
    if (a_in && b_in)   return 1;

    const float t = (cam->nearPlane - a->z) / (b->z - a->z);

    Vec3 p;
    p.x = a->x + t * (b->x - a->x);
    p.y = a->y + t * (b->y - a->y);
    p.z = cam->nearPlane;

    if (!a_in) *a = p;
    else       *b = p;

    return 1;
}

void resetRenderList(void)
{
    g_renderTriCount = 0;
}

static int entityVisibleCheck(const Entity *ent, const Camera *cam)
{
    const float dx = ent->pos.x - cam->pos.x;
    const float dy = ent->pos.y - cam->pos.y;
    const float dz = ent->pos.z - cam->pos.z;
    const float r  = ent->mesh->boundsRadius;

    Vec3 center;
    center.x = (dx * cam->right.x)   + (dy * cam->right.y)   + (dz * cam->right.z);
    center.y = (dx * cam->up.x)      + (dy * cam->up.y)      + (dz * cam->up.z);
    center.z = (dx * cam->forward.x) + (dy * cam->forward.y) + (dz * cam->forward.z);

    /* near / far */
    if (center.z - r > cam->farPlane)  return 0;
    if (center.z + r < cam->nearPlane) return 0;

    /* left / right */
    if (center.x < (-center.z - r)) return 0;
    if (center.x > ( center.z + r)) return 0;

    /* top / bottom */
    {
        const float yLimit = center.z * cam->halfOverW;
        if (center.y < (-yLimit - r)) return 0;
        if (center.y > ( yLimit + r)) return 0;
    }

    return 1;
}

void submitWorldEntities(const Camera *cam)
{
    for (int i = 0; i < WORLD_MAX; i++) {
        Entity *ent = &worldEntities[i];

        if (!ent->active) continue;
        if (!ent->mesh) continue;
        if ((ent->flags & ENTITY_VISIBLE) == 0) continue;
        if (!entityVisibleCheck(ent, cam)) continue;

        submitEntitySolid(ent, cam);
    }
}

int getRenderTriCount(void)
{
    return g_renderTriCount;
}

static uint32_t sb3d_hash2i(int x, int z)
{
    uint32_t h = (uint32_t)x * 374761393u;
    h += (uint32_t)z * 668265263u;
    h = (h ^ (h >> 13)) * 1274126177u;
    h ^= (h >> 16);
    return h;
}



void drawFakeHorizonDots(const Camera *cam, uint8_t dotCol, int spacing, float ylevel, uint8_t density)
{
    if (!cam) return;
    if (spacing < 2) spacing = 2;
    if (density == 0) return;

    const int rangeCells = 18;
    const int range2 = rangeCells * rangeCells;
    const int fadeStart2 = (range2 * 3) >> 2;
    const int fadeSpan2  = range2 - fadeStart2;

    const float jitter = spacing * 0.35f;
    const float jitterScale = (2.0f * jitter) * (1.0f / 255.0f);

    const int baseCellX = (int)floorf(cam->pos.x / (float)spacing);
    const int baseCellZ = (int)floorf(cam->pos.z / (float)spacing);

    const float camPosX = cam->pos.x;
    const float camPosY = cam->pos.y;
    const float camPosZ = cam->pos.z;

    const float rx = cam->right.x;
    const float ry = cam->right.y;
    const float rz = cam->right.z;

    const float ux = cam->up.x;
    const float uy = cam->up.y;
    const float uz = cam->up.z;

    const float fx = cam->forward.x;
    const float fy = cam->forward.y;
    const float fz = cam->forward.z;

    const float yOff = ylevel - camPosY;

    for (int gz = baseCellZ - rangeCells; gz <= baseCellZ + rangeCells; gz++) {
        const int dzCell = gz - baseCellZ;
        const int dz2 = dzCell * dzCell;
        const float worldBaseZ = (float)(gz * spacing);

        for (int gx = baseCellX - rangeCells; gx <= baseCellX + rangeCells; gx++) {
            const int dxCell = gx - baseCellX;
            const int dist2 = (dxCell * dxCell) + dz2;

            uint8_t localDensity;
            uint32_t h;

            if (dist2 > range2) {
                continue;
            }

            if (dist2 <= fadeStart2) {
                localDensity = density;
            } else {
                const int remain = range2 - dist2;
                int d = (density * remain) / fadeSpan2;
                if (d <= 0) continue;
                if (d > 255) d = 255;
                localDensity = (uint8_t)d;
            }

            h = sb3d_hash2i(gx, gz);
            if ((h & 255u) > localDensity) continue;

            {
                const float jx = ((float)((h >> 8)  & 255u) * jitterScale) - jitter;
                const float jz = ((float)((h >> 16) & 255u) * jitterScale) - jitter;

                const float dx = ((float)(gx * spacing) + jx) - camPosX;
                const float dz = (worldBaseZ + jz) - camPosZ;

                const float camX = (dx * rx) + (yOff * ry) + (dz * rz);
                const float camY = (dx * ux) + (yOff * uy) + (dz * uz);
                const float camZ = (dx * fx) + (yOff * fy) + (dz * fz);

                if (camZ <= cam->nearPlane) continue;

                {
                    const float invZ = 1.0f / camZ;
                    const int sx = (int)((camX * cam->projF * invZ) + cam->halfW + 0.5f);
                    const int sy = (int)((-camY * cam->projF * invZ) + cam->halfH + 0.5f);

                    if ((unsigned)sx < SCREEN_W && (unsigned)sy < SCREEN_H) {
                        putPixel(sx, sy, dotCol);
                    }
                }
            }
        }
    }
}



void drawFakeSkyDots(const Camera *cam, uint8_t dotCol, int azSteps, int elSteps, uint8_t density)
{
    //if (!cam) return;
    //if (density == 0) return;

    if (azSteps < 16) azSteps = 16;
    if (elSteps < 8)  elSteps = 8;

    const float twoPi  = 6.28318530718f;
    const float halfPi = 1.57079632679f;

    const float invAz = 1.0f / (float)azSteps;
    const float invEl = 1.0f / (float)elSteps;

    const float rx = cam->right.x;
    const float ry = cam->right.y;
    const float rz = cam->right.z;

    const float ux = cam->up.x;
    const float uy = cam->up.y;
    const float uz = cam->up.z;

    const float fx = cam->forward.x;
    const float fy = cam->forward.y;
    const float fz = cam->forward.z;


    for (int el = 0; el < elSteps; el++) {
        const float elT = ((float)el + 0.5f) * invEl;
        const float elev = elT * halfPi;

        const float sinElev = sinf(elev);
        const float cosElev = cosf(elev);

        for (int az = 0; az < azSteps; az++) {
            uint32_t h = sb3d_hash2i(az, el);
            if ((h & 255u) > density) continue;

            const float jitterA = ((float)((h >> 8)  & 255u)) * (1.0f / 255.0f);
            const float jitterE = ((float)((h >> 16) & 255u)) * (1.0f / 255.0f);

            const float ang =
                (((float)az + jitterA) * invAz) * twoPi;

            const float elevJ =
                (((float)el + jitterE) * invEl) * halfPi;

            const float sinE = sinf(elevJ);
            const float cosE = cosf(elevJ);
            const float sinA = sinf(ang);
            const float cosA = cosf(ang);

            /* upper hemisphere world direction */
            const float worldX = cosE * cosA;
            const float worldY = sinE;
            const float worldZ = cosE * sinA;

            /* world dir -> camera dir */
            const float camX = (worldX * rx) + (worldY * ry) + (worldZ * rz);
            const float camY = (worldX * ux) + (worldY * uy) + (worldZ * uz);
            const float camZ = (worldX * fx) + (worldY * fy) + (worldZ * fz);

            /* only stars in front of camera */
            if (camZ <= 0.001f) continue;

            {
                const float invZ = 1.0f / camZ;
                const int sx = (int)((camX * cam->projF * invZ) + cam->halfW + 0.5f);
                const int sy = (int)((-camY * cam->projF * invZ) + cam->halfH + 0.5f);

                if ((unsigned)sx < SCREEN_W && (unsigned)sy < SCREEN_H) {
                    putPixel(sx, sy, dotCol);
                }
            }
        }
    }
}

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
)
{
    if (!cam) return;
    if (!skyTex || !groundTex) return;

    const float f    = cam->projF;
    const float cx   = cam->halfW;
    const float cy   = cam->halfH;
    const float invF = 1.0f / f;

    const float camPosX = cam->pos.x;
    const float camPosY = cam->pos.y;
    const float camPosZ = cam->pos.z;

    const float rx = cam->right.x;
    const float ry = cam->right.y;
    const float rz = cam->right.z;

    const float ux = cam->up.x;
    const float uy = cam->up.y;
    const float uz = cam->up.z;

    const float fx = cam->forward.x;
    const float fy = cam->forward.y;
    const float fz = cam->forward.z;

    const float Ry = cam->right.y;
    const float Uy = cam->up.y;
    const float Fy = cam->forward.y;

    const float groundNumer = groundY - camPosY;
    const float skyNumer    = skyY    - camPosY;

    const float skyFadeStart = skyFadeDist * 0.65f;
    const float skyFadeEnd   = skyFadeDist;
    const float skyFadeStart2 = skyFadeStart * skyFadeStart;
    const float skyFadeEnd2   = skyFadeEnd   * skyFadeEnd;
    const float skyFadeSpan2  = skyFadeEnd2 - skyFadeStart2;

    const float skyScrollUf    = (float)skyScrollU;
    const float skyScrollVf    = (float)skyScrollV;
    const float groundScrollUf = (float)groundScrollU;
    const float groundScrollVf = (float)groundScrollV;

    const float dirStepX = -ux * invF;
    const float dirStepY = -uy * invF;
    const float dirStepZ = -uz * invF;

    for (int x = 0; x < SCREEN_W; x++) {
        const float sx = (((float)x - cx) * invF);
        const float xTerm = sx * Ry;

        const float topDirWorldY    = xTerm + (cy * invF * Uy) + Fy;
        const float bottomDirWorldY = xTerm + (((cy - (float)(SCREEN_H - 1)) * invF) * Uy) + Fy;

        int topGround = 0;
        int botGround = 0;

        if (fabsf(topDirWorldY) >= 0.0001f) {
            topGround = ((groundNumer / topDirWorldY) > 0.0f);
        }
        if (fabsf(bottomDirWorldY) >= 0.0001f) {
            botGround = ((groundNumer / bottomDirWorldY) > 0.0f);
        }

        uint8_t *dst = &drawbuffer[FB_INDEX(x, 0)];

        const float sy0 = cy * invF;
        float dirX = (sx * rx) + (sy0 * ux) + fx;
        float dirY = (sx * ry) + (sy0 * uy) + fy;
        float dirZ = (sx * rz) + (sy0 * uz) + fz;

        int ySplit;
        if (topGround == botGround) {
            ySplit = topGround ? SCREEN_H : 0;
        } else {
            if (fabsf(Uy) < 0.0001f) {
                ySplit = SCREEN_H / 2;
            } else {
                const float ySplitF = cy + (f / Uy) * (xTerm + Fy);
                ySplit = (int)lroundf(ySplitF);
            }

            if (ySplit < 0) ySplit = 0;
            if (ySplit > SCREEN_H) ySplit = SCREEN_H;
        }

        /* ---------- top segment ---------- */
        {
            const int topIsGround = (topGround != 0);

            int cachedTileU = 0x7fffffff;
            int cachedTileV = 0x7fffffff;
            int cachedUseSolid = 0;
            int cachedFlipX = 0;
            int cachedFlipY = 0;
            int cachedRot = 0;

            for (int y = 0; y < ySplit; y++) {
                if (fabsf(dirY) < 0.0001f) {
                    *dst++ = topIsGround ? lineCol : skySolidCol;
                    dirX += dirStepX;
                    dirY += dirStepY;
                    dirZ += dirStepZ;
                    continue;
                }

                if (topIsGround) {
                    const float t = groundNumer / dirY;
                    const float hitX = camPosX + (dirX * t);
                    const float hitZ = camPosZ + (dirZ * t);

                    const float u = (hitX * groundScale) + groundScrollUf;
                    const float v = (hitZ * groundScale) + groundScrollVf;

                    int iu = (int)u;
                    int iv = (int)v;
                    if (u < (float)iu) iu--;
                    if (v < (float)iv) iv--;

                    int tu = iu & 31;
                    int tv = iv & 31;

                    uint8_t texCol;

                    if (proceduralPatchMode) {
                        const int tileU = iu >> 5;
                        const int tileV = iv >> 5;

                        if (tileU != cachedTileU || tileV != cachedTileV) {
                            const uint32_t hDensity = sb3d_hash2i(tileU, tileV);
                            const uint32_t hOrient  = sb3d_hash2i(tileU ^ 0x68bc21ebu, tileV ^ 0x02e5be93u);

                            cachedTileU = tileU;
                            cachedTileV = tileV;
                            cachedUseSolid = ((hDensity & 255u) > groundPatchDensity);
                            cachedFlipX = (hOrient & 1u) ? 1 : 0;
                            cachedFlipY = (hOrient & 2u) ? 1 : 0;
                            cachedRot   = (int)((hOrient >> 2) & 3u);
                        }

                        if (cachedUseSolid) {
                            texCol = groundSolidCol;
                        } else {
                            int su = cachedFlipX ? (31 - tu) : tu;
                            int sv = cachedFlipY ? (31 - tv) : tv;
                            int ru, rv;

                            switch (cachedRot) {
                                default:
                                case 0: ru = su;       rv = sv;       break;
                                case 1: ru = 31 - sv;  rv = su;       break;
                                case 2: ru = 31 - su;  rv = 31 - sv;  break;
                                case 3: ru = sv;       rv = 31 - su;  break;
                            }

                            texCol = groundTex[(rv << 5) | ru];
                            if (transparentZero && texCol == 0) texCol = groundSolidCol;
                        }
                    } else {
                        texCol = groundTex[(tv << 5) | tu];
                        if (transparentZero && texCol == 0) texCol = groundSolidCol;
                    }

                    *dst++ = texCol;
                } else {
                    const float t = skyNumer / dirY;

                    if (t <= 0.0f) {
                        *dst++ = skySolidCol;
                    } else {
                        const float hitX = camPosX + (dirX * t);
                        const float hitZ = camPosZ + (dirZ * t);

                        const float dx = hitX - camPosX;
                        const float dz = hitZ - camPosZ;
                        const float dist2 = (dx * dx) + (dz * dz);

                        const float u = (hitX * skyScale) + skyScrollUf;
                        const float v = (hitZ * skyScale) + skyScrollVf;

                        int iu = (int)u;
                        int iv = (int)v;
                        if (u < (float)iu) iu--;
                        if (v < (float)iv) iv--;

                        int tu = iu & 31;
                        int tv = iv & 31;

                        uint8_t texCol;

                        if (proceduralPatchMode) {
                            const int tileU = iu >> 5;
                            const int tileV = iv >> 5;

                            if (tileU != cachedTileU || tileV != cachedTileV) {
                                const uint32_t hDensity = sb3d_hash2i(tileU, tileV);
                                const uint32_t hOrient  = sb3d_hash2i(tileU ^ 0x68bc21ebu, tileV ^ 0x02e5be93u);

                                cachedTileU = tileU;
                                cachedTileV = tileV;
                                cachedUseSolid = ((hDensity & 255u) > skyPatchDensity);
                                cachedFlipX = (hOrient & 1u) ? 1 : 0;
                                cachedFlipY = (hOrient & 2u) ? 1 : 0;
                                cachedRot   = (int)((hOrient >> 2) & 3u);
                            }

                            if (cachedUseSolid) {
                                texCol = skySolidCol;
                            } else {
                                int su = cachedFlipX ? (31 - tu) : tu;
                                int sv = cachedFlipY ? (31 - tv) : tv;
                                int ru, rv;

                                switch (cachedRot) {
                                    default:
                                    case 0: ru = su;       rv = sv;       break;
                                    case 1: ru = 31 - sv;  rv = su;       break;
                                    case 2: ru = 31 - su;  rv = 31 - sv;  break;
                                    case 3: ru = sv;       rv = 31 - su;  break;
                                }

                                texCol = skyTex[(rv << 5) | ru];
                                if (transparentZero && texCol == 0) texCol = skySolidCol;
                            }
                        } else {
                            texCol = skyTex[(tv << 5) | tu];
                            if (transparentZero && texCol == 0) texCol = skySolidCol;
                        }

                        if (dist2 <= skyFadeStart2) {
                            *dst++ = texCol;
                        } else if (dist2 >= skyFadeEnd2) {
                            *dst++ = skySolidCol;
                        } else {
                            const float fadeT = (dist2 - skyFadeStart2) / skyFadeSpan2;
                            const int dither = ((x & 3) + ((y & 3) << 2));
                            *dst++ = ((int)(fadeT * 15.0f) > dither) ? skySolidCol : texCol;
                        }
                    }
                }

                dirX += dirStepX;
                dirY += dirStepY;
                dirZ += dirStepZ;
            }
        }

        /* ---------- bottom segment ---------- */
        {
            const int botIsGround = (botGround != 0);

            int cachedTileU = 0x7fffffff;
            int cachedTileV = 0x7fffffff;
            int cachedUseSolid = 0;
            int cachedFlipX = 0;
            int cachedFlipY = 0;
            int cachedRot = 0;

            for (int y = ySplit; y < SCREEN_H; y++) {
                if (fabsf(dirY) < 0.0001f) {
                    *dst++ = botIsGround ? lineCol : skySolidCol;
                    dirX += dirStepX;
                    dirY += dirStepY;
                    dirZ += dirStepZ;
                    continue;
                }

                if (botIsGround) {
                    const float t = groundNumer / dirY;
                    const float hitX = camPosX + (dirX * t);
                    const float hitZ = camPosZ + (dirZ * t);

                    const float u = (hitX * groundScale) + groundScrollUf;
                    const float v = (hitZ * groundScale) + groundScrollVf;

                    int iu = (int)u;
                    int iv = (int)v;
                    if (u < (float)iu) iu--;
                    if (v < (float)iv) iv--;

                    int tu = iu & 31;
                    int tv = iv & 31;

                    uint8_t texCol;

                    if (proceduralPatchMode) {
                        const int tileU = iu >> 5;
                        const int tileV = iv >> 5;

                        if (tileU != cachedTileU || tileV != cachedTileV) {
                            const uint32_t hDensity = sb3d_hash2i(tileU, tileV);
                            const uint32_t hOrient  = sb3d_hash2i(tileU ^ 0x68bc21ebu, tileV ^ 0x02e5be93u);

                            cachedTileU = tileU;
                            cachedTileV = tileV;
                            cachedUseSolid = ((hDensity & 255u) > groundPatchDensity);
                            cachedFlipX = (hOrient & 1u) ? 1 : 0;
                            cachedFlipY = (hOrient & 2u) ? 1 : 0;
                            cachedRot   = (int)((hOrient >> 2) & 3u);
                        }

                        if (cachedUseSolid) {
                            texCol = groundSolidCol;
                        } else {
                            int su = cachedFlipX ? (31 - tu) : tu;
                            int sv = cachedFlipY ? (31 - tv) : tv;
                            int ru, rv;

                            switch (cachedRot) {
                                default:
                                case 0: ru = su;       rv = sv;       break;
                                case 1: ru = 31 - sv;  rv = su;       break;
                                case 2: ru = 31 - su;  rv = 31 - sv;  break;
                                case 3: ru = sv;       rv = 31 - su;  break;
                            }

                            texCol = groundTex[(rv << 5) | ru];
                            if (transparentZero && texCol == 0) texCol = groundSolidCol;
                        }
                    } else {
                        texCol = groundTex[(tv << 5) | tu];
                        if (transparentZero && texCol == 0) texCol = groundSolidCol;
                    }

                    *dst++ = texCol;
                } else {
                    const float t = skyNumer / dirY;

                    if (t <= 0.0f) {
                        *dst++ = skySolidCol;
                    } else {
                        const float hitX = camPosX + (dirX * t);
                        const float hitZ = camPosZ + (dirZ * t);

                        const float dx = hitX - camPosX;
                        const float dz = hitZ - camPosZ;
                        const float dist2 = (dx * dx) + (dz * dz);

                        const float u = (hitX * skyScale) + skyScrollUf;
                        const float v = (hitZ * skyScale) + skyScrollVf;

                        int iu = (int)u;
                        int iv = (int)v;
                        if (u < (float)iu) iu--;
                        if (v < (float)iv) iv--;

                        int tu = iu & 31;
                        int tv = iv & 31;

                        uint8_t texCol;

                        if (proceduralPatchMode) {
                            const int tileU = iu >> 5;
                            const int tileV = iv >> 5;

                            if (tileU != cachedTileU || tileV != cachedTileV) {
                                const uint32_t hDensity = sb3d_hash2i(tileU, tileV);
                                const uint32_t hOrient  = sb3d_hash2i(tileU ^ 0x68bc21ebu, tileV ^ 0x02e5be93u);

                                cachedTileU = tileU;
                                cachedTileV = tileV;
                                cachedUseSolid = ((hDensity & 255u) > skyPatchDensity);
                                cachedFlipX = (hOrient & 1u) ? 1 : 0;
                                cachedFlipY = (hOrient & 2u) ? 1 : 0;
                                cachedRot   = (int)((hOrient >> 2) & 3u);
                            }

                            if (cachedUseSolid) {
                                texCol = skySolidCol;
                            } else {
                                int su = cachedFlipX ? (31 - tu) : tu;
                                int sv = cachedFlipY ? (31 - tv) : tv;
                                int ru, rv;

                                switch (cachedRot) {
                                    default:
                                    case 0: ru = su;       rv = sv;       break;
                                    case 1: ru = 31 - sv;  rv = su;       break;
                                    case 2: ru = 31 - su;  rv = 31 - sv;  break;
                                    case 3: ru = sv;       rv = 31 - su;  break;
                                }

                                texCol = skyTex[(rv << 5) | ru];
                                if (transparentZero && texCol == 0) texCol = skySolidCol;
                            }
                        } else {
                            texCol = skyTex[(tv << 5) | tu];
                            if (transparentZero && texCol == 0) texCol = skySolidCol;
                        }

                        if (dist2 <= skyFadeStart2) {
                            *dst++ = texCol;
                        } else if (dist2 >= skyFadeEnd2) {
                            *dst++ = skySolidCol;
                        } else {
                            const float fadeT = (dist2 - skyFadeStart2) / skyFadeSpan2;
                            const int dither = ((x & 3) + ((y & 3) << 2));
                            *dst++ = ((int)(fadeT * 15.0f) > dither) ? skySolidCol : texCol;
                        }
                    }
                }

                dirX += dirStepX;
                dirY += dirStepY;
                dirZ += dirStepZ;
            }
        }
    }

    if (fabsf(Uy) >= 0.0001f) {
        int y0 = (int)lroundf(cy + ((((0.0f) - cx) * Ry) + (f * Fy)) / Uy);
        int y1 = (int)lroundf(cy + (((((float)(SCREEN_W - 1)) - cx) * Ry) + (f * Fy)) / Uy);
        drawLine(0, y0, SCREEN_W - 1, y1, lineCol);
    }
}

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
)
{
    if (!cam) return;
    if (!skyTex) return;

    const float f    = cam->projF;
    const float cx   = cam->halfW;
    const float cy   = cam->halfH;
    const float invF = 1.0f / f;

    const float camPosX = cam->pos.x;
    const float camPosY = cam->pos.y;
    const float camPosZ = cam->pos.z;

    const float rx = cam->right.x;
    const float ry = cam->right.y;
    const float rz = cam->right.z;

    const float ux = cam->up.x;
    const float uy = cam->up.y;
    const float uz = cam->up.z;

    const float fx = cam->forward.x;
    const float fy = cam->forward.y;
    const float fz = cam->forward.z;

    const float Ry = cam->right.y;
    const float Uy = cam->up.y;
    const float Fy = cam->forward.y;

    const float groundNumer = groundY - camPosY;
    const float skyNumer    = skyY    - camPosY;

    const float skyFadeStart  = skyFadeDist * 0.65f;
    const float skyFadeEnd    = skyFadeDist;
    const float skyFadeStart2 = skyFadeStart * skyFadeStart;
    const float skyFadeEnd2   = skyFadeEnd   * skyFadeEnd;
    const float skyFadeSpan2  = skyFadeEnd2 - skyFadeStart2;

    const float skyScrollUf = (float)skyScrollU;
    const float skyScrollVf = (float)skyScrollV;

    const float dirStepX = -ux * invF;
    const float dirStepY = -uy * invF;
    const float dirStepZ = -uz * invF;

    for (int x = 0; x < SCREEN_W; x++) {
        const float sx = (((float)x - cx) * invF);
        const float xTerm = sx * Ry;

        const float topDirWorldY    = xTerm + (cy * invF * Uy) + Fy;
        const float bottomDirWorldY = xTerm + (((cy - (float)(SCREEN_H - 1)) * invF) * Uy) + Fy;

        int topGround = 0;
        int botGround = 0;

        if (fabsf(topDirWorldY) >= 0.0001f) {
            topGround = ((groundNumer / topDirWorldY) > 0.0f);
        }
        if (fabsf(bottomDirWorldY) >= 0.0001f) {
            botGround = ((groundNumer / bottomDirWorldY) > 0.0f);
        }

        uint8_t *dst = &drawbuffer[FB_INDEX(x, 0)];

        const float sy0 = cy * invF;
        float dirX = (sx * rx) + (sy0 * ux) + fx;
        float dirY = (sx * ry) + (sy0 * uy) + fy;
        float dirZ = (sx * rz) + (sy0 * uz) + fz;

        int ySplit;
        if (topGround == botGround) {
            ySplit = topGround ? SCREEN_H : 0;
        } else {
            if (fabsf(Uy) < 0.0001f) {
                ySplit = SCREEN_H / 2;
            } else {
                const float ySplitF = cy + (f / Uy) * (xTerm + Fy);
                ySplit = (int)lroundf(ySplitF);
            }

            if (ySplit < 0) ySplit = 0;
            if (ySplit > SCREEN_H) ySplit = SCREEN_H;
        }

        /* ---------- top segment ---------- */
        {
            const int topIsGround = (topGround != 0);

            int cachedTileU = 0x7fffffff;
            int cachedTileV = 0x7fffffff;
            int cachedUseSolid = 0;
            int cachedFlipX = 0;
            int cachedFlipY = 0;
            int cachedRot = 0;

            for (int y = 0; y < ySplit; y++) {
                if (fabsf(dirY) < 0.0001f) {
                    *dst++ = topIsGround ? lineCol : skySolidCol;
                    dirX += dirStepX;
                    dirY += dirStepY;
                    dirZ += dirStepZ;
                    continue;
                }

                if (topIsGround) {
                    *dst++ = groundSolidCol;
                } else {
                    const float t = skyNumer / dirY;

                    if (t <= 0.0f) {
                        *dst++ = skySolidCol;
                    } else {
                        const float hitX = camPosX + (dirX * t);
                        const float hitZ = camPosZ + (dirZ * t);

                        const float dx = hitX - camPosX;
                        const float dz = hitZ - camPosZ;
                        const float dist2 = (dx * dx) + (dz * dz);

                        const float u = (hitX * skyScale) + skyScrollUf;
                        const float v = (hitZ * skyScale) + skyScrollVf;

                        int iu = (int)u;
                        int iv = (int)v;
                        if (u < (float)iu) iu--;
                        if (v < (float)iv) iv--;

                        int tu = iu & 31;
                        int tv = iv & 31;

                        uint8_t texCol;

                        if (proceduralPatchMode) {
                            const int tileU = iu >> 5;
                            const int tileV = iv >> 5;

                            if (tileU != cachedTileU || tileV != cachedTileV) {
                                const uint32_t hDensity = sb3d_hash2i(tileU, tileV);
                                const uint32_t hOrient  = sb3d_hash2i(tileU ^ 0x68bc21ebu, tileV ^ 0x02e5be93u);

                                cachedTileU = tileU;
                                cachedTileV = tileV;
                                cachedUseSolid = ((hDensity & 255u) > skyPatchDensity);
                                cachedFlipX = (hOrient & 1u) ? 1 : 0;
                                cachedFlipY = (hOrient & 2u) ? 1 : 0;
                                cachedRot   = (int)((hOrient >> 2) & 3u);
                            }

                            if (cachedUseSolid) {
                                texCol = skySolidCol;
                            } else {
                                int su = cachedFlipX ? (31 - tu) : tu;
                                int sv = cachedFlipY ? (31 - tv) : tv;
                                int ru, rv;

                                switch (cachedRot) {
                                    default:
                                    case 0: ru = su;       rv = sv;       break;
                                    case 1: ru = 31 - sv;  rv = su;       break;
                                    case 2: ru = 31 - su;  rv = 31 - sv;  break;
                                    case 3: ru = sv;       rv = 31 - su;  break;
                                }

                                texCol = skyTex[(rv << 5) | ru];
                                if (transparentZero && texCol == 0) texCol = skySolidCol;
                            }
                        } else {
                            texCol = skyTex[(tv << 5) | tu];
                            if (transparentZero && texCol == 0) texCol = skySolidCol;
                        }

                        if (dist2 <= skyFadeStart2) {
                            *dst++ = texCol;
                        } else if (dist2 >= skyFadeEnd2) {
                            *dst++ = skySolidCol;
                        } else {
                            const float fadeT = (dist2 - skyFadeStart2) / skyFadeSpan2;
                            const int dither = ((x & 3) + ((y & 3) << 2));
                            *dst++ = ((int)(fadeT * 15.0f) > dither) ? skySolidCol : texCol;
                        }
                    }
                }

                dirX += dirStepX;
                dirY += dirStepY;
                dirZ += dirStepZ;
            }
        }

        /* ---------- bottom segment ---------- */
        {
            const int botIsGround = (botGround != 0);

            int cachedTileU = 0x7fffffff;
            int cachedTileV = 0x7fffffff;
            int cachedUseSolid = 0;
            int cachedFlipX = 0;
            int cachedFlipY = 0;
            int cachedRot = 0;

            for (int y = ySplit; y < SCREEN_H; y++) {
                if (fabsf(dirY) < 0.0001f) {
                    *dst++ = botIsGround ? lineCol : skySolidCol;
                    dirX += dirStepX;
                    dirY += dirStepY;
                    dirZ += dirStepZ;
                    continue;
                }

                if (botIsGround) {
                    *dst++ = groundSolidCol;
                } else {
                    const float t = skyNumer / dirY;

                    if (t <= 0.0f) {
                        *dst++ = skySolidCol;
                    } else {
                        const float hitX = camPosX + (dirX * t);
                        const float hitZ = camPosZ + (dirZ * t);

                        const float dx = hitX - camPosX;
                        const float dz = hitZ - camPosZ;
                        const float dist2 = (dx * dx) + (dz * dz);

                        const float u = (hitX * skyScale) + skyScrollUf;
                        const float v = (hitZ * skyScale) + skyScrollVf;

                        int iu = (int)u;
                        int iv = (int)v;
                        if (u < (float)iu) iu--;
                        if (v < (float)iv) iv--;

                        int tu = iu & 31;
                        int tv = iv & 31;

                        uint8_t texCol;

                        if (proceduralPatchMode) {
                            const int tileU = iu >> 5;
                            const int tileV = iv >> 5;

                            if (tileU != cachedTileU || tileV != cachedTileV) {
                                const uint32_t hDensity = sb3d_hash2i(tileU, tileV);
                                const uint32_t hOrient  = sb3d_hash2i(tileU ^ 0x68bc21ebu, tileV ^ 0x02e5be93u);

                                cachedTileU = tileU;
                                cachedTileV = tileV;
                                cachedUseSolid = ((hDensity & 255u) > skyPatchDensity);
                                cachedFlipX = (hOrient & 1u) ? 1 : 0;
                                cachedFlipY = (hOrient & 2u) ? 1 : 0;
                                cachedRot   = (int)((hOrient >> 2) & 3u);
                            }

                            if (cachedUseSolid) {
                                texCol = skySolidCol;
                            } else {
                                int su = cachedFlipX ? (31 - tu) : tu;
                                int sv = cachedFlipY ? (31 - tv) : tv;
                                int ru, rv;

                                switch (cachedRot) {
                                    default:
                                    case 0: ru = su;       rv = sv;       break;
                                    case 1: ru = 31 - sv;  rv = su;       break;
                                    case 2: ru = 31 - su;  rv = 31 - sv;  break;
                                    case 3: ru = sv;       rv = 31 - su;  break;
                                }

                                texCol = skyTex[(rv << 5) | ru];
                                if (transparentZero && texCol == 0) texCol = skySolidCol;
                            }
                        } else {
                            texCol = skyTex[(tv << 5) | tu];
                            if (transparentZero && texCol == 0) texCol = skySolidCol;
                        }

                        if (dist2 <= skyFadeStart2) {
                            *dst++ = texCol;
                        } else if (dist2 >= skyFadeEnd2) {
                            *dst++ = skySolidCol;
                        } else {
                            const float fadeT = (dist2 - skyFadeStart2) / skyFadeSpan2;
                            const int dither = ((x & 3) + ((y & 3) << 2));
                            *dst++ = ((int)(fadeT * 15.0f) > dither) ? skySolidCol : texCol;
                        }
                    }
                }

                dirX += dirStepX;
                dirY += dirStepY;
                dirZ += dirStepZ;
            }
        }
    }

    if (fabsf(Uy) >= 0.0001f) {
        int y0 = (int)lroundf(cy + ((((0.0f) - cx) * Ry) + (f * Fy)) / Uy);
        int y1 = (int)lroundf(cy + (((((float)(SCREEN_W - 1)) - cx) * Ry) + (f * Fy)) / Uy);
        drawLine(0, y0, SCREEN_W - 1, y1, lineCol);
    }
}

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
)
{
    if (!cam) return;
    if (!groundTex) return;

    const float f    = cam->projF;
    const float cx   = cam->halfW;
    const float cy   = cam->halfH;
    const float invF = 1.0f / f;

    const float camPosX = cam->pos.x;
    const float camPosY = cam->pos.y;
    const float camPosZ = cam->pos.z;

    const float rx = cam->right.x;
    const float ry = cam->right.y;
    const float rz = cam->right.z;

    const float ux = cam->up.x;
    const float uy = cam->up.y;
    const float uz = cam->up.z;

    const float fx = cam->forward.x;
    const float fy = cam->forward.y;
    const float fz = cam->forward.z;

    const float Ry = cam->right.y;
    const float Uy = cam->up.y;
    const float Fy = cam->forward.y;

    const float groundNumer = groundY - camPosY;
    const float groundScrollUf = (float)groundScrollU;
    const float groundScrollVf = (float)groundScrollV;

    for (int x = 0; x < SCREEN_W; x++) {
        const float sx = (((float)x - cx) * invF);
        const float xTerm = sx * Ry;

        const float topDirWorldY    = xTerm + (cy * invF * Uy) + Fy;
        const float bottomDirWorldY = xTerm + (((cy - (float)(SCREEN_H - 1)) * invF) * Uy) + Fy;

        int topGround = 0;
        int botGround = 0;

        if (fabsf(topDirWorldY) >= 0.0001f) {
            topGround = ((groundNumer / topDirWorldY) > 0.0f);
        }
        if (fabsf(bottomDirWorldY) >= 0.0001f) {
            botGround = ((groundNumer / bottomDirWorldY) > 0.0f);
        }

        int ySplit;
        if (topGround == botGround) {
            ySplit = topGround ? SCREEN_H : 0;
        } else {
            if (fabsf(Uy) < 0.0001f) {
                ySplit = SCREEN_H / 2;
            } else {
                const float ySplitF = cy + (f / Uy) * (xTerm + Fy);
                ySplit = (int)lroundf(ySplitF);
            }

            if (ySplit < 0) ySplit = 0;
            if (ySplit > SCREEN_H) ySplit = SCREEN_H;
        }

        uint8_t *dst = &drawbuffer[FB_INDEX(x, 0)];

        for (int y = 0; y < SCREEN_H; y++) {
            const int isGround = (y < ySplit) ? topGround : botGround;

            if (!isGround) {
                *dst = skySolidCol;
                dst++;
                continue;
            }

            {
                const float sy = (cy - (float)y) * invF;

                const float dirX = (sx * rx) + (sy * ux) + fx;
                const float dirY = (sx * ry) + (sy * uy) + fy;
                const float dirZ = (sx * rz) + (sy * uz) + fz;

                if (fabsf(dirY) < 0.0001f) {
                    *dst = lineCol;
                    dst++;
                    continue;
                }

                {
                    const float t = groundNumer / dirY;
                    const float hitX = camPosX + (dirX * t);
                    const float hitZ = camPosZ + (dirZ * t);

                    const float u = (hitX * groundScale) + groundScrollUf;
                    const float v = (hitZ * groundScale) + groundScrollVf;

                    int iu = (int)u;
                    int iv = (int)v;
                    if (u < (float)iu) iu--;
                    if (v < (float)iv) iv--;

                    int tu = iu & 31;
                    int tv = iv & 31;

                    uint8_t texCol;

                    if (proceduralPatchMode) {
                        const int tileU = iu >> 5;
                        const int tileV = iv >> 5;

                        const uint32_t hDensity = sb3d_hash2i(tileU, tileV);
                        const uint32_t hOrient  = sb3d_hash2i(tileU ^ 0x68bc21ebu, tileV ^ 0x02e5be93u);

                        if ((hDensity & 255u) > groundPatchDensity) {
                            texCol = groundSolidCol;
                        } else {
                            int su = tu;
                            int sv = tv;
                            int ru, rv;

                            if (hOrient & 1u) su = 31 - su;
                            if (hOrient & 2u) sv = 31 - sv;

                            switch ((hOrient >> 2) & 3u) {
                                default:
                                case 0: ru = su;       rv = sv;       break;
                                case 1: ru = 31 - sv;  rv = su;       break;
                                case 2: ru = 31 - su;  rv = 31 - sv;  break;
                                case 3: ru = sv;       rv = 31 - su;  break;
                            }

                            texCol = groundTex[(rv << 5) | ru];
                            if (transparentZero && texCol == 0) texCol = groundSolidCol;
                        }
                    } else {
                        texCol = groundTex[(tv << 5) | tu];
                        if (transparentZero && texCol == 0) texCol = groundSolidCol;
                    }

                    *dst = texCol;
                }
            }

            dst++;
        }
    }

    if (fabsf(Uy) >= 0.0001f) {
        int y0 = (int)lroundf(cy + ((((0.0f) - cx) * Ry) + (f * Fy)) / Uy);
        int y1 = (int)lroundf(cy + (((((float)(SCREEN_W - 1)) - cx) * Ry) + (f * Fy)) / Uy);
        drawLine(0, y0, SCREEN_W - 1, y1, lineCol);
    }
}




























void drawFakeHorizon(const Camera *cam, uint8_t skyCol, uint8_t groundCol, uint8_t lineCol, float ylevel)
{
    if (!cam) return;

    const float f  = cam->projF;
    const float cx = cam->halfW;
    const float cy = cam->halfH;

    const float Ry = cam->right.y;
    const float Uy = cam->up.y;
    const float Fy = cam->forward.y;

    const float invF = 1.0f / f;
    const float groundNumer = ylevel - cam->pos.y;

    for (int x = 0; x < SCREEN_W; x++) {
        const float xTerm = (((float)x - cx) * invF) * Ry;

        const float topDirWorldY    = xTerm + (cy * invF * Uy) + Fy;
        const float bottomDirWorldY = xTerm + (((cy - (float)(SCREEN_H - 1)) * invF) * Uy) + Fy;

        int topGround = 0;
        int botGround = 0;

        if (fabsf(topDirWorldY) >= 0.0001f) {
            topGround = ((groundNumer / topDirWorldY) > 0.0f);
        }
        if (fabsf(bottomDirWorldY) >= 0.0001f) {
            botGround = ((groundNumer / bottomDirWorldY) > 0.0f);
        }

        uint8_t *dst = &drawbuffer[FB_INDEX(x, 0)];

        if (topGround == botGround) {
            const uint8_t col = topGround ? groundCol : skyCol;

            for (int y = 0; y < SCREEN_H; y++) {
                *dst++ = col;
            }
        } else {
            int ySplit;

            if (fabsf(Uy) < 0.0001f) {
                ySplit = SCREEN_H / 2;
            } else {
                const float ySplitF = cy + (f / Uy) * (xTerm + Fy);
                ySplit = (int)lroundf(ySplitF);
            }

            if (ySplit < 0) ySplit = 0;
            if (ySplit > SCREEN_H) ySplit = SCREEN_H;

            if (topGround) {
                for (int y = 0; y < ySplit; y++) *dst++ = groundCol;
                for (int y = ySplit; y < SCREEN_H; y++) *dst++ = skyCol;
            } else {
                for (int y = 0; y < ySplit; y++) *dst++ = skyCol;
                for (int y = ySplit; y < SCREEN_H; y++) *dst++ = groundCol;
            }
        }
    }

    if (fabsf(Uy) >= 0.0001f) {
        int y0 = (int)lroundf(cy + ((((0.0f) - cx) * Ry) + (f * Fy)) / Uy);
        int y1 = (int)lroundf(cy + (((((float)(SCREEN_W - 1)) - cx) * Ry) + (f * Fy)) / Uy);
        drawLine(0, y0, SCREEN_W - 1, y1, lineCol);
    }
}


enum {
    CLIP_LEFT   = 1,
    CLIP_RIGHT  = 2,
    CLIP_TOP    = 4,
    CLIP_BOTTOM = 8
};

static int sb3d_computeOutCode(int x, int y)
{
    int code = 0;

    if (x < 0) {
        code |= CLIP_LEFT;
    } else if (x >= SCREEN_W) {
        code |= CLIP_RIGHT;
    }

    if (y < 0) {
        code |= CLIP_TOP;
    } else if (y >= SCREEN_H) {
        code |= CLIP_BOTTOM;
    }

    return code;
}

static int sb3d_clipLineToScreen(int *x0, int *y0, int *x1, int *y1)
{
    int out0 = sb3d_computeOutCode(*x0, *y0);
    int out1 = sb3d_computeOutCode(*x1, *y1);

    while (1) {
        if ((out0 | out1) == 0) {
            return 1;   /* fully accepted */
        }

        if (out0 & out1) {
            return 0;   /* fully rejected */
        }

        {
            int out = out0 ? out0 : out1;
            int x = 0;
            int y = 0;

            if (out & CLIP_TOP) {
                if (*y1 == *y0) return 0;
                x = *x0 + (int)(((int64_t)(*x1 - *x0) * (0 - *y0)) / (*y1 - *y0));
                y = 0;
            }
            else if (out & CLIP_BOTTOM) {
                if (*y1 == *y0) return 0;
                x = *x0 + (int)(((int64_t)(*x1 - *x0) * ((SCREEN_H - 1) - *y0)) / (*y1 - *y0));
                y = SCREEN_H - 1;
            }
            else if (out & CLIP_RIGHT) {
                if (*x1 == *x0) return 0;
                y = *y0 + (int)(((int64_t)(*y1 - *y0) * ((SCREEN_W - 1) - *x0)) / (*x1 - *x0));
                x = SCREEN_W - 1;
            }
            else { /* CLIP_LEFT */
                if (*x1 == *x0) return 0;
                y = *y0 + (int)(((int64_t)(*y1 - *y0) * (0 - *x0)) / (*x1 - *x0));
                x = 0;
            }

            if (out == out0) {
                *x0 = x;
                *y0 = y;
                out0 = sb3d_computeOutCode(*x0, *y0);
            } else {
                *x1 = x;
                *y1 = y;
                out1 = sb3d_computeOutCode(*x1, *y1);
            }
        }
    }
}



void drawFakeHorizonGrid(
    const Camera *cam,
    uint8_t gridCol,
    int spacing,
    float ylevel,
    int rangeCells
)
{
    if (!cam) return;
    if (spacing < 2) spacing = 2;
    if (rangeCells < 1) rangeCells = 1;

    const int padCells = 1;

    const int baseCellX = (int)floorf(cam->pos.x / (float)spacing);
    const int baseCellZ = (int)floorf(cam->pos.z / (float)spacing);

    const int minGX = baseCellX - rangeCells - padCells;
    const int maxGX = baseCellX + rangeCells + padCells;
    const int minGZ = baseCellZ - rangeCells - padCells;
    const int maxGZ = baseCellZ + rangeCells + padCells;

    const float nearPlane = cam->nearPlane;

    const float camPosX = cam->pos.x;
    const float camPosY = cam->pos.y;
    const float camPosZ = cam->pos.z;

    const float rx = cam->right.x;
    const float ry = cam->right.y;
    const float rz = cam->right.z;

    const float ux = cam->up.x;
    const float uy = cam->up.y;
    const float uz = cam->up.z;

    const float fx = cam->forward.x;
    const float fy = cam->forward.y;
    const float fz = cam->forward.z;

    const float yOff = ylevel - camPosY;

    const float minWorldX = (float)(minGX * spacing);
    const float minWorldZ = (float)(minGZ * spacing);

    const float stepX_camX = (float)spacing * rx;
    const float stepX_camY = (float)spacing * ux;
    const float stepX_camZ = (float)spacing * fx;

    const float stepZ_camX = (float)spacing * rz;
    const float stepZ_camY = (float)spacing * uz;
    const float stepZ_camZ = (float)spacing * fz;

    for (int gz = minGZ; gz <= maxGZ; gz++) {
        const float wz = (float)(gz * spacing);
        const float dz = wz - camPosZ;
        const float dx0 = minWorldX - camPosX;

        float camX = (dx0 * rx) + (yOff * ry) + (dz * rz);
        float camY = (dx0 * ux) + (yOff * uy) + (dz * uz);
        float camZ = (dx0 * fx) + (yOff * fy) + (dz * fz);

        int havePrev = 0;
        float prevCamX = 0.0f;
        float prevCamY = 0.0f;
        float prevCamZ = 0.0f;

        for (int gx = minGX; gx <= maxGX; gx++) {
            if (havePrev) {
                float ax = prevCamX;
                float ay = prevCamY;
                float az = prevCamZ;

                float bx = camX;
                float by = camY;
                float bz = camZ;

                if (!(az <= nearPlane && bz <= nearPlane)) {
                    if (az <= nearPlane || bz <= nearPlane) {
                        const float t = (nearPlane - az) / (bz - az);
                        const float ix = ax + ((bx - ax) * t);
                        const float iy = ay + ((by - ay) * t);

                        if (az <= nearPlane) {
                            ax = ix;
                            ay = iy;
                            az = nearPlane;
                        } else {
                            bx = ix;
                            by = iy;
                            bz = nearPlane;
                        }
                    }

                    if (az > nearPlane && bz > nearPlane) {
                        int x0 = (int)(((ax * cam->projF) / az) + cam->halfW + 0.5f);
                        int y0 = (int)(((-ay * cam->projF) / az) + cam->halfH + 0.5f);
                        int x1 = (int)(((bx * cam->projF) / bz) + cam->halfW + 0.5f);
                        int y1 = (int)(((-by * cam->projF) / bz) + cam->halfH + 0.5f);

                        if (sb3d_clipLineToScreen(&x0, &y0, &x1, &y1)) {
                            drawLine(x0, y0, x1, y1, gridCol);
                        }
                    }
                }
            }

            prevCamX = camX;
            prevCamY = camY;
            prevCamZ = camZ;
            havePrev = 1;

            camX += stepX_camX;
            camY += stepX_camY;
            camZ += stepX_camZ;
        }
    }

    for (int gx = minGX; gx <= maxGX; gx++) {
        const float wx = (float)(gx * spacing);
        const float dx = wx - camPosX;
        const float dz0 = minWorldZ - camPosZ;

        float camX = (dx * rx) + (yOff * ry) + (dz0 * rz);
        float camY = (dx * ux) + (yOff * uy) + (dz0 * uz);
        float camZ = (dx * fx) + (yOff * fy) + (dz0 * fz);

        int havePrev = 0;
        float prevCamX = 0.0f;
        float prevCamY = 0.0f;
        float prevCamZ = 0.0f;

        for (int gz = minGZ; gz <= maxGZ; gz++) {
            if (havePrev) {
                float ax = prevCamX;
                float ay = prevCamY;
                float az = prevCamZ;

                float bx = camX;
                float by = camY;
                float bz = camZ;

                if (!(az <= nearPlane && bz <= nearPlane)) {
                    if (az <= nearPlane || bz <= nearPlane) {
                        const float t = (nearPlane - az) / (bz - az);
                        const float ix = ax + ((bx - ax) * t);
                        const float iy = ay + ((by - ay) * t);

                        if (az <= nearPlane) {
                            ax = ix;
                            ay = iy;
                            az = nearPlane;
                        } else {
                            bx = ix;
                            by = iy;
                            bz = nearPlane;
                        }
                    }

                    if (az > nearPlane && bz > nearPlane) {
                        int x0 = (int)(((ax * cam->projF) / az) + cam->halfW + 0.5f);
                        int y0 = (int)(((-ay * cam->projF) / az) + cam->halfH + 0.5f);
                        int x1 = (int)(((bx * cam->projF) / bz) + cam->halfW + 0.5f);
                        int y1 = (int)(((-by * cam->projF) / bz) + cam->halfH + 0.5f);

                        if (sb3d_clipLineToScreen(&x0, &y0, &x1, &y1)) {
                            drawLine(x0, y0, x1, y1, gridCol);
                        }
                    }
                }
            }

            prevCamX = camX;
            prevCamY = camY;
            prevCamZ = camZ;
            havePrev = 1;

            camX += stepZ_camX;
            camY += stepZ_camY;
            camZ += stepZ_camZ;
        }
    }
}

static void sortRenderTrisNearestFirst(const Camera *cam)
{
    int b;
    int out = 0;

    if (!cam) return;
    if (g_renderTriCount <= 1) return;

    for (b = 0; b < TRI_SORT_BUCKETS; b++) {
        g_triBucketHead[b] = -1;
    }

    for (int i = 0; i < g_renderTriCount; i++) {
        RenderTri *rt = &g_renderTris[i];

        float zkey = rt->camz0;
        if (rt->camz1 < zkey) zkey = rt->camz1;
        if (rt->camz2 < zkey) zkey = rt->camz2;

        if (zkey < cam->nearPlane) zkey = cam->nearPlane;
        if (zkey > cam->farPlane)  zkey = cam->farPlane;

        {
            float t;
            int bucket;

            t = (zkey - cam->nearPlane) / (cam->farPlane - cam->nearPlane);

            if (t < 0.0f) t = 0.0f;
            if (t > 1.0f) t = 1.0f;

            bucket = (int)(t * (float)(TRI_SORT_BUCKETS - 1) + 0.5f);

            g_triBucketNext[i] = g_triBucketHead[bucket];
            g_triBucketHead[bucket] = i;
        }
    }

    for (b = 0; b < TRI_SORT_BUCKETS; b++) {
        int idx = g_triBucketHead[b];

        while (idx >= 0) {
            g_renderTriSortTmp[out++] = g_renderTris[idx];
            idx = g_triBucketNext[idx];
        }
    }

    for (int i = 0; i < out; i++) {
        g_renderTris[i] = g_renderTriSortTmp[i];
    }
}



void Render3D(const Camera *cam)
{
    initClipScratch();
    resetRenderList();
    submitWorldEntities(cam);
    sb3dParticlesRender(cam);
    //sortRenderTrisNearestFirst(cam);

    if (g_wireframe) {
        for (int i = 0; i < g_renderTriCount; i++) {
            RenderTri *rt = &g_renderTris[i];
            int shade = (int)(rt->shadeF + 0.5f);

            if (shade < 0) shade = 0;
            if (shade > 4) shade = 4;

            if (rt->emission > 0) {
                const float emissiveF = (float)rt->emission * (1.0f / 255.0f);
                int emissiveShade = (int)MAX_PALETTE_SHADE_INDEX - (int)(emissiveF * MAX_PALETTE_SHADE_INDEX + 0.5f);
                if (emissiveShade < 0) emissiveShade = 0;
                if (emissiveShade < shade) shade = emissiveShade;
            }

            {
                const uint8_t col = shadeColor(rt->color, shade);
                drawLine(rt->p0.x, rt->p0.y, rt->p1.x, rt->p1.y, col);
                drawLine(rt->p1.x, rt->p1.y, rt->p2.x, rt->p2.y, col);
                drawLine(rt->p2.x, rt->p2.y, rt->p0.x, rt->p0.y, col);
            }
        }
        return;
    }

    for (int band = 0; band < ((SCREEN_H + ZBUF_BAND_H - 1) / ZBUF_BAND_H); band++) {
        const int bandY0 = band * ZBUF_BAND_H;

        beginDepthBand(bandY0);

        if (g_flatMode) {
            for (int i = 0; i < g_renderTriCount; i++) {
                RenderTri *rt = &g_renderTris[i];

                if (band < rt->firstBand || band > rt->lastBand) continue;

                fillTriangleFlat(
                    rt->p0.x, rt->p0.y,
                    rt->p1.x, rt->p1.y,
                    rt->p2.x, rt->p2.y,
                    rt->z0, rt->z1, rt->z2,
                    rt->camz0, rt->camz1, rt->camz2,
                    rt->color,
                    rt->shadeF
                );
            }
        }
        else if (g_twoshadeMode) {
            for (int i = 0; i < g_renderTriCount; i++) {
                RenderTri *rt = &g_renderTris[i];

                if (band < rt->firstBand || band > rt->lastBand) continue;

                fillTriangleDitherBayer2Mode(
                    rt->p0.x, rt->p0.y,
                    rt->p1.x, rt->p1.y,
                    rt->p2.x, rt->p2.y,
                    rt->z0, rt->z1, rt->z2,
                    rt->camz0, rt->camz1, rt->camz2,
                    rt->color,
                    rt->shadeF
                );
            }
        }
        else {
            for (int i = 0; i < g_renderTriCount; i++) {
                RenderTri *rt = &g_renderTris[i];

                if (band < rt->firstBand || band > rt->lastBand) continue;

                if (rt->color & TRI_FLAG_TRANSPARENT) {
                    fillTriangleDitherBayerT(
                        rt->p0.x, rt->p0.y,
                        rt->p1.x, rt->p1.y,
                        rt->p2.x, rt->p2.y,
                        rt->z0, rt->z1, rt->z2,
                        rt->camz0, rt->camz1, rt->camz2,
                        rt->color,
                        rt->transparency,
                        rt->shadeF
                    );
                } else {
                    fillTriangleDitherBayer(
                        rt->p0.x, rt->p0.y,
                        rt->p1.x, rt->p1.y,
                        rt->p2.x, rt->p2.y,
                        rt->z0, rt->z1, rt->z2,
                        rt->camz0, rt->camz1, rt->camz2,
                        rt->color,
                        rt->shadeF
                    );
                }
            }
        }
    }
}


static inline int triArea2Screen(int x0, int y0, int x1, int y1, int x2, int y2)
{
    int a = ((x1 - x0) * (y2 - y0)) - ((y1 - y0) * (x2 - x0));
    return (a < 0) ? -a : a;
}

static inline int triangleTooSmallToMatter(
    const Vec3 *a,
    const Vec3 *b,
    const Vec3 *c,
    const Camera *cam)
{
    float invZa, invZb, invZc;
    int x0, y0, x1, y1, x2, y2;
    int area2;

    if (a->z <= cam->nearPlane || b->z <= cam->nearPlane || c->z <= cam->nearPlane)
        return 0; /* let clip path deal with it */

    invZa = 1.0f / a->z;
    invZb = 1.0f / b->z;
    invZc = 1.0f / c->z;

    x0 = (int)((a->x * cam->projF * invZa) + cam->halfW + 0.5f);
    y0 = (int)((-a->y * cam->projF * invZa) + cam->halfH + 0.5f);

    x1 = (int)((b->x * cam->projF * invZb) + cam->halfW + 0.5f);
    y1 = (int)((-b->y * cam->projF * invZb) + cam->halfH + 0.5f);

    x2 = (int)((c->x * cam->projF * invZc) + cam->halfW + 0.5f);
    y2 = (int)((-c->y * cam->projF * invZc) + cam->halfH + 0.5f);

    area2 = triArea2Screen(x0, y0, x1, y1, x2, y2);

    /* 2x area in pixels.
       0,1,2 = basically dust.
       try 2 first, then 4 if you want more aggression. */
    return (area2 <= 2);
}

void submitEntitySolid(const Entity *ent, const Camera *cam)
{
    const Mesh *mesh;
    const Material *mat;
    Light *lights;
    int lightCount;

    float matAmbient;
    float matEmissive;
    float matDiffuse;
    float matSpec;
    float matShiny;

    float entPosX, entPosY, entPosZ;
    float erx, ery, erz;
    float eux, euy, euz;
    float efx, efy, efz;

    float camPosX, camPosY, camPosZ;
    float crx, cry, crz;
    float cux, cuy, cuz;
    float cfx, cfy, cfz;

    const float farPlane   = cam->farPlane;
    const float nearPlane  = cam->nearPlane;
    const float halfHOverW = (float)SCREEN_H / (float)SCREEN_W;

    int hasDiffuse;
    int hasSpec;
    int shiny8;
    int shiny16;

    const Light *activeLights[MAX_LIGHTS];
    int activeLightCount = 0;

    if (!ent || !cam) return;
    if (!ent->mesh) return;

    mesh = ent->mesh;
    if (!mesh->verts || !mesh->tris) return;
    if (mesh->vertCount <= 0 || mesh->vertCount > SB3D_MAX_VERTS) return;
    if (mesh->triCount <= 0) return;

    mat = &mesh->material;
    lights = lightsGet();
    lightCount = lightsGetCount();

    matAmbient  = mat->ambient;
    matEmissive = mat->emissive;
    matDiffuse  = mat->diffuse;
    matSpec     = mat->specularStrength;
    matShiny    = mat->shininess;

    hasDiffuse = (matDiffuse > 0.0f);
    hasSpec    = (matSpec > 0.0f);
    shiny8     = (matShiny == 8.0f);
    shiny16    = (matShiny == 16.0f);

    entPosX = ent->pos.x;
    entPosY = ent->pos.y;
    entPosZ = ent->pos.z;

    erx = ent->right.x;
    ery = ent->right.y;
    erz = ent->right.z;

    eux = ent->up.x;
    euy = ent->up.y;
    euz = ent->up.z;

    efx = ent->forward.x;
    efy = ent->forward.y;
    efz = ent->forward.z;

    camPosX = cam->pos.x;
    camPosY = cam->pos.y;
    camPosZ = cam->pos.z;

    crx = cam->right.x;
    cry = cam->right.y;
    crz = cam->right.z;

    cux = cam->up.x;
    cuy = cam->up.y;
    cuz = cam->up.z;

    cfx = cam->forward.x;
    cfy = cam->forward.y;
    cfz = cam->forward.z;

    /*
        Pre-filter lights once per entity.

        Point light is skipped if the entity bounding sphere is fully outside
        the light's "beyond" radius.
    */
    if ((hasDiffuse || hasSpec) && lightCount > 0) {
        const float entityRadius = mesh->boundsRadius;

        for (int li = 0; li < lightCount; li++) {
            const Light *ls = &lights[li];

            if (!ls->enabled) {
                continue;
            }

            if (ls->type == LIGHT_DIRECTIONAL) {
                activeLights[activeLightCount++] = ls;
                continue;
            }

            {
                const float dx = ls->pos.x - entPosX;
                const float dy = ls->pos.y - entPosY;
                const float dz = ls->pos.z - entPosZ;
                const float maxDist = ls->beyond + entityRadius;
                const float dist2 = (dx * dx) + (dy * dy) + (dz * dz);

                if (dist2 <= (maxDist * maxDist)) {
                    activeLights[activeLightCount++] = ls;
                }
            }
        }
    }

    /* build world-space + camera-space vertex caches once per entity */
    /* ------------------------------------------------------------
       Build world-space verts as before, but precompute one
       local->camera transform for the whole entity.
       ------------------------------------------------------------ */
    {
        const float dpx = entPosX - camPosX;
        const float dpy = entPosY - camPosY;
        const float dpz = entPosZ - camPosZ;

        /* M = C^T * E */
        const float m00 = (crx * erx) + (cry * ery) + (crz * erz);
        const float m01 = (crx * eux) + (cry * euy) + (crz * euz);
        const float m02 = (crx * efx) + (cry * efy) + (crz * efz);

        const float m10 = (cux * erx) + (cuy * ery) + (cuz * erz);
        const float m11 = (cux * eux) + (cuy * euy) + (cuz * euz);
        const float m12 = (cux * efx) + (cuy * efy) + (cuz * efz);

        const float m20 = (cfx * erx) + (cfy * ery) + (cfz * erz);
        const float m21 = (cfx * eux) + (cfy * euy) + (cfz * euz);
        const float m22 = (cfx * efx) + (cfy * efy) + (cfz * efz);

        /* T = C^T * (entPos - camPos) */
        const float tx = (dpx * crx) + (dpy * cry) + (dpz * crz);
        const float ty = (dpx * cux) + (dpy * cuy) + (dpz * cuz);
        const float tz = (dpx * cfx) + (dpy * cfy) + (dpz * cfz);

        for (int vi = 0; vi < mesh->vertCount; vi++) {
            const Vec3 *lv = &mesh->verts[vi];
            const float lx = lv->x;
            const float ly = lv->y;
            const float lz = lv->z;

            /* local -> world (still needed for lighting) */
            g_worldVertsCache[vi].x = entPosX + (erx * lx) + (eux * ly) + (efx * lz);
            g_worldVertsCache[vi].y = entPosY + (ery * lx) + (euy * ly) + (efy * lz);
            g_worldVertsCache[vi].z = entPosZ + (erz * lx) + (euz * ly) + (efz * lz);

            /* local -> camera using precomputed transform */
            g_camVertsCache[vi].x = (m00 * lx) + (m01 * ly) + (m02 * lz) + tx;
            g_camVertsCache[vi].y = (m10 * lx) + (m11 * ly) + (m12 * lz) + ty;
            g_camVertsCache[vi].z = (m20 * lx) + (m21 * ly) + (m22 * lz) + tz;
        }
    }

    for (int i = 0; i < mesh->triCount; i++) {
        const Tri *t = &mesh->tris[i];
        const Vec3 *wa = &g_worldVertsCache[t->a];
        const Vec3 *wb = &g_worldVertsCache[t->b];
        const Vec3 *wc = &g_worldVertsCache[t->c];
        const Vec3 *a  = &g_camVertsCache[t->a];
        const Vec3 *b  = &g_camVertsCache[t->b];
        const Vec3 *c  = &g_camVertsCache[t->c];

        float abx, aby, abz;
        float acx, acy, acz;
        float nx, ny, nz;
        float nlen2;

        float faceCX, faceCY, faceCZ;
        float faceEmission;
        float brightness;
        float triShadeF;
        uint8_t renderColor;

        int fullyInside;
        int fullyOutside;

        if (a->z > farPlane && b->z > farPlane && c->z > farPlane) {
            continue;
        }

        if (a->z < nearPlane && b->z < nearPlane && c->z < nearPlane) {
            continue;
        }

    #if USE_BACKFACE_CULL
        if (!triangleFacingCamera(*a, *b, *c)) {
            continue;
        }
    #endif

        fullyOutside =
            ((a->x < -a->z) && (b->x < -b->z) && (c->x < -c->z)) ||
            ((a->x >  a->z) && (b->x >  b->z) && (c->x >  c->z)) ||
            ((a->y < -(a->z * halfHOverW)) &&
             (b->y < -(b->z * halfHOverW)) &&
             (c->y < -(c->z * halfHOverW))) ||
            ((a->y >  (a->z * halfHOverW)) &&
             (b->y >  (b->z * halfHOverW)) &&
             (c->y >  (c->z * halfHOverW)));

        if (fullyOutside) {
            continue;
        }

        fullyInside =
            (a->z >= nearPlane) &&
            (b->z >= nearPlane) &&
            (c->z >= nearPlane) &&

            (a->x >= -a->z) && (a->x <= a->z) &&
            (b->x >= -b->z) && (b->x <= b->z) &&
            (c->x >= -c->z) && (c->x <= c->z) &&

            (a->y >= -(a->z * halfHOverW)) && (a->y <= (a->z * halfHOverW)) &&
            (b->y >= -(b->z * halfHOverW)) && (b->y <= (b->z * halfHOverW)) &&
            (c->y >= -(c->z * halfHOverW)) && (c->y <= (c->z * halfHOverW));

        /* THIS is good, but it kills fine details, (road markings)
        if (fullyInside) {
            if (triangleTooSmallToMatter(a, b, c, cam)) {
                continue;
            }
        }
        */

        abx = wb->x - wa->x;
        aby = wb->y - wa->y;
        abz = wb->z - wa->z;

        acx = wc->x - wa->x;
        acy = wc->y - wa->y;
        acz = wc->z - wa->z;

        nx = (aby * acz) - (abz * acy);
        ny = (abz * acx) - (abx * acz);
        nz = (abx * acy) - (aby * acx);

        nlen2 = (nx * nx) + (ny * ny) + (nz * nz);
        if (nlen2 <= 0.000001f) {
            continue;
        }

        {
            const float invNLen = 1.0f / sqrtf(nlen2);
            nx *= invNLen;
            ny *= invNLen;
            nz *= invNLen;
        }

        faceCX = (wa->x + wb->x + wc->x) * (1.0f / 3.0f);
        faceCY = (wa->y + wb->y + wc->y) * (1.0f / 3.0f);
        faceCZ = (wa->z + wb->z + wc->z) * (1.0f / 3.0f);

        faceEmission = (float)t->emission * (1.0f / 255.0f);
        brightness = matAmbient + matEmissive;

        if (activeLightCount > 0) {
            float vx = 0.0f, vy = 0.0f, vz = 0.0f;

            if (hasSpec) {
                float vlen2;

                vx = camPosX - faceCX;
                vy = camPosY - faceCY;
                vz = camPosZ - faceCZ;

                vlen2 = (vx * vx) + (vy * vy) + (vz * vz);
                if (vlen2 > 0.000001f) {
                    if (vlen2 < 0.999f || vlen2 > 1.001f) {
                        const float invVLen = 1.0f / sqrtf(vlen2);
                        vx *= invVLen;
                        vy *= invVLen;
                        vz *= invVLen;
                    }
                } else {
                    vx = 0.0f;
                    vy = 0.0f;
                    vz = 0.0f;
                }
            }

            for (int li = 0; li < activeLightCount; li++) {
                const Light *ls = activeLights[li];
                float lx, ly, lz;
                float attenuation = 1.0f;
                float ndotl;

                if (ls->type == LIGHT_POINT) {
                    float dist2;
                    const float near2   = ls->near   * ls->near;
                    const float beyond2 = ls->beyond * ls->beyond;

                    lx = ls->pos.x - faceCX;
                    ly = ls->pos.y - faceCY;
                    lz = ls->pos.z - faceCZ;

                    dist2 = (lx * lx) + (ly * ly) + (lz * lz);

                    if (dist2 >= beyond2) {
                        continue;
                    }

                    if (dist2 > 0.000001f) {
                        const float invDist = 1.0f / sqrtf(dist2);
                        const float dist = dist2 * invDist;

                        lx *= invDist;
                        ly *= invDist;
                        lz *= invDist;

                        if (dist2 > near2) {
                            if (ls->far <= ls->near) {
                                continue;
                            }

                            if (ls->beyond <= ls->far) {
                                float tval;

                                if (dist >= ls->far) {
                                    continue;
                                }

                                tval = (dist - ls->near) / (ls->far - ls->near);
                                if (tval < 0.0f) tval = 0.0f;
                                if (tval > 1.0f) tval = 1.0f;
                                attenuation = 1.0f - tval;
                            } else if (dist <= ls->far) {
                                float tval = (dist - ls->near) / (ls->far - ls->near);
                                if (tval < 0.0f) tval = 0.0f;
                                if (tval > 1.0f) tval = 1.0f;
                                attenuation = 1.0f - (tval * 0.75f);
                            } else {
                                float tval = (dist - ls->far) / (ls->beyond - ls->far);
                                if (tval < 0.0f) tval = 0.0f;
                                if (tval > 1.0f) tval = 1.0f;
                                attenuation = 0.25f * (1.0f - tval);
                            }

                            if (attenuation <= 0.0f) {
                                continue;
                            }
                        }
                    } else {
                        lx = 0.0f;
                        ly = 0.0f;
                        lz = 0.0f;
                    }
                } else {
                    lx = -ls->dir.x;
                    ly = -ls->dir.y;
                    lz = -ls->dir.z;
                }

                ndotl = (nx * lx) + (ny * ly) + (nz * lz);
                if (ndotl <= 0.0f) {
                    continue;
                }

                if (hasDiffuse) {
                    brightness += ndotl * ls->intensity * attenuation * matDiffuse;
                }

                if (hasSpec) {
                    const float rdx = (2.0f * ndotl * nx) - lx;
                    const float rdy = (2.0f * ndotl * ny) - ly;
                    const float rdz = (2.0f * ndotl * nz) - lz;
                    const float rdotv = (rdx * vx) + (rdy * vy) + (rdz * vz);

                    if (rdotv > 0.0f) {
                        float specPow;

                        if (shiny8) {
                            float s = rdotv * rdotv;
                            s *= s;
                            s *= s;
                            specPow = s;
                        }
                        else if (shiny16) {
                            float s = rdotv * rdotv;
                            s *= s;
                            s *= s;
                            s *= s;
                            specPow = s;
                        }
                        else {
                            specPow = powfxt(rdotv, matShiny);
                        }

                        brightness += specPow * matSpec * ls->intensity * attenuation;
                    }
                }

                if (brightness >= 1.0f) {
                    brightness = 1.0f;
                    break;
                }
            }
        }

        if (brightness < faceEmission) brightness = faceEmission;
        if (brightness > 1.0f) brightness = 1.0f;

        triShadeF = brightnessToShadeF(brightness);

        renderColor = (uint8_t)(t->color & TRI_COLOUR_MASK);
        if (t->transparency > 0)
            renderColor |= TRI_FLAG_TRANSPARENT;

        if (fullyInside) {
            submitClippedTri(
                *a, *b, *c,
                cam,
                renderColor,
                t->emission,
                t->transparency,
                triShadeF
            );
        } else {
            Vec3 align32 clipped[CLIP_MAX_VERTS];
            const int clippedCount = clipTriangleToFrustum(*a, *b, *c, clipped, cam);

            if (clippedCount < 3) {
                continue;
            }

            for (int k = 1; k < clippedCount - 1; k++) {
                submitClippedTri(
                    clipped[0],
                    clipped[k],
                    clipped[k + 1],
                    cam,
                    renderColor,
                    t->emission,
                    t->transparency,
                    triShadeF
                );
            }
        }
    }
}




void drawWorldLine(Vec3 a, Vec3 b, const Camera *cam, uint8_t color)
{
    Vec2 pa, pb;

    a = worldToCamera(a, *cam);
    b = worldToCamera(b, *cam);

    if (!clipLineToNearPlane(&a, &b, cam)) return;
    if (!projectPoint(a, cam, &pa)) return;
    if (!projectPoint(b, cam, &pb)) return;

    drawLine(pa.x, pa.y, pb.x, pb.y, color);
}

void drawEntity(const Entity *ent, const Camera *cam, uint8_t color)
{
    for (int i = 0; i < ent->mesh->edgeCount; i++) {
        Edge e = ent->mesh->edges[i];

        Vec3 a = entityLocalToWorld(ent, ent->mesh->verts[e.a]);
        Vec3 b = entityLocalToWorld(ent, ent->mesh->verts[e.b]);

        drawWorldLine(a, b, cam, color);
    }
}

void drawEntitySolid(const Entity *ent, const Camera *cam)
{
    submitEntitySolid(ent, cam);
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

static void sb3dBuildHitBasis(
    Vec3 normal,
    Vec3 preferredForward,
    Vec3 *outRight,
    Vec3 *outUp,
    Vec3 *outForward
)
{
    float fx = normal.x;
    float fy = normal.y;
    float fz = normal.z;

    float ux, uy, uz;
    float rx, ry, rz;

    {
        const float flen2 = (fx * fx) + (fy * fy) + (fz * fz);
        if (flen2 > 0.000001f) {
            if (flen2 < 0.999f || flen2 > 1.001f) {
                const float invLen = 1.0f / sqrtf(flen2);
                fx *= invLen;
                fy *= invLen;
                fz *= invLen;
            }
        } else {
            fx = 0.0f;
            fy = 0.0f;
            fz = 1.0f;
        }
    }

    {
        const float d =
            (preferredForward.x * fx) +
            (preferredForward.y * fy) +
            (preferredForward.z * fz);

        ux = preferredForward.x - (fx * d);
        uy = preferredForward.y - (fy * d);
        uz = preferredForward.z - (fz * d);
    }

    {
        const float ulen2 = (ux * ux) + (uy * uy) + (uz * uz);

        if (ulen2 <= 0.000001f) {
            if (fy > -0.9f && fy < 0.9f) {
                ux = -fx * fy;
                uy = 1.0f - (fy * fy);
                uz = -fz * fy;
            } else {
                ux = 1.0f - (fx * fx);
                uy = -fy * fx;
                uz = -fz * fx;
            }
        }
    }

    {
        const float ulen2 = (ux * ux) + (uy * uy) + (uz * uz);

        if (ulen2 > 0.000001f) {
            const float invLen = 1.0f / sqrtf(ulen2);
            ux *= invLen;
            uy *= invLen;
            uz *= invLen;
        } else {
            ux = 0.0f;
            uy = 1.0f;
            uz = 0.0f;
        }
    }

    rx = (uy * fz) - (uz * fy);
    ry = (uz * fx) - (ux * fz);
    rz = (ux * fy) - (uy * fx);

    {
        const float rlen2 = (rx * rx) + (ry * ry) + (rz * rz);
        if (rlen2 > 0.000001f) {
            const float invLen = 1.0f / sqrtf(rlen2);
            rx *= invLen;
            ry *= invLen;
            rz *= invLen;
        } else {
            rx = 1.0f;
            ry = 0.0f;
            rz = 0.0f;
        }
    }

    uy = (fz * rx) - (fx * rz);
    uz = (fx * ry) - (fy * rx);
    ux = (fy * rz) - (fz * ry);

    {
        const float ulen2 = (ux * ux) + (uy * uy) + (uz * uz);
        if (ulen2 > 0.000001f) {
            const float invLen = 1.0f / sqrtf(ulen2);
            ux *= invLen;
            uy *= invLen;
            uz *= invLen;
        } else {
            ux = 0.0f;
            uy = 1.0f;
            uz = 0.0f;
        }
    }

    if (outRight) {
        outRight->x = rx;
        outRight->y = ry;
        outRight->z = rz;
    }

    if (outUp) {
        outUp->x = ux;
        outUp->y = uy;
        outUp->z = uz;
    }

    if (outForward) {
        outForward->x = fx;
        outForward->y = fy;
        outForward->z = fz;
    }
}

static int sb3dRayEntityCandidate(
    Vec3 rayOrig,
    Vec3 rayDir,
    float maxDist,
    const Entity *ent
)
{
    float vx, vy, vz;
    float t;
    float dx, dy, dz;
    float dist2;
    float r;

    if (!ent || !ent->mesh) return 0;

    vx = ent->pos.x - rayOrig.x;
    vy = ent->pos.y - rayOrig.y;
    vz = ent->pos.z - rayOrig.z;
    r  = ent->mesh->boundsRadius;

    t = (vx * rayDir.x) + (vy * rayDir.y) + (vz * rayDir.z);

    if (t < -r) {
        return 0;
    }

    if (t > (maxDist + r)) {
        return 0;
    }

    if (t <= 0.0f) {
        dx = rayOrig.x - ent->pos.x;
        dy = rayOrig.y - ent->pos.y;
        dz = rayOrig.z - ent->pos.z;
    }
    else if (t >= maxDist) {
        dx = (rayOrig.x + (rayDir.x * maxDist)) - ent->pos.x;
        dy = (rayOrig.y + (rayDir.y * maxDist)) - ent->pos.y;
        dz = (rayOrig.z + (rayDir.z * maxDist)) - ent->pos.z;
    }
    else {
        dx = (rayOrig.x + (rayDir.x * t)) - ent->pos.x;
        dy = (rayOrig.y + (rayDir.y * t)) - ent->pos.y;
        dz = (rayOrig.z + (rayDir.z * t)) - ent->pos.z;
    }

    dist2 = (dx * dx) + (dy * dy) + (dz * dz);

    return (dist2 <= (r * r));
}

int sb3dRaycastWorld(
    Vec3 rayOrig,
    Vec3 rayDir,
    float maxDist,
    SB3DRaycastHit *outHit
)
{
    int found = 0;
    float bestT = maxDist;

    if (!outHit) return 0;

    outHit->hit = 0;
    outHit->entityId = -1;
    outHit->triIndex = -1;
    outHit->distance = 0.0f;
    outHit->point = (Vec3){ 0.0f, 0.0f, 0.0f };
    outHit->normal = (Vec3){ 0.0f, 0.0f, 0.0f };
    outHit->right = (Vec3){ 1.0f, 0.0f, 0.0f };
    outHit->up = (Vec3){ 0.0f, 1.0f, 0.0f };
    outHit->forward = (Vec3){ 0.0f, 0.0f, 1.0f };

    {
        const float len2 =
            (rayDir.x * rayDir.x) +
            (rayDir.y * rayDir.y) +
            (rayDir.z * rayDir.z);

        if (len2 <= 0.000001f) {
            return 0;
        }

        if (len2 < 0.999f || len2 > 1.001f) {
            const float invLen = 1.0f / sqrtf(len2);
            rayDir.x *= invLen;
            rayDir.y *= invLen;
            rayDir.z *= invLen;
        }
    }

    for (int ei = 0; ei < WORLD_MAX; ei++) {
        Entity *ent = &worldEntities[ei];
        const Mesh *mesh;
        const Vec3 *verts;
        const Tri *tris;
        int triCount;

        Vec3 localRayOrig;
        Vec3 localRayDir;

        float dx, dy, dz;
        float hitT;

        if (!ent->active) continue;
        if (!ent->mesh) continue;
        if ((ent->flags & ENTITY_HITTEST) == 0) continue;
        if (!sb3dRayEntityCandidate(rayOrig, rayDir, bestT, ent)) continue;

        mesh = ent->mesh;
        verts = mesh->verts;
        tris  = mesh->tris;
        triCount = mesh->triCount;

        if (!verts || !tris || triCount <= 0) continue;

        /* world ray -> entity local */
        dx = rayOrig.x - ent->pos.x;
        dy = rayOrig.y - ent->pos.y;
        dz = rayOrig.z - ent->pos.z;

        localRayOrig.x = (dx * ent->right.x) + (dy * ent->right.y) + (dz * ent->right.z);
        localRayOrig.y = (dx * ent->up.x)    + (dy * ent->up.y)    + (dz * ent->up.z);
        localRayOrig.z = (dx * ent->forward.x) + (dy * ent->forward.y) + (dz * ent->forward.z);

        localRayDir.x = (rayDir.x * ent->right.x) + (rayDir.y * ent->right.y) + (rayDir.z * ent->right.z);
        localRayDir.y = (rayDir.x * ent->up.x)    + (rayDir.y * ent->up.y)    + (rayDir.z * ent->up.z);
        localRayDir.z = (rayDir.x * ent->forward.x) + (rayDir.y * ent->forward.y) + (rayDir.z * ent->forward.z);

        for (int ti = 0; ti < triCount; ti++) {
            const Tri *t = &tris[ti];
            const Vec3 *v0 = &verts[t->a];
            const Vec3 *v1 = &verts[t->b];
            const Vec3 *v2 = &verts[t->c];

            Vec3 localHitNormal;

            if (sb3dRayTriangleHitDetailed(
                    localRayOrig,
                    localRayDir,
                    bestT,
                    *v0,
                    *v1,
                    *v2,
                    &hitT,
                    &localHitNormal))
            {
                Vec3 worldNormal;
                Vec3 preferredForward;

                bestT = hitT;
                found = 1;

                outHit->hit = 1;
                outHit->entityId = ei;
                outHit->triIndex = ti;
                outHit->distance = hitT;

                /* hit point back to world */
                {
                    const Vec3 localHit = {
                        localRayOrig.x + (localRayDir.x * hitT),
                        localRayOrig.y + (localRayDir.y * hitT),
                        localRayOrig.z + (localRayDir.z * hitT)
                    };

                    outHit->point.x = ent->pos.x
                                    + (ent->right.x   * localHit.x)
                                    + (ent->up.x      * localHit.y)
                                    + (ent->forward.x * localHit.z);

                    outHit->point.y = ent->pos.y
                                    + (ent->right.y   * localHit.x)
                                    + (ent->up.y      * localHit.y)
                                    + (ent->forward.y * localHit.z);

                    outHit->point.z = ent->pos.z
                                    + (ent->right.z   * localHit.x)
                                    + (ent->up.z      * localHit.y)
                                    + (ent->forward.z * localHit.z);
                }

                /* normal back to world */
                worldNormal.x =
                    (ent->right.x   * localHitNormal.x) +
                    (ent->up.x      * localHitNormal.y) +
                    (ent->forward.x * localHitNormal.z);

                worldNormal.y =
                    (ent->right.y   * localHitNormal.x) +
                    (ent->up.y      * localHitNormal.y) +
                    (ent->forward.y * localHitNormal.z);

                worldNormal.z =
                    (ent->right.z   * localHitNormal.x) +
                    (ent->up.z      * localHitNormal.y) +
                    (ent->forward.z * localHitNormal.z);

                outHit->normal = worldNormal;

                preferredForward.x = -rayDir.x;
                preferredForward.y = -rayDir.y;
                preferredForward.z = -rayDir.z;

                sb3dBuildHitBasis(
                    worldNormal,
                    preferredForward,
                    &outHit->right,
                    &outHit->up,
                    &outHit->forward
                );
            }
        }
    }

    return found;
}

int sb3dRaycastFromCamera(
    const Camera *cam,
    float maxDist,
    SB3DRaycastHit *outHit
)
{
    if (!cam || !outHit) return 0;
    return sb3dRaycastWorld(cam->pos, cam->forward, maxDist, outHit);
}


////////////// collision DE-PIGGING MODE ///////////////////////////////
////////////// collision DE-PIGGING MODE ///////////////////////////////
////////////// collision DE-PIGGING MODE ///////////////////////////////








































////////////// collision DE-PIGGING MODE ///////////////////////////////
////////////// collision DE-PIGGING MODE ///////////////////////////////
////////////// collision DE-PIGGING MODE ///////////////////////////////
// file render.c (this is part)
////////////// collision DE-PIGGING MODE ///////////////////////////////

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


static inline Vec3 sb3dEntityLocalToWorldPoint(const Entity *ent, Vec3 p)
{
    Vec3 out;

    out.x = ent->pos.x + (ent->right.x * p.x) + (ent->up.x * p.y) + (ent->forward.x * p.z);
    out.y = ent->pos.y + (ent->right.y * p.x) + (ent->up.y * p.y) + (ent->forward.y * p.z);
    out.z = ent->pos.z + (ent->right.z * p.x) + (ent->up.z * p.y) + (ent->forward.z * p.z);

    return out;
}


uint8_t entitySweepRaycastTest(int movingId, int targetId, Vec3 *hitPos, Tri *triHit)
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