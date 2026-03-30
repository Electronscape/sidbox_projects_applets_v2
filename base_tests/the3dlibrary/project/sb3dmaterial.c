#include <stdint.h>
#include <stdlib.h>
#include <math.h>


#include "sb3d.h"





void meshSetDefaultMaterial(Mesh *mesh)
{
    if (!mesh) return;

    mesh->material.ambient          = MAT_DEFAULT_AMBIENT;
    mesh->material.diffuse          = MAT_DEFAULT_DIFFUSE;
    mesh->material.emissive         = MAT_DEFAULT_EMISSIVE;
    mesh->material.specularStrength = MAT_DEFAULT_SPECULAR;    // specular >0.0f enables per triangle shininess control
    mesh->material.shininess        = MAT_DEFAULT_SHININESS;     // specular needs to be > 0.0f to work shininess
}

void meshSetMaterial(
    Mesh *mesh,
    float ambient,
    float diffuse,
    float emissive,
    float specularStrength,
    float shininess
)
{
    if (!mesh) return;

    mesh->material.ambient          = ambient;
    mesh->material.diffuse          = diffuse;
    mesh->material.emissive         = emissive;
    mesh->material.specularStrength = specularStrength;
    mesh->material.shininess        = shininess;
}
