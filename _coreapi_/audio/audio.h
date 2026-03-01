#ifndef MUSIC_API_H
#define MUSIC_API_H

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif


#pragma pack(push, 1)

typedef struct {
    char     chunk_id[4];     // "RIFF"
    uint32_t chunk_size;      // 36 + data_size (for PCM)
    char     format[4];       // "WAVE"

    // fmt chunk
    char     subchunk1_id[4]; // "fmt "
    uint32_t subchunk1_size;  // 16 for PCM
    uint16_t audio_format;    // 1 = PCM
    uint16_t num_channels;    // 1=mono, 2=stereo
    uint32_t sample_rate;     // e.g. 11025, 22050, 44100
    uint32_t byte_rate;       // sample_rate * num_channels * bits_per_sample/8
    uint16_t block_align;     // num_channels * bits_per_sample/8
    uint16_t bits_per_sample; // 8 or 16 typically

    // data chunk header (note: some WAVs have extra chunks before "data")
    char     subchunk2_id[4]; // "data"
    uint32_t subchunk2_size;  // PCM bytes count
} wav_t;

#pragma pack(pop)



typedef struct {
    void (*setbuffsize) (uint32_t size);
    uint8_t *musicdmaenable;
} API_AUDIO_HARDWARE;


typedef struct  {
    void (*play)            (char *file, uint8_t subsong);
    void (*CallMusicRoutine)(void);     // call this every frame (or every other frame, but often enough to keep music playing)
    // some other functions like set sub track, rewind, set position, channel masking, 

} API_MUSIC;


typedef uint8_t SampleFmt;
#define SAMP_S8  0
#define SAMP_S16 1

typedef struct {
    void (*loadsfx)       (void);
    void (*playsample)    (uint8_t channel);
    void (*stopsample)    (uint8_t channel);
    void (*assignsample)  (uint8_t channel, void *sample, uint32_t samples, uint8_t bitsize);   // 0 = 8bits, 1 = 16bits
    void (*setsamplefreq) (uint8_t channel, uint16_t hz);
    void (*setsamplevol)  (uint8_t channel, uint8_t vol);
    void (*setsamplepan)  (uint8_t channel, int8_t pan); // -127 to 127
    void (*setsampleloop) (uint8_t channel, uint32_t from, uint32_t length);
    void (*setloopenable) (uint8_t channel, uint8_t enable);
} API_SOUND;


uint32_t LoadSFX(char *filename, uint8_t **snddata);



///////////-------------- HELPERS -----------------//////
/////////////////// hardware level stuff ################
#define AUDIOBase       (API->audio)
#define AUDIOMUSIC      (AUDIOBase->music)
#define AUDIOSound      (AUDIOBase->sound)
/////////////////////////////////////////////////////////

// AUDIO HARDWARE SETUP //
#define set_audio_dma(size)  (AUDIOBase->audhl->setbuffsize(size))
#define set_music_dma (*(AUDIOBase->audhl->musicdmaenable))

// opens a music file and begins playing
#define music_play(filename, subsong) (AUDIOMUSIC->play(filename, subsong))

// update music routine and timers, recommend using this on each frame, or every other frame
#define music_update() (AUDIOMUSIC->CallMusicRoutine())

// SOUND INTERFACING //
#define sound_assign(chan, data, samples, bitsize)  (AUDIOSound->assignsample(chan, data, samples, bitsize))    // void (*assignsample)  (uint8_t channel, void *sample, uint32_t samples, uint8_t bitsize);   // 0 = 8bits, 1 = 16bits
#define sound_play(chan)              (AUDIOSound->playsample(chan))
#define sound_stop(chan)              (AUDIOSound->stopsample(chan))
#define sound_setfrequency(chan, hz)  (AUDIOSound->setsamplefreq(chan, hz)) 
#define sound_setvolume(chan, vol)    (AUDIOSound->setsamplevol(chan, vol))  // 0 to 255
#define sound_setpanning(chan, pan)   (AUDIOSound->setsamplepan(chan, pan))  // -127 to 127
#define sound_setloop(chan, from, to) (AUDIOSound->setsampleloop(chan, from, to))   // set both to 0 to stop loop
#define sound_enableloop(chan, en)    (AUDIOSound->setloopenable(chan, en))


#ifdef __cplusplus
}
#endif
#endif
