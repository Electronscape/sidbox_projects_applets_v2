#include <string.h>

#include "midi_translator.h"

#define MIDI_PSR84_NOTE_LIMIT 24u
#define MIDI_TRACKED_NOTES    64u
#define MIDI_PSR84_NOTE_MIN   36u
#define MIDI_PSR84_NOTE_MAX   (96u + 7u)

#define MIDI_MT32_NOTE_MIN    12u
#define MIDI_MT32_NOTE_MAX    108u

#define MT32PI_SYNTH_MT32       0u
#define MT32PI_SYNTH_SOUNDFONT  1u
#define MT32PI_SF_AWE32         0u
#define MT32PI_SF_AWE64         1u
#define MT32PI_SF_OPL3          2u
#define MT32PI_SF_SC55          3u
#define MT32PI_SF_GM            4u

typedef struct {
    uint32_t started_at;
    uint8_t channel;
    uint8_t note;
    uint8_t velocity;
    bool active;
} MidiActiveNote;

static MidiActiveNote midi_active_notes[MIDI_TRACKED_NOTES];
static uint32_t midi_note_stamp;

static const uint8_t psr84_gm_program_map[128] = {
    0, 0, 0, 2, 3, 3, 6, 7,
    9, 40, 41, 41, 40, 41, 42, 38,
    10, 10, 12, 12, 10, 15, 67, 17,
    31, 29, 24, 24, 18, 18, 26, 23,
    82, 83, 82, 84, 85, 87, 90, 93,
    32, 33, 34, 93, 35, 36, 72, 38,
    35, 36, 75, 75, 72, 72, 69, 37,
    43, 47, 49, 44, 50, 51, 52, 74,
    60, 61, 62, 63, 57, 58, 59, 55,
    53, 54, 66, 65, 64, 65, 68, 65,
    73, 73, 74, 73, 76, 74, 73, 76,
    81, 80, 75, 75, 72, 78, 79, 81,
    77, 78, 79, 77, 81, 77, 78, 79,
    39, 39, 31, 38, 41, 65, 32, 57,
    9, 97, 42, 76, 96, 96, 76, 99,
    100, 101, 102, 103, 123, 124, 125, 126
};

static const uint8_t mt32_gm_program_map[128] = {
    0, 1, 2, 3, 4, 5, 16, 7,
    22, 101, 46, 97, 104, 103, 102, 105,
    8, 9, 10, 12, 12, 15, 87, 15,
    59, 60, 61, 61, 62, 62, 62, 60,
    64, 66, 67, 70, 68, 69, 28, 29,
    52, 53, 54, 56, 49, 51, 57, 112,
    48, 49, 50, 50, 34, 39, 39, 122,
    88, 90, 94, 89, 92, 95, 24, 25,
    78, 79, 80, 81, 84, 85, 86, 82,
    74, 72, 76, 77, 110, 107, 108, 77,
    47, 47, 47, 47, 24, 39, 47, 28,
    32, 38, 34, 34, 48, 35, 38, 37,
    41, 36, 40, 37, 100, 39, 43, 127,
    63, 59, 105, 105, 99, 77, 52, 84,
    100, 115, 114, 115, 117, 113, 116, 119,
    120, 111, 127, 124, 123, 123, 125, 127
};

static const uint8_t mt32_drum_note_map[128] = {
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    35, 35, 36, 36, 37, 38, 39, 40, 41, 42, 42, 44, 44, 46, 46, 47,
    48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63,
    64, 65, 66, 67, 68, 69, 70, 71, 72, 46, 46, 46, 47, 48, 49, 50,
    51, 52, 53, 54, 55, 56, 57, 58, 59, 59, 59, 59, 59, 59, 59, 59,
    59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59,
    59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59
};

static const uint8_t mt32_channel_setup_alt_sysex[] = {
    0xF0, 0x41, 0x10, 0x16, 0x12,
    0x10, 0x00, 0x0D,
    0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x09,
    0x3E, 0xF7
};

static const uint8_t mt32_channel_setup_std_sysex[] = {
    0xF0, 0x41, 0x10, 0x16, 0x12,
    0x10, 0x00, 0x0D,
    0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09,
    0x36, 0xF7
};

static bool midi_translator_is_indexed_soundfont(MidiTranslatorProfile profile)
{
    return profile >= MIDI_TRANSLATOR_SF0 && profile <= MIDI_TRANSLATOR_SF15;
}

