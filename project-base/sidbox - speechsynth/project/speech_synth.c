#include "speech_synth.h"

#include <string.h>

#define SPEECH_MAX_SAMPLES (SPEECH_SYNTH_SAMPLE_RATE * SPEECH_SYNTH_MAX_SECONDS)
#define MAX_PHONES 768u
#define TRACE_CAP 2048u
#define VOICED 1u
#define STOP 2u

#define MAC_BASE_PITCH 152u
#define MAC_CONTROL_HZ 35u

typedef enum {
    PH_PAUSE,
    PH_AH,
    PH_AE,
    PH_AA,
    PH_AO,
    PH_EH,
    PH_ER,
    PH_IH,
    PH_IY,
    PH_UH,
    PH_UW,
    PH_B,
    PH_CH,
    PH_D,
    PH_DH,
    PH_F,
    PH_G,
    PH_H,
    PH_J,
    PH_K,
    PH_L,
    PH_M,
    PH_N,
    PH_NG,
    PH_P,
    PH_R,
    PH_S,
    PH_SH,
    PH_T,
    PH_TH,
    PH_V,
    PH_W,
    PH_Y,
    PH_Z,
    PH_ZH
} PhoneCode;

typedef struct {
    PhoneCode code;
    uint16_t ms;
} PhoneToken;

typedef struct {
    const char *name;
    uint16_t f1;
    uint16_t f2;
    uint16_t f3;
    uint8_t a1;
    uint8_t a2;
    uint8_t a3;
    uint8_t noise;
    uint8_t flags;
    uint16_t ms;
} PhoneSpec;

static uint8_t g_samples[SPEECH_MAX_SAMPLES] __attribute__((aligned(32)));
static PhoneToken g_phones[MAX_PHONES];
static char g_trace[TRACE_CAP];
static uint32_t g_sample_count;
static uint32_t g_rng = 0x1234abcdul;

static const PhoneSpec g_specs[] = {
    {"_",   0,    0,    0,   0,   0,   0,   0, 0,          70},
    {"AH", 640, 1190, 2390, 220,  80,  35,   0, VOICED,   120},
    {"AE", 660, 1720, 2410, 230, 100,  45,   0, VOICED,   130},
    {"AA", 730, 1090, 2440, 230,  82,  35,   0, VOICED,   140},
    {"AO", 570,  840, 2410, 220,  92,  35,   0, VOICED,   135},
    {"EH", 530, 1840, 2480, 220, 105,  45,   0, VOICED,   125},
    {"ER", 490, 1350, 1690, 210, 100,  65,   0, VOICED,   135},
    {"IH", 390, 1990, 2550, 210, 105,  48,   0, VOICED,   110},
    {"IY", 270, 2290, 3010, 205, 110,  55,   0, VOICED,   130},
    {"UH", 440, 1020, 2240, 215,  80,  35,   0, VOICED,   110},
    {"UW", 300,  870, 2240, 220,  80,  40,   0, VOICED,   135},
    {"B",  270, 1100, 2150, 125,  35,  20,  45, VOICED|STOP, 62},
    {"CH", 360, 1900, 2700,  50,  70,  80, 105, STOP,     88},
    {"D",  320, 1700, 2600, 120,  45,  25,  40, VOICED|STOP, 58},
    {"DH", 360, 1450, 2500, 110,  40,  20,  70, VOICED,    68},
    {"F",  300, 1300, 2600,   0,  25,  40,  78, 0,          72},
    {"G",  300, 1400, 2400, 125,  40,  20,  45, VOICED|STOP, 70},
    {"H",  520, 1500, 2600,  55,  38,  25,  70, VOICED,    55},
    {"J",  360, 1700, 2700,  80,  70,  55,  72, VOICED|STOP, 85},
    {"K",  300, 1700, 2800,   0,  45,  55,  92, STOP,      70},
    {"L",  400, 2400, 3000, 180,  80,  42,   0, VOICED,    78},
    {"M",  250, 1200, 2200, 185,  42,  22,   0, VOICED,    82},
    {"N",  250, 1700, 2600, 180,  55,  28,   0, VOICED,    75},
    {"NG", 250, 2000, 2750, 180,  58,  30,   0, VOICED,    90},
    {"P",  300, 1200, 2600,   0,  35,  40,  86, STOP,      62},
    {"R",  300, 1300, 1600, 190, 100,  75,   0, VOICED,    88},
    {"S",  320, 3200, 4200,   0,  45,  85,  88, 0,          82},
    {"SH", 320, 2100, 3000,   0,  65,  70,  92, 0,          88},
    {"T",  320, 1700, 2900,   0,  45,  58,  90, STOP,      58},
    {"TH", 360, 1450, 2600,   0,  30,  50,  72, 0,          74},
    {"V",  300, 1300, 2600, 100,  30,  25,  75, VOICED,    72},
    {"W",  300,  760, 2200, 195,  75,  35,   0, VOICED,    82},
    {"Y",  280, 2200, 3000, 165, 105,  50,   0, VOICED,    70},
    {"Z",  320, 3000, 4100,  90,  45,  75,  70, VOICED,    82},
    {"ZH", 320, 2100, 3000,  80,  65,  70,  68, VOICED,    86}
};

