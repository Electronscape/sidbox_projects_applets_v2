#ifndef _SIDBOX_3D_LIB_H_
#define _SIDBOX_3D_LIB_H_

#include "apis.h"
#include "sb3dmath.h"
#include "sb3dcamera.h"

#include "sb3dmaterial.h"

#include "sb3dworld.h"
#include "sb3dlights.h"
#include "sb3dentity.h"
#include "sb3dparticles.h"


#include "sb3drender.h"


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


int sb3dRaycastFromCamera(const Camera *cam, float maxDist, SB3DRaycastHit *outHit);
int sb3dRaycastWorld(Vec3 rayOrig, Vec3 rayDir, float maxDist, SB3DRaycastHit *outHit);

void entityAlignToHit(int id, const SB3DRaycastHit *hit);

#endif