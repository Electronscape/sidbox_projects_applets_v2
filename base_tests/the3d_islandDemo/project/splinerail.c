#include "splinerail.h"

#include <math.h>
#include <stddef.h>

/* ------------------------------------------------------------ */
/* small local helpers                                          */
/* ------------------------------------------------------------ */

static inline float sr_absf(float v)
{
    return (v < 0.0f) ? -v : v;
}

static inline float sr_clampf(float v, float lo, float hi)
{
    if (v < lo) return lo;
    if (v > hi) return hi;
    return v;
}

static inline float sr_wrap_angle(float a)
{
    while (a >  3.1415926535f) a -= 6.283185307f;
    while (a < -3.1415926535f) a += 6.283185307f;
    return a;
}

static inline float sr_dot(Vec3 a, Vec3 b)
{
    return (a.x * b.x) + (a.y * b.y) + (a.z * b.z);
}

static inline Vec3 sr_add(Vec3 a, Vec3 b)
{
    Vec3 out;
    out.x = a.x + b.x;
    out.y = a.y + b.y;
    out.z = a.z + b.z;
    return out;
}

static inline Vec3 sr_sub(Vec3 a, Vec3 b)
{
    Vec3 out;
    out.x = a.x - b.x;
    out.y = a.y - b.y;
    out.z = a.z - b.z;
    return out;
}

static inline Vec3 sr_scale(Vec3 v, float s)
{
    Vec3 out;
    out.x = v.x * s;
    out.y = v.y * s;
    out.z = v.z * s;
    return out;
}

static inline float sr_len2(Vec3 v)
{
    return (v.x * v.x) + (v.y * v.y) + (v.z * v.z);
}

static inline float sr_len(Vec3 v)
{
    return sqrtf(sr_len2(v));
}

static inline Vec3 sr_normalize(Vec3 v)
{
    float l2 = sr_len2(v);

    if (l2 <= 0.000001f) {
        Vec3 z = { 0.0f, 0.0f, 1.0f };
        return z;
    }

    if (l2 < 0.999f || l2 > 1.001f) {
        const float invL = 1.0f / sqrtf(l2);
        v.x *= invL;
        v.y *= invL;
        v.z *= invL;
    }

    return v;
}

static inline Vec3 sr_lerp(Vec3 a, Vec3 b, float t)
{
    Vec3 out;
    out.x = a.x + ((b.x - a.x) * t);
    out.y = a.y + ((b.y - a.y) * t);
    out.z = a.z + ((b.z - a.z) * t);
    return out;
}

static inline float sr_smoothstep(float t)
{
    t = sr_clampf(t, 0.0f, 1.0f);
    return t * t * (3.0f - (2.0f * t));
}

static inline int sr_wrap_index(int i, int count, uint8_t loop)
{
    if (count <= 0) return 0;

    if (loop) {
        while (i < 0)      i += count;
        while (i >= count) i -= count;
        return i;
    }

    if (i < 0) return 0;
    if (i >= count) return count - 1;
    return i;
}

static inline float sr_distance(Vec3 a, Vec3 b)
{
    const float dx = b.x - a.x;
    const float dy = b.y - a.y;
    const float dz = b.z - a.z;
    return sqrtf((dx * dx) + (dy * dy) + (dz * dz));
}

/* ------------------------------------------------------------ */
/* internal path helpers                                        */
/* ------------------------------------------------------------ */

static int sr_segment_count(const SplineRail *rail)
{
    if (!rail) return 0;
    if (rail->count < 2) return 0;
    return rail->loop ? rail->count : (rail->count - 1);
}

static Vec3 sr_segment_dir(const SplineRail *rail, int seg)
{
    Vec3 z = { 0.0f, 0.0f, 1.0f };
    int segCount;
    int i0, i1;
    Vec3 d;

    if (!rail || !rail->nodes) return z;

    segCount = sr_segment_count(rail);
    if (segCount <= 0) return z;

    if (rail->loop) {
        while (seg < 0) seg += segCount;
        while (seg >= segCount) seg -= segCount;
    } else {
        if (seg < 0) seg = 0;
        if (seg >= segCount) seg = segCount - 1;
    }

    i0 = seg;
    i1 = seg + 1;
    if (rail->loop && i1 >= rail->count) i1 = 0;

    d = sr_sub(rail->nodes[i1].p, rail->nodes[i0].p);
    return sr_normalize(d);
}