bool midi_translator_profile_for_soundfont_index(uint8_t index, MidiTranslatorProfile *profile)
{
    if (!profile || index > 15u) {
        return false;
    }

    *profile = (MidiTranslatorProfile)(MIDI_TRANSLATOR_SF0 + index);
    return true;
}

bool midi_translator_profile_soundfont_index(MidiTranslatorProfile profile, uint8_t *index)
{
    if (!index || !midi_translator_is_indexed_soundfont(profile)) {
        return false;
    }

    *index = (uint8_t)(profile - MIDI_TRANSLATOR_SF0);
    return true;
}

const char *midi_translator_profile_name(MidiTranslatorProfile profile)
{
    switch (profile) {
        case MIDI_TRANSLATOR_PSR84: return "PSR84";
        case MIDI_TRANSLATOR_MT32:  return "MT-32 ALT";
        case MIDI_TRANSLATOR_MT32_STD: return "MT-32 STD";
        case MIDI_TRANSLATOR_GM:    return "GM";
        case MIDI_TRANSLATOR_AWE32: return "AWE32";
        case MIDI_TRANSLATOR_AWE64: return "AWE64";
        case MIDI_TRANSLATOR_SC55:  return "SC-55";
        case MIDI_TRANSLATOR_OPL3:  return "OPL-3";
        case MIDI_TRANSLATOR_SF0:   return "SF0";
        case MIDI_TRANSLATOR_SF1:   return "SF1";
        case MIDI_TRANSLATOR_SF2:   return "SF2";
        case MIDI_TRANSLATOR_SF3:   return "SF3";
        case MIDI_TRANSLATOR_SF4:   return "SF4";
        case MIDI_TRANSLATOR_SF5:   return "SF5";
        case MIDI_TRANSLATOR_SF6:   return "SF6";
        case MIDI_TRANSLATOR_SF7:   return "SF7";
        case MIDI_TRANSLATOR_SF8:   return "SF8";
        case MIDI_TRANSLATOR_SF9:   return "SF9";
        case MIDI_TRANSLATOR_SF10:  return "SF10";
        case MIDI_TRANSLATOR_SF11:  return "SF11";
        case MIDI_TRANSLATOR_SF12:  return "SF12";
        case MIDI_TRANSLATOR_SF13:  return "SF13";
        case MIDI_TRANSLATOR_SF14:  return "SF14";
        case MIDI_TRANSLATOR_SF15:  return "SF15";
        case MIDI_TRANSLATOR_RAW:
        default:                    return "RAW";
    }
}

void midi_translator_reset_state(void)
{
    memset(midi_active_notes, 0, sizeof(midi_active_notes));
    midi_note_stamp = 0;
}

static int16_t midi_limiter_find(uint8_t channel, uint8_t note)
{
    for (uint16_t i = 0; i < MIDI_TRACKED_NOTES; i++) {
        MidiActiveNote *active = &midi_active_notes[i];
        if (active->active && active->channel == channel && active->note == note) {
            return (int16_t)i;
        }
    }

    return -1;
}

static uint8_t midi_limiter_active_count(void)
{
    uint8_t count = 0;

    for (uint16_t i = 0; i < MIDI_TRACKED_NOTES; i++) {
        if (midi_active_notes[i].active) {
            count++;
        }
    }

    return count;
}

static int16_t midi_limiter_find_slot(void)
{
    for (uint16_t i = 0; i < MIDI_TRACKED_NOTES; i++) {
        if (!midi_active_notes[i].active) {
            return (int16_t)i;
        }
    }

    return -1;
}

static int16_t midi_limiter_find_steal_candidate(void)
{
    int16_t best = -1;

    for (uint16_t i = 0; i < MIDI_TRACKED_NOTES; i++) {
        MidiActiveNote *active = &midi_active_notes[i];
        if (!active->active) continue;

        if (best < 0) {
            best = (int16_t)i;
            continue;
        }

        MidiActiveNote *current_best = &midi_active_notes[best];
        bool active_is_drum = (active->channel == 9);
        bool best_is_drum = (current_best->channel == 9);

        if (best_is_drum && !active_is_drum) {
            best = (int16_t)i;
        } else if (best_is_drum == active_is_drum &&
                   active->started_at < current_best->started_at) {
            best = (int16_t)i;
        }
    }

    return best;
}

