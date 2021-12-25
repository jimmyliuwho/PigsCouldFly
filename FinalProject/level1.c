#include <stdlib.h>
#include <stdio.h>
#include "mylib.h"
#include "game.h"
#include "level1_collisionMap.h"
#include "treasure.h"
#include "level1Music.h"
OBJ_ATTR shadowOAM[128];
ANISPRITE player;
ANISPRITE enemy[ENEMYCOUNT];
ANISPRITE hearts[LIVES];

ANISPRITE npc;
unsigned char* collisionMap;

int hOff;
int vOff;
//checks interaction with the ladder
int ladderCheck = 0;
//tracks sprite oam index
int shadowOAMIndex;
int lives;
int textCheck;
int enemyLeft;
int doorFlag = 0;
int treasureFlag = 0;
int keyObtained;
int textNum;
int firstTime;
SOUND soundA;
SOUND soundB;




// #region level 1 functions ------------------------------------------------- //
void initLevel1() {
    // Place screen on map
    vOff = 300;
    hOff = 0;
    lives = LIVES;
    enemyLeft = ENEMYCOUNT;
    doorFlag = 0;
    textCheck = 0;
    ladderCheck = 0;
    firstTime = 1;
    havePotion = 0;
  
    goldApple = 0;
    blueApple = 0;
    redApple = 0;
    skull = 0;
    treasureFlag = 0;
    bridgeMap = 0;
    gameWin = 0;
    haveFlowers = 0;
    gaveFlowers = 0;
    haveEggs = 0;
    haveRelic = 0;
    haveReaperCloth = 0;
    initPlayer1();
    initEnemy();
    initHearts();
    treasureFlag = 0;
    keyObtained = 0;
    stopSound();  
	playSoundA(level1Music_data, level1Music_length, 1);
    
   
}
void updateLevel1() {
    updatePlayer1();
    updateEnemy();
    
}
void drawLevel1() {
    shadowOAMIndex = 5;
    drawHearts();
    drawPlayer();
    drawNPC();
    drawEnemy();
    
    
    waitForVBlank();
   
    DMANow(3, shadowOAM, OAM, 128 * 4);
    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;
}
void initHearts() {
    for (int i = 0; i < LIVES; i++){
        hearts[i].width = 8;
        hearts[i].height = 8;
        hearts[i].hide = 0;
        
    }
}
void drawHearts() {
    
    int tempCol = 180;
    for (int i = 0; i < LIVES; i++){
        if (hearts[i].hide) {
                shadowOAM[i].attr0 |= ATTR0_HIDE;
                //shadowOAMIndex++;
        } else {
            shadowOAM[i].attr0 = 5 | ATTR0_SQUARE;
            shadowOAM[i].attr1 = tempCol | ATTR1_TINY;
            shadowOAM[i].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 30);
            //shadowOAMIndex++;
            tempCol += 10;
        }
    }
}
//#endregion 
//#region player functions -----------------------------------------