/* ------------------------------------------------------------ */
/* build length table                                           */
/* ------------------------------------------------------------ */

void splineRailBuildTable(SplineRail *rail)
{
    int segCount;
    float accum = 0.0f;

    if (!rail) return;
    if (!rail->nodes) return;
    if (rail->count < 2) return;

    segCount = sr_segment_count(rail);
    if (segCount <= 0) return;

    rail->sampleCount = segCount + 1;
    rail->totalLength = 0.0f;

    rail->sampleT[0] = 0.0f;
    rail->sampleDist[0] = 0.0f;

    for (int seg = 0; seg < segCount; seg++) {
        int i0 = seg;
        int i1 = seg + 1;
        float len;

        if (rail->loop && i1 >= rail->count) i1 = 0;

        len = sr_distance(rail->nodes[i0].p, rail->nodes[i1].p);
        accum += len;

        rail->sampleT[seg + 1] = (float)(seg + 1);
        rail->sampleDist[seg + 1] = accum;
    }

    rail->totalLength = accum;
}

float splineRailDistanceToT(const SplineRail *rail, float dist)
{
    int segCount;

    if (!rail) return 0.0f;
    segCount = sr_segment_count(rail);
    if (segCount <= 0) return 0.0f;
    if (rail->sampleCount <= 1) return 0.0f;

    if (rail->loop) {
        while (dist < 0.0f) dist += rail->totalLength;
        while (dist >= rail->totalLength) dist -= rail->totalLength;
    } else {
        if (dist <= 0.0f) return 0.0f;
        if (dist >= rail->totalLength) return (float)segCount;
    }

    for (int i = 1; i < rail->sampleCount; i++) {
        const float d0 = rail->sampleDist[i - 1];
        const float d1 = rail->sampleDist[i];
        const float span = d1 - d0;

        if (dist <= d1) {
            const float local = (span > 0.000001f) ? ((dist - d0) / span) : 0.0f;
            return (float)(i - 1) + local;
        }
    }

    return (float)segCount;
}

/* ------------------------------------------------------------ */
/* public sampling                                              */
/* ------------------------------------------------------------ */

Vec3 splineRailSamplePos(const SplineRail *rail, float t)
{
    Vec3 zero = { 0.0f, 0.0f, 0.0f };
    int segCount;
    int seg;
    float localT;
    int i0, i1;

    if (!rail) return zero;
    if (!rail->nodes) return zero;
    if (rail->count <= 0) return zero;
    if (rail->count == 1) return rail->nodes[0].p;

    segCount = sr_segment_count(rail);
    if (segCount <= 0) return rail->nodes[0].p;

    if (rail->loop) {
        while (t < 0.0f) t += (float)segCount;
        while (t >= (float)segCount) t -= (float)segCount;
    } else {
        if (t <= 0.0f) return rail->nodes[0].p;
        if (t >= (float)segCount) return rail->nodes[rail->count - 1].p;
    }

    seg = (int)t;
    localT = t - (float)seg;

    i0 = seg;
    i1 = seg + 1;
    if (rail->loop && i1 >= rail->count) i1 = 0;

    return sr_lerp(rail->nodes[i0].p, rail->nodes[i1].p, localT);
}

Vec3 splineRailSampleTangent(const SplineRail *rail, float t)
{
    Vec3 z = { 0.0f, 0.0f, 1.0f };
    int segCount;
    int seg;
    float localT;
    Vec3 dirNow, dirNext;
    float blendStart, blend;

    if (!rail) return z;
    if (!rail->nodes) return z;
    if (rail->count <= 1) return z;

    segCount = sr_segment_count(rail);
    if (segCount <= 0) return z;

    if (rail->loop) {
        while (t < 0.0f) t += (float)segCount;
        while (t >= (float)segCount) t -= (float)segCount;
    } else {
        if (t <= 0.0f) t = 0.0f;
        if (t >= (float)segCount) t = (float)segCount - 0.0001f;
    }

    seg = (int)t;
    localT = t - (float)seg;

    dirNow = sr_segment_dir(rail, seg);
    dirNext = sr_segment_dir(rail, seg + 1);

    /*
        Blend only near the end of the segment.
        This gives "turn into the next point" without bowing the path.
    */
    blendStart = 0.70f;

    if (localT <= blendStart) {
        return dirNow;
    }

    blend = (localT - blendStart) / (1.0f - blendStart);
    blend = sr_smoothstep(blend);

    return sr_normalize(sr_lerp(dirNow, dirNext, blend));
}

