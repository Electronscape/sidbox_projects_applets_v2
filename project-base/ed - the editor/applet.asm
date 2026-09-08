
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
d05e001e:	f000 fff9 	bl	d05e1014 <setbuf>
d05e0022:	6833      	ldr	r3, [r6, #0]
d05e0024:	2100      	movs	r1, #0
d05e0026:	68d8      	ldr	r0, [r3, #12]
d05e0028:	f000 fff4 	bl	d05e1014 <setbuf>
d05e002c:	4629      	mov	r1, r5
d05e002e:	4620      	mov	r0, r4
d05e0030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d05e0034:	f000 be32 	b.w	d05e0c9c <main>
d05e0038:	d05e2474 	.word	0xd05e2474

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
d05e0084:	f000 ffaa 	bl	d05e0fdc <__errno>
d05e0088:	2209      	movs	r2, #9
d05e008a:	4603      	mov	r3, r0
d05e008c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e0090:	601a      	str	r2, [r3, #0]
d05e0092:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e0094:	d05e24dc 	.word	0xd05e24dc
d05e0098:	2001f000 	.word	0x2001f000

d05e009c <_read>:
d05e009c:	b508      	push	{r3, lr}
d05e009e:	f000 ff9d 	bl	d05e0fdc <__errno>
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
d05e00ea:	f000 ff77 	bl	d05e0fdc <__errno>
d05e00ee:	220c      	movs	r2, #12
d05e00f0:	4603      	mov	r3, r0
d05e00f2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e00f6:	601a      	str	r2, [r3, #0]
d05e00f8:	bd10      	pop	{r4, pc}
d05e00fa:	bf00      	nop
d05e00fc:	d05e24d8 	.word	0xd05e24d8
d05e0100:	d05e4d80 	.word	0xd05e4d80
d05e0104:	d0600000 	.word	0xd0600000

d05e0108 <show_drag_ghost>:
d05e0108:	f5b0 7fb0 	cmp.w	r0, #352	; 0x160
d05e010c:	460a      	mov	r2, r1
d05e010e:	4b28      	ldr	r3, [pc, #160]	; (d05e01b0 <show_drag_ghost+0xa8>)
d05e0110:	bfa8      	it	ge
d05e0112:	f44f 70b0 	movge.w	r0, #352	; 0x160
d05e0116:	29e4      	cmp	r1, #228	; 0xe4
d05e0118:	bfa8      	it	ge
d05e011a:	22e4      	movge	r2, #228	; 0xe4
d05e011c:	2804      	cmp	r0, #4
d05e011e:	4601      	mov	r1, r0
d05e0120:	bfb8      	it	lt
d05e0122:	2104      	movlt	r1, #4
d05e0124:	2a08      	cmp	r2, #8
d05e0126:	b5f0      	push	{r4, r5, r6, r7, lr}
d05e0128:	4d22      	ldr	r5, [pc, #136]	; (d05e01b4 <show_drag_ghost+0xac>)
d05e012a:	bfb8      	it	lt
d05e012c:	2208      	movlt	r2, #8
d05e012e:	4c22      	ldr	r4, [pc, #136]	; (d05e01b8 <show_drag_ghost+0xb0>)
d05e0130:	b085      	sub	sp, #20
d05e0132:	6828      	ldr	r0, [r5, #0]
d05e0134:	8021      	strh	r1, [r4, #0]
d05e0136:	801a      	strh	r2, [r3, #0]
d05e0138:	4c20      	ldr	r4, [pc, #128]	; (d05e01bc <show_drag_ghost+0xb4>)
d05e013a:	bb50      	cbnz	r0, d05e0192 <show_drag_ghost+0x8a>
d05e013c:	7a20      	ldrb	r0, [r4, #8]
d05e013e:	f04f 0c21 	mov.w	ip, #33	; 0x21
d05e0142:	7a66      	ldrb	r6, [r4, #9]
d05e0144:	2716      	movs	r7, #22
d05e0146:	f8df e07c 	ldr.w	lr, [pc, #124]	; d05e01c4 <show_drag_ghost+0xbc>
d05e014a:	2344      	movs	r3, #68	; 0x44
d05e014c:	ea40 2006 	orr.w	r0, r0, r6, lsl #8
d05e0150:	7aa6      	ldrb	r6, [r4, #10]
d05e0152:	ea40 4006 	orr.w	r0, r0, r6, lsl #16
d05e0156:	7ae6      	ldrb	r6, [r4, #11]
d05e0158:	ea40 6006 	orr.w	r0, r0, r6, lsl #24
d05e015c:	68c6      	ldr	r6, [r0, #12]
d05e015e:	4818      	ldr	r0, [pc, #96]	; (d05e01c0 <show_drag_ghost+0xb8>)
d05e0160:	f8cd c008 	str.w	ip, [sp, #8]
d05e0164:	f8cd e004 	str.w	lr, [sp, #4]
d05e0168:	9700      	str	r7, [sp, #0]
d05e016a:	7800      	ldrb	r0, [r0, #0]
d05e016c:	69b6      	ldr	r6, [r6, #24]
d05e016e:	47b0      	blx	r6
d05e0170:	6028      	str	r0, [r5, #0]
d05e0172:	7a23      	ldrb	r3, [r4, #8]
d05e0174:	7a62      	ldrb	r2, [r4, #9]
d05e0176:	7aa1      	ldrb	r1, [r4, #10]
d05e0178:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05e017c:	7ae2      	ldrb	r2, [r4, #11]
d05e017e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0182:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e0186:	68db      	ldr	r3, [r3, #12]
d05e0188:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05e018a:	b005      	add	sp, #20
d05e018c:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d05e0190:	4718      	bx	r3
d05e0192:	7a23      	ldrb	r3, [r4, #8]
d05e0194:	7a66      	ldrb	r6, [r4, #9]
d05e0196:	7aa7      	ldrb	r7, [r4, #10]
d05e0198:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d05e019c:	7ae6      	ldrb	r6, [r4, #11]
d05e019e:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d05e01a2:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d05e01a6:	68db      	ldr	r3, [r3, #12]
d05e01a8:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
d05e01aa:	4798      	blx	r3
d05e01ac:	6828      	ldr	r0, [r5, #0]
d05e01ae:	e7e0      	b.n	d05e0172 <show_drag_ghost+0x6a>
d05e01b0:	d05e246e 	.word	0xd05e246e
d05e01b4:	d05e2cf8 	.word	0xd05e2cf8
d05e01b8:	d05e246c 	.word	0xd05e246c
d05e01bc:	2001f000 	.word	0x2001f000
d05e01c0:	d05e2cfc 	.word	0xd05e2cfc
d05e01c4:	d05e1f8c 	.word	0xd05e1f8c

d05e01c8 <set_status>:
d05e01c8:	b5f0      	push	{r4, r5, r6, r7, lr}
d05e01ca:	4d1f      	ldr	r5, [pc, #124]	; (d05e0248 <set_status+0x80>)
d05e01cc:	b085      	sub	sp, #20
d05e01ce:	4606      	mov	r6, r0
d05e01d0:	4c1e      	ldr	r4, [pc, #120]	; (d05e024c <set_status+0x84>)
d05e01d2:	682b      	ldr	r3, [r5, #0]
d05e01d4:	b16b      	cbz	r3, d05e01f2 <set_status+0x2a>
d05e01d6:	4618      	mov	r0, r3
d05e01d8:	7a23      	ldrb	r3, [r4, #8]
d05e01da:	7a62      	ldrb	r2, [r4, #9]
d05e01dc:	7aa1      	ldrb	r1, [r4, #10]
d05e01de:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05e01e2:	7ae2      	ldrb	r2, [r4, #11]
d05e01e4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e01e8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e01ec:	68db      	ldr	r3, [r3, #12]
d05e01ee:	6d5b      	ldr	r3, [r3, #84]	; 0x54
d05e01f0:	4798      	blx	r3
d05e01f2:	7a22      	ldrb	r2, [r4, #8]
d05e01f4:	f04f 0c10 	mov.w	ip, #16
d05e01f8:	7a60      	ldrb	r0, [r4, #9]
d05e01fa:	2121      	movs	r1, #33	; 0x21
d05e01fc:	7aa3      	ldrb	r3, [r4, #10]
d05e01fe:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
d05e0202:	7ae0      	ldrb	r0, [r4, #11]
d05e0204:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
d05e0208:	4b11      	ldr	r3, [pc, #68]	; (d05e0250 <set_status+0x88>)
d05e020a:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d05e020e:	7818      	ldrb	r0, [r3, #0]
d05e0210:	f44f 73c6 	mov.w	r3, #396	; 0x18c
d05e0214:	68d7      	ldr	r7, [r2, #12]
d05e0216:	22da      	movs	r2, #218	; 0xda
d05e0218:	9102      	str	r1, [sp, #8]
d05e021a:	210c      	movs	r1, #12
d05e021c:	9601      	str	r6, [sp, #4]
d05e021e:	f8cd c000 	str.w	ip, [sp]
d05e0222:	69be      	ldr	r6, [r7, #24]
d05e0224:	47b0      	blx	r6
d05e0226:	7a23      	ldrb	r3, [r4, #8]
d05e0228:	7a62      	ldrb	r2, [r4, #9]
d05e022a:	7aa1      	ldrb	r1, [r4, #10]
d05e022c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05e0230:	7ae2      	ldrb	r2, [r4, #11]
d05e0232:	6028      	str	r0, [r5, #0]
d05e0234:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0238:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e023c:	68db      	ldr	r3, [r3, #12]
d05e023e:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05e0240:	b005      	add	sp, #20
d05e0242:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d05e0246:	4718      	bx	r3
d05e0248:	d05e2d60 	.word	0xd05e2d60
d05e024c:	2001f000 	.word	0x2001f000
d05e0250:	d05e2cfc 	.word	0xd05e2cfc

d05e0254 <set_document>:
d05e0254:	b5f0      	push	{r4, r5, r6, r7, lr}
d05e0256:	4d30      	ldr	r5, [pc, #192]	; (d05e0318 <set_document+0xc4>)
d05e0258:	b085      	sub	sp, #20
d05e025a:	4607      	mov	r7, r0
d05e025c:	4c2f      	ldr	r4, [pc, #188]	; (d05e031c <set_document+0xc8>)
d05e025e:	682b      	ldr	r3, [r5, #0]
d05e0260:	b16b      	cbz	r3, d05e027e <set_document+0x2a>
d05e0262:	4618      	mov	r0, r3
d05e0264:	7a23      	ldrb	r3, [r4, #8]
d05e0266:	7a62      	ldrb	r2, [r4, #9]
d05e0268:	7aa1      	ldrb	r1, [r4, #10]
d05e026a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05e026e:	7ae2      	ldrb	r2, [r4, #11]
d05e0270:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0274:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e0278:	68db      	ldr	r3, [r3, #12]
d05e027a:	6d5b      	ldr	r3, [r3, #84]	; 0x54
d05e027c:	4798      	blx	r3
d05e027e:	7a22      	ldrb	r2, [r4, #8]
d05e0280:	f04f 0ea8 	mov.w	lr, #168	; 0xa8
d05e0284:	7a60      	ldrb	r0, [r4, #9]
d05e0286:	2600      	movs	r6, #0
d05e0288:	7aa3      	ldrb	r3, [r4, #10]
d05e028a:	2141      	movs	r1, #65	; 0x41
d05e028c:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
d05e0290:	7ae0      	ldrb	r0, [r4, #11]
d05e0292:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
d05e0296:	4b22      	ldr	r3, [pc, #136]	; (d05e0320 <set_document+0xcc>)
d05e0298:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d05e029c:	7818      	ldrb	r0, [r3, #0]
d05e029e:	f44f 73c6 	mov.w	r3, #396	; 0x18c
d05e02a2:	f8d2 c00c 	ldr.w	ip, [r2, #12]
d05e02a6:	222c      	movs	r2, #44	; 0x2c
d05e02a8:	f8cd e000 	str.w	lr, [sp]
d05e02ac:	9103      	str	r1, [sp, #12]
d05e02ae:	210c      	movs	r1, #12
d05e02b0:	9602      	str	r6, [sp, #8]
d05e02b2:	9701      	str	r7, [sp, #4]
d05e02b4:	f8dc 7034 	ldr.w	r7, [ip, #52]	; 0x34
d05e02b8:	47b8      	blx	r7
d05e02ba:	7a23      	ldrb	r3, [r4, #8]
d05e02bc:	4631      	mov	r1, r6
d05e02be:	7a66      	ldrb	r6, [r4, #9]
d05e02c0:	7aa2      	ldrb	r2, [r4, #10]
d05e02c2:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d05e02c6:	7ae6      	ldrb	r6, [r4, #11]
d05e02c8:	6028      	str	r0, [r5, #0]
d05e02ca:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d05e02ce:	4a15      	ldr	r2, [pc, #84]	; (d05e0324 <set_document+0xd0>)
d05e02d0:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d05e02d4:	68db      	ldr	r3, [r3, #12]
d05e02d6:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05e02d8:	4798      	blx	r3
d05e02da:	7a23      	ldrb	r3, [r4, #8]
d05e02dc:	7a62      	ldrb	r2, [r4, #9]
d05e02de:	7aa1      	ldrb	r1, [r4, #10]
d05e02e0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05e02e4:	7ae2      	ldrb	r2, [r4, #11]
d05e02e6:	6828      	ldr	r0, [r5, #0]
d05e02e8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e02ec:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e02f0:	68db      	ldr	r3, [r3, #12]
d05e02f2:	6ddb      	ldr	r3, [r3, #92]	; 0x5c
d05e02f4:	4798      	blx	r3
d05e02f6:	7a23      	ldrb	r3, [r4, #8]
d05e02f8:	7a62      	ldrb	r2, [r4, #9]
d05e02fa:	7aa1      	ldrb	r1, [r4, #10]
d05e02fc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05e0300:	7ae2      	ldrb	r2, [r4, #11]
d05e0302:	6828      	ldr	r0, [r5, #0]
d05e0304:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0308:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e030c:	68db      	ldr	r3, [r3, #12]
d05e030e:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05e0310:	b005      	add	sp, #20
d05e0312:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d05e0316:	4718      	bx	r3
d05e0318:	d05e2d64 	.word	0xd05e2d64
d05e031c:	2001f000 	.word	0x2001f000
d05e0320:	d05e2cfc 	.word	0xd05e2cfc
d05e0324:	d05e0329 	.word	0xd05e0329

d05e0328 <on_text_changed>:
d05e0328:	4b04      	ldr	r3, [pc, #16]	; (d05e033c <on_text_changed+0x14>)
d05e032a:	781a      	ldrb	r2, [r3, #0]
d05e032c:	b102      	cbz	r2, d05e0330 <on_text_changed+0x8>
d05e032e:	4770      	bx	lr
d05e0330:	2201      	movs	r2, #1
d05e0332:	4803      	ldr	r0, [pc, #12]	; (d05e0340 <on_text_changed+0x18>)
d05e0334:	701a      	strb	r2, [r3, #0]
d05e0336:	f7ff bf47 	b.w	d05e01c8 <set_status>
d05e033a:	bf00      	nop
d05e033c:	d05e2cf4 	.word	0xd05e2cf4
d05e0340:	d05e1f94 	.word	0xd05e1f94

d05e0344 <on_load_clicked>:
d05e0344:	b538      	push	{r3, r4, r5, lr}
d05e0346:	4d11      	ldr	r5, [pc, #68]	; (d05e038c <on_load_clicked+0x48>)
d05e0348:	782b      	ldrb	r3, [r5, #0]
d05e034a:	2bff      	cmp	r3, #255	; 0xff
d05e034c:	d119      	bne.n	d05e0382 <on_load_clicked+0x3e>
d05e034e:	4b10      	ldr	r3, [pc, #64]	; (d05e0390 <on_load_clicked+0x4c>)
d05e0350:	4810      	ldr	r0, [pc, #64]	; (d05e0394 <on_load_clicked+0x50>)
d05e0352:	7a1c      	ldrb	r4, [r3, #8]
d05e0354:	7a59      	ldrb	r1, [r3, #9]
d05e0356:	7a9a      	ldrb	r2, [r3, #10]
d05e0358:	ea44 2401 	orr.w	r4, r4, r1, lsl #8
d05e035c:	7ad9      	ldrb	r1, [r3, #11]
d05e035e:	7800      	ldrb	r0, [r0, #0]
d05e0360:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
d05e0364:	4b0c      	ldr	r3, [pc, #48]	; (d05e0398 <on_load_clicked+0x54>)
d05e0366:	4a0d      	ldr	r2, [pc, #52]	; (d05e039c <on_load_clicked+0x58>)
d05e0368:	ea44 6401 	orr.w	r4, r4, r1, lsl #24
d05e036c:	490c      	ldr	r1, [pc, #48]	; (d05e03a0 <on_load_clicked+0x5c>)
d05e036e:	6924      	ldr	r4, [r4, #16]
d05e0370:	69e4      	ldr	r4, [r4, #28]
d05e0372:	47a0      	blx	r4
d05e0374:	4603      	mov	r3, r0
d05e0376:	480b      	ldr	r0, [pc, #44]	; (d05e03a4 <on_load_clicked+0x60>)
d05e0378:	702b      	strb	r3, [r5, #0]
d05e037a:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d05e037e:	f7ff bf23 	b.w	d05e01c8 <set_status>
d05e0382:	4809      	ldr	r0, [pc, #36]	; (d05e03a8 <on_load_clicked+0x64>)
d05e0384:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d05e0388:	f7ff bf1e 	b.w	d05e01c8 <set_status>
d05e038c:	d05e2470 	.word	0xd05e2470
d05e0390:	2001f000 	.word	0x2001f000
d05e0394:	d05e2cfc 	.word	0xd05e2cfc
d05e0398:	d05e1fbc 	.word	0xd05e1fbc
d05e039c:	d05e236c 	.word	0xd05e236c
d05e03a0:	d05e1fd0 	.word	0xd05e1fd0
d05e03a4:	d05e1fe8 	.word	0xd05e1fe8
d05e03a8:	d05e1fa0 	.word	0xd05e1fa0

d05e03ac <on_save_clicked>:
d05e03ac:	b538      	push	{r3, r4, r5, lr}
d05e03ae:	4d11      	ldr	r5, [pc, #68]	; (d05e03f4 <on_save_clicked+0x48>)
d05e03b0:	782b      	ldrb	r3, [r5, #0]
d05e03b2:	2bff      	cmp	r3, #255	; 0xff
d05e03b4:	d119      	bne.n	d05e03ea <on_save_clicked+0x3e>
d05e03b6:	4b10      	ldr	r3, [pc, #64]	; (d05e03f8 <on_save_clicked+0x4c>)
d05e03b8:	4810      	ldr	r0, [pc, #64]	; (d05e03fc <on_save_clicked+0x50>)
d05e03ba:	7a1c      	ldrb	r4, [r3, #8]
d05e03bc:	7a59      	ldrb	r1, [r3, #9]
d05e03be:	7a9a      	ldrb	r2, [r3, #10]
d05e03c0:	ea44 2401 	orr.w	r4, r4, r1, lsl #8
d05e03c4:	7ad9      	ldrb	r1, [r3, #11]
d05e03c6:	7800      	ldrb	r0, [r0, #0]
d05e03c8:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
d05e03cc:	4b0c      	ldr	r3, [pc, #48]	; (d05e0400 <on_save_clicked+0x54>)
d05e03ce:	4a0d      	ldr	r2, [pc, #52]	; (d05e0404 <on_save_clicked+0x58>)
d05e03d0:	ea44 6401 	orr.w	r4, r4, r1, lsl #24
d05e03d4:	490c      	ldr	r1, [pc, #48]	; (d05e0408 <on_save_clicked+0x5c>)
d05e03d6:	6924      	ldr	r4, [r4, #16]
d05e03d8:	69e4      	ldr	r4, [r4, #28]
d05e03da:	47a0      	blx	r4
d05e03dc:	4603      	mov	r3, r0
d05e03de:	480b      	ldr	r0, [pc, #44]	; (d05e040c <on_save_clicked+0x60>)
d05e03e0:	702b      	strb	r3, [r5, #0]
d05e03e2:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d05e03e6:	f7ff beef 	b.w	d05e01c8 <set_status>
d05e03ea:	4809      	ldr	r0, [pc, #36]	; (d05e0410 <on_save_clicked+0x64>)
d05e03ec:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d05e03f0:	f7ff beea 	b.w	d05e01c8 <set_status>
d05e03f4:	d05e2471 	.word	0xd05e2471
d05e03f8:	2001f000 	.word	0x2001f000
d05e03fc:	d05e2cfc 	.word	0xd05e2cfc
d05e0400:	d05e1fbc 	.word	0xd05e1fbc
d05e0404:	d05e236c 	.word	0xd05e236c
d05e0408:	d05e2018 	.word	0xd05e2018
d05e040c:	d05e2030 	.word	0xd05e2030
d05e0410:	d05e1ffc 	.word	0xd05e1ffc

d05e0414 <finish_icon_drag.part.0.constprop.0>:
d05e0414:	b570      	push	{r4, r5, r6, lr}
d05e0416:	4b0c      	ldr	r3, [pc, #48]	; (d05e0448 <finish_icon_drag.part.0.constprop.0+0x34>)
d05e0418:	2500      	movs	r5, #0
d05e041a:	4c0c      	ldr	r4, [pc, #48]	; (d05e044c <finish_icon_drag.part.0.constprop.0+0x38>)
d05e041c:	480c      	ldr	r0, [pc, #48]	; (d05e0450 <finish_icon_drag.part.0.constprop.0+0x3c>)
d05e041e:	701d      	strb	r5, [r3, #0]
d05e0420:	f7ff fed2 	bl	d05e01c8 <set_status>
d05e0424:	6820      	ldr	r0, [r4, #0]
d05e0426:	b170      	cbz	r0, d05e0446 <finish_icon_drag.part.0.constprop.0+0x32>
d05e0428:	4a0a      	ldr	r2, [pc, #40]	; (d05e0454 <finish_icon_drag.part.0.constprop.0+0x40>)
d05e042a:	7a13      	ldrb	r3, [r2, #8]
d05e042c:	7a56      	ldrb	r6, [r2, #9]
d05e042e:	7a91      	ldrb	r1, [r2, #10]
d05e0430:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d05e0434:	7ad2      	ldrb	r2, [r2, #11]
d05e0436:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e043a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e043e:	68db      	ldr	r3, [r3, #12]
d05e0440:	6d5b      	ldr	r3, [r3, #84]	; 0x54
d05e0442:	4798      	blx	r3
d05e0444:	6025      	str	r5, [r4, #0]
d05e0446:	bd70      	pop	{r4, r5, r6, pc}
d05e0448:	d05e2cf5 	.word	0xd05e2cf5
d05e044c:	d05e2cf8 	.word	0xd05e2cf8
d05e0450:	d05e2044 	.word	0xd05e2044
d05e0454:	2001f000 	.word	0x2001f000

d05e0458 <on_close_clicked>:
d05e0458:	b538      	push	{r3, r4, r5, lr}
d05e045a:	4b16      	ldr	r3, [pc, #88]	; (d05e04b4 <on_close_clicked+0x5c>)
d05e045c:	781a      	ldrb	r2, [r3, #0]
d05e045e:	b342      	cbz	r2, d05e04b2 <on_close_clicked+0x5a>
d05e0460:	4c15      	ldr	r4, [pc, #84]	; (d05e04b8 <on_close_clicked+0x60>)
d05e0462:	2200      	movs	r2, #0
d05e0464:	7820      	ldrb	r0, [r4, #0]
d05e0466:	701a      	strb	r2, [r3, #0]
d05e0468:	28ff      	cmp	r0, #255	; 0xff
d05e046a:	d00f      	beq.n	d05e048c <on_close_clicked+0x34>
d05e046c:	4a13      	ldr	r2, [pc, #76]	; (d05e04bc <on_close_clicked+0x64>)
d05e046e:	7a13      	ldrb	r3, [r2, #8]
d05e0470:	7a55      	ldrb	r5, [r2, #9]
d05e0472:	7a91      	ldrb	r1, [r2, #10]
d05e0474:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05e0478:	7ad2      	ldrb	r2, [r2, #11]
d05e047a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e047e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e0482:	695b      	ldr	r3, [r3, #20]
d05e0484:	685b      	ldr	r3, [r3, #4]
d05e0486:	4798      	blx	r3
d05e0488:	23ff      	movs	r3, #255	; 0xff
d05e048a:	7023      	strb	r3, [r4, #0]
d05e048c:	4c0c      	ldr	r4, [pc, #48]	; (d05e04c0 <on_close_clicked+0x68>)
d05e048e:	7820      	ldrb	r0, [r4, #0]
d05e0490:	b178      	cbz	r0, d05e04b2 <on_close_clicked+0x5a>
d05e0492:	4a0a      	ldr	r2, [pc, #40]	; (d05e04bc <on_close_clicked+0x64>)
d05e0494:	7a13      	ldrb	r3, [r2, #8]
d05e0496:	7a55      	ldrb	r5, [r2, #9]
d05e0498:	7a91      	ldrb	r1, [r2, #10]
d05e049a:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05e049e:	7ad2      	ldrb	r2, [r2, #11]
d05e04a0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e04a4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e04a8:	685b      	ldr	r3, [r3, #4]
d05e04aa:	685b      	ldr	r3, [r3, #4]
d05e04ac:	4798      	blx	r3
d05e04ae:	2300      	movs	r3, #0
d05e04b0:	7023      	strb	r3, [r4, #0]
d05e04b2:	bd38      	pop	{r3, r4, r5, pc}
d05e04b4:	d05e2368 	.word	0xd05e2368
d05e04b8:	d05e2473 	.word	0xd05e2473
d05e04bc:	2001f000 	.word	0x2001f000
d05e04c0:	d05e2cfc 	.word	0xd05e2cfc

d05e04c4 <on_icon_active>:
d05e04c4:	f240 1307 	movw	r3, #263	; 0x107
d05e04c8:	4299      	cmp	r1, r3
d05e04ca:	b570      	push	{r4, r5, r6, lr}
d05e04cc:	b082      	sub	sp, #8
d05e04ce:	d048      	beq.n	d05e0562 <on_icon_active+0x9e>
d05e04d0:	4c28      	ldr	r4, [pc, #160]	; (d05e0574 <on_icon_active+0xb0>)
d05e04d2:	7822      	ldrb	r2, [r4, #0]
d05e04d4:	b302      	cbz	r2, d05e0518 <on_icon_active+0x54>
d05e04d6:	4a28      	ldr	r2, [pc, #160]	; (d05e0578 <on_icon_active+0xb4>)
d05e04d8:	2400      	movs	r4, #0
d05e04da:	f10d 0106 	add.w	r1, sp, #6
d05e04de:	a801      	add	r0, sp, #4
d05e04e0:	7813      	ldrb	r3, [r2, #0]
d05e04e2:	7855      	ldrb	r5, [r2, #1]
d05e04e4:	f8ad 4004 	strh.w	r4, [sp, #4]
d05e04e8:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05e04ec:	7895      	ldrb	r5, [r2, #2]
d05e04ee:	78d2      	ldrb	r2, [r2, #3]
d05e04f0:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d05e04f4:	f8ad 4006 	strh.w	r4, [sp, #6]
d05e04f8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e04fc:	691b      	ldr	r3, [r3, #16]
d05e04fe:	4798      	blx	r3
d05e0500:	f8bd 0004 	ldrh.w	r0, [sp, #4]
d05e0504:	f8bd 1006 	ldrh.w	r1, [sp, #6]
d05e0508:	383a      	subs	r0, #58	; 0x3a
d05e050a:	391f      	subs	r1, #31
d05e050c:	b200      	sxth	r0, r0
d05e050e:	b209      	sxth	r1, r1
d05e0510:	f7ff fdfa 	bl	d05e0108 <show_drag_ghost>
d05e0514:	b002      	add	sp, #8
d05e0516:	bd70      	pop	{r4, r5, r6, pc}
d05e0518:	4d17      	ldr	r5, [pc, #92]	; (d05e0578 <on_icon_active+0xb4>)
d05e051a:	f10d 0106 	add.w	r1, sp, #6
d05e051e:	f8ad 2004 	strh.w	r2, [sp, #4]
d05e0522:	a801      	add	r0, sp, #4
d05e0524:	782b      	ldrb	r3, [r5, #0]
d05e0526:	786e      	ldrb	r6, [r5, #1]
d05e0528:	f8ad 2006 	strh.w	r2, [sp, #6]
d05e052c:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d05e0530:	78ae      	ldrb	r6, [r5, #2]
d05e0532:	78ea      	ldrb	r2, [r5, #3]
d05e0534:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d05e0538:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e053c:	691b      	ldr	r3, [r3, #16]
d05e053e:	4798      	blx	r3
d05e0540:	f8bd 0004 	ldrh.w	r0, [sp, #4]
d05e0544:	f8bd 1006 	ldrh.w	r1, [sp, #6]
d05e0548:	2301      	movs	r3, #1
d05e054a:	383a      	subs	r0, #58	; 0x3a
d05e054c:	391f      	subs	r1, #31
d05e054e:	7023      	strb	r3, [r4, #0]
d05e0550:	b200      	sxth	r0, r0
d05e0552:	b209      	sxth	r1, r1
d05e0554:	f7ff fdd8 	bl	d05e0108 <show_drag_ghost>
d05e0558:	4808      	ldr	r0, [pc, #32]	; (d05e057c <on_icon_active+0xb8>)
d05e055a:	f7ff fe35 	bl	d05e01c8 <set_status>
d05e055e:	b002      	add	sp, #8
d05e0560:	bd70      	pop	{r4, r5, r6, pc}
d05e0562:	4b04      	ldr	r3, [pc, #16]	; (d05e0574 <on_icon_active+0xb0>)
d05e0564:	781b      	ldrb	r3, [r3, #0]
d05e0566:	2b00      	cmp	r3, #0
d05e0568:	d0d4      	beq.n	d05e0514 <on_icon_active+0x50>
d05e056a:	f7ff ff53 	bl	d05e0414 <finish_icon_drag.part.0.constprop.0>
d05e056e:	b002      	add	sp, #8
d05e0570:	bd70      	pop	{r4, r5, r6, pc}
d05e0572:	bf00      	nop
d05e0574:	d05e2cf5 	.word	0xd05e2cf5
d05e0578:	2001f000 	.word	0x2001f000
d05e057c:	d05e2054 	.word	0xd05e2054

d05e0580 <on_icon_changed>:
d05e0580:	f240 1305 	movw	r3, #261	; 0x105
d05e0584:	f021 0202 	bic.w	r2, r1, #2
d05e0588:	429a      	cmp	r2, r3
d05e058a:	b530      	push	{r4, r5, lr}
d05e058c:	b083      	sub	sp, #12
d05e058e:	d028      	beq.n	d05e05e2 <on_icon_changed+0x62>
d05e0590:	f5a1 7280 	sub.w	r2, r1, #256	; 0x100
d05e0594:	fab2 f282 	clz	r2, r2
d05e0598:	0952      	lsrs	r2, r2, #5
d05e059a:	bb12      	cbnz	r2, d05e05e2 <on_icon_changed+0x62>
d05e059c:	4b38      	ldr	r3, [pc, #224]	; (d05e0680 <on_icon_changed+0x100>)
d05e059e:	781b      	ldrb	r3, [r3, #0]
d05e05a0:	b1eb      	cbz	r3, d05e05de <on_icon_changed+0x5e>
d05e05a2:	4c38      	ldr	r4, [pc, #224]	; (d05e0684 <on_icon_changed+0x104>)
d05e05a4:	f10d 0106 	add.w	r1, sp, #6
d05e05a8:	f8ad 2004 	strh.w	r2, [sp, #4]
d05e05ac:	a801      	add	r0, sp, #4
d05e05ae:	7823      	ldrb	r3, [r4, #0]
d05e05b0:	7865      	ldrb	r5, [r4, #1]
d05e05b2:	f8ad 2006 	strh.w	r2, [sp, #6]
d05e05b6:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05e05ba:	78a5      	ldrb	r5, [r4, #2]
d05e05bc:	78e2      	ldrb	r2, [r4, #3]
d05e05be:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d05e05c2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e05c6:	691b      	ldr	r3, [r3, #16]
d05e05c8:	4798      	blx	r3
d05e05ca:	f8bd 0004 	ldrh.w	r0, [sp, #4]
d05e05ce:	f8bd 1006 	ldrh.w	r1, [sp, #6]
d05e05d2:	383a      	subs	r0, #58	; 0x3a
d05e05d4:	391f      	subs	r1, #31
d05e05d6:	b200      	sxth	r0, r0
d05e05d8:	b209      	sxth	r1, r1
d05e05da:	f7ff fd95 	bl	d05e0108 <show_drag_ghost>
d05e05de:	b003      	add	sp, #12
d05e05e0:	bd30      	pop	{r4, r5, pc}
d05e05e2:	f240 1305 	movw	r3, #261	; 0x105
d05e05e6:	4299      	cmp	r1, r3
d05e05e8:	d033      	beq.n	d05e0652 <on_icon_changed+0xd2>
d05e05ea:	f240 1307 	movw	r3, #263	; 0x107
d05e05ee:	4299      	cmp	r1, r3
d05e05f0:	d028      	beq.n	d05e0644 <on_icon_changed+0xc4>
d05e05f2:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
d05e05f6:	d1f2      	bne.n	d05e05de <on_icon_changed+0x5e>
d05e05f8:	4a22      	ldr	r2, [pc, #136]	; (d05e0684 <on_icon_changed+0x104>)
d05e05fa:	2400      	movs	r4, #0
d05e05fc:	f10d 0106 	add.w	r1, sp, #6
d05e0600:	a801      	add	r0, sp, #4
d05e0602:	7813      	ldrb	r3, [r2, #0]
d05e0604:	7855      	ldrb	r5, [r2, #1]
d05e0606:	f8ad 4004 	strh.w	r4, [sp, #4]
d05e060a:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05e060e:	7895      	ldrb	r5, [r2, #2]
d05e0610:	78d2      	ldrb	r2, [r2, #3]
d05e0612:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d05e0616:	f8ad 4006 	strh.w	r4, [sp, #6]
d05e061a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e061e:	691b      	ldr	r3, [r3, #16]
d05e0620:	4798      	blx	r3
d05e0622:	f8bd 0004 	ldrh.w	r0, [sp, #4]
d05e0626:	f8bd 1006 	ldrh.w	r1, [sp, #6]
d05e062a:	2201      	movs	r2, #1
d05e062c:	383a      	subs	r0, #58	; 0x3a
d05e062e:	4b14      	ldr	r3, [pc, #80]	; (d05e0680 <on_icon_changed+0x100>)
d05e0630:	391f      	subs	r1, #31
d05e0632:	b200      	sxth	r0, r0
d05e0634:	701a      	strb	r2, [r3, #0]
d05e0636:	b209      	sxth	r1, r1
d05e0638:	f7ff fd66 	bl	d05e0108 <show_drag_ghost>
d05e063c:	4812      	ldr	r0, [pc, #72]	; (d05e0688 <on_icon_changed+0x108>)
d05e063e:	f7ff fdc3 	bl	d05e01c8 <set_status>
d05e0642:	e7cc      	b.n	d05e05de <on_icon_changed+0x5e>
d05e0644:	4b0e      	ldr	r3, [pc, #56]	; (d05e0680 <on_icon_changed+0x100>)
d05e0646:	781b      	ldrb	r3, [r3, #0]
d05e0648:	2b00      	cmp	r3, #0
d05e064a:	d0c8      	beq.n	d05e05de <on_icon_changed+0x5e>
d05e064c:	f7ff fee2 	bl	d05e0414 <finish_icon_drag.part.0.constprop.0>
d05e0650:	e7c5      	b.n	d05e05de <on_icon_changed+0x5e>
d05e0652:	4b0b      	ldr	r3, [pc, #44]	; (d05e0680 <on_icon_changed+0x100>)
d05e0654:	781b      	ldrb	r3, [r3, #0]
d05e0656:	2b00      	cmp	r3, #0
d05e0658:	d0c1      	beq.n	d05e05de <on_icon_changed+0x5e>
d05e065a:	4a0a      	ldr	r2, [pc, #40]	; (d05e0684 <on_icon_changed+0x104>)
d05e065c:	2400      	movs	r4, #0
d05e065e:	f10d 0106 	add.w	r1, sp, #6
d05e0662:	a801      	add	r0, sp, #4
d05e0664:	7813      	ldrb	r3, [r2, #0]
d05e0666:	7855      	ldrb	r5, [r2, #1]
d05e0668:	f8ad 4004 	strh.w	r4, [sp, #4]
d05e066c:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05e0670:	7895      	ldrb	r5, [r2, #2]
d05e0672:	f8ad 4006 	strh.w	r4, [sp, #6]
d05e0676:	78d2      	ldrb	r2, [r2, #3]
d05e0678:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d05e067c:	e7a1      	b.n	d05e05c2 <on_icon_changed+0x42>
d05e067e:	bf00      	nop
d05e0680:	d05e2cf5 	.word	0xd05e2cf5
d05e0684:	2001f000 	.word	0x2001f000
d05e0688:	d05e2054 	.word	0xd05e2054

d05e068c <handle_drag_event>:
d05e068c:	f240 1305 	movw	r3, #261	; 0x105
d05e0690:	4298      	cmp	r0, r3
d05e0692:	b530      	push	{r4, r5, lr}
d05e0694:	b083      	sub	sp, #12
d05e0696:	d008      	beq.n	d05e06aa <handle_drag_event+0x1e>
d05e0698:	f240 1307 	movw	r3, #263	; 0x107
d05e069c:	4298      	cmp	r0, r3
d05e069e:	d050      	beq.n	d05e0742 <handle_drag_event+0xb6>
d05e06a0:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
d05e06a4:	d026      	beq.n	d05e06f4 <handle_drag_event+0x68>
d05e06a6:	b003      	add	sp, #12
d05e06a8:	bd30      	pop	{r4, r5, pc}
d05e06aa:	4b2a      	ldr	r3, [pc, #168]	; (d05e0754 <handle_drag_event+0xc8>)
d05e06ac:	781b      	ldrb	r3, [r3, #0]
d05e06ae:	2b00      	cmp	r3, #0
d05e06b0:	d0f9      	beq.n	d05e06a6 <handle_drag_event+0x1a>
d05e06b2:	4a29      	ldr	r2, [pc, #164]	; (d05e0758 <handle_drag_event+0xcc>)
d05e06b4:	2400      	movs	r4, #0
d05e06b6:	f10d 0106 	add.w	r1, sp, #6
d05e06ba:	a801      	add	r0, sp, #4
d05e06bc:	7813      	ldrb	r3, [r2, #0]
d05e06be:	7855      	ldrb	r5, [r2, #1]
d05e06c0:	f8ad 4004 	strh.w	r4, [sp, #4]
d05e06c4:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05e06c8:	7895      	ldrb	r5, [r2, #2]
d05e06ca:	78d2      	ldrb	r2, [r2, #3]
d05e06cc:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d05e06d0:	f8ad 4006 	strh.w	r4, [sp, #6]
d05e06d4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e06d8:	691b      	ldr	r3, [r3, #16]
d05e06da:	4798      	blx	r3
d05e06dc:	f8bd 0004 	ldrh.w	r0, [sp, #4]
d05e06e0:	f8bd 1006 	ldrh.w	r1, [sp, #6]
d05e06e4:	383a      	subs	r0, #58	; 0x3a
d05e06e6:	391f      	subs	r1, #31
d05e06e8:	b200      	sxth	r0, r0
d05e06ea:	b209      	sxth	r1, r1
d05e06ec:	f7ff fd0c 	bl	d05e0108 <show_drag_ghost>
d05e06f0:	b003      	add	sp, #12
d05e06f2:	bd30      	pop	{r4, r5, pc}
d05e06f4:	4a18      	ldr	r2, [pc, #96]	; (d05e0758 <handle_drag_event+0xcc>)
d05e06f6:	2400      	movs	r4, #0
d05e06f8:	f10d 0106 	add.w	r1, sp, #6
d05e06fc:	a801      	add	r0, sp, #4
d05e06fe:	7813      	ldrb	r3, [r2, #0]
d05e0700:	7855      	ldrb	r5, [r2, #1]
d05e0702:	f8ad 4004 	strh.w	r4, [sp, #4]
d05e0706:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05e070a:	7895      	ldrb	r5, [r2, #2]
d05e070c:	78d2      	ldrb	r2, [r2, #3]
d05e070e:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d05e0712:	f8ad 4006 	strh.w	r4, [sp, #6]
d05e0716:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e071a:	691b      	ldr	r3, [r3, #16]
d05e071c:	4798      	blx	r3
d05e071e:	f8bd 0004 	ldrh.w	r0, [sp, #4]
d05e0722:	f8bd 1006 	ldrh.w	r1, [sp, #6]
d05e0726:	2201      	movs	r2, #1
d05e0728:	383a      	subs	r0, #58	; 0x3a
d05e072a:	4b0a      	ldr	r3, [pc, #40]	; (d05e0754 <handle_drag_event+0xc8>)
d05e072c:	391f      	subs	r1, #31
d05e072e:	b200      	sxth	r0, r0
d05e0730:	701a      	strb	r2, [r3, #0]
d05e0732:	b209      	sxth	r1, r1
d05e0734:	f7ff fce8 	bl	d05e0108 <show_drag_ghost>
d05e0738:	4808      	ldr	r0, [pc, #32]	; (d05e075c <handle_drag_event+0xd0>)
d05e073a:	f7ff fd45 	bl	d05e01c8 <set_status>
d05e073e:	b003      	add	sp, #12
d05e0740:	bd30      	pop	{r4, r5, pc}
d05e0742:	4b04      	ldr	r3, [pc, #16]	; (d05e0754 <handle_drag_event+0xc8>)
d05e0744:	781b      	ldrb	r3, [r3, #0]
d05e0746:	2b00      	cmp	r3, #0
d05e0748:	d0ad      	beq.n	d05e06a6 <handle_drag_event+0x1a>
d05e074a:	f7ff fe63 	bl	d05e0414 <finish_icon_drag.part.0.constprop.0>
d05e074e:	b003      	add	sp, #12
d05e0750:	bd30      	pop	{r4, r5, pc}
d05e0752:	bf00      	nop
d05e0754:	d05e2cf5 	.word	0xd05e2cf5
d05e0758:	2001f000 	.word	0x2001f000
d05e075c:	d05e2054 	.word	0xd05e2054

d05e0760 <load_file>:
d05e0760:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d05e0764:	2300      	movs	r3, #0
d05e0766:	b083      	sub	sp, #12
d05e0768:	9301      	str	r3, [sp, #4]
d05e076a:	2800      	cmp	r0, #0
d05e076c:	d07f      	beq.n	d05e086e <load_file+0x10e>
d05e076e:	7802      	ldrb	r2, [r0, #0]
d05e0770:	4605      	mov	r5, r0
d05e0772:	2a00      	cmp	r2, #0
d05e0774:	d07b      	beq.n	d05e086e <load_file+0x10e>
d05e0776:	4c46      	ldr	r4, [pc, #280]	; (d05e0890 <load_file+0x130>)
d05e0778:	4618      	mov	r0, r3
d05e077a:	2201      	movs	r2, #1
d05e077c:	4629      	mov	r1, r5
d05e077e:	7923      	ldrb	r3, [r4, #4]
d05e0780:	7966      	ldrb	r6, [r4, #5]
d05e0782:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d05e0786:	79a6      	ldrb	r6, [r4, #6]
d05e0788:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d05e078c:	79e6      	ldrb	r6, [r4, #7]
d05e078e:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d05e0792:	681b      	ldr	r3, [r3, #0]
d05e0794:	681b      	ldr	r3, [r3, #0]
d05e0796:	4798      	blx	r3
d05e0798:	4681      	mov	r9, r0
d05e079a:	2800      	cmp	r0, #0
d05e079c:	d16d      	bne.n	d05e087a <load_file+0x11a>
d05e079e:	7923      	ldrb	r3, [r4, #4]
d05e07a0:	7962      	ldrb	r2, [r4, #5]
d05e07a2:	79a1      	ldrb	r1, [r4, #6]
d05e07a4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05e07a8:	79e2      	ldrb	r2, [r4, #7]
d05e07aa:	f8df 8104 	ldr.w	r8, [pc, #260]	; d05e08b0 <load_file+0x150>
d05e07ae:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e07b2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e07b6:	681b      	ldr	r3, [r3, #0]
d05e07b8:	685b      	ldr	r3, [r3, #4]
d05e07ba:	4798      	blx	r3
d05e07bc:	7926      	ldrb	r6, [r4, #4]
d05e07be:	7963      	ldrb	r3, [r4, #5]
d05e07c0:	f240 72ff 	movw	r2, #2047	; 0x7ff
d05e07c4:	f894 c006 	ldrb.w	ip, [r4, #6]
d05e07c8:	4641      	mov	r1, r8
d05e07ca:	ea46 2603 	orr.w	r6, r6, r3, lsl #8
d05e07ce:	79e7      	ldrb	r7, [r4, #7]
d05e07d0:	4282      	cmp	r2, r0
d05e07d2:	ab01      	add	r3, sp, #4
d05e07d4:	ea46 460c 	orr.w	r6, r6, ip, lsl #16
d05e07d8:	bf28      	it	cs
d05e07da:	4602      	movcs	r2, r0
d05e07dc:	4648      	mov	r0, r9
d05e07de:	ea46 6607 	orr.w	r6, r6, r7, lsl #24
d05e07e2:	6836      	ldr	r6, [r6, #0]
d05e07e4:	68b6      	ldr	r6, [r6, #8]
d05e07e6:	47b0      	blx	r6
d05e07e8:	7927      	ldrb	r7, [r4, #4]
d05e07ea:	f894 c005 	ldrb.w	ip, [r4, #5]
d05e07ee:	4606      	mov	r6, r0
d05e07f0:	79a1      	ldrb	r1, [r4, #6]
d05e07f2:	4648      	mov	r0, r9
d05e07f4:	ea47 230c 	orr.w	r3, r7, ip, lsl #8
d05e07f8:	79e2      	ldrb	r2, [r4, #7]
d05e07fa:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e07fe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e0802:	681b      	ldr	r3, [r3, #0]
d05e0804:	68db      	ldr	r3, [r3, #12]
d05e0806:	4798      	blx	r3
d05e0808:	2e00      	cmp	r6, #0
d05e080a:	d139      	bne.n	d05e0880 <load_file+0x120>
d05e080c:	9b01      	ldr	r3, [sp, #4]
d05e080e:	4640      	mov	r0, r8
d05e0810:	f808 6003 	strb.w	r6, [r8, r3]
d05e0814:	f7ff fd1e 	bl	d05e0254 <set_document>
d05e0818:	4b1e      	ldr	r3, [pc, #120]	; (d05e0894 <load_file+0x134>)
d05e081a:	782c      	ldrb	r4, [r5, #0]
d05e081c:	701e      	strb	r6, [r3, #0]
d05e081e:	b1d4      	cbz	r4, d05e0856 <load_file+0xf6>
d05e0820:	462b      	mov	r3, r5
d05e0822:	e002      	b.n	d05e082a <load_file+0xca>
d05e0824:	f813 4f01 	ldrb.w	r4, [r3, #1]!
d05e0828:	b144      	cbz	r4, d05e083c <load_file+0xdc>
d05e082a:	2c5c      	cmp	r4, #92	; 0x5c
d05e082c:	d001      	beq.n	d05e0832 <load_file+0xd2>
d05e082e:	2c2f      	cmp	r4, #47	; 0x2f
d05e0830:	d1f8      	bne.n	d05e0824 <load_file+0xc4>
d05e0832:	461e      	mov	r6, r3
d05e0834:	f813 4f01 	ldrb.w	r4, [r3, #1]!
d05e0838:	2c00      	cmp	r4, #0
d05e083a:	d1f6      	bne.n	d05e082a <load_file+0xca>
d05e083c:	b15e      	cbz	r6, d05e0856 <load_file+0xf6>
d05e083e:	1b76      	subs	r6, r6, r5
d05e0840:	d021      	beq.n	d05e0886 <load_file+0x126>
d05e0842:	2eff      	cmp	r6, #255	; 0xff
d05e0844:	4b14      	ldr	r3, [pc, #80]	; (d05e0898 <load_file+0x138>)
d05e0846:	4629      	mov	r1, r5
d05e0848:	bf28      	it	cs
d05e084a:	26ff      	movcs	r6, #255	; 0xff
d05e084c:	4618      	mov	r0, r3
d05e084e:	4632      	mov	r2, r6
d05e0850:	f000 fbca 	bl	d05e0fe8 <memcpy>
d05e0854:	5584      	strb	r4, [r0, r6]
d05e0856:	462b      	mov	r3, r5
d05e0858:	4a10      	ldr	r2, [pc, #64]	; (d05e089c <load_file+0x13c>)
d05e085a:	2160      	movs	r1, #96	; 0x60
d05e085c:	4810      	ldr	r0, [pc, #64]	; (d05e08a0 <load_file+0x140>)
d05e085e:	f000 fca7 	bl	d05e11b0 <sniprintf>
d05e0862:	480f      	ldr	r0, [pc, #60]	; (d05e08a0 <load_file+0x140>)
d05e0864:	f7ff fcb0 	bl	d05e01c8 <set_status>
d05e0868:	b003      	add	sp, #12
d05e086a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d05e086e:	480d      	ldr	r0, [pc, #52]	; (d05e08a4 <load_file+0x144>)
d05e0870:	f7ff fcaa 	bl	d05e01c8 <set_status>
d05e0874:	b003      	add	sp, #12
d05e0876:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d05e087a:	4603      	mov	r3, r0
d05e087c:	4a0a      	ldr	r2, [pc, #40]	; (d05e08a8 <load_file+0x148>)
d05e087e:	e7ec      	b.n	d05e085a <load_file+0xfa>
d05e0880:	4633      	mov	r3, r6
d05e0882:	4a0a      	ldr	r2, [pc, #40]	; (d05e08ac <load_file+0x14c>)
d05e0884:	e7e9      	b.n	d05e085a <load_file+0xfa>
d05e0886:	4b04      	ldr	r3, [pc, #16]	; (d05e0898 <load_file+0x138>)
d05e0888:	222f      	movs	r2, #47	; 0x2f
d05e088a:	801a      	strh	r2, [r3, #0]
d05e088c:	e7e3      	b.n	d05e0856 <load_file+0xf6>
d05e088e:	bf00      	nop
d05e0890:	2001f000 	.word	0x2001f000
d05e0894:	d05e2cf4 	.word	0xd05e2cf4
d05e0898:	d05e236c 	.word	0xd05e236c
d05e089c:	d05e20a0 	.word	0xd05e20a0
d05e08a0:	d05e2d00 	.word	0xd05e2d00
d05e08a4:	d05e2068 	.word	0xd05e2068
d05e08a8:	d05e2078 	.word	0xd05e2078
d05e08ac:	d05e208c 	.word	0xd05e208c
d05e08b0:	d05e24f4 	.word	0xd05e24f4

d05e08b4 <editor_proc>:
d05e08b4:	2900      	cmp	r1, #0
d05e08b6:	f000 8083 	beq.w	d05e09c0 <editor_proc+0x10c>
d05e08ba:	680b      	ldr	r3, [r1, #0]
d05e08bc:	2b20      	cmp	r3, #32
d05e08be:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d05e08c2:	b082      	sub	sp, #8
d05e08c4:	d012      	beq.n	d05e08ec <editor_proc+0x38>
d05e08c6:	2b40      	cmp	r3, #64	; 0x40
d05e08c8:	d007      	beq.n	d05e08da <editor_proc+0x26>
d05e08ca:	2b10      	cmp	r3, #16
d05e08cc:	d003      	beq.n	d05e08d6 <editor_proc+0x22>
d05e08ce:	2000      	movs	r0, #0
d05e08d0:	b002      	add	sp, #8
d05e08d2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d05e08d6:	688b      	ldr	r3, [r1, #8]
d05e08d8:	b11b      	cbz	r3, d05e08e2 <editor_proc+0x2e>
d05e08da:	4b87      	ldr	r3, [pc, #540]	; (d05e0af8 <editor_proc+0x244>)
d05e08dc:	7818      	ldrb	r0, [r3, #0]
d05e08de:	2800      	cmp	r0, #0
d05e08e0:	d0f6      	beq.n	d05e08d0 <editor_proc+0x1c>
d05e08e2:	68c8      	ldr	r0, [r1, #12]
d05e08e4:	f7ff fed2 	bl	d05e068c <handle_drag_event>
d05e08e8:	20f0      	movs	r0, #240	; 0xf0
d05e08ea:	e7f1      	b.n	d05e08d0 <editor_proc+0x1c>
d05e08ec:	68cb      	ldr	r3, [r1, #12]
d05e08ee:	f5b3 4f00 	cmp.w	r3, #32768	; 0x8000
d05e08f2:	d04e      	beq.n	d05e0992 <editor_proc+0xde>
d05e08f4:	f248 0202 	movw	r2, #32770	; 0x8002
d05e08f8:	4293      	cmp	r3, r2
d05e08fa:	d031      	beq.n	d05e0960 <editor_proc+0xac>
d05e08fc:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d05e0900:	d1e5      	bne.n	d05e08ce <editor_proc+0x1a>
d05e0902:	4b7e      	ldr	r3, [pc, #504]	; (d05e0afc <editor_proc+0x248>)
d05e0904:	781a      	ldrb	r2, [r3, #0]
d05e0906:	2a00      	cmp	r2, #0
d05e0908:	d03f      	beq.n	d05e098a <editor_proc+0xd6>
d05e090a:	4c7d      	ldr	r4, [pc, #500]	; (d05e0b00 <editor_proc+0x24c>)
d05e090c:	2200      	movs	r2, #0
d05e090e:	7820      	ldrb	r0, [r4, #0]
d05e0910:	701a      	strb	r2, [r3, #0]
d05e0912:	28ff      	cmp	r0, #255	; 0xff
d05e0914:	d00f      	beq.n	d05e0936 <editor_proc+0x82>
d05e0916:	4a7b      	ldr	r2, [pc, #492]	; (d05e0b04 <editor_proc+0x250>)
d05e0918:	7a13      	ldrb	r3, [r2, #8]
d05e091a:	7a55      	ldrb	r5, [r2, #9]
d05e091c:	7a91      	ldrb	r1, [r2, #10]
d05e091e:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05e0922:	7ad2      	ldrb	r2, [r2, #11]
d05e0924:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0928:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e092c:	695b      	ldr	r3, [r3, #20]
d05e092e:	685b      	ldr	r3, [r3, #4]
d05e0930:	4798      	blx	r3
d05e0932:	23ff      	movs	r3, #255	; 0xff
d05e0934:	7023      	strb	r3, [r4, #0]
d05e0936:	4c74      	ldr	r4, [pc, #464]	; (d05e0b08 <editor_proc+0x254>)
d05e0938:	7820      	ldrb	r0, [r4, #0]
d05e093a:	b330      	cbz	r0, d05e098a <editor_proc+0xd6>
d05e093c:	4a71      	ldr	r2, [pc, #452]	; (d05e0b04 <editor_proc+0x250>)
d05e093e:	7a13      	ldrb	r3, [r2, #8]
d05e0940:	7a55      	ldrb	r5, [r2, #9]
d05e0942:	7a91      	ldrb	r1, [r2, #10]
d05e0944:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d05e0948:	7ad2      	ldrb	r2, [r2, #11]
d05e094a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e094e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e0952:	685b      	ldr	r3, [r3, #4]
d05e0954:	685b      	ldr	r3, [r3, #4]
d05e0956:	4798      	blx	r3
d05e0958:	2300      	movs	r3, #0
d05e095a:	20f0      	movs	r0, #240	; 0xf0
d05e095c:	7023      	strb	r3, [r4, #0]
d05e095e:	e7b7      	b.n	d05e08d0 <editor_proc+0x1c>
d05e0960:	4b6a      	ldr	r3, [pc, #424]	; (d05e0b0c <editor_proc+0x258>)
d05e0962:	7f0a      	ldrb	r2, [r1, #28]
d05e0964:	7818      	ldrb	r0, [r3, #0]
d05e0966:	4290      	cmp	r0, r2
d05e0968:	d10f      	bne.n	d05e098a <editor_proc+0xd6>
d05e096a:	690a      	ldr	r2, [r1, #16]
d05e096c:	21ff      	movs	r1, #255	; 0xff
d05e096e:	2a03      	cmp	r2, #3
d05e0970:	7019      	strb	r1, [r3, #0]
d05e0972:	d830      	bhi.n	d05e09d6 <editor_proc+0x122>
d05e0974:	4b66      	ldr	r3, [pc, #408]	; (d05e0b10 <editor_proc+0x25c>)
d05e0976:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
d05e097a:	4a66      	ldr	r2, [pc, #408]	; (d05e0b14 <editor_proc+0x260>)
d05e097c:	2160      	movs	r1, #96	; 0x60
d05e097e:	4866      	ldr	r0, [pc, #408]	; (d05e0b18 <editor_proc+0x264>)
d05e0980:	f000 fc16 	bl	d05e11b0 <sniprintf>
d05e0984:	4864      	ldr	r0, [pc, #400]	; (d05e0b18 <editor_proc+0x264>)
d05e0986:	f7ff fc1f 	bl	d05e01c8 <set_status>
d05e098a:	20f0      	movs	r0, #240	; 0xf0
d05e098c:	b002      	add	sp, #8
d05e098e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d05e0992:	4a62      	ldr	r2, [pc, #392]	; (d05e0b1c <editor_proc+0x268>)
d05e0994:	7f0b      	ldrb	r3, [r1, #28]
d05e0996:	7810      	ldrb	r0, [r2, #0]
d05e0998:	690d      	ldr	r5, [r1, #16]
d05e099a:	4298      	cmp	r0, r3
d05e099c:	698c      	ldr	r4, [r1, #24]
d05e099e:	d011      	beq.n	d05e09c4 <editor_proc+0x110>
d05e09a0:	4a5f      	ldr	r2, [pc, #380]	; (d05e0b20 <editor_proc+0x26c>)
d05e09a2:	7811      	ldrb	r1, [r2, #0]
d05e09a4:	4299      	cmp	r1, r3
d05e09a6:	d1f0      	bne.n	d05e098a <editor_proc+0xd6>
d05e09a8:	23ff      	movs	r3, #255	; 0xff
d05e09aa:	2d01      	cmp	r5, #1
d05e09ac:	7013      	strb	r3, [r2, #0]
d05e09ae:	d102      	bne.n	d05e09b6 <editor_proc+0x102>
d05e09b0:	b10c      	cbz	r4, d05e09b6 <editor_proc+0x102>
d05e09b2:	7823      	ldrb	r3, [r4, #0]
d05e09b4:	b9b3      	cbnz	r3, d05e09e4 <editor_proc+0x130>
d05e09b6:	485b      	ldr	r0, [pc, #364]	; (d05e0b24 <editor_proc+0x270>)
d05e09b8:	f7ff fc06 	bl	d05e01c8 <set_status>
d05e09bc:	20f0      	movs	r0, #240	; 0xf0
d05e09be:	e787      	b.n	d05e08d0 <editor_proc+0x1c>
d05e09c0:	4608      	mov	r0, r1
d05e09c2:	4770      	bx	lr
d05e09c4:	23ff      	movs	r3, #255	; 0xff
d05e09c6:	2d01      	cmp	r5, #1
d05e09c8:	7013      	strb	r3, [r2, #0]
d05e09ca:	d006      	beq.n	d05e09da <editor_proc+0x126>
d05e09cc:	4856      	ldr	r0, [pc, #344]	; (d05e0b28 <editor_proc+0x274>)
d05e09ce:	f7ff fbfb 	bl	d05e01c8 <set_status>
d05e09d2:	20f0      	movs	r0, #240	; 0xf0
d05e09d4:	e77c      	b.n	d05e08d0 <editor_proc+0x1c>
d05e09d6:	4b55      	ldr	r3, [pc, #340]	; (d05e0b2c <editor_proc+0x278>)
d05e09d8:	e7cf      	b.n	d05e097a <editor_proc+0xc6>
d05e09da:	4620      	mov	r0, r4
d05e09dc:	f7ff fec0 	bl	d05e0760 <load_file>
d05e09e0:	20f0      	movs	r0, #240	; 0xf0
d05e09e2:	e775      	b.n	d05e08d0 <editor_proc+0x1c>
d05e09e4:	2500      	movs	r5, #0
d05e09e6:	9501      	str	r5, [sp, #4]
d05e09e8:	7823      	ldrb	r3, [r4, #0]
d05e09ea:	2b00      	cmp	r3, #0
d05e09ec:	d054      	beq.n	d05e0a98 <editor_proc+0x1e4>
d05e09ee:	4e45      	ldr	r6, [pc, #276]	; (d05e0b04 <editor_proc+0x250>)
d05e09f0:	f44f 6200 	mov.w	r2, #2048	; 0x800
d05e09f4:	484e      	ldr	r0, [pc, #312]	; (d05e0b30 <editor_proc+0x27c>)
d05e09f6:	7a33      	ldrb	r3, [r6, #8]
d05e09f8:	7a77      	ldrb	r7, [r6, #9]
d05e09fa:	7ab1      	ldrb	r1, [r6, #10]
d05e09fc:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
d05e0a00:	7af7      	ldrb	r7, [r6, #11]
d05e0a02:	6800      	ldr	r0, [r0, #0]
d05e0a04:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0a08:	494a      	ldr	r1, [pc, #296]	; (d05e0b34 <editor_proc+0x280>)
d05e0a0a:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d05e0a0e:	68db      	ldr	r3, [r3, #12]
d05e0a10:	6f1b      	ldr	r3, [r3, #112]	; 0x70
d05e0a12:	4798      	blx	r3
d05e0a14:	4607      	mov	r7, r0
d05e0a16:	4847      	ldr	r0, [pc, #284]	; (d05e0b34 <editor_proc+0x280>)
d05e0a18:	f000 fbfe 	bl	d05e1218 <strlen>
d05e0a1c:	7933      	ldrb	r3, [r6, #4]
d05e0a1e:	7972      	ldrb	r2, [r6, #5]
d05e0a20:	4680      	mov	r8, r0
d05e0a22:	79b1      	ldrb	r1, [r6, #6]
d05e0a24:	4628      	mov	r0, r5
d05e0a26:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05e0a2a:	79f5      	ldrb	r5, [r6, #7]
d05e0a2c:	220a      	movs	r2, #10
d05e0a2e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0a32:	4621      	mov	r1, r4
d05e0a34:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d05e0a38:	681b      	ldr	r3, [r3, #0]
d05e0a3a:	681b      	ldr	r3, [r3, #0]
d05e0a3c:	4798      	blx	r3
d05e0a3e:	4603      	mov	r3, r0
d05e0a40:	2800      	cmp	r0, #0
d05e0a42:	d150      	bne.n	d05e0ae6 <editor_proc+0x232>
d05e0a44:	7935      	ldrb	r5, [r6, #4]
d05e0a46:	ab01      	add	r3, sp, #4
d05e0a48:	f896 c005 	ldrb.w	ip, [r6, #5]
d05e0a4c:	4642      	mov	r2, r8
d05e0a4e:	79b1      	ldrb	r1, [r6, #6]
d05e0a50:	2000      	movs	r0, #0
d05e0a52:	ea45 250c 	orr.w	r5, r5, ip, lsl #8
d05e0a56:	f896 c007 	ldrb.w	ip, [r6, #7]
d05e0a5a:	ea45 4501 	orr.w	r5, r5, r1, lsl #16
d05e0a5e:	4935      	ldr	r1, [pc, #212]	; (d05e0b34 <editor_proc+0x280>)
d05e0a60:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d05e0a64:	682d      	ldr	r5, [r5, #0]
d05e0a66:	692d      	ldr	r5, [r5, #16]
d05e0a68:	47a8      	blx	r5
d05e0a6a:	7933      	ldrb	r3, [r6, #4]
d05e0a6c:	7972      	ldrb	r2, [r6, #5]
d05e0a6e:	4605      	mov	r5, r0
d05e0a70:	79b1      	ldrb	r1, [r6, #6]
d05e0a72:	2000      	movs	r0, #0
d05e0a74:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05e0a78:	79f2      	ldrb	r2, [r6, #7]
d05e0a7a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0a7e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e0a82:	681b      	ldr	r3, [r3, #0]
d05e0a84:	68db      	ldr	r3, [r3, #12]
d05e0a86:	4798      	blx	r3
d05e0a88:	bb7d      	cbnz	r5, d05e0aea <editor_proc+0x236>
d05e0a8a:	9b01      	ldr	r3, [sp, #4]
d05e0a8c:	4598      	cmp	r8, r3
d05e0a8e:	d007      	beq.n	d05e0aa0 <editor_proc+0x1ec>
d05e0a90:	4829      	ldr	r0, [pc, #164]	; (d05e0b38 <editor_proc+0x284>)
d05e0a92:	f7ff fb99 	bl	d05e01c8 <set_status>
d05e0a96:	e778      	b.n	d05e098a <editor_proc+0xd6>
d05e0a98:	4822      	ldr	r0, [pc, #136]	; (d05e0b24 <editor_proc+0x270>)
d05e0a9a:	f7ff fb95 	bl	d05e01c8 <set_status>
d05e0a9e:	e774      	b.n	d05e098a <editor_proc+0xd6>
d05e0aa0:	4b26      	ldr	r3, [pc, #152]	; (d05e0b3c <editor_proc+0x288>)
d05e0aa2:	7826      	ldrb	r6, [r4, #0]
d05e0aa4:	701d      	strb	r5, [r3, #0]
d05e0aa6:	b1be      	cbz	r6, d05e0ad8 <editor_proc+0x224>
d05e0aa8:	4623      	mov	r3, r4
d05e0aaa:	e004      	b.n	d05e0ab6 <editor_proc+0x202>
d05e0aac:	2e2f      	cmp	r6, #47	; 0x2f
d05e0aae:	d004      	beq.n	d05e0aba <editor_proc+0x206>
d05e0ab0:	f813 6f01 	ldrb.w	r6, [r3, #1]!
d05e0ab4:	b11e      	cbz	r6, d05e0abe <editor_proc+0x20a>
d05e0ab6:	2e5c      	cmp	r6, #92	; 0x5c
d05e0ab8:	d1f8      	bne.n	d05e0aac <editor_proc+0x1f8>
d05e0aba:	461d      	mov	r5, r3
d05e0abc:	e7f8      	b.n	d05e0ab0 <editor_proc+0x1fc>
d05e0abe:	b15d      	cbz	r5, d05e0ad8 <editor_proc+0x224>
d05e0ac0:	1b2d      	subs	r5, r5, r4
d05e0ac2:	d015      	beq.n	d05e0af0 <editor_proc+0x23c>
d05e0ac4:	2dff      	cmp	r5, #255	; 0xff
d05e0ac6:	4b1e      	ldr	r3, [pc, #120]	; (d05e0b40 <editor_proc+0x28c>)
d05e0ac8:	4621      	mov	r1, r4
d05e0aca:	bf28      	it	cs
d05e0acc:	25ff      	movcs	r5, #255	; 0xff
d05e0ace:	4618      	mov	r0, r3
d05e0ad0:	462a      	mov	r2, r5
d05e0ad2:	f000 fa89 	bl	d05e0fe8 <memcpy>
d05e0ad6:	5546      	strb	r6, [r0, r5]
d05e0ad8:	f5b7 6f00 	cmp.w	r7, #2048	; 0x800
d05e0adc:	4623      	mov	r3, r4
d05e0ade:	bf8c      	ite	hi
d05e0ae0:	4a18      	ldrhi	r2, [pc, #96]	; (d05e0b44 <editor_proc+0x290>)
d05e0ae2:	4a19      	ldrls	r2, [pc, #100]	; (d05e0b48 <editor_proc+0x294>)
d05e0ae4:	e74a      	b.n	d05e097c <editor_proc+0xc8>
d05e0ae6:	4a19      	ldr	r2, [pc, #100]	; (d05e0b4c <editor_proc+0x298>)
d05e0ae8:	e748      	b.n	d05e097c <editor_proc+0xc8>
d05e0aea:	462b      	mov	r3, r5
d05e0aec:	4a18      	ldr	r2, [pc, #96]	; (d05e0b50 <editor_proc+0x29c>)
d05e0aee:	e745      	b.n	d05e097c <editor_proc+0xc8>
d05e0af0:	4b13      	ldr	r3, [pc, #76]	; (d05e0b40 <editor_proc+0x28c>)
d05e0af2:	222f      	movs	r2, #47	; 0x2f
d05e0af4:	801a      	strh	r2, [r3, #0]
d05e0af6:	e7ef      	b.n	d05e0ad8 <editor_proc+0x224>
d05e0af8:	d05e2cf5 	.word	0xd05e2cf5
d05e0afc:	d05e2368 	.word	0xd05e2368
d05e0b00:	d05e2473 	.word	0xd05e2473
d05e0b04:	2001f000 	.word	0x2001f000
d05e0b08:	d05e2cfc 	.word	0xd05e2cfc
d05e0b0c:	d05e2472 	.word	0xd05e2472
d05e0b10:	d05e21ac 	.word	0xd05e21ac
d05e0b14:	d05e2128 	.word	0xd05e2128
d05e0b18:	d05e2d00 	.word	0xd05e2d00
d05e0b1c:	d05e2470 	.word	0xd05e2470
d05e0b20:	d05e2471 	.word	0xd05e2471
d05e0b24:	d05e20b8 	.word	0xd05e20b8
d05e0b28:	d05e2068 	.word	0xd05e2068
d05e0b2c:	d05e20b0 	.word	0xd05e20b0
d05e0b30:	d05e2d64 	.word	0xd05e2d64
d05e0b34:	d05e24f4 	.word	0xd05e24f4
d05e0b38:	d05e20f0 	.word	0xd05e20f0
d05e0b3c:	d05e2cf4 	.word	0xd05e2cf4
d05e0b40:	d05e236c 	.word	0xd05e236c
d05e0b44:	d05e2100 	.word	0xd05e2100
d05e0b48:	d05e2118 	.word	0xd05e2118
d05e0b4c:	d05e20c8 	.word	0xd05e20c8
d05e0b50:	d05e20dc 	.word	0xd05e20dc

d05e0b54 <on_sample_clicked>:
d05e0b54:	b5f0      	push	{r4, r5, r6, r7, lr}
d05e0b56:	4b22      	ldr	r3, [pc, #136]	; (d05e0be0 <on_sample_clicked+0x8c>)
d05e0b58:	2200      	movs	r2, #0
d05e0b5a:	4d22      	ldr	r5, [pc, #136]	; (d05e0be4 <on_sample_clicked+0x90>)
d05e0b5c:	b085      	sub	sp, #20
d05e0b5e:	4822      	ldr	r0, [pc, #136]	; (d05e0be8 <on_sample_clicked+0x94>)
d05e0b60:	701a      	strb	r2, [r3, #0]
d05e0b62:	f7ff fb77 	bl	d05e0254 <set_document>
d05e0b66:	6828      	ldr	r0, [r5, #0]
d05e0b68:	4c20      	ldr	r4, [pc, #128]	; (d05e0bec <on_sample_clicked+0x98>)
d05e0b6a:	b160      	cbz	r0, d05e0b86 <on_sample_clicked+0x32>
d05e0b6c:	7a23      	ldrb	r3, [r4, #8]
d05e0b6e:	7a62      	ldrb	r2, [r4, #9]
d05e0b70:	7aa1      	ldrb	r1, [r4, #10]
d05e0b72:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05e0b76:	7ae2      	ldrb	r2, [r4, #11]
d05e0b78:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0b7c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e0b80:	68db      	ldr	r3, [r3, #12]
d05e0b82:	6d5b      	ldr	r3, [r3, #84]	; 0x54
d05e0b84:	4798      	blx	r3
d05e0b86:	7a22      	ldrb	r2, [r4, #8]
d05e0b88:	f04f 0c21 	mov.w	ip, #33	; 0x21
d05e0b8c:	7a60      	ldrb	r0, [r4, #9]
d05e0b8e:	2710      	movs	r7, #16
d05e0b90:	7aa1      	ldrb	r1, [r4, #10]
d05e0b92:	f44f 73c6 	mov.w	r3, #396	; 0x18c
d05e0b96:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
d05e0b9a:	7ae0      	ldrb	r0, [r4, #11]
d05e0b9c:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
d05e0ba0:	4913      	ldr	r1, [pc, #76]	; (d05e0bf0 <on_sample_clicked+0x9c>)
d05e0ba2:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d05e0ba6:	4813      	ldr	r0, [pc, #76]	; (d05e0bf4 <on_sample_clicked+0xa0>)
d05e0ba8:	68d6      	ldr	r6, [r2, #12]
d05e0baa:	22da      	movs	r2, #218	; 0xda
d05e0bac:	7800      	ldrb	r0, [r0, #0]
d05e0bae:	9101      	str	r1, [sp, #4]
d05e0bb0:	210c      	movs	r1, #12
d05e0bb2:	f8cd c008 	str.w	ip, [sp, #8]
d05e0bb6:	9700      	str	r7, [sp, #0]
d05e0bb8:	69b6      	ldr	r6, [r6, #24]
d05e0bba:	47b0      	blx	r6
d05e0bbc:	7a23      	ldrb	r3, [r4, #8]
d05e0bbe:	7a62      	ldrb	r2, [r4, #9]
d05e0bc0:	7aa1      	ldrb	r1, [r4, #10]
d05e0bc2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05e0bc6:	7ae2      	ldrb	r2, [r4, #11]
d05e0bc8:	6028      	str	r0, [r5, #0]
d05e0bca:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0bce:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e0bd2:	68db      	ldr	r3, [r3, #12]
d05e0bd4:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05e0bd6:	b005      	add	sp, #20
d05e0bd8:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d05e0bdc:	4718      	bx	r3
d05e0bde:	bf00      	nop
d05e0be0:	d05e2cf4 	.word	0xd05e2cf4
d05e0be4:	d05e2d60 	.word	0xd05e2d60
d05e0be8:	d05e21c0 	.word	0xd05e21c0
d05e0bec:	2001f000 	.word	0x2001f000
d05e0bf0:	d05e213c 	.word	0xd05e213c
d05e0bf4:	d05e2cfc 	.word	0xd05e2cfc

d05e0bf8 <on_new_clicked>:
d05e0bf8:	b5f0      	push	{r4, r5, r6, r7, lr}
d05e0bfa:	4b22      	ldr	r3, [pc, #136]	; (d05e0c84 <on_new_clicked+0x8c>)
d05e0bfc:	2200      	movs	r2, #0
d05e0bfe:	4d22      	ldr	r5, [pc, #136]	; (d05e0c88 <on_new_clicked+0x90>)
d05e0c00:	b085      	sub	sp, #20
d05e0c02:	4822      	ldr	r0, [pc, #136]	; (d05e0c8c <on_new_clicked+0x94>)
d05e0c04:	701a      	strb	r2, [r3, #0]
d05e0c06:	f7ff fb25 	bl	d05e0254 <set_document>
d05e0c0a:	6828      	ldr	r0, [r5, #0]
d05e0c0c:	4c20      	ldr	r4, [pc, #128]	; (d05e0c90 <on_new_clicked+0x98>)
d05e0c0e:	b160      	cbz	r0, d05e0c2a <on_new_clicked+0x32>
d05e0c10:	7a23      	ldrb	r3, [r4, #8]
d05e0c12:	7a62      	ldrb	r2, [r4, #9]
d05e0c14:	7aa1      	ldrb	r1, [r4, #10]
d05e0c16:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05e0c1a:	7ae2      	ldrb	r2, [r4, #11]
d05e0c1c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0c20:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e0c24:	68db      	ldr	r3, [r3, #12]
d05e0c26:	6d5b      	ldr	r3, [r3, #84]	; 0x54
d05e0c28:	4798      	blx	r3
d05e0c2a:	7a22      	ldrb	r2, [r4, #8]
d05e0c2c:	f04f 0c21 	mov.w	ip, #33	; 0x21
d05e0c30:	7a60      	ldrb	r0, [r4, #9]
d05e0c32:	2710      	movs	r7, #16
d05e0c34:	7aa1      	ldrb	r1, [r4, #10]
d05e0c36:	f44f 73c6 	mov.w	r3, #396	; 0x18c
d05e0c3a:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
d05e0c3e:	7ae0      	ldrb	r0, [r4, #11]
d05e0c40:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
d05e0c44:	4913      	ldr	r1, [pc, #76]	; (d05e0c94 <on_new_clicked+0x9c>)
d05e0c46:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d05e0c4a:	4813      	ldr	r0, [pc, #76]	; (d05e0c98 <on_new_clicked+0xa0>)
d05e0c4c:	68d6      	ldr	r6, [r2, #12]
d05e0c4e:	22da      	movs	r2, #218	; 0xda
d05e0c50:	7800      	ldrb	r0, [r0, #0]
d05e0c52:	9101      	str	r1, [sp, #4]
d05e0c54:	210c      	movs	r1, #12
d05e0c56:	f8cd c008 	str.w	ip, [sp, #8]
d05e0c5a:	9700      	str	r7, [sp, #0]
d05e0c5c:	69b6      	ldr	r6, [r6, #24]
d05e0c5e:	47b0      	blx	r6
d05e0c60:	7a23      	ldrb	r3, [r4, #8]
d05e0c62:	7a62      	ldrb	r2, [r4, #9]
d05e0c64:	7aa1      	ldrb	r1, [r4, #10]
d05e0c66:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05e0c6a:	7ae2      	ldrb	r2, [r4, #11]
d05e0c6c:	6028      	str	r0, [r5, #0]
d05e0c6e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0c72:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e0c76:	68db      	ldr	r3, [r3, #12]
d05e0c78:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05e0c7a:	b005      	add	sp, #20
d05e0c7c:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d05e0c80:	4718      	bx	r3
d05e0c82:	bf00      	nop
d05e0c84:	d05e2cf4 	.word	0xd05e2cf4
d05e0c88:	d05e2d60 	.word	0xd05e2d60
d05e0c8c:	d05e21bc 	.word	0xd05e21bc
d05e0c90:	2001f000 	.word	0x2001f000
d05e0c94:	d05e2150 	.word	0xd05e2150
d05e0c98:	d05e2cfc 	.word	0xd05e2cfc

d05e0c9c <main>:
d05e0c9c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05e0ca0:	4cb2      	ldr	r4, [pc, #712]	; (d05e0f6c <main+0x2d0>)
d05e0ca2:	460e      	mov	r6, r1
d05e0ca4:	b087      	sub	sp, #28
d05e0ca6:	4db2      	ldr	r5, [pc, #712]	; (d05e0f70 <main+0x2d4>)
d05e0ca8:	7a22      	ldrb	r2, [r4, #8]
d05e0caa:	f44f 7e8b 	mov.w	lr, #278	; 0x116
d05e0cae:	f894 c009 	ldrb.w	ip, [r4, #9]
d05e0cb2:	f240 39ed 	movw	r9, #1005	; 0x3ed
d05e0cb6:	7aa1      	ldrb	r1, [r4, #10]
d05e0cb8:	4682      	mov	sl, r0
d05e0cba:	ea42 2c0c 	orr.w	ip, r2, ip, lsl #8
d05e0cbe:	7ae7      	ldrb	r7, [r4, #11]
d05e0cc0:	f8df 82f0 	ldr.w	r8, [pc, #752]	; d05e0fb4 <main+0x318>
d05e0cc4:	f44f 73d8 	mov.w	r3, #432	; 0x1b0
d05e0cc8:	ea4c 4c01 	orr.w	ip, ip, r1, lsl #16
d05e0ccc:	2214      	movs	r2, #20
d05e0cce:	2118      	movs	r1, #24
d05e0cd0:	4628      	mov	r0, r5
d05e0cd2:	ea4c 6c07 	orr.w	ip, ip, r7, lsl #24
d05e0cd6:	f8cd a010 	str.w	sl, [sp, #16]
d05e0cda:	9605      	str	r6, [sp, #20]
d05e0cdc:	2701      	movs	r7, #1
d05e0cde:	f8dc c004 	ldr.w	ip, [ip, #4]
d05e0ce2:	2616      	movs	r6, #22
d05e0ce4:	f8cd e000 	str.w	lr, [sp]
d05e0ce8:	f8cd 9008 	str.w	r9, [sp, #8]
d05e0cec:	f8cd 8004 	str.w	r8, [sp, #4]
d05e0cf0:	f8dc 8000 	ldr.w	r8, [ip]
d05e0cf4:	47c0      	blx	r8
d05e0cf6:	7a23      	ldrb	r3, [r4, #8]
d05e0cf8:	7a62      	ldrb	r2, [r4, #9]
d05e0cfa:	7aa1      	ldrb	r1, [r4, #10]
d05e0cfc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05e0d00:	7ae2      	ldrb	r2, [r4, #11]
d05e0d02:	7828      	ldrb	r0, [r5, #0]
d05e0d04:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0d08:	499a      	ldr	r1, [pc, #616]	; (d05e0f74 <main+0x2d8>)
d05e0d0a:	f8df a2ac 	ldr.w	sl, [pc, #684]	; d05e0fb8 <main+0x31c>
d05e0d0e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e0d12:	f8df 92a8 	ldr.w	r9, [pc, #680]	; d05e0fbc <main+0x320>
d05e0d16:	f8df 82a8 	ldr.w	r8, [pc, #680]	; d05e0fc0 <main+0x324>
d05e0d1a:	685b      	ldr	r3, [r3, #4]
d05e0d1c:	689b      	ldr	r3, [r3, #8]
d05e0d1e:	4798      	blx	r3
d05e0d20:	7a21      	ldrb	r1, [r4, #8]
d05e0d22:	7a60      	ldrb	r0, [r4, #9]
d05e0d24:	232a      	movs	r3, #42	; 0x2a
d05e0d26:	f894 c00a 	ldrb.w	ip, [r4, #10]
d05e0d2a:	220a      	movs	r2, #10
d05e0d2c:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
d05e0d30:	7ae0      	ldrb	r0, [r4, #11]
d05e0d32:	ea41 410c 	orr.w	r1, r1, ip, lsl #16
d05e0d36:	f8df c28c 	ldr.w	ip, [pc, #652]	; d05e0fc4 <main+0x328>
d05e0d3a:	ea41 6100 	orr.w	r1, r1, r0, lsl #24
d05e0d3e:	7828      	ldrb	r0, [r5, #0]
d05e0d40:	f8d1 e00c 	ldr.w	lr, [r1, #12]
d05e0d44:	2158      	movs	r1, #88	; 0x58
d05e0d46:	9702      	str	r7, [sp, #8]
d05e0d48:	f8cd c004 	str.w	ip, [sp, #4]
d05e0d4c:	9600      	str	r6, [sp, #0]
d05e0d4e:	f8de b008 	ldr.w	fp, [lr, #8]
d05e0d52:	47d8      	blx	fp
d05e0d54:	f894 c008 	ldrb.w	ip, [r4, #8]
d05e0d58:	f894 e009 	ldrb.w	lr, [r4, #9]
d05e0d5c:	232e      	movs	r3, #46	; 0x2e
d05e0d5e:	f8ca 0000 	str.w	r0, [sl]
d05e0d62:	220a      	movs	r2, #10
d05e0d64:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d05e0d68:	7aa0      	ldrb	r0, [r4, #10]
d05e0d6a:	2186      	movs	r1, #134	; 0x86
d05e0d6c:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
d05e0d70:	7ae0      	ldrb	r0, [r4, #11]
d05e0d72:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d05e0d76:	4880      	ldr	r0, [pc, #512]	; (d05e0f78 <main+0x2dc>)
d05e0d78:	f8dc c00c 	ldr.w	ip, [ip, #12]
d05e0d7c:	9702      	str	r7, [sp, #8]
d05e0d7e:	9600      	str	r6, [sp, #0]
d05e0d80:	9001      	str	r0, [sp, #4]
d05e0d82:	7828      	ldrb	r0, [r5, #0]
d05e0d84:	f8dc b008 	ldr.w	fp, [ip, #8]
d05e0d88:	47d8      	blx	fp
d05e0d8a:	f894 c008 	ldrb.w	ip, [r4, #8]
d05e0d8e:	f894 e009 	ldrb.w	lr, [r4, #9]
d05e0d92:	233a      	movs	r3, #58	; 0x3a
d05e0d94:	f8c9 0000 	str.w	r0, [r9]
d05e0d98:	220a      	movs	r2, #10
d05e0d9a:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d05e0d9e:	7aa0      	ldrb	r0, [r4, #10]
d05e0da0:	21b8      	movs	r1, #184	; 0xb8
d05e0da2:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
d05e0da6:	7ae0      	ldrb	r0, [r4, #11]
d05e0da8:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d05e0dac:	4873      	ldr	r0, [pc, #460]	; (d05e0f7c <main+0x2e0>)
d05e0dae:	f8dc c00c 	ldr.w	ip, [ip, #12]
d05e0db2:	9702      	str	r7, [sp, #8]
d05e0db4:	9600      	str	r6, [sp, #0]
d05e0db6:	9001      	str	r0, [sp, #4]
d05e0db8:	7828      	ldrb	r0, [r5, #0]
d05e0dba:	f8dc b008 	ldr.w	fp, [ip, #8]
d05e0dbe:	47d8      	blx	fp
d05e0dc0:	f894 c008 	ldrb.w	ip, [r4, #8]
d05e0dc4:	f894 e009 	ldrb.w	lr, [r4, #9]
d05e0dc8:	232c      	movs	r3, #44	; 0x2c
d05e0dca:	f8c8 0000 	str.w	r0, [r8]
d05e0dce:	220a      	movs	r2, #10
d05e0dd0:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d05e0dd4:	7aa0      	ldrb	r0, [r4, #10]
d05e0dd6:	21f6      	movs	r1, #246	; 0xf6
d05e0dd8:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
d05e0ddc:	7ae0      	ldrb	r0, [r4, #11]
d05e0dde:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d05e0de2:	4867      	ldr	r0, [pc, #412]	; (d05e0f80 <main+0x2e4>)
d05e0de4:	f8dc c00c 	ldr.w	ip, [ip, #12]
d05e0de8:	9702      	str	r7, [sp, #8]
d05e0dea:	9600      	str	r6, [sp, #0]
d05e0dec:	9001      	str	r0, [sp, #4]
d05e0dee:	7828      	ldrb	r0, [r5, #0]
d05e0df0:	f8dc b008 	ldr.w	fp, [ip, #8]
d05e0df4:	47d8      	blx	fp
d05e0df6:	f894 c008 	ldrb.w	ip, [r4, #8]
d05e0dfa:	4962      	ldr	r1, [pc, #392]	; (d05e0f84 <main+0x2e8>)
d05e0dfc:	2336      	movs	r3, #54	; 0x36
d05e0dfe:	f894 e009 	ldrb.w	lr, [r4, #9]
d05e0e02:	220a      	movs	r2, #10
d05e0e04:	6008      	str	r0, [r1, #0]
d05e0e06:	f44f 71aa 	mov.w	r1, #340	; 0x154
d05e0e0a:	ea4c 2c0e 	orr.w	ip, ip, lr, lsl #8
d05e0e0e:	7aa0      	ldrb	r0, [r4, #10]
d05e0e10:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
d05e0e14:	7ae0      	ldrb	r0, [r4, #11]
d05e0e16:	ea4c 6c00 	orr.w	ip, ip, r0, lsl #24
d05e0e1a:	485b      	ldr	r0, [pc, #364]	; (d05e0f88 <main+0x2ec>)
d05e0e1c:	f8dc c00c 	ldr.w	ip, [ip, #12]
d05e0e20:	9702      	str	r7, [sp, #8]
d05e0e22:	9001      	str	r0, [sp, #4]
d05e0e24:	9600      	str	r6, [sp, #0]
d05e0e26:	7828      	ldrb	r0, [r5, #0]
d05e0e28:	f8dc 6008 	ldr.w	r6, [ip, #8]
d05e0e2c:	47b0      	blx	r6
d05e0e2e:	7a23      	ldrb	r3, [r4, #8]
d05e0e30:	7a61      	ldrb	r1, [r4, #9]
d05e0e32:	4607      	mov	r7, r0
d05e0e34:	7aa2      	ldrb	r2, [r4, #10]
d05e0e36:	2000      	movs	r0, #0
d05e0e38:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d05e0e3c:	7ae1      	ldrb	r1, [r4, #11]
d05e0e3e:	4e53      	ldr	r6, [pc, #332]	; (d05e0f8c <main+0x2f0>)
d05e0e40:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d05e0e44:	4a52      	ldr	r2, [pc, #328]	; (d05e0f90 <main+0x2f4>)
d05e0e46:	6037      	str	r7, [r6, #0]
d05e0e48:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d05e0e4c:	4951      	ldr	r1, [pc, #324]	; (d05e0f94 <main+0x2f8>)
d05e0e4e:	68db      	ldr	r3, [r3, #12]
d05e0e50:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05e0e52:	4798      	blx	r3
d05e0e54:	7a23      	ldrb	r3, [r4, #8]
d05e0e56:	7a60      	ldrb	r0, [r4, #9]
d05e0e58:	2200      	movs	r2, #0
d05e0e5a:	7aa1      	ldrb	r1, [r4, #10]
d05e0e5c:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d05e0e60:	7ae7      	ldrb	r7, [r4, #11]
d05e0e62:	f8da 0000 	ldr.w	r0, [sl]
d05e0e66:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0e6a:	494b      	ldr	r1, [pc, #300]	; (d05e0f98 <main+0x2fc>)
d05e0e6c:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d05e0e70:	68db      	ldr	r3, [r3, #12]
d05e0e72:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05e0e74:	4798      	blx	r3
d05e0e76:	7a23      	ldrb	r3, [r4, #8]
d05e0e78:	7a60      	ldrb	r0, [r4, #9]
d05e0e7a:	2200      	movs	r2, #0
d05e0e7c:	7aa1      	ldrb	r1, [r4, #10]
d05e0e7e:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d05e0e82:	7ae7      	ldrb	r7, [r4, #11]
d05e0e84:	f8d9 0000 	ldr.w	r0, [r9]
d05e0e88:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0e8c:	4943      	ldr	r1, [pc, #268]	; (d05e0f9c <main+0x300>)
d05e0e8e:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d05e0e92:	68db      	ldr	r3, [r3, #12]
d05e0e94:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05e0e96:	4798      	blx	r3
d05e0e98:	7a23      	ldrb	r3, [r4, #8]
d05e0e9a:	7a60      	ldrb	r0, [r4, #9]
d05e0e9c:	2200      	movs	r2, #0
d05e0e9e:	7aa1      	ldrb	r1, [r4, #10]
d05e0ea0:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d05e0ea4:	7ae7      	ldrb	r7, [r4, #11]
d05e0ea6:	f8d8 0000 	ldr.w	r0, [r8]
d05e0eaa:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0eae:	493c      	ldr	r1, [pc, #240]	; (d05e0fa0 <main+0x304>)
d05e0eb0:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d05e0eb4:	68db      	ldr	r3, [r3, #12]
d05e0eb6:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05e0eb8:	4798      	blx	r3
d05e0eba:	7a23      	ldrb	r3, [r4, #8]
d05e0ebc:	7a60      	ldrb	r0, [r4, #9]
d05e0ebe:	2200      	movs	r2, #0
d05e0ec0:	7aa1      	ldrb	r1, [r4, #10]
d05e0ec2:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d05e0ec6:	7ae7      	ldrb	r7, [r4, #11]
d05e0ec8:	482e      	ldr	r0, [pc, #184]	; (d05e0f84 <main+0x2e8>)
d05e0eca:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0ece:	4935      	ldr	r1, [pc, #212]	; (d05e0fa4 <main+0x308>)
d05e0ed0:	6800      	ldr	r0, [r0, #0]
d05e0ed2:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d05e0ed6:	68db      	ldr	r3, [r3, #12]
d05e0ed8:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05e0eda:	4798      	blx	r3
d05e0edc:	7a23      	ldrb	r3, [r4, #8]
d05e0ede:	7a60      	ldrb	r0, [r4, #9]
d05e0ee0:	2200      	movs	r2, #0
d05e0ee2:	7aa1      	ldrb	r1, [r4, #10]
d05e0ee4:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d05e0ee8:	7ae7      	ldrb	r7, [r4, #11]
d05e0eea:	6830      	ldr	r0, [r6, #0]
d05e0eec:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0ef0:	492d      	ldr	r1, [pc, #180]	; (d05e0fa8 <main+0x30c>)
d05e0ef2:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d05e0ef6:	68db      	ldr	r3, [r3, #12]
d05e0ef8:	6e1b      	ldr	r3, [r3, #96]	; 0x60
d05e0efa:	4798      	blx	r3
d05e0efc:	482b      	ldr	r0, [pc, #172]	; (d05e0fac <main+0x310>)
d05e0efe:	f7ff f9a9 	bl	d05e0254 <set_document>
d05e0f02:	482b      	ldr	r0, [pc, #172]	; (d05e0fb0 <main+0x314>)
d05e0f04:	f7ff f960 	bl	d05e01c8 <set_status>
d05e0f08:	7a23      	ldrb	r3, [r4, #8]
d05e0f0a:	7a62      	ldrb	r2, [r4, #9]
d05e0f0c:	2000      	movs	r0, #0
d05e0f0e:	7aa1      	ldrb	r1, [r4, #10]
d05e0f10:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05e0f14:	7ae2      	ldrb	r2, [r4, #11]
d05e0f16:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0f1a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e0f1e:	68db      	ldr	r3, [r3, #12]
d05e0f20:	6d9b      	ldr	r3, [r3, #88]	; 0x58
d05e0f22:	4798      	blx	r3
d05e0f24:	7a23      	ldrb	r3, [r4, #8]
d05e0f26:	7a62      	ldrb	r2, [r4, #9]
d05e0f28:	7aa1      	ldrb	r1, [r4, #10]
d05e0f2a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05e0f2e:	7ae2      	ldrb	r2, [r4, #11]
d05e0f30:	7828      	ldrb	r0, [r5, #0]
d05e0f32:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0f36:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e0f3a:	685b      	ldr	r3, [r3, #4]
d05e0f3c:	68db      	ldr	r3, [r3, #12]
d05e0f3e:	4798      	blx	r3
d05e0f40:	7a23      	ldrb	r3, [r4, #8]
d05e0f42:	7a62      	ldrb	r2, [r4, #9]
d05e0f44:	7aa1      	ldrb	r1, [r4, #10]
d05e0f46:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d05e0f4a:	7ae2      	ldrb	r2, [r4, #11]
d05e0f4c:	7828      	ldrb	r0, [r5, #0]
d05e0f4e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d05e0f52:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d05e0f56:	685b      	ldr	r3, [r3, #4]
d05e0f58:	695b      	ldr	r3, [r3, #20]
d05e0f5a:	4798      	blx	r3
d05e0f5c:	9b04      	ldr	r3, [sp, #16]
d05e0f5e:	2b01      	cmp	r3, #1
d05e0f60:	dd34      	ble.n	d05e0fcc <main+0x330>
d05e0f62:	9b05      	ldr	r3, [sp, #20]
d05e0f64:	b393      	cbz	r3, d05e0fcc <main+0x330>
d05e0f66:	6858      	ldr	r0, [r3, #4]
d05e0f68:	b380      	cbz	r0, d05e0fcc <main+0x330>
d05e0f6a:	e02d      	b.n	d05e0fc8 <main+0x32c>
d05e0f6c:	2001f000 	.word	0x2001f000
d05e0f70:	d05e2cfc 	.word	0xd05e2cfc
d05e0f74:	d05e08b5 	.word	0xd05e08b5
d05e0f78:	d05e2170 	.word	0xd05e2170
d05e0f7c:	d05e2178 	.word	0xd05e2178
d05e0f80:	d05e2180 	.word	0xd05e2180
d05e0f84:	d05e24f0 	.word	0xd05e24f0
d05e0f88:	d05e2188 	.word	0xd05e2188
d05e0f8c:	d05e24e0 	.word	0xd05e24e0
d05e0f90:	d05e0581 	.word	0xd05e0581
d05e0f94:	d05e04c5 	.word	0xd05e04c5
d05e0f98:	d05e0bf9 	.word	0xd05e0bf9
d05e0f9c:	d05e0345 	.word	0xd05e0345
d05e0fa0:	d05e0b55 	.word	0xd05e0b55
d05e0fa4:	d05e03ad 	.word	0xd05e03ad
d05e0fa8:	d05e0459 	.word	0xd05e0459
d05e0fac:	d05e21c0 	.word	0xd05e21c0
d05e0fb0:	d05e2190 	.word	0xd05e2190
d05e0fb4:	d05e2160 	.word	0xd05e2160
d05e0fb8:	d05e24e8 	.word	0xd05e24e8
d05e0fbc:	d05e24e4 	.word	0xd05e24e4
d05e0fc0:	d05e24ec 	.word	0xd05e24ec
d05e0fc4:	d05e216c 	.word	0xd05e216c
d05e0fc8:	7803      	ldrb	r3, [r0, #0]
d05e0fca:	b91b      	cbnz	r3, d05e0fd4 <main+0x338>
d05e0fcc:	2000      	movs	r0, #0
d05e0fce:	b007      	add	sp, #28
d05e0fd0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05e0fd4:	f7ff fbc4 	bl	d05e0760 <load_file>
d05e0fd8:	e7f8      	b.n	d05e0fcc <main+0x330>
d05e0fda:	bf00      	nop

d05e0fdc <__errno>:
d05e0fdc:	4b01      	ldr	r3, [pc, #4]	; (d05e0fe4 <__errno+0x8>)
d05e0fde:	6818      	ldr	r0, [r3, #0]
d05e0fe0:	4770      	bx	lr
d05e0fe2:	bf00      	nop
d05e0fe4:	d05e2474 	.word	0xd05e2474

d05e0fe8 <memcpy>:
d05e0fe8:	440a      	add	r2, r1
d05e0fea:	4291      	cmp	r1, r2
d05e0fec:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d05e0ff0:	d100      	bne.n	d05e0ff4 <memcpy+0xc>
d05e0ff2:	4770      	bx	lr
d05e0ff4:	b510      	push	{r4, lr}
d05e0ff6:	f811 4b01 	ldrb.w	r4, [r1], #1
d05e0ffa:	f803 4f01 	strb.w	r4, [r3, #1]!
d05e0ffe:	4291      	cmp	r1, r2
d05e1000:	d1f9      	bne.n	d05e0ff6 <memcpy+0xe>
d05e1002:	bd10      	pop	{r4, pc}

d05e1004 <memset>:
d05e1004:	4402      	add	r2, r0
d05e1006:	4603      	mov	r3, r0
d05e1008:	4293      	cmp	r3, r2
d05e100a:	d100      	bne.n	d05e100e <memset+0xa>
d05e100c:	4770      	bx	lr
d05e100e:	f803 1b01 	strb.w	r1, [r3], #1
d05e1012:	e7f9      	b.n	d05e1008 <memset+0x4>

d05e1014 <setbuf>:
d05e1014:	2900      	cmp	r1, #0
d05e1016:	f44f 6380 	mov.w	r3, #1024	; 0x400
d05e101a:	bf0c      	ite	eq
d05e101c:	2202      	moveq	r2, #2
d05e101e:	2200      	movne	r2, #0
d05e1020:	f000 b800 	b.w	d05e1024 <setvbuf>

d05e1024 <setvbuf>:
d05e1024:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d05e1028:	461d      	mov	r5, r3
d05e102a:	4b5d      	ldr	r3, [pc, #372]	; (d05e11a0 <setvbuf+0x17c>)
d05e102c:	681f      	ldr	r7, [r3, #0]
d05e102e:	4604      	mov	r4, r0
d05e1030:	460e      	mov	r6, r1
d05e1032:	4690      	mov	r8, r2
d05e1034:	b127      	cbz	r7, d05e1040 <setvbuf+0x1c>
d05e1036:	69bb      	ldr	r3, [r7, #24]
d05e1038:	b913      	cbnz	r3, d05e1040 <setvbuf+0x1c>
d05e103a:	4638      	mov	r0, r7
d05e103c:	f000 fa0e 	bl	d05e145c <__sinit>
d05e1040:	4b58      	ldr	r3, [pc, #352]	; (d05e11a4 <setvbuf+0x180>)
d05e1042:	429c      	cmp	r4, r3
d05e1044:	d167      	bne.n	d05e1116 <setvbuf+0xf2>
d05e1046:	687c      	ldr	r4, [r7, #4]
d05e1048:	f1b8 0f02 	cmp.w	r8, #2
d05e104c:	d006      	beq.n	d05e105c <setvbuf+0x38>
d05e104e:	f1b8 0f01 	cmp.w	r8, #1
d05e1052:	f200 809f 	bhi.w	d05e1194 <setvbuf+0x170>
d05e1056:	2d00      	cmp	r5, #0
d05e1058:	f2c0 809c 	blt.w	d05e1194 <setvbuf+0x170>
d05e105c:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05e105e:	07db      	lsls	r3, r3, #31
d05e1060:	d405      	bmi.n	d05e106e <setvbuf+0x4a>
d05e1062:	89a3      	ldrh	r3, [r4, #12]
d05e1064:	0598      	lsls	r0, r3, #22
d05e1066:	d402      	bmi.n	d05e106e <setvbuf+0x4a>
d05e1068:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05e106a:	f000 fa95 	bl	d05e1598 <__retarget_lock_acquire_recursive>
d05e106e:	4621      	mov	r1, r4
d05e1070:	4638      	mov	r0, r7
d05e1072:	f000 f95f 	bl	d05e1334 <_fflush_r>
d05e1076:	6b61      	ldr	r1, [r4, #52]	; 0x34
d05e1078:	b141      	cbz	r1, d05e108c <setvbuf+0x68>
d05e107a:	f104 0344 	add.w	r3, r4, #68	; 0x44
d05e107e:	4299      	cmp	r1, r3
d05e1080:	d002      	beq.n	d05e1088 <setvbuf+0x64>
d05e1082:	4638      	mov	r0, r7
d05e1084:	f000 fab6 	bl	d05e15f4 <_free_r>
d05e1088:	2300      	movs	r3, #0
d05e108a:	6363      	str	r3, [r4, #52]	; 0x34
d05e108c:	2300      	movs	r3, #0
d05e108e:	61a3      	str	r3, [r4, #24]
d05e1090:	6063      	str	r3, [r4, #4]
d05e1092:	89a3      	ldrh	r3, [r4, #12]
d05e1094:	0619      	lsls	r1, r3, #24
d05e1096:	d503      	bpl.n	d05e10a0 <setvbuf+0x7c>
d05e1098:	6921      	ldr	r1, [r4, #16]
d05e109a:	4638      	mov	r0, r7
d05e109c:	f000 faaa 	bl	d05e15f4 <_free_r>
d05e10a0:	89a3      	ldrh	r3, [r4, #12]
d05e10a2:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d05e10a6:	f023 0303 	bic.w	r3, r3, #3
d05e10aa:	f1b8 0f02 	cmp.w	r8, #2
d05e10ae:	81a3      	strh	r3, [r4, #12]
d05e10b0:	d06c      	beq.n	d05e118c <setvbuf+0x168>
d05e10b2:	ab01      	add	r3, sp, #4
d05e10b4:	466a      	mov	r2, sp
d05e10b6:	4621      	mov	r1, r4
d05e10b8:	4638      	mov	r0, r7
d05e10ba:	f000 fa6f 	bl	d05e159c <__swhatbuf_r>
d05e10be:	89a3      	ldrh	r3, [r4, #12]
d05e10c0:	4318      	orrs	r0, r3
d05e10c2:	81a0      	strh	r0, [r4, #12]
d05e10c4:	2d00      	cmp	r5, #0
d05e10c6:	d130      	bne.n	d05e112a <setvbuf+0x106>
d05e10c8:	9d00      	ldr	r5, [sp, #0]
d05e10ca:	4628      	mov	r0, r5
d05e10cc:	f000 fa8a 	bl	d05e15e4 <malloc>
d05e10d0:	4606      	mov	r6, r0
d05e10d2:	2800      	cmp	r0, #0
d05e10d4:	d155      	bne.n	d05e1182 <setvbuf+0x15e>
d05e10d6:	f8dd 9000 	ldr.w	r9, [sp]
d05e10da:	45a9      	cmp	r9, r5
d05e10dc:	d14a      	bne.n	d05e1174 <setvbuf+0x150>
d05e10de:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05e10e2:	2200      	movs	r2, #0
d05e10e4:	60a2      	str	r2, [r4, #8]
d05e10e6:	f104 0247 	add.w	r2, r4, #71	; 0x47
d05e10ea:	6022      	str	r2, [r4, #0]
d05e10ec:	6122      	str	r2, [r4, #16]
d05e10ee:	2201      	movs	r2, #1
d05e10f0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d05e10f4:	6162      	str	r2, [r4, #20]
d05e10f6:	6e62      	ldr	r2, [r4, #100]	; 0x64
d05e10f8:	f043 0302 	orr.w	r3, r3, #2
d05e10fc:	07d2      	lsls	r2, r2, #31
d05e10fe:	81a3      	strh	r3, [r4, #12]
d05e1100:	d405      	bmi.n	d05e110e <setvbuf+0xea>
d05e1102:	f413 7f00 	tst.w	r3, #512	; 0x200
d05e1106:	d102      	bne.n	d05e110e <setvbuf+0xea>
d05e1108:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05e110a:	f000 fa46 	bl	d05e159a <__retarget_lock_release_recursive>
d05e110e:	4628      	mov	r0, r5
d05e1110:	b003      	add	sp, #12
d05e1112:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d05e1116:	4b24      	ldr	r3, [pc, #144]	; (d05e11a8 <setvbuf+0x184>)
d05e1118:	429c      	cmp	r4, r3
d05e111a:	d101      	bne.n	d05e1120 <setvbuf+0xfc>
d05e111c:	68bc      	ldr	r4, [r7, #8]
d05e111e:	e793      	b.n	d05e1048 <setvbuf+0x24>
d05e1120:	4b22      	ldr	r3, [pc, #136]	; (d05e11ac <setvbuf+0x188>)
d05e1122:	429c      	cmp	r4, r3
d05e1124:	bf08      	it	eq
d05e1126:	68fc      	ldreq	r4, [r7, #12]
d05e1128:	e78e      	b.n	d05e1048 <setvbuf+0x24>
d05e112a:	2e00      	cmp	r6, #0
d05e112c:	d0cd      	beq.n	d05e10ca <setvbuf+0xa6>
d05e112e:	69bb      	ldr	r3, [r7, #24]
d05e1130:	b913      	cbnz	r3, d05e1138 <setvbuf+0x114>
d05e1132:	4638      	mov	r0, r7
d05e1134:	f000 f992 	bl	d05e145c <__sinit>
d05e1138:	f1b8 0f01 	cmp.w	r8, #1
d05e113c:	bf08      	it	eq
d05e113e:	89a3      	ldrheq	r3, [r4, #12]
d05e1140:	6026      	str	r6, [r4, #0]
d05e1142:	bf04      	itt	eq
d05e1144:	f043 0301 	orreq.w	r3, r3, #1
d05e1148:	81a3      	strheq	r3, [r4, #12]
d05e114a:	89a2      	ldrh	r2, [r4, #12]
d05e114c:	f012 0308 	ands.w	r3, r2, #8
d05e1150:	e9c4 6504 	strd	r6, r5, [r4, #16]
d05e1154:	d01c      	beq.n	d05e1190 <setvbuf+0x16c>
d05e1156:	07d3      	lsls	r3, r2, #31
d05e1158:	bf41      	itttt	mi
d05e115a:	2300      	movmi	r3, #0
d05e115c:	426d      	negmi	r5, r5
d05e115e:	60a3      	strmi	r3, [r4, #8]
d05e1160:	61a5      	strmi	r5, [r4, #24]
d05e1162:	bf58      	it	pl
d05e1164:	60a5      	strpl	r5, [r4, #8]
d05e1166:	6e65      	ldr	r5, [r4, #100]	; 0x64
d05e1168:	f015 0501 	ands.w	r5, r5, #1
d05e116c:	d115      	bne.n	d05e119a <setvbuf+0x176>
d05e116e:	f412 7f00 	tst.w	r2, #512	; 0x200
d05e1172:	e7c8      	b.n	d05e1106 <setvbuf+0xe2>
d05e1174:	4648      	mov	r0, r9
d05e1176:	f000 fa35 	bl	d05e15e4 <malloc>
d05e117a:	4606      	mov	r6, r0
d05e117c:	2800      	cmp	r0, #0
d05e117e:	d0ae      	beq.n	d05e10de <setvbuf+0xba>
d05e1180:	464d      	mov	r5, r9
d05e1182:	89a3      	ldrh	r3, [r4, #12]
d05e1184:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d05e1188:	81a3      	strh	r3, [r4, #12]
d05e118a:	e7d0      	b.n	d05e112e <setvbuf+0x10a>
d05e118c:	2500      	movs	r5, #0
d05e118e:	e7a8      	b.n	d05e10e2 <setvbuf+0xbe>
d05e1190:	60a3      	str	r3, [r4, #8]
d05e1192:	e7e8      	b.n	d05e1166 <setvbuf+0x142>
d05e1194:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d05e1198:	e7b9      	b.n	d05e110e <setvbuf+0xea>
d05e119a:	2500      	movs	r5, #0
d05e119c:	e7b7      	b.n	d05e110e <setvbuf+0xea>
d05e119e:	bf00      	nop
d05e11a0:	d05e2474 	.word	0xd05e2474
d05e11a4:	d05e22ec 	.word	0xd05e22ec
d05e11a8:	d05e230c 	.word	0xd05e230c
d05e11ac:	d05e22cc 	.word	0xd05e22cc

d05e11b0 <sniprintf>:
d05e11b0:	b40c      	push	{r2, r3}
d05e11b2:	b530      	push	{r4, r5, lr}
d05e11b4:	4b17      	ldr	r3, [pc, #92]	; (d05e1214 <sniprintf+0x64>)
d05e11b6:	1e0c      	subs	r4, r1, #0
d05e11b8:	681d      	ldr	r5, [r3, #0]
d05e11ba:	b09d      	sub	sp, #116	; 0x74
d05e11bc:	da08      	bge.n	d05e11d0 <sniprintf+0x20>
d05e11be:	238b      	movs	r3, #139	; 0x8b
d05e11c0:	602b      	str	r3, [r5, #0]
d05e11c2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e11c6:	b01d      	add	sp, #116	; 0x74
d05e11c8:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d05e11cc:	b002      	add	sp, #8
d05e11ce:	4770      	bx	lr
d05e11d0:	f44f 7302 	mov.w	r3, #520	; 0x208
d05e11d4:	f8ad 3014 	strh.w	r3, [sp, #20]
d05e11d8:	bf14      	ite	ne
d05e11da:	f104 33ff 	addne.w	r3, r4, #4294967295	; 0xffffffff
d05e11de:	4623      	moveq	r3, r4
d05e11e0:	9304      	str	r3, [sp, #16]
d05e11e2:	9307      	str	r3, [sp, #28]
d05e11e4:	f64f 73ff 	movw	r3, #65535	; 0xffff
d05e11e8:	9002      	str	r0, [sp, #8]
d05e11ea:	9006      	str	r0, [sp, #24]
d05e11ec:	f8ad 3016 	strh.w	r3, [sp, #22]
d05e11f0:	9a20      	ldr	r2, [sp, #128]	; 0x80
d05e11f2:	ab21      	add	r3, sp, #132	; 0x84
d05e11f4:	a902      	add	r1, sp, #8
d05e11f6:	4628      	mov	r0, r5
d05e11f8:	9301      	str	r3, [sp, #4]
d05e11fa:	f000 fb01 	bl	d05e1800 <_svfiprintf_r>
d05e11fe:	1c43      	adds	r3, r0, #1
d05e1200:	bfbc      	itt	lt
d05e1202:	238b      	movlt	r3, #139	; 0x8b
d05e1204:	602b      	strlt	r3, [r5, #0]
d05e1206:	2c00      	cmp	r4, #0
d05e1208:	d0dd      	beq.n	d05e11c6 <sniprintf+0x16>
d05e120a:	9b02      	ldr	r3, [sp, #8]
d05e120c:	2200      	movs	r2, #0
d05e120e:	701a      	strb	r2, [r3, #0]
d05e1210:	e7d9      	b.n	d05e11c6 <sniprintf+0x16>
d05e1212:	bf00      	nop
d05e1214:	d05e2474 	.word	0xd05e2474

d05e1218 <strlen>:
d05e1218:	4603      	mov	r3, r0
d05e121a:	f813 2b01 	ldrb.w	r2, [r3], #1
d05e121e:	2a00      	cmp	r2, #0
d05e1220:	d1fb      	bne.n	d05e121a <strlen+0x2>
d05e1222:	1a18      	subs	r0, r3, r0
d05e1224:	3801      	subs	r0, #1
d05e1226:	4770      	bx	lr

d05e1228 <__sflush_r>:
d05e1228:	898a      	ldrh	r2, [r1, #12]
d05e122a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d05e122e:	4605      	mov	r5, r0
d05e1230:	0710      	lsls	r0, r2, #28
d05e1232:	460c      	mov	r4, r1
d05e1234:	d458      	bmi.n	d05e12e8 <__sflush_r+0xc0>
d05e1236:	684b      	ldr	r3, [r1, #4]
d05e1238:	2b00      	cmp	r3, #0
d05e123a:	dc05      	bgt.n	d05e1248 <__sflush_r+0x20>
d05e123c:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d05e123e:	2b00      	cmp	r3, #0
d05e1240:	dc02      	bgt.n	d05e1248 <__sflush_r+0x20>
d05e1242:	2000      	movs	r0, #0
d05e1244:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d05e1248:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d05e124a:	2e00      	cmp	r6, #0
d05e124c:	d0f9      	beq.n	d05e1242 <__sflush_r+0x1a>
d05e124e:	2300      	movs	r3, #0
d05e1250:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d05e1254:	682f      	ldr	r7, [r5, #0]
d05e1256:	602b      	str	r3, [r5, #0]
d05e1258:	d032      	beq.n	d05e12c0 <__sflush_r+0x98>
d05e125a:	6d60      	ldr	r0, [r4, #84]	; 0x54
d05e125c:	89a3      	ldrh	r3, [r4, #12]
d05e125e:	075a      	lsls	r2, r3, #29
d05e1260:	d505      	bpl.n	d05e126e <__sflush_r+0x46>
d05e1262:	6863      	ldr	r3, [r4, #4]
d05e1264:	1ac0      	subs	r0, r0, r3
d05e1266:	6b63      	ldr	r3, [r4, #52]	; 0x34
d05e1268:	b10b      	cbz	r3, d05e126e <__sflush_r+0x46>
d05e126a:	6c23      	ldr	r3, [r4, #64]	; 0x40
d05e126c:	1ac0      	subs	r0, r0, r3
d05e126e:	2300      	movs	r3, #0
d05e1270:	4602      	mov	r2, r0
d05e1272:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d05e1274:	6a21      	ldr	r1, [r4, #32]
d05e1276:	4628      	mov	r0, r5
d05e1278:	47b0      	blx	r6
d05e127a:	1c43      	adds	r3, r0, #1
d05e127c:	89a3      	ldrh	r3, [r4, #12]
d05e127e:	d106      	bne.n	d05e128e <__sflush_r+0x66>
d05e1280:	6829      	ldr	r1, [r5, #0]
d05e1282:	291d      	cmp	r1, #29
d05e1284:	d82c      	bhi.n	d05e12e0 <__sflush_r+0xb8>
d05e1286:	4a2a      	ldr	r2, [pc, #168]	; (d05e1330 <__sflush_r+0x108>)
d05e1288:	40ca      	lsrs	r2, r1
d05e128a:	07d6      	lsls	r6, r2, #31
d05e128c:	d528      	bpl.n	d05e12e0 <__sflush_r+0xb8>
d05e128e:	2200      	movs	r2, #0
d05e1290:	6062      	str	r2, [r4, #4]
d05e1292:	04d9      	lsls	r1, r3, #19
d05e1294:	6922      	ldr	r2, [r4, #16]
d05e1296:	6022      	str	r2, [r4, #0]
d05e1298:	d504      	bpl.n	d05e12a4 <__sflush_r+0x7c>
d05e129a:	1c42      	adds	r2, r0, #1
d05e129c:	d101      	bne.n	d05e12a2 <__sflush_r+0x7a>
d05e129e:	682b      	ldr	r3, [r5, #0]
d05e12a0:	b903      	cbnz	r3, d05e12a4 <__sflush_r+0x7c>
d05e12a2:	6560      	str	r0, [r4, #84]	; 0x54
d05e12a4:	6b61      	ldr	r1, [r4, #52]	; 0x34
d05e12a6:	602f      	str	r7, [r5, #0]
d05e12a8:	2900      	cmp	r1, #0
d05e12aa:	d0ca      	beq.n	d05e1242 <__sflush_r+0x1a>
d05e12ac:	f104 0344 	add.w	r3, r4, #68	; 0x44
d05e12b0:	4299      	cmp	r1, r3
d05e12b2:	d002      	beq.n	d05e12ba <__sflush_r+0x92>
d05e12b4:	4628      	mov	r0, r5
d05e12b6:	f000 f99d 	bl	d05e15f4 <_free_r>
d05e12ba:	2000      	movs	r0, #0
d05e12bc:	6360      	str	r0, [r4, #52]	; 0x34
d05e12be:	e7c1      	b.n	d05e1244 <__sflush_r+0x1c>
d05e12c0:	6a21      	ldr	r1, [r4, #32]
d05e12c2:	2301      	movs	r3, #1
d05e12c4:	4628      	mov	r0, r5
d05e12c6:	47b0      	blx	r6
d05e12c8:	1c41      	adds	r1, r0, #1
d05e12ca:	d1c7      	bne.n	d05e125c <__sflush_r+0x34>
d05e12cc:	682b      	ldr	r3, [r5, #0]
d05e12ce:	2b00      	cmp	r3, #0
d05e12d0:	d0c4      	beq.n	d05e125c <__sflush_r+0x34>
d05e12d2:	2b1d      	cmp	r3, #29
d05e12d4:	d001      	beq.n	d05e12da <__sflush_r+0xb2>
d05e12d6:	2b16      	cmp	r3, #22
d05e12d8:	d101      	bne.n	d05e12de <__sflush_r+0xb6>
d05e12da:	602f      	str	r7, [r5, #0]
d05e12dc:	e7b1      	b.n	d05e1242 <__sflush_r+0x1a>
d05e12de:	89a3      	ldrh	r3, [r4, #12]
d05e12e0:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05e12e4:	81a3      	strh	r3, [r4, #12]
d05e12e6:	e7ad      	b.n	d05e1244 <__sflush_r+0x1c>
d05e12e8:	690f      	ldr	r7, [r1, #16]
d05e12ea:	2f00      	cmp	r7, #0
d05e12ec:	d0a9      	beq.n	d05e1242 <__sflush_r+0x1a>
d05e12ee:	0793      	lsls	r3, r2, #30
d05e12f0:	680e      	ldr	r6, [r1, #0]
d05e12f2:	bf08      	it	eq
d05e12f4:	694b      	ldreq	r3, [r1, #20]
d05e12f6:	600f      	str	r7, [r1, #0]
d05e12f8:	bf18      	it	ne
d05e12fa:	2300      	movne	r3, #0
d05e12fc:	eba6 0807 	sub.w	r8, r6, r7
d05e1300:	608b      	str	r3, [r1, #8]
d05e1302:	f1b8 0f00 	cmp.w	r8, #0
d05e1306:	dd9c      	ble.n	d05e1242 <__sflush_r+0x1a>
d05e1308:	6a21      	ldr	r1, [r4, #32]
d05e130a:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d05e130c:	4643      	mov	r3, r8
d05e130e:	463a      	mov	r2, r7
d05e1310:	4628      	mov	r0, r5
d05e1312:	47b0      	blx	r6
d05e1314:	2800      	cmp	r0, #0
d05e1316:	dc06      	bgt.n	d05e1326 <__sflush_r+0xfe>
d05e1318:	89a3      	ldrh	r3, [r4, #12]
d05e131a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05e131e:	81a3      	strh	r3, [r4, #12]
d05e1320:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e1324:	e78e      	b.n	d05e1244 <__sflush_r+0x1c>
d05e1326:	4407      	add	r7, r0
d05e1328:	eba8 0800 	sub.w	r8, r8, r0
d05e132c:	e7e9      	b.n	d05e1302 <__sflush_r+0xda>
d05e132e:	bf00      	nop
d05e1330:	20400001 	.word	0x20400001

d05e1334 <_fflush_r>:
d05e1334:	b538      	push	{r3, r4, r5, lr}
d05e1336:	690b      	ldr	r3, [r1, #16]
d05e1338:	4605      	mov	r5, r0
d05e133a:	460c      	mov	r4, r1
d05e133c:	b913      	cbnz	r3, d05e1344 <_fflush_r+0x10>
d05e133e:	2500      	movs	r5, #0
d05e1340:	4628      	mov	r0, r5
d05e1342:	bd38      	pop	{r3, r4, r5, pc}
d05e1344:	b118      	cbz	r0, d05e134e <_fflush_r+0x1a>
d05e1346:	6983      	ldr	r3, [r0, #24]
d05e1348:	b90b      	cbnz	r3, d05e134e <_fflush_r+0x1a>
d05e134a:	f000 f887 	bl	d05e145c <__sinit>
d05e134e:	4b14      	ldr	r3, [pc, #80]	; (d05e13a0 <_fflush_r+0x6c>)
d05e1350:	429c      	cmp	r4, r3
d05e1352:	d11b      	bne.n	d05e138c <_fflush_r+0x58>
d05e1354:	686c      	ldr	r4, [r5, #4]
d05e1356:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d05e135a:	2b00      	cmp	r3, #0
d05e135c:	d0ef      	beq.n	d05e133e <_fflush_r+0xa>
d05e135e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d05e1360:	07d0      	lsls	r0, r2, #31
d05e1362:	d404      	bmi.n	d05e136e <_fflush_r+0x3a>
d05e1364:	0599      	lsls	r1, r3, #22
d05e1366:	d402      	bmi.n	d05e136e <_fflush_r+0x3a>
d05e1368:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05e136a:	f000 f915 	bl	d05e1598 <__retarget_lock_acquire_recursive>
d05e136e:	4628      	mov	r0, r5
d05e1370:	4621      	mov	r1, r4
d05e1372:	f7ff ff59 	bl	d05e1228 <__sflush_r>
d05e1376:	6e63      	ldr	r3, [r4, #100]	; 0x64
d05e1378:	07da      	lsls	r2, r3, #31
d05e137a:	4605      	mov	r5, r0
d05e137c:	d4e0      	bmi.n	d05e1340 <_fflush_r+0xc>
d05e137e:	89a3      	ldrh	r3, [r4, #12]
d05e1380:	059b      	lsls	r3, r3, #22
d05e1382:	d4dd      	bmi.n	d05e1340 <_fflush_r+0xc>
d05e1384:	6da0      	ldr	r0, [r4, #88]	; 0x58
d05e1386:	f000 f908 	bl	d05e159a <__retarget_lock_release_recursive>
d05e138a:	e7d9      	b.n	d05e1340 <_fflush_r+0xc>
d05e138c:	4b05      	ldr	r3, [pc, #20]	; (d05e13a4 <_fflush_r+0x70>)
d05e138e:	429c      	cmp	r4, r3
d05e1390:	d101      	bne.n	d05e1396 <_fflush_r+0x62>
d05e1392:	68ac      	ldr	r4, [r5, #8]
d05e1394:	e7df      	b.n	d05e1356 <_fflush_r+0x22>
d05e1396:	4b04      	ldr	r3, [pc, #16]	; (d05e13a8 <_fflush_r+0x74>)
d05e1398:	429c      	cmp	r4, r3
d05e139a:	bf08      	it	eq
d05e139c:	68ec      	ldreq	r4, [r5, #12]
d05e139e:	e7da      	b.n	d05e1356 <_fflush_r+0x22>
d05e13a0:	d05e22ec 	.word	0xd05e22ec
d05e13a4:	d05e230c 	.word	0xd05e230c
d05e13a8:	d05e22cc 	.word	0xd05e22cc

d05e13ac <std>:
d05e13ac:	2300      	movs	r3, #0
d05e13ae:	b510      	push	{r4, lr}
d05e13b0:	4604      	mov	r4, r0
d05e13b2:	e9c0 3300 	strd	r3, r3, [r0]
d05e13b6:	e9c0 3304 	strd	r3, r3, [r0, #16]
d05e13ba:	6083      	str	r3, [r0, #8]
d05e13bc:	8181      	strh	r1, [r0, #12]
d05e13be:	6643      	str	r3, [r0, #100]	; 0x64
d05e13c0:	81c2      	strh	r2, [r0, #14]
d05e13c2:	6183      	str	r3, [r0, #24]
d05e13c4:	4619      	mov	r1, r3
d05e13c6:	2208      	movs	r2, #8
d05e13c8:	305c      	adds	r0, #92	; 0x5c
d05e13ca:	f7ff fe1b 	bl	d05e1004 <memset>
d05e13ce:	4b05      	ldr	r3, [pc, #20]	; (d05e13e4 <std+0x38>)
d05e13d0:	6263      	str	r3, [r4, #36]	; 0x24
d05e13d2:	4b05      	ldr	r3, [pc, #20]	; (d05e13e8 <std+0x3c>)
d05e13d4:	62a3      	str	r3, [r4, #40]	; 0x28
d05e13d6:	4b05      	ldr	r3, [pc, #20]	; (d05e13ec <std+0x40>)
d05e13d8:	62e3      	str	r3, [r4, #44]	; 0x2c
d05e13da:	4b05      	ldr	r3, [pc, #20]	; (d05e13f0 <std+0x44>)
d05e13dc:	6224      	str	r4, [r4, #32]
d05e13de:	6323      	str	r3, [r4, #48]	; 0x30
d05e13e0:	bd10      	pop	{r4, pc}
d05e13e2:	bf00      	nop
d05e13e4:	d05e1d29 	.word	0xd05e1d29
d05e13e8:	d05e1d4b 	.word	0xd05e1d4b
d05e13ec:	d05e1d83 	.word	0xd05e1d83
d05e13f0:	d05e1da7 	.word	0xd05e1da7

d05e13f4 <_cleanup_r>:
d05e13f4:	4901      	ldr	r1, [pc, #4]	; (d05e13fc <_cleanup_r+0x8>)
d05e13f6:	f000 b8af 	b.w	d05e1558 <_fwalk_reent>
d05e13fa:	bf00      	nop
d05e13fc:	d05e1335 	.word	0xd05e1335

d05e1400 <__sfmoreglue>:
d05e1400:	b570      	push	{r4, r5, r6, lr}
d05e1402:	1e4a      	subs	r2, r1, #1
d05e1404:	2568      	movs	r5, #104	; 0x68
d05e1406:	4355      	muls	r5, r2
d05e1408:	460e      	mov	r6, r1
d05e140a:	f105 0174 	add.w	r1, r5, #116	; 0x74
d05e140e:	f000 f941 	bl	d05e1694 <_malloc_r>
d05e1412:	4604      	mov	r4, r0
d05e1414:	b140      	cbz	r0, d05e1428 <__sfmoreglue+0x28>
d05e1416:	2100      	movs	r1, #0
d05e1418:	e9c0 1600 	strd	r1, r6, [r0]
d05e141c:	300c      	adds	r0, #12
d05e141e:	60a0      	str	r0, [r4, #8]
d05e1420:	f105 0268 	add.w	r2, r5, #104	; 0x68
d05e1424:	f7ff fdee 	bl	d05e1004 <memset>
d05e1428:	4620      	mov	r0, r4
d05e142a:	bd70      	pop	{r4, r5, r6, pc}

d05e142c <__sfp_lock_acquire>:
d05e142c:	4801      	ldr	r0, [pc, #4]	; (d05e1434 <__sfp_lock_acquire+0x8>)
d05e142e:	f000 b8b3 	b.w	d05e1598 <__retarget_lock_acquire_recursive>
d05e1432:	bf00      	nop
d05e1434:	d05e2d78 	.word	0xd05e2d78

d05e1438 <__sfp_lock_release>:
d05e1438:	4801      	ldr	r0, [pc, #4]	; (d05e1440 <__sfp_lock_release+0x8>)
d05e143a:	f000 b8ae 	b.w	d05e159a <__retarget_lock_release_recursive>
d05e143e:	bf00      	nop
d05e1440:	d05e2d78 	.word	0xd05e2d78

d05e1444 <__sinit_lock_acquire>:
d05e1444:	4801      	ldr	r0, [pc, #4]	; (d05e144c <__sinit_lock_acquire+0x8>)
d05e1446:	f000 b8a7 	b.w	d05e1598 <__retarget_lock_acquire_recursive>
d05e144a:	bf00      	nop
d05e144c:	d05e2d73 	.word	0xd05e2d73

d05e1450 <__sinit_lock_release>:
d05e1450:	4801      	ldr	r0, [pc, #4]	; (d05e1458 <__sinit_lock_release+0x8>)
d05e1452:	f000 b8a2 	b.w	d05e159a <__retarget_lock_release_recursive>
d05e1456:	bf00      	nop
d05e1458:	d05e2d73 	.word	0xd05e2d73

d05e145c <__sinit>:
d05e145c:	b510      	push	{r4, lr}
d05e145e:	4604      	mov	r4, r0
d05e1460:	f7ff fff0 	bl	d05e1444 <__sinit_lock_acquire>
d05e1464:	69a3      	ldr	r3, [r4, #24]
d05e1466:	b11b      	cbz	r3, d05e1470 <__sinit+0x14>
d05e1468:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d05e146c:	f7ff bff0 	b.w	d05e1450 <__sinit_lock_release>
d05e1470:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d05e1474:	6523      	str	r3, [r4, #80]	; 0x50
d05e1476:	4b13      	ldr	r3, [pc, #76]	; (d05e14c4 <__sinit+0x68>)
d05e1478:	4a13      	ldr	r2, [pc, #76]	; (d05e14c8 <__sinit+0x6c>)
d05e147a:	681b      	ldr	r3, [r3, #0]
d05e147c:	62a2      	str	r2, [r4, #40]	; 0x28
d05e147e:	42a3      	cmp	r3, r4
d05e1480:	bf04      	itt	eq
d05e1482:	2301      	moveq	r3, #1
d05e1484:	61a3      	streq	r3, [r4, #24]
d05e1486:	4620      	mov	r0, r4
d05e1488:	f000 f820 	bl	d05e14cc <__sfp>
d05e148c:	6060      	str	r0, [r4, #4]
d05e148e:	4620      	mov	r0, r4
d05e1490:	f000 f81c 	bl	d05e14cc <__sfp>
d05e1494:	60a0      	str	r0, [r4, #8]
d05e1496:	4620      	mov	r0, r4
d05e1498:	f000 f818 	bl	d05e14cc <__sfp>
d05e149c:	2200      	movs	r2, #0
d05e149e:	60e0      	str	r0, [r4, #12]
d05e14a0:	2104      	movs	r1, #4
d05e14a2:	6860      	ldr	r0, [r4, #4]
d05e14a4:	f7ff ff82 	bl	d05e13ac <std>
d05e14a8:	68a0      	ldr	r0, [r4, #8]
d05e14aa:	2201      	movs	r2, #1
d05e14ac:	2109      	movs	r1, #9
d05e14ae:	f7ff ff7d 	bl	d05e13ac <std>
d05e14b2:	68e0      	ldr	r0, [r4, #12]
d05e14b4:	2202      	movs	r2, #2
d05e14b6:	2112      	movs	r1, #18
d05e14b8:	f7ff ff78 	bl	d05e13ac <std>
d05e14bc:	2301      	movs	r3, #1
d05e14be:	61a3      	str	r3, [r4, #24]
d05e14c0:	e7d2      	b.n	d05e1468 <__sinit+0xc>
d05e14c2:	bf00      	nop
d05e14c4:	d05e22c8 	.word	0xd05e22c8
d05e14c8:	d05e13f5 	.word	0xd05e13f5

d05e14cc <__sfp>:
d05e14cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e14ce:	4607      	mov	r7, r0
d05e14d0:	f7ff ffac 	bl	d05e142c <__sfp_lock_acquire>
d05e14d4:	4b1e      	ldr	r3, [pc, #120]	; (d05e1550 <__sfp+0x84>)
d05e14d6:	681e      	ldr	r6, [r3, #0]
d05e14d8:	69b3      	ldr	r3, [r6, #24]
d05e14da:	b913      	cbnz	r3, d05e14e2 <__sfp+0x16>
d05e14dc:	4630      	mov	r0, r6
d05e14de:	f7ff ffbd 	bl	d05e145c <__sinit>
d05e14e2:	3648      	adds	r6, #72	; 0x48
d05e14e4:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d05e14e8:	3b01      	subs	r3, #1
d05e14ea:	d503      	bpl.n	d05e14f4 <__sfp+0x28>
d05e14ec:	6833      	ldr	r3, [r6, #0]
d05e14ee:	b30b      	cbz	r3, d05e1534 <__sfp+0x68>
d05e14f0:	6836      	ldr	r6, [r6, #0]
d05e14f2:	e7f7      	b.n	d05e14e4 <__sfp+0x18>
d05e14f4:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d05e14f8:	b9d5      	cbnz	r5, d05e1530 <__sfp+0x64>
d05e14fa:	4b16      	ldr	r3, [pc, #88]	; (d05e1554 <__sfp+0x88>)
d05e14fc:	60e3      	str	r3, [r4, #12]
d05e14fe:	f104 0058 	add.w	r0, r4, #88	; 0x58
d05e1502:	6665      	str	r5, [r4, #100]	; 0x64
d05e1504:	f000 f847 	bl	d05e1596 <__retarget_lock_init_recursive>
d05e1508:	f7ff ff96 	bl	d05e1438 <__sfp_lock_release>
d05e150c:	e9c4 5501 	strd	r5, r5, [r4, #4]
d05e1510:	e9c4 5504 	strd	r5, r5, [r4, #16]
d05e1514:	6025      	str	r5, [r4, #0]
d05e1516:	61a5      	str	r5, [r4, #24]
d05e1518:	2208      	movs	r2, #8
d05e151a:	4629      	mov	r1, r5
d05e151c:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d05e1520:	f7ff fd70 	bl	d05e1004 <memset>
d05e1524:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d05e1528:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d05e152c:	4620      	mov	r0, r4
d05e152e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e1530:	3468      	adds	r4, #104	; 0x68
d05e1532:	e7d9      	b.n	d05e14e8 <__sfp+0x1c>
d05e1534:	2104      	movs	r1, #4
d05e1536:	4638      	mov	r0, r7
d05e1538:	f7ff ff62 	bl	d05e1400 <__sfmoreglue>
d05e153c:	4604      	mov	r4, r0
d05e153e:	6030      	str	r0, [r6, #0]
d05e1540:	2800      	cmp	r0, #0
d05e1542:	d1d5      	bne.n	d05e14f0 <__sfp+0x24>
d05e1544:	f7ff ff78 	bl	d05e1438 <__sfp_lock_release>
d05e1548:	230c      	movs	r3, #12
d05e154a:	603b      	str	r3, [r7, #0]
d05e154c:	e7ee      	b.n	d05e152c <__sfp+0x60>
d05e154e:	bf00      	nop
d05e1550:	d05e22c8 	.word	0xd05e22c8
d05e1554:	ffff0001 	.word	0xffff0001

d05e1558 <_fwalk_reent>:
d05e1558:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d05e155c:	4606      	mov	r6, r0
d05e155e:	4688      	mov	r8, r1
d05e1560:	f100 0448 	add.w	r4, r0, #72	; 0x48
d05e1564:	2700      	movs	r7, #0
d05e1566:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d05e156a:	f1b9 0901 	subs.w	r9, r9, #1
d05e156e:	d505      	bpl.n	d05e157c <_fwalk_reent+0x24>
d05e1570:	6824      	ldr	r4, [r4, #0]
d05e1572:	2c00      	cmp	r4, #0
d05e1574:	d1f7      	bne.n	d05e1566 <_fwalk_reent+0xe>
d05e1576:	4638      	mov	r0, r7
d05e1578:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d05e157c:	89ab      	ldrh	r3, [r5, #12]
d05e157e:	2b01      	cmp	r3, #1
d05e1580:	d907      	bls.n	d05e1592 <_fwalk_reent+0x3a>
d05e1582:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d05e1586:	3301      	adds	r3, #1
d05e1588:	d003      	beq.n	d05e1592 <_fwalk_reent+0x3a>
d05e158a:	4629      	mov	r1, r5
d05e158c:	4630      	mov	r0, r6
d05e158e:	47c0      	blx	r8
d05e1590:	4307      	orrs	r7, r0
d05e1592:	3568      	adds	r5, #104	; 0x68
d05e1594:	e7e9      	b.n	d05e156a <_fwalk_reent+0x12>

d05e1596 <__retarget_lock_init_recursive>:
d05e1596:	4770      	bx	lr

d05e1598 <__retarget_lock_acquire_recursive>:
d05e1598:	4770      	bx	lr

d05e159a <__retarget_lock_release_recursive>:
d05e159a:	4770      	bx	lr

d05e159c <__swhatbuf_r>:
d05e159c:	b570      	push	{r4, r5, r6, lr}
d05e159e:	460e      	mov	r6, r1
d05e15a0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05e15a4:	2900      	cmp	r1, #0
d05e15a6:	b096      	sub	sp, #88	; 0x58
d05e15a8:	4614      	mov	r4, r2
d05e15aa:	461d      	mov	r5, r3
d05e15ac:	da07      	bge.n	d05e15be <__swhatbuf_r+0x22>
d05e15ae:	2300      	movs	r3, #0
d05e15b0:	602b      	str	r3, [r5, #0]
d05e15b2:	89b3      	ldrh	r3, [r6, #12]
d05e15b4:	061a      	lsls	r2, r3, #24
d05e15b6:	d410      	bmi.n	d05e15da <__swhatbuf_r+0x3e>
d05e15b8:	f44f 6380 	mov.w	r3, #1024	; 0x400
d05e15bc:	e00e      	b.n	d05e15dc <__swhatbuf_r+0x40>
d05e15be:	466a      	mov	r2, sp
d05e15c0:	f000 fc06 	bl	d05e1dd0 <_fstat_r>
d05e15c4:	2800      	cmp	r0, #0
d05e15c6:	dbf2      	blt.n	d05e15ae <__swhatbuf_r+0x12>
d05e15c8:	9a01      	ldr	r2, [sp, #4]
d05e15ca:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d05e15ce:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d05e15d2:	425a      	negs	r2, r3
d05e15d4:	415a      	adcs	r2, r3
d05e15d6:	602a      	str	r2, [r5, #0]
d05e15d8:	e7ee      	b.n	d05e15b8 <__swhatbuf_r+0x1c>
d05e15da:	2340      	movs	r3, #64	; 0x40
d05e15dc:	2000      	movs	r0, #0
d05e15de:	6023      	str	r3, [r4, #0]
d05e15e0:	b016      	add	sp, #88	; 0x58
d05e15e2:	bd70      	pop	{r4, r5, r6, pc}

d05e15e4 <malloc>:
d05e15e4:	4b02      	ldr	r3, [pc, #8]	; (d05e15f0 <malloc+0xc>)
d05e15e6:	4601      	mov	r1, r0
d05e15e8:	6818      	ldr	r0, [r3, #0]
d05e15ea:	f000 b853 	b.w	d05e1694 <_malloc_r>
d05e15ee:	bf00      	nop
d05e15f0:	d05e2474 	.word	0xd05e2474

d05e15f4 <_free_r>:
d05e15f4:	b537      	push	{r0, r1, r2, r4, r5, lr}
d05e15f6:	2900      	cmp	r1, #0
d05e15f8:	d048      	beq.n	d05e168c <_free_r+0x98>
d05e15fa:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05e15fe:	9001      	str	r0, [sp, #4]
d05e1600:	2b00      	cmp	r3, #0
d05e1602:	f1a1 0404 	sub.w	r4, r1, #4
d05e1606:	bfb8      	it	lt
d05e1608:	18e4      	addlt	r4, r4, r3
d05e160a:	f000 fc73 	bl	d05e1ef4 <__malloc_lock>
d05e160e:	4a20      	ldr	r2, [pc, #128]	; (d05e1690 <_free_r+0x9c>)
d05e1610:	9801      	ldr	r0, [sp, #4]
d05e1612:	6813      	ldr	r3, [r2, #0]
d05e1614:	4615      	mov	r5, r2
d05e1616:	b933      	cbnz	r3, d05e1626 <_free_r+0x32>
d05e1618:	6063      	str	r3, [r4, #4]
d05e161a:	6014      	str	r4, [r2, #0]
d05e161c:	b003      	add	sp, #12
d05e161e:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d05e1622:	f000 bc6d 	b.w	d05e1f00 <__malloc_unlock>
d05e1626:	42a3      	cmp	r3, r4
d05e1628:	d90b      	bls.n	d05e1642 <_free_r+0x4e>
d05e162a:	6821      	ldr	r1, [r4, #0]
d05e162c:	1862      	adds	r2, r4, r1
d05e162e:	4293      	cmp	r3, r2
d05e1630:	bf04      	itt	eq
d05e1632:	681a      	ldreq	r2, [r3, #0]
d05e1634:	685b      	ldreq	r3, [r3, #4]
d05e1636:	6063      	str	r3, [r4, #4]
d05e1638:	bf04      	itt	eq
d05e163a:	1852      	addeq	r2, r2, r1
d05e163c:	6022      	streq	r2, [r4, #0]
d05e163e:	602c      	str	r4, [r5, #0]
d05e1640:	e7ec      	b.n	d05e161c <_free_r+0x28>
d05e1642:	461a      	mov	r2, r3
d05e1644:	685b      	ldr	r3, [r3, #4]
d05e1646:	b10b      	cbz	r3, d05e164c <_free_r+0x58>
d05e1648:	42a3      	cmp	r3, r4
d05e164a:	d9fa      	bls.n	d05e1642 <_free_r+0x4e>
d05e164c:	6811      	ldr	r1, [r2, #0]
d05e164e:	1855      	adds	r5, r2, r1
d05e1650:	42a5      	cmp	r5, r4
d05e1652:	d10b      	bne.n	d05e166c <_free_r+0x78>
d05e1654:	6824      	ldr	r4, [r4, #0]
d05e1656:	4421      	add	r1, r4
d05e1658:	1854      	adds	r4, r2, r1
d05e165a:	42a3      	cmp	r3, r4
d05e165c:	6011      	str	r1, [r2, #0]
d05e165e:	d1dd      	bne.n	d05e161c <_free_r+0x28>
d05e1660:	681c      	ldr	r4, [r3, #0]
d05e1662:	685b      	ldr	r3, [r3, #4]
d05e1664:	6053      	str	r3, [r2, #4]
d05e1666:	4421      	add	r1, r4
d05e1668:	6011      	str	r1, [r2, #0]
d05e166a:	e7d7      	b.n	d05e161c <_free_r+0x28>
d05e166c:	d902      	bls.n	d05e1674 <_free_r+0x80>
d05e166e:	230c      	movs	r3, #12
d05e1670:	6003      	str	r3, [r0, #0]
d05e1672:	e7d3      	b.n	d05e161c <_free_r+0x28>
d05e1674:	6825      	ldr	r5, [r4, #0]
d05e1676:	1961      	adds	r1, r4, r5
d05e1678:	428b      	cmp	r3, r1
d05e167a:	bf04      	itt	eq
d05e167c:	6819      	ldreq	r1, [r3, #0]
d05e167e:	685b      	ldreq	r3, [r3, #4]
d05e1680:	6063      	str	r3, [r4, #4]
d05e1682:	bf04      	itt	eq
d05e1684:	1949      	addeq	r1, r1, r5
d05e1686:	6021      	streq	r1, [r4, #0]
d05e1688:	6054      	str	r4, [r2, #4]
d05e168a:	e7c7      	b.n	d05e161c <_free_r+0x28>
d05e168c:	b003      	add	sp, #12
d05e168e:	bd30      	pop	{r4, r5, pc}
d05e1690:	d05e2d68 	.word	0xd05e2d68

d05e1694 <_malloc_r>:
d05e1694:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e1696:	1ccd      	adds	r5, r1, #3
d05e1698:	f025 0503 	bic.w	r5, r5, #3
d05e169c:	3508      	adds	r5, #8
d05e169e:	2d0c      	cmp	r5, #12
d05e16a0:	bf38      	it	cc
d05e16a2:	250c      	movcc	r5, #12
d05e16a4:	2d00      	cmp	r5, #0
d05e16a6:	4606      	mov	r6, r0
d05e16a8:	db01      	blt.n	d05e16ae <_malloc_r+0x1a>
d05e16aa:	42a9      	cmp	r1, r5
d05e16ac:	d903      	bls.n	d05e16b6 <_malloc_r+0x22>
d05e16ae:	230c      	movs	r3, #12
d05e16b0:	6033      	str	r3, [r6, #0]
d05e16b2:	2000      	movs	r0, #0
d05e16b4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e16b6:	f000 fc1d 	bl	d05e1ef4 <__malloc_lock>
d05e16ba:	4921      	ldr	r1, [pc, #132]	; (d05e1740 <_malloc_r+0xac>)
d05e16bc:	680a      	ldr	r2, [r1, #0]
d05e16be:	4614      	mov	r4, r2
d05e16c0:	b99c      	cbnz	r4, d05e16ea <_malloc_r+0x56>
d05e16c2:	4f20      	ldr	r7, [pc, #128]	; (d05e1744 <_malloc_r+0xb0>)
d05e16c4:	683b      	ldr	r3, [r7, #0]
d05e16c6:	b923      	cbnz	r3, d05e16d2 <_malloc_r+0x3e>
d05e16c8:	4621      	mov	r1, r4
d05e16ca:	4630      	mov	r0, r6
d05e16cc:	f7fe fcfc 	bl	d05e00c8 <_sbrk_r>
d05e16d0:	6038      	str	r0, [r7, #0]
d05e16d2:	4629      	mov	r1, r5
d05e16d4:	4630      	mov	r0, r6
d05e16d6:	f7fe fcf7 	bl	d05e00c8 <_sbrk_r>
d05e16da:	1c43      	adds	r3, r0, #1
d05e16dc:	d123      	bne.n	d05e1726 <_malloc_r+0x92>
d05e16de:	230c      	movs	r3, #12
d05e16e0:	6033      	str	r3, [r6, #0]
d05e16e2:	4630      	mov	r0, r6
d05e16e4:	f000 fc0c 	bl	d05e1f00 <__malloc_unlock>
d05e16e8:	e7e3      	b.n	d05e16b2 <_malloc_r+0x1e>
d05e16ea:	6823      	ldr	r3, [r4, #0]
d05e16ec:	1b5b      	subs	r3, r3, r5
d05e16ee:	d417      	bmi.n	d05e1720 <_malloc_r+0x8c>
d05e16f0:	2b0b      	cmp	r3, #11
d05e16f2:	d903      	bls.n	d05e16fc <_malloc_r+0x68>
d05e16f4:	6023      	str	r3, [r4, #0]
d05e16f6:	441c      	add	r4, r3
d05e16f8:	6025      	str	r5, [r4, #0]
d05e16fa:	e004      	b.n	d05e1706 <_malloc_r+0x72>
d05e16fc:	6863      	ldr	r3, [r4, #4]
d05e16fe:	42a2      	cmp	r2, r4
d05e1700:	bf0c      	ite	eq
d05e1702:	600b      	streq	r3, [r1, #0]
d05e1704:	6053      	strne	r3, [r2, #4]
d05e1706:	4630      	mov	r0, r6
d05e1708:	f000 fbfa 	bl	d05e1f00 <__malloc_unlock>
d05e170c:	f104 000b 	add.w	r0, r4, #11
d05e1710:	1d23      	adds	r3, r4, #4
d05e1712:	f020 0007 	bic.w	r0, r0, #7
d05e1716:	1ac2      	subs	r2, r0, r3
d05e1718:	d0cc      	beq.n	d05e16b4 <_malloc_r+0x20>
d05e171a:	1a1b      	subs	r3, r3, r0
d05e171c:	50a3      	str	r3, [r4, r2]
d05e171e:	e7c9      	b.n	d05e16b4 <_malloc_r+0x20>
d05e1720:	4622      	mov	r2, r4
d05e1722:	6864      	ldr	r4, [r4, #4]
d05e1724:	e7cc      	b.n	d05e16c0 <_malloc_r+0x2c>
d05e1726:	1cc4      	adds	r4, r0, #3
d05e1728:	f024 0403 	bic.w	r4, r4, #3
d05e172c:	42a0      	cmp	r0, r4
d05e172e:	d0e3      	beq.n	d05e16f8 <_malloc_r+0x64>
d05e1730:	1a21      	subs	r1, r4, r0
d05e1732:	4630      	mov	r0, r6
d05e1734:	f7fe fcc8 	bl	d05e00c8 <_sbrk_r>
d05e1738:	3001      	adds	r0, #1
d05e173a:	d1dd      	bne.n	d05e16f8 <_malloc_r+0x64>
d05e173c:	e7cf      	b.n	d05e16de <_malloc_r+0x4a>
d05e173e:	bf00      	nop
d05e1740:	d05e2d68 	.word	0xd05e2d68
d05e1744:	d05e2d6c 	.word	0xd05e2d6c

d05e1748 <__ssputs_r>:
d05e1748:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05e174c:	688e      	ldr	r6, [r1, #8]
d05e174e:	429e      	cmp	r6, r3
d05e1750:	4682      	mov	sl, r0
d05e1752:	460c      	mov	r4, r1
d05e1754:	4690      	mov	r8, r2
d05e1756:	461f      	mov	r7, r3
d05e1758:	d838      	bhi.n	d05e17cc <__ssputs_r+0x84>
d05e175a:	898a      	ldrh	r2, [r1, #12]
d05e175c:	f412 6f90 	tst.w	r2, #1152	; 0x480
d05e1760:	d032      	beq.n	d05e17c8 <__ssputs_r+0x80>
d05e1762:	6825      	ldr	r5, [r4, #0]
d05e1764:	6909      	ldr	r1, [r1, #16]
d05e1766:	eba5 0901 	sub.w	r9, r5, r1
d05e176a:	6965      	ldr	r5, [r4, #20]
d05e176c:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d05e1770:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d05e1774:	3301      	adds	r3, #1
d05e1776:	444b      	add	r3, r9
d05e1778:	106d      	asrs	r5, r5, #1
d05e177a:	429d      	cmp	r5, r3
d05e177c:	bf38      	it	cc
d05e177e:	461d      	movcc	r5, r3
d05e1780:	0553      	lsls	r3, r2, #21
d05e1782:	d531      	bpl.n	d05e17e8 <__ssputs_r+0xa0>
d05e1784:	4629      	mov	r1, r5
d05e1786:	f7ff ff85 	bl	d05e1694 <_malloc_r>
d05e178a:	4606      	mov	r6, r0
d05e178c:	b950      	cbnz	r0, d05e17a4 <__ssputs_r+0x5c>
d05e178e:	230c      	movs	r3, #12
d05e1790:	f8ca 3000 	str.w	r3, [sl]
d05e1794:	89a3      	ldrh	r3, [r4, #12]
d05e1796:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d05e179a:	81a3      	strh	r3, [r4, #12]
d05e179c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e17a0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e17a4:	6921      	ldr	r1, [r4, #16]
d05e17a6:	464a      	mov	r2, r9
d05e17a8:	f7ff fc1e 	bl	d05e0fe8 <memcpy>
d05e17ac:	89a3      	ldrh	r3, [r4, #12]
d05e17ae:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d05e17b2:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d05e17b6:	81a3      	strh	r3, [r4, #12]
d05e17b8:	6126      	str	r6, [r4, #16]
d05e17ba:	6165      	str	r5, [r4, #20]
d05e17bc:	444e      	add	r6, r9
d05e17be:	eba5 0509 	sub.w	r5, r5, r9
d05e17c2:	6026      	str	r6, [r4, #0]
d05e17c4:	60a5      	str	r5, [r4, #8]
d05e17c6:	463e      	mov	r6, r7
d05e17c8:	42be      	cmp	r6, r7
d05e17ca:	d900      	bls.n	d05e17ce <__ssputs_r+0x86>
d05e17cc:	463e      	mov	r6, r7
d05e17ce:	4632      	mov	r2, r6
d05e17d0:	6820      	ldr	r0, [r4, #0]
d05e17d2:	4641      	mov	r1, r8
d05e17d4:	f000 fb74 	bl	d05e1ec0 <memmove>
d05e17d8:	68a3      	ldr	r3, [r4, #8]
d05e17da:	6822      	ldr	r2, [r4, #0]
d05e17dc:	1b9b      	subs	r3, r3, r6
d05e17de:	4432      	add	r2, r6
d05e17e0:	60a3      	str	r3, [r4, #8]
d05e17e2:	6022      	str	r2, [r4, #0]
d05e17e4:	2000      	movs	r0, #0
d05e17e6:	e7db      	b.n	d05e17a0 <__ssputs_r+0x58>
d05e17e8:	462a      	mov	r2, r5
d05e17ea:	f000 fb8f 	bl	d05e1f0c <_realloc_r>
d05e17ee:	4606      	mov	r6, r0
d05e17f0:	2800      	cmp	r0, #0
d05e17f2:	d1e1      	bne.n	d05e17b8 <__ssputs_r+0x70>
d05e17f4:	6921      	ldr	r1, [r4, #16]
d05e17f6:	4650      	mov	r0, sl
d05e17f8:	f7ff fefc 	bl	d05e15f4 <_free_r>
d05e17fc:	e7c7      	b.n	d05e178e <__ssputs_r+0x46>
	...

d05e1800 <_svfiprintf_r>:
d05e1800:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d05e1804:	4698      	mov	r8, r3
d05e1806:	898b      	ldrh	r3, [r1, #12]
d05e1808:	061b      	lsls	r3, r3, #24
d05e180a:	b09d      	sub	sp, #116	; 0x74
d05e180c:	4607      	mov	r7, r0
d05e180e:	460d      	mov	r5, r1
d05e1810:	4614      	mov	r4, r2
d05e1812:	d50e      	bpl.n	d05e1832 <_svfiprintf_r+0x32>
d05e1814:	690b      	ldr	r3, [r1, #16]
d05e1816:	b963      	cbnz	r3, d05e1832 <_svfiprintf_r+0x32>
d05e1818:	2140      	movs	r1, #64	; 0x40
d05e181a:	f7ff ff3b 	bl	d05e1694 <_malloc_r>
d05e181e:	6028      	str	r0, [r5, #0]
d05e1820:	6128      	str	r0, [r5, #16]
d05e1822:	b920      	cbnz	r0, d05e182e <_svfiprintf_r+0x2e>
d05e1824:	230c      	movs	r3, #12
d05e1826:	603b      	str	r3, [r7, #0]
d05e1828:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e182c:	e0d1      	b.n	d05e19d2 <_svfiprintf_r+0x1d2>
d05e182e:	2340      	movs	r3, #64	; 0x40
d05e1830:	616b      	str	r3, [r5, #20]
d05e1832:	2300      	movs	r3, #0
d05e1834:	9309      	str	r3, [sp, #36]	; 0x24
d05e1836:	2320      	movs	r3, #32
d05e1838:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d05e183c:	f8cd 800c 	str.w	r8, [sp, #12]
d05e1840:	2330      	movs	r3, #48	; 0x30
d05e1842:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d05e19ec <_svfiprintf_r+0x1ec>
d05e1846:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d05e184a:	f04f 0901 	mov.w	r9, #1
d05e184e:	4623      	mov	r3, r4
d05e1850:	469a      	mov	sl, r3
d05e1852:	f813 2b01 	ldrb.w	r2, [r3], #1
d05e1856:	b10a      	cbz	r2, d05e185c <_svfiprintf_r+0x5c>
d05e1858:	2a25      	cmp	r2, #37	; 0x25
d05e185a:	d1f9      	bne.n	d05e1850 <_svfiprintf_r+0x50>
d05e185c:	ebba 0b04 	subs.w	fp, sl, r4
d05e1860:	d00b      	beq.n	d05e187a <_svfiprintf_r+0x7a>
d05e1862:	465b      	mov	r3, fp
d05e1864:	4622      	mov	r2, r4
d05e1866:	4629      	mov	r1, r5
d05e1868:	4638      	mov	r0, r7
d05e186a:	f7ff ff6d 	bl	d05e1748 <__ssputs_r>
d05e186e:	3001      	adds	r0, #1
d05e1870:	f000 80aa 	beq.w	d05e19c8 <_svfiprintf_r+0x1c8>
d05e1874:	9a09      	ldr	r2, [sp, #36]	; 0x24
d05e1876:	445a      	add	r2, fp
d05e1878:	9209      	str	r2, [sp, #36]	; 0x24
d05e187a:	f89a 3000 	ldrb.w	r3, [sl]
d05e187e:	2b00      	cmp	r3, #0
d05e1880:	f000 80a2 	beq.w	d05e19c8 <_svfiprintf_r+0x1c8>
d05e1884:	2300      	movs	r3, #0
d05e1886:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d05e188a:	e9cd 2305 	strd	r2, r3, [sp, #20]
d05e188e:	f10a 0a01 	add.w	sl, sl, #1
d05e1892:	9304      	str	r3, [sp, #16]
d05e1894:	9307      	str	r3, [sp, #28]
d05e1896:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d05e189a:	931a      	str	r3, [sp, #104]	; 0x68
d05e189c:	4654      	mov	r4, sl
d05e189e:	2205      	movs	r2, #5
d05e18a0:	f814 1b01 	ldrb.w	r1, [r4], #1
d05e18a4:	4851      	ldr	r0, [pc, #324]	; (d05e19ec <_svfiprintf_r+0x1ec>)
d05e18a6:	f000 fabb 	bl	d05e1e20 <memchr>
d05e18aa:	9a04      	ldr	r2, [sp, #16]
d05e18ac:	b9d8      	cbnz	r0, d05e18e6 <_svfiprintf_r+0xe6>
d05e18ae:	06d0      	lsls	r0, r2, #27
d05e18b0:	bf44      	itt	mi
d05e18b2:	2320      	movmi	r3, #32
d05e18b4:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05e18b8:	0711      	lsls	r1, r2, #28
d05e18ba:	bf44      	itt	mi
d05e18bc:	232b      	movmi	r3, #43	; 0x2b
d05e18be:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d05e18c2:	f89a 3000 	ldrb.w	r3, [sl]
d05e18c6:	2b2a      	cmp	r3, #42	; 0x2a
d05e18c8:	d015      	beq.n	d05e18f6 <_svfiprintf_r+0xf6>
d05e18ca:	9a07      	ldr	r2, [sp, #28]
d05e18cc:	4654      	mov	r4, sl
d05e18ce:	2000      	movs	r0, #0
d05e18d0:	f04f 0c0a 	mov.w	ip, #10
d05e18d4:	4621      	mov	r1, r4
d05e18d6:	f811 3b01 	ldrb.w	r3, [r1], #1
d05e18da:	3b30      	subs	r3, #48	; 0x30
d05e18dc:	2b09      	cmp	r3, #9
d05e18de:	d94e      	bls.n	d05e197e <_svfiprintf_r+0x17e>
d05e18e0:	b1b0      	cbz	r0, d05e1910 <_svfiprintf_r+0x110>
d05e18e2:	9207      	str	r2, [sp, #28]
d05e18e4:	e014      	b.n	d05e1910 <_svfiprintf_r+0x110>
d05e18e6:	eba0 0308 	sub.w	r3, r0, r8
d05e18ea:	fa09 f303 	lsl.w	r3, r9, r3
d05e18ee:	4313      	orrs	r3, r2
d05e18f0:	9304      	str	r3, [sp, #16]
d05e18f2:	46a2      	mov	sl, r4
d05e18f4:	e7d2      	b.n	d05e189c <_svfiprintf_r+0x9c>
d05e18f6:	9b03      	ldr	r3, [sp, #12]
d05e18f8:	1d19      	adds	r1, r3, #4
d05e18fa:	681b      	ldr	r3, [r3, #0]
d05e18fc:	9103      	str	r1, [sp, #12]
d05e18fe:	2b00      	cmp	r3, #0
d05e1900:	bfbb      	ittet	lt
d05e1902:	425b      	neglt	r3, r3
d05e1904:	f042 0202 	orrlt.w	r2, r2, #2
d05e1908:	9307      	strge	r3, [sp, #28]
d05e190a:	9307      	strlt	r3, [sp, #28]
d05e190c:	bfb8      	it	lt
d05e190e:	9204      	strlt	r2, [sp, #16]
d05e1910:	7823      	ldrb	r3, [r4, #0]
d05e1912:	2b2e      	cmp	r3, #46	; 0x2e
d05e1914:	d10c      	bne.n	d05e1930 <_svfiprintf_r+0x130>
d05e1916:	7863      	ldrb	r3, [r4, #1]
d05e1918:	2b2a      	cmp	r3, #42	; 0x2a
d05e191a:	d135      	bne.n	d05e1988 <_svfiprintf_r+0x188>
d05e191c:	9b03      	ldr	r3, [sp, #12]
d05e191e:	1d1a      	adds	r2, r3, #4
d05e1920:	681b      	ldr	r3, [r3, #0]
d05e1922:	9203      	str	r2, [sp, #12]
d05e1924:	2b00      	cmp	r3, #0
d05e1926:	bfb8      	it	lt
d05e1928:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d05e192c:	3402      	adds	r4, #2
d05e192e:	9305      	str	r3, [sp, #20]
d05e1930:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d05e19fc <_svfiprintf_r+0x1fc>
d05e1934:	7821      	ldrb	r1, [r4, #0]
d05e1936:	2203      	movs	r2, #3
d05e1938:	4650      	mov	r0, sl
d05e193a:	f000 fa71 	bl	d05e1e20 <memchr>
d05e193e:	b140      	cbz	r0, d05e1952 <_svfiprintf_r+0x152>
d05e1940:	2340      	movs	r3, #64	; 0x40
d05e1942:	eba0 000a 	sub.w	r0, r0, sl
d05e1946:	fa03 f000 	lsl.w	r0, r3, r0
d05e194a:	9b04      	ldr	r3, [sp, #16]
d05e194c:	4303      	orrs	r3, r0
d05e194e:	3401      	adds	r4, #1
d05e1950:	9304      	str	r3, [sp, #16]
d05e1952:	f814 1b01 	ldrb.w	r1, [r4], #1
d05e1956:	4826      	ldr	r0, [pc, #152]	; (d05e19f0 <_svfiprintf_r+0x1f0>)
d05e1958:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d05e195c:	2206      	movs	r2, #6
d05e195e:	f000 fa5f 	bl	d05e1e20 <memchr>
d05e1962:	2800      	cmp	r0, #0
d05e1964:	d038      	beq.n	d05e19d8 <_svfiprintf_r+0x1d8>
d05e1966:	4b23      	ldr	r3, [pc, #140]	; (d05e19f4 <_svfiprintf_r+0x1f4>)
d05e1968:	bb1b      	cbnz	r3, d05e19b2 <_svfiprintf_r+0x1b2>
d05e196a:	9b03      	ldr	r3, [sp, #12]
d05e196c:	3307      	adds	r3, #7
d05e196e:	f023 0307 	bic.w	r3, r3, #7
d05e1972:	3308      	adds	r3, #8
d05e1974:	9303      	str	r3, [sp, #12]
d05e1976:	9b09      	ldr	r3, [sp, #36]	; 0x24
d05e1978:	4433      	add	r3, r6
d05e197a:	9309      	str	r3, [sp, #36]	; 0x24
d05e197c:	e767      	b.n	d05e184e <_svfiprintf_r+0x4e>
d05e197e:	fb0c 3202 	mla	r2, ip, r2, r3
d05e1982:	460c      	mov	r4, r1
d05e1984:	2001      	movs	r0, #1
d05e1986:	e7a5      	b.n	d05e18d4 <_svfiprintf_r+0xd4>
d05e1988:	2300      	movs	r3, #0
d05e198a:	3401      	adds	r4, #1
d05e198c:	9305      	str	r3, [sp, #20]
d05e198e:	4619      	mov	r1, r3
d05e1990:	f04f 0c0a 	mov.w	ip, #10
d05e1994:	4620      	mov	r0, r4
d05e1996:	f810 2b01 	ldrb.w	r2, [r0], #1
d05e199a:	3a30      	subs	r2, #48	; 0x30
d05e199c:	2a09      	cmp	r2, #9
d05e199e:	d903      	bls.n	d05e19a8 <_svfiprintf_r+0x1a8>
d05e19a0:	2b00      	cmp	r3, #0
d05e19a2:	d0c5      	beq.n	d05e1930 <_svfiprintf_r+0x130>
d05e19a4:	9105      	str	r1, [sp, #20]
d05e19a6:	e7c3      	b.n	d05e1930 <_svfiprintf_r+0x130>
d05e19a8:	fb0c 2101 	mla	r1, ip, r1, r2
d05e19ac:	4604      	mov	r4, r0
d05e19ae:	2301      	movs	r3, #1
d05e19b0:	e7f0      	b.n	d05e1994 <_svfiprintf_r+0x194>
d05e19b2:	ab03      	add	r3, sp, #12
d05e19b4:	9300      	str	r3, [sp, #0]
d05e19b6:	462a      	mov	r2, r5
d05e19b8:	4b0f      	ldr	r3, [pc, #60]	; (d05e19f8 <_svfiprintf_r+0x1f8>)
d05e19ba:	a904      	add	r1, sp, #16
d05e19bc:	4638      	mov	r0, r7
d05e19be:	f3af 8000 	nop.w
d05e19c2:	1c42      	adds	r2, r0, #1
d05e19c4:	4606      	mov	r6, r0
d05e19c6:	d1d6      	bne.n	d05e1976 <_svfiprintf_r+0x176>
d05e19c8:	89ab      	ldrh	r3, [r5, #12]
d05e19ca:	065b      	lsls	r3, r3, #25
d05e19cc:	f53f af2c 	bmi.w	d05e1828 <_svfiprintf_r+0x28>
d05e19d0:	9809      	ldr	r0, [sp, #36]	; 0x24
d05e19d2:	b01d      	add	sp, #116	; 0x74
d05e19d4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d05e19d8:	ab03      	add	r3, sp, #12
d05e19da:	9300      	str	r3, [sp, #0]
d05e19dc:	462a      	mov	r2, r5
d05e19de:	4b06      	ldr	r3, [pc, #24]	; (d05e19f8 <_svfiprintf_r+0x1f8>)
d05e19e0:	a904      	add	r1, sp, #16
d05e19e2:	4638      	mov	r0, r7
d05e19e4:	f000 f87a 	bl	d05e1adc <_printf_i>
d05e19e8:	e7eb      	b.n	d05e19c2 <_svfiprintf_r+0x1c2>
d05e19ea:	bf00      	nop
d05e19ec:	d05e232c 	.word	0xd05e232c
d05e19f0:	d05e2336 	.word	0xd05e2336
d05e19f4:	00000000 	.word	0x00000000
d05e19f8:	d05e1749 	.word	0xd05e1749
d05e19fc:	d05e2332 	.word	0xd05e2332

d05e1a00 <_printf_common>:
d05e1a00:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d05e1a04:	4616      	mov	r6, r2
d05e1a06:	4699      	mov	r9, r3
d05e1a08:	688a      	ldr	r2, [r1, #8]
d05e1a0a:	690b      	ldr	r3, [r1, #16]
d05e1a0c:	f8dd 8020 	ldr.w	r8, [sp, #32]
d05e1a10:	4293      	cmp	r3, r2
d05e1a12:	bfb8      	it	lt
d05e1a14:	4613      	movlt	r3, r2
d05e1a16:	6033      	str	r3, [r6, #0]
d05e1a18:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d05e1a1c:	4607      	mov	r7, r0
d05e1a1e:	460c      	mov	r4, r1
d05e1a20:	b10a      	cbz	r2, d05e1a26 <_printf_common+0x26>
d05e1a22:	3301      	adds	r3, #1
d05e1a24:	6033      	str	r3, [r6, #0]
d05e1a26:	6823      	ldr	r3, [r4, #0]
d05e1a28:	0699      	lsls	r1, r3, #26
d05e1a2a:	bf42      	ittt	mi
d05e1a2c:	6833      	ldrmi	r3, [r6, #0]
d05e1a2e:	3302      	addmi	r3, #2
d05e1a30:	6033      	strmi	r3, [r6, #0]
d05e1a32:	6825      	ldr	r5, [r4, #0]
d05e1a34:	f015 0506 	ands.w	r5, r5, #6
d05e1a38:	d106      	bne.n	d05e1a48 <_printf_common+0x48>
d05e1a3a:	f104 0a19 	add.w	sl, r4, #25
d05e1a3e:	68e3      	ldr	r3, [r4, #12]
d05e1a40:	6832      	ldr	r2, [r6, #0]
d05e1a42:	1a9b      	subs	r3, r3, r2
d05e1a44:	42ab      	cmp	r3, r5
d05e1a46:	dc26      	bgt.n	d05e1a96 <_printf_common+0x96>
d05e1a48:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d05e1a4c:	1e13      	subs	r3, r2, #0
d05e1a4e:	6822      	ldr	r2, [r4, #0]
d05e1a50:	bf18      	it	ne
d05e1a52:	2301      	movne	r3, #1
d05e1a54:	0692      	lsls	r2, r2, #26
d05e1a56:	d42b      	bmi.n	d05e1ab0 <_printf_common+0xb0>
d05e1a58:	f104 0243 	add.w	r2, r4, #67	; 0x43
d05e1a5c:	4649      	mov	r1, r9
d05e1a5e:	4638      	mov	r0, r7
d05e1a60:	47c0      	blx	r8
d05e1a62:	3001      	adds	r0, #1
d05e1a64:	d01e      	beq.n	d05e1aa4 <_printf_common+0xa4>
d05e1a66:	6823      	ldr	r3, [r4, #0]
d05e1a68:	68e5      	ldr	r5, [r4, #12]
d05e1a6a:	6832      	ldr	r2, [r6, #0]
d05e1a6c:	f003 0306 	and.w	r3, r3, #6
d05e1a70:	2b04      	cmp	r3, #4
d05e1a72:	bf08      	it	eq
d05e1a74:	1aad      	subeq	r5, r5, r2
d05e1a76:	68a3      	ldr	r3, [r4, #8]
d05e1a78:	6922      	ldr	r2, [r4, #16]
d05e1a7a:	bf0c      	ite	eq
d05e1a7c:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d05e1a80:	2500      	movne	r5, #0
d05e1a82:	4293      	cmp	r3, r2
d05e1a84:	bfc4      	itt	gt
d05e1a86:	1a9b      	subgt	r3, r3, r2
d05e1a88:	18ed      	addgt	r5, r5, r3
d05e1a8a:	2600      	movs	r6, #0
d05e1a8c:	341a      	adds	r4, #26
d05e1a8e:	42b5      	cmp	r5, r6
d05e1a90:	d11a      	bne.n	d05e1ac8 <_printf_common+0xc8>
d05e1a92:	2000      	movs	r0, #0
d05e1a94:	e008      	b.n	d05e1aa8 <_printf_common+0xa8>
d05e1a96:	2301      	movs	r3, #1
d05e1a98:	4652      	mov	r2, sl
d05e1a9a:	4649      	mov	r1, r9
d05e1a9c:	4638      	mov	r0, r7
d05e1a9e:	47c0      	blx	r8
d05e1aa0:	3001      	adds	r0, #1
d05e1aa2:	d103      	bne.n	d05e1aac <_printf_common+0xac>
d05e1aa4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e1aa8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e1aac:	3501      	adds	r5, #1
d05e1aae:	e7c6      	b.n	d05e1a3e <_printf_common+0x3e>
d05e1ab0:	18e1      	adds	r1, r4, r3
d05e1ab2:	1c5a      	adds	r2, r3, #1
d05e1ab4:	2030      	movs	r0, #48	; 0x30
d05e1ab6:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d05e1aba:	4422      	add	r2, r4
d05e1abc:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d05e1ac0:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d05e1ac4:	3302      	adds	r3, #2
d05e1ac6:	e7c7      	b.n	d05e1a58 <_printf_common+0x58>
d05e1ac8:	2301      	movs	r3, #1
d05e1aca:	4622      	mov	r2, r4
d05e1acc:	4649      	mov	r1, r9
d05e1ace:	4638      	mov	r0, r7
d05e1ad0:	47c0      	blx	r8
d05e1ad2:	3001      	adds	r0, #1
d05e1ad4:	d0e6      	beq.n	d05e1aa4 <_printf_common+0xa4>
d05e1ad6:	3601      	adds	r6, #1
d05e1ad8:	e7d9      	b.n	d05e1a8e <_printf_common+0x8e>
	...

d05e1adc <_printf_i>:
d05e1adc:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d05e1ae0:	460c      	mov	r4, r1
d05e1ae2:	4691      	mov	r9, r2
d05e1ae4:	7e27      	ldrb	r7, [r4, #24]
d05e1ae6:	990c      	ldr	r1, [sp, #48]	; 0x30
d05e1ae8:	2f78      	cmp	r7, #120	; 0x78
d05e1aea:	4680      	mov	r8, r0
d05e1aec:	469a      	mov	sl, r3
d05e1aee:	f104 0243 	add.w	r2, r4, #67	; 0x43
d05e1af2:	d807      	bhi.n	d05e1b04 <_printf_i+0x28>
d05e1af4:	2f62      	cmp	r7, #98	; 0x62
d05e1af6:	d80a      	bhi.n	d05e1b0e <_printf_i+0x32>
d05e1af8:	2f00      	cmp	r7, #0
d05e1afa:	f000 80d8 	beq.w	d05e1cae <_printf_i+0x1d2>
d05e1afe:	2f58      	cmp	r7, #88	; 0x58
d05e1b00:	f000 80a3 	beq.w	d05e1c4a <_printf_i+0x16e>
d05e1b04:	f104 0642 	add.w	r6, r4, #66	; 0x42
d05e1b08:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d05e1b0c:	e03a      	b.n	d05e1b84 <_printf_i+0xa8>
d05e1b0e:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d05e1b12:	2b15      	cmp	r3, #21
d05e1b14:	d8f6      	bhi.n	d05e1b04 <_printf_i+0x28>
d05e1b16:	a001      	add	r0, pc, #4	; (adr r0, d05e1b1c <_printf_i+0x40>)
d05e1b18:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d05e1b1c:	d05e1b75 	.word	0xd05e1b75
d05e1b20:	d05e1b89 	.word	0xd05e1b89
d05e1b24:	d05e1b05 	.word	0xd05e1b05
d05e1b28:	d05e1b05 	.word	0xd05e1b05
d05e1b2c:	d05e1b05 	.word	0xd05e1b05
d05e1b30:	d05e1b05 	.word	0xd05e1b05
d05e1b34:	d05e1b89 	.word	0xd05e1b89
d05e1b38:	d05e1b05 	.word	0xd05e1b05
d05e1b3c:	d05e1b05 	.word	0xd05e1b05
d05e1b40:	d05e1b05 	.word	0xd05e1b05
d05e1b44:	d05e1b05 	.word	0xd05e1b05
d05e1b48:	d05e1c95 	.word	0xd05e1c95
d05e1b4c:	d05e1bb9 	.word	0xd05e1bb9
d05e1b50:	d05e1c77 	.word	0xd05e1c77
d05e1b54:	d05e1b05 	.word	0xd05e1b05
d05e1b58:	d05e1b05 	.word	0xd05e1b05
d05e1b5c:	d05e1cb7 	.word	0xd05e1cb7
d05e1b60:	d05e1b05 	.word	0xd05e1b05
d05e1b64:	d05e1bb9 	.word	0xd05e1bb9
d05e1b68:	d05e1b05 	.word	0xd05e1b05
d05e1b6c:	d05e1b05 	.word	0xd05e1b05
d05e1b70:	d05e1c7f 	.word	0xd05e1c7f
d05e1b74:	680b      	ldr	r3, [r1, #0]
d05e1b76:	1d1a      	adds	r2, r3, #4
d05e1b78:	681b      	ldr	r3, [r3, #0]
d05e1b7a:	600a      	str	r2, [r1, #0]
d05e1b7c:	f104 0642 	add.w	r6, r4, #66	; 0x42
d05e1b80:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d05e1b84:	2301      	movs	r3, #1
d05e1b86:	e0a3      	b.n	d05e1cd0 <_printf_i+0x1f4>
d05e1b88:	6825      	ldr	r5, [r4, #0]
d05e1b8a:	6808      	ldr	r0, [r1, #0]
d05e1b8c:	062e      	lsls	r6, r5, #24
d05e1b8e:	f100 0304 	add.w	r3, r0, #4
d05e1b92:	d50a      	bpl.n	d05e1baa <_printf_i+0xce>
d05e1b94:	6805      	ldr	r5, [r0, #0]
d05e1b96:	600b      	str	r3, [r1, #0]
d05e1b98:	2d00      	cmp	r5, #0
d05e1b9a:	da03      	bge.n	d05e1ba4 <_printf_i+0xc8>
d05e1b9c:	232d      	movs	r3, #45	; 0x2d
d05e1b9e:	426d      	negs	r5, r5
d05e1ba0:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d05e1ba4:	485e      	ldr	r0, [pc, #376]	; (d05e1d20 <_printf_i+0x244>)
d05e1ba6:	230a      	movs	r3, #10
d05e1ba8:	e019      	b.n	d05e1bde <_printf_i+0x102>
d05e1baa:	f015 0f40 	tst.w	r5, #64	; 0x40
d05e1bae:	6805      	ldr	r5, [r0, #0]
d05e1bb0:	600b      	str	r3, [r1, #0]
d05e1bb2:	bf18      	it	ne
d05e1bb4:	b22d      	sxthne	r5, r5
d05e1bb6:	e7ef      	b.n	d05e1b98 <_printf_i+0xbc>
d05e1bb8:	680b      	ldr	r3, [r1, #0]
d05e1bba:	6825      	ldr	r5, [r4, #0]
d05e1bbc:	1d18      	adds	r0, r3, #4
d05e1bbe:	6008      	str	r0, [r1, #0]
d05e1bc0:	0628      	lsls	r0, r5, #24
d05e1bc2:	d501      	bpl.n	d05e1bc8 <_printf_i+0xec>
d05e1bc4:	681d      	ldr	r5, [r3, #0]
d05e1bc6:	e002      	b.n	d05e1bce <_printf_i+0xf2>
d05e1bc8:	0669      	lsls	r1, r5, #25
d05e1bca:	d5fb      	bpl.n	d05e1bc4 <_printf_i+0xe8>
d05e1bcc:	881d      	ldrh	r5, [r3, #0]
d05e1bce:	4854      	ldr	r0, [pc, #336]	; (d05e1d20 <_printf_i+0x244>)
d05e1bd0:	2f6f      	cmp	r7, #111	; 0x6f
d05e1bd2:	bf0c      	ite	eq
d05e1bd4:	2308      	moveq	r3, #8
d05e1bd6:	230a      	movne	r3, #10
d05e1bd8:	2100      	movs	r1, #0
d05e1bda:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d05e1bde:	6866      	ldr	r6, [r4, #4]
d05e1be0:	60a6      	str	r6, [r4, #8]
d05e1be2:	2e00      	cmp	r6, #0
d05e1be4:	bfa2      	ittt	ge
d05e1be6:	6821      	ldrge	r1, [r4, #0]
d05e1be8:	f021 0104 	bicge.w	r1, r1, #4
d05e1bec:	6021      	strge	r1, [r4, #0]
d05e1bee:	b90d      	cbnz	r5, d05e1bf4 <_printf_i+0x118>
d05e1bf0:	2e00      	cmp	r6, #0
d05e1bf2:	d04d      	beq.n	d05e1c90 <_printf_i+0x1b4>
d05e1bf4:	4616      	mov	r6, r2
d05e1bf6:	fbb5 f1f3 	udiv	r1, r5, r3
d05e1bfa:	fb03 5711 	mls	r7, r3, r1, r5
d05e1bfe:	5dc7      	ldrb	r7, [r0, r7]
d05e1c00:	f806 7d01 	strb.w	r7, [r6, #-1]!
d05e1c04:	462f      	mov	r7, r5
d05e1c06:	42bb      	cmp	r3, r7
d05e1c08:	460d      	mov	r5, r1
d05e1c0a:	d9f4      	bls.n	d05e1bf6 <_printf_i+0x11a>
d05e1c0c:	2b08      	cmp	r3, #8
d05e1c0e:	d10b      	bne.n	d05e1c28 <_printf_i+0x14c>
d05e1c10:	6823      	ldr	r3, [r4, #0]
d05e1c12:	07df      	lsls	r7, r3, #31
d05e1c14:	d508      	bpl.n	d05e1c28 <_printf_i+0x14c>
d05e1c16:	6923      	ldr	r3, [r4, #16]
d05e1c18:	6861      	ldr	r1, [r4, #4]
d05e1c1a:	4299      	cmp	r1, r3
d05e1c1c:	bfde      	ittt	le
d05e1c1e:	2330      	movle	r3, #48	; 0x30
d05e1c20:	f806 3c01 	strble.w	r3, [r6, #-1]
d05e1c24:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d05e1c28:	1b92      	subs	r2, r2, r6
d05e1c2a:	6122      	str	r2, [r4, #16]
d05e1c2c:	f8cd a000 	str.w	sl, [sp]
d05e1c30:	464b      	mov	r3, r9
d05e1c32:	aa03      	add	r2, sp, #12
d05e1c34:	4621      	mov	r1, r4
d05e1c36:	4640      	mov	r0, r8
d05e1c38:	f7ff fee2 	bl	d05e1a00 <_printf_common>
d05e1c3c:	3001      	adds	r0, #1
d05e1c3e:	d14c      	bne.n	d05e1cda <_printf_i+0x1fe>
d05e1c40:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d05e1c44:	b004      	add	sp, #16
d05e1c46:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d05e1c4a:	4835      	ldr	r0, [pc, #212]	; (d05e1d20 <_printf_i+0x244>)
d05e1c4c:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d05e1c50:	6823      	ldr	r3, [r4, #0]
d05e1c52:	680e      	ldr	r6, [r1, #0]
d05e1c54:	061f      	lsls	r7, r3, #24
d05e1c56:	f856 5b04 	ldr.w	r5, [r6], #4
d05e1c5a:	600e      	str	r6, [r1, #0]
d05e1c5c:	d514      	bpl.n	d05e1c88 <_printf_i+0x1ac>
d05e1c5e:	07d9      	lsls	r1, r3, #31
d05e1c60:	bf44      	itt	mi
d05e1c62:	f043 0320 	orrmi.w	r3, r3, #32
d05e1c66:	6023      	strmi	r3, [r4, #0]
d05e1c68:	b91d      	cbnz	r5, d05e1c72 <_printf_i+0x196>
d05e1c6a:	6823      	ldr	r3, [r4, #0]
d05e1c6c:	f023 0320 	bic.w	r3, r3, #32
d05e1c70:	6023      	str	r3, [r4, #0]
d05e1c72:	2310      	movs	r3, #16
d05e1c74:	e7b0      	b.n	d05e1bd8 <_printf_i+0xfc>
d05e1c76:	6823      	ldr	r3, [r4, #0]
d05e1c78:	f043 0320 	orr.w	r3, r3, #32
d05e1c7c:	6023      	str	r3, [r4, #0]
d05e1c7e:	2378      	movs	r3, #120	; 0x78
d05e1c80:	4828      	ldr	r0, [pc, #160]	; (d05e1d24 <_printf_i+0x248>)
d05e1c82:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d05e1c86:	e7e3      	b.n	d05e1c50 <_printf_i+0x174>
d05e1c88:	065e      	lsls	r6, r3, #25
d05e1c8a:	bf48      	it	mi
d05e1c8c:	b2ad      	uxthmi	r5, r5
d05e1c8e:	e7e6      	b.n	d05e1c5e <_printf_i+0x182>
d05e1c90:	4616      	mov	r6, r2
d05e1c92:	e7bb      	b.n	d05e1c0c <_printf_i+0x130>
d05e1c94:	680b      	ldr	r3, [r1, #0]
d05e1c96:	6826      	ldr	r6, [r4, #0]
d05e1c98:	6960      	ldr	r0, [r4, #20]
d05e1c9a:	1d1d      	adds	r5, r3, #4
d05e1c9c:	600d      	str	r5, [r1, #0]
d05e1c9e:	0635      	lsls	r5, r6, #24
d05e1ca0:	681b      	ldr	r3, [r3, #0]
d05e1ca2:	d501      	bpl.n	d05e1ca8 <_printf_i+0x1cc>
d05e1ca4:	6018      	str	r0, [r3, #0]
d05e1ca6:	e002      	b.n	d05e1cae <_printf_i+0x1d2>
d05e1ca8:	0671      	lsls	r1, r6, #25
d05e1caa:	d5fb      	bpl.n	d05e1ca4 <_printf_i+0x1c8>
d05e1cac:	8018      	strh	r0, [r3, #0]
d05e1cae:	2300      	movs	r3, #0
d05e1cb0:	6123      	str	r3, [r4, #16]
d05e1cb2:	4616      	mov	r6, r2
d05e1cb4:	e7ba      	b.n	d05e1c2c <_printf_i+0x150>
d05e1cb6:	680b      	ldr	r3, [r1, #0]
d05e1cb8:	1d1a      	adds	r2, r3, #4
d05e1cba:	600a      	str	r2, [r1, #0]
d05e1cbc:	681e      	ldr	r6, [r3, #0]
d05e1cbe:	6862      	ldr	r2, [r4, #4]
d05e1cc0:	2100      	movs	r1, #0
d05e1cc2:	4630      	mov	r0, r6
d05e1cc4:	f000 f8ac 	bl	d05e1e20 <memchr>
d05e1cc8:	b108      	cbz	r0, d05e1cce <_printf_i+0x1f2>
d05e1cca:	1b80      	subs	r0, r0, r6
d05e1ccc:	6060      	str	r0, [r4, #4]
d05e1cce:	6863      	ldr	r3, [r4, #4]
d05e1cd0:	6123      	str	r3, [r4, #16]
d05e1cd2:	2300      	movs	r3, #0
d05e1cd4:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d05e1cd8:	e7a8      	b.n	d05e1c2c <_printf_i+0x150>
d05e1cda:	6923      	ldr	r3, [r4, #16]
d05e1cdc:	4632      	mov	r2, r6
d05e1cde:	4649      	mov	r1, r9
d05e1ce0:	4640      	mov	r0, r8
d05e1ce2:	47d0      	blx	sl
d05e1ce4:	3001      	adds	r0, #1
d05e1ce6:	d0ab      	beq.n	d05e1c40 <_printf_i+0x164>
d05e1ce8:	6823      	ldr	r3, [r4, #0]
d05e1cea:	079b      	lsls	r3, r3, #30
d05e1cec:	d413      	bmi.n	d05e1d16 <_printf_i+0x23a>
d05e1cee:	68e0      	ldr	r0, [r4, #12]
d05e1cf0:	9b03      	ldr	r3, [sp, #12]
d05e1cf2:	4298      	cmp	r0, r3
d05e1cf4:	bfb8      	it	lt
d05e1cf6:	4618      	movlt	r0, r3
d05e1cf8:	e7a4      	b.n	d05e1c44 <_printf_i+0x168>
d05e1cfa:	2301      	movs	r3, #1
d05e1cfc:	4632      	mov	r2, r6
d05e1cfe:	4649      	mov	r1, r9
d05e1d00:	4640      	mov	r0, r8
d05e1d02:	47d0      	blx	sl
d05e1d04:	3001      	adds	r0, #1
d05e1d06:	d09b      	beq.n	d05e1c40 <_printf_i+0x164>
d05e1d08:	3501      	adds	r5, #1
d05e1d0a:	68e3      	ldr	r3, [r4, #12]
d05e1d0c:	9903      	ldr	r1, [sp, #12]
d05e1d0e:	1a5b      	subs	r3, r3, r1
d05e1d10:	42ab      	cmp	r3, r5
d05e1d12:	dcf2      	bgt.n	d05e1cfa <_printf_i+0x21e>
d05e1d14:	e7eb      	b.n	d05e1cee <_printf_i+0x212>
d05e1d16:	2500      	movs	r5, #0
d05e1d18:	f104 0619 	add.w	r6, r4, #25
d05e1d1c:	e7f5      	b.n	d05e1d0a <_printf_i+0x22e>
d05e1d1e:	bf00      	nop
d05e1d20:	d05e233d 	.word	0xd05e233d
d05e1d24:	d05e234e 	.word	0xd05e234e

d05e1d28 <__sread>:
d05e1d28:	b510      	push	{r4, lr}
d05e1d2a:	460c      	mov	r4, r1
d05e1d2c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05e1d30:	f000 f912 	bl	d05e1f58 <_read_r>
d05e1d34:	2800      	cmp	r0, #0
d05e1d36:	bfab      	itete	ge
d05e1d38:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d05e1d3a:	89a3      	ldrhlt	r3, [r4, #12]
d05e1d3c:	181b      	addge	r3, r3, r0
d05e1d3e:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d05e1d42:	bfac      	ite	ge
d05e1d44:	6563      	strge	r3, [r4, #84]	; 0x54
d05e1d46:	81a3      	strhlt	r3, [r4, #12]
d05e1d48:	bd10      	pop	{r4, pc}

d05e1d4a <__swrite>:
d05e1d4a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d05e1d4e:	461f      	mov	r7, r3
d05e1d50:	898b      	ldrh	r3, [r1, #12]
d05e1d52:	05db      	lsls	r3, r3, #23
d05e1d54:	4605      	mov	r5, r0
d05e1d56:	460c      	mov	r4, r1
d05e1d58:	4616      	mov	r6, r2
d05e1d5a:	d505      	bpl.n	d05e1d68 <__swrite+0x1e>
d05e1d5c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05e1d60:	2302      	movs	r3, #2
d05e1d62:	2200      	movs	r2, #0
d05e1d64:	f000 f846 	bl	d05e1df4 <_lseek_r>
d05e1d68:	89a3      	ldrh	r3, [r4, #12]
d05e1d6a:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d05e1d6e:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d05e1d72:	81a3      	strh	r3, [r4, #12]
d05e1d74:	4632      	mov	r2, r6
d05e1d76:	463b      	mov	r3, r7
d05e1d78:	4628      	mov	r0, r5
d05e1d7a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d05e1d7e:	f7fe b95d 	b.w	d05e003c <_write_r>

d05e1d82 <__sseek>:
d05e1d82:	b510      	push	{r4, lr}
d05e1d84:	460c      	mov	r4, r1
d05e1d86:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05e1d8a:	f000 f833 	bl	d05e1df4 <_lseek_r>
d05e1d8e:	1c43      	adds	r3, r0, #1
d05e1d90:	89a3      	ldrh	r3, [r4, #12]
d05e1d92:	bf15      	itete	ne
d05e1d94:	6560      	strne	r0, [r4, #84]	; 0x54
d05e1d96:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d05e1d9a:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d05e1d9e:	81a3      	strheq	r3, [r4, #12]
d05e1da0:	bf18      	it	ne
d05e1da2:	81a3      	strhne	r3, [r4, #12]
d05e1da4:	bd10      	pop	{r4, pc}

d05e1da6 <__sclose>:
d05e1da6:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d05e1daa:	f000 b801 	b.w	d05e1db0 <_close_r>
	...

d05e1db0 <_close_r>:
d05e1db0:	b538      	push	{r3, r4, r5, lr}
d05e1db2:	4d06      	ldr	r5, [pc, #24]	; (d05e1dcc <_close_r+0x1c>)
d05e1db4:	2300      	movs	r3, #0
d05e1db6:	4604      	mov	r4, r0
d05e1db8:	4608      	mov	r0, r1
d05e1dba:	602b      	str	r3, [r5, #0]
d05e1dbc:	f7fe f978 	bl	d05e00b0 <_close>
d05e1dc0:	1c43      	adds	r3, r0, #1
d05e1dc2:	d102      	bne.n	d05e1dca <_close_r+0x1a>
d05e1dc4:	682b      	ldr	r3, [r5, #0]
d05e1dc6:	b103      	cbz	r3, d05e1dca <_close_r+0x1a>
d05e1dc8:	6023      	str	r3, [r4, #0]
d05e1dca:	bd38      	pop	{r3, r4, r5, pc}
d05e1dcc:	d05e2d7c 	.word	0xd05e2d7c

d05e1dd0 <_fstat_r>:
d05e1dd0:	b538      	push	{r3, r4, r5, lr}
d05e1dd2:	4d07      	ldr	r5, [pc, #28]	; (d05e1df0 <_fstat_r+0x20>)
d05e1dd4:	2300      	movs	r3, #0
d05e1dd6:	4604      	mov	r4, r0
d05e1dd8:	4608      	mov	r0, r1
d05e1dda:	4611      	mov	r1, r2
d05e1ddc:	602b      	str	r3, [r5, #0]
d05e1dde:	f7fe f96b 	bl	d05e00b8 <_fstat>
d05e1de2:	1c43      	adds	r3, r0, #1
d05e1de4:	d102      	bne.n	d05e1dec <_fstat_r+0x1c>
d05e1de6:	682b      	ldr	r3, [r5, #0]
d05e1de8:	b103      	cbz	r3, d05e1dec <_fstat_r+0x1c>
d05e1dea:	6023      	str	r3, [r4, #0]
d05e1dec:	bd38      	pop	{r3, r4, r5, pc}
d05e1dee:	bf00      	nop
d05e1df0:	d05e2d7c 	.word	0xd05e2d7c

d05e1df4 <_lseek_r>:
d05e1df4:	b538      	push	{r3, r4, r5, lr}
d05e1df6:	4d07      	ldr	r5, [pc, #28]	; (d05e1e14 <_lseek_r+0x20>)
d05e1df8:	4604      	mov	r4, r0
d05e1dfa:	4608      	mov	r0, r1
d05e1dfc:	4611      	mov	r1, r2
d05e1dfe:	2200      	movs	r2, #0
d05e1e00:	602a      	str	r2, [r5, #0]
d05e1e02:	461a      	mov	r2, r3
d05e1e04:	f7fe f95e 	bl	d05e00c4 <_lseek>
d05e1e08:	1c43      	adds	r3, r0, #1
d05e1e0a:	d102      	bne.n	d05e1e12 <_lseek_r+0x1e>
d05e1e0c:	682b      	ldr	r3, [r5, #0]
d05e1e0e:	b103      	cbz	r3, d05e1e12 <_lseek_r+0x1e>
d05e1e10:	6023      	str	r3, [r4, #0]
d05e1e12:	bd38      	pop	{r3, r4, r5, pc}
d05e1e14:	d05e2d7c 	.word	0xd05e2d7c
	...

d05e1e20 <memchr>:
d05e1e20:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d05e1e24:	2a10      	cmp	r2, #16
d05e1e26:	db2b      	blt.n	d05e1e80 <memchr+0x60>
d05e1e28:	f010 0f07 	tst.w	r0, #7
d05e1e2c:	d008      	beq.n	d05e1e40 <memchr+0x20>
d05e1e2e:	f810 3b01 	ldrb.w	r3, [r0], #1
d05e1e32:	3a01      	subs	r2, #1
d05e1e34:	428b      	cmp	r3, r1
d05e1e36:	d02d      	beq.n	d05e1e94 <memchr+0x74>
d05e1e38:	f010 0f07 	tst.w	r0, #7
d05e1e3c:	b342      	cbz	r2, d05e1e90 <memchr+0x70>
d05e1e3e:	d1f6      	bne.n	d05e1e2e <memchr+0xe>
d05e1e40:	b4f0      	push	{r4, r5, r6, r7}
d05e1e42:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d05e1e46:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d05e1e4a:	f022 0407 	bic.w	r4, r2, #7
d05e1e4e:	f07f 0700 	mvns.w	r7, #0
d05e1e52:	2300      	movs	r3, #0
d05e1e54:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d05e1e58:	3c08      	subs	r4, #8
d05e1e5a:	ea85 0501 	eor.w	r5, r5, r1
d05e1e5e:	ea86 0601 	eor.w	r6, r6, r1
d05e1e62:	fa85 f547 	uadd8	r5, r5, r7
d05e1e66:	faa3 f587 	sel	r5, r3, r7
d05e1e6a:	fa86 f647 	uadd8	r6, r6, r7
d05e1e6e:	faa5 f687 	sel	r6, r5, r7
d05e1e72:	b98e      	cbnz	r6, d05e1e98 <memchr+0x78>
d05e1e74:	d1ee      	bne.n	d05e1e54 <memchr+0x34>
d05e1e76:	bcf0      	pop	{r4, r5, r6, r7}
d05e1e78:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d05e1e7c:	f002 0207 	and.w	r2, r2, #7
d05e1e80:	b132      	cbz	r2, d05e1e90 <memchr+0x70>
d05e1e82:	f810 3b01 	ldrb.w	r3, [r0], #1
d05e1e86:	3a01      	subs	r2, #1
d05e1e88:	ea83 0301 	eor.w	r3, r3, r1
d05e1e8c:	b113      	cbz	r3, d05e1e94 <memchr+0x74>
d05e1e8e:	d1f8      	bne.n	d05e1e82 <memchr+0x62>
d05e1e90:	2000      	movs	r0, #0
d05e1e92:	4770      	bx	lr
d05e1e94:	3801      	subs	r0, #1
d05e1e96:	4770      	bx	lr
d05e1e98:	2d00      	cmp	r5, #0
d05e1e9a:	bf06      	itte	eq
d05e1e9c:	4635      	moveq	r5, r6
d05e1e9e:	3803      	subeq	r0, #3
d05e1ea0:	3807      	subne	r0, #7
d05e1ea2:	f015 0f01 	tst.w	r5, #1
d05e1ea6:	d107      	bne.n	d05e1eb8 <memchr+0x98>
d05e1ea8:	3001      	adds	r0, #1
d05e1eaa:	f415 7f80 	tst.w	r5, #256	; 0x100
d05e1eae:	bf02      	ittt	eq
d05e1eb0:	3001      	addeq	r0, #1
d05e1eb2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d05e1eb6:	3001      	addeq	r0, #1
d05e1eb8:	bcf0      	pop	{r4, r5, r6, r7}
d05e1eba:	3801      	subs	r0, #1
d05e1ebc:	4770      	bx	lr
d05e1ebe:	bf00      	nop

d05e1ec0 <memmove>:
d05e1ec0:	4288      	cmp	r0, r1
d05e1ec2:	b510      	push	{r4, lr}
d05e1ec4:	eb01 0402 	add.w	r4, r1, r2
d05e1ec8:	d902      	bls.n	d05e1ed0 <memmove+0x10>
d05e1eca:	4284      	cmp	r4, r0
d05e1ecc:	4623      	mov	r3, r4
d05e1ece:	d807      	bhi.n	d05e1ee0 <memmove+0x20>
d05e1ed0:	1e43      	subs	r3, r0, #1
d05e1ed2:	42a1      	cmp	r1, r4
d05e1ed4:	d008      	beq.n	d05e1ee8 <memmove+0x28>
d05e1ed6:	f811 2b01 	ldrb.w	r2, [r1], #1
d05e1eda:	f803 2f01 	strb.w	r2, [r3, #1]!
d05e1ede:	e7f8      	b.n	d05e1ed2 <memmove+0x12>
d05e1ee0:	4402      	add	r2, r0
d05e1ee2:	4601      	mov	r1, r0
d05e1ee4:	428a      	cmp	r2, r1
d05e1ee6:	d100      	bne.n	d05e1eea <memmove+0x2a>
d05e1ee8:	bd10      	pop	{r4, pc}
d05e1eea:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d05e1eee:	f802 4d01 	strb.w	r4, [r2, #-1]!
d05e1ef2:	e7f7      	b.n	d05e1ee4 <memmove+0x24>

d05e1ef4 <__malloc_lock>:
d05e1ef4:	4801      	ldr	r0, [pc, #4]	; (d05e1efc <__malloc_lock+0x8>)
d05e1ef6:	f7ff bb4f 	b.w	d05e1598 <__retarget_lock_acquire_recursive>
d05e1efa:	bf00      	nop
d05e1efc:	d05e2d74 	.word	0xd05e2d74

d05e1f00 <__malloc_unlock>:
d05e1f00:	4801      	ldr	r0, [pc, #4]	; (d05e1f08 <__malloc_unlock+0x8>)
d05e1f02:	f7ff bb4a 	b.w	d05e159a <__retarget_lock_release_recursive>
d05e1f06:	bf00      	nop
d05e1f08:	d05e2d74 	.word	0xd05e2d74

d05e1f0c <_realloc_r>:
d05e1f0c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e1f0e:	4607      	mov	r7, r0
d05e1f10:	4614      	mov	r4, r2
d05e1f12:	460e      	mov	r6, r1
d05e1f14:	b921      	cbnz	r1, d05e1f20 <_realloc_r+0x14>
d05e1f16:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d05e1f1a:	4611      	mov	r1, r2
d05e1f1c:	f7ff bbba 	b.w	d05e1694 <_malloc_r>
d05e1f20:	b922      	cbnz	r2, d05e1f2c <_realloc_r+0x20>
d05e1f22:	f7ff fb67 	bl	d05e15f4 <_free_r>
d05e1f26:	4625      	mov	r5, r4
d05e1f28:	4628      	mov	r0, r5
d05e1f2a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d05e1f2c:	f000 f826 	bl	d05e1f7c <_malloc_usable_size_r>
d05e1f30:	42a0      	cmp	r0, r4
d05e1f32:	d20f      	bcs.n	d05e1f54 <_realloc_r+0x48>
d05e1f34:	4621      	mov	r1, r4
d05e1f36:	4638      	mov	r0, r7
d05e1f38:	f7ff fbac 	bl	d05e1694 <_malloc_r>
d05e1f3c:	4605      	mov	r5, r0
d05e1f3e:	2800      	cmp	r0, #0
d05e1f40:	d0f2      	beq.n	d05e1f28 <_realloc_r+0x1c>
d05e1f42:	4631      	mov	r1, r6
d05e1f44:	4622      	mov	r2, r4
d05e1f46:	f7ff f84f 	bl	d05e0fe8 <memcpy>
d05e1f4a:	4631      	mov	r1, r6
d05e1f4c:	4638      	mov	r0, r7
d05e1f4e:	f7ff fb51 	bl	d05e15f4 <_free_r>
d05e1f52:	e7e9      	b.n	d05e1f28 <_realloc_r+0x1c>
d05e1f54:	4635      	mov	r5, r6
d05e1f56:	e7e7      	b.n	d05e1f28 <_realloc_r+0x1c>

d05e1f58 <_read_r>:
d05e1f58:	b538      	push	{r3, r4, r5, lr}
d05e1f5a:	4d07      	ldr	r5, [pc, #28]	; (d05e1f78 <_read_r+0x20>)
d05e1f5c:	4604      	mov	r4, r0
d05e1f5e:	4608      	mov	r0, r1
d05e1f60:	4611      	mov	r1, r2
d05e1f62:	2200      	movs	r2, #0
d05e1f64:	602a      	str	r2, [r5, #0]
d05e1f66:	461a      	mov	r2, r3
d05e1f68:	f7fe f898 	bl	d05e009c <_read>
d05e1f6c:	1c43      	adds	r3, r0, #1
d05e1f6e:	d102      	bne.n	d05e1f76 <_read_r+0x1e>
d05e1f70:	682b      	ldr	r3, [r5, #0]
d05e1f72:	b103      	cbz	r3, d05e1f76 <_read_r+0x1e>
d05e1f74:	6023      	str	r3, [r4, #0]
d05e1f76:	bd38      	pop	{r3, r4, r5, pc}
d05e1f78:	d05e2d7c 	.word	0xd05e2d7c

d05e1f7c <_malloc_usable_size_r>:
d05e1f7c:	f851 3c04 	ldr.w	r3, [r1, #-4]
d05e1f80:	1f18      	subs	r0, r3, #4
d05e1f82:	2b00      	cmp	r3, #0
d05e1f84:	bfbc      	itt	lt
d05e1f86:	580b      	ldrlt	r3, [r1, r0]
d05e1f88:	18c0      	addlt	r0, r0, r3
d05e1f8a:	4770      	bx	lr
d05e1f8c:	202e202e 	.word	0x202e202e
d05e1f90:	002e202e 	.word	0x002e202e
d05e1f94:	69646f4d 	.word	0x69646f4d
d05e1f98:	64656966 	.word	0x64656966
d05e1f9c:	00000000 	.word	0x00000000
d05e1fa0:	64616f4c 	.word	0x64616f4c
d05e1fa4:	61696420 	.word	0x61696420
d05e1fa8:	20676f6c 	.word	0x20676f6c
d05e1fac:	65726c61 	.word	0x65726c61
d05e1fb0:	20796461 	.word	0x20796461
d05e1fb4:	6e65706f 	.word	0x6e65706f
d05e1fb8:	00000000 	.word	0x00000000
d05e1fbc:	78742e2a 	.word	0x78742e2a
d05e1fc0:	2e2a7c74 	.word	0x2e2a7c74
d05e1fc4:	7c676f6c 	.word	0x7c676f6c
d05e1fc8:	66632e2a 	.word	0x66632e2a
d05e1fcc:	00000067 	.word	0x00000067
d05e1fd0:	74696445 	.word	0x74696445
d05e1fd4:	2e315620 	.word	0x2e315620
d05e1fd8:	4c203a30 	.word	0x4c203a30
d05e1fdc:	2064616f 	.word	0x2064616f
d05e1fe0:	74786554 	.word	0x74786554
d05e1fe4:	00000000 	.word	0x00000000
d05e1fe8:	64616f4c 	.word	0x64616f4c
d05e1fec:	61696420 	.word	0x61696420
d05e1ff0:	20676f6c 	.word	0x20676f6c
d05e1ff4:	6e65706f 	.word	0x6e65706f
d05e1ff8:	00006465 	.word	0x00006465
d05e1ffc:	65766153 	.word	0x65766153
d05e2000:	61696420 	.word	0x61696420
d05e2004:	20676f6c 	.word	0x20676f6c
d05e2008:	65726c61 	.word	0x65726c61
d05e200c:	20796461 	.word	0x20796461
d05e2010:	6e65706f 	.word	0x6e65706f
d05e2014:	00000000 	.word	0x00000000
d05e2018:	74696445 	.word	0x74696445
d05e201c:	2e315620 	.word	0x2e315620
d05e2020:	53203a30 	.word	0x53203a30
d05e2024:	20657661 	.word	0x20657661
d05e2028:	74786554 	.word	0x74786554
d05e202c:	00734120 	.word	0x00734120
d05e2030:	65766153 	.word	0x65766153
d05e2034:	61696420 	.word	0x61696420
d05e2038:	20676f6c 	.word	0x20676f6c
d05e203c:	6e65706f 	.word	0x6e65706f
d05e2040:	00006465 	.word	0x00006465
d05e2044:	67617244 	.word	0x67617244
d05e2048:	6e616320 	.word	0x6e616320
d05e204c:	6c6c6563 	.word	0x6c6c6563
d05e2050:	00006465 	.word	0x00006465
d05e2054:	67617244 	.word	0x67617244
d05e2058:	676e6967 	.word	0x676e6967
d05e205c:	746f6e20 	.word	0x746f6e20
d05e2060:	78742e65 	.word	0x78742e65
d05e2064:	00000074 	.word	0x00000074
d05e2068:	64616f4c 	.word	0x64616f4c
d05e206c:	6e616320 	.word	0x6e616320
d05e2070:	6c6c6563 	.word	0x6c6c6563
d05e2074:	00006465 	.word	0x00006465
d05e2078:	64616f4c 	.word	0x64616f4c
d05e207c:	69616620 	.word	0x69616620
d05e2080:	3a64656c 	.word	0x3a64656c
d05e2084:	20524620 	.word	0x20524620
d05e2088:	00007525 	.word	0x00007525
d05e208c:	64616552 	.word	0x64616552
d05e2090:	69616620 	.word	0x69616620
d05e2094:	3a64656c 	.word	0x3a64656c
d05e2098:	20524620 	.word	0x20524620
d05e209c:	00007525 	.word	0x00007525
d05e20a0:	64616f4c 	.word	0x64616f4c
d05e20a4:	203a6465 	.word	0x203a6465
d05e20a8:	32372e25 	.word	0x32372e25
d05e20ac:	00000073 	.word	0x00000073
d05e20b0:	6e6b6e75 	.word	0x6e6b6e75
d05e20b4:	006e776f 	.word	0x006e776f
d05e20b8:	65766153 	.word	0x65766153
d05e20bc:	6e616320 	.word	0x6e616320
d05e20c0:	6c6c6563 	.word	0x6c6c6563
d05e20c4:	00006465 	.word	0x00006465
d05e20c8:	65766153 	.word	0x65766153
d05e20cc:	69616620 	.word	0x69616620
d05e20d0:	3a64656c 	.word	0x3a64656c
d05e20d4:	20524620 	.word	0x20524620
d05e20d8:	00007525 	.word	0x00007525
d05e20dc:	74697257 	.word	0x74697257
d05e20e0:	61662065 	.word	0x61662065
d05e20e4:	64656c69 	.word	0x64656c69
d05e20e8:	5246203a 	.word	0x5246203a
d05e20ec:	00752520 	.word	0x00752520
d05e20f0:	65766153 	.word	0x65766153
d05e20f4:	636e6920 	.word	0x636e6920
d05e20f8:	6c706d6f 	.word	0x6c706d6f
d05e20fc:	00657465 	.word	0x00657465
d05e2100:	65766153 	.word	0x65766153
d05e2104:	72742064 	.word	0x72742064
d05e2108:	61636e75 	.word	0x61636e75
d05e210c:	3a646574 	.word	0x3a646574
d05e2110:	362e2520 	.word	0x362e2520
d05e2114:	00007334 	.word	0x00007334
d05e2118:	65766153 	.word	0x65766153
d05e211c:	25203a64 	.word	0x25203a64
d05e2120:	7332372e 	.word	0x7332372e
d05e2124:	00000000 	.word	0x00000000
d05e2128:	7373654d 	.word	0x7373654d
d05e212c:	20656761 	.word	0x20656761
d05e2130:	696f6863 	.word	0x696f6863
d05e2134:	203a6563 	.word	0x203a6563
d05e2138:	00007325 	.word	0x00007325
d05e213c:	64616f4c 	.word	0x64616f4c
d05e2140:	73206465 	.word	0x73206465
d05e2144:	6c706d61 	.word	0x6c706d61
d05e2148:	65742065 	.word	0x65742065
d05e214c:	00007478 	.word	0x00007478
d05e2150:	2077654e 	.word	0x2077654e
d05e2154:	75636f64 	.word	0x75636f64
d05e2158:	746e656d 	.word	0x746e656d
d05e215c:	00000000 	.word	0x00000000
d05e2160:	74696445 	.word	0x74696445
d05e2164:	2e315620 	.word	0x2e315620
d05e2168:	00000030 	.word	0x00000030
d05e216c:	0077654e 	.word	0x0077654e
d05e2170:	64616f4c 	.word	0x64616f4c
d05e2174:	00000000 	.word	0x00000000
d05e2178:	706d6153 	.word	0x706d6153
d05e217c:	0000656c 	.word	0x0000656c
d05e2180:	65766153 	.word	0x65766153
d05e2184:	00000000 	.word	0x00000000
d05e2188:	736f6c43 	.word	0x736f6c43
d05e218c:	00000065 	.word	0x00000065
d05e2190:	64616552 	.word	0x64616552
d05e2194:	00000079 	.word	0x00000079
d05e2198:	636e6143 	.word	0x636e6143
d05e219c:	00006c65 	.word	0x00006c65
d05e21a0:	00004b4f 	.word	0x00004b4f
d05e21a4:	00736559 	.word	0x00736559
d05e21a8:	00006f4e 	.word	0x00006f4e

d05e21ac <CSWTCH.151>:
d05e21ac:	d05e2198 d05e21a0 d05e21a4 d05e21a8     .!^..!^..!^..!^.

d05e21bc <empty_document>:
d05e21bc:	00000000                                ....

d05e21c0 <sample_document>:
d05e21c0:	74696445 72637320 68637461 0a646170     Edit scratchpad.
d05e21d0:	6968540a 73692073 74206120 20796e69     .This is a tiny 
d05e21e0:	6c707061 74207465 20747865 74696465     applet text edit
d05e21f0:	7320726f 6c6c6568 68540a2e 65742065     or shell..The te
d05e2200:	72617478 69206165 534f2073 6e776f2d     xtarea is OS-own
d05e2210:	202c6465 74206f73 6e697079 64652f67     ed, so typing/ed
d05e2220:	6e697469 61682067 6e657070 6e692073     iting happens in
d05e2230:	65687420 49554720 64616720 2e746567      the GUI gadget.
d05e2240:	4e270a0a 20277765 20646e61 6d615327     ..'New' and 'Sam
d05e2250:	27656c70 62657220 646c6975 69687420     ple' rebuild thi
d05e2260:	65742073 61207478 2e616572 616f4c0a     s text area..Loa
d05e2270:	6f6e2064 73752077 74207365 53206568     d now uses the S
d05e2280:	6f424449 69662078 7220656c 65757165     IDBox file reque
d05e2290:	72657473 61530a2e 6e206576 7720776f     ster..Save now w
d05e22a0:	65746972 68742073 75632065 6e657272     rites the curren
d05e22b0:	65742074 72617478 63206165 65746e6f     t textarea conte
d05e22c0:	2e73746e 0000000a                       nts.....

d05e22c8 <_global_impure_ptr>:
d05e22c8:	d05e2478                                x$^.

d05e22cc <__sf_fake_stderr>:
	...

d05e22ec <__sf_fake_stdin>:
	...

d05e230c <__sf_fake_stdout>:
	...
d05e232c:	2b302d23 6c680020 6665004c 47464567     #-0+ .hlL.efgEFG
d05e233c:	32313000 36353433 41393837 45444342     .0123456789ABCDE
d05e234c:	31300046 35343332 39383736 64636261     F.0123456789abcd
d05e235c:	                                         ef.

Disassembly of section .init:

d05e2360 <_init>:
d05e2360:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e2362:	bf00      	nop

Disassembly of section .fini:

d05e2364 <_fini>:
d05e2364:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d05e2366:	bf00      	nop
