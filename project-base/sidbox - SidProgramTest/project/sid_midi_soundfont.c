/*
    ============================================================================
        Project BUSH - Sidbox SoundFont Module
        File:         sid_soundfont.c
        Version:      0.1.0
        Date:         2026-09-22
        Description:  MIDI SID program virtual machine and soundfont execution 
                      engine. Handles program mapping, opcode decoding, and 
                      real-time register updates for 6-voice (2x SID) architectures.

        Instruction Word Layout (32-bit aligned):
            [31:16] Value Payload (16-bit)
            [15:8]  Reserved / Alignment Padding (8-bit)
            [7:0]   Opcode (8-bit)

        Macro for sid direct interfacing
        audio_sidpoke(chip, reg, val)
    ============================================================================
 */

#include <stdint.h>

#include "apis.h"
#include "audio/audio.h"
#include "sid_midi_soundfont.h"

// Macro wrapper mapping local call to API audio_poke
//#define audio_sidpoke(chip, reg, val) audio_poke((chip), (reg), (val))

// Global 6-voice array for 2SID mode
sid_voice_t voices[6];
// 32 registers per chip max for caching
static uint8_t sid_register_cache[2][32];

#define SID_PROGRAM_SCAN_LIMIT 96u
#define SID_VM_MAX_OPS_PER_TICK 96u
#define SID_PITCH_BEND_RANGE_SEMITONES 12

static const uint16_t sid_release_ticks_50hz[16] = {
    1, 2, 3, 4, 6, 9, 11, 13,
    16, 38, 76, 121, 151, 451, 751, 1201
};

static void sid_write(uint8_t chip, uint8_t reg, uint8_t value) {
    if (chip < 2 && reg < 32) {
        sid_register_cache[chip][reg] = value;
    }
    audio_sidpoke(chip, reg, value);
}

// 128-entry PAL/NTSC C64 SID frequency lookup table (MIDI notes 0 to 127)
const uint16_t sid_note_to_freq[128] = {
    // Octave 0 (C-1 to B-1)
    273,   289,   307,   325,   344,   365,   386,   410,   434,   460,   487,   516,
    // Octave 1 (C0 to B0)
    547,   579,   614,   650,   689,   730,   773,   819,   868,   920,   975,   1033,
    // Octave 2 (C1 to B1)
    1094,  1159,  1228,  1301,  1378,  1460,  1547,  1639,  1737,  1840,  1949,  2065,
    // Octave 3 (C2 to B2)
    2188,  2318,  2456,  2602,  2757,  2921,  3095,  3279,  3474,  3681,  3900,  4131,
    // Octave 4 (C3 to B3)
    4377,  4637,  4913,  5205,  5514,  5842,  6189,  6557,  6947,  7360,  7798,  8262,
    // Octave 5 (C4 to B4 - Middle C is index 60)
    8754,  9274,  9826,  10410, 11029, 11685, 12379, 13115, 13895, 14721, 15596, 16524,
    // Octave 6 (C5 to B5)
    17508, 18549, 19652, 20820, 22058, 23370, 24759, 26230, 27790, 29442, 31193, 33048,
    // Octave 7 (C6 to B6)
    35017, 37098, 39304, 41641, 44117, 46740, 49519, 52462, 55581, 58885, 62387, 65535,
    // Octave 8 (C7 to B7) - Clamped to 16-bit max (65535)
    65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535,
    // Octave 9 (C8 to B8)
    65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535,
    // Octave 10 (C9 to G9)
    65535, 65535, 65535, 65535, 65535, 65535, 65535, 65535
};


static uint8_t sid_velocity_scale_sustain(uint8_t sr, uint8_t velocity) {
    uint8_t sustain = (uint8_t)((sr >> 4) & 0x0F);
    uint8_t release = (uint8_t)(sr & 0x0F);

    sustain = (uint8_t)(((uint16_t)sustain * velocity + 63u) / 127u);
    if (sustain > 15) {
        sustain = 15;
    }

    if (sustain == 0 && velocity > 0) {
        sustain = 1;
    }

    return (uint8_t)((sustain << 4) | release);
}

