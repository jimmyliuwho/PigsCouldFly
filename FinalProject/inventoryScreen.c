#include <stdlib.h>
#include <stdio.h>
#include "mylib.h"
#include "game.h"
#include "font.h"
#include "text.h"
#include "inventory.h"
#include "pointer.h"
#include "key.h"
#include "goldApple.h"
#include "blueApple.h"
#include "redApple.h"
#include "skull.h"
#include "flower.h"
#include "potion.h"
#include "menuSFX.h"
#include "scroll.h"
#include "scrollBG.h"
#include "egg.h"
#include "relic.h"
#include "reaperCloth.h"
ANISPRITE pointer;
int firstCol = 94;
int firstRow = 56;
int colDistance = 48;
int rowDistance = 40;
int potionUses = 3;
int blueApple;

//int position;
//position 0 = top left
void initInventory() {
    //position = 0;
    initPointer();
    DMANow(3, inventoryPal, PALETTE, 256);
}
void initPointer() {
    pointer.width = 8;
    pointer.height = 8;
    pointer.worldCol = firstCol;
    pointer.worldRow = firstRow;
}
void drawInventory(){
    drawFullscreenImage4(inventoryBitmap);
    drawPointer();    
    drawItems();
   

    drawItemText();
}
//#region pointer functions
void drawPointer() {
    drawImage4(pointer.worldCol, pointer.worldRow, pointer.width, pointer.height, pointerBitmap);
}
void updatePointer(){
    if (BUTTON_PRESSED(BUTTON_RIGHT)){
        if (pointer.worldCol < (firstCol + colDistance + colDistance)) {
            pointer.worldCol += colDistance;
        }      
    }
    if (BUTTON_PRESSED(BUTTON_DOWN)) {
        if (pointer.worldRow < (firstRow + rowDistance + rowDistance)) {
            pointer.worldRow += rowDistance;
        }
    }
    if (BUTTON_PRESSED(BUTTON_UP)) {
        if (pointer.worldRow > firstRow && pointer.worldCol >= firstCol) {
            pointer.worldRow -= rowDistance;
        }
    }
    if (BUTTON_PRESSED(BUTTON_LEFT)) {
        if (pointer.worldCol > firstCol && pointer.worldRow <= (firstRow + rowDistance)) {
            pointer.worldCol -= colDistance;
        }
        else if (pointer.worldRow > (firstRow + rowDistance) && pointer.worldCol > 0){
            pointer.worldCol -= colDistance ;

        }
    }
    //checking bridge map
    if (pointer.worldCol == (firstCol - (colDistance)) && pointer.worldRow == (firstRow + (2 * rowDistance)) 
        && bridgeMap == 1 && BUTTON_PRESSED(BUTTON_A)) {
            scrollCheck = 1;
    }
    //using the potion
    if (pointer.worldCol == (firstCol - (2 * colDistance)) && pointer.worldRow == (firstRow + (2 * rowDistance)) 
        && havePotion == 1 && BUTTON_PRESSED(BUTTON_A)) {
      
        if (lives < LIVES) {
            if (potionUses > 0) {
                potionUses--;
                playSoundB(menuSFX_data, menuSFX_length, 0);
                lives = LIVES;
                for (int i = 0; i < LIVES; i++) {
                    hearts[i].hide = 0;
                }
            }
            
            
        }
        
    }

}
//#endregion
//#region item functions
void drawItems() {
    if (keyObtained == 1) {
        drawImage4(104, 32, 32, 32, keyBitmap);
    }
    if (haveEggs == 1) {
        drawImage4(104, 72, 32, 32, eggBitmap);
    }
    if (haveRelic == 1) {
        drawImage4(152, 72, 32, 32, relicBitmap);
    }
    if (goldApple == 1) {
        drawImage4(200, 112, 32, 32, goldAppleBitmap);
    }
    if (blueApple == 1) {
        drawImage4(152, 112, 32, 32, blueAppleBitmap);
    }
    if (redApple == 1) {
        drawImage4(104, 112, 32, 32, redAppleBitmap);
    }
    if (skull == 1) {
        drawImage4(152, 32, 32, 32, skullBitmap);
    }
    if (haveFlowers == 1) {
        drawImage4(200, 32, 32, 32, flowerBitmap);
    }
    if (havePotion == 1) {
        drawImage4(8, 112, 32, 32, potionBitmap);
    }
    if (bridgeMap == 1) {
        drawImage4(56, 112, 32, 32, scrollBitmap);
    }
    if (haveReaperCloth == 1) {
        drawImage4(200, 72, 32, 32, reaperClothBitmap);
    }
}
void drawItemText(){
    if (pointer.worldCol == firstCol && pointer.worldRow == firstRow && keyObtained == 1) {
        drawString4(8, 152, "Cabin Key", 7);
    }
    else if (pointer.worldCol == firstCol && pointer.worldRow == (firstRow + (rowDistance)) && haveEggs == 1) {
        drawString4(8, 152, "Eggs", 7);
    }
    else if (pointer.worldCol == (firstCol + colDistance) && pointer.worldRow == (firstRow + (rowDistance)) && haveRelic == 1) {
        drawString4(8, 152, "Ancient Relic", 7);
    }
    else if (pointer.worldCol == (firstCol + colDistance + colDistance) && pointer.worldRow == (firstRow + (rowDistance)) && haveReaperCloth == 1) {
        drawString4(8, 152, "Reaper Cloth", 7);
    }
    else if (pointer.worldCol == (firstCol + (2 * colDistance)) && pointer.worldRow == firstRow && haveFlowers == 1) {
        drawString4(8,152, "Blue Hydrangeas", 7);
    }
    else if (pointer.worldCol == (firstCol + (2 * colDistance)) && pointer.worldRow == (firstRow + (2 * rowDistance)) && goldApple == 1) {
        drawString4(8, 152, "Golden Apple", 7);
    } 
    else if (pointer.worldCol == (firstCol + (colDistance)) && pointer.worldRow == (firstRow + (2 * rowDistance)) && blueApple == 1) {
        drawString4(8, 152, "Blue Apple", 7);
    }
    else if (pointer.worldCol == (firstCol) && pointer.worldRow == (firstRow + (2 * rowDistance)) && redApple == 1) {
        drawString4(8, 152, "Red Apple", 7);
    }
    else if (pointer.worldCol == (firstCol + (colDistance)) && pointer.worldRow == firstRow && skull == 1) {
        drawString4(8,152, "Skull", 7);
    }
    else if (pointer.worldCol == (firstCol - (colDistance)) && pointer.worldRow == (firstRow + (2 * rowDistance)) && bridgeMap == 1) {
         drawString4(8,152, "Bridge Map (Press A)", 7);
    }
    else if (pointer.worldCol == (firstCol - (2 * colDistance)) && pointer.worldRow == (firstRow + (2 * rowDistance)) && havePotion == 1) {
        drawString4(8,152, "Health Potion (Press A) Uses Left:", 7);
        if (potionUses == 3) {
            drawString4(220, 152, "3", 7);
        } else if (potionUses == 2) {
            drawString4(220, 152, "2", 7);
        } else if (potionUses == 1) {
            drawString4(220, 152, "1", 7);
        } else if (potionUses == 0) {
            drawString4(220, 152, "0", 7);
        }
    }
    else {
        drawString4(8, 152, "???", 7);
    }

}
//#endregion