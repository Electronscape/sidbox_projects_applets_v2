#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "main.h"
#include "apis.h"


#include "resources.h"

#define APP_TITLE       "TOOTH ACHE"
#define SCREEN_W        480
#define SCREEN_H        320
#define METER_COUNT     16
#define FONT_W          8
#define STAR_COUNT      96
#define STAR_LAYER1_MAX_SPEED 5
#define STAR_LAYER2_MIN_SPEED 7
#define STARFIELD_Y     38

typedef struct {
    int16_t x;
    int16_t y;
    uint8_t speed;
    uint8_t colour;
} Star;



extern const char txtTitle[];

MEMALIGN32 volatile gfx_bitmap_t *front_a;
MEMALIGN32 volatile gfx_bitmap_t *front_b;
//MEMALIGN32 volatile gfx_bitmap_t *backbuff;
volatile static uint8_t db;
MEMALIGN32 static Star stars[STAR_COUNT];
MEMALIGN32 static uint32_t star_seed = 0x0051DB0Au;
MEMALIGN32 volatile gfx_bitmap_t backbitmap;    // background image


static uint32_t argb(uint8_t r, uint8_t g, uint8_t b)
{
    return 0xFF000000u | ((uint32_t)r << 16) | ((uint32_t)g << 8) | b;
}


static int32_t scrollx_title = SCREEN_W;
static int32_t scrollwidth_title = 0;
static int32_t scrolltitlebar_x = 0;

//screen saver 1 - the project x
static int16_t space_station_x = SCREEN_W;
static uint32_t projectx_score = 0;
static uint16_t projectx_deaths = 0;

static uint16_t star_rand(uint16_t range)
{
    star_seed = (star_seed * 1103515245u) + 12345u;
    return (uint16_t)((star_seed >> 16) % range);
}

static void reset_star(uint8_t i, int16_t min_x)
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

static void init_star_fields(void)
{
    uint8_t i;

    for(i = 0; i < STAR_COUNT; ++i) {
        reset_star(i, 0);
    }
}

static void draw_star_pixel(int16_t x, int16_t y)
{
    if(x < 0 || x >= SCREEN_W || y < STARFIELD_Y || y >= SCREEN_H) {
        return;
    }

    gfx_plot(x, y);
}

static int16_t star_tail_width(uint8_t speed)
{
    if(speed >= 9) return 9;
    if(speed >= 7) return 7;
    if(speed >= 5) return 5;
    if(speed >= 3) return 3;
    if(speed >= 2) return 2;
    return 1;
}

static void draw_star_shape(const Star *star)
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

static void draw_star_speed_range(uint8_t min_speed, uint8_t max_speed)
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

static void draw_star_fields_layer1(void)
{
    draw_star_speed_range(0, STAR_LAYER1_MAX_SPEED);
}

static void draw_star_fields_layer2(void)
{
    draw_star_speed_range(STAR_LAYER2_MIN_SPEED, UINT8_MAX);
}


#define scrolly_y 14
static void draw_top_scrolly(){
    scrollx_title-=3;
    if(scrollx_title <= -scrollwidth_title) {
        scrollx_title = SCREEN_W;
    }

    // background
    gfx_setcolour(16);
    gfx_drawtextf(scrollx_title-2, scrolly_y, txtTitle,2,2);
    gfx_drawtextf(scrollx_title+2, scrolly_y, txtTitle,2,2);
    gfx_drawtextf(scrollx_title, scrolly_y-2, txtTitle,2,2);
    gfx_drawtextf(scrollx_title, scrolly_y+2, txtTitle,2,2);

    // dont need to set colour, as this just uses the palette scroll
    gfx_drawtextfc(scrollx_title, scrolly_y, txtTitle,2,2, 80,87, 12);

    gfx_setcolour(1);
    gfx_rectf(0, 32, SCREEN_W, 5);
}

static void draw_scroll_bar_bg(){
    uint16_t step;
    scrolltitlebar_x -=2;
    if(scrolltitlebar_x <= -68){
        scrolltitlebar_x = 0;
    }
    for(step = 0; step < SCREEN_W; step += 68){
   
        gfx_blit(topscroll_bar_bg1, step + scrolltitlebar_x, 0, 68, 32);
    }
}

