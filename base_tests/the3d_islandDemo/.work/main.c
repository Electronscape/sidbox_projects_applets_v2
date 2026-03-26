#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_LINE_LEN   1024
#define MAX_FACE_VERTS 64
#define MAX_MATERIALS  256


/*   /// BLENDER MAPPING ///
Ka -> Metallic   -> ambient (sadly this is the better way for engine FOR NOW)
d  -> Alpha      -> transparency
Ks -> Specular   -> specularStrength
Ni -> IOR        -> diffuse   // if you want to use it that way
Ke -> Emission   -> emissive
Ns -> Roughness  -> shininess
*/

typedef struct {
    float x;
    float y;
    float z;
} Vec3File;

typedef struct {
    uint32_t a;
    uint32_t b;
    uint32_t c;
    uint16_t materialIndex;
} TriFile;

typedef struct {
    char     name[256];
    uint8_t  color;
    uint8_t  transparency;
    uint8_t  active;
    uint8_t  _pad0;

    float ambient;
    float diffuse;
    float specularStrength;
    float shininess;
    float emissive;
} MaterialInfo;




/// @brief  a copy from the engine for reference //
typedef struct align32 {
    uint8_t color;          // palette index
    uint8_t transparency;   // 0..255
    uint8_t active;         // active, so if freed using EntityFreeMaterials, (basically clear the materials off the material)
    uint8_t _pad0;

    float ambient;          // 0.0 .. 1.0
    float diffuse;          // 0.0 .. 2.0
    float specularStrength; // 0.0 .. 2.0
    float shininess;        // 4, 8, 16, 32 ...
    float emissive;         // 0.0 .. 1.0  
} Material;








static float clamp01(float v)
{
    if (v < 0.0f) return 0.0f;
    if (v > 1.0f) return 1.0f;
    return v;
}

static float clamp02(float v)
{
    if (v < 0.0f) return 0.0f;
    if (v > 2.0f) return 2.0f;
    return v;
}

static uint8_t alpha_to_transparency(float d)
{
    d = clamp01(d);
    return (uint8_t)((1.0f - d) * 255.0f + 0.5f);
}

static float rgb_max(float r, float g, float b)
{
    float v = r;
    if (g > v) v = g;
    if (b > v) v = b;
    return v;
}

/* Ns is carrying roughness in your pipeline, not classic MTL shininess */
static float roughness_to_shininess(float ns)
{
    
    ns = clamp01(ns/1000.0);
    printf("ns: %f::::", ns);

    if (ns <  0.25f) return 0.0f;
    if (ns >= 0.75f) return 4.0f;
    if (ns >= 0.50f) return 8.0f;
    if (ns >= 0.25f) return 16.0f;
    return 32.0f;
}









static int has_obj_extension(const char *filename)
{
    const char *dot;

    if (!filename) return 0;

    dot = strrchr(filename, '.');
    if (!dot) return 0;

    return (strcmp(dot, ".obj") == 0);
}

static int build_output_name(const char *input, char *output, size_t outputSize)
{
    const char *dot;
    size_t baseLen;

    if (!input || !output || outputSize == 0) return 0;

    dot = strrchr(input, '.');
    if (!dot) return 0;

    baseLen = (size_t)(dot - input);

    if (baseLen + 6 > outputSize) return 0; /* ".sb3d" + nul */

    memcpy(output, input, baseLen);
    memcpy(output + baseLen, ".sb3d", 6);

    return 1;
}

static int build_path_from_obj(const char *objPath, const char *fileName, char *outPath, size_t outPathSize)
{
    const char *slash1;
    const char *slash2;
    const char *slash;
    size_t dirLen;
    size_t fileLen;

    if (!objPath || !fileName || !outPath || outPathSize == 0) return 0;

    slash1 = strrchr(objPath, '/');
    slash2 = strrchr(objPath, '\\');
    slash = slash1;

    if (slash2 && (!slash1 || slash2 > slash1)) {
        slash = slash2;
    }

    if (!slash) {
        fileLen = strlen(fileName);
        if (fileLen + 1 > outPathSize) return 0;
        memcpy(outPath, fileName, fileLen + 1);
        return 1;
    }

    dirLen = (size_t)(slash - objPath + 1);
    fileLen = strlen(fileName);

    if (dirLen + fileLen + 1 > outPathSize) return 0;

    memcpy(outPath, objPath, dirLen);
    memcpy(outPath + dirLen, fileName, fileLen + 1);

    return 1;
}


