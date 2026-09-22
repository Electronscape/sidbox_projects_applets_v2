
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d05a0010 <applet_entry>:
d05a0010:	b570      	push	{r4, r5, r6, lr}
d05a0012:	4e09      	ldr	r6, [pc, #36]	; (d05a0038 <applet_entry+0x28>)
d05a0014:	460d      	mov	r5, r1
d05a0016:	4604      	mov	r4, r0
d05a0018:	2100      	movs	r1, #0
d05a001a:	6833      	ldr	r3, [r6, #0]
d05a001c:	6898      	ldr	r0, [r3, #8]
d05a001e:	f000 f977 	bl	d05a0310 <setbuf>
d05a0022:	6833      	ldr	r3, [r6, #0]
d05a0024:	2100      	movs	r1, #0
d05a0026:	68d8      	ldr	r0, [r3, #12]
d05a0028:	f000 f972 	bl	d05a0310 <setbuf>
d05a002c:	4629      	mov	r1, r5
d05a002e:	4620      	mov	r0, r4
d05a0030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d05a0034:	f000 b892 	b.w	d05a015c <main>
d05a0038:	d05a0da4 	.word	0xd05a0da4

d05a003c <initMalloc>:
d05a003c:	4902      	ldr	r1, [pc, #8]	; (d05a0048 <initMalloc+0xc>)
d05a003e:	4b03      	ldr	r3, [pc, #12]	; (d05a004c <initMalloc+0x10>)
d05a0040:	4a03      	ldr	r2, [pc, #12]	; (d05a0050 <initMalloc+0x14>)
d05a0042:	1a5b      	subs	r3, r3, r1
d05a0044:	6013      	str	r3, [r2, #0]
d05a0046:	4770      	bx	lr
d05a0048:	d05a2e30 	.word	0xd05a2e30
d05a004c:	d0600000 	.word	0xd0600000
d05a0050:	d05a0e1c 	.word	0xd05a0e1c

d05a0054 <_write_r>:
d05a0054:	3901      	subs	r1, #1
d05a0056:	2901      	cmp	r1, #1
d05a0058:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a005a:	d81f      	bhi.n	d05a009c <_write_r+0x48>
d05a005c:	b1e2      	cbz	r2, d05a0098 <_write_r+0x44>
d05a005e:	461c      	mov	r4, r3
d05a0060:	b1d3      	cbz	r3, d05a0098 <_write_r+0x44>
d05a0062:	4d12      	ldr	r5, [pc, #72]	; (d05a00ac <_write_r+0x58>)
d05a0064:	682e      	ldr	r6, [r5, #0]
d05a0066:	b9ae      	cbnz	r6, d05a0094 <_write_r+0x40>
d05a0068:	4f11      	ldr	r7, [pc, #68]	; (d05a00b0 <_write_r+0x5c>)
d05a006a:	2301      	movs	r3, #1
d05a006c:	4611      	mov	r1, r2
d05a006e:	4630      	mov	r0, r6
d05a0070:	602b      	str	r3, [r5, #0]
d05a0072:	4622      	mov	r2, r4
d05a0074:	7a3b      	ldrb	r3, [r7, #8]
d05a0076:	f897 c009 	ldrb.w	ip, [r7, #9]
d05a007a:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d05a007e:	f897 c00a 	ldrb.w	ip, [r7, #10]
d05a0082:	7aff      	ldrb	r7, [r7, #11]
d05a0084:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d05a0088:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d05a008c:	681b      	ldr	r3, [r3, #0]
d05a008e:	685b      	ldr	r3, [r3, #4]
d05a0090:	4798      	blx	r3
d05a0092:	602e      	str	r6, [r5, #0]
d05a0094:	4620      	mov	r0, r4
d05a0096:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a0098:	2000      	movs	r0, #0
d05a009a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a009c:	f000 f8b4 	bl	d05a0208 <__errno>
d05a00a0:	2209      	movs	r2, #9
d05a00a2:	4603      	mov	r3, r0
d05a00a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a00a8:	601a      	str	r2, [r3, #0]
d05a00aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a00ac:	d05a0e0c 	.word	0xd05a0e0c
d05a00b0:	2001f000 	.word	0x2001f000

d05a00b4 <_read>:
d05a00b4:	b508      	push	{r3, lr}
d05a00b6:	f000 f8a7 	bl	d05a0208 <__errno>
d05a00ba:	2258      	movs	r2, #88	; 0x58
d05a00bc:	4603      	mov	r3, r0
d05a00be:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a00c2:	601a      	str	r2, [r3, #0]
d05a00c4:	bd08      	pop	{r3, pc}
d05a00c6:	bf00      	nop

d05a00c8 <_close>:
d05a00c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a00cc:	4770      	bx	lr
d05a00ce:	bf00      	nop

d05a00d0 <_fstat>:
d05a00d0:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d05a00d4:	2000      	movs	r0, #0
d05a00d6:	604b      	str	r3, [r1, #4]
d05a00d8:	4770      	bx	lr
d05a00da:	bf00      	nop

d05a00dc <_lseek>:
d05a00dc:	2000      	movs	r0, #0
d05a00de:	4770      	bx	lr

d05a00e0 <_sbrk_r>:
d05a00e0:	4b0c      	ldr	r3, [pc, #48]	; (d05a0114 <_sbrk_r+0x34>)
d05a00e2:	4a0d      	ldr	r2, [pc, #52]	; (d05a0118 <_sbrk_r+0x38>)
d05a00e4:	6818      	ldr	r0, [r3, #0]
d05a00e6:	b510      	push	{r4, lr}
d05a00e8:	b918      	cbnz	r0, d05a00f2 <_sbrk_r+0x12>
d05a00ea:	1dd0      	adds	r0, r2, #7
d05a00ec:	f020 0007 	bic.w	r0, r0, #7
d05a00f0:	6018      	str	r0, [r3, #0]
d05a00f2:	4401      	add	r1, r0
d05a00f4:	4c09      	ldr	r4, [pc, #36]	; (d05a011c <_sbrk_r+0x3c>)
d05a00f6:	42a1      	cmp	r1, r4
d05a00f8:	d803      	bhi.n	d05a0102 <_sbrk_r+0x22>
d05a00fa:	4291      	cmp	r1, r2
d05a00fc:	d301      	bcc.n	d05a0102 <_sbrk_r+0x22>
d05a00fe:	6019      	str	r1, [r3, #0]
d05a0100:	bd10      	pop	{r4, pc}
d05a0102:	f000 f881 	bl	d05a0208 <__errno>
d05a0106:	220c      	movs	r2, #12
d05a0108:	4603      	mov	r3, r0
d05a010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a010e:	601a      	str	r2, [r3, #0]
d05a0110:	bd10      	pop	{r4, pc}
d05a0112:	bf00      	nop
d05a0114:	d05a0e08 	.word	0xd05a0e08
d05a0118:	d05a2e30 	.word	0xd05a2e30
d05a011c:	d0600000 	.word	0xd0600000

d05a0120 <_isatty>:
d05a0120:	2001      	movs	r0, #1
d05a0122:	4770      	bx	lr

d05a0124 <app_loop_os>:
d05a0124:	b510      	push	{r4, lr}
d05a0126:	480a      	ldr	r0, [pc, #40]	; (d05a0150 <app_loop_os+0x2c>)
d05a0128:	f000 f8ea 	bl	d05a0300 <puts>
d05a012c:	4a09      	ldr	r2, [pc, #36]	; (d05a0154 <app_loop_os+0x30>)
d05a012e:	480a      	ldr	r0, [pc, #40]	; (d05a0158 <app_loop_os+0x34>)
d05a0130:	7a13      	ldrb	r3, [r2, #8]
d05a0132:	7a54      	ldrb	r4, [r2, #9]
d05a0134:	7a91      	ldrb	r1, [r2, #10]
d05a0136:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d05a013a:	7ad2      	ldrb	r2, [r2, #11]
d05a013c:	7800      	ldrb	r0, [r0, #0]
d05a013e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0142:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a0146:	695b      	ldr	r3, [r3, #20]
d05a0148:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d05a014c:	685b      	ldr	r3, [r3, #4]
d05a014e:	4718      	bx	r3
d05a0150:	d05a0d18 	.word	0xd05a0d18
d05a0154:	2001f000 	.word	0x2001f000
d05a0158:	d05a0e10 	.word	0xd05a0e10

d05a015c <main>:
d05a015c:	b5f0      	push	{r4, r5, r6, r7, lr}
d05a015e:	4c27      	ldr	r4, [pc, #156]	; (d05a01fc <main+0xa0>)
d05a0160:	2000      	movs	r0, #0
d05a0162:	b083      	sub	sp, #12
d05a0164:	4f26      	ldr	r7, [pc, #152]	; (d05a0200 <main+0xa4>)
d05a0166:	7823      	ldrb	r3, [r4, #0]
d05a0168:	4605      	mov	r5, r0
d05a016a:	7862      	ldrb	r2, [r4, #1]
d05a016c:	78a1      	ldrb	r1, [r4, #2]
d05a016e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a0172:	78e2      	ldrb	r2, [r4, #3]
d05a0174:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0178:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a017c:	681b      	ldr	r3, [r3, #0]
d05a017e:	4798      	blx	r3
d05a0180:	f7ff ff5c 	bl	d05a003c <initMalloc>
d05a0184:	7a23      	ldrb	r3, [r4, #8]
d05a0186:	7a62      	ldrb	r2, [r4, #9]
d05a0188:	7aa1      	ldrb	r1, [r4, #10]
d05a018a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a018e:	7ae2      	ldrb	r2, [r4, #11]
d05a0190:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0194:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a0198:	695b      	ldr	r3, [r3, #20]
d05a019a:	681b      	ldr	r3, [r3, #0]
d05a019c:	4798      	blx	r3
d05a019e:	7a23      	ldrb	r3, [r4, #8]
d05a01a0:	7a66      	ldrb	r6, [r4, #9]
d05a01a2:	4629      	mov	r1, r5
d05a01a4:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
d05a01a8:	7038      	strb	r0, [r7, #0]
d05a01aa:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d05a01ae:	7aa6      	ldrb	r6, [r4, #10]
d05a01b0:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d05a01b4:	7ae6      	ldrb	r6, [r4, #11]
d05a01b6:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d05a01ba:	695b      	ldr	r3, [r3, #20]
d05a01bc:	9500      	str	r5, [sp, #0]
d05a01be:	689e      	ldr	r6, [r3, #8]
d05a01c0:	4b10      	ldr	r3, [pc, #64]	; (d05a0204 <main+0xa8>)
d05a01c2:	47b0      	blx	r6
d05a01c4:	7d23      	ldrb	r3, [r4, #20]
d05a01c6:	7d62      	ldrb	r2, [r4, #21]
d05a01c8:	7da1      	ldrb	r1, [r4, #22]
d05a01ca:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a01ce:	7de2      	ldrb	r2, [r4, #23]
d05a01d0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a01d4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a01d8:	685b      	ldr	r3, [r3, #4]
d05a01da:	685b      	ldr	r3, [r3, #4]
d05a01dc:	4798      	blx	r3
d05a01de:	7a23      	ldrb	r3, [r4, #8]
d05a01e0:	7a62      	ldrb	r2, [r4, #9]
d05a01e2:	7aa1      	ldrb	r1, [r4, #10]
d05a01e4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a01e8:	7ae2      	ldrb	r2, [r4, #11]
d05a01ea:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a01ee:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a01f2:	689b      	ldr	r3, [r3, #8]
d05a01f4:	4798      	blx	r3
d05a01f6:	4628      	mov	r0, r5
d05a01f8:	b003      	add	sp, #12
d05a01fa:	bdf0      	pop	{r4, r5, r6, r7, pc}
d05a01fc:	2001f000 	.word	0x2001f000
d05a0200:	d05a0e10 	.word	0xd05a0e10
d05a0204:	d05a0125 	.word	0xd05a0125

d05a0208 <__errno>:
d05a0208:	4b01      	ldr	r3, [pc, #4]	; (d05a0210 <__errno+0x8>)
d05a020a:	6818      	ldr	r0, [r3, #0]
d05a020c:	4770      	bx	lr
d05a020e:	bf00      	nop
d05a0210:	d05a0da4 	.word	0xd05a0da4

d05a0214 <memset>:
d05a0214:	4402      	add	r2, r0
d05a0216:	4603      	mov	r3, r0
d05a0218:	4293      	cmp	r3, r2
d05a021a:	d100      	bne.n	d05a021e <memset+0xa>
d05a021c:	4770      	bx	lr
d05a021e:	f803 1b01 	strb.w	r1, [r3], #1
d05a0222:	e7f9      	b.n	d05a0218 <memset+0x4>

d05a0224 <_puts_r>:
d05a0224:	b570      	push	{r4, r5, r6, lr}
d05a0226:	460e      	mov	r6, r1
d05a0228:	4605      	mov	r5, r0
d05a022a:	b118      	cbz	r0, d05a0234 <_puts_r+0x10>
d05a022c:	6983      	ldr	r3, [r0, #24]
d05a022e:	b90b      	cbnz	r3, d05a0234 <_puts_r+0x10>
d05a0230:	f000 fb16 	bl	d05a0860 <__sinit>
d05a0234:	69ab      	ldr	r3, [r5, #24]
d05a0236:	68ac      	ldr	r4, [r5, #8]
d05a0238:	b913      	cbnz	r3, d05a0240 <_puts_r+0x1c>
d05a023a:	4628      	mov	r0, r5
d05a023c:	f000 fb10 	bl	d05a0860 <__sinit>
d05a0240:	4b2c      	ldr	r3, [pc, #176]	; (d05a02f4 <_puts_r+0xd0>)
d05a0242:	429c      	cmp	r4, r3
d05a0244:	d120      	bne.n	d05a0288 <_puts_r+0x64>
d05a0246:	686c      	ldr	r4, [r5, #4]
d05a0248:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05a024a:	07db      	lsls	r3, r3, #31
d05a024c:	d405      	bmi.n	d05a025a <_puts_r+0x36>
d05a024e:	89a3      	ldrh	r3, [r4, #12]
d05a0250:	0598      	lsls	r0, r3, #22
d05a0252:	d402      	bmi.n	d05a025a <_puts_r+0x36>
d05a0254:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a0256:	f000 fba1 	bl	d05a099c <__retarget_lock_acquire_recursive>
d05a025a:	89a3      	ldrh	r3, [r4, #12]
d05a025c:	0719      	lsls	r1, r3, #28
d05a025e:	d51d      	bpl.n	d05a029c <_puts_r+0x78>
d05a0260:	6923      	ldr	r3, [r4, #16]
d05a0262:	b1db      	cbz	r3, d05a029c <_puts_r+0x78>
d05a0264:	3e01      	subs	r6, #1
d05a0266:	68a3      	ldr	r3, [r4, #8]
d05a0268:	f816 1f01 	ldrb.w	r1, [r6, #1]!
d05a026c:	3b01      	subs	r3, #1
d05a026e:	60a3      	str	r3, [r4, #8]
d05a0270:	bb39      	cbnz	r1, d05a02c2 <_puts_r+0x9e>
d05a0272:	2b00      	cmp	r3, #0
d05a0274:	da38      	bge.n	d05a02e8 <_puts_r+0xc4>
d05a0276:	4622      	mov	r2, r4
d05a0278:	210a      	movs	r1, #10
d05a027a:	4628      	mov	r0, r5
d05a027c:	f000 f916 	bl	d05a04ac <__swbuf_r>
d05a0280:	3001      	adds	r0, #1
d05a0282:	d011      	beq.n	d05a02a8 <_puts_r+0x84>
d05a0284:	250a      	movs	r5, #10
d05a0286:	e011      	b.n	d05a02ac <_puts_r+0x88>
d05a0288:	4b1b      	ldr	r3, [pc, #108]	; (d05a02f8 <_puts_r+0xd4>)
d05a028a:	429c      	cmp	r4, r3
d05a028c:	d101      	bne.n	d05a0292 <_puts_r+0x6e>
d05a028e:	68ac      	ldr	r4, [r5, #8]
d05a0290:	e7da      	b.n	d05a0248 <_puts_r+0x24>
d05a0292:	4b1a      	ldr	r3, [pc, #104]	; (d05a02fc <_puts_r+0xd8>)
d05a0294:	429c      	cmp	r4, r3
d05a0296:	bf08      	it	eq
d05a0298:	68ec      	ldreq	r4, [r5, #12]
d05a029a:	e7d5      	b.n	d05a0248 <_puts_r+0x24>
d05a029c:	4621      	mov	r1, r4
d05a029e:	4628      	mov	r0, r5
d05a02a0:	f000 f956 	bl	d05a0550 <__swsetup_r>
d05a02a4:	2800      	cmp	r0, #0
d05a02a6:	d0dd      	beq.n	d05a0264 <_puts_r+0x40>
d05a02a8:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05a02ac:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05a02ae:	07da      	lsls	r2, r3, #31
d05a02b0:	d405      	bmi.n	d05a02be <_puts_r+0x9a>
d05a02b2:	89a3      	ldrh	r3, [r4, #12]
d05a02b4:	059b      	lsls	r3, r3, #22
d05a02b6:	d402      	bmi.n	d05a02be <_puts_r+0x9a>
d05a02b8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a02ba:	f000 fb70 	bl	d05a099e <__retarget_lock_release_recursive>
d05a02be:	4628      	mov	r0, r5
d05a02c0:	bd70      	pop	{r4, r5, r6, pc}
d05a02c2:	2b00      	cmp	r3, #0
d05a02c4:	da04      	bge.n	d05a02d0 <_puts_r+0xac>
d05a02c6:	69a2      	ldr	r2, [r4, #24]
d05a02c8:	429a      	cmp	r2, r3
d05a02ca:	dc06      	bgt.n	d05a02da <_puts_r+0xb6>
d05a02cc:	290a      	cmp	r1, #10
d05a02ce:	d004      	beq.n	d05a02da <_puts_r+0xb6>
d05a02d0:	6823      	ldr	r3, [r4, #0]
d05a02d2:	1c5a      	adds	r2, r3, #1
d05a02d4:	6022      	str	r2, [r4, #0]
d05a02d6:	7019      	strb	r1, [r3, #0]
d05a02d8:	e7c5      	b.n	d05a0266 <_puts_r+0x42>
d05a02da:	4622      	mov	r2, r4
d05a02dc:	4628      	mov	r0, r5
d05a02de:	f000 f8e5 	bl	d05a04ac <__swbuf_r>
d05a02e2:	3001      	adds	r0, #1
d05a02e4:	d1bf      	bne.n	d05a0266 <_puts_r+0x42>
d05a02e6:	e7df      	b.n	d05a02a8 <_puts_r+0x84>
d05a02e8:	6823      	ldr	r3, [r4, #0]
d05a02ea:	250a      	movs	r5, #10
d05a02ec:	1c5a      	adds	r2, r3, #1
d05a02ee:	6022      	str	r2, [r4, #0]
d05a02f0:	701d      	strb	r5, [r3, #0]
d05a02f2:	e7db      	b.n	d05a02ac <_puts_r+0x88>
d05a02f4:	d05a0d5c 	.word	0xd05a0d5c
d05a02f8:	d05a0d7c 	.word	0xd05a0d7c
d05a02fc:	d05a0d3c 	.word	0xd05a0d3c

d05a0300 <puts>:
d05a0300:	4b02      	ldr	r3, [pc, #8]	; (d05a030c <puts+0xc>)
d05a0302:	4601      	mov	r1, r0
d05a0304:	6818      	ldr	r0, [r3, #0]
d05a0306:	f7ff bf8d 	b.w	d05a0224 <_puts_r>
d05a030a:	bf00      	nop
d05a030c:	d05a0da4 	.word	0xd05a0da4

d05a0310 <setbuf>:
d05a0310:	2900      	cmp	r1, #0
d05a0312:	f44f 6380 	mov.w	r3, #1024	; 0x400
d05a0316:	bf0c      	ite	eq
d05a0318:	2202      	moveq	r2, #2
d05a031a:	2200      	movne	r2, #0
d05a031c:	f000 b800 	b.w	d05a0320 <setvbuf>

d05a0320 <setvbuf>:
d05a0320:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d05a0324:	461d      	mov	r5, r3
d05a0326:	4b5d      	ldr	r3, [pc, #372]	; (d05a049c <setvbuf+0x17c>)
d05a0328:	681f      	ldr	r7, [r3, #0]
d05a032a:	4604      	mov	r4, r0
d05a032c:	460e      	mov	r6, r1
d05a032e:	4690      	mov	r8, r2
d05a0330:	b127      	cbz	r7, d05a033c <setvbuf+0x1c>
d05a0332:	69bb      	ldr	r3, [r7, #24]
d05a0334:	b913      	cbnz	r3, d05a033c <setvbuf+0x1c>
d05a0336:	4638      	mov	r0, r7
d05a0338:	f000 fa92 	bl	d05a0860 <__sinit>
d05a033c:	4b58      	ldr	r3, [pc, #352]	; (d05a04a0 <setvbuf+0x180>)
d05a033e:	429c      	cmp	r4, r3
d05a0340:	d167      	bne.n	d05a0412 <setvbuf+0xf2>
d05a0342:	687c      	ldr	r4, [r7, #4]
d05a0344:	f1b8 0f02 	cmp.w	r8, #2
d05a0348:	d006      	beq.n	d05a0358 <setvbuf+0x38>
d05a034a:	f1b8 0f01 	cmp.w	r8, #1
d05a034e:	f200 809f 	bhi.w	d05a0490 <setvbuf+0x170>
d05a0352:	2d00      	cmp	r5, #0
d05a0354:	f2c0 809c 	blt.w	d05a0490 <setvbuf+0x170>
d05a0358:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05a035a:	07db      	lsls	r3, r3, #31
d05a035c:	d405      	bmi.n	d05a036a <setvbuf+0x4a>
d05a035e:	89a3      	ldrh	r3, [r4, #12]
d05a0360:	0598      	lsls	r0, r3, #22
d05a0362:	d402      	bmi.n	d05a036a <setvbuf+0x4a>
d05a0364:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a0366:	f000 fb19 	bl	d05a099c <__retarget_lock_acquire_recursive>
d05a036a:	4621      	mov	r1, r4
d05a036c:	4638      	mov	r0, r7
d05a036e:	f000 f9e3 	bl	d05a0738 <_fflush_r>
d05a0372:	6b61      	ldr	r1, [r4, #52]	; 0x34
d05a0374:	b141      	cbz	r1, d05a0388 <setvbuf+0x68>
d05a0376:	f104 0344 	add.w	r3, r4, #68	; 0x44
d05a037a:	4299      	cmp	r1, r3
d05a037c:	d002      	beq.n	d05a0384 <setvbuf+0x64>
d05a037e:	4638      	mov	r0, r7
d05a0380:	f000 fb7a 	bl	d05a0a78 <_free_r>
d05a0384:	2300      	movs	r3, #0
d05a0386:	6363      	str	r3, [r4, #52]	; 0x34
d05a0388:	2300      	movs	r3, #0
d05a038a:	61a3      	str	r3, [r4, #24]
d05a038c:	6063      	str	r3, [r4, #4]
d05a038e:	89a3      	ldrh	r3, [r4, #12]
d05a0390:	0619      	lsls	r1, r3, #24
d05a0392:	d503      	bpl.n	d05a039c <setvbuf+0x7c>
d05a0394:	6921      	ldr	r1, [r4, #16]
d05a0396:	4638      	mov	r0, r7
d05a0398:	f000 fb6e 	bl	d05a0a78 <_free_r>
d05a039c:	89a3      	ldrh	r3, [r4, #12]
d05a039e:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d05a03a2:	f023 0303 	bic.w	r3, r3, #3
d05a03a6:	f1b8 0f02 	cmp.w	r8, #2
d05a03aa:	81a3      	strh	r3, [r4, #12]
d05a03ac:	d06c      	beq.n	d05a0488 <setvbuf+0x168>
d05a03ae:	ab01      	add	r3, sp, #4
d05a03b0:	466a      	mov	r2, sp
d05a03b2:	4621      	mov	r1, r4
d05a03b4:	4638      	mov	r0, r7
d05a03b6:	f000 faf3 	bl	d05a09a0 <__swhatbuf_r>
d05a03ba:	89a3      	ldrh	r3, [r4, #12]
d05a03bc:	4318      	orrs	r0, r3
d05a03be:	81a0      	strh	r0, [r4, #12]
d05a03c0:	2d00      	cmp	r5, #0
d05a03c2:	d130      	bne.n	d05a0426 <setvbuf+0x106>
d05a03c4:	9d00      	ldr	r5, [sp, #0]
d05a03c6:	4628      	mov	r0, r5
d05a03c8:	f000 fb4e 	bl	d05a0a68 <malloc>
d05a03cc:	4606      	mov	r6, r0
d05a03ce:	2800      	cmp	r0, #0
d05a03d0:	d155      	bne.n	d05a047e <setvbuf+0x15e>
d05a03d2:	f8dd 9000 	ldr.w	r9, [sp]
d05a03d6:	45a9      	cmp	r9, r5
d05a03d8:	d14a      	bne.n	d05a0470 <setvbuf+0x150>
d05a03da:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05a03de:	2200      	movs	r2, #0
d05a03e0:	60a2      	str	r2, [r4, #8]
d05a03e2:	f104 0247 	add.w	r2, r4, #71	; 0x47
d05a03e6:	6022      	str	r2, [r4, #0]
d05a03e8:	6122      	str	r2, [r4, #16]
d05a03ea:	2201      	movs	r2, #1
d05a03ec:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d05a03f0:	6162      	str	r2, [r4, #20]
d05a03f2:	6e62      	ldr	r2, [r4, #100]	; 0x64
d05a03f4:	f043 0302 	orr.w	r3, r3, #2
d05a03f8:	07d2      	lsls	r2, r2, #31
d05a03fa:	81a3      	strh	r3, [r4, #12]
d05a03fc:	d405      	bmi.n	d05a040a <setvbuf+0xea>
d05a03fe:	f413 7f00 	tst.w	r3, #512	; 0x200
d05a0402:	d102      	bne.n	d05a040a <setvbuf+0xea>
d05a0404:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a0406:	f000 faca 	bl	d05a099e <__retarget_lock_release_recursive>
d05a040a:	4628      	mov	r0, r5
d05a040c:	b003      	add	sp, #12
d05a040e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d05a0412:	4b24      	ldr	r3, [pc, #144]	; (d05a04a4 <setvbuf+0x184>)
d05a0414:	429c      	cmp	r4, r3
d05a0416:	d101      	bne.n	d05a041c <setvbuf+0xfc>
d05a0418:	68bc      	ldr	r4, [r7, #8]
d05a041a:	e793      	b.n	d05a0344 <setvbuf+0x24>
d05a041c:	4b22      	ldr	r3, [pc, #136]	; (d05a04a8 <setvbuf+0x188>)
d05a041e:	429c      	cmp	r4, r3
d05a0420:	bf08      	it	eq
d05a0422:	68fc      	ldreq	r4, [r7, #12]
d05a0424:	e78e      	b.n	d05a0344 <setvbuf+0x24>
d05a0426:	2e00      	cmp	r6, #0
d05a0428:	d0cd      	beq.n	d05a03c6 <setvbuf+0xa6>
d05a042a:	69bb      	ldr	r3, [r7, #24]
d05a042c:	b913      	cbnz	r3, d05a0434 <setvbuf+0x114>
d05a042e:	4638      	mov	r0, r7
d05a0430:	f000 fa16 	bl	d05a0860 <__sinit>
d05a0434:	f1b8 0f01 	cmp.w	r8, #1
d05a0438:	bf08      	it	eq
d05a043a:	89a3      	ldrheq	r3, [r4, #12]
d05a043c:	6026      	str	r6, [r4, #0]
d05a043e:	bf04      	itt	eq
d05a0440:	f043 0301 	orreq.w	r3, r3, #1
d05a0444:	81a3      	strheq	r3, [r4, #12]
d05a0446:	89a2      	ldrh	r2, [r4, #12]
d05a0448:	f012 0308 	ands.w	r3, r2, #8
d05a044c:	e9c4 6504 	strd	r6, r5, [r4, #16]
d05a0450:	d01c      	beq.n	d05a048c <setvbuf+0x16c>
d05a0452:	07d3      	lsls	r3, r2, #31
d05a0454:	bf41      	itttt	mi
d05a0456:	2300      	movmi	r3, #0
d05a0458:	426d      	negmi	r5, r5
d05a045a:	60a3      	strmi	r3, [r4, #8]
d05a045c:	61a5      	strmi	r5, [r4, #24]
d05a045e:	bf58      	it	pl
d05a0460:	60a5      	strpl	r5, [r4, #8]
d05a0462:	6e65      	ldr	r5, [r4, #100]	; 0x64
d05a0464:	f015 0501 	ands.w	r5, r5, #1
d05a0468:	d115      	bne.n	d05a0496 <setvbuf+0x176>
d05a046a:	f412 7f00 	tst.w	r2, #512	; 0x200
d05a046e:	e7c8      	b.n	d05a0402 <setvbuf+0xe2>
d05a0470:	4648      	mov	r0, r9
d05a0472:	f000 faf9 	bl	d05a0a68 <malloc>
d05a0476:	4606      	mov	r6, r0
d05a0478:	2800      	cmp	r0, #0
d05a047a:	d0ae      	beq.n	d05a03da <setvbuf+0xba>
d05a047c:	464d      	mov	r5, r9
d05a047e:	89a3      	ldrh	r3, [r4, #12]
d05a0480:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d05a0484:	81a3      	strh	r3, [r4, #12]
d05a0486:	e7d0      	b.n	d05a042a <setvbuf+0x10a>
d05a0488:	2500      	movs	r5, #0
d05a048a:	e7a8      	b.n	d05a03de <setvbuf+0xbe>
d05a048c:	60a3      	str	r3, [r4, #8]
d05a048e:	e7e8      	b.n	d05a0462 <setvbuf+0x142>
d05a0490:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05a0494:	e7b9      	b.n	d05a040a <setvbuf+0xea>
d05a0496:	2500      	movs	r5, #0
d05a0498:	e7b7      	b.n	d05a040a <setvbuf+0xea>
d05a049a:	bf00      	nop
d05a049c:	d05a0da4 	.word	0xd05a0da4
d05a04a0:	d05a0d5c 	.word	0xd05a0d5c
d05a04a4:	d05a0d7c 	.word	0xd05a0d7c
d05a04a8:	d05a0d3c 	.word	0xd05a0d3c

d05a04ac <__swbuf_r>:
d05a04ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a04ae:	460e      	mov	r6, r1
d05a04b0:	4614      	mov	r4, r2
d05a04b2:	4605      	mov	r5, r0
d05a04b4:	b118      	cbz	r0, d05a04be <__swbuf_r+0x12>
d05a04b6:	6983      	ldr	r3, [r0, #24]
d05a04b8:	b90b      	cbnz	r3, d05a04be <__swbuf_r+0x12>
d05a04ba:	f000 f9d1 	bl	d05a0860 <__sinit>
d05a04be:	4b21      	ldr	r3, [pc, #132]	; (d05a0544 <__swbuf_r+0x98>)
d05a04c0:	429c      	cmp	r4, r3
d05a04c2:	d12b      	bne.n	d05a051c <__swbuf_r+0x70>
d05a04c4:	686c      	ldr	r4, [r5, #4]
d05a04c6:	69a3      	ldr	r3, [r4, #24]
d05a04c8:	60a3      	str	r3, [r4, #8]
d05a04ca:	89a3      	ldrh	r3, [r4, #12]
d05a04cc:	071a      	lsls	r2, r3, #28
d05a04ce:	d52f      	bpl.n	d05a0530 <__swbuf_r+0x84>
d05a04d0:	6923      	ldr	r3, [r4, #16]
d05a04d2:	b36b      	cbz	r3, d05a0530 <__swbuf_r+0x84>
d05a04d4:	6923      	ldr	r3, [r4, #16]
d05a04d6:	6820      	ldr	r0, [r4, #0]
d05a04d8:	1ac0      	subs	r0, r0, r3
d05a04da:	6963      	ldr	r3, [r4, #20]
d05a04dc:	b2f6      	uxtb	r6, r6
d05a04de:	4283      	cmp	r3, r0
d05a04e0:	4637      	mov	r7, r6
d05a04e2:	dc04      	bgt.n	d05a04ee <__swbuf_r+0x42>
d05a04e4:	4621      	mov	r1, r4
d05a04e6:	4628      	mov	r0, r5
d05a04e8:	f000 f926 	bl	d05a0738 <_fflush_r>
d05a04ec:	bb30      	cbnz	r0, d05a053c <__swbuf_r+0x90>
d05a04ee:	68a3      	ldr	r3, [r4, #8]
d05a04f0:	3b01      	subs	r3, #1
d05a04f2:	60a3      	str	r3, [r4, #8]
d05a04f4:	6823      	ldr	r3, [r4, #0]
d05a04f6:	1c5a      	adds	r2, r3, #1
d05a04f8:	6022      	str	r2, [r4, #0]
d05a04fa:	701e      	strb	r6, [r3, #0]
d05a04fc:	6963      	ldr	r3, [r4, #20]
d05a04fe:	3001      	adds	r0, #1
d05a0500:	4283      	cmp	r3, r0
d05a0502:	d004      	beq.n	d05a050e <__swbuf_r+0x62>
d05a0504:	89a3      	ldrh	r3, [r4, #12]
d05a0506:	07db      	lsls	r3, r3, #31
d05a0508:	d506      	bpl.n	d05a0518 <__swbuf_r+0x6c>
d05a050a:	2e0a      	cmp	r6, #10
d05a050c:	d104      	bne.n	d05a0518 <__swbuf_r+0x6c>
d05a050e:	4621      	mov	r1, r4
d05a0510:	4628      	mov	r0, r5
d05a0512:	f000 f911 	bl	d05a0738 <_fflush_r>
d05a0516:	b988      	cbnz	r0, d05a053c <__swbuf_r+0x90>
d05a0518:	4638      	mov	r0, r7
d05a051a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a051c:	4b0a      	ldr	r3, [pc, #40]	; (d05a0548 <__swbuf_r+0x9c>)
d05a051e:	429c      	cmp	r4, r3
d05a0520:	d101      	bne.n	d05a0526 <__swbuf_r+0x7a>
d05a0522:	68ac      	ldr	r4, [r5, #8]
d05a0524:	e7cf      	b.n	d05a04c6 <__swbuf_r+0x1a>
d05a0526:	4b09      	ldr	r3, [pc, #36]	; (d05a054c <__swbuf_r+0xa0>)
d05a0528:	429c      	cmp	r4, r3
d05a052a:	bf08      	it	eq
d05a052c:	68ec      	ldreq	r4, [r5, #12]
d05a052e:	e7ca      	b.n	d05a04c6 <__swbuf_r+0x1a>
d05a0530:	4621      	mov	r1, r4
d05a0532:	4628      	mov	r0, r5
d05a0534:	f000 f80c 	bl	d05a0550 <__swsetup_r>
d05a0538:	2800      	cmp	r0, #0
d05a053a:	d0cb      	beq.n	d05a04d4 <__swbuf_r+0x28>
d05a053c:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d05a0540:	e7ea      	b.n	d05a0518 <__swbuf_r+0x6c>
d05a0542:	bf00      	nop
d05a0544:	d05a0d5c 	.word	0xd05a0d5c
d05a0548:	d05a0d7c 	.word	0xd05a0d7c
d05a054c:	d05a0d3c 	.word	0xd05a0d3c

d05a0550 <__swsetup_r>:
d05a0550:	4b32      	ldr	r3, [pc, #200]	; (d05a061c <__swsetup_r+0xcc>)
d05a0552:	b570      	push	{r4, r5, r6, lr}
d05a0554:	681d      	ldr	r5, [r3, #0]
d05a0556:	4606      	mov	r6, r0
d05a0558:	460c      	mov	r4, r1
d05a055a:	b125      	cbz	r5, d05a0566 <__swsetup_r+0x16>
d05a055c:	69ab      	ldr	r3, [r5, #24]
d05a055e:	b913      	cbnz	r3, d05a0566 <__swsetup_r+0x16>
d05a0560:	4628      	mov	r0, r5
d05a0562:	f000 f97d 	bl	d05a0860 <__sinit>
d05a0566:	4b2e      	ldr	r3, [pc, #184]	; (d05a0620 <__swsetup_r+0xd0>)
d05a0568:	429c      	cmp	r4, r3
d05a056a:	d10f      	bne.n	d05a058c <__swsetup_r+0x3c>
d05a056c:	686c      	ldr	r4, [r5, #4]
d05a056e:	89a3      	ldrh	r3, [r4, #12]
d05a0570:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d05a0574:	0719      	lsls	r1, r3, #28
d05a0576:	d42c      	bmi.n	d05a05d2 <__swsetup_r+0x82>
d05a0578:	06dd      	lsls	r5, r3, #27
d05a057a:	d411      	bmi.n	d05a05a0 <__swsetup_r+0x50>
d05a057c:	2309      	movs	r3, #9
d05a057e:	6033      	str	r3, [r6, #0]
d05a0580:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d05a0584:	81a3      	strh	r3, [r4, #12]
d05a0586:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a058a:	e03e      	b.n	d05a060a <__swsetup_r+0xba>
d05a058c:	4b25      	ldr	r3, [pc, #148]	; (d05a0624 <__swsetup_r+0xd4>)
d05a058e:	429c      	cmp	r4, r3
d05a0590:	d101      	bne.n	d05a0596 <__swsetup_r+0x46>
d05a0592:	68ac      	ldr	r4, [r5, #8]
d05a0594:	e7eb      	b.n	d05a056e <__swsetup_r+0x1e>
d05a0596:	4b24      	ldr	r3, [pc, #144]	; (d05a0628 <__swsetup_r+0xd8>)
d05a0598:	429c      	cmp	r4, r3
d05a059a:	bf08      	it	eq
d05a059c:	68ec      	ldreq	r4, [r5, #12]
d05a059e:	e7e6      	b.n	d05a056e <__swsetup_r+0x1e>
d05a05a0:	0758      	lsls	r0, r3, #29
d05a05a2:	d512      	bpl.n	d05a05ca <__swsetup_r+0x7a>
d05a05a4:	6b61      	ldr	r1, [r4, #52]	; 0x34
d05a05a6:	b141      	cbz	r1, d05a05ba <__swsetup_r+0x6a>
d05a05a8:	f104 0344 	add.w	r3, r4, #68	; 0x44
d05a05ac:	4299      	cmp	r1, r3
d05a05ae:	d002      	beq.n	d05a05b6 <__swsetup_r+0x66>
d05a05b0:	4630      	mov	r0, r6
d05a05b2:	f000 fa61 	bl	d05a0a78 <_free_r>
d05a05b6:	2300      	movs	r3, #0
d05a05b8:	6363      	str	r3, [r4, #52]	; 0x34
d05a05ba:	89a3      	ldrh	r3, [r4, #12]
d05a05bc:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d05a05c0:	81a3      	strh	r3, [r4, #12]
d05a05c2:	2300      	movs	r3, #0
d05a05c4:	6063      	str	r3, [r4, #4]
d05a05c6:	6923      	ldr	r3, [r4, #16]
d05a05c8:	6023      	str	r3, [r4, #0]
d05a05ca:	89a3      	ldrh	r3, [r4, #12]
d05a05cc:	f043 0308 	orr.w	r3, r3, #8
d05a05d0:	81a3      	strh	r3, [r4, #12]
d05a05d2:	6923      	ldr	r3, [r4, #16]
d05a05d4:	b94b      	cbnz	r3, d05a05ea <__swsetup_r+0x9a>
d05a05d6:	89a3      	ldrh	r3, [r4, #12]
d05a05d8:	f403 7320 	and.w	r3, r3, #640	; 0x280
d05a05dc:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d05a05e0:	d003      	beq.n	d05a05ea <__swsetup_r+0x9a>
d05a05e2:	4621      	mov	r1, r4
d05a05e4:	4630      	mov	r0, r6
d05a05e6:	f000 f9ff 	bl	d05a09e8 <__smakebuf_r>
d05a05ea:	89a0      	ldrh	r0, [r4, #12]
d05a05ec:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d05a05f0:	f010 0301 	ands.w	r3, r0, #1
d05a05f4:	d00a      	beq.n	d05a060c <__swsetup_r+0xbc>
d05a05f6:	2300      	movs	r3, #0
d05a05f8:	60a3      	str	r3, [r4, #8]
d05a05fa:	6963      	ldr	r3, [r4, #20]
d05a05fc:	425b      	negs	r3, r3
d05a05fe:	61a3      	str	r3, [r4, #24]
d05a0600:	6923      	ldr	r3, [r4, #16]
d05a0602:	b943      	cbnz	r3, d05a0616 <__swsetup_r+0xc6>
d05a0604:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d05a0608:	d1ba      	bne.n	d05a0580 <__swsetup_r+0x30>
d05a060a:	bd70      	pop	{r4, r5, r6, pc}
d05a060c:	0781      	lsls	r1, r0, #30
d05a060e:	bf58      	it	pl
d05a0610:	6963      	ldrpl	r3, [r4, #20]
d05a0612:	60a3      	str	r3, [r4, #8]
d05a0614:	e7f4      	b.n	d05a0600 <__swsetup_r+0xb0>
d05a0616:	2000      	movs	r0, #0
d05a0618:	e7f7      	b.n	d05a060a <__swsetup_r+0xba>
d05a061a:	bf00      	nop
d05a061c:	d05a0da4 	.word	0xd05a0da4
d05a0620:	d05a0d5c 	.word	0xd05a0d5c
d05a0624:	d05a0d7c 	.word	0xd05a0d7c
d05a0628:	d05a0d3c 	.word	0xd05a0d3c

d05a062c <__sflush_r>:
d05a062c:	898a      	ldrh	r2, [r1, #12]
d05a062e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d05a0632:	4605      	mov	r5, r0
d05a0634:	0710      	lsls	r0, r2, #28
d05a0636:	460c      	mov	r4, r1
d05a0638:	d458      	bmi.n	d05a06ec <__sflush_r+0xc0>
d05a063a:	684b      	ldr	r3, [r1, #4]
d05a063c:	2b00      	cmp	r3, #0
d05a063e:	dc05      	bgt.n	d05a064c <__sflush_r+0x20>
d05a0640:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d05a0642:	2b00      	cmp	r3, #0
d05a0644:	dc02      	bgt.n	d05a064c <__sflush_r+0x20>
d05a0646:	2000      	movs	r0, #0
d05a0648:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d05a064c:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d05a064e:	2e00      	cmp	r6, #0
d05a0650:	d0f9      	beq.n	d05a0646 <__sflush_r+0x1a>
d05a0652:	2300      	movs	r3, #0
d05a0654:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d05a0658:	682f      	ldr	r7, [r5, #0]
d05a065a:	602b      	str	r3, [r5, #0]
d05a065c:	d032      	beq.n	d05a06c4 <__sflush_r+0x98>
d05a065e:	6d60      	ldr	r0, [r4, #84]	; 0x54
d05a0660:	89a3      	ldrh	r3, [r4, #12]
d05a0662:	075a      	lsls	r2, r3, #29
d05a0664:	d505      	bpl.n	d05a0672 <__sflush_r+0x46>
d05a0666:	6863      	ldr	r3, [r4, #4]
d05a0668:	1ac0      	subs	r0, r0, r3
d05a066a:	6b63      	ldr	r3, [r4, #52]	; 0x34
d05a066c:	b10b      	cbz	r3, d05a0672 <__sflush_r+0x46>
d05a066e:	6c23      	ldr	r3, [r4, #64]	; 0x40
d05a0670:	1ac0      	subs	r0, r0, r3
d05a0672:	2300      	movs	r3, #0
d05a0674:	4602      	mov	r2, r0
d05a0676:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d05a0678:	6a21      	ldr	r1, [r4, #32]
d05a067a:	4628      	mov	r0, r5
d05a067c:	47b0      	blx	r6
d05a067e:	1c43      	adds	r3, r0, #1
d05a0680:	89a3      	ldrh	r3, [r4, #12]
d05a0682:	d106      	bne.n	d05a0692 <__sflush_r+0x66>
d05a0684:	6829      	ldr	r1, [r5, #0]
d05a0686:	291d      	cmp	r1, #29
d05a0688:	d82c      	bhi.n	d05a06e4 <__sflush_r+0xb8>
d05a068a:	4a2a      	ldr	r2, [pc, #168]	; (d05a0734 <__sflush_r+0x108>)
d05a068c:	40ca      	lsrs	r2, r1
d05a068e:	07d6      	lsls	r6, r2, #31
d05a0690:	d528      	bpl.n	d05a06e4 <__sflush_r+0xb8>
d05a0692:	2200      	movs	r2, #0
d05a0694:	6062      	str	r2, [r4, #4]
d05a0696:	04d9      	lsls	r1, r3, #19
d05a0698:	6922      	ldr	r2, [r4, #16]
d05a069a:	6022      	str	r2, [r4, #0]
d05a069c:	d504      	bpl.n	d05a06a8 <__sflush_r+0x7c>
d05a069e:	1c42      	adds	r2, r0, #1
d05a06a0:	d101      	bne.n	d05a06a6 <__sflush_r+0x7a>
d05a06a2:	682b      	ldr	r3, [r5, #0]
d05a06a4:	b903      	cbnz	r3, d05a06a8 <__sflush_r+0x7c>
d05a06a6:	6560      	str	r0, [r4, #84]	; 0x54
d05a06a8:	6b61      	ldr	r1, [r4, #52]	; 0x34
d05a06aa:	602f      	str	r7, [r5, #0]
d05a06ac:	2900      	cmp	r1, #0
d05a06ae:	d0ca      	beq.n	d05a0646 <__sflush_r+0x1a>
d05a06b0:	f104 0344 	add.w	r3, r4, #68	; 0x44
d05a06b4:	4299      	cmp	r1, r3
d05a06b6:	d002      	beq.n	d05a06be <__sflush_r+0x92>
d05a06b8:	4628      	mov	r0, r5
d05a06ba:	f000 f9dd 	bl	d05a0a78 <_free_r>
d05a06be:	2000      	movs	r0, #0
d05a06c0:	6360      	str	r0, [r4, #52]	; 0x34
d05a06c2:	e7c1      	b.n	d05a0648 <__sflush_r+0x1c>
d05a06c4:	6a21      	ldr	r1, [r4, #32]
d05a06c6:	2301      	movs	r3, #1
d05a06c8:	4628      	mov	r0, r5
d05a06ca:	47b0      	blx	r6
d05a06cc:	1c41      	adds	r1, r0, #1
d05a06ce:	d1c7      	bne.n	d05a0660 <__sflush_r+0x34>
d05a06d0:	682b      	ldr	r3, [r5, #0]
d05a06d2:	2b00      	cmp	r3, #0
d05a06d4:	d0c4      	beq.n	d05a0660 <__sflush_r+0x34>
d05a06d6:	2b1d      	cmp	r3, #29
d05a06d8:	d001      	beq.n	d05a06de <__sflush_r+0xb2>
d05a06da:	2b16      	cmp	r3, #22
d05a06dc:	d101      	bne.n	d05a06e2 <__sflush_r+0xb6>
d05a06de:	602f      	str	r7, [r5, #0]
d05a06e0:	e7b1      	b.n	d05a0646 <__sflush_r+0x1a>
d05a06e2:	89a3      	ldrh	r3, [r4, #12]
d05a06e4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05a06e8:	81a3      	strh	r3, [r4, #12]
d05a06ea:	e7ad      	b.n	d05a0648 <__sflush_r+0x1c>
d05a06ec:	690f      	ldr	r7, [r1, #16]
d05a06ee:	2f00      	cmp	r7, #0
d05a06f0:	d0a9      	beq.n	d05a0646 <__sflush_r+0x1a>
d05a06f2:	0793      	lsls	r3, r2, #30
d05a06f4:	680e      	ldr	r6, [r1, #0]
d05a06f6:	bf08      	it	eq
d05a06f8:	694b      	ldreq	r3, [r1, #20]
d05a06fa:	600f      	str	r7, [r1, #0]
d05a06fc:	bf18      	it	ne
d05a06fe:	2300      	movne	r3, #0
d05a0700:	eba6 0807 	sub.w	r8, r6, r7
d05a0704:	608b      	str	r3, [r1, #8]
d05a0706:	f1b8 0f00 	cmp.w	r8, #0
d05a070a:	dd9c      	ble.n	d05a0646 <__sflush_r+0x1a>
d05a070c:	6a21      	ldr	r1, [r4, #32]
d05a070e:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d05a0710:	4643      	mov	r3, r8
d05a0712:	463a      	mov	r2, r7
d05a0714:	4628      	mov	r0, r5
d05a0716:	47b0      	blx	r6
d05a0718:	2800      	cmp	r0, #0
d05a071a:	dc06      	bgt.n	d05a072a <__sflush_r+0xfe>
d05a071c:	89a3      	ldrh	r3, [r4, #12]
d05a071e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05a0722:	81a3      	strh	r3, [r4, #12]
d05a0724:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a0728:	e78e      	b.n	d05a0648 <__sflush_r+0x1c>
d05a072a:	4407      	add	r7, r0
d05a072c:	eba8 0800 	sub.w	r8, r8, r0
d05a0730:	e7e9      	b.n	d05a0706 <__sflush_r+0xda>
d05a0732:	bf00      	nop
d05a0734:	20400001 	.word	0x20400001

d05a0738 <_fflush_r>:
d05a0738:	b538      	push	{r3, r4, r5, lr}
d05a073a:	690b      	ldr	r3, [r1, #16]
d05a073c:	4605      	mov	r5, r0
d05a073e:	460c      	mov	r4, r1
d05a0740:	b913      	cbnz	r3, d05a0748 <_fflush_r+0x10>
d05a0742:	2500      	movs	r5, #0
d05a0744:	4628      	mov	r0, r5
d05a0746:	bd38      	pop	{r3, r4, r5, pc}
d05a0748:	b118      	cbz	r0, d05a0752 <_fflush_r+0x1a>
d05a074a:	6983      	ldr	r3, [r0, #24]
d05a074c:	b90b      	cbnz	r3, d05a0752 <_fflush_r+0x1a>
d05a074e:	f000 f887 	bl	d05a0860 <__sinit>
d05a0752:	4b14      	ldr	r3, [pc, #80]	; (d05a07a4 <_fflush_r+0x6c>)
d05a0754:	429c      	cmp	r4, r3
d05a0756:	d11b      	bne.n	d05a0790 <_fflush_r+0x58>
d05a0758:	686c      	ldr	r4, [r5, #4]
d05a075a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d05a075e:	2b00      	cmp	r3, #0
d05a0760:	d0ef      	beq.n	d05a0742 <_fflush_r+0xa>
d05a0762:	6e62      	ldr	r2, [r4, #100]	; 0x64
d05a0764:	07d0      	lsls	r0, r2, #31
d05a0766:	d404      	bmi.n	d05a0772 <_fflush_r+0x3a>
d05a0768:	0599      	lsls	r1, r3, #22
d05a076a:	d402      	bmi.n	d05a0772 <_fflush_r+0x3a>
d05a076c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a076e:	f000 f915 	bl	d05a099c <__retarget_lock_acquire_recursive>
d05a0772:	4628      	mov	r0, r5
d05a0774:	4621      	mov	r1, r4
d05a0776:	f7ff ff59 	bl	d05a062c <__sflush_r>
d05a077a:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05a077c:	07da      	lsls	r2, r3, #31
d05a077e:	4605      	mov	r5, r0
d05a0780:	d4e0      	bmi.n	d05a0744 <_fflush_r+0xc>
d05a0782:	89a3      	ldrh	r3, [r4, #12]
d05a0784:	059b      	lsls	r3, r3, #22
d05a0786:	d4dd      	bmi.n	d05a0744 <_fflush_r+0xc>
d05a0788:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a078a:	f000 f908 	bl	d05a099e <__retarget_lock_release_recursive>
d05a078e:	e7d9      	b.n	d05a0744 <_fflush_r+0xc>
d05a0790:	4b05      	ldr	r3, [pc, #20]	; (d05a07a8 <_fflush_r+0x70>)
d05a0792:	429c      	cmp	r4, r3
d05a0794:	d101      	bne.n	d05a079a <_fflush_r+0x62>
d05a0796:	68ac      	ldr	r4, [r5, #8]
d05a0798:	e7df      	b.n	d05a075a <_fflush_r+0x22>
d05a079a:	4b04      	ldr	r3, [pc, #16]	; (d05a07ac <_fflush_r+0x74>)
d05a079c:	429c      	cmp	r4, r3
d05a079e:	bf08      	it	eq
d05a07a0:	68ec      	ldreq	r4, [r5, #12]
d05a07a2:	e7da      	b.n	d05a075a <_fflush_r+0x22>
d05a07a4:	d05a0d5c 	.word	0xd05a0d5c
d05a07a8:	d05a0d7c 	.word	0xd05a0d7c
d05a07ac:	d05a0d3c 	.word	0xd05a0d3c

d05a07b0 <std>:
d05a07b0:	2300      	movs	r3, #0
d05a07b2:	b510      	push	{r4, lr}
d05a07b4:	4604      	mov	r4, r0
d05a07b6:	e9c0 3300 	strd	r3, r3, [r0]
d05a07ba:	e9c0 3304 	strd	r3, r3, [r0, #16]
d05a07be:	6083      	str	r3, [r0, #8]
d05a07c0:	8181      	strh	r1, [r0, #12]
d05a07c2:	6643      	str	r3, [r0, #100]	; 0x64
d05a07c4:	81c2      	strh	r2, [r0, #14]
d05a07c6:	6183      	str	r3, [r0, #24]
d05a07c8:	4619      	mov	r1, r3
d05a07ca:	2208      	movs	r2, #8
d05a07cc:	305c      	adds	r0, #92	; 0x5c
d05a07ce:	f7ff fd21 	bl	d05a0214 <memset>
d05a07d2:	4b05      	ldr	r3, [pc, #20]	; (d05a07e8 <std+0x38>)
d05a07d4:	6263      	str	r3, [r4, #36]	; 0x24
d05a07d6:	4b05      	ldr	r3, [pc, #20]	; (d05a07ec <std+0x3c>)
d05a07d8:	62a3      	str	r3, [r4, #40]	; 0x28
d05a07da:	4b05      	ldr	r3, [pc, #20]	; (d05a07f0 <std+0x40>)
d05a07dc:	62e3      	str	r3, [r4, #44]	; 0x2c
d05a07de:	4b05      	ldr	r3, [pc, #20]	; (d05a07f4 <std+0x44>)
d05a07e0:	6224      	str	r4, [r4, #32]
d05a07e2:	6323      	str	r3, [r4, #48]	; 0x30
d05a07e4:	bd10      	pop	{r4, pc}
d05a07e6:	bf00      	nop
d05a07e8:	d05a0bcd 	.word	0xd05a0bcd
d05a07ec:	d05a0bef 	.word	0xd05a0bef
d05a07f0:	d05a0c27 	.word	0xd05a0c27
d05a07f4:	d05a0c4b 	.word	0xd05a0c4b

d05a07f8 <_cleanup_r>:
d05a07f8:	4901      	ldr	r1, [pc, #4]	; (d05a0800 <_cleanup_r+0x8>)
d05a07fa:	f000 b8af 	b.w	d05a095c <_fwalk_reent>
d05a07fe:	bf00      	nop
d05a0800:	d05a0739 	.word	0xd05a0739

d05a0804 <__sfmoreglue>:
d05a0804:	b570      	push	{r4, r5, r6, lr}
d05a0806:	1e4a      	subs	r2, r1, #1
d05a0808:	2568      	movs	r5, #104	; 0x68
d05a080a:	4355      	muls	r5, r2
d05a080c:	460e      	mov	r6, r1
d05a080e:	f105 0174 	add.w	r1, r5, #116	; 0x74
d05a0812:	f000 f981 	bl	d05a0b18 <_malloc_r>
d05a0816:	4604      	mov	r4, r0
d05a0818:	b140      	cbz	r0, d05a082c <__sfmoreglue+0x28>
d05a081a:	2100      	movs	r1, #0
d05a081c:	e9c0 1600 	strd	r1, r6, [r0]
d05a0820:	300c      	adds	r0, #12
d05a0822:	60a0      	str	r0, [r4, #8]
d05a0824:	f105 0268 	add.w	r2, r5, #104	; 0x68
d05a0828:	f7ff fcf4 	bl	d05a0214 <memset>
d05a082c:	4620      	mov	r0, r4
d05a082e:	bd70      	pop	{r4, r5, r6, pc}

d05a0830 <__sfp_lock_acquire>:
d05a0830:	4801      	ldr	r0, [pc, #4]	; (d05a0838 <__sfp_lock_acquire+0x8>)
d05a0832:	f000 b8b3 	b.w	d05a099c <__retarget_lock_acquire_recursive>
d05a0836:	bf00      	nop
d05a0838:	d05a0e28 	.word	0xd05a0e28

d05a083c <__sfp_lock_release>:
d05a083c:	4801      	ldr	r0, [pc, #4]	; (d05a0844 <__sfp_lock_release+0x8>)
d05a083e:	f000 b8ae 	b.w	d05a099e <__retarget_lock_release_recursive>
d05a0842:	bf00      	nop
d05a0844:	d05a0e28 	.word	0xd05a0e28

d05a0848 <__sinit_lock_acquire>:
d05a0848:	4801      	ldr	r0, [pc, #4]	; (d05a0850 <__sinit_lock_acquire+0x8>)
d05a084a:	f000 b8a7 	b.w	d05a099c <__retarget_lock_acquire_recursive>
d05a084e:	bf00      	nop
d05a0850:	d05a0e23 	.word	0xd05a0e23

d05a0854 <__sinit_lock_release>:
d05a0854:	4801      	ldr	r0, [pc, #4]	; (d05a085c <__sinit_lock_release+0x8>)
d05a0856:	f000 b8a2 	b.w	d05a099e <__retarget_lock_release_recursive>
d05a085a:	bf00      	nop
d05a085c:	d05a0e23 	.word	0xd05a0e23

d05a0860 <__sinit>:
d05a0860:	b510      	push	{r4, lr}
d05a0862:	4604      	mov	r4, r0
d05a0864:	f7ff fff0 	bl	d05a0848 <__sinit_lock_acquire>
d05a0868:	69a3      	ldr	r3, [r4, #24]
d05a086a:	b11b      	cbz	r3, d05a0874 <__sinit+0x14>
d05a086c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d05a0870:	f7ff bff0 	b.w	d05a0854 <__sinit_lock_release>
d05a0874:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d05a0878:	6523      	str	r3, [r4, #80]	; 0x50
d05a087a:	4b13      	ldr	r3, [pc, #76]	; (d05a08c8 <__sinit+0x68>)
d05a087c:	4a13      	ldr	r2, [pc, #76]	; (d05a08cc <__sinit+0x6c>)
d05a087e:	681b      	ldr	r3, [r3, #0]
d05a0880:	62a2      	str	r2, [r4, #40]	; 0x28
d05a0882:	42a3      	cmp	r3, r4
d05a0884:	bf04      	itt	eq
d05a0886:	2301      	moveq	r3, #1
d05a0888:	61a3      	streq	r3, [r4, #24]
d05a088a:	4620      	mov	r0, r4
d05a088c:	f000 f820 	bl	d05a08d0 <__sfp>
d05a0890:	6060      	str	r0, [r4, #4]
d05a0892:	4620      	mov	r0, r4
d05a0894:	f000 f81c 	bl	d05a08d0 <__sfp>
d05a0898:	60a0      	str	r0, [r4, #8]
d05a089a:	4620      	mov	r0, r4
d05a089c:	f000 f818 	bl	d05a08d0 <__sfp>
d05a08a0:	2200      	movs	r2, #0
d05a08a2:	60e0      	str	r0, [r4, #12]
d05a08a4:	2104      	movs	r1, #4
d05a08a6:	6860      	ldr	r0, [r4, #4]
d05a08a8:	f7ff ff82 	bl	d05a07b0 <std>
d05a08ac:	68a0      	ldr	r0, [r4, #8]
d05a08ae:	2201      	movs	r2, #1
d05a08b0:	2109      	movs	r1, #9
d05a08b2:	f7ff ff7d 	bl	d05a07b0 <std>
d05a08b6:	68e0      	ldr	r0, [r4, #12]
d05a08b8:	2202      	movs	r2, #2
d05a08ba:	2112      	movs	r1, #18
d05a08bc:	f7ff ff78 	bl	d05a07b0 <std>
d05a08c0:	2301      	movs	r3, #1
d05a08c2:	61a3      	str	r3, [r4, #24]
d05a08c4:	e7d2      	b.n	d05a086c <__sinit+0xc>
d05a08c6:	bf00      	nop
d05a08c8:	d05a0d38 	.word	0xd05a0d38
d05a08cc:	d05a07f9 	.word	0xd05a07f9

d05a08d0 <__sfp>:
d05a08d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a08d2:	4607      	mov	r7, r0
d05a08d4:	f7ff ffac 	bl	d05a0830 <__sfp_lock_acquire>
d05a08d8:	4b1e      	ldr	r3, [pc, #120]	; (d05a0954 <__sfp+0x84>)
d05a08da:	681e      	ldr	r6, [r3, #0]
d05a08dc:	69b3      	ldr	r3, [r6, #24]
d05a08de:	b913      	cbnz	r3, d05a08e6 <__sfp+0x16>
d05a08e0:	4630      	mov	r0, r6
d05a08e2:	f7ff ffbd 	bl	d05a0860 <__sinit>
d05a08e6:	3648      	adds	r6, #72	; 0x48
d05a08e8:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d05a08ec:	3b01      	subs	r3, #1
d05a08ee:	d503      	bpl.n	d05a08f8 <__sfp+0x28>
d05a08f0:	6833      	ldr	r3, [r6, #0]
d05a08f2:	b30b      	cbz	r3, d05a0938 <__sfp+0x68>
d05a08f4:	6836      	ldr	r6, [r6, #0]
d05a08f6:	e7f7      	b.n	d05a08e8 <__sfp+0x18>
d05a08f8:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d05a08fc:	b9d5      	cbnz	r5, d05a0934 <__sfp+0x64>
d05a08fe:	4b16      	ldr	r3, [pc, #88]	; (d05a0958 <__sfp+0x88>)
d05a0900:	60e3      	str	r3, [r4, #12]
d05a0902:	f104 0058 	add.w	r0, r4, #88	; 0x58
d05a0906:	6665      	str	r5, [r4, #100]	; 0x64
d05a0908:	f000 f847 	bl	d05a099a <__retarget_lock_init_recursive>
d05a090c:	f7ff ff96 	bl	d05a083c <__sfp_lock_release>
d05a0910:	e9c4 5501 	strd	r5, r5, [r4, #4]
d05a0914:	e9c4 5504 	strd	r5, r5, [r4, #16]
d05a0918:	6025      	str	r5, [r4, #0]
d05a091a:	61a5      	str	r5, [r4, #24]
d05a091c:	2208      	movs	r2, #8
d05a091e:	4629      	mov	r1, r5
d05a0920:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d05a0924:	f7ff fc76 	bl	d05a0214 <memset>
d05a0928:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d05a092c:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d05a0930:	4620      	mov	r0, r4
d05a0932:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a0934:	3468      	adds	r4, #104	; 0x68
d05a0936:	e7d9      	b.n	d05a08ec <__sfp+0x1c>
d05a0938:	2104      	movs	r1, #4
d05a093a:	4638      	mov	r0, r7
d05a093c:	f7ff ff62 	bl	d05a0804 <__sfmoreglue>
d05a0940:	4604      	mov	r4, r0
d05a0942:	6030      	str	r0, [r6, #0]
d05a0944:	2800      	cmp	r0, #0
d05a0946:	d1d5      	bne.n	d05a08f4 <__sfp+0x24>
d05a0948:	f7ff ff78 	bl	d05a083c <__sfp_lock_release>
d05a094c:	230c      	movs	r3, #12
d05a094e:	603b      	str	r3, [r7, #0]
d05a0950:	e7ee      	b.n	d05a0930 <__sfp+0x60>
d05a0952:	bf00      	nop
d05a0954:	d05a0d38 	.word	0xd05a0d38
d05a0958:	ffff0001 	.word	0xffff0001

d05a095c <_fwalk_reent>:
d05a095c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d05a0960:	4606      	mov	r6, r0
d05a0962:	4688      	mov	r8, r1
d05a0964:	f100 0448 	add.w	r4, r0, #72	; 0x48
d05a0968:	2700      	movs	r7, #0
d05a096a:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d05a096e:	f1b9 0901 	subs.w	r9, r9, #1
d05a0972:	d505      	bpl.n	d05a0980 <_fwalk_reent+0x24>
d05a0974:	6824      	ldr	r4, [r4, #0]
d05a0976:	2c00      	cmp	r4, #0
d05a0978:	d1f7      	bne.n	d05a096a <_fwalk_reent+0xe>
d05a097a:	4638      	mov	r0, r7
d05a097c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d05a0980:	89ab      	ldrh	r3, [r5, #12]
d05a0982:	2b01      	cmp	r3, #1
d05a0984:	d907      	bls.n	d05a0996 <_fwalk_reent+0x3a>
d05a0986:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d05a098a:	3301      	adds	r3, #1
d05a098c:	d003      	beq.n	d05a0996 <_fwalk_reent+0x3a>
d05a098e:	4629      	mov	r1, r5
d05a0990:	4630      	mov	r0, r6
d05a0992:	47c0      	blx	r8
d05a0994:	4307      	orrs	r7, r0
d05a0996:	3568      	adds	r5, #104	; 0x68
d05a0998:	e7e9      	b.n	d05a096e <_fwalk_reent+0x12>

d05a099a <__retarget_lock_init_recursive>:
d05a099a:	4770      	bx	lr

d05a099c <__retarget_lock_acquire_recursive>:
d05a099c:	4770      	bx	lr

d05a099e <__retarget_lock_release_recursive>:
d05a099e:	4770      	bx	lr

d05a09a0 <__swhatbuf_r>:
d05a09a0:	b570      	push	{r4, r5, r6, lr}
d05a09a2:	460e      	mov	r6, r1
d05a09a4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a09a8:	2900      	cmp	r1, #0
d05a09aa:	b096      	sub	sp, #88	; 0x58
d05a09ac:	4614      	mov	r4, r2
d05a09ae:	461d      	mov	r5, r3
d05a09b0:	da07      	bge.n	d05a09c2 <__swhatbuf_r+0x22>
d05a09b2:	2300      	movs	r3, #0
d05a09b4:	602b      	str	r3, [r5, #0]
d05a09b6:	89b3      	ldrh	r3, [r6, #12]
d05a09b8:	061a      	lsls	r2, r3, #24
d05a09ba:	d410      	bmi.n	d05a09de <__swhatbuf_r+0x3e>
d05a09bc:	f44f 6380 	mov.w	r3, #1024	; 0x400
d05a09c0:	e00e      	b.n	d05a09e0 <__swhatbuf_r+0x40>
d05a09c2:	466a      	mov	r2, sp
d05a09c4:	f000 f956 	bl	d05a0c74 <_fstat_r>
d05a09c8:	2800      	cmp	r0, #0
d05a09ca:	dbf2      	blt.n	d05a09b2 <__swhatbuf_r+0x12>
d05a09cc:	9a01      	ldr	r2, [sp, #4]
d05a09ce:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d05a09d2:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d05a09d6:	425a      	negs	r2, r3
d05a09d8:	415a      	adcs	r2, r3
d05a09da:	602a      	str	r2, [r5, #0]
d05a09dc:	e7ee      	b.n	d05a09bc <__swhatbuf_r+0x1c>
d05a09de:	2340      	movs	r3, #64	; 0x40
d05a09e0:	2000      	movs	r0, #0
d05a09e2:	6023      	str	r3, [r4, #0]
d05a09e4:	b016      	add	sp, #88	; 0x58
d05a09e6:	bd70      	pop	{r4, r5, r6, pc}

d05a09e8 <__smakebuf_r>:
d05a09e8:	898b      	ldrh	r3, [r1, #12]
d05a09ea:	b573      	push	{r0, r1, r4, r5, r6, lr}
d05a09ec:	079d      	lsls	r5, r3, #30
d05a09ee:	4606      	mov	r6, r0
d05a09f0:	460c      	mov	r4, r1
d05a09f2:	d507      	bpl.n	d05a0a04 <__smakebuf_r+0x1c>
d05a09f4:	f104 0347 	add.w	r3, r4, #71	; 0x47
d05a09f8:	6023      	str	r3, [r4, #0]
d05a09fa:	6123      	str	r3, [r4, #16]
d05a09fc:	2301      	movs	r3, #1
d05a09fe:	6163      	str	r3, [r4, #20]
d05a0a00:	b002      	add	sp, #8
d05a0a02:	bd70      	pop	{r4, r5, r6, pc}
d05a0a04:	ab01      	add	r3, sp, #4
d05a0a06:	466a      	mov	r2, sp
d05a0a08:	f7ff ffca 	bl	d05a09a0 <__swhatbuf_r>
d05a0a0c:	9900      	ldr	r1, [sp, #0]
d05a0a0e:	4605      	mov	r5, r0
d05a0a10:	4630      	mov	r0, r6
d05a0a12:	f000 f881 	bl	d05a0b18 <_malloc_r>
d05a0a16:	b948      	cbnz	r0, d05a0a2c <__smakebuf_r+0x44>
d05a0a18:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d05a0a1c:	059a      	lsls	r2, r3, #22
d05a0a1e:	d4ef      	bmi.n	d05a0a00 <__smakebuf_r+0x18>
d05a0a20:	f023 0303 	bic.w	r3, r3, #3
d05a0a24:	f043 0302 	orr.w	r3, r3, #2
d05a0a28:	81a3      	strh	r3, [r4, #12]
d05a0a2a:	e7e3      	b.n	d05a09f4 <__smakebuf_r+0xc>
d05a0a2c:	4b0d      	ldr	r3, [pc, #52]	; (d05a0a64 <__smakebuf_r+0x7c>)
d05a0a2e:	62b3      	str	r3, [r6, #40]	; 0x28
d05a0a30:	89a3      	ldrh	r3, [r4, #12]
d05a0a32:	6020      	str	r0, [r4, #0]
d05a0a34:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d05a0a38:	81a3      	strh	r3, [r4, #12]
d05a0a3a:	9b00      	ldr	r3, [sp, #0]
d05a0a3c:	6163      	str	r3, [r4, #20]
d05a0a3e:	9b01      	ldr	r3, [sp, #4]
d05a0a40:	6120      	str	r0, [r4, #16]
d05a0a42:	b15b      	cbz	r3, d05a0a5c <__smakebuf_r+0x74>
d05a0a44:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d05a0a48:	4630      	mov	r0, r6
d05a0a4a:	f000 f925 	bl	d05a0c98 <_isatty_r>
d05a0a4e:	b128      	cbz	r0, d05a0a5c <__smakebuf_r+0x74>
d05a0a50:	89a3      	ldrh	r3, [r4, #12]
d05a0a52:	f023 0303 	bic.w	r3, r3, #3
d05a0a56:	f043 0301 	orr.w	r3, r3, #1
d05a0a5a:	81a3      	strh	r3, [r4, #12]
d05a0a5c:	89a0      	ldrh	r0, [r4, #12]
d05a0a5e:	4305      	orrs	r5, r0
d05a0a60:	81a5      	strh	r5, [r4, #12]
d05a0a62:	e7cd      	b.n	d05a0a00 <__smakebuf_r+0x18>
d05a0a64:	d05a07f9 	.word	0xd05a07f9

d05a0a68 <malloc>:
d05a0a68:	4b02      	ldr	r3, [pc, #8]	; (d05a0a74 <malloc+0xc>)
d05a0a6a:	4601      	mov	r1, r0
d05a0a6c:	6818      	ldr	r0, [r3, #0]
d05a0a6e:	f000 b853 	b.w	d05a0b18 <_malloc_r>
d05a0a72:	bf00      	nop
d05a0a74:	d05a0da4 	.word	0xd05a0da4

d05a0a78 <_free_r>:
d05a0a78:	b537      	push	{r0, r1, r2, r4, r5, lr}
d05a0a7a:	2900      	cmp	r1, #0
d05a0a7c:	d048      	beq.n	d05a0b10 <_free_r+0x98>
d05a0a7e:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05a0a82:	9001      	str	r0, [sp, #4]
d05a0a84:	2b00      	cmp	r3, #0
d05a0a86:	f1a1 0404 	sub.w	r4, r1, #4
d05a0a8a:	bfb8      	it	lt
d05a0a8c:	18e4      	addlt	r4, r4, r3
d05a0a8e:	f000 f925 	bl	d05a0cdc <__malloc_lock>
d05a0a92:	4a20      	ldr	r2, [pc, #128]	; (d05a0b14 <_free_r+0x9c>)
d05a0a94:	9801      	ldr	r0, [sp, #4]
d05a0a96:	6813      	ldr	r3, [r2, #0]
d05a0a98:	4615      	mov	r5, r2
d05a0a9a:	b933      	cbnz	r3, d05a0aaa <_free_r+0x32>
d05a0a9c:	6063      	str	r3, [r4, #4]
d05a0a9e:	6014      	str	r4, [r2, #0]
d05a0aa0:	b003      	add	sp, #12
d05a0aa2:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d05a0aa6:	f000 b91f 	b.w	d05a0ce8 <__malloc_unlock>
d05a0aaa:	42a3      	cmp	r3, r4
d05a0aac:	d90b      	bls.n	d05a0ac6 <_free_r+0x4e>
d05a0aae:	6821      	ldr	r1, [r4, #0]
d05a0ab0:	1862      	adds	r2, r4, r1
d05a0ab2:	4293      	cmp	r3, r2
d05a0ab4:	bf04      	itt	eq
d05a0ab6:	681a      	ldreq	r2, [r3, #0]
d05a0ab8:	685b      	ldreq	r3, [r3, #4]
d05a0aba:	6063      	str	r3, [r4, #4]
d05a0abc:	bf04      	itt	eq
d05a0abe:	1852      	addeq	r2, r2, r1
d05a0ac0:	6022      	streq	r2, [r4, #0]
d05a0ac2:	602c      	str	r4, [r5, #0]
d05a0ac4:	e7ec      	b.n	d05a0aa0 <_free_r+0x28>
d05a0ac6:	461a      	mov	r2, r3
d05a0ac8:	685b      	ldr	r3, [r3, #4]
d05a0aca:	b10b      	cbz	r3, d05a0ad0 <_free_r+0x58>
d05a0acc:	42a3      	cmp	r3, r4
d05a0ace:	d9fa      	bls.n	d05a0ac6 <_free_r+0x4e>
d05a0ad0:	6811      	ldr	r1, [r2, #0]
d05a0ad2:	1855      	adds	r5, r2, r1
d05a0ad4:	42a5      	cmp	r5, r4
d05a0ad6:	d10b      	bne.n	d05a0af0 <_free_r+0x78>
d05a0ad8:	6824      	ldr	r4, [r4, #0]
d05a0ada:	4421      	add	r1, r4
d05a0adc:	1854      	adds	r4, r2, r1
d05a0ade:	42a3      	cmp	r3, r4
d05a0ae0:	6011      	str	r1, [r2, #0]
d05a0ae2:	d1dd      	bne.n	d05a0aa0 <_free_r+0x28>
d05a0ae4:	681c      	ldr	r4, [r3, #0]
d05a0ae6:	685b      	ldr	r3, [r3, #4]
d05a0ae8:	6053      	str	r3, [r2, #4]
d05a0aea:	4421      	add	r1, r4
d05a0aec:	6011      	str	r1, [r2, #0]
d05a0aee:	e7d7      	b.n	d05a0aa0 <_free_r+0x28>
d05a0af0:	d902      	bls.n	d05a0af8 <_free_r+0x80>
d05a0af2:	230c      	movs	r3, #12
d05a0af4:	6003      	str	r3, [r0, #0]
d05a0af6:	e7d3      	b.n	d05a0aa0 <_free_r+0x28>
d05a0af8:	6825      	ldr	r5, [r4, #0]
d05a0afa:	1961      	adds	r1, r4, r5
d05a0afc:	428b      	cmp	r3, r1
d05a0afe:	bf04      	itt	eq
d05a0b00:	6819      	ldreq	r1, [r3, #0]
d05a0b02:	685b      	ldreq	r3, [r3, #4]
d05a0b04:	6063      	str	r3, [r4, #4]
d05a0b06:	bf04      	itt	eq
d05a0b08:	1949      	addeq	r1, r1, r5
d05a0b0a:	6021      	streq	r1, [r4, #0]
d05a0b0c:	6054      	str	r4, [r2, #4]
d05a0b0e:	e7c7      	b.n	d05a0aa0 <_free_r+0x28>
d05a0b10:	b003      	add	sp, #12
d05a0b12:	bd30      	pop	{r4, r5, pc}
d05a0b14:	d05a0e14 	.word	0xd05a0e14

d05a0b18 <_malloc_r>:
d05a0b18:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a0b1a:	1ccd      	adds	r5, r1, #3
d05a0b1c:	f025 0503 	bic.w	r5, r5, #3
d05a0b20:	3508      	adds	r5, #8
d05a0b22:	2d0c      	cmp	r5, #12
d05a0b24:	bf38      	it	cc
d05a0b26:	250c      	movcc	r5, #12
d05a0b28:	2d00      	cmp	r5, #0
d05a0b2a:	4606      	mov	r6, r0
d05a0b2c:	db01      	blt.n	d05a0b32 <_malloc_r+0x1a>
d05a0b2e:	42a9      	cmp	r1, r5
d05a0b30:	d903      	bls.n	d05a0b3a <_malloc_r+0x22>
d05a0b32:	230c      	movs	r3, #12
d05a0b34:	6033      	str	r3, [r6, #0]
d05a0b36:	2000      	movs	r0, #0
d05a0b38:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a0b3a:	f000 f8cf 	bl	d05a0cdc <__malloc_lock>
d05a0b3e:	4921      	ldr	r1, [pc, #132]	; (d05a0bc4 <_malloc_r+0xac>)
d05a0b40:	680a      	ldr	r2, [r1, #0]
d05a0b42:	4614      	mov	r4, r2
d05a0b44:	b99c      	cbnz	r4, d05a0b6e <_malloc_r+0x56>
d05a0b46:	4f20      	ldr	r7, [pc, #128]	; (d05a0bc8 <_malloc_r+0xb0>)
d05a0b48:	683b      	ldr	r3, [r7, #0]
d05a0b4a:	b923      	cbnz	r3, d05a0b56 <_malloc_r+0x3e>
d05a0b4c:	4621      	mov	r1, r4
d05a0b4e:	4630      	mov	r0, r6
d05a0b50:	f7ff fac6 	bl	d05a00e0 <_sbrk_r>
d05a0b54:	6038      	str	r0, [r7, #0]
d05a0b56:	4629      	mov	r1, r5
d05a0b58:	4630      	mov	r0, r6
d05a0b5a:	f7ff fac1 	bl	d05a00e0 <_sbrk_r>
d05a0b5e:	1c43      	adds	r3, r0, #1
d05a0b60:	d123      	bne.n	d05a0baa <_malloc_r+0x92>
d05a0b62:	230c      	movs	r3, #12
d05a0b64:	6033      	str	r3, [r6, #0]
d05a0b66:	4630      	mov	r0, r6
d05a0b68:	f000 f8be 	bl	d05a0ce8 <__malloc_unlock>
d05a0b6c:	e7e3      	b.n	d05a0b36 <_malloc_r+0x1e>
d05a0b6e:	6823      	ldr	r3, [r4, #0]
d05a0b70:	1b5b      	subs	r3, r3, r5
d05a0b72:	d417      	bmi.n	d05a0ba4 <_malloc_r+0x8c>
d05a0b74:	2b0b      	cmp	r3, #11
d05a0b76:	d903      	bls.n	d05a0b80 <_malloc_r+0x68>
d05a0b78:	6023      	str	r3, [r4, #0]
d05a0b7a:	441c      	add	r4, r3
d05a0b7c:	6025      	str	r5, [r4, #0]
d05a0b7e:	e004      	b.n	d05a0b8a <_malloc_r+0x72>
d05a0b80:	6863      	ldr	r3, [r4, #4]
d05a0b82:	42a2      	cmp	r2, r4
d05a0b84:	bf0c      	ite	eq
d05a0b86:	600b      	streq	r3, [r1, #0]
d05a0b88:	6053      	strne	r3, [r2, #4]
d05a0b8a:	4630      	mov	r0, r6
d05a0b8c:	f000 f8ac 	bl	d05a0ce8 <__malloc_unlock>
d05a0b90:	f104 000b 	add.w	r0, r4, #11
d05a0b94:	1d23      	adds	r3, r4, #4
d05a0b96:	f020 0007 	bic.w	r0, r0, #7
d05a0b9a:	1ac2      	subs	r2, r0, r3
d05a0b9c:	d0cc      	beq.n	d05a0b38 <_malloc_r+0x20>
d05a0b9e:	1a1b      	subs	r3, r3, r0
d05a0ba0:	50a3      	str	r3, [r4, r2]
d05a0ba2:	e7c9      	b.n	d05a0b38 <_malloc_r+0x20>
d05a0ba4:	4622      	mov	r2, r4
d05a0ba6:	6864      	ldr	r4, [r4, #4]
d05a0ba8:	e7cc      	b.n	d05a0b44 <_malloc_r+0x2c>
d05a0baa:	1cc4      	adds	r4, r0, #3
d05a0bac:	f024 0403 	bic.w	r4, r4, #3
d05a0bb0:	42a0      	cmp	r0, r4
d05a0bb2:	d0e3      	beq.n	d05a0b7c <_malloc_r+0x64>
d05a0bb4:	1a21      	subs	r1, r4, r0
d05a0bb6:	4630      	mov	r0, r6
d05a0bb8:	f7ff fa92 	bl	d05a00e0 <_sbrk_r>
d05a0bbc:	3001      	adds	r0, #1
d05a0bbe:	d1dd      	bne.n	d05a0b7c <_malloc_r+0x64>
d05a0bc0:	e7cf      	b.n	d05a0b62 <_malloc_r+0x4a>
d05a0bc2:	bf00      	nop
d05a0bc4:	d05a0e14 	.word	0xd05a0e14
d05a0bc8:	d05a0e18 	.word	0xd05a0e18

d05a0bcc <__sread>:
d05a0bcc:	b510      	push	{r4, lr}
d05a0bce:	460c      	mov	r4, r1
d05a0bd0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a0bd4:	f000 f88e 	bl	d05a0cf4 <_read_r>
d05a0bd8:	2800      	cmp	r0, #0
d05a0bda:	bfab      	itete	ge
d05a0bdc:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d05a0bde:	89a3      	ldrhlt	r3, [r4, #12]
d05a0be0:	181b      	addge	r3, r3, r0
d05a0be2:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d05a0be6:	bfac      	ite	ge
d05a0be8:	6563      	strge	r3, [r4, #84]	; 0x54
d05a0bea:	81a3      	strhlt	r3, [r4, #12]
d05a0bec:	bd10      	pop	{r4, pc}

d05a0bee <__swrite>:
d05a0bee:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d05a0bf2:	461f      	mov	r7, r3
d05a0bf4:	898b      	ldrh	r3, [r1, #12]
d05a0bf6:	05db      	lsls	r3, r3, #23
d05a0bf8:	4605      	mov	r5, r0
d05a0bfa:	460c      	mov	r4, r1
d05a0bfc:	4616      	mov	r6, r2
d05a0bfe:	d505      	bpl.n	d05a0c0c <__swrite+0x1e>
d05a0c00:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a0c04:	2302      	movs	r3, #2
d05a0c06:	2200      	movs	r2, #0
d05a0c08:	f000 f856 	bl	d05a0cb8 <_lseek_r>
d05a0c0c:	89a3      	ldrh	r3, [r4, #12]
d05a0c0e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d05a0c12:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d05a0c16:	81a3      	strh	r3, [r4, #12]
d05a0c18:	4632      	mov	r2, r6
d05a0c1a:	463b      	mov	r3, r7
d05a0c1c:	4628      	mov	r0, r5
d05a0c1e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d05a0c22:	f7ff ba17 	b.w	d05a0054 <_write_r>

d05a0c26 <__sseek>:
d05a0c26:	b510      	push	{r4, lr}
d05a0c28:	460c      	mov	r4, r1
d05a0c2a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a0c2e:	f000 f843 	bl	d05a0cb8 <_lseek_r>
d05a0c32:	1c43      	adds	r3, r0, #1
d05a0c34:	89a3      	ldrh	r3, [r4, #12]
d05a0c36:	bf15      	itete	ne
d05a0c38:	6560      	strne	r0, [r4, #84]	; 0x54
d05a0c3a:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d05a0c3e:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d05a0c42:	81a3      	strheq	r3, [r4, #12]
d05a0c44:	bf18      	it	ne
d05a0c46:	81a3      	strhne	r3, [r4, #12]
d05a0c48:	bd10      	pop	{r4, pc}

d05a0c4a <__sclose>:
d05a0c4a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a0c4e:	f000 b801 	b.w	d05a0c54 <_close_r>
	...

d05a0c54 <_close_r>:
d05a0c54:	b538      	push	{r3, r4, r5, lr}
d05a0c56:	4d06      	ldr	r5, [pc, #24]	; (d05a0c70 <_close_r+0x1c>)
d05a0c58:	2300      	movs	r3, #0
d05a0c5a:	4604      	mov	r4, r0
d05a0c5c:	4608      	mov	r0, r1
d05a0c5e:	602b      	str	r3, [r5, #0]
d05a0c60:	f7ff fa32 	bl	d05a00c8 <_close>
d05a0c64:	1c43      	adds	r3, r0, #1
d05a0c66:	d102      	bne.n	d05a0c6e <_close_r+0x1a>
d05a0c68:	682b      	ldr	r3, [r5, #0]
d05a0c6a:	b103      	cbz	r3, d05a0c6e <_close_r+0x1a>
d05a0c6c:	6023      	str	r3, [r4, #0]
d05a0c6e:	bd38      	pop	{r3, r4, r5, pc}
d05a0c70:	d05a0e2c 	.word	0xd05a0e2c

d05a0c74 <_fstat_r>:
d05a0c74:	b538      	push	{r3, r4, r5, lr}
d05a0c76:	4d07      	ldr	r5, [pc, #28]	; (d05a0c94 <_fstat_r+0x20>)
d05a0c78:	2300      	movs	r3, #0
d05a0c7a:	4604      	mov	r4, r0
d05a0c7c:	4608      	mov	r0, r1
d05a0c7e:	4611      	mov	r1, r2
d05a0c80:	602b      	str	r3, [r5, #0]
d05a0c82:	f7ff fa25 	bl	d05a00d0 <_fstat>
d05a0c86:	1c43      	adds	r3, r0, #1
d05a0c88:	d102      	bne.n	d05a0c90 <_fstat_r+0x1c>
d05a0c8a:	682b      	ldr	r3, [r5, #0]
d05a0c8c:	b103      	cbz	r3, d05a0c90 <_fstat_r+0x1c>
d05a0c8e:	6023      	str	r3, [r4, #0]
d05a0c90:	bd38      	pop	{r3, r4, r5, pc}
d05a0c92:	bf00      	nop
d05a0c94:	d05a0e2c 	.word	0xd05a0e2c

d05a0c98 <_isatty_r>:
d05a0c98:	b538      	push	{r3, r4, r5, lr}
d05a0c9a:	4d06      	ldr	r5, [pc, #24]	; (d05a0cb4 <_isatty_r+0x1c>)
d05a0c9c:	2300      	movs	r3, #0
d05a0c9e:	4604      	mov	r4, r0
d05a0ca0:	4608      	mov	r0, r1
d05a0ca2:	602b      	str	r3, [r5, #0]
d05a0ca4:	f7ff fa3c 	bl	d05a0120 <_isatty>
d05a0ca8:	1c43      	adds	r3, r0, #1
d05a0caa:	d102      	bne.n	d05a0cb2 <_isatty_r+0x1a>
d05a0cac:	682b      	ldr	r3, [r5, #0]
d05a0cae:	b103      	cbz	r3, d05a0cb2 <_isatty_r+0x1a>
d05a0cb0:	6023      	str	r3, [r4, #0]
d05a0cb2:	bd38      	pop	{r3, r4, r5, pc}
d05a0cb4:	d05a0e2c 	.word	0xd05a0e2c

d05a0cb8 <_lseek_r>:
d05a0cb8:	b538      	push	{r3, r4, r5, lr}
d05a0cba:	4d07      	ldr	r5, [pc, #28]	; (d05a0cd8 <_lseek_r+0x20>)
d05a0cbc:	4604      	mov	r4, r0
d05a0cbe:	4608      	mov	r0, r1
d05a0cc0:	4611      	mov	r1, r2
d05a0cc2:	2200      	movs	r2, #0
d05a0cc4:	602a      	str	r2, [r5, #0]
d05a0cc6:	461a      	mov	r2, r3
d05a0cc8:	f7ff fa08 	bl	d05a00dc <_lseek>
d05a0ccc:	1c43      	adds	r3, r0, #1
d05a0cce:	d102      	bne.n	d05a0cd6 <_lseek_r+0x1e>
d05a0cd0:	682b      	ldr	r3, [r5, #0]
d05a0cd2:	b103      	cbz	r3, d05a0cd6 <_lseek_r+0x1e>
d05a0cd4:	6023      	str	r3, [r4, #0]
d05a0cd6:	bd38      	pop	{r3, r4, r5, pc}
d05a0cd8:	d05a0e2c 	.word	0xd05a0e2c

d05a0cdc <__malloc_lock>:
d05a0cdc:	4801      	ldr	r0, [pc, #4]	; (d05a0ce4 <__malloc_lock+0x8>)
d05a0cde:	f7ff be5d 	b.w	d05a099c <__retarget_lock_acquire_recursive>
d05a0ce2:	bf00      	nop
d05a0ce4:	d05a0e24 	.word	0xd05a0e24

d05a0ce8 <__malloc_unlock>:
d05a0ce8:	4801      	ldr	r0, [pc, #4]	; (d05a0cf0 <__malloc_unlock+0x8>)
d05a0cea:	f7ff be58 	b.w	d05a099e <__retarget_lock_release_recursive>
d05a0cee:	bf00      	nop
d05a0cf0:	d05a0e24 	.word	0xd05a0e24

d05a0cf4 <_read_r>:
d05a0cf4:	b538      	push	{r3, r4, r5, lr}
d05a0cf6:	4d07      	ldr	r5, [pc, #28]	; (d05a0d14 <_read_r+0x20>)
d05a0cf8:	4604      	mov	r4, r0
d05a0cfa:	4608      	mov	r0, r1
d05a0cfc:	4611      	mov	r1, r2
d05a0cfe:	2200      	movs	r2, #0
d05a0d00:	602a      	str	r2, [r5, #0]
d05a0d02:	461a      	mov	r2, r3
d05a0d04:	f7ff f9d6 	bl	d05a00b4 <_read>
d05a0d08:	1c43      	adds	r3, r0, #1
d05a0d0a:	d102      	bne.n	d05a0d12 <_read_r+0x1e>
d05a0d0c:	682b      	ldr	r3, [r5, #0]
d05a0d0e:	b103      	cbz	r3, d05a0d12 <_read_r+0x1e>
d05a0d10:	6023      	str	r3, [r4, #0]
d05a0d12:	bd38      	pop	{r3, r4, r5, pc}
d05a0d14:	d05a0e2c 	.word	0xd05a0e2c
d05a0d18:	73696854 	.word	0x73696854
d05a0d1c:	64696420 	.word	0x64696420
d05a0d20:	6d6f7320 	.word	0x6d6f7320
d05a0d24:	69687465 	.word	0x69687465
d05a0d28:	6920676e 	.word	0x6920676e
d05a0d2c:	2061206e 	.word	0x2061206e
d05a0d30:	656d6974 	.word	0x656d6974
d05a0d34:	00212172 	.word	0x00212172

d05a0d38 <_global_impure_ptr>:
d05a0d38:	d05a0da8                                ..Z.

d05a0d3c <__sf_fake_stderr>:
	...

d05a0d5c <__sf_fake_stdin>:
	...

d05a0d7c <__sf_fake_stdout>:
	...

Disassembly of section .init:

d05a0d9c <_init>:
d05a0d9c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a0d9e:	bf00      	nop

Disassembly of section .fini:

d05a0da0 <_fini>:
d05a0da0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a0da2:	bf00      	nop
