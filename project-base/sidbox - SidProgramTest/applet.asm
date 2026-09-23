
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d03e0010 <applet_entry>:
d03e0010:	b570      	push	{r4, r5, r6, lr}
d03e0012:	4e09      	ldr	r6, [pc, #36]	; (d03e0038 <applet_entry+0x28>)
d03e0014:	460d      	mov	r5, r1
d03e0016:	4604      	mov	r4, r0
d03e0018:	2100      	movs	r1, #0
d03e001a:	6833      	ldr	r3, [r6, #0]
d03e001c:	6898      	ldr	r0, [r3, #8]
d03e001e:	f000 f961 	bl	d03e02e4 <setbuf>
d03e0022:	6833      	ldr	r3, [r6, #0]
d03e0024:	2100      	movs	r1, #0
d03e0026:	68d8      	ldr	r0, [r3, #12]
d03e0028:	f000 f95c 	bl	d03e02e4 <setbuf>
d03e002c:	4629      	mov	r1, r5
d03e002e:	4620      	mov	r0, r4
d03e0030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d03e0034:	f000 b87c 	b.w	d03e0130 <main>
d03e0038:	d03e0d8c 	.word	0xd03e0d8c

d03e003c <initMalloc>:
d03e003c:	4902      	ldr	r1, [pc, #8]	; (d03e0048 <initMalloc+0xc>)
d03e003e:	4b03      	ldr	r3, [pc, #12]	; (d03e004c <initMalloc+0x10>)
d03e0040:	4a03      	ldr	r2, [pc, #12]	; (d03e0050 <initMalloc+0x14>)
d03e0042:	1a5b      	subs	r3, r3, r1
d03e0044:	6013      	str	r3, [r2, #0]
d03e0046:	4770      	bx	lr
d03e0048:	d03e2e18 	.word	0xd03e2e18
d03e004c:	d0600000 	.word	0xd0600000
d03e0050:	d03e0e04 	.word	0xd03e0e04

d03e0054 <_write_r>:
d03e0054:	3901      	subs	r1, #1
d03e0056:	2901      	cmp	r1, #1
d03e0058:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e005a:	d81f      	bhi.n	d03e009c <_write_r+0x48>
d03e005c:	b1e2      	cbz	r2, d03e0098 <_write_r+0x44>
d03e005e:	461c      	mov	r4, r3
d03e0060:	b1d3      	cbz	r3, d03e0098 <_write_r+0x44>
d03e0062:	4d12      	ldr	r5, [pc, #72]	; (d03e00ac <_write_r+0x58>)
d03e0064:	682e      	ldr	r6, [r5, #0]
d03e0066:	b9ae      	cbnz	r6, d03e0094 <_write_r+0x40>
d03e0068:	4f11      	ldr	r7, [pc, #68]	; (d03e00b0 <_write_r+0x5c>)
d03e006a:	2301      	movs	r3, #1
d03e006c:	4611      	mov	r1, r2
d03e006e:	4630      	mov	r0, r6
d03e0070:	602b      	str	r3, [r5, #0]
d03e0072:	4622      	mov	r2, r4
d03e0074:	7a3b      	ldrb	r3, [r7, #8]
d03e0076:	f897 c009 	ldrb.w	ip, [r7, #9]
d03e007a:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d03e007e:	f897 c00a 	ldrb.w	ip, [r7, #10]
d03e0082:	7aff      	ldrb	r7, [r7, #11]
d03e0084:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d03e0088:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d03e008c:	681b      	ldr	r3, [r3, #0]
d03e008e:	685b      	ldr	r3, [r3, #4]
d03e0090:	4798      	blx	r3
d03e0092:	602e      	str	r6, [r5, #0]
d03e0094:	4620      	mov	r0, r4
d03e0096:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e0098:	2000      	movs	r0, #0
d03e009a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e009c:	f000 f89e 	bl	d03e01dc <__errno>
d03e00a0:	2209      	movs	r2, #9
d03e00a2:	4603      	mov	r3, r0
d03e00a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e00a8:	601a      	str	r2, [r3, #0]
d03e00aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e00ac:	d03e0df4 	.word	0xd03e0df4
d03e00b0:	2001f000 	.word	0x2001f000

d03e00b4 <_read>:
d03e00b4:	b508      	push	{r3, lr}
d03e00b6:	f000 f891 	bl	d03e01dc <__errno>
d03e00ba:	2258      	movs	r2, #88	; 0x58
d03e00bc:	4603      	mov	r3, r0
d03e00be:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e00c2:	601a      	str	r2, [r3, #0]
d03e00c4:	bd08      	pop	{r3, pc}
d03e00c6:	bf00      	nop

d03e00c8 <_close>:
d03e00c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e00cc:	4770      	bx	lr
d03e00ce:	bf00      	nop

d03e00d0 <_fstat>:
d03e00d0:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d03e00d4:	2000      	movs	r0, #0
d03e00d6:	604b      	str	r3, [r1, #4]
d03e00d8:	4770      	bx	lr
d03e00da:	bf00      	nop

d03e00dc <_lseek>:
d03e00dc:	2000      	movs	r0, #0
d03e00de:	4770      	bx	lr

d03e00e0 <_sbrk_r>:
d03e00e0:	4b0c      	ldr	r3, [pc, #48]	; (d03e0114 <_sbrk_r+0x34>)
d03e00e2:	4a0d      	ldr	r2, [pc, #52]	; (d03e0118 <_sbrk_r+0x38>)
d03e00e4:	6818      	ldr	r0, [r3, #0]
d03e00e6:	b510      	push	{r4, lr}
d03e00e8:	b918      	cbnz	r0, d03e00f2 <_sbrk_r+0x12>
d03e00ea:	1dd0      	adds	r0, r2, #7
d03e00ec:	f020 0007 	bic.w	r0, r0, #7
d03e00f0:	6018      	str	r0, [r3, #0]
d03e00f2:	4401      	add	r1, r0
d03e00f4:	4c09      	ldr	r4, [pc, #36]	; (d03e011c <_sbrk_r+0x3c>)
d03e00f6:	42a1      	cmp	r1, r4
d03e00f8:	d803      	bhi.n	d03e0102 <_sbrk_r+0x22>
d03e00fa:	4291      	cmp	r1, r2
d03e00fc:	d301      	bcc.n	d03e0102 <_sbrk_r+0x22>
d03e00fe:	6019      	str	r1, [r3, #0]
d03e0100:	bd10      	pop	{r4, pc}
d03e0102:	f000 f86b 	bl	d03e01dc <__errno>
d03e0106:	220c      	movs	r2, #12
d03e0108:	4603      	mov	r3, r0
d03e010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e010e:	601a      	str	r2, [r3, #0]
d03e0110:	bd10      	pop	{r4, pc}
d03e0112:	bf00      	nop
d03e0114:	d03e0df0 	.word	0xd03e0df0
d03e0118:	d03e2e18 	.word	0xd03e2e18
d03e011c:	d0600000 	.word	0xd0600000

d03e0120 <_isatty>:
d03e0120:	2001      	movs	r0, #1
d03e0122:	4770      	bx	lr

d03e0124 <app_loop_os>:
d03e0124:	4801      	ldr	r0, [pc, #4]	; (d03e012c <app_loop_os+0x8>)
d03e0126:	f000 b8d5 	b.w	d03e02d4 <puts>
d03e012a:	bf00      	nop
d03e012c:	d03e0cec 	.word	0xd03e0cec

d03e0130 <main>:
d03e0130:	b5f0      	push	{r4, r5, r6, r7, lr}
d03e0132:	4c26      	ldr	r4, [pc, #152]	; (d03e01cc <main+0x9c>)
d03e0134:	2000      	movs	r0, #0
d03e0136:	b085      	sub	sp, #20
d03e0138:	4f25      	ldr	r7, [pc, #148]	; (d03e01d0 <main+0xa0>)
d03e013a:	7823      	ldrb	r3, [r4, #0]
d03e013c:	4605      	mov	r5, r0
d03e013e:	7862      	ldrb	r2, [r4, #1]
d03e0140:	78a1      	ldrb	r1, [r4, #2]
d03e0142:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e0146:	78e2      	ldrb	r2, [r4, #3]
d03e0148:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e014c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e0150:	681b      	ldr	r3, [r3, #0]
d03e0152:	4798      	blx	r3
d03e0154:	f7ff ff72 	bl	d03e003c <initMalloc>
d03e0158:	7a23      	ldrb	r3, [r4, #8]
d03e015a:	7a62      	ldrb	r2, [r4, #9]
d03e015c:	f240 316d 	movw	r1, #877	; 0x36d
d03e0160:	7aa6      	ldrb	r6, [r4, #10]
d03e0162:	2064      	movs	r0, #100	; 0x64
d03e0164:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e0168:	7ae2      	ldrb	r2, [r4, #11]
d03e016a:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d03e016e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e0172:	220a      	movs	r2, #10
d03e0174:	685e      	ldr	r6, [r3, #4]
d03e0176:	23c8      	movs	r3, #200	; 0xc8
d03e0178:	9102      	str	r1, [sp, #8]
d03e017a:	4611      	mov	r1, r2
d03e017c:	9701      	str	r7, [sp, #4]
d03e017e:	9000      	str	r0, [sp, #0]
d03e0180:	4814      	ldr	r0, [pc, #80]	; (d03e01d4 <main+0xa4>)
d03e0182:	6836      	ldr	r6, [r6, #0]
d03e0184:	47b0      	blx	r6
d03e0186:	7a23      	ldrb	r3, [r4, #8]
d03e0188:	7a62      	ldrb	r2, [r4, #9]
d03e018a:	7aa1      	ldrb	r1, [r4, #10]
d03e018c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e0190:	7ae2      	ldrb	r2, [r4, #11]
d03e0192:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e0196:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e019a:	695b      	ldr	r3, [r3, #20]
d03e019c:	681b      	ldr	r3, [r3, #0]
d03e019e:	4798      	blx	r3
d03e01a0:	7a22      	ldrb	r2, [r4, #8]
d03e01a2:	7a63      	ldrb	r3, [r4, #9]
d03e01a4:	4629      	mov	r1, r5
d03e01a6:	7aa7      	ldrb	r7, [r4, #10]
d03e01a8:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d03e01ac:	7ae6      	ldrb	r6, [r4, #11]
d03e01ae:	4b0a      	ldr	r3, [pc, #40]	; (d03e01d8 <main+0xa8>)
d03e01b0:	ea42 4407 	orr.w	r4, r2, r7, lsl #16
d03e01b4:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
d03e01b8:	ea44 6406 	orr.w	r4, r4, r6, lsl #24
d03e01bc:	6964      	ldr	r4, [r4, #20]
d03e01be:	9500      	str	r5, [sp, #0]
d03e01c0:	68a4      	ldr	r4, [r4, #8]
d03e01c2:	47a0      	blx	r4
d03e01c4:	4628      	mov	r0, r5
d03e01c6:	b005      	add	sp, #20
d03e01c8:	bdf0      	pop	{r4, r5, r6, r7, pc}
d03e01ca:	bf00      	nop
d03e01cc:	2001f000 	.word	0x2001f000
d03e01d0:	d03e0d0c 	.word	0xd03e0d0c
d03e01d4:	d03e0df8 	.word	0xd03e0df8
d03e01d8:	d03e0125 	.word	0xd03e0125

d03e01dc <__errno>:
d03e01dc:	4b01      	ldr	r3, [pc, #4]	; (d03e01e4 <__errno+0x8>)
d03e01de:	6818      	ldr	r0, [r3, #0]
d03e01e0:	4770      	bx	lr
d03e01e2:	bf00      	nop
d03e01e4:	d03e0d8c 	.word	0xd03e0d8c

d03e01e8 <memset>:
d03e01e8:	4402      	add	r2, r0
d03e01ea:	4603      	mov	r3, r0
d03e01ec:	4293      	cmp	r3, r2
d03e01ee:	d100      	bne.n	d03e01f2 <memset+0xa>
d03e01f0:	4770      	bx	lr
d03e01f2:	f803 1b01 	strb.w	r1, [r3], #1
d03e01f6:	e7f9      	b.n	d03e01ec <memset+0x4>

d03e01f8 <_puts_r>:
d03e01f8:	b570      	push	{r4, r5, r6, lr}
d03e01fa:	460e      	mov	r6, r1
d03e01fc:	4605      	mov	r5, r0
d03e01fe:	b118      	cbz	r0, d03e0208 <_puts_r+0x10>
d03e0200:	6983      	ldr	r3, [r0, #24]
d03e0202:	b90b      	cbnz	r3, d03e0208 <_puts_r+0x10>
d03e0204:	f000 fb16 	bl	d03e0834 <__sinit>
d03e0208:	69ab      	ldr	r3, [r5, #24]
d03e020a:	68ac      	ldr	r4, [r5, #8]
d03e020c:	b913      	cbnz	r3, d03e0214 <_puts_r+0x1c>
d03e020e:	4628      	mov	r0, r5
d03e0210:	f000 fb10 	bl	d03e0834 <__sinit>
d03e0214:	4b2c      	ldr	r3, [pc, #176]	; (d03e02c8 <_puts_r+0xd0>)
d03e0216:	429c      	cmp	r4, r3
d03e0218:	d120      	bne.n	d03e025c <_puts_r+0x64>
d03e021a:	686c      	ldr	r4, [r5, #4]
d03e021c:	6e63      	ldr	r3, [r4, #100]	; 0x64
d03e021e:	07db      	lsls	r3, r3, #31
d03e0220:	d405      	bmi.n	d03e022e <_puts_r+0x36>
d03e0222:	89a3      	ldrh	r3, [r4, #12]
d03e0224:	0598      	lsls	r0, r3, #22
d03e0226:	d402      	bmi.n	d03e022e <_puts_r+0x36>
d03e0228:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03e022a:	f000 fba1 	bl	d03e0970 <__retarget_lock_acquire_recursive>
d03e022e:	89a3      	ldrh	r3, [r4, #12]
d03e0230:	0719      	lsls	r1, r3, #28
d03e0232:	d51d      	bpl.n	d03e0270 <_puts_r+0x78>
d03e0234:	6923      	ldr	r3, [r4, #16]
d03e0236:	b1db      	cbz	r3, d03e0270 <_puts_r+0x78>
d03e0238:	3e01      	subs	r6, #1
d03e023a:	68a3      	ldr	r3, [r4, #8]
d03e023c:	f816 1f01 	ldrb.w	r1, [r6, #1]!
d03e0240:	3b01      	subs	r3, #1
d03e0242:	60a3      	str	r3, [r4, #8]
d03e0244:	bb39      	cbnz	r1, d03e0296 <_puts_r+0x9e>
d03e0246:	2b00      	cmp	r3, #0
d03e0248:	da38      	bge.n	d03e02bc <_puts_r+0xc4>
d03e024a:	4622      	mov	r2, r4
d03e024c:	210a      	movs	r1, #10
d03e024e:	4628      	mov	r0, r5
d03e0250:	f000 f916 	bl	d03e0480 <__swbuf_r>
d03e0254:	3001      	adds	r0, #1
d03e0256:	d011      	beq.n	d03e027c <_puts_r+0x84>
d03e0258:	250a      	movs	r5, #10
d03e025a:	e011      	b.n	d03e0280 <_puts_r+0x88>
d03e025c:	4b1b      	ldr	r3, [pc, #108]	; (d03e02cc <_puts_r+0xd4>)
d03e025e:	429c      	cmp	r4, r3
d03e0260:	d101      	bne.n	d03e0266 <_puts_r+0x6e>
d03e0262:	68ac      	ldr	r4, [r5, #8]
d03e0264:	e7da      	b.n	d03e021c <_puts_r+0x24>
d03e0266:	4b1a      	ldr	r3, [pc, #104]	; (d03e02d0 <_puts_r+0xd8>)
d03e0268:	429c      	cmp	r4, r3
d03e026a:	bf08      	it	eq
d03e026c:	68ec      	ldreq	r4, [r5, #12]
d03e026e:	e7d5      	b.n	d03e021c <_puts_r+0x24>
d03e0270:	4621      	mov	r1, r4
d03e0272:	4628      	mov	r0, r5
d03e0274:	f000 f956 	bl	d03e0524 <__swsetup_r>
d03e0278:	2800      	cmp	r0, #0
d03e027a:	d0dd      	beq.n	d03e0238 <_puts_r+0x40>
d03e027c:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d03e0280:	6e63      	ldr	r3, [r4, #100]	; 0x64
d03e0282:	07da      	lsls	r2, r3, #31
d03e0284:	d405      	bmi.n	d03e0292 <_puts_r+0x9a>
d03e0286:	89a3      	ldrh	r3, [r4, #12]
d03e0288:	059b      	lsls	r3, r3, #22
d03e028a:	d402      	bmi.n	d03e0292 <_puts_r+0x9a>
d03e028c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03e028e:	f000 fb70 	bl	d03e0972 <__retarget_lock_release_recursive>
d03e0292:	4628      	mov	r0, r5
d03e0294:	bd70      	pop	{r4, r5, r6, pc}
d03e0296:	2b00      	cmp	r3, #0
d03e0298:	da04      	bge.n	d03e02a4 <_puts_r+0xac>
d03e029a:	69a2      	ldr	r2, [r4, #24]
d03e029c:	429a      	cmp	r2, r3
d03e029e:	dc06      	bgt.n	d03e02ae <_puts_r+0xb6>
d03e02a0:	290a      	cmp	r1, #10
d03e02a2:	d004      	beq.n	d03e02ae <_puts_r+0xb6>
d03e02a4:	6823      	ldr	r3, [r4, #0]
d03e02a6:	1c5a      	adds	r2, r3, #1
d03e02a8:	6022      	str	r2, [r4, #0]
d03e02aa:	7019      	strb	r1, [r3, #0]
d03e02ac:	e7c5      	b.n	d03e023a <_puts_r+0x42>
d03e02ae:	4622      	mov	r2, r4
d03e02b0:	4628      	mov	r0, r5
d03e02b2:	f000 f8e5 	bl	d03e0480 <__swbuf_r>
d03e02b6:	3001      	adds	r0, #1
d03e02b8:	d1bf      	bne.n	d03e023a <_puts_r+0x42>
d03e02ba:	e7df      	b.n	d03e027c <_puts_r+0x84>
d03e02bc:	6823      	ldr	r3, [r4, #0]
d03e02be:	250a      	movs	r5, #10
d03e02c0:	1c5a      	adds	r2, r3, #1
d03e02c2:	6022      	str	r2, [r4, #0]
d03e02c4:	701d      	strb	r5, [r3, #0]
d03e02c6:	e7db      	b.n	d03e0280 <_puts_r+0x88>
d03e02c8:	d03e0d44 	.word	0xd03e0d44
d03e02cc:	d03e0d64 	.word	0xd03e0d64
d03e02d0:	d03e0d24 	.word	0xd03e0d24

d03e02d4 <puts>:
d03e02d4:	4b02      	ldr	r3, [pc, #8]	; (d03e02e0 <puts+0xc>)
d03e02d6:	4601      	mov	r1, r0
d03e02d8:	6818      	ldr	r0, [r3, #0]
d03e02da:	f7ff bf8d 	b.w	d03e01f8 <_puts_r>
d03e02de:	bf00      	nop
d03e02e0:	d03e0d8c 	.word	0xd03e0d8c

d03e02e4 <setbuf>:
d03e02e4:	2900      	cmp	r1, #0
d03e02e6:	f44f 6380 	mov.w	r3, #1024	; 0x400
d03e02ea:	bf0c      	ite	eq
d03e02ec:	2202      	moveq	r2, #2
d03e02ee:	2200      	movne	r2, #0
d03e02f0:	f000 b800 	b.w	d03e02f4 <setvbuf>

d03e02f4 <setvbuf>:
d03e02f4:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d03e02f8:	461d      	mov	r5, r3
d03e02fa:	4b5d      	ldr	r3, [pc, #372]	; (d03e0470 <setvbuf+0x17c>)
d03e02fc:	681f      	ldr	r7, [r3, #0]
d03e02fe:	4604      	mov	r4, r0
d03e0300:	460e      	mov	r6, r1
d03e0302:	4690      	mov	r8, r2
d03e0304:	b127      	cbz	r7, d03e0310 <setvbuf+0x1c>
d03e0306:	69bb      	ldr	r3, [r7, #24]
d03e0308:	b913      	cbnz	r3, d03e0310 <setvbuf+0x1c>
d03e030a:	4638      	mov	r0, r7
d03e030c:	f000 fa92 	bl	d03e0834 <__sinit>
d03e0310:	4b58      	ldr	r3, [pc, #352]	; (d03e0474 <setvbuf+0x180>)
d03e0312:	429c      	cmp	r4, r3
d03e0314:	d167      	bne.n	d03e03e6 <setvbuf+0xf2>
d03e0316:	687c      	ldr	r4, [r7, #4]
d03e0318:	f1b8 0f02 	cmp.w	r8, #2
d03e031c:	d006      	beq.n	d03e032c <setvbuf+0x38>
d03e031e:	f1b8 0f01 	cmp.w	r8, #1
d03e0322:	f200 809f 	bhi.w	d03e0464 <setvbuf+0x170>
d03e0326:	2d00      	cmp	r5, #0
d03e0328:	f2c0 809c 	blt.w	d03e0464 <setvbuf+0x170>
d03e032c:	6e63      	ldr	r3, [r4, #100]	; 0x64
d03e032e:	07db      	lsls	r3, r3, #31
d03e0330:	d405      	bmi.n	d03e033e <setvbuf+0x4a>
d03e0332:	89a3      	ldrh	r3, [r4, #12]
d03e0334:	0598      	lsls	r0, r3, #22
d03e0336:	d402      	bmi.n	d03e033e <setvbuf+0x4a>
d03e0338:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03e033a:	f000 fb19 	bl	d03e0970 <__retarget_lock_acquire_recursive>
d03e033e:	4621      	mov	r1, r4
d03e0340:	4638      	mov	r0, r7
d03e0342:	f000 f9e3 	bl	d03e070c <_fflush_r>
d03e0346:	6b61      	ldr	r1, [r4, #52]	; 0x34
d03e0348:	b141      	cbz	r1, d03e035c <setvbuf+0x68>
d03e034a:	f104 0344 	add.w	r3, r4, #68	; 0x44
d03e034e:	4299      	cmp	r1, r3
d03e0350:	d002      	beq.n	d03e0358 <setvbuf+0x64>
d03e0352:	4638      	mov	r0, r7
d03e0354:	f000 fb7a 	bl	d03e0a4c <_free_r>
d03e0358:	2300      	movs	r3, #0
d03e035a:	6363      	str	r3, [r4, #52]	; 0x34
d03e035c:	2300      	movs	r3, #0
d03e035e:	61a3      	str	r3, [r4, #24]
d03e0360:	6063      	str	r3, [r4, #4]
d03e0362:	89a3      	ldrh	r3, [r4, #12]
d03e0364:	0619      	lsls	r1, r3, #24
d03e0366:	d503      	bpl.n	d03e0370 <setvbuf+0x7c>
d03e0368:	6921      	ldr	r1, [r4, #16]
d03e036a:	4638      	mov	r0, r7
d03e036c:	f000 fb6e 	bl	d03e0a4c <_free_r>
d03e0370:	89a3      	ldrh	r3, [r4, #12]
d03e0372:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d03e0376:	f023 0303 	bic.w	r3, r3, #3
d03e037a:	f1b8 0f02 	cmp.w	r8, #2
d03e037e:	81a3      	strh	r3, [r4, #12]
d03e0380:	d06c      	beq.n	d03e045c <setvbuf+0x168>
d03e0382:	ab01      	add	r3, sp, #4
d03e0384:	466a      	mov	r2, sp
d03e0386:	4621      	mov	r1, r4
d03e0388:	4638      	mov	r0, r7
d03e038a:	f000 faf3 	bl	d03e0974 <__swhatbuf_r>
d03e038e:	89a3      	ldrh	r3, [r4, #12]
d03e0390:	4318      	orrs	r0, r3
d03e0392:	81a0      	strh	r0, [r4, #12]
d03e0394:	2d00      	cmp	r5, #0
d03e0396:	d130      	bne.n	d03e03fa <setvbuf+0x106>
d03e0398:	9d00      	ldr	r5, [sp, #0]
d03e039a:	4628      	mov	r0, r5
d03e039c:	f000 fb4e 	bl	d03e0a3c <malloc>
d03e03a0:	4606      	mov	r6, r0
d03e03a2:	2800      	cmp	r0, #0
d03e03a4:	d155      	bne.n	d03e0452 <setvbuf+0x15e>
d03e03a6:	f8dd 9000 	ldr.w	r9, [sp]
d03e03aa:	45a9      	cmp	r9, r5
d03e03ac:	d14a      	bne.n	d03e0444 <setvbuf+0x150>
d03e03ae:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d03e03b2:	2200      	movs	r2, #0
d03e03b4:	60a2      	str	r2, [r4, #8]
d03e03b6:	f104 0247 	add.w	r2, r4, #71	; 0x47
d03e03ba:	6022      	str	r2, [r4, #0]
d03e03bc:	6122      	str	r2, [r4, #16]
d03e03be:	2201      	movs	r2, #1
d03e03c0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d03e03c4:	6162      	str	r2, [r4, #20]
d03e03c6:	6e62      	ldr	r2, [r4, #100]	; 0x64
d03e03c8:	f043 0302 	orr.w	r3, r3, #2
d03e03cc:	07d2      	lsls	r2, r2, #31
d03e03ce:	81a3      	strh	r3, [r4, #12]
d03e03d0:	d405      	bmi.n	d03e03de <setvbuf+0xea>
d03e03d2:	f413 7f00 	tst.w	r3, #512	; 0x200
d03e03d6:	d102      	bne.n	d03e03de <setvbuf+0xea>
d03e03d8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03e03da:	f000 faca 	bl	d03e0972 <__retarget_lock_release_recursive>
d03e03de:	4628      	mov	r0, r5
d03e03e0:	b003      	add	sp, #12
d03e03e2:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d03e03e6:	4b24      	ldr	r3, [pc, #144]	; (d03e0478 <setvbuf+0x184>)
d03e03e8:	429c      	cmp	r4, r3
d03e03ea:	d101      	bne.n	d03e03f0 <setvbuf+0xfc>
d03e03ec:	68bc      	ldr	r4, [r7, #8]
d03e03ee:	e793      	b.n	d03e0318 <setvbuf+0x24>
d03e03f0:	4b22      	ldr	r3, [pc, #136]	; (d03e047c <setvbuf+0x188>)
d03e03f2:	429c      	cmp	r4, r3
d03e03f4:	bf08      	it	eq
d03e03f6:	68fc      	ldreq	r4, [r7, #12]
d03e03f8:	e78e      	b.n	d03e0318 <setvbuf+0x24>
d03e03fa:	2e00      	cmp	r6, #0
d03e03fc:	d0cd      	beq.n	d03e039a <setvbuf+0xa6>
d03e03fe:	69bb      	ldr	r3, [r7, #24]
d03e0400:	b913      	cbnz	r3, d03e0408 <setvbuf+0x114>
d03e0402:	4638      	mov	r0, r7
d03e0404:	f000 fa16 	bl	d03e0834 <__sinit>
d03e0408:	f1b8 0f01 	cmp.w	r8, #1
d03e040c:	bf08      	it	eq
d03e040e:	89a3      	ldrheq	r3, [r4, #12]
d03e0410:	6026      	str	r6, [r4, #0]
d03e0412:	bf04      	itt	eq
d03e0414:	f043 0301 	orreq.w	r3, r3, #1
d03e0418:	81a3      	strheq	r3, [r4, #12]
d03e041a:	89a2      	ldrh	r2, [r4, #12]
d03e041c:	f012 0308 	ands.w	r3, r2, #8
d03e0420:	e9c4 6504 	strd	r6, r5, [r4, #16]
d03e0424:	d01c      	beq.n	d03e0460 <setvbuf+0x16c>
d03e0426:	07d3      	lsls	r3, r2, #31
d03e0428:	bf41      	itttt	mi
d03e042a:	2300      	movmi	r3, #0
d03e042c:	426d      	negmi	r5, r5
d03e042e:	60a3      	strmi	r3, [r4, #8]
d03e0430:	61a5      	strmi	r5, [r4, #24]
d03e0432:	bf58      	it	pl
d03e0434:	60a5      	strpl	r5, [r4, #8]
d03e0436:	6e65      	ldr	r5, [r4, #100]	; 0x64
d03e0438:	f015 0501 	ands.w	r5, r5, #1
d03e043c:	d115      	bne.n	d03e046a <setvbuf+0x176>
d03e043e:	f412 7f00 	tst.w	r2, #512	; 0x200
d03e0442:	e7c8      	b.n	d03e03d6 <setvbuf+0xe2>
d03e0444:	4648      	mov	r0, r9
d03e0446:	f000 faf9 	bl	d03e0a3c <malloc>
d03e044a:	4606      	mov	r6, r0
d03e044c:	2800      	cmp	r0, #0
d03e044e:	d0ae      	beq.n	d03e03ae <setvbuf+0xba>
d03e0450:	464d      	mov	r5, r9
d03e0452:	89a3      	ldrh	r3, [r4, #12]
d03e0454:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d03e0458:	81a3      	strh	r3, [r4, #12]
d03e045a:	e7d0      	b.n	d03e03fe <setvbuf+0x10a>
d03e045c:	2500      	movs	r5, #0
d03e045e:	e7a8      	b.n	d03e03b2 <setvbuf+0xbe>
d03e0460:	60a3      	str	r3, [r4, #8]
d03e0462:	e7e8      	b.n	d03e0436 <setvbuf+0x142>
d03e0464:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d03e0468:	e7b9      	b.n	d03e03de <setvbuf+0xea>
d03e046a:	2500      	movs	r5, #0
d03e046c:	e7b7      	b.n	d03e03de <setvbuf+0xea>
d03e046e:	bf00      	nop
d03e0470:	d03e0d8c 	.word	0xd03e0d8c
d03e0474:	d03e0d44 	.word	0xd03e0d44
d03e0478:	d03e0d64 	.word	0xd03e0d64
d03e047c:	d03e0d24 	.word	0xd03e0d24

d03e0480 <__swbuf_r>:
d03e0480:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e0482:	460e      	mov	r6, r1
d03e0484:	4614      	mov	r4, r2
d03e0486:	4605      	mov	r5, r0
d03e0488:	b118      	cbz	r0, d03e0492 <__swbuf_r+0x12>
d03e048a:	6983      	ldr	r3, [r0, #24]
d03e048c:	b90b      	cbnz	r3, d03e0492 <__swbuf_r+0x12>
d03e048e:	f000 f9d1 	bl	d03e0834 <__sinit>
d03e0492:	4b21      	ldr	r3, [pc, #132]	; (d03e0518 <__swbuf_r+0x98>)
d03e0494:	429c      	cmp	r4, r3
d03e0496:	d12b      	bne.n	d03e04f0 <__swbuf_r+0x70>
d03e0498:	686c      	ldr	r4, [r5, #4]
d03e049a:	69a3      	ldr	r3, [r4, #24]
d03e049c:	60a3      	str	r3, [r4, #8]
d03e049e:	89a3      	ldrh	r3, [r4, #12]
d03e04a0:	071a      	lsls	r2, r3, #28
d03e04a2:	d52f      	bpl.n	d03e0504 <__swbuf_r+0x84>
d03e04a4:	6923      	ldr	r3, [r4, #16]
d03e04a6:	b36b      	cbz	r3, d03e0504 <__swbuf_r+0x84>
d03e04a8:	6923      	ldr	r3, [r4, #16]
d03e04aa:	6820      	ldr	r0, [r4, #0]
d03e04ac:	1ac0      	subs	r0, r0, r3
d03e04ae:	6963      	ldr	r3, [r4, #20]
d03e04b0:	b2f6      	uxtb	r6, r6
d03e04b2:	4283      	cmp	r3, r0
d03e04b4:	4637      	mov	r7, r6
d03e04b6:	dc04      	bgt.n	d03e04c2 <__swbuf_r+0x42>
d03e04b8:	4621      	mov	r1, r4
d03e04ba:	4628      	mov	r0, r5
d03e04bc:	f000 f926 	bl	d03e070c <_fflush_r>
d03e04c0:	bb30      	cbnz	r0, d03e0510 <__swbuf_r+0x90>
d03e04c2:	68a3      	ldr	r3, [r4, #8]
d03e04c4:	3b01      	subs	r3, #1
d03e04c6:	60a3      	str	r3, [r4, #8]
d03e04c8:	6823      	ldr	r3, [r4, #0]
d03e04ca:	1c5a      	adds	r2, r3, #1
d03e04cc:	6022      	str	r2, [r4, #0]
d03e04ce:	701e      	strb	r6, [r3, #0]
d03e04d0:	6963      	ldr	r3, [r4, #20]
d03e04d2:	3001      	adds	r0, #1
d03e04d4:	4283      	cmp	r3, r0
d03e04d6:	d004      	beq.n	d03e04e2 <__swbuf_r+0x62>
d03e04d8:	89a3      	ldrh	r3, [r4, #12]
d03e04da:	07db      	lsls	r3, r3, #31
d03e04dc:	d506      	bpl.n	d03e04ec <__swbuf_r+0x6c>
d03e04de:	2e0a      	cmp	r6, #10
d03e04e0:	d104      	bne.n	d03e04ec <__swbuf_r+0x6c>
d03e04e2:	4621      	mov	r1, r4
d03e04e4:	4628      	mov	r0, r5
d03e04e6:	f000 f911 	bl	d03e070c <_fflush_r>
d03e04ea:	b988      	cbnz	r0, d03e0510 <__swbuf_r+0x90>
d03e04ec:	4638      	mov	r0, r7
d03e04ee:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e04f0:	4b0a      	ldr	r3, [pc, #40]	; (d03e051c <__swbuf_r+0x9c>)
d03e04f2:	429c      	cmp	r4, r3
d03e04f4:	d101      	bne.n	d03e04fa <__swbuf_r+0x7a>
d03e04f6:	68ac      	ldr	r4, [r5, #8]
d03e04f8:	e7cf      	b.n	d03e049a <__swbuf_r+0x1a>
d03e04fa:	4b09      	ldr	r3, [pc, #36]	; (d03e0520 <__swbuf_r+0xa0>)
d03e04fc:	429c      	cmp	r4, r3
d03e04fe:	bf08      	it	eq
d03e0500:	68ec      	ldreq	r4, [r5, #12]
d03e0502:	e7ca      	b.n	d03e049a <__swbuf_r+0x1a>
d03e0504:	4621      	mov	r1, r4
d03e0506:	4628      	mov	r0, r5
d03e0508:	f000 f80c 	bl	d03e0524 <__swsetup_r>
d03e050c:	2800      	cmp	r0, #0
d03e050e:	d0cb      	beq.n	d03e04a8 <__swbuf_r+0x28>
d03e0510:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d03e0514:	e7ea      	b.n	d03e04ec <__swbuf_r+0x6c>
d03e0516:	bf00      	nop
d03e0518:	d03e0d44 	.word	0xd03e0d44
d03e051c:	d03e0d64 	.word	0xd03e0d64
d03e0520:	d03e0d24 	.word	0xd03e0d24

d03e0524 <__swsetup_r>:
d03e0524:	4b32      	ldr	r3, [pc, #200]	; (d03e05f0 <__swsetup_r+0xcc>)
d03e0526:	b570      	push	{r4, r5, r6, lr}
d03e0528:	681d      	ldr	r5, [r3, #0]
d03e052a:	4606      	mov	r6, r0
d03e052c:	460c      	mov	r4, r1
d03e052e:	b125      	cbz	r5, d03e053a <__swsetup_r+0x16>
d03e0530:	69ab      	ldr	r3, [r5, #24]
d03e0532:	b913      	cbnz	r3, d03e053a <__swsetup_r+0x16>
d03e0534:	4628      	mov	r0, r5
d03e0536:	f000 f97d 	bl	d03e0834 <__sinit>
d03e053a:	4b2e      	ldr	r3, [pc, #184]	; (d03e05f4 <__swsetup_r+0xd0>)
d03e053c:	429c      	cmp	r4, r3
d03e053e:	d10f      	bne.n	d03e0560 <__swsetup_r+0x3c>
d03e0540:	686c      	ldr	r4, [r5, #4]
d03e0542:	89a3      	ldrh	r3, [r4, #12]
d03e0544:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d03e0548:	0719      	lsls	r1, r3, #28
d03e054a:	d42c      	bmi.n	d03e05a6 <__swsetup_r+0x82>
d03e054c:	06dd      	lsls	r5, r3, #27
d03e054e:	d411      	bmi.n	d03e0574 <__swsetup_r+0x50>
d03e0550:	2309      	movs	r3, #9
d03e0552:	6033      	str	r3, [r6, #0]
d03e0554:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d03e0558:	81a3      	strh	r3, [r4, #12]
d03e055a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e055e:	e03e      	b.n	d03e05de <__swsetup_r+0xba>
d03e0560:	4b25      	ldr	r3, [pc, #148]	; (d03e05f8 <__swsetup_r+0xd4>)
d03e0562:	429c      	cmp	r4, r3
d03e0564:	d101      	bne.n	d03e056a <__swsetup_r+0x46>
d03e0566:	68ac      	ldr	r4, [r5, #8]
d03e0568:	e7eb      	b.n	d03e0542 <__swsetup_r+0x1e>
d03e056a:	4b24      	ldr	r3, [pc, #144]	; (d03e05fc <__swsetup_r+0xd8>)
d03e056c:	429c      	cmp	r4, r3
d03e056e:	bf08      	it	eq
d03e0570:	68ec      	ldreq	r4, [r5, #12]
d03e0572:	e7e6      	b.n	d03e0542 <__swsetup_r+0x1e>
d03e0574:	0758      	lsls	r0, r3, #29
d03e0576:	d512      	bpl.n	d03e059e <__swsetup_r+0x7a>
d03e0578:	6b61      	ldr	r1, [r4, #52]	; 0x34
d03e057a:	b141      	cbz	r1, d03e058e <__swsetup_r+0x6a>
d03e057c:	f104 0344 	add.w	r3, r4, #68	; 0x44
d03e0580:	4299      	cmp	r1, r3
d03e0582:	d002      	beq.n	d03e058a <__swsetup_r+0x66>
d03e0584:	4630      	mov	r0, r6
d03e0586:	f000 fa61 	bl	d03e0a4c <_free_r>
d03e058a:	2300      	movs	r3, #0
d03e058c:	6363      	str	r3, [r4, #52]	; 0x34
d03e058e:	89a3      	ldrh	r3, [r4, #12]
d03e0590:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d03e0594:	81a3      	strh	r3, [r4, #12]
d03e0596:	2300      	movs	r3, #0
d03e0598:	6063      	str	r3, [r4, #4]
d03e059a:	6923      	ldr	r3, [r4, #16]
d03e059c:	6023      	str	r3, [r4, #0]
d03e059e:	89a3      	ldrh	r3, [r4, #12]
d03e05a0:	f043 0308 	orr.w	r3, r3, #8
d03e05a4:	81a3      	strh	r3, [r4, #12]
d03e05a6:	6923      	ldr	r3, [r4, #16]
d03e05a8:	b94b      	cbnz	r3, d03e05be <__swsetup_r+0x9a>
d03e05aa:	89a3      	ldrh	r3, [r4, #12]
d03e05ac:	f403 7320 	and.w	r3, r3, #640	; 0x280
d03e05b0:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d03e05b4:	d003      	beq.n	d03e05be <__swsetup_r+0x9a>
d03e05b6:	4621      	mov	r1, r4
d03e05b8:	4630      	mov	r0, r6
d03e05ba:	f000 f9ff 	bl	d03e09bc <__smakebuf_r>
d03e05be:	89a0      	ldrh	r0, [r4, #12]
d03e05c0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d03e05c4:	f010 0301 	ands.w	r3, r0, #1
d03e05c8:	d00a      	beq.n	d03e05e0 <__swsetup_r+0xbc>
d03e05ca:	2300      	movs	r3, #0
d03e05cc:	60a3      	str	r3, [r4, #8]
d03e05ce:	6963      	ldr	r3, [r4, #20]
d03e05d0:	425b      	negs	r3, r3
d03e05d2:	61a3      	str	r3, [r4, #24]
d03e05d4:	6923      	ldr	r3, [r4, #16]
d03e05d6:	b943      	cbnz	r3, d03e05ea <__swsetup_r+0xc6>
d03e05d8:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d03e05dc:	d1ba      	bne.n	d03e0554 <__swsetup_r+0x30>
d03e05de:	bd70      	pop	{r4, r5, r6, pc}
d03e05e0:	0781      	lsls	r1, r0, #30
d03e05e2:	bf58      	it	pl
d03e05e4:	6963      	ldrpl	r3, [r4, #20]
d03e05e6:	60a3      	str	r3, [r4, #8]
d03e05e8:	e7f4      	b.n	d03e05d4 <__swsetup_r+0xb0>
d03e05ea:	2000      	movs	r0, #0
d03e05ec:	e7f7      	b.n	d03e05de <__swsetup_r+0xba>
d03e05ee:	bf00      	nop
d03e05f0:	d03e0d8c 	.word	0xd03e0d8c
d03e05f4:	d03e0d44 	.word	0xd03e0d44
d03e05f8:	d03e0d64 	.word	0xd03e0d64
d03e05fc:	d03e0d24 	.word	0xd03e0d24

d03e0600 <__sflush_r>:
d03e0600:	898a      	ldrh	r2, [r1, #12]
d03e0602:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03e0606:	4605      	mov	r5, r0
d03e0608:	0710      	lsls	r0, r2, #28
d03e060a:	460c      	mov	r4, r1
d03e060c:	d458      	bmi.n	d03e06c0 <__sflush_r+0xc0>
d03e060e:	684b      	ldr	r3, [r1, #4]
d03e0610:	2b00      	cmp	r3, #0
d03e0612:	dc05      	bgt.n	d03e0620 <__sflush_r+0x20>
d03e0614:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d03e0616:	2b00      	cmp	r3, #0
d03e0618:	dc02      	bgt.n	d03e0620 <__sflush_r+0x20>
d03e061a:	2000      	movs	r0, #0
d03e061c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d03e0620:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d03e0622:	2e00      	cmp	r6, #0
d03e0624:	d0f9      	beq.n	d03e061a <__sflush_r+0x1a>
d03e0626:	2300      	movs	r3, #0
d03e0628:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d03e062c:	682f      	ldr	r7, [r5, #0]
d03e062e:	602b      	str	r3, [r5, #0]
d03e0630:	d032      	beq.n	d03e0698 <__sflush_r+0x98>
d03e0632:	6d60      	ldr	r0, [r4, #84]	; 0x54
d03e0634:	89a3      	ldrh	r3, [r4, #12]
d03e0636:	075a      	lsls	r2, r3, #29
d03e0638:	d505      	bpl.n	d03e0646 <__sflush_r+0x46>
d03e063a:	6863      	ldr	r3, [r4, #4]
d03e063c:	1ac0      	subs	r0, r0, r3
d03e063e:	6b63      	ldr	r3, [r4, #52]	; 0x34
d03e0640:	b10b      	cbz	r3, d03e0646 <__sflush_r+0x46>
d03e0642:	6c23      	ldr	r3, [r4, #64]	; 0x40
d03e0644:	1ac0      	subs	r0, r0, r3
d03e0646:	2300      	movs	r3, #0
d03e0648:	4602      	mov	r2, r0
d03e064a:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d03e064c:	6a21      	ldr	r1, [r4, #32]
d03e064e:	4628      	mov	r0, r5
d03e0650:	47b0      	blx	r6
d03e0652:	1c43      	adds	r3, r0, #1
d03e0654:	89a3      	ldrh	r3, [r4, #12]
d03e0656:	d106      	bne.n	d03e0666 <__sflush_r+0x66>
d03e0658:	6829      	ldr	r1, [r5, #0]
d03e065a:	291d      	cmp	r1, #29
d03e065c:	d82c      	bhi.n	d03e06b8 <__sflush_r+0xb8>
d03e065e:	4a2a      	ldr	r2, [pc, #168]	; (d03e0708 <__sflush_r+0x108>)
d03e0660:	40ca      	lsrs	r2, r1
d03e0662:	07d6      	lsls	r6, r2, #31
d03e0664:	d528      	bpl.n	d03e06b8 <__sflush_r+0xb8>
d03e0666:	2200      	movs	r2, #0
d03e0668:	6062      	str	r2, [r4, #4]
d03e066a:	04d9      	lsls	r1, r3, #19
d03e066c:	6922      	ldr	r2, [r4, #16]
d03e066e:	6022      	str	r2, [r4, #0]
d03e0670:	d504      	bpl.n	d03e067c <__sflush_r+0x7c>
d03e0672:	1c42      	adds	r2, r0, #1
d03e0674:	d101      	bne.n	d03e067a <__sflush_r+0x7a>
d03e0676:	682b      	ldr	r3, [r5, #0]
d03e0678:	b903      	cbnz	r3, d03e067c <__sflush_r+0x7c>
d03e067a:	6560      	str	r0, [r4, #84]	; 0x54
d03e067c:	6b61      	ldr	r1, [r4, #52]	; 0x34
d03e067e:	602f      	str	r7, [r5, #0]
d03e0680:	2900      	cmp	r1, #0
d03e0682:	d0ca      	beq.n	d03e061a <__sflush_r+0x1a>
d03e0684:	f104 0344 	add.w	r3, r4, #68	; 0x44
d03e0688:	4299      	cmp	r1, r3
d03e068a:	d002      	beq.n	d03e0692 <__sflush_r+0x92>
d03e068c:	4628      	mov	r0, r5
d03e068e:	f000 f9dd 	bl	d03e0a4c <_free_r>
d03e0692:	2000      	movs	r0, #0
d03e0694:	6360      	str	r0, [r4, #52]	; 0x34
d03e0696:	e7c1      	b.n	d03e061c <__sflush_r+0x1c>
d03e0698:	6a21      	ldr	r1, [r4, #32]
d03e069a:	2301      	movs	r3, #1
d03e069c:	4628      	mov	r0, r5
d03e069e:	47b0      	blx	r6
d03e06a0:	1c41      	adds	r1, r0, #1
d03e06a2:	d1c7      	bne.n	d03e0634 <__sflush_r+0x34>
d03e06a4:	682b      	ldr	r3, [r5, #0]
d03e06a6:	2b00      	cmp	r3, #0
d03e06a8:	d0c4      	beq.n	d03e0634 <__sflush_r+0x34>
d03e06aa:	2b1d      	cmp	r3, #29
d03e06ac:	d001      	beq.n	d03e06b2 <__sflush_r+0xb2>
d03e06ae:	2b16      	cmp	r3, #22
d03e06b0:	d101      	bne.n	d03e06b6 <__sflush_r+0xb6>
d03e06b2:	602f      	str	r7, [r5, #0]
d03e06b4:	e7b1      	b.n	d03e061a <__sflush_r+0x1a>
d03e06b6:	89a3      	ldrh	r3, [r4, #12]
d03e06b8:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d03e06bc:	81a3      	strh	r3, [r4, #12]
d03e06be:	e7ad      	b.n	d03e061c <__sflush_r+0x1c>
d03e06c0:	690f      	ldr	r7, [r1, #16]
d03e06c2:	2f00      	cmp	r7, #0
d03e06c4:	d0a9      	beq.n	d03e061a <__sflush_r+0x1a>
d03e06c6:	0793      	lsls	r3, r2, #30
d03e06c8:	680e      	ldr	r6, [r1, #0]
d03e06ca:	bf08      	it	eq
d03e06cc:	694b      	ldreq	r3, [r1, #20]
d03e06ce:	600f      	str	r7, [r1, #0]
d03e06d0:	bf18      	it	ne
d03e06d2:	2300      	movne	r3, #0
d03e06d4:	eba6 0807 	sub.w	r8, r6, r7
d03e06d8:	608b      	str	r3, [r1, #8]
d03e06da:	f1b8 0f00 	cmp.w	r8, #0
d03e06de:	dd9c      	ble.n	d03e061a <__sflush_r+0x1a>
d03e06e0:	6a21      	ldr	r1, [r4, #32]
d03e06e2:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d03e06e4:	4643      	mov	r3, r8
d03e06e6:	463a      	mov	r2, r7
d03e06e8:	4628      	mov	r0, r5
d03e06ea:	47b0      	blx	r6
d03e06ec:	2800      	cmp	r0, #0
d03e06ee:	dc06      	bgt.n	d03e06fe <__sflush_r+0xfe>
d03e06f0:	89a3      	ldrh	r3, [r4, #12]
d03e06f2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d03e06f6:	81a3      	strh	r3, [r4, #12]
d03e06f8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e06fc:	e78e      	b.n	d03e061c <__sflush_r+0x1c>
d03e06fe:	4407      	add	r7, r0
d03e0700:	eba8 0800 	sub.w	r8, r8, r0
d03e0704:	e7e9      	b.n	d03e06da <__sflush_r+0xda>
d03e0706:	bf00      	nop
d03e0708:	20400001 	.word	0x20400001

d03e070c <_fflush_r>:
d03e070c:	b538      	push	{r3, r4, r5, lr}
d03e070e:	690b      	ldr	r3, [r1, #16]
d03e0710:	4605      	mov	r5, r0
d03e0712:	460c      	mov	r4, r1
d03e0714:	b913      	cbnz	r3, d03e071c <_fflush_r+0x10>
d03e0716:	2500      	movs	r5, #0
d03e0718:	4628      	mov	r0, r5
d03e071a:	bd38      	pop	{r3, r4, r5, pc}
d03e071c:	b118      	cbz	r0, d03e0726 <_fflush_r+0x1a>
d03e071e:	6983      	ldr	r3, [r0, #24]
d03e0720:	b90b      	cbnz	r3, d03e0726 <_fflush_r+0x1a>
d03e0722:	f000 f887 	bl	d03e0834 <__sinit>
d03e0726:	4b14      	ldr	r3, [pc, #80]	; (d03e0778 <_fflush_r+0x6c>)
d03e0728:	429c      	cmp	r4, r3
d03e072a:	d11b      	bne.n	d03e0764 <_fflush_r+0x58>
d03e072c:	686c      	ldr	r4, [r5, #4]
d03e072e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d03e0732:	2b00      	cmp	r3, #0
d03e0734:	d0ef      	beq.n	d03e0716 <_fflush_r+0xa>
d03e0736:	6e62      	ldr	r2, [r4, #100]	; 0x64
d03e0738:	07d0      	lsls	r0, r2, #31
d03e073a:	d404      	bmi.n	d03e0746 <_fflush_r+0x3a>
d03e073c:	0599      	lsls	r1, r3, #22
d03e073e:	d402      	bmi.n	d03e0746 <_fflush_r+0x3a>
d03e0740:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03e0742:	f000 f915 	bl	d03e0970 <__retarget_lock_acquire_recursive>
d03e0746:	4628      	mov	r0, r5
d03e0748:	4621      	mov	r1, r4
d03e074a:	f7ff ff59 	bl	d03e0600 <__sflush_r>
d03e074e:	6e63      	ldr	r3, [r4, #100]	; 0x64
d03e0750:	07da      	lsls	r2, r3, #31
d03e0752:	4605      	mov	r5, r0
d03e0754:	d4e0      	bmi.n	d03e0718 <_fflush_r+0xc>
d03e0756:	89a3      	ldrh	r3, [r4, #12]
d03e0758:	059b      	lsls	r3, r3, #22
d03e075a:	d4dd      	bmi.n	d03e0718 <_fflush_r+0xc>
d03e075c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03e075e:	f000 f908 	bl	d03e0972 <__retarget_lock_release_recursive>
d03e0762:	e7d9      	b.n	d03e0718 <_fflush_r+0xc>
d03e0764:	4b05      	ldr	r3, [pc, #20]	; (d03e077c <_fflush_r+0x70>)
d03e0766:	429c      	cmp	r4, r3
d03e0768:	d101      	bne.n	d03e076e <_fflush_r+0x62>
d03e076a:	68ac      	ldr	r4, [r5, #8]
d03e076c:	e7df      	b.n	d03e072e <_fflush_r+0x22>
d03e076e:	4b04      	ldr	r3, [pc, #16]	; (d03e0780 <_fflush_r+0x74>)
d03e0770:	429c      	cmp	r4, r3
d03e0772:	bf08      	it	eq
d03e0774:	68ec      	ldreq	r4, [r5, #12]
d03e0776:	e7da      	b.n	d03e072e <_fflush_r+0x22>
d03e0778:	d03e0d44 	.word	0xd03e0d44
d03e077c:	d03e0d64 	.word	0xd03e0d64
d03e0780:	d03e0d24 	.word	0xd03e0d24

d03e0784 <std>:
d03e0784:	2300      	movs	r3, #0
d03e0786:	b510      	push	{r4, lr}
d03e0788:	4604      	mov	r4, r0
d03e078a:	e9c0 3300 	strd	r3, r3, [r0]
d03e078e:	e9c0 3304 	strd	r3, r3, [r0, #16]
d03e0792:	6083      	str	r3, [r0, #8]
d03e0794:	8181      	strh	r1, [r0, #12]
d03e0796:	6643      	str	r3, [r0, #100]	; 0x64
d03e0798:	81c2      	strh	r2, [r0, #14]
d03e079a:	6183      	str	r3, [r0, #24]
d03e079c:	4619      	mov	r1, r3
d03e079e:	2208      	movs	r2, #8
d03e07a0:	305c      	adds	r0, #92	; 0x5c
d03e07a2:	f7ff fd21 	bl	d03e01e8 <memset>
d03e07a6:	4b05      	ldr	r3, [pc, #20]	; (d03e07bc <std+0x38>)
d03e07a8:	6263      	str	r3, [r4, #36]	; 0x24
d03e07aa:	4b05      	ldr	r3, [pc, #20]	; (d03e07c0 <std+0x3c>)
d03e07ac:	62a3      	str	r3, [r4, #40]	; 0x28
d03e07ae:	4b05      	ldr	r3, [pc, #20]	; (d03e07c4 <std+0x40>)
d03e07b0:	62e3      	str	r3, [r4, #44]	; 0x2c
d03e07b2:	4b05      	ldr	r3, [pc, #20]	; (d03e07c8 <std+0x44>)
d03e07b4:	6224      	str	r4, [r4, #32]
d03e07b6:	6323      	str	r3, [r4, #48]	; 0x30
d03e07b8:	bd10      	pop	{r4, pc}
d03e07ba:	bf00      	nop
d03e07bc:	d03e0ba1 	.word	0xd03e0ba1
d03e07c0:	d03e0bc3 	.word	0xd03e0bc3
d03e07c4:	d03e0bfb 	.word	0xd03e0bfb
d03e07c8:	d03e0c1f 	.word	0xd03e0c1f

d03e07cc <_cleanup_r>:
d03e07cc:	4901      	ldr	r1, [pc, #4]	; (d03e07d4 <_cleanup_r+0x8>)
d03e07ce:	f000 b8af 	b.w	d03e0930 <_fwalk_reent>
d03e07d2:	bf00      	nop
d03e07d4:	d03e070d 	.word	0xd03e070d

d03e07d8 <__sfmoreglue>:
d03e07d8:	b570      	push	{r4, r5, r6, lr}
d03e07da:	1e4a      	subs	r2, r1, #1
d03e07dc:	2568      	movs	r5, #104	; 0x68
d03e07de:	4355      	muls	r5, r2
d03e07e0:	460e      	mov	r6, r1
d03e07e2:	f105 0174 	add.w	r1, r5, #116	; 0x74
d03e07e6:	f000 f981 	bl	d03e0aec <_malloc_r>
d03e07ea:	4604      	mov	r4, r0
d03e07ec:	b140      	cbz	r0, d03e0800 <__sfmoreglue+0x28>
d03e07ee:	2100      	movs	r1, #0
d03e07f0:	e9c0 1600 	strd	r1, r6, [r0]
d03e07f4:	300c      	adds	r0, #12
d03e07f6:	60a0      	str	r0, [r4, #8]
d03e07f8:	f105 0268 	add.w	r2, r5, #104	; 0x68
d03e07fc:	f7ff fcf4 	bl	d03e01e8 <memset>
d03e0800:	4620      	mov	r0, r4
d03e0802:	bd70      	pop	{r4, r5, r6, pc}

d03e0804 <__sfp_lock_acquire>:
d03e0804:	4801      	ldr	r0, [pc, #4]	; (d03e080c <__sfp_lock_acquire+0x8>)
d03e0806:	f000 b8b3 	b.w	d03e0970 <__retarget_lock_acquire_recursive>
d03e080a:	bf00      	nop
d03e080c:	d03e0e10 	.word	0xd03e0e10

d03e0810 <__sfp_lock_release>:
d03e0810:	4801      	ldr	r0, [pc, #4]	; (d03e0818 <__sfp_lock_release+0x8>)
d03e0812:	f000 b8ae 	b.w	d03e0972 <__retarget_lock_release_recursive>
d03e0816:	bf00      	nop
d03e0818:	d03e0e10 	.word	0xd03e0e10

d03e081c <__sinit_lock_acquire>:
d03e081c:	4801      	ldr	r0, [pc, #4]	; (d03e0824 <__sinit_lock_acquire+0x8>)
d03e081e:	f000 b8a7 	b.w	d03e0970 <__retarget_lock_acquire_recursive>
d03e0822:	bf00      	nop
d03e0824:	d03e0e0b 	.word	0xd03e0e0b

d03e0828 <__sinit_lock_release>:
d03e0828:	4801      	ldr	r0, [pc, #4]	; (d03e0830 <__sinit_lock_release+0x8>)
d03e082a:	f000 b8a2 	b.w	d03e0972 <__retarget_lock_release_recursive>
d03e082e:	bf00      	nop
d03e0830:	d03e0e0b 	.word	0xd03e0e0b

d03e0834 <__sinit>:
d03e0834:	b510      	push	{r4, lr}
d03e0836:	4604      	mov	r4, r0
d03e0838:	f7ff fff0 	bl	d03e081c <__sinit_lock_acquire>
d03e083c:	69a3      	ldr	r3, [r4, #24]
d03e083e:	b11b      	cbz	r3, d03e0848 <__sinit+0x14>
d03e0840:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d03e0844:	f7ff bff0 	b.w	d03e0828 <__sinit_lock_release>
d03e0848:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d03e084c:	6523      	str	r3, [r4, #80]	; 0x50
d03e084e:	4b13      	ldr	r3, [pc, #76]	; (d03e089c <__sinit+0x68>)
d03e0850:	4a13      	ldr	r2, [pc, #76]	; (d03e08a0 <__sinit+0x6c>)
d03e0852:	681b      	ldr	r3, [r3, #0]
d03e0854:	62a2      	str	r2, [r4, #40]	; 0x28
d03e0856:	42a3      	cmp	r3, r4
d03e0858:	bf04      	itt	eq
d03e085a:	2301      	moveq	r3, #1
d03e085c:	61a3      	streq	r3, [r4, #24]
d03e085e:	4620      	mov	r0, r4
d03e0860:	f000 f820 	bl	d03e08a4 <__sfp>
d03e0864:	6060      	str	r0, [r4, #4]
d03e0866:	4620      	mov	r0, r4
d03e0868:	f000 f81c 	bl	d03e08a4 <__sfp>
d03e086c:	60a0      	str	r0, [r4, #8]
d03e086e:	4620      	mov	r0, r4
d03e0870:	f000 f818 	bl	d03e08a4 <__sfp>
d03e0874:	2200      	movs	r2, #0
d03e0876:	60e0      	str	r0, [r4, #12]
d03e0878:	2104      	movs	r1, #4
d03e087a:	6860      	ldr	r0, [r4, #4]
d03e087c:	f7ff ff82 	bl	d03e0784 <std>
d03e0880:	68a0      	ldr	r0, [r4, #8]
d03e0882:	2201      	movs	r2, #1
d03e0884:	2109      	movs	r1, #9
d03e0886:	f7ff ff7d 	bl	d03e0784 <std>
d03e088a:	68e0      	ldr	r0, [r4, #12]
d03e088c:	2202      	movs	r2, #2
d03e088e:	2112      	movs	r1, #18
d03e0890:	f7ff ff78 	bl	d03e0784 <std>
d03e0894:	2301      	movs	r3, #1
d03e0896:	61a3      	str	r3, [r4, #24]
d03e0898:	e7d2      	b.n	d03e0840 <__sinit+0xc>
d03e089a:	bf00      	nop
d03e089c:	d03e0d20 	.word	0xd03e0d20
d03e08a0:	d03e07cd 	.word	0xd03e07cd

d03e08a4 <__sfp>:
d03e08a4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e08a6:	4607      	mov	r7, r0
d03e08a8:	f7ff ffac 	bl	d03e0804 <__sfp_lock_acquire>
d03e08ac:	4b1e      	ldr	r3, [pc, #120]	; (d03e0928 <__sfp+0x84>)
d03e08ae:	681e      	ldr	r6, [r3, #0]
d03e08b0:	69b3      	ldr	r3, [r6, #24]
d03e08b2:	b913      	cbnz	r3, d03e08ba <__sfp+0x16>
d03e08b4:	4630      	mov	r0, r6
d03e08b6:	f7ff ffbd 	bl	d03e0834 <__sinit>
d03e08ba:	3648      	adds	r6, #72	; 0x48
d03e08bc:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d03e08c0:	3b01      	subs	r3, #1
d03e08c2:	d503      	bpl.n	d03e08cc <__sfp+0x28>
d03e08c4:	6833      	ldr	r3, [r6, #0]
d03e08c6:	b30b      	cbz	r3, d03e090c <__sfp+0x68>
d03e08c8:	6836      	ldr	r6, [r6, #0]
d03e08ca:	e7f7      	b.n	d03e08bc <__sfp+0x18>
d03e08cc:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d03e08d0:	b9d5      	cbnz	r5, d03e0908 <__sfp+0x64>
d03e08d2:	4b16      	ldr	r3, [pc, #88]	; (d03e092c <__sfp+0x88>)
d03e08d4:	60e3      	str	r3, [r4, #12]
d03e08d6:	f104 0058 	add.w	r0, r4, #88	; 0x58
d03e08da:	6665      	str	r5, [r4, #100]	; 0x64
d03e08dc:	f000 f847 	bl	d03e096e <__retarget_lock_init_recursive>
d03e08e0:	f7ff ff96 	bl	d03e0810 <__sfp_lock_release>
d03e08e4:	e9c4 5501 	strd	r5, r5, [r4, #4]
d03e08e8:	e9c4 5504 	strd	r5, r5, [r4, #16]
d03e08ec:	6025      	str	r5, [r4, #0]
d03e08ee:	61a5      	str	r5, [r4, #24]
d03e08f0:	2208      	movs	r2, #8
d03e08f2:	4629      	mov	r1, r5
d03e08f4:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d03e08f8:	f7ff fc76 	bl	d03e01e8 <memset>
d03e08fc:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d03e0900:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d03e0904:	4620      	mov	r0, r4
d03e0906:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e0908:	3468      	adds	r4, #104	; 0x68
d03e090a:	e7d9      	b.n	d03e08c0 <__sfp+0x1c>
d03e090c:	2104      	movs	r1, #4
d03e090e:	4638      	mov	r0, r7
d03e0910:	f7ff ff62 	bl	d03e07d8 <__sfmoreglue>
d03e0914:	4604      	mov	r4, r0
d03e0916:	6030      	str	r0, [r6, #0]
d03e0918:	2800      	cmp	r0, #0
d03e091a:	d1d5      	bne.n	d03e08c8 <__sfp+0x24>
d03e091c:	f7ff ff78 	bl	d03e0810 <__sfp_lock_release>
d03e0920:	230c      	movs	r3, #12
d03e0922:	603b      	str	r3, [r7, #0]
d03e0924:	e7ee      	b.n	d03e0904 <__sfp+0x60>
d03e0926:	bf00      	nop
d03e0928:	d03e0d20 	.word	0xd03e0d20
d03e092c:	ffff0001 	.word	0xffff0001

d03e0930 <_fwalk_reent>:
d03e0930:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d03e0934:	4606      	mov	r6, r0
d03e0936:	4688      	mov	r8, r1
d03e0938:	f100 0448 	add.w	r4, r0, #72	; 0x48
d03e093c:	2700      	movs	r7, #0
d03e093e:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d03e0942:	f1b9 0901 	subs.w	r9, r9, #1
d03e0946:	d505      	bpl.n	d03e0954 <_fwalk_reent+0x24>
d03e0948:	6824      	ldr	r4, [r4, #0]
d03e094a:	2c00      	cmp	r4, #0
d03e094c:	d1f7      	bne.n	d03e093e <_fwalk_reent+0xe>
d03e094e:	4638      	mov	r0, r7
d03e0950:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d03e0954:	89ab      	ldrh	r3, [r5, #12]
d03e0956:	2b01      	cmp	r3, #1
d03e0958:	d907      	bls.n	d03e096a <_fwalk_reent+0x3a>
d03e095a:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d03e095e:	3301      	adds	r3, #1
d03e0960:	d003      	beq.n	d03e096a <_fwalk_reent+0x3a>
d03e0962:	4629      	mov	r1, r5
d03e0964:	4630      	mov	r0, r6
d03e0966:	47c0      	blx	r8
d03e0968:	4307      	orrs	r7, r0
d03e096a:	3568      	adds	r5, #104	; 0x68
d03e096c:	e7e9      	b.n	d03e0942 <_fwalk_reent+0x12>

d03e096e <__retarget_lock_init_recursive>:
d03e096e:	4770      	bx	lr

d03e0970 <__retarget_lock_acquire_recursive>:
d03e0970:	4770      	bx	lr

d03e0972 <__retarget_lock_release_recursive>:
d03e0972:	4770      	bx	lr

d03e0974 <__swhatbuf_r>:
d03e0974:	b570      	push	{r4, r5, r6, lr}
d03e0976:	460e      	mov	r6, r1
d03e0978:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03e097c:	2900      	cmp	r1, #0
d03e097e:	b096      	sub	sp, #88	; 0x58
d03e0980:	4614      	mov	r4, r2
d03e0982:	461d      	mov	r5, r3
d03e0984:	da07      	bge.n	d03e0996 <__swhatbuf_r+0x22>
d03e0986:	2300      	movs	r3, #0
d03e0988:	602b      	str	r3, [r5, #0]
d03e098a:	89b3      	ldrh	r3, [r6, #12]
d03e098c:	061a      	lsls	r2, r3, #24
d03e098e:	d410      	bmi.n	d03e09b2 <__swhatbuf_r+0x3e>
d03e0990:	f44f 6380 	mov.w	r3, #1024	; 0x400
d03e0994:	e00e      	b.n	d03e09b4 <__swhatbuf_r+0x40>
d03e0996:	466a      	mov	r2, sp
d03e0998:	f000 f956 	bl	d03e0c48 <_fstat_r>
d03e099c:	2800      	cmp	r0, #0
d03e099e:	dbf2      	blt.n	d03e0986 <__swhatbuf_r+0x12>
d03e09a0:	9a01      	ldr	r2, [sp, #4]
d03e09a2:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d03e09a6:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d03e09aa:	425a      	negs	r2, r3
d03e09ac:	415a      	adcs	r2, r3
d03e09ae:	602a      	str	r2, [r5, #0]
d03e09b0:	e7ee      	b.n	d03e0990 <__swhatbuf_r+0x1c>
d03e09b2:	2340      	movs	r3, #64	; 0x40
d03e09b4:	2000      	movs	r0, #0
d03e09b6:	6023      	str	r3, [r4, #0]
d03e09b8:	b016      	add	sp, #88	; 0x58
d03e09ba:	bd70      	pop	{r4, r5, r6, pc}

d03e09bc <__smakebuf_r>:
d03e09bc:	898b      	ldrh	r3, [r1, #12]
d03e09be:	b573      	push	{r0, r1, r4, r5, r6, lr}
d03e09c0:	079d      	lsls	r5, r3, #30
d03e09c2:	4606      	mov	r6, r0
d03e09c4:	460c      	mov	r4, r1
d03e09c6:	d507      	bpl.n	d03e09d8 <__smakebuf_r+0x1c>
d03e09c8:	f104 0347 	add.w	r3, r4, #71	; 0x47
d03e09cc:	6023      	str	r3, [r4, #0]
d03e09ce:	6123      	str	r3, [r4, #16]
d03e09d0:	2301      	movs	r3, #1
d03e09d2:	6163      	str	r3, [r4, #20]
d03e09d4:	b002      	add	sp, #8
d03e09d6:	bd70      	pop	{r4, r5, r6, pc}
d03e09d8:	ab01      	add	r3, sp, #4
d03e09da:	466a      	mov	r2, sp
d03e09dc:	f7ff ffca 	bl	d03e0974 <__swhatbuf_r>
d03e09e0:	9900      	ldr	r1, [sp, #0]
d03e09e2:	4605      	mov	r5, r0
d03e09e4:	4630      	mov	r0, r6
d03e09e6:	f000 f881 	bl	d03e0aec <_malloc_r>
d03e09ea:	b948      	cbnz	r0, d03e0a00 <__smakebuf_r+0x44>
d03e09ec:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d03e09f0:	059a      	lsls	r2, r3, #22
d03e09f2:	d4ef      	bmi.n	d03e09d4 <__smakebuf_r+0x18>
d03e09f4:	f023 0303 	bic.w	r3, r3, #3
d03e09f8:	f043 0302 	orr.w	r3, r3, #2
d03e09fc:	81a3      	strh	r3, [r4, #12]
d03e09fe:	e7e3      	b.n	d03e09c8 <__smakebuf_r+0xc>
d03e0a00:	4b0d      	ldr	r3, [pc, #52]	; (d03e0a38 <__smakebuf_r+0x7c>)
d03e0a02:	62b3      	str	r3, [r6, #40]	; 0x28
d03e0a04:	89a3      	ldrh	r3, [r4, #12]
d03e0a06:	6020      	str	r0, [r4, #0]
d03e0a08:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d03e0a0c:	81a3      	strh	r3, [r4, #12]
d03e0a0e:	9b00      	ldr	r3, [sp, #0]
d03e0a10:	6163      	str	r3, [r4, #20]
d03e0a12:	9b01      	ldr	r3, [sp, #4]
d03e0a14:	6120      	str	r0, [r4, #16]
d03e0a16:	b15b      	cbz	r3, d03e0a30 <__smakebuf_r+0x74>
d03e0a18:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d03e0a1c:	4630      	mov	r0, r6
d03e0a1e:	f000 f925 	bl	d03e0c6c <_isatty_r>
d03e0a22:	b128      	cbz	r0, d03e0a30 <__smakebuf_r+0x74>
d03e0a24:	89a3      	ldrh	r3, [r4, #12]
d03e0a26:	f023 0303 	bic.w	r3, r3, #3
d03e0a2a:	f043 0301 	orr.w	r3, r3, #1
d03e0a2e:	81a3      	strh	r3, [r4, #12]
d03e0a30:	89a0      	ldrh	r0, [r4, #12]
d03e0a32:	4305      	orrs	r5, r0
d03e0a34:	81a5      	strh	r5, [r4, #12]
d03e0a36:	e7cd      	b.n	d03e09d4 <__smakebuf_r+0x18>
d03e0a38:	d03e07cd 	.word	0xd03e07cd

d03e0a3c <malloc>:
d03e0a3c:	4b02      	ldr	r3, [pc, #8]	; (d03e0a48 <malloc+0xc>)
d03e0a3e:	4601      	mov	r1, r0
d03e0a40:	6818      	ldr	r0, [r3, #0]
d03e0a42:	f000 b853 	b.w	d03e0aec <_malloc_r>
d03e0a46:	bf00      	nop
d03e0a48:	d03e0d8c 	.word	0xd03e0d8c

d03e0a4c <_free_r>:
d03e0a4c:	b537      	push	{r0, r1, r2, r4, r5, lr}
d03e0a4e:	2900      	cmp	r1, #0
d03e0a50:	d048      	beq.n	d03e0ae4 <_free_r+0x98>
d03e0a52:	f851 3c04 	ldr.w	r3, [r1, #-4]
d03e0a56:	9001      	str	r0, [sp, #4]
d03e0a58:	2b00      	cmp	r3, #0
d03e0a5a:	f1a1 0404 	sub.w	r4, r1, #4
d03e0a5e:	bfb8      	it	lt
d03e0a60:	18e4      	addlt	r4, r4, r3
d03e0a62:	f000 f925 	bl	d03e0cb0 <__malloc_lock>
d03e0a66:	4a20      	ldr	r2, [pc, #128]	; (d03e0ae8 <_free_r+0x9c>)
d03e0a68:	9801      	ldr	r0, [sp, #4]
d03e0a6a:	6813      	ldr	r3, [r2, #0]
d03e0a6c:	4615      	mov	r5, r2
d03e0a6e:	b933      	cbnz	r3, d03e0a7e <_free_r+0x32>
d03e0a70:	6063      	str	r3, [r4, #4]
d03e0a72:	6014      	str	r4, [r2, #0]
d03e0a74:	b003      	add	sp, #12
d03e0a76:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d03e0a7a:	f000 b91f 	b.w	d03e0cbc <__malloc_unlock>
d03e0a7e:	42a3      	cmp	r3, r4
d03e0a80:	d90b      	bls.n	d03e0a9a <_free_r+0x4e>
d03e0a82:	6821      	ldr	r1, [r4, #0]
d03e0a84:	1862      	adds	r2, r4, r1
d03e0a86:	4293      	cmp	r3, r2
d03e0a88:	bf04      	itt	eq
d03e0a8a:	681a      	ldreq	r2, [r3, #0]
d03e0a8c:	685b      	ldreq	r3, [r3, #4]
d03e0a8e:	6063      	str	r3, [r4, #4]
d03e0a90:	bf04      	itt	eq
d03e0a92:	1852      	addeq	r2, r2, r1
d03e0a94:	6022      	streq	r2, [r4, #0]
d03e0a96:	602c      	str	r4, [r5, #0]
d03e0a98:	e7ec      	b.n	d03e0a74 <_free_r+0x28>
d03e0a9a:	461a      	mov	r2, r3
d03e0a9c:	685b      	ldr	r3, [r3, #4]
d03e0a9e:	b10b      	cbz	r3, d03e0aa4 <_free_r+0x58>
d03e0aa0:	42a3      	cmp	r3, r4
d03e0aa2:	d9fa      	bls.n	d03e0a9a <_free_r+0x4e>
d03e0aa4:	6811      	ldr	r1, [r2, #0]
d03e0aa6:	1855      	adds	r5, r2, r1
d03e0aa8:	42a5      	cmp	r5, r4
d03e0aaa:	d10b      	bne.n	d03e0ac4 <_free_r+0x78>
d03e0aac:	6824      	ldr	r4, [r4, #0]
d03e0aae:	4421      	add	r1, r4
d03e0ab0:	1854      	adds	r4, r2, r1
d03e0ab2:	42a3      	cmp	r3, r4
d03e0ab4:	6011      	str	r1, [r2, #0]
d03e0ab6:	d1dd      	bne.n	d03e0a74 <_free_r+0x28>
d03e0ab8:	681c      	ldr	r4, [r3, #0]
d03e0aba:	685b      	ldr	r3, [r3, #4]
d03e0abc:	6053      	str	r3, [r2, #4]
d03e0abe:	4421      	add	r1, r4
d03e0ac0:	6011      	str	r1, [r2, #0]
d03e0ac2:	e7d7      	b.n	d03e0a74 <_free_r+0x28>
d03e0ac4:	d902      	bls.n	d03e0acc <_free_r+0x80>
d03e0ac6:	230c      	movs	r3, #12
d03e0ac8:	6003      	str	r3, [r0, #0]
d03e0aca:	e7d3      	b.n	d03e0a74 <_free_r+0x28>
d03e0acc:	6825      	ldr	r5, [r4, #0]
d03e0ace:	1961      	adds	r1, r4, r5
d03e0ad0:	428b      	cmp	r3, r1
d03e0ad2:	bf04      	itt	eq
d03e0ad4:	6819      	ldreq	r1, [r3, #0]
d03e0ad6:	685b      	ldreq	r3, [r3, #4]
d03e0ad8:	6063      	str	r3, [r4, #4]
d03e0ada:	bf04      	itt	eq
d03e0adc:	1949      	addeq	r1, r1, r5
d03e0ade:	6021      	streq	r1, [r4, #0]
d03e0ae0:	6054      	str	r4, [r2, #4]
d03e0ae2:	e7c7      	b.n	d03e0a74 <_free_r+0x28>
d03e0ae4:	b003      	add	sp, #12
d03e0ae6:	bd30      	pop	{r4, r5, pc}
d03e0ae8:	d03e0dfc 	.word	0xd03e0dfc

d03e0aec <_malloc_r>:
d03e0aec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e0aee:	1ccd      	adds	r5, r1, #3
d03e0af0:	f025 0503 	bic.w	r5, r5, #3
d03e0af4:	3508      	adds	r5, #8
d03e0af6:	2d0c      	cmp	r5, #12
d03e0af8:	bf38      	it	cc
d03e0afa:	250c      	movcc	r5, #12
d03e0afc:	2d00      	cmp	r5, #0
d03e0afe:	4606      	mov	r6, r0
d03e0b00:	db01      	blt.n	d03e0b06 <_malloc_r+0x1a>
d03e0b02:	42a9      	cmp	r1, r5
d03e0b04:	d903      	bls.n	d03e0b0e <_malloc_r+0x22>
d03e0b06:	230c      	movs	r3, #12
d03e0b08:	6033      	str	r3, [r6, #0]
d03e0b0a:	2000      	movs	r0, #0
d03e0b0c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e0b0e:	f000 f8cf 	bl	d03e0cb0 <__malloc_lock>
d03e0b12:	4921      	ldr	r1, [pc, #132]	; (d03e0b98 <_malloc_r+0xac>)
d03e0b14:	680a      	ldr	r2, [r1, #0]
d03e0b16:	4614      	mov	r4, r2
d03e0b18:	b99c      	cbnz	r4, d03e0b42 <_malloc_r+0x56>
d03e0b1a:	4f20      	ldr	r7, [pc, #128]	; (d03e0b9c <_malloc_r+0xb0>)
d03e0b1c:	683b      	ldr	r3, [r7, #0]
d03e0b1e:	b923      	cbnz	r3, d03e0b2a <_malloc_r+0x3e>
d03e0b20:	4621      	mov	r1, r4
d03e0b22:	4630      	mov	r0, r6
d03e0b24:	f7ff fadc 	bl	d03e00e0 <_sbrk_r>
d03e0b28:	6038      	str	r0, [r7, #0]
d03e0b2a:	4629      	mov	r1, r5
d03e0b2c:	4630      	mov	r0, r6
d03e0b2e:	f7ff fad7 	bl	d03e00e0 <_sbrk_r>
d03e0b32:	1c43      	adds	r3, r0, #1
d03e0b34:	d123      	bne.n	d03e0b7e <_malloc_r+0x92>
d03e0b36:	230c      	movs	r3, #12
d03e0b38:	6033      	str	r3, [r6, #0]
d03e0b3a:	4630      	mov	r0, r6
d03e0b3c:	f000 f8be 	bl	d03e0cbc <__malloc_unlock>
d03e0b40:	e7e3      	b.n	d03e0b0a <_malloc_r+0x1e>
d03e0b42:	6823      	ldr	r3, [r4, #0]
d03e0b44:	1b5b      	subs	r3, r3, r5
d03e0b46:	d417      	bmi.n	d03e0b78 <_malloc_r+0x8c>
d03e0b48:	2b0b      	cmp	r3, #11
d03e0b4a:	d903      	bls.n	d03e0b54 <_malloc_r+0x68>
d03e0b4c:	6023      	str	r3, [r4, #0]
d03e0b4e:	441c      	add	r4, r3
d03e0b50:	6025      	str	r5, [r4, #0]
d03e0b52:	e004      	b.n	d03e0b5e <_malloc_r+0x72>
d03e0b54:	6863      	ldr	r3, [r4, #4]
d03e0b56:	42a2      	cmp	r2, r4
d03e0b58:	bf0c      	ite	eq
d03e0b5a:	600b      	streq	r3, [r1, #0]
d03e0b5c:	6053      	strne	r3, [r2, #4]
d03e0b5e:	4630      	mov	r0, r6
d03e0b60:	f000 f8ac 	bl	d03e0cbc <__malloc_unlock>
d03e0b64:	f104 000b 	add.w	r0, r4, #11
d03e0b68:	1d23      	adds	r3, r4, #4
d03e0b6a:	f020 0007 	bic.w	r0, r0, #7
d03e0b6e:	1ac2      	subs	r2, r0, r3
d03e0b70:	d0cc      	beq.n	d03e0b0c <_malloc_r+0x20>
d03e0b72:	1a1b      	subs	r3, r3, r0
d03e0b74:	50a3      	str	r3, [r4, r2]
d03e0b76:	e7c9      	b.n	d03e0b0c <_malloc_r+0x20>
d03e0b78:	4622      	mov	r2, r4
d03e0b7a:	6864      	ldr	r4, [r4, #4]
d03e0b7c:	e7cc      	b.n	d03e0b18 <_malloc_r+0x2c>
d03e0b7e:	1cc4      	adds	r4, r0, #3
d03e0b80:	f024 0403 	bic.w	r4, r4, #3
d03e0b84:	42a0      	cmp	r0, r4
d03e0b86:	d0e3      	beq.n	d03e0b50 <_malloc_r+0x64>
d03e0b88:	1a21      	subs	r1, r4, r0
d03e0b8a:	4630      	mov	r0, r6
d03e0b8c:	f7ff faa8 	bl	d03e00e0 <_sbrk_r>
d03e0b90:	3001      	adds	r0, #1
d03e0b92:	d1dd      	bne.n	d03e0b50 <_malloc_r+0x64>
d03e0b94:	e7cf      	b.n	d03e0b36 <_malloc_r+0x4a>
d03e0b96:	bf00      	nop
d03e0b98:	d03e0dfc 	.word	0xd03e0dfc
d03e0b9c:	d03e0e00 	.word	0xd03e0e00

d03e0ba0 <__sread>:
d03e0ba0:	b510      	push	{r4, lr}
d03e0ba2:	460c      	mov	r4, r1
d03e0ba4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03e0ba8:	f000 f88e 	bl	d03e0cc8 <_read_r>
d03e0bac:	2800      	cmp	r0, #0
d03e0bae:	bfab      	itete	ge
d03e0bb0:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d03e0bb2:	89a3      	ldrhlt	r3, [r4, #12]
d03e0bb4:	181b      	addge	r3, r3, r0
d03e0bb6:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d03e0bba:	bfac      	ite	ge
d03e0bbc:	6563      	strge	r3, [r4, #84]	; 0x54
d03e0bbe:	81a3      	strhlt	r3, [r4, #12]
d03e0bc0:	bd10      	pop	{r4, pc}

d03e0bc2 <__swrite>:
d03e0bc2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03e0bc6:	461f      	mov	r7, r3
d03e0bc8:	898b      	ldrh	r3, [r1, #12]
d03e0bca:	05db      	lsls	r3, r3, #23
d03e0bcc:	4605      	mov	r5, r0
d03e0bce:	460c      	mov	r4, r1
d03e0bd0:	4616      	mov	r6, r2
d03e0bd2:	d505      	bpl.n	d03e0be0 <__swrite+0x1e>
d03e0bd4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03e0bd8:	2302      	movs	r3, #2
d03e0bda:	2200      	movs	r2, #0
d03e0bdc:	f000 f856 	bl	d03e0c8c <_lseek_r>
d03e0be0:	89a3      	ldrh	r3, [r4, #12]
d03e0be2:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d03e0be6:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d03e0bea:	81a3      	strh	r3, [r4, #12]
d03e0bec:	4632      	mov	r2, r6
d03e0bee:	463b      	mov	r3, r7
d03e0bf0:	4628      	mov	r0, r5
d03e0bf2:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d03e0bf6:	f7ff ba2d 	b.w	d03e0054 <_write_r>

d03e0bfa <__sseek>:
d03e0bfa:	b510      	push	{r4, lr}
d03e0bfc:	460c      	mov	r4, r1
d03e0bfe:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03e0c02:	f000 f843 	bl	d03e0c8c <_lseek_r>
d03e0c06:	1c43      	adds	r3, r0, #1
d03e0c08:	89a3      	ldrh	r3, [r4, #12]
d03e0c0a:	bf15      	itete	ne
d03e0c0c:	6560      	strne	r0, [r4, #84]	; 0x54
d03e0c0e:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d03e0c12:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d03e0c16:	81a3      	strheq	r3, [r4, #12]
d03e0c18:	bf18      	it	ne
d03e0c1a:	81a3      	strhne	r3, [r4, #12]
d03e0c1c:	bd10      	pop	{r4, pc}

d03e0c1e <__sclose>:
d03e0c1e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03e0c22:	f000 b801 	b.w	d03e0c28 <_close_r>
	...

d03e0c28 <_close_r>:
d03e0c28:	b538      	push	{r3, r4, r5, lr}
d03e0c2a:	4d06      	ldr	r5, [pc, #24]	; (d03e0c44 <_close_r+0x1c>)
d03e0c2c:	2300      	movs	r3, #0
d03e0c2e:	4604      	mov	r4, r0
d03e0c30:	4608      	mov	r0, r1
d03e0c32:	602b      	str	r3, [r5, #0]
d03e0c34:	f7ff fa48 	bl	d03e00c8 <_close>
d03e0c38:	1c43      	adds	r3, r0, #1
d03e0c3a:	d102      	bne.n	d03e0c42 <_close_r+0x1a>
d03e0c3c:	682b      	ldr	r3, [r5, #0]
d03e0c3e:	b103      	cbz	r3, d03e0c42 <_close_r+0x1a>
d03e0c40:	6023      	str	r3, [r4, #0]
d03e0c42:	bd38      	pop	{r3, r4, r5, pc}
d03e0c44:	d03e0e14 	.word	0xd03e0e14

d03e0c48 <_fstat_r>:
d03e0c48:	b538      	push	{r3, r4, r5, lr}
d03e0c4a:	4d07      	ldr	r5, [pc, #28]	; (d03e0c68 <_fstat_r+0x20>)
d03e0c4c:	2300      	movs	r3, #0
d03e0c4e:	4604      	mov	r4, r0
d03e0c50:	4608      	mov	r0, r1
d03e0c52:	4611      	mov	r1, r2
d03e0c54:	602b      	str	r3, [r5, #0]
d03e0c56:	f7ff fa3b 	bl	d03e00d0 <_fstat>
d03e0c5a:	1c43      	adds	r3, r0, #1
d03e0c5c:	d102      	bne.n	d03e0c64 <_fstat_r+0x1c>
d03e0c5e:	682b      	ldr	r3, [r5, #0]
d03e0c60:	b103      	cbz	r3, d03e0c64 <_fstat_r+0x1c>
d03e0c62:	6023      	str	r3, [r4, #0]
d03e0c64:	bd38      	pop	{r3, r4, r5, pc}
d03e0c66:	bf00      	nop
d03e0c68:	d03e0e14 	.word	0xd03e0e14

d03e0c6c <_isatty_r>:
d03e0c6c:	b538      	push	{r3, r4, r5, lr}
d03e0c6e:	4d06      	ldr	r5, [pc, #24]	; (d03e0c88 <_isatty_r+0x1c>)
d03e0c70:	2300      	movs	r3, #0
d03e0c72:	4604      	mov	r4, r0
d03e0c74:	4608      	mov	r0, r1
d03e0c76:	602b      	str	r3, [r5, #0]
d03e0c78:	f7ff fa52 	bl	d03e0120 <_isatty>
d03e0c7c:	1c43      	adds	r3, r0, #1
d03e0c7e:	d102      	bne.n	d03e0c86 <_isatty_r+0x1a>
d03e0c80:	682b      	ldr	r3, [r5, #0]
d03e0c82:	b103      	cbz	r3, d03e0c86 <_isatty_r+0x1a>
d03e0c84:	6023      	str	r3, [r4, #0]
d03e0c86:	bd38      	pop	{r3, r4, r5, pc}
d03e0c88:	d03e0e14 	.word	0xd03e0e14

d03e0c8c <_lseek_r>:
d03e0c8c:	b538      	push	{r3, r4, r5, lr}
d03e0c8e:	4d07      	ldr	r5, [pc, #28]	; (d03e0cac <_lseek_r+0x20>)
d03e0c90:	4604      	mov	r4, r0
d03e0c92:	4608      	mov	r0, r1
d03e0c94:	4611      	mov	r1, r2
d03e0c96:	2200      	movs	r2, #0
d03e0c98:	602a      	str	r2, [r5, #0]
d03e0c9a:	461a      	mov	r2, r3
d03e0c9c:	f7ff fa1e 	bl	d03e00dc <_lseek>
d03e0ca0:	1c43      	adds	r3, r0, #1
d03e0ca2:	d102      	bne.n	d03e0caa <_lseek_r+0x1e>
d03e0ca4:	682b      	ldr	r3, [r5, #0]
d03e0ca6:	b103      	cbz	r3, d03e0caa <_lseek_r+0x1e>
d03e0ca8:	6023      	str	r3, [r4, #0]
d03e0caa:	bd38      	pop	{r3, r4, r5, pc}
d03e0cac:	d03e0e14 	.word	0xd03e0e14

d03e0cb0 <__malloc_lock>:
d03e0cb0:	4801      	ldr	r0, [pc, #4]	; (d03e0cb8 <__malloc_lock+0x8>)
d03e0cb2:	f7ff be5d 	b.w	d03e0970 <__retarget_lock_acquire_recursive>
d03e0cb6:	bf00      	nop
d03e0cb8:	d03e0e0c 	.word	0xd03e0e0c

d03e0cbc <__malloc_unlock>:
d03e0cbc:	4801      	ldr	r0, [pc, #4]	; (d03e0cc4 <__malloc_unlock+0x8>)
d03e0cbe:	f7ff be58 	b.w	d03e0972 <__retarget_lock_release_recursive>
d03e0cc2:	bf00      	nop
d03e0cc4:	d03e0e0c 	.word	0xd03e0e0c

d03e0cc8 <_read_r>:
d03e0cc8:	b538      	push	{r3, r4, r5, lr}
d03e0cca:	4d07      	ldr	r5, [pc, #28]	; (d03e0ce8 <_read_r+0x20>)
d03e0ccc:	4604      	mov	r4, r0
d03e0cce:	4608      	mov	r0, r1
d03e0cd0:	4611      	mov	r1, r2
d03e0cd2:	2200      	movs	r2, #0
d03e0cd4:	602a      	str	r2, [r5, #0]
d03e0cd6:	461a      	mov	r2, r3
d03e0cd8:	f7ff f9ec 	bl	d03e00b4 <_read>
d03e0cdc:	1c43      	adds	r3, r0, #1
d03e0cde:	d102      	bne.n	d03e0ce6 <_read_r+0x1e>
d03e0ce0:	682b      	ldr	r3, [r5, #0]
d03e0ce2:	b103      	cbz	r3, d03e0ce6 <_read_r+0x1e>
d03e0ce4:	6023      	str	r3, [r4, #0]
d03e0ce6:	bd38      	pop	{r3, r4, r5, pc}
d03e0ce8:	d03e0e14 	.word	0xd03e0e14
d03e0cec:	73696854 	.word	0x73696854
d03e0cf0:	64696420 	.word	0x64696420
d03e0cf4:	6d6f7320 	.word	0x6d6f7320
d03e0cf8:	69687465 	.word	0x69687465
d03e0cfc:	6920676e 	.word	0x6920676e
d03e0d00:	2061206e 	.word	0x2061206e
d03e0d04:	656d6974 	.word	0x656d6974
d03e0d08:	00212172 	.word	0x00212172
d03e0d0c:	4e414c42 	.word	0x4e414c42
d03e0d10:	5250204b 	.word	0x5250204b
d03e0d14:	4152474f 	.word	0x4152474f
d03e0d18:	202d204d 	.word	0x202d204d
d03e0d1c:	00495547 	.word	0x00495547

d03e0d20 <_global_impure_ptr>:
d03e0d20:	d03e0d90                                ..>.

d03e0d24 <__sf_fake_stderr>:
	...

d03e0d44 <__sf_fake_stdin>:
	...

d03e0d64 <__sf_fake_stdout>:
	...

Disassembly of section .init:

d03e0d84 <_init>:
d03e0d84:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e0d86:	bf00      	nop

Disassembly of section .fini:

d03e0d88 <_fini>:
d03e0d88:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e0d8a:	bf00      	nop
