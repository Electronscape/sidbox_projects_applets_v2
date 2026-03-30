#include "sb3d.h"
#include "sb3daudio.h"
#include <stdint.h>

SB3DAudioInfo g_sb3dWorldAudioInfo;

void sb3dWorldAudioSetup(float dopplerStrength, float panStrength, float distanceMin, float distanceMax)
{
    if (dopplerStrength < 0.0f) dopplerStrength = 0.0f;
    if (panStrength < 0.0f) panStrength = 0.0f;
    if (panStrength > 1.0f) panStrength = 1.0f;
    if (distanceMin < 0.0f) distanceMin = 0.0f;
    if (distanceMax < distanceMin) distanceMax = distanceMin;

    g_sb3dWorldAudioInfo.dopplerStrength = dopplerStrength;
    g_sb3dWorldAudioInfo.panStrength = panStrength;
    g_sb3dWorldAudioInfo.distanceMin = distanceMin;
    g_sb3dWorldAudioInfo.distanceMax = distanceMax;
}


//dopplerValueEntityToEntity(camBox0, shipTest, dt, 0.005f, 0.1f, 1000.0f);
//entityAudio(camBox0, shipTest, 1.0f, 0.1f, 1000.0f, &pan, &volume);

void sb3dWorldAudioDefaults(void){
    sb3dWorldAudioSetup(0.005f, 1.0f, 0.01f, 1000.0f);
}


void sb3dAudioInfoSetup(SB3DAudioInfo *info, float dopplerStrength, float panStrength, float distanceMin, float distanceMax)
{
    if (!info) return;

    if (dopplerStrength < 0.0f) dopplerStrength = 0.0f;
    if (panStrength < 0.0f) panStrength = 0.0f;
    if (panStrength > 1.0f) panStrength = 1.0f;
    if (distanceMin < 0.0f) distanceMin = 0.0f;
    if (distanceMax < distanceMin) distanceMax = distanceMin;

    info->dopplerStrength = dopplerStrength;
    info->panStrength = panStrength;
    info->distanceMin = distanceMin;
    info->distanceMax = distanceMax;
}



float dopplerValueEntityToEntity(int idA, int idB, float deltaTime, float strength, float distanceMin, float distanceMax)
{
    Vec3 relPrev;
    Vec3 relCurr;
    Vec3 relVel;
    float distCurr;
    float invDist;
    float radialSpeed;
    float distFade;
    float x;
    float out;

    if (!entityIdValid(idA)) return 0.0f;
    if (!entityIdValid(idB)) return 0.0f;
    if (deltaTime <= 0.000001f) return 0.0f;

    if (strength < 0.0f) strength = 0.0f;
    if (distanceMin < 0.0f) distanceMin = 0.0f;
    if (distanceMax < distanceMin) distanceMax = distanceMin;

    /* current relative position: A -> B */
    relCurr.x = worldEntities[idB].pos.x - worldEntities[idA].pos.x;
    relCurr.y = worldEntities[idB].pos.y - worldEntities[idA].pos.y;
    relCurr.z = worldEntities[idB].pos.z - worldEntities[idA].pos.z;

    /* previous relative position: A -> B */
    relPrev.x = worldEntities[idB].prevPos.x - worldEntities[idA].prevPos.x;
    relPrev.y = worldEntities[idB].prevPos.y - worldEntities[idA].prevPos.y;
    relPrev.z = worldEntities[idB].prevPos.z - worldEntities[idA].prevPos.z;

    distCurr = sqrtf(
        (relCurr.x * relCurr.x) +
        (relCurr.y * relCurr.y) +
        (relCurr.z * relCurr.z)
    );

    if (distCurr <= 0.000001f) return 0.0f;

    /* relative velocity */
    relVel.x = (relCurr.x - relPrev.x) / deltaTime;
    relVel.y = (relCurr.y - relPrev.y) / deltaTime;
    relVel.z = (relCurr.z - relPrev.z) / deltaTime;

    invDist = 1.0f / distCurr;

    /* radial speed: +ve = moving apart, -ve = moving closer */
    radialSpeed =
        (relVel.x * relCurr.x * invDist) +
        (relVel.y * relCurr.y * invDist) +
        (relVel.z * relCurr.z * invDist);

    /* flip sign so approaching = positive */
    radialSpeed = -radialSpeed;

    if (distanceMax <= distanceMin) {
        distFade = 1.0f;
    } else if (distCurr <= distanceMin) {
        distFade = 1.0f;
    } else if (distCurr >= distanceMax) {
        distFade = 0.0f;
    } else {
        float t;

        t = (distCurr - distanceMin) / (distanceMax - distanceMin);
        distFade = 1.0f - t;
        distFade = distFade * distFade;
    }

    /* soft compression instead of brutal clamp */
    x = radialSpeed * strength * distFade;

    out = x / (1.0f + fabsf(x));

    if (out < -1.0f) out = -1.0f;
    if (out >  1.0f) out =  1.0f;

    return out;
}


