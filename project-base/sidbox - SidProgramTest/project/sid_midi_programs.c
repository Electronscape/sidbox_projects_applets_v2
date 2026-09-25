#include <stdlib.h>
#include "sid_midi_soundfont.h"
#include "apis.h"

///////////////////////// preset programs /////////////////////////////
/*
    ============================================================================
        Preset VM Programs (MIDI Programs 0..127)
    ============================================================================
*/

// Program 0: Bright SID pluck. More useful than pretending one SID voice is a piano.
static const sid_instr_t prg_acoustic_piano[] = {
    { SID_OP_ADSR,  0, 0x0342 },
    { SID_OP_PULSE, 0, 0x0900 },
    { SID_OP_WAVE,  0, 0x41 },
    { SID_OP_WAIT,  0, 1 },
    { SID_OP_PULSE, 0, 0x0300 },
    { SID_OP_WAIT,  0, 3 },
    { SID_OP_PULSE, 0, 0x0700 },
    { SID_OP_HOLD,  0, 0 },
    { SID_OP_END,   0, 0 }
};

// Program 4: Nasal pulse key. Narrow pulse motion gives it a cheap electric bite.
static const sid_instr_t prg_honkytonk_piano[] = {
    { SID_OP_ADSR,  0, 0x0432 },
    { SID_OP_PULSE, 0, 0x0240 },
    { SID_OP_WAVE,  0, 0x41 },
    { SID_OP_WAIT,  0, 2 },
    { SID_OP_PULSE, 0, 0x0500 },
    { SID_OP_WAIT,  0, 4 },
    { SID_OP_PULSE, 0, 0x0340 },
    { SID_OP_HOLD,  0, 0 },
    { SID_OP_END,   0, 0 }
};


// Program 19: Thick organ/drone, slow vibrato on triangle+saw.
static const sid_instr_t prg_church_organ[] = {
    { SID_OP_ADSR,    0, 0x00F5 },
    { SID_OP_WAVE,    0, 0x31 },
    { SID_OP_VIBRATO, 0, 0x1807 },
    { SID_OP_TREMOLO, 0, 0x0209 },
    { SID_OP_HOLD,    0, 0 },
    { SID_OP_END,   0, 0 }
};

// Program 30: Hard sync-ish riff stab. Octave snap, then a raw fifth/octave arp.
static const sid_instr_t prg_distortion_guitar[] = {
    { SID_OP_ADSR,  0, 0x0652 },
    { SID_OP_PULSE, 0, 0x0180 },
    { SID_OP_PITCH, 0, 12 },
    { SID_OP_WAVE,  0, 0x41 },
    { SID_OP_WAIT,  0, 0 },
    { SID_OP_PITCH, 0, 0 },
    { SID_OP_PULSE, 0, 0x0D00 },
    { SID_OP_ARP,   0, 0x070C },
    { SID_OP_HOLD,  0, 0 },
    { SID_OP_END,   0, 0 }
};

// Program 38: Root/octave SID bass. Tight pulse with one-tick octave snap.
static const sid_instr_t prg_synth_bass_1[] = {
    { SID_OP_ADSR,  0, 0x0671 },
    { SID_OP_PULSE, 0, 0x0280 },
    { SID_OP_PITCH, 0, 12 },
    { SID_OP_WAVE,  0, 0x41 },
    { SID_OP_WAIT,  0, 0 },
    { SID_OP_PITCH, 0, 0 },
    { SID_OP_ARP,   0, 0x000C },
    { SID_OP_HOLD,  0, 0 },
    { SID_OP_END,   0, 0 }
};