static uint8_t sid_tremolo_scale_sustain(uint8_t scaled_sr, uint8_t depth, uint8_t low_phase) {
    uint8_t sustain = (uint8_t)((scaled_sr >> 4) & 0x0F);
    uint8_t release = (uint8_t)(scaled_sr & 0x0F);

    if (low_phase && depth > 0) {
        sustain = (sustain > depth) ? (uint8_t)(sustain - depth) : 0;
    }

    return (uint8_t)((sustain << 4) | release);
}

static void sid_voice_write_scaled_sr(sid_voice_t *v, uint8_t chip, uint8_t reg_base) {
    uint8_t scaled_sr = sid_velocity_scale_sustain(v->current_sr, v->velocity);
    scaled_sr = sid_tremolo_scale_sustain(scaled_sr, v->tremolo_depth, v->tremolo_low);
    sid_write(chip, reg_base + 6, scaled_sr);
}

static uint8_t sid_program_has_key_loop(const sid_instr_t *prog) {
    for (uint8_t i = 0; i < SID_PROGRAM_SCAN_LIMIT; i++) {
        if (prog[i].opcode == SID_OP_HOLD || prog[i].opcode == SID_OP_WHILE_NOTE) {
            return 1;
        }

        if (prog[i].opcode == SID_OP_END) {
            return 0;
        }
    }

    return 0;
}

static void sid_vm_skip_forward(sid_voice_t *v, uint16_t instructions) {
    if (instructions == 0) {
        v->pc++;
    } else {
        v->pc += instructions;
    }
}

static void sid_vm_jump_back(sid_voice_t *v, uint16_t instructions) {
    if (instructions == 0) {
        v->pc++;
    } else {
        v->pc -= instructions;
    }
}

static uint16_t sid_freq_for_offset_bend(uint8_t base_note, int8_t note_offset, int16_t bend) {
    int32_t bend_units;
    int32_t bend_semis;
    int32_t bend_frac;

    if (bend >= 0) {
        bend_units = ((int32_t)bend * SID_PITCH_BEND_RANGE_SEMITONES * 8192) / 8191;
    } else {
        bend_units = (int32_t)bend * SID_PITCH_BEND_RANGE_SEMITONES;
    }

    bend_semis = bend_units / 8192;
    bend_frac = bend_units % 8192;

    if (bend_frac < 0) {
        bend_frac += 8192;
        bend_semis--;
    }

    int32_t note = (int32_t)base_note + note_offset + bend_semis;

    if (note < 0) {
        note = 0;
        bend_frac = 0;
    } else if (note >= 127) {
        note = 127;
        bend_frac = 0;
    }

    uint16_t f0 = sid_note_to_freq[note];
    uint16_t f1 = sid_note_to_freq[(note < 127) ? (note + 1) : note];
    int32_t delta = (int32_t)f1 - f0;

    return (uint16_t)(f0 + ((delta * bend_frac) / 8192));
}

static void sid_voice_apply_note_offset(sid_voice_t *v, uint8_t chip, uint8_t reg_base, int8_t note_offset) {
    uint16_t freq;

    v->note_offset = note_offset;
    freq = sid_freq_for_offset_bend(v->base_note, note_offset, v->pitch_bend);
    v->current_freq = freq;
    sid_write(chip, reg_base + 0, freq & 0xFF);
    sid_write(chip, reg_base + 1, (freq >> 8) & 0xFF);
}

static void sid_voice_clear_gate(uint8_t chip, uint8_t reg_base) {
    uint8_t ctrl = sid_register_cache[chip][reg_base + 4] & (uint8_t)~0x01;
    sid_write(chip, reg_base + 4, ctrl);
}

static void sid_voice_hard_silence(uint8_t chip, uint8_t reg_base) {
    sid_write(chip, reg_base + 4, 0x08);
    sid_write(chip, reg_base + 5, 0x00);
    sid_write(chip, reg_base + 6, 0x00);
}

static void sid_voice_begin_release_cleanup(sid_voice_t *v, uint8_t chip, uint8_t reg_base) {
    sid_voice_clear_gate(chip, reg_base);
    v->released = 1;
    v->release_cleanup = 1;
    v->wait_ticks = v->release_ticks;
    v->sweep_rate = 0;
    v->porta_delta = 0;
    v->arp_active = 0;
    v->vibrato_depth = 0;
    v->tremolo_depth = 0;
}

