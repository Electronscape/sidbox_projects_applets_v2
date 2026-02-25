#ifndef MUSIC_API_H
#define MUSIC_API_H

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif



typedef struct  {
    void (*play)            (char *file, uint8_t subsong);
    void (*CallMusicRoutine)(void);     // call this every frame (or every other frame, but often enough to keep music playing)
    // some other functions like set sub track, rewind, set position, channel masking, 

} API_MUSIC;








#ifdef __cplusplus
}
#endif
#endif