static char lower_char(char c)
{
    if (c >= 'A' && c <= 'Z') {
        return (char)(c + ('a' - 'A'));
    }
    return c;
}

static uint8_t is_alpha(char c)
{
    c = lower_char(c);
    return (uint8_t)(c >= 'a' && c <= 'z');
}

static uint8_t is_vowel_char(char c)
{
    c = lower_char(c);
    return (uint8_t)(c == 'a' || c == 'e' || c == 'i' ||
                     c == 'o' || c == 'u' || c == 'y');
}

static uint8_t is_hard_vowel(char c)
{
    c = lower_char(c);
    return (uint8_t)(c == 'a' || c == 'e' || c == 'i' ||
                     c == 'o' || c == 'u');
}

static uint8_t starts_with(const char *word, uint16_t len, uint16_t pos, const char *prefix)
{
    uint16_t i = 0;
    while (prefix[i]) {
        if ((pos + i) >= len || lower_char(word[pos + i]) != prefix[i]) {
            return 0;
        }
        i++;
    }
    return 1;
}

static uint8_t word_eq(const char *word, uint16_t len, const char *lit)
{
    uint16_t i = 0;
    while (i < len && lit[i]) {
        if (lower_char(word[i]) != lit[i]) {
            return 0;
        }
        i++;
    }
    return (uint8_t)(i == len && lit[i] == 0);
}

static void trace_phone(PhoneCode code)
{
    uint32_t at = (uint32_t)strlen(g_trace);
    const char *name = g_specs[code].name;

    if (at + strlen(name) + 2u >= TRACE_CAP) {
        return;
    }
    if (at != 0u) {
        g_trace[at++] = ' ';
        g_trace[at] = 0;
    }
    strcat(g_trace, name);
}

static void emit_phone(PhoneToken *out, uint16_t *count, PhoneCode code, uint16_t ms)
{
    if (*count >= MAX_PHONES) {
        return;
    }
    if (ms == 0u) {
        ms = g_specs[code].ms;
    }
    out[*count].code = code;
    out[*count].ms = ms;
    (*count)++;
    trace_phone(code);
}

static void emit_ey(PhoneToken *out, uint16_t *count)
{
    emit_phone(out, count, PH_EH, 72);
    emit_phone(out, count, PH_IY, 76);
}

static void emit_ow(PhoneToken *out, uint16_t *count)
{
    emit_phone(out, count, PH_AO, 72);
    emit_phone(out, count, PH_UW, 82);
}

static void emit_ay(PhoneToken *out, uint16_t *count)
{
    emit_phone(out, count, PH_AA, 75);
    emit_phone(out, count, PH_IY, 82);
}