static void setup_background(){
    static const uint8_t gradient_cols[] = {
        16, 16, 16, 17,
        17, 18, 18, 19,
        19, 20, 20, 21,
        21, 22, 22, 23,
        23, 23
    };
    const int16_t band_count = (int16_t)(sizeof(gradient_cols) / sizeof(gradient_cols[0]));
    const int16_t band_h = (int16_t)(SCREEN_H / band_count);
    int16_t band;

    gfx_usebuffer(&backbitmap);
    gfx_cls();

    for(band = 0; band < band_count; ++band) {
        int16_t y0 = (int16_t)(band * band_h);
        int16_t y1 = (band == (band_count - 1)) ? SCREEN_H : (int16_t)(y0 + band_h);
        uint8_t col = gradient_cols[band];
        uint8_t prev_col = (band > 0) ? gradient_cols[band - 1] : col;

        gfx_setcolour(col);
        gfx_rectf(0, y0, SCREEN_W, (int16_t)(y1 - y0));

        if(band > 0 && prev_col != col) {
            if((y0 + 1) < y1) {
                gfx_setcolour(prev_col);
                gfx_rectf(0, (int16_t)(y0 + 3), SCREEN_W, 2);
            }
        }
    }
}

static void do_projectx_playdemo_screensaver(){
    enum {
        PLAY_TOP = 42,
        PLAY_BOTTOM = SCREEN_H - 18,
        SHIP_X = 30,
        SHIP_W = 31,
        SHIP_RESPAWN_X = -SHIP_W,
        SHIP_H = 17,
        ENEMY_W = 32,
        ENEMY_H = 32,
        PLAYER_SHOT_MAX = 8,
        ENEMY_COUNT = 5,
        ENEMY_SHOT_MAX = 12,
        ENEMY_SHOT_SPEED = 7,
        EXPLOSION_MAX = 8,
        EXPLOSION_FRAMES = 34,
        INVULN_FRAMES = 150,
        RESPAWN_DELAY_FRAMES = 50,
        WAVE_SIZE = 64
    };

    typedef struct {
        int16_t x;
        int16_t y;
        int16_t base_y;
        uint8_t phase;
        uint8_t amp;
        uint8_t speed;
        uint16_t fire_wait;
    } DemoEnemy;

    typedef struct {
        int16_t x;
        int16_t y;
        uint8_t age;
        uint8_t active;
    } DemoPlayerShot;

    typedef struct {
        int16_t x;
        int16_t y;
        int16_t dx;
        int16_t dy;
        uint8_t active;
    } DemoEnemyShot;

    typedef struct {
        int16_t x;
        int16_t y;
        uint8_t age;
        uint8_t seed;
        uint8_t active;
    } DemoExplosion;

    static const int8_t wave[WAVE_SIZE] = {
        0, 3, 6, 9, 12, 15, 18, 21,
        23, 25, 27, 29, 30, 31, 32, 32,
        32, 32, 31, 30, 29, 27, 25, 23,
        21, 18, 15, 12, 9, 6, 3, 0,
        -3, -6, -9, -12, -15, -18, -21, -23,
        -25, -27, -29, -30, -31, -32, -32, -32,
        -32, -31, -30, -29, -27, -25, -23, -21,
        -18, -15, -12, -9, -6, -3, 0, 3
    };

    static uint8_t initialised = 0;
    static uint16_t demo_frame = 0;
    static int16_t ship_x = SHIP_X;
    static int16_t ship_y = 120;
    static int16_t ship_target_y = 120;
    static uint8_t ship_invuln = 0;
    static uint8_t ship_respawn_wait = 0;
    static uint8_t player_fire_wait = 12;
    static DemoEnemy enemies[ENEMY_COUNT];
    static DemoPlayerShot player_shots[PLAYER_SHOT_MAX];
    static DemoEnemyShot enemy_shots[ENEMY_SHOT_MAX];
    static DemoExplosion explosions[EXPLOSION_MAX];

    uint8_t i;
    uint8_t j;
    int16_t ship_cy;
    int16_t nearest_enemy = -1;
    int16_t nearest_x = SCREEN_W + 300;
    uint8_t ship_playing;

    if(!initialised) {
        for(i = 0; i < ENEMY_COUNT; ++i) {
            enemies[i].x = (int16_t)(SCREEN_W + 40 + (i * 76) + star_rand(90));
            enemies[i].base_y = (int16_t)(PLAY_TOP + star_rand(PLAY_BOTTOM - PLAY_TOP - ENEMY_H));
            enemies[i].y = enemies[i].base_y;
            enemies[i].phase = (uint8_t)star_rand(WAVE_SIZE);
            enemies[i].amp = (uint8_t)(10 + star_rand(30));
            enemies[i].speed = (uint8_t)(1 + star_rand(3));
            enemies[i].fire_wait = (uint16_t)(60 + star_rand(120) + (i * 12));
        }

        for(i = 0; i < PLAYER_SHOT_MAX; ++i) {
            player_shots[i].active = 0;
        }

        for(i = 0; i < ENEMY_SHOT_MAX; ++i) {
            enemy_shots[i].active = 0;
        }

        for(i = 0; i < EXPLOSION_MAX; ++i) {
            explosions[i].active = 0;
        }

        initialised = 1;
    }

    space_station_x -= 1;
    if(space_station_x < -165)
        space_station_x = (SCREEN_W * 2); // using screen_h as its not double the width
    gfx_blit(projx_spacestation, space_station_x, 37, 165, 118);

    demo_frame++;
    ship_playing = (uint8_t)(ship_x >= SHIP_X);

    for(i = 0; i < ENEMY_COUNT; ++i) {
        enemies[i].x -= enemies[i].speed;
        enemies[i].phase = (uint8_t)((enemies[i].phase + 1) & (WAVE_SIZE - 1));
        enemies[i].y = (int16_t)(enemies[i].base_y + ((wave[enemies[i].phase] * enemies[i].amp) / 32));

        /*
        if(enemies[i].y < PLAY_TOP) {
            enemies[i].y = PLAY_TOP;
        } else if(enemies[i].y > (PLAY_BOTTOM - ENEMY_H)) {
            enemies[i].y = PLAY_BOTTOM - ENEMY_H;
        }
        */

        if(enemies[i].x < -ENEMY_W) {
            enemies[i].x = (int16_t)(SCREEN_W + 24 + star_rand(220));
            enemies[i].base_y = (int16_t)(PLAY_TOP + star_rand(PLAY_BOTTOM - PLAY_TOP - ENEMY_H));
            enemies[i].phase = (uint8_t)star_rand(WAVE_SIZE);
            enemies[i].amp = (uint8_t)(10 + star_rand(34));
            enemies[i].speed = (uint8_t)(1 + star_rand(3));
            enemies[i].fire_wait = (uint16_t)(90 + star_rand(150));
        }

        if(enemies[i].x > ship_x && enemies[i].x < nearest_x) {
            nearest_x = enemies[i].x;
            nearest_enemy = i;
        }
    }

    ship_cy = (int16_t)(ship_y + (SHIP_H / 2));
    ship_target_y = (int16_t)(120 + ((wave[(demo_frame >> 2) & (WAVE_SIZE - 1)] * 58) / 32));

    if(ship_playing && nearest_enemy >= 0) {
        ship_target_y = (int16_t)(enemies[nearest_enemy].y + ((ENEMY_H - SHIP_H) / 2));
    }

    if(ship_playing) {
        for(i = 0; i < ENEMY_SHOT_MAX; ++i) {
            if(enemy_shots[i].active) {
                int16_t shot_x = (int16_t)(enemy_shots[i].x >> 4);
                int16_t shot_y = (int16_t)(enemy_shots[i].y >> 4);

                if(shot_x > ship_x && shot_x < (ship_x + 95) && abs(shot_y - ship_cy) < 16) {
                    if(shot_y < ship_cy) {
                        ship_target_y = (int16_t)(ship_y + 42);
                    } else {
                        ship_target_y = (int16_t)(ship_y - 42);
                    }
                }
            }
        }
    }

    if(ship_target_y < PLAY_TOP) {
        ship_target_y = PLAY_TOP;
    } else if(ship_target_y > (PLAY_BOTTOM - SHIP_H)) {
        ship_target_y = PLAY_BOTTOM - SHIP_H;
    }

    if(ship_y < (ship_target_y - 2)) {
        ship_y += 2;
    } else if(ship_y > (ship_target_y + 2)) {
        ship_y -= 2;
    }
    ship_cy = (int16_t)(ship_y + (SHIP_H / 2));

    if(ship_respawn_wait) {
        ship_respawn_wait--;
    } else if(ship_x < SHIP_X) {
        ship_x += 2;
        if(ship_x > SHIP_X) {
            ship_x = SHIP_X;
        }
    }
    ship_playing = (uint8_t)(ship_x >= SHIP_X);

    if(ship_invuln) {
        ship_invuln--;
    }

    if(player_fire_wait) {
        player_fire_wait--;
    }

    if(ship_playing && !player_fire_wait && ship_invuln < (INVULN_FRAMES - 20)) {
        uint8_t fired = 0;

        for(i = 0; i < ENEMY_COUNT && !fired; ++i) {
            int16_t aim_y = (int16_t)(enemies[i].y + (ENEMY_H / 2));

            if(enemies[i].x > (ship_x + SHIP_W) && enemies[i].x < SCREEN_W && abs(aim_y - ship_cy) < 22) {
                for(j = 0; j < PLAYER_SHOT_MAX; ++j) {
                    if(!player_shots[j].active) {
                        player_shots[j].active = 1;
                        player_shots[j].x = (int16_t)(ship_x + SHIP_W - 2);
                        player_shots[j].y = ship_cy;
                        player_shots[j].age = 0;
                        fired = 1;
                        break;
                    }
                }
            }
        }

        player_fire_wait = fired ? (uint8_t)(9 + star_rand(10)) : 3;
    }

    for(i = 0; i < PLAYER_SHOT_MAX; ++i) {
        if(player_shots[i].active) {
            int16_t bullet_w = (player_shots[i].age < 2) ? 7 : ((player_shots[i].age < 4) ? 9 : 11);
            int16_t bullet_spread = 0;
            int16_t bullet_h;
            int16_t bullet_y;

            if(player_shots[i].age >= 4) {
                bullet_spread = (int16_t)(2 + ((player_shots[i].age - 4) >> 2));
                if(bullet_spread > 12) {
                    bullet_spread = 12;
                }
            } else if(player_shots[i].age >= 2) {
                bullet_spread = 1;
            }

            bullet_h = (int16_t)((bullet_spread * 2) + 1);
            bullet_y = (int16_t)(player_shots[i].y - bullet_spread);

            player_shots[i].x += 10;
            if(player_shots[i].age < 255) {
                player_shots[i].age++;
            }

            if(player_shots[i].x > SCREEN_W) {
                player_shots[i].active = 0;
                continue;
            }

            for(j = 0; j < ENEMY_COUNT; ++j) {
                if(player_shots[i].x < (enemies[j].x + ENEMY_W) &&
                   (player_shots[i].x + bullet_w) > enemies[j].x &&
                   bullet_y < (enemies[j].y + ENEMY_H) &&
                   (bullet_y + bullet_h) > enemies[j].y) {
                    uint8_t k;

                    player_shots[i].active = 0;
                    projectx_score += 7;

                    for(k = 0; k < EXPLOSION_MAX; ++k) {
                        if(!explosions[k].active) {
                            explosions[k].active = 1;
                            explosions[k].x = (int16_t)(enemies[j].x + (ENEMY_W / 2));
                            explosions[k].y = (int16_t)(enemies[j].y + (ENEMY_H / 2));
                            explosions[k].age = 0;
                            explosions[k].seed = (uint8_t)star_rand(WAVE_SIZE);
                            break;
                        }
                    }

                    enemies[j].x = (int16_t)(SCREEN_W + 32 + star_rand(230));
                    enemies[j].base_y = (int16_t)(PLAY_TOP + star_rand(PLAY_BOTTOM - PLAY_TOP - ENEMY_H));
                    enemies[j].phase = (uint8_t)star_rand(WAVE_SIZE);
                    enemies[j].amp = (uint8_t)(12 + star_rand(32));
                    enemies[j].speed = (uint8_t)(1 + star_rand(3));
                    enemies[j].fire_wait = (uint16_t)(100 + star_rand(170));
                    break;
                }
            }
        }
    }

    for(i = 0; i < ENEMY_COUNT; ++i) {
        if(enemies[i].fire_wait) {
            enemies[i].fire_wait--;
        }

        if(!enemies[i].fire_wait && enemies[i].x > 110 && enemies[i].x < (SCREEN_W - 20)) {
            for(j = 0; j < ENEMY_SHOT_MAX; ++j) {
                if(!enemy_shots[j].active) {
                    int16_t enemy_cx = (int16_t)(enemies[i].x + (ENEMY_W / 2));
                    int16_t enemy_cy = (int16_t)(enemies[i].y + (ENEMY_H / 2));
                    int16_t distance = (int16_t)(enemy_cx - (ship_x + (SHIP_W / 2)));
                    int16_t steps;

                    if(distance < 1) {
                        distance = 1;
                    }

                    steps = (int16_t)(distance / ENEMY_SHOT_SPEED);
                    if(steps < 1) {
                        steps = 1;
                    }

                    enemy_shots[j].active = 1;
                    enemy_shots[j].x = (int16_t)(enemy_cx << 4);
                    enemy_shots[j].y = (int16_t)(enemy_cy << 4);
                    enemy_shots[j].dx = (int16_t)(-ENEMY_SHOT_SPEED << 4);
                    enemy_shots[j].dy = (int16_t)(((ship_cy - enemy_cy) << 4) / steps);

                    if(enemy_shots[j].dy > (ENEMY_SHOT_SPEED << 4)) {
                        enemy_shots[j].dy = (ENEMY_SHOT_SPEED << 4);
                    } else if(enemy_shots[j].dy < -(ENEMY_SHOT_SPEED << 4)) {
                        enemy_shots[j].dy = -(ENEMY_SHOT_SPEED << 4);
                    }

                    break;
                }
            }

            enemies[i].fire_wait = (uint16_t)(95 + star_rand(170) + (i * 9));
        }
    }

    for(i = 0; i < ENEMY_SHOT_MAX; ++i) {
        if(enemy_shots[i].active) {
            int16_t shot_x;
            int16_t shot_y;

            enemy_shots[i].x += enemy_shots[i].dx;
            enemy_shots[i].y += enemy_shots[i].dy;

            shot_x = (int16_t)(enemy_shots[i].x >> 4);
            shot_y = (int16_t)(enemy_shots[i].y >> 4);

            if(shot_x < -2 || shot_y < PLAY_TOP || shot_y > PLAY_BOTTOM) {
                enemy_shots[i].active = 0;
                continue;
            }

            if(!ship_invuln &&
               shot_x < (ship_x + SHIP_W) &&
               (shot_x + 2) > ship_x &&
               shot_y < (ship_y + SHIP_H) &&
               (shot_y + 2) > ship_y) {
                uint8_t k;

                enemy_shots[i].active = 0;
                projectx_deaths++;
                ship_invuln = INVULN_FRAMES;
                ship_x = SHIP_RESPAWN_X;
                ship_respawn_wait = RESPAWN_DELAY_FRAMES;
                ship_target_y = (int16_t)(PLAY_TOP + ((PLAY_BOTTOM - PLAY_TOP - SHIP_H) / 2));

                for(k = 0; k < EXPLOSION_MAX; ++k) {
                    if(!explosions[k].active) {
                        explosions[k].active = 1;
                        explosions[k].x = (int16_t)(SHIP_X + (SHIP_W / 2));
                        explosions[k].y = ship_cy;
                        explosions[k].age = 0;
                        explosions[k].seed = (uint8_t)star_rand(WAVE_SIZE);
                        break;
                    }
                }

                for(j = 0; j < ENEMY_SHOT_MAX; ++j) {
                    enemy_shots[j].active = 0;
                }

                for(j = 0; j < PLAYER_SHOT_MAX; ++j) {
                    player_shots[j].active = 0;
                }

                break;
            }
        }
    }

    if(ship_playing && !ship_invuln) {
        for(i = 0; i < ENEMY_COUNT; ++i) {
            if(ship_x < (enemies[i].x + ENEMY_W) &&
               (ship_x + SHIP_W) > enemies[i].x &&
               ship_y < (enemies[i].y + ENEMY_H) &&
               (ship_y + SHIP_H) > enemies[i].y) {
                uint8_t k;

                ship_invuln = INVULN_FRAMES;
                projectx_deaths++;
                ship_x = SHIP_RESPAWN_X;
                ship_respawn_wait = RESPAWN_DELAY_FRAMES;

                for(k = 0; k < EXPLOSION_MAX; ++k) {
                    if(!explosions[k].active) {
                        explosions[k].active = 1;
                        explosions[k].x = (int16_t)(SHIP_X + (SHIP_W / 2));
                        explosions[k].y = ship_cy;
                        explosions[k].age = 0;
                        explosions[k].seed = (uint8_t)star_rand(WAVE_SIZE);
                        break;
                    }
                }

                for(k = 0; k < EXPLOSION_MAX; ++k) {
                    if(!explosions[k].active) {
                        explosions[k].active = 1;
                        explosions[k].x = (int16_t)(enemies[i].x + (ENEMY_W / 2));
                        explosions[k].y = (int16_t)(enemies[i].y + (ENEMY_H / 2));
                        explosions[k].age = 0;
                        explosions[k].seed = (uint8_t)star_rand(WAVE_SIZE);
                        break;
                    }
                }

                enemies[i].x = (int16_t)(SCREEN_W + 70 + star_rand(180));
                enemies[i].base_y = (int16_t)(PLAY_TOP + star_rand(PLAY_BOTTOM - PLAY_TOP - ENEMY_H));
                enemies[i].fire_wait = (uint16_t)(120 + star_rand(160));

                for(j = 0; j < PLAYER_SHOT_MAX; ++j) {
                    player_shots[j].active = 0;
                }

                break;
            }
        }
    }

    for(i = 0; i < PLAYER_SHOT_MAX; ++i) {
        if(player_shots[i].active) {
            if(player_shots[i].age < 2) {
                gfx_blit(px_bullet, player_shots[i].x, player_shots[i].y, 11, 5);
            } else if(player_shots[i].age < 4) {
                gfx_blit(px_bullet, player_shots[i].x, player_shots[i].y - 3, 11, 5);
                gfx_blit(px_bullet, player_shots[i].x, player_shots[i].y + 3, 11, 5);
            } else {
                gfx_blit(px_bullet, player_shots[i].x, player_shots[i].y - 6, 11, 5);
                gfx_blit(px_bullet, player_shots[i].x, player_shots[i].y, 11, 5);
                gfx_blit(px_bullet, player_shots[i].x, player_shots[i].y + 6, 11, 5);
            }
        }
    }

    gfx_setcolour(252);
    for(i = 0; i < ENEMY_SHOT_MAX; ++i) {
        if(enemy_shots[i].active) {
            int16_t shot_x = (int16_t)(enemy_shots[i].x >> 4);
            int16_t shot_y = (int16_t)(enemy_shots[i].y >> 4);

            if(shot_x >= 0 && shot_x <= (SCREEN_W - 4) && shot_y >= 0 && shot_y <= (SCREEN_H - 4)) {
                gfx_rectf(shot_x, shot_y, 4, 4);
            }
        }
    }

    for(i = 0; i < EXPLOSION_MAX; ++i) {
        if(explosions[i].active) {
            uint8_t k;

            for(k = 0; k < 4; ++k) {
                uint8_t phase = (uint8_t)((explosions[i].seed + (k * 13)) & (WAVE_SIZE - 1));
                int16_t radius = (int16_t)(2 + (explosions[i].age >> 1) + k);
                int16_t cx = (int16_t)(explosions[i].x + ((wave[phase] * (int16_t)(explosions[i].age + 4)) / 70));
                int16_t cy = (int16_t)(explosions[i].y + ((wave[(phase + 16) & (WAVE_SIZE - 1)] * (int16_t)(explosions[i].age + 4)) / 70));

                if(explosions[i].age < 8) {
                    gfx_setcolour((k & 1) ? 30 : 29);
                } else if(explosions[i].age < 16) {
                    gfx_setcolour((k & 1) ? 48 : 31);
                } else if(explosions[i].age < 25) {
                    gfx_setcolour((k & 1) ? 25 : 24);
                } else {
                    gfx_setcolour((k & 1) ? 18 : 20);
                }

                gfx_circlef(cx, cy, radius);
            }

            explosions[i].age++;
            if(explosions[i].age >= EXPLOSION_FRAMES) {
                explosions[i].active = 0;
            }
        }
    }

    for(i = 0; i < ENEMY_COUNT; ++i) {
        gfx_blit(px_enemy, enemies[i].x, enemies[i].y, ENEMY_W, ENEMY_H);
    }

    if(ship_x >= 0 && (!ship_invuln || !(demo_frame & 1))) {
        gfx_blit(px_ship, ship_x, ship_y, SHIP_W, SHIP_H);
    }
}

