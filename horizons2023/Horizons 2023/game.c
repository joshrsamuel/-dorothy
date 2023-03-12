#include "gba.h"
#include "game.h"
#include "mode4.h"
#include "print.h"
#include "sound.h"
#include <stdlib.h>
#include <stdio.h>
#include "dorothy.h"
#include "dash.h"
#include "book.h"
#include "uga.h"

// Structs
PLAYER player;
BULLET bullet;
UGA ugas[UGACOUNT];
BOOK books[BOOKCOUNT];

// Variables
int score, lives, time, spawned;
u16 bgColor;

// Initializes game
void initGame()
{
    score = 0;
    lives = 3;

    initPlayer();
    initUGAs();
    initBooks();

    unsigned short colors[NUMCOLORS] = {BLACK, WHITE, RED, GREEN, YELLOW, GRAY};

    DMANow(3, &dorothyPal, PALETTE, dorothyPalLen / 2);

    for (int i = 0; i < NUMCOLORS; i++)
    {
        PALETTE[256 - NUMCOLORS + i] = colors[i];
    }
}

// Initializes player
void initPlayer()
{
    player.x = 116;
    player.y = 135;
    player.oldX = player.x;
    player.oldY = player.y;
    player.vX = 0;
    player.height = 24;
    player.width = 20;
}

// Initializes bullet
void initBullet()
{
    bullet.x = player.x;
    bullet.y = player.y;
    bullet.height = 8;
    bullet.width = 9;
    bullet.yVel = -2;
    bullet.active = 1;
    bullet.time = 0;

    REG_SND2CNT = DMG_ENV_VOL(5) | DMG_STEP_TIME(0);
    REG_SND2FREQ = NOTE_C4 | SND_RESET;
}

// Initializes UGAs
void initUGAs()
{
    for (int i = 0; i < UGACOUNT; i++)
    {
        ugas[i].x = rand() % (220 + 1 - 30) + 30;
        ugas[i].y = 0;
        ugas[i].vY = rand() % (6 + 1 - 4) + 4;
        ugas[i].height = 7;
        ugas[i].width = 8;
        ugas[i].active = 0;
        ugas[i].color = REDID;
    }
}

// Initializes books
void initBooks()
{
    for (int i = 0; i < BOOKCOUNT; i++)
    {
        books[i].x = rand() % (220 + 1 - 30) + 30;
        books[i].y = 0;
        books[i].vY = rand() % (8 + 1 - 5) + 5;
        books[i].height = 8;
        books[i].width = 9;
        books[i].active = 0;
        books[i].color = GREENID;
    }
}

// Updates game
void updateGame()
{
    updatePlayer();
    for (int i = 0; i < UGACOUNT; i++)
    {
        updateUGAs(&ugas[i]);
    }
    for (int i = 0; i < BOOKCOUNT; i++)
    {
        updateBooks(&books[i]);
    }
    updateBullet();
    mgba_printf("lives = %d", lives);

    if (!spawned)
    {
        if (time % 95 == 0)
        {
            newUGA();
            newUGA();
            newUGA();
            spawned = 1;
        }
        if (time % 60 == 0)
        {
            newBook();
        }
    }
    else
    {
        spawned = 0;
    }
}

// Updates player
void updatePlayer()
{

    if (BUTTON_HELD(BUTTON_LEFT) && (player.x > 0) && !player.dash)
    {
        player.vX = -1;
    }
    else if (BUTTON_HELD(BUTTON_RIGHT) && (player.x + player.width < SCREENWIDTH - 1) && !player.dash)
    {
        player.vX = 1;
    }
    else if (!player.dash)
    {
        player.vX = 0;
    }

    if ((BUTTON_PRESSED(BUTTON_LSHOULDER)) && !player.dash && player.dashCD <= 0 && (player.x - player.width - 30 > 0))
    {
        player.vX -= 2;
        player.dash = 1;
        player.dashCD = 100;
        REG_SND1CNT = DMG_ENV_VOL(0) | DMG_STEP_TIME(7) | DMG_DIRECTION_INCR | DMG_DUTY_25;
        REG_SND1FREQ = NOTE_G3 | SND_RESET | DMG_FREQ_TIMED;
        REG_SND1SWEEP = DMG_SWEEP_NUM(5) | DMG_SWEEP_STEPTIME(5) | DMG_SWEEP_UP;
        REG_SND1CNT = DMG_ENV_VOL(5) | DMG_STEP_TIME(7) | DMG_DIRECTION_INCR | DMG_DUTY_25;
        REG_SND1FREQ = NOTE_G3 | SND_RESET | DMG_FREQ_TIMED;
        REG_SND1SWEEP = DMG_SWEEP_NUM(5) | DMG_SWEEP_STEPTIME(5) | DMG_SWEEP_UP;
    }
    if ((BUTTON_PRESSED(BUTTON_RSHOULDER)) && !player.dash && player.dashCD <= 0 && (player.x + player.width + 30 < SCREENWIDTH - 1))
    {
        player.vX += 2;
        player.dash = 1;
        player.dashCD = 100;
        REG_SND1CNT = DMG_ENV_VOL(0) | DMG_STEP_TIME(7) | DMG_DIRECTION_INCR | DMG_DUTY_25;
        REG_SND1FREQ = NOTE_G3 | SND_RESET | DMG_FREQ_TIMED;
        REG_SND1SWEEP = DMG_SWEEP_NUM(5) | DMG_SWEEP_STEPTIME(5) | DMG_SWEEP_UP;
        REG_SND1CNT = DMG_ENV_VOL(5) | DMG_STEP_TIME(7) | DMG_DIRECTION_INCR | DMG_DUTY_25;
        REG_SND1FREQ = NOTE_G3 | SND_RESET | DMG_FREQ_TIMED;
        REG_SND1SWEEP = DMG_SWEEP_NUM(5) | DMG_SWEEP_STEPTIME(5) | DMG_SWEEP_UP;
    }
    if (player.dash)
    {
        player.dashLen++;
        if (player.dashLen > 20)
        {
            player.vX = 0;
            player.dashLen = 0;
            player.dash = 0;
        }
    }
    player.dashCD--;
    player.oldX = player.x;
    player.x += player.vX;
}

