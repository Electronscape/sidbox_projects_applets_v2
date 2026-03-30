#ifndef _SIDBOX_3D_AUDIO_MGR_H_
#define _SIDBOX_3D_AUDIO_MGR_H_


#include <stdint.h>

//// this is all here mainly to HELP keep audio stuff together


typedef struct {
    float dopplerStrength;
    float panStrength;
    float distanceMin;
    float distanceMax;
} SB3DAudioInfo;


typedef struct {
    float doppler;  // effect on the doppler results
    float pan;      // effect pan results
    float volume;   // effect volule result
    float _pad;
} SB3DAudioData;


// used if you just want to use the world audio info
void sb3dWorldAudioSetup(float dopplerStrength, float panStrength, float distanceMin, float distanceMax);
void sb3dAudioInfoSetup(SB3DAudioInfo *info, float dopplerStrength, float panStrength, float distanceMin, float distanceMax);

SB3DAudioData sb3dEntityAudioInfo(int listenerId, int sourceId, float deltaTime, const SB3DAudioInfo *info);
SB3DAudioData sb3dEntityAudioInfoDefault(int listenerId, int sourceId, float deltaTime);


#endif