static void sid_voice_mark_key_released(sid_voice_t *v, uint8_t chip, uint8_t reg_base) {
    sid_voice_clear_gate(chip, reg_base);
    v->released = 1;
    v->wait_ticks = 0;
    v->sweep_rate = 0;
    v->porta_delta = 0;
    v->arp_active = 0;
    v->vibrato_depth = 0;
    v->tremolo_depth = 0;
}


// Convert virtual voice index (0..5) to chip (0..1) and base register offset (0, 7, 14)
void get_voice_target(uint8_t voice_index, uint8_t *chip, uint8_t *reg_offset) {
    *chip = voice_index / 3;             // Voices 0..2 = SID 1, Voices 3..5 = SID 2
    *reg_offset = (voice_index % 3) * 7; // Voice 0/3 = 0, Voice 1/4 = 7, Voice 2/5 = 14
}


static void sid_vm_process_voice(uint8_t voice_index) {
    sid_voice_t *v = &voices[voice_index];

    uint8_t chip, reg_base;
    get_voice_target(voice_index, &chip, &reg_base);

    if (v->release_cleanup) {
        if (v->wait_ticks > 0) {
            v->wait_ticks--;
            return;
        }

        sid_voice_hard_silence(chip, reg_base);
        v->release_cleanup = 0;
        v->active = 0;
        return;
    }

    // --- Per-Tick Persistent Modulation Processing ---
    
    // 1. Handle Pitch Sweep (Raw delta added/subtracted directly every tick)
    if (v->sweep_rate != 0) {
        int32_t new_freq = (int32_t)v->current_freq + v->sweep_rate;
        if (new_freq > 65535) new_freq = 65535;
        if (new_freq < 0)     new_freq = 0;
        
        v->current_freq = (uint16_t)new_freq;
        sid_write(chip, reg_base + 0, v->current_freq & 0xFF);        // FRELO
        sid_write(chip, reg_base + 1, (v->current_freq >> 8) & 0xFF); // FREHI
    }

    // 2. Handle Portamento Pitch Slide
    if (v->porta_delta != 0) {
        int32_t new_freq = (int32_t)v->current_freq + v->porta_delta;
        if (new_freq > 65535) new_freq = 65535;
        if (new_freq < 0)     new_freq = 0;

        v->current_freq = (uint16_t)new_freq;
        sid_write(chip, reg_base + 0, v->current_freq & 0xFF);        // FRELO
        sid_write(chip, reg_base + 1, (v->current_freq >> 8) & 0xFF); // FREHI
    }

    // 3. Handle Arpeggio
    if (v->arp_active) {
        v->arp_step = (v->arp_step + 1) % 3;
        sid_voice_apply_note_offset(v, chip, reg_base, v->arp_offsets[v->arp_step]);
    }

    // 4. Handle Vibrato around the live pitch center without changing current_freq.
    if (v->vibrato_depth != 0 && v->vibrato_rate != 0) {
        v->vibrato_tick++;
        if (v->vibrato_tick >= v->vibrato_rate) {
            v->vibrato_tick = 0;
            v->vibrato_dir = (int8_t)-v->vibrato_dir;
        }

        int32_t vib_freq = (int32_t)v->current_freq + ((int32_t)v->vibrato_depth * v->vibrato_dir);
        if (vib_freq > 65535) vib_freq = 65535;
        if (vib_freq < 0)     vib_freq = 0;

        sid_write(chip, reg_base + 0, vib_freq & 0xFF);
        sid_write(chip, reg_base + 1, (vib_freq >> 8) & 0xFF);
    }

    // 5. Handle Tremolo by moving the sustain nibble while keeping release intact.
    if (v->tremolo_depth != 0 && v->tremolo_rate != 0 && v->current_sr != 0) {
        v->tremolo_tick++;
        if (v->tremolo_tick >= v->tremolo_rate) {
            v->tremolo_tick = 0;
            v->tremolo_low = (uint8_t)!v->tremolo_low;
            sid_voice_write_scaled_sr(v, chip, reg_base);
        }
    }

    // Delay handling
    if (v->wait_ticks > 0) {
        v->wait_ticks--;
        return;
    }

    // --- Opcode Execution Loop ---
    uint8_t op_budget = SID_VM_MAX_OPS_PER_TICK;
    while (v->active) {
        if (op_budget == 0) {
            v->wait_ticks = 1;
            return;
        }
        op_budget--;

        sid_instr_t instr = *v->pc;
        uint32_t pc_offset = (uint32_t)(v->pc - v->start_pc);
        if (pc_offset < SID_PROGRAM_SCAN_LIMIT) {
            v->debug_pc_index = (uint8_t)pc_offset;
        }

        switch (instr.opcode) {
            case SID_OP_END: {
                // Gate off voice on program end
                if (v->released) {
                    sid_voice_begin_release_cleanup(v, chip, reg_base);
                } else {
                    sid_voice_clear_gate(chip, reg_base);
                    v->active = 0;
                }
                return;
            }

            case SID_OP_WAIT:
                v->wait_ticks = instr.value;
                v->pc++;
                return;

            case SID_OP_WAVE:
                // Write directly to Control Register (offset +4)
                sid_write(chip, reg_base + 4, (uint8_t)instr.value);
                v->pc++;
                break;

            case SID_OP_ADSR:
                // Value HI = Attack/Decay (+5), Value LO = Sustain/Release (+6)
                v->current_sr = (uint8_t)(instr.value & 0xFF);
                sid_write(chip, reg_base + 5, (instr.value >> 8) & 0xFF);
                sid_write(chip, reg_base + 6, (instr.value & 0xFF));
                sid_voice_write_scaled_sr(v, chip, reg_base);
                v->release_ticks = sid_release_ticks_50hz[instr.value & 0x0F];
                v->pc++;
                break;

            case SID_OP_PULSE:
                v->pulse_width = instr.value & 0x0FFF;
                sid_write(chip, reg_base + 2, v->pulse_width & 0xFF);        // PWLO
                sid_write(chip, reg_base + 3, (v->pulse_width >> 8) & 0x0F); // PWHI
                v->pc++;
                break;

            case SID_OP_ADDPWM:
                v->pulse_width += instr.value;
                if (v->pulse_width > 4095) v->pulse_width = 4095; // Clamp 12-bit max
                sid_write(chip, reg_base + 2, v->pulse_width & 0xFF);
                sid_write(chip, reg_base + 3, (v->pulse_width >> 8) & 0x0F);
                v->pc++;
                break;

            case SID_OP_DECPWM:
                if (v->pulse_width >= instr.value) {
                    v->pulse_width -= instr.value;
                } else {
                    v->pulse_width = 0; // Clamp 12-bit min
                }
                sid_write(chip, reg_base + 2, v->pulse_width & 0xFF);
                sid_write(chip, reg_base + 3, (v->pulse_width >> 8) & 0x0F);
                v->pc++;
                break;

            case SID_OP_PITCH: {
                v->pitch_offset = (int8_t)instr.value;
                sid_voice_apply_note_offset(v, chip, reg_base, v->pitch_offset);
                v->pc++;
                break;
            }

            case SID_OP_PORTA:
                v->porta_delta = (int16_t)instr.value;
                v->pc++;
                break;

            case SID_OP_ARP:
                if (instr.value == 0) {
                    v->arp_active = 0;
                } else {
                    v->arp_active = 1;
                    v->arp_offsets[0] = 0;
                    v->arp_offsets[1] = (int8_t)(instr.value >> 8);
                    v->arp_offsets[2] = (int8_t)(instr.value & 0xFF);
                }
                v->pc++;
                break;

            case SID_OP_PITCHSWEEP:
                // Signed 16-bit payload added/subtracted directly from raw SID frequency register every 20ms
                v->sweep_rate = (int16_t)instr.value;
                v->pc++;
                break;

            case SID_OP_VIBRATO:
                v->vibrato_depth = (uint8_t)(instr.value >> 8);
                v->vibrato_rate = (uint8_t)(instr.value & 0xFF);
                v->vibrato_tick = 0;
                v->vibrato_dir = 1;
                v->pc++;
                break;

            case SID_OP_TREMOLO:
                v->tremolo_depth = (uint8_t)(instr.value >> 8);
                v->tremolo_rate = (uint8_t)(instr.value & 0xFF);
                v->tremolo_tick = 0;
                v->tremolo_low = 0;
                if (v->current_sr != 0) {
                    sid_voice_write_scaled_sr(v, chip, reg_base);
                }
                v->pc++;
                break;

            case SID_OP_HOLD:
                if (!v->released) {
                    if (instr.value == 0) {
                        v->wait_ticks = 1;
                        return;
                    }

                    v->pc -= instr.value;
                } else {
                    v->pc++;
                }
                break;

            case SID_OP_SETVAR:
                v->vars[instr.param8 & 0x03] = (int16_t)instr.value;
                v->pc++;
                break;

            case SID_OP_ADDVAR:
                v->vars[instr.param8 & 0x03] += (int16_t)instr.value;
                v->pc++;
                break;

            case SID_OP_WHILE_NOTE:
                if (v->released) {
                    sid_vm_skip_forward(v, instr.value);
                } else {
                    v->pc++;
                }
                break;

            case SID_OP_WHILE_GT: {
                uint8_t var_index = instr.param8 & 0x03;
                int8_t threshold = (int8_t)(instr.value >> 8);
                uint8_t skip = (uint8_t)(instr.value & 0xFF);

                if (v->vars[var_index] > threshold) {
                    v->pc++;
                } else {
                    sid_vm_skip_forward(v, skip);
                }
                break;
            }

            case SID_OP_LOOP_BACK:
                sid_vm_jump_back(v, instr.value);
                break;

            case SID_OP_FILTER:
                // Filter is global per chip!
                // param8 = Mode/Resonance (reg 0x18), value = Cutoff frequency (reg 0x15/0x16)
                sid_write(chip, 0x15, instr.value & 0x07);         // Cutoff Low (3 bits)
                sid_write(chip, 0x16, (instr.value >> 3) & 0xFF);   // Cutoff High (8 bits)
                sid_write(chip, 0x18, instr.param8);                // Mode / Volume
                v->pc++;
                break;

            case SID_OP_LOOP:
                if (instr.value == 0) {
                    // Jump offset is 0: Treat as a 1-tick pause instead of an instant infinite loop
                    v->wait_ticks = 1;
                    return;
                }

                if (instr.param8 == 0) {
                    v->pc -= instr.value; // Infinite loop back
                } else {
                    if (v->loop_count == 0) {
                        v->loop_count = instr.param8;
                    }
                    v->loop_count--;
                    if (v->loop_count > 0) {
                        v->pc -= instr.value; // Jump back in same tick
                    } else {
                        v->pc++; // Done looping, advance past LOOP opcode
                    }
                }
                break;

            case SID_OP_JUMP: {
                uint32_t target_offset = instr.value;
                uint32_t current_offset = v->pc - v->start_pc;

                if (target_offset == current_offset) {
                    // JUMP points to itself: advance PC past the jump to avoid locking the tick loop
                    v->pc++;
                } else {
                    v->pc = v->start_pc + target_offset;
                }
                break;
            }

            default:
                v->active = 0;
                return;
        }
    }
}