static int find_material(MaterialInfo *materials, int materialCount, const char *name)
{
    int i;

    for (i = 0; i < materialCount; i++) {
        if (strcmp(materials[i].name, name) == 0) {
            return i;
        }
    }

    return -1;
}

static int parse_sbx_material_name(
    const char *name,
    uint8_t *outColor
)
{
    const char *p;
    char *endptr;
    long colorVal;

    if (!name || !outColor) return 0;
    if (strncmp(name, "SBX_", 4) != 0) return 0;

    p = name + 4;

    colorVal = strtol(p, &endptr, 10);
    if (endptr == p) return 0;
    if (colorVal < 0 || colorVal > 255) return 0;

    *outColor = (uint8_t)colorVal;
    return 1;
}


static int load_mtl_file(const char *mtlPath, MaterialInfo *materials, int *materialCount)
{
    FILE *fp;
    char line[MAX_LINE_LEN];
    int current = -1;

    if (!mtlPath || !materials || !materialCount) return 0;

    fp = fopen(mtlPath, "r");
    if (!fp) {
        return 0;
    }

    *materialCount = 0;

    while (fgets(line, sizeof(line), fp)) {
        if (strncmp(line, "newmtl ", 7) == 0) {
            char name[256];

            /* print previous material before starting next one */
            if (current >= 0) {
                printf("MAT %-24s col=%3u tr=%3u amb=%.3f diff=%.3f spec=%.3f shiny=%.3f emis=%.3f\n",
                    materials[current].name,
                    materials[current].color,
                    materials[current].transparency,
                    materials[current].ambient,
                    materials[current].diffuse,
                    materials[current].specularStrength,
                    materials[current].shininess,
                    materials[current].emissive);
            }

            if (sscanf(line + 7, "%255s", name) == 1) {
                if (*materialCount >= MAX_MATERIALS) {
                    fclose(fp);
                    return 0;
                }

                current = *materialCount;
                memset(&materials[current], 0, sizeof(MaterialInfo));

                strncpy(materials[current].name, name, sizeof(materials[current].name) - 1);
                materials[current].name[sizeof(materials[current].name) - 1] = '\0';

                materials[current].color = 32;
                materials[current].transparency = 0;
                materials[current].active = 1;
                materials[current]._pad0 = 0;

                materials[current].ambient = 0.0f;
                materials[current].diffuse = 1.0f;
                materials[current].specularStrength = 0.0f;
                materials[current].shininess = 8.0f;
                materials[current].emissive = 0.0f;

                parse_sbx_material_name(materials[current].name, &materials[current].color);

                (*materialCount)++;
            }
        }
        else if (current >= 0) {
            float r, g, b;
            float v;

            if (strncmp(line, "Ka ", 3) == 0) {
                if (sscanf(line + 3, "%f %f %f", &r, &g, &b) == 3) {
                    materials[current].ambient = clamp01(rgb_max(r, g, b));
                }
            }
            else if (strncmp(line, "Ks ", 3) == 0) {
                if (sscanf(line + 3, "%f %f %f", &r, &g, &b) == 3) {
                    materials[current].specularStrength = clamp02(rgb_max(r, g, b));
                }
            }
            else if (strncmp(line, "Ke ", 3) == 0) {
                if (sscanf(line + 3, "%f %f %f", &r, &g, &b) == 3) {
                    materials[current].emissive = clamp01(rgb_max(r, g, b));
                }
            }
            else if (strncmp(line, "d ", 2) == 0) {
                if (sscanf(line + 2, "%f", &v) == 1) {
                    materials[current].transparency = alpha_to_transparency(v);
                }
            }
            else if (strncmp(line, "Tr ", 3) == 0) {
                if (sscanf(line + 3, "%f", &v) == 1) {
                    v = 1.0f - v;
                    materials[current].transparency = alpha_to_transparency(v);
                }
            }
            else if (strncmp(line, "Ni ", 3) == 0) {
                if (sscanf(line + 3, "%f", &v) == 1) {
                    materials[current].diffuse = clamp02(v);
                }
            }
            else if (strncmp(line, "Ns ", 3) == 0) {
                if (sscanf(line + 3, "%f", &v) == 1) {
                    materials[current].shininess = roughness_to_shininess(v);
                }
            }
        }
    }

    /* print final material */
    if (current >= 0) {
        printf("MAT %-24s col=%3u tr=%3u amb=%.3f diff=%.3f spec=%.3f shiny=%.3f emis=%.3f\n",
            materials[current].name,
            materials[current].color,
            materials[current].transparency,
            materials[current].ambient,
            materials[current].diffuse,
            materials[current].specularStrength,
            materials[current].shininess,
            materials[current].emissive);
    }

    fclose(fp);
    return 1;
}

