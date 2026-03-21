
#include "main.h"

// basic includes
#include "gfx.h"


// Display Bitmap Buffers
volatile gfx_bitmap_t *bm1, *bm2;               // front Buffers 1 and 2
MEMALIGN32 volatile gfx_bitmap_t backbitmap;    // background image
volatile uint8_t gdb = 0;   // Buffer index


void initSystem(){
    //DIVZEROOFF;
    configure_runmode(GAMEMODE_PROFILE_1);
    initMalloc();   // go memory!! yey

    // hardware preps //
    gfx_setlcd(DEFAULT_RENDER_ORDER, FPS_50);
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

#define COLOUR_OFFSET 32

// generate a CLUT from baseColors towards a target colour
static inline uint32_t lerpColor(uint32_t c1, uint32_t c2, float t)
{
    if (t < 0.0f) t = 0.0f;
    if (t > 1.0f) t = 1.0f;

    uint8_t a1 = (c1 >> 24) & 0xFF;
    uint8_t r1 = (c1 >> 16) & 0xFF;
    uint8_t g1 = (c1 >> 8)  & 0xFF;
    uint8_t b1 = (c1)       & 0xFF;

    uint8_t a2 = (c2 >> 24) & 0xFF;
    uint8_t r2 = (c2 >> 16) & 0xFF;
    uint8_t g2 = (c2 >> 8)  & 0xFF;
    uint8_t b2 = (c2)       & 0xFF;

    uint8_t a = (uint8_t)(a1 + ((a2 - a1) * t));
    uint8_t r = (uint8_t)(r1 + ((r2 - r1) * t));
    uint8_t g = (uint8_t)(g1 + ((g2 - g1) * t));
    uint8_t b = (uint8_t)(b1 + ((b2 - b1) * t));

    return ((uint32_t)a << 24) |
           ((uint32_t)r << 16) |
           ((uint32_t)g << 8)  |
           (uint32_t)b;
}
void buildLightingCLUT(uint32_t *tclut, uint32_t *baseColors, int numColors, uint32_t target, float shades[5])
{
    // palette starts at COLOUR_OFFSET
    for (int ci = 0; ci < numColors; ci++) {
        for (int s = 0; s < 5; s++) {
            float t = 1.0f - shades[s]; // 1.0 = fully target, 0 = fully base
            tclut[COLOUR_OFFSET + (s * numColors) + ci] = lerpColor(baseColors[ci], target, t);
        }
    }
}

int main(int argc, char *argv[]) {
    initSystem();
    char tfname[64];







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

    API->sb3d->renderer->enableZOrdering(1);
    API->sb3d->renderer->enableFlatMode(1);
    API->sb3d->renderer->enableTwoShade(0);
    API->sb3d->renderer->enableWireFrame(0);

    API->sb3d->world->worldClear();
    API->sb3d->lights->lightsClear();


    // scene set up test
    Camera cam = API->sb3d->camera->createCamera();
    API->sb3d->camera->cameraSetRange(&cam, 0.01, 5000.0f);
    API->sb3d->camera->cameraNormalize(&cam);
    API->sb3d->camera->cameraSetPosition(&cam, (Vec3){ 0, 10, 0});


    uint8_t SunlightId = API->sb3d->lights->addDirectionalLight((Vec3){ -1.0f, -0.50f, 0.30f}, 1.00f, 1);

    Mesh theCubeMesh = createBox(10,10,10);// API->sb3d->mesh->createBox(10, 10, 10);
    API->sb3d->entity->spawnEntity(&theCubeMesh, (Vec3){0,0,100});

    //API->sb3d->entity->spawnEntity(&theCubeMesh, (Vec3){0,0,-100});
    //API->sb3d->entity->spawnEntity(&theCubeMesh, (Vec3){-20,0,0});
    //API->sb3d->entity->spawnEntity(&theCubeMesh, (Vec3){-20,0,-20});



    Mesh islandMesh;
    int lis = loadMeshSB3D("islandx.sb3d", &islandMesh, 200.0f);
    int island0 = API->sb3d->entity->spawnEntity(&islandMesh, (Vec3){0,-10,0});


    dbug("loading mesh:");
    if(lis == 0){
        dbug("Failed to load mesh!\n");
    } else dbug("Done\n");



    // horizon stuff
    HosS = 9;
    HosG = 59;
    HosH = 43;
    SeaDots = 2;

    gfx_showfbuffer(bm1);           // initial buffers
    gfx_usebuffer(bm1);

    gfx_setcolour(1);
    gfx_plot(30,30);
    uint16_t pla;

    int mouseDeltaX, mouseDeltaY;
    int mx, my;

    getmousepos(&mx, &my);
    clrmousedelta();

    for(;;) {
        float moveSpeed = 4.40f;
        float turnSpeed = 0.030f;

        int32_t dx, dy;
        uint8_t joybutts = getjoyport();


        getmousedelta(&dx, &dy);

        // air craft style
        float rx = 0.0f;
        float rz = 0.0f;
        float ryGlobal = 0.0f;

        // mouse adds pitch + roll
        rx += ((float)-dy / 120.0f);
        rz += ((float)-dx / 200.0f);

        // local pitch/roll
        API->sb3d->camera->cameraTurn(&cam, rx, 0.0f, rz, 0);

        // optional bank-to-turn assist
        ryGlobal += cam.right.y * 0.06f;

        // global yaw after local update
        if (ryGlobal != 0.0f) {
            API->sb3d->camera->cameraTurn(&cam, 0.0f, -ryGlobal, 0.0f, 1);
        }

        clrmousedelta();    // consume the deltas
        if(joybutts & BTN_FIRE){  API->sb3d->camera->cameraMove(&cam, 0, 0,  moveSpeed); }
        if(joybutts & BTN_FIRE2){ API->sb3d->camera->cameraMove(&cam, 0, 0, -moveSpeed); }
        /// --- all the game logic that does NOT involved any graphics math above

        {   // ALL the graphics ready stuff
            gfx_lcdwait();  // here if the lcd hasnt finished rendering to the screen
            
            gdb = 1 - gdb;
            if(gdb) {
                gfx_dispfbuffer(bm1, bm2);
            }
            else    {
                gfx_dispfbuffer(bm2, bm1);
            }
            

            //resetRenderList();
            //drawFakeHorizon(&cam, HosS, HosG, HosH, 0);
            //drawFakeHorizonDots(&cam, SeaDots, 128, 0, 110);
            gfx_cls();
            API->sb3d->renderer->Render3D(&cam);
            //uint8_t *theSurface = thedraw->bitmap;
            //videoMemToScreen(theSurface);

            uint8_t colInd = 0;
            for(int gy = 0; gy < 16; gy ++){
                for(int gx = 0; gx < 16; gx ++){
                    drawRect((SCREEN_W - 4 * 16) + gx * 4, gy * 4, 4, 4, colInd);
                    colInd ++;
                }
            }

        
            gfx_displaynow();
        }
    }
    
    return 0x00;
}
