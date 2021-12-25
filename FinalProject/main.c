//#region include statements
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "mylib.h"
#include "spritesheet.h"
#include "start.h"
#include "level1Map.h"
#include "game.h"
#include "pause.h"
#include "instructions.h"
#include "level2MapBottom.h"
#include "level2MapTop.h"
//#include "level2Map_original.h"
#include "treasure.h"
#include "lose.h"
#include "room1.h"
#include "room2.h"
#include "room3.h"
#include "room4.h"
#include "textbox.h"
#include "inventory.h"
//#include "sound.h"
#include "startMusic.h"
// #include "level1Music.h"
#include "level2Music.h"
#include "roomsMusic.h"
#include "menuSFX.h"
#include "textSFX.h"
#include "treasureSFX.h"
#include "loseMusic.h"
#include "win1.h"
#include "win2.h"
#include "win3.h"
#include "win4.h"
#include "winMusic.h"
#include "trueWin1.h"
#include "trueWin2.h"
#include "trueWin3.h"
#include "trueWin4.h"
#include "scrollBG.h"
//#endregion




// #region Prototypes//
void initialize();

// State Prototypes
void goToStart();
void start();
void startButtons();
void drawBirds();

void goToLevel1();
void level1();

void goToLevel2();
void level2();

void goToPause();
void pause();

void goToWin();
void win();

void goToInstructions();
void instructions();

void goToLose();
void lose();

void goToTreasure();
void treasure();

void goToRoom();
void room();

void goToText();
void text();

void goToInventory();
void inventory();

void goToWin();
void win();
void goToTrueWin();
void trueWin();

void goToScroll();
void scroll();


//#endregion//




//#region misc initializations
enum
{
    START,
    LEVEL1,
    LEVEL2,
    PAUSE,
    WIN,
    LOSE,
    INSTRUCTIONS,
    TREASURE,
    ROOM,
    TEXT,
    INVENTORY,
    TRUEWIN,
    SCROLL
    
};
int state;
int prevGameState;
int doorFlag;
//int keyObtained;
int treasureFlag; 
int roomCheck; //checks which room 
int roomExitFlag; //checks if exiting

int pigvOff;
int cheatCount;
// Button Variables
unsigned short buttons;
unsigned short oldButtons;
int shadowOAMIndex;
SOUND soundA;
SOUND soundB;
ANISPRITE startButton;
ANISPRITE rulesButton;
ANISPRITE birds;
int gameWin;
int gameTrueWin;
int parallaxTimer;
int scrollCheck;
int soundCheck;
//#endregion


int main()
{
    initialize();

    while (1)
    {
        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;

        // State Machine
        switch (state)
        {
        case START:
            start();
            break;
        case LEVEL1:
            level1();
            break;
        case LEVEL2:
            level2();
            break;
        case PAUSE:
            pause();
            break;
        case INSTRUCTIONS:
            instructions();
            break;
        case TREASURE:
            treasure();
            break;
        case LOSE:
            lose();
            break;
        case ROOM:
            room();
            break;
        case TEXT:
            text();
            break;
        case INVENTORY:
            inventory();
            break;
        case WIN:
            win();
            break;
        case TRUEWIN:
            trueWin();
            break;
        case SCROLL:
            scroll();
            break;
        }
    }
}

// Sets up GBA
void initialize()
{
    REG_DISPCTL = MODE0 | BG0_ENABLE; 
    setupInterrupts();
	setupSounds();
    
    buttons = BUTTONS;
    oldButtons = 0;
    prevGameState = LEVEL1;
    lives = LIVES;
    gameWin = 0;
    gameTrueWin = 0;
    //doorFlag = 0;
    // roomCheck = 0;
    // roomExitFlag = 0;
    hOff = 0; 
    vOff = 0;
    scrollCheck = 0;
    cheatCount = 0;
    soundCheck = 1;
    // pigvOff = 0;
    // screenBlock = 28;
    stopSound();  
	playSoundA(startMusic_data, startMusic_length, 1);
    goToStart();

}