static int load_materials_from_obj(const char *objPath, MaterialInfo *materials, int *materialCount)
{
    FILE *fp;
    char line[MAX_LINE_LEN];
    char mtlName[256];
    char mtlPath[1024];

    if (!objPath || !materials || !materialCount) return 0;

    *materialCount = 0;

    fp = fopen(objPath, "r");
    if (!fp) {
        return 0;
    }

    while (fgets(line, sizeof(line), fp)) {
        if (strncmp(line, "mtllib ", 7) == 0) {
            if (sscanf(line + 7, "%255s", mtlName) == 1) {
                fclose(fp);

                if (!build_path_from_obj(objPath, mtlName, mtlPath, sizeof(mtlPath))) {
                    return 0;
                }

                return load_mtl_file(mtlPath, materials, materialCount);
            }
        }
    }

    fclose(fp);
    return 1; /* no mtllib is fine */
}




static int count_obj(FILE *fp, uint32_t *vertCount, uint32_t *triCount)
{
    char line[MAX_LINE_LEN];

    *vertCount = 0;
    *triCount  = 0;

    while (fgets(line, sizeof(line), fp)) {
        if (line[0] == 'v' && line[1] == ' ') {
            (*vertCount)++;
        }
        else if (line[0] == 'f' && line[1] == ' ') {
            uint32_t faceVerts = 0;
            char *p = line + 2;

            while (*p) {
                while (*p == ' ' || *p == '\t') {
                    p++;
                }

                if (*p == '\0' || *p == '\r' || *p == '\n') {
                    break;
                }

                faceVerts++;

                while (*p && *p != ' ' && *p != '\t' && *p != '\r' && *p != '\n') {
                    p++;
                }
            }

            if (faceVerts >= 3) {
                *triCount += (faceVerts - 2);
            }
        }
    }

    return (*vertCount > 0 && *triCount > 0);
}