static void emit_aw(PhoneToken *out, uint16_t *count)
{
    emit_phone(out, count, PH_AA, 76);
    emit_phone(out, count, PH_UW, 86);
}

static void emit_oy(PhoneToken *out, uint16_t *count)
{
    emit_phone(out, count, PH_AO, 76);
    emit_phone(out, count, PH_IY, 86);
}

static uint8_t emit_known_word(const char *word, uint16_t len, PhoneToken *out, uint16_t *count)
{
    if (word_eq(word, len, "the")) {
        emit_phone(out, count, PH_DH, 0); emit_phone(out, count, PH_AH, 0); return 1;
    }
    if (word_eq(word, len, "this")) {
        emit_phone(out, count, PH_DH, 0); emit_phone(out, count, PH_IH, 0); emit_phone(out, count, PH_S, 0); return 1;
    }
    if (word_eq(word, len, "that")) {
        emit_phone(out, count, PH_DH, 0); emit_phone(out, count, PH_AE, 0); emit_phone(out, count, PH_T, 0); return 1;
    }
    if (word_eq(word, len, "there") || word_eq(word, len, "their")) {
        emit_phone(out, count, PH_DH, 0); emit_phone(out, count, PH_EH, 0); emit_phone(out, count, PH_R, 0); return 1;
    }
    if (word_eq(word, len, "you")) {
        emit_phone(out, count, PH_Y, 0); emit_phone(out, count, PH_UW, 0); return 1;
    }
    if (word_eq(word, len, "your")) {
        emit_phone(out, count, PH_Y, 0); emit_phone(out, count, PH_ER, 0); return 1;
    }
    if (word_eq(word, len, "to") || word_eq(word, len, "too") || word_eq(word, len, "two")) {
        emit_phone(out, count, PH_T, 0); emit_phone(out, count, PH_UW, 0); return 1;
    }
    if (word_eq(word, len, "of")) {
        emit_phone(out, count, PH_AH, 0); emit_phone(out, count, PH_V, 0); return 1;
    }
    if (word_eq(word, len, "is")) {
        emit_phone(out, count, PH_IH, 0); emit_phone(out, count, PH_Z, 0); return 1;
    }
    if (word_eq(word, len, "are")) {
        emit_phone(out, count, PH_AA, 0); emit_phone(out, count, PH_R, 0); return 1;
    }
    if (word_eq(word, len, "i")) {
        emit_ay(out, count); return 1;
    }
    if (word_eq(word, len, "a")) {
        emit_phone(out, count, PH_AH, 0); return 1;
    }
    if (word_eq(word, len, "and")) {
        emit_phone(out, count, PH_AE, 0); emit_phone(out, count, PH_N, 0); emit_phone(out, count, PH_D, 0); return 1;
    }
    if (word_eq(word, len, "hello")) {
        emit_phone(out, count, PH_H, 0); emit_phone(out, count, PH_EH, 0); emit_phone(out, count, PH_L, 0); emit_ow(out, count); return 1;
    }
    if (word_eq(word, len, "amiga")) {
        emit_phone(out, count, PH_AH, 0); emit_phone(out, count, PH_M, 0); emit_phone(out, count, PH_IY, 0); emit_phone(out, count, PH_G, 0); emit_phone(out, count, PH_AH, 0); return 1;
    }
    if (word_eq(word, len, "narrator")) {
        emit_phone(out, count, PH_N, 0); emit_phone(out, count, PH_AE, 0); emit_phone(out, count, PH_R, 0); emit_ey(out, count); emit_phone(out, count, PH_T, 0); emit_phone(out, count, PH_ER, 0); return 1;
    }
    if (word_eq(word, len, "epson")) {
        emit_phone(out, count, PH_EH, 0); emit_phone(out, count, PH_P, 0); emit_phone(out, count, PH_S, 0); emit_phone(out, count, PH_AH, 0); emit_phone(out, count, PH_N, 0); return 1;
    }
    if (word_eq(word, len, "stephen") || word_eq(word, len, "steve")) {
        emit_phone(out, count, PH_S, 0); emit_phone(out, count, PH_T, 0); emit_phone(out, count, PH_IY, 0); emit_phone(out, count, PH_V, 0); return 1;
    }
    if (word_eq(word, len, "hawking") || word_eq(word, len, "hawkins")) {
        emit_phone(out, count, PH_H, 0); emit_phone(out, count, PH_AO, 0); emit_phone(out, count, PH_K, 0); emit_phone(out, count, PH_IH, 0); emit_phone(out, count, PH_NG, 0); return 1;
    }
    return 0;
}

