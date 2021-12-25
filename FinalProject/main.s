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
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r1, #16
	mov	r4, #0
	mov	r6, #3
	mov	fp, #190
	mov	r10, #55
	mov	r9, #4
	ldr	r3, .L4
	mov	ip, #2
	str	r6, [r3, #48]
	str	fp, [r3, #12]
	str	r10, [r3, #8]
	str	r9, [r3, #36]
	str	r1, [r3, #28]
	str	r1, [r3, #24]
	str	r4, [r3, #44]
	str	r4, [r3, #52]
	str	r4, [r3, #32]
	ldr	r3, .L4+4
	mov	lr, #104
	mov	r5, #8
	mov	r2, #32
	str	r4, [r3]
	mov	r8, #127
	mov	r3, #1
	mov	r7, #143
	ldr	r1, .L4+8
	str	ip, [r1, #48]
	ldr	ip, .L4+12
	str	lr, [r1, #12]
	str	r5, [ip, #28]
	str	r3, [ip, #48]
	str	r2, [ip, #24]
	mov	r0, r6
	str	r4, [r1, #32]
	str	r4, [r1, #44]
	str	r4, [r1, #52]
	str	r8, [r1, #8]
	str	r5, [r1, #28]
	str	r2, [r1, #24]
	ldr	r5, .L4+16
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L4+20
	str	r4, [ip, #32]
	str	r4, [ip, #44]
	str	r4, [ip, #52]
	str	r7, [ip, #8]
	str	lr, [ip, #12]
	mov	lr, pc
	bx	r5
	mov	r3, #67108864
	mov	r1, #4352
	mov	r2, #7168
	mov	r0, r6
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r1, .L4+24
	mov	r2, #100663296
	ldr	r3, .L4+28
	mov	lr, pc
	bx	r5
	mov	r0, r6
	mov	r3, #1024
	ldr	r2, .L4+32
	ldr	r1, .L4+36
	mov	lr, pc
	bx	r5
	mov	r0, r6
	mov	r3, #16384
	ldr	r2, .L4+40
	ldr	r1, .L4+44
	mov	lr, pc
	bx	r5
	mov	r0, r6
	ldr	r2, .L4+48
	ldr	r1, .L4+52
	mov	r3, #256
	mov	lr, pc
	bx	r5
	ldr	r3, .L4+56
	mov	lr, pc
	bx	r3
	mov	r0, r6
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L4+60
	mov	lr, pc
	bx	r5
	ldr	r3, .L4+64
	str	r4, [r3]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	birds
	.word	roomCheck
	.word	startButton
	.word	rulesButton
	.word	DMANow
	.word	startPal
	.word	startTiles
	.word	6192
	.word	100720640
	.word	startMap
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #256
	push	{r4, lr}
	ldr	r3, .L8
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r4, #1
	mov	r1, #5
	ldr	r2, .L8+8
	ldr	r0, .L8+12
	ldrh	ip, [r2, #48]
	ldr	r2, .L8+16
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
	ldr	ip, .L8+20
	ldr	r0, .L8+24
	ldr	r2, .L8+28
	str	r3, [ip]
	str	r3, [r0]
	str	r3, [r2]
	ldr	ip, .L8+32
	ldr	r0, .L8+36
	ldr	r2, .L8+40
	str	r3, [ip]
	str	r3, [r0]
	str	r3, [r2]
	ldr	ip, .L8+44
	ldr	r0, .L8+48
	ldr	r2, .L8+52
	ldr	r3, .L8+56
	str	r4, [ip]
	str	r4, [r0]
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+60
	mov	r2, r4
	ldr	r1, [r3]
	ldr	r0, .L8+64
	ldr	r3, .L8+68
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L9:
	.align	2
.L8:
	.word	setupInterrupts
	.word	setupSounds
	.word	67109120
	.word	buttons
	.word	oldButtons
	.word	gameWin
	.word	gameTrueWin
	.word	hOff
	.word	vOff
	.word	scrollCheck
	.word	cheatCount
	.word	prevGameState
	.word	soundCheck
	.word	lives
	.word	stopSound
	.word	startMusic_length
	.word	startMusic_data
	.word	playSoundA
	.size	initialize, .-initialize
	.align	2
	.global	startButtons
	.syntax unified
	.arm
	.fpu softvfp
	.type	startButtons, %function
startButtons:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L23
	ldrh	r3, [r3]
	tst	r3, #128
	push	{r4, r5, r6, lr}
	ldr	lr, .L23+4
	beq	.L21
	ldr	r2, .L23+8
	ldrh	r2, [r2]
	tst	r2, #128
	beq	.L19
.L21:
	ldr	ip, .L23+12
	ldr	r0, .L23+16
.L11:
	tst	r3, #64
	beq	.L14
	ldr	r3, .L23+8
	ldrh	r3, [r3]
	ands	r1, r3, #64
	beq	.L22
.L14:
	ldr	r2, [ip, #44]
	ldr	r3, [r0, #44]
	add	r2, r2, #12
	add	r3, r3, #14
	lsl	r2, r2, #3
	lsl	r3, r3, #3
.L13:
	mov	r4, #2
	ldr	r1, [ip, #36]
	ldr	r5, [r0, #36]
	add	r2, r2, r1
	ldr	r1, .L23+20
	lsl	r2, r2, r4
	ldr	r6, [ip, #8]
	add	r3, r3, r5
	strh	r2, [r1, #4]	@ movhi
	ldr	r5, [ip, #12]
	ldr	r2, [r0, #12]
	ldr	ip, [r0, #8]
	orr	r6, r6, #16384
	orr	r5, r5, #16384
	lsl	r3, r3, r4
	orr	r0, ip, #16384
	orr	r2, r2, #16384
	strh	r6, [r1]	@ movhi
	strh	r5, [r1, #2]	@ movhi
	str	r4, [lr]
	strh	r0, [r1, #8]	@ movhi
	strh	r2, [r1, #10]	@ movhi
	strh	r3, [r1, #12]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L22:
	mov	r3, #112
	mov	r2, #96
	str	r1, [ip, #44]
	str	r1, [r0, #44]
	b	.L13
.L19:
	mov	r2, #1
	ldr	ip, .L23+12
	ldr	r0, .L23+16
	str	r2, [ip, #44]
	str	r2, [r0, #44]
	b	.L11
.L24:
	.align	2
.L23:
	.word	oldButtons
	.word	shadowOAMIndex
	.word	buttons
	.word	startButton
	.word	rulesButton
	.word	shadowOAM
	.size	startButtons, .-startButtons
	.global	__aeabi_idivmod
	.align	2
	.global	drawBirds
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBirds, %function
drawBirds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L28
	ldr	ip, .L28+4
	ldr	r0, [r4, #44]
	ldr	r3, [ip]
	ldr	r5, .L28+8
	ldr	r2, [r4, #36]
	ldr	r1, [r4, #12]
	add	r0, r0, #3
	ldr	lr, [r4, #8]
	add	r2, r2, r0, lsl #5
	orr	r1, r1, #16384
	add	r0, r5, r3, lsl #3
	strh	r1, [r0, #2]	@ movhi
	lsl	r2, r2, #1
	lsl	r1, r3, #3
	strh	lr, [r5, r1]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	add	r3, r3, #1
	ldr	r2, .L28+12
	str	r3, [ip]
	mov	lr, pc
	bx	r2
	mov	r1, r5
	mov	r3, #512
	mov	r2, #117440512
	ldr	r5, .L28+16
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r5, [r4, #32]
	add	r3, r5, r5, lsl #4
	ldr	r2, .L28+20
	add	r3, r3, r3, lsl #8
	ldr	r1, .L28+24
	add	r3, r3, r3, lsl #16
	sub	r2, r2, r3
	cmp	r2, r1
	bcs	.L26
	ldr	r0, [r4, #44]
	ldr	r3, .L28+28
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L26:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	birds
	.word	shadowOAMIndex
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.word	143165576
	.word	286331153
	.word	__aeabi_idivmod
	.size	drawBirds, .-drawBirds
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L32
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L32+4
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r1, #256
	mov	r2, #7168
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	mov	r0, #3
	mov	r3, #2160
	mov	r2, #100663296
	ldr	r1, .L32+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L32+12
	mov	r0, #3
	ldr	r1, .L32+16
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L32+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L33:
	.align	2
.L32:
	.word	DMANow
	.word	pausePal
	.word	pauseTiles
	.word	100720640
	.word	pauseMap
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L36
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L36+4
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r1, #256
	mov	r2, #7168
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	mov	r0, #3
	mov	r3, #3584
	mov	r2, #100663296
	ldr	r1, .L36+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L36+12
	mov	r0, #3
	ldr	r1, .L36+16
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L36+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L37:
	.align	2
.L36:
	.word	DMANow
	.word	instructionsPal
	.word	instructionsTiles
	.word	100720640
	.word	instructionsMap
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L45
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L45+4
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L38
	ldr	r3, .L45+8
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L44
.L38:
	pop	{r4, lr}
	bx	lr
.L44:
	pop	{r4, lr}
	b	goToStart
.L46:
	.align	2
.L45:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	instructions, .-instructions
	.align	2
	.global	goToTreasure
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToTreasure, %function
goToTreasure:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, #0
	ldr	r3, .L55
	ldr	r5, .L55+4
	ldr	r6, .L55+8
	str	r4, [r3]
	mov	lr, pc
	bx	r6
	mov	lr, pc
	bx	r5
	mov	r2, #67108864
	ldr	r1, .L55+12
	mov	r3, #256
	strh	r1, [r2]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L55+16
	ldr	r7, .L55+20
	mov	lr, pc
	bx	r7
	ldr	r0, .L55+24
	ldr	r3, .L55+28
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r6
	mov	lr, pc
	bx	r5
	ldr	r3, .L55+32
	ldr	r5, [r3]
	mov	r2, r4
	mov	r1, r5
	ldr	r0, .L55+36
	ldr	r3, .L55+40
	mov	lr, pc
	bx	r3
	adds	r5, r5, r5, lsl #2
	beq	.L48
	ldr	r6, .L55+44
.L49:
	mov	r0, #0
	add	r4, r4, #1
	mov	lr, pc
	bx	r6
	cmp	r4, r5
	bne	.L49
.L48:
	ldr	r3, .L55+48
	mov	r0, #0
	mov	lr, pc
	bx	r3
	mov	r2, #7
	ldr	r3, .L55+52
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3]
	bx	lr
.L56:
	.align	2
.L55:
	.word	treasureFlag
	.word	flipPage
	.word	waitForVBlank
	.word	1044
	.word	treasurePal
	.word	DMANow
	.word	treasureBitmap
	.word	drawFullscreenImage4
	.word	treasureSFX_length
	.word	treasureSFX_data
	.word	playSoundB
	.word	pauseSound
	.word	unpauseSound
	.word	state
	.size	goToTreasure, .-goToTreasure
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L59
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L59+4
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r1, #256
	mov	r2, #7168
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	mov	r0, #3
	mov	r3, #1264
	mov	r2, #100663296
	ldr	r1, .L59+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #1024
	ldr	r2, .L59+12
	ldr	r1, .L59+16
	mov	lr, pc
	bx	r4
	mov	r1, #5
	ldr	r2, .L59+20
	ldr	r3, .L59+24
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L59+28
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L59+32
	ldr	r3, .L59+36
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L60:
	.align	2
.L59:
	.word	DMANow
	.word	losePal
	.word	loseTiles
	.word	100720640
	.word	loseMap
	.word	state
	.word	stopSound
	.word	loseMusic_length
	.word	loseMusic_data
	.word	playSoundA
	.size	goToLose, .-goToLose
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L68
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L68+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L61
	ldr	r3, .L68+8
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L67
.L61:
	pop	{r4, lr}
	bx	lr
.L67:
	pop	{r4, lr}
	b	initialize
.L69:
	.align	2
.L68:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	lose, .-lose
	.align	2
	.global	goToLevel1
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLevel1, %function
goToLevel1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, #1
	ldr	r2, .L72
	ldr	r3, .L72+4
	mov	r5, #67108864
	str	r6, [r2]
	mov	lr, pc
	bx	r3
	mov	r1, #4608
	mov	r2, #56320
	ldr	r3, .L72+8
	ldr	r4, .L72+12
	strh	r3, [r5, #8]	@ movhi
	strh	r1, [r5]	@ movhi
	strh	r2, [r5, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L72+16
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L72+20
	ldr	r1, .L72+24
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L72+28
	ldr	r1, .L72+32
	mov	lr, pc
	bx	r4
	ldr	r3, .L72+36
	ldrh	r2, [r3]
	ldr	r3, .L72+40
	strh	r2, [r5, #22]	@ movhi
	ldrh	r2, [r3]
	mov	r0, #3
	strh	r2, [r5, #20]	@ movhi
	mov	r3, #16384
	ldr	r2, .L72+44
	ldr	r1, .L72+48
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L72+52
	ldr	r1, .L72+56
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L72+60
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L72+64
	mov	lr, pc
	bx	r4
	ldr	r3, .L72+68
	str	r6, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L73:
	.align	2
.L72:
	.word	prevGameState
	.word	waitForVBlank
	.word	7940
	.word	DMANow
	.word	level1MapPal
	.word	6096
	.word	level1MapTiles
	.word	100720640
	.word	level1MapMap
	.word	vOff
	.word	hOff
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToLevel1, .-goToLevel1
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	startButtons
	bl	drawBirds
	mov	r1, #1
	ldr	r2, .L83
	ldr	r3, .L83+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L83+8
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L74
	ldr	r3, .L83+12
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L74
	ldr	r3, .L83+16
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L82
	cmp	r3, #1
	beq	.L77
.L74:
	pop	{r4, lr}
	bx	lr
.L82:
	ldr	r3, .L83+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToLevel1
.L77:
	pop	{r4, lr}
	b	goToInstructions
.L84:
	.align	2
.L83:
	.word	prevGameState
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	startButton
	.word	initLevel1
	.size	start, .-start
	.align	2
	.global	goToLevel2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLevel2, %function
goToLevel2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #4608
	mov	r1, #2
	mov	r4, #67108864
	ldr	r2, .L92
	ldr	r6, .L92+4
	str	r1, [r2]
	strh	r3, [r4]	@ movhi
	mov	lr, pc
	bx	r6
	mov	r3, #55296
	ldr	r5, .L92+8
	strh	r3, [r4, #10]	@ movhi
	ldr	r3, [r5]
	cmp	r3, #1
	beq	.L89
	ldr	r4, .L92+12
.L86:
	cmp	r3, #0
	beq	.L91
.L87:
	mov	r5, #0
	mov	r1, #67108864
	mov	r3, #16384
	strh	r5, [r1, #22]	@ movhi
	mov	r0, #3
	strh	r5, [r1, #20]	@ movhi
	ldr	r2, .L92+16
	ldr	r1, .L92+20
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L92+24
	ldr	r1, .L92+28
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L92+32
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r6
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L92+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r1, .L92+40
	ldr	r3, .L92+44
	str	r5, [r1]
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L91:
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L92+48
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L92+52
	ldr	r1, .L92+56
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L92+60
	ldr	r1, .L92+64
	mov	lr, pc
	bx	r4
	b	.L87
.L89:
	ldr	r4, .L92+12
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L92+68
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L92+72
	ldr	r1, .L92+76
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L92+60
	ldr	r1, .L92+80
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	b	.L86
.L93:
	.align	2
.L92:
	.word	prevGameState
	.word	waitForVBlank
	.word	foregroundCheck
	.word	DMANow
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	cheatCount
	.word	state
	.word	level2MapTopPal
	.word	15984
	.word	level2MapTopTiles
	.word	100712448
	.word	level2MapTopMap
	.word	level2MapBottomPal
	.word	16080
	.word	level2MapBottomTiles
	.word	level2MapBottomMap
	.size	goToLevel2, .-goToLevel2
	.align	2
	.global	goToRoom
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToRoom, %function
goToRoom:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #8
	ldr	r2, .L106
	push	{r4, r5, r6, lr}
	ldr	r3, .L106+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r2, #0
	mov	r1, #7168
	mov	ip, #4608
	ldr	r0, .L106+8
	ldr	r5, .L106+12
	strh	r0, [r3, #8]	@ movhi
	strh	ip, [r3]	@ movhi
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	strh	r2, [r3, #22]	@ movhi
	ldr	r3, [r5]
	cmp	r3, r2
	beq	.L101
	cmp	r3, #2
	ldr	r4, .L106+16
	beq	.L103
.L96:
	cmp	r3, #1
	beq	.L104
.L97:
	cmp	r3, #3
	beq	.L105
.L98:
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L106+20
	ldr	r1, .L106+24
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L106+28
	ldr	r1, .L106+32
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L106+36
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L106+40
	mov	lr, pc
	bx	r4
	mov	r2, #8
	ldr	r3, .L106+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L105:
	ldr	r3, .L106+48
	ldr	r3, [r3]
	cmp	r3, #364
	ble	.L99
	ldr	r2, .L106+52
	ldr	r3, .L106+56
	ldr	r2, [r2]
	ldr	r3, [r3]
	orrs	r3, r2, r3
	bne	.L99
	mov	ip, #1
	mov	r1, #31
	ldr	r2, .L106+60
	ldr	r3, [r2, #8]
	add	r3, r3, #15
	ldr	r0, .L106+64
	str	r3, [r2, #8]
	ldr	r3, .L106+68
	str	ip, [r0]
	str	r1, [r3]
	b	.L98
.L99:
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L106+72
	mov	lr, pc
	bx	r4
	mov	r3, #2864
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L106+76
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L106+80
	ldr	r1, .L106+84
	mov	lr, pc
	bx	r4
	b	.L98
.L101:
	ldr	r4, .L106+16
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L106+88
	mov	lr, pc
	bx	r4
	mov	r3, #3680
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L106+92
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L106+80
	ldr	r1, .L106+96
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	cmp	r3, #2
	bne	.L96
.L103:
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L106+100
	mov	lr, pc
	bx	r4
	mov	r3, #3072
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L106+104
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L106+80
	ldr	r1, .L106+108
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	cmp	r3, #1
	bne	.L97
.L104:
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L106+112
	mov	lr, pc
	bx	r4
	mov	r3, #2208
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L106+116
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L106+80
	ldr	r1, .L106+120
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	b	.L97
.L107:
	.align	2
.L106:
	.word	prevGameState
	.word	waitForVBlank
	.word	7940
	.word	roomCheck
	.word	DMANow
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.word	prevCol
	.word	foregroundCheck
	.word	keyObtained
	.word	player
	.word	textCheck
	.word	textNum
	.word	room4Pal
	.word	room4Tiles
	.word	100720640
	.word	room4Map
	.word	room3Pal
	.word	room3Tiles
	.word	room3Map
	.word	room1Pal
	.word	room1Tiles
	.word	room1Map
	.word	room2Pal
	.word	room2Tiles
	.word	room2Map
	.size	goToRoom, .-goToRoom
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L124
	ldr	r3, .L124+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L109
	ldr	r2, .L124+8
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L120
.L109:
	tst	r3, #4
	beq	.L108
	ldr	r3, .L124+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L121
.L108:
	pop	{r4, lr}
	bx	lr
.L120:
	ldr	r2, .L124+12
	ldr	r2, [r2]
	cmp	r2, #1
	beq	.L122
	cmp	r2, #2
	beq	.L123
	cmp	r2, #8
	bne	.L109
	bl	goToRoom
	ldrh	r3, [r4]
	b	.L109
.L121:
	mov	r2, #1
	ldr	r3, .L124+12
	pop	{r4, lr}
	str	r2, [r3]
	b	initialize
.L122:
	bl	goToLevel1
	ldrh	r3, [r4]
	b	.L109
.L123:
	bl	goToLevel2
	ldrh	r3, [r4]
	b	.L109
.L125:
	.align	2
.L124:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	prevGameState
	.size	pause, .-pause
	.align	2
	.global	goToText
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToText, %function
goToText:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L128
	push	{r4, r5, r6, lr}
	ldr	r1, [r3]
	mov	r2, #0
	ldr	r0, .L128+4
	ldr	r3, .L128+8
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	ldr	r1, .L128+12
	mov	r3, #256
	mov	r0, #3
	strh	r1, [r2]	@ movhi
	ldr	r4, .L128+16
	mov	r2, #83886080
	ldr	r1, .L128+20
	ldr	r5, .L128+24
	mov	lr, pc
	bx	r5
	mov	lr, pc
	bx	r4
	ldr	r0, .L128+28
	ldr	r3, .L128+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L128+36
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L128+40
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L129:
	.align	2
.L128:
	.word	textSFX_length
	.word	textSFX_data
	.word	playSoundB
	.word	1044
	.word	flipPage
	.word	textboxPal
	.word	DMANow
	.word	textboxBitmap
	.word	drawFullscreenImage4
	.word	waitForVBlank
	.word	state
	.size	goToText, .-goToText
	.align	2
	.global	text
	.syntax unified
	.arm
	.fpu softvfp
	.type	text, %function
text:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L140
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L140+4
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L130
	ldr	r3, .L140+8
	ldrh	r3, [r3]
	ands	r3, r3, #2
	bne	.L130
	ldr	r2, .L140+12
	ldr	r2, [r2]
	ldr	r1, .L140+16
	cmp	r2, #1
	str	r3, [r1]
	beq	.L137
	cmp	r2, #2
	beq	.L138
	cmp	r2, #8
	beq	.L139
.L130:
	pop	{r4, lr}
	bx	lr
.L137:
	pop	{r4, lr}
	b	goToLevel1
.L139:
	pop	{r4, lr}
	b	goToRoom
.L138:
	pop	{r4, lr}
	b	goToLevel2
.L141:
	.align	2
.L140:
	.word	drawText
	.word	oldButtons
	.word	buttons
	.word	prevGameState
	.word	textCheck
	.size	text, .-text
	.align	2
	.global	goToInventory
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInventory, %function
goToInventory:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L144
	push	{r4, lr}
	ldr	r1, [r3]
	mov	r2, #0
	ldr	r0, .L144+4
	ldr	r3, .L144+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L144+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L144+16
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	ldr	r1, .L144+20
	mov	r3, #256
	strh	r1, [r2]	@ movhi
	ldr	r4, .L144+24
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L144+28
	mov	lr, pc
	bx	r4
	mov	r2, #10
	ldr	r3, .L144+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L145:
	.align	2
.L144:
	.word	menuSFX_length
	.word	menuSFX_data
	.word	playSoundB
	.word	waitForVBlank
	.word	initInventory
	.word	1044
	.word	DMANow
	.word	inventoryPal
	.word	state
	.size	goToInventory, .-goToInventory
	.align	2
	.global	treasure
	.syntax unified
	.arm
	.fpu softvfp
	.type	treasure, %function
treasure:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L162
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L147
	ldr	r2, .L162+4
	ldrh	r2, [r2]
	ands	r2, r2, #1
	beq	.L158
.L147:
	tst	r3, #4
	beq	.L146
	ldr	r3, .L162+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L159
.L146:
	pop	{r4, lr}
	bx	lr
.L158:
	ldr	r1, .L162+8
	ldr	r1, [r1]
	ldr	r0, .L162+12
	cmp	r1, #1
	str	r2, [r0]
	beq	.L160
	cmp	r1, #2
	beq	.L161
	cmp	r1, #8
	bne	.L147
	bl	goToRoom
	ldrh	r3, [r4]
	b	.L147
.L159:
	pop	{r4, lr}
	b	goToInventory
.L160:
	bl	goToLevel1
	ldrh	r3, [r4]
	b	.L147
.L161:
	bl	goToLevel2
	ldrh	r3, [r4]
	b	.L147
.L163:
	.align	2
.L162:
	.word	oldButtons
	.word	buttons
	.word	prevGameState
	.word	treasureFlag
	.size	treasure, .-treasure
	.align	2
	.global	level1
	.syntax unified
	.arm
	.fpu softvfp
	.type	level1, %function
level1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L201
	ldr	r4, .L201+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L201+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L165
	ldr	r2, .L201+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L194
.L165:
	tst	r3, #4
	beq	.L166
	ldr	r2, .L201+12
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L195
.L166:
	tst	r3, #512
	beq	.L193
	ldr	r3, .L201+12
	ldrh	r2, [r3]
	ands	r2, r2, #512
	beq	.L191
.L193:
	ldr	r5, .L201+16
.L168:
	ldr	r3, .L201+20
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L196
	ldr	r4, .L201+24
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L197
.L174:
	ldr	r3, .L201+28
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L198
.L175:
	ldr	r3, .L201+32
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L199
.L176:
	ldr	r3, [r5]
	cmp	r3, #1
	ble	.L200
.L164:
	pop	{r4, r5, r6, lr}
	bx	lr
.L191:
	ldr	r0, .L201+36
	ldr	r3, [r0]
	add	r3, r3, #1
	ands	r1, r3, #1
	str	r3, [r0]
	bne	.L170
	mov	r2, #1
	ldr	r3, .L201+40
	add	r0, r3, #336
.L171:
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r1, [r3, #52]
	add	r3, r3, #56
	cmp	r3, r0
	bne	.L171
	b	.L193
.L200:
	ldr	r3, .L201+44
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L164
	mov	r4, #0
	ldr	r2, .L201+48
	ldr	r5, [r2]
	ldr	r6, .L201+52
	mov	r1, r5
	mov	r2, r4
	ldr	r0, .L201+56
	str	r4, [r3]
	mov	lr, pc
	bx	r6
	adds	r5, r5, r5, lsl #2
	ldrne	r6, .L201+60
	beq	.L180
.L179:
	mov	r0, #0
	add	r4, r4, #1
	mov	lr, pc
	bx	r6
	cmp	r4, r5
	bne	.L179
.L180:
	mov	r0, #0
	ldr	r3, .L201+64
	mov	lr, pc
	bx	r3
	b	.L164
.L196:
	ldr	r4, .L201+24
	bl	goToLose
	ldr	r3, [r4]
	cmp	r3, #1
	bne	.L174
.L197:
	ldr	r3, .L201+68
	mov	lr, pc
	bx	r3
	bl	goToRoom
	mov	r3, #0
	str	r3, [r4]
	ldr	r3, .L201+28
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L175
.L198:
	bl	goToTreasure
	ldr	r3, .L201+32
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L176
.L199:
	bl	goToText
	b	.L176
.L195:
	bl	goToInventory
	ldrh	r3, [r4]
	b	.L166
.L194:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L165
.L170:
	mov	r0, #1
	ldr	r3, .L201+40
	add	r1, r3, #336
.L172:
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r0, [r3, #52]
	add	r3, r3, #56
	cmp	r3, r1
	bne	.L172
	ldr	r5, .L201+16
	str	r2, [r5]
	b	.L168
.L202:
	.align	2
.L201:
	.word	updateLevel1
	.word	oldButtons
	.word	drawLevel1
	.word	buttons
	.word	enemyLeft
	.word	lives
	.word	doorFlag
	.word	treasureFlag
	.word	textCheck
	.word	cheatCount
	.word	enemy
	.word	soundCheck
	.word	treasureSFX_length
	.word	playSoundB
	.word	treasureSFX_data
	.word	pauseSound
	.word	unpauseSound
	.word	initRoom
	.size	level1, .-level1
	.align	2
	.global	room
	.syntax unified
	.arm
	.fpu softvfp
	.type	room, %function
room:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L221
	ldr	r4, .L221+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L221+8
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L216
.L204:
	ldr	r4, .L221+12
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L206
	ldr	r2, .L221+16
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L217
.L206:
	tst	r3, #4
	beq	.L207
	ldr	r3, .L221+16
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L218
.L207:
	ldr	r3, .L221+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L219
	pop	{r4, r5, r6, lr}
	bx	lr
.L216:
	ldr	r5, .L221+24
	ldr	r3, [r5]
	cmp	r3, #1
	beq	.L220
.L205:
	bl	goToLevel2
	mov	r3, #0
	str	r3, [r4]
	b	.L204
.L219:
	pop	{r4, r5, r6, lr}
	b	goToText
.L218:
	bl	goToInventory
	b	.L207
.L217:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L206
.L220:
	ldr	r3, .L221+28
	mov	lr, pc
	bx	r3
	mov	r3, #0
	str	r3, [r5]
	b	.L205
.L222:
	.align	2
.L221:
	.word	updateRoom
	.word	roomExitFlag
	.word	drawRoom
	.word	oldButtons
	.word	buttons
	.word	textCheck
	.word	firstTime
	.word	initLevel2
	.size	room, .-room
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #7936
	mov	r4, #67108864
	ldr	r3, .L225
	ldr	r5, .L225+4
	strh	r2, [r4]	@ movhi
	strh	r3, [r4, #14]	@ movhi
	mov	r2, #83886080
	mov	r3, #256
	mov	r0, #3
	ldr	r1, .L225+8
	mov	lr, pc
	bx	r5
	mov	r3, #32
	mov	r0, #3
	ldr	r2, .L225+12
	ldr	r1, .L225+16
	mov	lr, pc
	bx	r5
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L225+20
	ldr	r1, .L225+24
	mov	lr, pc
	bx	r5
	ldr	r2, .L225+28
	mov	r3, #1936
	strh	r2, [r4, #12]	@ movhi
	mov	r0, #3
	ldr	r2, .L225+32
	ldr	r1, .L225+36
	mov	lr, pc
	bx	r5
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L225+40
	ldr	r1, .L225+44
	mov	lr, pc
	bx	r5
	ldr	r2, .L225+48
	mov	r3, #2512
	strh	r2, [r4, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L225+52
	ldr	r1, .L225+56
	mov	lr, pc
	bx	r5
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L225+60
	ldr	r1, .L225+64
	mov	lr, pc
	bx	r5
	mov	r2, #7680
	mov	r3, #656
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L225+68
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L225+72
	ldr	r1, .L225+76
	mov	lr, pc
	bx	r5
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L225+80
	ldr	r1, .L225+84
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r2, .L225+88
	ldr	r1, .L225+92
	mov	r3, #256
	mov	lr, pc
	bx	r5
	ldr	r3, .L225+96
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L225+100
	mov	lr, pc
	bx	r5
	mov	r3, #0
	ldr	r2, .L225+104
	ldrh	r1, [r2]
	ldr	r2, .L225+108
	ldrh	r2, [r2]
	strh	r3, [r4, #18]	@ movhi
	ldr	r0, .L225+112
	strh	r3, [r4, #16]	@ movhi
	strh	r1, [r4, #22]	@ movhi
	strh	r2, [r4, #20]	@ movhi
	strh	r1, [r4, #26]	@ movhi
	strh	r2, [r4, #24]	@ movhi
	strh	r3, [r4, #30]	@ movhi
	strh	r3, [r4, #28]	@ movhi
	mov	lr, pc
	bx	r0
	mov	r1, #4
	ldr	r2, .L225+116
	ldr	r3, .L225+120
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L225+124
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L225+128
	ldr	r3, .L225+132
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L226:
	.align	2
.L225:
	.word	20228
	.word	DMANow
	.word	win1Pal
	.word	100679680
	.word	win4Tiles
	.word	100694016
	.word	win4Map
	.word	21768
	.word	100696064
	.word	win3Tiles
	.word	100706304
	.word	win3Map
	.word	23564
	.word	100712448
	.word	win1Tiles
	.word	100720640
	.word	win1Map
	.word	win2Tiles
	.word	100724736
	.word	win2Map
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	vOff
	.word	hOff
	.word	waitForVBlank
	.word	state
	.word	stopSound
	.word	winMusic_length
	.word	winMusic_data
	.word	playSoundA
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #2
	mov	r0, #130
	push	{r4, r5, r6, lr}
	mov	lr, #0
	ldr	r4, .L235
	ldr	r2, [r4, #44]
	ldr	r1, .L235+4
	ldr	ip, .L235+8
	lsl	r2, r2, #6
	add	r2, r2, #4
	strh	r2, [r1, #4]	@ movhi
	strh	r0, [r1]	@ movhi
	mov	r2, #117440512
	str	r3, [r4, #36]
	strh	ip, [r1, #2]	@ movhi
	mov	r3, #512
	ldr	r5, .L235+12
	mov	r0, #3
	str	lr, [r4, #52]
	mov	lr, pc
	bx	r5
	ldr	r5, [r4, #32]
	ldr	r3, .L235+16
	smull	r1, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	bne	.L228
	ldr	r0, [r4, #44]
	ldr	r3, .L235+20
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L228:
	ldr	ip, .L235+24
	ldr	r3, [ip]
	add	r1, r3, #1
	cmp	r1, #0
	addlt	r3, r3, #8
	movge	r3, r1
	mov	r0, #67108864
	add	r2, r1, r1, lsr #31
	asr	r3, r3, #3
	asr	r2, r2, #1
	lsl	r3, r3, #16
	lsl	r2, r2, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	str	r1, [ip]
	add	r5, r5, #1
	strh	r2, [r0, #20]	@ movhi
	strh	r3, [r0, #24]	@ movhi
	ldr	r2, .L235+28
	str	r5, [r4, #32]
	mov	lr, pc
	bx	r2
	ldr	r3, .L235+32
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L227
	ldr	r3, .L235+36
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L234
.L227:
	pop	{r4, r5, r6, lr}
	bx	lr
.L234:
	pop	{r4, r5, r6, lr}
	b	initialize
.L236:
	.align	2
.L235:
	.word	player
	.word	shadowOAM
	.word	16504
	.word	DMANow
	.word	1717986919
	.word	__aeabi_idivmod
	.word	parallaxTimer
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	win, .-win
	.align	2
	.global	goToTrueWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToTrueWin, %function
goToTrueWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #7936
	mov	r4, #67108864
	ldr	r3, .L239
	ldr	r5, .L239+4
	strh	r2, [r4]	@ movhi
	strh	r3, [r4, #14]	@ movhi
	mov	r2, #83886080
	mov	r3, #256
	mov	r0, #3
	ldr	r1, .L239+8
	mov	lr, pc
	bx	r5
	mov	r3, #2912
	mov	r0, #3
	ldr	r2, .L239+12
	ldr	r1, .L239+16
	mov	lr, pc
	bx	r5
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L239+20
	ldr	r1, .L239+24
	mov	lr, pc
	bx	r5
	ldr	r2, .L239+28
	mov	r3, #1520
	strh	r2, [r4, #12]	@ movhi
	mov	r0, #3
	ldr	r2, .L239+32
	ldr	r1, .L239+36
	mov	lr, pc
	bx	r5
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L239+40
	ldr	r1, .L239+44
	mov	lr, pc
	bx	r5
	ldr	r2, .L239+48
	mov	r3, #2096
	strh	r2, [r4, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L239+52
	ldr	r1, .L239+56
	mov	lr, pc
	bx	r5
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L239+60
	ldr	r1, .L239+64
	mov	lr, pc
	bx	r5
	mov	r2, #7680
	mov	r3, #1280
	strh	r2, [r4, #8]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L239+68
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L239+72
	ldr	r1, .L239+76
	mov	lr, pc
	bx	r5
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L239+80
	ldr	r1, .L239+84
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r2, .L239+88
	ldr	r1, .L239+92
	mov	r3, #256
	mov	lr, pc
	bx	r5
	ldr	r3, .L239+96
	mov	lr, pc
	bx	r3
	mov	r0, #3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L239+100
	mov	lr, pc
	bx	r5
	mov	r3, #0
	ldr	r2, .L239+104
	strh	r3, [r4, #18]	@ movhi
	strh	r3, [r4, #16]	@ movhi
	ldr	r3, .L239+108
	ldrh	r2, [r2]
	ldrh	r3, [r3]
	strh	r2, [r4, #22]	@ movhi
	ldr	r1, .L239+112
	strh	r3, [r4, #20]	@ movhi
	strh	r2, [r4, #26]	@ movhi
	strh	r3, [r4, #24]	@ movhi
	strh	r2, [r4, #30]	@ movhi
	strh	r3, [r4, #28]	@ movhi
	mov	lr, pc
	bx	r1
	mov	r1, #11
	ldr	r2, .L239+116
	ldr	r3, .L239+120
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L239+124
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L239+128
	ldr	r3, .L239+132
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L240:
	.align	2
.L239:
	.word	19972
	.word	DMANow
	.word	trueWin1Pal
	.word	100679680
	.word	trueWin4Tiles
	.word	100691968
	.word	trueWin4Map
	.word	21768
	.word	100696064
	.word	trueWin3Tiles
	.word	100706304
	.word	trueWin3Map
	.word	23564
	.word	100712448
	.word	trueWin2Tiles
	.word	100720640
	.word	trueWin2Map
	.word	trueWin1Tiles
	.word	100724736
	.word	trueWin1Map
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	vOff
	.word	hOff
	.word	waitForVBlank
	.word	state
	.word	stopSound
	.word	winMusic_length
	.word	winMusic_data
	.word	playSoundA
	.size	goToTrueWin, .-goToTrueWin
	.align	2
	.global	level2
	.syntax unified
	.arm
	.fpu softvfp
	.type	level2, %function
level2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L271
	ldr	r4, .L271+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L271+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L242
	ldr	r2, .L271+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L262
.L242:
	tst	r3, #4
	beq	.L243
	ldr	r2, .L271+12
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L263
.L243:
	tst	r3, #512
	beq	.L244
	ldr	r3, .L271+12
	ldrh	r3, [r3]
	tst	r3, #512
	beq	.L264
.L244:
	ldr	r3, .L271+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L265
.L246:
	ldr	r4, .L271+20
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L266
.L247:
	ldr	r3, .L271+24
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L267
.L248:
	ldr	r3, .L271+28
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L268
.L249:
	ldr	r3, .L271+32
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L269
.L250:
	ldr	r3, .L271+36
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L270
.L241:
	pop	{r4, lr}
	bx	lr
.L264:
	ldr	r2, .L271+40
	ldr	r3, [r2]
	add	r3, r3, #1
	ands	r1, r3, #1
	str	r3, [r2]
	movne	r2, #1
	ldreq	r3, .L271+44
	ldrne	r3, .L271+44
	streq	r1, [r3]
	strne	r2, [r3]
	ldr	r3, .L271+16
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L246
.L265:
	ldr	r4, .L271+20
	bl	goToText
	ldr	r3, [r4]
	cmp	r3, #1
	bne	.L247
.L266:
	ldr	r3, .L271+48
	mov	lr, pc
	bx	r3
	bl	goToRoom
	mov	r3, #0
	str	r3, [r4]
	ldr	r3, .L271+24
	ldr	r3, [r3]
	cmp	r3, #0
	bgt	.L248
.L267:
	bl	goToLose
	ldr	r3, .L271+28
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L249
.L268:
	bl	goToTreasure
	ldr	r3, .L271+32
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L250
.L269:
	bl	goToWin
	ldr	r3, .L271+36
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L241
.L270:
	pop	{r4, lr}
	b	goToTrueWin
.L263:
	bl	goToInventory
	ldrh	r3, [r4]
	b	.L243
.L262:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L242
.L272:
	.align	2
.L271:
	.word	updateLevel2
	.word	oldButtons
	.word	drawLevel2
	.word	buttons
	.word	textCheck
	.word	doorFlag
	.word	lives
	.word	treasureFlag
	.word	gameWin
	.word	gameTrueWin
	.word	cheatCount
	.word	bridgeMap
	.word	initRoom
	.size	level2, .-level2
	.align	2
	.global	trueWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	trueWin, %function
trueWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	mov	r0, #50
	push	{r4, r5, r6, lr}
	ldr	r4, .L281
	ldr	r2, [r4, #44]
	ldr	r1, .L281+4
	ldr	ip, .L281+8
	lsl	r2, r2, #7
	add	r2, r2, #16
	strh	r2, [r1, #4]	@ movhi
	strh	r0, [r1]	@ movhi
	mov	r2, #117440512
	str	r3, [r4, #52]
	strh	ip, [r1, #2]	@ movhi
	mov	r3, #512
	ldr	r5, .L281+12
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r5, [r4, #32]
	ldr	r3, .L281+16
	smull	r1, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	bne	.L274
	ldr	r0, [r4, #44]
	ldr	r3, .L281+20
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L274:
	ldr	r6, .L281+24
	ldr	r2, [r6]
	add	r3, r2, #1
	cmp	r3, #0
	addlt	r2, r2, #8
	movge	r2, r3
	mov	ip, #67108864
	ldr	lr, .L281+16
	smull	r1, lr, r3, lr
	str	r3, [r6]
	add	r1, r3, r3, lsr #31
	asr	r3, r3, #31
	rsb	r3, r3, lr, asr #1
	asr	r2, r2, #3
	asr	r1, r1, #1
	lsl	r2, r2, #16
	lsl	r1, r1, #16
	lsl	r3, r3, #16
	lsr	r2, r2, #16
	lsr	r1, r1, #16
	lsr	r3, r3, #16
	strh	r1, [ip, #20]	@ movhi
	add	r0, r5, #1
	strh	r3, [ip, #24]	@ movhi
	ldr	r3, .L281+28
	strh	r2, [ip, #28]	@ movhi
	str	r0, [r4, #32]
	mov	lr, pc
	bx	r3
	ldr	r3, .L281+32
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L273
	ldr	r3, .L281+36
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L280
.L273:
	pop	{r4, r5, r6, lr}
	bx	lr
.L280:
	pop	{r4, r5, r6, lr}
	b	initialize
.L282:
	.align	2
.L281:
	.word	player
	.word	shadowOAM
	.word	-32668
	.word	DMANow
	.word	1717986919
	.word	__aeabi_idivmod
	.word	parallaxTimer
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	trueWin, .-trueWin
	.align	2
	.global	goToScroll
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToScroll, %function
goToScroll:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L285
	push	{r4, lr}
	ldr	r1, [r3]
	mov	r2, #0
	ldr	r0, .L285+4
	ldr	r3, .L285+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L285+12
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	ldr	r1, .L285+16
	mov	r3, #256
	strh	r1, [r2]	@ movhi
	ldr	r4, .L285+20
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L285+24
	mov	lr, pc
	bx	r4
	mov	r2, #12
	ldr	r3, .L285+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L286:
	.align	2
.L285:
	.word	menuSFX_length
	.word	menuSFX_data
	.word	playSoundB
	.word	waitForVBlank
	.word	1044
	.word	DMANow
	.word	scrollBGPal
	.word	state
	.size	goToScroll, .-goToScroll
	.align	2
	.global	inventory
	.syntax unified
	.arm
	.fpu softvfp
	.type	inventory, %function
inventory:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L300
	mov	lr, pc
	bx	r3
	ldr	r3, .L300+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L300+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L300+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L300+16
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L288
	ldr	r3, .L300+20
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L296
.L288:
	ldr	r3, .L300+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L297
	pop	{r4, lr}
	bx	lr
.L296:
	ldr	r3, .L300+28
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L298
	cmp	r3, #2
	beq	.L299
	cmp	r3, #8
	bne	.L288
	bl	goToRoom
	b	.L288
.L297:
	pop	{r4, lr}
	b	goToScroll
.L298:
	bl	goToLevel1
	b	.L288
.L299:
	bl	goToLevel2
	b	.L288
.L301:
	.align	2
.L300:
	.word	drawInventory
	.word	updatePointer
	.word	waitForVBlank
	.word	flipPage
	.word	oldButtons
	.word	buttons
	.word	scrollCheck
	.word	prevGameState
	.size	inventory, .-inventory
	.align	2
	.global	scroll
	.syntax unified
	.arm
	.fpu softvfp
	.type	scroll, %function
scroll:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, .L318
	ldr	r3, .L318+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L318+8
	ldr	r3, .L318+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L318+16
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L303
	ldr	r2, .L318+20
	ldrh	r2, [r2]
	ands	r2, r2, #4
	beq	.L314
.L303:
	tst	r3, #2
	beq	.L302
	ldr	r3, .L318+20
	ldrh	r3, [r3]
	ands	r3, r3, #2
	beq	.L315
.L302:
	pop	{r4, lr}
	bx	lr
.L314:
	ldr	r1, .L318+24
	ldr	r1, [r1]
	ldr	r0, .L318+28
	cmp	r1, #1
	str	r2, [r0]
	beq	.L316
	cmp	r1, #2
	beq	.L317
	cmp	r1, #8
	bne	.L303
	bl	goToRoom
	ldrh	r3, [r4]
	b	.L303
.L315:
	ldr	r2, .L318+28
	pop	{r4, lr}
	str	r3, [r2]
	b	goToInventory
.L316:
	bl	goToLevel1
	ldrh	r3, [r4]
	b	.L303
.L317:
	bl	goToLevel2
	ldrh	r3, [r4]
	b	.L303
.L319:
	.align	2
.L318:
	.word	scrollBGBitmap
	.word	drawFullscreenImage4
	.word	oldButtons
	.word	waitForVBlank
	.word	flipPage
	.word	buttons
	.word	prevGameState
	.word	scrollCheck
	.size	scroll, .-scroll
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L340
	mov	lr, pc
	bx	r3
	ldr	r6, .L340+4
	ldr	r7, .L340+8
	ldr	r5, .L340+12
	ldr	fp, .L340+16
	ldr	r10, .L340+20
	ldr	r9, .L340+24
	ldr	r8, .L340+28
	ldr	r4, .L340+32
.L321:
	ldr	r2, [r6]
	ldrh	r3, [r7]
.L322:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #12
	ldrls	pc, [pc, r2, asl #2]
	b	.L322
.L324:
	.word	.L336
	.word	.L335
	.word	.L334
	.word	.L333
	.word	.L332
	.word	.L331
	.word	.L330
	.word	.L329
	.word	.L328
	.word	.L327
	.word	.L326
	.word	.L325
	.word	.L323
.L323:
	ldr	r3, .L340+36
	mov	lr, pc
	bx	r3
	b	.L321
.L325:
	ldr	r3, .L340+40
	mov	lr, pc
	bx	r3
	b	.L321
.L326:
	ldr	r3, .L340+44
	mov	lr, pc
	bx	r3
	b	.L321
.L327:
	ldr	r3, .L340+48
	mov	lr, pc
	bx	r3
	b	.L321
.L328:
	ldr	r3, .L340+52
	mov	lr, pc
	bx	r3
	b	.L321
.L329:
	ldr	r3, .L340+56
	mov	lr, pc
	bx	r3
	b	.L321
.L330:
	ldr	r3, .L340+60
	mov	lr, pc
	bx	r3
	b	.L321
.L331:
	ldr	r3, .L340+64
	mov	lr, pc
	bx	r3
	b	.L321
.L332:
	ldr	r3, .L340+68
	mov	lr, pc
	bx	r3
	b	.L321
.L333:
	mov	lr, pc
	bx	r8
	b	.L321
.L334:
	mov	lr, pc
	bx	r9
	b	.L321
.L335:
	mov	lr, pc
	bx	r10
	b	.L321
.L336:
	mov	lr, pc
	bx	fp
	b	.L321
.L341:
	.align	2
.L340:
	.word	initialize
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	level1
	.word	level2
	.word	pause
	.word	67109120
	.word	scroll
	.word	trueWin
	.word	inventory
	.word	text
	.word	room
	.word	treasure
	.word	instructions
	.word	lose
	.word	win
	.size	main, .-main
	.comm	soundCheck,4,4
	.comm	scrollCheck,4,4
	.comm	parallaxTimer,4,4
	.comm	gameTrueWin,4,4
	.comm	gameWin,4,4
	.comm	birds,56,4
	.comm	rulesButton,56,4
	.comm	startButton,56,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	shadowOAMIndex,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	cheatCount,4,4
	.comm	pigvOff,4,4
	.comm	roomExitFlag,4,4
	.comm	roomCheck,4,4
	.comm	treasureFlag,4,4
	.comm	doorFlag,4,4
	.comm	prevGameState,4,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