/* ------------------------------------------------------------ */
/* init / control                                               */
/* ------------------------------------------------------------ */

void splineRailInit(
    SplineRail *rail,
    const SplineRailNode *nodes,
    int count,
    float speed,
    uint8_t loop
)
{
    if (!rail) return;

    rail->nodes = nodes;
    rail->count = count;
    rail->t = 0.0f;
    rail->speed = speed;
    rail->loop = loop ? 1 : 0;

    rail->lastPos.x = 0.0f;
    rail->lastPos.y = 0.0f;
    rail->lastPos.z = 0.0f;
    rail->started = 0;

    rail->waitTimer = 0.0f;
    rail->lastEnteredNode = -1;

    rail->turnRatePitch = 2.5f;
    rail->turnRateYaw   = 2.5f;

    rail->bankStrength  = 2.0f;
    rail->bankResponse  = 4.0f;
    rail->bankMax       = 0.8f;
    rail->currentBank   = 0.0f;
    rail->rollAutoLevel = 2.0f;

    rail->distance = 0.0f;
    rail->totalLength = 0.0f;
    rail->sampleCount = 0;

    splineRailBuildTable(rail);
}

void splineRailReset(SplineRail *rail)
{
    if (!rail) return;

    rail->t = 0.0f;
    rail->distance = 0.0f;

    rail->lastPos.x = 0.0f;
    rail->lastPos.y = 0.0f;
    rail->lastPos.z = 0.0f;
    rail->started = 0;

    rail->waitTimer = 0.0f;
    rail->lastEnteredNode = -1;
    rail->currentBank = 0.0f;
}

void splineRailSetSpeed(SplineRail *rail, float speed)
{
    if (!rail) return;
    rail->speed = speed;
}

void splineRailSetTuning(SplineRail *rail, float turnPitch, float turnYaw, float rollAutoLevel)
{
    if (!rail) return;

    rail->turnRatePitch = turnPitch;
    rail->turnRateYaw   = turnYaw;
    rail->rollAutoLevel = rollAutoLevel;
}

void splineRailSetBanking(SplineRail *rail, float bankStrength, float bankResponse, float bankMax)
{
    if (!rail) return;

    rail->bankStrength = bankStrength;
    rail->bankResponse = bankResponse;
    rail->bankMax      = bankMax;
}

/* ------------------------------------------------------------ */
/* node entry / waiting                                         */
/* ------------------------------------------------------------ */

static void sr_handle_node_entry(SplineRail *rail)
{
    int nodeIndex;

    if (!rail) return;
    if (!rail->nodes) return;
    if (rail->count <= 0) return;

    nodeIndex = (int)(rail->t + 0.5f);

    if (rail->loop) {
        while (nodeIndex >= rail->count) nodeIndex -= rail->count;
        while (nodeIndex < 0)            nodeIndex += rail->count;
    } else {
        if (nodeIndex < 0) nodeIndex = 0;
        if (nodeIndex >= rail->count) nodeIndex = rail->count - 1;
    }

    if (nodeIndex != rail->lastEnteredNode) {
        rail->lastEnteredNode = nodeIndex;

        if (rail->nodes[nodeIndex].waitTime > 0.0f) {
            rail->waitTimer = rail->nodes[nodeIndex].waitTime;
        }
    }
}

/* ------------------------------------------------------------ */
/* camera steering                                              */
/* ------------------------------------------------------------ */