static uint8_t has_magic_e(const char *word, uint16_t len, uint16_t pos)
{
    return (uint8_t)(pos + 2u < len &&
                     !is_vowel_char(word[pos + 1u]) &&
                     lower_char(word[len - 1u]) == 'e');
}

static void emit_word(const char *word, uint16_t len, PhoneToken *out, uint16_t *count)
{
    uint16_t i = 0;

    if (emit_known_word(word, len, out, count)) {
        return;
    }

    while (i < len) {
        char c = lower_char(word[i]);
        char n = (i + 1u < len) ? lower_char(word[i + 1u]) : 0;

        if (c == '\'' || c == '-') {
            i++;
            continue;
        }

        if (starts_with(word, len, i, "tch")) {
            emit_phone(out, count, PH_CH, 0); i += 3u; continue;
        }
        if (starts_with(word, len, i, "ch")) {
            emit_phone(out, count, PH_CH, 0); i += 2u; continue;
        }
        if (starts_with(word, len, i, "sh")) {
            emit_phone(out, count, PH_SH, 0); i += 2u; continue;
        }
        if (starts_with(word, len, i, "th")) {
            emit_phone(out, count, PH_TH, 0); i += 2u; continue;
        }
        if (starts_with(word, len, i, "ph")) {
            emit_phone(out, count, PH_F, 0); i += 2u; continue;
        }
        if (starts_with(word, len, i, "wh")) {
            emit_phone(out, count, PH_W, 0); i += 2u; continue;
        }
        if (starts_with(word, len, i, "wr")) {
            emit_phone(out, count, PH_R, 0); i += 2u; continue;
        }
        if (i == 0u && starts_with(word, len, i, "kn")) {
            emit_phone(out, count, PH_N, 0); i += 2u; continue;
        }
        if (starts_with(word, len, i, "ng")) {
            emit_phone(out, count, PH_NG, 0); i += 2u; continue;
        }
        if (starts_with(word, len, i, "ck")) {
            emit_phone(out, count, PH_K, 0); i += 2u; continue;
        }
        if (starts_with(word, len, i, "qu")) {
            emit_phone(out, count, PH_K, 0); emit_phone(out, count, PH_W, 0); i += 2u; continue;
        }

        switch (c) {
            case 'a':
                if (starts_with(word, len, i, "ai") || starts_with(word, len, i, "ay")) {
                    emit_ey(out, count); i += 2u; break;
                }
                if (starts_with(word, len, i, "au") || starts_with(word, len, i, "aw")) {
                    emit_phone(out, count, PH_AO, 0); i += 2u; break;
                }
                if (has_magic_e(word, len, i)) emit_ey(out, count);
                else emit_phone(out, count, PH_AE, 0);
                i++;
                break;
            case 'e':
                if (i == len - 1u) {
                    i++;
                    break;
                }
                if (starts_with(word, len, i, "ee") || starts_with(word, len, i, "ea")) {
                    emit_phone(out, count, PH_IY, 0); i += 2u; break;
                }
                if (starts_with(word, len, i, "er")) {
                    emit_phone(out, count, PH_ER, 0); i += 2u; break;
                }
                emit_phone(out, count, PH_EH, 0);
                i++;
                break;
            case 'i':
                if (starts_with(word, len, i, "ir")) {
                    emit_phone(out, count, PH_ER, 0); i += 2u; break;
                }
                if (has_magic_e(word, len, i)) emit_ay(out, count);
                else emit_phone(out, count, PH_IH, 0);
                i++;
                break;
            case 'o':
                if (starts_with(word, len, i, "oo")) {
                    emit_phone(out, count, PH_UW, 0); i += 2u; break;
                }
                if (starts_with(word, len, i, "ou") || starts_with(word, len, i, "ow")) {
                    emit_aw(out, count); i += 2u; break;
                }
                if (starts_with(word, len, i, "oi") || starts_with(word, len, i, "oy")) {
                    emit_oy(out, count); i += 2u; break;
                }
                if (starts_with(word, len, i, "or")) {
                    emit_phone(out, count, PH_AO, 0); emit_phone(out, count, PH_R, 0); i += 2u; break;
                }
                if (has_magic_e(word, len, i)) emit_ow(out, count);
                else emit_phone(out, count, PH_AA, 0);
                i++;
                break;
            case 'u':
                if (starts_with(word, len, i, "ur")) {
                    emit_phone(out, count, PH_ER, 0); i += 2u; break;
                }
                if (has_magic_e(word, len, i)) emit_phone(out, count, PH_UW, 0);
                else emit_phone(out, count, PH_AH, 0);
                i++;
                break;
            case 'y':
                if (i == len - 1u || (i > 0u && !is_hard_vowel(word[i - 1u]))) {
                    emit_phone(out, count, PH_IY, 0);
                } else {
                    emit_ay(out, count);
                }
                i++;
                break;
            case 'b': emit_phone(out, count, PH_B, 0); i++; break;
            case 'c': emit_phone(out, count, (n == 'e' || n == 'i' || n == 'y') ? PH_S : PH_K, 0); i++; break;
            case 'd': emit_phone(out, count, PH_D, 0); i++; break;
            case 'f': emit_phone(out, count, PH_F, 0); i++; break;
            case 'g': emit_phone(out, count, (n == 'e' || n == 'i' || n == 'y') ? PH_J : PH_G, 0); i++; break;
            case 'h': emit_phone(out, count, PH_H, 0); i++; break;
            case 'j': emit_phone(out, count, PH_J, 0); i++; break;
            case 'k': emit_phone(out, count, PH_K, 0); i++; break;
            case 'l': emit_phone(out, count, PH_L, 0); i++; break;
            case 'm': emit_phone(out, count, PH_M, 0); i++; break;
            case 'n': emit_phone(out, count, (n == 'g') ? PH_NG : PH_N, 0); i += (n == 'g') ? 2u : 1u; break;
            case 'p': emit_phone(out, count, PH_P, 0); i++; break;
            case 'q': emit_phone(out, count, PH_K, 0); i++; break;
            case 'r': emit_phone(out, count, PH_R, 0); i++; break;
            case 's': emit_phone(out, count, PH_S, 0); i++; break;
            case 't': emit_phone(out, count, PH_T, 0); i++; break;
            case 'v': emit_phone(out, count, PH_V, 0); i++; break;
            case 'w': emit_phone(out, count, PH_W, 0); i++; break;
            case 'x': emit_phone(out, count, PH_K, 0); emit_phone(out, count, PH_S, 0); i++; break;
            case 'z': emit_phone(out, count, PH_Z, 0); i++; break;
            default: i++; break;
        }

        if (i < len && i > 0u && lower_char(word[i]) == lower_char(word[i - 1u]) &&
            !is_vowel_char(word[i])) {
            i++;
        }
    }
}

