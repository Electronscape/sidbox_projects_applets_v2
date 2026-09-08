
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
d05a001e:	f001 fa4b 	bl	d05a14b8 <setbuf>
d05a0022:	6833      	ldr	r3, [r6, #0]
d05a0024:	2100      	movs	r1, #0
d05a0026:	68d8      	ldr	r0, [r3, #12]
d05a0028:	f001 fa46 	bl	d05a14b8 <setbuf>
d05a002c:	4629      	mov	r1, r5
d05a002e:	4620      	mov	r0, r4
d05a0030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d05a0034:	f000 bfd8 	b.w	d05a0fe8 <main>
d05a0038:	d05a2544 	.word	0xd05a2544

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
d05a0084:	f001 fa0a 	bl	d05a149c <__errno>
d05a0088:	2209      	movs	r2, #9
d05a008a:	4603      	mov	r3, r0
d05a008c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a0090:	601a      	str	r2, [r3, #0]
d05a0092:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a0094:	d05a25c4 	.word	0xd05a25c4
d05a0098:	2001f000 	.word	0x2001f000

d05a009c <_read>:
d05a009c:	b508      	push	{r3, lr}
d05a009e:	f001 f9fd 	bl	d05a149c <__errno>
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
d05a00ea:	f001 f9d7 	bl	d05a149c <__errno>
d05a00ee:	220c      	movs	r2, #12
d05a00f0:	4603      	mov	r3, r0
d05a00f2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a00f6:	601a      	str	r2, [r3, #0]
d05a00f8:	bd10      	pop	{r4, pc}
d05a00fa:	bf00      	nop
d05a00fc:	d05a25c0 	.word	0xd05a25c0
d05a0100:	d05b7868 	.word	0xd05b7868
d05a0104:	d0600000 	.word	0xd0600000

d05a0108 <set_status>:
d05a0108:	4b28      	ldr	r3, [pc, #160]	; (d05a01ac <set_status+0xa4>)
d05a010a:	2160      	movs	r1, #96	; 0x60
d05a010c:	4828      	ldr	r0, [pc, #160]	; (d05a01b0 <set_status+0xa8>)
d05a010e:	4a29      	ldr	r2, [pc, #164]	; (d05a01b4 <set_status+0xac>)
d05a0110:	b5f0      	push	{r4, r5, r6, r7, lr}
d05a0112:	4c29      	ldr	r4, [pc, #164]	; (d05a01b8 <set_status+0xb0>)
d05a0114:	b085      	sub	sp, #20
d05a0116:	781d      	ldrb	r5, [r3, #0]
d05a0118:	4b28      	ldr	r3, [pc, #160]	; (d05a01bc <set_status+0xb4>)
d05a011a:	7800      	ldrb	r0, [r0, #0]
d05a011c:	6812      	ldr	r2, [r2, #0]
d05a011e:	2d00      	cmp	r5, #0
d05a0120:	bf08      	it	eq
d05a0122:	4623      	moveq	r3, r4
d05a0124:	4d26      	ldr	r5, [pc, #152]	; (d05a01c0 <set_status+0xb8>)
d05a0126:	9001      	str	r0, [sp, #4]
d05a0128:	9200      	str	r2, [sp, #0]
d05a012a:	4826      	ldr	r0, [pc, #152]	; (d05a01c4 <set_status+0xbc>)
d05a012c:	4a26      	ldr	r2, [pc, #152]	; (d05a01c8 <set_status+0xc0>)
d05a012e:	f001 fa91 	bl	d05a1654 <sniprintf>
d05a0132:	6828      	ldr	r0, [r5, #0]
d05a0134:	4c25      	ldr	r4, [pc, #148]	; (d05a01cc <set_status+0xc4>)
d05a0136:	b160      	cbz	r0, d05a0152 <set_status+0x4a>
d05a0138:	7a23      	ldrb	r3, [r4, #8]
d05a013a:	7a62      	ldrb	r2, [r4, #9]
d05a013c:	7aa1      	ldrb	r1, [r4, #10]
d05a013e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a0142:	7ae2      	ldrb	r2, [r4, #11]
d05a0144:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0148:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a014c:	68db      	ldr	r3, [r3, #12]
d05a014e:	6d5b      	ldr	r3, [r3, #84]	; 0x54
d05a0150:	4798      	blx	r3
d05a0152:	7a22      	ldrb	r2, [r4, #8]
d05a0154:	f04f 0c21 	mov.w	ip, #33	; 0x21
d05a0158:	7a60      	ldrb	r0, [r4, #9]
d05a015a:	2710      	movs	r7, #16
d05a015c:	7aa1      	ldrb	r1, [r4, #10]
d05a015e:	f44f 73cc 	mov.w	r3, #408	; 0x198
d05a0162:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
d05a0166:	7ae0      	ldrb	r0, [r4, #11]
d05a0168:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
d05a016c:	4915      	ldr	r1, [pc, #84]	; (d05a01c4 <set_status+0xbc>)
d05a016e:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d05a0172:	4817      	ldr	r0, [pc, #92]	; (d05a01d0 <set_status+0xc8>)
d05a0174:	68d6      	ldr	r6, [r2, #12]
d05a0176:	22f4      	movs	r2, #244	; 0xf4
d05a0178:	7800      	ldrb	r0, [r0, #0]
d05a017a:	9101      	str	r1, [sp, #4]
d05a017c:	210c      	movs	r1, #12
d05a017e:	f8cd c008 	str.w	ip, [sp, #8]
d05a0182:	9700      	str	r7, [sp, #0]
d05a0184:	69b6      	ldr	r6, [r6, #24]
d05a0186:	47b0      	blx	r6
d05a0188:	7a23      	ldrb	r3, [r4, #8]
d05a018a:	7a62      	ldrb	r2, [r4, #9]
d05a018c:	7aa1      	ldrb	r1, [r4, #10]
d05a018e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a0192:	7ae2      	ldrb	r2, [r4, #11]
d05a0194:	6028      	str	r0, [r5, #0]
d05a0196:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a019a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a019e:	68db      	ldr	r3, [r3, #12]
d05a01a0:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a01a2:	b005      	add	sp, #20
d05a01a4:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d05a01a8:	4718      	bx	r3
d05a01aa:	bf00      	nop
d05a01ac:	d05b57e8 	.word	0xd05b57e8
d05a01b0:	d05b57e0 	.word	0xd05b57e0
d05a01b4:	d05b57e4 	.word	0xd05b57e4
d05a01b8:	d05a2440 	.word	0xd05a2440
d05a01bc:	d05a2438 	.word	0xd05a2438
d05a01c0:	d05b584c 	.word	0xd05b584c
d05a01c4:	d05b57ec 	.word	0xd05b57ec
d05a01c8:	d05a2448 	.word	0xd05a2448
d05a01cc:	2001f000 	.word	0x2001f000
d05a01d0:	d05b57e1 	.word	0xd05b57e1

d05a01d4 <on_pause_clicked>:
d05a01d4:	4a03      	ldr	r2, [pc, #12]	; (d05a01e4 <on_pause_clicked+0x10>)
d05a01d6:	7813      	ldrb	r3, [r2, #0]
d05a01d8:	fab3 f383 	clz	r3, r3
d05a01dc:	095b      	lsrs	r3, r3, #5
d05a01de:	7013      	strb	r3, [r2, #0]
d05a01e0:	f7ff bf92 	b.w	d05a0108 <set_status>
d05a01e4:	d05b57e8 	.word	0xd05b57e8

d05a01e8 <editor_proc>:
d05a01e8:	2900      	cmp	r1, #0
d05a01ea:	d045      	beq.n	d05a0278 <editor_proc+0x90>
d05a01ec:	b538      	push	{r3, r4, r5, lr}
d05a01ee:	680b      	ldr	r3, [r1, #0]
d05a01f0:	2b20      	cmp	r3, #32
d05a01f2:	d001      	beq.n	d05a01f8 <editor_proc+0x10>
d05a01f4:	2000      	movs	r0, #0
d05a01f6:	bd38      	pop	{r3, r4, r5, pc}
d05a01f8:	68cb      	ldr	r3, [r1, #12]
d05a01fa:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d05a01fe:	d00b      	beq.n	d05a0218 <editor_proc+0x30>
d05a0200:	f248 0204 	movw	r2, #32772	; 0x8004
d05a0204:	4293      	cmp	r3, r2
d05a0206:	d1f5      	bne.n	d05a01f4 <editor_proc+0xc>
d05a0208:	4b24      	ldr	r3, [pc, #144]	; (d05a029c <editor_proc+0xb4>)
d05a020a:	6818      	ldr	r0, [r3, #0]
d05a020c:	2800      	cmp	r0, #0
d05a020e:	d135      	bne.n	d05a027c <editor_proc+0x94>
d05a0210:	f7ff ff7a 	bl	d05a0108 <set_status>
d05a0214:	20f0      	movs	r0, #240	; 0xf0
d05a0216:	bd38      	pop	{r3, r4, r5, pc}
d05a0218:	4b21      	ldr	r3, [pc, #132]	; (d05a02a0 <editor_proc+0xb8>)
d05a021a:	781a      	ldrb	r2, [r3, #0]
d05a021c:	2a00      	cmp	r2, #0
d05a021e:	d0f9      	beq.n	d05a0214 <editor_proc+0x2c>
d05a0220:	4c20      	ldr	r4, [pc, #128]	; (d05a02a4 <editor_proc+0xbc>)
d05a0222:	2200      	movs	r2, #0
d05a0224:	7820      	ldrb	r0, [r4, #0]
d05a0226:	701a      	strb	r2, [r3, #0]
d05a0228:	28ff      	cmp	r0, #255	; 0xff
d05a022a:	d00f      	beq.n	d05a024c <editor_proc+0x64>
d05a022c:	4a1e      	ldr	r2, [pc, #120]	; (d05a02a8 <editor_proc+0xc0>)
d05a022e:	7a13      	ldrb	r3, [r2, #8]
d05a0230:	7a55      	ldrb	r5, [r2, #9]
d05a0232:	7a91      	ldrb	r1, [r2, #10]
d05a0234:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05a0238:	7ad2      	ldrb	r2, [r2, #11]
d05a023a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a023e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a0242:	695b      	ldr	r3, [r3, #20]
d05a0244:	685b      	ldr	r3, [r3, #4]
d05a0246:	4798      	blx	r3
d05a0248:	23ff      	movs	r3, #255	; 0xff
d05a024a:	7023      	strb	r3, [r4, #0]
d05a024c:	4c17      	ldr	r4, [pc, #92]	; (d05a02ac <editor_proc+0xc4>)
d05a024e:	7820      	ldrb	r0, [r4, #0]
d05a0250:	2800      	cmp	r0, #0
d05a0252:	d0df      	beq.n	d05a0214 <editor_proc+0x2c>
d05a0254:	4a14      	ldr	r2, [pc, #80]	; (d05a02a8 <editor_proc+0xc0>)
d05a0256:	7a13      	ldrb	r3, [r2, #8]
d05a0258:	7a55      	ldrb	r5, [r2, #9]
d05a025a:	7a91      	ldrb	r1, [r2, #10]
d05a025c:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05a0260:	7ad2      	ldrb	r2, [r2, #11]
d05a0262:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0266:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a026a:	685b      	ldr	r3, [r3, #4]
d05a026c:	685b      	ldr	r3, [r3, #4]
d05a026e:	4798      	blx	r3
d05a0270:	2300      	movs	r3, #0
d05a0272:	20f0      	movs	r0, #240	; 0xf0
d05a0274:	7023      	strb	r3, [r4, #0]
d05a0276:	bd38      	pop	{r3, r4, r5, pc}
d05a0278:	4608      	mov	r0, r1
d05a027a:	4770      	bx	lr
d05a027c:	4a0a      	ldr	r2, [pc, #40]	; (d05a02a8 <editor_proc+0xc0>)
d05a027e:	7a13      	ldrb	r3, [r2, #8]
d05a0280:	7a54      	ldrb	r4, [r2, #9]
d05a0282:	7a91      	ldrb	r1, [r2, #10]
d05a0284:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d05a0288:	7ad2      	ldrb	r2, [r2, #11]
d05a028a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a028e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a0292:	68db      	ldr	r3, [r3, #12]
d05a0294:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a0296:	4798      	blx	r3
d05a0298:	e7ba      	b.n	d05a0210 <editor_proc+0x28>
d05a029a:	bf00      	nop
d05a029c:	d05a25cc 	.word	0xd05a25cc
d05a02a0:	d05a25c8 	.word	0xd05a25c8
d05a02a4:	d05a253c 	.word	0xd05a253c
d05a02a8:	2001f000 	.word	0x2001f000
d05a02ac:	d05b57e1 	.word	0xd05b57e1

d05a02b0 <on_clear_clicked>:
d05a02b0:	4b1d      	ldr	r3, [pc, #116]	; (d05a0328 <on_clear_clicked+0x78>)
d05a02b2:	f44f 3299 	mov.w	r2, #78336	; 0x13200
d05a02b6:	481d      	ldr	r0, [pc, #116]	; (d05a032c <on_clear_clicked+0x7c>)
d05a02b8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a02bc:	7819      	ldrb	r1, [r3, #0]
d05a02be:	2500      	movs	r5, #0
d05a02c0:	4f1b      	ldr	r7, [pc, #108]	; (d05a0330 <on_clear_clicked+0x80>)
d05a02c2:	3111      	adds	r1, #17
d05a02c4:	f8df 8074 	ldr.w	r8, [pc, #116]	; d05a033c <on_clear_clicked+0x8c>
d05a02c8:	f507 694c 	add.w	r9, r7, #3264	; 0xcc0
d05a02cc:	b2c9      	uxtb	r1, r1
d05a02ce:	f001 f8eb 	bl	d05a14a8 <memset>
d05a02d2:	022e      	lsls	r6, r5, #8
d05a02d4:	462b      	mov	r3, r5
d05a02d6:	eb07 0a05 	add.w	sl, r7, r5
d05a02da:	3501      	adds	r5, #1
d05a02dc:	fba8 2606 	umull	r2, r6, r8, r6
d05a02e0:	eb09 0403 	add.w	r4, r9, r3
d05a02e4:	0a36      	lsrs	r6, r6, #8
d05a02e6:	4650      	mov	r0, sl
d05a02e8:	f50a 7acc 	add.w	sl, sl, #408	; 0x198
d05a02ec:	2201      	movs	r2, #1
d05a02ee:	4631      	mov	r1, r6
d05a02f0:	f001 f8da 	bl	d05a14a8 <memset>
d05a02f4:	45a2      	cmp	sl, r4
d05a02f6:	d1f6      	bne.n	d05a02e6 <on_clear_clicked+0x36>
d05a02f8:	f5b5 7fcc 	cmp.w	r5, #408	; 0x198
d05a02fc:	d1e9      	bne.n	d05a02d2 <on_clear_clicked+0x22>
d05a02fe:	4b0d      	ldr	r3, [pc, #52]	; (d05a0334 <on_clear_clicked+0x84>)
d05a0300:	6818      	ldr	r0, [r3, #0]
d05a0302:	b168      	cbz	r0, d05a0320 <on_clear_clicked+0x70>
d05a0304:	4a0c      	ldr	r2, [pc, #48]	; (d05a0338 <on_clear_clicked+0x88>)
d05a0306:	7a13      	ldrb	r3, [r2, #8]
d05a0308:	7a54      	ldrb	r4, [r2, #9]
d05a030a:	7a91      	ldrb	r1, [r2, #10]
d05a030c:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d05a0310:	7ad2      	ldrb	r2, [r2, #11]
d05a0312:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0316:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a031a:	68db      	ldr	r3, [r3, #12]
d05a031c:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a031e:	4798      	blx	r3
d05a0320:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a0324:	f7ff bef0 	b.w	d05a0108 <set_status>
d05a0328:	d05b57e0 	.word	0xd05b57e0
d05a032c:	d05a25e0 	.word	0xd05a25e0
d05a0330:	d05b4b20 	.word	0xd05b4b20
d05a0334:	d05a25cc 	.word	0xd05a25cc
d05a0338:	2001f000 	.word	0x2001f000
d05a033c:	a0a0a0a1 	.word	0xa0a0a0a1

d05a0340 <on_close_clicked>:
d05a0340:	b538      	push	{r3, r4, r5, lr}
d05a0342:	4b16      	ldr	r3, [pc, #88]	; (d05a039c <on_close_clicked+0x5c>)
d05a0344:	781a      	ldrb	r2, [r3, #0]
d05a0346:	b342      	cbz	r2, d05a039a <on_close_clicked+0x5a>
d05a0348:	4c15      	ldr	r4, [pc, #84]	; (d05a03a0 <on_close_clicked+0x60>)
d05a034a:	2200      	movs	r2, #0
d05a034c:	7820      	ldrb	r0, [r4, #0]
d05a034e:	701a      	strb	r2, [r3, #0]
d05a0350:	28ff      	cmp	r0, #255	; 0xff
d05a0352:	d00f      	beq.n	d05a0374 <on_close_clicked+0x34>
d05a0354:	4a13      	ldr	r2, [pc, #76]	; (d05a03a4 <on_close_clicked+0x64>)
d05a0356:	7a13      	ldrb	r3, [r2, #8]
d05a0358:	7a55      	ldrb	r5, [r2, #9]
d05a035a:	7a91      	ldrb	r1, [r2, #10]
d05a035c:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05a0360:	7ad2      	ldrb	r2, [r2, #11]
d05a0362:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0366:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a036a:	695b      	ldr	r3, [r3, #20]
d05a036c:	685b      	ldr	r3, [r3, #4]
d05a036e:	4798      	blx	r3
d05a0370:	23ff      	movs	r3, #255	; 0xff
d05a0372:	7023      	strb	r3, [r4, #0]
d05a0374:	4c0c      	ldr	r4, [pc, #48]	; (d05a03a8 <on_close_clicked+0x68>)
d05a0376:	7820      	ldrb	r0, [r4, #0]
d05a0378:	b178      	cbz	r0, d05a039a <on_close_clicked+0x5a>
d05a037a:	4a0a      	ldr	r2, [pc, #40]	; (d05a03a4 <on_close_clicked+0x64>)
d05a037c:	7a13      	ldrb	r3, [r2, #8]
d05a037e:	7a55      	ldrb	r5, [r2, #9]
d05a0380:	7a91      	ldrb	r1, [r2, #10]
d05a0382:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05a0386:	7ad2      	ldrb	r2, [r2, #11]
d05a0388:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a038c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a0390:	685b      	ldr	r3, [r3, #4]
d05a0392:	685b      	ldr	r3, [r3, #4]
d05a0394:	4798      	blx	r3
d05a0396:	2300      	movs	r3, #0
d05a0398:	7023      	strb	r3, [r4, #0]
d05a039a:	bd38      	pop	{r3, r4, r5, pc}
d05a039c:	d05a25c8 	.word	0xd05a25c8
d05a03a0:	d05a253c 	.word	0xd05a253c
d05a03a4:	2001f000 	.word	0x2001f000
d05a03a8:	d05b57e1 	.word	0xd05b57e1

d05a03ac <draw_random_shape>:
d05a03ac:	4ac3      	ldr	r2, [pc, #780]	; (d05a06bc <draw_random_shape+0x310>)
d05a03ae:	49c4      	ldr	r1, [pc, #784]	; (d05a06c0 <draw_random_shape+0x314>)
d05a03b0:	6813      	ldr	r3, [r2, #0]
d05a03b2:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05a03b6:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d05a03ba:	f891 b000 	ldrb.w	fp, [r1]
d05a03be:	b08d      	sub	sp, #52	; 0x34
d05a03c0:	f10b 0001 	add.w	r0, fp, #1
d05a03c4:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d05a03c8:	7008      	strb	r0, [r1, #0]
d05a03ca:	f003 0003 	and.w	r0, r3, #3
d05a03ce:	ea83 1143 	eor.w	r1, r3, r3, lsl #5
d05a03d2:	2802      	cmp	r0, #2
d05a03d4:	f000 8088 	beq.w	d05a04e8 <draw_random_shape+0x13c>
d05a03d8:	2803      	cmp	r0, #3
d05a03da:	ea81 3141 	eor.w	r1, r1, r1, lsl #13
d05a03de:	f000 8183 	beq.w	d05a06e8 <draw_random_shape+0x33c>
d05a03e2:	2801      	cmp	r0, #1
d05a03e4:	f000 827e 	beq.w	d05a08e4 <draw_random_shape+0x538>
d05a03e8:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d05a03ec:	4bb5      	ldr	r3, [pc, #724]	; (d05a06c4 <draw_random_shape+0x318>)
d05a03ee:	4eb6      	ldr	r6, [pc, #728]	; (d05a06c8 <draw_random_shape+0x31c>)
d05a03f0:	f240 15a9 	movw	r5, #425	; 0x1a9
d05a03f4:	ea81 1141 	eor.w	r1, r1, r1, lsl #5
d05a03f8:	4cb4      	ldr	r4, [pc, #720]	; (d05a06cc <draw_random_shape+0x320>)
d05a03fa:	48b5      	ldr	r0, [pc, #724]	; (d05a06d0 <draw_random_shape+0x324>)
d05a03fc:	ea81 3741 	eor.w	r7, r1, r1, lsl #13
d05a0400:	fba3 c301 	umull	ip, r3, r3, r1
d05a0404:	ea87 4757 	eor.w	r7, r7, r7, lsr #17
d05a0408:	eba1 0c03 	sub.w	ip, r1, r3
d05a040c:	ea87 1747 	eor.w	r7, r7, r7, lsl #5
d05a0410:	eb03 035c 	add.w	r3, r3, ip, lsr #1
d05a0414:	ea87 3e47 	eor.w	lr, r7, r7, lsl #13
d05a0418:	fba6 6c07 	umull	r6, ip, r6, r7
d05a041c:	0a1b      	lsrs	r3, r3, #8
d05a041e:	ea8e 465e 	eor.w	r6, lr, lr, lsr #17
d05a0422:	fb05 1113 	mls	r1, r5, r3, r1
d05a0426:	ea4f 0c5c 	mov.w	ip, ip, lsr #1
d05a042a:	ea86 1646 	eor.w	r6, r6, r6, lsl #5
d05a042e:	25c9      	movs	r5, #201	; 0xc9
d05a0430:	b289      	uxth	r1, r1
d05a0432:	ea86 3346 	eor.w	r3, r6, r6, lsl #13
d05a0436:	fb05 771c 	mls	r7, r5, ip, r7
d05a043a:	fba0 e006 	umull	lr, r0, r0, r6
d05a043e:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d05a0442:	0980      	lsrs	r0, r0, #6
d05a0444:	ea83 1543 	eor.w	r5, r3, r3, lsl #5
d05a0448:	eb00 00c0 	add.w	r0, r0, r0, lsl #3
d05a044c:	fba4 4305 	umull	r4, r3, r4, r5
d05a0450:	b2bc      	uxth	r4, r7
d05a0452:	eb00 00c0 	add.w	r0, r0, r0, lsl #3
d05a0456:	6015      	str	r5, [r2, #0]
d05a0458:	1aef      	subs	r7, r5, r3
d05a045a:	f1a1 0210 	sub.w	r2, r1, #16
d05a045e:	1a30      	subs	r0, r6, r0
d05a0460:	eb03 0357 	add.w	r3, r3, r7, lsr #1
d05a0464:	4402      	add	r2, r0
d05a0466:	f1a4 0010 	sub.w	r0, r4, #16
d05a046a:	095b      	lsrs	r3, r3, #5
d05a046c:	b212      	sxth	r2, r2
d05a046e:	ebc3 06c3 	rsb	r6, r3, r3, lsl #3
d05a0472:	2a00      	cmp	r2, #0
d05a0474:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
d05a0478:	eba5 0303 	sub.w	r3, r5, r3
d05a047c:	4403      	add	r3, r0
d05a047e:	b21b      	sxth	r3, r3
d05a0480:	dd2f      	ble.n	d05a04e2 <draw_random_shape+0x136>
d05a0482:	2b00      	cmp	r3, #0
d05a0484:	dd2d      	ble.n	d05a04e2 <draw_random_shape+0x136>
d05a0486:	f1a4 0618 	sub.w	r6, r4, #24
d05a048a:	2bc0      	cmp	r3, #192	; 0xc0
d05a048c:	f1a1 0118 	sub.w	r1, r1, #24
d05a0490:	b236      	sxth	r6, r6
d05a0492:	bfa8      	it	ge
d05a0494:	23c0      	movge	r3, #192	; 0xc0
d05a0496:	f5b2 7fcc 	cmp.w	r2, #408	; 0x198
d05a049a:	b209      	sxth	r1, r1
d05a049c:	ea26 76e6 	bic.w	r6, r6, r6, asr #31
d05a04a0:	bfa8      	it	ge
d05a04a2:	f44f 72cc 	movge.w	r2, #408	; 0x198
d05a04a6:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d05a04aa:	429e      	cmp	r6, r3
d05a04ac:	da19      	bge.n	d05a04e2 <draw_random_shape+0x136>
d05a04ae:	f44f 70cc 	mov.w	r0, #408	; 0x198
d05a04b2:	f8df c22c 	ldr.w	ip, [pc, #556]	; d05a06e0 <draw_random_shape+0x334>
d05a04b6:	43f7      	mvns	r7, r6
d05a04b8:	1a55      	subs	r5, r2, r1
d05a04ba:	fb16 1400 	smlabb	r4, r6, r0, r1
d05a04be:	eb0c 0200 	add.w	r2, ip, r0
d05a04c2:	443b      	add	r3, r7
d05a04c4:	4411      	add	r1, r2
d05a04c6:	4464      	add	r4, ip
d05a04c8:	fa16 f383 	uxtah	r3, r6, r3
d05a04cc:	fb00 1603 	mla	r6, r0, r3, r1
d05a04d0:	4620      	mov	r0, r4
d05a04d2:	f504 74cc 	add.w	r4, r4, #408	; 0x198
d05a04d6:	462a      	mov	r2, r5
d05a04d8:	4659      	mov	r1, fp
d05a04da:	f000 ffe5 	bl	d05a14a8 <memset>
d05a04de:	42b4      	cmp	r4, r6
d05a04e0:	d1f6      	bne.n	d05a04d0 <draw_random_shape+0x124>
d05a04e2:	b00d      	add	sp, #52	; 0x34
d05a04e4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05a04e8:	ea81 3141 	eor.w	r1, r1, r1, lsl #13
d05a04ec:	4879      	ldr	r0, [pc, #484]	; (d05a06d4 <draw_random_shape+0x328>)
d05a04ee:	f44f 77cc 	mov.w	r7, #408	; 0x198
d05a04f2:	f8df c1f0 	ldr.w	ip, [pc, #496]	; d05a06e4 <draw_random_shape+0x338>
d05a04f6:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d05a04fa:	26b8      	movs	r6, #184	; 0xb8
d05a04fc:	4d76      	ldr	r5, [pc, #472]	; (d05a06d8 <draw_random_shape+0x32c>)
d05a04fe:	ea81 1141 	eor.w	r1, r1, r1, lsl #5
d05a0502:	ea81 3341 	eor.w	r3, r1, r1, lsl #13
d05a0506:	fba0 e401 	umull	lr, r4, r0, r1
d05a050a:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d05a050e:	0a24      	lsrs	r4, r4, #8
d05a0510:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d05a0514:	fb07 1414 	mls	r4, r7, r4, r1
d05a0518:	ea83 3143 	eor.w	r1, r3, r3, lsl #13
d05a051c:	fbac ea03 	umull	lr, sl, ip, r3
d05a0520:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d05a0524:	ea4f 1ada 	mov.w	sl, sl, lsr #7
d05a0528:	ea81 1141 	eor.w	r1, r1, r1, lsl #5
d05a052c:	fb06 3a1a 	mls	sl, r6, sl, r3
d05a0530:	ea81 3341 	eor.w	r3, r1, r1, lsl #13
d05a0534:	fba0 e001 	umull	lr, r0, r0, r1
d05a0538:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d05a053c:	0a00      	lsrs	r0, r0, #8
d05a053e:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d05a0542:	fb07 1010 	mls	r0, r7, r0, r1
d05a0546:	b221      	sxth	r1, r4
d05a0548:	ea83 3743 	eor.w	r7, r3, r3, lsl #13
d05a054c:	9101      	str	r1, [sp, #4]
d05a054e:	b2a4      	uxth	r4, r4
d05a0550:	fbac c103 	umull	ip, r1, ip, r3
d05a0554:	ea87 4757 	eor.w	r7, r7, r7, lsr #17
d05a0558:	09c9      	lsrs	r1, r1, #7
d05a055a:	ea87 1747 	eor.w	r7, r7, r7, lsl #5
d05a055e:	fb06 3111 	mls	r1, r6, r1, r3
d05a0562:	b206      	sxth	r6, r0
d05a0564:	fba5 3507 	umull	r3, r5, r5, r7
d05a0568:	b280      	uxth	r0, r0
d05a056a:	6017      	str	r7, [r2, #0]
d05a056c:	b28a      	uxth	r2, r1
d05a056e:	f025 0303 	bic.w	r3, r5, #3
d05a0572:	b209      	sxth	r1, r1
d05a0574:	9609      	str	r6, [sp, #36]	; 0x24
d05a0576:	eb03 0595 	add.w	r5, r3, r5, lsr #2
d05a057a:	9104      	str	r1, [sp, #16]
d05a057c:	fa1f f18a 	uxth.w	r1, sl
d05a0580:	1b7f      	subs	r7, r7, r5
d05a0582:	9d01      	ldr	r5, [sp, #4]
d05a0584:	fa0f fa8a 	sxth.w	sl, sl
d05a0588:	3701      	adds	r7, #1
d05a058a:	42ae      	cmp	r6, r5
d05a058c:	b2bb      	uxth	r3, r7
d05a058e:	b2ff      	uxtb	r7, r7
d05a0590:	f340 8214 	ble.w	d05a09bc <draw_random_shape+0x610>
d05a0594:	1b00      	subs	r0, r0, r4
d05a0596:	2401      	movs	r4, #1
d05a0598:	940a      	str	r4, [sp, #40]	; 0x28
d05a059a:	b284      	uxth	r4, r0
d05a059c:	b200      	sxth	r0, r0
d05a059e:	9406      	str	r4, [sp, #24]
d05a05a0:	9007      	str	r0, [sp, #28]
d05a05a2:	9804      	ldr	r0, [sp, #16]
d05a05a4:	4550      	cmp	r0, sl
d05a05a6:	f340 8205 	ble.w	d05a09b4 <draw_random_shape+0x608>
d05a05aa:	1a8a      	subs	r2, r1, r2
d05a05ac:	2101      	movs	r1, #1
d05a05ae:	910b      	str	r1, [sp, #44]	; 0x2c
d05a05b0:	b291      	uxth	r1, r2
d05a05b2:	b212      	sxth	r2, r2
d05a05b4:	f8bd 9004 	ldrh.w	r9, [sp, #4]
d05a05b8:	9105      	str	r1, [sp, #20]
d05a05ba:	087f      	lsrs	r7, r7, #1
d05a05bc:	9208      	str	r2, [sp, #32]
d05a05be:	460a      	mov	r2, r1
d05a05c0:	9906      	ldr	r1, [sp, #24]
d05a05c2:	fa1f f88a 	uxth.w	r8, sl
d05a05c6:	1856      	adds	r6, r2, r1
d05a05c8:	4659      	mov	r1, fp
d05a05ca:	469b      	mov	fp, r3
d05a05cc:	4653      	mov	r3, sl
d05a05ce:	b236      	sxth	r6, r6
d05a05d0:	46ba      	mov	sl, r7
d05a05d2:	4637      	mov	r7, r6
d05a05d4:	eba9 040a 	sub.w	r4, r9, sl
d05a05d8:	eba8 000a 	sub.w	r0, r8, sl
d05a05dc:	b2a4      	uxth	r4, r4
d05a05de:	b280      	uxth	r0, r0
d05a05e0:	eb04 060b 	add.w	r6, r4, fp
d05a05e4:	eb00 0c0b 	add.w	ip, r0, fp
d05a05e8:	b236      	sxth	r6, r6
d05a05ea:	fa0f fc8c 	sxth.w	ip, ip
d05a05ee:	2e00      	cmp	r6, #0
d05a05f0:	dd40      	ble.n	d05a0674 <draw_random_shape+0x2c8>
d05a05f2:	f1bc 0f00 	cmp.w	ip, #0
d05a05f6:	dd3d      	ble.n	d05a0674 <draw_random_shape+0x2c8>
d05a05f8:	b224      	sxth	r4, r4
d05a05fa:	f240 1297 	movw	r2, #407	; 0x197
d05a05fe:	b200      	sxth	r0, r0
d05a0600:	4294      	cmp	r4, r2
d05a0602:	dc37      	bgt.n	d05a0674 <draw_random_shape+0x2c8>
d05a0604:	28bf      	cmp	r0, #191	; 0xbf
d05a0606:	dc35      	bgt.n	d05a0674 <draw_random_shape+0x2c8>
d05a0608:	f1bc 0fc0 	cmp.w	ip, #192	; 0xc0
d05a060c:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d05a0610:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d05a0614:	bfa8      	it	ge
d05a0616:	f04f 0cc0 	movge.w	ip, #192	; 0xc0
d05a061a:	f5b6 7fcc 	cmp.w	r6, #408	; 0x198
d05a061e:	bfa8      	it	ge
d05a0620:	f44f 76cc 	movge.w	r6, #408	; 0x198
d05a0624:	4560      	cmp	r0, ip
d05a0626:	da25      	bge.n	d05a0674 <draw_random_shape+0x2c8>
d05a0628:	ebac 0c00 	sub.w	ip, ip, r0
d05a062c:	f44f 7ecc 	mov.w	lr, #408	; 0x198
d05a0630:	4a2a      	ldr	r2, [pc, #168]	; (d05a06dc <draw_random_shape+0x330>)
d05a0632:	1b36      	subs	r6, r6, r4
d05a0634:	f10c 35ff 	add.w	r5, ip, #4294967295	; 0xffffffff
d05a0638:	f8cd 800c 	str.w	r8, [sp, #12]
d05a063c:	4422      	add	r2, r4
d05a063e:	46b8      	mov	r8, r7
d05a0640:	fb10 440e 	smlabb	r4, r0, lr, r4
d05a0644:	fa10 f085 	uxtah	r0, r0, r5
d05a0648:	4d25      	ldr	r5, [pc, #148]	; (d05a06e0 <draw_random_shape+0x334>)
d05a064a:	461f      	mov	r7, r3
d05a064c:	442c      	add	r4, r5
d05a064e:	fb0e 2500 	mla	r5, lr, r0, r2
d05a0652:	4632      	mov	r2, r6
d05a0654:	460e      	mov	r6, r1
d05a0656:	4620      	mov	r0, r4
d05a0658:	f504 74cc 	add.w	r4, r4, #408	; 0x198
d05a065c:	4631      	mov	r1, r6
d05a065e:	9202      	str	r2, [sp, #8]
d05a0660:	f000 ff22 	bl	d05a14a8 <memset>
d05a0664:	42ac      	cmp	r4, r5
d05a0666:	9a02      	ldr	r2, [sp, #8]
d05a0668:	d1f5      	bne.n	d05a0656 <draw_random_shape+0x2aa>
d05a066a:	463b      	mov	r3, r7
d05a066c:	4631      	mov	r1, r6
d05a066e:	4647      	mov	r7, r8
d05a0670:	f8dd 800c 	ldr.w	r8, [sp, #12]
d05a0674:	9a01      	ldr	r2, [sp, #4]
d05a0676:	9809      	ldr	r0, [sp, #36]	; 0x24
d05a0678:	4282      	cmp	r2, r0
d05a067a:	d103      	bne.n	d05a0684 <draw_random_shape+0x2d8>
d05a067c:	9a04      	ldr	r2, [sp, #16]
d05a067e:	4293      	cmp	r3, r2
d05a0680:	f43f af2f 	beq.w	d05a04e2 <draw_random_shape+0x136>
d05a0684:	007a      	lsls	r2, r7, #1
d05a0686:	9808      	ldr	r0, [sp, #32]
d05a0688:	b212      	sxth	r2, r2
d05a068a:	4282      	cmp	r2, r0
d05a068c:	db09      	blt.n	d05a06a2 <draw_random_shape+0x2f6>
d05a068e:	9805      	ldr	r0, [sp, #20]
d05a0690:	4407      	add	r7, r0
d05a0692:	980a      	ldr	r0, [sp, #40]	; 0x28
d05a0694:	4481      	add	r9, r0
d05a0696:	b23f      	sxth	r7, r7
d05a0698:	fa0f f089 	sxth.w	r0, r9
d05a069c:	fa1f f989 	uxth.w	r9, r9
d05a06a0:	9001      	str	r0, [sp, #4]
d05a06a2:	9807      	ldr	r0, [sp, #28]
d05a06a4:	4282      	cmp	r2, r0
d05a06a6:	dc95      	bgt.n	d05a05d4 <draw_random_shape+0x228>
d05a06a8:	9b06      	ldr	r3, [sp, #24]
d05a06aa:	441f      	add	r7, r3
d05a06ac:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
d05a06ae:	4498      	add	r8, r3
d05a06b0:	b23f      	sxth	r7, r7
d05a06b2:	fa0f f388 	sxth.w	r3, r8
d05a06b6:	fa1f f888 	uxth.w	r8, r8
d05a06ba:	e78b      	b.n	d05a05d4 <draw_random_shape+0x228>
d05a06bc:	d05a2540 	.word	0xd05a2540
d05a06c0:	d05b57e0 	.word	0xd05b57e0
d05a06c4:	34679acf 	.word	0x34679acf
d05a06c8:	028c1979 	.word	0x028c1979
d05a06cc:	1f7047dd 	.word	0x1f7047dd
d05a06d0:	ca4587e7 	.word	0xca4587e7
d05a06d4:	a0a0a0a1 	.word	0xa0a0a0a1
d05a06d8:	cccccccd 	.word	0xcccccccd
d05a06dc:	d05a2778 	.word	0xd05a2778
d05a06e0:	d05a25e0 	.word	0xd05a25e0
d05a06e4:	b21642c9 	.word	0xb21642c9
d05a06e8:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d05a06ec:	4bc2      	ldr	r3, [pc, #776]	; (d05a09f8 <draw_random_shape+0x64c>)
d05a06ee:	f44f 7ccc 	mov.w	ip, #408	; 0x198
d05a06f2:	4dc2      	ldr	r5, [pc, #776]	; (d05a09fc <draw_random_shape+0x650>)
d05a06f4:	ea81 1141 	eor.w	r1, r1, r1, lsl #5
d05a06f8:	20b8      	movs	r0, #184	; 0xb8
d05a06fa:	ea81 3441 	eor.w	r4, r1, r1, lsl #13
d05a06fe:	fba3 7601 	umull	r7, r6, r3, r1
d05a0702:	ea84 4454 	eor.w	r4, r4, r4, lsr #17
d05a0706:	0a36      	lsrs	r6, r6, #8
d05a0708:	ea84 1444 	eor.w	r4, r4, r4, lsl #5
d05a070c:	fb0c 1116 	mls	r1, ip, r6, r1
d05a0710:	ea84 3644 	eor.w	r6, r4, r4, lsl #13
d05a0714:	fba5 e704 	umull	lr, r7, r5, r4
d05a0718:	b209      	sxth	r1, r1
d05a071a:	ea86 4656 	eor.w	r6, r6, r6, lsr #17
d05a071e:	09ff      	lsrs	r7, r7, #7
d05a0720:	ea86 1646 	eor.w	r6, r6, r6, lsl #5
d05a0724:	fb00 4717 	mls	r7, r0, r7, r4
d05a0728:	fba3 8e06 	umull	r8, lr, r3, r6
d05a072c:	ea86 3446 	eor.w	r4, r6, r6, lsl #13
d05a0730:	b23f      	sxth	r7, r7
d05a0732:	ea84 4454 	eor.w	r4, r4, r4, lsr #17
d05a0736:	ea4f 2e1e 	mov.w	lr, lr, lsr #8
d05a073a:	ea84 1444 	eor.w	r4, r4, r4, lsl #5
d05a073e:	fb0c 6e1e 	mls	lr, ip, lr, r6
d05a0742:	ea84 3944 	eor.w	r9, r4, r4, lsl #13
d05a0746:	fba5 6804 	umull	r6, r8, r5, r4
d05a074a:	fa0f f68e 	sxth.w	r6, lr
d05a074e:	ea4f 18d8 	mov.w	r8, r8, lsr #7
d05a0752:	9602      	str	r6, [sp, #8]
d05a0754:	ea89 4659 	eor.w	r6, r9, r9, lsr #17
d05a0758:	fb00 4818 	mls	r8, r0, r8, r4
d05a075c:	ea86 1e46 	eor.w	lr, r6, r6, lsl #5
d05a0760:	ea8e 344e 	eor.w	r4, lr, lr, lsl #13
d05a0764:	fba3 360e 	umull	r3, r6, r3, lr
d05a0768:	fa0f f388 	sxth.w	r3, r8
d05a076c:	ea84 4454 	eor.w	r4, r4, r4, lsr #17
d05a0770:	0a36      	lsrs	r6, r6, #8
d05a0772:	42bb      	cmp	r3, r7
d05a0774:	ea84 1444 	eor.w	r4, r4, r4, lsl #5
d05a0778:	fb0c e616 	mls	r6, ip, r6, lr
d05a077c:	fba5 c504 	umull	ip, r5, r5, r4
d05a0780:	b236      	sxth	r6, r6
d05a0782:	6014      	str	r4, [r2, #0]
d05a0784:	ea4f 15d5 	mov.w	r5, r5, lsr #7
d05a0788:	fb00 4515 	mls	r5, r0, r5, r4
d05a078c:	b22d      	sxth	r5, r5
d05a078e:	f2c0 8094 	blt.w	d05a08ba <draw_random_shape+0x50e>
d05a0792:	42bd      	cmp	r5, r7
d05a0794:	f280 809a 	bge.w	d05a08cc <draw_random_shape+0x520>
d05a0798:	42bb      	cmp	r3, r7
d05a079a:	dd0a      	ble.n	d05a07b2 <draw_random_shape+0x406>
d05a079c:	4618      	mov	r0, r3
d05a079e:	9a02      	ldr	r2, [sp, #8]
d05a07a0:	463b      	mov	r3, r7
d05a07a2:	9102      	str	r1, [sp, #8]
d05a07a4:	4607      	mov	r7, r0
d05a07a6:	4611      	mov	r1, r2
d05a07a8:	42bd      	cmp	r5, r7
d05a07aa:	f43f ae9a 	beq.w	d05a04e2 <draw_random_shape+0x136>
d05a07ae:	f73f ae98 	bgt.w	d05a04e2 <draw_random_shape+0x136>
d05a07b2:	1afa      	subs	r2, r7, r3
d05a07b4:	fa1f f987 	uxth.w	r9, r7
d05a07b8:	b2ac      	uxth	r4, r5
d05a07ba:	fab2 f282 	clz	r2, r2
d05a07be:	fa1f f883 	uxth.w	r8, r3
d05a07c2:	0952      	lsrs	r2, r2, #5
d05a07c4:	9201      	str	r2, [sp, #4]
d05a07c6:	eba9 0204 	sub.w	r2, r9, r4
d05a07ca:	eba9 0908 	sub.w	r9, r9, r8
d05a07ce:	eba8 0804 	sub.w	r8, r8, r4
d05a07d2:	b212      	sxth	r2, r2
d05a07d4:	fa0f f089 	sxth.w	r0, r9
d05a07d8:	9203      	str	r2, [sp, #12]
d05a07da:	9005      	str	r0, [sp, #20]
d05a07dc:	fa0f f088 	sxth.w	r0, r8
d05a07e0:	9004      	str	r0, [sp, #16]
d05a07e2:	2a00      	cmp	r2, #0
d05a07e4:	f000 8158 	beq.w	d05a0a98 <draw_random_shape+0x6ec>
d05a07e8:	2800      	cmp	r0, #0
d05a07ea:	f000 81be 	beq.w	d05a0b6a <draw_random_shape+0x7be>
d05a07ee:	9805      	ldr	r0, [sp, #20]
d05a07f0:	2800      	cmp	r0, #0
d05a07f2:	f000 80f0 	beq.w	d05a09d6 <draw_random_shape+0x62a>
d05a07f6:	9802      	ldr	r0, [sp, #8]
d05a07f8:	eb05 0945 	add.w	r9, r5, r5, lsl #1
d05a07fc:	1aed      	subs	r5, r5, r3
d05a07fe:	f04f 0a00 	mov.w	sl, #0
d05a0802:	1a0a      	subs	r2, r1, r0
d05a0804:	eb09 1909 	add.w	r9, r9, r9, lsl #4
d05a0808:	1b89      	subs	r1, r1, r6
d05a080a:	46d0      	mov	r8, sl
d05a080c:	fb02 f505 	mul.w	r5, r2, r5
d05a0810:	ea4f 09c9 	mov.w	r9, r9, lsl #3
d05a0814:	9207      	str	r2, [sp, #28]
d05a0816:	1b82      	subs	r2, r0, r6
d05a0818:	9106      	str	r1, [sp, #24]
d05a081a:	b2b6      	uxth	r6, r6
d05a081c:	9208      	str	r2, [sp, #32]
d05a081e:	463a      	mov	r2, r7
d05a0820:	f8cd b028 	str.w	fp, [sp, #40]	; 0x28
d05a0824:	461f      	mov	r7, r3
d05a0826:	4613      	mov	r3, r2
d05a0828:	e02e      	b.n	d05a0888 <draw_random_shape+0x4dc>
d05a082a:	4291      	cmp	r1, r2
d05a082c:	db02      	blt.n	d05a0834 <draw_random_shape+0x488>
d05a082e:	468c      	mov	ip, r1
d05a0830:	4611      	mov	r1, r2
d05a0832:	4662      	mov	r2, ip
d05a0834:	3201      	adds	r2, #1
d05a0836:	3401      	adds	r4, #1
d05a0838:	b212      	sxth	r2, r2
d05a083a:	fa0f fb84 	sxth.w	fp, r4
d05a083e:	2a00      	cmp	r2, #0
d05a0840:	dd16      	ble.n	d05a0870 <draw_random_shape+0x4c4>
d05a0842:	f5b1 7fcc 	cmp.w	r1, #408	; 0x198
d05a0846:	da13      	bge.n	d05a0870 <draw_random_shape+0x4c4>
d05a0848:	f5b2 7fcc 	cmp.w	r2, #408	; 0x198
d05a084c:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d05a0850:	bfa8      	it	ge
d05a0852:	f44f 72cc 	movge.w	r2, #408	; 0x198
d05a0856:	4558      	cmp	r0, fp
d05a0858:	b209      	sxth	r1, r1
d05a085a:	da09      	bge.n	d05a0870 <draw_random_shape+0x4c4>
d05a085c:	eb01 0009 	add.w	r0, r1, r9
d05a0860:	9309      	str	r3, [sp, #36]	; 0x24
d05a0862:	4b67      	ldr	r3, [pc, #412]	; (d05a0a00 <draw_random_shape+0x654>)
d05a0864:	1a52      	subs	r2, r2, r1
d05a0866:	990a      	ldr	r1, [sp, #40]	; 0x28
d05a0868:	4418      	add	r0, r3
d05a086a:	f000 fe1d 	bl	d05a14a8 <memset>
d05a086e:	9b09      	ldr	r3, [sp, #36]	; 0x24
d05a0870:	9a06      	ldr	r2, [sp, #24]
d05a0872:	459b      	cmp	fp, r3
d05a0874:	b2a4      	uxth	r4, r4
d05a0876:	f509 79cc 	add.w	r9, r9, #408	; 0x198
d05a087a:	4490      	add	r8, r2
d05a087c:	9a08      	ldr	r2, [sp, #32]
d05a087e:	4492      	add	sl, r2
d05a0880:	9a07      	ldr	r2, [sp, #28]
d05a0882:	4415      	add	r5, r2
d05a0884:	f73f ae2d 	bgt.w	d05a04e2 <draw_random_shape+0x136>
d05a0888:	9a03      	ldr	r2, [sp, #12]
d05a088a:	b220      	sxth	r0, r4
d05a088c:	fb98 f2f2 	sdiv	r2, r8, r2
d05a0890:	42b8      	cmp	r0, r7
d05a0892:	4432      	add	r2, r6
d05a0894:	b212      	sxth	r2, r2
d05a0896:	f2c0 80f3 	blt.w	d05a0a80 <draw_random_shape+0x6d4>
d05a089a:	9901      	ldr	r1, [sp, #4]
d05a089c:	2900      	cmp	r1, #0
d05a089e:	f040 80ef 	bne.w	d05a0a80 <draw_random_shape+0x6d4>
d05a08a2:	9905      	ldr	r1, [sp, #20]
d05a08a4:	fb95 fcf1 	sdiv	ip, r5, r1
d05a08a8:	9902      	ldr	r1, [sp, #8]
d05a08aa:	4461      	add	r1, ip
d05a08ac:	b209      	sxth	r1, r1
d05a08ae:	2cbf      	cmp	r4, #191	; 0xbf
d05a08b0:	d9bb      	bls.n	d05a082a <draw_random_shape+0x47e>
d05a08b2:	3401      	adds	r4, #1
d05a08b4:	fa0f fb84 	sxth.w	fp, r4
d05a08b8:	e7da      	b.n	d05a0870 <draw_random_shape+0x4c4>
d05a08ba:	429d      	cmp	r5, r3
d05a08bc:	f6ff af74 	blt.w	d05a07a8 <draw_random_shape+0x3fc>
d05a08c0:	463a      	mov	r2, r7
d05a08c2:	4608      	mov	r0, r1
d05a08c4:	461f      	mov	r7, r3
d05a08c6:	9902      	ldr	r1, [sp, #8]
d05a08c8:	4613      	mov	r3, r2
d05a08ca:	9002      	str	r0, [sp, #8]
d05a08cc:	429d      	cmp	r5, r3
d05a08ce:	db79      	blt.n	d05a09c4 <draw_random_shape+0x618>
d05a08d0:	42bd      	cmp	r5, r7
d05a08d2:	f43f ae06 	beq.w	d05a04e2 <draw_random_shape+0x136>
d05a08d6:	4638      	mov	r0, r7
d05a08d8:	460a      	mov	r2, r1
d05a08da:	462f      	mov	r7, r5
d05a08dc:	4631      	mov	r1, r6
d05a08de:	4605      	mov	r5, r0
d05a08e0:	4616      	mov	r6, r2
d05a08e2:	e766      	b.n	d05a07b2 <draw_random_shape+0x406>
d05a08e4:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d05a08e8:	4f43      	ldr	r7, [pc, #268]	; (d05a09f8 <draw_random_shape+0x64c>)
d05a08ea:	4e44      	ldr	r6, [pc, #272]	; (d05a09fc <draw_random_shape+0x650>)
d05a08ec:	f44f 79cc 	mov.w	r9, #408	; 0x198
d05a08f0:	ea81 1141 	eor.w	r1, r1, r1, lsl #5
d05a08f4:	4b43      	ldr	r3, [pc, #268]	; (d05a0a04 <draw_random_shape+0x658>)
d05a08f6:	25b8      	movs	r5, #184	; 0xb8
d05a08f8:	f64f 7cfc 	movw	ip, #65532	; 0xfffc
d05a08fc:	ea81 3041 	eor.w	r0, r1, r1, lsl #13
d05a0900:	fba7 4701 	umull	r4, r7, r7, r1
d05a0904:	ea80 4050 	eor.w	r0, r0, r0, lsr #17
d05a0908:	0a3f      	lsrs	r7, r7, #8
d05a090a:	ea80 1040 	eor.w	r0, r0, r0, lsl #5
d05a090e:	fb09 1717 	mls	r7, r9, r7, r1
d05a0912:	ea80 3440 	eor.w	r4, r0, r0, lsl #13
d05a0916:	fba6 6100 	umull	r6, r1, r6, r0
d05a091a:	ea84 4454 	eor.w	r4, r4, r4, lsr #17
d05a091e:	09c9      	lsrs	r1, r1, #7
d05a0920:	ea84 1444 	eor.w	r4, r4, r4, lsl #5
d05a0924:	fb05 0111 	mls	r1, r5, r1, r0
d05a0928:	fba3 0304 	umull	r0, r3, r3, r4
d05a092c:	6014      	str	r4, [r2, #0]
d05a092e:	091b      	lsrs	r3, r3, #4
d05a0930:	ebc3 02c3 	rsb	r2, r3, r3, lsl #3
d05a0934:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d05a0938:	1ae4      	subs	r4, r4, r3
d05a093a:	b2a4      	uxth	r4, r4
d05a093c:	ebac 0c04 	sub.w	ip, ip, r4
d05a0940:	3404      	adds	r4, #4
d05a0942:	fa1f f38c 	uxth.w	r3, ip
d05a0946:	fa0f fc8c 	sxth.w	ip, ip
d05a094a:	4419      	add	r1, r3
d05a094c:	fa13 f787 	uxtah	r7, r3, r7
d05a0950:	fb14 f304 	smulbb	r3, r4, r4
d05a0954:	4662      	mov	r2, ip
d05a0956:	b289      	uxth	r1, r1
d05a0958:	b2bf      	uxth	r7, r7
d05a095a:	fa0f fa83 	sxth.w	sl, r3
d05a095e:	b224      	sxth	r4, r4
d05a0960:	fb02 f502 	mul.w	r5, r2, r2
d05a0964:	fa0f fe81 	sxth.w	lr, r1
d05a0968:	b292      	uxth	r2, r2
d05a096a:	4638      	mov	r0, r7
d05a096c:	b2ad      	uxth	r5, r5
d05a096e:	4663      	mov	r3, ip
d05a0970:	fb03 5603 	mla	r6, r3, r3, r5
d05a0974:	b29b      	uxth	r3, r3
d05a0976:	f100 0801 	add.w	r8, r0, #1
d05a097a:	b236      	sxth	r6, r6
d05a097c:	3301      	adds	r3, #1
d05a097e:	45b2      	cmp	sl, r6
d05a0980:	b21b      	sxth	r3, r3
d05a0982:	db0a      	blt.n	d05a099a <draw_random_shape+0x5ee>
d05a0984:	f240 1697 	movw	r6, #407	; 0x197
d05a0988:	42b0      	cmp	r0, r6
d05a098a:	fb1e 0009 	smlabb	r0, lr, r9, r0
d05a098e:	d804      	bhi.n	d05a099a <draw_random_shape+0x5ee>
d05a0990:	29bf      	cmp	r1, #191	; 0xbf
d05a0992:	d802      	bhi.n	d05a099a <draw_random_shape+0x5ee>
d05a0994:	4e1a      	ldr	r6, [pc, #104]	; (d05a0a00 <draw_random_shape+0x654>)
d05a0996:	f806 b000 	strb.w	fp, [r6, r0]
d05a099a:	429c      	cmp	r4, r3
d05a099c:	fa1f f088 	uxth.w	r0, r8
d05a09a0:	dae6      	bge.n	d05a0970 <draw_random_shape+0x5c4>
d05a09a2:	3201      	adds	r2, #1
d05a09a4:	3101      	adds	r1, #1
d05a09a6:	b212      	sxth	r2, r2
d05a09a8:	b289      	uxth	r1, r1
d05a09aa:	4294      	cmp	r4, r2
d05a09ac:	dad8      	bge.n	d05a0960 <draw_random_shape+0x5b4>
d05a09ae:	b00d      	add	sp, #52	; 0x34
d05a09b0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05a09b4:	1a52      	subs	r2, r2, r1
d05a09b6:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d05a09ba:	e5f8      	b.n	d05a05ae <draw_random_shape+0x202>
d05a09bc:	1a20      	subs	r0, r4, r0
d05a09be:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
d05a09c2:	e5e9      	b.n	d05a0598 <draw_random_shape+0x1ec>
d05a09c4:	4618      	mov	r0, r3
d05a09c6:	9a02      	ldr	r2, [sp, #8]
d05a09c8:	462b      	mov	r3, r5
d05a09ca:	9602      	str	r6, [sp, #8]
d05a09cc:	463d      	mov	r5, r7
d05a09ce:	460e      	mov	r6, r1
d05a09d0:	4607      	mov	r7, r0
d05a09d2:	4611      	mov	r1, r2
d05a09d4:	e6e8      	b.n	d05a07a8 <draw_random_shape+0x3fc>
d05a09d6:	1b8a      	subs	r2, r1, r6
d05a09d8:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d05a09dc:	9902      	ldr	r1, [sp, #8]
d05a09de:	4681      	mov	r9, r0
d05a09e0:	eb05 1505 	add.w	r5, r5, r5, lsl #4
d05a09e4:	f8cd b01c 	str.w	fp, [sp, #28]
d05a09e8:	1b89      	subs	r1, r1, r6
d05a09ea:	469b      	mov	fp, r3
d05a09ec:	4680      	mov	r8, r0
d05a09ee:	b2b6      	uxth	r6, r6
d05a09f0:	00ed      	lsls	r5, r5, #3
d05a09f2:	4613      	mov	r3, r2
d05a09f4:	9105      	str	r1, [sp, #20]
d05a09f6:	e032      	b.n	d05a0a5e <draw_random_shape+0x6b2>
d05a09f8:	a0a0a0a1 	.word	0xa0a0a0a1
d05a09fc:	b21642c9 	.word	0xb21642c9
d05a0a00:	d05a25e0 	.word	0xd05a25e0
d05a0a04:	8d3dcb09 	.word	0x8d3dcb09
d05a0a08:	428a      	cmp	r2, r1
d05a0a0a:	da02      	bge.n	d05a0a12 <draw_random_shape+0x666>
d05a0a0c:	468c      	mov	ip, r1
d05a0a0e:	4611      	mov	r1, r2
d05a0a10:	4662      	mov	r2, ip
d05a0a12:	3201      	adds	r2, #1
d05a0a14:	3401      	adds	r4, #1
d05a0a16:	b212      	sxth	r2, r2
d05a0a18:	fa0f fa84 	sxth.w	sl, r4
d05a0a1c:	2a00      	cmp	r2, #0
d05a0a1e:	dd15      	ble.n	d05a0a4c <draw_random_shape+0x6a0>
d05a0a20:	f5b1 7fcc 	cmp.w	r1, #408	; 0x198
d05a0a24:	da12      	bge.n	d05a0a4c <draw_random_shape+0x6a0>
d05a0a26:	f5b2 7fcc 	cmp.w	r2, #408	; 0x198
d05a0a2a:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d05a0a2e:	bfa8      	it	ge
d05a0a30:	f44f 72cc 	movge.w	r2, #408	; 0x198
d05a0a34:	4582      	cmp	sl, r0
d05a0a36:	b209      	sxth	r1, r1
d05a0a38:	dd08      	ble.n	d05a0a4c <draw_random_shape+0x6a0>
d05a0a3a:	1948      	adds	r0, r1, r5
d05a0a3c:	9306      	str	r3, [sp, #24]
d05a0a3e:	4bb0      	ldr	r3, [pc, #704]	; (d05a0d00 <draw_random_shape+0x954>)
d05a0a40:	1a52      	subs	r2, r2, r1
d05a0a42:	9907      	ldr	r1, [sp, #28]
d05a0a44:	4418      	add	r0, r3
d05a0a46:	f000 fd2f 	bl	d05a14a8 <memset>
d05a0a4a:	9b06      	ldr	r3, [sp, #24]
d05a0a4c:	9a05      	ldr	r2, [sp, #20]
d05a0a4e:	45ba      	cmp	sl, r7
d05a0a50:	4498      	add	r8, r3
d05a0a52:	b2a4      	uxth	r4, r4
d05a0a54:	f505 75cc 	add.w	r5, r5, #408	; 0x198
d05a0a58:	4491      	add	r9, r2
d05a0a5a:	f73f ad42 	bgt.w	d05a04e2 <draw_random_shape+0x136>
d05a0a5e:	9a03      	ldr	r2, [sp, #12]
d05a0a60:	b220      	sxth	r0, r4
d05a0a62:	fb98 f1f2 	sdiv	r1, r8, r2
d05a0a66:	4558      	cmp	r0, fp
d05a0a68:	4431      	add	r1, r6
d05a0a6a:	b209      	sxth	r1, r1
d05a0a6c:	db0e      	blt.n	d05a0a8c <draw_random_shape+0x6e0>
d05a0a6e:	9a01      	ldr	r2, [sp, #4]
d05a0a70:	b962      	cbnz	r2, d05a0a8c <draw_random_shape+0x6e0>
d05a0a72:	9a02      	ldr	r2, [sp, #8]
d05a0a74:	2cbf      	cmp	r4, #191	; 0xbf
d05a0a76:	d9c7      	bls.n	d05a0a08 <draw_random_shape+0x65c>
d05a0a78:	3401      	adds	r4, #1
d05a0a7a:	fa0f fa84 	sxth.w	sl, r4
d05a0a7e:	e7e5      	b.n	d05a0a4c <draw_random_shape+0x6a0>
d05a0a80:	9904      	ldr	r1, [sp, #16]
d05a0a82:	fb9a f1f1 	sdiv	r1, sl, r1
d05a0a86:	4431      	add	r1, r6
d05a0a88:	b209      	sxth	r1, r1
d05a0a8a:	e710      	b.n	d05a08ae <draw_random_shape+0x502>
d05a0a8c:	9a04      	ldr	r2, [sp, #16]
d05a0a8e:	fb99 f2f2 	sdiv	r2, r9, r2
d05a0a92:	4432      	add	r2, r6
d05a0a94:	b212      	sxth	r2, r2
d05a0a96:	e7ed      	b.n	d05a0a74 <draw_random_shape+0x6c8>
d05a0a98:	9a05      	ldr	r2, [sp, #20]
d05a0a9a:	2a00      	cmp	r2, #0
d05a0a9c:	f000 80c4 	beq.w	d05a0c28 <draw_random_shape+0x87c>
d05a0aa0:	2800      	cmp	r0, #0
d05a0aa2:	f000 8119 	beq.w	d05a0cd8 <draw_random_shape+0x92c>
d05a0aa6:	9a02      	ldr	r2, [sp, #8]
d05a0aa8:	eb05 0845 	add.w	r8, r5, r5, lsl #1
d05a0aac:	1aed      	subs	r5, r5, r3
d05a0aae:	f8dd 900c 	ldr.w	r9, [sp, #12]
d05a0ab2:	1a88      	subs	r0, r1, r2
d05a0ab4:	1c72      	adds	r2, r6, #1
d05a0ab6:	eb08 1808 	add.w	r8, r8, r8, lsl #4
d05a0aba:	b211      	sxth	r1, r2
d05a0abc:	9a02      	ldr	r2, [sp, #8]
d05a0abe:	fb00 f505 	mul.w	r5, r0, r5
d05a0ac2:	ea4f 08c8 	mov.w	r8, r8, lsl #3
d05a0ac6:	1b92      	subs	r2, r2, r6
d05a0ac8:	9108      	str	r1, [sp, #32]
d05a0aca:	4659      	mov	r1, fp
d05a0acc:	469b      	mov	fp, r3
d05a0ace:	9203      	str	r2, [sp, #12]
d05a0ad0:	463b      	mov	r3, r7
d05a0ad2:	4607      	mov	r7, r0
d05a0ad4:	e026      	b.n	d05a0b24 <draw_random_shape+0x778>
d05a0ad6:	42b0      	cmp	r0, r6
d05a0ad8:	da3c      	bge.n	d05a0b54 <draw_random_shape+0x7a8>
d05a0ada:	3401      	adds	r4, #1
d05a0adc:	f8dd e020 	ldr.w	lr, [sp, #32]
d05a0ae0:	fa0f fa84 	sxth.w	sl, r4
d05a0ae4:	f5be 7fcc 	cmp.w	lr, #408	; 0x198
d05a0ae8:	ea20 72e0 	bic.w	r2, r0, r0, asr #31
d05a0aec:	bfa8      	it	ge
d05a0aee:	f44f 7ecc 	movge.w	lr, #408	; 0x198
d05a0af2:	45d4      	cmp	ip, sl
d05a0af4:	b212      	sxth	r2, r2
d05a0af6:	da0c      	bge.n	d05a0b12 <draw_random_shape+0x766>
d05a0af8:	eb02 0c08 	add.w	ip, r2, r8
d05a0afc:	9307      	str	r3, [sp, #28]
d05a0afe:	4b80      	ldr	r3, [pc, #512]	; (d05a0d00 <draw_random_shape+0x954>)
d05a0b00:	ebae 0202 	sub.w	r2, lr, r2
d05a0b04:	9106      	str	r1, [sp, #24]
d05a0b06:	eb03 000c 	add.w	r0, r3, ip
d05a0b0a:	f000 fccd 	bl	d05a14a8 <memset>
d05a0b0e:	9b07      	ldr	r3, [sp, #28]
d05a0b10:	9906      	ldr	r1, [sp, #24]
d05a0b12:	9a03      	ldr	r2, [sp, #12]
d05a0b14:	459a      	cmp	sl, r3
d05a0b16:	b2a4      	uxth	r4, r4
d05a0b18:	f508 78cc 	add.w	r8, r8, #408	; 0x198
d05a0b1c:	4491      	add	r9, r2
d05a0b1e:	443d      	add	r5, r7
d05a0b20:	f73f acdf 	bgt.w	d05a04e2 <draw_random_shape+0x136>
d05a0b24:	fa0f fc84 	sxth.w	ip, r4
d05a0b28:	45dc      	cmp	ip, fp
d05a0b2a:	db0d      	blt.n	d05a0b48 <draw_random_shape+0x79c>
d05a0b2c:	9a01      	ldr	r2, [sp, #4]
d05a0b2e:	b95a      	cbnz	r2, d05a0b48 <draw_random_shape+0x79c>
d05a0b30:	9a05      	ldr	r2, [sp, #20]
d05a0b32:	fb95 f0f2 	sdiv	r0, r5, r2
d05a0b36:	9a02      	ldr	r2, [sp, #8]
d05a0b38:	4410      	add	r0, r2
d05a0b3a:	b200      	sxth	r0, r0
d05a0b3c:	2cbf      	cmp	r4, #191	; 0xbf
d05a0b3e:	d9ca      	bls.n	d05a0ad6 <draw_random_shape+0x72a>
d05a0b40:	3401      	adds	r4, #1
d05a0b42:	fa0f fa84 	sxth.w	sl, r4
d05a0b46:	e7e4      	b.n	d05a0b12 <draw_random_shape+0x766>
d05a0b48:	9a04      	ldr	r2, [sp, #16]
d05a0b4a:	fb99 f0f2 	sdiv	r0, r9, r2
d05a0b4e:	4430      	add	r0, r6
d05a0b50:	b200      	sxth	r0, r0
d05a0b52:	e7f3      	b.n	d05a0b3c <draw_random_shape+0x790>
d05a0b54:	3001      	adds	r0, #1
d05a0b56:	3401      	adds	r4, #1
d05a0b58:	fa0f fe80 	sxth.w	lr, r0
d05a0b5c:	fa0f fa84 	sxth.w	sl, r4
d05a0b60:	f1be 0f00 	cmp.w	lr, #0
d05a0b64:	ddd5      	ble.n	d05a0b12 <draw_random_shape+0x766>
d05a0b66:	4630      	mov	r0, r6
d05a0b68:	e7bc      	b.n	d05a0ae4 <draw_random_shape+0x738>
d05a0b6a:	9a05      	ldr	r2, [sp, #20]
d05a0b6c:	2a00      	cmp	r2, #0
d05a0b6e:	f000 810d 	beq.w	d05a0d8c <draw_random_shape+0x9e0>
d05a0b72:	9a02      	ldr	r2, [sp, #8]
d05a0b74:	eb05 0945 	add.w	r9, r5, r5, lsl #1
d05a0b78:	1aed      	subs	r5, r5, r3
d05a0b7a:	f8cd b01c 	str.w	fp, [sp, #28]
d05a0b7e:	1a8a      	subs	r2, r1, r2
d05a0b80:	eb09 1909 	add.w	r9, r9, r9, lsl #4
d05a0b84:	1b89      	subs	r1, r1, r6
d05a0b86:	4680      	mov	r8, r0
d05a0b88:	fb02 f505 	mul.w	r5, r2, r5
d05a0b8c:	ea4f 09c9 	mov.w	r9, r9, lsl #3
d05a0b90:	9206      	str	r2, [sp, #24]
d05a0b92:	463a      	mov	r2, r7
d05a0b94:	f8dd b00c 	ldr.w	fp, [sp, #12]
d05a0b98:	461f      	mov	r7, r3
d05a0b9a:	9104      	str	r1, [sp, #16]
d05a0b9c:	4613      	mov	r3, r2
d05a0b9e:	e02c      	b.n	d05a0bfa <draw_random_shape+0x84e>
d05a0ba0:	4291      	cmp	r1, r2
d05a0ba2:	dd02      	ble.n	d05a0baa <draw_random_shape+0x7fe>
d05a0ba4:	468c      	mov	ip, r1
d05a0ba6:	4611      	mov	r1, r2
d05a0ba8:	4662      	mov	r2, ip
d05a0baa:	3201      	adds	r2, #1
d05a0bac:	3401      	adds	r4, #1
d05a0bae:	b212      	sxth	r2, r2
d05a0bb0:	fa0f fa84 	sxth.w	sl, r4
d05a0bb4:	2a00      	cmp	r2, #0
d05a0bb6:	dd16      	ble.n	d05a0be6 <draw_random_shape+0x83a>
d05a0bb8:	f5b1 7fcc 	cmp.w	r1, #408	; 0x198
d05a0bbc:	da13      	bge.n	d05a0be6 <draw_random_shape+0x83a>
d05a0bbe:	f5b2 7fcc 	cmp.w	r2, #408	; 0x198
d05a0bc2:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d05a0bc6:	bfa8      	it	ge
d05a0bc8:	f44f 72cc 	movge.w	r2, #408	; 0x198
d05a0bcc:	4582      	cmp	sl, r0
d05a0bce:	b209      	sxth	r1, r1
d05a0bd0:	dd09      	ble.n	d05a0be6 <draw_random_shape+0x83a>
d05a0bd2:	eb01 0009 	add.w	r0, r1, r9
d05a0bd6:	9303      	str	r3, [sp, #12]
d05a0bd8:	4b49      	ldr	r3, [pc, #292]	; (d05a0d00 <draw_random_shape+0x954>)
d05a0bda:	1a52      	subs	r2, r2, r1
d05a0bdc:	9907      	ldr	r1, [sp, #28]
d05a0bde:	4418      	add	r0, r3
d05a0be0:	f000 fc62 	bl	d05a14a8 <memset>
d05a0be4:	9b03      	ldr	r3, [sp, #12]
d05a0be6:	9a04      	ldr	r2, [sp, #16]
d05a0be8:	459a      	cmp	sl, r3
d05a0bea:	b2a4      	uxth	r4, r4
d05a0bec:	f509 79cc 	add.w	r9, r9, #408	; 0x198
d05a0bf0:	4490      	add	r8, r2
d05a0bf2:	9a06      	ldr	r2, [sp, #24]
d05a0bf4:	4415      	add	r5, r2
d05a0bf6:	f73f ac74 	bgt.w	d05a04e2 <draw_random_shape+0x136>
d05a0bfa:	b220      	sxth	r0, r4
d05a0bfc:	fb98 f1fb 	sdiv	r1, r8, fp
d05a0c00:	42b8      	cmp	r0, r7
d05a0c02:	4431      	add	r1, r6
d05a0c04:	b209      	sxth	r1, r1
d05a0c06:	db0d      	blt.n	d05a0c24 <draw_random_shape+0x878>
d05a0c08:	9a01      	ldr	r2, [sp, #4]
d05a0c0a:	b95a      	cbnz	r2, d05a0c24 <draw_random_shape+0x878>
d05a0c0c:	9a05      	ldr	r2, [sp, #20]
d05a0c0e:	fb95 fcf2 	sdiv	ip, r5, r2
d05a0c12:	9a02      	ldr	r2, [sp, #8]
d05a0c14:	4462      	add	r2, ip
d05a0c16:	b212      	sxth	r2, r2
d05a0c18:	2cbf      	cmp	r4, #191	; 0xbf
d05a0c1a:	d9c1      	bls.n	d05a0ba0 <draw_random_shape+0x7f4>
d05a0c1c:	3401      	adds	r4, #1
d05a0c1e:	fa0f fa84 	sxth.w	sl, r4
d05a0c22:	e7e0      	b.n	d05a0be6 <draw_random_shape+0x83a>
d05a0c24:	4632      	mov	r2, r6
d05a0c26:	e7f7      	b.n	d05a0c18 <draw_random_shape+0x86c>
d05a0c28:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d05a0c2c:	2800      	cmp	r0, #0
d05a0c2e:	f000 80ff 	beq.w	d05a0e30 <draw_random_shape+0xa84>
d05a0c32:	9902      	ldr	r1, [sp, #8]
d05a0c34:	1c72      	adds	r2, r6, #1
d05a0c36:	eb05 1505 	add.w	r5, r5, r5, lsl #4
d05a0c3a:	f8dd 9014 	ldr.w	r9, [sp, #20]
d05a0c3e:	eba1 0a06 	sub.w	sl, r1, r6
d05a0c42:	b212      	sxth	r2, r2
d05a0c44:	4659      	mov	r1, fp
d05a0c46:	00ed      	lsls	r5, r5, #3
d05a0c48:	46d3      	mov	fp, sl
d05a0c4a:	9205      	str	r2, [sp, #20]
d05a0c4c:	46ba      	mov	sl, r7
d05a0c4e:	461f      	mov	r7, r3
d05a0c50:	9b01      	ldr	r3, [sp, #4]
d05a0c52:	e024      	b.n	d05a0c9e <draw_random_shape+0x8f2>
d05a0c54:	42b0      	cmp	r0, r6
d05a0c56:	da34      	bge.n	d05a0cc2 <draw_random_shape+0x916>
d05a0c58:	3401      	adds	r4, #1
d05a0c5a:	f8dd e014 	ldr.w	lr, [sp, #20]
d05a0c5e:	fa0f f884 	sxth.w	r8, r4
d05a0c62:	f5be 7fcc 	cmp.w	lr, #408	; 0x198
d05a0c66:	ea20 72e0 	bic.w	r2, r0, r0, asr #31
d05a0c6a:	bfa8      	it	ge
d05a0c6c:	f44f 7ecc 	movge.w	lr, #408	; 0x198
d05a0c70:	45c4      	cmp	ip, r8
d05a0c72:	b212      	sxth	r2, r2
d05a0c74:	da0c      	bge.n	d05a0c90 <draw_random_shape+0x8e4>
d05a0c76:	eb02 0c05 	add.w	ip, r2, r5
d05a0c7a:	9303      	str	r3, [sp, #12]
d05a0c7c:	4b20      	ldr	r3, [pc, #128]	; (d05a0d00 <draw_random_shape+0x954>)
d05a0c7e:	ebae 0202 	sub.w	r2, lr, r2
d05a0c82:	9101      	str	r1, [sp, #4]
d05a0c84:	eb03 000c 	add.w	r0, r3, ip
d05a0c88:	f000 fc0e 	bl	d05a14a8 <memset>
d05a0c8c:	9901      	ldr	r1, [sp, #4]
d05a0c8e:	9b03      	ldr	r3, [sp, #12]
d05a0c90:	45d0      	cmp	r8, sl
d05a0c92:	b2a4      	uxth	r4, r4
d05a0c94:	f505 75cc 	add.w	r5, r5, #408	; 0x198
d05a0c98:	44d9      	add	r9, fp
d05a0c9a:	f73f ac22 	bgt.w	d05a04e2 <draw_random_shape+0x136>
d05a0c9e:	fa0f fc84 	sxth.w	ip, r4
d05a0ca2:	45bc      	cmp	ip, r7
d05a0ca4:	db07      	blt.n	d05a0cb6 <draw_random_shape+0x90a>
d05a0ca6:	b933      	cbnz	r3, d05a0cb6 <draw_random_shape+0x90a>
d05a0ca8:	9802      	ldr	r0, [sp, #8]
d05a0caa:	2cbf      	cmp	r4, #191	; 0xbf
d05a0cac:	d9d2      	bls.n	d05a0c54 <draw_random_shape+0x8a8>
d05a0cae:	3401      	adds	r4, #1
d05a0cb0:	fa0f f884 	sxth.w	r8, r4
d05a0cb4:	e7ec      	b.n	d05a0c90 <draw_random_shape+0x8e4>
d05a0cb6:	9a04      	ldr	r2, [sp, #16]
d05a0cb8:	fb99 f0f2 	sdiv	r0, r9, r2
d05a0cbc:	4430      	add	r0, r6
d05a0cbe:	b200      	sxth	r0, r0
d05a0cc0:	e7f3      	b.n	d05a0caa <draw_random_shape+0x8fe>
d05a0cc2:	3001      	adds	r0, #1
d05a0cc4:	3401      	adds	r4, #1
d05a0cc6:	fa0f fe80 	sxth.w	lr, r0
d05a0cca:	fa0f f884 	sxth.w	r8, r4
d05a0cce:	f1be 0f00 	cmp.w	lr, #0
d05a0cd2:	dddd      	ble.n	d05a0c90 <draw_random_shape+0x8e4>
d05a0cd4:	4630      	mov	r0, r6
d05a0cd6:	e7c4      	b.n	d05a0c62 <draw_random_shape+0x8b6>
d05a0cd8:	9a02      	ldr	r2, [sp, #8]
d05a0cda:	eb05 0945 	add.w	r9, r5, r5, lsl #1
d05a0cde:	1aed      	subs	r5, r5, r3
d05a0ce0:	eba1 0802 	sub.w	r8, r1, r2
d05a0ce4:	1c72      	adds	r2, r6, #1
d05a0ce6:	eb09 1909 	add.w	r9, r9, r9, lsl #4
d05a0cea:	4659      	mov	r1, fp
d05a0cec:	b212      	sxth	r2, r2
d05a0cee:	46b3      	mov	fp, r6
d05a0cf0:	fb08 f505 	mul.w	r5, r8, r5
d05a0cf4:	461e      	mov	r6, r3
d05a0cf6:	ea4f 09c9 	mov.w	r9, r9, lsl #3
d05a0cfa:	9b01      	ldr	r3, [sp, #4]
d05a0cfc:	9204      	str	r2, [sp, #16]
d05a0cfe:	e02f      	b.n	d05a0d60 <draw_random_shape+0x9b4>
d05a0d00:	d05a25e0 	.word	0xd05a25e0
d05a0d04:	bb83      	cbnz	r3, d05a0d68 <draw_random_shape+0x9bc>
d05a0d06:	9a05      	ldr	r2, [sp, #20]
d05a0d08:	2cbf      	cmp	r4, #191	; 0xbf
d05a0d0a:	fb95 f0f2 	sdiv	r0, r5, r2
d05a0d0e:	9a02      	ldr	r2, [sp, #8]
d05a0d10:	4410      	add	r0, r2
d05a0d12:	b200      	sxth	r0, r0
d05a0d14:	d836      	bhi.n	d05a0d84 <draw_random_shape+0x9d8>
d05a0d16:	4558      	cmp	r0, fp
d05a0d18:	da29      	bge.n	d05a0d6e <draw_random_shape+0x9c2>
d05a0d1a:	3401      	adds	r4, #1
d05a0d1c:	f8dd e010 	ldr.w	lr, [sp, #16]
d05a0d20:	fa0f fa84 	sxth.w	sl, r4
d05a0d24:	f5be 7fcc 	cmp.w	lr, #408	; 0x198
d05a0d28:	ea20 72e0 	bic.w	r2, r0, r0, asr #31
d05a0d2c:	bfa8      	it	ge
d05a0d2e:	f44f 7ecc 	movge.w	lr, #408	; 0x198
d05a0d32:	45d4      	cmp	ip, sl
d05a0d34:	b212      	sxth	r2, r2
d05a0d36:	da0c      	bge.n	d05a0d52 <draw_random_shape+0x9a6>
d05a0d38:	eb02 0c09 	add.w	ip, r2, r9
d05a0d3c:	9303      	str	r3, [sp, #12]
d05a0d3e:	4b58      	ldr	r3, [pc, #352]	; (d05a0ea0 <draw_random_shape+0xaf4>)
d05a0d40:	ebae 0202 	sub.w	r2, lr, r2
d05a0d44:	9101      	str	r1, [sp, #4]
d05a0d46:	eb03 000c 	add.w	r0, r3, ip
d05a0d4a:	f000 fbad 	bl	d05a14a8 <memset>
d05a0d4e:	9901      	ldr	r1, [sp, #4]
d05a0d50:	9b03      	ldr	r3, [sp, #12]
d05a0d52:	45ba      	cmp	sl, r7
d05a0d54:	b2a4      	uxth	r4, r4
d05a0d56:	f509 79cc 	add.w	r9, r9, #408	; 0x198
d05a0d5a:	4445      	add	r5, r8
d05a0d5c:	f73f abc1 	bgt.w	d05a04e2 <draw_random_shape+0x136>
d05a0d60:	fa0f fc84 	sxth.w	ip, r4
d05a0d64:	45b4      	cmp	ip, r6
d05a0d66:	dacd      	bge.n	d05a0d04 <draw_random_shape+0x958>
d05a0d68:	2cbf      	cmp	r4, #191	; 0xbf
d05a0d6a:	d80b      	bhi.n	d05a0d84 <draw_random_shape+0x9d8>
d05a0d6c:	4658      	mov	r0, fp
d05a0d6e:	3001      	adds	r0, #1
d05a0d70:	3401      	adds	r4, #1
d05a0d72:	fa0f fe80 	sxth.w	lr, r0
d05a0d76:	fa0f fa84 	sxth.w	sl, r4
d05a0d7a:	f1be 0f00 	cmp.w	lr, #0
d05a0d7e:	dde8      	ble.n	d05a0d52 <draw_random_shape+0x9a6>
d05a0d80:	4658      	mov	r0, fp
d05a0d82:	e7cf      	b.n	d05a0d24 <draw_random_shape+0x978>
d05a0d84:	3401      	adds	r4, #1
d05a0d86:	fa0f fa84 	sxth.w	sl, r4
d05a0d8a:	e7e2      	b.n	d05a0d52 <draw_random_shape+0x9a6>
d05a0d8c:	eba1 0a06 	sub.w	sl, r1, r6
d05a0d90:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d05a0d94:	4691      	mov	r9, r2
d05a0d96:	f8cd b010 	str.w	fp, [sp, #16]
d05a0d9a:	4652      	mov	r2, sl
d05a0d9c:	eb05 1505 	add.w	r5, r5, r5, lsl #4
d05a0da0:	46bb      	mov	fp, r7
d05a0da2:	469a      	mov	sl, r3
d05a0da4:	00ed      	lsls	r5, r5, #3
d05a0da6:	9f03      	ldr	r7, [sp, #12]
d05a0da8:	4613      	mov	r3, r2
d05a0daa:	e023      	b.n	d05a0df4 <draw_random_shape+0xa48>
d05a0dac:	4586      	cmp	lr, r0
d05a0dae:	db36      	blt.n	d05a0e1e <draw_random_shape+0xa72>
d05a0db0:	f10e 0201 	add.w	r2, lr, #1
d05a0db4:	3401      	adds	r4, #1
d05a0db6:	b212      	sxth	r2, r2
d05a0db8:	fa0f f884 	sxth.w	r8, r4
d05a0dbc:	f5b2 7fcc 	cmp.w	r2, #408	; 0x198
d05a0dc0:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d05a0dc4:	bfa8      	it	ge
d05a0dc6:	f44f 72cc 	movge.w	r2, #408	; 0x198
d05a0dca:	45c4      	cmp	ip, r8
d05a0dcc:	b200      	sxth	r0, r0
d05a0dce:	da0a      	bge.n	d05a0de6 <draw_random_shape+0xa3a>
d05a0dd0:	eb00 0c05 	add.w	ip, r0, r5
d05a0dd4:	9303      	str	r3, [sp, #12]
d05a0dd6:	4b32      	ldr	r3, [pc, #200]	; (d05a0ea0 <draw_random_shape+0xaf4>)
d05a0dd8:	1a12      	subs	r2, r2, r0
d05a0dda:	9904      	ldr	r1, [sp, #16]
d05a0ddc:	eb03 000c 	add.w	r0, r3, ip
d05a0de0:	f000 fb62 	bl	d05a14a8 <memset>
d05a0de4:	9b03      	ldr	r3, [sp, #12]
d05a0de6:	45d8      	cmp	r8, fp
d05a0de8:	4499      	add	r9, r3
d05a0dea:	b2a4      	uxth	r4, r4
d05a0dec:	f505 75cc 	add.w	r5, r5, #408	; 0x198
d05a0df0:	f73f ab77 	bgt.w	d05a04e2 <draw_random_shape+0x136>
d05a0df4:	fa0f fc84 	sxth.w	ip, r4
d05a0df8:	fb99 f0f7 	sdiv	r0, r9, r7
d05a0dfc:	45d4      	cmp	ip, sl
d05a0dfe:	4430      	add	r0, r6
d05a0e00:	b282      	uxth	r2, r0
d05a0e02:	b200      	sxth	r0, r0
d05a0e04:	db09      	blt.n	d05a0e1a <draw_random_shape+0xa6e>
d05a0e06:	9901      	ldr	r1, [sp, #4]
d05a0e08:	b939      	cbnz	r1, d05a0e1a <draw_random_shape+0xa6e>
d05a0e0a:	f8dd e008 	ldr.w	lr, [sp, #8]
d05a0e0e:	2cbf      	cmp	r4, #191	; 0xbf
d05a0e10:	d9cc      	bls.n	d05a0dac <draw_random_shape+0xa00>
d05a0e12:	3401      	adds	r4, #1
d05a0e14:	fa0f f884 	sxth.w	r8, r4
d05a0e18:	e7e5      	b.n	d05a0de6 <draw_random_shape+0xa3a>
d05a0e1a:	46b6      	mov	lr, r6
d05a0e1c:	e7f7      	b.n	d05a0e0e <draw_random_shape+0xa62>
d05a0e1e:	3201      	adds	r2, #1
d05a0e20:	3401      	adds	r4, #1
d05a0e22:	b212      	sxth	r2, r2
d05a0e24:	fa0f f884 	sxth.w	r8, r4
d05a0e28:	2a00      	cmp	r2, #0
d05a0e2a:	dddc      	ble.n	d05a0de6 <draw_random_shape+0xa3a>
d05a0e2c:	4670      	mov	r0, lr
d05a0e2e:	e7c5      	b.n	d05a0dbc <draw_random_shape+0xa10>
d05a0e30:	eb05 1505 	add.w	r5, r5, r5, lsl #4
d05a0e34:	469a      	mov	sl, r3
d05a0e36:	f8df 8068 	ldr.w	r8, [pc, #104]	; d05a0ea0 <draw_random_shape+0xaf4>
d05a0e3a:	00ed      	lsls	r5, r5, #3
d05a0e3c:	9b02      	ldr	r3, [sp, #8]
d05a0e3e:	e01c      	b.n	d05a0e7a <draw_random_shape+0xace>
d05a0e40:	2cbf      	cmp	r4, #191	; 0xbf
d05a0e42:	d826      	bhi.n	d05a0e92 <draw_random_shape+0xae6>
d05a0e44:	429e      	cmp	r6, r3
d05a0e46:	dd28      	ble.n	d05a0e9a <draw_random_shape+0xaee>
d05a0e48:	4630      	mov	r0, r6
d05a0e4a:	461a      	mov	r2, r3
d05a0e4c:	3401      	adds	r4, #1
d05a0e4e:	3001      	adds	r0, #1
d05a0e50:	fa0f f984 	sxth.w	r9, r4
d05a0e54:	b200      	sxth	r0, r0
d05a0e56:	45cc      	cmp	ip, r9
d05a0e58:	da09      	bge.n	d05a0e6e <draw_random_shape+0xac2>
d05a0e5a:	eb02 0c05 	add.w	ip, r2, r5
d05a0e5e:	4659      	mov	r1, fp
d05a0e60:	1a82      	subs	r2, r0, r2
d05a0e62:	9302      	str	r3, [sp, #8]
d05a0e64:	eb08 000c 	add.w	r0, r8, ip
d05a0e68:	f000 fb1e 	bl	d05a14a8 <memset>
d05a0e6c:	9b02      	ldr	r3, [sp, #8]
d05a0e6e:	45b9      	cmp	r9, r7
d05a0e70:	b2a4      	uxth	r4, r4
d05a0e72:	f505 75cc 	add.w	r5, r5, #408	; 0x198
d05a0e76:	f73f ab34 	bgt.w	d05a04e2 <draw_random_shape+0x136>
d05a0e7a:	fa0f fc84 	sxth.w	ip, r4
d05a0e7e:	45d4      	cmp	ip, sl
d05a0e80:	db02      	blt.n	d05a0e88 <draw_random_shape+0xadc>
d05a0e82:	9a01      	ldr	r2, [sp, #4]
d05a0e84:	2a00      	cmp	r2, #0
d05a0e86:	d0db      	beq.n	d05a0e40 <draw_random_shape+0xa94>
d05a0e88:	2cbf      	cmp	r4, #191	; 0xbf
d05a0e8a:	d802      	bhi.n	d05a0e92 <draw_random_shape+0xae6>
d05a0e8c:	4630      	mov	r0, r6
d05a0e8e:	4632      	mov	r2, r6
d05a0e90:	e7dc      	b.n	d05a0e4c <draw_random_shape+0xaa0>
d05a0e92:	3401      	adds	r4, #1
d05a0e94:	fa0f f984 	sxth.w	r9, r4
d05a0e98:	e7e9      	b.n	d05a0e6e <draw_random_shape+0xac2>
d05a0e9a:	4618      	mov	r0, r3
d05a0e9c:	4632      	mov	r2, r6
d05a0e9e:	e7d5      	b.n	d05a0e4c <draw_random_shape+0xaa0>
d05a0ea0:	d05a25e0 	.word	0xd05a25e0

d05a0ea4 <on_timer_tick>:
d05a0ea4:	4b25      	ldr	r3, [pc, #148]	; (d05a0f3c <on_timer_tick+0x98>)
d05a0ea6:	781b      	ldrb	r3, [r3, #0]
d05a0ea8:	2b00      	cmp	r3, #0
d05a0eaa:	d046      	beq.n	d05a0f3a <on_timer_tick+0x96>
d05a0eac:	4b24      	ldr	r3, [pc, #144]	; (d05a0f40 <on_timer_tick+0x9c>)
d05a0eae:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a0eb2:	781d      	ldrb	r5, [r3, #0]
d05a0eb4:	b10d      	cbz	r5, d05a0eba <on_timer_tick+0x16>
d05a0eb6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05a0eba:	4f22      	ldr	r7, [pc, #136]	; (d05a0f44 <on_timer_tick+0xa0>)
d05a0ebc:	f7ff fa76 	bl	d05a03ac <draw_random_shape>
d05a0ec0:	f8df 9090 	ldr.w	r9, [pc, #144]	; d05a0f54 <on_timer_tick+0xb0>
d05a0ec4:	f507 684c 	add.w	r8, r7, #3264	; 0xcc0
d05a0ec8:	f7ff fa70 	bl	d05a03ac <draw_random_shape>
d05a0ecc:	f7ff fa6e 	bl	d05a03ac <draw_random_shape>
d05a0ed0:	f7ff fa6c 	bl	d05a03ac <draw_random_shape>
d05a0ed4:	f7ff fa6a 	bl	d05a03ac <draw_random_shape>
d05a0ed8:	f7ff fa68 	bl	d05a03ac <draw_random_shape>
d05a0edc:	022e      	lsls	r6, r5, #8
d05a0ede:	462b      	mov	r3, r5
d05a0ee0:	eb07 0a05 	add.w	sl, r7, r5
d05a0ee4:	3501      	adds	r5, #1
d05a0ee6:	fba9 2606 	umull	r2, r6, r9, r6
d05a0eea:	eb08 0403 	add.w	r4, r8, r3
d05a0eee:	0a36      	lsrs	r6, r6, #8
d05a0ef0:	4650      	mov	r0, sl
d05a0ef2:	f50a 7acc 	add.w	sl, sl, #408	; 0x198
d05a0ef6:	2201      	movs	r2, #1
d05a0ef8:	4631      	mov	r1, r6
d05a0efa:	f000 fad5 	bl	d05a14a8 <memset>
d05a0efe:	45a2      	cmp	sl, r4
d05a0f00:	d1f6      	bne.n	d05a0ef0 <on_timer_tick+0x4c>
d05a0f02:	f5b5 7fcc 	cmp.w	r5, #408	; 0x198
d05a0f06:	d1e9      	bne.n	d05a0edc <on_timer_tick+0x38>
d05a0f08:	4a0f      	ldr	r2, [pc, #60]	; (d05a0f48 <on_timer_tick+0xa4>)
d05a0f0a:	4910      	ldr	r1, [pc, #64]	; (d05a0f4c <on_timer_tick+0xa8>)
d05a0f0c:	6813      	ldr	r3, [r2, #0]
d05a0f0e:	6808      	ldr	r0, [r1, #0]
d05a0f10:	3301      	adds	r3, #1
d05a0f12:	6013      	str	r3, [r2, #0]
d05a0f14:	b168      	cbz	r0, d05a0f32 <on_timer_tick+0x8e>
d05a0f16:	4a0e      	ldr	r2, [pc, #56]	; (d05a0f50 <on_timer_tick+0xac>)
d05a0f18:	7a13      	ldrb	r3, [r2, #8]
d05a0f1a:	7a54      	ldrb	r4, [r2, #9]
d05a0f1c:	7a91      	ldrb	r1, [r2, #10]
d05a0f1e:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d05a0f22:	7ad2      	ldrb	r2, [r2, #11]
d05a0f24:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0f28:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a0f2c:	68db      	ldr	r3, [r3, #12]
d05a0f2e:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a0f30:	4798      	blx	r3
d05a0f32:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a0f36:	f7ff b8e7 	b.w	d05a0108 <set_status>
d05a0f3a:	4770      	bx	lr
d05a0f3c:	d05a25c8 	.word	0xd05a25c8
d05a0f40:	d05b57e8 	.word	0xd05b57e8
d05a0f44:	d05b4b20 	.word	0xd05b4b20
d05a0f48:	d05b57e4 	.word	0xd05b57e4
d05a0f4c:	d05a25cc 	.word	0xd05a25cc
d05a0f50:	2001f000 	.word	0x2001f000
d05a0f54:	a0a0a0a1 	.word	0xa0a0a0a1

d05a0f58 <on_burst_clicked>:
d05a0f58:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a0f5c:	2418      	movs	r4, #24
d05a0f5e:	3c01      	subs	r4, #1
d05a0f60:	f7ff fa24 	bl	d05a03ac <draw_random_shape>
d05a0f64:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
d05a0f68:	d1f9      	bne.n	d05a0f5e <on_burst_clicked+0x6>
d05a0f6a:	4f1a      	ldr	r7, [pc, #104]	; (d05a0fd4 <on_burst_clicked+0x7c>)
d05a0f6c:	f8df 9074 	ldr.w	r9, [pc, #116]	; d05a0fe4 <on_burst_clicked+0x8c>
d05a0f70:	f507 684c 	add.w	r8, r7, #3264	; 0xcc0
d05a0f74:	0226      	lsls	r6, r4, #8
d05a0f76:	4623      	mov	r3, r4
d05a0f78:	eb07 0a04 	add.w	sl, r7, r4
d05a0f7c:	3401      	adds	r4, #1
d05a0f7e:	fba9 2606 	umull	r2, r6, r9, r6
d05a0f82:	eb08 0503 	add.w	r5, r8, r3
d05a0f86:	0a36      	lsrs	r6, r6, #8
d05a0f88:	4650      	mov	r0, sl
d05a0f8a:	f50a 7acc 	add.w	sl, sl, #408	; 0x198
d05a0f8e:	2201      	movs	r2, #1
d05a0f90:	4631      	mov	r1, r6
d05a0f92:	f000 fa89 	bl	d05a14a8 <memset>
d05a0f96:	45aa      	cmp	sl, r5
d05a0f98:	d1f6      	bne.n	d05a0f88 <on_burst_clicked+0x30>
d05a0f9a:	f5b4 7fcc 	cmp.w	r4, #408	; 0x198
d05a0f9e:	d1e9      	bne.n	d05a0f74 <on_burst_clicked+0x1c>
d05a0fa0:	4a0d      	ldr	r2, [pc, #52]	; (d05a0fd8 <on_burst_clicked+0x80>)
d05a0fa2:	490e      	ldr	r1, [pc, #56]	; (d05a0fdc <on_burst_clicked+0x84>)
d05a0fa4:	6813      	ldr	r3, [r2, #0]
d05a0fa6:	6808      	ldr	r0, [r1, #0]
d05a0fa8:	3301      	adds	r3, #1
d05a0faa:	6013      	str	r3, [r2, #0]
d05a0fac:	b168      	cbz	r0, d05a0fca <on_burst_clicked+0x72>
d05a0fae:	4a0c      	ldr	r2, [pc, #48]	; (d05a0fe0 <on_burst_clicked+0x88>)
d05a0fb0:	7a13      	ldrb	r3, [r2, #8]
d05a0fb2:	7a54      	ldrb	r4, [r2, #9]
d05a0fb4:	7a91      	ldrb	r1, [r2, #10]
d05a0fb6:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
d05a0fba:	7ad2      	ldrb	r2, [r2, #11]
d05a0fbc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a0fc0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a0fc4:	68db      	ldr	r3, [r3, #12]
d05a0fc6:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a0fc8:	4798      	blx	r3
d05a0fca:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a0fce:	f7ff b89b 	b.w	d05a0108 <set_status>
d05a0fd2:	bf00      	nop
d05a0fd4:	d05b4b20 	.word	0xd05b4b20
d05a0fd8:	d05b57e4 	.word	0xd05b57e4
d05a0fdc:	d05a25cc 	.word	0xd05a25cc
d05a0fe0:	2001f000 	.word	0x2001f000
d05a0fe4:	a0a0a0a1 	.word	0xa0a0a0a1

d05a0fe8 <main>:
d05a0fe8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05a0fec:	4bb9      	ldr	r3, [pc, #740]	; (d05a12d4 <main+0x2ec>)
d05a0fee:	2701      	movs	r7, #1
d05a0ff0:	4cb9      	ldr	r4, [pc, #740]	; (d05a12d8 <main+0x2f0>)
d05a0ff2:	b087      	sub	sp, #28
d05a0ff4:	701f      	strb	r7, [r3, #0]
d05a0ff6:	f44f 7c90 	mov.w	ip, #288	; 0x120
d05a0ffa:	7a26      	ldrb	r6, [r4, #8]
d05a0ffc:	f240 396d 	movw	r9, #877	; 0x36d
d05a1000:	7a60      	ldrb	r0, [r4, #9]
d05a1002:	f44f 73d8 	mov.w	r3, #432	; 0x1b0
d05a1006:	7aa5      	ldrb	r5, [r4, #10]
d05a1008:	2214      	movs	r2, #20
d05a100a:	ea46 2600 	orr.w	r6, r6, r0, lsl #8
d05a100e:	7ae0      	ldrb	r0, [r4, #11]
d05a1010:	f8df e2f4 	ldr.w	lr, [pc, #756]	; d05a1308 <main+0x320>
d05a1014:	2118      	movs	r1, #24
d05a1016:	ea46 4605 	orr.w	r6, r6, r5, lsl #16
d05a101a:	4db0      	ldr	r5, [pc, #704]	; (d05a12dc <main+0x2f4>)
d05a101c:	f04f 0816 	mov.w	r8, #22
d05a1020:	f8df b2e8 	ldr.w	fp, [pc, #744]	; d05a130c <main+0x324>
d05a1024:	ea46 6600 	orr.w	r6, r6, r0, lsl #24
d05a1028:	4628      	mov	r0, r5
d05a102a:	f8d6 a004 	ldr.w	sl, [r6, #4]
d05a102e:	2600      	movs	r6, #0
d05a1030:	f8cd 9008 	str.w	r9, [sp, #8]
d05a1034:	e9cd ce00 	strd	ip, lr, [sp]
d05a1038:	f8da 9000 	ldr.w	r9, [sl]
d05a103c:	47c8      	blx	r9
d05a103e:	7a23      	ldrb	r3, [r4, #8]
d05a1040:	7a62      	ldrb	r2, [r4, #9]
d05a1042:	7aa1      	ldrb	r1, [r4, #10]
d05a1044:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a1048:	7ae2      	ldrb	r2, [r4, #11]
d05a104a:	7828      	ldrb	r0, [r5, #0]
d05a104c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a1050:	49a3      	ldr	r1, [pc, #652]	; (d05a12e0 <main+0x2f8>)
d05a1052:	f8df a2bc 	ldr.w	sl, [pc, #700]	; d05a1310 <main+0x328>
d05a1056:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a105a:	685b      	ldr	r3, [r3, #4]
d05a105c:	689b      	ldr	r3, [r3, #8]
d05a105e:	4798      	blx	r3
d05a1060:	7a21      	ldrb	r1, [r4, #8]
d05a1062:	7a60      	ldrb	r0, [r4, #9]
d05a1064:	2348      	movs	r3, #72	; 0x48
d05a1066:	f894 c00a 	ldrb.w	ip, [r4, #10]
d05a106a:	220a      	movs	r2, #10
d05a106c:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
d05a1070:	7ae0      	ldrb	r0, [r4, #11]
d05a1072:	f8df e2a0 	ldr.w	lr, [pc, #672]	; d05a1314 <main+0x32c>
d05a1076:	ea41 410c 	orr.w	r1, r1, ip, lsl #16
d05a107a:	ea41 6100 	orr.w	r1, r1, r0, lsl #24
d05a107e:	7828      	ldrb	r0, [r5, #0]
d05a1080:	f8d1 c00c 	ldr.w	ip, [r1, #12]
d05a1084:	210c      	movs	r1, #12
d05a1086:	9702      	str	r7, [sp, #8]
d05a1088:	f8cd e004 	str.w	lr, [sp, #4]
d05a108c:	f8cd 8000 	str.w	r8, [sp]
d05a1090:	f8dc 9008 	ldr.w	r9, [ip, #8]
d05a1094:	47c8      	blx	r9
d05a1096:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a109a:	f894 e009 	ldrb.w	lr, [r4, #9]
d05a109e:	2348      	movs	r3, #72	; 0x48
d05a10a0:	f8cb 0000 	str.w	r0, [fp]
d05a10a4:	220a      	movs	r2, #10
d05a10a6:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d05a10aa:	7aa0      	ldrb	r0, [r4, #10]
d05a10ac:	215e      	movs	r1, #94	; 0x5e
d05a10ae:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
d05a10b2:	7ae0      	ldrb	r0, [r4, #11]
d05a10b4:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d05a10b8:	488a      	ldr	r0, [pc, #552]	; (d05a12e4 <main+0x2fc>)
d05a10ba:	f8dc c00c 	ldr.w	ip, [ip, #12]
d05a10be:	9702      	str	r7, [sp, #8]
d05a10c0:	f8cd 8000 	str.w	r8, [sp]
d05a10c4:	9001      	str	r0, [sp, #4]
d05a10c6:	f8dc 9008 	ldr.w	r9, [ip, #8]
d05a10ca:	7828      	ldrb	r0, [r5, #0]
d05a10cc:	47c8      	blx	r9
d05a10ce:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a10d2:	f894 e009 	ldrb.w	lr, [r4, #9]
d05a10d6:	2348      	movs	r3, #72	; 0x48
d05a10d8:	f8ca 0000 	str.w	r0, [sl]
d05a10dc:	220a      	movs	r2, #10
d05a10de:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d05a10e2:	7aa0      	ldrb	r0, [r4, #10]
d05a10e4:	21b0      	movs	r1, #176	; 0xb0
d05a10e6:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
d05a10ea:	7ae0      	ldrb	r0, [r4, #11]
d05a10ec:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d05a10f0:	487d      	ldr	r0, [pc, #500]	; (d05a12e8 <main+0x300>)
d05a10f2:	f8dc c00c 	ldr.w	ip, [ip, #12]
d05a10f6:	9702      	str	r7, [sp, #8]
d05a10f8:	f8cd 8000 	str.w	r8, [sp]
d05a10fc:	9001      	str	r0, [sp, #4]
d05a10fe:	f8dc 9008 	ldr.w	r9, [ip, #8]
d05a1102:	7828      	ldrb	r0, [r5, #0]
d05a1104:	47c8      	blx	r9
d05a1106:	7a21      	ldrb	r1, [r4, #8]
d05a1108:	4684      	mov	ip, r0
d05a110a:	7a60      	ldrb	r0, [r4, #9]
d05a110c:	f8df 9208 	ldr.w	r9, [pc, #520]	; d05a1318 <main+0x330>
d05a1110:	2348      	movs	r3, #72	; 0x48
d05a1112:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
d05a1116:	7aa0      	ldrb	r0, [r4, #10]
d05a1118:	220a      	movs	r2, #10
d05a111a:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
d05a111e:	7ae0      	ldrb	r0, [r4, #11]
d05a1120:	ea41 6100 	orr.w	r1, r1, r0, lsl #24
d05a1124:	4871      	ldr	r0, [pc, #452]	; (d05a12ec <main+0x304>)
d05a1126:	f8d1 e00c 	ldr.w	lr, [r1, #12]
d05a112a:	f44f 71ac 	mov.w	r1, #344	; 0x158
d05a112e:	f8cd 8000 	str.w	r8, [sp]
d05a1132:	9702      	str	r7, [sp, #8]
d05a1134:	9001      	str	r0, [sp, #4]
d05a1136:	f8c9 c000 	str.w	ip, [r9]
d05a113a:	f8de 7008 	ldr.w	r7, [lr, #8]
d05a113e:	7828      	ldrb	r0, [r5, #0]
d05a1140:	47b8      	blx	r7
d05a1142:	7a23      	ldrb	r3, [r4, #8]
d05a1144:	7a61      	ldrb	r1, [r4, #9]
d05a1146:	f04f 0cc0 	mov.w	ip, #192	; 0xc0
d05a114a:	7aa7      	ldrb	r7, [r4, #10]
d05a114c:	f04f 0e04 	mov.w	lr, #4
d05a1150:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d05a1154:	7ae1      	ldrb	r1, [r4, #11]
d05a1156:	f8df 81c4 	ldr.w	r8, [pc, #452]	; d05a131c <main+0x334>
d05a115a:	2240      	movs	r2, #64	; 0x40
d05a115c:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d05a1160:	f8c8 0000 	str.w	r0, [r8]
d05a1164:	20c2      	movs	r0, #194	; 0xc2
d05a1166:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d05a116a:	f44f 71cc 	mov.w	r1, #408	; 0x198
d05a116e:	68df      	ldr	r7, [r3, #12]
d05a1170:	f44f 73cd 	mov.w	r3, #410	; 0x19a
d05a1174:	f8cd c008 	str.w	ip, [sp, #8]
d05a1178:	f8cd e00c 	str.w	lr, [sp, #12]
d05a117c:	9204      	str	r2, [sp, #16]
d05a117e:	222c      	movs	r2, #44	; 0x2c
d05a1180:	9101      	str	r1, [sp, #4]
d05a1182:	210c      	movs	r1, #12
d05a1184:	9000      	str	r0, [sp, #0]
d05a1186:	687f      	ldr	r7, [r7, #4]
d05a1188:	7828      	ldrb	r0, [r5, #0]
d05a118a:	47b8      	blx	r7
d05a118c:	7a23      	ldrb	r3, [r4, #8]
d05a118e:	7a62      	ldrb	r2, [r4, #9]
d05a1190:	7aa1      	ldrb	r1, [r4, #10]
d05a1192:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a1196:	7ae2      	ldrb	r2, [r4, #11]
d05a1198:	4f55      	ldr	r7, [pc, #340]	; (d05a12f0 <main+0x308>)
d05a119a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a119e:	4955      	ldr	r1, [pc, #340]	; (d05a12f4 <main+0x30c>)
d05a11a0:	6038      	str	r0, [r7, #0]
d05a11a2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a11a6:	68db      	ldr	r3, [r3, #12]
d05a11a8:	6f5b      	ldr	r3, [r3, #116]	; 0x74
d05a11aa:	4798      	blx	r3
d05a11ac:	7a23      	ldrb	r3, [r4, #8]
d05a11ae:	7a61      	ldrb	r1, [r4, #9]
d05a11b0:	4632      	mov	r2, r6
d05a11b2:	7aa0      	ldrb	r0, [r4, #10]
d05a11b4:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d05a11b8:	7ae1      	ldrb	r1, [r4, #11]
d05a11ba:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d05a11be:	f8db 0000 	ldr.w	r0, [fp]
d05a11c2:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d05a11c6:	494c      	ldr	r1, [pc, #304]	; (d05a12f8 <main+0x310>)
d05a11c8:	68db      	ldr	r3, [r3, #12]
d05a11ca:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05a11cc:	4798      	blx	r3
d05a11ce:	7a23      	ldrb	r3, [r4, #8]
d05a11d0:	7a61      	ldrb	r1, [r4, #9]
d05a11d2:	4632      	mov	r2, r6
d05a11d4:	7aa0      	ldrb	r0, [r4, #10]
d05a11d6:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d05a11da:	7ae1      	ldrb	r1, [r4, #11]
d05a11dc:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d05a11e0:	f8da 0000 	ldr.w	r0, [sl]
d05a11e4:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d05a11e8:	4944      	ldr	r1, [pc, #272]	; (d05a12fc <main+0x314>)
d05a11ea:	68db      	ldr	r3, [r3, #12]
d05a11ec:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05a11ee:	4798      	blx	r3
d05a11f0:	7a23      	ldrb	r3, [r4, #8]
d05a11f2:	7a61      	ldrb	r1, [r4, #9]
d05a11f4:	4632      	mov	r2, r6
d05a11f6:	7aa0      	ldrb	r0, [r4, #10]
d05a11f8:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d05a11fc:	7ae1      	ldrb	r1, [r4, #11]
d05a11fe:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d05a1202:	f8d9 0000 	ldr.w	r0, [r9]
d05a1206:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d05a120a:	493d      	ldr	r1, [pc, #244]	; (d05a1300 <main+0x318>)
d05a120c:	68db      	ldr	r3, [r3, #12]
d05a120e:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05a1210:	4798      	blx	r3
d05a1212:	7a23      	ldrb	r3, [r4, #8]
d05a1214:	7a61      	ldrb	r1, [r4, #9]
d05a1216:	4632      	mov	r2, r6
d05a1218:	7aa0      	ldrb	r0, [r4, #10]
d05a121a:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d05a121e:	7ae1      	ldrb	r1, [r4, #11]
d05a1220:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d05a1224:	f8d8 0000 	ldr.w	r0, [r8]
d05a1228:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d05a122c:	4935      	ldr	r1, [pc, #212]	; (d05a1304 <main+0x31c>)
d05a122e:	68db      	ldr	r3, [r3, #12]
d05a1230:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05a1232:	4798      	blx	r3
d05a1234:	7a23      	ldrb	r3, [r4, #8]
d05a1236:	7a62      	ldrb	r2, [r4, #9]
d05a1238:	7aa1      	ldrb	r1, [r4, #10]
d05a123a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a123e:	7ae2      	ldrb	r2, [r4, #11]
d05a1240:	f8db 0000 	ldr.w	r0, [fp]
d05a1244:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a1248:	f8df b0d4 	ldr.w	fp, [pc, #212]	; d05a1320 <main+0x338>
d05a124c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a1250:	68db      	ldr	r3, [r3, #12]
d05a1252:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a1254:	4798      	blx	r3
d05a1256:	7a23      	ldrb	r3, [r4, #8]
d05a1258:	7a62      	ldrb	r2, [r4, #9]
d05a125a:	f8da 0000 	ldr.w	r0, [sl]
d05a125e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a1262:	7aa2      	ldrb	r2, [r4, #10]
d05a1264:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d05a1268:	7ae2      	ldrb	r2, [r4, #11]
d05a126a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a126e:	68db      	ldr	r3, [r3, #12]
d05a1270:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a1272:	4798      	blx	r3
d05a1274:	7a23      	ldrb	r3, [r4, #8]
d05a1276:	7a62      	ldrb	r2, [r4, #9]
d05a1278:	7aa1      	ldrb	r1, [r4, #10]
d05a127a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a127e:	7ae2      	ldrb	r2, [r4, #11]
d05a1280:	f8d9 0000 	ldr.w	r0, [r9]
d05a1284:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a1288:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a128c:	68db      	ldr	r3, [r3, #12]
d05a128e:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a1290:	4798      	blx	r3
d05a1292:	7a23      	ldrb	r3, [r4, #8]
d05a1294:	7a62      	ldrb	r2, [r4, #9]
d05a1296:	7aa1      	ldrb	r1, [r4, #10]
d05a1298:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a129c:	7ae2      	ldrb	r2, [r4, #11]
d05a129e:	f8d8 0000 	ldr.w	r0, [r8]
d05a12a2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a12a6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a12aa:	68db      	ldr	r3, [r3, #12]
d05a12ac:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a12ae:	4798      	blx	r3
d05a12b0:	7a23      	ldrb	r3, [r4, #8]
d05a12b2:	7a62      	ldrb	r2, [r4, #9]
d05a12b4:	7aa1      	ldrb	r1, [r4, #10]
d05a12b6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a12ba:	7ae2      	ldrb	r2, [r4, #11]
d05a12bc:	6838      	ldr	r0, [r7, #0]
d05a12be:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a12c2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a12c6:	68db      	ldr	r3, [r3, #12]
d05a12c8:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a12ca:	4798      	blx	r3
d05a12cc:	f44f 3299 	mov.w	r2, #78336	; 0x13200
d05a12d0:	4631      	mov	r1, r6
d05a12d2:	e027      	b.n	d05a1324 <main+0x33c>
d05a12d4:	d05a25c8 	.word	0xd05a25c8
d05a12d8:	2001f000 	.word	0x2001f000
d05a12dc:	d05b57e1 	.word	0xd05b57e1
d05a12e0:	d05a01e9 	.word	0xd05a01e9
d05a12e4:	d05a2484 	.word	0xd05a2484
d05a12e8:	d05a248c 	.word	0xd05a248c
d05a12ec:	d05a2494 	.word	0xd05a2494
d05a12f0:	d05a25cc 	.word	0xd05a25cc
d05a12f4:	d05a25e0 	.word	0xd05a25e0
d05a12f8:	d05a01d5 	.word	0xd05a01d5
d05a12fc:	d05a0f59 	.word	0xd05a0f59
d05a1300:	d05a02b1 	.word	0xd05a02b1
d05a1304:	d05a0341 	.word	0xd05a0341
d05a1308:	d05a246c 	.word	0xd05a246c
d05a130c:	d05a25dc 	.word	0xd05a25dc
d05a1310:	d05a25d0 	.word	0xd05a25d0
d05a1314:	d05a247c 	.word	0xd05a247c
d05a1318:	d05a25d4 	.word	0xd05a25d4
d05a131c:	d05a25d8 	.word	0xd05a25d8
d05a1320:	d05b4b20 	.word	0xd05b4b20
d05a1324:	4855      	ldr	r0, [pc, #340]	; (d05a147c <main+0x494>)
d05a1326:	f000 f8bf 	bl	d05a14a8 <memset>
d05a132a:	7823      	ldrb	r3, [r4, #0]
d05a132c:	7862      	ldrb	r2, [r4, #1]
d05a132e:	78a1      	ldrb	r1, [r4, #2]
d05a1330:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a1334:	78e2      	ldrb	r2, [r4, #3]
d05a1336:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a133a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a133e:	689b      	ldr	r3, [r3, #8]
d05a1340:	4798      	blx	r3
d05a1342:	4b4f      	ldr	r3, [pc, #316]	; (d05a1480 <main+0x498>)
d05a1344:	f8df c150 	ldr.w	ip, [pc, #336]	; d05a1498 <main+0x4b0>
d05a1348:	f44f 3299 	mov.w	r2, #78336	; 0x13200
d05a134c:	7819      	ldrb	r1, [r3, #0]
d05a134e:	f8dc 3000 	ldr.w	r3, [ip]
d05a1352:	3111      	adds	r1, #17
d05a1354:	4043      	eors	r3, r0
d05a1356:	4849      	ldr	r0, [pc, #292]	; (d05a147c <main+0x494>)
d05a1358:	b2c9      	uxtb	r1, r1
d05a135a:	f8cc 3000 	str.w	r3, [ip]
d05a135e:	f000 f8a3 	bl	d05a14a8 <memset>
d05a1362:	ea4f 2906 	mov.w	r9, r6, lsl #8
d05a1366:	4a47      	ldr	r2, [pc, #284]	; (d05a1484 <main+0x49c>)
d05a1368:	4633      	mov	r3, r6
d05a136a:	eb0b 0a06 	add.w	sl, fp, r6
d05a136e:	fba2 2909 	umull	r2, r9, r2, r9
d05a1372:	4a45      	ldr	r2, [pc, #276]	; (d05a1488 <main+0x4a0>)
d05a1374:	3601      	adds	r6, #1
d05a1376:	eb02 0803 	add.w	r8, r2, r3
d05a137a:	ea4f 2919 	mov.w	r9, r9, lsr #8
d05a137e:	4650      	mov	r0, sl
d05a1380:	f50a 7acc 	add.w	sl, sl, #408	; 0x198
d05a1384:	2201      	movs	r2, #1
d05a1386:	4649      	mov	r1, r9
d05a1388:	f000 f88e 	bl	d05a14a8 <memset>
d05a138c:	45c2      	cmp	sl, r8
d05a138e:	d1f6      	bne.n	d05a137e <main+0x396>
d05a1390:	f5b6 7fcc 	cmp.w	r6, #408	; 0x198
d05a1394:	d1e5      	bne.n	d05a1362 <main+0x37a>
d05a1396:	6838      	ldr	r0, [r7, #0]
d05a1398:	b160      	cbz	r0, d05a13b4 <main+0x3cc>
d05a139a:	7a23      	ldrb	r3, [r4, #8]
d05a139c:	7a61      	ldrb	r1, [r4, #9]
d05a139e:	7aa2      	ldrb	r2, [r4, #10]
d05a13a0:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
d05a13a4:	7ae3      	ldrb	r3, [r4, #11]
d05a13a6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a13aa:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a13ae:	68db      	ldr	r3, [r3, #12]
d05a13b0:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05a13b2:	4798      	blx	r3
d05a13b4:	f7fe fea8 	bl	d05a0108 <set_status>
d05a13b8:	7a20      	ldrb	r0, [r4, #8]
d05a13ba:	7a61      	ldrb	r1, [r4, #9]
d05a13bc:	7aa2      	ldrb	r2, [r4, #10]
d05a13be:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a13c2:	7ae3      	ldrb	r3, [r4, #11]
d05a13c4:	4f31      	ldr	r7, [pc, #196]	; (d05a148c <main+0x4a4>)
d05a13c6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a13ca:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a13ce:	695b      	ldr	r3, [r3, #20]
d05a13d0:	681b      	ldr	r3, [r3, #0]
d05a13d2:	4798      	blx	r3
d05a13d4:	28ff      	cmp	r0, #255	; 0xff
d05a13d6:	7038      	strb	r0, [r7, #0]
d05a13d8:	d04a      	beq.n	d05a1470 <main+0x488>
d05a13da:	f894 c008 	ldrb.w	ip, [r4, #8]
d05a13de:	f04f 0e00 	mov.w	lr, #0
d05a13e2:	7a61      	ldrb	r1, [r4, #9]
d05a13e4:	2232      	movs	r2, #50	; 0x32
d05a13e6:	7aa3      	ldrb	r3, [r4, #10]
d05a13e8:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d05a13ec:	7ae6      	ldrb	r6, [r4, #11]
d05a13ee:	ea41 4303 	orr.w	r3, r1, r3, lsl #16
d05a13f2:	4611      	mov	r1, r2
d05a13f4:	ea43 6606 	orr.w	r6, r3, r6, lsl #24
d05a13f8:	4b25      	ldr	r3, [pc, #148]	; (d05a1490 <main+0x4a8>)
d05a13fa:	6976      	ldr	r6, [r6, #20]
d05a13fc:	f8cd e000 	str.w	lr, [sp]
d05a1400:	68b6      	ldr	r6, [r6, #8]
d05a1402:	47b0      	blx	r6
d05a1404:	b1a0      	cbz	r0, d05a1430 <main+0x448>
d05a1406:	7a20      	ldrb	r0, [r4, #8]
d05a1408:	7a61      	ldrb	r1, [r4, #9]
d05a140a:	7aa2      	ldrb	r2, [r4, #10]
d05a140c:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d05a1410:	7ae3      	ldrb	r3, [r4, #11]
d05a1412:	7838      	ldrb	r0, [r7, #0]
d05a1414:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d05a1418:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d05a141c:	695b      	ldr	r3, [r3, #20]
d05a141e:	685b      	ldr	r3, [r3, #4]
d05a1420:	4798      	blx	r3
d05a1422:	21ff      	movs	r1, #255	; 0xff
d05a1424:	4b1b      	ldr	r3, [pc, #108]	; (d05a1494 <main+0x4ac>)
d05a1426:	2201      	movs	r2, #1
d05a1428:	7039      	strb	r1, [r7, #0]
d05a142a:	701a      	strb	r2, [r3, #0]
d05a142c:	f7fe fe6c 	bl	d05a0108 <set_status>
d05a1430:	7a23      	ldrb	r3, [r4, #8]
d05a1432:	7a62      	ldrb	r2, [r4, #9]
d05a1434:	7aa1      	ldrb	r1, [r4, #10]
d05a1436:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a143a:	7ae2      	ldrb	r2, [r4, #11]
d05a143c:	7828      	ldrb	r0, [r5, #0]
d05a143e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a1442:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a1446:	685b      	ldr	r3, [r3, #4]
d05a1448:	68db      	ldr	r3, [r3, #12]
d05a144a:	4798      	blx	r3
d05a144c:	7a23      	ldrb	r3, [r4, #8]
d05a144e:	7a62      	ldrb	r2, [r4, #9]
d05a1450:	7aa1      	ldrb	r1, [r4, #10]
d05a1452:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05a1456:	7ae2      	ldrb	r2, [r4, #11]
d05a1458:	7828      	ldrb	r0, [r5, #0]
d05a145a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05a145e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05a1462:	685b      	ldr	r3, [r3, #4]
d05a1464:	695b      	ldr	r3, [r3, #20]
d05a1466:	4798      	blx	r3
d05a1468:	2000      	movs	r0, #0
d05a146a:	b007      	add	sp, #28
d05a146c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05a1470:	4b08      	ldr	r3, [pc, #32]	; (d05a1494 <main+0x4ac>)
d05a1472:	2201      	movs	r2, #1
d05a1474:	701a      	strb	r2, [r3, #0]
d05a1476:	f7fe fe47 	bl	d05a0108 <set_status>
d05a147a:	e7d9      	b.n	d05a1430 <main+0x448>
d05a147c:	d05a25e0 	.word	0xd05a25e0
d05a1480:	d05b57e0 	.word	0xd05b57e0
d05a1484:	a0a0a0a1 	.word	0xa0a0a0a1
d05a1488:	d05b57e0 	.word	0xd05b57e0
d05a148c:	d05a253c 	.word	0xd05a253c
d05a1490:	d05a0ea5 	.word	0xd05a0ea5
d05a1494:	d05b57e8 	.word	0xd05b57e8
d05a1498:	d05a2540 	.word	0xd05a2540

d05a149c <__errno>:
d05a149c:	4b01      	ldr	r3, [pc, #4]	; (d05a14a4 <__errno+0x8>)
d05a149e:	6818      	ldr	r0, [r3, #0]
d05a14a0:	4770      	bx	lr
d05a14a2:	bf00      	nop
d05a14a4:	d05a2544 	.word	0xd05a2544

d05a14a8 <memset>:
d05a14a8:	4402      	add	r2, r0
d05a14aa:	4603      	mov	r3, r0
d05a14ac:	4293      	cmp	r3, r2
d05a14ae:	d100      	bne.n	d05a14b2 <memset+0xa>
d05a14b0:	4770      	bx	lr
d05a14b2:	f803 1b01 	strb.w	r1, [r3], #1
d05a14b6:	e7f9      	b.n	d05a14ac <memset+0x4>

d05a14b8 <setbuf>:
d05a14b8:	2900      	cmp	r1, #0
d05a14ba:	f44f 6380 	mov.w	r3, #1024	; 0x400
d05a14be:	bf0c      	ite	eq
d05a14c0:	2202      	moveq	r2, #2
d05a14c2:	2200      	movne	r2, #0
d05a14c4:	f000 b800 	b.w	d05a14c8 <setvbuf>

d05a14c8 <setvbuf>:
d05a14c8:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d05a14cc:	461d      	mov	r5, r3
d05a14ce:	4b5d      	ldr	r3, [pc, #372]	; (d05a1644 <setvbuf+0x17c>)
d05a14d0:	681f      	ldr	r7, [r3, #0]
d05a14d2:	4604      	mov	r4, r0
d05a14d4:	460e      	mov	r6, r1
d05a14d6:	4690      	mov	r8, r2
d05a14d8:	b127      	cbz	r7, d05a14e4 <setvbuf+0x1c>
d05a14da:	69bb      	ldr	r3, [r7, #24]
d05a14dc:	b913      	cbnz	r3, d05a14e4 <setvbuf+0x1c>
d05a14de:	4638      	mov	r0, r7
d05a14e0:	f000 fa06 	bl	d05a18f0 <__sinit>
d05a14e4:	4b58      	ldr	r3, [pc, #352]	; (d05a1648 <setvbuf+0x180>)
d05a14e6:	429c      	cmp	r4, r3
d05a14e8:	d167      	bne.n	d05a15ba <setvbuf+0xf2>
d05a14ea:	687c      	ldr	r4, [r7, #4]
d05a14ec:	f1b8 0f02 	cmp.w	r8, #2
d05a14f0:	d006      	beq.n	d05a1500 <setvbuf+0x38>
d05a14f2:	f1b8 0f01 	cmp.w	r8, #1
d05a14f6:	f200 809f 	bhi.w	d05a1638 <setvbuf+0x170>
d05a14fa:	2d00      	cmp	r5, #0
d05a14fc:	f2c0 809c 	blt.w	d05a1638 <setvbuf+0x170>
d05a1500:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05a1502:	07db      	lsls	r3, r3, #31
d05a1504:	d405      	bmi.n	d05a1512 <setvbuf+0x4a>
d05a1506:	89a3      	ldrh	r3, [r4, #12]
d05a1508:	0598      	lsls	r0, r3, #22
d05a150a:	d402      	bmi.n	d05a1512 <setvbuf+0x4a>
d05a150c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a150e:	f000 fa8d 	bl	d05a1a2c <__retarget_lock_acquire_recursive>
d05a1512:	4621      	mov	r1, r4
d05a1514:	4638      	mov	r0, r7
d05a1516:	f000 f957 	bl	d05a17c8 <_fflush_r>
d05a151a:	6b61      	ldr	r1, [r4, #52]	; 0x34
d05a151c:	b141      	cbz	r1, d05a1530 <setvbuf+0x68>
d05a151e:	f104 0344 	add.w	r3, r4, #68	; 0x44
d05a1522:	4299      	cmp	r1, r3
d05a1524:	d002      	beq.n	d05a152c <setvbuf+0x64>
d05a1526:	4638      	mov	r0, r7
d05a1528:	f000 faae 	bl	d05a1a88 <_free_r>
d05a152c:	2300      	movs	r3, #0
d05a152e:	6363      	str	r3, [r4, #52]	; 0x34
d05a1530:	2300      	movs	r3, #0
d05a1532:	61a3      	str	r3, [r4, #24]
d05a1534:	6063      	str	r3, [r4, #4]
d05a1536:	89a3      	ldrh	r3, [r4, #12]
d05a1538:	0619      	lsls	r1, r3, #24
d05a153a:	d503      	bpl.n	d05a1544 <setvbuf+0x7c>
d05a153c:	6921      	ldr	r1, [r4, #16]
d05a153e:	4638      	mov	r0, r7
d05a1540:	f000 faa2 	bl	d05a1a88 <_free_r>
d05a1544:	89a3      	ldrh	r3, [r4, #12]
d05a1546:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d05a154a:	f023 0303 	bic.w	r3, r3, #3
d05a154e:	f1b8 0f02 	cmp.w	r8, #2
d05a1552:	81a3      	strh	r3, [r4, #12]
d05a1554:	d06c      	beq.n	d05a1630 <setvbuf+0x168>
d05a1556:	ab01      	add	r3, sp, #4
d05a1558:	466a      	mov	r2, sp
d05a155a:	4621      	mov	r1, r4
d05a155c:	4638      	mov	r0, r7
d05a155e:	f000 fa67 	bl	d05a1a30 <__swhatbuf_r>
d05a1562:	89a3      	ldrh	r3, [r4, #12]
d05a1564:	4318      	orrs	r0, r3
d05a1566:	81a0      	strh	r0, [r4, #12]
d05a1568:	2d00      	cmp	r5, #0
d05a156a:	d130      	bne.n	d05a15ce <setvbuf+0x106>
d05a156c:	9d00      	ldr	r5, [sp, #0]
d05a156e:	4628      	mov	r0, r5
d05a1570:	f000 fa82 	bl	d05a1a78 <malloc>
d05a1574:	4606      	mov	r6, r0
d05a1576:	2800      	cmp	r0, #0
d05a1578:	d155      	bne.n	d05a1626 <setvbuf+0x15e>
d05a157a:	f8dd 9000 	ldr.w	r9, [sp]
d05a157e:	45a9      	cmp	r9, r5
d05a1580:	d14a      	bne.n	d05a1618 <setvbuf+0x150>
d05a1582:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05a1586:	2200      	movs	r2, #0
d05a1588:	60a2      	str	r2, [r4, #8]
d05a158a:	f104 0247 	add.w	r2, r4, #71	; 0x47
d05a158e:	6022      	str	r2, [r4, #0]
d05a1590:	6122      	str	r2, [r4, #16]
d05a1592:	2201      	movs	r2, #1
d05a1594:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d05a1598:	6162      	str	r2, [r4, #20]
d05a159a:	6e62      	ldr	r2, [r4, #100]	; 0x64
d05a159c:	f043 0302 	orr.w	r3, r3, #2
d05a15a0:	07d2      	lsls	r2, r2, #31
d05a15a2:	81a3      	strh	r3, [r4, #12]
d05a15a4:	d405      	bmi.n	d05a15b2 <setvbuf+0xea>
d05a15a6:	f413 7f00 	tst.w	r3, #512	; 0x200
d05a15aa:	d102      	bne.n	d05a15b2 <setvbuf+0xea>
d05a15ac:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a15ae:	f000 fa3e 	bl	d05a1a2e <__retarget_lock_release_recursive>
d05a15b2:	4628      	mov	r0, r5
d05a15b4:	b003      	add	sp, #12
d05a15b6:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d05a15ba:	4b24      	ldr	r3, [pc, #144]	; (d05a164c <setvbuf+0x184>)
d05a15bc:	429c      	cmp	r4, r3
d05a15be:	d101      	bne.n	d05a15c4 <setvbuf+0xfc>
d05a15c0:	68bc      	ldr	r4, [r7, #8]
d05a15c2:	e793      	b.n	d05a14ec <setvbuf+0x24>
d05a15c4:	4b22      	ldr	r3, [pc, #136]	; (d05a1650 <setvbuf+0x188>)
d05a15c6:	429c      	cmp	r4, r3
d05a15c8:	bf08      	it	eq
d05a15ca:	68fc      	ldreq	r4, [r7, #12]
d05a15cc:	e78e      	b.n	d05a14ec <setvbuf+0x24>
d05a15ce:	2e00      	cmp	r6, #0
d05a15d0:	d0cd      	beq.n	d05a156e <setvbuf+0xa6>
d05a15d2:	69bb      	ldr	r3, [r7, #24]
d05a15d4:	b913      	cbnz	r3, d05a15dc <setvbuf+0x114>
d05a15d6:	4638      	mov	r0, r7
d05a15d8:	f000 f98a 	bl	d05a18f0 <__sinit>
d05a15dc:	f1b8 0f01 	cmp.w	r8, #1
d05a15e0:	bf08      	it	eq
d05a15e2:	89a3      	ldrheq	r3, [r4, #12]
d05a15e4:	6026      	str	r6, [r4, #0]
d05a15e6:	bf04      	itt	eq
d05a15e8:	f043 0301 	orreq.w	r3, r3, #1
d05a15ec:	81a3      	strheq	r3, [r4, #12]
d05a15ee:	89a2      	ldrh	r2, [r4, #12]
d05a15f0:	f012 0308 	ands.w	r3, r2, #8
d05a15f4:	e9c4 6504 	strd	r6, r5, [r4, #16]
d05a15f8:	d01c      	beq.n	d05a1634 <setvbuf+0x16c>
d05a15fa:	07d3      	lsls	r3, r2, #31
d05a15fc:	bf41      	itttt	mi
d05a15fe:	2300      	movmi	r3, #0
d05a1600:	426d      	negmi	r5, r5
d05a1602:	60a3      	strmi	r3, [r4, #8]
d05a1604:	61a5      	strmi	r5, [r4, #24]
d05a1606:	bf58      	it	pl
d05a1608:	60a5      	strpl	r5, [r4, #8]
d05a160a:	6e65      	ldr	r5, [r4, #100]	; 0x64
d05a160c:	f015 0501 	ands.w	r5, r5, #1
d05a1610:	d115      	bne.n	d05a163e <setvbuf+0x176>
d05a1612:	f412 7f00 	tst.w	r2, #512	; 0x200
d05a1616:	e7c8      	b.n	d05a15aa <setvbuf+0xe2>
d05a1618:	4648      	mov	r0, r9
d05a161a:	f000 fa2d 	bl	d05a1a78 <malloc>
d05a161e:	4606      	mov	r6, r0
d05a1620:	2800      	cmp	r0, #0
d05a1622:	d0ae      	beq.n	d05a1582 <setvbuf+0xba>
d05a1624:	464d      	mov	r5, r9
d05a1626:	89a3      	ldrh	r3, [r4, #12]
d05a1628:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d05a162c:	81a3      	strh	r3, [r4, #12]
d05a162e:	e7d0      	b.n	d05a15d2 <setvbuf+0x10a>
d05a1630:	2500      	movs	r5, #0
d05a1632:	e7a8      	b.n	d05a1586 <setvbuf+0xbe>
d05a1634:	60a3      	str	r3, [r4, #8]
d05a1636:	e7e8      	b.n	d05a160a <setvbuf+0x142>
d05a1638:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05a163c:	e7b9      	b.n	d05a15b2 <setvbuf+0xea>
d05a163e:	2500      	movs	r5, #0
d05a1640:	e7b7      	b.n	d05a15b2 <setvbuf+0xea>
d05a1642:	bf00      	nop
d05a1644:	d05a2544 	.word	0xd05a2544
d05a1648:	d05a24c0 	.word	0xd05a24c0
d05a164c:	d05a24e0 	.word	0xd05a24e0
d05a1650:	d05a24a0 	.word	0xd05a24a0

d05a1654 <sniprintf>:
d05a1654:	b40c      	push	{r2, r3}
d05a1656:	b530      	push	{r4, r5, lr}
d05a1658:	4b17      	ldr	r3, [pc, #92]	; (d05a16b8 <sniprintf+0x64>)
d05a165a:	1e0c      	subs	r4, r1, #0
d05a165c:	681d      	ldr	r5, [r3, #0]
d05a165e:	b09d      	sub	sp, #116	; 0x74
d05a1660:	da08      	bge.n	d05a1674 <sniprintf+0x20>
d05a1662:	238b      	movs	r3, #139	; 0x8b
d05a1664:	602b      	str	r3, [r5, #0]
d05a1666:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a166a:	b01d      	add	sp, #116	; 0x74
d05a166c:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d05a1670:	b002      	add	sp, #8
d05a1672:	4770      	bx	lr
d05a1674:	f44f 7302 	mov.w	r3, #520	; 0x208
d05a1678:	f8ad 3014 	strh.w	r3, [sp, #20]
d05a167c:	bf14      	ite	ne
d05a167e:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d05a1682:	4623      	moveq	r3, r4
d05a1684:	9304      	str	r3, [sp, #16]
d05a1686:	9307      	str	r3, [sp, #28]
d05a1688:	f64f 73ff 	movw	r3, #65535	; 0xffff
d05a168c:	9002      	str	r0, [sp, #8]
d05a168e:	9006      	str	r0, [sp, #24]
d05a1690:	f8ad 3016 	strh.w	r3, [sp, #22]
d05a1694:	9a20      	ldr	r2, [sp, #128]	; 0x80
d05a1696:	ab21      	add	r3, sp, #132	; 0x84
d05a1698:	a902      	add	r1, sp, #8
d05a169a:	4628      	mov	r0, r5
d05a169c:	9301      	str	r3, [sp, #4]
d05a169e:	f000 faf9 	bl	d05a1c94 <_svfiprintf_r>
d05a16a2:	1c43      	adds	r3, r0, #1
d05a16a4:	bfbc      	itt	lt
d05a16a6:	238b      	movlt	r3, #139	; 0x8b
d05a16a8:	602b      	strlt	r3, [r5, #0]
d05a16aa:	2c00      	cmp	r4, #0
d05a16ac:	d0dd      	beq.n	d05a166a <sniprintf+0x16>
d05a16ae:	9b02      	ldr	r3, [sp, #8]
d05a16b0:	2200      	movs	r2, #0
d05a16b2:	701a      	strb	r2, [r3, #0]
d05a16b4:	e7d9      	b.n	d05a166a <sniprintf+0x16>
d05a16b6:	bf00      	nop
d05a16b8:	d05a2544 	.word	0xd05a2544

d05a16bc <__sflush_r>:
d05a16bc:	898a      	ldrh	r2, [r1, #12]
d05a16be:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d05a16c2:	4605      	mov	r5, r0
d05a16c4:	0710      	lsls	r0, r2, #28
d05a16c6:	460c      	mov	r4, r1
d05a16c8:	d458      	bmi.n	d05a177c <__sflush_r+0xc0>
d05a16ca:	684b      	ldr	r3, [r1, #4]
d05a16cc:	2b00      	cmp	r3, #0
d05a16ce:	dc05      	bgt.n	d05a16dc <__sflush_r+0x20>
d05a16d0:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d05a16d2:	2b00      	cmp	r3, #0
d05a16d4:	dc02      	bgt.n	d05a16dc <__sflush_r+0x20>
d05a16d6:	2000      	movs	r0, #0
d05a16d8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d05a16dc:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d05a16de:	2e00      	cmp	r6, #0
d05a16e0:	d0f9      	beq.n	d05a16d6 <__sflush_r+0x1a>
d05a16e2:	2300      	movs	r3, #0
d05a16e4:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d05a16e8:	682f      	ldr	r7, [r5, #0]
d05a16ea:	602b      	str	r3, [r5, #0]
d05a16ec:	d032      	beq.n	d05a1754 <__sflush_r+0x98>
d05a16ee:	6d60      	ldr	r0, [r4, #84]	; 0x54
d05a16f0:	89a3      	ldrh	r3, [r4, #12]
d05a16f2:	075a      	lsls	r2, r3, #29
d05a16f4:	d505      	bpl.n	d05a1702 <__sflush_r+0x46>
d05a16f6:	6863      	ldr	r3, [r4, #4]
d05a16f8:	1ac0      	subs	r0, r0, r3
d05a16fa:	6b63      	ldr	r3, [r4, #52]	; 0x34
d05a16fc:	b10b      	cbz	r3, d05a1702 <__sflush_r+0x46>
d05a16fe:	6c23      	ldr	r3, [r4, #64]	; 0x40
d05a1700:	1ac0      	subs	r0, r0, r3
d05a1702:	2300      	movs	r3, #0
d05a1704:	4602      	mov	r2, r0
d05a1706:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d05a1708:	6a21      	ldr	r1, [r4, #32]
d05a170a:	4628      	mov	r0, r5
d05a170c:	47b0      	blx	r6
d05a170e:	1c43      	adds	r3, r0, #1
d05a1710:	89a3      	ldrh	r3, [r4, #12]
d05a1712:	d106      	bne.n	d05a1722 <__sflush_r+0x66>
d05a1714:	6829      	ldr	r1, [r5, #0]
d05a1716:	291d      	cmp	r1, #29
d05a1718:	d82c      	bhi.n	d05a1774 <__sflush_r+0xb8>
d05a171a:	4a2a      	ldr	r2, [pc, #168]	; (d05a17c4 <__sflush_r+0x108>)
d05a171c:	40ca      	lsrs	r2, r1
d05a171e:	07d6      	lsls	r6, r2, #31
d05a1720:	d528      	bpl.n	d05a1774 <__sflush_r+0xb8>
d05a1722:	2200      	movs	r2, #0
d05a1724:	6062      	str	r2, [r4, #4]
d05a1726:	04d9      	lsls	r1, r3, #19
d05a1728:	6922      	ldr	r2, [r4, #16]
d05a172a:	6022      	str	r2, [r4, #0]
d05a172c:	d504      	bpl.n	d05a1738 <__sflush_r+0x7c>
d05a172e:	1c42      	adds	r2, r0, #1
d05a1730:	d101      	bne.n	d05a1736 <__sflush_r+0x7a>
d05a1732:	682b      	ldr	r3, [r5, #0]
d05a1734:	b903      	cbnz	r3, d05a1738 <__sflush_r+0x7c>
d05a1736:	6560      	str	r0, [r4, #84]	; 0x54
d05a1738:	6b61      	ldr	r1, [r4, #52]	; 0x34
d05a173a:	602f      	str	r7, [r5, #0]
d05a173c:	2900      	cmp	r1, #0
d05a173e:	d0ca      	beq.n	d05a16d6 <__sflush_r+0x1a>
d05a1740:	f104 0344 	add.w	r3, r4, #68	; 0x44
d05a1744:	4299      	cmp	r1, r3
d05a1746:	d002      	beq.n	d05a174e <__sflush_r+0x92>
d05a1748:	4628      	mov	r0, r5
d05a174a:	f000 f99d 	bl	d05a1a88 <_free_r>
d05a174e:	2000      	movs	r0, #0
d05a1750:	6360      	str	r0, [r4, #52]	; 0x34
d05a1752:	e7c1      	b.n	d05a16d8 <__sflush_r+0x1c>
d05a1754:	6a21      	ldr	r1, [r4, #32]
d05a1756:	2301      	movs	r3, #1
d05a1758:	4628      	mov	r0, r5
d05a175a:	47b0      	blx	r6
d05a175c:	1c41      	adds	r1, r0, #1
d05a175e:	d1c7      	bne.n	d05a16f0 <__sflush_r+0x34>
d05a1760:	682b      	ldr	r3, [r5, #0]
d05a1762:	2b00      	cmp	r3, #0
d05a1764:	d0c4      	beq.n	d05a16f0 <__sflush_r+0x34>
d05a1766:	2b1d      	cmp	r3, #29
d05a1768:	d001      	beq.n	d05a176e <__sflush_r+0xb2>
d05a176a:	2b16      	cmp	r3, #22
d05a176c:	d101      	bne.n	d05a1772 <__sflush_r+0xb6>
d05a176e:	602f      	str	r7, [r5, #0]
d05a1770:	e7b1      	b.n	d05a16d6 <__sflush_r+0x1a>
d05a1772:	89a3      	ldrh	r3, [r4, #12]
d05a1774:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05a1778:	81a3      	strh	r3, [r4, #12]
d05a177a:	e7ad      	b.n	d05a16d8 <__sflush_r+0x1c>
d05a177c:	690f      	ldr	r7, [r1, #16]
d05a177e:	2f00      	cmp	r7, #0
d05a1780:	d0a9      	beq.n	d05a16d6 <__sflush_r+0x1a>
d05a1782:	0793      	lsls	r3, r2, #30
d05a1784:	680e      	ldr	r6, [r1, #0]
d05a1786:	bf08      	it	eq
d05a1788:	694b      	ldreq	r3, [r1, #20]
d05a178a:	600f      	str	r7, [r1, #0]
d05a178c:	bf18      	it	ne
d05a178e:	2300      	movne	r3, #0
d05a1790:	eba6 0807 	sub.w	r8, r6, r7
d05a1794:	608b      	str	r3, [r1, #8]
d05a1796:	f1b8 0f00 	cmp.w	r8, #0
d05a179a:	dd9c      	ble.n	d05a16d6 <__sflush_r+0x1a>
d05a179c:	6a21      	ldr	r1, [r4, #32]
d05a179e:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d05a17a0:	4643      	mov	r3, r8
d05a17a2:	463a      	mov	r2, r7
d05a17a4:	4628      	mov	r0, r5
d05a17a6:	47b0      	blx	r6
d05a17a8:	2800      	cmp	r0, #0
d05a17aa:	dc06      	bgt.n	d05a17ba <__sflush_r+0xfe>
d05a17ac:	89a3      	ldrh	r3, [r4, #12]
d05a17ae:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05a17b2:	81a3      	strh	r3, [r4, #12]
d05a17b4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a17b8:	e78e      	b.n	d05a16d8 <__sflush_r+0x1c>
d05a17ba:	4407      	add	r7, r0
d05a17bc:	eba8 0800 	sub.w	r8, r8, r0
d05a17c0:	e7e9      	b.n	d05a1796 <__sflush_r+0xda>
d05a17c2:	bf00      	nop
d05a17c4:	20400001 	.word	0x20400001

d05a17c8 <_fflush_r>:
d05a17c8:	b538      	push	{r3, r4, r5, lr}
d05a17ca:	690b      	ldr	r3, [r1, #16]
d05a17cc:	4605      	mov	r5, r0
d05a17ce:	460c      	mov	r4, r1
d05a17d0:	b913      	cbnz	r3, d05a17d8 <_fflush_r+0x10>
d05a17d2:	2500      	movs	r5, #0
d05a17d4:	4628      	mov	r0, r5
d05a17d6:	bd38      	pop	{r3, r4, r5, pc}
d05a17d8:	b118      	cbz	r0, d05a17e2 <_fflush_r+0x1a>
d05a17da:	6983      	ldr	r3, [r0, #24]
d05a17dc:	b90b      	cbnz	r3, d05a17e2 <_fflush_r+0x1a>
d05a17de:	f000 f887 	bl	d05a18f0 <__sinit>
d05a17e2:	4b14      	ldr	r3, [pc, #80]	; (d05a1834 <_fflush_r+0x6c>)
d05a17e4:	429c      	cmp	r4, r3
d05a17e6:	d11b      	bne.n	d05a1820 <_fflush_r+0x58>
d05a17e8:	686c      	ldr	r4, [r5, #4]
d05a17ea:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d05a17ee:	2b00      	cmp	r3, #0
d05a17f0:	d0ef      	beq.n	d05a17d2 <_fflush_r+0xa>
d05a17f2:	6e62      	ldr	r2, [r4, #100]	; 0x64
d05a17f4:	07d0      	lsls	r0, r2, #31
d05a17f6:	d404      	bmi.n	d05a1802 <_fflush_r+0x3a>
d05a17f8:	0599      	lsls	r1, r3, #22
d05a17fa:	d402      	bmi.n	d05a1802 <_fflush_r+0x3a>
d05a17fc:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a17fe:	f000 f915 	bl	d05a1a2c <__retarget_lock_acquire_recursive>
d05a1802:	4628      	mov	r0, r5
d05a1804:	4621      	mov	r1, r4
d05a1806:	f7ff ff59 	bl	d05a16bc <__sflush_r>
d05a180a:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05a180c:	07da      	lsls	r2, r3, #31
d05a180e:	4605      	mov	r5, r0
d05a1810:	d4e0      	bmi.n	d05a17d4 <_fflush_r+0xc>
d05a1812:	89a3      	ldrh	r3, [r4, #12]
d05a1814:	059b      	lsls	r3, r3, #22
d05a1816:	d4dd      	bmi.n	d05a17d4 <_fflush_r+0xc>
d05a1818:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05a181a:	f000 f908 	bl	d05a1a2e <__retarget_lock_release_recursive>
d05a181e:	e7d9      	b.n	d05a17d4 <_fflush_r+0xc>
d05a1820:	4b05      	ldr	r3, [pc, #20]	; (d05a1838 <_fflush_r+0x70>)
d05a1822:	429c      	cmp	r4, r3
d05a1824:	d101      	bne.n	d05a182a <_fflush_r+0x62>
d05a1826:	68ac      	ldr	r4, [r5, #8]
d05a1828:	e7df      	b.n	d05a17ea <_fflush_r+0x22>
d05a182a:	4b04      	ldr	r3, [pc, #16]	; (d05a183c <_fflush_r+0x74>)
d05a182c:	429c      	cmp	r4, r3
d05a182e:	bf08      	it	eq
d05a1830:	68ec      	ldreq	r4, [r5, #12]
d05a1832:	e7da      	b.n	d05a17ea <_fflush_r+0x22>
d05a1834:	d05a24c0 	.word	0xd05a24c0
d05a1838:	d05a24e0 	.word	0xd05a24e0
d05a183c:	d05a24a0 	.word	0xd05a24a0

d05a1840 <std>:
d05a1840:	2300      	movs	r3, #0
d05a1842:	b510      	push	{r4, lr}
d05a1844:	4604      	mov	r4, r0
d05a1846:	e9c0 3300 	strd	r3, r3, [r0]
d05a184a:	e9c0 3304 	strd	r3, r3, [r0, #16]
d05a184e:	6083      	str	r3, [r0, #8]
d05a1850:	8181      	strh	r1, [r0, #12]
d05a1852:	6643      	str	r3, [r0, #100]	; 0x64
d05a1854:	81c2      	strh	r2, [r0, #14]
d05a1856:	6183      	str	r3, [r0, #24]
d05a1858:	4619      	mov	r1, r3
d05a185a:	2208      	movs	r2, #8
d05a185c:	305c      	adds	r0, #92	; 0x5c
d05a185e:	f7ff fe23 	bl	d05a14a8 <memset>
d05a1862:	4b05      	ldr	r3, [pc, #20]	; (d05a1878 <std+0x38>)
d05a1864:	6263      	str	r3, [r4, #36]	; 0x24
d05a1866:	4b05      	ldr	r3, [pc, #20]	; (d05a187c <std+0x3c>)
d05a1868:	62a3      	str	r3, [r4, #40]	; 0x28
d05a186a:	4b05      	ldr	r3, [pc, #20]	; (d05a1880 <std+0x40>)
d05a186c:	62e3      	str	r3, [r4, #44]	; 0x2c
d05a186e:	4b05      	ldr	r3, [pc, #20]	; (d05a1884 <std+0x44>)
d05a1870:	6224      	str	r4, [r4, #32]
d05a1872:	6323      	str	r3, [r4, #48]	; 0x30
d05a1874:	bd10      	pop	{r4, pc}
d05a1876:	bf00      	nop
d05a1878:	d05a21bd 	.word	0xd05a21bd
d05a187c:	d05a21df 	.word	0xd05a21df
d05a1880:	d05a2217 	.word	0xd05a2217
d05a1884:	d05a223b 	.word	0xd05a223b

d05a1888 <_cleanup_r>:
d05a1888:	4901      	ldr	r1, [pc, #4]	; (d05a1890 <_cleanup_r+0x8>)
d05a188a:	f000 b8af 	b.w	d05a19ec <_fwalk_reent>
d05a188e:	bf00      	nop
d05a1890:	d05a17c9 	.word	0xd05a17c9

d05a1894 <__sfmoreglue>:
d05a1894:	b570      	push	{r4, r5, r6, lr}
d05a1896:	1e4a      	subs	r2, r1, #1
d05a1898:	2568      	movs	r5, #104	; 0x68
d05a189a:	4355      	muls	r5, r2
d05a189c:	460e      	mov	r6, r1
d05a189e:	f105 0174 	add.w	r1, r5, #116	; 0x74
d05a18a2:	f000 f941 	bl	d05a1b28 <_malloc_r>
d05a18a6:	4604      	mov	r4, r0
d05a18a8:	b140      	cbz	r0, d05a18bc <__sfmoreglue+0x28>
d05a18aa:	2100      	movs	r1, #0
d05a18ac:	e9c0 1600 	strd	r1, r6, [r0]
d05a18b0:	300c      	adds	r0, #12
d05a18b2:	60a0      	str	r0, [r4, #8]
d05a18b4:	f105 0268 	add.w	r2, r5, #104	; 0x68
d05a18b8:	f7ff fdf6 	bl	d05a14a8 <memset>
d05a18bc:	4620      	mov	r0, r4
d05a18be:	bd70      	pop	{r4, r5, r6, pc}

d05a18c0 <__sfp_lock_acquire>:
d05a18c0:	4801      	ldr	r0, [pc, #4]	; (d05a18c8 <__sfp_lock_acquire+0x8>)
d05a18c2:	f000 b8b3 	b.w	d05a1a2c <__retarget_lock_acquire_recursive>
d05a18c6:	bf00      	nop
d05a18c8:	d05b5860 	.word	0xd05b5860

d05a18cc <__sfp_lock_release>:
d05a18cc:	4801      	ldr	r0, [pc, #4]	; (d05a18d4 <__sfp_lock_release+0x8>)
d05a18ce:	f000 b8ae 	b.w	d05a1a2e <__retarget_lock_release_recursive>
d05a18d2:	bf00      	nop
d05a18d4:	d05b5860 	.word	0xd05b5860

d05a18d8 <__sinit_lock_acquire>:
d05a18d8:	4801      	ldr	r0, [pc, #4]	; (d05a18e0 <__sinit_lock_acquire+0x8>)
d05a18da:	f000 b8a7 	b.w	d05a1a2c <__retarget_lock_acquire_recursive>
d05a18de:	bf00      	nop
d05a18e0:	d05b585b 	.word	0xd05b585b

d05a18e4 <__sinit_lock_release>:
d05a18e4:	4801      	ldr	r0, [pc, #4]	; (d05a18ec <__sinit_lock_release+0x8>)
d05a18e6:	f000 b8a2 	b.w	d05a1a2e <__retarget_lock_release_recursive>
d05a18ea:	bf00      	nop
d05a18ec:	d05b585b 	.word	0xd05b585b

d05a18f0 <__sinit>:
d05a18f0:	b510      	push	{r4, lr}
d05a18f2:	4604      	mov	r4, r0
d05a18f4:	f7ff fff0 	bl	d05a18d8 <__sinit_lock_acquire>
d05a18f8:	69a3      	ldr	r3, [r4, #24]
d05a18fa:	b11b      	cbz	r3, d05a1904 <__sinit+0x14>
d05a18fc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d05a1900:	f7ff bff0 	b.w	d05a18e4 <__sinit_lock_release>
d05a1904:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d05a1908:	6523      	str	r3, [r4, #80]	; 0x50
d05a190a:	4b13      	ldr	r3, [pc, #76]	; (d05a1958 <__sinit+0x68>)
d05a190c:	4a13      	ldr	r2, [pc, #76]	; (d05a195c <__sinit+0x6c>)
d05a190e:	681b      	ldr	r3, [r3, #0]
d05a1910:	62a2      	str	r2, [r4, #40]	; 0x28
d05a1912:	42a3      	cmp	r3, r4
d05a1914:	bf04      	itt	eq
d05a1916:	2301      	moveq	r3, #1
d05a1918:	61a3      	streq	r3, [r4, #24]
d05a191a:	4620      	mov	r0, r4
d05a191c:	f000 f820 	bl	d05a1960 <__sfp>
d05a1920:	6060      	str	r0, [r4, #4]
d05a1922:	4620      	mov	r0, r4
d05a1924:	f000 f81c 	bl	d05a1960 <__sfp>
d05a1928:	60a0      	str	r0, [r4, #8]
d05a192a:	4620      	mov	r0, r4
d05a192c:	f000 f818 	bl	d05a1960 <__sfp>
d05a1930:	2200      	movs	r2, #0
d05a1932:	60e0      	str	r0, [r4, #12]
d05a1934:	2104      	movs	r1, #4
d05a1936:	6860      	ldr	r0, [r4, #4]
d05a1938:	f7ff ff82 	bl	d05a1840 <std>
d05a193c:	68a0      	ldr	r0, [r4, #8]
d05a193e:	2201      	movs	r2, #1
d05a1940:	2109      	movs	r1, #9
d05a1942:	f7ff ff7d 	bl	d05a1840 <std>
d05a1946:	68e0      	ldr	r0, [r4, #12]
d05a1948:	2202      	movs	r2, #2
d05a194a:	2112      	movs	r1, #18
d05a194c:	f7ff ff78 	bl	d05a1840 <std>
d05a1950:	2301      	movs	r3, #1
d05a1952:	61a3      	str	r3, [r4, #24]
d05a1954:	e7d2      	b.n	d05a18fc <__sinit+0xc>
d05a1956:	bf00      	nop
d05a1958:	d05a249c 	.word	0xd05a249c
d05a195c:	d05a1889 	.word	0xd05a1889

d05a1960 <__sfp>:
d05a1960:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a1962:	4607      	mov	r7, r0
d05a1964:	f7ff ffac 	bl	d05a18c0 <__sfp_lock_acquire>
d05a1968:	4b1e      	ldr	r3, [pc, #120]	; (d05a19e4 <__sfp+0x84>)
d05a196a:	681e      	ldr	r6, [r3, #0]
d05a196c:	69b3      	ldr	r3, [r6, #24]
d05a196e:	b913      	cbnz	r3, d05a1976 <__sfp+0x16>
d05a1970:	4630      	mov	r0, r6
d05a1972:	f7ff ffbd 	bl	d05a18f0 <__sinit>
d05a1976:	3648      	adds	r6, #72	; 0x48
d05a1978:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d05a197c:	3b01      	subs	r3, #1
d05a197e:	d503      	bpl.n	d05a1988 <__sfp+0x28>
d05a1980:	6833      	ldr	r3, [r6, #0]
d05a1982:	b30b      	cbz	r3, d05a19c8 <__sfp+0x68>
d05a1984:	6836      	ldr	r6, [r6, #0]
d05a1986:	e7f7      	b.n	d05a1978 <__sfp+0x18>
d05a1988:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d05a198c:	b9d5      	cbnz	r5, d05a19c4 <__sfp+0x64>
d05a198e:	4b16      	ldr	r3, [pc, #88]	; (d05a19e8 <__sfp+0x88>)
d05a1990:	60e3      	str	r3, [r4, #12]
d05a1992:	f104 0058 	add.w	r0, r4, #88	; 0x58
d05a1996:	6665      	str	r5, [r4, #100]	; 0x64
d05a1998:	f000 f847 	bl	d05a1a2a <__retarget_lock_init_recursive>
d05a199c:	f7ff ff96 	bl	d05a18cc <__sfp_lock_release>
d05a19a0:	e9c4 5501 	strd	r5, r5, [r4, #4]
d05a19a4:	e9c4 5504 	strd	r5, r5, [r4, #16]
d05a19a8:	6025      	str	r5, [r4, #0]
d05a19aa:	61a5      	str	r5, [r4, #24]
d05a19ac:	2208      	movs	r2, #8
d05a19ae:	4629      	mov	r1, r5
d05a19b0:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d05a19b4:	f7ff fd78 	bl	d05a14a8 <memset>
d05a19b8:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d05a19bc:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d05a19c0:	4620      	mov	r0, r4
d05a19c2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a19c4:	3468      	adds	r4, #104	; 0x68
d05a19c6:	e7d9      	b.n	d05a197c <__sfp+0x1c>
d05a19c8:	2104      	movs	r1, #4
d05a19ca:	4638      	mov	r0, r7
d05a19cc:	f7ff ff62 	bl	d05a1894 <__sfmoreglue>
d05a19d0:	4604      	mov	r4, r0
d05a19d2:	6030      	str	r0, [r6, #0]
d05a19d4:	2800      	cmp	r0, #0
d05a19d6:	d1d5      	bne.n	d05a1984 <__sfp+0x24>
d05a19d8:	f7ff ff78 	bl	d05a18cc <__sfp_lock_release>
d05a19dc:	230c      	movs	r3, #12
d05a19de:	603b      	str	r3, [r7, #0]
d05a19e0:	e7ee      	b.n	d05a19c0 <__sfp+0x60>
d05a19e2:	bf00      	nop
d05a19e4:	d05a249c 	.word	0xd05a249c
d05a19e8:	ffff0001 	.word	0xffff0001

d05a19ec <_fwalk_reent>:
d05a19ec:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d05a19f0:	4606      	mov	r6, r0
d05a19f2:	4688      	mov	r8, r1
d05a19f4:	f100 0448 	add.w	r4, r0, #72	; 0x48
d05a19f8:	2700      	movs	r7, #0
d05a19fa:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d05a19fe:	f1b9 0901 	subs.w	r9, r9, #1
d05a1a02:	d505      	bpl.n	d05a1a10 <_fwalk_reent+0x24>
d05a1a04:	6824      	ldr	r4, [r4, #0]
d05a1a06:	2c00      	cmp	r4, #0
d05a1a08:	d1f7      	bne.n	d05a19fa <_fwalk_reent+0xe>
d05a1a0a:	4638      	mov	r0, r7
d05a1a0c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d05a1a10:	89ab      	ldrh	r3, [r5, #12]
d05a1a12:	2b01      	cmp	r3, #1
d05a1a14:	d907      	bls.n	d05a1a26 <_fwalk_reent+0x3a>
d05a1a16:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d05a1a1a:	3301      	adds	r3, #1
d05a1a1c:	d003      	beq.n	d05a1a26 <_fwalk_reent+0x3a>
d05a1a1e:	4629      	mov	r1, r5
d05a1a20:	4630      	mov	r0, r6
d05a1a22:	47c0      	blx	r8
d05a1a24:	4307      	orrs	r7, r0
d05a1a26:	3568      	adds	r5, #104	; 0x68
d05a1a28:	e7e9      	b.n	d05a19fe <_fwalk_reent+0x12>

d05a1a2a <__retarget_lock_init_recursive>:
d05a1a2a:	4770      	bx	lr

d05a1a2c <__retarget_lock_acquire_recursive>:
d05a1a2c:	4770      	bx	lr

d05a1a2e <__retarget_lock_release_recursive>:
d05a1a2e:	4770      	bx	lr

d05a1a30 <__swhatbuf_r>:
d05a1a30:	b570      	push	{r4, r5, r6, lr}
d05a1a32:	460e      	mov	r6, r1
d05a1a34:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a1a38:	2900      	cmp	r1, #0
d05a1a3a:	b096      	sub	sp, #88	; 0x58
d05a1a3c:	4614      	mov	r4, r2
d05a1a3e:	461d      	mov	r5, r3
d05a1a40:	da07      	bge.n	d05a1a52 <__swhatbuf_r+0x22>
d05a1a42:	2300      	movs	r3, #0
d05a1a44:	602b      	str	r3, [r5, #0]
d05a1a46:	89b3      	ldrh	r3, [r6, #12]
d05a1a48:	061a      	lsls	r2, r3, #24
d05a1a4a:	d410      	bmi.n	d05a1a6e <__swhatbuf_r+0x3e>
d05a1a4c:	f44f 6380 	mov.w	r3, #1024	; 0x400
d05a1a50:	e00e      	b.n	d05a1a70 <__swhatbuf_r+0x40>
d05a1a52:	466a      	mov	r2, sp
d05a1a54:	f000 fc06 	bl	d05a2264 <_fstat_r>
d05a1a58:	2800      	cmp	r0, #0
d05a1a5a:	dbf2      	blt.n	d05a1a42 <__swhatbuf_r+0x12>
d05a1a5c:	9a01      	ldr	r2, [sp, #4]
d05a1a5e:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d05a1a62:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d05a1a66:	425a      	negs	r2, r3
d05a1a68:	415a      	adcs	r2, r3
d05a1a6a:	602a      	str	r2, [r5, #0]
d05a1a6c:	e7ee      	b.n	d05a1a4c <__swhatbuf_r+0x1c>
d05a1a6e:	2340      	movs	r3, #64	; 0x40
d05a1a70:	2000      	movs	r0, #0
d05a1a72:	6023      	str	r3, [r4, #0]
d05a1a74:	b016      	add	sp, #88	; 0x58
d05a1a76:	bd70      	pop	{r4, r5, r6, pc}

d05a1a78 <malloc>:
d05a1a78:	4b02      	ldr	r3, [pc, #8]	; (d05a1a84 <malloc+0xc>)
d05a1a7a:	4601      	mov	r1, r0
d05a1a7c:	6818      	ldr	r0, [r3, #0]
d05a1a7e:	f000 b853 	b.w	d05a1b28 <_malloc_r>
d05a1a82:	bf00      	nop
d05a1a84:	d05a2544 	.word	0xd05a2544

d05a1a88 <_free_r>:
d05a1a88:	b537      	push	{r0, r1, r2, r4, r5, lr}
d05a1a8a:	2900      	cmp	r1, #0
d05a1a8c:	d048      	beq.n	d05a1b20 <_free_r+0x98>
d05a1a8e:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05a1a92:	9001      	str	r0, [sp, #4]
d05a1a94:	2b00      	cmp	r3, #0
d05a1a96:	f1a1 0404 	sub.w	r4, r1, #4
d05a1a9a:	bfb8      	it	lt
d05a1a9c:	18e4      	addlt	r4, r4, r3
d05a1a9e:	f000 fc7f 	bl	d05a23a0 <__malloc_lock>
d05a1aa2:	4a20      	ldr	r2, [pc, #128]	; (d05a1b24 <_free_r+0x9c>)
d05a1aa4:	9801      	ldr	r0, [sp, #4]
d05a1aa6:	6813      	ldr	r3, [r2, #0]
d05a1aa8:	4615      	mov	r5, r2
d05a1aaa:	b933      	cbnz	r3, d05a1aba <_free_r+0x32>
d05a1aac:	6063      	str	r3, [r4, #4]
d05a1aae:	6014      	str	r4, [r2, #0]
d05a1ab0:	b003      	add	sp, #12
d05a1ab2:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d05a1ab6:	f000 bc79 	b.w	d05a23ac <__malloc_unlock>
d05a1aba:	42a3      	cmp	r3, r4
d05a1abc:	d90b      	bls.n	d05a1ad6 <_free_r+0x4e>
d05a1abe:	6821      	ldr	r1, [r4, #0]
d05a1ac0:	1862      	adds	r2, r4, r1
d05a1ac2:	4293      	cmp	r3, r2
d05a1ac4:	bf04      	itt	eq
d05a1ac6:	681a      	ldreq	r2, [r3, #0]
d05a1ac8:	685b      	ldreq	r3, [r3, #4]
d05a1aca:	6063      	str	r3, [r4, #4]
d05a1acc:	bf04      	itt	eq
d05a1ace:	1852      	addeq	r2, r2, r1
d05a1ad0:	6022      	streq	r2, [r4, #0]
d05a1ad2:	602c      	str	r4, [r5, #0]
d05a1ad4:	e7ec      	b.n	d05a1ab0 <_free_r+0x28>
d05a1ad6:	461a      	mov	r2, r3
d05a1ad8:	685b      	ldr	r3, [r3, #4]
d05a1ada:	b10b      	cbz	r3, d05a1ae0 <_free_r+0x58>
d05a1adc:	42a3      	cmp	r3, r4
d05a1ade:	d9fa      	bls.n	d05a1ad6 <_free_r+0x4e>
d05a1ae0:	6811      	ldr	r1, [r2, #0]
d05a1ae2:	1855      	adds	r5, r2, r1
d05a1ae4:	42a5      	cmp	r5, r4
d05a1ae6:	d10b      	bne.n	d05a1b00 <_free_r+0x78>
d05a1ae8:	6824      	ldr	r4, [r4, #0]
d05a1aea:	4421      	add	r1, r4
d05a1aec:	1854      	adds	r4, r2, r1
d05a1aee:	42a3      	cmp	r3, r4
d05a1af0:	6011      	str	r1, [r2, #0]
d05a1af2:	d1dd      	bne.n	d05a1ab0 <_free_r+0x28>
d05a1af4:	681c      	ldr	r4, [r3, #0]
d05a1af6:	685b      	ldr	r3, [r3, #4]
d05a1af8:	6053      	str	r3, [r2, #4]
d05a1afa:	4421      	add	r1, r4
d05a1afc:	6011      	str	r1, [r2, #0]
d05a1afe:	e7d7      	b.n	d05a1ab0 <_free_r+0x28>
d05a1b00:	d902      	bls.n	d05a1b08 <_free_r+0x80>
d05a1b02:	230c      	movs	r3, #12
d05a1b04:	6003      	str	r3, [r0, #0]
d05a1b06:	e7d3      	b.n	d05a1ab0 <_free_r+0x28>
d05a1b08:	6825      	ldr	r5, [r4, #0]
d05a1b0a:	1961      	adds	r1, r4, r5
d05a1b0c:	428b      	cmp	r3, r1
d05a1b0e:	bf04      	itt	eq
d05a1b10:	6819      	ldreq	r1, [r3, #0]
d05a1b12:	685b      	ldreq	r3, [r3, #4]
d05a1b14:	6063      	str	r3, [r4, #4]
d05a1b16:	bf04      	itt	eq
d05a1b18:	1949      	addeq	r1, r1, r5
d05a1b1a:	6021      	streq	r1, [r4, #0]
d05a1b1c:	6054      	str	r4, [r2, #4]
d05a1b1e:	e7c7      	b.n	d05a1ab0 <_free_r+0x28>
d05a1b20:	b003      	add	sp, #12
d05a1b22:	bd30      	pop	{r4, r5, pc}
d05a1b24:	d05b5850 	.word	0xd05b5850

d05a1b28 <_malloc_r>:
d05a1b28:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a1b2a:	1ccd      	adds	r5, r1, #3
d05a1b2c:	f025 0503 	bic.w	r5, r5, #3
d05a1b30:	3508      	adds	r5, #8
d05a1b32:	2d0c      	cmp	r5, #12
d05a1b34:	bf38      	it	cc
d05a1b36:	250c      	movcc	r5, #12
d05a1b38:	2d00      	cmp	r5, #0
d05a1b3a:	4606      	mov	r6, r0
d05a1b3c:	db01      	blt.n	d05a1b42 <_malloc_r+0x1a>
d05a1b3e:	42a9      	cmp	r1, r5
d05a1b40:	d903      	bls.n	d05a1b4a <_malloc_r+0x22>
d05a1b42:	230c      	movs	r3, #12
d05a1b44:	6033      	str	r3, [r6, #0]
d05a1b46:	2000      	movs	r0, #0
d05a1b48:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a1b4a:	f000 fc29 	bl	d05a23a0 <__malloc_lock>
d05a1b4e:	4921      	ldr	r1, [pc, #132]	; (d05a1bd4 <_malloc_r+0xac>)
d05a1b50:	680a      	ldr	r2, [r1, #0]
d05a1b52:	4614      	mov	r4, r2
d05a1b54:	b99c      	cbnz	r4, d05a1b7e <_malloc_r+0x56>
d05a1b56:	4f20      	ldr	r7, [pc, #128]	; (d05a1bd8 <_malloc_r+0xb0>)
d05a1b58:	683b      	ldr	r3, [r7, #0]
d05a1b5a:	b923      	cbnz	r3, d05a1b66 <_malloc_r+0x3e>
d05a1b5c:	4621      	mov	r1, r4
d05a1b5e:	4630      	mov	r0, r6
d05a1b60:	f7fe fab2 	bl	d05a00c8 <_sbrk_r>
d05a1b64:	6038      	str	r0, [r7, #0]
d05a1b66:	4629      	mov	r1, r5
d05a1b68:	4630      	mov	r0, r6
d05a1b6a:	f7fe faad 	bl	d05a00c8 <_sbrk_r>
d05a1b6e:	1c43      	adds	r3, r0, #1
d05a1b70:	d123      	bne.n	d05a1bba <_malloc_r+0x92>
d05a1b72:	230c      	movs	r3, #12
d05a1b74:	6033      	str	r3, [r6, #0]
d05a1b76:	4630      	mov	r0, r6
d05a1b78:	f000 fc18 	bl	d05a23ac <__malloc_unlock>
d05a1b7c:	e7e3      	b.n	d05a1b46 <_malloc_r+0x1e>
d05a1b7e:	6823      	ldr	r3, [r4, #0]
d05a1b80:	1b5b      	subs	r3, r3, r5
d05a1b82:	d417      	bmi.n	d05a1bb4 <_malloc_r+0x8c>
d05a1b84:	2b0b      	cmp	r3, #11
d05a1b86:	d903      	bls.n	d05a1b90 <_malloc_r+0x68>
d05a1b88:	6023      	str	r3, [r4, #0]
d05a1b8a:	441c      	add	r4, r3
d05a1b8c:	6025      	str	r5, [r4, #0]
d05a1b8e:	e004      	b.n	d05a1b9a <_malloc_r+0x72>
d05a1b90:	6863      	ldr	r3, [r4, #4]
d05a1b92:	42a2      	cmp	r2, r4
d05a1b94:	bf0c      	ite	eq
d05a1b96:	600b      	streq	r3, [r1, #0]
d05a1b98:	6053      	strne	r3, [r2, #4]
d05a1b9a:	4630      	mov	r0, r6
d05a1b9c:	f000 fc06 	bl	d05a23ac <__malloc_unlock>
d05a1ba0:	f104 000b 	add.w	r0, r4, #11
d05a1ba4:	1d23      	adds	r3, r4, #4
d05a1ba6:	f020 0007 	bic.w	r0, r0, #7
d05a1baa:	1ac2      	subs	r2, r0, r3
d05a1bac:	d0cc      	beq.n	d05a1b48 <_malloc_r+0x20>
d05a1bae:	1a1b      	subs	r3, r3, r0
d05a1bb0:	50a3      	str	r3, [r4, r2]
d05a1bb2:	e7c9      	b.n	d05a1b48 <_malloc_r+0x20>
d05a1bb4:	4622      	mov	r2, r4
d05a1bb6:	6864      	ldr	r4, [r4, #4]
d05a1bb8:	e7cc      	b.n	d05a1b54 <_malloc_r+0x2c>
d05a1bba:	1cc4      	adds	r4, r0, #3
d05a1bbc:	f024 0403 	bic.w	r4, r4, #3
d05a1bc0:	42a0      	cmp	r0, r4
d05a1bc2:	d0e3      	beq.n	d05a1b8c <_malloc_r+0x64>
d05a1bc4:	1a21      	subs	r1, r4, r0
d05a1bc6:	4630      	mov	r0, r6
d05a1bc8:	f7fe fa7e 	bl	d05a00c8 <_sbrk_r>
d05a1bcc:	3001      	adds	r0, #1
d05a1bce:	d1dd      	bne.n	d05a1b8c <_malloc_r+0x64>
d05a1bd0:	e7cf      	b.n	d05a1b72 <_malloc_r+0x4a>
d05a1bd2:	bf00      	nop
d05a1bd4:	d05b5850 	.word	0xd05b5850
d05a1bd8:	d05b5854 	.word	0xd05b5854

d05a1bdc <__ssputs_r>:
d05a1bdc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a1be0:	688e      	ldr	r6, [r1, #8]
d05a1be2:	429e      	cmp	r6, r3
d05a1be4:	4682      	mov	sl, r0
d05a1be6:	460c      	mov	r4, r1
d05a1be8:	4690      	mov	r8, r2
d05a1bea:	461f      	mov	r7, r3
d05a1bec:	d838      	bhi.n	d05a1c60 <__ssputs_r+0x84>
d05a1bee:	898a      	ldrh	r2, [r1, #12]
d05a1bf0:	f412 6f90 	tst.w	r2, #1152	; 0x480
d05a1bf4:	d032      	beq.n	d05a1c5c <__ssputs_r+0x80>
d05a1bf6:	6825      	ldr	r5, [r4, #0]
d05a1bf8:	6909      	ldr	r1, [r1, #16]
d05a1bfa:	eba5 0901 	sub.w	r9, r5, r1
d05a1bfe:	6965      	ldr	r5, [r4, #20]
d05a1c00:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d05a1c04:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d05a1c08:	3301      	adds	r3, #1
d05a1c0a:	444b      	add	r3, r9
d05a1c0c:	106d      	asrs	r5, r5, #1
d05a1c0e:	429d      	cmp	r5, r3
d05a1c10:	bf38      	it	cc
d05a1c12:	461d      	movcc	r5, r3
d05a1c14:	0553      	lsls	r3, r2, #21
d05a1c16:	d531      	bpl.n	d05a1c7c <__ssputs_r+0xa0>
d05a1c18:	4629      	mov	r1, r5
d05a1c1a:	f7ff ff85 	bl	d05a1b28 <_malloc_r>
d05a1c1e:	4606      	mov	r6, r0
d05a1c20:	b950      	cbnz	r0, d05a1c38 <__ssputs_r+0x5c>
d05a1c22:	230c      	movs	r3, #12
d05a1c24:	f8ca 3000 	str.w	r3, [sl]
d05a1c28:	89a3      	ldrh	r3, [r4, #12]
d05a1c2a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05a1c2e:	81a3      	strh	r3, [r4, #12]
d05a1c30:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a1c34:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05a1c38:	6921      	ldr	r1, [r4, #16]
d05a1c3a:	464a      	mov	r2, r9
d05a1c3c:	f000 fb88 	bl	d05a2350 <memcpy>
d05a1c40:	89a3      	ldrh	r3, [r4, #12]
d05a1c42:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d05a1c46:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d05a1c4a:	81a3      	strh	r3, [r4, #12]
d05a1c4c:	6126      	str	r6, [r4, #16]
d05a1c4e:	6165      	str	r5, [r4, #20]
d05a1c50:	444e      	add	r6, r9
d05a1c52:	eba5 0509 	sub.w	r5, r5, r9
d05a1c56:	6026      	str	r6, [r4, #0]
d05a1c58:	60a5      	str	r5, [r4, #8]
d05a1c5a:	463e      	mov	r6, r7
d05a1c5c:	42be      	cmp	r6, r7
d05a1c5e:	d900      	bls.n	d05a1c62 <__ssputs_r+0x86>
d05a1c60:	463e      	mov	r6, r7
d05a1c62:	4632      	mov	r2, r6
d05a1c64:	6820      	ldr	r0, [r4, #0]
d05a1c66:	4641      	mov	r1, r8
d05a1c68:	f000 fb80 	bl	d05a236c <memmove>
d05a1c6c:	68a3      	ldr	r3, [r4, #8]
d05a1c6e:	6822      	ldr	r2, [r4, #0]
d05a1c70:	1b9b      	subs	r3, r3, r6
d05a1c72:	4432      	add	r2, r6
d05a1c74:	60a3      	str	r3, [r4, #8]
d05a1c76:	6022      	str	r2, [r4, #0]
d05a1c78:	2000      	movs	r0, #0
d05a1c7a:	e7db      	b.n	d05a1c34 <__ssputs_r+0x58>
d05a1c7c:	462a      	mov	r2, r5
d05a1c7e:	f000 fb9b 	bl	d05a23b8 <_realloc_r>
d05a1c82:	4606      	mov	r6, r0
d05a1c84:	2800      	cmp	r0, #0
d05a1c86:	d1e1      	bne.n	d05a1c4c <__ssputs_r+0x70>
d05a1c88:	6921      	ldr	r1, [r4, #16]
d05a1c8a:	4650      	mov	r0, sl
d05a1c8c:	f7ff fefc 	bl	d05a1a88 <_free_r>
d05a1c90:	e7c7      	b.n	d05a1c22 <__ssputs_r+0x46>
	...

d05a1c94 <_svfiprintf_r>:
d05a1c94:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05a1c98:	4698      	mov	r8, r3
d05a1c9a:	898b      	ldrh	r3, [r1, #12]
d05a1c9c:	061b      	lsls	r3, r3, #24
d05a1c9e:	b09d      	sub	sp, #116	; 0x74
d05a1ca0:	4607      	mov	r7, r0
d05a1ca2:	460d      	mov	r5, r1
d05a1ca4:	4614      	mov	r4, r2
d05a1ca6:	d50e      	bpl.n	d05a1cc6 <_svfiprintf_r+0x32>
d05a1ca8:	690b      	ldr	r3, [r1, #16]
d05a1caa:	b963      	cbnz	r3, d05a1cc6 <_svfiprintf_r+0x32>
d05a1cac:	2140      	movs	r1, #64	; 0x40
d05a1cae:	f7ff ff3b 	bl	d05a1b28 <_malloc_r>
d05a1cb2:	6028      	str	r0, [r5, #0]
d05a1cb4:	6128      	str	r0, [r5, #16]
d05a1cb6:	b920      	cbnz	r0, d05a1cc2 <_svfiprintf_r+0x2e>
d05a1cb8:	230c      	movs	r3, #12
d05a1cba:	603b      	str	r3, [r7, #0]
d05a1cbc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a1cc0:	e0d1      	b.n	d05a1e66 <_svfiprintf_r+0x1d2>
d05a1cc2:	2340      	movs	r3, #64	; 0x40
d05a1cc4:	616b      	str	r3, [r5, #20]
d05a1cc6:	2300      	movs	r3, #0
d05a1cc8:	9309      	str	r3, [sp, #36]	; 0x24
d05a1cca:	2320      	movs	r3, #32
d05a1ccc:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d05a1cd0:	f8cd 800c 	str.w	r8, [sp, #12]
d05a1cd4:	2330      	movs	r3, #48	; 0x30
d05a1cd6:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d05a1e80 <_svfiprintf_r+0x1ec>
d05a1cda:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d05a1cde:	f04f 0901 	mov.w	r9, #1
d05a1ce2:	4623      	mov	r3, r4
d05a1ce4:	469a      	mov	sl, r3
d05a1ce6:	f813 2b01 	ldrb.w	r2, [r3], #1
d05a1cea:	b10a      	cbz	r2, d05a1cf0 <_svfiprintf_r+0x5c>
d05a1cec:	2a25      	cmp	r2, #37	; 0x25
d05a1cee:	d1f9      	bne.n	d05a1ce4 <_svfiprintf_r+0x50>
d05a1cf0:	ebba 0b04 	subs.w	fp, sl, r4
d05a1cf4:	d00b      	beq.n	d05a1d0e <_svfiprintf_r+0x7a>
d05a1cf6:	465b      	mov	r3, fp
d05a1cf8:	4622      	mov	r2, r4
d05a1cfa:	4629      	mov	r1, r5
d05a1cfc:	4638      	mov	r0, r7
d05a1cfe:	f7ff ff6d 	bl	d05a1bdc <__ssputs_r>
d05a1d02:	3001      	adds	r0, #1
d05a1d04:	f000 80aa 	beq.w	d05a1e5c <_svfiprintf_r+0x1c8>
d05a1d08:	9a09      	ldr	r2, [sp, #36]	; 0x24
d05a1d0a:	445a      	add	r2, fp
d05a1d0c:	9209      	str	r2, [sp, #36]	; 0x24
d05a1d0e:	f89a 3000 	ldrb.w	r3, [sl]
d05a1d12:	2b00      	cmp	r3, #0
d05a1d14:	f000 80a2 	beq.w	d05a1e5c <_svfiprintf_r+0x1c8>
d05a1d18:	2300      	movs	r3, #0
d05a1d1a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d05a1d1e:	e9cd 2305 	strd	r2, r3, [sp, #20]
d05a1d22:	f10a 0a01 	add.w	sl, sl, #1
d05a1d26:	9304      	str	r3, [sp, #16]
d05a1d28:	9307      	str	r3, [sp, #28]
d05a1d2a:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d05a1d2e:	931a      	str	r3, [sp, #104]	; 0x68
d05a1d30:	4654      	mov	r4, sl
d05a1d32:	2205      	movs	r2, #5
d05a1d34:	f814 1b01 	ldrb.w	r1, [r4], #1
d05a1d38:	4851      	ldr	r0, [pc, #324]	; (d05a1e80 <_svfiprintf_r+0x1ec>)
d05a1d3a:	f000 fab9 	bl	d05a22b0 <memchr>
d05a1d3e:	9a04      	ldr	r2, [sp, #16]
d05a1d40:	b9d8      	cbnz	r0, d05a1d7a <_svfiprintf_r+0xe6>
d05a1d42:	06d0      	lsls	r0, r2, #27
d05a1d44:	bf44      	itt	mi
d05a1d46:	2320      	movmi	r3, #32
d05a1d48:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05a1d4c:	0711      	lsls	r1, r2, #28
d05a1d4e:	bf44      	itt	mi
d05a1d50:	232b      	movmi	r3, #43	; 0x2b
d05a1d52:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05a1d56:	f89a 3000 	ldrb.w	r3, [sl]
d05a1d5a:	2b2a      	cmp	r3, #42	; 0x2a
d05a1d5c:	d015      	beq.n	d05a1d8a <_svfiprintf_r+0xf6>
d05a1d5e:	9a07      	ldr	r2, [sp, #28]
d05a1d60:	4654      	mov	r4, sl
d05a1d62:	2000      	movs	r0, #0
d05a1d64:	f04f 0c0a 	mov.w	ip, #10
d05a1d68:	4621      	mov	r1, r4
d05a1d6a:	f811 3b01 	ldrb.w	r3, [r1], #1
d05a1d6e:	3b30      	subs	r3, #48	; 0x30
d05a1d70:	2b09      	cmp	r3, #9
d05a1d72:	d94e      	bls.n	d05a1e12 <_svfiprintf_r+0x17e>
d05a1d74:	b1b0      	cbz	r0, d05a1da4 <_svfiprintf_r+0x110>
d05a1d76:	9207      	str	r2, [sp, #28]
d05a1d78:	e014      	b.n	d05a1da4 <_svfiprintf_r+0x110>
d05a1d7a:	eba0 0308 	sub.w	r3, r0, r8
d05a1d7e:	fa09 f303 	lsl.w	r3, r9, r3
d05a1d82:	4313      	orrs	r3, r2
d05a1d84:	9304      	str	r3, [sp, #16]
d05a1d86:	46a2      	mov	sl, r4
d05a1d88:	e7d2      	b.n	d05a1d30 <_svfiprintf_r+0x9c>
d05a1d8a:	9b03      	ldr	r3, [sp, #12]
d05a1d8c:	1d19      	adds	r1, r3, #4
d05a1d8e:	681b      	ldr	r3, [r3, #0]
d05a1d90:	9103      	str	r1, [sp, #12]
d05a1d92:	2b00      	cmp	r3, #0
d05a1d94:	bfbb      	ittet	lt
d05a1d96:	425b      	neglt	r3, r3
d05a1d98:	f042 0202 	orrlt.w	r2, r2, #2
d05a1d9c:	9307      	strge	r3, [sp, #28]
d05a1d9e:	9307      	strlt	r3, [sp, #28]
d05a1da0:	bfb8      	it	lt
d05a1da2:	9204      	strlt	r2, [sp, #16]
d05a1da4:	7823      	ldrb	r3, [r4, #0]
d05a1da6:	2b2e      	cmp	r3, #46	; 0x2e
d05a1da8:	d10c      	bne.n	d05a1dc4 <_svfiprintf_r+0x130>
d05a1daa:	7863      	ldrb	r3, [r4, #1]
d05a1dac:	2b2a      	cmp	r3, #42	; 0x2a
d05a1dae:	d135      	bne.n	d05a1e1c <_svfiprintf_r+0x188>
d05a1db0:	9b03      	ldr	r3, [sp, #12]
d05a1db2:	1d1a      	adds	r2, r3, #4
d05a1db4:	681b      	ldr	r3, [r3, #0]
d05a1db6:	9203      	str	r2, [sp, #12]
d05a1db8:	2b00      	cmp	r3, #0
d05a1dba:	bfb8      	it	lt
d05a1dbc:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d05a1dc0:	3402      	adds	r4, #2
d05a1dc2:	9305      	str	r3, [sp, #20]
d05a1dc4:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d05a1e90 <_svfiprintf_r+0x1fc>
d05a1dc8:	7821      	ldrb	r1, [r4, #0]
d05a1dca:	2203      	movs	r2, #3
d05a1dcc:	4650      	mov	r0, sl
d05a1dce:	f000 fa6f 	bl	d05a22b0 <memchr>
d05a1dd2:	b140      	cbz	r0, d05a1de6 <_svfiprintf_r+0x152>
d05a1dd4:	2340      	movs	r3, #64	; 0x40
d05a1dd6:	eba0 000a 	sub.w	r0, r0, sl
d05a1dda:	fa03 f000 	lsl.w	r0, r3, r0
d05a1dde:	9b04      	ldr	r3, [sp, #16]
d05a1de0:	4303      	orrs	r3, r0
d05a1de2:	3401      	adds	r4, #1
d05a1de4:	9304      	str	r3, [sp, #16]
d05a1de6:	f814 1b01 	ldrb.w	r1, [r4], #1
d05a1dea:	4826      	ldr	r0, [pc, #152]	; (d05a1e84 <_svfiprintf_r+0x1f0>)
d05a1dec:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d05a1df0:	2206      	movs	r2, #6
d05a1df2:	f000 fa5d 	bl	d05a22b0 <memchr>
d05a1df6:	2800      	cmp	r0, #0
d05a1df8:	d038      	beq.n	d05a1e6c <_svfiprintf_r+0x1d8>
d05a1dfa:	4b23      	ldr	r3, [pc, #140]	; (d05a1e88 <_svfiprintf_r+0x1f4>)
d05a1dfc:	bb1b      	cbnz	r3, d05a1e46 <_svfiprintf_r+0x1b2>
d05a1dfe:	9b03      	ldr	r3, [sp, #12]
d05a1e00:	3307      	adds	r3, #7
d05a1e02:	f023 0307 	bic.w	r3, r3, #7
d05a1e06:	3308      	adds	r3, #8
d05a1e08:	9303      	str	r3, [sp, #12]
d05a1e0a:	9b09      	ldr	r3, [sp, #36]	; 0x24
d05a1e0c:	4433      	add	r3, r6
d05a1e0e:	9309      	str	r3, [sp, #36]	; 0x24
d05a1e10:	e767      	b.n	d05a1ce2 <_svfiprintf_r+0x4e>
d05a1e12:	fb0c 3202 	mla	r2, ip, r2, r3
d05a1e16:	460c      	mov	r4, r1
d05a1e18:	2001      	movs	r0, #1
d05a1e1a:	e7a5      	b.n	d05a1d68 <_svfiprintf_r+0xd4>
d05a1e1c:	2300      	movs	r3, #0
d05a1e1e:	3401      	adds	r4, #1
d05a1e20:	9305      	str	r3, [sp, #20]
d05a1e22:	4619      	mov	r1, r3
d05a1e24:	f04f 0c0a 	mov.w	ip, #10
d05a1e28:	4620      	mov	r0, r4
d05a1e2a:	f810 2b01 	ldrb.w	r2, [r0], #1
d05a1e2e:	3a30      	subs	r2, #48	; 0x30
d05a1e30:	2a09      	cmp	r2, #9
d05a1e32:	d903      	bls.n	d05a1e3c <_svfiprintf_r+0x1a8>
d05a1e34:	2b00      	cmp	r3, #0
d05a1e36:	d0c5      	beq.n	d05a1dc4 <_svfiprintf_r+0x130>
d05a1e38:	9105      	str	r1, [sp, #20]
d05a1e3a:	e7c3      	b.n	d05a1dc4 <_svfiprintf_r+0x130>
d05a1e3c:	fb0c 2101 	mla	r1, ip, r1, r2
d05a1e40:	4604      	mov	r4, r0
d05a1e42:	2301      	movs	r3, #1
d05a1e44:	e7f0      	b.n	d05a1e28 <_svfiprintf_r+0x194>
d05a1e46:	ab03      	add	r3, sp, #12
d05a1e48:	9300      	str	r3, [sp, #0]
d05a1e4a:	462a      	mov	r2, r5
d05a1e4c:	4b0f      	ldr	r3, [pc, #60]	; (d05a1e8c <_svfiprintf_r+0x1f8>)
d05a1e4e:	a904      	add	r1, sp, #16
d05a1e50:	4638      	mov	r0, r7
d05a1e52:	f3af 8000 	nop.w
d05a1e56:	1c42      	adds	r2, r0, #1
d05a1e58:	4606      	mov	r6, r0
d05a1e5a:	d1d6      	bne.n	d05a1e0a <_svfiprintf_r+0x176>
d05a1e5c:	89ab      	ldrh	r3, [r5, #12]
d05a1e5e:	065b      	lsls	r3, r3, #25
d05a1e60:	f53f af2c 	bmi.w	d05a1cbc <_svfiprintf_r+0x28>
d05a1e64:	9809      	ldr	r0, [sp, #36]	; 0x24
d05a1e66:	b01d      	add	sp, #116	; 0x74
d05a1e68:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05a1e6c:	ab03      	add	r3, sp, #12
d05a1e6e:	9300      	str	r3, [sp, #0]
d05a1e70:	462a      	mov	r2, r5
d05a1e72:	4b06      	ldr	r3, [pc, #24]	; (d05a1e8c <_svfiprintf_r+0x1f8>)
d05a1e74:	a904      	add	r1, sp, #16
d05a1e76:	4638      	mov	r0, r7
d05a1e78:	f000 f87a 	bl	d05a1f70 <_printf_i>
d05a1e7c:	e7eb      	b.n	d05a1e56 <_svfiprintf_r+0x1c2>
d05a1e7e:	bf00      	nop
d05a1e80:	d05a2500 	.word	0xd05a2500
d05a1e84:	d05a250a 	.word	0xd05a250a
d05a1e88:	00000000 	.word	0x00000000
d05a1e8c:	d05a1bdd 	.word	0xd05a1bdd
d05a1e90:	d05a2506 	.word	0xd05a2506

d05a1e94 <_printf_common>:
d05a1e94:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05a1e98:	4616      	mov	r6, r2
d05a1e9a:	4699      	mov	r9, r3
d05a1e9c:	688a      	ldr	r2, [r1, #8]
d05a1e9e:	690b      	ldr	r3, [r1, #16]
d05a1ea0:	f8dd 8020 	ldr.w	r8, [sp, #32]
d05a1ea4:	4293      	cmp	r3, r2
d05a1ea6:	bfb8      	it	lt
d05a1ea8:	4613      	movlt	r3, r2
d05a1eaa:	6033      	str	r3, [r6, #0]
d05a1eac:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d05a1eb0:	4607      	mov	r7, r0
d05a1eb2:	460c      	mov	r4, r1
d05a1eb4:	b10a      	cbz	r2, d05a1eba <_printf_common+0x26>
d05a1eb6:	3301      	adds	r3, #1
d05a1eb8:	6033      	str	r3, [r6, #0]
d05a1eba:	6823      	ldr	r3, [r4, #0]
d05a1ebc:	0699      	lsls	r1, r3, #26
d05a1ebe:	bf42      	ittt	mi
d05a1ec0:	6833      	ldrmi	r3, [r6, #0]
d05a1ec2:	3302      	addmi	r3, #2
d05a1ec4:	6033      	strmi	r3, [r6, #0]
d05a1ec6:	6825      	ldr	r5, [r4, #0]
d05a1ec8:	f015 0506 	ands.w	r5, r5, #6
d05a1ecc:	d106      	bne.n	d05a1edc <_printf_common+0x48>
d05a1ece:	f104 0a19 	add.w	sl, r4, #25
d05a1ed2:	68e3      	ldr	r3, [r4, #12]
d05a1ed4:	6832      	ldr	r2, [r6, #0]
d05a1ed6:	1a9b      	subs	r3, r3, r2
d05a1ed8:	42ab      	cmp	r3, r5
d05a1eda:	dc26      	bgt.n	d05a1f2a <_printf_common+0x96>
d05a1edc:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d05a1ee0:	1e13      	subs	r3, r2, #0
d05a1ee2:	6822      	ldr	r2, [r4, #0]
d05a1ee4:	bf18      	it	ne
d05a1ee6:	2301      	movne	r3, #1
d05a1ee8:	0692      	lsls	r2, r2, #26
d05a1eea:	d42b      	bmi.n	d05a1f44 <_printf_common+0xb0>
d05a1eec:	f104 0243 	add.w	r2, r4, #67	; 0x43
d05a1ef0:	4649      	mov	r1, r9
d05a1ef2:	4638      	mov	r0, r7
d05a1ef4:	47c0      	blx	r8
d05a1ef6:	3001      	adds	r0, #1
d05a1ef8:	d01e      	beq.n	d05a1f38 <_printf_common+0xa4>
d05a1efa:	6823      	ldr	r3, [r4, #0]
d05a1efc:	68e5      	ldr	r5, [r4, #12]
d05a1efe:	6832      	ldr	r2, [r6, #0]
d05a1f00:	f003 0306 	and.w	r3, r3, #6
d05a1f04:	2b04      	cmp	r3, #4
d05a1f06:	bf08      	it	eq
d05a1f08:	1aad      	subeq	r5, r5, r2
d05a1f0a:	68a3      	ldr	r3, [r4, #8]
d05a1f0c:	6922      	ldr	r2, [r4, #16]
d05a1f0e:	bf0c      	ite	eq
d05a1f10:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d05a1f14:	2500      	movne	r5, #0
d05a1f16:	4293      	cmp	r3, r2
d05a1f18:	bfc4      	itt	gt
d05a1f1a:	1a9b      	subgt	r3, r3, r2
d05a1f1c:	18ed      	addgt	r5, r5, r3
d05a1f1e:	2600      	movs	r6, #0
d05a1f20:	341a      	adds	r4, #26
d05a1f22:	42b5      	cmp	r5, r6
d05a1f24:	d11a      	bne.n	d05a1f5c <_printf_common+0xc8>
d05a1f26:	2000      	movs	r0, #0
d05a1f28:	e008      	b.n	d05a1f3c <_printf_common+0xa8>
d05a1f2a:	2301      	movs	r3, #1
d05a1f2c:	4652      	mov	r2, sl
d05a1f2e:	4649      	mov	r1, r9
d05a1f30:	4638      	mov	r0, r7
d05a1f32:	47c0      	blx	r8
d05a1f34:	3001      	adds	r0, #1
d05a1f36:	d103      	bne.n	d05a1f40 <_printf_common+0xac>
d05a1f38:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a1f3c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05a1f40:	3501      	adds	r5, #1
d05a1f42:	e7c6      	b.n	d05a1ed2 <_printf_common+0x3e>
d05a1f44:	18e1      	adds	r1, r4, r3
d05a1f46:	1c5a      	adds	r2, r3, #1
d05a1f48:	2030      	movs	r0, #48	; 0x30
d05a1f4a:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d05a1f4e:	4422      	add	r2, r4
d05a1f50:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d05a1f54:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d05a1f58:	3302      	adds	r3, #2
d05a1f5a:	e7c7      	b.n	d05a1eec <_printf_common+0x58>
d05a1f5c:	2301      	movs	r3, #1
d05a1f5e:	4622      	mov	r2, r4
d05a1f60:	4649      	mov	r1, r9
d05a1f62:	4638      	mov	r0, r7
d05a1f64:	47c0      	blx	r8
d05a1f66:	3001      	adds	r0, #1
d05a1f68:	d0e6      	beq.n	d05a1f38 <_printf_common+0xa4>
d05a1f6a:	3601      	adds	r6, #1
d05a1f6c:	e7d9      	b.n	d05a1f22 <_printf_common+0x8e>
	...

d05a1f70 <_printf_i>:
d05a1f70:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d05a1f74:	460c      	mov	r4, r1
d05a1f76:	4691      	mov	r9, r2
d05a1f78:	7e27      	ldrb	r7, [r4, #24]
d05a1f7a:	990c      	ldr	r1, [sp, #48]	; 0x30
d05a1f7c:	2f78      	cmp	r7, #120	; 0x78
d05a1f7e:	4680      	mov	r8, r0
d05a1f80:	469a      	mov	sl, r3
d05a1f82:	f104 0243 	add.w	r2, r4, #67	; 0x43
d05a1f86:	d807      	bhi.n	d05a1f98 <_printf_i+0x28>
d05a1f88:	2f62      	cmp	r7, #98	; 0x62
d05a1f8a:	d80a      	bhi.n	d05a1fa2 <_printf_i+0x32>
d05a1f8c:	2f00      	cmp	r7, #0
d05a1f8e:	f000 80d8 	beq.w	d05a2142 <_printf_i+0x1d2>
d05a1f92:	2f58      	cmp	r7, #88	; 0x58
d05a1f94:	f000 80a3 	beq.w	d05a20de <_printf_i+0x16e>
d05a1f98:	f104 0642 	add.w	r6, r4, #66	; 0x42
d05a1f9c:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d05a1fa0:	e03a      	b.n	d05a2018 <_printf_i+0xa8>
d05a1fa2:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d05a1fa6:	2b15      	cmp	r3, #21
d05a1fa8:	d8f6      	bhi.n	d05a1f98 <_printf_i+0x28>
d05a1faa:	a001      	add	r0, pc, #4	; (adr r0, d05a1fb0 <_printf_i+0x40>)
d05a1fac:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d05a1fb0:	d05a2009 	.word	0xd05a2009
d05a1fb4:	d05a201d 	.word	0xd05a201d
d05a1fb8:	d05a1f99 	.word	0xd05a1f99
d05a1fbc:	d05a1f99 	.word	0xd05a1f99
d05a1fc0:	d05a1f99 	.word	0xd05a1f99
d05a1fc4:	d05a1f99 	.word	0xd05a1f99
d05a1fc8:	d05a201d 	.word	0xd05a201d
d05a1fcc:	d05a1f99 	.word	0xd05a1f99
d05a1fd0:	d05a1f99 	.word	0xd05a1f99
d05a1fd4:	d05a1f99 	.word	0xd05a1f99
d05a1fd8:	d05a1f99 	.word	0xd05a1f99
d05a1fdc:	d05a2129 	.word	0xd05a2129
d05a1fe0:	d05a204d 	.word	0xd05a204d
d05a1fe4:	d05a210b 	.word	0xd05a210b
d05a1fe8:	d05a1f99 	.word	0xd05a1f99
d05a1fec:	d05a1f99 	.word	0xd05a1f99
d05a1ff0:	d05a214b 	.word	0xd05a214b
d05a1ff4:	d05a1f99 	.word	0xd05a1f99
d05a1ff8:	d05a204d 	.word	0xd05a204d
d05a1ffc:	d05a1f99 	.word	0xd05a1f99
d05a2000:	d05a1f99 	.word	0xd05a1f99
d05a2004:	d05a2113 	.word	0xd05a2113
d05a2008:	680b      	ldr	r3, [r1, #0]
d05a200a:	1d1a      	adds	r2, r3, #4
d05a200c:	681b      	ldr	r3, [r3, #0]
d05a200e:	600a      	str	r2, [r1, #0]
d05a2010:	f104 0642 	add.w	r6, r4, #66	; 0x42
d05a2014:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d05a2018:	2301      	movs	r3, #1
d05a201a:	e0a3      	b.n	d05a2164 <_printf_i+0x1f4>
d05a201c:	6825      	ldr	r5, [r4, #0]
d05a201e:	6808      	ldr	r0, [r1, #0]
d05a2020:	062e      	lsls	r6, r5, #24
d05a2022:	f100 0304 	add.w	r3, r0, #4
d05a2026:	d50a      	bpl.n	d05a203e <_printf_i+0xce>
d05a2028:	6805      	ldr	r5, [r0, #0]
d05a202a:	600b      	str	r3, [r1, #0]
d05a202c:	2d00      	cmp	r5, #0
d05a202e:	da03      	bge.n	d05a2038 <_printf_i+0xc8>
d05a2030:	232d      	movs	r3, #45	; 0x2d
d05a2032:	426d      	negs	r5, r5
d05a2034:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d05a2038:	485e      	ldr	r0, [pc, #376]	; (d05a21b4 <_printf_i+0x244>)
d05a203a:	230a      	movs	r3, #10
d05a203c:	e019      	b.n	d05a2072 <_printf_i+0x102>
d05a203e:	f015 0f40 	tst.w	r5, #64	; 0x40
d05a2042:	6805      	ldr	r5, [r0, #0]
d05a2044:	600b      	str	r3, [r1, #0]
d05a2046:	bf18      	it	ne
d05a2048:	b22d      	sxthne	r5, r5
d05a204a:	e7ef      	b.n	d05a202c <_printf_i+0xbc>
d05a204c:	680b      	ldr	r3, [r1, #0]
d05a204e:	6825      	ldr	r5, [r4, #0]
d05a2050:	1d18      	adds	r0, r3, #4
d05a2052:	6008      	str	r0, [r1, #0]
d05a2054:	0628      	lsls	r0, r5, #24
d05a2056:	d501      	bpl.n	d05a205c <_printf_i+0xec>
d05a2058:	681d      	ldr	r5, [r3, #0]
d05a205a:	e002      	b.n	d05a2062 <_printf_i+0xf2>
d05a205c:	0669      	lsls	r1, r5, #25
d05a205e:	d5fb      	bpl.n	d05a2058 <_printf_i+0xe8>
d05a2060:	881d      	ldrh	r5, [r3, #0]
d05a2062:	4854      	ldr	r0, [pc, #336]	; (d05a21b4 <_printf_i+0x244>)
d05a2064:	2f6f      	cmp	r7, #111	; 0x6f
d05a2066:	bf0c      	ite	eq
d05a2068:	2308      	moveq	r3, #8
d05a206a:	230a      	movne	r3, #10
d05a206c:	2100      	movs	r1, #0
d05a206e:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d05a2072:	6866      	ldr	r6, [r4, #4]
d05a2074:	60a6      	str	r6, [r4, #8]
d05a2076:	2e00      	cmp	r6, #0
d05a2078:	bfa2      	ittt	ge
d05a207a:	6821      	ldrge	r1, [r4, #0]
d05a207c:	f021 0104 	bicge.w	r1, r1, #4
d05a2080:	6021      	strge	r1, [r4, #0]
d05a2082:	b90d      	cbnz	r5, d05a2088 <_printf_i+0x118>
d05a2084:	2e00      	cmp	r6, #0
d05a2086:	d04d      	beq.n	d05a2124 <_printf_i+0x1b4>
d05a2088:	4616      	mov	r6, r2
d05a208a:	fbb5 f1f3 	udiv	r1, r5, r3
d05a208e:	fb03 5711 	mls	r7, r3, r1, r5
d05a2092:	5dc7      	ldrb	r7, [r0, r7]
d05a2094:	f806 7d01 	strb.w	r7, [r6, #-1]!
d05a2098:	462f      	mov	r7, r5
d05a209a:	42bb      	cmp	r3, r7
d05a209c:	460d      	mov	r5, r1
d05a209e:	d9f4      	bls.n	d05a208a <_printf_i+0x11a>
d05a20a0:	2b08      	cmp	r3, #8
d05a20a2:	d10b      	bne.n	d05a20bc <_printf_i+0x14c>
d05a20a4:	6823      	ldr	r3, [r4, #0]
d05a20a6:	07df      	lsls	r7, r3, #31
d05a20a8:	d508      	bpl.n	d05a20bc <_printf_i+0x14c>
d05a20aa:	6923      	ldr	r3, [r4, #16]
d05a20ac:	6861      	ldr	r1, [r4, #4]
d05a20ae:	4299      	cmp	r1, r3
d05a20b0:	bfde      	ittt	le
d05a20b2:	2330      	movle	r3, #48	; 0x30
d05a20b4:	f806 3c01 	strble.w	r3, [r6, #-1]
d05a20b8:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d05a20bc:	1b92      	subs	r2, r2, r6
d05a20be:	6122      	str	r2, [r4, #16]
d05a20c0:	f8cd a000 	str.w	sl, [sp]
d05a20c4:	464b      	mov	r3, r9
d05a20c6:	aa03      	add	r2, sp, #12
d05a20c8:	4621      	mov	r1, r4
d05a20ca:	4640      	mov	r0, r8
d05a20cc:	f7ff fee2 	bl	d05a1e94 <_printf_common>
d05a20d0:	3001      	adds	r0, #1
d05a20d2:	d14c      	bne.n	d05a216e <_printf_i+0x1fe>
d05a20d4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05a20d8:	b004      	add	sp, #16
d05a20da:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05a20de:	4835      	ldr	r0, [pc, #212]	; (d05a21b4 <_printf_i+0x244>)
d05a20e0:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d05a20e4:	6823      	ldr	r3, [r4, #0]
d05a20e6:	680e      	ldr	r6, [r1, #0]
d05a20e8:	061f      	lsls	r7, r3, #24
d05a20ea:	f856 5b04 	ldr.w	r5, [r6], #4
d05a20ee:	600e      	str	r6, [r1, #0]
d05a20f0:	d514      	bpl.n	d05a211c <_printf_i+0x1ac>
d05a20f2:	07d9      	lsls	r1, r3, #31
d05a20f4:	bf44      	itt	mi
d05a20f6:	f043 0320 	orrmi.w	r3, r3, #32
d05a20fa:	6023      	strmi	r3, [r4, #0]
d05a20fc:	b91d      	cbnz	r5, d05a2106 <_printf_i+0x196>
d05a20fe:	6823      	ldr	r3, [r4, #0]
d05a2100:	f023 0320 	bic.w	r3, r3, #32
d05a2104:	6023      	str	r3, [r4, #0]
d05a2106:	2310      	movs	r3, #16
d05a2108:	e7b0      	b.n	d05a206c <_printf_i+0xfc>
d05a210a:	6823      	ldr	r3, [r4, #0]
d05a210c:	f043 0320 	orr.w	r3, r3, #32
d05a2110:	6023      	str	r3, [r4, #0]
d05a2112:	2378      	movs	r3, #120	; 0x78
d05a2114:	4828      	ldr	r0, [pc, #160]	; (d05a21b8 <_printf_i+0x248>)
d05a2116:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d05a211a:	e7e3      	b.n	d05a20e4 <_printf_i+0x174>
d05a211c:	065e      	lsls	r6, r3, #25
d05a211e:	bf48      	it	mi
d05a2120:	b2ad      	uxthmi	r5, r5
d05a2122:	e7e6      	b.n	d05a20f2 <_printf_i+0x182>
d05a2124:	4616      	mov	r6, r2
d05a2126:	e7bb      	b.n	d05a20a0 <_printf_i+0x130>
d05a2128:	680b      	ldr	r3, [r1, #0]
d05a212a:	6826      	ldr	r6, [r4, #0]
d05a212c:	6960      	ldr	r0, [r4, #20]
d05a212e:	1d1d      	adds	r5, r3, #4
d05a2130:	600d      	str	r5, [r1, #0]
d05a2132:	0635      	lsls	r5, r6, #24
d05a2134:	681b      	ldr	r3, [r3, #0]
d05a2136:	d501      	bpl.n	d05a213c <_printf_i+0x1cc>
d05a2138:	6018      	str	r0, [r3, #0]
d05a213a:	e002      	b.n	d05a2142 <_printf_i+0x1d2>
d05a213c:	0671      	lsls	r1, r6, #25
d05a213e:	d5fb      	bpl.n	d05a2138 <_printf_i+0x1c8>
d05a2140:	8018      	strh	r0, [r3, #0]
d05a2142:	2300      	movs	r3, #0
d05a2144:	6123      	str	r3, [r4, #16]
d05a2146:	4616      	mov	r6, r2
d05a2148:	e7ba      	b.n	d05a20c0 <_printf_i+0x150>
d05a214a:	680b      	ldr	r3, [r1, #0]
d05a214c:	1d1a      	adds	r2, r3, #4
d05a214e:	600a      	str	r2, [r1, #0]
d05a2150:	681e      	ldr	r6, [r3, #0]
d05a2152:	6862      	ldr	r2, [r4, #4]
d05a2154:	2100      	movs	r1, #0
d05a2156:	4630      	mov	r0, r6
d05a2158:	f000 f8aa 	bl	d05a22b0 <memchr>
d05a215c:	b108      	cbz	r0, d05a2162 <_printf_i+0x1f2>
d05a215e:	1b80      	subs	r0, r0, r6
d05a2160:	6060      	str	r0, [r4, #4]
d05a2162:	6863      	ldr	r3, [r4, #4]
d05a2164:	6123      	str	r3, [r4, #16]
d05a2166:	2300      	movs	r3, #0
d05a2168:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d05a216c:	e7a8      	b.n	d05a20c0 <_printf_i+0x150>
d05a216e:	6923      	ldr	r3, [r4, #16]
d05a2170:	4632      	mov	r2, r6
d05a2172:	4649      	mov	r1, r9
d05a2174:	4640      	mov	r0, r8
d05a2176:	47d0      	blx	sl
d05a2178:	3001      	adds	r0, #1
d05a217a:	d0ab      	beq.n	d05a20d4 <_printf_i+0x164>
d05a217c:	6823      	ldr	r3, [r4, #0]
d05a217e:	079b      	lsls	r3, r3, #30
d05a2180:	d413      	bmi.n	d05a21aa <_printf_i+0x23a>
d05a2182:	68e0      	ldr	r0, [r4, #12]
d05a2184:	9b03      	ldr	r3, [sp, #12]
d05a2186:	4298      	cmp	r0, r3
d05a2188:	bfb8      	it	lt
d05a218a:	4618      	movlt	r0, r3
d05a218c:	e7a4      	b.n	d05a20d8 <_printf_i+0x168>
d05a218e:	2301      	movs	r3, #1
d05a2190:	4632      	mov	r2, r6
d05a2192:	4649      	mov	r1, r9
d05a2194:	4640      	mov	r0, r8
d05a2196:	47d0      	blx	sl
d05a2198:	3001      	adds	r0, #1
d05a219a:	d09b      	beq.n	d05a20d4 <_printf_i+0x164>
d05a219c:	3501      	adds	r5, #1
d05a219e:	68e3      	ldr	r3, [r4, #12]
d05a21a0:	9903      	ldr	r1, [sp, #12]
d05a21a2:	1a5b      	subs	r3, r3, r1
d05a21a4:	42ab      	cmp	r3, r5
d05a21a6:	dcf2      	bgt.n	d05a218e <_printf_i+0x21e>
d05a21a8:	e7eb      	b.n	d05a2182 <_printf_i+0x212>
d05a21aa:	2500      	movs	r5, #0
d05a21ac:	f104 0619 	add.w	r6, r4, #25
d05a21b0:	e7f5      	b.n	d05a219e <_printf_i+0x22e>
d05a21b2:	bf00      	nop
d05a21b4:	d05a2511 	.word	0xd05a2511
d05a21b8:	d05a2522 	.word	0xd05a2522

d05a21bc <__sread>:
d05a21bc:	b510      	push	{r4, lr}
d05a21be:	460c      	mov	r4, r1
d05a21c0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a21c4:	f000 f91e 	bl	d05a2404 <_read_r>
d05a21c8:	2800      	cmp	r0, #0
d05a21ca:	bfab      	itete	ge
d05a21cc:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d05a21ce:	89a3      	ldrhlt	r3, [r4, #12]
d05a21d0:	181b      	addge	r3, r3, r0
d05a21d2:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d05a21d6:	bfac      	ite	ge
d05a21d8:	6563      	strge	r3, [r4, #84]	; 0x54
d05a21da:	81a3      	strhlt	r3, [r4, #12]
d05a21dc:	bd10      	pop	{r4, pc}

d05a21de <__swrite>:
d05a21de:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d05a21e2:	461f      	mov	r7, r3
d05a21e4:	898b      	ldrh	r3, [r1, #12]
d05a21e6:	05db      	lsls	r3, r3, #23
d05a21e8:	4605      	mov	r5, r0
d05a21ea:	460c      	mov	r4, r1
d05a21ec:	4616      	mov	r6, r2
d05a21ee:	d505      	bpl.n	d05a21fc <__swrite+0x1e>
d05a21f0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a21f4:	2302      	movs	r3, #2
d05a21f6:	2200      	movs	r2, #0
d05a21f8:	f000 f846 	bl	d05a2288 <_lseek_r>
d05a21fc:	89a3      	ldrh	r3, [r4, #12]
d05a21fe:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d05a2202:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d05a2206:	81a3      	strh	r3, [r4, #12]
d05a2208:	4632      	mov	r2, r6
d05a220a:	463b      	mov	r3, r7
d05a220c:	4628      	mov	r0, r5
d05a220e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d05a2212:	f7fd bf13 	b.w	d05a003c <_write_r>

d05a2216 <__sseek>:
d05a2216:	b510      	push	{r4, lr}
d05a2218:	460c      	mov	r4, r1
d05a221a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a221e:	f000 f833 	bl	d05a2288 <_lseek_r>
d05a2222:	1c43      	adds	r3, r0, #1
d05a2224:	89a3      	ldrh	r3, [r4, #12]
d05a2226:	bf15      	itete	ne
d05a2228:	6560      	strne	r0, [r4, #84]	; 0x54
d05a222a:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d05a222e:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d05a2232:	81a3      	strheq	r3, [r4, #12]
d05a2234:	bf18      	it	ne
d05a2236:	81a3      	strhne	r3, [r4, #12]
d05a2238:	bd10      	pop	{r4, pc}

d05a223a <__sclose>:
d05a223a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05a223e:	f000 b801 	b.w	d05a2244 <_close_r>
	...

d05a2244 <_close_r>:
d05a2244:	b538      	push	{r3, r4, r5, lr}
d05a2246:	4d06      	ldr	r5, [pc, #24]	; (d05a2260 <_close_r+0x1c>)
d05a2248:	2300      	movs	r3, #0
d05a224a:	4604      	mov	r4, r0
d05a224c:	4608      	mov	r0, r1
d05a224e:	602b      	str	r3, [r5, #0]
d05a2250:	f7fd ff2e 	bl	d05a00b0 <_close>
d05a2254:	1c43      	adds	r3, r0, #1
d05a2256:	d102      	bne.n	d05a225e <_close_r+0x1a>
d05a2258:	682b      	ldr	r3, [r5, #0]
d05a225a:	b103      	cbz	r3, d05a225e <_close_r+0x1a>
d05a225c:	6023      	str	r3, [r4, #0]
d05a225e:	bd38      	pop	{r3, r4, r5, pc}
d05a2260:	d05b5864 	.word	0xd05b5864

d05a2264 <_fstat_r>:
d05a2264:	b538      	push	{r3, r4, r5, lr}
d05a2266:	4d07      	ldr	r5, [pc, #28]	; (d05a2284 <_fstat_r+0x20>)
d05a2268:	2300      	movs	r3, #0
d05a226a:	4604      	mov	r4, r0
d05a226c:	4608      	mov	r0, r1
d05a226e:	4611      	mov	r1, r2
d05a2270:	602b      	str	r3, [r5, #0]
d05a2272:	f7fd ff21 	bl	d05a00b8 <_fstat>
d05a2276:	1c43      	adds	r3, r0, #1
d05a2278:	d102      	bne.n	d05a2280 <_fstat_r+0x1c>
d05a227a:	682b      	ldr	r3, [r5, #0]
d05a227c:	b103      	cbz	r3, d05a2280 <_fstat_r+0x1c>
d05a227e:	6023      	str	r3, [r4, #0]
d05a2280:	bd38      	pop	{r3, r4, r5, pc}
d05a2282:	bf00      	nop
d05a2284:	d05b5864 	.word	0xd05b5864

d05a2288 <_lseek_r>:
d05a2288:	b538      	push	{r3, r4, r5, lr}
d05a228a:	4d07      	ldr	r5, [pc, #28]	; (d05a22a8 <_lseek_r+0x20>)
d05a228c:	4604      	mov	r4, r0
d05a228e:	4608      	mov	r0, r1
d05a2290:	4611      	mov	r1, r2
d05a2292:	2200      	movs	r2, #0
d05a2294:	602a      	str	r2, [r5, #0]
d05a2296:	461a      	mov	r2, r3
d05a2298:	f7fd ff14 	bl	d05a00c4 <_lseek>
d05a229c:	1c43      	adds	r3, r0, #1
d05a229e:	d102      	bne.n	d05a22a6 <_lseek_r+0x1e>
d05a22a0:	682b      	ldr	r3, [r5, #0]
d05a22a2:	b103      	cbz	r3, d05a22a6 <_lseek_r+0x1e>
d05a22a4:	6023      	str	r3, [r4, #0]
d05a22a6:	bd38      	pop	{r3, r4, r5, pc}
d05a22a8:	d05b5864 	.word	0xd05b5864
d05a22ac:	00000000 	.word	0x00000000

d05a22b0 <memchr>:
d05a22b0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d05a22b4:	2a10      	cmp	r2, #16
d05a22b6:	db2b      	blt.n	d05a2310 <memchr+0x60>
d05a22b8:	f010 0f07 	tst.w	r0, #7
d05a22bc:	d008      	beq.n	d05a22d0 <memchr+0x20>
d05a22be:	f810 3b01 	ldrb.w	r3, [r0], #1
d05a22c2:	3a01      	subs	r2, #1
d05a22c4:	428b      	cmp	r3, r1
d05a22c6:	d02d      	beq.n	d05a2324 <memchr+0x74>
d05a22c8:	f010 0f07 	tst.w	r0, #7
d05a22cc:	b342      	cbz	r2, d05a2320 <memchr+0x70>
d05a22ce:	d1f6      	bne.n	d05a22be <memchr+0xe>
d05a22d0:	b4f0      	push	{r4, r5, r6, r7}
d05a22d2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d05a22d6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d05a22da:	f022 0407 	bic.w	r4, r2, #7
d05a22de:	f07f 0700 	mvns.w	r7, #0
d05a22e2:	2300      	movs	r3, #0
d05a22e4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d05a22e8:	3c08      	subs	r4, #8
d05a22ea:	ea85 0501 	eor.w	r5, r5, r1
d05a22ee:	ea86 0601 	eor.w	r6, r6, r1
d05a22f2:	fa85 f547 	uadd8	r5, r5, r7
d05a22f6:	faa3 f587 	sel	r5, r3, r7
d05a22fa:	fa86 f647 	uadd8	r6, r6, r7
d05a22fe:	faa5 f687 	sel	r6, r5, r7
d05a2302:	b98e      	cbnz	r6, d05a2328 <memchr+0x78>
d05a2304:	d1ee      	bne.n	d05a22e4 <memchr+0x34>
d05a2306:	bcf0      	pop	{r4, r5, r6, r7}
d05a2308:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d05a230c:	f002 0207 	and.w	r2, r2, #7
d05a2310:	b132      	cbz	r2, d05a2320 <memchr+0x70>
d05a2312:	f810 3b01 	ldrb.w	r3, [r0], #1
d05a2316:	3a01      	subs	r2, #1
d05a2318:	ea83 0301 	eor.w	r3, r3, r1
d05a231c:	b113      	cbz	r3, d05a2324 <memchr+0x74>
d05a231e:	d1f8      	bne.n	d05a2312 <memchr+0x62>
d05a2320:	2000      	movs	r0, #0
d05a2322:	4770      	bx	lr
d05a2324:	3801      	subs	r0, #1
d05a2326:	4770      	bx	lr
d05a2328:	2d00      	cmp	r5, #0
d05a232a:	bf06      	itte	eq
d05a232c:	4635      	moveq	r5, r6
d05a232e:	3803      	subeq	r0, #3
d05a2330:	3807      	subne	r0, #7
d05a2332:	f015 0f01 	tst.w	r5, #1
d05a2336:	d107      	bne.n	d05a2348 <memchr+0x98>
d05a2338:	3001      	adds	r0, #1
d05a233a:	f415 7f80 	tst.w	r5, #256	; 0x100
d05a233e:	bf02      	ittt	eq
d05a2340:	3001      	addeq	r0, #1
d05a2342:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d05a2346:	3001      	addeq	r0, #1
d05a2348:	bcf0      	pop	{r4, r5, r6, r7}
d05a234a:	3801      	subs	r0, #1
d05a234c:	4770      	bx	lr
d05a234e:	bf00      	nop

d05a2350 <memcpy>:
d05a2350:	440a      	add	r2, r1
d05a2352:	4291      	cmp	r1, r2
d05a2354:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d05a2358:	d100      	bne.n	d05a235c <memcpy+0xc>
d05a235a:	4770      	bx	lr
d05a235c:	b510      	push	{r4, lr}
d05a235e:	f811 4b01 	ldrb.w	r4, [r1], #1
d05a2362:	f803 4f01 	strb.w	r4, [r3, #1]!
d05a2366:	4291      	cmp	r1, r2
d05a2368:	d1f9      	bne.n	d05a235e <memcpy+0xe>
d05a236a:	bd10      	pop	{r4, pc}

d05a236c <memmove>:
d05a236c:	4288      	cmp	r0, r1
d05a236e:	b510      	push	{r4, lr}
d05a2370:	eb01 0402 	add.w	r4, r1, r2
d05a2374:	d902      	bls.n	d05a237c <memmove+0x10>
d05a2376:	4284      	cmp	r4, r0
d05a2378:	4623      	mov	r3, r4
d05a237a:	d807      	bhi.n	d05a238c <memmove+0x20>
d05a237c:	1e43      	subs	r3, r0, #1
d05a237e:	42a1      	cmp	r1, r4
d05a2380:	d008      	beq.n	d05a2394 <memmove+0x28>
d05a2382:	f811 2b01 	ldrb.w	r2, [r1], #1
d05a2386:	f803 2f01 	strb.w	r2, [r3, #1]!
d05a238a:	e7f8      	b.n	d05a237e <memmove+0x12>
d05a238c:	4402      	add	r2, r0
d05a238e:	4601      	mov	r1, r0
d05a2390:	428a      	cmp	r2, r1
d05a2392:	d100      	bne.n	d05a2396 <memmove+0x2a>
d05a2394:	bd10      	pop	{r4, pc}
d05a2396:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d05a239a:	f802 4d01 	strb.w	r4, [r2, #-1]!
d05a239e:	e7f7      	b.n	d05a2390 <memmove+0x24>

d05a23a0 <__malloc_lock>:
d05a23a0:	4801      	ldr	r0, [pc, #4]	; (d05a23a8 <__malloc_lock+0x8>)
d05a23a2:	f7ff bb43 	b.w	d05a1a2c <__retarget_lock_acquire_recursive>
d05a23a6:	bf00      	nop
d05a23a8:	d05b585c 	.word	0xd05b585c

d05a23ac <__malloc_unlock>:
d05a23ac:	4801      	ldr	r0, [pc, #4]	; (d05a23b4 <__malloc_unlock+0x8>)
d05a23ae:	f7ff bb3e 	b.w	d05a1a2e <__retarget_lock_release_recursive>
d05a23b2:	bf00      	nop
d05a23b4:	d05b585c 	.word	0xd05b585c

d05a23b8 <_realloc_r>:
d05a23b8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a23ba:	4607      	mov	r7, r0
d05a23bc:	4614      	mov	r4, r2
d05a23be:	460e      	mov	r6, r1
d05a23c0:	b921      	cbnz	r1, d05a23cc <_realloc_r+0x14>
d05a23c2:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d05a23c6:	4611      	mov	r1, r2
d05a23c8:	f7ff bbae 	b.w	d05a1b28 <_malloc_r>
d05a23cc:	b922      	cbnz	r2, d05a23d8 <_realloc_r+0x20>
d05a23ce:	f7ff fb5b 	bl	d05a1a88 <_free_r>
d05a23d2:	4625      	mov	r5, r4
d05a23d4:	4628      	mov	r0, r5
d05a23d6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05a23d8:	f000 f826 	bl	d05a2428 <_malloc_usable_size_r>
d05a23dc:	42a0      	cmp	r0, r4
d05a23de:	d20f      	bcs.n	d05a2400 <_realloc_r+0x48>
d05a23e0:	4621      	mov	r1, r4
d05a23e2:	4638      	mov	r0, r7
d05a23e4:	f7ff fba0 	bl	d05a1b28 <_malloc_r>
d05a23e8:	4605      	mov	r5, r0
d05a23ea:	2800      	cmp	r0, #0
d05a23ec:	d0f2      	beq.n	d05a23d4 <_realloc_r+0x1c>
d05a23ee:	4631      	mov	r1, r6
d05a23f0:	4622      	mov	r2, r4
d05a23f2:	f7ff ffad 	bl	d05a2350 <memcpy>
d05a23f6:	4631      	mov	r1, r6
d05a23f8:	4638      	mov	r0, r7
d05a23fa:	f7ff fb45 	bl	d05a1a88 <_free_r>
d05a23fe:	e7e9      	b.n	d05a23d4 <_realloc_r+0x1c>
d05a2400:	4635      	mov	r5, r6
d05a2402:	e7e7      	b.n	d05a23d4 <_realloc_r+0x1c>

d05a2404 <_read_r>:
d05a2404:	b538      	push	{r3, r4, r5, lr}
d05a2406:	4d07      	ldr	r5, [pc, #28]	; (d05a2424 <_read_r+0x20>)
d05a2408:	4604      	mov	r4, r0
d05a240a:	4608      	mov	r0, r1
d05a240c:	4611      	mov	r1, r2
d05a240e:	2200      	movs	r2, #0
d05a2410:	602a      	str	r2, [r5, #0]
d05a2412:	461a      	mov	r2, r3
d05a2414:	f7fd fe42 	bl	d05a009c <_read>
d05a2418:	1c43      	adds	r3, r0, #1
d05a241a:	d102      	bne.n	d05a2422 <_read_r+0x1e>
d05a241c:	682b      	ldr	r3, [r5, #0]
d05a241e:	b103      	cbz	r3, d05a2422 <_read_r+0x1e>
d05a2420:	6023      	str	r3, [r4, #0]
d05a2422:	bd38      	pop	{r3, r4, r5, pc}
d05a2424:	d05b5864 	.word	0xd05b5864

d05a2428 <_malloc_usable_size_r>:
d05a2428:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05a242c:	1f18      	subs	r0, r3, #4
d05a242e:	2b00      	cmp	r3, #0
d05a2430:	bfbc      	itt	lt
d05a2432:	580b      	ldrlt	r3, [r1, r0]
d05a2434:	18c0      	addlt	r0, r0, r3
d05a2436:	4770      	bx	lr
d05a2438:	73756150 	.word	0x73756150
d05a243c:	00006465 	.word	0x00006465
d05a2440:	6e6e7552 	.word	0x6e6e7552
d05a2444:	00676e69 	.word	0x00676e69
d05a2448:	7c207325 	.word	0x7c207325
d05a244c:	61726620 	.word	0x61726620
d05a2450:	2073656d 	.word	0x2073656d
d05a2454:	20756c25 	.word	0x20756c25
d05a2458:	6f63207c 	.word	0x6f63207c
d05a245c:	72756f6c 	.word	0x72756f6c
d05a2460:	646e6920 	.word	0x646e6920
d05a2464:	25207865 	.word	0x25207865
d05a2468:	00000075 	.word	0x00000075
d05a246c:	646e6152 	.word	0x646e6152
d05a2470:	53206d6f 	.word	0x53206d6f
d05a2474:	65706168 	.word	0x65706168
d05a2478:	00000073 	.word	0x00000073
d05a247c:	73756150 	.word	0x73756150
d05a2480:	00000065 	.word	0x00000065
d05a2484:	73727542 	.word	0x73727542
d05a2488:	00000074 	.word	0x00000074
d05a248c:	61656c43 	.word	0x61656c43
d05a2490:	00000072 	.word	0x00000072
d05a2494:	736f6c43 	.word	0x736f6c43
d05a2498:	00000065 	.word	0x00000065

d05a249c <_global_impure_ptr>:
d05a249c:	d05a2548                                H%Z.

d05a24a0 <__sf_fake_stderr>:
	...

d05a24c0 <__sf_fake_stdin>:
	...

d05a24e0 <__sf_fake_stdout>:
	...
d05a2500:	2b302d23 6c680020 6665004c 47464567     #-0+ .hlL.efgEFG
d05a2510:	32313000 36353433 41393837 45444342     .0123456789ABCDE
d05a2520:	31300046 35343332 39383736 64636261     F.0123456789abcd
d05a2530:	                                         ef.

Disassembly of section .init:

d05a2534 <_init>:
d05a2534:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a2536:	bf00      	nop

Disassembly of section .fini:

d05a2538 <_fini>:
d05a2538:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05a253a:	bf00      	nop
