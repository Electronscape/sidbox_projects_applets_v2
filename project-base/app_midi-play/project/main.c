#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "main.h"
#include "apis.h"

/*
    This is a shell starter for programs that dont use the GUI
*/

// Embedded MIDI fallback disabled while testing files from argv.
// extern const uint32_t midi_file_size;
// extern const uint8_t midi_file_buffer[];

static uint8_t *loaded_midi_buffer;
static uint32_t loaded_midi_size;

#define SCREEN_W 480
#define SCREEN_H 320

#define MIDI_DEFAULT_TEMPO_US 500000u
#define MIDI_FRAME_US         20000u
#define MIDI_MAX_EVENTS_TICK  4096u
#define MIDI_SYSEX_CHUNK      64u
#define MIDI_TX_QUEUE_SIZE    1024u
#define MIDI_TX_FRAME_BUDGET  60u
#define MIDI_PSR84_NOTE_LIMIT 24u
#define MIDI_TRACKED_NOTES    64u
#define MIDI_PSR84_NOTE_MIN   36u
#define MIDI_PSR84_NOTE_MAX   (96+7)




#define SONG_LABEL_MAX     56u

#define VIS_MAX_NOTES     192u
#define VIS_LEFT          8
#define VIS_TOP           24
#define VIS_W             464
#define VIS_H             256
#define VIS_KEY_Y         292
#define VIS_KEY_H         18
#define VIS_SPEED_PX      2u
#define VIS_GRID_STEP     16u
#define VIS_MAX_CATCHUP   8u
#define VIS_BACK_H        (SCREEN_H * 2)


#define VIS_GRID_FP_SHIFT 8u
#define VIS_GRID_FP_ONE   (1u << VIS_GRID_FP_SHIFT)

#define COL_BG            1u
#define COL_GRID          2u
#define COL_GRID_BEAT     3u
#define COL_TEXT          4u
#define COL_TEXT_DIM      5u
#define COL_WHITE_KEY     6u
#define COL_BLACK_KEY     7u
#define COL_NOW_LINE      8u
#define COL_CHANNEL_BASE  32u

typedef struct {
    uint32_t start_frame;
    uint32_t end_frame;
    uint8_t note;
    uint8_t channel;
    uint8_t velocity;
    bool active;
    bool used;
} VisualNote;

typedef struct {
    uint32_t started_at;
    uint8_t channel;
    uint8_t note;
    uint8_t velocity;
    bool active;
} MidiActiveNote;



static const uint8_t psr84_octive_remap[128] = {

};

static const uint8_t psr84_gm_program_map[128] = {
    // Piano
    0, 0, 0, 2, 3, 3, 6, 7,
    // Chromatic percussion
    9, 40, 41, 41, 40, 41, 42, 38,
    // Organ/accordion
    10, 10, 12, 12, 10, 15, 67, 17,
    // Guitar
    31, 29, 24, 24, 18, 18, 26, 23,
    // Bass
    82, 83, 82, 84, 85, 87, 90, 93,
    // Strings
    32, 33, 34, 93, 35, 36, 72, 38,
    // Ensemble
    35, 36, 75, 75, 72, 72, 69, 37,
    // Brass
    43, 47, 49, 44, 50, 51, 52, 74,
    // Reed
    60, 61, 62, 63, 57, 58, 59, 55,
    // Pipe
    53, 54, 66, 65, 64, 65, 68, 65,
    // Synth lead
    73, 73, 74, 73, 76, 74, 73, 76,
    // Synth pad
    81, 80, 75, 75, 72, 78, 79, 81,
    // Synth effects
    77, 78, 79, 77, 81, 77, 78, 79,
    // Ethnic
    39, 39, 31, 38, 41, 65, 32, 57,
    // Percussive
    9, 97, 42, 76, 96, 96, 76, 99,
    // Sound effects
    26, 65, 77, 68, 9, 76, 99, 95,
};

MEMALIGN32 static uint32_t app_palette[256];
MEMALIGN32 static volatile gfx_bitmap_t *front_a;
MEMALIGN32 static volatile gfx_bitmap_t *front_b;
MEMALIGN32 static volatile gfx_bitmap_t back_layer;

#define TXTAPP_TITLE    "Craptical Midi Play"

static VisualNote visual_notes[VIS_MAX_NOTES];
static uint32_t visual_frame;
static MidiActiveNote midi_active_notes[MIDI_TRACKED_NOTES];
static uint8_t midi_tx_queue[MIDI_TX_QUEUE_SIZE];
static uint16_t midi_tx_head;
static uint16_t midi_tx_tail;
static uint16_t midi_tx_count;
static uint32_t midi_note_stamp;
static char current_song_label[SONG_LABEL_MAX] = "(none)";
static uint32_t visual_scroll_px;
static uint16_t visual_scroll_y;
static uint32_t visual_grid_step_fp;
static volatile uint8_t visual_ticks_pending;

static bool create_app_bitmap(volatile gfx_bitmap_t *bitmap, int16_t w, int16_t h)
{
    if (!bitmap || w <= 0 || h <= 0) return false;

    uint32_t size = (uint32_t)w * (uint32_t)h;
    bitmap->bitmap = malloc(size);
    if (!bitmap->bitmap) return false;

    bitmap->width = (uint16_t)w;
    bitmap->height = (uint16_t)h;
    bitmap->stride = (uint16_t)h;
    bitmap->memspacelen = size;
    return true;
}

static const char *path_basename(const char *path)
{
    const char *base = path;

    if (!path) return "";

    for (const char *p = path; *p; p++) {
        if (*p == '/' || *p == '\\') {
            base = p + 1;
        }
    }

    return base;
}

static void set_song_label(const char *path)
{
    static const char prefix[] = "";
    const char *name = path_basename(path);
    uint32_t out = 0;

    while (prefix[out] && out < (SONG_LABEL_MAX - 1u)) {
        current_song_label[out] = prefix[out];
        out++;
    }

    while (*name && out < (SONG_LABEL_MAX - 1u)) {
        current_song_label[out++] = *name++;
    }

    current_song_label[out] = '\0';
}

static uint32_t argb(uint8_t r, uint8_t g, uint8_t b)
{
    return 0xFF000000u | ((uint32_t)r << 16) | ((uint32_t)g << 8) | b;
}

static void build_palette(void)
{
    memset(app_palette, 0, sizeof(app_palette));

    app_palette[0] = 0x00000000u;
    app_palette[COL_BG] = argb(3, 7, 12);
    app_palette[COL_GRID] = argb(15, 25, 34);
    app_palette[COL_GRID_BEAT] = argb(32, 46, 58);
    app_palette[COL_TEXT] = argb(226, 241, 236);
    app_palette[COL_TEXT_DIM] = argb(105, 127, 132);
    app_palette[COL_WHITE_KEY] = argb(218, 225, 214);
    app_palette[COL_BLACK_KEY] = argb(8, 12, 18);
    app_palette[COL_NOW_LINE] = argb(255, 232, 118);

    app_palette[COL_CHANNEL_BASE + 0]  = argb(255, 76, 92);
    app_palette[COL_CHANNEL_BASE + 1]  = argb(255, 154, 52);
    app_palette[COL_CHANNEL_BASE + 2]  = argb(255, 224, 73);
    app_palette[COL_CHANNEL_BASE + 3]  = argb(92, 228, 119);
    app_palette[COL_CHANNEL_BASE + 4]  = argb(52, 210, 204);
    app_palette[COL_CHANNEL_BASE + 5]  = argb(78, 159, 255);
    app_palette[COL_CHANNEL_BASE + 6]  = argb(169, 108, 255);
    app_palette[COL_CHANNEL_BASE + 7]  = argb(236, 94, 218);
    app_palette[COL_CHANNEL_BASE + 8]  = argb(255, 120, 170);
    app_palette[COL_CHANNEL_BASE + 9]  = argb(190, 190, 190);
    app_palette[COL_CHANNEL_BASE + 10] = argb(162, 215, 72);
    app_palette[COL_CHANNEL_BASE + 11] = argb(52, 135, 180);
    app_palette[COL_CHANNEL_BASE + 12] = argb(220, 116, 55);
    app_palette[COL_CHANNEL_BASE + 13] = argb(132, 94, 210);
    app_palette[COL_CHANNEL_BASE + 14] = argb(88, 205, 245);
    app_palette[COL_CHANNEL_BASE + 15] = argb(245, 245, 245);
}

