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
    ============================================================================
 */

#include <stdint.h>

#include "sid_midi_soundfont.h"

// Global 6-voice array for 2SID mode
static sid_voice_t voices[6];

static void sid_vm_process_voice(uint8_t voice_index) {
    sid_voice_t *v = &voices[voice_index];

    // Handle persistent per-tick effects first (Portamento & Arpeggios)
    if (v->porta_delta != 0) {
        // Pitch slide updates happen every 20ms frame
        // sid_apply_pitch_slide(voice_index, v->porta_delta);
    }

    if (v->arp_active) {
        v->arp_step = (v->arp_step + 1) % 3;
        int8_t current_offset = v->arp_offsets[v->arp_step];
        // sid_set_pitch(voice_index, v->base_note + current_offset);
    }

    // Handle tick delay
    if (v->wait_ticks > 0) {
        v->wait_ticks--;
        return;
    }

    // Decode and execute instructions until WAIT or END
    while (v->active) {
        sid_instr_t instr = *v->pc;

        switch (instr.opcode) {
            case SID_OP_END:
                v->active = 0;
                return;

            case SID_OP_WAIT:
                v->wait_ticks = instr.value;
                v->pc++;
                return; // Yield until next tick cycle

            case SID_OP_WAVE:
                // param8 can target voice, or default to current
                // sid_write_register(voice_index, REG_CONTROL, (uint8_t)instr.value);
                v->pc++;
                break;

            case SID_OP_ADSR:
                // value hi-byte = Attack/Decay, lo-byte = Sustain/Release
                // sid_write_register(voice_index, REG_ATTACK_DECAY, (instr.value >> 8) & 0xFF);
                // sid_write_register(voice_index, REG_SUSTAIN_RELEASE, instr.value & 0xFF);
                v->pc++;
                break;

            case SID_OP_PULSE:
                v->pulse_width = instr.value & 0x0FFF; // Clamp 12-bit
                // sid_write_pulse_width(voice_index, v->pulse_width);
                v->pc++;
                break;

            case SID_OP_ADDPWM:
                v->pulse_width += instr.value;
                if (v->pulse_width > 4095) v->pulse_width = 4095;
                // sid_write_pulse_width(voice_index, v->pulse_width);
                v->pc++;
                break;

            case SID_OP_DECPWM:
                if (v->pulse_width >= instr.value) {
                    v->pulse_width -= instr.value;
                } else {
                    v->pulse_width = 0;
                }
                // sid_write_pulse_width(voice_index, v->pulse_width);
                v->pc++;
                break;

            case SID_OP_PITCH:
                v->pitch_offset = (int8_t)instr.value;
                // sid_set_pitch(voice_index, v->base_note + v->pitch_offset);
                v->pc++;
                break;

            case SID_OP_PORTA:
                v->porta_delta = (int16_t)instr.value; // Signed delta per tick
                v->pc++;
                break;

            case SID_OP_ARP:
                if (instr.value == 0) {
                    v->arp_active = 0; // Disable arp
                } else {
                    v->arp_active = 1;
                    v->arp_offsets[0] = 0;                          // Base
                    v->arp_offsets[1] = (int8_t)(instr.value >> 8);  // Note 2
                    v->arp_offsets[2] = (int8_t)(instr.value & 0xFF); // Note 3
                }
                v->pc++;
                break;

            case SID_OP_FILTER:
                // param8 = Mode/Resonance, value = Cutoff frequency
                // sid_write_register(0, REG_FILTER_CUTOFF, instr.value & 0xFF);
                // sid_write_register(0, REG_FILTER_MODE, instr.param8);
                v->pc++;
                break;

            case SID_OP_LOOP:
                // param8 = Loop count (0 = infinite)
                // value  = Instructions to jump backward
                if (instr.param8 == 0) {
                    v->pc -= instr.value; // Infinite loop
                } else {
                    if (v->loop_count == 0) {
                        v->loop_count = instr.param8; // Load loop count on first pass
                    }
                    v->loop_count--;
                    if (v->loop_count > 0) {
                        v->pc -= instr.value; // Loop back
                    } else {
                        v->pc++; // Loop finished, move to next instruction
                    }
                }
                break;

            case SID_OP_JUMP:
                // Absolute jump relative to program start
                v->pc = v->start_pc + instr.value;
                break;

            default:
                v->active = 0;
                return;
        }
    }
}

void sid_midi_isr(void) {
    for (uint8_t i = 0; i < 6; i++) {
        if (voices[i].active) {
            sid_vm_process_voice(i);
        }
    }
}