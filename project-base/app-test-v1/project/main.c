#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <math.h>

#include "main.h"
#include "apis.h"

static char pish[256];

void doPrintTest();
uint32_t applet_get_api_base(void);





static void testfunctionCallback(void *g, int32_t a, int32_t b, int32_t c, int32_t d){
    (void)g; (void)a; (void)b; (void)c; (void)d;
    printf("This got printer!\n");
}



int main(int argc, char *argv[]) {
    char buffer[256];
    char i = 0;

    printf("Applet says HELLO!!\n\n"); // 3)
    printf("CPU test 40 + (12 * 4) = %ld\n\n", 40 + (12 * 4));
    printf("\n");
    printf("**** C COMMAND TEST ***\nFrom sidbox/c/ folder!\n");
    printf("**** C COMMAND TEST ***\nwould be clamps!\n");
    printf("**** C COMMAND TEST ***\nloading workbench ;)!\nBut not Amiga remember hehe\nI LOVE YOU COMMODORE!!\nThis is for you guys!\n");
    printf("------ CAMEL POO -------\n");

    CGWindow test;
    SBOS_CreateWindow(&test, 10, 10, 256, 200, "App Opened this v2", SBX_WIN_DEFAULT);
    CGGadget button1;
    button1 = SBOS_CreateButton(test, 20,20, 64,22,"hello",GAD_TOOL_DEFAULT);

    SBOS_GadgetSetCallBack(button1, testfunctionCallback, NULL);

    for(int g=0; g < 2300; g++){
        // intentionally loop here to freeze the system. (tested and it does freeze the system)
        // now these loops should only be used in setting stuff up, or if it is a loopy program, use a timer!
        // this is a cooperative OS
    }
    
    return 0x00;
}
