#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "main.h"
#include "apis.h"

#include "audio/audio.h"
#include "graphics/graphics.h"

#include "sid_midi_soundfont.h"

#define APP_INVALID_WINDOW ((CGWindow)0xFF)

#define TXTAPP_TITLE    "SID Midi Program Test"
#define TESTAPP_WIN_X    24
#define TESTAPP_WIN_Y    20
#define TESTAPP_WIN_W    300
#define TESTAPP_WIN_H    200

#define SHAPES_PER_TICK 6
#define MIDI_CHANNEL_COUNT 16
#define SID_MIDI_VOICES 6
#define MIDI_DRUM_CHANNEL 9
#define MIDI_EVENT_QUEUE_SIZE 128
#define MIDI_EVENT_QUEUE_MASK (MIDI_EVENT_QUEUE_SIZE - 1)
#define MIDI_UI_PROGRAM_STEP_FAST 10
#define MIDI_STUCK_NOTE_TIMEOUT_TICKS (50u * 12u)
#define MIDI_GLOBAL_GAIN_DEFAULT 200u
#define MIDI_GLOBAL_GAIN_MIN 0u
#define MIDI_GLOBAL_GAIN_MAX 300u
#define MIDI_GLOBAL_GAIN_STEP 10u
#define UI_SCREEN_W 480
#define UI_SCREEN_H 320
#define UI_FONT_W 8
#define UI_FONT_H 16
#define UI_PAGE_COUNT 5u
#define UI_VM_ROWS 7u
#define UI_VM_SCAN_LIMIT 96u
#define UI_MOUSE_LEFT BTN_FIRE
#define UI_MOUSE_RIGHT BTN_FIRE2

typedef enum {
    UI_PAGE_HOME = 0,
    UI_PAGE_CHANNELS,
    UI_PAGE_MIXER,
    UI_PAGE_PERC,
    UI_PAGE_VM
} ui_page_t;

typedef struct {
    int16_t x;
    int16_t y;
    uint8_t down;
    uint8_t pressed;
    uint8_t buttons;
    uint8_t left_pressed;
    uint8_t right_pressed;
} ui_pointer_t;

// MIDI channels are zero-based here: 0 = channel 1, 9 = channel 10/drums.
// Program Change messages from a controller will override these while the applet runs.
static const uint8_t midi_default_channel_program[MIDI_CHANNEL_COUNT] = {
    80,  // Ch 1  Lead square
    38,  // Ch 2  Synth bass
    83,  // Ch 3  Fast arp lead
    81,  // Ch 4  PWM lead
    0,   // Ch 5  Piano-ish default
    19,  // Ch 6  Organ
    30,  // Ch 7  Distortion guitar
    82,  // Ch 8  Arp lead
    4,   // Ch 9  Honky-tonk
    128, // Ch 10 GM drums/percussion
    80,  // Ch 11
    38,  // Ch 12
    83,  // Ch 13
    81,  // Ch 14
    0,   // Ch 15
    127  // Ch 16 Gunshot/noise FX
};

static uint32_t sid_ui_palette[256] = {
    [0]  = 0x00000000,
    [1]  = 0xFF101018,
    [2]  = 0xFF1F2937,
    [3]  = 0xFF1E5AA8,
    [4]  = 0xFF2563EB,
    [5]  = 0xFF7C8798,
    [6]  = 0xFFC7D2E0,
    [7]  = 0xFFE8EEF7,
    [8]  = 0xFF16A34A,
    [9]  = 0xFF22C55E,
    [10] = 0xFFF59E0B,
    [11] = 0xFFFFD166,
    [12] = 0xFFDC2626,
    [13] = 0xFFEF4444,
    [14] = 0xFF38BDF8,
    [15] = 0xFFFFFFFF,
    [16] = 0xFF090D14,
    [17] = 0xFF0E1520,
    [18] = 0xFF121C2A,
    [19] = 0xFF172638,
    [20] = 0xFF20334A,
    [21] = 0xFF2B405A,
    [22] = 0xFF3C536C,
    [23] = 0xFF5B7188,
    [24] = 0xFF7F93A8,
    [25] = 0xFFB8C7D6,
    [26] = 0xFF05080D,
    [27] = 0xFF1A2431,
    [28] = 0xFF344860,
    [29] = 0xFF6F8AA5,
    [30] = 0xFFD4E1EE,
    [31] = 0xFF101721
};

#define WIN_DEFAULT     (SBX_WF_VISIBLE    |\
                         SBX_WF_CLOSE      |\
                         SBX_WF_TITLE_BAR  |\
                         SBX_WF_ZORDER     |\
                         SBX_WF_MINIMISE   |\
                         SBX_WF_MOVEABLE   |\
                         SBX_WF_SCREENBOUND)


static CGWindow testapp_win;
static CGTimer draw_timer = CGTIMER_INVALID;
static cg_menu_t demo_menu = CG_MENU_INVALID;
static cg_menuitem_t menu_exit  = CG_MENUITEM_INVALID;

static volatile uint8_t app_running;

static CGWindowProcRes testapp_proc(CGWindow win, const CGMessage_t *m);

typedef enum {
    MIDI_APP_EVENT_NOTE_OFF = 0,
    MIDI_APP_EVENT_NOTE_ON,
    MIDI_APP_EVENT_PROGRAM,
    MIDI_APP_EVENT_PITCH_BEND,
    MIDI_APP_EVENT_CONTROL,
    MIDI_APP_EVENT_ALL_NOTES_OFF
} midi_app_event_type_t;

typedef struct {
    uint8_t type;
    uint8_t channel;
    uint8_t a;
    uint8_t b;
} midi_app_event_t;

typedef struct {
    uint8_t active;
    uint8_t channel;
    uint8_t note;
    uint8_t velocity;
    uint8_t program;
    uint16_t age_ticks;
} sid_midi_voice_alloc_t;

static volatile midi_app_event_t midi_event_queue[MIDI_EVENT_QUEUE_SIZE];
static volatile uint8_t midi_event_head;
static volatile uint8_t midi_event_tail;
static volatile uint32_t ui_all_notes_off_mask;

static sid_midi_voice_alloc_t sid_midi_voice_alloc[SID_MIDI_VOICES];
static uint8_t midi_channel_program[MIDI_CHANNEL_COUNT];
static uint8_t midi_channel_volume[MIDI_CHANNEL_COUNT];
static uint8_t midi_channel_expression[MIDI_CHANNEL_COUNT];
static uint16_t midi_global_gain_percent;
static uint16_t midi_drum_gain_percent;
static uint8_t midi_drum_enabled;
static int16_t midi_channel_bend[MIDI_CHANNEL_COUNT];
static uint8_t sid_next_voice;
static uint8_t ui_selected_channel;
static uint8_t ui_page;
static uint8_t ui_channel_bank;
static uint8_t ui_vm_scroll;
static uint8_t ui_exit_requested;
static uint8_t ui_last_joy;
static uint8_t ui_repeat_delay;
static uint8_t ui_last_pointer_down;
static uint8_t ui_last_pointer_buttons;
static int16_t ui_pointer_x;
static int16_t ui_pointer_y;
static char ui_status_message[40];
static uint8_t ui_status_ticks;
static uint32_t midi_note_on_count;
static uint32_t midi_note_off_count;
static uint32_t midi_dropped_event_count;
static uint32_t midi_panic_count;
static uint32_t midi_timeout_note_off_count;
static gfx_bitmap_t *front_a;
static gfx_bitmap_t *front_b;
MEMALIGN32 volatile gfx_bitmap_t backbitmap;    // background image
static uint8_t draw_side;
static uint8_t ui_back_dirty;
static uint32_t ui_back_hash;
static uint8_t ui_vm_follow_active;
static uint8_t ui_vm_follow_saved_scroll;
static uint8_t ui_vm_live_pc_valid;
static uint8_t ui_vm_live_pc;
static uint8_t ui_vm_live_voice;

static uint8_t midi_running_status;
static uint8_t midi_msg_status;
static uint8_t midi_msg_data[2];
static uint8_t midi_msg_count;
static uint8_t midi_msg_expected;
static uint8_t midi_in_sysex;

static void ui_create_bitmap(gfx_bitmap_t *bitmap, int16_t w, int16_t h)
{
    bitmap->memspacelen = (uint32_t)w * (uint32_t)h;
    bitmap->width = (uint16_t)w;
    bitmap->height = (uint16_t)h;
    bitmap->stride = (uint16_t)h;
    bitmap->bitmap = malloc(bitmap->memspacelen);
}

