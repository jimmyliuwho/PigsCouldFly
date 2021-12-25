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
	.file	"room.c"
	.text
	.align	2
	.global	initPlayer3
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer3, %function
initPlayer3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #1
	mov	r1, #16
	ldr	r3, .L5
	ldr	ip, [r3]
	ldr	r3, .L5+4
	cmp	ip, r2
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	moveq	r1, #131
	moveq	r2, #42
	movne	r1, #120
	movne	r2, #140
	mov	r0, #0
	str	r1, [r3, #12]
	str	r2, [r3, #8]
	mov	r1, #0
	mov	r2, #3
	str	r0, [r3, #52]
	str	r1, [r3, #32]
	str	r1, [r3, #44]
	str	r2, [r3, #48]
	str	r2, [r3, #36]
	bx	lr
.L6:
	.align	2
.L5:
	.word	firstTime
	.word	player
	.size	initPlayer3, .-initPlayer3
	.align	2
	.global	drawPlayer3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer3, %function
drawPlayer3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	lr, .L11
	ldr	r3, [lr]
	cmp	r3, #126
	bgt	.L7
	ldr	r2, .L11+4
	ldr	r1, [r2, #52]
	cmp	r1, #0
	add	r4, r3, #1
	beq	.L9
	ldr	r1, .L11+8
	lsl	r3, r3, #3
	ldrh	r2, [r1, r3]
	orr	r2, r2, #512
	str	r4, [lr]
	strh	r2, [r1, r3]	@ movhi
.L7:
	pop	{r4, r5, lr}
	bx	lr
.L9:
	ldr	r0, [r2, #44]
	ldr	r1, [r2, #36]
	ldr	ip, .L11+8
	add	r1, r1, r0, lsl #5
	ldr	r0, [r2, #12]
	ldr	r5, [r2, #8]
	lsl	r2, r1, #1
	orr	r1, r0, #16384
	add	r0, ip, r3, lsl #3
	lsl	r3, r3, #3
	str	r4, [lr]
	strh	r5, [ip, r3]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	strh	r1, [r0, #2]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	shadowOAMIndex
	.word	player
	.word	shadowOAM
	.size	drawPlayer3, .-drawPlayer3
	.align	2
	.global	updatePlayer3
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer3, %function
updatePlayer3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L69
	ldrh	r2, [r3, #48]
	ldr	r4, .L69+4
	ldr	r3, .L69+8
	tst	r2, #64
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	ldr	r3, [r3]
	sub	sp, sp, #20
	bne	.L14
	ldr	r2, [r4, #16]
	subs	r2, r1, r2
	bmi	.L14
	rsb	ip, r2, r2, lsl #4
	add	ip, r3, ip, lsl #4
	ldrb	lr, [ip, r0]	@ zero_extendqisi2
	cmp	lr, #0
	add	ip, ip, r0
	bne	.L61
.L14:
	ldr	r2, .L69
	ldrh	r2, [r2, #48]
	tst	r2, #128
	bne	.L15
	ldr	ip, [r4, #16]
	ldr	r2, [r4, #28]
	add	lr, ip, r1
	add	r5, lr, r2
	cmp	r5, #160
	ble	.L62
.L15:
	ldr	r2, .L69
	ldrh	r2, [r2, #48]
	tst	r2, #32
	rsb	r2, r1, r1, lsl #4
	lsl	r2, r2, #4
	bne	.L16
	ldr	ip, [r4, #20]
	cmn	ip, r0
	bmi	.L16
	sub	ip, r0, ip
	add	lr, r3, ip
	ldrb	lr, [lr, r2]	@ zero_extendqisi2
	cmp	lr, #0
	bne	.L63
.L16:
	ldr	ip, .L69
	ldrh	ip, [ip, #48]
	tst	ip, #16
	bne	.L17
	ldr	lr, [r4, #20]
	ldr	ip, [r4, #24]
	add	r5, lr, r0
	add	r6, r5, ip
	cmp	r6, #240
	ble	.L64
.L17:
	add	r3, r3, r0
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L65
.L18:
	ldr	r3, .L69+12
	add	ip, r3, #24
	add	r2, r3, #8
	ldm	r2, {r2, r3}
	ldm	ip, {ip, lr}
	stmib	sp, {r2, ip, lr}
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r5, .L69+16
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L21
	ldr	r3, .L69
	ldrh	r2, [r3, #48]
	ands	r5, r2, #1
	bne	.L21
	mov	r1, #1
	ldr	r3, .L69+20
	ldr	r3, [r3]
	ldr	r2, .L69+24
	cmp	r3, #0
	str	r1, [r2]
	beq	.L66
	sub	r3, r3, #1
	cmp	r3, #2
	bhi	.L23
	ldr	r3, .L69+28
	ldr	r3, [r3]
	sub	r2, r3, #15
	bic	r2, r2, #2
	bic	r1, r3, #2
	cmp	r2, #0
	cmpne	r1, #9
	ldr	r2, .L69+32
	str	r3, [r2]
	bne	.L23
	ldr	r3, .L69+36
	ldr	r6, [r3]
	mov	r2, r5
	mov	r1, r6
	ldr	r0, .L69+40
	ldr	r3, .L69+44
	mov	lr, pc
	bx	r3
	adds	r6, r6, r6, lsl #2
	ldrne	r7, .L69+48
	beq	.L28
.L27:
	mov	r0, #0
	add	r5, r5, #1
	mov	lr, pc
	bx	r7
	cmp	r5, r6
	bne	.L27
.L28:
	mov	r0, #0
	ldr	r3, .L69+52
	mov	lr, pc
	bx	r3
	b	.L23
.L66:
	mov	r2, #3
	ldr	r3, .L69+32
	str	r2, [r3]
.L23:
	ldr	r3, [r4, #8]
	add	r3, r3, #15
	str	r3, [r4, #8]
.L21:
	ldr	r3, .L69+56
	mov	lr, pc
	bx	r3
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L62:
	add	r2, r2, r1
	add	r2, r2, ip
	sub	r2, r2, #1
	rsb	r2, r2, r2, lsl #4
	add	r2, r3, r2, lsl #4
	ldrb	ip, [r2, r0]	@ zero_extendqisi2
	cmp	ip, #0
	add	r2, r2, r0
	beq	.L15
	ldr	ip, [r4, #24]
	add	r2, r2, ip
	ldrb	r2, [r2, #-1]	@ zero_extendqisi2
	cmp	r2, #0
	movne	r1, lr
	strne	lr, [r4, #8]
	b	.L15
.L64:
	add	ip, ip, r0
	add	ip, ip, lr
	sub	ip, ip, #1
	add	lr, r3, ip
	ldrb	lr, [lr, r2]	@ zero_extendqisi2
	cmp	lr, #0
	beq	.L17
	ldr	lr, [r4, #28]
	add	lr, r1, lr
	sub	lr, lr, #1
	rsb	lr, lr, lr, lsl #4
	add	lr, r3, lr, lsl #4
	ldrb	ip, [lr, ip]	@ zero_extendqisi2
	cmp	ip, #0
	movne	r0, r5
	strne	r5, [r4, #12]
	add	r3, r3, r0
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L18
.L65:
	ldr	r3, .L69+60
	mov	lr, pc
	bx	r3
	ldr	r3, .L69+64
	ldr	r2, [r3]
	cmp	r2, #1
	beq	.L67
	cmp	r2, #0
	beq	.L68
.L20:
	mov	r2, #1
	ldr	r1, .L69+68
	ldr	r3, .L69+72
	ldr	r1, [r1]
	ldr	r0, [r3]
	ldr	r3, .L69+76
	add	r1, r1, #15
	str	r1, [r4, #8]
	str	r0, [r4, #12]
	str	r2, [r3]
	b	.L18
.L61:
	ldr	lr, [r4, #24]
	add	ip, ip, lr
	ldrb	ip, [ip, #-1]	@ zero_extendqisi2
	cmp	ip, #0
	movne	r1, r2
	strne	r2, [r4, #8]
	b	.L14
.L63:
	ldr	lr, [r4, #28]
	add	lr, r1, lr
	sub	lr, lr, #1
	rsb	lr, lr, lr, lsl #4
	add	lr, r3, lr, lsl #4
	ldrb	lr, [lr, ip]	@ zero_extendqisi2
	cmp	lr, #0
	movne	r0, ip
	strne	ip, [r4, #12]
	b	.L16
.L68:
	ldr	r3, .L69+80
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L69+84
	ldr	r3, .L69+88
	mov	lr, pc
	bx	r3
	b	.L20
.L67:
	ldr	r3, .L69+92
	ldr	r0, .L69+96
	ldr	r1, [r3]
	ldr	r3, .L69+88
	mov	lr, pc
	bx	r3
	b	.L20
.L70:
	.align	2
.L69:
	.word	67109120
	.word	player
	.word	collisionMap
	.word	npc
	.word	collision
	.word	roomCheck
	.word	textCheck
	.word	houseCheck
	.word	textNum
	.word	treasureSFX_length
	.word	treasureSFX_data
	.word	playSoundB
	.word	pauseSound
	.word	unpauseSound
	.word	animatePlayer
	.word	stopSound
	.word	foregroundCheck
	.word	prevRow
	.word	prevCol
	.word	roomExitFlag
	.word	forestMusic_length
	.word	forestMusic_data
	.word	playSoundA
	.word	level2Music_length
	.word	level2Music_data
	.size	updatePlayer3, .-updatePlayer3
	.align	2
	.global	updateRoom
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateRoom, %function
updateRoom:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L81
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L72
	ldr	r3, .L81+4
	ldr	r2, .L81+8
	str	r2, [r3]
.L73:
	b	updatePlayer3
.L72:
	cmp	r3, #1
	ldreq	r3, .L81+4
	ldreq	r2, .L81+12
	streq	r2, [r3]
	beq	updatePlayer3
.L79:
	cmp	r3, #2
	ldreq	r3, .L81+4
	ldreq	r2, .L81+16
	streq	r2, [r3]
	beq	updatePlayer3
.L80:
	cmp	r3, #3
	bne	.L73
	ldr	r3, .L81+4
	ldr	r2, .L81+20
	str	r2, [r3]
	b	updatePlayer3
.L82:
	.align	2
.L81:
	.word	roomCheck
	.word	collisionMap
	.word	room3_collisionMapBitmap
	.word	room2_collisionMapBitmap
	.word	room1_collisionMapBitmap
	.word	room4_collisionMapBitmap
	.size	updateRoom, .-updateRoom
	.align	2
	.global	initNPC
	.syntax unified
	.arm
	.fpu softvfp
	.type	initNPC, %function
initNPC:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #16
	ldr	r3, .L91
	ldr	r2, [r3]
	ldr	r3, .L91+4
	cmp	r2, #0
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	bne	.L84
	mov	r0, #80
	mov	r1, #42
	str	r2, [r3, #52]
	str	r0, [r3, #12]
	str	r1, [r3, #8]
	bx	lr
.L84:
	sub	r1, r2, #1
	cmp	r1, #1
	bhi	.L86
.L87:
	mov	r2, #0
	str	r2, [r3, #52]
	bx	lr
.L86:
	cmp	r2, #3
	beq	.L87
	bx	lr
.L92:
	.align	2
.L91:
	.word	roomCheck
	.word	npc
	.size	initNPC, .-initNPC
	.align	2
	.global	initRoom
	.syntax unified
	.arm
	.fpu softvfp
	.type	initRoom, %function
initRoom:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r1, #0
	mov	r4, #1
	ldr	r2, .L95
	ldr	r3, .L95+4
	str	r1, [r2]
	str	r4, [r3, #52]
	bl	initPlayer3
	bl	initNPC
	ldr	r3, .L95+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L95+12
	mov	r2, r4
	ldr	r1, [r3]
	ldr	r0, .L95+16
	ldr	r3, .L95+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L96:
	.align	2
.L95:
	.word	houseCheck
	.word	npc
	.word	stopSound
	.word	roomsMusic_length
	.word	roomsMusic_data
	.word	playSoundA
	.size	initRoom, .-initRoom
	.align	2
	.global	drawNPCRoom
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawNPCRoom, %function
drawNPCRoom:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L148
	ldr	r2, [r3, #52]
	cmp	r2, #0
	beq	.L98
	ldr	ip, .L148+4
	ldr	r3, [ip]
	ldr	r0, .L148+8
	lsl	r1, r3, #3
	ldrh	r2, [r0, r1]
	add	r3, r3, #1
	orr	r2, r2, #512
	str	r3, [ip]
	strh	r2, [r0, r1]	@ movhi
	bx	lr
.L98:
	ldr	r2, .L148+12
	ldr	r2, [r2]
	cmp	r2, #0
	push	{r4, r5, lr}
	bne	.L100
	mov	lr, #4608
	ldr	ip, .L148+4
	ldr	r0, .L148+8
	ldr	r2, [ip]
	ldr	r1, [r3, #12]
	ldr	r4, [r3, #8]
	add	r5, r2, #1
	orr	r3, r1, #16384
	lsl	r1, r2, #3
	add	r2, r0, r2, lsl #3
	str	r5, [ip]
	strh	r4, [r0, r1]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	strh	lr, [r2, #4]	@ movhi
.L97:
	pop	{r4, r5, lr}
	bx	lr
.L100:
	cmp	r2, #1
	bne	.L139
	ldr	r1, .L148+16
	ldr	r1, [r1]
	cmp	r1, #460
	blt	.L105
	ldr	r2, .L148+20
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L140
	cmp	r2, #1
	moveq	ip, #20
	ldreq	r0, .L148+24
	ldreq	r1, .L148+28
	streq	ip, [r0]
	streq	r2, [r1]
.L107:
	mov	r1, #50
	mov	lr, #90
	ldr	ip, .L148+4
	ldr	r2, [ip]
	ldr	r0, .L148+8
	add	r4, r2, #1
	str	r4, [ip]
	lsl	ip, r2, #3
	strh	r1, [r0, ip]	@ movhi
	add	r2, r0, r2, lsl #3
	ldr	ip, .L148+32
	ldr	r0, .L148+36
	str	r1, [r3, #8]
	strh	ip, [r2, #2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	str	lr, [r3, #12]
	b	.L97
.L139:
	cmp	r2, #2
	bne	.L141
	ldr	r2, .L148+40
	ldr	r1, [r2]
	sub	r2, r1, #348
	sub	r2, r2, #2
	cmp	r2, #10
	bhi	.L111
	mov	r1, #50
	mov	lr, #25
	mov	ip, #90
	ldr	r0, .L148+4
	ldr	r2, [r0]
	add	r4, r2, #1
	str	r4, [r0]
	ldr	r0, .L148+8
	lsl	r4, r2, #3
	strh	r1, [r0, r4]	@ movhi
	add	r2, r0, r2, lsl #3
	ldr	r4, .L148+32
	str	r1, [r3, #8]
	ldr	r0, .L148+44
.L135:
	ldr	r1, .L148+24
	strh	r4, [r2, #2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	str	lr, [r1]
	str	ip, [r3, #12]
	pop	{r4, r5, lr}
	bx	lr
.L141:
	cmp	r2, #3
	bne	.L97
	ldr	r2, .L148+40
	ldr	r2, [r2]
	cmp	r2, #200
	bgt	.L114
	ldr	r2, .L148+48
	ldr	r2, [r2]
	cmp	r2, #1
	beq	.L142
.L115:
	mov	r1, #8
	ldr	r2, .L148+24
	str	r1, [r2]
.L116:
	mov	r1, #40
	mov	lr, #17152
.L137:
	mov	ip, #120
	ldr	r0, .L148+4
	ldr	r2, [r0]
	add	r4, r2, #1
	str	r4, [r0]
	ldr	r0, .L148+8
	lsl	r4, r2, #3
	strh	r1, [r0, r4]	@ movhi
	add	r2, r0, r2, lsl #3
	ldr	r0, .L148+52
	str	r1, [r3, #8]
	strh	lr, [r2, #4]	@ movhi
	strh	r0, [r2, #2]	@ movhi
	pop	{r4, r5, lr}
	str	ip, [r3, #12]
	bx	lr
.L105:
	sub	r1, r1, #300
	cmp	r1, #20
	bls	.L143
	ldr	r1, .L148+40
	ldr	r1, [r1]
	cmp	r1, #235
	bgt	.L136
	mov	r1, #30
	ldr	r0, .L148+4
	ldr	r2, [r0]
	add	r4, r2, #1
	str	r4, [r0]
	ldr	r0, .L148+8
	lsl	r4, r2, #3
	strh	r1, [r0, r4]	@ movhi
	mov	lr, #23
	mov	ip, #180
	ldr	r4, .L148+56
	add	r2, r0, r2, lsl #3
	b	.L138
.L111:
	sub	r2, r1, #316
	sub	r2, r2, #2
	cmp	r2, #10
	bls	.L144
	ldr	r2, .L148+16
	ldr	r2, [r2]
	cmp	r2, #185
	movgt	r2, #0
	movle	r2, #1
	cmp	r1, #428
	movlt	r2, #0
	cmp	r2, #0
	beq	.L113
	mov	r1, #70
	mov	lr, #29
	mov	ip, #120
	ldr	r0, .L148+4
	ldr	r2, [r0]
	add	r4, r2, #1
	str	r4, [r0]
	ldr	r0, .L148+8
	lsl	r4, r2, #3
	strh	r1, [r0, r4]	@ movhi
	ldr	r4, .L148+52
	add	r2, r0, r2, lsl #3
.L138:
	str	r1, [r3, #8]
	ldr	r0, .L148+60
	b	.L135
.L114:
	cmp	r2, #360
	ble	.L145
.L117:
	ldr	r2, .L148+64
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L113
	ldr	r2, .L148+16
	ldr	r2, [r2]
	cmp	r2, #364
	ble	.L123
	ldr	r2, .L148+68
	ldr	r2, [r2]
	cmp	r2, #1
	beq	.L146
.L113:
	mov	r2, #1
.L136:
	str	r2, [r3, #52]
	b	.L97
.L145:
	ldr	r2, .L148+16
	ldr	r1, .L148+72
	ldr	r2, [r2]
	cmp	r2, r1
	ble	.L118
	ldr	r2, .L148+28
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L119
	mov	r1, #10
	ldr	r2, .L148+24
	str	r1, [r2]
.L120:
	mov	r1, #20
	mov	lr, #200
	ldr	ip, .L148+4
	ldr	r2, [ip]
	ldr	r0, .L148+8
	add	r4, r2, #1
	str	r4, [ip]
	lsl	ip, r2, #3
	strh	r1, [r0, ip]	@ movhi
	add	r2, r0, r2, lsl #3
	ldr	ip, .L148+76
	ldr	r0, .L148+44
	str	r1, [r3, #8]
	strh	ip, [r2, #2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	str	lr, [r3, #12]
	b	.L97
.L144:
	mov	r1, #20
	ldr	r0, .L148+4
	ldr	r2, [r0]
	add	r4, r2, #1
	str	r4, [r0]
	ldr	r0, .L148+8
	lsl	r4, r2, #3
	strh	r1, [r0, r4]	@ movhi
	add	r2, r0, r2, lsl #3
	mov	lr, #27
	mov	ip, #30
	ldr	r4, .L148+80
	str	r1, [r3, #8]
	ldr	r0, .L148+84
	b	.L135
.L143:
	mov	r1, #100
	ldr	r0, .L148+4
	ldr	r2, [r0]
	add	r4, r2, #1
	str	r4, [r0]
	ldr	r0, .L148+8
	lsl	r4, r2, #3
	strh	r1, [r0, r4]	@ movhi
	add	r2, r0, r2, lsl #3
	mov	lr, #21
	mov	ip, #180
	ldr	r4, .L148+56
	str	r1, [r3, #8]
	ldr	r0, .L148+84
	b	.L135
.L140:
	mov	r1, #19
	ldr	r2, .L148+24
	str	r1, [r2]
	b	.L107
.L118:
	cmp	r2, #80
	bgt	.L117
	ldr	r2, .L148+88
	ldr	r2, [r2]
	cmp	r2, #2
	movgt	r1, #12
	movle	r1, #13
	movle	ip, #1
	ldrgt	r2, .L148+24
	ldrle	r0, .L148+92
	ldrle	r2, .L148+24
	mov	lr, #4672
	str	r1, [r2]
	strle	ip, [r0]
	mov	r1, #20
	b	.L137
.L142:
	ldr	r2, .L148+96
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L115
	ldr	r2, .L148+100
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L115
	mov	ip, #9
	ldr	r0, .L148+24
	ldr	r1, .L148+104
	str	ip, [r0]
	str	r2, [r1]
	b	.L116
.L123:
	cmp	r2, #95
	bgt	.L113
	ldr	r2, .L148+92
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L126
	mov	r1, #16
	ldr	r2, .L148+24
	str	r1, [r2]
.L127:
	mov	r1, #50
	mov	lr, #4800
	mov	ip, #200
	ldr	r0, .L148+4
	ldr	r2, [r0]
	add	r4, r2, #1
	str	r4, [r0]
	ldr	r0, .L148+8
	lsl	r4, r2, #3
	strh	r1, [r0, r4]	@ movhi
	add	r2, r0, r2, lsl #3
	ldr	r0, .L148+76
	str	r1, [r3, #8]
	strh	r0, [r2, #2]	@ movhi
	strh	lr, [r2, #4]	@ movhi
	str	ip, [r3, #12]
	b	.L97
.L119:
	cmp	r2, #1
	bne	.L120
	mov	ip, #11
	mov	r1, #1
	ldr	r0, .L148+24
	ldr	r2, .L148+108
	str	ip, [r0]
	str	r1, [r2]
	b	.L120
.L126:
	cmp	r2, #1
	moveq	ip, #17
	ldreq	r0, .L148+24
	ldreq	r1, .L148+112
	streq	ip, [r0]
	streq	r2, [r1]
	b	.L127
.L146:
	ldr	r1, .L148+116
	ldr	r0, [r1]
	ldr	r1, .L148+120
	cmp	r0, #1
	str	r2, [r1]
	beq	.L147
.L124:
	mov	r1, #14
	ldr	r2, .L148+24
	str	r1, [r2]
.L125:
	mov	r1, #20
	mov	lr, #100
	ldr	ip, .L148+4
	ldr	r2, [ip]
	ldr	r0, .L148+8
	add	r4, r2, #1
	str	r4, [ip]
	lsl	ip, r2, #3
	strh	r1, [r0, ip]	@ movhi
	add	r2, r0, r2, lsl #3
	ldr	ip, .L148+124
	ldr	r0, .L148+128
	str	r1, [r3, #8]
	strh	ip, [r2, #2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	str	lr, [r3, #12]
	b	.L97
.L147:
	ldr	r2, .L148+132
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L124
	ldr	r2, .L148+136
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L124
	mov	ip, #15
	ldr	r0, .L148+24
	ldr	r1, .L148+140
	str	ip, [r0]
	str	r2, [r1]
	b	.L125
.L149:
	.align	2
.L148:
	.word	npc
	.word	shadowOAMIndex
	.word	shadowOAM
	.word	roomCheck
	.word	prevCol
	.word	haveFlowers
	.word	houseCheck
	.word	gaveFlowers
	.word	16474
	.word	8770
	.word	prevRow
	.word	17090
	.word	redApple
	.word	16504
	.word	16564
	.word	16898
	.word	foregroundCheck
	.word	keyObtained
	.word	414
	.word	16584
	.word	16414
	.word	4738
	.word	chickensLeft
	.word	haveEggs
	.word	goldApple
	.word	blueApple
	.word	bridgeMap
	.word	bluePass
	.word	redPass
	.word	haveRelic
	.word	havePotion
	.word	16484
	.word	17024
	.word	skull
	.word	haveReaperCloth
	.word	empirePass
	.size	drawNPCRoom, .-drawNPCRoom
	.align	2
	.global	drawRoom
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRoom, %function
drawRoom:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, lr}
	ldr	r3, .L152
	str	r2, [r3]
	bl	drawPlayer3
	bl	drawNPCRoom
	ldr	r3, .L152+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L152+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L152+12
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L153:
	.align	2
.L152:
	.word	shadowOAMIndex
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.size	drawRoom, .-drawRoom
	.comm	haveEggs,4,4
	.comm	gaveFlowers,4,4
	.comm	bridgeMap,4,4
	.comm	havePotion,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	collisionMap,4,4
	.comm	roomExitFlag,4,4
	.comm	houseCheck,4,4
	.comm	roomCheck,4,4
	.comm	npc,56,4
	.comm	player,56,4
	.comm	shadowOAM,1024,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