static int16_t note_to_x(uint8_t note)
{
    return (int16_t)(VIS_LEFT + (((uint16_t)note * VIS_W) / 128u));
}

static bool note_is_black(uint8_t note)
{
    switch (note % 12u) {
        case 1:
        case 3:
        case 6:
        case 8:
        case 10:
            return true;
        default:
            return false;
    }
}

static uint32_t visualizer_grid_step_from_tempo(uint32_t tempo_us)
{
    if (tempo_us == 0) {
        tempo_us = MIDI_DEFAULT_TEMPO_US;
    }

    uint32_t step = (uint32_t)((((uint64_t)tempo_us * VIS_SPEED_PX * VIS_GRID_FP_ONE) + (MIDI_FRAME_US / 2u)) / MIDI_FRAME_US);
    if (step < (4u << VIS_GRID_FP_SHIFT)) step = (4u << VIS_GRID_FP_SHIFT);
    if (step > (SCREEN_H << VIS_GRID_FP_SHIFT)) step = (SCREEN_H << VIS_GRID_FP_SHIFT);
    return step;
}

static bool visualizer_grid_line_at_page_y(uint32_t page_y, uint32_t *beat_index)
{
    uint32_t step = visual_grid_step_fp ? visual_grid_step_fp : (VIS_GRID_STEP << VIS_GRID_FP_SHIFT);
    uint64_t row_start = (uint64_t)page_y << VIS_GRID_FP_SHIFT;
    uint64_t row_end = row_start + VIS_GRID_FP_ONE;
    uint64_t index = (row_start + step - 1u) / step;
    uint64_t line = index * step;

    if (line >= row_end) {
        return false;
    }

    *beat_index = (uint32_t)index;
    return true;
}

static void visualizer_reset(void)
{
    memset(visual_notes, 0, sizeof(visual_notes));
    visual_frame = 0;
    visual_scroll_px = 0;
    visual_scroll_y = 0;
    visual_grid_step_fp = visualizer_grid_step_from_tempo(MIDI_DEFAULT_TEMPO_US);
    visual_ticks_pending = 0;
    gfx_scrollb(0, 0);
}

static VisualNote *visualizer_find_oldest_free(void)
{
    VisualNote *oldest = &visual_notes[0];

    for (uint16_t i = 0; i < VIS_MAX_NOTES; i++) {
        if (!visual_notes[i].used) {
            return &visual_notes[i];
        }
        if (visual_notes[i].start_frame < oldest->start_frame) {
            oldest = &visual_notes[i];
        }
    }

    return oldest;
}

static void visualizer_note_on(uint8_t channel, uint8_t note, uint8_t velocity)
{
    VisualNote *slot = visualizer_find_oldest_free();

    slot->start_frame = visual_frame;
    slot->end_frame = visual_frame;
    slot->note = note;
    slot->channel = channel & 0x0F;
    slot->velocity = velocity;
    slot->active = true;
    slot->used = true;
}

static void visualizer_note_off(uint8_t channel, uint8_t note)
{
    for (uint16_t i = 0; i < VIS_MAX_NOTES; i++) {
        VisualNote *n = &visual_notes[i];
        if (n->used && n->active && n->note == note && n->channel == (channel & 0x0F)) {
            n->active = false;
            n->end_frame = visual_frame;
            return;
        }
    }
}

static uint8_t visualizer_consume_ticks(void)
{
    if (visual_ticks_pending == 0) {
        return 0;
    }

    visual_ticks_pending = 0;
    return 1;
}

static void visualizer_retire_old_notes(void)
{
    for (uint16_t i = 0; i < VIS_MAX_NOTES; i++) {
        VisualNote *n = &visual_notes[i];
        if (!n->used || n->active) continue;

        uint32_t end_age = visual_frame - n->end_frame;
        if ((end_age * VIS_SPEED_PX) > (VIS_H + 24u)) {
            n->used = false;
        }
    }
}

static void visualizer_clear_note_layer(void)
{
    if (!back_layer.bitmap) return;

    uint8_t *bm = back_layer.bitmap;
    uint16_t stride = back_layer.stride;

    for (int16_t x = 0; x < SCREEN_W; x++) {
        uint8_t *col = bm + ((uint32_t)x * stride);
        for (uint16_t y = 0; y < VIS_BACK_H; y++) {
            col[y] = COL_BG;
        }
    }
}

static void visualizer_back_rect_raw(int16_t x, uint16_t y, int16_t w, uint16_t h, uint8_t colour)
{
    if (!back_layer.bitmap || w <= 0 || h == 0) return;

    if (x < 0) {
        w = (int16_t)(w + x);
        x = 0;
    }
    if (x >= SCREEN_W || w <= 0 || y >= VIS_BACK_H) return;
    if ((x + w) > SCREEN_W) {
        w = (int16_t)(SCREEN_W - x);
    }
    if ((uint32_t)y + h > VIS_BACK_H) {
        h = (uint16_t)(VIS_BACK_H - y);
    }

    uint8_t *bm = back_layer.bitmap;
    uint16_t stride = back_layer.stride;

    for (int16_t ix = 0; ix < w; ix++) {
        uint8_t *col = bm + ((uint32_t)(x + ix) * stride) + y;
        for (uint16_t iy = 0; iy < h; iy++) {
            col[iy] = colour;
        }
    }
}

static void visualizer_back_rect_logical(int16_t x, uint16_t y, int16_t w, uint16_t h, uint8_t colour)
{
    while (h > 0) {
        uint16_t segment = (uint16_t)(SCREEN_H - y);
        if (segment > h) {
            segment = h;
        }

        visualizer_back_rect_raw(x, y, w, segment, colour);
        visualizer_back_rect_raw(x, (uint16_t)(y + SCREEN_H), w, segment, colour);

        h = (uint16_t)(h - segment);
        y = 0;
    }
}

static uint16_t visualizer_screen_to_logical_y_at(uint16_t scroll_y, int16_t screen_y)
{
    int32_t y = (int32_t)scroll_y + screen_y;
    while (y >= SCREEN_H) {
        y -= SCREEN_H;
    }
    while (y < 0) {
        y += SCREEN_H;
    }
    return (uint16_t)y;
}

static void visualizer_back_rect_screen_at(uint16_t scroll_y, int16_t x, int16_t y, int16_t w, uint16_t h, uint8_t colour)
{
    visualizer_back_rect_logical(x, visualizer_screen_to_logical_y_at(scroll_y, y), w, h, colour);
}

static void visualizer_draw_vertical_grid_strip(uint16_t scroll_y, int16_t screen_y, uint8_t pixels)
{
    for (uint8_t note = 0; note < 128; note += 12) {
        visualizer_back_rect_screen_at(scroll_y, note_to_x(note), screen_y, 1, pixels, COL_GRID_BEAT);
    }

    for (uint8_t note = 0; note < 128; note++) {
        if (!note_is_black(note)) continue;
        visualizer_back_rect_screen_at(scroll_y, note_to_x(note), screen_y, 1, pixels, COL_GRID);
    }
}


