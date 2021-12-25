#include <stdlib.h>
#include <stdio.h>
#include "mylib.h"
#include "game.h"
#include "level2Top_collisionMap.h"
#include "level2Bottom_collisionMap.h"
#include "level2Music.h"
#include "level2MapBottom.h"
#include "level2MapTop.h"
#include "forestMusic.h"
#include "treasureSFX.h"
OBJ_ATTR shadowOAM[128];
unsigned char* collisionMap;
ANISPRITE player;
ANISPRITE foreground[2];
ANISPRITE arrow[2];
ANISPRITE chicken[CHICKENCOUNT];
ANISPRITE ghost;
ANISPRITE playerMagic;
ANISPRITE ghostMagic;
ANISPRITE ghostHealthBar;
int chickensLeft;
int screenBlock;
int hOff;
int vOff;
int lives;
int prevRow;
int prevCol;
SOUND soundA;
SOUND soundB;
int arrayAnswer[] = {3,1,1,2,3,3,2};
int arrayGuess[7];


    // important for checking which section of map you are on
// #region booleans
int foregroundCheck;
int arrayIndex;
int hitPanel;
int doorFlag;
int roomCheck;
int magicPressed;
int magicDistance;
int canUseMagic;
int treasureFlag;
int goldApple;
int blueApple;
int redApple;
int ghostMovement;
int ghostLives;
int ghostCanShoot;
int ghostCounter;
int skull;
int gameWin;
int haveFlowers;
int gaveFlowers;
int potionUses;
int haveEggs;
int havePotion;
int haveReaperCloth;
int haveRelic;
int redPass;
int bluePass;
int empirePass;
int bridgeMap;
// #endregion

void initLevel2(){
    vOff = 352;
    hOff = 120;
    //init foreground
    foregroundCheck = 1;
    foreground[0].height = 32;
    foreground[0].width = 32;
    foreground[0].worldCol = 64;
    foreground[0].worldRow = 36;
    foreground[1].height = 32;
    foreground[1].width = 32;
    foreground[1].worldCol = 400;
    foreground[1].worldRow = 36;
    //init arrow
    arrow[0].width = 16;
    arrow[0].height = 16;
    arrow[1].width = 16;
    arrow[1].height = 16;
    arrow[0].hide = 1;
    arrow[1].hide = 1;

    doorFlag = 0;
    
    arrayIndex = 0;
    for (int i = 0; i < 7; i++) {
        arrayGuess[i] = 0;
    }
    
    hitPanel = 1;
    chickensLeft = CHICKENCOUNT;
    initPlayerMagic();
    magicPressed = 0;
    canUseMagic = 0;
    goldApple = 0;
    blueApple = 0;
    redApple = 0;
    skull = 0;
    treasureFlag = 0;
    ghostMovement = 0;
    ghostLives = GHOSTHEALTH;
    ghostCounter = 1;
    ghostCanShoot = 0;
    gameWin = 0;
    haveFlowers = 0;
    gaveFlowers = 0;
    haveEggs = 0;
    havePotion = 0;
    potionUses = 3;
    haveReaperCloth = 0;
    haveRelic = 0;
    redPass = 0;
    bluePass = 0;
    empirePass = 0;
    bridgeMap = 0;
    

    initPlayer2();
   
    initChicken();
    initGhost();
    initGhostMagic();
    stopSound();  
	playSoundA(level2Music_data, level2Music_length, 1);

}
void updateLevel2(){
    if (foregroundCheck == 1) {
        collisionMap = level2Bottom_collisionMapBitmap;
        updateChicken();
    }
    if (foregroundCheck == 0) {
        collisionMap = level2Top_collisionMapBitmap;
        updateGhost();
        updateGhostMagic();
    }
    updatePlayer2();
    updatePlayerMagic();
    
    //initMapNPC();
    
}
void drawLevel2(){
    shadowOAMIndex = 7;
    drawPlayer();
    //draws the sliver of the arch for overlay
     drawHearts();
    if (foregroundCheck == 1) {
        drawForeground();
        drawChicken();
        drawArrow(3);
        
    } 
    if (foregroundCheck == 0) {
        drawArrow(1);
        drawGhost();
        drawGhostMagic();
    }
    drawPlayerMagic();
    
   
    waitForVBlank();
   
    DMANow(3, shadowOAM, OAM, 128 * 4);
    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;
}
void drawForeground(){
    for (int i = 0; i < 2; i++) {
        if (foreground[i].hide) {
                shadowOAM[i + 5].attr0 |= ATTR0_HIDE;
                //shadowOAMIndex++;
        } else {
            if ((foreground[i].worldRow - vOff + foreground[i].height >= 0) && (foreground[i].worldCol + foreground[i].width - hOff >= 0) 
                && foreground[i + 5].worldRow - vOff <= SCREENHEIGHT && foreground[i].worldCol - hOff <= SCREENWIDTH) {
                    shadowOAM[i + 5].attr0 = (ROWMASK & (foreground[i].worldRow - vOff)) | ATTR0_SQUARE;
                    shadowOAM[i + 5].attr1 = (COLMASK & (foreground[i].worldCol - hOff)) | ATTR1_MEDIUM;
                    shadowOAM[i + 5].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(0, 26);  
            } 
        } 
    }
    
}
void initPlayer2(){
    player.width = 16;
    player.height = 16;
    player.rdel = 1;
    player.cdel = 1;
    
    player.worldCol = 250;
    player.worldRow = 465;
    prevCol = player.worldCol;
    prevRow = player.worldRow;
    player.aniCounter = 0;
    player.curFrame = 0;
    player.numFrames = 3;
    player.aniState = FRONT; 
}

