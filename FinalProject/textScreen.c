#include <stdlib.h>
#include <stdio.h>
#include "mylib.h"
#include "game.h"
#include "font.h"
#include "text.h"
#include "textbox.h"
#include "menuSFX.h"
void drawText();
//KEEP TRACK OF DIALOGUE (TEXTNUM)
// 0 = no text.
// 1 = level 1 old man speech part 1
// 2 = level 1 old man speech part 2
// 3 = room 1 with old man
// 4 = room 1 with old man part 2
// 5 = statue dialogue
// 6 = sigil turned off
// 7 = sigil turned on
// 8 = green shirt sprite in main house
// 9 = green shirt after getting apples
// 10 = blue house kid before flowers
// 11 = blue house kid after flowers
// 12 = chicken house before chicken
// 13 = chicken house after getting chicken
// 14 = magic girl before items
// 15 = magic girl after items
// 16 = red house guy before items
// 17 = red house guy after items
// 18 = sign in the forest
// 19 = corner house, girl who likes flowers
// 20 = girl after getting flowers
// 21 = random guy
// 22 = tree without the pass
// 23 / 24 = random woman
// 25 = random boy
// 26 = chicken continued
// 27 / 28 = random random guy
// 29 / 30 = random woman 
// 31 = cabin is locked
// 32 = billboard
// 33 = cheat dialogue