// Program 80: Square lead with tight vibrato and a chattering PWM loop.
static const sid_instr_t prg_lead_square[] = {
    { SID_OP_ADSR,    0, 0x00D3 },
    { SID_OP_PULSE,   0, 0x0600 },
    { SID_OP_WAVE,    0, 0x41 },
    { SID_OP_VIBRATO, 0, 0x2404 },
    { SID_OP_TREMOLO, 0, 0x0105 },
    { SID_OP_ADDPWM,  0, 0x0080 },
    { SID_OP_WAIT,    0, 1 },
    { SID_OP_LOOP,    8, 2 },
    { SID_OP_DECPWM,  0, 0x0080 },
    { SID_OP_WAIT,    0, 1 },
    { SID_OP_LOOP,    8, 2 },
    { SID_OP_HOLD,    0, 6 },
    { SID_OP_END,   0, 0 }
};



// Program 81: Hubbard-ish PWM Sweep Lead (wide animated pulse and light vibrato)
static const sid_instr_t prg_hubbard_pwm_lead[] = {
    { SID_OP_ADSR,    0, 0x00F4 },
    { SID_OP_PULSE,   0, 0x0180 },
    { SID_OP_WAVE,    0, 0x41 },
    { SID_OP_VIBRATO, 0, 0x2005 },
    { SID_OP_TREMOLO, 0, 0x0206 },
    { SID_OP_ADDPWM,  0, 0x0060 },
    { SID_OP_WAIT,    0, 1 },
    { SID_OP_LOOP,   32, 2 },
    { SID_OP_DECPWM,  0, 0x0060 },
    { SID_OP_WAIT,    0, 1 },
    { SID_OP_LOOP,   32, 2 },
    { SID_OP_HOLD,    0, 6 },
    { SID_OP_END,    0, 0 }
};


// Program 82: Fast manual chord arp. Root, major third, fifth, octave.
static const sid_instr_t prg_hubbard_arp_lead[] = {
    { SID_OP_ADSR,    0, 0x00F3 },
    { SID_OP_PULSE,   0, 0x0600 },
    { SID_OP_WAVE,    0, 0x41 },
    { SID_OP_VIBRATO, 0, 0x1806 },
    { SID_OP_PITCH,   0, 0 },
    { SID_OP_PULSE,   0, 0x0600 },
    { SID_OP_WAIT,    0, 0 },
    { SID_OP_PITCH,   0, 4 },
    { SID_OP_PULSE,   0, 0x0380 },
    { SID_OP_WAIT,    0, 0 },
    { SID_OP_PITCH,   0, 7 },
    { SID_OP_PULSE,   0, 0x0A00 },
    { SID_OP_WAIT,    0, 0 },
    { SID_OP_PITCH,   0, 12 },
    { SID_OP_PULSE,   0, 0x0500 },
    { SID_OP_WAIT,    0, 0 },
    { SID_OP_HOLD,    0, 12 },
    { SID_OP_END,    0, 0 }
};

// Program 83: VM arp opcode version. Lighter program, same instant SID chord fake.
static const sid_instr_t prg_hubbard_arp_hardware[] = {
    { SID_OP_ADSR,    0, 0x00F3 },
    { SID_OP_PULSE,   0, 0x0480 },
    { SID_OP_WAVE,    0, 0x41 },
    { SID_OP_VIBRATO, 0, 0x1806 },
    { SID_OP_TREMOLO, 0, 0x0104 },
    { SID_OP_ARP,     0, 0x0407 },
    { SID_OP_HOLD,    0, 0 },
    { SID_OP_END,    0, 0 }
};

// Program 127: Gunshot / Percussion FX (White Noise drop - non-sustaining)
static const sid_instr_t prg_gunshot[] = {
    { SID_OP_ADSR,  0, 0x0EF0 }, // Instant attack, long decay
    { SID_OP_WAVE,  0, 0x81 },   // Noise wave + Gate ON
    { SID_OP_WAIT,  0, 20 },
    { SID_OP_END,   0, 0 }
};

// Default Fallback Program (Generic Sawtooth Lead)
static const sid_instr_t prg_default_fallback[] = {
    { SID_OP_ADSR,  0, 0x0852 },
    { SID_OP_WAVE,  0, 0x21 },   // Sawtooth + Gate ON
    { SID_OP_HOLD,  0, 0 },
    { SID_OP_END,   0, 0 }
};

