
#include "main.h"

// basic includes
#include "gfx.h"


#include "sb3d/sb3d.h"



// Display Bitmap Buffers
volatile gfx_bitmap_t MEMALIGN32 *bm1, *bm2;               // front Buffers 1 and 2
volatile gfx_bitmap_t MEMALIGN32 backbitmap;    // background image
volatile uint8_t gdb = 0;   // Buffer index

void initSystem(){
    //DIVZEROOFF;
    configure_runmode(GAMEMODE_PROFILE_2);  // Cache memory setup, profile 2 (bigger area) - without this........ god! things are SLOWWWE

    initMalloc();   // go memory!! yey

    // hardware preps //
    gfx_setlcd(DEFAULT_RENDER_ORDER, FPS_30);
    lcd_bright(0);
    gfx_mode(480, 320, 480, 320, DISPFLAG_SINGLELAYER | DISPFLAG_NOSCROLLABLE);
    set_audio_dma(512); // a few ms about 7ms enough for a full frame.
    set_music_dma = 1;

    // get the default display buffers (OS assigned, from internal memory)
    bm1 = gfx_getdrawbuffer();
    bm2 = gfx_getshowbuffer();

    lcd_bright(100);

    //frontclut[0] = 0x00000000;  // ensure front palette index 0 is black and transparent
}

uint8_t HosSky, HosHorizonLine, HosGround, SeaDots;











