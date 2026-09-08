#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "main.h"
#include "apis.h"

#define APP_INVALID_WINDOW ((CGWindow)0xFF)

#define TXTAPP_TITLE    "Random Shapes"
#define EDITOR_WIN_X    24
#define EDITOR_WIN_Y    20
#define EDITOR_WIN_W    432
#define EDITOR_WIN_H    288

#define CANVAS_X        12
#define CANVAS_Y        44
#define CANVAS_W        408
#define CANVAS_H        192
#define PALETTE_STRIP_H 8

#define BTN_Y           10
#define BTN_PAUSE_X     12
#define BTN_BURST_X     94
#define BTN_CLEAR_X     176
#define BTN_CLOSE_X     344
#define BTN_W           72
#define BTN_H           22

#define STATUS_X        12
#define STATUS_Y        244
#define STATUS_W        408
#define STATUS_H        16

#define SHAPES_PER_TICK 6

#define WIN_DEFAULT     (SBX_WF_VISIBLE    |\
                         SBX_WF_CLOSE      |\
                         SBX_WF_TITLE_BAR  |\
                         SBX_WF_ZORDER     |\
                         SBX_WF_MINIMISE   |\
                         SBX_WF_MOVEABLE   |\
                         SBX_WF_SCREENBOUND)

typedef enum {
    SHAPE_RECT = 0,
    SHAPE_CIRCLE,
    SHAPE_LINE,
    SHAPE_TRIANGLE,
    SHAPE_COUNT
} ShapeKind;

static CGWindow editor_win;
static CGGadget bitmapview_gad;
static CGGadget status_label;
static CGGadget btn_pause;
static CGGadget btn_burst;
static CGGadget btn_clear;
static CGGadget btn_close;
static CGTimer draw_timer = CGTIMER_INVALID;

static volatile uint8_t app_running;
static uint8_t paused;
static uint8_t colour_cursor;
static uint32_t frame_counter;
static uint32_t rng_state = 0xC0DEC0DEu;

static uint8_t MEMALIGN32 canvas_pixels[CANVAS_W * CANVAS_H];
static char status_buffer[96];

static void draw_demo_frame(uint8_t shape_count);
static void repaint_bitmapview(void);
static void set_status(void);
static CGWindowProcRes editor_proc(CGWindow win, const CGMessage_t *m);

static uint32_t rng_u32(void)
{
    uint32_t x = rng_state;

    x ^= x << 13;
    x ^= x >> 17;
    x ^= x << 5;
    rng_state = x;

    return x;
}

static int16_t rng_range(int16_t lo, int16_t hi)
{
    uint32_t span;

    if (hi <= lo) {
        return lo;
    }

    span = (uint32_t)(hi - lo + 1);
    return (int16_t)(lo + (int16_t)(rng_u32() % span));
}

static uint8_t next_colour(void)
{
    uint8_t colour = colour_cursor;
    colour_cursor = (uint8_t)(colour_cursor + 1u);
    return colour;
}

static void put_pixel(int16_t x, int16_t y, uint8_t colour)
{
    if (x < 0 || y < 0 || x >= CANVAS_W || y >= CANVAS_H) {
        return;
    }

    canvas_pixels[((uint32_t)y * CANVAS_W) + (uint32_t)x] = colour;
}

static void fill_canvas(uint8_t colour)
{
    memset(canvas_pixels, colour, sizeof(canvas_pixels));
}

static void fill_rect(int16_t x, int16_t y, int16_t w, int16_t h, uint8_t colour)
{
    int16_t x0 = x;
    int16_t y0 = y;
    int16_t x1 = (int16_t)(x + w);
    int16_t y1 = (int16_t)(y + h);

    if (x1 <= 0 || y1 <= 0 || x0 >= CANVAS_W || y0 >= CANVAS_H) {
        return;
    }

    if (x0 < 0) {
        x0 = 0;
    }
    if (y0 < 0) {
        y0 = 0;
    }
    if (x1 > CANVAS_W) {
        x1 = CANVAS_W;
    }
    if (y1 > CANVAS_H) {
        y1 = CANVAS_H;
    }

    for (int16_t yy = y0; yy < y1; ++yy) {
        uint8_t *row = &canvas_pixels[((uint32_t)yy * CANVAS_W) + (uint32_t)x0];
        memset(row, colour, (uint32_t)(x1 - x0));
    }
}

