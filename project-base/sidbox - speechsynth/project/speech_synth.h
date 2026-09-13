#ifndef SPEECH_SYNTH_H
#define SPEECH_SYNTH_H

#include <stdint.h>

#define SPEECH_SYNTH_SAMPLE_RATE 22050u
#define SPEECH_SYNTH_MAX_SECONDS 12u

uint32_t speech_synth_render(const char *text);
uint8_t *speech_synth_samples(void);
uint32_t speech_synth_sample_count(void);
const char *speech_synth_phoneme_trace(void);

#endif
