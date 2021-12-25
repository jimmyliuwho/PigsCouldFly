	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"textScreen.c"
	.text
	.align	2
	.global	resetText
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	resetText, %function
resetText:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	push	{r4, r5, r6, lr}
	ldr	r1, .L4
	mov	r3, #256
	mov	r0, #3
	strh	r1, [r2]	@ movhi
	ldr	r4, .L4+4
	mov	r2, #83886080
	ldr	r1, .L4+8
	ldr	r5, .L4+12
	mov	lr, pc
	bx	r5
	mov	lr, pc
	bx	r4
	ldr	r0, .L4+16
	ldr	r3, .L4+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+24
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	1044
	.word	flipPage
	.word	textboxPal
	.word	DMANow
	.word	textboxBitmap
	.word	drawFullscreenImage4
	.word	waitForVBlank
	.size	resetText, .-resetText
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Press A for more\000"
	.align	2
.LC1:
	.ascii	"Old man:\000"
	.align	2
.LC2:
	.ascii	"What's a pig like ya doing down\000"
	.align	2
.LC3:
	.ascii	"here?! Yer lucky I'm vegan!\000"
	.align	2
.LC4:
	.ascii	"The demons aren't so kind\000"
	.align	2
.LC5:
	.ascii	"though ... They only enjoy fresh\000"
	.align	2
.LC6:
	.ascii	"meat, so maybe if ya PLAY DEAD\000"
	.align	2
.LC7:
	.ascii	"they'll leave ya alone. I'll\000"
	.align	2
.LC8:
	.ascii	"unlock the exit once the demons\000"
	.align	2
.LC9:
	.ascii	"are gone. Ya see that LAVA over\000"
	.align	2
.LC10:
	.ascii	"there? Don't fall into it, but I\000"
	.align	2
.LC11:
	.ascii	"do wonder... maybe ya can use it\000"
	.align	2
.LC12:
	.ascii	"to yer advantage. Alright, enough\000"
	.align	2
.LC13:
	.ascii	"talk, Get on with it, porkchop!\000"
	.align	2
.LC14:
	.ascii	"Good job with those demons down\000"
	.align	2
.LC15:
	.ascii	"there, porkie. They sure gave me a\000"
	.align	2
.LC16:
	.ascii	"fright! What's that? You're lost?\000"
	.align	2
.LC17:
	.ascii	"Well gee, can't help ya there kid.\000"
	.align	2
.LC18:
	.ascii	"My dementia conveniently just set\000"
	.align	2
.LC19:
	.ascii	"in so I don't remember where we\000"
	.align	2
.LC20:
	.ascii	"are either. Bahaha! The townsfolk\000"
	.align	2
.LC21:
	.ascii	"ought to know the way right?\000"
	.align	2
.LC22:
	.ascii	"Who are ya anyway? ...You\000"
	.align	2
.LC23:
	.ascii	"FORGOT!? I mean I guess I'm\000"
	.align	2
.LC24:
	.ascii	"one to talk BAHAHA!\000"
	.align	2
.LC25:
	.ascii	"...\000"
	.align	2
.LC26:
	.ascii	"What were we talking about?\000"
	.align	2
.LC27:
	.ascii	"The sculpture seems familiar...\000"
	.align	2
.LC28:
	.ascii	"You feel a sense of pride\000"
	.align	2
.LC29:
	.ascii	"and nostalgia looking at it.\000"
	.align	2
.LC30:
	.ascii	"... click!\000"
	.align	2
.LC31:
	.ascii	"You hear a deep rumbling in the\000"
	.align	2
.LC32:
	.ascii	"forest. A switch was activated.\000"
	.align	2
.LC33:
	.ascii	"The sigil on the ground is dormant.\000"
	.align	2
.LC34:
	.ascii	"You can tell that it hasn't been\000"
	.align	2
.LC35:
	.ascii	"used in a long time.\000"
	.align	2
.LC36:
	.ascii	"Maybe there's something that could\000"
	.align	2
.LC37:
	.ascii	"turn it back...\000"
	.align	2
.LC38:
	.ascii	"It seems that the sculpture turned\000"
	.align	2
.LC39:
	.ascii	"the sigil back on. Something in\000"
	.align	2
.LC40:
	.ascii	"air has changed. You can feel it\000"
	.align	2
.LC41:
	.ascii	"imbuing you with a sense of warmth,\000"
	.align	2
.LC42:
	.ascii	"as if you've experience it before.\000"
	.align	2
.LC43:
	.ascii	"You are now able to use magic.\000"
	.align	2
.LC44:
	.ascii	"Hello there little fella...\000"
	.align	2
