#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <math.h>

#include "main.h"

static char pish[256];

void doPrintTest();
uint32_t applet_get_api_base(void);

int main(int argc, char *argv[]) {
    char buffer[256];
    char i = 0;

    printf("Applet Says hello printf()\n"); // 3)

    printf("CPU test 40 + (12 * 4) = %ld\n\n", 40 + (12 * 4));


    
    return 0x00;
}

