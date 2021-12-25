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
	.file	"level1.c"
	.text
	.align	2
	.global	initHearts
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHearts, %function
initHearts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #8
	mov	r0, #0
	ldr	r3, .L6
	add	r1, r3, #280
.L2:
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r0, [r3, #52]
	add	r3, r3, #56
	cmp	r3, r1
	bne	.L2
	bx	lr
.L7:
	.align	2
.L6:
	.word	hearts
	.size	initHearts, .-initHearts
	.align	2
	.global	drawHearts
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHearts, %function
drawHearts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #180
	mov	r4, #5
	mov	lr, #960
	ldr	r3, .L14
	ldr	r2, .L14+4
	add	ip, r3, #40
.L11:
	ldr	r1, [r2, #52]
	cmp	r1, #0
	ldrhne	r1, [r3]
	orrne	r1, r1, #512
	strheq	r0, [r3, #2]	@ movhi
	strhne	r1, [r3]	@ movhi
	strheq	r4, [r3]	@ movhi
	strheq	lr, [r3, #4]	@ movhi
	add	r3, r3, #8
	addeq	r0, r0, #10
	cmp	r3, ip
	add	r2, r2, #56
	bne	.L11
	pop	{r4, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	shadowOAM
	.word	hearts
	.size	drawHearts, .-drawHearts
	.align	2
	.global	initPlayer1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer1, %function
initPlayer1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #3
	mov	r0, #16
	push	{r4, r5, r6, lr}
	mov	r1, #0
	mov	ip, #1
	mov	r6, #50
	mov	r5, #420
	mov	r4, #65
	mov	lr, #14
	ldr	r3, .L18
	str	r2, [r3, #48]
	ldr	r2, .L18+4
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	str	r0, [r2, #24]
	str	r0, [r2, #28]
	ldr	r0, .L18+8
	str	r6, [r3, #12]
	str	r5, [r3, #8]
	str	r4, [r2, #12]
	str	lr, [r2, #44]
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	ip, [r2, #48]
	str	r0, [r2, #8]
	str	r1, [r3, #32]
	str	r1, [r3, #44]
	str	r1, [r3, #36]
	str	r1, [r3, #52]
	str	r1, [r2, #52]
	str	r1, [r2, #36]
	pop	{r4, r5, r6, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	player
	.word	npc
	.word	370
	.size	initPlayer1, .-initPlayer1
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L24
	ldr	ip, .L24+4
	ldr	r2, [r1, #52]
	ldr	r3, [ip]
	cmp	r2, #0
	push	{r4, r5, lr}
	add	lr, r3, #1
	beq	.L21
	ldr	r1, .L24+8
	lsl	r3, r3, #3
	ldrh	r2, [r1, r3]
	orr	r2, r2, #512
	str	lr, [ip]
	strh	r2, [r1, r3]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L21:
	ldr	r0, .L24+12
	ldr	r2, [r1, #12]
	ldr	r4, [r0]
	ldr	r0, .L24+16
	ldr	r5, [r1, #44]
	sub	r2, r2, r4
	ldr	r4, [r0]
	ldr	r0, [r1, #36]
	ldr	r1, [r1, #8]
	lsl	r2, r2, #23
	sub	r1, r1, r4
	ldr	r4, .L24+8
	add	r0, r0, r5, lsl #5
	lsr	r2, r2, #23
	str	lr, [ip]
	orr	r2, r2, #16384
	add	ip, r4, r3, lsl #3
	lsl	r0, r0, #1
	and	r1, r1, #255
	lsl	r3, r3, #3
	strh	r1, [r4, r3]	@ movhi
	strh	r2, [ip, #2]	@ movhi
	strh	r0, [ip, #4]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	player
	.word	shadowOAMIndex
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	drawNPC
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawNPC, %function
drawNPC:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L37
	ldr	r2, .L37+4
	ldr	r0, [r3, #8]
	ldr	r2, [r2]
	ldr	r1, [r3, #28]
	sub	r2, r0, r2
	cmn	r2, r1
	bmi	.L27
	ldr	ip, .L37+8
	ldr	r0, [r3, #12]
	ldr	r1, [r3, #24]
	ldr	ip, [ip]
	add	r1, r0, r1
	sub	r1, r1, ip
	mvn	r1, r1
	cmp	r2, #160
	lsr	r1, r1, #31
	movgt	r1, #0
	cmp	r1, #0
	bne	.L36
.L27:
	mov	r2, #1
	str	r2, [r3, #52]
	bx	lr
.L36:
	sub	r0, r0, ip
	cmp	r0, #240
	bgt	.L27
	push	{r4, r5, lr}
	mov	r5, #4608
	mov	r4, #0
	ldr	lr, .L37+12
	lsl	r0, r0, #23
	ldr	r1, [lr]
	ldr	ip, .L37+16
	lsr	r0, r0, #23
	orr	r0, r0, #16384
	and	r2, r2, #255
	add	r1, r1, #1
	strh	r5, [ip, #4]	@ movhi
	str	r1, [lr]
	str	r4, [r3, #52]
	strh	r0, [ip, #2]	@ movhi
	strh	r2, [ip]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L38:
	.align	2
.L37:
	.word	npc
	.word	vOff
	.word	hOff
	.word	shadowOAMIndex
	.word	shadowOAM+960
	.size	drawNPC, .-drawNPC
	.global	__aeabi_idivmod
	.align	2
	.global	animatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	animatePlayer, %function
animatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #4
	push	{r4, r5, r6, lr}
	ldr	r4, .L52
	ldr	r3, .L52+4
	ldr	r5, [r4, #32]
	smull	r0, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	ldr	r6, [r4, #36]
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	str	r6, [r4, #40]
	str	r1, [r4, #36]
	bne	.L40
	ldr	r0, [r4, #44]
	ldr	r3, .L52+8
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L40:
	ldr	r3, .L52+12
	ldrh	r3, [r3, #48]
	tst	r3, #64
	moveq	r3, #1
	streq	r3, [r4, #36]
	ldr	r3, .L52+12
	ldrh	r3, [r3, #48]
	ands	r3, r3, #128
	streq	r3, [r4, #36]
	ldr	r3, .L52+12
	ldrh	r2, [r3, #48]
	tst	r2, #32
	bne	.L43
	mov	r2, #3
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r2, [r4, #36]
	bne	.L45
.L46:
	mov	r3, #2
	str	r3, [r4, #36]
.L45:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L43:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L46
	ldr	r3, [r4, #36]
	cmp	r3, #4
	bne	.L45
	mov	r3, #0
	str	r6, [r4, #36]
	str	r3, [r4, #44]
	str	r3, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L53:
	.align	2
.L52:
	.word	player
	.word	1717986919
	.word	__aeabi_idivmod
	.word	67109120
	.size	animatePlayer, .-animatePlayer
	.align	2
	.global	updatePlayer1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer1, %function
updatePlayer1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L118
	ldrh	r3, [r3, #48]
	ldr	r5, .L118+4
	ldr	r8, .L118+8
	ldr	r2, .L118+12
	tst	r3, #64
	str	r2, [r8]
	ldr	r1, [r5, #8]
	ldr	r0, [r5, #12]
	sub	sp, sp, #28
	bne	.L55
	ldr	r3, [r5, #16]
	subs	r3, r1, r3
	bmi	.L55
	add	ip, r0, r3, lsl #9
	ldrb	lr, [r2, ip]	@ zero_extendqisi2
	cmp	lr, #0
	beq	.L55
	ldr	lr, [r5, #24]
	add	ip, ip, lr
	sub	lr, r2, #1
	ldrb	ip, [ip, lr]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L55
	ldr	ip, .L118+16
	ldr	r1, [ip]
	cmp	r1, #0
	str	r3, [r5, #8]
	ble	.L75
	sub	lr, r3, r1
	cmp	lr, #80
	bgt	.L75
	sub	r1, r1, #1
	str	r1, [ip]
	mov	r1, r3
.L55:
	ldr	r3, .L118
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L56
	ldr	ip, [r5, #16]
	ldr	r3, [r5, #28]
	add	lr, ip, r1
	add	r4, lr, r3
	cmp	r4, #512
	ble	.L111
.L56:
	ldr	r3, .L118
	ldrh	r3, [r3, #48]
	tst	r3, #32
	lsl	r3, r1, #9
	bne	.L57
	ldr	ip, [r5, #20]
	cmn	ip, r0
	bmi	.L57
	sub	ip, r0, ip
	add	lr, ip, r3
	ldrb	lr, [r2, lr]	@ zero_extendqisi2
	cmp	lr, #0
	beq	.L57
	ldr	lr, [r5, #28]
	add	lr, r1, lr
	sub	lr, lr, #1
	add	lr, ip, lr, lsl #9
	ldrb	lr, [r2, lr]	@ zero_extendqisi2
	cmp	lr, #0
	beq	.L57
	ldr	lr, .L118+20
	ldr	r0, [lr]
	cmp	r0, #0
	str	ip, [r5, #12]
	ble	.L79
	sub	r4, ip, r0
	cmp	r4, #120
	bgt	.L79
	sub	r0, r0, #1
	str	r0, [lr]
	mov	r0, ip
.L57:
	ldr	ip, .L118
	ldrh	ip, [ip, #48]
	tst	ip, #16
	bne	.L58
	ldr	lr, [r5, #20]
	ldr	ip, [r5, #24]
	add	r4, lr, r0
	add	r6, r4, ip
	cmp	r6, #512
	ble	.L112
.L58:
	ldr	ip, .L118
	ldrh	ip, [ip, #48]
	ands	ip, ip, #2
	moveq	lr, #4
	add	r3, r0, r3
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	streq	ip, [r5, #44]
	streq	lr, [r5, #36]
	cmp	r3, #2
	beq	.L113
.L60:
	cmp	r3, #3
	beq	.L114
.L63:
	ldr	r3, .L118+24
	add	ip, r3, #24
	add	r2, r3, #8
	ldm	r2, {r2, r3}
	ldm	ip, {ip, lr}
	stmib	sp, {r2, ip, lr}
	str	r3, [sp]
	add	r2, r5, #24
	ldm	r2, {r2, r3}
	ldr	r7, .L118+28
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L64
	ldr	r1, [r5, #8]
.L65:
	ldr	r4, .L118+32
	ldr	r0, [r5, #12]
	ldr	r9, .L118+36
	ldr	r10, .L118+20
	ldr	fp, .L118+40
	add	r6, r4, #336
	b	.L71
.L66:
	add	r4, r4, #56
	cmp	r6, r4
	beq	.L115
.L71:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	bne	.L66
	add	r2, r4, #24
	ldm	r2, {r2, ip}
	ldr	r3, [r4, #8]
	str	ip, [sp, #12]
	ldr	ip, [r4, #12]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	str	ip, [sp]
	add	r2, r5, #24
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L110
	mov	ip, #1
	ldr	r2, [r5, #12]
	ldr	r3, [r9]
	rsb	r0, r2, #50
	sub	r3, r3, #1
	str	r0, [sp, #20]
	ldr	r0, .L118+44
	rsb	r1, r3, r3, lsl #3
	sub	r2, r2, #50
	add	r1, r0, r1, lsl #3
	cmp	r2, #32
	mov	lr, #300
	str	r3, [r9]
	str	ip, [r1, #52]
	bhi	.L116
.L68:
	mov	r2, #50
	mov	r3, #320
	str	r2, [r4, #12]
	str	r3, [r4, #8]
.L70:
	mov	r3, #50
	str	r3, [r5, #12]
	mov	r3, #420
	str	r3, [r5, #8]
	ldr	r3, .L118+16
	str	lr, [r3]
	mov	r3, #0
	str	r3, [r10]
	ldr	r3, .L118+48
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	fp
.L110:
	add	r4, r4, #56
	cmp	r6, r4
	ldr	r1, [r5, #8]
	ldr	r0, [r5, #12]
	bne	.L71
.L115:
	ldr	r3, [r8]
	add	r1, r3, r1, lsl #9
	ldrb	r3, [r1, r0]	@ zero_extendqisi2
	cmp	r3, #5
	beq	.L117
.L72:
	cmp	r3, #4
	bne	.L73
	ldr	r3, .L118+52
	ldr	r3, [r3]
	cmp	r3, #1
	movle	r2, #1
	ldrle	r3, .L118+56
	strle	r2, [r3, #8]
.L73:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animatePlayer
.L64:
	ldr	r3, .L118
	ldrh	r3, [r3, #48]
	tst	r3, #1
	ldr	r1, [r5, #8]
	bne	.L65
	mov	r3, #1
	ldr	r0, .L118+60
	ldr	r2, .L118+64
	add	r1, r1, #15
	str	r1, [r5, #8]
	str	r3, [r0]
	str	r3, [r2]
	b	.L65
.L116:
	ldr	r0, [sp, #20]
	ldr	r3, [r5, #8]
	cmp	r0, #32
	rsb	r2, r3, #420
	sub	r3, r3, #420
	bhi	.L69
	cmp	r3, #32
	bls	.L68
.L69:
	cmp	r2, #32
	bhi	.L70
	b	.L68
.L111:
	add	r3, r3, r1
	add	r3, r3, ip
	sub	r3, r3, #1
	add	r3, r0, r3, lsl #9
	ldrb	ip, [r2, r3]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L56
	ldr	r4, [r5, #24]
	ldr	ip, .L118+68
	add	r3, r3, r4
	ldrb	r3, [r3, ip]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L56
	ldr	r1, .L118+16
	ldr	ip, .L118+72
	ldr	r3, [r1]
	cmp	r3, ip
	str	lr, [r5, #8]
	bgt	.L77
	sub	ip, lr, r3
	cmp	ip, #80
	ble	.L77
	add	r3, r3, #1
	str	r3, [r1]
	mov	r1, lr
	b	.L56
.L112:
	add	ip, ip, r0
	add	ip, ip, lr
	sub	ip, ip, #1
	add	lr, ip, r3
	ldrb	lr, [r2, lr]	@ zero_extendqisi2
	cmp	lr, #0
	beq	.L58
	ldr	lr, [r5, #28]
	add	lr, r1, lr
	sub	lr, lr, #1
	add	ip, ip, lr, lsl #9
	ldrb	ip, [r2, ip]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L58
	ldr	lr, .L118+20
	ldr	ip, [lr]
	ldr	r6, .L118+76
	sub	r0, r4, ip
	cmp	r0, #120
	movgt	r0, #1
	movle	r0, #0
	cmp	ip, r6
	movgt	r0, #0
	cmp	r0, #0
	addne	ip, ip, #1
	mov	r0, r4
	str	r4, [r5, #12]
	strne	ip, [lr]
	b	.L58
.L114:
	ldr	r3, .L118+80
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L63
	ldr	r3, .L118+84
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L63
	ldr	r3, .L118+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L118+40
	mov	lr, pc
	bx	r3
	mov	r3, #1
	ldr	r1, .L118+88
	ldr	r2, .L118+56
	str	r3, [r1]
	str	r3, [r2, #4]
	ldr	r0, [r5, #12]
	ldr	r1, [r5, #8]
	b	.L63
.L117:
	mov	r4, #1
	mov	r0, #300
	mov	r1, #0
	mov	lr, #50
	mov	ip, #420
	ldr	r2, .L118+36
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	ldr	r2, .L118+44
	rsb	r3, r3, r3, lsl #3
	add	r3, r2, r3, lsl #3
	str	r4, [r3, #52]
	ldr	r3, .L118+16
	ldr	r2, .L118+20
	str	r0, [r3]
	ldr	r3, .L118+48
	str	r1, [r2]
	str	lr, [r5, #12]
	str	ip, [r5, #8]
	mov	lr, pc
	bx	r3
	ldr	r3, .L118+40
	mov	lr, pc
	bx	r3
	add	r1, r5, #8
	ldm	r1, {r1, r2}
	ldr	r3, [r8]
	add	r3, r3, r1, lsl #9
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	b	.L72
.L113:
	ldr	r3, .L118+48
	ldr	r4, .L118+40
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r4
	ldr	r2, .L118+56
	ldr	r3, [r2]
	ands	r1, r3, #1
	bne	.L61
	mov	r1, #200
	mov	ip, #288
	ldr	r0, .L118+20
	str	ip, [r5, #12]
	str	r1, [r0]
	ldr	ip, .L118+16
	ldr	r0, .L118+92
	str	r1, [ip]
	str	r0, [r5, #8]
.L62:
	add	r3, r3, #1
	str	r3, [r2]
	mov	lr, pc
	bx	r4
	ldr	r1, [r5, #8]
	ldr	r3, [r8]
	ldr	r0, [r5, #12]
	add	r3, r3, r1, lsl #9
	ldrb	r3, [r3, r0]	@ zero_extendqisi2
	b	.L60
.L61:
	cmp	r3, #0
	rsblt	r1, r1, #0
	cmp	r1, #1
	bne	.L62
	mov	r1, #0
	mov	lr, #64
	mov	ip, #36
	ldr	r0, .L118+20
	str	r1, [r0]
	ldr	r0, .L118+16
	str	lr, [r5, #12]
	str	ip, [r5, #8]
	str	r1, [r0]
	b	.L62
.L75:
	mov	r1, r3
	b	.L55
.L79:
	mov	r0, ip
	b	.L57
.L77:
	mov	r1, lr
	b	.L56
.L119:
	.align	2
.L118:
	.word	67109120
	.word	player
	.word	collisionMap
	.word	level1_collisionMapBitmap
	.word	vOff
	.word	hOff
	.word	npc
	.word	collision
	.word	enemy
	.word	lives
	.word	waitForVBlank
	.word	hearts
	.word	hideSprites
	.word	enemyLeft
	.word	.LANCHOR0
	.word	textCheck
	.word	textNum
	.word	level1_collisionMapBitmap-1
	.word	350
	.word	270
	.word	oldButtons
	.word	buttons
	.word	keyObtained
	.word	275
	.size	updatePlayer1, .-updatePlayer1
	.align	2
	.global	initEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemy, %function
initEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, #0
	mov	lr, #16
	mov	fp, r5
	mov	r8, r5
	mov	r2, r5
	mov	r1, r5
	mov	ip, #1
	ldr	r0, .L179
	ldr	r6, [r0, #68]
	sub	sp, sp, #60
	str	r6, [sp, #12]
	ldr	r6, [r0, #64]
	str	r6, [sp, #8]
	ldr	r6, [r0, #92]
	str	r6, [sp, #4]
	ldr	r6, [r0, #180]
	str	r6, [sp, #36]
	ldr	r6, [r0, #176]
	str	r6, [sp, #40]
	ldr	r6, [r0, #204]
	str	r6, [sp, #44]
	ldr	r6, [r0, #124]
	str	r6, [sp, #20]
	ldr	r6, [r0, #120]
	str	r6, [sp, #24]
	ldr	r6, [r0, #148]
	str	r6, [sp, #28]
	ldr	r6, [r0, #236]
	str	r6, [sp, #48]
	ldr	r6, [r0, #232]
	add	r7, r0, #8
	mov	r4, r0
	mov	r3, r0
	ldr	r9, [r0, #36]
	str	r5, [sp, #32]
	str	r5, [sp, #16]
	ldm	r7, {r7, r10}
	str	r6, [sp, #52]
	ldr	r0, [r0, #260]
.L133:
	mov	r6, #3
	cmp	r2, #0
	str	lr, [r3, #24]
	str	lr, [r3, #28]
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r1, [r3, #32]
	str	r6, [r3, #48]
	str	r1, [r3, #44]
	str	r1, [r3, #52]
	beq	.L139
	cmp	r2, #1
	beq	.L140
	cmp	r2, #2
	bne	.L176
	mov	r6, #0
	str	r6, [sp, #28]
	mov	r6, #55
	str	r6, [sp, #24]
	mov	r6, #1
	str	r6, [sp, #16]
	mov	r6, #255
	str	r6, [sp, #20]
.L124:
	add	r2, r2, #1
	cmp	r2, #6
	add	r3, r3, #56
	bne	.L133
	cmp	r8, #0
	strne	r10, [r4, #12]
	strne	r7, [r4, #8]
	strne	r9, [r4, #36]
	cmp	fp, #0
	beq	.L135
	ldr	r3, [sp, #12]
	str	r3, [r4, #68]
	ldr	r3, [sp, #8]
	str	r3, [r4, #64]
	ldr	r3, [sp, #4]
	str	r3, [r4, #92]
.L135:
	ldr	r3, [sp, #16]
	cmp	r3, #0
	beq	.L136
	ldr	r3, [sp, #20]
	str	r3, [r4, #124]
	ldr	r3, [sp, #24]
	str	r3, [r4, #120]
	ldr	r3, [sp, #28]
	str	r3, [r4, #148]
.L136:
	ldr	r3, [sp, #32]
	cmp	r3, #0
	beq	.L137
	ldr	r3, [sp, #36]
	str	r3, [r4, #180]
	ldr	r3, [sp, #40]
	str	r3, [r4, #176]
	ldr	r3, [sp, #44]
	str	r3, [r4, #204]
.L137:
	cmp	r5, #0
	beq	.L120
	ldr	r3, [sp, #48]
	str	r3, [r4, #236]
	ldr	r3, [sp, #52]
	str	r0, [r4, #260]
	str	r3, [r4, #232]
	b	.L120
.L139:
	mov	r7, #40
	mov	r9, r2
	mov	r10, r7
	mov	r8, #1
	b	.L124
.L176:
	cmp	r2, r6
	bne	.L177
	mov	r6, #0
	str	r6, [sp, #44]
	ldr	r6, .L179+4
	str	r6, [sp, #40]
	mov	r6, #1
	str	r6, [sp, #32]
	mov	r6, #460
	str	r6, [sp, #36]
	b	.L124
.L177:
	cmp	r2, #4
	beq	.L178
	cmp	r2, #5
	bne	.L124
	cmp	r8, #0
	strne	r10, [r4, #12]
	strne	r7, [r4, #8]
	strne	r9, [r4, #36]
	cmp	fp, #0
	beq	.L127
	ldr	r3, [sp, #12]
	str	r3, [r4, #68]
	ldr	r3, [sp, #8]
	str	r3, [r4, #64]
	ldr	r3, [sp, #4]
	str	r3, [r4, #92]
.L127:
	ldr	r3, [sp, #16]
	cmp	r3, #0
	beq	.L128
	ldr	r3, [sp, #20]
	str	r3, [r4, #124]
	ldr	r3, [sp, #24]
	str	r3, [r4, #120]
	ldr	r3, [sp, #28]
	str	r3, [r4, #148]
.L128:
	ldr	r3, [sp, #32]
	cmp	r3, #0
	beq	.L129
	ldr	r3, [sp, #36]
	str	r3, [r4, #180]
	ldr	r3, [sp, #40]
	str	r3, [r4, #176]
	ldr	r3, [sp, #44]
	str	r3, [r4, #204]
.L129:
	cmp	r5, #0
	ldrne	r3, [sp, #48]
	strne	r3, [r4, #236]
	ldrne	r3, [sp, #52]
	mov	r1, #115
	mov	r2, #170
	strne	r3, [r4, #232]
	mov	r3, #0
	strne	r0, [r4, #260]
	str	r1, [r4, #292]
	str	r2, [r4, #288]
	str	r3, [r4, #316]
.L120:
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L140:
	mov	r6, #0
	mov	fp, #300
	stmib	sp, {r6, fp}
	mov	r6, #40
	mov	fp, r2
	str	r6, [sp, #12]
	b	.L124
.L178:
	mov	r2, #460
	str	r2, [sp, #52]
	mov	r2, #195
	mov	r0, #0
	str	r2, [sp, #48]
	mov	r5, #1
	mov	r2, #5
	add	r3, r3, #56
	b	.L133
.L180:
	.align	2
.L179:
	.word	enemy
	.word	275
	.size	initEnemy, .-initEnemy
	.align	2
	.global	initLevel1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLevel1, %function
initLevel1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #300
	push	{r4, r5, r6, lr}
	mov	r4, #0
	mov	r1, #5
	mov	r2, #1
	mov	r0, #6
	ldr	r3, .L185
	str	ip, [r3]
	ldr	r3, .L185+4
	str	r4, [r3]
	ldr	r3, .L185+8
	ldr	ip, .L185+12
	str	r4, [r3]
	ldr	r3, .L185+16
	str	r4, [ip]
	str	r4, [r3]
	ldr	ip, .L185+20
	ldr	r3, .L185+24
	str	r4, [ip]
	str	r4, [r3]
	ldr	ip, .L185+28
	ldr	r3, .L185+32
	str	r4, [ip]
	str	r4, [r3]
	ldr	ip, .L185+36
	ldr	r3, .L185+40
	str	r4, [ip]
	str	r4, [r3]
	ldr	ip, .L185+44
	ldr	r3, .L185+48
	str	r4, [ip]
	str	r4, [r3]
	ldr	ip, .L185+52
	ldr	r3, .L185+56
	str	r4, [ip]
	str	r1, [r3]
	ldr	ip, .L185+60
	ldr	r1, .L185+64
	ldr	r3, .L185+68
	ldr	r5, .L185+72
	str	r2, [r3]
	str	r0, [r1]
	str	r4, [ip]
	str	r4, [r5, #8]
	str	r4, [r5]
	str	r4, [r5, #4]
	bl	initPlayer1
	bl	initEnemy
	mov	r2, #8
	ldr	r3, .L185+76
	add	r1, r3, #280
.L182:
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r4, [r3, #52]
	add	r3, r3, #56
	cmp	r3, r1
	bne	.L182
	ldr	r2, .L185+80
	ldr	r3, .L185+84
	str	r4, [r2]
	str	r4, [r5, #4]
	mov	lr, pc
	bx	r3
	ldr	r3, .L185+88
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L185+92
	ldr	r3, .L185+96
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L186:
	.align	2
.L185:
	.word	vOff
	.word	textCheck
	.word	goldApple
	.word	hOff
	.word	redApple
	.word	havePotion
	.word	bridgeMap
	.word	blueApple
	.word	haveFlowers
	.word	skull
	.word	haveEggs
	.word	gameWin
	.word	haveReaperCloth
	.word	gaveFlowers
	.word	lives
	.word	haveRelic
	.word	enemyLeft
	.word	firstTime
	.word	.LANCHOR0
	.word	hearts
	.word	keyObtained
	.word	stopSound
	.word	level1Music_length
	.word	level1Music_data
	.word	playSoundA
	.size	initLevel1, .-initLevel1
	.align	2
	.global	updateEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemy, %function
updateEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	fp, .L274
	mov	r7, #0
	mov	r4, fp
	ldr	r9, .L274+4
	ldr	r10, .L274+8
	ldr	r8, .L274+12
	sub	sp, sp, #20
.L207:
	mov	r0, #4
	ldr	r2, [r4, #32]
	ldr	r1, .L274+16
	smull	r3, r1, r2, r1
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	ldr	r1, [r4, #36]
	cmp	r2, r3, lsl #1
	str	r0, [r4, #36]
	str	r1, [r4, #40]
	bne	.L188
	add	r0, r4, #44
	ldm	r0, {r0, r1}
	ldr	r3, .L274+20
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L188:
	ldr	r3, [r9, #36]
	ldr	r1, [r4, #12]
	cmp	r3, #4
	ldr	r3, [r9, #12]
	sub	r2, r1, r3
	beq	.L189
	cmp	r2, #69
	bls	.L266
	ldr	r2, [r4, #8]
.L190:
	sub	r3, r3, r1
	cmp	r3, #69
	bls	.L269
.L191:
	ldr	r3, [r9, #8]
	sub	r1, r2, r3
	cmp	r1, #69
	bls	.L270
.L192:
	sub	r3, r3, r2
	cmp	r3, #69
	bls	.L271
.L194:
	mov	r5, fp
	mov	r6, #0
.L203:
	cmp	r7, r6
	beq	.L200
	add	r2, r5, #8
	ldm	r2, {r2, r3}
	ldr	r0, [r5, #28]
	ldr	r1, [r5, #24]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L200
	ldr	r3, [r4, #8]
	ldr	r2, [r5, #8]
	sub	r2, r2, r3
	cmp	r2, #0
	add	r2, r3, #2
	subge	r3, r3, #2
	strlt	r2, [r4, #8]
	strge	r3, [r4, #8]
.L200:
	add	r6, r6, #1
	cmp	r6, #6
	add	r5, r5, #56
	bne	.L203
	ldr	r3, [r4, #52]
	cmp	r3, #0
	bne	.L204
	ldr	r1, [r4, #8]
	ldr	r3, [r10]
	ldr	r2, [r4, #12]
	add	r3, r3, r1, lsl #9
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L204
	mov	r2, #1
	ldr	r1, .L274+24
	ldr	r3, [r1]
	sub	r3, r3, #1
	str	r3, [r1]
	str	r2, [r4, #52]
.L204:
	ldr	r3, [r4, #36]
	cmp	r3, #4
	moveq	r3, #0
	ldrne	r3, [r4, #32]
	ldreq	r2, [r4, #40]
	addne	r3, r3, #1
	add	r7, r7, #1
	streq	r3, [r4, #44]
	streq	r3, [r4, #32]
	streq	r2, [r4, #36]
	strne	r3, [r4, #32]
	cmp	r7, #6
	add	r4, r4, #56
	bne	.L207
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L189:
	cmp	r2, #74
	bls	.L213
	ldr	r2, [r4, #8]
.L196:
	sub	r3, r3, r1
	cmp	r3, #74
	bls	.L272
.L197:
	ldr	r3, [r9, #8]
	sub	r1, r2, r3
	cmp	r1, #74
	bls	.L273
.L198:
	sub	r3, r3, r2
	cmp	r3, #74
	bhi	.L194
	ldr	r1, [r4, #16]
	ldr	r3, [r10]
	sub	r2, r2, r1
	ldr	r1, [r4, #12]
	add	r3, r3, r2, lsl #9
	ldrb	r0, [r3, r1]	@ zero_extendqisi2
	cmp	r0, #0
	add	r3, r3, r1
	beq	.L194
	ldr	r1, [r4, #24]
	add	r3, r3, r1
	ldrb	r3, [r3, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	movne	r3, #2
	strne	r2, [r4, #8]
	strne	r3, [r4, #36]
	b	.L194
.L271:
	ldr	r3, [r4, #28]
	ldr	r0, [r4, #16]
	add	r3, r2, r3
	ldr	r1, [r10]
	add	r3, r3, r0
	ldr	ip, [r4, #12]
	sub	r3, r3, #1
	add	r3, r1, r3, lsl #9
	ldrb	r1, [r3, ip]	@ zero_extendqisi2
	cmp	r1, #0
	add	r3, r3, ip
	beq	.L194
	ldr	r1, [r4, #24]
	add	r3, r3, r1
	ldrb	r3, [r3, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	movne	r3, #0
	addne	r2, r2, r0
	strne	r2, [r4, #8]
	strne	r3, [r4, #36]
	b	.L194
.L266:
	ldr	ip, [r10]
	ldr	r2, [r4, #8]
	ldr	r0, [r4, #20]
	add	lr, ip, r2, lsl #9
	sub	r0, r1, r0
	ldrb	lr, [lr, r0]	@ zero_extendqisi2
	cmp	lr, #0
	beq	.L190
	ldr	lr, [r4, #28]
	add	lr, r2, lr
	sub	lr, lr, #1
	add	ip, ip, lr, lsl #9
	ldrb	ip, [ip, r0]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L190
	mov	r1, r0
	mov	ip, #1
	sub	r3, r3, r1
	cmp	r3, #69
	str	r0, [r4, #12]
	str	ip, [r4, #36]
	bhi	.L191
.L269:
	ldr	r3, [r4, #24]
	ldr	ip, [r4, #20]
	ldr	r0, [r10]
	add	r3, r1, r3
	add	r3, r3, ip
	sub	r3, r3, #1
	add	lr, r0, r2, lsl #9
	ldrb	lr, [lr, r3]	@ zero_extendqisi2
	cmp	lr, #0
	beq	.L191
	ldr	lr, [r4, #28]
	add	lr, r2, lr
	sub	lr, lr, #1
	add	r0, r0, lr, lsl #9
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L191
	mov	r3, #0
	str	r3, [r4, #36]
	ldr	r3, [r9, #8]
	add	r1, r1, ip
	str	r1, [r4, #12]
	sub	r1, r2, r3
	cmp	r1, #69
	bhi	.L192
.L270:
	ldr	r0, [r4, #16]
	ldr	r1, [r10]
	ldr	ip, [r4, #12]
	sub	r0, r2, r0
	add	r1, r1, r0, lsl #9
	ldrb	lr, [r1, ip]	@ zero_extendqisi2
	cmp	lr, #0
	add	r1, r1, ip
	beq	.L192
	ldr	ip, [r4, #24]
	add	r1, r1, ip
	ldrb	r1, [r1, #-1]	@ zero_extendqisi2
	cmp	r1, #0
	movne	r1, #1
	movne	r2, r0
	strne	r0, [r4, #8]
	strne	r1, [r4, #36]
	b	.L192
.L273:
	ldr	r1, [r4, #28]
	ldr	r0, [r4, #16]
	add	r1, r2, r1
	ldr	ip, [r10]
	add	r1, r1, r0
	ldr	lr, [r4, #12]
	sub	r1, r1, #1
	add	r1, ip, r1, lsl #9
	ldrb	ip, [r1, lr]	@ zero_extendqisi2
	cmp	ip, #0
	add	r1, r1, lr
	beq	.L198
	ldr	ip, [r4, #24]
	add	r1, r1, ip
	ldrb	r1, [r1, #-1]	@ zero_extendqisi2
	cmp	r1, #0
	movne	r1, #3
	addne	r2, r2, r0
	strne	r2, [r4, #8]
	strne	r1, [r4, #36]
	b	.L198
.L272:
	ldr	r0, [r10]
	ldr	ip, [r4, #20]
	add	r3, r0, r2, lsl #9
	sub	r1, r1, ip
	ldrb	r3, [r3, r1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L197
	ldr	r3, [r4, #28]
	add	r3, r2, r3
	sub	r3, r3, #1
	add	r3, r0, r3, lsl #9
	ldrb	r3, [r3, r1]	@ zero_extendqisi2
	cmp	r3, #0
	movne	r3, #2
	strne	r1, [r4, #12]
	strne	r3, [r4, #36]
	b	.L197
.L213:
	ldr	r0, [r4, #24]
	ldr	ip, [r4, #20]
	ldr	lr, [r10]
	ldr	r2, [r4, #8]
	add	r0, r1, r0
	add	r0, r0, ip
	sub	r0, r0, #1
	add	r5, lr, r2, lsl #9
	ldrb	r5, [r5, r0]	@ zero_extendqisi2
	cmp	r5, #0
	beq	.L196
	ldr	r5, [r4, #28]
	add	r5, r2, r5
	sub	r5, r5, #1
	add	lr, lr, r5, lsl #9
	ldrb	r0, [lr, r0]	@ zero_extendqisi2
	cmp	r0, #0
	movne	r0, #3
	addne	r1, r1, ip
	strne	r1, [r4, #12]
	strne	r0, [r4, #36]
	b	.L196
.L275:
	.align	2
.L274:
	.word	enemy
	.word	player
	.word	collisionMap
	.word	collision
	.word	1717986919
	.word	__aeabi_idivmod
	.word	enemyLeft
	.size	updateEnemy, .-updateEnemy
	.align	2
	.global	updateLevel1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLevel1, %function
updateLevel1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updatePlayer1
	pop	{r4, lr}
	b	updateEnemy
	.size	updateLevel1, .-updateLevel1
	.align	2
	.global	drawEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemy, %function
drawEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L292
	ldr	r2, .L292+4
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, [r3]
	ldr	r4, [r2]
	ldr	r10, .L292+8
	ldr	r3, .L292+12
	lsl	r8, r4, #16
	lsl	r7, r6, #16
	mov	fp, #0
	ldr	r9, [r10]
	ldr	r0, .L292+16
	lsr	r8, r8, #16
	lsr	r7, r7, #16
	add	r5, r3, #336
	b	.L281
.L279:
	add	r3, r3, #56
	cmp	r3, r5
	add	r0, r0, #8
	beq	.L291
.L281:
	ldr	ip, [r3, #8]
	ldr	r2, [r3, #28]
	sub	r1, ip, r4
	cmn	r1, r2
	bmi	.L279
	ldr	lr, [r3, #12]
	ldr	r2, [r3, #24]
	add	r2, lr, r2
	sub	r2, r2, r6
	mvn	r2, r2
	cmp	r1, #160
	lsr	r2, r2, #31
	movgt	r2, #0
	cmp	r2, #0
	beq	.L279
	sub	r1, lr, r6
	cmp	r1, #240
	bgt	.L279
	ldr	fp, [r3, #52]
	cmp	fp, #0
	add	r1, r0, #720
	add	r9, r9, #1
	beq	.L280
	ldrh	ip, [r1]
	add	r3, r3, #56
	orr	ip, ip, #512
	cmp	r3, r5
	mov	fp, r2
	strh	ip, [r1]	@ movhi
	add	r0, r0, #8
	bne	.L281
.L291:
	cmp	fp, #0
	strne	r9, [r10]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L280:
	ldr	r1, [r3, #44]
	sub	lr, lr, r7
	mov	fp, r2
	lsl	lr, lr, #23
	ldr	r2, [r3, #36]
	add	r1, r1, #3
	sub	ip, ip, r8
	lsr	lr, lr, #23
	add	r2, r2, r1, lsl #5
	orr	lr, lr, #16384
	and	r1, ip, #255
	add	ip, r0, #720
	strh	lr, [ip, #2]	@ movhi
	lsl	r2, r2, #1
	add	lr, r0, #724
	strh	r1, [ip]	@ movhi
	strh	r2, [lr]	@ movhi
	b	.L279
.L293:
	.align	2
.L292:
	.word	hOff
	.word	vOff
	.word	shadowOAMIndex
	.word	enemy
	.word	shadowOAM
	.size	drawEnemy, .-drawEnemy
	.align	2
	.global	drawLevel1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLevel1, %function
drawLevel1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #5
	push	{r4, lr}
	mov	r0, #180
	mov	lr, #960
	ldr	r1, .L300
	ldr	r3, .L300+4
	mov	r4, r2
	str	r2, [r1]
	ldr	r2, .L300+8
	add	ip, r3, #40
.L297:
	ldr	r1, [r2, #52]
	cmp	r1, #0
	ldrhne	r1, [r3]
	orrne	r1, r1, #512
	strheq	r0, [r3, #2]	@ movhi
	strhne	r1, [r3]	@ movhi
	strheq	r4, [r3]	@ movhi
	strheq	lr, [r3, #4]	@ movhi
	add	r3, r3, #8
	addeq	r0, r0, #10
	cmp	r3, ip
	add	r2, r2, #56
	bne	.L297
	bl	drawPlayer
	bl	drawNPC
	bl	drawEnemy
	ldr	r3, .L300+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L300+16
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L300+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L300+20
	ldrh	r1, [r2]
	ldr	r2, .L300+24
	ldrh	r2, [r2]
	strh	r1, [r3, #20]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #22]	@ movhi
	bx	lr
.L301:
	.align	2
.L300:
	.word	shadowOAMIndex
	.word	shadowOAM
	.word	hearts
	.word	waitForVBlank
	.word	DMANow
	.word	hOff
	.word	vOff
	.size	drawLevel1, .-drawLevel1
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	firstTime,4,4
	.comm	textNum,4,4
	.comm	keyObtained,4,4
	.global	treasureFlag
	.global	doorFlag
	.comm	enemyLeft,4,4
	.comm	textCheck,4,4
	.comm	lives,4,4
	.comm	shadowOAMIndex,4,4
	.global	ladderCheck
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	collisionMap,4,4
	.comm	npc,56,4
	.comm	hearts,280,4
	.comm	enemy,336,4
	.comm	player,56,4
	.comm	shadowOAM,1024,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	ladderCheck, %object
	.size	ladderCheck, 4
ladderCheck:
	.space	4
	.type	treasureFlag, %object
	.size	treasureFlag, 4
treasureFlag:
	.space	4
	.type	doorFlag, %object
	.size	doorFlag, 4
doorFlag:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
