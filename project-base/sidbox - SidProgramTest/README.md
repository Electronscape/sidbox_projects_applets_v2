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
| `0x15` | `SID_OP_LOOP_BACK` | unused | jump-back amount | Jumps back by `value` instructions to re-test the current loop. `SID_OP_END_WHILE` still exists as a compatibility alias. |

Loop offsets are counted in VM instruction rows, not bytes. For example, if row 8 is `{ SID_OP_LOOP_BACK, 0, 4 }`, the VM jumps back four rows to row 4.

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
    { SID_OP_ADSR,  0, 0x0342 }, // quick attack/decay, medium sustain, short release
    { SID_OP_PULSE, 0, 0x0900 }, // start with a wide pulse
    { SID_OP_WAVE,  0, 0x41 },   // pulse waveform + gate on
    { SID_OP_WAIT,  0, 1 },      // let the transient speak for one tick
    { SID_OP_PULSE, 0, 0x0300 }, // snap to a narrower pulse for the body
    { SID_OP_HOLD,  0, 0 },      // stay here while the key is held
    { SID_OP_END,   0, 0 }       // on key-off, allow release cleanup
};
```

PWM loop while the key is held:

```c
static const sid_instr_t prg_pwm_hold[] = {
    { SID_OP_ADSR,   0, 0x00F4 }, // instant attack, high sustain, medium release
    { SID_OP_PULSE,  0, 0x0180 }, // begin with a narrow pulse
    { SID_OP_WAVE,   0, 0x41 },   // pulse waveform + gate on
    { SID_OP_ADDPWM, 0, 0x0060 }, // widen the pulse
    { SID_OP_WAIT,   0, 1 },      // wait one tick between PWM steps
    { SID_OP_LOOP,   32, 2 },     // repeat the widen+wait pair 32 times
    { SID_OP_DECPWM, 0, 0x0060 }, // narrow the pulse again
    { SID_OP_WAIT,   0, 1 },      // wait one tick between PWM steps
    { SID_OP_LOOP,   32, 2 },     // repeat the narrow+wait pair 32 times
    { SID_OP_HOLD,   0, 6 },      // while held, jump back to the PWM section
    { SID_OP_END,    0, 0 }       // on key-off, release and stop
};
```

Conditional-loop demo:

```c
static const sid_instr_t prg_conditional_loop_demo[] = {
    { SID_OP_ADSR,       0, 0x00FF },        // 00: instant attack, full sustain, long release
    { SID_OP_PULSE,      0, 0x0200 },        // 01: start with a narrow pulse
    { SID_OP_WAVE,       0, 0x41 },          // 02: pulse waveform + gate on
    { SID_OP_SETVAR,     0, 10 },            // 03: var0 = 10
    { SID_OP_WHILE_GT,   0, 0x0405 },        // 04: if var0 <= 4, skip 5 rows to row 09
    { SID_OP_ADDPWM,     0, 0x0100 },        // 05: widen pulse
    { SID_OP_WAIT,       0, 1 },             // 06: wait one tick
    { SID_OP_ADDVAR,     0, (uint16_t)-1 },  // 07: var0--
    { SID_OP_LOOP_BACK,  0, 4 },             // 08: jump back 4 rows to row 04
    { SID_OP_WHILE_NOTE, 0, 6 },             // 09: if key is released, skip 6 rows to row 15
    { SID_OP_ADDPWM,     0, 0x0040 },        // 10: widen pulse a little
    { SID_OP_WAIT,       0, 1 },             // 11: wait one tick
    { SID_OP_DECPWM,     0, 0x0040 },        // 12: narrow pulse back down
    { SID_OP_WAIT,       0, 1 },             // 13: wait one tick
    { SID_OP_LOOP_BACK,  0, 5 },             // 14: jump back 5 rows to row 09
    { SID_OP_END,        0, 0 }              // 15: on key-off, release and stop
};
```

Two-variable conditional-loop demo:

This one uses `var0` as an inner PWM wiggle counter and `var1` as an outer group counter. The note-held loop runs four groups of three PWM wiggles, resets `var1`, then keeps going until key-off.

```c
static const sid_instr_t prg_two_var_loop_demo[] = {
    { SID_OP_ADSR,       0, 0x00F4 },        // 00: instant attack, high sustain, medium release
    { SID_OP_PULSE,      0, 0x0200 },        // 01: start with a narrow pulse
    { SID_OP_WAVE,       0, 0x41 },          // 02: pulse waveform + gate on
    { SID_OP_SETVAR,     1, 4 },             // 03: var1 = 4, outer group counter
    { SID_OP_WHILE_NOTE, 0, 14 },            // 04: if key is released, skip 14 rows to row 18
    { SID_OP_WHILE_GT,   1, 0x000B },        // 05: if var1 <= 0, skip 11 rows to row 16
    { SID_OP_SETVAR,     0, 3 },             // 06: var0 = 3, inner wiggle counter
    { SID_OP_WHILE_GT,   0, 0x0007 },        // 07: if var0 <= 0, skip 7 rows to row 14
    { SID_OP_ADDPWM,     0, 0x0080 },        // 08: widen pulse
    { SID_OP_WAIT,       0, 1 },             // 09: wait one tick
    { SID_OP_DECPWM,     0, 0x0080 },        // 10: narrow pulse
    { SID_OP_WAIT,       0, 1 },             // 11: wait one tick
    { SID_OP_ADDVAR,     0, (uint16_t)-1 },  // 12: var0--, one wiggle finished
    { SID_OP_LOOP_BACK,  0, 6 },             // 13: jump back 6 rows to row 07
    { SID_OP_ADDVAR,     1, (uint16_t)-1 },  // 14: var1--, one group finished
    { SID_OP_LOOP_BACK,  0, 10 },            // 15: jump back 10 rows to row 05
    { SID_OP_SETVAR,     1, 4 },             // 16: reset var1 after four groups
    { SID_OP_LOOP_BACK,  0, 13 },            // 17: jump back 13 rows to row 04
    { SID_OP_END,        0, 0 }              // 18: on key-off, release and stop
};
```

## Notes And Gotchas

- `SID_OP_HOLD` and `SID_OP_WHILE_NOTE` make key-off behavior nicer. Without one of these, note-off goes straight into SID release cleanup.
- `SID_OP_SETVAR` and `SID_OP_ADDVAR` use `param8 & 3`, so only variables `0..3` exist. `value` is treated as signed when adding/comparing.
- `SID_OP_ADSR` release nibble controls the cleanup delay. Very long release values will remain audible longer.
- Velocity scales the sustain nibble, not the SID chip volume register.
- Pitch bend is handled outside the program by the voice engine.
- `SID_OP_FILTER` is chip-global. It can make cool sounds, but it can also stomp on other voices sharing the same SID chip.
- The VM has a per-tick opcode budget to avoid instant infinite loops. A runaway program will yield rather than locking the box.
- The GUI VM page can show the live program counter for the selected channel while a note is active.