void drawText() {
    //#region old man's dialogue
    if (textNum == 1) {
        drawString4(180, 200, "Press A for more", 2);
        drawString4(180, 235, "Old man:", 3);
        drawString4(180, 245, "What's a pig like ya doing down", 3);
        drawString4(180, 255, "here?! Yer lucky I'm vegan!", 3);
        drawString4(180, 265, "The demons aren't so kind", 3);
        drawString4(180, 275, "though ... They only enjoy fresh", 3);
        drawString4(180, 285, "meat, so maybe if ya PLAY DEAD", 3);
        drawString4(180, 295, "they'll leave ya alone. I'll", 3);
        drawString4(180, 305, "unlock the exit once the demons", 3);
        if (BUTTON_PRESSED(BUTTON_A)) {
            
            resetText();
            textNum = 2;
            return;
        }
    }
    if (textNum == 2) {
        drawString4(180, 200, "Press A for more", 2);
        drawString4(180, 235, "are gone. Ya see that LAVA over", 3);
        drawString4(180, 245, "there? Don't fall into it, but I", 3);
        drawString4(180, 255, "do wonder... maybe ya can use it", 3);
        drawString4(180, 265, "to yer advantage. Alright, enough", 3);
        drawString4(180, 275, "talk, Get on with it, porkchop!", 3);
        
        if (BUTTON_PRESSED(BUTTON_A)) {
            
            resetText();
            textNum = 33;
        }

    }
    if (textNum == 3) {
        drawString4(180, 200, "Press A for more", 2);
        drawString4(180, 235, "Old man:", 3);
        drawString4(180, 245, "Good job with those demons down", 3);
        drawString4(180, 255, "there, porkie. They sure gave me a", 3);
        drawString4(180, 265, "fright! What's that? You're lost?", 3);
        drawString4(180, 275, "Well gee, can't help ya there kid.", 3);
        drawString4(180, 285, "My dementia conveniently just set", 3);
        drawString4(180, 295, "in so I don't remember where we", 3);
        drawString4(180, 305, "are either. Bahaha! The townsfolk", 3);
        if (BUTTON_PRESSED(BUTTON_A)) {
            
            resetText();
            textNum = 4;
        }
    }
    if (textNum == 4) {
        drawString4(180, 235, "ought to know the way right?", 3);
        drawString4(180, 245, "Who are ya anyway? ...You", 3);
        drawString4(180, 255, "FORGOT!? I mean I guess I'm", 3);
        drawString4(180, 265, "one to talk BAHAHA!", 3);
        drawString4(180, 275, "...", 3);
        drawString4(180, 285, "What were we talking about?", 3);
    }
    //#endregion
    if (textNum == 5) {
        drawString4(180, 235, "The sculpture seems familiar...", 3);
        drawString4(180, 245, "You feel a sense of pride", 3);
        drawString4(180, 255, "and nostalgia looking at it.", 3);
        drawString4(180, 265, "... click!", 3);
        drawString4(180, 275, "You hear a deep rumbling in the", 3);
        drawString4(180, 285, "forest. A switch was activated.", 3);
    }
    if (textNum == 6) {
        drawString4(180, 235, "The sigil on the ground is dormant.", 3);
        drawString4(180, 245, "You can tell that it hasn't been", 3);
        drawString4(180, 255, "used in a long time.", 3);
        drawString4(180, 265, "Maybe there's something that could", 3);
        drawString4(180, 275, "turn it back...", 3);
     
    }
    if (textNum == 7) {
        drawString4(180, 235, "It seems that the sculpture turned", 3);
        drawString4(180, 245, "the sigil back on. Something in", 3);
        drawString4(180, 255, "air has changed. You can feel it", 3);
        drawString4(180, 265, "imbuing you with a sense of warmth,", 3);
        drawString4(180, 275, "as if you've experience it before.", 3);
        drawString4(180, 285, "You are now able to use magic.", 1);
    }
    if (textNum == 8) {
        drawString4(180, 235, "Hello there little fella...", 3);
        drawString4(180, 245, "OH WTF YOU CAN TALK? ", 3);
        drawString4(180, 255, "Can I help you find the way home?", 3);
        drawString4(180, 265, "Hmm well... not for free that is.", 3);
        drawString4(180, 275, "If you get a few items for me", 3);
        drawString4(180, 285, "I'll give you something useful.", 3);
        drawString4(180, 295, "Here are the things I need:", 3);
        drawString4(180, 305, "A red, blue, and golden apple.", 1);
    }
    if (textNum == 9) {
        drawString4(180, 235, "Ah I see that you have gathered", 3);
        drawString4(180, 245, "all of the apples. I knew you", 3);
        drawString4(180, 255, "could do it. As promised I", 3);
        drawString4(180, 265, "will provide you with the", 3);
        drawString4(180, 275, "necessary means of leaving town.", 3);
        drawString4(180, 285, "You received the bridge map.", 1);
        drawString4(180, 295, "Hope you find your way home.", 3);
        drawString4(180, 305, "Good day and godspeed.", 3);
        
    }
    if (textNum == 10) {
        drawString4(180, 235, "Hewwo Mr. Pigster. You see,", 3);
        drawString4(180, 245, "I willy like this girl, and she", 3);
        drawString4(180, 255, "loves blue flowers since she", 3);
        drawString4(180, 265, "has blue hair also. But I'm in", 3);
        drawString4(180, 275, "time out wight now so I can't", 3);
        drawString4(180, 285, "get any. Could you pwease", 3);
        drawString4(180, 295, "send blue flowers to my fwend.", 1);
        drawString4(180, 305, "Come back when you do pwease.", 3);
        
    }
     if (textNum == 11) {
        drawString4(180, 235, "Hewwo Mr. Pigster. Thank you", 3);
        drawString4(180, 245, "so much for sending the flowers.", 3);
        drawString4(180, 255, "...she- she doesn't like me back?", 3);
        drawString4(180, 265, "BUT I GOT HER FLOWERS!!!!", 3);
        drawString4(180, 275, "WAAAAAAAAHHHHHHHHHHHHHHHHHHHHH", 3);
        drawString4(180, 285, "The child is distracted...", 3);
        drawString4(180, 295, "You took the blue pass from him.", 1);
        
    }
    if (textNum == 12) {
        drawString4(180, 200, "Press A for more", 2);
        drawString4(180, 235, "Howdy doo fella. Haven't seen", 3);
        drawString4(180, 245, "a talkin animal before, but in", 3);
        drawString4(180, 255, "my profession, I expect the", 3);
        drawString4(180, 265, "unexpected from the animals haha.", 3);
        drawString4(180, 275, "Tell ya what mister, if you can", 3);
        drawString4(180, 285, "bring at least 3 of my chickens", 1);
        drawString4(180, 295, "back to my backyard coop, I'll.", 3);
        drawString4(180, 305, "get ya somethin worth yo time.", 3);
        if (BUTTON_PRESSED(BUTTON_A)) {
            
            resetText();
            textNum = 26;
        }
        
    }
    if (textNum == 13) {
        drawString4(180, 235, "Thanks for getting my chickens", 3);
        drawString4(180, 245, "big fella. Let me give you", 3);
        drawString4(180, 255, "some eggs for all your trouble", 3);
        drawString4(180, 265, "You received chicken eggs.", 1);
        
    }
    if (textNum == 14) {
        drawString4(180, 235, "Ahh you have found my keys from", 3);
        drawString4(180, 245, "the old man's dungeon...[pause]", 3);
        drawString4(180, 255, "Anyway... I've been trying to", 3);
        drawString4(180, 265, "make this powerful potion, but I", 3);
        drawString4(180, 275, "need the right ingredients. Bring", 3);
        drawString4(180, 285, "a skull, reaper cloth, and relic", 1);
        drawString4(180, 295, "and I'll lead you to the true way.", 3);
        drawString4(180, 305, "home. Take this potion to help.", 3);
        
    }
    if (textNum == 15) {
        drawString4(180, 235, "I knew you could do it, your maj-", 3);
        drawString4(180, 245, "I mean mister. Here is the", 3);
        drawString4(180, 255, "Empire Pass to take you up the", 3);
        drawString4(180, 265, "forest stairs. Bon voyage, sir", 3);
        drawString4(180, 275, "and I hope you may some day", 3);
        drawString4(180, 285, "recover your memories. Farewell", 3);
        drawString4(180, 295, "for now.", 3);
        
    }
    if (textNum == 16) {
        drawString4(180, 235, "Oh I am awfully hungry. You look", 3);
        drawString4(180, 245, "pretty tasty. Hey hey I'm only", 3);
        drawString4(180, 255, "kidding! But seriously though,", 3);
        drawString4(180, 265, "can you bring me something to eat?", 3);
        drawString4(180, 275, "I'll give you the red pass to pick", 3);
        drawString4(180, 285, "apples if you do.", 3);
        
    }
    if (textNum == 17) {
        drawString4(180, 235, "Oh perfect! I've been craving", 3);
        drawString4(180, 245, "a nice breakfast omelet recently.", 3);
        drawString4(180, 255, "Here ya go!", 3);
        drawString4(180, 265, "You received the Red Pass", 1);
      
    }
    if (textNum == 18) {
        drawString4(180, 235, "WARNING: Do not attempt to", 3);
        drawString4(180, 245, "step on the panels unless you", 3);
        drawString4(180, 255, "have the specific combination", 1);
        drawString4(180, 265, "from the town minister. The", 3);
        drawString4(180, 275, "wrong panel will electrocute you.", 3);
        
    }
    if (textNum == 19) {
        drawString4(180, 235, "...um hi. I don't talk to", 3);
        drawString4(180, 245, "strangers.", 3);
        
    }
    if (textNum == 20) {
        drawString4(180, 235, "Are these flowers for me?", 3);
        drawString4(180, 245, "Thank you mister piggy. They're", 3);
        drawString4(180, 255, "from the boy next door? Oh...", 1);
        drawString4(180, 265, "Maybe you can keep the flowers", 3);
        drawString4(180, 275, "then.", 3);
        
    }
    if (textNum == 21) {
        drawString4(180, 235, "You notice how there are no", 3);
        drawString4(180, 245, "townsfolk outside? Yeah well", 3);
        drawString4(180, 255, "we are all introverts. But also", 3);
        drawString4(180, 265, "according to scripture, the", 3);
        drawString4(180, 275, "creator tried making townsfolk", 3);
        drawString4(180, 285, "outside, but there were too many", 3);
        drawString4(180, 295, "bugs...Whatever that means.", 3);
        
    }
    //tree text if there is no pass
    if (textNum == 22) {
        drawString4(180, 235, "You can see colorful apples", 3);
        drawString4(180, 245, "dangling from the tree.", 3);
        drawString4(180, 255, "However, it seems like you need", 3);
        drawString4(180, 265, "the pass of the appropriate", 3);
        drawString4(180, 275, "color to be able to pick from it.", 3);
        
    }
    
    if (textNum == 23) {
        drawString4(180, 200, "Press A for more", 2);
        drawString4(180, 235, "Aww you are so cute! You remind", 3);
        drawString4(180, 245, "me of this story my mother used", 3);
        drawString4(180, 255, "to tell me as a kid. Many", 3);
        drawString4(180, 265, "years ago, the Sky King ruled", 3);
        drawString4(180, 275, "the land. The king was cruel and", 3);
        drawString4(180, 285, "selfish. To punish him, the great", 3);
        drawString4(180, 295, "wizard took away his only daughter", 3);
        drawString4(180, 305, "and put a curse on the king.", 3);
        if (BUTTON_PRESSED(BUTTON_A)) {
            resetText();
            textNum = 24;
        }
        
    }
    if (textNum == 24) {
        drawString4(180, 235, "The king shortly passed away from", 3);
        drawString4(180, 245, "his grief. It is told that the", 3);
        drawString4(180, 255, "king will one day be reincarted in", 3);
        drawString4(180, 265, "a lower being. The king will embark", 3);
        drawString4(180, 275, "on a perilous journey to redeem", 3);
        drawString4(180, 285, "himself... Yeah I know, kinda", 3);
        drawString4(180, 295, "depressing right. It definitely", 3);
        drawString4(180, 305, "scarred me as a kid. Thanks Debra.", 3);
        
    }
    if (textNum == 25) {
        drawString4(180, 235, "I'm going to be attending school", 3);
        drawString4(180, 245, "soon! I'm so excited!", 3);
        drawString4(180, 255, "... you want me to promise you", 3);
        drawString4(180, 265, "I will never sign up for a class", 3);
        drawString4(180, 275, "called CS2261?", 3);
        drawString4(180, 285, "Sir... I'm 6. That means nothing", 3);
        drawString4(180, 295, "to me", 3);
        
    }
    if (textNum == 26) {
        drawString4(180, 235, "Also, a helpful tip is to get", 3);
        drawString4(180, 245, "the chickens all the way to the", 3);
        drawString4(180, 255, "top edge of town and get them", 3);
        drawString4(180, 265, "trapped on the right side of", 3);
        drawString4(180, 275, "the sculpture. Then start walking", 3);
        drawString4(180, 285, "down and they should be tricked", 3);
        drawString4(180, 295, "into the coop from there.", 3);
        
    }
     if (textNum == 27) {
        drawString4(180, 235, "I don't know why, but I'm feeling", 3);
        drawString4(180, 245, "just so grateful today! I'm gonna", 3);
        drawString4(180, 255, "just shout out things I'm thankful", 3);
        drawString4(180, 265, "for. Thank you Zaineb, Jourdan,", 3);
        drawString4(180, 275, "Sukie, Caleb, Will for getting", 3);
        drawString4(180, 285, "me through this semester! Whew...", 3);
        drawString4(180, 295, "I don't know what took over me.", 3);
        
    }
    if (textNum == 29) {
        drawString4(180, 235, "It's forbidden to go near the", 3);
        drawString4(180, 245, "sacred tree since it is what", 3);
        drawString4(180, 255, "brings tourists to our town. But", 3);
        drawString4(180, 265, "it has been said that if the", 3);
        drawString4(180, 275, "tree is imbued with magic", 1);
        drawString4(180, 285, "then it will grant us with a", 3);
        drawString4(180, 295, "special apple.", 3);
        
    }
    if (textNum == 31) {
        drawString4(180, 235, "Cabin is locked.", 3);
        drawString4(180, 245, "A special key is required.", 1);
        
    }
    if (textNum == 32) {
        drawString4(180, 235, "Children missing!", 3);
        drawString4(180, 245, "Beware forest travellers:", 3);
        drawString4(180, 255, "A dark presence has risen again.", 3);
        drawString4(180, 265, "Without magic, we do not", 3);
        drawString4(180, 275, "stand a chance. We patiently", 3);
        drawString4(180, 285, "wait for the return of t--", 3);
        drawString4(180, 295, "The rest is torn off.", 3);
        
    }
    if (textNum == 33) {
        drawString4(180, 235, "Also just FYI in case you don't", 3);
        drawString4(180, 245, "like to have fun:", 3);
        drawString4(180, 255, "Press L to activate cheats.", 3);
        drawString4(180, 265, "Once you leave the dungeon", 3);
        drawString4(180, 275, "you can use cheats there also.", 3);
     
        
    }
    
}
void resetText() {
    REG_DISPCTL = MODE4 | BG2_ENABLE | DISP_BACKBUFFER;
    DMANow(3, textboxPal, PALETTE, 256);
    flipPage();
    drawFullscreenImage4(textboxBitmap);

    waitForVBlank();
    flipPage();
}