.LC45:
	.ascii	"OH WTF YOU CAN TALK? \000"
	.align	2
.LC46:
	.ascii	"Can I help you find the way home?\000"
	.align	2
.LC47:
	.ascii	"Hmm well... not for free that is.\000"
	.align	2
.LC48:
	.ascii	"If you get a few items for me\000"
	.align	2
.LC49:
	.ascii	"I'll give you something useful.\000"
	.align	2
.LC50:
	.ascii	"Here are the things I need:\000"
	.align	2
.LC51:
	.ascii	"A red, blue, and golden apple.\000"
	.align	2
.LC52:
	.ascii	"Ah I see that you have gathered\000"
	.align	2
.LC53:
	.ascii	"all of the apples. I knew you\000"
	.align	2
.LC54:
	.ascii	"could do it. As promised I\000"
	.align	2
.LC55:
	.ascii	"will provide you with the\000"
	.align	2
.LC56:
	.ascii	"necessary means of leaving town.\000"
	.align	2
.LC57:
	.ascii	"You received the bridge map.\000"
	.align	2
.LC58:
	.ascii	"Hope you find your way home.\000"
	.align	2
.LC59:
	.ascii	"Good day and godspeed.\000"
	.align	2
.LC60:
	.ascii	"Hewwo Mr. Pigster. You see,\000"
	.align	2
.LC61:
	.ascii	"I willy like this girl, and she\000"
	.align	2
.LC62:
	.ascii	"loves blue flowers since she\000"
	.align	2
.LC63:
	.ascii	"has blue hair also. But I'm in\000"
	.align	2
.LC64:
	.ascii	"time out wight now so I can't\000"
	.align	2
.LC65:
	.ascii	"get any. Could you pwease\000"
	.align	2
.LC66:
	.ascii	"send blue flowers to my fwend.\000"
	.align	2
.LC67:
	.ascii	"Come back when you do pwease.\000"
	.align	2
.LC68:
	.ascii	"Hewwo Mr. Pigster. Thank you\000"
	.align	2
.LC69:
	.ascii	"so much for sending the flowers.\000"
	.align	2
.LC70:
	.ascii	"...she- she doesn't like me back?\000"
	.align	2
.LC71:
	.ascii	"BUT I GOT HER FLOWERS!!!!\000"
	.align	2
.LC72:
	.ascii	"WAAAAAAAAHHHHHHHHHHHHHHHHHHHHH\000"
	.align	2
.LC73:
	.ascii	"The child is distracted...\000"
	.align	2
.LC74:
	.ascii	"You took the blue pass from him.\000"
	.align	2
.LC75:
	.ascii	"Howdy doo fella. Haven't seen\000"
	.align	2
.LC76:
	.ascii	"a talkin animal before, but in\000"
	.align	2
.LC77:
	.ascii	"my profession, I expect the\000"
	.align	2
.LC78:
	.ascii	"unexpected from the animals haha.\000"
	.align	2
.LC79:
	.ascii	"Tell ya what mister, if you can\000"
	.align	2
.LC80:
	.ascii	"bring at least 3 of my chickens\000"
	.align	2
.LC81:
	.ascii	"back to my backyard coop, I'll.\000"
	.align	2
.LC82:
	.ascii	"get ya somethin worth yo time.\000"
	.align	2
.LC83:
	.ascii	"Thanks for getting my chickens\000"
	.align	2
.LC84:
	.ascii	"big fella. Let me give you\000"
	.align	2
.LC85:
	.ascii	"some eggs for all your trouble\000"
	.align	2
.LC86:
	.ascii	"You received chicken eggs.\000"
	.align	2
.LC87:
	.ascii	"Ahh you have found my keys from\000"
	.align	2
.LC88:
	.ascii	"the old man's dungeon...[pause]\000"
	.align	2
.LC89:
	.ascii	"Anyway... I've been trying to\000"
	.align	2
.LC90:
	.ascii	"make this powerful potion, but I\000"
	.align	2
.LC91:
	.ascii	"need the right ingredients. Bring\000"
	.align	2
.LC92:
	.ascii	"a skull, reaper cloth, and relic\000"
	.align	2
.LC93:
	.ascii	"and I'll lead you to the true way.\000"
	.align	2
.LC94:
	.ascii	"home. Take this potion to help.\000"
	.align	2
.LC95:
	.ascii	"I knew you could do it, your maj-\000"
	.align	2
.LC96:
	.ascii	"I mean mister. Here is the\000"
	.align	2
.LC97:
	.ascii	"Empire Pass to take you up the\000"
	.align	2