// Program 1/2/3: Brighter SID piano/key plucks with a tiny PWM transient.
static const sid_instr_t prg_bright_key[] = {
    { SID_OP_ADSR,  0, 0x0242 },
    { SID_OP_PULSE, 0, 0x0A00 },
    { SID_OP_WAVE,  0, 0x41 },
    { SID_OP_WAIT,  0, 1 },
    { SID_OP_PULSE, 0, 0x0280 },
    { SID_OP_WAIT,  0, 2 },
    { SID_OP_PULSE, 0, 0x0600 },
    { SID_OP_HOLD,  0, 0 },
    { SID_OP_END,   0, 0 }
};

// Program 5/6: Electric piano / music-box hybrid.
static const sid_instr_t prg_electric_key[] = {
    { SID_OP_ADSR,    0, 0x0464 },
    { SID_OP_PULSE,   0, 0x0440 },
    { SID_OP_WAVE,    0, 0x41 },
    { SID_OP_VIBRATO, 0, 0x0807 },
    { SID_OP_TREMOLO, 0, 0x0108 },
    { SID_OP_HOLD,    0, 0 },
    { SID_OP_END,     0, 0 }
};

// Program 7/8: Clav/harpsichord-ish hard pluck.
static const sid_instr_t prg_clav_pluck[] = {
    { SID_OP_ADSR,  0, 0x0121 },
    { SID_OP_PULSE, 0, 0x0180 },
    { SID_OP_WAVE,  0, 0x41 },
    { SID_OP_WAIT,  0, 1 },
    { SID_OP_PULSE, 0, 0x0C00 },
    { SID_OP_HOLD,  0, 0 },
    { SID_OP_END,   0, 0 }
};

// Programs 16/17/18: Drawbar/percussive organs with SID wobble.
static const sid_instr_t prg_sid_drawbar_organ[] = {
    { SID_OP_ADSR,    0, 0x00E4 },
    { SID_OP_PULSE,   0, 0x0700 },
    { SID_OP_WAVE,    0, 0x51 },
    { SID_OP_VIBRATO, 0, 0x1008 },
    { SID_OP_TREMOLO, 0, 0x0207 },
    { SID_OP_HOLD,    0, 0 },
    { SID_OP_END,     0, 0 }
};

static const sid_instr_t prg_percussive_organ[] = {
    { SID_OP_ADSR,    0, 0x02C3 },
    { SID_OP_PULSE,   0, 0x0380 },
    { SID_OP_WAVE,    0, 0x51 },
    { SID_OP_TREMOLO, 0, 0x0105 },
    { SID_OP_HOLD,    0, 0 },
    { SID_OP_END,     0, 0 }
};

// Programs 24..29: Guitar family: plucked pulse/saw with fast decay.
static const sid_instr_t prg_sid_guitar[] = {
    { SID_OP_ADSR,  0, 0x0352 },
    { SID_OP_PULSE, 0, 0x0280 },
    { SID_OP_WAVE,  0, 0x41 },
    { SID_OP_WAIT,  0, 1 },
    { SID_OP_PULSE, 0, 0x0900 },
    { SID_OP_HOLD,  0, 0 },
    { SID_OP_END,   0, 0 }
};

static const sid_instr_t prg_muted_guitar[] = {
    { SID_OP_ADSR,  0, 0x0111 },
    { SID_OP_PULSE, 0, 0x0100 },
    { SID_OP_WAVE,  0, 0x41 },
    { SID_OP_WAIT,  0, 1 },
    { SID_OP_PULSE, 0, 0x0F00 },
    { SID_OP_HOLD,  0, 0 },
    { SID_OP_END,   0, 0 }
};