uint8_t weatherLightning(float dt, int sunlightId)
{
    enum {
        WL_IDLE = 0,
        WL_FLASH_ON,
        WL_FLASH_GAP
    };

    static uint32_t rng = 0xC0FFEE77u;

    static int state = WL_IDLE;

    static float idleTimer = 2.5f;
    static float stateTimer = 0.0f;

    static float flashIntensity = 0.0f;
    static float currentIntensity = 0.0f;

    static int flashesRemaining = 0;

    /* tune these */
    // gentle weather 
    //const float minWait        = 2.5f;   /* seconds between lightning events */
    //const float maxWait        = 11.0f;
    //const float minIntensity   = 0.4f;   /* stronger than normal sunlight */
    //const float maxIntensity   = 3.0f;
    //const int   minBurstCount = 1;
    //const int   maxBurstCount = 4;

    // major storm
    const float minWait      = 0.8f;
    const float maxWait      = 3.5f;
    const float minIntensity   = 0.3f;   /* stronger than normal sunlight */
    const float maxIntensity   = 2.0f;
    const int   minBurstCount = 2;
    const int   maxBurstCount = 6;
    
    
    
    const float minFlashOn     = 0.025f; /* single flash on-time */
    const float maxFlashOn     = 0.040f;

    const float minFlashGap    = 0.020f; /* gap between flickers in same burst */
    const float maxFlashGap    = 0.120f;

    if (dt <= 0.0f) dt = 0.016f;
    if (dt > 0.1f)  dt = 0.1f;

    /* tiny local RNG */
    rng ^= rng << 13;
    rng ^= rng >> 17;
    rng ^= rng << 5;

    uint8_t lightening=0;

    switch (state) {
        default:
        case WL_IDLE:
        {
            idleTimer -= dt;

            lightEnable(sunlightId, 0);
            lightSetIntensity(sunlightId, 0.0f);

            if (idleTimer <= 0.0f) {
                uint32_t r1, r2;

                rng ^= rng << 13;
                rng ^= rng >> 17;
                rng ^= rng << 5;
                r1 = rng;

                rng ^= rng << 13;
                rng ^= rng >> 17;
                rng ^= rng << 5;
                r2 = rng;

                flashesRemaining = minBurstCount + (int)(r1 % (uint32_t)(maxBurstCount - minBurstCount + 1));

                flashIntensity =
                    minIntensity +
                    ((float)(r2 & 1023u) * (1.0f / 1023.0f)) * (maxIntensity - minIntensity);

                currentIntensity = flashIntensity;

                rng ^= rng << 13;
                rng ^= rng >> 17;
                rng ^= rng << 5;

                stateTimer =
                    minFlashOn +
                    ((float)(rng & 1023u) * (1.0f / 1023.0f)) * (maxFlashOn - minFlashOn);

                state = WL_FLASH_ON;
            }
        } break;

        case WL_FLASH_ON:
        {
            float t;

            stateTimer -= dt;

            /* fast chaotic decay while lit */
            currentIntensity -= flashIntensity * (dt * 10.0f);
            if (currentIntensity < 0.0f) currentIntensity = 0.0f;

            if(currentIntensity>0 ) lightening = 1;

            /* optional tiny sparkle jitter while on */
            rng ^= rng << 13;
            rng ^= rng >> 17;
            rng ^= rng << 5;
            t = (float)(rng & 255u) * (1.0f / 255.0f);

            lightEnable(sunlightId, 1);
            lightSetIntensity(sunlightId, currentIntensity + (t * 0.35f));

            if (stateTimer <= 0.0f) {
                flashesRemaining--;

                if (flashesRemaining > 0) {
                    rng ^= rng << 13;
                    rng ^= rng >> 17;
                    rng ^= rng << 5;

                    stateTimer =
                        minFlashGap +
                        ((float)(rng & 1023u) * (1.0f / 1023.0f)) * (maxFlashGap - minFlashGap);

                    state = WL_FLASH_GAP;
                } else {
                    uint32_t r;

                    rng ^= rng << 13;
                    rng ^= rng >> 17;
                    rng ^= rng << 5;
                    r = rng;

                    idleTimer =
                        minWait +
                        ((float)(r & 2047u) * (1.0f / 2047.0f)) * (maxWait - minWait);

                    lightEnable(sunlightId, 0);
                    lightSetIntensity(sunlightId, 0.0f);
                    state = WL_IDLE;
                }
            }
        } break;

        case WL_FLASH_GAP:
        {
            stateTimer -= dt;

            lightEnable(sunlightId, 0);
            lightSetIntensity(sunlightId, 0.0f);

            if (stateTimer <= 0.0f) {
                uint32_t r1, r2;

                rng ^= rng << 13;
                rng ^= rng >> 17;
                rng ^= rng << 5;
                r1 = rng;

                rng ^= rng << 13;
                rng ^= rng >> 17;
                rng ^= rng << 5;
                r2 = rng;

                flashIntensity =
                    minIntensity +
                    ((float)(r1 & 1023u) * (1.0f / 1023.0f)) * (maxIntensity - minIntensity);

                /* later flickers in same burst can be weaker or stronger */
                flashIntensity *= 0.65f + (((float)(r2 & 255u) * (1.0f / 255.0f)) * 0.70f);

                currentIntensity = flashIntensity;

                rng ^= rng << 13;
                rng ^= rng >> 17;
                rng ^= rng << 5;

                stateTimer =
                    minFlashOn +
                    ((float)(rng & 1023u) * (1.0f / 1023.0f)) * (maxFlashOn - minFlashOn);

                state = WL_FLASH_ON;
            }
        } break;
    }
    return (lightening>0);
}









