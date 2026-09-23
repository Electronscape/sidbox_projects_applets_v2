#include <stdlib.h>
#include "sid_midi_soundfont.h"

///////////////////////// preset programs /////////////////////////////
/*
    ============================================================================
        Preset VM Programs (MIDI Programs 0..127)
    ============================================================================
*/

// Program 0: Acoustic Grand Piano (Crisp attack, pulse-width decay, medium release)
static const sid_instr_t prg_acoustic_piano[] = {
    { SID_OP_ADSR,  0, 0x09C4 }, // Attack: fast, Decay: med, Sustain: 12, Release: med
    { SID_OP_PULSE, 0, 0x0800 }, // 50% square wave base
    { SID_OP_WAVE,  0, 0x41 },   // Pulse wave + Gate ON
    { SID_OP_WAIT,  0, 1 },      // Wait 1 frame
    { SID_OP_PULSE, 0, 0x0600 }, // Narrow pulse slightly for attack transient
    { SID_OP_END,   0, 0 }
};

// Program 4: Honky-tonk Piano (Detuned dual-wave feel)
static const sid_instr_t prg_honkytonk_piano[] = {
    { SID_OP_ADSR,  0, 0x08A2 },
    { SID_OP_PULSE, 0, 0x0300 }, // Narrow pulse
    { SID_OP_PITCH, 0, 0x0005 }, // Slight pitch shift up for detune
    { SID_OP_WAVE,  0, 0x41 },   // Pulse + Gate ON
    { SID_OP_END,   0, 0 }
};

// Program 19: Church Organ (Full body triangle + saw)
static const sid_instr_t prg_church_organ[] = {
    { SID_OP_ADSR,  0, 0x00FF }, // Instant attack, full sustain, long release
    { SID_OP_WAVE,  0, 0x31 },   // Saw + Triangle combo + Gate ON
    { SID_OP_END,   0, 0 }
};

// Program 30: Distortion Guitar (Fast arpeggiated pulse sweep)
static const sid_instr_t prg_distortion_guitar[] = {
    { SID_OP_ADSR,  0, 0x0CA0 }, 
    { SID_OP_PULSE, 0, 0x0E00 },
    { SID_OP_WAVE,  0, 0x41 },   // Pulse + Gate ON
    { SID_OP_WAIT,  0, 2 },
    { SID_OP_PITCH, 0, 0x000C }, // Octave jump transient
    { SID_OP_WAIT,  0, 1 },
    { SID_OP_PITCH, 0, 0x0000 }, // Back to root
    { SID_OP_END,   0, 0 }
};

// Program 38: Synth Bass 1 (Classic C64 SID hardware arpeggiated bass line)
static const sid_instr_t prg_synth_bass_1[] = {
    { SID_OP_ADSR,  0, 0x05A0 }, // Fast punchy attack/decay
    { SID_OP_WAVE,  0, 0x21 },   // Sawtooth + Gate ON
    { SID_OP_ARP,   0, 0x070C }, // Arpeggio macro: Note2 = +7 (Fifth), Note3 = +12 (Octave)
    { SID_OP_END,   0, 0 }
};

// Program 80: Lead 1 (Square wave lead with pulse width modulation effect)
static const sid_instr_t prg_lead_square[] = {
    { SID_OP_ADSR,  0, 0x28F8 },
    { SID_OP_PULSE, 0, 0x0800 },
    { SID_OP_WAVE,  0, 0x41 },   // Pulse + Gate
    { SID_OP_WAIT,  0, 4 },
    { SID_OP_PULSE, 0, 0x0C00 },
    { SID_OP_WAIT,  0, 4 },
    { SID_OP_PULSE, 0, 0x0400 },
    { SID_OP_END,   0, 0 }
};

// Program 81: Hubbard PWM Sweep Lead using param8 for infinite loop counter
static const sid_instr_t prg_hubbard_pwm_lead[] = {
    { SID_OP_ADSR,   0, 0x08A4 }, // Fast Attack, Medium Decay
    { SID_OP_PULSE,  0, 0x0400 }, // Start at narrow pulse width
    { SID_OP_WAVE,   0, 0x41 },   // Pulse wave + Gate ON
    
    // --- Loop Section: PWM Sweep ---
    { SID_OP_ADDPWM, 0, 0x0040 }, // Add +64 to Pulse Width
    { SID_OP_WAIT,   0, 2 },      // Wait 40ms
    { SID_OP_ADDPWM, 0, 0x0040 }, // Add +64
    { SID_OP_WAIT,   0, 2 },
    { SID_OP_DECPWM, 0, 0x0080 }, // Subtract 128
    { SID_OP_WAIT,   0, 4 },
    { SID_OP_LOOP,   0, 6 },      // param8=0 (infinite loop), jump back 6 instructions
    { SID_OP_END,    0, 0 }
};

// Program 127: Gunshot / Percussion FX (White Noise drop)
static const sid_instr_t prg_gunshot[] = {
    { SID_OP_ADSR,  0, 0x0EF0 }, // Instant attack, long decay
    { SID_OP_WAVE,  0, 0x81 },   // Noise wave + Gate ON
    { SID_OP_END,   0, 0 }
};

// Default Fallback Program (Generic Sawtooth Lead)
static const sid_instr_t prg_default_fallback[] = {
    { SID_OP_ADSR,  0, 0x08A4 },
    { SID_OP_WAVE,  0, 0x21 },   // Sawtooth + Gate ON
    { SID_OP_END,   0, 0 }
};

// SoundFont Bank Definition (0..127)
const sid_instr_t *sid_soundfont_bank[128] = {
    [0]   = prg_acoustic_piano,
    [4]   = prg_honkytonk_piano,
    [19]  = prg_church_organ,
    [30]  = prg_distortion_guitar,
    [38]  = prg_synth_bass_1,
    [80]  = prg_lead_square,
    [81]  = prg_hubbard_pwm_lead,
    [127] = prg_gunshot,

    // Fill remaining unmapped slots with default program
    [1 ... 3]    = prg_default_fallback,
    [5 ... 18]   = prg_default_fallback,
    [20 ... 29]  = prg_default_fallback,
    [31 ... 37]  = prg_default_fallback,
    [39 ... 79]  = prg_default_fallback,
    [82 ... 126] = prg_default_fallback  // Corrected range start from 82
};