static uint16_t phonemize(const char *text, PhoneToken *out)
{
    uint16_t count = 0;
    uint16_t i = 0;

    g_trace[0] = 0;

    while (text[i] && count < MAX_PHONES) {
        if (is_alpha(text[i])) {
            uint16_t start = i;
            while (text[i] && (is_alpha(text[i]) || text[i] == '\'' || text[i] == '-')) {
                i++;
            }
            emit_word(&text[start], (uint16_t)(i - start), out, &count);
            emit_phone(out, &count, PH_PAUSE, 26);
            continue;
        }

        if (text[i] == '.' || text[i] == '!' || text[i] == '?') {
            emit_phone(out, &count, PH_PAUSE, 190);
        } else if (text[i] == ',' || text[i] == ';' || text[i] == ':') {
            emit_phone(out, &count, PH_PAUSE, 120);
        }
        i++;
    }
    return count;
}

static uint32_t phase_step(uint16_t hz)
{
    return (uint32_t)(((uint64_t)hz << 32) / SPEECH_SYNTH_SAMPLE_RATE);
}

static int16_t next_noise(void)
{
    g_rng ^= g_rng << 13;
    g_rng ^= g_rng >> 17;
    g_rng ^= g_rng << 5;
    return (int16_t)(g_rng >> 16);
}