volatile static char barnum[8];
volatile static uint32_t tbg;

static void visualizer_draw_grid_strip(uint16_t scroll_y, uint8_t pixels, uint32_t page_y_base)
{
    if (pixels == 0) return;

    int16_t y0 = (int16_t)(VIS_KEY_Y - pixels);

    visualizer_draw_vertical_grid_strip(scroll_y, y0, pixels);

    for (uint8_t i = 0; i < pixels; i++) {
        uint32_t page_y = page_y_base + i;
        uint32_t beat_index = 0;
        if (!visualizer_grid_line_at_page_y(page_y, &beat_index)) continue;

        
        visualizer_back_rect_screen_at(
            scroll_y,
            VIS_LEFT,
            (int16_t)(y0 + i),
            VIS_W,
            1,
            (uint8_t)((beat_index & 1u) ? COL_GRID : COL_GRID_BEAT));
        
        if((beat_index % 4) == 0){
            sprintf(barnum, "%u", (beat_index / 4));
            
            visualizer_back_rect_screen_at(
                scroll_y,
                VIS_LEFT,
                (int16_t)(y0 + i),
                VIS_W,
                5,
                COL_GRID_BEAT);
            
            int16_t screen_y = (int16_t)(y0 + i);
            uint16_t target_y = visualizer_screen_to_logical_y_at(scroll_y, screen_y);
            uint32_t tbg = gfx_getdrawbuffer();
            gfx_usebuffer(&back_layer);
            
            // Draw text to active region
            gfx_setcolour(6);
            gfx_drawtextf(VIS_LEFT, target_y-14, barnum, 1, 2);
            gfx_drawtextf(VIS_LEFT, (int16_t)(target_y + (SCREEN_H-14)), barnum, 1, 2);

            gfx_usebuffer(tbg);
        }          

    }
}


static void visualizer_draw_active_note_strip(uint16_t scroll_y, uint8_t pixels)
{
    if (pixels == 0) return;

    int16_t y = (int16_t)(VIS_KEY_Y - pixels);

    for (uint16_t i = 0; i < VIS_MAX_NOTES; i++) {
        VisualNote *n = &visual_notes[i];
        if (!n->used || !n->active) continue;

        int16_t x = note_to_x(n->note);
        int16_t w = (VIS_W / 128) + 1;
        if (w < 3) w = 3;

        visualizer_back_rect_screen_at(scroll_y, x, y, w, pixels, (uint8_t)(COL_CHANNEL_BASE + n->channel));

        if (n->velocity > 100) {
            //visualizer_back_rect_screen_at(scroll_y, x, y, w, 1, COL_TEXT);
        }
    }
}

static void visualizer_draw_grid_full(void)
{
    for (uint8_t note = 0; note < 128; note += 12) {
        visualizer_back_rect_logical(note_to_x(note), 0, 1, SCREEN_H, COL_GRID_BEAT);
    }

    for (uint8_t note = 0; note < 128; note++) {
        if (!note_is_black(note)) continue;
        visualizer_back_rect_logical(note_to_x(note), 0, 1, SCREEN_H, COL_GRID);
    }

    for (int16_t y = 0; y < SCREEN_H; y++) {
        uint32_t page_y = (uint32_t)(SCREEN_H - 1 - y);
        uint32_t beat_index = 0;
        if (!visualizer_grid_line_at_page_y(page_y, &beat_index)) continue;

        visualizer_back_rect_logical(
            VIS_LEFT,
            (uint16_t)y,
            VIS_W,
            1,
            (uint8_t)((beat_index & 3u) ? COL_GRID : COL_GRID_BEAT));
    }
}

static void visualizer_render_steps(uint8_t steps)
{
    while (steps--) {
        uint8_t pixels = VIS_SPEED_PX;
        uint32_t page_y_base = visual_scroll_px;
        uint16_t next_scroll_y = (uint16_t)((visual_scroll_y + pixels) % SCREEN_H);

        visualizer_back_rect_screen_at(next_scroll_y, VIS_LEFT, (int16_t)(VIS_KEY_Y - pixels), VIS_W, pixels, COL_BG);
        visualizer_draw_grid_strip(next_scroll_y, pixels, page_y_base);
        visualizer_draw_active_note_strip(next_scroll_y, pixels);
        visual_scroll_y = next_scroll_y;
        gfx_scrollb(0, visual_scroll_y);

        visual_frame++;
        visual_scroll_px += pixels;
        visualizer_retire_old_notes();
    }
}

static void visualizer_draw_back_delta(uint16_t scroll_y)
{
    uint8_t pixels = VIS_SPEED_PX;
    uint32_t page_y_base = visual_scroll_px;

    visualizer_back_rect_screen_at(scroll_y, VIS_LEFT, (int16_t)(VIS_KEY_Y - pixels), VIS_W, pixels, COL_BG);
    visualizer_draw_grid_strip(scroll_y, pixels, page_y_base);
    visualizer_draw_active_note_strip(scroll_y, pixels);

    visual_scroll_y = scroll_y;
    visual_frame++;
    visual_scroll_px += pixels;
    visualizer_retire_old_notes();
}

static void draw_visualizer_grid(void)
{
    gfx_cls();

    gfx_setcolour(COL_BG);
    gfx_rectf(0, 0, SCREEN_W, VIS_TOP);
    gfx_rectf(0, VIS_KEY_Y, SCREEN_W, (int16_t)(SCREEN_H - VIS_KEY_Y));

    gfx_setcolour(COL_TEXT);
    gfx_drawtext(10, 7, "MidiBlaster V0.59");
    gfx_setcolour(COL_TEXT_DIM);
    gfx_drawtext(272, 7, "right click release exits");
    

    gfx_setcolour(COL_NOW_LINE);
    gfx_rectf(VIS_LEFT, VIS_KEY_Y - 2, VIS_W, 2);

    gfx_setcolour(1);
    gfx_drawtext(8, 34, current_song_label);
    gfx_drawtext(12, 34, current_song_label);
    gfx_drawtext(10, 32, current_song_label);
    gfx_drawtext(10, 36, current_song_label);

    gfx_setcolour(COL_NOW_LINE);
    gfx_drawtext(10, 34, current_song_label);
}

static void draw_visualizer_keyboard(void)
{
    gfx_setcolour(COL_WHITE_KEY);
    gfx_rectf(VIS_LEFT, VIS_KEY_Y, VIS_W, VIS_KEY_H);

    gfx_setcolour(COL_BLACK_KEY);
    for (uint8_t note = 0; note < 128; note++) {
        int16_t x = note_to_x(note);
        if (note_is_black(note)) {
            gfx_rectf(x, VIS_KEY_Y, 3, 11);
        } else if ((note % 12u) == 0) {
            gfx_rectf(x, VIS_KEY_Y, 1, VIS_KEY_H);
        }
    }

    for (uint8_t ch = 0; ch < 16; ch++) {
        gfx_setcolour((uint8_t)(COL_CHANNEL_BASE + ch));
        gfx_rectf((int16_t)(12 + (ch * 12)), 312, 8, 5);
    }
}

static void draw_visualizer_background(void)
{
    draw_visualizer_grid();
    draw_visualizer_keyboard();
}

static void draw_visualizer_status(const char *text)
{
    if (!text) return;

    gfx_setcolour(0);
    gfx_rectf(8, 52, 240, 16);
    gfx_setcolour(COL_TEXT);
    gfx_drawtext(10, 54, text);
}

static void draw_visualizer_front_base(gfx_bitmap_t *front)
{
    gfx_usebuffer(front);
    draw_visualizer_background();
}

static void draw_visualizer_prepare_front_buffers(void)
{
    draw_visualizer_front_base((gfx_bitmap_t *)front_a);
    draw_visualizer_front_base((gfx_bitmap_t *)front_b);
    gfx_showfbuffer((gfx_bitmap_t *)front_a);
}