static void draw_line(int16_t x0, int16_t y0, int16_t x1, int16_t y1,
                      uint8_t colour, uint8_t thickness)
{
    int16_t dx = (x1 > x0) ? (int16_t)(x1 - x0) : (int16_t)(x0 - x1);
    int16_t sx = (x0 < x1) ? 1 : -1;
    int16_t dy = (y1 > y0) ? (int16_t)(y0 - y1) : (int16_t)(y1 - y0);
    int16_t sy = (y0 < y1) ? 1 : -1;
    int16_t err = (int16_t)(dx + dy);
    int16_t radius = (int16_t)(thickness / 2u);

    for (;;) {
        fill_rect((int16_t)(x0 - radius), (int16_t)(y0 - radius),
                  thickness, thickness, colour);

        if (x0 == x1 && y0 == y1) {
            break;
        }

        int16_t e2 = (int16_t)(err << 1);
        if (e2 >= dy) {
            err = (int16_t)(err + dy);
            x0 = (int16_t)(x0 + sx);
        }
        if (e2 <= dx) {
            err = (int16_t)(err + dx);
            y0 = (int16_t)(y0 + sy);
        }
    }
}

static void fill_circle(int16_t cx, int16_t cy, int16_t radius, uint8_t colour)
{
    int16_t rr = (int16_t)(radius * radius);

    for (int16_t y = (int16_t)-radius; y <= radius; ++y) {
        for (int16_t x = (int16_t)-radius; x <= radius; ++x) {
            if ((int16_t)((x * x) + (y * y)) <= rr) {
                put_pixel((int16_t)(cx + x), (int16_t)(cy + y), colour);
            }
        }
    }
}

static void sort_points_by_y(int16_t *x0, int16_t *y0,
                             int16_t *x1, int16_t *y1,
                             int16_t *x2, int16_t *y2)
{
    int16_t tx;
    int16_t ty;

#define SWAP_POINT(ax, ay, bx, by) \
    do {                           \
        tx = *(ax);                \
        ty = *(ay);                \
        *(ax) = *(bx);             \
        *(ay) = *(by);             \
        *(bx) = tx;                \
        *(by) = ty;                \
    } while (0)

    if (*y1 < *y0) {
        SWAP_POINT(x0, y0, x1, y1);
    }
    if (*y2 < *y0) {
        SWAP_POINT(x0, y0, x2, y2);
    }
    if (*y2 < *y1) {
        SWAP_POINT(x1, y1, x2, y2);
    }

#undef SWAP_POINT
}

static void draw_span(int16_t y, int16_t x0, int16_t x1, uint8_t colour)
{
    if (y < 0 || y >= CANVAS_H) {
        return;
    }

    if (x0 > x1) {
        int16_t t = x0;
        x0 = x1;
        x1 = t;
    }

    fill_rect(x0, y, (int16_t)(x1 - x0 + 1), 1, colour);
}

static int16_t interp_x(int16_t ax, int16_t ay, int16_t bx, int16_t by, int16_t y)
{
    int32_t num;
    int16_t dy = (int16_t)(by - ay);

    if (dy == 0) {
        return ax;
    }

    num = (int32_t)(bx - ax) * (int32_t)(y - ay);
    return (int16_t)(ax + (int16_t)(num / dy));
}

static void fill_triangle(int16_t x0, int16_t y0, int16_t x1, int16_t y1,
                          int16_t x2, int16_t y2, uint8_t colour)
{
    sort_points_by_y(&x0, &y0, &x1, &y1, &x2, &y2);

    if (y0 == y2) {
        return;
    }

    for (int16_t y = y0; y <= y2; ++y) {
        int16_t xa = interp_x(x0, y0, x2, y2, y);
        int16_t xb;

        if (y < y1 || y1 == y2) {
            xb = interp_x(x0, y0, x1, y1, y);
        } else {
            xb = interp_x(x1, y1, x2, y2, y);
        }

        draw_span(y, xa, xb, colour);
    }
}