static void draw_projectx_scoreboard(void)
{
    char score_text[64];

    snprintf(score_text, sizeof(score_text), "SCORE %06lu   SHIP LOST %u",
             (unsigned long)projectx_score,
             (unsigned int)projectx_deaths);

    //gfx_setcolour(16);
    //gfx_rectf(0, (int16_t)(SCREEN_H - 16), SCREEN_W, 16);

    //gfx_setcolour(1);
    //gfx_rectf(0, (int16_t)(SCREEN_H - 18), SCREEN_W, 2);

    gfx_setcolour(2);
    gfx_drawtextf(8, (int16_t)(SCREEN_H - 24), score_text, 1, 2);
}

static void draw_scene(uint32_t frame){
    draw_star_fields_layer1();  // stars that go behind things ;)


    do_projectx_playdemo_screensaver();

    draw_star_fields_layer2();  // the faster moving ones over the graphics

    draw_scroll_bar_bg();
    draw_top_scrolly();
    draw_projectx_scoreboard();

}

static void flip_front_buffer(void)
{
    db = (uint8_t)(1u - db);

    if (db) { gfx_dispfbuffer(front_a, front_b);
    } else {  gfx_dispfbuffer(front_b, front_a);
    }
}

static void init_scene(){
    scrollwidth_title = (int32_t)strlen(txtTitle) * FONT_W * 2;
    if(scrollwidth_title <= 0) scrollwidth_title = FONT_W;

    scrollx_title = SCREEN_W;
    init_star_fields();
}

