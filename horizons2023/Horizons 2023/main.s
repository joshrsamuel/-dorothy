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
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	"Dorothy's\000"
	.align	2
.LC2:
	.ascii	"Book Bonanza!\000"
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
	push	{r4, r5, lr}
	mov	r3, #512
	sub	sp, sp, #12
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4
	ldr	r4, .L4+4
	mov	lr, pc
	bx	r4
	mvn	lr, #32768
	mov	ip, #31
	mov	r4, #0
	mov	r0, #992
	ldr	r3, .L4+8
	ldr	r1, .L4+12
	ldr	r2, .L4+16
	strh	lr, [r3, #246]	@ movhi
	strh	ip, [r3, #248]	@ movhi
	strh	r4, [r3, #244]	@ movhi
	strh	r0, [r3, #250]	@ movhi
	strh	r1, [r3, #252]	@ movhi
	strh	r2, [r3, #254]	@ movhi
	ldr	r0, .L4+20
	ldr	r3, .L4+24
	mov	lr, pc
	bx	r3
	mov	r2, #254
	mov	r3, #30
	str	r2, [sp]
	mov	r1, #65
	mov	r2, #87
	mov	r0, #75
	ldr	r5, .L4+28
	mov	lr, pc
	bx	r5
	ldr	r5, .L4+32
	mov	r3, #250
	mov	r1, #70
	mov	r0, #92
	ldr	r2, .L4+36
	mov	lr, pc
	bx	r5
	mov	r1, #80
	ldr	r2, .L4+40
	mov	r0, r1
	mov	r3, #250
	mov	lr, pc
	bx	r5
	ldr	r3, .L4+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+48
	mov	lr, pc
	bx	r3
	ldr	r2, .L4+52
	ldr	r3, .L4+56
	strb	r4, [r2]
	str	r4, [r3]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	startPal
	.word	DMANow
	.word	83886336
	.word	24414
	.word	15855
	.word	startBitmap
	.word	drawFullscreenImage4
	.word	drawRect4
	.word	drawString4
	.word	.LC1
	.word	.LC2
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.word	rSeed
	.size	goToStart, .-goToStart
	.section	.rodata.str1.4
	.align	2
.LC3:
	.ascii	"Debugging Initialized\000"
	.text
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
	push	{r4, r5, r6, lr}
	mov	r4, #67108864
	ldr	r2, .L8
	ldr	r3, .L8+4
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r0, .L8+8
	ldr	r3, .L8+12
	mov	lr, pc
	bx	r3
	mov	lr, #0
	mov	ip, #254
	mov	r1, #128
	mvn	r2, #170
	mov	r3, #2
	ldr	r5, .L8+16
	ldr	r0, .L8+20
	ldrh	r5, [r5, #48]
	strh	r5, [r0]	@ movhi
	ldr	r0, .L8+24
	strh	lr, [r0]	@ movhi
	ldr	r0, .L8+28
	strh	ip, [r0]	@ movhi
	strh	r1, [r4, #132]	@ movhi
	strh	r2, [r4, #128]	@ movhi
	strh	r3, [r4, #130]	@ movhi
	pop	{r4, r5, r6, lr}
	b	goToStart
.L9:
	.align	2
.L8:
	.word	1044
	.word	mgba_open
	.word	.LC3
	.word	mgba_printf
	.word	67109120
	.word	buttons
	.word	oldButtons
	.word	bgColor
	.size	initialize, .-initialize
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L12
	ldr	r4, .L12+4
	mov	lr, pc
	bx	r4
	mov	r1, #67108864
	mov	ip, #22272
	mov	r0, #1
	ldr	r2, .L12+8
	ldr	r3, .L12+12
	ldrh	lr, [r2]
	strh	ip, [r1, #104]	@ movhi
	ldrh	ip, [r2, #2]
	strh	lr, [r3, #244]	@ movhi
	ldrh	lr, [r2, #4]
	strh	ip, [r3, #246]	@ movhi
	ldrh	ip, [r2, #6]
	strh	lr, [r3, #248]	@ movhi
	ldrh	r4, [r2, #8]
	ldrh	lr, [r2, #10]
	strh	ip, [r3, #250]	@ movhi
	ldr	r2, .L12+16
	ldr	ip, .L12+20
	strh	r4, [r3, #252]	@ movhi
	strh	lr, [r3, #254]	@ movhi
	strh	ip, [r1, #108]	@ movhi
	strb	r0, [r2]
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	dorothyPal
	.word	DMANow
	.word	.LANCHOR0
	.word	83886336
	.word	state
	.word	-31018
	.size	goToGame, .-goToGame
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
	ldr	r4, .L21
	ldr	r3, [r4]
	ldr	r2, .L21+4
	add	r3, r3, #1
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldr	r3, .L21+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L14
	ldr	r3, .L21+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L20
.L14:
	pop	{r4, lr}
	bx	lr
.L20:
	ldr	r0, [r4]
	ldr	r3, .L21+16
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L21+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L22:
	.align	2
.L21:
	.word	rSeed
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	srand
	.word	initGame
	.size	start, .-start
	.align	2
	.global	goToQ1
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToQ1, %function
goToQ1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #83886080
	ldr	r1, .L25
	mov	r3, #512
	mov	r0, #3
	ldr	r4, .L25+4
	mov	lr, pc
	bx	r4
	ldr	r0, .L25+8
	ldr	r3, .L25+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L25+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L25+20
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L25+24
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L26:
	.align	2
.L25:
	.word	q1Pal
	.word	DMANow
	.word	q1Bitmap
	.word	drawFullscreenImage4
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToQ1, .-goToQ1
	.align	2
	.global	Q1
	.syntax unified
	.arm
	.fpu softvfp
	.type	Q1, %function
Q1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L39
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L39+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L28
	ldr	r2, .L39+8
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L37
.L28:
	tst	r3, #2
	beq	.L27
	ldr	r3, .L39+8
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L38
.L27:
	pop	{r4, lr}
	bx	lr
.L37:
	ldr	r2, .L39+12
	ldr	r3, [r2]
	pop	{r4, lr}
	sub	r3, r3, #10
	str	r3, [r2]
	b	goToGame
.L38:
	mov	r0, #1
	ldr	r2, .L39+12
	ldr	r3, [r2]
	ldr	r1, .L39+16
	add	r3, r3, r0
	pop	{r4, lr}
	str	r3, [r2]
	str	r0, [r1]
	b	goToGame
.L40:
	.align	2
.L39:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	score
	.word	q1c
	.size	Q1, .-Q1
	.align	2
	.global	goToQ2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToQ2, %function
goToQ2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #83886080
	ldr	r1, .L43
	mov	r3, #512
	mov	r0, #3
	ldr	r4, .L43+4
	mov	lr, pc
	bx	r4
	ldr	r0, .L43+8
	ldr	r3, .L43+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L43+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L43+20
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L43+24
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L44:
	.align	2
.L43:
	.word	q2Pal
	.word	DMANow
	.word	q2Bitmap
	.word	drawFullscreenImage4
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToQ2, .-goToQ2
	.align	2
	.global	Q2
	.syntax unified
	.arm
	.fpu softvfp
	.type	Q2, %function
Q2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L57
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L57+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L46
	ldr	r2, .L57+8
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L55
.L46:
	tst	r3, #2
	beq	.L45
	ldr	r3, .L57+8
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L56
.L45:
	pop	{r4, lr}
	bx	lr
.L55:
	ldr	r2, .L57+12
	ldr	r3, [r2]
	pop	{r4, lr}
	sub	r3, r3, #10
	str	r3, [r2]
	b	goToGame
.L56:
	mov	r0, #1
	ldr	r2, .L57+12
	ldr	r3, [r2]
	ldr	r1, .L57+16
	add	r3, r3, r0
	pop	{r4, lr}
	str	r3, [r2]
	str	r0, [r1]
	b	goToGame
.L58:
	.align	2
.L57:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	score
	.word	q2c
	.size	Q2, .-Q2
	.align	2
	.global	goToQ3
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToQ3, %function
goToQ3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #83886080
	ldr	r1, .L61
	mov	r3, #512
	mov	r0, #3
	ldr	r4, .L61+4
	mov	lr, pc
	bx	r4
	ldr	r0, .L61+8
	ldr	r3, .L61+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L61+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L61+20
	mov	lr, pc
	bx	r3
	mov	r2, #7
	ldr	r3, .L61+24
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L62:
	.align	2
.L61:
	.word	q3Pal
	.word	DMANow
	.word	q3Bitmap
	.word	drawFullscreenImage4
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToQ3, .-goToQ3
	.align	2
	.global	Q3
	.syntax unified
	.arm
	.fpu softvfp
	.type	Q3, %function
Q3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L75
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L75+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L64
	ldr	r2, .L75+8
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L73
.L64:
	tst	r3, #2
	beq	.L63
	ldr	r3, .L75+8
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L74
.L63:
	pop	{r4, lr}
	bx	lr
.L73:
	mov	r0, #1
	ldr	r2, .L75+12
	ldr	r3, [r2]
	ldr	r1, .L75+16
	add	r3, r3, r0
	pop	{r4, lr}
	str	r3, [r2]
	str	r0, [r1]
	b	goToGame
.L74:
	ldr	r2, .L75+12
	ldr	r3, [r2]
	pop	{r4, lr}
	sub	r3, r3, #10
	str	r3, [r2]
	b	goToGame
.L76:
	.align	2
.L75:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	score
	.word	q3c
	.size	Q3, .-Q3
	.align	2
	.global	goToQ4
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToQ4, %function
goToQ4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #83886080
	ldr	r1, .L79
	mov	r3, #512
	mov	r0, #3
	ldr	r4, .L79+4
	mov	lr, pc
	bx	r4
	ldr	r0, .L79+8
	ldr	r3, .L79+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L79+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L79+20
	mov	lr, pc
	bx	r3
	mov	r2, #8
	ldr	r3, .L79+24
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L80:
	.align	2
.L79:
	.word	q4Pal
	.word	DMANow
	.word	q4Bitmap
	.word	drawFullscreenImage4
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToQ4, .-goToQ4
	.section	.rodata.str1.4
	.align	2
.LC4:
	.ascii	"Pause\000"
	.text
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
	ldr	r2, .L83
	mov	r1, #80
	mov	r0, #105
	mov	r3, #250
	ldr	r4, .L83+4
	mov	lr, pc
	bx	r4
	ldr	r3, .L83+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L83+12
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L83+16
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L84:
	.align	2
.L83:
	.word	.LC4
	.word	drawString4
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToPause, .-goToPause
	.section	.rodata.str1.4
	.align	2
.LC5:
	.ascii	"You Won!\000"
	.align	2
.LC6:
	.ascii	"score:\000"
	.align	2
.LC7:
	.ascii	"%d\000"
	.text
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
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L87
	ldr	r4, .L87+4
	mov	lr, pc
	bx	r4
	ldr	r2, .L87+8
	ldr	r3, .L87+12
	ldrh	lr, [r2, #2]
	ldrh	ip, [r2, #4]
	ldrh	r4, [r2]
	ldrh	r0, [r2, #6]
	ldrh	r1, [r2, #8]
	ldrh	r2, [r2, #10]
	strh	lr, [r3, #246]	@ movhi
	strh	ip, [r3, #248]	@ movhi
	strh	r4, [r3, #244]	@ movhi
	strh	r0, [r3, #250]	@ movhi
	strh	r1, [r3, #252]	@ movhi
	strh	r2, [r3, #254]	@ movhi
	ldr	r0, .L87+16
	ldr	r3, .L87+20
	mov	lr, pc
	bx	r3
	ldr	r4, .L87+24
	mov	r3, #252
	mov	r1, #118
	mov	r0, #95
	ldr	r2, .L87+28
	mov	lr, pc
	bx	r4
	mov	r3, #252
	mov	r1, #133
	mov	r0, #90
	ldr	r2, .L87+32
	mov	lr, pc
	bx	r4
	ldr	r5, .L87+36
	ldr	r3, .L87+40
	mov	r0, r5
	ldr	r2, [r3]
	ldr	r1, .L87+44
	ldr	r3, .L87+48
	mov	lr, pc
	bx	r3
	mov	r2, r5
	mov	r0, #130
	mov	r3, #252
	mov	r1, #133
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r2, #22272
	ldr	r1, .L87+52
	strh	r2, [r3, #104]	@ movhi
	ldr	r2, .L87+56
	strh	r1, [r3, #108]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L87+60
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L87+64
	strb	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L88:
	.align	2
.L87:
	.word	winPal
	.word	DMANow
	.word	.LANCHOR0
	.word	83886336
	.word	winBitmap
	.word	drawFullscreenImage4
	.word	drawString4
	.word	.LC5
	.word	.LC6
	.word	buffer
	.word	score
	.word	.LC7
	.word	sprintf
	.word	-30845
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	Q4
	.syntax unified
	.arm
	.fpu softvfp
	.type	Q4, %function
Q4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L101
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L101+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L90
	ldr	r2, .L101+8
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L99
.L90:
	tst	r3, #2
	beq	.L89
	ldr	r3, .L101+8
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L100
.L89:
	pop	{r4, lr}
	bx	lr
.L99:
	ldr	r2, .L101+12
	ldr	r3, [r2]
	pop	{r4, lr}
	sub	r3, r3, #10
	str	r3, [r2]
	b	goToGame
.L100:
	mov	r0, #1
	ldr	r2, .L101+12
	ldr	r3, [r2]
	ldr	r1, .L101+16
	add	r3, r3, r0
	pop	{r4, lr}
	str	r3, [r2]
	str	r0, [r1]
	b	goToWin
.L102:
	.align	2
.L101:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	score
	.word	q4c
	.size	Q4, .-Q4
	.section	.rodata.str1.4
	.align	2
.LC8:
	.ascii	"Game Over\000"
	.text
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
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L105
	ldr	r4, .L105+4
	mov	lr, pc
	bx	r4
	ldr	r2, .L105+8
	ldr	r3, .L105+12
	ldrh	r1, [r2]
	ldrh	lr, [r2, #2]
	ldrh	ip, [r2, #4]
	ldrh	r0, [r2, #6]
	strh	r1, [r3, #244]	@ movhi
	ldrh	r1, [r2, #8]
	ldrh	r2, [r2, #10]
	strh	lr, [r3, #246]	@ movhi
	strh	ip, [r3, #248]	@ movhi
	strh	r0, [r3, #250]	@ movhi
	strh	r1, [r3, #252]	@ movhi
	strh	r2, [r3, #254]	@ movhi
	ldr	r0, .L105+16
	ldr	r3, .L105+20
	mov	lr, pc
	bx	r3
	ldr	r4, .L105+24
	mov	r0, #90
	mov	r3, #252
	mov	r1, #5
	ldr	r2, .L105+28
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r2, #22272
	ldr	r1, .L105+32
	strh	r2, [r3, #104]	@ movhi
	ldr	r2, .L105+36
	strh	r1, [r3, #108]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L105+40
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L105+44
	strb	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L106:
	.align	2
.L105:
	.word	losePal
	.word	DMANow
	.word	.LANCHOR0
	.word	83886336
	.word	loseBitmap
	.word	drawFullscreenImage4
	.word	drawString4
	.word	.LC8
	.word	-16340
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	reset
	.syntax unified
	.arm
	.fpu softvfp
	.type	reset, %function
reset:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #250
	ldr	r3, .L109
	mov	lr, pc
	bx	r3
	ldr	r3, .L109+4
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r2, .L109+8
	ldr	lr, .L109+12
	str	r3, [r2]
	ldr	ip, .L109+16
	ldr	r0, .L109+20
	ldr	r1, .L109+24
	ldr	r2, .L109+28
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L110:
	.align	2
.L109:
	.word	fillScreen4
	.word	waitForVBlank
	.word	score
	.word	time
	.word	q1c
	.word	q2c
	.word	q3c
	.word	q4c
	.size	reset, .-reset
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
	ldr	r3, .L123
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L123+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L112
	ldr	r2, .L123+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L121
.L112:
	tst	r3, #4
	beq	.L111
	ldr	r3, .L123+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L122
.L111:
	pop	{r4, lr}
	bx	lr
.L121:
	pop	{r4, lr}
	b	goToGame
.L122:
	bl	reset
	pop	{r4, lr}
	b	goToStart
.L124:
	.align	2
.L123:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	pause, .-pause
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
	ldr	r3, .L132
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L132+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L125
	ldr	r3, .L132+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L131
.L125:
	pop	{r4, lr}
	bx	lr
.L131:
	bl	reset
	pop	{r4, lr}
	b	goToStart
.L133:
	.align	2
.L132:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	win, .-win
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
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.align	2
	.global	updateHealth
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateHealth, %function
updateHealth:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L144
	ldr	r4, [r3]
	cmp	r4, #2
	sub	sp, sp, #12
	beq	.L136
	cmp	r4, #3
	beq	.L137
	cmp	r4, #1
	beq	.L143
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	goToLose
.L136:
	mov	r6, #252
	ldr	r5, .L144+4
	mov	r2, r4
	mov	r3, #1
	mov	r1, #5
	mov	r0, #8
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r2, r4
	mov	r3, #1
	mov	r1, #5
	mov	r0, #11
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r2, #7
	mov	r3, #1
	mov	r0, r2
	mov	r1, #6
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r2, #5
	mov	r1, #7
	mov	r0, #8
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r2, #3
	mov	r1, #8
	mov	r0, #9
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r1, #9
	mov	r2, r3
	mov	r0, #10
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r2, r4
	mov	r3, #1
	mov	r1, #5
	mov	r0, #16
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r2, r4
	mov	r3, #1
	mov	r1, #5
	mov	r0, #19
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r2, #7
	mov	r1, #6
	mov	r0, #15
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r2, #5
	mov	r1, #7
	mov	r0, #16
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r2, #3
	mov	r1, #8
	mov	r0, #17
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	ldr	r7, .L144+8
	mov	r2, r3
	mov	r1, #9
	mov	r0, #18
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	ldrb	r2, [r7]	@ zero_extendqisi2
	mov	r3, #1
	str	r2, [sp]
	mov	r1, #5
	mov	r2, r4
	mov	r0, #24
	mov	lr, pc
	bx	r5
	ldrb	r3, [r7]	@ zero_extendqisi2
	mov	r2, r4
	str	r3, [sp]
	mov	r1, #5
	mov	r3, #1
	mov	r0, #27
	mov	lr, pc
	bx	r5
	ldrb	r2, [r7]	@ zero_extendqisi2
	mov	r3, #1
	str	r2, [sp]
	mov	r1, #6
	mov	r2, #7
	mov	r0, #23
	mov	lr, pc
	bx	r5
	ldrb	r2, [r7]	@ zero_extendqisi2
	mov	r3, #1
	str	r2, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r0, #24
	mov	lr, pc
	bx	r5
	ldrb	r2, [r7]	@ zero_extendqisi2
	mov	r3, #1
	str	r2, [sp]
	mov	r1, #8
	mov	r2, #3
	mov	r0, #25
	mov	lr, pc
	bx	r5
	mov	r3, #1
	ldrb	r1, [r7]	@ zero_extendqisi2
	mov	r2, r3
	str	r1, [sp]
	mov	r0, #26
	mov	r1, #9
	mov	lr, pc
	bx	r5
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L143:
	mov	r7, #252
	ldr	r5, .L144+4
	mov	r3, r4
	mov	r2, #2
	mov	r1, #5
	mov	r0, #8
	str	r7, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, r4
	mov	r2, #2
	mov	r1, #5
	mov	r0, #11
	str	r7, [sp]
	mov	lr, pc
	bx	r5
	mov	r2, #7
	mov	r3, r4
	mov	r0, r2
	mov	r1, #6
	str	r7, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, r4
	mov	r2, #5
	mov	r1, #7
	mov	r0, #8
	str	r7, [sp]
	ldr	r6, .L144+8
	mov	lr, pc
	bx	r5
	mov	r3, r4
	mov	r2, #3
	mov	r1, #8
	mov	r0, #9
	str	r7, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, r4
	mov	r2, r4
	mov	r1, #9
	mov	r0, #10
	str	r7, [sp]
	mov	lr, pc
	bx	r5
	ldrb	r2, [r6]	@ zero_extendqisi2
	mov	r3, r4
	str	r2, [sp]
	mov	r1, #5
	mov	r2, #2
	mov	r0, #16
	mov	lr, pc
	bx	r5
	ldrb	r2, [r6]	@ zero_extendqisi2
	mov	r3, r4
	str	r2, [sp]
	mov	r1, #5
	mov	r2, #2
	mov	r0, #19
	mov	lr, pc
	bx	r5
	ldrb	r2, [r6]	@ zero_extendqisi2
	mov	r3, r4
	str	r2, [sp]
	mov	r1, #6
	mov	r2, #7
	mov	r0, #15
	mov	lr, pc
	bx	r5
	ldrb	r2, [r6]	@ zero_extendqisi2
	mov	r3, r4
	str	r2, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r0, #16
	mov	lr, pc
	bx	r5
	ldrb	r2, [r6]	@ zero_extendqisi2
	mov	r3, r4
	str	r2, [sp]
	mov	r1, #8
	mov	r2, #3
	mov	r0, #17
	mov	lr, pc
	bx	r5
	ldrb	r2, [r6]	@ zero_extendqisi2
	mov	r3, r4
	str	r2, [sp]
	mov	r1, #9
	mov	r2, r4
	mov	r0, #18
	mov	lr, pc
	bx	r5
	ldrb	r2, [r6]	@ zero_extendqisi2
	mov	r3, r4
	str	r2, [sp]
	mov	r1, #5
	mov	r2, #2
	mov	r0, #24
	mov	lr, pc
	bx	r5
	ldrb	r2, [r6]	@ zero_extendqisi2
	mov	r3, r4
	str	r2, [sp]
	mov	r1, #5
	mov	r2, #2
	mov	r0, #27
	mov	lr, pc
	bx	r5
	ldrb	r2, [r6]	@ zero_extendqisi2
	mov	r3, r4
	str	r2, [sp]
	mov	r1, #6
	mov	r2, #7
	mov	r0, #23
	mov	lr, pc
	bx	r5
	ldrb	r2, [r6]	@ zero_extendqisi2
	mov	r3, r4
	str	r2, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r0, #24
	mov	lr, pc
	bx	r5
	ldrb	r2, [r6]	@ zero_extendqisi2
	mov	r3, r4
	str	r2, [sp]
	mov	r1, #8
	mov	r2, #3
	mov	r0, #25
	mov	lr, pc
	bx	r5
	ldrb	r2, [r6]	@ zero_extendqisi2
	mov	r3, r4
	str	r2, [sp]
	mov	r1, #9
	mov	r2, r4
	mov	r0, #26
	mov	lr, pc
	bx	r5
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L137:
	mov	r6, #252
	ldr	r5, .L144+4
	mov	r3, #1
	mov	r2, #2
	mov	r1, #5
	mov	r0, #8
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r2, #2
	mov	r1, #5
	mov	r0, #11
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r2, #7
	mov	r3, #1
	mov	r0, r2
	mov	r1, #6
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r2, #5
	mov	r1, #7
	mov	r0, #8
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r2, r4
	mov	r3, #1
	mov	r1, #8
	mov	r0, #9
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r1, #9
	mov	r2, r3
	mov	r0, #10
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r2, #2
	mov	r1, #5
	mov	r0, #16
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r2, #2
	mov	r1, #5
	mov	r0, #19
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r2, #7
	mov	r1, #6
	mov	r0, #15
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r2, #5
	mov	r1, #7
	mov	r0, #16
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r2, r4
	mov	r3, #1
	mov	r1, #8
	mov	r0, #17
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r1, #9
	mov	r2, r3
	mov	r0, #18
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r2, #2
	mov	r1, #5
	mov	r0, #24
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r2, #2
	mov	r1, #5
	mov	r0, #27
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r2, #7
	mov	r1, #6
	mov	r0, #23
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r2, #5
	mov	r1, #7
	mov	r0, #24
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r2, r4
	mov	r3, #1
	mov	r1, #8
	mov	r0, #25
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	mov	r1, #9
	mov	r2, r3
	mov	r0, #26
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L145:
	.align	2
.L144:
	.word	lives
	.word	drawRect4
	.word	bgColor
	.size	updateHealth, .-updateHealth
	.section	.rodata.str1.4
	.align	2
.LC9:
	.ascii	"books:\000"
	.text
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L174
	mov	lr, pc
	bx	r3
	ldr	r4, .L174+4
	ldr	r3, .L174+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L174+12
	mov	r3, #250
	mov	r1, #1
	mov	r0, #180
	ldr	r2, .L174+16
	mov	lr, pc
	bx	r5
	ldr	r2, [r4]
	ldr	r1, .L174+20
	ldr	r3, .L174+24
	ldr	r0, .L174+28
	mov	lr, pc
	bx	r3
	mov	r1, #1
	mov	r0, #220
	ldr	r2, .L174+28
	mov	r3, #250
	mov	lr, pc
	bx	r5
	bl	updateHealth
	ldr	r3, .L174+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L174+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L174+40
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L147
	ldr	r3, .L174+44
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L168
.L147:
	ldr	r3, .L174+48
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L169
.L148:
	ldr	r3, [r4]
	cmp	r3, #10
	beq	.L170
.L149:
	cmp	r3, #20
	beq	.L171
	cmp	r3, #30
	bne	.L152
.L173:
	ldr	r3, .L174+52
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L172
.L154:
	ldr	r2, .L174+56
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L171:
	ldr	r3, .L174+60
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L154
	bl	goToQ2
	ldr	r3, [r4]
	cmp	r3, #30
	beq	.L173
	b	.L152
.L172:
	bl	goToQ3
	ldr	r3, [r4]
.L152:
	cmp	r3, #40
	bne	.L154
	ldr	r3, .L174+64
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L154
	bl	goToQ4
	b	.L154
.L170:
	ldr	r3, .L174+68
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L154
	bl	goToQ1
	ldr	r3, [r4]
	b	.L149
.L169:
	bl	goToLose
	b	.L148
.L168:
	bl	goToPause
	b	.L147
.L175:
	.align	2
.L174:
	.word	updateGame
	.word	score
	.word	drawGame
	.word	drawString4
	.word	.LC9
	.word	.LC7
	.word	sprintf
	.word	buffer
	.word	waitForVBlank
	.word	flipPage
	.word	oldButtons
	.word	buttons
	.word	lives
	.word	q3c
	.word	time
	.word	q2c
	.word	q4c
	.word	q1c
	.size	game, .-game
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
	ldr	r3, .L191
	mov	lr, pc
	bx	r3
	ldr	r6, .L191+4
	ldr	r8, .L191+8
	ldr	r5, .L191+12
	ldr	fp, .L191+16
	ldr	r10, .L191+20
	ldr	r9, .L191+24
	ldr	r7, .L191+28
	ldr	r4, .L191+32
.L177:
	ldrb	r2, [r6]	@ zero_extendqisi2
	ldrh	r3, [r8]
.L178:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #8
	ldrls	pc, [pc, r2, asl #2]
	b	.L178
.L180:
	.word	.L187
	.word	.L186
	.word	.L185
	.word	.L184
	.word	.L184
	.word	.L183
	.word	.L182
	.word	.L181
	.word	.L179
.L184:
	mov	lr, pc
	bx	r7
	b	.L177
.L185:
	ldr	r3, .L191+36
	mov	lr, pc
	bx	r3
	b	.L177
.L186:
	mov	lr, pc
	bx	r10
	b	.L177
.L187:
	mov	lr, pc
	bx	fp
	b	.L177
.L179:
	ldr	r3, .L191+40
	mov	lr, pc
	bx	r3
	b	.L177
.L181:
	ldr	r3, .L191+44
	mov	lr, pc
	bx	r3
	b	.L177
.L182:
	ldr	r3, .L191+48
	mov	lr, pc
	bx	r3
	b	.L177
.L183:
	mov	lr, pc
	bx	r9
	b	.L177
.L192:
	.align	2
.L191:
	.word	initialize
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	game
	.word	Q1
	.word	win
	.word	67109120
	.word	pause
	.word	Q4
	.word	Q3
	.word	Q2
	.size	main, .-main
	.global	colors
	.comm	q4c,4,4
	.comm	q3c,4,4
	.comm	q2c,4,4
	.comm	q1c,4,4
	.comm	time,4,4
	.comm	lives,4,4
	.comm	rSeed,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	bgColor,2,2
	.comm	state,1,1
	.comm	scoreBuf3,41,4
	.comm	scoreBuf2,41,4
	.comm	scoreBuf1,41,4
	.comm	buffer,41,4
	.comm	NOTES,2,2
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	colors, %object
	.size	colors, 12
colors:
	.short	0
	.short	32767
	.short	31
	.short	992
	.short	24414
	.short	15855
	.ident	"GCC: (devkitARM release 53) 9.1.0"