// #region start state functions //
void goToStart() {
   
    // #region handle sprite initializations
    startButton.height = 8;
    startButton.width = 32;
    startButton.worldCol = 104;
    startButton.worldRow = 127;
    startButton.aniCounter = 0;
    startButton.curFrame = 0;
    startButton.numFrames = 2;
    //startButton.aniState = FRONT;
    startButton.hide = 0;

    rulesButton.height = 8;
    rulesButton.width = 32;
    rulesButton.worldCol = 104;
    rulesButton.worldRow = 143;
    rulesButton.aniCounter = 0;
    rulesButton.curFrame = 0;
    rulesButton.numFrames = 1;
    rulesButton.hide = 0;

    birds.height = 16;
    birds.width = 16;
    birds.worldCol = 190;
    birds.worldRow = 55;
    birds.curFrame = 0;
    birds.numFrames = 3;
    birds.aniState = 4;
    birds.hide = 0;
    birds.aniCounter = 0;

    roomCheck = 0;
    //#endregion
    DMANow(3, startPal, PALETTE, 256);
    REG_DISPCTL = MODE0 | BG0_ENABLE  |SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_SMALL;
    
    DMANow(3, startTiles, &CHARBLOCK[0], startTilesLen / 2);
    DMANow(3, startMap, &SCREENBLOCK[28], startMapLen / 2);

    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen /2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    // stopSound();  
	// playSoundA(startMusic_data, startMusic_length, 1);

    state = START;
}

// Runs every frame of the start state
void start() {
    startButtons();
    drawBirds();
    prevGameState = LEVEL1;
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_A) && startButton.curFrame == 0) {
        initLevel1();
        goToLevel1();
        
    } else if (BUTTON_PRESSED(BUTTON_A) && startButton.curFrame == 1) {
        goToInstructions();
    }
}

void startButtons() {
    shadowOAMIndex = 0;
    
    if(BUTTON_PRESSED(BUTTON_DOWN)) {
        startButton.curFrame = 1;
        rulesButton.curFrame = 1;
    } 
    if(BUTTON_PRESSED(BUTTON_UP)) {
        startButton.curFrame = 0;
        rulesButton.curFrame = 0;
    }
    
    
    shadowOAM[shadowOAMIndex].attr0 = (startButton.worldRow) | ATTR0_WIDE;
    shadowOAM[shadowOAMIndex].attr1 = (startButton.worldCol) | ATTR1_SMALL;
    shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(startButton.aniState * 4, startButton.curFrame * 1 + 12);
    shadowOAMIndex++;
    shadowOAM[shadowOAMIndex].attr0 = (rulesButton.worldRow) | ATTR0_WIDE;
    shadowOAM[shadowOAMIndex].attr1 = (rulesButton.worldCol) | ATTR1_SMALL;
    shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(rulesButton.aniState * 4, rulesButton.curFrame * 1 + 14);
    shadowOAMIndex++;

    
}
void drawBirds() {

    shadowOAM[shadowOAMIndex].attr0 = (birds.worldRow) | ATTR0_SQUARE;
    shadowOAM[shadowOAMIndex].attr1 = (birds.worldCol) | ATTR1_SMALL;
    shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(birds.aniState * 2, birds.curFrame * 2 + 6);
    shadowOAMIndex++;
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    if(birds.aniCounter % 15 == 0) {
        birds.curFrame = (birds.curFrame + 1) % birds.numFrames;
    }
    birds.aniCounter++;
}
//#endregion //

// #region pause state functions //
void goToPause() {
    DMANow(3, pausePal, PALETTE, 256);
    REG_DISPCTL = MODE0 | BG0_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_SMALL;
    
    DMANow(3, pauseTiles, &CHARBLOCK[0], pauseTilesLen / 2);
    DMANow(3, pauseMap, &SCREENBLOCK[28], pauseMapLen / 2);
    state = PAUSE;
}

// Runs every frame of the pause state
void pause() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_A)) {
        if (prevGameState == LEVEL1) {
            goToLevel1();
        } else if (prevGameState == LEVEL2) {
            goToLevel2();
        } else if (prevGameState == ROOM) {
            goToRoom();
        }
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        prevGameState = LEVEL1;
        initialize();
        
    }
        
}
//#endregion //