static bool midi_limiter_steal_note(MidiTranslatorSendFn send, void *user)
{
    int16_t victim_index = midi_limiter_find_steal_candidate();
    if (victim_index < 0) return false;

    MidiActiveNote *victim = &midi_active_notes[victim_index];
    uint8_t note_off[3] = {
        (uint8_t)(0x80 | (victim->channel & 0x0F)),
        victim->note,
        0x00
    };

    if (!send(note_off, sizeof(note_off), true, user)) {
        return false;
    }

    victim->active = false;
    return true;
}

static void midi_limiter_note_off(uint8_t channel, uint8_t note)
{
    int16_t index = midi_limiter_find((uint8_t)(channel & 0x0F), (uint8_t)(note & 0x7F));
    if (index >= 0) {
        midi_active_notes[index].active = false;
    }
}

static bool midi_limiter_note_on(uint8_t channel, uint8_t note, uint8_t velocity, MidiTranslatorSendFn send, void *user)
{
    channel &= 0x0F;
    note &= 0x7F;

    int16_t existing = midi_limiter_find(channel, note);
    if (existing >= 0) {
        midi_active_notes[existing].started_at = ++midi_note_stamp;
        midi_active_notes[existing].velocity = velocity;
        return true;
    }

    while (midi_limiter_active_count() >= MIDI_PSR84_NOTE_LIMIT) {
        if (!midi_limiter_steal_note(send, user)) {
            return false;
        }
    }

    int16_t slot = midi_limiter_find_slot();
    if (slot < 0) {
        if (!midi_limiter_steal_note(send, user)) {
            return false;
        }
        slot = midi_limiter_find_slot();
        if (slot < 0) return false;
    }

    midi_active_notes[slot].active = true;
    midi_active_notes[slot].channel = channel;
    midi_active_notes[slot].note = note;
    midi_active_notes[slot].velocity = velocity;
    midi_active_notes[slot].started_at = ++midi_note_stamp;
    return true;
}

static void midi_limiter_all_notes_off(uint8_t channel)
{
    channel &= 0x0F;

    for (uint16_t i = 0; i < MIDI_TRACKED_NOTES; i++) {
        if (midi_active_notes[i].active && midi_active_notes[i].channel == channel) {
            midi_active_notes[i].active = false;
        }
    }
}

static bool midi_psr84_accepts_cc(uint8_t control)
{
    switch (control) {
        case 0x01:
        case 0x07:
        case 0x40:
        case 0x5B:
        case 0x78:
        case 0x79:
        case 0x7B:
            return true;
        default:
            return false;
    }
}

static bool midi_mt32_accepts_cc(uint8_t control)
{
    switch (control) {
        case 0x01:
        case 0x07:
        case 0x0A:
        case 0x0B:
        case 0x40:
        case 0x78:
        case 0x79:
        case 0x7B:
            return true;
        default:
            return false;
    }
}

static uint8_t midi_translate_program_psr84(uint8_t channel, uint8_t program)
{
    if (channel == 9) {
        return 99;
    }

    return psr84_gm_program_map[program & 0x7F];
}

static uint8_t midi_translate_note_psr84(uint8_t channel, uint8_t note)
{
    note &= 0x7F;

    if (channel == 9) {
        return note;
    }

    note = (uint8_t)(note + 12u);

    while (note < MIDI_PSR84_NOTE_MIN) {
        note = (uint8_t)(note + 12u);
    }

    while (note > MIDI_PSR84_NOTE_MAX) {
        note = (uint8_t)(note - 12u);
    }

    return note;
}

static uint8_t midi_translate_channel_mt32(uint8_t channel)
{
    channel &= 0x0F;
    if (channel == 9) {
        return 9;
    }
    return (uint8_t)(channel & 0x07);
}

static bool midi_translate_note_mt32(uint8_t channel, uint8_t *note)
{
    *note &= 0x7F;

    if (channel == 9) {
        uint8_t mapped = mt32_drum_note_map[*note];
        if (mapped == 0) {
            return false;
        }
        *note = mapped;
        return true;
    }

    while (*note < MIDI_MT32_NOTE_MIN) {
        *note = (uint8_t)(*note + 12u);
    }

    while (*note > MIDI_MT32_NOTE_MAX) {
        *note = (uint8_t)(*note - 12u);
    }

    return true;
}