static bool string_ends_with_mid(const char *text)
{
    if (!text) return false;

    uint32_t len = (uint32_t)strlen(text);
    if (len < 4) return false;

    const char *ext = text + len - 4;
    return (ext[0] == '.') &&
           (ext[1] == 'm' || ext[1] == 'M') &&
           (ext[2] == 'i' || ext[2] == 'I') &&
           (ext[3] == 'd' || ext[3] == 'D');
}

static const char *find_midi_arg(int argc, char *argv[])
{
    for (int i = 1; i < argc; i++) {
        if (string_ends_with_mid(argv[i])) {
            return argv[i];
        }
    }

    if (argc == 1 && string_ends_with_mid(argv[0])) {
        return argv[0];
    }

    return NULL;
}

static MidiTranslatorProfile find_translator_arg(int argc, char *argv[])
{
    for (int i = 1; i < argc; i++) {
        if (strcmp(argv[i], "--raw") == 0 ||
            strcmp(argv[i], "--gm") == 0 ||
            strcmp(argv[i], "--no-psr84") == 0) {
            return MIDI_TRANSLATOR_RAW;
        }
        if (strcmp(argv[i], "--psr84") == 0) {
            return MIDI_TRANSLATOR_PSR84;
        }
    }

    return MIDI_TRANSLATOR_PSR84;
}

static bool midi_header_looks_valid(const uint8_t *data, uint32_t size)
{
    return size >= 14 &&
           data[0] == 'M' &&
           data[1] == 'T' &&
           data[2] == 'h' &&
           data[3] == 'd';
}

static bool load_midi_from_file(const char *filename)
{
    uint32_t bytes_read = 0;

    if (!filename || sfopen(0, (char *)filename, SD_READ) != FR_OK) {
        return false;
    }

    uint32_t size = SYSFileSystem->sbfilelen(0);
    if (size < 14) {
        sfclose(0);
        return false;
    }

    uint8_t *buffer = malloc(size);
    if (!buffer) {
        sfclose(0);
        return false;
    }

    FRESULT res = sfread(0, buffer, size, &bytes_read);
    sfclose(0);

    if (res != FR_OK || bytes_read != size || !midi_header_looks_valid(buffer, size)) {
        free(buffer);
        return false;
    }

    if (loaded_midi_buffer) {
        free(loaded_midi_buffer);
    }

    loaded_midi_buffer = buffer;
    loaded_midi_size = size;
    return true;
}

static uint16_t read_be16(const uint8_t *p)
{
    return (uint16_t)(((uint16_t)p[0] << 8) | p[1]);
}

static uint32_t read_be32(const uint8_t *p)
{
    return ((uint32_t)p[0] << 24) |
           ((uint32_t)p[1] << 16) |
           ((uint32_t)p[2] << 8) |
           p[3];
}

static void midi_tx_reset(void)
{
    midi_tx_head = 0;
    midi_tx_tail = 0;
    midi_tx_count = 0;
}

static void midi_tx_flush_frame(void);

static uint16_t midi_tx_free(void)
{
    return (uint16_t)(MIDI_TX_QUEUE_SIZE - midi_tx_count);
}

static bool midi_tx_enqueue_bytes(const uint8_t *data, uint16_t len)
{
    if (!data || len == 0 || len > MIDI_TX_QUEUE_SIZE || midi_tx_free() < len) {
        return false;
    }

    for (uint16_t i = 0; i < len; i++) {
        midi_tx_queue[midi_tx_head] = data[i];
        midi_tx_head = (uint16_t)((midi_tx_head + 1u) % MIDI_TX_QUEUE_SIZE);
    }
    midi_tx_count = (uint16_t)(midi_tx_count + len);
    return true;
}

static bool midi_tx_enqueue_urgent_bytes(const uint8_t *data, uint16_t len)
{
    if (midi_tx_enqueue_bytes(data, len)) {
        return true;
    }

    midi_tx_flush_frame();
    if (midi_tx_enqueue_bytes(data, len)) {
        return true;
    }

    if (data && len > 0) {
        midi_out(data, len);
        return true;
    }

    return false;
}

static void midi_tx_flush_frame(void)
{
    uint16_t budget = MIDI_TX_FRAME_BUDGET;

    while (midi_tx_count > 0 && budget > 0) {
        uint16_t contiguous = (midi_tx_head > midi_tx_tail)
                            ? (uint16_t)(midi_tx_head - midi_tx_tail)
                            : (uint16_t)(MIDI_TX_QUEUE_SIZE - midi_tx_tail);
        uint16_t chunk = contiguous;
        if (chunk > midi_tx_count) chunk = midi_tx_count;
        if (chunk > budget) chunk = budget;

        midi_out(&midi_tx_queue[midi_tx_tail], chunk);
        midi_tx_tail = (uint16_t)((midi_tx_tail + chunk) % MIDI_TX_QUEUE_SIZE);
        midi_tx_count = (uint16_t)(midi_tx_count - chunk);
        budget = (uint16_t)(budget - chunk);
    }
}

static void midi_limiter_reset(void)
{
    memset(midi_active_notes, 0, sizeof(midi_active_notes));
    midi_note_stamp = 0;
}

static int16_t midi_limiter_find(uint8_t channel, uint8_t note)
{
    for (uint16_t i = 0; i < MIDI_TRACKED_NOTES; i++) {
        MidiActiveNote *active = &midi_active_notes[i];
        if (active->active && active->channel == channel && active->note == note) {
            return (int16_t)i;
        }
    }

    return -1;
}

static uint8_t midi_limiter_active_count(void)
{
    uint8_t count = 0;

    for (uint16_t i = 0; i < MIDI_TRACKED_NOTES; i++) {
        if (midi_active_notes[i].active) {
            count++;
        }
    }

    return count;
}

static int16_t midi_limiter_find_slot(void)
{
    for (uint16_t i = 0; i < MIDI_TRACKED_NOTES; i++) {
        if (!midi_active_notes[i].active) {
            return (int16_t)i;
        }
    }

    return -1;
}

static int16_t midi_limiter_find_steal_candidate(void)
{
    int16_t best = -1;

    for (uint16_t i = 0; i < MIDI_TRACKED_NOTES; i++) {
        MidiActiveNote *active = &midi_active_notes[i];
        if (!active->active) continue;

        if (best < 0) {
            best = (int16_t)i;
            continue;
        }

        MidiActiveNote *current_best = &midi_active_notes[best];
        bool active_is_drum = (active->channel == 9);
        bool best_is_drum = (current_best->channel == 9);

        if (best_is_drum && !active_is_drum) {
            best = (int16_t)i;
        } else if (best_is_drum == active_is_drum &&
                   active->started_at < current_best->started_at) {
            best = (int16_t)i;
        }
    }

    return best;
}

static bool midi_limiter_steal_note(void)
{
    int16_t victim_index = midi_limiter_find_steal_candidate();
    if (victim_index < 0) return false;

    MidiActiveNote *victim = &midi_active_notes[victim_index];
    uint8_t note_off[3] = {
        (uint8_t)(0x80 | (victim->channel & 0x0F)),
        victim->note,
        0x00
    };

    if (!midi_tx_enqueue_urgent_bytes(note_off, sizeof(note_off))) {
        return false;
    }

    victim->active = false;
    return true;
}

static void midi_limiter_note_off(uint8_t channel, uint8_t note)
{
    int16_t index = midi_limiter_find((uint8_t)(channel & 0x0F), (uint8_t)(note & 0x7F));
    if (index >= 0) {
        midi_active_notes[index].active = false;
    }
}

