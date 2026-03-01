#include <stdint.h>
#include "apis.h"



uint32_t LoadSFX(char *filename, uint8_t **snddata){
    FRESULT res;
    uint32_t uread;
    wav_t head;

    res = sfopen(0, filename, SD_READ);
    if (res != F_OK) {
        sfclose(0);
        return 0;
    }

    sfread(0, &head, sizeof(wav_t), &uread);

    if (memcmp(head.chunk_id, "RIFF", 4) != 0 ||
        memcmp(head.format, "WAVE", 4) != 0 ||
        head.audio_format != 1) {
        sfclose(0);
        return 0;
    }

    *snddata = malloc(head.subchunk2_size);
    if (!*snddata) {
        sfclose(0);
        return 0;
    }

    sfread(0, *snddata, head.subchunk2_size, &uread);

    sfclose(0);
    return head.subchunk2_size;
}
