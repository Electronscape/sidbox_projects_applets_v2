# SID MIDI Program Test

Live MIDI-controlled SID synth applet for SidBox. Incoming MIDI notes are routed to a small SID program VM, with per-channel program assignment, gain controls, percussion routing, and a VM code viewer.

## VM Program Shape

Programs are arrays of `sid_instr_t`:

```c
typedef struct {
    uint8_t  opcode;
    uint8_t  param8;
    uint16_t value;
} sid_instr_t;
```

The VM runs at the LCD/VBL tick rate, currently 50Hz. Most opcodes execute immediately and the VM continues to the next opcode in the same tick. `WAIT`, `HOLD`, `END`, some loops, and exhausted VM budget yield until a later tick.

Every program should end with:

```c
{ SID_OP_END, 0, 0 }
```

## Opcode Cheat Sheet

| Opcode | Name | `param8` | `value` | What it does |
|---:|---|---|---|---|
| `0x00` | `SID_OP_END` | unused | unused | Ends the program. If note-off/release is active, starts release cleanup; otherwise gates off and stops the voice. |
| `0x01` | `SID_OP_WAIT` | unused | ticks | Pauses VM execution. `1` waits one 50Hz tick. `0` still yields until the next VM tick. |
| `0x02` | `SID_OP_WAVE` | unused | SID control byte | Writes the SID voice control register. Use bit 0 for gate. Example: `0x41` = pulse + gate on. |
| `0x03` | `SID_OP_ADSR` | unused | `0xAADDSSRR` style byte pair | High byte writes Attack/Decay, low byte writes Sustain/Release. Sustain is velocity-scaled by the VM. |
| `0x04` | `SID_OP_PULSE` | unused | `0..0x0FFF` | Sets absolute pulse width. |
| `0x05` | `SID_OP_PITCH` | unused | signed 8-bit semitone offset | Sets note offset from the MIDI note. Example: `12` is one octave up, `0` returns to root. |
| `0x06` | `SID_OP_ADDPWM` | unused | delta | Adds to current pulse width, clamped to `0x0FFF`. |
| `0x07` | `SID_OP_DECPWM` | unused | delta | Subtracts from current pulse width, clamped to `0`. |
| `0x08` | `SID_OP_PORTA` | unused | signed 16-bit delta | Adds a raw SID frequency delta every tick for portamento/slide. Use `0` to stop. |
| `0x09` | `SID_OP_ARP` | unused | high=offset A, low=offset B | Enables a 3-step arpeggio: root, offset A, offset B. `value=0` disables arp. Offsets are signed 8-bit semitones. |
| `0x0A` | `SID_OP_FILTER` | mode/res/volume byte | cutoff | Writes chip-global filter registers. Be careful: this affects the whole SID chip, not just one voice. |
| `0x0B` | `SID_OP_LOOP` | repeat count | jump-back amount | Jumps back `value` instructions. `param8=0` loops forever. Nonzero `param8` repeats that many times. |
| `0x0C` | `SID_OP_JUMP` | unused | absolute instruction index | Sets PC to `start + value`. If jumping to itself, VM advances instead to avoid a hard lock. |
| `0x0D` | `SID_OP_PITCHSWEEP` | unused | signed 16-bit delta | Adds raw SID frequency delta every tick for pitch drops/rises. Use `0` to stop. |
| `0x0E` | `SID_OP_VIBRATO` | unused | high=depth, low=rate | Persistent pitch wobble around current frequency. Rate is half-cycle ticks. |
| `0x0F` | `SID_OP_HOLD` | unused | jump-back amount | While key is held, loops back by `value`. If `value=0`, waits one tick on this opcode. On key-off, advances. |
| `0x10` | `SID_OP_TREMOLO` | unused | high=depth, low=rate | Persistent volume wobble by lowering the sustain nibble. Rate is half-cycle ticks. |
| `0x11` | `SID_OP_SETVAR` | var index | signed 16-bit value | Sets one of four per-voice variables: `vars[param8 & 3] = value`. |
| `0x12` | `SID_OP_ADDVAR` | var index | signed 16-bit delta | Adds to one of four per-voice variables. |
| `0x13` | `SID_OP_WHILE_NOTE` | unused | skip amount | If note is released, skips forward by `value`; otherwise enters/continues the loop body. |
| `0x14` | `SID_OP_WHILE_GT` | var index | high=threshold, low=skip | If `vars[param8 & 3] > signed threshold`, continues; otherwise skips forward by low byte. |
| `0x15` | `SID_OP_END_WHILE` | unused | jump-back amount | Jumps back by `value` instructions to the matching while/test area. |