// Programs 32..39: Bass family, with octave transient and root/octave SID action.
static const sid_instr_t prg_acoustic_bass[] = {
    { SID_OP_ADSR,  0, 0x0581 },
    { SID_OP_WAVE,  0, 0x11 },
    { SID_OP_PITCH, 0, 12 },
    { SID_OP_WAIT,  0, 0 },
    { SID_OP_PITCH, 0, 0 },
    { SID_OP_HOLD,  0, 0 },
    { SID_OP_END,   0, 0 }
};

static const sid_instr_t prg_slap_bass[] = {
    { SID_OP_ADSR,  0, 0x0471 },
    { SID_OP_PULSE, 0, 0x0140 },
    { SID_OP_WAVE,  0, 0x41 },
    { SID_OP_PITCH, 0, 12 },
    { SID_OP_WAIT,  0, 0 },
    { SID_OP_PITCH, 0, 0 },
    { SID_OP_ARP,   0, 0x000C },
    { SID_OP_HOLD,  0, 0 },
    { SID_OP_END,   0, 0 }
};

// Programs 40..47: Bowed string-ish single voice: slow-ish attack, vibrato, tremolo.
static const sid_instr_t prg_sid_strings[] = {
    { SID_OP_ADSR,    0, 0x45C5 },
    { SID_OP_PULSE,   0, 0x0800 },
    { SID_OP_WAVE,    0, 0x51 },
    { SID_OP_VIBRATO, 0, 0x1807 },
    { SID_OP_TREMOLO, 0, 0x0109 },
    { SID_OP_HOLD,    0, 0 },
    { SID_OP_END,     0, 0 }
};

static const sid_instr_t prg_pizzicato[] = {
    { SID_OP_ADSR,  0, 0x0262 },
    { SID_OP_PULSE, 0, 0x0A00 },
    { SID_OP_WAVE,  0, 0x41 },
    { SID_OP_WAIT,  0, 1 },
    { SID_OP_PULSE, 0, 0x0300 },
    { SID_OP_HOLD,  0, 0 },
    { SID_OP_END,   0, 0 }
};

// Programs 56..63: Brass / synth brass stabs.
static const sid_instr_t prg_sid_brass[] = {
    { SID_OP_ADSR,    0, 0x12D4 },
    { SID_OP_PULSE,   0, 0x0700 },
    { SID_OP_WAVE,    0, 0x61 },
    { SID_OP_VIBRATO, 0, 0x1006 },
    { SID_OP_TREMOLO, 0, 0x0106 },
    { SID_OP_HOLD,    0, 0 },
    { SID_OP_END,     0, 0 }
};

static const sid_instr_t prg_synth_brass[] = {
    { SID_OP_ADSR,    0, 0x01F4 },
    { SID_OP_PULSE,   0, 0x0200 },
    { SID_OP_WAVE,    0, 0x41 },
    { SID_OP_VIBRATO, 0, 0x1805 },
    { SID_OP_TREMOLO, 0, 0x0205 },
    { SID_OP_ADDPWM,  0, 0x0080 },
    { SID_OP_WAIT,    0, 1 },
    { SID_OP_LOOP,    4, 2 },
    { SID_OP_DECPWM,  0, 0x0080 },
    { SID_OP_WAIT,    0, 1 },
    { SID_OP_LOOP,    4, 2 },
    { SID_OP_HOLD,    0, 6 },
    { SID_OP_END,     0, 0 }
};

// Programs 64..79: Reed/pipe family: narrower pulse, clear vibrato.
static const sid_instr_t prg_sid_reed[] = {
    { SID_OP_ADSR,    0, 0x01C4 },
    { SID_OP_PULSE,   0, 0x0300 },
    { SID_OP_WAVE,    0, 0x41 },
    { SID_OP_VIBRATO, 0, 0x2006 },
    { SID_OP_TREMOLO, 0, 0x0108 },
    { SID_OP_HOLD,    0, 0 },
    { SID_OP_END,     0, 0 }
};

