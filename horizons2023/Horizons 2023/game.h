// Structs
typedef struct
{
    int x, y, oldX, oldY, vX, height, width, dash, dashLen, dashCD;
} PLAYER;

typedef struct
{
    int x, y, oldX, oldY, yVel, height, width, active, erased, time;
} BULLET;

typedef struct
{
    int x, y, oldX, oldY, vY, height, width, color, active, erased;
} UGA;

typedef struct
{
    int x, y, oldX, oldY, vY, height, width, color, active, erased;
} BOOK;

// Constants
#define UGACOUNT 10
#define BOOKCOUNT 10

// Variables
extern PLAYER player;
extern BULLET bullet;
extern UGA ugas[UGACOUNT];
extern BOOK books[BOOKCOUNT];
extern int score, lives, time;
extern unsigned short bgColor;

#define NUMCOLORS 6
enum
{
    BLACKID = (256 - NUMCOLORS),
    WHITEID,
    REDID,
    GREENID,
    YELLOWID,
    GRAYID
};
extern unsigned short colors[NUMCOLORS];

// Function prototypes
void initGame();
void initPlayer();
void initBullet();
void initUGAs();
void initBooks();
void updateGame();
void updatePlayer();
void updateBooks(BOOK *b);
void updateBullet();
void updateUGAs(UGA *u);
void newUGA();
void newBook();
void drawGame();
void drawPlayer();
void drawBullet();
void drawUGAs(UGA *u);
void drawBooks(BOOK *b);