//#region instruction state functions //
void goToInstructions() {
    DMANow(3, instructionsPal, PALETTE, 256);
    REG_DISPCTL = MODE0 | BG0_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_SMALL;
    
    DMANow(3, instructionsTiles, &CHARBLOCK[0], instructionsTilesLen / 2);
    DMANow(3, instructionsMap, &SCREENBLOCK[28], instructionsMapLen / 2);
    state = INSTRUCTIONS;
}
void instructions() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_B)) {
        goToStart();

    }

}
//#endregion//
//#region treasure functinos //
void goToTreasure() {
    
    
    treasureFlag = 0;
    waitForVBlank();
    flipPage();
    REG_DISPCTL = MODE4 | BG2_ENABLE | DISP_BACKBUFFER;
    DMANow(3, treasurePal, PALETTE, 256);
    
    drawFullscreenImage4(treasureBitmap);
    waitForVBlank();
    flipPage();

    playSoundB(treasureSFX_data, treasureSFX_length, 0);
    for (int i = 0; i < treasureSFX_length * 5; i++) {
        pauseSound(0);
    }
    unpauseSound(0);

    state = TREASURE;
}
void treasure() {
    
    if (BUTTON_PRESSED(BUTTON_A)) {
        treasureFlag = 0;
        if (prevGameState == LEVEL1) {
            goToLevel1();
        
        } else if (prevGameState == LEVEL2) {
            goToLevel2();
        } else if (prevGameState == ROOM) {
            goToRoom();
        }    
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToInventory();
    }
}
//#endregion

// #region lose state functions//
void goToLose() {
    DMANow(3, losePal, PALETTE, 256);
    REG_DISPCTL = MODE0 | BG0_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_SMALL;
    
    DMANow(3, loseTiles, &CHARBLOCK[0], loseTilesLen / 2);
    DMANow(3, loseMap, &SCREENBLOCK[28], loseMapLen / 2);
    state = LOSE;
    stopSound();  
	playSoundA(loseMusic_data, loseMusic_length, 1);
}

// Runs every frame of the lose state
void lose() {
    
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_A)) {
        initialize();
    }
}
//#endregion//
// #region level 1 functions
void goToLevel1() {
    prevGameState = LEVEL1;
   
    waitForVBlank();
    REG_DISPCTL = MODE0 | BG1_ENABLE  | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(31);
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_LARGE;
   //background
    DMANow(3, level1MapPal, PALETTE, 256);
    DMANow(3, level1MapTiles, &CHARBLOCK[0], level1MapTilesLen / 2);
    DMANow(3, level1MapMap, &SCREENBLOCK[28], level1MapMapLen / 2);
    REG_BG1VOFF = vOff; 
    REG_BG1HOFF = hOff;
    //spritesheet
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen /2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    

    state = LEVEL1;
    
}

