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
	.file	"game.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBullet.part.0, %function
drawBullet.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, .L4
	ldr	ip, .L4+4
	sub	sp, sp, #8
	ldr	r3, [r0, #20]
	ldr	r2, [r0, #24]
	ldr	r4, .L4+8
	ldm	r0, {r0, r1}
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	bullet
	.word	bookBitmap
	.word	drawImage4
	.size	drawBullet.part.0, .-drawBullet.part.0
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #116
	mov	lr, #0
	mov	r2, #135
	mov	ip, #24
	mov	r0, #20
	ldr	r3, .L8
	str	lr, [r3, #16]
	str	r1, [r3]
	str	r1, [r3, #8]
	str	ip, [r3, #20]
	str	r0, [r3, #24]
	str	r2, [r3, #4]
	str	r2, [r3, #12]
	ldr	lr, [sp], #4
	bx	lr
.L9:
	.align	2
.L8:
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	initBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBullet, %function
initBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r2, #67108864
	mov	r6, #8
	mov	r5, #9
	mvn	r4, #1
	mov	lr, #1
	mov	ip, #0
	mov	r0, #20480
	ldr	r1, .L12
	ldr	r3, .L12+4
	ldr	r7, [r1]
	ldr	r1, [r1, #4]
	str	r1, [r3, #4]
	ldr	r1, .L12+8
	str	r7, [r3]
	str	r6, [r3, #20]
	str	r5, [r3, #24]
	str	r4, [r3, #16]
	str	lr, [r3, #28]
	str	ip, [r3, #36]
	pop	{r4, r5, r6, r7, lr}
	strh	r0, [r2, #104]	@ movhi
	strh	r1, [r2, #108]	@ movhi
	bx	lr
.L13:
	.align	2
.L12:
	.word	player
	.word	bullet
	.word	-31221
	.size	initBullet, .-initBullet
	.align	2
	.global	initUGAs
	.syntax unified
	.arm
	.fpu softvfp
	.type	initUGAs, %function
initUGAs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, #0
	ldr	r9, .L18
	ldr	r4, .L18+4
	ldr	r8, .L18+8
	ldr	r7, .L18+12
	add	r6, r9, #400
.L15:
	mov	lr, pc
	bx	r4
	smull	r3, r2, r8, r0
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #7
	add	r2, r3, r3, lsl #1
	rsb	r3, r3, r2, lsl #6
	sub	r0, r0, r3
	add	r0, r0, #30
	stm	r9, {r0, r5}
	mov	lr, pc
	bx	r4
	mov	ip, #7
	mov	r1, #8
	mov	r2, #252
	smull	lr, r3, r7, r0
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	sub	r0, r0, r3
	add	r0, r0, #4
	str	r5, [r9, #32]
	str	r0, [r9, #16]
	str	ip, [r9, #20]
	str	r1, [r9, #24]
	str	r2, [r9, #28]
	add	r9, r9, #40
	cmp	r9, r6
	bne	.L15
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	ugas
	.word	rand
	.word	-1416664605
	.word	1431655766
	.size	initUGAs, .-initUGAs
	.align	2
	.global	initBooks
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBooks, %function
initBooks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, #0
	mov	r8, #8
	ldr	r9, .L24
	ldr	r4, .L24+4
	ldr	r7, .L24+8
	add	r6, r9, #400
.L21:
	mov	lr, pc
	bx	r4
	smull	r3, r2, r7, r0
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #7
	add	r2, r3, r3, lsl #1
	rsb	r3, r3, r2, lsl #6
	sub	r0, r0, r3
	add	r0, r0, #30
	stm	r9, {r0, r5}
	mov	lr, pc
	bx	r4
	mov	r1, #9
	mov	r2, #253
	rsbs	r3, r0, #0
	and	r3, r3, #3
	and	r0, r0, #3
	rsbpl	r0, r3, #0
	add	r0, r0, #5
	str	r8, [r9, #20]
	str	r5, [r9, #32]
	str	r0, [r9, #16]
	str	r1, [r9, #24]
	str	r2, [r9, #28]
	add	r9, r9, #40
	cmp	r9, r6
	bne	.L21
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	books
	.word	rand
	.word	-1416664605
	.size	initBooks, .-initBooks
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #0
	mov	r0, #24
	mov	ip, #20
	mov	r1, #116
	mov	r2, #135
	mov	r5, #3
	ldr	r3, .L28
	str	r4, [r3]
	ldr	r3, .L28+4
	str	r0, [r3, #20]
	ldr	r0, .L28+8
	str	ip, [r3, #24]
	str	r4, [r3, #16]
	str	r1, [r3]
	str	r1, [r3, #8]
	str	r2, [r3, #4]
	str	r2, [r3, #12]
	str	r5, [r0]
	bl	initUGAs
	bl	initBooks
	mov	r0, r5
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L28+12
	ldr	r5, .L28+16
	mov	lr, pc
	bx	r5
	mvn	lr, #32768
	mov	ip, #31
	mov	r0, #992
	ldr	r3, .L28+20
	ldr	r1, .L28+24
	ldr	r2, .L28+28
	strh	r4, [r3, #244]	@ movhi
	strh	lr, [r3, #246]	@ movhi
	strh	ip, [r3, #248]	@ movhi
	strh	r0, [r3, #250]	@ movhi
	strh	r1, [r3, #252]	@ movhi
	strh	r2, [r3, #254]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	score
	.word	player
	.word	lives
	.word	dorothyPal
	.word	DMANow
	.word	83886336
	.word	24414
	.word	15855
	.size	initGame, .-initGame
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L68
	ldrh	r0, [r4]
	ldr	r3, .L68+4
	tst	r0, #32
	ldr	r1, [r3]
	ldr	ip, [r3, #28]
	bne	.L31
	cmp	r1, #0
	ble	.L31
	cmp	ip, #0
	mvneq	r2, #0
	streq	r2, [r3, #16]
	b	.L32
.L31:
	tst	r0, #16
	beq	.L66
.L33:
	cmp	ip, #0
	streq	ip, [r3, #16]
.L32:
	ldr	r5, .L68+8
	ldrh	lr, [r5]
	tst	lr, #512
	ldr	r2, [r3, #36]
	beq	.L34
	tst	r0, #512
	bne	.L34
	cmp	ip, #0
	bne	.L35
	cmp	r2, #0
	ble	.L67
.L36:
	tst	lr, #256
	bne	.L47
	ldr	r0, [r3, #16]
	sub	r2, r2, #1
	add	r0, r1, r0
	b	.L40
.L34:
	tst	lr, #256
	beq	.L37
.L46:
	tst	r0, #256
	bne	.L37
	cmp	ip, #0
	beq	.L49
.L63:
	sub	r2, r2, #1
.L43:
	ldr	r0, [r3, #32]
	add	r0, r0, #1
	cmp	r0, #20
	str	r0, [r3, #32]
	bgt	.L44
.L65:
	ldr	r0, [r3, #16]
	add	r0, r1, r0
.L40:
	str	r2, [r3, #36]
	str	r1, [r3, #8]
	str	r0, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L37:
	cmp	ip, #0
	sub	r2, r2, #1
	beq	.L65
	b	.L43
.L66:
	ldr	r2, [r3, #24]
	add	r2, r1, r2
	cmp	r2, #238
	bgt	.L33
	cmp	ip, #0
	moveq	r2, #1
	streq	r2, [r3, #16]
	b	.L32
.L44:
	mov	ip, #0
	mov	r0, r1
	str	ip, [r3, #16]
	str	ip, [r3, #32]
	str	ip, [r3, #28]
	b	.L40
.L67:
	ldr	ip, [r3, #24]
	sub	ip, r1, ip
	cmp	ip, #30
	ble	.L36
	mov	r2, #67108864
	mov	r0, #3904
	mov	ip, #85
	ldr	lr, .L68+12
	strh	r0, [r2, #98]	@ movhi
	add	r0, r0, #20480
	strh	lr, [r2, #100]	@ movhi
	strh	ip, [r2, #96]	@ movhi
	strh	r0, [r2, #98]	@ movhi
	ldr	r0, [r3, #16]
	mov	r6, #1
	strh	lr, [r2, #100]	@ movhi
	strh	ip, [r2, #96]	@ movhi
	sub	r2, r0, #2
	str	r2, [r3, #16]
	mov	r2, #100
	ldrh	lr, [r5]
	str	r6, [r3, #28]
.L35:
	tst	lr, #256
	beq	.L63
	ldrh	r0, [r4]
	ldr	ip, [r3, #28]
	b	.L46
.L47:
	tst	r0, #256
	subne	r2, r2, #1
	bne	.L65
.L49:
	cmp	r2, #0
	ldr	r0, [r3, #16]
	ble	.L39
.L64:
	add	r0, r1, r0
	sub	r2, r2, #1
	b	.L40
.L39:
	ldr	ip, [r3, #24]
	add	ip, r1, ip
	cmp	ip, #208
	bgt	.L64
	mov	ip, #67108864
	mov	r2, #3904
	mov	lr, #85
	mov	r4, #1
	add	r0, r0, #2
	str	r0, [r3, #16]
	ldr	r0, .L68+12
	strh	r2, [ip, #98]	@ movhi
	add	r2, r2, #20480
	strh	r0, [ip, #100]	@ movhi
	str	r4, [r3, #28]
	strh	lr, [ip, #96]	@ movhi
	strh	r2, [ip, #98]	@ movhi
	strh	r0, [ip, #100]	@ movhi
	mov	r2, #99
	strh	lr, [ip, #96]	@ movhi
	b	.L43
.L69:
	.align	2
.L68:
	.word	buttons
	.word	player
	.word	oldButtons
	.word	-15005
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullet, %function
updateBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L86
	ldr	r2, [r3, #28]
	cmp	r2, #0
	push	{r4, r5, r6, r7, r8, lr}
	bne	.L71
	ldr	r2, .L86+4
	ldrh	r2, [r2]
	tst	r2, #1
	bne	.L85
.L72:
	ldr	r1, [r3, #4]
	cmp	r1, #0
	bgt	.L74
.L77:
	mov	r2, #0
	mov	r0, #67108864
	str	r2, [r3, #28]
	strh	r2, [r0, #104]	@ movhi
.L74:
	mov	r2, #0
	str	r2, [r3, #36]
	b	.L75
.L71:
	ldr	r1, [r3, #4]
	cmp	r1, #0
	ble	.L77
	ldr	r2, [r3, #36]
	add	r2, r2, #1
	cmp	r2, #9
	str	r2, [r3, #36]
	movgt	r2, #67108864
	movgt	r0, #0
	strhgt	r0, [r2, #104]	@ movhi
.L75:
	ldr	r2, [r3, #16]
	ldr	r0, [r3]
	add	r2, r2, r1
	str	r1, [r3, #12]
	str	r2, [r3, #4]
	str	r0, [r3, #8]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L85:
	ldr	r2, .L86+8
	ldrh	r2, [r2]
	tst	r2, #1
	bne	.L72
	ldr	r0, .L86+12
	ldr	r2, [r0]
	cmp	r2, #0
	ble	.L72
	mov	ip, #67108864
	mov	r5, #20480
	mov	r7, #8
	mov	lr, #1
	mov	r6, #9
	mvn	r4, #1
	ldr	r1, .L86+16
	ldr	r8, [r1]
	ldr	r1, [r1, #4]
	str	r8, [r3]
	str	r7, [r3, #20]
	strh	r5, [ip, #104]	@ movhi
	ldr	r5, .L86+20
	sub	r2, r2, #1
	cmp	r1, #0
	str	r6, [r3, #24]
	strh	r5, [ip, #108]	@ movhi
	str	r4, [r3, #16]
	str	r2, [r0]
	str	lr, [r3, #28]
	strgt	lr, [r3, #36]
	bgt	.L75
	b	.L77
.L87:
	.align	2
.L86:
	.word	bullet
	.word	oldButtons
	.word	buttons
	.word	score
	.word	player
	.word	-31221
	.size	updateBullet, .-updateBullet
	.align	2
	.global	updateUGAs
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateUGAs, %function
updateUGAs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L109
	ldr	r2, [r3]
	tst	r2, #3
	moveq	r3, #1
	movne	r3, #0
	cmp	r2, #0
	moveq	r3, #0
	cmp	r3, #0
	push	{r4, r5, r6, r7, lr}
	ldm	r0, {r1, r2}
	ldrne	r3, [r0, #16]
	str	r2, [r0, #12]
	addne	r2, r3, r2
	ldr	r3, [r0, #32]
	strne	r2, [r0, #4]
	cmp	r3, #0
	mov	r4, r0
	str	r1, [r0, #8]
	sub	sp, sp, #20
	bne	.L108
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L108:
	ldr	r5, .L109+4
	ldr	r6, [r0, #20]
	ldr	r2, [r5, #24]
	ldr	lr, [r0, #24]
	ldr	ip, [r0, #4]
	str	r1, [sp]
	sub	r2, r2, #3
	ldr	r3, [r5, #20]
	ldm	r5, {r0, r1}
	str	r6, [sp, #12]
	stmib	sp, {ip, lr}
	ldr	r6, .L109+8
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L92
	ldr	r3, [r5, #28]
	cmp	r3, #0
	bne	.L92
	mov	r1, #67108864
	mov	ip, #22272
	ldr	r0, .L109+12
	ldr	r2, [r0]
	str	r3, [r4, #32]
	str	r3, [r4, #36]
	ldr	r3, .L109+16
	sub	r2, r2, #1
	str	r2, [r0]
	strh	ip, [r1, #104]	@ movhi
	strh	r3, [r1, #108]	@ movhi
.L92:
	add	r7, r4, #20
	ldm	r7, {r7, ip}
	ldr	r5, .L109+20
	ldr	lr, [r4, #4]
	ldr	r3, [r5, #20]
	ldr	r2, [r5, #24]
	ldm	r5, {r0, r1}
	str	r7, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L93
	ldr	r3, [r5, #28]
	cmp	r3, #0
	beq	.L93
	mov	r3, #0
	mov	r2, #67108864
	mov	r0, #22272
	ldr	r1, .L109+24
	str	r3, [r4, #32]
	str	r3, [r4, #36]
	str	r3, [r5, #28]
	strh	r0, [r2, #104]	@ movhi
	strh	r1, [r2, #108]	@ movhi
.L93:
	ldr	r3, [r4, #4]
	cmp	r3, #159
	movgt	r3, #0
	strgt	r3, [r4, #32]
	strgt	r3, [r4, #36]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L110:
	.align	2
.L109:
	.word	time
	.word	player
	.word	collision
	.word	lives
	.word	-31982
	.word	bullet
	.word	-31389
	.size	updateUGAs, .-updateUGAs
	.align	2
	.global	updateBooks
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBooks, %function
updateBooks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L125
	ldr	r2, [r3]
	tst	r2, #3
	moveq	r3, #1
	movne	r3, #0
	cmp	r2, #0
	moveq	r3, #0
	cmp	r3, #0
	push	{r4, r5, r6, lr}
	ldm	r0, {r1, r2}
	ldrne	r3, [r0, #16]
	str	r2, [r0, #12]
	addne	r2, r3, r2
	ldr	r3, [r0, #32]
	strne	r2, [r0, #4]
	cmp	r3, #0
	mov	r4, r0
	str	r1, [r0, #8]
	sub	sp, sp, #16
	bne	.L124
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L124:
	ldr	r5, .L125+4
	ldr	r6, [r0, #20]
	ldr	lr, [r0, #24]
	ldr	ip, [r0, #4]
	ldr	r2, [r5, #24]
	str	r1, [sp]
	str	r6, [sp, #12]
	stmib	sp, {ip, lr}
	ldr	r3, [r5, #20]
	ldm	r5, {r0, r1}
	ldr	r6, .L125+8
	sub	r2, r2, #3
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L115
	ldr	r3, [r5, #28]
	cmp	r3, #0
	bne	.L115
	mov	r1, #67108864
	mov	ip, #22272
	ldr	r0, .L125+12
	ldr	r2, [r0]
	str	r3, [r4, #32]
	str	r3, [r4, #36]
	ldr	r3, .L125+16
	add	r2, r2, #1
	str	r2, [r0]
	strh	ip, [r1, #104]	@ movhi
	strh	r3, [r1, #108]	@ movhi
.L115:
	ldr	r3, [r4, #4]
	cmp	r3, #159
	movgt	r3, #0
	strgt	r3, [r4, #32]
	strgt	r3, [r4, #36]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L126:
	.align	2
.L125:
	.word	time
	.word	player
	.word	collision
	.word	score
	.word	-30878
	.size	updateBooks, .-updateBooks
	.align	2
	.global	newUGA
	.syntax unified
	.arm
	.fpu softvfp
	.type	newUGA, %function
newUGA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L134
	mov	r3, #0
	mov	r2, r5
.L130:
	ldr	r1, [r2, #32]
	cmp	r1, #0
	beq	.L133
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #40
	bne	.L130
.L129:
	mov	r2, #1
	ldr	r3, .L134+4
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L133:
	mov	r0, #1
	add	r3, r3, r3, lsl #2
	add	r6, r5, r3, lsl #3
	ldr	r2, .L134+8
	str	r1, [r6, #36]
	str	r1, [r6, #4]
	str	r0, [r6, #32]
	lsl	r4, r3, #3
	mov	lr, pc
	bx	r2
	mov	r1, #252
	ldr	r2, .L134+12
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #7
	add	r2, r3, r3, lsl #1
	rsb	r3, r3, r2, lsl #6
	sub	r0, r0, r3
	add	r0, r0, #30
	str	r0, [r5, r4]
	str	r1, [r6, #28]
	b	.L129
.L135:
	.align	2
.L134:
	.word	ugas
	.word	spawned
	.word	rand
	.word	-1416664605
	.size	newUGA, .-newUGA
	.align	2
	.global	newBook
	.syntax unified
	.arm
	.fpu softvfp
	.type	newBook, %function
newBook:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L143
	mov	r3, #0
	mov	r2, r5
.L139:
	ldr	r1, [r2, #32]
	cmp	r1, #0
	beq	.L142
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #40
	bne	.L139
.L138:
	mov	r2, #1
	ldr	r3, .L143+4
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L142:
	mov	r0, #1
	add	r3, r3, r3, lsl #2
	add	r6, r5, r3, lsl #3
	ldr	r2, .L143+8
	str	r1, [r6, #36]
	str	r1, [r6, #4]
	str	r0, [r6, #32]
	lsl	r4, r3, #3
	mov	lr, pc
	bx	r2
	mov	r1, #253
	ldr	r2, .L143+12
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #7
	add	r2, r3, r3, lsl #1
	rsb	r3, r3, r2, lsl #6
	sub	r0, r0, r3
	add	r0, r0, #30
	str	r0, [r5, r4]
	str	r1, [r6, #28]
	b	.L138
.L144:
	.align	2
.L143:
	.word	books
	.word	spawned
	.word	rand
	.word	-1416664605
	.size	newBook, .-newBook
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	"lives = %d\000"
	.text
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	bl	updatePlayer
	ldr	r4, .L156
	add	r5, r4, #400
.L146:
	mov	r0, r4
	add	r4, r4, #40
	bl	updateUGAs
	cmp	r5, r4
	bne	.L146
	ldr	r4, .L156+4
	add	r5, r4, #400
.L147:
	mov	r0, r4
	add	r4, r4, #40
	bl	updateBooks
	cmp	r5, r4
	bne	.L147
	bl	updateBullet
	ldr	r3, .L156+8
	ldr	r4, .L156+12
	ldr	r1, [r3]
	ldr	r0, .L156+16
	ldr	r3, .L156+20
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L148
	ldr	r5, .L156+24
	ldr	r1, .L156+28
	ldr	r2, .L156+32
	ldr	r3, [r5]
	mla	r2, r3, r2, r1
	add	r1, r1, r1
	cmp	r2, r1
	bls	.L154
.L149:
	add	r3, r3, r3, lsl #4
	ldr	r2, .L156+36
	add	r3, r3, r3, lsl #8
	ldr	r1, .L156+40
	add	r3, r3, r3, lsl #16
	sub	r2, r2, r3
	cmp	r1, r2, ror #2
	bcs	.L155
	pop	{r4, r5, r6, lr}
	bx	lr
.L148:
	mov	r3, #0
	str	r3, [r4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L155:
	pop	{r4, r5, r6, lr}
	b	newBook
.L154:
	bl	newUGA
	bl	newUGA
	bl	newUGA
	mov	r2, #1
	ldr	r3, [r5]
	str	r2, [r4]
	b	.L149
.L157:
	.align	2
.L156:
	.word	ugas
	.word	books
	.word	lives
	.word	spawned
	.word	.LC1
	.word	mgba_printf
	.word	time
	.word	22605091
	.word	-723362913
	.word	143165576
	.word	71582788
	.size	updateGame, .-updateGame
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
	push	{r4, r5, lr}
	ldr	ip, .L165
	ldr	r4, .L165+4
	sub	sp, sp, #12
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #24]
	ldm	r4, {r0, r1}
	str	ip, [sp]
	ldr	r5, .L165+8
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L164
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L164:
	ldr	r2, .L165+12
	ldr	r3, [r4, #20]
	str	r2, [sp]
	ldm	r4, {r0, r1}
	ldr	r2, [r4, #24]
	mov	lr, pc
	bx	r5
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L166:
	.align	2
.L165:
	.word	dorothyBitmap
	.word	player
	.word	drawImage4
	.word	dashBitmap
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L185
	mov	r0, #254
	ldr	r3, .L185+4
	sub	sp, sp, #12
	mov	lr, pc
	bx	r3
	ldr	r7, .L185+8
	bl	drawPlayer
	ldr	r6, .L185+12
	add	r5, r4, #400
	b	.L169
.L168:
	add	r4, r4, #40
	cmp	r4, r5
	beq	.L182
.L169:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L168
	str	r7, [sp]
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #24]
	ldm	r4, {r0, r1}
	add	r4, r4, #40
	mov	lr, pc
	bx	r6
	cmp	r4, r5
	bne	.L169
.L182:
	ldr	r4, .L185+16
	ldr	r7, .L185+20
	ldr	r6, .L185+12
	add	r5, r4, #400
	b	.L171
.L170:
	add	r4, r4, #40
	cmp	r4, r5
	beq	.L183
.L171:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L170
	str	r7, [sp]
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #24]
	ldm	r4, {r0, r1}
	add	r4, r4, #40
	mov	lr, pc
	bx	r6
	cmp	r4, r5
	bne	.L171
.L183:
	ldr	r3, .L185+24
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L184
	str	r2, [r3, #16]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L184:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	drawBullet.part.0
.L186:
	.align	2
.L185:
	.word	ugas
	.word	fillScreen4
	.word	ugaBitmap
	.word	drawImage4
	.word	books
	.word	bookBitmap
	.word	bullet
	.size	drawGame, .-drawGame
	.align	2
	.global	drawBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBullet, %function
drawBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L190
	ldr	r2, [r3, #28]
	cmp	r2, #0
	bne	.L189
	str	r2, [r3, #16]
	bx	lr
.L189:
	b	drawBullet.part.0
.L191:
	.align	2
.L190:
	.word	bullet
	.size	drawBullet, .-drawBullet
	.align	2
	.global	drawUGAs
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawUGAs, %function
drawUGAs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #32]
	cmp	r3, #0
	bxeq	lr
	push	{r4, lr}
	ldr	r2, .L201
	sub	sp, sp, #8
	ldr	r3, [r0, #20]
	str	r2, [sp]
	ldr	r4, .L201+4
	ldr	r2, [r0, #24]
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L202:
	.align	2
.L201:
	.word	ugaBitmap
	.word	drawImage4
	.size	drawUGAs, .-drawUGAs
	.align	2
	.global	drawBooks
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBooks, %function
drawBooks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #32]
	cmp	r3, #0
	bxeq	lr
	push	{r4, lr}
	ldr	r2, .L212
	sub	sp, sp, #8
	ldr	r3, [r0, #20]
	str	r2, [sp]
	ldr	r4, .L212+4
	ldr	r2, [r0, #24]
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L213:
	.align	2
.L212:
	.word	bookBitmap
	.word	drawImage4
	.size	drawBooks, .-drawBooks
	.comm	bgColor,2,2
	.comm	spawned,4,4
	.comm	time,4,4
	.comm	lives,4,4
	.comm	score,4,4
	.comm	books,400,4
	.comm	ugas,400,4
	.comm	bullet,40,4
	.comm	player,40,4
	.comm	NOTES,2,2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
