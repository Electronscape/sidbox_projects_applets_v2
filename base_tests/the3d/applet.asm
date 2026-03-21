
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d0040010 <applet_entry>:
d0040010:	b570      	push	{r4, r5, r6, lr}
d0040012:	4e09      	ldr	r6, [pc, #36]	; (d0040038 <applet_entry+0x28>)
d0040014:	460d      	mov	r5, r1
d0040016:	4604      	mov	r4, r0
d0040018:	2100      	movs	r1, #0
d004001a:	6833      	ldr	r3, [r6, #0]
d004001c:	6898      	ldr	r0, [r3, #8]
d004001e:	f006 f821 	bl	d0046064 <setbuf>
d0040022:	6833      	ldr	r3, [r6, #0]
d0040024:	2100      	movs	r1, #0
d0040026:	68d8      	ldr	r0, [r3, #12]
d0040028:	f006 f81c 	bl	d0046064 <setbuf>
d004002c:	4629      	mov	r1, r5
d004002e:	4620      	mov	r0, r4
d0040030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0040034:	f001 bf1e 	b.w	d0041e74 <main>
d0040038:	d0047518 	.word	0xd0047518

d004003c <initMalloc>:
d004003c:	4902      	ldr	r1, [pc, #8]	; (d0040048 <initMalloc+0xc>)
d004003e:	4b03      	ldr	r3, [pc, #12]	; (d004004c <initMalloc+0x10>)
d0040040:	4a03      	ldr	r2, [pc, #12]	; (d0040050 <initMalloc+0x14>)
d0040042:	1a5b      	subs	r3, r3, r1
d0040044:	6013      	str	r3, [r2, #0]
d0040046:	4770      	bx	lr
d0040048:	d0134cb0 	.word	0xd0134cb0
d004004c:	d0600000 	.word	0xd0600000
d0040050:	d00e1c08 	.word	0xd00e1c08

d0040054 <_write_r>:
d0040054:	3901      	subs	r1, #1
d0040056:	2901      	cmp	r1, #1
d0040058:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d004005a:	d81f      	bhi.n	d004009c <_write_r+0x48>
d004005c:	b1e2      	cbz	r2, d0040098 <_write_r+0x44>
d004005e:	461c      	mov	r4, r3
d0040060:	b1d3      	cbz	r3, d0040098 <_write_r+0x44>
d0040062:	4d12      	ldr	r5, [pc, #72]	; (d00400ac <_write_r+0x58>)
d0040064:	682e      	ldr	r6, [r5, #0]
d0040066:	b9ae      	cbnz	r6, d0040094 <_write_r+0x40>
d0040068:	4f11      	ldr	r7, [pc, #68]	; (d00400b0 <_write_r+0x5c>)
d004006a:	2301      	movs	r3, #1
d004006c:	4611      	mov	r1, r2
d004006e:	4630      	mov	r0, r6
d0040070:	602b      	str	r3, [r5, #0]
d0040072:	4622      	mov	r2, r4
d0040074:	7a3b      	ldrb	r3, [r7, #8]
d0040076:	f897 c009 	ldrb.w	ip, [r7, #9]
d004007a:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d004007e:	f897 c00a 	ldrb.w	ip, [r7, #10]
d0040082:	7aff      	ldrb	r7, [r7, #11]
d0040084:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0040088:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d004008c:	681b      	ldr	r3, [r3, #0]
d004008e:	685b      	ldr	r3, [r3, #4]
d0040090:	4798      	blx	r3
d0040092:	602e      	str	r6, [r5, #0]
d0040094:	4620      	mov	r0, r4
d0040096:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0040098:	2000      	movs	r0, #0
d004009a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d004009c:	f005 fcb8 	bl	d0045a10 <__errno>
d00400a0:	2209      	movs	r2, #9
d00400a2:	4603      	mov	r3, r0
d00400a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00400a8:	601a      	str	r2, [r3, #0]
d00400aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00400ac:	d0047584 	.word	0xd0047584
d00400b0:	2001f000 	.word	0x2001f000

d00400b4 <_read>:
d00400b4:	b508      	push	{r3, lr}
d00400b6:	f005 fcab 	bl	d0045a10 <__errno>
d00400ba:	2258      	movs	r2, #88	; 0x58
d00400bc:	4603      	mov	r3, r0
d00400be:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00400c2:	601a      	str	r2, [r3, #0]
d00400c4:	bd08      	pop	{r3, pc}
d00400c6:	bf00      	nop

d00400c8 <_close>:
d00400c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00400cc:	4770      	bx	lr
d00400ce:	bf00      	nop

d00400d0 <_fstat>:
d00400d0:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d00400d4:	2000      	movs	r0, #0
d00400d6:	604b      	str	r3, [r1, #4]
d00400d8:	4770      	bx	lr
d00400da:	bf00      	nop

d00400dc <_lseek>:
d00400dc:	2000      	movs	r0, #0
d00400de:	4770      	bx	lr

d00400e0 <_sbrk_r>:
d00400e0:	4b0c      	ldr	r3, [pc, #48]	; (d0040114 <_sbrk_r+0x34>)
d00400e2:	4a0d      	ldr	r2, [pc, #52]	; (d0040118 <_sbrk_r+0x38>)
d00400e4:	6818      	ldr	r0, [r3, #0]
d00400e6:	b510      	push	{r4, lr}
d00400e8:	b918      	cbnz	r0, d00400f2 <_sbrk_r+0x12>
d00400ea:	1dd0      	adds	r0, r2, #7
d00400ec:	f020 0007 	bic.w	r0, r0, #7
d00400f0:	6018      	str	r0, [r3, #0]
d00400f2:	4401      	add	r1, r0
d00400f4:	4c09      	ldr	r4, [pc, #36]	; (d004011c <_sbrk_r+0x3c>)
d00400f6:	42a1      	cmp	r1, r4
d00400f8:	d803      	bhi.n	d0040102 <_sbrk_r+0x22>
d00400fa:	4291      	cmp	r1, r2
d00400fc:	d301      	bcc.n	d0040102 <_sbrk_r+0x22>
d00400fe:	6019      	str	r1, [r3, #0]
d0040100:	bd10      	pop	{r4, pc}
d0040102:	f005 fc85 	bl	d0045a10 <__errno>
d0040106:	220c      	movs	r2, #12
d0040108:	4603      	mov	r3, r0
d004010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004010e:	601a      	str	r2, [r3, #0]
d0040110:	bd10      	pop	{r4, pc}
d0040112:	bf00      	nop
d0040114:	d0047580 	.word	0xd0047580
d0040118:	d0134cb0 	.word	0xd0134cb0
d004011c:	d0600000 	.word	0xd0600000

d0040120 <set3DRenderBuffer>:
d0040120:	4b01      	ldr	r3, [pc, #4]	; (d0040128 <set3DRenderBuffer+0x8>)
d0040122:	6018      	str	r0, [r3, #0]
d0040124:	4770      	bx	lr
d0040126:	bf00      	nop
d0040128:	d00e1c0c 	.word	0xd00e1c0c

d004012c <putPixel>:
d004012c:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0040130:	d209      	bcs.n	d0040146 <putPixel+0x1a>
d0040132:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d0040136:	d206      	bcs.n	d0040146 <putPixel+0x1a>
d0040138:	4b03      	ldr	r3, [pc, #12]	; (d0040148 <putPixel+0x1c>)
d004013a:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d004013e:	681b      	ldr	r3, [r3, #0]
d0040140:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d0040144:	5442      	strb	r2, [r0, r1]
d0040146:	4770      	bx	lr
d0040148:	d00e1c0c 	.word	0xd00e1c0c

d004014c <drawLine>:
d004014c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040150:	b085      	sub	sp, #20
d0040152:	eba2 0c00 	sub.w	ip, r2, r0
d0040156:	eba3 0901 	sub.w	r9, r3, r1
d004015a:	f240 1edf 	movw	lr, #479	; 0x1df
d004015e:	f89d 4038 	ldrb.w	r4, [sp, #56]	; 0x38
d0040162:	f240 1a3f 	movw	sl, #319	; 0x13f
d0040166:	f8df b07c 	ldr.w	fp, [pc, #124]	; d00401e4 <drawLine+0x98>
d004016a:	9401      	str	r4, [sp, #4]
d004016c:	4282      	cmp	r2, r0
d004016e:	bfcc      	ite	gt
d0040170:	2401      	movgt	r4, #1
d0040172:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d0040176:	9402      	str	r4, [sp, #8]
d0040178:	428b      	cmp	r3, r1
d004017a:	bfcc      	ite	gt
d004017c:	2401      	movgt	r4, #1
d004017e:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d0040182:	f1bc 0f00 	cmp.w	ip, #0
d0040186:	9403      	str	r4, [sp, #12]
d0040188:	bfb8      	it	lt
d004018a:	f1cc 0c00 	rsblt	ip, ip, #0
d004018e:	f1b9 0f00 	cmp.w	r9, #0
d0040192:	bfb8      	it	lt
d0040194:	f1c9 0900 	rsblt	r9, r9, #0
d0040198:	ebac 0409 	sub.w	r4, ip, r9
d004019c:	f1c9 0800 	rsb	r8, r9, #0
d00401a0:	4570      	cmp	r0, lr
d00401a2:	eb00 0780 	add.w	r7, r0, r0, lsl #2
d00401a6:	ea4f 0644 	mov.w	r6, r4, lsl #1
d00401aa:	d807      	bhi.n	d00401bc <drawLine+0x70>
d00401ac:	4551      	cmp	r1, sl
d00401ae:	d805      	bhi.n	d00401bc <drawLine+0x70>
d00401b0:	f8db 5000 	ldr.w	r5, [fp]
d00401b4:	eb05 1587 	add.w	r5, r5, r7, lsl #6
d00401b8:	9f01      	ldr	r7, [sp, #4]
d00401ba:	546f      	strb	r7, [r5, r1]
d00401bc:	4290      	cmp	r0, r2
d00401be:	d101      	bne.n	d00401c4 <drawLine+0x78>
d00401c0:	4299      	cmp	r1, r3
d00401c2:	d00c      	beq.n	d00401de <drawLine+0x92>
d00401c4:	ebb8 0f44 	cmp.w	r8, r4, lsl #1
d00401c8:	dc05      	bgt.n	d00401d6 <drawLine+0x8a>
d00401ca:	9d02      	ldr	r5, [sp, #8]
d00401cc:	45b4      	cmp	ip, r6
d00401ce:	eba4 0409 	sub.w	r4, r4, r9
d00401d2:	4428      	add	r0, r5
d00401d4:	dbe4      	blt.n	d00401a0 <drawLine+0x54>
d00401d6:	9d03      	ldr	r5, [sp, #12]
d00401d8:	4464      	add	r4, ip
d00401da:	4429      	add	r1, r5
d00401dc:	e7e0      	b.n	d00401a0 <drawLine+0x54>
d00401de:	b005      	add	sp, #20
d00401e0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00401e4:	d00e1c0c 	.word	0xd00e1c0c

d00401e8 <shadeColor>:
d00401e8:	2900      	cmp	r1, #0
d00401ea:	db09      	blt.n	d0040200 <shadeColor+0x18>
d00401ec:	2904      	cmp	r1, #4
d00401ee:	dc09      	bgt.n	d0040204 <shadeColor+0x1c>
d00401f0:	0109      	lsls	r1, r1, #4
d00401f2:	b2c9      	uxtb	r1, r1
d00401f4:	f000 000f 	and.w	r0, r0, #15
d00401f8:	3020      	adds	r0, #32
d00401fa:	4408      	add	r0, r1
d00401fc:	b2c0      	uxtb	r0, r0
d00401fe:	4770      	bx	lr
d0040200:	2100      	movs	r1, #0
d0040202:	e7f7      	b.n	d00401f4 <shadeColor+0xc>
d0040204:	2010      	movs	r0, #16
d0040206:	4770      	bx	lr

d0040208 <fillTriangleFlat>:
d0040208:	eddf 7ad1 	vldr	s15, [pc, #836]	; d0040550 <fillTriangleFlat+0x348>
d004020c:	eef4 0ae7 	vcmpe.f32	s1, s15
d0040210:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040214:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040218:	eeb4 1ae7 	vcmpe.f32	s2, s15
d004021c:	ed2d 8b10 	vpush	{d8-d15}
d0040220:	b089      	sub	sp, #36	; 0x24
d0040222:	9304      	str	r3, [sp, #16]
d0040224:	bf94      	ite	ls
d0040226:	2301      	movls	r3, #1
d0040228:	2300      	movhi	r3, #0
d004022a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004022e:	9001      	str	r0, [sp, #4]
d0040230:	9102      	str	r1, [sp, #8]
d0040232:	bf98      	it	ls
d0040234:	f043 0301 	orrls.w	r3, r3, #1
d0040238:	9203      	str	r2, [sp, #12]
d004023a:	f8bd 4090 	ldrh.w	r4, [sp, #144]	; 0x90
d004023e:	f8bd 0094 	ldrh.w	r0, [sp, #148]	; 0x94
d0040242:	f8bd 1098 	ldrh.w	r1, [sp, #152]	; 0x98
d0040246:	f89d 209c 	ldrb.w	r2, [sp, #156]	; 0x9c
d004024a:	2b00      	cmp	r3, #0
d004024c:	f040 8154 	bne.w	d00404f8 <fillTriangleFlat+0x2f0>
d0040250:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0040254:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040258:	bf94      	ite	ls
d004025a:	2701      	movls	r7, #1
d004025c:	2700      	movhi	r7, #0
d004025e:	f240 814b 	bls.w	d00404f8 <fillTriangleFlat+0x2f0>
d0040262:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0040266:	ee07 4a10 	vmov	s14, r4
d004026a:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d004026e:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0040272:	ee87 8a80 	vdiv.f32	s16, s15, s0
d0040276:	ee87 2a81 	vdiv.f32	s4, s15, s2
d004027a:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d004027e:	ee07 0a90 	vmov	s15, r0
d0040282:	ee71 1aa6 	vadd.f32	s3, s3, s13
d0040286:	eef8 5a67 	vcvt.f32.u32	s11, s15
d004028a:	ee07 1a90 	vmov	s15, r1
d004028e:	ee27 7a08 	vmul.f32	s14, s14, s16
d0040292:	eeb8 3a67 	vcvt.f32.u32	s6, s15
d0040296:	eefd 7ae1 	vcvt.s32.f32	s15, s3
d004029a:	ee23 3a02 	vmul.f32	s6, s6, s4
d004029e:	ee17 3a90 	vmov	r3, s15
d00402a2:	2b00      	cmp	r3, #0
d00402a4:	ee65 5a80 	vmul.f32	s11, s11, s0
d00402a8:	f2c0 812d 	blt.w	d0040506 <fillTriangleFlat+0x2fe>
d00402ac:	2b04      	cmp	r3, #4
d00402ae:	f340 8128 	ble.w	d0040502 <fillTriangleFlat+0x2fa>
d00402b2:	2710      	movs	r7, #16
d00402b4:	eddd 7a02 	vldr	s15, [sp, #8]
d00402b8:	eddd 6a23 	vldr	s13, [sp, #140]	; 0x8c
d00402bc:	eeb8 5ae7 	vcvt.f32.s32	s10, s15
d00402c0:	eddd 7a04 	vldr	s15, [sp, #16]
d00402c4:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d00402c8:	eef8 3ae7 	vcvt.f32.s32	s7, s15
d00402cc:	eddd 7a01 	vldr	s15, [sp, #4]
d00402d0:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d00402d4:	eddd 7a03 	vldr	s15, [sp, #12]
d00402d8:	eeb4 5ae3 	vcmpe.f32	s10, s7
d00402dc:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d00402e0:	eddd 7a22 	vldr	s15, [sp, #136]	; 0x88
d00402e4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00402e8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00402ec:	f300 8111 	bgt.w	d0040512 <fillTriangleFlat+0x30a>
d00402f0:	eeb4 5ae6 	vcmpe.f32	s10, s13
d00402f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00402f8:	f300 81ee 	bgt.w	d00406d8 <fillTriangleFlat+0x4d0>
d00402fc:	eef4 3ae6 	vcmpe.f32	s7, s13
d0040300:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040304:	dd17      	ble.n	d0040336 <fillTriangleFlat+0x12e>
d0040306:	eeb0 1a65 	vmov.f32	s2, s11
d004030a:	eef0 1a40 	vmov.f32	s3, s0
d004030e:	eef0 2a63 	vmov.f32	s5, s7
d0040312:	eeb0 4a64 	vmov.f32	s8, s9
d0040316:	eef0 5a43 	vmov.f32	s11, s6
d004031a:	eeb0 0a42 	vmov.f32	s0, s4
d004031e:	eef0 3a66 	vmov.f32	s7, s13
d0040322:	eef0 4a67 	vmov.f32	s9, s15
d0040326:	eeb0 3a41 	vmov.f32	s6, s2
d004032a:	eeb0 2a61 	vmov.f32	s4, s3
d004032e:	eef0 6a62 	vmov.f32	s13, s5
d0040332:	eef0 7a44 	vmov.f32	s15, s8
d0040336:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d004033a:	ee75 2a04 	vadd.f32	s5, s10, s8
d004033e:	ee36 4a84 	vadd.f32	s8, s13, s8
d0040342:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d0040346:	eebd 4ac4 	vcvt.s32.f32	s8, s8
d004034a:	ee12 3a90 	vmov	r3, s5
d004034e:	ee14 2a10 	vmov	r2, s8
d0040352:	4293      	cmp	r3, r2
d0040354:	f000 80d0 	beq.w	d00404f8 <fillTriangleFlat+0x2f0>
d0040358:	ee76 2ac5 	vsub.f32	s5, s13, s10
d004035c:	ed9f 9a7c 	vldr	s18, [pc, #496]	; d0040550 <fillTriangleFlat+0x348>
d0040360:	eef4 2ac9 	vcmpe.f32	s5, s18
d0040364:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040368:	f240 80c6 	bls.w	d00404f8 <fillTriangleFlat+0x2f0>
d004036c:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d0040370:	ee37 1ac6 	vsub.f32	s2, s15, s12
d0040374:	ee72 0a48 	vsub.f32	s1, s4, s16
d0040378:	ee81 4aa2 	vdiv.f32	s8, s3, s5
d004037c:	ee73 2ac5 	vsub.f32	s5, s7, s10
d0040380:	ee73 8a47 	vsub.f32	s17, s6, s14
d0040384:	eef4 2ac9 	vcmpe.f32	s5, s18
d0040388:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004038c:	ee21 1a04 	vmul.f32	s2, s2, s8
d0040390:	ee60 0a84 	vmul.f32	s1, s1, s8
d0040394:	ee68 8a84 	vmul.f32	s17, s17, s8
d0040398:	f300 80e2 	bgt.w	d0040560 <fillTriangleFlat+0x358>
d004039c:	ee36 4ae3 	vsub.f32	s8, s13, s7
d00403a0:	eeb4 4ac9 	vcmpe.f32	s8, s18
d00403a4:	ed8d 4a01 	vstr	s8, [sp, #4]
d00403a8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00403ac:	f340 80a4 	ble.w	d00404f8 <fillTriangleFlat+0x2f0>
d00403b0:	eec1 9a84 	vdiv.f32	s19, s3, s8
d00403b4:	eef4 2ac9 	vcmpe.f32	s5, s18
d00403b8:	ee77 7ae4 	vsub.f32	s15, s15, s9
d00403bc:	ee32 4a40 	vsub.f32	s8, s4, s0
d00403c0:	ee33 3a65 	vsub.f32	s6, s6, s11
d00403c4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00403c8:	ee67 eaa9 	vmul.f32	s29, s15, s19
d00403cc:	ee64 fa29 	vmul.f32	s31, s8, s19
d00403d0:	ee23 fa29 	vmul.f32	s30, s6, s19
d00403d4:	f300 8315 	bgt.w	d0040a02 <fillTriangleFlat+0x7fa>
d00403d8:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d00403dc:	edcd 7a02 	vstr	s15, [sp, #8]
d00403e0:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d00403e4:	f240 133f 	movw	r3, #319	; 0x13f
d00403e8:	9a02      	ldr	r2, [sp, #8]
d00403ea:	ee17 ea90 	vmov	lr, s15
d00403ee:	ea22 7be2 	bic.w	fp, r2, r2, asr #31
d00403f2:	f10e 3eff 	add.w	lr, lr, #4294967295	; 0xffffffff
d00403f6:	459e      	cmp	lr, r3
d00403f8:	bfa8      	it	ge
d00403fa:	469e      	movge	lr, r3
d00403fc:	45f3      	cmp	fp, lr
d00403fe:	dc7b      	bgt.n	d00404f8 <fillTriangleFlat+0x2f0>
d0040400:	ee07 ba90 	vmov	s15, fp
d0040404:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0040408:	f10e 0e01 	add.w	lr, lr, #1
d004040c:	ed9f 9a50 	vldr	s18, [pc, #320]	; d0040550 <fillTriangleFlat+0x348>
d0040410:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040414:	eddf 1a4f 	vldr	s3, [pc, #316]	; d0040554 <fillTriangleFlat+0x34c>
d0040418:	ed9f 2a4f 	vldr	s4, [pc, #316]	; d0040558 <fillTriangleFlat+0x350>
d004041c:	eddf 9a4f 	vldr	s19, [pc, #316]	; d004055c <fillTriangleFlat+0x354>
d0040420:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0040424:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0040428:	ee77 3ae3 	vsub.f32	s7, s15, s7
d004042c:	eea1 6a05 	vfma.f32	s12, s2, s10
d0040430:	eea0 8a85 	vfma.f32	s16, s1, s10
d0040434:	eea8 7a85 	vfma.f32	s14, s17, s10
d0040438:	eee3 4aae 	vfma.f32	s9, s7, s29
d004043c:	eea3 0aaf 	vfma.f32	s0, s7, s31
d0040440:	eeef 5a23 	vfma.f32	s11, s30, s7
d0040444:	e032      	b.n	d00404ac <fillTriangleFlat+0x2a4>
d0040446:	eef0 3a47 	vmov.f32	s7, s14
d004044a:	eef0 2a48 	vmov.f32	s5, s16
d004044e:	eef0 6a46 	vmov.f32	s13, s12
d0040452:	eeb0 3a65 	vmov.f32	s6, s11
d0040456:	eeb0 5a40 	vmov.f32	s10, s0
d004045a:	eeb0 4a64 	vmov.f32	s8, s9
d004045e:	fefa 7a66 	vrintp.f32	s15, s13
d0040462:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0040466:	f240 13df 	movw	r3, #479	; 0x1df
d004046a:	ee17 6a90 	vmov	r6, s15
d004046e:	fefa 7a44 	vrintp.f32	s15, s8
d0040472:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0040476:	3e01      	subs	r6, #1
d0040478:	ee17 4a90 	vmov	r4, s15
d004047c:	429e      	cmp	r6, r3
d004047e:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d0040482:	bfa8      	it	ge
d0040484:	461e      	movge	r6, r3
d0040486:	42a6      	cmp	r6, r4
d0040488:	f280 8158 	bge.w	d004073c <fillTriangleFlat+0x534>
d004048c:	f10b 0b01 	add.w	fp, fp, #1
d0040490:	ee36 6a01 	vadd.f32	s12, s12, s2
d0040494:	ee38 8a20 	vadd.f32	s16, s16, s1
d0040498:	45f3      	cmp	fp, lr
d004049a:	ee37 7a28 	vadd.f32	s14, s14, s17
d004049e:	ee74 4aae 	vadd.f32	s9, s9, s29
d00404a2:	ee30 0a2f 	vadd.f32	s0, s0, s31
d00404a6:	ee75 5a8f 	vadd.f32	s11, s11, s30
d00404aa:	d025      	beq.n	d00404f8 <fillTriangleFlat+0x2f0>
d00404ac:	eeb4 6ae4 	vcmpe.f32	s12, s9
d00404b0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00404b4:	dcc7      	bgt.n	d0040446 <fillTriangleFlat+0x23e>
d00404b6:	eef0 3a65 	vmov.f32	s7, s11
d00404ba:	eef0 2a40 	vmov.f32	s5, s0
d00404be:	eef0 6a64 	vmov.f32	s13, s9
d00404c2:	eeb0 3a47 	vmov.f32	s6, s14
d00404c6:	eeb0 5a48 	vmov.f32	s10, s16
d00404ca:	eeb0 4a46 	vmov.f32	s8, s12
d00404ce:	e7c6      	b.n	d004045e <fillTriangleFlat+0x256>
d00404d0:	eddd 6a03 	vldr	s13, [sp, #12]
d00404d4:	eddd 4a04 	vldr	s9, [sp, #16]
d00404d8:	ed9d 7a05 	vldr	s14, [sp, #20]
d00404dc:	ed9d 8a06 	vldr	s16, [sp, #24]
d00404e0:	ed9d 5a07 	vldr	s10, [sp, #28]
d00404e4:	eddf 7a1a 	vldr	s15, [pc, #104]	; d0040550 <fillTriangleFlat+0x348>
d00404e8:	ed9d 4a01 	vldr	s8, [sp, #4]
d00404ec:	eeb4 4ae7 	vcmpe.f32	s8, s15
d00404f0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00404f4:	f73f af74 	bgt.w	d00403e0 <fillTriangleFlat+0x1d8>
d00404f8:	b009      	add	sp, #36	; 0x24
d00404fa:	ecbd 8b10 	vpop	{d8-d15}
d00404fe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040502:	011b      	lsls	r3, r3, #4
d0040504:	b2df      	uxtb	r7, r3
d0040506:	f002 020f 	and.w	r2, r2, #15
d004050a:	3220      	adds	r2, #32
d004050c:	4417      	add	r7, r2
d004050e:	b2ff      	uxtb	r7, r7
d0040510:	e6d0      	b.n	d00402b4 <fillTriangleFlat+0xac>
d0040512:	eef4 3ae6 	vcmpe.f32	s7, s13
d0040516:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004051a:	f340 80f6 	ble.w	d004070a <fillTriangleFlat+0x502>
d004051e:	eeb0 1a43 	vmov.f32	s2, s6
d0040522:	eef0 1a42 	vmov.f32	s3, s4
d0040526:	eef0 2a66 	vmov.f32	s5, s13
d004052a:	eeb0 4a67 	vmov.f32	s8, s15
d004052e:	eeb0 3a47 	vmov.f32	s6, s14
d0040532:	eeb0 2a48 	vmov.f32	s4, s16
d0040536:	eef0 6a45 	vmov.f32	s13, s10
d004053a:	eef0 7a46 	vmov.f32	s15, s12
d004053e:	eeb0 7a41 	vmov.f32	s14, s2
d0040542:	eeb0 8a61 	vmov.f32	s16, s3
d0040546:	eeb0 5a62 	vmov.f32	s10, s5
d004054a:	eeb0 6a44 	vmov.f32	s12, s8
d004054e:	e6f2      	b.n	d0040336 <fillTriangleFlat+0x12e>
d0040550:	38d1b717 	.word	0x38d1b717
d0040554:	33d6bf95 	.word	0x33d6bf95
d0040558:	00000000 	.word	0x00000000
d004055c:	477fff00 	.word	0x477fff00
d0040560:	ee81 4aa2 	vdiv.f32	s8, s3, s5
d0040564:	ee76 aae3 	vsub.f32	s21, s13, s7
d0040568:	ee34 aac6 	vsub.f32	s20, s9, s12
d004056c:	ee70 9a48 	vsub.f32	s19, s0, s16
d0040570:	ee75 2ac7 	vsub.f32	s5, s11, s14
d0040574:	edcd aa01 	vstr	s21, [sp, #4]
d0040578:	eef4 aac9 	vcmpe.f32	s21, s18
d004057c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040580:	ee2a aa04 	vmul.f32	s20, s20, s8
d0040584:	ee69 9a84 	vmul.f32	s19, s19, s8
d0040588:	ee22 4a84 	vmul.f32	s8, s5, s8
d004058c:	eeb0 ba4a 	vmov.f32	s22, s20
d0040590:	eef0 da44 	vmov.f32	s27, s8
d0040594:	f340 822e 	ble.w	d00409f4 <fillTriangleFlat+0x7ec>
d0040598:	eec1 2aaa 	vdiv.f32	s5, s3, s21
d004059c:	ee77 7ae4 	vsub.f32	s15, s15, s9
d00405a0:	ee32 4a40 	vsub.f32	s8, s4, s0
d00405a4:	ee33 3a65 	vsub.f32	s6, s6, s11
d00405a8:	ee67 eaa2 	vmul.f32	s29, s15, s5
d00405ac:	ee64 fa22 	vmul.f32	s31, s8, s5
d00405b0:	ee23 fa22 	vmul.f32	s30, s6, s5
d00405b4:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d00405b8:	f240 133f 	movw	r3, #319	; 0x13f
d00405bc:	ee17 2a90 	vmov	r2, s15
d00405c0:	edcd 7a02 	vstr	s15, [sp, #8]
d00405c4:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d00405c8:	f102 3bff 	add.w	fp, r2, #4294967295	; 0xffffffff
d00405cc:	ee17 aa90 	vmov	sl, s15
d00405d0:	459b      	cmp	fp, r3
d00405d2:	ea2a 7aea 	bic.w	sl, sl, sl, asr #31
d00405d6:	bfa8      	it	ge
d00405d8:	469b      	movge	fp, r3
d00405da:	45d3      	cmp	fp, sl
d00405dc:	db82      	blt.n	d00404e4 <fillTriangleFlat+0x2dc>
d00405de:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00405e2:	f10b 0b01 	add.w	fp, fp, #1
d00405e6:	eeb0 aa46 	vmov.f32	s20, s12
d00405ea:	ed1f da26 	vldr	s26, [pc, #-152]	; d0040554 <fillTriangleFlat+0x34c>
d00405ee:	eef0 aa46 	vmov.f32	s21, s12
d00405f2:	ed1f 3a27 	vldr	s6, [pc, #-156]	; d0040558 <fillTriangleFlat+0x350>
d00405f6:	ee37 4ac5 	vsub.f32	s8, s15, s10
d00405fa:	ee07 aa90 	vmov	s15, sl
d00405fe:	eef0 ca48 	vmov.f32	s25, s16
d0040602:	ed1f 2a2a 	vldr	s4, [pc, #-168]	; d004055c <fillTriangleFlat+0x354>
d0040606:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004060a:	edcd 6a03 	vstr	s13, [sp, #12]
d004060e:	eeb0 ca47 	vmov.f32	s24, s14
d0040612:	edcd 4a04 	vstr	s9, [sp, #16]
d0040616:	eeb0 9a4b 	vmov.f32	s18, s22
d004061a:	ed8d 7a05 	vstr	s14, [sp, #20]
d004061e:	ee77 7a84 	vadd.f32	s15, s15, s8
d0040622:	ed8d 8a06 	vstr	s16, [sp, #24]
d0040626:	eef0 ba48 	vmov.f32	s23, s16
d004062a:	ed8d 5a07 	vstr	s10, [sp, #28]
d004062e:	eea7 aa8b 	vfma.f32	s20, s15, s22
d0040632:	eeb0 ba47 	vmov.f32	s22, s14
d0040636:	eee1 aa27 	vfma.f32	s21, s2, s15
d004063a:	eee0 caa7 	vfma.f32	s25, s1, s15
d004063e:	eea8 caa7 	vfma.f32	s24, s17, s15
d0040642:	eee7 baa9 	vfma.f32	s23, s15, s19
d0040646:	eea7 baad 	vfma.f32	s22, s15, s27
d004064a:	e033      	b.n	d00406b4 <fillTriangleFlat+0x4ac>
d004064c:	eeb0 4a4c 	vmov.f32	s8, s24
d0040650:	eef0 4a6c 	vmov.f32	s9, s25
d0040654:	eef0 7a6a 	vmov.f32	s15, s21
d0040658:	eeb0 5a4b 	vmov.f32	s10, s22
d004065c:	eeb0 7a6b 	vmov.f32	s14, s23
d0040660:	eef0 6a4a 	vmov.f32	s13, s20
d0040664:	fefa 2a67 	vrintp.f32	s5, s15
d0040668:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d004066c:	f240 13df 	movw	r3, #479	; 0x1df
d0040670:	ee12 6a90 	vmov	r6, s5
d0040674:	fefa 2a66 	vrintp.f32	s5, s13
d0040678:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d004067c:	3e01      	subs	r6, #1
d004067e:	ee12 4a90 	vmov	r4, s5
d0040682:	429e      	cmp	r6, r3
d0040684:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d0040688:	bfa8      	it	ge
d004068a:	461e      	movge	r6, r3
d004068c:	42a6      	cmp	r6, r4
d004068e:	f280 80fd 	bge.w	d004088c <fillTriangleFlat+0x684>
d0040692:	f10a 0a01 	add.w	sl, sl, #1
d0040696:	ee7a aa81 	vadd.f32	s21, s21, s2
d004069a:	ee7c caa0 	vadd.f32	s25, s25, s1
d004069e:	45da      	cmp	sl, fp
d00406a0:	ee3c ca28 	vadd.f32	s24, s24, s17
d00406a4:	ee3a aa09 	vadd.f32	s20, s20, s18
d00406a8:	ee7b baa9 	vadd.f32	s23, s23, s19
d00406ac:	ee3b ba2d 	vadd.f32	s22, s22, s27
d00406b0:	f43f af0e 	beq.w	d00404d0 <fillTriangleFlat+0x2c8>
d00406b4:	eef4 aaca 	vcmpe.f32	s21, s20
d00406b8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00406bc:	dcc6      	bgt.n	d004064c <fillTriangleFlat+0x444>
d00406be:	eeb0 4a4b 	vmov.f32	s8, s22
d00406c2:	eef0 4a6b 	vmov.f32	s9, s23
d00406c6:	eef0 7a4a 	vmov.f32	s15, s20
d00406ca:	eeb0 5a4c 	vmov.f32	s10, s24
d00406ce:	eeb0 7a6c 	vmov.f32	s14, s25
d00406d2:	eef0 6a6a 	vmov.f32	s13, s21
d00406d6:	e7c5      	b.n	d0040664 <fillTriangleFlat+0x45c>
d00406d8:	eeb0 1a47 	vmov.f32	s2, s14
d00406dc:	eef0 1a48 	vmov.f32	s3, s16
d00406e0:	eef0 2a45 	vmov.f32	s5, s10
d00406e4:	eeb0 4a46 	vmov.f32	s8, s12
d00406e8:	eeb0 7a43 	vmov.f32	s14, s6
d00406ec:	eeb0 8a42 	vmov.f32	s16, s4
d00406f0:	eeb0 5a66 	vmov.f32	s10, s13
d00406f4:	eeb0 6a67 	vmov.f32	s12, s15
d00406f8:	eeb0 3a41 	vmov.f32	s6, s2
d00406fc:	eeb0 2a61 	vmov.f32	s4, s3
d0040700:	eef0 6a62 	vmov.f32	s13, s5
d0040704:	eef0 7a44 	vmov.f32	s15, s8
d0040708:	e5f8      	b.n	d00402fc <fillTriangleFlat+0xf4>
d004070a:	eeb0 1a47 	vmov.f32	s2, s14
d004070e:	eef0 1a48 	vmov.f32	s3, s16
d0040712:	eef0 2a45 	vmov.f32	s5, s10
d0040716:	eeb0 4a46 	vmov.f32	s8, s12
d004071a:	eeb0 7a65 	vmov.f32	s14, s11
d004071e:	eeb0 8a40 	vmov.f32	s16, s0
d0040722:	eeb0 5a63 	vmov.f32	s10, s7
d0040726:	eeb0 6a64 	vmov.f32	s12, s9
d004072a:	eef0 5a41 	vmov.f32	s11, s2
d004072e:	eeb0 0a61 	vmov.f32	s0, s3
d0040732:	eef0 3a62 	vmov.f32	s7, s5
d0040736:	eef0 4a44 	vmov.f32	s9, s8
d004073a:	e5df      	b.n	d00402fc <fillTriangleFlat+0xf4>
d004073c:	ee76 6ac4 	vsub.f32	s13, s13, s8
d0040740:	eef4 6ac9 	vcmpe.f32	s13, s18
d0040744:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040748:	f340 814f 	ble.w	d00409ea <fillTriangleFlat+0x7e2>
d004074c:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0040750:	ee72 2ac5 	vsub.f32	s5, s5, s10
d0040754:	ee73 3ac3 	vsub.f32	s7, s7, s6
d0040758:	ee87 aaa6 	vdiv.f32	s20, s15, s13
d004075c:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0040760:	ee37 4ac4 	vsub.f32	s8, s15, s8
d0040764:	ee07 4a90 	vmov	s15, r4
d0040768:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004076c:	ee77 7a84 	vadd.f32	s15, s15, s8
d0040770:	ee62 2a8a 	vmul.f32	s5, s5, s20
d0040774:	ee23 aa8a 	vmul.f32	s20, s7, s20
d0040778:	eea7 5aa2 	vfma.f32	s10, s15, s5
d004077c:	eea7 3a8a 	vfma.f32	s6, s15, s20
d0040780:	ebcb 180b 	rsb	r8, fp, fp, lsl #4
d0040784:	4ba3      	ldr	r3, [pc, #652]	; (d0040a14 <fillTriangleFlat+0x80c>)
d0040786:	eb04 0c84 	add.w	ip, r4, r4, lsl #2
d004078a:	4aa3      	ldr	r2, [pc, #652]	; (d0040a18 <fillTriangleFlat+0x810>)
d004078c:	681b      	ldr	r3, [r3, #0]
d004078e:	eb04 1848 	add.w	r8, r4, r8, lsl #5
d0040792:	eb0b 1c8c 	add.w	ip, fp, ip, lsl #6
d0040796:	eef6 3a00 	vmov.f32	s7, #96	; 0x3f000000  0.5
d004079a:	eb02 0848 	add.w	r8, r2, r8, lsl #1
d004079e:	449c      	add	ip, r3
d00407a0:	e011      	b.n	d00407c6 <fillTriangleFlat+0x5be>
d00407a2:	ee07 1a90 	vmov	s15, r1
d00407a6:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d00407aa:	eb08 0841 	add.w	r8, r8, r1, lsl #1
d00407ae:	440c      	add	r4, r1
d00407b0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00407b4:	eb0c 1c83 	add.w	ip, ip, r3, lsl #6
d00407b8:	eea7 5aa2 	vfma.f32	s10, s15, s5
d00407bc:	eea7 3a8a 	vfma.f32	s6, s15, s20
d00407c0:	42a6      	cmp	r6, r4
d00407c2:	f6ff ae63 	blt.w	d004048c <fillTriangleFlat+0x284>
d00407c6:	eba6 0904 	sub.w	r9, r6, r4
d00407ca:	eeb4 5ae1 	vcmpe.f32	s10, s3
d00407ce:	f109 0101 	add.w	r1, r9, #1
d00407d2:	2930      	cmp	r1, #48	; 0x30
d00407d4:	bfa8      	it	ge
d00407d6:	2130      	movge	r1, #48	; 0x30
d00407d8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00407dc:	d9e1      	bls.n	d00407a2 <fillTriangleFlat+0x59a>
d00407de:	f1b9 0f00 	cmp.w	r9, #0
d00407e2:	eec3 6a05 	vdiv.f32	s13, s6, s10
d00407e6:	dd4d      	ble.n	d0040884 <fillTriangleFlat+0x67c>
d00407e8:	1e4b      	subs	r3, r1, #1
d00407ea:	ee07 3a90 	vmov	s15, r3
d00407ee:	eeb0 4a45 	vmov.f32	s8, s10
d00407f2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00407f6:	eea7 4aa2 	vfma.f32	s8, s15, s5
d00407fa:	eeb4 4ae1 	vcmpe.f32	s8, s3
d00407fe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040802:	dd40      	ble.n	d0040886 <fillTriangleFlat+0x67e>
d0040804:	eeb0 ba43 	vmov.f32	s22, s6
d0040808:	eea7 ba8a 	vfma.f32	s22, s15, s20
d004080c:	eecb aa04 	vdiv.f32	s21, s22, s8
d0040810:	ee7a aae6 	vsub.f32	s21, s21, s13
d0040814:	ee8a 4aa7 	vdiv.f32	s8, s21, s15
d0040818:	f1a8 0002 	sub.w	r0, r8, #2
d004081c:	2300      	movs	r3, #0
d004081e:	fec6 7a82 	vmaxnm.f32	s15, s13, s4
d0040822:	fec7 7ae9 	vminnm.f32	s15, s15, s19
d0040826:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d004082a:	f830 5f02 	ldrh.w	r5, [r0, #2]!
d004082e:	3301      	adds	r3, #1
d0040830:	ee77 7aa3 	vadd.f32	s15, s15, s7
d0040834:	ea4f 1a82 	mov.w	sl, r2, lsl #6
d0040838:	ee76 6a84 	vadd.f32	s13, s13, s8
d004083c:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0040840:	ee17 2a90 	vmov	r2, s15
d0040844:	b292      	uxth	r2, r2
d0040846:	4295      	cmp	r5, r2
d0040848:	d902      	bls.n	d0040850 <fillTriangleFlat+0x648>
d004084a:	8002      	strh	r2, [r0, #0]
d004084c:	f80c 700a 	strb.w	r7, [ip, sl]
d0040850:	4299      	cmp	r1, r3
d0040852:	dce4      	bgt.n	d004081e <fillTriangleFlat+0x616>
d0040854:	f1b9 0f00 	cmp.w	r9, #0
d0040858:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d004085c:	ea4f 0241 	mov.w	r2, r1, lsl #1
d0040860:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0040864:	bfbc      	itt	lt
d0040866:	2202      	movlt	r2, #2
d0040868:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d004086c:	4490      	add	r8, r2
d004086e:	449c      	add	ip, r3
d0040870:	ee07 1a90 	vmov	s15, r1
d0040874:	440c      	add	r4, r1
d0040876:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004087a:	eea7 5aa2 	vfma.f32	s10, s15, s5
d004087e:	eea7 3a8a 	vfma.f32	s6, s15, s20
d0040882:	e79d      	b.n	d00407c0 <fillTriangleFlat+0x5b8>
d0040884:	d1f4      	bne.n	d0040870 <fillTriangleFlat+0x668>
d0040886:	eeb0 4a42 	vmov.f32	s8, s4
d004088a:	e7c5      	b.n	d0040818 <fillTriangleFlat+0x610>
d004088c:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0040890:	eddf 2a62 	vldr	s5, [pc, #392]	; d0040a1c <fillTriangleFlat+0x814>
d0040894:	eef4 7ae2 	vcmpe.f32	s15, s5
d0040898:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004089c:	f340 80a0 	ble.w	d00409e0 <fillTriangleFlat+0x7d8>
d00408a0:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d00408a4:	ee74 4ac7 	vsub.f32	s9, s9, s14
d00408a8:	ee34 4a45 	vsub.f32	s8, s8, s10
d00408ac:	eec1 2aa7 	vdiv.f32	s5, s3, s15
d00408b0:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00408b4:	ee77 6ae6 	vsub.f32	s13, s15, s13
d00408b8:	ee07 4a90 	vmov	s15, r4
d00408bc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00408c0:	ee77 7aa6 	vadd.f32	s15, s15, s13
d00408c4:	ee64 4aa2 	vmul.f32	s9, s9, s5
d00408c8:	ee24 4a22 	vmul.f32	s8, s8, s5
d00408cc:	eea7 7aa4 	vfma.f32	s14, s15, s9
d00408d0:	eea7 5a84 	vfma.f32	s10, s15, s8
d00408d4:	ebca 1e0a 	rsb	lr, sl, sl, lsl #4
d00408d8:	4b4e      	ldr	r3, [pc, #312]	; (d0040a14 <fillTriangleFlat+0x80c>)
d00408da:	eb04 0c84 	add.w	ip, r4, r4, lsl #2
d00408de:	4a4e      	ldr	r2, [pc, #312]	; (d0040a18 <fillTriangleFlat+0x810>)
d00408e0:	681b      	ldr	r3, [r3, #0]
d00408e2:	eb04 1e4e 	add.w	lr, r4, lr, lsl #5
d00408e6:	eb0a 1c8c 	add.w	ip, sl, ip, lsl #6
d00408ea:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d00408ee:	eb02 0e4e 	add.w	lr, r2, lr, lsl #1
d00408f2:	449c      	add	ip, r3
d00408f4:	e011      	b.n	d004091a <fillTriangleFlat+0x712>
d00408f6:	ee07 1a90 	vmov	s15, r1
d00408fa:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d00408fe:	eb0e 0e41 	add.w	lr, lr, r1, lsl #1
d0040902:	440c      	add	r4, r1
d0040904:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040908:	eb0c 1c83 	add.w	ip, ip, r3, lsl #6
d004090c:	eea7 7aa4 	vfma.f32	s14, s15, s9
d0040910:	eea7 5a84 	vfma.f32	s10, s15, s8
d0040914:	42b4      	cmp	r4, r6
d0040916:	f73f aebc 	bgt.w	d0040692 <fillTriangleFlat+0x48a>
d004091a:	eba6 0804 	sub.w	r8, r6, r4
d004091e:	eeb4 7acd 	vcmpe.f32	s14, s26
d0040922:	f108 0101 	add.w	r1, r8, #1
d0040926:	2930      	cmp	r1, #48	; 0x30
d0040928:	bfa8      	it	ge
d004092a:	2130      	movge	r1, #48	; 0x30
d004092c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040930:	d9e1      	bls.n	d00408f6 <fillTriangleFlat+0x6ee>
d0040932:	f1b8 0f00 	cmp.w	r8, #0
d0040936:	eec5 2a07 	vdiv.f32	s5, s10, s14
d004093a:	dd4d      	ble.n	d00409d8 <fillTriangleFlat+0x7d0>
d004093c:	1e4b      	subs	r3, r1, #1
d004093e:	ee07 3a90 	vmov	s15, r3
d0040942:	eef0 1a47 	vmov.f32	s3, s14
d0040946:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004094a:	eee7 1aa4 	vfma.f32	s3, s15, s9
d004094e:	eef4 1acd 	vcmpe.f32	s3, s26
d0040952:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040956:	dd40      	ble.n	d00409da <fillTriangleFlat+0x7d2>
d0040958:	eeb0 ea45 	vmov.f32	s28, s10
d004095c:	eea7 ea84 	vfma.f32	s28, s15, s8
d0040960:	ee8e 8a21 	vdiv.f32	s16, s28, s3
d0040964:	ee38 8a62 	vsub.f32	s16, s16, s5
d0040968:	eec8 1a27 	vdiv.f32	s3, s16, s15
d004096c:	f1ae 0002 	sub.w	r0, lr, #2
d0040970:	2200      	movs	r2, #0
d0040972:	fec2 7a83 	vmaxnm.f32	s15, s5, s6
d0040976:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d004097a:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d004097e:	f830 5f02 	ldrh.w	r5, [r0, #2]!
d0040982:	3201      	adds	r2, #1
d0040984:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0040988:	ea4f 1983 	mov.w	r9, r3, lsl #6
d004098c:	ee72 2aa1 	vadd.f32	s5, s5, s3
d0040990:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0040994:	ee17 3a90 	vmov	r3, s15
d0040998:	b29b      	uxth	r3, r3
d004099a:	429d      	cmp	r5, r3
d004099c:	d902      	bls.n	d00409a4 <fillTriangleFlat+0x79c>
d004099e:	8003      	strh	r3, [r0, #0]
d00409a0:	f80c 7009 	strb.w	r7, [ip, r9]
d00409a4:	428a      	cmp	r2, r1
d00409a6:	dbe4      	blt.n	d0040972 <fillTriangleFlat+0x76a>
d00409a8:	f1b8 0f00 	cmp.w	r8, #0
d00409ac:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d00409b0:	ea4f 0241 	mov.w	r2, r1, lsl #1
d00409b4:	ea4f 1383 	mov.w	r3, r3, lsl #6
d00409b8:	bfbc      	itt	lt
d00409ba:	2202      	movlt	r2, #2
d00409bc:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d00409c0:	4496      	add	lr, r2
d00409c2:	449c      	add	ip, r3
d00409c4:	ee07 1a90 	vmov	s15, r1
d00409c8:	440c      	add	r4, r1
d00409ca:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00409ce:	eea7 7aa4 	vfma.f32	s14, s15, s9
d00409d2:	eea7 5a84 	vfma.f32	s10, s15, s8
d00409d6:	e79d      	b.n	d0040914 <fillTriangleFlat+0x70c>
d00409d8:	d1f4      	bne.n	d00409c4 <fillTriangleFlat+0x7bc>
d00409da:	eef0 1a43 	vmov.f32	s3, s6
d00409de:	e7c5      	b.n	d004096c <fillTriangleFlat+0x764>
d00409e0:	eeb0 4a43 	vmov.f32	s8, s6
d00409e4:	eef0 4a43 	vmov.f32	s9, s6
d00409e8:	e774      	b.n	d00408d4 <fillTriangleFlat+0x6cc>
d00409ea:	eeb0 aa42 	vmov.f32	s20, s4
d00409ee:	eef0 2a42 	vmov.f32	s5, s4
d00409f2:	e6c5      	b.n	d0040780 <fillTriangleFlat+0x578>
d00409f4:	ed9f fa0a 	vldr	s30, [pc, #40]	; d0040a20 <fillTriangleFlat+0x818>
d00409f8:	eef0 fa4f 	vmov.f32	s31, s30
d00409fc:	eef0 ea4f 	vmov.f32	s29, s30
d0040a00:	e5d8      	b.n	d00405b4 <fillTriangleFlat+0x3ac>
d0040a02:	eddf 7a07 	vldr	s15, [pc, #28]	; d0040a20 <fillTriangleFlat+0x818>
d0040a06:	eef0 da67 	vmov.f32	s27, s15
d0040a0a:	eef0 9a67 	vmov.f32	s19, s15
d0040a0e:	eeb0 ba67 	vmov.f32	s22, s15
d0040a12:	e5cf      	b.n	d00405b4 <fillTriangleFlat+0x3ac>
d0040a14:	d00e1c0c 	.word	0xd00e1c0c
d0040a18:	d00e7ca0 	.word	0xd00e7ca0
d0040a1c:	38d1b717 	.word	0x38d1b717
d0040a20:	00000000 	.word	0x00000000

d0040a24 <fillTriangleDitherBayer>:
d0040a24:	eddf 7ae7 	vldr	s15, [pc, #924]	; d0040dc4 <fillTriangleDitherBayer+0x3a0>
d0040a28:	eef4 0ae7 	vcmpe.f32	s1, s15
d0040a2c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040a30:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040a34:	eeb4 1ae7 	vcmpe.f32	s2, s15
d0040a38:	ed2d 8b10 	vpush	{d8-d15}
d0040a3c:	b08f      	sub	sp, #60	; 0x3c
d0040a3e:	9202      	str	r2, [sp, #8]
d0040a40:	bf94      	ite	ls
d0040a42:	2201      	movls	r2, #1
d0040a44:	2200      	movhi	r2, #0
d0040a46:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040a4a:	9303      	str	r3, [sp, #12]
d0040a4c:	f8bd 40a8 	ldrh.w	r4, [sp, #168]	; 0xa8
d0040a50:	bf98      	it	ls
d0040a52:	f042 0201 	orrls.w	r2, r2, #1
d0040a56:	f89d 30b4 	ldrb.w	r3, [sp, #180]	; 0xb4
d0040a5a:	e9cd 0100 	strd	r0, r1, [sp]
d0040a5e:	f8bd 00ac 	ldrh.w	r0, [sp, #172]	; 0xac
d0040a62:	f8bd 10b0 	ldrh.w	r1, [sp, #176]	; 0xb0
d0040a66:	2a00      	cmp	r2, #0
d0040a68:	f040 8187 	bne.w	d0040d7a <fillTriangleDitherBayer+0x356>
d0040a6c:	eeb4 0a67 	vcmp.f32	s0, s15
d0040a70:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040a74:	f240 8181 	bls.w	d0040d7a <fillTriangleDitherBayer+0x356>
d0040a78:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0040a7c:	eddf 7ad3 	vldr	s15, [pc, #844]	; d0040dcc <fillTriangleDitherBayer+0x3a8>
d0040a80:	eeb1 6a04 	vmov.f32	s12, #20	; 0x40a00000  5.0
d0040a84:	ee07 4a10 	vmov	s14, r4
d0040a88:	fec1 7aa7 	vmaxnm.f32	s15, s3, s15
d0040a8c:	ee86 3a81 	vdiv.f32	s6, s13, s2
d0040a90:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d0040a94:	eec6 1a80 	vdiv.f32	s3, s13, s0
d0040a98:	ee86 0aa0 	vdiv.f32	s0, s13, s1
d0040a9c:	eefd 6ae7 	vcvt.s32.f32	s13, s15
d0040aa0:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0040aa4:	ee16 2a90 	vmov	r2, s13
d0040aa8:	ee06 0a90 	vmov	s13, r0
d0040aac:	eef8 5a66 	vcvt.f32.u32	s11, s13
d0040ab0:	ee06 1a90 	vmov	s13, r1
d0040ab4:	1c51      	adds	r1, r2, #1
d0040ab6:	ee27 7a21 	vmul.f32	s14, s14, s3
d0040aba:	eef8 6a66 	vcvt.f32.u32	s13, s13
d0040abe:	2905      	cmp	r1, #5
d0040ac0:	bfa8      	it	ge
d0040ac2:	2105      	movge	r1, #5
d0040ac4:	2a04      	cmp	r2, #4
d0040ac6:	ee65 5a80 	vmul.f32	s11, s11, s0
d0040aca:	ee26 2a83 	vmul.f32	s4, s13, s6
d0040ace:	f300 8457 	bgt.w	d0041380 <fillTriangleDitherBayer+0x95c>
d0040ad2:	f003 030f 	and.w	r3, r3, #15
d0040ad6:	2a03      	cmp	r2, #3
d0040ad8:	f103 0320 	add.w	r3, r3, #32
d0040adc:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d0040ae0:	fa5f fa80 	uxtb.w	sl, r0
d0040ae4:	f300 844e 	bgt.w	d0041384 <fillTriangleDitherBayer+0x960>
d0040ae8:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d0040aec:	b2db      	uxtb	r3, r3
d0040aee:	9304      	str	r3, [sp, #16]
d0040af0:	eddd 6a01 	vldr	s13, [sp, #4]
d0040af4:	eeb8 5ae6 	vcvt.f32.s32	s10, s13
d0040af8:	eddd 6a03 	vldr	s13, [sp, #12]
d0040afc:	eef8 3ae6 	vcvt.f32.s32	s7, s13
d0040b00:	eddd 6a00 	vldr	s13, [sp]
d0040b04:	eeb8 6ae6 	vcvt.f32.s32	s12, s13
d0040b08:	eddd 6a02 	vldr	s13, [sp, #8]
d0040b0c:	eeb4 5ae3 	vcmpe.f32	s10, s7
d0040b10:	eef8 4ae6 	vcvt.f32.s32	s9, s13
d0040b14:	eddd 6a28 	vldr	s13, [sp, #160]	; 0xa0
d0040b18:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040b1c:	eeb8 1ae6 	vcvt.f32.s32	s2, s13
d0040b20:	eddd 6a29 	vldr	s13, [sp, #164]	; 0xa4
d0040b24:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0040b28:	f300 812c 	bgt.w	d0040d84 <fillTriangleDitherBayer+0x360>
d0040b2c:	eeb4 5ae6 	vcmpe.f32	s10, s13
d0040b30:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040b34:	f300 8231 	bgt.w	d0040f9a <fillTriangleDitherBayer+0x576>
d0040b38:	eef4 3ae6 	vcmpe.f32	s7, s13
d0040b3c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040b40:	dd17      	ble.n	d0040b72 <fillTriangleDitherBayer+0x14e>
d0040b42:	eeb0 8a65 	vmov.f32	s16, s11
d0040b46:	eef0 0a40 	vmov.f32	s1, s0
d0040b4a:	eef0 2a63 	vmov.f32	s5, s7
d0040b4e:	eeb0 4a64 	vmov.f32	s8, s9
d0040b52:	eef0 5a42 	vmov.f32	s11, s4
d0040b56:	eeb0 0a43 	vmov.f32	s0, s6
d0040b5a:	eef0 3a66 	vmov.f32	s7, s13
d0040b5e:	eef0 4a41 	vmov.f32	s9, s2
d0040b62:	eeb0 2a48 	vmov.f32	s4, s16
d0040b66:	eeb0 3a60 	vmov.f32	s6, s1
d0040b6a:	eef0 6a62 	vmov.f32	s13, s5
d0040b6e:	eeb0 1a44 	vmov.f32	s2, s8
d0040b72:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d0040b76:	ee75 2a04 	vadd.f32	s5, s10, s8
d0040b7a:	ee36 4a84 	vadd.f32	s8, s13, s8
d0040b7e:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d0040b82:	eebd 4ac4 	vcvt.s32.f32	s8, s8
d0040b86:	ee12 3a90 	vmov	r3, s5
d0040b8a:	ee14 1a10 	vmov	r1, s8
d0040b8e:	428b      	cmp	r3, r1
d0040b90:	f000 80f3 	beq.w	d0040d7a <fillTriangleDitherBayer+0x356>
d0040b94:	ee76 8ac5 	vsub.f32	s17, s13, s10
d0040b98:	eddf 2a8a 	vldr	s5, [pc, #552]	; d0040dc4 <fillTriangleDitherBayer+0x3a0>
d0040b9c:	eef4 8ae2 	vcmpe.f32	s17, s5
d0040ba0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040ba4:	f240 80e9 	bls.w	d0040d7a <fillTriangleDitherBayer+0x356>
d0040ba8:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0040bac:	ee33 9ac5 	vsub.f32	s18, s7, s10
d0040bb0:	ee71 0a46 	vsub.f32	s1, s2, s12
d0040bb4:	ee89 4aa8 	vdiv.f32	s8, s19, s17
d0040bb8:	eeb4 9ae2 	vcmpe.f32	s18, s5
d0040bbc:	ee33 8a61 	vsub.f32	s16, s6, s3
d0040bc0:	ee72 8a47 	vsub.f32	s17, s4, s14
d0040bc4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040bc8:	ee60 0a84 	vmul.f32	s1, s1, s8
d0040bcc:	ee28 8a04 	vmul.f32	s16, s16, s8
d0040bd0:	ee68 8a84 	vmul.f32	s17, s17, s8
d0040bd4:	f300 80fe 	bgt.w	d0040dd4 <fillTriangleDitherBayer+0x3b0>
d0040bd8:	ee04 2a10 	vmov	s8, r2
d0040bdc:	ee76 fae3 	vsub.f32	s31, s13, s7
d0040be0:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0040be4:	eef4 fae2 	vcmpe.f32	s31, s5
d0040be8:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0040bec:	eeb0 4a67 	vmov.f32	s8, s15
d0040bf0:	eebe 4ace 	vcvt.s32.f32	s8, s8, #4
d0040bf4:	ee14 3a10 	vmov	r3, s8
d0040bf8:	f383 0204 	usat	r2, #4, r3
d0040bfc:	9201      	str	r2, [sp, #4]
d0040bfe:	9a04      	ldr	r2, [sp, #16]
d0040c00:	4592      	cmp	sl, r2
d0040c02:	bf18      	it	ne
d0040c04:	2b00      	cmpne	r3, #0
d0040c06:	bfd4      	ite	le
d0040c08:	2301      	movle	r3, #1
d0040c0a:	2300      	movgt	r3, #0
d0040c0c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040c10:	9300      	str	r3, [sp, #0]
d0040c12:	f340 80b2 	ble.w	d0040d7a <fillTriangleDitherBayer+0x356>
d0040c16:	ed9f ea6d 	vldr	s28, [pc, #436]	; d0040dcc <fillTriangleDitherBayer+0x3a8>
d0040c1a:	eef0 9a4e 	vmov.f32	s19, s28
d0040c1e:	eeb0 ba4e 	vmov.f32	s22, s28
d0040c22:	eef7 2a00 	vmov.f32	s5, #112	; 0x3f800000  1.0
d0040c26:	ed9f 4a67 	vldr	s8, [pc, #412]	; d0040dc4 <fillTriangleDitherBayer+0x3a0>
d0040c2a:	ee31 1a64 	vsub.f32	s2, s2, s9
d0040c2e:	ee33 3a40 	vsub.f32	s6, s6, s0
d0040c32:	eec2 7aaf 	vdiv.f32	s15, s5, s31
d0040c36:	eeb4 9ac4 	vcmpe.f32	s18, s8
d0040c3a:	ee32 2a65 	vsub.f32	s4, s4, s11
d0040c3e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040c42:	ee61 2a27 	vmul.f32	s5, s2, s15
d0040c46:	ee23 3a27 	vmul.f32	s6, s6, s15
d0040c4a:	ee22 fa27 	vmul.f32	s30, s4, s15
d0040c4e:	edcd 2a09 	vstr	s5, [sp, #36]	; 0x24
d0040c52:	ed8d 3a08 	vstr	s6, [sp, #32]
d0040c56:	f300 80f4 	bgt.w	d0040e42 <fillTriangleDitherBayer+0x41e>
d0040c5a:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0040c5e:	edcd 7a06 	vstr	s15, [sp, #24]
d0040c62:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0040c66:	f240 123f 	movw	r2, #319	; 0x13f
d0040c6a:	9906      	ldr	r1, [sp, #24]
d0040c6c:	ee17 3a90 	vmov	r3, s15
d0040c70:	ea21 7be1 	bic.w	fp, r1, r1, asr #31
d0040c74:	3b01      	subs	r3, #1
d0040c76:	4293      	cmp	r3, r2
d0040c78:	bfa8      	it	ge
d0040c7a:	4613      	movge	r3, r2
d0040c7c:	459b      	cmp	fp, r3
d0040c7e:	dc7c      	bgt.n	d0040d7a <fillTriangleDitherBayer+0x356>
d0040c80:	ee07 ba90 	vmov	s15, fp
d0040c84:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0040c88:	3301      	adds	r3, #1
d0040c8a:	eddd aa09 	vldr	s21, [sp, #36]	; 0x24
d0040c8e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040c92:	ed9d aa08 	vldr	s20, [sp, #32]
d0040c96:	ed9f 1a4b 	vldr	s2, [pc, #300]	; d0040dc4 <fillTriangleDitherBayer+0x3a0>
d0040c9a:	ed9f 2a4b 	vldr	s4, [pc, #300]	; d0040dc8 <fillTriangleDitherBayer+0x3a4>
d0040c9e:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0040ca2:	ed9f 3a4a 	vldr	s6, [pc, #296]	; d0040dcc <fillTriangleDitherBayer+0x3a8>
d0040ca6:	9302      	str	r3, [sp, #8]
d0040ca8:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0040cac:	ee77 7ae3 	vsub.f32	s15, s15, s7
d0040cb0:	eddf 3a47 	vldr	s7, [pc, #284]	; d0040dd0 <fillTriangleDitherBayer+0x3ac>
d0040cb4:	eea0 6a85 	vfma.f32	s12, s1, s10
d0040cb8:	eee8 1a05 	vfma.f32	s3, s16, s10
d0040cbc:	eea8 7a85 	vfma.f32	s14, s17, s10
d0040cc0:	eeea 4aa7 	vfma.f32	s9, s21, s15
d0040cc4:	eeaa 0a27 	vfma.f32	s0, s20, s15
d0040cc8:	eeef 5a27 	vfma.f32	s11, s30, s15
d0040ccc:	e033      	b.n	d0040d36 <fillTriangleDitherBayer+0x312>
d0040cce:	eef0 2a47 	vmov.f32	s5, s14
d0040cd2:	eef0 9a61 	vmov.f32	s19, s3
d0040cd6:	eef0 6a46 	vmov.f32	s13, s12
d0040cda:	eeb0 9a65 	vmov.f32	s18, s11
d0040cde:	eeb0 5a40 	vmov.f32	s10, s0
d0040ce2:	eeb0 4a64 	vmov.f32	s8, s9
d0040ce6:	fefa 7a66 	vrintp.f32	s15, s13
d0040cea:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0040cee:	f240 13df 	movw	r3, #479	; 0x1df
d0040cf2:	ee17 6a90 	vmov	r6, s15
d0040cf6:	fefa 7a44 	vrintp.f32	s15, s8
d0040cfa:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0040cfe:	3e01      	subs	r6, #1
d0040d00:	ee17 0a90 	vmov	r0, s15
d0040d04:	429e      	cmp	r6, r3
d0040d06:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d0040d0a:	bfa8      	it	ge
d0040d0c:	461e      	movge	r6, r3
d0040d0e:	4286      	cmp	r6, r0
d0040d10:	f280 815c 	bge.w	d0040fcc <fillTriangleDitherBayer+0x5a8>
d0040d14:	f10b 0b01 	add.w	fp, fp, #1
d0040d18:	9b02      	ldr	r3, [sp, #8]
d0040d1a:	ee36 6a20 	vadd.f32	s12, s12, s1
d0040d1e:	459b      	cmp	fp, r3
d0040d20:	ee71 1a88 	vadd.f32	s3, s3, s16
d0040d24:	ee37 7a28 	vadd.f32	s14, s14, s17
d0040d28:	ee74 4aaa 	vadd.f32	s9, s9, s21
d0040d2c:	ee30 0a0a 	vadd.f32	s0, s0, s20
d0040d30:	ee75 5a8f 	vadd.f32	s11, s11, s30
d0040d34:	d021      	beq.n	d0040d7a <fillTriangleDitherBayer+0x356>
d0040d36:	eeb4 6ae4 	vcmpe.f32	s12, s9
d0040d3a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040d3e:	dcc6      	bgt.n	d0040cce <fillTriangleDitherBayer+0x2aa>
d0040d40:	eef0 2a65 	vmov.f32	s5, s11
d0040d44:	eef0 9a40 	vmov.f32	s19, s0
d0040d48:	eef0 6a64 	vmov.f32	s13, s9
d0040d4c:	eeb0 9a47 	vmov.f32	s18, s14
d0040d50:	eeb0 5a61 	vmov.f32	s10, s3
d0040d54:	eeb0 4a46 	vmov.f32	s8, s12
d0040d58:	e7c5      	b.n	d0040ce6 <fillTriangleDitherBayer+0x2c2>
d0040d5a:	eddd 6a0a 	vldr	s13, [sp, #40]	; 0x28
d0040d5e:	ed9d 5a0b 	vldr	s10, [sp, #44]	; 0x2c
d0040d62:	ed9d 6a0c 	vldr	s12, [sp, #48]	; 0x30
d0040d66:	ed9d fa0d 	vldr	s30, [sp, #52]	; 0x34
d0040d6a:	eddf 7a16 	vldr	s15, [pc, #88]	; d0040dc4 <fillTriangleDitherBayer+0x3a0>
d0040d6e:	eef4 fae7 	vcmpe.f32	s31, s15
d0040d72:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040d76:	f73f af74 	bgt.w	d0040c62 <fillTriangleDitherBayer+0x23e>
d0040d7a:	b00f      	add	sp, #60	; 0x3c
d0040d7c:	ecbd 8b10 	vpop	{d8-d15}
d0040d80:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040d84:	eef4 3ae6 	vcmpe.f32	s7, s13
d0040d88:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040d8c:	f340 80ec 	ble.w	d0040f68 <fillTriangleDitherBayer+0x544>
d0040d90:	eeb0 8a42 	vmov.f32	s16, s4
d0040d94:	eef0 0a43 	vmov.f32	s1, s6
d0040d98:	eef0 2a66 	vmov.f32	s5, s13
d0040d9c:	eeb0 4a41 	vmov.f32	s8, s2
d0040da0:	eeb0 2a47 	vmov.f32	s4, s14
d0040da4:	eeb0 3a61 	vmov.f32	s6, s3
d0040da8:	eef0 6a45 	vmov.f32	s13, s10
d0040dac:	eeb0 1a46 	vmov.f32	s2, s12
d0040db0:	eeb0 7a48 	vmov.f32	s14, s16
d0040db4:	eef0 1a60 	vmov.f32	s3, s1
d0040db8:	eeb0 5a62 	vmov.f32	s10, s5
d0040dbc:	eeb0 6a44 	vmov.f32	s12, s8
d0040dc0:	e6d7      	b.n	d0040b72 <fillTriangleDitherBayer+0x14e>
d0040dc2:	bf00      	nop
d0040dc4:	38d1b717 	.word	0x38d1b717
d0040dc8:	33d6bf95 	.word	0x33d6bf95
d0040dcc:	00000000 	.word	0x00000000
d0040dd0:	477fff00 	.word	0x477fff00
d0040dd4:	ee04 2a10 	vmov	s8, r2
d0040dd8:	ee89 aa89 	vdiv.f32	s20, s19, s18
d0040ddc:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0040de0:	ee74 aac6 	vsub.f32	s21, s9, s12
d0040de4:	ee76 fae3 	vsub.f32	s31, s13, s7
d0040de8:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0040dec:	ee70 9a61 	vsub.f32	s19, s0, s3
d0040df0:	eef4 fae2 	vcmpe.f32	s31, s5
d0040df4:	eeb0 4a67 	vmov.f32	s8, s15
d0040df8:	ee35 eac7 	vsub.f32	s28, s11, s14
d0040dfc:	eebe 4ace 	vcvt.s32.f32	s8, s8, #4
d0040e00:	ee6a 7a8a 	vmul.f32	s15, s21, s20
d0040e04:	ee14 3a10 	vmov	r3, s8
d0040e08:	ee2e ea0a 	vmul.f32	s28, s28, s20
d0040e0c:	f383 0204 	usat	r2, #4, r3
d0040e10:	eeb0 ba67 	vmov.f32	s22, s15
d0040e14:	ee69 7a8a 	vmul.f32	s15, s19, s20
d0040e18:	9201      	str	r2, [sp, #4]
d0040e1a:	9a04      	ldr	r2, [sp, #16]
d0040e1c:	eef0 9a67 	vmov.f32	s19, s15
d0040e20:	4592      	cmp	sl, r2
d0040e22:	bf18      	it	ne
d0040e24:	2b00      	cmpne	r3, #0
d0040e26:	bfd4      	ite	le
d0040e28:	2301      	movle	r3, #1
d0040e2a:	2300      	movgt	r3, #0
d0040e2c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040e30:	9300      	str	r3, [sp, #0]
d0040e32:	f73f aef6 	bgt.w	d0040c22 <fillTriangleDitherBayer+0x1fe>
d0040e36:	ed1f fa1b 	vldr	s30, [pc, #-108]	; d0040dcc <fillTriangleDitherBayer+0x3a8>
d0040e3a:	ed8d fa08 	vstr	s30, [sp, #32]
d0040e3e:	ed8d fa09 	vstr	s30, [sp, #36]	; 0x24
d0040e42:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0040e46:	f240 123f 	movw	r2, #319	; 0x13f
d0040e4a:	ee17 3a90 	vmov	r3, s15
d0040e4e:	edcd 7a06 	vstr	s15, [sp, #24]
d0040e52:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d0040e56:	3b01      	subs	r3, #1
d0040e58:	ee17 ba90 	vmov	fp, s15
d0040e5c:	4293      	cmp	r3, r2
d0040e5e:	ea2b 7beb 	bic.w	fp, fp, fp, asr #31
d0040e62:	bfa8      	it	ge
d0040e64:	4613      	movge	r3, r2
d0040e66:	455b      	cmp	r3, fp
d0040e68:	f6ff af7f 	blt.w	d0040d6a <fillTriangleDitherBayer+0x346>
d0040e6c:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0040e70:	3301      	adds	r3, #1
d0040e72:	eeb0 aa46 	vmov.f32	s20, s12
d0040e76:	ed1f da2c 	vldr	s26, [pc, #-176]	; d0040dc8 <fillTriangleDitherBayer+0x3a4>
d0040e7a:	eef0 aa46 	vmov.f32	s21, s12
d0040e7e:	ed1f 3a2d 	vldr	s6, [pc, #-180]	; d0040dcc <fillTriangleDitherBayer+0x3a8>
d0040e82:	ee37 4ac5 	vsub.f32	s8, s15, s10
d0040e86:	ee07 ba90 	vmov	s15, fp
d0040e8a:	eef0 ca61 	vmov.f32	s25, s3
d0040e8e:	ed1f 2a30 	vldr	s4, [pc, #-192]	; d0040dd0 <fillTriangleDitherBayer+0x3ac>
d0040e92:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040e96:	9302      	str	r3, [sp, #8]
d0040e98:	eeb0 ca47 	vmov.f32	s24, s14
d0040e9c:	edcd 6a0a 	vstr	s13, [sp, #40]	; 0x28
d0040ea0:	eef0 da4b 	vmov.f32	s27, s22
d0040ea4:	ed8d 5a0b 	vstr	s10, [sp, #44]	; 0x2c
d0040ea8:	ee77 7a84 	vadd.f32	s15, s15, s8
d0040eac:	ed8d 6a0c 	vstr	s12, [sp, #48]	; 0x30
d0040eb0:	eef0 ba61 	vmov.f32	s23, s3
d0040eb4:	ed8d fa0d 	vstr	s30, [sp, #52]	; 0x34
d0040eb8:	eef0 ea69 	vmov.f32	s29, s19
d0040ebc:	eea7 aa8b 	vfma.f32	s20, s15, s22
d0040ec0:	eeb0 ba47 	vmov.f32	s22, s14
d0040ec4:	eee0 aaa7 	vfma.f32	s21, s1, s15
d0040ec8:	eee8 ca27 	vfma.f32	s25, s16, s15
d0040ecc:	eea8 caa7 	vfma.f32	s24, s17, s15
d0040ed0:	eee7 baa9 	vfma.f32	s23, s15, s19
d0040ed4:	eea7 ba8e 	vfma.f32	s22, s15, s28
d0040ed8:	e034      	b.n	d0040f44 <fillTriangleDitherBayer+0x520>
d0040eda:	eef0 2a4c 	vmov.f32	s5, s24
d0040ede:	eeb0 4a6c 	vmov.f32	s8, s25
d0040ee2:	eef0 7a6a 	vmov.f32	s15, s21
d0040ee6:	eeb0 5a4b 	vmov.f32	s10, s22
d0040eea:	eef0 6a6b 	vmov.f32	s13, s23
d0040eee:	eeb0 6a4a 	vmov.f32	s12, s20
d0040ef2:	feba 1a67 	vrintp.f32	s2, s15
d0040ef6:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d0040efa:	feba 9a46 	vrintp.f32	s18, s12
d0040efe:	f240 13df 	movw	r3, #479	; 0x1df
d0040f02:	ee11 6a10 	vmov	r6, s2
d0040f06:	eebd 1ac9 	vcvt.s32.f32	s2, s18
d0040f0a:	3e01      	subs	r6, #1
d0040f0c:	ee11 0a10 	vmov	r0, s2
d0040f10:	429e      	cmp	r6, r3
d0040f12:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d0040f16:	bfa8      	it	ge
d0040f18:	461e      	movge	r6, r3
d0040f1a:	4286      	cmp	r6, r0
d0040f1c:	f280 813e 	bge.w	d004119c <fillTriangleDitherBayer+0x778>
d0040f20:	f10b 0b01 	add.w	fp, fp, #1
d0040f24:	9b02      	ldr	r3, [sp, #8]
d0040f26:	ee7a aaa0 	vadd.f32	s21, s21, s1
d0040f2a:	459b      	cmp	fp, r3
d0040f2c:	ee7c ca88 	vadd.f32	s25, s25, s16
d0040f30:	ee3c ca28 	vadd.f32	s24, s24, s17
d0040f34:	ee3a aa2d 	vadd.f32	s20, s20, s27
d0040f38:	ee7b baae 	vadd.f32	s23, s23, s29
d0040f3c:	ee3b ba0e 	vadd.f32	s22, s22, s28
d0040f40:	f43f af0b 	beq.w	d0040d5a <fillTriangleDitherBayer+0x336>
d0040f44:	eef4 aaca 	vcmpe.f32	s21, s20
d0040f48:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040f4c:	dcc5      	bgt.n	d0040eda <fillTriangleDitherBayer+0x4b6>
d0040f4e:	eef0 2a4b 	vmov.f32	s5, s22
d0040f52:	eeb0 4a6b 	vmov.f32	s8, s23
d0040f56:	eef0 7a4a 	vmov.f32	s15, s20
d0040f5a:	eeb0 5a4c 	vmov.f32	s10, s24
d0040f5e:	eef0 6a6c 	vmov.f32	s13, s25
d0040f62:	eeb0 6a6a 	vmov.f32	s12, s21
d0040f66:	e7c4      	b.n	d0040ef2 <fillTriangleDitherBayer+0x4ce>
d0040f68:	eeb0 8a47 	vmov.f32	s16, s14
d0040f6c:	eef0 0a61 	vmov.f32	s1, s3
d0040f70:	eef0 2a45 	vmov.f32	s5, s10
d0040f74:	eeb0 4a46 	vmov.f32	s8, s12
d0040f78:	eeb0 7a65 	vmov.f32	s14, s11
d0040f7c:	eef0 1a40 	vmov.f32	s3, s0
d0040f80:	eeb0 5a63 	vmov.f32	s10, s7
d0040f84:	eeb0 6a64 	vmov.f32	s12, s9
d0040f88:	eef0 5a48 	vmov.f32	s11, s16
d0040f8c:	eeb0 0a60 	vmov.f32	s0, s1
d0040f90:	eef0 3a62 	vmov.f32	s7, s5
d0040f94:	eef0 4a44 	vmov.f32	s9, s8
d0040f98:	e5ce      	b.n	d0040b38 <fillTriangleDitherBayer+0x114>
d0040f9a:	eeb0 8a47 	vmov.f32	s16, s14
d0040f9e:	eef0 0a61 	vmov.f32	s1, s3
d0040fa2:	eef0 2a45 	vmov.f32	s5, s10
d0040fa6:	eeb0 4a46 	vmov.f32	s8, s12
d0040faa:	eeb0 7a42 	vmov.f32	s14, s4
d0040fae:	eef0 1a43 	vmov.f32	s3, s6
d0040fb2:	eeb0 5a66 	vmov.f32	s10, s13
d0040fb6:	eeb0 6a41 	vmov.f32	s12, s2
d0040fba:	eeb0 2a48 	vmov.f32	s4, s16
d0040fbe:	eeb0 3a60 	vmov.f32	s6, s1
d0040fc2:	eef0 6a62 	vmov.f32	s13, s5
d0040fc6:	eeb0 1a44 	vmov.f32	s2, s8
d0040fca:	e5b5      	b.n	d0040b38 <fillTriangleDitherBayer+0x114>
d0040fcc:	ee76 6ac4 	vsub.f32	s13, s13, s8
d0040fd0:	eef4 6ac1 	vcmpe.f32	s13, s2
d0040fd4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040fd8:	f340 81d8 	ble.w	d004138c <fillTriangleDitherBayer+0x968>
d0040fdc:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0040fe0:	ee79 9ac5 	vsub.f32	s19, s19, s10
d0040fe4:	ee72 2ac9 	vsub.f32	s5, s5, s18
d0040fe8:	ee87 baa6 	vdiv.f32	s22, s15, s13
d0040fec:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0040ff0:	ee37 4ac4 	vsub.f32	s8, s15, s8
d0040ff4:	ee07 0a90 	vmov	s15, r0
d0040ff8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040ffc:	ee77 7a84 	vadd.f32	s15, s15, s8
d0041000:	ee69 9a8b 	vmul.f32	s19, s19, s22
d0041004:	ee22 ba8b 	vmul.f32	s22, s5, s22
d0041008:	eea7 5aa9 	vfma.f32	s10, s15, s19
d004100c:	eea7 9a8b 	vfma.f32	s18, s15, s22
d0041010:	ebcb 190b 	rsb	r9, fp, fp, lsl #4
d0041014:	49d6      	ldr	r1, [pc, #856]	; (d0041370 <fillTriangleDitherBayer+0x94c>)
d0041016:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d004101a:	4cd6      	ldr	r4, [pc, #856]	; (d0041374 <fillTriangleDitherBayer+0x950>)
d004101c:	eb00 1249 	add.w	r2, r0, r9, lsl #5
d0041020:	6809      	ldr	r1, [r1, #0]
d0041022:	eb0b 1383 	add.w	r3, fp, r3, lsl #6
d0041026:	f8cd b018 	str.w	fp, [sp, #24]
d004102a:	eb04 0942 	add.w	r9, r4, r2, lsl #1
d004102e:	f00b 0203 	and.w	r2, fp, #3
d0041032:	eb01 0c03 	add.w	ip, r1, r3
d0041036:	eef6 2a00 	vmov.f32	s5, #96	; 0x3f000000  0.5
d004103a:	4613      	mov	r3, r2
d004103c:	4ace      	ldr	r2, [pc, #824]	; (d0041378 <fillTriangleDitherBayer+0x954>)
d004103e:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0041042:	469b      	mov	fp, r3
d0041044:	e010      	b.n	d0041068 <fillTriangleDitherBayer+0x644>
d0041046:	ee07 3a90 	vmov	s15, r3
d004104a:	4418      	add	r0, r3
d004104c:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0041050:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041054:	42b0      	cmp	r0, r6
d0041056:	eb09 0943 	add.w	r9, r9, r3, lsl #1
d004105a:	eb0c 1c82 	add.w	ip, ip, r2, lsl #6
d004105e:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0041062:	eea7 9a8b 	vfma.f32	s18, s15, s22
d0041066:	dc72      	bgt.n	d004114e <fillTriangleDitherBayer+0x72a>
d0041068:	eba6 0800 	sub.w	r8, r6, r0
d004106c:	eeb4 5ac2 	vcmpe.f32	s10, s4
d0041070:	f108 0301 	add.w	r3, r8, #1
d0041074:	2b30      	cmp	r3, #48	; 0x30
d0041076:	bfa8      	it	ge
d0041078:	2330      	movge	r3, #48	; 0x30
d004107a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004107e:	d9e2      	bls.n	d0041046 <fillTriangleDitherBayer+0x622>
d0041080:	f1b8 0f00 	cmp.w	r8, #0
d0041084:	eec9 6a05 	vdiv.f32	s13, s18, s10
d0041088:	dd64      	ble.n	d0041154 <fillTriangleDitherBayer+0x730>
d004108a:	1e5a      	subs	r2, r3, #1
d004108c:	ee07 2a90 	vmov	s15, r2
d0041090:	eeb0 4a45 	vmov.f32	s8, s10
d0041094:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041098:	eea7 4aa9 	vfma.f32	s8, s15, s19
d004109c:	eeb4 4ac2 	vcmpe.f32	s8, s4
d00410a0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00410a4:	dd57      	ble.n	d0041156 <fillTriangleDitherBayer+0x732>
d00410a6:	eeb0 ca49 	vmov.f32	s24, s18
d00410aa:	9a00      	ldr	r2, [sp, #0]
d00410ac:	eea7 ca8b 	vfma.f32	s24, s15, s22
d00410b0:	eecc ba04 	vdiv.f32	s23, s24, s8
d00410b4:	ee7b bae6 	vsub.f32	s23, s23, s13
d00410b8:	ee8b 4aa7 	vdiv.f32	s8, s23, s15
d00410bc:	2a00      	cmp	r2, #0
d00410be:	d14f      	bne.n	d0041160 <fillTriangleDitherBayer+0x73c>
d00410c0:	f8cd 800c 	str.w	r8, [sp, #12]
d00410c4:	f1a9 0702 	sub.w	r7, r9, #2
d00410c8:	9605      	str	r6, [sp, #20]
d00410ca:	f8dd 8004 	ldr.w	r8, [sp, #4]
d00410ce:	9e04      	ldr	r6, [sp, #16]
d00410d0:	fec6 7a83 	vmaxnm.f32	s15, s13, s6
d00410d4:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d00410d8:	ee77 7aa2 	vadd.f32	s15, s15, s5
d00410dc:	f837 ef02 	ldrh.w	lr, [r7, #2]!
d00410e0:	1885      	adds	r5, r0, r2
d00410e2:	eb02 0482 	add.w	r4, r2, r2, lsl #2
d00410e6:	ee76 6a84 	vadd.f32	s13, s13, s8
d00410ea:	3201      	adds	r2, #1
d00410ec:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00410f0:	f005 0503 	and.w	r5, r5, #3
d00410f4:	01a4      	lsls	r4, r4, #6
d00410f6:	ee17 1a90 	vmov	r1, s15
d00410fa:	b289      	uxth	r1, r1
d00410fc:	458e      	cmp	lr, r1
d00410fe:	d908      	bls.n	d0041112 <fillTriangleDitherBayer+0x6ee>
d0041100:	f81b 5005 	ldrb.w	r5, [fp, r5]
d0041104:	8039      	strh	r1, [r7, #0]
d0041106:	45a8      	cmp	r8, r5
d0041108:	bfd4      	ite	le
d004110a:	4655      	movle	r5, sl
d004110c:	4635      	movgt	r5, r6
d004110e:	f80c 5004 	strb.w	r5, [ip, r4]
d0041112:	4293      	cmp	r3, r2
d0041114:	dcdc      	bgt.n	d00410d0 <fillTriangleDitherBayer+0x6ac>
d0041116:	f8dd 800c 	ldr.w	r8, [sp, #12]
d004111a:	9e05      	ldr	r6, [sp, #20]
d004111c:	f1b8 0f00 	cmp.w	r8, #0
d0041120:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0041124:	ea4f 0143 	mov.w	r1, r3, lsl #1
d0041128:	ea4f 1282 	mov.w	r2, r2, lsl #6
d004112c:	bfbc      	itt	lt
d004112e:	2102      	movlt	r1, #2
d0041130:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d0041134:	4489      	add	r9, r1
d0041136:	4494      	add	ip, r2
d0041138:	ee07 3a90 	vmov	s15, r3
d004113c:	4418      	add	r0, r3
d004113e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041142:	42b0      	cmp	r0, r6
d0041144:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0041148:	eea7 9a8b 	vfma.f32	s18, s15, s22
d004114c:	dd8c      	ble.n	d0041068 <fillTriangleDitherBayer+0x644>
d004114e:	f8dd b018 	ldr.w	fp, [sp, #24]
d0041152:	e5df      	b.n	d0040d14 <fillTriangleDitherBayer+0x2f0>
d0041154:	d1f0      	bne.n	d0041138 <fillTriangleDitherBayer+0x714>
d0041156:	9a00      	ldr	r2, [sp, #0]
d0041158:	eeb0 4a43 	vmov.f32	s8, s6
d004115c:	2a00      	cmp	r2, #0
d004115e:	d0af      	beq.n	d00410c0 <fillTriangleDitherBayer+0x69c>
d0041160:	f1a9 0502 	sub.w	r5, r9, #2
d0041164:	2200      	movs	r2, #0
d0041166:	fec6 7a83 	vmaxnm.f32	s15, s13, s6
d004116a:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d004116e:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0041172:	eb02 0182 	add.w	r1, r2, r2, lsl #2
d0041176:	f835 7f02 	ldrh.w	r7, [r5, #2]!
d004117a:	ee76 6a84 	vadd.f32	s13, s13, s8
d004117e:	018c      	lsls	r4, r1, #6
d0041180:	3201      	adds	r2, #1
d0041182:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0041186:	ee17 1a90 	vmov	r1, s15
d004118a:	b289      	uxth	r1, r1
d004118c:	428f      	cmp	r7, r1
d004118e:	d902      	bls.n	d0041196 <fillTriangleDitherBayer+0x772>
d0041190:	8029      	strh	r1, [r5, #0]
d0041192:	f80c a004 	strb.w	sl, [ip, r4]
d0041196:	4293      	cmp	r3, r2
d0041198:	dce5      	bgt.n	d0041166 <fillTriangleDitherBayer+0x742>
d004119a:	e7bf      	b.n	d004111c <fillTriangleDitherBayer+0x6f8>
d004119c:	ee77 7ac6 	vsub.f32	s15, s15, s12
d00411a0:	ed9f 1a76 	vldr	s2, [pc, #472]	; d004137c <fillTriangleDitherBayer+0x958>
d00411a4:	eef4 7ac1 	vcmpe.f32	s15, s2
d00411a8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00411ac:	f340 80f3 	ble.w	d0041396 <fillTriangleDitherBayer+0x972>
d00411b0:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d00411b4:	ee34 4a66 	vsub.f32	s8, s8, s13
d00411b8:	ee72 2ac5 	vsub.f32	s5, s5, s10
d00411bc:	ee89 1a27 	vdiv.f32	s2, s18, s15
d00411c0:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00411c4:	ee37 6ac6 	vsub.f32	s12, s15, s12
d00411c8:	ee07 0a90 	vmov	s15, r0
d00411cc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00411d0:	ee77 7a86 	vadd.f32	s15, s15, s12
d00411d4:	ee24 4a01 	vmul.f32	s8, s8, s2
d00411d8:	ee62 2a81 	vmul.f32	s5, s5, s2
d00411dc:	eee7 6a84 	vfma.f32	s13, s15, s8
d00411e0:	eea7 5aa2 	vfma.f32	s10, s15, s5
d00411e4:	ebcb 190b 	rsb	r9, fp, fp, lsl #4
d00411e8:	4961      	ldr	r1, [pc, #388]	; (d0041370 <fillTriangleDitherBayer+0x94c>)
d00411ea:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d00411ee:	4c61      	ldr	r4, [pc, #388]	; (d0041374 <fillTriangleDitherBayer+0x950>)
d00411f0:	eb00 1249 	add.w	r2, r0, r9, lsl #5
d00411f4:	6809      	ldr	r1, [r1, #0]
d00411f6:	eb0b 1383 	add.w	r3, fp, r3, lsl #6
d00411fa:	f8cd b01c 	str.w	fp, [sp, #28]
d00411fe:	eb04 0942 	add.w	r9, r4, r2, lsl #1
d0041202:	f00b 0203 	and.w	r2, fp, #3
d0041206:	eb01 0c03 	add.w	ip, r1, r3
d004120a:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d004120e:	4613      	mov	r3, r2
d0041210:	4a59      	ldr	r2, [pc, #356]	; (d0041378 <fillTriangleDitherBayer+0x954>)
d0041212:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0041216:	469b      	mov	fp, r3
d0041218:	e010      	b.n	d004123c <fillTriangleDitherBayer+0x818>
d004121a:	ee07 2a90 	vmov	s15, r2
d004121e:	4410      	add	r0, r2
d0041220:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0041224:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041228:	42b0      	cmp	r0, r6
d004122a:	eb09 0942 	add.w	r9, r9, r2, lsl #1
d004122e:	eb0c 1c83 	add.w	ip, ip, r3, lsl #6
d0041232:	eee7 6a84 	vfma.f32	s13, s15, s8
d0041236:	eea7 5aa2 	vfma.f32	s10, s15, s5
d004123a:	dc72      	bgt.n	d0041322 <fillTriangleDitherBayer+0x8fe>
d004123c:	eba6 0800 	sub.w	r8, r6, r0
d0041240:	eef4 6acd 	vcmpe.f32	s13, s26
d0041244:	f108 0201 	add.w	r2, r8, #1
d0041248:	2a30      	cmp	r2, #48	; 0x30
d004124a:	bfa8      	it	ge
d004124c:	2230      	movge	r2, #48	; 0x30
d004124e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041252:	d9e2      	bls.n	d004121a <fillTriangleDitherBayer+0x7f6>
d0041254:	f1b8 0f00 	cmp.w	r8, #0
d0041258:	ee85 1a26 	vdiv.f32	s2, s10, s13
d004125c:	dd64      	ble.n	d0041328 <fillTriangleDitherBayer+0x904>
d004125e:	1e53      	subs	r3, r2, #1
d0041260:	ee07 3a90 	vmov	s15, r3
d0041264:	eeb0 9a66 	vmov.f32	s18, s13
d0041268:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004126c:	eea7 9a84 	vfma.f32	s18, s15, s8
d0041270:	eeb4 9acd 	vcmpe.f32	s18, s26
d0041274:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041278:	dd57      	ble.n	d004132a <fillTriangleDitherBayer+0x906>
d004127a:	eeb0 fa45 	vmov.f32	s30, s10
d004127e:	9900      	ldr	r1, [sp, #0]
d0041280:	eea7 faa2 	vfma.f32	s30, s15, s5
d0041284:	eecf 9a09 	vdiv.f32	s19, s30, s18
d0041288:	ee79 9ac1 	vsub.f32	s19, s19, s2
d004128c:	ee89 9aa7 	vdiv.f32	s18, s19, s15
d0041290:	2900      	cmp	r1, #0
d0041292:	d14f      	bne.n	d0041334 <fillTriangleDitherBayer+0x910>
d0041294:	9603      	str	r6, [sp, #12]
d0041296:	f1a9 0702 	sub.w	r7, r9, #2
d004129a:	f8cd 8014 	str.w	r8, [sp, #20]
d004129e:	9e04      	ldr	r6, [sp, #16]
d00412a0:	f8dd 8004 	ldr.w	r8, [sp, #4]
d00412a4:	fec1 7a03 	vmaxnm.f32	s15, s2, s6
d00412a8:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d00412ac:	ee77 7a86 	vadd.f32	s15, s15, s12
d00412b0:	f837 ef02 	ldrh.w	lr, [r7, #2]!
d00412b4:	1845      	adds	r5, r0, r1
d00412b6:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d00412ba:	ee31 1a09 	vadd.f32	s2, s2, s18
d00412be:	3101      	adds	r1, #1
d00412c0:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00412c4:	f005 0503 	and.w	r5, r5, #3
d00412c8:	01a4      	lsls	r4, r4, #6
d00412ca:	ee17 3a90 	vmov	r3, s15
d00412ce:	b29b      	uxth	r3, r3
d00412d0:	459e      	cmp	lr, r3
d00412d2:	d908      	bls.n	d00412e6 <fillTriangleDitherBayer+0x8c2>
d00412d4:	f81b 5005 	ldrb.w	r5, [fp, r5]
d00412d8:	803b      	strh	r3, [r7, #0]
d00412da:	45a8      	cmp	r8, r5
d00412dc:	bfcc      	ite	gt
d00412de:	4635      	movgt	r5, r6
d00412e0:	4655      	movle	r5, sl
d00412e2:	f80c 5004 	strb.w	r5, [ip, r4]
d00412e6:	428a      	cmp	r2, r1
d00412e8:	dcdc      	bgt.n	d00412a4 <fillTriangleDitherBayer+0x880>
d00412ea:	9e03      	ldr	r6, [sp, #12]
d00412ec:	f8dd 8014 	ldr.w	r8, [sp, #20]
d00412f0:	f1b8 0f00 	cmp.w	r8, #0
d00412f4:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d00412f8:	ea4f 0142 	mov.w	r1, r2, lsl #1
d00412fc:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0041300:	bfbc      	itt	lt
d0041302:	2102      	movlt	r1, #2
d0041304:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0041308:	4489      	add	r9, r1
d004130a:	449c      	add	ip, r3
d004130c:	ee07 2a90 	vmov	s15, r2
d0041310:	4410      	add	r0, r2
d0041312:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041316:	42b0      	cmp	r0, r6
d0041318:	eee7 6a84 	vfma.f32	s13, s15, s8
d004131c:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0041320:	dd8c      	ble.n	d004123c <fillTriangleDitherBayer+0x818>
d0041322:	f8dd b01c 	ldr.w	fp, [sp, #28]
d0041326:	e5fb      	b.n	d0040f20 <fillTriangleDitherBayer+0x4fc>
d0041328:	d1f0      	bne.n	d004130c <fillTriangleDitherBayer+0x8e8>
d004132a:	9900      	ldr	r1, [sp, #0]
d004132c:	eeb0 9a43 	vmov.f32	s18, s6
d0041330:	2900      	cmp	r1, #0
d0041332:	d0af      	beq.n	d0041294 <fillTriangleDitherBayer+0x870>
d0041334:	f1a9 0502 	sub.w	r5, r9, #2
d0041338:	2100      	movs	r1, #0
d004133a:	fec1 7a03 	vmaxnm.f32	s15, s2, s6
d004133e:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d0041342:	ee77 7a86 	vadd.f32	s15, s15, s12
d0041346:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d004134a:	f835 7f02 	ldrh.w	r7, [r5, #2]!
d004134e:	ee31 1a09 	vadd.f32	s2, s2, s18
d0041352:	019c      	lsls	r4, r3, #6
d0041354:	3101      	adds	r1, #1
d0041356:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004135a:	ee17 3a90 	vmov	r3, s15
d004135e:	b29b      	uxth	r3, r3
d0041360:	429f      	cmp	r7, r3
d0041362:	d902      	bls.n	d004136a <fillTriangleDitherBayer+0x946>
d0041364:	802b      	strh	r3, [r5, #0]
d0041366:	f80c a004 	strb.w	sl, [ip, r4]
d004136a:	428a      	cmp	r2, r1
d004136c:	dce5      	bgt.n	d004133a <fillTriangleDitherBayer+0x916>
d004136e:	e7bf      	b.n	d00412f0 <fillTriangleDitherBayer+0x8cc>
d0041370:	d00e1c0c 	.word	0xd00e1c0c
d0041374:	d00e7ca0 	.word	0xd00e7ca0
d0041378:	d0046c00 	.word	0xd0046c00
d004137c:	38d1b717 	.word	0x38d1b717
d0041380:	f04f 0a10 	mov.w	sl, #16
d0041384:	2310      	movs	r3, #16
d0041386:	9304      	str	r3, [sp, #16]
d0041388:	f7ff bbb2 	b.w	d0040af0 <fillTriangleDitherBayer+0xcc>
d004138c:	eeb0 ba43 	vmov.f32	s22, s6
d0041390:	eef0 9a43 	vmov.f32	s19, s6
d0041394:	e63c      	b.n	d0041010 <fillTriangleDitherBayer+0x5ec>
d0041396:	eef0 2a43 	vmov.f32	s5, s6
d004139a:	eeb0 4a43 	vmov.f32	s8, s6
d004139e:	e721      	b.n	d00411e4 <fillTriangleDitherBayer+0x7c0>

d00413a0 <fillTriangleDitherBayer2Mode>:
d00413a0:	eddf 7aca 	vldr	s15, [pc, #808]	; d00416cc <fillTriangleDitherBayer2Mode+0x32c>
d00413a4:	eef4 0ae7 	vcmpe.f32	s1, s15
d00413a8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00413ac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00413b0:	eeb4 1ae7 	vcmpe.f32	s2, s15
d00413b4:	ed2d 8b10 	vpush	{d8-d15}
d00413b8:	b08d      	sub	sp, #52	; 0x34
d00413ba:	9303      	str	r3, [sp, #12]
d00413bc:	bf94      	ite	ls
d00413be:	2301      	movls	r3, #1
d00413c0:	2300      	movhi	r3, #0
d00413c2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00413c6:	9202      	str	r2, [sp, #8]
d00413c8:	f89d b0ac 	ldrb.w	fp, [sp, #172]	; 0xac
d00413cc:	bf98      	it	ls
d00413ce:	f043 0301 	orrls.w	r3, r3, #1
d00413d2:	f8bd 20a8 	ldrh.w	r2, [sp, #168]	; 0xa8
d00413d6:	e9cd 0100 	strd	r0, r1, [sp]
d00413da:	f8bd 00a0 	ldrh.w	r0, [sp, #160]	; 0xa0
d00413de:	f8bd 10a4 	ldrh.w	r1, [sp, #164]	; 0xa4
d00413e2:	2b00      	cmp	r3, #0
d00413e4:	f040 814d 	bne.w	d0041682 <fillTriangleDitherBayer2Mode+0x2e2>
d00413e8:	eeb4 0a67 	vcmp.f32	s0, s15
d00413ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00413f0:	f240 8147 	bls.w	d0041682 <fillTriangleDitherBayer2Mode+0x2e2>
d00413f4:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00413f8:	ee06 1a90 	vmov	s13, r1
d00413fc:	ee07 0a10 	vmov	s14, r0
d0041400:	eef8 5a66 	vcvt.f32.u32	s11, s13
d0041404:	ee87 3a80 	vdiv.f32	s6, s15, s0
d0041408:	ee87 2a81 	vdiv.f32	s4, s15, s2
d004140c:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d0041410:	ee07 2a90 	vmov	s15, r2
d0041414:	eeb8 4a67 	vcvt.f32.u32	s8, s15
d0041418:	eddd 7a01 	vldr	s15, [sp, #4]
d004141c:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0041420:	eeb8 5ae7 	vcvt.f32.s32	s10, s15
d0041424:	eddd 7a03 	vldr	s15, [sp, #12]
d0041428:	eef8 3ae7 	vcvt.f32.s32	s7, s15
d004142c:	eddd 7a00 	vldr	s15, [sp]
d0041430:	ee27 7a03 	vmul.f32	s14, s14, s6
d0041434:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d0041438:	eddd 7a02 	vldr	s15, [sp, #8]
d004143c:	eeb4 5ae3 	vcmpe.f32	s10, s7
d0041440:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d0041444:	eddd 7a26 	vldr	s15, [sp, #152]	; 0x98
d0041448:	ee24 4a02 	vmul.f32	s8, s8, s4
d004144c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041450:	eef8 2ae7 	vcvt.f32.s32	s5, s15
d0041454:	eddd 7a27 	vldr	s15, [sp, #156]	; 0x9c
d0041458:	ee65 5a80 	vmul.f32	s11, s11, s0
d004145c:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d0041460:	f300 8114 	bgt.w	d004168c <fillTriangleDitherBayer2Mode+0x2ec>
d0041464:	eeb4 5ae6 	vcmpe.f32	s10, s13
d0041468:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004146c:	f300 8201 	bgt.w	d0041872 <fillTriangleDitherBayer2Mode+0x4d2>
d0041470:	eef4 3ae6 	vcmpe.f32	s7, s13
d0041474:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041478:	f300 8219 	bgt.w	d00418ae <fillTriangleDitherBayer2Mode+0x50e>
d004147c:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0041480:	ee35 1a27 	vadd.f32	s2, s10, s15
d0041484:	ee76 7aa7 	vadd.f32	s15, s13, s15
d0041488:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d004148c:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041490:	ee11 3a10 	vmov	r3, s2
d0041494:	ee17 2a90 	vmov	r2, s15
d0041498:	4293      	cmp	r3, r2
d004149a:	f000 80f2 	beq.w	d0041682 <fillTriangleDitherBayer2Mode+0x2e2>
d004149e:	ee76 8ac5 	vsub.f32	s17, s13, s10
d00414a2:	ed9f 1a8a 	vldr	s2, [pc, #552]	; d00416cc <fillTriangleDitherBayer2Mode+0x32c>
d00414a6:	eef4 8ac1 	vcmpe.f32	s17, s2
d00414aa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00414ae:	f240 80e8 	bls.w	d0041682 <fillTriangleDitherBayer2Mode+0x2e2>
d00414b2:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d00414b6:	ee33 9ac5 	vsub.f32	s18, s7, s10
d00414ba:	ee72 0ac6 	vsub.f32	s1, s5, s12
d00414be:	eec9 7aa8 	vdiv.f32	s15, s19, s17
d00414c2:	eeb4 9ac1 	vcmpe.f32	s18, s2
d00414c6:	ee32 8a43 	vsub.f32	s16, s4, s6
d00414ca:	ee74 8a47 	vsub.f32	s17, s8, s14
d00414ce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00414d2:	ee60 0aa7 	vmul.f32	s1, s1, s15
d00414d6:	ee28 8a27 	vmul.f32	s16, s16, s15
d00414da:	ee68 8aa7 	vmul.f32	s17, s17, s15
d00414de:	f300 80ff 	bgt.w	d00416e0 <fillTriangleDitherBayer2Mode+0x340>
d00414e2:	eef1 7a04 	vmov.f32	s15, #20	; 0x40a00000  5.0
d00414e6:	ed9f ba7c 	vldr	s22, [pc, #496]	; d00416d8 <fillTriangleDitherBayer2Mode+0x338>
d00414ea:	eddf 9a79 	vldr	s19, [pc, #484]	; d00416d0 <fillTriangleDitherBayer2Mode+0x330>
d00414ee:	ee76 fae3 	vsub.f32	s31, s13, s7
d00414f2:	fec1 1a8b 	vmaxnm.f32	s3, s3, s22
d00414f6:	fec1 7ae7 	vminnm.f32	s15, s3, s15
d00414fa:	ee67 7aa9 	vmul.f32	s15, s15, s19
d00414fe:	eef4 fac1 	vcmpe.f32	s31, s2
d0041502:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041506:	ee17 3a90 	vmov	r3, s15
d004150a:	edcd 7a00 	vstr	s15, [sp]
d004150e:	2b10      	cmp	r3, #16
d0041510:	bfa8      	it	ge
d0041512:	2310      	movge	r3, #16
d0041514:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041518:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d004151c:	9302      	str	r3, [sp, #8]
d004151e:	f340 80b0 	ble.w	d0041682 <fillTriangleDitherBayer2Mode+0x2e2>
d0041522:	eef0 ea4b 	vmov.f32	s29, s22
d0041526:	eef0 ba4b 	vmov.f32	s23, s22
d004152a:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d004152e:	eddf 1a67 	vldr	s3, [pc, #412]	; d00416cc <fillTriangleDitherBayer2Mode+0x32c>
d0041532:	ee72 2ae4 	vsub.f32	s5, s5, s9
d0041536:	ee32 2a40 	vsub.f32	s4, s4, s0
d004153a:	eec1 7a2f 	vdiv.f32	s15, s2, s31
d004153e:	eeb4 9ae1 	vcmpe.f32	s18, s3
d0041542:	ee34 4a65 	vsub.f32	s8, s8, s11
d0041546:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004154a:	ee62 2aa7 	vmul.f32	s5, s5, s15
d004154e:	ee24 fa27 	vmul.f32	s30, s8, s15
d0041552:	edcd 2a06 	vstr	s5, [sp, #24]
d0041556:	ee62 2a27 	vmul.f32	s5, s4, s15
d004155a:	edcd 2a05 	vstr	s5, [sp, #20]
d004155e:	f300 80f7 	bgt.w	d0041750 <fillTriangleDitherBayer2Mode+0x3b0>
d0041562:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0041566:	edcd 7a03 	vstr	s15, [sp, #12]
d004156a:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d004156e:	f240 123f 	movw	r2, #319	; 0x13f
d0041572:	9903      	ldr	r1, [sp, #12]
d0041574:	ee17 3a90 	vmov	r3, s15
d0041578:	ea21 78e1 	bic.w	r8, r1, r1, asr #31
d004157c:	3b01      	subs	r3, #1
d004157e:	4293      	cmp	r3, r2
d0041580:	bfa8      	it	ge
d0041582:	4613      	movge	r3, r2
d0041584:	4543      	cmp	r3, r8
d0041586:	db7c      	blt.n	d0041682 <fillTriangleDitherBayer2Mode+0x2e2>
d0041588:	ee07 8a90 	vmov	s15, r8
d004158c:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0041590:	3301      	adds	r3, #1
d0041592:	ed9d ba06 	vldr	s22, [sp, #24]
d0041596:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004159a:	eddd aa05 	vldr	s21, [sp, #20]
d004159e:	ed9f 9a4b 	vldr	s18, [pc, #300]	; d00416cc <fillTriangleDitherBayer2Mode+0x32c>
d00415a2:	ed9f 1a4c 	vldr	s2, [pc, #304]	; d00416d4 <fillTriangleDitherBayer2Mode+0x334>
d00415a6:	ee77 7aa6 	vadd.f32	s15, s15, s13
d00415aa:	ed9f 4a4b 	vldr	s8, [pc, #300]	; d00416d8 <fillTriangleDitherBayer2Mode+0x338>
d00415ae:	eddf 1a4b 	vldr	s3, [pc, #300]	; d00416dc <fillTriangleDitherBayer2Mode+0x33c>
d00415b2:	9301      	str	r3, [sp, #4]
d00415b4:	ee37 5ac5 	vsub.f32	s10, s15, s10
d00415b8:	ee77 3ae3 	vsub.f32	s7, s15, s7
d00415bc:	eea0 6a85 	vfma.f32	s12, s1, s10
d00415c0:	eea8 3a05 	vfma.f32	s6, s16, s10
d00415c4:	eea8 7a85 	vfma.f32	s14, s17, s10
d00415c8:	eeeb 4a23 	vfma.f32	s9, s22, s7
d00415cc:	eeaa 0aa3 	vfma.f32	s0, s21, s7
d00415d0:	eeef 5a23 	vfma.f32	s11, s30, s7
d00415d4:	e033      	b.n	d004163e <fillTriangleDitherBayer2Mode+0x29e>
d00415d6:	eeb0 2a47 	vmov.f32	s4, s14
d00415da:	eef0 9a43 	vmov.f32	s19, s6
d00415de:	eef0 6a46 	vmov.f32	s13, s12
d00415e2:	eef0 3a65 	vmov.f32	s7, s11
d00415e6:	eeb0 5a40 	vmov.f32	s10, s0
d00415ea:	eef0 2a64 	vmov.f32	s5, s9
d00415ee:	fefa 7a66 	vrintp.f32	s15, s13
d00415f2:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00415f6:	f240 13df 	movw	r3, #479	; 0x1df
d00415fa:	ee17 4a90 	vmov	r4, s15
d00415fe:	fefa 7a62 	vrintp.f32	s15, s5
d0041602:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041606:	3c01      	subs	r4, #1
d0041608:	ee17 1a90 	vmov	r1, s15
d004160c:	429c      	cmp	r4, r3
d004160e:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d0041612:	bfa8      	it	ge
d0041614:	461c      	movge	r4, r3
d0041616:	42a1      	cmp	r1, r4
d0041618:	f340 817b 	ble.w	d0041912 <fillTriangleDitherBayer2Mode+0x572>
d004161c:	f108 0801 	add.w	r8, r8, #1
d0041620:	9b01      	ldr	r3, [sp, #4]
d0041622:	ee36 6a20 	vadd.f32	s12, s12, s1
d0041626:	4598      	cmp	r8, r3
d0041628:	ee33 3a08 	vadd.f32	s6, s6, s16
d004162c:	ee37 7a28 	vadd.f32	s14, s14, s17
d0041630:	ee74 4a8b 	vadd.f32	s9, s9, s22
d0041634:	ee30 0a2a 	vadd.f32	s0, s0, s21
d0041638:	ee75 5a8f 	vadd.f32	s11, s11, s30
d004163c:	d021      	beq.n	d0041682 <fillTriangleDitherBayer2Mode+0x2e2>
d004163e:	eeb4 6ae4 	vcmpe.f32	s12, s9
d0041642:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041646:	dcc6      	bgt.n	d00415d6 <fillTriangleDitherBayer2Mode+0x236>
d0041648:	eeb0 2a65 	vmov.f32	s4, s11
d004164c:	eef0 9a40 	vmov.f32	s19, s0
d0041650:	eef0 6a64 	vmov.f32	s13, s9
d0041654:	eef0 3a47 	vmov.f32	s7, s14
d0041658:	eeb0 5a43 	vmov.f32	s10, s6
d004165c:	eef0 2a46 	vmov.f32	s5, s12
d0041660:	e7c5      	b.n	d00415ee <fillTriangleDitherBayer2Mode+0x24e>
d0041662:	eddd 6a08 	vldr	s13, [sp, #32]
d0041666:	ed9d 6a09 	vldr	s12, [sp, #36]	; 0x24
d004166a:	ed9d fa0a 	vldr	s30, [sp, #40]	; 0x28
d004166e:	ed9d 0a0b 	vldr	s0, [sp, #44]	; 0x2c
d0041672:	eddf 7a16 	vldr	s15, [pc, #88]	; d00416cc <fillTriangleDitherBayer2Mode+0x32c>
d0041676:	eef4 fae7 	vcmpe.f32	s31, s15
d004167a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004167e:	f73f af74 	bgt.w	d004156a <fillTriangleDitherBayer2Mode+0x1ca>
d0041682:	b00d      	add	sp, #52	; 0x34
d0041684:	ecbd 8b10 	vpop	{d8-d15}
d0041688:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004168c:	eef4 3ae6 	vcmpe.f32	s7, s13
d0041690:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041694:	f340 8124 	ble.w	d00418e0 <fillTriangleDitherBayer2Mode+0x540>
d0041698:	eeb0 8a44 	vmov.f32	s16, s8
d004169c:	eef0 0a42 	vmov.f32	s1, s4
d00416a0:	eeb0 1a66 	vmov.f32	s2, s13
d00416a4:	eef0 7a62 	vmov.f32	s15, s5
d00416a8:	eeb0 4a47 	vmov.f32	s8, s14
d00416ac:	eeb0 2a43 	vmov.f32	s4, s6
d00416b0:	eef0 6a45 	vmov.f32	s13, s10
d00416b4:	eef0 2a46 	vmov.f32	s5, s12
d00416b8:	eeb0 7a48 	vmov.f32	s14, s16
d00416bc:	eeb0 3a60 	vmov.f32	s6, s1
d00416c0:	eeb0 5a41 	vmov.f32	s10, s2
d00416c4:	eeb0 6a67 	vmov.f32	s12, s15
d00416c8:	e6d8      	b.n	d004147c <fillTriangleDitherBayer2Mode+0xdc>
d00416ca:	bf00      	nop
d00416cc:	38d1b717 	.word	0x38d1b717
d00416d0:	404ccccd 	.word	0x404ccccd
d00416d4:	33d6bf95 	.word	0x33d6bf95
d00416d8:	00000000 	.word	0x00000000
d00416dc:	477fff00 	.word	0x477fff00
d00416e0:	ee89 aa89 	vdiv.f32	s20, s19, s18
d00416e4:	ed1f ba06 	vldr	s22, [pc, #-24]	; d00416d0 <fillTriangleDitherBayer2Mode+0x330>
d00416e8:	ed5f 9a05 	vldr	s19, [pc, #-20]	; d00416d8 <fillTriangleDitherBayer2Mode+0x338>
d00416ec:	fec1 1aa9 	vmaxnm.f32	s3, s3, s19
d00416f0:	eef1 7a04 	vmov.f32	s15, #20	; 0x40a00000  5.0
d00416f4:	ee74 aac6 	vsub.f32	s21, s9, s12
d00416f8:	ee76 fae3 	vsub.f32	s31, s13, s7
d00416fc:	fec1 7ae7 	vminnm.f32	s15, s3, s15
d0041700:	ee67 7a8b 	vmul.f32	s15, s15, s22
d0041704:	ee70 1a43 	vsub.f32	s3, s0, s6
d0041708:	eef4 fac1 	vcmpe.f32	s31, s2
d004170c:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041710:	ee35 bac7 	vsub.f32	s22, s11, s14
d0041714:	ee17 3a90 	vmov	r3, s15
d0041718:	edcd 7a00 	vstr	s15, [sp]
d004171c:	2b10      	cmp	r3, #16
d004171e:	ee6a 7a8a 	vmul.f32	s15, s21, s20
d0041722:	ee2b ba0a 	vmul.f32	s22, s22, s20
d0041726:	bfa8      	it	ge
d0041728:	2310      	movge	r3, #16
d004172a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004172e:	eef0 ba67 	vmov.f32	s23, s15
d0041732:	ee61 7a8a 	vmul.f32	s15, s3, s20
d0041736:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d004173a:	9302      	str	r3, [sp, #8]
d004173c:	eef0 ea67 	vmov.f32	s29, s15
d0041740:	f73f aef3 	bgt.w	d004152a <fillTriangleDitherBayer2Mode+0x18a>
d0041744:	eeb0 fa69 	vmov.f32	s30, s19
d0041748:	edcd 9a05 	vstr	s19, [sp, #20]
d004174c:	edcd 9a06 	vstr	s19, [sp, #24]
d0041750:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0041754:	f240 123f 	movw	r2, #319	; 0x13f
d0041758:	ee17 3a90 	vmov	r3, s15
d004175c:	edcd 7a03 	vstr	s15, [sp, #12]
d0041760:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d0041764:	3b01      	subs	r3, #1
d0041766:	ee17 8a90 	vmov	r8, s15
d004176a:	4293      	cmp	r3, r2
d004176c:	ea28 78e8 	bic.w	r8, r8, r8, asr #31
d0041770:	bfa8      	it	ge
d0041772:	4613      	movge	r3, r2
d0041774:	4543      	cmp	r3, r8
d0041776:	f6ff af7c 	blt.w	d0041672 <fillTriangleDitherBayer2Mode+0x2d2>
d004177a:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004177e:	3301      	adds	r3, #1
d0041780:	eeb0 aa46 	vmov.f32	s20, s12
d0041784:	ed5f da2d 	vldr	s27, [pc, #-180]	; d00416d4 <fillTriangleDitherBayer2Mode+0x334>
d0041788:	eef0 aa46 	vmov.f32	s21, s12
d004178c:	ed5f 2a2e 	vldr	s5, [pc, #-184]	; d00416d8 <fillTriangleDitherBayer2Mode+0x338>
d0041790:	ee37 4ac5 	vsub.f32	s8, s15, s10
d0041794:	ee07 8a90 	vmov	s15, r8
d0041798:	eeb0 da43 	vmov.f32	s26, s6
d004179c:	ed1f 1a31 	vldr	s2, [pc, #-196]	; d00416dc <fillTriangleDitherBayer2Mode+0x33c>
d00417a0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00417a4:	9301      	str	r3, [sp, #4]
d00417a6:	eef0 ca47 	vmov.f32	s25, s14
d00417aa:	edcd 6a08 	vstr	s13, [sp, #32]
d00417ae:	eeb0 ea6b 	vmov.f32	s28, s23
d00417b2:	ed8d 6a09 	vstr	s12, [sp, #36]	; 0x24
d00417b6:	ee77 7a84 	vadd.f32	s15, s15, s8
d00417ba:	ed8d fa0a 	vstr	s30, [sp, #40]	; 0x28
d00417be:	eeb0 ca43 	vmov.f32	s24, s6
d00417c2:	ed8d 0a0b 	vstr	s0, [sp, #44]	; 0x2c
d00417c6:	eea7 aaab 	vfma.f32	s20, s15, s23
d00417ca:	eef0 ba47 	vmov.f32	s23, s14
d00417ce:	eee0 aaa7 	vfma.f32	s21, s1, s15
d00417d2:	eea8 da27 	vfma.f32	s26, s16, s15
d00417d6:	eee8 caa7 	vfma.f32	s25, s17, s15
d00417da:	eea7 caae 	vfma.f32	s24, s15, s29
d00417de:	eee7 ba8b 	vfma.f32	s23, s15, s22
d00417e2:	e034      	b.n	d004184e <fillTriangleDitherBayer2Mode+0x4ae>
d00417e4:	eef0 1a6c 	vmov.f32	s3, s25
d00417e8:	eeb0 2a4d 	vmov.f32	s4, s26
d00417ec:	eef0 7a6a 	vmov.f32	s15, s21
d00417f0:	eeb0 6a6b 	vmov.f32	s12, s23
d00417f4:	eef0 6a4c 	vmov.f32	s13, s24
d00417f8:	eeb0 4a4a 	vmov.f32	s8, s20
d00417fc:	feba 0a67 	vrintp.f32	s0, s15
d0041800:	eebd 0ac0 	vcvt.s32.f32	s0, s0
d0041804:	feba 9a44 	vrintp.f32	s18, s8
d0041808:	f240 13df 	movw	r3, #479	; 0x1df
d004180c:	ee10 4a10 	vmov	r4, s0
d0041810:	eebd 0ac9 	vcvt.s32.f32	s0, s18
d0041814:	3c01      	subs	r4, #1
d0041816:	ee10 1a10 	vmov	r1, s0
d004181a:	429c      	cmp	r4, r3
d004181c:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d0041820:	bfa8      	it	ge
d0041822:	461c      	movge	r4, r3
d0041824:	428c      	cmp	r4, r1
d0041826:	f280 8159 	bge.w	d0041adc <fillTriangleDitherBayer2Mode+0x73c>
d004182a:	f108 0801 	add.w	r8, r8, #1
d004182e:	9b01      	ldr	r3, [sp, #4]
d0041830:	ee7a aaa0 	vadd.f32	s21, s21, s1
d0041834:	4598      	cmp	r8, r3
d0041836:	ee3d da08 	vadd.f32	s26, s26, s16
d004183a:	ee7c caa8 	vadd.f32	s25, s25, s17
d004183e:	ee3a aa0e 	vadd.f32	s20, s20, s28
d0041842:	ee3c ca2e 	vadd.f32	s24, s24, s29
d0041846:	ee7b ba8b 	vadd.f32	s23, s23, s22
d004184a:	f43f af0a 	beq.w	d0041662 <fillTriangleDitherBayer2Mode+0x2c2>
d004184e:	eef4 aaca 	vcmpe.f32	s21, s20
d0041852:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041856:	dcc5      	bgt.n	d00417e4 <fillTriangleDitherBayer2Mode+0x444>
d0041858:	eef0 1a6b 	vmov.f32	s3, s23
d004185c:	eeb0 2a4c 	vmov.f32	s4, s24
d0041860:	eef0 7a4a 	vmov.f32	s15, s20
d0041864:	eeb0 6a6c 	vmov.f32	s12, s25
d0041868:	eef0 6a4d 	vmov.f32	s13, s26
d004186c:	eeb0 4a6a 	vmov.f32	s8, s21
d0041870:	e7c4      	b.n	d00417fc <fillTriangleDitherBayer2Mode+0x45c>
d0041872:	eeb0 1a45 	vmov.f32	s2, s10
d0041876:	eeb0 5a66 	vmov.f32	s10, s13
d004187a:	eeb0 8a47 	vmov.f32	s16, s14
d004187e:	eef0 6a41 	vmov.f32	s13, s2
d0041882:	eef0 0a43 	vmov.f32	s1, s6
d0041886:	eef0 7a46 	vmov.f32	s15, s12
d004188a:	eef4 3ae6 	vcmpe.f32	s7, s13
d004188e:	eeb0 7a44 	vmov.f32	s14, s8
d0041892:	eeb0 3a42 	vmov.f32	s6, s4
d0041896:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004189a:	eeb0 6a62 	vmov.f32	s12, s5
d004189e:	eeb0 4a48 	vmov.f32	s8, s16
d00418a2:	eeb0 2a60 	vmov.f32	s4, s1
d00418a6:	eef0 2a67 	vmov.f32	s5, s15
d00418aa:	f77f ade7 	ble.w	d004147c <fillTriangleDitherBayer2Mode+0xdc>
d00418ae:	eeb0 8a65 	vmov.f32	s16, s11
d00418b2:	eef0 0a40 	vmov.f32	s1, s0
d00418b6:	eeb0 1a63 	vmov.f32	s2, s7
d00418ba:	eef0 7a64 	vmov.f32	s15, s9
d00418be:	eef0 5a44 	vmov.f32	s11, s8
d00418c2:	eeb0 0a42 	vmov.f32	s0, s4
d00418c6:	eef0 3a66 	vmov.f32	s7, s13
d00418ca:	eef0 4a62 	vmov.f32	s9, s5
d00418ce:	eeb0 4a48 	vmov.f32	s8, s16
d00418d2:	eeb0 2a60 	vmov.f32	s4, s1
d00418d6:	eef0 6a41 	vmov.f32	s13, s2
d00418da:	eef0 2a67 	vmov.f32	s5, s15
d00418de:	e5cd      	b.n	d004147c <fillTriangleDitherBayer2Mode+0xdc>
d00418e0:	eeb0 8a47 	vmov.f32	s16, s14
d00418e4:	eef0 0a43 	vmov.f32	s1, s6
d00418e8:	eeb0 1a45 	vmov.f32	s2, s10
d00418ec:	eef0 7a46 	vmov.f32	s15, s12
d00418f0:	eeb0 7a65 	vmov.f32	s14, s11
d00418f4:	eeb0 3a40 	vmov.f32	s6, s0
d00418f8:	eeb0 5a63 	vmov.f32	s10, s7
d00418fc:	eeb0 6a64 	vmov.f32	s12, s9
d0041900:	eef0 5a48 	vmov.f32	s11, s16
d0041904:	eeb0 0a60 	vmov.f32	s0, s1
d0041908:	eef0 3a41 	vmov.f32	s7, s2
d004190c:	eef0 4a67 	vmov.f32	s9, s15
d0041910:	e5ae      	b.n	d0041470 <fillTriangleDitherBayer2Mode+0xd0>
d0041912:	ee76 6ae2 	vsub.f32	s13, s13, s5
d0041916:	eef4 6ac9 	vcmpe.f32	s13, s18
d004191a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004191e:	f340 8207 	ble.w	d0041d30 <fillTriangleDitherBayer2Mode+0x990>
d0041922:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0041926:	ee79 9ac5 	vsub.f32	s19, s19, s10
d004192a:	ee32 2a63 	vsub.f32	s4, s4, s7
d004192e:	ee87 aaa6 	vdiv.f32	s20, s15, s13
d0041932:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0041936:	ee77 2ae2 	vsub.f32	s5, s15, s5
d004193a:	ee07 1a90 	vmov	s15, r1
d004193e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041942:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0041946:	ee69 9a8a 	vmul.f32	s19, s19, s20
d004194a:	ee22 aa0a 	vmul.f32	s20, s4, s20
d004194e:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0041952:	eee7 3a8a 	vfma.f32	s7, s15, s20
d0041956:	ebc8 1208 	rsb	r2, r8, r8, lsl #4
d004195a:	4dd3      	ldr	r5, [pc, #844]	; (d0041ca8 <fillTriangleDitherBayer2Mode+0x908>)
d004195c:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0041960:	48d2      	ldr	r0, [pc, #840]	; (d0041cac <fillTriangleDitherBayer2Mode+0x90c>)
d0041962:	eb01 1242 	add.w	r2, r1, r2, lsl #5
d0041966:	682f      	ldr	r7, [r5, #0]
d0041968:	eb08 1383 	add.w	r3, r8, r3, lsl #6
d004196c:	f008 0503 	and.w	r5, r8, #3
d0041970:	eb00 0942 	add.w	r9, r0, r2, lsl #1
d0041974:	4ace      	ldr	r2, [pc, #824]	; (d0041cb0 <fillTriangleDitherBayer2Mode+0x910>)
d0041976:	441f      	add	r7, r3
d0041978:	f8cd 800c 	str.w	r8, [sp, #12]
d004197c:	eb02 0385 	add.w	r3, r2, r5, lsl #2
d0041980:	eeb6 2a00 	vmov.f32	s4, #96	; 0x3f000000  0.5
d0041984:	4698      	mov	r8, r3
d0041986:	e010      	b.n	d00419aa <fillTriangleDitherBayer2Mode+0x60a>
d0041988:	ee07 3a90 	vmov	s15, r3
d004198c:	4419      	add	r1, r3
d004198e:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0041992:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041996:	428c      	cmp	r4, r1
d0041998:	eb09 0943 	add.w	r9, r9, r3, lsl #1
d004199c:	eb07 1782 	add.w	r7, r7, r2, lsl #6
d00419a0:	eea7 5aa9 	vfma.f32	s10, s15, s19
d00419a4:	eee7 3a8a 	vfma.f32	s7, s15, s20
d00419a8:	db62      	blt.n	d0041a70 <fillTriangleDitherBayer2Mode+0x6d0>
d00419aa:	eba4 0c01 	sub.w	ip, r4, r1
d00419ae:	eeb4 5ac1 	vcmpe.f32	s10, s2
d00419b2:	f10c 0301 	add.w	r3, ip, #1
d00419b6:	2b30      	cmp	r3, #48	; 0x30
d00419b8:	bfa8      	it	ge
d00419ba:	2330      	movge	r3, #48	; 0x30
d00419bc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00419c0:	d9e2      	bls.n	d0041988 <fillTriangleDitherBayer2Mode+0x5e8>
d00419c2:	f1bc 0f00 	cmp.w	ip, #0
d00419c6:	eec3 7a85 	vdiv.f32	s15, s7, s10
d00419ca:	dd54      	ble.n	d0041a76 <fillTriangleDitherBayer2Mode+0x6d6>
d00419cc:	1e5a      	subs	r2, r3, #1
d00419ce:	ee06 2a90 	vmov	s13, r2
d00419d2:	eef0 2a45 	vmov.f32	s5, s10
d00419d6:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d00419da:	eee6 2aa9 	vfma.f32	s5, s13, s19
d00419de:	eef4 2ac1 	vcmpe.f32	s5, s2
d00419e2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00419e6:	dd47      	ble.n	d0041a78 <fillTriangleDitherBayer2Mode+0x6d8>
d00419e8:	eeb0 ca63 	vmov.f32	s24, s7
d00419ec:	9a00      	ldr	r2, [sp, #0]
d00419ee:	2a0f      	cmp	r2, #15
d00419f0:	eea6 ca8a 	vfma.f32	s24, s13, s20
d00419f4:	eecc ba22 	vdiv.f32	s23, s24, s5
d00419f8:	ee7b bae7 	vsub.f32	s23, s23, s15
d00419fc:	eecb 2aa6 	vdiv.f32	s5, s23, s13
d0041a00:	dd3f      	ble.n	d0041a82 <fillTriangleDitherBayer2Mode+0x6e2>
d0041a02:	f1a9 0602 	sub.w	r6, r9, #2
d0041a06:	2200      	movs	r2, #0
d0041a08:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d0041a0c:	fec6 6ae1 	vminnm.f32	s13, s13, s3
d0041a10:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d0041a14:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d0041a18:	3201      	adds	r2, #1
d0041a1a:	ee76 6a82 	vadd.f32	s13, s13, s4
d0041a1e:	0185      	lsls	r5, r0, #6
d0041a20:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0041a24:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d0041a28:	ee16 0a90 	vmov	r0, s13
d0041a2c:	b280      	uxth	r0, r0
d0041a2e:	4586      	cmp	lr, r0
d0041a30:	d903      	bls.n	d0041a3a <fillTriangleDitherBayer2Mode+0x69a>
d0041a32:	8030      	strh	r0, [r6, #0]
d0041a34:	f04f 0010 	mov.w	r0, #16
d0041a38:	5578      	strb	r0, [r7, r5]
d0041a3a:	4293      	cmp	r3, r2
d0041a3c:	dce4      	bgt.n	d0041a08 <fillTriangleDitherBayer2Mode+0x668>
d0041a3e:	f1bc 0f00 	cmp.w	ip, #0
d0041a42:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0041a46:	ea4f 0043 	mov.w	r0, r3, lsl #1
d0041a4a:	ea4f 1282 	mov.w	r2, r2, lsl #6
d0041a4e:	bfbc      	itt	lt
d0041a50:	2002      	movlt	r0, #2
d0041a52:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d0041a56:	4481      	add	r9, r0
d0041a58:	4417      	add	r7, r2
d0041a5a:	ee07 3a90 	vmov	s15, r3
d0041a5e:	4419      	add	r1, r3
d0041a60:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041a64:	428c      	cmp	r4, r1
d0041a66:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0041a6a:	eee7 3a8a 	vfma.f32	s7, s15, s20
d0041a6e:	da9c      	bge.n	d00419aa <fillTriangleDitherBayer2Mode+0x60a>
d0041a70:	f8dd 800c 	ldr.w	r8, [sp, #12]
d0041a74:	e5d2      	b.n	d004161c <fillTriangleDitherBayer2Mode+0x27c>
d0041a76:	d1f0      	bne.n	d0041a5a <fillTriangleDitherBayer2Mode+0x6ba>
d0041a78:	9a00      	ldr	r2, [sp, #0]
d0041a7a:	eef0 2a44 	vmov.f32	s5, s8
d0041a7e:	2a0f      	cmp	r2, #15
d0041a80:	dcbf      	bgt.n	d0041a02 <fillTriangleDitherBayer2Mode+0x662>
d0041a82:	2a00      	cmp	r2, #0
d0041a84:	f340 8136 	ble.w	d0041cf4 <fillTriangleDitherBayer2Mode+0x954>
d0041a88:	9404      	str	r4, [sp, #16]
d0041a8a:	f1a9 0e02 	sub.w	lr, r9, #2
d0041a8e:	2200      	movs	r2, #0
d0041a90:	9c02      	ldr	r4, [sp, #8]
d0041a92:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d0041a96:	fec6 6ae1 	vminnm.f32	s13, s13, s3
d0041a9a:	ee76 6a82 	vadd.f32	s13, s13, s4
d0041a9e:	f83e af02 	ldrh.w	sl, [lr, #2]!
d0041aa2:	188e      	adds	r6, r1, r2
d0041aa4:	eb02 0582 	add.w	r5, r2, r2, lsl #2
d0041aa8:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0041aac:	3201      	adds	r2, #1
d0041aae:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d0041ab2:	f006 0603 	and.w	r6, r6, #3
d0041ab6:	01ad      	lsls	r5, r5, #6
d0041ab8:	ee16 0a90 	vmov	r0, s13
d0041abc:	b280      	uxth	r0, r0
d0041abe:	4582      	cmp	sl, r0
d0041ac0:	d908      	bls.n	d0041ad4 <fillTriangleDitherBayer2Mode+0x734>
d0041ac2:	f818 6006 	ldrb.w	r6, [r8, r6]
d0041ac6:	f8ae 0000 	strh.w	r0, [lr]
d0041aca:	42a6      	cmp	r6, r4
d0041acc:	bfac      	ite	ge
d0041ace:	4658      	movge	r0, fp
d0041ad0:	2010      	movlt	r0, #16
d0041ad2:	5578      	strb	r0, [r7, r5]
d0041ad4:	4293      	cmp	r3, r2
d0041ad6:	dcdc      	bgt.n	d0041a92 <fillTriangleDitherBayer2Mode+0x6f2>
d0041ad8:	9c04      	ldr	r4, [sp, #16]
d0041ada:	e7b0      	b.n	d0041a3e <fillTriangleDitherBayer2Mode+0x69e>
d0041adc:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0041ae0:	ed9f 0a74 	vldr	s0, [pc, #464]	; d0041cb4 <fillTriangleDitherBayer2Mode+0x914>
d0041ae4:	eef4 7ac0 	vcmpe.f32	s15, s0
d0041ae8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041aec:	f340 8125 	ble.w	d0041d3a <fillTriangleDitherBayer2Mode+0x99a>
d0041af0:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d0041af4:	ee32 2a66 	vsub.f32	s4, s4, s13
d0041af8:	ee71 1ac6 	vsub.f32	s3, s3, s12
d0041afc:	ee89 0a27 	vdiv.f32	s0, s18, s15
d0041b00:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0041b04:	ee37 4ac4 	vsub.f32	s8, s15, s8
d0041b08:	ee07 1a90 	vmov	s15, r1
d0041b0c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041b10:	ee77 7a84 	vadd.f32	s15, s15, s8
d0041b14:	ee22 2a00 	vmul.f32	s4, s4, s0
d0041b18:	ee61 1a80 	vmul.f32	s3, s3, s0
d0041b1c:	eee7 6a82 	vfma.f32	s13, s15, s4
d0041b20:	eea7 6aa1 	vfma.f32	s12, s15, s3
d0041b24:	ebc8 1208 	rsb	r2, r8, r8, lsl #4
d0041b28:	4d5f      	ldr	r5, [pc, #380]	; (d0041ca8 <fillTriangleDitherBayer2Mode+0x908>)
d0041b2a:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0041b2e:	485f      	ldr	r0, [pc, #380]	; (d0041cac <fillTriangleDitherBayer2Mode+0x90c>)
d0041b30:	eb01 1242 	add.w	r2, r1, r2, lsl #5
d0041b34:	682f      	ldr	r7, [r5, #0]
d0041b36:	eb08 1383 	add.w	r3, r8, r3, lsl #6
d0041b3a:	f008 0503 	and.w	r5, r8, #3
d0041b3e:	eb00 0942 	add.w	r9, r0, r2, lsl #1
d0041b42:	4a5b      	ldr	r2, [pc, #364]	; (d0041cb0 <fillTriangleDitherBayer2Mode+0x910>)
d0041b44:	441f      	add	r7, r3
d0041b46:	f8cd 8010 	str.w	r8, [sp, #16]
d0041b4a:	eb02 0385 	add.w	r3, r2, r5, lsl #2
d0041b4e:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d0041b52:	4698      	mov	r8, r3
d0041b54:	e010      	b.n	d0041b78 <fillTriangleDitherBayer2Mode+0x7d8>
d0041b56:	ee07 2a90 	vmov	s15, r2
d0041b5a:	4411      	add	r1, r2
d0041b5c:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0041b60:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041b64:	428c      	cmp	r4, r1
d0041b66:	eb09 0942 	add.w	r9, r9, r2, lsl #1
d0041b6a:	eb07 1783 	add.w	r7, r7, r3, lsl #6
d0041b6e:	eee7 6a82 	vfma.f32	s13, s15, s4
d0041b72:	eea7 6aa1 	vfma.f32	s12, s15, s3
d0041b76:	db62      	blt.n	d0041c3e <fillTriangleDitherBayer2Mode+0x89e>
d0041b78:	eba4 0c01 	sub.w	ip, r4, r1
d0041b7c:	eef4 6aed 	vcmpe.f32	s13, s27
d0041b80:	f10c 0201 	add.w	r2, ip, #1
d0041b84:	2a30      	cmp	r2, #48	; 0x30
d0041b86:	bfa8      	it	ge
d0041b88:	2230      	movge	r2, #48	; 0x30
d0041b8a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041b8e:	d9e2      	bls.n	d0041b56 <fillTriangleDitherBayer2Mode+0x7b6>
d0041b90:	f1bc 0f00 	cmp.w	ip, #0
d0041b94:	eec6 7a26 	vdiv.f32	s15, s12, s13
d0041b98:	dd54      	ble.n	d0041c44 <fillTriangleDitherBayer2Mode+0x8a4>
d0041b9a:	1e53      	subs	r3, r2, #1
d0041b9c:	ee00 3a10 	vmov	s0, r3
d0041ba0:	eeb0 9a66 	vmov.f32	s18, s13
d0041ba4:	eeb8 0ac0 	vcvt.f32.s32	s0, s0
d0041ba8:	eea0 9a02 	vfma.f32	s18, s0, s4
d0041bac:	eeb4 9aed 	vcmpe.f32	s18, s27
d0041bb0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041bb4:	dd47      	ble.n	d0041c46 <fillTriangleDitherBayer2Mode+0x8a6>
d0041bb6:	eeb0 fa46 	vmov.f32	s30, s12
d0041bba:	9b00      	ldr	r3, [sp, #0]
d0041bbc:	2b0f      	cmp	r3, #15
d0041bbe:	eea0 fa21 	vfma.f32	s30, s0, s3
d0041bc2:	eecf 9a09 	vdiv.f32	s19, s30, s18
d0041bc6:	ee79 9ae7 	vsub.f32	s19, s19, s15
d0041bca:	ee89 9a80 	vdiv.f32	s18, s19, s0
d0041bce:	dd3f      	ble.n	d0041c50 <fillTriangleDitherBayer2Mode+0x8b0>
d0041bd0:	f1a9 0602 	sub.w	r6, r9, #2
d0041bd4:	2000      	movs	r0, #0
d0041bd6:	fe87 0aa2 	vmaxnm.f32	s0, s15, s5
d0041bda:	fe80 0a41 	vminnm.f32	s0, s0, s2
d0041bde:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0041be2:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d0041be6:	3001      	adds	r0, #1
d0041be8:	ee30 0a04 	vadd.f32	s0, s0, s8
d0041bec:	019d      	lsls	r5, r3, #6
d0041bee:	ee77 7a89 	vadd.f32	s15, s15, s18
d0041bf2:	eebc 0ac0 	vcvt.u32.f32	s0, s0
d0041bf6:	ee10 3a10 	vmov	r3, s0
d0041bfa:	b29b      	uxth	r3, r3
d0041bfc:	459e      	cmp	lr, r3
d0041bfe:	d903      	bls.n	d0041c08 <fillTriangleDitherBayer2Mode+0x868>
d0041c00:	8033      	strh	r3, [r6, #0]
d0041c02:	f04f 0310 	mov.w	r3, #16
d0041c06:	557b      	strb	r3, [r7, r5]
d0041c08:	4282      	cmp	r2, r0
d0041c0a:	dce4      	bgt.n	d0041bd6 <fillTriangleDitherBayer2Mode+0x836>
d0041c0c:	f1bc 0f00 	cmp.w	ip, #0
d0041c10:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0041c14:	ea4f 0042 	mov.w	r0, r2, lsl #1
d0041c18:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0041c1c:	bfbc      	itt	lt
d0041c1e:	2002      	movlt	r0, #2
d0041c20:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0041c24:	4481      	add	r9, r0
d0041c26:	441f      	add	r7, r3
d0041c28:	ee07 2a90 	vmov	s15, r2
d0041c2c:	4411      	add	r1, r2
d0041c2e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041c32:	428c      	cmp	r4, r1
d0041c34:	eee7 6a82 	vfma.f32	s13, s15, s4
d0041c38:	eea7 6aa1 	vfma.f32	s12, s15, s3
d0041c3c:	da9c      	bge.n	d0041b78 <fillTriangleDitherBayer2Mode+0x7d8>
d0041c3e:	f8dd 8010 	ldr.w	r8, [sp, #16]
d0041c42:	e5f2      	b.n	d004182a <fillTriangleDitherBayer2Mode+0x48a>
d0041c44:	d1f0      	bne.n	d0041c28 <fillTriangleDitherBayer2Mode+0x888>
d0041c46:	9b00      	ldr	r3, [sp, #0]
d0041c48:	eeb0 9a62 	vmov.f32	s18, s5
d0041c4c:	2b0f      	cmp	r3, #15
d0041c4e:	dcbf      	bgt.n	d0041bd0 <fillTriangleDitherBayer2Mode+0x830>
d0041c50:	2b00      	cmp	r3, #0
d0041c52:	dd31      	ble.n	d0041cb8 <fillTriangleDitherBayer2Mode+0x918>
d0041c54:	9407      	str	r4, [sp, #28]
d0041c56:	f1a9 0e02 	sub.w	lr, r9, #2
d0041c5a:	2000      	movs	r0, #0
d0041c5c:	9c02      	ldr	r4, [sp, #8]
d0041c5e:	fe87 0aa2 	vmaxnm.f32	s0, s15, s5
d0041c62:	fe80 0a41 	vminnm.f32	s0, s0, s2
d0041c66:	ee30 0a04 	vadd.f32	s0, s0, s8
d0041c6a:	f83e af02 	ldrh.w	sl, [lr, #2]!
d0041c6e:	180e      	adds	r6, r1, r0
d0041c70:	eb00 0580 	add.w	r5, r0, r0, lsl #2
d0041c74:	ee77 7a89 	vadd.f32	s15, s15, s18
d0041c78:	3001      	adds	r0, #1
d0041c7a:	eebc 0ac0 	vcvt.u32.f32	s0, s0
d0041c7e:	f006 0603 	and.w	r6, r6, #3
d0041c82:	01ad      	lsls	r5, r5, #6
d0041c84:	ee10 3a10 	vmov	r3, s0
d0041c88:	b29b      	uxth	r3, r3
d0041c8a:	459a      	cmp	sl, r3
d0041c8c:	d908      	bls.n	d0041ca0 <fillTriangleDitherBayer2Mode+0x900>
d0041c8e:	f818 6006 	ldrb.w	r6, [r8, r6]
d0041c92:	f8ae 3000 	strh.w	r3, [lr]
d0041c96:	42a6      	cmp	r6, r4
d0041c98:	bfac      	ite	ge
d0041c9a:	465b      	movge	r3, fp
d0041c9c:	2310      	movlt	r3, #16
d0041c9e:	557b      	strb	r3, [r7, r5]
d0041ca0:	4282      	cmp	r2, r0
d0041ca2:	dcdc      	bgt.n	d0041c5e <fillTriangleDitherBayer2Mode+0x8be>
d0041ca4:	9c07      	ldr	r4, [sp, #28]
d0041ca6:	e7b1      	b.n	d0041c0c <fillTriangleDitherBayer2Mode+0x86c>
d0041ca8:	d00e1c0c 	.word	0xd00e1c0c
d0041cac:	d00e7ca0 	.word	0xd00e7ca0
d0041cb0:	d0046c00 	.word	0xd0046c00
d0041cb4:	38d1b717 	.word	0x38d1b717
d0041cb8:	f1a9 0602 	sub.w	r6, r9, #2
d0041cbc:	2000      	movs	r0, #0
d0041cbe:	fe87 0aa2 	vmaxnm.f32	s0, s15, s5
d0041cc2:	fe80 0a41 	vminnm.f32	s0, s0, s2
d0041cc6:	ee30 0a04 	vadd.f32	s0, s0, s8
d0041cca:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0041cce:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d0041cd2:	ee77 7a89 	vadd.f32	s15, s15, s18
d0041cd6:	019d      	lsls	r5, r3, #6
d0041cd8:	3001      	adds	r0, #1
d0041cda:	eebc 0ac0 	vcvt.u32.f32	s0, s0
d0041cde:	ee10 3a10 	vmov	r3, s0
d0041ce2:	b29b      	uxth	r3, r3
d0041ce4:	459e      	cmp	lr, r3
d0041ce6:	d902      	bls.n	d0041cee <fillTriangleDitherBayer2Mode+0x94e>
d0041ce8:	8033      	strh	r3, [r6, #0]
d0041cea:	f807 b005 	strb.w	fp, [r7, r5]
d0041cee:	4282      	cmp	r2, r0
d0041cf0:	dce5      	bgt.n	d0041cbe <fillTriangleDitherBayer2Mode+0x91e>
d0041cf2:	e78b      	b.n	d0041c0c <fillTriangleDitherBayer2Mode+0x86c>
d0041cf4:	f1a9 0602 	sub.w	r6, r9, #2
d0041cf8:	2200      	movs	r2, #0
d0041cfa:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d0041cfe:	fec6 6ae1 	vminnm.f32	s13, s13, s3
d0041d02:	ee76 6a82 	vadd.f32	s13, s13, s4
d0041d06:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d0041d0a:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d0041d0e:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0041d12:	0185      	lsls	r5, r0, #6
d0041d14:	3201      	adds	r2, #1
d0041d16:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d0041d1a:	ee16 0a90 	vmov	r0, s13
d0041d1e:	b280      	uxth	r0, r0
d0041d20:	4586      	cmp	lr, r0
d0041d22:	d902      	bls.n	d0041d2a <fillTriangleDitherBayer2Mode+0x98a>
d0041d24:	8030      	strh	r0, [r6, #0]
d0041d26:	f807 b005 	strb.w	fp, [r7, r5]
d0041d2a:	4293      	cmp	r3, r2
d0041d2c:	dce5      	bgt.n	d0041cfa <fillTriangleDitherBayer2Mode+0x95a>
d0041d2e:	e686      	b.n	d0041a3e <fillTriangleDitherBayer2Mode+0x69e>
d0041d30:	eeb0 aa44 	vmov.f32	s20, s8
d0041d34:	eef0 9a44 	vmov.f32	s19, s8
d0041d38:	e60d      	b.n	d0041956 <fillTriangleDitherBayer2Mode+0x5b6>
d0041d3a:	eef0 1a62 	vmov.f32	s3, s5
d0041d3e:	eeb0 2a62 	vmov.f32	s4, s5
d0041d42:	e6ef      	b.n	d0041b24 <fillTriangleDitherBayer2Mode+0x784>

d0041d44 <initSystem>:
d0041d44:	b570      	push	{r4, r5, r6, lr}
d0041d46:	4c48      	ldr	r4, [pc, #288]	; (d0041e68 <initSystem+0x124>)
d0041d48:	b082      	sub	sp, #8
d0041d4a:	f44f 2080 	mov.w	r0, #262144	; 0x40000
d0041d4e:	2600      	movs	r6, #0
d0041d50:	7823      	ldrb	r3, [r4, #0]
d0041d52:	7862      	ldrb	r2, [r4, #1]
d0041d54:	78a1      	ldrb	r1, [r4, #2]
d0041d56:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041d5a:	78e2      	ldrb	r2, [r4, #3]
d0041d5c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0041d60:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041d64:	681b      	ldr	r3, [r3, #0]
d0041d66:	4798      	blx	r3
d0041d68:	f7fe f968 	bl	d004003c <initMalloc>
d0041d6c:	7b23      	ldrb	r3, [r4, #12]
d0041d6e:	7b62      	ldrb	r2, [r4, #13]
d0041d70:	2100      	movs	r1, #0
d0041d72:	7ba5      	ldrb	r5, [r4, #14]
d0041d74:	20dc      	movs	r0, #220	; 0xdc
d0041d76:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041d7a:	7be2      	ldrb	r2, [r4, #15]
d0041d7c:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0041d80:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041d84:	681b      	ldr	r3, [r3, #0]
d0041d86:	691b      	ldr	r3, [r3, #16]
d0041d88:	4798      	blx	r3
d0041d8a:	7b23      	ldrb	r3, [r4, #12]
d0041d8c:	7b62      	ldrb	r2, [r4, #13]
d0041d8e:	2000      	movs	r0, #0
d0041d90:	7ba1      	ldrb	r1, [r4, #14]
d0041d92:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041d96:	7be2      	ldrb	r2, [r4, #15]
d0041d98:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0041d9c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041da0:	681b      	ldr	r3, [r3, #0]
d0041da2:	689b      	ldr	r3, [r3, #8]
d0041da4:	4798      	blx	r3
d0041da6:	7b25      	ldrb	r5, [r4, #12]
d0041da8:	7b62      	ldrb	r2, [r4, #13]
d0041daa:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0041dae:	7ba1      	ldrb	r1, [r4, #14]
d0041db0:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d0041db4:	7be0      	ldrb	r0, [r4, #15]
d0041db6:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0041dba:	ea45 4501 	orr.w	r5, r5, r1, lsl #16
d0041dbe:	4619      	mov	r1, r3
d0041dc0:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d0041dc4:	4610      	mov	r0, r2
d0041dc6:	682d      	ldr	r5, [r5, #0]
d0041dc8:	9600      	str	r6, [sp, #0]
d0041dca:	696d      	ldr	r5, [r5, #20]
d0041dcc:	47a8      	blx	r5
d0041dce:	7c23      	ldrb	r3, [r4, #16]
d0041dd0:	7c62      	ldrb	r2, [r4, #17]
d0041dd2:	f44f 7000 	mov.w	r0, #512	; 0x200
d0041dd6:	7ca1      	ldrb	r1, [r4, #18]
d0041dd8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041ddc:	7ce2      	ldrb	r2, [r4, #19]
d0041dde:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0041de2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041de6:	681b      	ldr	r3, [r3, #0]
d0041de8:	681b      	ldr	r3, [r3, #0]
d0041dea:	4798      	blx	r3
d0041dec:	7c22      	ldrb	r2, [r4, #16]
d0041dee:	7c63      	ldrb	r3, [r4, #17]
d0041df0:	2101      	movs	r1, #1
d0041df2:	7ca5      	ldrb	r5, [r4, #18]
d0041df4:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d0041df8:	7ce0      	ldrb	r0, [r4, #19]
d0041dfa:	7b23      	ldrb	r3, [r4, #12]
d0041dfc:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
d0041e00:	7b66      	ldrb	r6, [r4, #13]
d0041e02:	7ba5      	ldrb	r5, [r4, #14]
d0041e04:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d0041e08:	7be0      	ldrb	r0, [r4, #15]
d0041e0a:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d0041e0e:	6812      	ldr	r2, [r2, #0]
d0041e10:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0041e14:	6852      	ldr	r2, [r2, #4]
d0041e16:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d0041e1a:	7011      	strb	r1, [r2, #0]
d0041e1c:	681b      	ldr	r3, [r3, #0]
d0041e1e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d0041e20:	4798      	blx	r3
d0041e22:	7b23      	ldrb	r3, [r4, #12]
d0041e24:	7b62      	ldrb	r2, [r4, #13]
d0041e26:	7ba5      	ldrb	r5, [r4, #14]
d0041e28:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041e2c:	7be2      	ldrb	r2, [r4, #15]
d0041e2e:	490f      	ldr	r1, [pc, #60]	; (d0041e6c <initSystem+0x128>)
d0041e30:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0041e34:	6008      	str	r0, [r1, #0]
d0041e36:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041e3a:	681b      	ldr	r3, [r3, #0]
d0041e3c:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d0041e3e:	4798      	blx	r3
d0041e40:	7b23      	ldrb	r3, [r4, #12]
d0041e42:	7b62      	ldrb	r2, [r4, #13]
d0041e44:	4605      	mov	r5, r0
d0041e46:	7ba6      	ldrb	r6, [r4, #14]
d0041e48:	2064      	movs	r0, #100	; 0x64
d0041e4a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041e4e:	7be2      	ldrb	r2, [r4, #15]
d0041e50:	4907      	ldr	r1, [pc, #28]	; (d0041e70 <initSystem+0x12c>)
d0041e52:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0041e56:	600d      	str	r5, [r1, #0]
d0041e58:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041e5c:	681b      	ldr	r3, [r3, #0]
d0041e5e:	689b      	ldr	r3, [r3, #8]
d0041e60:	b002      	add	sp, #8
d0041e62:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0041e66:	4718      	bx	r3
d0041e68:	2001f000 	.word	0x2001f000
d0041e6c:	d00e1c80 	.word	0xd00e1c80
d0041e70:	d00e1c60 	.word	0xd00e1c60

d0041e74 <main>:
d0041e74:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041e78:	ed2d 8b0a 	vpush	{d8-d12}
d0041e7c:	b0e7      	sub	sp, #412	; 0x19c
d0041e7e:	f8df 82b4 	ldr.w	r8, [pc, #692]	; d0042134 <main+0x2c0>
d0041e82:	f7ff ff5f 	bl	d0041d44 <initSystem>
d0041e86:	f8df 92b0 	ldr.w	r9, [pc, #688]	; d0042138 <main+0x2c4>
d0041e8a:	f10d 06bf 	add.w	r6, sp, #191	; 0xbf
d0041e8e:	f000 ff6f 	bl	d0042d70 <worldClear>
d0041e92:	f001 fdf1 	bl	d0043a78 <lightsClear>
d0041e96:	f04f 4a7f 	mov.w	sl, #4278190080	; 0xff000000
d0041e9a:	f026 061f 	bic.w	r6, r6, #31
d0041e9e:	f000 fc6b 	bl	d0042778 <sb3dParticlesClear>
d0041ea2:	f001 fe1f 	bl	d0043ae4 <setDefaultRenderMode>
d0041ea6:	4c91      	ldr	r4, [pc, #580]	; (d00420ec <main+0x278>)
d0041ea8:	4630      	mov	r0, r6
d0041eaa:	f106 07a0 	add.w	r7, r6, #160	; 0xa0
d0041eae:	f000 ff67 	bl	d0042d80 <cameraCreate>
d0041eb2:	4630      	mov	r0, r6
d0041eb4:	eddf 0a8e 	vldr	s1, [pc, #568]	; d00420f0 <main+0x27c>
d0041eb8:	f106 0560 	add.w	r5, r6, #96	; 0x60
d0041ebc:	ed9f 0a8d 	vldr	s0, [pc, #564]	; d00420f4 <main+0x280>
d0041ec0:	f001 f97e 	bl	d00431c0 <cameraSetRange>
d0041ec4:	ed9f 1aa6 	vldr	s2, [pc, #664]	; d0042160 <main+0x2ec>
d0041ec8:	eddf 0a8b 	vldr	s1, [pc, #556]	; d00420f8 <main+0x284>
d0041ecc:	eeb0 0a41 	vmov.f32	s0, s2
d0041ed0:	ed9f 9a8a 	vldr	s18, [pc, #552]	; d00420fc <main+0x288>
d0041ed4:	f000 fbb0 	bl	d0042638 <vec3>
d0041ed8:	4630      	mov	r0, r6
d0041eda:	edcd 0a0b 	vstr	s1, [sp, #44]	; 0x2c
d0041ede:	ed8d 0a0a 	vstr	s0, [sp, #40]	; 0x28
d0041ee2:	ed8d 1a0c 	vstr	s2, [sp, #48]	; 0x30
d0041ee6:	f000 ff55 	bl	d0042d94 <cameraSetPosition>
d0041eea:	4630      	mov	r0, r6
d0041eec:	ed9f ba84 	vldr	s22, [pc, #528]	; d0042100 <main+0x28c>
d0041ef0:	f000 ff60 	bl	d0042db4 <cameraNormalize>
d0041ef4:	f10d 0c60 	add.w	ip, sp, #96	; 0x60
d0041ef8:	f10d 0e4c 	add.w	lr, sp, #76	; 0x4c
d0041efc:	eddf aa81 	vldr	s21, [pc, #516]	; d0042104 <main+0x290>
d0041f00:	ed9f aa81 	vldr	s20, [pc, #516]	; d0042108 <main+0x294>
d0041f04:	eddf 9a81 	vldr	s19, [pc, #516]	; d004210c <main+0x298>
d0041f08:	eddf 8a95 	vldr	s17, [pc, #596]	; d0042160 <main+0x2ec>
d0041f0c:	e8b8 000f 	ldmia.w	r8!, {r0, r1, r2, r3}
d0041f10:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d0041f14:	e8b8 000f 	ldmia.w	r8!, {r0, r1, r2, r3}
d0041f18:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d0041f1c:	e8b8 000f 	ldmia.w	r8!, {r0, r1, r2, r3}
d0041f20:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d0041f24:	f108 0b10 	add.w	fp, r8, #16
d0041f28:	e898 000f 	ldmia.w	r8, {r0, r1, r2, r3}
d0041f2c:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d0041f30:	f8c9 a000 	str.w	sl, [r9]
d0041f34:	46f4      	mov	ip, lr
d0041f36:	f8cd e000 	str.w	lr, [sp]
d0041f3a:	f108 0824 	add.w	r8, r8, #36	; 0x24
d0041f3e:	f8c9 a040 	str.w	sl, [r9, #64]	; 0x40
d0041f42:	e8bb 000f 	ldmia.w	fp!, {r0, r1, r2, r3}
d0041f46:	f8db e000 	ldr.w	lr, [fp]
d0041f4a:	f8df b1f0 	ldr.w	fp, [pc, #496]	; d004213c <main+0x2c8>
d0041f4e:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d0041f52:	4653      	mov	r3, sl
d0041f54:	f8cc e000 	str.w	lr, [ip]
d0041f58:	4648      	mov	r0, r9
d0041f5a:	a918      	add	r1, sp, #96	; 0x60
d0041f5c:	2210      	movs	r2, #16
d0041f5e:	f8df a1e0 	ldr.w	sl, [pc, #480]	; d0042140 <main+0x2cc>
d0041f62:	f001 fb49 	bl	d00435f8 <buildLightingCLUT>
d0041f66:	7b23      	ldrb	r3, [r4, #12]
d0041f68:	7b62      	ldrb	r2, [r4, #13]
d0041f6a:	4648      	mov	r0, r9
d0041f6c:	7ba1      	ldrb	r1, [r4, #14]
d0041f6e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041f72:	7be2      	ldrb	r2, [r4, #15]
d0041f74:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0041f78:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041f7c:	681b      	ldr	r3, [r3, #0]
d0041f7e:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d0041f80:	4798      	blx	r3
d0041f82:	ab07      	add	r3, sp, #28
d0041f84:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d0041f88:	e898 0007 	ldmia.w	r8, {r0, r1, r2}
d0041f8c:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0041f90:	2001      	movs	r0, #1
d0041f92:	edd3 0a01 	vldr	s1, [r3, #4]
d0041f96:	ed93 1a02 	vldr	s2, [r3, #8]
d0041f9a:	ed93 0a00 	vldr	s0, [r3]
d0041f9e:	f001 fd71 	bl	d0043a84 <addDirectionalLight>
d0041fa2:	2309      	movs	r3, #9
d0041fa4:	4a5a      	ldr	r2, [pc, #360]	; (d0042110 <main+0x29c>)
d0041fa6:	203b      	movs	r0, #59	; 0x3b
d0041fa8:	f04f 0c2b 	mov.w	ip, #43	; 0x2b
d0041fac:	4639      	mov	r1, r7
d0041fae:	7013      	strb	r3, [r2, #0]
d0041fb0:	2302      	movs	r3, #2
d0041fb2:	4a58      	ldr	r2, [pc, #352]	; (d0042114 <main+0x2a0>)
d0041fb4:	ed9f 0a58 	vldr	s0, [pc, #352]	; d0042118 <main+0x2a4>
d0041fb8:	7010      	strb	r0, [r2, #0]
d0041fba:	4a58      	ldr	r2, [pc, #352]	; (d004211c <main+0x2a8>)
d0041fbc:	4858      	ldr	r0, [pc, #352]	; (d0042120 <main+0x2ac>)
d0041fbe:	f882 c000 	strb.w	ip, [r2]
d0041fc2:	4a58      	ldr	r2, [pc, #352]	; (d0042124 <main+0x2b0>)
d0041fc4:	f8df 817c 	ldr.w	r8, [pc, #380]	; d0042144 <main+0x2d0>
d0041fc8:	7013      	strb	r3, [r2, #0]
d0041fca:	f003 fb8d 	bl	d00456e8 <loadMeshSB3D>
d0041fce:	ed9f 1a64 	vldr	s2, [pc, #400]	; d0042160 <main+0x2ec>
d0041fd2:	eef0 0a41 	vmov.f32	s1, s2
d0041fd6:	eeb0 0a41 	vmov.f32	s0, s2
d0041fda:	f000 fb2d 	bl	d0042638 <vec3>
d0041fde:	4638      	mov	r0, r7
d0041fe0:	edcd 0a0e 	vstr	s1, [sp, #56]	; 0x38
d0041fe4:	ed8d 1a0f 	vstr	s2, [sp, #60]	; 0x3c
d0041fe8:	ed8d 0a0d 	vstr	s0, [sp, #52]	; 0x34
d0041fec:	f001 f9ba 	bl	d0043364 <entityWorldSpawn>
d0041ff0:	4629      	mov	r1, r5
d0041ff2:	ed9f 0a41 	vldr	s0, [pc, #260]	; d00420f8 <main+0x284>
d0041ff6:	484c      	ldr	r0, [pc, #304]	; (d0042128 <main+0x2b4>)
d0041ff8:	f003 fb76 	bl	d00456e8 <loadMeshSB3D>
d0041ffc:	ed9f 1a4b 	vldr	s2, [pc, #300]	; d004212c <main+0x2b8>
d0042000:	eddf 0a57 	vldr	s1, [pc, #348]	; d0042160 <main+0x2ec>
d0042004:	ed9f 0a4a 	vldr	s0, [pc, #296]	; d0042130 <main+0x2bc>
d0042008:	f000 fb16 	bl	d0042638 <vec3>
d004200c:	4628      	mov	r0, r5
d004200e:	ed8d 0a10 	vstr	s0, [sp, #64]	; 0x40
d0042012:	edcd 0a11 	vstr	s1, [sp, #68]	; 0x44
d0042016:	ed8d 1a12 	vstr	s2, [sp, #72]	; 0x48
d004201a:	f001 f9a3 	bl	d0043364 <entityWorldSpawn>
d004201e:	4681      	mov	r9, r0
d0042020:	2000      	movs	r0, #0
d0042022:	f001 fd6d 	bl	d0043b00 <enableFlatMode>
d0042026:	7b23      	ldrb	r3, [r4, #12]
d0042028:	7b62      	ldrb	r2, [r4, #13]
d004202a:	7ba1      	ldrb	r1, [r4, #14]
d004202c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042030:	7be2      	ldrb	r2, [r4, #15]
d0042032:	f8da 0000 	ldr.w	r0, [sl]
d0042036:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004203a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004203e:	681b      	ldr	r3, [r3, #0]
d0042040:	69db      	ldr	r3, [r3, #28]
d0042042:	4798      	blx	r3
d0042044:	7b23      	ldrb	r3, [r4, #12]
d0042046:	7b62      	ldrb	r2, [r4, #13]
d0042048:	7ba1      	ldrb	r1, [r4, #14]
d004204a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004204e:	7be2      	ldrb	r2, [r4, #15]
d0042050:	f8da 0000 	ldr.w	r0, [sl]
d0042054:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042058:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004205c:	681b      	ldr	r3, [r3, #0]
d004205e:	699b      	ldr	r3, [r3, #24]
d0042060:	4798      	blx	r3
d0042062:	7b23      	ldrb	r3, [r4, #12]
d0042064:	7b62      	ldrb	r2, [r4, #13]
d0042066:	2001      	movs	r0, #1
d0042068:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004206c:	7ba2      	ldrb	r2, [r4, #14]
d004206e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0042072:	7be2      	ldrb	r2, [r4, #15]
d0042074:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042078:	685b      	ldr	r3, [r3, #4]
d004207a:	68db      	ldr	r3, [r3, #12]
d004207c:	4798      	blx	r3
d004207e:	7b23      	ldrb	r3, [r4, #12]
d0042080:	7b62      	ldrb	r2, [r4, #13]
d0042082:	211e      	movs	r1, #30
d0042084:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042088:	7ba2      	ldrb	r2, [r4, #14]
d004208a:	4608      	mov	r0, r1
d004208c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0042090:	7be2      	ldrb	r2, [r4, #15]
d0042092:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042096:	685b      	ldr	r3, [r3, #4]
d0042098:	689b      	ldr	r3, [r3, #8]
d004209a:	4798      	blx	r3
d004209c:	7823      	ldrb	r3, [r4, #0]
d004209e:	7862      	ldrb	r2, [r4, #1]
d00420a0:	a904      	add	r1, sp, #16
d00420a2:	a803      	add	r0, sp, #12
d00420a4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00420a8:	78a2      	ldrb	r2, [r4, #2]
d00420aa:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00420ae:	78e2      	ldrb	r2, [r4, #3]
d00420b0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00420b4:	691b      	ldr	r3, [r3, #16]
d00420b6:	4798      	blx	r3
d00420b8:	7823      	ldrb	r3, [r4, #0]
d00420ba:	7862      	ldrb	r2, [r4, #1]
d00420bc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00420c0:	78a2      	ldrb	r2, [r4, #2]
d00420c2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00420c6:	78e2      	ldrb	r2, [r4, #3]
d00420c8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00420cc:	69db      	ldr	r3, [r3, #28]
d00420ce:	4798      	blx	r3
d00420d0:	7823      	ldrb	r3, [r4, #0]
d00420d2:	7862      	ldrb	r2, [r4, #1]
d00420d4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00420d8:	78a2      	ldrb	r2, [r4, #2]
d00420da:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00420de:	78e2      	ldrb	r2, [r4, #3]
d00420e0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00420e4:	689b      	ldr	r3, [r3, #8]
d00420e6:	4798      	blx	r3
d00420e8:	4605      	mov	r5, r0
d00420ea:	e106      	b.n	d00422fa <main+0x486>
d00420ec:	2001f000 	.word	0x2001f000
d00420f0:	459c4000 	.word	0x459c4000
d00420f4:	3c23d70a 	.word	0x3c23d70a
d00420f8:	42480000 	.word	0x42480000
d00420fc:	4c895441 	.word	0x4c895441
d0042100:	42040000 	.word	0x42040000
d0042104:	41233334 	.word	0x41233334
d0042108:	bb9374bc 	.word	0xbb9374bc
d004210c:	3e19999a 	.word	0x3e19999a
d0042110:	d00e1c64 	.word	0xd00e1c64
d0042114:	d00e1c65 	.word	0xd00e1c65
d0042118:	43480000 	.word	0x43480000
d004211c:	d00e1c40 	.word	0xd00e1c40
d0042120:	d0046c10 	.word	0xd0046c10
d0042124:	d00e1c41 	.word	0xd00e1c41
d0042128:	d0046c20 	.word	0xd0046c20
d004212c:	c2c80000 	.word	0xc2c80000
d0042130:	44f3c000 	.word	0x44f3c000
d0042134:	d0046c30 	.word	0xd0046c30
d0042138:	d0047118 	.word	0xd0047118
d004213c:	d00e1c60 	.word	0xd00e1c60
d0042140:	d00e1c80 	.word	0xd00e1c80
d0042144:	d0047588 	.word	0xd0047588
d0042148:	310f2a63 	.word	0x310f2a63
d004214c:	bb449ba6 	.word	0xbb449ba6
d0042150:	40d9999a 	.word	0x40d9999a
d0042154:	435c0000 	.word	0x435c0000
d0042158:	3c088889 	.word	0x3c088889
d004215c:	3ba3d70a 	.word	0x3ba3d70a
d0042160:	00000000 	.word	0x00000000
d0042164:	ed5f 0a08 	vldr	s1, [pc, #-32]	; d0042148 <main+0x2d4>
d0042168:	eef2 ba04 	vmov.f32	s23, #36	; 0x41200000  10.0
d004216c:	ed5f ca09 	vldr	s25, [pc, #-36]	; d004214c <main+0x2d8>
d0042170:	ee28 8a20 	vmul.f32	s16, s16, s1
d0042174:	ed5f 7a0a 	vldr	s15, [pc, #-40]	; d0042150 <main+0x2dc>
d0042178:	ed1f ca0a 	vldr	s24, [pc, #-40]	; d0042154 <main+0x2e0>
d004217c:	ee68 ba2b 	vmul.f32	s23, s16, s23
d0042180:	ee28 ca0c 	vmul.f32	s24, s16, s24
d0042184:	ee6b caac 	vmul.f32	s25, s23, s25
d0042188:	ee6b baa7 	vmul.f32	s23, s23, s15
d004218c:	7820      	ldrb	r0, [r4, #0]
d004218e:	7861      	ldrb	r1, [r4, #1]
d0042190:	78a2      	ldrb	r2, [r4, #2]
d0042192:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0042196:	78e3      	ldrb	r3, [r4, #3]
d0042198:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004219c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00421a0:	6a1b      	ldr	r3, [r3, #32]
d00421a2:	4798      	blx	r3
d00421a4:	f894 c000 	ldrb.w	ip, [r4]
d00421a8:	7863      	ldrb	r3, [r4, #1]
d00421aa:	a906      	add	r1, sp, #24
d00421ac:	78a2      	ldrb	r2, [r4, #2]
d00421ae:	4605      	mov	r5, r0
d00421b0:	ea4c 2c03 	orr.w	ip, ip, r3, lsl #8
d00421b4:	78e3      	ldrb	r3, [r4, #3]
d00421b6:	a805      	add	r0, sp, #20
d00421b8:	ea4c 4202 	orr.w	r2, ip, r2, lsl #16
d00421bc:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00421c0:	699b      	ldr	r3, [r3, #24]
d00421c2:	4798      	blx	r3
d00421c4:	9a05      	ldr	r2, [sp, #20]
d00421c6:	9b06      	ldr	r3, [sp, #24]
d00421c8:	eef0 0a68 	vmov.f32	s1, s17
d00421cc:	4252      	negs	r2, r2
d00421ce:	ed5f 7a1e 	vldr	s15, [pc, #-120]	; d0042158 <main+0x2e4>
d00421d2:	425b      	negs	r3, r3
d00421d4:	ed1f 7a1f 	vldr	s14, [pc, #-124]	; d004215c <main+0x2e8>
d00421d8:	ee06 2a90 	vmov	s13, r2
d00421dc:	2100      	movs	r1, #0
d00421de:	4630      	mov	r0, r6
d00421e0:	eeb8 1ae6 	vcvt.f32.s32	s2, s13
d00421e4:	ee06 3a90 	vmov	s13, r3
d00421e8:	eeb8 0ae6 	vcvt.f32.s32	s0, s13
d00421ec:	ee21 1a07 	vmul.f32	s2, s2, s14
d00421f0:	ee20 0a27 	vmul.f32	s0, s0, s15
d00421f4:	f000 fe34 	bl	d0042e60 <cameraTurn>
d00421f8:	eef0 7a04 	vmov.f32	s15, #4	; 0x40200000  2.5
d00421fc:	edd6 0a07 	vldr	s1, [r6, #28]
d0042200:	ee60 0aa7 	vmul.f32	s1, s1, s15
d0042204:	ee60 0a88 	vmul.f32	s1, s1, s16
d0042208:	eef5 0a40 	vcmp.f32	s1, #0.0
d004220c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042210:	f040 80ba 	bne.w	d0042388 <main+0x514>
d0042214:	eeb0 1a68 	vmov.f32	s2, s17
d0042218:	ed5f 0a2f 	vldr	s1, [pc, #-188]	; d0042160 <main+0x2ec>
d004221c:	eeb0 0a6c 	vmov.f32	s0, s25
d0042220:	4648      	mov	r0, r9
d0042222:	f001 f917 	bl	d0043454 <entityTurnLocal>
d0042226:	eeb0 0a6b 	vmov.f32	s0, s23
d004222a:	4648      	mov	r0, r9
d004222c:	f001 f8e0 	bl	d00433f0 <entityMoveForward>
d0042230:	7820      	ldrb	r0, [r4, #0]
d0042232:	7861      	ldrb	r1, [r4, #1]
d0042234:	78a2      	ldrb	r2, [r4, #2]
d0042236:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004223a:	78e3      	ldrb	r3, [r4, #3]
d004223c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0042240:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0042244:	69db      	ldr	r3, [r3, #28]
d0042246:	4798      	blx	r3
d0042248:	07ea      	lsls	r2, r5, #31
d004224a:	f100 8093 	bmi.w	d0042374 <main+0x500>
d004224e:	07ab      	lsls	r3, r5, #30
d0042250:	f100 8086 	bmi.w	d0042360 <main+0x4ec>
d0042254:	7b20      	ldrb	r0, [r4, #12]
d0042256:	7b61      	ldrb	r1, [r4, #13]
d0042258:	7ba2      	ldrb	r2, [r4, #14]
d004225a:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004225e:	7be3      	ldrb	r3, [r4, #15]
d0042260:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0042264:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0042268:	681b      	ldr	r3, [r3, #0]
d004226a:	68db      	ldr	r3, [r3, #12]
d004226c:	4798      	blx	r3
d004226e:	f898 3000 	ldrb.w	r3, [r8]
d0042272:	f1c3 0301 	rsb	r3, r3, #1
d0042276:	b2db      	uxtb	r3, r3
d0042278:	f888 3000 	strb.w	r3, [r8]
d004227c:	f898 3000 	ldrb.w	r3, [r8]
d0042280:	7b21      	ldrb	r1, [r4, #12]
d0042282:	7b60      	ldrb	r0, [r4, #13]
d0042284:	7ba2      	ldrb	r2, [r4, #14]
d0042286:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004228a:	2b00      	cmp	r3, #0
d004228c:	d056      	beq.n	d004233c <main+0x4c8>
d004228e:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0042292:	7be3      	ldrb	r3, [r4, #15]
d0042294:	f8da 0000 	ldr.w	r0, [sl]
d0042298:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004229c:	f8db 1000 	ldr.w	r1, [fp]
d00422a0:	681b      	ldr	r3, [r3, #0]
d00422a2:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00422a4:	4798      	blx	r3
d00422a6:	f8db 3000 	ldr.w	r3, [fp]
d00422aa:	6818      	ldr	r0, [r3, #0]
d00422ac:	f7fd ff38 	bl	d0040120 <set3DRenderBuffer>
d00422b0:	4b3b      	ldr	r3, [pc, #236]	; (d00423a0 <main+0x52c>)
d00422b2:	eeb0 0a68 	vmov.f32	s0, s17
d00422b6:	4a3b      	ldr	r2, [pc, #236]	; (d00423a4 <main+0x530>)
d00422b8:	4630      	mov	r0, r6
d00422ba:	493b      	ldr	r1, [pc, #236]	; (d00423a8 <main+0x534>)
d00422bc:	463d      	mov	r5, r7
d00422be:	781b      	ldrb	r3, [r3, #0]
d00422c0:	7812      	ldrb	r2, [r2, #0]
d00422c2:	7809      	ldrb	r1, [r1, #0]
d00422c4:	f002 fa86 	bl	d00447d4 <drawFakeHorizon>
d00422c8:	4938      	ldr	r1, [pc, #224]	; (d00423ac <main+0x538>)
d00422ca:	236e      	movs	r3, #110	; 0x6e
d00422cc:	2280      	movs	r2, #128	; 0x80
d00422ce:	7809      	ldrb	r1, [r1, #0]
d00422d0:	eeb0 0a68 	vmov.f32	s0, s17
d00422d4:	4630      	mov	r0, r6
d00422d6:	f002 f96f 	bl	d00445b8 <drawFakeHorizonDots>
d00422da:	4630      	mov	r0, r6
d00422dc:	f003 f914 	bl	d0045508 <Render3D>
d00422e0:	7b20      	ldrb	r0, [r4, #12]
d00422e2:	7b61      	ldrb	r1, [r4, #13]
d00422e4:	7ba2      	ldrb	r2, [r4, #14]
d00422e6:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00422ea:	7be3      	ldrb	r3, [r4, #15]
d00422ec:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00422f0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00422f4:	681b      	ldr	r3, [r3, #0]
d00422f6:	681b      	ldr	r3, [r3, #0]
d00422f8:	4798      	blx	r3
d00422fa:	7820      	ldrb	r0, [r4, #0]
d00422fc:	7861      	ldrb	r1, [r4, #1]
d00422fe:	78a2      	ldrb	r2, [r4, #2]
d0042300:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0042304:	78e3      	ldrb	r3, [r4, #3]
d0042306:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004230a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004230e:	689b      	ldr	r3, [r3, #8]
d0042310:	4798      	blx	r3
d0042312:	1b43      	subs	r3, r0, r5
d0042314:	4607      	mov	r7, r0
d0042316:	ee08 3a10 	vmov	s16, r3
d004231a:	eeb8 8a48 	vcvt.f32.u32	s16, s16
d004231e:	eeb4 8ac9 	vcmpe.f32	s16, s18
d0042322:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042326:	f77f af1d 	ble.w	d0042164 <main+0x2f0>
d004232a:	eeb0 ca4b 	vmov.f32	s24, s22
d004232e:	eef0 ba6a 	vmov.f32	s23, s21
d0042332:	eef0 ca4a 	vmov.f32	s25, s20
d0042336:	eeb0 8a69 	vmov.f32	s16, s19
d004233a:	e727      	b.n	d004218c <main+0x318>
d004233c:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0042340:	7be3      	ldrb	r3, [r4, #15]
d0042342:	f8db 0000 	ldr.w	r0, [fp]
d0042346:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004234a:	f8da 1000 	ldr.w	r1, [sl]
d004234e:	681b      	ldr	r3, [r3, #0]
d0042350:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0042352:	4798      	blx	r3
d0042354:	f8da 3000 	ldr.w	r3, [sl]
d0042358:	6818      	ldr	r0, [r3, #0]
d004235a:	f7fd fee1 	bl	d0040120 <set3DRenderBuffer>
d004235e:	e7a7      	b.n	d00422b0 <main+0x43c>
d0042360:	eeb1 1a4c 	vneg.f32	s2, s24
d0042364:	ed9f 0a12 	vldr	s0, [pc, #72]	; d00423b0 <main+0x53c>
d0042368:	eef0 0a68 	vmov.f32	s1, s17
d004236c:	4630      	mov	r0, r6
d004236e:	f000 ff45 	bl	d00431fc <cameraMove>
d0042372:	e76f      	b.n	d0042254 <main+0x3e0>
d0042374:	eeb0 1a4c 	vmov.f32	s2, s24
d0042378:	ed9f 0a0d 	vldr	s0, [pc, #52]	; d00423b0 <main+0x53c>
d004237c:	eef0 0a68 	vmov.f32	s1, s17
d0042380:	4630      	mov	r0, r6
d0042382:	f000 ff3b 	bl	d00431fc <cameraMove>
d0042386:	e762      	b.n	d004224e <main+0x3da>
d0042388:	eef1 0a60 	vneg.f32	s1, s1
d004238c:	2101      	movs	r1, #1
d004238e:	eeb0 1a68 	vmov.f32	s2, s17
d0042392:	ed9f 0a07 	vldr	s0, [pc, #28]	; d00423b0 <main+0x53c>
d0042396:	4630      	mov	r0, r6
d0042398:	f000 fd62 	bl	d0042e60 <cameraTurn>
d004239c:	e73a      	b.n	d0042214 <main+0x3a0>
d004239e:	bf00      	nop
d00423a0:	d00e1c40 	.word	0xd00e1c40
d00423a4:	d00e1c65 	.word	0xd00e1c65
d00423a8:	d00e1c64 	.word	0xd00e1c64
d00423ac:	d00e1c41 	.word	0xd00e1c41
d00423b0:	00000000 	.word	0x00000000

d00423b4 <meshSetDefaultMaterial>:
d00423b4:	b148      	cbz	r0, d00423ca <meshSetDefaultMaterial+0x16>
d00423b6:	2300      	movs	r3, #0
d00423b8:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d00423bc:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
d00423c0:	6203      	str	r3, [r0, #32]
d00423c2:	6241      	str	r1, [r0, #36]	; 0x24
d00423c4:	62c2      	str	r2, [r0, #44]	; 0x2c
d00423c6:	6303      	str	r3, [r0, #48]	; 0x30
d00423c8:	6283      	str	r3, [r0, #40]	; 0x28
d00423ca:	4770      	bx	lr

d00423cc <vec3Add>:
d00423cc:	ee30 0a21 	vadd.f32	s0, s0, s3
d00423d0:	b08e      	sub	sp, #56	; 0x38
d00423d2:	ee70 0a82 	vadd.f32	s1, s1, s4
d00423d6:	ee31 1a22 	vadd.f32	s2, s2, s5
d00423da:	b00e      	add	sp, #56	; 0x38
d00423dc:	4770      	bx	lr
d00423de:	bf00      	nop

d00423e0 <vec3Scale>:
d00423e0:	ee20 0a21 	vmul.f32	s0, s0, s3
d00423e4:	b08c      	sub	sp, #48	; 0x30
d00423e6:	ee61 0aa0 	vmul.f32	s1, s3, s1
d00423ea:	ee21 1a81 	vmul.f32	s2, s3, s2
d00423ee:	b00c      	add	sp, #48	; 0x30
d00423f0:	4770      	bx	lr
d00423f2:	bf00      	nop

d00423f4 <vec3Dot>:
d00423f4:	ee20 2a82 	vmul.f32	s4, s1, s4
d00423f8:	b086      	sub	sp, #24
d00423fa:	eea0 2a21 	vfma.f32	s4, s0, s3
d00423fe:	eea1 2a22 	vfma.f32	s4, s2, s5
d0042402:	eeb0 0a42 	vmov.f32	s0, s4
d0042406:	b006      	add	sp, #24
d0042408:	4770      	bx	lr
d004240a:	bf00      	nop

d004240c <vec3Cross>:
d004240c:	eeb0 7a60 	vmov.f32	s14, s1
d0042410:	b08e      	sub	sp, #56	; 0x38
d0042412:	eef0 7a40 	vmov.f32	s15, s0
d0042416:	ee62 0ac0 	vnmul.f32	s1, s5, s0
d004241a:	ee61 6ac7 	vnmul.f32	s13, s3, s14
d004241e:	ee22 0a41 	vnmul.f32	s0, s4, s2
d0042422:	eee1 0a21 	vfma.f32	s1, s2, s3
d0042426:	eee7 6a82 	vfma.f32	s13, s15, s4
d004242a:	eea7 0a22 	vfma.f32	s0, s14, s5
d004242e:	eeb0 1a66 	vmov.f32	s2, s13
d0042432:	b00e      	add	sp, #56	; 0x38
d0042434:	4770      	bx	lr
d0042436:	bf00      	nop

d0042438 <vec3Normalize>:
d0042438:	ee60 7aa0 	vmul.f32	s15, s1, s1
d004243c:	ed9f 7a22 	vldr	s14, [pc, #136]	; d00424c8 <vec3Normalize+0x90>
d0042440:	b08c      	sub	sp, #48	; 0x30
d0042442:	eee0 7a00 	vfma.f32	s15, s0, s0
d0042446:	eee1 7a01 	vfma.f32	s15, s2, s2
d004244a:	eef4 7ac7 	vcmpe.f32	s15, s14
d004244e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042452:	d934      	bls.n	d00424be <vec3Normalize+0x86>
d0042454:	ed9f 7a1d 	vldr	s14, [pc, #116]	; d00424cc <vec3Normalize+0x94>
d0042458:	eef4 7a47 	vcmp.f32	s15, s14
d004245c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042460:	dd06      	ble.n	d0042470 <vec3Normalize+0x38>
d0042462:	ed9f 7a1b 	vldr	s14, [pc, #108]	; d00424d0 <vec3Normalize+0x98>
d0042466:	eef4 7a47 	vcmp.f32	s15, s14
d004246a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004246e:	d418      	bmi.n	d00424a2 <vec3Normalize+0x6a>
d0042470:	ee17 2a90 	vmov	r2, s15
d0042474:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d0042478:	4b16      	ldr	r3, [pc, #88]	; (d00424d4 <vec3Normalize+0x9c>)
d004247a:	eeb7 7a08 	vmov.f32	s14, #120	; 0x3fc00000  1.5
d004247e:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d0042482:	ee67 7a86 	vmul.f32	s15, s15, s12
d0042486:	ee06 3a90 	vmov	s13, r3
d004248a:	ee67 7aa6 	vmul.f32	s15, s15, s13
d004248e:	eea6 7ae7 	vfms.f32	s14, s13, s15
d0042492:	ee67 7a26 	vmul.f32	s15, s14, s13
d0042496:	ee27 0a80 	vmul.f32	s0, s15, s0
d004249a:	ee67 0aa0 	vmul.f32	s1, s15, s1
d004249e:	ee27 1a81 	vmul.f32	s2, s15, s2
d00424a2:	ed8d 0a09 	vstr	s0, [sp, #36]	; 0x24
d00424a6:	edcd 0a0a 	vstr	s1, [sp, #40]	; 0x28
d00424aa:	ed8d 1a0b 	vstr	s2, [sp, #44]	; 0x2c
d00424ae:	ed9d 0a09 	vldr	s0, [sp, #36]	; 0x24
d00424b2:	eddd 0a0a 	vldr	s1, [sp, #40]	; 0x28
d00424b6:	ed9d 1a0b 	vldr	s2, [sp, #44]	; 0x2c
d00424ba:	b00c      	add	sp, #48	; 0x30
d00424bc:	4770      	bx	lr
d00424be:	2300      	movs	r3, #0
d00424c0:	9309      	str	r3, [sp, #36]	; 0x24
d00424c2:	930a      	str	r3, [sp, #40]	; 0x28
d00424c4:	930b      	str	r3, [sp, #44]	; 0x2c
d00424c6:	e7f2      	b.n	d00424ae <vec3Normalize+0x76>
d00424c8:	358637bd 	.word	0x358637bd
d00424cc:	3f7fbe77 	.word	0x3f7fbe77
d00424d0:	3f8020c5 	.word	0x3f8020c5
d00424d4:	5f3759df 	.word	0x5f3759df

d00424d8 <rotateAroundAxis>:
d00424d8:	ee62 7a02 	vmul.f32	s15, s4, s4
d00424dc:	ed9f 7a51 	vldr	s14, [pc, #324]	; d0042624 <rotateAroundAxis+0x14c>
d00424e0:	b500      	push	{lr}
d00424e2:	eee1 7aa1 	vfma.f32	s15, s3, s3
d00424e6:	ed2d 8b0c 	vpush	{d8-d13}
d00424ea:	eef0 ca40 	vmov.f32	s25, s0
d00424ee:	b08f      	sub	sp, #60	; 0x3c
d00424f0:	eeb0 ca60 	vmov.f32	s24, s1
d00424f4:	eef0 ba41 	vmov.f32	s23, s2
d00424f8:	eee2 7aa2 	vfma.f32	s15, s5, s5
d00424fc:	eeb0 da43 	vmov.f32	s26, s6
d0042500:	eef4 7ac7 	vcmpe.f32	s15, s14
d0042504:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042508:	d97c      	bls.n	d0042604 <rotateAroundAxis+0x12c>
d004250a:	ed9f 7a47 	vldr	s14, [pc, #284]	; d0042628 <rotateAroundAxis+0x150>
d004250e:	eef4 7a47 	vcmp.f32	s15, s14
d0042512:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042516:	dd55      	ble.n	d00425c4 <rotateAroundAxis+0xec>
d0042518:	ed9f 7a44 	vldr	s14, [pc, #272]	; d004262c <rotateAroundAxis+0x154>
d004251c:	eef4 7a47 	vcmp.f32	s15, s14
d0042520:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042524:	d54e      	bpl.n	d00425c4 <rotateAroundAxis+0xec>
d0042526:	eef0 da42 	vmov.f32	s27, s4
d004252a:	eeb0 9a61 	vmov.f32	s18, s3
d004252e:	eeb0 8a62 	vmov.f32	s16, s5
d0042532:	ee60 8a82 	vmul.f32	s17, s1, s4
d0042536:	ee62 5ae0 	vnmul.f32	s11, s5, s1
d004253a:	ee21 6ac1 	vnmul.f32	s12, s3, s2
d004253e:	eeec 8a89 	vfma.f32	s17, s25, s18
d0042542:	ee6d 7aec 	vnmul.f32	s15, s27, s25
d0042546:	eeeb 5aad 	vfma.f32	s11, s23, s27
d004254a:	eeac 6a88 	vfma.f32	s12, s25, s16
d004254e:	eeec 7a09 	vfma.f32	s15, s24, s18
d0042552:	eeeb 8a88 	vfma.f32	s17, s23, s16
d0042556:	eeb0 ba65 	vmov.f32	s22, s11
d004255a:	eeb0 aa46 	vmov.f32	s20, s12
d004255e:	eef0 aa67 	vmov.f32	s21, s15
d0042562:	eeb0 0a4d 	vmov.f32	s0, s26
d0042566:	f003 ff0b 	bl	d0046380 <cosf>
d004256a:	eef0 9a40 	vmov.f32	s19, s0
d004256e:	eeb0 0a4d 	vmov.f32	s0, s26
d0042572:	f004 f8e9 	bl	d0046748 <sinf>
d0042576:	ee60 5a0b 	vmul.f32	s11, s0, s22
d004257a:	ee20 6a0a 	vmul.f32	s12, s0, s20
d004257e:	ee60 7a2a 	vmul.f32	s15, s0, s21
d0042582:	eee9 5aac 	vfma.f32	s11, s19, s25
d0042586:	eea9 6a8c 	vfma.f32	s12, s19, s24
d004258a:	eee9 7aab 	vfma.f32	s15, s19, s23
d004258e:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0042592:	ee29 9a28 	vmul.f32	s18, s18, s17
d0042596:	ee2d 7aa8 	vmul.f32	s14, s27, s17
d004259a:	ee76 9ae9 	vsub.f32	s19, s13, s19
d004259e:	ee28 8a28 	vmul.f32	s16, s16, s17
d00425a2:	eeb0 0a65 	vmov.f32	s0, s11
d00425a6:	eef0 0a46 	vmov.f32	s1, s12
d00425aa:	eeb0 1a67 	vmov.f32	s2, s15
d00425ae:	eea9 0a89 	vfma.f32	s0, s19, s18
d00425b2:	eee9 0a87 	vfma.f32	s1, s19, s14
d00425b6:	eea9 1a88 	vfma.f32	s2, s19, s16
d00425ba:	b00f      	add	sp, #60	; 0x3c
d00425bc:	ecbd 8b0c 	vpop	{d8-d13}
d00425c0:	f85d fb04 	ldr.w	pc, [sp], #4
d00425c4:	ee17 2a90 	vmov	r2, s15
d00425c8:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d00425cc:	4b18      	ldr	r3, [pc, #96]	; (d0042630 <rotateAroundAxis+0x158>)
d00425ce:	eeb7 8a08 	vmov.f32	s16, #120	; 0x3fc00000  1.5
d00425d2:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d00425d6:	ee67 7aa6 	vmul.f32	s15, s15, s13
d00425da:	ee07 3a10 	vmov	s14, r3
d00425de:	ee67 7a87 	vmul.f32	s15, s15, s14
d00425e2:	eea7 8a67 	vfms.f32	s16, s14, s15
d00425e6:	ee27 8a08 	vmul.f32	s16, s14, s16
d00425ea:	ee62 da08 	vmul.f32	s27, s4, s16
d00425ee:	ee21 9a88 	vmul.f32	s18, s3, s16
d00425f2:	ee22 8a88 	vmul.f32	s16, s5, s16
d00425f6:	ee6c 8a2d 	vmul.f32	s17, s24, s27
d00425fa:	ee29 6a6b 	vnmul.f32	s12, s18, s23
d00425fe:	ee68 5a4c 	vnmul.f32	s11, s16, s24
d0042602:	e79c      	b.n	d004253e <rotateAroundAxis+0x66>
d0042604:	eddf 8a0b 	vldr	s17, [pc, #44]	; d0042634 <rotateAroundAxis+0x15c>
d0042608:	eef0 aa68 	vmov.f32	s21, s17
d004260c:	eeb0 aa68 	vmov.f32	s20, s17
d0042610:	eeb0 ba68 	vmov.f32	s22, s17
d0042614:	eeb0 8a68 	vmov.f32	s16, s17
d0042618:	eef0 da68 	vmov.f32	s27, s17
d004261c:	eeb0 9a68 	vmov.f32	s18, s17
d0042620:	e79f      	b.n	d0042562 <rotateAroundAxis+0x8a>
d0042622:	bf00      	nop
d0042624:	358637bd 	.word	0x358637bd
d0042628:	3f7fbe77 	.word	0x3f7fbe77
d004262c:	3f8020c5 	.word	0x3f8020c5
d0042630:	5f3759df 	.word	0x5f3759df
d0042634:	00000000 	.word	0x00000000

d0042638 <vec3>:
d0042638:	b088      	sub	sp, #32
d004263a:	b008      	add	sp, #32
d004263c:	4770      	bx	lr
d004263e:	bf00      	nop

d0042640 <powf>:
d0042640:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0042644:	eeb4 0a47 	vcmp.f32	s0, s14
d0042648:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004264c:	d04e      	beq.n	d00426ec <powf+0xac>
d004264e:	eef5 0a40 	vcmp.f32	s1, #0.0
d0042652:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042656:	d049      	beq.n	d00426ec <powf+0xac>
d0042658:	eef4 0a47 	vcmp.f32	s1, s14
d004265c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042660:	d054      	beq.n	d004270c <powf+0xcc>
d0042662:	eeb5 0a40 	vcmp.f32	s0, #0.0
d0042666:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004266a:	d044      	beq.n	d00426f6 <powf+0xb6>
d004266c:	eefd 7ae0 	vcvt.s32.f32	s15, s1
d0042670:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d0042674:	eef4 6a60 	vcmp.f32	s13, s1
d0042678:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004267c:	d04e      	beq.n	d004271c <powf+0xdc>
d004267e:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0042682:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042686:	d459      	bmi.n	d004273c <powf+0xfc>
d0042688:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004268c:	eef4 0a67 	vcmp.f32	s1, s15
d0042690:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042694:	d03f      	beq.n	d0042716 <powf+0xd6>
d0042696:	eefe 7a00 	vmov.f32	s15, #224	; 0xbf000000 -0.5
d004269a:	eef4 0a67 	vcmp.f32	s1, s15
d004269e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00426a2:	d052      	beq.n	d004274a <powf+0x10a>
d00426a4:	eef0 7a00 	vmov.f32	s15, #0	; 0x40000000  2.0
d00426a8:	eef4 0a67 	vcmp.f32	s1, s15
d00426ac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00426b0:	d052      	beq.n	d0042758 <powf+0x118>
d00426b2:	eef0 7a08 	vmov.f32	s15, #8	; 0x40400000  3.0
d00426b6:	eef4 0a67 	vcmp.f32	s1, s15
d00426ba:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00426be:	d04e      	beq.n	d004275e <powf+0x11e>
d00426c0:	eef1 7a00 	vmov.f32	s15, #16	; 0x40800000  4.0
d00426c4:	eef4 0a67 	vcmp.f32	s1, s15
d00426c8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00426cc:	d042      	beq.n	d0042754 <powf+0x114>
d00426ce:	b500      	push	{lr}
d00426d0:	b083      	sub	sp, #12
d00426d2:	edcd 0a01 	vstr	s1, [sp, #4]
d00426d6:	f003 ffa5 	bl	d0046624 <logf>
d00426da:	eddd 0a01 	vldr	s1, [sp, #4]
d00426de:	ee20 0a20 	vmul.f32	s0, s0, s1
d00426e2:	b003      	add	sp, #12
d00426e4:	f85d eb04 	ldr.w	lr, [sp], #4
d00426e8:	f003 bf26 	b.w	d0046538 <expf>
d00426ec:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00426f0:	eeb0 0a67 	vmov.f32	s0, s15
d00426f4:	4770      	bx	lr
d00426f6:	eef5 0ac0 	vcmpe.f32	s1, #0.0
d00426fa:	eddf 7a1d 	vldr	s15, [pc, #116]	; d0042770 <powf+0x130>
d00426fe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042702:	fe70 7a27 	vselgt.f32	s15, s0, s15
d0042706:	eeb0 0a67 	vmov.f32	s0, s15
d004270a:	4770      	bx	lr
d004270c:	eef0 7a40 	vmov.f32	s15, s0
d0042710:	eeb0 0a67 	vmov.f32	s0, s15
d0042714:	4770      	bx	lr
d0042716:	eef1 7ac0 	vsqrt.f32	s15, s0
d004271a:	e7e9      	b.n	d00426f0 <powf+0xb0>
d004271c:	ee17 3a90 	vmov	r3, s15
d0042720:	2b00      	cmp	r3, #0
d0042722:	db0e      	blt.n	d0042742 <powf+0x102>
d0042724:	d020      	beq.n	d0042768 <powf+0x128>
d0042726:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d004272a:	07da      	lsls	r2, r3, #31
d004272c:	bf48      	it	mi
d004272e:	ee67 7a80 	vmulmi.f32	s15, s15, s0
d0042732:	085b      	lsrs	r3, r3, #1
d0042734:	ee20 0a00 	vmul.f32	s0, s0, s0
d0042738:	d1f7      	bne.n	d004272a <powf+0xea>
d004273a:	e7d9      	b.n	d00426f0 <powf+0xb0>
d004273c:	eddf 7a0d 	vldr	s15, [pc, #52]	; d0042774 <powf+0x134>
d0042740:	e7d6      	b.n	d00426f0 <powf+0xb0>
d0042742:	ee87 0a00 	vdiv.f32	s0, s14, s0
d0042746:	425b      	negs	r3, r3
d0042748:	e7ed      	b.n	d0042726 <powf+0xe6>
d004274a:	eef1 6ac0 	vsqrt.f32	s13, s0
d004274e:	eec7 7a26 	vdiv.f32	s15, s14, s13
d0042752:	e7cd      	b.n	d00426f0 <powf+0xb0>
d0042754:	ee20 0a00 	vmul.f32	s0, s0, s0
d0042758:	ee60 7a00 	vmul.f32	s15, s0, s0
d004275c:	e7c8      	b.n	d00426f0 <powf+0xb0>
d004275e:	ee60 7a00 	vmul.f32	s15, s0, s0
d0042762:	ee67 7a80 	vmul.f32	s15, s15, s0
d0042766:	e7c3      	b.n	d00426f0 <powf+0xb0>
d0042768:	eef0 7a47 	vmov.f32	s15, s14
d004276c:	e7c0      	b.n	d00426f0 <powf+0xb0>
d004276e:	bf00      	nop
d0042770:	7f800000 	.word	0x7f800000
d0042774:	7fc00000 	.word	0x7fc00000

d0042778 <sb3dParticlesClear>:
d0042778:	4b0f      	ldr	r3, [pc, #60]	; (d00427b8 <sb3dParticlesClear+0x40>)
d004277a:	f04f 507e 	mov.w	r0, #1065353216	; 0x3f800000
d004277e:	2100      	movs	r1, #0
d0042780:	2200      	movs	r2, #0
d0042782:	b430      	push	{r4, r5}
d0042784:	f503 5500 	add.w	r5, r3, #8192	; 0x2000
d0042788:	2421      	movs	r4, #33	; 0x21
d004278a:	7699      	strb	r1, [r3, #26]
d004278c:	3320      	adds	r3, #32
d004278e:	f843 2c20 	str.w	r2, [r3, #-32]
d0042792:	f843 2c1c 	str.w	r2, [r3, #-28]
d0042796:	f843 2c18 	str.w	r2, [r3, #-24]
d004279a:	f843 0c14 	str.w	r0, [r3, #-20]
d004279e:	f843 2c10 	str.w	r2, [r3, #-16]
d00427a2:	f843 0c0c 	str.w	r0, [r3, #-12]
d00427a6:	f803 4c08 	strb.w	r4, [r3, #-8]
d00427aa:	f803 1c07 	strb.w	r1, [r3, #-7]
d00427ae:	42ab      	cmp	r3, r5
d00427b0:	d1eb      	bne.n	d004278a <sb3dParticlesClear+0x12>
d00427b2:	bc30      	pop	{r4, r5}
d00427b4:	4770      	bx	lr
d00427b6:	bf00      	nop
d00427b8:	d00475a0 	.word	0xd00475a0

d00427bc <sb3dParticlesRender>:
d00427bc:	2800      	cmp	r0, #0
d00427be:	f000 82d6 	beq.w	d0042d6e <sb3dParticlesRender+0x5b2>
d00427c2:	edd0 7a02 	vldr	s15, [r0, #8]
d00427c6:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00427ca:	ed2d 8b10 	vpush	{d8-d15}
d00427ce:	b0c7      	sub	sp, #284	; 0x11c
d00427d0:	4605      	mov	r5, r0
d00427d2:	ed90 ea00 	vldr	s28, [r0]
d00427d6:	edcd 7a15 	vstr	s15, [sp, #84]	; 0x54
d00427da:	edd0 da01 	vldr	s27, [r0, #4]
d00427de:	edd0 ca06 	vldr	s25, [r0, #24]
d00427e2:	ed90 ca07 	vldr	s24, [r0, #28]
d00427e6:	edd0 ba08 	vldr	s23, [r0, #32]
d00427ea:	ed90 9a09 	vldr	s18, [r0, #36]	; 0x24
d00427ee:	edd0 8a0a 	vldr	s17, [r0, #40]	; 0x28
d00427f2:	ed90 8a0b 	vldr	s16, [r0, #44]	; 0x2c
d00427f6:	edd0 aa0c 	vldr	s21, [r0, #48]	; 0x30
d00427fa:	ed90 aa0d 	vldr	s20, [r0, #52]	; 0x34
d00427fe:	edd0 9a0e 	vldr	s19, [r0, #56]	; 0x38
d0042802:	ed90 ba10 	vldr	s22, [r0, #64]	; 0x40
d0042806:	f001 f92d 	bl	d0043a64 <lightsGet>
d004280a:	4cae      	ldr	r4, [pc, #696]	; (d0042ac4 <sb3dParticlesRender+0x308>)
d004280c:	4681      	mov	r9, r0
d004280e:	f001 f92d 	bl	d0043a6c <lightsGetCount>
d0042812:	4680      	mov	r8, r0
d0042814:	f504 5600 	add.w	r6, r4, #8192	; 0x2000
d0042818:	eb09 1780 	add.w	r7, r9, r0, lsl #6
d004281c:	e115      	b.n	d0042a4a <sb3dParticlesRender+0x28e>
d004281e:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d0042822:	edd4 ea04 	vldr	s29, [r4, #16]
d0042826:	ed9f 5aac 	vldr	s10, [pc, #688]	; d0042ad8 <sb3dParticlesRender+0x31c>
d004282a:	fece ea85 	vmaxnm.f32	s29, s29, s10
d004282e:	fece eac7 	vminnm.f32	s29, s29, s14
d0042832:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d0042836:	f105 0a10 	add.w	sl, r5, #16
d004283a:	eeb0 4a46 	vmov.f32	s8, s12
d004283e:	2250      	movs	r2, #80	; 0x50
d0042840:	eef0 4a66 	vmov.f32	s9, s13
d0042844:	4651      	mov	r1, sl
d0042846:	ee67 7a87 	vmul.f32	s15, s15, s14
d004284a:	4668      	mov	r0, sp
d004284c:	eeb0 5a65 	vmov.f32	s10, s11
d0042850:	eeb0 7a65 	vmov.f32	s14, s11
d0042854:	eeac 6aa7 	vfma.f32	s12, s25, s15
d0042858:	eeac 4ae7 	vfms.f32	s8, s25, s15
d004285c:	eeec 4a67 	vfms.f32	s9, s24, s15
d0042860:	eeec 6a27 	vfma.f32	s13, s24, s15
d0042864:	eeab 5ae7 	vfms.f32	s10, s23, s15
d0042868:	eeab 7aa7 	vfma.f32	s14, s23, s15
d004286c:	eef0 3a46 	vmov.f32	s7, s12
d0042870:	eea9 6a67 	vfms.f32	s12, s18, s15
d0042874:	eeb0 da44 	vmov.f32	s26, s8
d0042878:	eef0 fa64 	vmov.f32	s31, s9
d004287c:	eef0 5a66 	vmov.f32	s11, s13
d0042880:	eeb0 fa45 	vmov.f32	s30, s10
d0042884:	eea9 da27 	vfma.f32	s26, s18, s15
d0042888:	ed8d 6a1c 	vstr	s12, [sp, #112]	; 0x70
d004288c:	eeb0 6a47 	vmov.f32	s12, s14
d0042890:	eee8 faa7 	vfma.f32	s31, s17, s15
d0042894:	eea8 fa27 	vfma.f32	s30, s16, s15
d0042898:	eea9 4a67 	vfms.f32	s8, s18, s15
d004289c:	eee9 3a27 	vfma.f32	s7, s18, s15
d00428a0:	eee8 4ae7 	vfms.f32	s9, s17, s15
d00428a4:	ed8d da16 	vstr	s26, [sp, #88]	; 0x58
d00428a8:	eee8 5aa7 	vfma.f32	s11, s17, s15
d00428ac:	eee8 6ae7 	vfms.f32	s13, s17, s15
d00428b0:	edcd fa17 	vstr	s31, [sp, #92]	; 0x5c
d00428b4:	eea8 5a67 	vfms.f32	s10, s16, s15
d00428b8:	ed8d fa18 	vstr	s30, [sp, #96]	; 0x60
d00428bc:	eea8 6a27 	vfma.f32	s12, s16, s15
d00428c0:	ed8d 4a1f 	vstr	s8, [sp, #124]	; 0x7c
d00428c4:	eea8 7a67 	vfms.f32	s14, s16, s15
d00428c8:	edcd 3a19 	vstr	s7, [sp, #100]	; 0x64
d00428cc:	edcd 4a20 	vstr	s9, [sp, #128]	; 0x80
d00428d0:	edcd 5a1a 	vstr	s11, [sp, #104]	; 0x68
d00428d4:	edcd 6a1d 	vstr	s13, [sp, #116]	; 0x74
d00428d8:	ed8d 5a21 	vstr	s10, [sp, #132]	; 0x84
d00428dc:	ed8d 6a1b 	vstr	s12, [sp, #108]	; 0x6c
d00428e0:	ed8d 7a1e 	vstr	s14, [sp, #120]	; 0x78
d00428e4:	f003 fafe 	bl	d0045ee4 <memcpy>
d00428e8:	eeb0 0a4d 	vmov.f32	s0, s26
d00428ec:	eef0 0a6f 	vmov.f32	s1, s31
d00428f0:	eeb0 1a4f 	vmov.f32	s2, s30
d00428f4:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d00428f8:	f000 fbfc 	bl	d00430f4 <worldToCamera>
d00428fc:	ed9d da19 	vldr	s26, [sp, #100]	; 0x64
d0042900:	eddd fa1a 	vldr	s31, [sp, #104]	; 0x68
d0042904:	4651      	mov	r1, sl
d0042906:	ed9d fa1b 	vldr	s30, [sp, #108]	; 0x6c
d004290a:	2250      	movs	r2, #80	; 0x50
d004290c:	4668      	mov	r0, sp
d004290e:	ed8d 0a22 	vstr	s0, [sp, #136]	; 0x88
d0042912:	edcd 0a23 	vstr	s1, [sp, #140]	; 0x8c
d0042916:	ed8d 1a24 	vstr	s2, [sp, #144]	; 0x90
d004291a:	f003 fae3 	bl	d0045ee4 <memcpy>
d004291e:	eeb0 0a4d 	vmov.f32	s0, s26
d0042922:	eef0 0a6f 	vmov.f32	s1, s31
d0042926:	eeb0 1a4f 	vmov.f32	s2, s30
d004292a:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d004292e:	f000 fbe1 	bl	d00430f4 <worldToCamera>
d0042932:	ed9d da1c 	vldr	s26, [sp, #112]	; 0x70
d0042936:	eddd fa1d 	vldr	s31, [sp, #116]	; 0x74
d004293a:	4651      	mov	r1, sl
d004293c:	ed9d fa1e 	vldr	s30, [sp, #120]	; 0x78
d0042940:	2250      	movs	r2, #80	; 0x50
d0042942:	4668      	mov	r0, sp
d0042944:	ed8d 0a25 	vstr	s0, [sp, #148]	; 0x94
d0042948:	edcd 0a26 	vstr	s1, [sp, #152]	; 0x98
d004294c:	ed8d 1a27 	vstr	s2, [sp, #156]	; 0x9c
d0042950:	f003 fac8 	bl	d0045ee4 <memcpy>
d0042954:	eeb0 0a4d 	vmov.f32	s0, s26
d0042958:	eef0 0a6f 	vmov.f32	s1, s31
d004295c:	eeb0 1a4f 	vmov.f32	s2, s30
d0042960:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0042964:	f000 fbc6 	bl	d00430f4 <worldToCamera>
d0042968:	ed9d da1f 	vldr	s26, [sp, #124]	; 0x7c
d004296c:	eddd fa20 	vldr	s31, [sp, #128]	; 0x80
d0042970:	4651      	mov	r1, sl
d0042972:	ed9d fa21 	vldr	s30, [sp, #132]	; 0x84
d0042976:	2250      	movs	r2, #80	; 0x50
d0042978:	4668      	mov	r0, sp
d004297a:	ed8d 0a28 	vstr	s0, [sp, #160]	; 0xa0
d004297e:	edcd 0a29 	vstr	s1, [sp, #164]	; 0xa4
d0042982:	ed8d 1a2a 	vstr	s2, [sp, #168]	; 0xa8
d0042986:	f003 faad 	bl	d0045ee4 <memcpy>
d004298a:	eeb0 0a4d 	vmov.f32	s0, s26
d004298e:	eef0 0a6f 	vmov.f32	s1, s31
d0042992:	eeb0 1a4f 	vmov.f32	s2, s30
d0042996:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d004299a:	f000 fbab 	bl	d00430f4 <worldToCamera>
d004299e:	eddd 7a24 	vldr	s15, [sp, #144]	; 0x90
d00429a2:	ed8d 0a2b 	vstr	s0, [sp, #172]	; 0xac
d00429a6:	eef4 7acb 	vcmpe.f32	s15, s22
d00429aa:	edcd 0a2c 	vstr	s1, [sp, #176]	; 0xb0
d00429ae:	ed8d 1a2d 	vstr	s2, [sp, #180]	; 0xb4
d00429b2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00429b6:	d812      	bhi.n	d00429de <sb3dParticlesRender+0x222>
d00429b8:	eddd 7a27 	vldr	s15, [sp, #156]	; 0x9c
d00429bc:	eef4 7acb 	vcmpe.f32	s15, s22
d00429c0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00429c4:	d80b      	bhi.n	d00429de <sb3dParticlesRender+0x222>
d00429c6:	eddd 7a2a 	vldr	s15, [sp, #168]	; 0xa8
d00429ca:	eef4 7acb 	vcmpe.f32	s15, s22
d00429ce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00429d2:	d804      	bhi.n	d00429de <sb3dParticlesRender+0x222>
d00429d4:	eeb4 1acb 	vcmpe.f32	s2, s22
d00429d8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00429dc:	d931      	bls.n	d0042a42 <sb3dParticlesRender+0x286>
d00429de:	4629      	mov	r1, r5
d00429e0:	ed9d 3a28 	vldr	s6, [sp, #160]	; 0xa0
d00429e4:	eddd 3a29 	vldr	s7, [sp, #164]	; 0xa4
d00429e8:	a82e      	add	r0, sp, #184	; 0xb8
d00429ea:	ed9d 4a2a 	vldr	s8, [sp, #168]	; 0xa8
d00429ee:	eddd 1a25 	vldr	s3, [sp, #148]	; 0x94
d00429f2:	ed9d 2a26 	vldr	s4, [sp, #152]	; 0x98
d00429f6:	eddd 2a27 	vldr	s5, [sp, #156]	; 0x9c
d00429fa:	ed9d 0a22 	vldr	s0, [sp, #136]	; 0x88
d00429fe:	eddd 0a23 	vldr	s1, [sp, #140]	; 0x8c
d0042a02:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d0042a06:	f001 f881 	bl	d0043b0c <clipTriangleToFrustum>
d0042a0a:	2802      	cmp	r0, #2
d0042a0c:	f300 8156 	bgt.w	d0042cbc <sb3dParticlesRender+0x500>
d0042a10:	a82e      	add	r0, sp, #184	; 0xb8
d0042a12:	4629      	mov	r1, r5
d0042a14:	ed9d 3a2b 	vldr	s6, [sp, #172]	; 0xac
d0042a18:	eddd 3a2c 	vldr	s7, [sp, #176]	; 0xb0
d0042a1c:	ed9d 4a2d 	vldr	s8, [sp, #180]	; 0xb4
d0042a20:	eddd 1a28 	vldr	s3, [sp, #160]	; 0xa0
d0042a24:	ed9d 2a29 	vldr	s4, [sp, #164]	; 0xa4
d0042a28:	eddd 2a2a 	vldr	s5, [sp, #168]	; 0xa8
d0042a2c:	ed9d 0a22 	vldr	s0, [sp, #136]	; 0x88
d0042a30:	eddd 0a23 	vldr	s1, [sp, #140]	; 0x8c
d0042a34:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d0042a38:	f001 f868 	bl	d0043b0c <clipTriangleToFrustum>
d0042a3c:	2802      	cmp	r0, #2
d0042a3e:	f300 8105 	bgt.w	d0042c4c <sb3dParticlesRender+0x490>
d0042a42:	3420      	adds	r4, #32
d0042a44:	42a6      	cmp	r6, r4
d0042a46:	f000 8134 	beq.w	d0042cb2 <sb3dParticlesRender+0x4f6>
d0042a4a:	7ea3      	ldrb	r3, [r4, #26]
d0042a4c:	2b00      	cmp	r3, #0
d0042a4e:	d0f8      	beq.n	d0042a42 <sb3dParticlesRender+0x286>
d0042a50:	edd4 7a03 	vldr	s15, [r4, #12]
d0042a54:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0042a58:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042a5c:	d9f1      	bls.n	d0042a42 <sb3dParticlesRender+0x286>
d0042a5e:	edd4 6a01 	vldr	s13, [r4, #4]
d0042a62:	eeb1 5a67 	vneg.f32	s10, s15
d0042a66:	ed94 6a00 	vldr	s12, [r4]
d0042a6a:	ee36 7aed 	vsub.f32	s14, s13, s27
d0042a6e:	edd4 5a02 	vldr	s11, [r4, #8]
d0042a72:	ee36 4a4e 	vsub.f32	s8, s12, s28
d0042a76:	eddd 4a15 	vldr	s9, [sp, #84]	; 0x54
d0042a7a:	ee27 7a0a 	vmul.f32	s14, s14, s20
d0042a7e:	ee75 4ae4 	vsub.f32	s9, s11, s9
d0042a82:	eeaa 7a84 	vfma.f32	s14, s21, s8
d0042a86:	eea9 7aa4 	vfma.f32	s14, s19, s9
d0042a8a:	eeb4 5ac7 	vcmpe.f32	s10, s14
d0042a8e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042a92:	dad6      	bge.n	d0042a42 <sb3dParticlesRender+0x286>
d0042a94:	ed94 7a05 	vldr	s14, [r4, #20]
d0042a98:	ed9f 5a0b 	vldr	s10, [pc, #44]	; d0042ac8 <sb3dParticlesRender+0x30c>
d0042a9c:	eeb4 7ac5 	vcmpe.f32	s14, s10
d0042aa0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042aa4:	f67f aebb 	bls.w	d004281e <sb3dParticlesRender+0x62>
d0042aa8:	f1b8 0f00 	cmp.w	r8, #0
d0042aac:	f340 809e 	ble.w	d0042bec <sb3dParticlesRender+0x430>
d0042ab0:	eeb7 4a00 	vmov.f32	s8, #112	; 0x3f800000  1.0
d0042ab4:	464b      	mov	r3, r9
d0042ab6:	eeb5 3a00 	vmov.f32	s6, #80	; 0x3e800000  0.250
d0042aba:	ed9f 0a05 	vldr	s0, [pc, #20]	; d0042ad0 <sb3dParticlesRender+0x314>
d0042abe:	eef6 3a08 	vmov.f32	s7, #104	; 0x3f400000  0.750
d0042ac2:	e07e      	b.n	d0042bc2 <sb3dParticlesRender+0x406>
d0042ac4:	d00475a0 	.word	0xd00475a0
d0042ac8:	38d1b717 	.word	0x38d1b717
d0042acc:	358637bd 	.word	0x358637bd
d0042ad0:	3dcccccd 	.word	0x3dcccccd
d0042ad4:	3b808081 	.word	0x3b808081
d0042ad8:	00000000 	.word	0x00000000
d0042adc:	edd3 7a02 	vldr	s15, [r3, #8]
d0042ae0:	edd3 4a01 	vldr	s9, [r3, #4]
d0042ae4:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0042ae8:	ed93 7a03 	vldr	s14, [r3, #12]
d0042aec:	ee74 4ac6 	vsub.f32	s9, s9, s12
d0042af0:	ed93 2a0a 	vldr	s4, [r3, #40]	; 0x28
d0042af4:	ee37 7a65 	vsub.f32	s14, s14, s11
d0042af8:	ee27 5aa7 	vmul.f32	s10, s15, s15
d0042afc:	ee62 2a02 	vmul.f32	s5, s4, s4
d0042b00:	eea4 5aa4 	vfma.f32	s10, s9, s9
d0042b04:	eea7 5a07 	vfma.f32	s10, s14, s14
d0042b08:	eeb4 5a62 	vcmp.f32	s10, s5
d0042b0c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042b10:	d554      	bpl.n	d0042bbc <sb3dParticlesRender+0x400>
d0042b12:	ed5f 2a12 	vldr	s5, [pc, #-72]	; d0042acc <sb3dParticlesRender+0x310>
d0042b16:	eeb4 5a62 	vcmp.f32	s10, s5
d0042b1a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042b1e:	dd4d      	ble.n	d0042bbc <sb3dParticlesRender+0x400>
d0042b20:	eef1 0ac5 	vsqrt.f32	s1, s10
d0042b24:	edd3 1a08 	vldr	s3, [r3, #32]
d0042b28:	ee21 1aa1 	vmul.f32	s2, s3, s3
d0042b2c:	eeb4 5ac1 	vcmpe.f32	s10, s2
d0042b30:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042b34:	eec4 2a20 	vdiv.f32	s5, s8, s1
d0042b38:	ee64 4aa2 	vmul.f32	s9, s9, s5
d0042b3c:	ee67 7aa2 	vmul.f32	s15, s15, s5
d0042b40:	ee27 7a22 	vmul.f32	s14, s14, s5
d0042b44:	f240 80e9 	bls.w	d0042d1a <sb3dParticlesRender+0x55e>
d0042b48:	ed93 1a09 	vldr	s2, [r3, #36]	; 0x24
d0042b4c:	eef4 1ac1 	vcmpe.f32	s3, s2
d0042b50:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042b54:	da32      	bge.n	d0042bbc <sb3dParticlesRender+0x400>
d0042b56:	eeb4 2ac1 	vcmpe.f32	s4, s2
d0042b5a:	ee25 5a22 	vmul.f32	s10, s10, s5
d0042b5e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042b62:	eeb4 1ac5 	vcmpe.f32	s2, s10
d0042b66:	f200 80db 	bhi.w	d0042d20 <sb3dParticlesRender+0x564>
d0042b6a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042b6e:	d925      	bls.n	d0042bbc <sb3dParticlesRender+0x400>
d0042b70:	ee75 2a61 	vsub.f32	s5, s10, s3
d0042b74:	ee31 2a61 	vsub.f32	s4, s2, s3
d0042b78:	ee82 5a82 	vdiv.f32	s10, s5, s4
d0042b7c:	ed5f 2a2a 	vldr	s5, [pc, #-168]	; d0042ad8 <sb3dParticlesRender+0x31c>
d0042b80:	fe85 5a22 	vmaxnm.f32	s10, s10, s5
d0042b84:	fe85 5a44 	vminnm.f32	s10, s10, s8
d0042b88:	ee34 5a45 	vsub.f32	s10, s8, s10
d0042b8c:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d0042b90:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042b94:	d912      	bls.n	d0042bbc <sb3dParticlesRender+0x400>
d0042b96:	ee67 7a8a 	vmul.f32	s15, s15, s20
d0042b9a:	eee4 7aaa 	vfma.f32	s15, s9, s21
d0042b9e:	eee7 7a29 	vfma.f32	s15, s14, s19
d0042ba2:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0042ba6:	eeb1 7a67 	vneg.f32	s14, s15
d0042baa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042bae:	da05      	bge.n	d0042bbc <sb3dParticlesRender+0x400>
d0042bb0:	edd3 7a07 	vldr	s15, [r3, #28]
d0042bb4:	ee25 5a27 	vmul.f32	s10, s10, s15
d0042bb8:	eea5 0a07 	vfma.f32	s0, s10, s14
d0042bbc:	3340      	adds	r3, #64	; 0x40
d0042bbe:	429f      	cmp	r7, r3
d0042bc0:	d016      	beq.n	d0042bf0 <sb3dParticlesRender+0x434>
d0042bc2:	6ada      	ldr	r2, [r3, #44]	; 0x2c
d0042bc4:	2a00      	cmp	r2, #0
d0042bc6:	d0f9      	beq.n	d0042bbc <sb3dParticlesRender+0x400>
d0042bc8:	781a      	ldrb	r2, [r3, #0]
d0042bca:	2a00      	cmp	r2, #0
d0042bcc:	d086      	beq.n	d0042adc <sb3dParticlesRender+0x320>
d0042bce:	edd3 4a04 	vldr	s9, [r3, #16]
d0042bd2:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0042bd6:	edd3 7a05 	vldr	s15, [r3, #20]
d0042bda:	ed93 7a06 	vldr	s14, [r3, #24]
d0042bde:	eef1 4a64 	vneg.f32	s9, s9
d0042be2:	eef1 7a67 	vneg.f32	s15, s15
d0042be6:	eeb1 7a47 	vneg.f32	s14, s14
d0042bea:	e7d4      	b.n	d0042b96 <sb3dParticlesRender+0x3da>
d0042bec:	ed1f 0a48 	vldr	s0, [pc, #-288]	; d0042ad0 <sb3dParticlesRender+0x314>
d0042bf0:	7e63      	ldrb	r3, [r4, #25]
d0042bf2:	eeb7 fa00 	vmov.f32	s30, #112	; 0x3f800000  1.0
d0042bf6:	ed1f 7a49 	vldr	s14, [pc, #-292]	; d0042ad4 <sb3dParticlesRender+0x318>
d0042bfa:	ee07 3a90 	vmov	s15, r3
d0042bfe:	ed1f da4a 	vldr	s26, [pc, #-296]	; d0042ad8 <sb3dParticlesRender+0x31c>
d0042c02:	eef8 7a67 	vcvt.f32.u32	s15, s15
d0042c06:	ee67 7a87 	vmul.f32	s15, s15, s14
d0042c0a:	fec7 7a8d 	vmaxnm.f32	s15, s15, s26
d0042c0e:	fe87 0a80 	vmaxnm.f32	s0, s15, s0
d0042c12:	fe80 0a4f 	vminnm.f32	s0, s0, s30
d0042c16:	f000 ff0d 	bl	d0043a34 <brightnessToShadeF>
d0042c1a:	edd4 ea05 	vldr	s29, [r4, #20]
d0042c1e:	ed94 5a04 	vldr	s10, [r4, #16]
d0042c22:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d0042c26:	ee3f fa6e 	vsub.f32	s30, s30, s29
d0042c2a:	edd4 7a03 	vldr	s15, [r4, #12]
d0042c2e:	ee60 ea2e 	vmul.f32	s29, s0, s29
d0042c32:	ed94 6a00 	vldr	s12, [r4]
d0042c36:	edd4 6a01 	vldr	s13, [r4, #4]
d0042c3a:	edd4 5a02 	vldr	s11, [r4, #8]
d0042c3e:	eee5 ea0f 	vfma.f32	s29, s10, s30
d0042c42:	fece ea8d 	vmaxnm.f32	s29, s29, s26
d0042c46:	fece eac7 	vminnm.f32	s29, s29, s14
d0042c4a:	e5f2      	b.n	d0042832 <sb3dParticlesRender+0x76>
d0042c4c:	f100 3aff 	add.w	sl, r0, #4294967295	; 0xffffffff
d0042c50:	f04f 0b01 	mov.w	fp, #1
d0042c54:	465b      	mov	r3, fp
d0042c56:	f10b 0b01 	add.w	fp, fp, #1
d0042c5a:	a946      	add	r1, sp, #280	; 0x118
d0042c5c:	eef0 4a6e 	vmov.f32	s9, s29
d0042c60:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0042c64:	7e62      	ldrb	r2, [r4, #25]
d0042c66:	eb0b 004b 	add.w	r0, fp, fp, lsl #1
d0042c6a:	ed9d 0a2e 	vldr	s0, [sp, #184]	; 0xb8
d0042c6e:	eb01 0383 	add.w	r3, r1, r3, lsl #2
d0042c72:	eddd 0a2f 	vldr	s1, [sp, #188]	; 0xbc
d0042c76:	eb01 0080 	add.w	r0, r1, r0, lsl #2
d0042c7a:	ed9d 1a30 	vldr	s2, [sp, #192]	; 0xc0
d0042c7e:	f1a3 0c60 	sub.w	ip, r3, #96	; 0x60
d0042c82:	ed53 1a18 	vldr	s3, [r3, #-96]	; 0xffffffa0
d0042c86:	ed10 3a18 	vldr	s6, [r0, #-96]	; 0xffffffa0
d0042c8a:	f1a0 0360 	sub.w	r3, r0, #96	; 0x60
d0042c8e:	7e21      	ldrb	r1, [r4, #24]
d0042c90:	4628      	mov	r0, r5
d0042c92:	ed9c 2a01 	vldr	s4, [ip, #4]
d0042c96:	eddc 2a02 	vldr	s5, [ip, #8]
d0042c9a:	edd3 3a01 	vldr	s7, [r3, #4]
d0042c9e:	ed93 4a02 	vldr	s8, [r3, #8]
d0042ca2:	f001 fb8f 	bl	d00443c4 <submitClippedTri>
d0042ca6:	45d3      	cmp	fp, sl
d0042ca8:	d1d4      	bne.n	d0042c54 <sb3dParticlesRender+0x498>
d0042caa:	3420      	adds	r4, #32
d0042cac:	42a6      	cmp	r6, r4
d0042cae:	f47f aecc 	bne.w	d0042a4a <sb3dParticlesRender+0x28e>
d0042cb2:	b047      	add	sp, #284	; 0x11c
d0042cb4:	ecbd 8b10 	vpop	{d8-d15}
d0042cb8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0042cbc:	f100 3aff 	add.w	sl, r0, #4294967295	; 0xffffffff
d0042cc0:	f04f 0b01 	mov.w	fp, #1
d0042cc4:	465b      	mov	r3, fp
d0042cc6:	aa46      	add	r2, sp, #280	; 0x118
d0042cc8:	f10b 0b01 	add.w	fp, fp, #1
d0042ccc:	a846      	add	r0, sp, #280	; 0x118
d0042cce:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0042cd2:	eef0 4a6e 	vmov.f32	s9, s29
d0042cd6:	eb0b 014b 	add.w	r1, fp, fp, lsl #1
d0042cda:	ed9d 0a2e 	vldr	s0, [sp, #184]	; 0xb8
d0042cde:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0042ce2:	eddd 0a2f 	vldr	s1, [sp, #188]	; 0xbc
d0042ce6:	eb00 0181 	add.w	r1, r0, r1, lsl #2
d0042cea:	ed9d 1a30 	vldr	s2, [sp, #192]	; 0xc0
d0042cee:	7e62      	ldrb	r2, [r4, #25]
d0042cf0:	4628      	mov	r0, r5
d0042cf2:	ed11 3a18 	vldr	s6, [r1, #-96]	; 0xffffffa0
d0042cf6:	f1a3 0c60 	sub.w	ip, r3, #96	; 0x60
d0042cfa:	ed51 3a17 	vldr	s7, [r1, #-92]	; 0xffffffa4
d0042cfe:	ed11 4a16 	vldr	s8, [r1, #-88]	; 0xffffffa8
d0042d02:	ed53 1a18 	vldr	s3, [r3, #-96]	; 0xffffffa0
d0042d06:	7e21      	ldrb	r1, [r4, #24]
d0042d08:	ed9c 2a01 	vldr	s4, [ip, #4]
d0042d0c:	eddc 2a02 	vldr	s5, [ip, #8]
d0042d10:	f001 fb58 	bl	d00443c4 <submitClippedTri>
d0042d14:	45d3      	cmp	fp, sl
d0042d16:	d1d5      	bne.n	d0042cc4 <sb3dParticlesRender+0x508>
d0042d18:	e67a      	b.n	d0042a10 <sb3dParticlesRender+0x254>
d0042d1a:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0042d1e:	e73a      	b.n	d0042b96 <sb3dParticlesRender+0x3da>
d0042d20:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042d24:	db12      	blt.n	d0042d4c <sb3dParticlesRender+0x590>
d0042d26:	ee35 5a61 	vsub.f32	s10, s10, s3
d0042d2a:	ee31 2a61 	vsub.f32	s4, s2, s3
d0042d2e:	eec5 2a02 	vdiv.f32	s5, s10, s4
d0042d32:	ed1f 5a97 	vldr	s10, [pc, #-604]	; d0042ad8 <sb3dParticlesRender+0x31c>
d0042d36:	fe82 5a85 	vmaxnm.f32	s10, s5, s10
d0042d3a:	eef0 2a44 	vmov.f32	s5, s8
d0042d3e:	fe85 5a44 	vminnm.f32	s10, s10, s8
d0042d42:	eee5 2a63 	vfms.f32	s5, s10, s7
d0042d46:	eeb0 5a62 	vmov.f32	s10, s5
d0042d4a:	e71f      	b.n	d0042b8c <sb3dParticlesRender+0x3d0>
d0042d4c:	ee75 2a41 	vsub.f32	s5, s10, s2
d0042d50:	ee32 2a41 	vsub.f32	s4, s4, s2
d0042d54:	ee82 5a82 	vdiv.f32	s10, s5, s4
d0042d58:	ed5f 2aa1 	vldr	s5, [pc, #-644]	; d0042ad8 <sb3dParticlesRender+0x31c>
d0042d5c:	fe85 5a22 	vmaxnm.f32	s10, s10, s5
d0042d60:	fe85 5a44 	vminnm.f32	s10, s10, s8
d0042d64:	ee34 5a45 	vsub.f32	s10, s8, s10
d0042d68:	ee25 5a03 	vmul.f32	s10, s10, s6
d0042d6c:	e70e      	b.n	d0042b8c <sb3dParticlesRender+0x3d0>
d0042d6e:	4770      	bx	lr

d0042d70 <worldClear>:
d0042d70:	f44f 42c0 	mov.w	r2, #24576	; 0x6000
d0042d74:	2100      	movs	r1, #0
d0042d76:	4801      	ldr	r0, [pc, #4]	; (d0042d7c <worldClear+0xc>)
d0042d78:	f003 b8c2 	b.w	d0045f00 <memset>
d0042d7c:	d00e1ca0 	.word	0xd00e1ca0

d0042d80 <cameraCreate>:
d0042d80:	b510      	push	{r4, lr}
d0042d82:	4604      	mov	r4, r0
d0042d84:	2260      	movs	r2, #96	; 0x60
d0042d86:	4902      	ldr	r1, [pc, #8]	; (d0042d90 <cameraCreate+0x10>)
d0042d88:	f003 f8ac 	bl	d0045ee4 <memcpy>
d0042d8c:	4620      	mov	r0, r4
d0042d8e:	bd10      	pop	{r4, pc}
d0042d90:	d0046ca0 	.word	0xd0046ca0

d0042d94 <cameraSetPosition>:
d0042d94:	b084      	sub	sp, #16
d0042d96:	ed8d 0a01 	vstr	s0, [sp, #4]
d0042d9a:	edcd 0a02 	vstr	s1, [sp, #8]
d0042d9e:	ed8d 1a03 	vstr	s2, [sp, #12]
d0042da2:	b128      	cbz	r0, d0042db0 <cameraSetPosition+0x1c>
d0042da4:	aa04      	add	r2, sp, #16
d0042da6:	4603      	mov	r3, r0
d0042da8:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0042dac:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0042db0:	b004      	add	sp, #16
d0042db2:	4770      	bx	lr

d0042db4 <cameraNormalize>:
d0042db4:	edd0 0a0d 	vldr	s1, [r0, #52]	; 0x34
d0042db8:	ed90 1a0e 	vldr	s2, [r0, #56]	; 0x38
d0042dbc:	ed90 0a0c 	vldr	s0, [r0, #48]	; 0x30
d0042dc0:	b510      	push	{r4, lr}
d0042dc2:	4604      	mov	r4, r0
d0042dc4:	f7ff fb38 	bl	d0042438 <vec3Normalize>
d0042dc8:	eeb0 7a60 	vmov.f32	s14, s1
d0042dcc:	eef0 7a41 	vmov.f32	s15, s2
d0042dd0:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0042dd4:	ed94 0a06 	vldr	s0, [r4, #24]
d0042dd8:	ed84 7a0d 	vstr	s14, [r4, #52]	; 0x34
d0042ddc:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d0042de0:	edd4 0a07 	vldr	s1, [r4, #28]
d0042de4:	ed94 1a08 	vldr	s2, [r4, #32]
d0042de8:	f7ff fb26 	bl	d0042438 <vec3Normalize>
d0042dec:	eef0 1a40 	vmov.f32	s3, s0
d0042df0:	eeb0 2a60 	vmov.f32	s4, s1
d0042df4:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0042df8:	eef0 2a41 	vmov.f32	s5, s2
d0042dfc:	edc4 0a07 	vstr	s1, [r4, #28]
d0042e00:	ed84 1a08 	vstr	s2, [r4, #32]
d0042e04:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0042e08:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0042e0c:	edc4 1a06 	vstr	s3, [r4, #24]
d0042e10:	f7ff fafc 	bl	d004240c <vec3Cross>
d0042e14:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0042e18:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0042e1c:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0042e20:	f7ff fb0a 	bl	d0042438 <vec3Normalize>
d0042e24:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0042e28:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0042e2c:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0042e30:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0042e34:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0042e38:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0042e3c:	f7ff fae6 	bl	d004240c <vec3Cross>
d0042e40:	ed84 0a06 	vstr	s0, [r4, #24]
d0042e44:	edc4 0a07 	vstr	s1, [r4, #28]
d0042e48:	ed84 1a08 	vstr	s2, [r4, #32]
d0042e4c:	f7ff faf4 	bl	d0042438 <vec3Normalize>
d0042e50:	ed84 0a06 	vstr	s0, [r4, #24]
d0042e54:	edc4 0a07 	vstr	s1, [r4, #28]
d0042e58:	ed84 1a08 	vstr	s2, [r4, #32]
d0042e5c:	bd10      	pop	{r4, pc}
d0042e5e:	bf00      	nop

d0042e60 <cameraTurn>:
d0042e60:	2800      	cmp	r0, #0
d0042e62:	f000 8144 	beq.w	d00430ee <cameraTurn+0x28e>
d0042e66:	b570      	push	{r4, r5, r6, lr}
d0042e68:	4604      	mov	r4, r0
d0042e6a:	ed2d 8b04 	vpush	{d8-d9}
d0042e6e:	eef0 8a40 	vmov.f32	s17, s0
d0042e72:	b08a      	sub	sp, #40	; 0x28
d0042e74:	eeb0 9a60 	vmov.f32	s18, s1
d0042e78:	eeb0 8a41 	vmov.f32	s16, s2
d0042e7c:	bb69      	cbnz	r1, d0042eda <cameraTurn+0x7a>
d0042e7e:	f100 0318 	add.w	r3, r0, #24
d0042e82:	ae01      	add	r6, sp, #4
d0042e84:	f100 0524 	add.w	r5, r0, #36	; 0x24
d0042e88:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0042e8c:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0042e90:	f104 0330 	add.w	r3, r4, #48	; 0x30
d0042e94:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042e98:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0042e9c:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d0042ea0:	ae04      	add	r6, sp, #16
d0042ea2:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0042ea6:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0042eaa:	ab0a      	add	r3, sp, #40	; 0x28
d0042eac:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0042eb0:	d14a      	bne.n	d0042f48 <cameraTurn+0xe8>
d0042eb2:	eef5 8a40 	vcmp.f32	s17, #0.0
d0042eb6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042eba:	f040 808d 	bne.w	d0042fd8 <cameraTurn+0x178>
d0042ebe:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0042ec2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042ec6:	f040 80cf 	bne.w	d0043068 <cameraTurn+0x208>
d0042eca:	4620      	mov	r0, r4
d0042ecc:	b00a      	add	sp, #40	; 0x28
d0042ece:	ecbd 8b04 	vpop	{d8-d9}
d0042ed2:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0042ed6:	f7ff bf6d 	b.w	d0042db4 <cameraNormalize>
d0042eda:	ed9f 1a85 	vldr	s2, [pc, #532]	; d00430f0 <cameraTurn+0x290>
d0042ede:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0042ee2:	eef0 0a41 	vmov.f32	s1, s2
d0042ee6:	f7ff fba7 	bl	d0042638 <vec3>
d0042eea:	eef0 7a41 	vmov.f32	s15, s2
d0042eee:	ed9f 1a80 	vldr	s2, [pc, #512]	; d00430f0 <cameraTurn+0x290>
d0042ef2:	eeb0 7a60 	vmov.f32	s14, s1
d0042ef6:	ed8d 0a01 	vstr	s0, [sp, #4]
d0042efa:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d0042efe:	edcd 7a03 	vstr	s15, [sp, #12]
d0042f02:	eeb0 0a41 	vmov.f32	s0, s2
d0042f06:	ed8d 7a02 	vstr	s14, [sp, #8]
d0042f0a:	f7ff fb95 	bl	d0042638 <vec3>
d0042f0e:	eeb0 7a60 	vmov.f32	s14, s1
d0042f12:	eddf 0a77 	vldr	s1, [pc, #476]	; d00430f0 <cameraTurn+0x290>
d0042f16:	eef0 7a41 	vmov.f32	s15, s2
d0042f1a:	ed8d 0a04 	vstr	s0, [sp, #16]
d0042f1e:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d0042f22:	eeb0 0a60 	vmov.f32	s0, s1
d0042f26:	ed8d 7a05 	vstr	s14, [sp, #20]
d0042f2a:	edcd 7a06 	vstr	s15, [sp, #24]
d0042f2e:	f7ff fb83 	bl	d0042638 <vec3>
d0042f32:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0042f36:	edcd 0a08 	vstr	s1, [sp, #32]
d0042f3a:	ed8d 0a07 	vstr	s0, [sp, #28]
d0042f3e:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d0042f42:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042f46:	d0b4      	beq.n	d0042eb2 <cameraTurn+0x52>
d0042f48:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0042f4c:	eeb0 3a49 	vmov.f32	s6, s18
d0042f50:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0042f54:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0042f58:	eddd 1a04 	vldr	s3, [sp, #16]
d0042f5c:	ed9d 2a05 	vldr	s4, [sp, #20]
d0042f60:	eddd 2a06 	vldr	s5, [sp, #24]
d0042f64:	f7ff fab8 	bl	d00424d8 <rotateAroundAxis>
d0042f68:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0042f6c:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0042f70:	eeb0 3a49 	vmov.f32	s6, s18
d0042f74:	ed94 0a06 	vldr	s0, [r4, #24]
d0042f78:	edd4 0a07 	vldr	s1, [r4, #28]
d0042f7c:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0042f80:	ed94 1a08 	vldr	s2, [r4, #32]
d0042f84:	eddd 1a04 	vldr	s3, [sp, #16]
d0042f88:	ed9d 2a05 	vldr	s4, [sp, #20]
d0042f8c:	eddd 2a06 	vldr	s5, [sp, #24]
d0042f90:	f7ff faa2 	bl	d00424d8 <rotateAroundAxis>
d0042f94:	eeb0 3a49 	vmov.f32	s6, s18
d0042f98:	ed84 0a06 	vstr	s0, [r4, #24]
d0042f9c:	edc4 0a07 	vstr	s1, [r4, #28]
d0042fa0:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0042fa4:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0042fa8:	ed84 1a08 	vstr	s2, [r4, #32]
d0042fac:	eddd 1a04 	vldr	s3, [sp, #16]
d0042fb0:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0042fb4:	ed9d 2a05 	vldr	s4, [sp, #20]
d0042fb8:	eddd 2a06 	vldr	s5, [sp, #24]
d0042fbc:	f7ff fa8c 	bl	d00424d8 <rotateAroundAxis>
d0042fc0:	eef5 8a40 	vcmp.f32	s17, #0.0
d0042fc4:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0042fc8:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0042fcc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042fd0:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0042fd4:	f43f af73 	beq.w	d0042ebe <cameraTurn+0x5e>
d0042fd8:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0042fdc:	eeb0 3a68 	vmov.f32	s6, s17
d0042fe0:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0042fe4:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0042fe8:	eddd 1a01 	vldr	s3, [sp, #4]
d0042fec:	ed9d 2a02 	vldr	s4, [sp, #8]
d0042ff0:	eddd 2a03 	vldr	s5, [sp, #12]
d0042ff4:	f7ff fa70 	bl	d00424d8 <rotateAroundAxis>
d0042ff8:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0042ffc:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0043000:	eeb0 3a68 	vmov.f32	s6, s17
d0043004:	ed94 0a06 	vldr	s0, [r4, #24]
d0043008:	edd4 0a07 	vldr	s1, [r4, #28]
d004300c:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0043010:	ed94 1a08 	vldr	s2, [r4, #32]
d0043014:	eddd 1a01 	vldr	s3, [sp, #4]
d0043018:	ed9d 2a02 	vldr	s4, [sp, #8]
d004301c:	eddd 2a03 	vldr	s5, [sp, #12]
d0043020:	f7ff fa5a 	bl	d00424d8 <rotateAroundAxis>
d0043024:	eeb0 3a68 	vmov.f32	s6, s17
d0043028:	ed84 0a06 	vstr	s0, [r4, #24]
d004302c:	edc4 0a07 	vstr	s1, [r4, #28]
d0043030:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0043034:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0043038:	ed84 1a08 	vstr	s2, [r4, #32]
d004303c:	eddd 1a01 	vldr	s3, [sp, #4]
d0043040:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0043044:	ed9d 2a02 	vldr	s4, [sp, #8]
d0043048:	eddd 2a03 	vldr	s5, [sp, #12]
d004304c:	f7ff fa44 	bl	d00424d8 <rotateAroundAxis>
d0043050:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0043054:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0043058:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d004305c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043060:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0043064:	f43f af31 	beq.w	d0042eca <cameraTurn+0x6a>
d0043068:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d004306c:	eeb0 3a48 	vmov.f32	s6, s16
d0043070:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0043074:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0043078:	eddd 1a07 	vldr	s3, [sp, #28]
d004307c:	ed9d 2a08 	vldr	s4, [sp, #32]
d0043080:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0043084:	f7ff fa28 	bl	d00424d8 <rotateAroundAxis>
d0043088:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d004308c:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0043090:	eeb0 3a48 	vmov.f32	s6, s16
d0043094:	ed94 0a06 	vldr	s0, [r4, #24]
d0043098:	edd4 0a07 	vldr	s1, [r4, #28]
d004309c:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d00430a0:	ed94 1a08 	vldr	s2, [r4, #32]
d00430a4:	eddd 1a07 	vldr	s3, [sp, #28]
d00430a8:	ed9d 2a08 	vldr	s4, [sp, #32]
d00430ac:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d00430b0:	f7ff fa12 	bl	d00424d8 <rotateAroundAxis>
d00430b4:	ed84 0a06 	vstr	s0, [r4, #24]
d00430b8:	edc4 0a07 	vstr	s1, [r4, #28]
d00430bc:	eeb0 3a48 	vmov.f32	s6, s16
d00430c0:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d00430c4:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d00430c8:	ed84 1a08 	vstr	s2, [r4, #32]
d00430cc:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d00430d0:	eddd 1a07 	vldr	s3, [sp, #28]
d00430d4:	ed9d 2a08 	vldr	s4, [sp, #32]
d00430d8:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d00430dc:	f7ff f9fc 	bl	d00424d8 <rotateAroundAxis>
d00430e0:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d00430e4:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d00430e8:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d00430ec:	e6ed      	b.n	d0042eca <cameraTurn+0x6a>
d00430ee:	4770      	bx	lr
d00430f0:	00000000 	.word	0x00000000

d00430f4 <worldToCamera>:
d00430f4:	b084      	sub	sp, #16
d00430f6:	b510      	push	{r4, lr}
d00430f8:	ed2d 8b02 	vpush	{d8}
d00430fc:	b0ac      	sub	sp, #176	; 0xb0
d00430fe:	f10d 042f 	add.w	r4, sp, #47	; 0x2f
d0043102:	f10d 0cc0 	add.w	ip, sp, #192	; 0xc0
d0043106:	ed8d 0a23 	vstr	s0, [sp, #140]	; 0x8c
d004310a:	f024 041f 	bic.w	r4, r4, #31
d004310e:	edcd 0a24 	vstr	s1, [sp, #144]	; 0x90
d0043112:	ed8d 1a25 	vstr	s2, [sp, #148]	; 0x94
d0043116:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d004311a:	2260      	movs	r2, #96	; 0x60
d004311c:	4661      	mov	r1, ip
d004311e:	4620      	mov	r0, r4
d0043120:	f002 fee0 	bl	d0045ee4 <memcpy>
d0043124:	edd4 7a00 	vldr	s15, [r4]
d0043128:	ed9d 0a23 	vldr	s0, [sp, #140]	; 0x8c
d004312c:	ed94 7a01 	vldr	s14, [r4, #4]
d0043130:	ee30 0a67 	vsub.f32	s0, s0, s15
d0043134:	eddd 0a24 	vldr	s1, [sp, #144]	; 0x90
d0043138:	edd4 7a02 	vldr	s15, [r4, #8]
d004313c:	ed9d 1a25 	vldr	s2, [sp, #148]	; 0x94
d0043140:	ee70 0ac7 	vsub.f32	s1, s1, s14
d0043144:	edd4 1a06 	vldr	s3, [r4, #24]
d0043148:	ee31 1a67 	vsub.f32	s2, s2, s15
d004314c:	ed94 2a07 	vldr	s4, [r4, #28]
d0043150:	edd4 2a08 	vldr	s5, [r4, #32]
d0043154:	edcd 0a27 	vstr	s1, [sp, #156]	; 0x9c
d0043158:	ed8d 1a28 	vstr	s2, [sp, #160]	; 0xa0
d004315c:	ed8d 0a26 	vstr	s0, [sp, #152]	; 0x98
d0043160:	f7ff f948 	bl	d00423f4 <vec3Dot>
d0043164:	edd4 1a09 	vldr	s3, [r4, #36]	; 0x24
d0043168:	eef0 8a40 	vmov.f32	s17, s0
d004316c:	ed94 2a0a 	vldr	s4, [r4, #40]	; 0x28
d0043170:	edd4 2a0b 	vldr	s5, [r4, #44]	; 0x2c
d0043174:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d0043178:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d004317c:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d0043180:	f7ff f938 	bl	d00423f4 <vec3Dot>
d0043184:	eeb0 8a40 	vmov.f32	s16, s0
d0043188:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d004318c:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d0043190:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0043194:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d0043198:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d004319c:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d00431a0:	f7ff f928 	bl	d00423f4 <vec3Dot>
d00431a4:	eef0 0a48 	vmov.f32	s1, s16
d00431a8:	eeb0 1a40 	vmov.f32	s2, s0
d00431ac:	eeb0 0a68 	vmov.f32	s0, s17
d00431b0:	b02c      	add	sp, #176	; 0xb0
d00431b2:	ecbd 8b02 	vpop	{d8}
d00431b6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00431ba:	b004      	add	sp, #16
d00431bc:	4770      	bx	lr
d00431be:	bf00      	nop

d00431c0 <cameraSetRange>:
d00431c0:	b1a0      	cbz	r0, d00431ec <cameraSetRange+0x2c>
d00431c2:	eddf 7a0d 	vldr	s15, [pc, #52]	; d00431f8 <cameraSetRange+0x38>
d00431c6:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d00431ca:	eeb4 0ae0 	vcmpe.f32	s0, s1
d00431ce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00431d2:	da0c      	bge.n	d00431ee <cameraSetRange+0x2e>
d00431d4:	ee30 7ac0 	vsub.f32	s14, s1, s0
d00431d8:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d00431dc:	eec6 7a87 	vdiv.f32	s15, s13, s14
d00431e0:	ed80 0a10 	vstr	s0, [r0, #64]	; 0x40
d00431e4:	edc0 0a11 	vstr	s1, [r0, #68]	; 0x44
d00431e8:	edc0 7a0f 	vstr	s15, [r0, #60]	; 0x3c
d00431ec:	4770      	bx	lr
d00431ee:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00431f2:	ee70 0a27 	vadd.f32	s1, s0, s15
d00431f6:	e7f3      	b.n	d00431e0 <cameraSetRange+0x20>
d00431f8:	3a83126f 	.word	0x3a83126f

d00431fc <cameraMove>:
d00431fc:	b3a8      	cbz	r0, d004326a <cameraMove+0x6e>
d00431fe:	edd0 6a0b 	vldr	s13, [r0, #44]	; 0x2c
d0043202:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
d0043206:	edd0 7a0a 	vldr	s15, [r0, #40]	; 0x28
d004320a:	ee20 7a87 	vmul.f32	s14, s1, s14
d004320e:	edd0 5a06 	vldr	s11, [r0, #24]
d0043212:	ee60 7aa7 	vmul.f32	s15, s1, s15
d0043216:	ed90 6a08 	vldr	s12, [r0, #32]
d004321a:	ee60 0aa6 	vmul.f32	s1, s1, s13
d004321e:	edd0 6a07 	vldr	s13, [r0, #28]
d0043222:	eea5 7a80 	vfma.f32	s14, s11, s0
d0043226:	edd0 4a01 	vldr	s9, [r0, #4]
d004322a:	eee6 7a80 	vfma.f32	s15, s13, s0
d004322e:	ed90 5a02 	vldr	s10, [r0, #8]
d0043232:	eee6 0a00 	vfma.f32	s1, s12, s0
d0043236:	edd0 6a00 	vldr	s13, [r0]
d004323a:	edd0 5a0c 	vldr	s11, [r0, #48]	; 0x30
d004323e:	ed90 6a0d 	vldr	s12, [r0, #52]	; 0x34
d0043242:	ee37 7a26 	vadd.f32	s14, s14, s13
d0043246:	edd0 6a0e 	vldr	s13, [r0, #56]	; 0x38
d004324a:	ee77 7aa4 	vadd.f32	s15, s15, s9
d004324e:	ee70 0a85 	vadd.f32	s1, s1, s10
d0043252:	eea5 7a81 	vfma.f32	s14, s11, s2
d0043256:	eee6 7a01 	vfma.f32	s15, s12, s2
d004325a:	eee6 0a81 	vfma.f32	s1, s13, s2
d004325e:	ed80 7a00 	vstr	s14, [r0]
d0043262:	edc0 7a01 	vstr	s15, [r0, #4]
d0043266:	edc0 0a02 	vstr	s1, [r0, #8]
d004326a:	4770      	bx	lr

d004326c <normalizeEntity.part.0>:
d004326c:	edd0 0a05 	vldr	s1, [r0, #20]
d0043270:	ed90 1a06 	vldr	s2, [r0, #24]
d0043274:	ed90 0a04 	vldr	s0, [r0, #16]
d0043278:	b510      	push	{r4, lr}
d004327a:	4604      	mov	r4, r0
d004327c:	f7ff f8dc 	bl	d0042438 <vec3Normalize>
d0043280:	eeb0 7a60 	vmov.f32	s14, s1
d0043284:	eef0 7a41 	vmov.f32	s15, s2
d0043288:	ed84 0a04 	vstr	s0, [r4, #16]
d004328c:	ed94 0a07 	vldr	s0, [r4, #28]
d0043290:	ed84 7a05 	vstr	s14, [r4, #20]
d0043294:	edc4 7a06 	vstr	s15, [r4, #24]
d0043298:	edd4 0a08 	vldr	s1, [r4, #32]
d004329c:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00432a0:	f7ff f8ca 	bl	d0042438 <vec3Normalize>
d00432a4:	eef0 1a40 	vmov.f32	s3, s0
d00432a8:	eeb0 2a60 	vmov.f32	s4, s1
d00432ac:	ed94 0a04 	vldr	s0, [r4, #16]
d00432b0:	eef0 2a41 	vmov.f32	s5, s2
d00432b4:	edc4 0a08 	vstr	s1, [r4, #32]
d00432b8:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d00432bc:	edd4 0a05 	vldr	s1, [r4, #20]
d00432c0:	ed94 1a06 	vldr	s2, [r4, #24]
d00432c4:	edc4 1a07 	vstr	s3, [r4, #28]
d00432c8:	f7ff f8a0 	bl	d004240c <vec3Cross>
d00432cc:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d00432d0:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d00432d4:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d00432d8:	f7ff f8ae 	bl	d0042438 <vec3Normalize>
d00432dc:	edd4 1a04 	vldr	s3, [r4, #16]
d00432e0:	ed94 2a05 	vldr	s4, [r4, #20]
d00432e4:	edd4 2a06 	vldr	s5, [r4, #24]
d00432e8:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d00432ec:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d00432f0:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d00432f4:	f7ff f88a 	bl	d004240c <vec3Cross>
d00432f8:	ed84 0a07 	vstr	s0, [r4, #28]
d00432fc:	edc4 0a08 	vstr	s1, [r4, #32]
d0043300:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d0043304:	f7ff f898 	bl	d0042438 <vec3Normalize>
d0043308:	ed84 0a07 	vstr	s0, [r4, #28]
d004330c:	edc4 0a08 	vstr	s1, [r4, #32]
d0043310:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d0043314:	bd10      	pop	{r4, pc}
d0043316:	bf00      	nop

d0043318 <meshComputeBoundsRadius>:
d0043318:	b1f0      	cbz	r0, d0043358 <meshComputeBoundsRadius+0x40>
d004331a:	6803      	ldr	r3, [r0, #0]
d004331c:	b1e3      	cbz	r3, d0043358 <meshComputeBoundsRadius+0x40>
d004331e:	6842      	ldr	r2, [r0, #4]
d0043320:	2a00      	cmp	r2, #0
d0043322:	dd19      	ble.n	d0043358 <meshComputeBoundsRadius+0x40>
d0043324:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d0043328:	ed9f 6a0d 	vldr	s12, [pc, #52]	; d0043360 <meshComputeBoundsRadius+0x48>
d004332c:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d0043330:	edd3 7a01 	vldr	s15, [r3, #4]
d0043334:	330c      	adds	r3, #12
d0043336:	ed53 6a03 	vldr	s13, [r3, #-12]
d004333a:	ee67 7aa7 	vmul.f32	s15, s15, s15
d004333e:	ed13 7a01 	vldr	s14, [r3, #-4]
d0043342:	429a      	cmp	r2, r3
d0043344:	eee6 7aa6 	vfma.f32	s15, s13, s13
d0043348:	eee7 7a07 	vfma.f32	s15, s14, s14
d004334c:	fe86 6a27 	vmaxnm.f32	s12, s12, s15
d0043350:	d1ee      	bne.n	d0043330 <meshComputeBoundsRadius+0x18>
d0043352:	eeb1 0ac6 	vsqrt.f32	s0, s12
d0043356:	4770      	bx	lr
d0043358:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0043360 <meshComputeBoundsRadius+0x48>
d004335c:	4770      	bx	lr
d004335e:	bf00      	nop
d0043360:	00000000 	.word	0x00000000

d0043364 <entityWorldSpawn>:
d0043364:	b4f0      	push	{r4, r5, r6, r7}
d0043366:	4d20      	ldr	r5, [pc, #128]	; (d00433e8 <entityWorldSpawn+0x84>)
d0043368:	b084      	sub	sp, #16
d004336a:	2300      	movs	r3, #0
d004336c:	462a      	mov	r2, r5
d004336e:	ed8d 0a01 	vstr	s0, [sp, #4]
d0043372:	edcd 0a02 	vstr	s1, [sp, #8]
d0043376:	ed8d 1a03 	vstr	s2, [sp, #12]
d004337a:	e003      	b.n	d0043384 <entityWorldSpawn+0x20>
d004337c:	3301      	adds	r3, #1
d004337e:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d0043382:	d02b      	beq.n	d00433dc <entityWorldSpawn+0x78>
d0043384:	f892 4034 	ldrb.w	r4, [r2, #52]	; 0x34
d0043388:	3260      	adds	r2, #96	; 0x60
d004338a:	2c00      	cmp	r4, #0
d004338c:	d1f6      	bne.n	d004337c <entityWorldSpawn+0x18>
d004338e:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0043392:	4f16      	ldr	r7, [pc, #88]	; (d00433ec <entityWorldSpawn+0x88>)
d0043394:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d0043398:	2600      	movs	r6, #0
d004339a:	eb05 1542 	add.w	r5, r5, r2, lsl #5
d004339e:	f240 1c01 	movw	ip, #257	; 0x101
d00433a2:	eb07 1742 	add.w	r7, r7, r2, lsl #5
d00433a6:	aa04      	add	r2, sp, #16
d00433a8:	60e8      	str	r0, [r5, #12]
d00433aa:	61e9      	str	r1, [r5, #28]
d00433ac:	62e9      	str	r1, [r5, #44]	; 0x2c
d00433ae:	61a9      	str	r1, [r5, #24]
d00433b0:	622e      	str	r6, [r5, #32]
d00433b2:	626e      	str	r6, [r5, #36]	; 0x24
d00433b4:	62ae      	str	r6, [r5, #40]	; 0x28
d00433b6:	632e      	str	r6, [r5, #48]	; 0x30
d00433b8:	612e      	str	r6, [r5, #16]
d00433ba:	616e      	str	r6, [r5, #20]
d00433bc:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d00433c0:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d00433c4:	4618      	mov	r0, r3
d00433c6:	f8a7 c014 	strh.w	ip, [r7, #20]
d00433ca:	f885 4036 	strb.w	r4, [r5, #54]	; 0x36
d00433ce:	63ee      	str	r6, [r5, #60]	; 0x3c
d00433d0:	642e      	str	r6, [r5, #64]	; 0x40
d00433d2:	646e      	str	r6, [r5, #68]	; 0x44
d00433d4:	63ae      	str	r6, [r5, #56]	; 0x38
d00433d6:	b004      	add	sp, #16
d00433d8:	bcf0      	pop	{r4, r5, r6, r7}
d00433da:	4770      	bx	lr
d00433dc:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d00433e0:	4618      	mov	r0, r3
d00433e2:	b004      	add	sp, #16
d00433e4:	bcf0      	pop	{r4, r5, r6, r7}
d00433e6:	4770      	bx	lr
d00433e8:	d00e1ca0 	.word	0xd00e1ca0
d00433ec:	d00e1cc0 	.word	0xd00e1cc0

d00433f0 <entityMoveForward>:
d00433f0:	28ff      	cmp	r0, #255	; 0xff
d00433f2:	d82b      	bhi.n	d004344c <entityMoveForward+0x5c>
d00433f4:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d00433f8:	b510      	push	{r4, lr}
d00433fa:	4c15      	ldr	r4, [pc, #84]	; (d0043450 <entityMoveForward+0x60>)
d00433fc:	b084      	sub	sp, #16
d00433fe:	eb04 1440 	add.w	r4, r4, r0, lsl #5
d0043402:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0043406:	b1fb      	cbz	r3, d0043448 <entityMoveForward+0x58>
d0043408:	68e3      	ldr	r3, [r4, #12]
d004340a:	b1eb      	cbz	r3, d0043448 <entityMoveForward+0x58>
d004340c:	eef0 1a40 	vmov.f32	s3, s0
d0043410:	edd4 0a05 	vldr	s1, [r4, #20]
d0043414:	ed94 0a04 	vldr	s0, [r4, #16]
d0043418:	ed94 1a06 	vldr	s2, [r4, #24]
d004341c:	f7fe ffe0 	bl	d00423e0 <vec3Scale>
d0043420:	eef0 1a40 	vmov.f32	s3, s0
d0043424:	eeb0 2a60 	vmov.f32	s4, s1
d0043428:	ed94 0a00 	vldr	s0, [r4]
d004342c:	eef0 2a41 	vmov.f32	s5, s2
d0043430:	edd4 0a01 	vldr	s1, [r4, #4]
d0043434:	ed94 1a02 	vldr	s2, [r4, #8]
d0043438:	f7fe ffc8 	bl	d00423cc <vec3Add>
d004343c:	ed84 0a00 	vstr	s0, [r4]
d0043440:	edc4 0a01 	vstr	s1, [r4, #4]
d0043444:	ed84 1a02 	vstr	s2, [r4, #8]
d0043448:	b004      	add	sp, #16
d004344a:	bd10      	pop	{r4, pc}
d004344c:	4770      	bx	lr
d004344e:	bf00      	nop
d0043450:	d00e1ca0 	.word	0xd00e1ca0

d0043454 <entityTurnLocal>:
d0043454:	28ff      	cmp	r0, #255	; 0xff
d0043456:	d82c      	bhi.n	d00434b2 <entityTurnLocal+0x5e>
d0043458:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d004345c:	b510      	push	{r4, lr}
d004345e:	4c65      	ldr	r4, [pc, #404]	; (d00435f4 <entityTurnLocal+0x1a0>)
d0043460:	eb04 1440 	add.w	r4, r4, r0, lsl #5
d0043464:	ed2d 8b04 	vpush	{d8-d9}
d0043468:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d004346c:	b1f3      	cbz	r3, d00434ac <entityTurnLocal+0x58>
d004346e:	68e3      	ldr	r3, [r4, #12]
d0043470:	b1e3      	cbz	r3, d00434ac <entityTurnLocal+0x58>
d0043472:	eeb5 0a40 	vcmp.f32	s0, #0.0
d0043476:	eeb0 9a40 	vmov.f32	s18, s0
d004347a:	eef0 8a60 	vmov.f32	s17, s1
d004347e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043482:	eeb0 8a41 	vmov.f32	s16, s2
d0043486:	f040 8081 	bne.w	d004358c <entityTurnLocal+0x138>
d004348a:	eef5 8a40 	vcmp.f32	s17, #0.0
d004348e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043492:	d148      	bne.n	d0043526 <entityTurnLocal+0xd2>
d0043494:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0043498:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004349c:	d10a      	bne.n	d00434b4 <entityTurnLocal+0x60>
d004349e:	4620      	mov	r0, r4
d00434a0:	ecbd 8b04 	vpop	{d8-d9}
d00434a4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00434a8:	f7ff bee0 	b.w	d004326c <normalizeEntity.part.0>
d00434ac:	ecbd 8b04 	vpop	{d8-d9}
d00434b0:	bd10      	pop	{r4, pc}
d00434b2:	4770      	bx	lr
d00434b4:	ed94 0a07 	vldr	s0, [r4, #28]
d00434b8:	eeb0 3a48 	vmov.f32	s6, s16
d00434bc:	edd4 0a08 	vldr	s1, [r4, #32]
d00434c0:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00434c4:	edd4 1a04 	vldr	s3, [r4, #16]
d00434c8:	ed94 2a05 	vldr	s4, [r4, #20]
d00434cc:	edd4 2a06 	vldr	s5, [r4, #24]
d00434d0:	f7ff f802 	bl	d00424d8 <rotateAroundAxis>
d00434d4:	eef0 6a40 	vmov.f32	s13, s0
d00434d8:	eeb0 7a60 	vmov.f32	s14, s1
d00434dc:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00434e0:	eef0 7a41 	vmov.f32	s15, s2
d00434e4:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00434e8:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00434ec:	eeb0 3a48 	vmov.f32	s6, s16
d00434f0:	edd4 1a04 	vldr	s3, [r4, #16]
d00434f4:	ed94 2a05 	vldr	s4, [r4, #20]
d00434f8:	edd4 2a06 	vldr	s5, [r4, #24]
d00434fc:	edc4 6a07 	vstr	s13, [r4, #28]
d0043500:	ed84 7a08 	vstr	s14, [r4, #32]
d0043504:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0043508:	f7fe ffe6 	bl	d00424d8 <rotateAroundAxis>
d004350c:	4620      	mov	r0, r4
d004350e:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0043512:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0043516:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d004351a:	ecbd 8b04 	vpop	{d8-d9}
d004351e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0043522:	f7ff bea3 	b.w	d004326c <normalizeEntity.part.0>
d0043526:	ed94 0a04 	vldr	s0, [r4, #16]
d004352a:	eeb0 3a68 	vmov.f32	s6, s17
d004352e:	edd4 0a05 	vldr	s1, [r4, #20]
d0043532:	ed94 1a06 	vldr	s2, [r4, #24]
d0043536:	edd4 1a07 	vldr	s3, [r4, #28]
d004353a:	ed94 2a08 	vldr	s4, [r4, #32]
d004353e:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d0043542:	f7fe ffc9 	bl	d00424d8 <rotateAroundAxis>
d0043546:	eef0 6a40 	vmov.f32	s13, s0
d004354a:	eeb0 7a60 	vmov.f32	s14, s1
d004354e:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0043552:	eef0 7a41 	vmov.f32	s15, s2
d0043556:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d004355a:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d004355e:	eeb0 3a68 	vmov.f32	s6, s17
d0043562:	edd4 1a07 	vldr	s3, [r4, #28]
d0043566:	ed94 2a08 	vldr	s4, [r4, #32]
d004356a:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d004356e:	edc4 6a04 	vstr	s13, [r4, #16]
d0043572:	ed84 7a05 	vstr	s14, [r4, #20]
d0043576:	edc4 7a06 	vstr	s15, [r4, #24]
d004357a:	f7fe ffad 	bl	d00424d8 <rotateAroundAxis>
d004357e:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0043582:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0043586:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d004358a:	e783      	b.n	d0043494 <entityTurnLocal+0x40>
d004358c:	eeb0 3a40 	vmov.f32	s6, s0
d0043590:	edd4 0a05 	vldr	s1, [r4, #20]
d0043594:	ed94 0a04 	vldr	s0, [r4, #16]
d0043598:	ed94 1a06 	vldr	s2, [r4, #24]
d004359c:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d00435a0:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d00435a4:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d00435a8:	f7fe ff96 	bl	d00424d8 <rotateAroundAxis>
d00435ac:	eef0 6a40 	vmov.f32	s13, s0
d00435b0:	eeb0 7a60 	vmov.f32	s14, s1
d00435b4:	ed94 0a07 	vldr	s0, [r4, #28]
d00435b8:	eef0 7a41 	vmov.f32	s15, s2
d00435bc:	edd4 0a08 	vldr	s1, [r4, #32]
d00435c0:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00435c4:	eeb0 3a49 	vmov.f32	s6, s18
d00435c8:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d00435cc:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d00435d0:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d00435d4:	edc4 6a04 	vstr	s13, [r4, #16]
d00435d8:	ed84 7a05 	vstr	s14, [r4, #20]
d00435dc:	edc4 7a06 	vstr	s15, [r4, #24]
d00435e0:	f7fe ff7a 	bl	d00424d8 <rotateAroundAxis>
d00435e4:	ed84 0a07 	vstr	s0, [r4, #28]
d00435e8:	edc4 0a08 	vstr	s1, [r4, #32]
d00435ec:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d00435f0:	e74b      	b.n	d004348a <entityTurnLocal+0x36>
d00435f2:	bf00      	nop
d00435f4:	d00e1ca0 	.word	0xd00e1ca0

d00435f8 <buildLightingCLUT>:
d00435f8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00435fc:	f1b2 0900 	subs.w	r9, r2, #0
d0043600:	b085      	sub	sp, #20
d0043602:	9c0e      	ldr	r4, [sp, #56]	; 0x38
d0043604:	f340 8212 	ble.w	d0043a2c <buildLightingCLUT+0x434>
d0043608:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d004360c:	4f24      	ldr	r7, [pc, #144]	; (d00436a0 <buildLightingCLUT+0xa8>)
d004360e:	eb09 0c49 	add.w	ip, r9, r9, lsl #1
d0043612:	edd4 4a00 	vldr	s9, [r4]
d0043616:	ed94 5a01 	vldr	s10, [r4, #4]
d004361a:	eb09 0807 	add.w	r8, r9, r7
d004361e:	edd4 5a02 	vldr	s11, [r4, #8]
d0043622:	eb07 0e49 	add.w	lr, r7, r9, lsl #1
d0043626:	ed94 6a03 	vldr	s12, [r4, #12]
d004362a:	44bc      	add	ip, r7
d004362c:	edd4 6a04 	vldr	s13, [r4, #16]
d0043630:	eb07 0789 	add.w	r7, r7, r9, lsl #2
d0043634:	3904      	subs	r1, #4
d0043636:	ee77 4ae4 	vsub.f32	s9, s15, s9
d004363a:	ee37 5ac5 	vsub.f32	s10, s15, s10
d004363e:	ed9f 7a19 	vldr	s14, [pc, #100]	; d00436a4 <buildLightingCLUT+0xac>
d0043642:	ee77 5ae5 	vsub.f32	s11, s15, s11
d0043646:	f100 067c 	add.w	r6, r0, #124	; 0x7c
d004364a:	ee37 6ac6 	vsub.f32	s12, s15, s12
d004364e:	eb00 0888 	add.w	r8, r0, r8, lsl #2
d0043652:	ee77 6ae6 	vsub.f32	s13, s15, s13
d0043656:	eb00 0e8e 	add.w	lr, r0, lr, lsl #2
d004365a:	eb00 0c8c 	add.w	ip, r0, ip, lsl #2
d004365e:	f3c3 4507 	ubfx	r5, r3, #16, #8
d0043662:	eb00 0787 	add.w	r7, r0, r7, lsl #2
d0043666:	f3c3 2007 	ubfx	r0, r3, #8, #8
d004366a:	eb01 0989 	add.w	r9, r1, r9, lsl #2
d004366e:	fec4 4a87 	vmaxnm.f32	s9, s9, s14
d0043672:	0e1c      	lsrs	r4, r3, #24
d0043674:	fe85 5a07 	vmaxnm.f32	s10, s10, s14
d0043678:	b2da      	uxtb	r2, r3
d004367a:	fec5 5a87 	vmaxnm.f32	s11, s11, s14
d004367e:	fe86 6a07 	vmaxnm.f32	s12, s12, s14
d0043682:	fec6 6a87 	vmaxnm.f32	s13, s13, s14
d0043686:	fec4 4ae7 	vminnm.f32	s9, s9, s15
d004368a:	fe85 5a67 	vminnm.f32	s10, s10, s15
d004368e:	fec5 5ae7 	vminnm.f32	s11, s11, s15
d0043692:	fe86 6a67 	vminnm.f32	s12, s12, s15
d0043696:	fec6 6ae7 	vminnm.f32	s13, s13, s15
d004369a:	9601      	str	r6, [sp, #4]
d004369c:	e004      	b.n	d00436a8 <buildLightingCLUT+0xb0>
d004369e:	bf00      	nop
d00436a0:	4000001f 	.word	0x4000001f
d00436a4:	00000000 	.word	0x00000000
d00436a8:	f851 3f04 	ldr.w	r3, [r1, #4]!
d00436ac:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d00436b0:	0e1e      	lsrs	r6, r3, #24
d00436b2:	fa5f fa83 	uxtb.w	sl, r3
d00436b6:	4549      	cmp	r1, r9
d00436b8:	ee07 6a10 	vmov	s14, r6
d00436bc:	eba5 060b 	sub.w	r6, r5, fp
d00436c0:	ee04 ba10 	vmov	s8, fp
d00436c4:	ee07 6a90 	vmov	s15, r6
d00436c8:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d00436cc:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d00436d0:	f3c3 2307 	ubfx	r3, r3, #8, #8
d00436d4:	ee02 6a10 	vmov	s4, r6
d00436d8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00436dc:	eba2 060a 	sub.w	r6, r2, sl
d00436e0:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00436e4:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d00436e8:	ee04 aa10 	vmov	s8, sl
d00436ec:	ee02 6a90 	vmov	s5, r6
d00436f0:	eba0 0603 	sub.w	r6, r0, r3
d00436f4:	eee4 3aa7 	vfma.f32	s7, s9, s15
d00436f8:	ee07 3a90 	vmov	s15, r3
d00436fc:	eea4 7a82 	vfma.f32	s14, s9, s4
d0043700:	ee03 6a10 	vmov	s6, r6
d0043704:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0043708:	9e01      	ldr	r6, [sp, #4]
d004370a:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d004370e:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0043712:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0043716:	eea4 4aa2 	vfma.f32	s8, s9, s5
d004371a:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d004371e:	eee4 7a83 	vfma.f32	s15, s9, s6
d0043722:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0043726:	edcd 3a02 	vstr	s7, [sp, #8]
d004372a:	f89d a008 	ldrb.w	sl, [sp, #8]
d004372e:	ee17 3a10 	vmov	r3, s14
d0043732:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0043736:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d004373a:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004373e:	ed8d 7a02 	vstr	s14, [sp, #8]
d0043742:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0043746:	f89d b008 	ldrb.w	fp, [sp, #8]
d004374a:	edcd 7a03 	vstr	s15, [sp, #12]
d004374e:	ea43 030b 	orr.w	r3, r3, fp
d0043752:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0043756:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d004375a:	f846 3f04 	str.w	r3, [r6, #4]!
d004375e:	680b      	ldr	r3, [r1, #0]
d0043760:	9601      	str	r6, [sp, #4]
d0043762:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0043766:	ea4f 6613 	mov.w	r6, r3, lsr #24
d004376a:	fa5f fa83 	uxtb.w	sl, r3
d004376e:	ee07 6a10 	vmov	s14, r6
d0043772:	eba5 060b 	sub.w	r6, r5, fp
d0043776:	ee04 ba10 	vmov	s8, fp
d004377a:	ee07 6a90 	vmov	s15, r6
d004377e:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0043782:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0043786:	f3c3 2307 	ubfx	r3, r3, #8, #8
d004378a:	ee02 6a10 	vmov	s4, r6
d004378e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0043792:	eba2 060a 	sub.w	r6, r2, sl
d0043796:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004379a:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d004379e:	ee04 aa10 	vmov	s8, sl
d00437a2:	ee02 6a90 	vmov	s5, r6
d00437a6:	eba0 0603 	sub.w	r6, r0, r3
d00437aa:	eee5 3a27 	vfma.f32	s7, s10, s15
d00437ae:	ee07 3a90 	vmov	s15, r3
d00437b2:	eea5 7a02 	vfma.f32	s14, s10, s4
d00437b6:	ee03 6a10 	vmov	s6, r6
d00437ba:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d00437be:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00437c2:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d00437c6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00437ca:	eea5 4a22 	vfma.f32	s8, s10, s5
d00437ce:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d00437d2:	eee5 7a03 	vfma.f32	s15, s10, s6
d00437d6:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00437da:	edcd 3a02 	vstr	s7, [sp, #8]
d00437de:	f89d a008 	ldrb.w	sl, [sp, #8]
d00437e2:	ee17 3a10 	vmov	r3, s14
d00437e6:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d00437ea:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d00437ee:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00437f2:	ed8d 7a02 	vstr	s14, [sp, #8]
d00437f6:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d00437fa:	f89d b008 	ldrb.w	fp, [sp, #8]
d00437fe:	edcd 7a03 	vstr	s15, [sp, #12]
d0043802:	ea43 030b 	orr.w	r3, r3, fp
d0043806:	f89d a00c 	ldrb.w	sl, [sp, #12]
d004380a:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d004380e:	f848 3f04 	str.w	r3, [r8, #4]!
d0043812:	680b      	ldr	r3, [r1, #0]
d0043814:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0043818:	ea4f 6613 	mov.w	r6, r3, lsr #24
d004381c:	fa5f fa83 	uxtb.w	sl, r3
d0043820:	ee07 6a10 	vmov	s14, r6
d0043824:	eba5 060b 	sub.w	r6, r5, fp
d0043828:	ee04 ba10 	vmov	s8, fp
d004382c:	ee07 6a90 	vmov	s15, r6
d0043830:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0043834:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0043838:	f3c3 2307 	ubfx	r3, r3, #8, #8
d004383c:	ee02 6a10 	vmov	s4, r6
d0043840:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0043844:	eba2 060a 	sub.w	r6, r2, sl
d0043848:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004384c:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0043850:	ee04 aa10 	vmov	s8, sl
d0043854:	ee02 6a90 	vmov	s5, r6
d0043858:	eba0 0603 	sub.w	r6, r0, r3
d004385c:	eee5 3aa7 	vfma.f32	s7, s11, s15
d0043860:	ee07 3a90 	vmov	s15, r3
d0043864:	eea5 7a82 	vfma.f32	s14, s11, s4
d0043868:	ee03 6a10 	vmov	s6, r6
d004386c:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0043870:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0043874:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0043878:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004387c:	eea5 4aa2 	vfma.f32	s8, s11, s5
d0043880:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0043884:	eee5 7a83 	vfma.f32	s15, s11, s6
d0043888:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d004388c:	edcd 3a02 	vstr	s7, [sp, #8]
d0043890:	f89d a008 	ldrb.w	sl, [sp, #8]
d0043894:	ee17 3a10 	vmov	r3, s14
d0043898:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d004389c:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d00438a0:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00438a4:	ed8d 7a02 	vstr	s14, [sp, #8]
d00438a8:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d00438ac:	f89d b008 	ldrb.w	fp, [sp, #8]
d00438b0:	edcd 7a03 	vstr	s15, [sp, #12]
d00438b4:	ea43 030b 	orr.w	r3, r3, fp
d00438b8:	f89d a00c 	ldrb.w	sl, [sp, #12]
d00438bc:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d00438c0:	f84e 3f04 	str.w	r3, [lr, #4]!
d00438c4:	680b      	ldr	r3, [r1, #0]
d00438c6:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d00438ca:	ea4f 6613 	mov.w	r6, r3, lsr #24
d00438ce:	fa5f fa83 	uxtb.w	sl, r3
d00438d2:	ee07 6a10 	vmov	s14, r6
d00438d6:	eba5 060b 	sub.w	r6, r5, fp
d00438da:	ee04 ba10 	vmov	s8, fp
d00438de:	ee07 6a90 	vmov	s15, r6
d00438e2:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d00438e6:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d00438ea:	f3c3 2307 	ubfx	r3, r3, #8, #8
d00438ee:	ee02 6a10 	vmov	s4, r6
d00438f2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00438f6:	eba2 060a 	sub.w	r6, r2, sl
d00438fa:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00438fe:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0043902:	ee04 aa10 	vmov	s8, sl
d0043906:	ee02 6a90 	vmov	s5, r6
d004390a:	eba0 0603 	sub.w	r6, r0, r3
d004390e:	eee6 3a27 	vfma.f32	s7, s12, s15
d0043912:	ee07 3a90 	vmov	s15, r3
d0043916:	eea6 7a02 	vfma.f32	s14, s12, s4
d004391a:	ee03 6a10 	vmov	s6, r6
d004391e:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0043922:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0043926:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d004392a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004392e:	eea6 4a22 	vfma.f32	s8, s12, s5
d0043932:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0043936:	eee6 7a03 	vfma.f32	s15, s12, s6
d004393a:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d004393e:	edcd 3a02 	vstr	s7, [sp, #8]
d0043942:	f89d a008 	ldrb.w	sl, [sp, #8]
d0043946:	ee17 3a10 	vmov	r3, s14
d004394a:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d004394e:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0043952:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0043956:	ed8d 7a02 	vstr	s14, [sp, #8]
d004395a:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d004395e:	f89d b008 	ldrb.w	fp, [sp, #8]
d0043962:	edcd 7a03 	vstr	s15, [sp, #12]
d0043966:	ea43 030b 	orr.w	r3, r3, fp
d004396a:	f89d a00c 	ldrb.w	sl, [sp, #12]
d004396e:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0043972:	f84c 3f04 	str.w	r3, [ip, #4]!
d0043976:	680b      	ldr	r3, [r1, #0]
d0043978:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d004397c:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0043980:	fa5f fa83 	uxtb.w	sl, r3
d0043984:	ee07 6a10 	vmov	s14, r6
d0043988:	eba5 060b 	sub.w	r6, r5, fp
d004398c:	ee04 ba10 	vmov	s8, fp
d0043990:	ee07 6a90 	vmov	s15, r6
d0043994:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0043998:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d004399c:	f3c3 2307 	ubfx	r3, r3, #8, #8
d00439a0:	ee02 6a10 	vmov	s4, r6
d00439a4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00439a8:	eba2 060a 	sub.w	r6, r2, sl
d00439ac:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00439b0:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d00439b4:	ee04 aa10 	vmov	s8, sl
d00439b8:	ee02 6a90 	vmov	s5, r6
d00439bc:	eba0 0603 	sub.w	r6, r0, r3
d00439c0:	eee6 3aa7 	vfma.f32	s7, s13, s15
d00439c4:	ee07 3a90 	vmov	s15, r3
d00439c8:	eea6 7a82 	vfma.f32	s14, s13, s4
d00439cc:	ee03 6a10 	vmov	s6, r6
d00439d0:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00439d4:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d00439d8:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d00439dc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00439e0:	eea6 4aa2 	vfma.f32	s8, s13, s5
d00439e4:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d00439e8:	eee6 7a83 	vfma.f32	s15, s13, s6
d00439ec:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00439f0:	edcd 3a02 	vstr	s7, [sp, #8]
d00439f4:	f89d a008 	ldrb.w	sl, [sp, #8]
d00439f8:	ee17 3a10 	vmov	r3, s14
d00439fc:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0043a00:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0043a04:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0043a08:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0043a0c:	ed8d 7a02 	vstr	s14, [sp, #8]
d0043a10:	f89d b008 	ldrb.w	fp, [sp, #8]
d0043a14:	edcd 7a03 	vstr	s15, [sp, #12]
d0043a18:	ea43 030b 	orr.w	r3, r3, fp
d0043a1c:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0043a20:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0043a24:	f847 3f04 	str.w	r3, [r7, #4]!
d0043a28:	f47f ae3e 	bne.w	d00436a8 <buildLightingCLUT+0xb0>
d0043a2c:	b005      	add	sp, #20
d0043a2e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0043a32:	bf00      	nop

d0043a34 <brightnessToShadeF>:
d0043a34:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0043a38:	eddf 7a09 	vldr	s15, [pc, #36]	; d0043a60 <brightnessToShadeF+0x2c>
d0043a3c:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d0043a40:	eef7 6a08 	vmov.f32	s13, #120	; 0x3fc00000  1.5
d0043a44:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d0043a48:	fec0 7a47 	vminnm.f32	s15, s0, s14
d0043a4c:	eeb1 0a04 	vmov.f32	s0, #20	; 0x40a00000  5.0
d0043a50:	eee7 6ac6 	vfms.f32	s13, s15, s12
d0043a54:	eea6 7ae7 	vfms.f32	s14, s13, s15
d0043a58:	ee27 0a00 	vmul.f32	s0, s14, s0
d0043a5c:	4770      	bx	lr
d0043a5e:	bf00      	nop
d0043a60:	00000000 	.word	0x00000000

d0043a64 <lightsGet>:
d0043a64:	4800      	ldr	r0, [pc, #0]	; (d0043a68 <lightsGet+0x4>)
d0043a66:	4770      	bx	lr
d0043a68:	d00495c0 	.word	0xd00495c0

d0043a6c <lightsGetCount>:
d0043a6c:	4b01      	ldr	r3, [pc, #4]	; (d0043a74 <lightsGetCount+0x8>)
d0043a6e:	6818      	ldr	r0, [r3, #0]
d0043a70:	4770      	bx	lr
d0043a72:	bf00      	nop
d0043a74:	d00495a0 	.word	0xd00495a0

d0043a78 <lightsClear>:
d0043a78:	4b01      	ldr	r3, [pc, #4]	; (d0043a80 <lightsClear+0x8>)
d0043a7a:	2200      	movs	r2, #0
d0043a7c:	601a      	str	r2, [r3, #0]
d0043a7e:	4770      	bx	lr
d0043a80:	d00495a0 	.word	0xd00495a0

d0043a84 <addDirectionalLight>:
d0043a84:	b5f0      	push	{r4, r5, r6, r7, lr}
d0043a86:	4f15      	ldr	r7, [pc, #84]	; (d0043adc <addDirectionalLight+0x58>)
d0043a88:	683d      	ldr	r5, [r7, #0]
d0043a8a:	2d07      	cmp	r5, #7
d0043a8c:	ed2d 8b02 	vpush	{d8}
d0043a90:	b085      	sub	sp, #20
d0043a92:	dc1f      	bgt.n	d0043ad4 <addDirectionalLight+0x50>
d0043a94:	4912      	ldr	r1, [pc, #72]	; (d0043ae0 <addDirectionalLight+0x5c>)
d0043a96:	2300      	movs	r3, #0
d0043a98:	4606      	mov	r6, r0
d0043a9a:	01aa      	lsls	r2, r5, #6
d0043a9c:	eb01 1485 	add.w	r4, r1, r5, lsl #6
d0043aa0:	2001      	movs	r0, #1
d0043aa2:	eeb0 8a61 	vmov.f32	s16, s3
d0043aa6:	6063      	str	r3, [r4, #4]
d0043aa8:	60a3      	str	r3, [r4, #8]
d0043aaa:	60e3      	str	r3, [r4, #12]
d0043aac:	5488      	strb	r0, [r1, r2]
d0043aae:	f7fe fcc3 	bl	d0042438 <vec3Normalize>
d0043ab2:	683b      	ldr	r3, [r7, #0]
d0043ab4:	ed84 8a07 	vstr	s16, [r4, #28]
d0043ab8:	3301      	adds	r3, #1
d0043aba:	62e6      	str	r6, [r4, #44]	; 0x2c
d0043abc:	ed84 0a04 	vstr	s0, [r4, #16]
d0043ac0:	edc4 0a05 	vstr	s1, [r4, #20]
d0043ac4:	ed84 1a06 	vstr	s2, [r4, #24]
d0043ac8:	603b      	str	r3, [r7, #0]
d0043aca:	4628      	mov	r0, r5
d0043acc:	b005      	add	sp, #20
d0043ace:	ecbd 8b02 	vpop	{d8}
d0043ad2:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0043ad4:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0043ad8:	e7f7      	b.n	d0043aca <addDirectionalLight+0x46>
d0043ada:	bf00      	nop
d0043adc:	d00495a0 	.word	0xd00495a0
d0043ae0:	d00495c0 	.word	0xd00495c0

d0043ae4 <setDefaultRenderMode>:
d0043ae4:	2300      	movs	r3, #0
d0043ae6:	4803      	ldr	r0, [pc, #12]	; (d0043af4 <setDefaultRenderMode+0x10>)
d0043ae8:	4903      	ldr	r1, [pc, #12]	; (d0043af8 <setDefaultRenderMode+0x14>)
d0043aea:	4a04      	ldr	r2, [pc, #16]	; (d0043afc <setDefaultRenderMode+0x18>)
d0043aec:	6003      	str	r3, [r0, #0]
d0043aee:	600b      	str	r3, [r1, #0]
d0043af0:	6013      	str	r3, [r2, #0]
d0043af2:	4770      	bx	lr
d0043af4:	d00557c0 	.word	0xd00557c0
d0043af8:	d00d57e0 	.word	0xd00d57e0
d0043afc:	d00d57e4 	.word	0xd00d57e4

d0043b00 <enableFlatMode>:
d0043b00:	4b01      	ldr	r3, [pc, #4]	; (d0043b08 <enableFlatMode+0x8>)
d0043b02:	6018      	str	r0, [r3, #0]
d0043b04:	4770      	bx	lr
d0043b06:	bf00      	nop
d0043b08:	d00557c0 	.word	0xd00557c0

d0043b0c <clipTriangleToFrustum>:
d0043b0c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0043b10:	ed2d 8b02 	vpush	{d8}
d0043b14:	b0ba      	sub	sp, #232	; 0xe8
d0043b16:	ed91 7a10 	vldr	s14, [r1, #64]	; 0x40
d0043b1a:	4605      	mov	r5, r0
d0043b1c:	aa07      	add	r2, sp, #28
d0043b1e:	ab04      	add	r3, sp, #16
d0043b20:	ed8d 0a07 	vstr	s0, [sp, #28]
d0043b24:	ac0a      	add	r4, sp, #40	; 0x28
d0043b26:	edcd 0a08 	vstr	s1, [sp, #32]
d0043b2a:	af0d      	add	r7, sp, #52	; 0x34
d0043b2c:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d0043b30:	ae01      	add	r6, sp, #4
d0043b32:	edcd 1a04 	vstr	s3, [sp, #16]
d0043b36:	ed8d 2a05 	vstr	s4, [sp, #20]
d0043b3a:	edcd 2a06 	vstr	s5, [sp, #24]
d0043b3e:	ed8d 4a03 	vstr	s8, [sp, #12]
d0043b42:	ed8d 3a01 	vstr	s6, [sp, #4]
d0043b46:	edcd 3a02 	vstr	s7, [sp, #8]
d0043b4a:	ca07      	ldmia	r2, {r0, r1, r2}
d0043b4c:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d0043b50:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0043b54:	ab10      	add	r3, sp, #64	; 0x40
d0043b56:	ed9d 6a0a 	vldr	s12, [sp, #40]	; 0x28
d0043b5a:	e887 0007 	stmia.w	r7, {r0, r1, r2}
d0043b5e:	e896 0007 	ldmia.w	r6, {r0, r1, r2}
d0043b62:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0043b66:	ed9d 4a12 	vldr	s8, [sp, #72]	; 0x48
d0043b6a:	eddd 5a10 	vldr	s11, [sp, #64]	; 0x40
d0043b6e:	ee34 5a47 	vsub.f32	s10, s8, s14
d0043b72:	eddd 7a0c 	vldr	s15, [sp, #48]	; 0x30
d0043b76:	eddd 1a11 	vldr	s3, [sp, #68]	; 0x44
d0043b7a:	ee77 4ac7 	vsub.f32	s9, s15, s14
d0043b7e:	eddd 6a0b 	vldr	s13, [sp, #44]	; 0x2c
d0043b82:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d0043b86:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043b8a:	eef5 4ac0 	vcmpe.f32	s9, #0.0
d0043b8e:	bfac      	ite	ge
d0043b90:	2101      	movge	r1, #1
d0043b92:	2100      	movlt	r1, #0
d0043b94:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043b98:	bfac      	ite	ge
d0043b9a:	2001      	movge	r0, #1
d0043b9c:	2000      	movlt	r0, #0
d0043b9e:	2900      	cmp	r1, #0
d0043ba0:	f000 825d 	beq.w	d004405e <clipTriangleToFrustum+0x552>
d0043ba4:	2800      	cmp	r0, #0
d0043ba6:	f000 825a 	beq.w	d004405e <clipTriangleToFrustum+0x552>
d0043baa:	2301      	movs	r3, #1
d0043bac:	ed8d 6a22 	vstr	s12, [sp, #136]	; 0x88
d0043bb0:	edcd 6a23 	vstr	s13, [sp, #140]	; 0x8c
d0043bb4:	edcd 7a24 	vstr	s15, [sp, #144]	; 0x90
d0043bb8:	eddd 3a0f 	vldr	s7, [sp, #60]	; 0x3c
d0043bbc:	f000 0201 	and.w	r2, r0, #1
d0043bc0:	ed9d 2a0d 	vldr	s4, [sp, #52]	; 0x34
d0043bc4:	ee33 3ac7 	vsub.f32	s6, s7, s14
d0043bc8:	eddd 2a0e 	vldr	s5, [sp, #56]	; 0x38
d0043bcc:	eeb5 3ac0 	vcmpe.f32	s6, #0.0
d0043bd0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043bd4:	bfb6      	itet	lt
d0043bd6:	2200      	movlt	r2, #0
d0043bd8:	2601      	movge	r6, #1
d0043bda:	2600      	movlt	r6, #0
d0043bdc:	2a00      	cmp	r2, #0
d0043bde:	f000 8277 	beq.w	d00440d0 <clipTriangleToFrustum+0x5c4>
d0043be2:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0043be6:	ae22      	add	r6, sp, #136	; 0x88
d0043be8:	3301      	adds	r3, #1
d0043bea:	eb06 0080 	add.w	r0, r6, r0, lsl #2
d0043bee:	ed80 2a00 	vstr	s4, [r0]
d0043bf2:	edc0 2a01 	vstr	s5, [r0, #4]
d0043bf6:	edc0 3a02 	vstr	s7, [r0, #8]
d0043bfa:	2a00      	cmp	r2, #0
d0043bfc:	f000 828e 	beq.w	d004411c <clipTriangleToFrustum+0x610>
d0043c00:	2900      	cmp	r1, #0
d0043c02:	f000 828b 	beq.w	d004411c <clipTriangleToFrustum+0x610>
d0043c06:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0043c0a:	a922      	add	r1, sp, #136	; 0x88
d0043c0c:	3301      	adds	r3, #1
d0043c0e:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d0043c12:	edc2 5a00 	vstr	s11, [r2]
d0043c16:	edc2 1a01 	vstr	s3, [r2, #4]
d0043c1a:	ed82 4a02 	vstr	s8, [r2, #8]
d0043c1e:	2b02      	cmp	r3, #2
d0043c20:	f340 8216 	ble.w	d0044050 <clipTriangleToFrustum+0x544>
d0043c24:	eb03 0643 	add.w	r6, r3, r3, lsl #1
d0043c28:	a822      	add	r0, sp, #136	; 0x88
d0043c2a:	2300      	movs	r3, #0
d0043c2c:	00b6      	lsls	r6, r6, #2
d0043c2e:	4601      	mov	r1, r0
d0043c30:	4607      	mov	r7, r0
d0043c32:	f1a6 020c 	sub.w	r2, r6, #12
d0043c36:	4406      	add	r6, r0
d0043c38:	4402      	add	r2, r0
d0043c3a:	ed92 7a00 	vldr	s14, [r2]
d0043c3e:	edd2 7a02 	vldr	s15, [r2, #8]
d0043c42:	ed92 6a01 	vldr	s12, [r2, #4]
d0043c46:	ee77 6a27 	vadd.f32	s13, s14, s15
d0043c4a:	e009      	b.n	d0043c60 <clipTriangleToFrustum+0x154>
d0043c4c:	3301      	adds	r3, #1
d0043c4e:	ed82 7a00 	vstr	s14, [r2]
d0043c52:	ed82 6a01 	vstr	s12, [r2, #4]
d0043c56:	edc2 7a02 	vstr	s15, [r2, #8]
d0043c5a:	310c      	adds	r1, #12
d0043c5c:	428e      	cmp	r6, r1
d0043c5e:	d04e      	beq.n	d0043cfe <clipTriangleToFrustum+0x1f2>
d0043c60:	eeb0 4a47 	vmov.f32	s8, s14
d0043c64:	ed91 7a00 	vldr	s14, [r1]
d0043c68:	eeb0 5a67 	vmov.f32	s10, s15
d0043c6c:	edd1 7a02 	vldr	s15, [r1, #8]
d0043c70:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043c74:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0043c78:	eef0 5a66 	vmov.f32	s11, s13
d0043c7c:	ee77 6a27 	vadd.f32	s13, s14, s15
d0043c80:	eb04 0282 	add.w	r2, r4, r2, lsl #2
d0043c84:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043c88:	eef0 4a46 	vmov.f32	s9, s12
d0043c8c:	ed91 6a01 	vldr	s12, [r1, #4]
d0043c90:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043c94:	bfac      	ite	ge
d0043c96:	2701      	movge	r7, #1
d0043c98:	2700      	movlt	r7, #0
d0043c9a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043c9e:	bfac      	ite	ge
d0043ca0:	f04f 0c01 	movge.w	ip, #1
d0043ca4:	f04f 0c00 	movlt.w	ip, #0
d0043ca8:	b117      	cbz	r7, d0043cb0 <clipTriangleToFrustum+0x1a4>
d0043caa:	f1bc 0f00 	cmp.w	ip, #0
d0043cae:	d1cd      	bne.n	d0043c4c <clipTriangleToFrustum+0x140>
d0043cb0:	eef5 6a40 	vcmp.f32	s13, #0.0
d0043cb4:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0043cb8:	ee75 1ae6 	vsub.f32	s3, s11, s13
d0043cbc:	ee37 2a44 	vsub.f32	s4, s14, s8
d0043cc0:	eb04 0282 	add.w	r2, r4, r2, lsl #2
d0043cc4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043cc8:	ee76 2a64 	vsub.f32	s5, s12, s9
d0043ccc:	ee37 3ac5 	vsub.f32	s6, s15, s10
d0043cd0:	f140 818f 	bpl.w	d0043ff2 <clipTriangleToFrustum+0x4e6>
d0043cd4:	2f00      	cmp	r7, #0
d0043cd6:	f000 818c 	beq.w	d0043ff2 <clipTriangleToFrustum+0x4e6>
d0043cda:	eec5 3aa1 	vdiv.f32	s7, s11, s3
d0043cde:	310c      	adds	r1, #12
d0043ce0:	3301      	adds	r3, #1
d0043ce2:	428e      	cmp	r6, r1
d0043ce4:	eea2 4a23 	vfma.f32	s8, s4, s7
d0043ce8:	eee2 4aa3 	vfma.f32	s9, s5, s7
d0043cec:	eea3 5a23 	vfma.f32	s10, s6, s7
d0043cf0:	ed82 4a00 	vstr	s8, [r2]
d0043cf4:	edc2 4a01 	vstr	s9, [r2, #4]
d0043cf8:	ed82 5a02 	vstr	s10, [r2, #8]
d0043cfc:	d1b0      	bne.n	d0043c60 <clipTriangleToFrustum+0x154>
d0043cfe:	2b02      	cmp	r3, #2
d0043d00:	f340 81a6 	ble.w	d0044050 <clipTriangleToFrustum+0x544>
d0043d04:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0043d08:	4626      	mov	r6, r4
d0043d0a:	4627      	mov	r7, r4
d0043d0c:	2200      	movs	r2, #0
d0043d0e:	009b      	lsls	r3, r3, #2
d0043d10:	f1a3 010c 	sub.w	r1, r3, #12
d0043d14:	4423      	add	r3, r4
d0043d16:	4421      	add	r1, r4
d0043d18:	edd1 7a00 	vldr	s15, [r1]
d0043d1c:	ed91 7a02 	vldr	s14, [r1, #8]
d0043d20:	ed91 6a01 	vldr	s12, [r1, #4]
d0043d24:	ee77 6a67 	vsub.f32	s13, s14, s15
d0043d28:	e009      	b.n	d0043d3e <clipTriangleToFrustum+0x232>
d0043d2a:	3201      	adds	r2, #1
d0043d2c:	edc1 7a00 	vstr	s15, [r1]
d0043d30:	ed81 6a01 	vstr	s12, [r1, #4]
d0043d34:	ed81 7a02 	vstr	s14, [r1, #8]
d0043d38:	370c      	adds	r7, #12
d0043d3a:	42bb      	cmp	r3, r7
d0043d3c:	d059      	beq.n	d0043df2 <clipTriangleToFrustum+0x2e6>
d0043d3e:	eeb0 4a67 	vmov.f32	s8, s15
d0043d42:	edd7 7a00 	vldr	s15, [r7]
d0043d46:	eeb0 5a47 	vmov.f32	s10, s14
d0043d4a:	ed97 7a02 	vldr	s14, [r7, #8]
d0043d4e:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043d52:	f10d 0c88 	add.w	ip, sp, #136	; 0x88
d0043d56:	eef0 5a66 	vmov.f32	s11, s13
d0043d5a:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0043d5e:	ee77 6a67 	vsub.f32	s13, s14, s15
d0043d62:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043d66:	eb0c 0181 	add.w	r1, ip, r1, lsl #2
d0043d6a:	eef0 4a46 	vmov.f32	s9, s12
d0043d6e:	ed97 6a01 	vldr	s12, [r7, #4]
d0043d72:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043d76:	bfac      	ite	ge
d0043d78:	f04f 0c01 	movge.w	ip, #1
d0043d7c:	f04f 0c00 	movlt.w	ip, #0
d0043d80:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043d84:	bfac      	ite	ge
d0043d86:	f04f 0e01 	movge.w	lr, #1
d0043d8a:	f04f 0e00 	movlt.w	lr, #0
d0043d8e:	f1bc 0f00 	cmp.w	ip, #0
d0043d92:	d002      	beq.n	d0043d9a <clipTriangleToFrustum+0x28e>
d0043d94:	f1be 0f00 	cmp.w	lr, #0
d0043d98:	d1c7      	bne.n	d0043d2a <clipTriangleToFrustum+0x21e>
d0043d9a:	eef5 6a40 	vcmp.f32	s13, #0.0
d0043d9e:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0043da2:	ee77 3aa5 	vadd.f32	s7, s15, s11
d0043da6:	f10d 0888 	add.w	r8, sp, #136	; 0x88
d0043daa:	ee77 1ac4 	vsub.f32	s3, s15, s8
d0043dae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043db2:	eb08 0181 	add.w	r1, r8, r1, lsl #2
d0043db6:	ee36 2a64 	vsub.f32	s4, s12, s9
d0043dba:	ee73 3ac7 	vsub.f32	s7, s7, s14
d0043dbe:	ee77 2a45 	vsub.f32	s5, s14, s10
d0043dc2:	f140 8268 	bpl.w	d0044296 <clipTriangleToFrustum+0x78a>
d0043dc6:	f1bc 0f00 	cmp.w	ip, #0
d0043dca:	f000 8264 	beq.w	d0044296 <clipTriangleToFrustum+0x78a>
d0043dce:	ee85 3aa3 	vdiv.f32	s6, s11, s7
d0043dd2:	370c      	adds	r7, #12
d0043dd4:	3201      	adds	r2, #1
d0043dd6:	42bb      	cmp	r3, r7
d0043dd8:	eea1 4a83 	vfma.f32	s8, s3, s6
d0043ddc:	eee2 4a03 	vfma.f32	s9, s4, s6
d0043de0:	eea2 5a83 	vfma.f32	s10, s5, s6
d0043de4:	ed81 4a00 	vstr	s8, [r1]
d0043de8:	edc1 4a01 	vstr	s9, [r1, #4]
d0043dec:	ed81 5a02 	vstr	s10, [r1, #8]
d0043df0:	d1a5      	bne.n	d0043d3e <clipTriangleToFrustum+0x232>
d0043df2:	2a02      	cmp	r2, #2
d0043df4:	f340 812c 	ble.w	d0044050 <clipTriangleToFrustum+0x544>
d0043df8:	eb02 0342 	add.w	r3, r2, r2, lsl #1
d0043dfc:	af22      	add	r7, sp, #136	; 0x88
d0043dfe:	eddf 6add 	vldr	s13, [pc, #884]	; d0044174 <clipTriangleToFrustum+0x668>
d0043e02:	2200      	movs	r2, #0
d0043e04:	009b      	lsls	r3, r3, #2
d0043e06:	eef0 2a66 	vmov.f32	s5, s13
d0043e0a:	f1a3 010c 	sub.w	r1, r3, #12
d0043e0e:	443b      	add	r3, r7
d0043e10:	4439      	add	r1, r7
d0043e12:	edd1 7a01 	vldr	s15, [r1, #4]
d0043e16:	ed91 7a02 	vldr	s14, [r1, #8]
d0043e1a:	eef0 5a67 	vmov.f32	s11, s15
d0043e1e:	ed91 6a00 	vldr	s12, [r1]
d0043e22:	eed7 5a26 	vfnms.f32	s11, s14, s13
d0043e26:	eef0 6a65 	vmov.f32	s13, s11
d0043e2a:	e00c      	b.n	d0043e46 <clipTriangleToFrustum+0x33a>
d0043e2c:	f1bc 0f00 	cmp.w	ip, #0
d0043e30:	d031      	beq.n	d0043e96 <clipTriangleToFrustum+0x38a>
d0043e32:	3201      	adds	r2, #1
d0043e34:	ed81 6a00 	vstr	s12, [r1]
d0043e38:	edc1 7a01 	vstr	s15, [r1, #4]
d0043e3c:	ed81 7a02 	vstr	s14, [r1, #8]
d0043e40:	300c      	adds	r0, #12
d0043e42:	4298      	cmp	r0, r3
d0043e44:	d050      	beq.n	d0043ee8 <clipTriangleToFrustum+0x3dc>
d0043e46:	eeb0 5a47 	vmov.f32	s10, s14
d0043e4a:	ed90 7a02 	vldr	s14, [r0, #8]
d0043e4e:	eef0 4a67 	vmov.f32	s9, s15
d0043e52:	edd0 7a01 	vldr	s15, [r0, #4]
d0043e56:	ee67 3a22 	vmul.f32	s7, s14, s5
d0043e5a:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0043e5e:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043e62:	eef0 5a66 	vmov.f32	s11, s13
d0043e66:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d0043e6a:	ee73 6ae7 	vsub.f32	s13, s7, s15
d0043e6e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043e72:	eeb0 4a46 	vmov.f32	s8, s12
d0043e76:	ed90 6a00 	vldr	s12, [r0]
d0043e7a:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043e7e:	bfac      	ite	ge
d0043e80:	2701      	movge	r7, #1
d0043e82:	2700      	movlt	r7, #0
d0043e84:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043e88:	bfac      	ite	ge
d0043e8a:	f04f 0c01 	movge.w	ip, #1
d0043e8e:	f04f 0c00 	movlt.w	ip, #0
d0043e92:	2f00      	cmp	r7, #0
d0043e94:	d1ca      	bne.n	d0043e2c <clipTriangleToFrustum+0x320>
d0043e96:	eef5 6a40 	vcmp.f32	s13, #0.0
d0043e9a:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0043e9e:	ee37 3aa5 	vadd.f32	s6, s15, s11
d0043ea2:	ee36 1a44 	vsub.f32	s2, s12, s8
d0043ea6:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d0043eaa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043eae:	ee77 1ae4 	vsub.f32	s3, s15, s9
d0043eb2:	ee33 3a63 	vsub.f32	s6, s6, s7
d0043eb6:	ee37 2a45 	vsub.f32	s4, s14, s10
d0043eba:	f140 821f 	bpl.w	d00442fc <clipTriangleToFrustum+0x7f0>
d0043ebe:	2f00      	cmp	r7, #0
d0043ec0:	f000 821c 	beq.w	d00442fc <clipTriangleToFrustum+0x7f0>
d0043ec4:	eec5 3a83 	vdiv.f32	s7, s11, s6
d0043ec8:	300c      	adds	r0, #12
d0043eca:	3201      	adds	r2, #1
d0043ecc:	4298      	cmp	r0, r3
d0043ece:	eea1 4a23 	vfma.f32	s8, s2, s7
d0043ed2:	eee1 4aa3 	vfma.f32	s9, s3, s7
d0043ed6:	eea2 5a23 	vfma.f32	s10, s4, s7
d0043eda:	ed81 4a00 	vstr	s8, [r1]
d0043ede:	edc1 4a01 	vstr	s9, [r1, #4]
d0043ee2:	ed81 5a02 	vstr	s10, [r1, #8]
d0043ee6:	d1ae      	bne.n	d0043e46 <clipTriangleToFrustum+0x33a>
d0043ee8:	2a02      	cmp	r2, #2
d0043eea:	f340 80b1 	ble.w	d0044050 <clipTriangleToFrustum+0x544>
d0043eee:	eb02 0342 	add.w	r3, r2, r2, lsl #1
d0043ef2:	eddf 6aa0 	vldr	s13, [pc, #640]	; d0044174 <clipTriangleToFrustum+0x668>
d0043ef6:	2700      	movs	r7, #0
d0043ef8:	009b      	lsls	r3, r3, #2
d0043efa:	eef0 3a66 	vmov.f32	s7, s13
d0043efe:	f1a3 020c 	sub.w	r2, r3, #12
d0043f02:	4423      	add	r3, r4
d0043f04:	4414      	add	r4, r2
d0043f06:	edd4 7a01 	vldr	s15, [r4, #4]
d0043f0a:	ed94 7a02 	vldr	s14, [r4, #8]
d0043f0e:	eef0 5a67 	vmov.f32	s11, s15
d0043f12:	ed94 6a00 	vldr	s12, [r4]
d0043f16:	eee7 5a26 	vfma.f32	s11, s14, s13
d0043f1a:	eef0 6a65 	vmov.f32	s13, s11
d0043f1e:	e00a      	b.n	d0043f36 <clipTriangleToFrustum+0x42a>
d0043f20:	b380      	cbz	r0, d0043f84 <clipTriangleToFrustum+0x478>
d0043f22:	3701      	adds	r7, #1
d0043f24:	ed82 6a00 	vstr	s12, [r2]
d0043f28:	edc2 7a01 	vstr	s15, [r2, #4]
d0043f2c:	ed82 7a02 	vstr	s14, [r2, #8]
d0043f30:	360c      	adds	r6, #12
d0043f32:	429e      	cmp	r6, r3
d0043f34:	d04e      	beq.n	d0043fd4 <clipTriangleToFrustum+0x4c8>
d0043f36:	eef0 4a67 	vmov.f32	s9, s15
d0043f3a:	edd6 7a01 	vldr	s15, [r6, #4]
d0043f3e:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043f42:	a922      	add	r1, sp, #136	; 0x88
d0043f44:	eef0 5a66 	vmov.f32	s11, s13
d0043f48:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d0043f4c:	eef0 6a67 	vmov.f32	s13, s15
d0043f50:	eeb0 5a47 	vmov.f32	s10, s14
d0043f54:	ed96 7a02 	vldr	s14, [r6, #8]
d0043f58:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043f5c:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d0043f60:	eee7 6a23 	vfma.f32	s13, s14, s7
d0043f64:	eeb0 4a46 	vmov.f32	s8, s12
d0043f68:	ed96 6a00 	vldr	s12, [r6]
d0043f6c:	bfac      	ite	ge
d0043f6e:	2101      	movge	r1, #1
d0043f70:	2100      	movlt	r1, #0
d0043f72:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043f76:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043f7a:	bfac      	ite	ge
d0043f7c:	2001      	movge	r0, #1
d0043f7e:	2000      	movlt	r0, #0
d0043f80:	2900      	cmp	r1, #0
d0043f82:	d1cd      	bne.n	d0043f20 <clipTriangleToFrustum+0x414>
d0043f84:	eef5 6a40 	vcmp.f32	s13, #0.0
d0043f88:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d0043f8c:	ac22      	add	r4, sp, #136	; 0x88
d0043f8e:	ee35 1ae6 	vsub.f32	s2, s11, s13
d0043f92:	ee76 1a44 	vsub.f32	s3, s12, s8
d0043f96:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043f9a:	eb04 0282 	add.w	r2, r4, r2, lsl #2
d0043f9e:	ee37 2ae4 	vsub.f32	s4, s15, s9
d0043fa2:	ee77 2a45 	vsub.f32	s5, s14, s10
d0043fa6:	f140 81de 	bpl.w	d0044366 <clipTriangleToFrustum+0x85a>
d0043faa:	2900      	cmp	r1, #0
d0043fac:	f000 81db 	beq.w	d0044366 <clipTriangleToFrustum+0x85a>
d0043fb0:	ee85 3a81 	vdiv.f32	s6, s11, s2
d0043fb4:	360c      	adds	r6, #12
d0043fb6:	3701      	adds	r7, #1
d0043fb8:	429e      	cmp	r6, r3
d0043fba:	eea1 4a83 	vfma.f32	s8, s3, s6
d0043fbe:	eee2 4a03 	vfma.f32	s9, s4, s6
d0043fc2:	eea2 5a83 	vfma.f32	s10, s5, s6
d0043fc6:	ed82 4a00 	vstr	s8, [r2]
d0043fca:	edc2 4a01 	vstr	s9, [r2, #4]
d0043fce:	ed82 5a02 	vstr	s10, [r2, #8]
d0043fd2:	d1b0      	bne.n	d0043f36 <clipTriangleToFrustum+0x42a>
d0043fd4:	2f02      	cmp	r7, #2
d0043fd6:	dd3b      	ble.n	d0044050 <clipTriangleToFrustum+0x544>
d0043fd8:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d0043fdc:	a922      	add	r1, sp, #136	; 0x88
d0043fde:	4628      	mov	r0, r5
d0043fe0:	0092      	lsls	r2, r2, #2
d0043fe2:	f001 ff7f 	bl	d0045ee4 <memcpy>
d0043fe6:	4638      	mov	r0, r7
d0043fe8:	b03a      	add	sp, #232	; 0xe8
d0043fea:	ecbd 8b02 	vpop	{d8}
d0043fee:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0043ff2:	eef5 5a40 	vcmp.f32	s11, #0.0
d0043ff6:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0043ffa:	ee75 1ae6 	vsub.f32	s3, s11, s13
d0043ffe:	eb04 0782 	add.w	r7, r4, r2, lsl #2
d0044002:	ee37 2a44 	vsub.f32	s4, s14, s8
d0044006:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004400a:	463a      	mov	r2, r7
d004400c:	ee76 2a64 	vsub.f32	s5, s12, s9
d0044010:	ee37 3ac5 	vsub.f32	s6, s15, s10
d0044014:	f107 070c 	add.w	r7, r7, #12
d0044018:	f57f ae1f 	bpl.w	d0043c5a <clipTriangleToFrustum+0x14e>
d004401c:	f1bc 0f00 	cmp.w	ip, #0
d0044020:	f43f ae1b 	beq.w	d0043c5a <clipTriangleToFrustum+0x14e>
d0044024:	eec5 3aa1 	vdiv.f32	s7, s11, s3
d0044028:	3302      	adds	r3, #2
d004402a:	eea2 4a23 	vfma.f32	s8, s4, s7
d004402e:	eee2 4aa3 	vfma.f32	s9, s5, s7
d0044032:	eea3 5a23 	vfma.f32	s10, s6, s7
d0044036:	ed82 4a00 	vstr	s8, [r2]
d004403a:	edc2 4a01 	vstr	s9, [r2, #4]
d004403e:	ed82 5a02 	vstr	s10, [r2, #8]
d0044042:	ed87 7a00 	vstr	s14, [r7]
d0044046:	ed87 6a01 	vstr	s12, [r7, #4]
d004404a:	edc7 7a02 	vstr	s15, [r7, #8]
d004404e:	e604      	b.n	d0043c5a <clipTriangleToFrustum+0x14e>
d0044050:	2700      	movs	r7, #0
d0044052:	4638      	mov	r0, r7
d0044054:	b03a      	add	sp, #232	; 0xe8
d0044056:	ecbd 8b02 	vpop	{d8}
d004405a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d004405e:	eef5 4a40 	vcmp.f32	s9, #0.0
d0044062:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044066:	f140 80b7 	bpl.w	d00441d8 <clipTriangleToFrustum+0x6cc>
d004406a:	2900      	cmp	r1, #0
d004406c:	f000 80b4 	beq.w	d00441d8 <clipTriangleToFrustum+0x6cc>
d0044070:	ee74 0a67 	vsub.f32	s1, s8, s15
d0044074:	eddd 3a0f 	vldr	s7, [sp, #60]	; 0x3c
d0044078:	ee36 8a65 	vsub.f32	s16, s12, s11
d004407c:	2301      	movs	r3, #1
d004407e:	eef0 8a65 	vmov.f32	s17, s11
d0044082:	ed9d 2a0d 	vldr	s4, [sp, #52]	; 0x34
d0044086:	ee85 1a20 	vdiv.f32	s2, s10, s1
d004408a:	eddd 2a0e 	vldr	s5, [sp, #56]	; 0x38
d004408e:	ee36 0ae1 	vsub.f32	s0, s13, s3
d0044092:	ee33 3ac7 	vsub.f32	s6, s7, s14
d0044096:	ee77 0ac4 	vsub.f32	s1, s15, s8
d004409a:	eeb5 3ac0 	vcmpe.f32	s6, #0.0
d004409e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00440a2:	bfac      	ite	ge
d00440a4:	461e      	movge	r6, r3
d00440a6:	2600      	movlt	r6, #0
d00440a8:	eee1 8a08 	vfma.f32	s17, s2, s16
d00440ac:	eeb0 8a68 	vmov.f32	s16, s17
d00440b0:	eef0 8a61 	vmov.f32	s17, s3
d00440b4:	ed8d 8a22 	vstr	s16, [sp, #136]	; 0x88
d00440b8:	eee1 8a00 	vfma.f32	s17, s2, s0
d00440bc:	eeb0 0a68 	vmov.f32	s0, s17
d00440c0:	eef0 8a44 	vmov.f32	s17, s8
d00440c4:	ed8d 0a23 	vstr	s0, [sp, #140]	; 0x8c
d00440c8:	eee0 8a81 	vfma.f32	s17, s1, s2
d00440cc:	edcd 8a24 	vstr	s17, [sp, #144]	; 0x90
d00440d0:	eeb5 3a40 	vcmp.f32	s6, #0.0
d00440d4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00440d8:	f140 80af 	bpl.w	d004423a <clipTriangleToFrustum+0x72e>
d00440dc:	2800      	cmp	r0, #0
d00440de:	f000 80ac 	beq.w	d004423a <clipTriangleToFrustum+0x72e>
d00440e2:	ee37 8ae3 	vsub.f32	s16, s15, s7
d00440e6:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d00440ea:	ee32 0a46 	vsub.f32	s0, s4, s12
d00440ee:	4632      	mov	r2, r6
d00440f0:	ee72 0ae6 	vsub.f32	s1, s5, s13
d00440f4:	ae22      	add	r6, sp, #136	; 0x88
d00440f6:	ee84 1a88 	vdiv.f32	s2, s9, s16
d00440fa:	3301      	adds	r3, #1
d00440fc:	eb06 0080 	add.w	r0, r6, r0, lsl #2
d0044100:	ee73 4ae7 	vsub.f32	s9, s7, s15
d0044104:	eea0 6a01 	vfma.f32	s12, s0, s2
d0044108:	eee0 6a81 	vfma.f32	s13, s1, s2
d004410c:	eee4 7a81 	vfma.f32	s15, s9, s2
d0044110:	ed80 6a00 	vstr	s12, [r0]
d0044114:	edc0 6a01 	vstr	s13, [r0, #4]
d0044118:	edc0 7a02 	vstr	s15, [r0, #8]
d004411c:	eeb5 5a40 	vcmp.f32	s10, #0.0
d0044120:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044124:	d528      	bpl.n	d0044178 <clipTriangleToFrustum+0x66c>
d0044126:	b33a      	cbz	r2, d0044178 <clipTriangleToFrustum+0x66c>
d0044128:	ee37 5a44 	vsub.f32	s10, s14, s8
d004412c:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0044130:	ee75 5ac2 	vsub.f32	s11, s11, s4
d0044134:	a922      	add	r1, sp, #136	; 0x88
d0044136:	ee71 1ae2 	vsub.f32	s3, s3, s5
d004413a:	3301      	adds	r3, #1
d004413c:	ee35 5a03 	vadd.f32	s10, s10, s6
d0044140:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d0044144:	ee34 4a63 	vsub.f32	s8, s8, s7
d0044148:	eef0 6a42 	vmov.f32	s13, s4
d004414c:	ee83 6a05 	vdiv.f32	s12, s6, s10
d0044150:	eeb0 7a62 	vmov.f32	s14, s5
d0044154:	eef0 7a63 	vmov.f32	s15, s7
d0044158:	eee5 6a86 	vfma.f32	s13, s11, s12
d004415c:	eea1 7a86 	vfma.f32	s14, s3, s12
d0044160:	eee4 7a06 	vfma.f32	s15, s8, s12
d0044164:	edc2 6a00 	vstr	s13, [r2]
d0044168:	ed82 7a01 	vstr	s14, [r2, #4]
d004416c:	edc2 7a02 	vstr	s15, [r2, #8]
d0044170:	e555      	b.n	d0043c1e <clipTriangleToFrustum+0x112>
d0044172:	bf00      	nop
d0044174:	3f2aaaab 	.word	0x3f2aaaab
d0044178:	eeb5 3a40 	vcmp.f32	s6, #0.0
d004417c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044180:	f57f ad4d 	bpl.w	d0043c1e <clipTriangleToFrustum+0x112>
d0044184:	2900      	cmp	r1, #0
d0044186:	f43f ad4a 	beq.w	d0043c1e <clipTriangleToFrustum+0x112>
d004418a:	ee77 7a44 	vsub.f32	s15, s14, s8
d004418e:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0044192:	ee75 6ac2 	vsub.f32	s13, s11, s4
d0044196:	a922      	add	r1, sp, #136	; 0x88
d0044198:	ee31 7ae2 	vsub.f32	s14, s3, s5
d004419c:	3302      	adds	r3, #2
d004419e:	ee77 7a83 	vadd.f32	s15, s15, s6
d00441a2:	eb01 0182 	add.w	r1, r1, r2, lsl #2
d00441a6:	ee34 5a63 	vsub.f32	s10, s8, s7
d00441aa:	edc1 5a03 	vstr	s11, [r1, #12]
d00441ae:	ee83 6a27 	vdiv.f32	s12, s6, s15
d00441b2:	edc1 1a04 	vstr	s3, [r1, #16]
d00441b6:	ed81 4a05 	vstr	s8, [r1, #20]
d00441ba:	eef0 7a63 	vmov.f32	s15, s7
d00441be:	eea6 2a86 	vfma.f32	s4, s13, s12
d00441c2:	eee7 2a06 	vfma.f32	s5, s14, s12
d00441c6:	eee5 7a06 	vfma.f32	s15, s10, s12
d00441ca:	ed81 2a00 	vstr	s4, [r1]
d00441ce:	edc1 2a01 	vstr	s5, [r1, #4]
d00441d2:	edc1 7a02 	vstr	s15, [r1, #8]
d00441d6:	e522      	b.n	d0043c1e <clipTriangleToFrustum+0x112>
d00441d8:	eeb5 5a40 	vcmp.f32	s10, #0.0
d00441dc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00441e0:	f140 80bf 	bpl.w	d0044362 <clipTriangleToFrustum+0x856>
d00441e4:	2800      	cmp	r0, #0
d00441e6:	f000 80bc 	beq.w	d0044362 <clipTriangleToFrustum+0x856>
d00441ea:	ee74 3a67 	vsub.f32	s7, s8, s15
d00441ee:	2302      	movs	r3, #2
d00441f0:	ee36 2a65 	vsub.f32	s4, s12, s11
d00441f4:	ed8d 6a25 	vstr	s12, [sp, #148]	; 0x94
d00441f8:	eeb0 1a65 	vmov.f32	s2, s11
d00441fc:	edcd 6a26 	vstr	s13, [sp, #152]	; 0x98
d0044200:	ee85 3a23 	vdiv.f32	s6, s10, s7
d0044204:	edcd 7a27 	vstr	s15, [sp, #156]	; 0x9c
d0044208:	ee76 2ae1 	vsub.f32	s5, s13, s3
d004420c:	ee77 3ac4 	vsub.f32	s7, s15, s8
d0044210:	eea3 1a02 	vfma.f32	s2, s6, s4
d0044214:	eeb0 2a41 	vmov.f32	s4, s2
d0044218:	eeb0 1a61 	vmov.f32	s2, s3
d004421c:	ed8d 2a22 	vstr	s4, [sp, #136]	; 0x88
d0044220:	eea3 1a22 	vfma.f32	s2, s6, s5
d0044224:	eef0 2a41 	vmov.f32	s5, s2
d0044228:	eeb0 1a44 	vmov.f32	s2, s8
d004422c:	edcd 2a23 	vstr	s5, [sp, #140]	; 0x8c
d0044230:	eea3 1a23 	vfma.f32	s2, s6, s7
d0044234:	ed8d 1a24 	vstr	s2, [sp, #144]	; 0x90
d0044238:	e4be      	b.n	d0043bb8 <clipTriangleToFrustum+0xac>
d004423a:	eef5 4ac0 	vcmpe.f32	s9, #0.0
d004423e:	f006 0201 	and.w	r2, r6, #1
d0044242:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044246:	bf58      	it	pl
d0044248:	2200      	movpl	r2, #0
d004424a:	2a00      	cmp	r2, #0
d004424c:	f000 8087 	beq.w	d004435e <clipTriangleToFrustum+0x852>
d0044250:	ee37 8ae3 	vsub.f32	s16, s15, s7
d0044254:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0044258:	ee32 0a46 	vsub.f32	s0, s4, s12
d004425c:	ae22      	add	r6, sp, #136	; 0x88
d004425e:	ee72 0ae6 	vsub.f32	s1, s5, s13
d0044262:	3302      	adds	r3, #2
d0044264:	ee84 1a88 	vdiv.f32	s2, s9, s16
d0044268:	eb06 0680 	add.w	r6, r6, r0, lsl #2
d004426c:	ed86 2a03 	vstr	s4, [r6, #12]
d0044270:	edc6 2a04 	vstr	s5, [r6, #16]
d0044274:	edc6 3a05 	vstr	s7, [r6, #20]
d0044278:	ee73 4ae7 	vsub.f32	s9, s7, s15
d004427c:	eea0 6a01 	vfma.f32	s12, s0, s2
d0044280:	eee0 6a81 	vfma.f32	s13, s1, s2
d0044284:	eee4 7a81 	vfma.f32	s15, s9, s2
d0044288:	ed86 6a00 	vstr	s12, [r6]
d004428c:	edc6 6a01 	vstr	s13, [r6, #4]
d0044290:	edc6 7a02 	vstr	s15, [r6, #8]
d0044294:	e4b1      	b.n	d0043bfa <clipTriangleToFrustum+0xee>
d0044296:	eef5 5a40 	vcmp.f32	s11, #0.0
d004429a:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d004429e:	f10d 0c88 	add.w	ip, sp, #136	; 0x88
d00442a2:	ee77 3aa5 	vadd.f32	s7, s15, s11
d00442a6:	ee77 1ac4 	vsub.f32	s3, s15, s8
d00442aa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00442ae:	eb0c 0c81 	add.w	ip, ip, r1, lsl #2
d00442b2:	ee36 2a64 	vsub.f32	s4, s12, s9
d00442b6:	4661      	mov	r1, ip
d00442b8:	ee73 3ac7 	vsub.f32	s7, s7, s14
d00442bc:	ee77 2a45 	vsub.f32	s5, s14, s10
d00442c0:	f10c 0c0c 	add.w	ip, ip, #12
d00442c4:	f57f ad38 	bpl.w	d0043d38 <clipTriangleToFrustum+0x22c>
d00442c8:	f1be 0f00 	cmp.w	lr, #0
d00442cc:	f43f ad34 	beq.w	d0043d38 <clipTriangleToFrustum+0x22c>
d00442d0:	ee85 3aa3 	vdiv.f32	s6, s11, s7
d00442d4:	3202      	adds	r2, #2
d00442d6:	eea1 4a83 	vfma.f32	s8, s3, s6
d00442da:	eee2 4a03 	vfma.f32	s9, s4, s6
d00442de:	eea2 5a83 	vfma.f32	s10, s5, s6
d00442e2:	ed81 4a00 	vstr	s8, [r1]
d00442e6:	edc1 4a01 	vstr	s9, [r1, #4]
d00442ea:	ed81 5a02 	vstr	s10, [r1, #8]
d00442ee:	edcc 7a00 	vstr	s15, [ip]
d00442f2:	ed8c 6a01 	vstr	s12, [ip, #4]
d00442f6:	ed8c 7a02 	vstr	s14, [ip, #8]
d00442fa:	e51d      	b.n	d0043d38 <clipTriangleToFrustum+0x22c>
d00442fc:	eef5 5a40 	vcmp.f32	s11, #0.0
d0044300:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0044304:	ee37 3aa5 	vadd.f32	s6, s15, s11
d0044308:	eb04 0781 	add.w	r7, r4, r1, lsl #2
d004430c:	ee36 1a44 	vsub.f32	s2, s12, s8
d0044310:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044314:	4639      	mov	r1, r7
d0044316:	ee77 1ae4 	vsub.f32	s3, s15, s9
d004431a:	ee73 3a63 	vsub.f32	s7, s6, s7
d004431e:	f107 070c 	add.w	r7, r7, #12
d0044322:	ee37 2a45 	vsub.f32	s4, s14, s10
d0044326:	f57f ad8b 	bpl.w	d0043e40 <clipTriangleToFrustum+0x334>
d004432a:	f1bc 0f00 	cmp.w	ip, #0
d004432e:	f43f ad87 	beq.w	d0043e40 <clipTriangleToFrustum+0x334>
d0044332:	ee85 3aa3 	vdiv.f32	s6, s11, s7
d0044336:	3202      	adds	r2, #2
d0044338:	eea1 4a03 	vfma.f32	s8, s2, s6
d004433c:	eee1 4a83 	vfma.f32	s9, s3, s6
d0044340:	eea2 5a03 	vfma.f32	s10, s4, s6
d0044344:	ed81 4a00 	vstr	s8, [r1]
d0044348:	edc1 4a01 	vstr	s9, [r1, #4]
d004434c:	ed81 5a02 	vstr	s10, [r1, #8]
d0044350:	ed87 6a00 	vstr	s12, [r7]
d0044354:	edc7 7a01 	vstr	s15, [r7, #4]
d0044358:	ed87 7a02 	vstr	s14, [r7, #8]
d004435c:	e570      	b.n	d0043e40 <clipTriangleToFrustum+0x334>
d004435e:	4632      	mov	r2, r6
d0044360:	e44b      	b.n	d0043bfa <clipTriangleToFrustum+0xee>
d0044362:	2300      	movs	r3, #0
d0044364:	e428      	b.n	d0043bb8 <clipTriangleToFrustum+0xac>
d0044366:	eef5 5a40 	vcmp.f32	s11, #0.0
d004436a:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d004436e:	a922      	add	r1, sp, #136	; 0x88
d0044370:	ee35 1ae6 	vsub.f32	s2, s11, s13
d0044374:	ee76 1a44 	vsub.f32	s3, s12, s8
d0044378:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004437c:	eb01 0182 	add.w	r1, r1, r2, lsl #2
d0044380:	ee37 2ae4 	vsub.f32	s4, s15, s9
d0044384:	460a      	mov	r2, r1
d0044386:	ee77 2a45 	vsub.f32	s5, s14, s10
d004438a:	f101 010c 	add.w	r1, r1, #12
d004438e:	f57f adcf 	bpl.w	d0043f30 <clipTriangleToFrustum+0x424>
d0044392:	2800      	cmp	r0, #0
d0044394:	f43f adcc 	beq.w	d0043f30 <clipTriangleToFrustum+0x424>
d0044398:	ee85 3a81 	vdiv.f32	s6, s11, s2
d004439c:	3702      	adds	r7, #2
d004439e:	eea1 4a83 	vfma.f32	s8, s3, s6
d00443a2:	eee2 4a03 	vfma.f32	s9, s4, s6
d00443a6:	eea2 5a83 	vfma.f32	s10, s5, s6
d00443aa:	ed82 4a00 	vstr	s8, [r2]
d00443ae:	edc2 4a01 	vstr	s9, [r2, #4]
d00443b2:	ed82 5a02 	vstr	s10, [r2, #8]
d00443b6:	ed81 6a00 	vstr	s12, [r1]
d00443ba:	edc1 7a01 	vstr	s15, [r1, #4]
d00443be:	ed81 7a02 	vstr	s14, [r1, #8]
d00443c2:	e5b5      	b.n	d0043f30 <clipTriangleToFrustum+0x424>

d00443c4 <submitClippedTri>:
d00443c4:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d00443c8:	eef4 7ac1 	vcmpe.f32	s15, s2
d00443cc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00443d0:	eef4 2ae7 	vcmpe.f32	s5, s15
d00443d4:	bfac      	ite	ge
d00443d6:	2301      	movge	r3, #1
d00443d8:	2300      	movlt	r3, #0
d00443da:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00443de:	bf98      	it	ls
d00443e0:	f043 0301 	orrls.w	r3, r3, #1
d00443e4:	b923      	cbnz	r3, d00443f0 <submitClippedTri+0x2c>
d00443e6:	eef4 7ac4 	vcmpe.f32	s15, s8
d00443ea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00443ee:	db00      	blt.n	d00443f2 <submitClippedTri+0x2e>
d00443f0:	4770      	bx	lr
d00443f2:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d00443f6:	ed9f 6a69 	vldr	s12, [pc, #420]	; d004459c <submitClippedTri+0x1d8>
d00443fa:	eddf 7a69 	vldr	s15, [pc, #420]	; d00445a0 <submitClippedTri+0x1dc>
d00443fe:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d0044402:	ee60 0a86 	vmul.f32	s1, s1, s12
d0044406:	ed9f 5a67 	vldr	s10, [pc, #412]	; d00445a4 <submitClippedTri+0x1e0>
d004440a:	eec6 5aa2 	vdiv.f32	s11, s13, s5
d004440e:	ee63 3a86 	vmul.f32	s7, s7, s12
d0044412:	ee22 2a06 	vmul.f32	s4, s4, s12
d0044416:	eeb0 6a67 	vmov.f32	s12, s15
d004441a:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004441e:	ed2d 8b04 	vpush	{d8-d9}
d0044422:	eec6 8a81 	vdiv.f32	s17, s13, s2
d0044426:	b08b      	sub	sp, #44	; 0x2c
d0044428:	eeb0 9a66 	vmov.f32	s18, s13
d004442c:	ee86 8a84 	vdiv.f32	s16, s13, s8
d0044430:	eea5 6a82 	vfma.f32	s12, s11, s4
d0044434:	eea0 9a28 	vfma.f32	s18, s0, s17
d0044438:	eeb0 0a67 	vmov.f32	s0, s15
d004443c:	eebd 6ac6 	vcvt.s32.f32	s12, s12
d0044440:	eea8 0aa0 	vfma.f32	s0, s17, s1
d0044444:	eef0 0a66 	vmov.f32	s1, s13
d0044448:	ee16 3a10 	vmov	r3, s12
d004444c:	eee8 7a23 	vfma.f32	s15, s16, s7
d0044450:	eee1 0aa5 	vfma.f32	s1, s3, s11
d0044454:	eef0 1a47 	vmov.f32	s3, s14
d0044458:	eefd 5ac0 	vcvt.s32.f32	s11, s0
d004445c:	eee9 1a05 	vfma.f32	s3, s18, s10
d0044460:	ee15 6a90 	vmov	r6, s11
d0044464:	eef0 5a66 	vmov.f32	s11, s13
d0044468:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004446c:	1b9d      	subs	r5, r3, r6
d004446e:	eee3 5a08 	vfma.f32	s11, s6, s16
d0044472:	ee17 3a90 	vmov	r3, s15
d0044476:	eefd 3ae1 	vcvt.s32.f32	s7, s3
d004447a:	eba3 0c06 	sub.w	ip, r3, r6
d004447e:	ee13 7a90 	vmov	r7, s7
d0044482:	eeb0 3a65 	vmov.f32	s6, s11
d0044486:	eef0 5a47 	vmov.f32	s11, s14
d004448a:	eea3 7a05 	vfma.f32	s14, s6, s10
d004448e:	eee0 5a85 	vfma.f32	s11, s1, s10
d0044492:	eefd 7ac7 	vcvt.s32.f32	s15, s14
d0044496:	eefd 5ae5 	vcvt.s32.f32	s11, s11
d004449a:	ee15 4a90 	vmov	r4, s11
d004449e:	eba4 0e07 	sub.w	lr, r4, r7
d00444a2:	ee17 4a90 	vmov	r4, s15
d00444a6:	fb0c fc0e 	mul.w	ip, ip, lr
d00444aa:	eba4 0e07 	sub.w	lr, r4, r7
d00444ae:	fb0e c515 	mls	r5, lr, r5, ip
d00444b2:	2d00      	cmp	r5, #0
d00444b4:	dd6d      	ble.n	d0044592 <submitClippedTri+0x1ce>
d00444b6:	f8df e0f8 	ldr.w	lr, [pc, #248]	; d00445b0 <submitClippedTri+0x1ec>
d00444ba:	f8de 5000 	ldr.w	r5, [lr]
d00444be:	f5b5 5f00 	cmp.w	r5, #8192	; 0x2000
d00444c2:	da66      	bge.n	d0044592 <submitClippedTri+0x1ce>
d00444c4:	f8df c0ec 	ldr.w	ip, [pc, #236]	; d00445b4 <submitClippedTri+0x1f0>
d00444c8:	ea4f 1885 	mov.w	r8, r5, lsl #6
d00444cc:	f105 0b01 	add.w	fp, r5, #1
d00444d0:	ed9f 5a35 	vldr	s10, [pc, #212]	; d00445a8 <submitClippedTri+0x1e4>
d00444d4:	f848 700c 	str.w	r7, [r8, ip]
d00444d8:	eb0c 1585 	add.w	r5, ip, r5, lsl #6
d00444dc:	f108 0a08 	add.w	sl, r8, #8
d00444e0:	f108 0910 	add.w	r9, r8, #16
d00444e4:	ee15 7a90 	vmov	r7, s11
d00444e8:	606e      	str	r6, [r5, #4]
d00444ea:	eb0a 060c 	add.w	r6, sl, ip
d00444ee:	f8ce b000 	str.w	fp, [lr]
d00444f2:	f84a 700c 	str.w	r7, [sl, ip]
d00444f6:	eb09 070c 	add.w	r7, r9, ip
d00444fa:	ed86 6a01 	vstr	s12, [r6, #4]
d00444fe:	f849 400c 	str.w	r4, [r9, ip]
d0044502:	607b      	str	r3, [r7, #4]
d0044504:	f885 1034 	strb.w	r1, [r5, #52]	; 0x34
d0044508:	f885 2035 	strb.w	r2, [r5, #53]	; 0x35
d004450c:	edc5 4a07 	vstr	s9, [r5, #28]
d0044510:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0044514:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0044518:	ee31 7a47 	vsub.f32	s14, s2, s14
d004451c:	ed9f 6a23 	vldr	s12, [pc, #140]	; d00445ac <submitClippedTri+0x1e8>
d0044520:	ee27 7a27 	vmul.f32	s14, s14, s15
d0044524:	fe87 7a05 	vmaxnm.f32	s14, s14, s10
d0044528:	fe87 7a66 	vminnm.f32	s14, s14, s13
d004452c:	ee27 7a06 	vmul.f32	s14, s14, s12
d0044530:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0044534:	ee17 3a10 	vmov	r3, s14
d0044538:	842b      	strh	r3, [r5, #32]
d004453a:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d004453e:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0044542:	ee32 7ac7 	vsub.f32	s14, s5, s14
d0044546:	ee27 7a27 	vmul.f32	s14, s14, s15
d004454a:	fe87 7a05 	vmaxnm.f32	s14, s14, s10
d004454e:	fe87 7a66 	vminnm.f32	s14, s14, s13
d0044552:	ee27 7a06 	vmul.f32	s14, s14, s12
d0044556:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d004455a:	ee17 3a10 	vmov	r3, s14
d004455e:	846b      	strh	r3, [r5, #34]	; 0x22
d0044560:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d0044564:	ed90 7a0f 	vldr	s14, [r0, #60]	; 0x3c
d0044568:	ee74 7a67 	vsub.f32	s15, s8, s15
d004456c:	ed85 1a0a 	vstr	s2, [r5, #40]	; 0x28
d0044570:	edc5 2a0b 	vstr	s5, [r5, #44]	; 0x2c
d0044574:	ed85 4a0c 	vstr	s8, [r5, #48]	; 0x30
d0044578:	ee67 7a87 	vmul.f32	s15, s15, s14
d004457c:	fec7 7a85 	vmaxnm.f32	s15, s15, s10
d0044580:	fec7 6ae6 	vminnm.f32	s13, s15, s13
d0044584:	ee66 6a86 	vmul.f32	s13, s13, s12
d0044588:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d004458c:	ee16 3a90 	vmov	r3, s13
d0044590:	84ab      	strh	r3, [r5, #36]	; 0x24
d0044592:	b00b      	add	sp, #44	; 0x2c
d0044594:	ecbd 8b04 	vpop	{d8-d9}
d0044598:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004459c:	c3700000 	.word	0xc3700000
d00445a0:	43208000 	.word	0x43208000
d00445a4:	43700000 	.word	0x43700000
d00445a8:	00000000 	.word	0x00000000
d00445ac:	477fff00 	.word	0x477fff00
d00445b0:	d00557c4 	.word	0xd00557c4
d00445b4:	d00557e0 	.word	0xd00557e0

d00445b8 <drawFakeHorizonDots>:
d00445b8:	2800      	cmp	r0, #0
d00445ba:	f000 80f2 	beq.w	d00447a2 <drawFakeHorizonDots+0x1ea>
d00445be:	2a02      	cmp	r2, #2
d00445c0:	edd0 7a02 	vldr	s15, [r0, #8]
d00445c4:	ed90 6a01 	vldr	s12, [r0, #4]
d00445c8:	bfb8      	it	lt
d00445ca:	2202      	movlt	r2, #2
d00445cc:	eddf 5a75 	vldr	s11, [pc, #468]	; d00447a4 <drawFakeHorizonDots+0x1ec>
d00445d0:	edd0 6a0d 	vldr	s13, [r0, #52]	; 0x34
d00445d4:	ee07 2a10 	vmov	s14, r2
d00445d8:	edd0 4a10 	vldr	s9, [r0, #64]	; 0x40
d00445dc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00445e0:	ed2d 8b10 	vpush	{d8-d15}
d00445e4:	eef8 9ac7 	vcvt.f32.s32	s19, s14
d00445e8:	ed90 aa00 	vldr	s20, [r0]
d00445ec:	b085      	sub	sp, #20
d00445ee:	4617      	mov	r7, r2
d00445f0:	468b      	mov	fp, r1
d00445f2:	496d      	ldr	r1, [pc, #436]	; (d00447a8 <drawFakeHorizonDots+0x1f0>)
d00445f4:	ee8a 7a29 	vdiv.f32	s14, s20, s19
d00445f8:	edcd 7a01 	vstr	s15, [sp, #4]
d00445fc:	4e6b      	ldr	r6, [pc, #428]	; (d00447ac <drawFakeHorizonDots+0x1f4>)
d00445fe:	4698      	mov	r8, r3
d0044600:	ed90 ca07 	vldr	s24, [r0, #28]
d0044604:	edd0 ba0a 	vldr	s23, [r0, #40]	; 0x28
d0044608:	4c69      	ldr	r4, [pc, #420]	; (d00447b0 <drawFakeHorizonDots+0x1f8>)
d004460a:	eec7 7aa9 	vdiv.f32	s15, s15, s19
d004460e:	edd0 fa06 	vldr	s31, [r0, #24]
d0044612:	ed90 fa08 	vldr	s30, [r0, #32]
d0044616:	edd0 ea09 	vldr	s29, [r0, #36]	; 0x24
d004461a:	ed90 ea0b 	vldr	s28, [r0, #44]	; 0x2c
d004461e:	edd0 da0c 	vldr	s27, [r0, #48]	; 0x30
d0044622:	ee30 ba46 	vsub.f32	s22, s0, s12
d0044626:	ed90 da0e 	vldr	s26, [r0, #56]	; 0x38
d004462a:	ee69 9aa5 	vmul.f32	s19, s19, s11
d004462e:	ed9f 8a61 	vldr	s16, [pc, #388]	; d00447b4 <drawFakeHorizonDots+0x1fc>
d0044632:	4b61      	ldr	r3, [pc, #388]	; (d00447b8 <drawFakeHorizonDots+0x200>)
d0044634:	ee2b ca0c 	vmul.f32	s24, s22, s24
d0044638:	eddf ca60 	vldr	s25, [pc, #384]	; d00447bc <drawFakeHorizonDots+0x204>
d004463c:	ee6b ba2b 	vmul.f32	s23, s22, s23
d0044640:	eddf 8a5f 	vldr	s17, [pc, #380]	; d00447c0 <drawFakeHorizonDots+0x208>
d0044644:	ee29 8a88 	vmul.f32	s16, s19, s16
d0044648:	f8df 9184 	ldr.w	r9, [pc, #388]	; d00447d0 <drawFakeHorizonDots+0x218>
d004464c:	febb 7a47 	vrintm.f32	s14, s14
d0044650:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0044654:	ee2b ba26 	vmul.f32	s22, s22, s13
d0044658:	ee17 2a10 	vmov	r2, s14
d004465c:	fefb 7a67 	vrintm.f32	s15, s15
d0044660:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0044664:	fb01 f002 	mul.w	r0, r1, r2
d0044668:	f1a2 0112 	sub.w	r1, r2, #18
d004466c:	ee17 2a90 	vmov	r2, s15
d0044670:	4404      	add	r4, r0
d0044672:	fb07 f101 	mul.w	r1, r7, r1
d0044676:	f1a2 0a12 	sub.w	sl, r2, #18
d004467a:	fb06 0202 	mla	r2, r6, r2, r0
d004467e:	9103      	str	r1, [sp, #12]
d0044680:	fb06 460a 	mla	r6, r6, sl, r4
d0044684:	18d3      	adds	r3, r2, r3
d0044686:	fb0a fa07 	mul.w	sl, sl, r7
d004468a:	9302      	str	r3, [sp, #8]
d004468c:	eddd 7a01 	vldr	s15, [sp, #4]
d0044690:	4c4c      	ldr	r4, [pc, #304]	; (d00447c4 <drawFakeHorizonDots+0x20c>)
d0044692:	ee37 9aa9 	vadd.f32	s18, s15, s19
d0044696:	ee07 aa90 	vmov	s15, sl
d004469a:	1934      	adds	r4, r6, r4
d004469c:	9d03      	ldr	r5, [sp, #12]
d004469e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00446a2:	eddf aa49 	vldr	s21, [pc, #292]	; d00447c8 <drawFakeHorizonDots+0x210>
d00446a6:	ee37 9ac9 	vsub.f32	s18, s15, s18
d00446aa:	ea84 3354 	eor.w	r3, r4, r4, lsr #13
d00446ae:	ee07 5a90 	vmov	s15, r5
d00446b2:	f104 54b2 	add.w	r4, r4, #373293056	; 0x16400000
d00446b6:	eef0 3a49 	vmov.f32	s7, s18
d00446ba:	fb09 f303 	mul.w	r3, r9, r3
d00446be:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d00446c2:	ee7a 7a29 	vadd.f32	s15, s20, s19
d00446c6:	f504 14b3 	add.w	r4, r4, #1466368	; 0x166000
d00446ca:	ea83 4313 	eor.w	r3, r3, r3, lsr #16
d00446ce:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d00446d2:	eddf 5a3e 	vldr	s11, [pc, #248]	; d00447cc <drawFakeHorizonDots+0x214>
d00446d6:	443d      	add	r5, r7
d00446d8:	f3c3 4207 	ubfx	r2, r3, #16, #8
d00446dc:	ee77 7a67 	vsub.f32	s15, s14, s15
d00446e0:	f204 74b1 	addw	r4, r4, #1969	; 0x7b1
d00446e4:	ee07 2a10 	vmov	s14, r2
d00446e8:	f3c3 2207 	ubfx	r2, r3, #8, #8
d00446ec:	b2db      	uxtb	r3, r3
d00446ee:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00446f2:	ee06 2a90 	vmov	s13, r2
d00446f6:	4543      	cmp	r3, r8
d00446f8:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d00446fc:	eee7 3a08 	vfma.f32	s7, s14, s16
d0044700:	d83d      	bhi.n	d004477e <drawFakeHorizonDots+0x1c6>
d0044702:	eee6 7a88 	vfma.f32	s15, s13, s16
d0044706:	ee2d 6a23 	vmul.f32	s12, s26, s7
d004470a:	ee2e 7aa7 	vmul.f32	s14, s29, s15
d004470e:	eead 6aa7 	vfma.f32	s12, s27, s15
d0044712:	ee6f 6aa7 	vmul.f32	s13, s31, s15
d0044716:	eef0 7a47 	vmov.f32	s15, s14
d004471a:	eeef 6a23 	vfma.f32	s13, s30, s7
d004471e:	eeee 7a23 	vfma.f32	s15, s28, s7
d0044722:	ee3b 6a06 	vadd.f32	s12, s22, s12
d0044726:	eef4 4ac6 	vcmpe.f32	s9, s12
d004472a:	ee3c 7a26 	vadd.f32	s14, s24, s13
d004472e:	ee7b 7aa7 	vadd.f32	s15, s23, s15
d0044732:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044736:	ee27 7a2c 	vmul.f32	s14, s14, s25
d004473a:	ee67 7aaa 	vmul.f32	s15, s15, s21
d004473e:	da1e      	bge.n	d004477e <drawFakeHorizonDots+0x1c6>
d0044740:	eec5 6a06 	vdiv.f32	s13, s10, s12
d0044744:	eeb0 6a68 	vmov.f32	s12, s17
d0044748:	eea7 6a26 	vfma.f32	s12, s14, s13
d004474c:	eee7 5aa6 	vfma.f32	s11, s15, s13
d0044750:	eefd 7ac6 	vcvt.s32.f32	s15, s12
d0044754:	eefd 5ae5 	vcvt.s32.f32	s11, s11
d0044758:	ee17 0a90 	vmov	r0, s15
d004475c:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0044760:	d20d      	bcs.n	d004477e <drawFakeHorizonDots+0x1c6>
d0044762:	ee15 3a90 	vmov	r3, s11
d0044766:	465a      	mov	r2, fp
d0044768:	ee15 1a90 	vmov	r1, s11
d004476c:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0044770:	d205      	bcs.n	d004477e <drawFakeHorizonDots+0x1c6>
d0044772:	edcd 4a00 	vstr	s9, [sp]
d0044776:	f7fb fcd9 	bl	d004012c <putPixel>
d004477a:	eddd 4a00 	vldr	s9, [sp]
d004477e:	42b4      	cmp	r4, r6
d0044780:	d193      	bne.n	d00446aa <drawFakeHorizonDots+0xf2>
d0044782:	f106 561f 	add.w	r6, r6, #666894336	; 0x27c00000
d0044786:	9b02      	ldr	r3, [sp, #8]
d0044788:	44ba      	add	sl, r7
d004478a:	f506 16a7 	add.w	r6, r6, #1368064	; 0x14e000
d004478e:	f606 362f 	addw	r6, r6, #2863	; 0xb2f
d0044792:	42b3      	cmp	r3, r6
d0044794:	f47f af7a 	bne.w	d004468c <drawFakeHorizonDots+0xd4>
d0044798:	b005      	add	sp, #20
d004479a:	ecbd 8b10 	vpop	{d8-d15}
d004479e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00447a2:	4770      	bx	lr
d00447a4:	3eb33333 	.word	0x3eb33333
d00447a8:	165667b1 	.word	0x165667b1
d00447ac:	27d4eb2f 	.word	0x27d4eb2f
d00447b0:	a869b223 	.word	0xa869b223
d00447b4:	3c008081 	.word	0x3c008081
d00447b8:	9d3726a0 	.word	0x9d3726a0
d00447bc:	43700000 	.word	0x43700000
d00447c0:	43708000 	.word	0x43708000
d00447c4:	c583036b 	.word	0xc583036b
d00447c8:	c3700000 	.word	0xc3700000
d00447cc:	43208000 	.word	0x43208000
d00447d0:	4bf19f61 	.word	0x4bf19f61

d00447d4 <drawFakeHorizon>:
d00447d4:	2800      	cmp	r0, #0
d00447d6:	f000 813c 	beq.w	d0044a52 <drawFakeHorizon+0x27e>
d00447da:	ed9f 7aa2 	vldr	s14, [pc, #648]	; d0044a64 <drawFakeHorizon+0x290>
d00447de:	eddf 6aa2 	vldr	s13, [pc, #648]	; d0044a68 <drawFakeHorizon+0x294>
d00447e2:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00447e6:	ed2d 8b0c 	vpush	{d8-d13}
d00447ea:	ed90 da0a 	vldr	s26, [r0, #40]	; 0x28
d00447ee:	eeb0 ca47 	vmov.f32	s24, s14
d00447f2:	ed9f 9a9e 	vldr	s18, [pc, #632]	; d0044a6c <drawFakeHorizon+0x298>
d00447f6:	b083      	sub	sp, #12
d00447f8:	edd0 ba0d 	vldr	s23, [r0, #52]	; 0x34
d00447fc:	eeb0 bacd 	vabs.f32	s22, s26
d0044800:	ee6d 7a09 	vmul.f32	s15, s26, s18
d0044804:	eddf 9a9a 	vldr	s19, [pc, #616]	; d0044a70 <drawFakeHorizon+0x29c>
d0044808:	eef0 aa6b 	vmov.f32	s21, s23
d004480c:	edd0 da07 	vldr	s27, [r0, #28]
d0044810:	eeb0 aa6b 	vmov.f32	s20, s23
d0044814:	edd0 8a01 	vldr	s17, [r0, #4]
d0044818:	eec9 ca8d 	vdiv.f32	s25, s19, s26
d004481c:	460f      	mov	r7, r1
d004481e:	4690      	mov	r8, r2
d0044820:	4699      	mov	r9, r3
d0044822:	2400      	movs	r4, #0
d0044824:	4e93      	ldr	r6, [pc, #588]	; (d0044a74 <drawFakeHorizon+0x2a0>)
d0044826:	ed9f 8a94 	vldr	s16, [pc, #592]	; d0044a78 <drawFakeHorizon+0x2a4>
d004482a:	eee7 aa87 	vfma.f32	s21, s15, s14
d004482e:	eea7 aaa6 	vfma.f32	s20, s15, s13
d0044832:	ee2d 9a89 	vmul.f32	s18, s27, s18
d0044836:	ee70 8a68 	vsub.f32	s17, s0, s17
d004483a:	e056      	b.n	d00448ea <drawFakeHorizon+0x116>
d004483c:	ee88 6aa6 	vdiv.f32	s12, s17, s13
d0044840:	eef0 6ac7 	vabs.f32	s13, s14
d0044844:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d0044848:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004484c:	eef4 6ac8 	vcmpe.f32	s13, s16
d0044850:	bfcc      	ite	gt
d0044852:	2201      	movgt	r2, #1
d0044854:	2200      	movle	r2, #0
d0044856:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004485a:	da61      	bge.n	d0044920 <drawFakeHorizon+0x14c>
d004485c:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d0044860:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d0044864:	6833      	ldr	r3, [r6, #0]
d0044866:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004486a:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d004486e:	f240 80a8 	bls.w	d00449c2 <drawFakeHorizon+0x1ee>
d0044872:	eeb4 bac8 	vcmpe.f32	s22, s16
d0044876:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004487a:	f100 809a 	bmi.w	d00449b2 <drawFakeHorizon+0x1de>
d004487e:	ee7b 7aa7 	vadd.f32	s15, s23, s15
d0044882:	eeb0 7a4c 	vmov.f32	s14, s24
d0044886:	eeac 7aa7 	vfma.f32	s14, s25, s15
d004488a:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d004488e:	ee17 ba90 	vmov	fp, s15
d0044892:	f1bb 0f00 	cmp.w	fp, #0
d0044896:	f2c0 80aa 	blt.w	d00449ee <drawFakeHorizon+0x21a>
d004489a:	2201      	movs	r2, #1
d004489c:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d00448a0:	46da      	mov	sl, fp
d00448a2:	bfa8      	it	ge
d00448a4:	f44f 7aa0 	movge.w	sl, #320	; 0x140
d00448a8:	2a00      	cmp	r2, #0
d00448aa:	f000 8091 	beq.w	d00449d0 <drawFakeHorizon+0x1fc>
d00448ae:	f1bb 0f00 	cmp.w	fp, #0
d00448b2:	d009      	beq.n	d00448c8 <drawFakeHorizon+0xf4>
d00448b4:	f1ba 0f00 	cmp.w	sl, #0
d00448b8:	4628      	mov	r0, r5
d00448ba:	4641      	mov	r1, r8
d00448bc:	bfcc      	ite	gt
d00448be:	4652      	movgt	r2, sl
d00448c0:	2201      	movle	r2, #1
d00448c2:	4415      	add	r5, r2
d00448c4:	f001 fb1c 	bl	d0045f00 <memset>
d00448c8:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d00448cc:	d009      	beq.n	d00448e2 <drawFakeHorizon+0x10e>
d00448ce:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d00448d2:	f5ca 72a0 	rsb	r2, sl, #320	; 0x140
d00448d6:	4628      	mov	r0, r5
d00448d8:	4639      	mov	r1, r7
d00448da:	bfa8      	it	ge
d00448dc:	2201      	movge	r2, #1
d00448de:	f001 fb0f 	bl	d0045f00 <memset>
d00448e2:	3401      	adds	r4, #1
d00448e4:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d00448e8:	d04e      	beq.n	d0044988 <drawFakeHorizon+0x1b4>
d00448ea:	ee07 4a90 	vmov	s15, r4
d00448ee:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00448f2:	ee77 7ae9 	vsub.f32	s15, s15, s19
d00448f6:	ee67 7a89 	vmul.f32	s15, s15, s18
d00448fa:	ee77 6aaa 	vadd.f32	s13, s15, s21
d00448fe:	ee3a 7a27 	vadd.f32	s14, s20, s15
d0044902:	eeb0 6ae6 	vabs.f32	s12, s13
d0044906:	eeb4 6ac8 	vcmpe.f32	s12, s16
d004490a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004490e:	da95      	bge.n	d004483c <drawFakeHorizon+0x68>
d0044910:	eef0 6ac7 	vabs.f32	s13, s14
d0044914:	eef4 6ac8 	vcmpe.f32	s13, s16
d0044918:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004491c:	db4c      	blt.n	d00449b8 <drawFakeHorizon+0x1e4>
d004491e:	2200      	movs	r2, #0
d0044920:	eec8 6a87 	vdiv.f32	s13, s17, s14
d0044924:	6833      	ldr	r3, [r6, #0]
d0044926:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d004492a:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d004492e:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0044932:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044936:	bfcc      	ite	gt
d0044938:	2301      	movgt	r3, #1
d004493a:	2300      	movle	r3, #0
d004493c:	4293      	cmp	r3, r2
d004493e:	f000 8089 	beq.w	d0044a54 <drawFakeHorizon+0x280>
d0044942:	eeb4 bac8 	vcmpe.f32	s22, s16
d0044946:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004494a:	d429      	bmi.n	d00449a0 <drawFakeHorizon+0x1cc>
d004494c:	ee7b 7aa7 	vadd.f32	s15, s23, s15
d0044950:	eeb0 7a4c 	vmov.f32	s14, s24
d0044954:	eeac 7aa7 	vfma.f32	s14, s25, s15
d0044958:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d004495c:	ee17 ba90 	vmov	fp, s15
d0044960:	f1bb 0f00 	cmp.w	fp, #0
d0044964:	da9a      	bge.n	d004489c <drawFakeHorizon+0xc8>
d0044966:	2a00      	cmp	r2, #0
d0044968:	d141      	bne.n	d00449ee <drawFakeHorizon+0x21a>
d004496a:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d004496e:	f104 0401 	add.w	r4, r4, #1
d0044972:	f5c2 72a0 	rsb	r2, r2, #320	; 0x140
d0044976:	4628      	mov	r0, r5
d0044978:	bfa8      	it	ge
d004497a:	2201      	movge	r2, #1
d004497c:	4641      	mov	r1, r8
d004497e:	f001 fabf 	bl	d0045f00 <memset>
d0044982:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d0044986:	d1b0      	bne.n	d00448ea <drawFakeHorizon+0x116>
d0044988:	eddf 7a3b 	vldr	s15, [pc, #236]	; d0044a78 <drawFakeHorizon+0x2a4>
d004498c:	eeb4 bae7 	vcmpe.f32	s22, s15
d0044990:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044994:	da31      	bge.n	d00449fa <drawFakeHorizon+0x226>
d0044996:	b003      	add	sp, #12
d0044998:	ecbd 8b0c 	vpop	{d8-d13}
d004499c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00449a0:	b93a      	cbnz	r2, d00449b2 <drawFakeHorizon+0x1de>
d00449a2:	22a0      	movs	r2, #160	; 0xa0
d00449a4:	4628      	mov	r0, r5
d00449a6:	4639      	mov	r1, r7
d00449a8:	4415      	add	r5, r2
d00449aa:	f001 faa9 	bl	d0045f00 <memset>
d00449ae:	22a0      	movs	r2, #160	; 0xa0
d00449b0:	e7db      	b.n	d004496a <drawFakeHorizon+0x196>
d00449b2:	f04f 0aa0 	mov.w	sl, #160	; 0xa0
d00449b6:	e77d      	b.n	d00448b4 <drawFakeHorizon+0xe0>
d00449b8:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d00449bc:	6832      	ldr	r2, [r6, #0]
d00449be:	eb02 1585 	add.w	r5, r2, r5, lsl #6
d00449c2:	4639      	mov	r1, r7
d00449c4:	4628      	mov	r0, r5
d00449c6:	f44f 72a0 	mov.w	r2, #320	; 0x140
d00449ca:	f001 fa99 	bl	d0045f00 <memset>
d00449ce:	e788      	b.n	d00448e2 <drawFakeHorizon+0x10e>
d00449d0:	f1bb 0f00 	cmp.w	fp, #0
d00449d4:	d00e      	beq.n	d00449f4 <drawFakeHorizon+0x220>
d00449d6:	4628      	mov	r0, r5
d00449d8:	4652      	mov	r2, sl
d00449da:	4639      	mov	r1, r7
d00449dc:	4455      	add	r5, sl
d00449de:	f001 fa8f 	bl	d0045f00 <memset>
d00449e2:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d00449e6:	f6bf af7c 	bge.w	d00448e2 <drawFakeHorizon+0x10e>
d00449ea:	4652      	mov	r2, sl
d00449ec:	e7bd      	b.n	d004496a <drawFakeHorizon+0x196>
d00449ee:	f04f 0a00 	mov.w	sl, #0
d00449f2:	e76c      	b.n	d00448ce <drawFakeHorizon+0xfa>
d00449f4:	46da      	mov	sl, fp
d00449f6:	4652      	mov	r2, sl
d00449f8:	e7b7      	b.n	d004496a <drawFakeHorizon+0x196>
d00449fa:	ed9f 7a1d 	vldr	s14, [pc, #116]	; d0044a70 <drawFakeHorizon+0x29c>
d00449fe:	f240 12df 	movw	r2, #479	; 0x1df
d0044a02:	eddf 7a1e 	vldr	s15, [pc, #120]	; d0044a7c <drawFakeHorizon+0x2a8>
d0044a06:	2000      	movs	r0, #0
d0044a08:	ee6b ba87 	vmul.f32	s23, s23, s14
d0044a0c:	ed9f 7a1c 	vldr	s14, [pc, #112]	; d0044a80 <drawFakeHorizon+0x2ac>
d0044a10:	eddf 6a14 	vldr	s13, [pc, #80]	; d0044a64 <drawFakeHorizon+0x290>
d0044a14:	f8cd 9000 	str.w	r9, [sp]
d0044a18:	eeb0 6a6b 	vmov.f32	s12, s23
d0044a1c:	eeed ba87 	vfma.f32	s23, s27, s14
d0044a20:	eead 6aa7 	vfma.f32	s12, s27, s15
d0044a24:	eecb 7a8d 	vdiv.f32	s15, s23, s26
d0044a28:	ee86 7a0d 	vdiv.f32	s14, s12, s26
d0044a2c:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0044a30:	fefc 7ae7 	vcvta.s32.f32	s15, s15
d0044a34:	ee37 7a26 	vadd.f32	s14, s14, s13
d0044a38:	ee17 3a90 	vmov	r3, s15
d0044a3c:	febc 7ac7 	vcvta.s32.f32	s14, s14
d0044a40:	ee17 1a10 	vmov	r1, s14
d0044a44:	f7fb fb82 	bl	d004014c <drawLine>
d0044a48:	b003      	add	sp, #12
d0044a4a:	ecbd 8b0c 	vpop	{d8-d13}
d0044a4e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0044a52:	4770      	bx	lr
d0044a54:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0044a58:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044a5c:	ddb1      	ble.n	d00449c2 <drawFakeHorizon+0x1ee>
d0044a5e:	4641      	mov	r1, r8
d0044a60:	e7b0      	b.n	d00449c4 <drawFakeHorizon+0x1f0>
d0044a62:	bf00      	nop
d0044a64:	43200000 	.word	0x43200000
d0044a68:	c31f0000 	.word	0xc31f0000
d0044a6c:	3b888889 	.word	0x3b888889
d0044a70:	43700000 	.word	0x43700000
d0044a74:	d00e1c0c 	.word	0xd00e1c0c
d0044a78:	38d1b717 	.word	0x38d1b717
d0044a7c:	c3700000 	.word	0xc3700000
d0044a80:	436f0000 	.word	0x436f0000

d0044a84 <submitEntitySolid>:
d0044a84:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0044a88:	ed2d 8b10 	vpush	{d8-d15}
d0044a8c:	b0b3      	sub	sp, #204	; 0xcc
d0044a8e:	f10d 036f 	add.w	r3, sp, #111	; 0x6f
d0044a92:	9104      	str	r1, [sp, #16]
d0044a94:	f023 031f 	bic.w	r3, r3, #31
d0044a98:	9305      	str	r3, [sp, #20]
d0044a9a:	2800      	cmp	r0, #0
d0044a9c:	f000 827c 	beq.w	d0044f98 <submitEntitySolid+0x514>
d0044aa0:	f8d0 800c 	ldr.w	r8, [r0, #12]
d0044aa4:	4604      	mov	r4, r0
d0044aa6:	f1b8 0f00 	cmp.w	r8, #0
d0044aaa:	f000 8275 	beq.w	d0044f98 <submitEntitySolid+0x514>
d0044aae:	f8d8 3000 	ldr.w	r3, [r8]
d0044ab2:	2b00      	cmp	r3, #0
d0044ab4:	f000 8270 	beq.w	d0044f98 <submitEntitySolid+0x514>
d0044ab8:	f8d8 3010 	ldr.w	r3, [r8, #16]
d0044abc:	2b00      	cmp	r3, #0
d0044abe:	f000 826b 	beq.w	d0044f98 <submitEntitySolid+0x514>
d0044ac2:	f8d8 3004 	ldr.w	r3, [r8, #4]
d0044ac6:	3b01      	subs	r3, #1
d0044ac8:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d0044acc:	f080 8264 	bcs.w	d0044f98 <submitEntitySolid+0x514>
d0044ad0:	f8d8 3014 	ldr.w	r3, [r8, #20]
d0044ad4:	2b00      	cmp	r3, #0
d0044ad6:	f340 825f 	ble.w	d0044f98 <submitEntitySolid+0x514>
d0044ada:	460f      	mov	r7, r1
d0044adc:	edd1 aa11 	vldr	s21, [r1, #68]	; 0x44
d0044ae0:	ed91 fa10 	vldr	s30, [r1, #64]	; 0x40
d0044ae4:	f7fe ffbe 	bl	d0043a64 <lightsGet>
d0044ae8:	900b      	str	r0, [sp, #44]	; 0x2c
d0044aea:	f7fe ffbf 	bl	d0043a6c <lightsGetCount>
d0044aee:	edd8 fa09 	vldr	s31, [r8, #36]	; 0x24
d0044af2:	edd8 7a0a 	vldr	s15, [r8, #40]	; 0x28
d0044af6:	eef5 fac0 	vcmpe.f32	s31, #0.0
d0044afa:	ed98 7a08 	vldr	s14, [r8, #32]
d0044afe:	f8d8 3004 	ldr.w	r3, [r8, #4]
d0044b02:	ed8d 7a01 	vstr	s14, [sp, #4]
d0044b06:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044b0a:	ed98 7a0c 	vldr	s14, [r8, #48]	; 0x30
d0044b0e:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0044b12:	ed94 6a00 	vldr	s12, [r4]
d0044b16:	ed8d 7a09 	vstr	s14, [sp, #36]	; 0x24
d0044b1a:	bfcc      	ite	gt
d0044b1c:	2601      	movgt	r6, #1
d0044b1e:	2600      	movle	r6, #0
d0044b20:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044b24:	ed98 7a0b 	vldr	s14, [r8, #44]	; 0x2c
d0044b28:	edd4 5a01 	vldr	s11, [r4, #4]
d0044b2c:	ed94 5a02 	vldr	s10, [r4, #8]
d0044b30:	bfcc      	ite	gt
d0044b32:	2501      	movgt	r5, #1
d0044b34:	2500      	movle	r5, #0
d0044b36:	2b00      	cmp	r3, #0
d0044b38:	edd4 4a07 	vldr	s9, [r4, #28]
d0044b3c:	ed94 4a08 	vldr	s8, [r4, #32]
d0044b40:	edd4 3a09 	vldr	s7, [r4, #36]	; 0x24
d0044b44:	ed94 3a0a 	vldr	s6, [r4, #40]	; 0x28
d0044b48:	edd4 2a0b 	vldr	s5, [r4, #44]	; 0x2c
d0044b4c:	ed94 2a0c 	vldr	s4, [r4, #48]	; 0x30
d0044b50:	edd4 1a04 	vldr	s3, [r4, #16]
d0044b54:	ed94 1a05 	vldr	s2, [r4, #20]
d0044b58:	edd4 0a06 	vldr	s1, [r4, #24]
d0044b5c:	edd7 ca00 	vldr	s25, [r7]
d0044b60:	ed97 da01 	vldr	s26, [r7, #4]
d0044b64:	edd7 da02 	vldr	s27, [r7, #8]
d0044b68:	ed97 0a06 	vldr	s0, [r7, #24]
d0044b6c:	ed97 8a07 	vldr	s16, [r7, #28]
d0044b70:	edd7 8a08 	vldr	s17, [r7, #32]
d0044b74:	ed97 9a09 	vldr	s18, [r7, #36]	; 0x24
d0044b78:	edd7 9a0a 	vldr	s19, [r7, #40]	; 0x28
d0044b7c:	ed97 aa0b 	vldr	s20, [r7, #44]	; 0x2c
d0044b80:	edcd 7a0a 	vstr	s15, [sp, #40]	; 0x28
d0044b84:	9007      	str	r0, [sp, #28]
d0044b86:	ed8d 7a08 	vstr	s14, [sp, #32]
d0044b8a:	ed97 ba0c 	vldr	s22, [r7, #48]	; 0x30
d0044b8e:	edd7 ba0d 	vldr	s23, [r7, #52]	; 0x34
d0044b92:	ed97 ca0e 	vldr	s24, [r7, #56]	; 0x38
d0044b96:	dd51      	ble.n	d0044c3c <submitEntitySolid+0x1b8>
d0044b98:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0044b9c:	f8d8 3000 	ldr.w	r3, [r8]
d0044ba0:	49de      	ldr	r1, [pc, #888]	; (d0044f1c <submitEntitySolid+0x498>)
d0044ba2:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d0044ba6:	4ade      	ldr	r2, [pc, #888]	; (d0044f20 <submitEntitySolid+0x49c>)
d0044ba8:	edd3 7a01 	vldr	s15, [r3, #4]
d0044bac:	330c      	adds	r3, #12
d0044bae:	ed53 ea03 	vldr	s29, [r3, #-12]
d0044bb2:	310c      	adds	r1, #12
d0044bb4:	ee27 7aa2 	vmul.f32	s14, s15, s5
d0044bb8:	ed53 6a01 	vldr	s13, [r3, #-4]
d0044bbc:	ee27 ea83 	vmul.f32	s28, s15, s6
d0044bc0:	4298      	cmp	r0, r3
d0044bc2:	ee67 7a82 	vmul.f32	s15, s15, s4
d0044bc6:	f102 020c 	add.w	r2, r2, #12
d0044bca:	eeae 7a84 	vfma.f32	s14, s29, s8
d0044bce:	eeae eaa4 	vfma.f32	s28, s29, s9
d0044bd2:	eeee 7aa3 	vfma.f32	s15, s29, s7
d0044bd6:	ee35 7a87 	vadd.f32	s14, s11, s14
d0044bda:	ee36 ea0e 	vadd.f32	s28, s12, s28
d0044bde:	ee75 7a27 	vadd.f32	s15, s10, s15
d0044be2:	eea6 7a81 	vfma.f32	s14, s13, s2
d0044be6:	eea6 eaa1 	vfma.f32	s28, s13, s3
d0044bea:	eee6 7aa0 	vfma.f32	s15, s13, s1
d0044bee:	eef0 ea47 	vmov.f32	s29, s14
d0044bf2:	ee37 7a4d 	vsub.f32	s14, s14, s26
d0044bf6:	ed01 ea03 	vstr	s28, [r1, #-12]
d0044bfa:	ee7e 6a6c 	vsub.f32	s13, s28, s25
d0044bfe:	ed41 7a01 	vstr	s15, [r1, #-4]
d0044c02:	ee37 eaed 	vsub.f32	s28, s15, s27
d0044c06:	ed41 ea02 	vstr	s29, [r1, #-8]
d0044c0a:	ee69 7a87 	vmul.f32	s15, s19, s14
d0044c0e:	ee68 ea07 	vmul.f32	s29, s16, s14
d0044c12:	ee2b 7a87 	vmul.f32	s14, s23, s14
d0044c16:	eee9 7a26 	vfma.f32	s15, s18, s13
d0044c1a:	eee0 ea26 	vfma.f32	s29, s0, s13
d0044c1e:	eeab 7a26 	vfma.f32	s14, s22, s13
d0044c22:	eeea 7a0e 	vfma.f32	s15, s20, s28
d0044c26:	eee8 ea8e 	vfma.f32	s29, s17, s28
d0044c2a:	eeac 7a0e 	vfma.f32	s14, s24, s28
d0044c2e:	ed42 7a02 	vstr	s15, [r2, #-8]
d0044c32:	ed42 ea03 	vstr	s29, [r2, #-12]
d0044c36:	ed02 7a01 	vstr	s14, [r2, #-4]
d0044c3a:	d1b5      	bne.n	d0044ba8 <submitEntitySolid+0x124>
d0044c3c:	f8d8 3014 	ldr.w	r3, [r8, #20]
d0044c40:	2b00      	cmp	r3, #0
d0044c42:	9302      	str	r3, [sp, #8]
d0044c44:	f340 81a8 	ble.w	d0044f98 <submitEntitySolid+0x514>
d0044c48:	ea46 0305 	orr.w	r3, r6, r5
d0044c4c:	ed9d ba0a 	vldr	s22, [sp, #40]	; 0x28
d0044c50:	f04f 0900 	mov.w	r9, #0
d0044c54:	edcd ca0a 	vstr	s25, [sp, #40]	; 0x28
d0044c58:	eddf eab2 	vldr	s29, [pc, #712]	; d0044f24 <submitEntitySolid+0x4a0>
d0044c5c:	eddd ca01 	vldr	s25, [sp, #4]
d0044c60:	ed8d da0c 	vstr	s26, [sp, #48]	; 0x30
d0044c64:	9306      	str	r3, [sp, #24]
d0044c66:	ed9d da09 	vldr	s26, [sp, #36]	; 0x24
d0044c6a:	f8cd 800c 	str.w	r8, [sp, #12]
d0044c6e:	edcd da09 	vstr	s27, [sp, #36]	; 0x24
d0044c72:	9a03      	ldr	r2, [sp, #12]
d0044c74:	ea4f 1309 	mov.w	r3, r9, lsl #4
d0044c78:	4ea9      	ldr	r6, [pc, #676]	; (d0044f20 <submitEntitySolid+0x49c>)
d0044c7a:	6915      	ldr	r5, [r2, #16]
d0044c7c:	58e8      	ldr	r0, [r5, r3]
d0044c7e:	eb05 1509 	add.w	r5, r5, r9, lsl #4
d0044c82:	4633      	mov	r3, r6
d0044c84:	eb00 0440 	add.w	r4, r0, r0, lsl #1
d0044c88:	686a      	ldr	r2, [r5, #4]
d0044c8a:	68af      	ldr	r7, [r5, #8]
d0044c8c:	0041      	lsls	r1, r0, #1
d0044c8e:	eb06 0484 	add.w	r4, r6, r4, lsl #2
d0044c92:	9701      	str	r7, [sp, #4]
d0044c94:	eb02 0642 	add.w	r6, r2, r2, lsl #1
d0044c98:	edd4 4a02 	vldr	s9, [r4, #8]
d0044c9c:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d0044ca0:	eb03 0686 	add.w	r6, r3, r6, lsl #2
d0044ca4:	eef4 4aea 	vcmpe.f32	s9, s21
d0044ca8:	eb03 0787 	add.w	r7, r3, r7, lsl #2
d0044cac:	9b01      	ldr	r3, [sp, #4]
d0044cae:	ea4f 0842 	mov.w	r8, r2, lsl #1
d0044cb2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044cb6:	ea4f 0b43 	mov.w	fp, r3, lsl #1
d0044cba:	dd0e      	ble.n	d0044cda <submitEntitySolid+0x256>
d0044cbc:	edd6 7a02 	vldr	s15, [r6, #8]
d0044cc0:	eef4 7aea 	vcmpe.f32	s15, s21
d0044cc4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044cc8:	dd07      	ble.n	d0044cda <submitEntitySolid+0x256>
d0044cca:	edd7 7a02 	vldr	s15, [r7, #8]
d0044cce:	eef4 7aea 	vcmpe.f32	s15, s21
d0044cd2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044cd6:	f300 8159 	bgt.w	d0044f8c <submitEntitySolid+0x508>
d0044cda:	ed94 5a00 	vldr	s10, [r4]
d0044cde:	edd4 2a02 	vldr	s5, [r4, #8]
d0044ce2:	ed96 4a00 	vldr	s8, [r6]
d0044ce6:	ed97 6a02 	vldr	s12, [r7, #8]
d0044cea:	ee34 1a45 	vsub.f32	s2, s8, s10
d0044cee:	edd4 7a01 	vldr	s15, [r4, #4]
d0044cf2:	ee36 6a62 	vsub.f32	s12, s12, s5
d0044cf6:	ed96 3a02 	vldr	s6, [r6, #8]
d0044cfa:	edd7 6a01 	vldr	s13, [r7, #4]
d0044cfe:	edd7 3a00 	vldr	s7, [r7]
d0044d02:	ee33 3a62 	vsub.f32	s6, s6, s5
d0044d06:	ee76 6ae7 	vsub.f32	s13, s13, s15
d0044d0a:	edd6 5a01 	vldr	s11, [r6, #4]
d0044d0e:	ee33 7ac5 	vsub.f32	s14, s7, s10
d0044d12:	ee66 1a41 	vnmul.f32	s3, s12, s2
d0044d16:	ee75 5ae7 	vsub.f32	s11, s11, s15
d0044d1a:	ee26 2ac3 	vnmul.f32	s4, s13, s6
d0044d1e:	eee3 1a07 	vfma.f32	s3, s6, s14
d0044d22:	ee27 7a65 	vnmul.f32	s14, s14, s11
d0044d26:	eea5 2a86 	vfma.f32	s4, s11, s12
d0044d2a:	eea1 7a26 	vfma.f32	s14, s2, s13
d0044d2e:	ee67 7aa1 	vmul.f32	s15, s15, s3
d0044d32:	eee5 7a02 	vfma.f32	s15, s10, s4
d0044d36:	eee2 7a87 	vfma.f32	s15, s5, s14
d0044d3a:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0044d3e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044d42:	f280 8123 	bge.w	d0044f8c <submitEntitySolid+0x508>
d0044d46:	180b      	adds	r3, r1, r0
d0044d48:	9901      	ldr	r1, [sp, #4]
d0044d4a:	f8df e1d0 	ldr.w	lr, [pc, #464]	; d0044f1c <submitEntitySolid+0x498>
d0044d4e:	eb08 0c02 	add.w	ip, r8, r2
d0044d52:	eb0b 0a01 	add.w	sl, fp, r1
d0044d56:	eb0e 0383 	add.w	r3, lr, r3, lsl #2
d0044d5a:	eb0e 0c8c 	add.w	ip, lr, ip, lsl #2
d0044d5e:	eb0e 0a8a 	add.w	sl, lr, sl, lsl #2
d0044d62:	ed93 7a00 	vldr	s14, [r3]
d0044d66:	ed93 6a02 	vldr	s12, [r3, #8]
d0044d6a:	eddc 5a00 	vldr	s11, [ip]
d0044d6e:	ed9a 1a02 	vldr	s2, [sl, #8]
d0044d72:	ee75 0ac7 	vsub.f32	s1, s11, s14
d0044d76:	edd3 6a01 	vldr	s13, [r3, #4]
d0044d7a:	ee31 0a46 	vsub.f32	s0, s2, s12
d0044d7e:	eddc 2a02 	vldr	s5, [ip, #8]
d0044d82:	edda 1a01 	vldr	s3, [sl, #4]
d0044d86:	ed9a 2a00 	vldr	s4, [sl]
d0044d8a:	ee32 aac6 	vsub.f32	s20, s5, s12
d0044d8e:	ee71 7ae6 	vsub.f32	s15, s3, s13
d0044d92:	ed9c 3a01 	vldr	s6, [ip, #4]
d0044d96:	ee32 8a47 	vsub.f32	s16, s4, s14
d0044d9a:	ee20 9a60 	vnmul.f32	s18, s0, s1
d0044d9e:	ee73 9a66 	vsub.f32	s19, s6, s13
d0044da2:	ee67 8aca 	vnmul.f32	s17, s15, s20
d0044da6:	eeaa 9a08 	vfma.f32	s18, s20, s16
d0044daa:	ee28 8a69 	vnmul.f32	s16, s16, s19
d0044dae:	eee9 8a80 	vfma.f32	s17, s19, s0
d0044db2:	eea0 8aa7 	vfma.f32	s16, s1, s15
d0044db6:	ee69 7a09 	vmul.f32	s15, s18, s18
d0044dba:	eee8 7aa8 	vfma.f32	s15, s17, s17
d0044dbe:	eee8 7a08 	vfma.f32	s15, s16, s16
d0044dc2:	eef4 7aee 	vcmpe.f32	s15, s29
d0044dc6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044dca:	f240 80df 	bls.w	d0044f8c <submitEntitySolid+0x508>
d0044dce:	eddf 0a59 	vldr	s1, [pc, #356]	; d0044f34 <submitEntitySolid+0x4b0>
d0044dd2:	eef4 7ae0 	vcmpe.f32	s15, s1
d0044dd6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044dda:	f100 822b 	bmi.w	d0045234 <submitEntitySolid+0x7b0>
d0044dde:	eddf 0a56 	vldr	s1, [pc, #344]	; d0044f38 <submitEntitySolid+0x4b4>
d0044de2:	eef4 7a60 	vcmp.f32	s15, s1
d0044de6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044dea:	f300 8223 	bgt.w	d0045234 <submitEntitySolid+0x7b0>
d0044dee:	7b6b      	ldrb	r3, [r5, #13]
d0044df0:	eef4 4acf 	vcmpe.f32	s9, s30
d0044df4:	eddf 7a4c 	vldr	s15, [pc, #304]	; d0044f28 <submitEntitySolid+0x4a4>
d0044df8:	ee7c 9a8d 	vadd.f32	s19, s25, s26
d0044dfc:	ee0a 3a10 	vmov	s20, r3
d0044e00:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e04:	eeb8 aa4a 	vcvt.f32.u32	s20, s20
d0044e08:	ee2a aa27 	vmul.f32	s20, s20, s15
d0044e0c:	f2c0 80c9 	blt.w	d0044fa2 <submitEntitySolid+0x51e>
d0044e10:	4490      	add	r8, r2
d0044e12:	4b43      	ldr	r3, [pc, #268]	; (d0044f20 <submitEntitySolid+0x49c>)
d0044e14:	eb03 0888 	add.w	r8, r3, r8, lsl #2
d0044e18:	edd8 7a02 	vldr	s15, [r8, #8]
d0044e1c:	eef4 7acf 	vcmpe.f32	s15, s30
d0044e20:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e24:	f2c0 80bd 	blt.w	d0044fa2 <submitEntitySolid+0x51e>
d0044e28:	9901      	ldr	r1, [sp, #4]
d0044e2a:	448b      	add	fp, r1
d0044e2c:	4619      	mov	r1, r3
d0044e2e:	eb03 0b8b 	add.w	fp, r3, fp, lsl #2
d0044e32:	eddb 0a02 	vldr	s1, [fp, #8]
d0044e36:	eef4 0acf 	vcmpe.f32	s1, s30
d0044e3a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e3e:	f2c0 80b0 	blt.w	d0044fa2 <submitEntitySolid+0x51e>
d0044e42:	eeb1 0a64 	vneg.f32	s0, s9
d0044e46:	eeb4 0a45 	vcmp.f32	s0, s10
d0044e4a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e4e:	f200 80a8 	bhi.w	d0044fa2 <submitEntitySolid+0x51e>
d0044e52:	eef4 4a45 	vcmp.f32	s9, s10
d0044e56:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e5a:	f2c0 80a2 	blt.w	d0044fa2 <submitEntitySolid+0x51e>
d0044e5e:	eeb1 5a67 	vneg.f32	s10, s15
d0044e62:	eeb4 5a44 	vcmp.f32	s10, s8
d0044e66:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e6a:	f200 809a 	bhi.w	d0044fa2 <submitEntitySolid+0x51e>
d0044e6e:	eef4 7a44 	vcmp.f32	s15, s8
d0044e72:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e76:	f2c0 8094 	blt.w	d0044fa2 <submitEntitySolid+0x51e>
d0044e7a:	eeb1 5a60 	vneg.f32	s10, s1
d0044e7e:	eeb4 5a63 	vcmp.f32	s10, s7
d0044e82:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e86:	f200 808c 	bhi.w	d0044fa2 <submitEntitySolid+0x51e>
d0044e8a:	eef4 0a63 	vcmp.f32	s1, s7
d0044e8e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e92:	f2c0 8086 	blt.w	d0044fa2 <submitEntitySolid+0x51e>
d0044e96:	ed9f 5a25 	vldr	s10, [pc, #148]	; d0044f2c <submitEntitySolid+0x4a8>
d0044e9a:	230c      	movs	r3, #12
d0044e9c:	ee64 4a85 	vmul.f32	s9, s9, s10
d0044ea0:	fb03 1000 	mla	r0, r3, r0, r1
d0044ea4:	ed90 5a01 	vldr	s10, [r0, #4]
d0044ea8:	eeb1 4a64 	vneg.f32	s8, s9
d0044eac:	eeb4 5a44 	vcmp.f32	s10, s8
d0044eb0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044eb4:	db75      	blt.n	d0044fa2 <submitEntitySolid+0x51e>
d0044eb6:	eeb4 5a64 	vcmp.f32	s10, s9
d0044eba:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044ebe:	d870      	bhi.n	d0044fa2 <submitEntitySolid+0x51e>
d0044ec0:	ed9f 5a1a 	vldr	s10, [pc, #104]	; d0044f2c <submitEntitySolid+0x4a8>
d0044ec4:	fb03 1202 	mla	r2, r3, r2, r1
d0044ec8:	ee67 7a85 	vmul.f32	s15, s15, s10
d0044ecc:	edd2 4a01 	vldr	s9, [r2, #4]
d0044ed0:	eeb1 4a67 	vneg.f32	s8, s15
d0044ed4:	eef4 4a44 	vcmp.f32	s9, s8
d0044ed8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044edc:	db61      	blt.n	d0044fa2 <submitEntitySolid+0x51e>
d0044ede:	eef4 4a67 	vcmp.f32	s9, s15
d0044ee2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044ee6:	d85c      	bhi.n	d0044fa2 <submitEntitySolid+0x51e>
d0044ee8:	ee60 0a85 	vmul.f32	s1, s1, s10
d0044eec:	9a01      	ldr	r2, [sp, #4]
d0044eee:	fb03 1102 	mla	r1, r3, r2, r1
d0044ef2:	eeb1 5a60 	vneg.f32	s10, s1
d0044ef6:	edd1 7a01 	vldr	s15, [r1, #4]
d0044efa:	eef4 7a45 	vcmp.f32	s15, s10
d0044efe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044f02:	db4e      	blt.n	d0044fa2 <submitEntitySolid+0x51e>
d0044f04:	eef4 7ae0 	vcmpe.f32	s15, s1
d0044f08:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044f0c:	d849      	bhi.n	d0044fa2 <submitEntitySolid+0x51e>
d0044f0e:	9b06      	ldr	r3, [sp, #24]
d0044f10:	b1b3      	cbz	r3, d0044f40 <submitEntitySolid+0x4bc>
d0044f12:	9b07      	ldr	r3, [sp, #28]
d0044f14:	2b00      	cmp	r3, #0
d0044f16:	f300 828a 	bgt.w	d004542e <submitEntitySolid+0x9aa>
d0044f1a:	e011      	b.n	d0044f40 <submitEntitySolid+0x4bc>
d0044f1c:	d00d5800 	.word	0xd00d5800
d0044f20:	d00497c0 	.word	0xd00497c0
d0044f24:	358637bd 	.word	0x358637bd
d0044f28:	3b808081 	.word	0x3b808081
d0044f2c:	3f2aaaab 	.word	0x3f2aaaab
d0044f30:	3eaaaaab 	.word	0x3eaaaaab
d0044f34:	3f7fbe77 	.word	0x3f7fbe77
d0044f38:	3f8020c5 	.word	0x3f8020c5
d0044f3c:	00000000 	.word	0x00000000
d0044f40:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0044f44:	fe8a 0a29 	vmaxnm.f32	s0, s20, s19
d0044f48:	fe80 0a67 	vminnm.f32	s0, s0, s15
d0044f4c:	f7fe fd72 	bl	d0043a34 <brightnessToShadeF>
d0044f50:	eeb0 8a40 	vmov.f32	s16, s0
d0044f54:	eef0 4a48 	vmov.f32	s9, s16
d0044f58:	7b6a      	ldrb	r2, [r5, #13]
d0044f5a:	7b29      	ldrb	r1, [r5, #12]
d0044f5c:	9804      	ldr	r0, [sp, #16]
d0044f5e:	ed97 3a00 	vldr	s6, [r7]
d0044f62:	edd7 3a01 	vldr	s7, [r7, #4]
d0044f66:	ed97 4a02 	vldr	s8, [r7, #8]
d0044f6a:	edd6 1a00 	vldr	s3, [r6]
d0044f6e:	ed96 2a01 	vldr	s4, [r6, #4]
d0044f72:	edd6 2a02 	vldr	s5, [r6, #8]
d0044f76:	ed94 0a00 	vldr	s0, [r4]
d0044f7a:	edd4 0a01 	vldr	s1, [r4, #4]
d0044f7e:	ed94 1a02 	vldr	s2, [r4, #8]
d0044f82:	f7ff fa1f 	bl	d00443c4 <submitClippedTri>
d0044f86:	9b03      	ldr	r3, [sp, #12]
d0044f88:	695b      	ldr	r3, [r3, #20]
d0044f8a:	9302      	str	r3, [sp, #8]
d0044f8c:	f109 0901 	add.w	r9, r9, #1
d0044f90:	9b02      	ldr	r3, [sp, #8]
d0044f92:	4599      	cmp	r9, r3
d0044f94:	f6ff ae6d 	blt.w	d0044c72 <submitEntitySolid+0x1ee>
d0044f98:	b033      	add	sp, #204	; 0xcc
d0044f9a:	ecbd 8b10 	vpop	{d8-d15}
d0044f9e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0044fa2:	9b06      	ldr	r3, [sp, #24]
d0044fa4:	2b00      	cmp	r3, #0
d0044fa6:	f000 8152 	beq.w	d004524e <submitEntitySolid+0x7ca>
d0044faa:	9b07      	ldr	r3, [sp, #28]
d0044fac:	2b00      	cmp	r3, #0
d0044fae:	f340 814e 	ble.w	d004524e <submitEntitySolid+0x7ca>
d0044fb2:	f04f 0800 	mov.w	r8, #0
d0044fb6:	ee75 ba87 	vadd.f32	s23, s11, s14
d0044fba:	ed5f 7a23 	vldr	s15, [pc, #-140]	; d0044f30 <submitEntitySolid+0x4ac>
d0044fbe:	ee33 ca26 	vadd.f32	s24, s6, s13
d0044fc2:	ee32 ea86 	vadd.f32	s28, s5, s12
d0044fc6:	eeb5 bac0 	vcmpe.f32	s22, #0.0
d0044fca:	ee7b ba82 	vadd.f32	s23, s23, s4
d0044fce:	ee3c ca21 	vadd.f32	s24, s24, s3
d0044fd2:	ee3e ea01 	vadd.f32	s28, s28, s2
d0044fd6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044fda:	ee6b baa7 	vmul.f32	s23, s23, s15
d0044fde:	ee2c ca27 	vmul.f32	s24, s24, s15
d0044fe2:	ee2e ea27 	vmul.f32	s28, s28, s15
d0044fe6:	f340 818b 	ble.w	d0045300 <submitEntitySolid+0x87c>
d0044fea:	eddd 7a0c 	vldr	s15, [sp, #48]	; 0x30
d0044fee:	ee77 2acc 	vsub.f32	s5, s15, s24
d0044ff2:	eddd 7a0a 	vldr	s15, [sp, #40]	; 0x28
d0044ff6:	ee37 3aeb 	vsub.f32	s6, s15, s23
d0044ffa:	eddd 7a09 	vldr	s15, [sp, #36]	; 0x24
d0044ffe:	ee77 4ace 	vsub.f32	s9, s15, s28
d0045002:	ee62 7aa2 	vmul.f32	s15, s5, s5
d0045006:	eee3 7a03 	vfma.f32	s15, s6, s6
d004500a:	eee4 7aa4 	vfma.f32	s15, s9, s9
d004500e:	eef4 7aee 	vcmpe.f32	s15, s29
d0045012:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045016:	f340 8173 	ble.w	d0045300 <submitEntitySolid+0x87c>
d004501a:	ed1f 7a3a 	vldr	s14, [pc, #-232]	; d0044f34 <submitEntitySolid+0x4b0>
d004501e:	eef4 7ac7 	vcmpe.f32	s15, s14
d0045022:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045026:	f100 81e2 	bmi.w	d00453ee <submitEntitySolid+0x96a>
d004502a:	ed1f 7a3d 	vldr	s14, [pc, #-244]	; d0044f38 <submitEntitySolid+0x4b4>
d004502e:	eef4 7a47 	vcmp.f32	s15, s14
d0045032:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045036:	f300 81da 	bgt.w	d00453ee <submitEntitySolid+0x96a>
d004503a:	ee79 1a09 	vadd.f32	s3, s18, s18
d004503e:	4642      	mov	r2, r8
d0045040:	ee38 2a08 	vadd.f32	s4, s16, s16
d0045044:	46b8      	mov	r8, r7
d0045046:	eef0 6a6c 	vmov.f32	s13, s25
d004504a:	4637      	mov	r7, r6
d004504c:	eef0 7a61 	vmov.f32	s15, s3
d0045050:	4626      	mov	r6, r4
d0045052:	eeb0 7a42 	vmov.f32	s14, s4
d0045056:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
d004505a:	eef0 ca64 	vmov.f32	s25, s9
d004505e:	f04f 0b00 	mov.w	fp, #0
d0045062:	eef0 4a6a 	vmov.f32	s9, s21
d0045066:	9c07      	ldr	r4, [sp, #28]
d0045068:	eef0 aa62 	vmov.f32	s21, s5
d004506c:	eeb0 2a4d 	vmov.f32	s4, s26
d0045070:	eef0 1a4a 	vmov.f32	s3, s20
d0045074:	ee38 1aa8 	vadd.f32	s2, s17, s17
d0045078:	eeb0 aa43 	vmov.f32	s20, s6
d004507c:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0045080:	eeb0 3a4f 	vmov.f32	s6, s30
d0045084:	eef2 da00 	vmov.f32	s27, #32	; 0x41000000  8.0
d0045088:	eeb0 fa67 	vmov.f32	s30, s15
d004508c:	eeb0 da47 	vmov.f32	s26, s14
d0045090:	eef0 2a66 	vmov.f32	s5, s13
d0045094:	e0b6      	b.n	d0045204 <submitEntitySolid+0x780>
d0045096:	edda 7a02 	vldr	s15, [sl, #8]
d004509a:	edda 6a01 	vldr	s13, [sl, #4]
d004509e:	ee77 7acc 	vsub.f32	s15, s15, s24
d00450a2:	ed9a 7a03 	vldr	s14, [sl, #12]
d00450a6:	ee76 6aeb 	vsub.f32	s13, s13, s23
d00450aa:	edda 5a0a 	vldr	s11, [sl, #40]	; 0x28
d00450ae:	ee37 7a4e 	vsub.f32	s14, s14, s28
d00450b2:	ee27 6aa7 	vmul.f32	s12, s15, s15
d00450b6:	ee25 4aa5 	vmul.f32	s8, s11, s11
d00450ba:	eea6 6aa6 	vfma.f32	s12, s13, s13
d00450be:	eea7 6a07 	vfma.f32	s12, s14, s14
d00450c2:	eeb4 6a6e 	vcmp.f32	s12, s29
d00450c6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00450ca:	f340 8094 	ble.w	d00451f6 <submitEntitySolid+0x772>
d00450ce:	eeb4 4a46 	vcmp.f32	s8, s12
d00450d2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00450d6:	f340 808e 	ble.w	d00451f6 <submitEntitySolid+0x772>
d00450da:	eeb1 0ac6 	vsqrt.f32	s0, s12
d00450de:	edda 3a08 	vldr	s7, [sl, #32]
d00450e2:	ee63 0aa3 	vmul.f32	s1, s7, s7
d00450e6:	eef4 0ac6 	vcmpe.f32	s1, s12
d00450ea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00450ee:	ee85 4a00 	vdiv.f32	s8, s10, s0
d00450f2:	ee66 6a84 	vmul.f32	s13, s13, s8
d00450f6:	ee67 7a84 	vmul.f32	s15, s15, s8
d00450fa:	ee27 7a04 	vmul.f32	s14, s14, s8
d00450fe:	f140 8123 	bpl.w	d0045348 <submitEntitySolid+0x8c4>
d0045102:	edda 0a09 	vldr	s1, [sl, #36]	; 0x24
d0045106:	eef4 3ae0 	vcmpe.f32	s7, s1
d004510a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004510e:	da72      	bge.n	d00451f6 <submitEntitySolid+0x772>
d0045110:	eef4 5ae0 	vcmpe.f32	s11, s1
d0045114:	ee26 6a04 	vmul.f32	s12, s12, s8
d0045118:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004511c:	eef4 0ac6 	vcmpe.f32	s1, s12
d0045120:	f200 814d 	bhi.w	d00453be <submitEntitySolid+0x93a>
d0045124:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045128:	d965      	bls.n	d00451f6 <submitEntitySolid+0x772>
d004512a:	ee36 6a63 	vsub.f32	s12, s12, s7
d004512e:	ee70 3ae3 	vsub.f32	s7, s1, s7
d0045132:	eec6 5a23 	vdiv.f32	s11, s12, s7
d0045136:	ed1f 6a7f 	vldr	s12, [pc, #-508]	; d0044f3c <submitEntitySolid+0x4b8>
d004513a:	fe85 6a86 	vmaxnm.f32	s12, s11, s12
d004513e:	fe86 6a45 	vminnm.f32	s12, s12, s10
d0045142:	ee35 6a46 	vsub.f32	s12, s10, s12
d0045146:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d004514a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004514e:	d952      	bls.n	d00451f6 <submitEntitySolid+0x772>
d0045150:	ee69 5a27 	vmul.f32	s11, s18, s15
d0045154:	eee8 5aa6 	vfma.f32	s11, s17, s13
d0045158:	eee8 5a07 	vfma.f32	s11, s16, s14
d004515c:	eef5 5ac0 	vcmpe.f32	s11, #0.0
d0045160:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045164:	d947      	bls.n	d00451f6 <submitEntitySolid+0x772>
d0045166:	eef5 fac0 	vcmpe.f32	s31, #0.0
d004516a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004516e:	dd07      	ble.n	d0045180 <submitEntitySolid+0x6fc>
d0045170:	ed9a 4a07 	vldr	s8, [sl, #28]
d0045174:	ee2f 4a84 	vmul.f32	s8, s31, s8
d0045178:	ee24 4a06 	vmul.f32	s8, s8, s12
d004517c:	eee5 9a84 	vfma.f32	s19, s11, s8
d0045180:	eeb5 bac0 	vcmpe.f32	s22, #0.0
d0045184:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045188:	dd2f      	ble.n	d00451ea <submitEntitySolid+0x766>
d004518a:	eed5 7a8f 	vfnms.f32	s15, s11, s30
d004518e:	eed5 6a81 	vfnms.f32	s13, s11, s2
d0045192:	ee95 7a8d 	vfnms.f32	s14, s11, s26
d0045196:	ee2a 0aa7 	vmul.f32	s0, s21, s15
d004519a:	eeaa 0a26 	vfma.f32	s0, s20, s13
d004519e:	eeac 0a87 	vfma.f32	s0, s25, s14
d00451a2:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d00451a6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00451aa:	dd1e      	ble.n	d00451ea <submitEntitySolid+0x766>
d00451ac:	eddd 7a08 	vldr	s15, [sp, #32]
d00451b0:	eef4 7a6d 	vcmp.f32	s15, s27
d00451b4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00451b8:	d009      	beq.n	d00451ce <submitEntitySolid+0x74a>
d00451ba:	eeb3 7a00 	vmov.f32	s14, #48	; 0x41800000  16.0
d00451be:	eef4 7a47 	vcmp.f32	s15, s14
d00451c2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00451c6:	f040 80c2 	bne.w	d004534e <submitEntitySolid+0x8ca>
d00451ca:	ee20 0a00 	vmul.f32	s0, s0, s0
d00451ce:	ee20 0a00 	vmul.f32	s0, s0, s0
d00451d2:	ee20 0a00 	vmul.f32	s0, s0, s0
d00451d6:	ee20 0a00 	vmul.f32	s0, s0, s0
d00451da:	edda 7a07 	vldr	s15, [sl, #28]
d00451de:	ee6b 7a27 	vmul.f32	s15, s22, s15
d00451e2:	ee27 6a86 	vmul.f32	s12, s15, s12
d00451e6:	eee6 9a00 	vfma.f32	s19, s12, s0
d00451ea:	eef4 9ac5 	vcmpe.f32	s19, s10
d00451ee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00451f2:	f280 80d3 	bge.w	d004539c <submitEntitySolid+0x918>
d00451f6:	f10b 0b01 	add.w	fp, fp, #1
d00451fa:	f10a 0a40 	add.w	sl, sl, #64	; 0x40
d00451fe:	455c      	cmp	r4, fp
d0045200:	f340 8085 	ble.w	d004530e <submitEntitySolid+0x88a>
d0045204:	f8da 302c 	ldr.w	r3, [sl, #44]	; 0x2c
d0045208:	2b00      	cmp	r3, #0
d004520a:	d0f4      	beq.n	d00451f6 <submitEntitySolid+0x772>
d004520c:	f89a 3000 	ldrb.w	r3, [sl]
d0045210:	2b00      	cmp	r3, #0
d0045212:	f43f af40 	beq.w	d0045096 <submitEntitySolid+0x612>
d0045216:	edda 6a04 	vldr	s13, [sl, #16]
d004521a:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d004521e:	edda 7a05 	vldr	s15, [sl, #20]
d0045222:	ed9a 7a06 	vldr	s14, [sl, #24]
d0045226:	eef1 6a66 	vneg.f32	s13, s13
d004522a:	eef1 7a67 	vneg.f32	s15, s15
d004522e:	eeb1 7a47 	vneg.f32	s14, s14
d0045232:	e78d      	b.n	d0045150 <submitEntitySolid+0x6cc>
d0045234:	eef1 0ae7 	vsqrt.f32	s1, s15
d0045238:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d004523c:	eec0 7a20 	vdiv.f32	s15, s0, s1
d0045240:	ee68 8aa7 	vmul.f32	s17, s17, s15
d0045244:	ee29 9a27 	vmul.f32	s18, s18, s15
d0045248:	ee28 8a27 	vmul.f32	s16, s16, s15
d004524c:	e5cf      	b.n	d0044dee <submitEntitySolid+0x36a>
d004524e:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0045252:	fe8a 0a29 	vmaxnm.f32	s0, s20, s19
d0045256:	fe80 0a67 	vminnm.f32	s0, s0, s15
d004525a:	f7fe fbeb 	bl	d0043a34 <brightnessToShadeF>
d004525e:	eeb0 8a40 	vmov.f32	s16, s0
d0045262:	f8dd a010 	ldr.w	sl, [sp, #16]
d0045266:	f8dd 8014 	ldr.w	r8, [sp, #20]
d004526a:	4651      	mov	r1, sl
d004526c:	ed97 3a00 	vldr	s6, [r7]
d0045270:	4640      	mov	r0, r8
d0045272:	edd7 3a01 	vldr	s7, [r7, #4]
d0045276:	ed97 4a02 	vldr	s8, [r7, #8]
d004527a:	edd6 1a00 	vldr	s3, [r6]
d004527e:	ed96 2a01 	vldr	s4, [r6, #4]
d0045282:	edd6 2a02 	vldr	s5, [r6, #8]
d0045286:	ed94 0a00 	vldr	s0, [r4]
d004528a:	edd4 0a01 	vldr	s1, [r4, #4]
d004528e:	ed94 1a02 	vldr	s2, [r4, #8]
d0045292:	f7fe fc3b 	bl	d0043b0c <clipTriangleToFrustum>
d0045296:	2802      	cmp	r0, #2
d0045298:	dc09      	bgt.n	d00452ae <submitEntitySolid+0x82a>
d004529a:	9b03      	ldr	r3, [sp, #12]
d004529c:	f109 0901 	add.w	r9, r9, #1
d00452a0:	695b      	ldr	r3, [r3, #20]
d00452a2:	9302      	str	r3, [sp, #8]
d00452a4:	9b02      	ldr	r3, [sp, #8]
d00452a6:	4599      	cmp	r9, r3
d00452a8:	f6ff ace3 	blt.w	d0044c72 <submitEntitySolid+0x1ee>
d00452ac:	e674      	b.n	d0044f98 <submitEntitySolid+0x514>
d00452ae:	eef0 4a48 	vmov.f32	s9, s16
d00452b2:	1e44      	subs	r4, r0, #1
d00452b4:	2601      	movs	r6, #1
d00452b6:	4647      	mov	r7, r8
d00452b8:	4650      	mov	r0, sl
d00452ba:	4633      	mov	r3, r6
d00452bc:	3601      	adds	r6, #1
d00452be:	7b6a      	ldrb	r2, [r5, #13]
d00452c0:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00452c4:	7b29      	ldrb	r1, [r5, #12]
d00452c6:	eb06 0c46 	add.w	ip, r6, r6, lsl #1
d00452ca:	ed97 0a00 	vldr	s0, [r7]
d00452ce:	eb07 0383 	add.w	r3, r7, r3, lsl #2
d00452d2:	edd7 0a01 	vldr	s1, [r7, #4]
d00452d6:	eb07 0c8c 	add.w	ip, r7, ip, lsl #2
d00452da:	ed97 1a02 	vldr	s2, [r7, #8]
d00452de:	edd3 1a00 	vldr	s3, [r3]
d00452e2:	ed93 2a01 	vldr	s4, [r3, #4]
d00452e6:	edd3 2a02 	vldr	s5, [r3, #8]
d00452ea:	ed9c 3a00 	vldr	s6, [ip]
d00452ee:	eddc 3a01 	vldr	s7, [ip, #4]
d00452f2:	ed9c 4a02 	vldr	s8, [ip, #8]
d00452f6:	f7ff f865 	bl	d00443c4 <submitClippedTri>
d00452fa:	42a6      	cmp	r6, r4
d00452fc:	d1dd      	bne.n	d00452ba <submitEntitySolid+0x836>
d00452fe:	e7cc      	b.n	d004529a <submitEntitySolid+0x816>
d0045300:	eddf 4a4c 	vldr	s9, [pc, #304]	; d0045434 <submitEntitySolid+0x9b0>
d0045304:	eef0 2a64 	vmov.f32	s5, s9
d0045308:	eeb0 3a64 	vmov.f32	s6, s9
d004530c:	e695      	b.n	d004503a <submitEntitySolid+0x5b6>
d004530e:	eef0 aa64 	vmov.f32	s21, s9
d0045312:	4634      	mov	r4, r6
d0045314:	eeb0 fa43 	vmov.f32	s30, s6
d0045318:	463e      	mov	r6, r7
d004531a:	eef0 ca62 	vmov.f32	s25, s5
d004531e:	4647      	mov	r7, r8
d0045320:	eeb0 da42 	vmov.f32	s26, s4
d0045324:	4690      	mov	r8, r2
d0045326:	eeb0 aa61 	vmov.f32	s20, s3
d004532a:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d004532e:	fe89 0a8a 	vmaxnm.f32	s0, s19, s20
d0045332:	fe80 0a67 	vminnm.f32	s0, s0, s15
d0045336:	f7fe fb7d 	bl	d0043a34 <brightnessToShadeF>
d004533a:	eeb0 8a40 	vmov.f32	s16, s0
d004533e:	f1b8 0f00 	cmp.w	r8, #0
d0045342:	f47f ae07 	bne.w	d0044f54 <submitEntitySolid+0x4d0>
d0045346:	e78c      	b.n	d0045262 <submitEntitySolid+0x7de>
d0045348:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d004534c:	e700      	b.n	d0045150 <submitEntitySolid+0x6cc>
d004534e:	eef0 0a67 	vmov.f32	s1, s15
d0045352:	ed8d 1a13 	vstr	s2, [sp, #76]	; 0x4c
d0045356:	9212      	str	r2, [sp, #72]	; 0x48
d0045358:	edcd 1a11 	vstr	s3, [sp, #68]	; 0x44
d004535c:	ed8d 2a10 	vstr	s4, [sp, #64]	; 0x40
d0045360:	edcd 2a0f 	vstr	s5, [sp, #60]	; 0x3c
d0045364:	ed8d 3a0e 	vstr	s6, [sp, #56]	; 0x38
d0045368:	edcd 4a0d 	vstr	s9, [sp, #52]	; 0x34
d004536c:	ed8d 5a02 	vstr	s10, [sp, #8]
d0045370:	ed8d 6a01 	vstr	s12, [sp, #4]
d0045374:	f7fd f964 	bl	d0042640 <powf>
d0045378:	ed9d 1a13 	vldr	s2, [sp, #76]	; 0x4c
d004537c:	9a12      	ldr	r2, [sp, #72]	; 0x48
d004537e:	eddd 1a11 	vldr	s3, [sp, #68]	; 0x44
d0045382:	ed9d 2a10 	vldr	s4, [sp, #64]	; 0x40
d0045386:	eddd 2a0f 	vldr	s5, [sp, #60]	; 0x3c
d004538a:	ed9d 3a0e 	vldr	s6, [sp, #56]	; 0x38
d004538e:	eddd 4a0d 	vldr	s9, [sp, #52]	; 0x34
d0045392:	ed9d 5a02 	vldr	s10, [sp, #8]
d0045396:	ed9d 6a01 	vldr	s12, [sp, #4]
d004539a:	e71e      	b.n	d00451da <submitEntitySolid+0x756>
d004539c:	4634      	mov	r4, r6
d004539e:	eef0 aa64 	vmov.f32	s21, s9
d00453a2:	463e      	mov	r6, r7
d00453a4:	eeb0 fa43 	vmov.f32	s30, s6
d00453a8:	4647      	mov	r7, r8
d00453aa:	eef0 ca62 	vmov.f32	s25, s5
d00453ae:	eeb0 da42 	vmov.f32	s26, s4
d00453b2:	4690      	mov	r8, r2
d00453b4:	eeb0 aa61 	vmov.f32	s20, s3
d00453b8:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d00453bc:	e7b5      	b.n	d004532a <submitEntitySolid+0x8a6>
d00453be:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00453c2:	db21      	blt.n	d0045408 <submitEntitySolid+0x984>
d00453c4:	ee36 6a63 	vsub.f32	s12, s12, s7
d00453c8:	ee70 3ae3 	vsub.f32	s7, s1, s7
d00453cc:	eeb6 4a08 	vmov.f32	s8, #104	; 0x3f400000  0.750
d00453d0:	eec6 5a23 	vdiv.f32	s11, s12, s7
d00453d4:	ed9f 6a17 	vldr	s12, [pc, #92]	; d0045434 <submitEntitySolid+0x9b0>
d00453d8:	fe85 6a86 	vmaxnm.f32	s12, s11, s12
d00453dc:	eef0 5a45 	vmov.f32	s11, s10
d00453e0:	fe86 6a45 	vminnm.f32	s12, s12, s10
d00453e4:	eee6 5a44 	vfms.f32	s11, s12, s8
d00453e8:	eeb0 6a65 	vmov.f32	s12, s11
d00453ec:	e6ab      	b.n	d0045146 <submitEntitySolid+0x6c2>
d00453ee:	eeb1 7ae7 	vsqrt.f32	s14, s15
d00453f2:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d00453f6:	eec6 7a87 	vdiv.f32	s15, s13, s14
d00453fa:	ee23 3a27 	vmul.f32	s6, s6, s15
d00453fe:	ee62 2aa7 	vmul.f32	s5, s5, s15
d0045402:	ee64 4aa7 	vmul.f32	s9, s9, s15
d0045406:	e618      	b.n	d004503a <submitEntitySolid+0x5b6>
d0045408:	ee36 6a60 	vsub.f32	s12, s12, s1
d004540c:	ee75 5ae0 	vsub.f32	s11, s11, s1
d0045410:	ee86 4a25 	vdiv.f32	s8, s12, s11
d0045414:	ed9f 6a07 	vldr	s12, [pc, #28]	; d0045434 <submitEntitySolid+0x9b0>
d0045418:	eef5 5a00 	vmov.f32	s11, #80	; 0x3e800000  0.250
d004541c:	fe84 6a06 	vmaxnm.f32	s12, s8, s12
d0045420:	fe86 6a45 	vminnm.f32	s12, s12, s10
d0045424:	ee35 6a46 	vsub.f32	s12, s10, s12
d0045428:	ee26 6a25 	vmul.f32	s12, s12, s11
d004542c:	e68b      	b.n	d0045146 <submitEntitySolid+0x6c2>
d004542e:	f04f 0801 	mov.w	r8, #1
d0045432:	e5c0      	b.n	d0044fb6 <submitEntitySolid+0x532>
d0045434:	00000000 	.word	0x00000000

d0045438 <submitWorldEntities>:
d0045438:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d004543c:	4c30      	ldr	r4, [pc, #192]	; (d0045500 <submitWorldEntities+0xc8>)
d004543e:	b09d      	sub	sp, #116	; 0x74
d0045440:	f04f 0800 	mov.w	r8, #0
d0045444:	f8df 90bc 	ldr.w	r9, [pc, #188]	; d0045504 <submitWorldEntities+0xcc>
d0045448:	4605      	mov	r5, r0
d004544a:	f504 46c0 	add.w	r6, r4, #24576	; 0x6000
d004544e:	f100 0710 	add.w	r7, r0, #16
d0045452:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0045456:	2b00      	cmp	r3, #0
d0045458:	d03f      	beq.n	d00454da <submitWorldEntities+0xa2>
d004545a:	68e3      	ldr	r3, [r4, #12]
d004545c:	2250      	movs	r2, #80	; 0x50
d004545e:	4639      	mov	r1, r7
d0045460:	4668      	mov	r0, sp
d0045462:	b3d3      	cbz	r3, d00454da <submitWorldEntities+0xa2>
d0045464:	f894 3035 	ldrb.w	r3, [r4, #53]	; 0x35
d0045468:	07db      	lsls	r3, r3, #31
d004546a:	d536      	bpl.n	d00454da <submitWorldEntities+0xa2>
d004546c:	ed94 0a00 	vldr	s0, [r4]
d0045470:	edd4 0a01 	vldr	s1, [r4, #4]
d0045474:	ed94 1a02 	vldr	s2, [r4, #8]
d0045478:	ed8d 0a17 	vstr	s0, [sp, #92]	; 0x5c
d004547c:	edcd 0a16 	vstr	s1, [sp, #88]	; 0x58
d0045480:	ed8d 1a15 	vstr	s2, [sp, #84]	; 0x54
d0045484:	f000 fd2e 	bl	d0045ee4 <memcpy>
d0045488:	ed9d 1a15 	vldr	s2, [sp, #84]	; 0x54
d004548c:	ed9d 0a17 	vldr	s0, [sp, #92]	; 0x5c
d0045490:	eddd 0a16 	vldr	s1, [sp, #88]	; 0x58
d0045494:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0045498:	f7fd fe2c 	bl	d00430f4 <worldToCamera>
d004549c:	68e3      	ldr	r3, [r4, #12]
d004549e:	ed95 7a11 	vldr	s14, [r5, #68]	; 0x44
d00454a2:	edd3 7a06 	vldr	s15, [r3, #24]
d00454a6:	ed8d 0a19 	vstr	s0, [sp, #100]	; 0x64
d00454aa:	ee71 6a67 	vsub.f32	s13, s2, s15
d00454ae:	edcd 0a1a 	vstr	s1, [sp, #104]	; 0x68
d00454b2:	ee71 7a27 	vadd.f32	s15, s2, s15
d00454b6:	ed8d 1a1b 	vstr	s2, [sp, #108]	; 0x6c
d00454ba:	eef4 6ac7 	vcmpe.f32	s13, s14
d00454be:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00454c2:	dc0a      	bgt.n	d00454da <submitWorldEntities+0xa2>
d00454c4:	ed95 7a10 	vldr	s14, [r5, #64]	; 0x40
d00454c8:	eef4 7ac7 	vcmpe.f32	s15, s14
d00454cc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00454d0:	d403      	bmi.n	d00454da <submitWorldEntities+0xa2>
d00454d2:	f849 4028 	str.w	r4, [r9, r8, lsl #2]
d00454d6:	f108 0801 	add.w	r8, r8, #1
d00454da:	3460      	adds	r4, #96	; 0x60
d00454dc:	42b4      	cmp	r4, r6
d00454de:	d1b8      	bne.n	d0045452 <submitWorldEntities+0x1a>
d00454e0:	f1b8 0f00 	cmp.w	r8, #0
d00454e4:	d009      	beq.n	d00454fa <submitWorldEntities+0xc2>
d00454e6:	4c07      	ldr	r4, [pc, #28]	; (d0045504 <submitWorldEntities+0xcc>)
d00454e8:	eb04 0888 	add.w	r8, r4, r8, lsl #2
d00454ec:	f854 0b04 	ldr.w	r0, [r4], #4
d00454f0:	4629      	mov	r1, r5
d00454f2:	f7ff fac7 	bl	d0044a84 <submitEntitySolid>
d00454f6:	45a0      	cmp	r8, r4
d00454f8:	d1f8      	bne.n	d00454ec <submitWorldEntities+0xb4>
d00454fa:	b01d      	add	sp, #116	; 0x74
d00454fc:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0045500:	d00e1ca0 	.word	0xd00e1ca0
d0045504:	d00e1800 	.word	0xd00e1800

d0045508 <Render3D>:
d0045508:	b5f0      	push	{r4, r5, r6, r7, lr}
d004550a:	4604      	mov	r4, r0
d004550c:	4e6f      	ldr	r6, [pc, #444]	; (d00456cc <Render3D+0x1c4>)
d004550e:	2700      	movs	r7, #0
d0045510:	ed2d 8b02 	vpush	{d8}
d0045514:	b087      	sub	sp, #28
d0045516:	6037      	str	r7, [r6, #0]
d0045518:	f7ff ff8e 	bl	d0045438 <submitWorldEntities>
d004551c:	4620      	mov	r0, r4
d004551e:	f7fd f94d 	bl	d00427bc <sb3dParticlesRender>
d0045522:	4b6b      	ldr	r3, [pc, #428]	; (d00456d0 <Render3D+0x1c8>)
d0045524:	681d      	ldr	r5, [r3, #0]
d0045526:	2d00      	cmp	r5, #0
d0045528:	d04d      	beq.n	d00455c6 <Render3D+0xbe>
d004552a:	6833      	ldr	r3, [r6, #0]
d004552c:	42bb      	cmp	r3, r7
d004552e:	dd46      	ble.n	d00455be <Render3D+0xb6>
d0045530:	eeb6 8a00 	vmov.f32	s16, #96	; 0x3f000000  0.5
d0045534:	4c67      	ldr	r4, [pc, #412]	; (d00456d4 <Render3D+0x1cc>)
d0045536:	eddf 8a68 	vldr	s17, [pc, #416]	; d00456d8 <Render3D+0x1d0>
d004553a:	edd4 7a07 	vldr	s15, [r4, #28]
d004553e:	3701      	adds	r7, #1
d0045540:	f894 3035 	ldrb.w	r3, [r4, #53]	; 0x35
d0045544:	ee77 7a88 	vadd.f32	s15, s15, s16
d0045548:	ee07 3a10 	vmov	s14, r3
d004554c:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0045550:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0045554:	ee17 1a90 	vmov	r1, s15
d0045558:	eef0 7a48 	vmov.f32	s15, s16
d004555c:	2904      	cmp	r1, #4
d004555e:	eee7 7a28 	vfma.f32	s15, s14, s17
d0045562:	bfa8      	it	ge
d0045564:	2104      	movge	r1, #4
d0045566:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d004556a:	b153      	cbz	r3, d0045582 <Render3D+0x7a>
d004556c:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0045570:	ee17 3a90 	vmov	r3, s15
d0045574:	f1c3 0305 	rsb	r3, r3, #5
d0045578:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d004557c:	4299      	cmp	r1, r3
d004557e:	bfa8      	it	ge
d0045580:	4619      	movge	r1, r3
d0045582:	f894 0034 	ldrb.w	r0, [r4, #52]	; 0x34
d0045586:	f7fa fe2f 	bl	d00401e8 <shadeColor>
d004558a:	4605      	mov	r5, r0
d004558c:	68e3      	ldr	r3, [r4, #12]
d004558e:	68a2      	ldr	r2, [r4, #8]
d0045590:	6861      	ldr	r1, [r4, #4]
d0045592:	9000      	str	r0, [sp, #0]
d0045594:	6820      	ldr	r0, [r4, #0]
d0045596:	f7fa fdd9 	bl	d004014c <drawLine>
d004559a:	9500      	str	r5, [sp, #0]
d004559c:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
d00455a0:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
d00455a4:	f7fa fdd2 	bl	d004014c <drawLine>
d00455a8:	9500      	str	r5, [sp, #0]
d00455aa:	e9d4 2300 	ldrd	r2, r3, [r4]
d00455ae:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
d00455b2:	f7fa fdcb 	bl	d004014c <drawLine>
d00455b6:	6833      	ldr	r3, [r6, #0]
d00455b8:	3440      	adds	r4, #64	; 0x40
d00455ba:	42bb      	cmp	r3, r7
d00455bc:	dcbd      	bgt.n	d004553a <Render3D+0x32>
d00455be:	b007      	add	sp, #28
d00455c0:	ecbd 8b02 	vpop	{d8}
d00455c4:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00455c6:	f44f 2296 	mov.w	r2, #307200	; 0x4b000
d00455ca:	21ff      	movs	r1, #255	; 0xff
d00455cc:	4843      	ldr	r0, [pc, #268]	; (d00456dc <Render3D+0x1d4>)
d00455ce:	f000 fc97 	bl	d0045f00 <memset>
d00455d2:	4b43      	ldr	r3, [pc, #268]	; (d00456e0 <Render3D+0x1d8>)
d00455d4:	681f      	ldr	r7, [r3, #0]
d00455d6:	b33f      	cbz	r7, d0045628 <Render3D+0x120>
d00455d8:	6833      	ldr	r3, [r6, #0]
d00455da:	2b00      	cmp	r3, #0
d00455dc:	ddef      	ble.n	d00455be <Render3D+0xb6>
d00455de:	4c3d      	ldr	r4, [pc, #244]	; (d00456d4 <Render3D+0x1cc>)
d00455e0:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d00455e4:	3501      	adds	r5, #1
d00455e6:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d00455e8:	8c21      	ldrh	r1, [r4, #32]
d00455ea:	6962      	ldr	r2, [r4, #20]
d00455ec:	8ca7      	ldrh	r7, [r4, #36]	; 0x24
d00455ee:	9305      	str	r3, [sp, #20]
d00455f0:	9704      	str	r7, [sp, #16]
d00455f2:	9003      	str	r0, [sp, #12]
d00455f4:	9102      	str	r1, [sp, #8]
d00455f6:	9201      	str	r2, [sp, #4]
d00455f8:	6923      	ldr	r3, [r4, #16]
d00455fa:	9300      	str	r3, [sp, #0]
d00455fc:	edd4 1a07 	vldr	s3, [r4, #28]
d0045600:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0045604:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0045608:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d004560c:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d0045610:	e9d4 0100 	ldrd	r0, r1, [r4]
d0045614:	f7fa fdf8 	bl	d0040208 <fillTriangleFlat>
d0045618:	6833      	ldr	r3, [r6, #0]
d004561a:	3440      	adds	r4, #64	; 0x40
d004561c:	42ab      	cmp	r3, r5
d004561e:	dcdf      	bgt.n	d00455e0 <Render3D+0xd8>
d0045620:	b007      	add	sp, #28
d0045622:	ecbd 8b02 	vpop	{d8}
d0045626:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0045628:	4b2e      	ldr	r3, [pc, #184]	; (d00456e4 <Render3D+0x1dc>)
d004562a:	681d      	ldr	r5, [r3, #0]
d004562c:	6833      	ldr	r3, [r6, #0]
d004562e:	b335      	cbz	r5, d004567e <Render3D+0x176>
d0045630:	2b00      	cmp	r3, #0
d0045632:	ddc4      	ble.n	d00455be <Render3D+0xb6>
d0045634:	4c27      	ldr	r4, [pc, #156]	; (d00456d4 <Render3D+0x1cc>)
d0045636:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d004563a:	3701      	adds	r7, #1
d004563c:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d004563e:	8c21      	ldrh	r1, [r4, #32]
d0045640:	6962      	ldr	r2, [r4, #20]
d0045642:	8ca5      	ldrh	r5, [r4, #36]	; 0x24
d0045644:	9305      	str	r3, [sp, #20]
d0045646:	6923      	ldr	r3, [r4, #16]
d0045648:	9504      	str	r5, [sp, #16]
d004564a:	9003      	str	r0, [sp, #12]
d004564c:	9102      	str	r1, [sp, #8]
d004564e:	9201      	str	r2, [sp, #4]
d0045650:	9300      	str	r3, [sp, #0]
d0045652:	edd4 1a07 	vldr	s3, [r4, #28]
d0045656:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d004565a:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d004565e:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0045662:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d0045666:	e9d4 0100 	ldrd	r0, r1, [r4]
d004566a:	f7fb fe99 	bl	d00413a0 <fillTriangleDitherBayer2Mode>
d004566e:	6833      	ldr	r3, [r6, #0]
d0045670:	3440      	adds	r4, #64	; 0x40
d0045672:	42bb      	cmp	r3, r7
d0045674:	dcdf      	bgt.n	d0045636 <Render3D+0x12e>
d0045676:	b007      	add	sp, #28
d0045678:	ecbd 8b02 	vpop	{d8}
d004567c:	bdf0      	pop	{r4, r5, r6, r7, pc}
d004567e:	2b00      	cmp	r3, #0
d0045680:	dd9d      	ble.n	d00455be <Render3D+0xb6>
d0045682:	4c14      	ldr	r4, [pc, #80]	; (d00456d4 <Render3D+0x1cc>)
d0045684:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0045688:	3501      	adds	r5, #1
d004568a:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d004568c:	8c21      	ldrh	r1, [r4, #32]
d004568e:	6962      	ldr	r2, [r4, #20]
d0045690:	8ca7      	ldrh	r7, [r4, #36]	; 0x24
d0045692:	9305      	str	r3, [sp, #20]
d0045694:	6923      	ldr	r3, [r4, #16]
d0045696:	9704      	str	r7, [sp, #16]
d0045698:	9003      	str	r0, [sp, #12]
d004569a:	9102      	str	r1, [sp, #8]
d004569c:	9201      	str	r2, [sp, #4]
d004569e:	9300      	str	r3, [sp, #0]
d00456a0:	edd4 1a07 	vldr	s3, [r4, #28]
d00456a4:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00456a8:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00456ac:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00456b0:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d00456b4:	e9d4 0100 	ldrd	r0, r1, [r4]
d00456b8:	f7fb f9b4 	bl	d0040a24 <fillTriangleDitherBayer>
d00456bc:	6833      	ldr	r3, [r6, #0]
d00456be:	3440      	adds	r4, #64	; 0x40
d00456c0:	42ab      	cmp	r3, r5
d00456c2:	dcdf      	bgt.n	d0045684 <Render3D+0x17c>
d00456c4:	b007      	add	sp, #28
d00456c6:	ecbd 8b02 	vpop	{d8}
d00456ca:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00456cc:	d00557c4 	.word	0xd00557c4
d00456d0:	d00d57e4 	.word	0xd00d57e4
d00456d4:	d00557e0 	.word	0xd00557e0
d00456d8:	3ca0a0a1 	.word	0x3ca0a0a1
d00456dc:	d00e7ca0 	.word	0xd00e7ca0
d00456e0:	d00557c0 	.word	0xd00557c0
d00456e4:	d00d57e0 	.word	0xd00d57e0

d00456e8 <loadMeshSB3D>:
d00456e8:	2800      	cmp	r0, #0
d00456ea:	d07a      	beq.n	d00457e2 <loadMeshSB3D+0xfa>
d00456ec:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00456f0:	460d      	mov	r5, r1
d00456f2:	4601      	mov	r1, r0
d00456f4:	fab5 f085 	clz	r0, r5
d00456f8:	ed2d 8b02 	vpush	{d8}
d00456fc:	0940      	lsrs	r0, r0, #5
d00456fe:	b08c      	sub	sp, #48	; 0x30
d0045700:	2d00      	cmp	r5, #0
d0045702:	d068      	beq.n	d00457d6 <loadMeshSB3D+0xee>
d0045704:	4c6c      	ldr	r4, [pc, #432]	; (d00458b8 <loadMeshSB3D+0x1d0>)
d0045706:	2201      	movs	r2, #1
d0045708:	eeb0 8a40 	vmov.f32	s16, s0
d004570c:	7923      	ldrb	r3, [r4, #4]
d004570e:	7966      	ldrb	r6, [r4, #5]
d0045710:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d0045714:	79a6      	ldrb	r6, [r4, #6]
d0045716:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d004571a:	79e6      	ldrb	r6, [r4, #7]
d004571c:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d0045720:	681b      	ldr	r3, [r3, #0]
d0045722:	681b      	ldr	r3, [r3, #0]
d0045724:	4798      	blx	r3
d0045726:	2800      	cmp	r0, #0
d0045728:	d155      	bne.n	d00457d6 <loadMeshSB3D+0xee>
d004572a:	f894 c004 	ldrb.w	ip, [r4, #4]
d004572e:	2204      	movs	r2, #4
d0045730:	7961      	ldrb	r1, [r4, #5]
d0045732:	ab02      	add	r3, sp, #8
d0045734:	79a7      	ldrb	r7, [r4, #6]
d0045736:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d004573a:	79e6      	ldrb	r6, [r4, #7]
d004573c:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0045740:	a903      	add	r1, sp, #12
d0045742:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0045746:	6836      	ldr	r6, [r6, #0]
d0045748:	68b6      	ldr	r6, [r6, #8]
d004574a:	47b0      	blx	r6
d004574c:	2800      	cmp	r0, #0
d004574e:	d13f      	bne.n	d00457d0 <loadMeshSB3D+0xe8>
d0045750:	4b5a      	ldr	r3, [pc, #360]	; (d00458bc <loadMeshSB3D+0x1d4>)
d0045752:	9a03      	ldr	r2, [sp, #12]
d0045754:	429a      	cmp	r2, r3
d0045756:	d13b      	bne.n	d00457d0 <loadMeshSB3D+0xe8>
d0045758:	f894 c004 	ldrb.w	ip, [r4, #4]
d004575c:	ab02      	add	r3, sp, #8
d004575e:	7961      	ldrb	r1, [r4, #5]
d0045760:	2204      	movs	r2, #4
d0045762:	79a7      	ldrb	r7, [r4, #6]
d0045764:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0045768:	79e6      	ldrb	r6, [r4, #7]
d004576a:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d004576e:	a904      	add	r1, sp, #16
d0045770:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0045774:	6836      	ldr	r6, [r6, #0]
d0045776:	68b6      	ldr	r6, [r6, #8]
d0045778:	47b0      	blx	r6
d004577a:	bb48      	cbnz	r0, d00457d0 <loadMeshSB3D+0xe8>
d004577c:	9b04      	ldr	r3, [sp, #16]
d004577e:	2b02      	cmp	r3, #2
d0045780:	d126      	bne.n	d00457d0 <loadMeshSB3D+0xe8>
d0045782:	f894 c004 	ldrb.w	ip, [r4, #4]
d0045786:	ab02      	add	r3, sp, #8
d0045788:	7961      	ldrb	r1, [r4, #5]
d004578a:	2204      	movs	r2, #4
d004578c:	79a7      	ldrb	r7, [r4, #6]
d004578e:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0045792:	79e6      	ldrb	r6, [r4, #7]
d0045794:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0045798:	a905      	add	r1, sp, #20
d004579a:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d004579e:	6836      	ldr	r6, [r6, #0]
d00457a0:	68b6      	ldr	r6, [r6, #8]
d00457a2:	47b0      	blx	r6
d00457a4:	b9a0      	cbnz	r0, d00457d0 <loadMeshSB3D+0xe8>
d00457a6:	7921      	ldrb	r1, [r4, #4]
d00457a8:	ab02      	add	r3, sp, #8
d00457aa:	7966      	ldrb	r6, [r4, #5]
d00457ac:	2204      	movs	r2, #4
d00457ae:	79a7      	ldrb	r7, [r4, #6]
d00457b0:	ea41 2106 	orr.w	r1, r1, r6, lsl #8
d00457b4:	79e6      	ldrb	r6, [r4, #7]
d00457b6:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d00457ba:	a906      	add	r1, sp, #24
d00457bc:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d00457c0:	6836      	ldr	r6, [r6, #0]
d00457c2:	68b6      	ldr	r6, [r6, #8]
d00457c4:	47b0      	blx	r6
d00457c6:	b918      	cbnz	r0, d00457d0 <loadMeshSB3D+0xe8>
d00457c8:	9b05      	ldr	r3, [sp, #20]
d00457ca:	b10b      	cbz	r3, d00457d0 <loadMeshSB3D+0xe8>
d00457cc:	9e06      	ldr	r6, [sp, #24]
d00457ce:	b956      	cbnz	r6, d00457e6 <loadMeshSB3D+0xfe>
d00457d0:	2000      	movs	r0, #0
d00457d2:	f000 f98f 	bl	d0045af4 <fclose>
d00457d6:	2000      	movs	r0, #0
d00457d8:	b00c      	add	sp, #48	; 0x30
d00457da:	ecbd 8b02 	vpop	{d8}
d00457de:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00457e2:	2000      	movs	r0, #0
d00457e4:	4770      	bx	lr
d00457e6:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d00457ea:	2700      	movs	r7, #0
d00457ec:	606b      	str	r3, [r5, #4]
d00457ee:	616e      	str	r6, [r5, #20]
d00457f0:	0080      	lsls	r0, r0, #2
d00457f2:	60ef      	str	r7, [r5, #12]
d00457f4:	f000 fb66 	bl	d0045ec4 <malloc>
d00457f8:	4603      	mov	r3, r0
d00457fa:	0130      	lsls	r0, r6, #4
d00457fc:	461e      	mov	r6, r3
d00457fe:	602b      	str	r3, [r5, #0]
d0045800:	f000 fb60 	bl	d0045ec4 <malloc>
d0045804:	60af      	str	r7, [r5, #8]
d0045806:	6128      	str	r0, [r5, #16]
d0045808:	2e00      	cmp	r6, #0
d004580a:	f000 80fb 	beq.w	d0045a04 <loadMeshSB3D+0x31c>
d004580e:	2800      	cmp	r0, #0
d0045810:	f000 80eb 	beq.w	d00459ea <loadMeshSB3D+0x302>
d0045814:	46b8      	mov	r8, r7
d0045816:	e017      	b.n	d0045848 <loadMeshSB3D+0x160>
d0045818:	eddd 6a09 	vldr	s13, [sp, #36]	; 0x24
d004581c:	ed9d 7a0a 	vldr	s14, [sp, #40]	; 0x28
d0045820:	eddd 7a0b 	vldr	s15, [sp, #44]	; 0x2c
d0045824:	ee66 6a88 	vmul.f32	s13, s13, s16
d0045828:	682b      	ldr	r3, [r5, #0]
d004582a:	ee27 7a08 	vmul.f32	s14, s14, s16
d004582e:	9905      	ldr	r1, [sp, #20]
d0045830:	ee67 7a88 	vmul.f32	s15, s15, s16
d0045834:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d0045838:	4541      	cmp	r1, r8
d004583a:	edc3 6a00 	vstr	s13, [r3]
d004583e:	ed83 7a01 	vstr	s14, [r3, #4]
d0045842:	edc3 7a02 	vstr	s15, [r3, #8]
d0045846:	d931      	bls.n	d00458ac <loadMeshSB3D+0x1c4>
d0045848:	f894 c004 	ldrb.w	ip, [r4, #4]
d004584c:	220c      	movs	r2, #12
d004584e:	7960      	ldrb	r0, [r4, #5]
d0045850:	ab02      	add	r3, sp, #8
d0045852:	79a7      	ldrb	r7, [r4, #6]
d0045854:	a909      	add	r1, sp, #36	; 0x24
d0045856:	ea4c 2000 	orr.w	r0, ip, r0, lsl #8
d004585a:	79e6      	ldrb	r6, [r4, #7]
d004585c:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d0045860:	2000      	movs	r0, #0
d0045862:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0045866:	6836      	ldr	r6, [r6, #0]
d0045868:	68b6      	ldr	r6, [r6, #8]
d004586a:	47b0      	blx	r6
d004586c:	eb08 0248 	add.w	r2, r8, r8, lsl #1
d0045870:	f108 0801 	add.w	r8, r8, #1
d0045874:	2800      	cmp	r0, #0
d0045876:	d0cf      	beq.n	d0045818 <loadMeshSB3D+0x130>
d0045878:	6828      	ldr	r0, [r5, #0]
d004587a:	b108      	cbz	r0, d0045880 <loadMeshSB3D+0x198>
d004587c:	f000 fb2a 	bl	d0045ed4 <free>
d0045880:	6928      	ldr	r0, [r5, #16]
d0045882:	b108      	cbz	r0, d0045888 <loadMeshSB3D+0x1a0>
d0045884:	f000 fb26 	bl	d0045ed4 <free>
d0045888:	68a8      	ldr	r0, [r5, #8]
d004588a:	b108      	cbz	r0, d0045890 <loadMeshSB3D+0x1a8>
d004588c:	f000 fb22 	bl	d0045ed4 <free>
d0045890:	2400      	movs	r4, #0
d0045892:	2300      	movs	r3, #0
d0045894:	4620      	mov	r0, r4
d0045896:	602c      	str	r4, [r5, #0]
d0045898:	612c      	str	r4, [r5, #16]
d004589a:	60ac      	str	r4, [r5, #8]
d004589c:	606c      	str	r4, [r5, #4]
d004589e:	616c      	str	r4, [r5, #20]
d00458a0:	60ec      	str	r4, [r5, #12]
d00458a2:	61ab      	str	r3, [r5, #24]
d00458a4:	f000 f926 	bl	d0045af4 <fclose>
d00458a8:	4620      	mov	r0, r4
d00458aa:	e795      	b.n	d00457d8 <loadMeshSB3D+0xf0>
d00458ac:	9b06      	ldr	r3, [sp, #24]
d00458ae:	2b00      	cmp	r3, #0
d00458b0:	f000 808a 	beq.w	d00459c8 <loadMeshSB3D+0x2e0>
d00458b4:	4606      	mov	r6, r0
d00458b6:	e06e      	b.n	d0045996 <loadMeshSB3D+0x2ae>
d00458b8:	2001f000 	.word	0x2001f000
d00458bc:	44334253 	.word	0x44334253
d00458c0:	f894 e004 	ldrb.w	lr, [r4, #4]
d00458c4:	7967      	ldrb	r7, [r4, #5]
d00458c6:	f894 c006 	ldrb.w	ip, [r4, #6]
d00458ca:	ea4e 2e07 	orr.w	lr, lr, r7, lsl #8
d00458ce:	79e7      	ldrb	r7, [r4, #7]
d00458d0:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d00458d4:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d00458d8:	683f      	ldr	r7, [r7, #0]
d00458da:	68bf      	ldr	r7, [r7, #8]
d00458dc:	47b8      	blx	r7
d00458de:	ab02      	add	r3, sp, #8
d00458e0:	2204      	movs	r2, #4
d00458e2:	a909      	add	r1, sp, #36	; 0x24
d00458e4:	2800      	cmp	r0, #0
d00458e6:	d1c7      	bne.n	d0045878 <loadMeshSB3D+0x190>
d00458e8:	f894 e004 	ldrb.w	lr, [r4, #4]
d00458ec:	7967      	ldrb	r7, [r4, #5]
d00458ee:	f894 c006 	ldrb.w	ip, [r4, #6]
d00458f2:	ea4e 2e07 	orr.w	lr, lr, r7, lsl #8
d00458f6:	79e7      	ldrb	r7, [r4, #7]
d00458f8:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d00458fc:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0045900:	683f      	ldr	r7, [r7, #0]
d0045902:	68bf      	ldr	r7, [r7, #8]
d0045904:	47b8      	blx	r7
d0045906:	ab02      	add	r3, sp, #8
d0045908:	2201      	movs	r2, #1
d004590a:	f10d 0106 	add.w	r1, sp, #6
d004590e:	2800      	cmp	r0, #0
d0045910:	d1b2      	bne.n	d0045878 <loadMeshSB3D+0x190>
d0045912:	f894 e004 	ldrb.w	lr, [r4, #4]
d0045916:	7967      	ldrb	r7, [r4, #5]
d0045918:	f894 c006 	ldrb.w	ip, [r4, #6]
d004591c:	ea4e 2e07 	orr.w	lr, lr, r7, lsl #8
d0045920:	79e7      	ldrb	r7, [r4, #7]
d0045922:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d0045926:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d004592a:	683f      	ldr	r7, [r7, #0]
d004592c:	68bf      	ldr	r7, [r7, #8]
d004592e:	47b8      	blx	r7
d0045930:	ab02      	add	r3, sp, #8
d0045932:	2201      	movs	r2, #1
d0045934:	f10d 0107 	add.w	r1, sp, #7
d0045938:	2800      	cmp	r0, #0
d004593a:	d19d      	bne.n	d0045878 <loadMeshSB3D+0x190>
d004593c:	f894 e004 	ldrb.w	lr, [r4, #4]
d0045940:	7967      	ldrb	r7, [r4, #5]
d0045942:	f894 c006 	ldrb.w	ip, [r4, #6]
d0045946:	ea4e 2e07 	orr.w	lr, lr, r7, lsl #8
d004594a:	79e7      	ldrb	r7, [r4, #7]
d004594c:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d0045950:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0045954:	683f      	ldr	r7, [r7, #0]
d0045956:	68bf      	ldr	r7, [r7, #8]
d0045958:	47b8      	blx	r7
d004595a:	0137      	lsls	r7, r6, #4
d004595c:	2800      	cmp	r0, #0
d004595e:	d18b      	bne.n	d0045878 <loadMeshSB3D+0x190>
d0045960:	9a07      	ldr	r2, [sp, #28]
d0045962:	9b05      	ldr	r3, [sp, #20]
d0045964:	429a      	cmp	r2, r3
d0045966:	d287      	bcs.n	d0045878 <loadMeshSB3D+0x190>
d0045968:	9908      	ldr	r1, [sp, #32]
d004596a:	428b      	cmp	r3, r1
d004596c:	d984      	bls.n	d0045878 <loadMeshSB3D+0x190>
d004596e:	9809      	ldr	r0, [sp, #36]	; 0x24
d0045970:	4283      	cmp	r3, r0
d0045972:	d981      	bls.n	d0045878 <loadMeshSB3D+0x190>
d0045974:	692b      	ldr	r3, [r5, #16]
d0045976:	f8dd c018 	ldr.w	ip, [sp, #24]
d004597a:	51da      	str	r2, [r3, r7]
d004597c:	eb03 1306 	add.w	r3, r3, r6, lsl #4
d0045980:	3601      	adds	r6, #1
d0045982:	f89d 7006 	ldrb.w	r7, [sp, #6]
d0045986:	f89d 2007 	ldrb.w	r2, [sp, #7]
d004598a:	45b4      	cmp	ip, r6
d004598c:	6059      	str	r1, [r3, #4]
d004598e:	6098      	str	r0, [r3, #8]
d0045990:	731f      	strb	r7, [r3, #12]
d0045992:	735a      	strb	r2, [r3, #13]
d0045994:	d918      	bls.n	d00459c8 <loadMeshSB3D+0x2e0>
d0045996:	7920      	ldrb	r0, [r4, #4]
d0045998:	ab02      	add	r3, sp, #8
d004599a:	7967      	ldrb	r7, [r4, #5]
d004599c:	2204      	movs	r2, #4
d004599e:	f894 c006 	ldrb.w	ip, [r4, #6]
d00459a2:	a907      	add	r1, sp, #28
d00459a4:	ea40 2007 	orr.w	r0, r0, r7, lsl #8
d00459a8:	79e7      	ldrb	r7, [r4, #7]
d00459aa:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d00459ae:	2000      	movs	r0, #0
d00459b0:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d00459b4:	683f      	ldr	r7, [r7, #0]
d00459b6:	68bf      	ldr	r7, [r7, #8]
d00459b8:	47b8      	blx	r7
d00459ba:	ab02      	add	r3, sp, #8
d00459bc:	2204      	movs	r2, #4
d00459be:	a908      	add	r1, sp, #32
d00459c0:	2800      	cmp	r0, #0
d00459c2:	f43f af7d 	beq.w	d00458c0 <loadMeshSB3D+0x1d8>
d00459c6:	e757      	b.n	d0045878 <loadMeshSB3D+0x190>
d00459c8:	2000      	movs	r0, #0
d00459ca:	f000 f893 	bl	d0045af4 <fclose>
d00459ce:	4628      	mov	r0, r5
d00459d0:	f7fd fca2 	bl	d0043318 <meshComputeBoundsRadius>
d00459d4:	eef1 7a00 	vmov.f32	s15, #16	; 0x40800000  4.0
d00459d8:	4628      	mov	r0, r5
d00459da:	ee20 0a27 	vmul.f32	s0, s0, s15
d00459de:	ed85 0a06 	vstr	s0, [r5, #24]
d00459e2:	f7fc fce7 	bl	d00423b4 <meshSetDefaultMaterial>
d00459e6:	2001      	movs	r0, #1
d00459e8:	e6f6      	b.n	d00457d8 <loadMeshSB3D+0xf0>
d00459ea:	4630      	mov	r0, r6
d00459ec:	f000 fa72 	bl	d0045ed4 <free>
d00459f0:	2400      	movs	r4, #0
d00459f2:	4620      	mov	r0, r4
d00459f4:	602c      	str	r4, [r5, #0]
d00459f6:	612c      	str	r4, [r5, #16]
d00459f8:	606c      	str	r4, [r5, #4]
d00459fa:	616c      	str	r4, [r5, #20]
d00459fc:	f000 f87a 	bl	d0045af4 <fclose>
d0045a00:	4620      	mov	r0, r4
d0045a02:	e6e9      	b.n	d00457d8 <loadMeshSB3D+0xf0>
d0045a04:	2800      	cmp	r0, #0
d0045a06:	d0f3      	beq.n	d00459f0 <loadMeshSB3D+0x308>
d0045a08:	f000 fa64 	bl	d0045ed4 <free>
d0045a0c:	e7f0      	b.n	d00459f0 <loadMeshSB3D+0x308>
d0045a0e:	bf00      	nop

d0045a10 <__errno>:
d0045a10:	4b01      	ldr	r3, [pc, #4]	; (d0045a18 <__errno+0x8>)
d0045a12:	6818      	ldr	r0, [r3, #0]
d0045a14:	4770      	bx	lr
d0045a16:	bf00      	nop
d0045a18:	d0047518 	.word	0xd0047518

d0045a1c <_fclose_r>:
d0045a1c:	b570      	push	{r4, r5, r6, lr}
d0045a1e:	4605      	mov	r5, r0
d0045a20:	460c      	mov	r4, r1
d0045a22:	b911      	cbnz	r1, d0045a2a <_fclose_r+0xe>
d0045a24:	2600      	movs	r6, #0
d0045a26:	4630      	mov	r0, r6
d0045a28:	bd70      	pop	{r4, r5, r6, pc}
d0045a2a:	b118      	cbz	r0, d0045a34 <_fclose_r+0x18>
d0045a2c:	6983      	ldr	r3, [r0, #24]
d0045a2e:	b90b      	cbnz	r3, d0045a34 <_fclose_r+0x18>
d0045a30:	f000 f982 	bl	d0045d38 <__sinit>
d0045a34:	4b2c      	ldr	r3, [pc, #176]	; (d0045ae8 <_fclose_r+0xcc>)
d0045a36:	429c      	cmp	r4, r3
d0045a38:	d114      	bne.n	d0045a64 <_fclose_r+0x48>
d0045a3a:	686c      	ldr	r4, [r5, #4]
d0045a3c:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0045a3e:	07d8      	lsls	r0, r3, #31
d0045a40:	d405      	bmi.n	d0045a4e <_fclose_r+0x32>
d0045a42:	89a3      	ldrh	r3, [r4, #12]
d0045a44:	0599      	lsls	r1, r3, #22
d0045a46:	d402      	bmi.n	d0045a4e <_fclose_r+0x32>
d0045a48:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045a4a:	f000 fa14 	bl	d0045e76 <__retarget_lock_acquire_recursive>
d0045a4e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0045a52:	b98b      	cbnz	r3, d0045a78 <_fclose_r+0x5c>
d0045a54:	6e66      	ldr	r6, [r4, #100]	; 0x64
d0045a56:	f016 0601 	ands.w	r6, r6, #1
d0045a5a:	d1e3      	bne.n	d0045a24 <_fclose_r+0x8>
d0045a5c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045a5e:	f000 fa0b 	bl	d0045e78 <__retarget_lock_release_recursive>
d0045a62:	e7e0      	b.n	d0045a26 <_fclose_r+0xa>
d0045a64:	4b21      	ldr	r3, [pc, #132]	; (d0045aec <_fclose_r+0xd0>)
d0045a66:	429c      	cmp	r4, r3
d0045a68:	d101      	bne.n	d0045a6e <_fclose_r+0x52>
d0045a6a:	68ac      	ldr	r4, [r5, #8]
d0045a6c:	e7e6      	b.n	d0045a3c <_fclose_r+0x20>
d0045a6e:	4b20      	ldr	r3, [pc, #128]	; (d0045af0 <_fclose_r+0xd4>)
d0045a70:	429c      	cmp	r4, r3
d0045a72:	bf08      	it	eq
d0045a74:	68ec      	ldreq	r4, [r5, #12]
d0045a76:	e7e1      	b.n	d0045a3c <_fclose_r+0x20>
d0045a78:	4621      	mov	r1, r4
d0045a7a:	4628      	mov	r0, r5
d0045a7c:	f000 f842 	bl	d0045b04 <__sflush_r>
d0045a80:	6b23      	ldr	r3, [r4, #48]	; 0x30
d0045a82:	4606      	mov	r6, r0
d0045a84:	b133      	cbz	r3, d0045a94 <_fclose_r+0x78>
d0045a86:	6a21      	ldr	r1, [r4, #32]
d0045a88:	4628      	mov	r0, r5
d0045a8a:	4798      	blx	r3
d0045a8c:	2800      	cmp	r0, #0
d0045a8e:	bfb8      	it	lt
d0045a90:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
d0045a94:	89a3      	ldrh	r3, [r4, #12]
d0045a96:	061a      	lsls	r2, r3, #24
d0045a98:	d503      	bpl.n	d0045aa2 <_fclose_r+0x86>
d0045a9a:	6921      	ldr	r1, [r4, #16]
d0045a9c:	4628      	mov	r0, r5
d0045a9e:	f000 fa37 	bl	d0045f10 <_free_r>
d0045aa2:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0045aa4:	b141      	cbz	r1, d0045ab8 <_fclose_r+0x9c>
d0045aa6:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0045aaa:	4299      	cmp	r1, r3
d0045aac:	d002      	beq.n	d0045ab4 <_fclose_r+0x98>
d0045aae:	4628      	mov	r0, r5
d0045ab0:	f000 fa2e 	bl	d0045f10 <_free_r>
d0045ab4:	2300      	movs	r3, #0
d0045ab6:	6363      	str	r3, [r4, #52]	; 0x34
d0045ab8:	6ca1      	ldr	r1, [r4, #72]	; 0x48
d0045aba:	b121      	cbz	r1, d0045ac6 <_fclose_r+0xaa>
d0045abc:	4628      	mov	r0, r5
d0045abe:	f000 fa27 	bl	d0045f10 <_free_r>
d0045ac2:	2300      	movs	r3, #0
d0045ac4:	64a3      	str	r3, [r4, #72]	; 0x48
d0045ac6:	f000 f91f 	bl	d0045d08 <__sfp_lock_acquire>
d0045aca:	2300      	movs	r3, #0
d0045acc:	81a3      	strh	r3, [r4, #12]
d0045ace:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0045ad0:	07db      	lsls	r3, r3, #31
d0045ad2:	d402      	bmi.n	d0045ada <_fclose_r+0xbe>
d0045ad4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045ad6:	f000 f9cf 	bl	d0045e78 <__retarget_lock_release_recursive>
d0045ada:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045adc:	f000 f9ca 	bl	d0045e74 <__retarget_lock_close_recursive>
d0045ae0:	f000 f918 	bl	d0045d14 <__sfp_lock_release>
d0045ae4:	e79f      	b.n	d0045a26 <_fclose_r+0xa>
d0045ae6:	bf00      	nop
d0045ae8:	d0046d20 	.word	0xd0046d20
d0045aec:	d0046d40 	.word	0xd0046d40
d0045af0:	d0046d00 	.word	0xd0046d00

d0045af4 <fclose>:
d0045af4:	4b02      	ldr	r3, [pc, #8]	; (d0045b00 <fclose+0xc>)
d0045af6:	4601      	mov	r1, r0
d0045af8:	6818      	ldr	r0, [r3, #0]
d0045afa:	f7ff bf8f 	b.w	d0045a1c <_fclose_r>
d0045afe:	bf00      	nop
d0045b00:	d0047518 	.word	0xd0047518

d0045b04 <__sflush_r>:
d0045b04:	898a      	ldrh	r2, [r1, #12]
d0045b06:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0045b0a:	4605      	mov	r5, r0
d0045b0c:	0710      	lsls	r0, r2, #28
d0045b0e:	460c      	mov	r4, r1
d0045b10:	d458      	bmi.n	d0045bc4 <__sflush_r+0xc0>
d0045b12:	684b      	ldr	r3, [r1, #4]
d0045b14:	2b00      	cmp	r3, #0
d0045b16:	dc05      	bgt.n	d0045b24 <__sflush_r+0x20>
d0045b18:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0045b1a:	2b00      	cmp	r3, #0
d0045b1c:	dc02      	bgt.n	d0045b24 <__sflush_r+0x20>
d0045b1e:	2000      	movs	r0, #0
d0045b20:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0045b24:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0045b26:	2e00      	cmp	r6, #0
d0045b28:	d0f9      	beq.n	d0045b1e <__sflush_r+0x1a>
d0045b2a:	2300      	movs	r3, #0
d0045b2c:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0045b30:	682f      	ldr	r7, [r5, #0]
d0045b32:	602b      	str	r3, [r5, #0]
d0045b34:	d032      	beq.n	d0045b9c <__sflush_r+0x98>
d0045b36:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0045b38:	89a3      	ldrh	r3, [r4, #12]
d0045b3a:	075a      	lsls	r2, r3, #29
d0045b3c:	d505      	bpl.n	d0045b4a <__sflush_r+0x46>
d0045b3e:	6863      	ldr	r3, [r4, #4]
d0045b40:	1ac0      	subs	r0, r0, r3
d0045b42:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0045b44:	b10b      	cbz	r3, d0045b4a <__sflush_r+0x46>
d0045b46:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0045b48:	1ac0      	subs	r0, r0, r3
d0045b4a:	2300      	movs	r3, #0
d0045b4c:	4602      	mov	r2, r0
d0045b4e:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0045b50:	6a21      	ldr	r1, [r4, #32]
d0045b52:	4628      	mov	r0, r5
d0045b54:	47b0      	blx	r6
d0045b56:	1c43      	adds	r3, r0, #1
d0045b58:	89a3      	ldrh	r3, [r4, #12]
d0045b5a:	d106      	bne.n	d0045b6a <__sflush_r+0x66>
d0045b5c:	6829      	ldr	r1, [r5, #0]
d0045b5e:	291d      	cmp	r1, #29
d0045b60:	d82c      	bhi.n	d0045bbc <__sflush_r+0xb8>
d0045b62:	4a2a      	ldr	r2, [pc, #168]	; (d0045c0c <__sflush_r+0x108>)
d0045b64:	40ca      	lsrs	r2, r1
d0045b66:	07d6      	lsls	r6, r2, #31
d0045b68:	d528      	bpl.n	d0045bbc <__sflush_r+0xb8>
d0045b6a:	2200      	movs	r2, #0
d0045b6c:	6062      	str	r2, [r4, #4]
d0045b6e:	04d9      	lsls	r1, r3, #19
d0045b70:	6922      	ldr	r2, [r4, #16]
d0045b72:	6022      	str	r2, [r4, #0]
d0045b74:	d504      	bpl.n	d0045b80 <__sflush_r+0x7c>
d0045b76:	1c42      	adds	r2, r0, #1
d0045b78:	d101      	bne.n	d0045b7e <__sflush_r+0x7a>
d0045b7a:	682b      	ldr	r3, [r5, #0]
d0045b7c:	b903      	cbnz	r3, d0045b80 <__sflush_r+0x7c>
d0045b7e:	6560      	str	r0, [r4, #84]	; 0x54
d0045b80:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0045b82:	602f      	str	r7, [r5, #0]
d0045b84:	2900      	cmp	r1, #0
d0045b86:	d0ca      	beq.n	d0045b1e <__sflush_r+0x1a>
d0045b88:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0045b8c:	4299      	cmp	r1, r3
d0045b8e:	d002      	beq.n	d0045b96 <__sflush_r+0x92>
d0045b90:	4628      	mov	r0, r5
d0045b92:	f000 f9bd 	bl	d0045f10 <_free_r>
d0045b96:	2000      	movs	r0, #0
d0045b98:	6360      	str	r0, [r4, #52]	; 0x34
d0045b9a:	e7c1      	b.n	d0045b20 <__sflush_r+0x1c>
d0045b9c:	6a21      	ldr	r1, [r4, #32]
d0045b9e:	2301      	movs	r3, #1
d0045ba0:	4628      	mov	r0, r5
d0045ba2:	47b0      	blx	r6
d0045ba4:	1c41      	adds	r1, r0, #1
d0045ba6:	d1c7      	bne.n	d0045b38 <__sflush_r+0x34>
d0045ba8:	682b      	ldr	r3, [r5, #0]
d0045baa:	2b00      	cmp	r3, #0
d0045bac:	d0c4      	beq.n	d0045b38 <__sflush_r+0x34>
d0045bae:	2b1d      	cmp	r3, #29
d0045bb0:	d001      	beq.n	d0045bb6 <__sflush_r+0xb2>
d0045bb2:	2b16      	cmp	r3, #22
d0045bb4:	d101      	bne.n	d0045bba <__sflush_r+0xb6>
d0045bb6:	602f      	str	r7, [r5, #0]
d0045bb8:	e7b1      	b.n	d0045b1e <__sflush_r+0x1a>
d0045bba:	89a3      	ldrh	r3, [r4, #12]
d0045bbc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0045bc0:	81a3      	strh	r3, [r4, #12]
d0045bc2:	e7ad      	b.n	d0045b20 <__sflush_r+0x1c>
d0045bc4:	690f      	ldr	r7, [r1, #16]
d0045bc6:	2f00      	cmp	r7, #0
d0045bc8:	d0a9      	beq.n	d0045b1e <__sflush_r+0x1a>
d0045bca:	0793      	lsls	r3, r2, #30
d0045bcc:	680e      	ldr	r6, [r1, #0]
d0045bce:	bf08      	it	eq
d0045bd0:	694b      	ldreq	r3, [r1, #20]
d0045bd2:	600f      	str	r7, [r1, #0]
d0045bd4:	bf18      	it	ne
d0045bd6:	2300      	movne	r3, #0
d0045bd8:	eba6 0807 	sub.w	r8, r6, r7
d0045bdc:	608b      	str	r3, [r1, #8]
d0045bde:	f1b8 0f00 	cmp.w	r8, #0
d0045be2:	dd9c      	ble.n	d0045b1e <__sflush_r+0x1a>
d0045be4:	6a21      	ldr	r1, [r4, #32]
d0045be6:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0045be8:	4643      	mov	r3, r8
d0045bea:	463a      	mov	r2, r7
d0045bec:	4628      	mov	r0, r5
d0045bee:	47b0      	blx	r6
d0045bf0:	2800      	cmp	r0, #0
d0045bf2:	dc06      	bgt.n	d0045c02 <__sflush_r+0xfe>
d0045bf4:	89a3      	ldrh	r3, [r4, #12]
d0045bf6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0045bfa:	81a3      	strh	r3, [r4, #12]
d0045bfc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0045c00:	e78e      	b.n	d0045b20 <__sflush_r+0x1c>
d0045c02:	4407      	add	r7, r0
d0045c04:	eba8 0800 	sub.w	r8, r8, r0
d0045c08:	e7e9      	b.n	d0045bde <__sflush_r+0xda>
d0045c0a:	bf00      	nop
d0045c0c:	20400001 	.word	0x20400001

d0045c10 <_fflush_r>:
d0045c10:	b538      	push	{r3, r4, r5, lr}
d0045c12:	690b      	ldr	r3, [r1, #16]
d0045c14:	4605      	mov	r5, r0
d0045c16:	460c      	mov	r4, r1
d0045c18:	b913      	cbnz	r3, d0045c20 <_fflush_r+0x10>
d0045c1a:	2500      	movs	r5, #0
d0045c1c:	4628      	mov	r0, r5
d0045c1e:	bd38      	pop	{r3, r4, r5, pc}
d0045c20:	b118      	cbz	r0, d0045c2a <_fflush_r+0x1a>
d0045c22:	6983      	ldr	r3, [r0, #24]
d0045c24:	b90b      	cbnz	r3, d0045c2a <_fflush_r+0x1a>
d0045c26:	f000 f887 	bl	d0045d38 <__sinit>
d0045c2a:	4b14      	ldr	r3, [pc, #80]	; (d0045c7c <_fflush_r+0x6c>)
d0045c2c:	429c      	cmp	r4, r3
d0045c2e:	d11b      	bne.n	d0045c68 <_fflush_r+0x58>
d0045c30:	686c      	ldr	r4, [r5, #4]
d0045c32:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0045c36:	2b00      	cmp	r3, #0
d0045c38:	d0ef      	beq.n	d0045c1a <_fflush_r+0xa>
d0045c3a:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0045c3c:	07d0      	lsls	r0, r2, #31
d0045c3e:	d404      	bmi.n	d0045c4a <_fflush_r+0x3a>
d0045c40:	0599      	lsls	r1, r3, #22
d0045c42:	d402      	bmi.n	d0045c4a <_fflush_r+0x3a>
d0045c44:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045c46:	f000 f916 	bl	d0045e76 <__retarget_lock_acquire_recursive>
d0045c4a:	4628      	mov	r0, r5
d0045c4c:	4621      	mov	r1, r4
d0045c4e:	f7ff ff59 	bl	d0045b04 <__sflush_r>
d0045c52:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0045c54:	07da      	lsls	r2, r3, #31
d0045c56:	4605      	mov	r5, r0
d0045c58:	d4e0      	bmi.n	d0045c1c <_fflush_r+0xc>
d0045c5a:	89a3      	ldrh	r3, [r4, #12]
d0045c5c:	059b      	lsls	r3, r3, #22
d0045c5e:	d4dd      	bmi.n	d0045c1c <_fflush_r+0xc>
d0045c60:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045c62:	f000 f909 	bl	d0045e78 <__retarget_lock_release_recursive>
d0045c66:	e7d9      	b.n	d0045c1c <_fflush_r+0xc>
d0045c68:	4b05      	ldr	r3, [pc, #20]	; (d0045c80 <_fflush_r+0x70>)
d0045c6a:	429c      	cmp	r4, r3
d0045c6c:	d101      	bne.n	d0045c72 <_fflush_r+0x62>
d0045c6e:	68ac      	ldr	r4, [r5, #8]
d0045c70:	e7df      	b.n	d0045c32 <_fflush_r+0x22>
d0045c72:	4b04      	ldr	r3, [pc, #16]	; (d0045c84 <_fflush_r+0x74>)
d0045c74:	429c      	cmp	r4, r3
d0045c76:	bf08      	it	eq
d0045c78:	68ec      	ldreq	r4, [r5, #12]
d0045c7a:	e7da      	b.n	d0045c32 <_fflush_r+0x22>
d0045c7c:	d0046d20 	.word	0xd0046d20
d0045c80:	d0046d40 	.word	0xd0046d40
d0045c84:	d0046d00 	.word	0xd0046d00

d0045c88 <std>:
d0045c88:	2300      	movs	r3, #0
d0045c8a:	b510      	push	{r4, lr}
d0045c8c:	4604      	mov	r4, r0
d0045c8e:	e9c0 3300 	strd	r3, r3, [r0]
d0045c92:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0045c96:	6083      	str	r3, [r0, #8]
d0045c98:	8181      	strh	r1, [r0, #12]
d0045c9a:	6643      	str	r3, [r0, #100]	; 0x64
d0045c9c:	81c2      	strh	r2, [r0, #14]
d0045c9e:	6183      	str	r3, [r0, #24]
d0045ca0:	4619      	mov	r1, r3
d0045ca2:	2208      	movs	r2, #8
d0045ca4:	305c      	adds	r0, #92	; 0x5c
d0045ca6:	f000 f92b 	bl	d0045f00 <memset>
d0045caa:	4b05      	ldr	r3, [pc, #20]	; (d0045cc0 <std+0x38>)
d0045cac:	6263      	str	r3, [r4, #36]	; 0x24
d0045cae:	4b05      	ldr	r3, [pc, #20]	; (d0045cc4 <std+0x3c>)
d0045cb0:	62a3      	str	r3, [r4, #40]	; 0x28
d0045cb2:	4b05      	ldr	r3, [pc, #20]	; (d0045cc8 <std+0x40>)
d0045cb4:	62e3      	str	r3, [r4, #44]	; 0x2c
d0045cb6:	4b05      	ldr	r3, [pc, #20]	; (d0045ccc <std+0x44>)
d0045cb8:	6224      	str	r4, [r4, #32]
d0045cba:	6323      	str	r3, [r4, #48]	; 0x30
d0045cbc:	bd10      	pop	{r4, pc}
d0045cbe:	bf00      	nop
d0045cc0:	d0046201 	.word	0xd0046201
d0045cc4:	d0046223 	.word	0xd0046223
d0045cc8:	d004625b 	.word	0xd004625b
d0045ccc:	d004627f 	.word	0xd004627f

d0045cd0 <_cleanup_r>:
d0045cd0:	4901      	ldr	r1, [pc, #4]	; (d0045cd8 <_cleanup_r+0x8>)
d0045cd2:	f000 b8af 	b.w	d0045e34 <_fwalk_reent>
d0045cd6:	bf00      	nop
d0045cd8:	d0045c11 	.word	0xd0045c11

d0045cdc <__sfmoreglue>:
d0045cdc:	b570      	push	{r4, r5, r6, lr}
d0045cde:	1e4a      	subs	r2, r1, #1
d0045ce0:	2568      	movs	r5, #104	; 0x68
d0045ce2:	4355      	muls	r5, r2
d0045ce4:	460e      	mov	r6, r1
d0045ce6:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0045cea:	f000 f961 	bl	d0045fb0 <_malloc_r>
d0045cee:	4604      	mov	r4, r0
d0045cf0:	b140      	cbz	r0, d0045d04 <__sfmoreglue+0x28>
d0045cf2:	2100      	movs	r1, #0
d0045cf4:	e9c0 1600 	strd	r1, r6, [r0]
d0045cf8:	300c      	adds	r0, #12
d0045cfa:	60a0      	str	r0, [r4, #8]
d0045cfc:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0045d00:	f000 f8fe 	bl	d0045f00 <memset>
d0045d04:	4620      	mov	r0, r4
d0045d06:	bd70      	pop	{r4, r5, r6, pc}

d0045d08 <__sfp_lock_acquire>:
d0045d08:	4801      	ldr	r0, [pc, #4]	; (d0045d10 <__sfp_lock_acquire+0x8>)
d0045d0a:	f000 b8b4 	b.w	d0045e76 <__retarget_lock_acquire_recursive>
d0045d0e:	bf00      	nop
d0045d10:	d0132ca8 	.word	0xd0132ca8

d0045d14 <__sfp_lock_release>:
d0045d14:	4801      	ldr	r0, [pc, #4]	; (d0045d1c <__sfp_lock_release+0x8>)
d0045d16:	f000 b8af 	b.w	d0045e78 <__retarget_lock_release_recursive>
d0045d1a:	bf00      	nop
d0045d1c:	d0132ca8 	.word	0xd0132ca8

d0045d20 <__sinit_lock_acquire>:
d0045d20:	4801      	ldr	r0, [pc, #4]	; (d0045d28 <__sinit_lock_acquire+0x8>)
d0045d22:	f000 b8a8 	b.w	d0045e76 <__retarget_lock_acquire_recursive>
d0045d26:	bf00      	nop
d0045d28:	d0132ca3 	.word	0xd0132ca3

d0045d2c <__sinit_lock_release>:
d0045d2c:	4801      	ldr	r0, [pc, #4]	; (d0045d34 <__sinit_lock_release+0x8>)
d0045d2e:	f000 b8a3 	b.w	d0045e78 <__retarget_lock_release_recursive>
d0045d32:	bf00      	nop
d0045d34:	d0132ca3 	.word	0xd0132ca3

d0045d38 <__sinit>:
d0045d38:	b510      	push	{r4, lr}
d0045d3a:	4604      	mov	r4, r0
d0045d3c:	f7ff fff0 	bl	d0045d20 <__sinit_lock_acquire>
d0045d40:	69a3      	ldr	r3, [r4, #24]
d0045d42:	b11b      	cbz	r3, d0045d4c <__sinit+0x14>
d0045d44:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0045d48:	f7ff bff0 	b.w	d0045d2c <__sinit_lock_release>
d0045d4c:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0045d50:	6523      	str	r3, [r4, #80]	; 0x50
d0045d52:	4b13      	ldr	r3, [pc, #76]	; (d0045da0 <__sinit+0x68>)
d0045d54:	4a13      	ldr	r2, [pc, #76]	; (d0045da4 <__sinit+0x6c>)
d0045d56:	681b      	ldr	r3, [r3, #0]
d0045d58:	62a2      	str	r2, [r4, #40]	; 0x28
d0045d5a:	42a3      	cmp	r3, r4
d0045d5c:	bf04      	itt	eq
d0045d5e:	2301      	moveq	r3, #1
d0045d60:	61a3      	streq	r3, [r4, #24]
d0045d62:	4620      	mov	r0, r4
d0045d64:	f000 f820 	bl	d0045da8 <__sfp>
d0045d68:	6060      	str	r0, [r4, #4]
d0045d6a:	4620      	mov	r0, r4
d0045d6c:	f000 f81c 	bl	d0045da8 <__sfp>
d0045d70:	60a0      	str	r0, [r4, #8]
d0045d72:	4620      	mov	r0, r4
d0045d74:	f000 f818 	bl	d0045da8 <__sfp>
d0045d78:	2200      	movs	r2, #0
d0045d7a:	60e0      	str	r0, [r4, #12]
d0045d7c:	2104      	movs	r1, #4
d0045d7e:	6860      	ldr	r0, [r4, #4]
d0045d80:	f7ff ff82 	bl	d0045c88 <std>
d0045d84:	68a0      	ldr	r0, [r4, #8]
d0045d86:	2201      	movs	r2, #1
d0045d88:	2109      	movs	r1, #9
d0045d8a:	f7ff ff7d 	bl	d0045c88 <std>
d0045d8e:	68e0      	ldr	r0, [r4, #12]
d0045d90:	2202      	movs	r2, #2
d0045d92:	2112      	movs	r1, #18
d0045d94:	f7ff ff78 	bl	d0045c88 <std>
d0045d98:	2301      	movs	r3, #1
d0045d9a:	61a3      	str	r3, [r4, #24]
d0045d9c:	e7d2      	b.n	d0045d44 <__sinit+0xc>
d0045d9e:	bf00      	nop
d0045da0:	d0046d60 	.word	0xd0046d60
d0045da4:	d0045cd1 	.word	0xd0045cd1

d0045da8 <__sfp>:
d0045da8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0045daa:	4607      	mov	r7, r0
d0045dac:	f7ff ffac 	bl	d0045d08 <__sfp_lock_acquire>
d0045db0:	4b1e      	ldr	r3, [pc, #120]	; (d0045e2c <__sfp+0x84>)
d0045db2:	681e      	ldr	r6, [r3, #0]
d0045db4:	69b3      	ldr	r3, [r6, #24]
d0045db6:	b913      	cbnz	r3, d0045dbe <__sfp+0x16>
d0045db8:	4630      	mov	r0, r6
d0045dba:	f7ff ffbd 	bl	d0045d38 <__sinit>
d0045dbe:	3648      	adds	r6, #72	; 0x48
d0045dc0:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0045dc4:	3b01      	subs	r3, #1
d0045dc6:	d503      	bpl.n	d0045dd0 <__sfp+0x28>
d0045dc8:	6833      	ldr	r3, [r6, #0]
d0045dca:	b30b      	cbz	r3, d0045e10 <__sfp+0x68>
d0045dcc:	6836      	ldr	r6, [r6, #0]
d0045dce:	e7f7      	b.n	d0045dc0 <__sfp+0x18>
d0045dd0:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0045dd4:	b9d5      	cbnz	r5, d0045e0c <__sfp+0x64>
d0045dd6:	4b16      	ldr	r3, [pc, #88]	; (d0045e30 <__sfp+0x88>)
d0045dd8:	60e3      	str	r3, [r4, #12]
d0045dda:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0045dde:	6665      	str	r5, [r4, #100]	; 0x64
d0045de0:	f000 f847 	bl	d0045e72 <__retarget_lock_init_recursive>
d0045de4:	f7ff ff96 	bl	d0045d14 <__sfp_lock_release>
d0045de8:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0045dec:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0045df0:	6025      	str	r5, [r4, #0]
d0045df2:	61a5      	str	r5, [r4, #24]
d0045df4:	2208      	movs	r2, #8
d0045df6:	4629      	mov	r1, r5
d0045df8:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0045dfc:	f000 f880 	bl	d0045f00 <memset>
d0045e00:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0045e04:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0045e08:	4620      	mov	r0, r4
d0045e0a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0045e0c:	3468      	adds	r4, #104	; 0x68
d0045e0e:	e7d9      	b.n	d0045dc4 <__sfp+0x1c>
d0045e10:	2104      	movs	r1, #4
d0045e12:	4638      	mov	r0, r7
d0045e14:	f7ff ff62 	bl	d0045cdc <__sfmoreglue>
d0045e18:	4604      	mov	r4, r0
d0045e1a:	6030      	str	r0, [r6, #0]
d0045e1c:	2800      	cmp	r0, #0
d0045e1e:	d1d5      	bne.n	d0045dcc <__sfp+0x24>
d0045e20:	f7ff ff78 	bl	d0045d14 <__sfp_lock_release>
d0045e24:	230c      	movs	r3, #12
d0045e26:	603b      	str	r3, [r7, #0]
d0045e28:	e7ee      	b.n	d0045e08 <__sfp+0x60>
d0045e2a:	bf00      	nop
d0045e2c:	d0046d60 	.word	0xd0046d60
d0045e30:	ffff0001 	.word	0xffff0001

d0045e34 <_fwalk_reent>:
d0045e34:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0045e38:	4606      	mov	r6, r0
d0045e3a:	4688      	mov	r8, r1
d0045e3c:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0045e40:	2700      	movs	r7, #0
d0045e42:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0045e46:	f1b9 0901 	subs.w	r9, r9, #1
d0045e4a:	d505      	bpl.n	d0045e58 <_fwalk_reent+0x24>
d0045e4c:	6824      	ldr	r4, [r4, #0]
d0045e4e:	2c00      	cmp	r4, #0
d0045e50:	d1f7      	bne.n	d0045e42 <_fwalk_reent+0xe>
d0045e52:	4638      	mov	r0, r7
d0045e54:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0045e58:	89ab      	ldrh	r3, [r5, #12]
d0045e5a:	2b01      	cmp	r3, #1
d0045e5c:	d907      	bls.n	d0045e6e <_fwalk_reent+0x3a>
d0045e5e:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0045e62:	3301      	adds	r3, #1
d0045e64:	d003      	beq.n	d0045e6e <_fwalk_reent+0x3a>
d0045e66:	4629      	mov	r1, r5
d0045e68:	4630      	mov	r0, r6
d0045e6a:	47c0      	blx	r8
d0045e6c:	4307      	orrs	r7, r0
d0045e6e:	3568      	adds	r5, #104	; 0x68
d0045e70:	e7e9      	b.n	d0045e46 <_fwalk_reent+0x12>

d0045e72 <__retarget_lock_init_recursive>:
d0045e72:	4770      	bx	lr

d0045e74 <__retarget_lock_close_recursive>:
d0045e74:	4770      	bx	lr

d0045e76 <__retarget_lock_acquire_recursive>:
d0045e76:	4770      	bx	lr

d0045e78 <__retarget_lock_release_recursive>:
d0045e78:	4770      	bx	lr

d0045e7a <__swhatbuf_r>:
d0045e7a:	b570      	push	{r4, r5, r6, lr}
d0045e7c:	460e      	mov	r6, r1
d0045e7e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0045e82:	2900      	cmp	r1, #0
d0045e84:	b096      	sub	sp, #88	; 0x58
d0045e86:	4614      	mov	r4, r2
d0045e88:	461d      	mov	r5, r3
d0045e8a:	da07      	bge.n	d0045e9c <__swhatbuf_r+0x22>
d0045e8c:	2300      	movs	r3, #0
d0045e8e:	602b      	str	r3, [r5, #0]
d0045e90:	89b3      	ldrh	r3, [r6, #12]
d0045e92:	061a      	lsls	r2, r3, #24
d0045e94:	d410      	bmi.n	d0045eb8 <__swhatbuf_r+0x3e>
d0045e96:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0045e9a:	e00e      	b.n	d0045eba <__swhatbuf_r+0x40>
d0045e9c:	466a      	mov	r2, sp
d0045e9e:	f000 fa03 	bl	d00462a8 <_fstat_r>
d0045ea2:	2800      	cmp	r0, #0
d0045ea4:	dbf2      	blt.n	d0045e8c <__swhatbuf_r+0x12>
d0045ea6:	9a01      	ldr	r2, [sp, #4]
d0045ea8:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0045eac:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0045eb0:	425a      	negs	r2, r3
d0045eb2:	415a      	adcs	r2, r3
d0045eb4:	602a      	str	r2, [r5, #0]
d0045eb6:	e7ee      	b.n	d0045e96 <__swhatbuf_r+0x1c>
d0045eb8:	2340      	movs	r3, #64	; 0x40
d0045eba:	2000      	movs	r0, #0
d0045ebc:	6023      	str	r3, [r4, #0]
d0045ebe:	b016      	add	sp, #88	; 0x58
d0045ec0:	bd70      	pop	{r4, r5, r6, pc}
	...

d0045ec4 <malloc>:
d0045ec4:	4b02      	ldr	r3, [pc, #8]	; (d0045ed0 <malloc+0xc>)
d0045ec6:	4601      	mov	r1, r0
d0045ec8:	6818      	ldr	r0, [r3, #0]
d0045eca:	f000 b871 	b.w	d0045fb0 <_malloc_r>
d0045ece:	bf00      	nop
d0045ed0:	d0047518 	.word	0xd0047518

d0045ed4 <free>:
d0045ed4:	4b02      	ldr	r3, [pc, #8]	; (d0045ee0 <free+0xc>)
d0045ed6:	4601      	mov	r1, r0
d0045ed8:	6818      	ldr	r0, [r3, #0]
d0045eda:	f000 b819 	b.w	d0045f10 <_free_r>
d0045ede:	bf00      	nop
d0045ee0:	d0047518 	.word	0xd0047518

d0045ee4 <memcpy>:
d0045ee4:	440a      	add	r2, r1
d0045ee6:	4291      	cmp	r1, r2
d0045ee8:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0045eec:	d100      	bne.n	d0045ef0 <memcpy+0xc>
d0045eee:	4770      	bx	lr
d0045ef0:	b510      	push	{r4, lr}
d0045ef2:	f811 4b01 	ldrb.w	r4, [r1], #1
d0045ef6:	f803 4f01 	strb.w	r4, [r3, #1]!
d0045efa:	4291      	cmp	r1, r2
d0045efc:	d1f9      	bne.n	d0045ef2 <memcpy+0xe>
d0045efe:	bd10      	pop	{r4, pc}

d0045f00 <memset>:
d0045f00:	4402      	add	r2, r0
d0045f02:	4603      	mov	r3, r0
d0045f04:	4293      	cmp	r3, r2
d0045f06:	d100      	bne.n	d0045f0a <memset+0xa>
d0045f08:	4770      	bx	lr
d0045f0a:	f803 1b01 	strb.w	r1, [r3], #1
d0045f0e:	e7f9      	b.n	d0045f04 <memset+0x4>

d0045f10 <_free_r>:
d0045f10:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0045f12:	2900      	cmp	r1, #0
d0045f14:	d048      	beq.n	d0045fa8 <_free_r+0x98>
d0045f16:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0045f1a:	9001      	str	r0, [sp, #4]
d0045f1c:	2b00      	cmp	r3, #0
d0045f1e:	f1a1 0404 	sub.w	r4, r1, #4
d0045f22:	bfb8      	it	lt
d0045f24:	18e4      	addlt	r4, r4, r3
d0045f26:	f000 f9e3 	bl	d00462f0 <__malloc_lock>
d0045f2a:	4a20      	ldr	r2, [pc, #128]	; (d0045fac <_free_r+0x9c>)
d0045f2c:	9801      	ldr	r0, [sp, #4]
d0045f2e:	6813      	ldr	r3, [r2, #0]
d0045f30:	4615      	mov	r5, r2
d0045f32:	b933      	cbnz	r3, d0045f42 <_free_r+0x32>
d0045f34:	6063      	str	r3, [r4, #4]
d0045f36:	6014      	str	r4, [r2, #0]
d0045f38:	b003      	add	sp, #12
d0045f3a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0045f3e:	f000 b9dd 	b.w	d00462fc <__malloc_unlock>
d0045f42:	42a3      	cmp	r3, r4
d0045f44:	d90b      	bls.n	d0045f5e <_free_r+0x4e>
d0045f46:	6821      	ldr	r1, [r4, #0]
d0045f48:	1862      	adds	r2, r4, r1
d0045f4a:	4293      	cmp	r3, r2
d0045f4c:	bf04      	itt	eq
d0045f4e:	681a      	ldreq	r2, [r3, #0]
d0045f50:	685b      	ldreq	r3, [r3, #4]
d0045f52:	6063      	str	r3, [r4, #4]
d0045f54:	bf04      	itt	eq
d0045f56:	1852      	addeq	r2, r2, r1
d0045f58:	6022      	streq	r2, [r4, #0]
d0045f5a:	602c      	str	r4, [r5, #0]
d0045f5c:	e7ec      	b.n	d0045f38 <_free_r+0x28>
d0045f5e:	461a      	mov	r2, r3
d0045f60:	685b      	ldr	r3, [r3, #4]
d0045f62:	b10b      	cbz	r3, d0045f68 <_free_r+0x58>
d0045f64:	42a3      	cmp	r3, r4
d0045f66:	d9fa      	bls.n	d0045f5e <_free_r+0x4e>
d0045f68:	6811      	ldr	r1, [r2, #0]
d0045f6a:	1855      	adds	r5, r2, r1
d0045f6c:	42a5      	cmp	r5, r4
d0045f6e:	d10b      	bne.n	d0045f88 <_free_r+0x78>
d0045f70:	6824      	ldr	r4, [r4, #0]
d0045f72:	4421      	add	r1, r4
d0045f74:	1854      	adds	r4, r2, r1
d0045f76:	42a3      	cmp	r3, r4
d0045f78:	6011      	str	r1, [r2, #0]
d0045f7a:	d1dd      	bne.n	d0045f38 <_free_r+0x28>
d0045f7c:	681c      	ldr	r4, [r3, #0]
d0045f7e:	685b      	ldr	r3, [r3, #4]
d0045f80:	6053      	str	r3, [r2, #4]
d0045f82:	4421      	add	r1, r4
d0045f84:	6011      	str	r1, [r2, #0]
d0045f86:	e7d7      	b.n	d0045f38 <_free_r+0x28>
d0045f88:	d902      	bls.n	d0045f90 <_free_r+0x80>
d0045f8a:	230c      	movs	r3, #12
d0045f8c:	6003      	str	r3, [r0, #0]
d0045f8e:	e7d3      	b.n	d0045f38 <_free_r+0x28>
d0045f90:	6825      	ldr	r5, [r4, #0]
d0045f92:	1961      	adds	r1, r4, r5
d0045f94:	428b      	cmp	r3, r1
d0045f96:	bf04      	itt	eq
d0045f98:	6819      	ldreq	r1, [r3, #0]
d0045f9a:	685b      	ldreq	r3, [r3, #4]
d0045f9c:	6063      	str	r3, [r4, #4]
d0045f9e:	bf04      	itt	eq
d0045fa0:	1949      	addeq	r1, r1, r5
d0045fa2:	6021      	streq	r1, [r4, #0]
d0045fa4:	6054      	str	r4, [r2, #4]
d0045fa6:	e7c7      	b.n	d0045f38 <_free_r+0x28>
d0045fa8:	b003      	add	sp, #12
d0045faa:	bd30      	pop	{r4, r5, pc}
d0045fac:	d00e1c00 	.word	0xd00e1c00

d0045fb0 <_malloc_r>:
d0045fb0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0045fb2:	1ccd      	adds	r5, r1, #3
d0045fb4:	f025 0503 	bic.w	r5, r5, #3
d0045fb8:	3508      	adds	r5, #8
d0045fba:	2d0c      	cmp	r5, #12
d0045fbc:	bf38      	it	cc
d0045fbe:	250c      	movcc	r5, #12
d0045fc0:	2d00      	cmp	r5, #0
d0045fc2:	4606      	mov	r6, r0
d0045fc4:	db01      	blt.n	d0045fca <_malloc_r+0x1a>
d0045fc6:	42a9      	cmp	r1, r5
d0045fc8:	d903      	bls.n	d0045fd2 <_malloc_r+0x22>
d0045fca:	230c      	movs	r3, #12
d0045fcc:	6033      	str	r3, [r6, #0]
d0045fce:	2000      	movs	r0, #0
d0045fd0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0045fd2:	f000 f98d 	bl	d00462f0 <__malloc_lock>
d0045fd6:	4921      	ldr	r1, [pc, #132]	; (d004605c <_malloc_r+0xac>)
d0045fd8:	680a      	ldr	r2, [r1, #0]
d0045fda:	4614      	mov	r4, r2
d0045fdc:	b99c      	cbnz	r4, d0046006 <_malloc_r+0x56>
d0045fde:	4f20      	ldr	r7, [pc, #128]	; (d0046060 <_malloc_r+0xb0>)
d0045fe0:	683b      	ldr	r3, [r7, #0]
d0045fe2:	b923      	cbnz	r3, d0045fee <_malloc_r+0x3e>
d0045fe4:	4621      	mov	r1, r4
d0045fe6:	4630      	mov	r0, r6
d0045fe8:	f7fa f87a 	bl	d00400e0 <_sbrk_r>
d0045fec:	6038      	str	r0, [r7, #0]
d0045fee:	4629      	mov	r1, r5
d0045ff0:	4630      	mov	r0, r6
d0045ff2:	f7fa f875 	bl	d00400e0 <_sbrk_r>
d0045ff6:	1c43      	adds	r3, r0, #1
d0045ff8:	d123      	bne.n	d0046042 <_malloc_r+0x92>
d0045ffa:	230c      	movs	r3, #12
d0045ffc:	6033      	str	r3, [r6, #0]
d0045ffe:	4630      	mov	r0, r6
d0046000:	f000 f97c 	bl	d00462fc <__malloc_unlock>
d0046004:	e7e3      	b.n	d0045fce <_malloc_r+0x1e>
d0046006:	6823      	ldr	r3, [r4, #0]
d0046008:	1b5b      	subs	r3, r3, r5
d004600a:	d417      	bmi.n	d004603c <_malloc_r+0x8c>
d004600c:	2b0b      	cmp	r3, #11
d004600e:	d903      	bls.n	d0046018 <_malloc_r+0x68>
d0046010:	6023      	str	r3, [r4, #0]
d0046012:	441c      	add	r4, r3
d0046014:	6025      	str	r5, [r4, #0]
d0046016:	e004      	b.n	d0046022 <_malloc_r+0x72>
d0046018:	6863      	ldr	r3, [r4, #4]
d004601a:	42a2      	cmp	r2, r4
d004601c:	bf0c      	ite	eq
d004601e:	600b      	streq	r3, [r1, #0]
d0046020:	6053      	strne	r3, [r2, #4]
d0046022:	4630      	mov	r0, r6
d0046024:	f000 f96a 	bl	d00462fc <__malloc_unlock>
d0046028:	f104 000b 	add.w	r0, r4, #11
d004602c:	1d23      	adds	r3, r4, #4
d004602e:	f020 0007 	bic.w	r0, r0, #7
d0046032:	1ac2      	subs	r2, r0, r3
d0046034:	d0cc      	beq.n	d0045fd0 <_malloc_r+0x20>
d0046036:	1a1b      	subs	r3, r3, r0
d0046038:	50a3      	str	r3, [r4, r2]
d004603a:	e7c9      	b.n	d0045fd0 <_malloc_r+0x20>
d004603c:	4622      	mov	r2, r4
d004603e:	6864      	ldr	r4, [r4, #4]
d0046040:	e7cc      	b.n	d0045fdc <_malloc_r+0x2c>
d0046042:	1cc4      	adds	r4, r0, #3
d0046044:	f024 0403 	bic.w	r4, r4, #3
d0046048:	42a0      	cmp	r0, r4
d004604a:	d0e3      	beq.n	d0046014 <_malloc_r+0x64>
d004604c:	1a21      	subs	r1, r4, r0
d004604e:	4630      	mov	r0, r6
d0046050:	f7fa f846 	bl	d00400e0 <_sbrk_r>
d0046054:	3001      	adds	r0, #1
d0046056:	d1dd      	bne.n	d0046014 <_malloc_r+0x64>
d0046058:	e7cf      	b.n	d0045ffa <_malloc_r+0x4a>
d004605a:	bf00      	nop
d004605c:	d00e1c00 	.word	0xd00e1c00
d0046060:	d00e1c04 	.word	0xd00e1c04

d0046064 <setbuf>:
d0046064:	2900      	cmp	r1, #0
d0046066:	f44f 6380 	mov.w	r3, #1024	; 0x400
d004606a:	bf0c      	ite	eq
d004606c:	2202      	moveq	r2, #2
d004606e:	2200      	movne	r2, #0
d0046070:	f000 b800 	b.w	d0046074 <setvbuf>

d0046074 <setvbuf>:
d0046074:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0046078:	461d      	mov	r5, r3
d004607a:	4b5d      	ldr	r3, [pc, #372]	; (d00461f0 <setvbuf+0x17c>)
d004607c:	681f      	ldr	r7, [r3, #0]
d004607e:	4604      	mov	r4, r0
d0046080:	460e      	mov	r6, r1
d0046082:	4690      	mov	r8, r2
d0046084:	b127      	cbz	r7, d0046090 <setvbuf+0x1c>
d0046086:	69bb      	ldr	r3, [r7, #24]
d0046088:	b913      	cbnz	r3, d0046090 <setvbuf+0x1c>
d004608a:	4638      	mov	r0, r7
d004608c:	f7ff fe54 	bl	d0045d38 <__sinit>
d0046090:	4b58      	ldr	r3, [pc, #352]	; (d00461f4 <setvbuf+0x180>)
d0046092:	429c      	cmp	r4, r3
d0046094:	d167      	bne.n	d0046166 <setvbuf+0xf2>
d0046096:	687c      	ldr	r4, [r7, #4]
d0046098:	f1b8 0f02 	cmp.w	r8, #2
d004609c:	d006      	beq.n	d00460ac <setvbuf+0x38>
d004609e:	f1b8 0f01 	cmp.w	r8, #1
d00460a2:	f200 809f 	bhi.w	d00461e4 <setvbuf+0x170>
d00460a6:	2d00      	cmp	r5, #0
d00460a8:	f2c0 809c 	blt.w	d00461e4 <setvbuf+0x170>
d00460ac:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00460ae:	07db      	lsls	r3, r3, #31
d00460b0:	d405      	bmi.n	d00460be <setvbuf+0x4a>
d00460b2:	89a3      	ldrh	r3, [r4, #12]
d00460b4:	0598      	lsls	r0, r3, #22
d00460b6:	d402      	bmi.n	d00460be <setvbuf+0x4a>
d00460b8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00460ba:	f7ff fedc 	bl	d0045e76 <__retarget_lock_acquire_recursive>
d00460be:	4621      	mov	r1, r4
d00460c0:	4638      	mov	r0, r7
d00460c2:	f7ff fda5 	bl	d0045c10 <_fflush_r>
d00460c6:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00460c8:	b141      	cbz	r1, d00460dc <setvbuf+0x68>
d00460ca:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00460ce:	4299      	cmp	r1, r3
d00460d0:	d002      	beq.n	d00460d8 <setvbuf+0x64>
d00460d2:	4638      	mov	r0, r7
d00460d4:	f7ff ff1c 	bl	d0045f10 <_free_r>
d00460d8:	2300      	movs	r3, #0
d00460da:	6363      	str	r3, [r4, #52]	; 0x34
d00460dc:	2300      	movs	r3, #0
d00460de:	61a3      	str	r3, [r4, #24]
d00460e0:	6063      	str	r3, [r4, #4]
d00460e2:	89a3      	ldrh	r3, [r4, #12]
d00460e4:	0619      	lsls	r1, r3, #24
d00460e6:	d503      	bpl.n	d00460f0 <setvbuf+0x7c>
d00460e8:	6921      	ldr	r1, [r4, #16]
d00460ea:	4638      	mov	r0, r7
d00460ec:	f7ff ff10 	bl	d0045f10 <_free_r>
d00460f0:	89a3      	ldrh	r3, [r4, #12]
d00460f2:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d00460f6:	f023 0303 	bic.w	r3, r3, #3
d00460fa:	f1b8 0f02 	cmp.w	r8, #2
d00460fe:	81a3      	strh	r3, [r4, #12]
d0046100:	d06c      	beq.n	d00461dc <setvbuf+0x168>
d0046102:	ab01      	add	r3, sp, #4
d0046104:	466a      	mov	r2, sp
d0046106:	4621      	mov	r1, r4
d0046108:	4638      	mov	r0, r7
d004610a:	f7ff feb6 	bl	d0045e7a <__swhatbuf_r>
d004610e:	89a3      	ldrh	r3, [r4, #12]
d0046110:	4318      	orrs	r0, r3
d0046112:	81a0      	strh	r0, [r4, #12]
d0046114:	2d00      	cmp	r5, #0
d0046116:	d130      	bne.n	d004617a <setvbuf+0x106>
d0046118:	9d00      	ldr	r5, [sp, #0]
d004611a:	4628      	mov	r0, r5
d004611c:	f7ff fed2 	bl	d0045ec4 <malloc>
d0046120:	4606      	mov	r6, r0
d0046122:	2800      	cmp	r0, #0
d0046124:	d155      	bne.n	d00461d2 <setvbuf+0x15e>
d0046126:	f8dd 9000 	ldr.w	r9, [sp]
d004612a:	45a9      	cmp	r9, r5
d004612c:	d14a      	bne.n	d00461c4 <setvbuf+0x150>
d004612e:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0046132:	2200      	movs	r2, #0
d0046134:	60a2      	str	r2, [r4, #8]
d0046136:	f104 0247 	add.w	r2, r4, #71	; 0x47
d004613a:	6022      	str	r2, [r4, #0]
d004613c:	6122      	str	r2, [r4, #16]
d004613e:	2201      	movs	r2, #1
d0046140:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0046144:	6162      	str	r2, [r4, #20]
d0046146:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0046148:	f043 0302 	orr.w	r3, r3, #2
d004614c:	07d2      	lsls	r2, r2, #31
d004614e:	81a3      	strh	r3, [r4, #12]
d0046150:	d405      	bmi.n	d004615e <setvbuf+0xea>
d0046152:	f413 7f00 	tst.w	r3, #512	; 0x200
d0046156:	d102      	bne.n	d004615e <setvbuf+0xea>
d0046158:	6da0      	ldr	r0, [r4, #88]	; 0x58
d004615a:	f7ff fe8d 	bl	d0045e78 <__retarget_lock_release_recursive>
d004615e:	4628      	mov	r0, r5
d0046160:	b003      	add	sp, #12
d0046162:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0046166:	4b24      	ldr	r3, [pc, #144]	; (d00461f8 <setvbuf+0x184>)
d0046168:	429c      	cmp	r4, r3
d004616a:	d101      	bne.n	d0046170 <setvbuf+0xfc>
d004616c:	68bc      	ldr	r4, [r7, #8]
d004616e:	e793      	b.n	d0046098 <setvbuf+0x24>
d0046170:	4b22      	ldr	r3, [pc, #136]	; (d00461fc <setvbuf+0x188>)
d0046172:	429c      	cmp	r4, r3
d0046174:	bf08      	it	eq
d0046176:	68fc      	ldreq	r4, [r7, #12]
d0046178:	e78e      	b.n	d0046098 <setvbuf+0x24>
d004617a:	2e00      	cmp	r6, #0
d004617c:	d0cd      	beq.n	d004611a <setvbuf+0xa6>
d004617e:	69bb      	ldr	r3, [r7, #24]
d0046180:	b913      	cbnz	r3, d0046188 <setvbuf+0x114>
d0046182:	4638      	mov	r0, r7
d0046184:	f7ff fdd8 	bl	d0045d38 <__sinit>
d0046188:	f1b8 0f01 	cmp.w	r8, #1
d004618c:	bf08      	it	eq
d004618e:	89a3      	ldrheq	r3, [r4, #12]
d0046190:	6026      	str	r6, [r4, #0]
d0046192:	bf04      	itt	eq
d0046194:	f043 0301 	orreq.w	r3, r3, #1
d0046198:	81a3      	strheq	r3, [r4, #12]
d004619a:	89a2      	ldrh	r2, [r4, #12]
d004619c:	f012 0308 	ands.w	r3, r2, #8
d00461a0:	e9c4 6504 	strd	r6, r5, [r4, #16]
d00461a4:	d01c      	beq.n	d00461e0 <setvbuf+0x16c>
d00461a6:	07d3      	lsls	r3, r2, #31
d00461a8:	bf41      	itttt	mi
d00461aa:	2300      	movmi	r3, #0
d00461ac:	426d      	negmi	r5, r5
d00461ae:	60a3      	strmi	r3, [r4, #8]
d00461b0:	61a5      	strmi	r5, [r4, #24]
d00461b2:	bf58      	it	pl
d00461b4:	60a5      	strpl	r5, [r4, #8]
d00461b6:	6e65      	ldr	r5, [r4, #100]	; 0x64
d00461b8:	f015 0501 	ands.w	r5, r5, #1
d00461bc:	d115      	bne.n	d00461ea <setvbuf+0x176>
d00461be:	f412 7f00 	tst.w	r2, #512	; 0x200
d00461c2:	e7c8      	b.n	d0046156 <setvbuf+0xe2>
d00461c4:	4648      	mov	r0, r9
d00461c6:	f7ff fe7d 	bl	d0045ec4 <malloc>
d00461ca:	4606      	mov	r6, r0
d00461cc:	2800      	cmp	r0, #0
d00461ce:	d0ae      	beq.n	d004612e <setvbuf+0xba>
d00461d0:	464d      	mov	r5, r9
d00461d2:	89a3      	ldrh	r3, [r4, #12]
d00461d4:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00461d8:	81a3      	strh	r3, [r4, #12]
d00461da:	e7d0      	b.n	d004617e <setvbuf+0x10a>
d00461dc:	2500      	movs	r5, #0
d00461de:	e7a8      	b.n	d0046132 <setvbuf+0xbe>
d00461e0:	60a3      	str	r3, [r4, #8]
d00461e2:	e7e8      	b.n	d00461b6 <setvbuf+0x142>
d00461e4:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00461e8:	e7b9      	b.n	d004615e <setvbuf+0xea>
d00461ea:	2500      	movs	r5, #0
d00461ec:	e7b7      	b.n	d004615e <setvbuf+0xea>
d00461ee:	bf00      	nop
d00461f0:	d0047518 	.word	0xd0047518
d00461f4:	d0046d20 	.word	0xd0046d20
d00461f8:	d0046d40 	.word	0xd0046d40
d00461fc:	d0046d00 	.word	0xd0046d00

d0046200 <__sread>:
d0046200:	b510      	push	{r4, lr}
d0046202:	460c      	mov	r4, r1
d0046204:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0046208:	f000 f87e 	bl	d0046308 <_read_r>
d004620c:	2800      	cmp	r0, #0
d004620e:	bfab      	itete	ge
d0046210:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0046212:	89a3      	ldrhlt	r3, [r4, #12]
d0046214:	181b      	addge	r3, r3, r0
d0046216:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d004621a:	bfac      	ite	ge
d004621c:	6563      	strge	r3, [r4, #84]	; 0x54
d004621e:	81a3      	strhlt	r3, [r4, #12]
d0046220:	bd10      	pop	{r4, pc}

d0046222 <__swrite>:
d0046222:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0046226:	461f      	mov	r7, r3
d0046228:	898b      	ldrh	r3, [r1, #12]
d004622a:	05db      	lsls	r3, r3, #23
d004622c:	4605      	mov	r5, r0
d004622e:	460c      	mov	r4, r1
d0046230:	4616      	mov	r6, r2
d0046232:	d505      	bpl.n	d0046240 <__swrite+0x1e>
d0046234:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0046238:	2302      	movs	r3, #2
d004623a:	2200      	movs	r2, #0
d004623c:	f000 f846 	bl	d00462cc <_lseek_r>
d0046240:	89a3      	ldrh	r3, [r4, #12]
d0046242:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0046246:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d004624a:	81a3      	strh	r3, [r4, #12]
d004624c:	4632      	mov	r2, r6
d004624e:	463b      	mov	r3, r7
d0046250:	4628      	mov	r0, r5
d0046252:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0046256:	f7f9 befd 	b.w	d0040054 <_write_r>

d004625a <__sseek>:
d004625a:	b510      	push	{r4, lr}
d004625c:	460c      	mov	r4, r1
d004625e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0046262:	f000 f833 	bl	d00462cc <_lseek_r>
d0046266:	1c43      	adds	r3, r0, #1
d0046268:	89a3      	ldrh	r3, [r4, #12]
d004626a:	bf15      	itete	ne
d004626c:	6560      	strne	r0, [r4, #84]	; 0x54
d004626e:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0046272:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d0046276:	81a3      	strheq	r3, [r4, #12]
d0046278:	bf18      	it	ne
d004627a:	81a3      	strhne	r3, [r4, #12]
d004627c:	bd10      	pop	{r4, pc}

d004627e <__sclose>:
d004627e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0046282:	f000 b801 	b.w	d0046288 <_close_r>
	...

d0046288 <_close_r>:
d0046288:	b538      	push	{r3, r4, r5, lr}
d004628a:	4d06      	ldr	r5, [pc, #24]	; (d00462a4 <_close_r+0x1c>)
d004628c:	2300      	movs	r3, #0
d004628e:	4604      	mov	r4, r0
d0046290:	4608      	mov	r0, r1
d0046292:	602b      	str	r3, [r5, #0]
d0046294:	f7f9 ff18 	bl	d00400c8 <_close>
d0046298:	1c43      	adds	r3, r0, #1
d004629a:	d102      	bne.n	d00462a2 <_close_r+0x1a>
d004629c:	682b      	ldr	r3, [r5, #0]
d004629e:	b103      	cbz	r3, d00462a2 <_close_r+0x1a>
d00462a0:	6023      	str	r3, [r4, #0]
d00462a2:	bd38      	pop	{r3, r4, r5, pc}
d00462a4:	d0132cac 	.word	0xd0132cac

d00462a8 <_fstat_r>:
d00462a8:	b538      	push	{r3, r4, r5, lr}
d00462aa:	4d07      	ldr	r5, [pc, #28]	; (d00462c8 <_fstat_r+0x20>)
d00462ac:	2300      	movs	r3, #0
d00462ae:	4604      	mov	r4, r0
d00462b0:	4608      	mov	r0, r1
d00462b2:	4611      	mov	r1, r2
d00462b4:	602b      	str	r3, [r5, #0]
d00462b6:	f7f9 ff0b 	bl	d00400d0 <_fstat>
d00462ba:	1c43      	adds	r3, r0, #1
d00462bc:	d102      	bne.n	d00462c4 <_fstat_r+0x1c>
d00462be:	682b      	ldr	r3, [r5, #0]
d00462c0:	b103      	cbz	r3, d00462c4 <_fstat_r+0x1c>
d00462c2:	6023      	str	r3, [r4, #0]
d00462c4:	bd38      	pop	{r3, r4, r5, pc}
d00462c6:	bf00      	nop
d00462c8:	d0132cac 	.word	0xd0132cac

d00462cc <_lseek_r>:
d00462cc:	b538      	push	{r3, r4, r5, lr}
d00462ce:	4d07      	ldr	r5, [pc, #28]	; (d00462ec <_lseek_r+0x20>)
d00462d0:	4604      	mov	r4, r0
d00462d2:	4608      	mov	r0, r1
d00462d4:	4611      	mov	r1, r2
d00462d6:	2200      	movs	r2, #0
d00462d8:	602a      	str	r2, [r5, #0]
d00462da:	461a      	mov	r2, r3
d00462dc:	f7f9 fefe 	bl	d00400dc <_lseek>
d00462e0:	1c43      	adds	r3, r0, #1
d00462e2:	d102      	bne.n	d00462ea <_lseek_r+0x1e>
d00462e4:	682b      	ldr	r3, [r5, #0]
d00462e6:	b103      	cbz	r3, d00462ea <_lseek_r+0x1e>
d00462e8:	6023      	str	r3, [r4, #0]
d00462ea:	bd38      	pop	{r3, r4, r5, pc}
d00462ec:	d0132cac 	.word	0xd0132cac

d00462f0 <__malloc_lock>:
d00462f0:	4801      	ldr	r0, [pc, #4]	; (d00462f8 <__malloc_lock+0x8>)
d00462f2:	f7ff bdc0 	b.w	d0045e76 <__retarget_lock_acquire_recursive>
d00462f6:	bf00      	nop
d00462f8:	d0132ca4 	.word	0xd0132ca4

d00462fc <__malloc_unlock>:
d00462fc:	4801      	ldr	r0, [pc, #4]	; (d0046304 <__malloc_unlock+0x8>)
d00462fe:	f7ff bdbb 	b.w	d0045e78 <__retarget_lock_release_recursive>
d0046302:	bf00      	nop
d0046304:	d0132ca4 	.word	0xd0132ca4

d0046308 <_read_r>:
d0046308:	b538      	push	{r3, r4, r5, lr}
d004630a:	4d07      	ldr	r5, [pc, #28]	; (d0046328 <_read_r+0x20>)
d004630c:	4604      	mov	r4, r0
d004630e:	4608      	mov	r0, r1
d0046310:	4611      	mov	r1, r2
d0046312:	2200      	movs	r2, #0
d0046314:	602a      	str	r2, [r5, #0]
d0046316:	461a      	mov	r2, r3
d0046318:	f7f9 fecc 	bl	d00400b4 <_read>
d004631c:	1c43      	adds	r3, r0, #1
d004631e:	d102      	bne.n	d0046326 <_read_r+0x1e>
d0046320:	682b      	ldr	r3, [r5, #0]
d0046322:	b103      	cbz	r3, d0046326 <_read_r+0x1e>
d0046324:	6023      	str	r3, [r4, #0]
d0046326:	bd38      	pop	{r3, r4, r5, pc}
d0046328:	d0132cac 	.word	0xd0132cac

d004632c <sinf_poly>:
d004632c:	07cb      	lsls	r3, r1, #31
d004632e:	d412      	bmi.n	d0046356 <sinf_poly+0x2a>
d0046330:	ee21 6b00 	vmul.f64	d6, d1, d0
d0046334:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d0046338:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d004633c:	eea5 7b01 	vfma.f64	d7, d5, d1
d0046340:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d0046344:	ee21 1b06 	vmul.f64	d1, d1, d6
d0046348:	eea5 0b06 	vfma.f64	d0, d5, d6
d004634c:	eea7 0b01 	vfma.f64	d0, d7, d1
d0046350:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0046354:	4770      	bx	lr
d0046356:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d004635a:	ee21 6b01 	vmul.f64	d6, d1, d1
d004635e:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d0046362:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d0046366:	eea1 7b05 	vfma.f64	d7, d1, d5
d004636a:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d004636e:	eea1 0b05 	vfma.f64	d0, d1, d5
d0046372:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d0046376:	ee21 1b06 	vmul.f64	d1, d1, d6
d004637a:	eea6 0b05 	vfma.f64	d0, d6, d5
d004637e:	e7e5      	b.n	d004634c <sinf_poly+0x20>

d0046380 <cosf>:
d0046380:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0046382:	ee10 4a10 	vmov	r4, s0
d0046386:	f3c4 530a 	ubfx	r3, r4, #20, #11
d004638a:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d004638e:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d0046392:	d20c      	bcs.n	d00463ae <cosf+0x2e>
d0046394:	ee26 1b06 	vmul.f64	d1, d6, d6
d0046398:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d004639c:	d378      	bcc.n	d0046490 <cosf+0x110>
d004639e:	eeb0 0b46 	vmov.f64	d0, d6
d00463a2:	483f      	ldr	r0, [pc, #252]	; (d00464a0 <cosf+0x120>)
d00463a4:	2101      	movs	r1, #1
d00463a6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d00463aa:	f7ff bfbf 	b.w	d004632c <sinf_poly>
d00463ae:	f240 422e 	movw	r2, #1070	; 0x42e
d00463b2:	4293      	cmp	r3, r2
d00463b4:	d826      	bhi.n	d0046404 <cosf+0x84>
d00463b6:	4b3a      	ldr	r3, [pc, #232]	; (d00464a0 <cosf+0x120>)
d00463b8:	ed93 7b08 	vldr	d7, [r3, #32]
d00463bc:	ee26 7b07 	vmul.f64	d7, d6, d7
d00463c0:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d00463c4:	f103 0070 	add.w	r0, r3, #112	; 0x70
d00463c8:	ee17 1a90 	vmov	r1, s15
d00463cc:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d00463d0:	1609      	asrs	r1, r1, #24
d00463d2:	ee07 1a90 	vmov	s15, r1
d00463d6:	f001 0203 	and.w	r2, r1, #3
d00463da:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d00463de:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d00463e2:	ed92 0b00 	vldr	d0, [r2]
d00463e6:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d00463ea:	f011 0f02 	tst.w	r1, #2
d00463ee:	eea5 6b47 	vfms.f64	d6, d5, d7
d00463f2:	f081 0101 	eor.w	r1, r1, #1
d00463f6:	bf08      	it	eq
d00463f8:	4618      	moveq	r0, r3
d00463fa:	ee26 1b06 	vmul.f64	d1, d6, d6
d00463fe:	ee20 0b06 	vmul.f64	d0, d0, d6
d0046402:	e7d0      	b.n	d00463a6 <cosf+0x26>
d0046404:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0046408:	d23e      	bcs.n	d0046488 <cosf+0x108>
d004640a:	4b26      	ldr	r3, [pc, #152]	; (d00464a4 <cosf+0x124>)
d004640c:	f3c4 6283 	ubfx	r2, r4, #26, #4
d0046410:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d0046414:	f3c4 0116 	ubfx	r1, r4, #0, #23
d0046418:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d004641c:	6a06      	ldr	r6, [r0, #32]
d004641e:	6900      	ldr	r0, [r0, #16]
d0046420:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d0046424:	40a9      	lsls	r1, r5
d0046426:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d004642a:	fba1 6706 	umull	r6, r7, r1, r6
d004642e:	fb05 f301 	mul.w	r3, r5, r1
d0046432:	463a      	mov	r2, r7
d0046434:	fbe0 2301 	umlal	r2, r3, r0, r1
d0046438:	1c11      	adds	r1, r2, #0
d004643a:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d004643e:	2000      	movs	r0, #0
d0046440:	1a10      	subs	r0, r2, r0
d0046442:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d0046446:	eb63 0101 	sbc.w	r1, r3, r1
d004644a:	f000 fbab 	bl	d0046ba4 <__aeabi_l2d>
d004644e:	0fb5      	lsrs	r5, r6, #30
d0046450:	4b13      	ldr	r3, [pc, #76]	; (d00464a0 <cosf+0x120>)
d0046452:	eb05 74d4 	add.w	r4, r5, r4, lsr #31
d0046456:	ed9f 0b10 	vldr	d0, [pc, #64]	; d0046498 <cosf+0x118>
d004645a:	ec41 0b17 	vmov	d7, r0, r1
d004645e:	f004 0203 	and.w	r2, r4, #3
d0046462:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d0046466:	ee27 0b00 	vmul.f64	d0, d7, d0
d004646a:	ed92 7b00 	vldr	d7, [r2]
d004646e:	ee20 1b00 	vmul.f64	d1, d0, d0
d0046472:	f014 0f02 	tst.w	r4, #2
d0046476:	f103 0070 	add.w	r0, r3, #112	; 0x70
d004647a:	f085 0101 	eor.w	r1, r5, #1
d004647e:	bf08      	it	eq
d0046480:	4618      	moveq	r0, r3
d0046482:	ee27 0b00 	vmul.f64	d0, d7, d0
d0046486:	e78e      	b.n	d00463a6 <cosf+0x26>
d0046488:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d004648c:	f000 b844 	b.w	d0046518 <__math_invalidf>
d0046490:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0046494:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0046496:	bf00      	nop
d0046498:	54442d18 	.word	0x54442d18
d004649c:	3c1921fb 	.word	0x3c1921fb
d00464a0:	d0047030 	.word	0xd0047030
d00464a4:	d0046fd0 	.word	0xd0046fd0

d00464a8 <with_errnof>:
d00464a8:	b513      	push	{r0, r1, r4, lr}
d00464aa:	4604      	mov	r4, r0
d00464ac:	ed8d 0a01 	vstr	s0, [sp, #4]
d00464b0:	f7ff faae 	bl	d0045a10 <__errno>
d00464b4:	ed9d 0a01 	vldr	s0, [sp, #4]
d00464b8:	6004      	str	r4, [r0, #0]
d00464ba:	b002      	add	sp, #8
d00464bc:	bd10      	pop	{r4, pc}

d00464be <xflowf>:
d00464be:	b130      	cbz	r0, d00464ce <xflowf+0x10>
d00464c0:	eef1 7a40 	vneg.f32	s15, s0
d00464c4:	ee27 0a80 	vmul.f32	s0, s15, s0
d00464c8:	2022      	movs	r0, #34	; 0x22
d00464ca:	f7ff bfed 	b.w	d00464a8 <with_errnof>
d00464ce:	eef0 7a40 	vmov.f32	s15, s0
d00464d2:	e7f7      	b.n	d00464c4 <xflowf+0x6>

d00464d4 <__math_uflowf>:
d00464d4:	ed9f 0a01 	vldr	s0, [pc, #4]	; d00464dc <__math_uflowf+0x8>
d00464d8:	f7ff bff1 	b.w	d00464be <xflowf>
d00464dc:	10000000 	.word	0x10000000

d00464e0 <__math_may_uflowf>:
d00464e0:	ed9f 0a01 	vldr	s0, [pc, #4]	; d00464e8 <__math_may_uflowf+0x8>
d00464e4:	f7ff bfeb 	b.w	d00464be <xflowf>
d00464e8:	1a200000 	.word	0x1a200000

d00464ec <__math_oflowf>:
d00464ec:	ed9f 0a01 	vldr	s0, [pc, #4]	; d00464f4 <__math_oflowf+0x8>
d00464f0:	f7ff bfe5 	b.w	d00464be <xflowf>
d00464f4:	70000000 	.word	0x70000000

d00464f8 <__math_divzerof>:
d00464f8:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d00464fc:	eeff 7a00 	vmov.f32	s15, #240	; 0xbf800000 -1.0
d0046500:	2800      	cmp	r0, #0
d0046502:	fe40 7a27 	vseleq.f32	s15, s0, s15
d0046506:	ed9f 0a03 	vldr	s0, [pc, #12]	; d0046514 <__math_divzerof+0x1c>
d004650a:	2022      	movs	r0, #34	; 0x22
d004650c:	ee87 0a80 	vdiv.f32	s0, s15, s0
d0046510:	f7ff bfca 	b.w	d00464a8 <with_errnof>
d0046514:	00000000 	.word	0x00000000

d0046518 <__math_invalidf>:
d0046518:	eef0 7a40 	vmov.f32	s15, s0
d004651c:	ee30 7a40 	vsub.f32	s14, s0, s0
d0046520:	eef4 7a67 	vcmp.f32	s15, s15
d0046524:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046528:	ee87 0a07 	vdiv.f32	s0, s14, s14
d004652c:	d602      	bvs.n	d0046534 <__math_invalidf+0x1c>
d004652e:	2021      	movs	r0, #33	; 0x21
d0046530:	f7ff bfba 	b.w	d00464a8 <with_errnof>
d0046534:	4770      	bx	lr
	...

d0046538 <expf>:
d0046538:	ee10 2a10 	vmov	r2, s0
d004653c:	b470      	push	{r4, r5, r6}
d004653e:	f3c2 530a 	ubfx	r3, r2, #20, #11
d0046542:	f240 442a 	movw	r4, #1066	; 0x42a
d0046546:	42a3      	cmp	r3, r4
d0046548:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d004654c:	d92a      	bls.n	d00465a4 <expf+0x6c>
d004654e:	f512 0f00 	cmn.w	r2, #8388608	; 0x800000
d0046552:	d059      	beq.n	d0046608 <expf+0xd0>
d0046554:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0046558:	d303      	bcc.n	d0046562 <expf+0x2a>
d004655a:	ee30 0a00 	vadd.f32	s0, s0, s0
d004655e:	bc70      	pop	{r4, r5, r6}
d0046560:	4770      	bx	lr
d0046562:	eddf 7a2b 	vldr	s15, [pc, #172]	; d0046610 <expf+0xd8>
d0046566:	eeb4 0ae7 	vcmpe.f32	s0, s15
d004656a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004656e:	dd03      	ble.n	d0046578 <expf+0x40>
d0046570:	bc70      	pop	{r4, r5, r6}
d0046572:	2000      	movs	r0, #0
d0046574:	f7ff bfba 	b.w	d00464ec <__math_oflowf>
d0046578:	eddf 7a26 	vldr	s15, [pc, #152]	; d0046614 <expf+0xdc>
d004657c:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0046580:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046584:	d503      	bpl.n	d004658e <expf+0x56>
d0046586:	bc70      	pop	{r4, r5, r6}
d0046588:	2000      	movs	r0, #0
d004658a:	f7ff bfa3 	b.w	d00464d4 <__math_uflowf>
d004658e:	eddf 7a22 	vldr	s15, [pc, #136]	; d0046618 <expf+0xe0>
d0046592:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0046596:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004659a:	d503      	bpl.n	d00465a4 <expf+0x6c>
d004659c:	bc70      	pop	{r4, r5, r6}
d004659e:	2000      	movs	r0, #0
d00465a0:	f7ff bf9e 	b.w	d00464e0 <__math_may_uflowf>
d00465a4:	4b1d      	ldr	r3, [pc, #116]	; (d004661c <expf+0xe4>)
d00465a6:	eeb7 0b00 	vmov.f64	d0, #112	; 0x3f800000  1.0
d00465aa:	ed93 5b4a 	vldr	d5, [r3, #296]	; 0x128
d00465ae:	ed93 4b48 	vldr	d4, [r3, #288]	; 0x120
d00465b2:	eeb0 7b44 	vmov.f64	d7, d4
d00465b6:	eea5 7b06 	vfma.f64	d7, d5, d6
d00465ba:	ee17 5a10 	vmov	r5, s14
d00465be:	ee37 7b44 	vsub.f64	d7, d7, d4
d00465c2:	f005 021f 	and.w	r2, r5, #31
d00465c6:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d00465ca:	e9d2 4600 	ldrd	r4, r6, [r2]
d00465ce:	ee95 7b06 	vfnms.f64	d7, d5, d6
d00465d2:	ed93 4b50 	vldr	d4, [r3, #320]	; 0x140
d00465d6:	ed93 5b4c 	vldr	d5, [r3, #304]	; 0x130
d00465da:	eea4 0b07 	vfma.f64	d0, d4, d7
d00465de:	ed93 6b4e 	vldr	d6, [r3, #312]	; 0x138
d00465e2:	2300      	movs	r3, #0
d00465e4:	1918      	adds	r0, r3, r4
d00465e6:	ea4f 32c5 	mov.w	r2, r5, lsl #15
d00465ea:	eb42 0106 	adc.w	r1, r2, r6
d00465ee:	eea5 6b07 	vfma.f64	d6, d5, d7
d00465f2:	ee27 5b07 	vmul.f64	d5, d7, d7
d00465f6:	ec41 0b17 	vmov	d7, r0, r1
d00465fa:	eea6 0b05 	vfma.f64	d0, d6, d5
d00465fe:	ee20 0b07 	vmul.f64	d0, d0, d7
d0046602:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0046606:	e7aa      	b.n	d004655e <expf+0x26>
d0046608:	ed9f 0a05 	vldr	s0, [pc, #20]	; d0046620 <expf+0xe8>
d004660c:	e7a7      	b.n	d004655e <expf+0x26>
d004660e:	bf00      	nop
d0046610:	42b17217 	.word	0x42b17217
d0046614:	c2cff1b4 	.word	0xc2cff1b4
d0046618:	c2ce8ecf 	.word	0xc2ce8ecf
d004661c:	d0046d68 	.word	0xd0046d68
d0046620:	00000000 	.word	0x00000000

d0046624 <logf>:
d0046624:	ee10 3a10 	vmov	r3, s0
d0046628:	f1b3 5f7e 	cmp.w	r3, #1065353216	; 0x3f800000
d004662c:	b410      	push	{r4}
d004662e:	d055      	beq.n	d00466dc <logf+0xb8>
d0046630:	f5a3 0200 	sub.w	r2, r3, #8388608	; 0x800000
d0046634:	f1b2 4ffe 	cmp.w	r2, #2130706432	; 0x7f000000
d0046638:	d31a      	bcc.n	d0046670 <logf+0x4c>
d004663a:	005a      	lsls	r2, r3, #1
d004663c:	d104      	bne.n	d0046648 <logf+0x24>
d004663e:	f85d 4b04 	ldr.w	r4, [sp], #4
d0046642:	2001      	movs	r0, #1
d0046644:	f7ff bf58 	b.w	d00464f8 <__math_divzerof>
d0046648:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d004664c:	d043      	beq.n	d00466d6 <logf+0xb2>
d004664e:	2b00      	cmp	r3, #0
d0046650:	db02      	blt.n	d0046658 <logf+0x34>
d0046652:	f1b2 4f7f 	cmp.w	r2, #4278190080	; 0xff000000
d0046656:	d303      	bcc.n	d0046660 <logf+0x3c>
d0046658:	f85d 4b04 	ldr.w	r4, [sp], #4
d004665c:	f7ff bf5c 	b.w	d0046518 <__math_invalidf>
d0046660:	eddf 7a20 	vldr	s15, [pc, #128]	; d00466e4 <logf+0xc0>
d0046664:	ee20 0a27 	vmul.f32	s0, s0, s15
d0046668:	ee10 3a10 	vmov	r3, s0
d004666c:	f1a3 6338 	sub.w	r3, r3, #192937984	; 0xb800000
d0046670:	f103 4240 	add.w	r2, r3, #3221225472	; 0xc0000000
d0046674:	491c      	ldr	r1, [pc, #112]	; (d00466e8 <logf+0xc4>)
d0046676:	eebf 0b00 	vmov.f64	d0, #240	; 0xbf800000 -1.0
d004667a:	f502 024d 	add.w	r2, r2, #13434880	; 0xcd0000
d004667e:	f3c2 40c3 	ubfx	r0, r2, #19, #4
d0046682:	0dd4      	lsrs	r4, r2, #23
d0046684:	eb01 1000 	add.w	r0, r1, r0, lsl #4
d0046688:	05e4      	lsls	r4, r4, #23
d004668a:	ed90 6b00 	vldr	d6, [r0]
d004668e:	1b1b      	subs	r3, r3, r4
d0046690:	ee07 3a90 	vmov	s15, r3
d0046694:	ed91 5b40 	vldr	d5, [r1, #256]	; 0x100
d0046698:	eeb7 7ae7 	vcvt.f64.f32	d7, s15
d004669c:	15d2      	asrs	r2, r2, #23
d004669e:	eea6 0b07 	vfma.f64	d0, d6, d7
d00466a2:	ed90 6b02 	vldr	d6, [r0, #8]
d00466a6:	ee07 2a90 	vmov	s15, r2
d00466aa:	ed91 4b44 	vldr	d4, [r1, #272]	; 0x110
d00466ae:	eeb8 7be7 	vcvt.f64.s32	d7, s15
d00466b2:	eea7 6b05 	vfma.f64	d6, d7, d5
d00466b6:	ed91 7b46 	vldr	d7, [r1, #280]	; 0x118
d00466ba:	ee20 5b00 	vmul.f64	d5, d0, d0
d00466be:	eea4 7b00 	vfma.f64	d7, d4, d0
d00466c2:	ed91 4b42 	vldr	d4, [r1, #264]	; 0x108
d00466c6:	ee30 0b06 	vadd.f64	d0, d0, d6
d00466ca:	eea4 7b05 	vfma.f64	d7, d4, d5
d00466ce:	eea5 0b07 	vfma.f64	d0, d5, d7
d00466d2:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d00466d6:	f85d 4b04 	ldr.w	r4, [sp], #4
d00466da:	4770      	bx	lr
d00466dc:	ed9f 0a03 	vldr	s0, [pc, #12]	; d00466ec <logf+0xc8>
d00466e0:	e7f9      	b.n	d00466d6 <logf+0xb2>
d00466e2:	bf00      	nop
d00466e4:	4b000000 	.word	0x4b000000
d00466e8:	d0046eb0 	.word	0xd0046eb0
d00466ec:	00000000 	.word	0x00000000

d00466f0 <sinf_poly>:
d00466f0:	07cb      	lsls	r3, r1, #31
d00466f2:	d412      	bmi.n	d004671a <sinf_poly+0x2a>
d00466f4:	ee21 6b00 	vmul.f64	d6, d1, d0
d00466f8:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d00466fc:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d0046700:	eea5 7b01 	vfma.f64	d7, d5, d1
d0046704:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d0046708:	ee21 1b06 	vmul.f64	d1, d1, d6
d004670c:	eea5 0b06 	vfma.f64	d0, d5, d6
d0046710:	eea7 0b01 	vfma.f64	d0, d7, d1
d0046714:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0046718:	4770      	bx	lr
d004671a:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d004671e:	ee21 6b01 	vmul.f64	d6, d1, d1
d0046722:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d0046726:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d004672a:	eea1 7b05 	vfma.f64	d7, d1, d5
d004672e:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d0046732:	eea1 0b05 	vfma.f64	d0, d1, d5
d0046736:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d004673a:	ee21 1b06 	vmul.f64	d1, d1, d6
d004673e:	eea6 0b05 	vfma.f64	d0, d6, d5
d0046742:	e7e5      	b.n	d0046710 <sinf_poly+0x20>
d0046744:	0000      	movs	r0, r0
	...

d0046748 <sinf>:
d0046748:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
d004674a:	ee10 4a10 	vmov	r4, s0
d004674e:	f3c4 530a 	ubfx	r3, r4, #20, #11
d0046752:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d0046756:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d004675a:	eef0 7a40 	vmov.f32	s15, s0
d004675e:	ea4f 5214 	mov.w	r2, r4, lsr #20
d0046762:	d218      	bcs.n	d0046796 <sinf+0x4e>
d0046764:	ee26 1b06 	vmul.f64	d1, d6, d6
d0046768:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d004676c:	d20a      	bcs.n	d0046784 <sinf+0x3c>
d004676e:	f412 6fff 	tst.w	r2, #2040	; 0x7f8
d0046772:	d103      	bne.n	d004677c <sinf+0x34>
d0046774:	eeb7 1bc1 	vcvt.f32.f64	s2, d1
d0046778:	ed8d 1a01 	vstr	s2, [sp, #4]
d004677c:	eeb0 0a67 	vmov.f32	s0, s15
d0046780:	b003      	add	sp, #12
d0046782:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0046784:	483e      	ldr	r0, [pc, #248]	; (d0046880 <sinf+0x138>)
d0046786:	eeb0 0b46 	vmov.f64	d0, d6
d004678a:	2100      	movs	r1, #0
d004678c:	b003      	add	sp, #12
d004678e:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0046792:	f7ff bfad 	b.w	d00466f0 <sinf_poly>
d0046796:	f240 422e 	movw	r2, #1070	; 0x42e
d004679a:	4293      	cmp	r3, r2
d004679c:	d824      	bhi.n	d00467e8 <sinf+0xa0>
d004679e:	4b38      	ldr	r3, [pc, #224]	; (d0046880 <sinf+0x138>)
d00467a0:	ed93 7b08 	vldr	d7, [r3, #32]
d00467a4:	ee26 7b07 	vmul.f64	d7, d6, d7
d00467a8:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d00467ac:	f103 0070 	add.w	r0, r3, #112	; 0x70
d00467b0:	ee17 1a90 	vmov	r1, s15
d00467b4:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d00467b8:	1609      	asrs	r1, r1, #24
d00467ba:	ee07 1a90 	vmov	s15, r1
d00467be:	f001 0203 	and.w	r2, r1, #3
d00467c2:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d00467c6:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d00467ca:	ed92 0b00 	vldr	d0, [r2]
d00467ce:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d00467d2:	f011 0f02 	tst.w	r1, #2
d00467d6:	eea5 6b47 	vfms.f64	d6, d5, d7
d00467da:	bf08      	it	eq
d00467dc:	4618      	moveq	r0, r3
d00467de:	ee26 1b06 	vmul.f64	d1, d6, d6
d00467e2:	ee20 0b06 	vmul.f64	d0, d0, d6
d00467e6:	e7d1      	b.n	d004678c <sinf+0x44>
d00467e8:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d00467ec:	d23d      	bcs.n	d004686a <sinf+0x122>
d00467ee:	4b25      	ldr	r3, [pc, #148]	; (d0046884 <sinf+0x13c>)
d00467f0:	f3c4 6283 	ubfx	r2, r4, #26, #4
d00467f4:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d00467f8:	f3c4 0116 	ubfx	r1, r4, #0, #23
d00467fc:	6a06      	ldr	r6, [r0, #32]
d00467fe:	6900      	ldr	r0, [r0, #16]
d0046800:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d0046804:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d0046808:	40a9      	lsls	r1, r5
d004680a:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d004680e:	fba1 6706 	umull	r6, r7, r1, r6
d0046812:	fb05 f301 	mul.w	r3, r5, r1
d0046816:	463a      	mov	r2, r7
d0046818:	fbe0 2301 	umlal	r2, r3, r0, r1
d004681c:	1c11      	adds	r1, r2, #0
d004681e:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d0046822:	2000      	movs	r0, #0
d0046824:	1a10      	subs	r0, r2, r0
d0046826:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d004682a:	eb63 0101 	sbc.w	r1, r3, r1
d004682e:	f000 f9b9 	bl	d0046ba4 <__aeabi_l2d>
d0046832:	0fb5      	lsrs	r5, r6, #30
d0046834:	4a12      	ldr	r2, [pc, #72]	; (d0046880 <sinf+0x138>)
d0046836:	eb05 73d4 	add.w	r3, r5, r4, lsr #31
d004683a:	ed9f 0b0f 	vldr	d0, [pc, #60]	; d0046878 <sinf+0x130>
d004683e:	ec41 0b17 	vmov	d7, r0, r1
d0046842:	f003 0103 	and.w	r1, r3, #3
d0046846:	eb02 01c1 	add.w	r1, r2, r1, lsl #3
d004684a:	ee27 0b00 	vmul.f64	d0, d7, d0
d004684e:	ed91 7b00 	vldr	d7, [r1]
d0046852:	ee20 1b00 	vmul.f64	d1, d0, d0
d0046856:	f013 0f02 	tst.w	r3, #2
d004685a:	f102 0070 	add.w	r0, r2, #112	; 0x70
d004685e:	4629      	mov	r1, r5
d0046860:	bf08      	it	eq
d0046862:	4610      	moveq	r0, r2
d0046864:	ee27 0b00 	vmul.f64	d0, d7, d0
d0046868:	e790      	b.n	d004678c <sinf+0x44>
d004686a:	b003      	add	sp, #12
d004686c:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0046870:	f7ff be52 	b.w	d0046518 <__math_invalidf>
d0046874:	f3af 8000 	nop.w
d0046878:	54442d18 	.word	0x54442d18
d004687c:	3c1921fb 	.word	0x3c1921fb
d0046880:	d0047030 	.word	0xd0047030
d0046884:	d0046fd0 	.word	0xd0046fd0

d0046888 <__aeabi_drsub>:
d0046888:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
d004688c:	e002      	b.n	d0046894 <__adddf3>
d004688e:	bf00      	nop

d0046890 <__aeabi_dsub>:
d0046890:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

d0046894 <__adddf3>:
d0046894:	b530      	push	{r4, r5, lr}
d0046896:	ea4f 0441 	mov.w	r4, r1, lsl #1
d004689a:	ea4f 0543 	mov.w	r5, r3, lsl #1
d004689e:	ea94 0f05 	teq	r4, r5
d00468a2:	bf08      	it	eq
d00468a4:	ea90 0f02 	teqeq	r0, r2
d00468a8:	bf1f      	itttt	ne
d00468aa:	ea54 0c00 	orrsne.w	ip, r4, r0
d00468ae:	ea55 0c02 	orrsne.w	ip, r5, r2
d00468b2:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
d00468b6:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d00468ba:	f000 80e2 	beq.w	d0046a82 <__adddf3+0x1ee>
d00468be:	ea4f 5454 	mov.w	r4, r4, lsr #21
d00468c2:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
d00468c6:	bfb8      	it	lt
d00468c8:	426d      	neglt	r5, r5
d00468ca:	dd0c      	ble.n	d00468e6 <__adddf3+0x52>
d00468cc:	442c      	add	r4, r5
d00468ce:	ea80 0202 	eor.w	r2, r0, r2
d00468d2:	ea81 0303 	eor.w	r3, r1, r3
d00468d6:	ea82 0000 	eor.w	r0, r2, r0
d00468da:	ea83 0101 	eor.w	r1, r3, r1
d00468de:	ea80 0202 	eor.w	r2, r0, r2
d00468e2:	ea81 0303 	eor.w	r3, r1, r3
d00468e6:	2d36      	cmp	r5, #54	; 0x36
d00468e8:	bf88      	it	hi
d00468ea:	bd30      	pophi	{r4, r5, pc}
d00468ec:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
d00468f0:	ea4f 3101 	mov.w	r1, r1, lsl #12
d00468f4:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
d00468f8:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
d00468fc:	d002      	beq.n	d0046904 <__adddf3+0x70>
d00468fe:	4240      	negs	r0, r0
d0046900:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d0046904:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
d0046908:	ea4f 3303 	mov.w	r3, r3, lsl #12
d004690c:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
d0046910:	d002      	beq.n	d0046918 <__adddf3+0x84>
d0046912:	4252      	negs	r2, r2
d0046914:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
d0046918:	ea94 0f05 	teq	r4, r5
d004691c:	f000 80a7 	beq.w	d0046a6e <__adddf3+0x1da>
d0046920:	f1a4 0401 	sub.w	r4, r4, #1
d0046924:	f1d5 0e20 	rsbs	lr, r5, #32
d0046928:	db0d      	blt.n	d0046946 <__adddf3+0xb2>
d004692a:	fa02 fc0e 	lsl.w	ip, r2, lr
d004692e:	fa22 f205 	lsr.w	r2, r2, r5
d0046932:	1880      	adds	r0, r0, r2
d0046934:	f141 0100 	adc.w	r1, r1, #0
d0046938:	fa03 f20e 	lsl.w	r2, r3, lr
d004693c:	1880      	adds	r0, r0, r2
d004693e:	fa43 f305 	asr.w	r3, r3, r5
d0046942:	4159      	adcs	r1, r3
d0046944:	e00e      	b.n	d0046964 <__adddf3+0xd0>
d0046946:	f1a5 0520 	sub.w	r5, r5, #32
d004694a:	f10e 0e20 	add.w	lr, lr, #32
d004694e:	2a01      	cmp	r2, #1
d0046950:	fa03 fc0e 	lsl.w	ip, r3, lr
d0046954:	bf28      	it	cs
d0046956:	f04c 0c02 	orrcs.w	ip, ip, #2
d004695a:	fa43 f305 	asr.w	r3, r3, r5
d004695e:	18c0      	adds	r0, r0, r3
d0046960:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
d0046964:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d0046968:	d507      	bpl.n	d004697a <__adddf3+0xe6>
d004696a:	f04f 0e00 	mov.w	lr, #0
d004696e:	f1dc 0c00 	rsbs	ip, ip, #0
d0046972:	eb7e 0000 	sbcs.w	r0, lr, r0
d0046976:	eb6e 0101 	sbc.w	r1, lr, r1
d004697a:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
d004697e:	d31b      	bcc.n	d00469b8 <__adddf3+0x124>
d0046980:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
d0046984:	d30c      	bcc.n	d00469a0 <__adddf3+0x10c>
d0046986:	0849      	lsrs	r1, r1, #1
d0046988:	ea5f 0030 	movs.w	r0, r0, rrx
d004698c:	ea4f 0c3c 	mov.w	ip, ip, rrx
d0046990:	f104 0401 	add.w	r4, r4, #1
d0046994:	ea4f 5244 	mov.w	r2, r4, lsl #21
d0046998:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
d004699c:	f080 809a 	bcs.w	d0046ad4 <__adddf3+0x240>
d00469a0:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
d00469a4:	bf08      	it	eq
d00469a6:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
d00469aa:	f150 0000 	adcs.w	r0, r0, #0
d00469ae:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
d00469b2:	ea41 0105 	orr.w	r1, r1, r5
d00469b6:	bd30      	pop	{r4, r5, pc}
d00469b8:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
d00469bc:	4140      	adcs	r0, r0
d00469be:	eb41 0101 	adc.w	r1, r1, r1
d00469c2:	3c01      	subs	r4, #1
d00469c4:	bf28      	it	cs
d00469c6:	f5b1 1f80 	cmpcs.w	r1, #1048576	; 0x100000
d00469ca:	d2e9      	bcs.n	d00469a0 <__adddf3+0x10c>
d00469cc:	f091 0f00 	teq	r1, #0
d00469d0:	bf04      	itt	eq
d00469d2:	4601      	moveq	r1, r0
d00469d4:	2000      	moveq	r0, #0
d00469d6:	fab1 f381 	clz	r3, r1
d00469da:	bf08      	it	eq
d00469dc:	3320      	addeq	r3, #32
d00469de:	f1a3 030b 	sub.w	r3, r3, #11
d00469e2:	f1b3 0220 	subs.w	r2, r3, #32
d00469e6:	da0c      	bge.n	d0046a02 <__adddf3+0x16e>
d00469e8:	320c      	adds	r2, #12
d00469ea:	dd08      	ble.n	d00469fe <__adddf3+0x16a>
d00469ec:	f102 0c14 	add.w	ip, r2, #20
d00469f0:	f1c2 020c 	rsb	r2, r2, #12
d00469f4:	fa01 f00c 	lsl.w	r0, r1, ip
d00469f8:	fa21 f102 	lsr.w	r1, r1, r2
d00469fc:	e00c      	b.n	d0046a18 <__adddf3+0x184>
d00469fe:	f102 0214 	add.w	r2, r2, #20
d0046a02:	bfd8      	it	le
d0046a04:	f1c2 0c20 	rsble	ip, r2, #32
d0046a08:	fa01 f102 	lsl.w	r1, r1, r2
d0046a0c:	fa20 fc0c 	lsr.w	ip, r0, ip
d0046a10:	bfdc      	itt	le
d0046a12:	ea41 010c 	orrle.w	r1, r1, ip
d0046a16:	4090      	lslle	r0, r2
d0046a18:	1ae4      	subs	r4, r4, r3
d0046a1a:	bfa2      	ittt	ge
d0046a1c:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
d0046a20:	4329      	orrge	r1, r5
d0046a22:	bd30      	popge	{r4, r5, pc}
d0046a24:	ea6f 0404 	mvn.w	r4, r4
d0046a28:	3c1f      	subs	r4, #31
d0046a2a:	da1c      	bge.n	d0046a66 <__adddf3+0x1d2>
d0046a2c:	340c      	adds	r4, #12
d0046a2e:	dc0e      	bgt.n	d0046a4e <__adddf3+0x1ba>
d0046a30:	f104 0414 	add.w	r4, r4, #20
d0046a34:	f1c4 0220 	rsb	r2, r4, #32
d0046a38:	fa20 f004 	lsr.w	r0, r0, r4
d0046a3c:	fa01 f302 	lsl.w	r3, r1, r2
d0046a40:	ea40 0003 	orr.w	r0, r0, r3
d0046a44:	fa21 f304 	lsr.w	r3, r1, r4
d0046a48:	ea45 0103 	orr.w	r1, r5, r3
d0046a4c:	bd30      	pop	{r4, r5, pc}
d0046a4e:	f1c4 040c 	rsb	r4, r4, #12
d0046a52:	f1c4 0220 	rsb	r2, r4, #32
d0046a56:	fa20 f002 	lsr.w	r0, r0, r2
d0046a5a:	fa01 f304 	lsl.w	r3, r1, r4
d0046a5e:	ea40 0003 	orr.w	r0, r0, r3
d0046a62:	4629      	mov	r1, r5
d0046a64:	bd30      	pop	{r4, r5, pc}
d0046a66:	fa21 f004 	lsr.w	r0, r1, r4
d0046a6a:	4629      	mov	r1, r5
d0046a6c:	bd30      	pop	{r4, r5, pc}
d0046a6e:	f094 0f00 	teq	r4, #0
d0046a72:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
d0046a76:	bf06      	itte	eq
d0046a78:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
d0046a7c:	3401      	addeq	r4, #1
d0046a7e:	3d01      	subne	r5, #1
d0046a80:	e74e      	b.n	d0046920 <__adddf3+0x8c>
d0046a82:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d0046a86:	bf18      	it	ne
d0046a88:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d0046a8c:	d029      	beq.n	d0046ae2 <__adddf3+0x24e>
d0046a8e:	ea94 0f05 	teq	r4, r5
d0046a92:	bf08      	it	eq
d0046a94:	ea90 0f02 	teqeq	r0, r2
d0046a98:	d005      	beq.n	d0046aa6 <__adddf3+0x212>
d0046a9a:	ea54 0c00 	orrs.w	ip, r4, r0
d0046a9e:	bf04      	itt	eq
d0046aa0:	4619      	moveq	r1, r3
d0046aa2:	4610      	moveq	r0, r2
d0046aa4:	bd30      	pop	{r4, r5, pc}
d0046aa6:	ea91 0f03 	teq	r1, r3
d0046aaa:	bf1e      	ittt	ne
d0046aac:	2100      	movne	r1, #0
d0046aae:	2000      	movne	r0, #0
d0046ab0:	bd30      	popne	{r4, r5, pc}
d0046ab2:	ea5f 5c54 	movs.w	ip, r4, lsr #21
d0046ab6:	d105      	bne.n	d0046ac4 <__adddf3+0x230>
d0046ab8:	0040      	lsls	r0, r0, #1
d0046aba:	4149      	adcs	r1, r1
d0046abc:	bf28      	it	cs
d0046abe:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
d0046ac2:	bd30      	pop	{r4, r5, pc}
d0046ac4:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
d0046ac8:	bf3c      	itt	cc
d0046aca:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
d0046ace:	bd30      	popcc	{r4, r5, pc}
d0046ad0:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d0046ad4:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
d0046ad8:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
d0046adc:	f04f 0000 	mov.w	r0, #0
d0046ae0:	bd30      	pop	{r4, r5, pc}
d0046ae2:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d0046ae6:	bf1a      	itte	ne
d0046ae8:	4619      	movne	r1, r3
d0046aea:	4610      	movne	r0, r2
d0046aec:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
d0046af0:	bf1c      	itt	ne
d0046af2:	460b      	movne	r3, r1
d0046af4:	4602      	movne	r2, r0
d0046af6:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
d0046afa:	bf06      	itte	eq
d0046afc:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
d0046b00:	ea91 0f03 	teqeq	r1, r3
d0046b04:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
d0046b08:	bd30      	pop	{r4, r5, pc}
d0046b0a:	bf00      	nop

d0046b0c <__aeabi_ui2d>:
d0046b0c:	f090 0f00 	teq	r0, #0
d0046b10:	bf04      	itt	eq
d0046b12:	2100      	moveq	r1, #0
d0046b14:	4770      	bxeq	lr
d0046b16:	b530      	push	{r4, r5, lr}
d0046b18:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0046b1c:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0046b20:	f04f 0500 	mov.w	r5, #0
d0046b24:	f04f 0100 	mov.w	r1, #0
d0046b28:	e750      	b.n	d00469cc <__adddf3+0x138>
d0046b2a:	bf00      	nop

d0046b2c <__aeabi_i2d>:
d0046b2c:	f090 0f00 	teq	r0, #0
d0046b30:	bf04      	itt	eq
d0046b32:	2100      	moveq	r1, #0
d0046b34:	4770      	bxeq	lr
d0046b36:	b530      	push	{r4, r5, lr}
d0046b38:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0046b3c:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0046b40:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
d0046b44:	bf48      	it	mi
d0046b46:	4240      	negmi	r0, r0
d0046b48:	f04f 0100 	mov.w	r1, #0
d0046b4c:	e73e      	b.n	d00469cc <__adddf3+0x138>
d0046b4e:	bf00      	nop

d0046b50 <__aeabi_f2d>:
d0046b50:	0042      	lsls	r2, r0, #1
d0046b52:	ea4f 01e2 	mov.w	r1, r2, asr #3
d0046b56:	ea4f 0131 	mov.w	r1, r1, rrx
d0046b5a:	ea4f 7002 	mov.w	r0, r2, lsl #28
d0046b5e:	bf1f      	itttt	ne
d0046b60:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
d0046b64:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
d0046b68:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
d0046b6c:	4770      	bxne	lr
d0046b6e:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
d0046b72:	bf08      	it	eq
d0046b74:	4770      	bxeq	lr
d0046b76:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
d0046b7a:	bf04      	itt	eq
d0046b7c:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
d0046b80:	4770      	bxeq	lr
d0046b82:	b530      	push	{r4, r5, lr}
d0046b84:	f44f 7460 	mov.w	r4, #896	; 0x380
d0046b88:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d0046b8c:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
d0046b90:	e71c      	b.n	d00469cc <__adddf3+0x138>
d0046b92:	bf00      	nop

d0046b94 <__aeabi_ul2d>:
d0046b94:	ea50 0201 	orrs.w	r2, r0, r1
d0046b98:	bf08      	it	eq
d0046b9a:	4770      	bxeq	lr
d0046b9c:	b530      	push	{r4, r5, lr}
d0046b9e:	f04f 0500 	mov.w	r5, #0
d0046ba2:	e00a      	b.n	d0046bba <__aeabi_l2d+0x16>

d0046ba4 <__aeabi_l2d>:
d0046ba4:	ea50 0201 	orrs.w	r2, r0, r1
d0046ba8:	bf08      	it	eq
d0046baa:	4770      	bxeq	lr
d0046bac:	b530      	push	{r4, r5, lr}
d0046bae:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
d0046bb2:	d502      	bpl.n	d0046bba <__aeabi_l2d+0x16>
d0046bb4:	4240      	negs	r0, r0
d0046bb6:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d0046bba:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0046bbe:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0046bc2:	ea5f 5c91 	movs.w	ip, r1, lsr #22
d0046bc6:	f43f aed8 	beq.w	d004697a <__adddf3+0xe6>
d0046bca:	f04f 0203 	mov.w	r2, #3
d0046bce:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d0046bd2:	bf18      	it	ne
d0046bd4:	3203      	addne	r2, #3
d0046bd6:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d0046bda:	bf18      	it	ne
d0046bdc:	3203      	addne	r2, #3
d0046bde:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
d0046be2:	f1c2 0320 	rsb	r3, r2, #32
d0046be6:	fa00 fc03 	lsl.w	ip, r0, r3
d0046bea:	fa20 f002 	lsr.w	r0, r0, r2
d0046bee:	fa01 fe03 	lsl.w	lr, r1, r3
d0046bf2:	ea40 000e 	orr.w	r0, r0, lr
d0046bf6:	fa21 f102 	lsr.w	r1, r1, r2
d0046bfa:	4414      	add	r4, r2
d0046bfc:	e6bd      	b.n	d004697a <__adddf3+0xe6>
d0046bfe:	bf00      	nop

d0046c00 <bayer4x4>:
d0046c00:	0800 0a02 040c 060e 0b03 0901 070f 050d     ................
d0046c10:	7369 616c 646e 2e78 6273 6433 0000 0000     islandx.sb3d....
d0046c20:	6163 7272 6569 2e72 6273 6433 0000 0000     carrier.sb3d....
d0046c30:	16e3 ff55 ffff ffff 0000 ffff ff00 ff00     ..U.............
d0046c40:	00ff ff00 ff00 ffff 00ff ffff ffff ff00     ................
d0046c50:	8080 ff80 8000 ffff 00ff ff80 80ff ff00     ................
d0046c60:	ff00 ff80 0080 ffff ff80 ff00 c0c0 ffc0     ................
d0046c70:	0000 3f80 0000 3f40 cccd 3f0c 3333 3eb3     ...?..@?...?33.>
d0046c80:	cccd 3e4c 0000 bf80 0000 bf00 999a 3e99     ..L>...........>
	...
d0046cb8:	0000 3f80 0000 0000 0000 0000 0000 0000     ...?............
d0046cc8:	0000 3f80 0000 0000 0000 0000 0000 0000     ...?............
d0046cd8:	0000 3f80 12c5 3a83 d70a 3c23 0000 447a     ...?...:..#<..zD
	...

d0046d00 <__sf_fake_stderr>:
	...

d0046d20 <__sf_fake_stdin>:
	...

d0046d40 <__sf_fake_stdout>:
	...

d0046d60 <_global_impure_ptr>:
d0046d60:	751c d004 0000 0000                         .u......

d0046d68 <__exp2f_data>:
d0046d68:	0000 0000 0000 3ff0 8574 d315 d9b0 3fef     .......?t......?
d0046d78:	890f 6cf9 b558 3fef 5b51 d012 9301 3fef     ...lX..?Q[.....?
d0046d88:	517b 3c7d 72b8 3fef b9aa 3168 5487 3fef     {Q}<.r.?..h1.T.?
d0046d98:	6238 6e75 387a 3fef dee1 f51f 1e9d 3fef     8bunz8.?.......?
d0046da8:	b715 0a31 06fe 3fef a9cb 373a f1a7 3fee     ..1....?..:7...?
d0046db8:	3422 4c12 dea6 3fee 892d 6061 ce08 3fee     "4.L...?-.a`...?
d0046dc8:	2a27 d536 bfda 3fee 4f82 569d b42b 3fee     '*6....?.O.V+..?
d0046dd8:	5429 dd48 ab07 3fee 5585 b03a a47e 3fee     )TH....?.U:.~..?
d0046de8:	3bcd 667f a09e 3fee 5f74 e8ec 9f75 3fee     .;.f...?t_..u..?
d0046df8:	0187 73eb a114 3fee ce13 994c a589 3fee     ...s...?..L....?
d0046e08:	a0db 422a ace5 3fee c5e5 b0cd b737 3fee     ..*B...?....7..?
d0046e18:	f090 82a3 c491 3fee 255d b23e d503 3fee     .......?]%>....?
d0046e28:	d3ad 995a e89f 3fee 5e47 f2fb ff76 3fee     ..Z....?G^..v..?
d0046e38:	529c dd85 199b 3fef 9069 dcef 3720 3fef     .R.....?i... 7.?
d0046e48:	a487 dcfb 5818 3fef 9b5f 337b 7c97 3fef     .....X.?_.{3.|.?
d0046e58:	90da a2a4 a4af 3fef 4540 5b6e d076 3fef     .......?@En[v..?
d0046e68:	0000 0000 0000 42e8 2394 4b91 6af8 3fac     .......B.#.K.j.?
d0046e78:	c4f3 50fa bfce 3fce 52d6 ff0c 2e42 3fe6     ...P...?.R..B..?
d0046e88:	0000 0000 0000 4338 82fe 652b 1547 4047     ......8C..+eG.G@
d0046e98:	2394 4b91 6af8 3ebc c4f3 50fa bfce 3f2e     .#.K.j.>...P...?
d0046ea8:	52d6 ff0c 2e42 3f96                         .R..B..?

d0046eb0 <__logf_data>:
d0046eb0:	f3be 79f8 61ec 3ff6 aade 808c 7bf7 bfd5     ...y.a.?.....{..
d0046ec0:	883d 4aaf 71ed 3ff5 6ddb a7c0 bef0 bfd2     =..J.q.?.m......
d0046ed0:	10b0 f0f0 9539 3ff4 3a67 7f51 1eae bfd0     ....9..?g:Q.....
d0046ee0:	0385 b0b8 c995 3ff3 24e9 a682 31d8 bfcb     .......?.$...1..
d0046ef0:	64a5 0c88 0d19 3ff3 7758 0ac0 574f bfc6     .d.....?Xw..OW..
d0046f00:	8ea0 7b0b 5e22 3ff2 8100 c79c aa2b bfc1     ...{"^.?....+...
d0046f10:	343f 4a1a bb4a 3ff1 0e5e ce8c 4e76 bfba     ?4.JJ..?^...vN..
d0046f20:	e5ba f08a 2358 3ff1 1ccc 5a61 973c bfb1     ....X#.?..aZ<...
d0046f30:	00a7 4199 953f 3ff0 0c1e 38e1 52f4 bfa2     ...A?..?...8.R..
d0046f40:	0000 0000 0000 3ff0 0000 0000 0000 0000     .......?........
d0046f50:	47ac fd9a 608c 3fee 5984 5df2 a5aa 3faa     .G...`.?.Y.]...?
d0046f60:	6aa0 1f02 a4b3 3fec 2eb4 aa36 5e53 3fbc     .j.....?..6.S^.?
d0046f70:	fce6 576a 2036 3feb db08 7720 26e5 3fc5     ..jW6 .?.. w.&.?
d0046f80:	aa2d 63a1 c2d1 3fe9 4770 0d22 c286 3fcb     -..c...?pG"....?
d0046f90:	41ed 0378 86e6 3fe8 7ee1 c8a0 058b 3fd1     .Ax....?.~.....?
d0046fa0:	4862 f553 67dc 3fe7 ee09 57b6 0430 3fd4     bHS..g.?...W0..?
d0046fb0:	39ef fefa 2e42 3fe6 8334 48b8 0ea3 bfd0     .9..B..?4..H....
d0046fc0:	0b6a 0be0 575b 3fd5 4123 f20a fffe bfdf     j...[W.?#A......

d0046fd0 <__inv_pio4>:
d0046fd0:	00a2 0000 a2f9 0000 f983 00a2 836e a2f9     ............n...
d0046fe0:	6e4e f983 4e44 836e 4415 6e4e 1529 4e44     Nn..DNn..DNn).DN
d0046ff0:	29fc 4415 fc27 1529 2757 29fc 57d1 fc27     .).D'.).W'.).W'.
d0047000:	d1f5 2757 f534 57d1 34dd d1f5 ddc0 f534     ..W'4..W.4....4.
d0047010:	c0db 34dd db62 ddc0 6295 c0db 9599 db62     ...4b....b....b.
d0047020:	993c 6295 3c43 9599 4390 993c 9041 3c43     <..bC<...C<.A.C<

d0047030 <__sincosf_table>:
d0047030:	0000 0000 0000 3ff0 0000 0000 0000 bff0     .......?........
d0047040:	0000 0000 0000 bff0 0000 0000 0000 3ff0     ...............?
d0047050:	c883 6dc9 5f30 4164 2d18 5444 21fb 3ff9     ...m0_dA.-DT.!.?
d0047060:	0000 0000 0000 3ff0 621c fd0c ffff bfdf     .......?.b......
d0047070:	8f19 e106 5553 3fa5 359d e89a c087 bf56     ....SU.?.5....V.
d0047080:	f8c3 027b 9343 3ef9 a603 5995 5554 bfc5     ..{.C..>...YTU..
d0047090:	0bc4 0523 1076 3f81 cf24 3774 94eb bf29     ..#.v..?$.t7..).
d00470a0:	0000 0000 0000 3ff0 0000 0000 0000 bff0     .......?........
d00470b0:	0000 0000 0000 bff0 0000 0000 0000 3ff0     ...............?
d00470c0:	c883 6dc9 5f30 4164 2d18 5444 21fb 3ff9     ...m0_dA.-DT.!.?
d00470d0:	0000 0000 0000 bff0 621c fd0c ffff 3fdf     .........b.....?
d00470e0:	8f19 e106 5553 bfa5 359d e89a c087 3f56     ....SU...5....V?
d00470f0:	f8c3 027b 9343 bef9 a603 5995 5554 bfc5     ..{.C......YTU..
d0047100:	0bc4 0523 1076 3f81 cf24 3774 94eb bf29     ..#.v..?$.t7..).

Disassembly of section .init:

d0047110 <_init>:
d0047110:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0047112:	bf00      	nop

Disassembly of section .fini:

d0047114 <_fini>:
d0047114:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0047116:	bf00      	nop
