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
#define UI_FILE_MAX 64u
#define UI_FILE_NAME_LEN 32u
#define UI_FILE_PATH_LEN 96u
#define UI_PROJECT_DIR "sdcard:/synthprogs"
#define UI_ROOT_DIR "sdcard:"
#define UI_PROJECT_EXT ".spp"
#define UI_PROGRAM_EXT ".spg"
#define UI_SONG_EXT ".sng"
#define UI_MIDI_EXT ".mid"
#define UI_PROJECT_MAGIC "SIDSPP1"
#define UI_PROGRAM_MAGIC "SIDSPG1"
#define UI_SONG_MAGIC "SIDSNG1"
#define UI_PROJECT_VERSION 1u
#define UI_PROGRAM_VERSION 1u
#define UI_SONG_VERSION 1u
#define UI_FS_FLAG_DIR 1u
#define UI_FILE_KIND_NONE 0u
#define UI_FILE_KIND_PROGRAM 1u
#define UI_FILE_KIND_PROJECT 2u
#define UI_FILE_KIND_SONG 3u
#define UI_FILE_KIND_MIDI 4u
#define UI_FILE_KIND_DIR 5u
#define MIDI_EXPORT_PPQN 480u
#define SEQ_INITIAL_NOTES 512u
#define SEQ_MAX_NOTES 8192u
#define SEQ_GROW_NOTES 512u
#define SEQ_PENDING_MAX 32u
#define SEQ_VIEW_W 460
#define SEQ_VIEW_X 10
#define SEQ_CURSOR_X 236
#define SEQ_VIEW_Y 64
#define SEQ_VIEW_H 188
#define SEQ_BACK_W 960
#define SEQ_BACK_CENTER_X (SEQ_BACK_W / 2)
#define SEQ_BACK_SCROLL_MARGIN 112
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
    UI_BUTTON_FILE_OK,
    UI_BUTTON_FILE_LOAD_PROJECT,
    UI_BUTTON_FILE_LOAD_PROGRAM,
    UI_BUTTON_FILE_LOAD_SONG,
    UI_BUTTON_FILE_LOAD_MIDI,
    UI_BUTTON_FILE_CANCEL,
    UI_BUTTON_KB_BACKSPACE,
    UI_BUTTON_KB_LEFT,
    UI_BUTTON_KB_RIGHT,
    UI_BUTTON_KB_CLEAR,
    UI_BUTTON_KB_SAVE_PROJECT,
    UI_BUTTON_KB_SAVE_PROGRAM,
    UI_BUTTON_KB_SAVE_SONG,
    UI_BUTTON_KB_EXPORT_MIDI,
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
    char magic[8];
    uint16_t version;
    uint16_t header_size;
    uint16_t bpm;
    uint32_t note_count;
    uint32_t position_ticks;
    uint8_t snap_enabled;
    uint8_t snap_index;
    uint8_t reserved[10];
} synth_song_file_t;

typedef struct {
    uint8_t active;
    uint8_t note;
    uint8_t channel;
    uint32_t note_index;
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
    0xFF1B204A, 0xFF0D1A2B, 0xFF24344A, 0xFF3C4F6A, 0xFF536A8A, 0xFF6B84AA, 0xFF829FCA, 0xFF9ABAEA,
    0xFFFFFFFF, 0xFF000000, 0xFF00CA00, 0xFF00FFFF, 0xFFFF65FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF,
    0xFF000000, 0xFFDC2626, 0xFFEF4444, 0xFF16A34A, 0xFF22C55E, 0xFF1E5AA8, 0xFF2563EB, 0xFFF59E0B,
    0xFFFFD166, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFFF00FF, 0xFFAFAFAF, 0xFFFFFFFF
};


// colour theme assignements#
#define COLOUR_BACKGROUND               0xE0u
#define COLOUR_SHADOW                   0xE1u
#define COLOUR_BASE                     0xE2u
#define COLOUR_BUTTON                   0xE3u    // (used for button faces, or header bars)
#define COLOUR_BUTTON_PRESSED           0xE4u    // (used for button faces, or header bars)
#define COLOUR_BUTTON_ACTIVE            0xE5u
#define COLOUR_BUTTON_SELECTED          0xE6u
#define COLOUR_LIGHT                    0xE7u    // the bit that looks light the lighter edges of a button
#define COLOUR_WHITE                    0xE8u
#define COLOUR_BLACK                    0xF0u
//#define
#define COLOUR_MOUSE_NORMAL             0xF1u
#define COLOUR_MOUSE_ACTIVE             0xF2u
#define COLOUR_RED                      0xF2u
#define COLOUR_GREEN                    0xF4u