// Runs every frame of the game state
void level1() {
    updateLevel1();
    drawLevel1();
    
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToInventory();
    }
    if (BUTTON_PRESSED(BUTTON_L)) {
        cheatCount++;
        if (cheatCount % 2 == 0) {
            for (int i = 0; i < ENEMYCOUNT; i++) {
                enemy[i].rdel = 1;
                enemy[i].cdel = 1;
                enemy[i].hide = 0;
            }
        } else if (cheatCount % 2 != 0) {
           for (int i = 0; i < ENEMYCOUNT; i++) {
                enemy[i].rdel = 0;
                enemy[i].cdel = 0;
                enemy[i].hide = 1;
            
            } 
            enemyLeft = 0;
        }
        
    }
    if (lives <= 0) {
        goToLose();
    }
    if (doorFlag == 1) {
        initRoom();
        goToRoom();
        doorFlag = 0;
    }
    if (treasureFlag == 1){
        goToTreasure();
    }
    if (textCheck == 1) {
        goToText();
    }
    if (enemyLeft <= 1 && soundCheck == 1) {
        soundCheck = 0;
        playSoundB(treasureSFX_data, treasureSFX_length, 0);
        for (int i = 0; i < treasureSFX_length * 5; i++) {
            pauseSound(0);
        }
        unpauseSound(0);
    }
        
}
// #endregion //
// #region level 2 functions //
void goToLevel2() {
   
    prevGameState = LEVEL2;
   
    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
    waitForVBlank();
   
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(24) | BG_4BPP | BG_SIZE_LARGE;
   //background
    if (foregroundCheck == 1) {
        DMANow(3, level2MapBottomPal, PALETTE, 256);
        DMANow(3, level2MapBottomTiles, &CHARBLOCK[0], level2MapBottomTilesLen / 2);
        DMANow(3, level2MapBottomMap, &SCREENBLOCK[24], level2MapBottomMapLen / 2);
    }
    if (foregroundCheck == 0) {
        DMANow(3, level2MapTopPal, PALETTE, 256);
        DMANow(3, level2MapTopTiles, &CHARBLOCK[0], level2MapTopTilesLen / 2);
        DMANow(3, level2MapTopMap, &SCREENBLOCK[24], level2MapTopMapLen / 2);
    }
    
    REG_BG1VOFF = 0;
    REG_BG1HOFF = 0;
    //spritesheet
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen /2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    cheatCount = 0;

    state = LEVEL2;
}
void level2() {
    
    updateLevel2();
    drawLevel2();
    
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToInventory();
    }
    if (BUTTON_PRESSED(BUTTON_L)) {
        cheatCount++;
        if (cheatCount % 2 == 0) {
            bridgeMap = 0;
        } else if (cheatCount % 2 != 0) {
            bridgeMap = 1;
        }
    }
    if (textCheck == 1) {
        goToText();
    }
    if (doorFlag == 1) {
        initRoom();
        goToRoom();
        doorFlag = 0;
    }
    if (lives <= 0) {
        goToLose();
    }
    if (treasureFlag == 1) {
        goToTreasure();
    }
    if (gameWin == 1) {
        goToWin();
    }
    if (gameTrueWin == 1) {
        goToTrueWin();
    }
}
// #endregion //
// #region room functions //
void goToRoom() {
    prevGameState = ROOM;
    //initRoom();
    
    waitForVBlank();
    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(31);
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_SMALL;
    REG_BG1HOFF = 0;
    REG_BG1VOFF = 0;
   //background
    if (roomCheck == 0) {
        DMANow(3, room3Pal, PALETTE, 256);
        DMANow(3, room3Tiles, &CHARBLOCK[0], room3TilesLen / 2);
        DMANow(3, room3Map, &SCREENBLOCK[28], room3MapLen / 2);
    }
    if (roomCheck == 2) {
        DMANow(3, room1Pal, PALETTE, 256);
        DMANow(3, room1Tiles, &CHARBLOCK[0], room1TilesLen / 2);
        DMANow(3, room1Map, &SCREENBLOCK[28], room1MapLen / 2);

    }
    if (roomCheck == 1) {
        DMANow(3, room2Pal, PALETTE, 256);
        DMANow(3, room2Tiles, &CHARBLOCK[0], room2TilesLen / 2);
        DMANow(3, room2Map, &SCREENBLOCK[28], room2MapLen / 2);
    }
    if (roomCheck == 3) {
        if (foregroundCheck == 0 && (prevCol >= 365) && keyObtained == 0){
            textCheck = 1;
            textNum = 31;
            player.worldRow += 15;
        } else {
            DMANow(3, room4Pal, PALETTE, 256);
            DMANow(3, room4Tiles, &CHARBLOCK[0], room4TilesLen / 2);
            DMANow(3, room4Map, &SCREENBLOCK[28], room4MapLen / 2);
        }
       
    }
    
    //spritesheet
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen /2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);

    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    // stopSound(); 
	// playSoundA(roomsMusic_data, roomsMusic_length, 1);
   

    state = ROOM;
}
void room() {
    updateRoom();
    drawRoom();
    if (roomExitFlag == 1) {
        //foregroundCheck = 1;
        if (firstTime == 1) {
            initLevel2();
            firstTime = 0;
        }
        
        goToLevel2();
        roomExitFlag = 0;
    }
    
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToInventory();
    }
    if (textCheck == 1) {
        goToText();
    }
    
}
//#endregion // 
//#region textbox functions
void goToText() {
    playSoundB(textSFX_data, textSFX_length, 0);
    REG_DISPCTL = MODE4 | BG2_ENABLE | DISP_BACKBUFFER;
    DMANow(3, textboxPal, PALETTE, 256);
    flipPage();
    drawFullscreenImage4(textboxBitmap);

    waitForVBlank();
    flipPage();

    state = TEXT;
}
void text() {
    drawText();
    //flipPage();
    if (BUTTON_PRESSED(BUTTON_B)) {
        textCheck = 0;
        if (prevGameState == LEVEL1) {
            goToLevel1();
        } else if (prevGameState == LEVEL2) {
            goToLevel2();
        } else if (prevGameState == ROOM) {
            goToRoom();
        }
    }
}
//#endregion
//#region inventory functions
void goToInventory() {
    playSoundB(menuSFX_data, menuSFX_length, 0);
    waitForVBlank();
    initInventory();
    REG_DISPCTL = MODE4 | BG2_ENABLE | DISP_BACKBUFFER;
    DMANow(3, inventoryPal, PALETTE, 256);
    
    //flipPage();
    //drawFullscreenImage4(inventoryBitmap);

   

    state = INVENTORY;
}
void inventory() {
    drawInventory();
    updatePointer();
    waitForVBlank();
    flipPage();
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        
        if (prevGameState == LEVEL1) {
            goToLevel1();
        } else if (prevGameState == LEVEL2) {
            goToLevel2();
        } else if (prevGameState == ROOM) {
            goToRoom();
        }
    }
    if (scrollCheck == 1) {
        goToScroll();
    }
}
//#endregion
//#region win functions
void goToWin() {
    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | BG2_ENABLE | BG3_ENABLE | SPRITE_ENABLE;
    
    REG_BG3CNT = BG_SIZE_WIDE | BG_CHARBLOCK(1) | BG_SCREENBLOCK(15);
    DMANow(3, win1Pal, PALETTE, 256);
    DMANow(3, win4Tiles, &CHARBLOCK[1], win4TilesLen / 2);
    DMANow(3, win4Map, &SCREENBLOCK[15], win4MapLen / 2);

    REG_BG2CNT = BG_SIZE_WIDE | BG_CHARBLOCK(2)| BG_SCREENBLOCK(21);
    DMANow(3, win3Tiles, &CHARBLOCK[2], win3TilesLen / 2);
    DMANow(3, win3Map, &SCREENBLOCK[21], win3MapLen / 2);

    REG_BG1CNT = BG_SIZE_WIDE | BG_CHARBLOCK(3)| BG_SCREENBLOCK(28);
    DMANow(3, win1Tiles, &CHARBLOCK[3], win1TilesLen / 2);
    DMANow(3, win1Map, &SCREENBLOCK[28], win1MapLen / 2);

    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0)| BG_SCREENBLOCK(30);
    DMANow(3, win2Tiles, &CHARBLOCK[0], win2TilesLen / 2);
    DMANow(3, win2Map, &SCREENBLOCK[30], win2MapLen / 2);

    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;
    REG_BG1VOFF = vOff;
    REG_BG1HOFF = hOff;
    REG_BG2VOFF = vOff;
    REG_BG2HOFF = hOff;   
    REG_BG3VOFF = 0;
    REG_BG3HOFF = 0;

    waitForVBlank();

    state = WIN;

    stopSound();  
	playSoundA(winMusic_data, winMusic_length, 1);
    
}

