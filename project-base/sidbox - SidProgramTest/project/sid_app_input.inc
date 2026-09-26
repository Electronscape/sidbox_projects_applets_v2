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

static ui_pointer_t ui_read_pointer(void)
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

        buttons = mouse_buttons;
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
    uint8_t c = ui_last_pointer_down ? COLOUR_MOUSE_ACTIVE : COLOUR_MOUSE_NORMAL;

    if (x < 0) x = 0;
    if (y < 0) y = 0;
    if (x > UI_SCREEN_W - 8) x = UI_SCREEN_W - 8;
    if (y > UI_SCREEN_H - 10) y = UI_SCREEN_H - 10;


    gfx_setcolour(c);
    for(int16_t f = 0; f < 20; f++){
        gfx_drawline((int16_t)x, (int16_t)y + f, (int16_t)x + (20-f), (int16_t)y + f);
    }


    gfx_setcolour(COLOUR_BLACK);
    gfx_drawline((int16_t)x, (int16_t)y, (int16_t)x + 22, (int16_t)y);
    gfx_drawline((int16_t)x, (int16_t)y + 1, (int16_t)x + 22, (int16_t)y + 1);
    gfx_drawline((int16_t)x, (int16_t)y, (int16_t)x, (int16_t)y + 22);
    gfx_drawline((int16_t)x + 1, (int16_t)y, (int16_t)x + 1, (int16_t)y + 22);

    gfx_drawline((int16_t)x + 21, (int16_t)y, (int16_t)x+1, (int16_t)y + 20);
    gfx_drawline((int16_t)x + 22, (int16_t)y, (int16_t)x+2, (int16_t)y + 20);


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
            ui_back_dirty = 1;
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
    case UI_BUTTON_FILE_OK:
        ui_file_enter_selected();
        break;
    case UI_BUTTON_FILE_LOAD_PROJECT:
        ui_load_selected_file(UI_FILE_KIND_PROJECT);
        break;
    case UI_BUTTON_FILE_LOAD_PROGRAM:
        ui_load_selected_file(UI_FILE_KIND_PROGRAM);
        break;
    case UI_BUTTON_FILE_LOAD_SONG:
        ui_load_selected_file(UI_FILE_KIND_SONG);
        break;
    case UI_BUTTON_FILE_LOAD_MIDI:
        ui_load_selected_file(UI_FILE_KIND_MIDI);
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
    case UI_BUTTON_KB_SAVE_SONG:
        ui_keyboard_commit_save(UI_FILE_KIND_SONG);
        break;
    case UI_BUTTON_KB_EXPORT_MIDI:
        ui_keyboard_commit_save(UI_FILE_KIND_MIDI);
        break;
    case UI_BUTTON_KB_CANCEL:
        ui_dialog = UI_DIALOG_NONE;
        ui_set_status("Save cancelled");
        break;
    case UI_BUTTON_OVERWRITE_YES:
        if (ui_pending_path[0] != 0 &&
                ((ui_save_kind == UI_FILE_KIND_PROJECT && ui_project_save_path(ui_pending_path)) ||
                 (ui_save_kind == UI_FILE_KIND_PROGRAM && ui_program_save_path(ui_pending_path)) ||
                 (ui_save_kind == UI_FILE_KIND_SONG && ui_song_save_path(ui_pending_path)) ||
                 (ui_save_kind == UI_FILE_KIND_MIDI && ui_midi_export_path(ui_pending_path)))) {
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
            seq_playback_sync(seq_position_ticks);
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
            seq_playback_sync(seq_position_ticks);
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
        ui_seq_back_invalidate();
        break;
    case UI_BUTTON_SEQ_SNAP_DEC:
        if (seq_snap_index > 0u) {
            seq_snap_index--;
            ui_seq_back_invalidate();
        }
        break;
    case UI_BUTTON_SEQ_SNAP_INC:
        if (seq_snap_index < 3u) {
            seq_snap_index++;
            ui_seq_back_invalidate();
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
    case UI_BUTTON_FILE_OK:
    case UI_BUTTON_FILE_LOAD_PROJECT:
    case UI_BUTTON_FILE_LOAD_PROGRAM:
    case UI_BUTTON_FILE_LOAD_SONG:
    case UI_BUTTON_FILE_LOAD_MIDI:
    case UI_BUTTON_FILE_CANCEL:
    case UI_BUTTON_KB_BACKSPACE:
    case UI_BUTTON_KB_LEFT:
    case UI_BUTTON_KB_RIGHT:
    case UI_BUTTON_KB_CLEAR:
    case UI_BUTTON_KB_SAVE_PROJECT:
    case UI_BUTTON_KB_SAVE_PROGRAM:
    case UI_BUTTON_KB_SAVE_SONG:
    case UI_BUTTON_KB_EXPORT_MIDI:
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
            if (ui_point_in(p.x, p.y, 30, UI_VM_ROW_Y0, 180, (int16_t)(UI_VM_ROWS * UI_FONT_H))) {
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

static void ui_handle_input(void)
{
    ui_pointer_t pointer = ui_read_pointer();

    ui_process_pointer(pointer);
    ui_process_events();

    if (ui_status_ticks > 0) {
        ui_status_ticks--;
        if (ui_status_ticks == 0) {
            ui_status_message[0] = 0;
        }
    }
}
