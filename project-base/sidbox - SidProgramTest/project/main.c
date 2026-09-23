#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "main.h"
#include "apis.h"



#define TXTAPP_TITLE    "BLANK PROGRAM - GUI"

static CGTimer my_loop_tmr = CGTIMER_INVALID;
#define WIN_DEFAULT     (SBX_WF_VISIBLE    |\
                         SBX_WF_CLOSE      |\
                         SBX_WF_TITLE_BAR  |\
                         SBX_WF_ZORDER     |\
                         SBX_WF_MINIMISE   |\
                         SBX_WF_MOVEABLE   |\
                         SBX_WF_SCREENBOUND)

static CGWindow editor_win;

// timer for your APP loop
static void app_loop_os(void *user)
{
    (void)user;

    //printf("This did something in a timer!!\n");
    //dbug("hello world\n");

    //SBOS_FreeTimer(my_loop_tmr);    // must be done when you're finished with your program!
}




int main(int argc, char *argv[])
{
    (void)argc;
    (void)argv;
    configure_runmode(GAMEMODE_PROFILE_0);
    initMalloc();

    // display set up

    SBOS_CreateWindow(&editor_win, 10, 10, 300, 100, TXTAPP_TITLE, WIN_DEFAULT);
    //SBOS_SetWindowProc(editor_win, editor_proc);
    SetApplicationTitle(editor_win, "SID Midi program tester");

    
    my_loop_tmr = SBOS_CreateTimer();   // don't forget to free the time when your app ends, otherwise your program will keep running
    SBOS_TimerSet(my_loop_tmr, 0, 1000, app_loop_os, NULL); // creating a timer starts it immediately!
    /*
    if (my_loop_tmr != CGTIMER_INVALID) {
        if (SBOS_TimerSet(my_loop_tmr, 0, 50, app_loop_os, NULL) != 0) {
            SBOS_FreeTimer(my_loop_tmr);
            my_loop_tmr = CGTIMER_INVALID;
            dbug("Failed to create timer!\n");
            printf("Failed to create timer\n");
        }
    }
    */
    
    
    //while (1) 
    {

        {
            // your graphics and content on screen
        }

        
        //music_update(); // dma watch dog not switched on so will need this
        //sysevents();    // this will only do the basics, to really have multi-tasking you need to run in a timer for your loops

    }

    // this example this will compile but wont do anything
    //SBOS_FreeTimer(my_loop_tmr);    // must be done when you're finished with your program!


    return 0x00;    
}
