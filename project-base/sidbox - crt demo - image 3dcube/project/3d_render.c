#include <stdint.h>
#include <math.h>
#include "apis.h" // Assuming this contains API_CRT_WIDTH / API_CRT_HEIGHT

// 3D Vector and 2D Screen Point structures

typedef struct { 
    uint8_t v0, v1, v2, v3; 
    uint8_t colour; 
} face_t;

typedef struct { float x, y, z; } vec3_t;
typedef struct { int16_t x, y; } vec2_t;
typedef struct { uint8_t v0, v1; } edge_t;



#define PI_FLOAT 3.14159265f
#define TWO_PI_FLOAT 6.28318531f

static float local_sinf(float x) {
    // Wrap angle to [-PI, PI] without relying on fmod
    int quotient = (int)(x * 0.159154943f); // x / TWO_PI_FLOAT
    x = x - (quotient * TWO_PI_FLOAT);
    if (x > PI_FLOAT) x -= TWO_PI_FLOAT;
    else if (x < -PI_FLOAT) x += TWO_PI_FLOAT;

    // Fast parabolic approximation
    float sin_x;
    if (x < 0.0f) {
        sin_x = 1.27323954f * x + 0.405284735f * x * x;
        // Extra precision pass to prevent deformation
        sin_x = 0.225f * (sin_x * -sin_x - sin_x) + sin_x;
    } else {
        sin_x = 1.27323954f * x - 0.405284735f * x * x;
        // Extra precision pass to prevent deformation
        sin_x = 0.225f * (sin_x * sin_x - sin_x) + sin_x;
    }
    return sin_x;
}

static float local_cosf(float x) {
    return local_sinf(x + 1.57079632f); // sin(x + PI/2)
}

// Cube definition (8 vertices)
static const vec3_t cube_vertices[8] = {
    {-1, -1, -1}, { 1, -1, -1}, { 1,  1, -1}, {-1,  1, -1},
    {-1, -1,  1}, { 1, -1,  1}, { 1,  1,  1}, {-1,  1,  1}
};

// Cube edges connecting the 8 vertices (12 lines)
static const edge_t cube_edges[12] = {
    {0, 1}, {1, 2}, {2, 3}, {3, 0}, // Back face
    {4, 5}, {5, 6}, {6, 7}, {7, 4}, // Front face
    {0, 4}, {1, 5}, {2, 6}, {3, 7}  // Connecting edges
};

static const face_t cube_faces[6] = {
    {4, 5, 6, 7, 9},  // Front face  (Bright Blue)
    {1, 0, 3, 2, 12}, // Back face   (Bright Red)
    {7, 6, 2, 3, 10}, // Top face    (Bright Green)
    {0, 1, 5, 4, 14}, // Bottom face (Yellow)
    {5, 1, 2, 6, 13}, // Right face  (Bright Magenta)
    {0, 4, 7, 3, 11}  // Left face   (Bright Cyan)
};

// this was added: Fast scanline triangle filler using horizontal draw_line spans
static void draw_filled_triangle(int16_t x0, int16_t y0, int16_t x1, int16_t y1, int16_t x2, int16_t y2, uint8_t colour) 
{
    // Sort vertices by Y (y0 <= y1 <= y2)
    if (y0 > y1) { int16_t tx=x0; x0=x1; x1=tx; int16_t ty=y0; y0=y1; y1=ty; }
    if (y1 > y2) { int16_t tx=x1; x1=x2; x2=tx; int16_t ty=y1; y1=y2; y2=ty; }
    if (y0 > y1) { int16_t tx=x0; x0=x1; x1=tx; int16_t ty=y0; y0=y1; y1=ty; }

    if (y0 == y2) return;

    int32_t dx02 = ((int32_t)(x2 - x0) << 16) / (y2 - y0);
    int32_t dx01 = (y1 != y0) ? (((int32_t)(x1 - x0) << 16) / (y1 - y0)) : 0;
    int32_t dx12 = (y2 != y1) ? (((int32_t)(x2 - x1) << 16) / (y2 - y1)) : 0;

    int32_t wx1 = (int32_t)x0 << 16;
    int32_t wx2 = wx1;

    // Top half scanlines
    for (int16_t y = y0; y < y1; y++) {
        draw_line((int16_t)(wx1 >> 16), y, (int16_t)(wx2 >> 16), y, colour);
        wx1 += dx01;
        wx2 += dx02;
    }

    // Bottom half scanlines
    wx1 = (int32_t)x1 << 16;
    for (int16_t y = y1; y <= y2; y++) {
        draw_line((int16_t)(wx1 >> 16), y, (int16_t)(wx2 >> 16), y, colour);
        wx1 += dx12;
        wx2 += dx02;
    }
}