int main(int argc, char *argv[]) {
    initSystem();
    

    char tfname[64];

    

    worldClear();
    lightsClear();
    sb3dParticlesClear();

    // init world
    setDefaultRenderMode();
    Camera cam = cameraCreate();
    cameraSetRange(&cam, 0.01, 5000.0f);
    cameraSetPosition(&cam, vec3(0, 50, 0));
    cameraNormalize(&cam);


    uint32_t baseColors[16] = {
        0xFF5516e3, 0xFFFFFFFF, 0xFFFF0000, 0xFF00FF00,
        0xFF0000FF, 0xFFFFFF00, 0xFFFF00FF, 0xFF00FFFF,
        0xFF808080, 0xFFFF8000, 0xFF8000FF, 0xFF0080FF,
        0xFF80FF00, 0xFFFF0080, 0xFF00FF80, 0xFFC0C0C0
    };
    clut[0] = 0xff000000;
    clut[16] = 0xff000000;
    float shades[5] = {1.0f, 0.75f, 0.55f, 0.35f, 0.20f};
    uint32_t lightTarget = clut[16]; // e.g., warm sunlight tint
    buildLightingCLUT(clut, baseColors, 16, lightTarget, shades);




    gfx_usefpalette(clut);




    music_play("music2.mod", 0);
    


    // setup scene
    uint8_t Camlightid = addPointLight(vec3(0,0,0), 0.01, 1);
    uint8_t SunlightId = addDirectionalLight((Vec3){ -1.0, -0.50f, 0.30}, 1.0, 1);
    lightSetIntensity(SunlightId, 1.0);

    lightEnable(SunlightId, 0);


    // sound effects, only for the thundies
    uint32_t sampleLen;
    uint8_t MEMALIGN32 *thund1;
    uint8_t MEMALIGN32 *thund2;
    sampleLen = LoadSFX("thunder1.wav", &thund1);
    sound_assign(0, thund1, sampleLen, 0);
    sound_setfrequency(0, 20100);
    //sound_play(0);
    sound_setvolume(0, 440);
    sound_setpanning(0, -64);
    sound_enableloop(0, 0);

    sampleLen = LoadSFX("thunder2.wav", &thund2);
    sound_assign(1, thund2, sampleLen, 0);
    sound_setfrequency(1, 17100);
    //sound_play(0);
    sound_setvolume(1, 440);
    sound_setpanning(1, 64);
    sound_enableloop(1, 0);
    

    // horizon stuff
    // day time
    HosSky         = 9;   
    HosGround      = 59;
    HosHorizonLine = 43;
    SeaDots = 2;

    // night time
    HosSky         = 19;   
    HosGround      = 18;
    HosHorizonLine = 21;
    SeaDots = 23;



    Mesh islandMesh;
    loadMeshSB3D("islandx.sb3d", &islandMesh, 200.0f);
    int island0 = entityWorldSpawn(&islandMesh, vec3(0, 0, 0));

    //Mesh theHouseMesh;
    //loadMeshSB3D("building1.sb3d", &theHouseMesh, 50.0f);
    //int theHouse0 = entityWorldSpawn(&theHouseMesh, vec3(-100, 50, 300));

    Mesh carrierMesh;
    loadMeshSB3D("carrier.sb3d", &carrierMesh, 50.0f);
    int carrier0 = entityWorldSpawn(&carrierMesh, vec3(1950, 0, -100));


    // ship yard part
    Mesh shipMesh; loadMeshSB3D("shipv1.sb3d", &shipMesh, 10.0f);
    Mesh shipTestMesh = copyMesh(&shipMesh);
    int shipTest = entityWorldSpawn(&shipTestMesh, vec3(-135,50, -200) );

    uint8_t fighterLightId = addPointLight(vec3(0,0,0), 1.0f, 1);
    lightSetRanges(fighterLightId, 100.0f, 320.0f, 530.0f);
    Mesh ShipYard[3]; int shipYardID[3];
    for(int i = 0; i < 3; i++){
        ShipYard[i] = copyMesh(&shipMesh);
        shipYardID[i] = entityWorldSpawn(&ShipYard[i], vec3(-245, 42, 100 + (i * 100)));
        entityRotation(shipYardID[i], degrees(90), 0, 0, 1);
    }

    entitySetPosition(shipYardID[1], vec3(-245, 82, 100 + (1 * 100)));









    //Mesh SuzanneMesh;
    //loadMeshSB3D("suzanne.sb3d", &SuzanneMesh, 100.0f);
    //int suzzie0 = entityWorldSpawn(&SuzanneMesh, vec3(00, 200, 2300));
    //meshSetMaterial(&SuzanneMesh, 0.00f, 0.55f, 0.00f, 3.40f, 64.0f);

    enableFlatMode(0);  // sidbox display doesnt like the floyd effect yet

    
    gfx_showfbuffer(bm1);           // initial buffers
    gfx_usebuffer(bm1);

    gfx_setcolour(1);
    gfx_plot(30,30);
    uint16_t pla;

    int mouseDeltaX, mouseDeltaY;
    int mx, my;

    getmousepos(&mx, &my);
    clrmousedelta();


    uint32_t lastTicks = getTicks();

    char testout[32];

    for (;;) {
        uint32_t nowTicks = getTicks();
        uint32_t tickDelta = nowTicks - lastTicks;
        lastTicks = nowTicks;

        float dt = (float)tickDelta * TICK_TO_SECONDS;
        if (dt < 0.0f) dt = 0.0f;
        if (dt > 0.550f) dt = 0.550f;

        const float moveSpeedPerSec = 220.0f;
        const float mousePitchScale = 1.0f / 120.0f;
        const float mouseRollScale  = 1.0f / 200.0f;
        const float autoYawSpeed    = 2.5f;
        const float speed = 10.0f  * dt;   // carrier movement

        float moveStep = moveSpeedPerSec * dt;

        int32_t dx, dy;
        uint8_t joybutts = getjoyport();

        getmousedelta(&dx, &dy);

        float rx = 0.0f;
        float rz = 0.0f;
        float ryGlobal = 0.0f;

        /* mouse delta is already frame-relative input */
        rx += (float)(-dy) * mousePitchScale;
        rz += (float)(-dx) * mouseRollScale;

        cameraTurn(&cam, rx, 0.0f, rz, 0);

        /* auto-turn is simulation, so this DOES use dt */
        ryGlobal += cam.right.y * autoYawSpeed * dt;

        if (ryGlobal != 0.0f) {
            cameraTurn(&cam, 0.0f, -ryGlobal, 0.0f, 1);
        }


        
        entityTurnLocal(carrier0, -0.003f * speed, 0, 0);
        entityMoveForward(carrier0, 6.8f * speed);//vec3(0,0,0.7f));

        //entityTurnLocal(suzzie0, 1.0f * dt, 0, 0);
        



        // ship yard test
        entityMoveForward(shipTest, 166.3f * dt);//vec3(0,0,0.7f));
        Vec3 theShipPos = entityGetPosition(shipTest);
        if(theShipPos.z > 2500){
            entitySetPosition(shipTest, vec3(-135, 50, -400));
        }

        lightSetPosition(fighterLightId, theShipPos);


        lightSetPosition(Camlightid, cam.pos);
        lightSetIntensity(Camlightid, 2.0f);
        lightSetRanges(Camlightid, 100.0f, 320.0f, 530.0f);

        uint8_t flash = weatherLightning(dt, SunlightId);


        clrmousedelta();

        if (joybutts & BTN_FIRE)  cameraMove(&cam, 0, 0,  moveStep);
        if (joybutts & BTN_FIRE2) cameraMove(&cam, 0, 0, -moveStep);


        {
            gfx_lcdwait();

            static uint8_t do3D = 0;
            gdb = 1 - gdb;
            if (gdb) {
                gfx_dispfbuffer(bm1, bm2);
                set3DRenderBuffer(bm2->bitmap);
            } else {
                gfx_dispfbuffer(bm2, bm1);
                set3DRenderBuffer(bm1->bitmap);
            }

            static uint8_t  thundOn[2] = {0, 0};
            static uint32_t thundTime[2] = {0, 0};

            static uint8_t nextSndCharge = 5;
            static uint8_t altThund = 0;

            for (uint8_t v = 0; v < 2; v++) {
                if (thundOn[v]) {
                    if (thundTime[v] > 0) {
                        thundTime[v]--;

                        if (thundTime[v] == 0) {
                            sound_stop(v);
                            sound_play(v);
                            thundOn[v] = 0;
                        }
                    } else {
                        sound_stop(v);
                        sound_play(v);
                        thundOn[v] = 0;
                    }
                }
            }

            if (flash) {
                drawFakeHorizon(&cam, HosSky, 21, 5, 0);

                
                if(nextSndCharge == 0){
                    nextSndCharge = 5; // prevents both sounds playing at the same time (tho meant to be staggered)
                    altThund = 1 - altThund;
                    if (thundOn[altThund] == 0) {
                        thundOn[altThund] = 1;
                        thundTime[altThund] = 30 * 4;
                    }
                } else {
                    nextSndCharge--;
                }
            } else {
                drawFakeHorizon(&cam, HosSky, HosGround, HosHorizonLine, 0);
            }
            
            drawFakeHorizonDots(&cam, SeaDots, 128, 0, 110);
            
            //if(do3D)
            Render3D(&cam);
                do3D = 1 - do3D;

            gfx_displaynow();
        }
    }
    
    return 0x00;
}