static const sid_instr_t prg_sid_flute[] = {
    { SID_OP_ADSR,    0, 0x34B4 },
    { SID_OP_WAVE,    0, 0x11 },
    { SID_OP_VIBRATO, 0, 0x2006 },
    { SID_OP_TREMOLO, 0, 0x0107 },
    { SID_OP_HOLD,    0, 0 },
    { SID_OP_END,     0, 0 }
};

// Programs 84..87: Extra lead colours.
static const sid_instr_t prg_chiff_lead[] = {
    { SID_OP_ADSR,       0, 0x00E3 },
    { SID_OP_PULSE,      0, 0x0700 },
    { SID_OP_WAVE,       0, 0x81 },
    { SID_OP_WAIT,       0, 1 },
    { SID_OP_WAVE,       0, 0x41 },
    { SID_OP_VIBRATO,    0, 0x2005 },
    { SID_OP_TREMOLO,    0, 0x0105 },
    { SID_OP_HOLD,       0, 0 },
    { SID_OP_END,        0, 0 }
};

static const sid_instr_t prg_charang_lead[] = {
    { SID_OP_ADSR,    0, 0x00D3 },
    { SID_OP_PULSE,   0, 0x0180 },
    { SID_OP_WAVE,    0, 0x41 },
    { SID_OP_VIBRATO, 0, 0x3004 },
    { SID_OP_ARP,     0, 0x070C },
    { SID_OP_HOLD,    0, 0 },
    { SID_OP_END,     0, 0 }
};

static const sid_instr_t prg_bass_lead[] = {
    { SID_OP_ADSR,    0, 0x00E3 },
    { SID_OP_PULSE,   0, 0x0400 },
    { SID_OP_WAVE,    0, 0x41 },
    { SID_OP_ARP,     0, 0x000C },
    { SID_OP_VIBRATO, 0, 0x1405 },
    { SID_OP_HOLD,    0, 0 },
    { SID_OP_END,     0, 0 }
};

// Programs 88..103: Pads and FX with heavy modulation.
static const sid_instr_t prg_warm_pad[] = {
    { SID_OP_ADSR,    0, 0x55F6 },
    { SID_OP_PULSE,   0, 0x0800 },
    { SID_OP_WAVE,    0, 0x51 },
    { SID_OP_VIBRATO, 0, 0x1809 },
    { SID_OP_TREMOLO, 0, 0x020A },
    { SID_OP_HOLD,    0, 0 },
    { SID_OP_END,     0, 0 }
};

static const sid_instr_t prg_sweep_pad[] = {
    { SID_OP_ADSR,    0, 0x45F6 },
    { SID_OP_PULSE,   0, 0x0180 },
    { SID_OP_WAVE,    0, 0x41 },
    { SID_OP_VIBRATO, 0, 0x1808 },
    { SID_OP_TREMOLO, 0, 0x0208 },
    { SID_OP_ADDPWM,  0, 0x0040 },
    { SID_OP_WAIT,    0, 1 },
    { SID_OP_LOOP,   40, 2 },
    { SID_OP_DECPWM,  0, 0x0040 },
    { SID_OP_WAIT,    0, 1 },
    { SID_OP_LOOP,   40, 2 },
    { SID_OP_HOLD,    0, 6 },
    { SID_OP_END,     0, 0 }
};

static const sid_instr_t prg_crystal_fx[] = {
    { SID_OP_ADSR,    0, 0x02E5 },
    { SID_OP_PULSE,   0, 0x0500 },
    { SID_OP_WAVE,    0, 0x41 },
    { SID_OP_ARP,     0, 0x0C13 },
    { SID_OP_VIBRATO, 0, 0x1004 },
    { SID_OP_TREMOLO, 0, 0x0104 },
    { SID_OP_HOLD,    0, 0 },
    { SID_OP_END,     0, 0 }
};