static void midi_queue_event(uint8_t type, uint8_t channel, uint8_t a, uint8_t b)
{
    uint8_t next_head = (uint8_t)((midi_event_head + 1u) & MIDI_EVENT_QUEUE_MASK);

    if (next_head == midi_event_tail) {
        if (type == MIDI_APP_EVENT_NOTE_OFF || type == MIDI_APP_EVENT_ALL_NOTES_OFF) {
            midi_event_tail = (uint8_t)((midi_event_tail + 1u) & MIDI_EVENT_QUEUE_MASK);
            midi_dropped_event_count++;
        } else {
            midi_dropped_event_count++;
            return;
        }
    }

    midi_event_queue[midi_event_head].type = type;
    midi_event_queue[midi_event_head].channel = channel;
    midi_event_queue[midi_event_head].a = a;
    midi_event_queue[midi_event_head].b = b;
    midi_event_head = next_head;
}

static void midi_dispatch_channel_message(uint8_t status, const uint8_t *data)
{
    uint8_t command = status & 0xF0u;
    uint8_t channel = status & 0x0Fu;

    switch (command) {
    case 0x80:
        midi_queue_event(MIDI_APP_EVENT_NOTE_OFF, channel, data[0], data[1]);
        break;

    case 0x90:
        if (data[1] == 0) {
            midi_queue_event(MIDI_APP_EVENT_NOTE_OFF, channel, data[0], data[1]);
        } else {
            midi_queue_event(MIDI_APP_EVENT_NOTE_ON, channel, data[0], data[1]);
        }
        break;

    case 0xB0:
        if (data[0] == 120u || data[0] == 123u) {
            midi_queue_event(MIDI_APP_EVENT_ALL_NOTES_OFF, channel, 0, 0);
        } else if (data[0] == 7u || data[0] == 11u || data[0] == 121u) {
            midi_queue_event(MIDI_APP_EVENT_CONTROL, channel, data[0], data[1]);
        }
        break;

    case 0xC0:
        midi_queue_event(MIDI_APP_EVENT_PROGRAM, channel, data[0], 0);
        break;

    case 0xE0:
        midi_queue_event(MIDI_APP_EVENT_PITCH_BEND, channel, data[0], data[1]);
        break;

    default:
        break;
    }
}

static void midi_rx_byte(uint8_t byte)
{
    if (byte & 0x80u) {
        if (byte >= 0xF8u) {
            return;
        }

        if (byte == 0xF0u) {
            midi_in_sysex = 1;
            midi_running_status = 0;
            midi_msg_status = 0;
            midi_msg_count = 0;
            return;
        }

        if (byte == 0xF7u) {
            midi_in_sysex = 0;
            midi_msg_status = 0;
            midi_msg_count = 0;
            return;
        }

        midi_in_sysex = 0;

        if (byte < 0xF0u) {
            midi_running_status = byte;
            midi_msg_status = byte;
            midi_msg_expected = (((byte & 0xF0u) == 0xC0u) || ((byte & 0xF0u) == 0xD0u)) ? 1u : 2u;
            midi_msg_count = 0;
        } else {
            midi_running_status = 0;
            midi_msg_status = 0;
            midi_msg_count = 0;
        }
        return;
    }

    if (midi_in_sysex) {
        return;
    }

    if (midi_msg_status == 0) {
        midi_msg_status = midi_running_status;
        midi_msg_expected = (((midi_msg_status & 0xF0u) == 0xC0u) ||
                             ((midi_msg_status & 0xF0u) == 0xD0u)) ? 1u : 2u;
        midi_msg_count = 0;
    }

    if (midi_msg_status == 0) {
        return;
    }

    if (midi_msg_count < 2u) {
        midi_msg_data[midi_msg_count++] = byte & 0x7Fu;
    }

    if (midi_msg_count >= midi_msg_expected) {
        midi_dispatch_channel_message(midi_msg_status, midi_msg_data);
        midi_msg_count = 0;
        midi_msg_status = midi_running_status;
    }
}

static uint8_t sid_find_voice(uint8_t channel, uint8_t note)
{
    for (uint8_t i = 0; i < SID_MIDI_VOICES; i++) {
        if (sid_midi_voice_alloc[i].active &&
            sid_midi_voice_alloc[i].channel == channel &&
            sid_midi_voice_alloc[i].note == note) {
            return i;
        }
    }

    return 0xFFu;
}

static uint8_t sid_alloc_voice(void)
{
    for (uint8_t i = 0; i < SID_MIDI_VOICES; i++) {
        uint8_t voice = (uint8_t)((sid_next_voice + i) % SID_MIDI_VOICES);
        if (!sid_midi_voice_alloc[voice].active) {
            sid_next_voice = (uint8_t)((voice + 1u) % SID_MIDI_VOICES);
            return voice;
        }
    }

    uint8_t voice = sid_next_voice;
    sid_next_voice = (uint8_t)((sid_next_voice + 1u) % SID_MIDI_VOICES);
    sid_voice_note_kill(voice);
    sid_midi_voice_alloc[voice].active = 0;
    return voice;
}

static uint8_t midi_effective_velocity(uint8_t channel, uint8_t velocity)
{
    uint32_t scaled = velocity;

    scaled = (scaled * midi_channel_volume[channel] + 63u) / 127u;
    scaled = (scaled * midi_channel_expression[channel] + 63u) / 127u;
    scaled = (scaled * midi_global_gain_percent + 50u) / 100u;
    if (channel == MIDI_DRUM_CHANNEL) {
        scaled = (scaled * midi_drum_gain_percent + 50u) / 100u;
    }

    if (scaled > 255u) {
        scaled = 255u;
    }

    if (scaled == 0 && velocity > 0 &&
        midi_channel_volume[channel] > 0 && midi_channel_expression[channel] > 0 &&
        midi_global_gain_percent > 0 &&
        (channel != MIDI_DRUM_CHANNEL || midi_drum_gain_percent > 0)) {
        scaled = 1;
    }

    return (uint8_t)scaled;
}

static void midi_update_active_channel_volume(uint8_t channel)
{
    for (uint8_t i = 0; i < SID_MIDI_VOICES; i++) {
        if (sid_midi_voice_alloc[i].active && sid_midi_voice_alloc[i].channel == channel) {
            sid_voice_set_velocity(i, midi_effective_velocity(channel, sid_midi_voice_alloc[i].velocity));
        }
    }
}

static void midi_update_all_active_volume(void)
{
    for (uint8_t i = 0; i < SID_MIDI_VOICES; i++) {
        if (sid_midi_voice_alloc[i].active) {
            sid_voice_set_velocity(i, midi_effective_velocity(sid_midi_voice_alloc[i].channel,
                                                              sid_midi_voice_alloc[i].velocity));
        }
    }
}

static void sid_midi_note_on_event(uint8_t channel, uint8_t note, uint8_t velocity)
{
    uint8_t voice = sid_find_voice(channel, note);

    if (channel == MIDI_DRUM_CHANNEL && !midi_drum_enabled) {
        return;
    }

    if (voice == 0xFFu) {
        voice = sid_alloc_voice();
    } else {
        sid_voice_note_off(voice);
    }

    sid_midi_voice_alloc[voice].active = 1;
    sid_midi_voice_alloc[voice].channel = channel;
    sid_midi_voice_alloc[voice].note = note;
    sid_midi_voice_alloc[voice].velocity = velocity;
    sid_midi_voice_alloc[voice].program = midi_channel_program[channel];
    sid_midi_voice_alloc[voice].age_ticks = 0;

    uint8_t program = sid_midi_voice_alloc[voice].program;
    sid_voice_note_on(voice, program, note, midi_effective_velocity(channel, velocity));
    if (program != 128u && program != 9u) {
        sid_voice_pitch_bend(voice, midi_channel_bend[channel]);
    }
    midi_note_on_count++;
}

static void sid_midi_note_off_event(uint8_t channel, uint8_t note)
{
    uint8_t voice = sid_find_voice(channel, note);

    if (voice == 0xFFu) {
        return;
    }

    if (channel == MIDI_DRUM_CHANNEL) {
        sid_midi_voice_alloc[voice].active = 0;
        sid_midi_voice_alloc[voice].age_ticks = 0;
        midi_note_off_count++;
        return;
    }

    sid_voice_note_off(voice);
    sid_midi_voice_alloc[voice].active = 0;
    sid_midi_voice_alloc[voice].age_ticks = 0;
    midi_note_off_count++;
}

static void sid_midi_all_notes_off_event(uint8_t channel)
{
    for (uint8_t i = 0; i < SID_MIDI_VOICES; i++) {
        if (sid_midi_voice_alloc[i].active && sid_midi_voice_alloc[i].channel == channel) {
            sid_voice_note_off(i);
            sid_midi_voice_alloc[i].active = 0;
            sid_midi_voice_alloc[i].age_ticks = 0;
            midi_note_off_count++;
        }
    }
}

