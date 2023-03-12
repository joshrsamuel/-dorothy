#include "gba.h"
#include "mode4.h"
#include "game.h"
#include "sound.h"
#include "font.h"
#include "print.h"
#include "stdio.h"
#include "start.h"
#include "q1.h"
#include "q2.h"
#include "q3.h"
#include "q4.h"
#include "dorothy.h"
#include "win.h"
#include "lose.h"

// Function prototypes
void initialize();
void srand();
void updateHealth();
void reset();

// State prototypes
void start();
void game();
void Q1();
void Q2();
void Q3();
void Q4();
void pause();
void win();
void lose();

void goToStart();
void goToGame();
void goToQ1();
void goToQ2();
void goToQ3();
void goToQ4();
void goToPause();
void goToWin();
void goToLose();

// Text buffer
char buffer[41];

// Score buffers
char scoreBuf1[41];
char scoreBuf2[41];
char scoreBuf3[41];

// State enum and variable
enum
{
    START,
    GAME,
    PAUSE,
    WIN,
    LOSE,
    QUESTION1,
    QUESTION2,
    QUESTION3,
    QUESTION4
} state;

// Variables
u16 bgColor, buttons, oldButtons;

int rSeed, lives, time, q1c, q2c, q3c, q4c;

unsigned short colors[NUMCOLORS] = {BLACK, WHITE, RED, GREEN, YELLOW, GRAY};

// Main game loop
int main()
{

    initialize();

    while (1)
    {
        oldButtons = buttons;
        buttons = REG_BUTTONS;

        switch (state)
        {
        case START:
            start();
            break;
        case GAME:
            game();
            break;
        case QUESTION1:
            Q1();
            break;
        case QUESTION2:
            Q2();
            break;
        case QUESTION3:
            Q3();
            break;
        case QUESTION4:
            Q4();
            break;
        case PAUSE:
            pause();
            break;
        case WIN:
            win();
            break;
        case LOSE:
            lose();
            break;
        }
    }
}

// Initializes main game
void initialize()
{
    REG_DISPCTL = MODE(4) | BG_ENABLE(2) | DISP_BACKBUFFER;

    mgba_open();
    mgba_printf("Debugging Initialized");

    buttons = REG_BUTTONS;
    oldButtons = 0;
    bgColor = YELLOWID;

    REG_SOUNDCNT_X = SND_ENABLED;
    REG_SOUNDCNT_L = DMG_VOL_LEFT(5) |
                     DMG_VOL_RIGHT(5) |
                     DMG_SND1_LEFT |
                     DMG_SND1_RIGHT |
                     DMG_SND2_LEFT |
                     DMG_SND2_RIGHT |
                     DMG_SND3_LEFT |
                     DMG_SND3_RIGHT |
                     DMG_SND4_LEFT |
                     DMG_SND4_RIGHT;
    REG_SOUNDCNT_H = DMG_MASTER_VOL(2);

    goToStart();
}

// Goes to start state
void goToStart()
{
    DMANow(3, &startPal, PALETTE, startPalLen);
    unsigned short colors[NUMCOLORS] = {BLACK, WHITE, RED, GREEN, RGB(30, 26, 23), GRAY};

    for (int i = 0; i < NUMCOLORS; i++)
    {
        PALETTE[256 - NUMCOLORS + i] = colors[i];
    }

    drawFullscreenImage4(startBitmap);
    drawRect4(75, 65, 87, 30, YELLOWID);
    drawString4(92, 70, "Dorothy's", BLACKID);
    drawString4(80, 80, "Book Bonanza!", BLACKID);
    waitForVBlank();
    flipPage();
    state = START;
    rSeed = 0;
}

// Game start logic
void start()
{
    rSeed++;
    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_START))
    {
        srand(rSeed);
        goToGame();
        initGame();
    }
}

// Goes to game state
void goToGame()
{
    DMANow(3, &dorothyPal, PALETTE, dorothyPalLen / 2);
    for (int i = 0; i < NUMCOLORS; i++)
    {
        PALETTE[256 - NUMCOLORS + i] = colors[i];
    }
    REG_SND2CNT = DMG_ENV_VOL(5) | DMG_STEP_TIME(7);
    REG_SND2FREQ = NOTE_A4 | SND_RESET;
    state = GAME;
}