// Program 126: conditional-loop VM demo. Counted PWM rise, then while-note-on PWM wiggle.
static const sid_instr_t prg_conditional_loop_demo[] = {
    { SID_OP_ADSR,       0, 0x00FF },
    { SID_OP_PULSE,      0, 0x0200 },
    { SID_OP_WAVE,       0, 0x41 },
    { SID_OP_SETVAR,     0, 10 },
    { SID_OP_WHILE_GT,   0, 0x0405 },       // while var0 > 4, skip 5 instrs when false
    { SID_OP_ADDPWM,     0, 0x0100 },
    { SID_OP_WAIT,       0, 1 },
    { SID_OP_ADDVAR,     0, (uint16_t)-1 }, // var0--
    { SID_OP_LOOP_BACK,  0, 4 },
    { SID_OP_WHILE_NOTE, 0, 13 },            // while note is held, skip 6 instrs when false
    { SID_OP_ADDPWM,     0, 0x0040 },
    { SID_OP_WAIT,       0, 1 },
    { SID_OP_DECPWM,     0, 0x0040 },
    { SID_OP_WAIT,       0, 1 },
    { SID_OP_LOOP_BACK,  0, 5 },
    { SID_OP_END,        0, 0 }
};

// Programs 104..111: Ethnic/plucked approximations.
static const sid_instr_t prg_sitar_sid[] = {
    { SID_OP_ADSR,  0, 0x0273 },
    { SID_OP_PULSE, 0, 0x0180 },
    { SID_OP_WAVE,  0, 0x41 },
    { SID_OP_ARP,   0, 0x0C13 },
    { SID_OP_WAIT,  0, 3 },
    { SID_OP_ARP,   0, 0 },
    { SID_OP_HOLD,  0, 0 },
    { SID_OP_END,   0, 0 }
};

// Programs 112..119: Bell/percussion synths.
static const sid_instr_t prg_sid_bell[] = {
    { SID_OP_ADSR,    0, 0x04A6 },
    { SID_OP_WAVE,    0, 0x11 },
    { SID_OP_VIBRATO, 0, 0x0803 },
    { SID_OP_PITCH,   0, 12 },
    { SID_OP_WAIT,    0, 1 },
    { SID_OP_PITCH,   0, 0 },
    { SID_OP_HOLD,    0, 0 },
    { SID_OP_END,     0, 0 }
};

static const sid_instr_t prg_synth_drum_program[] = {
    { SID_OP_ADSR,       0, 0x00A2 },
    { SID_OP_PITCH,      0, 24 },
    { SID_OP_WAVE,       0, 0x11 },
    { SID_OP_PITCHSWEEP, 0, (uint16_t)-500 },
    { SID_OP_WAIT,       0, 4 },
    { SID_OP_PITCHSWEEP, 0, 0 },
    { SID_OP_END,        0, 0 }
};















////////////// percussions //////////////////////////////
// ============================================================================
// General MIDI Percussion SoundFont Patches (Channel 10)
// ============================================================================

static const sid_instr_t drv_kick_patch[] = {
    { SID_OP_ADSR,       0, 0x00B2 }, // Instant attack, short decay, short release
    { SID_OP_PITCH,      0, 36 },     // Start 3 octaves up for sharp initial transient pop
    { SID_OP_WAVE,       0, 0x11 },   // Triangle wave + Gate ON
    { SID_OP_PITCHSWEEP, 0, (uint16_t)-1600 }, // Fast sweep down to sub-bass
    { SID_OP_WAIT,       0, 3 },      // Sweep across 60ms
    { SID_OP_PITCHSWEEP, 0, 0 },      // Stop sweep
    { SID_OP_WAVE,       0, 0x10 },   // Gate OFF (trigger release)
    { SID_OP_END,        0, 0 }
};