static void sid_midi_all_notes_off(void)
{
    for (uint8_t i = 0; i < SID_MIDI_VOICES; i++) {
        sid_voice_note_kill(i);
        sid_midi_voice_alloc[i].active = 0;
        sid_midi_voice_alloc[i].age_ticks = 0;
    }
    midi_panic_count++;
}

static void sid_midi_pitch_bend_event(uint8_t channel, uint8_t lsb, uint8_t msb)
{
    int16_t bend = (int16_t)((((uint16_t)msb & 0x7Fu) << 7) | ((uint16_t)lsb & 0x7Fu));
    bend = (int16_t)(bend - 8192);
    midi_channel_bend[channel] = bend;

    if (channel == MIDI_DRUM_CHANNEL) {
        return;
    }

    for (uint8_t i = 0; i < SID_MIDI_VOICES; i++) {
        if (sid_midi_voice_alloc[i].active && sid_midi_voice_alloc[i].channel == channel) {
            sid_voice_pitch_bend(i, bend);
        }
    }
}

static void sid_midi_control_event(uint8_t channel, uint8_t controller, uint8_t value)
{
    switch (controller) {
    case 7:
        midi_channel_volume[channel] = value & 0x7Fu;
        midi_update_active_channel_volume(channel);
        break;

    case 11:
        midi_channel_expression[channel] = value & 0x7Fu;
        midi_update_active_channel_volume(channel);
        break;

    case 121:
        midi_channel_volume[channel] = 127u;
        midi_channel_expression[channel] = 127u;
        midi_channel_bend[channel] = 0;
        midi_update_active_channel_volume(channel);
        sid_midi_pitch_bend_event(channel, 0, 64);
        break;

    default:
        break;
    }
}

static void sid_midi_age_active_voices(void)
{
    for (uint8_t i = 0; i < SID_MIDI_VOICES; i++) {
        if (!sid_midi_voice_alloc[i].active) {
            continue;
        }

        if (sid_midi_voice_alloc[i].age_ticks < MIDI_STUCK_NOTE_TIMEOUT_TICKS) {
            sid_midi_voice_alloc[i].age_ticks++;
            continue;
        }

        sid_voice_note_kill(i);
        sid_midi_voice_alloc[i].active = 0;
        sid_midi_voice_alloc[i].age_ticks = 0;
        midi_timeout_note_off_count++;
    }
}

static void midi_process_events(void)
{
    while (midi_event_tail != midi_event_head) {
        midi_app_event_t ev;

        ev.type = midi_event_queue[midi_event_tail].type;
        ev.channel = midi_event_queue[midi_event_tail].channel;
        ev.a = midi_event_queue[midi_event_tail].a;
        ev.b = midi_event_queue[midi_event_tail].b;
        midi_event_tail = (uint8_t)((midi_event_tail + 1u) & MIDI_EVENT_QUEUE_MASK);

        switch (ev.type) {
        case MIDI_APP_EVENT_NOTE_ON:
            sid_midi_note_on_event(ev.channel, ev.a, ev.b);
            break;

        case MIDI_APP_EVENT_NOTE_OFF:
            sid_midi_note_off_event(ev.channel, ev.a);
            break;

        case MIDI_APP_EVENT_PROGRAM:
            if (ev.channel != MIDI_DRUM_CHANNEL) {
                midi_channel_program[ev.channel] = ev.a & 0x7Fu;
            }
            break;

        case MIDI_APP_EVENT_PITCH_BEND:
            sid_midi_pitch_bend_event(ev.channel, ev.a, ev.b);
            break;

        case MIDI_APP_EVENT_CONTROL:
            sid_midi_control_event(ev.channel, ev.a, ev.b);
            break;

        case MIDI_APP_EVENT_ALL_NOTES_OFF:
            sid_midi_all_notes_off_event(ev.channel);
            break;

        default:
            break;
        }
    }
}

static void midi_process_ui_requests(void)
{
    uint32_t mask = ui_all_notes_off_mask;

    if (mask == 0) {
        return;
    }

    ui_all_notes_off_mask &= ~mask;

    for (uint8_t ch = 0; ch < MIDI_CHANNEL_COUNT; ch++) {
        if (mask & (1ul << ch)) {
            sid_midi_all_notes_off_event(ch);
        }
    }
}

static void midi_synth_init(void)
{
    memset((void *)midi_event_queue, 0, sizeof(midi_event_queue));
    memset(sid_midi_voice_alloc, 0, sizeof(sid_midi_voice_alloc));
    memcpy(midi_channel_program, midi_default_channel_program, sizeof(midi_channel_program));
    memset(midi_channel_volume, 127, sizeof(midi_channel_volume));
    memset(midi_channel_expression, 127, sizeof(midi_channel_expression));
    midi_global_gain_percent = MIDI_GLOBAL_GAIN_DEFAULT;
    midi_drum_gain_percent = 180u;
    midi_drum_enabled = 1u;
    memset(midi_channel_bend, 0, sizeof(midi_channel_bend));
    midi_event_head = 0;
    midi_event_tail = 0;
    ui_all_notes_off_mask = 0;
    sid_next_voice = 0;
    midi_running_status = 0;
    midi_msg_status = 0;
    midi_msg_count = 0;
    midi_msg_expected = 0;
    midi_in_sysex = 0;
    ui_selected_channel = 0;
    ui_page = UI_PAGE_HOME;
    ui_channel_bank = 0;
    ui_vm_scroll = 0;
    ui_exit_requested = 0;
    ui_last_joy = 0;
    ui_repeat_delay = 0;
    ui_last_pointer_down = 0;
    ui_last_pointer_buttons = 0;
    ui_pointer_x = UI_SCREEN_W / 2;
    ui_pointer_y = UI_SCREEN_H / 2;
    ui_status_message[0] = 0;
    ui_status_ticks = 0;
    ui_back_dirty = 1;
    ui_back_hash = 0xFFFFFFFFu;
    ui_vm_follow_active = 0;
    ui_vm_follow_saved_scroll = 0;
    ui_vm_live_pc_valid = 0;
    ui_vm_live_pc = 0;
    ui_vm_live_voice = 0;
    midi_note_on_count = 0;
    midi_note_off_count = 0;
    midi_dropped_event_count = 0;
    midi_panic_count = 0;
    midi_timeout_note_off_count = 0;
}

static const char *midi_program_name(uint8_t program)
{
    switch (program) {
    case 0:   return "Acoustic Piano";
    case 1 ... 3: return "Bright Key";
    case 4:   return "Honky-tonk";
    case 5 ... 6: return "Electric Key";
    case 7 ... 8: return "Clav Pluck";
    case 9 ... 15: return "SID Bell";
    case 16 ... 18: return "Drawbar Organ";
    case 19:  return "Church Organ";
    case 20 ... 23: return "Reed Organ";
    case 24 ... 27: return "SID Guitar";
    case 28:  return "Muted Guitar";
    case 29:  return "Overdrive Gtr";
    case 30:  return "Dist Guitar";
    case 31:  return "Muted Noise";
    case 32:  return "Acoustic Bass";
    case 33 ... 37: return "SID Bass";
    case 38:  return "Synth Bass 1";
    case 39:  return "Slap Bass";
    case 40 ... 45: return "SID Strings";
    case 46:  return "Pizzicato";
    case 47 ... 55: return "SID Ensemble";
    case 56 ... 61: return "SID Brass";
    case 62 ... 63: return "Synth Brass";
    case 64 ... 71: return "SID Reed";
    case 72 ... 79: return "SID Flute";
    case 80:  return "Lead Square";
    case 81:  return "PWM Lead";
    case 82:  return "Fast Arp Lead";
    case 83:  return "HW Arp Lead";
    case 84:  return "Chiff Lead";
    case 85:  return "Charang Lead";
    case 86:  return "PWM Sweep";
    case 87:  return "Bass+Lead";
    case 88 ... 94: return "Warm Pad";
    case 95:  return "Sweep Pad";
    case 96 ... 103: return "SID FX";
    case 104 ... 111: return "SID Pluck";
    case 112 ... 117: return "SID Bell";
    case 118 ... 119: return "Synth Drum";
    case 120 ... 125: return "Noise FX";
    case 126: return "VM Loop Demo";
    case 127: return "Gunshot FX";
    case 128: return "GM Drums";
    default:  return "Fallback";
    }
}

static uint8_t midi_channel_active_count(uint8_t channel)
{
    uint8_t count = 0;

    for (uint8_t i = 0; i < SID_MIDI_VOICES; i++) {
        if (sid_midi_voice_alloc[i].active && sid_midi_voice_alloc[i].channel == channel) {
            count++;
        }
    }

    return count;
}

