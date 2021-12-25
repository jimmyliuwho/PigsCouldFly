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
	.file	"inventoryScreen.c"
	.text
	.align	2
	.global	initInventory
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initInventory, %function
initInventory:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	lr, #8
	ldr	r3, .L4
	ldr	ip, .L4+4
	ldr	r1, [r3]
	ldr	r0, [r3, #4]
	str	r1, [ip, #12]
	str	r0, [ip, #8]
	ldr	r4, .L4+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+12
	str	lr, [ip, #24]
	str	lr, [ip, #28]
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	.LANCHOR0
	.word	pointer
	.word	DMANow
	.word	inventoryPal
	.size	initInventory, .-initInventory
	.align	2
	.global	initPointer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPointer, %function
initPointer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #8
	ldr	r1, .L7
	ldr	r3, .L7+4
	ldm	r1, {r0, r1}
	str	r2, [r3, #24]
	str	r0, [r3, #12]
	str	r1, [r3, #8]
	str	r2, [r3, #28]
	bx	lr
.L8:
	.align	2
.L7:
	.word	.LANCHOR0
	.word	pointer
	.size	initPointer, .-initPointer
	.align	2
	.global	drawPointer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPointer, %function
drawPointer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, .L11
	ldr	ip, .L11+4
	sub	sp, sp, #8
	add	r2, r0, #24
	ldr	r1, [r0, #8]
	ldm	r2, {r2, r3}
	ldr	r0, [r0, #12]
	ldr	r4, .L11+8
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	pointer
	.word	pointerBitmap
	.word	drawImage4
	.size	drawPointer, .-drawPointer
	.align	2
	.global	updatePointer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePointer, %function
updatePointer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L56
	ldrh	r1, [r3]
	ldr	ip, .L56+4
	ldr	r3, .L56+8
	tst	r1, #16
	push	{r4, r5, r6, lr}
	ldr	r0, [ip, #12]
	ldr	r2, [r3]
	ldr	lr, [r3, #8]
	beq	.L14
	ldr	r4, .L56+12
	ldrh	r4, [r4]
	tst	r4, #16
	beq	.L49
.L14:
	tst	r1, #128
	beq	.L15
	ldr	r4, .L56+12
	ldrh	r4, [r4]
	tst	r4, #128
	beq	.L50
.L15:
	tst	r1, #64
	beq	.L16
	ldr	r4, .L56+12
	ldrh	r4, [r4]
	tst	r4, #64
	beq	.L51
.L16:
	tst	r1, #32
	beq	.L17
	ldr	r4, .L56+12
	ldrh	r4, [r4]
	tst	r4, #32
	beq	.L52
.L17:
	sub	r4, r2, lr
	cmp	r4, r0
	sub	r2, r2, lr, lsl #1
	beq	.L53
.L19:
	cmp	r0, r2
	beq	.L54
.L13:
	pop	{r4, r5, r6, lr}
	bx	lr
.L52:
	ldr	r5, [r3, #4]
	ldr	r4, [r3, #12]
	cmp	r0, r2
	add	r4, r4, r5
	ldr	r5, [ip, #8]
	bgt	.L55
.L18:
	cmp	r4, r5
	movge	r4, #0
	movlt	r4, #1
	cmp	r0, #0
	movle	r4, #0
	cmp	r4, #0
	beq	.L17
.L47:
	sub	r0, r0, lr
	sub	r4, r2, lr
	cmp	r4, r0
	str	r0, [ip, #12]
	sub	r2, r2, lr, lsl #1
	bne	.L19
.L53:
	ldr	r5, [r3, #12]
	ldr	lr, [r3, #4]
	ldr	r4, [ip, #8]
	add	ip, lr, r5, lsl #1
	cmp	r4, ip
	bne	.L13
	ldr	ip, .L56+16
	ldr	ip, [ip]
	cmp	ip, #1
	bne	.L48
	tst	r1, #1
	beq	.L48
	ldr	lr, .L56+12
	ldrh	lr, [lr]
	tst	lr, #1
	ldreq	lr, .L56+20
	streq	ip, [lr]
	b	.L48
.L51:
	ldr	r4, [ip, #8]
	ldr	r5, [r3, #4]
	cmp	r4, r5
	ble	.L16
	cmp	r0, r2
	ldrge	r5, [r3, #12]
	subge	r4, r4, r5
	strge	r4, [ip, #8]
	b	.L16
.L50:
	ldr	r6, [r3, #12]
	ldr	r4, [r3, #4]
	ldr	r5, [ip, #8]
	add	r4, r4, r6, lsl #1
	cmp	r5, r4
	addlt	r5, r5, r6
	strlt	r5, [ip, #8]
	b	.L15
.L49:
	add	r4, r2, lr, lsl #1
	cmp	r4, r0
	addgt	r0, r0, lr
	strgt	r0, [ip, #12]
	b	.L14
.L54:
	ldr	lr, [r3, #12]
	ldr	r2, [r3, #4]
	ldr	r0, [ip, #8]
	add	r2, r2, lr, lsl #1
.L48:
	cmp	r0, r2
	bne	.L13
	ldr	r2, .L56+24
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L13
	tst	r1, #1
	beq	.L13
	ldr	r2, .L56+12
	ldrh	r2, [r2]
	ands	r4, r2, #1
	bne	.L13
	ldr	r5, .L56+28
	ldr	r2, [r5]
	cmp	r2, #4
	bgt	.L13
	ldr	r2, [r3, #16]
	cmp	r2, #0
	ble	.L13
	ldr	r1, .L56+32
	sub	ip, r2, #1
	str	ip, [r3, #16]
	mov	r2, r4
	ldr	r3, .L56+36
	ldr	r1, [r1]
	ldr	r0, .L56+40
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L56+44
	str	r2, [r5]
	str	r4, [r3, #52]
	str	r4, [r3, #108]
	str	r4, [r3, #164]
	str	r4, [r3, #220]
	str	r4, [r3, #276]
	b	.L13
.L55:
	cmp	r4, r5
	blt	.L18
	b	.L47
.L57:
	.align	2
.L56:
	.word	oldButtons
	.word	pointer
	.word	.LANCHOR0
	.word	buttons
	.word	bridgeMap
	.word	scrollCheck
	.word	havePotion
	.word	lives
	.word	menuSFX_length
	.word	playSoundB
	.word	menuSFX_data
	.word	hearts
	.size	updatePointer, .-updatePointer
	.align	2
	.global	drawItems
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawItems, %function
drawItems:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L82
	ldr	r3, [r3]
	cmp	r3, #1
	sub	sp, sp, #8
	beq	.L71
	ldr	r3, .L82+4
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L72
.L60:
	ldr	r3, .L82+8
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L73
.L61:
	ldr	r3, .L82+12
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L74
.L62:
	ldr	r3, .L82+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L75
.L63:
	ldr	r3, .L82+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L76
.L64:
	ldr	r3, .L82+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L77
.L65:
	ldr	r3, .L82+28
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L78
.L66:
	ldr	r3, .L82+32
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L79
.L67:
	ldr	r3, .L82+36
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L80
.L68:
	ldr	r3, .L82+40
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L81
.L58:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L71:
	mov	r3, #32
	ldr	r0, .L82+44
	mov	r2, r3
	mov	r1, r3
	str	r0, [sp]
	ldr	r4, .L82+48
	mov	r0, #104
	mov	lr, pc
	bx	r4
	ldr	r3, .L82+4
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L60
.L72:
	mov	r3, #32
	ldr	r1, .L82+52
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #104
	mov	r1, #72
	ldr	r4, .L82+48
	mov	lr, pc
	bx	r4
	ldr	r3, .L82+8
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L61
.L73:
	mov	r3, #32
	ldr	r1, .L82+56
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #152
	mov	r1, #72
	ldr	r4, .L82+48
	mov	lr, pc
	bx	r4
	ldr	r3, .L82+12
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L62
.L74:
	mov	r3, #32
	ldr	r1, .L82+60
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #200
	mov	r1, #112
	ldr	r4, .L82+48
	mov	lr, pc
	bx	r4
	ldr	r3, .L82+16
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L63
.L75:
	mov	r3, #32
	ldr	r1, .L82+64
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #152
	mov	r1, #112
	ldr	r4, .L82+48
	mov	lr, pc
	bx	r4
	ldr	r3, .L82+20
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L64
.L76:
	mov	r3, #32
	ldr	r1, .L82+68
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #104
	mov	r1, #112
	ldr	r4, .L82+48
	mov	lr, pc
	bx	r4
	ldr	r3, .L82+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L65
.L77:
	mov	r3, #32
	ldr	r0, .L82+72
	mov	r2, r3
	mov	r1, r3
	str	r0, [sp]
	ldr	r4, .L82+48
	mov	r0, #152
	mov	lr, pc
	bx	r4
	ldr	r3, .L82+28
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L66
.L78:
	mov	r3, #32
	ldr	r0, .L82+76
	mov	r2, r3
	mov	r1, r3
	str	r0, [sp]
	ldr	r4, .L82+48
	mov	r0, #200
	mov	lr, pc
	bx	r4
	ldr	r3, .L82+32
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L67
.L79:
	mov	r3, #32
	ldr	r1, .L82+80
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #8
	mov	r1, #112
	ldr	r4, .L82+48
	mov	lr, pc
	bx	r4
	ldr	r3, .L82+36
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L68
.L80:
	mov	r3, #32
	ldr	r1, .L82+84
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #56
	mov	r1, #112
	ldr	r4, .L82+48
	mov	lr, pc
	bx	r4
	ldr	r3, .L82+40
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L58
.L81:
	mov	r3, #32
	ldr	r1, .L82+88
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #200
	mov	r1, #72
	ldr	r4, .L82+48
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L83:
	.align	2
.L82:
	.word	keyObtained
	.word	haveEggs
	.word	haveRelic
	.word	goldApple
	.word	blueApple
	.word	redApple
	.word	skull
	.word	haveFlowers
	.word	havePotion
	.word	bridgeMap
	.word	haveReaperCloth
	.word	keyBitmap
	.word	drawImage4
	.word	eggBitmap
	.word	relicBitmap
	.word	goldAppleBitmap
	.word	blueAppleBitmap
	.word	redAppleBitmap
	.word	skullBitmap
	.word	flowerBitmap
	.word	potionBitmap
	.word	scrollBitmap
	.word	reaperClothBitmap
	.size	drawItems, .-drawItems
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Cabin Key\000"
	.align	2
.LC1:
	.ascii	"Eggs\000"
	.align	2
.LC2:
	.ascii	"Ancient Relic\000"
	.align	2
.LC3:
	.ascii	"Reaper Cloth\000"
	.align	2
.LC4:
	.ascii	"Blue Hydrangeas\000"
	.align	2
.LC5:
	.ascii	"Golden Apple\000"
	.align	2
.LC6:
	.ascii	"Blue Apple\000"
	.align	2
.LC7:
	.ascii	"Red Apple\000"
	.align	2
.LC8:
	.ascii	"Skull\000"
	.align	2
.LC9:
	.ascii	"Bridge Map (Press A)\000"
	.align	2
.LC10:
	.ascii	"Health Potion (Press A) Uses Left:\000"
	.align	2
.LC11:
	.ascii	"3\000"
	.align	2
.LC12:
	.ascii	"2\000"
	.align	2
.LC13:
	.ascii	"1\000"
	.align	2
.LC14:
	.ascii	"0\000"
	.align	2
.LC15:
	.ascii	"???\000"
	.text
	.align	2
	.global	drawItemText
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawItemText, %function
drawItemText:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	ip, .L146
	ldr	r4, .L146+4
	ldr	r1, [ip, #12]
	ldr	r3, [r4]
	cmp	r1, r3
	beq	.L131
.L85:
	ldr	r0, [r4, #8]
	add	r2, r3, r0
	cmp	r1, r2
	beq	.L132
	add	lr, r0, r2
	cmp	r1, lr
	beq	.L133
.L92:
	add	lr, r3, r0, lsl #1
	cmp	r1, lr
	beq	.L122
	cmp	r1, r2
	beq	.L123
.L97:
	cmp	r1, r3
	beq	.L134
.L102:
	sub	r3, r3, r0
	cmp	r1, r3
	beq	.L135
	sub	r3, r3, r0
	cmp	r1, r3
	bne	.L104
	ldr	r1, [r4, #12]
	ldr	r3, [r4, #4]
	ldr	r2, [ip, #8]
	add	r3, r3, r1, lsl #1
	cmp	r2, r3
	beq	.L109
.L104:
	mov	r3, #7
	mov	r1, #152
	mov	r0, #8
	ldr	r2, .L146+8
	ldr	r4, .L146+12
	mov	lr, pc
	bx	r4
.L84:
	pop	{r4, r5, r6, lr}
	bx	lr
.L132:
	ldr	lr, [r4, #4]
	ldr	r6, [r4, #12]
	ldr	r5, [ip, #8]
	add	lr, lr, r6
	cmp	r5, lr
	beq	.L117
	add	lr, r3, r0, lsl #1
	cmp	r1, lr
	bne	.L123
.L122:
	ldr	r5, [ip, #8]
	ldr	lr, [r4, #4]
	cmp	r5, lr
	beq	.L136
.L94:
	ldr	r6, [r4, #12]
	add	lr, lr, r6, lsl #1
	cmp	r5, lr
	beq	.L137
	cmp	r1, r2
	bne	.L97
	ldr	r5, [ip, #8]
	ldr	lr, [r4, #4]
.L98:
	cmp	r3, r2
	beq	.L112
.L113:
	ldr	r5, [ip, #8]
	ldr	lr, [r4, #4]
.L112:
	cmp	lr, r5
	bne	.L102
	ldr	r2, .L146+16
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L102
	mov	r3, #7
	mov	r1, #152
	mov	r0, #8
	ldr	r2, .L146+20
	ldr	r4, .L146+12
	mov	lr, pc
	bx	r4
	b	.L84
.L131:
	ldr	r0, [ip, #8]
	ldr	r2, [r4, #4]
	cmp	r0, r2
	beq	.L138
.L86:
	ldr	lr, [r4, #12]
	add	r2, r2, lr
	cmp	r0, r2
	bne	.L85
	ldr	r2, .L146+24
	ldr	r2, [r2]
	cmp	r2, #1
	beq	.L139
	ldr	r0, [r4, #8]
	add	r2, r3, r0
	cmp	r1, r2
	beq	.L117
.L128:
	add	lr, r0, r2
	cmp	r1, lr
	bne	.L92
	b	.L116
.L135:
	ldr	lr, [r4, #12]
	ldr	r3, [r4, #4]
	ldr	r2, [ip, #8]
	add	r3, r3, lr, lsl #1
	cmp	r2, r3
	bne	.L104
	ldr	r3, .L146+28
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L140
	sub	r3, r1, r0
	cmp	r1, r3
	bne	.L104
.L109:
	ldr	r3, .L146+32
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L104
	mov	r3, #7
	mov	r1, #152
	mov	r0, #8
	ldr	r2, .L146+36
	ldr	r5, .L146+12
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #16]
	cmp	r3, #3
	beq	.L141
	cmp	r3, #2
	beq	.L142
	cmp	r3, #1
	beq	.L143
	cmp	r3, #0
	bne	.L84
	mov	r3, #7
	mov	r1, #152
	mov	r0, #220
	ldr	r2, .L146+40
	mov	lr, pc
	bx	r5
	b	.L84
.L133:
	ldr	lr, [r4, #4]
	ldr	r6, [r4, #12]
	ldr	r5, [ip, #8]
	add	lr, lr, r6
	cmp	r5, lr
	bne	.L92
.L116:
	ldr	lr, .L146+44
	ldr	lr, [lr]
	cmp	lr, #1
	bne	.L92
	mov	r3, #7
	mov	r1, #152
	mov	r0, #8
	ldr	r2, .L146+48
	ldr	r4, .L146+12
	mov	lr, pc
	bx	r4
	b	.L84
.L123:
	ldr	lr, [r4, #4]
	ldr	r6, [r4, #12]
	ldr	r5, [ip, #8]
	add	r6, lr, r6, lsl #1
	cmp	r5, r6
	bne	.L98
.L114:
	ldr	lr, .L146+52
	ldr	lr, [lr]
	cmp	lr, #1
	beq	.L144
	cmp	r1, r3
	bne	.L100
.L111:
	ldr	lr, .L146+56
	ldr	lr, [lr]
	cmp	lr, #1
	beq	.L119
.L100:
	cmp	r1, r2
	bne	.L102
	b	.L113
.L137:
	ldr	lr, .L146+60
	ldr	lr, [lr]
	cmp	lr, #1
	beq	.L145
	cmp	r1, r2
	beq	.L114
	cmp	r1, r3
	bne	.L102
	ldr	r2, .L146+56
	ldr	r2, [r2]
	cmp	r2, #1
	bne	.L102
.L119:
	mov	r3, #7
	mov	r1, #152
	mov	r0, #8
	ldr	r2, .L146+64
	ldr	r4, .L146+12
	mov	lr, pc
	bx	r4
	b	.L84
.L134:
	ldr	r6, [r4, #12]
	ldr	lr, [r4, #4]
	ldr	r5, [ip, #8]
	add	lr, lr, r6, lsl #1
	cmp	r5, lr
	bne	.L100
	b	.L111
.L138:
	ldr	lr, .L146+68
	ldr	lr, [lr]
	cmp	lr, #1
	bne	.L86
	mov	r3, #7
	mov	r1, #152
	mov	r0, #8
	ldr	r2, .L146+72
	ldr	r4, .L146+12
	mov	lr, pc
	bx	r4
	b	.L84
.L117:
	ldr	lr, .L146+76
	ldr	lr, [lr]
	cmp	lr, #1
	bne	.L128
	mov	r3, #7
	mov	r1, #152
	mov	r0, #8
	ldr	r2, .L146+80
	ldr	r4, .L146+12
	mov	lr, pc
	bx	r4
	b	.L84
.L136:
	ldr	r6, .L146+84
	ldr	r6, [r6]
	cmp	r6, #1
	bne	.L94
	mov	r3, #7
	mov	r1, #152
	mov	r0, #8
	ldr	r2, .L146+88
	ldr	r4, .L146+12
	mov	lr, pc
	bx	r4
	b	.L84
.L139:
	mov	r3, #7
	mov	r1, #152
	mov	r0, #8
	ldr	r2, .L146+92
	ldr	r4, .L146+12
	mov	lr, pc
	bx	r4
	b	.L84
.L145:
	mov	r3, #7
	mov	r1, #152
	mov	r0, #8
	ldr	r2, .L146+96
	ldr	r4, .L146+12
	mov	lr, pc
	bx	r4
	b	.L84
.L144:
	mov	r3, #7
	mov	r1, #152
	mov	r0, #8
	ldr	r2, .L146+100
	ldr	r4, .L146+12
	mov	lr, pc
	bx	r4
	b	.L84
.L140:
	mov	r3, #7
	mov	r1, #152
	mov	r0, #8
	ldr	r2, .L146+104
	ldr	r4, .L146+12
	mov	lr, pc
	bx	r4
	b	.L84
.L141:
	mov	r3, #7
	mov	r1, #152
	mov	r0, #220
	ldr	r2, .L146+108
	mov	lr, pc
	bx	r5
	b	.L84
.L142:
	mov	r3, #7
	mov	r1, #152
	mov	r0, #220
	ldr	r2, .L146+112
	mov	lr, pc
	bx	r5
	b	.L84
.L143:
	mov	r3, #7
	mov	r1, #152
	mov	r0, #220
	ldr	r2, .L146+116
	mov	lr, pc
	bx	r5
	b	.L84
.L147:
	.align	2
.L146:
	.word	pointer
	.word	.LANCHOR0
	.word	.LC15
	.word	drawString4
	.word	skull
	.word	.LC8
	.word	haveEggs
	.word	bridgeMap
	.word	havePotion
	.word	.LC10
	.word	.LC14
	.word	haveReaperCloth
	.word	.LC3
	.word	blueApple
	.word	redApple
	.word	goldApple
	.word	.LC7
	.word	keyObtained
	.word	.LC0
	.word	haveRelic
	.word	.LC2
	.word	haveFlowers
	.word	.LC4
	.word	.LC1
	.word	.LC5
	.word	.LC6
	.word	.LC9
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.size	drawItemText, .-drawItemText
	.align	2
	.global	drawInventory
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawInventory, %function
drawInventory:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, .L150
	ldr	r3, .L150+4
	mov	lr, pc
	bx	r3
	bl	drawPointer
	bl	drawItems
	pop	{r4, lr}
	b	drawItemText
.L151:
	.align	2
.L150:
	.word	inventoryBitmap
	.word	drawFullscreenImage4
	.size	drawInventory, .-drawInventory
	.comm	blueApple,4,4
	.global	potionUses
	.global	rowDistance
	.global	colDistance
	.global	firstRow
	.global	firstCol
	.comm	pointer,56,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	firstCol, %object
	.size	firstCol, 4
firstCol:
	.word	94
	.type	firstRow, %object
	.size	firstRow, 4
firstRow:
	.word	56
	.type	colDistance, %object
	.size	colDistance, 4
colDistance:
	.word	48
	.type	rowDistance, %object
	.size	rowDistance, 4
rowDistance:
	.word	40
	.type	potionUses, %object
	.size	potionUses, 4
potionUses:
	.word	3
	.ident	"GCC: (devkitARM release 53) 9.1.0"
