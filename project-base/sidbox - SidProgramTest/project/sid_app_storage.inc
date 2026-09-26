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

static uint16_t ui_midi_import_active[MIDI_CHANNEL_COUNT][128];
static uint8_t ui_midi_import_progress_active;
static uint8_t ui_midi_import_progress_last_percent;
static uint16_t ui_midi_import_progress_track;
static uint16_t ui_midi_import_progress_tracks;
static uint32_t ui_midi_import_progress_done;
static uint32_t ui_midi_import_progress_total;

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
    if (ui_name_has_ext(name, UI_SONG_EXT)) {
        return UI_FILE_KIND_SONG;
    }
    if (ui_name_has_ext(name, UI_MIDI_EXT)) {
        return UI_FILE_KIND_MIDI;
    }
    return UI_FILE_KIND_NONE;
}

static const char *ui_file_base_dir(void)
{
    return ui_file_dir_path[0] ? ui_file_dir_path : UI_PROJECT_DIR;
}

static void ui_file_make_path(const char *name, uint8_t kind, char *out, uint32_t outcap)
{
    const char *ext = UI_PROGRAM_EXT;
    const char *base = ui_file_base_dir();

    if (kind == UI_FILE_KIND_PROJECT) {
        ext = UI_PROJECT_EXT;
    } else if (kind == UI_FILE_KIND_SONG) {
        ext = UI_SONG_EXT;
    } else if (kind == UI_FILE_KIND_MIDI) {
        ext = UI_MIDI_EXT;
    }

    if (ui_name_has_ext(name, ext)) {
        snprintf(out, outcap, "%s/%s", base, name);
    } else {
        snprintf(out, outcap, "%s/%s%s", base, name, ext);
    }
}

static void ui_file_join_path(const char *base, const char *name, char *out, uint32_t outcap)
{
    snprintf(out, outcap, "%s/%s", base, name);
}

