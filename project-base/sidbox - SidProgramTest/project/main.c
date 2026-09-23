#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "main.h"
#include "apis.h"

#include "audio/audio.h"

#include "sid_midi_soundfont.h"

#define APP_INVALID_WINDOW ((CGWindow)0xFF)

#define TXTAPP_TITLE    "SID Midi Program Test"
#define TESTAPP_WIN_X    24
#define TESTAPP_WIN_Y    20
#define TESTAPP_WIN_W    300
#define TESTAPP_WIN_H    200

#define SHAPES_PER_TICK 6

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

    if (testapp_win) {
        SBOS_CloseWindow(testapp_win);
        testapp_win = 0;
    }

    if (demo_menu != CG_MENU_INVALID) {
        SBOS_DestroyMenu(&demo_menu);
        menu_exit  = CG_MENUITEM_INVALID;
    }

    music_stop();

    //printf(TXTAPP_TITLE ": closing\n");
}


static uint8_t freq = 0;

static void on_timer_tick(void *user)
{
    (void)user;

    if (!app_running) {
        return;
    }


    audio_sidpoke(0, 0x01, freq);
    freq++;
    if(freq>245) freq = 0;

    // our fake vbl

}

static CGWindowProcRes testapp_proc(CGWindow win, const CGMessage_t *m)
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
            return CGPROC_HANDLED;

        default:
            break;
        }
    }

    return CGPROC_DEFAULT;
}


static void build_testapp(void)
{
    SBOS_CreateWindow(&testapp_win, TESTAPP_WIN_X, TESTAPP_WIN_Y, TESTAPP_WIN_W, TESTAPP_WIN_H, TXTAPP_TITLE, WIN_DEFAULT);
    SBOS_SetWindowProc(testapp_win, testapp_proc);
    SetApplicationTitle(testapp_win, TXTAPP_TITLE);

    draw_timer = SBOS_CreateTimer();
    if (draw_timer != CGTIMER_INVALID) {
        if (SBOS_TimerSet(draw_timer, 20, 20, on_timer_tick, NULL) != 0) {
            SBOS_FreeTimer(draw_timer);
            draw_timer = CGTIMER_INVALID;
        }
    }

    SBOS_WindowToFront(testapp_win);
    SBOS_WindowSetFocus(testapp_win);
}

int main(int argc, char *argv[])
{
    (void)argc;
    (void)argv;

    app_running = 1;
    build_testapp();
    audio_livesid();


    //SetSidChipVoices(0, 0x07u);
    //SetSidChipVoices(1, 0x07u);
    //sidPoke(0x18, 0x0Fu);
    //if (chips > 1u)
        //sidPoke(32 + 0x18, 0x0Fu);
    audio_sidpoke(0, 0x18, 0x0fu);   // full volume on chip
    audio_sidpoke(1, 0x18, 0x0fu);   // full volume on chip

    audio_sidpoke(0, 0x00, 0x2f); audio_sidpoke(0, 0x01, 0x2f);
    audio_sidpoke(0, 0x05, 0x22);
    audio_sidpoke(0, 0x06, 0x22);

    audio_sidpoke(0,  4, 0x11);     // voice 1, tri + gate on
    audio_sidpoke(0, 11, 0x10);
    audio_sidpoke(0, 18, 0x10);

    audio_sidpoke(1,  4, 0x10);
    audio_sidpoke(1, 11, 0x10);
    audio_sidpoke(1, 18, 0x10);


    return 0x00;
}