// Updates bullets
void updateBullet()
{
    if (!(bullet.active) && BUTTON_PRESSED(BUTTON_A) && score > 0)
    {
        initBullet();
        score--;
    }
    if (bullet.y <= 0)
    {
        bullet.active = 0;
        REG_SND2CNT = 0;
    }
    if (bullet.active)
    {
        bullet.time++;
        if (bullet.time >= 10)
        {
            REG_SND2CNT = 0;
        }
    }
    else
    {
        bullet.time = 0;
    }
    bullet.oldX = bullet.x;
    bullet.oldY = bullet.y;
    bullet.y += bullet.yVel;
}

// Updates rocks
void updateUGAs(UGA *u)
{
    u->oldX = u->x;
    u->oldY = u->y;
    if (time % 4 == 0 && time != 0)
    {
        u->y += u->vY;
    }
    if (u->active)
    {
        if (collision(player.x, player.y, player.width - 3, player.height, u->x, u->y, u->width, u->height) && !player.dash)
        {
            lives--;

            u->active = 0;
            u->erased = 0;

            REG_SND2CNT = DMG_ENV_VOL(5) | DMG_STEP_TIME(7);
            REG_SND2FREQ = NOTE_GS2 | SND_RESET;
        }
        if (collision(bullet.x, bullet.y, bullet.width, bullet.height, u->x, u->y, u->width, u->height) && bullet.active)
        {
            bullet.active = 0;
            u->active = 0;
            u->erased = 0;

            REG_SND2CNT = DMG_ENV_VOL(5) | DMG_STEP_TIME(7);
            REG_SND2FREQ = NOTE_G3 | SND_RESET;
        }
        if (u->y >= 160)
        {
            u->active = 0;
            u->erased = 0;
        }
    }
}

// Updates books
void updateBooks(BOOK *b)
{
    b->oldX = b->x;
    b->oldY = b->y;
    if (time % 4 == 0 && time != 0)
    {
        b->y += b->vY;
    }
    if (b->active)
    {
        if (collision(player.x, player.y, player.width - 3, player.height, b->x, b->y, b->width, b->height) && !player.dash)
        {
            score++;

            b->active = 0;
            b->erased = 0;

            REG_SND2CNT = DMG_ENV_VOL(5) | DMG_STEP_TIME(7);
            REG_SND2FREQ = NOTE_GS5 | SND_RESET;
        }
        if (b->y >= 160)
        {
            b->active = 0;
            b->erased = 0;
        }
    }
}

// Creates new UGAs
void newUGA()
{
    for (int i = 0; i < UGACOUNT; i++)
    {
        if (ugas[i].active == 0)
        {
            ugas[i].active = 1;
            ugas[i].erased = 0;
            ugas[i].y = 0;
            ugas[i].x = rand() % (220 + 1 - 30) + 30;
            ugas[i].color = REDID;
            break;
        }
    }
    spawned = 1;
}

// Creates new books
void newBook()
{
    for (int i = 0; i < BOOKCOUNT; i++)
    {
        if (books[i].active == 0)
        {
            books[i].active = 1;
            books[i].erased = 0;
            books[i].y = 0;
            books[i].x = rand() % (220 + 1 - 30) + 30;
            books[i].color = GREENID;
            break;
        }
    }
    spawned = 1;
}

// Draws game
void drawGame()
{
    fillScreen4(YELLOWID);
    drawPlayer();
    for (int i = 0; i < UGACOUNT; i++)
    {
        drawUGAs(&ugas[i]);
    }
    for (int i = 0; i < BOOKCOUNT; i++)
    {
        drawBooks(&books[i]);
    }
    drawBullet();
}

// Draw player
void drawPlayer()
{
    drawImage4(player.x, player.y, player.width, player.height, dorothyBitmap);
    if (player.dash)
    {
        drawImage4(player.x, player.y, player.width, player.height, dashBitmap);
    }
}

// Draw bullet
void drawBullet()
{
    if (bullet.active)
    {
        drawImage4(bullet.x, bullet.y, bullet.width, bullet.height, bookBitmap);
    }
    else if (!bullet.active)
    {
        // drawRect4(bullet.oldX, bullet.oldY, bullet.width, bullet.height, bgColor);
        bullet.yVel = 0;
    }
}

// Draw UGA
void drawUGAs(UGA *u)
{
    if (u->active)
    {
        drawImage4(u->x, u->y, u->width, u->height, ugaBitmap);
    }
}

// Draw books
void drawBooks(BOOK *b)
{
    if (b->active)
    {
        drawImage4(b->x, b->y, b->width, b->height, bookBitmap);
    }
}