void sid_voice_set_program(uint8_t voice_index, uint8_t program_num, uint8_t midi_note) {
    if (voice_index >= 6 || program_num >= 128) return;

    sid_voice_t *v = &voices[voice_index];

    // Pointer to preset sequence in SoundFont bank
    const sid_instr_t *prog = sid_soundfont_bank[program_num];
    if (!prog) return;

    v->pc          = prog;
    v->start_pc    = prog;
    v->base_note   = midi_note;
    v->current_sr  = 0;
    v->released    = 0;
    v->keyoff_enabled = sid_program_has_key_loop(prog);
    v->release_cleanup = 0;
    v->debug_pc_index = 0;
    v->release_ticks = sid_release_ticks_50hz[0];
    v->wait_ticks  = 0;
    v->loop_count  = 0;
    v->vars[0]     = 0;
    v->vars[1]     = 0;
    v->vars[2]     = 0;
    v->vars[3]     = 0;
    v->pitch_bend  = 0;
    v->note_offset = 0;
    v->pitch_offset= 0;
    v->porta_delta = 0;
    v->sweep_rate  = 0;
    v->arp_active  = 0;
    v->vibrato_depth = 0;
    v->vibrato_rate  = 0;
    v->vibrato_tick  = 0;
    v->vibrato_dir   = 1;
    v->tremolo_depth = 0;
    v->tremolo_rate  = 0;
    v->tremolo_tick  = 0;
    v->tremolo_low   = 0;

    // Calculate and store initial note frequency
    uint8_t chip, reg_base;
    get_voice_target(voice_index, &chip, &reg_base);
    uint16_t freq = sid_note_to_freq[midi_note > 127 ? 127 : midi_note];
    v->current_freq = freq;

    // Immediately push initial frequency to hardware registers
    sid_write(chip, reg_base + 0, freq & 0xFF);        // FRELO
    sid_write(chip, reg_base + 1, (freq >> 8) & 0xFF); // FREHI

    v->active      = 1; // Start VM execution on next tick
}


