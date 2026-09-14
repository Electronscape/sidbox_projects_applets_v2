#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "main.h"
#include "apis.h"

void draw_projectx_scoreboard(void);

typedef struct {
    int16_t x;
    int16_t y;
    uint8_t speed;
    uint8_t colour;
} Star;




MEMALIGN32 static Star stars[STAR_COUNT];
MEMALIGN32 static uint32_t star_seed = 0x0051DB0Au;


uint16_t star_rand(uint16_t range){
    star_seed = (star_seed * 1103515245u) + 12345u;
    return (uint16_t)((star_seed >> 16) % range);
}

void reset_star(uint8_t i, int16_t min_x)
{
    stars[i].x = (int16_t)(min_x + (int16_t)star_rand(SCREEN_W-1));
    stars[i].y = (int16_t)(STARFIELD_Y + star_rand((SCREEN_H-1) - STARFIELD_Y));

    if(i < 32) {
        stars[i].speed = 1;
        stars[i].colour = 6;
    } else if(i < 54) {
        stars[i].speed = 2;
        stars[i].colour = 6;
    } else if(i < 72) {
        stars[i].speed = 3;
        stars[i].colour = 5;
    } else if(i < 84) {
        stars[i].speed = 5;
        stars[i].colour = 1;
    } else if(i < 92) {
        stars[i].speed = 7;
        stars[i].colour = 1;
    } else {
        stars[i].speed = 9;
        stars[i].colour = 2;
    }
}

void init_star_fields(void)
{
    uint8_t i;

    for(i = 0; i < STAR_COUNT; ++i) {
        reset_star(i, 0);
    }
}

void draw_star_pixel(int16_t x, int16_t y)
{
    if(x < 0 || x >= SCREEN_W || y < STARFIELD_Y || y >= SCREEN_H) {
        return;
    }

    gfx_plot(x, y);
}

int16_t star_tail_width(uint8_t speed)
{
    if(speed >= 9) return 9;
    if(speed >= 7) return 7;
    if(speed >= 5) return 5;
    if(speed >= 3) return 3;
    if(speed >= 2) return 2;
    return 1;
}

void draw_star_shape(const Star *star)
{
    int16_t len = star_tail_width(star->speed);
    int16_t p;

    for(p = 0; p < len; ++p) {
        draw_star_pixel((int16_t)(star->x + p), star->y);
    }

    if(star->speed >= 7) {
        draw_star_pixel((int16_t)(star->x + 1), (int16_t)(star->y - 1));
        draw_star_pixel((int16_t)(star->x + 1), (int16_t)(star->y + 1));
    }

    if(star->speed >= 9) {
        draw_star_pixel((int16_t)(star->x + 3), (int16_t)(star->y - 1));
        draw_star_pixel((int16_t)(star->x + 3), (int16_t)(star->y + 1));
    }
}

void draw_star_speed_range(uint8_t min_speed, uint8_t max_speed)
{
    uint8_t i;

    for(i = 0; i < STAR_COUNT; ++i) {
        if(stars[i].speed < min_speed || stars[i].speed > max_speed) {
            continue;
        }

        gfx_setcolour(stars[i].colour);
        draw_star_shape(&stars[i]);

        stars[i].x -= stars[i].speed;
        if(stars[i].x < -star_tail_width(stars[i].speed)) {
            reset_star(i, SCREEN_W);
        }
    }
}

void draw_star_fields_layer1(void)
{
    draw_star_speed_range(0, STAR_LAYER1_MAX_SPEED);
}

void draw_star_fields_layer2(void)
{
    draw_star_speed_range(STAR_LAYER2_MIN_SPEED, UINT8_MAX);
}
