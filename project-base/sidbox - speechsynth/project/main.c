#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "main.h"
#include "apis.h"
#include "speech_synth.h"


#define APP_TITLE       "SPEECH SYNTH"
#define SPEECH_CHANNEL  0

static const char *demo_text =
    "Hello. I am a speech synthesizer for Sidbox. "
    "No samples. Just phonemes, formants, and questionable eighties charm.";


int main(int argc, char *argv[])
{
    uint32_t sample_count;
    uint8_t old_joy = 0;
    const char *say_text = demo_text;

    (void)argc;

    if (argv && argv[1]) {
        say_text = argv[1];
    }

    configure_runmode(GAMEMODE_PROFILE_1);
    
    initMalloc();
    
    set_audio_dma(64);
    set_music_dma = 1;

    crt_enable();
    crt_clear(API_CRT_COLOUR_BLACK);
    crt_setborder(API_CRT_COLOUR_BLUE);
    crt_text(8, 8, APP_TITLE, API_CRT_COLOUR_BCYAN);
    crt_text(8, 28, "Formant speech, generated live.", API_CRT_COLOUR_WHITE);
    crt_text(8, 46, "Press FIRE to replay.", API_CRT_COLOUR_BYELLOW);
    crt_text(8, 72, say_text, API_CRT_COLOUR_BGREEN);
    crt_flush();

    sample_count = speech_synth_render(say_text);
    sound_assign(SPEECH_CHANNEL, speech_synth_samples(), sample_count, SAMP_S8);
    sound_setfrequency(SPEECH_CHANNEL, SPEECH_SYNTH_SAMPLE_RATE);
    sound_setvolume(SPEECH_CHANNEL, 255);
    sound_setpanning(SPEECH_CHANNEL, 0);
    sound_enableloop(SPEECH_CHANNEL, 0);
    sound_play(SPEECH_CHANNEL);

    //for(;;){    // loop here anyway
        //uint8_t joy = getjoyport();

        //if ((joy & BTN_FIRE) && !(old_joy & BTN_FIRE)) {
            sound_stop(SPEECH_CHANNEL);
            sound_play(SPEECH_CHANNEL);
        //}
        //old_joy = joy;

        //music_update();
        //sysevents();
    //}


    HWKERNAL->exitgamemode();
    return 0;
}

