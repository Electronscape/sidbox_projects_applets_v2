#include "main.h"
#include "sound.h"

uint8_t MEMALIGN32 *snd1Test;
uint8_t MEMALIGN32 *snd2firem;
uint8_t MEMALIGN32 *sndThrust;


void loadSounds(){
    uint32_t samplelen;
    samplelen = LoadSFX("res/extralife.wav", &snd1Test);
    sound_assign(0, snd1Test, samplelen, 0);
    sound_setfrequency(0, 44100);
    sound_play(0);
    sound_setvolume(0, 240);
    sound_setpanning(0, 0);
    sound_setloop(0, 200, 4433);
    sound_enableloop(0, 0);


    samplelen = LoadSFX("res/firem.wav", &snd2firem);
    sound_assign(1, snd2firem, samplelen, 0);
    sound_setfrequency(1, 44100);
    sound_setvolume(1, 255);
    sound_setpanning(1, 0);
    sound_setloop(1, 200, 4433);
    sound_enableloop(1, 0);


    samplelen = LoadSFX("res/thrust2.wav", &sndThrust);
    sound_assign(2, sndThrust, samplelen, 0);
    sound_setfrequency(2, 44100);
    sound_setvolume(2, 380);    // 255 is max volume, but can push it more
    sound_setpanning(2, 0);
    sound_setloop(2, 200, samplelen-44);
    sound_enableloop(2, 1);  
}

void MusicPlay(uint8_t music){

    //music_play("music/1_67YT-Turrican_III_Remix.sid", 0);
    music_play("res/sdlev1.mod", 0);
    //music_play("/music/s3m.testmain5.s3m", 0);
    //music_play("/music/wavs/games/dhero32/05 - Level 2.wav", 0);

}