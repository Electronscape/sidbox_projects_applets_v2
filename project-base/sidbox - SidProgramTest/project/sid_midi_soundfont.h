#ifndef _SID_MIDI_SOUNDFONT_H
#define _SID_MIDI_SOUNDFONT_H


#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

// VM Opcodes
typedef enum {
    SID_OP_END       = 0x00, // Stop program execution
    SID_OP_WAIT      = 0x01, // Pause execution for N ticks (value = ticks)
    SID_OP_WAVE      = 0x02, // Set Control Register (Gate, Sync, Ring, Test, Triangle, Saw, Pulse, Noise)
    SID_OP_ADSR      = 0x03, // Set ADSR (value hi = Attack/Decay, lo = Sustain/Release)
    SID_OP_PULSE     = 0x04, // Set Absolute Pulse Width (0..4095)
    SID_OP_PITCH     = 0x05, // Set Absolute Pitch Offset in semitones or cents
    SID_OP_ADDPWM    = 0x06, // Add delta to current Pulse Width (relative shift)
    SID_OP_DECPWM    = 0x07, // Dec delta to current Pulse Width (relative shift)
    
    // Expressive & Classic SID Opcodes
    SID_OP_PORTA     = 0x08, // Pitch Slide / Portamento per tick (value = signed 16-bit delta)
    SID_OP_ARP       = 0x09, // Fast Arpeggio Macro (value hi = note 2 offset, lo = note 3 offset)
    SID_OP_FILTER    = 0x0A, // Filter Control (value hi = Mode/Resonance, lo = Cutoff frequency)
    SID_OP_LOOP      = 0x0B, // Jump back N instructions (value = instruction offset back)
    SID_OP_JUMP      = 0x0C  // Absolute jump to instruction index in program
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

    // Loop Tracking
    uint8_t            loop_count;   // Current loop iteration counter

    // Live Voice Pitch & Modulation State
    int8_t             pitch_offset; // Absolute semitone offset from SID_OP_PITCH
    int16_t            porta_delta;  // Signed pitch slide per 20ms tick (SID_OP_PORTA)
    uint16_t           pulse_width;  // Current 12-bit pulse width (0..4095)

    // Arpeggio State (SID_OP_ARP)
    uint8_t            arp_active;   // 1 if arpeggio running
    uint8_t            arp_step;     // Current arp index (0, 1, 2)
    int8_t             arp_offsets[3]; // [0] = base, [1] = note2, [2] = note3
} sid_voice_t;


// SoundFont Bank Lookup (Defined in sid_midi_programs.c)
extern const sid_instr_t *sid_soundfont_bank[128];








#ifdef __cplusplus
}
#endif

#endif
