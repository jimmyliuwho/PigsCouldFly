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
	.file	"level2.c"
	.text
	.align	2
	.global	drawForeground
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawForeground, %function
drawForeground:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r1, #0
	mov	r6, #9024
	ldr	r2, .L8
	ldr	r3, .L8+4
	ldr	ip, [r2]
	ldr	r5, [r3]
	lsl	r4, ip, #16
	lsl	lr, r5, #16
	ldr	r3, .L8+8
	ldr	r2, .L8+12
	ldr	r8, .L8+16
	ldr	r7, .L8+20
	lsr	r4, r4, #16
	lsr	lr, lr, #16
.L4:
	ldr	r0, [r3, #52]
	cmp	r0, #0
	beq	.L2
	ldrh	r0, [r2, #40]
	orr	r0, r0, #512
	strh	r0, [r2, #40]	@ movhi
.L3:
	cmp	r1, #1
	add	r3, r3, #56
	add	r2, r2, #8
	bne	.L5
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L2:
	ldr	r9, [r3, #8]
	ldr	r0, [r3, #28]
	sub	r10, r9, ip
	cmn	r10, r0
	bmi	.L3
	ldr	r10, [r3, #12]
	ldr	r0, [r3, #24]
	add	r0, r10, r0
	sub	r0, r0, r5
	cmp	r0, #0
	blt	.L3
	ldr	r0, [r3, #288]
	sub	r0, r0, ip
	cmp	r0, #160
	sub	fp, r10, r5
	bgt	.L3
	cmp	fp, #240
	bgt	.L3
	sub	r0, r10, lr
	and	r0, r0, r8
	sub	r9, r9, r4
	orr	r0, r0, r7
	and	r9, r9, #255
	strh	r6, [r2, #44]	@ movhi
	strh	r0, [r2, #42]	@ movhi
	strh	r9, [r2, #40]	@ movhi
	b	.L3
.L5:
	mov	r1, #1
	b	.L4
.L9:
	.align	2
.L8:
	.word	vOff
	.word	hOff
	.word	foreground
	.word	shadowOAM
	.word	511
	.word	-32768
	.size	drawForeground, .-drawForeground
	.align	2
	.global	initPlayer2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer2, %function
initPlayer2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #16
	mov	ip, #1
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #3
	mov	r0, #250
	ldr	r3, .L12
	ldr	lr, .L12+4
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	ip, [r3, #16]
	ldr	r1, .L12+8
	str	ip, [r3, #20]
	ldr	ip, .L12+12
	str	r4, [r3, #48]
	str	r0, [lr]
	str	r0, [r3, #12]
	str	r1, [r3, #8]
	str	r1, [ip]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	player
	.word	prevCol
	.word	465
	.word	prevRow
	.size	initPlayer2, .-initPlayer2
	.align	2
	.global	doorVariables
	.syntax unified
	.arm
	.fpu softvfp
	.type	doorVariables, %function
doorVariables:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #0
	ldr	r3, .L16
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L16+4
	add	r0, r3, #8
	ldm	r0, {r0, lr}
	ldr	ip, .L16+8
	ldr	r1, .L16+12
	ldr	r3, .L16+16
	str	lr, [ip]
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	pauseSound
	.word	player
	.word	prevCol
	.word	prevRow
	.word	doorFlag
	.size	doorVariables, .-doorVariables
	.align	2
	.global	playerHit
	.syntax unified
	.arm
	.fpu softvfp
	.type	playerHit, %function
playerHit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #1
	ldr	r1, .L20
	ldr	r3, [r1]
	ldr	r2, .L20+4
	sub	r3, r3, #1
	rsb	r0, r3, r3, lsl #3
	add	r2, r2, r0, lsl #3
	push	{r4, lr}
	ldr	r0, .L20+8
	str	ip, [r2, #52]
	str	r3, [r1]
	mov	lr, pc
	bx	r0
	ldr	r3, .L20+12
	mov	lr, pc
	bx	r3
	mov	r2, #480
	mov	lr, #250
	mov	ip, #120
	mov	r1, #352
	ldr	r3, .L20+16
	ldr	r0, .L20+20
	str	r2, [r3, #8]
	ldr	r2, .L20+24
	str	lr, [r3, #12]
	str	ip, [r0]
	str	r1, [r2]
	pop	{r4, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	lives
	.word	hearts
	.word	hideSprites
	.word	waitForVBlank
	.word	player
	.word	hOff
	.word	vOff
	.size	playerHit, .-playerHit
	.align	2
	.global	updatePlayer2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer2, %function
updatePlayer2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L175
	ldrh	r3, [r3, #48]
	ldr	r4, .L175+4
	tst	r3, #64
	ldr	r6, .L175+8
	ldr	r0, [r4, #8]
	bne	.L23
	ldr	r3, [r4, #16]
	ldr	r2, [r6]
	ldr	r1, [r4, #12]
	sub	r3, r0, r3
	add	r2, r2, r3, lsl #9
	ldrb	ip, [r2, r1]	@ zero_extendqisi2
	cmp	ip, #0
	add	r2, r2, r1
	bne	.L159
.L23:
	ldr	r3, .L175
	ldrh	r3, [r3, #48]
	ldr	lr, [r4, #28]
	tst	r3, #128
	add	r3, r0, lr
	bne	.L24
	ldr	r5, [r4, #16]
	ldr	r2, [r6]
	add	r1, r5, r3
	ldr	ip, [r4, #12]
	sub	r1, r1, #1
	add	r2, r2, r1, lsl #9
	ldrb	r1, [r2, ip]	@ zero_extendqisi2
	cmp	r1, #0
	add	r2, r2, ip
	bne	.L160
.L24:
	ldr	r2, .L175
	ldrh	r2, [r2, #48]
	tst	r2, #32
	bne	.L26
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #20]
	cmn	r2, r1
	bmi	.L26
	ldr	ip, [r6]
	sub	r2, r2, r1
	add	r1, ip, r0, lsl #9
	ldrb	r1, [r1, r2]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L26
	sub	r1, r3, #1
	add	ip, ip, r1, lsl #9
	ldrb	r1, [ip, r2]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L26
	ldr	ip, .L175+12
	ldr	r1, [ip]
	cmp	r1, #0
	str	r2, [r4, #12]
	ble	.L26
	sub	r2, r2, r1
	cmp	r2, #120
	suble	r1, r1, #1
	strle	r1, [ip]
.L26:
	ldr	r2, .L175
	ldrh	r2, [r2, #48]
	tst	r2, #16
	bne	.L29
	add	r1, r4, #20
	ldm	r1, {r1, ip}
	ldr	r2, [r4, #12]
	add	r5, r2, r1
	add	lr, r5, ip
	cmp	lr, #512
	ble	.L161
.L29:
	cmp	r3, #512
	bge	.L149
	ldr	r5, .L175+16
.L31:
	cmp	r0, #5
	ble	.L162
.L32:
	ldr	r3, [r4, #12]
	ldr	r1, [r6]
	add	r3, r3, r0, lsl #9
	ldrb	r2, [r1, r3]	@ zero_extendqisi2
	cmp	r2, #16
	add	r3, r1, r3
	beq	.L163
.L33:
	cmp	r2, #13
	beq	.L164
	cmp	r2, #18
	beq	.L165
.L35:
	cmp	r2, #6
	beq	.L166
.L36:
	cmp	r2, #11
	beq	.L167
.L37:
	ldr	r1, [r5]
	cmp	r1, #0
	bne	.L38
	cmp	r2, #17
	beq	.L168
.L38:
	cmp	r2, #15
	beq	.L169
	cmp	r2, #14
	beq	.L170
	cmp	r2, #5
	beq	.L171
.L39:
	mov	r1, #1
	ldr	r2, .L175+20
	str	r1, [r2]
.L43:
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, #8
	bne	.L47
.L174:
	ldr	r2, [r5]
	cmp	r2, #1
	beq	.L172
.L77:
	ldr	r3, .L175+24
	mov	lr, pc
	bx	r3
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L160:
	ldr	r1, [r4, #24]
	add	r2, r2, r1
	ldrb	r2, [r2, #-1]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L24
	ldr	r1, .L175+28
	ldr	r3, .L175+32
	ldr	r2, [r1]
	add	r0, r0, r5
	cmp	r2, r3
	str	r0, [r4, #8]
	add	r3, r0, lr
	bgt	.L24
	sub	ip, r0, r2
	cmp	ip, #80
	addgt	r2, r2, #1
	strgt	r2, [r1]
	b	.L24
.L159:
	ldr	r1, [r4, #24]
	add	r2, r2, r1
	ldrb	r2, [r2, #-1]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L23
	ldr	r1, .L175+28
	ldr	r2, [r1]
	cmp	r2, #0
	str	r3, [r4, #8]
	ble	.L82
	sub	r0, r3, r2
	cmp	r0, #80
	bgt	.L82
	sub	r2, r2, #1
	mov	r0, r3
	str	r2, [r1]
	b	.L23
.L161:
	add	r2, r2, ip
	ldr	ip, [r6]
	add	r2, r2, r1
	sub	r2, r2, #1
	add	r1, ip, r0, lsl #9
	ldrb	r1, [r1, r2]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L29
	sub	r1, r3, #1
	add	ip, ip, r1, lsl #9
	ldrb	r2, [ip, r2]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L29
	ldr	ip, .L175+12
	ldr	r1, [ip]
	ldr	lr, .L175+36
	sub	r2, r5, r1
	cmp	r2, #120
	movgt	r2, #1
	movle	r2, #0
	cmp	r1, lr
	movgt	r2, #0
	cmp	r2, #0
	addne	r1, r1, #1
	str	r5, [r4, #12]
	strne	r1, [ip]
	b	.L29
.L170:
	ldr	r1, .L175+20
	ldr	r2, [r1]
	cmp	r2, #1
	moveq	r7, #2
	beq	.L158
.L41:
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r6]
	add	r2, r2, r3, lsl #9
	add	r3, r1, r2
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
.L52:
	cmp	r2, #3
	bne	.L57
	ldr	r2, [r5]
	cmp	r2, #1
	bne	.L77
	ldr	r1, .L175+40
	ldrh	r1, [r1]
	tst	r1, #1
	beq	.L77
	ldr	r1, .L175+44
	ldrh	r1, [r1]
	tst	r1, #1
	bne	.L77
	ldr	r1, .L175+48
	ldr	r0, .L175+52
	str	r2, [r1]
	str	r2, [r0]
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, #23
	beq	.L60
.L61:
	cmp	r2, #19
	bne	.L62
	ldr	r2, [r5]
	cmp	r2, #0
	bne	.L77
	ldr	r2, .L175+56
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L77
	ldr	r1, .L175+60
	str	r2, [r1]
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, #20
	beq	.L65
.L66:
	cmp	r2, #10
	bne	.L69
	ldr	r2, [r5]
	cmp	r2, #1
	bne	.L77
	ldr	r1, .L175+40
	ldrh	r1, [r1]
	tst	r1, #1
	beq	.L77
	ldr	r1, .L175+44
	ldrh	r1, [r1]
	tst	r1, #1
	bne	.L77
	ldr	r1, .L175+64
	ldr	r1, [r1]
	cmp	r1, #0
	bne	.L72
	mov	ip, #22
	ldr	r0, .L175+68
	ldr	r1, .L175+72
	str	ip, [r0]
	str	r2, [r1]
	ldrb	r2, [r3]	@ zero_extendqisi2
	b	.L69
.L172:
	ldr	r1, .L175
	ldrh	r1, [r1, #48]
	tst	r1, #1
	bne	.L77
	mov	ip, #5
	ldr	r1, .L175+68
	ldr	r0, .L175+76
	str	ip, [r1]
	ldr	r1, .L175+72
	str	r2, [r0]
	str	r2, [r1]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #21
	bne	.L41
.L50:
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r6]
	add	r2, r2, r3, lsl #9
	add	r3, r1, r2
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
.L57:
	cmp	r2, #23
	bne	.L61
	ldr	r2, .L175+40
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L77
	ldr	r1, .L175+44
	ldrh	r2, [r1]
	tst	r2, #1
	beq	.L173
	ldrb	r2, [r3]	@ zero_extendqisi2
.L62:
	cmp	r2, #20
	bne	.L66
	ldr	r2, [r5]
	cmp	r2, #0
	bne	.L77
.L65:
	ldr	r2, .L175+80
	ldr	r2, [r2]
	cmp	r2, #1
	beq	.L68
.L156:
	ldrb	r2, [r3]	@ zero_extendqisi2
.L69:
	cmp	r2, #9
	bne	.L73
	ldr	r2, [r5]
	cmp	r2, #0
	bne	.L77
	ldr	r2, .L175+40
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L77
	ldr	r1, .L175+44
	ldrh	r2, [r1]
	tst	r2, #1
	bne	.L77
	ldr	r2, .L175+84
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L74
	mov	ip, #1
	mov	r0, #22
	ldr	r2, .L175+72
	str	ip, [r2]
	ldr	r2, .L175+68
	str	r0, [r2]
.L75:
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, #4
	beq	.L79
.L80:
	cmp	r2, #22
	bne	.L77
	ldr	r3, [r5]
	cmp	r3, #1
	bne	.L77
	ldr	r2, .L175+40
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L77
	ldr	r2, .L175+44
	ldrh	r2, [r2]
	tst	r2, #1
	moveq	r0, #32
	ldreq	r1, .L175+68
	ldreq	r2, .L175+72
	streq	r0, [r1]
	streq	r3, [r2]
	b	.L77
.L169:
	ldr	r1, .L175+20
	ldr	r0, [r1]
	cmp	r0, #1
	bne	.L41
	mov	r2, #0
	ldr	r7, .L175+88
	ldr	ip, .L175+92
	ldr	lr, [r7]
	ldr	r8, [ip, lr, lsl #2]
	ldr	ip, .L175+96
	cmp	r8, #1
	str	r0, [ip, lr, lsl #2]
	addeq	lr, lr, #1
	str	r2, [r1]
	streq	lr, [r7]
	beq	.L43
	str	r2, [r7]
	str	r2, [ip]
	str	r2, [ip, #4]
	str	r2, [ip, #8]
	str	r2, [ip, #12]
	str	r2, [ip, #16]
	str	r2, [ip, #20]
	str	r2, [ip, #24]
.L153:
	bl	playerHit
	add	r1, r4, #8
	ldm	r1, {r1, r3}
	ldr	r2, [r6]
	add	r3, r3, r1, lsl #9
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, #8
	beq	.L174
.L47:
	cmp	r2, #21
	bne	.L41
	ldr	r8, [r5]
	cmp	r8, #0
	bne	.L50
	ldr	r3, .L175
	ldrh	r3, [r3, #48]
	tst	r3, #1
	bne	.L53
	ldr	r3, .L175+76
	ldr	r3, [r3]
	cmp	r3, #0
	moveq	r2, #1
	moveq	ip, #6
	beq	.L155
.L53:
	ldr	r3, .L175
	ldrh	r2, [r3, #48]
	ands	r2, r2, #1
	bne	.L50
	ldr	r3, .L175+76
	ldr	r1, [r3]
	cmp	r1, #1
	bne	.L50
	mov	ip, #2
	ldr	r1, .L175+100
	ldr	r9, [r1]
	str	ip, [r3]
	mov	r1, r9
	ldr	r0, .L175+104
	ldr	r3, .L175+108
	mov	lr, pc
	bx	r3
	adds	r9, r9, r9, lsl #2
	ldrne	r7, .L175+112
	beq	.L56
.L55:
	mov	r0, #0
	add	r8, r8, #1
	mov	lr, pc
	bx	r7
	cmp	r9, r8
	bne	.L55
.L56:
	mov	r0, #0
	ldr	r3, .L175+116
	mov	lr, pc
	bx	r3
	mov	r2, #1
	mov	ip, #7
.L155:
	ldr	r3, .L175+72
	ldr	r0, .L175+68
	str	r2, [r3]
	add	r2, r4, #8
	ldm	r2, {r2, r3}
	ldr	r1, [r6]
	str	ip, [r0]
	add	r3, r3, r2, lsl #9
	ldrb	r2, [r1, r3]	@ zero_extendqisi2
	add	r3, r1, r3
	b	.L52
.L162:
	mov	r8, #67108864
	mov	r9, #0
	mov	r3, #4608
	str	r9, [r5]
	ldr	r10, .L175+120
	strh	r3, [r8]	@ movhi
	mov	lr, pc
	bx	r10
	mov	r2, #56320
	ldr	r7, .L175+124
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r8, #10]	@ movhi
	ldr	r1, .L175+128
	mov	r2, #83886080
	mov	lr, pc
	bx	r7
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L175+132
	ldr	r1, .L175+136
	mov	lr, pc
	bx	r7
	mov	r0, #3
	ldr	r2, .L175+140
	ldr	r1, .L175+144
	mov	r3, #4096
	mov	lr, pc
	bx	r7
	ldr	r3, .L175+148
	strh	r9, [r8, #22]	@ movhi
	strh	r9, [r8, #20]	@ movhi
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r10
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L175+152
	mov	lr, pc
	bx	r7
	mov	r0, #352
	mov	r2, #480
	ldr	r1, .L175+28
	ldr	r3, .L175+156
	str	r0, [r1]
	str	r2, [r4, #8]
	mov	lr, pc
	bx	r3
	ldr	r3, .L175+160
	ldr	r0, .L175+164
	ldr	r1, [r3]
	mov	r2, #1
	ldr	r3, .L175+168
	mov	lr, pc
	bx	r3
	ldr	r0, [r4, #8]
	b	.L32
.L149:
	mov	r8, #67108864
	mov	r3, #4608
	mov	r10, #1
	ldr	r5, .L175+16
	ldr	fp, .L175+120
	str	r10, [r5]
	strh	r3, [r8]	@ movhi
	mov	lr, pc
	bx	fp
	mov	r3, #56320
	mov	r9, #0
	ldr	r7, .L175+124
	mov	r2, #83886080
	mov	r0, #3
	strh	r3, [r8, #10]	@ movhi
	ldr	r1, .L175+172
	mov	r3, #256
	mov	lr, pc
	bx	r7
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L175+176
	ldr	r1, .L175+180
	mov	lr, pc
	bx	r7
	mov	r0, #3
	ldr	r2, .L175+140
	ldr	r1, .L175+184
	mov	r3, #4096
	mov	lr, pc
	bx	r7
	ldr	r3, .L175+148
	strh	r9, [r8, #22]	@ movhi
	strh	r9, [r8, #20]	@ movhi
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	fp
	mov	r0, #3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L175+152
	mov	lr, pc
	bx	r7
	mov	r2, #25
	ldr	r1, .L175+28
	ldr	r3, .L175+156
	str	r9, [r1]
	str	r2, [r4, #8]
	mov	lr, pc
	bx	r3
	ldr	r3, .L175+188
	ldr	r0, .L175+192
	ldr	r1, [r3]
	mov	r2, r10
	ldr	r3, .L175+168
	mov	lr, pc
	bx	r3
	ldr	r0, [r4, #8]
	b	.L31
.L167:
	bl	playerHit
	add	r2, r4, #8
	ldm	r2, {r2, r3}
	ldr	r1, [r6]
	add	r3, r3, r2, lsl #9
	ldrb	r2, [r1, r3]	@ zero_extendqisi2
	add	r3, r1, r3
	b	.L37
.L164:
	mov	r0, #0
	ldr	r7, .L175+112
	mov	lr, pc
	bx	r7
	mov	r0, #1
	mov	r1, #2
	ldr	r3, .L175+196
	ldr	r2, .L175+200
	str	r0, [r3]
	str	r1, [r2]
	ldr	r3, [r4, #12]
	ldr	r2, [r4, #8]
	ldr	r1, .L175+204
	ldr	r0, .L175+208
	str	r2, [r1]
	str	r3, [r0]
	ldr	r1, [r6]
	add	r3, r3, r2, lsl #9
	ldrb	r2, [r1, r3]	@ zero_extendqisi2
	cmp	r2, #18
	add	r3, r1, r3
	bne	.L35
.L165:
	mov	r0, #0
	ldr	r7, .L175+112
	mov	lr, pc
	bx	r7
	mov	r2, #1
	ldr	r0, .L175+196
	ldr	r1, .L175+200
	str	r2, [r0]
	str	r2, [r1]
	ldr	r3, [r4, #12]
	ldr	r2, [r4, #8]
	ldr	r1, .L175+204
	ldr	r0, .L175+208
	str	r2, [r1]
	str	r3, [r0]
	ldr	r1, [r6]
	add	r3, r3, r2, lsl #9
	ldrb	r2, [r1, r3]	@ zero_extendqisi2
	cmp	r2, #6
	add	r3, r1, r3
	bne	.L36
.L166:
	mov	r0, #0
	ldr	r7, .L175+112
	mov	lr, pc
	bx	r7
	mov	r0, #1
	mov	r1, #3
	ldr	r3, .L175+196
	ldr	r2, .L175+200
	str	r0, [r3]
	str	r1, [r2]
	ldr	r3, [r4, #12]
	ldr	r2, [r4, #8]
	ldr	r1, .L175+204
	ldr	r0, .L175+208
	str	r2, [r1]
	str	r3, [r0]
	ldr	r1, [r6]
	add	r3, r3, r2, lsl #9
	ldrb	r2, [r1, r3]	@ zero_extendqisi2
	add	r3, r1, r3
	b	.L36
.L163:
	mov	r0, #0
	ldr	r7, .L175+112
	mov	lr, pc
	bx	r7
	mov	r0, #1
	mov	r1, #0
	ldr	r3, .L175+196
	ldr	r2, .L175+200
	str	r0, [r3]
	str	r1, [r2]
	ldr	r3, [r4, #12]
	ldr	r2, [r4, #8]
	ldr	r1, .L175+204
	ldr	r0, .L175+208
	str	r2, [r1]
	str	r3, [r0]
	ldr	r1, [r6]
	add	r3, r3, r2, lsl #9
	ldrb	r2, [r1, r3]	@ zero_extendqisi2
	add	r3, r1, r3
	b	.L33
.L168:
	ldr	r2, .L175
	ldrh	r2, [r2, #48]
	tst	r2, #1
	bne	.L39
	mov	r0, #1
	mov	r1, #18
	ldr	r2, .L175+72
	str	r0, [r2]
	ldr	r2, .L175+68
	str	r1, [r2]
	ldrb	r2, [r3]	@ zero_extendqisi2
	b	.L38
.L171:
	ldr	r1, .L175+20
	ldr	r2, [r1]
	cmp	r2, #1
	bne	.L41
	mov	r7, #3
.L158:
	mov	r2, #0
	ldr	lr, .L175+88
	ldr	r0, .L175+92
	ldr	ip, [lr]
	ldr	r8, [r0, ip, lsl #2]
	ldr	r0, .L175+96
	cmp	r8, r7
	str	r7, [r0, ip, lsl #2]
	addeq	ip, ip, #1
	str	r2, [r1]
	streq	ip, [lr]
	beq	.L43
	str	r2, [lr]
	str	r2, [r0]
	str	r2, [r0, #4]
	str	r2, [r0, #8]
	str	r2, [r0, #12]
	str	r2, [r0, #16]
	str	r2, [r0, #20]
	str	r2, [r0, #24]
	b	.L153
.L82:
	mov	r0, r3
	b	.L23
.L73:
	cmp	r2, #4
	bne	.L80
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L77
	ldr	r3, .L175+40
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L77
	ldr	r1, .L175+44
.L79:
	ldrh	r3, [r1]
	tst	r3, #1
	bne	.L77
	mov	r3, #1
	ldr	r1, .L175+212
	ldr	r2, .L175+48
	str	r3, [r1]
	str	r3, [r2]
	b	.L77
.L173:
	ldr	r1, .L175+48
.L60:
	mov	r2, #1
	ldr	r0, .L175+216
	str	r2, [r1]
	str	r2, [r0]
	ldrb	r2, [r3]	@ zero_extendqisi2
	b	.L61
.L68:
	ldr	r1, .L175+220
	str	r2, [r1]
	ldrb	r2, [r3]	@ zero_extendqisi2
	b	.L66
.L74:
	cmp	r2, #1
	bne	.L77
	ldr	ip, .L175+224
	ldr	r0, .L175+48
	str	r2, [ip]
	str	r2, [r0]
	b	.L75
.L72:
	cmp	r1, #1
	bne	.L77
	ldr	r0, .L175+228
	ldr	r2, .L175+48
	str	r1, [r0]
	str	r1, [r2]
	b	.L156
.L176:
	.align	2
.L175:
	.word	67109120
	.word	player
	.word	collisionMap
	.word	hOff
	.word	foregroundCheck
	.word	hitPanel
	.word	animatePlayer
	.word	vOff
	.word	350
	.word	270
	.word	oldButtons
	.word	buttons
	.word	treasureFlag
	.word	skull
	.word	bridgeMap
	.word	gameWin
	.word	bluePass
	.word	textNum
	.word	textCheck
	.word	canUseMagic
	.word	empirePass
	.word	redPass
	.word	arrayIndex
	.word	.LANCHOR0
	.word	arrayGuess
	.word	treasureSFX_length
	.word	treasureSFX_data
	.word	playSoundB
	.word	pauseSound
	.word	unpauseSound
	.word	waitForVBlank
	.word	DMANow
	.word	level2MapTopPal
	.word	15984
	.word	level2MapTopTiles
	.word	100720640
	.word	level2MapTopMap
	.word	hideSprites
	.word	shadowOAM
	.word	stopSound
	.word	forestMusic_length
	.word	forestMusic_data
	.word	playSoundA
	.word	level2MapBottomPal
	.word	16080
	.word	level2MapBottomTiles
	.word	level2MapBottomMap
	.word	level2Music_length
	.word	level2Music_data
	.word	doorFlag
	.word	roomCheck
	.word	prevRow
	.word	prevCol
	.word	haveRelic
	.word	haveFlowers
	.word	gameTrueWin
	.word	redApple
	.word	blueApple
	.size	updatePlayer2, .-updatePlayer2
	.align	2
	.global	drawArrow
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawArrow, %function
drawArrow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L194
	mov	fp, r5
	ldr	r1, .L194+4
	sub	sp, sp, #28
	str	r3, [sp, #4]
	mov	r3, r1
	ldr	r2, .L194+8
	ldr	r8, [r2]
	ldrh	r2, [fp, #4]!
	str	r2, [sp, #20]
	ldrh	r2, [r5]
	str	r2, [sp, #16]
	ldrh	r2, [r5, #2]
	ldr	ip, .L194+12
	str	r2, [sp, #12]
	ldr	r2, .L194+16
	ldr	r6, [ip]
	ldr	r2, [r2]
	add	lr, r0, #960
	lsl	lr, lr, #16
	lsl	r10, r6, #16
	lsl	r9, r8, #16
	str	r2, [sp, #8]
	lsr	lr, lr, #16
	lsr	r10, r10, #16
	lsr	r9, r9, #16
.L181:
	cmp	r0, #1
	beq	.L191
	cmp	r0, #3
	bne	.L179
	mov	r2, #72
	mov	ip, #408
	str	r2, [r1, #12]
	mov	r2, #15
	str	ip, [r1, #68]
	str	r2, [r1, #8]
	str	r2, [r1, #64]
.L179:
	ldr	r4, [r3, #8]
	ldr	r2, [r3, #28]
	sub	ip, r4, r6
	cmn	ip, r2
	bmi	.L180
	ldr	r7, [r3, #12]
	ldr	r2, [r3, #24]
	add	r2, r7, r2
	sub	r2, r2, r8
	mvn	r2, r2
	cmp	ip, #160
	lsr	r2, r2, #31
	movgt	r2, #0
	cmp	r2, #0
	bne	.L192
.L180:
	ldr	r2, .L194+20
	add	r3, r3, #56
	cmp	r3, r2
	bne	.L181
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L193
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L191:
	mov	r2, #72
	mov	ip, #408
	str	r2, [r1, #12]
	mov	r2, #488
	str	ip, [r1, #68]
	str	r2, [r1, #8]
	str	r2, [r1, #64]
	b	.L179
.L192:
	sub	ip, r7, r8
	cmp	ip, #240
	bgt	.L180
	sub	r7, r7, r9
	lsl	r7, r7, #23
	lsr	r7, r7, #23
	str	r2, [sp, #4]
	sub	r4, r4, r10
	orr	r2, r7, #16384
	str	r2, [sp, #12]
	and	r2, r4, #255
	str	r2, [sp, #16]
	ldr	r2, [sp, #8]
	add	r2, r2, #1
	str	lr, [sp, #20]
	str	r2, [sp, #8]
	b	.L180
.L193:
	ldr	r3, [sp, #16]
	strh	r3, [r5]	@ movhi
	ldr	r3, [sp, #12]
	strh	r3, [r5, #2]	@ movhi
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #8]
	strh	r3, [fp]	@ movhi
	ldr	r3, .L194+16
	str	r2, [r3]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L195:
	.align	2
.L194:
	.word	shadowOAM+880
	.word	arrow
	.word	hOff
	.word	vOff
	.word	shadowOAMIndex
	.word	arrow+112
	.size	drawArrow, .-drawArrow
	.align	2
	.global	initChicken
	.syntax unified
	.arm
	.fpu softvfp
	.type	initChicken, %function
initChicken:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, #0
	mov	lr, #16
	mov	fp, r5
	mov	r8, r5
	mov	r2, r5
	mov	r1, r5
	mov	ip, #2
	mov	r7, #3
	ldr	r4, .L240
	ldr	r6, [r4, #68]
	sub	sp, sp, #28
	str	r6, [sp]
	ldr	r6, [r4, #64]
	str	r6, [sp, #4]
	ldr	r6, [r4, #180]
	str	r6, [sp, #16]
	ldr	r6, [r4, #176]
	str	r6, [sp, #20]
	ldr	r6, [r4, #124]
	add	r9, r4, #8
	mov	r0, r4
	mov	r3, r4
	str	r5, [sp, #8]
	ldm	r9, {r9, r10}
	str	r6, [sp, #12]
	ldr	r4, [r4, #120]
.L209:
	mov	r6, #1
	cmp	r2, #0
	str	lr, [r3, #24]
	str	lr, [r3, #28]
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r1, [r3, #32]
	str	r7, [r3, #48]
	str	r1, [r3, #44]
	str	r1, [r3, #52]
	str	r6, [r3, #36]
	beq	.L213
	cmp	r2, r6
	beq	.L239
	cmp	r2, #2
	bne	.L200
	mov	r6, #1
	str	r6, [sp, #8]
	mov	r6, #207
	mov	r4, #408
	str	r1, [r0, #148]
	str	r6, [sp, #12]
.L201:
	add	r2, r2, #1
	cmp	r2, #5
	add	r3, r3, #56
	bne	.L209
	cmp	r8, #0
	strne	r10, [r0, #12]
	strne	r9, [r0, #8]
	cmp	fp, #0
	ldrne	r3, [sp]
	strne	r3, [r0, #68]
	ldrne	r3, [sp, #4]
	strne	r3, [r0, #64]
	ldr	r3, [sp, #8]
	cmp	r3, #0
	ldrne	r3, [sp, #12]
	strne	r4, [r0, #120]
	strne	r3, [r0, #124]
	cmp	r5, #0
	ldrne	r3, [sp, #16]
	strne	r3, [r0, #180]
	ldrne	r3, [sp, #20]
	strne	r3, [r0, #176]
	b	.L196
.L213:
	mov	r9, #400
	mov	r8, #1
	mov	r10, #40
	b	.L201
.L200:
	cmp	r2, #3
	bne	.L199
	mov	r2, #175
	str	r2, [sp, #20]
	mov	r2, #72
	mov	r5, #1
	str	r2, [sp, #16]
	str	r1, [r0, #204]
	mov	r2, #4
	add	r3, r3, #56
	b	.L209
.L199:
	cmp	r2, #4
	bne	.L201
	mov	r1, #135
	mov	r2, #0
	cmp	r8, #0
	strne	r10, [r0, #12]
	strne	r9, [r0, #8]
	cmp	fp, #0
	ldrne	r3, [sp]
	strne	r3, [r0, #68]
	ldrne	r3, [sp, #4]
	strne	r3, [r0, #64]
	ldr	r3, [sp, #8]
	cmp	r3, #0
	ldrne	r3, [sp, #12]
	strne	r4, [r0, #120]
	strne	r3, [r0, #124]
	cmp	r5, #0
	ldrne	r3, [sp, #16]
	strne	r3, [r0, #180]
	ldrne	r3, [sp, #20]
	strne	r3, [r0, #176]
	ldr	r3, .L240+4
	str	r1, [r0, #232]
	str	r2, [r0, #260]
	str	r3, [r0, #236]
.L196:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L239:
	mov	fp, #240
	ldr	r6, .L240+8
	str	fp, [sp, #4]
	str	r1, [r0, #92]
	mov	fp, r2
	str	r6, [sp]
	b	.L201
.L241:
	.align	2
.L240:
	.word	chicken
	.word	406
	.word	310
	.size	initChicken, .-initChicken
	.align	2
	.global	stuck
	.syntax unified
	.arm
	.fpu softvfp
	.type	stuck, %function
stuck:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L275
	ldr	r3, .L275+4
	ldr	ip, [r2]
	push	{r4, r5, lr}
	add	lr, r3, #280
.L262:
	cmp	r0, #1
	beq	.L272
	cmp	r0, #2
	beq	.L248
	cmp	r0, #3
	bne	.L273
	add	r1, r3, #8
	ldm	r1, {r1, r2}
	cmp	r2, #8
	ble	.L255
	add	r4, ip, r1, lsl #9
	add	r4, r4, r2
	ldrb	r4, [r4, #-8]	@ zero_extendqisi2
	cmp	r4, #0
	beq	.L255
.L256:
	cmp	r2, #504
	bge	.L257
	add	r4, ip, r1, lsl #9
	add	r4, r4, r2
	ldrb	r4, [r4, #8]	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L258
.L257:
	add	r4, r3, #16
	ldm	r4, {r4, r5}
	sub	r2, r2, r5
	add	r1, r1, r4
	str	r2, [r3, #12]
	str	r1, [r3, #8]
.L258:
	add	r3, r3, #56
	cmp	lr, r3
	bne	.L262
.L274:
	pop	{r4, r5, lr}
	bx	lr
.L255:
	add	r4, r3, #16
	ldm	r4, {r4, r5}
	add	r2, r2, r5
	add	r1, r1, r4
	str	r2, [r3, #12]
	str	r1, [r3, #8]
	b	.L256
.L273:
	cmp	r0, #4
	bne	.L258
	add	r1, r3, #8
	ldm	r1, {r1, r2}
	cmp	r2, #8
	ble	.L259
	add	r4, ip, r1, lsl #9
	add	r4, r4, r2
	ldrb	r4, [r4, #-8]	@ zero_extendqisi2
	cmp	r4, #0
	beq	.L259
.L260:
	cmp	r2, #504
	bge	.L261
	add	r4, ip, r1, lsl #9
	add	r4, r4, r2
	ldrb	r4, [r4, #8]	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L258
.L261:
	add	r4, r3, #16
	ldm	r4, {r4, r5}
	sub	r2, r2, r5
	sub	r1, r1, r4
	str	r2, [r3, #12]
	str	r1, [r3, #8]
	add	r3, r3, #56
	cmp	lr, r3
	bne	.L262
	b	.L274
.L259:
	add	r4, r3, #16
	ldm	r4, {r4, r5}
	add	r2, r2, r5
	sub	r1, r1, r4
	str	r2, [r3, #12]
	str	r1, [r3, #8]
	b	.L260
.L248:
	ldr	r2, [r3, #8]
	cmp	r2, #93
	ldr	r1, [r3, #12]
	ble	.L251
	sub	r4, r2, #8
	add	r4, ip, r4, lsl #9
	ldrb	r4, [r4, r1]	@ zero_extendqisi2
	cmp	r4, #0
	beq	.L251
.L252:
	cmp	r2, #504
	bge	.L253
	add	r4, r2, #8
	add	r4, ip, r4, lsl #9
	ldrb	r4, [r4, r1]	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L258
.L253:
	add	r4, r3, #16
	ldm	r4, {r4, r5}
	sub	r1, r1, r5
	sub	r2, r2, r4
	str	r1, [r3, #12]
	str	r2, [r3, #8]
	add	r3, r3, #56
	cmp	lr, r3
	bne	.L262
	b	.L274
.L251:
	add	r4, r3, #16
	ldm	r4, {r4, r5}
	sub	r1, r1, r5
	add	r2, r2, r4
	str	r1, [r3, #12]
	str	r2, [r3, #8]
	b	.L252
.L272:
	ldr	r2, [r3, #8]
	cmp	r2, #93
	ldr	r1, [r3, #12]
	ble	.L244
	sub	r4, r2, #8
	add	r4, ip, r4, lsl #9
	ldrb	r4, [r4, r1]	@ zero_extendqisi2
	cmp	r4, #0
	beq	.L244
.L245:
	cmp	r2, #504
	bge	.L246
	add	r4, r2, #8
	add	r4, ip, r4, lsl #9
	ldrb	r4, [r4, r1]	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L258
.L246:
	ldr	r4, [r3, #20]
	ldr	r5, [r3, #16]
	add	r1, r4, r1
	sub	r2, r2, r5
	str	r1, [r3, #12]
	str	r2, [r3, #8]
	add	r3, r3, #56
	cmp	lr, r3
	bne	.L262
	b	.L274
.L244:
	add	r4, r3, #16
	ldm	r4, {r4, r5}
	add	r1, r1, r5
	add	r2, r2, r4
	str	r1, [r3, #12]
	str	r2, [r3, #8]
	b	.L245
.L276:
	.align	2
.L275:
	.word	collisionMap
	.word	chicken
	.size	stuck, .-stuck
	.global	__aeabi_idivmod
	.align	2
	.global	updateChicken
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateChicken, %function
updateChicken:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, #0
	ldr	r4, .L362
	ldr	fp, .L362+4
	ldr	r8, .L362+8
	ldr	r7, .L362+12
	sub	sp, sp, #28
.L303:
	ldr	r6, [r4, #36]
	str	r6, [r4, #40]
	mov	r6, #4
	ldr	r2, [r4, #32]
	ldr	r1, .L362+16
	smull	r3, r1, r2, r1
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, lsl #1
	str	r6, [r4, #36]
	bne	.L278
	add	r0, r4, #44
	ldm	r0, {r0, r1}
	ldr	r3, .L362+20
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L278:
	ldr	r2, [fp, #36]
	ldr	r1, [r4, #12]
	cmp	r2, #1
	mov	r9, r1
	ldr	r10, [fp, #12]
	ldr	r3, [r8]
	bls	.L360
.L279:
	sub	r0, r2, #2
	ldr	r2, [r4, #8]
	cmp	r0, #1
	lsl	r0, r2, #9
	bhi	.L359
	subs	ip, r10, r9
	bmi	.L287
	cmp	ip, #45
	bgt	.L359
	ldr	ip, [r4, #20]
	sub	ip, r1, ip
	add	lr, r3, ip
	ldrb	lr, [lr, r0]	@ zero_extendqisi2
	cmp	lr, #0
	bne	.L350
.L359:
	add	r3, r3, r1
	ldrb	r3, [r3, r0]	@ zero_extendqisi2
	cmp	r3, #12
	ldr	r6, [r4, #36]
	beq	.L293
.L294:
	cmp	r6, #4
	beq	.L361
.L296:
	ldr	r3, [r4, #32]
	add	r3, r3, #1
	str	r3, [r4, #32]
.L298:
	mov	r9, #0
	ldr	r6, .L362
.L297:
	cmp	r5, r9
	beq	.L300
	add	r2, r6, #8
	ldm	r2, {r2, r3}
	ldr	r0, [r6, #28]
	ldr	r1, [r6, #24]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L300
	ldr	r3, [r4, #8]
	ldr	r2, [r8]
	ldr	r1, [r4, #12]
	add	r2, r2, r3, lsl #9
	ldrb	r2, [r2, r1]	@ zero_extendqisi2
	cmp	r2, #12
	beq	.L300
	ldr	r2, [r6, #8]
	sub	r2, r2, r3
	cmp	r2, #0
	add	r2, r3, #2
	subge	r3, r3, #2
	strlt	r2, [r4, #8]
	strge	r3, [r4, #8]
.L300:
	add	r9, r9, #1
	cmp	r9, #5
	add	r6, r6, #56
	bne	.L297
	add	r5, r5, #1
	cmp	r5, #5
	add	r4, r4, #56
	bne	.L303
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L360:
	ldr	r0, [fp, #8]
	ldr	r2, [r4, #8]
	subs	ip, r0, r2
	bmi	.L280
	cmp	ip, #45
	bgt	.L281
	ldr	ip, [r4, #16]
	add	r0, r3, r1
	sub	ip, r2, ip
	ldrb	lr, [r0, ip, lsl #9]	@ zero_extendqisi2
	cmp	lr, #0
	add	r0, r0, ip, lsl #9
	beq	.L281
	ldr	lr, [r4, #24]
	add	r0, r0, lr
	ldrb	r0, [r0, #-1]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L281
	ldr	r0, .L362+24
	ldrh	r0, [r0, #48]
	ands	r0, r0, #64
	bne	.L281
	cmp	r2, #93
	ble	.L282
	sub	r2, r2, #8
	add	r2, r3, r2, lsl #9
	ldrb	r2, [r2, r1]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L283
.L282:
	mov	r0, #3
	bl	stuck
	mov	r3, #1
	ldr	r2, [fp, #36]
	str	r3, [r4, #36]
	ldr	r1, [r4, #12]
	ldr	r3, [r8]
	b	.L279
.L280:
	sub	r0, r2, r0
	cmp	r0, #45
	bgt	.L281
	ldr	r0, [r4, #28]
	ldr	ip, [r4, #16]
	add	r0, r2, r0
	add	r0, r0, ip
	sub	r0, r0, #1
	str	ip, [sp, #20]
	add	ip, r3, r1
	ldrb	lr, [ip, r0, lsl #9]	@ zero_extendqisi2
	cmp	lr, #0
	add	r0, ip, r0, lsl #9
	beq	.L281
	ldr	ip, [r4, #24]
	add	r0, r0, ip
	ldrb	r0, [r0, #-1]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L281
	ldr	r0, .L362+24
	ldrh	r0, [r0, #48]
	tst	r0, #128
	bne	.L281
	cmp	r2, #504
	bge	.L284
	add	r0, r2, #8
	add	r0, r3, r0, lsl #9
	ldrb	r0, [r0, r1]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L284
	mov	r6, #1
	ldr	r0, [sp, #20]
	add	r2, r2, r0
	str	r2, [r4, #8]
	str	r6, [r4, #36]
.L281:
	lsl	r0, r2, #9
	add	r3, r3, r1
	ldrb	r3, [r3, r0]	@ zero_extendqisi2
	cmp	r3, #12
	bne	.L294
.L293:
	ldr	r3, [r4, #20]
	cmp	r3, #0
	beq	.L294
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L294
	mov	r1, #0
	ldr	r0, .L362+28
	ldr	r3, [r0]
	add	r2, r2, #12
	sub	r3, r3, #1
	cmp	r6, #4
	str	r2, [r4, #8]
	str	r3, [r0]
	str	r1, [r4, #20]
	str	r1, [r4, #16]
	bne	.L296
.L361:
	mov	r3, #0
	ldr	r2, [r4, #40]
	str	r3, [r4, #44]
	str	r3, [r4, #32]
	str	r2, [r4, #36]
	b	.L298
.L287:
	sub	r9, r9, r10
	cmp	r9, #45
	bgt	.L359
	ldr	ip, [r4, #24]
	ldr	lr, [r4, #20]
	add	ip, r1, ip
	add	ip, ip, lr
	sub	ip, ip, #1
	add	r6, r3, ip
	ldrb	r6, [r6, r0]	@ zero_extendqisi2
	cmp	r6, #0
	beq	.L359
	ldr	r6, [r4, #28]
	add	r6, r2, r6
	sub	r6, r6, #1
	add	r6, r3, r6, lsl #9
	ldrb	ip, [r6, ip]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L359
	ldr	ip, .L362+24
	ldrh	ip, [ip, #48]
	ands	ip, ip, #16
	bne	.L359
	cmp	r1, #504
	bge	.L291
	add	r6, r3, r1
	add	r0, r6, r0
	ldrb	r0, [r0, #8]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L291
	add	r1, lr, r1
	str	r1, [r4, #12]
	str	ip, [r4, #36]
	b	.L290
.L350:
	ldr	lr, [r4, #28]
	add	lr, r2, lr
	sub	lr, lr, #1
	add	lr, r3, lr, lsl #9
	ldrb	lr, [lr, ip]	@ zero_extendqisi2
	cmp	lr, #0
	beq	.L359
	ldr	lr, .L362+24
	ldrh	lr, [lr, #48]
	tst	lr, #32
	bne	.L359
	cmp	r1, #8
	ble	.L288
	add	r1, r3, r1
	add	r0, r1, r0
	ldrb	r1, [r0, #-8]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L289
.L288:
	mov	r0, #1
	bl	stuck
	mov	r2, #0
	ldr	r3, [r8]
	str	r2, [r4, #36]
	ldr	r2, [r4, #8]
.L290:
	ldr	r1, [r4, #12]
	add	r3, r3, r2, lsl #9
	ldrb	r3, [r3, r1]	@ zero_extendqisi2
	cmp	r3, #12
	ldreq	r6, [r4, #36]
	bne	.L296
	b	.L293
.L283:
	mov	r6, r0
	mov	r2, ip
	str	ip, [r4, #8]
	str	r0, [r4, #36]
	b	.L281
.L289:
	mov	r1, #1
	str	ip, [r4, #12]
	str	r1, [r4, #36]
	b	.L290
.L291:
	mov	r0, #2
	bl	stuck
	mov	r2, #1
	ldr	r3, [r8]
	str	r2, [r4, #36]
	ldr	r2, [r4, #8]
	b	.L290
.L284:
	mov	r0, #4
	bl	stuck
	mov	r3, #0
	ldr	r2, [fp, #36]
	str	r3, [r4, #36]
	ldr	r1, [r4, #12]
	ldr	r3, [r8]
	b	.L279
.L363:
	.align	2
.L362:
	.word	chicken
	.word	player
	.word	collisionMap
	.word	collision
	.word	1717986919
	.word	__aeabi_idivmod
	.word	67109120
	.word	chickensLeft
	.size	updateChicken, .-updateChicken
	.align	2
	.global	drawChicken
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawChicken, %function
drawChicken:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, #0
	mov	r7, #1
	ldr	r2, .L378
	ldr	r3, .L378+4
	ldr	fp, .L378+8
	ldr	r4, [r2]
	ldr	r6, [r3]
	ldr	r2, [fp]
	ldr	r3, .L378+12
	sub	sp, sp, #12
	lsl	r9, r4, #16
	lsl	r8, r6, #16
	str	r2, [sp, #4]
	ldr	ip, .L378+16
	lsr	r9, r9, #16
	lsr	r8, r8, #16
	add	r5, r3, #280
.L367:
	ldr	r1, [r3, #8]
	ldr	r2, [r3, #28]
	sub	r0, r1, r4
	cmn	r0, r2
	bmi	.L365
	ldr	lr, [r3, #12]
	ldr	r2, [r3, #24]
	add	r2, lr, r2
	sub	r2, r2, r6
	mvn	r2, r2
	cmp	r0, #160
	lsr	r2, r2, #31
	movgt	r2, #0
	cmp	r2, #0
	bne	.L377
.L365:
	str	r7, [r3, #52]
.L366:
	add	r3, r3, #56
	cmp	r3, r5
	add	ip, ip, #8
	bne	.L367
	cmp	r10, #0
	ldrne	r3, [sp, #4]
	strne	r3, [fp]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L377:
	sub	r0, lr, r8
	lsl	r0, r0, #23
	sub	lr, lr, r6
	sub	r1, r1, r9
	lsr	r0, r0, #23
	cmp	lr, #240
	and	r1, r1, #255
	orr	r0, r0, #16384
	bgt	.L365
	ldr	r10, [r3, #44]
	ldr	lr, [r3, #36]
	add	lr, lr, r10, lsl #5
	mov	r10, #0
	strh	r1, [ip]	@ movhi
	add	lr, lr, #256
	ldr	r1, [sp, #4]
	add	lr, lr, #2
	lsl	lr, lr, #1
	add	r1, r1, #1
	str	r10, [r3, #52]
	strh	r0, [ip, #2]	@ movhi
	mov	r10, r2
	str	r1, [sp, #4]
	strh	lr, [ip, #4]	@ movhi
	b	.L366
.L379:
	.align	2
.L378:
	.word	vOff
	.word	hOff
	.word	shadowOAMIndex
	.word	chicken
	.word	shadowOAM+720
	.size	drawChicken, .-drawChicken
	.align	2
	.global	initGhost
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGhost, %function
initGhost:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #3
	mov	r0, #32
	push	{r4, r5, r6, r7, lr}
	mov	r1, #0
	mov	lr, #400
	mov	r7, #110
	mov	r6, #8
	mov	r5, #140
	mov	ip, #1
	mov	r4, #10
	ldr	r3, .L382
	str	r2, [r3, #48]
	ldr	r2, .L382+4
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	str	r0, [r2, #24]
	ldr	r0, .L382+8
	str	r7, [r3, #8]
	str	lr, [r3, #12]
	str	r6, [r2, #28]
	str	r5, [r2, #8]
	str	lr, [r2, #12]
	str	r4, [r0]
	str	ip, [r3, #20]
	str	ip, [r2, #20]
	str	r1, [r2, #52]
	str	r1, [r3, #32]
	str	r1, [r3, #44]
	str	r1, [r3, #36]
	str	r1, [r3, #52]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L383:
	.align	2
.L382:
	.word	ghost
	.word	ghostHealthBar
	.word	ghostLives
	.size	initGhost, .-initGhost
	.align	2
	.global	initLevel2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLevel2, %function
initLevel2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, #352
	mov	r9, #120
	mov	r5, #1
	mov	r6, #16
	mov	r4, #0
	mov	r3, #32
	mov	lr, #64
	mov	r7, #3
	mov	r8, #8
	mov	r1, #36
	mov	ip, #400
	mov	r0, #5
	ldr	r10, .L386
	str	fp, [r10]
	ldr	r10, .L386+4
	str	r9, [r10]
	ldr	r10, .L386+8
	str	r5, [r10]
	ldr	r10, .L386+12
	str	r6, [r10, #24]
	str	r6, [r10, #28]
	str	r6, [r10, #80]
	str	r6, [r10, #84]
	str	r5, [r10, #52]
	str	r5, [r10, #108]
	ldr	r10, .L386+16
	str	r4, [r10]
	ldr	r10, .L386+20
	str	r4, [r10]
	ldr	r10, .L386+24
	ldr	r9, .L386+28
	str	r4, [r10, #8]
	str	r4, [r10, #12]
	str	r4, [r10, #24]
	str	r4, [r10]
	str	r4, [r10, #4]
	str	r4, [r10, #16]
	str	r4, [r10, #20]
	ldr	r10, .L386+32
	str	r5, [r9]
	str	r3, [r10, #28]
	ldr	r9, .L386+36
	str	r3, [r10, #24]
	str	r3, [r10, #84]
	str	r3, [r10, #80]
	str	lr, [r10, #12]
	ldr	r3, .L386+40
	ldr	lr, .L386+44
	mov	r2, #250
	str	ip, [r10, #68]
	str	r1, [r10, #8]
	str	r1, [r10, #64]
	str	r6, [r9, #28]
	str	r8, [r9, #24]
	str	r7, [r9, #16]
	str	r4, [r9, #32]
	str	r0, [r3]
	str	r5, [lr]
	mov	lr, #10
	ldr	ip, .L386+48
	ldr	r3, .L386+52
	ldr	r1, .L386+56
	ldr	r0, .L386+60
	str	r4, [ip]
	str	r4, [r3]
	str	r4, [r1]
	str	r4, [r0]
	ldr	ip, .L386+64
	ldr	r3, .L386+68
	ldr	r1, .L386+72
	ldr	r0, .L386+76
	str	r4, [ip]
	str	r4, [r3]
	str	r4, [r1]
	str	r4, [r0]
	ldr	ip, .L386+80
	ldr	r3, .L386+84
	ldr	r1, .L386+88
	ldr	r0, .L386+92
	str	r4, [ip]
	str	r4, [r3]
	str	r4, [r1]
	str	r4, [r0]
	ldr	ip, .L386+96
	ldr	r3, .L386+100
	ldr	r1, .L386+104
	ldr	r0, .L386+108
	str	r4, [ip]
	str	r4, [r3]
	str	r7, [r1]
	str	r4, [r0]
	ldr	ip, .L386+112
	ldr	r3, .L386+116
	ldr	r1, .L386+120
	ldr	r0, .L386+124
	str	r4, [ip]
	str	r4, [r3]
	str	r4, [r1]
	ldr	r3, .L386+128
	ldr	r1, .L386+132
	str	r4, [r0]
	ldr	ip, .L386+136
	ldr	r0, .L386+140
	str	r6, [r3, #24]
	str	r6, [r3, #28]
	str	r5, [r3, #16]
	str	r5, [r3, #20]
	str	r2, [r3, #12]
	str	r1, [r3, #8]
	str	r4, [ip]
	str	r4, [r9, #44]
	ldr	ip, .L386+144
	str	r7, [r9, #48]
	str	r4, [r9, #36]
	str	r5, [r9, #52]
	str	lr, [r0]
	ldr	r0, .L386+148
	str	r2, [ip]
	str	r1, [r0]
	str	r4, [r3, #32]
	str	r4, [r3, #44]
	str	r7, [r3, #48]
	str	r4, [r3, #36]
	bl	initChicken
	bl	initGhost
	mov	r1, #2
	ldr	r3, .L386+152
	ldr	r2, .L386+156
	str	r8, [r3, #24]
	str	r6, [r3, #28]
	str	r4, [r3, #32]
	str	r4, [r3, #44]
	str	r7, [r3, #48]
	str	r4, [r3, #36]
	str	r5, [r3, #52]
	str	r1, [r3, #16]
	mov	lr, pc
	bx	r2
	ldr	r3, .L386+160
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L386+164
	ldr	r3, .L386+168
	mov	lr, pc
	bx	r3
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L387:
	.align	2
.L386:
	.word	vOff
	.word	hOff
	.word	foregroundCheck
	.word	arrow
	.word	doorFlag
	.word	arrayIndex
	.word	arrayGuess
	.word	hitPanel
	.word	foreground
	.word	playerMagic
	.word	chickensLeft
	.word	ghostCounter
	.word	magicPressed
	.word	canUseMagic
	.word	goldApple
	.word	blueApple
	.word	redApple
	.word	skull
	.word	treasureFlag
	.word	ghostMovement
	.word	ghostCanShoot
	.word	gameWin
	.word	haveFlowers
	.word	gaveFlowers
	.word	haveEggs
	.word	havePotion
	.word	potionUses
	.word	haveReaperCloth
	.word	haveRelic
	.word	redPass
	.word	bluePass
	.word	empirePass
	.word	player
	.word	465
	.word	bridgeMap
	.word	ghostLives
	.word	prevCol
	.word	prevRow
	.word	ghostMagic
	.word	stopSound
	.word	level2Music_length
	.word	level2Music_data
	.word	playSoundA
	.size	initLevel2, .-initLevel2
	.align	2
	.global	drawGhost
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGhost, %function
drawGhost:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L400
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L400+4
	ldr	ip, [r3]
	ldr	r2, [r4, #8]
	ldr	r3, [r4, #28]
	sub	r2, r2, ip
	cmn	r2, r3
	bmi	.L389
	ldr	r1, .L400+8
	ldr	r0, [r4, #12]
	ldr	r3, [r4, #24]
	ldr	r1, [r1]
	add	r3, r0, r3
	sub	r3, r3, r1
	mvn	r3, r3
	cmp	r2, #160
	lsr	r3, r3, #31
	movgt	r3, #0
	cmp	r3, #0
	bne	.L398
.L389:
	ldr	r5, [r4, #32]
	add	r3, r5, r5, lsl #2
	add	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #8
	ldr	r2, .L400+12
	add	r3, r3, r3, lsl #16
	ldr	r1, .L400+16
	add	r3, r5, r3, lsl #1
	add	r2, r3, r2
	cmp	r1, r2, ror #2
	bcc	.L393
	ldr	r0, [r4, #44]
	ldr	r3, .L400+20
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L393:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L398:
	sub	r0, r0, r1
	cmp	r0, #240
	bgt	.L389
	ldr	r6, .L400+24
	ldr	r3, [r6, #52]
	ldr	r5, .L400+28
	cmp	r3, #0
	ldr	lr, [r5]
	bne	.L399
	ldr	r7, .L400+32
	ldr	r3, [r6, #12]
	ldr	r7, [r7]
	ldr	r6, [r6, #8]
	sub	r1, r3, r1
	lsl	r7, r7, #5
	sub	r3, r6, ip
	lsl	r1, r1, #23
	ldr	r6, .L400+36
	add	ip, r7, #424
	and	r3, r3, #255
	lsr	r1, r1, #23
	add	ip, ip, #2
	orr	r3, r3, #16384
	orr	r1, r1, #16384
	strh	ip, [r6, #4]	@ movhi
	strh	r3, [r6]	@ movhi
	strh	r1, [r6, #2]	@ movhi
.L391:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	add	lr, lr, #2
	beq	.L392
	ldr	r2, .L400+40
	ldrh	r3, [r2]
	orr	r3, r3, #512
	str	lr, [r5]
	strh	r3, [r2]	@ movhi
	b	.L389
.L399:
	ldr	r1, .L400+36
	ldrh	r3, [r1]
	orr	r3, r3, #512
	strh	r3, [r1]	@ movhi
	b	.L391
.L392:
	lsl	r0, r0, #23
	lsr	r0, r0, #23
	mvn	r0, r0, lsl #17
	mvn	r0, r0, lsr #17
	ldr	r3, [r4, #36]
	ldr	r1, [r4, #44]
	add	r3, r3, #10
	add	r3, r3, r1, lsl #7
	ldr	r1, .L400+40
	and	r2, r2, #255
	orr	r3, r3, #12288
	str	lr, [r5]
	strh	r0, [r1, #2]	@ movhi
	strh	r2, [r1]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	b	.L389
.L401:
	.align	2
.L400:
	.word	vOff
	.word	ghost
	.word	hOff
	.word	715827880
	.word	357913940
	.word	__aeabi_idivmod
	.word	ghostHealthBar
	.word	shadowOAMIndex
	.word	ghostLives
	.word	shadowOAM+480
	.word	shadowOAM+520
	.size	drawGhost, .-drawGhost
	.align	2
	.global	updateGhost
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGhost, %function
updateGhost:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L421
	ldr	r1, .L421+4
	ldr	r3, [r2, #12]
	cmp	r3, r1
	ldr	r1, .L421+8
	push	{r4, r5, lr}
	ldr	r0, [r1]
	bgt	.L419
	cmp	r0, #0
	bne	.L407
	ldr	r0, .L421+12
	ldr	lr, [r0, #20]
	ldr	r4, [r0, #12]
	ldr	ip, [r2, #20]
	add	lr, lr, r4
.L405:
	mov	r4, #1
	str	r4, [r1]
.L408:
	ldr	r4, .L421+16
	add	r3, r3, ip
	cmp	r3, r4
	str	r3, [r2, #12]
	str	lr, [r0, #12]
	ble	.L410
.L411:
	mov	r3, #0
	str	r3, [r1]
.L410:
	ldr	r3, .L421+20
	ldr	r1, [r3]
	cmp	r1, #0
	bge	.L402
	mov	r1, #1
	mov	r0, #0
	ldr	lr, .L421+12
	ldr	ip, .L421+24
	str	r1, [r2, #52]
	ldr	r2, .L421+28
	str	r1, [lr, #52]
	str	r1, [ip]
	str	r1, [r2]
	str	r0, [r3]
.L402:
	pop	{r4, r5, lr}
	bx	lr
.L419:
	cmp	r0, #0
	bne	.L404
	ldr	r0, .L421+12
	ldr	ip, [r2, #20]
	ldr	lr, [r0, #12]
	ldr	r4, [r0, #20]
	ldr	r5, .L421+32
	sub	r3, r3, ip
	sub	r4, lr, r4
	cmp	r3, r5
	str	r4, [r0, #12]
	str	r3, [r2, #12]
	ble	.L405
.L406:
	ldr	r0, .L421+36
	cmp	r3, r0
	ble	.L420
	ldr	r3, .L421+16
	ldr	r0, [r2, #12]
	cmp	r0, r3
	ble	.L410
	ldr	r3, [r1]
	cmp	r3, #1
	bne	.L410
	b	.L411
.L404:
	ldr	ip, .L421+32
	cmp	r3, ip
	bne	.L406
.L407:
	cmp	r0, #1
	bne	.L410
	ldr	r0, .L421+12
	ldr	lr, [r0, #12]
	ldr	r4, [r0, #20]
	ldr	ip, [r2, #20]
	add	lr, lr, r4
	b	.L408
.L420:
	ldr	r0, [r1]
	b	.L407
.L422:
	.align	2
.L421:
	.word	ghost
	.word	349
	.word	ghostMovement
	.word	ghostHealthBar
	.word	449
	.word	ghostLives
	.word	haveReaperCloth
	.word	treasureFlag
	.word	350
	.word	450
	.size	updateGhost, .-updateGhost
	.align	2
	.global	initPlayerMagic
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayerMagic, %function
initPlayerMagic:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	lr, #8
	mov	r1, #3
	mov	ip, #16
	mov	r0, #1
	ldr	r3, .L425
	str	lr, [r3, #24]
	str	ip, [r3, #28]
	str	r0, [r3, #52]
	str	r1, [r3, #16]
	str	r1, [r3, #48]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	ldr	lr, [sp], #4
	bx	lr
.L426:
	.align	2
.L425:
	.word	playerMagic
	.size	initPlayerMagic, .-initPlayerMagic
	.align	2
	.global	drawPlayerMagic
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayerMagic, %function
drawPlayerMagic:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L436
	ldr	r4, .L436+4
	ldr	r3, [r3]
	ldr	r1, [r4, #8]
	ldr	r2, [r4, #28]
	sub	r3, r1, r3
	cmn	r3, r2
	bmi	.L428
	ldr	r0, .L436+8
	ldr	r1, [r4, #12]
	ldr	r2, [r4, #24]
	ldr	r0, [r0]
	add	r2, r1, r2
	sub	r2, r2, r0
	mvn	r2, r2
	cmp	r3, #160
	lsr	r2, r2, #31
	movgt	r2, #0
	cmp	r2, #0
	bne	.L435
.L428:
	ldr	r5, [r4, #32]
	ldr	r3, .L436+12
	smull	r1, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #1
	add	r3, r3, r3, lsl #2
	cmp	r5, r3
	bne	.L430
	ldr	r0, [r4, #44]
	ldr	r3, .L436+16
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L430:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L435:
	sub	r1, r1, r0
	cmp	r1, #240
	bgt	.L428
	ldr	ip, .L436+20
	ldr	r0, [r4, #52]
	ldr	r2, [ip]
	cmp	r0, #0
	add	r0, r2, #1
	beq	.L429
	ldr	r2, .L436+24
	ldrh	r3, [r2]
	orr	r3, r3, #512
	str	r0, [ip]
	strh	r3, [r2]	@ movhi
	b	.L428
.L429:
	and	r3, r3, #255
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r2, [r4, #36]
	ldr	lr, [r4, #44]
	str	r0, [ip]
	lsl	r1, r1, #23
	ldr	r0, .L436+24
	add	r2, r2, #14
	lsr	r1, r1, #23
	add	r2, r2, lr, lsl #6
	strh	r3, [r0]	@ movhi
	strh	r1, [r0, #2]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	b	.L428
.L437:
	.align	2
.L436:
	.word	vOff
	.word	playerMagic
	.word	hOff
	.word	1717986919
	.word	__aeabi_idivmod
	.word	shadowOAMIndex
	.word	shadowOAM+640
	.size	drawPlayerMagic, .-drawPlayerMagic
	.align	2
	.global	updatePlayerMagic
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayerMagic, %function
updatePlayerMagic:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L457
	ldrh	r3, [r3]
	ldr	r6, .L457+4
	ldr	r2, .L457+8
	tst	r3, #2
	ldr	r2, [r2]
	ldr	r3, [r6]
	sub	sp, sp, #20
	beq	.L439
	ldr	r1, .L457+12
	ldrh	r1, [r1]
	tst	r1, #2
	beq	.L454
.L439:
	ldr	r4, .L457+16
	cmp	r3, #1
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	beq	.L455
.L445:
	ldr	r5, .L457+20
	add	ip, r5, #24
	add	r2, r5, #8
	ldm	r2, {r2, r3}
	ldm	ip, {ip, lr}
	stmib	sp, {r2, ip, lr}
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r7, .L457+24
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L438
	ldr	r3, [r5, #52]
	ldr	r2, [r4, #52]
	orrs	r3, r3, r2
	bne	.L438
	mov	r0, #1
	ldr	r1, .L457+28
	ldr	r2, [r1]
	sub	r2, r2, #1
	str	r3, [r6]
	str	r2, [r1]
	str	r0, [r4, #52]
.L438:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L454:
	ldr	r1, .L457+32
	ldr	lr, [r1, #36]
	cmp	lr, #1
	bne	.L439
	cmp	r3, #0
	bne	.L439
	ldr	r0, .L457+36
	ldr	r0, [r0]
	cmp	r0, #2
	beq	.L456
	ldr	r4, .L457+16
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	b	.L445
.L455:
	ldr	r3, .L457+40
	ldr	ip, [r3]
.L441:
	cmp	r1, ip
	ble	.L443
	ldr	r3, [r4, #16]
	sub	r1, r1, r3
	str	r1, [r4, #8]
	add	r2, r2, r1, lsl #9
	ldrb	r3, [r2, r0]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L445
	mov	r2, #0
	mov	r3, #1
	ldr	ip, .L457+44
	str	r2, [r6]
	ldr	r2, .L457+48
	str	r3, [r4, #52]
	str	r3, [ip]
	str	r3, [r2]
	b	.L445
.L443:
	mov	r2, #1
	mov	r3, #0
	str	r2, [r4, #52]
	str	r3, [r6]
	b	.L445
.L456:
	ldr	ip, [r1, #8]
	ldr	r0, [r1, #12]
	ldr	r4, .L457+16
	ldr	r5, .L457+40
	sub	r1, ip, #5
	add	r0, r0, #4
	sub	ip, ip, #75
	str	lr, [r6]
	str	r0, [r4, #12]
	str	r3, [r4, #52]
	str	r1, [r4, #8]
	str	ip, [r5]
	b	.L441
.L458:
	.align	2
.L457:
	.word	oldButtons
	.word	magicPressed
	.word	collisionMap
	.word	buttons
	.word	playerMagic
	.word	ghost
	.word	collision
	.word	ghostLives
	.word	player
	.word	canUseMagic
	.word	magicDistance
	.word	treasureFlag
	.word	goldApple
	.size	updatePlayerMagic, .-updatePlayerMagic
	.align	2
	.global	initGhostMagic
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGhostMagic, %function
initGhostMagic:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #8
	mov	lr, #16
	mov	ip, #2
	mov	r0, #3
	mov	r1, #1
	ldr	r3, .L461
	str	r4, [r3, #24]
	str	lr, [r3, #28]
	str	ip, [r3, #16]
	str	r0, [r3, #48]
	str	r1, [r3, #52]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	pop	{r4, lr}
	bx	lr
.L462:
	.align	2
.L461:
	.word	ghostMagic
	.size	initGhostMagic, .-initGhostMagic
	.align	2
	.global	drawGhostMagic
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGhostMagic, %function
drawGhostMagic:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L472
	ldr	r4, .L472+4
	ldr	r3, [r3]
	ldr	r1, [r4, #8]
	ldr	r2, [r4, #28]
	sub	r3, r1, r3
	cmn	r3, r2
	bmi	.L464
	ldr	r0, .L472+8
	ldr	r1, [r4, #12]
	ldr	r2, [r4, #24]
	ldr	r0, [r0]
	add	r2, r1, r2
	sub	r2, r2, r0
	mvn	r2, r2
	cmp	r3, #160
	lsr	r2, r2, #31
	movgt	r2, #0
	cmp	r2, #0
	bne	.L471
.L464:
	ldr	r5, [r4, #32]
	ldr	r3, .L472+12
	smull	r1, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #1
	add	r3, r3, r3, lsl #2
	cmp	r5, r3
	bne	.L466
	ldr	r0, [r4, #44]
	ldr	r3, .L472+16
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L466:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L471:
	sub	r1, r1, r0
	cmp	r1, #240
	bgt	.L464
	ldr	ip, .L472+20
	ldr	r0, [r4, #52]
	ldr	r2, [ip]
	cmp	r0, #0
	add	r0, r2, #1
	beq	.L465
	ldr	r2, .L472+24
	ldrh	r3, [r2]
	orr	r3, r3, #512
	str	r0, [ip]
	strh	r3, [r2]	@ movhi
	b	.L464
.L465:
	and	r3, r3, #255
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r2, [r4, #36]
	ldr	lr, [r4, #44]
	add	r2, r2, #15
	str	r0, [ip]
	lsl	r1, r1, #23
	ldr	r0, .L472+24
	add	r2, r2, lr, lsl #6
	lsr	r1, r1, #23
	orr	r2, r2, #12288
	strh	r3, [r0]	@ movhi
	strh	r1, [r0, #2]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	b	.L464
.L473:
	.align	2
.L472:
	.word	vOff
	.word	ghostMagic
	.word	hOff
	.word	1717986919
	.word	__aeabi_idivmod
	.word	shadowOAMIndex
	.word	shadowOAM+400
	.size	drawGhostMagic, .-drawGhostMagic
	.align	2
	.global	drawLevel2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLevel2, %function
drawLevel2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #7
	ldr	r2, .L480
	push	{r4, lr}
	ldr	r3, .L480+4
	ldr	r4, .L480+8
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L480+12
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L478
.L475:
	cmp	r3, #0
	beq	.L479
.L476:
	bl	drawPlayerMagic
	ldr	r3, .L480+16
	mov	lr, pc
	bx	r3
	ldr	r4, .L480+20
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L480+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L480+28
	ldrh	r1, [r2]
	ldr	r2, .L480+32
	ldrh	r2, [r2]
	strh	r1, [r3, #20]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #22]	@ movhi
	bx	lr
.L479:
	mov	r0, #1
	bl	drawArrow
	bl	drawGhost
	bl	drawGhostMagic
	b	.L476
.L478:
	bl	drawForeground
	bl	drawChicken
	mov	r0, #3
	bl	drawArrow
	ldr	r3, [r4]
	b	.L475
.L481:
	.align	2
.L480:
	.word	shadowOAMIndex
	.word	drawPlayer
	.word	foregroundCheck
	.word	drawHearts
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.size	drawLevel2, .-drawLevel2
	.align	2
	.global	updateGhostMagic
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGhostMagic, %function
updateGhostMagic:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L498
	ldr	r2, .L498+4
	ldr	r3, [r4]
	smull	r0, r1, r2, r3
	ldr	r5, .L498+8
	asr	r2, r3, #31
	rsb	r2, r2, r1, asr #3
	add	r2, r2, r2, lsl #2
	ldr	r1, [r5]
	sub	r3, r3, r2, lsl #2
	orrs	r3, r3, r1
	sub	sp, sp, #20
	bne	.L483
	mov	r0, #1
	ldr	r1, .L498+12
	ldr	r2, [r1, #8]
	ldr	r1, [r1, #12]
	ldr	r6, .L498+16
	add	r1, r1, #4
	str	r1, [r6, #12]
	add	r1, r2, #5
	str	r3, [r6, #52]
	str	r1, [r6, #8]
	str	r0, [r5]
.L484:
	add	r2, r2, #79
	cmp	r2, r1
	movlt	r2, #1
	movlt	r3, #0
	ldrge	r3, [r6, #16]
	addge	r1, r1, r3
	strge	r1, [r6, #8]
	strlt	r2, [r6, #52]
	strlt	r3, [r5]
	b	.L485
.L483:
	ldr	r6, .L498+16
	cmp	r1, #1
	ldr	r1, [r6, #8]
	beq	.L495
.L485:
	ldr	r3, .L498+20
	add	r0, r3, #24
	add	r2, r3, #8
	ldm	r2, {r2, r3}
	ldm	r0, {r0, ip}
	str	r2, [sp, #4]
	str	r0, [sp, #8]
	str	ip, [sp, #12]
	str	r3, [sp]
	add	r2, r6, #24
	ldm	r2, {r2, r3}
	ldr	r0, [r6, #12]
	ldr	r7, .L498+24
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L487
	ldr	r3, [r6, #52]
	cmp	r3, #0
	beq	.L496
.L487:
	ldr	r3, .L498+28
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L497
.L488:
	ldr	r3, [r4]
	add	r3, r3, #1
	str	r3, [r4]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L497:
	ldr	r3, .L498+12
	ldr	r3, [r3, #52]
	cmp	r3, #0
	beq	.L488
	mov	r2, #1
	mov	r3, #0
	str	r2, [r6, #52]
	str	r3, [r5]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L496:
	mov	r2, #1
	str	r3, [r5]
	str	r2, [r6, #52]
	bl	playerHit
	b	.L487
.L495:
	ldr	r3, .L498+12
	ldr	r2, [r3, #8]
	b	.L484
.L499:
	.align	2
.L498:
	.word	ghostCounter
	.word	1717986919
	.word	ghostCanShoot
	.word	ghost
	.word	ghostMagic
	.word	player
	.word	collision
	.word	ghostLives
	.size	updateGhostMagic, .-updateGhostMagic
	.align	2
	.global	updateLevel2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLevel2, %function
updateLevel2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L506
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L504
.L501:
	cmp	r3, #0
	beq	.L505
	bl	updatePlayer2
	pop	{r4, lr}
	b	updatePlayerMagic
.L505:
	ldr	r3, .L506+4
	ldr	r2, .L506+8
	str	r2, [r3]
	bl	updateGhost
	bl	updateGhostMagic
	bl	updatePlayer2
	pop	{r4, lr}
	b	updatePlayerMagic
.L504:
	ldr	r3, .L506+4
	ldr	r2, .L506+12
	str	r2, [r3]
	bl	updateChicken
	ldr	r3, [r4]
	b	.L501
.L507:
	.align	2
.L506:
	.word	foregroundCheck
	.word	collisionMap
	.word	level2Top_collisionMapBitmap
	.word	level2Bottom_collisionMapBitmap
	.size	updateLevel2, .-updateLevel2
	.comm	bridgeMap,4,4
	.comm	empirePass,4,4
	.comm	bluePass,4,4
	.comm	redPass,4,4
	.comm	haveRelic,4,4
	.comm	haveReaperCloth,4,4
	.comm	havePotion,4,4
	.comm	haveEggs,4,4
	.comm	potionUses,4,4
	.comm	gaveFlowers,4,4
	.comm	haveFlowers,4,4
	.comm	gameWin,4,4
	.comm	skull,4,4
	.comm	ghostCounter,4,4
	.comm	ghostCanShoot,4,4
	.comm	ghostLives,4,4
	.comm	ghostMovement,4,4
	.comm	redApple,4,4
	.comm	blueApple,4,4
	.comm	goldApple,4,4
	.comm	treasureFlag,4,4
	.comm	canUseMagic,4,4
	.comm	magicDistance,4,4
	.comm	magicPressed,4,4
	.comm	roomCheck,4,4
	.comm	doorFlag,4,4
	.comm	hitPanel,4,4
	.comm	arrayIndex,4,4
	.comm	foregroundCheck,4,4
	.comm	arrayGuess,28,4
	.global	arrayAnswer
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	prevCol,4,4
	.comm	prevRow,4,4
	.comm	lives,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	screenBlock,4,4
	.comm	chickensLeft,4,4
	.comm	ghostHealthBar,56,4
	.comm	ghostMagic,56,4
	.comm	playerMagic,56,4
	.comm	ghost,56,4
	.comm	chicken,280,4
	.comm	arrow,112,4
	.comm	foreground,112,4
	.comm	player,56,4
	.comm	collisionMap,4,4
	.comm	shadowOAM,1024,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	arrayAnswer, %object
	.size	arrayAnswer, 28
arrayAnswer:
	.word	3
	.word	1
	.word	1
	.word	2
	.word	3
	.word	3
	.word	2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