static uint16_t lerp_u16(uint16_t a, uint16_t b, uint16_t t)
{
    return (uint16_t)(a + (((int32_t)b - (int32_t)a) * (int32_t)t) / 255);
}

static uint8_t lerp_u8(uint8_t a, uint8_t b, uint16_t t)
{
    return (uint8_t)(a + (((int16_t)b - (int16_t)a) * (int16_t)t) / 255);
}

typedef struct {
    float low;
    float band;
} SvfState;

typedef struct {
    uint32_t pitch_phase;
    uint32_t control_count;
    uint16_t control_pitch;
    float prev_glottal;
    float source_tilt;
    float lip_last;
    SvfState f1;
    SvfState f2;
    SvfState f3;
    SvfState nasal;
    SvfState n2;
    SvfState n3;
} SynthState;

static float clampf_fast(float v, float lo, float hi)
{
    if (v < lo) return lo;
    if (v > hi) return hi;
    return v;
}

static float soft_clip(float v)
{
    float av = (v < 0.0f) ? -v : v;
    return v / (1.0f + av * 0.42f);
}

static float noise_float(void)
{
    return (float)next_noise() * (1.0f / 32768.0f);
}

static float glottal_pulse(uint32_t phase)
{
    float p = (float)(phase >> 16) * (1.0f / 65536.0f);
    float x;

    if (p < 0.46f) {
        x = p * (1.0f / 0.46f);
        return x * x * (3.0f - 2.0f * x);
    }
    if (p < 0.78f) {
        x = (p - 0.46f) * (1.0f / 0.32f);
        return 1.0f - (x * x * (3.0f - 2.0f * x));
    }
    return 0.0f;
}

static float svf_bandpass(SvfState *s, float input, uint16_t hz, uint16_t bandwidth)
{
    float f = (6.2831853f * (float)hz) * (1.0f / (float)SPEECH_SYNTH_SAMPLE_RATE);
    float damp = ((float)bandwidth * 1.65f) / (float)(hz + 1u);
    float high;

    f = clampf_fast(f, 0.035f, 1.82f);
    damp = clampf_fast(damp, 0.045f, 1.72f);

    s->low += f * s->band;
    high = input - s->low - damp * s->band;
    s->band += f * high;

    s->low = clampf_fast(s->low, -8.0f, 8.0f);
    s->band = clampf_fast(s->band, -8.0f, 8.0f);

    return s->band;
}

static void bandwidths_for(PhoneCode code, uint16_t *b1, uint16_t *b2, uint16_t *b3)
{
    *b1 = 55;
    *b2 = 78;
    *b3 = 115;

    if (code == PH_M || code == PH_N || code == PH_NG) {
        *b1 = 42;
        *b2 = 150;
        *b3 = 210;
    } else if (code == PH_R || code == PH_L || code == PH_W || code == PH_Y) {
        *b1 = 68;
        *b2 = 105;
        *b3 = 150;
    } else if (code == PH_S || code == PH_Z || code == PH_SH || code == PH_ZH ||
               code == PH_F || code == PH_V || code == PH_TH || code == PH_DH) {
        *b1 = 190;
        *b2 = 255;
        *b3 = 360;
    } else if (code == PH_P || code == PH_T || code == PH_K ||
               code == PH_B || code == PH_D || code == PH_G ||
               code == PH_CH || code == PH_J) {
        *b1 = 155;
        *b2 = 230;
        *b3 = 325;
    }
}