.LC98:
	.ascii	"forest stairs. Bon voyage, sir\000"
	.align	2
.LC99:
	.ascii	"and I hope you may some day\000"
	.align	2
.LC100:
	.ascii	"recover your memories. Farewell\000"
	.align	2
.LC101:
	.ascii	"for now.\000"
	.align	2
.LC102:
	.ascii	"Oh I am awfully hungry. You look\000"
	.align	2
.LC103:
	.ascii	"pretty tasty. Hey hey I'm only\000"
	.align	2
.LC104:
	.ascii	"kidding! But seriously though,\000"
	.align	2
.LC105:
	.ascii	"can you bring me something to eat?\000"
	.align	2
.LC106:
	.ascii	"I'll give you the red pass to pick\000"
	.align	2
.LC107:
	.ascii	"apples if you do.\000"
	.align	2
.LC108:
	.ascii	"Oh perfect! I've been craving\000"
	.align	2
.LC109:
	.ascii	"a nice breakfast omelet recently.\000"
	.align	2
.LC110:
	.ascii	"Here ya go!\000"
	.align	2
.LC111:
	.ascii	"You received the Red Pass\000"
	.align	2
.LC112:
	.ascii	"WARNING: Do not attempt to\000"
	.align	2
.LC113:
	.ascii	"step on the panels unless you\000"
	.align	2
.LC114:
	.ascii	"have the specific combination\000"
	.align	2
.LC115:
	.ascii	"from the town minister. The\000"
	.align	2
.LC116:
	.ascii	"wrong panel will electrocute you.\000"
	.align	2
.LC117:
	.ascii	"...um hi. I don't talk to\000"
	.align	2
.LC118:
	.ascii	"strangers.\000"
	.align	2
.LC119:
	.ascii	"Are these flowers for me?\000"
	.align	2
.LC120:
	.ascii	"Thank you mister piggy. They're\000"
	.align	2
.LC121:
	.ascii	"from the boy next door? Oh...\000"
	.align	2
.LC122:
	.ascii	"Maybe you can keep the flowers\000"
	.align	2
.LC123:
	.ascii	"then.\000"
	.align	2
.LC124:
	.ascii	"You notice how there are no\000"
	.align	2
.LC125:
	.ascii	"townsfolk outside? Yeah well\000"
	.align	2
.LC126:
	.ascii	"we are all introverts. But also\000"
	.align	2
.LC127:
	.ascii	"according to scripture, the\000"
	.align	2
.LC128:
	.ascii	"creator tried making townsfolk\000"
	.align	2
.LC129:
	.ascii	"outside, but there were too many\000"
	.align	2
.LC130:
	.ascii	"bugs...Whatever that means.\000"
	.align	2
.LC131:
	.ascii	"You can see colorful apples\000"
	.align	2
.LC132:
	.ascii	"dangling from the tree.\000"
	.align	2
.LC133:
	.ascii	"However, it seems like you need\000"
	.align	2
.LC134:
	.ascii	"the pass of the appropriate\000"
	.align	2
.LC135:
	.ascii	"color to be able to pick from it.\000"
	.align	2
.LC136:
	.ascii	"Aww you are so cute! You remind\000"
	.align	2
.LC137:
	.ascii	"me of this story my mother used\000"
	.align	2
.LC138:
	.ascii	"to tell me as a kid. Many\000"
	.align	2
.LC139:
	.ascii	"years ago, the Sky King ruled\000"
	.align	2
.LC140:
	.ascii	"the land. The king was cruel and\000"
	.align	2
.LC141:
	.ascii	"selfish. To punish him, the great\000"
	.align	2
.LC142:
	.ascii	"wizard took away his only daughter\000"
	.align	2
.LC143:
	.ascii	"and put a curse on the king.\000"
	.align	2
.LC144:
	.ascii	"The king shortly passed away from\000"
	.align	2
.LC145:
	.ascii	"his grief. It is told that the\000"
	.align	2
.LC146:
	.ascii	"king will one day be reincarted in\000"
	.align	2
.LC147:
	.ascii	"a lower being. The king will embark\000"
	.align	2
.LC148:
	.ascii	"on a perilous journey to redeem\000"
	.align	2
.LC149:
	.ascii	"himself... Yeah I know, kinda\000"
	.align	2
.LC150:
	.ascii	"depressing right. It definitely\000"
	.align	2
.LC151:
	.ascii	"scarred me as a kid. Thanks Debra.\000"
	.align	2
.LC152:
	.ascii	"I'm going to be attending school\000"
	.align	2
