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

static void seq_midi_out_program(uint8_t channel, uint8_t program)
{
    uint8_t packet[2];

    if (!seq_midi_out_enabled || channel >= MIDI_CHANNEL_COUNT || program >= 128u) {
        return;
    }

    packet[0] = (uint8_t)(0xC0u | (channel & 0x0Fu));
    packet[1] = program & 0x7Fu;
    midi_out(packet, 2);
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

static uint8_t seq_reserve_notes(uint32_t needed)
{
    seq_note_t *new_notes;
    uint16_t *new_order_start;
    uint16_t *new_order_end;
    uint32_t new_capacity = seq_note_capacity;

    if (needed <= seq_note_capacity) {
        return 1;
    }

    if (new_capacity == 0u) {
        new_capacity = SEQ_INITIAL_NOTES;
    }
    while (new_capacity < needed && new_capacity < SEQ_MAX_NOTES) {
        uint32_t next = new_capacity + SEQ_GROW_NOTES;
        new_capacity = (next > SEQ_MAX_NOTES) ? SEQ_MAX_NOTES : next;
    }
    if (new_capacity < needed) {
        return 0;
    }

    new_notes = malloc(sizeof(seq_note_t) * new_capacity);
    if (!new_notes) {
        return 0;
    }
    new_order_start = malloc(sizeof(uint16_t) * new_capacity);
    if (!new_order_start) {
        free(new_notes);
        return 0;
    }
    new_order_end = malloc(sizeof(uint16_t) * new_capacity);
    if (!new_order_end) {
        free(new_order_start);
        free(new_notes);
        return 0;
    }

    memset(new_notes, 0, sizeof(seq_note_t) * new_capacity);
    if (seq_notes && seq_note_count > 0u) {
        memcpy(new_notes, seq_notes, sizeof(seq_note_t) * seq_note_count);
        free(seq_notes);
    }
    if (seq_order_start) {
        free(seq_order_start);
    }
    if (seq_order_end) {
        free(seq_order_end);
    }
    seq_notes = new_notes;
    seq_order_start = new_order_start;
    seq_order_end = new_order_end;
    seq_note_capacity = new_capacity;
    seq_playback_mark_dirty();
    return 1;
}

static void seq_clear_note_storage(void)
{
    if (seq_notes && seq_note_capacity > 0u) {
        memset(seq_notes, 0, sizeof(seq_note_t) * seq_note_capacity);
    }
    seq_order_count = 0;
    seq_playback_mark_dirty();
    ui_seq_back_invalidate();
}

static void ui_storage_init(void)
{
    ui_program_bank = malloc(sizeof(sid_instr_t) * 128u * UI_VM_SCAN_LIMIT);
    ui_project_file_buffer = malloc(sizeof(synth_project_file_t));
    ui_program_file_buffer = malloc(sizeof(synth_program_file_t));
    ui_song_file_buffer = malloc(sizeof(synth_song_file_t));

    if (ui_program_bank) {
        memset(ui_program_bank, 0, sizeof(sid_instr_t) * 128u * UI_VM_SCAN_LIMIT);
    }
    if (ui_project_file_buffer) {
        memset(ui_project_file_buffer, 0, sizeof(synth_project_file_t));
    }
    if (ui_program_file_buffer) {
        memset(ui_program_file_buffer, 0, sizeof(synth_program_file_t));
    }
    if (ui_song_file_buffer) {
        memset(ui_song_file_buffer, 0, sizeof(synth_song_file_t));
    }
    (void)seq_reserve_notes(SEQ_INITIAL_NOTES);
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
    seq_midi_out_program(SEQ_METRONOME_CHANNEL, SEQ_METRONOME_PROGRAM);
    seq_midi_out_note_on(SEQ_METRONOME_CHANNEL, note, 127);
    seq_metronome_note = note;
    seq_metronome_ticks = SEQ_METRONOME_TICKS;
}

static uint32_t seq_note_end_tick(uint32_t index)
{
    return seq_notes[index].start + seq_notes[index].length;
}

static int seq_order_compare_start(const void *a, const void *b)
{
    uint32_t ia = *(const uint16_t *)a;
    uint32_t ib = *(const uint16_t *)b;
    uint32_t sa = seq_notes[ia].start;
    uint32_t sb = seq_notes[ib].start;

    if (sa < sb) return -1;
    if (sa > sb) return 1;
    if (ia < ib) return -1;
    if (ia > ib) return 1;
    return 0;
}

static int seq_order_compare_end(const void *a, const void *b)
{
    uint32_t ia = *(const uint16_t *)a;
    uint32_t ib = *(const uint16_t *)b;
    uint32_t ea = seq_note_end_tick(ia);
    uint32_t eb = seq_note_end_tick(ib);

    if (ea < eb) return -1;
    if (ea > eb) return 1;
    if (ia < ib) return -1;
    if (ia > ib) return 1;
    return 0;
}

static void seq_playback_mark_dirty(void)
{
    seq_order_dirty = 1u;
    seq_play_cursor_valid = 0u;
}

static uint8_t seq_playback_build_order(void)
{
    uint32_t count = 0;

    if (seq_note_count > 0u && (!seq_order_start || !seq_order_end)) {
        seq_playback_mark_dirty();
        return 0;
    }

    for (uint32_t i = 0; i < seq_note_count; i++) {
        if (seq_notes[i].used) {
            seq_order_start[count] = (uint16_t)i;
            seq_order_end[count] = (uint16_t)i;
            count++;
        }
    }

    if (count > 1u) {
        qsort(seq_order_start, count, sizeof(uint16_t), seq_order_compare_start);
        qsort(seq_order_end, count, sizeof(uint16_t), seq_order_compare_end);
    }

    seq_order_count = count;
    seq_order_dirty = 0u;
    seq_play_cursor_valid = 0u;
    return 1;
}

static uint32_t seq_order_lower_bound_start(uint32_t tick)
{
    uint32_t lo = 0;
    uint32_t hi = seq_order_count;

    while (lo < hi) {
        uint32_t mid = lo + ((hi - lo) >> 1);
        if (seq_notes[seq_order_start[mid]].start < tick) {
            lo = mid + 1u;
        } else {
            hi = mid;
        }
    }
    return lo;
}

static uint32_t seq_order_lower_bound_end(uint32_t tick)
{
    uint32_t lo = 0;
    uint32_t hi = seq_order_count;

    while (lo < hi) {
        uint32_t mid = lo + ((hi - lo) >> 1);
        if (seq_note_end_tick(seq_order_end[mid]) < tick) {
            lo = mid + 1u;
        } else {
            hi = mid;
        }
    }
    return lo;
}

static uint8_t seq_playback_sync(uint32_t tick)
{
    if (seq_order_dirty && !seq_playback_build_order()) {
        return 0;
    }

    if (!seq_play_cursor_valid || tick < seq_play_last_tick ||
            tick > (seq_play_last_tick + 1u)) {
        seq_play_next_on = seq_order_lower_bound_start(tick);
        seq_play_next_off = seq_order_lower_bound_end(tick);
    }

    seq_play_last_tick = tick;
    seq_play_cursor_valid = 1u;
    return 1;
}

static uint32_t seq_alloc_note(void)
{
    uint32_t index;

    if (seq_note_count < seq_note_capacity || seq_reserve_notes(seq_note_count + 1u)) {
        index = seq_note_count++;
    } else {
        if (seq_note_capacity == 0u) {
            return 0xFFFFFFFFu;
        }
        index = seq_next_note;
        seq_next_note = (seq_next_note + 1u) % seq_note_capacity;
    }

    memset(&seq_notes[index], 0, sizeof(seq_notes[index]));
    seq_notes[index].used = 1;
    seq_playback_mark_dirty();
    ui_seq_back_invalidate();
    return index;
}

static void seq_record_note_on(uint8_t channel, uint8_t note, uint8_t velocity)
{
    uint32_t index;

    if (!seq_recording) {
        return;
    }

    for (uint8_t i = 0; i < SEQ_PENDING_MAX; i++) {
        if (seq_pending[i].active && seq_pending[i].channel == channel && seq_pending[i].note == note) {
            return;
        }
    }

    index = seq_alloc_note();
    if (index == 0xFFFFFFFFu) {
        ui_set_status("Sequencer note memory full");
        return;
    }
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

    seq_notes[index].used = 0;
    if (index + 1u == seq_note_count) {
        seq_note_count--;
    }
    seq_playback_mark_dirty();
    ui_seq_back_invalidate();
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
            uint32_t index = seq_pending[i].note_index;

            if (index < seq_note_count && seq_notes[index].used) {
                if (end_tick <= seq_notes[index].start) {
                    end_tick = seq_notes[index].start + 1u;
                }
                seq_notes[index].length = end_tick - seq_notes[index].start;
                seq_playback_mark_dirty();
                ui_seq_back_invalidate();
            }
            seq_pending[i].active = 0;
            return;
        }
    }
}