static uint8_t ui_file_parent_path(char *path)
{
    char *slash;

    if (!path || strcmp(path, UI_ROOT_DIR) == 0) {
        return 0;
    }

    slash = strrchr(path, '/');
    if (!slash || slash <= path + (sizeof(UI_ROOT_DIR) - 1u)) {
        snprintf(path, UI_FILE_PATH_LEN, "%s", UI_ROOT_DIR);
    } else {
        *slash = 0;
    }
    return 1;
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

static void ui_song_pack(synth_song_file_t *song)
{
    memset(song, 0, sizeof(*song));
    memcpy(song->magic, UI_SONG_MAGIC, sizeof(UI_SONG_MAGIC) - 1u);
    song->version = UI_SONG_VERSION;
    song->header_size = sizeof(*song);
    song->bpm = seq_bpm;
    song->note_count = seq_note_count;
    song->position_ticks = seq_position_ticks;
    song->snap_enabled = seq_snap_enabled;
    song->snap_index = seq_snap_index;
}

static uint8_t ui_song_save_path(const char *path)
{
    uint32_t written = 0;
    FRESULT res;

    if (!ui_song_file_buffer) {
        ui_set_status("Song save buffer missing");
        return 0;
    }

    ui_song_pack(ui_song_file_buffer);
    res = sfopen(1, (char *)path, (uint8_t)(SD_WRITE | SD_CREATE_ALWAYS));
    if (res != FR_OK) {
        ui_set_status("Song save open failed");
        return 0;
    }

    res = sfwrite(1, ui_song_file_buffer, sizeof(*ui_song_file_buffer), &written);
    if (res == FR_OK && written == sizeof(*ui_song_file_buffer) && seq_note_count > 0u) {
        uint32_t notes_written = 0;

        res = sfwrite(1, seq_notes, sizeof(seq_note_t) * seq_note_count, &notes_written);
        written += notes_written;
        if (res == FR_OK && notes_written != sizeof(seq_note_t) * seq_note_count) {
            res = FR_DISK_ERR;
        }
    }
    sfclose(1);
    if (res != FR_OK ||
            written != (sizeof(*ui_song_file_buffer) + (sizeof(seq_note_t) * seq_note_count))) {
        ui_set_status("Song save write failed");
        return 0;
    }

    ui_set_status("Song saved");
    return 1;
}

static uint8_t ui_file_write_exact(uint8_t filenum, const void *buffer, uint32_t length, uint32_t *total)
{
    uint32_t written = 0;

    if (sfwrite(filenum, buffer, length, &written) != FR_OK || written != length) {
        return 0;
    }
    if (total) {
        *total += written;
    }
    return 1;
}

static uint8_t ui_file_write_u8(uint8_t filenum, uint8_t value, uint32_t *total)
{
    return ui_file_write_exact(filenum, &value, 1, total);
}

static uint8_t ui_file_write_be16(uint8_t filenum, uint16_t value, uint32_t *total)
{
    uint8_t bytes[2];

    bytes[0] = (uint8_t)(value >> 8);
    bytes[1] = (uint8_t)value;
    return ui_file_write_exact(filenum, bytes, sizeof(bytes), total);
}

static uint8_t ui_file_write_be24(uint8_t filenum, uint32_t value, uint32_t *total)
{
    uint8_t bytes[3];

    bytes[0] = (uint8_t)(value >> 16);
    bytes[1] = (uint8_t)(value >> 8);
    bytes[2] = (uint8_t)value;
    return ui_file_write_exact(filenum, bytes, sizeof(bytes), total);
}

static uint8_t ui_file_write_be32(uint8_t filenum, uint32_t value, uint32_t *total)
{
    uint8_t bytes[4];

    bytes[0] = (uint8_t)(value >> 24);
    bytes[1] = (uint8_t)(value >> 16);
    bytes[2] = (uint8_t)(value >> 8);
    bytes[3] = (uint8_t)value;
    return ui_file_write_exact(filenum, bytes, sizeof(bytes), total);
}

static void ui_midi_import_progress_add(uint32_t bytes, uint8_t force)
{
    uint8_t percent = 0;

    if (!ui_midi_import_progress_active || ui_midi_import_progress_total == 0u) {
        return;
    }

    if (bytes > 0u) {
        uint32_t next = ui_midi_import_progress_done + bytes;

        ui_midi_import_progress_done =
            (next < ui_midi_import_progress_done || next > ui_midi_import_progress_total) ?
            ui_midi_import_progress_total : next;
    }

    percent = (uint8_t)(((uint64_t)ui_midi_import_progress_done * 100u) /
                        ui_midi_import_progress_total);
    if (force || percent != ui_midi_import_progress_last_percent) {
        ui_midi_import_progress_last_percent = percent;
        ui_midi_import_progress_paint(ui_midi_import_progress_done,
                                      ui_midi_import_progress_total,
                                      ui_midi_import_progress_track,
                                      ui_midi_import_progress_tracks,
                                      seq_note_count);
    }
}

static void ui_midi_import_progress_begin(uint32_t total, uint32_t done,
                                          uint16_t tracks)
{
    ui_midi_import_progress_active = 1u;
    ui_midi_import_progress_last_percent = 0xFFu;
    ui_midi_import_progress_track = 0u;
    ui_midi_import_progress_tracks = tracks;
    ui_midi_import_progress_total = total ? total : 1u;
    ui_midi_import_progress_done = (done > ui_midi_import_progress_total) ?
        ui_midi_import_progress_total : done;
    ui_midi_import_progress_add(0, 1);
}

static void ui_midi_import_progress_track_start(uint16_t track)
{
    ui_midi_import_progress_track = track;
    ui_midi_import_progress_add(0, 1);
}

static void ui_midi_import_progress_end(void)
{
    if (ui_midi_import_progress_active) {
        ui_midi_import_progress_done = ui_midi_import_progress_total;
        ui_midi_import_progress_add(0, 1);
    }
    ui_midi_import_progress_active = 0u;
}

static uint8_t ui_file_read_exact(uint8_t filenum, void *buffer, uint32_t length, uint32_t *remaining)
{
    uint32_t read = 0;

    if (remaining && *remaining < length) {
        return 0;
    }
    if (sfread(filenum, buffer, length, &read) != FR_OK || read != length) {
        return 0;
    }
    if (remaining) {
        *remaining -= length;
    }
    ui_midi_import_progress_add(length, 0);
    return 1;
}

static uint8_t ui_file_read_u8(uint8_t filenum, uint8_t *value, uint32_t *remaining)
{
    return ui_file_read_exact(filenum, value, 1, remaining);
}

static uint8_t ui_file_read_be16(uint8_t filenum, uint16_t *value, uint32_t *remaining)
{
    uint8_t bytes[2];

    if (!ui_file_read_exact(filenum, bytes, sizeof(bytes), remaining)) {
        return 0;
    }
    *value = (uint16_t)(((uint16_t)bytes[0] << 8) | bytes[1]);
    return 1;
}

static uint8_t ui_file_read_be32(uint8_t filenum, uint32_t *value, uint32_t *remaining)
{
    uint8_t bytes[4];

    if (!ui_file_read_exact(filenum, bytes, sizeof(bytes), remaining)) {
        return 0;
    }
    *value = ((uint32_t)bytes[0] << 24) |
             ((uint32_t)bytes[1] << 16) |
             ((uint32_t)bytes[2] << 8) |
             bytes[3];
    return 1;
}

static uint8_t ui_file_skip(uint8_t filenum, uint32_t length, uint32_t *remaining)
{
    uint8_t buffer[32];

    while (length > 0u) {
        uint32_t chunk = (length > sizeof(buffer)) ? sizeof(buffer) : length;

        if (!ui_file_read_exact(filenum, buffer, chunk, remaining)) {
            return 0;
        }
        length -= chunk;
    }
    return 1;
}

static uint32_t ui_seq_tick_to_midi_tick(uint32_t tick)
{
    uint32_t beat_ticks = seq_beat_ticks();
    uint64_t scaled = (uint64_t)tick * MIDI_EXPORT_PPQN;

    return (uint32_t)((scaled + (beat_ticks / 2u)) / beat_ticks);
}

static uint32_t ui_seq_note_start_midi_tick(const seq_note_t *note)
{
    return ui_seq_tick_to_midi_tick(note->start);
}

static uint32_t ui_seq_note_end_midi_tick(const seq_note_t *note)
{
    uint32_t start = ui_seq_note_start_midi_tick(note);
    uint32_t end = ui_seq_tick_to_midi_tick(note->start + note->length);

    return (end <= start) ? (start + 1u) : end;
}

static uint8_t ui_midi_write_varlen(uint8_t filenum, uint32_t value, uint32_t *total)
{
    uint8_t buffer[5];
    uint8_t count = 0;

    buffer[count++] = (uint8_t)(value & 0x7Fu);
    while ((value >>= 7) != 0u && count < sizeof(buffer)) {
        buffer[count++] = (uint8_t)((value & 0x7Fu) | 0x80u);
    }

    while (count > 0u) {
        if (!ui_file_write_u8(filenum, buffer[--count], total)) {
            return 0;
        }
    }
    return 1;
}

static uint8_t ui_midi_write_delta(uint8_t filenum, uint32_t delta, uint32_t *track_len)
{
    return ui_midi_write_varlen(filenum, delta, track_len);
}

static uint8_t ui_midi_write_channel_event(uint8_t filenum, uint32_t delta,
                                           uint8_t status, uint8_t a, uint8_t b,
                                           uint32_t *track_len)
{
    return ui_midi_write_delta(filenum, delta, track_len) &&
           ui_file_write_u8(filenum, status, track_len) &&
           ui_file_write_u8(filenum, (uint8_t)(a & 0x7Fu), track_len) &&
           ui_file_write_u8(filenum, (uint8_t)(b & 0x7Fu), track_len);
}

static uint8_t ui_midi_write_program_event(uint8_t filenum, uint32_t delta,
                                           uint8_t channel, uint8_t program,
                                           uint32_t *track_len)
{
    return ui_midi_write_delta(filenum, delta, track_len) &&
           ui_file_write_u8(filenum, (uint8_t)(0xC0u | (channel & 0x0Fu)), track_len) &&
           ui_file_write_u8(filenum, (uint8_t)(program & 0x7Fu), track_len);
}

static uint8_t ui_midi_find_next_time(uint32_t after_tick, uint8_t inclusive, uint32_t *next_tick)
{
    uint8_t found = 0;
    uint32_t best = 0xFFFFFFFFu;

    for (uint32_t i = 0; i < seq_note_count; i++) {
        if (!seq_notes[i].used) {
            continue;
        }

        uint32_t start = ui_seq_note_start_midi_tick(&seq_notes[i]);
        uint32_t end = ui_seq_note_end_midi_tick(&seq_notes[i]);

        if ((inclusive ? start >= after_tick : start > after_tick) && start < best) {
            best = start;
            found = 1;
        }
        if ((inclusive ? end >= after_tick : end > after_tick) && end < best) {
            best = end;
            found = 1;
        }
    }

    if (found) {
        *next_tick = best;
    }
    return found;
}

static uint8_t ui_midi_export_path(const char *path)
{
    uint32_t track_len = 0;
    uint32_t written_total = 0;
    uint32_t current_tick = 0;
    uint32_t last_tick = 0;
    uint8_t have_time;
    uint8_t export_program[MIDI_CHANNEL_COUNT];
    uint32_t tempo = 60000000ul / (seq_bpm ? seq_bpm : 120u);
    FRESULT res;

    res = sfopen(1, (char *)path, (uint8_t)(SD_WRITE | SD_CREATE_ALWAYS));
    if (res != FR_OK) {
        ui_set_status("MIDI export open failed");
        return 0;
    }

    if (!ui_file_write_exact(1, "MThd", 4, &written_total) ||
            !ui_file_write_be32(1, 6, &written_total) ||
            !ui_file_write_be16(1, 0, &written_total) ||
            !ui_file_write_be16(1, 1, &written_total) ||
            !ui_file_write_be16(1, MIDI_EXPORT_PPQN, &written_total) ||
            !ui_file_write_exact(1, "MTrk", 4, &written_total) ||
            !ui_file_write_be32(1, 0, &written_total)) {
        sfclose(1);
        ui_set_status("MIDI export header failed");
        return 0;
    }

    if (!ui_midi_write_delta(1, 0, &track_len) ||
            !ui_file_write_u8(1, 0xFFu, &track_len) ||
            !ui_file_write_u8(1, 0x51u, &track_len) ||
            !ui_file_write_u8(1, 0x03u, &track_len) ||
            !ui_file_write_be24(1, tempo, &track_len)) {
        sfclose(1);
        ui_set_status("MIDI export tempo failed");
        return 0;
    }

    memset(export_program, 0xFF, sizeof(export_program));

    have_time = ui_midi_find_next_time(0, 1, &current_tick);
    while (have_time) {
        uint8_t wrote_at_time = 0;
        uint32_t delta = current_tick - last_tick;

        for (uint32_t i = 0; i < seq_note_count; i++) {
            if (seq_notes[i].used &&
                    ui_seq_note_end_midi_tick(&seq_notes[i]) == current_tick) {
                if (!ui_midi_write_channel_event(1, wrote_at_time ? 0u : delta,
                        (uint8_t)(0x80u | (seq_notes[i].channel & 0x0Fu)),
                        seq_notes[i].note, 0, &track_len)) {
                    sfclose(1);
                    ui_set_status("MIDI export note-off failed");
                    return 0;
                }
                wrote_at_time = 1;
            }
        }

        for (uint32_t i = 0; i < seq_note_count; i++) {
            if (seq_notes[i].used && ui_seq_note_start_midi_tick(&seq_notes[i]) == current_tick) {
                uint8_t channel = (uint8_t)(seq_notes[i].channel & 0x0Fu);

                if (seq_notes[i].program < 128u && export_program[channel] != seq_notes[i].program) {
                    if (!ui_midi_write_program_event(1, wrote_at_time ? 0u : delta,
                            channel, seq_notes[i].program, &track_len)) {
                        sfclose(1);
                        ui_set_status("MIDI export program failed");
                        return 0;
                    }
                    export_program[channel] = seq_notes[i].program;
                    wrote_at_time = 1;
                }

                if (!ui_midi_write_channel_event(1, wrote_at_time ? 0u : delta,
                        (uint8_t)(0x90u | channel),
                        seq_notes[i].note, seq_notes[i].velocity, &track_len)) {
                    sfclose(1);
                    ui_set_status("MIDI export note-on failed");
                    return 0;
                }
                wrote_at_time = 1;
            }
        }

        last_tick = current_tick;
        have_time = ui_midi_find_next_time(current_tick, 0, &current_tick);
    }

    if (!ui_midi_write_delta(1, 0, &track_len) ||
            !ui_file_write_u8(1, 0xFFu, &track_len) ||
            !ui_file_write_u8(1, 0x2Fu, &track_len) ||
            !ui_file_write_u8(1, 0x00u, &track_len)) {
        sfclose(1);
        ui_set_status("MIDI export end failed");
        return 0;
    }

    if (sflseek(1, 18) != FR_OK || !ui_file_write_be32(1, track_len, NULL)) {
        sfclose(1);
        ui_set_status("MIDI export length failed");
        return 0;
    }

    sfclose(1);
    ui_set_status("MIDI exported");
    return 1;
}

static uint32_t ui_midi_import_tick_to_seq(uint32_t midi_tick, uint16_t division)
{
    uint32_t beat_ticks = seq_beat_ticks();
    uint64_t scaled;

    if (division == 0u || (division & 0x8000u)) {
        division = MIDI_EXPORT_PPQN;
    }
    scaled = (uint64_t)midi_tick * beat_ticks;
    return (uint32_t)((scaled + (division / 2u)) / division);
}

static uint8_t ui_midi_read_varlen(uint8_t filenum, uint32_t *value, uint32_t *remaining)
{
    uint8_t byte = 0;
    uint8_t count = 0;

    *value = 0;
    do {
        if (count++ >= 4u || !ui_file_read_u8(filenum, &byte, remaining)) {
            return 0;
        }
        *value = (*value << 7) | (byte & 0x7Fu);
    } while (byte & 0x80u);

    return 1;
}

static uint32_t ui_midi_import_alloc_note(void)
{
    uint32_t index;

    if (seq_note_count >= SEQ_MAX_NOTES || !seq_reserve_notes(seq_note_count + 1u)) {
        return 0xFFFFFFFFu;
    }

    index = seq_note_count++;
    memset(&seq_notes[index], 0, sizeof(seq_notes[index]));
    seq_notes[index].used = 1u;
    return index;
}

static void ui_midi_import_note_off(uint8_t channel, uint8_t note, uint32_t tick, uint16_t division)
{
    uint16_t index;
    uint32_t end_tick;

    if (channel >= MIDI_CHANNEL_COUNT || note >= 128u) {
        return;
    }

    index = ui_midi_import_active[channel][note];
    if (index == 0xFFFFu || index >= seq_note_count || !seq_notes[index].used) {
        return;
    }

    end_tick = ui_midi_import_tick_to_seq(tick, division);
    if (end_tick <= seq_notes[index].start) {
        end_tick = seq_notes[index].start + 1u;
    }
    seq_notes[index].length = end_tick - seq_notes[index].start;
    ui_midi_import_active[channel][note] = 0xFFFFu;
}

static uint8_t ui_midi_import_note_on(uint8_t channel, uint8_t note, uint8_t velocity,
                                      uint8_t program, uint32_t tick, uint16_t division)
{
    uint32_t index;

    if (channel >= MIDI_CHANNEL_COUNT || note >= 128u) {
        return 1;
    }

    if (ui_midi_import_active[channel][note] != 0xFFFFu) {
        ui_midi_import_note_off(channel, note, tick, division);
    }

    index = ui_midi_import_alloc_note();
    if (index == 0xFFFFFFFFu) {
        return 0;
    }

    seq_notes[index].start = ui_midi_import_tick_to_seq(tick, division);
    seq_notes[index].length = 0u;
    seq_notes[index].note = note;
    seq_notes[index].channel = channel;
    seq_notes[index].program = (program < 128u) ? program : midi_default_channel_program[channel];
    seq_notes[index].velocity = velocity ? velocity : 1u;
    seq_notes[index].colour = (uint8_t)(32u + (channel & 7u));
    ui_midi_import_active[channel][note] = (uint16_t)index;
    return 1;
}

static void ui_midi_import_close_open_notes(uint32_t tick, uint16_t division)
{
    uint32_t end_tick = ui_midi_import_tick_to_seq(tick + (division / 4u), division);

    for (uint8_t ch = 0; ch < MIDI_CHANNEL_COUNT; ch++) {
        for (uint8_t note = 0; note < 128u; note++) {
            uint16_t index = ui_midi_import_active[ch][note];

            if (index == 0xFFFFu || index >= seq_note_count || !seq_notes[index].used) {
                continue;
            }
            if (end_tick <= seq_notes[index].start) {
                seq_notes[index].length = 1u;
            } else {
                seq_notes[index].length = end_tick - seq_notes[index].start;
            }
            ui_midi_import_active[ch][note] = 0xFFFFu;
        }
    }
}

static void ui_midi_import_all_notes_off(uint8_t channel, uint32_t tick, uint16_t division)
{
    if (channel >= MIDI_CHANNEL_COUNT) {
        return;
    }

    for (uint8_t note = 0; note < 128u; note++) {
        ui_midi_import_note_off(channel, note, tick, division);
    }
}

static uint8_t ui_midi_import_track(uint8_t filenum, uint32_t track_len, uint16_t division,
                                    uint8_t *import_program)
{
    uint32_t tick = 0;
    uint8_t running_status = 0;

    while (track_len > 0u) {
        uint32_t delta = 0;
        uint8_t first = 0;
        uint8_t status = 0;
        uint8_t data1 = 0;
        uint8_t data2 = 0;
        uint8_t event_type;
        uint8_t channel;

        if (!ui_midi_read_varlen(filenum, &delta, &track_len) ||
                !ui_file_read_u8(filenum, &first, &track_len)) {
            return 0;
        }
        tick += delta;

        if (first == 0xFFu) {
            uint8_t meta_type = 0;
            uint32_t meta_len = 0;

            if (!ui_file_read_u8(filenum, &meta_type, &track_len) ||
                    !ui_midi_read_varlen(filenum, &meta_len, &track_len)) {
                return 0;
            }
            if (meta_type == 0x51u && meta_len == 3u) {
                uint8_t tempo_bytes[3];
                uint32_t tempo;
                uint16_t bpm;

                if (!ui_file_read_exact(filenum, tempo_bytes, sizeof(tempo_bytes), &track_len)) {
                    return 0;
                }
                tempo = ((uint32_t)tempo_bytes[0] << 16) |
                        ((uint32_t)tempo_bytes[1] << 8) |
                        tempo_bytes[2];
                bpm = tempo ? (uint16_t)((60000000ul + (tempo / 2u)) / tempo) : 120u;
                if (bpm >= 20u && bpm <= 300u) {
                    seq_set_bpm((int16_t)bpm);
                }
            } else {
                if (!ui_file_skip(filenum, meta_len, &track_len)) {
                    return 0;
                }
            }
            if (meta_type == 0x2Fu) {
                return ui_file_skip(filenum, track_len, &track_len);
            }
            continue;
        }

        if (first == 0xF0u || first == 0xF7u) {
            uint32_t sysex_len = 0;

            if (!ui_midi_read_varlen(filenum, &sysex_len, &track_len) ||
                    !ui_file_skip(filenum, sysex_len, &track_len)) {
                return 0;
            }
            continue;
        }

        if (first & 0x80u) {
            status = first;
            running_status = status;
            if (!ui_file_read_u8(filenum, &data1, &track_len)) {
                return 0;
            }
        } else {
            status = running_status;
            data1 = first;
            if (status == 0u) {
                return 0;
            }
        }

        event_type = status & 0xF0u;
        channel = status & 0x0Fu;
        if (event_type != 0xC0u && event_type != 0xD0u) {
            if (!ui_file_read_u8(filenum, &data2, &track_len)) {
                return 0;
            }
        }

        if (event_type == 0x80u || (event_type == 0x90u && data2 == 0u)) {
            ui_midi_import_note_off(channel, (uint8_t)(data1 & 0x7Fu), tick, division);
        } else if (event_type == 0x90u) {
            if (!ui_midi_import_note_on(channel, (uint8_t)(data1 & 0x7Fu),
                    (uint8_t)(data2 & 0x7Fu), import_program[channel], tick, division)) {
                ui_set_status("MIDI note memory full");
                return 0;
            }
        } else if (event_type == 0xC0u) {
            import_program[channel] = (uint8_t)(data1 & 0x7Fu);
            midi_channel_program[channel] = import_program[channel];
        } else if (event_type == 0xB0u) {
            uint8_t controller = (uint8_t)(data1 & 0x7Fu);
            uint8_t value = (uint8_t)(data2 & 0x7Fu);

            if (controller == 7u) {
                midi_channel_volume[channel] = value;
            } else if (controller == 11u) {
                midi_channel_expression[channel] = value;
            } else if (controller == 120u || controller == 123u) {
                ui_midi_import_all_notes_off(channel, tick, division);
            } else if (controller == 121u) {
                midi_channel_volume[channel] = 127u;
                midi_channel_expression[channel] = 127u;
                midi_channel_bend[channel] = 0;
            }
        }
    }

    ui_midi_import_close_open_notes(tick, division);
    return 1;
}

static uint8_t ui_midi_load_path(const char *path)
{
    uint8_t chunk_id[4];
    uint32_t header_len = 0;
    uint16_t format = 0;
    uint16_t tracks = 0;
    uint16_t division = 0;
    uint32_t file_size = 0;
    uint32_t ignored_flags = 0;
    uint8_t import_program[MIDI_CHANNEL_COUNT];
    char status[40];
    FRESULT res;

    if (sfstat((char *)path, &ignored_flags, &file_size) != FR_OK || file_size < 14u) {
        ui_set_status("Bad MIDI file");
        return 0;
    }

    res = sfopen(1, (char *)path, SD_READ);
    if (res != FR_OK) {
        ui_set_status("MIDI load open failed");
        return 0;
    }

    if (!ui_file_read_exact(1, chunk_id, sizeof(chunk_id), NULL) ||
            memcmp(chunk_id, "MThd", 4) != 0 ||
            !ui_file_read_be32(1, &header_len, NULL) ||
            header_len < 6u ||
            !ui_file_read_be16(1, &format, NULL) ||
            !ui_file_read_be16(1, &tracks, NULL) ||
            !ui_file_read_be16(1, &division, NULL)) {
        sfclose(1);
        ui_set_status("Bad MIDI header");
        return 0;
    }
    if (header_len > 6u && !ui_file_skip(1, header_len - 6u, NULL)) {
        sfclose(1);
        ui_set_status("Bad MIDI header");
        return 0;
    }
    if (format > 1u || tracks == 0u || (division & 0x8000u)) {
        sfclose(1);
        ui_set_status("Unsupported MIDI file");
        return 0;
    }

    ui_midi_import_progress_begin(file_size, 8u + header_len, tracks);
    seq_stop_transport(1);
    seq_clear_note_storage();
    memset(seq_pending, 0, sizeof(seq_pending));
    memset(ui_midi_import_active, 0xFF, sizeof(ui_midi_import_active));
    memcpy(import_program, midi_channel_program, sizeof(import_program));
    seq_note_count = 0;
    seq_next_note = 0;
    seq_position_ticks = 0;
    seq_last_clock_ticks = seq_clock_ticks;

    for (uint16_t track = 0; track < tracks; track++) {
        uint32_t track_len = 0;

        ui_midi_import_progress_track_start((uint16_t)(track + 1u));
        if (!ui_file_read_exact(1, chunk_id, sizeof(chunk_id), NULL) ||
                !ui_file_read_be32(1, &track_len, NULL)) {
            ui_midi_import_progress_active = 0u;
            sfclose(1);
            ui_set_status("Bad MIDI track");
            return 0;
        }
        if (memcmp(chunk_id, "MTrk", 4) != 0) {
            if (!ui_file_skip(1, track_len, NULL)) {
                ui_midi_import_progress_active = 0u;
                sfclose(1);
                ui_set_status("Bad MIDI chunk");
                return 0;
            }
            continue;
        }
        if (!ui_midi_import_track(1, track_len, division, import_program)) {
            ui_midi_import_progress_active = 0u;
            sfclose(1);
            return 0;
        }
    }

    ui_midi_import_close_open_notes(division, division);
    sfclose(1);
    ui_midi_import_progress_end();
    seq_next_note = (seq_note_count >= seq_note_capacity) ? 0u : seq_note_count;
    seq_playback_mark_dirty();
    seq_playback_sync(seq_position_ticks);
    ui_seq_back_invalidate();
    ui_page = UI_PAGE_SEQ;
    snprintf(status, sizeof(status), "MIDI loaded: %lu notes", (unsigned long)seq_note_count);
    ui_set_status(status);
    ui_back_dirty = 1;
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

static uint8_t ui_song_load_path(const char *path)
{
    uint32_t read = 0;
    uint32_t notes_read = 0;
    FRESULT res;

    if (!ui_song_file_buffer) {
        ui_set_status("Song load buffer missing");
        return 0;
    }

    memset(ui_song_file_buffer, 0, sizeof(*ui_song_file_buffer));
    res = sfopen(1, (char *)path, SD_READ);
    if (res != FR_OK) {
        ui_set_status("Song load open failed");
        return 0;
    }

    res = sfread(1, ui_song_file_buffer, sizeof(*ui_song_file_buffer), &read);
    if (res != FR_OK || read < 32u ||
            memcmp(ui_song_file_buffer->magic, UI_SONG_MAGIC, sizeof(UI_SONG_MAGIC) - 1u) != 0 ||
            ui_song_file_buffer->version > UI_SONG_VERSION ||
            ui_song_file_buffer->note_count > SEQ_MAX_NOTES) {
        sfclose(1);
        ui_set_status("Bad song file");
        return 0;
    }
    if (!seq_reserve_notes(ui_song_file_buffer->note_count)) {
        sfclose(1);
        ui_set_status("Song note memory full");
        return 0;
    }

    seq_stop_transport(1);
    seq_clear_note_storage();
    memset(seq_pending, 0, sizeof(seq_pending));
    seq_note_count = ui_song_file_buffer->note_count;
    seq_next_note = (seq_note_count >= seq_note_capacity) ? 0u : seq_note_count;
    seq_set_bpm((int16_t)ui_song_file_buffer->bpm);
    seq_position_ticks = ui_song_file_buffer->position_ticks;
    seq_snap_enabled = ui_song_file_buffer->snap_enabled ? 1u : 0u;
    seq_snap_index = ui_song_file_buffer->snap_index & 3u;
    seq_last_clock_ticks = seq_clock_ticks;

    if (seq_note_count > 0u) {
        res = sfread(1, seq_notes, sizeof(seq_note_t) * seq_note_count, &notes_read);
        if (res != FR_OK || notes_read != sizeof(seq_note_t) * seq_note_count) {
            sfclose(1);
            seq_note_count = 0;
            seq_next_note = 0;
            seq_clear_note_storage();
            ui_set_status("Bad song note data");
            return 0;
        }
    }
    sfclose(1);

    for (uint32_t i = 0; i < seq_note_count; i++) {
        if (seq_notes[i].channel >= MIDI_CHANNEL_COUNT) {
            seq_notes[i].channel = 0;
        }
        if (seq_notes[i].length == 0u) {
            seq_notes[i].length = 1u;
        }
        seq_notes[i].used = 1u;
        seq_notes[i].colour = (uint8_t)(32u + (seq_notes[i].channel & 7u));
    }

    seq_playback_mark_dirty();
    seq_playback_sync(seq_position_ticks);
    ui_seq_back_invalidate();
    ui_set_status("Song loaded");
    ui_back_dirty = 1;
    return 1;
}

static void ui_file_add_entry(const char *name, uint8_t kind)
{
    if (ui_file_count >= UI_FILE_MAX || !name || name[0] == 0) {
        return;
    }

    snprintf(ui_file_names[ui_file_count], UI_FILE_NAME_LEN, "%s", name);
    ui_file_kinds[ui_file_count] = kind;
    ui_file_count++;
}

static void ui_file_swap_entries(uint8_t a, uint8_t b)
{
    char tmp_name[UI_FILE_NAME_LEN];
    uint8_t tmp_kind;

    memcpy(tmp_name, ui_file_names[a], sizeof(tmp_name));
    tmp_kind = ui_file_kinds[a];
    memcpy(ui_file_names[a], ui_file_names[b], sizeof(tmp_name));
    ui_file_kinds[a] = ui_file_kinds[b];
    memcpy(ui_file_names[b], tmp_name, sizeof(tmp_name));
    ui_file_kinds[b] = tmp_kind;
}

static void ui_file_refresh(void)
{
    void *dir;
    char name[UI_FILE_NAME_LEN];
    uint32_t flags = 0;
    uint32_t size = 0;
    int32_t res;
    const char *dir_path = ui_file_base_dir();

    ui_file_count = 0;
    ui_file_scroll = 0;
    ui_file_selected = 0;
    memset(ui_file_names, 0, sizeof(ui_file_names));
    memset(ui_file_kinds, 0, sizeof(ui_file_kinds));

    if (strcmp(dir_path, UI_ROOT_DIR) != 0) {
        ui_file_add_entry("..", UI_FILE_KIND_DIR);
    }

    dir = sfopendir((char *)dir_path);
    if (!dir) {
        ui_set_status("Cannot open folder");
        return;
    }

    while (ui_file_count < UI_FILE_MAX) {
        res = sfreaddir(dir, name, sizeof(name), &flags, &size);
        if (res <= 0) {
            break;
        }
        if (name[0] == 0 || strcmp(name, ".") == 0 || strcmp(name, "..") == 0) {
            continue;
        }
        if (flags & UI_FS_FLAG_DIR) {
            ui_file_add_entry(name, UI_FILE_KIND_DIR);
            continue;
        }
        if (ui_file_kind_from_name(name) == UI_FILE_KIND_NONE) {
            continue;
        }

        ui_file_add_entry(name, ui_file_kind_from_name(name));
    }

    sfclosedir(dir);

    for (uint8_t i = 0; i < ui_file_count; i++) {
        for (uint8_t j = (uint8_t)(i + 1u); j < ui_file_count; j++) {
            if (strcmp(ui_file_names[i], "..") == 0) {
                continue;
            }
            if (strcmp(ui_file_names[j], "..") == 0 ||
                    (ui_file_kinds[j] == UI_FILE_KIND_DIR && ui_file_kinds[i] != UI_FILE_KIND_DIR) ||
                    (ui_file_kinds[j] == ui_file_kinds[i] && strcmp(ui_file_names[j], ui_file_names[i]) < 0)) {
                ui_file_swap_entries(i, j);
            }
        }
    }
}

static void ui_file_enter_selected(void)
{
    char path[UI_FILE_PATH_LEN];

    if (ui_file_count == 0u || ui_file_selected >= ui_file_count ||
            ui_file_kinds[ui_file_selected] != UI_FILE_KIND_DIR) {
        ui_set_status("Select a folder");
        return;
    }

    if (strcmp(ui_file_names[ui_file_selected], "..") == 0) {
        (void)ui_file_parent_path(ui_file_dir_path);
    } else {
        ui_file_join_path(ui_file_base_dir(), ui_file_names[ui_file_selected], path, sizeof(path));
        snprintf(ui_file_dir_path, sizeof(ui_file_dir_path), "%s", path);
    }
    ui_file_refresh();
    ui_back_dirty = 1;
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
    if (ui_file_dir_path[0] == 0) {
        snprintf(ui_file_dir_path, sizeof(ui_file_dir_path), "%s", UI_PROJECT_DIR);
    }
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
            (kind == UI_FILE_KIND_PROGRAM && ui_program_save_path(ui_pending_path)) ||
            (kind == UI_FILE_KIND_SONG && ui_song_save_path(ui_pending_path)) ||
            (kind == UI_FILE_KIND_MIDI && ui_midi_export_path(ui_pending_path))) {
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

    file_kind = ui_file_kinds[ui_file_selected];
    if (file_kind == UI_FILE_KIND_DIR) {
        ui_set_status("Press OK to open folder");
        return;
    }
    if (file_kind != kind) {
        if (kind == UI_FILE_KIND_PROJECT) {
            ui_set_status("Select a .spp project");
        } else if (kind == UI_FILE_KIND_PROGRAM) {
            ui_set_status("Select a .spg program");
        } else if (kind == UI_FILE_KIND_SONG) {
            ui_set_status("Select a .sng song");
        } else {
            ui_set_status("Select a .mid file");
        }
        return;
    }

    ui_file_make_path(ui_file_names[ui_file_selected], kind, ui_pending_path, sizeof(ui_pending_path));
    if ((kind == UI_FILE_KIND_PROJECT && ui_project_load_path(ui_pending_path)) ||
            (kind == UI_FILE_KIND_PROGRAM && ui_program_load_path(ui_pending_path)) ||
            (kind == UI_FILE_KIND_SONG && ui_song_load_path(ui_pending_path)) ||
            (kind == UI_FILE_KIND_MIDI && ui_midi_load_path(ui_pending_path))) {
        ui_dialog = UI_DIALOG_NONE;
    }
    ui_back_dirty = 1;
}