static bool midi_limiter_note_on(uint8_t channel, uint8_t note, uint8_t velocity)
{
    channel &= 0x0F;
    note &= 0x7F;

    int16_t existing = midi_limiter_find(channel, note);
    if (existing >= 0) {
        midi_active_notes[existing].started_at = ++midi_note_stamp;
        midi_active_notes[existing].velocity = velocity;
        return true;
    }

    while (midi_limiter_active_count() >= MIDI_PSR84_NOTE_LIMIT) {
        if (!midi_limiter_steal_note()) {
            return false;
        }
    }

    int16_t slot = midi_limiter_find_slot();
    if (slot < 0) {
        if (!midi_limiter_steal_note()) {
            return false;
        }
        slot = midi_limiter_find_slot();
        if (slot < 0) return false;
    }

    midi_active_notes[slot].active = true;
    midi_active_notes[slot].channel = channel;
    midi_active_notes[slot].note = note;
    midi_active_notes[slot].velocity = velocity;
    midi_active_notes[slot].started_at = ++midi_note_stamp;
    return true;
}

static void midi_limiter_all_notes_off(uint8_t channel)
{
    channel &= 0x0F;

    for (uint16_t i = 0; i < MIDI_TRACKED_NOTES; i++) {
        if (midi_active_notes[i].active && midi_active_notes[i].channel == channel) {
            midi_active_notes[i].active = false;
        }
    }
}

static bool midi_send_psr84_voice_packet(const uint8_t *packet, uint8_t packet_len)
{
    if (!packet || packet_len == 0) return false;

    uint8_t message = packet[0] & 0xF0;
    uint8_t channel = packet[0] & 0x0F;

    if (message == 0x90 && packet_len >= 3 && packet[2] != 0) {
        if (!midi_limiter_note_on(channel, packet[1], packet[2])) {
            return false;
        }
        if (!midi_tx_enqueue_bytes(packet, packet_len)) {
            midi_limiter_note_off(channel, packet[1]);
            return false;
        }
        return true;
    }

    if ((message == 0x80 && packet_len >= 3) ||
        (message == 0x90 && packet_len >= 3 && packet[2] == 0)) {
        if (!midi_tx_enqueue_urgent_bytes(packet, packet_len)) {
            return false;
        }
        midi_limiter_note_off(channel, packet[1]);
        return true;
    }

    if (message == 0xB0 && packet_len >= 3) {
        if (packet[1] == 0x78 || packet[1] == 0x7B) {
            if (!midi_tx_enqueue_urgent_bytes(packet, packet_len)) {
                return false;
            }
            midi_limiter_all_notes_off(channel);
            return true;
        } else if (packet[1] == 0x79) {
            if (!midi_tx_enqueue_urgent_bytes(packet, packet_len)) {
                return false;
            }
            midi_limiter_all_notes_off(channel);
            return true;
        }
    }

    return midi_tx_enqueue_bytes(packet, packet_len);
}

static void midi_send_voice_packet(const MidiPlayer *player, const uint8_t *packet, uint8_t packet_len)
{
    if (player->translator == MIDI_TRANSLATOR_PSR84) {
        (void)midi_send_psr84_voice_packet(packet, packet_len);
        return;
    }

    midi_out(packet, packet_len);
}

static void midi_send_channel_panic(void)
{
    midi_tx_reset();
    midi_limiter_reset();

    for (uint8_t ch = 0; ch < 16; ch++) {
        uint8_t all_sound_off[3] = { (uint8_t)(0xB0 | ch), 0x78, 0x00 };
        uint8_t reset_ctrls[3]   = { (uint8_t)(0xB0 | ch), 0x79, 0x00 };
        uint8_t all_notes_off[3] = { (uint8_t)(0xB0 | ch), 0x7B, 0x00 };
        midi_out(all_sound_off, 3);
        midi_out(reset_ctrls, 3);
        midi_out(all_notes_off, 3);
    }
}

static void midi_send_psr84_setup_burst(void)
{
    for (uint8_t ch = 0; ch < 16; ch++) {
        uint8_t reset_ctrls[3]   = { (uint8_t)(0xB0 | ch), 0x79, 0x00 };
        uint8_t vibrato_off[3]   = { (uint8_t)(0xB0 | ch), 0x01, 0x00 };
        uint8_t volume_default[3]= { (uint8_t)(0xB0 | ch), 0x07, 0x6F };
        uint8_t pan_center[3]    = { (uint8_t)(0xB0 | ch), 0x0A, 0x40 };
        uint8_t sustain_off[3]   = { (uint8_t)(0xB0 | ch), 0x40, 0x00 };
        uint8_t all_notes_off[3] = { (uint8_t)(0xB0 | ch), 0x7B, 0x00 };

        midi_tx_enqueue_bytes(reset_ctrls, 3);
        midi_tx_enqueue_bytes(vibrato_off, 3);
        midi_tx_enqueue_bytes(volume_default, 3);
        midi_tx_enqueue_bytes(pan_center, 3);
        midi_tx_enqueue_bytes(sustain_off, 3);
        midi_tx_enqueue_bytes(all_notes_off, 3);
    }

    {
        uint8_t drum_program[2] = { 0xC9, 99 };
        uint8_t drum_pan_center[3] = { 0xB9, 0x0A, 0x40 };
        midi_tx_enqueue_bytes(drum_program, 2);
        midi_tx_enqueue_bytes(drum_pan_center, 3);
    }
}

void midi_send_gm_reset(void)
{
    const uint8_t gm_on[] = { 0xF0, 0x7E, 0x7F, 0x09, 0x01, 0xF7 };
    midi_out(gm_on, sizeof(gm_on));
    midi_send_channel_panic();
}

static void midi_send_player_reset(const MidiPlayer *player)
{
    if (player->translator == MIDI_TRANSLATOR_RAW) {
        const uint8_t gm_on[] = { 0xF0, 0x7E, 0x7F, 0x09, 0x01, 0xF7 };
        midi_out(gm_on, sizeof(gm_on));
    }

    midi_send_channel_panic();

    if (player->translator == MIDI_TRANSLATOR_PSR84) {
        midi_send_psr84_setup_burst();
    }
}

static bool read_vlq_track(MidiTrack *track, uint32_t *out)
{
    uint32_t value = 0;
    for (uint8_t i = 0; i < 4; i++) {
        if (track->ptr >= track->end) return false;
        uint8_t byte = *track->ptr++;
        value = (value << 7) | (byte & 0x7F);
        if ((byte & 0x80) == 0) {
            *out = value;
            return true;
        }
    }
    return false;
}

static bool midi_track_schedule_next(MidiTrack *track)
{
    uint32_t delta_ticks = 0;
    if (track->ptr >= track->end || !read_vlq_track(track, &delta_ticks)) {
        track->is_active = false;
        return false;
    }

    track->next_tick += delta_ticks;
    return true;
}

static uint8_t midi_voice_data_len(uint8_t status)
{
    uint8_t msg_type = status & 0xF0;
    return (msg_type == 0xC0 || msg_type == 0xD0) ? 1 : 2;
}

static uint8_t midi_system_data_len(uint8_t status)
{
    switch (status) {
        case 0xF1:
        case 0xF3:
            return 1;
        case 0xF2:
            return 2;
        default:
            return 0;
    }
}

static uint8_t midi_translate_program_psr84(uint8_t channel, uint8_t program)
{
    if (channel == 9) {
        return 99;
    }

    return psr84_gm_program_map[program & 0x7F];
}

static uint8_t midi_translate_note_psr84(uint8_t channel, uint8_t note)
{
    note &= 0x7F;

    if (channel == 9) {
        return note;
    }

    note += (1 * 12);

    while (note < MIDI_PSR84_NOTE_MIN) {
        note = (uint8_t)(note + 12u);
    }

    while (note > MIDI_PSR84_NOTE_MAX) {
        note = (uint8_t)(note - 12u);
    }

    return note;
}