static uint8_t midi_total_active_count(void)
{
    uint8_t count = 0;

    for (uint8_t i = 0; i < SID_MIDI_VOICES; i++) {
        if (sid_midi_voice_alloc[i].active) {
            count++;
        }
    }

    return count;
}

static void midi_set_channel_program(uint8_t channel, int16_t program)
{
    if (channel >= MIDI_CHANNEL_COUNT || channel == MIDI_DRUM_CHANNEL) {
        return;
    }

    if (program < 0) {
        program = 0;
    } else if (program > 127) {
        program = 127;
    }

    midi_channel_program[channel] = (uint8_t)program;
}

static void midi_set_global_gain(int16_t gain_percent)
{
    if (gain_percent < (int16_t)MIDI_GLOBAL_GAIN_MIN) {
        gain_percent = MIDI_GLOBAL_GAIN_MIN;
    } else if (gain_percent > (int16_t)MIDI_GLOBAL_GAIN_MAX) {
        gain_percent = MIDI_GLOBAL_GAIN_MAX;
    }

    midi_global_gain_percent = (uint16_t)gain_percent;
    midi_update_all_active_volume();
}

static void midi_set_drum_gain(int16_t gain_percent)
{
    if (gain_percent < (int16_t)MIDI_GLOBAL_GAIN_MIN) {
        gain_percent = MIDI_GLOBAL_GAIN_MIN;
    } else if (gain_percent > (int16_t)MIDI_GLOBAL_GAIN_MAX) {
        gain_percent = MIDI_GLOBAL_GAIN_MAX;
    }

    midi_drum_gain_percent = (uint16_t)gain_percent;
    midi_update_active_channel_volume(MIDI_DRUM_CHANNEL);
}

static void midi_set_channel_volume(uint8_t channel, int16_t volume)
{
    if (channel >= MIDI_CHANNEL_COUNT) {
        return;
    }

    if (volume < 0) {
        volume = 0;
    } else if (volume > 127) {
        volume = 127;
    }

    midi_channel_volume[channel] = (uint8_t)volume;
    midi_update_active_channel_volume(channel);
}

static void midi_set_channel_expression(uint8_t channel, int16_t expression)
{
    if (channel >= MIDI_CHANNEL_COUNT) {
        return;
    }

    if (expression < 0) {
        expression = 0;
    } else if (expression > 127) {
        expression = 127;
    }

    midi_channel_expression[channel] = (uint8_t)expression;
    midi_update_active_channel_volume(channel);
}

static void ui_set_status(const char *message)
{
    snprintf(ui_status_message, sizeof(ui_status_message), "%s", message);
    ui_status_ticks = 90;
}

static uint8_t ui_point_in(int16_t px, int16_t py, int16_t x, int16_t y, int16_t w, int16_t h)
{
    return (px >= x && px < (x + w) && py >= y && py < (y + h)) ? 1u : 0u;
}

static void ui_box(int16_t x, int16_t y, int16_t w, int16_t h, uint8_t border, uint8_t fill)
{
    gfx_setcolour(border);
    gfx_rectf(x, y, w, h);
    gfx_setcolour(fill);
    gfx_rectf((int16_t)(x + 1), (int16_t)(y + 1), (int16_t)(w - 2), (int16_t)(h - 2));
}

static void ui_button_draw(int16_t x, int16_t y, int16_t w, int16_t h, const char *label, uint8_t active)
{
    uint8_t pressed = (uint8_t)((ui_last_pointer_buttons & UI_MOUSE_LEFT) &&
                                ui_point_in(ui_pointer_x, ui_pointer_y, x, y, w, h));
    uint8_t fill = pressed ? 20u : (active ? 28u : 27u);
    uint8_t text = active ? 15u : 25u;
    int16_t text_x;
    int16_t text_y;
    int16_t label_w = (int16_t)(strlen(label) * UI_FONT_W);

    ui_box(x, y, w, h, 26, fill);
    gfx_setcolour(pressed ? 16u : (active ? 29u : 21u));
    gfx_rectf((int16_t)(x + 1), (int16_t)(y + 1), (int16_t)(w - 2), 2);
    gfx_rectf((int16_t)(x + 1), (int16_t)(y + 1), 2, (int16_t)(h - 2));
    gfx_setcolour(pressed ? 29u : 16u);
    gfx_rectf((int16_t)(x + 1), (int16_t)(y + h - 3), (int16_t)(w - 2), 2);
    gfx_rectf((int16_t)(x + w - 3), (int16_t)(y + 1), 2, (int16_t)(h - 2));

    if (label_w > (w - 8)) {
        text_x = (int16_t)(x + 4);
    } else {
        text_x = (int16_t)(x + ((w - label_w) / 2));
    }
    text_y = (int16_t)(y + ((h > UI_FONT_H) ? ((h - UI_FONT_H) / 2) : 0));
    if (pressed) {
        text_x++;
        text_y++;
    }

    gfx_setcolour(text);
    gfx_drawtext(text_x, text_y, label);
}

static void ui_panel(int16_t x, int16_t y, int16_t w, int16_t h, const char *title)
{
    ui_box(x, y, w, h, 26, 31);
    gfx_setcolour(20);
    gfx_rectf((int16_t)(x + 1), (int16_t)(y + 1), (int16_t)(w - 2), 20);
    gfx_setcolour(30);
    gfx_drawtext((int16_t)(x + 8), (int16_t)(y + 4), title);
}

static void ui_value_bar(int16_t x, int16_t y, int16_t w, uint16_t value, uint16_t max_value)
{
    uint16_t fill;

    if (max_value == 0) {
        fill = 0;
    } else {
        fill = (uint16_t)(((uint32_t)value * (uint32_t)(w - 2)) / max_value);
    }

    ui_box(x, y, w, 10, 26, 17);
    gfx_setcolour(29);
    gfx_rectf((int16_t)(x + 1), (int16_t)(y + 1), (int16_t)fill, 8);
}

static void ui_draw_background(void)
{
    static const uint8_t bands[8] = { 16, 17, 18, 19, 20, 19, 18, 17 };

    for (uint8_t i = 0; i < 8; i++) {
        gfx_setcolour(bands[i]);
        gfx_rectf(0, (int16_t)(i * 40), UI_SCREEN_W, 40);
    }

    gfx_setcolour(21);
    gfx_rectf(0, 0, UI_SCREEN_W, 2);
    gfx_setcolour(26);
    gfx_rectf(0, 39, UI_SCREEN_W, 1);
}

static const char *ui_page_name(uint8_t page)
{
    switch (page) {
    case UI_PAGE_HOME: return "HOME";
    case UI_PAGE_CHANNELS: return "CHANNELS";
    case UI_PAGE_MIXER: return "MIXER";
    case UI_PAGE_PERC: return "PERC";
    case UI_PAGE_VM: return "VM";
    default: return "?";
    }
}

static const char *vm_opcode_name(uint8_t opcode)
{
    switch (opcode) {
    case SID_OP_END: return "END";
    case SID_OP_WAIT: return "WAIT";
    case SID_OP_WAVE: return "WAVE";
    case SID_OP_ADSR: return "ADSR";
    case SID_OP_PULSE: return "PULSE";
    case SID_OP_PITCH: return "PITCH";
    case SID_OP_ADDPWM: return "ADDPWM";
    case SID_OP_DECPWM: return "DECPWM";
    case SID_OP_PORTA: return "PORTA";
    case SID_OP_ARP: return "ARP";
    case SID_OP_FILTER: return "FILTER";
    case SID_OP_LOOP: return "LOOP";
    case SID_OP_JUMP: return "JUMP";
    case SID_OP_PITCHSWEEP: return "SWEEP";
    case SID_OP_VIBRATO: return "VIB";
    case SID_OP_HOLD: return "HOLD";
    case SID_OP_TREMOLO: return "TREM";
    case SID_OP_SETVAR: return "SETVAR";
    case SID_OP_ADDVAR: return "ADDVAR";
    case SID_OP_WHILE_NOTE: return "WHNOTE";
    case SID_OP_WHILE_GT: return "WHGT";
    case SID_OP_END_WHILE: return "ENDWH";
    default: return "???";
    }
}

static uint8_t vm_program_length(uint8_t program)
{
    const sid_instr_t *prog;

    if (program >= 128u) {
        return 0;
    }

    prog = sid_soundfont_bank[program];
    if (!prog) {
        return 0;
    }

    for (uint8_t i = 0; i < UI_VM_SCAN_LIMIT; i++) {
        if (prog[i].opcode == SID_OP_END) {
            return (uint8_t)(i + 1u);
        }
    }

    return UI_VM_SCAN_LIMIT;
}

static void ui_clamp_vm_scroll(void)
{
    uint8_t len = vm_program_length(midi_channel_program[ui_selected_channel]);
    uint8_t max_scroll = 0;

    if (len > UI_VM_ROWS) {
        max_scroll = (uint8_t)(len - UI_VM_ROWS);
    }

    if (ui_vm_scroll > max_scroll) {
        ui_vm_scroll = max_scroll;
    }
}