void initPlayer1() {
    player.width = 16;
    player.height = 16;
    player.rdel = 1;
    player.cdel = 1;
    
    player.worldCol = STARTCOL;
    player.worldRow = STARTROW;
    player.aniCounter = 0;
    player.curFrame = 0;
    player.numFrames = 3;
    player.aniState = FRONT; 
    player.hide = 0;

    npc.width = 16;
    npc.height = 16;
    npc.worldCol = STARTCOL + 15;
    npc.worldRow = STARTROW - 50;
    npc.hide = 0;
    npc.aniState = 0;
    npc.curFrame = 14;
    npc.numFrames = 1;
}
void drawPlayer() {
   if (player.hide) {
        shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
        shadowOAMIndex++;
    } else {
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (player.worldRow - vOff)) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (player.worldCol - hOff)) | ATTR1_SMALL;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(player.aniState * 2, player.curFrame * 2);
        shadowOAMIndex++;
    }
    
}
void drawNPC() {
    if ((npc.worldRow - vOff + npc.height >= 0) && (npc.worldCol + npc.width - hOff >= 0) 
        && npc.worldRow - vOff <= SCREENHEIGHT && npc.worldCol - hOff <= SCREENWIDTH) {
            npc.hide = 0;
            if (npc.hide) {
                shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
                shadowOAMIndex++;
            } else {
                shadowOAM[120].attr0 = (ROWMASK & (npc.worldRow - vOff)) | ATTR0_SQUARE;
                shadowOAM[120].attr1 = (COLMASK & (npc.worldCol - hOff)) | ATTR1_SMALL;
                shadowOAM[120].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(0, 16);
                shadowOAMIndex++;
            }
    }
    else {
        npc.hide = 1;
    }
}
void updatePlayer1() {
    //#region directional button controls //
    collisionMap = level1_collisionMapBitmap;
    if(BUTTON_HELD(BUTTON_UP)) {
        if (player.worldRow - player.rdel >= 0
            && collisionMap[OFFSET(player.worldCol, player.worldRow - player.rdel, MAPWIDTH)] 
            && collisionMap[OFFSET(player.worldCol + player.width - 1, player.worldRow - player.rdel, MAPWIDTH)]) {


            player.worldRow -= player.rdel;
            

            if (vOff > 0 && (player.worldRow - vOff) <= (SCREENHEIGHT / 2)) {
                vOff--;
            }
        }
        

    }
    if(BUTTON_HELD(BUTTON_DOWN)) {

        if ((player.worldRow + player.rdel + player.height <= MAPHEIGHT) &&
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
    //#endregion //
    //play dead 
    if(BUTTON_HELD(BUTTON_B)) {
        player.aniState = PLAYDEAD - 1;
        player.curFrame = 0;
        
    }
    //#region collision checks
    //check collision with ladder
    if (collisionMap[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 2) {
       // waitForVBlank();
        hideSprites();
        waitForVBlank();
        
        if (ladderCheck % 2 == 0) { // goes to passageway
            hOff = 200;
            vOff = 200;
            player.worldCol = 288;
            player.worldRow = 275;
        } else if (ladderCheck % 2 == 1) {
            hOff = 0;
            vOff = 0;
            player.worldCol = 64;
            player.worldRow = 36;
        }
        ladderCheck++;
        waitForVBlank();
        
    }
    //collision w/ treasure 
    if (collisionMap[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 3 && BUTTON_PRESSED(BUTTON_A)) {
        hideSprites();
        waitForVBlank();
        keyObtained = 1;
        treasureFlag = 1;
        
     
        
    }
    //collision w/ old man
    if (collision(player.worldCol, player.worldRow, player.width, player.height,
        npc.worldCol, npc.worldRow, npc.width, npc.height) && BUTTON_HELD(BUTTON_A)) {
        textCheck = 1;
        player.worldRow += 15;
        textNum = 1;
    }
    //collision w/ enemy
    for (int i = 0; i < ENEMYCOUNT; i++){
        if (enemy[i].hide == 0 && collision(player.worldCol, player.worldRow, player.width, player.height,
        enemy[i].worldCol, enemy[i].worldRow, enemy[i].width, enemy[i].height)) {
            lives--;
            hearts[lives].hide = 1;
            //moves enemy in cases when enemy hits player too close to start point
            if ((player.worldCol - STARTCOL) <= 32 && ((player.worldCol - STARTCOL) >= 0) || ((STARTCOL - player.worldCol) <= 32) && ((STARTCOL - player.worldCol >= 0)) &&
            ((player.worldRow - STARTROW) <= 32) && ((player.worldRow - STARTROW) >= 0) || ((STARTROW - player.worldRow) <= 32) && ((STARTROW - player.worldRow) >= 0)){
                enemy[i].worldCol = STARTCOL;
                enemy[i].worldRow = STARTROW - 100;
            }
            player.worldCol = STARTCOL;
            player.worldRow = STARTROW;
            vOff = 300;
            hOff = 0;
           
            hideSprites();
            waitForVBlank();
           
        }
    }
    // collision w/ lava
    if (collisionMap[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 5) {
            lives--;
            hearts[lives].hide = 1;
            player.worldCol = STARTCOL;
            player.worldRow = STARTROW;
            vOff = 300;
            hOff = 0;
            hideSprites();
            waitForVBlank();
    }
    //checks door
    if ((collisionMap[OFFSET(player.worldCol, player.worldRow, MAPWIDTH)] == 4) && enemyLeft <= 1) {
        doorFlag = 1;
        
    }
    //#endregion //
    animatePlayer();
}
void animatePlayer() {

    // Set previous state to current state
    player.prevAniState = player.aniState;
    player.aniState = IDLE;

    // Change the animation frame every 20 frames of gameplay
    if(player.aniCounter % 10 == 0) {
        player.curFrame = (player.curFrame + 1) % player.numFrames;
    }

    // Control movement and change animation state
    if(BUTTON_HELD(BUTTON_UP))
        player.aniState = BACK;
    if(BUTTON_HELD(BUTTON_DOWN))
        player.aniState = FRONT;
    if(BUTTON_HELD(BUTTON_LEFT))
        player.aniState = LEFT;
    if(BUTTON_HELD(BUTTON_RIGHT))
        player.aniState = RIGHT;

    // If the player aniState is idle, frame is player standing
    if (player.aniState == IDLE) {
        player.curFrame = 0;
        player.aniCounter = 0;
        player.aniState = player.prevAniState;
        //soundB.isPlaying = 0;

     } 
    else {
        player.aniCounter++;
        //soundB.isPlaying = 1;
    }
}
//#endregion//
//#region enemy functions -----------------------------------------
void initEnemy() {
    
    for (int i = 0; i < ENEMYCOUNT; i++) {
        enemy[i].width = 16;
        enemy[i].height = 16;
        enemy[i].rdel = 1;
        enemy[i].cdel = 1;
        enemy[i].aniCounter = 0;
        enemy[i].numFrames = 3;
        enemy[i].curFrame = 0;
        enemy[i].hide = 0;
        if (i == 0) {
            enemy[i].worldCol = 40;
            enemy[i].worldRow = 40;
            enemy[i].aniState = FRONT;
        }
        if (i == 1) { 
            enemy[i].worldCol = 40;
            enemy[i].worldRow = 300;
            enemy[i].aniState = FRONT;
        }
        if (i == 2) {
            enemy[i].worldCol = 255;
            enemy[i].worldRow = 55;
            enemy[i].aniState = FRONT;
        }
        if (i == 3) {
            enemy[i].worldCol = 460;
            enemy[i].worldRow = 275;
            enemy[i].aniState = FRONT;
        }
        if (i == 4) {
            enemy[i].worldCol = 195;
            enemy[i].worldRow = 460;
            enemy[i].aniState = FRONT;
        }
        if (i == 5) {
            enemy[i].worldCol = 115;
            enemy[i].worldRow = 170;
            enemy[i].aniState = FRONT;
        }
    }
}
void updateEnemy(){
   
    

    
    for (int i = 0; i < ENEMYCOUNT; i++) {
        enemy[i].prevAniState = enemy[i].aniState;
        enemy[i].aniState = IDLE;
        // Change the animation frame every 20 frames of gameplay
        if(enemy[i].aniCounter % 10 == 0) {
            enemy[i].curFrame = (enemy[i].curFrame + 1) % enemy[i].numFrames;
        }
        //#region enemy pseudo AI
        if((player.aniState != PLAYDEAD - 1) && (enemy[i].worldCol - player.worldCol < 70) && (enemy[i].worldCol - player.worldCol >= 0)
            && collisionMap[OFFSET(enemy[i].worldCol - enemy[i].cdel, enemy[i].worldRow, MAPWIDTH)] 
            && collisionMap[OFFSET(enemy[i].worldCol - enemy[i].cdel, enemy[i].worldRow + enemy[i].height - 1, MAPWIDTH)]) {
            enemy[i].worldCol -= enemy[i].cdel; //left towards player
            enemy[i].aniState = BACK;
        }
        if((player.aniState != PLAYDEAD - 1) && (player.worldCol - enemy[i].worldCol < 70) && (player.worldCol - enemy[i].worldCol >= 0)
            && collisionMap[OFFSET(enemy[i].worldCol + enemy[i].width +  enemy[i].cdel - 1, enemy[i].worldRow, MAPWIDTH)] 
            && collisionMap[OFFSET(enemy[i].worldCol + enemy[i].width + enemy[i].cdel - 1, enemy[i].worldRow + enemy[i].height - 1, MAPWIDTH)]) {
            enemy[i].worldCol += enemy[i].cdel; //right towards player
            enemy[i].aniState = FRONT;
            
        }
        if((player.aniState != PLAYDEAD - 1) && (enemy[i].worldRow - player.worldRow < 70) && (enemy[i].worldRow - player.worldRow >= 0)
            && collisionMap[OFFSET(enemy[i].worldCol, enemy[i].worldRow - enemy[i].rdel, MAPWIDTH)] 
            && collisionMap[OFFSET(enemy[i].worldCol + enemy[i].width - 1, enemy[i].worldRow - enemy[i].rdel, MAPWIDTH)]) {
            enemy[i].worldRow -= enemy[i].rdel; //up towards player
            enemy[i].aniState = BACK;
        }
        if((player.aniState != PLAYDEAD - 1) && (player.worldRow - enemy[i].worldRow < 70) && (player.worldRow - enemy[i].worldRow >= 0)
            && collisionMap[OFFSET(enemy[i].worldCol, enemy[i].worldRow + enemy[i].height+enemy[i].rdel - 1, MAPWIDTH)] 
            && collisionMap[OFFSET(enemy[i].worldCol + enemy[i].width - 1, enemy[i].worldRow + enemy[i].height+enemy[i].rdel - 1, MAPWIDTH)]) {
            enemy[i].worldRow += enemy[i].rdel; //down towards player
            enemy[i].aniState = FRONT;
        }
        
        if((player.aniState == PLAYDEAD - 1) && (enemy[i].worldCol - player.worldCol < 75) && (enemy[i].worldCol - player.worldCol >= 0)
            && collisionMap[OFFSET(enemy[i].worldCol + enemy[i].width +  enemy[i].cdel - 1, enemy[i].worldRow, MAPWIDTH)] 
            && collisionMap[OFFSET(enemy[i].worldCol + enemy[i].width + enemy[i].cdel - 1, enemy[i].worldRow + enemy[i].height - 1, MAPWIDTH)]) {
                enemy[i].worldCol += enemy[i].cdel; //right away from player
                enemy[i].aniState = LEFT;
        } 
        if((player.aniState == PLAYDEAD - 1) && (player.worldCol - enemy[i].worldCol < 75) && (player.worldCol - enemy[i].worldCol >= 0)
            && collisionMap[OFFSET(enemy[i].worldCol - enemy[i].cdel, enemy[i].worldRow, MAPWIDTH)] 
            && collisionMap[OFFSET(enemy[i].worldCol - enemy[i].cdel, enemy[i].worldRow + enemy[i].height - 1, MAPWIDTH)]) {
                enemy[i].worldCol -= enemy[i].cdel; //left away from player
                enemy[i].aniState = RIGHT;
        }
        if((player.aniState == PLAYDEAD - 1) && (enemy[i].worldRow - player.worldRow < 75) && (enemy[i].worldRow - player.worldRow >= 0)
            && collisionMap[OFFSET(enemy[i].worldCol, enemy[i].worldRow + enemy[i].height+enemy[i].rdel - 1, MAPWIDTH)] 
            && collisionMap[OFFSET(enemy[i].worldCol + enemy[i].width - 1, enemy[i].worldRow + enemy[i].height+enemy[i].rdel - 1, MAPWIDTH)]) {
                enemy[i].worldRow += enemy[i].rdel; //down away from player
                enemy[i].aniState = LEFT;
        }
        if((player.aniState == PLAYDEAD - 1) && (player.worldRow - enemy[i].worldRow < 75) && (player.worldRow - enemy[i].worldRow >= 0)
            && collisionMap[OFFSET(enemy[i].worldCol, enemy[i].worldRow - enemy[i].rdel, MAPWIDTH)] 
            && collisionMap[OFFSET(enemy[i].worldCol + enemy[i].width - 1, enemy[i].worldRow - enemy[i].rdel, MAPWIDTH)]) {
                enemy[i].worldRow -= enemy[i].rdel; //up away from player
                enemy[i].aniState = RIGHT;
        }
        //#endregion
        //checks if enemies are on top of each other
        for (int j = 0; j < ENEMYCOUNT; j++){
           
            if (j != i && collision(enemy[i].worldCol, enemy[i].worldRow, enemy[i].width, enemy[i].height,
            enemy[j].worldCol, enemy[j].worldRow, enemy[j].width, enemy[j].height)) {
                if (enemy[j].worldRow - enemy[i].worldRow < 0) {
                    enemy[i].worldRow += 2;
                } else {
                    enemy[i].worldRow -= 2;
                }
                
            }   
            
        }
        //collision w/ lava
        if (enemy[i].hide == 0 && collisionMap[OFFSET(enemy[i].worldCol, enemy[i].worldRow, MAPWIDTH)] == 5) {
            enemy[i].hide = 1;
            enemyLeft--;
        }

        if (enemy[i].aniState == IDLE) {
            enemy[i].curFrame = 0;
            enemy[i].aniCounter = 0;
            enemy[i].aniState = enemy[i].prevAniState;
        } 
        else {
            enemy[i].aniCounter++;
        }
        
    }

}
void drawEnemy(){
    for (int i = 0; i < ENEMYCOUNT; i++) {
        if ((enemy[i].worldRow - vOff + enemy[i].height >= 0) && (enemy[i].worldCol + enemy[i].width - hOff >= 0) 
        && enemy[i].worldRow - vOff <= SCREENHEIGHT && enemy[i].worldCol - hOff <= SCREENWIDTH) {
            if (enemy[i].hide) {
                shadowOAM[90 + i].attr0 |= ATTR0_HIDE;
                shadowOAMIndex++;
            } else {
                shadowOAM[90 + i].attr0 = (ROWMASK & (enemy[i].worldRow - vOff)) | ATTR0_SQUARE;
                shadowOAM[90 + i].attr1 = (COLMASK & (enemy[i].worldCol - hOff)) | ATTR1_SMALL;
                shadowOAM[90 + i].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(enemy[i].aniState * 2, enemy[i].curFrame * 2 + 6);
                shadowOAMIndex++;
            }
        }
    }
        
}


//#endregion//
 