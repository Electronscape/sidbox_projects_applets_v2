#include <stdint.h>
#include <math.h>

#include "sb3d.h"

Vec3 vec3Add(Vec3 a, Vec3 b)
{
    return (Vec3){
        a.x + b.x,
        a.y + b.y,
        a.z + b.z
    };
}

Vec3 vec3Sub(Vec3 a, Vec3 b)
{
    return (Vec3){
        a.x - b.x,
        a.y - b.y,
        a.z - b.z
    };
}

Vec3 vec3Scale(Vec3 v, float s)
{
    return (Vec3){
        v.x * s,
        v.y * s,
        v.z * s
    };
}

float vec3Dot(Vec3 a, Vec3 b)
{
    return
        (a.x * b.x) +
        (a.y * b.y) +
        (a.z * b.z);
}

Vec3 vec3Cross(Vec3 a, Vec3 b)
{
    return (Vec3){
        (a.y * b.z) - (a.z * b.y),
        (a.z * b.x) - (a.x * b.z),
        (a.x * b.y) - (a.y * b.x)
    };
}

float fastRecipf(float x)
{
    union {
        float f;
        uint32_t i;
    } conv;

    float y;

    conv.f = x;
    conv.i = 0x7EF311C3u - conv.i;
    y = conv.f;

    /* one NR step */
    y = y * (2.0f - (x * y));
    return y;
}



Vec3 vec3Normalize(Vec3 v)
{
    const float len2 =
        (v.x * v.x) +
        (v.y * v.y) +
        (v.z * v.z);

    if (len2 <= 0.000001f) {
        return (Vec3){ 0.0f, 0.0f, 0.0f };
    }

    if (len2 > 0.999f && len2 < 1.001f) {
        return v;
    }

    {
        union {
            float f;
            uint32_t i;
        } conv;

        float x2 = len2 * 0.5f;
        float y = len2;

        conv.f = y;
        conv.i = 0x5f3759dfu - (conv.i >> 1);
        y = conv.f;

        /* one Newton-Raphson step */
        y = y * (1.5f - (x2 * y * y));

        return (Vec3){
            v.x * y,
            v.y * y,
            v.z * y
        };
    }
}

Vec3 rotateAroundAxis(Vec3 v, Vec3 axis, float angle)
{
    axis = vec3Normalize(axis);

    {
        const float c = cosf(angle);
        const float s = sinf(angle);
        const float oneMinusC = 1.0f - c;
        const float axisDotV = vec3Dot(axis, v);

        Vec3 cross = vec3Cross(axis, v);

        return (Vec3){
            (v.x * c) + (cross.x * s) + (axis.x * axisDotV * oneMinusC),
            (v.y * c) + (cross.y * s) + (axis.y * axisDotV * oneMinusC),
            (v.z * c) + (cross.z * s) + (axis.z * axisDotV * oneMinusC)
        };
    }
}

 Vec3 triangleCenter(Vec3 a, Vec3 b, Vec3 c)
{
    Vec3 out;
    const float k = 0.33333334f;

    out.x = (a.x + b.x + c.x) * k;
    out.y = (a.y + b.y + c.y) * k;
    out.z = (a.z + b.z + c.z) * k;
    return out;
}

Vec3 vec3(float x, float y, float z)
{
    return (Vec3){ x, y, z };
}

float degrees(float angle){
    return (M_PI / 180.0f) * angle;
}

float degToRad(float angle)
{
    return angle * (M_PI / 180.0f);
}

float radToDeg(float angle)
{
    return angle * (180.0f / M_PI);
}





// custom maths

float powfxt(float x, float y)
{
    /* very common fast cases */
    if (y == 0.0f) return 1.0f;
    if (y == 1.0f) return x;
    if (x == 1.0f) return 1.0f;

    /* zero base */
    if (x == 0.0f) {
        if (y > 0.0f) return 0.0f;
        return INFINITY;   /* 0^negative */
    }

    /* common fractional cases */
    if (y == 0.5f)  return sqrtf(x);
    if (y == -0.5f) return 1.0f / sqrtf(x);

    /* integer exponent fast path */
    {
        const int32_t yi = (int32_t)y;

        if ((float)yi == y) {
            uint32_t expAbs;
            float base;
            float result = 1.0f;

            /* integer exponents with negative base are valid */
            if (yi < 0) {
                base = 1.0f / x;
                expAbs = (uint32_t)(-yi);
            } else {
                base = x;
                expAbs = (uint32_t)yi;
            }

            while (expAbs != 0u) {
                if (expAbs & 1u) {
                    result *= base;
                }
                base *= base;
                expAbs >>= 1;
            }

            return result;
        }
    }

    /* negative base with non-integer exponent is not real */
    if (x < 0.0f) {
        return NAN;
    }

    /* general fallback */
    return expf(y * logf(x));
}