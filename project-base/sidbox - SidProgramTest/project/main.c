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
#define UI_PAGE_COUNT 6u
#define UI_TAB_X0 8
#define UI_TAB_Y 32
#define UI_TAB_W 68
#define UI_TAB_H 28
#define UI_TAB_STEP 76
#define UI_VM_ROWS 8u
#define UI_VM_SCAN_LIMIT 96u
#define UI_VM_EDIT_PROGRAM_NONE 0xFFu
#define UI_VM_EDIT_FIELD_OPCODE 0u
#define UI_VM_EDIT_FIELD_PARAM 1u
#define UI_VM_EDIT_FIELD_VALUE 2u
#define UI_VM_EDIT_FIELD_COUNT 3u
#define UI_VM_PANEL_Y 66
#define UI_VM_PANEL_H 206
#define UI_VM_INFO_Y 86
#define UI_VM_HEADER_Y 114
#define UI_VM_ROW_Y0 134
#define UI_VM_SIDE_BUTTON_X 418
#define UI_VM_SIDE_BUTTON_W 34
#define UI_VM_SCROLL_BUTTON_H 32
#define UI_VM_UP_BUTTON_Y 94
#define UI_VM_EDIT_BUTTON_Y 124
#define UI_VM_EDIT_BUTTON_HEIGHT 108
#define UI_VM_DOWN_BUTTON_Y (UI_VM_EDIT_BUTTON_Y + UI_VM_EDIT_BUTTON_HEIGHT - 2)

#define UI_VM_RESTORE_BUTTON_X 70
#define UI_VM_RESTORE_BUTTON_Y 226
#define UI_VM_RESTORE_BUTTON_W 66
#define UI_VM_RESTORE_BUTTON_H 32

#define UI_POINTER_REPEAT_DELAY_TICKS 15u
#define UI_VM_FIELD_BLINK_TICKS 15u
#define UI_CONFIRM_NONE 0u
#define UI_CONFIRM_RESTORE_VM 1u
#define UI_CONFIRM_CLEAR_SEQ 2u
#define UI_MOUSE_LEFT BTN_FIRE
#define UI_MOUSE_RIGHT BTN_FIRE2
#define UI_BUTTON_MAX 190u
#define UI_EVENT_QUEUE_SIZE 16u
#define UI_EVENT_QUEUE_MASK (UI_EVENT_QUEUE_SIZE - 1u)
#define UI_BUTTON_CH_BANK_BASE 100u
#define UI_BUTTON_CH_DEC_BASE 120u
#define UI_BUTTON_CH_INC_BASE 140u
#define UI_BUTTON_FILE_ROW_BASE 180u
#define UI_BUTTON_KEY_BASE 220u
#define UI_FILE_VISIBLE_ROWS 7u
#define UI_FILE_MAX 32u
#define UI_FILE_NAME_LEN 32u
#define UI_FILE_PATH_LEN 96u
#define UI_PROJECT_DIR "sdcard:/synthprogs"
#define UI_PROJECT_EXT ".spp"
#define UI_PROGRAM_EXT ".spg"
#define UI_PROJECT_MAGIC "SIDSPP1"
#define UI_PROGRAM_MAGIC "SIDSPG1"
#define UI_PROJECT_VERSION 1u
#define UI_PROGRAM_VERSION 1u
#define UI_FS_FLAG_DIR 1u
#define UI_FILE_KIND_NONE 0u
#define UI_FILE_KIND_PROGRAM 1u
#define UI_FILE_KIND_PROJECT 2u
#define SEQ_MAX_NOTES 256u
#define SEQ_PENDING_MAX 32u
#define SEQ_VIEW_W 460
#define SEQ_VIEW_X 10
#define SEQ_CURSOR_X 236
#define SEQ_VIEW_Y 64
#define SEQ_VIEW_H 188
#define SEQ_TICKS_PER_PIXEL 2u
#define SEQ_COUNT_IN_BEATS 4u
#define SEQ_METRONOME_CHANNEL 15u
#define SEQ_METRONOME_PROGRAM 118u
#define SEQ_METRONOME_TICKS 4u
#define MIDI_VOICE_SOURCE_LIVE 0u
#define MIDI_VOICE_SOURCE_SEQ 1u
#define MIDI_VOICE_SOURCE_METRO 2u

typedef enum {
    UI_BUTTON_NONE = 0,
    UI_BUTTON_TAB_HOME = 1,
    UI_BUTTON_TAB_CHANNELS,
    UI_BUTTON_TAB_MIXER,
    UI_BUTTON_TAB_PERC,
    UI_BUTTON_TAB_VM,
    UI_BUTTON_TAB_SEQ,
    UI_BUTTON_PANIC,
    UI_BUTTON_SAVE,
    UI_BUTTON_LOAD,
    UI_BUTTON_HOME_PROG_DEC,
    UI_BUTTON_HOME_PROG_INC,
    UI_BUTTON_HOME_GAIN_DEC,
    UI_BUTTON_HOME_GAIN_INC,
    UI_BUTTON_MIX_GLOBAL_DEC,
    UI_BUTTON_MIX_GLOBAL_INC,
    UI_BUTTON_MIX_VOLUME_DEC,
    UI_BUTTON_MIX_VOLUME_INC,
    UI_BUTTON_MIX_EXPR_DEC,
    UI_BUTTON_MIX_EXPR_INC,
    UI_BUTTON_PERC_TOGGLE,
    UI_BUTTON_PERC_GAIN_DEC,
    UI_BUTTON_PERC_GAIN_INC,
    UI_BUTTON_VM_PROG_DEC,
    UI_BUTTON_VM_PROG_INC,
    UI_BUTTON_VM_SCROLL_UP,
    UI_BUTTON_VM_EDIT_TOGGLE,
    UI_BUTTON_VM_SCROLL_DOWN,
    UI_BUTTON_VM_RESTORE,
    UI_BUTTON_VM_FIELD,
    UI_BUTTON_VM_HI_DEC16,
    UI_BUTTON_VM_HI_DEC1,
    UI_BUTTON_VM_HI_INC1,
    UI_BUTTON_VM_HI_INC16,
    UI_BUTTON_VM_LO_DEC16,
    UI_BUTTON_VM_LO_DEC1,
    UI_BUTTON_VM_LO_INC1,
    UI_BUTTON_VM_LO_INC16,
    UI_BUTTON_CONFIRM_RESTORE,
    UI_BUTTON_CONFIRM_CANCEL,
    UI_BUTTON_FILE_UP,
    UI_BUTTON_FILE_DOWN,
    UI_BUTTON_FILE_LOAD_PROJECT,
    UI_BUTTON_FILE_LOAD_PROGRAM,
    UI_BUTTON_FILE_CANCEL,
    UI_BUTTON_KB_BACKSPACE,
    UI_BUTTON_KB_LEFT,
    UI_BUTTON_KB_RIGHT,
    UI_BUTTON_KB_CLEAR,
    UI_BUTTON_KB_SAVE_PROJECT,
    UI_BUTTON_KB_SAVE_PROGRAM,
    UI_BUTTON_KB_CANCEL,
    UI_BUTTON_OVERWRITE_YES,
    UI_BUTTON_OVERWRITE_NO,
    UI_BUTTON_SEQ_REWIND,
    UI_BUTTON_SEQ_RECORD,
    UI_BUTTON_SEQ_PLAY,
    UI_BUTTON_SEQ_FROM,
    UI_BUTTON_SEQ_BPM_DEC,
    UI_BUTTON_SEQ_BPM_INC,
    UI_BUTTON_SEQ_SNAP_TOGGLE,
    UI_BUTTON_SEQ_SNAP_DEC,
    UI_BUTTON_SEQ_SNAP_INC,
    UI_BUTTON_SEQ_CLEAR,
    UI_BUTTON_SEQ_MIDI_OUT
} ui_button_id_t;

typedef enum {
    UI_EVENT_NONE = 0,
    UI_EVENT_BUTTON
} ui_event_type_t;

typedef struct {
    uint16_t id;
    int16_t x;
    int16_t y;
    int16_t w;
    int16_t h;
    uint8_t repeat;
} ui_button_t;

typedef struct {
    uint8_t type;
    uint16_t id;
} ui_event_t;

typedef enum {
    UI_DIALOG_NONE = 0,
    UI_DIALOG_FILE_LOAD,
    UI_DIALOG_KEYBOARD_SAVE,
    UI_DIALOG_OVERWRITE_SAVE
} ui_dialog_t;

typedef struct {
    char magic[8];
    uint16_t version;
    uint16_t header_size;
    uint8_t program;
    uint8_t length;
    sid_instr_t instr[UI_VM_SCAN_LIMIT];
} synth_program_file_t;

typedef struct {
    char magic[8];
    uint16_t version;
    uint16_t header_size;
    uint8_t channel_program[MIDI_CHANNEL_COUNT];
    uint8_t channel_volume[MIDI_CHANNEL_COUNT];
    uint8_t channel_expression[MIDI_CHANNEL_COUNT];
    uint16_t global_gain_percent;
    uint16_t drum_gain_percent;
    uint8_t drum_enabled;
    uint8_t selected_channel;
    uint8_t program_length[128];
    sid_instr_t programs[128][UI_VM_SCAN_LIMIT];
} synth_project_file_t;

typedef enum {
    UI_PAGE_HOME = 0,
    UI_PAGE_CHANNELS,
    UI_PAGE_MIXER,
    UI_PAGE_PERC,
    UI_PAGE_VM,
    UI_PAGE_SEQ
} ui_page_t;

typedef struct {
    uint32_t start;
    uint32_t length;
    uint8_t note;
    uint8_t channel;
    uint8_t program;
    uint8_t velocity;
    uint8_t colour;
    uint8_t used;
} seq_note_t;

typedef struct {
    uint8_t active;
    uint8_t note;
    uint8_t channel;
    uint16_t note_index;
} seq_pending_t;

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
    0x00000000, 0xFF101018, 0xFF1F2937, 0xFF1E5AA8, 0xFF2563EB, 0xFF7C8798, 0xFFC7D2E0, 0xFFE8EEF7,
    0xFF16A34A, 0xFF22C55E, 0xFFF59E0B, 0xFFFFD166, 0xFFDC2626, 0xFFEF4444, 0xFF38BDF8, 0xFFFFFFFF,
    0xFF080B12, 0xFF0C121A, 0xFF111A24, 0xFF182638, 0xFF21364E, 0xFF314A63, 0xFF46617C, 0xFF668098,
    0xFF90A3B6, 0xFFC9D6E2, 0xFF05080D, 0xFF182232, 0xFF2E536C, 0xFF62A6C8, 0xFFE1ECF5, 0xFF0D1621,
    0xFFFF5C8A, 0xFFFFB000, 0xFF7CFF6B, 0xFF49E5FF, 0xFFD685FF, 0xFFFFF06A, 0xFFFF7A3D, 0xFF8FA8FF,
    0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF,
    0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF,
    0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF,
    0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF,
    0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF,
    0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF,
    0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF,
    0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF,
    0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF,
    0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF,
    0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF,
    0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF,
    0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF,
    0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF,
    0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF,
    0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF,
    0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF,
    0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF,
    0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF,
    0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF,
    0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF,
    0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF,
    0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF,
    0xFF002035, 0xFF002F71, 0xFF00509A, 0xFF2B7AB5, 0xFF9ABAEA, 0xFFFFFFFF, 0xFF000000, 0xFF00CA00,
    0xFF00FFFF, 0xFFFF65FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF,
    0xFF000000, 0xFFDC2626, 0xFFEF4444, 0xFF16A34A, 0xFF22C55E, 0xFF1E5AA8, 0xFF2563EB, 0xFFF59E0B,
    0xFFFFD166, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFAFAFAF, 0xFFFFFFFF
};


// colour theme assignements
#define COLOUR_SHADOW                   0xE0
#define COLOUR_BASE                     0xE1
#define COLOUR_BUTTON                   0xE2    // (used for button faces, or header bars)
#define COLOUR_LIGHT                    0xE3    // the bit that looks light the lighter edges of a button
#define COLOUR_BUTTON_TEXT              0xE4
#define COLOUR_HILIGHT_TEXT             0xE5
#define COLOUR_HILIGHT_INVERTED_TEXT    0xE6
#define COLOUR_CODE_OP_INSTR_TEXT       0xE7
#define COLOUR_CODE_P8_VALUE_TEXT       0xE8
#define COLOUR_CODE_P_VALUE_TEXT        0xE9


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
    uint8_t source;
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
static uint8_t ui_recent_channels[4];
static uint8_t ui_page;
static uint8_t ui_channel_bank;
static uint8_t ui_vm_scroll;
static uint8_t ui_exit_requested;
static uint8_t ui_last_joy;
static uint8_t ui_repeat_delay;
static uint8_t ui_last_pointer_down;
static uint8_t ui_last_pointer_buttons;
static uint8_t ui_pointer_repeat_down;
static uint8_t ui_pointer_repeat_ticks;
static int16_t ui_pointer_x;
static int16_t ui_pointer_y;
static char ui_status_message[40];
static uint8_t ui_status_ticks;
static uint32_t midi_note_on_count;
static uint32_t midi_note_off_count;
static uint32_t midi_dropped_event_count;
static uint32_t midi_panic_count;
static uint32_t midi_timeout_note_off_count;
static volatile uint32_t seq_clock_ticks;
static uint32_t seq_last_clock_ticks;
static uint32_t seq_position_ticks;
static uint16_t seq_note_count;
static uint16_t seq_next_note;
static uint16_t seq_bpm;
static uint8_t seq_playing;
static uint8_t seq_recording;
static uint8_t seq_record_armed;
static uint8_t seq_count_in_active;
static uint8_t seq_count_in_value;
static uint16_t seq_count_in_ticks_left;
static uint8_t seq_metronome_ticks;
static uint8_t seq_metronome_note;
static uint8_t seq_play_from_pending;
static uint8_t seq_snap_enabled;
static uint8_t seq_snap_index;
static uint8_t seq_midi_out_enabled;
static uint8_t seq_dragging;
static int16_t seq_drag_start_x;
static uint32_t seq_drag_start_ticks;
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
static uint8_t ui_vm_edit_mode;
static uint8_t ui_vm_edit_program;
static uint8_t ui_vm_edit_row;
static uint8_t ui_vm_edit_field;
static volatile uint8_t ui_vm_field_blink_ticks;
static volatile uint8_t ui_vm_field_blink_on;
static uint8_t ui_confirm_action;
static ui_button_t ui_buttons[UI_BUTTON_MAX];
static uint8_t ui_button_count;
static ui_event_t ui_event_queue[UI_EVENT_QUEUE_SIZE];
static uint8_t ui_event_head;
static uint8_t ui_event_tail;
static uint8_t ui_dialog;
static char ui_file_names[UI_FILE_MAX][UI_FILE_NAME_LEN];
static uint8_t ui_file_count;
static uint8_t ui_file_scroll;
static uint8_t ui_file_selected;
static char ui_save_name[UI_FILE_NAME_LEN];
static uint8_t ui_save_caret;
static uint8_t ui_save_kind;
static char ui_pending_path[UI_FILE_PATH_LEN];
static const sid_instr_t *ui_vm_edit_original;
static sid_instr_t ui_vm_edit_buffer[UI_VM_SCAN_LIMIT];
static sid_instr_t (*ui_program_bank)[UI_VM_SCAN_LIMIT];
static uint8_t ui_program_bank_loaded;
static synth_project_file_t *ui_project_file_buffer;
static synth_program_file_t *ui_program_file_buffer;
static seq_note_t seq_notes[SEQ_MAX_NOTES];
static seq_pending_t seq_pending[SEQ_PENDING_MAX];

static uint8_t midi_running_status;
static uint8_t midi_msg_status;
static uint8_t midi_msg_data[2];
static uint8_t midi_msg_count;
static uint8_t midi_msg_expected;
static uint8_t midi_in_sysex;

static void ui_set_status(const char *message);

static void midi_out_packet3(uint8_t status, uint8_t a, uint8_t b)
{
    uint8_t packet[3];

    packet[0] = status;
    packet[1] = a & 0x7Fu;
    packet[2] = b & 0x7Fu;
    midi_out(packet, 3);
}

