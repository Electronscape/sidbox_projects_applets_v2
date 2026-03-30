// file: loader.c

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>


#include "3dloader.h"
#include "sb3d.h"


#if(0) // we're not using OBJ for 3D engine side, For now
int loadMeshOBJ(const char *filename, Mesh *mesh, uint8_t colour, float scale)
{
    FILE *fp;
    char line[512];

    int vertCount = 0;
    int triCount = 0;

    if (!filename || !mesh) return 0;

    fp = fopen(filename, "r");
    if (!fp) {
        return 0;
    }

    /* ---------- pass 1: count verts + tris ---------- */
    while (fgets(line, sizeof(line), fp)) {
        if (line[0] == 'v' && line[1] == ' ') {
            vertCount++;
        }
        else if (line[0] == 'f' && line[1] == ' ') {
            int faceVerts = 0;
            char *p = line + 2;

            while (*p) {
                while (*p == ' ' || *p == '\t') p++;
                if (*p == '\0' || *p == '\n' || *p == '\r') break;

                faceVerts++;

                while (*p && *p != ' ' && *p != '\t' && *p != '\n' && *p != '\r') {
                    p++;
                }
            }

            if (faceVerts >= 3) {
                triCount += (faceVerts - 2); /* fan triangulate */
            }
        }
    }

    if (vertCount <= 0 || triCount <= 0) {
        fclose(fp);
        return 0;
    }

    mesh->vertCount = vertCount;
    mesh->triCount  = triCount;
    mesh->edgeCount = 0;

    mesh->verts = malloc(sizeof(Vec3) * mesh->vertCount);
    mesh->tris  = malloc(sizeof(Tri)  * mesh->triCount);
    mesh->edges = NULL;

    if (!mesh->verts || !mesh->tris) {
        if (mesh->verts) free(mesh->verts);
        if (mesh->tris)  free(mesh->tris);
        mesh->verts = NULL;
        mesh->tris  = NULL;
        mesh->vertCount = 0;
        mesh->triCount  = 0;
        fclose(fp);
        return 0;
    }

    rewind(fp);

    /* ---------- pass 2: fill verts + tris ---------- */
    {
        int vi = 0;
        int ti = 0;
        uint8_t currentColour = colour;

        while (fgets(line, sizeof(line), fp)) {
            if (line[0] == 'v' && line[1] == ' ') {
                float bx, by, bz;

                if (sscanf(line + 2, "%f %f %f", &bx, &by, &bz) == 3) {
                    /* Blender export already set to match engine:
                       X right, Y up, Z forward
                    */
                    mesh->verts[vi].x = bx * scale;
                    mesh->verts[vi].y = by * scale;
                    mesh->verts[vi].z = -bz * scale;
                    vi++;
                }
            }
            else if (strncmp(line, "usemtl ", 7) == 0) {
                char matName[128];
                int parsedColour;

                matName[0] = '\0';

                if (sscanf(line + 7, "%127s", matName) == 1) {
                    /* expected names like: SBX_32 */
                    if (strncmp(matName, "SBX_", 4) == 0) {
                        parsedColour = atoi(matName + 4);
                        if (parsedColour >= 0 && parsedColour <= 255) {
                            currentColour = (uint8_t)parsedColour;
                        }
                    }
                }
            }
            else if (line[0] == 'f' && line[1] == ' ') {
                int idx[32];
                int n = 0;

                char *saveptr = NULL;
                char *tok = strtok_r(line + 2, " \t\r\n", &saveptr);

                while (tok && n < 32) {
                    /* parse first integer before any slash */
                    idx[n] = (int)strtol(tok, NULL, 10);
                    n++;
                    tok = strtok_r(NULL, " \t\r\n", &saveptr);
                }

                if (n >= 3) {
                    /* OBJ indices are 1-based */
                    int a0 = idx[0] - 1;

                    for (int k = 1; k < n - 1; k++) {
                        int a1 = idx[k]     - 1;
                        int a2 = idx[k + 1] - 1;

                        if (a0 < 0 || a0 >= mesh->vertCount) continue;
                        if (a1 < 0 || a1 >= mesh->vertCount) continue;
                        if (a2 < 0 || a2 >= mesh->vertCount) continue;

                        mesh->tris[ti].a = a0;
                        mesh->tris[ti].b = a2;
                        mesh->tris[ti].c = a1;
                        mesh->tris[ti].color = currentColour;
                        mesh->tris[ti].emission = 0;
                        ti++;
                    }
                }
            }
        }

        mesh->triCount = ti;
    }

    fclose(fp);

    mesh->boundsRadius = meshComputeBoundsRadius(mesh);
    meshSetDefaultMaterial(mesh);

    return 1;
}

#endif 


#define SIDBOX_MESH_FILE_VERSION    5