.LC153:
	.ascii	"soon! I'm so excited!\000"
	.align	2
.LC154:
	.ascii	"... you want me to promise you\000"
	.align	2
.LC155:
	.ascii	"I will never sign up for a class\000"
	.align	2
.LC156:
	.ascii	"called CS2261?\000"
	.align	2
.LC157:
	.ascii	"Sir... I'm 6. That means nothing\000"
	.align	2
.LC158:
	.ascii	"to me\000"
	.align	2
.LC159:
	.ascii	"Also, a helpful tip is to get\000"
	.align	2
.LC160:
	.ascii	"the chickens all the way to the\000"
	.align	2
.LC161:
	.ascii	"top edge of town and get them\000"
	.align	2
.LC162:
	.ascii	"trapped on the right side of\000"
	.align	2
.LC163:
	.ascii	"the sculpture. Then start walking\000"
	.align	2
.LC164:
	.ascii	"down and they should be tricked\000"
	.align	2
.LC165:
	.ascii	"into the coop from there.\000"
	.align	2
.LC166:
	.ascii	"I don't know why, but I'm feeling\000"
	.align	2
.LC167:
	.ascii	"just so grateful today! I'm gonna\000"
	.align	2
.LC168:
	.ascii	"just shout out things I'm thankful\000"
	.align	2
.LC169:
	.ascii	"for. Thank you Zaineb, Jourdan,\000"
	.align	2
.LC170:
	.ascii	"Sukie, Caleb, Will for getting\000"
	.align	2
.LC171:
	.ascii	"me through this semester! Whew...\000"
	.align	2
.LC172:
	.ascii	"I don't know what took over me.\000"
	.align	2
.LC173:
	.ascii	"It's forbidden to go near the\000"
	.align	2
.LC174:
	.ascii	"sacred tree since it is what\000"
	.align	2
.LC175:
	.ascii	"brings tourists to our town. But\000"
	.align	2
.LC176:
	.ascii	"it has been said that if the\000"
	.align	2
.LC177:
	.ascii	"tree is imbued with magic\000"
	.align	2
.LC178:
	.ascii	"then it will grant us with a\000"
	.align	2
.LC179:
	.ascii	"special apple.\000"
	.align	2
.LC180:
	.ascii	"Cabin is locked.\000"
	.align	2
.LC181:
	.ascii	"A special key is required.\000"
	.align	2
.LC182:
	.ascii	"Children missing!\000"
	.align	2
.LC183:
	.ascii	"Beware forest travellers:\000"
	.align	2
.LC184:
	.ascii	"A dark presence has risen again.\000"
	.align	2
.LC185:
	.ascii	"Without magic, we do not\000"
	.align	2
.LC186:
	.ascii	"stand a chance. We patiently\000"
	.align	2
.LC187:
	.ascii	"wait for the return of t--\000"
	.align	2
.LC188:
	.ascii	"The rest is torn off.\000"
	.align	2
.LC189:
	.ascii	"Also just FYI in case you don't\000"
	.align	2
.LC190:
	.ascii	"like to have fun:\000"
	.align	2
.LC191:
	.ascii	"Press L to activate cheats.\000"
	.align	2
.LC192:
	.ascii	"Once you leave the dungeon\000"
	.align	2
.LC193:
	.ascii	"you can use cheats there also.\000"
	.text
	.align	2
	.global	drawText
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawText, %function
drawText:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r6, .L93
	ldr	r5, [r6]
	cmp	r5, #1
	beq	.L57
	cmp	r5, #2
	beq	.L58
.L11:
	cmp	r5, #3
	beq	.L59
.L15:
	cmp	r5, #4
	beq	.L60
.L19:
	cmp	r5, #5
	beq	.L61
.L20:
	cmp	r5, #6
	beq	.L62
.L21:
	cmp	r5, #7
	beq	.L63
.L23:
	cmp	r5, #8
	beq	.L64
.L24:
	cmp	r5, #9
	beq	.L65
.L25:
	cmp	r5, #10
	beq	.L66
.L26:
	cmp	r5, #11
	beq	.L67
.L27:
	cmp	r5, #12
	beq	.L68
.L28:
	cmp	r5, #13
	beq	.L69
.L32:
	cmp	r5, #14
	beq	.L70
.L33:
	cmp	r5, #15
	beq	.L71
.L34:
	cmp	r5, #16
	beq	.L72
.L35:
	cmp	r5, #17
	beq	.L73
.L37:
	cmp	r5, #18
	beq	.L74
.L38:
	cmp	r5, #19
	beq	.L75
.L39:
	cmp	r5, #20
	beq	.L76