void sid_voice_note_on(uint8_t voice_index, uint8_t program_num, uint8_t midi_note, uint8_t velocity) {
    if (voice_index >= 6 || velocity == 0) {
        if (velocity == 0) sid_voice_note_off(voice_index);
        return;
    }

    voices[voice_index].velocity = velocity;

    // Load program into voice and mark active
    // Program 128 / GM Percussion Channel route check
    if (program_num == 128 || program_num == 9) {
        sid_midi_trigger_percussion(voice_index, midi_note, velocity);
    } else {
        // Standard Program dispatch from sid_soundfont_bank
        sid_voice_set_program(voice_index, program_num, midi_note);
    }
}

void sid_voice_note_off(uint8_t voice_index) {
    if (voice_index >= 6) return;

    sid_voice_t *v = &voices[voice_index];
    if (!v->active) return;

    uint8_t chip, reg_base;
    get_voice_target(voice_index, &chip, &reg_base);

    if (v->keyoff_enabled) {
        sid_voice_mark_key_released(v, chip, reg_base);
    } else {
        sid_voice_begin_release_cleanup(v, chip, reg_base);
    }
}

void sid_voice_note_kill(uint8_t voice_index) {
    if (voice_index >= 6) return;

    sid_voice_t *v = &voices[voice_index];
    uint8_t chip, reg_base;
    get_voice_target(voice_index, &chip, &reg_base);

    sid_voice_hard_silence(chip, reg_base);
    v->active = 0;
    v->released = 1;
    v->release_cleanup = 0;
    v->wait_ticks = 0;
    v->sweep_rate = 0;
    v->porta_delta = 0;
    v->arp_active = 0;
    v->vibrato_depth = 0;
    v->tremolo_depth = 0;
}

