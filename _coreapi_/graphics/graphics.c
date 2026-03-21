#include <stdint.h>
#include "graphics.h"
#include "apis.h"

// a custom Pixel-Pixel-Buffer image. 
// sidbox's graphics system uses some of the header parts, but if you just want the raw pixel colour index, skip the first header and palette data

void LoadPPB(char *filename, uint8_t *img){
    // [0] configbits
    // [1..2] width  (big-endian)
    // [3..4] height (big-endian)
    // [5..8] payload length (big-endian)
    // [9..15] reserved = 0
    // colour palette info
    // [16 + 1024]  // 1024 bytes of palette info
    // [1040 ... n] // the 8bit pixel data
    ppb_t head;
    uint8_t res;
    uint32_t readi;
    sfopen(0, filename, SD_READ);
    if(res == F_OK){
        sfread(0, &head, sizeof(head), &readi);
        sfread(0, img, head.length_be, &readi);
    }
    sfclose(0);
}