static int parse_obj(
    FILE *fp,
    Vec3File *verts,
    uint32_t vertCapacity,
    TriFile *tris,
    uint32_t triCapacity,
    MaterialInfo *materials,
    int materialCount
)
{
    char line[MAX_LINE_LEN];
    uint32_t vi = 0;
    uint32_t ti = 0;
    uint16_t currentMaterialIndex = 0;

    while (fgets(line, sizeof(line), fp)) {
        if (line[0] == 'v' && line[1] == ' ') {
            float x, y, z;

            if (sscanf(line + 2, "%f %f %f", &x, &y, &z) == 3) {
                if (vi >= vertCapacity) {
                    fprintf(stderr, "ERROR: vertex overflow while parsing\n");
                    return 0;
                }

                verts[vi].x = x;
                verts[vi].y = y;
                verts[vi].z = -z;
                vi++;
            }
        }
        else if (strncmp(line, "usemtl ", 7) == 0) {
            char matName[256];
            int matIndex;

            matName[0] = '\0';

            if (sscanf(line + 7, "%255s", matName) == 1) {
                matIndex = find_material(materials, materialCount, matName);

                if (matIndex >= 0) {
                    currentMaterialIndex = (uint16_t)matIndex;
                } else {
                    currentMaterialIndex = 0;
                }
            }
        }
        else if (line[0] == 'f' && line[1] == ' ') {
            int idx[MAX_FACE_VERTS];
            int n = 0;
            char *saveptr = NULL;
            char *tok = strtok_r(line + 2, " \t\r\n", &saveptr);

            while (tok && n < MAX_FACE_VERTS) {
                long vIndex = strtol(tok, NULL, 10);
                idx[n++] = (int)vIndex;
                tok = strtok_r(NULL, " \t\r\n", &saveptr);
            }

            if (n >= 3) {
                int a0 = idx[0] - 1;

                for (int k = 1; k < n - 1; k++) {
                    int a1 = idx[k] - 1;
                    int a2 = idx[k + 1] - 1;

                    if (a0 < 0 || a1 < 0 || a2 < 0) {
                        fprintf(stderr, "ERROR: negative/invalid OBJ index not supported\n");
                        return 0;
                    }

                    if ((uint32_t)a0 >= vertCapacity ||
                        (uint32_t)a1 >= vertCapacity ||
                        (uint32_t)a2 >= vertCapacity) {
                        fprintf(stderr, "ERROR: face index out of range\n");
                        return 0;
                    }

                    if (ti >= triCapacity) {
                        fprintf(stderr, "ERROR: triangle overflow while parsing\n");
                        return 0;
                    }

                    tris[ti].a = (uint32_t)a0;
                    tris[ti].b = (uint32_t)a2;
                    tris[ti].c = (uint32_t)a1;
                    tris[ti].materialIndex = currentMaterialIndex;
                    ti++;
                }
            }
        }
    }

    if (vi != vertCapacity) {
        fprintf(stderr, "ERROR: parsed vertex count mismatch (%u vs %u)\n",
                (unsigned)vi, (unsigned)vertCapacity);
        return 0;
    }

    if (ti != triCapacity) {
        fprintf(stderr, "ERROR: parsed triangle count mismatch (%u vs %u)\n",
                (unsigned)ti, (unsigned)triCapacity);
        return 0;
    }

    return 1;
}



static int write_sb3d(
    const char *filename,
    const Vec3File *verts,
    uint32_t vertCount,
    const TriFile *tris,
    uint32_t triCount,
    const MaterialInfo *materials,
    uint32_t materialCount
)
{
    FILE *fp;
    const char magic[4] = { 'S', 'B', '3', 'D' };
    uint32_t version = 4;

    fp = fopen(filename, "wb");
    if (!fp) {
        fprintf(stderr, "ERROR: could not open output file '%s'\n", filename);
        return 0;
    }

    if (fwrite(magic, 1, 4, fp) != 4) goto write_fail;
    if (fwrite(&version, sizeof(version), 1, fp) != 1) goto write_fail;
    if (fwrite(&vertCount, sizeof(vertCount), 1, fp) != 1) goto write_fail;
    if (fwrite(&triCount, sizeof(triCount), 1, fp) != 1) goto write_fail;
    if (fwrite(&materialCount, sizeof(materialCount), 1, fp) != 1) goto write_fail;

    if (vertCount > 0) {
        if (fwrite(verts, sizeof(Vec3File), vertCount, fp) != vertCount) goto write_fail;
    }

    if (materialCount > 0) {
        for (uint32_t i = 0; i < materialCount; i++) {
            const MaterialInfo *m = &materials[i];

            if (fwrite(&m->color, sizeof(uint8_t), 1, fp) != 1) goto write_fail;
            if (fwrite(&m->transparency, sizeof(uint8_t), 1, fp) != 1) goto write_fail;
            if (fwrite(&m->active, sizeof(uint8_t), 1, fp) != 1) goto write_fail;
            if (fwrite(&m->_pad0, sizeof(uint8_t), 1, fp) != 1) goto write_fail;

            if (fwrite(&m->ambient, sizeof(float), 1, fp) != 1) goto write_fail;
            if (fwrite(&m->diffuse, sizeof(float), 1, fp) != 1) goto write_fail;
            if (fwrite(&m->specularStrength, sizeof(float), 1, fp) != 1) goto write_fail;
            if (fwrite(&m->shininess, sizeof(float), 1, fp) != 1) goto write_fail;
            if (fwrite(&m->emissive, sizeof(float), 1, fp) != 1) goto write_fail;
        }
    }

    if (triCount > 0) {
        for (uint32_t i = 0; i < triCount; i++) {
            if (fwrite(&tris[i].a, sizeof(uint32_t), 1, fp) != 1) goto write_fail;
            if (fwrite(&tris[i].b, sizeof(uint32_t), 1, fp) != 1) goto write_fail;
            if (fwrite(&tris[i].c, sizeof(uint32_t), 1, fp) != 1) goto write_fail;
            if (fwrite(&tris[i].materialIndex, sizeof(uint16_t), 1, fp) != 1) goto write_fail;
        }
    }

    fclose(fp);
    return 1;

write_fail:
    fprintf(stderr, "ERROR: failed while writing '%s'\n", filename);
    fclose(fp);
    return 0;
}