static void seq_midi_out_note_on(uint8_t channel, uint8_t note, uint8_t velocity)
{
    if (!seq_midi_out_enabled || channel >= MIDI_CHANNEL_COUNT) {
        return;
    }

    midi_out_packet3((uint8_t)(0x90u | (channel & 0x0Fu)), note, velocity);
}

static void seq_midi_out_note_off(uint8_t channel, uint8_t note)
{
    if (!seq_midi_out_enabled || channel >= MIDI_CHANNEL_COUNT) {
        return;
    }

    midi_out_packet3((uint8_t)(0x80u | (channel & 0x0Fu)), note, 0);
}

static void seq_midi_out_all_notes_off(void)
{
    if (!seq_midi_out_enabled) {
        return;
    }

    for (uint8_t ch = 0; ch < MIDI_CHANNEL_COUNT; ch++) {
        midi_out_packet3((uint8_t)(0xB0u | ch), 123, 0);
    }
}

static void ui_create_bitmap(gfx_bitmap_t *bitmap, int16_t w, int16_t h)
{
    bitmap->memspacelen = (uint32_t)w * (uint32_t)h;
    bitmap->width = (uint16_t)w;
    bitmap->height = (uint16_t)h;
    bitmap->stride = (uint16_t)h;
    bitmap->bitmap = malloc(bitmap->memspacelen);
}