#define COLOUR_BUTTON_TEXT              0xE7u
#define COLOUR_HILIGHT_TEXT             0xE8u
#define COLOUR_HEADER_TEXT              0xEBu

#define COLOUR_SELECTION                0xE5u
#define COLOUR_DRUM_CHANNEL             0xF7u

#define COLOUR_HILIGHT_INVERTED_TEXT    0xEAu
#define COLOUR_CODE_OP_INSTR_TEXT       0xECu
#define COLOUR_CODE_P8_VALUE_TEXT       0xECu
#define COLOUR_CODE_P_VALUE_TEXT        0xEDu
#define COLOUR_CODE_P_END_TEXT          0xF7u


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
static uint32_t seq_note_count;
static uint32_t seq_note_capacity;
static uint32_t seq_next_note;
static uint16_t *seq_order_start;
static uint16_t *seq_order_end;
static uint32_t seq_order_count;
static uint32_t seq_play_next_on;
static uint32_t seq_play_next_off;
static uint32_t seq_play_last_tick;
static uint8_t seq_order_dirty;
static uint8_t seq_play_cursor_valid;
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
static uint8_t ui_seq_back_dirty;
static uint8_t ui_seq_back_valid;
static int32_t ui_seq_back_origin_tick;
static uint16_t ui_seq_back_scroll_x;
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
static uint8_t ui_file_kinds[UI_FILE_MAX];
static uint8_t ui_file_count;
static uint8_t ui_file_scroll;
static uint8_t ui_file_selected;
static char ui_file_dir_path[UI_FILE_PATH_LEN];
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
static synth_song_file_t *ui_song_file_buffer;
static seq_note_t *seq_notes;
static seq_pending_t seq_pending[SEQ_PENDING_MAX];

static uint8_t midi_running_status;
static uint8_t midi_msg_status;
static uint8_t midi_msg_data[2];
static uint8_t midi_msg_count;
static uint8_t midi_msg_expected;
static uint8_t midi_in_sysex;

static void ui_set_status(const char *message);
static void ui_seq_back_invalidate(void);
static void seq_playback_mark_dirty(void);
static uint8_t seq_playback_sync(uint32_t tick);
static void ui_midi_import_progress_paint(uint32_t done, uint32_t total,
                                          uint16_t track, uint16_t tracks,
                                          uint32_t notes);

// First-stage refactor: keep one translation unit so private static state stays private,
// but split the app into readable implementation sections.
#include "sid_app_runtime.inc"

#include "sid_app_ui_base.inc"

#include "sid_app_storage.inc"

#include "sid_app_input.inc"

#include "sid_app_draw.inc"



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
    gfx_mode(UI_SCREEN_W, UI_SCREEN_H, SEQ_BACK_W, UI_SCREEN_H,
             DISPFLAG_DUALLAYER | DISPFLAG_SCROLLABLE);
    gfx_usebpalette(sid_ui_palette);
    gfx_usefpalette(sid_ui_palette);
    front_a = gfx_getdrawbuffer();
    front_b = gfx_getshowbuffer();


    ui_create_bitmap((gfx_bitmap_t *)&backbitmap, SEQ_BACK_W, UI_SCREEN_H);

    gfx_showbbuffer((gfx_bitmap_t *)&backbitmap);
    gfx_showfbuffer(front_a);
    gfx_scrollb(0, 0);
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

        midi_process_events();
        midi_process_ui_requests();
        seq_update_transport();
        gfx_lcdwait();

        midi_process_events();
        midi_process_ui_requests();
        seq_update_transport();

        old_pointer_buttons = ui_last_pointer_buttons;
        ui_handle_input();
        if (ui_exit_requested) {
            break;
        }
        ui_update_vm_live_follow();

        new_hash = ui_static_hash();
        if (new_hash != ui_back_hash ||
                (ui_page != UI_PAGE_SEQ && old_pointer_buttons != ui_last_pointer_buttons)) {
            ui_back_hash = new_hash;
            ui_back_dirty = 1;
        }

        if (ui_page == UI_PAGE_SEQ) {
            if (ui_back_dirty) {
                ui_seq_back_invalidate();
                ui_back_dirty = 0;
            }
            ui_seq_back_prepare();
        } else if (ui_back_dirty) {
            ui_redraw_backbuffer();
            ui_back_dirty = 0;
        }

        flip_front_buffer();
        gfx_cls();
        if (ui_page == UI_PAGE_SEQ) {
            ui_draw_seq_foreground();
        } else {
            ui_draw_dynamic_overlay();
        }

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