static bool midi_translate_voice_packet_psr84(uint8_t *packet, uint8_t *packet_len)
{
    uint8_t message = packet[0] & 0xF0;
    uint8_t channel = packet[0] & 0x0F;

    if (message == 0xC0) {
        packet[1] = midi_translate_program_psr84(channel, packet[1]);
        return true;
    }

    if (message == 0xB0) {
        if (packet[1] == 0x0A) {
            return false;
        }
        return midi_psr84_accepts_cc(packet[1]);
    }

    if ((message == 0x80 || message == 0x90) && *packet_len >= 3) {
        packet[1] = midi_translate_note_psr84(channel, packet[1]);
        return true;
    }

    if (message == 0xA0 || message == 0xD0) {
        return false;
    }

    return true;
}

static bool midi_translate_voice_packet_mt32(uint8_t *packet, uint8_t *packet_len)
{
    uint8_t message = packet[0] & 0xF0;
    uint8_t channel = packet[0] & 0x0F;
    uint8_t out_channel = midi_translate_channel_mt32(channel);

    packet[0] = (uint8_t)(message | out_channel);

    if (message == 0xC0) {
        if (channel == 9) {
            return false;
        }
        packet[1] = mt32_gm_program_map[packet[1] & 0x7F];
        return true;
    }

    if (message == 0xB0) {
        if (!midi_mt32_accepts_cc(packet[1])) {
            return false;
        }
        if (packet[1] == 0x0A) {
            packet[2] = (uint8_t)(127u - (packet[2] & 0x7F));
        }
        return true;
    }

    if ((message == 0x80 || message == 0x90) && *packet_len >= 3) {
        return midi_translate_note_mt32(channel, &packet[1]);
    }

    if (message == 0xA0) {
        return false;
    }

    return true;
}

bool midi_translator_translate_voice_packet(MidiTranslatorProfile profile, uint8_t *packet, uint8_t *packet_len)
{
    if (!packet || !packet_len || *packet_len == 0) {
        return false;
    }

    switch (profile) {
        case MIDI_TRANSLATOR_PSR84:
            return midi_translate_voice_packet_psr84(packet, packet_len);
        case MIDI_TRANSLATOR_MT32:
        case MIDI_TRANSLATOR_MT32_STD:
            return midi_translate_voice_packet_mt32(packet, packet_len);
        case MIDI_TRANSLATOR_GM:
        case MIDI_TRANSLATOR_AWE32:
        case MIDI_TRANSLATOR_AWE64:
        case MIDI_TRANSLATOR_SC55:
        case MIDI_TRANSLATOR_OPL3:
        case MIDI_TRANSLATOR_SF0:
        case MIDI_TRANSLATOR_SF1:
        case MIDI_TRANSLATOR_SF2:
        case MIDI_TRANSLATOR_SF3:
        case MIDI_TRANSLATOR_SF4:
        case MIDI_TRANSLATOR_SF5:
        case MIDI_TRANSLATOR_SF6:
        case MIDI_TRANSLATOR_SF7:
        case MIDI_TRANSLATOR_SF8:
        case MIDI_TRANSLATOR_SF9:
        case MIDI_TRANSLATOR_SF10:
        case MIDI_TRANSLATOR_SF11:
        case MIDI_TRANSLATOR_SF12:
        case MIDI_TRANSLATOR_SF13:
        case MIDI_TRANSLATOR_SF14:
        case MIDI_TRANSLATOR_SF15:
        case MIDI_TRANSLATOR_RAW:
        default:
            return true;
    }
}

