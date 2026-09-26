static void ui_draw_confirm_modal(void);
static void ui_draw_dialog(void);
static void ui_draw_seq_overlay(void);

static void ui_draw_header(void)
{
    ui_draw_background();

    gfx_setcolour(COLOUR_WHITE);
    gfx_drawtext(12, 8, "SIDBOX MIDI SID V0.9");
    gfx_setcolour(COLOUR_BUTTON_TEXT);
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

    gfx_setcolour(COLOUR_WHITE);
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
        gfx_setcolour(row_ch == ui_selected_channel ? COLOUR_WHITE : COLOUR_LIGHT);
        gfx_drawtext(24, (int16_t)(200 + (i * 16)), line);
    }

    ui_panel(242, 172, 228, 98, "PROJECT");
    gfx_setcolour(COLOUR_LIGHT);
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

    gfx_setcolour(COLOUR_HEADER_TEXT);
    gfx_drawtext(54, 96, "CH   PRG   PROG NAME");

    for (uint8_t row = 0; row < 4; row++) {
        uint8_t ch = (uint8_t)(base + row);
        int16_t y = (int16_t)(124 + (row * 36));
        uint8_t program = midi_channel_program[ch];

        if (ch == ui_selected_channel) {
            gfx_setcolour(COLOUR_SELECTION);
            gfx_rectf(24, (int16_t)(y - 5), 420, 32);
        }

        snprintf(line, sizeof(line), "%02u   %03u   %-25.25s",
                 (unsigned)(ch + 1u),
                 (unsigned)program,
                 midi_program_name(program));
        gfx_setcolour(ch == MIDI_DRUM_CHANNEL ? COLOUR_DRUM_CHANNEL : (ch == ui_selected_channel ? COLOUR_WHITE : COLOUR_LIGHT));
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
    gfx_setcolour(COLOUR_LIGHT);
    gfx_drawtext(32, 106, line);
    ui_value_bar(92, 108, 240, midi_global_gain_percent, MIDI_GLOBAL_GAIN_MAX);
    ui_create_button(UI_BUTTON_MIX_GLOBAL_DEC, 356, 88, 34, 32, "-", 0, 1);
    ui_create_button(UI_BUTTON_MIX_GLOBAL_INC, 398, 88, 34, 32, "+", 0, 1);

    ui_panel(16, 132, 446, 52, "SELECTED CHANNEL VOLUME");
    snprintf(line, sizeof(line), "CH%02u  %03u", (unsigned)(ch + 1u), (unsigned)midi_channel_volume[ch]);
    gfx_setcolour(COLOUR_LIGHT);
    gfx_drawtext(32, 160, line);
    ui_value_bar(128, 162, 204, midi_channel_volume[ch], 127);
    ui_create_button(UI_BUTTON_MIX_VOLUME_DEC, 356, 142, 34, 32, "-", 0, 1);
    ui_create_button(UI_BUTTON_MIX_VOLUME_INC, 398, 142, 34, 32, "+", 0, 1);

    ui_panel(16, 186, 446, 52, "SELECTED CHANNEL EXPRESSION");
    snprintf(line, sizeof(line), "EXP %03u", (unsigned)midi_channel_expression[ch]);
    gfx_setcolour(COLOUR_LIGHT);
    gfx_drawtext(32, 214, line);
    ui_value_bar(128, 216, 204, midi_channel_expression[ch], 127);
    ui_create_button(UI_BUTTON_MIX_EXPR_DEC, 356, 196, 34, 32, "-", 0, 1);
    ui_create_button(UI_BUTTON_MIX_EXPR_INC, 398, 196, 34, 32, "+", 0, 1);

    gfx_setcolour(COLOUR_BUTTON_ACTIVE);
    gfx_drawtext(26, 252, "MIDI CC7/CC11 still update while playing.");
}