int loadMeshSB3D(const char *filename, Mesh *mesh, float scale)
{
    FRESULT res;
    int32_t ird;

    char magic[4];
    uint32_t version;
    uint32_t vertCount;
    uint32_t triCount;

    typedef struct {
        float x;
        float y;
        float z;
    } SB3DVec3File;

    if (!filename || !mesh) return 0;

    memset(mesh, 0, sizeof(Mesh));

    res = sfopen(0, filename, SD_READ);
    if (res != FR_OK) {
        return 0;
    }

    if (sfread(0, magic, 4, &ird) != FR_OK || ird != 4) {
        fclose(0);
        return 0;
    }

    if (memcmp(magic, "SB3D", 4) != 0) {
        fclose(0);
        return 0;
    }

    if (sfread(0, &version, 4, &ird) != FR_OK || ird != 4) {
        fclose(0);
        return 0;
    }

    if (version != SIDBOX_MESH_FILE_VERSION) { 
        fclose(0);
        return 0;
    }

    if (sfread(0, &vertCount, 4, &ird) != FR_OK || ird != 4) {
        fclose(0);
        return 0;
    }

    if (sfread(0, &triCount, 4, &ird) != FR_OK || ird != 4) {
        fclose(0);
        return 0;
    }

    if (vertCount == 0 || triCount == 0) {
        fclose(0);
        return 0;
    }

    mesh->vertCount = (int)vertCount;
    mesh->triCount  = (int)triCount;
    mesh->edgeCount = 0;

    mesh->verts = malloc(sizeof(Vec3) * mesh->vertCount);
    mesh->tris  = malloc(sizeof(Tri)  * mesh->triCount);
    mesh->edges = NULL;

    if (!mesh->verts || !mesh->tris) {
        freeMesh(mesh);
        fclose(0);
        return 0;
    }

    /* read vertices */
    for (uint32_t i = 0; i < vertCount; i++) {
        SB3DVec3File v;

        if (sfread(0, &v, sizeof(SB3DVec3File), &ird) != FR_OK ||
            ird != (int32_t)sizeof(SB3DVec3File))
        {
            freeMesh(mesh);
            fclose(0);
            return 0;
        }

        mesh->verts[i].x = v.x * scale;
        mesh->verts[i].y = v.y * scale;
        mesh->verts[i].z = v.z * scale;
    }

    /* read triangles */
    for (uint32_t i = 0; i < triCount; i++) {
        uint32_t a, b, c;
        uint8_t flags;
        uint8_t color;
        uint8_t emission;
        uint8_t transparency;
        uint8_t roughness;

        if (sfread(0, &a, sizeof(uint32_t), &ird) != FR_OK ||
            ird != (int32_t)sizeof(uint32_t))
        {
            freeMesh(mesh);
            fclose(0);
            return 0;
        }

        if (sfread(0, &b, sizeof(uint32_t), &ird) != FR_OK ||
            ird != (int32_t)sizeof(uint32_t))
        {
            freeMesh(mesh);
            fclose(0);
            return 0;
        }

        if (sfread(0, &c, sizeof(uint32_t), &ird) != FR_OK ||
            ird != (int32_t)sizeof(uint32_t))
        {
            freeMesh(mesh);
            fclose(0);
            return 0;
        }

        // packed colour info (high nibble, flags, low nibble colour index 0-15)
        if (sfread(0, &color, sizeof(uint8_t), &ird) != FR_OK ||
            ird != (int32_t)sizeof(uint8_t))
        {
            freeMesh(mesh);
            fclose(0);
            return 0;
        }

        if (sfread(0, &emission, sizeof(uint8_t), &ird) != FR_OK ||
            ird != (int32_t)sizeof(uint8_t))
        {
            freeMesh(mesh);
            fclose(0);
            return 0;
        }

        if (sfread(0, &transparency, sizeof(uint8_t), &ird) != FR_OK ||
            ird != (int32_t)sizeof(uint8_t))
        {
            freeMesh(mesh);
            fclose(0);
            return 0;
        }

        if (sfread(0, &roughness, sizeof(uint8_t), &ird) != FR_OK ||
            ird != (int32_t)sizeof(uint8_t))
        {
            freeMesh(mesh);
            fclose(0);
            return 0;
        }

        if (a >= vertCount || b >= vertCount || c >= vertCount) {
            freeMesh(mesh);
            fclose(0);
            return 0;
        }

        mesh->tris[i].a = (int)a;
        mesh->tris[i].b = (int)b;
        mesh->tris[i].c = (int)c;
        mesh->tris[i].color = color;//(uint8_t)(color & TRI_COLOUR_MASK);
        mesh->tris[i].emission = emission;
        mesh->tris[i].transparency = transparency;
        mesh->tris[i].roughness    = roughness; /// NOTE: the file is the inverse. at file convert time (255-roughness_output)
    }

    fclose(0);

    mesh->boundsRadius = meshComputeBoundsRadius(mesh);
    meshSetDefaultMaterial(mesh);

    return 1;
}    