## SID Control Byte Quick Reference

For `SID_OP_WAVE`, `value` is written directly to the SID control register:

| Bit | Hex | Meaning |
|---:|---:|---|
| 0 | `0x01` | Gate |
| 1 | `0x02` | Sync |
| 2 | `0x04` | Ring mod |
| 3 | `0x08` | Test |
| 4 | `0x10` | Triangle |
| 5 | `0x20` | Saw |
| 6 | `0x40` | Pulse |
| 7 | `0x80` | Noise |

Common values:

```c
0x11 // triangle + gate
0x21 // saw + gate
0x41 // pulse + gate
0x81 // noise + gate
0x40 // pulse, gate off
0x08 // test bit, used by hard silence cleanup
```

## Example Programs

Simple pulse pluck with key hold:

```c
static const sid_instr_t prg_simple_pluck[] = {
    { SID_OP_ADSR,  0, 0x0342 },
    { SID_OP_PULSE, 0, 0x0900 },
    { SID_OP_WAVE,  0, 0x41 },
    { SID_OP_WAIT,  0, 1 },
    { SID_OP_PULSE, 0, 0x0300 },
    { SID_OP_HOLD,  0, 0 },
    { SID_OP_END,   0, 0 }
};
```

PWM loop while the key is held:

```c
static const sid_instr_t prg_pwm_hold[] = {
    { SID_OP_ADSR,   0, 0x00F4 },
    { SID_OP_PULSE,  0, 0x0180 },
    { SID_OP_WAVE,   0, 0x41 },
    { SID_OP_ADDPWM, 0, 0x0060 },
    { SID_OP_WAIT,   0, 1 },
    { SID_OP_LOOP,   32, 2 },
    { SID_OP_DECPWM, 0, 0x0060 },
    { SID_OP_WAIT,   0, 1 },
    { SID_OP_LOOP,   32, 2 },
    { SID_OP_HOLD,   0, 6 },
    { SID_OP_END,    0, 0 }
};
```

Conditional-loop demo:

```c
static const sid_instr_t prg_conditional_loop_demo[] = {
    { SID_OP_ADSR,       0, 0x00FF },
    { SID_OP_PULSE,      0, 0x0200 },
    { SID_OP_WAVE,       0, 0x41 },
    { SID_OP_SETVAR,     0, 10 },
    { SID_OP_WHILE_GT,   0, 0x0405 },
    { SID_OP_ADDPWM,     0, 0x0100 },
    { SID_OP_WAIT,       0, 1 },
    { SID_OP_ADDVAR,     0, (uint16_t)-1 },
    { SID_OP_END_WHILE,  0, 4 },
    { SID_OP_WHILE_NOTE, 0, 13 },
    { SID_OP_ADDPWM,     0, 0x0040 },
    { SID_OP_WAIT,       0, 1 },
    { SID_OP_DECPWM,     0, 0x0040 },
    { SID_OP_WAIT,       0, 1 },
    { SID_OP_END_WHILE,  0, 5 },
    { SID_OP_END,        0, 0 }
};
```

## Notes And Gotchas

- `SID_OP_HOLD` and `SID_OP_WHILE_NOTE` make key-off behavior nicer. Without one of these, note-off goes straight into SID release cleanup.
- `SID_OP_ADSR` release nibble controls the cleanup delay. Very long release values will remain audible longer.
- Velocity scales the sustain nibble, not the SID chip volume register.
- Pitch bend is handled outside the program by the voice engine.
- `SID_OP_FILTER` is chip-global. It can make cool sounds, but it can also stomp on other voices sharing the same SID chip.
- The VM has a per-tick opcode budget to avoid instant infinite loops. A runaway program will yield rather than locking the box.
- The GUI VM page can show the live program counter for the selected channel while a note is active.