static bool midi_psr84_accepts_cc(uint8_t control)
{
    switch (control) {
        case 0x01: // Vibrato
        case 0x07: // Volume
        case 0x40: // Sustain
        case 0x5B: // Reverb depth, ignored on PSR-84 but valid on PSR-85
        case 0x78: // All Sound Off
        case 0x79: // Reset Controllers
        case 0x7B: // All Notes Off
            return true;
        default:
            return false;
    }
}

static bool midi_translate_voice_packet(MidiPlayer *player, uint8_t *packet, uint8_t *packet_len)
{
    if (player->translator == MIDI_TRANSLATOR_RAW) {
        return true;
    }

    if (player->translator != MIDI_TRANSLATOR_PSR84) {
        return true;
    }

    uint8_t message = packet[0] & 0xF0;
    uint8_t channel = packet[0] & 0x0F;

    if (message == 0xC0) {
        packet[1] = midi_translate_program_psr84(channel, packet[1]);
        return true;
    }

    if (message == 0xB0) {
        if (packet[1] == 0x0A) {
            return false;
        }
        return midi_psr84_accepts_cc(packet[1]);
    }

    if ((message == 0x80 || message == 0x90) && *packet_len >= 3) {
        packet[1] = midi_translate_note_psr84(channel, packet[1]);
        return true;
    }

    if (message == 0xA0 || message == 0xD0) {
        return false;
    }

    (void)packet_len;
    return true;
}

static void midi_visualize_voice_packet(const uint8_t *packet, uint8_t packet_len)
{
    if (packet_len < 3) return;

    uint8_t message = packet[0] & 0xF0;
    uint8_t channel = packet[0] & 0x0F;

    if (message == 0x90) {
        if (packet[2] != 0) {
            visualizer_note_on(channel, packet[1], packet[2]);
        } else {
            visualizer_note_off(channel, packet[1]);
        }
    } else if (message == 0x80) {
        visualizer_note_off(channel, packet[1]);
    }
}

static bool midi_translator_accepts_sysex(const MidiPlayer *player)
{
    return player->translator == MIDI_TRANSLATOR_RAW;
}

static bool midi_range_ok(const MidiTrack *track, uint32_t len)
{
    return (uint32_t)(track->end - track->ptr) >= len;
}

static void midi_send_sysex_event(uint8_t status, const uint8_t *data, uint32_t len)
{
    if (status == 0xF0) {
        midi_out(&status, 1);
    }

    while (len > 0) {
        uint16_t chunk = (len > MIDI_SYSEX_CHUNK) ? MIDI_SYSEX_CHUNK : (uint16_t)len;
        midi_out(data, chunk);
        data += chunk;
        len -= chunk;
    }
}

static bool midi_player_find_next_tick(MidiPlayer *player, uint32_t *next_tick)
{
    bool found = false;
    uint32_t best_tick = 0xFFFFFFFFu;

    for (uint8_t t = 0; t < player->track_count; t++) {
        MidiTrack *tr = &player->tracks[t];
        if (tr->is_active && (!found || tr->next_tick < best_tick)) {
            best_tick = tr->next_tick;
            found = true;
        }
    }

    *next_tick = best_tick;
    return found;
}

static uint32_t midi_ticks_to_us_preview(MidiPlayer *player, uint32_t ticks, uint32_t *next_remainder)
{
    uint64_t scaled = ((uint64_t)ticks * player->tempo_us) + player->tick_remainder;
    *next_remainder = (uint32_t)(scaled % player->division);
    return (uint32_t)(scaled / player->division);
}

static void midi_track_finish_event(MidiTrack *track)
{
    if (track->is_active) {
        midi_track_schedule_next(track);
    }
}

static void midi_process_track_event(MidiPlayer *player, MidiTrack *track)
{
    if (track->ptr >= track->end) {
        track->is_active = false;
        return;
    }

    uint8_t status = *track->ptr;
    if (status & 0x80) {
        track->ptr++;
        if (status < 0xF0) {
            track->running_status = status;
        }
    } else {
        status = track->running_status;
        if (status == 0) {
            track->is_active = false;
            return;
        }
    }

    if (status == 0xFF) {
        if (track->ptr >= track->end) {
            track->is_active = false;
            return;
        }

        uint8_t meta_type = *track->ptr++;
        uint32_t len = 0;
        if (!read_vlq_track(track, &len) || !midi_range_ok(track, len)) {
            track->is_active = false;
            return;
        }

        if (meta_type == 0x51 && len == 3) {
            player->tempo_us = ((uint32_t)track->ptr[0] << 16) |
                               ((uint32_t)track->ptr[1] << 8) |
                               track->ptr[2];
        } else if (meta_type == 0x2F) {
            track->is_active = false;
        }

        track->ptr += len;
        midi_track_finish_event(track);
        return;
    }

    if (status == 0xF0 || status == 0xF7) {
        uint32_t len = 0;
        if (!read_vlq_track(track, &len) || !midi_range_ok(track, len)) {
            track->is_active = false;
            return;
        }

        if (midi_translator_accepts_sysex(player)) {
            midi_send_sysex_event(status, track->ptr, len);
        }
        track->ptr += len;
        midi_track_finish_event(track);
        return;
    }

    if (status >= 0x80 && status < 0xF0) {
        uint8_t data_len = midi_voice_data_len(status);
        if (!midi_range_ok(track, data_len)) {
            track->is_active = false;
            return;
        }

        uint8_t packet[3];
        packet[0] = status;
        for (uint8_t i = 0; i < data_len; i++) {
            packet[i + 1] = *track->ptr++;
        }
        uint8_t packet_len = data_len + 1;
        midi_visualize_voice_packet(packet, packet_len);
        if (midi_translate_voice_packet(player, packet, &packet_len)) {
            midi_send_voice_packet(player, packet, packet_len);
        }
        midi_track_finish_event(track);
        return;
    }

    uint8_t data_len = midi_system_data_len(status);
    if (!midi_range_ok(track, data_len)) {
        track->is_active = false;
        return;
    }

    uint8_t packet[3];
    packet[0] = status;
    for (uint8_t i = 0; i < data_len; i++) {
        packet[i + 1] = *track->ptr++;
    }
    midi_out(packet, (uint16_t)(data_len + 1));
    midi_track_finish_event(track);
}

static bool read_vlq_buf(const uint8_t **buf, const uint8_t *end, uint32_t *out)
{
    uint32_t value = 0;
    for (uint8_t i = 0; i < 4; i++) {
        if (*buf >= end) return false;
        uint8_t byte = *(*buf)++;
        value = (value << 7) | (byte & 0x7F);
        if ((byte & 0x80) == 0) {
            *out = value;
            return true;
        }
    }
    return false;
}


