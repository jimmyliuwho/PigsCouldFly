#include <stdlib.h>
#include <stdio.h>
#include "mylib.h"
#include "game.h"
#include "room1_collisionMap.h"
#include "room2_collisionMap.h"
#include "room3_collisionMap.h"
#include "room4_collisionMap.h"
#include "roomsMusic.h"
#include "level2Music.h"
#include "forestMusic.h"
#include "treasureSFX.h"
OBJ_ATTR shadowOAM[128];
ANISPRITE player;
ANISPRITE npc;

int roomCheck;
int houseCheck;
int roomExitFlag;
unsigned char* collisionMap;
// int shadowOAMIndex = 0;
// int treasureOpened = 0;
SOUND soundA;
SOUND soundB;
int havePotion;
int bridgeMap;
int gaveFlowers;
int haveEggs;


//#region room functions
void initRoom(){
    houseCheck = 0;
    npc.hide = 1;
    initPlayer3();
    initNPC();
    
    stopSound(); 
	playSoundA(roomsMusic_data, roomsMusic_length, 1);
}
void updateRoom(){
    if (roomCheck == 0) {
        collisionMap = room3_collisionMapBitmap;
    }
    if (roomCheck == 1) {
        collisionMap = room2_collisionMapBitmap;
    }
    if (roomCheck == 2) {
        collisionMap = room1_collisionMapBitmap;

    }
    if (roomCheck == 3) {
        collisionMap = room4_collisionMapBitmap;
    }
    updatePlayer3();

}
void drawRoom(){
    shadowOAMIndex = 0;
    drawPlayer3();
    drawNPCRoom();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

}
//#endregion
//#region player functions
void initPlayer3(){
    player.width = 16;
    player.height = 16;
    player.rdel = 1;
    player.cdel = 1;
    player.hide = 0;
    if (firstTime == 1) {
        player.worldCol = 131;
        player.worldRow = 42;
    } else {
        player.worldCol = 120;
        player.worldRow = 140;
    }
    
    player.aniCounter = 0;
    player.curFrame = 0;
    player.numFrames = 3;
    player.aniState = LEFT; 
}
void drawPlayer3() {
    if (shadowOAMIndex >= 127){
        return;
    }
   if (player.hide) {
        shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
        shadowOAMIndex++;
    } else {
        shadowOAM[shadowOAMIndex].attr0 = ((player.worldRow)) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = ((player.worldCol)) | ATTR1_SMALL;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(player.aniState * 2, player.curFrame * 2);
        shadowOAMIndex++;
    }
}
void updatePlayer3(){
        //#region directional button controls //
    
    
    if(BUTTON_HELD(BUTTON_UP)) {
        if (player.worldRow - player.rdel >= 0
            && collisionMap[OFFSET(player.worldCol, player.worldRow - player.rdel, ROOMWIDTH)] 
            && collisionMap[OFFSET(player.worldCol + player.width - 1, player.worldRow - player.rdel, ROOMWIDTH)]) {


            player.worldRow -= player.rdel;
            
        }
    }
    if(BUTTON_HELD(BUTTON_DOWN)) {
        if ((player.worldRow + player.rdel + player.height <= ROOMHEIGHT) &&
            collisionMap[OFFSET(player.worldCol, player.worldRow + player.height+player.rdel - 1, ROOMWIDTH)] && 
            collisionMap[OFFSET(player.worldCol + player.width - 1, player.worldRow + player.height+player.rdel - 1, ROOMWIDTH)]) {

            player.worldRow += player.rdel;

        }
    }
    if(BUTTON_HELD(BUTTON_LEFT)) {
        if ((player.worldCol + player.cdel >= 0) &&
            collisionMap[OFFSET(player.worldCol - player.cdel, player.worldRow, ROOMWIDTH)] && 
            collisionMap[OFFSET(player.worldCol - player.cdel, player.worldRow + player.height - 1, ROOMWIDTH)]){

     
            player.worldCol -= player.cdel;

        }
    }
    if(BUTTON_HELD(BUTTON_RIGHT)) {
        if ((player.worldCol + player.cdel + player.width <= ROOMWIDTH) &&
            collisionMap[OFFSET(player.worldCol + player.width +  player.cdel - 1, player.worldRow, ROOMWIDTH)] && 
            collisionMap[OFFSET(player.worldCol + player.width + player.cdel - 1, player.worldRow + player.height - 1, ROOMWIDTH)]) {

            player.worldCol += player.cdel;

        }
    }

    //#endregion //

    //collision w/ exit
    if (collisionMap[OFFSET(player.worldCol, player.worldRow, ROOMWIDTH)] == 2) {
        stopSound();
        if (foregroundCheck == 1) {
            playSoundA(level2Music_data, level2Music_length, 1);
        } else if (foregroundCheck == 0) {
             playSoundA(forestMusic_data, forestMusic_length, 1);
        }
        
        
        roomExitFlag = 1;
        player.worldCol = prevCol;
        player.worldRow = prevRow + 15;
        
    }

    //talk to npc
    if (collision(player.worldCol, player.worldRow, player.width, player.height,
            npc.worldCol, npc.worldRow, npc.width, npc.height) && BUTTON_HELD(BUTTON_A)) {
            textCheck = 1;

        if (roomCheck == 0) { //old man house
            textNum = 3;  
        }
        if (roomCheck == 3 || roomCheck == 2 || roomCheck == 1) {

            textNum = houseCheck;
            if (textNum == 9 || textNum == 11 || textNum == 15 || textNum == 17) {
                playSoundB(treasureSFX_data, treasureSFX_length, 0);
                    for (int i = 0; i < treasureSFX_length * 5; i++) {
                        pauseSound(0);
                    }
                    unpauseSound(0);
            }
        }
        player.worldRow += 15;
    }
    
    
    
    animatePlayer();
}
//#endregion
//#region npc functions
void initNPC() {
    npc.width = 16;
    npc.height = 16;
   
    
    
    if (roomCheck == 0) {
        npc.worldCol = 80;
        npc.worldRow = 42;
        npc.hide = 0;
    }
    if (roomCheck == 1) {
        npc.hide = 0;
    }
    if (roomCheck == 2) {
        npc.hide = 0;

    }
    if (roomCheck == 3) {
       
        npc.hide = 0;
    }
}
void drawNPCRoom() {
    
    if (npc.hide) {
        shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
        shadowOAMIndex++;
    } else {
        
        if (roomCheck == 0) { // draw old man
            shadowOAM[shadowOAMIndex].attr0 = (npc.worldRow) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (npc.worldCol) | ATTR1_SMALL;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(0, 16);
            shadowOAMIndex++;
        } 
        if (roomCheck == 1) {
            if ((prevCol >= 460)) { // draws flower girl
                if (haveFlowers == 0) {
                    houseCheck = 19;  
                }
                if (haveFlowers == 1) {
                    houseCheck = 20;
                    gaveFlowers = 1;
                }
                npc.worldCol = 90;
                npc.worldRow = 50;
                shadowOAM[shadowOAMIndex].attr0 = (npc.worldRow) | ATTR0_SQUARE;
                shadowOAM[shadowOAMIndex].attr1 = (npc.worldCol) | ATTR1_SMALL;
                shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(2, 18);
                shadowOAMIndex++;
            } else if ((prevCol >= 300) && (prevCol <= 320)) { // draws random guy
                houseCheck = 21;
                npc.worldCol = 180;
                npc.worldRow = 100;
                shadowOAM[shadowOAMIndex].attr0 = (npc.worldRow) | ATTR0_SQUARE;
                shadowOAM[shadowOAMIndex].attr1 = (npc.worldCol) | ATTR1_SMALL;
                shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(2, 20);
                shadowOAMIndex++;
            }  
            else if (prevRow <= 235) { // draws random woman
                houseCheck = 23;
                npc.worldCol = 180;
                npc.worldRow = 30;
                shadowOAM[shadowOAMIndex].attr0 = (npc.worldRow) | ATTR0_SQUARE;
                shadowOAM[shadowOAMIndex].attr1 = (npc.worldCol) | ATTR1_SMALL;
                shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(2, 16);
                shadowOAMIndex++;
            }  
            else {
                npc.hide = 1;
            }
            
        }
        if (roomCheck == 2) {
            if ((prevRow >= 350) && (prevRow <= 360)) { // draws random boy
                houseCheck = 25;
                npc.worldCol = 90;
                npc.worldRow = 50;
                shadowOAM[shadowOAMIndex].attr0 = (npc.worldRow) | ATTR0_SQUARE;
                shadowOAM[shadowOAMIndex].attr1 = (npc.worldCol) | ATTR1_SMALL;
                shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(2, 22);
                shadowOAMIndex++;
            } else if ((prevRow <= 328) && (prevRow >= 318)) { // draws random guy
                houseCheck = 27;
                npc.worldCol = 30;
                npc.worldRow = 20;
                shadowOAM[shadowOAMIndex].attr0 = (npc.worldRow) | ATTR0_SQUARE;
                shadowOAM[shadowOAMIndex].attr1 = (npc.worldCol) | ATTR1_SMALL;
                shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(2, 20);
                shadowOAMIndex++;
            }  
            else if ((prevCol <= 185) && (prevRow >= 428)) { // draws random woman
                houseCheck = 29;
                npc.worldCol = 120;
                npc.worldRow = 70;
                shadowOAM[shadowOAMIndex].attr0 = (npc.worldRow) | ATTR0_SQUARE;
                shadowOAM[shadowOAMIndex].attr1 = (npc.worldCol) | ATTR1_SMALL;
                shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(2, 16);
                shadowOAMIndex++;
            }  
            else {
                npc.hide = 1;
            }
            
        }
        if (roomCheck == 3) { 
            if ((prevRow - 190) <= 10) { //draw green shirt guy
                if (redApple == 1 && goldApple == 1 && blueApple == 1) {
                  
                    houseCheck = 9;
                    bridgeMap = 1;
                } else {
                    houseCheck = 8;
                }

                npc.worldCol = 120;
                npc.worldRow = 40;
                shadowOAM[shadowOAMIndex].attr0 = (npc.worldRow) | ATTR0_SQUARE;
                shadowOAM[shadowOAMIndex].attr1 = (npc.worldCol) | ATTR1_SMALL;
                shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(0, 24);
                shadowOAMIndex++;
            } else if ((prevRow - 350) <= 10 && (prevCol >= 415)){ //blue house kid
                if (gaveFlowers == 0) {
                    houseCheck = 10;
                } else if (gaveFlowers == 1) {
                    
                    houseCheck = 11;
                    bluePass = 1;
                }
                
                npc.worldCol = 200;
                npc.worldRow = 20;
                shadowOAM[shadowOAMIndex].attr0 = (npc.worldRow) | ATTR0_SQUARE;
                shadowOAM[shadowOAMIndex].attr1 = (npc.worldCol) | ATTR1_SMALL;
                shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(2, 22);
                shadowOAMIndex++;
            
            } else if ((prevRow - 350) <= 10 && (prevCol <= 80)){ //chicken house woman
                if (chickensLeft > 2) {
                    houseCheck = 12;
                }
                else {
                    haveEggs = 1;
                    houseCheck = 13;
                }
                npc.worldCol = 120;
                npc.worldRow = 20;
                shadowOAM[shadowOAMIndex].attr0 = (npc.worldRow) | ATTR0_SQUARE;
                shadowOAM[shadowOAMIndex].attr1 = (npc.worldCol) | ATTR1_SMALL;
                shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(0, 18);
                shadowOAMIndex++;
            
            } else if (foregroundCheck == 0 && (prevCol >= 365) && keyObtained == 1){ //magic house girl
                havePotion = 1;
                if (haveRelic == 1 && skull == 1 && haveReaperCloth == 1) {
                   
                    houseCheck = 15;
                    empirePass = 1;
                } else {
                    houseCheck = 14; 
                }
                
                npc.worldCol = 100;
                npc.worldRow = 20;
                shadowOAM[shadowOAMIndex].attr0 = (npc.worldRow) | ATTR0_SQUARE;
                shadowOAM[shadowOAMIndex].attr1 = (npc.worldCol) | ATTR1_SMALL;
                shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(0, 20);
                shadowOAMIndex++;
            
            } 
            else if (foregroundCheck == 0 && (prevCol <= 95)){ //red house guy
                if (haveEggs == 0) {
                    houseCheck = 16;
                } else if (haveEggs == 1) {
                   
                    houseCheck = 17;
                    redPass = 1;
                }
                npc.worldCol = 200;
                npc.worldRow = 50;
                shadowOAM[shadowOAMIndex].attr0 = (npc.worldRow) | ATTR0_SQUARE;
                shadowOAM[shadowOAMIndex].attr1 = (npc.worldCol) | ATTR1_SMALL;
                shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(0, 22);
                shadowOAMIndex++;
            
            } 
            else {
                npc.hide = 1;
            }
        }
    } 
    

}
//#endregion
