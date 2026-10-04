#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "main.h"
#include "apis.h"

#define APP_INVALID_WINDOW ((CGWindow)0xFF)

#define TXTAPP_TITLE    "GUI Pico colour test"
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
static cg_menuitem_t menu_exit  = CG_MENUITEM_INVALID;

static volatile uint8_t app_running;

static CGWindowProcRes testapp_proc(CGWindow win, const CGMessage_t *m);

static void app_shutdown(void)
{
    if (!app_running) {
        return;
    }

    app_running = 0;

    if (testapp_win) {
        SBOS_CloseWindow(testapp_win);
        testapp_win = 0;
    }
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
            //repaint_bitmapview();
            //set_status();
            return CGPROC_HANDLED;

        default:
            break;
        }
    }

    return CGPROC_DEFAULT;
}
/*
// forground 
"\033[30m"  // black
"\033[31m"  // red
"\033[32m"  // green
"\033[33m"  // yellow
"\033[34m"  // blue
"\033[35m"  // magenta
"\033[36m"  // cyan
"\033[37m"  // white

// background
"\033[40m"  // black background
"\033[41m"  // red background
"\033[42m"  // green background
"\033[43m"  // yellow background
"\033[44m"  // blue background
"\033[45m"  // magenta background
"\033[46m"  // cyan background
"\033[47m"  // white background

// bright foreground
"\033[90m"  // bright black / gray
"\033[91m"  // bright red
"\033[92m"  // bright green
"\033[93m"  // bright yellow
"\033[94m"  // bright blue
"\033[95m"  // bright magenta
"\033[96m"  // bright cyan
"\033[97m"  // bright white

// bright background
"\033[100m" // bright black / gray background
"\033[101m" // bright red background
"\033[102m" // bright green background
"\033[103m" // bright yellow background
"\033[104m" // bright blue background
"\033[105m" // bright magenta background
"\033[106m" // bright cyan background
"\033[107m" // bright white background

// style codes
"\033[0m"   // reset all
"\033[1m"   // bold / bright
"\033[2m"   // dim
"\033[4m"   // underline
"\033[7m"   // reverse video

// examples
dbug("\033[44;33;1mBlue background, bold yellow text\033[0m\r\n");
dbug("\033[32mGreen text\033[0m\r\n");
dbug("\033[91;40mBright red on black\033[0m\r\n");
dbug("\033[4;96mUnderlined bright cyan\033[0m\r\n");
*/


static void build_testapp(void)
{
    SBOS_CreateWindow(&testapp_win, TESTAPP_WIN_X, TESTAPP_WIN_Y, TESTAPP_WIN_W, TESTAPP_WIN_H, TXTAPP_TITLE, WIN_DEFAULT);
    SBOS_SetWindowProc(testapp_win, testapp_proc);
    SetApplicationTitle(testapp_win, "PICOCOM Terminal Colour Tester!");
    

    SBOS_WindowToFront(testapp_win);
    SBOS_WindowSetFocus(testapp_win);
}

int main(int argc, char *argv[])
{
    (void)argc;
    (void)argv;

    app_running = 1;
    build_testapp();
    dbug("\033[44;93;1mGUI TEST APP : PicoCom Test colour!\033[0m\r\n\nHello world!");

    dbug("\n");
    SBOS_CloseWindow(testapp_win);

    return 0x00;
}