.L40:
	cmp	r5, #21
	beq	.L77
.L41:
	cmp	r5, #22
	beq	.L78
.L42:
	cmp	r5, #23
	beq	.L79
.L43:
	cmp	r5, #24
	beq	.L80
.L47:
	cmp	r5, #25
	beq	.L81
.L48:
	cmp	r5, #26
	beq	.L82
.L49:
	cmp	r5, #27
	beq	.L83
.L50:
	cmp	r5, #29
	beq	.L84
.L51:
	cmp	r5, #31
	beq	.L85
.L52:
	cmp	r5, #32
	beq	.L86
.L53:
	cmp	r5, #33
	beq	.L87
.L6:
	pop	{r4, r5, r6, lr}
	bx	lr
.L94:
	.align	2
.L93:
	.word	textNum
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC1
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.word	.LC27
	.word	.LC28
	.word	.LC29
	.word	.LC30
	.word	.LC31
	.word	.LC32
	.word	.LC33
	.word	.LC34
	.word	.LC35
	.word	.LC36
	.word	.LC37
	.word	.LC38
	.word	.LC39
	.word	.LC40
	.word	.LC41
	.word	.LC42
	.word	.LC43
	.word	.LC44
	.word	.LC45
	.word	.LC46
	.word	.LC47
	.word	.LC48
	.word	.LC49
	.word	.LC50
	.word	.LC51
	.word	.LC52
	.word	.LC53
	.word	.LC54
	.word	.LC55
	.word	.LC56
	.word	.LC57
	.word	.LC58
	.word	.LC59
	.word	.LC60
	.word	.LC61
	.word	.LC62
	.word	.LC63
	.word	.LC64
	.word	.LC65
	.word	.LC66
	.word	.LC67
	.word	.LC68
	.word	.LC69
	.word	.LC70
	.word	.LC71
	.word	.LC72
	.word	.LC73
	.word	.LC74
	.word	.LC0
	.word	.LC75
	.word	.LC76
	.word	.LC77
	.word	.LC78
	.word	.LC79
	.word	.LC80
	.word	.LC81
	.word	.LC82
	.word	oldButtons
	.word	buttons
	.word	.LC83
	.word	.LC84
	.word	.LC85
	.word	.LC86
	.word	.LC87
	.word	.LC88
	.word	.LC89
	.word	.LC90
	.word	.LC91
	.word	.LC92
	.word	.LC93
	.word	.LC94
	.word	305
	.word	.LC95
	.word	.LC96
	.word	.LC97
	.word	.LC98
	.word	.LC99
	.word	.LC100
	.word	.LC101
	.word	295
	.word	.LC102
	.word	.LC103
	.word	.LC104
	.word	.LC105
	.word	.LC106
	.word	.LC107
	.word	285
	.word	.LC108
	.word	.LC109
	.word	.LC110
	.word	.LC111
	.word	.LC112
	.word	.LC113
	.word	.LC114
	.word	.LC115
	.word	.LC116
	.word	.LC117
	.word	.LC118
	.word	.LC119
	.word	.LC120
	.word	.LC121
	.word	.LC122
	.word	265
	.word	.LC123
	.word	275
	.word	drawString4
	.word	.LC124
	.word	.LC125
.L57:
	ldr	r4, .L93+528
	mov	r3, #2
	mov	r1, #200
	mov	r0, #180
	ldr	r2, .L93+300
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L93+52
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L93+4
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #255
	mov	r0, #180
	ldr	r2, .L93+8
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+12
	ldr	r1, .L93+516
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+16
	ldr	r1, .L93+524
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+20
	ldr	r1, .L93+452
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+24
	ldr	r1, .L93+424
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+28
	ldr	r1, .L93+392
	mov	lr, pc
	bx	r4
	ldr	r3, .L93+336
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L9
	ldr	r3, .L93+340
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L88
.L9:
	ldr	r5, [r6]
	cmp	r5, #2
	bne	.L11
.L58:
	ldr	r4, .L93+528
	mov	r3, r5
	mov	r1, #200
	mov	r0, #180
	ldr	r2, .L93+300
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L93+32
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L93+36
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #255
	mov	r0, #180
	ldr	r2, .L93+40
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+44
	ldr	r1, .L93+516
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+48
	ldr	r1, .L93+524
	mov	lr, pc
	bx	r4
	ldr	r3, .L93+336
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L13
	ldr	r3, .L93+340
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L89
.L13:
	ldr	r5, [r6]
	cmp	r5, #3
	bne	.L15