void win() {
    player.hide = 0;
    player.aniState = RIGHT;
    shadowOAM[0].attr0 = (130) | ATTR0_SQUARE;
    shadowOAM[0].attr1 = (120) | ATTR1_SMALL;
    shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(player.aniState * 2, player.curFrame * 2);
    
    DMANow(3, shadowOAM, OAM, 128 * 4);
    
    if(player.aniCounter % 10 == 0) {
        player.curFrame = (player.curFrame + 1) % player.numFrames;
    }
    player.aniCounter++;

    parallaxTimer++;
    REG_BG1HOFF = parallaxTimer / 2;
    REG_BG2HOFF = parallaxTimer / 8;
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        initialize();
    }
}
//#endregion
//#region true win functions
void goToTrueWin() {
    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | BG2_ENABLE | BG3_ENABLE | SPRITE_ENABLE;
    
    REG_BG3CNT = BG_SIZE_WIDE | BG_CHARBLOCK(1) | BG_SCREENBLOCK(14);
    DMANow(3, trueWin1Pal, PALETTE, 256);
    DMANow(3, trueWin4Tiles, &CHARBLOCK[1], trueWin4TilesLen / 2);
    DMANow(3, trueWin4Map, &SCREENBLOCK[14], trueWin4MapLen / 2);

    REG_BG2CNT = BG_SIZE_WIDE | BG_CHARBLOCK(2)| BG_SCREENBLOCK(21);
    DMANow(3, trueWin3Tiles, &CHARBLOCK[2], trueWin3TilesLen / 2);
    DMANow(3, trueWin3Map, &SCREENBLOCK[21], trueWin3MapLen / 2);

    REG_BG1CNT = BG_SIZE_WIDE | BG_CHARBLOCK(3)| BG_SCREENBLOCK(28);
    DMANow(3, trueWin2Tiles, &CHARBLOCK[3], trueWin2TilesLen / 2);
    DMANow(3, trueWin2Map, &SCREENBLOCK[28], trueWin2MapLen / 2);

    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0)| BG_SCREENBLOCK(30);
    DMANow(3, trueWin1Tiles, &CHARBLOCK[0], trueWin1TilesLen / 2);
    DMANow(3, trueWin1Map, &SCREENBLOCK[30], trueWin1MapLen / 2);

    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;
    REG_BG1VOFF = vOff;
    REG_BG1HOFF = hOff;
    REG_BG2VOFF = vOff;
    REG_BG2HOFF = hOff;   
    REG_BG3VOFF = vOff;
    REG_BG3HOFF = hOff;

    waitForVBlank();

    state = TRUEWIN;

    stopSound();  
	playSoundA(winMusic_data, winMusic_length, 1);
    

}
void trueWin() {
    player.hide = 0;
    //player.aniState = RIGHT;
    shadowOAM[0].attr0 = (50) | ATTR0_SQUARE;
    shadowOAM[0].attr1 = (100) | ATTR1_MEDIUM;
    shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(16, player.curFrame * 4);
    
    DMANow(3, shadowOAM, OAM, 128 * 4);
    
    if(player.aniCounter % 10 == 0) {
        player.curFrame = (player.curFrame + 1) % player.numFrames;
    }
    player.aniCounter++;

    parallaxTimer++;
    REG_BG1HOFF = parallaxTimer / 2;
    REG_BG2HOFF = parallaxTimer / 5;
    REG_BG3HOFF = parallaxTimer / 8;
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        initialize();
    }
}
//#endregion
//#region scroll functions
void goToScroll() {
    playSoundB(menuSFX_data, menuSFX_length, 0);
    waitForVBlank();
    REG_DISPCTL = MODE4 | BG2_ENABLE | DISP_BACKBUFFER;
    DMANow(3, scrollBGPal, PALETTE, 256);
    
    state = SCROLL;
}
void scroll() {
    drawFullscreenImage4(scrollBGBitmap);
    waitForVBlank();
    flipPage();
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        scrollCheck = 0;
        if (prevGameState == LEVEL1) {
            goToLevel1();
        } else if (prevGameState == LEVEL2) {
            goToLevel2();
        } else if (prevGameState == ROOM) {
            goToRoom();
        }
    }
    if (BUTTON_PRESSED(BUTTON_B)) {
        scrollCheck = 0;
        goToInventory();
    }
}
//#endregion