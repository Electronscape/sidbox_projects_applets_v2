#include "main.h"


// ===================== RNG =====================
static uint32_t rng_state = 0x15121553u;

static uint32_t sbx_rng_u32(void) {
    uint32_t x = rng_state;
    x ^= x << 13;
    x ^= x >> 17;
    x ^= x << 5;
    rng_state = x;
    return x;
}

int16_t sbx_rng_range(int16_t lo, int16_t hi) {
    uint32_t r = sbx_rng_u32();
    return (int16_t)(lo + (r % (uint32_t)(hi - lo + 1)));
}