.L59:
	ldr	r4, .L93+528
	mov	r3, #2
	mov	r1, #200
	mov	r0, #180
	ldr	r2, .L93+300
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L93+52
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L93+56
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r1, #255
	mov	r0, #180
	ldr	r2, .L93+60
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r0, #180
	ldr	r2, .L93+64
	ldr	r1, .L93+516
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r0, #180
	ldr	r2, .L93+68
	ldr	r1, .L93+524
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r0, #180
	ldr	r2, .L93+72
	ldr	r1, .L93+452
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r0, #180
	ldr	r2, .L93+76
	ldr	r1, .L93+424
	mov	lr, pc
	bx	r4
	mov	r3, r5
	mov	r0, #180
	ldr	r2, .L93+80
	ldr	r1, .L93+392
	mov	lr, pc
	bx	r4
	ldr	r3, .L93+336
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L17
	ldr	r3, .L93+340
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L90
.L17:
	ldr	r5, [r6]
	cmp	r5, #4
	bne	.L19
.L60:
	ldr	r4, .L93+528
.L18:
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L93+84
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L93+88
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #255
	mov	r0, #180
	ldr	r2, .L93+92
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+96
	ldr	r1, .L93+516
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+100
	ldr	r1, .L93+524
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+104
	ldr	r1, .L93+452
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #5
	bne	.L20
.L61:
	ldr	r4, .L93+528
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L93+108
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L93+112
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #255
	mov	r0, #180
	ldr	r2, .L93+116
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+120
	ldr	r1, .L93+516
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+124
	ldr	r1, .L93+524
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+128
	ldr	r1, .L93+452
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #6
	bne	.L21
.L62:
	ldr	r4, .L93+528
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L93+132
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L93+136
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #255
	mov	r0, #180
	ldr	r2, .L93+140
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+144
	ldr	r1, .L93+516
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+148
	ldr	r1, .L93+524
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #7
	bne	.L23
.L63:
	ldr	r4, .L93+528
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L93+152
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L93+156
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #255
	mov	r0, #180
	ldr	r2, .L93+160
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+164
	ldr	r1, .L93+516
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+168
	ldr	r1, .L93+524
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r0, #180
	ldr	r2, .L93+172
	ldr	r1, .L93+452
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #8
	bne	.L24
.L64:
	ldr	r4, .L93+528
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L93+176
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L93+180
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #255
	mov	r0, #180
	ldr	r2, .L93+184
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+188
	ldr	r1, .L93+516
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+192
	ldr	r1, .L93+524
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+196
	ldr	r1, .L93+452
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+200
	ldr	r1, .L93+424
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r0, #180
	ldr	r2, .L93+204
	ldr	r1, .L93+392
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #9
	bne	.L25
.L65:
	ldr	r4, .L93+528
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L93+208
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L93+212
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #255
	mov	r0, #180
	ldr	r2, .L93+216
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+220
	ldr	r1, .L93+516
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+224
	ldr	r1, .L93+524
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r0, #180
	ldr	r2, .L93+228
	ldr	r1, .L93+452
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+232
	ldr	r1, .L93+424
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+236
	ldr	r1, .L93+392
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #10
	bne	.L26
.L66:
	ldr	r4, .L93+528
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L93+240
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L93+244
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #255
	mov	r0, #180
	ldr	r2, .L93+248
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+252
	ldr	r1, .L93+516
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+256
	ldr	r1, .L93+524
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+260
	ldr	r1, .L93+452
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r0, #180
	ldr	r2, .L93+264
	ldr	r1, .L93+424
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+268
	ldr	r1, .L93+392
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #11
	bne	.L27
.L67:
	ldr	r4, .L93+528
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L93+272
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L93+276
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #255
	mov	r0, #180
	ldr	r2, .L93+280
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+284
	ldr	r1, .L93+516
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+288
	ldr	r1, .L93+524
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+292
	ldr	r1, .L93+452
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r0, #180
	ldr	r2, .L93+296
	ldr	r1, .L93+424
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #12
	bne	.L28
.L68:
	ldr	r4, .L93+528
	mov	r3, #2
	mov	r1, #200
	mov	r0, #180
	ldr	r2, .L93+300
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L93+304
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L93+308
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #255
	mov	r0, #180
	ldr	r2, .L93+312
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+316
	ldr	r1, .L93+516
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+320
	ldr	r1, .L93+524
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r0, #180
	ldr	r2, .L93+324
	ldr	r1, .L93+452
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+328
	ldr	r1, .L93+424
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+332
	ldr	r1, .L93+392
	mov	lr, pc
	bx	r4
	ldr	r3, .L93+336
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L30
	ldr	r3, .L93+340
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L91
.L30:
	ldr	r5, [r6]
	cmp	r5, #13
	bne	.L32