static void ui_draw_percussion(void)
{
    char line[96];

    ui_panel(16, UI_VM_PANEL_Y, 446, UI_VM_PANEL_H, "PERCUSSION SETTINGS");
    gfx_setcolour(COLOUR_LIGHT);
    gfx_drawtext(32, 100, "GM channel 10 routed to SID drum programs");

    snprintf(line, sizeof(line), "STATE: %s", midi_drum_enabled ? "ENABLED" : "MUTED");
    gfx_setcolour(midi_drum_enabled ? COLOUR_GREEN : COLOUR_RED);
    gfx_drawtext(32, 142, line);
    ui_create_button(UI_BUTTON_PERC_TOGGLE, 332, 132, 88, 32, midi_drum_enabled ? "MUTE" : "ENABLE", midi_drum_enabled, 0);

    snprintf(line, sizeof(line), "DRUM GAIN %u%%", (unsigned)midi_drum_gain_percent);
    gfx_setcolour(COLOUR_LIGHT);
    gfx_drawtext(32, 178, line);
    ui_value_bar(160, 180, 150, midi_drum_gain_percent, MIDI_GLOBAL_GAIN_MAX);
    ui_create_button(UI_BUTTON_PERC_GAIN_DEC, 336, 168, 34, 32, "-", 0, 1);
    ui_create_button(UI_BUTTON_PERC_GAIN_INC, 378, 168, 34, 32, "+", 0, 1);

    gfx_setcolour(COLOUR_BUTTON_ACTIVE);
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

    if(edit_active){
        gfx_setcolour(COLOUR_BLACK);
        gfx_rectf(26, UI_VM_ROW_Y0-3, 184, (UI_VM_ROWS * 16) + 4);
    }

    snprintf(line, sizeof(line), "CH%02u P%03u %.24s", (unsigned)(ch + 1u), (unsigned)program, midi_program_name(program));
    gfx_setcolour(COLOUR_LIGHT);
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
        gfx_setcolour(COLOUR_RED);
        gfx_drawtext(30, UI_VM_ROW_Y0, "No VM program assigned.");
        return;
    }

    ui_clamp_vm_scroll();
    len = vm_program_length(program);

    gfx_setcolour(COLOUR_HEADER_TEXT);
    gfx_drawtext(30, UI_VM_HEADER_Y, "IDX OPCODE   P  VALUE");
    for (uint8_t row = 0; row < UI_VM_ROWS; row++) {
        uint8_t i = (uint8_t)(ui_vm_scroll + row);
        int16_t y = (int16_t)(UI_VM_ROW_Y0 + (row * UI_FONT_H));

        if (i >= len) {
            break;
        }

        if (edit_active && i == ui_vm_edit_row) {
            gfx_setcolour(COLOUR_SELECTION);
            gfx_rectf(28, (int16_t)(y - 1), 178, 16);
            if (ui_vm_field_blink_on) {
                gfx_setcolour(0xf7);
                if (ui_vm_edit_field == UI_VM_EDIT_FIELD_OPCODE) {
                    gfx_rectf(58, (int16_t)(y - 2), 68, 18);
                } else if (ui_vm_edit_field == UI_VM_EDIT_FIELD_PARAM) {
                    gfx_rectf(130, (int16_t)(y - 2), 24, 18);
                } else {
                    gfx_rectf(160, (int16_t)(y - 2), 42, 18);
                }
            }
        }

        snprintf(line, sizeof(line), "%02u: %-8s %02X  %04X",
                 (unsigned)i,
                 vm_opcode_name(prog[i].opcode),
                 (unsigned)prog[i].param8,
                 (unsigned)prog[i].value);
        gfx_setcolour(edit_active && i == ui_vm_edit_row ? COLOUR_BLACK : (prog[i].opcode == SID_OP_END ? COLOUR_CODE_P_END_TEXT : COLOUR_CODE_OP_INSTR_TEXT));
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

    gfx_setcolour(26);
    gfx_rectf(SEQ_VIEW_X, SEQ_VIEW_Y, SEQ_VIEW_W, 1);
    gfx_rectf(SEQ_VIEW_X, (int16_t)(SEQ_VIEW_Y + SEQ_VIEW_H - 1), SEQ_VIEW_W, 1);
    gfx_rectf(SEQ_VIEW_X, SEQ_VIEW_Y, 1, SEQ_VIEW_H);
    gfx_rectf((int16_t)(SEQ_VIEW_X + SEQ_VIEW_W - 1), SEQ_VIEW_Y, 1, SEQ_VIEW_H);

    if (seq_count_in_active) {
        snprintf(line, sizeof(line), "BPM %03u  %s %u  SNAP %s 1/%u  OUT %s  NOTES %lu",
                 (unsigned)seq_bpm,
                 state,
                 (unsigned)seq_count_in_value,
                 seq_snap_enabled ? "ON" : "OFF",
                 (unsigned)seq_snap_value(),
                 seq_midi_out_enabled ? "ON" : "OFF",
                 (unsigned long)seq_note_count);
    } else {
        snprintf(line, sizeof(line), "BPM %03u  %s  SNAP %s 1/%u  OUT %s  NOTES %lu",
             (unsigned)seq_bpm,
             state,
             seq_snap_enabled ? "ON" : "OFF",
             (unsigned)seq_snap_value(),
             seq_midi_out_enabled ? "ON" : "OFF",
             (unsigned long)seq_note_count);
    }
    gfx_setcolour(COLOUR_WHITE);
    gfx_drawtext(14, 262, line);

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

static void ui_draw_seq_header_chrome(void)
{
    gfx_setcolour(COLOUR_BACKGROUND);
    gfx_rectf(0, 0, UI_SCREEN_W, SEQ_VIEW_Y);

    gfx_setcolour(21);
    gfx_rectf(0, 0, UI_SCREEN_W, 2);
    gfx_setcolour(26);
    gfx_rectf(0, (int16_t)(UI_TAB_Y + UI_TAB_H + 3), UI_SCREEN_W, 1);

    gfx_setcolour(COLOUR_WHITE);
    gfx_drawtext(12, 8, "SIDBOX MIDI SID V0.9");
    gfx_setcolour(COLOUR_BUTTON_TEXT);
    gfx_drawtext(270, 8, "LIVE SYNTH CONTROL");

    for (uint8_t i = 0; i < UI_PAGE_COUNT; i++) {
        int16_t x = (int16_t)(UI_TAB_X0 + (i * UI_TAB_STEP));
        ui_create_button((uint16_t)(UI_BUTTON_TAB_HOME + i), x, UI_TAB_Y, UI_TAB_W, UI_TAB_H,
                         ui_page_name(i), (uint8_t)(ui_page == i), 0);
    }
}

static void ui_draw_seq_foreground(void)
{
    ui_button_begin_frame();

    ui_draw_seq_header_chrome();
    gfx_setcolour(COLOUR_BACKGROUND);
    gfx_rectf(0, (int16_t)(SEQ_VIEW_Y + SEQ_VIEW_H), UI_SCREEN_W,
              (int16_t)(UI_SCREEN_H - (SEQ_VIEW_Y + SEQ_VIEW_H)));
    ui_draw_seq();

    if (ui_confirm_action != UI_CONFIRM_NONE || ui_dialog != UI_DIALOG_NONE) {
        ui_draw_confirm_modal();
        ui_draw_dialog();
        ui_draw_cursor();
        return;
    }

    ui_draw_seq_overlay();
    ui_draw_cursor();
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

static void ui_file_row_button(uint16_t id, int16_t x, int16_t y, int16_t w, int16_t h,
                               const char *label, uint8_t active)
{
    uint8_t pressed = (uint8_t)((ui_last_pointer_buttons & UI_MOUSE_LEFT) &&
                                ui_point_in(ui_pointer_x, ui_pointer_y, x, y, w, h));
    uint8_t fill = pressed ? COLOUR_BUTTON_PRESSED : (active ? COLOUR_BUTTON_ACTIVE : COLOUR_BUTTON);
    uint8_t text = active ? COLOUR_HILIGHT_TEXT : COLOUR_BUTTON_TEXT;
    int16_t text_y = (int16_t)(y + ((h > UI_FONT_H) ? ((h - UI_FONT_H) / 2) : 0));

    ui_button_register(id, x, y, w, h, 0);
    ui_box(x, y, w, h, COLOUR_SHADOW, fill);
    gfx_setcolour(pressed ? COLOUR_SHADOW : (active ? COLOUR_BUTTON_SELECTED : COLOUR_LIGHT));
    gfx_rectf((int16_t)(x + 1), (int16_t)(y + 1), (int16_t)(w - 2), 2);
    gfx_rectf((int16_t)(x + 1), (int16_t)(y + 1), 2, (int16_t)(h - 2));
    gfx_setcolour(pressed ? COLOUR_LIGHT : COLOUR_SHADOW);
    gfx_rectf((int16_t)(x + 1), (int16_t)(y + h - 3), (int16_t)(w - 2), 2);
    gfx_rectf((int16_t)(x + w - 3), (int16_t)(y + 1), 2, (int16_t)(h - 2));

    if (pressed) {
        text_y++;
    }
    gfx_setcolour(text);
    gfx_drawtext((int16_t)(x + 8 + (pressed ? 1 : 0)), text_y, label);
}

static void ui_draw_file_modal(void)
{
    int16_t list_x = 14;
    int16_t list_y = 46;
    int16_t list_w = 400;
    int16_t row_h = 32;
    uint8_t max_scroll = (ui_file_count > UI_FILE_VISIBLE_ROWS) ?
        (uint8_t)(ui_file_count - UI_FILE_VISIBLE_ROWS) : 0u;

    ui_box(0, 0, UI_SCREEN_W, UI_SCREEN_H, 26, 31);
    gfx_setcolour(20);
    gfx_rectf(1, 1, UI_SCREEN_W - 2, 28);
    gfx_setcolour(30);
    gfx_drawtext(16, 7, "LOAD FILE: ");

    gfx_setcolour(24);
    gfx_drawtext(120, 7, ui_file_base_dir());

    if (ui_file_count == 0u) {
        gfx_setcolour(25);
        gfx_drawtext(56, 136, "No loadable files found.");
    } else {
        for (uint8_t row = 0; row < UI_FILE_VISIBLE_ROWS; row++) {
            uint8_t index = (uint8_t)(ui_file_scroll + row);
            char row_label[UI_FILE_NAME_LEN + 8u];
            if (index >= ui_file_count) {
                break;
            }

            if (ui_file_kinds[index] == UI_FILE_KIND_DIR) {
                snprintf(row_label, sizeof(row_label), "[DIR] %s", ui_file_names[index]);
            } else if (ui_file_kinds[index] == UI_FILE_KIND_MIDI) {
                snprintf(row_label, sizeof(row_label), "[MID] %s", ui_file_names[index]);
            } else {
                snprintf(row_label, sizeof(row_label), "%s", ui_file_names[index]);
            }
            ui_file_row_button((uint16_t)(UI_BUTTON_FILE_ROW_BASE + row),
                               list_x, (int16_t)(list_y + (row * row_h)),
                               list_w, row_h,
                               row_label,
                               (uint8_t)(index == ui_file_selected));
        }
    }

    gfx_setcolour(20);
    gfx_rectf(420, list_y, 12, (int16_t)(UI_FILE_VISIBLE_ROWS * row_h));
    gfx_setcolour(28);
    if (max_scroll == 0u) {
        gfx_rectf(422, list_y, 8, (int16_t)(UI_FILE_VISIBLE_ROWS * row_h));
    } else {
        int16_t track_h = (int16_t)(UI_FILE_VISIBLE_ROWS * row_h);
        int16_t thumb_h = (int16_t)((track_h * UI_FILE_VISIBLE_ROWS) / ui_file_count);
        int16_t thumb_y;
        if (thumb_h < 16) thumb_h = 16;
        thumb_y = (int16_t)(list_y + (((track_h - thumb_h) * ui_file_scroll) / max_scroll));
        gfx_rectf(422, thumb_y, 8, thumb_h);
    }

    ui_create_button(UI_BUTTON_FILE_UP, 438, 58, 32, 32, "UP", 0, 1);
    ui_create_button(UI_BUTTON_FILE_DOWN, 438, 96, 32, 32, "DN", 0, 1);
    ui_create_button(UI_BUTTON_FILE_OK, 10, 282, 50, 30, "OK", 0, 0);
    ui_create_button(UI_BUTTON_FILE_LOAD_PROJECT, 66, 282, 72, 30, "PROJ", 0, 0);
    ui_create_button(UI_BUTTON_FILE_LOAD_PROGRAM, 144, 282, 62, 30, "PRG", 0, 0);
    ui_create_button(UI_BUTTON_FILE_LOAD_SONG, 212, 282, 70, 30, "SONG", 0, 0);
    ui_create_button(UI_BUTTON_FILE_LOAD_MIDI, 288, 282, 62, 30, "MID", 0, 0);
    ui_create_button(UI_BUTTON_FILE_CANCEL, 384, 282, 84, 30, "CANCEL", 0, 0);
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
    ui_create_button(UI_BUTTON_KB_SAVE_PROJECT, 12, 232, 106, 32, "SAVE ALL", 0, 0);
    ui_create_button(UI_BUTTON_KB_SAVE_PROGRAM, 128, 232, 106, 32, "SAVE PRG", 0, 0);
    ui_create_button(UI_BUTTON_KB_SAVE_SONG, 244, 232, 112, 32, "SAVE SONG", 0, 0);
    ui_create_button(UI_BUTTON_KB_EXPORT_MIDI, 366, 232, 94, 32, "MID", 0, 0);
    ui_create_button(UI_BUTTON_KB_CLEAR, 12, 278, 78, 32, "CLEAR", 0, 0);
    ui_create_button(UI_BUTTON_KB_CANCEL, 356, 278, 100, 32, "CANCEL", 0, 0);
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
    for (uint8_t i = 0; i < UI_FILE_PATH_LEN; i++) {
        hash = ui_hash_step(hash, (uint8_t)ui_file_dir_path[i]);
        if (ui_file_dir_path[i] == 0) {
            break;
        }
    }
    for (uint8_t i = 0; i < UI_FILE_VISIBLE_ROWS; i++) {
        uint8_t index = (uint8_t)(ui_file_scroll + i);
        if (index >= ui_file_count) {
            break;
        }
        hash = ui_hash_step(hash, ui_file_kinds[index]);
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
    gfx_scrollb(0, 0);
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

static int16_t ui_seq_tick_to_back_x(uint32_t tick, int32_t origin_tick)
{
    int64_t delta = (int64_t)tick - (int64_t)origin_tick;

    return (int16_t)(delta / (int64_t)SEQ_TICKS_PER_PIXEL);
}

static void ui_draw_seq_canvas(int32_t origin_tick)
{
    uint16_t grid = seq_grid_ticks();
    int64_t left_tick_i = origin_tick;
    int64_t right_tick_i = (int64_t)origin_tick +
        ((int64_t)SEQ_BACK_W * (int64_t)SEQ_TICKS_PER_PIXEL);
    uint32_t left_tick = left_tick_i > 0 ? (uint32_t)left_tick_i : 0u;
    uint32_t right_tick = right_tick_i > 0 ? (uint32_t)right_tick_i : 0u;

    gfx_setcolour(0);
    gfx_rectf(0, 0, SEQ_BACK_W, UI_SCREEN_H);

    gfx_setcolour(20);
    gfx_rectf(0, SEQ_VIEW_Y, SEQ_BACK_W, SEQ_VIEW_H);

    gfx_setcolour(21);
    for (uint8_t i = 1; i < 6; i++) {
        int16_t y = (int16_t)(SEQ_VIEW_Y + ((SEQ_VIEW_H * i) / 6));
        gfx_rectf(0, y, SEQ_BACK_W, 1);
    }

    if (grid > 0u && right_tick >= left_tick) {
        uint32_t first_grid = ((left_tick + grid - 1u) / grid) * grid;

        for (uint32_t t = first_grid; t <= right_tick; t += grid) {
            int16_t x = ui_seq_tick_to_back_x(t, origin_tick);

            if (x >= 0 && x < SEQ_BACK_W) {
                gfx_rectf(x, SEQ_VIEW_Y, 1, SEQ_VIEW_H);
            }
            if (UINT32_MAX - t < grid) {
                break;
            }
        }
    }

    for (uint32_t i = 0; i < seq_note_count; i++) {
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

        x = ui_seq_tick_to_back_x(start, origin_tick);
        w = (int16_t)(seq_notes[i].length / SEQ_TICKS_PER_PIXEL);
        if (w < 4) w = 4;
        y = seq_note_y(seq_notes[i].note);
        if (x < 0) {
            w = (int16_t)(w + x);
            x = 0;
        }
        if (x + w > SEQ_BACK_W) {
            w = (int16_t)(SEQ_BACK_W - x);
        }
        if (w <= 0) {
            continue;
        }

        gfx_setcolour(seq_notes[i].colour);
        gfx_rectf(x, y, w, 6);
        gfx_setcolour(16);
        gfx_rectf(x, y, w, 1);
    }
}

static void ui_seq_back_invalidate(void)
{
    ui_seq_back_dirty = 1u;
}

static void ui_seq_back_prepare(void)
{
    gfx_bitmap_t *front_draw = gfx_getdrawbuffer();
    int32_t cursor_src_x;
    int32_t scroll_x;

    if (!backbitmap.bitmap) {
        return;
    }

    cursor_src_x = (int32_t)(((int64_t)seq_position_ticks -
                              (int64_t)ui_seq_back_origin_tick) /
                             (int64_t)SEQ_TICKS_PER_PIXEL);
    if (!ui_seq_back_valid ||
            cursor_src_x < (SEQ_CURSOR_X + SEQ_BACK_SCROLL_MARGIN) ||
            cursor_src_x > (SEQ_CURSOR_X + UI_SCREEN_W - SEQ_BACK_SCROLL_MARGIN)) {
        ui_seq_back_origin_tick = (int32_t)seq_position_ticks -
            (int32_t)(SEQ_BACK_CENTER_X * SEQ_TICKS_PER_PIXEL);
        cursor_src_x = SEQ_BACK_CENTER_X;
        ui_seq_back_dirty = 1u;
    }

    if (ui_seq_back_dirty) {
        gfx_showbbuffer((gfx_bitmap_t *)&backbitmap);
        gfx_usebuffer((gfx_bitmap_t *)&backbitmap);
        ui_draw_seq_canvas(ui_seq_back_origin_tick);
        gfx_usebuffer(front_draw);
        ui_seq_back_dirty = 0u;
        ui_seq_back_valid = 1u;
    }

    scroll_x = cursor_src_x - SEQ_CURSOR_X;
    if (scroll_x < 0) {
        scroll_x = 0;
    } else if (scroll_x > (SEQ_BACK_W - UI_SCREEN_W)) {
        scroll_x = SEQ_BACK_W - UI_SCREEN_W;
    }
    ui_seq_back_scroll_x = (uint16_t)scroll_x;
    gfx_scrollb(ui_seq_back_scroll_x, 0);
}

static void ui_draw_seq_overlay(void)
{
    uint8_t activenotes;
    char line[48];

    activenotes = 0;
    for (uint8_t i = 0; i < SID_MIDI_VOICES; i++) {
        int16_t y;

        if (!sid_midi_voice_alloc[i].active ||
                sid_midi_voice_alloc[i].source != MIDI_VOICE_SOURCE_SEQ) {
            continue;
        }

        y = seq_note_y(sid_midi_voice_alloc[i].note);
        gfx_setcolour(15);
        gfx_rectf((int16_t)(SEQ_CURSOR_X - 4), (int16_t)(y - 2), 10, 10);
        gfx_setcolour((uint8_t)(32u + (sid_midi_voice_alloc[i].channel & 7u)));
        gfx_rectf((int16_t)(SEQ_CURSOR_X - 3), (int16_t)(y - 1), 8, 8);

        snprintf(line, sizeof(line), "N%03u CH%02u",
                 (unsigned)sid_midi_voice_alloc[i].note,
                 (unsigned)(sid_midi_voice_alloc[i].channel + 1u));
        gfx_setcolour(COLOUR_WHITE);
        gfx_drawtext(380, (int16_t)(SEQ_VIEW_Y + 8 + activenotes), line);
        activenotes += 16;
    }

    gfx_setcolour(COLOUR_RED);
    gfx_rectf(SEQ_CURSOR_X, SEQ_VIEW_Y, 2, SEQ_VIEW_H);
    gfx_setcolour(COLOUR_WHITE);
    snprintf(line, sizeof(line), "%lu.%02lu", (unsigned long)(seq_position_ticks / 50u), (unsigned long)((seq_position_ticks % 50u) * 2u));
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

static void ui_midi_import_progress_paint(uint32_t done, uint32_t total,
                                          uint16_t track, uint16_t tracks,
                                          uint32_t notes)
{
    char line[48];
    uint32_t percent = total ? (uint32_t)(((uint64_t)done * 100u) / total) : 0u;
    int16_t fill_w;

    if (percent > 100u) {
        percent = 100u;
    }
    fill_w = (int16_t)((percent * 276u) / 100u);

    gfx_lcdwait();
    flip_front_buffer();
    gfx_cls();

    ui_box(76, 106, 328, 112, 26, 31);
    gfx_setcolour(20);
    gfx_rectf(77, 107, 326, 24);
    gfx_setcolour(30);
    gfx_drawtext(96, 111, "IMPORTING MIDI");

    snprintf(line, sizeof(line), "TRACK %u/%u", (unsigned)track, (unsigned)tracks);
    gfx_setcolour(25);
    gfx_drawtext(104, 144, line);
    snprintf(line, sizeof(line), "NOTES %lu", (unsigned long)notes);
    gfx_drawtext(260, 144, line);

    ui_box(100, 168, 280, 18, 26, 17);
    if (fill_w > 0) {
        gfx_setcolour(14);
        gfx_rectf(102, 170, fill_w, 14);
    }

    snprintf(line, sizeof(line), "%lu%%", (unsigned long)percent);
    gfx_setcolour(30);
    gfx_drawtext(220, 192, line);

    gfx_displaynow();
}