void sid_voice_pitch_bend(uint8_t voice_index, int16_t bend) {
    if (voice_index >= 6) return;

    sid_voice_t *v = &voices[voice_index];
    if (!v->active) return;

    uint8_t chip, reg_base;
    get_voice_target(voice_index, &chip, &reg_base);

    v->pitch_bend = bend;
    sid_voice_apply_note_offset(v, chip, reg_base, v->note_offset);
}

void sid_voice_set_velocity(uint8_t voice_index, uint8_t velocity) {
    if (voice_index >= 6) return;

    sid_voice_t *v = &voices[voice_index];
    if (!v->active || v->current_sr == 0) return;

    uint8_t chip, reg_base;
    get_voice_target(voice_index, &chip, &reg_base);

    v->velocity = velocity;
    sid_voice_write_scaled_sr(v, chip, reg_base);
}

uint8_t sid_voice_get_vm_debug(uint8_t voice_index, uint8_t *pc_index, uint8_t *running) {
    if (voice_index >= 6) return 0;

    sid_voice_t *v = &voices[voice_index];

    if (pc_index) {
        *pc_index = v->debug_pc_index;
    }

    if (running) {
        *running = (uint8_t)(v->active || v->release_cleanup);
    }

    return (uint8_t)(v->start_pc != 0);
}


void sid_soundfont_init(void) {
    // Enable full volume on both SID chips (reg 0x18 bits 3:0 = 15)
    sid_write(0, 0x18, 0x0F);
    sid_write(1, 0x18, 0x0F);

    sid_register_cache[0][0x18] = 0x0F;
    sid_register_cache[1][0x18] = 0x0F;
}


void sid_midi_isr(void) {
    for (uint8_t i = 0; i < 6; i++) {
        if (voices[i].active) {
            sid_vm_process_voice(i);
        }
    }
}
