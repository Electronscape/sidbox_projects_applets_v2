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
    uint8_t pressed = (uint8_t)((ui_last_pointer_buttons & UI_MOUSE_LEFT) && ui_point_in(ui_pointer_x, ui_pointer_y, x, y, w, h));
    uint8_t fill = pressed ? COLOUR_BUTTON_PRESSED : (active ? COLOUR_BUTTON_ACTIVE : COLOUR_BUTTON);
    uint8_t text = active ? COLOUR_HILIGHT_TEXT : COLOUR_BUTTON_TEXT;
    int16_t text_x;
    int16_t text_y;
    int16_t label_w = (int16_t)(strlen(label) * UI_FONT_W);

    ui_box(x, y, w, h, COLOUR_SHADOW, fill);
    gfx_setcolour(pressed ? COLOUR_SHADOW : (active ? COLOUR_BUTTON_SELECTED : COLOUR_LIGHT));
    gfx_rectf((int16_t)(x + 1), (int16_t)(y + 1), (int16_t)(w - 2), 2);
    gfx_rectf((int16_t)(x + 1), (int16_t)(y + 1), 2, (int16_t)(h - 2));
    gfx_setcolour(pressed ? COLOUR_LIGHT : COLOUR_SHADOW);
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

static void ui_create_button_red(uint16_t id, int16_t x, int16_t y, int16_t w, int16_t h, const char *label, uint8_t active, uint8_t repeat)
{
    ui_button_register(id, x, y, w, h, repeat);
    ui_button_draw_red(x, y, w, h, label, active);
}

static void ui_button_draw_vertical(int16_t x, int16_t y, int16_t w, int16_t h, const char *label, uint8_t active)
{

    uint8_t pressed = (uint8_t)((ui_last_pointer_buttons & UI_MOUSE_LEFT) && ui_point_in(ui_pointer_x, ui_pointer_y, x, y, w, h));
    uint8_t fill = pressed ? COLOUR_BUTTON_PRESSED : (active ? COLOUR_BUTTON_ACTIVE : COLOUR_BUTTON);
    uint8_t text = active ? COLOUR_HILIGHT_TEXT : COLOUR_BUTTON_TEXT;
    uint8_t len = (uint8_t)strlen(label);
    int16_t text_x = (int16_t)(x + ((w - UI_FONT_W) / 2));
    int16_t text_y = (int16_t)(y + ((h - (len * UI_FONT_H)) / 2));
    char one[2] = { 0, 0 };

    ui_box(x, y, w, h, COLOUR_SHADOW, fill);
    gfx_setcolour(pressed ? COLOUR_SHADOW : (active ? COLOUR_BUTTON_SELECTED : COLOUR_LIGHT));
    gfx_rectf((int16_t)(x + 1), (int16_t)(y + 1), (int16_t)(w - 2), 2);
    gfx_rectf((int16_t)(x + 1), (int16_t)(y + 1), 2, (int16_t)(h - 2));
    gfx_setcolour(pressed ? COLOUR_LIGHT : COLOUR_SHADOW);
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
    ui_box(x, y, w, h, COLOUR_SHADOW, COLOUR_BASE);
    gfx_setcolour(COLOUR_BUTTON);
    gfx_rectf((int16_t)(x + 1), (int16_t)(y + 1), (int16_t)(w - 2), 20);
    gfx_setcolour(COLOUR_BUTTON_TEXT);
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

    ui_box(x, y, w, 10, COLOUR_BLACK, COLOUR_SHADOW);
    gfx_setcolour(COLOUR_LIGHT);
    gfx_rectf((int16_t)(x + 1), (int16_t)(y + 1), (int16_t)fill, 8);
}

static void ui_draw_background(void)
{
    static const uint8_t bands[8] = { COLOUR_BACKGROUND, COLOUR_BACKGROUND, COLOUR_BACKGROUND, COLOUR_BACKGROUND, COLOUR_BACKGROUND, COLOUR_BACKGROUND, COLOUR_BACKGROUND, COLOUR_BACKGROUND };

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
    case UI_PAGE_CHANNELS: return "CHNLS";
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