static void ui_scroll_vm(int8_t delta)
{
    int16_t scroll = (int16_t)ui_vm_scroll + delta;
    uint8_t len = vm_program_length(midi_channel_program[ui_selected_channel]);
    uint8_t max_scroll = (len > UI_VM_ROWS) ? (uint8_t)(len - UI_VM_ROWS) : 0;

    if (scroll < 0) {
        scroll = 0;
    } else if (scroll > max_scroll) {
        scroll = max_scroll;
    }

    ui_vm_scroll = (uint8_t)scroll;
}

static uint8_t ui_find_live_vm_voice(uint8_t channel, uint8_t program)
{
    for (uint8_t i = 0; i < SID_MIDI_VOICES; i++) {
        if (sid_midi_voice_alloc[i].active &&
            sid_midi_voice_alloc[i].channel == channel &&
            sid_midi_voice_alloc[i].program == program) {
            return i;
        }
    }

    return 0xFFu;
}

static void ui_update_vm_live_follow(void)
{
    uint8_t voice;
    uint8_t pc = 0;
    uint8_t running = 0;
    uint8_t program = midi_channel_program[ui_selected_channel];
    uint8_t len = vm_program_length(program);

    ui_vm_live_pc_valid = 0;

    if (ui_page != UI_PAGE_VM || program >= 128u || len == 0) {
        if (ui_vm_follow_active) {
            ui_vm_scroll = ui_vm_follow_saved_scroll;
            ui_clamp_vm_scroll();
            ui_vm_follow_active = 0;
        }
        return;
    }

    voice = ui_find_live_vm_voice(ui_selected_channel, program);
    if (voice == 0xFFu || !sid_voice_get_vm_debug(voice, &pc, &running) || !running) {
        if (ui_vm_follow_active) {
            ui_vm_scroll = ui_vm_follow_saved_scroll;
            ui_clamp_vm_scroll();
            ui_vm_follow_active = 0;
        }
        return;
    }

    if (!ui_vm_follow_active) {
        ui_vm_follow_saved_scroll = ui_vm_scroll;
        ui_vm_follow_active = 1;
    }

    if (pc >= len) {
        pc = (uint8_t)(len - 1u);
    }

    ui_vm_live_pc_valid = 1;
    ui_vm_live_pc = pc;
    ui_vm_live_voice = voice;

    if (pc < ui_vm_scroll) {
        ui_vm_scroll = pc;
    } else if (pc >= (uint8_t)(ui_vm_scroll + UI_VM_ROWS)) {
        ui_vm_scroll = (uint8_t)(pc - UI_VM_ROWS + 1u);
    }

    ui_clamp_vm_scroll();
}

static ui_pointer_t ui_read_pointer(uint8_t joy)
{
    ui_pointer_t p;
    int16_t x = ui_pointer_x;
    int16_t y = ui_pointer_y;
    int16_t mx = x;
    int16_t my = y;
    int32_t dx = 0;
    int32_t dy = 0;
    uint8_t down = 0;
    uint8_t buttons = 0;
    uint8_t mouse_buttons;

    if (touch_down() && touch_getxy(&x, &y)) {
        buttons = UI_MOUSE_LEFT;
        down = 1;
    } else {
        mouse_buttons = getmousepos(&mx, &my);
        getmousedelta(&dx, &dy);
        clrmousedelta();
        x = (int16_t)(x + dx);
        y = (int16_t)(y + dy);

        buttons = (uint8_t)(mouse_buttons | (joy & (UI_MOUSE_LEFT | UI_MOUSE_RIGHT)));
        if (buttons != 0) {
            down = 1;
        }
    }

    if (x < 0) x = 0;
    if (y < 0) y = 0;
    if (x >= UI_SCREEN_W) x = UI_SCREEN_W - 1;
    if (y >= UI_SCREEN_H) y = UI_SCREEN_H - 1;

    p.x = x;
    p.y = y;
    p.down = down;
    p.pressed = (uint8_t)(down && !ui_last_pointer_down);
    p.buttons = buttons;
    p.left_pressed = (uint8_t)((buttons & UI_MOUSE_LEFT) && !(ui_last_pointer_buttons & UI_MOUSE_LEFT));
    p.right_pressed = (uint8_t)((buttons & UI_MOUSE_RIGHT) && !(ui_last_pointer_buttons & UI_MOUSE_RIGHT));

    ui_last_pointer_down = down;
    ui_last_pointer_buttons = buttons;
    ui_pointer_x = x;
    ui_pointer_y = y;
    return p;
}

static void ui_draw_cursor(void)
{
    int16_t x = ui_pointer_x;
    int16_t y = ui_pointer_y;
    uint8_t c = ui_last_pointer_down ? 30u : 24u;

    if (x < 0) x = 0;
    if (y < 0) y = 0;
    if (x > UI_SCREEN_W - 8) x = UI_SCREEN_W - 8;
    if (y > UI_SCREEN_H - 10) y = UI_SCREEN_H - 10;

    gfx_setcolour(26);
    gfx_rectf(x, y, 2, 10);
    gfx_rectf(x, y, 8, 2);
    gfx_rectf((int16_t)(x + 2), (int16_t)(y + 8), 4, 2);
    gfx_setcolour(c);
    gfx_rectf((int16_t)(x + 1), (int16_t)(y + 1), 1, 8);
    gfx_rectf((int16_t)(x + 1), (int16_t)(y + 1), 6, 1);
    gfx_rectf((int16_t)(x + 3), (int16_t)(y + 7), 3, 1);
}

static void ui_select_program_delta(uint8_t channel, int16_t delta)
{
    if (channel == MIDI_DRUM_CHANNEL) {
        ui_page = UI_PAGE_PERC;
        ui_set_status("CH10 uses the percussion router");
        return;
    }

    midi_set_channel_program(channel, (int16_t)midi_channel_program[channel] + delta);
    ui_all_notes_off_mask |= (1ul << channel);
}