int main(int argc, char *argv[])
{
    const char *inputName;
    char outputName[1024];
    FILE *fp;
    Vec3File *verts = NULL;
    TriFile *tris = NULL;
    MaterialInfo materials[MAX_MATERIALS];
    uint32_t vertCount = 0;
    uint32_t triCount = 0;
    int materialCount = 0;
    int ok = 0;

    if (argc != 2) {
        fprintf(stderr, "Usage: %s file.obj\n", argv[0]);
        return 1;
    }

    inputName = argv[1];

    if (!has_obj_extension(inputName)) {
        fprintf(stderr, "ERROR: input must be a .obj file\n");
        return 1;
    }

    if (!build_output_name(inputName, outputName, sizeof(outputName))) {
        fprintf(stderr, "ERROR: could not build output filename\n");
        return 1;
    }

    if (!load_materials_from_obj(inputName, materials, &materialCount)) {
        fprintf(stderr, "ERROR: could not load MTL data\n");
        return 1;
    }

    if (materialCount <= 0) {
        fprintf(stderr, "ERROR: no materials found in MTL\n");
        return 1;
    }

    fp = fopen(inputName, "r");
    if (!fp) {
        fprintf(stderr, "ERROR: could not open input file '%s'\n", inputName);
        return 1;
    }

    if (!count_obj(fp, &vertCount, &triCount)) {
        fprintf(stderr, "ERROR: failed to count vertices/triangles or file is empty\n");
        fclose(fp);
        return 1;
    }

    rewind(fp);

    verts = (Vec3File *)malloc(sizeof(Vec3File) * vertCount);
    tris  = (TriFile  *)malloc(sizeof(TriFile)  * triCount);

    if (!verts || !tris) {
        fprintf(stderr, "ERROR: out of memory\n");
        fclose(fp);
        free(verts);
        free(tris);
        return 1;
    }

    if (!parse_obj(fp, verts, vertCount, tris, triCount, materials, materialCount)) {
        fclose(fp);
        free(verts);
        free(tris);
        return 1;
    }

    fclose(fp);

    ok = write_sb3d(
        outputName,
        verts,
        vertCount,
        tris,
        triCount,
        materials,
        (uint32_t)materialCount
    );

    if (!ok) {
        free(verts);
        free(tris);
        return 1;
    }

    printf("Input : %s\n", inputName);
    printf("Output: %s\n", outputName);
    printf("Verts : %u\n", (unsigned)vertCount);
    printf("Tris  : %u\n", (unsigned)triCount);
    printf("Mats  : %d\n", materialCount);
    printf("END OF PROGRAM!\n");

    free(verts);
    free(tris);
    return 0;
}