.L69:
	ldr	r4, .L93+528
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L93+344
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L93+348
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #255
	mov	r0, #180
	ldr	r2, .L93+352
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r0, #180
	ldr	r2, .L93+356
	ldr	r1, .L93+516
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #14
	bne	.L33
.L70:
	ldr	r4, .L93+528
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L93+360
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L93+364
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #255
	mov	r0, #180
	ldr	r2, .L93+368
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+372
	ldr	r1, .L93+516
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+376
	ldr	r1, .L93+524
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r0, #180
	ldr	r2, .L93+380
	ldr	r1, .L93+452
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+384
	ldr	r1, .L93+424
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+388
	ldr	r1, .L93+392
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #15
	bne	.L34
.L71:
	ldr	r4, .L93+528
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L93+396
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L93+400
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #255
	mov	r0, #180
	ldr	r2, .L93+404
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+408
	ldr	r1, .L93+516
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+412
	ldr	r1, .L93+524
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+416
	ldr	r1, .L93+452
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+420
	ldr	r1, .L93+424
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #16
	bne	.L35
.L72:
	ldr	r4, .L93+528
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L93+428
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L93+432
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #255
	mov	r0, #180
	ldr	r2, .L93+436
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+440
	ldr	r1, .L93+516
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+444
	ldr	r1, .L93+524
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+448
	ldr	r1, .L93+452
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #17
	bne	.L37
.L73:
	ldr	r4, .L93+528
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L93+456
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L93+460
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #255
	mov	r0, #180
	ldr	r2, .L93+464
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r0, #180
	ldr	r2, .L93+468
	ldr	r1, .L93+516
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #18
	bne	.L38
.L74:
	ldr	r4, .L93+528
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L93+472
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L93+476
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #255
	mov	r0, #180
	ldr	r2, .L93+480
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+484
	ldr	r1, .L93+516
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+488
	ldr	r1, .L93+524
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #19
	bne	.L39
.L75:
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L93+492
	ldr	r4, .L93+528
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L93+496
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #20
	bne	.L40
.L76:
	ldr	r4, .L93+528
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L93+500
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L93+504
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #255
	mov	r0, #180
	ldr	r2, .L93+508
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+512
	ldr	r1, .L93+516
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L93+520
	ldr	r1, .L93+524
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #21
	bne	.L41
.L77:
	ldr	r4, .L93+528
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L93+532
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L93+536
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #255
	mov	r0, #180
	ldr	r2, .L95
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+4
	ldr	r1, .L95+8
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+12
	ldr	r1, .L95+16
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+20
	ldr	r1, .L95+24
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+28
	ldr	r1, .L95+32
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #22
	bne	.L42
.L78:
	ldr	r4, .L95+36
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L95+40
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L95+44
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #255
	mov	r0, #180
	ldr	r2, .L95+48
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+52
	ldr	r1, .L95+8
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+56
	ldr	r1, .L95+16
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #23
	bne	.L43
.L79:
	ldr	r4, .L95+36
	mov	r3, #2
	mov	r1, #200
	mov	r0, #180
	ldr	r2, .L95+60
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L95+64
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L95+68
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #255
	mov	r0, #180
	ldr	r2, .L95+72
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+76
	ldr	r1, .L95+8
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+80
	ldr	r1, .L95+16
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+84
	ldr	r1, .L95+24
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+88
	ldr	r1, .L95+32
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+92
	ldr	r1, .L95+96
	mov	lr, pc
	bx	r4
	ldr	r3, .L95+100
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L45
	ldr	r3, .L95+104
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L92
.L45:
	ldr	r5, [r6]
	cmp	r5, #24
	bne	.L47
.L80:
	ldr	r4, .L95+36
.L46:
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L95+108
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L95+112
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #255
	mov	r0, #180
	ldr	r2, .L95+116
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+120
	ldr	r1, .L95+8
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+124
	ldr	r1, .L95+16
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+128
	ldr	r1, .L95+24
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+132
	ldr	r1, .L95+32
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+136
	ldr	r1, .L95+96
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #25
	bne	.L48
.L81:
	ldr	r4, .L95+36
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L95+140
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L95+144
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #255
	mov	r0, #180
	ldr	r2, .L95+148
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+152
	ldr	r1, .L95+8
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+156
	ldr	r1, .L95+16
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+160
	ldr	r1, .L95+24
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+164
	ldr	r1, .L95+32
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #26
	bne	.L49
.L82:
	ldr	r4, .L95+36