bool midi_translator_send_voice_packet(MidiTranslatorProfile profile, const uint8_t *packet, uint8_t packet_len, MidiTranslatorSendFn send, void *user)
{
    if (!packet || packet_len == 0 || !send) return false;

    if (profile != MIDI_TRANSLATOR_PSR84) {
        return send(packet, packet_len, false, user);
    }

    uint8_t message = packet[0] & 0xF0;
    uint8_t channel = packet[0] & 0x0F;

    if (message == 0x90 && packet_len >= 3 && packet[2] != 0) {
        if (!midi_limiter_note_on(channel, packet[1], packet[2], send, user)) {
            return false;
        }
        if (!send(packet, packet_len, false, user)) {
            midi_limiter_note_off(channel, packet[1]);
            return false;
        }
        return true;
    }

    if ((message == 0x80 && packet_len >= 3) ||
        (message == 0x90 && packet_len >= 3 && packet[2] == 0)) {
        if (!send(packet, packet_len, true, user)) {
            return false;
        }
        midi_limiter_note_off(channel, packet[1]);
        return true;
    }

    if (message == 0xB0 && packet_len >= 3) {
        if (packet[1] == 0x78 || packet[1] == 0x79 || packet[1] == 0x7B) {
            if (!send(packet, packet_len, true, user)) {
                return false;
            }
            midi_limiter_all_notes_off(channel);
            return true;
        }
    }

    return send(packet, packet_len, false, user);
}

bool midi_translator_accepts_sysex(MidiTranslatorProfile profile, uint8_t status, const uint8_t *data, uint32_t len)
{
    if (profile == MIDI_TRANSLATOR_RAW ||
        profile == MIDI_TRANSLATOR_GM ||
        profile == MIDI_TRANSLATOR_AWE32 ||
        profile == MIDI_TRANSLATOR_AWE64 ||
        profile == MIDI_TRANSLATOR_SC55 ||
        profile == MIDI_TRANSLATOR_OPL3 ||
        midi_translator_is_indexed_soundfont(profile)) {
        return true;
    }

    if ((profile != MIDI_TRANSLATOR_MT32 && profile != MIDI_TRANSLATOR_MT32_STD) ||
        status != 0xF0 || !data || len == 0) {
        return false;
    }

    return data[0] == 0x41;
}

bool midi_translator_uses_soundfont(MidiTranslatorProfile profile)
{
    return profile == MIDI_TRANSLATOR_GM ||
           profile == MIDI_TRANSLATOR_AWE32 ||
           profile == MIDI_TRANSLATOR_AWE64 ||
           profile == MIDI_TRANSLATOR_SC55 ||
           profile == MIDI_TRANSLATOR_OPL3 ||
           midi_translator_is_indexed_soundfont(profile);
}

static bool midi_translator_is_mt32_profile(MidiTranslatorProfile profile)
{
    return profile == MIDI_TRANSLATOR_MT32 ||
           profile == MIDI_TRANSLATOR_MT32_STD;
}

static uint8_t midi_translator_soundfont_index(MidiTranslatorProfile profile)
{
    uint8_t index = 0;
    if (midi_translator_profile_soundfont_index(profile, &index)) {
        return index;
    }

    switch (profile) {
        case MIDI_TRANSLATOR_AWE32: return MT32PI_SF_AWE32;
        case MIDI_TRANSLATOR_AWE64: return MT32PI_SF_AWE64;
        case MIDI_TRANSLATOR_SC55:  return MT32PI_SF_SC55;
        case MIDI_TRANSLATOR_OPL3:  return MT32PI_SF_OPL3;
        case MIDI_TRANSLATOR_GM:
        default:                    return MT32PI_SF_GM;
    }
}

static void midi_translator_send_mt32pi_synth(uint8_t synth, MidiTranslatorSendFn send, void *user)
{
    uint8_t sysex[5] = { 0xF0, 0x7D, 0x03, synth, 0xF7 };
    send(sysex, sizeof(sysex), false, user);
}

static void midi_translator_send_mt32pi_soundfont(uint8_t index, MidiTranslatorSendFn send, void *user)
{
    uint8_t sysex[5] = { 0xF0, 0x7D, 0x02, index, 0xF7 };
    send(sysex, sizeof(sysex), false, user);
}

static void midi_translator_send_gm_reset(MidiTranslatorSendFn send, void *user)
{
    uint8_t gm_on[6] = { 0xF0, 0x7E, 0x7F, 0x09, 0x01, 0xF7 };
    send(gm_on, sizeof(gm_on), false, user);
}