static void draw_palette_strip(void)
{
    int16_t strip_y = CANVAS_H - PALETTE_STRIP_H;

    for (int16_t x = 0; x < CANVAS_W; ++x) {
        uint8_t colour = (uint8_t)((x * 256L) / CANVAS_W);
        fill_rect(x, strip_y, 1, PALETTE_STRIP_H, colour);
    }
}

static void draw_random_shape(void)
{
    uint8_t colour = next_colour();
    ShapeKind kind = (ShapeKind)rng_range(0, SHAPE_COUNT - 1);

    switch (kind) {
    case SHAPE_RECT:
        fill_rect(rng_range(-24, CANVAS_W - 8),
                  rng_range(-24, CANVAS_H - PALETTE_STRIP_H - 8),
                  rng_range(8, 88),
                  rng_range(8, 64),
                  colour);
        break;

    case SHAPE_CIRCLE:
        fill_circle(rng_range(0, CANVAS_W - 1),
                    rng_range(0, CANVAS_H - PALETTE_STRIP_H - 1),
                    rng_range(4, 32),
                    colour);
        break;

    case SHAPE_LINE:
        draw_line(rng_range(0, CANVAS_W - 1),
                  rng_range(0, CANVAS_H - PALETTE_STRIP_H - 1),
                  rng_range(0, CANVAS_W - 1),
                  rng_range(0, CANVAS_H - PALETTE_STRIP_H - 1),
                  colour,
                  (uint8_t)rng_range(1, 5));
        break;

    case SHAPE_TRIANGLE:
        fill_triangle(rng_range(0, CANVAS_W - 1),
                      rng_range(0, CANVAS_H - PALETTE_STRIP_H - 1),
                      rng_range(0, CANVAS_W - 1),
                      rng_range(0, CANVAS_H - PALETTE_STRIP_H - 1),
                      rng_range(0, CANVAS_W - 1),
                      rng_range(0, CANVAS_H - PALETTE_STRIP_H - 1),
                      colour);
        break;

    default:
        break;
    }
}

static void repaint_bitmapview(void)
{
    if (bitmapview_gad) {
        SBOS_GadgetRepaint(bitmapview_gad);
    }
}

static void draw_demo_frame(uint8_t shape_count)
{
    for (uint8_t i = 0; i < shape_count; ++i) {
        draw_random_shape();
    }

    draw_palette_strip();
    ++frame_counter;
    repaint_bitmapview();
    set_status();
}

static void clear_demo(void)
{
    fill_canvas((uint8_t)(colour_cursor + 17u));
    draw_palette_strip();
    repaint_bitmapview();
    set_status();
}

static void set_status(void)
{
    snprintf(status_buffer, sizeof(status_buffer),
             "%s | frames %lu | colour index %u",
             paused ? "Paused" : "Running",
             (unsigned long)frame_counter,
             (unsigned)colour_cursor);

    if (status_label) {
        SBOS_DestroyGadget(status_label);
    }

    status_label = SBOS_CreateLabel(editor_win, STATUS_X, STATUS_Y, STATUS_W,
                                    STATUS_H, status_buffer,
                                    GAD_TOOL_DEFAULT | GAD_TOOL_NOBORDER);
    SBOS_GadgetRepaint(status_label);
}

static void app_shutdown(void)
{
    if (!app_running) {
        return;
    }

    app_running = 0;

    if (draw_timer != CGTIMER_INVALID) {
        SBOS_FreeTimer(draw_timer);
        draw_timer = CGTIMER_INVALID;
    }

    if (editor_win) {
        SBOS_CloseWindow(editor_win);
        editor_win = 0;
    }

    //printf(TXTAPP_TITLE ": closing\n");
}

static void on_timer_tick(void *user)
{
    (void)user;

    if (!app_running || paused) {
        return;
    }

    draw_demo_frame(SHAPES_PER_TICK);
}

static void on_pause_clicked(void *g, int32_t a, int32_t b, int32_t c, int32_t d)
{
    (void)g;
    (void)a;
    (void)b;
    (void)c;
    (void)d;

    paused = (uint8_t)!paused;
    set_status();
}

