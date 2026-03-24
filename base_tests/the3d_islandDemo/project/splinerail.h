#ifndef SPLINERAIL_H
#define SPLINERAIL_H

#include <stdint.h>
#include "sb3d/sb3d.h"

#define SPLINERAIL_MAX_SAMPLES   2048
#define SPLINERAIL_SAMPLES_PER_SEG  32

typedef struct {
    Vec3  p;
    float waitTime;    /* seconds to pause when arriving at this node */
    float bankScale;   /* 1.0 = normal bank amount */
} SplineRailNode;

typedef struct {
    const SplineRailNode *nodes;
    int count;

    float t;
    float speed;
    uint8_t loop;

    Vec3 lastPos;
    uint8_t started;

    /* waiting */
    float waitTimer;
    int lastEnteredNode;

    /* steering */
    float turnRatePitch;
    float turnRateYaw;

    /* banking */
    float bankStrength;     /* how strongly curve creates bank */
    float bankResponse;     /* how quickly bank follows target */
    float bankMax;          /* absolute roll clamp in radians */
    float currentBank;
    float rollAutoLevel;    /* return-to-level assist on straight sections */

    float distance;
    float totalLength;

    int sampleCount;
    float sampleT[SPLINERAIL_MAX_SAMPLES];
    float sampleDist[SPLINERAIL_MAX_SAMPLES];
} SplineRail;

Vec3 splineRailSamplePos(const SplineRail *rail, float t);
Vec3 splineRailSampleTangent(const SplineRail *rail, float t);

void splineRailInit(
    SplineRail *rail,
    const SplineRailNode *nodes,
    int count,
    float speed,
    uint8_t loop
);

void splineRailReset(SplineRail *rail);
void splineRailSetSpeed(SplineRail *rail, float speed);

void splineRailSetTuning(
    SplineRail *rail,
    float turnPitch,
    float turnYaw,
    float rollAutoLevel
);

void splineRailSetBanking(
    SplineRail *rail,
    float bankStrength,
    float bankResponse,
    float bankMax
);

void splineRailBuildTable(SplineRail *rail);
float splineRailDistanceToT(const SplineRail *rail, float dist);

void splineRailUpdate(SplineRail *rail, Camera *cam, float dt);
int splineRailGetCurrentNode(const SplineRail *rail);

#endif