static uint8_t phone_is_nasal(PhoneCode code)
{
    return (uint8_t)(code == PH_M || code == PH_N || code == PH_NG);
}

static uint8_t phone_is_liquid(PhoneCode code)
{
    return (uint8_t)(code == PH_R || code == PH_L || code == PH_W || code == PH_Y);
}

static uint16_t macintosh_pitch(SynthState *state, uint32_t write_at)
{
    uint32_t control_frame = SPEECH_SYNTH_SAMPLE_RATE / MAC_CONTROL_HZ;

    if (state->control_pitch == 0u || state->control_count >= control_frame) {
        uint16_t step = (uint16_t)((write_at / control_frame) & 15u);
        int16_t bend = (step < 8u) ? (int16_t)step : (int16_t)(15u - step);

        state->control_count = 0;
        state->control_pitch = (uint16_t)(MAC_BASE_PITCH + bend - 3);
    }

    state->control_count++;
    return state->control_pitch;
}

static uint8_t render_phone(PhoneCode cur_code, PhoneCode next_code,
                            const PhoneSpec *cur, const PhoneSpec *next,
                            uint32_t samples, SynthState *state, uint32_t *write_at)
{
    uint32_t i;
    uint32_t blend_samples = SPEECH_SYNTH_SAMPLE_RATE / 32u;

    if (cur_code == PH_PAUSE) {
        for (i = 0; i < samples && *write_at < SPEECH_MAX_SAMPLES; i++) {
            g_samples[*write_at] = 128;
            (*write_at)++;
        }
        return (uint8_t)(*write_at < SPEECH_MAX_SAMPLES);
    }

    if (blend_samples > samples) {
        blend_samples = samples;
    }

    for (i = 0; i < samples && *write_at < SPEECH_MAX_SAMPLES; i++) {
        uint16_t t = 0;
        PhoneCode active_code = cur_code;
        uint16_t f1 = cur->f1;
        uint16_t f2 = cur->f2;
        uint16_t f3 = cur->f3;
        uint8_t a1 = cur->a1;
        uint8_t a2 = cur->a2;
        uint8_t a3 = cur->a3;
        uint8_t noise = cur->noise;
        uint8_t voiced;
        uint16_t b1;
        uint16_t b2;
        uint16_t b3;
        float pulse;
        float excitation;
        float voiced_src = 0.0f;
        float fric_src = 0.0f;
        float aspiration = 0.0f;
        float nasal;
        float bp1;
        float bp2;
        float bp3;
        float n2;
        float n3;
        float mouth;
        float lip;
        float amp;
        float vowel_gain;
        float consonant_gate = 1.0f;

        if (blend_samples != 0u && i + blend_samples >= samples) {
            t = (uint16_t)(((i + blend_samples - samples) * 255u) / blend_samples);
            active_code = (t < 128u) ? cur_code : next_code;
            f1 = lerp_u16(cur->f1, next->f1, t);
            f2 = lerp_u16(cur->f2, next->f2, t);
            f3 = lerp_u16(cur->f3, next->f3, t);
            a1 = lerp_u8(cur->a1, next->a1, t);
            a2 = lerp_u8(cur->a2, next->a2, t);
            a3 = lerp_u8(cur->a3, next->a3, t);
            noise = lerp_u8(cur->noise, next->noise, t);
        }
        voiced = (((t < 128u) ? cur->flags : next->flags) & VOICED) ? 1u : 0u;
        bandwidths_for(active_code, &b1, &b2, &b3);

        state->pitch_phase += phase_step(macintosh_pitch(state, *write_at));
        pulse = glottal_pulse(state->pitch_phase);

        if (voiced) {
            voiced_src = (pulse - state->prev_glottal) * 3.85f + pulse * 0.34f;
            voiced_src *= 0.96f + ((float)a1 * (1.0f / 390.0f));
        }
        state->prev_glottal = pulse;

        if (noise != 0u) {
            float burst = (float)noise * (1.0f / 255.0f) * 0.25f;
            if ((cur->flags & STOP) && i < samples / 3u) {
                voiced_src *= 0.04f;
                consonant_gate = 0.10f;
                burst *= 0.10f;
            } else if ((cur->flags & STOP) && i > samples / 2u) {
                burst *= 0.78f;
            }
            fric_src = noise_float() * burst;
        }

        if (active_code == PH_H) {
            aspiration = noise_float() * 0.038f;
        } else if (voiced) {
            aspiration = noise_float() * 0.0025f;
        }

        excitation = voiced_src + aspiration;
        state->source_tilt += (excitation - state->source_tilt) * 0.31f;
        excitation = state->source_tilt + (excitation - state->source_tilt) * 0.13f;

        bp1 = svf_bandpass(&state->f1, excitation, f1, b1);
        bp2 = svf_bandpass(&state->f2, excitation, f2, b2);
        bp3 = svf_bandpass(&state->f3, excitation, f3, b3);
        n2 = svf_bandpass(&state->n2, fric_src, f2, (uint16_t)(b2 + 220u));
        n3 = svf_bandpass(&state->n3, fric_src, f3, (uint16_t)(b3 + 260u));
        nasal = svf_bandpass(&state->nasal, excitation, 1120, 175);

        vowel_gain = voiced ? 1.0f : 0.0f;
        if (phone_is_liquid(active_code)) {
            vowel_gain = 0.72f;
        }

        mouth = bp1 * ((float)a1 * (1.0f / 126.0f)) +
                bp2 * ((float)a2 * (1.0f / 82.0f)) +
                bp3 * ((float)a3 * (1.0f / 118.0f)) +
                n2 * ((float)a2 * (1.0f / 270.0f)) +
                n3 * ((float)a3 * (1.0f / 245.0f)) +
                nasal * (phone_is_nasal(active_code) ? 0.78f : 0.16f) +
                excitation * (0.045f + vowel_gain * 0.025f);
        mouth *= consonant_gate;

        lip = mouth - state->lip_last;
        state->lip_last = mouth;

        amp = mouth * 1.24f + lip * 0.12f;
        amp = soft_clip(amp * 1.28f);
        amp = clampf_fast(amp, -0.98f, 0.98f);

        g_samples[*write_at] = (uint8_t)(128 + (int32_t)(amp * 124.0f));
        (*write_at)++;
    }

    return (uint8_t)(*write_at < SPEECH_MAX_SAMPLES);
}

uint32_t speech_synth_render(const char *text)
{
    uint16_t count = phonemize(text, g_phones);
    uint32_t write_at = 0;
    SynthState state;
    uint16_t p;

    memset(g_samples, 128, sizeof(g_samples));
    memset(&state, 0, sizeof(state));
    g_rng = 0x1234abcdul;

    for (p = 0; p < count; p++) {
        PhoneCode cur_code = g_phones[p].code;
        PhoneCode next_code = (p + 1u < count) ? g_phones[p + 1u].code : PH_PAUSE;
        const PhoneSpec *cur = &g_specs[cur_code];
        const PhoneSpec *next = &g_specs[next_code];
        uint32_t samples = ((uint32_t)g_phones[p].ms * SPEECH_SYNTH_SAMPLE_RATE) / 1000u;

        if (!render_phone(cur_code, next_code, cur, next, samples, &state, &write_at)) {
            break;
        }
    }

    g_sample_count = write_at;
    return g_sample_count;
}

uint8_t *speech_synth_samples(void)
{
    return g_samples;
}

uint32_t speech_synth_sample_count(void)
{
    return g_sample_count;
}

const char *speech_synth_phoneme_trace(void)
{
    return g_trace;
}