// GM Note 38/40: Rob Hubbard Classic C64 Snare (Pitched body drop -> Noise burst + Filter sweep)
static const sid_instr_t drv_snare_patch[] = {
    { SID_OP_ADSR,       0, 0x0092 }, // Extremely fast attack, short snappy decay, short release
    { SID_OP_FILTER,  0x4F, 0x1800 }, // High-Pass filter + High resonance on Voice 1
    
    // Phase 1: High pitched body pop (Triangle + Noise combo)
    { SID_OP_PITCH,      0, 0x003C }, // High pitch offset for initial snap
    { SID_OP_WAVE,       0, 0x91 },   // Triangle + Noise combined + Gate ON
    { SID_OP_WAIT,       0, 1 },      // 20ms initial body pop
    
    // Phase 2: Rapid pitch drop + noise tail + sweep filter cutoff down
    { SID_OP_PITCH,      0, 0x0012 }, // Pitch drops rapidly
    { SID_OP_FILTER,  0x4F, 0x0A00 }, // Cutoff sweeps down for body resonance
    { SID_OP_WAVE,       0, 0x81 },   // Pure Noise tail
    { SID_OP_WAIT,       0, 2 },      // 40ms noise sizzle
    
    // Phase 3: Fast cutoff choke + Gate OFF
    { SID_OP_FILTER,  0x4F, 0x0200 }, // Choke filter
    { SID_OP_WAVE,       0, 0x80 },   // Gate OFF (triggers Release)
    { SID_OP_END,        0, 0 }
};

// GM Note 42/44: Closed Hi-Hat (Short filtered noise burst)
static const sid_instr_t drv_closed_hat_patch[] = {
    { SID_OP_ADSR,       0, 0x0041 }, // Ultra short decay, zero sustain
    { SID_OP_FILTER,  0x4F, 0x0700 }, // High-Pass filter (cuts low frequencies)
    { SID_OP_WAVE,       0, 0x81 },   // White noise + Gate ON
    { SID_OP_WAIT,       0, 1 },      // 20ms metallic click
    { SID_OP_END,        0, 0 }
};

// GM Note 46: Open Hi-Hat (Sustained noise burst with high-pass filter)
static const sid_instr_t drv_open_hat_patch[] = {
    { SID_OP_ADSR,       0, 0x00A5 }, // Longer decay time
    { SID_OP_FILTER,  0x4F, 0x0700 }, // High-Pass filter
    { SID_OP_WAVE,       0, 0x81 },   // White noise + Gate ON
    { SID_OP_WAIT,       0, 5 },      // 100ms open cymbal ring
    { SID_OP_END,        0, 0 }
};

// GM Note 41/43/45/47/48/50: Tom-Tom (Triangle wave pitched sweep)
static const sid_instr_t drv_tom_patch[] = {
    { SID_OP_ADSR,       0, 0x00A3 },
    { SID_OP_WAVE,       0, 0x11 },   // Triangle wave + Gate ON
    { SID_OP_PITCHSWEEP, 0, (uint16_t)-150 }, // Pitch drop body
    { SID_OP_WAIT,       0, 4 },
    { SID_OP_PITCHSWEEP, 0, 0 },
    { SID_OP_END,        0, 0 }
};




extern sid_voice_t voices[6];
extern const uint16_t sid_note_to_freq[128];
void get_voice_target(uint8_t voice_index, uint8_t *chip, uint8_t *reg_offset);