static void ui_storage_init(void)
{
    ui_program_bank = malloc(sizeof(sid_instr_t) * 128u * UI_VM_SCAN_LIMIT);
    ui_project_file_buffer = malloc(sizeof(synth_project_file_t));
    ui_program_file_buffer = malloc(sizeof(synth_program_file_t));

    if (ui_program_bank) {
        memset(ui_program_bank, 0, sizeof(sid_instr_t) * 128u * UI_VM_SCAN_LIMIT);
    }
    if (ui_project_file_buffer) {
        memset(ui_project_file_buffer, 0, sizeof(synth_project_file_t));
    }
    if (ui_program_file_buffer) {
        memset(ui_program_file_buffer, 0, sizeof(synth_program_file_t));
    }
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

static uint8_t sid_find_voice_source(uint8_t channel, uint8_t note, uint8_t source)
{
    for (uint8_t i = 0; i < SID_MIDI_VOICES; i++) {
        if (sid_midi_voice_alloc[i].active &&
            sid_midi_voice_alloc[i].channel == channel &&
            sid_midi_voice_alloc[i].note == note &&
            sid_midi_voice_alloc[i].source == source) {
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
    sid_midi_voice_alloc[voice].source = MIDI_VOICE_SOURCE_LIVE;
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

static void ui_note_channel_used(uint8_t channel)
{
    if (channel >= MIDI_CHANNEL_COUNT) {
        return;
    }

    for (uint8_t i = 0; i < 4; i++) {
        if (ui_recent_channels[i] == channel) {
            return;
        }
    }

    for (uint8_t i = 3; i > 0; i--) {
        ui_recent_channels[i] = ui_recent_channels[i - 1u];
    }
    ui_recent_channels[0] = channel;
}

static void sid_midi_note_on_program_source(uint8_t channel, uint8_t note, uint8_t velocity,
                                            uint8_t program, uint8_t source)
{
    uint8_t voice = sid_find_voice_source(channel, note, source);

    if (source != MIDI_VOICE_SOURCE_METRO && channel == MIDI_DRUM_CHANNEL && !midi_drum_enabled) {
        return;
    }

    if (source != MIDI_VOICE_SOURCE_METRO) {
        ui_note_channel_used(channel);
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
    sid_midi_voice_alloc[voice].program = program;
    sid_midi_voice_alloc[voice].source = source;
    sid_midi_voice_alloc[voice].age_ticks = 0;

    sid_voice_note_on(voice, program, note,
                      source == MIDI_VOICE_SOURCE_METRO ? velocity : midi_effective_velocity(channel, velocity));
    if (program != 128u && program != 9u) {
        sid_voice_pitch_bend(voice, midi_channel_bend[channel]);
    }
    if (source != MIDI_VOICE_SOURCE_METRO) {
        midi_note_on_count++;
    }
}

static void sid_midi_note_on_source(uint8_t channel, uint8_t note, uint8_t velocity, uint8_t source)
{
    sid_midi_note_on_program_source(channel, note, velocity, midi_channel_program[channel], source);
}

static void sid_midi_note_on_event(uint8_t channel, uint8_t note, uint8_t velocity)
{
    sid_midi_note_on_source(channel, note, velocity, MIDI_VOICE_SOURCE_LIVE);
}

static void sid_midi_note_off_source(uint8_t channel, uint8_t note, uint8_t source)
{
    uint8_t voice = sid_find_voice_source(channel, note, source);

    if (voice == 0xFFu) {
        return;
    }

    if (channel == MIDI_DRUM_CHANNEL) {
        sid_midi_voice_alloc[voice].active = 0;
        sid_midi_voice_alloc[voice].source = MIDI_VOICE_SOURCE_LIVE;
        sid_midi_voice_alloc[voice].age_ticks = 0;
        if (source != MIDI_VOICE_SOURCE_METRO) {
            midi_note_off_count++;
        }
        return;
    }

    sid_voice_note_off(voice);
    sid_midi_voice_alloc[voice].active = 0;
    sid_midi_voice_alloc[voice].source = MIDI_VOICE_SOURCE_LIVE;
    sid_midi_voice_alloc[voice].age_ticks = 0;
    if (source != MIDI_VOICE_SOURCE_METRO) {
        midi_note_off_count++;
    }
}

static void sid_midi_note_off_event(uint8_t channel, uint8_t note)
{
    sid_midi_note_off_source(channel, note, MIDI_VOICE_SOURCE_LIVE);
}

static void sid_midi_all_notes_off_event(uint8_t channel)
{
    for (uint8_t i = 0; i < SID_MIDI_VOICES; i++) {
        if (sid_midi_voice_alloc[i].active && sid_midi_voice_alloc[i].channel == channel) {
            sid_voice_note_off(i);
            sid_midi_voice_alloc[i].active = 0;
            sid_midi_voice_alloc[i].source = MIDI_VOICE_SOURCE_LIVE;
            sid_midi_voice_alloc[i].age_ticks = 0;
            midi_note_off_count++;
        }
    }
}

static void sid_midi_all_notes_off_source(uint8_t source)
{
    for (uint8_t i = 0; i < SID_MIDI_VOICES; i++) {
        if (sid_midi_voice_alloc[i].active && sid_midi_voice_alloc[i].source == source) {
            sid_voice_note_off(i);
            sid_midi_voice_alloc[i].active = 0;
            sid_midi_voice_alloc[i].source = MIDI_VOICE_SOURCE_LIVE;
            sid_midi_voice_alloc[i].age_ticks = 0;
            if (source != MIDI_VOICE_SOURCE_METRO) {
                midi_note_off_count++;
            }
        }
    }
}

static void sid_midi_all_notes_off(void)
{
    for (uint8_t i = 0; i < SID_MIDI_VOICES; i++) {
        sid_voice_note_kill(i);
        sid_midi_voice_alloc[i].active = 0;
        sid_midi_voice_alloc[i].source = MIDI_VOICE_SOURCE_LIVE;
        sid_midi_voice_alloc[i].age_ticks = 0;
    }
    seq_midi_out_all_notes_off();
    midi_panic_count++;
}

static uint8_t seq_snap_value(void)
{
    static const uint8_t snaps[4] = { 4, 8, 16, 32 };
    return snaps[seq_snap_index & 3u];
}

static uint16_t seq_beat_ticks(void)
{
    uint32_t beat_ticks = (3000u + (seq_bpm / 2u)) / seq_bpm;

    return (uint16_t)(beat_ticks ? beat_ticks : 1u);
}

static uint16_t seq_grid_ticks(void)
{
    uint32_t beat_ticks = seq_beat_ticks();
    uint32_t grid = (beat_ticks * 4u) / seq_snap_value();

    return (uint16_t)(grid ? grid : 1u);
}

static uint32_t seq_quantize_tick(uint32_t tick)
{
    uint16_t grid = seq_grid_ticks();

    if (!seq_snap_enabled) {
        return tick;
    }
    return ((tick + (grid / 2u)) / grid) * grid;
}

static void seq_stop_playback_notes(void)
{
    sid_midi_all_notes_off_source(MIDI_VOICE_SOURCE_SEQ);
    sid_midi_all_notes_off_source(MIDI_VOICE_SOURCE_METRO);
    seq_midi_out_all_notes_off();
    seq_metronome_ticks = 0;
    seq_metronome_note = 0;
}

static void seq_metronome_click(uint8_t count)
{
    uint8_t note = (count == SEQ_COUNT_IN_BEATS) ? 88u : 76u;

    sid_midi_all_notes_off_source(MIDI_VOICE_SOURCE_METRO);
    if (seq_metronome_note != 0u) {
        seq_midi_out_note_off(SEQ_METRONOME_CHANNEL, seq_metronome_note);
    }
    sid_midi_note_on_program_source(SEQ_METRONOME_CHANNEL, note, 127,
                                    SEQ_METRONOME_PROGRAM, MIDI_VOICE_SOURCE_METRO);
    seq_midi_out_note_on(SEQ_METRONOME_CHANNEL, note, 127);
    seq_metronome_note = note;
    seq_metronome_ticks = SEQ_METRONOME_TICKS;
}

static uint16_t seq_alloc_note(void)
{
    uint16_t index;

    if (seq_note_count < SEQ_MAX_NOTES) {
        index = seq_note_count++;
    } else {
        index = seq_next_note;
        seq_next_note = (uint16_t)((seq_next_note + 1u) % SEQ_MAX_NOTES);
    }

    memset(&seq_notes[index], 0, sizeof(seq_notes[index]));
    seq_notes[index].used = 1;
    return index;
}

static void seq_record_note_on(uint8_t channel, uint8_t note, uint8_t velocity)
{
    uint16_t index;

    if (!seq_recording) {
        return;
    }

    for (uint8_t i = 0; i < SEQ_PENDING_MAX; i++) {
        if (seq_pending[i].active && seq_pending[i].channel == channel && seq_pending[i].note == note) {
            return;
        }
    }

    index = seq_alloc_note();
    seq_notes[index].start = seq_quantize_tick(seq_position_ticks);
    seq_notes[index].length = 1;
    seq_notes[index].note = note;
    seq_notes[index].channel = channel;
    seq_notes[index].program = midi_channel_program[channel];
    seq_notes[index].velocity = velocity;
    seq_notes[index].colour = (uint8_t)(32u + (channel & 7u));

    for (uint8_t i = 0; i < SEQ_PENDING_MAX; i++) {
        if (!seq_pending[i].active) {
            seq_pending[i].active = 1;
            seq_pending[i].note = note;
            seq_pending[i].channel = channel;
            seq_pending[i].note_index = index;
            return;
        }
    }
}

static void seq_record_note_off(uint8_t channel, uint8_t note)
{
    uint32_t end_tick;

    if (!seq_recording) {
        return;
    }

    end_tick = seq_quantize_tick(seq_position_ticks);
    for (uint8_t i = 0; i < SEQ_PENDING_MAX; i++) {
        if (seq_pending[i].active && seq_pending[i].channel == channel && seq_pending[i].note == note) {
            uint16_t index = seq_pending[i].note_index;

            if (index < SEQ_MAX_NOTES && seq_notes[index].used) {
                if (end_tick <= seq_notes[index].start) {
                    end_tick = seq_notes[index].start + 1u;
                }
                seq_notes[index].length = end_tick - seq_notes[index].start;
            }
            seq_pending[i].active = 0;
            return;
        }
    }
}

static void seq_playback_tick(uint32_t tick)
{
    for (uint16_t i = 0; i < seq_note_count && i < SEQ_MAX_NOTES; i++) {
        uint32_t end_tick;

        if (!seq_notes[i].used) {
            continue;
        }

        end_tick = seq_notes[i].start + seq_notes[i].length;
        if (seq_notes[i].start == tick) {
            sid_midi_note_on_program_source(seq_notes[i].channel, seq_notes[i].note,
                                            seq_notes[i].velocity, seq_notes[i].program,
                                            MIDI_VOICE_SOURCE_SEQ);
            seq_midi_out_note_on(seq_notes[i].channel, seq_notes[i].note, seq_notes[i].velocity);
        }
        if (end_tick == tick) {
            sid_midi_note_off_source(seq_notes[i].channel, seq_notes[i].note,
                                     MIDI_VOICE_SOURCE_SEQ);
            seq_midi_out_note_off(seq_notes[i].channel, seq_notes[i].note);
        }
    }
}

static void seq_begin_count_in(void)
{
    seq_stop_playback_notes();
    seq_playing = 0;
    seq_recording = 0;
    seq_count_in_active = 1;
    seq_count_in_value = SEQ_COUNT_IN_BEATS;
    seq_count_in_ticks_left = seq_beat_ticks();
    seq_last_clock_ticks = seq_clock_ticks;
    memset(seq_pending, 0, sizeof(seq_pending));
    seq_metronome_click(seq_count_in_value);
    ui_set_status("Count in 4");
}

static void seq_stop_transport(uint8_t disarm)
{
    seq_stop_playback_notes();
    seq_playing = 0;
    seq_recording = 0;
    seq_count_in_active = 0;
    seq_count_in_value = 0;
    seq_count_in_ticks_left = 0;
    seq_last_clock_ticks = seq_clock_ticks;
    memset(seq_pending, 0, sizeof(seq_pending));
    if (disarm) {
        seq_record_armed = 0;
    }
}

static void seq_update_transport(void)
{
    uint32_t now = seq_clock_ticks;
    uint32_t delta = now - seq_last_clock_ticks;

    seq_last_clock_ticks = now;
    if (!seq_playing && !seq_recording && !seq_count_in_active && seq_metronome_ticks == 0u) {
        return;
    }

    while (delta--) {
        if (seq_metronome_ticks > 0u && --seq_metronome_ticks == 0u) {
            sid_midi_all_notes_off_source(MIDI_VOICE_SOURCE_METRO);
            if (seq_metronome_note != 0u) {
                seq_midi_out_note_off(SEQ_METRONOME_CHANNEL, seq_metronome_note);
                seq_metronome_note = 0;
            }
        }

        if (seq_count_in_active) {
            if (seq_count_in_ticks_left > 0u) {
                seq_count_in_ticks_left--;
            }

            if (seq_count_in_ticks_left == 0u) {
                if (seq_count_in_value > 1u) {
                    seq_count_in_value--;
                    seq_count_in_ticks_left = seq_beat_ticks();
                    seq_metronome_click(seq_count_in_value);
                } else {
                    seq_count_in_active = 0;
                    seq_count_in_value = 0;
                    seq_playing = 1;
                    seq_recording = 1;
                    seq_record_armed = 1;
                    memset(seq_pending, 0, sizeof(seq_pending));
                    ui_set_status("Recording");
                }
            }
            continue;
        }

        if (seq_playing) {
            seq_playback_tick(seq_position_ticks);
        }
        if (seq_playing || seq_recording) {
            seq_position_ticks++;
        }
    }
}

static void seq_rewind(void)
{
    seq_stop_playback_notes();
    seq_count_in_active = 0;
    seq_count_in_value = 0;
    seq_count_in_ticks_left = 0;
    seq_position_ticks = 0;
    seq_last_clock_ticks = seq_clock_ticks;
    memset(seq_pending, 0, sizeof(seq_pending));
}

static void seq_clear_all(void)
{
    seq_stop_playback_notes();
    seq_playing = 0;
    seq_recording = 0;
    seq_record_armed = 0;
    seq_count_in_active = 0;
    seq_count_in_value = 0;
    seq_count_in_ticks_left = 0;
    seq_position_ticks = 0;
    seq_last_clock_ticks = seq_clock_ticks;
    seq_dragging = 0;
    seq_note_count = 0;
    seq_next_note = 0;
    memset(seq_notes, 0, sizeof(seq_notes));
    memset(seq_pending, 0, sizeof(seq_pending));
}

static void seq_set_position_from_drag(int16_t x)
{
    int32_t delta_pixels = (int32_t)x - (int32_t)seq_drag_start_x;
    uint32_t delta_ticks = (uint32_t)((delta_pixels < 0 ? -delta_pixels : delta_pixels) *
                                     (int32_t)SEQ_TICKS_PER_PIXEL);
    uint32_t position;

    if (delta_pixels >= 0) {
        position = (delta_ticks > seq_drag_start_ticks) ? 0u : seq_drag_start_ticks - delta_ticks;
    } else {
        position = seq_drag_start_ticks + delta_ticks;
    }

    seq_position_ticks = seq_quantize_tick(position);
    seq_last_clock_ticks = seq_clock_ticks;
}

static void seq_set_bpm(int16_t bpm)
{
    if (bpm < 40) bpm = 40;
    if (bpm > 240) bpm = 240;
    seq_bpm = (uint16_t)bpm;
}

static void sid_midi_pitch_bend_event(uint8_t channel, uint8_t lsb, uint8_t msb)
{
    int16_t bend = (int16_t)((((uint16_t)msb & 0x7Fu) << 7) | ((uint16_t)lsb & 0x7Fu));
    bend = (int16_t)(bend - 8192);
    ui_note_channel_used(channel);
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
    ui_note_channel_used(channel);

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
        sid_midi_voice_alloc[i].source = MIDI_VOICE_SOURCE_LIVE;
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
            seq_record_note_on(ev.channel, ev.a, ev.b);
            sid_midi_note_on_event(ev.channel, ev.a, ev.b);
            break;

        case MIDI_APP_EVENT_NOTE_OFF:
            seq_record_note_off(ev.channel, ev.a);
            sid_midi_note_off_event(ev.channel, ev.a);
            break;

        case MIDI_APP_EVENT_PROGRAM:
            if (ev.channel != MIDI_DRUM_CHANNEL) {
                ui_note_channel_used(ev.channel);
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
    for (uint8_t i = 0; i < 4; i++) {
        ui_recent_channels[i] = i;
    }
    ui_page = UI_PAGE_HOME;
    ui_channel_bank = 0;
    ui_vm_scroll = 0;
    ui_exit_requested = 0;
    ui_last_joy = 0;
    ui_repeat_delay = 0;
    ui_last_pointer_down = 0;
    ui_last_pointer_buttons = 0;
    ui_pointer_repeat_down = 0;
    ui_pointer_repeat_ticks = 0;
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
    ui_vm_edit_mode = 0;
    ui_vm_edit_program = UI_VM_EDIT_PROGRAM_NONE;
    ui_vm_edit_row = 0;
    ui_vm_edit_field = UI_VM_EDIT_FIELD_OPCODE;
    ui_vm_field_blink_ticks = 0;
    ui_vm_field_blink_on = 1;
    ui_confirm_action = UI_CONFIRM_NONE;
    ui_button_count = 0;
    ui_event_head = 0;
    ui_event_tail = 0;
    ui_dialog = UI_DIALOG_NONE;
    memset(ui_file_names, 0, sizeof(ui_file_names));
    ui_file_count = 0;
    ui_file_scroll = 0;
    ui_file_selected = 0;
    ui_save_name[0] = 0;
    ui_save_caret = 0;
    ui_save_kind = UI_FILE_KIND_PROJECT;
    ui_pending_path[0] = 0;
    ui_vm_edit_original = NULL;
    memset(ui_vm_edit_buffer, 0, sizeof(ui_vm_edit_buffer));
    if (ui_program_bank) {
        memset(ui_program_bank, 0, sizeof(sid_instr_t) * 128u * UI_VM_SCAN_LIMIT);
    }
    ui_program_bank_loaded = 0;
    midi_note_on_count = 0;
    midi_note_off_count = 0;
    midi_dropped_event_count = 0;
    midi_panic_count = 0;
    midi_timeout_note_off_count = 0;
    seq_clock_ticks = 0;
    seq_last_clock_ticks = 0;
    seq_position_ticks = 0;
    seq_note_count = 0;
    seq_next_note = 0;
    seq_bpm = 120;
    seq_playing = 0;
    seq_recording = 0;
    seq_record_armed = 0;
    seq_count_in_active = 0;
    seq_count_in_value = 0;
    seq_count_in_ticks_left = 0;
    seq_metronome_ticks = 0;
    seq_metronome_note = 0;
    seq_play_from_pending = 0;
    seq_snap_enabled = 1;
    seq_snap_index = 2;
    seq_midi_out_enabled = 0;
    seq_dragging = 0;
    seq_drag_start_x = 0;
    seq_drag_start_ticks = 0;
    memset(seq_notes, 0, sizeof(seq_notes));
    memset(seq_pending, 0, sizeof(seq_pending));
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

static void ui_button_begin_frame(void)
{
    ui_button_count = 0;
}

static void ui_button_register(uint16_t id, int16_t x, int16_t y, int16_t w, int16_t h, uint8_t repeat)
{
    ui_button_t *button;

    if (id == UI_BUTTON_NONE || ui_button_count >= UI_BUTTON_MAX) {
        return;
    }

    button = &ui_buttons[ui_button_count++];
    button->id = id;
    button->x = x;
    button->y = y;
    button->w = w;
    button->h = h;
    button->repeat = repeat;
}

static const ui_button_t *ui_button_hit(int16_t x, int16_t y)
{
    for (int16_t i = (int16_t)ui_button_count - 1; i >= 0; i--) {
        if (ui_point_in(x, y, ui_buttons[i].x, ui_buttons[i].y, ui_buttons[i].w, ui_buttons[i].h)) {
            return &ui_buttons[i];
        }
    }

    return NULL;
}

static void ui_event_push(uint8_t type, uint16_t id)
{
    uint8_t next = (uint8_t)((ui_event_head + 1u) & UI_EVENT_QUEUE_MASK);

    if (next == ui_event_tail) {
        return;
    }

    ui_event_queue[ui_event_head].type = type;
    ui_event_queue[ui_event_head].id = id;
    ui_event_head = next;
}

static uint8_t ui_event_pop(ui_event_t *event)
{
    if (ui_event_tail == ui_event_head) {
        return 0;
    }

    *event = ui_event_queue[ui_event_tail];
    ui_event_tail = (uint8_t)((ui_event_tail + 1u) & UI_EVENT_QUEUE_MASK);
    return 1;
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

static void ui_create_button(uint16_t id, int16_t x, int16_t y, int16_t w, int16_t h,
                             const char *label, uint8_t active, uint8_t repeat)
{
    ui_button_register(id, x, y, w, h, repeat);
    ui_button_draw(x, y, w, h, label, active);
}

static void ui_button_draw_red(int16_t x, int16_t y, int16_t w, int16_t h, const char *label, uint8_t active)
{
    uint8_t pressed = (uint8_t)((ui_last_pointer_buttons & UI_MOUSE_LEFT) &&
                                ui_point_in(ui_pointer_x, ui_pointer_y, x, y, w, h));
    uint8_t fill = pressed ? 20u : (active ? 12u : 27u);
    uint8_t lip = active ? 13u : 21u;
    int16_t text_x;
    int16_t text_y;
    int16_t label_w = (int16_t)(strlen(label) * UI_FONT_W);

    ui_box(x, y, w, h, active ? 13u : 26u, fill);
    if (active && !pressed) {
        gfx_setcolour(32);
        gfx_rectf((int16_t)(x - 1), (int16_t)(y - 1), (int16_t)(w + 2), 1);
        gfx_rectf((int16_t)(x - 1), (int16_t)(y + h), (int16_t)(w + 2), 1);
        gfx_rectf((int16_t)(x - 1), (int16_t)(y - 1), 1, (int16_t)(h + 2));
        gfx_rectf((int16_t)(x + w), (int16_t)(y - 1), 1, (int16_t)(h + 2));
    }

    gfx_setcolour(pressed ? 16u : lip);
    gfx_rectf((int16_t)(x + 1), (int16_t)(y + 1), (int16_t)(w - 2), 2);
    gfx_rectf((int16_t)(x + 1), (int16_t)(y + 1), 2, (int16_t)(h - 2));
    gfx_setcolour(pressed ? 13u : 16u);
    gfx_rectf((int16_t)(x + 1), (int16_t)(y + h - 3), (int16_t)(w - 2), 2);
    gfx_rectf((int16_t)(x + w - 3), (int16_t)(y + 1), 2, (int16_t)(h - 2));

    text_x = (label_w > (w - 8)) ? (int16_t)(x + 4) : (int16_t)(x + ((w - label_w) / 2));
    text_y = (int16_t)(y + ((h > UI_FONT_H) ? ((h - UI_FONT_H) / 2) : 0));
    if (pressed) {
        text_x++;
        text_y++;
    }

    gfx_setcolour(active ? 15u : 25u);
    gfx_drawtext(text_x, text_y, label);
}

static void ui_create_button_red(uint16_t id, int16_t x, int16_t y, int16_t w, int16_t h,
                                 const char *label, uint8_t active, uint8_t repeat)
{
    ui_button_register(id, x, y, w, h, repeat);
    ui_button_draw_red(x, y, w, h, label, active);
}

static void ui_button_draw_vertical(int16_t x, int16_t y, int16_t w, int16_t h, const char *label, uint8_t active)
{
    uint8_t pressed = (uint8_t)((ui_last_pointer_buttons & UI_MOUSE_LEFT) &&
                                ui_point_in(ui_pointer_x, ui_pointer_y, x, y, w, h));
    uint8_t fill = pressed ? 20u : (active ? 28u : 27u);
    uint8_t text = active ? 15u : 25u;
    uint8_t len = (uint8_t)strlen(label);
    int16_t text_x = (int16_t)(x + ((w - UI_FONT_W) / 2));
    int16_t text_y = (int16_t)(y + ((h - (len * UI_FONT_H)) / 2));
    char one[2] = { 0, 0 };

    ui_box(x, y, w, h, 26, fill);
    gfx_setcolour(pressed ? 16u : (active ? 29u : 21u));
    gfx_rectf((int16_t)(x + 1), (int16_t)(y + 1), (int16_t)(w - 2), 2);
    gfx_rectf((int16_t)(x + 1), (int16_t)(y + 1), 2, (int16_t)(h - 2));
    gfx_setcolour(pressed ? 29u : 16u);
    gfx_rectf((int16_t)(x + 1), (int16_t)(y + h - 3), (int16_t)(w - 2), 2);
    gfx_rectf((int16_t)(x + w - 3), (int16_t)(y + 1), 2, (int16_t)(h - 2));

    if (text_y < y + 2) {
        text_y = (int16_t)(y + 2);
    }
    if (pressed) {
        text_x++;
        text_y++;
    }

    gfx_setcolour(text);
    for (uint8_t i = 0; i < len; i++) {
        one[0] = label[i];
        gfx_drawtext(text_x, (int16_t)(text_y + (i * UI_FONT_H)), one);
    }
}

static void ui_create_button_vertical(uint16_t id, int16_t x, int16_t y, int16_t w, int16_t h,
                                      const char *label, uint8_t active, uint8_t repeat)
{
    ui_button_register(id, x, y, w, h, repeat);
    ui_button_draw_vertical(x, y, w, h, label, active);
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
    gfx_rectf(0, (int16_t)(UI_TAB_Y + UI_TAB_H + 3), UI_SCREEN_W, 1);
}

static const char *ui_page_name(uint8_t page)
{
    switch (page) {
    case UI_PAGE_HOME: return "HOME";
    case UI_PAGE_CHANNELS: return "CHANNELS";
    case UI_PAGE_MIXER: return "MIXER";
    case UI_PAGE_PERC: return "PERC";
    case UI_PAGE_VM: return "VM";
    case UI_PAGE_SEQ: return "SEQ";
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
    case SID_OP_LOOP_BACK: return "LOOPBK";
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

static void ui_vm_editor_clamp_selection(void)
{
    uint8_t program = midi_channel_program[ui_selected_channel];
    uint8_t len = vm_program_length(program);

    if (len == 0) {
        ui_vm_edit_row = 0;
        ui_vm_scroll = 0;
        return;
    }

    if (ui_vm_edit_row >= len) {
        ui_vm_edit_row = (uint8_t)(len - 1u);
    }

    if (ui_vm_edit_field >= UI_VM_EDIT_FIELD_COUNT) {
        ui_vm_edit_field = UI_VM_EDIT_FIELD_OPCODE;
    }

    if (ui_vm_edit_row < ui_vm_scroll) {
        ui_vm_scroll = ui_vm_edit_row;
    } else if (ui_vm_edit_row >= (uint8_t)(ui_vm_scroll + UI_VM_ROWS)) {
        ui_vm_scroll = (uint8_t)(ui_vm_edit_row - UI_VM_ROWS + 1u);
    }

    ui_clamp_vm_scroll();
}

static uint8_t ui_vm_editor_open(uint8_t program)
{
    const sid_instr_t *src;
    uint8_t len;

    if (program >= 128u) {
        ui_set_status("Percussion router has no VM edit");
        return 0;
    }

    src = sid_soundfont_bank[program];
    if (!src) {
        ui_set_status("No VM program to edit");
        return 0;
    }

    if (ui_vm_edit_program != program) {
        if (ui_vm_edit_program != UI_VM_EDIT_PROGRAM_NONE &&
                sid_soundfont_bank[ui_vm_edit_program] == ui_vm_edit_buffer) {
            sid_soundfont_bank[ui_vm_edit_program] = ui_vm_edit_original;
        }

        ui_vm_edit_original = src;
        len = vm_program_length(program);
        if (len == 0 || len > UI_VM_SCAN_LIMIT) {
            len = UI_VM_SCAN_LIMIT;
        }

        memset(ui_vm_edit_buffer, 0, sizeof(ui_vm_edit_buffer));
        for (uint8_t i = 0; i < len; i++) {
            ui_vm_edit_buffer[i] = src[i];
        }
        ui_vm_edit_buffer[UI_VM_SCAN_LIMIT - 1u].opcode = SID_OP_END;
        ui_vm_edit_program = program;
        sid_soundfont_bank[program] = ui_vm_edit_buffer;
        ui_vm_edit_row = 0;
        ui_vm_edit_field = UI_VM_EDIT_FIELD_OPCODE;
        ui_vm_scroll = 0;
    }

    ui_vm_edit_mode = 1;
    ui_vm_field_blink_ticks = 0;
    ui_vm_field_blink_on = 1;
    ui_vm_editor_clamp_selection();
    ui_set_status("VM editor uses RAM patch");
    return 1;
}

static void ui_vm_editor_toggle(void)
{
    uint8_t program = midi_channel_program[ui_selected_channel];

    if (ui_vm_edit_mode && ui_vm_edit_program == program) {
        ui_vm_edit_mode = 0;
        ui_set_status("VM edit view closed");
        return;
    }

    (void)ui_vm_editor_open(program);
}

static void ui_vm_editor_select_row(uint8_t row)
{
    ui_vm_edit_row = row;
    ui_vm_field_blink_ticks = 0;
    ui_vm_field_blink_on = 1;
    ui_vm_editor_clamp_selection();
}

static void ui_vm_editor_select_delta(int8_t delta)
{
    int16_t row = (int16_t)ui_vm_edit_row + delta;

    if (row < 0) {
        row = 0;
    }

    ui_vm_edit_row = (uint8_t)row;
    ui_vm_field_blink_ticks = 0;
    ui_vm_field_blink_on = 1;
    ui_vm_editor_clamp_selection();
}

static void ui_vm_editor_field_delta(int8_t delta)
{
    int8_t field = (int8_t)ui_vm_edit_field + delta;

    if (field < 0) {
        field = (int8_t)(UI_VM_EDIT_FIELD_COUNT - 1u);
    } else if (field >= (int8_t)UI_VM_EDIT_FIELD_COUNT) {
        field = 0;
    }

    ui_vm_edit_field = (uint8_t)field;
    ui_vm_field_blink_ticks = 0;
    ui_vm_field_blink_on = 1;
}

static void ui_vm_editor_adjust(int16_t delta)
{
    sid_instr_t *instr;
    int32_t value;

    if (!ui_vm_edit_mode || ui_vm_edit_program == UI_VM_EDIT_PROGRAM_NONE ||
            ui_vm_edit_program != midi_channel_program[ui_selected_channel]) {
        return;
    }

    ui_vm_editor_clamp_selection();
    instr = &ui_vm_edit_buffer[ui_vm_edit_row];

    switch (ui_vm_edit_field) {
    case UI_VM_EDIT_FIELD_OPCODE:
        value = (int32_t)instr->opcode + delta;
        if (value < SID_OP_END) value = SID_OP_END;
        if (value > SID_OP_LOOP_BACK) value = SID_OP_LOOP_BACK;
        instr->opcode = (uint8_t)value;
        break;
    case UI_VM_EDIT_FIELD_PARAM:
        value = (int32_t)instr->param8 + delta;
        if (value < 0) value = 0;
        if (value > 0xFF) value = 0xFF;
        instr->param8 = (uint8_t)value;
        break;
    case UI_VM_EDIT_FIELD_VALUE:
        value = (int32_t)instr->value + delta;
        if (value < 0) value = 0;
        if (value > 0xFFFF) value = 0xFFFF;
        instr->value = (uint16_t)value;
        break;
    default:
        break;
    }

    ui_vm_edit_buffer[UI_VM_SCAN_LIMIT - 1u].opcode = SID_OP_END;
    ui_back_dirty = 1;
}

static void ui_vm_editor_restore_default(void)
{
    uint8_t len = 0;
    uint8_t program = ui_vm_edit_program;
    const sid_instr_t *src = ui_vm_edit_original;

    if (program == UI_VM_EDIT_PROGRAM_NONE || program >= 128u || !src) {
        ui_set_status("No VM default to restore");
        return;
    }

    for (uint8_t i = 0; i < UI_VM_SCAN_LIMIT; i++) {
        len = (uint8_t)(i + 1u);
        if (src[i].opcode == SID_OP_END) {
            break;
        }
    }

    memset(ui_vm_edit_buffer, 0, sizeof(ui_vm_edit_buffer));
    for (uint8_t i = 0; i < len; i++) {
        ui_vm_edit_buffer[i] = src[i];
    }

    ui_vm_edit_buffer[UI_VM_SCAN_LIMIT - 1u].opcode = SID_OP_END;
    sid_soundfont_bank[program] = ui_vm_edit_buffer;
    ui_vm_edit_row = 0;
    ui_vm_edit_field = UI_VM_EDIT_FIELD_OPCODE;
    ui_vm_scroll = 0;
    ui_vm_edit_mode = 1;
    sid_midi_all_notes_off();
    ui_set_status("VM restored from preset");
    ui_back_dirty = 1;
}

static void ui_vm_editor_clear_ram_patch(void)
{
    if (ui_vm_edit_program != UI_VM_EDIT_PROGRAM_NONE &&
            sid_soundfont_bank[ui_vm_edit_program] == ui_vm_edit_buffer) {
        sid_soundfont_bank[ui_vm_edit_program] = ui_vm_edit_original;
    }

    ui_vm_edit_mode = 0;
    ui_vm_edit_program = UI_VM_EDIT_PROGRAM_NONE;
    ui_vm_edit_original = NULL;
    ui_vm_edit_row = 0;
    ui_vm_edit_field = UI_VM_EDIT_FIELD_OPCODE;
    memset(ui_vm_edit_buffer, 0, sizeof(ui_vm_edit_buffer));
}

static void ui_vm_editor_apply_patch(uint8_t program, const sid_instr_t *instr, uint8_t len)
{
    if (program >= 128u || !instr || len == 0u) {
        ui_vm_editor_clear_ram_patch();
        return;
    }

    ui_vm_editor_clear_ram_patch();
    ui_vm_edit_original = sid_soundfont_bank[program];
    memset(ui_vm_edit_buffer, 0, sizeof(ui_vm_edit_buffer));
    if (len > UI_VM_SCAN_LIMIT) {
        len = UI_VM_SCAN_LIMIT;
    }
    for (uint8_t i = 0; i < len; i++) {
        ui_vm_edit_buffer[i] = instr[i];
    }
    ui_vm_edit_buffer[UI_VM_SCAN_LIMIT - 1u].opcode = SID_OP_END;
    ui_vm_edit_program = program;
    sid_soundfont_bank[program] = ui_vm_edit_buffer;
    ui_vm_edit_mode = 1;
    ui_vm_edit_row = 0;
    ui_vm_edit_field = UI_VM_EDIT_FIELD_OPCODE;
    ui_vm_scroll = 0;
}

static uint8_t ui_project_ensure_dir(void)
{
    uint32_t flags = 0;
    uint32_t size = 0;
    FRESULT res;

    res = sfstat((char *)UI_PROJECT_DIR, &flags, &size);
    if (res == FR_OK) {
        return (flags & UI_FS_FLAG_DIR) ? 1u : 0u;
    }

    res = sfmkdir((char *)UI_PROJECT_DIR);
    if (res == FR_OK || res == FR_EXIST) {
        return 1u;
    }

    ui_set_status("Cannot create synthprogs folder");
    return 0;
}

static uint8_t ui_name_has_ext(const char *name, const char *ext)
{
    uint8_t len = (uint8_t)strlen(name);
    uint8_t ext_len = (uint8_t)strlen(ext);

    if (len < ext_len) {
        return 0;
    }

    for (uint8_t i = 0; i < ext_len; i++) {
        char a = name[len - ext_len + i];
        char b = ext[i];

        if (a >= 'A' && a <= 'Z') {
            a = (char)(a + ('a' - 'A'));
        }
        if (b >= 'A' && b <= 'Z') {
            b = (char)(b + ('a' - 'A'));
        }
        if (a != b) {
            return 0;
        }
    }

    return 1;
}

static uint8_t ui_file_kind_from_name(const char *name)
{
    if (ui_name_has_ext(name, UI_PROJECT_EXT)) {
        return UI_FILE_KIND_PROJECT;
    }
    if (ui_name_has_ext(name, UI_PROGRAM_EXT)) {
        return UI_FILE_KIND_PROGRAM;
    }
    return UI_FILE_KIND_NONE;
}

static void ui_file_make_path(const char *name, uint8_t kind, char *out, uint32_t outcap)
{
    const char *ext = (kind == UI_FILE_KIND_PROJECT) ? UI_PROJECT_EXT : UI_PROGRAM_EXT;

    if (ui_name_has_ext(name, ext)) {
        snprintf(out, outcap, "%s/%s", UI_PROJECT_DIR, name);
    } else {
        snprintf(out, outcap, "%s/%s%s", UI_PROJECT_DIR, name, ext);
    }
}

static uint8_t ui_file_exists(const char *path)
{
    uint32_t flags = 0;
    uint32_t size = 0;

    return (sfstat((char *)path, &flags, &size) == FR_OK && !(flags & UI_FS_FLAG_DIR)) ? 1u : 0u;
}

static void ui_program_pack(synth_program_file_t *program_file, uint8_t program)
{
    const sid_instr_t *prog = NULL;
    uint8_t len = 0;

    memset(program_file, 0, sizeof(*program_file));
    memcpy(program_file->magic, UI_PROGRAM_MAGIC, sizeof(UI_PROGRAM_MAGIC) - 1u);
    program_file->version = UI_PROGRAM_VERSION;
    program_file->header_size = sizeof(*program_file);
    program_file->program = program;

    if (program < 128u) {
        prog = sid_soundfont_bank[program];
        len = vm_program_length(program);
    }

    if (!prog || len == 0u || len > UI_VM_SCAN_LIMIT) {
        len = UI_VM_SCAN_LIMIT;
    }

    program_file->length = len;
    if (prog) {
        for (uint8_t i = 0; i < len; i++) {
            program_file->instr[i] = prog[i];
        }
    }
    program_file->instr[UI_VM_SCAN_LIMIT - 1u].opcode = SID_OP_END;
}

static void ui_project_pack(synth_project_file_t *project)
{
    memset(project, 0, sizeof(*project));
    memcpy(project->magic, UI_PROJECT_MAGIC, sizeof(UI_PROJECT_MAGIC) - 1u);
    project->version = UI_PROJECT_VERSION;
    project->header_size = sizeof(*project);
    memcpy(project->channel_program, midi_channel_program, sizeof(project->channel_program));
    memcpy(project->channel_volume, midi_channel_volume, sizeof(project->channel_volume));
    memcpy(project->channel_expression, midi_channel_expression, sizeof(project->channel_expression));
    project->global_gain_percent = midi_global_gain_percent;
    project->drum_gain_percent = midi_drum_gain_percent;
    project->drum_enabled = midi_drum_enabled;
    project->selected_channel = ui_selected_channel;

    for (uint8_t program = 0; program < 128u; program++) {
        const sid_instr_t *prog = sid_soundfont_bank[program];
        uint8_t len = vm_program_length(program);

        if (!prog || len == 0u || len > UI_VM_SCAN_LIMIT) {
            len = UI_VM_SCAN_LIMIT;
        }
        project->program_length[program] = len;
        if (prog) {
            for (uint8_t i = 0; i < len; i++) {
                project->programs[program][i] = prog[i];
            }
        }
        project->programs[program][UI_VM_SCAN_LIMIT - 1u].opcode = SID_OP_END;
    }
}

static uint8_t ui_program_save_path(const char *path)
{
    uint8_t program = midi_channel_program[ui_selected_channel];
    uint32_t written = 0;
    FRESULT res;

    if (ui_vm_edit_program != UI_VM_EDIT_PROGRAM_NONE &&
            sid_soundfont_bank[ui_vm_edit_program] == ui_vm_edit_buffer) {
        program = ui_vm_edit_program;
    }

    if (program >= 128u) {
        ui_set_status("No VM program to save");
        return 0;
    }
    if (!ui_program_file_buffer) {
        ui_set_status("Program save buffer missing");
        return 0;
    }

    ui_program_pack(ui_program_file_buffer, program);
    res = sfopen(1, (char *)path, (uint8_t)(SD_WRITE | SD_CREATE_ALWAYS));
    if (res != FR_OK) {
        ui_set_status("Program save open failed");
        return 0;
    }

    res = sfwrite(1, ui_program_file_buffer, sizeof(*ui_program_file_buffer), &written);
    sfclose(1);
    if (res != FR_OK || written != sizeof(*ui_program_file_buffer)) {
        ui_set_status("Program save write failed");
        return 0;
    }

    ui_set_status("Program saved");
    return 1;
}

static uint8_t ui_project_save_path(const char *path)
{
    uint32_t written = 0;
    FRESULT res;

    if (!ui_project_file_buffer) {
        ui_set_status("Project save buffer missing");
        return 0;
    }

    ui_project_pack(ui_project_file_buffer);
    res = sfopen(1, (char *)path, (uint8_t)(SD_WRITE | SD_CREATE_ALWAYS));
    if (res != FR_OK) {
        ui_set_status("Project save open failed");
        return 0;
    }

    res = sfwrite(1, ui_project_file_buffer, sizeof(*ui_project_file_buffer), &written);
    sfclose(1);
    if (res != FR_OK || written != sizeof(*ui_project_file_buffer)) {
        ui_set_status("Project save write failed");
        return 0;
    }

    ui_set_status("Project saved");
    return 1;
}

static uint8_t ui_program_load_path(const char *path)
{
    uint8_t target = midi_channel_program[ui_selected_channel];
    uint32_t read = 0;
    FRESULT res;

    if (ui_vm_edit_program != UI_VM_EDIT_PROGRAM_NONE &&
            ui_vm_edit_program == midi_channel_program[ui_selected_channel]) {
        target = ui_vm_edit_program;
    }

    if (target >= 128u) {
        ui_set_status("Select a VM program first");
        return 0;
    }

    if (!ui_program_file_buffer) {
        ui_set_status("Program load buffer missing");
        return 0;
    }

    memset(ui_program_file_buffer, 0, sizeof(*ui_program_file_buffer));
    res = sfopen(1, (char *)path, SD_READ);
    if (res != FR_OK) {
        ui_set_status("Program load open failed");
        return 0;
    }

    res = sfread(1, ui_program_file_buffer, sizeof(*ui_program_file_buffer), &read);
    sfclose(1);
    if (res != FR_OK || read < 32u ||
            memcmp(ui_program_file_buffer->magic, UI_PROGRAM_MAGIC, sizeof(UI_PROGRAM_MAGIC) - 1u) != 0 ||
            ui_program_file_buffer->version > UI_PROGRAM_VERSION ||
            ui_program_file_buffer->length == 0u ||
            ui_program_file_buffer->length > UI_VM_SCAN_LIMIT) {
        ui_set_status("Bad program file");
        return 0;
    }

    ui_vm_editor_apply_patch(target, ui_program_file_buffer->instr, ui_program_file_buffer->length);
    sid_midi_all_notes_off();
    ui_set_status("Program loaded into VM");
    return 1;
}

static uint8_t ui_project_load_path(const char *path)
{
    uint32_t read = 0;
    FRESULT res;

    if (!ui_project_file_buffer || !ui_program_bank) {
        ui_set_status("Project load buffer missing");
        return 0;
    }

    memset(ui_project_file_buffer, 0, sizeof(*ui_project_file_buffer));
    res = sfopen(1, (char *)path, SD_READ);
    if (res != FR_OK) {
        ui_set_status("Project load open failed");
        return 0;
    }

    res = sfread(1, ui_project_file_buffer, sizeof(*ui_project_file_buffer), &read);
    sfclose(1);
    if (res != FR_OK || read < 32u ||
            memcmp(ui_project_file_buffer->magic, UI_PROJECT_MAGIC, sizeof(UI_PROJECT_MAGIC) - 1u) != 0 ||
            ui_project_file_buffer->version > UI_PROJECT_VERSION) {
        ui_set_status("Bad project file");
        return 0;
    }

    memcpy(midi_channel_program, ui_project_file_buffer->channel_program, sizeof(midi_channel_program));
    memcpy(midi_channel_volume, ui_project_file_buffer->channel_volume, sizeof(midi_channel_volume));
    memcpy(midi_channel_expression, ui_project_file_buffer->channel_expression, sizeof(midi_channel_expression));
    midi_global_gain_percent = ui_project_file_buffer->global_gain_percent;
    midi_drum_gain_percent = ui_project_file_buffer->drum_gain_percent;
    midi_drum_enabled = ui_project_file_buffer->drum_enabled ? 1u : 0u;
    ui_selected_channel = (ui_project_file_buffer->selected_channel < MIDI_CHANNEL_COUNT) ?
        ui_project_file_buffer->selected_channel : 0u;
    ui_channel_bank = (uint8_t)(ui_selected_channel / 4u);

    ui_vm_editor_clear_ram_patch();
    for (uint8_t program = 0; program < 128u; program++) {
        uint8_t len = ui_project_file_buffer->program_length[program];
        if (len == 0u || len > UI_VM_SCAN_LIMIT) {
            len = UI_VM_SCAN_LIMIT;
        }
        for (uint8_t i = 0; i < len; i++) {
            ui_program_bank[program][i] = ui_project_file_buffer->programs[program][i];
        }
        ui_program_bank[program][UI_VM_SCAN_LIMIT - 1u].opcode = SID_OP_END;
        sid_soundfont_bank[program] = ui_program_bank[program];
    }
    ui_program_bank_loaded = 1;

    sid_midi_all_notes_off();
    midi_update_all_active_volume();
    ui_set_status("Project loaded");
    return 1;
}

static void ui_file_refresh(void)
{
    void *dir;
    char name[UI_FILE_NAME_LEN];
    uint32_t flags = 0;
    uint32_t size = 0;
    int32_t res;

    ui_file_count = 0;
    ui_file_scroll = 0;
    ui_file_selected = 0;
    memset(ui_file_names, 0, sizeof(ui_file_names));

    dir = sfopendir((char *)UI_PROJECT_DIR);
    if (!dir) {
        ui_set_status("No synthprogs folder/files");
        return;
    }

    while (ui_file_count < UI_FILE_MAX) {
        res = sfreaddir(dir, name, sizeof(name), &flags, &size);
        if (res <= 0) {
            break;
        }
        if ((flags & UI_FS_FLAG_DIR) || ui_file_kind_from_name(name) == UI_FILE_KIND_NONE) {
            continue;
        }

        snprintf(ui_file_names[ui_file_count], UI_FILE_NAME_LEN, "%s", name);
        ui_file_count++;
    }

    sfclosedir(dir);

    for (uint8_t i = 0; i < ui_file_count; i++) {
        for (uint8_t j = (uint8_t)(i + 1u); j < ui_file_count; j++) {
            if (strcmp(ui_file_names[j], ui_file_names[i]) < 0) {
                char tmp[UI_FILE_NAME_LEN];
                memcpy(tmp, ui_file_names[i], sizeof(tmp));
                memcpy(ui_file_names[i], ui_file_names[j], sizeof(tmp));
                memcpy(ui_file_names[j], tmp, sizeof(tmp));
            }
        }
    }
}

static void ui_start_save_keyboard(void)
{
    if (!ui_project_ensure_dir()) {
        return;
    }

    snprintf(ui_save_name, sizeof(ui_save_name), "PROJECT");
    ui_save_kind = UI_FILE_KIND_PROJECT;
    ui_save_caret = (uint8_t)strlen(ui_save_name);
    ui_pending_path[0] = 0;
    ui_dialog = UI_DIALOG_KEYBOARD_SAVE;
    ui_back_dirty = 1;
}

static void ui_start_load_browser(void)
{
    ui_project_ensure_dir();
    ui_file_refresh();
    ui_dialog = UI_DIALOG_FILE_LOAD;
    ui_back_dirty = 1;
}

static void ui_keyboard_append(char c)
{
    uint8_t len = (uint8_t)strlen(ui_save_name);

    if (len >= UI_FILE_NAME_LEN - 5u) {
        return;
    }

    if (ui_save_caret > len) {
        ui_save_caret = len;
    }

    for (int16_t i = (int16_t)len; i >= (int16_t)ui_save_caret; i--) {
        ui_save_name[i + 1] = ui_save_name[i];
    }
    ui_save_name[ui_save_caret++] = c;
    ui_vm_field_blink_ticks = 0;
    ui_vm_field_blink_on = 1;
}

static void ui_keyboard_backspace(void)
{
    uint8_t len = (uint8_t)strlen(ui_save_name);

    if (ui_save_caret > len) {
        ui_save_caret = len;
    }

    if (len > 0u && ui_save_caret > 0u) {
        for (uint8_t i = (uint8_t)(ui_save_caret - 1u); i < len; i++) {
            ui_save_name[i] = ui_save_name[i + 1u];
        }
        ui_save_caret--;
        ui_vm_field_blink_ticks = 0;
        ui_vm_field_blink_on = 1;
    }
}

static void ui_keyboard_move_caret(int8_t delta)
{
    int16_t caret = (int16_t)ui_save_caret + delta;
    uint8_t len = (uint8_t)strlen(ui_save_name);

    if (caret < 0) {
        caret = 0;
    } else if (caret > len) {
        caret = len;
    }

    ui_save_caret = (uint8_t)caret;
    ui_vm_field_blink_ticks = 0;
    ui_vm_field_blink_on = 1;
}

static void ui_keyboard_commit_save(uint8_t kind)
{
    if (ui_save_name[0] == 0) {
        ui_set_status("Enter a file name");
        return;
    }

    ui_save_kind = kind;
    ui_file_make_path(ui_save_name, kind, ui_pending_path, sizeof(ui_pending_path));
    if (ui_file_exists(ui_pending_path)) {
        ui_dialog = UI_DIALOG_OVERWRITE_SAVE;
        ui_back_dirty = 1;
        return;
    }

    if ((kind == UI_FILE_KIND_PROJECT && ui_project_save_path(ui_pending_path)) ||
            (kind == UI_FILE_KIND_PROGRAM && ui_program_save_path(ui_pending_path))) {
        ui_dialog = UI_DIALOG_NONE;
        ui_file_refresh();
    }
    ui_back_dirty = 1;
}

static void ui_load_selected_file(uint8_t kind)
{
    uint8_t file_kind;

    if (ui_file_count == 0u || ui_file_selected >= ui_file_count) {
        ui_set_status("No file selected");
        return;
    }

    file_kind = ui_file_kind_from_name(ui_file_names[ui_file_selected]);
    if (file_kind != kind) {
        ui_set_status(kind == UI_FILE_KIND_PROJECT ? "Select a .spp project" : "Select a .spg program");
        return;
    }

    ui_file_make_path(ui_file_names[ui_file_selected], kind, ui_pending_path, sizeof(ui_pending_path));
    if ((kind == UI_FILE_KIND_PROJECT && ui_project_load_path(ui_pending_path)) ||
            (kind == UI_FILE_KIND_PROGRAM && ui_program_load_path(ui_pending_path))) {
        ui_dialog = UI_DIALOG_NONE;
    }
    ui_back_dirty = 1;
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

    if (ui_vm_edit_mode && ui_vm_edit_program == program) {
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
    int16_t tx = x;
    int16_t ty = y;
    int16_t mx = x;
    int16_t my = y;
    int32_t dx = 0;
    int32_t dy = 0;
    uint8_t down = 0;
    uint8_t buttons = 0;
    uint8_t mouse_buttons;
    uint8_t touch_pressure;
    uint8_t touch_active;

    touch_active = apiTouchDown();
    touch_pressure = apiTouchGetXY(&tx, &ty);
    if (touch_pressure != 0u) {
        x = tx;
        y = ty;
        buttons = UI_MOUSE_LEFT;
        down = 1;
    } else if (!touch_active) {
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

static void ui_handle_button_event(uint16_t id)
{
    if (id >= UI_BUTTON_TAB_HOME && id <= UI_BUTTON_TAB_SEQ) {
        ui_page = (uint8_t)(id - UI_BUTTON_TAB_HOME);
        return;
    }

    if (id >= UI_BUTTON_CH_BANK_BASE && id < UI_BUTTON_CH_BANK_BASE + 4u) {
        ui_channel_bank = (uint8_t)(id - UI_BUTTON_CH_BANK_BASE);
        return;
    }

    if (id >= UI_BUTTON_CH_DEC_BASE && id < UI_BUTTON_CH_DEC_BASE + 4u) {
        uint8_t row = (uint8_t)(id - UI_BUTTON_CH_DEC_BASE);
        uint8_t ch = (uint8_t)(row + (ui_channel_bank * 4u));
        ui_selected_channel = ch;
        ui_select_program_delta(ch, -1);
        return;
    }

    if (id >= UI_BUTTON_CH_INC_BASE && id < UI_BUTTON_CH_INC_BASE + 4u) {
        uint8_t row = (uint8_t)(id - UI_BUTTON_CH_INC_BASE);
        uint8_t ch = (uint8_t)(row + (ui_channel_bank * 4u));
        ui_selected_channel = ch;
        ui_select_program_delta(ch, 1);
        return;
    }

    if (id >= UI_BUTTON_FILE_ROW_BASE && id < UI_BUTTON_FILE_ROW_BASE + UI_FILE_VISIBLE_ROWS) {
        uint8_t row = (uint8_t)(id - UI_BUTTON_FILE_ROW_BASE);
        uint8_t index = (uint8_t)(ui_file_scroll + row);
        if (index < ui_file_count) {
            ui_file_selected = index;
        }
        return;
    }

    if (id >= UI_BUTTON_KEY_BASE && id < UI_BUTTON_KEY_BASE + 40u) {
        static const char keys[] = "1234567890QWERTYUIOPASDFGHJKL-ZXCVBNM_.";
        uint8_t index = (uint8_t)(id - UI_BUTTON_KEY_BASE);
        if (index < sizeof(keys) - 1u) {
            ui_keyboard_append(keys[index]);
        }
        return;
    }

    switch (id) {
    case UI_BUTTON_PANIC:
        sid_midi_all_notes_off();
        ui_set_status("Panic: all notes killed");
        break;
    case UI_BUTTON_SAVE:
        ui_start_save_keyboard();
        break;
    case UI_BUTTON_LOAD:
        ui_start_load_browser();
        break;
    case UI_BUTTON_HOME_PROG_DEC:
        ui_select_program_delta(ui_selected_channel, -1);
        break;
    case UI_BUTTON_HOME_PROG_INC:
        ui_select_program_delta(ui_selected_channel, 1);
        break;
    case UI_BUTTON_HOME_GAIN_DEC:
        midi_set_global_gain((int16_t)midi_global_gain_percent - (int16_t)MIDI_GLOBAL_GAIN_STEP);
        break;
    case UI_BUTTON_HOME_GAIN_INC:
        midi_set_global_gain((int16_t)midi_global_gain_percent + (int16_t)MIDI_GLOBAL_GAIN_STEP);
        break;
    case UI_BUTTON_MIX_GLOBAL_DEC:
        midi_set_global_gain((int16_t)midi_global_gain_percent - (int16_t)MIDI_GLOBAL_GAIN_STEP);
        break;
    case UI_BUTTON_MIX_GLOBAL_INC:
        midi_set_global_gain((int16_t)midi_global_gain_percent + (int16_t)MIDI_GLOBAL_GAIN_STEP);
        break;
    case UI_BUTTON_MIX_VOLUME_DEC:
        midi_set_channel_volume(ui_selected_channel, (int16_t)midi_channel_volume[ui_selected_channel] - 8);
        break;
    case UI_BUTTON_MIX_VOLUME_INC:
        midi_set_channel_volume(ui_selected_channel, (int16_t)midi_channel_volume[ui_selected_channel] + 8);
        break;
    case UI_BUTTON_MIX_EXPR_DEC:
        midi_set_channel_expression(ui_selected_channel, (int16_t)midi_channel_expression[ui_selected_channel] - 8);
        break;
    case UI_BUTTON_MIX_EXPR_INC:
        midi_set_channel_expression(ui_selected_channel, (int16_t)midi_channel_expression[ui_selected_channel] + 8);
        break;
    case UI_BUTTON_PERC_TOGGLE:
        midi_drum_enabled = (uint8_t)!midi_drum_enabled;
        sid_midi_all_notes_off_event(MIDI_DRUM_CHANNEL);
        break;
    case UI_BUTTON_PERC_GAIN_DEC:
        midi_set_drum_gain((int16_t)midi_drum_gain_percent - (int16_t)MIDI_GLOBAL_GAIN_STEP);
        break;
    case UI_BUTTON_PERC_GAIN_INC:
        midi_set_drum_gain((int16_t)midi_drum_gain_percent + (int16_t)MIDI_GLOBAL_GAIN_STEP);
        break;
    case UI_BUTTON_VM_PROG_DEC:
        ui_select_program_delta(ui_selected_channel, -1);
        ui_vm_edit_mode = 0;
        ui_clamp_vm_scroll();
        break;
    case UI_BUTTON_VM_PROG_INC:
        ui_select_program_delta(ui_selected_channel, 1);
        ui_vm_edit_mode = 0;
        ui_clamp_vm_scroll();
        break;
    case UI_BUTTON_VM_SCROLL_UP:
        ui_scroll_vm(-1);
        break;
    case UI_BUTTON_VM_EDIT_TOGGLE:
        ui_vm_editor_toggle();
        break;
    case UI_BUTTON_VM_SCROLL_DOWN:
        ui_scroll_vm(1);
        break;
    case UI_BUTTON_VM_RESTORE:
        ui_confirm_action = UI_CONFIRM_RESTORE_VM;
        break;
    case UI_BUTTON_VM_FIELD:
        ui_vm_editor_field_delta(1);
        break;
    case UI_BUTTON_VM_HI_DEC16:
        ui_vm_editor_adjust(-0x1000);
        break;
    case UI_BUTTON_VM_HI_DEC1:
        ui_vm_editor_adjust(-0x0100);
        break;
    case UI_BUTTON_VM_HI_INC1:
        ui_vm_editor_adjust(0x0100);
        break;
    case UI_BUTTON_VM_HI_INC16:
        ui_vm_editor_adjust(0x1000);
        break;
    case UI_BUTTON_VM_LO_DEC16:
        ui_vm_editor_adjust(-16);
        break;
    case UI_BUTTON_VM_LO_DEC1:
        ui_vm_editor_adjust(-1);
        break;
    case UI_BUTTON_VM_LO_INC1:
        ui_vm_editor_adjust(1);
        break;
    case UI_BUTTON_VM_LO_INC16:
        ui_vm_editor_adjust(16);
        break;
    case UI_BUTTON_CONFIRM_RESTORE:
        if (ui_confirm_action == UI_CONFIRM_RESTORE_VM) {
            ui_vm_editor_restore_default();
        } else if (ui_confirm_action == UI_CONFIRM_CLEAR_SEQ) {
            seq_clear_all();
            ui_set_status("Sequencer cleared");
        }
        ui_confirm_action = UI_CONFIRM_NONE;
        break;
    case UI_BUTTON_CONFIRM_CANCEL:
        ui_confirm_action = UI_CONFIRM_NONE;
        ui_set_status("Action cancelled");
        break;
    case UI_BUTTON_FILE_UP:
        if (ui_file_scroll > 0u) {
            ui_file_scroll--;
        }
        break;
    case UI_BUTTON_FILE_DOWN:
        if (ui_file_scroll + UI_FILE_VISIBLE_ROWS < ui_file_count) {
            ui_file_scroll++;
        }
        break;
    case UI_BUTTON_FILE_LOAD_PROJECT:
        ui_load_selected_file(UI_FILE_KIND_PROJECT);
        break;
    case UI_BUTTON_FILE_LOAD_PROGRAM:
        ui_load_selected_file(UI_FILE_KIND_PROGRAM);
        break;
    case UI_BUTTON_FILE_CANCEL:
        ui_dialog = UI_DIALOG_NONE;
        ui_set_status("Load cancelled");
        break;
    case UI_BUTTON_KB_BACKSPACE:
        ui_keyboard_backspace();
        break;
    case UI_BUTTON_KB_LEFT:
        ui_keyboard_move_caret(-1);
        break;
    case UI_BUTTON_KB_RIGHT:
        ui_keyboard_move_caret(1);
        break;
    case UI_BUTTON_KB_CLEAR:
        ui_save_name[0] = 0;
        ui_save_caret = 0;
        ui_vm_field_blink_ticks = 0;
        ui_vm_field_blink_on = 1;
        break;
    case UI_BUTTON_KB_SAVE_PROJECT:
        ui_keyboard_commit_save(UI_FILE_KIND_PROJECT);
        break;
    case UI_BUTTON_KB_SAVE_PROGRAM:
        ui_keyboard_commit_save(UI_FILE_KIND_PROGRAM);
        break;
    case UI_BUTTON_KB_CANCEL:
        ui_dialog = UI_DIALOG_NONE;
        ui_set_status("Save cancelled");
        break;
    case UI_BUTTON_OVERWRITE_YES:
        if (ui_pending_path[0] != 0 &&
                ((ui_save_kind == UI_FILE_KIND_PROJECT && ui_project_save_path(ui_pending_path)) ||
                 (ui_save_kind == UI_FILE_KIND_PROGRAM && ui_program_save_path(ui_pending_path)))) {
            ui_dialog = UI_DIALOG_NONE;
            ui_file_refresh();
        }
        break;
    case UI_BUTTON_OVERWRITE_NO:
        ui_dialog = UI_DIALOG_KEYBOARD_SAVE;
        ui_set_status("Overwrite cancelled");
        break;
    case UI_BUTTON_SEQ_REWIND:
        seq_rewind();
        ui_set_status("Sequencer rewound");
        break;
    case UI_BUTTON_SEQ_RECORD:
        if (seq_recording) {
            seq_recording = 0;
            seq_record_armed = 0;
            memset(seq_pending, 0, sizeof(seq_pending));
            ui_set_status(seq_playing ? "Overdub off" : "Record off");
        } else if (seq_count_in_active) {
            seq_stop_transport(1);
            ui_set_status("Record cancelled");
        } else {
            seq_record_armed = (uint8_t)!seq_record_armed;
            memset(seq_pending, 0, sizeof(seq_pending));
            ui_set_status(seq_record_armed ? "Record armed" : "Record disarmed");
        }
        break;
    case UI_BUTTON_SEQ_PLAY:
        if (seq_playing || seq_recording || seq_count_in_active) {
            seq_stop_transport(1);
            ui_set_status("Sequencer stopped");
        } else if (seq_record_armed) {
            seq_begin_count_in();
        } else {
            seq_stop_playback_notes();
            seq_playing = 1;
            seq_recording = 0;
            seq_last_clock_ticks = seq_clock_ticks;
            ui_set_status("Sequencer playing");
        }
        break;
    case UI_BUTTON_SEQ_FROM:
        if (seq_record_armed) {
            seq_begin_count_in();
        } else {
            seq_stop_playback_notes();
            seq_playing = 1;
            seq_recording = 0;
            seq_last_clock_ticks = seq_clock_ticks;
            ui_set_status("Play from cursor");
        }
        break;
    case UI_BUTTON_SEQ_BPM_DEC:
        seq_set_bpm((int16_t)seq_bpm - 1);
        break;
    case UI_BUTTON_SEQ_BPM_INC:
        seq_set_bpm((int16_t)seq_bpm + 1);
        break;
    case UI_BUTTON_SEQ_SNAP_TOGGLE:
        seq_snap_enabled = (uint8_t)!seq_snap_enabled;
        break;
    case UI_BUTTON_SEQ_SNAP_DEC:
        if (seq_snap_index > 0u) {
            seq_snap_index--;
        }
        break;
    case UI_BUTTON_SEQ_SNAP_INC:
        if (seq_snap_index < 3u) {
            seq_snap_index++;
        }
        break;
    case UI_BUTTON_SEQ_CLEAR:
        ui_confirm_action = UI_CONFIRM_CLEAR_SEQ;
        break;
    case UI_BUTTON_SEQ_MIDI_OUT:
        if (seq_midi_out_enabled) {
            seq_midi_out_all_notes_off();
            seq_midi_out_enabled = 0;
            ui_set_status("Sequencer MIDI out off");
        } else {
            seq_midi_out_enabled = 1;
            ui_set_status("Sequencer MIDI out on");
        }
        break;
    default:
        break;
    }
}

static void ui_process_events(void)
{
    ui_event_t event;

    while (ui_event_pop(&event)) {
        if (event.type == UI_EVENT_BUTTON) {
            ui_handle_button_event(event.id);
        }
    }
}

static uint8_t ui_button_is_dialog_button(uint16_t id)
{
    if (id >= UI_BUTTON_FILE_ROW_BASE && id < UI_BUTTON_FILE_ROW_BASE + UI_FILE_VISIBLE_ROWS) {
        return 1;
    }
    if (id >= UI_BUTTON_KEY_BASE && id < UI_BUTTON_KEY_BASE + 40u) {
        return 1;
    }

    switch (id) {
    case UI_BUTTON_FILE_UP:
    case UI_BUTTON_FILE_DOWN:
    case UI_BUTTON_FILE_LOAD_PROJECT:
    case UI_BUTTON_FILE_LOAD_PROGRAM:
    case UI_BUTTON_FILE_CANCEL:
    case UI_BUTTON_KB_BACKSPACE:
    case UI_BUTTON_KB_LEFT:
    case UI_BUTTON_KB_RIGHT:
    case UI_BUTTON_KB_CLEAR:
    case UI_BUTTON_KB_SAVE_PROJECT:
    case UI_BUTTON_KB_SAVE_PROGRAM:
    case UI_BUTTON_KB_CANCEL:
    case UI_BUTTON_OVERWRITE_YES:
    case UI_BUTTON_OVERWRITE_NO:
        return 1;
    default:
        return 0;
    }
}

static void ui_process_pointer(ui_pointer_t p)
{
    const ui_button_t *button;
    uint8_t click = p.left_pressed;
    uint8_t held = (uint8_t)((p.buttons & UI_MOUSE_LEFT) && !p.left_pressed);
    uint8_t fire = click;

    if ((p.buttons & (UI_MOUSE_LEFT | UI_MOUSE_RIGHT)) == (UI_MOUSE_LEFT | UI_MOUSE_RIGHT)) {
        seq_dragging = 0;
        ui_exit_requested = 1;
        return;
    }

    if (p.right_pressed) {
        seq_dragging = 0;
        sid_midi_all_notes_off();
        ui_set_status("Right click panic");
        ui_confirm_action = UI_CONFIRM_NONE;
        return;
    }

    if (ui_confirm_action != UI_CONFIRM_NONE) {
        seq_dragging = 0;
        ui_pointer_repeat_down = 0;
        ui_pointer_repeat_ticks = 0;
        if (!click) {
            return;
        }

        button = ui_button_hit(p.x, p.y);
        if (button && (button->id == UI_BUTTON_CONFIRM_RESTORE ||
                       button->id == UI_BUTTON_CONFIRM_CANCEL)) {
            ui_event_push(UI_EVENT_BUTTON, button->id);
            return;
        }

        if (!ui_point_in(p.x, p.y, 96, 112, 288, 108)) {
            ui_confirm_action = UI_CONFIRM_NONE;
            ui_set_status("Action cancelled");
        }
        return;
    }

    if (ui_dialog != UI_DIALOG_NONE) {
        seq_dragging = 0;
        ui_pointer_repeat_down = held;
        if (click) {
            ui_pointer_repeat_ticks = 0;
        } else if (held) {
            if (ui_pointer_repeat_ticks < UI_POINTER_REPEAT_DELAY_TICKS) {
                ui_pointer_repeat_ticks++;
            } else {
                fire = 1;
            }
        } else {
            ui_pointer_repeat_ticks = 0;
        }

        if (!fire) {
            return;
        }

        button = ui_button_hit(p.x, p.y);
        if (button && ui_button_is_dialog_button(button->id) && (click || button->repeat)) {
            ui_event_push(UI_EVENT_BUTTON, button->id);
        }
        return;
    }

    if (ui_page == UI_PAGE_SEQ) {
        if (p.left_pressed && ui_point_in(p.x, p.y, SEQ_VIEW_X, SEQ_VIEW_Y, SEQ_VIEW_W, SEQ_VIEW_H)) {
            seq_dragging = 1;
            seq_drag_start_x = p.x;
            seq_drag_start_ticks = seq_position_ticks;
            if (seq_playing || seq_recording || seq_count_in_active) {
                seq_stop_transport(0);
            }
            seq_last_clock_ticks = seq_clock_ticks;
            return;
        }

        if (seq_dragging) {
            if (p.buttons & UI_MOUSE_LEFT) {
                seq_set_position_from_drag(p.x);
                return;
            }

            seq_set_position_from_drag(p.x);
            seq_dragging = 0;
            return;
        }
    } else {
        seq_dragging = 0;
    }

    ui_pointer_repeat_down = held;
    if (click) {
        ui_pointer_repeat_ticks = 0;
    } else if (held) {
        if (ui_pointer_repeat_ticks < UI_POINTER_REPEAT_DELAY_TICKS) {
            ui_pointer_repeat_ticks++;
        } else {
            fire = 1;
        }
    } else {
        ui_pointer_repeat_ticks = 0;
    }

    if (!fire) {
        return;
    }

    button = ui_button_hit(p.x, p.y);
    if (button) {
        if (click || button->repeat) {
            ui_event_push(UI_EVENT_BUTTON, button->id);
        }
        return;
    }

    if (!click) {
        return;
    }

    switch (ui_page) {
    case UI_PAGE_CHANNELS:
        for (uint8_t row = 0; row < 4; row++) {
            uint8_t ch = (uint8_t)(row + (ui_channel_bank * 4u));
            int16_t y = (int16_t)(124 + (row * 36));

            if (ui_point_in(p.x, p.y, 24, (int16_t)(y - 5), 420, 32)) {
                ui_selected_channel = ch;
                return;
            }
        }
        break;

    case UI_PAGE_VM:
        if (ui_vm_edit_mode && ui_vm_edit_program == midi_channel_program[ui_selected_channel]) {
            if (ui_point_in(p.x, p.y, 30, UI_VM_ROW_Y0, 382, (int16_t)(UI_VM_ROWS * UI_FONT_H))) {
                uint8_t row = (uint8_t)(ui_vm_scroll + ((p.y - UI_VM_ROW_Y0) / UI_FONT_H));
                uint8_t len = vm_program_length(midi_channel_program[ui_selected_channel]);

	                if (row < len) {
	                    ui_vm_editor_select_row(row);
	                    if (p.x >= 158) {
	                        ui_vm_edit_field = UI_VM_EDIT_FIELD_VALUE;
	                    } else if (p.x >= 134) {
	                        ui_vm_edit_field = UI_VM_EDIT_FIELD_PARAM;
	                    } else if (p.x >= 62) {
	                        ui_vm_edit_field = UI_VM_EDIT_FIELD_OPCODE;
	                    }
	                }
	            }
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
    ui_process_events();

    if ((joy & (BTN_FIRE | BTN_FIRE2)) == (BTN_FIRE | BTN_FIRE2)) {
        ui_exit_requested = 1;
    }

    if (ui_confirm_action != UI_CONFIRM_NONE) {
        ui_last_joy = joy;
        return;
    }

    if (ui_dialog != UI_DIALOG_NONE) {
        ui_last_joy = joy;
        return;
    }

    if (ui_page == UI_PAGE_VM && ui_vm_edit_mode &&
            ui_vm_edit_program == midi_channel_program[ui_selected_channel]) {
        if (actions & BTN_UP) {
            ui_vm_editor_select_delta(-1);
        } else if (actions & BTN_DOWN) {
            ui_vm_editor_select_delta(1);
        }

        if (actions & BTN_LEFT) {
            if (fire_down) {
                ui_vm_editor_adjust(ui_vm_edit_field == UI_VM_EDIT_FIELD_VALUE ? -16 : -1);
            } else {
                ui_vm_editor_field_delta(-1);
            }
        } else if (actions & BTN_RIGHT) {
            if (fire_down) {
                ui_vm_editor_adjust(ui_vm_edit_field == UI_VM_EDIT_FIELD_VALUE ? 16 : 1);
            } else {
                ui_vm_editor_field_delta(1);
            }
        }
    } else if (ui_page == UI_PAGE_VM && !fire_down && (actions & (BTN_UP | BTN_DOWN))) {
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

    if (delta != 0 && !(ui_page == UI_PAGE_VM && ui_vm_edit_mode &&
            ui_vm_edit_program == midi_channel_program[ui_selected_channel])) {
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
    gfx_drawtext(12, 8, "SIDBOX MIDI SID V0.9");
    gfx_setcolour(24);
    gfx_drawtext(270, 8, "LIVE SYNTH CONTROL");

    for (uint8_t i = 0; i < UI_PAGE_COUNT; i++) {
        int16_t x = (int16_t)(UI_TAB_X0 + (i * UI_TAB_STEP));
        ui_create_button((uint16_t)(UI_BUTTON_TAB_HOME + i), x, UI_TAB_Y, UI_TAB_W, UI_TAB_H,
                         ui_page_name(i), (uint8_t)(ui_page == i), 0);
    }
}

static void ui_draw_footer(void)
{
    ui_create_button(UI_BUTTON_PANIC, 8, 284, 70, 32, "PANIC", 0, 0);
    ui_create_button(UI_BUTTON_SAVE, 352, 284, 54, 32, "SAVE", 0, 0);
    ui_create_button(UI_BUTTON_LOAD, 412, 284, 54, 32, "LOAD", 0, 0);
}

static void ui_draw_home(void)
{
    uint8_t ch = ui_selected_channel;
    uint8_t program = midi_channel_program[ch];

    ui_panel(10, 66, 200, 96, "PERFORMANCE");
    ui_panel(220, 66, 250, 96, "SELECTED CHANNEL");


    char line[96];
    snprintf(line, sizeof(line), "CH%02u P%03u %.18s", (unsigned)(ch + 1u), (unsigned)program, midi_program_name(program));

    gfx_setcolour(30);
    gfx_drawtext(230, 92, line);
    ui_create_button(UI_BUTTON_HOME_PROG_DEC, 230, 130, 48, 32, "-P", 0, 1);
    ui_create_button(UI_BUTTON_HOME_PROG_INC, 282, 130, 48, 32, "+P", 0, 1);
    ui_create_button(UI_BUTTON_HOME_GAIN_DEC, 342, 130, 48, 32, "-G", 0, 1);
    ui_create_button(UI_BUTTON_HOME_GAIN_INC, 394, 130, 48, 32, "+G", 0, 1);

    ui_panel(10, 172, 222, 98, "RECENT ROUTING");
    for (uint8_t i = 0; i < 4; i++) {
        uint8_t row_ch = ui_recent_channels[i];
        snprintf(line, sizeof(line), "CH%02u P%03u %-10.10s",
                 (unsigned)(row_ch + 1u),
                 (unsigned)midi_channel_program[row_ch],
                 midi_program_name(midi_channel_program[row_ch]));
        gfx_setcolour(row_ch == ui_selected_channel ? 30u : 24u);
        gfx_drawtext(24, (int16_t)(200 + (i * 16)), line);
    }

    ui_panel(242, 172, 228, 98, "PROJECT");
    gfx_setcolour(24);
    gfx_drawtext(256, 200, "Save/load hooks ready.");
    gfx_drawtext(256, 216, "Patch banks later.");
    gfx_drawtext(256, 236, "Buttons are clickable.");
}

static void ui_draw_channels(void)
{
    char line[96];
    uint8_t base = (uint8_t)(ui_channel_bank * 4u);

    ui_panel(10, 66, 460, 204, "CHANNEL ASSIGNMENTS");
    ui_create_button(UI_BUTTON_CH_BANK_BASE + 0u, 244, 70, 52, 32, "1-4", (uint8_t)(ui_channel_bank == 0), 0);
    ui_create_button(UI_BUTTON_CH_BANK_BASE + 1u, 296, 70, 52, 32, "5-8", (uint8_t)(ui_channel_bank == 1), 0);
    ui_create_button(UI_BUTTON_CH_BANK_BASE + 2u, 348, 70, 52, 32, "9-12", (uint8_t)(ui_channel_bank == 2), 0);
    ui_create_button(UI_BUTTON_CH_BANK_BASE + 3u, 400, 70, 52, 32, "13-16", (uint8_t)(ui_channel_bank == 3), 0);

    gfx_setcolour(29);
    gfx_drawtext(54, 96, "CH   PRG   PROG NAME");

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

        ui_create_button((uint16_t)(UI_BUTTON_CH_DEC_BASE + row), 342, (int16_t)(y - 4), 42, 30, "-", 0, 1);
        ui_create_button((uint16_t)(UI_BUTTON_CH_INC_BASE + row), 396, (int16_t)(y - 4), 42, 30, "+", 0, 1);
    }
}

static void ui_draw_mixer(void)
{
    char line[96];
    uint8_t ch = ui_selected_channel;

    ui_panel(16, 78, 446, 52, "GLOBAL OUTPUT GAIN");
    snprintf(line, sizeof(line), "%u%%", (unsigned)midi_global_gain_percent);
    gfx_setcolour(30);
    gfx_drawtext(32, 106, line);
    ui_value_bar(92, 108, 240, midi_global_gain_percent, MIDI_GLOBAL_GAIN_MAX);
    ui_create_button(UI_BUTTON_MIX_GLOBAL_DEC, 356, 88, 34, 32, "-", 0, 1);
    ui_create_button(UI_BUTTON_MIX_GLOBAL_INC, 398, 88, 34, 32, "+", 0, 1);

    ui_panel(16, 132, 446, 52, "SELECTED CHANNEL VOLUME");
    snprintf(line, sizeof(line), "CH%02u  %03u", (unsigned)(ch + 1u), (unsigned)midi_channel_volume[ch]);
    gfx_setcolour(30);
    gfx_drawtext(32, 160, line);
    ui_value_bar(128, 162, 204, midi_channel_volume[ch], 127);
    ui_create_button(UI_BUTTON_MIX_VOLUME_DEC, 356, 142, 34, 32, "-", 0, 1);
    ui_create_button(UI_BUTTON_MIX_VOLUME_INC, 398, 142, 34, 32, "+", 0, 1);

    ui_panel(16, 186, 446, 52, "SELECTED CHANNEL EXPRESSION");
    snprintf(line, sizeof(line), "EXP %03u", (unsigned)midi_channel_expression[ch]);
    gfx_setcolour(30);
    gfx_drawtext(32, 214, line);
    ui_value_bar(128, 216, 204, midi_channel_expression[ch], 127);
    ui_create_button(UI_BUTTON_MIX_EXPR_DEC, 356, 196, 34, 32, "-", 0, 1);
    ui_create_button(UI_BUTTON_MIX_EXPR_INC, 398, 196, 34, 32, "+", 0, 1);

    gfx_setcolour(24);
    gfx_drawtext(26, 252, "MIDI CC7/CC11 still update while playing.");
}

static void ui_draw_percussion(void)
{
    char line[96];

    ui_panel(16, UI_VM_PANEL_Y, 446, UI_VM_PANEL_H, "PERCUSSION SETTINGS");
    gfx_setcolour(30);
    gfx_drawtext(32, 100, "GM channel 10 routed to SID drum programs");

    snprintf(line, sizeof(line), "STATE: %s", midi_drum_enabled ? "ENABLED" : "MUTED");
    gfx_setcolour(midi_drum_enabled ? 9u : 13u);
    gfx_drawtext(32, 142, line);
    ui_create_button(UI_BUTTON_PERC_TOGGLE, 332, 132, 88, 32, midi_drum_enabled ? "MUTE" : "ENABLE", midi_drum_enabled, 0);

    snprintf(line, sizeof(line), "DRUM GAIN %u%%", (unsigned)midi_drum_gain_percent);
    gfx_setcolour(30);
    gfx_drawtext(32, 178, line);
    ui_value_bar(160, 180, 150, midi_drum_gain_percent, MIDI_GLOBAL_GAIN_MAX);
    ui_create_button(UI_BUTTON_PERC_GAIN_DEC, 336, 168, 34, 32, "-", 0, 1);
    ui_create_button(UI_BUTTON_PERC_GAIN_INC, 378, 168, 34, 32, "+", 0, 1);

    gfx_setcolour(24);
    gfx_drawtext(32, 212, "Mapped: kick, snare, hats, toms.");
    gfx_drawtext(32, 228, "Future: per-note kit browser.");
    gfx_drawtext(32, 244, "CH10 ignores program changes.");
}

static void ui_draw_vm(void)
{
    char line[96];
    uint8_t ch = ui_selected_channel;
    uint8_t program = midi_channel_program[ch];
    uint8_t len;
    uint8_t edit_active = (uint8_t)(ui_vm_edit_mode && ui_vm_edit_program == program);

    ui_panel(16, UI_VM_PANEL_Y, 446, UI_VM_PANEL_H, edit_active ? "VM RAM EDITOR" : "VM CODE VIEWER");
    snprintf(line, sizeof(line), "CH%02u P%03u %.24s", (unsigned)(ch + 1u), (unsigned)program, midi_program_name(program));
    gfx_setcolour(30);
    gfx_drawtext(30, UI_VM_INFO_Y + 6, line);
    ui_create_button(UI_BUTTON_VM_PROG_DEC, 260, (int16_t)(UI_VM_PANEL_Y + 28), 72, 32, "-P", 0, 1);
    ui_create_button(UI_BUTTON_VM_PROG_INC, 338, (int16_t)(UI_VM_PANEL_Y + 28), 72, 32, "+P", 0, 1);

    if (program >= 128u) {
        gfx_setcolour(24);
        gfx_drawtext(30, UI_VM_ROW_Y0, "GM drums use percussion router.");
        return;
    }

    const sid_instr_t *prog = sid_soundfont_bank[program];
    if (!prog) {
        gfx_setcolour(13);
        gfx_drawtext(30, UI_VM_ROW_Y0, "No VM program assigned.");
        return;
    }

    ui_clamp_vm_scroll();
    len = vm_program_length(program);

    gfx_setcolour(29);
    gfx_drawtext(30, UI_VM_HEADER_Y, "IDX OPCODE   P  VALUE");
    for (uint8_t row = 0; row < UI_VM_ROWS; row++) {
        uint8_t i = (uint8_t)(ui_vm_scroll + row);
        int16_t y = (int16_t)(UI_VM_ROW_Y0 + (row * UI_FONT_H));

        if (i >= len) {
            break;
        }

        if (edit_active && i == ui_vm_edit_row) {
            gfx_setcolour(28);
            gfx_rectf(28, (int16_t)(y - 1), 190, 16);
            if (ui_vm_field_blink_on) {
                gfx_setcolour(29);
                if (ui_vm_edit_field == UI_VM_EDIT_FIELD_OPCODE) {
                    gfx_rectf(62, (int16_t)(y - 1), 64, 16);
                } else if (ui_vm_edit_field == UI_VM_EDIT_FIELD_PARAM) {
                    gfx_rectf(134, (int16_t)(y - 1), 18, 16);
                } else {
                    gfx_rectf(158, (int16_t)(y - 1), 40, 16);
                }
            }
        }

        snprintf(line, sizeof(line), "%02u  %-8s %02X %04X",
                 (unsigned)i,
                 vm_opcode_name(prog[i].opcode),
                 (unsigned)prog[i].param8,
                 (unsigned)prog[i].value);
        gfx_setcolour(edit_active && i == ui_vm_edit_row ? 15u :
                      (prog[i].opcode == SID_OP_END ? 14u : 25u));
        gfx_drawtext(30, y, line);
        if (prog[i].opcode == SID_OP_END) {
            break;
        }
    }

    ui_create_button(UI_BUTTON_VM_SCROLL_UP, UI_VM_SIDE_BUTTON_X, UI_VM_UP_BUTTON_Y, UI_VM_SIDE_BUTTON_W, UI_VM_SCROLL_BUTTON_H, "UP", 0, 1);
    ui_create_button_vertical(UI_BUTTON_VM_EDIT_TOGGLE, UI_VM_SIDE_BUTTON_X, UI_VM_EDIT_BUTTON_Y, UI_VM_SIDE_BUTTON_W, UI_VM_EDIT_BUTTON_HEIGHT, edit_active ? "VIEW" : "EDIT", edit_active, 0);
    ui_create_button(UI_BUTTON_VM_SCROLL_DOWN, UI_VM_SIDE_BUTTON_X, UI_VM_DOWN_BUTTON_Y, UI_VM_SIDE_BUTTON_W, UI_VM_SCROLL_BUTTON_H, "DN", 0, 1);

    if (edit_active) {
        const char *field = "OPC";
        if (ui_vm_edit_field == UI_VM_EDIT_FIELD_PARAM) {
            field = "PAR";
        } else if (ui_vm_edit_field == UI_VM_EDIT_FIELD_VALUE) {
            field = "VAL";
        }

        ui_create_button(UI_BUTTON_VM_RESTORE, 260, UI_VM_PANEL_Y, 72, 30, "RESTORE", 0, 0);
        ui_create_button(UI_BUTTON_VM_FIELD,   338, UI_VM_PANEL_Y, 72, 30, "FIELD", 0, 0);

        snprintf(line, sizeof(line), "ROW%02u %s", (unsigned)ui_vm_edit_row, field);
        gfx_setcolour(24);
        gfx_drawtext(160, UI_VM_PANEL_Y + 4, line);

        gfx_drawtext(240, 138, "HI");
        #define ButtonsYAdd 8
        ui_create_button(UI_BUTTON_VM_HI_DEC16, 260, 128 + ButtonsYAdd, 72, 32, "-16", 0, 1);
        ui_create_button(UI_BUTTON_VM_HI_INC16, 338, 128 + ButtonsYAdd, 72, 32, "+16", 0, 1);
        ui_create_button(UI_BUTTON_VM_HI_DEC1,  260, 158 + ButtonsYAdd, 72, 32, "-", 0, 1);
        ui_create_button(UI_BUTTON_VM_HI_INC1,  338, 158 + ButtonsYAdd, 72, 32, "+", 0, 1);

        gfx_setcolour(24);
        gfx_drawtext(240, 202, "LO");
        ui_create_button(UI_BUTTON_VM_LO_DEC16, 260, 192 + ButtonsYAdd, 72, 32, "-16", 0, 1);
        ui_create_button(UI_BUTTON_VM_LO_INC16, 338, 192 + ButtonsYAdd, 72, 32, "+16", 0, 1);
        ui_create_button(UI_BUTTON_VM_LO_DEC1,  260, 222 + ButtonsYAdd, 72, 32, "-", 0, 1);
        ui_create_button(UI_BUTTON_VM_LO_INC1,  338, 222 + ButtonsYAdd, 72, 32, "+", 0, 1);

    } else {
        snprintf(line, sizeof(line), "%02u/%02u", (unsigned)ui_vm_scroll, (unsigned)len);
        gfx_setcolour(24);
        gfx_drawtext(360, 250, line);
    }
}

static void ui_draw_seq(void)
{
    char line[96];
    const char *state = "STOP";

    if (seq_count_in_active) {
        state = "COUNT";
    } else if (seq_recording) {
        state = "REC";
    } else if (seq_record_armed) {
        state = "ARM";
    } else if (seq_playing) {
        state = "PLAY";
    }

    gfx_setcolour(20);
    gfx_rectf(SEQ_VIEW_X, SEQ_VIEW_Y, SEQ_VIEW_W, SEQ_VIEW_H);
    gfx_setcolour(26);
    gfx_rectf(SEQ_VIEW_X, SEQ_VIEW_Y, SEQ_VIEW_W, 1);
    gfx_rectf(SEQ_VIEW_X, (int16_t)(SEQ_VIEW_Y + SEQ_VIEW_H - 1), SEQ_VIEW_W, 1);
    gfx_rectf(SEQ_VIEW_X, SEQ_VIEW_Y, 1, SEQ_VIEW_H);
    gfx_rectf((int16_t)(SEQ_VIEW_X + SEQ_VIEW_W - 1), SEQ_VIEW_Y, 1, SEQ_VIEW_H);

    gfx_setcolour(21);
    for (uint8_t i = 1; i < 6; i++) {
        int16_t y = (int16_t)(SEQ_VIEW_Y + ((SEQ_VIEW_H * i) / 6));
        gfx_rectf(SEQ_VIEW_X, y, SEQ_VIEW_W, 1);
    }

    if (seq_count_in_active) {
        snprintf(line, sizeof(line), "BPM %03u  %s %u  SNAP %s 1/%u  OUT %s  NOTES %u",
                 (unsigned)seq_bpm,
                 state,
                 (unsigned)seq_count_in_value,
                 seq_snap_enabled ? "ON" : "OFF",
                 (unsigned)seq_snap_value(),
                 seq_midi_out_enabled ? "ON" : "OFF",
                 (unsigned)seq_note_count);
    } else {
        snprintf(line, sizeof(line), "BPM %03u  %s  SNAP %s 1/%u  OUT %s  NOTES %u",
             (unsigned)seq_bpm,
             state,
             seq_snap_enabled ? "ON" : "OFF",
             (unsigned)seq_snap_value(),
             seq_midi_out_enabled ? "ON" : "OFF",
             (unsigned)seq_note_count);
    }
    gfx_setcolour(30);
    gfx_drawtext(14, 254, line);

    ui_create_button(UI_BUTTON_SEQ_REWIND, 6, 284, 36, 32, "RW", 0, 0);
    ui_create_button_red(UI_BUTTON_SEQ_RECORD, 46, 284, 48, 32, "REC",
                         (uint8_t)(seq_record_armed || seq_recording || seq_count_in_active), 0);
    ui_create_button(UI_BUTTON_SEQ_PLAY, 98, 284, 52, 32,
                     (seq_playing || seq_recording || seq_count_in_active) ? "STOP" : "PLAY",
                     (uint8_t)(seq_playing || seq_recording || seq_count_in_active), 0);
    ui_create_button(UI_BUTTON_SEQ_FROM, 154, 284, 48, 32, "FROM", 0, 0);
    ui_create_button(UI_BUTTON_SEQ_CLEAR, 206, 284, 50, 32, "CLR", 0, 0);
    ui_create_button(UI_BUTTON_SEQ_MIDI_OUT, 260, 284, 50, 32, "MIDI", seq_midi_out_enabled, 0);
    ui_create_button(UI_BUTTON_SEQ_BPM_DEC, 314, 284, 26, 32, "-", 0, 1);
    ui_create_button(UI_BUTTON_SEQ_BPM_INC, 344, 284, 26, 32, "+", 0, 1);
    ui_create_button(UI_BUTTON_SEQ_SNAP_TOGGLE, 374, 284, 50, 32, seq_snap_enabled ? "SNAP" : "FREE", seq_snap_enabled, 0);
    ui_create_button(UI_BUTTON_SEQ_SNAP_DEC, 428, 284, 22, 32, "<", 0, 0);
    ui_create_button(UI_BUTTON_SEQ_SNAP_INC, 454, 284, 22, 32, ">", 0, 0);
}

static void ui_draw_confirm_modal(void)
{
    if (ui_confirm_action == UI_CONFIRM_NONE) {
        return;
    }

    ui_box(96, 112, 288, 108, 26, 31);
    gfx_setcolour(20);
    gfx_rectf(97, 113, 286, 20);
    gfx_setcolour(30);
    gfx_drawtext(110, 117, "CONFIRM ACTION");

    gfx_setcolour(25);
    if (ui_confirm_action == UI_CONFIRM_RESTORE_VM) {
        gfx_drawtext(116, 146, "Restore selected VM program");
        gfx_drawtext(116, 162, "from its preset default?");
    } else if (ui_confirm_action == UI_CONFIRM_CLEAR_SEQ) {
        gfx_drawtext(116, 146, "Clear all sequencer notes");
        gfx_drawtext(116, 162, "and rewind to the start?");
    }

    ui_create_button(UI_BUTTON_CONFIRM_RESTORE, 132, 178, 92, 28,
                     ui_confirm_action == UI_CONFIRM_CLEAR_SEQ ? "CLEAR" : "RESTORE", 0, 0);
    ui_create_button(UI_BUTTON_CONFIRM_CANCEL, 256, 178, 92, 28, "CANCEL", 0, 0);
}

static void ui_draw_file_modal(void)
{
    int16_t list_x = 34;
    int16_t list_y = 76;
    int16_t row_h = 24;
    uint8_t max_scroll = (ui_file_count > UI_FILE_VISIBLE_ROWS) ?
        (uint8_t)(ui_file_count - UI_FILE_VISIBLE_ROWS) : 0u;

    ui_box(0, 0, UI_SCREEN_W, UI_SCREEN_H, 26, 31);
    gfx_setcolour(20);
    gfx_rectf(1, 1, UI_SCREEN_W - 2, 28);
    gfx_setcolour(30);
    gfx_drawtext(16, 7, "LOAD SYNTH PROGRAM");

    gfx_setcolour(24);
    gfx_drawtext(34, 42, UI_PROJECT_DIR);

    if (ui_file_count == 0u) {
        gfx_setcolour(25);
        gfx_drawtext(56, 136, "No .spp/.spg files found.");
    } else {
        for (uint8_t row = 0; row < UI_FILE_VISIBLE_ROWS; row++) {
            uint8_t index = (uint8_t)(ui_file_scroll + row);
            if (index >= ui_file_count) {
                break;
            }

            ui_create_button((uint16_t)(UI_BUTTON_FILE_ROW_BASE + row),
                             list_x, (int16_t)(list_y + (row * row_h)),
                             350, 24,
                             ui_file_names[index],
                             (uint8_t)(index == ui_file_selected),
                             0);
        }
    }

    gfx_setcolour(20);
    gfx_rectf(392, list_y, 12, (int16_t)(UI_FILE_VISIBLE_ROWS * row_h));
    gfx_setcolour(28);
    if (max_scroll == 0u) {
        gfx_rectf(394, list_y, 8, (int16_t)(UI_FILE_VISIBLE_ROWS * row_h));
    } else {
        int16_t track_h = (int16_t)(UI_FILE_VISIBLE_ROWS * row_h);
        int16_t thumb_h = (int16_t)((track_h * UI_FILE_VISIBLE_ROWS) / ui_file_count);
        int16_t thumb_y;
        if (thumb_h < 16) thumb_h = 16;
        thumb_y = (int16_t)(list_y + (((track_h - thumb_h) * ui_file_scroll) / max_scroll));
        gfx_rectf(394, thumb_y, 8, thumb_h);
    }

    ui_create_button(UI_BUTTON_FILE_UP, 418, 76, 42, 32, "UP", 0, 1);
    ui_create_button(UI_BUTTON_FILE_DOWN, 418, 114, 42, 32, "DN", 0, 1);
    ui_create_button(UI_BUTTON_FILE_LOAD_PROJECT, 26, 268, 118, 32, "LOAD PROJ", 0, 0);
    ui_create_button(UI_BUTTON_FILE_LOAD_PROGRAM, 168, 268, 118, 32, "LOAD PRG", 0, 0);
    ui_create_button(UI_BUTTON_FILE_CANCEL, 344, 268, 100, 32, "CANCEL", 0, 0);
}

static void ui_draw_keyboard_modal(void)
{
    static const char rows[4][11] = {
        "1234567890",
        "QWERTYUIOP",
        "ASDFGHJKL-",
        "ZXCVBNM_."
    };
    char label[2] = {0, 0};
    uint8_t key_index = 0;

    ui_box(0, 0, UI_SCREEN_W, UI_SCREEN_H, 26, 31);
    gfx_setcolour(20);
    gfx_rectf(1, 1, UI_SCREEN_W - 2, 28);
    gfx_setcolour(30);
    gfx_drawtext(16, 7, "SAVE SYNTH PROGRAM");

    ui_create_button(UI_BUTTON_KB_LEFT, 20, 36, 48, 34, "<", 0, 1);
    ui_box(74, 36, 332, 34, 26, 17);
    ui_create_button(UI_BUTTON_KB_RIGHT, 412, 36, 48, 34, ">", 0, 1);
    gfx_setcolour(30);
    gfx_drawtext(84, 45, ui_save_name[0] ? ui_save_name : "_");
    if (ui_vm_field_blink_on) {
        int16_t caret_x = (int16_t)(84 + (ui_save_caret * UI_FONT_W));
        if (caret_x > 392) {
            caret_x = 392;
        }
        gfx_setcolour(13);
        gfx_rectf((int16_t)(caret_x - 1), 43, 10, 2);
        gfx_rectf((int16_t)(caret_x - 1), 59, 10, 2);
        gfx_rectf((int16_t)(caret_x - 1), 43, 2, 18);
        gfx_rectf((int16_t)(caret_x + 7), 43, 2, 18);
    }

    for (uint8_t row = 0; row < 4; row++) {
        uint8_t cols = (uint8_t)strlen(rows[row]);
        for (uint8_t col = 0; col < cols; col++) {
            label[0] = rows[row][col];
            ui_create_button((uint16_t)(UI_BUTTON_KEY_BASE + key_index),
                             (int16_t)(col * 48),
                             (int16_t)(84 + (row * 36)),
                             48, 32, label, 0, 0);
            key_index++;
        }
    }

    ui_create_button(UI_BUTTON_KB_BACKSPACE, 432, 192, 48, 32, "BK", 0, 1);
    ui_create_button(UI_BUTTON_KB_CLEAR, 12, 268, 78, 32, "CLEAR", 0, 0);
    ui_create_button(UI_BUTTON_KB_SAVE_PROJECT, 104, 268, 106, 32, "SAVE ALL", 0, 0);
    ui_create_button(UI_BUTTON_KB_SAVE_PROGRAM, 224, 268, 106, 32, "SAVE PRG", 0, 0);
    ui_create_button(UI_BUTTON_KB_CANCEL, 356, 268, 100, 32, "CANCEL", 0, 0);
}

static void ui_draw_overwrite_modal(void)
{
    const char *leaf = strrchr(ui_pending_path, '/');

    leaf = leaf ? leaf + 1 : ui_pending_path;

    ui_box(72, 98, 336, 130, 26, 31);
    gfx_setcolour(20);
    gfx_rectf(73, 99, 334, 24);
    gfx_setcolour(30);
    gfx_drawtext(88, 103, "OVERWRITE FILE?");

    gfx_setcolour(25);
    gfx_drawtext(92, 136, "This name already exists:");
    gfx_setcolour(30);
    gfx_drawtext(92, 154, leaf);

    ui_create_button(UI_BUTTON_OVERWRITE_YES, 120, 184, 92, 32, "YES", 0, 0);
    ui_create_button(UI_BUTTON_OVERWRITE_NO, 268, 184, 92, 32, "NO", 0, 0);
}

static void ui_draw_dialog(void)
{
    switch (ui_dialog) {
    case UI_DIALOG_FILE_LOAD:
        ui_draw_file_modal();
        break;
    case UI_DIALOG_KEYBOARD_SAVE:
        ui_draw_keyboard_modal();
        break;
    case UI_DIALOG_OVERWRITE_SAVE:
        ui_draw_overwrite_modal();
        break;
    default:
        break;
    }
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
    case UI_PAGE_SEQ:
        ui_draw_seq();
        break;
    default:
        ui_page = UI_PAGE_HOME;
        ui_draw_home();
        break;
    }

    if (ui_page != UI_PAGE_SEQ) {
        ui_draw_footer();
    }
    ui_draw_confirm_modal();
    ui_draw_dialog();
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
    for (uint8_t i = 0; i < 4; i++) {
        hash = ui_hash_step(hash, ui_recent_channels[i]);
    }
    hash = ui_hash_step(hash, ui_vm_scroll);
    hash = ui_hash_step(hash, ui_vm_edit_mode);
    hash = ui_hash_step(hash, ui_vm_edit_program);
    hash = ui_hash_step(hash, ui_vm_edit_row);
    hash = ui_hash_step(hash, ui_vm_edit_field);
    hash = ui_hash_step(hash, (ui_page == UI_PAGE_VM && ui_vm_edit_mode) ? ui_vm_field_blink_on : 0u);
    hash = ui_hash_step(hash, ui_confirm_action);
    hash = ui_hash_step(hash, ui_dialog);
    hash = ui_hash_step(hash, ui_file_count);
    hash = ui_hash_step(hash, ui_file_scroll);
    hash = ui_hash_step(hash, ui_file_selected);
    hash = ui_hash_step(hash, ui_save_caret);
    hash = ui_hash_step(hash, ui_save_kind);
    hash = ui_hash_step(hash, (ui_dialog == UI_DIALOG_KEYBOARD_SAVE) ? ui_vm_field_blink_on : 0u);
    hash = ui_hash_step(hash, ui_pointer_repeat_down);
    hash = ui_hash_step(hash, midi_global_gain_percent);
    hash = ui_hash_step(hash, midi_drum_gain_percent);
    hash = ui_hash_step(hash, midi_drum_enabled);
    hash = ui_hash_step(hash, seq_playing);
    hash = ui_hash_step(hash, seq_recording);
    hash = ui_hash_step(hash, seq_record_armed);
    hash = ui_hash_step(hash, seq_count_in_active);
    hash = ui_hash_step(hash, seq_count_in_value);
    hash = ui_hash_step(hash, seq_bpm);
    hash = ui_hash_step(hash, seq_snap_enabled);
    hash = ui_hash_step(hash, seq_snap_index);
    hash = ui_hash_step(hash, seq_midi_out_enabled);
    hash = ui_hash_step(hash, seq_note_count);
    for (uint8_t i = 0; i < UI_FILE_NAME_LEN; i++) {
        hash = ui_hash_step(hash, (uint8_t)ui_save_name[i]);
        if (ui_save_name[i] == 0) {
            break;
        }
    }
    for (uint8_t i = 0; i < UI_FILE_VISIBLE_ROWS; i++) {
        uint8_t index = (uint8_t)(ui_file_scroll + i);
        if (index >= ui_file_count) {
            break;
        }
        for (uint8_t j = 0; j < UI_FILE_NAME_LEN; j++) {
            hash = ui_hash_step(hash, (uint8_t)ui_file_names[index][j]);
            if (ui_file_names[index][j] == 0) {
                break;
            }
        }
    }

    if (ui_vm_edit_program != UI_VM_EDIT_PROGRAM_NONE) {
        for (uint8_t i = 0; i < UI_VM_ROWS; i++) {
            uint8_t row = (uint8_t)(ui_vm_scroll + i);
            if (row >= UI_VM_SCAN_LIMIT) {
                break;
            }
            hash = ui_hash_step(hash, ui_vm_edit_buffer[row].opcode);
            hash = ui_hash_step(hash, ui_vm_edit_buffer[row].param8);
            hash = ui_hash_step(hash, ui_vm_edit_buffer[row].value);
        }
    }

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
    ui_button_begin_frame();
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
    gfx_drawtext(24, 92, line);
    snprintf(line, sizeof(line), "panic %lu  tmo %lu", (unsigned long)midi_panic_count,
             (unsigned long)midi_timeout_note_off_count);
    gfx_setcolour(24);
    gfx_drawtext(24, 112, line);
    snprintf(line, sizeof(line), "gain %u%%  drums %u%%", (unsigned)midi_global_gain_percent,
             (unsigned)midi_drum_gain_percent);
    gfx_drawtext(24, 132, line);

    snprintf(line, sizeof(line), "VOL %03u  EXP %03u  BEND %d", (unsigned)midi_channel_volume[ch],
             (unsigned)midi_channel_expression[ch], (int)midi_channel_bend[ch]);
    gfx_drawtext(230, 112, line);

    for (uint8_t i = 0; i < 4; i++) {
        uint8_t row_ch = ui_recent_channels[i];
        uint8_t active = midi_channel_active_count(row_ch);

        if (active == 0) {
            continue;
        }

        snprintf(line, sizeof(line), "%u", (unsigned)active);
        gfx_setcolour(14);
        gfx_drawtext(204, (int16_t)(200 + (i * 16)), line);
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
        int16_t y = (int16_t)(UI_VM_ROW_Y0 + ((ui_vm_live_pc - ui_vm_scroll) * UI_FONT_H));

        gfx_setcolour(14);
        gfx_drawtext(20, y, ">");
    }

    snprintf(line, sizeof(line), "PC%02u V%u", (unsigned)ui_vm_live_pc, (unsigned)ui_vm_live_voice);
    gfx_setcolour(14);
    gfx_drawtext(250, 250, line);
}

static int16_t seq_note_y(uint8_t note)
{
    const uint8_t min_note = 36;
    const uint8_t max_note = 84;
    uint8_t n = note;

    if (n < min_note) n = min_note;
    if (n > max_note) n = max_note;

    return (int16_t)(SEQ_VIEW_Y + SEQ_VIEW_H - 8 -
                     (((uint16_t)(n - min_note) * (SEQ_VIEW_H - 12)) / (max_note - min_note)));
}

static void ui_draw_seq_overlay(void)
{
    char line[48];
    uint32_t left_tick = (seq_position_ticks > ((SEQ_CURSOR_X - SEQ_VIEW_X) * SEQ_TICKS_PER_PIXEL)) ?
        (seq_position_ticks - ((SEQ_CURSOR_X - SEQ_VIEW_X) * SEQ_TICKS_PER_PIXEL)) : 0u;
    uint32_t right_tick = seq_position_ticks + ((SEQ_VIEW_X + SEQ_VIEW_W - SEQ_CURSOR_X) * SEQ_TICKS_PER_PIXEL);
    uint16_t grid = seq_grid_ticks();

    gfx_setcolour(21);
    for (uint32_t t = (left_tick / grid) * grid; t <= right_tick; t += grid) {
        int16_t x = (int16_t)(SEQ_CURSOR_X + (((int32_t)t - (int32_t)seq_position_ticks) / (int32_t)SEQ_TICKS_PER_PIXEL));
        if (x >= SEQ_VIEW_X && x < SEQ_VIEW_X + SEQ_VIEW_W) {
            gfx_rectf(x, SEQ_VIEW_Y, 1, SEQ_VIEW_H);
        }
        if (grid == 0u) {
            break;
        }
    }

    for (uint16_t i = 0; i < seq_note_count && i < SEQ_MAX_NOTES; i++) {
        uint32_t start;
        uint32_t end;
        int16_t x;
        int16_t y;
        int16_t w;

        if (!seq_notes[i].used) {
            continue;
        }

        start = seq_notes[i].start;
        end = start + seq_notes[i].length;
        if (end < left_tick || start > right_tick) {
            continue;
        }

        x = (int16_t)(SEQ_CURSOR_X + (((int32_t)start - (int32_t)seq_position_ticks) / (int32_t)SEQ_TICKS_PER_PIXEL));
        w = (int16_t)(seq_notes[i].length / SEQ_TICKS_PER_PIXEL);
        if (w < 4) w = 4;
        y = seq_note_y(seq_notes[i].note);
        if (x < SEQ_VIEW_X) {
            w = (int16_t)(w - (SEQ_VIEW_X - x));
            x = SEQ_VIEW_X;
        }
        if (x + w > SEQ_VIEW_X + SEQ_VIEW_W) {
            w = (int16_t)(SEQ_VIEW_X + SEQ_VIEW_W - x);
        }
        if (w <= 0) {
            continue;
        }

        gfx_setcolour(seq_notes[i].colour);
        gfx_rectf(x, y, w, 6);
        gfx_setcolour(16);
        gfx_rectf(x, y, w, 1);

        if (start <= seq_position_ticks && end > seq_position_ticks) {
            gfx_setcolour(15);
            gfx_rectf((int16_t)(SEQ_CURSOR_X - 4), (int16_t)(y - 2), 10, 10);
            gfx_setcolour(seq_notes[i].colour);
            gfx_rectf((int16_t)(SEQ_CURSOR_X - 3), (int16_t)(y - 1), 8, 8);
            snprintf(line, sizeof(line), "N%03u CH%02u", (unsigned)seq_notes[i].note,
                     (unsigned)(seq_notes[i].channel + 1u));
            gfx_setcolour(30);
            gfx_drawtext((int16_t)(SEQ_CURSOR_X + 10), (int16_t)(SEQ_VIEW_Y + 8), line);
        }
    }

    gfx_setcolour(13);
    gfx_rectf(SEQ_CURSOR_X, SEQ_VIEW_Y, 2, SEQ_VIEW_H);
    gfx_setcolour(30);
    snprintf(line, sizeof(line), "%lu.%02lu", (unsigned long)(seq_position_ticks / 50u),
             (unsigned long)((seq_position_ticks % 50u) * 2u));
    gfx_drawtext((int16_t)(SEQ_CURSOR_X - 18), (int16_t)(SEQ_VIEW_Y - 18), line);

    if (seq_count_in_active) {
        snprintf(line, sizeof(line), "COUNT %u", (unsigned)seq_count_in_value);
        gfx_setcolour(13);
        gfx_rectf((int16_t)(SEQ_CURSOR_X - 34), (int16_t)(SEQ_VIEW_Y + 70), 72, 24);
        gfx_setcolour(15);
        gfx_drawtext((int16_t)(SEQ_CURSOR_X - 28), (int16_t)(SEQ_VIEW_Y + 74), line);
    }
}

static void ui_draw_dynamic_overlay(void)
{
    if (ui_dialog != UI_DIALOG_NONE || ui_confirm_action != UI_CONFIRM_NONE) {
        ui_draw_cursor();
        return;
    }

    if (ui_page == UI_PAGE_SEQ) {
        ui_draw_seq_overlay();
        ui_draw_cursor();
        return;
    }

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
    seq_clock_ticks++;
    if (++ui_vm_field_blink_ticks >= UI_VM_FIELD_BLINK_TICKS) {
        ui_vm_field_blink_ticks = 0;
        ui_vm_field_blink_on = (uint8_t)!ui_vm_field_blink_on;
    }
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
    ui_storage_init();


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
    apiTouchInit();



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
        seq_update_transport();
        gfx_lcdwait();

        midi_process_events();
        midi_process_ui_requests();
        seq_update_transport();

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
