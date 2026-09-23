
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
d03e001e:	f000 fa87 	bl	d03e0530 <setbuf>
d03e0022:	6833      	ldr	r3, [r6, #0]
d03e0024:	2100      	movs	r1, #0
d03e0026:	68d8      	ldr	r0, [r3, #12]
d03e0028:	f000 fa82 	bl	d03e0530 <setbuf>
d03e002c:	4629      	mov	r1, r5
d03e002e:	4620      	mov	r0, r4
d03e0030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d03e0034:	f000 b8fa 	b.w	d03e022c <main>
d03e0038:	d03e0da0 	.word	0xd03e0da0

d03e003c <_write_r>:
d03e003c:	3901      	subs	r1, #1
d03e003e:	2901      	cmp	r1, #1
d03e0040:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e0042:	d81f      	bhi.n	d03e0084 <_write_r+0x48>
d03e0044:	b1e2      	cbz	r2, d03e0080 <_write_r+0x44>
d03e0046:	461c      	mov	r4, r3
d03e0048:	b1d3      	cbz	r3, d03e0080 <_write_r+0x44>
d03e004a:	4d12      	ldr	r5, [pc, #72]	; (d03e0094 <_write_r+0x58>)
d03e004c:	682e      	ldr	r6, [r5, #0]
d03e004e:	b9ae      	cbnz	r6, d03e007c <_write_r+0x40>
d03e0050:	4f11      	ldr	r7, [pc, #68]	; (d03e0098 <_write_r+0x5c>)
d03e0052:	2301      	movs	r3, #1
d03e0054:	4611      	mov	r1, r2
d03e0056:	4630      	mov	r0, r6
d03e0058:	602b      	str	r3, [r5, #0]
d03e005a:	4622      	mov	r2, r4
d03e005c:	7a3b      	ldrb	r3, [r7, #8]
d03e005e:	f897 c009 	ldrb.w	ip, [r7, #9]
d03e0062:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d03e0066:	f897 c00a 	ldrb.w	ip, [r7, #10]
d03e006a:	7aff      	ldrb	r7, [r7, #11]
d03e006c:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d03e0070:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d03e0074:	681b      	ldr	r3, [r3, #0]
d03e0076:	685b      	ldr	r3, [r3, #4]
d03e0078:	4798      	blx	r3
d03e007a:	602e      	str	r6, [r5, #0]
d03e007c:	4620      	mov	r0, r4
d03e007e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e0080:	2000      	movs	r0, #0
d03e0082:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e0084:	f000 fa46 	bl	d03e0514 <__errno>
d03e0088:	2209      	movs	r2, #9
d03e008a:	4603      	mov	r3, r0
d03e008c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e0090:	601a      	str	r2, [r3, #0]
d03e0092:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e0094:	d03e0e08 	.word	0xd03e0e08
d03e0098:	2001f000 	.word	0x2001f000

d03e009c <_read>:
d03e009c:	b508      	push	{r3, lr}
d03e009e:	f000 fa39 	bl	d03e0514 <__errno>
d03e00a2:	2258      	movs	r2, #88	; 0x58
d03e00a4:	4603      	mov	r3, r0
d03e00a6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e00aa:	601a      	str	r2, [r3, #0]
d03e00ac:	bd08      	pop	{r3, pc}
d03e00ae:	bf00      	nop

d03e00b0 <_close>:
d03e00b0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e00b4:	4770      	bx	lr
d03e00b6:	bf00      	nop

d03e00b8 <_fstat>:
d03e00b8:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d03e00bc:	2000      	movs	r0, #0
d03e00be:	604b      	str	r3, [r1, #4]
d03e00c0:	4770      	bx	lr
d03e00c2:	bf00      	nop

d03e00c4 <_lseek>:
d03e00c4:	2000      	movs	r0, #0
d03e00c6:	4770      	bx	lr

d03e00c8 <_sbrk_r>:
d03e00c8:	4b0c      	ldr	r3, [pc, #48]	; (d03e00fc <_sbrk_r+0x34>)
d03e00ca:	4a0d      	ldr	r2, [pc, #52]	; (d03e0100 <_sbrk_r+0x38>)
d03e00cc:	6818      	ldr	r0, [r3, #0]
d03e00ce:	b510      	push	{r4, lr}
d03e00d0:	b918      	cbnz	r0, d03e00da <_sbrk_r+0x12>
d03e00d2:	1dd0      	adds	r0, r2, #7
d03e00d4:	f020 0007 	bic.w	r0, r0, #7
d03e00d8:	6018      	str	r0, [r3, #0]
d03e00da:	4401      	add	r1, r0
d03e00dc:	4c09      	ldr	r4, [pc, #36]	; (d03e0104 <_sbrk_r+0x3c>)
d03e00de:	42a1      	cmp	r1, r4
d03e00e0:	d803      	bhi.n	d03e00ea <_sbrk_r+0x22>
d03e00e2:	4291      	cmp	r1, r2
d03e00e4:	d301      	bcc.n	d03e00ea <_sbrk_r+0x22>
d03e00e6:	6019      	str	r1, [r3, #0]
d03e00e8:	bd10      	pop	{r4, pc}
d03e00ea:	f000 fa13 	bl	d03e0514 <__errno>
d03e00ee:	220c      	movs	r2, #12
d03e00f0:	4603      	mov	r3, r0
d03e00f2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e00f6:	601a      	str	r2, [r3, #0]
d03e00f8:	bd10      	pop	{r4, pc}
d03e00fa:	bf00      	nop
d03e00fc:	d03e0e04 	.word	0xd03e0e04
d03e0100:	d03e2e30 	.word	0xd03e2e30
d03e0104:	d0600000 	.word	0xd0600000

d03e0108 <on_timer_tick>:
d03e0108:	4b0f      	ldr	r3, [pc, #60]	; (d03e0148 <on_timer_tick+0x40>)
d03e010a:	781b      	ldrb	r3, [r3, #0]
d03e010c:	b1d3      	cbz	r3, d03e0144 <on_timer_tick+0x3c>
d03e010e:	4a0f      	ldr	r2, [pc, #60]	; (d03e014c <on_timer_tick+0x44>)
d03e0110:	2101      	movs	r1, #1
d03e0112:	2000      	movs	r0, #0
d03e0114:	7d13      	ldrb	r3, [r2, #20]
d03e0116:	b570      	push	{r4, r5, r6, lr}
d03e0118:	7d55      	ldrb	r5, [r2, #21]
d03e011a:	7d96      	ldrb	r6, [r2, #22]
d03e011c:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d03e0120:	7dd5      	ldrb	r5, [r2, #23]
d03e0122:	4c0b      	ldr	r4, [pc, #44]	; (d03e0150 <on_timer_tick+0x48>)
d03e0124:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d03e0128:	7822      	ldrb	r2, [r4, #0]
d03e012a:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d03e012e:	681b      	ldr	r3, [r3, #0]
d03e0130:	69db      	ldr	r3, [r3, #28]
d03e0132:	4798      	blx	r3
d03e0134:	7823      	ldrb	r3, [r4, #0]
d03e0136:	3301      	adds	r3, #1
d03e0138:	b2db      	uxtb	r3, r3
d03e013a:	2bf5      	cmp	r3, #245	; 0xf5
d03e013c:	bf88      	it	hi
d03e013e:	2300      	movhi	r3, #0
d03e0140:	7023      	strb	r3, [r4, #0]
d03e0142:	bd70      	pop	{r4, r5, r6, pc}
d03e0144:	4770      	bx	lr
d03e0146:	bf00      	nop
d03e0148:	d03e0e0c 	.word	0xd03e0e0c
d03e014c:	2001f000 	.word	0x2001f000
d03e0150:	d03e0e14 	.word	0xd03e0e14

d03e0154 <testapp_proc>:
d03e0154:	2900      	cmp	r1, #0
d03e0156:	d05b      	beq.n	d03e0210 <testapp_proc+0xbc>
d03e0158:	b538      	push	{r3, r4, r5, lr}
d03e015a:	680b      	ldr	r3, [r1, #0]
d03e015c:	2b20      	cmp	r3, #32
d03e015e:	d001      	beq.n	d03e0164 <testapp_proc+0x10>
d03e0160:	2000      	movs	r0, #0
d03e0162:	bd38      	pop	{r3, r4, r5, pc}
d03e0164:	68c9      	ldr	r1, [r1, #12]
d03e0166:	f5b1 5f80 	cmp.w	r1, #4096	; 0x1000
d03e016a:	d006      	beq.n	d03e017a <testapp_proc+0x26>
d03e016c:	f248 0004 	movw	r0, #32772	; 0x8004
d03e0170:	4281      	cmp	r1, r0
d03e0172:	bf0c      	ite	eq
d03e0174:	20f0      	moveq	r0, #240	; 0xf0
d03e0176:	2000      	movne	r0, #0
d03e0178:	bd38      	pop	{r3, r4, r5, pc}
d03e017a:	4b27      	ldr	r3, [pc, #156]	; (d03e0218 <testapp_proc+0xc4>)
d03e017c:	781a      	ldrb	r2, [r3, #0]
d03e017e:	2a00      	cmp	r2, #0
d03e0180:	d048      	beq.n	d03e0214 <testapp_proc+0xc0>
d03e0182:	4d26      	ldr	r5, [pc, #152]	; (d03e021c <testapp_proc+0xc8>)
d03e0184:	2200      	movs	r2, #0
d03e0186:	4c26      	ldr	r4, [pc, #152]	; (d03e0220 <testapp_proc+0xcc>)
d03e0188:	7828      	ldrb	r0, [r5, #0]
d03e018a:	701a      	strb	r2, [r3, #0]
d03e018c:	28ff      	cmp	r0, #255	; 0xff
d03e018e:	d00e      	beq.n	d03e01ae <testapp_proc+0x5a>
d03e0190:	7a23      	ldrb	r3, [r4, #8]
d03e0192:	7a62      	ldrb	r2, [r4, #9]
d03e0194:	7aa1      	ldrb	r1, [r4, #10]
d03e0196:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e019a:	7ae2      	ldrb	r2, [r4, #11]
d03e019c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e01a0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e01a4:	695b      	ldr	r3, [r3, #20]
d03e01a6:	685b      	ldr	r3, [r3, #4]
d03e01a8:	4798      	blx	r3
d03e01aa:	23ff      	movs	r3, #255	; 0xff
d03e01ac:	702b      	strb	r3, [r5, #0]
d03e01ae:	4d1d      	ldr	r5, [pc, #116]	; (d03e0224 <testapp_proc+0xd0>)
d03e01b0:	7828      	ldrb	r0, [r5, #0]
d03e01b2:	b170      	cbz	r0, d03e01d2 <testapp_proc+0x7e>
d03e01b4:	7a23      	ldrb	r3, [r4, #8]
d03e01b6:	7a61      	ldrb	r1, [r4, #9]
d03e01b8:	7aa2      	ldrb	r2, [r4, #10]
d03e01ba:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
d03e01be:	7ae3      	ldrb	r3, [r4, #11]
d03e01c0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e01c4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e01c8:	685b      	ldr	r3, [r3, #4]
d03e01ca:	685b      	ldr	r3, [r3, #4]
d03e01cc:	4798      	blx	r3
d03e01ce:	2300      	movs	r3, #0
d03e01d0:	702b      	strb	r3, [r5, #0]
d03e01d2:	4815      	ldr	r0, [pc, #84]	; (d03e0228 <testapp_proc+0xd4>)
d03e01d4:	6803      	ldr	r3, [r0, #0]
d03e01d6:	b163      	cbz	r3, d03e01f2 <testapp_proc+0x9e>
d03e01d8:	7a23      	ldrb	r3, [r4, #8]
d03e01da:	7a61      	ldrb	r1, [r4, #9]
d03e01dc:	7aa2      	ldrb	r2, [r4, #10]
d03e01de:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
d03e01e2:	7ae3      	ldrb	r3, [r4, #11]
d03e01e4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e01e8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e01ec:	699b      	ldr	r3, [r3, #24]
d03e01ee:	689b      	ldr	r3, [r3, #8]
d03e01f0:	4798      	blx	r3
d03e01f2:	7d23      	ldrb	r3, [r4, #20]
d03e01f4:	7d62      	ldrb	r2, [r4, #21]
d03e01f6:	7da1      	ldrb	r1, [r4, #22]
d03e01f8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e01fc:	7de2      	ldrb	r2, [r4, #23]
d03e01fe:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e0202:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e0206:	685b      	ldr	r3, [r3, #4]
d03e0208:	68db      	ldr	r3, [r3, #12]
d03e020a:	4798      	blx	r3
d03e020c:	20f0      	movs	r0, #240	; 0xf0
d03e020e:	bd38      	pop	{r3, r4, r5, pc}
d03e0210:	4608      	mov	r0, r1
d03e0212:	4770      	bx	lr
d03e0214:	20f0      	movs	r0, #240	; 0xf0
d03e0216:	bd38      	pop	{r3, r4, r5, pc}
d03e0218:	d03e0e0c 	.word	0xd03e0e0c
d03e021c:	d03e0d9c 	.word	0xd03e0d9c
d03e0220:	2001f000 	.word	0x2001f000
d03e0224:	d03e0e15 	.word	0xd03e0e15
d03e0228:	d03e0e10 	.word	0xd03e0e10

d03e022c <main>:
d03e022c:	b5f0      	push	{r4, r5, r6, r7, lr}
d03e022e:	4b3c      	ldr	r3, [pc, #240]	; (d03e0320 <main+0xf4>)
d03e0230:	2201      	movs	r2, #1
d03e0232:	4c3c      	ldr	r4, [pc, #240]	; (d03e0324 <main+0xf8>)
d03e0234:	b085      	sub	sp, #20
d03e0236:	701a      	strb	r2, [r3, #0]
d03e0238:	f240 3e6d 	movw	lr, #877	; 0x36d
d03e023c:	7a20      	ldrb	r0, [r4, #8]
d03e023e:	f04f 0cc8 	mov.w	ip, #200	; 0xc8
d03e0242:	7a65      	ldrb	r5, [r4, #9]
d03e0244:	f44f 7396 	mov.w	r3, #300	; 0x12c
d03e0248:	7aa6      	ldrb	r6, [r4, #10]
d03e024a:	2214      	movs	r2, #20
d03e024c:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
d03e0250:	7ae5      	ldrb	r5, [r4, #11]
d03e0252:	4f35      	ldr	r7, [pc, #212]	; (d03e0328 <main+0xfc>)
d03e0254:	2118      	movs	r1, #24
d03e0256:	ea40 4006 	orr.w	r0, r0, r6, lsl #16
d03e025a:	ea40 6005 	orr.w	r0, r0, r5, lsl #24
d03e025e:	4d33      	ldr	r5, [pc, #204]	; (d03e032c <main+0x100>)
d03e0260:	6846      	ldr	r6, [r0, #4]
d03e0262:	4628      	mov	r0, r5
d03e0264:	f8cd e008 	str.w	lr, [sp, #8]
d03e0268:	f8cd c000 	str.w	ip, [sp]
d03e026c:	9701      	str	r7, [sp, #4]
d03e026e:	6836      	ldr	r6, [r6, #0]
d03e0270:	47b0      	blx	r6
d03e0272:	7a23      	ldrb	r3, [r4, #8]
d03e0274:	7a62      	ldrb	r2, [r4, #9]
d03e0276:	7aa1      	ldrb	r1, [r4, #10]
d03e0278:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e027c:	7ae2      	ldrb	r2, [r4, #11]
d03e027e:	7828      	ldrb	r0, [r5, #0]
d03e0280:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e0284:	492a      	ldr	r1, [pc, #168]	; (d03e0330 <main+0x104>)
d03e0286:	4e2b      	ldr	r6, [pc, #172]	; (d03e0334 <main+0x108>)
d03e0288:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e028c:	685b      	ldr	r3, [r3, #4]
d03e028e:	689b      	ldr	r3, [r3, #8]
d03e0290:	4798      	blx	r3
d03e0292:	7a23      	ldrb	r3, [r4, #8]
d03e0294:	7a62      	ldrb	r2, [r4, #9]
d03e0296:	4639      	mov	r1, r7
d03e0298:	7aa7      	ldrb	r7, [r4, #10]
d03e029a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e029e:	7ae2      	ldrb	r2, [r4, #11]
d03e02a0:	7828      	ldrb	r0, [r5, #0]
d03e02a2:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d03e02a6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e02aa:	685b      	ldr	r3, [r3, #4]
d03e02ac:	699b      	ldr	r3, [r3, #24]
d03e02ae:	4798      	blx	r3
d03e02b0:	7a23      	ldrb	r3, [r4, #8]
d03e02b2:	7a62      	ldrb	r2, [r4, #9]
d03e02b4:	7aa1      	ldrb	r1, [r4, #10]
d03e02b6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e02ba:	7ae2      	ldrb	r2, [r4, #11]
d03e02bc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e02c0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e02c4:	695b      	ldr	r3, [r3, #20]
d03e02c6:	681b      	ldr	r3, [r3, #0]
d03e02c8:	4798      	blx	r3
d03e02ca:	28ff      	cmp	r0, #255	; 0xff
d03e02cc:	7030      	strb	r0, [r6, #0]
d03e02ce:	d035      	beq.n	d03e033c <main+0x110>
d03e02d0:	f894 c008 	ldrb.w	ip, [r4, #8]
d03e02d4:	f04f 0e00 	mov.w	lr, #0
d03e02d8:	7a61      	ldrb	r1, [r4, #9]
d03e02da:	2214      	movs	r2, #20
d03e02dc:	7aa3      	ldrb	r3, [r4, #10]
d03e02de:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d03e02e2:	7ae7      	ldrb	r7, [r4, #11]
d03e02e4:	ea41 4303 	orr.w	r3, r1, r3, lsl #16
d03e02e8:	4611      	mov	r1, r2
d03e02ea:	ea43 6707 	orr.w	r7, r3, r7, lsl #24
d03e02ee:	4b12      	ldr	r3, [pc, #72]	; (d03e0338 <main+0x10c>)
d03e02f0:	697f      	ldr	r7, [r7, #20]
d03e02f2:	f8cd e000 	str.w	lr, [sp]
d03e02f6:	68bf      	ldr	r7, [r7, #8]
d03e02f8:	47b8      	blx	r7
d03e02fa:	b1f8      	cbz	r0, d03e033c <main+0x110>
d03e02fc:	7a20      	ldrb	r0, [r4, #8]
d03e02fe:	7a61      	ldrb	r1, [r4, #9]
d03e0300:	7aa2      	ldrb	r2, [r4, #10]
d03e0302:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d03e0306:	7ae3      	ldrb	r3, [r4, #11]
d03e0308:	7830      	ldrb	r0, [r6, #0]
d03e030a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d03e030e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d03e0312:	695b      	ldr	r3, [r3, #20]
d03e0314:	685b      	ldr	r3, [r3, #4]
d03e0316:	4798      	blx	r3
d03e0318:	23ff      	movs	r3, #255	; 0xff
d03e031a:	7033      	strb	r3, [r6, #0]
d03e031c:	e00e      	b.n	d03e033c <main+0x110>
d03e031e:	bf00      	nop
d03e0320:	d03e0e0c 	.word	0xd03e0e0c
d03e0324:	2001f000 	.word	0x2001f000
d03e0328:	d03e0d18 	.word	0xd03e0d18
d03e032c:	d03e0e15 	.word	0xd03e0e15
d03e0330:	d03e0155 	.word	0xd03e0155
d03e0334:	d03e0d9c 	.word	0xd03e0d9c
d03e0338:	d03e0109 	.word	0xd03e0109
d03e033c:	7a23      	ldrb	r3, [r4, #8]
d03e033e:	7a62      	ldrb	r2, [r4, #9]
d03e0340:	7aa1      	ldrb	r1, [r4, #10]
d03e0342:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e0346:	7ae2      	ldrb	r2, [r4, #11]
d03e0348:	7828      	ldrb	r0, [r5, #0]
d03e034a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e034e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e0352:	685b      	ldr	r3, [r3, #4]
d03e0354:	68db      	ldr	r3, [r3, #12]
d03e0356:	4798      	blx	r3
d03e0358:	7a23      	ldrb	r3, [r4, #8]
d03e035a:	7a62      	ldrb	r2, [r4, #9]
d03e035c:	7aa1      	ldrb	r1, [r4, #10]
d03e035e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e0362:	7ae2      	ldrb	r2, [r4, #11]
d03e0364:	7828      	ldrb	r0, [r5, #0]
d03e0366:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e036a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e036e:	685b      	ldr	r3, [r3, #4]
d03e0370:	695b      	ldr	r3, [r3, #20]
d03e0372:	4798      	blx	r3
d03e0374:	7d23      	ldrb	r3, [r4, #20]
d03e0376:	7d62      	ldrb	r2, [r4, #21]
d03e0378:	7da1      	ldrb	r1, [r4, #22]
d03e037a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d03e037e:	7de2      	ldrb	r2, [r4, #23]
d03e0380:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d03e0384:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d03e0388:	681b      	ldr	r3, [r3, #0]
d03e038a:	699b      	ldr	r3, [r3, #24]
d03e038c:	4798      	blx	r3
d03e038e:	7d23      	ldrb	r3, [r4, #20]
d03e0390:	7d65      	ldrb	r5, [r4, #21]
d03e0392:	220f      	movs	r2, #15
d03e0394:	7da0      	ldrb	r0, [r4, #22]
d03e0396:	2118      	movs	r1, #24
d03e0398:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d03e039c:	7de5      	ldrb	r5, [r4, #23]
d03e039e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03e03a2:	2000      	movs	r0, #0
d03e03a4:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d03e03a8:	681b      	ldr	r3, [r3, #0]
d03e03aa:	69db      	ldr	r3, [r3, #28]
d03e03ac:	4798      	blx	r3
d03e03ae:	7d23      	ldrb	r3, [r4, #20]
d03e03b0:	7d65      	ldrb	r5, [r4, #21]
d03e03b2:	220f      	movs	r2, #15
d03e03b4:	7da0      	ldrb	r0, [r4, #22]
d03e03b6:	2118      	movs	r1, #24
d03e03b8:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d03e03bc:	7de5      	ldrb	r5, [r4, #23]
d03e03be:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03e03c2:	2001      	movs	r0, #1
d03e03c4:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d03e03c8:	681b      	ldr	r3, [r3, #0]
d03e03ca:	69db      	ldr	r3, [r3, #28]
d03e03cc:	4798      	blx	r3
d03e03ce:	7d23      	ldrb	r3, [r4, #20]
d03e03d0:	7d65      	ldrb	r5, [r4, #21]
d03e03d2:	2100      	movs	r1, #0
d03e03d4:	7da0      	ldrb	r0, [r4, #22]
d03e03d6:	222f      	movs	r2, #47	; 0x2f
d03e03d8:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d03e03dc:	7de5      	ldrb	r5, [r4, #23]
d03e03de:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03e03e2:	4608      	mov	r0, r1
d03e03e4:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d03e03e8:	681b      	ldr	r3, [r3, #0]
d03e03ea:	69db      	ldr	r3, [r3, #28]
d03e03ec:	4798      	blx	r3
d03e03ee:	7d23      	ldrb	r3, [r4, #20]
d03e03f0:	7d65      	ldrb	r5, [r4, #21]
d03e03f2:	222f      	movs	r2, #47	; 0x2f
d03e03f4:	7da0      	ldrb	r0, [r4, #22]
d03e03f6:	2101      	movs	r1, #1
d03e03f8:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d03e03fc:	7de5      	ldrb	r5, [r4, #23]
d03e03fe:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03e0402:	2000      	movs	r0, #0
d03e0404:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d03e0408:	681b      	ldr	r3, [r3, #0]
d03e040a:	69db      	ldr	r3, [r3, #28]
d03e040c:	4798      	blx	r3
d03e040e:	7d23      	ldrb	r3, [r4, #20]
d03e0410:	7d65      	ldrb	r5, [r4, #21]
d03e0412:	2222      	movs	r2, #34	; 0x22
d03e0414:	7da0      	ldrb	r0, [r4, #22]
d03e0416:	2105      	movs	r1, #5
d03e0418:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d03e041c:	7de5      	ldrb	r5, [r4, #23]
d03e041e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03e0422:	2000      	movs	r0, #0
d03e0424:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d03e0428:	681b      	ldr	r3, [r3, #0]
d03e042a:	69db      	ldr	r3, [r3, #28]
d03e042c:	4798      	blx	r3
d03e042e:	7d23      	ldrb	r3, [r4, #20]
d03e0430:	7d65      	ldrb	r5, [r4, #21]
d03e0432:	2222      	movs	r2, #34	; 0x22
d03e0434:	7da0      	ldrb	r0, [r4, #22]
d03e0436:	2106      	movs	r1, #6
d03e0438:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d03e043c:	7de5      	ldrb	r5, [r4, #23]
d03e043e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03e0442:	2000      	movs	r0, #0
d03e0444:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d03e0448:	681b      	ldr	r3, [r3, #0]
d03e044a:	69db      	ldr	r3, [r3, #28]
d03e044c:	4798      	blx	r3
d03e044e:	7d23      	ldrb	r3, [r4, #20]
d03e0450:	7d65      	ldrb	r5, [r4, #21]
d03e0452:	2211      	movs	r2, #17
d03e0454:	7da0      	ldrb	r0, [r4, #22]
d03e0456:	2104      	movs	r1, #4
d03e0458:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d03e045c:	7de5      	ldrb	r5, [r4, #23]
d03e045e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03e0462:	2000      	movs	r0, #0
d03e0464:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d03e0468:	681b      	ldr	r3, [r3, #0]
d03e046a:	69db      	ldr	r3, [r3, #28]
d03e046c:	4798      	blx	r3
d03e046e:	7d23      	ldrb	r3, [r4, #20]
d03e0470:	7d65      	ldrb	r5, [r4, #21]
d03e0472:	2210      	movs	r2, #16
d03e0474:	7da0      	ldrb	r0, [r4, #22]
d03e0476:	210b      	movs	r1, #11
d03e0478:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d03e047c:	7de5      	ldrb	r5, [r4, #23]
d03e047e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03e0482:	2000      	movs	r0, #0
d03e0484:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d03e0488:	681b      	ldr	r3, [r3, #0]
d03e048a:	69db      	ldr	r3, [r3, #28]
d03e048c:	4798      	blx	r3
d03e048e:	7d23      	ldrb	r3, [r4, #20]
d03e0490:	7d65      	ldrb	r5, [r4, #21]
d03e0492:	2210      	movs	r2, #16
d03e0494:	7da0      	ldrb	r0, [r4, #22]
d03e0496:	2112      	movs	r1, #18
d03e0498:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d03e049c:	7de5      	ldrb	r5, [r4, #23]
d03e049e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03e04a2:	2000      	movs	r0, #0
d03e04a4:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d03e04a8:	681b      	ldr	r3, [r3, #0]
d03e04aa:	69db      	ldr	r3, [r3, #28]
d03e04ac:	4798      	blx	r3
d03e04ae:	7d23      	ldrb	r3, [r4, #20]
d03e04b0:	7d65      	ldrb	r5, [r4, #21]
d03e04b2:	2210      	movs	r2, #16
d03e04b4:	7da0      	ldrb	r0, [r4, #22]
d03e04b6:	2104      	movs	r1, #4
d03e04b8:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d03e04bc:	7de5      	ldrb	r5, [r4, #23]
d03e04be:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03e04c2:	2001      	movs	r0, #1
d03e04c4:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d03e04c8:	681b      	ldr	r3, [r3, #0]
d03e04ca:	69db      	ldr	r3, [r3, #28]
d03e04cc:	4798      	blx	r3
d03e04ce:	7d23      	ldrb	r3, [r4, #20]
d03e04d0:	7d65      	ldrb	r5, [r4, #21]
d03e04d2:	2210      	movs	r2, #16
d03e04d4:	7da0      	ldrb	r0, [r4, #22]
d03e04d6:	210b      	movs	r1, #11
d03e04d8:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d03e04dc:	7de5      	ldrb	r5, [r4, #23]
d03e04de:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d03e04e2:	2001      	movs	r0, #1
d03e04e4:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d03e04e8:	681b      	ldr	r3, [r3, #0]
d03e04ea:	69db      	ldr	r3, [r3, #28]
d03e04ec:	4798      	blx	r3
d03e04ee:	7d23      	ldrb	r3, [r4, #20]
d03e04f0:	7d60      	ldrb	r0, [r4, #21]
d03e04f2:	2210      	movs	r2, #16
d03e04f4:	7da5      	ldrb	r5, [r4, #22]
d03e04f6:	2112      	movs	r1, #18
d03e04f8:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d03e04fc:	7de4      	ldrb	r4, [r4, #23]
d03e04fe:	2001      	movs	r0, #1
d03e0500:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d03e0504:	ea43 6304 	orr.w	r3, r3, r4, lsl #24
d03e0508:	681b      	ldr	r3, [r3, #0]
d03e050a:	69db      	ldr	r3, [r3, #28]
d03e050c:	4798      	blx	r3
d03e050e:	2000      	movs	r0, #0
d03e0510:	b005      	add	sp, #20
d03e0512:	bdf0      	pop	{r4, r5, r6, r7, pc}

d03e0514 <__errno>:
d03e0514:	4b01      	ldr	r3, [pc, #4]	; (d03e051c <__errno+0x8>)
d03e0516:	6818      	ldr	r0, [r3, #0]
d03e0518:	4770      	bx	lr
d03e051a:	bf00      	nop
d03e051c:	d03e0da0 	.word	0xd03e0da0

d03e0520 <memset>:
d03e0520:	4402      	add	r2, r0
d03e0522:	4603      	mov	r3, r0
d03e0524:	4293      	cmp	r3, r2
d03e0526:	d100      	bne.n	d03e052a <memset+0xa>
d03e0528:	4770      	bx	lr
d03e052a:	f803 1b01 	strb.w	r1, [r3], #1
d03e052e:	e7f9      	b.n	d03e0524 <memset+0x4>

d03e0530 <setbuf>:
d03e0530:	2900      	cmp	r1, #0
d03e0532:	f44f 6380 	mov.w	r3, #1024	; 0x400
d03e0536:	bf0c      	ite	eq
d03e0538:	2202      	moveq	r2, #2
d03e053a:	2200      	movne	r2, #0
d03e053c:	f000 b800 	b.w	d03e0540 <setvbuf>

d03e0540 <setvbuf>:
d03e0540:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d03e0544:	461d      	mov	r5, r3
d03e0546:	4b5d      	ldr	r3, [pc, #372]	; (d03e06bc <setvbuf+0x17c>)
d03e0548:	681f      	ldr	r7, [r3, #0]
d03e054a:	4604      	mov	r4, r0
d03e054c:	460e      	mov	r6, r1
d03e054e:	4690      	mov	r8, r2
d03e0550:	b127      	cbz	r7, d03e055c <setvbuf+0x1c>
d03e0552:	69bb      	ldr	r3, [r7, #24]
d03e0554:	b913      	cbnz	r3, d03e055c <setvbuf+0x1c>
d03e0556:	4638      	mov	r0, r7
d03e0558:	f000 f9d2 	bl	d03e0900 <__sinit>
d03e055c:	4b58      	ldr	r3, [pc, #352]	; (d03e06c0 <setvbuf+0x180>)
d03e055e:	429c      	cmp	r4, r3
d03e0560:	d167      	bne.n	d03e0632 <setvbuf+0xf2>
d03e0562:	687c      	ldr	r4, [r7, #4]
d03e0564:	f1b8 0f02 	cmp.w	r8, #2
d03e0568:	d006      	beq.n	d03e0578 <setvbuf+0x38>
d03e056a:	f1b8 0f01 	cmp.w	r8, #1
d03e056e:	f200 809f 	bhi.w	d03e06b0 <setvbuf+0x170>
d03e0572:	2d00      	cmp	r5, #0
d03e0574:	f2c0 809c 	blt.w	d03e06b0 <setvbuf+0x170>
d03e0578:	6e63      	ldr	r3, [r4, #100]	; 0x64
d03e057a:	07db      	lsls	r3, r3, #31
d03e057c:	d405      	bmi.n	d03e058a <setvbuf+0x4a>
d03e057e:	89a3      	ldrh	r3, [r4, #12]
d03e0580:	0598      	lsls	r0, r3, #22
d03e0582:	d402      	bmi.n	d03e058a <setvbuf+0x4a>
d03e0584:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03e0586:	f000 fa59 	bl	d03e0a3c <__retarget_lock_acquire_recursive>
d03e058a:	4621      	mov	r1, r4
d03e058c:	4638      	mov	r0, r7
d03e058e:	f000 f923 	bl	d03e07d8 <_fflush_r>
d03e0592:	6b61      	ldr	r1, [r4, #52]	; 0x34
d03e0594:	b141      	cbz	r1, d03e05a8 <setvbuf+0x68>
d03e0596:	f104 0344 	add.w	r3, r4, #68	; 0x44
d03e059a:	4299      	cmp	r1, r3
d03e059c:	d002      	beq.n	d03e05a4 <setvbuf+0x64>
d03e059e:	4638      	mov	r0, r7
d03e05a0:	f000 fa7a 	bl	d03e0a98 <_free_r>
d03e05a4:	2300      	movs	r3, #0
d03e05a6:	6363      	str	r3, [r4, #52]	; 0x34
d03e05a8:	2300      	movs	r3, #0
d03e05aa:	61a3      	str	r3, [r4, #24]
d03e05ac:	6063      	str	r3, [r4, #4]
d03e05ae:	89a3      	ldrh	r3, [r4, #12]
d03e05b0:	0619      	lsls	r1, r3, #24
d03e05b2:	d503      	bpl.n	d03e05bc <setvbuf+0x7c>
d03e05b4:	6921      	ldr	r1, [r4, #16]
d03e05b6:	4638      	mov	r0, r7
d03e05b8:	f000 fa6e 	bl	d03e0a98 <_free_r>
d03e05bc:	89a3      	ldrh	r3, [r4, #12]
d03e05be:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d03e05c2:	f023 0303 	bic.w	r3, r3, #3
d03e05c6:	f1b8 0f02 	cmp.w	r8, #2
d03e05ca:	81a3      	strh	r3, [r4, #12]
d03e05cc:	d06c      	beq.n	d03e06a8 <setvbuf+0x168>
d03e05ce:	ab01      	add	r3, sp, #4
d03e05d0:	466a      	mov	r2, sp
d03e05d2:	4621      	mov	r1, r4
d03e05d4:	4638      	mov	r0, r7
d03e05d6:	f000 fa33 	bl	d03e0a40 <__swhatbuf_r>
d03e05da:	89a3      	ldrh	r3, [r4, #12]
d03e05dc:	4318      	orrs	r0, r3
d03e05de:	81a0      	strh	r0, [r4, #12]
d03e05e0:	2d00      	cmp	r5, #0
d03e05e2:	d130      	bne.n	d03e0646 <setvbuf+0x106>
d03e05e4:	9d00      	ldr	r5, [sp, #0]
d03e05e6:	4628      	mov	r0, r5
d03e05e8:	f000 fa4e 	bl	d03e0a88 <malloc>
d03e05ec:	4606      	mov	r6, r0
d03e05ee:	2800      	cmp	r0, #0
d03e05f0:	d155      	bne.n	d03e069e <setvbuf+0x15e>
d03e05f2:	f8dd 9000 	ldr.w	r9, [sp]
d03e05f6:	45a9      	cmp	r9, r5
d03e05f8:	d14a      	bne.n	d03e0690 <setvbuf+0x150>
d03e05fa:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d03e05fe:	2200      	movs	r2, #0
d03e0600:	60a2      	str	r2, [r4, #8]
d03e0602:	f104 0247 	add.w	r2, r4, #71	; 0x47
d03e0606:	6022      	str	r2, [r4, #0]
d03e0608:	6122      	str	r2, [r4, #16]
d03e060a:	2201      	movs	r2, #1
d03e060c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d03e0610:	6162      	str	r2, [r4, #20]
d03e0612:	6e62      	ldr	r2, [r4, #100]	; 0x64
d03e0614:	f043 0302 	orr.w	r3, r3, #2
d03e0618:	07d2      	lsls	r2, r2, #31
d03e061a:	81a3      	strh	r3, [r4, #12]
d03e061c:	d405      	bmi.n	d03e062a <setvbuf+0xea>
d03e061e:	f413 7f00 	tst.w	r3, #512	; 0x200
d03e0622:	d102      	bne.n	d03e062a <setvbuf+0xea>
d03e0624:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03e0626:	f000 fa0a 	bl	d03e0a3e <__retarget_lock_release_recursive>
d03e062a:	4628      	mov	r0, r5
d03e062c:	b003      	add	sp, #12
d03e062e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d03e0632:	4b24      	ldr	r3, [pc, #144]	; (d03e06c4 <setvbuf+0x184>)
d03e0634:	429c      	cmp	r4, r3
d03e0636:	d101      	bne.n	d03e063c <setvbuf+0xfc>
d03e0638:	68bc      	ldr	r4, [r7, #8]
d03e063a:	e793      	b.n	d03e0564 <setvbuf+0x24>
d03e063c:	4b22      	ldr	r3, [pc, #136]	; (d03e06c8 <setvbuf+0x188>)
d03e063e:	429c      	cmp	r4, r3
d03e0640:	bf08      	it	eq
d03e0642:	68fc      	ldreq	r4, [r7, #12]
d03e0644:	e78e      	b.n	d03e0564 <setvbuf+0x24>
d03e0646:	2e00      	cmp	r6, #0
d03e0648:	d0cd      	beq.n	d03e05e6 <setvbuf+0xa6>
d03e064a:	69bb      	ldr	r3, [r7, #24]
d03e064c:	b913      	cbnz	r3, d03e0654 <setvbuf+0x114>
d03e064e:	4638      	mov	r0, r7
d03e0650:	f000 f956 	bl	d03e0900 <__sinit>
d03e0654:	f1b8 0f01 	cmp.w	r8, #1
d03e0658:	bf08      	it	eq
d03e065a:	89a3      	ldrheq	r3, [r4, #12]
d03e065c:	6026      	str	r6, [r4, #0]
d03e065e:	bf04      	itt	eq
d03e0660:	f043 0301 	orreq.w	r3, r3, #1
d03e0664:	81a3      	strheq	r3, [r4, #12]
d03e0666:	89a2      	ldrh	r2, [r4, #12]
d03e0668:	f012 0308 	ands.w	r3, r2, #8
d03e066c:	e9c4 6504 	strd	r6, r5, [r4, #16]
d03e0670:	d01c      	beq.n	d03e06ac <setvbuf+0x16c>
d03e0672:	07d3      	lsls	r3, r2, #31
d03e0674:	bf41      	itttt	mi
d03e0676:	2300      	movmi	r3, #0
d03e0678:	426d      	negmi	r5, r5
d03e067a:	60a3      	strmi	r3, [r4, #8]
d03e067c:	61a5      	strmi	r5, [r4, #24]
d03e067e:	bf58      	it	pl
d03e0680:	60a5      	strpl	r5, [r4, #8]
d03e0682:	6e65      	ldr	r5, [r4, #100]	; 0x64
d03e0684:	f015 0501 	ands.w	r5, r5, #1
d03e0688:	d115      	bne.n	d03e06b6 <setvbuf+0x176>
d03e068a:	f412 7f00 	tst.w	r2, #512	; 0x200
d03e068e:	e7c8      	b.n	d03e0622 <setvbuf+0xe2>
d03e0690:	4648      	mov	r0, r9
d03e0692:	f000 f9f9 	bl	d03e0a88 <malloc>
d03e0696:	4606      	mov	r6, r0
d03e0698:	2800      	cmp	r0, #0
d03e069a:	d0ae      	beq.n	d03e05fa <setvbuf+0xba>
d03e069c:	464d      	mov	r5, r9
d03e069e:	89a3      	ldrh	r3, [r4, #12]
d03e06a0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d03e06a4:	81a3      	strh	r3, [r4, #12]
d03e06a6:	e7d0      	b.n	d03e064a <setvbuf+0x10a>
d03e06a8:	2500      	movs	r5, #0
d03e06aa:	e7a8      	b.n	d03e05fe <setvbuf+0xbe>
d03e06ac:	60a3      	str	r3, [r4, #8]
d03e06ae:	e7e8      	b.n	d03e0682 <setvbuf+0x142>
d03e06b0:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d03e06b4:	e7b9      	b.n	d03e062a <setvbuf+0xea>
d03e06b6:	2500      	movs	r5, #0
d03e06b8:	e7b7      	b.n	d03e062a <setvbuf+0xea>
d03e06ba:	bf00      	nop
d03e06bc:	d03e0da0 	.word	0xd03e0da0
d03e06c0:	d03e0d54 	.word	0xd03e0d54
d03e06c4:	d03e0d74 	.word	0xd03e0d74
d03e06c8:	d03e0d34 	.word	0xd03e0d34

d03e06cc <__sflush_r>:
d03e06cc:	898a      	ldrh	r2, [r1, #12]
d03e06ce:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03e06d2:	4605      	mov	r5, r0
d03e06d4:	0710      	lsls	r0, r2, #28
d03e06d6:	460c      	mov	r4, r1
d03e06d8:	d458      	bmi.n	d03e078c <__sflush_r+0xc0>
d03e06da:	684b      	ldr	r3, [r1, #4]
d03e06dc:	2b00      	cmp	r3, #0
d03e06de:	dc05      	bgt.n	d03e06ec <__sflush_r+0x20>
d03e06e0:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d03e06e2:	2b00      	cmp	r3, #0
d03e06e4:	dc02      	bgt.n	d03e06ec <__sflush_r+0x20>
d03e06e6:	2000      	movs	r0, #0
d03e06e8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d03e06ec:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d03e06ee:	2e00      	cmp	r6, #0
d03e06f0:	d0f9      	beq.n	d03e06e6 <__sflush_r+0x1a>
d03e06f2:	2300      	movs	r3, #0
d03e06f4:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d03e06f8:	682f      	ldr	r7, [r5, #0]
d03e06fa:	602b      	str	r3, [r5, #0]
d03e06fc:	d032      	beq.n	d03e0764 <__sflush_r+0x98>
d03e06fe:	6d60      	ldr	r0, [r4, #84]	; 0x54
d03e0700:	89a3      	ldrh	r3, [r4, #12]
d03e0702:	075a      	lsls	r2, r3, #29
d03e0704:	d505      	bpl.n	d03e0712 <__sflush_r+0x46>
d03e0706:	6863      	ldr	r3, [r4, #4]
d03e0708:	1ac0      	subs	r0, r0, r3
d03e070a:	6b63      	ldr	r3, [r4, #52]	; 0x34
d03e070c:	b10b      	cbz	r3, d03e0712 <__sflush_r+0x46>
d03e070e:	6c23      	ldr	r3, [r4, #64]	; 0x40
d03e0710:	1ac0      	subs	r0, r0, r3
d03e0712:	2300      	movs	r3, #0
d03e0714:	4602      	mov	r2, r0
d03e0716:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d03e0718:	6a21      	ldr	r1, [r4, #32]
d03e071a:	4628      	mov	r0, r5
d03e071c:	47b0      	blx	r6
d03e071e:	1c43      	adds	r3, r0, #1
d03e0720:	89a3      	ldrh	r3, [r4, #12]
d03e0722:	d106      	bne.n	d03e0732 <__sflush_r+0x66>
d03e0724:	6829      	ldr	r1, [r5, #0]
d03e0726:	291d      	cmp	r1, #29
d03e0728:	d82c      	bhi.n	d03e0784 <__sflush_r+0xb8>
d03e072a:	4a2a      	ldr	r2, [pc, #168]	; (d03e07d4 <__sflush_r+0x108>)
d03e072c:	40ca      	lsrs	r2, r1
d03e072e:	07d6      	lsls	r6, r2, #31
d03e0730:	d528      	bpl.n	d03e0784 <__sflush_r+0xb8>
d03e0732:	2200      	movs	r2, #0
d03e0734:	6062      	str	r2, [r4, #4]
d03e0736:	04d9      	lsls	r1, r3, #19
d03e0738:	6922      	ldr	r2, [r4, #16]
d03e073a:	6022      	str	r2, [r4, #0]
d03e073c:	d504      	bpl.n	d03e0748 <__sflush_r+0x7c>
d03e073e:	1c42      	adds	r2, r0, #1
d03e0740:	d101      	bne.n	d03e0746 <__sflush_r+0x7a>
d03e0742:	682b      	ldr	r3, [r5, #0]
d03e0744:	b903      	cbnz	r3, d03e0748 <__sflush_r+0x7c>
d03e0746:	6560      	str	r0, [r4, #84]	; 0x54
d03e0748:	6b61      	ldr	r1, [r4, #52]	; 0x34
d03e074a:	602f      	str	r7, [r5, #0]
d03e074c:	2900      	cmp	r1, #0
d03e074e:	d0ca      	beq.n	d03e06e6 <__sflush_r+0x1a>
d03e0750:	f104 0344 	add.w	r3, r4, #68	; 0x44
d03e0754:	4299      	cmp	r1, r3
d03e0756:	d002      	beq.n	d03e075e <__sflush_r+0x92>
d03e0758:	4628      	mov	r0, r5
d03e075a:	f000 f99d 	bl	d03e0a98 <_free_r>
d03e075e:	2000      	movs	r0, #0
d03e0760:	6360      	str	r0, [r4, #52]	; 0x34
d03e0762:	e7c1      	b.n	d03e06e8 <__sflush_r+0x1c>
d03e0764:	6a21      	ldr	r1, [r4, #32]
d03e0766:	2301      	movs	r3, #1
d03e0768:	4628      	mov	r0, r5
d03e076a:	47b0      	blx	r6
d03e076c:	1c41      	adds	r1, r0, #1
d03e076e:	d1c7      	bne.n	d03e0700 <__sflush_r+0x34>
d03e0770:	682b      	ldr	r3, [r5, #0]
d03e0772:	2b00      	cmp	r3, #0
d03e0774:	d0c4      	beq.n	d03e0700 <__sflush_r+0x34>
d03e0776:	2b1d      	cmp	r3, #29
d03e0778:	d001      	beq.n	d03e077e <__sflush_r+0xb2>
d03e077a:	2b16      	cmp	r3, #22
d03e077c:	d101      	bne.n	d03e0782 <__sflush_r+0xb6>
d03e077e:	602f      	str	r7, [r5, #0]
d03e0780:	e7b1      	b.n	d03e06e6 <__sflush_r+0x1a>
d03e0782:	89a3      	ldrh	r3, [r4, #12]
d03e0784:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d03e0788:	81a3      	strh	r3, [r4, #12]
d03e078a:	e7ad      	b.n	d03e06e8 <__sflush_r+0x1c>
d03e078c:	690f      	ldr	r7, [r1, #16]
d03e078e:	2f00      	cmp	r7, #0
d03e0790:	d0a9      	beq.n	d03e06e6 <__sflush_r+0x1a>
d03e0792:	0793      	lsls	r3, r2, #30
d03e0794:	680e      	ldr	r6, [r1, #0]
d03e0796:	bf08      	it	eq
d03e0798:	694b      	ldreq	r3, [r1, #20]
d03e079a:	600f      	str	r7, [r1, #0]
d03e079c:	bf18      	it	ne
d03e079e:	2300      	movne	r3, #0
d03e07a0:	eba6 0807 	sub.w	r8, r6, r7
d03e07a4:	608b      	str	r3, [r1, #8]
d03e07a6:	f1b8 0f00 	cmp.w	r8, #0
d03e07aa:	dd9c      	ble.n	d03e06e6 <__sflush_r+0x1a>
d03e07ac:	6a21      	ldr	r1, [r4, #32]
d03e07ae:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d03e07b0:	4643      	mov	r3, r8
d03e07b2:	463a      	mov	r2, r7
d03e07b4:	4628      	mov	r0, r5
d03e07b6:	47b0      	blx	r6
d03e07b8:	2800      	cmp	r0, #0
d03e07ba:	dc06      	bgt.n	d03e07ca <__sflush_r+0xfe>
d03e07bc:	89a3      	ldrh	r3, [r4, #12]
d03e07be:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d03e07c2:	81a3      	strh	r3, [r4, #12]
d03e07c4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d03e07c8:	e78e      	b.n	d03e06e8 <__sflush_r+0x1c>
d03e07ca:	4407      	add	r7, r0
d03e07cc:	eba8 0800 	sub.w	r8, r8, r0
d03e07d0:	e7e9      	b.n	d03e07a6 <__sflush_r+0xda>
d03e07d2:	bf00      	nop
d03e07d4:	20400001 	.word	0x20400001

d03e07d8 <_fflush_r>:
d03e07d8:	b538      	push	{r3, r4, r5, lr}
d03e07da:	690b      	ldr	r3, [r1, #16]
d03e07dc:	4605      	mov	r5, r0
d03e07de:	460c      	mov	r4, r1
d03e07e0:	b913      	cbnz	r3, d03e07e8 <_fflush_r+0x10>
d03e07e2:	2500      	movs	r5, #0
d03e07e4:	4628      	mov	r0, r5
d03e07e6:	bd38      	pop	{r3, r4, r5, pc}
d03e07e8:	b118      	cbz	r0, d03e07f2 <_fflush_r+0x1a>
d03e07ea:	6983      	ldr	r3, [r0, #24]
d03e07ec:	b90b      	cbnz	r3, d03e07f2 <_fflush_r+0x1a>
d03e07ee:	f000 f887 	bl	d03e0900 <__sinit>
d03e07f2:	4b14      	ldr	r3, [pc, #80]	; (d03e0844 <_fflush_r+0x6c>)
d03e07f4:	429c      	cmp	r4, r3
d03e07f6:	d11b      	bne.n	d03e0830 <_fflush_r+0x58>
d03e07f8:	686c      	ldr	r4, [r5, #4]
d03e07fa:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d03e07fe:	2b00      	cmp	r3, #0
d03e0800:	d0ef      	beq.n	d03e07e2 <_fflush_r+0xa>
d03e0802:	6e62      	ldr	r2, [r4, #100]	; 0x64
d03e0804:	07d0      	lsls	r0, r2, #31
d03e0806:	d404      	bmi.n	d03e0812 <_fflush_r+0x3a>
d03e0808:	0599      	lsls	r1, r3, #22
d03e080a:	d402      	bmi.n	d03e0812 <_fflush_r+0x3a>
d03e080c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03e080e:	f000 f915 	bl	d03e0a3c <__retarget_lock_acquire_recursive>
d03e0812:	4628      	mov	r0, r5
d03e0814:	4621      	mov	r1, r4
d03e0816:	f7ff ff59 	bl	d03e06cc <__sflush_r>
d03e081a:	6e63      	ldr	r3, [r4, #100]	; 0x64
d03e081c:	07da      	lsls	r2, r3, #31
d03e081e:	4605      	mov	r5, r0
d03e0820:	d4e0      	bmi.n	d03e07e4 <_fflush_r+0xc>
d03e0822:	89a3      	ldrh	r3, [r4, #12]
d03e0824:	059b      	lsls	r3, r3, #22
d03e0826:	d4dd      	bmi.n	d03e07e4 <_fflush_r+0xc>
d03e0828:	6da0      	ldr	r0, [r4, #88]	; 0x58
d03e082a:	f000 f908 	bl	d03e0a3e <__retarget_lock_release_recursive>
d03e082e:	e7d9      	b.n	d03e07e4 <_fflush_r+0xc>
d03e0830:	4b05      	ldr	r3, [pc, #20]	; (d03e0848 <_fflush_r+0x70>)
d03e0832:	429c      	cmp	r4, r3
d03e0834:	d101      	bne.n	d03e083a <_fflush_r+0x62>
d03e0836:	68ac      	ldr	r4, [r5, #8]
d03e0838:	e7df      	b.n	d03e07fa <_fflush_r+0x22>
d03e083a:	4b04      	ldr	r3, [pc, #16]	; (d03e084c <_fflush_r+0x74>)
d03e083c:	429c      	cmp	r4, r3
d03e083e:	bf08      	it	eq
d03e0840:	68ec      	ldreq	r4, [r5, #12]
d03e0842:	e7da      	b.n	d03e07fa <_fflush_r+0x22>
d03e0844:	d03e0d54 	.word	0xd03e0d54
d03e0848:	d03e0d74 	.word	0xd03e0d74
d03e084c:	d03e0d34 	.word	0xd03e0d34

d03e0850 <std>:
d03e0850:	2300      	movs	r3, #0
d03e0852:	b510      	push	{r4, lr}
d03e0854:	4604      	mov	r4, r0
d03e0856:	e9c0 3300 	strd	r3, r3, [r0]
d03e085a:	e9c0 3304 	strd	r3, r3, [r0, #16]
d03e085e:	6083      	str	r3, [r0, #8]
d03e0860:	8181      	strh	r1, [r0, #12]
d03e0862:	6643      	str	r3, [r0, #100]	; 0x64
d03e0864:	81c2      	strh	r2, [r0, #14]
d03e0866:	6183      	str	r3, [r0, #24]
d03e0868:	4619      	mov	r1, r3
d03e086a:	2208      	movs	r2, #8
d03e086c:	305c      	adds	r0, #92	; 0x5c
d03e086e:	f7ff fe57 	bl	d03e0520 <memset>
d03e0872:	4b05      	ldr	r3, [pc, #20]	; (d03e0888 <std+0x38>)
d03e0874:	6263      	str	r3, [r4, #36]	; 0x24
d03e0876:	4b05      	ldr	r3, [pc, #20]	; (d03e088c <std+0x3c>)
d03e0878:	62a3      	str	r3, [r4, #40]	; 0x28
d03e087a:	4b05      	ldr	r3, [pc, #20]	; (d03e0890 <std+0x40>)
d03e087c:	62e3      	str	r3, [r4, #44]	; 0x2c
d03e087e:	4b05      	ldr	r3, [pc, #20]	; (d03e0894 <std+0x44>)
d03e0880:	6224      	str	r4, [r4, #32]
d03e0882:	6323      	str	r3, [r4, #48]	; 0x30
d03e0884:	bd10      	pop	{r4, pc}
d03e0886:	bf00      	nop
d03e0888:	d03e0bed 	.word	0xd03e0bed
d03e088c:	d03e0c0f 	.word	0xd03e0c0f
d03e0890:	d03e0c47 	.word	0xd03e0c47
d03e0894:	d03e0c6b 	.word	0xd03e0c6b

d03e0898 <_cleanup_r>:
d03e0898:	4901      	ldr	r1, [pc, #4]	; (d03e08a0 <_cleanup_r+0x8>)
d03e089a:	f000 b8af 	b.w	d03e09fc <_fwalk_reent>
d03e089e:	bf00      	nop
d03e08a0:	d03e07d9 	.word	0xd03e07d9

d03e08a4 <__sfmoreglue>:
d03e08a4:	b570      	push	{r4, r5, r6, lr}
d03e08a6:	1e4a      	subs	r2, r1, #1
d03e08a8:	2568      	movs	r5, #104	; 0x68
d03e08aa:	4355      	muls	r5, r2
d03e08ac:	460e      	mov	r6, r1
d03e08ae:	f105 0174 	add.w	r1, r5, #116	; 0x74
d03e08b2:	f000 f941 	bl	d03e0b38 <_malloc_r>
d03e08b6:	4604      	mov	r4, r0
d03e08b8:	b140      	cbz	r0, d03e08cc <__sfmoreglue+0x28>
d03e08ba:	2100      	movs	r1, #0
d03e08bc:	e9c0 1600 	strd	r1, r6, [r0]
d03e08c0:	300c      	adds	r0, #12
d03e08c2:	60a0      	str	r0, [r4, #8]
d03e08c4:	f105 0268 	add.w	r2, r5, #104	; 0x68
d03e08c8:	f7ff fe2a 	bl	d03e0520 <memset>
d03e08cc:	4620      	mov	r0, r4
d03e08ce:	bd70      	pop	{r4, r5, r6, pc}

d03e08d0 <__sfp_lock_acquire>:
d03e08d0:	4801      	ldr	r0, [pc, #4]	; (d03e08d8 <__sfp_lock_acquire+0x8>)
d03e08d2:	f000 b8b3 	b.w	d03e0a3c <__retarget_lock_acquire_recursive>
d03e08d6:	bf00      	nop
d03e08d8:	d03e0e28 	.word	0xd03e0e28

d03e08dc <__sfp_lock_release>:
d03e08dc:	4801      	ldr	r0, [pc, #4]	; (d03e08e4 <__sfp_lock_release+0x8>)
d03e08de:	f000 b8ae 	b.w	d03e0a3e <__retarget_lock_release_recursive>
d03e08e2:	bf00      	nop
d03e08e4:	d03e0e28 	.word	0xd03e0e28

d03e08e8 <__sinit_lock_acquire>:
d03e08e8:	4801      	ldr	r0, [pc, #4]	; (d03e08f0 <__sinit_lock_acquire+0x8>)
d03e08ea:	f000 b8a7 	b.w	d03e0a3c <__retarget_lock_acquire_recursive>
d03e08ee:	bf00      	nop
d03e08f0:	d03e0e23 	.word	0xd03e0e23

d03e08f4 <__sinit_lock_release>:
d03e08f4:	4801      	ldr	r0, [pc, #4]	; (d03e08fc <__sinit_lock_release+0x8>)
d03e08f6:	f000 b8a2 	b.w	d03e0a3e <__retarget_lock_release_recursive>
d03e08fa:	bf00      	nop
d03e08fc:	d03e0e23 	.word	0xd03e0e23

d03e0900 <__sinit>:
d03e0900:	b510      	push	{r4, lr}
d03e0902:	4604      	mov	r4, r0
d03e0904:	f7ff fff0 	bl	d03e08e8 <__sinit_lock_acquire>
d03e0908:	69a3      	ldr	r3, [r4, #24]
d03e090a:	b11b      	cbz	r3, d03e0914 <__sinit+0x14>
d03e090c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d03e0910:	f7ff bff0 	b.w	d03e08f4 <__sinit_lock_release>
d03e0914:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d03e0918:	6523      	str	r3, [r4, #80]	; 0x50
d03e091a:	4b13      	ldr	r3, [pc, #76]	; (d03e0968 <__sinit+0x68>)
d03e091c:	4a13      	ldr	r2, [pc, #76]	; (d03e096c <__sinit+0x6c>)
d03e091e:	681b      	ldr	r3, [r3, #0]
d03e0920:	62a2      	str	r2, [r4, #40]	; 0x28
d03e0922:	42a3      	cmp	r3, r4
d03e0924:	bf04      	itt	eq
d03e0926:	2301      	moveq	r3, #1
d03e0928:	61a3      	streq	r3, [r4, #24]
d03e092a:	4620      	mov	r0, r4
d03e092c:	f000 f820 	bl	d03e0970 <__sfp>
d03e0930:	6060      	str	r0, [r4, #4]
d03e0932:	4620      	mov	r0, r4
d03e0934:	f000 f81c 	bl	d03e0970 <__sfp>
d03e0938:	60a0      	str	r0, [r4, #8]
d03e093a:	4620      	mov	r0, r4
d03e093c:	f000 f818 	bl	d03e0970 <__sfp>
d03e0940:	2200      	movs	r2, #0
d03e0942:	60e0      	str	r0, [r4, #12]
d03e0944:	2104      	movs	r1, #4
d03e0946:	6860      	ldr	r0, [r4, #4]
d03e0948:	f7ff ff82 	bl	d03e0850 <std>
d03e094c:	68a0      	ldr	r0, [r4, #8]
d03e094e:	2201      	movs	r2, #1
d03e0950:	2109      	movs	r1, #9
d03e0952:	f7ff ff7d 	bl	d03e0850 <std>
d03e0956:	68e0      	ldr	r0, [r4, #12]
d03e0958:	2202      	movs	r2, #2
d03e095a:	2112      	movs	r1, #18
d03e095c:	f7ff ff78 	bl	d03e0850 <std>
d03e0960:	2301      	movs	r3, #1
d03e0962:	61a3      	str	r3, [r4, #24]
d03e0964:	e7d2      	b.n	d03e090c <__sinit+0xc>
d03e0966:	bf00      	nop
d03e0968:	d03e0d30 	.word	0xd03e0d30
d03e096c:	d03e0899 	.word	0xd03e0899

d03e0970 <__sfp>:
d03e0970:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e0972:	4607      	mov	r7, r0
d03e0974:	f7ff ffac 	bl	d03e08d0 <__sfp_lock_acquire>
d03e0978:	4b1e      	ldr	r3, [pc, #120]	; (d03e09f4 <__sfp+0x84>)
d03e097a:	681e      	ldr	r6, [r3, #0]
d03e097c:	69b3      	ldr	r3, [r6, #24]
d03e097e:	b913      	cbnz	r3, d03e0986 <__sfp+0x16>
d03e0980:	4630      	mov	r0, r6
d03e0982:	f7ff ffbd 	bl	d03e0900 <__sinit>
d03e0986:	3648      	adds	r6, #72	; 0x48
d03e0988:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d03e098c:	3b01      	subs	r3, #1
d03e098e:	d503      	bpl.n	d03e0998 <__sfp+0x28>
d03e0990:	6833      	ldr	r3, [r6, #0]
d03e0992:	b30b      	cbz	r3, d03e09d8 <__sfp+0x68>
d03e0994:	6836      	ldr	r6, [r6, #0]
d03e0996:	e7f7      	b.n	d03e0988 <__sfp+0x18>
d03e0998:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d03e099c:	b9d5      	cbnz	r5, d03e09d4 <__sfp+0x64>
d03e099e:	4b16      	ldr	r3, [pc, #88]	; (d03e09f8 <__sfp+0x88>)
d03e09a0:	60e3      	str	r3, [r4, #12]
d03e09a2:	f104 0058 	add.w	r0, r4, #88	; 0x58
d03e09a6:	6665      	str	r5, [r4, #100]	; 0x64
d03e09a8:	f000 f847 	bl	d03e0a3a <__retarget_lock_init_recursive>
d03e09ac:	f7ff ff96 	bl	d03e08dc <__sfp_lock_release>
d03e09b0:	e9c4 5501 	strd	r5, r5, [r4, #4]
d03e09b4:	e9c4 5504 	strd	r5, r5, [r4, #16]
d03e09b8:	6025      	str	r5, [r4, #0]
d03e09ba:	61a5      	str	r5, [r4, #24]
d03e09bc:	2208      	movs	r2, #8
d03e09be:	4629      	mov	r1, r5
d03e09c0:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d03e09c4:	f7ff fdac 	bl	d03e0520 <memset>
d03e09c8:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d03e09cc:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d03e09d0:	4620      	mov	r0, r4
d03e09d2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e09d4:	3468      	adds	r4, #104	; 0x68
d03e09d6:	e7d9      	b.n	d03e098c <__sfp+0x1c>
d03e09d8:	2104      	movs	r1, #4
d03e09da:	4638      	mov	r0, r7
d03e09dc:	f7ff ff62 	bl	d03e08a4 <__sfmoreglue>
d03e09e0:	4604      	mov	r4, r0
d03e09e2:	6030      	str	r0, [r6, #0]
d03e09e4:	2800      	cmp	r0, #0
d03e09e6:	d1d5      	bne.n	d03e0994 <__sfp+0x24>
d03e09e8:	f7ff ff78 	bl	d03e08dc <__sfp_lock_release>
d03e09ec:	230c      	movs	r3, #12
d03e09ee:	603b      	str	r3, [r7, #0]
d03e09f0:	e7ee      	b.n	d03e09d0 <__sfp+0x60>
d03e09f2:	bf00      	nop
d03e09f4:	d03e0d30 	.word	0xd03e0d30
d03e09f8:	ffff0001 	.word	0xffff0001

d03e09fc <_fwalk_reent>:
d03e09fc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d03e0a00:	4606      	mov	r6, r0
d03e0a02:	4688      	mov	r8, r1
d03e0a04:	f100 0448 	add.w	r4, r0, #72	; 0x48
d03e0a08:	2700      	movs	r7, #0
d03e0a0a:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d03e0a0e:	f1b9 0901 	subs.w	r9, r9, #1
d03e0a12:	d505      	bpl.n	d03e0a20 <_fwalk_reent+0x24>
d03e0a14:	6824      	ldr	r4, [r4, #0]
d03e0a16:	2c00      	cmp	r4, #0
d03e0a18:	d1f7      	bne.n	d03e0a0a <_fwalk_reent+0xe>
d03e0a1a:	4638      	mov	r0, r7
d03e0a1c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d03e0a20:	89ab      	ldrh	r3, [r5, #12]
d03e0a22:	2b01      	cmp	r3, #1
d03e0a24:	d907      	bls.n	d03e0a36 <_fwalk_reent+0x3a>
d03e0a26:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d03e0a2a:	3301      	adds	r3, #1
d03e0a2c:	d003      	beq.n	d03e0a36 <_fwalk_reent+0x3a>
d03e0a2e:	4629      	mov	r1, r5
d03e0a30:	4630      	mov	r0, r6
d03e0a32:	47c0      	blx	r8
d03e0a34:	4307      	orrs	r7, r0
d03e0a36:	3568      	adds	r5, #104	; 0x68
d03e0a38:	e7e9      	b.n	d03e0a0e <_fwalk_reent+0x12>

d03e0a3a <__retarget_lock_init_recursive>:
d03e0a3a:	4770      	bx	lr

d03e0a3c <__retarget_lock_acquire_recursive>:
d03e0a3c:	4770      	bx	lr

d03e0a3e <__retarget_lock_release_recursive>:
d03e0a3e:	4770      	bx	lr

d03e0a40 <__swhatbuf_r>:
d03e0a40:	b570      	push	{r4, r5, r6, lr}
d03e0a42:	460e      	mov	r6, r1
d03e0a44:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03e0a48:	2900      	cmp	r1, #0
d03e0a4a:	b096      	sub	sp, #88	; 0x58
d03e0a4c:	4614      	mov	r4, r2
d03e0a4e:	461d      	mov	r5, r3
d03e0a50:	da07      	bge.n	d03e0a62 <__swhatbuf_r+0x22>
d03e0a52:	2300      	movs	r3, #0
d03e0a54:	602b      	str	r3, [r5, #0]
d03e0a56:	89b3      	ldrh	r3, [r6, #12]
d03e0a58:	061a      	lsls	r2, r3, #24
d03e0a5a:	d410      	bmi.n	d03e0a7e <__swhatbuf_r+0x3e>
d03e0a5c:	f44f 6380 	mov.w	r3, #1024	; 0x400
d03e0a60:	e00e      	b.n	d03e0a80 <__swhatbuf_r+0x40>
d03e0a62:	466a      	mov	r2, sp
d03e0a64:	f000 f916 	bl	d03e0c94 <_fstat_r>
d03e0a68:	2800      	cmp	r0, #0
d03e0a6a:	dbf2      	blt.n	d03e0a52 <__swhatbuf_r+0x12>
d03e0a6c:	9a01      	ldr	r2, [sp, #4]
d03e0a6e:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d03e0a72:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d03e0a76:	425a      	negs	r2, r3
d03e0a78:	415a      	adcs	r2, r3
d03e0a7a:	602a      	str	r2, [r5, #0]
d03e0a7c:	e7ee      	b.n	d03e0a5c <__swhatbuf_r+0x1c>
d03e0a7e:	2340      	movs	r3, #64	; 0x40
d03e0a80:	2000      	movs	r0, #0
d03e0a82:	6023      	str	r3, [r4, #0]
d03e0a84:	b016      	add	sp, #88	; 0x58
d03e0a86:	bd70      	pop	{r4, r5, r6, pc}

d03e0a88 <malloc>:
d03e0a88:	4b02      	ldr	r3, [pc, #8]	; (d03e0a94 <malloc+0xc>)
d03e0a8a:	4601      	mov	r1, r0
d03e0a8c:	6818      	ldr	r0, [r3, #0]
d03e0a8e:	f000 b853 	b.w	d03e0b38 <_malloc_r>
d03e0a92:	bf00      	nop
d03e0a94:	d03e0da0 	.word	0xd03e0da0

d03e0a98 <_free_r>:
d03e0a98:	b537      	push	{r0, r1, r2, r4, r5, lr}
d03e0a9a:	2900      	cmp	r1, #0
d03e0a9c:	d048      	beq.n	d03e0b30 <_free_r+0x98>
d03e0a9e:	f851 3c04 	ldr.w	r3, [r1, #-4]
d03e0aa2:	9001      	str	r0, [sp, #4]
d03e0aa4:	2b00      	cmp	r3, #0
d03e0aa6:	f1a1 0404 	sub.w	r4, r1, #4
d03e0aaa:	bfb8      	it	lt
d03e0aac:	18e4      	addlt	r4, r4, r3
d03e0aae:	f000 f915 	bl	d03e0cdc <__malloc_lock>
d03e0ab2:	4a20      	ldr	r2, [pc, #128]	; (d03e0b34 <_free_r+0x9c>)
d03e0ab4:	9801      	ldr	r0, [sp, #4]
d03e0ab6:	6813      	ldr	r3, [r2, #0]
d03e0ab8:	4615      	mov	r5, r2
d03e0aba:	b933      	cbnz	r3, d03e0aca <_free_r+0x32>
d03e0abc:	6063      	str	r3, [r4, #4]
d03e0abe:	6014      	str	r4, [r2, #0]
d03e0ac0:	b003      	add	sp, #12
d03e0ac2:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d03e0ac6:	f000 b90f 	b.w	d03e0ce8 <__malloc_unlock>
d03e0aca:	42a3      	cmp	r3, r4
d03e0acc:	d90b      	bls.n	d03e0ae6 <_free_r+0x4e>
d03e0ace:	6821      	ldr	r1, [r4, #0]
d03e0ad0:	1862      	adds	r2, r4, r1
d03e0ad2:	4293      	cmp	r3, r2
d03e0ad4:	bf04      	itt	eq
d03e0ad6:	681a      	ldreq	r2, [r3, #0]
d03e0ad8:	685b      	ldreq	r3, [r3, #4]
d03e0ada:	6063      	str	r3, [r4, #4]
d03e0adc:	bf04      	itt	eq
d03e0ade:	1852      	addeq	r2, r2, r1
d03e0ae0:	6022      	streq	r2, [r4, #0]
d03e0ae2:	602c      	str	r4, [r5, #0]
d03e0ae4:	e7ec      	b.n	d03e0ac0 <_free_r+0x28>
d03e0ae6:	461a      	mov	r2, r3
d03e0ae8:	685b      	ldr	r3, [r3, #4]
d03e0aea:	b10b      	cbz	r3, d03e0af0 <_free_r+0x58>
d03e0aec:	42a3      	cmp	r3, r4
d03e0aee:	d9fa      	bls.n	d03e0ae6 <_free_r+0x4e>
d03e0af0:	6811      	ldr	r1, [r2, #0]
d03e0af2:	1855      	adds	r5, r2, r1
d03e0af4:	42a5      	cmp	r5, r4
d03e0af6:	d10b      	bne.n	d03e0b10 <_free_r+0x78>
d03e0af8:	6824      	ldr	r4, [r4, #0]
d03e0afa:	4421      	add	r1, r4
d03e0afc:	1854      	adds	r4, r2, r1
d03e0afe:	42a3      	cmp	r3, r4
d03e0b00:	6011      	str	r1, [r2, #0]
d03e0b02:	d1dd      	bne.n	d03e0ac0 <_free_r+0x28>
d03e0b04:	681c      	ldr	r4, [r3, #0]
d03e0b06:	685b      	ldr	r3, [r3, #4]
d03e0b08:	6053      	str	r3, [r2, #4]
d03e0b0a:	4421      	add	r1, r4
d03e0b0c:	6011      	str	r1, [r2, #0]
d03e0b0e:	e7d7      	b.n	d03e0ac0 <_free_r+0x28>
d03e0b10:	d902      	bls.n	d03e0b18 <_free_r+0x80>
d03e0b12:	230c      	movs	r3, #12
d03e0b14:	6003      	str	r3, [r0, #0]
d03e0b16:	e7d3      	b.n	d03e0ac0 <_free_r+0x28>
d03e0b18:	6825      	ldr	r5, [r4, #0]
d03e0b1a:	1961      	adds	r1, r4, r5
d03e0b1c:	428b      	cmp	r3, r1
d03e0b1e:	bf04      	itt	eq
d03e0b20:	6819      	ldreq	r1, [r3, #0]
d03e0b22:	685b      	ldreq	r3, [r3, #4]
d03e0b24:	6063      	str	r3, [r4, #4]
d03e0b26:	bf04      	itt	eq
d03e0b28:	1949      	addeq	r1, r1, r5
d03e0b2a:	6021      	streq	r1, [r4, #0]
d03e0b2c:	6054      	str	r4, [r2, #4]
d03e0b2e:	e7c7      	b.n	d03e0ac0 <_free_r+0x28>
d03e0b30:	b003      	add	sp, #12
d03e0b32:	bd30      	pop	{r4, r5, pc}
d03e0b34:	d03e0e18 	.word	0xd03e0e18

d03e0b38 <_malloc_r>:
d03e0b38:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e0b3a:	1ccd      	adds	r5, r1, #3
d03e0b3c:	f025 0503 	bic.w	r5, r5, #3
d03e0b40:	3508      	adds	r5, #8
d03e0b42:	2d0c      	cmp	r5, #12
d03e0b44:	bf38      	it	cc
d03e0b46:	250c      	movcc	r5, #12
d03e0b48:	2d00      	cmp	r5, #0
d03e0b4a:	4606      	mov	r6, r0
d03e0b4c:	db01      	blt.n	d03e0b52 <_malloc_r+0x1a>
d03e0b4e:	42a9      	cmp	r1, r5
d03e0b50:	d903      	bls.n	d03e0b5a <_malloc_r+0x22>
d03e0b52:	230c      	movs	r3, #12
d03e0b54:	6033      	str	r3, [r6, #0]
d03e0b56:	2000      	movs	r0, #0
d03e0b58:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d03e0b5a:	f000 f8bf 	bl	d03e0cdc <__malloc_lock>
d03e0b5e:	4921      	ldr	r1, [pc, #132]	; (d03e0be4 <_malloc_r+0xac>)
d03e0b60:	680a      	ldr	r2, [r1, #0]
d03e0b62:	4614      	mov	r4, r2
d03e0b64:	b99c      	cbnz	r4, d03e0b8e <_malloc_r+0x56>
d03e0b66:	4f20      	ldr	r7, [pc, #128]	; (d03e0be8 <_malloc_r+0xb0>)
d03e0b68:	683b      	ldr	r3, [r7, #0]
d03e0b6a:	b923      	cbnz	r3, d03e0b76 <_malloc_r+0x3e>
d03e0b6c:	4621      	mov	r1, r4
d03e0b6e:	4630      	mov	r0, r6
d03e0b70:	f7ff faaa 	bl	d03e00c8 <_sbrk_r>
d03e0b74:	6038      	str	r0, [r7, #0]
d03e0b76:	4629      	mov	r1, r5
d03e0b78:	4630      	mov	r0, r6
d03e0b7a:	f7ff faa5 	bl	d03e00c8 <_sbrk_r>
d03e0b7e:	1c43      	adds	r3, r0, #1
d03e0b80:	d123      	bne.n	d03e0bca <_malloc_r+0x92>
d03e0b82:	230c      	movs	r3, #12
d03e0b84:	6033      	str	r3, [r6, #0]
d03e0b86:	4630      	mov	r0, r6
d03e0b88:	f000 f8ae 	bl	d03e0ce8 <__malloc_unlock>
d03e0b8c:	e7e3      	b.n	d03e0b56 <_malloc_r+0x1e>
d03e0b8e:	6823      	ldr	r3, [r4, #0]
d03e0b90:	1b5b      	subs	r3, r3, r5
d03e0b92:	d417      	bmi.n	d03e0bc4 <_malloc_r+0x8c>
d03e0b94:	2b0b      	cmp	r3, #11
d03e0b96:	d903      	bls.n	d03e0ba0 <_malloc_r+0x68>
d03e0b98:	6023      	str	r3, [r4, #0]
d03e0b9a:	441c      	add	r4, r3
d03e0b9c:	6025      	str	r5, [r4, #0]
d03e0b9e:	e004      	b.n	d03e0baa <_malloc_r+0x72>
d03e0ba0:	6863      	ldr	r3, [r4, #4]
d03e0ba2:	42a2      	cmp	r2, r4
d03e0ba4:	bf0c      	ite	eq
d03e0ba6:	600b      	streq	r3, [r1, #0]
d03e0ba8:	6053      	strne	r3, [r2, #4]
d03e0baa:	4630      	mov	r0, r6
d03e0bac:	f000 f89c 	bl	d03e0ce8 <__malloc_unlock>
d03e0bb0:	f104 000b 	add.w	r0, r4, #11
d03e0bb4:	1d23      	adds	r3, r4, #4
d03e0bb6:	f020 0007 	bic.w	r0, r0, #7
d03e0bba:	1ac2      	subs	r2, r0, r3
d03e0bbc:	d0cc      	beq.n	d03e0b58 <_malloc_r+0x20>
d03e0bbe:	1a1b      	subs	r3, r3, r0
d03e0bc0:	50a3      	str	r3, [r4, r2]
d03e0bc2:	e7c9      	b.n	d03e0b58 <_malloc_r+0x20>
d03e0bc4:	4622      	mov	r2, r4
d03e0bc6:	6864      	ldr	r4, [r4, #4]
d03e0bc8:	e7cc      	b.n	d03e0b64 <_malloc_r+0x2c>
d03e0bca:	1cc4      	adds	r4, r0, #3
d03e0bcc:	f024 0403 	bic.w	r4, r4, #3
d03e0bd0:	42a0      	cmp	r0, r4
d03e0bd2:	d0e3      	beq.n	d03e0b9c <_malloc_r+0x64>
d03e0bd4:	1a21      	subs	r1, r4, r0
d03e0bd6:	4630      	mov	r0, r6
d03e0bd8:	f7ff fa76 	bl	d03e00c8 <_sbrk_r>
d03e0bdc:	3001      	adds	r0, #1
d03e0bde:	d1dd      	bne.n	d03e0b9c <_malloc_r+0x64>
d03e0be0:	e7cf      	b.n	d03e0b82 <_malloc_r+0x4a>
d03e0be2:	bf00      	nop
d03e0be4:	d03e0e18 	.word	0xd03e0e18
d03e0be8:	d03e0e1c 	.word	0xd03e0e1c

d03e0bec <__sread>:
d03e0bec:	b510      	push	{r4, lr}
d03e0bee:	460c      	mov	r4, r1
d03e0bf0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03e0bf4:	f000 f87e 	bl	d03e0cf4 <_read_r>
d03e0bf8:	2800      	cmp	r0, #0
d03e0bfa:	bfab      	itete	ge
d03e0bfc:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d03e0bfe:	89a3      	ldrhlt	r3, [r4, #12]
d03e0c00:	181b      	addge	r3, r3, r0
d03e0c02:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d03e0c06:	bfac      	ite	ge
d03e0c08:	6563      	strge	r3, [r4, #84]	; 0x54
d03e0c0a:	81a3      	strhlt	r3, [r4, #12]
d03e0c0c:	bd10      	pop	{r4, pc}

d03e0c0e <__swrite>:
d03e0c0e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d03e0c12:	461f      	mov	r7, r3
d03e0c14:	898b      	ldrh	r3, [r1, #12]
d03e0c16:	05db      	lsls	r3, r3, #23
d03e0c18:	4605      	mov	r5, r0
d03e0c1a:	460c      	mov	r4, r1
d03e0c1c:	4616      	mov	r6, r2
d03e0c1e:	d505      	bpl.n	d03e0c2c <__swrite+0x1e>
d03e0c20:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03e0c24:	2302      	movs	r3, #2
d03e0c26:	2200      	movs	r2, #0
d03e0c28:	f000 f846 	bl	d03e0cb8 <_lseek_r>
d03e0c2c:	89a3      	ldrh	r3, [r4, #12]
d03e0c2e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d03e0c32:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d03e0c36:	81a3      	strh	r3, [r4, #12]
d03e0c38:	4632      	mov	r2, r6
d03e0c3a:	463b      	mov	r3, r7
d03e0c3c:	4628      	mov	r0, r5
d03e0c3e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d03e0c42:	f7ff b9fb 	b.w	d03e003c <_write_r>

d03e0c46 <__sseek>:
d03e0c46:	b510      	push	{r4, lr}
d03e0c48:	460c      	mov	r4, r1
d03e0c4a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03e0c4e:	f000 f833 	bl	d03e0cb8 <_lseek_r>
d03e0c52:	1c43      	adds	r3, r0, #1
d03e0c54:	89a3      	ldrh	r3, [r4, #12]
d03e0c56:	bf15      	itete	ne
d03e0c58:	6560      	strne	r0, [r4, #84]	; 0x54
d03e0c5a:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d03e0c5e:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d03e0c62:	81a3      	strheq	r3, [r4, #12]
d03e0c64:	bf18      	it	ne
d03e0c66:	81a3      	strhne	r3, [r4, #12]
d03e0c68:	bd10      	pop	{r4, pc}

d03e0c6a <__sclose>:
d03e0c6a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d03e0c6e:	f000 b801 	b.w	d03e0c74 <_close_r>
	...

d03e0c74 <_close_r>:
d03e0c74:	b538      	push	{r3, r4, r5, lr}
d03e0c76:	4d06      	ldr	r5, [pc, #24]	; (d03e0c90 <_close_r+0x1c>)
d03e0c78:	2300      	movs	r3, #0
d03e0c7a:	4604      	mov	r4, r0
d03e0c7c:	4608      	mov	r0, r1
d03e0c7e:	602b      	str	r3, [r5, #0]
d03e0c80:	f7ff fa16 	bl	d03e00b0 <_close>
d03e0c84:	1c43      	adds	r3, r0, #1
d03e0c86:	d102      	bne.n	d03e0c8e <_close_r+0x1a>
d03e0c88:	682b      	ldr	r3, [r5, #0]
d03e0c8a:	b103      	cbz	r3, d03e0c8e <_close_r+0x1a>
d03e0c8c:	6023      	str	r3, [r4, #0]
d03e0c8e:	bd38      	pop	{r3, r4, r5, pc}
d03e0c90:	d03e0e2c 	.word	0xd03e0e2c

d03e0c94 <_fstat_r>:
d03e0c94:	b538      	push	{r3, r4, r5, lr}
d03e0c96:	4d07      	ldr	r5, [pc, #28]	; (d03e0cb4 <_fstat_r+0x20>)
d03e0c98:	2300      	movs	r3, #0
d03e0c9a:	4604      	mov	r4, r0
d03e0c9c:	4608      	mov	r0, r1
d03e0c9e:	4611      	mov	r1, r2
d03e0ca0:	602b      	str	r3, [r5, #0]
d03e0ca2:	f7ff fa09 	bl	d03e00b8 <_fstat>
d03e0ca6:	1c43      	adds	r3, r0, #1
d03e0ca8:	d102      	bne.n	d03e0cb0 <_fstat_r+0x1c>
d03e0caa:	682b      	ldr	r3, [r5, #0]
d03e0cac:	b103      	cbz	r3, d03e0cb0 <_fstat_r+0x1c>
d03e0cae:	6023      	str	r3, [r4, #0]
d03e0cb0:	bd38      	pop	{r3, r4, r5, pc}
d03e0cb2:	bf00      	nop
d03e0cb4:	d03e0e2c 	.word	0xd03e0e2c

d03e0cb8 <_lseek_r>:
d03e0cb8:	b538      	push	{r3, r4, r5, lr}
d03e0cba:	4d07      	ldr	r5, [pc, #28]	; (d03e0cd8 <_lseek_r+0x20>)
d03e0cbc:	4604      	mov	r4, r0
d03e0cbe:	4608      	mov	r0, r1
d03e0cc0:	4611      	mov	r1, r2
d03e0cc2:	2200      	movs	r2, #0
d03e0cc4:	602a      	str	r2, [r5, #0]
d03e0cc6:	461a      	mov	r2, r3
d03e0cc8:	f7ff f9fc 	bl	d03e00c4 <_lseek>
d03e0ccc:	1c43      	adds	r3, r0, #1
d03e0cce:	d102      	bne.n	d03e0cd6 <_lseek_r+0x1e>
d03e0cd0:	682b      	ldr	r3, [r5, #0]
d03e0cd2:	b103      	cbz	r3, d03e0cd6 <_lseek_r+0x1e>
d03e0cd4:	6023      	str	r3, [r4, #0]
d03e0cd6:	bd38      	pop	{r3, r4, r5, pc}
d03e0cd8:	d03e0e2c 	.word	0xd03e0e2c

d03e0cdc <__malloc_lock>:
d03e0cdc:	4801      	ldr	r0, [pc, #4]	; (d03e0ce4 <__malloc_lock+0x8>)
d03e0cde:	f7ff bead 	b.w	d03e0a3c <__retarget_lock_acquire_recursive>
d03e0ce2:	bf00      	nop
d03e0ce4:	d03e0e24 	.word	0xd03e0e24

d03e0ce8 <__malloc_unlock>:
d03e0ce8:	4801      	ldr	r0, [pc, #4]	; (d03e0cf0 <__malloc_unlock+0x8>)
d03e0cea:	f7ff bea8 	b.w	d03e0a3e <__retarget_lock_release_recursive>
d03e0cee:	bf00      	nop
d03e0cf0:	d03e0e24 	.word	0xd03e0e24

d03e0cf4 <_read_r>:
d03e0cf4:	b538      	push	{r3, r4, r5, lr}
d03e0cf6:	4d07      	ldr	r5, [pc, #28]	; (d03e0d14 <_read_r+0x20>)
d03e0cf8:	4604      	mov	r4, r0
d03e0cfa:	4608      	mov	r0, r1
d03e0cfc:	4611      	mov	r1, r2
d03e0cfe:	2200      	movs	r2, #0
d03e0d00:	602a      	str	r2, [r5, #0]
d03e0d02:	461a      	mov	r2, r3
d03e0d04:	f7ff f9ca 	bl	d03e009c <_read>
d03e0d08:	1c43      	adds	r3, r0, #1
d03e0d0a:	d102      	bne.n	d03e0d12 <_read_r+0x1e>
d03e0d0c:	682b      	ldr	r3, [r5, #0]
d03e0d0e:	b103      	cbz	r3, d03e0d12 <_read_r+0x1e>
d03e0d10:	6023      	str	r3, [r4, #0]
d03e0d12:	bd38      	pop	{r3, r4, r5, pc}
d03e0d14:	d03e0e2c 	.word	0xd03e0e2c
d03e0d18:	20444953 	.word	0x20444953
d03e0d1c:	6964694d 	.word	0x6964694d
d03e0d20:	6f725020 	.word	0x6f725020
d03e0d24:	6d617267 	.word	0x6d617267
d03e0d28:	73655420 	.word	0x73655420
d03e0d2c:	00000074 	.word	0x00000074

d03e0d30 <_global_impure_ptr>:
d03e0d30:	d03e0da4                                ..>.

d03e0d34 <__sf_fake_stderr>:
	...

d03e0d54 <__sf_fake_stdin>:
	...

d03e0d74 <__sf_fake_stdout>:
	...

Disassembly of section .init:

d03e0d94 <_init>:
d03e0d94:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e0d96:	bf00      	nop

Disassembly of section .fini:

d03e0d98 <_fini>:
d03e0d98:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d03e0d9a:	bf00      	nop
