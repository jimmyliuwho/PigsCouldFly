#define MAPHEIGHT 512
#define MAPWIDTH 512
#define ROOMHEIGHT 160
#define ROOMWIDTH 240

#define ENEMYCOUNT 6 
#define LIVES 5
#define TREASURECOUNT 1

extern int hOff;
extern int vOff;
extern int pigvOff;
extern int screenBlock;

extern int prevGameState;
extern unsigned char* collisionMap;


extern OBJ_ATTR shadowOAM[128];


enum {FRONT, BACK, RIGHT, LEFT, IDLE, PLAYDEAD};

// #region universal -------------------------------------
void animatePlayer();
extern ANISPRITE player;
extern ANISPRITE startButton;
extern ANISPRITE rulesButton;
extern ANISPRITE birds;
extern int shadowOAMIndex;
//extern ANISPRITE treasures[TREASURECOUNT];
extern int textCheck;


extern SOUND soundA;
extern SOUND soundB;
void setupSounds();
void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void setupInterrupts();
void interruptHandler();

void pauseSound();
void unpauseSound();
void stopSound();
//#endregion

// #region level 1 ---------------------------------------
extern int ladderCheck;
extern ANISPRITE enemy[ENEMYCOUNT];
extern ANISPRITE hearts[LIVES];
extern ANISPRITE npc;
extern int lives;
extern int doorFlag;
extern int treasureFlag;
extern int keyObtained;
extern int firstTime;
extern int enemyLeft;
#define STARTCOL 50
#define STARTROW 420

void initPlayer1();
void updatePlayer1();
void drawPlayer();
void drawNPC();

void initEnemy();
void updateEnemy();
void drawEnemy();
//void animateEnemy();

void initLevel1();
void updateLevel1();
void drawLevel1();

void initHearts();
void drawHearts();
//void updateHearts();
// #endregion
// #region level 2 ---------------------------------------
#define CHICKENCOUNT 5
#define GHOSTHEALTH 10
extern int chickensLeft;
extern int foregroundCheck;
extern int prevCol;
extern int prevRow;
extern int goldApple;
extern int blueApple;
extern int redApple;
extern int skull;
extern int gameWin;
extern int gameTrueWin;

extern int haveFlowers;
extern int gaveFlowers;
extern int haveEggs;
//extern int chickensCaught;
extern int havePotion;
extern int empirePass;
extern int bluePass;
extern int redPass;
extern int haveReaperCloth;
extern int haveRelic;
extern int potionUses;
extern int bridgeMap;
extern int scrollCheck;



extern ANISPRITE chicken[CHICKENCOUNT];

extern ANISPRITE playerMagic;
extern ANISPRITE ghostMagic;
extern ANISPRITE ghost;


void initPlayer2();
void drawPlayer2(); // need second draw bc of XL background
void updatePlayer2();

void initLevel2();
void updateLevel2();
void drawLevel2();

void initChicken();
void updateChicken();
void drawChicken();

void initGhost();
void drawGhost();
void updateGhost();

void initPlayerMagic();
void drawPlayerMagic();
void updatePlayerMagic();

void initGhostMagic();
void drawGhostMagic();
void updateGhostMagic();

void initMapNPC();
void drawMapNPC();


//#endregion 
// #region rooms ---------------------------------------
    //need int check for checking which room to use????
extern int roomCheck;
extern int houseCheck;
extern int roomExitFlag;
void initPlayer3();
void drawPlayer3();
void updatePlayer3();

void initNPC();
void drawNPC();

void initRoom();
void updateRoom();
void drawRoom();
//#endregion
// #region Textbox / Dialogue ---------------------------------------
//void initText();
void drawText();
extern int textNum;
//#endregion
// #region Inventory ---------------------------------------
extern ANISPRITE pointer;
//extern whatever other items I will need
void initInventory();
void initPointer();
void drawInventory();
void drawItems();

void updatePointer();
void drawPointer();
void drawItemText();
//#endregion