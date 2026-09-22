#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "main.h"
#include "apis.h"
/*

    This is a shell starter for programs that dont use the GUI
    Change the name of the app in the Makefile

*/

#define TXTAPP_TITLE    "BLANK PROGRAM - GUI"

static CGTimer my_loop_tmr = 0;

// timer for your APP loop
void app_loop_os(void *user){

    printf("This did something in a timer!!\n");

    SBOS_FreeTimer(my_loop_tmr);    // must be done when you're finished with your program!
}

int main(int argc, char *argv[])
{
    (void)argc;
    (void)argv;
    configure_runmode(GAMEMODE_PROFILE_0);
    initMalloc();
    // sound options if we're using sound
    //set_audio_dma(512); // shouldn't need to alter these
    //set_music_dma = 1;
    //enable_audio_dma(); // use this if you want music to be playing without having to watch dog the music routing
    //////////////////////////////////////

    // display set up

    
    my_loop_tmr = SBOS_CreateTimer();   // don't forget to free the time when your app ends, otherwise your program will keep running
    SBOS_TimerSet(my_loop_tmr, 0, 1000, app_loop_os, NULL); // creating a timer starts it immediately!
    
    
    //while (1) 
    {

        {
            // your graphics and content on screen
        }

        
        music_update(); // dma watch dog not switched on so will need this
        sysevents();    // this will only do the basics, to really have multi-tasking you need to run in a timer for your loops

    }

    // this example this will compile but wont do anything
    //SBOS_FreeTimer(my_loop_tmr);    // must be done when you're finished with your program!


    return 0x00;    
}
