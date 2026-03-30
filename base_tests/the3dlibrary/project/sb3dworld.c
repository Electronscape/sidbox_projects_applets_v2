#include <stdint.h>
#include <string.h>

#include "sb3d.h"


Entity align32 worldEntities[WORLD_MAX];

void worldClear(void){
    memset(worldEntities, 0, sizeof(worldEntities));
    // should really clear everything, lights, camera, action !!
    lightsClear();
    sb3dParticlesClear();  
    initClipScratch();

    // reset audio
    sb3dWorldAudioDefaults();
    
}