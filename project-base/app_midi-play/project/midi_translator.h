#ifndef MIDI_TRANSLATOR_H
#define MIDI_TRANSLATOR_H

#include <stdbool.h>
#include <stdint.h>

typedef enum {
    MIDI_TRANSLATOR_RAW = 0,
    MIDI_TRANSLATOR_MT32,
    MIDI_TRANSLATOR_MT32_STD,
    MIDI_TRANSLATOR_GM,
    MIDI_TRANSLATOR_AWE32,
    MIDI_TRANSLATOR_AWE64,
    MIDI_TRANSLATOR_SC55,
    MIDI_TRANSLATOR_OPL3,
    MIDI_TRANSLATOR_SF0,
    MIDI_TRANSLATOR_SF1,
    MIDI_TRANSLATOR_SF2,
    MIDI_TRANSLATOR_SF3,
    MIDI_TRANSLATOR_SF4,
    MIDI_TRANSLATOR_SF5,
    MIDI_TRANSLATOR_SF6,
    MIDI_TRANSLATOR_SF7,
    MIDI_TRANSLATOR_SF8,
    MIDI_TRANSLATOR_SF9,
    MIDI_TRANSLATOR_SF10,
    MIDI_TRANSLATOR_SF11,
    MIDI_TRANSLATOR_SF12,
    MIDI_TRANSLATOR_SF13,
    MIDI_TRANSLATOR_SF14,
    MIDI_TRANSLATOR_SF15,
    MIDI_TRANSLATOR_PSR84
} MidiTranslatorProfile;

typedef bool (*MidiTranslatorSendFn)(const uint8_t *data, uint8_t len, bool urgent, void *user);

const char *midi_translator_profile_name(MidiTranslatorProfile profile);
bool midi_translator_uses_soundfont(MidiTranslatorProfile profile);
bool midi_translator_profile_for_soundfont_index(uint8_t index, MidiTranslatorProfile *profile);
bool midi_translator_profile_soundfont_index(MidiTranslatorProfile profile, uint8_t *index);

void midi_translator_reset_state(void);
void midi_translator_send_setup_burst(MidiTranslatorProfile profile, MidiTranslatorSendFn send, void *user);
void midi_translator_send_post_load_burst(MidiTranslatorProfile profile, MidiTranslatorSendFn send, void *user);

bool midi_translator_accepts_sysex(MidiTranslatorProfile profile, uint8_t status, const uint8_t *data, uint32_t len);
bool midi_translator_translate_voice_packet(MidiTranslatorProfile profile, uint8_t *packet, uint8_t *packet_len);
bool midi_translator_send_voice_packet(MidiTranslatorProfile profile, const uint8_t *packet, uint8_t packet_len, MidiTranslatorSendFn send, void *user);

#endif