uint32_t midi_player_get_duration_ms(const uint8_t *midi_data, uint32_t size)
{
    if (size < 14 || memcmp(midi_data, "MThd", 4) != 0) {
        return 0;
    }

    uint32_t header_len = read_be32(&midi_data[4]);
    if (header_len < 6 || size < 8 + header_len) {
        return 0;
    }

    uint16_t division = read_be16(&midi_data[12]);
    if ((division & 0x8000) != 0 || division == 0) {
        return 0;
    }

    uint32_t offset = 8 + header_len;
    uint16_t declared_tracks = read_be16(&midi_data[10]);
    uint32_t max_total_ticks = 0;
    
    while (offset + 8 <= size && declared_tracks > 0) {
        uint32_t chunk_len = read_be32(&midi_data[offset + 4]);
        uint32_t chunk_data = offset + 8;

        if (chunk_data > size || chunk_len > size - chunk_data) {
            break;
        }

        if (memcmp(&midi_data[offset], "MTrk", 4) == 0) {
            const uint8_t *ptr = &midi_data[chunk_data];
            const uint8_t *end = ptr + chunk_len;
            uint32_t track_ticks = 0;
            uint8_t running_status = 0;

            while (ptr < end) {
                uint32_t delta = 0;
                if (!read_vlq_buf(&ptr, end, &delta)) break;
                track_ticks += delta;
                if (ptr >= end) break;

                uint8_t status = *ptr;
                if (status & 0x80) {
                    running_status = status;
                    ptr++;
                } else {
                    status = running_status;
                }

                if (status == 0xFF) {
                    if (ptr >= end) break;
                    uint8_t meta_type = *ptr++;
                    uint32_t len = 0;
                    if (!read_vlq_buf(&ptr, end, &len)) break;
                    
                    if (meta_type == 0x2F) {
                        break;
                    }
                    ptr += len;
                } else if ((status & 0xF0) == 0xF0) {
                    uint32_t len = 0;
                    if (!read_vlq_buf(&ptr, end, &len)) break;
                    ptr += len;
                } else {
                    uint8_t type = status & 0xF0;
                    if (type == 0xC0 || type == 0xD0) {
                        ptr += 1;
                    } else {
                        ptr += 2;
                    }
                }
            }

            if (track_ticks > max_total_ticks) {
                max_total_ticks = track_ticks;
            }
            declared_tracks--;
        }

        offset = chunk_data + chunk_len;
    }

    // (ticks * 500ms) / division fits well inside uint32_t
    return (max_total_ticks * (MIDI_DEFAULT_TEMPO_US / 1000u)) / division;
}

uint64_t midi_player_get_duration_us(const uint8_t *midi_data, uint32_t size)
{
    if (size < 14 || memcmp(midi_data, "MThd", 4) != 0) {
        return 0;
    }

    uint32_t header_len = read_be32(&midi_data[4]);
    if (header_len < 6 || size < 8 + header_len) {
        return 0;
    }

    uint16_t division = read_be16(&midi_data[12]);
    if ((division & 0x8000) != 0 || division == 0) {
        return 0;
    }

    uint32_t offset = 8 + header_len;
    uint16_t declared_tracks = read_be16(&midi_data[10]);
    uint64_t max_total_ticks = 0;
    
    while (offset + 8 <= size && declared_tracks > 0) {
        uint32_t chunk_len = read_be32(&midi_data[offset + 4]);
        uint32_t chunk_data = offset + 8;

        if (chunk_data > size || chunk_len > size - chunk_data) {
            break;
        }

        if (memcmp(&midi_data[offset], "MTrk", 4) == 0) {
            const uint8_t *ptr = &midi_data[chunk_data];
            const uint8_t *end = ptr + chunk_len;
            uint64_t track_ticks = 0;
            uint8_t running_status = 0;

            while (ptr < end) {
                uint32_t delta = 0;
                if (!read_vlq_buf(&ptr, end, &delta)) break;
                track_ticks += delta;
                if (ptr >= end) break;

                uint8_t status = *ptr;
                if (status & 0x80) {
                    running_status = status;
                    ptr++;
                } else {
                    status = running_status;
                }

                if (status == 0xFF) {
                    if (ptr >= end) break;
                    uint8_t meta_type = *ptr++;
                    uint32_t len = 0;
                    if (!read_vlq_buf(&ptr, end, &len)) break;
                    
                    if (meta_type == 0x2F) {
                        break;
                    }
                    ptr += len;
                } else if ((status & 0xF0) == 0xF0) {
                    uint32_t len = 0;
                    if (!read_vlq_buf(&ptr, end, &len)) break;
                    ptr += len;
                } else {
                    uint8_t type = status & 0xF0;
                    if (type == 0xC0 || type == 0xD0) {
                        ptr += 1;
                    } else {
                        ptr += 2;
                    }
                }
            }

            if (track_ticks > max_total_ticks) {
                max_total_ticks = track_ticks;
            }
            declared_tracks--;
        }

        offset = chunk_data + chunk_len;
    }

    return (max_total_ticks * MIDI_DEFAULT_TEMPO_US) / division;
}


void midi_player_init(MidiPlayer *player, const uint8_t *midi_data, uint32_t size)
{
    memset(player, 0, sizeof(MidiPlayer));
    player->translator = MIDI_TRANSLATOR_PSR84;
    player->tempo_us = MIDI_DEFAULT_TEMPO_US;

    if (size < 14 || memcmp(midi_data, "MThd", 4) != 0) {
        return;
    }

    uint32_t header_len = read_be32(&midi_data[4]);
    if (header_len < 6 || size < 8 + header_len) {
        return;
    }

    player->format = read_be16(&midi_data[8]);
    uint16_t declared_tracks = read_be16(&midi_data[10]);
    player->division = read_be16(&midi_data[12]);

    if ((player->division & 0x8000) != 0 || player->division == 0) {
        return;
    }

    uint32_t offset = 8 + header_len;
    while (offset + 8 <= size &&
           player->track_count < MAX_MIDI_TRACKS &&
           player->track_count < declared_tracks) {
        uint32_t chunk_len = read_be32(&midi_data[offset + 4]);
        uint32_t chunk_data = offset + 8;

        if (chunk_data > size || chunk_len > size - chunk_data) {
            break;
        }

        if (memcmp(&midi_data[offset], "MTrk", 4) == 0) {
            MidiTrack *tr = &player->tracks[player->track_count];
            tr->ptr = &midi_data[chunk_data];
            tr->end = tr->ptr + chunk_len;
            tr->next_tick = 0;
            tr->running_status = 0;
            tr->is_active = true;

            if (midi_track_schedule_next(tr)) {
                player->track_count++;
            }
        }

        offset = chunk_data + chunk_len;
    }

    player->is_playing = (player->track_count > 0);
}

void midi_player_set_translator(MidiPlayer *player, MidiTranslatorProfile translator)
{
    player->translator = translator;
}

void midi_player_update_us(MidiPlayer *player, uint32_t elapsed_us)
{
    if (!player->is_playing) return;

    player->elapsed_us += elapsed_us; // <--- added to accumulate playback time
    player->pending_us += elapsed_us;

    uint32_t events_this_update = 0;
    while (events_this_update < MIDI_MAX_EVENTS_TICK) {
        uint32_t next_tick = 0;
        if (!midi_player_find_next_tick(player, &next_tick)) {
            player->is_playing = false;
            midi_send_channel_panic();
            return;
        }

        uint32_t delta_ticks = next_tick - player->current_tick;
        uint32_t next_remainder = 0;
        uint32_t delta_us = midi_ticks_to_us_preview(player, delta_ticks, &next_remainder);
        if (delta_us > player->pending_us) {
            break;
        }

        player->pending_us -= delta_us;
        player->current_tick = next_tick;
        player->tick_remainder = next_remainder;

        bool processed_at_tick = false;
        do {
            processed_at_tick = false;
            for (uint8_t t = 0; t < player->track_count; t++) {
                MidiTrack *tr = &player->tracks[t];
                if (tr->is_active && tr->next_tick == player->current_tick) {
                    midi_process_track_event(player, tr);
                    processed_at_tick = true;
                    events_this_update++;
                    if (events_this_update >= MIDI_MAX_EVENTS_TICK) {
                        break;
                    }
                }
            }
        } while (processed_at_tick && events_this_update < MIDI_MAX_EVENTS_TICK);
    }
}

void midi_player_update_50hz(MidiPlayer *player)
{
    midi_player_update_us(player, MIDI_FRAME_US);
}


MidiPlayer player;


