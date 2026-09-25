#ifndef _SID_MIDI_SOUNDFONT_H
#define _SID_MIDI_SOUNDFONT_H


#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

// VM Opcodes
typedef enum {
    SID_OP_END        = 0x00, // Stop program execution
    SID_OP_WAIT       = 0x01, // Pause execution for N ticks (value = ticks)
    SID_OP_WAVE       = 0x02, // Set Control Register (Gate, Sync, Ring, Test, Triangle, Saw, Pulse, Noise)
    SID_OP_ADSR       = 0x03, // Set ADSR (value hi = Attack/Decay, lo = Sustain/Release)
    SID_OP_PULSE      = 0x04, // Set Absolute Pulse Width (0..4095)
    SID_OP_PITCH      = 0x05, // Set Absolute Pitch Offset in semitones or cents
    SID_OP_ADDPWM     = 0x06, // Add delta to current Pulse Width (relative shift)
    SID_OP_DECPWM     = 0x07, // Dec delta to current Pulse Width (relative shift)
    
    // Expressive & Classic SID Opcodes
    SID_OP_PORTA      = 0x08, // Pitch Slide / Portamento per tick (value = signed 16-bit delta)
    SID_OP_ARP        = 0x09, // Fast Arpeggio Macro (value hi = note 2 offset, lo = note 3 offset)
    SID_OP_FILTER     = 0x0A, // Filter Control (value hi = Mode/Resonance, lo = Cutoff frequency)
    SID_OP_LOOP       = 0x0B, // Jump back N instructions (value = instruction offset back)
    SID_OP_JUMP       = 0x0C, // Absolute jump to instruction index in program

    SID_OP_PITCHSWEEP = 0x0D, // Pitch Sweep / Pitch Drop opcode
    SID_OP_VIBRATO    = 0x0E, // Persistent vibrato: value hi = raw depth, value lo = half-cycle ticks
    SID_OP_HOLD       = 0x0F, // Wait/loop while key is held; continue when key-off arrives
    SID_OP_TREMOLO    = 0x10, // Persistent tremolo: value hi = sustain depth, value lo = half-cycle ticks
    SID_OP_SETVAR     = 0x11, // var[param8 & 3] = signed value
    SID_OP_ADDVAR     = 0x12, // var[param8 & 3] += signed value
    SID_OP_WHILE_NOTE = 0x13, // If note is off skip forward value instructions, else enter loop body
    SID_OP_WHILE_GT   = 0x14, // If var[param8 & 3] <= signed value hi skip forward value lo instructions
    SID_OP_END_WHILE  = 0x15  // Jump back value instructions to matching WHILE
} sid_opcode_t;

typedef struct {
    uint8_t  opcode;    // 8-bit instruction opcode
    uint8_t  param8;    // 8-bit secondary parameter (loop counts, voice flags, target, etc.)
    uint16_t value;     // 16-bit primary payload
} sid_instr_t;

// State container for each of the 6 2SID voices
typedef struct {
    const sid_instr_t *pc;          // Program Counter (points to current instruction)
    const sid_instr_t *start_pc;    // Base pointer for absolute jumps/loops
    uint16_t           wait_ticks;   // Ticks remaining before processing next opcode
    uint8_t            active;       // Voice active flag (1 = running, 0 = idle)
    uint8_t            base_note;    // MIDI note root (0..127)
    uint8_t            velocity;     // MIDI note velocity/gain (1..255)
    uint8_t            current_sr;   // Last raw Sustain/Release byte from SID_OP_ADSR
    uint8_t            released;     // 1 after MIDI note-off has arrived
    uint8_t            keyoff_enabled; // 1 if program contains a held-note loop
    uint8_t            release_cleanup; // 1 while waiting to TEST after gate-off
    uint8_t            debug_pc_index; // Last VM instruction index executed by this voice
    uint16_t           release_ticks; // Approx 50Hz ticks from SID release nibble

    // Loop Tracking
    uint8_t            loop_count;   // Current loop iteration counter
    int16_t            vars[4];      // Small per-voice program variables

    // Live Voice Pitch & Modulation State
    uint16_t           current_freq; // Live 16-bit SID frequency raw register value
    int16_t            pitch_bend;   // MIDI pitch bend, centered at 0 (-8192..8191)
    int8_t             note_offset;  // Current semitone offset used by pitch/arp
    int8_t             pitch_offset; // Absolute semitone offset from SID_OP_PITCH
    int16_t            porta_delta;  // Signed pitch slide per 20ms tick (SID_OP_PORTA)
    uint16_t           pulse_width;  // Current 12-bit pulse width (0..4095)

    // Arpeggio State (SID_OP_ARP)
    uint8_t            arp_active;   // 1 if arpeggio running
    uint8_t            arp_step;     // Current arp index (0, 1, 2)
    int8_t             arp_offsets[3]; // [0] = base, [1] = note2, [2] = note3

    int16_t            sweep_rate;   // Signed pitch frequency delta applied every tick (50Hz)
    uint8_t            vibrato_depth; // Raw SID frequency delta applied around current_freq
    uint8_t            vibrato_rate;  // Ticks per vibrato half-cycle
    uint8_t            vibrato_tick;  // Current vibrato tick counter
    int8_t             vibrato_dir;   // +1/-1 vibrato direction
    uint8_t            tremolo_depth; // Sustain nibble depth for volume wobble
    uint8_t            tremolo_rate;  // Ticks per tremolo half-cycle
    uint8_t            tremolo_tick;  // Current tremolo tick counter
    uint8_t            tremolo_low;   // 1 when applying lowered sustain
    
} sid_voice_t;

// SoundFont Bank Lookup (Defined in sid_midi_programs.c)
extern const sid_instr_t *sid_soundfont_bank[128];


// MIDI Voice Control API
void sid_voice_set_program(uint8_t voice_index, uint8_t program_num, uint8_t midi_note);
void sid_midi_trigger_percussion(uint8_t voice_index, uint8_t midi_note, uint8_t velocity);
void sid_voice_note_on(uint8_t voice_index, uint8_t program_num, uint8_t midi_note, uint8_t velocity);
void sid_voice_note_off(uint8_t voice_index);
void sid_voice_note_kill(uint8_t voice_index);
void sid_voice_pitch_bend(uint8_t voice_index, int16_t bend);
void sid_voice_set_velocity(uint8_t voice_index, uint8_t velocity);
uint8_t sid_voice_get_vm_debug(uint8_t voice_index, uint8_t *pc_index, uint8_t *running);







#ifdef __cplusplus
}
#endif

#endif