.L55:
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L95+168
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L95+172
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #255
	mov	r0, #180
	ldr	r2, .L95+176
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+180
	ldr	r1, .L95+8
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+184
	ldr	r1, .L95+16
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+188
	ldr	r1, .L95+24
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+192
	ldr	r1, .L95+32
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #27
	bne	.L50
.L83:
	ldr	r4, .L95+36
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L95+196
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L95+200
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #255
	mov	r0, #180
	ldr	r2, .L95+204
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+208
	ldr	r1, .L95+8
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+212
	ldr	r1, .L95+16
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+216
	ldr	r1, .L95+24
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+220
	ldr	r1, .L95+32
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #29
	bne	.L51
.L84:
	ldr	r4, .L95+36
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L95+224
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L95+228
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #255
	mov	r0, #180
	ldr	r2, .L95+232
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+236
	ldr	r1, .L95+8
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r0, #180
	ldr	r2, .L95+240
	ldr	r1, .L95+16
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+244
	ldr	r1, .L95+24
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+248
	ldr	r1, .L95+32
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #31
	bne	.L52
.L85:
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L95+252
	ldr	r4, .L95+36
	mov	lr, pc
	bx	r4
	mov	r3, #1
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L95+256
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #32
	bne	.L53
.L86:
	ldr	r4, .L95+36
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L95+260
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L95+264
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #255
	mov	r0, #180
	ldr	r2, .L95+268
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+272
	ldr	r1, .L95+8
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+276
	ldr	r1, .L95+16
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+280
	ldr	r1, .L95+24
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+284
	ldr	r1, .L95+32
	mov	lr, pc
	bx	r4
	ldr	r5, [r6]
	cmp	r5, #33
	bne	.L6
.L87:
	ldr	r4, .L95+36
.L54:
	mov	r3, #3
	mov	r1, #235
	mov	r0, #180
	ldr	r2, .L95+288
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #245
	mov	r0, #180
	ldr	r2, .L95+292
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r1, #255
	mov	r0, #180
	ldr	r2, .L95+296
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+300
	ldr	r1, .L95+8
	mov	lr, pc
	bx	r4
	mov	r3, #3
	mov	r0, #180
	ldr	r2, .L95+304
	ldr	r1, .L95+16
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L88:
	bl	resetText
	mov	r3, #2
	str	r3, [r6]
	b	.L6
.L92:
	bl	resetText
	mov	r3, #24
	str	r3, [r6]
	b	.L46
.L91:
	bl	resetText
	mov	r3, #26
	str	r3, [r6]
	b	.L55
.L90:
	bl	resetText
	mov	r3, #4
	str	r3, [r6]
	b	.L18
.L89:
	bl	resetText
	mov	r3, #33
	str	r3, [r6]
	b	.L54
.L96:
	.align	2
.L95:
	.word	.LC126
	.word	.LC127
	.word	265
	.word	.LC128
	.word	275
	.word	.LC129
	.word	285
	.word	.LC130
	.word	295
	.word	drawString4
	.word	.LC131
	.word	.LC132
	.word	.LC133
	.word	.LC134
	.word	.LC135
	.word	.LC0
	.word	.LC136
	.word	.LC137
	.word	.LC138
	.word	.LC139
	.word	.LC140
	.word	.LC141
	.word	.LC142
	.word	.LC143
	.word	305
	.word	oldButtons
	.word	buttons
	.word	.LC144
	.word	.LC145
	.word	.LC146
	.word	.LC147
	.word	.LC148
	.word	.LC149
	.word	.LC150
	.word	.LC151
	.word	.LC152
	.word	.LC153
	.word	.LC154
	.word	.LC155
	.word	.LC156
	.word	.LC157
	.word	.LC158
	.word	.LC159
	.word	.LC160
	.word	.LC161
	.word	.LC162
	.word	.LC163
	.word	.LC164
	.word	.LC165
	.word	.LC166
	.word	.LC167
	.word	.LC168
	.word	.LC169
	.word	.LC170
	.word	.LC171
	.word	.LC172
	.word	.LC173
	.word	.LC174
	.word	.LC175
	.word	.LC176
	.word	.LC177
	.word	.LC178
	.word	.LC179
	.word	.LC180
	.word	.LC181
	.word	.LC182
	.word	.LC183
	.word	.LC184
	.word	.LC185
	.word	.LC186
	.word	.LC187
	.word	.LC188
	.word	.LC189
	.word	.LC190
	.word	.LC191
	.word	.LC192
	.word	.LC193
	.size	drawText, .-drawText
	.ident	"GCC: (devkitARM release 53) 9.1.0"