void sid_midi_trigger_percussion(uint8_t voice_index, uint8_t midi_note, uint8_t velocity) {
    if (velocity == 0) {
        return;
    }

    sid_voice_t *v = &voices[voice_index];
    uint8_t chip, reg_base;
    get_voice_target(voice_index, &chip, &reg_base);

    const sid_instr_t *selected_patch = NULL;

    switch (midi_note) {
        case 35:
        case 36:
            selected_patch = drv_kick_patch;
            break;

        case 38: // Snare
        case 40:
            selected_patch = drv_snare_patch;
            break;

        case 42:
        case 44:
            selected_patch = drv_closed_hat_patch;
            break;

        case 46:
            selected_patch = drv_open_hat_patch;
            break;

        case 41:
        case 43:
        case 45:
        case 47:
        case 48:
        case 50:
            selected_patch = drv_tom_patch;
            break;

        default:
            selected_patch = drv_closed_hat_patch;
            break;
    }

    // Set default base pitch frequency (Middle C / Note 60 works well for noise/percussion)
    #define baseNote 14
    uint16_t freq = sid_note_to_freq[baseNote];
    audio_sidpoke(chip, reg_base + 0, freq & 0xFF);        // FRELO
    audio_sidpoke(chip, reg_base + 1, (freq >> 8) & 0xFF); // FREHI

    // Reset voice parameters
    v->start_pc     = selected_patch;
    v->pc           = selected_patch;
    v->base_note    = baseNote; // Base note assigned to 60 for relative pitch offsets
    v->velocity     = velocity;
    v->current_sr   = 0;
    v->released     = 0;
    v->keyoff_enabled = 0;
    v->release_cleanup = 0;
    v->release_ticks = 1;
    v->wait_ticks   = 0;
    v->pitch_bend   = 0;
    v->note_offset  = 0;
    v->pitch_offset = 0;
    v->sweep_rate   = 0;
    v->porta_delta  = 0;
    v->arp_active   = 0;
    v->loop_count   = 0;
    v->vars[0]      = 0;
    v->vars[1]      = 0;
    v->vars[2]      = 0;
    v->vars[3]      = 0;
    v->vibrato_depth = 0;
    v->vibrato_rate  = 0;
    v->vibrato_tick  = 0;
    v->vibrato_dir   = 1;
    v->tremolo_depth = 0;
    v->tremolo_rate  = 0;
    v->tremolo_tick  = 0;
    v->tremolo_low   = 0;
    v->active       = 1;
}














// SoundFont Bank Definition (0..127)
const sid_instr_t *sid_soundfont_bank[128] = {
    [0]   = prg_acoustic_piano,
    [1 ... 3] = prg_bright_key,
    [4]   = prg_honkytonk_piano,
    [5 ... 6] = prg_electric_key,
    [7 ... 8] = prg_clav_pluck,
    [9 ... 15] = prg_sid_bell,
    [16]  = prg_sid_drawbar_organ,
    [17]  = prg_percussive_organ,
    [18]  = prg_sid_drawbar_organ,
    [19]  = prg_church_organ,
    [20 ... 23] = prg_sid_drawbar_organ,
    [24 ... 27] = prg_sid_guitar,
    [28] = prg_muted_guitar,
    [29] = prg_distortion_guitar,
    [30]  = prg_distortion_guitar,
    [31] = prg_muted_guitar,
    [32] = prg_acoustic_bass,
    [33 ... 35] = prg_synth_bass_1,
    [36 ... 37] = prg_slap_bass,
    [38]  = prg_synth_bass_1,
    [39] = prg_slap_bass,
    [40 ... 45] = prg_sid_strings,
    [46] = prg_pizzicato,
    [47 ... 55] = prg_sid_strings,
    [56 ... 61] = prg_sid_brass,
    [62 ... 63] = prg_synth_brass,
    [64 ... 71] = prg_sid_reed,
    [72 ... 79] = prg_sid_flute,
    [80]  = prg_lead_square,
    [81]  = prg_hubbard_pwm_lead,
    [82]  = prg_hubbard_arp_lead,
    [83]  = prg_hubbard_arp_hardware,
    [84]  = prg_chiff_lead,
    [85]  = prg_charang_lead,
    [86]  = prg_hubbard_pwm_lead,
    [87]  = prg_bass_lead,
    [88 ... 94] = prg_warm_pad,
    [95] = prg_sweep_pad,
    [96 ... 103] = prg_crystal_fx,
    [104 ... 111] = prg_sitar_sid,
    [112 ... 117] = prg_sid_bell,
    [118 ... 119] = prg_synth_drum_program,
    [120 ... 125] = prg_crystal_fx,
    [126] = prg_conditional_loop_demo,
    [127] = prg_gunshot,
};
