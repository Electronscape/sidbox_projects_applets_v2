#include "main.h"

#include "astroids.h"
#include "player.h"

volatile stroids  MEMALIGN4  astroids[max_astroids];
volatile gfxbob_t MEMALIGN32 astroid_bob[ASTROID_TYPES];

void SpawnAstroid(int16_t x, int16_t y, uint8_t type){

}

void initAstroids(){
    for(uint8_t a = 0; a < max_astroids; a ++){
        memset(&astroids[a], 0, sizeof(stroids));
        astroids[a].x = sbx_rng_range(-60, 480-4);
        astroids[a].y = sbx_rng_range(-60, 320-4);

        do{
            astroids[a].sx = sbx_rng_range(-3, 3);
        } while(astroids[a].sx == 0);   // ensure its NOT 0

        do{
            astroids[a].sy = sbx_rng_range(-3, 3);
        } while(astroids[a].sy == 0);

        //astroids[a].flags = 0x02;// * (sbx_rng_range(1, 8) & 0x02);
        //astroids[a].flagval[1] = sbx_rng_range(1, 50);

        astroids[a].size = sbx_rng_range(0, ASTROID_TYPES-1);

        if(astroids[a].size==0) {
            astroids[a].cellw = astroids[a].cellh = 96;
            astroids[a].frames_max = 24;
        }

        if(astroids[a].size==1) {
            astroids[a].cellw = astroids[a].cellh = 64;
            astroids[a].frames_max = 24;

        }

        if(astroids[a].size==2) {
            astroids[a].cellw = astroids[a].cellh = 64;
            astroids[a].frames_max = 24;
        }

        if(astroids[a].size==3) {
            astroids[a].cellw = astroids[a].cellh = 32;
            astroids[a].frames_max = 16;
        }


        astroids[a].frame = sbx_rng_range(0, astroids[a].frames_max-1);
        astroids[a].frames = sbx_rng_range(1, 3);
        if(sbx_rng_range(1,4) % 2){
            astroids[a].framed = -1;
        } else {
            astroids[a].framed = 1;
        }
    }
}





void proc_astroids(){
    bullets_t *thebullet;
    for(uint8_t a = 0; a < max_astroids; a++){
        uint8_t asize = astroids[a].size;

        astroids[a].framei ++;
        if(astroids[a].framei > astroids[a].frames) {
            astroids[a].framei = 0;
            astroids[a].frame += astroids[a].framed;
            if(astroids[a].frame < 0) astroids[a].frame = (astroids[a].frames_max-1);
            if(astroids[a].frame > (astroids[a].frames_max-1)) astroids[a].frame = 0;
        }
        astroids[a].x += astroids[a].sx;
        astroids[a].y += astroids[a].sy;

        if(astroids[a].x > 480) astroids[a].x = -astroids[a].cellw;
        if(astroids[a].y > 320) astroids[a].y = -astroids[a].cellh;
        if(astroids[a].x < -astroids[a].cellw) astroids[a].x = 480;
        if(astroids[a].y < -astroids[a].cellh) astroids[a].y = 320;

        astroid_bob[asize].index = astroids[a].frame;
        astroid_bob[asize].drawx = astroids[a].x;
        astroid_bob[asize].drawy = astroids[a].y;
        astroid_bob[asize].flags = astroids[a].flags;
        astroid_bob[asize].flagval[1] = astroids[a].flagval[1];


        uint8_t bcol = 0;
        for(uint8_t b = 0; b < MAXBULLETS; b++){
            thebullet = &bullet[b];
            if(thebullet->timeout>0){
                shipbullet.drawx = thebullet->x;
                shipbullet.drawy = thebullet->y;
                shipbullet.index = thebullet->rotation;
                
                bcol = gfx_bcollide(&astroid_bob[asize], &shipbullet);
                if(bcol == 2){
                    astroid_bob[asize].flags = 1;   // colour tint
                    astroid_bob[asize].flagval[0] = 168;
                    thebullet->timeout=1;
                }
            }
        }
        gfx_drawbob(&astroid_bob[asize]);
        astroid_bob[asize].flags = 0;   // colour tint
    }
}