int main(int argc, char *argv[])
{
    (void)argc;
    (void)argv;

    //DIVZEROOFF;

    configure_runmode(GAMEMODE_PROFILE_1);
    initMalloc();

    gfx_setlcd(DEFAULT_RENDER_ORDER, FPS_50);
    gfx_mode(SCREEN_W, SCREEN_H, SCREEN_W, SCREEN_H, DISPFLAG_DUALLAYER);
    set_audio_dma(512); // a few ms about 7ms enough for a full frame.
    set_music_dma = 1;

    front_a = gfx_getdrawbuffer();
    front_b = gfx_getshowbuffer();

    gfx_usefpalette(clut);
    touch_init();


    gfx_palcycleon();
    gfx_palcyclerange(80,87);
    gfx_palcyclerate(4);
    gfx_createBitmap(&backbitmap, SCREEN_W, SCREEN_H);
    setup_background();

    gfx_showbbuffer(&backbitmap);
    gfx_showfbuffer(front_a);
    gfx_usebuffer(front_b);
    //lcd_bright(100);

    init_scene();

    //music_play("sdcard:/level1.mod", 0);

    for (;;) {
        //poll_touch();
        //process_touch();


        gfx_lcdwait();

        // background scene should be static

        // forground stuff
        gfx_cls();
        draw_scene(0);
        flip_front_buffer();
        gfx_displaynow();
    }

    return 0x00;
}



const char txtTitle[] = {
    "this is a test scrolly, something to test for now, but will make it a little better filly texty stuff\0"
};