static void ui_process_pointer(ui_pointer_t p)
{
    if ((p.buttons & (UI_MOUSE_LEFT | UI_MOUSE_RIGHT)) == (UI_MOUSE_LEFT | UI_MOUSE_RIGHT)) {
        ui_exit_requested = 1;
        return;
    }

    if (p.right_pressed) {
        sid_midi_all_notes_off();
        ui_set_status("Right click panic");
        return;
    }

    if (!p.left_pressed) {
        return;
    }

    for (uint8_t i = 0; i < UI_PAGE_COUNT; i++) {
        int16_t x = (int16_t)(10 + (i * 92));
        if (ui_point_in(p.x, p.y, x, 43, 82, 24)) {
            ui_page = i;
            return;
        }
    }

    if (ui_point_in(p.x, p.y, 332, 284, 54, 24)) {
        ui_set_status("Save browser reserved");
        return;
    }
    if (ui_point_in(p.x, p.y, 392, 284, 54, 24)) {
        ui_set_status("Load browser reserved");
        return;
    }
    if (ui_point_in(p.x, p.y, 8, 284, 70, 24)) {
        sid_midi_all_notes_off();
        ui_set_status("Panic: all notes killed");
        return;
    }

    switch (ui_page) {
    case UI_PAGE_HOME:
        if (ui_point_in(p.x, p.y, 300, 134, 34, 22)) {
            ui_select_program_delta(ui_selected_channel, -1);
        } else if (ui_point_in(p.x, p.y, 338, 134, 34, 22)) {
            ui_select_program_delta(ui_selected_channel, 1);
        } else if (ui_point_in(p.x, p.y, 382, 134, 34, 22)) {
            midi_set_global_gain((int16_t)midi_global_gain_percent - (int16_t)MIDI_GLOBAL_GAIN_STEP);
        } else if (ui_point_in(p.x, p.y, 420, 134, 34, 22)) {
            midi_set_global_gain((int16_t)midi_global_gain_percent + (int16_t)MIDI_GLOBAL_GAIN_STEP);
        }
        break;

    case UI_PAGE_CHANNELS:
        for (uint8_t bank = 0; bank < 4; bank++) {
            int16_t x = (int16_t)(26 + (bank * 104));
            if (ui_point_in(p.x, p.y, x, 88, 96, 26)) {
                ui_channel_bank = bank;
                return;
            }
        }

        for (uint8_t row = 0; row < 4; row++) {
            uint8_t ch = (uint8_t)(row + (ui_channel_bank * 4u));
            int16_t y = (int16_t)(124 + (row * 36));

            if (ui_point_in(p.x, p.y, 24, (int16_t)(y - 5), 420, 32)) {
                ui_selected_channel = ch;
                if (ui_point_in(p.x, p.y, 342, (int16_t)(y - 4), 42, 30)) {
                    ui_select_program_delta(ch, -1);
                } else if (ui_point_in(p.x, p.y, 396, (int16_t)(y - 4), 42, 30)) {
                    ui_select_program_delta(ch, 1);
                }
                return;
            }
        }
        break;

    case UI_PAGE_MIXER:
        if (ui_point_in(p.x, p.y, 356, 88, 34, 22)) {
            midi_set_global_gain((int16_t)midi_global_gain_percent - (int16_t)MIDI_GLOBAL_GAIN_STEP);
        } else if (ui_point_in(p.x, p.y, 398, 88, 34, 22)) {
            midi_set_global_gain((int16_t)midi_global_gain_percent + (int16_t)MIDI_GLOBAL_GAIN_STEP);
        } else if (ui_point_in(p.x, p.y, 356, 139, 34, 22)) {
            midi_set_channel_volume(ui_selected_channel, (int16_t)midi_channel_volume[ui_selected_channel] - 8);
        } else if (ui_point_in(p.x, p.y, 398, 139, 34, 22)) {
            midi_set_channel_volume(ui_selected_channel, (int16_t)midi_channel_volume[ui_selected_channel] + 8);
        } else if (ui_point_in(p.x, p.y, 356, 190, 34, 22)) {
            midi_set_channel_expression(ui_selected_channel, (int16_t)midi_channel_expression[ui_selected_channel] - 8);
        } else if (ui_point_in(p.x, p.y, 398, 190, 34, 22)) {
            midi_set_channel_expression(ui_selected_channel, (int16_t)midi_channel_expression[ui_selected_channel] + 8);
        }
        break;

    case UI_PAGE_PERC:
        if (ui_point_in(p.x, p.y, 314, 92, 86, 24)) {
            midi_drum_enabled = (uint8_t)!midi_drum_enabled;
            sid_midi_all_notes_off_event(MIDI_DRUM_CHANNEL);
        } else if (ui_point_in(p.x, p.y, 316, 138, 34, 22)) {
            midi_set_drum_gain((int16_t)midi_drum_gain_percent - (int16_t)MIDI_GLOBAL_GAIN_STEP);
        } else if (ui_point_in(p.x, p.y, 358, 138, 34, 22)) {
            midi_set_drum_gain((int16_t)midi_drum_gain_percent + (int16_t)MIDI_GLOBAL_GAIN_STEP);
        }
        break;

    case UI_PAGE_VM:
        if (ui_point_in(p.x, p.y, 350, 78, 34, 22)) {
            ui_select_program_delta(ui_selected_channel, -1);
            ui_clamp_vm_scroll();
        } else if (ui_point_in(p.x, p.y, 388, 78, 34, 22)) {
            ui_select_program_delta(ui_selected_channel, 1);
            ui_clamp_vm_scroll();
        } else if (ui_point_in(p.x, p.y, 418, 124, 34, 22)) {
            ui_scroll_vm(-1);
        } else if (ui_point_in(p.x, p.y, 418, 224, 34, 22)) {
            ui_scroll_vm(1);
        }
        break;

    default:
        break;
    }
}

static uint8_t ui_should_repeat(uint8_t joy)
{
    uint8_t changed = (uint8_t)(joy & (uint8_t)~ui_last_joy);

    if (changed != 0) {
        ui_repeat_delay = 12;
        return changed;
    }

    if ((joy & (BTN_UP | BTN_DOWN | BTN_LEFT | BTN_RIGHT)) == 0) {
        ui_repeat_delay = 0;
        return 0;
    }

    if (ui_repeat_delay > 0) {
        ui_repeat_delay--;
        return 0;
    }

    ui_repeat_delay = 3;
    return joy;
}

static void ui_handle_input(uint8_t joy)
{
    uint8_t actions = ui_should_repeat(joy);
    uint8_t arrows = (uint8_t)(joy & (BTN_UP | BTN_DOWN | BTN_LEFT | BTN_RIGHT));
    uint8_t fire_down = (uint8_t)(joy & BTN_FIRE);
    ui_pointer_t pointer = ui_read_pointer(joy);

    ui_process_pointer(pointer);

    if ((joy & (BTN_FIRE | BTN_FIRE2)) == (BTN_FIRE | BTN_FIRE2)) {
        ui_exit_requested = 1;
    }

    if (ui_page == UI_PAGE_VM && !fire_down && (actions & (BTN_UP | BTN_DOWN))) {
        if (actions & BTN_UP) {
            ui_scroll_vm(-1);
        } else if (actions & BTN_DOWN) {
            ui_scroll_vm(1);
        }
    } else if (fire_down && (actions & (BTN_UP | BTN_DOWN))) {
        int16_t gain_delta = 0;

        if (actions & BTN_UP) {
            gain_delta = MIDI_GLOBAL_GAIN_STEP;
        } else if (actions & BTN_DOWN) {
            gain_delta = -(int16_t)MIDI_GLOBAL_GAIN_STEP;
        }

        if (gain_delta != 0) {
            midi_set_global_gain((int16_t)midi_global_gain_percent + gain_delta);
        }
    } else {
        if (actions & BTN_UP) {
            ui_selected_channel = (uint8_t)((ui_selected_channel + MIDI_CHANNEL_COUNT - 1u) % MIDI_CHANNEL_COUNT);
            ui_channel_bank = (uint8_t)(ui_selected_channel / 4u);
            ui_clamp_vm_scroll();
        }

        if (actions & BTN_DOWN) {
            ui_selected_channel = (uint8_t)((ui_selected_channel + 1u) % MIDI_CHANNEL_COUNT);
            ui_channel_bank = (uint8_t)(ui_selected_channel / 4u);
            ui_clamp_vm_scroll();
        }
    }

    int8_t delta = 0;
    if (actions & BTN_LEFT) {
        delta = -1;
    } else if (actions & BTN_RIGHT) {
        delta = 1;
    }

    if (delta != 0) {
        int16_t step = (joy & BTN_FIRE) ? MIDI_UI_PROGRAM_STEP_FAST : 1;
        ui_select_program_delta(ui_selected_channel, (int16_t)delta * step);
        ui_clamp_vm_scroll();
    }

    ui_last_joy = joy;

    if (ui_status_ticks > 0) {
        ui_status_ticks--;
        if (ui_status_ticks == 0) {
            ui_status_message[0] = 0;
        }
    }
}

static void ui_draw_header(void)
{
    ui_draw_background();

    gfx_setcolour(30);
    gfx_drawtextf(12, 8, "SIDBOX MIDI SID", 2, 2);
    gfx_setcolour(24);
    gfx_drawtext(270, 8, "LIVE SYNTH CONTROL");

    for (uint8_t i = 0; i < UI_PAGE_COUNT; i++) {
        int16_t x = (int16_t)(10 + (i * 92));
        ui_button_draw(x, 43, 82, 24, ui_page_name(i), (uint8_t)(ui_page == i));
    }
}

static void ui_draw_footer(void)
{
    ui_button_draw(8, 284, 70, 24, "PANIC", 0);
    ui_button_draw(332, 284, 54, 24, "SAVE", 0);
    ui_button_draw(392, 284, 54, 24, "LOAD", 0);
}

static void ui_draw_home(void)
{
    uint8_t ch = ui_selected_channel;
    uint8_t program = midi_channel_program[ch];

    ui_panel(10, 76, 150, 86, "PERFORMANCE");

    ui_panel(170, 76, 292, 86, "SELECTED CHANNEL");
    char line[96];
    snprintf(line, sizeof(line), "CH%02u P%03u %.18s", (unsigned)(ch + 1u),
             (unsigned)program, midi_program_name(program));
    gfx_setcolour(30);
    gfx_drawtext(184, 96, line);
    ui_button_draw(300, 134, 34, 22, "-P", 0);
    ui_button_draw(338, 134, 34, 22, "+P", 0);
    ui_button_draw(382, 134, 34, 22, "-G", 0);
    ui_button_draw(420, 134, 34, 22, "+G", 0);

    ui_panel(10, 172, 222, 92, "ROUTING");
    for (uint8_t i = 0; i < 4; i++) {
        uint8_t row_ch = (uint8_t)((ui_selected_channel + i) % MIDI_CHANNEL_COUNT);
        snprintf(line, sizeof(line), "CH%02u P%03u %-10.10s",
                 (unsigned)(row_ch + 1u),
                 (unsigned)midi_channel_program[row_ch],
                 midi_program_name(midi_channel_program[row_ch]));
        gfx_setcolour(row_ch == ui_selected_channel ? 30u : 24u);
        gfx_drawtext(24, (int16_t)(194 + (i * 16)), line);
    }

    ui_panel(242, 172, 220, 92, "PROJECT");
    gfx_setcolour(24);
    gfx_drawtext(256, 194, "Save/load hooks ready.");
    gfx_drawtext(256, 210, "Patch banks later.");
    gfx_drawtext(256, 232, "Buttons are clickable.");
}