static void on_burst_clicked(void *g, int32_t a, int32_t b, int32_t c, int32_t d)
{
    (void)g;
    (void)a;
    (void)b;
    (void)c;
    (void)d;

    draw_demo_frame(24);
}

static void on_clear_clicked(void *g, int32_t a, int32_t b, int32_t c, int32_t d)
{
    (void)g;
    (void)a;
    (void)b;
    (void)c;
    (void)d;

    clear_demo();
}

static void on_close_clicked(void *g, int32_t a, int32_t b, int32_t c, int32_t d)
{
    (void)g;
    (void)a;
    (void)b;
    (void)c;
    (void)d;

    app_shutdown();
}

static CGWindowProcRes editor_proc(CGWindow win, const CGMessage_t *m)
{
    (void)win;

    if (!m) {
        return CGPROC_DEFAULT;
    }

    if (m->mtype == CGMSG_WINDOW) {
        switch (m->eventClass) {
        case CGEVT_WIN_CLOSE_REQUEST:
            app_shutdown();
            return CGPROC_HANDLED;

        case CGEVT_SYS_REPAINT:
            repaint_bitmapview();
            set_status();
            return CGPROC_HANDLED;

        default:
            break;
        }
    }

    return CGPROC_DEFAULT;
}

static void build_editor(void)
{
    SBOS_CreateWindow(&editor_win, EDITOR_WIN_X, EDITOR_WIN_Y, EDITOR_WIN_W,
                      EDITOR_WIN_H, TXTAPP_TITLE, WIN_DEFAULT);
    SBOS_SetWindowProc(editor_win, editor_proc);

    btn_pause = SBOS_CreateButton(editor_win, BTN_PAUSE_X, BTN_Y, BTN_W,
                                  BTN_H, "Pause", GAD_TOOL_DEFAULT);
    btn_burst = SBOS_CreateButton(editor_win, BTN_BURST_X, BTN_Y, BTN_W,
                                  BTN_H, "Burst", GAD_TOOL_DEFAULT);
    btn_clear = SBOS_CreateButton(editor_win, BTN_CLEAR_X, BTN_Y, BTN_W,
                                  BTN_H, "Clear", GAD_TOOL_DEFAULT);
    btn_close = SBOS_CreateButton(editor_win, BTN_CLOSE_X, BTN_Y, BTN_W,
                                  BTN_H, "Close", GAD_TOOL_DEFAULT);

    bitmapview_gad = SBOS_CreateBitmapView(editor_win, CANVAS_X, CANVAS_Y,
                                           CANVAS_W + 2, CANVAS_H + 2,
                                           CANVAS_W, CANVAS_H,
                                           BVF_SRC_ROWMAJOR,
                                           GAD_TOOL_INSET);
    SBOS_BitmapviewSetBitmap(bitmapview_gad, canvas_pixels);

    SBOS_GadgetSetCallBack(btn_pause, on_pause_clicked, NULL);
    SBOS_GadgetSetCallBack(btn_burst, on_burst_clicked, NULL);
    SBOS_GadgetSetCallBack(btn_clear, on_clear_clicked, NULL);
    SBOS_GadgetSetCallBack(btn_close, on_close_clicked, NULL);

    SBOS_GadgetRepaint(btn_pause);
    SBOS_GadgetRepaint(btn_burst);
    SBOS_GadgetRepaint(btn_clear);
    SBOS_GadgetRepaint(btn_close);
    SBOS_GadgetRepaint(bitmapview_gad);

    fill_canvas(0);
    rng_state ^= getTicks();
    clear_demo();

    draw_timer = SBOS_CreateTimer();
    if (draw_timer != CGTIMER_INVALID) {
        if (SBOS_TimerSet(draw_timer, 50, 50, on_timer_tick, NULL) != 0) {
            SBOS_FreeTimer(draw_timer);
            draw_timer = CGTIMER_INVALID;
            paused = 1;
            set_status();
        }
    } else {
        paused = 1;
        set_status();
    }

    SBOS_WindowToFront(editor_win);
    SBOS_WindowSetFocus(editor_win);
}

int main(int argc, char *argv[])
{
    (void)argc;
    (void)argv;

    app_running = 1;
    //printf(TXTAPP_TITLE ": starting\n");
    build_editor();

    return 0x00;
}