void updatePlayer2(){

    
    //#region directional controls
    if(BUTTON_HELD(BUTTON_UP)) {
        if (
             collisionMap[OFFSET(player.worldCol, player.worldRow - player.rdel, MAPWIDTH)] 
            && collisionMap[OFFSET(player.worldCol + player.width - 1, player.worldRow - player.rdel, MAPWIDTH)]) {


            player.worldRow -= player.rdel;
            

            if (vOff > 0 && (player.worldRow - vOff) <= (SCREENHEIGHT / 2)) {
                vOff--;
            }
        }
        

    }
    if(BUTTON_HELD(BUTTON_DOWN)) {

        if (
            collisionMap[OFFSET(player.worldCol, player.worldRow + player.height+player.rdel - 1, MAPWIDTH)] && 
            collisionMap[OFFSET(player.worldCol + player.width - 1, player.worldRow + player.height+player.rdel - 1, MAPWIDTH)]) {


            player.worldRow += player.rdel;
           
            if (vOff + 1 < (MAPHEIGHT - SCREENHEIGHT) && (player.worldRow - vOff) > (SCREENHEIGHT / 2)){
                 vOff++;
            }
        }
    }
    if(BUTTON_HELD(BUTTON_LEFT)) {
        if ((player.worldCol + player.cdel >= 0) &&
            collisionMap[OFFSET(player.worldCol - player.cdel, player.worldRow, MAPWIDTH)] && 
            collisionMap[OFFSET(player.worldCol - player.cdel, player.worldRow + player.height - 1, MAPWIDTH)]){

     
            player.worldCol -= player.cdel;

            
            if (hOff > 0 && (player.worldCol - hOff) <= (SCREENWIDTH / 2)){
                hOff--;
            }
        }
        
    }
    if(BUTTON_HELD(BUTTON_RIGHT)) {
        if ((player.worldCol + player.cdel + player.width <= MAPWIDTH) &&
            collisionMap[OFFSET(player.worldCol + player.width +  player.cdel - 1, player.worldRow, MAPWIDTH)] && 
            collisionMap[OFFSET(player.worldCol + player.width + player.cdel - 1, player.worldRow + player.height - 1, MAPWIDTH)]) {

            player.worldCol += player.cdel;

            

            if ((player.worldCol - hOff) > (SCREENWIDTH / 2) && hOff + 1 < (MAPWIDTH - SCREENWIDTH)){
                hOff++;   
            }
        }
        
    }
    //#endregion
    //#region DRAWS TOP OR BOTTOM the map
    if (player.worldRow + player.height >= 512) {
        foregroundCheck = 1;
        REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
        waitForVBlank();
        REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_LARGE;
    //background
        DMANow(3, level2MapBottomPal, PALETTE, 256);
        DMANow(3, level2MapBottomTiles, &CHARBLOCK[0], level2MapBottomTilesLen / 2);
        DMANow(3, level2MapBottomMap, &SCREENBLOCK[28], level2MapBottomMapLen / 2);
        REG_BG1VOFF = 0;
        REG_BG1HOFF = 0;
        
        hideSprites();
        waitForVBlank();
        DMANow(3, shadowOAM, OAM, 128 * 4);
        vOff = 0;
        player.worldRow = 25;
        //initMapNPC();
        stopSound();  
	    playSoundA(level2Music_data, level2Music_length, 1);
        
    }
    
    if (player.worldRow <= 5) {
        foregroundCheck = 0;
        REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
        waitForVBlank();
        REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_LARGE;
    //background
        DMANow(3, level2MapTopPal, PALETTE, 256);
        DMANow(3, level2MapTopTiles, &CHARBLOCK[0], level2MapTopTilesLen / 2);
        DMANow(3, level2MapTopMap, &SCREENBLOCK[28], level2MapTopMapLen / 2);
        REG_BG1VOFF = 0;
        REG_BG1HOFF = 0;
        //drawArrow(1);
        hideSprites();
        waitForVBlank();
        DMANow(3, shadowOAM, OAM, 128 * 4);
        vOff = 352;
        player.worldRow = 480;
        //initMapNPC();
        stopSound();  
	    playSoundA(forestMusic_data, forestMusic_length, 1);
        
    }
    //#endregion
    
//#region collision checks
    // checking for houses
    if (collisionMap[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 16) {
        doorVariables();
        roomCheck = 0;
        
    }
    if (collisionMap[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 13) {
        doorVariables();
        roomCheck = 2;
        
    }
    if (collisionMap[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 18) {
        doorVariables();
        roomCheck = 1;
       
    }
    //"special rooms"
    if (collisionMap[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 6) {
        doorVariables();
        roomCheck = 3;
       
    }
    //collision w/ pits
    if (collisionMap[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 11) { 
        playerHit();
    }
    //collision w/ sign
    if (foregroundCheck == 0 && collisionMap[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 17 && BUTTON_HELD(BUTTON_A)) { 
        textCheck = 1;
        textNum = 18;
    }
   
    //collision w/ color panels
    //R
    if (collisionMap[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 15) {
        if (hitPanel == 1) {
            hitPanel = 0;
            arrayGuess[arrayIndex] = 1;
            if (arrayAnswer[arrayIndex] == arrayGuess[arrayIndex]) {
                arrayIndex++;
            } else {
                arrayIndex = 0;
                for (int i = 0; i < 7; i++) {
                arrayGuess[i] = 0;
                }
                playerHit();
            }
        }
        
    }
    //G
    else if (collisionMap[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 14) {
        if (hitPanel == 1) {
            hitPanel = 0;
            arrayGuess[arrayIndex] = 2;
            if (arrayAnswer[arrayIndex] == arrayGuess[arrayIndex]) {
                arrayIndex++;
            } else {
                arrayIndex = 0;
                for (int i = 0; i < 7; i++) {
                    arrayGuess[i] = 0;
                }
                playerHit(); 
            }
        }
        
    }
    //B
    else if (collisionMap[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 5) {
        if (hitPanel == 1) {
            hitPanel = 0;
            arrayGuess[arrayIndex] = 3;
            if (arrayAnswer[arrayIndex] == arrayGuess[arrayIndex]) {
                arrayIndex++;
            } else {
                arrayIndex = 0;
                for (int i = 0; i < 7; i++) {
                    arrayGuess[i] = 0;
                }
                playerHit();
            }
        } 
    }
    else {
        hitPanel = 1;
    }
    //collision w/ the statue
    if (collisionMap[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 8 && foregroundCheck == 1 && BUTTON_HELD(BUTTON_A)) {
        canUseMagic = 1;
        textCheck = 1;
        textNum = 5;
    }
    //collision w/ sigil
    if (collisionMap[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 21 && foregroundCheck == 0 
        && BUTTON_HELD(BUTTON_A) && canUseMagic == 0) {
        textCheck = 1;
       
        textNum = 6;
    } else if (collisionMap[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 21 && foregroundCheck == 0 
        && BUTTON_HELD(BUTTON_A) && canUseMagic == 1) {
        canUseMagic = 2; // allows player to shoot
        playSoundB(treasureSFX_data, treasureSFX_length, 0);
        for (int i = 0; i < treasureSFX_length * 5; i++) {
            pauseSound(0);
        }
        unpauseSound(0);
        textCheck = 1;
        textNum = 7;
    }
    //collision w/ skull
    if (collisionMap[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 3 && foregroundCheck == 1 && BUTTON_PRESSED(BUTTON_A)) {
        
        treasureFlag = 1;
        skull = 1;
    }
      //collision w/ flowers
    if (collisionMap[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 23 && BUTTON_PRESSED(BUTTON_A)) { 
        treasureFlag = 1;
        haveFlowers = 1;

    }
    //collision with normal win exit
    if (collisionMap[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 19 
        && foregroundCheck == 0 && bridgeMap == 1) {
        gameWin = 1;

    }
    //collision w/ true win exit
    if (collisionMap[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 20 && foregroundCheck == 0 && empirePass == 1) {
        gameTrueWin = 1;

    }
    //collision w/ blue tree
     if (collisionMap[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 10 && foregroundCheck == 1 && BUTTON_PRESSED(BUTTON_A)) {
        if (bluePass == 0) {
            textCheck = 1;
            textNum = 22;
        } else if (bluePass == 1) {
            blueApple = 1;
            treasureFlag = 1;
        }
    }
    //collision w/ red tree
     if (collisionMap[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 9 && foregroundCheck == 0 && BUTTON_PRESSED(BUTTON_A)) {
        if (redPass == 0) {
            textCheck = 1;
            textNum = 22;
        } else if (redPass == 1) {
            redApple = 1;
            treasureFlag = 1;
        }
    }
    //collision w/ relic
     if (collisionMap[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 4 && foregroundCheck == 0 && BUTTON_PRESSED(BUTTON_A)) {
        haveRelic = 1;
        treasureFlag = 1;
    }
    //collision w/ billboard
     if (collisionMap[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 22 && foregroundCheck == 1 && BUTTON_PRESSED(BUTTON_A)) {
        textCheck = 1;
        textNum = 32;
    }
//#endregion//
    animatePlayer();
}
// what happens when player enters door
void doorVariables() {
    pauseSound(0);
    //foregroundCheck = 0;
    doorFlag = 1;
    prevCol = player.worldCol;
    prevRow = player.worldRow;
}
//what happens when player is hit / falls / loses lives
void playerHit() {
    lives--;
    hearts[lives].hide = 1;
    hideSprites();
    waitForVBlank();
    player.worldRow = 480;
    player.worldCol = 250;
    hOff = 120;
    vOff = 352;
}
// drwas arrow on ground
void drawArrow(int x) {
    for (int i = 0; i < 2; i++) {
        if (x == 1) {
            arrow[0].worldCol = 72;
            arrow[0].worldRow = 488;
            arrow[1].worldCol = 408;
            arrow[1].worldRow = 488;
            
        }
        if (x == 3) {
            arrow[0].worldCol = 72;
            arrow[0].worldRow = 15;
            arrow[1].worldCol = 408;
            arrow[1].worldRow = 15;
        }
        
    
        if ((arrow[i].worldRow - vOff + arrow[i].height >= 0) && (arrow[i].worldCol + arrow[i].width - hOff >= 0) 
        && arrow[i].worldRow - vOff <= SCREENHEIGHT && arrow[i].worldCol - hOff <= SCREENWIDTH) {
            shadowOAM[110].attr0 = (ROWMASK & (arrow[i].worldRow - vOff)) | ATTR0_SQUARE;
            shadowOAM[110].attr1 = (COLMASK & (arrow[i].worldCol - hOff)) | ATTR1_SMALL;
            shadowOAM[110].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(x, 30);
            shadowOAMIndex++;
        }
        
    }
   
}

//#region chicken functions
void initChicken(){
    for (int i = 0; i < CHICKENCOUNT; i++) {
        chicken[i].width = 16;
        chicken[i].height = 16;
        chicken[i].rdel = 2;
        chicken[i].cdel = 2;
        chicken[i].aniCounter = 0;
        chicken[i].numFrames = 3;
        chicken[i].curFrame = 0;
        chicken[i].hide = 0;
        chicken[i].aniState = BACK;
        if (i == 0) {
            chicken[i].worldCol = 40;
            chicken[i].worldRow = 400;
        }
        if (i == 1) { 
            chicken[i].worldCol = 310;
            chicken[i].worldRow = 240;
            chicken[i].aniState = FRONT;
        }
        if (i == 2) {
            chicken[i].worldCol = 207;
            chicken[i].worldRow = 408;
            chicken[i].aniState = FRONT;
        }
        if (i == 3) {
            chicken[i].worldCol = 72;
            chicken[i].worldRow = 175;
            chicken[i].aniState = FRONT;
        }
        if (i == 4) {
            chicken[i].worldCol = 406;
            chicken[i].worldRow = 135;
            chicken[i].aniState = FRONT;
        }
       
    }

}
void updateChicken(){

    for (int i = 0; i < CHICKENCOUNT; i++) {
        
        chicken[i].prevAniState = chicken[i].aniState;
        chicken[i].aniState = IDLE;
        // Change the animation frame every 10 frames of gameplay
        if(chicken[i].aniCounter % 10 == 0) {
            chicken[i].curFrame = (chicken[i].curFrame + 1) % chicken[i].numFrames;
        }
        int rowDif = player.worldRow - chicken[i].worldRow;
        int colDif = player.worldCol - chicken[i].worldCol;
        if (player.aniState == FRONT || player.aniState == BACK) {
            if (rowDif >= 0) { //up away from player
                if (rowDif <= 45) {
                    if( collisionMap[OFFSET(chicken[i].worldCol, chicken[i].worldRow - chicken[i].rdel, MAPWIDTH)] 
                    && collisionMap[OFFSET(chicken[i].worldCol + chicken[i].width - 1, chicken[i].worldRow - chicken[i].rdel, MAPWIDTH)]) {
                      
                        if (BUTTON_HELD(BUTTON_UP)) {
                            if (chicken[i].worldRow - 8 <= 85 
                            || (collisionMap[OFFSET(chicken[i].worldCol, chicken[i].worldRow - 8, MAPWIDTH)] == 0)) {
                                stuck(3);
                                chicken[i].aniState = BACK;
                            } else {
                                chicken[i].worldRow -= chicken[i].rdel;
                                chicken[i].aniState = FRONT;
                            }
                        }
                    }
        
                }
            } else { // down away from player
                rowDif *= -1;
                if (rowDif <= 45) {
                    if(collisionMap[OFFSET(chicken[i].worldCol, chicken[i].worldRow + chicken[i].height+chicken[i].rdel - 1, MAPWIDTH)] 
                    && collisionMap[OFFSET(chicken[i].worldCol + chicken[i].width - 1, chicken[i].worldRow + chicken[i].height+chicken[i].rdel - 1, MAPWIDTH)]) {
                        
                        if (BUTTON_HELD(BUTTON_DOWN)) {
                            if (chicken[i].worldRow + 8 >= MAPHEIGHT 
                            || (collisionMap[OFFSET(chicken[i].worldCol, chicken[i].worldRow + 8, MAPWIDTH)] == 0)) {
                                stuck(4);
                                chicken[i].aniState = FRONT;
                            } else {
                                chicken[i].worldRow += chicken[i].rdel;
                                chicken[i].aniState = BACK;
                            }
                        }
                    }
                }
            }
        }
        if (player.aniState == LEFT || player.aniState == RIGHT) {
            if (colDif >= 0) {
                if (colDif <= 45) {
                    if(collisionMap[OFFSET(chicken[i].worldCol - chicken[i].cdel, chicken[i].worldRow, MAPWIDTH)] 
                    && collisionMap[OFFSET(chicken[i].worldCol - chicken[i].cdel, chicken[i].worldRow + chicken[i].height - 1, MAPWIDTH)]) {
                     
                        if (BUTTON_HELD(BUTTON_LEFT)) {
                            if (chicken[i].worldCol - 8 <= 0 
                            || (collisionMap[OFFSET(chicken[i].worldCol - 8, chicken[i].worldRow, MAPWIDTH)] == 0)) {
                                stuck(1);
                                chicken[i].aniState = FRONT;
                            } else {
                                chicken[i].worldCol -= chicken[i].cdel;
                                chicken[i].aniState = BACK;
                            }
                            
                        }
                    }
                }
            } else {
                colDif *= -1;
                if (colDif <= 45) {
                    if(collisionMap[OFFSET(chicken[i].worldCol + chicken[i].width +  chicken[i].cdel - 1, chicken[i].worldRow, MAPWIDTH)] 
                    && collisionMap[OFFSET(chicken[i].worldCol + chicken[i].width + chicken[i].cdel - 1, chicken[i].worldRow + chicken[i].height - 1, MAPWIDTH)]) {
                        
                        if (BUTTON_HELD(BUTTON_RIGHT)) {
                            if (chicken[i].worldCol + 8 >= MAPWIDTH 
                            || (collisionMap[OFFSET(chicken[i].worldCol + 8, chicken[i].worldRow, MAPWIDTH)] == 0)) {
                                stuck(2);
                                chicken[i].aniState = BACK;
                            } else {
                                chicken[i].worldCol += chicken[i].cdel;
                                chicken[i].aniState = FRONT; 
                            }
                            
                        }
                    } 
                }

            }
        }
        
        if (collisionMap[OFFSET(chicken[i].worldCol, chicken[i].worldRow, MAPWIDTH)] == 12) {
            if (chicken[i].cdel != 0 && chicken[i].rdel != 0) {
                chickensLeft--;
                chicken[i].worldRow += 12;
                chicken[i].cdel = 0;
                chicken[i].rdel = 0;
            }
            
            
        }
        //animation
        if (chicken[i].aniState == IDLE) {
            chicken[i].curFrame = 0;
            chicken[i].aniCounter = 0;
            chicken[i].aniState = chicken[i].prevAniState;
        } 
        else {
            chicken[i].aniCounter++;
        }
         for (int j = 0; j < CHICKENCOUNT; j++){
           
            if (j != i && collision(chicken[i].worldCol, chicken[i].worldRow, chicken[i].width, chicken[i].height,
            chicken[j].worldCol, chicken[j].worldRow, chicken[j].width, chicken[j].height) && (collisionMap[OFFSET(chicken[i].worldCol, chicken[i].worldRow, MAPWIDTH)] != 12)) {
                if (chicken[j].worldRow - chicken[i].worldRow < 0) {
                    chicken[i].worldRow += 2;
                } else {
                    chicken[i].worldRow -= 2;
                }
                
            }   
            
        }
    }
    
}

void stuck(int num) {
    // 1 = collision w/ left
    // 2 = collision w/ right
    // 3 = collision w/ up
    // 4 = collision w/ down
    for (int i = 0; i < CHICKENCOUNT; i++) {
        if (num == 1){ //hits left
            //case where up is also stuck
            if (chicken[i].worldRow - 8 <= 85 
            || (collisionMap[OFFSET(chicken[i].worldCol, chicken[i].worldRow - 8, MAPWIDTH)] == 0)) {
                chicken[i].worldCol += chicken[i].cdel;
                chicken[i].worldRow += chicken[i].rdel;
            }
            // case where down is also stuck
            if (chicken[i].worldRow + 8 >= MAPHEIGHT 
            || (collisionMap[OFFSET(chicken[i].worldCol, chicken[i].worldRow + 8, MAPWIDTH)] == 0)) { 
                chicken[i].worldCol += chicken[i].cdel;
                chicken[i].worldRow -= chicken[i].rdel;
            }
        }
        if (num == 2) {
            //case where up is also stuck
            if (chicken[i].worldRow - 8 <= 85 
            || (collisionMap[OFFSET(chicken[i].worldCol, chicken[i].worldRow - 8, MAPWIDTH)] == 0)) {
                chicken[i].worldCol -= chicken[i].cdel;
                chicken[i].worldRow += chicken[i].rdel;
            }
            //case where down is also stuck
            if (chicken[i].worldRow + 8 >= MAPHEIGHT 
            || (collisionMap[OFFSET(chicken[i].worldCol, chicken[i].worldRow + 8, MAPWIDTH)] == 0)) { 
                chicken[i].worldCol -= chicken[i].cdel;
                chicken[i].worldRow -= chicken[i].rdel;
            }
        }
        if (num == 3) {
            //case where left is also stuck
            if (chicken[i].worldCol - 8 <= 0 
            || (collisionMap[OFFSET(chicken[i].worldCol - 8, chicken[i].worldRow, MAPWIDTH)] == 0)) {
                chicken[i].worldCol += chicken[i].cdel; 
                chicken[i].worldRow += chicken[i].rdel;
            }
            //case where right is also stuck
            if (chicken[i].worldCol + 8 >= MAPWIDTH 
            || (collisionMap[OFFSET(chicken[i].worldCol + 8, chicken[i].worldRow, MAPWIDTH)] == 0)) {
                chicken[i].worldCol -= chicken[i].cdel; 
                chicken[i].worldRow += chicken[i].rdel;
            }

        }
        if (num == 4) {
            //case where left is also stuck
            if (chicken[i].worldCol - 8 <= 0 
            || (collisionMap[OFFSET(chicken[i].worldCol - 8, chicken[i].worldRow, MAPWIDTH)] == 0)) {
                chicken[i].worldCol += chicken[i].cdel; 
                chicken[i].worldRow -= chicken[i].rdel;
            }
            //case where right is also stuck
            if (chicken[i].worldCol + 8 >= MAPWIDTH 
            || (collisionMap[OFFSET(chicken[i].worldCol + 8, chicken[i].worldRow, MAPWIDTH)] == 0)) {
                chicken[i].worldCol -= chicken[i].cdel; 
                chicken[i].worldRow -= chicken[i].rdel;
            }
        }
    }
    
}
void drawChicken(){
    for (int i = 0; i < CHICKENCOUNT; i++) {
        if ((chicken[i].worldRow - vOff + chicken[i].height >= 0) && (chicken[i].worldCol + chicken[i].width - hOff >= 0) 
        && chicken[i].worldRow - vOff <= SCREENHEIGHT && chicken[i].worldCol - hOff <= SCREENWIDTH) {
            chicken[i].hide = 0;
            if (chicken[i].hide) {
                shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
                shadowOAMIndex++;
            } else {

                shadowOAM[90 + i].attr0 = (ROWMASK & (chicken[i].worldRow - vOff)) | ATTR0_SQUARE;
                shadowOAM[90 + i].attr1 = (COLMASK & (chicken[i].worldCol - hOff)) | ATTR1_SMALL;
                shadowOAM[90 + i].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(chicken[i].aniState * 2 + 4, chicken[i].curFrame * 2 + 16);

                shadowOAMIndex++;
                
            }
        } else {
            chicken[i].hide = 1;
        }

    } 
    
}
//#endregion
//#region ghost functions
void initGhost(){
    ghost.width = 32;
    ghost.height = 32;
    ghost.worldCol = 400;
    ghost.worldRow = 110;
    ghost.cdel = 1;
    ghost.aniCounter = 0;
    ghost.curFrame = 0;
    ghost.numFrames = 3;
    ghost.aniState = FRONT;
    ghost.hide = 0;
    ghostLives = GHOSTHEALTH;

    ghostHealthBar.width = 32;
    ghostHealthBar.height = 8;
    ghostHealthBar.worldCol = 400;
    ghostHealthBar.worldRow = 140;
    ghostHealthBar.cdel = 1;
    ghostHealthBar.hide = 0;

}
void drawGhost(){
    if ((ghost.worldRow - vOff + ghost.height >= 0) && (ghost.worldCol + ghost.width - hOff >= 0) 
        && ghost.worldRow - vOff <= SCREENHEIGHT && ghost.worldCol - hOff <= SCREENWIDTH) {
            
             if (ghostHealthBar.hide) {
                shadowOAM[60].attr0 |= ATTR0_HIDE;
                shadowOAMIndex++;
            } else {
                shadowOAM[60].attr0 = (ROWMASK & ((ghostHealthBar.worldRow) - vOff)) | ATTR0_WIDE;
                shadowOAM[60].attr1 = (COLMASK & (ghostHealthBar.worldCol - hOff)) | ATTR1_SMALL;
                shadowOAM[60].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(10, ghostLives + 13);
                shadowOAMIndex++;
            }
            if (ghost.hide) {
                shadowOAM[65].attr0 |= ATTR0_HIDE;
                shadowOAMIndex++;
            } else {
                shadowOAM[65].attr0 = (ROWMASK & (ghost.worldRow - vOff)) | ATTR0_SQUARE;
                shadowOAM[65].attr1 = (COLMASK & (ghost.worldCol - hOff)) | ATTR1_MEDIUM;
                shadowOAM[65].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(ghost.aniState + 10, ghost.curFrame * 4);
                shadowOAMIndex++;
            }
    }
   
    if(ghost.aniCounter % 12 == 0) {
                ghost.curFrame = (ghost.curFrame + 1) % ghost.numFrames;
            }
    
    ghost.aniCounter++;
}
void updateGhost(){
    if (ghost.worldCol >= 350 && ghostMovement == 0) { //move left
        ghost.worldCol -= ghost.cdel;
        ghostHealthBar.worldCol -= ghostHealthBar.cdel;
    }
    if (ghost.worldCol <= 350 && ghostMovement == 0) {
        ghostMovement = 1;
    }
    if (ghost.worldCol <= 450 && ghostMovement == 1) {
        ghost.worldCol += ghost.cdel;
        ghostHealthBar.worldCol += ghostHealthBar.cdel;
    }
    if (ghost.worldCol >= 450 && ghostMovement == 1) {
        ghostMovement = 0;
    }
    if (ghostLives < 0) {
        ghost.hide = 1;
        ghostHealthBar.hide = 1;
        haveReaperCloth = 1;
        treasureFlag = 1;
        ghostLives = 0;
    }

}
//#endregion

//#region magic functions

void initPlayerMagic(){
    playerMagic.width = 8;
    playerMagic.height = 16;
    playerMagic.rdel = 3;
    playerMagic.aniCounter = 0;
    playerMagic.curFrame = 0;
    playerMagic.numFrames = 3;
    playerMagic.aniState = FRONT;
    playerMagic.hide = 1;

}

void drawPlayerMagic(){
    if ((playerMagic.worldRow - vOff + playerMagic.height >= 0) && (playerMagic.worldCol + playerMagic.width - hOff >= 0) 
        && playerMagic.worldRow - vOff <= SCREENHEIGHT && playerMagic.worldCol - hOff <= SCREENWIDTH) {
        if (playerMagic.hide) {
            shadowOAM[80].attr0 |= ATTR0_HIDE;
            shadowOAMIndex++;
        } else {
            shadowOAM[80].attr0 = (ROWMASK & (playerMagic.worldRow - vOff)) | ATTR0_TALL;
            shadowOAM[80].attr1 = (COLMASK & (playerMagic.worldCol - hOff)) | ATTR1_TINY;
            shadowOAM[80].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(playerMagic.aniState + 14, playerMagic.curFrame * 2);
            shadowOAMIndex++;
        }
    }
   
    if(playerMagic.aniCounter % 5 == 0) {
        playerMagic.curFrame = (playerMagic.curFrame + 1) % playerMagic.numFrames;
    }
    
    playerMagic.aniCounter++;
}
void updatePlayerMagic(){
    
   
    if (BUTTON_PRESSED(BUTTON_B) && player.aniState  == BACK && magicPressed == 0 && canUseMagic == 2) {
        playerMagic.hide = 0;
        playerMagic.worldRow = player.worldRow - 5;
        playerMagic.worldCol = player.worldCol + 4;
        magicDistance = playerMagic.worldRow - 70;
        magicPressed = 1;
        
        
    }
    if (magicPressed == 1) {
        if (playerMagic.worldRow > magicDistance) {
             playerMagic.worldRow -= playerMagic.rdel;
        } else {
            playerMagic.hide = 1;
            magicPressed = 0;
        }
       
    }
    //shoot tree
     if ((collisionMap[OFFSET(playerMagic.worldCol, playerMagic.worldRow, MAPWIDTH)] == 2) && magicPressed == 1) {
        magicPressed = 0;
        playerMagic.hide = 1;
        treasureFlag = 1;
        goldApple = 1;
     }
     //shoot ghost
     if (collision(playerMagic.worldCol, playerMagic.worldRow, playerMagic.width, playerMagic.height,
            ghost.worldCol, ghost.worldRow, ghost.width, ghost.height) && ghost.hide == 0 && playerMagic.hide == 0) {
            magicPressed = 0;
            playerMagic.hide = 1;
            ghostLives--;
    }

}

void initGhostMagic(){
    ghostMagic.width = 8;
    ghostMagic.height = 16;
    ghostMagic.rdel = 2;
    ghostMagic.aniCounter = 0;
    ghostMagic.curFrame = 0;
    ghostMagic.numFrames = 3;
    ghostMagic.aniState = FRONT;
    ghostMagic.hide = 1;
}
void drawGhostMagic(){
     if ((ghostMagic.worldRow - vOff + ghostMagic.height >= 0) && (ghostMagic.worldCol + ghostMagic.width - hOff >= 0) 
        && ghostMagic.worldRow - vOff <= SCREENHEIGHT && ghostMagic.worldCol - hOff <= SCREENWIDTH) {
        if (ghostMagic.hide) {
            shadowOAM[50].attr0 |= ATTR0_HIDE;
            shadowOAMIndex++;
        } else {
            shadowOAM[50].attr0 = (ROWMASK & (ghostMagic.worldRow - vOff)) | ATTR0_TALL;
            shadowOAM[50].attr1 = (COLMASK & (ghostMagic.worldCol - hOff)) | ATTR1_TINY;
            shadowOAM[50].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(ghostMagic.aniState + 15, ghostMagic.curFrame * 2);
            shadowOAMIndex++;
        }
    }
   
    if(ghostMagic.aniCounter % 5 == 0) {
        ghostMagic.curFrame = (ghostMagic.curFrame + 1) % ghostMagic.numFrames;
    }
    
    ghostMagic.aniCounter++;
}
void updateGhostMagic(){
    if (ghostCounter % 20 == 0 && ghostCanShoot == 0) {
        ghostCanShoot = 1;
        ghostMagic.hide = 0;
        ghostMagic.worldRow = ghost.worldRow + 5;
        ghostMagic.worldCol = ghost.worldCol + 4;
    }
    if (ghostCanShoot == 1) {
         if (ghostMagic.worldRow < (ghost.worldRow + 80)) {
             ghostMagic.worldRow += ghostMagic.rdel;
        } else {
            ghostMagic.hide = 1;
            ghostCanShoot = 0;
        }
        
    } 
    if (collision(ghostMagic.worldCol, ghostMagic.worldRow, ghostMagic.width, ghostMagic.height,
        player.worldCol, player.worldRow, player.width, player.height) && ghostMagic.hide == 0) {
        ghostCanShoot = 0;
        ghostMagic.hide = 1;
        playerHit();
    }
    if (ghostLives > 0 || ghost.hide == 0) {
       ghostCounter++;  
    } else {
        ghostMagic.hide = 1;
        ghostCanShoot = 0;
    }
    
}
//#endregion