static void ui_draw_channels(void)
{
    char line[96];
    uint8_t base = (uint8_t)(ui_channel_bank * 4u);

    ui_panel(10, 76, 452, 196, "CHANNEL ASSIGNMENTS");
    ui_button_draw(26, 88, 96, 26, "CH 1-4", (uint8_t)(ui_channel_bank == 0));
    ui_button_draw(130, 88, 96, 26, "CH 5-8", (uint8_t)(ui_channel_bank == 1));
    ui_button_draw(234, 88, 96, 26, "CH 9-12", (uint8_t)(ui_channel_bank == 2));
    ui_button_draw(338, 88, 96, 26, "CH 13-16", (uint8_t)(ui_channel_bank == 3));

    gfx_setcolour(29);
    gfx_drawtext(54, 116, "CH   PRG   PROGRAM NAME");

    for (uint8_t row = 0; row < 4; row++) {
        uint8_t ch = (uint8_t)(base + row);
        int16_t y = (int16_t)(124 + (row * 36));
        uint8_t program = midi_channel_program[ch];

        if (ch == ui_selected_channel) {
            gfx_setcolour(28);
            gfx_rectf(24, (int16_t)(y - 5), 420, 32);
        }

        snprintf(line, sizeof(line), "%02u   %03u   %-25.25s",
                 (unsigned)(ch + 1u),
                 (unsigned)program,
                 midi_program_name(program));
        gfx_setcolour(ch == MIDI_DRUM_CHANNEL ? 14u : (ch == ui_selected_channel ? 15u : 25u));
        gfx_drawtext(52, y, line);

        ui_button_draw(342, (int16_t)(y - 4), 42, 30, "-", 0);
        ui_button_draw(396, (int16_t)(y - 4), 42, 30, "+", 0);
    }
}

static void ui_draw_mixer(void)
{
    char line[96];
    uint8_t ch = ui_selected_channel;

    ui_panel(16, 78, 446, 52, "GLOBAL OUTPUT GAIN");
    snprintf(line, sizeof(line), "%u%%", (unsigned)midi_global_gain_percent);
    gfx_setcolour(30);
    gfx_drawtext(32, 96, line);
    ui_value_bar(92, 98, 240, midi_global_gain_percent, MIDI_GLOBAL_GAIN_MAX);
    ui_button_draw(356, 88, 34, 22, "-", 0);
    ui_button_draw(398, 88, 34, 22, "+", 0);

    ui_panel(16, 132, 446, 52, "SELECTED CHANNEL VOLUME");
    snprintf(line, sizeof(line), "CH%02u  %03u", (unsigned)(ch + 1u), (unsigned)midi_channel_volume[ch]);
    gfx_setcolour(30);
    gfx_drawtext(32, 150, line);
    ui_value_bar(128, 152, 204, midi_channel_volume[ch], 127);
    ui_button_draw(356, 139, 34, 22, "-", 0);
    ui_button_draw(398, 139, 34, 22, "+", 0);

    ui_panel(16, 186, 446, 52, "SELECTED CHANNEL EXPRESSION");
    snprintf(line, sizeof(line), "EXP %03u", (unsigned)midi_channel_expression[ch]);
    gfx_setcolour(30);
    gfx_drawtext(32, 204, line);
    ui_value_bar(128, 206, 204, midi_channel_expression[ch], 127);
    ui_button_draw(356, 190, 34, 22, "-", 0);
    ui_button_draw(398, 190, 34, 22, "+", 0);

    gfx_setcolour(24);
    gfx_drawtext(26, 252, "MIDI CC7/CC11 still update while playing.");
}

static void ui_draw_percussion(void)
{
    char line[96];

    ui_panel(16, 78, 446, 186, "PERCUSSION SETTINGS");
    gfx_setcolour(30);
    gfx_drawtext(32, 100, "GM channel 10 routed to SID drum programs");

    snprintf(line, sizeof(line), "STATE: %s", midi_drum_enabled ? "ENABLED" : "MUTED");
    gfx_setcolour(midi_drum_enabled ? 9u : 13u);
    gfx_drawtext(32, 122, line);
    ui_button_draw(314, 92, 86, 24, midi_drum_enabled ? "MUTE" : "ENABLE", midi_drum_enabled);

    snprintf(line, sizeof(line), "DRUM GAIN %u%%", (unsigned)midi_drum_gain_percent);
    gfx_setcolour(30);
    gfx_drawtext(32, 148, line);
    ui_value_bar(140, 150, 150, midi_drum_gain_percent, MIDI_GLOBAL_GAIN_MAX);
    ui_button_draw(316, 138, 34, 22, "-", 0);
    ui_button_draw(358, 138, 34, 22, "+", 0);

    gfx_setcolour(24);
    gfx_drawtext(32, 184, "Mapped: kick, snare, hats, toms.");
    gfx_drawtext(32, 202, "Future: per-note kit browser.");
    gfx_drawtext(32, 226, "CH10 ignores program changes.");
}

static void ui_draw_vm(void)
{
    char line[96];
    uint8_t ch = ui_selected_channel;
    uint8_t program = midi_channel_program[ch];
    uint8_t len;

    ui_panel(16, 76, 446, 196, "VM CODE VIEWER");
    snprintf(line, sizeof(line), "CH%02u P%03u %.24s",
             (unsigned)(ch + 1u), (unsigned)program, midi_program_name(program));
    gfx_setcolour(30);
    gfx_drawtext(30, 96, line);
    ui_button_draw(350, 78, 34, 22, "-P", 0);
    ui_button_draw(388, 78, 34, 22, "+P", 0);

    if (program >= 128u) {
        gfx_setcolour(24);
        gfx_drawtext(30, 126, "GM drums use percussion router.");
        return;
    }

    const sid_instr_t *prog = sid_soundfont_bank[program];
    if (!prog) {
        gfx_setcolour(13);
        gfx_drawtext(30, 126, "No VM program assigned.");
        return;
    }

    ui_clamp_vm_scroll();
    len = vm_program_length(program);

    gfx_setcolour(29);
    gfx_drawtext(30, 116, "IDX OPCODE   P  VALUE");
    for (uint8_t row = 0; row < UI_VM_ROWS; row++) {
        uint8_t i = (uint8_t)(ui_vm_scroll + row);

        if (i >= len) {
            break;
        }

        snprintf(line, sizeof(line), "%02u  %-8s %02X %04X",
                 (unsigned)i,
                 vm_opcode_name(prog[i].opcode),
                 (unsigned)prog[i].param8,
                 (unsigned)prog[i].value);
        gfx_setcolour(prog[i].opcode == SID_OP_END ? 14u : 25u);
        gfx_drawtext(30, (int16_t)(134 + (row * 16)), line);
        if (prog[i].opcode == SID_OP_END) {
            break;
        }
    }

    ui_button_draw(418, 124, 34, 22, "UP", 0);
    ui_button_draw(418, 224, 34, 22, "DN", 0);
    snprintf(line, sizeof(line), "%02u/%02u", (unsigned)ui_vm_scroll, (unsigned)len);
    gfx_setcolour(24);
    gfx_drawtext(360, 250, line);
}

static void ui_draw(void)
{
    ui_draw_header();

    switch (ui_page) {
    case UI_PAGE_HOME:
        ui_draw_home();
        break;
    case UI_PAGE_CHANNELS:
        ui_draw_channels();
        break;
    case UI_PAGE_MIXER:
        ui_draw_mixer();
        break;
    case UI_PAGE_PERC:
        ui_draw_percussion();
        break;
    case UI_PAGE_VM:
        ui_draw_vm();
        break;
    default:
        ui_page = UI_PAGE_HOME;
        ui_draw_home();
        break;
    }

    ui_draw_footer();
}

static uint32_t ui_hash_step(uint32_t hash, uint32_t value)
{
    hash ^= value + 0x9E3779B9u + (hash << 6) + (hash >> 2);
    return hash;
}

static uint32_t ui_static_hash(void)
{
    uint32_t hash = 0x811C9DC5u;

    hash = ui_hash_step(hash, ui_page);
    hash = ui_hash_step(hash, ui_selected_channel);
    hash = ui_hash_step(hash, ui_channel_bank);
    hash = ui_hash_step(hash, ui_vm_scroll);
    hash = ui_hash_step(hash, midi_global_gain_percent);
    hash = ui_hash_step(hash, midi_drum_gain_percent);
    hash = ui_hash_step(hash, midi_drum_enabled);

    for (uint8_t ch = 0; ch < MIDI_CHANNEL_COUNT; ch++) {
        hash = ui_hash_step(hash, midi_channel_program[ch]);
        hash = ui_hash_step(hash, midi_channel_volume[ch]);
        hash = ui_hash_step(hash, midi_channel_expression[ch]);
    }

    hash = ui_hash_step(hash, ui_last_pointer_buttons & UI_MOUSE_LEFT);
    return hash;
}