// Game logic
void game()
{
    updateGame();
    drawGame();

    drawString4(180, 1, "books:", BLACKID);
    sprintf(buffer, "%d", score);
    drawString4(220, 1, buffer, BLACKID);

    updateHealth();
    waitForVBlank();
    flipPage();

    if (BUTTON_PRESSED(BUTTON_START))
    {
        goToPause();
    }
    if (lives == 0)
    {
        goToLose();
    }
    if (score == 10 && q1c != 1)
    {
        goToQ1();
    }
    if (score == 20 && q2c != 1)
    {
        goToQ2();
    }
    if (score == 30 && q3c != 1)
    {
        goToQ3();
    }
    if (score == 40 && q4c != 1)
    {
        goToQ4();
    }
    time++;
}

void goToQ1()
{
    DMANow(3, &q1Pal, PALETTE, q1PalLen);
    drawFullscreenImage4(q1Bitmap);
    waitForVBlank();
    flipPage();
    state = QUESTION1;
}

void Q1()
{
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_A))
    {
        score -= 10;
        goToGame();
    }
    else if (BUTTON_PRESSED(BUTTON_B))
    {
        score++;
        q1c = 1;
        goToGame();
    }
}
void goToQ2()
{
    DMANow(3, &q2Pal, PALETTE, q2PalLen);
    drawFullscreenImage4(q2Bitmap);
    waitForVBlank();
    flipPage();
    state = QUESTION2;
}
void Q2()
{
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_A))
    {
        score -= 10;
        goToGame();
    }
    else if (BUTTON_PRESSED(BUTTON_B))
    {
        score++;
        q2c = 1;
        goToGame();
    }
}
void goToQ3()
{
    DMANow(3, &q3Pal, PALETTE, q3PalLen);
    drawFullscreenImage4(q3Bitmap);
    waitForVBlank();
    flipPage();
    state = QUESTION3;
}
void Q3()
{
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_A))
    {
        score++;
        q3c = 1;
        goToGame();
    }
    else if (BUTTON_PRESSED(BUTTON_B))
    {
        score -= 10;
        goToGame();
    }
}
void goToQ4()
{
    DMANow(3, &q4Pal, PALETTE, q4PalLen);
    drawFullscreenImage4(q4Bitmap);
    waitForVBlank();
    flipPage();
    state = QUESTION4;
}
void Q4()
{
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_A))
    {
        score -= 10;
        goToGame();
    }
    else if (BUTTON_PRESSED(BUTTON_B))
    {
        score++;
        q4c = 1;
        goToWin();
    }
}

// Goes to pause state
void goToPause()
{
    drawString4(105, 80, "Pause", BLACKID);
    waitForVBlank();
    flipPage();
    state = PAUSE;
}

// Game pause logic
void pause()
{
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START))
    {
        goToGame();
    }
    else if (BUTTON_PRESSED(BUTTON_SELECT))
    {
        reset();
        goToStart();
    }
}

// Goes to win state
void goToWin()
{
    DMANow(3, &winPal, PALETTE, winPalLen / 2);
    for (int i = 0; i < NUMCOLORS; i++)
    {
        PALETTE[256 - NUMCOLORS + i] = colors[i];
    }
    drawFullscreenImage4(winBitmap);
    drawString4(95, 118, "You Won!", REDID);
    drawString4(90, 133, "score:", REDID);
    sprintf(buffer, "%d", score);
    drawString4(130, 133, buffer, REDID);
    REG_SND2CNT = DMG_ENV_VOL(5) | DMG_STEP_TIME(7);
    REG_SND2FREQ = NOTE_C6 | SND_RESET;
    waitForVBlank();
    flipPage();
    state = WIN;
}

// Game win logic
void win()
{
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START))
    {
        reset();
        goToStart();
    }
}

// Goes to lose state
void goToLose()
{
    DMANow(3, &losePal, PALETTE, losePalLen / 2);
    for (int i = 0; i < NUMCOLORS; i++)
    {
        PALETTE[256 - NUMCOLORS + i] = colors[i];
    }
    drawFullscreenImage4(loseBitmap);
    drawString4(90, 5, "Game Over", REDID);
    REG_SND2CNT = DMG_ENV_VOL(5) | DMG_STEP_TIME(7);
    REG_SND2FREQ = NOTE_C2 | DMG_FREQ_TIMED | SND_RESET;
    waitForVBlank();
    flipPage();
    state = LOSE;
}

