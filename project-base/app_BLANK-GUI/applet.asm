
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
d05a001e:	f000 fa6d 	bl	d05a04fc <setbuf>
d05a0022:	6833      	ldr	r3, [r6, #0]
d05a0024:	2100      	movs	r1, #0
d05a0026:	68d8      	ldr	r0, [r3, #12]
d05a0028:	f000 fa68 	bl	d05a04fc <setbuf>
d05a002c:	4629      	mov	r1, r5
d05a002e:	4620      	mov	r0, r4
d05a0030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d05a0034:	f000 b8f2 	b.w	d05a021c <main>
d05a0038:	d05a0fc4 	.word	0xd05a0fc4

d05a003c <_write_r>:
d05a003c:	3901      	subs	r1, #1
d05a003e:	2901      	cmp	r1, #1
d05a0040:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a0042:	d81f      	bhi.n	d05a0084 <_write_r+0x48>
d05a0044:	b1e2      	cbz	r2, d05a0080 <_write_r+0x44>
d05a0046:	461c      	mov	r4, r3
d05a0048:	b1d3      	cbz	r3, d05a0080 <_write_r+0x44>
d05a004a:	4d12      	ldr	r5, [pc, #72]	; (d05a0094 <_write_r+0x58>)
d05a004c:	682e      	ldr	r6, [r5, #0]
d05a004e:	b9ae      	cbnz	r6, d05a007c <_write_r+0x40>
d05a0050:	4f11      	ldr	r7, [pc, #68]	; (d05a0098 <_write_r+0x5c>)
d05a0052:	2301      	movs	r3, #1
d05a0054:	4611      	mov	r1, r2
d05a0056:	4630      	mov	r0, r6
d05a0058:	602b      	str	r3, [r5, #0]
d05a005a:	4622      	mov	r2, r4
d05a005c:	7a3b      	ldrb	r3, [r7, #8]
d05a005e:	f897 c009 	ldrb.w	ip, [r7, #9]
d05a0062:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d05a0066:	f897 c00a 	ldrb.w	ip, [r7, #10]
d05a006a:	7aff      	ldrb	r7, [r7, #11]
d05a006c:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d05a0070:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d05a0074:	681b      	ldr	r3, [r3, #0]
d05a0076:	685b      	ldr	r3, [r3, #4]
d05a0078:	4798      	blx	r3
d05a007a:	602e      	str	r6, [r5, #0]
d05a007c:	4620      	mov	r0, r4
d05a007e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a0080:	2000      	movs	r0, #0
d05a0082:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a0084:	f000 f9b6 	bl	d05a03f4 <__errno>
d05a0088:	2209      	movs	r2, #9
d05a008a:	4603      	mov	r3, r0
d05a008c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a0090:	601a      	str	r2, [r3, #0]
d05a0092:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a0094:	d05a102c 	.word	0xd05a102c
d05a0098:	2001f000 	.word	0x2001f000

d05a009c <_read>:
d05a009c:	b508      	push	{r3, lr}
d05a009e:	f000 f9a9 	bl	d05a03f4 <__errno>
d05a00a2:	2258      	movs	r2, #88	; 0x58
d05a00a4:	4603      	mov	r3, r0
d05a00a6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a00aa:	601a      	str	r2, [r3, #0]
d05a00ac:	bd08      	pop	{r3, pc}
d05a00ae:	bf00      	nop

d05a00b0 <_close>:
d05a00b0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a00b4:	4770      	bx	lr
d05a00b6:	bf00      	nop

d05a00b8 <_fstat>:
d05a00b8:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d05a00bc:	2000      	movs	r0, #0
d05a00be:	604b      	str	r3, [r1, #4]
d05a00c0:	4770      	bx	lr
d05a00c2:	bf00      	nop

d05a00c4 <_lseek>:
d05a00c4:	2000      	movs	r0, #0
d05a00c6:	4770      	bx	lr

d05a00c8 <_sbrk_r>:
d05a00c8:	4b0c      	ldr	r3, [pc, #48]	; (d05a00fc <_sbrk_r+0x34>)
d05a00ca:	4a0d      	ldr	r2, [pc, #52]	; (d05a0100 <_sbrk_r+0x38>)
d05a00cc:	6818      	ldr	r0, [r3, #0]
d05a00ce:	b510      	push	{r4, lr}
d05a00d0:	b918      	cbnz	r0, d05a00da <_sbrk_r+0x12>
d05a00d2:	1dd0      	adds	r0, r2, #7
d05a00d4:	f020 0007 	bic.w	r0, r0, #7
d05a00d8:	6018      	str	r0, [r3, #0]
d05a00da:	4401      	add	r1, r0
d05a00dc:	4c09      	ldr	r4, [pc, #36]	; (d05a0104 <_sbrk_r+0x3c>)
d05a00de:	42a1      	cmp	r1, r4
d05a00e0:	d803      	bhi.n	d05a00ea <_sbrk_r+0x22>
d05a00e2:	4291      	cmp	r1, r2
d05a00e4:	d301      	bcc.n	d05a00ea <_sbrk_r+0x22>
d05a00e6:	6019      	str	r1, [r3, #0]
d05a00e8:	bd10      	pop	{r4, pc}
d05a00ea:	f000 f983 	bl	d05a03f4 <__errno>
d05a00ee:	220c      	movs	r2, #12
d05a00f0:	4603      	mov	r3, r0
d05a00f2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a00f6:	601a      	str	r2, [r3, #0]
d05a00f8:	bd10      	pop	{r4, pc}
d05a00fa:	bf00      	nop
d05a00fc:	d05a1028 	.word	0xd05a1028
d05a0100:	d05a3058 	.word	0xd05a3058
d05a0104:	d0600000 	.word	0xd0600000

d05a0108 <_isatty>:
d05a0108:	2001      	movs	r0, #1
d05a010a:	4770      	bx	lr

d05a010c <on_timer_tick>:
d05a010c:	4b03      	ldr	r3, [pc, #12]	; (d05a011c <on_timer_tick+0x10>)
d05a010e:	781b      	ldrb	r3, [r3, #0]
d05a0110:	b903      	cbnz	r3, d05a0114 <on_timer_tick+0x8>
d05a0112:	4770      	bx	lr
d05a0114:	4802      	ldr	r0, [pc, #8]	; (d05a0120 <on_timer_tick+0x14>)
d05a0116:	f000 b9e9 	b.w	d05a04ec <puts>
d05a011a:	bf00      	nop
d05a011c:	d05a1030 	.word	0xd05a1030
d05a0120:	d05a0f04 	.word	0xd05a0f04

d05a0124 <app_shutdown>:
d05a0124:	b538      	push	{r3, r4, r5, lr}
d05a0126:	4b21      	ldr	r3, [pc, #132]	; (d05a01ac <app_shutdown+0x88>)
d05a0128:	781a      	ldrb	r2, [r3, #0]
d05a012a:	2a00      	cmp	r2, #0
d05a012c:	d03c      	beq.n	d05a01a8 <app_shutdown+0x84>
d05a012e:	4c20      	ldr	r4, [pc, #128]	; (d05a01b0 <app_shutdown+0x8c>)
d05a0130:	2200      	movs	r2, #0
d05a0132:	7820      	ldrb	r0, [r4, #0]
d05a0134:	701a      	strb	r2, [r3, #0]
d05a0136:	28ff      	cmp	r0, #255	; 0xff
d05a0138:	d00f      	beq.n	d05a015a <app_shutdown+0x36>
d05a013a:	4a1e      	ldr	r2, [pc, #120]	; (d05a01b4 <app_shutdown+0x90>)
d05a013c:	7a13      	ldrb	r3, [r2, #8]
d05a013e:	7a55      	ldrb	r5, [r2, #9]
d05a0140:	7a91      	ldrb	r1, [r2, #10]
d05a0142:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05a0146:	7ad2      	ldrb	r2, [r2, #11]
d05a0148:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a014c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a0150:	695b      	ldr	r3, [r3, #20]
d05a0152:	685b      	ldr	r3, [r3, #4]
d05a0154:	4798      	blx	r3
d05a0156:	23ff      	movs	r3, #255	; 0xff
d05a0158:	7023      	strb	r3, [r4, #0]
d05a015a:	4c17      	ldr	r4, [pc, #92]	; (d05a01b8 <app_shutdown+0x94>)
d05a015c:	7820      	ldrb	r0, [r4, #0]
d05a015e:	b178      	cbz	r0, d05a0180 <app_shutdown+0x5c>
d05a0160:	4a14      	ldr	r2, [pc, #80]	; (d05a01b4 <app_shutdown+0x90>)
d05a0162:	7a13      	ldrb	r3, [r2, #8]
d05a0164:	7a55      	ldrb	r5, [r2, #9]
d05a0166:	7a91      	ldrb	r1, [r2, #10]
d05a0168:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05a016c:	7ad2      	ldrb	r2, [r2, #11]
d05a016e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0172:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a0176:	685b      	ldr	r3, [r3, #4]
d05a0178:	685b      	ldr	r3, [r3, #4]
d05a017a:	4798      	blx	r3
d05a017c:	2300      	movs	r3, #0
d05a017e:	7023      	strb	r3, [r4, #0]
d05a0180:	480e      	ldr	r0, [pc, #56]	; (d05a01bc <app_shutdown+0x98>)
d05a0182:	6803      	ldr	r3, [r0, #0]
d05a0184:	b183      	cbz	r3, d05a01a8 <app_shutdown+0x84>
d05a0186:	4a0b      	ldr	r2, [pc, #44]	; (d05a01b4 <app_shutdown+0x90>)
d05a0188:	7a13      	ldrb	r3, [r2, #8]
d05a018a:	7a54      	ldrb	r4, [r2, #9]
d05a018c:	7a91      	ldrb	r1, [r2, #10]
d05a018e:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d05a0192:	7ad2      	ldrb	r2, [r2, #11]
d05a0194:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0198:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a019c:	699b      	ldr	r3, [r3, #24]
d05a019e:	689b      	ldr	r3, [r3, #8]
d05a01a0:	4798      	blx	r3
d05a01a2:	4b07      	ldr	r3, [pc, #28]	; (d05a01c0 <app_shutdown+0x9c>)
d05a01a4:	2200      	movs	r2, #0
d05a01a6:	601a      	str	r2, [r3, #0]
d05a01a8:	bd38      	pop	{r3, r4, r5, pc}
d05a01aa:	bf00      	nop
d05a01ac:	d05a1030 	.word	0xd05a1030
d05a01b0:	d05a0fc0 	.word	0xd05a0fc0
d05a01b4:	2001f000 	.word	0x2001f000
d05a01b8:	d05a103c 	.word	0xd05a103c
d05a01bc:	d05a1034 	.word	0xd05a1034
d05a01c0:	d05a1038 	.word	0xd05a1038

d05a01c4 <testapp_proc>:
d05a01c4:	b321      	cbz	r1, d05a0210 <testapp_proc+0x4c>
d05a01c6:	b508      	push	{r3, lr}
d05a01c8:	680b      	ldr	r3, [r1, #0]
d05a01ca:	2b20      	cmp	r3, #32
d05a01cc:	d015      	beq.n	d05a01fa <testapp_proc+0x36>
d05a01ce:	2b70      	cmp	r3, #112	; 0x70
d05a01d0:	d001      	beq.n	d05a01d6 <testapp_proc+0x12>
d05a01d2:	2000      	movs	r0, #0
d05a01d4:	bd08      	pop	{r3, pc}
d05a01d6:	68cb      	ldr	r3, [r1, #12]
d05a01d8:	f5b3 6f10 	cmp.w	r3, #2304	; 0x900
d05a01dc:	d1f9      	bne.n	d05a01d2 <testapp_proc+0xe>
d05a01de:	4b0d      	ldr	r3, [pc, #52]	; (d05a0214 <testapp_proc+0x50>)
d05a01e0:	690a      	ldr	r2, [r1, #16]
d05a01e2:	681b      	ldr	r3, [r3, #0]
d05a01e4:	429a      	cmp	r2, r3
d05a01e6:	d1f4      	bne.n	d05a01d2 <testapp_proc+0xe>
d05a01e8:	4b0b      	ldr	r3, [pc, #44]	; (d05a0218 <testapp_proc+0x54>)
d05a01ea:	694a      	ldr	r2, [r1, #20]
d05a01ec:	681b      	ldr	r3, [r3, #0]
d05a01ee:	429a      	cmp	r2, r3
d05a01f0:	d1ef      	bne.n	d05a01d2 <testapp_proc+0xe>
d05a01f2:	f7ff ff97 	bl	d05a0124 <app_shutdown>
d05a01f6:	20f0      	movs	r0, #240	; 0xf0
d05a01f8:	bd08      	pop	{r3, pc}
d05a01fa:	68c9      	ldr	r1, [r1, #12]
d05a01fc:	f5b1 5f80 	cmp.w	r1, #4096	; 0x1000
d05a0200:	d0f7      	beq.n	d05a01f2 <testapp_proc+0x2e>
d05a0202:	f248 0004 	movw	r0, #32772	; 0x8004
d05a0206:	4281      	cmp	r1, r0
d05a0208:	bf0c      	ite	eq
d05a020a:	20f0      	moveq	r0, #240	; 0xf0
d05a020c:	2000      	movne	r0, #0
d05a020e:	bd08      	pop	{r3, pc}
d05a0210:	4608      	mov	r0, r1
d05a0212:	4770      	bx	lr
d05a0214:	d05a1034 	.word	0xd05a1034
d05a0218:	d05a1038 	.word	0xd05a1038

d05a021c <main>:
d05a021c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d05a0220:	4b68      	ldr	r3, [pc, #416]	; (d05a03c4 <main+0x1a8>)
d05a0222:	2201      	movs	r2, #1
d05a0224:	4c68      	ldr	r4, [pc, #416]	; (d05a03c8 <main+0x1ac>)
d05a0226:	b084      	sub	sp, #16
d05a0228:	701a      	strb	r2, [r3, #0]
d05a022a:	f240 306d 	movw	r0, #877	; 0x36d
d05a022e:	7a21      	ldrb	r1, [r4, #8]
d05a0230:	27c8      	movs	r7, #200	; 0xc8
d05a0232:	7a65      	ldrb	r5, [r4, #9]
d05a0234:	f44f 7396 	mov.w	r3, #300	; 0x12c
d05a0238:	7aa6      	ldrb	r6, [r4, #10]
d05a023a:	2214      	movs	r2, #20
d05a023c:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
d05a0240:	7ae5      	ldrb	r5, [r4, #11]
d05a0242:	f8df c1a8 	ldr.w	ip, [pc, #424]	; d05a03ec <main+0x1d0>
d05a0246:	ea41 4106 	orr.w	r1, r1, r6, lsl #16
d05a024a:	ea41 6105 	orr.w	r1, r1, r5, lsl #24
d05a024e:	4d5f      	ldr	r5, [pc, #380]	; (d05a03cc <main+0x1b0>)
d05a0250:	684e      	ldr	r6, [r1, #4]
d05a0252:	2118      	movs	r1, #24
d05a0254:	f8cd c004 	str.w	ip, [sp, #4]
d05a0258:	9002      	str	r0, [sp, #8]
d05a025a:	4628      	mov	r0, r5
d05a025c:	9700      	str	r7, [sp, #0]
d05a025e:	6836      	ldr	r6, [r6, #0]
d05a0260:	47b0      	blx	r6
d05a0262:	7a23      	ldrb	r3, [r4, #8]
d05a0264:	7a62      	ldrb	r2, [r4, #9]
d05a0266:	7aa1      	ldrb	r1, [r4, #10]
d05a0268:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a026c:	7ae2      	ldrb	r2, [r4, #11]
d05a026e:	7828      	ldrb	r0, [r5, #0]
d05a0270:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0274:	4956      	ldr	r1, [pc, #344]	; (d05a03d0 <main+0x1b4>)
d05a0276:	4e57      	ldr	r6, [pc, #348]	; (d05a03d4 <main+0x1b8>)
d05a0278:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a027c:	685b      	ldr	r3, [r3, #4]
d05a027e:	689b      	ldr	r3, [r3, #8]
d05a0280:	4798      	blx	r3
d05a0282:	7a23      	ldrb	r3, [r4, #8]
d05a0284:	7a62      	ldrb	r2, [r4, #9]
d05a0286:	7aa1      	ldrb	r1, [r4, #10]
d05a0288:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a028c:	7ae2      	ldrb	r2, [r4, #11]
d05a028e:	7828      	ldrb	r0, [r5, #0]
d05a0290:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0294:	4950      	ldr	r1, [pc, #320]	; (d05a03d8 <main+0x1bc>)
d05a0296:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a029a:	685b      	ldr	r3, [r3, #4]
d05a029c:	699b      	ldr	r3, [r3, #24]
d05a029e:	4798      	blx	r3
d05a02a0:	f8d6 8000 	ldr.w	r8, [r6]
d05a02a4:	f1b8 0f00 	cmp.w	r8, #0
d05a02a8:	d133      	bne.n	d05a0312 <main+0xf6>
d05a02aa:	7a27      	ldrb	r7, [r4, #8]
d05a02ac:	7a60      	ldrb	r0, [r4, #9]
d05a02ae:	7aa2      	ldrb	r2, [r4, #10]
d05a02b0:	ea47 2000 	orr.w	r0, r7, r0, lsl #8
d05a02b4:	7ae3      	ldrb	r3, [r4, #11]
d05a02b6:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d05a02ba:	4848      	ldr	r0, [pc, #288]	; (d05a03dc <main+0x1c0>)
d05a02bc:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a02c0:	699b      	ldr	r3, [r3, #24]
d05a02c2:	681b      	ldr	r3, [r3, #0]
d05a02c4:	4798      	blx	r3
d05a02c6:	6030      	str	r0, [r6, #0]
d05a02c8:	b318      	cbz	r0, d05a0312 <main+0xf6>
d05a02ca:	7a22      	ldrb	r2, [r4, #8]
d05a02cc:	4641      	mov	r1, r8
d05a02ce:	7a63      	ldrb	r3, [r4, #9]
d05a02d0:	4630      	mov	r0, r6
d05a02d2:	7aa7      	ldrb	r7, [r4, #10]
d05a02d4:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d05a02d8:	7ae3      	ldrb	r3, [r4, #11]
d05a02da:	ea42 4707 	orr.w	r7, r2, r7, lsl #16
d05a02de:	4a40      	ldr	r2, [pc, #256]	; (d05a03e0 <main+0x1c4>)
d05a02e0:	ea47 6303 	orr.w	r3, r7, r3, lsl #24
d05a02e4:	699b      	ldr	r3, [r3, #24]
d05a02e6:	685b      	ldr	r3, [r3, #4]
d05a02e8:	4798      	blx	r3
d05a02ea:	4607      	mov	r7, r0
d05a02ec:	7a20      	ldrb	r0, [r4, #8]
d05a02ee:	7a61      	ldrb	r1, [r4, #9]
d05a02f0:	7aa2      	ldrb	r2, [r4, #10]
d05a02f2:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a02f6:	7ae3      	ldrb	r3, [r4, #11]
d05a02f8:	f8df c0f4 	ldr.w	ip, [pc, #244]	; d05a03f0 <main+0x1d4>
d05a02fc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a0300:	6830      	ldr	r0, [r6, #0]
d05a0302:	7829      	ldrb	r1, [r5, #0]
d05a0304:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a0308:	f8cc 7000 	str.w	r7, [ip]
d05a030c:	699b      	ldr	r3, [r3, #24]
d05a030e:	68db      	ldr	r3, [r3, #12]
d05a0310:	4798      	blx	r3
d05a0312:	7a20      	ldrb	r0, [r4, #8]
d05a0314:	7a61      	ldrb	r1, [r4, #9]
d05a0316:	7aa2      	ldrb	r2, [r4, #10]
d05a0318:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a031c:	7ae3      	ldrb	r3, [r4, #11]
d05a031e:	4f31      	ldr	r7, [pc, #196]	; (d05a03e4 <main+0x1c8>)
d05a0320:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a0324:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a0328:	695b      	ldr	r3, [r3, #20]
d05a032a:	681b      	ldr	r3, [r3, #0]
d05a032c:	4798      	blx	r3
d05a032e:	28ff      	cmp	r0, #255	; 0xff
d05a0330:	7038      	strb	r0, [r7, #0]
d05a0332:	d026      	beq.n	d05a0382 <main+0x166>
d05a0334:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a0338:	f04f 0e00 	mov.w	lr, #0
d05a033c:	7a61      	ldrb	r1, [r4, #9]
d05a033e:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
d05a0342:	7aa3      	ldrb	r3, [r4, #10]
d05a0344:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d05a0348:	7ae6      	ldrb	r6, [r4, #11]
d05a034a:	ea41 4303 	orr.w	r3, r1, r3, lsl #16
d05a034e:	4611      	mov	r1, r2
d05a0350:	ea43 6606 	orr.w	r6, r3, r6, lsl #24
d05a0354:	4b24      	ldr	r3, [pc, #144]	; (d05a03e8 <main+0x1cc>)
d05a0356:	6976      	ldr	r6, [r6, #20]
d05a0358:	f8cd e000 	str.w	lr, [sp]
d05a035c:	68b6      	ldr	r6, [r6, #8]
d05a035e:	47b0      	blx	r6
d05a0360:	b178      	cbz	r0, d05a0382 <main+0x166>
d05a0362:	7a20      	ldrb	r0, [r4, #8]
d05a0364:	7a61      	ldrb	r1, [r4, #9]
d05a0366:	7aa2      	ldrb	r2, [r4, #10]
d05a0368:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a036c:	7ae3      	ldrb	r3, [r4, #11]
d05a036e:	7838      	ldrb	r0, [r7, #0]
d05a0370:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a0374:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a0378:	695b      	ldr	r3, [r3, #20]
d05a037a:	685b      	ldr	r3, [r3, #4]
d05a037c:	4798      	blx	r3
d05a037e:	23ff      	movs	r3, #255	; 0xff
d05a0380:	703b      	strb	r3, [r7, #0]
d05a0382:	7a23      	ldrb	r3, [r4, #8]
d05a0384:	7a62      	ldrb	r2, [r4, #9]
d05a0386:	7aa1      	ldrb	r1, [r4, #10]
d05a0388:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a038c:	7ae2      	ldrb	r2, [r4, #11]
d05a038e:	7828      	ldrb	r0, [r5, #0]
d05a0390:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0394:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a0398:	685b      	ldr	r3, [r3, #4]
d05a039a:	68db      	ldr	r3, [r3, #12]
d05a039c:	4798      	blx	r3
d05a039e:	7a23      	ldrb	r3, [r4, #8]
d05a03a0:	7a62      	ldrb	r2, [r4, #9]
d05a03a2:	7aa1      	ldrb	r1, [r4, #10]
d05a03a4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a03a8:	7ae2      	ldrb	r2, [r4, #11]
d05a03aa:	7828      	ldrb	r0, [r5, #0]
d05a03ac:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a03b0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a03b4:	685b      	ldr	r3, [r3, #4]
d05a03b6:	695b      	ldr	r3, [r3, #20]
d05a03b8:	4798      	blx	r3
d05a03ba:	2000      	movs	r0, #0
d05a03bc:	b004      	add	sp, #16
d05a03be:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d05a03c2:	bf00      	nop
d05a03c4:	d05a1030 	.word	0xd05a1030
d05a03c8:	2001f000 	.word	0x2001f000
d05a03cc:	d05a103c 	.word	0xd05a103c
d05a03d0:	d05a01c5 	.word	0xd05a01c5
d05a03d4:	d05a1034 	.word	0xd05a1034
d05a03d8:	d05a0f24 	.word	0xd05a0f24
d05a03dc:	d05a0f34 	.word	0xd05a0f34
d05a03e0:	d05a0f4c 	.word	0xd05a0f4c
d05a03e4:	d05a0fc0 	.word	0xd05a0fc0
d05a03e8:	d05a010d 	.word	0xd05a010d
d05a03ec:	d05a0f14 	.word	0xd05a0f14
d05a03f0:	d05a1038 	.word	0xd05a1038

d05a03f4 <__errno>:
d05a03f4:	4b01      	ldr	r3, [pc, #4]	; (d05a03fc <__errno+0x8>)
d05a03f6:	6818      	ldr	r0, [r3, #0]
d05a03f8:	4770      	bx	lr
d05a03fa:	bf00      	nop
d05a03fc:	d05a0fc4 	.word	0xd05a0fc4

d05a0400 <memset>:
d05a0400:	4402      	add	r2, r0
d05a0402:	4603      	mov	r3, r0
d05a0404:	4293      	cmp	r3, r2
d05a0406:	d100      	bne.n	d05a040a <memset+0xa>
d05a0408:	4770      	bx	lr
d05a040a:	f803 1b01 	strb.w	r1, [r3], #1
d05a040e:	e7f9      	b.n	d05a0404 <memset+0x4>

d05a0410 <_puts_r>:
d05a0410:	b570      	push	{r4, r5, r6, lr}
d05a0412:	460e      	mov	r6, r1
d05a0414:	4605      	mov	r5, r0
d05a0416:	b118      	cbz	r0, d05a0420 <_puts_r+0x10>
d05a0418:	6983      	ldr	r3, [r0, #24]
d05a041a:	b90b      	cbnz	r3, d05a0420 <_puts_r+0x10>
d05a041c:	f000 fb16 	bl	d05a0a4c <__sinit>
d05a0420:	69ab      	ldr	r3, [r5, #24]
d05a0422:	68ac      	ldr	r4, [r5, #8]
d05a0424:	b913      	cbnz	r3, d05a042c <_puts_r+0x1c>
d05a0426:	4628      	mov	r0, r5
d05a0428:	f000 fb10 	bl	d05a0a4c <__sinit>
d05a042c:	4b2c      	ldr	r3, [pc, #176]	; (d05a04e0 <_puts_r+0xd0>)
d05a042e:	429c      	cmp	r4, r3
d05a0430:	d120      	bne.n	d05a0474 <_puts_r+0x64>
d05a0432:	686c      	ldr	r4, [r5, #4]
d05a0434:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05a0436:	07db      	lsls	r3, r3, #31
d05a0438:	d405      	bmi.n	d05a0446 <_puts_r+0x36>
d05a043a:	89a3      	ldrh	r3, [r4, #12]
d05a043c:	0598      	lsls	r0, r3, #22
d05a043e:	d402      	bmi.n	d05a0446 <_puts_r+0x36>
d05a0440:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a0442:	f000 fba1 	bl	d05a0b88 <__retarget_lock_acquire_recursive>
d05a0446:	89a3      	ldrh	r3, [r4, #12]
d05a0448:	0719      	lsls	r1, r3, #28
d05a044a:	d51d      	bpl.n	d05a0488 <_puts_r+0x78>
d05a044c:	6923      	ldr	r3, [r4, #16]
d05a044e:	b1db      	cbz	r3, d05a0488 <_puts_r+0x78>
d05a0450:	3e01      	subs	r6, #1
d05a0452:	68a3      	ldr	r3, [r4, #8]
d05a0454:	f816 1f01 	ldrb.w	r1, [r6, #1]!
d05a0458:	3b01      	subs	r3, #1
d05a045a:	60a3      	str	r3, [r4, #8]
d05a045c:	bb39      	cbnz	r1, d05a04ae <_puts_r+0x9e>
d05a045e:	2b00      	cmp	r3, #0
d05a0460:	da38      	bge.n	d05a04d4 <_puts_r+0xc4>
d05a0462:	4622      	mov	r2, r4
d05a0464:	210a      	movs	r1, #10
d05a0466:	4628      	mov	r0, r5
d05a0468:	f000 f916 	bl	d05a0698 <__swbuf_r>
d05a046c:	3001      	adds	r0, #1
d05a046e:	d011      	beq.n	d05a0494 <_puts_r+0x84>
d05a0470:	250a      	movs	r5, #10
d05a0472:	e011      	b.n	d05a0498 <_puts_r+0x88>
d05a0474:	4b1b      	ldr	r3, [pc, #108]	; (d05a04e4 <_puts_r+0xd4>)
d05a0476:	429c      	cmp	r4, r3
d05a0478:	d101      	bne.n	d05a047e <_puts_r+0x6e>
d05a047a:	68ac      	ldr	r4, [r5, #8]
d05a047c:	e7da      	b.n	d05a0434 <_puts_r+0x24>
d05a047e:	4b1a      	ldr	r3, [pc, #104]	; (d05a04e8 <_puts_r+0xd8>)
d05a0480:	429c      	cmp	r4, r3
d05a0482:	bf08      	it	eq
d05a0484:	68ec      	ldreq	r4, [r5, #12]
d05a0486:	e7d5      	b.n	d05a0434 <_puts_r+0x24>
d05a0488:	4621      	mov	r1, r4
d05a048a:	4628      	mov	r0, r5
d05a048c:	f000 f956 	bl	d05a073c <__swsetup_r>
d05a0490:	2800      	cmp	r0, #0
d05a0492:	d0dd      	beq.n	d05a0450 <_puts_r+0x40>
d05a0494:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05a0498:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05a049a:	07da      	lsls	r2, r3, #31
d05a049c:	d405      	bmi.n	d05a04aa <_puts_r+0x9a>
d05a049e:	89a3      	ldrh	r3, [r4, #12]
d05a04a0:	059b      	lsls	r3, r3, #22
d05a04a2:	d402      	bmi.n	d05a04aa <_puts_r+0x9a>
d05a04a4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a04a6:	f000 fb70 	bl	d05a0b8a <__retarget_lock_release_recursive>
d05a04aa:	4628      	mov	r0, r5
d05a04ac:	bd70      	pop	{r4, r5, r6, pc}
d05a04ae:	2b00      	cmp	r3, #0
d05a04b0:	da04      	bge.n	d05a04bc <_puts_r+0xac>
d05a04b2:	69a2      	ldr	r2, [r4, #24]
d05a04b4:	429a      	cmp	r2, r3
d05a04b6:	dc06      	bgt.n	d05a04c6 <_puts_r+0xb6>
d05a04b8:	290a      	cmp	r1, #10
d05a04ba:	d004      	beq.n	d05a04c6 <_puts_r+0xb6>
d05a04bc:	6823      	ldr	r3, [r4, #0]
d05a04be:	1c5a      	adds	r2, r3, #1
d05a04c0:	6022      	str	r2, [r4, #0]
d05a04c2:	7019      	strb	r1, [r3, #0]
d05a04c4:	e7c5      	b.n	d05a0452 <_puts_r+0x42>
d05a04c6:	4622      	mov	r2, r4
d05a04c8:	4628      	mov	r0, r5
d05a04ca:	f000 f8e5 	bl	d05a0698 <__swbuf_r>
d05a04ce:	3001      	adds	r0, #1
d05a04d0:	d1bf      	bne.n	d05a0452 <_puts_r+0x42>
d05a04d2:	e7df      	b.n	d05a0494 <_puts_r+0x84>
d05a04d4:	6823      	ldr	r3, [r4, #0]
d05a04d6:	250a      	movs	r5, #10
d05a04d8:	1c5a      	adds	r2, r3, #1
d05a04da:	6022      	str	r2, [r4, #0]
d05a04dc:	701d      	strb	r5, [r3, #0]
d05a04de:	e7db      	b.n	d05a0498 <_puts_r+0x88>
d05a04e0:	d05a0f78 	.word	0xd05a0f78
d05a04e4:	d05a0f98 	.word	0xd05a0f98
d05a04e8:	d05a0f58 	.word	0xd05a0f58

d05a04ec <puts>:
d05a04ec:	4b02      	ldr	r3, [pc, #8]	; (d05a04f8 <puts+0xc>)
d05a04ee:	4601      	mov	r1, r0
d05a04f0:	6818      	ldr	r0, [r3, #0]
d05a04f2:	f7ff bf8d 	b.w	d05a0410 <_puts_r>
d05a04f6:	bf00      	nop
d05a04f8:	d05a0fc4 	.word	0xd05a0fc4

d05a04fc <setbuf>:
d05a04fc:	2900      	cmp	r1, #0
d05a04fe:	f44f 6380 	mov.w	r3, #1024	; 0x400
d05a0502:	bf0c      	ite	eq
d05a0504:	2202      	moveq	r2, #2
d05a0506:	2200      	movne	r2, #0
d05a0508:	f000 b800 	b.w	d05a050c <setvbuf>

d05a050c <setvbuf>:
d05a050c:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d05a0510:	461d      	mov	r5, r3
d05a0512:	4b5d      	ldr	r3, [pc, #372]	; (d05a0688 <setvbuf+0x17c>)
d05a0514:	681f      	ldr	r7, [r3, #0]
d05a0516:	4604      	mov	r4, r0
d05a0518:	460e      	mov	r6, r1
d05a051a:	4690      	mov	r8, r2
d05a051c:	b127      	cbz	r7, d05a0528 <setvbuf+0x1c>
d05a051e:	69bb      	ldr	r3, [r7, #24]
d05a0520:	b913      	cbnz	r3, d05a0528 <setvbuf+0x1c>
d05a0522:	4638      	mov	r0, r7
d05a0524:	f000 fa92 	bl	d05a0a4c <__sinit>
d05a0528:	4b58      	ldr	r3, [pc, #352]	; (d05a068c <setvbuf+0x180>)
d05a052a:	429c      	cmp	r4, r3
d05a052c:	d167      	bne.n	d05a05fe <setvbuf+0xf2>
d05a052e:	687c      	ldr	r4, [r7, #4]
d05a0530:	f1b8 0f02 	cmp.w	r8, #2
d05a0534:	d006      	beq.n	d05a0544 <setvbuf+0x38>
d05a0536:	f1b8 0f01 	cmp.w	r8, #1
d05a053a:	f200 809f 	bhi.w	d05a067c <setvbuf+0x170>
d05a053e:	2d00      	cmp	r5, #0
d05a0540:	f2c0 809c 	blt.w	d05a067c <setvbuf+0x170>
d05a0544:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05a0546:	07db      	lsls	r3, r3, #31
d05a0548:	d405      	bmi.n	d05a0556 <setvbuf+0x4a>
d05a054a:	89a3      	ldrh	r3, [r4, #12]
d05a054c:	0598      	lsls	r0, r3, #22
d05a054e:	d402      	bmi.n	d05a0556 <setvbuf+0x4a>
d05a0550:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a0552:	f000 fb19 	bl	d05a0b88 <__retarget_lock_acquire_recursive>
d05a0556:	4621      	mov	r1, r4
d05a0558:	4638      	mov	r0, r7
d05a055a:	f000 f9e3 	bl	d05a0924 <_fflush_r>
d05a055e:	6b61      	ldr	r1, [r4, #52]	; 0x34
d05a0560:	b141      	cbz	r1, d05a0574 <setvbuf+0x68>
d05a0562:	f104 0344 	add.w	r3, r4, #68	; 0x44
d05a0566:	4299      	cmp	r1, r3
d05a0568:	d002      	beq.n	d05a0570 <setvbuf+0x64>
d05a056a:	4638      	mov	r0, r7
d05a056c:	f000 fb7a 	bl	d05a0c64 <_free_r>
d05a0570:	2300      	movs	r3, #0
d05a0572:	6363      	str	r3, [r4, #52]	; 0x34
d05a0574:	2300      	movs	r3, #0
d05a0576:	61a3      	str	r3, [r4, #24]
d05a0578:	6063      	str	r3, [r4, #4]
d05a057a:	89a3      	ldrh	r3, [r4, #12]
d05a057c:	0619      	lsls	r1, r3, #24
d05a057e:	d503      	bpl.n	d05a0588 <setvbuf+0x7c>
d05a0580:	6921      	ldr	r1, [r4, #16]
d05a0582:	4638      	mov	r0, r7
d05a0584:	f000 fb6e 	bl	d05a0c64 <_free_r>
d05a0588:	89a3      	ldrh	r3, [r4, #12]
d05a058a:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d05a058e:	f023 0303 	bic.w	r3, r3, #3
d05a0592:	f1b8 0f02 	cmp.w	r8, #2
d05a0596:	81a3      	strh	r3, [r4, #12]
d05a0598:	d06c      	beq.n	d05a0674 <setvbuf+0x168>
d05a059a:	ab01      	add	r3, sp, #4
d05a059c:	466a      	mov	r2, sp
d05a059e:	4621      	mov	r1, r4
d05a05a0:	4638      	mov	r0, r7
d05a05a2:	f000 faf3 	bl	d05a0b8c <__swhatbuf_r>
d05a05a6:	89a3      	ldrh	r3, [r4, #12]
d05a05a8:	4318      	orrs	r0, r3
d05a05aa:	81a0      	strh	r0, [r4, #12]
d05a05ac:	2d00      	cmp	r5, #0
d05a05ae:	d130      	bne.n	d05a0612 <setvbuf+0x106>
d05a05b0:	9d00      	ldr	r5, [sp, #0]
d05a05b2:	4628      	mov	r0, r5
d05a05b4:	f000 fb4e 	bl	d05a0c54 <malloc>
d05a05b8:	4606      	mov	r6, r0
d05a05ba:	2800      	cmp	r0, #0
d05a05bc:	d155      	bne.n	d05a066a <setvbuf+0x15e>
d05a05be:	f8dd 9000 	ldr.w	r9, [sp]
d05a05c2:	45a9      	cmp	r9, r5
d05a05c4:	d14a      	bne.n	d05a065c <setvbuf+0x150>
d05a05c6:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05a05ca:	2200      	movs	r2, #0
d05a05cc:	60a2      	str	r2, [r4, #8]
d05a05ce:	f104 0247 	add.w	r2, r4, #71	; 0x47
d05a05d2:	6022      	str	r2, [r4, #0]
d05a05d4:	6122      	str	r2, [r4, #16]
d05a05d6:	2201      	movs	r2, #1
d05a05d8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d05a05dc:	6162      	str	r2, [r4, #20]
d05a05de:	6e62      	ldr	r2, [r4, #100]	; 0x64
d05a05e0:	f043 0302 	orr.w	r3, r3, #2
d05a05e4:	07d2      	lsls	r2, r2, #31
d05a05e6:	81a3      	strh	r3, [r4, #12]
d05a05e8:	d405      	bmi.n	d05a05f6 <setvbuf+0xea>
d05a05ea:	f413 7f00 	tst.w	r3, #512	; 0x200
d05a05ee:	d102      	bne.n	d05a05f6 <setvbuf+0xea>
d05a05f0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a05f2:	f000 faca 	bl	d05a0b8a <__retarget_lock_release_recursive>
d05a05f6:	4628      	mov	r0, r5
d05a05f8:	b003      	add	sp, #12
d05a05fa:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d05a05fe:	4b24      	ldr	r3, [pc, #144]	; (d05a0690 <setvbuf+0x184>)
d05a0600:	429c      	cmp	r4, r3
d05a0602:	d101      	bne.n	d05a0608 <setvbuf+0xfc>
d05a0604:	68bc      	ldr	r4, [r7, #8]
d05a0606:	e793      	b.n	d05a0530 <setvbuf+0x24>
d05a0608:	4b22      	ldr	r3, [pc, #136]	; (d05a0694 <setvbuf+0x188>)
d05a060a:	429c      	cmp	r4, r3
d05a060c:	bf08      	it	eq
d05a060e:	68fc      	ldreq	r4, [r7, #12]
d05a0610:	e78e      	b.n	d05a0530 <setvbuf+0x24>
d05a0612:	2e00      	cmp	r6, #0
d05a0614:	d0cd      	beq.n	d05a05b2 <setvbuf+0xa6>
d05a0616:	69bb      	ldr	r3, [r7, #24]
d05a0618:	b913      	cbnz	r3, d05a0620 <setvbuf+0x114>
d05a061a:	4638      	mov	r0, r7
d05a061c:	f000 fa16 	bl	d05a0a4c <__sinit>
d05a0620:	f1b8 0f01 	cmp.w	r8, #1
d05a0624:	bf08      	it	eq
d05a0626:	89a3      	ldrheq	r3, [r4, #12]
d05a0628:	6026      	str	r6, [r4, #0]
d05a062a:	bf04      	itt	eq
d05a062c:	f043 0301 	orreq.w	r3, r3, #1
d05a0630:	81a3      	strheq	r3, [r4, #12]
d05a0632:	89a2      	ldrh	r2, [r4, #12]
d05a0634:	f012 0308 	ands.w	r3, r2, #8
d05a0638:	e9c4 6504 	strd	r6, r5, [r4, #16]
d05a063c:	d01c      	beq.n	d05a0678 <setvbuf+0x16c>
d05a063e:	07d3      	lsls	r3, r2, #31
d05a0640:	bf41      	itttt	mi
d05a0642:	2300      	movmi	r3, #0
d05a0644:	426d      	negmi	r5, r5
d05a0646:	60a3      	strmi	r3, [r4, #8]
d05a0648:	61a5      	strmi	r5, [r4, #24]
d05a064a:	bf58      	it	pl
d05a064c:	60a5      	strpl	r5, [r4, #8]
d05a064e:	6e65      	ldr	r5, [r4, #100]	; 0x64
d05a0650:	f015 0501 	ands.w	r5, r5, #1
d05a0654:	d115      	bne.n	d05a0682 <setvbuf+0x176>
d05a0656:	f412 7f00 	tst.w	r2, #512	; 0x200
d05a065a:	e7c8      	b.n	d05a05ee <setvbuf+0xe2>
d05a065c:	4648      	mov	r0, r9
d05a065e:	f000 faf9 	bl	d05a0c54 <malloc>
d05a0662:	4606      	mov	r6, r0
d05a0664:	2800      	cmp	r0, #0
d05a0666:	d0ae      	beq.n	d05a05c6 <setvbuf+0xba>
d05a0668:	464d      	mov	r5, r9
d05a066a:	89a3      	ldrh	r3, [r4, #12]
d05a066c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d05a0670:	81a3      	strh	r3, [r4, #12]
d05a0672:	e7d0      	b.n	d05a0616 <setvbuf+0x10a>
d05a0674:	2500      	movs	r5, #0
d05a0676:	e7a8      	b.n	d05a05ca <setvbuf+0xbe>
d05a0678:	60a3      	str	r3, [r4, #8]
d05a067a:	e7e8      	b.n	d05a064e <setvbuf+0x142>
d05a067c:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05a0680:	e7b9      	b.n	d05a05f6 <setvbuf+0xea>
d05a0682:	2500      	movs	r5, #0
d05a0684:	e7b7      	b.n	d05a05f6 <setvbuf+0xea>
d05a0686:	bf00      	nop
d05a0688:	d05a0fc4 	.word	0xd05a0fc4
d05a068c:	d05a0f78 	.word	0xd05a0f78
d05a0690:	d05a0f98 	.word	0xd05a0f98
d05a0694:	d05a0f58 	.word	0xd05a0f58

d05a0698 <__swbuf_r>:
d05a0698:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a069a:	460e      	mov	r6, r1
d05a069c:	4614      	mov	r4, r2
d05a069e:	4605      	mov	r5, r0
d05a06a0:	b118      	cbz	r0, d05a06aa <__swbuf_r+0x12>
d05a06a2:	6983      	ldr	r3, [r0, #24]
d05a06a4:	b90b      	cbnz	r3, d05a06aa <__swbuf_r+0x12>
d05a06a6:	f000 f9d1 	bl	d05a0a4c <__sinit>
d05a06aa:	4b21      	ldr	r3, [pc, #132]	; (d05a0730 <__swbuf_r+0x98>)
d05a06ac:	429c      	cmp	r4, r3
d05a06ae:	d12b      	bne.n	d05a0708 <__swbuf_r+0x70>
d05a06b0:	686c      	ldr	r4, [r5, #4]
d05a06b2:	69a3      	ldr	r3, [r4, #24]
d05a06b4:	60a3      	str	r3, [r4, #8]
d05a06b6:	89a3      	ldrh	r3, [r4, #12]
d05a06b8:	071a      	lsls	r2, r3, #28
d05a06ba:	d52f      	bpl.n	d05a071c <__swbuf_r+0x84>
d05a06bc:	6923      	ldr	r3, [r4, #16]
d05a06be:	b36b      	cbz	r3, d05a071c <__swbuf_r+0x84>
d05a06c0:	6923      	ldr	r3, [r4, #16]
d05a06c2:	6820      	ldr	r0, [r4, #0]
d05a06c4:	1ac0      	subs	r0, r0, r3
d05a06c6:	6963      	ldr	r3, [r4, #20]
d05a06c8:	b2f6      	uxtb	r6, r6
d05a06ca:	4283      	cmp	r3, r0
d05a06cc:	4637      	mov	r7, r6
d05a06ce:	dc04      	bgt.n	d05a06da <__swbuf_r+0x42>
d05a06d0:	4621      	mov	r1, r4
d05a06d2:	4628      	mov	r0, r5
d05a06d4:	f000 f926 	bl	d05a0924 <_fflush_r>
d05a06d8:	bb30      	cbnz	r0, d05a0728 <__swbuf_r+0x90>
d05a06da:	68a3      	ldr	r3, [r4, #8]
d05a06dc:	3b01      	subs	r3, #1
d05a06de:	60a3      	str	r3, [r4, #8]
d05a06e0:	6823      	ldr	r3, [r4, #0]
d05a06e2:	1c5a      	adds	r2, r3, #1
d05a06e4:	6022      	str	r2, [r4, #0]
d05a06e6:	701e      	strb	r6, [r3, #0]
d05a06e8:	6963      	ldr	r3, [r4, #20]
d05a06ea:	3001      	adds	r0, #1
d05a06ec:	4283      	cmp	r3, r0
d05a06ee:	d004      	beq.n	d05a06fa <__swbuf_r+0x62>
d05a06f0:	89a3      	ldrh	r3, [r4, #12]
d05a06f2:	07db      	lsls	r3, r3, #31
d05a06f4:	d506      	bpl.n	d05a0704 <__swbuf_r+0x6c>
d05a06f6:	2e0a      	cmp	r6, #10
d05a06f8:	d104      	bne.n	d05a0704 <__swbuf_r+0x6c>
d05a06fa:	4621      	mov	r1, r4
d05a06fc:	4628      	mov	r0, r5
d05a06fe:	f000 f911 	bl	d05a0924 <_fflush_r>
d05a0702:	b988      	cbnz	r0, d05a0728 <__swbuf_r+0x90>
d05a0704:	4638      	mov	r0, r7
d05a0706:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a0708:	4b0a      	ldr	r3, [pc, #40]	; (d05a0734 <__swbuf_r+0x9c>)
d05a070a:	429c      	cmp	r4, r3
d05a070c:	d101      	bne.n	d05a0712 <__swbuf_r+0x7a>
d05a070e:	68ac      	ldr	r4, [r5, #8]
d05a0710:	e7cf      	b.n	d05a06b2 <__swbuf_r+0x1a>
d05a0712:	4b09      	ldr	r3, [pc, #36]	; (d05a0738 <__swbuf_r+0xa0>)
d05a0714:	429c      	cmp	r4, r3
d05a0716:	bf08      	it	eq
d05a0718:	68ec      	ldreq	r4, [r5, #12]
d05a071a:	e7ca      	b.n	d05a06b2 <__swbuf_r+0x1a>
d05a071c:	4621      	mov	r1, r4
d05a071e:	4628      	mov	r0, r5
d05a0720:	f000 f80c 	bl	d05a073c <__swsetup_r>
d05a0724:	2800      	cmp	r0, #0
d05a0726:	d0cb      	beq.n	d05a06c0 <__swbuf_r+0x28>
d05a0728:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d05a072c:	e7ea      	b.n	d05a0704 <__swbuf_r+0x6c>
d05a072e:	bf00      	nop
d05a0730:	d05a0f78 	.word	0xd05a0f78
d05a0734:	d05a0f98 	.word	0xd05a0f98
d05a0738:	d05a0f58 	.word	0xd05a0f58

d05a073c <__swsetup_r>:
d05a073c:	4b32      	ldr	r3, [pc, #200]	; (d05a0808 <__swsetup_r+0xcc>)
d05a073e:	b570      	push	{r4, r5, r6, lr}
d05a0740:	681d      	ldr	r5, [r3, #0]
d05a0742:	4606      	mov	r6, r0
d05a0744:	460c      	mov	r4, r1
d05a0746:	b125      	cbz	r5, d05a0752 <__swsetup_r+0x16>
d05a0748:	69ab      	ldr	r3, [r5, #24]
d05a074a:	b913      	cbnz	r3, d05a0752 <__swsetup_r+0x16>
d05a074c:	4628      	mov	r0, r5
d05a074e:	f000 f97d 	bl	d05a0a4c <__sinit>
d05a0752:	4b2e      	ldr	r3, [pc, #184]	; (d05a080c <__swsetup_r+0xd0>)
d05a0754:	429c      	cmp	r4, r3
d05a0756:	d10f      	bne.n	d05a0778 <__swsetup_r+0x3c>
d05a0758:	686c      	ldr	r4, [r5, #4]
d05a075a:	89a3      	ldrh	r3, [r4, #12]
d05a075c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d05a0760:	0719      	lsls	r1, r3, #28
d05a0762:	d42c      	bmi.n	d05a07be <__swsetup_r+0x82>
d05a0764:	06dd      	lsls	r5, r3, #27
d05a0766:	d411      	bmi.n	d05a078c <__swsetup_r+0x50>
d05a0768:	2309      	movs	r3, #9
d05a076a:	6033      	str	r3, [r6, #0]
d05a076c:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d05a0770:	81a3      	strh	r3, [r4, #12]
d05a0772:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a0776:	e03e      	b.n	d05a07f6 <__swsetup_r+0xba>
d05a0778:	4b25      	ldr	r3, [pc, #148]	; (d05a0810 <__swsetup_r+0xd4>)
d05a077a:	429c      	cmp	r4, r3
d05a077c:	d101      	bne.n	d05a0782 <__swsetup_r+0x46>
d05a077e:	68ac      	ldr	r4, [r5, #8]
d05a0780:	e7eb      	b.n	d05a075a <__swsetup_r+0x1e>
d05a0782:	4b24      	ldr	r3, [pc, #144]	; (d05a0814 <__swsetup_r+0xd8>)
d05a0784:	429c      	cmp	r4, r3
d05a0786:	bf08      	it	eq
d05a0788:	68ec      	ldreq	r4, [r5, #12]
d05a078a:	e7e6      	b.n	d05a075a <__swsetup_r+0x1e>
d05a078c:	0758      	lsls	r0, r3, #29
d05a078e:	d512      	bpl.n	d05a07b6 <__swsetup_r+0x7a>
d05a0790:	6b61      	ldr	r1, [r4, #52]	; 0x34
d05a0792:	b141      	cbz	r1, d05a07a6 <__swsetup_r+0x6a>
d05a0794:	f104 0344 	add.w	r3, r4, #68	; 0x44
d05a0798:	4299      	cmp	r1, r3
d05a079a:	d002      	beq.n	d05a07a2 <__swsetup_r+0x66>
d05a079c:	4630      	mov	r0, r6
d05a079e:	f000 fa61 	bl	d05a0c64 <_free_r>
d05a07a2:	2300      	movs	r3, #0
d05a07a4:	6363      	str	r3, [r4, #52]	; 0x34
d05a07a6:	89a3      	ldrh	r3, [r4, #12]
d05a07a8:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d05a07ac:	81a3      	strh	r3, [r4, #12]
d05a07ae:	2300      	movs	r3, #0
d05a07b0:	6063      	str	r3, [r4, #4]
d05a07b2:	6923      	ldr	r3, [r4, #16]
d05a07b4:	6023      	str	r3, [r4, #0]
d05a07b6:	89a3      	ldrh	r3, [r4, #12]
d05a07b8:	f043 0308 	orr.w	r3, r3, #8
d05a07bc:	81a3      	strh	r3, [r4, #12]
d05a07be:	6923      	ldr	r3, [r4, #16]
d05a07c0:	b94b      	cbnz	r3, d05a07d6 <__swsetup_r+0x9a>
d05a07c2:	89a3      	ldrh	r3, [r4, #12]
d05a07c4:	f403 7320 	and.w	r3, r3, #640	; 0x280
d05a07c8:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d05a07cc:	d003      	beq.n	d05a07d6 <__swsetup_r+0x9a>
d05a07ce:	4621      	mov	r1, r4
d05a07d0:	4630      	mov	r0, r6
d05a07d2:	f000 f9ff 	bl	d05a0bd4 <__smakebuf_r>
d05a07d6:	89a0      	ldrh	r0, [r4, #12]
d05a07d8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d05a07dc:	f010 0301 	ands.w	r3, r0, #1
d05a07e0:	d00a      	beq.n	d05a07f8 <__swsetup_r+0xbc>
d05a07e2:	2300      	movs	r3, #0
d05a07e4:	60a3      	str	r3, [r4, #8]
d05a07e6:	6963      	ldr	r3, [r4, #20]
d05a07e8:	425b      	negs	r3, r3
d05a07ea:	61a3      	str	r3, [r4, #24]
d05a07ec:	6923      	ldr	r3, [r4, #16]
d05a07ee:	b943      	cbnz	r3, d05a0802 <__swsetup_r+0xc6>
d05a07f0:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d05a07f4:	d1ba      	bne.n	d05a076c <__swsetup_r+0x30>
d05a07f6:	bd70      	pop	{r4, r5, r6, pc}
d05a07f8:	0781      	lsls	r1, r0, #30
d05a07fa:	bf58      	it	pl
d05a07fc:	6963      	ldrpl	r3, [r4, #20]
d05a07fe:	60a3      	str	r3, [r4, #8]
d05a0800:	e7f4      	b.n	d05a07ec <__swsetup_r+0xb0>
d05a0802:	2000      	movs	r0, #0
d05a0804:	e7f7      	b.n	d05a07f6 <__swsetup_r+0xba>
d05a0806:	bf00      	nop
d05a0808:	d05a0fc4 	.word	0xd05a0fc4
d05a080c:	d05a0f78 	.word	0xd05a0f78
d05a0810:	d05a0f98 	.word	0xd05a0f98
d05a0814:	d05a0f58 	.word	0xd05a0f58

d05a0818 <__sflush_r>:
d05a0818:	898a      	ldrh	r2, [r1, #12]
d05a081a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d05a081e:	4605      	mov	r5, r0
d05a0820:	0710      	lsls	r0, r2, #28
d05a0822:	460c      	mov	r4, r1
d05a0824:	d458      	bmi.n	d05a08d8 <__sflush_r+0xc0>
d05a0826:	684b      	ldr	r3, [r1, #4]
d05a0828:	2b00      	cmp	r3, #0
d05a082a:	dc05      	bgt.n	d05a0838 <__sflush_r+0x20>
d05a082c:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d05a082e:	2b00      	cmp	r3, #0
d05a0830:	dc02      	bgt.n	d05a0838 <__sflush_r+0x20>
d05a0832:	2000      	movs	r0, #0
d05a0834:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d05a0838:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d05a083a:	2e00      	cmp	r6, #0
d05a083c:	d0f9      	beq.n	d05a0832 <__sflush_r+0x1a>
d05a083e:	2300      	movs	r3, #0
d05a0840:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d05a0844:	682f      	ldr	r7, [r5, #0]
d05a0846:	602b      	str	r3, [r5, #0]
d05a0848:	d032      	beq.n	d05a08b0 <__sflush_r+0x98>
d05a084a:	6d60      	ldr	r0, [r4, #84]	; 0x54
d05a084c:	89a3      	ldrh	r3, [r4, #12]
d05a084e:	075a      	lsls	r2, r3, #29
d05a0850:	d505      	bpl.n	d05a085e <__sflush_r+0x46>
d05a0852:	6863      	ldr	r3, [r4, #4]
d05a0854:	1ac0      	subs	r0, r0, r3
d05a0856:	6b63      	ldr	r3, [r4, #52]	; 0x34
d05a0858:	b10b      	cbz	r3, d05a085e <__sflush_r+0x46>
d05a085a:	6c23      	ldr	r3, [r4, #64]	; 0x40
d05a085c:	1ac0      	subs	r0, r0, r3
d05a085e:	2300      	movs	r3, #0
d05a0860:	4602      	mov	r2, r0
d05a0862:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d05a0864:	6a21      	ldr	r1, [r4, #32]
d05a0866:	4628      	mov	r0, r5
d05a0868:	47b0      	blx	r6
d05a086a:	1c43      	adds	r3, r0, #1
d05a086c:	89a3      	ldrh	r3, [r4, #12]
d05a086e:	d106      	bne.n	d05a087e <__sflush_r+0x66>
d05a0870:	6829      	ldr	r1, [r5, #0]
d05a0872:	291d      	cmp	r1, #29
d05a0874:	d82c      	bhi.n	d05a08d0 <__sflush_r+0xb8>
d05a0876:	4a2a      	ldr	r2, [pc, #168]	; (d05a0920 <__sflush_r+0x108>)
d05a0878:	40ca      	lsrs	r2, r1
d05a087a:	07d6      	lsls	r6, r2, #31
d05a087c:	d528      	bpl.n	d05a08d0 <__sflush_r+0xb8>
d05a087e:	2200      	movs	r2, #0
d05a0880:	6062      	str	r2, [r4, #4]
d05a0882:	04d9      	lsls	r1, r3, #19
d05a0884:	6922      	ldr	r2, [r4, #16]
d05a0886:	6022      	str	r2, [r4, #0]
d05a0888:	d504      	bpl.n	d05a0894 <__sflush_r+0x7c>
d05a088a:	1c42      	adds	r2, r0, #1
d05a088c:	d101      	bne.n	d05a0892 <__sflush_r+0x7a>
d05a088e:	682b      	ldr	r3, [r5, #0]
d05a0890:	b903      	cbnz	r3, d05a0894 <__sflush_r+0x7c>
d05a0892:	6560      	str	r0, [r4, #84]	; 0x54
d05a0894:	6b61      	ldr	r1, [r4, #52]	; 0x34
d05a0896:	602f      	str	r7, [r5, #0]
d05a0898:	2900      	cmp	r1, #0
d05a089a:	d0ca      	beq.n	d05a0832 <__sflush_r+0x1a>
d05a089c:	f104 0344 	add.w	r3, r4, #68	; 0x44
d05a08a0:	4299      	cmp	r1, r3
d05a08a2:	d002      	beq.n	d05a08aa <__sflush_r+0x92>
d05a08a4:	4628      	mov	r0, r5
d05a08a6:	f000 f9dd 	bl	d05a0c64 <_free_r>
d05a08aa:	2000      	movs	r0, #0
d05a08ac:	6360      	str	r0, [r4, #52]	; 0x34
d05a08ae:	e7c1      	b.n	d05a0834 <__sflush_r+0x1c>
d05a08b0:	6a21      	ldr	r1, [r4, #32]
d05a08b2:	2301      	movs	r3, #1
d05a08b4:	4628      	mov	r0, r5
d05a08b6:	47b0      	blx	r6
d05a08b8:	1c41      	adds	r1, r0, #1
d05a08ba:	d1c7      	bne.n	d05a084c <__sflush_r+0x34>
d05a08bc:	682b      	ldr	r3, [r5, #0]
d05a08be:	2b00      	cmp	r3, #0
d05a08c0:	d0c4      	beq.n	d05a084c <__sflush_r+0x34>
d05a08c2:	2b1d      	cmp	r3, #29
d05a08c4:	d001      	beq.n	d05a08ca <__sflush_r+0xb2>
d05a08c6:	2b16      	cmp	r3, #22
d05a08c8:	d101      	bne.n	d05a08ce <__sflush_r+0xb6>
d05a08ca:	602f      	str	r7, [r5, #0]
d05a08cc:	e7b1      	b.n	d05a0832 <__sflush_r+0x1a>
d05a08ce:	89a3      	ldrh	r3, [r4, #12]
d05a08d0:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05a08d4:	81a3      	strh	r3, [r4, #12]
d05a08d6:	e7ad      	b.n	d05a0834 <__sflush_r+0x1c>
d05a08d8:	690f      	ldr	r7, [r1, #16]
d05a08da:	2f00      	cmp	r7, #0
d05a08dc:	d0a9      	beq.n	d05a0832 <__sflush_r+0x1a>
d05a08de:	0793      	lsls	r3, r2, #30
d05a08e0:	680e      	ldr	r6, [r1, #0]
d05a08e2:	bf08      	it	eq
d05a08e4:	694b      	ldreq	r3, [r1, #20]
d05a08e6:	600f      	str	r7, [r1, #0]
d05a08e8:	bf18      	it	ne
d05a08ea:	2300      	movne	r3, #0
d05a08ec:	eba6 0807 	sub.w	r8, r6, r7
d05a08f0:	608b      	str	r3, [r1, #8]
d05a08f2:	f1b8 0f00 	cmp.w	r8, #0
d05a08f6:	dd9c      	ble.n	d05a0832 <__sflush_r+0x1a>
d05a08f8:	6a21      	ldr	r1, [r4, #32]
d05a08fa:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d05a08fc:	4643      	mov	r3, r8
d05a08fe:	463a      	mov	r2, r7
d05a0900:	4628      	mov	r0, r5
d05a0902:	47b0      	blx	r6
d05a0904:	2800      	cmp	r0, #0
d05a0906:	dc06      	bgt.n	d05a0916 <__sflush_r+0xfe>
d05a0908:	89a3      	ldrh	r3, [r4, #12]
d05a090a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05a090e:	81a3      	strh	r3, [r4, #12]
d05a0910:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a0914:	e78e      	b.n	d05a0834 <__sflush_r+0x1c>
d05a0916:	4407      	add	r7, r0
d05a0918:	eba8 0800 	sub.w	r8, r8, r0
d05a091c:	e7e9      	b.n	d05a08f2 <__sflush_r+0xda>
d05a091e:	bf00      	nop
d05a0920:	20400001 	.word	0x20400001

d05a0924 <_fflush_r>:
d05a0924:	b538      	push	{r3, r4, r5, lr}
d05a0926:	690b      	ldr	r3, [r1, #16]
d05a0928:	4605      	mov	r5, r0
d05a092a:	460c      	mov	r4, r1
d05a092c:	b913      	cbnz	r3, d05a0934 <_fflush_r+0x10>
d05a092e:	2500      	movs	r5, #0
d05a0930:	4628      	mov	r0, r5
d05a0932:	bd38      	pop	{r3, r4, r5, pc}
d05a0934:	b118      	cbz	r0, d05a093e <_fflush_r+0x1a>
d05a0936:	6983      	ldr	r3, [r0, #24]
d05a0938:	b90b      	cbnz	r3, d05a093e <_fflush_r+0x1a>
d05a093a:	f000 f887 	bl	d05a0a4c <__sinit>
d05a093e:	4b14      	ldr	r3, [pc, #80]	; (d05a0990 <_fflush_r+0x6c>)
d05a0940:	429c      	cmp	r4, r3
d05a0942:	d11b      	bne.n	d05a097c <_fflush_r+0x58>
d05a0944:	686c      	ldr	r4, [r5, #4]
d05a0946:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d05a094a:	2b00      	cmp	r3, #0
d05a094c:	d0ef      	beq.n	d05a092e <_fflush_r+0xa>
d05a094e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d05a0950:	07d0      	lsls	r0, r2, #31
d05a0952:	d404      	bmi.n	d05a095e <_fflush_r+0x3a>
d05a0954:	0599      	lsls	r1, r3, #22
d05a0956:	d402      	bmi.n	d05a095e <_fflush_r+0x3a>
d05a0958:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a095a:	f000 f915 	bl	d05a0b88 <__retarget_lock_acquire_recursive>
d05a095e:	4628      	mov	r0, r5
d05a0960:	4621      	mov	r1, r4
d05a0962:	f7ff ff59 	bl	d05a0818 <__sflush_r>
d05a0966:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05a0968:	07da      	lsls	r2, r3, #31
d05a096a:	4605      	mov	r5, r0
d05a096c:	d4e0      	bmi.n	d05a0930 <_fflush_r+0xc>
d05a096e:	89a3      	ldrh	r3, [r4, #12]
d05a0970:	059b      	lsls	r3, r3, #22
d05a0972:	d4dd      	bmi.n	d05a0930 <_fflush_r+0xc>
d05a0974:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a0976:	f000 f908 	bl	d05a0b8a <__retarget_lock_release_recursive>
d05a097a:	e7d9      	b.n	d05a0930 <_fflush_r+0xc>
d05a097c:	4b05      	ldr	r3, [pc, #20]	; (d05a0994 <_fflush_r+0x70>)
d05a097e:	429c      	cmp	r4, r3
d05a0980:	d101      	bne.n	d05a0986 <_fflush_r+0x62>
d05a0982:	68ac      	ldr	r4, [r5, #8]
d05a0984:	e7df      	b.n	d05a0946 <_fflush_r+0x22>
d05a0986:	4b04      	ldr	r3, [pc, #16]	; (d05a0998 <_fflush_r+0x74>)
d05a0988:	429c      	cmp	r4, r3
d05a098a:	bf08      	it	eq
d05a098c:	68ec      	ldreq	r4, [r5, #12]
d05a098e:	e7da      	b.n	d05a0946 <_fflush_r+0x22>
d05a0990:	d05a0f78 	.word	0xd05a0f78
d05a0994:	d05a0f98 	.word	0xd05a0f98
d05a0998:	d05a0f58 	.word	0xd05a0f58

d05a099c <std>:
d05a099c:	2300      	movs	r3, #0
d05a099e:	b510      	push	{r4, lr}
d05a09a0:	4604      	mov	r4, r0
d05a09a2:	e9c0 3300 	strd	r3, r3, [r0]
d05a09a6:	e9c0 3304 	strd	r3, r3, [r0, #16]
d05a09aa:	6083      	str	r3, [r0, #8]
d05a09ac:	8181      	strh	r1, [r0, #12]
d05a09ae:	6643      	str	r3, [r0, #100]	; 0x64
d05a09b0:	81c2      	strh	r2, [r0, #14]
d05a09b2:	6183      	str	r3, [r0, #24]
d05a09b4:	4619      	mov	r1, r3
d05a09b6:	2208      	movs	r2, #8
d05a09b8:	305c      	adds	r0, #92	; 0x5c
d05a09ba:	f7ff fd21 	bl	d05a0400 <memset>
d05a09be:	4b05      	ldr	r3, [pc, #20]	; (d05a09d4 <std+0x38>)
d05a09c0:	6263      	str	r3, [r4, #36]	; 0x24
d05a09c2:	4b05      	ldr	r3, [pc, #20]	; (d05a09d8 <std+0x3c>)
d05a09c4:	62a3      	str	r3, [r4, #40]	; 0x28
d05a09c6:	4b05      	ldr	r3, [pc, #20]	; (d05a09dc <std+0x40>)
d05a09c8:	62e3      	str	r3, [r4, #44]	; 0x2c
d05a09ca:	4b05      	ldr	r3, [pc, #20]	; (d05a09e0 <std+0x44>)
d05a09cc:	6224      	str	r4, [r4, #32]
d05a09ce:	6323      	str	r3, [r4, #48]	; 0x30
d05a09d0:	bd10      	pop	{r4, pc}
d05a09d2:	bf00      	nop
d05a09d4:	d05a0db9 	.word	0xd05a0db9
d05a09d8:	d05a0ddb 	.word	0xd05a0ddb
d05a09dc:	d05a0e13 	.word	0xd05a0e13
d05a09e0:	d05a0e37 	.word	0xd05a0e37

d05a09e4 <_cleanup_r>:
d05a09e4:	4901      	ldr	r1, [pc, #4]	; (d05a09ec <_cleanup_r+0x8>)
d05a09e6:	f000 b8af 	b.w	d05a0b48 <_fwalk_reent>
d05a09ea:	bf00      	nop
d05a09ec:	d05a0925 	.word	0xd05a0925

d05a09f0 <__sfmoreglue>:
d05a09f0:	b570      	push	{r4, r5, r6, lr}
d05a09f2:	1e4a      	subs	r2, r1, #1
d05a09f4:	2568      	movs	r5, #104	; 0x68
d05a09f6:	4355      	muls	r5, r2
d05a09f8:	460e      	mov	r6, r1
d05a09fa:	f105 0174 	add.w	r1, r5, #116	; 0x74
d05a09fe:	f000 f981 	bl	d05a0d04 <_malloc_r>
d05a0a02:	4604      	mov	r4, r0
d05a0a04:	b140      	cbz	r0, d05a0a18 <__sfmoreglue+0x28>
d05a0a06:	2100      	movs	r1, #0
d05a0a08:	e9c0 1600 	strd	r1, r6, [r0]
d05a0a0c:	300c      	adds	r0, #12
d05a0a0e:	60a0      	str	r0, [r4, #8]
d05a0a10:	f105 0268 	add.w	r2, r5, #104	; 0x68
d05a0a14:	f7ff fcf4 	bl	d05a0400 <memset>
d05a0a18:	4620      	mov	r0, r4
d05a0a1a:	bd70      	pop	{r4, r5, r6, pc}

d05a0a1c <__sfp_lock_acquire>:
d05a0a1c:	4801      	ldr	r0, [pc, #4]	; (d05a0a24 <__sfp_lock_acquire+0x8>)
d05a0a1e:	f000 b8b3 	b.w	d05a0b88 <__retarget_lock_acquire_recursive>
d05a0a22:	bf00      	nop
d05a0a24:	d05a1050 	.word	0xd05a1050

d05a0a28 <__sfp_lock_release>:
d05a0a28:	4801      	ldr	r0, [pc, #4]	; (d05a0a30 <__sfp_lock_release+0x8>)
d05a0a2a:	f000 b8ae 	b.w	d05a0b8a <__retarget_lock_release_recursive>
d05a0a2e:	bf00      	nop
d05a0a30:	d05a1050 	.word	0xd05a1050

d05a0a34 <__sinit_lock_acquire>:
d05a0a34:	4801      	ldr	r0, [pc, #4]	; (d05a0a3c <__sinit_lock_acquire+0x8>)
d05a0a36:	f000 b8a7 	b.w	d05a0b88 <__retarget_lock_acquire_recursive>
d05a0a3a:	bf00      	nop
d05a0a3c:	d05a104b 	.word	0xd05a104b

d05a0a40 <__sinit_lock_release>:
d05a0a40:	4801      	ldr	r0, [pc, #4]	; (d05a0a48 <__sinit_lock_release+0x8>)
d05a0a42:	f000 b8a2 	b.w	d05a0b8a <__retarget_lock_release_recursive>
d05a0a46:	bf00      	nop
d05a0a48:	d05a104b 	.word	0xd05a104b

d05a0a4c <__sinit>:
d05a0a4c:	b510      	push	{r4, lr}
d05a0a4e:	4604      	mov	r4, r0
d05a0a50:	f7ff fff0 	bl	d05a0a34 <__sinit_lock_acquire>
d05a0a54:	69a3      	ldr	r3, [r4, #24]
d05a0a56:	b11b      	cbz	r3, d05a0a60 <__sinit+0x14>
d05a0a58:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d05a0a5c:	f7ff bff0 	b.w	d05a0a40 <__sinit_lock_release>
d05a0a60:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d05a0a64:	6523      	str	r3, [r4, #80]	; 0x50
d05a0a66:	4b13      	ldr	r3, [pc, #76]	; (d05a0ab4 <__sinit+0x68>)
d05a0a68:	4a13      	ldr	r2, [pc, #76]	; (d05a0ab8 <__sinit+0x6c>)
d05a0a6a:	681b      	ldr	r3, [r3, #0]
d05a0a6c:	62a2      	str	r2, [r4, #40]	; 0x28
d05a0a6e:	42a3      	cmp	r3, r4
d05a0a70:	bf04      	itt	eq
d05a0a72:	2301      	moveq	r3, #1
d05a0a74:	61a3      	streq	r3, [r4, #24]
d05a0a76:	4620      	mov	r0, r4
d05a0a78:	f000 f820 	bl	d05a0abc <__sfp>
d05a0a7c:	6060      	str	r0, [r4, #4]
d05a0a7e:	4620      	mov	r0, r4
d05a0a80:	f000 f81c 	bl	d05a0abc <__sfp>
d05a0a84:	60a0      	str	r0, [r4, #8]
d05a0a86:	4620      	mov	r0, r4
d05a0a88:	f000 f818 	bl	d05a0abc <__sfp>
d05a0a8c:	2200      	movs	r2, #0
d05a0a8e:	60e0      	str	r0, [r4, #12]
d05a0a90:	2104      	movs	r1, #4
d05a0a92:	6860      	ldr	r0, [r4, #4]
d05a0a94:	f7ff ff82 	bl	d05a099c <std>
d05a0a98:	68a0      	ldr	r0, [r4, #8]
d05a0a9a:	2201      	movs	r2, #1
d05a0a9c:	2109      	movs	r1, #9
d05a0a9e:	f7ff ff7d 	bl	d05a099c <std>
d05a0aa2:	68e0      	ldr	r0, [r4, #12]
d05a0aa4:	2202      	movs	r2, #2
d05a0aa6:	2112      	movs	r1, #18
d05a0aa8:	f7ff ff78 	bl	d05a099c <std>
d05a0aac:	2301      	movs	r3, #1
d05a0aae:	61a3      	str	r3, [r4, #24]
d05a0ab0:	e7d2      	b.n	d05a0a58 <__sinit+0xc>
d05a0ab2:	bf00      	nop
d05a0ab4:	d05a0f54 	.word	0xd05a0f54
d05a0ab8:	d05a09e5 	.word	0xd05a09e5

d05a0abc <__sfp>:
d05a0abc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a0abe:	4607      	mov	r7, r0
d05a0ac0:	f7ff ffac 	bl	d05a0a1c <__sfp_lock_acquire>
d05a0ac4:	4b1e      	ldr	r3, [pc, #120]	; (d05a0b40 <__sfp+0x84>)
d05a0ac6:	681e      	ldr	r6, [r3, #0]
d05a0ac8:	69b3      	ldr	r3, [r6, #24]
d05a0aca:	b913      	cbnz	r3, d05a0ad2 <__sfp+0x16>
d05a0acc:	4630      	mov	r0, r6
d05a0ace:	f7ff ffbd 	bl	d05a0a4c <__sinit>
d05a0ad2:	3648      	adds	r6, #72	; 0x48
d05a0ad4:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d05a0ad8:	3b01      	subs	r3, #1
d05a0ada:	d503      	bpl.n	d05a0ae4 <__sfp+0x28>
d05a0adc:	6833      	ldr	r3, [r6, #0]
d05a0ade:	b30b      	cbz	r3, d05a0b24 <__sfp+0x68>
d05a0ae0:	6836      	ldr	r6, [r6, #0]
d05a0ae2:	e7f7      	b.n	d05a0ad4 <__sfp+0x18>
d05a0ae4:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d05a0ae8:	b9d5      	cbnz	r5, d05a0b20 <__sfp+0x64>
d05a0aea:	4b16      	ldr	r3, [pc, #88]	; (d05a0b44 <__sfp+0x88>)
d05a0aec:	60e3      	str	r3, [r4, #12]
d05a0aee:	f104 0058 	add.w	r0, r4, #88	; 0x58
d05a0af2:	6665      	str	r5, [r4, #100]	; 0x64
d05a0af4:	f000 f847 	bl	d05a0b86 <__retarget_lock_init_recursive>
d05a0af8:	f7ff ff96 	bl	d05a0a28 <__sfp_lock_release>
d05a0afc:	e9c4 5501 	strd	r5, r5, [r4, #4]
d05a0b00:	e9c4 5504 	strd	r5, r5, [r4, #16]
d05a0b04:	6025      	str	r5, [r4, #0]
d05a0b06:	61a5      	str	r5, [r4, #24]
d05a0b08:	2208      	movs	r2, #8
d05a0b0a:	4629      	mov	r1, r5
d05a0b0c:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d05a0b10:	f7ff fc76 	bl	d05a0400 <memset>
d05a0b14:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d05a0b18:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d05a0b1c:	4620      	mov	r0, r4
d05a0b1e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a0b20:	3468      	adds	r4, #104	; 0x68
d05a0b22:	e7d9      	b.n	d05a0ad8 <__sfp+0x1c>
d05a0b24:	2104      	movs	r1, #4
d05a0b26:	4638      	mov	r0, r7
d05a0b28:	f7ff ff62 	bl	d05a09f0 <__sfmoreglue>
d05a0b2c:	4604      	mov	r4, r0
d05a0b2e:	6030      	str	r0, [r6, #0]
d05a0b30:	2800      	cmp	r0, #0
d05a0b32:	d1d5      	bne.n	d05a0ae0 <__sfp+0x24>
d05a0b34:	f7ff ff78 	bl	d05a0a28 <__sfp_lock_release>
d05a0b38:	230c      	movs	r3, #12
d05a0b3a:	603b      	str	r3, [r7, #0]
d05a0b3c:	e7ee      	b.n	d05a0b1c <__sfp+0x60>
d05a0b3e:	bf00      	nop
d05a0b40:	d05a0f54 	.word	0xd05a0f54
d05a0b44:	ffff0001 	.word	0xffff0001

d05a0b48 <_fwalk_reent>:
d05a0b48:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d05a0b4c:	4606      	mov	r6, r0
d05a0b4e:	4688      	mov	r8, r1
d05a0b50:	f100 0448 	add.w	r4, r0, #72	; 0x48
d05a0b54:	2700      	movs	r7, #0
d05a0b56:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d05a0b5a:	f1b9 0901 	subs.w	r9, r9, #1
d05a0b5e:	d505      	bpl.n	d05a0b6c <_fwalk_reent+0x24>
d05a0b60:	6824      	ldr	r4, [r4, #0]
d05a0b62:	2c00      	cmp	r4, #0
d05a0b64:	d1f7      	bne.n	d05a0b56 <_fwalk_reent+0xe>
d05a0b66:	4638      	mov	r0, r7
d05a0b68:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d05a0b6c:	89ab      	ldrh	r3, [r5, #12]
d05a0b6e:	2b01      	cmp	r3, #1
d05a0b70:	d907      	bls.n	d05a0b82 <_fwalk_reent+0x3a>
d05a0b72:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d05a0b76:	3301      	adds	r3, #1
d05a0b78:	d003      	beq.n	d05a0b82 <_fwalk_reent+0x3a>
d05a0b7a:	4629      	mov	r1, r5
d05a0b7c:	4630      	mov	r0, r6
d05a0b7e:	47c0      	blx	r8
d05a0b80:	4307      	orrs	r7, r0
d05a0b82:	3568      	adds	r5, #104	; 0x68
d05a0b84:	e7e9      	b.n	d05a0b5a <_fwalk_reent+0x12>

d05a0b86 <__retarget_lock_init_recursive>:
d05a0b86:	4770      	bx	lr

d05a0b88 <__retarget_lock_acquire_recursive>:
d05a0b88:	4770      	bx	lr

d05a0b8a <__retarget_lock_release_recursive>:
d05a0b8a:	4770      	bx	lr

d05a0b8c <__swhatbuf_r>:
d05a0b8c:	b570      	push	{r4, r5, r6, lr}
d05a0b8e:	460e      	mov	r6, r1
d05a0b90:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a0b94:	2900      	cmp	r1, #0
d05a0b96:	b096      	sub	sp, #88	; 0x58
d05a0b98:	4614      	mov	r4, r2
d05a0b9a:	461d      	mov	r5, r3
d05a0b9c:	da07      	bge.n	d05a0bae <__swhatbuf_r+0x22>
d05a0b9e:	2300      	movs	r3, #0
d05a0ba0:	602b      	str	r3, [r5, #0]
d05a0ba2:	89b3      	ldrh	r3, [r6, #12]
d05a0ba4:	061a      	lsls	r2, r3, #24
d05a0ba6:	d410      	bmi.n	d05a0bca <__swhatbuf_r+0x3e>
d05a0ba8:	f44f 6380 	mov.w	r3, #1024	; 0x400
d05a0bac:	e00e      	b.n	d05a0bcc <__swhatbuf_r+0x40>
d05a0bae:	466a      	mov	r2, sp
d05a0bb0:	f000 f956 	bl	d05a0e60 <_fstat_r>
d05a0bb4:	2800      	cmp	r0, #0
d05a0bb6:	dbf2      	blt.n	d05a0b9e <__swhatbuf_r+0x12>
d05a0bb8:	9a01      	ldr	r2, [sp, #4]
d05a0bba:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d05a0bbe:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d05a0bc2:	425a      	negs	r2, r3
d05a0bc4:	415a      	adcs	r2, r3
d05a0bc6:	602a      	str	r2, [r5, #0]
d05a0bc8:	e7ee      	b.n	d05a0ba8 <__swhatbuf_r+0x1c>
d05a0bca:	2340      	movs	r3, #64	; 0x40
d05a0bcc:	2000      	movs	r0, #0
d05a0bce:	6023      	str	r3, [r4, #0]
d05a0bd0:	b016      	add	sp, #88	; 0x58
d05a0bd2:	bd70      	pop	{r4, r5, r6, pc}

d05a0bd4 <__smakebuf_r>:
d05a0bd4:	898b      	ldrh	r3, [r1, #12]
d05a0bd6:	b573      	push	{r0, r1, r4, r5, r6, lr}
d05a0bd8:	079d      	lsls	r5, r3, #30
d05a0bda:	4606      	mov	r6, r0
d05a0bdc:	460c      	mov	r4, r1
d05a0bde:	d507      	bpl.n	d05a0bf0 <__smakebuf_r+0x1c>
d05a0be0:	f104 0347 	add.w	r3, r4, #71	; 0x47
d05a0be4:	6023      	str	r3, [r4, #0]
d05a0be6:	6123      	str	r3, [r4, #16]
d05a0be8:	2301      	movs	r3, #1
d05a0bea:	6163      	str	r3, [r4, #20]
d05a0bec:	b002      	add	sp, #8
d05a0bee:	bd70      	pop	{r4, r5, r6, pc}
d05a0bf0:	ab01      	add	r3, sp, #4
d05a0bf2:	466a      	mov	r2, sp
d05a0bf4:	f7ff ffca 	bl	d05a0b8c <__swhatbuf_r>
d05a0bf8:	9900      	ldr	r1, [sp, #0]
d05a0bfa:	4605      	mov	r5, r0
d05a0bfc:	4630      	mov	r0, r6
d05a0bfe:	f000 f881 	bl	d05a0d04 <_malloc_r>
d05a0c02:	b948      	cbnz	r0, d05a0c18 <__smakebuf_r+0x44>
d05a0c04:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d05a0c08:	059a      	lsls	r2, r3, #22
d05a0c0a:	d4ef      	bmi.n	d05a0bec <__smakebuf_r+0x18>
d05a0c0c:	f023 0303 	bic.w	r3, r3, #3
d05a0c10:	f043 0302 	orr.w	r3, r3, #2
d05a0c14:	81a3      	strh	r3, [r4, #12]
d05a0c16:	e7e3      	b.n	d05a0be0 <__smakebuf_r+0xc>
d05a0c18:	4b0d      	ldr	r3, [pc, #52]	; (d05a0c50 <__smakebuf_r+0x7c>)
d05a0c1a:	62b3      	str	r3, [r6, #40]	; 0x28
d05a0c1c:	89a3      	ldrh	r3, [r4, #12]
d05a0c1e:	6020      	str	r0, [r4, #0]
d05a0c20:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d05a0c24:	81a3      	strh	r3, [r4, #12]
d05a0c26:	9b00      	ldr	r3, [sp, #0]
d05a0c28:	6163      	str	r3, [r4, #20]
d05a0c2a:	9b01      	ldr	r3, [sp, #4]
d05a0c2c:	6120      	str	r0, [r4, #16]
d05a0c2e:	b15b      	cbz	r3, d05a0c48 <__smakebuf_r+0x74>
d05a0c30:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d05a0c34:	4630      	mov	r0, r6
d05a0c36:	f000 f925 	bl	d05a0e84 <_isatty_r>
d05a0c3a:	b128      	cbz	r0, d05a0c48 <__smakebuf_r+0x74>
d05a0c3c:	89a3      	ldrh	r3, [r4, #12]
d05a0c3e:	f023 0303 	bic.w	r3, r3, #3
d05a0c42:	f043 0301 	orr.w	r3, r3, #1
d05a0c46:	81a3      	strh	r3, [r4, #12]
d05a0c48:	89a0      	ldrh	r0, [r4, #12]
d05a0c4a:	4305      	orrs	r5, r0
d05a0c4c:	81a5      	strh	r5, [r4, #12]
d05a0c4e:	e7cd      	b.n	d05a0bec <__smakebuf_r+0x18>
d05a0c50:	d05a09e5 	.word	0xd05a09e5

d05a0c54 <malloc>:
d05a0c54:	4b02      	ldr	r3, [pc, #8]	; (d05a0c60 <malloc+0xc>)
d05a0c56:	4601      	mov	r1, r0
d05a0c58:	6818      	ldr	r0, [r3, #0]
d05a0c5a:	f000 b853 	b.w	d05a0d04 <_malloc_r>
d05a0c5e:	bf00      	nop
d05a0c60:	d05a0fc4 	.word	0xd05a0fc4

d05a0c64 <_free_r>:
d05a0c64:	b537      	push	{r0, r1, r2, r4, r5, lr}
d05a0c66:	2900      	cmp	r1, #0
d05a0c68:	d048      	beq.n	d05a0cfc <_free_r+0x98>
d05a0c6a:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05a0c6e:	9001      	str	r0, [sp, #4]
d05a0c70:	2b00      	cmp	r3, #0
d05a0c72:	f1a1 0404 	sub.w	r4, r1, #4
d05a0c76:	bfb8      	it	lt
d05a0c78:	18e4      	addlt	r4, r4, r3
d05a0c7a:	f000 f925 	bl	d05a0ec8 <__malloc_lock>
d05a0c7e:	4a20      	ldr	r2, [pc, #128]	; (d05a0d00 <_free_r+0x9c>)
d05a0c80:	9801      	ldr	r0, [sp, #4]
d05a0c82:	6813      	ldr	r3, [r2, #0]
d05a0c84:	4615      	mov	r5, r2
d05a0c86:	b933      	cbnz	r3, d05a0c96 <_free_r+0x32>
d05a0c88:	6063      	str	r3, [r4, #4]
d05a0c8a:	6014      	str	r4, [r2, #0]
d05a0c8c:	b003      	add	sp, #12
d05a0c8e:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d05a0c92:	f000 b91f 	b.w	d05a0ed4 <__malloc_unlock>
d05a0c96:	42a3      	cmp	r3, r4
d05a0c98:	d90b      	bls.n	d05a0cb2 <_free_r+0x4e>
d05a0c9a:	6821      	ldr	r1, [r4, #0]
d05a0c9c:	1862      	adds	r2, r4, r1
d05a0c9e:	4293      	cmp	r3, r2
d05a0ca0:	bf04      	itt	eq
d05a0ca2:	681a      	ldreq	r2, [r3, #0]
d05a0ca4:	685b      	ldreq	r3, [r3, #4]
d05a0ca6:	6063      	str	r3, [r4, #4]
d05a0ca8:	bf04      	itt	eq
d05a0caa:	1852      	addeq	r2, r2, r1
d05a0cac:	6022      	streq	r2, [r4, #0]
d05a0cae:	602c      	str	r4, [r5, #0]
d05a0cb0:	e7ec      	b.n	d05a0c8c <_free_r+0x28>
d05a0cb2:	461a      	mov	r2, r3
d05a0cb4:	685b      	ldr	r3, [r3, #4]
d05a0cb6:	b10b      	cbz	r3, d05a0cbc <_free_r+0x58>
d05a0cb8:	42a3      	cmp	r3, r4
d05a0cba:	d9fa      	bls.n	d05a0cb2 <_free_r+0x4e>
d05a0cbc:	6811      	ldr	r1, [r2, #0]
d05a0cbe:	1855      	adds	r5, r2, r1
d05a0cc0:	42a5      	cmp	r5, r4
d05a0cc2:	d10b      	bne.n	d05a0cdc <_free_r+0x78>
d05a0cc4:	6824      	ldr	r4, [r4, #0]
d05a0cc6:	4421      	add	r1, r4
d05a0cc8:	1854      	adds	r4, r2, r1
d05a0cca:	42a3      	cmp	r3, r4
d05a0ccc:	6011      	str	r1, [r2, #0]
d05a0cce:	d1dd      	bne.n	d05a0c8c <_free_r+0x28>
d05a0cd0:	681c      	ldr	r4, [r3, #0]
d05a0cd2:	685b      	ldr	r3, [r3, #4]
d05a0cd4:	6053      	str	r3, [r2, #4]
d05a0cd6:	4421      	add	r1, r4
d05a0cd8:	6011      	str	r1, [r2, #0]
d05a0cda:	e7d7      	b.n	d05a0c8c <_free_r+0x28>
d05a0cdc:	d902      	bls.n	d05a0ce4 <_free_r+0x80>
d05a0cde:	230c      	movs	r3, #12
d05a0ce0:	6003      	str	r3, [r0, #0]
d05a0ce2:	e7d3      	b.n	d05a0c8c <_free_r+0x28>
d05a0ce4:	6825      	ldr	r5, [r4, #0]
d05a0ce6:	1961      	adds	r1, r4, r5
d05a0ce8:	428b      	cmp	r3, r1
d05a0cea:	bf04      	itt	eq
d05a0cec:	6819      	ldreq	r1, [r3, #0]
d05a0cee:	685b      	ldreq	r3, [r3, #4]
d05a0cf0:	6063      	str	r3, [r4, #4]
d05a0cf2:	bf04      	itt	eq
d05a0cf4:	1949      	addeq	r1, r1, r5
d05a0cf6:	6021      	streq	r1, [r4, #0]
d05a0cf8:	6054      	str	r4, [r2, #4]
d05a0cfa:	e7c7      	b.n	d05a0c8c <_free_r+0x28>
d05a0cfc:	b003      	add	sp, #12
d05a0cfe:	bd30      	pop	{r4, r5, pc}
d05a0d00:	d05a1040 	.word	0xd05a1040

d05a0d04 <_malloc_r>:
d05a0d04:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a0d06:	1ccd      	adds	r5, r1, #3
d05a0d08:	f025 0503 	bic.w	r5, r5, #3
d05a0d0c:	3508      	adds	r5, #8
d05a0d0e:	2d0c      	cmp	r5, #12
d05a0d10:	bf38      	it	cc
d05a0d12:	250c      	movcc	r5, #12
d05a0d14:	2d00      	cmp	r5, #0
d05a0d16:	4606      	mov	r6, r0
d05a0d18:	db01      	blt.n	d05a0d1e <_malloc_r+0x1a>
d05a0d1a:	42a9      	cmp	r1, r5
d05a0d1c:	d903      	bls.n	d05a0d26 <_malloc_r+0x22>
d05a0d1e:	230c      	movs	r3, #12
d05a0d20:	6033      	str	r3, [r6, #0]
d05a0d22:	2000      	movs	r0, #0
d05a0d24:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a0d26:	f000 f8cf 	bl	d05a0ec8 <__malloc_lock>
d05a0d2a:	4921      	ldr	r1, [pc, #132]	; (d05a0db0 <_malloc_r+0xac>)
d05a0d2c:	680a      	ldr	r2, [r1, #0]
d05a0d2e:	4614      	mov	r4, r2
d05a0d30:	b99c      	cbnz	r4, d05a0d5a <_malloc_r+0x56>
d05a0d32:	4f20      	ldr	r7, [pc, #128]	; (d05a0db4 <_malloc_r+0xb0>)
d05a0d34:	683b      	ldr	r3, [r7, #0]
d05a0d36:	b923      	cbnz	r3, d05a0d42 <_malloc_r+0x3e>
d05a0d38:	4621      	mov	r1, r4
d05a0d3a:	4630      	mov	r0, r6
d05a0d3c:	f7ff f9c4 	bl	d05a00c8 <_sbrk_r>
d05a0d40:	6038      	str	r0, [r7, #0]
d05a0d42:	4629      	mov	r1, r5
d05a0d44:	4630      	mov	r0, r6
d05a0d46:	f7ff f9bf 	bl	d05a00c8 <_sbrk_r>
d05a0d4a:	1c43      	adds	r3, r0, #1
d05a0d4c:	d123      	bne.n	d05a0d96 <_malloc_r+0x92>
d05a0d4e:	230c      	movs	r3, #12
d05a0d50:	6033      	str	r3, [r6, #0]
d05a0d52:	4630      	mov	r0, r6
d05a0d54:	f000 f8be 	bl	d05a0ed4 <__malloc_unlock>
d05a0d58:	e7e3      	b.n	d05a0d22 <_malloc_r+0x1e>
d05a0d5a:	6823      	ldr	r3, [r4, #0]
d05a0d5c:	1b5b      	subs	r3, r3, r5
d05a0d5e:	d417      	bmi.n	d05a0d90 <_malloc_r+0x8c>
d05a0d60:	2b0b      	cmp	r3, #11
d05a0d62:	d903      	bls.n	d05a0d6c <_malloc_r+0x68>
d05a0d64:	6023      	str	r3, [r4, #0]
d05a0d66:	441c      	add	r4, r3
d05a0d68:	6025      	str	r5, [r4, #0]
d05a0d6a:	e004      	b.n	d05a0d76 <_malloc_r+0x72>
d05a0d6c:	6863      	ldr	r3, [r4, #4]
d05a0d6e:	42a2      	cmp	r2, r4
d05a0d70:	bf0c      	ite	eq
d05a0d72:	600b      	streq	r3, [r1, #0]
d05a0d74:	6053      	strne	r3, [r2, #4]
d05a0d76:	4630      	mov	r0, r6
d05a0d78:	f000 f8ac 	bl	d05a0ed4 <__malloc_unlock>
d05a0d7c:	f104 000b 	add.w	r0, r4, #11
d05a0d80:	1d23      	adds	r3, r4, #4
d05a0d82:	f020 0007 	bic.w	r0, r0, #7
d05a0d86:	1ac2      	subs	r2, r0, r3
d05a0d88:	d0cc      	beq.n	d05a0d24 <_malloc_r+0x20>
d05a0d8a:	1a1b      	subs	r3, r3, r0
d05a0d8c:	50a3      	str	r3, [r4, r2]
d05a0d8e:	e7c9      	b.n	d05a0d24 <_malloc_r+0x20>
d05a0d90:	4622      	mov	r2, r4
d05a0d92:	6864      	ldr	r4, [r4, #4]
d05a0d94:	e7cc      	b.n	d05a0d30 <_malloc_r+0x2c>
d05a0d96:	1cc4      	adds	r4, r0, #3
d05a0d98:	f024 0403 	bic.w	r4, r4, #3
d05a0d9c:	42a0      	cmp	r0, r4
d05a0d9e:	d0e3      	beq.n	d05a0d68 <_malloc_r+0x64>
d05a0da0:	1a21      	subs	r1, r4, r0
d05a0da2:	4630      	mov	r0, r6
d05a0da4:	f7ff f990 	bl	d05a00c8 <_sbrk_r>
d05a0da8:	3001      	adds	r0, #1
d05a0daa:	d1dd      	bne.n	d05a0d68 <_malloc_r+0x64>
d05a0dac:	e7cf      	b.n	d05a0d4e <_malloc_r+0x4a>
d05a0dae:	bf00      	nop
d05a0db0:	d05a1040 	.word	0xd05a1040
d05a0db4:	d05a1044 	.word	0xd05a1044

d05a0db8 <__sread>:
d05a0db8:	b510      	push	{r4, lr}
d05a0dba:	460c      	mov	r4, r1
d05a0dbc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a0dc0:	f000 f88e 	bl	d05a0ee0 <_read_r>
d05a0dc4:	2800      	cmp	r0, #0
d05a0dc6:	bfab      	itete	ge
d05a0dc8:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d05a0dca:	89a3      	ldrhlt	r3, [r4, #12]
d05a0dcc:	181b      	addge	r3, r3, r0
d05a0dce:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d05a0dd2:	bfac      	ite	ge
d05a0dd4:	6563      	strge	r3, [r4, #84]	; 0x54
d05a0dd6:	81a3      	strhlt	r3, [r4, #12]
d05a0dd8:	bd10      	pop	{r4, pc}

d05a0dda <__swrite>:
d05a0dda:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d05a0dde:	461f      	mov	r7, r3
d05a0de0:	898b      	ldrh	r3, [r1, #12]
d05a0de2:	05db      	lsls	r3, r3, #23
d05a0de4:	4605      	mov	r5, r0
d05a0de6:	460c      	mov	r4, r1
d05a0de8:	4616      	mov	r6, r2
d05a0dea:	d505      	bpl.n	d05a0df8 <__swrite+0x1e>
d05a0dec:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a0df0:	2302      	movs	r3, #2
d05a0df2:	2200      	movs	r2, #0
d05a0df4:	f000 f856 	bl	d05a0ea4 <_lseek_r>
d05a0df8:	89a3      	ldrh	r3, [r4, #12]
d05a0dfa:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d05a0dfe:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d05a0e02:	81a3      	strh	r3, [r4, #12]
d05a0e04:	4632      	mov	r2, r6
d05a0e06:	463b      	mov	r3, r7
d05a0e08:	4628      	mov	r0, r5
d05a0e0a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d05a0e0e:	f7ff b915 	b.w	d05a003c <_write_r>

d05a0e12 <__sseek>:
d05a0e12:	b510      	push	{r4, lr}
d05a0e14:	460c      	mov	r4, r1
d05a0e16:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a0e1a:	f000 f843 	bl	d05a0ea4 <_lseek_r>
d05a0e1e:	1c43      	adds	r3, r0, #1
d05a0e20:	89a3      	ldrh	r3, [r4, #12]
d05a0e22:	bf15      	itete	ne
d05a0e24:	6560      	strne	r0, [r4, #84]	; 0x54
d05a0e26:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d05a0e2a:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d05a0e2e:	81a3      	strheq	r3, [r4, #12]
d05a0e30:	bf18      	it	ne
d05a0e32:	81a3      	strhne	r3, [r4, #12]
d05a0e34:	bd10      	pop	{r4, pc}

d05a0e36 <__sclose>:
d05a0e36:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a0e3a:	f000 b801 	b.w	d05a0e40 <_close_r>
	...

d05a0e40 <_close_r>:
d05a0e40:	b538      	push	{r3, r4, r5, lr}
d05a0e42:	4d06      	ldr	r5, [pc, #24]	; (d05a0e5c <_close_r+0x1c>)
d05a0e44:	2300      	movs	r3, #0
d05a0e46:	4604      	mov	r4, r0
d05a0e48:	4608      	mov	r0, r1
d05a0e4a:	602b      	str	r3, [r5, #0]
d05a0e4c:	f7ff f930 	bl	d05a00b0 <_close>
d05a0e50:	1c43      	adds	r3, r0, #1
d05a0e52:	d102      	bne.n	d05a0e5a <_close_r+0x1a>
d05a0e54:	682b      	ldr	r3, [r5, #0]
d05a0e56:	b103      	cbz	r3, d05a0e5a <_close_r+0x1a>
d05a0e58:	6023      	str	r3, [r4, #0]
d05a0e5a:	bd38      	pop	{r3, r4, r5, pc}
d05a0e5c:	d05a1054 	.word	0xd05a1054

d05a0e60 <_fstat_r>:
d05a0e60:	b538      	push	{r3, r4, r5, lr}
d05a0e62:	4d07      	ldr	r5, [pc, #28]	; (d05a0e80 <_fstat_r+0x20>)
d05a0e64:	2300      	movs	r3, #0
d05a0e66:	4604      	mov	r4, r0
d05a0e68:	4608      	mov	r0, r1
d05a0e6a:	4611      	mov	r1, r2
d05a0e6c:	602b      	str	r3, [r5, #0]
d05a0e6e:	f7ff f923 	bl	d05a00b8 <_fstat>
d05a0e72:	1c43      	adds	r3, r0, #1
d05a0e74:	d102      	bne.n	d05a0e7c <_fstat_r+0x1c>
d05a0e76:	682b      	ldr	r3, [r5, #0]
d05a0e78:	b103      	cbz	r3, d05a0e7c <_fstat_r+0x1c>
d05a0e7a:	6023      	str	r3, [r4, #0]
d05a0e7c:	bd38      	pop	{r3, r4, r5, pc}
d05a0e7e:	bf00      	nop
d05a0e80:	d05a1054 	.word	0xd05a1054

d05a0e84 <_isatty_r>:
d05a0e84:	b538      	push	{r3, r4, r5, lr}
d05a0e86:	4d06      	ldr	r5, [pc, #24]	; (d05a0ea0 <_isatty_r+0x1c>)
d05a0e88:	2300      	movs	r3, #0
d05a0e8a:	4604      	mov	r4, r0
d05a0e8c:	4608      	mov	r0, r1
d05a0e8e:	602b      	str	r3, [r5, #0]
d05a0e90:	f7ff f93a 	bl	d05a0108 <_isatty>
d05a0e94:	1c43      	adds	r3, r0, #1
d05a0e96:	d102      	bne.n	d05a0e9e <_isatty_r+0x1a>
d05a0e98:	682b      	ldr	r3, [r5, #0]
d05a0e9a:	b103      	cbz	r3, d05a0e9e <_isatty_r+0x1a>
d05a0e9c:	6023      	str	r3, [r4, #0]
d05a0e9e:	bd38      	pop	{r3, r4, r5, pc}
d05a0ea0:	d05a1054 	.word	0xd05a1054

d05a0ea4 <_lseek_r>:
d05a0ea4:	b538      	push	{r3, r4, r5, lr}
d05a0ea6:	4d07      	ldr	r5, [pc, #28]	; (d05a0ec4 <_lseek_r+0x20>)
d05a0ea8:	4604      	mov	r4, r0
d05a0eaa:	4608      	mov	r0, r1
d05a0eac:	4611      	mov	r1, r2
d05a0eae:	2200      	movs	r2, #0
d05a0eb0:	602a      	str	r2, [r5, #0]
d05a0eb2:	461a      	mov	r2, r3
d05a0eb4:	f7ff f906 	bl	d05a00c4 <_lseek>
d05a0eb8:	1c43      	adds	r3, r0, #1
d05a0eba:	d102      	bne.n	d05a0ec2 <_lseek_r+0x1e>
d05a0ebc:	682b      	ldr	r3, [r5, #0]
d05a0ebe:	b103      	cbz	r3, d05a0ec2 <_lseek_r+0x1e>
d05a0ec0:	6023      	str	r3, [r4, #0]
d05a0ec2:	bd38      	pop	{r3, r4, r5, pc}
d05a0ec4:	d05a1054 	.word	0xd05a1054

d05a0ec8 <__malloc_lock>:
d05a0ec8:	4801      	ldr	r0, [pc, #4]	; (d05a0ed0 <__malloc_lock+0x8>)
d05a0eca:	f7ff be5d 	b.w	d05a0b88 <__retarget_lock_acquire_recursive>
d05a0ece:	bf00      	nop
d05a0ed0:	d05a104c 	.word	0xd05a104c

d05a0ed4 <__malloc_unlock>:
d05a0ed4:	4801      	ldr	r0, [pc, #4]	; (d05a0edc <__malloc_unlock+0x8>)
d05a0ed6:	f7ff be58 	b.w	d05a0b8a <__retarget_lock_release_recursive>
d05a0eda:	bf00      	nop
d05a0edc:	d05a104c 	.word	0xd05a104c

d05a0ee0 <_read_r>:
d05a0ee0:	b538      	push	{r3, r4, r5, lr}
d05a0ee2:	4d07      	ldr	r5, [pc, #28]	; (d05a0f00 <_read_r+0x20>)
d05a0ee4:	4604      	mov	r4, r0
d05a0ee6:	4608      	mov	r0, r1
d05a0ee8:	4611      	mov	r1, r2
d05a0eea:	2200      	movs	r2, #0
d05a0eec:	602a      	str	r2, [r5, #0]
d05a0eee:	461a      	mov	r2, r3
d05a0ef0:	f7ff f8d4 	bl	d05a009c <_read>
d05a0ef4:	1c43      	adds	r3, r0, #1
d05a0ef6:	d102      	bne.n	d05a0efe <_read_r+0x1e>
d05a0ef8:	682b      	ldr	r3, [r5, #0]
d05a0efa:	b103      	cbz	r3, d05a0efe <_read_r+0x1e>
d05a0efc:	6023      	str	r3, [r4, #0]
d05a0efe:	bd38      	pop	{r3, r4, r5, pc}
d05a0f00:	d05a1054 	.word	0xd05a1054
d05a0f04:	6e696f64 	.word	0x6e696f64
d05a0f08:	6f732067 	.word	0x6f732067
d05a0f0c:	6874656d 	.word	0x6874656d
d05a0f10:	00676e69 	.word	0x00676e69
d05a0f14:	20495547 	.word	0x20495547
d05a0f18:	74736554 	.word	0x74736554
d05a0f1c:	70704120 	.word	0x70704120
d05a0f20:	00000000 	.word	0x00000000
d05a0f24:	74736554 	.word	0x74736554
d05a0f28:	616c6220 	.word	0x616c6220
d05a0f2c:	61206b6e 	.word	0x61206b6e
d05a0f30:	00217070 	.word	0x00217070
d05a0f34:	74736554 	.word	0x74736554
d05a0f38:	70706120 	.word	0x70706120
d05a0f3c:	74704f7c 	.word	0x74704f7c
d05a0f40:	736e6f69 	.word	0x736e6f69
d05a0f44:	6f62417c 	.word	0x6f62417c
d05a0f48:	00007475 	.word	0x00007475
d05a0f4c:	74697845 	.word	0x74697845
d05a0f50:	00000000 	.word	0x00000000

d05a0f54 <_global_impure_ptr>:
d05a0f54:	d05a0fc8                                ..Z.

d05a0f58 <__sf_fake_stderr>:
	...

d05a0f78 <__sf_fake_stdin>:
	...

d05a0f98 <__sf_fake_stdout>:
	...

Disassembly of section .init:

d05a0fb8 <_init>:
d05a0fb8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a0fba:	bf00      	nop

Disassembly of section .fini:

d05a0fbc <_fini>:
d05a0fbc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a0fbe:	bf00      	nop