static void ui_redraw_backbuffer(void)
{
    gfx_bitmap_t *front_draw = gfx_getdrawbuffer();

    gfx_showbbuffer((gfx_bitmap_t *)&backbitmap);
    gfx_usebuffer((gfx_bitmap_t *)&backbitmap);
    gfx_cls();
    ui_draw();
    
    gfx_usebuffer(front_draw);
}

static void ui_draw_home_overlay(void)
{
    char line[96];
    uint8_t ch = ui_selected_channel;

    snprintf(line, sizeof(line), "%u/%u voices", midi_total_active_count(), SID_MIDI_VOICES);
    gfx_setcolour(30);
    gfx_drawtext(24, 100, line);
    snprintf(line, sizeof(line), "panic %lu  tmo %lu", (unsigned long)midi_panic_count,
             (unsigned long)midi_timeout_note_off_count);
    gfx_setcolour(24);
    gfx_drawtext(24, 118, line);
    snprintf(line, sizeof(line), "gain %u%%  drums %u%%", (unsigned)midi_global_gain_percent,
             (unsigned)midi_drum_gain_percent);
    gfx_drawtext(24, 136, line);

    snprintf(line, sizeof(line), "VOL %03u   EXP %03u   BEND %d", (unsigned)midi_channel_volume[ch],
             (unsigned)midi_channel_expression[ch], (int)midi_channel_bend[ch]);
    gfx_drawtext(184, 116, line);

    for (uint8_t i = 0; i < 4; i++) {
        uint8_t row_ch = (uint8_t)((ui_selected_channel + i) % MIDI_CHANNEL_COUNT);
        uint8_t active = midi_channel_active_count(row_ch);

        if (active == 0) {
            continue;
        }

        snprintf(line, sizeof(line), "%u", (unsigned)active);
        gfx_setcolour(14);
        gfx_drawtext(204, (int16_t)(194 + (i * 16)), line);
    }
}

static void ui_draw_channel_activity_overlay(void)
{
    char note[2];
    uint8_t base = (uint8_t)(ui_channel_bank * 4u);

    note[0] = 0x0Eu;
    note[1] = 0;

    for (uint8_t row = 0; row < 4; row++) {
        uint8_t ch = (uint8_t)(base + row);

        if (midi_channel_active_count(ch) == 0) {
            continue;
        }

        gfx_setcolour(14);
        gfx_drawtext(32, (int16_t)(124 + (row * 36)), note);
    }
}

static void ui_draw_vm_live_overlay(void)
{
    char line[24];

    if (!ui_vm_live_pc_valid) {
        return;
    }

    if (ui_vm_live_pc >= ui_vm_scroll &&
            ui_vm_live_pc < (uint8_t)(ui_vm_scroll + UI_VM_ROWS)) {
        int16_t y = (int16_t)(134 + ((ui_vm_live_pc - ui_vm_scroll) * 16));

        gfx_setcolour(14);
        gfx_drawtext(20, y, ">");
    }

    snprintf(line, sizeof(line), "PC%02u V%u", (unsigned)ui_vm_live_pc, (unsigned)ui_vm_live_voice);
    gfx_setcolour(14);
    gfx_drawtext(250, 250, line);
}

static void ui_draw_dynamic_overlay(void)
{
    char line[96];

    snprintf(line, sizeof(line), "V%u/%u ON%lu OFF%lu D%lu",
             midi_total_active_count(), SID_MIDI_VOICES,
             (unsigned long)midi_note_on_count,
             (unsigned long)midi_note_off_count,
             (unsigned long)midi_dropped_event_count);
    gfx_setcolour(25);
    gfx_drawtext(270, 24, line);

    gfx_setcolour(24);
    if (ui_status_message[0]) {
        gfx_drawtext(88, 292, ui_status_message);
    } else {
        gfx_drawtext(88, 292, "Right click panic  L+R exits");
    }

    switch (ui_page) {
    case UI_PAGE_HOME:
        ui_draw_home_overlay();
        break;

    case UI_PAGE_CHANNELS:
        ui_draw_channel_activity_overlay();
        break;

    case UI_PAGE_VM:
        ui_draw_vm_live_overlay();
        break;

    default:
        break;
    }

    ui_draw_cursor();
}

static void flip_front_buffer(void)
{
    draw_side = (uint8_t)(1u - draw_side);

    if (draw_side) {
        gfx_dispfbuffer(front_a, front_b);
    } else {
        gfx_dispfbuffer(front_b, front_a);
    }
}


void sid_midi_isr(void);
static void the50hzISR(){
    sid_midi_isr();
    sid_midi_age_active_voices();
}






static uint16_t drummer = 0;
static volatile int16_t ps = 0;

int main(int argc, char *argv[])
{
    (void)argc;
    (void)argv;

    app_running = 1;
    //build_testapp();
    
    initMalloc();


    configure_runmode(GAMEMODE_PROFILE_0);
    suspend_desktop();
    
    // sound options if we're using sound
    set_audio_dma(128);
    set_music_dma = 1;
    audio_livesid();
    //enable_audio_dma(); // use this if you want music to be playing without having to watch dog the music routing
    //////////////////////////////////////

    // display set up
    gfx_setlcd(DEFAULT_RENDER_ORDER, FPS_50);
    gfx_mode(480, 320, 480, 320, DISPFLAG_DUALLAYER);
    gfx_usebpalette(sid_ui_palette);
    gfx_usefpalette(sid_ui_palette);
    front_a = gfx_getdrawbuffer();
    front_b = gfx_getshowbuffer();


    ui_create_bitmap((gfx_bitmap_t *)&backbitmap, 480, 320);

    gfx_showbbuffer((gfx_bitmap_t *)&backbitmap);
    gfx_showfbuffer(front_a);
    gfx_usebuffer(front_b);
    draw_side = 0;
    touch_init();



    // required to at least make the sid sounds full volume.
    audio_sidpoke(0, 0x18, 0x0fu);   // full volume on chip
    audio_sidpoke(1, 0x18, 0x0fu);   // full volume on chip

    sid_soundfont_init();
    midi_synth_init();

    // Voice 0: Acoustic Piano (Prog 0) playing Middle C (60)
    //sid_voice_note_on(0, 83, 60, 127);
    //sid_voice_note_on(0, 80, 36, 127);

    //sid_voice_note_on(4, 83, 56, 127);

    //// Voice 1: Synth Bass 1 (Prog 38) playing C2 (36)
    //sid_voice_note_on(3, 81, 36, 127);

    // Voice 3 (SID Chip 2): Lead Square (Prog 80) playing G4 (67)
    //sid_voice_note_on(3, 80, 67, 127);


    // this is used for the SidVoice (program, running VM)
    irq_lcd_vbl(the50hzISR);
    irq_midi(midi_rx_byte);

    ui_redraw_backbuffer();
    
    //sid_voice_note_on(1, 9, 38, 127);

    

    while (1) {
        uint8_t old_pointer_buttons;
        uint32_t new_hash;
        uint8_t joy;

        midi_process_events();
        midi_process_ui_requests();
        gfx_lcdwait();

        midi_process_events();
        midi_process_ui_requests();

        old_pointer_buttons = ui_last_pointer_buttons;
        joy = getjoyport();
        ui_handle_input(joy);
        if (ui_exit_requested) {
            break;
        }
        ui_update_vm_live_follow();

        new_hash = ui_static_hash();
        if (new_hash != ui_back_hash || old_pointer_buttons != ui_last_pointer_buttons) {
            ui_back_hash = new_hash;
            ui_back_dirty = 1;
        }

        if (ui_back_dirty) {
            ui_redraw_backbuffer();
            ui_back_dirty = 0;
        }

        flip_front_buffer();
        gfx_cls();
        ui_draw_dynamic_overlay();

        gfx_displaynow();
    }


    gfx_mode(480, 320, 480, 320, DISPFLAG_DUALLAYER);
    gfx_scrollb(0,0);
    restore_desktop();
    HWKERNAL->exitgamemode();

    // restore the audio system normally used for the OS desktop
    irq_midi(0);
    irq_lcd_vbl(0);
    sid_midi_all_notes_off();
    music_stop();
    set_audio_dma(16 * 1024);   // back to the normal DMA memory buffer
    set_music_dma = 0;          // switch OFF the audio DMA because the OS handles this 

    return 0x00;
}