// Game lose logic
void lose()
{
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START))
    {
        reset();
        goToStart();
    }
}

// Reset logic
void reset()
{
    fillScreen4(BLACKID);
    waitForVBlank();
    score = 0;
    time = 0;
    q1c = 0;
    q2c = 0;
    q3c = 0;
    q4c = 0;
}

// Update logic
void updateHealth()
{
    switch (lives)
    {
    case 3:
        // Heart 1
        drawRect4(8, 5, 2, 1, REDID);
        drawRect4(11, 5, 2, 1, REDID);
        drawRect4(7, 6, 7, 1, REDID);
        drawRect4(8, 7, 5, 1, REDID);
        drawRect4(9, 8, 3, 1, REDID);
        drawRect4(10, 9, 1, 1, REDID);
        // Heart 2
        drawRect4(16, 5, 2, 1, REDID);
        drawRect4(19, 5, 2, 1, REDID);
        drawRect4(15, 6, 7, 1, REDID);
        drawRect4(16, 7, 5, 1, REDID);
        drawRect4(17, 8, 3, 1, REDID);
        drawRect4(18, 9, 1, 1, REDID);
        // Heart 3
        drawRect4(24, 5, 2, 1, REDID);
        drawRect4(27, 5, 2, 1, REDID);
        drawRect4(23, 6, 7, 1, REDID);
        drawRect4(24, 7, 5, 1, REDID);
        drawRect4(25, 8, 3, 1, REDID);
        drawRect4(26, 9, 1, 1, REDID);

        break;
    case 2:
        // Heart 1
        drawRect4(8, 5, 2, 1, REDID);
        drawRect4(11, 5, 2, 1, REDID);
        drawRect4(7, 6, 7, 1, REDID);
        drawRect4(8, 7, 5, 1, REDID);
        drawRect4(9, 8, 3, 1, REDID);
        drawRect4(10, 9, 1, 1, REDID);
        // Heart 2
        drawRect4(16, 5, 2, 1, REDID);
        drawRect4(19, 5, 2, 1, REDID);
        drawRect4(15, 6, 7, 1, REDID);
        drawRect4(16, 7, 5, 1, REDID);
        drawRect4(17, 8, 3, 1, REDID);
        drawRect4(18, 9, 1, 1, REDID);
        // Heart 3
        drawRect4(24, 5, 2, 1, bgColor);
        drawRect4(27, 5, 2, 1, bgColor);
        drawRect4(23, 6, 7, 1, bgColor);
        drawRect4(24, 7, 5, 1, bgColor);
        drawRect4(25, 8, 3, 1, bgColor);
        drawRect4(26, 9, 1, 1, bgColor);

        break;
    case 1:
        // Heart 1
        drawRect4(8, 5, 2, 1, REDID);
        drawRect4(11, 5, 2, 1, REDID);
        drawRect4(7, 6, 7, 1, REDID);
        drawRect4(8, 7, 5, 1, REDID);
        drawRect4(9, 8, 3, 1, REDID);
        drawRect4(10, 9, 1, 1, REDID);
        // Heart 2
        drawRect4(16, 5, 2, 1, bgColor);
        drawRect4(19, 5, 2, 1, bgColor);
        drawRect4(15, 6, 7, 1, bgColor);
        drawRect4(16, 7, 5, 1, bgColor);
        drawRect4(17, 8, 3, 1, bgColor);
        drawRect4(18, 9, 1, 1, bgColor);
        // Heart 3
        drawRect4(24, 5, 2, 1, bgColor);
        drawRect4(27, 5, 2, 1, bgColor);
        drawRect4(23, 6, 7, 1, bgColor);
        drawRect4(24, 7, 5, 1, bgColor);
        drawRect4(25, 8, 3, 1, bgColor);
        drawRect4(26, 9, 1, 1, bgColor);

        break;
    default:
        goToLose();
        break;
    }
}