// this was added: 3D rotation matrix and perspective projection math
static vec2_t project_vertex(vec3_t v, float angle_x, float angle_y, float angle_z, float offset_z) 
{
    // Calculate trig values
    float sx = local_sinf(angle_x), cx = local_cosf(angle_x);
    float sy = local_sinf(angle_y), cy = local_cosf(angle_y);
    float sz = local_sinf(angle_z), cz = local_cosf(angle_z);

    // Rotate X
    float y1 = v.y * cx - v.z * sx;
    float z1 = v.y * sx + v.z * cx;
    
    // Rotate Y
    float x2 = v.x * cy + z1 * sy;
    float z2 = -v.x * sy + z1 * cy;
    
    // Rotate Z
    float x3 = x2 * cz - y1 * sz;
    float y3 = x2 * sz + y1 * cz;

    // Translate Z (move into the screen)
    z2 += offset_z;

    // Perspective projection
    float fov_scale = 120.0f; // Adjust this to change FOV / size
    vec2_t p;
    
    if (z2 != 0.0f) {
        p.x = (int16_t)((x3 / z2) * fov_scale) + (API_CRT_WIDTH / 2);
        p.y = (int16_t)((y3 / z2) * fov_scale) + (API_CRT_HEIGHT / 2);
    } else {
        p.x = API_CRT_WIDTH / 2;
        p.y = API_CRT_HEIGHT / 2;
    }
    
    return p;
}

void draw_line(int16_t x0, int16_t y0, int16_t x1, int16_t y1, uint8_t colour);
// this was added: Main update and draw routine to be called once per frame
// this was changed: fixed undefined p0/p1/p2 variables by iterating through cube_faces for backface culling
void RenderBouncingCube(uint8_t colour) 
{
    // Persistent state for rotation and bouncing
    static float angle_x = 0.0f;
    static float angle_y = 0.0f;
    static float angle_z = 0.0f;
    static float pos_z = 2.5f;
    static float vel_z = 0.06f;

    // Update rotations per frame
    angle_x += 0.02f;
    angle_y += 0.03f;
    angle_z += 0.015f;

    // Update Z position (bouncing depth)
    pos_z += vel_z;
    if (pos_z > 8.0f || pos_z < 2.0f) {
        vel_z = -vel_z; // Reverse direction when limits are hit
    }

    vec2_t projected_verts[8];

    // 1. Transform and project all vertices
    for (int i = 0; i < 8; i++) {
        projected_verts[i] = project_vertex(cube_vertices[i], angle_x, angle_y, angle_z, pos_z);
    }

    // 2. Draw wireframe outline of front-facing quads only
    for (int i = 0; i < 6; i++) {
        vec2_t p0 = projected_verts[cube_faces[i].v0];
        vec2_t p1 = projected_verts[cube_faces[i].v1];
        vec2_t p2 = projected_verts[cube_faces[i].v2];
        vec2_t p3 = projected_verts[cube_faces[i].v3];

        int32_t cross_product = (int32_t)(p1.x - p0.x) * (p2.y - p0.y) - 
                                (int32_t)(p1.y - p0.y) * (p2.x - p0.x);

        if (cross_product < 0) {
            draw_line(p0.x, p0.y, p1.x, p1.y, colour);
            draw_line(p1.x, p1.y, p2.x, p2.y, colour);
            draw_line(p2.x, p2.y, p3.x, p3.y, colour);
            draw_line(p3.x, p3.y, p0.x, p0.y, colour);
        }
    }
}

// this was changed: converted rendering loop from wireframe edges to backface-culled filled quads
void RenderBouncingCubeFilled(uint8_t fallback_colour) 
{
    static float angle_x = 0.0f;
    static float angle_y = 0.0f;
    static float angle_z = 0.0f;
    static float pos_z = 2.5f;
    static float vel_z = 0.06f;

    angle_x += 0.02f;
    angle_y += 0.03f;
    angle_z += 0.015f;

    pos_z += vel_z;
    if (pos_z > 8.0f || pos_z < 2.0f) {
        vel_z = -vel_z;
    }

    vec2_t projected_verts[8];

    // 1. Transform and project vertices
    for (int i = 0; i < 8; i++) {
        projected_verts[i] = project_vertex(cube_vertices[i], angle_x, angle_y, angle_z, pos_z);
    }

    // 2. Render each face with backface culling
    for (int i = 0; i < 6; i++) {
        vec2_t p0 = projected_verts[cube_faces[i].v0];
        vec2_t p1 = projected_verts[cube_faces[i].v1];
        vec2_t p2 = projected_verts[cube_faces[i].v2];
        vec2_t p3 = projected_verts[cube_faces[i].v3];

        // 2D Cross product check to cull back-facing quads
        int32_t cross_product = (int32_t)(p1.x - p0.x) * (p2.y - p0.y) - 
                                (int32_t)(p1.y - p0.y) * (p2.x - p0.x);

        if (cross_product < 0) {
            // Draw Quad as 2 Filled Triangles
            draw_filled_triangle(p0.x, p0.y, p1.x, p1.y, p2.x, p2.y, cube_faces[i].colour);
            draw_filled_triangle(p0.x, p0.y, p2.x, p2.y, p3.x, p3.y, cube_faces[i].colour);
        }
    }
}