void entityAudio(int listenerId, int sourceId, float panStrength, float distanceMin, float distanceMax, float *pan, float *volume)
{
    Entity *listener;
    Entity *source;

    float dx, dz;
    float dist2;
    float len;
    float invLen;
    float outPan;
    float outVol;

    if (pan)    *pan = 0.0f;
    if (volume) *volume = 0.0f;

    if (!entityIdValid(listenerId)) return;
    if (!entityIdValid(sourceId)) return;

    if (panStrength < 0.0f) panStrength = 0.0f;
    if (panStrength > 1.0f) panStrength = 1.0f;

    if (distanceMin < 0.0f) distanceMin = 0.0f;
    if (distanceMax < distanceMin) distanceMax = distanceMin;

    listener = &worldEntities[listenerId];
    source   = &worldEntities[sourceId];

    dx = source->pos.x - listener->pos.x;
    dz = source->pos.z - listener->pos.z;

    dist2 = (dx * dx) + (dz * dz);

    if (distanceMax > distanceMin) {
        float max2 = distanceMax * distanceMax;
        if (dist2 >= max2) {
            if (pan)    *pan = 0.0f;
            if (volume) *volume = 0.0f;
            return;
        }
    }

    if (dist2 <= 0.000001f) {
        outPan = 0.0f;
        outVol = 1.0f;
    } else {
        float nx, nz;

        len = sqrtf(dist2);
        invLen = 1.0f / len;

        nx = dx * invLen;
        nz = dz * invLen;

        outPan = (nx * listener->right.x) + (nz * listener->right.z);

        if (outPan < -1.0f) outPan = -1.0f;
        if (outPan >  1.0f) outPan =  1.0f;

        outPan *= panStrength;

        if (distanceMax <= distanceMin || len <= distanceMin) {
            outVol = 1.0f;
        } else {
            float t = (len - distanceMin) / (distanceMax - distanceMin);
            outVol = 1.0f - t;
            outVol = outVol * outVol;
        }
    }

    if (pan)    *pan = outPan;
    if (volume) *volume = outVol;
}



SB3DAudioData sb3dEntityAudioInfo(int listenerId, int sourceId, float deltaTime, const SB3DAudioInfo *info)
{
    SB3DAudioData out;
    const SB3DAudioInfo *cfg;

    out.doppler = 0.0f;
    out.pan = 0.0f;
    out.volume = 0.0f;

    if (!entityIdValid(listenerId)) return out;
    if (!entityIdValid(sourceId)) return out;

    cfg = info ? info : &g_sb3dWorldAudioInfo;

    out.doppler = dopplerValueEntityToEntity(
        listenerId,
        sourceId,
        deltaTime,
        cfg->dopplerStrength,
        cfg->distanceMin,
        cfg->distanceMax
    );

    entityAudio(
        listenerId,
        sourceId,
        cfg->panStrength,
        cfg->distanceMin,
        cfg->distanceMax,
        &out.pan,
        &out.volume
    );

    return out;
}

SB3DAudioData sb3dEntityAudioInfoDefault(int listenerId, int sourceId, float deltaTime)
{
    return sb3dEntityAudioInfo(listenerId, sourceId, deltaTime, &g_sb3dWorldAudioInfo);
}