static void seq_playback_tick(uint32_t tick)
{
    if (!seq_playback_sync(tick)) {
        for (uint32_t i = 0; i < seq_note_count; i++) {
            uint32_t end_tick;

            if (!seq_notes[i].used) {
                continue;
            }

            end_tick = seq_note_end_tick(i);
            if (seq_notes[i].start == tick) {
                sid_midi_note_on_program_source(seq_notes[i].channel, seq_notes[i].note,
                                                seq_notes[i].velocity, seq_notes[i].program,
                                                MIDI_VOICE_SOURCE_SEQ);
                seq_midi_out_program(seq_notes[i].channel, seq_notes[i].program);
                seq_midi_out_note_on(seq_notes[i].channel, seq_notes[i].note, seq_notes[i].velocity);
            }
            if (end_tick == tick) {
                sid_midi_note_off_source(seq_notes[i].channel, seq_notes[i].note,
                                         MIDI_VOICE_SOURCE_SEQ);
                seq_midi_out_note_off(seq_notes[i].channel, seq_notes[i].note);
            }
        }
        return;
    }

    while (seq_play_next_off < seq_order_count &&
            seq_note_end_tick(seq_order_end[seq_play_next_off]) == tick) {
        uint32_t i = seq_order_end[seq_play_next_off++];

        if (seq_notes[i].used) {
            sid_midi_note_off_source(seq_notes[i].channel, seq_notes[i].note,
                                     MIDI_VOICE_SOURCE_SEQ);
            seq_midi_out_note_off(seq_notes[i].channel, seq_notes[i].note);
        }
    }

    while (seq_play_next_on < seq_order_count &&
            seq_notes[seq_order_start[seq_play_next_on]].start == tick) {
        uint32_t i = seq_order_start[seq_play_next_on++];

        if (seq_notes[i].used) {
            sid_midi_note_on_program_source(seq_notes[i].channel, seq_notes[i].note,
                                            seq_notes[i].velocity, seq_notes[i].program,
                                            MIDI_VOICE_SOURCE_SEQ);
            seq_midi_out_program(seq_notes[i].channel, seq_notes[i].program);
            seq_midi_out_note_on(seq_notes[i].channel, seq_notes[i].note, seq_notes[i].velocity);
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
    seq_playback_sync(seq_position_ticks);
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
    seq_playback_sync(seq_position_ticks);
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
                    seq_playback_sync(seq_position_ticks);
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
    seq_playback_sync(seq_position_ticks);
    ui_seq_back_invalidate();
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
    seq_clear_note_storage();
    seq_playback_mark_dirty();
    ui_seq_back_invalidate();
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
    seq_playback_sync(seq_position_ticks);
}

static void seq_set_bpm(int16_t bpm)
{
    if (bpm < 40) bpm = 40;
    if (bpm > 240) bpm = 240;
    seq_bpm = (uint16_t)bpm;
    ui_seq_back_invalidate();
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
    seq_order_count = 0;
    seq_play_next_on = 0;
    seq_play_next_off = 0;
    seq_play_last_tick = 0;
    seq_order_dirty = 1u;
    seq_play_cursor_valid = 0u;
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
    seq_clear_note_storage();
    ui_seq_back_dirty = 1u;
    ui_seq_back_valid = 0u;
    ui_seq_back_origin_tick = 0;
    ui_seq_back_scroll_x = 0u;
    memset(seq_pending, 0, sizeof(seq_pending));
}
