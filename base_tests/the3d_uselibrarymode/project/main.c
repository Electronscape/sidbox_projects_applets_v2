
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
    gfx_setlcd(DEFAULT_RENDER_ORDER, FPS_25);
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

uint8_t HosS, HosH, HosG, SeaDots;
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




    music_play("afp.mod", 0);


    // setup scene
    uint8_t SunlightId = addDirectionalLight((Vec3){ -1.0, -0.50f, 0.30}, 1.0, 1);
    //uint8_t ShipLightid = addPointLight(vec3(0,0,0), 1.0, 1);
    //lightSetIntensity(SunlightId, 1.0);

    // horizon stuff
    HosS = 9;
    HosG = 59;
    HosH = 43;
    SeaDots = 2;


    Mesh islandMesh;
    loadMeshSB3D("islandx.sb3d", &islandMesh, 200.0f);
    int island0 = entityWorldSpawn(&islandMesh, vec3(0, 0, 0));

    Mesh carrierMesh;
    loadMeshSB3D("carrier.sb3d", &carrierMesh, 50.0f);
    int carrier0 = entityWorldSpawn(&carrierMesh, vec3(1950, 0, -100));

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

    /* DELTA TIME CHECK 
    set3DRenderBuffer(bm2->bitmap);
    for(;;) {
        uint32_t nowTicks = getTicks();
        uint32_t tickDelta = nowTicks - lastTicks;


        Render3D(&cam);

        lastTicks = nowTicks;
        float dt = (float)tickDelta * TICK_TO_SECONDS;

        sprintf(testout, "tickDelta : %lu, MS: %ld\n", tickDelta, (int)(dt * 1000));
        dbug(testout);
    }
    */

    for (;;) {
        uint32_t nowTicks = getTicks();
        uint32_t tickDelta = nowTicks - lastTicks;
        lastTicks = nowTicks;

        float dt = (float)tickDelta * TICK_TO_SECONDS;
        if (dt < 0.0f) dt = 0.0f;
        if (dt > 0.150f) dt = 0.150f;

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

        clrmousedelta();

        if (joybutts & BTN_FIRE)  cameraMove(&cam, 0, 0,  moveStep);
        if (joybutts & BTN_FIRE2) cameraMove(&cam, 0, 0, -moveStep);

        {
            gfx_lcdwait();

            gdb = 1 - gdb;
            if (gdb) {
                gfx_dispfbuffer(bm1, bm2);
                set3DRenderBuffer(bm2->bitmap);
            } else {
                gfx_dispfbuffer(bm2, bm1);
                set3DRenderBuffer(bm1->bitmap);
            }

            drawFakeHorizon(&cam, HosS, HosG, HosH, 0);
            drawFakeHorizonDots(&cam, SeaDots, 128, 0, 110);
            Render3D(&cam);

            gfx_displaynow();
        }
    }
    
    return 0x00;
}