static void app_shutdown(void)
{
    midi_send_channel_panic();
    // reset background and size for desktop
    gfx_mode(SCREEN_W, SCREEN_H, SCREEN_W, SCREEN_H, DISPFLAG_DUALLAYER | DISPFLAG_NOSCROLLABLE);
    gfx_scrollb(0,0);
    restore_desktop();
    HWKERNAL->exitgamemode();
}

void setup(const uint8_t *midi_data, uint32_t midi_size, MidiTranslatorProfile translator) {
    visualizer_reset();
    midi_player_init(&player, midi_data, midi_size);
    midi_player_set_translator(&player, translator);
    midi_send_player_reset(&player);
    midi_player_update_us(&player, 0);
}
// Called every 50Hz VBL interrupt / frame tick
void vbl_interrupt_handler(void) {
    midi_player_update_50hz(&player);
}


uint32_t elapsed_ms = 0;
uint32_t progress_pct = 0;
uint32_t cur_sec = 0;
uint32_t lst_sec = 0;
uint32_t dur_sec = 0;

uint32_t cur_m = 0;
uint32_t cur_s = 0;
uint32_t dur_m = 0;
uint32_t dur_s = 0;


void vbl_counter(){
    vbl_interrupt_handler();
    midi_tx_flush_frame();
    if (visual_ticks_pending < VIS_MAX_CATCHUP) {
        visual_ticks_pending++;
    }
}


static volatile uint16_t clocksecond = 0;
void tmr1test(){
    clocksecond ++;
    if(clocksecond>10){
        clocksecond = 0;
    }
    //vbl_counter();
}



static uint8_t db;
static void flip_front_buffer(void)
{
    db = (uint8_t)(1u - db);

    if (db) {
        gfx_dispfbuffer((gfx_bitmap_t *)front_a, (gfx_bitmap_t *)front_b);
    } else {
        gfx_dispfbuffer((gfx_bitmap_t *)front_b, (gfx_bitmap_t *)front_a);
    }
}


int main(int argc, char *argv[])
{
    configure_runmode(GAMEMODE_PROFILE_0);
    suspend_desktop();
    initMalloc();

    // sound options// no sound needed turn off the dma
    //set_audio_dma(512);
    //set_music_dma = 0;

    

    // display set up
    gfx_setlcd(DEFAULT_RENDER_ORDER, FPS_50);
    gfx_mode(SCREEN_W, SCREEN_H, SCREEN_W, VIS_BACK_H, DISPFLAG_DUALLAYER | DISPFLAG_SCROLLABLE);

    front_a = gfx_getfbuffer1();
    front_b = gfx_getfbuffer2();
    if (!create_app_bitmap(&back_layer, SCREEN_W, VIS_BACK_H)) {
        printf("Could not allocate visualizer background\n");
        app_shutdown();
        return 1;
    }

    build_palette();
    gfx_usefpalette(app_palette);
    gfx_usebpalette(app_palette);

    draw_visualizer_prepare_front_buffers();
    gfx_showbbuffer((gfx_bitmap_t *)&back_layer);
    visualizer_clear_note_layer();
    visualizer_draw_grid_full();

    visualizer_reset();
    visualizer_clear_note_layer();
    visualizer_draw_grid_full();

    const char *midi_arg = find_midi_arg(argc, argv);
    MidiTranslatorProfile translator = find_translator_arg(argc, argv);

    if (!midi_arg) {
        printf("midiblaster.app <file.mid> [--psr84|--raw]\n");
        app_shutdown();
        return 1;
    }

    set_song_label(midi_arg);
    draw_visualizer_prepare_front_buffers();

    if (!load_midi_from_file(midi_arg)) {
        printf("Could not load MIDI: %s\n", midi_arg);
        app_shutdown();
        return 1;
    }

    setup(loaded_midi_buffer, loaded_midi_size, translator);
    visual_grid_step_fp = visualizer_grid_step_from_tempo(player.tempo_us);
    visualizer_clear_note_layer();
    visualizer_draw_grid_full();
    if (!player.is_playing) {
        printf("Unsupported MIDI: %s\n", midi_arg);
        app_shutdown();
        return 1;
    }

    uint32_t duration_ms = midi_player_get_duration_ms(loaded_midi_buffer, loaded_midi_size);
    //float duration_seconds = (float)duration_us / 1000000.0f;

    uint8_t right_button_was_down = 0;
    dbug("Midi blaster started\n");


    //irq_lcd_vbl(vbl_counter);  // attach the isr

    timer1isr(tmr1test);
    //timer1duty(0xffff, 239);
    timer1duty(19999, 239);
    timer1ctrl(API_TIMER_CTRL_RESET | API_TIMER_CTRL_ENABLE | API_TIMER_CTRL_IRQ_ENABLE);

    gfx_showbbuffer(&back_layer);
    gfx_showfbuffer(front_a);
    gfx_usebuffer(front_b);

    uint16_t scrolly_roller = 0;
    
    
    while (1) {
        
        //visualizer_render_steps(visualizer_consume_ticks());

        if (!player.is_playing) {
            setup(loaded_midi_buffer, loaded_midi_size, translator);
            visual_grid_step_fp = visualizer_grid_step_from_tempo(player.tempo_us);
            visualizer_clear_note_layer();
            visualizer_draw_grid_full();
            scrolly_roller = 0;
        }

        uint8_t joy = getjoyport();
        uint8_t right_button_down = (uint8_t)(joy & BTN_FIRE2);
        if (right_button_was_down && !right_button_down) {
            break;
        }
        right_button_was_down = right_button_down;


        elapsed_ms = player.elapsed_us / 1000u;

        progress_pct = 0;
        if (duration_ms > 0) {
            progress_pct = (elapsed_ms * 100u) / duration_ms;
            if (progress_pct > 100) progress_pct = 100;
        }

        cur_sec = elapsed_ms / 1000u;
        if(lst_sec != cur_sec){
            lst_sec = cur_sec;
            dur_sec = duration_ms / 1000u;

            cur_m = cur_sec / 60u;
            cur_s = cur_sec % 60u;
            dur_m = dur_sec / 60u;
            dur_s = dur_sec % 60u;
        }

        char txtbuff[64];
        sprintf(txtbuff, "%02u:%02u/%02u:%02u", cur_m, cur_s, dur_m, dur_s);


        // graphics update parts
        vbl_counter();
        visual_grid_step_fp = visualizer_grid_step_from_tempo(player.tempo_us);
        uint8_t visual_steps = visualizer_consume_ticks();
        gfx_lcdwait();  // here if the lcd hasnt finished rendering to the screen    




        // clear front field
        db = 1 - db;
        if(db) gfx_dispfbuffer(front_a, front_b);
        else    gfx_dispfbuffer(front_b, front_a);
        //gfx_cls(); <-- this would normally be used 
        
        // draw your shit here
        gfx_setcolour(0);
        gfx_rectf(378, 34, (8 * 12), 16);
        gfx_setcolour(COL_TEXT);
        gfx_drawtextf(386, 34, txtbuff, 1,2);

        
        // do the drawing of the grid/bars here
        while (visual_steps--) {
            visualizer_draw_back_delta(scrolly_roller);
        }

        gfx_scrollb(0, scrolly_roller);

        // this part will be delta'd and drawn
        scrolly_roller += VIS_SPEED_PX;
        if(scrolly_roller>319)scrolly_roller=0;

        gfx_displaynow();
    }

    app_shutdown();

    timer1ctrl(0);  // turn this off to prevent OS crash!!
    timer1isr(NULL);
    irq_lcd_vbl(NULL);  // attach the isr
    if (loaded_midi_buffer) {
        free(loaded_midi_buffer);
        loaded_midi_buffer = NULL;
    }

    return 0x00;
}
