
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d05e0010 <applet_entry>:
d05e0010:	b570      	push	{r4, r5, r6, lr}
d05e0012:	4e09      	ldr	r6, [pc, #36]	; (d05e0038 <applet_entry+0x28>)
d05e0014:	460d      	mov	r5, r1
d05e0016:	4604      	mov	r4, r0
d05e0018:	2100      	movs	r1, #0
d05e001a:	6833      	ldr	r3, [r6, #0]
d05e001c:	6898      	ldr	r0, [r3, #8]
d05e001e:	f000 f99f 	bl	d05e0360 <setbuf>
d05e0022:	6833      	ldr	r3, [r6, #0]
d05e0024:	2100      	movs	r1, #0
d05e0026:	68d8      	ldr	r0, [r3, #12]
d05e0028:	f000 f99a 	bl	d05e0360 <setbuf>
d05e002c:	4629      	mov	r1, r5
d05e002e:	4620      	mov	r0, r4
d05e0030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d05e0034:	f000 b870 	b.w	d05e0118 <main>
d05e0038:	d05e1674 	.word	0xd05e1674

d05e003c <_write_r>:
d05e003c:	3901      	subs	r1, #1
d05e003e:	2901      	cmp	r1, #1
d05e0040:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e0042:	d81f      	bhi.n	d05e0084 <_write_r+0x48>
d05e0044:	b1e2      	cbz	r2, d05e0080 <_write_r+0x44>
d05e0046:	461c      	mov	r4, r3
d05e0048:	b1d3      	cbz	r3, d05e0080 <_write_r+0x44>
d05e004a:	4d12      	ldr	r5, [pc, #72]	; (d05e0094 <_write_r+0x58>)
d05e004c:	682e      	ldr	r6, [r5, #0]
d05e004e:	b9ae      	cbnz	r6, d05e007c <_write_r+0x40>
d05e0050:	4f11      	ldr	r7, [pc, #68]	; (d05e0098 <_write_r+0x5c>)
d05e0052:	2301      	movs	r3, #1
d05e0054:	4611      	mov	r1, r2
d05e0056:	4630      	mov	r0, r6
d05e0058:	602b      	str	r3, [r5, #0]
d05e005a:	4622      	mov	r2, r4
d05e005c:	7a3b      	ldrb	r3, [r7, #8]
d05e005e:	f897 c009 	ldrb.w	ip, [r7, #9]
d05e0062:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d05e0066:	f897 c00a 	ldrb.w	ip, [r7, #10]
d05e006a:	7aff      	ldrb	r7, [r7, #11]
d05e006c:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d05e0070:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d05e0074:	681b      	ldr	r3, [r3, #0]
d05e0076:	685b      	ldr	r3, [r3, #4]
d05e0078:	4798      	blx	r3
d05e007a:	602e      	str	r6, [r5, #0]
d05e007c:	4620      	mov	r0, r4
d05e007e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e0080:	2000      	movs	r0, #0
d05e0082:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e0084:	f000 f8ba 	bl	d05e01fc <__errno>
d05e0088:	2209      	movs	r2, #9
d05e008a:	4603      	mov	r3, r0
d05e008c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e0090:	601a      	str	r2, [r3, #0]
d05e0092:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e0094:	d05e16dc 	.word	0xd05e16dc
d05e0098:	2001f000 	.word	0x2001f000

d05e009c <_read>:
d05e009c:	b508      	push	{r3, lr}
d05e009e:	f000 f8ad 	bl	d05e01fc <__errno>
d05e00a2:	2258      	movs	r2, #88	; 0x58
d05e00a4:	4603      	mov	r3, r0
d05e00a6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e00aa:	601a      	str	r2, [r3, #0]
d05e00ac:	bd08      	pop	{r3, pc}
d05e00ae:	bf00      	nop

d05e00b0 <_close>:
d05e00b0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e00b4:	4770      	bx	lr
d05e00b6:	bf00      	nop

d05e00b8 <_fstat>:
d05e00b8:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d05e00bc:	2000      	movs	r0, #0
d05e00be:	604b      	str	r3, [r1, #4]
d05e00c0:	4770      	bx	lr
d05e00c2:	bf00      	nop

d05e00c4 <_lseek>:
d05e00c4:	2000      	movs	r0, #0
d05e00c6:	4770      	bx	lr

d05e00c8 <_sbrk_r>:
d05e00c8:	4b0c      	ldr	r3, [pc, #48]	; (d05e00fc <_sbrk_r+0x34>)
d05e00ca:	4a0d      	ldr	r2, [pc, #52]	; (d05e0100 <_sbrk_r+0x38>)
d05e00cc:	6818      	ldr	r0, [r3, #0]
d05e00ce:	b510      	push	{r4, lr}
d05e00d0:	b918      	cbnz	r0, d05e00da <_sbrk_r+0x12>
d05e00d2:	1dd0      	adds	r0, r2, #7
d05e00d4:	f020 0007 	bic.w	r0, r0, #7
d05e00d8:	6018      	str	r0, [r3, #0]
d05e00da:	4401      	add	r1, r0
d05e00dc:	4c09      	ldr	r4, [pc, #36]	; (d05e0104 <_sbrk_r+0x3c>)
d05e00de:	42a1      	cmp	r1, r4
d05e00e0:	d803      	bhi.n	d05e00ea <_sbrk_r+0x22>
d05e00e2:	4291      	cmp	r1, r2
d05e00e4:	d301      	bcc.n	d05e00ea <_sbrk_r+0x22>
d05e00e6:	6019      	str	r1, [r3, #0]
d05e00e8:	bd10      	pop	{r4, pc}
d05e00ea:	f000 f887 	bl	d05e01fc <__errno>
d05e00ee:	220c      	movs	r2, #12
d05e00f0:	4603      	mov	r3, r0
d05e00f2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e00f6:	601a      	str	r2, [r3, #0]
d05e00f8:	bd10      	pop	{r4, pc}
d05e00fa:	bf00      	nop
d05e00fc:	d05e16d8 	.word	0xd05e16d8
d05e0100:	d05e36f8 	.word	0xd05e36f8
d05e0104:	d0600000 	.word	0xd0600000

d05e0108 <_isatty>:
d05e0108:	2001      	movs	r0, #1
d05e010a:	4770      	bx	lr

d05e010c <testfunctionCallback>:
d05e010c:	4801      	ldr	r0, [pc, #4]	; (d05e0114 <testfunctionCallback+0x8>)
d05e010e:	f000 b91f 	b.w	d05e0350 <puts>
d05e0112:	bf00      	nop
d05e0114:	d05e147c 	.word	0xd05e147c

d05e0118 <main>:
d05e0118:	b5f0      	push	{r4, r5, r6, r7, lr}
d05e011a:	482e      	ldr	r0, [pc, #184]	; (d05e01d4 <main+0xbc>)
d05e011c:	b087      	sub	sp, #28
d05e011e:	f000 f917 	bl	d05e0350 <puts>
d05e0122:	2158      	movs	r1, #88	; 0x58
d05e0124:	482c      	ldr	r0, [pc, #176]	; (d05e01d8 <main+0xc0>)
d05e0126:	f240 77ed 	movw	r7, #2029	; 0x7ed
d05e012a:	f000 f875 	bl	d05e0218 <iprintf>
d05e012e:	200a      	movs	r0, #10
d05e0130:	f000 f88a 	bl	d05e0248 <putchar>
d05e0134:	4829      	ldr	r0, [pc, #164]	; (d05e01dc <main+0xc4>)
d05e0136:	f000 f90b 	bl	d05e0350 <puts>
d05e013a:	4829      	ldr	r0, [pc, #164]	; (d05e01e0 <main+0xc8>)
d05e013c:	4c29      	ldr	r4, [pc, #164]	; (d05e01e4 <main+0xcc>)
d05e013e:	f000 f907 	bl	d05e0350 <puts>
d05e0142:	4829      	ldr	r0, [pc, #164]	; (d05e01e8 <main+0xd0>)
d05e0144:	26c8      	movs	r6, #200	; 0xc8
d05e0146:	f000 f903 	bl	d05e0350 <puts>
d05e014a:	4828      	ldr	r0, [pc, #160]	; (d05e01ec <main+0xd4>)
d05e014c:	f000 f900 	bl	d05e0350 <puts>
d05e0150:	7a23      	ldrb	r3, [r4, #8]
d05e0152:	7a61      	ldrb	r1, [r4, #9]
d05e0154:	7aa2      	ldrb	r2, [r4, #10]
d05e0156:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d05e015a:	7ae1      	ldrb	r1, [r4, #11]
d05e015c:	4824      	ldr	r0, [pc, #144]	; (d05e01f0 <main+0xd8>)
d05e015e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d05e0162:	220a      	movs	r2, #10
d05e0164:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d05e0168:	4611      	mov	r1, r2
d05e016a:	685d      	ldr	r5, [r3, #4]
d05e016c:	f44f 7380 	mov.w	r3, #256	; 0x100
d05e0170:	9702      	str	r7, [sp, #8]
d05e0172:	2701      	movs	r7, #1
d05e0174:	9001      	str	r0, [sp, #4]
d05e0176:	f10d 0017 	add.w	r0, sp, #23
d05e017a:	9600      	str	r6, [sp, #0]
d05e017c:	682d      	ldr	r5, [r5, #0]
d05e017e:	47a8      	blx	r5
d05e0180:	7a23      	ldrb	r3, [r4, #8]
d05e0182:	7a61      	ldrb	r1, [r4, #9]
d05e0184:	2016      	movs	r0, #22
d05e0186:	7aa2      	ldrb	r2, [r4, #10]
d05e0188:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d05e018c:	7ae1      	ldrb	r1, [r4, #11]
d05e018e:	4e19      	ldr	r6, [pc, #100]	; (d05e01f4 <main+0xdc>)
d05e0190:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d05e0194:	2214      	movs	r2, #20
d05e0196:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d05e019a:	4611      	mov	r1, r2
d05e019c:	68dd      	ldr	r5, [r3, #12]
d05e019e:	2340      	movs	r3, #64	; 0x40
d05e01a0:	9702      	str	r7, [sp, #8]
d05e01a2:	e9cd 0600 	strd	r0, r6, [sp]
d05e01a6:	f89d 0017 	ldrb.w	r0, [sp, #23]
d05e01aa:	68ad      	ldr	r5, [r5, #8]
d05e01ac:	47a8      	blx	r5
d05e01ae:	7a23      	ldrb	r3, [r4, #8]
d05e01b0:	7a61      	ldrb	r1, [r4, #9]
d05e01b2:	2200      	movs	r2, #0
d05e01b4:	7aa5      	ldrb	r5, [r4, #10]
d05e01b6:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d05e01ba:	7ae4      	ldrb	r4, [r4, #11]
d05e01bc:	490e      	ldr	r1, [pc, #56]	; (d05e01f8 <main+0xe0>)
d05e01be:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d05e01c2:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d05e01c6:	68db      	ldr	r3, [r3, #12]
d05e01c8:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05e01ca:	4798      	blx	r3
d05e01cc:	2000      	movs	r0, #0
d05e01ce:	b007      	add	sp, #28
d05e01d0:	bdf0      	pop	{r4, r5, r6, r7, pc}
d05e01d2:	bf00      	nop
d05e01d4:	d05e1490 	.word	0xd05e1490
d05e01d8:	d05e14a8 	.word	0xd05e14a8
d05e01dc:	d05e14c8 	.word	0xd05e14c8
d05e01e0:	d05e14f8 	.word	0xd05e14f8
d05e01e4:	2001f000 	.word	0x2001f000
d05e01e8:	d05e1524 	.word	0xd05e1524
d05e01ec:	d05e159c 	.word	0xd05e159c
d05e01f0:	d05e15b8 	.word	0xd05e15b8
d05e01f4:	d05e15cc 	.word	0xd05e15cc
d05e01f8:	d05e010d 	.word	0xd05e010d

d05e01fc <__errno>:
d05e01fc:	4b01      	ldr	r3, [pc, #4]	; (d05e0204 <__errno+0x8>)
d05e01fe:	6818      	ldr	r0, [r3, #0]
d05e0200:	4770      	bx	lr
d05e0202:	bf00      	nop
d05e0204:	d05e1674 	.word	0xd05e1674

d05e0208 <memset>:
d05e0208:	4402      	add	r2, r0
d05e020a:	4603      	mov	r3, r0
d05e020c:	4293      	cmp	r3, r2
d05e020e:	d100      	bne.n	d05e0212 <memset+0xa>
d05e0210:	4770      	bx	lr
d05e0212:	f803 1b01 	strb.w	r1, [r3], #1
d05e0216:	e7f9      	b.n	d05e020c <memset+0x4>

d05e0218 <iprintf>:
d05e0218:	b40f      	push	{r0, r1, r2, r3}
d05e021a:	4b0a      	ldr	r3, [pc, #40]	; (d05e0244 <iprintf+0x2c>)
d05e021c:	b513      	push	{r0, r1, r4, lr}
d05e021e:	681c      	ldr	r4, [r3, #0]
d05e0220:	b124      	cbz	r4, d05e022c <iprintf+0x14>
d05e0222:	69a3      	ldr	r3, [r4, #24]
d05e0224:	b913      	cbnz	r3, d05e022c <iprintf+0x14>
d05e0226:	4620      	mov	r0, r4
d05e0228:	f000 fb42 	bl	d05e08b0 <__sinit>
d05e022c:	ab05      	add	r3, sp, #20
d05e022e:	9a04      	ldr	r2, [sp, #16]
d05e0230:	68a1      	ldr	r1, [r4, #8]
d05e0232:	9301      	str	r3, [sp, #4]
d05e0234:	4620      	mov	r0, r4
d05e0236:	f000 fd1b 	bl	d05e0c70 <_vfiprintf_r>
d05e023a:	b002      	add	sp, #8
d05e023c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d05e0240:	b004      	add	sp, #16
d05e0242:	4770      	bx	lr
d05e0244:	d05e1674 	.word	0xd05e1674

d05e0248 <putchar>:
d05e0248:	4b09      	ldr	r3, [pc, #36]	; (d05e0270 <putchar+0x28>)
d05e024a:	b513      	push	{r0, r1, r4, lr}
d05e024c:	681c      	ldr	r4, [r3, #0]
d05e024e:	4601      	mov	r1, r0
d05e0250:	b134      	cbz	r4, d05e0260 <putchar+0x18>
d05e0252:	69a3      	ldr	r3, [r4, #24]
d05e0254:	b923      	cbnz	r3, d05e0260 <putchar+0x18>
d05e0256:	9001      	str	r0, [sp, #4]
d05e0258:	4620      	mov	r0, r4
d05e025a:	f000 fb29 	bl	d05e08b0 <__sinit>
d05e025e:	9901      	ldr	r1, [sp, #4]
d05e0260:	68a2      	ldr	r2, [r4, #8]
d05e0262:	4620      	mov	r0, r4
d05e0264:	b002      	add	sp, #8
d05e0266:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d05e026a:	f000 bfc5 	b.w	d05e11f8 <_putc_r>
d05e026e:	bf00      	nop
d05e0270:	d05e1674 	.word	0xd05e1674

d05e0274 <_puts_r>:
d05e0274:	b570      	push	{r4, r5, r6, lr}
d05e0276:	460e      	mov	r6, r1
d05e0278:	4605      	mov	r5, r0
d05e027a:	b118      	cbz	r0, d05e0284 <_puts_r+0x10>
d05e027c:	6983      	ldr	r3, [r0, #24]
d05e027e:	b90b      	cbnz	r3, d05e0284 <_puts_r+0x10>
d05e0280:	f000 fb16 	bl	d05e08b0 <__sinit>
d05e0284:	69ab      	ldr	r3, [r5, #24]
d05e0286:	68ac      	ldr	r4, [r5, #8]
d05e0288:	b913      	cbnz	r3, d05e0290 <_puts_r+0x1c>
d05e028a:	4628      	mov	r0, r5
d05e028c:	f000 fb10 	bl	d05e08b0 <__sinit>
d05e0290:	4b2c      	ldr	r3, [pc, #176]	; (d05e0344 <_puts_r+0xd0>)
d05e0292:	429c      	cmp	r4, r3
d05e0294:	d120      	bne.n	d05e02d8 <_puts_r+0x64>
d05e0296:	686c      	ldr	r4, [r5, #4]
d05e0298:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05e029a:	07db      	lsls	r3, r3, #31
d05e029c:	d405      	bmi.n	d05e02aa <_puts_r+0x36>
d05e029e:	89a3      	ldrh	r3, [r4, #12]
d05e02a0:	0598      	lsls	r0, r3, #22
d05e02a2:	d402      	bmi.n	d05e02aa <_puts_r+0x36>
d05e02a4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05e02a6:	f000 fba1 	bl	d05e09ec <__retarget_lock_acquire_recursive>
d05e02aa:	89a3      	ldrh	r3, [r4, #12]
d05e02ac:	0719      	lsls	r1, r3, #28
d05e02ae:	d51d      	bpl.n	d05e02ec <_puts_r+0x78>
d05e02b0:	6923      	ldr	r3, [r4, #16]
d05e02b2:	b1db      	cbz	r3, d05e02ec <_puts_r+0x78>
d05e02b4:	3e01      	subs	r6, #1
d05e02b6:	68a3      	ldr	r3, [r4, #8]
d05e02b8:	f816 1f01 	ldrb.w	r1, [r6, #1]!
d05e02bc:	3b01      	subs	r3, #1
d05e02be:	60a3      	str	r3, [r4, #8]
d05e02c0:	bb39      	cbnz	r1, d05e0312 <_puts_r+0x9e>
d05e02c2:	2b00      	cmp	r3, #0
d05e02c4:	da38      	bge.n	d05e0338 <_puts_r+0xc4>
d05e02c6:	4622      	mov	r2, r4
d05e02c8:	210a      	movs	r1, #10
d05e02ca:	4628      	mov	r0, r5
d05e02cc:	f000 f916 	bl	d05e04fc <__swbuf_r>
d05e02d0:	3001      	adds	r0, #1
d05e02d2:	d011      	beq.n	d05e02f8 <_puts_r+0x84>
d05e02d4:	250a      	movs	r5, #10
d05e02d6:	e011      	b.n	d05e02fc <_puts_r+0x88>
d05e02d8:	4b1b      	ldr	r3, [pc, #108]	; (d05e0348 <_puts_r+0xd4>)
d05e02da:	429c      	cmp	r4, r3
d05e02dc:	d101      	bne.n	d05e02e2 <_puts_r+0x6e>
d05e02de:	68ac      	ldr	r4, [r5, #8]
d05e02e0:	e7da      	b.n	d05e0298 <_puts_r+0x24>
d05e02e2:	4b1a      	ldr	r3, [pc, #104]	; (d05e034c <_puts_r+0xd8>)
d05e02e4:	429c      	cmp	r4, r3
d05e02e6:	bf08      	it	eq
d05e02e8:	68ec      	ldreq	r4, [r5, #12]
d05e02ea:	e7d5      	b.n	d05e0298 <_puts_r+0x24>
d05e02ec:	4621      	mov	r1, r4
d05e02ee:	4628      	mov	r0, r5
d05e02f0:	f000 f956 	bl	d05e05a0 <__swsetup_r>
d05e02f4:	2800      	cmp	r0, #0
d05e02f6:	d0dd      	beq.n	d05e02b4 <_puts_r+0x40>
d05e02f8:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05e02fc:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05e02fe:	07da      	lsls	r2, r3, #31
d05e0300:	d405      	bmi.n	d05e030e <_puts_r+0x9a>
d05e0302:	89a3      	ldrh	r3, [r4, #12]
d05e0304:	059b      	lsls	r3, r3, #22
d05e0306:	d402      	bmi.n	d05e030e <_puts_r+0x9a>
d05e0308:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05e030a:	f000 fb70 	bl	d05e09ee <__retarget_lock_release_recursive>
d05e030e:	4628      	mov	r0, r5
d05e0310:	bd70      	pop	{r4, r5, r6, pc}
d05e0312:	2b00      	cmp	r3, #0
d05e0314:	da04      	bge.n	d05e0320 <_puts_r+0xac>
d05e0316:	69a2      	ldr	r2, [r4, #24]
d05e0318:	429a      	cmp	r2, r3
d05e031a:	dc06      	bgt.n	d05e032a <_puts_r+0xb6>
d05e031c:	290a      	cmp	r1, #10
d05e031e:	d004      	beq.n	d05e032a <_puts_r+0xb6>
d05e0320:	6823      	ldr	r3, [r4, #0]
d05e0322:	1c5a      	adds	r2, r3, #1
d05e0324:	6022      	str	r2, [r4, #0]
d05e0326:	7019      	strb	r1, [r3, #0]
d05e0328:	e7c5      	b.n	d05e02b6 <_puts_r+0x42>
d05e032a:	4622      	mov	r2, r4
d05e032c:	4628      	mov	r0, r5
d05e032e:	f000 f8e5 	bl	d05e04fc <__swbuf_r>
d05e0332:	3001      	adds	r0, #1
d05e0334:	d1bf      	bne.n	d05e02b6 <_puts_r+0x42>
d05e0336:	e7df      	b.n	d05e02f8 <_puts_r+0x84>
d05e0338:	6823      	ldr	r3, [r4, #0]
d05e033a:	250a      	movs	r5, #10
d05e033c:	1c5a      	adds	r2, r3, #1
d05e033e:	6022      	str	r2, [r4, #0]
d05e0340:	701d      	strb	r5, [r3, #0]
d05e0342:	e7db      	b.n	d05e02fc <_puts_r+0x88>
d05e0344:	d05e15f8 	.word	0xd05e15f8
d05e0348:	d05e1618 	.word	0xd05e1618
d05e034c:	d05e15d8 	.word	0xd05e15d8

d05e0350 <puts>:
d05e0350:	4b02      	ldr	r3, [pc, #8]	; (d05e035c <puts+0xc>)
d05e0352:	4601      	mov	r1, r0
d05e0354:	6818      	ldr	r0, [r3, #0]
d05e0356:	f7ff bf8d 	b.w	d05e0274 <_puts_r>
d05e035a:	bf00      	nop
d05e035c:	d05e1674 	.word	0xd05e1674

d05e0360 <setbuf>:
d05e0360:	2900      	cmp	r1, #0
d05e0362:	f44f 6380 	mov.w	r3, #1024	; 0x400
d05e0366:	bf0c      	ite	eq
d05e0368:	2202      	moveq	r2, #2
d05e036a:	2200      	movne	r2, #0
d05e036c:	f000 b800 	b.w	d05e0370 <setvbuf>

d05e0370 <setvbuf>:
d05e0370:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d05e0374:	461d      	mov	r5, r3
d05e0376:	4b5d      	ldr	r3, [pc, #372]	; (d05e04ec <setvbuf+0x17c>)
d05e0378:	681f      	ldr	r7, [r3, #0]
d05e037a:	4604      	mov	r4, r0
d05e037c:	460e      	mov	r6, r1
d05e037e:	4690      	mov	r8, r2
d05e0380:	b127      	cbz	r7, d05e038c <setvbuf+0x1c>
d05e0382:	69bb      	ldr	r3, [r7, #24]
d05e0384:	b913      	cbnz	r3, d05e038c <setvbuf+0x1c>
d05e0386:	4638      	mov	r0, r7
d05e0388:	f000 fa92 	bl	d05e08b0 <__sinit>
d05e038c:	4b58      	ldr	r3, [pc, #352]	; (d05e04f0 <setvbuf+0x180>)
d05e038e:	429c      	cmp	r4, r3
d05e0390:	d167      	bne.n	d05e0462 <setvbuf+0xf2>
d05e0392:	687c      	ldr	r4, [r7, #4]
d05e0394:	f1b8 0f02 	cmp.w	r8, #2
d05e0398:	d006      	beq.n	d05e03a8 <setvbuf+0x38>
d05e039a:	f1b8 0f01 	cmp.w	r8, #1
d05e039e:	f200 809f 	bhi.w	d05e04e0 <setvbuf+0x170>
d05e03a2:	2d00      	cmp	r5, #0
d05e03a4:	f2c0 809c 	blt.w	d05e04e0 <setvbuf+0x170>
d05e03a8:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05e03aa:	07db      	lsls	r3, r3, #31
d05e03ac:	d405      	bmi.n	d05e03ba <setvbuf+0x4a>
d05e03ae:	89a3      	ldrh	r3, [r4, #12]
d05e03b0:	0598      	lsls	r0, r3, #22
d05e03b2:	d402      	bmi.n	d05e03ba <setvbuf+0x4a>
d05e03b4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05e03b6:	f000 fb19 	bl	d05e09ec <__retarget_lock_acquire_recursive>
d05e03ba:	4621      	mov	r1, r4
d05e03bc:	4638      	mov	r0, r7
d05e03be:	f000 f9e3 	bl	d05e0788 <_fflush_r>
d05e03c2:	6b61      	ldr	r1, [r4, #52]	; 0x34
d05e03c4:	b141      	cbz	r1, d05e03d8 <setvbuf+0x68>
d05e03c6:	f104 0344 	add.w	r3, r4, #68	; 0x44
d05e03ca:	4299      	cmp	r1, r3
d05e03cc:	d002      	beq.n	d05e03d4 <setvbuf+0x64>
d05e03ce:	4638      	mov	r0, r7
d05e03d0:	f000 fb7a 	bl	d05e0ac8 <_free_r>
d05e03d4:	2300      	movs	r3, #0
d05e03d6:	6363      	str	r3, [r4, #52]	; 0x34
d05e03d8:	2300      	movs	r3, #0
d05e03da:	61a3      	str	r3, [r4, #24]
d05e03dc:	6063      	str	r3, [r4, #4]
d05e03de:	89a3      	ldrh	r3, [r4, #12]
d05e03e0:	0619      	lsls	r1, r3, #24
d05e03e2:	d503      	bpl.n	d05e03ec <setvbuf+0x7c>
d05e03e4:	6921      	ldr	r1, [r4, #16]
d05e03e6:	4638      	mov	r0, r7
d05e03e8:	f000 fb6e 	bl	d05e0ac8 <_free_r>
d05e03ec:	89a3      	ldrh	r3, [r4, #12]
d05e03ee:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d05e03f2:	f023 0303 	bic.w	r3, r3, #3
d05e03f6:	f1b8 0f02 	cmp.w	r8, #2
d05e03fa:	81a3      	strh	r3, [r4, #12]
d05e03fc:	d06c      	beq.n	d05e04d8 <setvbuf+0x168>
d05e03fe:	ab01      	add	r3, sp, #4
d05e0400:	466a      	mov	r2, sp
d05e0402:	4621      	mov	r1, r4
d05e0404:	4638      	mov	r0, r7
d05e0406:	f000 faf3 	bl	d05e09f0 <__swhatbuf_r>
d05e040a:	89a3      	ldrh	r3, [r4, #12]
d05e040c:	4318      	orrs	r0, r3
d05e040e:	81a0      	strh	r0, [r4, #12]
d05e0410:	2d00      	cmp	r5, #0
d05e0412:	d130      	bne.n	d05e0476 <setvbuf+0x106>
d05e0414:	9d00      	ldr	r5, [sp, #0]
d05e0416:	4628      	mov	r0, r5
d05e0418:	f000 fb4e 	bl	d05e0ab8 <malloc>
d05e041c:	4606      	mov	r6, r0
d05e041e:	2800      	cmp	r0, #0
d05e0420:	d155      	bne.n	d05e04ce <setvbuf+0x15e>
d05e0422:	f8dd 9000 	ldr.w	r9, [sp]
d05e0426:	45a9      	cmp	r9, r5
d05e0428:	d14a      	bne.n	d05e04c0 <setvbuf+0x150>
d05e042a:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05e042e:	2200      	movs	r2, #0
d05e0430:	60a2      	str	r2, [r4, #8]
d05e0432:	f104 0247 	add.w	r2, r4, #71	; 0x47
d05e0436:	6022      	str	r2, [r4, #0]
d05e0438:	6122      	str	r2, [r4, #16]
d05e043a:	2201      	movs	r2, #1
d05e043c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d05e0440:	6162      	str	r2, [r4, #20]
d05e0442:	6e62      	ldr	r2, [r4, #100]	; 0x64
d05e0444:	f043 0302 	orr.w	r3, r3, #2
d05e0448:	07d2      	lsls	r2, r2, #31
d05e044a:	81a3      	strh	r3, [r4, #12]
d05e044c:	d405      	bmi.n	d05e045a <setvbuf+0xea>
d05e044e:	f413 7f00 	tst.w	r3, #512	; 0x200
d05e0452:	d102      	bne.n	d05e045a <setvbuf+0xea>
d05e0454:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05e0456:	f000 faca 	bl	d05e09ee <__retarget_lock_release_recursive>
d05e045a:	4628      	mov	r0, r5
d05e045c:	b003      	add	sp, #12
d05e045e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d05e0462:	4b24      	ldr	r3, [pc, #144]	; (d05e04f4 <setvbuf+0x184>)
d05e0464:	429c      	cmp	r4, r3
d05e0466:	d101      	bne.n	d05e046c <setvbuf+0xfc>
d05e0468:	68bc      	ldr	r4, [r7, #8]
d05e046a:	e793      	b.n	d05e0394 <setvbuf+0x24>
d05e046c:	4b22      	ldr	r3, [pc, #136]	; (d05e04f8 <setvbuf+0x188>)
d05e046e:	429c      	cmp	r4, r3
d05e0470:	bf08      	it	eq
d05e0472:	68fc      	ldreq	r4, [r7, #12]
d05e0474:	e78e      	b.n	d05e0394 <setvbuf+0x24>
d05e0476:	2e00      	cmp	r6, #0
d05e0478:	d0cd      	beq.n	d05e0416 <setvbuf+0xa6>
d05e047a:	69bb      	ldr	r3, [r7, #24]
d05e047c:	b913      	cbnz	r3, d05e0484 <setvbuf+0x114>
d05e047e:	4638      	mov	r0, r7
d05e0480:	f000 fa16 	bl	d05e08b0 <__sinit>
d05e0484:	f1b8 0f01 	cmp.w	r8, #1
d05e0488:	bf08      	it	eq
d05e048a:	89a3      	ldrheq	r3, [r4, #12]
d05e048c:	6026      	str	r6, [r4, #0]
d05e048e:	bf04      	itt	eq
d05e0490:	f043 0301 	orreq.w	r3, r3, #1
d05e0494:	81a3      	strheq	r3, [r4, #12]
d05e0496:	89a2      	ldrh	r2, [r4, #12]
d05e0498:	f012 0308 	ands.w	r3, r2, #8
d05e049c:	e9c4 6504 	strd	r6, r5, [r4, #16]
d05e04a0:	d01c      	beq.n	d05e04dc <setvbuf+0x16c>
d05e04a2:	07d3      	lsls	r3, r2, #31
d05e04a4:	bf41      	itttt	mi
d05e04a6:	2300      	movmi	r3, #0
d05e04a8:	426d      	negmi	r5, r5
d05e04aa:	60a3      	strmi	r3, [r4, #8]
d05e04ac:	61a5      	strmi	r5, [r4, #24]
d05e04ae:	bf58      	it	pl
d05e04b0:	60a5      	strpl	r5, [r4, #8]
d05e04b2:	6e65      	ldr	r5, [r4, #100]	; 0x64
d05e04b4:	f015 0501 	ands.w	r5, r5, #1
d05e04b8:	d115      	bne.n	d05e04e6 <setvbuf+0x176>
d05e04ba:	f412 7f00 	tst.w	r2, #512	; 0x200
d05e04be:	e7c8      	b.n	d05e0452 <setvbuf+0xe2>
d05e04c0:	4648      	mov	r0, r9
d05e04c2:	f000 faf9 	bl	d05e0ab8 <malloc>
d05e04c6:	4606      	mov	r6, r0
d05e04c8:	2800      	cmp	r0, #0
d05e04ca:	d0ae      	beq.n	d05e042a <setvbuf+0xba>
d05e04cc:	464d      	mov	r5, r9
d05e04ce:	89a3      	ldrh	r3, [r4, #12]
d05e04d0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d05e04d4:	81a3      	strh	r3, [r4, #12]
d05e04d6:	e7d0      	b.n	d05e047a <setvbuf+0x10a>
d05e04d8:	2500      	movs	r5, #0
d05e04da:	e7a8      	b.n	d05e042e <setvbuf+0xbe>
d05e04dc:	60a3      	str	r3, [r4, #8]
d05e04de:	e7e8      	b.n	d05e04b2 <setvbuf+0x142>
d05e04e0:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05e04e4:	e7b9      	b.n	d05e045a <setvbuf+0xea>
d05e04e6:	2500      	movs	r5, #0
d05e04e8:	e7b7      	b.n	d05e045a <setvbuf+0xea>
d05e04ea:	bf00      	nop
d05e04ec:	d05e1674 	.word	0xd05e1674
d05e04f0:	d05e15f8 	.word	0xd05e15f8
d05e04f4:	d05e1618 	.word	0xd05e1618
d05e04f8:	d05e15d8 	.word	0xd05e15d8

d05e04fc <__swbuf_r>:
d05e04fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e04fe:	460e      	mov	r6, r1
d05e0500:	4614      	mov	r4, r2
d05e0502:	4605      	mov	r5, r0
d05e0504:	b118      	cbz	r0, d05e050e <__swbuf_r+0x12>
d05e0506:	6983      	ldr	r3, [r0, #24]
d05e0508:	b90b      	cbnz	r3, d05e050e <__swbuf_r+0x12>
d05e050a:	f000 f9d1 	bl	d05e08b0 <__sinit>
d05e050e:	4b21      	ldr	r3, [pc, #132]	; (d05e0594 <__swbuf_r+0x98>)
d05e0510:	429c      	cmp	r4, r3
d05e0512:	d12b      	bne.n	d05e056c <__swbuf_r+0x70>
d05e0514:	686c      	ldr	r4, [r5, #4]
d05e0516:	69a3      	ldr	r3, [r4, #24]
d05e0518:	60a3      	str	r3, [r4, #8]
d05e051a:	89a3      	ldrh	r3, [r4, #12]
d05e051c:	071a      	lsls	r2, r3, #28
d05e051e:	d52f      	bpl.n	d05e0580 <__swbuf_r+0x84>
d05e0520:	6923      	ldr	r3, [r4, #16]
d05e0522:	b36b      	cbz	r3, d05e0580 <__swbuf_r+0x84>
d05e0524:	6923      	ldr	r3, [r4, #16]
d05e0526:	6820      	ldr	r0, [r4, #0]
d05e0528:	1ac0      	subs	r0, r0, r3
d05e052a:	6963      	ldr	r3, [r4, #20]
d05e052c:	b2f6      	uxtb	r6, r6
d05e052e:	4283      	cmp	r3, r0
d05e0530:	4637      	mov	r7, r6
d05e0532:	dc04      	bgt.n	d05e053e <__swbuf_r+0x42>
d05e0534:	4621      	mov	r1, r4
d05e0536:	4628      	mov	r0, r5
d05e0538:	f000 f926 	bl	d05e0788 <_fflush_r>
d05e053c:	bb30      	cbnz	r0, d05e058c <__swbuf_r+0x90>
d05e053e:	68a3      	ldr	r3, [r4, #8]
d05e0540:	3b01      	subs	r3, #1
d05e0542:	60a3      	str	r3, [r4, #8]
d05e0544:	6823      	ldr	r3, [r4, #0]
d05e0546:	1c5a      	adds	r2, r3, #1
d05e0548:	6022      	str	r2, [r4, #0]
d05e054a:	701e      	strb	r6, [r3, #0]
d05e054c:	6963      	ldr	r3, [r4, #20]
d05e054e:	3001      	adds	r0, #1
d05e0550:	4283      	cmp	r3, r0
d05e0552:	d004      	beq.n	d05e055e <__swbuf_r+0x62>
d05e0554:	89a3      	ldrh	r3, [r4, #12]
d05e0556:	07db      	lsls	r3, r3, #31
d05e0558:	d506      	bpl.n	d05e0568 <__swbuf_r+0x6c>
d05e055a:	2e0a      	cmp	r6, #10
d05e055c:	d104      	bne.n	d05e0568 <__swbuf_r+0x6c>
d05e055e:	4621      	mov	r1, r4
d05e0560:	4628      	mov	r0, r5
d05e0562:	f000 f911 	bl	d05e0788 <_fflush_r>
d05e0566:	b988      	cbnz	r0, d05e058c <__swbuf_r+0x90>
d05e0568:	4638      	mov	r0, r7
d05e056a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e056c:	4b0a      	ldr	r3, [pc, #40]	; (d05e0598 <__swbuf_r+0x9c>)
d05e056e:	429c      	cmp	r4, r3
d05e0570:	d101      	bne.n	d05e0576 <__swbuf_r+0x7a>
d05e0572:	68ac      	ldr	r4, [r5, #8]
d05e0574:	e7cf      	b.n	d05e0516 <__swbuf_r+0x1a>
d05e0576:	4b09      	ldr	r3, [pc, #36]	; (d05e059c <__swbuf_r+0xa0>)
d05e0578:	429c      	cmp	r4, r3
d05e057a:	bf08      	it	eq
d05e057c:	68ec      	ldreq	r4, [r5, #12]
d05e057e:	e7ca      	b.n	d05e0516 <__swbuf_r+0x1a>
d05e0580:	4621      	mov	r1, r4
d05e0582:	4628      	mov	r0, r5
d05e0584:	f000 f80c 	bl	d05e05a0 <__swsetup_r>
d05e0588:	2800      	cmp	r0, #0
d05e058a:	d0cb      	beq.n	d05e0524 <__swbuf_r+0x28>
d05e058c:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d05e0590:	e7ea      	b.n	d05e0568 <__swbuf_r+0x6c>
d05e0592:	bf00      	nop
d05e0594:	d05e15f8 	.word	0xd05e15f8
d05e0598:	d05e1618 	.word	0xd05e1618
d05e059c:	d05e15d8 	.word	0xd05e15d8

d05e05a0 <__swsetup_r>:
d05e05a0:	4b32      	ldr	r3, [pc, #200]	; (d05e066c <__swsetup_r+0xcc>)
d05e05a2:	b570      	push	{r4, r5, r6, lr}
d05e05a4:	681d      	ldr	r5, [r3, #0]
d05e05a6:	4606      	mov	r6, r0
d05e05a8:	460c      	mov	r4, r1
d05e05aa:	b125      	cbz	r5, d05e05b6 <__swsetup_r+0x16>
d05e05ac:	69ab      	ldr	r3, [r5, #24]
d05e05ae:	b913      	cbnz	r3, d05e05b6 <__swsetup_r+0x16>
d05e05b0:	4628      	mov	r0, r5
d05e05b2:	f000 f97d 	bl	d05e08b0 <__sinit>
d05e05b6:	4b2e      	ldr	r3, [pc, #184]	; (d05e0670 <__swsetup_r+0xd0>)
d05e05b8:	429c      	cmp	r4, r3
d05e05ba:	d10f      	bne.n	d05e05dc <__swsetup_r+0x3c>
d05e05bc:	686c      	ldr	r4, [r5, #4]
d05e05be:	89a3      	ldrh	r3, [r4, #12]
d05e05c0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d05e05c4:	0719      	lsls	r1, r3, #28
d05e05c6:	d42c      	bmi.n	d05e0622 <__swsetup_r+0x82>
d05e05c8:	06dd      	lsls	r5, r3, #27
d05e05ca:	d411      	bmi.n	d05e05f0 <__swsetup_r+0x50>
d05e05cc:	2309      	movs	r3, #9
d05e05ce:	6033      	str	r3, [r6, #0]
d05e05d0:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d05e05d4:	81a3      	strh	r3, [r4, #12]
d05e05d6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e05da:	e03e      	b.n	d05e065a <__swsetup_r+0xba>
d05e05dc:	4b25      	ldr	r3, [pc, #148]	; (d05e0674 <__swsetup_r+0xd4>)
d05e05de:	429c      	cmp	r4, r3
d05e05e0:	d101      	bne.n	d05e05e6 <__swsetup_r+0x46>
d05e05e2:	68ac      	ldr	r4, [r5, #8]
d05e05e4:	e7eb      	b.n	d05e05be <__swsetup_r+0x1e>
d05e05e6:	4b24      	ldr	r3, [pc, #144]	; (d05e0678 <__swsetup_r+0xd8>)
d05e05e8:	429c      	cmp	r4, r3
d05e05ea:	bf08      	it	eq
d05e05ec:	68ec      	ldreq	r4, [r5, #12]
d05e05ee:	e7e6      	b.n	d05e05be <__swsetup_r+0x1e>
d05e05f0:	0758      	lsls	r0, r3, #29
d05e05f2:	d512      	bpl.n	d05e061a <__swsetup_r+0x7a>
d05e05f4:	6b61      	ldr	r1, [r4, #52]	; 0x34
d05e05f6:	b141      	cbz	r1, d05e060a <__swsetup_r+0x6a>
d05e05f8:	f104 0344 	add.w	r3, r4, #68	; 0x44
d05e05fc:	4299      	cmp	r1, r3
d05e05fe:	d002      	beq.n	d05e0606 <__swsetup_r+0x66>
d05e0600:	4630      	mov	r0, r6
d05e0602:	f000 fa61 	bl	d05e0ac8 <_free_r>
d05e0606:	2300      	movs	r3, #0
d05e0608:	6363      	str	r3, [r4, #52]	; 0x34
d05e060a:	89a3      	ldrh	r3, [r4, #12]
d05e060c:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d05e0610:	81a3      	strh	r3, [r4, #12]
d05e0612:	2300      	movs	r3, #0
d05e0614:	6063      	str	r3, [r4, #4]
d05e0616:	6923      	ldr	r3, [r4, #16]
d05e0618:	6023      	str	r3, [r4, #0]
d05e061a:	89a3      	ldrh	r3, [r4, #12]
d05e061c:	f043 0308 	orr.w	r3, r3, #8
d05e0620:	81a3      	strh	r3, [r4, #12]
d05e0622:	6923      	ldr	r3, [r4, #16]
d05e0624:	b94b      	cbnz	r3, d05e063a <__swsetup_r+0x9a>
d05e0626:	89a3      	ldrh	r3, [r4, #12]
d05e0628:	f403 7320 	and.w	r3, r3, #640	; 0x280
d05e062c:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d05e0630:	d003      	beq.n	d05e063a <__swsetup_r+0x9a>
d05e0632:	4621      	mov	r1, r4
d05e0634:	4630      	mov	r0, r6
d05e0636:	f000 f9ff 	bl	d05e0a38 <__smakebuf_r>
d05e063a:	89a0      	ldrh	r0, [r4, #12]
d05e063c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d05e0640:	f010 0301 	ands.w	r3, r0, #1
d05e0644:	d00a      	beq.n	d05e065c <__swsetup_r+0xbc>
d05e0646:	2300      	movs	r3, #0
d05e0648:	60a3      	str	r3, [r4, #8]
d05e064a:	6963      	ldr	r3, [r4, #20]
d05e064c:	425b      	negs	r3, r3
d05e064e:	61a3      	str	r3, [r4, #24]
d05e0650:	6923      	ldr	r3, [r4, #16]
d05e0652:	b943      	cbnz	r3, d05e0666 <__swsetup_r+0xc6>
d05e0654:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d05e0658:	d1ba      	bne.n	d05e05d0 <__swsetup_r+0x30>
d05e065a:	bd70      	pop	{r4, r5, r6, pc}
d05e065c:	0781      	lsls	r1, r0, #30
d05e065e:	bf58      	it	pl
d05e0660:	6963      	ldrpl	r3, [r4, #20]
d05e0662:	60a3      	str	r3, [r4, #8]
d05e0664:	e7f4      	b.n	d05e0650 <__swsetup_r+0xb0>
d05e0666:	2000      	movs	r0, #0
d05e0668:	e7f7      	b.n	d05e065a <__swsetup_r+0xba>
d05e066a:	bf00      	nop
d05e066c:	d05e1674 	.word	0xd05e1674
d05e0670:	d05e15f8 	.word	0xd05e15f8
d05e0674:	d05e1618 	.word	0xd05e1618
d05e0678:	d05e15d8 	.word	0xd05e15d8

d05e067c <__sflush_r>:
d05e067c:	898a      	ldrh	r2, [r1, #12]
d05e067e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d05e0682:	4605      	mov	r5, r0
d05e0684:	0710      	lsls	r0, r2, #28
d05e0686:	460c      	mov	r4, r1
d05e0688:	d458      	bmi.n	d05e073c <__sflush_r+0xc0>
d05e068a:	684b      	ldr	r3, [r1, #4]
d05e068c:	2b00      	cmp	r3, #0
d05e068e:	dc05      	bgt.n	d05e069c <__sflush_r+0x20>
d05e0690:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d05e0692:	2b00      	cmp	r3, #0
d05e0694:	dc02      	bgt.n	d05e069c <__sflush_r+0x20>
d05e0696:	2000      	movs	r0, #0
d05e0698:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d05e069c:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d05e069e:	2e00      	cmp	r6, #0
d05e06a0:	d0f9      	beq.n	d05e0696 <__sflush_r+0x1a>
d05e06a2:	2300      	movs	r3, #0
d05e06a4:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d05e06a8:	682f      	ldr	r7, [r5, #0]
d05e06aa:	602b      	str	r3, [r5, #0]
d05e06ac:	d032      	beq.n	d05e0714 <__sflush_r+0x98>
d05e06ae:	6d60      	ldr	r0, [r4, #84]	; 0x54
d05e06b0:	89a3      	ldrh	r3, [r4, #12]
d05e06b2:	075a      	lsls	r2, r3, #29
d05e06b4:	d505      	bpl.n	d05e06c2 <__sflush_r+0x46>
d05e06b6:	6863      	ldr	r3, [r4, #4]
d05e06b8:	1ac0      	subs	r0, r0, r3
d05e06ba:	6b63      	ldr	r3, [r4, #52]	; 0x34
d05e06bc:	b10b      	cbz	r3, d05e06c2 <__sflush_r+0x46>
d05e06be:	6c23      	ldr	r3, [r4, #64]	; 0x40
d05e06c0:	1ac0      	subs	r0, r0, r3
d05e06c2:	2300      	movs	r3, #0
d05e06c4:	4602      	mov	r2, r0
d05e06c6:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d05e06c8:	6a21      	ldr	r1, [r4, #32]
d05e06ca:	4628      	mov	r0, r5
d05e06cc:	47b0      	blx	r6
d05e06ce:	1c43      	adds	r3, r0, #1
d05e06d0:	89a3      	ldrh	r3, [r4, #12]
d05e06d2:	d106      	bne.n	d05e06e2 <__sflush_r+0x66>
d05e06d4:	6829      	ldr	r1, [r5, #0]
d05e06d6:	291d      	cmp	r1, #29
d05e06d8:	d82c      	bhi.n	d05e0734 <__sflush_r+0xb8>
d05e06da:	4a2a      	ldr	r2, [pc, #168]	; (d05e0784 <__sflush_r+0x108>)
d05e06dc:	40ca      	lsrs	r2, r1
d05e06de:	07d6      	lsls	r6, r2, #31
d05e06e0:	d528      	bpl.n	d05e0734 <__sflush_r+0xb8>
d05e06e2:	2200      	movs	r2, #0
d05e06e4:	6062      	str	r2, [r4, #4]
d05e06e6:	04d9      	lsls	r1, r3, #19
d05e06e8:	6922      	ldr	r2, [r4, #16]
d05e06ea:	6022      	str	r2, [r4, #0]
d05e06ec:	d504      	bpl.n	d05e06f8 <__sflush_r+0x7c>
d05e06ee:	1c42      	adds	r2, r0, #1
d05e06f0:	d101      	bne.n	d05e06f6 <__sflush_r+0x7a>
d05e06f2:	682b      	ldr	r3, [r5, #0]
d05e06f4:	b903      	cbnz	r3, d05e06f8 <__sflush_r+0x7c>
d05e06f6:	6560      	str	r0, [r4, #84]	; 0x54
d05e06f8:	6b61      	ldr	r1, [r4, #52]	; 0x34
d05e06fa:	602f      	str	r7, [r5, #0]
d05e06fc:	2900      	cmp	r1, #0
d05e06fe:	d0ca      	beq.n	d05e0696 <__sflush_r+0x1a>
d05e0700:	f104 0344 	add.w	r3, r4, #68	; 0x44
d05e0704:	4299      	cmp	r1, r3
d05e0706:	d002      	beq.n	d05e070e <__sflush_r+0x92>
d05e0708:	4628      	mov	r0, r5
d05e070a:	f000 f9dd 	bl	d05e0ac8 <_free_r>
d05e070e:	2000      	movs	r0, #0
d05e0710:	6360      	str	r0, [r4, #52]	; 0x34
d05e0712:	e7c1      	b.n	d05e0698 <__sflush_r+0x1c>
d05e0714:	6a21      	ldr	r1, [r4, #32]
d05e0716:	2301      	movs	r3, #1
d05e0718:	4628      	mov	r0, r5
d05e071a:	47b0      	blx	r6
d05e071c:	1c41      	adds	r1, r0, #1
d05e071e:	d1c7      	bne.n	d05e06b0 <__sflush_r+0x34>
d05e0720:	682b      	ldr	r3, [r5, #0]
d05e0722:	2b00      	cmp	r3, #0
d05e0724:	d0c4      	beq.n	d05e06b0 <__sflush_r+0x34>
d05e0726:	2b1d      	cmp	r3, #29
d05e0728:	d001      	beq.n	d05e072e <__sflush_r+0xb2>
d05e072a:	2b16      	cmp	r3, #22
d05e072c:	d101      	bne.n	d05e0732 <__sflush_r+0xb6>
d05e072e:	602f      	str	r7, [r5, #0]
d05e0730:	e7b1      	b.n	d05e0696 <__sflush_r+0x1a>
d05e0732:	89a3      	ldrh	r3, [r4, #12]
d05e0734:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05e0738:	81a3      	strh	r3, [r4, #12]
d05e073a:	e7ad      	b.n	d05e0698 <__sflush_r+0x1c>
d05e073c:	690f      	ldr	r7, [r1, #16]
d05e073e:	2f00      	cmp	r7, #0
d05e0740:	d0a9      	beq.n	d05e0696 <__sflush_r+0x1a>
d05e0742:	0793      	lsls	r3, r2, #30
d05e0744:	680e      	ldr	r6, [r1, #0]
d05e0746:	bf08      	it	eq
d05e0748:	694b      	ldreq	r3, [r1, #20]
d05e074a:	600f      	str	r7, [r1, #0]
d05e074c:	bf18      	it	ne
d05e074e:	2300      	movne	r3, #0
d05e0750:	eba6 0807 	sub.w	r8, r6, r7
d05e0754:	608b      	str	r3, [r1, #8]
d05e0756:	f1b8 0f00 	cmp.w	r8, #0
d05e075a:	dd9c      	ble.n	d05e0696 <__sflush_r+0x1a>
d05e075c:	6a21      	ldr	r1, [r4, #32]
d05e075e:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d05e0760:	4643      	mov	r3, r8
d05e0762:	463a      	mov	r2, r7
d05e0764:	4628      	mov	r0, r5
d05e0766:	47b0      	blx	r6
d05e0768:	2800      	cmp	r0, #0
d05e076a:	dc06      	bgt.n	d05e077a <__sflush_r+0xfe>
d05e076c:	89a3      	ldrh	r3, [r4, #12]
d05e076e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05e0772:	81a3      	strh	r3, [r4, #12]
d05e0774:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e0778:	e78e      	b.n	d05e0698 <__sflush_r+0x1c>
d05e077a:	4407      	add	r7, r0
d05e077c:	eba8 0800 	sub.w	r8, r8, r0
d05e0780:	e7e9      	b.n	d05e0756 <__sflush_r+0xda>
d05e0782:	bf00      	nop
d05e0784:	20400001 	.word	0x20400001

d05e0788 <_fflush_r>:
d05e0788:	b538      	push	{r3, r4, r5, lr}
d05e078a:	690b      	ldr	r3, [r1, #16]
d05e078c:	4605      	mov	r5, r0
d05e078e:	460c      	mov	r4, r1
d05e0790:	b913      	cbnz	r3, d05e0798 <_fflush_r+0x10>
d05e0792:	2500      	movs	r5, #0
d05e0794:	4628      	mov	r0, r5
d05e0796:	bd38      	pop	{r3, r4, r5, pc}
d05e0798:	b118      	cbz	r0, d05e07a2 <_fflush_r+0x1a>
d05e079a:	6983      	ldr	r3, [r0, #24]
d05e079c:	b90b      	cbnz	r3, d05e07a2 <_fflush_r+0x1a>
d05e079e:	f000 f887 	bl	d05e08b0 <__sinit>
d05e07a2:	4b14      	ldr	r3, [pc, #80]	; (d05e07f4 <_fflush_r+0x6c>)
d05e07a4:	429c      	cmp	r4, r3
d05e07a6:	d11b      	bne.n	d05e07e0 <_fflush_r+0x58>
d05e07a8:	686c      	ldr	r4, [r5, #4]
d05e07aa:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d05e07ae:	2b00      	cmp	r3, #0
d05e07b0:	d0ef      	beq.n	d05e0792 <_fflush_r+0xa>
d05e07b2:	6e62      	ldr	r2, [r4, #100]	; 0x64
d05e07b4:	07d0      	lsls	r0, r2, #31
d05e07b6:	d404      	bmi.n	d05e07c2 <_fflush_r+0x3a>
d05e07b8:	0599      	lsls	r1, r3, #22
d05e07ba:	d402      	bmi.n	d05e07c2 <_fflush_r+0x3a>
d05e07bc:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05e07be:	f000 f915 	bl	d05e09ec <__retarget_lock_acquire_recursive>
d05e07c2:	4628      	mov	r0, r5
d05e07c4:	4621      	mov	r1, r4
d05e07c6:	f7ff ff59 	bl	d05e067c <__sflush_r>
d05e07ca:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05e07cc:	07da      	lsls	r2, r3, #31
d05e07ce:	4605      	mov	r5, r0
d05e07d0:	d4e0      	bmi.n	d05e0794 <_fflush_r+0xc>
d05e07d2:	89a3      	ldrh	r3, [r4, #12]
d05e07d4:	059b      	lsls	r3, r3, #22
d05e07d6:	d4dd      	bmi.n	d05e0794 <_fflush_r+0xc>
d05e07d8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05e07da:	f000 f908 	bl	d05e09ee <__retarget_lock_release_recursive>
d05e07de:	e7d9      	b.n	d05e0794 <_fflush_r+0xc>
d05e07e0:	4b05      	ldr	r3, [pc, #20]	; (d05e07f8 <_fflush_r+0x70>)
d05e07e2:	429c      	cmp	r4, r3
d05e07e4:	d101      	bne.n	d05e07ea <_fflush_r+0x62>
d05e07e6:	68ac      	ldr	r4, [r5, #8]
d05e07e8:	e7df      	b.n	d05e07aa <_fflush_r+0x22>
d05e07ea:	4b04      	ldr	r3, [pc, #16]	; (d05e07fc <_fflush_r+0x74>)
d05e07ec:	429c      	cmp	r4, r3
d05e07ee:	bf08      	it	eq
d05e07f0:	68ec      	ldreq	r4, [r5, #12]
d05e07f2:	e7da      	b.n	d05e07aa <_fflush_r+0x22>
d05e07f4:	d05e15f8 	.word	0xd05e15f8
d05e07f8:	d05e1618 	.word	0xd05e1618
d05e07fc:	d05e15d8 	.word	0xd05e15d8

d05e0800 <std>:
d05e0800:	2300      	movs	r3, #0
d05e0802:	b510      	push	{r4, lr}
d05e0804:	4604      	mov	r4, r0
d05e0806:	e9c0 3300 	strd	r3, r3, [r0]
d05e080a:	e9c0 3304 	strd	r3, r3, [r0, #16]
d05e080e:	6083      	str	r3, [r0, #8]
d05e0810:	8181      	strh	r1, [r0, #12]
d05e0812:	6643      	str	r3, [r0, #100]	; 0x64
d05e0814:	81c2      	strh	r2, [r0, #14]
d05e0816:	6183      	str	r3, [r0, #24]
d05e0818:	4619      	mov	r1, r3
d05e081a:	2208      	movs	r2, #8
d05e081c:	305c      	adds	r0, #92	; 0x5c
d05e081e:	f7ff fcf3 	bl	d05e0208 <memset>
d05e0822:	4b05      	ldr	r3, [pc, #20]	; (d05e0838 <std+0x38>)
d05e0824:	6263      	str	r3, [r4, #36]	; 0x24
d05e0826:	4b05      	ldr	r3, [pc, #20]	; (d05e083c <std+0x3c>)
d05e0828:	62a3      	str	r3, [r4, #40]	; 0x28
d05e082a:	4b05      	ldr	r3, [pc, #20]	; (d05e0840 <std+0x40>)
d05e082c:	62e3      	str	r3, [r4, #44]	; 0x2c
d05e082e:	4b05      	ldr	r3, [pc, #20]	; (d05e0844 <std+0x44>)
d05e0830:	6224      	str	r4, [r4, #32]
d05e0832:	6323      	str	r3, [r4, #48]	; 0x30
d05e0834:	bd10      	pop	{r4, pc}
d05e0836:	bf00      	nop
d05e0838:	d05e1289 	.word	0xd05e1289
d05e083c:	d05e12ab 	.word	0xd05e12ab
d05e0840:	d05e12e3 	.word	0xd05e12e3
d05e0844:	d05e1307 	.word	0xd05e1307

d05e0848 <_cleanup_r>:
d05e0848:	4901      	ldr	r1, [pc, #4]	; (d05e0850 <_cleanup_r+0x8>)
d05e084a:	f000 b8af 	b.w	d05e09ac <_fwalk_reent>
d05e084e:	bf00      	nop
d05e0850:	d05e0789 	.word	0xd05e0789

d05e0854 <__sfmoreglue>:
d05e0854:	b570      	push	{r4, r5, r6, lr}
d05e0856:	1e4a      	subs	r2, r1, #1
d05e0858:	2568      	movs	r5, #104	; 0x68
d05e085a:	4355      	muls	r5, r2
d05e085c:	460e      	mov	r6, r1
d05e085e:	f105 0174 	add.w	r1, r5, #116	; 0x74
d05e0862:	f000 f981 	bl	d05e0b68 <_malloc_r>
d05e0866:	4604      	mov	r4, r0
d05e0868:	b140      	cbz	r0, d05e087c <__sfmoreglue+0x28>
d05e086a:	2100      	movs	r1, #0
d05e086c:	e9c0 1600 	strd	r1, r6, [r0]
d05e0870:	300c      	adds	r0, #12
d05e0872:	60a0      	str	r0, [r4, #8]
d05e0874:	f105 0268 	add.w	r2, r5, #104	; 0x68
d05e0878:	f7ff fcc6 	bl	d05e0208 <memset>
d05e087c:	4620      	mov	r0, r4
d05e087e:	bd70      	pop	{r4, r5, r6, pc}

d05e0880 <__sfp_lock_acquire>:
d05e0880:	4801      	ldr	r0, [pc, #4]	; (d05e0888 <__sfp_lock_acquire+0x8>)
d05e0882:	f000 b8b3 	b.w	d05e09ec <__retarget_lock_acquire_recursive>
d05e0886:	bf00      	nop
d05e0888:	d05e16f0 	.word	0xd05e16f0

d05e088c <__sfp_lock_release>:
d05e088c:	4801      	ldr	r0, [pc, #4]	; (d05e0894 <__sfp_lock_release+0x8>)
d05e088e:	f000 b8ae 	b.w	d05e09ee <__retarget_lock_release_recursive>
d05e0892:	bf00      	nop
d05e0894:	d05e16f0 	.word	0xd05e16f0

d05e0898 <__sinit_lock_acquire>:
d05e0898:	4801      	ldr	r0, [pc, #4]	; (d05e08a0 <__sinit_lock_acquire+0x8>)
d05e089a:	f000 b8a7 	b.w	d05e09ec <__retarget_lock_acquire_recursive>
d05e089e:	bf00      	nop
d05e08a0:	d05e16eb 	.word	0xd05e16eb

d05e08a4 <__sinit_lock_release>:
d05e08a4:	4801      	ldr	r0, [pc, #4]	; (d05e08ac <__sinit_lock_release+0x8>)
d05e08a6:	f000 b8a2 	b.w	d05e09ee <__retarget_lock_release_recursive>
d05e08aa:	bf00      	nop
d05e08ac:	d05e16eb 	.word	0xd05e16eb

d05e08b0 <__sinit>:
d05e08b0:	b510      	push	{r4, lr}
d05e08b2:	4604      	mov	r4, r0
d05e08b4:	f7ff fff0 	bl	d05e0898 <__sinit_lock_acquire>
d05e08b8:	69a3      	ldr	r3, [r4, #24]
d05e08ba:	b11b      	cbz	r3, d05e08c4 <__sinit+0x14>
d05e08bc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d05e08c0:	f7ff bff0 	b.w	d05e08a4 <__sinit_lock_release>
d05e08c4:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d05e08c8:	6523      	str	r3, [r4, #80]	; 0x50
d05e08ca:	4b13      	ldr	r3, [pc, #76]	; (d05e0918 <__sinit+0x68>)
d05e08cc:	4a13      	ldr	r2, [pc, #76]	; (d05e091c <__sinit+0x6c>)
d05e08ce:	681b      	ldr	r3, [r3, #0]
d05e08d0:	62a2      	str	r2, [r4, #40]	; 0x28
d05e08d2:	42a3      	cmp	r3, r4
d05e08d4:	bf04      	itt	eq
d05e08d6:	2301      	moveq	r3, #1
d05e08d8:	61a3      	streq	r3, [r4, #24]
d05e08da:	4620      	mov	r0, r4
d05e08dc:	f000 f820 	bl	d05e0920 <__sfp>
d05e08e0:	6060      	str	r0, [r4, #4]
d05e08e2:	4620      	mov	r0, r4
d05e08e4:	f000 f81c 	bl	d05e0920 <__sfp>
d05e08e8:	60a0      	str	r0, [r4, #8]
d05e08ea:	4620      	mov	r0, r4
d05e08ec:	f000 f818 	bl	d05e0920 <__sfp>
d05e08f0:	2200      	movs	r2, #0
d05e08f2:	60e0      	str	r0, [r4, #12]
d05e08f4:	2104      	movs	r1, #4
d05e08f6:	6860      	ldr	r0, [r4, #4]
d05e08f8:	f7ff ff82 	bl	d05e0800 <std>
d05e08fc:	68a0      	ldr	r0, [r4, #8]
d05e08fe:	2201      	movs	r2, #1
d05e0900:	2109      	movs	r1, #9
d05e0902:	f7ff ff7d 	bl	d05e0800 <std>
d05e0906:	68e0      	ldr	r0, [r4, #12]
d05e0908:	2202      	movs	r2, #2
d05e090a:	2112      	movs	r1, #18
d05e090c:	f7ff ff78 	bl	d05e0800 <std>
d05e0910:	2301      	movs	r3, #1
d05e0912:	61a3      	str	r3, [r4, #24]
d05e0914:	e7d2      	b.n	d05e08bc <__sinit+0xc>
d05e0916:	bf00      	nop
d05e0918:	d05e15d4 	.word	0xd05e15d4
d05e091c:	d05e0849 	.word	0xd05e0849

d05e0920 <__sfp>:
d05e0920:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e0922:	4607      	mov	r7, r0
d05e0924:	f7ff ffac 	bl	d05e0880 <__sfp_lock_acquire>
d05e0928:	4b1e      	ldr	r3, [pc, #120]	; (d05e09a4 <__sfp+0x84>)
d05e092a:	681e      	ldr	r6, [r3, #0]
d05e092c:	69b3      	ldr	r3, [r6, #24]
d05e092e:	b913      	cbnz	r3, d05e0936 <__sfp+0x16>
d05e0930:	4630      	mov	r0, r6
d05e0932:	f7ff ffbd 	bl	d05e08b0 <__sinit>
d05e0936:	3648      	adds	r6, #72	; 0x48
d05e0938:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d05e093c:	3b01      	subs	r3, #1
d05e093e:	d503      	bpl.n	d05e0948 <__sfp+0x28>
d05e0940:	6833      	ldr	r3, [r6, #0]
d05e0942:	b30b      	cbz	r3, d05e0988 <__sfp+0x68>
d05e0944:	6836      	ldr	r6, [r6, #0]
d05e0946:	e7f7      	b.n	d05e0938 <__sfp+0x18>
d05e0948:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d05e094c:	b9d5      	cbnz	r5, d05e0984 <__sfp+0x64>
d05e094e:	4b16      	ldr	r3, [pc, #88]	; (d05e09a8 <__sfp+0x88>)
d05e0950:	60e3      	str	r3, [r4, #12]
d05e0952:	f104 0058 	add.w	r0, r4, #88	; 0x58
d05e0956:	6665      	str	r5, [r4, #100]	; 0x64
d05e0958:	f000 f847 	bl	d05e09ea <__retarget_lock_init_recursive>
d05e095c:	f7ff ff96 	bl	d05e088c <__sfp_lock_release>
d05e0960:	e9c4 5501 	strd	r5, r5, [r4, #4]
d05e0964:	e9c4 5504 	strd	r5, r5, [r4, #16]
d05e0968:	6025      	str	r5, [r4, #0]
d05e096a:	61a5      	str	r5, [r4, #24]
d05e096c:	2208      	movs	r2, #8
d05e096e:	4629      	mov	r1, r5
d05e0970:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d05e0974:	f7ff fc48 	bl	d05e0208 <memset>
d05e0978:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d05e097c:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d05e0980:	4620      	mov	r0, r4
d05e0982:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e0984:	3468      	adds	r4, #104	; 0x68
d05e0986:	e7d9      	b.n	d05e093c <__sfp+0x1c>
d05e0988:	2104      	movs	r1, #4
d05e098a:	4638      	mov	r0, r7
d05e098c:	f7ff ff62 	bl	d05e0854 <__sfmoreglue>
d05e0990:	4604      	mov	r4, r0
d05e0992:	6030      	str	r0, [r6, #0]
d05e0994:	2800      	cmp	r0, #0
d05e0996:	d1d5      	bne.n	d05e0944 <__sfp+0x24>
d05e0998:	f7ff ff78 	bl	d05e088c <__sfp_lock_release>
d05e099c:	230c      	movs	r3, #12
d05e099e:	603b      	str	r3, [r7, #0]
d05e09a0:	e7ee      	b.n	d05e0980 <__sfp+0x60>
d05e09a2:	bf00      	nop
d05e09a4:	d05e15d4 	.word	0xd05e15d4
d05e09a8:	ffff0001 	.word	0xffff0001

d05e09ac <_fwalk_reent>:
d05e09ac:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d05e09b0:	4606      	mov	r6, r0
d05e09b2:	4688      	mov	r8, r1
d05e09b4:	f100 0448 	add.w	r4, r0, #72	; 0x48
d05e09b8:	2700      	movs	r7, #0
d05e09ba:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d05e09be:	f1b9 0901 	subs.w	r9, r9, #1
d05e09c2:	d505      	bpl.n	d05e09d0 <_fwalk_reent+0x24>
d05e09c4:	6824      	ldr	r4, [r4, #0]
d05e09c6:	2c00      	cmp	r4, #0
d05e09c8:	d1f7      	bne.n	d05e09ba <_fwalk_reent+0xe>
d05e09ca:	4638      	mov	r0, r7
d05e09cc:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d05e09d0:	89ab      	ldrh	r3, [r5, #12]
d05e09d2:	2b01      	cmp	r3, #1
d05e09d4:	d907      	bls.n	d05e09e6 <_fwalk_reent+0x3a>
d05e09d6:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d05e09da:	3301      	adds	r3, #1
d05e09dc:	d003      	beq.n	d05e09e6 <_fwalk_reent+0x3a>
d05e09de:	4629      	mov	r1, r5
d05e09e0:	4630      	mov	r0, r6
d05e09e2:	47c0      	blx	r8
d05e09e4:	4307      	orrs	r7, r0
d05e09e6:	3568      	adds	r5, #104	; 0x68
d05e09e8:	e7e9      	b.n	d05e09be <_fwalk_reent+0x12>

d05e09ea <__retarget_lock_init_recursive>:
d05e09ea:	4770      	bx	lr

d05e09ec <__retarget_lock_acquire_recursive>:
d05e09ec:	4770      	bx	lr

d05e09ee <__retarget_lock_release_recursive>:
d05e09ee:	4770      	bx	lr

d05e09f0 <__swhatbuf_r>:
d05e09f0:	b570      	push	{r4, r5, r6, lr}
d05e09f2:	460e      	mov	r6, r1
d05e09f4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05e09f8:	2900      	cmp	r1, #0
d05e09fa:	b096      	sub	sp, #88	; 0x58
d05e09fc:	4614      	mov	r4, r2
d05e09fe:	461d      	mov	r5, r3
d05e0a00:	da07      	bge.n	d05e0a12 <__swhatbuf_r+0x22>
d05e0a02:	2300      	movs	r3, #0
d05e0a04:	602b      	str	r3, [r5, #0]
d05e0a06:	89b3      	ldrh	r3, [r6, #12]
d05e0a08:	061a      	lsls	r2, r3, #24
d05e0a0a:	d410      	bmi.n	d05e0a2e <__swhatbuf_r+0x3e>
d05e0a0c:	f44f 6380 	mov.w	r3, #1024	; 0x400
d05e0a10:	e00e      	b.n	d05e0a30 <__swhatbuf_r+0x40>
d05e0a12:	466a      	mov	r2, sp
d05e0a14:	f000 fc8c 	bl	d05e1330 <_fstat_r>
d05e0a18:	2800      	cmp	r0, #0
d05e0a1a:	dbf2      	blt.n	d05e0a02 <__swhatbuf_r+0x12>
d05e0a1c:	9a01      	ldr	r2, [sp, #4]
d05e0a1e:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d05e0a22:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d05e0a26:	425a      	negs	r2, r3
d05e0a28:	415a      	adcs	r2, r3
d05e0a2a:	602a      	str	r2, [r5, #0]
d05e0a2c:	e7ee      	b.n	d05e0a0c <__swhatbuf_r+0x1c>
d05e0a2e:	2340      	movs	r3, #64	; 0x40
d05e0a30:	2000      	movs	r0, #0
d05e0a32:	6023      	str	r3, [r4, #0]
d05e0a34:	b016      	add	sp, #88	; 0x58
d05e0a36:	bd70      	pop	{r4, r5, r6, pc}

d05e0a38 <__smakebuf_r>:
d05e0a38:	898b      	ldrh	r3, [r1, #12]
d05e0a3a:	b573      	push	{r0, r1, r4, r5, r6, lr}
d05e0a3c:	079d      	lsls	r5, r3, #30
d05e0a3e:	4606      	mov	r6, r0
d05e0a40:	460c      	mov	r4, r1
d05e0a42:	d507      	bpl.n	d05e0a54 <__smakebuf_r+0x1c>
d05e0a44:	f104 0347 	add.w	r3, r4, #71	; 0x47
d05e0a48:	6023      	str	r3, [r4, #0]
d05e0a4a:	6123      	str	r3, [r4, #16]
d05e0a4c:	2301      	movs	r3, #1
d05e0a4e:	6163      	str	r3, [r4, #20]
d05e0a50:	b002      	add	sp, #8
d05e0a52:	bd70      	pop	{r4, r5, r6, pc}
d05e0a54:	ab01      	add	r3, sp, #4
d05e0a56:	466a      	mov	r2, sp
d05e0a58:	f7ff ffca 	bl	d05e09f0 <__swhatbuf_r>
d05e0a5c:	9900      	ldr	r1, [sp, #0]
d05e0a5e:	4605      	mov	r5, r0
d05e0a60:	4630      	mov	r0, r6
d05e0a62:	f000 f881 	bl	d05e0b68 <_malloc_r>
d05e0a66:	b948      	cbnz	r0, d05e0a7c <__smakebuf_r+0x44>
d05e0a68:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d05e0a6c:	059a      	lsls	r2, r3, #22
d05e0a6e:	d4ef      	bmi.n	d05e0a50 <__smakebuf_r+0x18>
d05e0a70:	f023 0303 	bic.w	r3, r3, #3
d05e0a74:	f043 0302 	orr.w	r3, r3, #2
d05e0a78:	81a3      	strh	r3, [r4, #12]
d05e0a7a:	e7e3      	b.n	d05e0a44 <__smakebuf_r+0xc>
d05e0a7c:	4b0d      	ldr	r3, [pc, #52]	; (d05e0ab4 <__smakebuf_r+0x7c>)
d05e0a7e:	62b3      	str	r3, [r6, #40]	; 0x28
d05e0a80:	89a3      	ldrh	r3, [r4, #12]
d05e0a82:	6020      	str	r0, [r4, #0]
d05e0a84:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d05e0a88:	81a3      	strh	r3, [r4, #12]
d05e0a8a:	9b00      	ldr	r3, [sp, #0]
d05e0a8c:	6163      	str	r3, [r4, #20]
d05e0a8e:	9b01      	ldr	r3, [sp, #4]
d05e0a90:	6120      	str	r0, [r4, #16]
d05e0a92:	b15b      	cbz	r3, d05e0aac <__smakebuf_r+0x74>
d05e0a94:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d05e0a98:	4630      	mov	r0, r6
d05e0a9a:	f000 fc5b 	bl	d05e1354 <_isatty_r>
d05e0a9e:	b128      	cbz	r0, d05e0aac <__smakebuf_r+0x74>
d05e0aa0:	89a3      	ldrh	r3, [r4, #12]
d05e0aa2:	f023 0303 	bic.w	r3, r3, #3
d05e0aa6:	f043 0301 	orr.w	r3, r3, #1
d05e0aaa:	81a3      	strh	r3, [r4, #12]
d05e0aac:	89a0      	ldrh	r0, [r4, #12]
d05e0aae:	4305      	orrs	r5, r0
d05e0ab0:	81a5      	strh	r5, [r4, #12]
d05e0ab2:	e7cd      	b.n	d05e0a50 <__smakebuf_r+0x18>
d05e0ab4:	d05e0849 	.word	0xd05e0849

d05e0ab8 <malloc>:
d05e0ab8:	4b02      	ldr	r3, [pc, #8]	; (d05e0ac4 <malloc+0xc>)
d05e0aba:	4601      	mov	r1, r0
d05e0abc:	6818      	ldr	r0, [r3, #0]
d05e0abe:	f000 b853 	b.w	d05e0b68 <_malloc_r>
d05e0ac2:	bf00      	nop
d05e0ac4:	d05e1674 	.word	0xd05e1674

d05e0ac8 <_free_r>:
d05e0ac8:	b537      	push	{r0, r1, r2, r4, r5, lr}
d05e0aca:	2900      	cmp	r1, #0
d05e0acc:	d048      	beq.n	d05e0b60 <_free_r+0x98>
d05e0ace:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05e0ad2:	9001      	str	r0, [sp, #4]
d05e0ad4:	2b00      	cmp	r3, #0
d05e0ad6:	f1a1 0404 	sub.w	r4, r1, #4
d05e0ada:	bfb8      	it	lt
d05e0adc:	18e4      	addlt	r4, r4, r3
d05e0ade:	f000 fcaf 	bl	d05e1440 <__malloc_lock>
d05e0ae2:	4a20      	ldr	r2, [pc, #128]	; (d05e0b64 <_free_r+0x9c>)
d05e0ae4:	9801      	ldr	r0, [sp, #4]
d05e0ae6:	6813      	ldr	r3, [r2, #0]
d05e0ae8:	4615      	mov	r5, r2
d05e0aea:	b933      	cbnz	r3, d05e0afa <_free_r+0x32>
d05e0aec:	6063      	str	r3, [r4, #4]
d05e0aee:	6014      	str	r4, [r2, #0]
d05e0af0:	b003      	add	sp, #12
d05e0af2:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d05e0af6:	f000 bca9 	b.w	d05e144c <__malloc_unlock>
d05e0afa:	42a3      	cmp	r3, r4
d05e0afc:	d90b      	bls.n	d05e0b16 <_free_r+0x4e>
d05e0afe:	6821      	ldr	r1, [r4, #0]
d05e0b00:	1862      	adds	r2, r4, r1
d05e0b02:	4293      	cmp	r3, r2
d05e0b04:	bf04      	itt	eq
d05e0b06:	681a      	ldreq	r2, [r3, #0]
d05e0b08:	685b      	ldreq	r3, [r3, #4]
d05e0b0a:	6063      	str	r3, [r4, #4]
d05e0b0c:	bf04      	itt	eq
d05e0b0e:	1852      	addeq	r2, r2, r1
d05e0b10:	6022      	streq	r2, [r4, #0]
d05e0b12:	602c      	str	r4, [r5, #0]
d05e0b14:	e7ec      	b.n	d05e0af0 <_free_r+0x28>
d05e0b16:	461a      	mov	r2, r3
d05e0b18:	685b      	ldr	r3, [r3, #4]
d05e0b1a:	b10b      	cbz	r3, d05e0b20 <_free_r+0x58>
d05e0b1c:	42a3      	cmp	r3, r4
d05e0b1e:	d9fa      	bls.n	d05e0b16 <_free_r+0x4e>
d05e0b20:	6811      	ldr	r1, [r2, #0]
d05e0b22:	1855      	adds	r5, r2, r1
d05e0b24:	42a5      	cmp	r5, r4
d05e0b26:	d10b      	bne.n	d05e0b40 <_free_r+0x78>
d05e0b28:	6824      	ldr	r4, [r4, #0]
d05e0b2a:	4421      	add	r1, r4
d05e0b2c:	1854      	adds	r4, r2, r1
d05e0b2e:	42a3      	cmp	r3, r4
d05e0b30:	6011      	str	r1, [r2, #0]
d05e0b32:	d1dd      	bne.n	d05e0af0 <_free_r+0x28>
d05e0b34:	681c      	ldr	r4, [r3, #0]
d05e0b36:	685b      	ldr	r3, [r3, #4]
d05e0b38:	6053      	str	r3, [r2, #4]
d05e0b3a:	4421      	add	r1, r4
d05e0b3c:	6011      	str	r1, [r2, #0]
d05e0b3e:	e7d7      	b.n	d05e0af0 <_free_r+0x28>
d05e0b40:	d902      	bls.n	d05e0b48 <_free_r+0x80>
d05e0b42:	230c      	movs	r3, #12
d05e0b44:	6003      	str	r3, [r0, #0]
d05e0b46:	e7d3      	b.n	d05e0af0 <_free_r+0x28>
d05e0b48:	6825      	ldr	r5, [r4, #0]
d05e0b4a:	1961      	adds	r1, r4, r5
d05e0b4c:	428b      	cmp	r3, r1
d05e0b4e:	bf04      	itt	eq
d05e0b50:	6819      	ldreq	r1, [r3, #0]
d05e0b52:	685b      	ldreq	r3, [r3, #4]
d05e0b54:	6063      	str	r3, [r4, #4]
d05e0b56:	bf04      	itt	eq
d05e0b58:	1949      	addeq	r1, r1, r5
d05e0b5a:	6021      	streq	r1, [r4, #0]
d05e0b5c:	6054      	str	r4, [r2, #4]
d05e0b5e:	e7c7      	b.n	d05e0af0 <_free_r+0x28>
d05e0b60:	b003      	add	sp, #12
d05e0b62:	bd30      	pop	{r4, r5, pc}
d05e0b64:	d05e16e0 	.word	0xd05e16e0

d05e0b68 <_malloc_r>:
d05e0b68:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e0b6a:	1ccd      	adds	r5, r1, #3
d05e0b6c:	f025 0503 	bic.w	r5, r5, #3
d05e0b70:	3508      	adds	r5, #8
d05e0b72:	2d0c      	cmp	r5, #12
d05e0b74:	bf38      	it	cc
d05e0b76:	250c      	movcc	r5, #12
d05e0b78:	2d00      	cmp	r5, #0
d05e0b7a:	4606      	mov	r6, r0
d05e0b7c:	db01      	blt.n	d05e0b82 <_malloc_r+0x1a>
d05e0b7e:	42a9      	cmp	r1, r5
d05e0b80:	d903      	bls.n	d05e0b8a <_malloc_r+0x22>
d05e0b82:	230c      	movs	r3, #12
d05e0b84:	6033      	str	r3, [r6, #0]
d05e0b86:	2000      	movs	r0, #0
d05e0b88:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e0b8a:	f000 fc59 	bl	d05e1440 <__malloc_lock>
d05e0b8e:	4921      	ldr	r1, [pc, #132]	; (d05e0c14 <_malloc_r+0xac>)
d05e0b90:	680a      	ldr	r2, [r1, #0]
d05e0b92:	4614      	mov	r4, r2
d05e0b94:	b99c      	cbnz	r4, d05e0bbe <_malloc_r+0x56>
d05e0b96:	4f20      	ldr	r7, [pc, #128]	; (d05e0c18 <_malloc_r+0xb0>)
d05e0b98:	683b      	ldr	r3, [r7, #0]
d05e0b9a:	b923      	cbnz	r3, d05e0ba6 <_malloc_r+0x3e>
d05e0b9c:	4621      	mov	r1, r4
d05e0b9e:	4630      	mov	r0, r6
d05e0ba0:	f7ff fa92 	bl	d05e00c8 <_sbrk_r>
d05e0ba4:	6038      	str	r0, [r7, #0]
d05e0ba6:	4629      	mov	r1, r5
d05e0ba8:	4630      	mov	r0, r6
d05e0baa:	f7ff fa8d 	bl	d05e00c8 <_sbrk_r>
d05e0bae:	1c43      	adds	r3, r0, #1
d05e0bb0:	d123      	bne.n	d05e0bfa <_malloc_r+0x92>
d05e0bb2:	230c      	movs	r3, #12
d05e0bb4:	6033      	str	r3, [r6, #0]
d05e0bb6:	4630      	mov	r0, r6
d05e0bb8:	f000 fc48 	bl	d05e144c <__malloc_unlock>
d05e0bbc:	e7e3      	b.n	d05e0b86 <_malloc_r+0x1e>
d05e0bbe:	6823      	ldr	r3, [r4, #0]
d05e0bc0:	1b5b      	subs	r3, r3, r5
d05e0bc2:	d417      	bmi.n	d05e0bf4 <_malloc_r+0x8c>
d05e0bc4:	2b0b      	cmp	r3, #11
d05e0bc6:	d903      	bls.n	d05e0bd0 <_malloc_r+0x68>
d05e0bc8:	6023      	str	r3, [r4, #0]
d05e0bca:	441c      	add	r4, r3
d05e0bcc:	6025      	str	r5, [r4, #0]
d05e0bce:	e004      	b.n	d05e0bda <_malloc_r+0x72>
d05e0bd0:	6863      	ldr	r3, [r4, #4]
d05e0bd2:	42a2      	cmp	r2, r4
d05e0bd4:	bf0c      	ite	eq
d05e0bd6:	600b      	streq	r3, [r1, #0]
d05e0bd8:	6053      	strne	r3, [r2, #4]
d05e0bda:	4630      	mov	r0, r6
d05e0bdc:	f000 fc36 	bl	d05e144c <__malloc_unlock>
d05e0be0:	f104 000b 	add.w	r0, r4, #11
d05e0be4:	1d23      	adds	r3, r4, #4
d05e0be6:	f020 0007 	bic.w	r0, r0, #7
d05e0bea:	1ac2      	subs	r2, r0, r3
d05e0bec:	d0cc      	beq.n	d05e0b88 <_malloc_r+0x20>
d05e0bee:	1a1b      	subs	r3, r3, r0
d05e0bf0:	50a3      	str	r3, [r4, r2]
d05e0bf2:	e7c9      	b.n	d05e0b88 <_malloc_r+0x20>
d05e0bf4:	4622      	mov	r2, r4
d05e0bf6:	6864      	ldr	r4, [r4, #4]
d05e0bf8:	e7cc      	b.n	d05e0b94 <_malloc_r+0x2c>
d05e0bfa:	1cc4      	adds	r4, r0, #3
d05e0bfc:	f024 0403 	bic.w	r4, r4, #3
d05e0c00:	42a0      	cmp	r0, r4
d05e0c02:	d0e3      	beq.n	d05e0bcc <_malloc_r+0x64>
d05e0c04:	1a21      	subs	r1, r4, r0
d05e0c06:	4630      	mov	r0, r6
d05e0c08:	f7ff fa5e 	bl	d05e00c8 <_sbrk_r>
d05e0c0c:	3001      	adds	r0, #1
d05e0c0e:	d1dd      	bne.n	d05e0bcc <_malloc_r+0x64>
d05e0c10:	e7cf      	b.n	d05e0bb2 <_malloc_r+0x4a>
d05e0c12:	bf00      	nop
d05e0c14:	d05e16e0 	.word	0xd05e16e0
d05e0c18:	d05e16e4 	.word	0xd05e16e4

d05e0c1c <__sfputc_r>:
d05e0c1c:	6893      	ldr	r3, [r2, #8]
d05e0c1e:	3b01      	subs	r3, #1
d05e0c20:	2b00      	cmp	r3, #0
d05e0c22:	b410      	push	{r4}
d05e0c24:	6093      	str	r3, [r2, #8]
d05e0c26:	da08      	bge.n	d05e0c3a <__sfputc_r+0x1e>
d05e0c28:	6994      	ldr	r4, [r2, #24]
d05e0c2a:	42a3      	cmp	r3, r4
d05e0c2c:	db01      	blt.n	d05e0c32 <__sfputc_r+0x16>
d05e0c2e:	290a      	cmp	r1, #10
d05e0c30:	d103      	bne.n	d05e0c3a <__sfputc_r+0x1e>
d05e0c32:	f85d 4b04 	ldr.w	r4, [sp], #4
d05e0c36:	f7ff bc61 	b.w	d05e04fc <__swbuf_r>
d05e0c3a:	6813      	ldr	r3, [r2, #0]
d05e0c3c:	1c58      	adds	r0, r3, #1
d05e0c3e:	6010      	str	r0, [r2, #0]
d05e0c40:	7019      	strb	r1, [r3, #0]
d05e0c42:	4608      	mov	r0, r1
d05e0c44:	f85d 4b04 	ldr.w	r4, [sp], #4
d05e0c48:	4770      	bx	lr

d05e0c4a <__sfputs_r>:
d05e0c4a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e0c4c:	4606      	mov	r6, r0
d05e0c4e:	460f      	mov	r7, r1
d05e0c50:	4614      	mov	r4, r2
d05e0c52:	18d5      	adds	r5, r2, r3
d05e0c54:	42ac      	cmp	r4, r5
d05e0c56:	d101      	bne.n	d05e0c5c <__sfputs_r+0x12>
d05e0c58:	2000      	movs	r0, #0
d05e0c5a:	e007      	b.n	d05e0c6c <__sfputs_r+0x22>
d05e0c5c:	f814 1b01 	ldrb.w	r1, [r4], #1
d05e0c60:	463a      	mov	r2, r7
d05e0c62:	4630      	mov	r0, r6
d05e0c64:	f7ff ffda 	bl	d05e0c1c <__sfputc_r>
d05e0c68:	1c43      	adds	r3, r0, #1
d05e0c6a:	d1f3      	bne.n	d05e0c54 <__sfputs_r+0xa>
d05e0c6c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

d05e0c70 <_vfiprintf_r>:
d05e0c70:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05e0c74:	460d      	mov	r5, r1
d05e0c76:	b09d      	sub	sp, #116	; 0x74
d05e0c78:	4614      	mov	r4, r2
d05e0c7a:	4698      	mov	r8, r3
d05e0c7c:	4606      	mov	r6, r0
d05e0c7e:	b118      	cbz	r0, d05e0c88 <_vfiprintf_r+0x18>
d05e0c80:	6983      	ldr	r3, [r0, #24]
d05e0c82:	b90b      	cbnz	r3, d05e0c88 <_vfiprintf_r+0x18>
d05e0c84:	f7ff fe14 	bl	d05e08b0 <__sinit>
d05e0c88:	4b89      	ldr	r3, [pc, #548]	; (d05e0eb0 <_vfiprintf_r+0x240>)
d05e0c8a:	429d      	cmp	r5, r3
d05e0c8c:	d11b      	bne.n	d05e0cc6 <_vfiprintf_r+0x56>
d05e0c8e:	6875      	ldr	r5, [r6, #4]
d05e0c90:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d05e0c92:	07d9      	lsls	r1, r3, #31
d05e0c94:	d405      	bmi.n	d05e0ca2 <_vfiprintf_r+0x32>
d05e0c96:	89ab      	ldrh	r3, [r5, #12]
d05e0c98:	059a      	lsls	r2, r3, #22
d05e0c9a:	d402      	bmi.n	d05e0ca2 <_vfiprintf_r+0x32>
d05e0c9c:	6da8      	ldr	r0, [r5, #88]	; 0x58
d05e0c9e:	f7ff fea5 	bl	d05e09ec <__retarget_lock_acquire_recursive>
d05e0ca2:	89ab      	ldrh	r3, [r5, #12]
d05e0ca4:	071b      	lsls	r3, r3, #28
d05e0ca6:	d501      	bpl.n	d05e0cac <_vfiprintf_r+0x3c>
d05e0ca8:	692b      	ldr	r3, [r5, #16]
d05e0caa:	b9eb      	cbnz	r3, d05e0ce8 <_vfiprintf_r+0x78>
d05e0cac:	4629      	mov	r1, r5
d05e0cae:	4630      	mov	r0, r6
d05e0cb0:	f7ff fc76 	bl	d05e05a0 <__swsetup_r>
d05e0cb4:	b1c0      	cbz	r0, d05e0ce8 <_vfiprintf_r+0x78>
d05e0cb6:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d05e0cb8:	07dc      	lsls	r4, r3, #31
d05e0cba:	d50e      	bpl.n	d05e0cda <_vfiprintf_r+0x6a>
d05e0cbc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e0cc0:	b01d      	add	sp, #116	; 0x74
d05e0cc2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05e0cc6:	4b7b      	ldr	r3, [pc, #492]	; (d05e0eb4 <_vfiprintf_r+0x244>)
d05e0cc8:	429d      	cmp	r5, r3
d05e0cca:	d101      	bne.n	d05e0cd0 <_vfiprintf_r+0x60>
d05e0ccc:	68b5      	ldr	r5, [r6, #8]
d05e0cce:	e7df      	b.n	d05e0c90 <_vfiprintf_r+0x20>
d05e0cd0:	4b79      	ldr	r3, [pc, #484]	; (d05e0eb8 <_vfiprintf_r+0x248>)
d05e0cd2:	429d      	cmp	r5, r3
d05e0cd4:	bf08      	it	eq
d05e0cd6:	68f5      	ldreq	r5, [r6, #12]
d05e0cd8:	e7da      	b.n	d05e0c90 <_vfiprintf_r+0x20>
d05e0cda:	89ab      	ldrh	r3, [r5, #12]
d05e0cdc:	0598      	lsls	r0, r3, #22
d05e0cde:	d4ed      	bmi.n	d05e0cbc <_vfiprintf_r+0x4c>
d05e0ce0:	6da8      	ldr	r0, [r5, #88]	; 0x58
d05e0ce2:	f7ff fe84 	bl	d05e09ee <__retarget_lock_release_recursive>
d05e0ce6:	e7e9      	b.n	d05e0cbc <_vfiprintf_r+0x4c>
d05e0ce8:	2300      	movs	r3, #0
d05e0cea:	9309      	str	r3, [sp, #36]	; 0x24
d05e0cec:	2320      	movs	r3, #32
d05e0cee:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d05e0cf2:	f8cd 800c 	str.w	r8, [sp, #12]
d05e0cf6:	2330      	movs	r3, #48	; 0x30
d05e0cf8:	f8df 81c0 	ldr.w	r8, [pc, #448]	; d05e0ebc <_vfiprintf_r+0x24c>
d05e0cfc:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d05e0d00:	f04f 0901 	mov.w	r9, #1
d05e0d04:	4623      	mov	r3, r4
d05e0d06:	469a      	mov	sl, r3
d05e0d08:	f813 2b01 	ldrb.w	r2, [r3], #1
d05e0d0c:	b10a      	cbz	r2, d05e0d12 <_vfiprintf_r+0xa2>
d05e0d0e:	2a25      	cmp	r2, #37	; 0x25
d05e0d10:	d1f9      	bne.n	d05e0d06 <_vfiprintf_r+0x96>
d05e0d12:	ebba 0b04 	subs.w	fp, sl, r4
d05e0d16:	d00b      	beq.n	d05e0d30 <_vfiprintf_r+0xc0>
d05e0d18:	465b      	mov	r3, fp
d05e0d1a:	4622      	mov	r2, r4
d05e0d1c:	4629      	mov	r1, r5
d05e0d1e:	4630      	mov	r0, r6
d05e0d20:	f7ff ff93 	bl	d05e0c4a <__sfputs_r>
d05e0d24:	3001      	adds	r0, #1
d05e0d26:	f000 80aa 	beq.w	d05e0e7e <_vfiprintf_r+0x20e>
d05e0d2a:	9a09      	ldr	r2, [sp, #36]	; 0x24
d05e0d2c:	445a      	add	r2, fp
d05e0d2e:	9209      	str	r2, [sp, #36]	; 0x24
d05e0d30:	f89a 3000 	ldrb.w	r3, [sl]
d05e0d34:	2b00      	cmp	r3, #0
d05e0d36:	f000 80a2 	beq.w	d05e0e7e <_vfiprintf_r+0x20e>
d05e0d3a:	2300      	movs	r3, #0
d05e0d3c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d05e0d40:	e9cd 2305 	strd	r2, r3, [sp, #20]
d05e0d44:	f10a 0a01 	add.w	sl, sl, #1
d05e0d48:	9304      	str	r3, [sp, #16]
d05e0d4a:	9307      	str	r3, [sp, #28]
d05e0d4c:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d05e0d50:	931a      	str	r3, [sp, #104]	; 0x68
d05e0d52:	4654      	mov	r4, sl
d05e0d54:	2205      	movs	r2, #5
d05e0d56:	f814 1b01 	ldrb.w	r1, [r4], #1
d05e0d5a:	4858      	ldr	r0, [pc, #352]	; (d05e0ebc <_vfiprintf_r+0x24c>)
d05e0d5c:	f000 fb20 	bl	d05e13a0 <memchr>
d05e0d60:	9a04      	ldr	r2, [sp, #16]
d05e0d62:	b9d8      	cbnz	r0, d05e0d9c <_vfiprintf_r+0x12c>
d05e0d64:	06d1      	lsls	r1, r2, #27
d05e0d66:	bf44      	itt	mi
d05e0d68:	2320      	movmi	r3, #32
d05e0d6a:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05e0d6e:	0713      	lsls	r3, r2, #28
d05e0d70:	bf44      	itt	mi
d05e0d72:	232b      	movmi	r3, #43	; 0x2b
d05e0d74:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05e0d78:	f89a 3000 	ldrb.w	r3, [sl]
d05e0d7c:	2b2a      	cmp	r3, #42	; 0x2a
d05e0d7e:	d015      	beq.n	d05e0dac <_vfiprintf_r+0x13c>
d05e0d80:	9a07      	ldr	r2, [sp, #28]
d05e0d82:	4654      	mov	r4, sl
d05e0d84:	2000      	movs	r0, #0
d05e0d86:	f04f 0c0a 	mov.w	ip, #10
d05e0d8a:	4621      	mov	r1, r4
d05e0d8c:	f811 3b01 	ldrb.w	r3, [r1], #1
d05e0d90:	3b30      	subs	r3, #48	; 0x30
d05e0d92:	2b09      	cmp	r3, #9
d05e0d94:	d94e      	bls.n	d05e0e34 <_vfiprintf_r+0x1c4>
d05e0d96:	b1b0      	cbz	r0, d05e0dc6 <_vfiprintf_r+0x156>
d05e0d98:	9207      	str	r2, [sp, #28]
d05e0d9a:	e014      	b.n	d05e0dc6 <_vfiprintf_r+0x156>
d05e0d9c:	eba0 0308 	sub.w	r3, r0, r8
d05e0da0:	fa09 f303 	lsl.w	r3, r9, r3
d05e0da4:	4313      	orrs	r3, r2
d05e0da6:	9304      	str	r3, [sp, #16]
d05e0da8:	46a2      	mov	sl, r4
d05e0daa:	e7d2      	b.n	d05e0d52 <_vfiprintf_r+0xe2>
d05e0dac:	9b03      	ldr	r3, [sp, #12]
d05e0dae:	1d19      	adds	r1, r3, #4
d05e0db0:	681b      	ldr	r3, [r3, #0]
d05e0db2:	9103      	str	r1, [sp, #12]
d05e0db4:	2b00      	cmp	r3, #0
d05e0db6:	bfbb      	ittet	lt
d05e0db8:	425b      	neglt	r3, r3
d05e0dba:	f042 0202 	orrlt.w	r2, r2, #2
d05e0dbe:	9307      	strge	r3, [sp, #28]
d05e0dc0:	9307      	strlt	r3, [sp, #28]
d05e0dc2:	bfb8      	it	lt
d05e0dc4:	9204      	strlt	r2, [sp, #16]
d05e0dc6:	7823      	ldrb	r3, [r4, #0]
d05e0dc8:	2b2e      	cmp	r3, #46	; 0x2e
d05e0dca:	d10c      	bne.n	d05e0de6 <_vfiprintf_r+0x176>
d05e0dcc:	7863      	ldrb	r3, [r4, #1]
d05e0dce:	2b2a      	cmp	r3, #42	; 0x2a
d05e0dd0:	d135      	bne.n	d05e0e3e <_vfiprintf_r+0x1ce>
d05e0dd2:	9b03      	ldr	r3, [sp, #12]
d05e0dd4:	1d1a      	adds	r2, r3, #4
d05e0dd6:	681b      	ldr	r3, [r3, #0]
d05e0dd8:	9203      	str	r2, [sp, #12]
d05e0dda:	2b00      	cmp	r3, #0
d05e0ddc:	bfb8      	it	lt
d05e0dde:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d05e0de2:	3402      	adds	r4, #2
d05e0de4:	9305      	str	r3, [sp, #20]
d05e0de6:	f8df a0e4 	ldr.w	sl, [pc, #228]	; d05e0ecc <_vfiprintf_r+0x25c>
d05e0dea:	7821      	ldrb	r1, [r4, #0]
d05e0dec:	2203      	movs	r2, #3
d05e0dee:	4650      	mov	r0, sl
d05e0df0:	f000 fad6 	bl	d05e13a0 <memchr>
d05e0df4:	b140      	cbz	r0, d05e0e08 <_vfiprintf_r+0x198>
d05e0df6:	2340      	movs	r3, #64	; 0x40
d05e0df8:	eba0 000a 	sub.w	r0, r0, sl
d05e0dfc:	fa03 f000 	lsl.w	r0, r3, r0
d05e0e00:	9b04      	ldr	r3, [sp, #16]
d05e0e02:	4303      	orrs	r3, r0
d05e0e04:	3401      	adds	r4, #1
d05e0e06:	9304      	str	r3, [sp, #16]
d05e0e08:	f814 1b01 	ldrb.w	r1, [r4], #1
d05e0e0c:	482c      	ldr	r0, [pc, #176]	; (d05e0ec0 <_vfiprintf_r+0x250>)
d05e0e0e:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d05e0e12:	2206      	movs	r2, #6
d05e0e14:	f000 fac4 	bl	d05e13a0 <memchr>
d05e0e18:	2800      	cmp	r0, #0
d05e0e1a:	d03f      	beq.n	d05e0e9c <_vfiprintf_r+0x22c>
d05e0e1c:	4b29      	ldr	r3, [pc, #164]	; (d05e0ec4 <_vfiprintf_r+0x254>)
d05e0e1e:	bb1b      	cbnz	r3, d05e0e68 <_vfiprintf_r+0x1f8>
d05e0e20:	9b03      	ldr	r3, [sp, #12]
d05e0e22:	3307      	adds	r3, #7
d05e0e24:	f023 0307 	bic.w	r3, r3, #7
d05e0e28:	3308      	adds	r3, #8
d05e0e2a:	9303      	str	r3, [sp, #12]
d05e0e2c:	9b09      	ldr	r3, [sp, #36]	; 0x24
d05e0e2e:	443b      	add	r3, r7
d05e0e30:	9309      	str	r3, [sp, #36]	; 0x24
d05e0e32:	e767      	b.n	d05e0d04 <_vfiprintf_r+0x94>
d05e0e34:	fb0c 3202 	mla	r2, ip, r2, r3
d05e0e38:	460c      	mov	r4, r1
d05e0e3a:	2001      	movs	r0, #1
d05e0e3c:	e7a5      	b.n	d05e0d8a <_vfiprintf_r+0x11a>
d05e0e3e:	2300      	movs	r3, #0
d05e0e40:	3401      	adds	r4, #1
d05e0e42:	9305      	str	r3, [sp, #20]
d05e0e44:	4619      	mov	r1, r3
d05e0e46:	f04f 0c0a 	mov.w	ip, #10
d05e0e4a:	4620      	mov	r0, r4
d05e0e4c:	f810 2b01 	ldrb.w	r2, [r0], #1
d05e0e50:	3a30      	subs	r2, #48	; 0x30
d05e0e52:	2a09      	cmp	r2, #9
d05e0e54:	d903      	bls.n	d05e0e5e <_vfiprintf_r+0x1ee>
d05e0e56:	2b00      	cmp	r3, #0
d05e0e58:	d0c5      	beq.n	d05e0de6 <_vfiprintf_r+0x176>
d05e0e5a:	9105      	str	r1, [sp, #20]
d05e0e5c:	e7c3      	b.n	d05e0de6 <_vfiprintf_r+0x176>
d05e0e5e:	fb0c 2101 	mla	r1, ip, r1, r2
d05e0e62:	4604      	mov	r4, r0
d05e0e64:	2301      	movs	r3, #1
d05e0e66:	e7f0      	b.n	d05e0e4a <_vfiprintf_r+0x1da>
d05e0e68:	ab03      	add	r3, sp, #12
d05e0e6a:	9300      	str	r3, [sp, #0]
d05e0e6c:	462a      	mov	r2, r5
d05e0e6e:	4b16      	ldr	r3, [pc, #88]	; (d05e0ec8 <_vfiprintf_r+0x258>)
d05e0e70:	a904      	add	r1, sp, #16
d05e0e72:	4630      	mov	r0, r6
d05e0e74:	f3af 8000 	nop.w
d05e0e78:	4607      	mov	r7, r0
d05e0e7a:	1c78      	adds	r0, r7, #1
d05e0e7c:	d1d6      	bne.n	d05e0e2c <_vfiprintf_r+0x1bc>
d05e0e7e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d05e0e80:	07d9      	lsls	r1, r3, #31
d05e0e82:	d405      	bmi.n	d05e0e90 <_vfiprintf_r+0x220>
d05e0e84:	89ab      	ldrh	r3, [r5, #12]
d05e0e86:	059a      	lsls	r2, r3, #22
d05e0e88:	d402      	bmi.n	d05e0e90 <_vfiprintf_r+0x220>
d05e0e8a:	6da8      	ldr	r0, [r5, #88]	; 0x58
d05e0e8c:	f7ff fdaf 	bl	d05e09ee <__retarget_lock_release_recursive>
d05e0e90:	89ab      	ldrh	r3, [r5, #12]
d05e0e92:	065b      	lsls	r3, r3, #25
d05e0e94:	f53f af12 	bmi.w	d05e0cbc <_vfiprintf_r+0x4c>
d05e0e98:	9809      	ldr	r0, [sp, #36]	; 0x24
d05e0e9a:	e711      	b.n	d05e0cc0 <_vfiprintf_r+0x50>
d05e0e9c:	ab03      	add	r3, sp, #12
d05e0e9e:	9300      	str	r3, [sp, #0]
d05e0ea0:	462a      	mov	r2, r5
d05e0ea2:	4b09      	ldr	r3, [pc, #36]	; (d05e0ec8 <_vfiprintf_r+0x258>)
d05e0ea4:	a904      	add	r1, sp, #16
d05e0ea6:	4630      	mov	r0, r6
d05e0ea8:	f000 f880 	bl	d05e0fac <_printf_i>
d05e0eac:	e7e4      	b.n	d05e0e78 <_vfiprintf_r+0x208>
d05e0eae:	bf00      	nop
d05e0eb0:	d05e15f8 	.word	0xd05e15f8
d05e0eb4:	d05e1618 	.word	0xd05e1618
d05e0eb8:	d05e15d8 	.word	0xd05e15d8
d05e0ebc:	d05e1638 	.word	0xd05e1638
d05e0ec0:	d05e1642 	.word	0xd05e1642
d05e0ec4:	00000000 	.word	0x00000000
d05e0ec8:	d05e0c4b 	.word	0xd05e0c4b
d05e0ecc:	d05e163e 	.word	0xd05e163e

d05e0ed0 <_printf_common>:
d05e0ed0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05e0ed4:	4616      	mov	r6, r2
d05e0ed6:	4699      	mov	r9, r3
d05e0ed8:	688a      	ldr	r2, [r1, #8]
d05e0eda:	690b      	ldr	r3, [r1, #16]
d05e0edc:	f8dd 8020 	ldr.w	r8, [sp, #32]
d05e0ee0:	4293      	cmp	r3, r2
d05e0ee2:	bfb8      	it	lt
d05e0ee4:	4613      	movlt	r3, r2
d05e0ee6:	6033      	str	r3, [r6, #0]
d05e0ee8:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d05e0eec:	4607      	mov	r7, r0
d05e0eee:	460c      	mov	r4, r1
d05e0ef0:	b10a      	cbz	r2, d05e0ef6 <_printf_common+0x26>
d05e0ef2:	3301      	adds	r3, #1
d05e0ef4:	6033      	str	r3, [r6, #0]
d05e0ef6:	6823      	ldr	r3, [r4, #0]
d05e0ef8:	0699      	lsls	r1, r3, #26
d05e0efa:	bf42      	ittt	mi
d05e0efc:	6833      	ldrmi	r3, [r6, #0]
d05e0efe:	3302      	addmi	r3, #2
d05e0f00:	6033      	strmi	r3, [r6, #0]
d05e0f02:	6825      	ldr	r5, [r4, #0]
d05e0f04:	f015 0506 	ands.w	r5, r5, #6
d05e0f08:	d106      	bne.n	d05e0f18 <_printf_common+0x48>
d05e0f0a:	f104 0a19 	add.w	sl, r4, #25
d05e0f0e:	68e3      	ldr	r3, [r4, #12]
d05e0f10:	6832      	ldr	r2, [r6, #0]
d05e0f12:	1a9b      	subs	r3, r3, r2
d05e0f14:	42ab      	cmp	r3, r5
d05e0f16:	dc26      	bgt.n	d05e0f66 <_printf_common+0x96>
d05e0f18:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d05e0f1c:	1e13      	subs	r3, r2, #0
d05e0f1e:	6822      	ldr	r2, [r4, #0]
d05e0f20:	bf18      	it	ne
d05e0f22:	2301      	movne	r3, #1
d05e0f24:	0692      	lsls	r2, r2, #26
d05e0f26:	d42b      	bmi.n	d05e0f80 <_printf_common+0xb0>
d05e0f28:	f104 0243 	add.w	r2, r4, #67	; 0x43
d05e0f2c:	4649      	mov	r1, r9
d05e0f2e:	4638      	mov	r0, r7
d05e0f30:	47c0      	blx	r8
d05e0f32:	3001      	adds	r0, #1
d05e0f34:	d01e      	beq.n	d05e0f74 <_printf_common+0xa4>
d05e0f36:	6823      	ldr	r3, [r4, #0]
d05e0f38:	68e5      	ldr	r5, [r4, #12]
d05e0f3a:	6832      	ldr	r2, [r6, #0]
d05e0f3c:	f003 0306 	and.w	r3, r3, #6
d05e0f40:	2b04      	cmp	r3, #4
d05e0f42:	bf08      	it	eq
d05e0f44:	1aad      	subeq	r5, r5, r2
d05e0f46:	68a3      	ldr	r3, [r4, #8]
d05e0f48:	6922      	ldr	r2, [r4, #16]
d05e0f4a:	bf0c      	ite	eq
d05e0f4c:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d05e0f50:	2500      	movne	r5, #0
d05e0f52:	4293      	cmp	r3, r2
d05e0f54:	bfc4      	itt	gt
d05e0f56:	1a9b      	subgt	r3, r3, r2
d05e0f58:	18ed      	addgt	r5, r5, r3
d05e0f5a:	2600      	movs	r6, #0
d05e0f5c:	341a      	adds	r4, #26
d05e0f5e:	42b5      	cmp	r5, r6
d05e0f60:	d11a      	bne.n	d05e0f98 <_printf_common+0xc8>
d05e0f62:	2000      	movs	r0, #0
d05e0f64:	e008      	b.n	d05e0f78 <_printf_common+0xa8>
d05e0f66:	2301      	movs	r3, #1
d05e0f68:	4652      	mov	r2, sl
d05e0f6a:	4649      	mov	r1, r9
d05e0f6c:	4638      	mov	r0, r7
d05e0f6e:	47c0      	blx	r8
d05e0f70:	3001      	adds	r0, #1
d05e0f72:	d103      	bne.n	d05e0f7c <_printf_common+0xac>
d05e0f74:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e0f78:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e0f7c:	3501      	adds	r5, #1
d05e0f7e:	e7c6      	b.n	d05e0f0e <_printf_common+0x3e>
d05e0f80:	18e1      	adds	r1, r4, r3
d05e0f82:	1c5a      	adds	r2, r3, #1
d05e0f84:	2030      	movs	r0, #48	; 0x30
d05e0f86:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d05e0f8a:	4422      	add	r2, r4
d05e0f8c:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d05e0f90:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d05e0f94:	3302      	adds	r3, #2
d05e0f96:	e7c7      	b.n	d05e0f28 <_printf_common+0x58>
d05e0f98:	2301      	movs	r3, #1
d05e0f9a:	4622      	mov	r2, r4
d05e0f9c:	4649      	mov	r1, r9
d05e0f9e:	4638      	mov	r0, r7
d05e0fa0:	47c0      	blx	r8
d05e0fa2:	3001      	adds	r0, #1
d05e0fa4:	d0e6      	beq.n	d05e0f74 <_printf_common+0xa4>
d05e0fa6:	3601      	adds	r6, #1
d05e0fa8:	e7d9      	b.n	d05e0f5e <_printf_common+0x8e>
	...

d05e0fac <_printf_i>:
d05e0fac:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d05e0fb0:	460c      	mov	r4, r1
d05e0fb2:	4691      	mov	r9, r2
d05e0fb4:	7e27      	ldrb	r7, [r4, #24]
d05e0fb6:	990c      	ldr	r1, [sp, #48]	; 0x30
d05e0fb8:	2f78      	cmp	r7, #120	; 0x78
d05e0fba:	4680      	mov	r8, r0
d05e0fbc:	469a      	mov	sl, r3
d05e0fbe:	f104 0243 	add.w	r2, r4, #67	; 0x43
d05e0fc2:	d807      	bhi.n	d05e0fd4 <_printf_i+0x28>
d05e0fc4:	2f62      	cmp	r7, #98	; 0x62
d05e0fc6:	d80a      	bhi.n	d05e0fde <_printf_i+0x32>
d05e0fc8:	2f00      	cmp	r7, #0
d05e0fca:	f000 80d8 	beq.w	d05e117e <_printf_i+0x1d2>
d05e0fce:	2f58      	cmp	r7, #88	; 0x58
d05e0fd0:	f000 80a3 	beq.w	d05e111a <_printf_i+0x16e>
d05e0fd4:	f104 0642 	add.w	r6, r4, #66	; 0x42
d05e0fd8:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d05e0fdc:	e03a      	b.n	d05e1054 <_printf_i+0xa8>
d05e0fde:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d05e0fe2:	2b15      	cmp	r3, #21
d05e0fe4:	d8f6      	bhi.n	d05e0fd4 <_printf_i+0x28>
d05e0fe6:	a001      	add	r0, pc, #4	; (adr r0, d05e0fec <_printf_i+0x40>)
d05e0fe8:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d05e0fec:	d05e1045 	.word	0xd05e1045
d05e0ff0:	d05e1059 	.word	0xd05e1059
d05e0ff4:	d05e0fd5 	.word	0xd05e0fd5
d05e0ff8:	d05e0fd5 	.word	0xd05e0fd5
d05e0ffc:	d05e0fd5 	.word	0xd05e0fd5
d05e1000:	d05e0fd5 	.word	0xd05e0fd5
d05e1004:	d05e1059 	.word	0xd05e1059
d05e1008:	d05e0fd5 	.word	0xd05e0fd5
d05e100c:	d05e0fd5 	.word	0xd05e0fd5
d05e1010:	d05e0fd5 	.word	0xd05e0fd5
d05e1014:	d05e0fd5 	.word	0xd05e0fd5
d05e1018:	d05e1165 	.word	0xd05e1165
d05e101c:	d05e1089 	.word	0xd05e1089
d05e1020:	d05e1147 	.word	0xd05e1147
d05e1024:	d05e0fd5 	.word	0xd05e0fd5
d05e1028:	d05e0fd5 	.word	0xd05e0fd5
d05e102c:	d05e1187 	.word	0xd05e1187
d05e1030:	d05e0fd5 	.word	0xd05e0fd5
d05e1034:	d05e1089 	.word	0xd05e1089
d05e1038:	d05e0fd5 	.word	0xd05e0fd5
d05e103c:	d05e0fd5 	.word	0xd05e0fd5
d05e1040:	d05e114f 	.word	0xd05e114f
d05e1044:	680b      	ldr	r3, [r1, #0]
d05e1046:	1d1a      	adds	r2, r3, #4
d05e1048:	681b      	ldr	r3, [r3, #0]
d05e104a:	600a      	str	r2, [r1, #0]
d05e104c:	f104 0642 	add.w	r6, r4, #66	; 0x42
d05e1050:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d05e1054:	2301      	movs	r3, #1
d05e1056:	e0a3      	b.n	d05e11a0 <_printf_i+0x1f4>
d05e1058:	6825      	ldr	r5, [r4, #0]
d05e105a:	6808      	ldr	r0, [r1, #0]
d05e105c:	062e      	lsls	r6, r5, #24
d05e105e:	f100 0304 	add.w	r3, r0, #4
d05e1062:	d50a      	bpl.n	d05e107a <_printf_i+0xce>
d05e1064:	6805      	ldr	r5, [r0, #0]
d05e1066:	600b      	str	r3, [r1, #0]
d05e1068:	2d00      	cmp	r5, #0
d05e106a:	da03      	bge.n	d05e1074 <_printf_i+0xc8>
d05e106c:	232d      	movs	r3, #45	; 0x2d
d05e106e:	426d      	negs	r5, r5
d05e1070:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d05e1074:	485e      	ldr	r0, [pc, #376]	; (d05e11f0 <_printf_i+0x244>)
d05e1076:	230a      	movs	r3, #10
d05e1078:	e019      	b.n	d05e10ae <_printf_i+0x102>
d05e107a:	f015 0f40 	tst.w	r5, #64	; 0x40
d05e107e:	6805      	ldr	r5, [r0, #0]
d05e1080:	600b      	str	r3, [r1, #0]
d05e1082:	bf18      	it	ne
d05e1084:	b22d      	sxthne	r5, r5
d05e1086:	e7ef      	b.n	d05e1068 <_printf_i+0xbc>
d05e1088:	680b      	ldr	r3, [r1, #0]
d05e108a:	6825      	ldr	r5, [r4, #0]
d05e108c:	1d18      	adds	r0, r3, #4
d05e108e:	6008      	str	r0, [r1, #0]
d05e1090:	0628      	lsls	r0, r5, #24
d05e1092:	d501      	bpl.n	d05e1098 <_printf_i+0xec>
d05e1094:	681d      	ldr	r5, [r3, #0]
d05e1096:	e002      	b.n	d05e109e <_printf_i+0xf2>
d05e1098:	0669      	lsls	r1, r5, #25
d05e109a:	d5fb      	bpl.n	d05e1094 <_printf_i+0xe8>
d05e109c:	881d      	ldrh	r5, [r3, #0]
d05e109e:	4854      	ldr	r0, [pc, #336]	; (d05e11f0 <_printf_i+0x244>)
d05e10a0:	2f6f      	cmp	r7, #111	; 0x6f
d05e10a2:	bf0c      	ite	eq
d05e10a4:	2308      	moveq	r3, #8
d05e10a6:	230a      	movne	r3, #10
d05e10a8:	2100      	movs	r1, #0
d05e10aa:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d05e10ae:	6866      	ldr	r6, [r4, #4]
d05e10b0:	60a6      	str	r6, [r4, #8]
d05e10b2:	2e00      	cmp	r6, #0
d05e10b4:	bfa2      	ittt	ge
d05e10b6:	6821      	ldrge	r1, [r4, #0]
d05e10b8:	f021 0104 	bicge.w	r1, r1, #4
d05e10bc:	6021      	strge	r1, [r4, #0]
d05e10be:	b90d      	cbnz	r5, d05e10c4 <_printf_i+0x118>
d05e10c0:	2e00      	cmp	r6, #0
d05e10c2:	d04d      	beq.n	d05e1160 <_printf_i+0x1b4>
d05e10c4:	4616      	mov	r6, r2
d05e10c6:	fbb5 f1f3 	udiv	r1, r5, r3
d05e10ca:	fb03 5711 	mls	r7, r3, r1, r5
d05e10ce:	5dc7      	ldrb	r7, [r0, r7]
d05e10d0:	f806 7d01 	strb.w	r7, [r6, #-1]!
d05e10d4:	462f      	mov	r7, r5
d05e10d6:	42bb      	cmp	r3, r7
d05e10d8:	460d      	mov	r5, r1
d05e10da:	d9f4      	bls.n	d05e10c6 <_printf_i+0x11a>
d05e10dc:	2b08      	cmp	r3, #8
d05e10de:	d10b      	bne.n	d05e10f8 <_printf_i+0x14c>
d05e10e0:	6823      	ldr	r3, [r4, #0]
d05e10e2:	07df      	lsls	r7, r3, #31
d05e10e4:	d508      	bpl.n	d05e10f8 <_printf_i+0x14c>
d05e10e6:	6923      	ldr	r3, [r4, #16]
d05e10e8:	6861      	ldr	r1, [r4, #4]
d05e10ea:	4299      	cmp	r1, r3
d05e10ec:	bfde      	ittt	le
d05e10ee:	2330      	movle	r3, #48	; 0x30
d05e10f0:	f806 3c01 	strble.w	r3, [r6, #-1]
d05e10f4:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d05e10f8:	1b92      	subs	r2, r2, r6
d05e10fa:	6122      	str	r2, [r4, #16]
d05e10fc:	f8cd a000 	str.w	sl, [sp]
d05e1100:	464b      	mov	r3, r9
d05e1102:	aa03      	add	r2, sp, #12
d05e1104:	4621      	mov	r1, r4
d05e1106:	4640      	mov	r0, r8
d05e1108:	f7ff fee2 	bl	d05e0ed0 <_printf_common>
d05e110c:	3001      	adds	r0, #1
d05e110e:	d14c      	bne.n	d05e11aa <_printf_i+0x1fe>
d05e1110:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e1114:	b004      	add	sp, #16
d05e1116:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e111a:	4835      	ldr	r0, [pc, #212]	; (d05e11f0 <_printf_i+0x244>)
d05e111c:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d05e1120:	6823      	ldr	r3, [r4, #0]
d05e1122:	680e      	ldr	r6, [r1, #0]
d05e1124:	061f      	lsls	r7, r3, #24
d05e1126:	f856 5b04 	ldr.w	r5, [r6], #4
d05e112a:	600e      	str	r6, [r1, #0]
d05e112c:	d514      	bpl.n	d05e1158 <_printf_i+0x1ac>
d05e112e:	07d9      	lsls	r1, r3, #31
d05e1130:	bf44      	itt	mi
d05e1132:	f043 0320 	orrmi.w	r3, r3, #32
d05e1136:	6023      	strmi	r3, [r4, #0]
d05e1138:	b91d      	cbnz	r5, d05e1142 <_printf_i+0x196>
d05e113a:	6823      	ldr	r3, [r4, #0]
d05e113c:	f023 0320 	bic.w	r3, r3, #32
d05e1140:	6023      	str	r3, [r4, #0]
d05e1142:	2310      	movs	r3, #16
d05e1144:	e7b0      	b.n	d05e10a8 <_printf_i+0xfc>
d05e1146:	6823      	ldr	r3, [r4, #0]
d05e1148:	f043 0320 	orr.w	r3, r3, #32
d05e114c:	6023      	str	r3, [r4, #0]
d05e114e:	2378      	movs	r3, #120	; 0x78
d05e1150:	4828      	ldr	r0, [pc, #160]	; (d05e11f4 <_printf_i+0x248>)
d05e1152:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d05e1156:	e7e3      	b.n	d05e1120 <_printf_i+0x174>
d05e1158:	065e      	lsls	r6, r3, #25
d05e115a:	bf48      	it	mi
d05e115c:	b2ad      	uxthmi	r5, r5
d05e115e:	e7e6      	b.n	d05e112e <_printf_i+0x182>
d05e1160:	4616      	mov	r6, r2
d05e1162:	e7bb      	b.n	d05e10dc <_printf_i+0x130>
d05e1164:	680b      	ldr	r3, [r1, #0]
d05e1166:	6826      	ldr	r6, [r4, #0]
d05e1168:	6960      	ldr	r0, [r4, #20]
d05e116a:	1d1d      	adds	r5, r3, #4
d05e116c:	600d      	str	r5, [r1, #0]
d05e116e:	0635      	lsls	r5, r6, #24
d05e1170:	681b      	ldr	r3, [r3, #0]
d05e1172:	d501      	bpl.n	d05e1178 <_printf_i+0x1cc>
d05e1174:	6018      	str	r0, [r3, #0]
d05e1176:	e002      	b.n	d05e117e <_printf_i+0x1d2>
d05e1178:	0671      	lsls	r1, r6, #25
d05e117a:	d5fb      	bpl.n	d05e1174 <_printf_i+0x1c8>
d05e117c:	8018      	strh	r0, [r3, #0]
d05e117e:	2300      	movs	r3, #0
d05e1180:	6123      	str	r3, [r4, #16]
d05e1182:	4616      	mov	r6, r2
d05e1184:	e7ba      	b.n	d05e10fc <_printf_i+0x150>
d05e1186:	680b      	ldr	r3, [r1, #0]
d05e1188:	1d1a      	adds	r2, r3, #4
d05e118a:	600a      	str	r2, [r1, #0]
d05e118c:	681e      	ldr	r6, [r3, #0]
d05e118e:	6862      	ldr	r2, [r4, #4]
d05e1190:	2100      	movs	r1, #0
d05e1192:	4630      	mov	r0, r6
d05e1194:	f000 f904 	bl	d05e13a0 <memchr>
d05e1198:	b108      	cbz	r0, d05e119e <_printf_i+0x1f2>
d05e119a:	1b80      	subs	r0, r0, r6
d05e119c:	6060      	str	r0, [r4, #4]
d05e119e:	6863      	ldr	r3, [r4, #4]
d05e11a0:	6123      	str	r3, [r4, #16]
d05e11a2:	2300      	movs	r3, #0
d05e11a4:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d05e11a8:	e7a8      	b.n	d05e10fc <_printf_i+0x150>
d05e11aa:	6923      	ldr	r3, [r4, #16]
d05e11ac:	4632      	mov	r2, r6
d05e11ae:	4649      	mov	r1, r9
d05e11b0:	4640      	mov	r0, r8
d05e11b2:	47d0      	blx	sl
d05e11b4:	3001      	adds	r0, #1
d05e11b6:	d0ab      	beq.n	d05e1110 <_printf_i+0x164>
d05e11b8:	6823      	ldr	r3, [r4, #0]
d05e11ba:	079b      	lsls	r3, r3, #30
d05e11bc:	d413      	bmi.n	d05e11e6 <_printf_i+0x23a>
d05e11be:	68e0      	ldr	r0, [r4, #12]
d05e11c0:	9b03      	ldr	r3, [sp, #12]
d05e11c2:	4298      	cmp	r0, r3
d05e11c4:	bfb8      	it	lt
d05e11c6:	4618      	movlt	r0, r3
d05e11c8:	e7a4      	b.n	d05e1114 <_printf_i+0x168>
d05e11ca:	2301      	movs	r3, #1
d05e11cc:	4632      	mov	r2, r6
d05e11ce:	4649      	mov	r1, r9
d05e11d0:	4640      	mov	r0, r8
d05e11d2:	47d0      	blx	sl
d05e11d4:	3001      	adds	r0, #1
d05e11d6:	d09b      	beq.n	d05e1110 <_printf_i+0x164>
d05e11d8:	3501      	adds	r5, #1
d05e11da:	68e3      	ldr	r3, [r4, #12]
d05e11dc:	9903      	ldr	r1, [sp, #12]
d05e11de:	1a5b      	subs	r3, r3, r1
d05e11e0:	42ab      	cmp	r3, r5
d05e11e2:	dcf2      	bgt.n	d05e11ca <_printf_i+0x21e>
d05e11e4:	e7eb      	b.n	d05e11be <_printf_i+0x212>
d05e11e6:	2500      	movs	r5, #0
d05e11e8:	f104 0619 	add.w	r6, r4, #25
d05e11ec:	e7f5      	b.n	d05e11da <_printf_i+0x22e>
d05e11ee:	bf00      	nop
d05e11f0:	d05e1649 	.word	0xd05e1649
d05e11f4:	d05e165a 	.word	0xd05e165a

d05e11f8 <_putc_r>:
d05e11f8:	b570      	push	{r4, r5, r6, lr}
d05e11fa:	460d      	mov	r5, r1
d05e11fc:	4614      	mov	r4, r2
d05e11fe:	4606      	mov	r6, r0
d05e1200:	b118      	cbz	r0, d05e120a <_putc_r+0x12>
d05e1202:	6983      	ldr	r3, [r0, #24]
d05e1204:	b90b      	cbnz	r3, d05e120a <_putc_r+0x12>
d05e1206:	f7ff fb53 	bl	d05e08b0 <__sinit>
d05e120a:	4b1c      	ldr	r3, [pc, #112]	; (d05e127c <_putc_r+0x84>)
d05e120c:	429c      	cmp	r4, r3
d05e120e:	d124      	bne.n	d05e125a <_putc_r+0x62>
d05e1210:	6874      	ldr	r4, [r6, #4]
d05e1212:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05e1214:	07d8      	lsls	r0, r3, #31
d05e1216:	d405      	bmi.n	d05e1224 <_putc_r+0x2c>
d05e1218:	89a3      	ldrh	r3, [r4, #12]
d05e121a:	0599      	lsls	r1, r3, #22
d05e121c:	d402      	bmi.n	d05e1224 <_putc_r+0x2c>
d05e121e:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05e1220:	f7ff fbe4 	bl	d05e09ec <__retarget_lock_acquire_recursive>
d05e1224:	68a3      	ldr	r3, [r4, #8]
d05e1226:	3b01      	subs	r3, #1
d05e1228:	2b00      	cmp	r3, #0
d05e122a:	60a3      	str	r3, [r4, #8]
d05e122c:	da05      	bge.n	d05e123a <_putc_r+0x42>
d05e122e:	69a2      	ldr	r2, [r4, #24]
d05e1230:	4293      	cmp	r3, r2
d05e1232:	db1c      	blt.n	d05e126e <_putc_r+0x76>
d05e1234:	b2eb      	uxtb	r3, r5
d05e1236:	2b0a      	cmp	r3, #10
d05e1238:	d019      	beq.n	d05e126e <_putc_r+0x76>
d05e123a:	6823      	ldr	r3, [r4, #0]
d05e123c:	1c5a      	adds	r2, r3, #1
d05e123e:	6022      	str	r2, [r4, #0]
d05e1240:	701d      	strb	r5, [r3, #0]
d05e1242:	b2ed      	uxtb	r5, r5
d05e1244:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05e1246:	07da      	lsls	r2, r3, #31
d05e1248:	d405      	bmi.n	d05e1256 <_putc_r+0x5e>
d05e124a:	89a3      	ldrh	r3, [r4, #12]
d05e124c:	059b      	lsls	r3, r3, #22
d05e124e:	d402      	bmi.n	d05e1256 <_putc_r+0x5e>
d05e1250:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05e1252:	f7ff fbcc 	bl	d05e09ee <__retarget_lock_release_recursive>
d05e1256:	4628      	mov	r0, r5
d05e1258:	bd70      	pop	{r4, r5, r6, pc}
d05e125a:	4b09      	ldr	r3, [pc, #36]	; (d05e1280 <_putc_r+0x88>)
d05e125c:	429c      	cmp	r4, r3
d05e125e:	d101      	bne.n	d05e1264 <_putc_r+0x6c>
d05e1260:	68b4      	ldr	r4, [r6, #8]
d05e1262:	e7d6      	b.n	d05e1212 <_putc_r+0x1a>
d05e1264:	4b07      	ldr	r3, [pc, #28]	; (d05e1284 <_putc_r+0x8c>)
d05e1266:	429c      	cmp	r4, r3
d05e1268:	bf08      	it	eq
d05e126a:	68f4      	ldreq	r4, [r6, #12]
d05e126c:	e7d1      	b.n	d05e1212 <_putc_r+0x1a>
d05e126e:	4629      	mov	r1, r5
d05e1270:	4622      	mov	r2, r4
d05e1272:	4630      	mov	r0, r6
d05e1274:	f7ff f942 	bl	d05e04fc <__swbuf_r>
d05e1278:	4605      	mov	r5, r0
d05e127a:	e7e3      	b.n	d05e1244 <_putc_r+0x4c>
d05e127c:	d05e15f8 	.word	0xd05e15f8
d05e1280:	d05e1618 	.word	0xd05e1618
d05e1284:	d05e15d8 	.word	0xd05e15d8

d05e1288 <__sread>:
d05e1288:	b510      	push	{r4, lr}
d05e128a:	460c      	mov	r4, r1
d05e128c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05e1290:	f000 f8e2 	bl	d05e1458 <_read_r>
d05e1294:	2800      	cmp	r0, #0
d05e1296:	bfab      	itete	ge
d05e1298:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d05e129a:	89a3      	ldrhlt	r3, [r4, #12]
d05e129c:	181b      	addge	r3, r3, r0
d05e129e:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d05e12a2:	bfac      	ite	ge
d05e12a4:	6563      	strge	r3, [r4, #84]	; 0x54
d05e12a6:	81a3      	strhlt	r3, [r4, #12]
d05e12a8:	bd10      	pop	{r4, pc}

d05e12aa <__swrite>:
d05e12aa:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d05e12ae:	461f      	mov	r7, r3
d05e12b0:	898b      	ldrh	r3, [r1, #12]
d05e12b2:	05db      	lsls	r3, r3, #23
d05e12b4:	4605      	mov	r5, r0
d05e12b6:	460c      	mov	r4, r1
d05e12b8:	4616      	mov	r6, r2
d05e12ba:	d505      	bpl.n	d05e12c8 <__swrite+0x1e>
d05e12bc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05e12c0:	2302      	movs	r3, #2
d05e12c2:	2200      	movs	r2, #0
d05e12c4:	f000 f856 	bl	d05e1374 <_lseek_r>
d05e12c8:	89a3      	ldrh	r3, [r4, #12]
d05e12ca:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d05e12ce:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d05e12d2:	81a3      	strh	r3, [r4, #12]
d05e12d4:	4632      	mov	r2, r6
d05e12d6:	463b      	mov	r3, r7
d05e12d8:	4628      	mov	r0, r5
d05e12da:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d05e12de:	f7fe bead 	b.w	d05e003c <_write_r>

d05e12e2 <__sseek>:
d05e12e2:	b510      	push	{r4, lr}
d05e12e4:	460c      	mov	r4, r1
d05e12e6:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05e12ea:	f000 f843 	bl	d05e1374 <_lseek_r>
d05e12ee:	1c43      	adds	r3, r0, #1
d05e12f0:	89a3      	ldrh	r3, [r4, #12]
d05e12f2:	bf15      	itete	ne
d05e12f4:	6560      	strne	r0, [r4, #84]	; 0x54
d05e12f6:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d05e12fa:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d05e12fe:	81a3      	strheq	r3, [r4, #12]
d05e1300:	bf18      	it	ne
d05e1302:	81a3      	strhne	r3, [r4, #12]
d05e1304:	bd10      	pop	{r4, pc}

d05e1306 <__sclose>:
d05e1306:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05e130a:	f000 b801 	b.w	d05e1310 <_close_r>
	...

d05e1310 <_close_r>:
d05e1310:	b538      	push	{r3, r4, r5, lr}
d05e1312:	4d06      	ldr	r5, [pc, #24]	; (d05e132c <_close_r+0x1c>)
d05e1314:	2300      	movs	r3, #0
d05e1316:	4604      	mov	r4, r0
d05e1318:	4608      	mov	r0, r1
d05e131a:	602b      	str	r3, [r5, #0]
d05e131c:	f7fe fec8 	bl	d05e00b0 <_close>
d05e1320:	1c43      	adds	r3, r0, #1
d05e1322:	d102      	bne.n	d05e132a <_close_r+0x1a>
d05e1324:	682b      	ldr	r3, [r5, #0]
d05e1326:	b103      	cbz	r3, d05e132a <_close_r+0x1a>
d05e1328:	6023      	str	r3, [r4, #0]
d05e132a:	bd38      	pop	{r3, r4, r5, pc}
d05e132c:	d05e16f4 	.word	0xd05e16f4

d05e1330 <_fstat_r>:
d05e1330:	b538      	push	{r3, r4, r5, lr}
d05e1332:	4d07      	ldr	r5, [pc, #28]	; (d05e1350 <_fstat_r+0x20>)
d05e1334:	2300      	movs	r3, #0
d05e1336:	4604      	mov	r4, r0
d05e1338:	4608      	mov	r0, r1
d05e133a:	4611      	mov	r1, r2
d05e133c:	602b      	str	r3, [r5, #0]
d05e133e:	f7fe febb 	bl	d05e00b8 <_fstat>
d05e1342:	1c43      	adds	r3, r0, #1
d05e1344:	d102      	bne.n	d05e134c <_fstat_r+0x1c>
d05e1346:	682b      	ldr	r3, [r5, #0]
d05e1348:	b103      	cbz	r3, d05e134c <_fstat_r+0x1c>
d05e134a:	6023      	str	r3, [r4, #0]
d05e134c:	bd38      	pop	{r3, r4, r5, pc}
d05e134e:	bf00      	nop
d05e1350:	d05e16f4 	.word	0xd05e16f4

d05e1354 <_isatty_r>:
d05e1354:	b538      	push	{r3, r4, r5, lr}
d05e1356:	4d06      	ldr	r5, [pc, #24]	; (d05e1370 <_isatty_r+0x1c>)
d05e1358:	2300      	movs	r3, #0
d05e135a:	4604      	mov	r4, r0
d05e135c:	4608      	mov	r0, r1
d05e135e:	602b      	str	r3, [r5, #0]
d05e1360:	f7fe fed2 	bl	d05e0108 <_isatty>
d05e1364:	1c43      	adds	r3, r0, #1
d05e1366:	d102      	bne.n	d05e136e <_isatty_r+0x1a>
d05e1368:	682b      	ldr	r3, [r5, #0]
d05e136a:	b103      	cbz	r3, d05e136e <_isatty_r+0x1a>
d05e136c:	6023      	str	r3, [r4, #0]
d05e136e:	bd38      	pop	{r3, r4, r5, pc}
d05e1370:	d05e16f4 	.word	0xd05e16f4

d05e1374 <_lseek_r>:
d05e1374:	b538      	push	{r3, r4, r5, lr}
d05e1376:	4d07      	ldr	r5, [pc, #28]	; (d05e1394 <_lseek_r+0x20>)
d05e1378:	4604      	mov	r4, r0
d05e137a:	4608      	mov	r0, r1
d05e137c:	4611      	mov	r1, r2
d05e137e:	2200      	movs	r2, #0
d05e1380:	602a      	str	r2, [r5, #0]
d05e1382:	461a      	mov	r2, r3
d05e1384:	f7fe fe9e 	bl	d05e00c4 <_lseek>
d05e1388:	1c43      	adds	r3, r0, #1
d05e138a:	d102      	bne.n	d05e1392 <_lseek_r+0x1e>
d05e138c:	682b      	ldr	r3, [r5, #0]
d05e138e:	b103      	cbz	r3, d05e1392 <_lseek_r+0x1e>
d05e1390:	6023      	str	r3, [r4, #0]
d05e1392:	bd38      	pop	{r3, r4, r5, pc}
d05e1394:	d05e16f4 	.word	0xd05e16f4
	...

d05e13a0 <memchr>:
d05e13a0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d05e13a4:	2a10      	cmp	r2, #16
d05e13a6:	db2b      	blt.n	d05e1400 <memchr+0x60>
d05e13a8:	f010 0f07 	tst.w	r0, #7
d05e13ac:	d008      	beq.n	d05e13c0 <memchr+0x20>
d05e13ae:	f810 3b01 	ldrb.w	r3, [r0], #1
d05e13b2:	3a01      	subs	r2, #1
d05e13b4:	428b      	cmp	r3, r1
d05e13b6:	d02d      	beq.n	d05e1414 <memchr+0x74>
d05e13b8:	f010 0f07 	tst.w	r0, #7
d05e13bc:	b342      	cbz	r2, d05e1410 <memchr+0x70>
d05e13be:	d1f6      	bne.n	d05e13ae <memchr+0xe>
d05e13c0:	b4f0      	push	{r4, r5, r6, r7}
d05e13c2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d05e13c6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d05e13ca:	f022 0407 	bic.w	r4, r2, #7
d05e13ce:	f07f 0700 	mvns.w	r7, #0
d05e13d2:	2300      	movs	r3, #0
d05e13d4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d05e13d8:	3c08      	subs	r4, #8
d05e13da:	ea85 0501 	eor.w	r5, r5, r1
d05e13de:	ea86 0601 	eor.w	r6, r6, r1
d05e13e2:	fa85 f547 	uadd8	r5, r5, r7
d05e13e6:	faa3 f587 	sel	r5, r3, r7
d05e13ea:	fa86 f647 	uadd8	r6, r6, r7
d05e13ee:	faa5 f687 	sel	r6, r5, r7
d05e13f2:	b98e      	cbnz	r6, d05e1418 <memchr+0x78>
d05e13f4:	d1ee      	bne.n	d05e13d4 <memchr+0x34>
d05e13f6:	bcf0      	pop	{r4, r5, r6, r7}
d05e13f8:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d05e13fc:	f002 0207 	and.w	r2, r2, #7
d05e1400:	b132      	cbz	r2, d05e1410 <memchr+0x70>
d05e1402:	f810 3b01 	ldrb.w	r3, [r0], #1
d05e1406:	3a01      	subs	r2, #1
d05e1408:	ea83 0301 	eor.w	r3, r3, r1
d05e140c:	b113      	cbz	r3, d05e1414 <memchr+0x74>
d05e140e:	d1f8      	bne.n	d05e1402 <memchr+0x62>
d05e1410:	2000      	movs	r0, #0
d05e1412:	4770      	bx	lr
d05e1414:	3801      	subs	r0, #1
d05e1416:	4770      	bx	lr
d05e1418:	2d00      	cmp	r5, #0
d05e141a:	bf06      	itte	eq
d05e141c:	4635      	moveq	r5, r6
d05e141e:	3803      	subeq	r0, #3
d05e1420:	3807      	subne	r0, #7
d05e1422:	f015 0f01 	tst.w	r5, #1
d05e1426:	d107      	bne.n	d05e1438 <memchr+0x98>
d05e1428:	3001      	adds	r0, #1
d05e142a:	f415 7f80 	tst.w	r5, #256	; 0x100
d05e142e:	bf02      	ittt	eq
d05e1430:	3001      	addeq	r0, #1
d05e1432:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d05e1436:	3001      	addeq	r0, #1
d05e1438:	bcf0      	pop	{r4, r5, r6, r7}
d05e143a:	3801      	subs	r0, #1
d05e143c:	4770      	bx	lr
d05e143e:	bf00      	nop

d05e1440 <__malloc_lock>:
d05e1440:	4801      	ldr	r0, [pc, #4]	; (d05e1448 <__malloc_lock+0x8>)
d05e1442:	f7ff bad3 	b.w	d05e09ec <__retarget_lock_acquire_recursive>
d05e1446:	bf00      	nop
d05e1448:	d05e16ec 	.word	0xd05e16ec

d05e144c <__malloc_unlock>:
d05e144c:	4801      	ldr	r0, [pc, #4]	; (d05e1454 <__malloc_unlock+0x8>)
d05e144e:	f7ff bace 	b.w	d05e09ee <__retarget_lock_release_recursive>
d05e1452:	bf00      	nop
d05e1454:	d05e16ec 	.word	0xd05e16ec

d05e1458 <_read_r>:
d05e1458:	b538      	push	{r3, r4, r5, lr}
d05e145a:	4d07      	ldr	r5, [pc, #28]	; (d05e1478 <_read_r+0x20>)
d05e145c:	4604      	mov	r4, r0
d05e145e:	4608      	mov	r0, r1
d05e1460:	4611      	mov	r1, r2
d05e1462:	2200      	movs	r2, #0
d05e1464:	602a      	str	r2, [r5, #0]
d05e1466:	461a      	mov	r2, r3
d05e1468:	f7fe fe18 	bl	d05e009c <_read>
d05e146c:	1c43      	adds	r3, r0, #1
d05e146e:	d102      	bne.n	d05e1476 <_read_r+0x1e>
d05e1470:	682b      	ldr	r3, [r5, #0]
d05e1472:	b103      	cbz	r3, d05e1476 <_read_r+0x1e>
d05e1474:	6023      	str	r3, [r4, #0]
d05e1476:	bd38      	pop	{r3, r4, r5, pc}
d05e1478:	d05e16f4 	.word	0xd05e16f4
d05e147c:	73696854 	.word	0x73696854
d05e1480:	746f6720 	.word	0x746f6720
d05e1484:	69727020 	.word	0x69727020
d05e1488:	7265746e 	.word	0x7265746e
d05e148c:	00000021 	.word	0x00000021
d05e1490:	6c707041 	.word	0x6c707041
d05e1494:	73207465 	.word	0x73207465
d05e1498:	20737961 	.word	0x20737961
d05e149c:	4c4c4548 	.word	0x4c4c4548
d05e14a0:	0a21214f 	.word	0x0a21214f
d05e14a4:	00000000 	.word	0x00000000
d05e14a8:	20555043 	.word	0x20555043
d05e14ac:	74736574 	.word	0x74736574
d05e14b0:	20303420 	.word	0x20303420
d05e14b4:	3128202b 	.word	0x3128202b
d05e14b8:	202a2032 	.word	0x202a2032
d05e14bc:	3d202934 	.word	0x3d202934
d05e14c0:	646c2520 	.word	0x646c2520
d05e14c4:	00000a0a 	.word	0x00000a0a
d05e14c8:	2a2a2a2a 	.word	0x2a2a2a2a
d05e14cc:	43204320 	.word	0x43204320
d05e14d0:	414d4d4f 	.word	0x414d4d4f
d05e14d4:	5420444e 	.word	0x5420444e
d05e14d8:	20545345 	.word	0x20545345
d05e14dc:	0a2a2a2a 	.word	0x0a2a2a2a
d05e14e0:	6d6f7246 	.word	0x6d6f7246
d05e14e4:	64697320 	.word	0x64697320
d05e14e8:	2f786f62 	.word	0x2f786f62
d05e14ec:	66202f63 	.word	0x66202f63
d05e14f0:	65646c6f 	.word	0x65646c6f
d05e14f4:	00002172 	.word	0x00002172
d05e14f8:	2a2a2a2a 	.word	0x2a2a2a2a
d05e14fc:	43204320 	.word	0x43204320
d05e1500:	414d4d4f 	.word	0x414d4d4f
d05e1504:	5420444e 	.word	0x5420444e
d05e1508:	20545345 	.word	0x20545345
d05e150c:	0a2a2a2a 	.word	0x0a2a2a2a
d05e1510:	6c756f77 	.word	0x6c756f77
d05e1514:	65622064 	.word	0x65622064
d05e1518:	616c6320 	.word	0x616c6320
d05e151c:	2173706d 	.word	0x2173706d
d05e1520:	00000000 	.word	0x00000000
d05e1524:	2a2a2a2a 	.word	0x2a2a2a2a
d05e1528:	43204320 	.word	0x43204320
d05e152c:	414d4d4f 	.word	0x414d4d4f
d05e1530:	5420444e 	.word	0x5420444e
d05e1534:	20545345 	.word	0x20545345
d05e1538:	0a2a2a2a 	.word	0x0a2a2a2a
d05e153c:	64616f6c 	.word	0x64616f6c
d05e1540:	20676e69 	.word	0x20676e69
d05e1544:	6b726f77 	.word	0x6b726f77
d05e1548:	636e6562 	.word	0x636e6562
d05e154c:	293b2068 	.word	0x293b2068
d05e1550:	75420a21 	.word	0x75420a21
d05e1554:	6f6e2074 	.word	0x6f6e2074
d05e1558:	6d412074 	.word	0x6d412074
d05e155c:	20616769 	.word	0x20616769
d05e1560:	656d6572 	.word	0x656d6572
d05e1564:	7265626d 	.word	0x7265626d
d05e1568:	68656820 	.word	0x68656820
d05e156c:	20490a65 	.word	0x20490a65
d05e1570:	45564f4c 	.word	0x45564f4c
d05e1574:	554f5920 	.word	0x554f5920
d05e1578:	4d4f4320 	.word	0x4d4f4320
d05e157c:	4f444f4d 	.word	0x4f444f4d
d05e1580:	21214552 	.word	0x21214552
d05e1584:	6968540a 	.word	0x6968540a
d05e1588:	73692073 	.word	0x73692073
d05e158c:	726f6620 	.word	0x726f6620
d05e1590:	756f7920 	.word	0x756f7920
d05e1594:	79756720 	.word	0x79756720
d05e1598:	00002173 	.word	0x00002173
d05e159c:	2d2d2d2d 	.word	0x2d2d2d2d
d05e15a0:	43202d2d 	.word	0x43202d2d
d05e15a4:	4c454d41 	.word	0x4c454d41
d05e15a8:	4f4f5020 	.word	0x4f4f5020
d05e15ac:	2d2d2d20 	.word	0x2d2d2d20
d05e15b0:	2d2d2d2d 	.word	0x2d2d2d2d
d05e15b4:	00000000 	.word	0x00000000
d05e15b8:	20707041 	.word	0x20707041
d05e15bc:	6e65704f 	.word	0x6e65704f
d05e15c0:	74206465 	.word	0x74206465
d05e15c4:	20736968 	.word	0x20736968
d05e15c8:	00003276 	.word	0x00003276
d05e15cc:	6c6c6568 	.word	0x6c6c6568
d05e15d0:	0000006f 	.word	0x0000006f

d05e15d4 <_global_impure_ptr>:
d05e15d4:	d05e1678                                x.^.

d05e15d8 <__sf_fake_stderr>:
	...

d05e15f8 <__sf_fake_stdin>:
	...

d05e1618 <__sf_fake_stdout>:
	...
d05e1638:	2b302d23 6c680020 6665004c 47464567     #-0+ .hlL.efgEFG
d05e1648:	32313000 36353433 41393837 45444342     .0123456789ABCDE
d05e1658:	31300046 35343332 39383736 64636261     F.0123456789abcd
d05e1668:	                                         ef.

Disassembly of section .init:

d05e166c <_init>:
d05e166c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e166e:	bf00      	nop

Disassembly of section .fini:

d05e1670 <_fini>:
d05e1670:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e1672:	bf00      	nop