static void sr_steer_camera_to_tangent(
    SplineRail *rail,
    Camera *cam,
    Vec3 desiredForward,
    float desiredBank,
    float dt
)
{
    float yaw;
    float pitch;
    float bankErr;

    desiredForward = sr_normalize(desiredForward);

    yaw = atan2f(desiredForward.x, desiredForward.z);

    {
        const float xzLen = sqrtf(
            (desiredForward.x * desiredForward.x) +
            (desiredForward.z * desiredForward.z)
        );

        pitch = atan2f(-desiredForward.y, (xzLen < 0.0001f) ? 0.0001f : xzLen);
    }

    bankErr = desiredBank - rail->currentBank;
    rail->currentBank += sr_clampf(
        bankErr,
        -rail->bankResponse * dt,
         rail->bankResponse * dt
    );

    if (sr_absf(desiredBank) < 0.0001f) {
        rail->currentBank -= rail->currentBank * sr_clampf(rail->rollAutoLevel * dt, 0.0f, 1.0f);
    }

    rail->currentBank = sr_clampf(rail->currentBank, -rail->bankMax, rail->bankMax);

    cameraRotate(cam, yaw, -pitch, -rail->currentBank);
}

/* ------------------------------------------------------------ */
/* main update                                                  */
/* ------------------------------------------------------------ */

void splineRailUpdate(SplineRail *rail, Camera *cam, float dt)
{
    float prevT;
    Vec3 posNow;
    Vec3 posDelta;
    Vec3 tangentNow;
    Vec3 tangentAhead;
    float turnSide;
    float desiredBank;
    float bankScale = 1.0f;
    int segNode;

    if (!rail || !cam) return;
    if (!rail->nodes) return;
    if (rail->count < 2) return;
    if (dt <= 0.0f) return;
    if (rail->sampleCount <= 1) return;
    if (rail->totalLength <= 0.0001f) return;

    prevT = rail->t;

    if (rail->waitTimer > 0.0f) {
        rail->waitTimer -= dt;
        if (rail->waitTimer < 0.0f) rail->waitTimer = 0.0f;
    } else {
        rail->distance += rail->speed * dt;

        if (rail->loop) {
            while (rail->distance >= rail->totalLength) rail->distance -= rail->totalLength;
            while (rail->distance < 0.0f)               rail->distance += rail->totalLength;
        } else {
            if (rail->distance < 0.0f) rail->distance = 0.0f;
            if (rail->distance > rail->totalLength) rail->distance = rail->totalLength;
        }

        rail->t = splineRailDistanceToT(rail, rail->distance);
    }

    if ((int)prevT != (int)rail->t) {
        sr_handle_node_entry(rail);
    }

    posNow = splineRailSamplePos(rail, rail->t);
    tangentNow = sr_normalize(splineRailSampleTangent(rail, rail->t));
    tangentAhead = sr_normalize(splineRailSampleTangent(rail, rail->t + 0.15f));

    if (!rail->started) {
        cam->pos = posNow;
        rail->lastPos = posNow;
        rail->started = 1;

        sr_steer_camera_to_tangent(rail, cam, tangentNow, 0.0f, dt);
        return;
    }

    posDelta = sr_sub(posNow, rail->lastPos);
    cam->pos = sr_add(cam->pos, posDelta);
    rail->lastPos = posNow;

    {
        const float flatNowX = tangentNow.x;
        const float flatNowZ = tangentNow.z;
        const float flatAhdX = tangentAhead.x;
        const float flatAhdZ = tangentAhead.z;

        turnSide = (flatNowX * flatAhdZ) - (flatNowZ * flatAhdX);
    }

    segNode = (int)rail->t;
    if (segNode < 0) segNode = 0;
    if (segNode >= rail->count) segNode = rail->count - 1;

    if (rail->nodes[segNode].bankScale > 0.0f) {
        bankScale = rail->nodes[segNode].bankScale;
    }

    desiredBank = -turnSide * rail->bankStrength * bankScale;
    desiredBank = sr_clampf(desiredBank, -rail->bankMax, rail->bankMax);

    sr_steer_camera_to_tangent(rail, cam, tangentNow, desiredBank, dt);
}









int splineRailGetCurrentNode(const SplineRail *rail)
{
    if (!rail) return 0;
    if (!rail->nodes) return 0;
    if (rail->count <= 0) return 0;
    if (rail->count == 1) return 0;

    if ((int)rail->t < 0) return 0;
    if ((int)rail->t >= rail->count) return rail->count - 1;

    return (int)rail->t;
}