static void midi_translator_send_gm_channel_defaults(MidiTranslatorSendFn send, void *user)
{
    for (uint8_t ch = 0; ch < 16; ch++) {
        uint8_t reset_ctrls[3]    = { (uint8_t)(0xB0 | ch), 0x79, 0x00 };
        uint8_t volume_default[3] = { (uint8_t)(0xB0 | ch), 0x07, 0x64 };
        uint8_t expression_full[3]= { (uint8_t)(0xB0 | ch), 0x0B, 0x7F };
        uint8_t pan_center[3]     = { (uint8_t)(0xB0 | ch), 0x0A, 0x40 };
        uint8_t sustain_off[3]    = { (uint8_t)(0xB0 | ch), 0x40, 0x00 };
        uint8_t all_notes_off[3]  = { (uint8_t)(0xB0 | ch), 0x7B, 0x00 };

        send(reset_ctrls, 3, false, user);
        send(volume_default, 3, false, user);
        send(expression_full, 3, false, user);
        send(pan_center, 3, false, user);
        send(sustain_off, 3, false, user);
        send(all_notes_off, 3, false, user);
    }
}

void midi_translator_send_setup_burst(MidiTranslatorProfile profile, MidiTranslatorSendFn send, void *user)
{
    if (!send) return;

    if (midi_translator_is_mt32_profile(profile)) {
        const uint8_t *channel_setup = (profile == MIDI_TRANSLATOR_MT32_STD)
                                     ? mt32_channel_setup_std_sysex
                                     : mt32_channel_setup_alt_sysex;

        midi_translator_send_mt32pi_synth(MT32PI_SYNTH_MT32, send, user);
        send(channel_setup, sizeof(mt32_channel_setup_alt_sysex), false, user);

        for (uint8_t ch = 0; ch < 16; ch++) {
            uint8_t reset_ctrls[3]    = { (uint8_t)(0xB0 | ch), 0x79, 0x00 };
            uint8_t volume_default[3] = { (uint8_t)(0xB0 | ch), 0x07, 0x64 };
            uint8_t expression_full[3]= { (uint8_t)(0xB0 | ch), 0x0B, 0x7F };
            uint8_t pan_center[3]     = { (uint8_t)(0xB0 | ch), 0x0A, 0x40 };
            uint8_t sustain_off[3]    = { (uint8_t)(0xB0 | ch), 0x40, 0x00 };
            uint8_t all_notes_off[3]  = { (uint8_t)(0xB0 | ch), 0x7B, 0x00 };

            send(reset_ctrls, 3, false, user);
            send(volume_default, 3, false, user);
            send(expression_full, 3, false, user);
            send(pan_center, 3, false, user);
            send(sustain_off, 3, false, user);
            send(all_notes_off, 3, false, user);
        }
        return;
    }

    if (midi_translator_uses_soundfont(profile)) {
        midi_translator_send_mt32pi_synth(MT32PI_SYNTH_SOUNDFONT, send, user);
        midi_translator_send_mt32pi_soundfont(midi_translator_soundfont_index(profile), send, user);
        return;
    }

    if (profile == MIDI_TRANSLATOR_PSR84) {
        for (uint8_t ch = 0; ch < 16; ch++) {
            uint8_t reset_ctrls[3]    = { (uint8_t)(0xB0 | ch), 0x79, 0x00 };
            uint8_t vibrato_off[3]    = { (uint8_t)(0xB0 | ch), 0x01, 0x00 };
            uint8_t volume_default[3] = { (uint8_t)(0xB0 | ch), 0x07, 0x6F };
            uint8_t pan_center[3]     = { (uint8_t)(0xB0 | ch), 0x0A, 0x40 };
            uint8_t sustain_off[3]    = { (uint8_t)(0xB0 | ch), 0x40, 0x00 };
            uint8_t all_notes_off[3]  = { (uint8_t)(0xB0 | ch), 0x7B, 0x00 };

            send(reset_ctrls, 3, false, user);
            send(vibrato_off, 3, false, user);
            send(volume_default, 3, false, user);
            send(pan_center, 3, false, user);
            send(sustain_off, 3, false, user);
            send(all_notes_off, 3, false, user);
        }

        {
            uint8_t drum_program[2] = { 0xC9, 99 };
            uint8_t drum_pan_center[3] = { 0xB9, 0x0A, 0x40 };
            send(drum_program, 2, false, user);
            send(drum_pan_center, 3, false, user);
        }
    }
}

void midi_translator_send_post_load_burst(MidiTranslatorProfile profile, MidiTranslatorSendFn send, void *user)
{
    if (!send || !midi_translator_uses_soundfont(profile)) {
        return;
    }

    midi_translator_send_gm_reset(send, user);
    midi_translator_send_gm_channel_defaults(send, user);
}
