#ifndef MAIN_H
#define MAIN_H

#include <stdint.h>
#include <stdbool.h>
#include "apis.h"


#define MAX_MIDI_TRACKS 16

typedef enum {
    MIDI_TRANSLATOR_RAW = 0,
    MIDI_TRANSLATOR_PSR84
} MidiTranslatorProfile;

typedef struct {
    const uint8_t *ptr;
    const uint8_t *end;
    uint32_t next_tick;
    uint8_t running_status;
    bool is_active;
} MidiTrack;


typedef struct {
    MidiTrack tracks[MAX_MIDI_TRACKS];
    uint8_t track_count;
    MidiTranslatorProfile translator;
    uint16_t format;
    uint16_t division;
    uint32_t current_tick;
    uint32_t pending_us;
    uint32_t tick_remainder;
    uint32_t tempo_us;
    bool is_playing;
} MidiPlayer;



void midi_player_init(MidiPlayer *player, const uint8_t *midi_data, uint32_t size);
void midi_player_set_translator(MidiPlayer *player, MidiTranslatorProfile translator);
void midi_player_update_us(MidiPlayer *player, uint32_t elapsed_us);
void midi_player_update_50hz(MidiPlayer *player);

// Weak/external hook: Implement this to output bytes to your UART/MIDI port
void midi_hw_send_byte(uint8_t byte);

#endif
