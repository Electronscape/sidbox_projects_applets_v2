
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
d004001e:	f006 fed3 	bl	d0046dc8 <setbuf>
d0040022:	6833      	ldr	r3, [r6, #0]
d0040024:	2100      	movs	r1, #0
d0040026:	68d8      	ldr	r0, [r3, #12]
d0040028:	f006 fece 	bl	d0046dc8 <setbuf>
d004002c:	4629      	mov	r1, r5
d004002e:	4620      	mov	r0, r4
d0040030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0040034:	f000 baae 	b.w	d0040594 <main>
d0040038:	d00482a0 	.word	0xd00482a0

d004003c <initMalloc>:
d004003c:	4902      	ldr	r1, [pc, #8]	; (d0040048 <initMalloc+0xc>)
d004003e:	4b03      	ldr	r3, [pc, #12]	; (d004004c <initMalloc+0x10>)
d0040040:	4a03      	ldr	r2, [pc, #12]	; (d0040050 <initMalloc+0x14>)
d0040042:	1a5b      	subs	r3, r3, r1
d0040044:	6013      	str	r3, [r2, #0]
d0040046:	4770      	bx	lr
d0040048:	d0135a90 	.word	0xd0135a90
d004004c:	d0600000 	.word	0xd0600000
d0040050:	d012d9c8 	.word	0xd012d9c8

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
d004009c:	f006 fb6a 	bl	d0046774 <__errno>
d00400a0:	2209      	movs	r2, #9
d00400a2:	4603      	mov	r3, r0
d00400a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00400a8:	601a      	str	r2, [r3, #0]
d00400aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00400ac:	d0048324 	.word	0xd0048324
d00400b0:	2001f000 	.word	0x2001f000

d00400b4 <_read>:
d00400b4:	b508      	push	{r3, lr}
d00400b6:	f006 fb5d 	bl	d0046774 <__errno>
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
d0040102:	f006 fb37 	bl	d0046774 <__errno>
d0040106:	220c      	movs	r2, #12
d0040108:	4603      	mov	r3, r0
d004010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004010e:	601a      	str	r2, [r3, #0]
d0040110:	bd10      	pop	{r4, pc}
d0040112:	bf00      	nop
d0040114:	d0048320 	.word	0xd0048320
d0040118:	d0135a90 	.word	0xd0135a90
d004011c:	d0600000 	.word	0xd0600000

d0040120 <initSystem>:
d0040120:	b570      	push	{r4, r5, r6, lr}
d0040122:	4c48      	ldr	r4, [pc, #288]	; (d0040244 <initSystem+0x124>)
d0040124:	b082      	sub	sp, #8
d0040126:	f44f 2080 	mov.w	r0, #262144	; 0x40000
d004012a:	2600      	movs	r6, #0
d004012c:	7823      	ldrb	r3, [r4, #0]
d004012e:	7862      	ldrb	r2, [r4, #1]
d0040130:	78a1      	ldrb	r1, [r4, #2]
d0040132:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040136:	78e2      	ldrb	r2, [r4, #3]
d0040138:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004013c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040140:	681b      	ldr	r3, [r3, #0]
d0040142:	4798      	blx	r3
d0040144:	f7ff ff7a 	bl	d004003c <initMalloc>
d0040148:	7b23      	ldrb	r3, [r4, #12]
d004014a:	7b62      	ldrb	r2, [r4, #13]
d004014c:	2190      	movs	r1, #144	; 0x90
d004014e:	7ba5      	ldrb	r5, [r4, #14]
d0040150:	20dc      	movs	r0, #220	; 0xdc
d0040152:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040156:	7be2      	ldrb	r2, [r4, #15]
d0040158:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004015c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040160:	681b      	ldr	r3, [r3, #0]
d0040162:	691b      	ldr	r3, [r3, #16]
d0040164:	4798      	blx	r3
d0040166:	7b23      	ldrb	r3, [r4, #12]
d0040168:	7b62      	ldrb	r2, [r4, #13]
d004016a:	2000      	movs	r0, #0
d004016c:	7ba1      	ldrb	r1, [r4, #14]
d004016e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040172:	7be2      	ldrb	r2, [r4, #15]
d0040174:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040178:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004017c:	681b      	ldr	r3, [r3, #0]
d004017e:	689b      	ldr	r3, [r3, #8]
d0040180:	4798      	blx	r3
d0040182:	7b25      	ldrb	r5, [r4, #12]
d0040184:	7b62      	ldrb	r2, [r4, #13]
d0040186:	f44f 73a0 	mov.w	r3, #320	; 0x140
d004018a:	7ba1      	ldrb	r1, [r4, #14]
d004018c:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d0040190:	7be0      	ldrb	r0, [r4, #15]
d0040192:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0040196:	ea45 4501 	orr.w	r5, r5, r1, lsl #16
d004019a:	4619      	mov	r1, r3
d004019c:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d00401a0:	4610      	mov	r0, r2
d00401a2:	682d      	ldr	r5, [r5, #0]
d00401a4:	9600      	str	r6, [sp, #0]
d00401a6:	696d      	ldr	r5, [r5, #20]
d00401a8:	47a8      	blx	r5
d00401aa:	7c23      	ldrb	r3, [r4, #16]
d00401ac:	7c62      	ldrb	r2, [r4, #17]
d00401ae:	f44f 7000 	mov.w	r0, #512	; 0x200
d00401b2:	7ca1      	ldrb	r1, [r4, #18]
d00401b4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00401b8:	7ce2      	ldrb	r2, [r4, #19]
d00401ba:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00401be:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00401c2:	681b      	ldr	r3, [r3, #0]
d00401c4:	681b      	ldr	r3, [r3, #0]
d00401c6:	4798      	blx	r3
d00401c8:	7c22      	ldrb	r2, [r4, #16]
d00401ca:	7c63      	ldrb	r3, [r4, #17]
d00401cc:	2101      	movs	r1, #1
d00401ce:	7ca5      	ldrb	r5, [r4, #18]
d00401d0:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d00401d4:	7ce0      	ldrb	r0, [r4, #19]
d00401d6:	7b23      	ldrb	r3, [r4, #12]
d00401d8:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
d00401dc:	7b66      	ldrb	r6, [r4, #13]
d00401de:	7ba5      	ldrb	r5, [r4, #14]
d00401e0:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d00401e4:	7be0      	ldrb	r0, [r4, #15]
d00401e6:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d00401ea:	6812      	ldr	r2, [r2, #0]
d00401ec:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00401f0:	6852      	ldr	r2, [r2, #4]
d00401f2:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d00401f6:	7011      	strb	r1, [r2, #0]
d00401f8:	681b      	ldr	r3, [r3, #0]
d00401fa:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d00401fc:	4798      	blx	r3
d00401fe:	7b23      	ldrb	r3, [r4, #12]
d0040200:	7b62      	ldrb	r2, [r4, #13]
d0040202:	7ba5      	ldrb	r5, [r4, #14]
d0040204:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040208:	7be2      	ldrb	r2, [r4, #15]
d004020a:	490f      	ldr	r1, [pc, #60]	; (d0040248 <initSystem+0x128>)
d004020c:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040210:	6008      	str	r0, [r1, #0]
d0040212:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040216:	681b      	ldr	r3, [r3, #0]
d0040218:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d004021a:	4798      	blx	r3
d004021c:	7b23      	ldrb	r3, [r4, #12]
d004021e:	7b62      	ldrb	r2, [r4, #13]
d0040220:	4605      	mov	r5, r0
d0040222:	7ba6      	ldrb	r6, [r4, #14]
d0040224:	2064      	movs	r0, #100	; 0x64
d0040226:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004022a:	7be2      	ldrb	r2, [r4, #15]
d004022c:	4907      	ldr	r1, [pc, #28]	; (d004024c <initSystem+0x12c>)
d004022e:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0040232:	600d      	str	r5, [r1, #0]
d0040234:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040238:	681b      	ldr	r3, [r3, #0]
d004023a:	689b      	ldr	r3, [r3, #8]
d004023c:	b002      	add	sp, #8
d004023e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0040242:	4718      	bx	r3
d0040244:	2001f000 	.word	0x2001f000
d0040248:	d012da60 	.word	0xd012da60
d004024c:	d012da40 	.word	0xd012da40

d0040250 <weatherLightning>:
d0040250:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0040254:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040258:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004025c:	4605      	mov	r5, r0
d004025e:	d930      	bls.n	d00402c2 <weatherLightning+0x72>
d0040260:	eddf 7ab6 	vldr	s15, [pc, #728]	; d004053c <weatherLightning+0x2ec>
d0040264:	fe80 0a67 	vminnm.f32	s0, s0, s15
d0040268:	4eb5      	ldr	r6, [pc, #724]	; (d0040540 <weatherLightning+0x2f0>)
d004026a:	4fb6      	ldr	r7, [pc, #728]	; (d0040544 <weatherLightning+0x2f4>)
d004026c:	6833      	ldr	r3, [r6, #0]
d004026e:	683a      	ldr	r2, [r7, #0]
d0040270:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d0040274:	2a01      	cmp	r2, #1
d0040276:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d004027a:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d004027e:	6033      	str	r3, [r6, #0]
d0040280:	d022      	beq.n	d00402c8 <weatherLightning+0x78>
d0040282:	2a02      	cmp	r2, #2
d0040284:	f000 8087 	beq.w	d0040396 <weatherLightning+0x146>
d0040288:	4caf      	ldr	r4, [pc, #700]	; (d0040548 <weatherLightning+0x2f8>)
d004028a:	2100      	movs	r1, #0
d004028c:	b2e8      	uxtb	r0, r5
d004028e:	edd4 7a00 	vldr	s15, [r4]
d0040292:	ee37 0ac0 	vsub.f32	s0, s15, s0
d0040296:	ed84 0a00 	vstr	s0, [r4]
d004029a:	f004 fa2d 	bl	d00446f8 <lightEnable>
d004029e:	4628      	mov	r0, r5
d00402a0:	ed9f 0aaa 	vldr	s0, [pc, #680]	; d004054c <weatherLightning+0x2fc>
d00402a4:	f004 fabe 	bl	d0044824 <lightSetIntensity>
d00402a8:	edd4 7a00 	vldr	s15, [r4]
d00402ac:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d00402b0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00402b4:	f240 80d6 	bls.w	d0040464 <weatherLightning+0x214>
d00402b8:	f04f 0800 	mov.w	r8, #0
d00402bc:	4640      	mov	r0, r8
d00402be:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00402c2:	ed9f 0aa3 	vldr	s0, [pc, #652]	; d0040550 <weatherLightning+0x300>
d00402c6:	e7cf      	b.n	d0040268 <weatherLightning+0x18>
d00402c8:	4aa2      	ldr	r2, [pc, #648]	; (d0040554 <weatherLightning+0x304>)
d00402ca:	eef2 6a04 	vmov.f32	s13, #36	; 0x41200000  10.0
d00402ce:	f8df a2b4 	ldr.w	sl, [pc, #692]	; d0040584 <weatherLightning+0x334>
d00402d2:	ed92 7a00 	vldr	s14, [r2]
d00402d6:	2200      	movs	r2, #0
d00402d8:	edda 7a00 	vldr	s15, [sl]
d00402dc:	ee66 6ac7 	vnmul.f32	s13, s13, s14
d00402e0:	f8df 9284 	ldr.w	r9, [pc, #644]	; d0040568 <weatherLightning+0x318>
d00402e4:	ed99 7a00 	vldr	s14, [r9]
d00402e8:	eee6 7a80 	vfma.f32	s15, s13, s0
d00402ec:	ee37 0a40 	vsub.f32	s0, s14, s0
d00402f0:	ed89 0a00 	vstr	s0, [r9]
d00402f4:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d00402f8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00402fc:	f100 80ad 	bmi.w	d004045a <weatherLightning+0x20a>
d0040300:	bfcc      	ite	gt
d0040302:	f04f 0801 	movgt.w	r8, #1
d0040306:	f04f 0800 	movle.w	r8, #0
d004030a:	edca 7a00 	vstr	s15, [sl]
d004030e:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d0040312:	2101      	movs	r1, #1
d0040314:	fa5f fb85 	uxtb.w	fp, r5
d0040318:	ea83 4453 	eor.w	r4, r3, r3, lsr #17
d004031c:	4658      	mov	r0, fp
d004031e:	ea84 1444 	eor.w	r4, r4, r4, lsl #5
d0040322:	6034      	str	r4, [r6, #0]
d0040324:	b2e4      	uxtb	r4, r4
d0040326:	f004 f9e7 	bl	d00446f8 <lightEnable>
d004032a:	ed9f 7a8b 	vldr	s14, [pc, #556]	; d0040558 <weatherLightning+0x308>
d004032e:	ee07 4a90 	vmov	s15, r4
d0040332:	ed9a 0a00 	vldr	s0, [sl]
d0040336:	4628      	mov	r0, r5
d0040338:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004033c:	eea7 0a87 	vfma.f32	s0, s15, s14
d0040340:	f004 fa70 	bl	d0044824 <lightSetIntensity>
d0040344:	edd9 7a00 	vldr	s15, [r9]
d0040348:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d004034c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040350:	d8b4      	bhi.n	d00402bc <weatherLightning+0x6c>
d0040352:	4a82      	ldr	r2, [pc, #520]	; (d004055c <weatherLightning+0x30c>)
d0040354:	6813      	ldr	r3, [r2, #0]
d0040356:	3b01      	subs	r3, #1
d0040358:	2b00      	cmp	r3, #0
d004035a:	6013      	str	r3, [r2, #0]
d004035c:	6833      	ldr	r3, [r6, #0]
d004035e:	f340 80ca 	ble.w	d00404f6 <weatherLightning+0x2a6>
d0040362:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d0040366:	2202      	movs	r2, #2
d0040368:	eddf 6a7d 	vldr	s13, [pc, #500]	; d0040560 <weatherLightning+0x310>
d004036c:	4640      	mov	r0, r8
d004036e:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0040372:	603a      	str	r2, [r7, #0]
d0040374:	eddf 7a7b 	vldr	s15, [pc, #492]	; d0040564 <weatherLightning+0x314>
d0040378:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d004037c:	f3c3 0209 	ubfx	r2, r3, #0, #10
d0040380:	6033      	str	r3, [r6, #0]
d0040382:	ee07 2a10 	vmov	s14, r2
d0040386:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004038a:	eee7 7a26 	vfma.f32	s15, s14, s13
d004038e:	edc9 7a00 	vstr	s15, [r9]
d0040392:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040396:	4c74      	ldr	r4, [pc, #464]	; (d0040568 <weatherLightning+0x318>)
d0040398:	2100      	movs	r1, #0
d004039a:	b2e8      	uxtb	r0, r5
d004039c:	edd4 7a00 	vldr	s15, [r4]
d00403a0:	ee37 0ac0 	vsub.f32	s0, s15, s0
d00403a4:	ed84 0a00 	vstr	s0, [r4]
d00403a8:	f004 f9a6 	bl	d00446f8 <lightEnable>
d00403ac:	4628      	mov	r0, r5
d00403ae:	ed9f 0a67 	vldr	s0, [pc, #412]	; d004054c <weatherLightning+0x2fc>
d00403b2:	f004 fa37 	bl	d0044824 <lightSetIntensity>
d00403b6:	edd4 7a00 	vldr	s15, [r4]
d00403ba:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d00403be:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00403c2:	f63f af79 	bhi.w	d00402b8 <weatherLightning+0x68>
d00403c6:	6833      	ldr	r3, [r6, #0]
d00403c8:	2201      	movs	r2, #1
d00403ca:	eddf 4a68 	vldr	s9, [pc, #416]	; d004056c <weatherLightning+0x31c>
d00403ce:	f04f 0800 	mov.w	r8, #0
d00403d2:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d00403d6:	603a      	str	r2, [r7, #0]
d00403d8:	ed9f 7a65 	vldr	s14, [pc, #404]	; d0040570 <weatherLightning+0x320>
d00403dc:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d00403e0:	ed9f 5a64 	vldr	s10, [pc, #400]	; d0040574 <weatherLightning+0x324>
d00403e4:	ed9f 6a64 	vldr	s12, [pc, #400]	; d0040578 <weatherLightning+0x328>
d00403e8:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d00403ec:	eddf 5a63 	vldr	s11, [pc, #396]	; d004057c <weatherLightning+0x32c>
d00403f0:	eddf 6a63 	vldr	s13, [pc, #396]	; d0040580 <weatherLightning+0x330>
d00403f4:	ea83 3243 	eor.w	r2, r3, r3, lsl #13
d00403f8:	f3c3 0309 	ubfx	r3, r3, #0, #10
d00403fc:	4855      	ldr	r0, [pc, #340]	; (d0040554 <weatherLightning+0x304>)
d00403fe:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d0040402:	ee07 3a90 	vmov	s15, r3
d0040406:	495f      	ldr	r1, [pc, #380]	; (d0040584 <weatherLightning+0x334>)
d0040408:	ea82 1342 	eor.w	r3, r2, r2, lsl #5
d004040c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040410:	ea83 3243 	eor.w	r2, r3, r3, lsl #13
d0040414:	b2db      	uxtb	r3, r3
d0040416:	eea7 7aa4 	vfma.f32	s14, s15, s9
d004041a:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d004041e:	ee07 3a90 	vmov	s15, r3
d0040422:	ea82 1342 	eor.w	r3, r2, r2, lsl #5
d0040426:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004042a:	f3c3 0209 	ubfx	r2, r3, #0, #10
d004042e:	6033      	str	r3, [r6, #0]
d0040430:	eea7 6a85 	vfma.f32	s12, s15, s10
d0040434:	eef0 7a46 	vmov.f32	s15, s12
d0040438:	ee06 2a10 	vmov	s12, r2
d004043c:	eeb8 6ac6 	vcvt.f32.s32	s12, s12
d0040440:	ee67 7a27 	vmul.f32	s15, s14, s15
d0040444:	eee6 6a25 	vfma.f32	s13, s12, s11
d0040448:	edc0 7a00 	vstr	s15, [r0]
d004044c:	4640      	mov	r0, r8
d004044e:	edc1 7a00 	vstr	s15, [r1]
d0040452:	edc4 6a00 	vstr	s13, [r4]
d0040456:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004045a:	f04f 0800 	mov.w	r8, #0
d004045e:	f8ca 2000 	str.w	r2, [sl]
d0040462:	e754      	b.n	d004030e <weatherLightning+0xbe>
d0040464:	6833      	ldr	r3, [r6, #0]
d0040466:	2201      	movs	r2, #1
d0040468:	4947      	ldr	r1, [pc, #284]	; (d0040588 <weatherLightning+0x338>)
d004046a:	f04f 0800 	mov.w	r8, #0
d004046e:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d0040472:	603a      	str	r2, [r7, #0]
d0040474:	eddf 5a3d 	vldr	s11, [pc, #244]	; d004056c <weatherLightning+0x31c>
d0040478:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d004047c:	ed9f 7a3c 	vldr	s14, [pc, #240]	; d0040570 <weatherLightning+0x320>
d0040480:	ed9f 6a3e 	vldr	s12, [pc, #248]	; d004057c <weatherLightning+0x32c>
d0040484:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0040488:	eddf 6a3d 	vldr	s13, [pc, #244]	; d0040580 <weatherLightning+0x330>
d004048c:	4c31      	ldr	r4, [pc, #196]	; (d0040554 <weatherLightning+0x304>)
d004048e:	ea83 3243 	eor.w	r2, r3, r3, lsl #13
d0040492:	fba1 0103 	umull	r0, r1, r1, r3
d0040496:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d004049a:	f021 0003 	bic.w	r0, r1, #3
d004049e:	ea82 1242 	eor.w	r2, r2, r2, lsl #5
d00404a2:	eb00 0091 	add.w	r0, r0, r1, lsr #2
d00404a6:	ea82 3142 	eor.w	r1, r2, r2, lsl #13
d00404aa:	f3c2 0209 	ubfx	r2, r2, #0, #10
d00404ae:	1a1b      	subs	r3, r3, r0
d00404b0:	482d      	ldr	r0, [pc, #180]	; (d0040568 <weatherLightning+0x318>)
d00404b2:	ee07 2a90 	vmov	s15, r2
d00404b6:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d00404ba:	3302      	adds	r3, #2
d00404bc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00404c0:	ea81 1241 	eor.w	r2, r1, r1, lsl #5
d00404c4:	492f      	ldr	r1, [pc, #188]	; (d0040584 <weatherLightning+0x334>)
d00404c6:	f3c2 0509 	ubfx	r5, r2, #0, #10
d00404ca:	6032      	str	r2, [r6, #0]
d00404cc:	eea7 7aa5 	vfma.f32	s14, s15, s11
d00404d0:	4a22      	ldr	r2, [pc, #136]	; (d004055c <weatherLightning+0x30c>)
d00404d2:	6013      	str	r3, [r2, #0]
d00404d4:	eef0 7a47 	vmov.f32	s15, s14
d00404d8:	ee07 5a10 	vmov	s14, r5
d00404dc:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00404e0:	edc4 7a00 	vstr	s15, [r4]
d00404e4:	edc1 7a00 	vstr	s15, [r1]
d00404e8:	eee7 6a06 	vfma.f32	s13, s14, s12
d00404ec:	edc0 6a00 	vstr	s13, [r0]
d00404f0:	4640      	mov	r0, r8
d00404f2:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00404f6:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d00404fa:	eddf 6a24 	vldr	s13, [pc, #144]	; d004058c <weatherLightning+0x33c>
d00404fe:	eddf 7a24 	vldr	s15, [pc, #144]	; d0040590 <weatherLightning+0x340>
d0040502:	4658      	mov	r0, fp
d0040504:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0040508:	4a0f      	ldr	r2, [pc, #60]	; (d0040548 <weatherLightning+0x2f8>)
d004050a:	2100      	movs	r1, #0
d004050c:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0040510:	f3c3 040a 	ubfx	r4, r3, #0, #11
d0040514:	6033      	str	r3, [r6, #0]
d0040516:	ee07 4a10 	vmov	s14, r4
d004051a:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004051e:	eee7 7a26 	vfma.f32	s15, s14, s13
d0040522:	edc2 7a00 	vstr	s15, [r2]
d0040526:	f004 f8e7 	bl	d00446f8 <lightEnable>
d004052a:	4628      	mov	r0, r5
d004052c:	ed9f 0a07 	vldr	s0, [pc, #28]	; d004054c <weatherLightning+0x2fc>
d0040530:	f004 f978 	bl	d0044824 <lightSetIntensity>
d0040534:	2300      	movs	r3, #0
d0040536:	603b      	str	r3, [r7, #0]
d0040538:	e6c0      	b.n	d00402bc <weatherLightning+0x6c>
d004053a:	bf00      	nop
d004053c:	3dcccccd 	.word	0x3dcccccd
d0040540:	d004829c 	.word	0xd004829c
d0040544:	d004833c 	.word	0xd004833c
d0040548:	d0048298 	.word	0xd0048298
d004054c:	00000000 	.word	0x00000000
d0040550:	3c83126f 	.word	0x3c83126f
d0040554:	d0048330 	.word	0xd0048330
d0040558:	3ab3e71b 	.word	0x3ab3e71b
d004055c:	d0048334 	.word	0xd0048334
d0040560:	38cd000c 	.word	0x38cd000c
d0040564:	3ca3d70a 	.word	0x3ca3d70a
d0040568:	d0048340 	.word	0xd0048340
d004056c:	3ad9d00e 	.word	0x3ad9d00e
d0040570:	3e99999a 	.word	0x3e99999a
d0040574:	3b33e71b 	.word	0x3b33e71b
d0040578:	3f266666 	.word	0x3f266666
d004057c:	3776000e 	.word	0x3776000e
d0040580:	3ccccccd 	.word	0x3ccccccd
d0040584:	d0048328 	.word	0xd0048328
d0040588:	cccccccd 	.word	0xcccccccd
d004058c:	3aace269 	.word	0x3aace269
d0040590:	3f4ccccd 	.word	0x3f4ccccd

d0040594 <main>:
d0040594:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040598:	ed2d 8b0e 	vpush	{d8-d14}
d004059c:	f5ad 7d65 	sub.w	sp, sp, #916	; 0x394
d00405a0:	f8df 9400 	ldr.w	r9, [pc, #1024]	; d00409a4 <main+0x410>
d00405a4:	f7ff fdbc 	bl	d0040120 <initSystem>
d00405a8:	f8df b3fc 	ldr.w	fp, [pc, #1020]	; d00409a8 <main+0x414>
d00405ac:	f20d 1877 	addw	r8, sp, #375	; 0x177
d00405b0:	f002 fef6 	bl	d00433a0 <worldClear>
d00405b4:	f004 f89a 	bl	d00446ec <lightsClear>
d00405b8:	ad20      	add	r5, sp, #128	; 0x80
d00405ba:	f028 081f 	bic.w	r8, r8, #31
d00405be:	f002 fbf3 	bl	d0042da8 <sb3dParticlesClear>
d00405c2:	ae41      	add	r6, sp, #260	; 0x104
d00405c4:	4cdb      	ldr	r4, [pc, #876]	; (d0040934 <main+0x3a0>)
d00405c6:	f508 73f0 	add.w	r3, r8, #480	; 0x1e0
d00405ca:	f108 07c0 	add.w	r7, r8, #192	; 0xc0
d00405ce:	ed9f 8ada 	vldr	s16, [pc, #872]	; d0040938 <main+0x3a4>
d00405d2:	f508 7ab0 	add.w	sl, r8, #352	; 0x160
d00405d6:	9305      	str	r3, [sp, #20]
d00405d8:	f004 f934 	bl	d0044844 <setDefaultRenderMode>
d00405dc:	4638      	mov	r0, r7
d00405de:	eddf 9ad7 	vldr	s19, [pc, #860]	; d004093c <main+0x3a8>
d00405e2:	f002 ff3b 	bl	d004345c <cameraCreate>
d00405e6:	f508 72d0 	add.w	r2, r8, #416	; 0x1a0
d00405ea:	4638      	mov	r0, r7
d00405ec:	eddf 0ad4 	vldr	s1, [pc, #848]	; d0040940 <main+0x3ac>
d00405f0:	ed9f 0ad4 	vldr	s0, [pc, #848]	; d0040944 <main+0x3b0>
d00405f4:	9206      	str	r2, [sp, #24]
d00405f6:	f003 f8fb 	bl	d00437f0 <cameraSetRange>
d00405fa:	ed9f 1acf 	vldr	s2, [pc, #828]	; d0040938 <main+0x3a4>
d00405fe:	f508 7190 	add.w	r1, r8, #288	; 0x120
d0040602:	eddf 0ad1 	vldr	s1, [pc, #836]	; d0040948 <main+0x3b4>
d0040606:	eeb0 0a41 	vmov.f32	s0, s2
d004060a:	9107      	str	r1, [sp, #28]
d004060c:	f002 fb24 	bl	d0042c58 <vec3>
d0040610:	9502      	str	r5, [sp, #8]
d0040612:	2500      	movs	r5, #0
d0040614:	4638      	mov	r0, r7
d0040616:	ed8d 0a26 	vstr	s0, [sp, #152]	; 0x98
d004061a:	edcd 0a27 	vstr	s1, [sp, #156]	; 0x9c
d004061e:	ed8d 1a28 	vstr	s2, [sp, #160]	; 0xa0
d0040622:	f8cd 800c 	str.w	r8, [sp, #12]
d0040626:	9504      	str	r5, [sp, #16]
d0040628:	f002 ff22 	bl	d0043470 <cameraSetPosition>
d004062c:	4638      	mov	r0, r7
d004062e:	ed9f 9ac7 	vldr	s18, [pc, #796]	; d004094c <main+0x3b8>
d0040632:	f002 febd 	bl	d00433b0 <cameraNormalize>
d0040636:	a846      	add	r0, sp, #280	; 0x118
d0040638:	f04f 4c7f 	mov.w	ip, #4278190080	; 0xff000000
d004063c:	eddf 8ac4 	vldr	s17, [pc, #784]	; d0040950 <main+0x3bc>
d0040640:	4605      	mov	r5, r0
d0040642:	e8b9 000f 	ldmia.w	r9!, {r0, r1, r2, r3}
d0040646:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0040648:	e8b9 000f 	ldmia.w	r9!, {r0, r1, r2, r3}
d004064c:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d004064e:	e8b9 000f 	ldmia.w	r9!, {r0, r1, r2, r3}
d0040652:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0040654:	e899 000f 	ldmia.w	r9, {r0, r1, r2, r3}
d0040658:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d004065c:	f109 0510 	add.w	r5, r9, #16
d0040660:	f8cb c000 	str.w	ip, [fp]
d0040664:	9600      	str	r6, [sp, #0]
d0040666:	f109 0924 	add.w	r9, r9, #36	; 0x24
d004066a:	f8cb c040 	str.w	ip, [fp, #64]	; 0x40
d004066e:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0040670:	682d      	ldr	r5, [r5, #0]
d0040672:	c60f      	stmia	r6!, {r0, r1, r2, r3}
d0040674:	4663      	mov	r3, ip
d0040676:	4658      	mov	r0, fp
d0040678:	6035      	str	r5, [r6, #0]
d004067a:	a946      	add	r1, sp, #280	; 0x118
d004067c:	2210      	movs	r2, #16
d004067e:	f003 fde1 	bl	d0044244 <buildLightingCLUT>
d0040682:	7b23      	ldrb	r3, [r4, #12]
d0040684:	7b62      	ldrb	r2, [r4, #13]
d0040686:	4658      	mov	r0, fp
d0040688:	7ba1      	ldrb	r1, [r4, #14]
d004068a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004068e:	7be2      	ldrb	r2, [r4, #15]
d0040690:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040694:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040698:	681b      	ldr	r3, [r3, #0]
d004069a:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d004069c:	4798      	blx	r3
d004069e:	7c23      	ldrb	r3, [r4, #16]
d00406a0:	7c62      	ldrb	r2, [r4, #17]
d00406a2:	2100      	movs	r1, #0
d00406a4:	7ca0      	ldrb	r0, [r4, #18]
d00406a6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00406aa:	7ce2      	ldrb	r2, [r4, #19]
d00406ac:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00406b0:	48a8      	ldr	r0, [pc, #672]	; (d0040954 <main+0x3c0>)
d00406b2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00406b6:	685b      	ldr	r3, [r3, #4]
d00406b8:	681b      	ldr	r3, [r3, #0]
d00406ba:	4798      	blx	r3
d00406bc:	ed9f 1a9e 	vldr	s2, [pc, #632]	; d0040938 <main+0x3a4>
d00406c0:	eef0 0a41 	vmov.f32	s1, s2
d00406c4:	eeb0 0a41 	vmov.f32	s0, s2
d00406c8:	f002 fac6 	bl	d0042c58 <vec3>
d00406cc:	eddf 1a9d 	vldr	s3, [pc, #628]	; d0040944 <main+0x3b0>
d00406d0:	2001      	movs	r0, #1
d00406d2:	edcd 0a2a 	vstr	s1, [sp, #168]	; 0xa8
d00406d6:	ed8d 0a29 	vstr	s0, [sp, #164]	; 0xa4
d00406da:	ed8d 1a2b 	vstr	s2, [sp, #172]	; 0xac
d00406de:	f004 f819 	bl	d0044714 <addPointLight>
d00406e2:	ab1d      	add	r3, sp, #116	; 0x74
d00406e4:	4606      	mov	r6, r0
d00406e6:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d00406ea:	e899 0007 	ldmia.w	r9, {r0, r1, r2}
d00406ee:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d00406f2:	2001      	movs	r0, #1
d00406f4:	edd3 0a01 	vldr	s1, [r3, #4]
d00406f8:	ed93 1a02 	vldr	s2, [r3, #8]
d00406fc:	ed93 0a00 	vldr	s0, [r3]
d0040700:	f004 f844 	bl	d004478c <addDirectionalLight>
d0040704:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0040708:	b2c3      	uxtb	r3, r0
d004070a:	ee0e 3a10 	vmov	s28, r3
d004070e:	4618      	mov	r0, r3
d0040710:	f004 f888 	bl	d0044824 <lightSetIntensity>
d0040714:	2100      	movs	r1, #0
d0040716:	ee1e 0a10 	vmov	r0, s28
d004071a:	f003 ffed 	bl	d00446f8 <lightEnable>
d004071e:	2313      	movs	r3, #19
d0040720:	4a8d      	ldr	r2, [pc, #564]	; (d0040958 <main+0x3c4>)
d0040722:	488e      	ldr	r0, [pc, #568]	; (d004095c <main+0x3c8>)
d0040724:	7013      	strb	r3, [r2, #0]
d0040726:	2312      	movs	r3, #18
d0040728:	2215      	movs	r2, #21
d004072a:	eddd aa05 	vldr	s21, [sp, #20]
d004072e:	7003      	strb	r3, [r0, #0]
d0040730:	2317      	movs	r3, #23
d0040732:	488b      	ldr	r0, [pc, #556]	; (d0040960 <main+0x3cc>)
d0040734:	ee1a 1a90 	vmov	r1, s21
d0040738:	ed9f 0a8a 	vldr	s0, [pc, #552]	; d0040964 <main+0x3d0>
d004073c:	7002      	strb	r2, [r0, #0]
d004073e:	4a8a      	ldr	r2, [pc, #552]	; (d0040968 <main+0x3d4>)
d0040740:	488a      	ldr	r0, [pc, #552]	; (d004096c <main+0x3d8>)
d0040742:	7013      	strb	r3, [r2, #0]
d0040744:	f005 fe7a 	bl	d004643c <loadMeshSB3D>
d0040748:	eeb0 1a48 	vmov.f32	s2, s16
d004074c:	eef0 0a48 	vmov.f32	s1, s16
d0040750:	eeb0 0a48 	vmov.f32	s0, s16
d0040754:	f002 fa80 	bl	d0042c58 <vec3>
d0040758:	ee1a 0a90 	vmov	r0, s21
d004075c:	edcd 0a2d 	vstr	s1, [sp, #180]	; 0xb4
d0040760:	ed8d 1a2e 	vstr	s2, [sp, #184]	; 0xb8
d0040764:	ed8d 0a2c 	vstr	s0, [sp, #176]	; 0xb0
d0040768:	f003 fb44 	bl	d0043df4 <entityWorldSpawn>
d004076c:	ed9d aa06 	vldr	s20, [sp, #24]
d0040770:	ed9f 0a75 	vldr	s0, [pc, #468]	; d0040948 <main+0x3b4>
d0040774:	ee1a 1a10 	vmov	r1, s20
d0040778:	487d      	ldr	r0, [pc, #500]	; (d0040970 <main+0x3dc>)
d004077a:	f005 fe5f 	bl	d004643c <loadMeshSB3D>
d004077e:	eef0 0a48 	vmov.f32	s1, s16
d0040782:	ed9f 1a7c 	vldr	s2, [pc, #496]	; d0040974 <main+0x3e0>
d0040786:	ed9f 0a7c 	vldr	s0, [pc, #496]	; d0040978 <main+0x3e4>
d004078a:	f002 fa65 	bl	d0042c58 <vec3>
d004078e:	ee1a 0a10 	vmov	r0, s20
d0040792:	edcd 0a30 	vstr	s1, [sp, #192]	; 0xc0
d0040796:	ed8d 1a31 	vstr	s2, [sp, #196]	; 0xc4
d004079a:	ed8d 0a2f 	vstr	s0, [sp, #188]	; 0xbc
d004079e:	f003 fb29 	bl	d0043df4 <entityWorldSpawn>
d00407a2:	eeb2 0a04 	vmov.f32	s0, #36	; 0x41200000  10.0
d00407a6:	4605      	mov	r5, r0
d00407a8:	4651      	mov	r1, sl
d00407aa:	4874      	ldr	r0, [pc, #464]	; (d004097c <main+0x3e8>)
d00407ac:	f005 fe46 	bl	d004643c <loadMeshSB3D>
d00407b0:	f8dd b01c 	ldr.w	fp, [sp, #28]
d00407b4:	4651      	mov	r1, sl
d00407b6:	ee0a 5a10 	vmov	s20, r5
d00407ba:	4658      	mov	r0, fp
d00407bc:	4645      	mov	r5, r8
d00407be:	f003 fcb1 	bl	d0044124 <copyMesh>
d00407c2:	ed9f 1a6f 	vldr	s2, [pc, #444]	; d0040980 <main+0x3ec>
d00407c6:	eddf 0a60 	vldr	s1, [pc, #384]	; d0040948 <main+0x3b4>
d00407ca:	46b0      	mov	r8, r6
d00407cc:	ed9f 0a6d 	vldr	s0, [pc, #436]	; d0040984 <main+0x3f0>
d00407d0:	f002 fa42 	bl	d0042c58 <vec3>
d00407d4:	4658      	mov	r0, fp
d00407d6:	ed8d 0a32 	vstr	s0, [sp, #200]	; 0xc8
d00407da:	edcd 0a33 	vstr	s1, [sp, #204]	; 0xcc
d00407de:	ed8d 1a34 	vstr	s2, [sp, #208]	; 0xd0
d00407e2:	f003 fb07 	bl	d0043df4 <entityWorldSpawn>
d00407e6:	eeb0 1a48 	vmov.f32	s2, s16
d00407ea:	4683      	mov	fp, r0
d00407ec:	eef0 0a48 	vmov.f32	s1, s16
d00407f0:	eeb0 0a48 	vmov.f32	s0, s16
d00407f4:	f002 fa30 	bl	d0042c58 <vec3>
d00407f8:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d00407fc:	2001      	movs	r0, #1
d00407fe:	edcd 0a36 	vstr	s1, [sp, #216]	; 0xd8
d0040802:	ed8d 0a35 	vstr	s0, [sp, #212]	; 0xd4
d0040806:	ed8d 1a37 	vstr	s2, [sp, #220]	; 0xdc
d004080a:	f003 ff83 	bl	d0044714 <addPointLight>
d004080e:	b2c3      	uxtb	r3, r0
d0040810:	ed9f 1a70 	vldr	s2, [pc, #448]	; d00409d4 <main+0x440>
d0040814:	eddf 0a70 	vldr	s1, [pc, #448]	; d00409d8 <main+0x444>
d0040818:	ed9f 0a70 	vldr	s0, [pc, #448]	; d00409dc <main+0x448>
d004081c:	4618      	mov	r0, r3
d004081e:	ee0d 3a90 	vmov	s27, r3
d0040822:	f003 ff45 	bl	d00446b0 <lightSetRanges>
d0040826:	f8dd 9010 	ldr.w	r9, [sp, #16]
d004082a:	4651      	mov	r1, sl
d004082c:	a808      	add	r0, sp, #32
d004082e:	f003 fc79 	bl	d0044124 <copyMesh>
d0040832:	2364      	movs	r3, #100	; 0x64
d0040834:	eb05 1c89 	add.w	ip, r5, r9, lsl #6
d0040838:	f109 0901 	add.w	r9, r9, #1
d004083c:	ae08      	add	r6, sp, #32
d004083e:	eef0 0a69 	vmov.f32	s1, s19
d0040842:	fb03 f309 	mul.w	r3, r3, r9
d0040846:	eeb0 0a49 	vmov.f32	s0, s18
d004084a:	ee01 3a10 	vmov	s2, r3
d004084e:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
d0040850:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d0040854:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
d0040856:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d004085a:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
d004085c:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d0040860:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
d0040864:	eeb8 1ac1 	vcvt.f32.s32	s2, s2
d0040868:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d004086c:	f002 f9f4 	bl	d0042c58 <vec3>
d0040870:	9b03      	ldr	r3, [sp, #12]
d0040872:	edcd 0a39 	vstr	s1, [sp, #228]	; 0xe4
d0040876:	4618      	mov	r0, r3
d0040878:	3340      	adds	r3, #64	; 0x40
d004087a:	ed8d 1a3a 	vstr	s2, [sp, #232]	; 0xe8
d004087e:	ed8d 0a38 	vstr	s0, [sp, #224]	; 0xe0
d0040882:	9303      	str	r3, [sp, #12]
d0040884:	f003 fab6 	bl	d0043df4 <entityWorldSpawn>
d0040888:	9b02      	ldr	r3, [sp, #8]
d004088a:	4606      	mov	r6, r0
d004088c:	eeb0 0a68 	vmov.f32	s0, s17
d0040890:	f843 0b04 	str.w	r0, [r3], #4
d0040894:	9302      	str	r3, [sp, #8]
d0040896:	f002 f9e3 	bl	d0042c60 <degrees>
d004089a:	eeb0 1a48 	vmov.f32	s2, s16
d004089e:	4630      	mov	r0, r6
d00408a0:	2101      	movs	r1, #1
d00408a2:	eddf 0a25 	vldr	s1, [pc, #148]	; d0040938 <main+0x3a4>
d00408a6:	f003 fc2b 	bl	d0044100 <entityRotation>
d00408aa:	f1b9 0f03 	cmp.w	r9, #3
d00408ae:	d1bc      	bne.n	d004082a <main+0x296>
d00408b0:	9821      	ldr	r0, [sp, #132]	; 0x84
d00408b2:	4646      	mov	r6, r8
d00408b4:	ed9f 1a2b 	vldr	s2, [pc, #172]	; d0040964 <main+0x3d0>
d00408b8:	46a8      	mov	r8, r5
d00408ba:	eddf 0a33 	vldr	s1, [pc, #204]	; d0040988 <main+0x3f4>
d00408be:	fa5f fa86 	uxtb.w	sl, r6
d00408c2:	ed9f 0a22 	vldr	s0, [pc, #136]	; d004094c <main+0x3b8>
d00408c6:	ee1a 5a10 	vmov	r5, s20
d00408ca:	9002      	str	r0, [sp, #8]
d00408cc:	f002 f9c4 	bl	d0042c58 <vec3>
d00408d0:	9802      	ldr	r0, [sp, #8]
d00408d2:	ed8d 0a3b 	vstr	s0, [sp, #236]	; 0xec
d00408d6:	edcd 0a3c 	vstr	s1, [sp, #240]	; 0xf0
d00408da:	ed8d 1a3d 	vstr	s2, [sp, #244]	; 0xf4
d00408de:	f003 facf 	bl	d0043e80 <entitySetPosition>
d00408e2:	2000      	movs	r0, #0
d00408e4:	4e29      	ldr	r6, [pc, #164]	; (d004098c <main+0x3f8>)
d00408e6:	f003 ffbb 	bl	d0044860 <enableFlatMode>
d00408ea:	7b23      	ldrb	r3, [r4, #12]
d00408ec:	7b62      	ldrb	r2, [r4, #13]
d00408ee:	7ba1      	ldrb	r1, [r4, #14]
d00408f0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00408f4:	7be2      	ldrb	r2, [r4, #15]
d00408f6:	6830      	ldr	r0, [r6, #0]
d00408f8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00408fc:	f8df 90ac 	ldr.w	r9, [pc, #172]	; d00409ac <main+0x418>
d0040900:	eddf aa23 	vldr	s21, [pc, #140]	; d0040990 <main+0x3fc>
d0040904:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040908:	eddf ca22 	vldr	s25, [pc, #136]	; d0040994 <main+0x400>
d004090c:	ed9f ca22 	vldr	s24, [pc, #136]	; d0040998 <main+0x404>
d0040910:	681b      	ldr	r3, [r3, #0]
d0040912:	eddf ba22 	vldr	s23, [pc, #136]	; d004099c <main+0x408>
d0040916:	69db      	ldr	r3, [r3, #28]
d0040918:	4798      	blx	r3
d004091a:	7b23      	ldrb	r3, [r4, #12]
d004091c:	7b62      	ldrb	r2, [r4, #13]
d004091e:	7ba1      	ldrb	r1, [r4, #14]
d0040920:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040924:	7be2      	ldrb	r2, [r4, #15]
d0040926:	6830      	ldr	r0, [r6, #0]
d0040928:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004092c:	ed9f ba1c 	vldr	s22, [pc, #112]	; d00409a0 <main+0x40c>
d0040930:	e056      	b.n	d00409e0 <main+0x44c>
d0040932:	bf00      	nop
d0040934:	2001f000 	.word	0x2001f000
d0040938:	00000000 	.word	0x00000000
d004093c:	42280000 	.word	0x42280000
d0040940:	459c4000 	.word	0x459c4000
d0040944:	3c23d70a 	.word	0x3c23d70a
d0040948:	42480000 	.word	0x42480000
d004094c:	c3750000 	.word	0xc3750000
d0040950:	42b40000 	.word	0x42b40000
d0040954:	d0047968 	.word	0xd0047968
d0040958:	d012da21 	.word	0xd012da21
d004095c:	d012d9e0 	.word	0xd012d9e0
d0040960:	d012da22 	.word	0xd012da22
d0040964:	43480000 	.word	0x43480000
d0040968:	d012da20 	.word	0xd012da20
d004096c:	d0047970 	.word	0xd0047970
d0040970:	d0047980 	.word	0xd0047980
d0040974:	c2c80000 	.word	0xc2c80000
d0040978:	44f3c000 	.word	0x44f3c000
d004097c:	d0047990 	.word	0xd0047990
d0040980:	c3480000 	.word	0xc3480000
d0040984:	c3070000 	.word	0xc3070000
d0040988:	42a40000 	.word	0x42a40000
d004098c:	d012da60 	.word	0xd012da60
d0040990:	4d7bc521 	.word	0x4d7bc521
d0040994:	42f20000 	.word	0x42f20000
d0040998:	42b6ee15 	.word	0x42b6ee15
d004099c:	4215999a 	.word	0x4215999a
d00409a0:	bc872b02 	.word	0xbc872b02
d00409a4:	d004799c 	.word	0xd004799c
d00409a8:	d0047e98 	.word	0xd0047e98
d00409ac:	d0048338 	.word	0xd0048338
d00409b0:	310f2a63 	.word	0x310f2a63
d00409b4:	bb449ba6 	.word	0xbb449ba6
d00409b8:	43264ccd 	.word	0x43264ccd
d00409bc:	40d9999a 	.word	0x40d9999a
d00409c0:	435c0000 	.word	0x435c0000
d00409c4:	3c088889 	.word	0x3c088889
d00409c8:	3ba3d70a 	.word	0x3ba3d70a
d00409cc:	00000000 	.word	0x00000000
d00409d0:	451c4000 	.word	0x451c4000
d00409d4:	44048000 	.word	0x44048000
d00409d8:	43a00000 	.word	0x43a00000
d00409dc:	42c80000 	.word	0x42c80000
d00409e0:	ed5f 8a06 	vldr	s17, [pc, #-24]	; d00409cc <main+0x438>
d00409e4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00409e8:	681b      	ldr	r3, [r3, #0]
d00409ea:	699b      	ldr	r3, [r3, #24]
d00409ec:	4798      	blx	r3
d00409ee:	7b23      	ldrb	r3, [r4, #12]
d00409f0:	7b62      	ldrb	r2, [r4, #13]
d00409f2:	2001      	movs	r0, #1
d00409f4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00409f8:	7ba2      	ldrb	r2, [r4, #14]
d00409fa:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00409fe:	7be2      	ldrb	r2, [r4, #15]
d0040a00:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040a04:	685b      	ldr	r3, [r3, #4]
d0040a06:	68db      	ldr	r3, [r3, #12]
d0040a08:	4798      	blx	r3
d0040a0a:	7b23      	ldrb	r3, [r4, #12]
d0040a0c:	7b62      	ldrb	r2, [r4, #13]
d0040a0e:	211e      	movs	r1, #30
d0040a10:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040a14:	7ba2      	ldrb	r2, [r4, #14]
d0040a16:	4608      	mov	r0, r1
d0040a18:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040a1c:	7be2      	ldrb	r2, [r4, #15]
d0040a1e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040a22:	685b      	ldr	r3, [r3, #4]
d0040a24:	689b      	ldr	r3, [r3, #8]
d0040a26:	4798      	blx	r3
d0040a28:	7823      	ldrb	r3, [r4, #0]
d0040a2a:	7862      	ldrb	r2, [r4, #1]
d0040a2c:	a91a      	add	r1, sp, #104	; 0x68
d0040a2e:	a819      	add	r0, sp, #100	; 0x64
d0040a30:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040a34:	78a2      	ldrb	r2, [r4, #2]
d0040a36:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040a3a:	78e2      	ldrb	r2, [r4, #3]
d0040a3c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040a40:	691b      	ldr	r3, [r3, #16]
d0040a42:	4798      	blx	r3
d0040a44:	7823      	ldrb	r3, [r4, #0]
d0040a46:	7862      	ldrb	r2, [r4, #1]
d0040a48:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040a4c:	78a2      	ldrb	r2, [r4, #2]
d0040a4e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040a52:	78e2      	ldrb	r2, [r4, #3]
d0040a54:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040a58:	69db      	ldr	r3, [r3, #28]
d0040a5a:	4798      	blx	r3
d0040a5c:	7823      	ldrb	r3, [r4, #0]
d0040a5e:	7862      	ldrb	r2, [r4, #1]
d0040a60:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040a64:	78a2      	ldrb	r2, [r4, #2]
d0040a66:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040a6a:	78e2      	ldrb	r2, [r4, #3]
d0040a6c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040a70:	689b      	ldr	r3, [r3, #8]
d0040a72:	4798      	blx	r3
d0040a74:	4606      	mov	r6, r0
d0040a76:	e113      	b.n	d0040ca0 <main+0x70c>
d0040a78:	ed5f 7a33 	vldr	s15, [pc, #-204]	; d00409b0 <main+0x41c>
d0040a7c:	eeb2 9a04 	vmov.f32	s18, #36	; 0x41200000  10.0
d0040a80:	ed1f da34 	vldr	s26, [pc, #-208]	; d00409b4 <main+0x420>
d0040a84:	ee28 8a27 	vmul.f32	s16, s16, s15
d0040a88:	ed5f 9a35 	vldr	s19, [pc, #-212]	; d00409b8 <main+0x424>
d0040a8c:	ed5f 7a35 	vldr	s15, [pc, #-212]	; d00409bc <main+0x428>
d0040a90:	ed1f aa35 	vldr	s20, [pc, #-212]	; d00409c0 <main+0x42c>
d0040a94:	ee28 9a09 	vmul.f32	s18, s16, s18
d0040a98:	ee68 9a29 	vmul.f32	s19, s16, s19
d0040a9c:	ee28 aa0a 	vmul.f32	s20, s16, s20
d0040aa0:	ee29 da0d 	vmul.f32	s26, s18, s26
d0040aa4:	ee29 9a27 	vmul.f32	s18, s18, s15
d0040aa8:	7820      	ldrb	r0, [r4, #0]
d0040aaa:	7861      	ldrb	r1, [r4, #1]
d0040aac:	78a2      	ldrb	r2, [r4, #2]
d0040aae:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0040ab2:	78e3      	ldrb	r3, [r4, #3]
d0040ab4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040ab8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040abc:	6a1b      	ldr	r3, [r3, #32]
d0040abe:	4798      	blx	r3
d0040ac0:	7826      	ldrb	r6, [r4, #0]
d0040ac2:	7863      	ldrb	r3, [r4, #1]
d0040ac4:	a91c      	add	r1, sp, #112	; 0x70
d0040ac6:	78a2      	ldrb	r2, [r4, #2]
d0040ac8:	ea46 2603 	orr.w	r6, r6, r3, lsl #8
d0040acc:	78e3      	ldrb	r3, [r4, #3]
d0040ace:	9002      	str	r0, [sp, #8]
d0040ad0:	a81b      	add	r0, sp, #108	; 0x6c
d0040ad2:	ea46 4202 	orr.w	r2, r6, r2, lsl #16
d0040ad6:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040ada:	699b      	ldr	r3, [r3, #24]
d0040adc:	4798      	blx	r3
d0040ade:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
d0040ae0:	9b1c      	ldr	r3, [sp, #112]	; 0x70
d0040ae2:	eef0 0a68 	vmov.f32	s1, s17
d0040ae6:	4252      	negs	r2, r2
d0040ae8:	ed5f 7a4a 	vldr	s15, [pc, #-296]	; d00409c4 <main+0x430>
d0040aec:	425b      	negs	r3, r3
d0040aee:	ed1f 7a4a 	vldr	s14, [pc, #-296]	; d00409c8 <main+0x434>
d0040af2:	ee06 2a90 	vmov	s13, r2
d0040af6:	2100      	movs	r1, #0
d0040af8:	4638      	mov	r0, r7
d0040afa:	eeb8 1ae6 	vcvt.f32.s32	s2, s13
d0040afe:	ee06 3a90 	vmov	s13, r3
d0040b02:	eeb8 0ae6 	vcvt.f32.s32	s0, s13
d0040b06:	ee21 1a07 	vmul.f32	s2, s2, s14
d0040b0a:	ee20 0a27 	vmul.f32	s0, s0, s15
d0040b0e:	f002 fcbf 	bl	d0043490 <cameraTurn>
d0040b12:	eef0 7a04 	vmov.f32	s15, #4	; 0x40200000  2.5
d0040b16:	edd8 0a37 	vldr	s1, [r8, #220]	; 0xdc
d0040b1a:	ee60 0aa7 	vmul.f32	s1, s1, s15
d0040b1e:	ee60 0a88 	vmul.f32	s1, s1, s16
d0040b22:	eef5 0a40 	vcmp.f32	s1, #0.0
d0040b26:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040b2a:	f040 8121 	bne.w	d0040d70 <main+0x7dc>
d0040b2e:	eeb0 1a68 	vmov.f32	s2, s17
d0040b32:	ed5f 0a5a 	vldr	s1, [pc, #-360]	; d00409cc <main+0x438>
d0040b36:	eeb0 0a4d 	vmov.f32	s0, s26
d0040b3a:	4628      	mov	r0, r5
d0040b3c:	f003 fa0e 	bl	d0043f5c <entityTurnLocal>
d0040b40:	eeb0 0a49 	vmov.f32	s0, s18
d0040b44:	4628      	mov	r0, r5
d0040b46:	f003 f9d7 	bl	d0043ef8 <entityMoveForward>
d0040b4a:	eeb0 0a69 	vmov.f32	s0, s19
d0040b4e:	4658      	mov	r0, fp
d0040b50:	f003 f9d2 	bl	d0043ef8 <entityMoveForward>
d0040b54:	4658      	mov	r0, fp
d0040b56:	f003 f9af 	bl	d0043eb8 <entityGetPosition>
d0040b5a:	ed5f 7a63 	vldr	s15, [pc, #-396]	; d00409d0 <main+0x43c>
d0040b5e:	ed8d 0a23 	vstr	s0, [sp, #140]	; 0x8c
d0040b62:	eeb4 1ae7 	vcmpe.f32	s2, s15
d0040b66:	edcd 0a24 	vstr	s1, [sp, #144]	; 0x90
d0040b6a:	ed8d 1a25 	vstr	s2, [sp, #148]	; 0x94
d0040b6e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040b72:	f300 80eb 	bgt.w	d0040d4c <main+0x7b8>
d0040b76:	ed9d 0a23 	vldr	s0, [sp, #140]	; 0x8c
d0040b7a:	ee1d 0a90 	vmov	r0, s27
d0040b7e:	eddd 0a24 	vldr	s1, [sp, #144]	; 0x90
d0040b82:	ed9d 1a25 	vldr	s2, [sp, #148]	; 0x94
d0040b86:	f003 fe31 	bl	d00447ec <lightSetPosition>
d0040b8a:	edd8 0a31 	vldr	s1, [r8, #196]	; 0xc4
d0040b8e:	ed98 1a32 	vldr	s2, [r8, #200]	; 0xc8
d0040b92:	4650      	mov	r0, sl
d0040b94:	ed98 0a30 	vldr	s0, [r8, #192]	; 0xc0
d0040b98:	f003 fe28 	bl	d00447ec <lightSetPosition>
d0040b9c:	eeb0 0a00 	vmov.f32	s0, #0	; 0x40000000  2.0
d0040ba0:	4650      	mov	r0, sl
d0040ba2:	f003 fe3f 	bl	d0044824 <lightSetIntensity>
d0040ba6:	ed1f 1a75 	vldr	s2, [pc, #-468]	; d00409d4 <main+0x440>
d0040baa:	ed5f 0a75 	vldr	s1, [pc, #-468]	; d00409d8 <main+0x444>
d0040bae:	4650      	mov	r0, sl
d0040bb0:	ed1f 0a76 	vldr	s0, [pc, #-472]	; d00409dc <main+0x448>
d0040bb4:	f003 fd7c 	bl	d00446b0 <lightSetRanges>
d0040bb8:	eeb0 0a48 	vmov.f32	s0, s16
d0040bbc:	ee1e 0a10 	vmov	r0, s28
d0040bc0:	f7ff fb46 	bl	d0040250 <weatherLightning>
d0040bc4:	7823      	ldrb	r3, [r4, #0]
d0040bc6:	7861      	ldrb	r1, [r4, #1]
d0040bc8:	4606      	mov	r6, r0
d0040bca:	78a2      	ldrb	r2, [r4, #2]
d0040bcc:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
d0040bd0:	78e3      	ldrb	r3, [r4, #3]
d0040bd2:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040bd6:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040bda:	69db      	ldr	r3, [r3, #28]
d0040bdc:	4798      	blx	r3
d0040bde:	9b02      	ldr	r3, [sp, #8]
d0040be0:	07da      	lsls	r2, r3, #31
d0040be2:	f100 80a9 	bmi.w	d0040d38 <main+0x7a4>
d0040be6:	9b02      	ldr	r3, [sp, #8]
d0040be8:	079b      	lsls	r3, r3, #30
d0040bea:	f100 809b 	bmi.w	d0040d24 <main+0x790>
d0040bee:	7b20      	ldrb	r0, [r4, #12]
d0040bf0:	7b61      	ldrb	r1, [r4, #13]
d0040bf2:	7ba2      	ldrb	r2, [r4, #14]
d0040bf4:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0040bf8:	7be3      	ldrb	r3, [r4, #15]
d0040bfa:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040bfe:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040c02:	681b      	ldr	r3, [r3, #0]
d0040c04:	68db      	ldr	r3, [r3, #12]
d0040c06:	4798      	blx	r3
d0040c08:	f899 3000 	ldrb.w	r3, [r9]
d0040c0c:	f1c3 0301 	rsb	r3, r3, #1
d0040c10:	b2db      	uxtb	r3, r3
d0040c12:	f889 3000 	strb.w	r3, [r9]
d0040c16:	f899 3000 	ldrb.w	r3, [r9]
d0040c1a:	7b21      	ldrb	r1, [r4, #12]
d0040c1c:	7b60      	ldrb	r0, [r4, #13]
d0040c1e:	7ba2      	ldrb	r2, [r4, #14]
d0040c20:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0040c24:	2b00      	cmp	r3, #0
d0040c26:	d05e      	beq.n	d0040ce6 <main+0x752>
d0040c28:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0040c2c:	7be3      	ldrb	r3, [r4, #15]
d0040c2e:	4956      	ldr	r1, [pc, #344]	; (d0040d88 <main+0x7f4>)
d0040c30:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040c34:	4855      	ldr	r0, [pc, #340]	; (d0040d8c <main+0x7f8>)
d0040c36:	6809      	ldr	r1, [r1, #0]
d0040c38:	681b      	ldr	r3, [r3, #0]
d0040c3a:	6800      	ldr	r0, [r0, #0]
d0040c3c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0040c3e:	4798      	blx	r3
d0040c40:	4951      	ldr	r1, [pc, #324]	; (d0040d88 <main+0x7f4>)
d0040c42:	680b      	ldr	r3, [r1, #0]
d0040c44:	6818      	ldr	r0, [r3, #0]
d0040c46:	f000 f8bf 	bl	d0040dc8 <set3DRenderBuffer>
d0040c4a:	eeb0 0a68 	vmov.f32	s0, s17
d0040c4e:	2e00      	cmp	r6, #0
d0040c50:	d05e      	beq.n	d0040d10 <main+0x77c>
d0040c52:	494f      	ldr	r1, [pc, #316]	; (d0040d90 <main+0x7fc>)
d0040c54:	2305      	movs	r3, #5
d0040c56:	2215      	movs	r2, #21
d0040c58:	4638      	mov	r0, r7
d0040c5a:	7809      	ldrb	r1, [r1, #0]
d0040c5c:	f004 fc6a 	bl	d0045534 <drawFakeHorizon>
d0040c60:	494c      	ldr	r1, [pc, #304]	; (d0040d94 <main+0x800>)
d0040c62:	236e      	movs	r3, #110	; 0x6e
d0040c64:	2280      	movs	r2, #128	; 0x80
d0040c66:	eeb0 0a68 	vmov.f32	s0, s17
d0040c6a:	7809      	ldrb	r1, [r1, #0]
d0040c6c:	4638      	mov	r0, r7
d0040c6e:	9e03      	ldr	r6, [sp, #12]
d0040c70:	f004 fb52 	bl	d0045318 <drawFakeHorizonDots>
d0040c74:	4638      	mov	r0, r7
d0040c76:	f005 faf7 	bl	d0046268 <Render3D>
d0040c7a:	7b20      	ldrb	r0, [r4, #12]
d0040c7c:	7b61      	ldrb	r1, [r4, #13]
d0040c7e:	7ba2      	ldrb	r2, [r4, #14]
d0040c80:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0040c84:	7be3      	ldrb	r3, [r4, #15]
d0040c86:	4844      	ldr	r0, [pc, #272]	; (d0040d98 <main+0x804>)
d0040c88:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040c8c:	7800      	ldrb	r0, [r0, #0]
d0040c8e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040c92:	f1c0 0101 	rsb	r1, r0, #1
d0040c96:	4840      	ldr	r0, [pc, #256]	; (d0040d98 <main+0x804>)
d0040c98:	681b      	ldr	r3, [r3, #0]
d0040c9a:	7001      	strb	r1, [r0, #0]
d0040c9c:	681b      	ldr	r3, [r3, #0]
d0040c9e:	4798      	blx	r3
d0040ca0:	7820      	ldrb	r0, [r4, #0]
d0040ca2:	7861      	ldrb	r1, [r4, #1]
d0040ca4:	78a2      	ldrb	r2, [r4, #2]
d0040ca6:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0040caa:	78e3      	ldrb	r3, [r4, #3]
d0040cac:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040cb0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040cb4:	689b      	ldr	r3, [r3, #8]
d0040cb6:	4798      	blx	r3
d0040cb8:	1b83      	subs	r3, r0, r6
d0040cba:	9003      	str	r0, [sp, #12]
d0040cbc:	ee08 3a10 	vmov	s16, r3
d0040cc0:	eeb8 8a48 	vcvt.f32.u32	s16, s16
d0040cc4:	eeb4 8aea 	vcmpe.f32	s16, s21
d0040cc8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040ccc:	f77f aed4 	ble.w	d0040a78 <main+0x4e4>
d0040cd0:	eeb0 aa6c 	vmov.f32	s20, s25
d0040cd4:	ed9f 8a31 	vldr	s16, [pc, #196]	; d0040d9c <main+0x808>
d0040cd8:	eef0 9a4c 	vmov.f32	s19, s24
d0040cdc:	eeb0 9a6b 	vmov.f32	s18, s23
d0040ce0:	eeb0 da4b 	vmov.f32	s26, s22
d0040ce4:	e6e0      	b.n	d0040aa8 <main+0x514>
d0040ce6:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0040cea:	7be3      	ldrb	r3, [r4, #15]
d0040cec:	4927      	ldr	r1, [pc, #156]	; (d0040d8c <main+0x7f8>)
d0040cee:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040cf2:	4825      	ldr	r0, [pc, #148]	; (d0040d88 <main+0x7f4>)
d0040cf4:	6809      	ldr	r1, [r1, #0]
d0040cf6:	681b      	ldr	r3, [r3, #0]
d0040cf8:	6800      	ldr	r0, [r0, #0]
d0040cfa:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0040cfc:	4798      	blx	r3
d0040cfe:	4923      	ldr	r1, [pc, #140]	; (d0040d8c <main+0x7f8>)
d0040d00:	680b      	ldr	r3, [r1, #0]
d0040d02:	6818      	ldr	r0, [r3, #0]
d0040d04:	f000 f860 	bl	d0040dc8 <set3DRenderBuffer>
d0040d08:	eeb0 0a68 	vmov.f32	s0, s17
d0040d0c:	2e00      	cmp	r6, #0
d0040d0e:	d1a0      	bne.n	d0040c52 <main+0x6be>
d0040d10:	4b23      	ldr	r3, [pc, #140]	; (d0040da0 <main+0x80c>)
d0040d12:	4638      	mov	r0, r7
d0040d14:	4a23      	ldr	r2, [pc, #140]	; (d0040da4 <main+0x810>)
d0040d16:	491e      	ldr	r1, [pc, #120]	; (d0040d90 <main+0x7fc>)
d0040d18:	781b      	ldrb	r3, [r3, #0]
d0040d1a:	7812      	ldrb	r2, [r2, #0]
d0040d1c:	7809      	ldrb	r1, [r1, #0]
d0040d1e:	f004 fc09 	bl	d0045534 <drawFakeHorizon>
d0040d22:	e79d      	b.n	d0040c60 <main+0x6cc>
d0040d24:	eeb1 1a4a 	vneg.f32	s2, s20
d0040d28:	ed9f 0a1f 	vldr	s0, [pc, #124]	; d0040da8 <main+0x814>
d0040d2c:	eef0 0a68 	vmov.f32	s1, s17
d0040d30:	4638      	mov	r0, r7
d0040d32:	f002 fd7b 	bl	d004382c <cameraMove>
d0040d36:	e75a      	b.n	d0040bee <main+0x65a>
d0040d38:	eeb0 1a4a 	vmov.f32	s2, s20
d0040d3c:	ed9f 0a1a 	vldr	s0, [pc, #104]	; d0040da8 <main+0x814>
d0040d40:	eef0 0a68 	vmov.f32	s1, s17
d0040d44:	4638      	mov	r0, r7
d0040d46:	f002 fd71 	bl	d004382c <cameraMove>
d0040d4a:	e74c      	b.n	d0040be6 <main+0x652>
d0040d4c:	ed9f 1a17 	vldr	s2, [pc, #92]	; d0040dac <main+0x818>
d0040d50:	eddf 0a17 	vldr	s1, [pc, #92]	; d0040db0 <main+0x81c>
d0040d54:	ed9f 0a17 	vldr	s0, [pc, #92]	; d0040db4 <main+0x820>
d0040d58:	f001 ff7e 	bl	d0042c58 <vec3>
d0040d5c:	4658      	mov	r0, fp
d0040d5e:	ed8d 0a3e 	vstr	s0, [sp, #248]	; 0xf8
d0040d62:	edcd 0a3f 	vstr	s1, [sp, #252]	; 0xfc
d0040d66:	ed8d 1a40 	vstr	s2, [sp, #256]	; 0x100
d0040d6a:	f003 f889 	bl	d0043e80 <entitySetPosition>
d0040d6e:	e702      	b.n	d0040b76 <main+0x5e2>
d0040d70:	eef1 0a60 	vneg.f32	s1, s1
d0040d74:	2101      	movs	r1, #1
d0040d76:	eeb0 1a68 	vmov.f32	s2, s17
d0040d7a:	ed9f 0a0b 	vldr	s0, [pc, #44]	; d0040da8 <main+0x814>
d0040d7e:	4638      	mov	r0, r7
d0040d80:	f002 fb86 	bl	d0043490 <cameraTurn>
d0040d84:	e6d3      	b.n	d0040b2e <main+0x59a>
d0040d86:	bf00      	nop
d0040d88:	d012da40 	.word	0xd012da40
d0040d8c:	d012da60 	.word	0xd012da60
d0040d90:	d012da21 	.word	0xd012da21
d0040d94:	d012da20 	.word	0xd012da20
d0040d98:	d004832c 	.word	0xd004832c
d0040d9c:	3f0ccccd 	.word	0x3f0ccccd
d0040da0:	d012da22 	.word	0xd012da22
d0040da4:	d012d9e0 	.word	0xd012d9e0
d0040da8:	00000000 	.word	0x00000000
d0040dac:	c3c80000 	.word	0xc3c80000
d0040db0:	42480000 	.word	0x42480000
d0040db4:	c3070000 	.word	0xc3070000

d0040db8 <resetDepthBuffer>:
d0040db8:	f44f 2296 	mov.w	r2, #307200	; 0x4b000
d0040dbc:	21ff      	movs	r1, #255	; 0xff
d0040dbe:	4801      	ldr	r0, [pc, #4]	; (d0040dc4 <resetDepthBuffer+0xc>)
d0040dc0:	f005 bf50 	b.w	d0046c64 <memset>
d0040dc4:	d0048360 	.word	0xd0048360

d0040dc8 <set3DRenderBuffer>:
d0040dc8:	4b01      	ldr	r3, [pc, #4]	; (d0040dd0 <set3DRenderBuffer+0x8>)
d0040dca:	6018      	str	r0, [r3, #0]
d0040dcc:	4770      	bx	lr
d0040dce:	bf00      	nop
d0040dd0:	d012da64 	.word	0xd012da64

d0040dd4 <putPixel>:
d0040dd4:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0040dd8:	d209      	bcs.n	d0040dee <putPixel+0x1a>
d0040dda:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d0040dde:	d206      	bcs.n	d0040dee <putPixel+0x1a>
d0040de0:	4b03      	ldr	r3, [pc, #12]	; (d0040df0 <putPixel+0x1c>)
d0040de2:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d0040de6:	681b      	ldr	r3, [r3, #0]
d0040de8:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d0040dec:	5442      	strb	r2, [r0, r1]
d0040dee:	4770      	bx	lr
d0040df0:	d012da64 	.word	0xd012da64

d0040df4 <drawLine>:
d0040df4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040df8:	b085      	sub	sp, #20
d0040dfa:	eba2 0c00 	sub.w	ip, r2, r0
d0040dfe:	eba3 0901 	sub.w	r9, r3, r1
d0040e02:	f240 1edf 	movw	lr, #479	; 0x1df
d0040e06:	f89d 4038 	ldrb.w	r4, [sp, #56]	; 0x38
d0040e0a:	f240 1a3f 	movw	sl, #319	; 0x13f
d0040e0e:	f8df b07c 	ldr.w	fp, [pc, #124]	; d0040e8c <drawLine+0x98>
d0040e12:	9401      	str	r4, [sp, #4]
d0040e14:	4282      	cmp	r2, r0
d0040e16:	bfcc      	ite	gt
d0040e18:	2401      	movgt	r4, #1
d0040e1a:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d0040e1e:	9402      	str	r4, [sp, #8]
d0040e20:	428b      	cmp	r3, r1
d0040e22:	bfcc      	ite	gt
d0040e24:	2401      	movgt	r4, #1
d0040e26:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d0040e2a:	f1bc 0f00 	cmp.w	ip, #0
d0040e2e:	9403      	str	r4, [sp, #12]
d0040e30:	bfb8      	it	lt
d0040e32:	f1cc 0c00 	rsblt	ip, ip, #0
d0040e36:	f1b9 0f00 	cmp.w	r9, #0
d0040e3a:	bfb8      	it	lt
d0040e3c:	f1c9 0900 	rsblt	r9, r9, #0
d0040e40:	ebac 0409 	sub.w	r4, ip, r9
d0040e44:	f1c9 0800 	rsb	r8, r9, #0
d0040e48:	4570      	cmp	r0, lr
d0040e4a:	eb00 0780 	add.w	r7, r0, r0, lsl #2
d0040e4e:	ea4f 0644 	mov.w	r6, r4, lsl #1
d0040e52:	d807      	bhi.n	d0040e64 <drawLine+0x70>
d0040e54:	4551      	cmp	r1, sl
d0040e56:	d805      	bhi.n	d0040e64 <drawLine+0x70>
d0040e58:	f8db 5000 	ldr.w	r5, [fp]
d0040e5c:	eb05 1587 	add.w	r5, r5, r7, lsl #6
d0040e60:	9f01      	ldr	r7, [sp, #4]
d0040e62:	546f      	strb	r7, [r5, r1]
d0040e64:	4290      	cmp	r0, r2
d0040e66:	d101      	bne.n	d0040e6c <drawLine+0x78>
d0040e68:	4299      	cmp	r1, r3
d0040e6a:	d00c      	beq.n	d0040e86 <drawLine+0x92>
d0040e6c:	ebb8 0f44 	cmp.w	r8, r4, lsl #1
d0040e70:	dc05      	bgt.n	d0040e7e <drawLine+0x8a>
d0040e72:	9d02      	ldr	r5, [sp, #8]
d0040e74:	45b4      	cmp	ip, r6
d0040e76:	eba4 0409 	sub.w	r4, r4, r9
d0040e7a:	4428      	add	r0, r5
d0040e7c:	dbe4      	blt.n	d0040e48 <drawLine+0x54>
d0040e7e:	9d03      	ldr	r5, [sp, #12]
d0040e80:	4464      	add	r4, ip
d0040e82:	4429      	add	r1, r5
d0040e84:	e7e0      	b.n	d0040e48 <drawLine+0x54>
d0040e86:	b005      	add	sp, #20
d0040e88:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040e8c:	d012da64 	.word	0xd012da64

d0040e90 <shadeColor>:
d0040e90:	2900      	cmp	r1, #0
d0040e92:	db09      	blt.n	d0040ea8 <shadeColor+0x18>
d0040e94:	2904      	cmp	r1, #4
d0040e96:	dc09      	bgt.n	d0040eac <shadeColor+0x1c>
d0040e98:	0109      	lsls	r1, r1, #4
d0040e9a:	b2c9      	uxtb	r1, r1
d0040e9c:	f000 000f 	and.w	r0, r0, #15
d0040ea0:	3020      	adds	r0, #32
d0040ea2:	4408      	add	r0, r1
d0040ea4:	b2c0      	uxtb	r0, r0
d0040ea6:	4770      	bx	lr
d0040ea8:	2100      	movs	r1, #0
d0040eaa:	e7f7      	b.n	d0040e9c <shadeColor+0xc>
d0040eac:	2010      	movs	r0, #16
d0040eae:	4770      	bx	lr

d0040eb0 <fillTriangleFlat>:
d0040eb0:	eddf 7ad1 	vldr	s15, [pc, #836]	; d00411f8 <fillTriangleFlat+0x348>
d0040eb4:	eef4 0ae7 	vcmpe.f32	s1, s15
d0040eb8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040ebc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040ec0:	eeb4 1ae7 	vcmpe.f32	s2, s15
d0040ec4:	ed2d 8b10 	vpush	{d8-d15}
d0040ec8:	b089      	sub	sp, #36	; 0x24
d0040eca:	9304      	str	r3, [sp, #16]
d0040ecc:	bf94      	ite	ls
d0040ece:	2301      	movls	r3, #1
d0040ed0:	2300      	movhi	r3, #0
d0040ed2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040ed6:	9001      	str	r0, [sp, #4]
d0040ed8:	9102      	str	r1, [sp, #8]
d0040eda:	bf98      	it	ls
d0040edc:	f043 0301 	orrls.w	r3, r3, #1
d0040ee0:	9203      	str	r2, [sp, #12]
d0040ee2:	f8bd 4090 	ldrh.w	r4, [sp, #144]	; 0x90
d0040ee6:	f8bd 0094 	ldrh.w	r0, [sp, #148]	; 0x94
d0040eea:	f8bd 1098 	ldrh.w	r1, [sp, #152]	; 0x98
d0040eee:	f89d 209c 	ldrb.w	r2, [sp, #156]	; 0x9c
d0040ef2:	2b00      	cmp	r3, #0
d0040ef4:	f040 8154 	bne.w	d00411a0 <fillTriangleFlat+0x2f0>
d0040ef8:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0040efc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040f00:	bf94      	ite	ls
d0040f02:	2701      	movls	r7, #1
d0040f04:	2700      	movhi	r7, #0
d0040f06:	f240 814b 	bls.w	d00411a0 <fillTriangleFlat+0x2f0>
d0040f0a:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0040f0e:	ee07 4a10 	vmov	s14, r4
d0040f12:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0040f16:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0040f1a:	ee87 8a80 	vdiv.f32	s16, s15, s0
d0040f1e:	ee87 2a81 	vdiv.f32	s4, s15, s2
d0040f22:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d0040f26:	ee07 0a90 	vmov	s15, r0
d0040f2a:	ee71 1aa6 	vadd.f32	s3, s3, s13
d0040f2e:	eef8 5a67 	vcvt.f32.u32	s11, s15
d0040f32:	ee07 1a90 	vmov	s15, r1
d0040f36:	ee27 7a08 	vmul.f32	s14, s14, s16
d0040f3a:	eeb8 3a67 	vcvt.f32.u32	s6, s15
d0040f3e:	eefd 7ae1 	vcvt.s32.f32	s15, s3
d0040f42:	ee23 3a02 	vmul.f32	s6, s6, s4
d0040f46:	ee17 3a90 	vmov	r3, s15
d0040f4a:	2b00      	cmp	r3, #0
d0040f4c:	ee65 5a80 	vmul.f32	s11, s11, s0
d0040f50:	f2c0 812d 	blt.w	d00411ae <fillTriangleFlat+0x2fe>
d0040f54:	2b04      	cmp	r3, #4
d0040f56:	f340 8128 	ble.w	d00411aa <fillTriangleFlat+0x2fa>
d0040f5a:	2710      	movs	r7, #16
d0040f5c:	eddd 7a02 	vldr	s15, [sp, #8]
d0040f60:	eddd 6a23 	vldr	s13, [sp, #140]	; 0x8c
d0040f64:	eeb8 5ae7 	vcvt.f32.s32	s10, s15
d0040f68:	eddd 7a04 	vldr	s15, [sp, #16]
d0040f6c:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0040f70:	eef8 3ae7 	vcvt.f32.s32	s7, s15
d0040f74:	eddd 7a01 	vldr	s15, [sp, #4]
d0040f78:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d0040f7c:	eddd 7a03 	vldr	s15, [sp, #12]
d0040f80:	eeb4 5ae3 	vcmpe.f32	s10, s7
d0040f84:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d0040f88:	eddd 7a22 	vldr	s15, [sp, #136]	; 0x88
d0040f8c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040f90:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040f94:	f300 8111 	bgt.w	d00411ba <fillTriangleFlat+0x30a>
d0040f98:	eeb4 5ae6 	vcmpe.f32	s10, s13
d0040f9c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040fa0:	f300 81ee 	bgt.w	d0041380 <fillTriangleFlat+0x4d0>
d0040fa4:	eef4 3ae6 	vcmpe.f32	s7, s13
d0040fa8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040fac:	dd17      	ble.n	d0040fde <fillTriangleFlat+0x12e>
d0040fae:	eeb0 1a65 	vmov.f32	s2, s11
d0040fb2:	eef0 1a40 	vmov.f32	s3, s0
d0040fb6:	eef0 2a63 	vmov.f32	s5, s7
d0040fba:	eeb0 4a64 	vmov.f32	s8, s9
d0040fbe:	eef0 5a43 	vmov.f32	s11, s6
d0040fc2:	eeb0 0a42 	vmov.f32	s0, s4
d0040fc6:	eef0 3a66 	vmov.f32	s7, s13
d0040fca:	eef0 4a67 	vmov.f32	s9, s15
d0040fce:	eeb0 3a41 	vmov.f32	s6, s2
d0040fd2:	eeb0 2a61 	vmov.f32	s4, s3
d0040fd6:	eef0 6a62 	vmov.f32	s13, s5
d0040fda:	eef0 7a44 	vmov.f32	s15, s8
d0040fde:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d0040fe2:	ee75 2a04 	vadd.f32	s5, s10, s8
d0040fe6:	ee36 4a84 	vadd.f32	s8, s13, s8
d0040fea:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d0040fee:	eebd 4ac4 	vcvt.s32.f32	s8, s8
d0040ff2:	ee12 3a90 	vmov	r3, s5
d0040ff6:	ee14 2a10 	vmov	r2, s8
d0040ffa:	4293      	cmp	r3, r2
d0040ffc:	f000 80d0 	beq.w	d00411a0 <fillTriangleFlat+0x2f0>
d0041000:	ee76 2ac5 	vsub.f32	s5, s13, s10
d0041004:	ed9f 9a7c 	vldr	s18, [pc, #496]	; d00411f8 <fillTriangleFlat+0x348>
d0041008:	eef4 2ac9 	vcmpe.f32	s5, s18
d004100c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041010:	f240 80c6 	bls.w	d00411a0 <fillTriangleFlat+0x2f0>
d0041014:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d0041018:	ee37 1ac6 	vsub.f32	s2, s15, s12
d004101c:	ee72 0a48 	vsub.f32	s1, s4, s16
d0041020:	ee81 4aa2 	vdiv.f32	s8, s3, s5
d0041024:	ee73 2ac5 	vsub.f32	s5, s7, s10
d0041028:	ee73 8a47 	vsub.f32	s17, s6, s14
d004102c:	eef4 2ac9 	vcmpe.f32	s5, s18
d0041030:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041034:	ee21 1a04 	vmul.f32	s2, s2, s8
d0041038:	ee60 0a84 	vmul.f32	s1, s1, s8
d004103c:	ee68 8a84 	vmul.f32	s17, s17, s8
d0041040:	f300 80e2 	bgt.w	d0041208 <fillTriangleFlat+0x358>
d0041044:	ee36 4ae3 	vsub.f32	s8, s13, s7
d0041048:	eeb4 4ac9 	vcmpe.f32	s8, s18
d004104c:	ed8d 4a01 	vstr	s8, [sp, #4]
d0041050:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041054:	f340 80a4 	ble.w	d00411a0 <fillTriangleFlat+0x2f0>
d0041058:	eec1 9a84 	vdiv.f32	s19, s3, s8
d004105c:	eef4 2ac9 	vcmpe.f32	s5, s18
d0041060:	ee77 7ae4 	vsub.f32	s15, s15, s9
d0041064:	ee32 4a40 	vsub.f32	s8, s4, s0
d0041068:	ee33 3a65 	vsub.f32	s6, s6, s11
d004106c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041070:	ee67 eaa9 	vmul.f32	s29, s15, s19
d0041074:	ee64 fa29 	vmul.f32	s31, s8, s19
d0041078:	ee23 fa29 	vmul.f32	s30, s6, s19
d004107c:	f300 8315 	bgt.w	d00416aa <fillTriangleFlat+0x7fa>
d0041080:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0041084:	edcd 7a02 	vstr	s15, [sp, #8]
d0041088:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d004108c:	f240 133f 	movw	r3, #319	; 0x13f
d0041090:	9a02      	ldr	r2, [sp, #8]
d0041092:	ee17 ea90 	vmov	lr, s15
d0041096:	ea22 7be2 	bic.w	fp, r2, r2, asr #31
d004109a:	f10e 3eff 	add.w	lr, lr, #4294967295	; 0xffffffff
d004109e:	459e      	cmp	lr, r3
d00410a0:	bfa8      	it	ge
d00410a2:	469e      	movge	lr, r3
d00410a4:	45f3      	cmp	fp, lr
d00410a6:	dc7b      	bgt.n	d00411a0 <fillTriangleFlat+0x2f0>
d00410a8:	ee07 ba90 	vmov	s15, fp
d00410ac:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d00410b0:	f10e 0e01 	add.w	lr, lr, #1
d00410b4:	ed9f 9a50 	vldr	s18, [pc, #320]	; d00411f8 <fillTriangleFlat+0x348>
d00410b8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00410bc:	eddf 1a4f 	vldr	s3, [pc, #316]	; d00411fc <fillTriangleFlat+0x34c>
d00410c0:	ed9f 2a4f 	vldr	s4, [pc, #316]	; d0041200 <fillTriangleFlat+0x350>
d00410c4:	eddf 9a4f 	vldr	s19, [pc, #316]	; d0041204 <fillTriangleFlat+0x354>
d00410c8:	ee77 7aa6 	vadd.f32	s15, s15, s13
d00410cc:	ee37 5ac5 	vsub.f32	s10, s15, s10
d00410d0:	ee77 3ae3 	vsub.f32	s7, s15, s7
d00410d4:	eea1 6a05 	vfma.f32	s12, s2, s10
d00410d8:	eea0 8a85 	vfma.f32	s16, s1, s10
d00410dc:	eea8 7a85 	vfma.f32	s14, s17, s10
d00410e0:	eee3 4aae 	vfma.f32	s9, s7, s29
d00410e4:	eea3 0aaf 	vfma.f32	s0, s7, s31
d00410e8:	eeef 5a23 	vfma.f32	s11, s30, s7
d00410ec:	e032      	b.n	d0041154 <fillTriangleFlat+0x2a4>
d00410ee:	eef0 3a47 	vmov.f32	s7, s14
d00410f2:	eef0 2a48 	vmov.f32	s5, s16
d00410f6:	eef0 6a46 	vmov.f32	s13, s12
d00410fa:	eeb0 3a65 	vmov.f32	s6, s11
d00410fe:	eeb0 5a40 	vmov.f32	s10, s0
d0041102:	eeb0 4a64 	vmov.f32	s8, s9
d0041106:	fefa 7a66 	vrintp.f32	s15, s13
d004110a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004110e:	f240 13df 	movw	r3, #479	; 0x1df
d0041112:	ee17 6a90 	vmov	r6, s15
d0041116:	fefa 7a44 	vrintp.f32	s15, s8
d004111a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004111e:	3e01      	subs	r6, #1
d0041120:	ee17 4a90 	vmov	r4, s15
d0041124:	429e      	cmp	r6, r3
d0041126:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d004112a:	bfa8      	it	ge
d004112c:	461e      	movge	r6, r3
d004112e:	42a6      	cmp	r6, r4
d0041130:	f280 8158 	bge.w	d00413e4 <fillTriangleFlat+0x534>
d0041134:	f10b 0b01 	add.w	fp, fp, #1
d0041138:	ee36 6a01 	vadd.f32	s12, s12, s2
d004113c:	ee38 8a20 	vadd.f32	s16, s16, s1
d0041140:	45f3      	cmp	fp, lr
d0041142:	ee37 7a28 	vadd.f32	s14, s14, s17
d0041146:	ee74 4aae 	vadd.f32	s9, s9, s29
d004114a:	ee30 0a2f 	vadd.f32	s0, s0, s31
d004114e:	ee75 5a8f 	vadd.f32	s11, s11, s30
d0041152:	d025      	beq.n	d00411a0 <fillTriangleFlat+0x2f0>
d0041154:	eeb4 6ae4 	vcmpe.f32	s12, s9
d0041158:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004115c:	dcc7      	bgt.n	d00410ee <fillTriangleFlat+0x23e>
d004115e:	eef0 3a65 	vmov.f32	s7, s11
d0041162:	eef0 2a40 	vmov.f32	s5, s0
d0041166:	eef0 6a64 	vmov.f32	s13, s9
d004116a:	eeb0 3a47 	vmov.f32	s6, s14
d004116e:	eeb0 5a48 	vmov.f32	s10, s16
d0041172:	eeb0 4a46 	vmov.f32	s8, s12
d0041176:	e7c6      	b.n	d0041106 <fillTriangleFlat+0x256>
d0041178:	eddd 6a03 	vldr	s13, [sp, #12]
d004117c:	eddd 4a04 	vldr	s9, [sp, #16]
d0041180:	ed9d 7a05 	vldr	s14, [sp, #20]
d0041184:	ed9d 8a06 	vldr	s16, [sp, #24]
d0041188:	ed9d 5a07 	vldr	s10, [sp, #28]
d004118c:	eddf 7a1a 	vldr	s15, [pc, #104]	; d00411f8 <fillTriangleFlat+0x348>
d0041190:	ed9d 4a01 	vldr	s8, [sp, #4]
d0041194:	eeb4 4ae7 	vcmpe.f32	s8, s15
d0041198:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004119c:	f73f af74 	bgt.w	d0041088 <fillTriangleFlat+0x1d8>
d00411a0:	b009      	add	sp, #36	; 0x24
d00411a2:	ecbd 8b10 	vpop	{d8-d15}
d00411a6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00411aa:	011b      	lsls	r3, r3, #4
d00411ac:	b2df      	uxtb	r7, r3
d00411ae:	f002 020f 	and.w	r2, r2, #15
d00411b2:	3220      	adds	r2, #32
d00411b4:	4417      	add	r7, r2
d00411b6:	b2ff      	uxtb	r7, r7
d00411b8:	e6d0      	b.n	d0040f5c <fillTriangleFlat+0xac>
d00411ba:	eef4 3ae6 	vcmpe.f32	s7, s13
d00411be:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00411c2:	f340 80f6 	ble.w	d00413b2 <fillTriangleFlat+0x502>
d00411c6:	eeb0 1a43 	vmov.f32	s2, s6
d00411ca:	eef0 1a42 	vmov.f32	s3, s4
d00411ce:	eef0 2a66 	vmov.f32	s5, s13
d00411d2:	eeb0 4a67 	vmov.f32	s8, s15
d00411d6:	eeb0 3a47 	vmov.f32	s6, s14
d00411da:	eeb0 2a48 	vmov.f32	s4, s16
d00411de:	eef0 6a45 	vmov.f32	s13, s10
d00411e2:	eef0 7a46 	vmov.f32	s15, s12
d00411e6:	eeb0 7a41 	vmov.f32	s14, s2
d00411ea:	eeb0 8a61 	vmov.f32	s16, s3
d00411ee:	eeb0 5a62 	vmov.f32	s10, s5
d00411f2:	eeb0 6a44 	vmov.f32	s12, s8
d00411f6:	e6f2      	b.n	d0040fde <fillTriangleFlat+0x12e>
d00411f8:	38d1b717 	.word	0x38d1b717
d00411fc:	33d6bf95 	.word	0x33d6bf95
d0041200:	00000000 	.word	0x00000000
d0041204:	477fff00 	.word	0x477fff00
d0041208:	ee81 4aa2 	vdiv.f32	s8, s3, s5
d004120c:	ee76 aae3 	vsub.f32	s21, s13, s7
d0041210:	ee34 aac6 	vsub.f32	s20, s9, s12
d0041214:	ee70 9a48 	vsub.f32	s19, s0, s16
d0041218:	ee75 2ac7 	vsub.f32	s5, s11, s14
d004121c:	edcd aa01 	vstr	s21, [sp, #4]
d0041220:	eef4 aac9 	vcmpe.f32	s21, s18
d0041224:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041228:	ee2a aa04 	vmul.f32	s20, s20, s8
d004122c:	ee69 9a84 	vmul.f32	s19, s19, s8
d0041230:	ee22 4a84 	vmul.f32	s8, s5, s8
d0041234:	eeb0 ba4a 	vmov.f32	s22, s20
d0041238:	eef0 da44 	vmov.f32	s27, s8
d004123c:	f340 822e 	ble.w	d004169c <fillTriangleFlat+0x7ec>
d0041240:	eec1 2aaa 	vdiv.f32	s5, s3, s21
d0041244:	ee77 7ae4 	vsub.f32	s15, s15, s9
d0041248:	ee32 4a40 	vsub.f32	s8, s4, s0
d004124c:	ee33 3a65 	vsub.f32	s6, s6, s11
d0041250:	ee67 eaa2 	vmul.f32	s29, s15, s5
d0041254:	ee64 fa22 	vmul.f32	s31, s8, s5
d0041258:	ee23 fa22 	vmul.f32	s30, s6, s5
d004125c:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0041260:	f240 133f 	movw	r3, #319	; 0x13f
d0041264:	ee17 2a90 	vmov	r2, s15
d0041268:	edcd 7a02 	vstr	s15, [sp, #8]
d004126c:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d0041270:	f102 3bff 	add.w	fp, r2, #4294967295	; 0xffffffff
d0041274:	ee17 aa90 	vmov	sl, s15
d0041278:	459b      	cmp	fp, r3
d004127a:	ea2a 7aea 	bic.w	sl, sl, sl, asr #31
d004127e:	bfa8      	it	ge
d0041280:	469b      	movge	fp, r3
d0041282:	45d3      	cmp	fp, sl
d0041284:	db82      	blt.n	d004118c <fillTriangleFlat+0x2dc>
d0041286:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004128a:	f10b 0b01 	add.w	fp, fp, #1
d004128e:	eeb0 aa46 	vmov.f32	s20, s12
d0041292:	ed1f da26 	vldr	s26, [pc, #-152]	; d00411fc <fillTriangleFlat+0x34c>
d0041296:	eef0 aa46 	vmov.f32	s21, s12
d004129a:	ed1f 3a27 	vldr	s6, [pc, #-156]	; d0041200 <fillTriangleFlat+0x350>
d004129e:	ee37 4ac5 	vsub.f32	s8, s15, s10
d00412a2:	ee07 aa90 	vmov	s15, sl
d00412a6:	eef0 ca48 	vmov.f32	s25, s16
d00412aa:	ed1f 2a2a 	vldr	s4, [pc, #-168]	; d0041204 <fillTriangleFlat+0x354>
d00412ae:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00412b2:	edcd 6a03 	vstr	s13, [sp, #12]
d00412b6:	eeb0 ca47 	vmov.f32	s24, s14
d00412ba:	edcd 4a04 	vstr	s9, [sp, #16]
d00412be:	eeb0 9a4b 	vmov.f32	s18, s22
d00412c2:	ed8d 7a05 	vstr	s14, [sp, #20]
d00412c6:	ee77 7a84 	vadd.f32	s15, s15, s8
d00412ca:	ed8d 8a06 	vstr	s16, [sp, #24]
d00412ce:	eef0 ba48 	vmov.f32	s23, s16
d00412d2:	ed8d 5a07 	vstr	s10, [sp, #28]
d00412d6:	eea7 aa8b 	vfma.f32	s20, s15, s22
d00412da:	eeb0 ba47 	vmov.f32	s22, s14
d00412de:	eee1 aa27 	vfma.f32	s21, s2, s15
d00412e2:	eee0 caa7 	vfma.f32	s25, s1, s15
d00412e6:	eea8 caa7 	vfma.f32	s24, s17, s15
d00412ea:	eee7 baa9 	vfma.f32	s23, s15, s19
d00412ee:	eea7 baad 	vfma.f32	s22, s15, s27
d00412f2:	e033      	b.n	d004135c <fillTriangleFlat+0x4ac>
d00412f4:	eeb0 4a4c 	vmov.f32	s8, s24
d00412f8:	eef0 4a6c 	vmov.f32	s9, s25
d00412fc:	eef0 7a6a 	vmov.f32	s15, s21
d0041300:	eeb0 5a4b 	vmov.f32	s10, s22
d0041304:	eeb0 7a6b 	vmov.f32	s14, s23
d0041308:	eef0 6a4a 	vmov.f32	s13, s20
d004130c:	fefa 2a67 	vrintp.f32	s5, s15
d0041310:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d0041314:	f240 13df 	movw	r3, #479	; 0x1df
d0041318:	ee12 6a90 	vmov	r6, s5
d004131c:	fefa 2a66 	vrintp.f32	s5, s13
d0041320:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d0041324:	3e01      	subs	r6, #1
d0041326:	ee12 4a90 	vmov	r4, s5
d004132a:	429e      	cmp	r6, r3
d004132c:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d0041330:	bfa8      	it	ge
d0041332:	461e      	movge	r6, r3
d0041334:	42a6      	cmp	r6, r4
d0041336:	f280 80fd 	bge.w	d0041534 <fillTriangleFlat+0x684>
d004133a:	f10a 0a01 	add.w	sl, sl, #1
d004133e:	ee7a aa81 	vadd.f32	s21, s21, s2
d0041342:	ee7c caa0 	vadd.f32	s25, s25, s1
d0041346:	45da      	cmp	sl, fp
d0041348:	ee3c ca28 	vadd.f32	s24, s24, s17
d004134c:	ee3a aa09 	vadd.f32	s20, s20, s18
d0041350:	ee7b baa9 	vadd.f32	s23, s23, s19
d0041354:	ee3b ba2d 	vadd.f32	s22, s22, s27
d0041358:	f43f af0e 	beq.w	d0041178 <fillTriangleFlat+0x2c8>
d004135c:	eef4 aaca 	vcmpe.f32	s21, s20
d0041360:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041364:	dcc6      	bgt.n	d00412f4 <fillTriangleFlat+0x444>
d0041366:	eeb0 4a4b 	vmov.f32	s8, s22
d004136a:	eef0 4a6b 	vmov.f32	s9, s23
d004136e:	eef0 7a4a 	vmov.f32	s15, s20
d0041372:	eeb0 5a4c 	vmov.f32	s10, s24
d0041376:	eeb0 7a6c 	vmov.f32	s14, s25
d004137a:	eef0 6a6a 	vmov.f32	s13, s21
d004137e:	e7c5      	b.n	d004130c <fillTriangleFlat+0x45c>
d0041380:	eeb0 1a47 	vmov.f32	s2, s14
d0041384:	eef0 1a48 	vmov.f32	s3, s16
d0041388:	eef0 2a45 	vmov.f32	s5, s10
d004138c:	eeb0 4a46 	vmov.f32	s8, s12
d0041390:	eeb0 7a43 	vmov.f32	s14, s6
d0041394:	eeb0 8a42 	vmov.f32	s16, s4
d0041398:	eeb0 5a66 	vmov.f32	s10, s13
d004139c:	eeb0 6a67 	vmov.f32	s12, s15
d00413a0:	eeb0 3a41 	vmov.f32	s6, s2
d00413a4:	eeb0 2a61 	vmov.f32	s4, s3
d00413a8:	eef0 6a62 	vmov.f32	s13, s5
d00413ac:	eef0 7a44 	vmov.f32	s15, s8
d00413b0:	e5f8      	b.n	d0040fa4 <fillTriangleFlat+0xf4>
d00413b2:	eeb0 1a47 	vmov.f32	s2, s14
d00413b6:	eef0 1a48 	vmov.f32	s3, s16
d00413ba:	eef0 2a45 	vmov.f32	s5, s10
d00413be:	eeb0 4a46 	vmov.f32	s8, s12
d00413c2:	eeb0 7a65 	vmov.f32	s14, s11
d00413c6:	eeb0 8a40 	vmov.f32	s16, s0
d00413ca:	eeb0 5a63 	vmov.f32	s10, s7
d00413ce:	eeb0 6a64 	vmov.f32	s12, s9
d00413d2:	eef0 5a41 	vmov.f32	s11, s2
d00413d6:	eeb0 0a61 	vmov.f32	s0, s3
d00413da:	eef0 3a62 	vmov.f32	s7, s5
d00413de:	eef0 4a44 	vmov.f32	s9, s8
d00413e2:	e5df      	b.n	d0040fa4 <fillTriangleFlat+0xf4>
d00413e4:	ee76 6ac4 	vsub.f32	s13, s13, s8
d00413e8:	eef4 6ac9 	vcmpe.f32	s13, s18
d00413ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00413f0:	f340 814f 	ble.w	d0041692 <fillTriangleFlat+0x7e2>
d00413f4:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00413f8:	ee72 2ac5 	vsub.f32	s5, s5, s10
d00413fc:	ee73 3ac3 	vsub.f32	s7, s7, s6
d0041400:	ee87 aaa6 	vdiv.f32	s20, s15, s13
d0041404:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0041408:	ee37 4ac4 	vsub.f32	s8, s15, s8
d004140c:	ee07 4a90 	vmov	s15, r4
d0041410:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041414:	ee77 7a84 	vadd.f32	s15, s15, s8
d0041418:	ee62 2a8a 	vmul.f32	s5, s5, s20
d004141c:	ee23 aa8a 	vmul.f32	s20, s7, s20
d0041420:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0041424:	eea7 3a8a 	vfma.f32	s6, s15, s20
d0041428:	ebcb 180b 	rsb	r8, fp, fp, lsl #4
d004142c:	4ba3      	ldr	r3, [pc, #652]	; (d00416bc <fillTriangleFlat+0x80c>)
d004142e:	eb04 0c84 	add.w	ip, r4, r4, lsl #2
d0041432:	4aa3      	ldr	r2, [pc, #652]	; (d00416c0 <fillTriangleFlat+0x810>)
d0041434:	681b      	ldr	r3, [r3, #0]
d0041436:	eb04 1848 	add.w	r8, r4, r8, lsl #5
d004143a:	eb0b 1c8c 	add.w	ip, fp, ip, lsl #6
d004143e:	eef6 3a00 	vmov.f32	s7, #96	; 0x3f000000  0.5
d0041442:	eb02 0848 	add.w	r8, r2, r8, lsl #1
d0041446:	449c      	add	ip, r3
d0041448:	e011      	b.n	d004146e <fillTriangleFlat+0x5be>
d004144a:	ee07 1a90 	vmov	s15, r1
d004144e:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0041452:	eb08 0841 	add.w	r8, r8, r1, lsl #1
d0041456:	440c      	add	r4, r1
d0041458:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004145c:	eb0c 1c83 	add.w	ip, ip, r3, lsl #6
d0041460:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0041464:	eea7 3a8a 	vfma.f32	s6, s15, s20
d0041468:	42a6      	cmp	r6, r4
d004146a:	f6ff ae63 	blt.w	d0041134 <fillTriangleFlat+0x284>
d004146e:	eba6 0904 	sub.w	r9, r6, r4
d0041472:	eeb4 5ae1 	vcmpe.f32	s10, s3
d0041476:	f109 0101 	add.w	r1, r9, #1
d004147a:	2930      	cmp	r1, #48	; 0x30
d004147c:	bfa8      	it	ge
d004147e:	2130      	movge	r1, #48	; 0x30
d0041480:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041484:	d9e1      	bls.n	d004144a <fillTriangleFlat+0x59a>
d0041486:	f1b9 0f00 	cmp.w	r9, #0
d004148a:	eec3 6a05 	vdiv.f32	s13, s6, s10
d004148e:	dd4d      	ble.n	d004152c <fillTriangleFlat+0x67c>
d0041490:	1e4b      	subs	r3, r1, #1
d0041492:	ee07 3a90 	vmov	s15, r3
d0041496:	eeb0 4a45 	vmov.f32	s8, s10
d004149a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004149e:	eea7 4aa2 	vfma.f32	s8, s15, s5
d00414a2:	eeb4 4ae1 	vcmpe.f32	s8, s3
d00414a6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00414aa:	dd40      	ble.n	d004152e <fillTriangleFlat+0x67e>
d00414ac:	eeb0 ba43 	vmov.f32	s22, s6
d00414b0:	eea7 ba8a 	vfma.f32	s22, s15, s20
d00414b4:	eecb aa04 	vdiv.f32	s21, s22, s8
d00414b8:	ee7a aae6 	vsub.f32	s21, s21, s13
d00414bc:	ee8a 4aa7 	vdiv.f32	s8, s21, s15
d00414c0:	f1a8 0002 	sub.w	r0, r8, #2
d00414c4:	2300      	movs	r3, #0
d00414c6:	fec6 7a82 	vmaxnm.f32	s15, s13, s4
d00414ca:	fec7 7ae9 	vminnm.f32	s15, s15, s19
d00414ce:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d00414d2:	f830 5f02 	ldrh.w	r5, [r0, #2]!
d00414d6:	3301      	adds	r3, #1
d00414d8:	ee77 7aa3 	vadd.f32	s15, s15, s7
d00414dc:	ea4f 1a82 	mov.w	sl, r2, lsl #6
d00414e0:	ee76 6a84 	vadd.f32	s13, s13, s8
d00414e4:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00414e8:	ee17 2a90 	vmov	r2, s15
d00414ec:	b292      	uxth	r2, r2
d00414ee:	4295      	cmp	r5, r2
d00414f0:	d902      	bls.n	d00414f8 <fillTriangleFlat+0x648>
d00414f2:	8002      	strh	r2, [r0, #0]
d00414f4:	f80c 700a 	strb.w	r7, [ip, sl]
d00414f8:	4299      	cmp	r1, r3
d00414fa:	dce4      	bgt.n	d00414c6 <fillTriangleFlat+0x616>
d00414fc:	f1b9 0f00 	cmp.w	r9, #0
d0041500:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0041504:	ea4f 0241 	mov.w	r2, r1, lsl #1
d0041508:	ea4f 1383 	mov.w	r3, r3, lsl #6
d004150c:	bfbc      	itt	lt
d004150e:	2202      	movlt	r2, #2
d0041510:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0041514:	4490      	add	r8, r2
d0041516:	449c      	add	ip, r3
d0041518:	ee07 1a90 	vmov	s15, r1
d004151c:	440c      	add	r4, r1
d004151e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041522:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0041526:	eea7 3a8a 	vfma.f32	s6, s15, s20
d004152a:	e79d      	b.n	d0041468 <fillTriangleFlat+0x5b8>
d004152c:	d1f4      	bne.n	d0041518 <fillTriangleFlat+0x668>
d004152e:	eeb0 4a42 	vmov.f32	s8, s4
d0041532:	e7c5      	b.n	d00414c0 <fillTriangleFlat+0x610>
d0041534:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0041538:	eddf 2a62 	vldr	s5, [pc, #392]	; d00416c4 <fillTriangleFlat+0x814>
d004153c:	eef4 7ae2 	vcmpe.f32	s15, s5
d0041540:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041544:	f340 80a0 	ble.w	d0041688 <fillTriangleFlat+0x7d8>
d0041548:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d004154c:	ee74 4ac7 	vsub.f32	s9, s9, s14
d0041550:	ee34 4a45 	vsub.f32	s8, s8, s10
d0041554:	eec1 2aa7 	vdiv.f32	s5, s3, s15
d0041558:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004155c:	ee77 6ae6 	vsub.f32	s13, s15, s13
d0041560:	ee07 4a90 	vmov	s15, r4
d0041564:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041568:	ee77 7aa6 	vadd.f32	s15, s15, s13
d004156c:	ee64 4aa2 	vmul.f32	s9, s9, s5
d0041570:	ee24 4a22 	vmul.f32	s8, s8, s5
d0041574:	eea7 7aa4 	vfma.f32	s14, s15, s9
d0041578:	eea7 5a84 	vfma.f32	s10, s15, s8
d004157c:	ebca 1e0a 	rsb	lr, sl, sl, lsl #4
d0041580:	4b4e      	ldr	r3, [pc, #312]	; (d00416bc <fillTriangleFlat+0x80c>)
d0041582:	eb04 0c84 	add.w	ip, r4, r4, lsl #2
d0041586:	4a4e      	ldr	r2, [pc, #312]	; (d00416c0 <fillTriangleFlat+0x810>)
d0041588:	681b      	ldr	r3, [r3, #0]
d004158a:	eb04 1e4e 	add.w	lr, r4, lr, lsl #5
d004158e:	eb0a 1c8c 	add.w	ip, sl, ip, lsl #6
d0041592:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0041596:	eb02 0e4e 	add.w	lr, r2, lr, lsl #1
d004159a:	449c      	add	ip, r3
d004159c:	e011      	b.n	d00415c2 <fillTriangleFlat+0x712>
d004159e:	ee07 1a90 	vmov	s15, r1
d00415a2:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d00415a6:	eb0e 0e41 	add.w	lr, lr, r1, lsl #1
d00415aa:	440c      	add	r4, r1
d00415ac:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00415b0:	eb0c 1c83 	add.w	ip, ip, r3, lsl #6
d00415b4:	eea7 7aa4 	vfma.f32	s14, s15, s9
d00415b8:	eea7 5a84 	vfma.f32	s10, s15, s8
d00415bc:	42b4      	cmp	r4, r6
d00415be:	f73f aebc 	bgt.w	d004133a <fillTriangleFlat+0x48a>
d00415c2:	eba6 0804 	sub.w	r8, r6, r4
d00415c6:	eeb4 7acd 	vcmpe.f32	s14, s26
d00415ca:	f108 0101 	add.w	r1, r8, #1
d00415ce:	2930      	cmp	r1, #48	; 0x30
d00415d0:	bfa8      	it	ge
d00415d2:	2130      	movge	r1, #48	; 0x30
d00415d4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00415d8:	d9e1      	bls.n	d004159e <fillTriangleFlat+0x6ee>
d00415da:	f1b8 0f00 	cmp.w	r8, #0
d00415de:	eec5 2a07 	vdiv.f32	s5, s10, s14
d00415e2:	dd4d      	ble.n	d0041680 <fillTriangleFlat+0x7d0>
d00415e4:	1e4b      	subs	r3, r1, #1
d00415e6:	ee07 3a90 	vmov	s15, r3
d00415ea:	eef0 1a47 	vmov.f32	s3, s14
d00415ee:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00415f2:	eee7 1aa4 	vfma.f32	s3, s15, s9
d00415f6:	eef4 1acd 	vcmpe.f32	s3, s26
d00415fa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00415fe:	dd40      	ble.n	d0041682 <fillTriangleFlat+0x7d2>
d0041600:	eeb0 ea45 	vmov.f32	s28, s10
d0041604:	eea7 ea84 	vfma.f32	s28, s15, s8
d0041608:	ee8e 8a21 	vdiv.f32	s16, s28, s3
d004160c:	ee38 8a62 	vsub.f32	s16, s16, s5
d0041610:	eec8 1a27 	vdiv.f32	s3, s16, s15
d0041614:	f1ae 0002 	sub.w	r0, lr, #2
d0041618:	2200      	movs	r2, #0
d004161a:	fec2 7a83 	vmaxnm.f32	s15, s5, s6
d004161e:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d0041622:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0041626:	f830 5f02 	ldrh.w	r5, [r0, #2]!
d004162a:	3201      	adds	r2, #1
d004162c:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0041630:	ea4f 1983 	mov.w	r9, r3, lsl #6
d0041634:	ee72 2aa1 	vadd.f32	s5, s5, s3
d0041638:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004163c:	ee17 3a90 	vmov	r3, s15
d0041640:	b29b      	uxth	r3, r3
d0041642:	429d      	cmp	r5, r3
d0041644:	d902      	bls.n	d004164c <fillTriangleFlat+0x79c>
d0041646:	8003      	strh	r3, [r0, #0]
d0041648:	f80c 7009 	strb.w	r7, [ip, r9]
d004164c:	428a      	cmp	r2, r1
d004164e:	dbe4      	blt.n	d004161a <fillTriangleFlat+0x76a>
d0041650:	f1b8 0f00 	cmp.w	r8, #0
d0041654:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0041658:	ea4f 0241 	mov.w	r2, r1, lsl #1
d004165c:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0041660:	bfbc      	itt	lt
d0041662:	2202      	movlt	r2, #2
d0041664:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0041668:	4496      	add	lr, r2
d004166a:	449c      	add	ip, r3
d004166c:	ee07 1a90 	vmov	s15, r1
d0041670:	440c      	add	r4, r1
d0041672:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041676:	eea7 7aa4 	vfma.f32	s14, s15, s9
d004167a:	eea7 5a84 	vfma.f32	s10, s15, s8
d004167e:	e79d      	b.n	d00415bc <fillTriangleFlat+0x70c>
d0041680:	d1f4      	bne.n	d004166c <fillTriangleFlat+0x7bc>
d0041682:	eef0 1a43 	vmov.f32	s3, s6
d0041686:	e7c5      	b.n	d0041614 <fillTriangleFlat+0x764>
d0041688:	eeb0 4a43 	vmov.f32	s8, s6
d004168c:	eef0 4a43 	vmov.f32	s9, s6
d0041690:	e774      	b.n	d004157c <fillTriangleFlat+0x6cc>
d0041692:	eeb0 aa42 	vmov.f32	s20, s4
d0041696:	eef0 2a42 	vmov.f32	s5, s4
d004169a:	e6c5      	b.n	d0041428 <fillTriangleFlat+0x578>
d004169c:	ed9f fa0a 	vldr	s30, [pc, #40]	; d00416c8 <fillTriangleFlat+0x818>
d00416a0:	eef0 fa4f 	vmov.f32	s31, s30
d00416a4:	eef0 ea4f 	vmov.f32	s29, s30
d00416a8:	e5d8      	b.n	d004125c <fillTriangleFlat+0x3ac>
d00416aa:	eddf 7a07 	vldr	s15, [pc, #28]	; d00416c8 <fillTriangleFlat+0x818>
d00416ae:	eef0 da67 	vmov.f32	s27, s15
d00416b2:	eef0 9a67 	vmov.f32	s19, s15
d00416b6:	eeb0 ba67 	vmov.f32	s22, s15
d00416ba:	e5cf      	b.n	d004125c <fillTriangleFlat+0x3ac>
d00416bc:	d012da64 	.word	0xd012da64
d00416c0:	d0048360 	.word	0xd0048360
d00416c4:	38d1b717 	.word	0x38d1b717
d00416c8:	00000000 	.word	0x00000000

d00416cc <fillTriangleDitherBayer>:
d00416cc:	eddf 7ae7 	vldr	s15, [pc, #924]	; d0041a6c <fillTriangleDitherBayer+0x3a0>
d00416d0:	eef4 0ae7 	vcmpe.f32	s1, s15
d00416d4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00416d8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00416dc:	eeb4 1ae7 	vcmpe.f32	s2, s15
d00416e0:	ed2d 8b10 	vpush	{d8-d15}
d00416e4:	b08f      	sub	sp, #60	; 0x3c
d00416e6:	9202      	str	r2, [sp, #8]
d00416e8:	bf94      	ite	ls
d00416ea:	2201      	movls	r2, #1
d00416ec:	2200      	movhi	r2, #0
d00416ee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00416f2:	9303      	str	r3, [sp, #12]
d00416f4:	f8bd 40a8 	ldrh.w	r4, [sp, #168]	; 0xa8
d00416f8:	bf98      	it	ls
d00416fa:	f042 0201 	orrls.w	r2, r2, #1
d00416fe:	f89d 30b4 	ldrb.w	r3, [sp, #180]	; 0xb4
d0041702:	e9cd 0100 	strd	r0, r1, [sp]
d0041706:	f8bd 00ac 	ldrh.w	r0, [sp, #172]	; 0xac
d004170a:	f8bd 10b0 	ldrh.w	r1, [sp, #176]	; 0xb0
d004170e:	2a00      	cmp	r2, #0
d0041710:	f040 8187 	bne.w	d0041a22 <fillTriangleDitherBayer+0x356>
d0041714:	eeb4 0a67 	vcmp.f32	s0, s15
d0041718:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004171c:	f240 8181 	bls.w	d0041a22 <fillTriangleDitherBayer+0x356>
d0041720:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0041724:	eddf 7ad3 	vldr	s15, [pc, #844]	; d0041a74 <fillTriangleDitherBayer+0x3a8>
d0041728:	eeb1 6a04 	vmov.f32	s12, #20	; 0x40a00000  5.0
d004172c:	ee07 4a10 	vmov	s14, r4
d0041730:	fec1 7aa7 	vmaxnm.f32	s15, s3, s15
d0041734:	ee86 3a81 	vdiv.f32	s6, s13, s2
d0041738:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d004173c:	eec6 1a80 	vdiv.f32	s3, s13, s0
d0041740:	ee86 0aa0 	vdiv.f32	s0, s13, s1
d0041744:	eefd 6ae7 	vcvt.s32.f32	s13, s15
d0041748:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d004174c:	ee16 2a90 	vmov	r2, s13
d0041750:	ee06 0a90 	vmov	s13, r0
d0041754:	eef8 5a66 	vcvt.f32.u32	s11, s13
d0041758:	ee06 1a90 	vmov	s13, r1
d004175c:	1c51      	adds	r1, r2, #1
d004175e:	ee27 7a21 	vmul.f32	s14, s14, s3
d0041762:	eef8 6a66 	vcvt.f32.u32	s13, s13
d0041766:	2905      	cmp	r1, #5
d0041768:	bfa8      	it	ge
d004176a:	2105      	movge	r1, #5
d004176c:	2a04      	cmp	r2, #4
d004176e:	ee65 5a80 	vmul.f32	s11, s11, s0
d0041772:	ee26 2a83 	vmul.f32	s4, s13, s6
d0041776:	f300 8457 	bgt.w	d0042028 <fillTriangleDitherBayer+0x95c>
d004177a:	f003 030f 	and.w	r3, r3, #15
d004177e:	2a03      	cmp	r2, #3
d0041780:	f103 0320 	add.w	r3, r3, #32
d0041784:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d0041788:	fa5f fa80 	uxtb.w	sl, r0
d004178c:	f300 844e 	bgt.w	d004202c <fillTriangleDitherBayer+0x960>
d0041790:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d0041794:	b2db      	uxtb	r3, r3
d0041796:	9304      	str	r3, [sp, #16]
d0041798:	eddd 6a01 	vldr	s13, [sp, #4]
d004179c:	eeb8 5ae6 	vcvt.f32.s32	s10, s13
d00417a0:	eddd 6a03 	vldr	s13, [sp, #12]
d00417a4:	eef8 3ae6 	vcvt.f32.s32	s7, s13
d00417a8:	eddd 6a00 	vldr	s13, [sp]
d00417ac:	eeb8 6ae6 	vcvt.f32.s32	s12, s13
d00417b0:	eddd 6a02 	vldr	s13, [sp, #8]
d00417b4:	eeb4 5ae3 	vcmpe.f32	s10, s7
d00417b8:	eef8 4ae6 	vcvt.f32.s32	s9, s13
d00417bc:	eddd 6a28 	vldr	s13, [sp, #160]	; 0xa0
d00417c0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00417c4:	eeb8 1ae6 	vcvt.f32.s32	s2, s13
d00417c8:	eddd 6a29 	vldr	s13, [sp, #164]	; 0xa4
d00417cc:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d00417d0:	f300 812c 	bgt.w	d0041a2c <fillTriangleDitherBayer+0x360>
d00417d4:	eeb4 5ae6 	vcmpe.f32	s10, s13
d00417d8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00417dc:	f300 8231 	bgt.w	d0041c42 <fillTriangleDitherBayer+0x576>
d00417e0:	eef4 3ae6 	vcmpe.f32	s7, s13
d00417e4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00417e8:	dd17      	ble.n	d004181a <fillTriangleDitherBayer+0x14e>
d00417ea:	eeb0 8a65 	vmov.f32	s16, s11
d00417ee:	eef0 0a40 	vmov.f32	s1, s0
d00417f2:	eef0 2a63 	vmov.f32	s5, s7
d00417f6:	eeb0 4a64 	vmov.f32	s8, s9
d00417fa:	eef0 5a42 	vmov.f32	s11, s4
d00417fe:	eeb0 0a43 	vmov.f32	s0, s6
d0041802:	eef0 3a66 	vmov.f32	s7, s13
d0041806:	eef0 4a41 	vmov.f32	s9, s2
d004180a:	eeb0 2a48 	vmov.f32	s4, s16
d004180e:	eeb0 3a60 	vmov.f32	s6, s1
d0041812:	eef0 6a62 	vmov.f32	s13, s5
d0041816:	eeb0 1a44 	vmov.f32	s2, s8
d004181a:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d004181e:	ee75 2a04 	vadd.f32	s5, s10, s8
d0041822:	ee36 4a84 	vadd.f32	s8, s13, s8
d0041826:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d004182a:	eebd 4ac4 	vcvt.s32.f32	s8, s8
d004182e:	ee12 3a90 	vmov	r3, s5
d0041832:	ee14 1a10 	vmov	r1, s8
d0041836:	428b      	cmp	r3, r1
d0041838:	f000 80f3 	beq.w	d0041a22 <fillTriangleDitherBayer+0x356>
d004183c:	ee76 8ac5 	vsub.f32	s17, s13, s10
d0041840:	eddf 2a8a 	vldr	s5, [pc, #552]	; d0041a6c <fillTriangleDitherBayer+0x3a0>
d0041844:	eef4 8ae2 	vcmpe.f32	s17, s5
d0041848:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004184c:	f240 80e9 	bls.w	d0041a22 <fillTriangleDitherBayer+0x356>
d0041850:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0041854:	ee33 9ac5 	vsub.f32	s18, s7, s10
d0041858:	ee71 0a46 	vsub.f32	s1, s2, s12
d004185c:	ee89 4aa8 	vdiv.f32	s8, s19, s17
d0041860:	eeb4 9ae2 	vcmpe.f32	s18, s5
d0041864:	ee33 8a61 	vsub.f32	s16, s6, s3
d0041868:	ee72 8a47 	vsub.f32	s17, s4, s14
d004186c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041870:	ee60 0a84 	vmul.f32	s1, s1, s8
d0041874:	ee28 8a04 	vmul.f32	s16, s16, s8
d0041878:	ee68 8a84 	vmul.f32	s17, s17, s8
d004187c:	f300 80fe 	bgt.w	d0041a7c <fillTriangleDitherBayer+0x3b0>
d0041880:	ee04 2a10 	vmov	s8, r2
d0041884:	ee76 fae3 	vsub.f32	s31, s13, s7
d0041888:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d004188c:	eef4 fae2 	vcmpe.f32	s31, s5
d0041890:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0041894:	eeb0 4a67 	vmov.f32	s8, s15
d0041898:	eebe 4ace 	vcvt.s32.f32	s8, s8, #4
d004189c:	ee14 3a10 	vmov	r3, s8
d00418a0:	f383 0204 	usat	r2, #4, r3
d00418a4:	9201      	str	r2, [sp, #4]
d00418a6:	9a04      	ldr	r2, [sp, #16]
d00418a8:	4592      	cmp	sl, r2
d00418aa:	bf18      	it	ne
d00418ac:	2b00      	cmpne	r3, #0
d00418ae:	bfd4      	ite	le
d00418b0:	2301      	movle	r3, #1
d00418b2:	2300      	movgt	r3, #0
d00418b4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00418b8:	9300      	str	r3, [sp, #0]
d00418ba:	f340 80b2 	ble.w	d0041a22 <fillTriangleDitherBayer+0x356>
d00418be:	ed9f ea6d 	vldr	s28, [pc, #436]	; d0041a74 <fillTriangleDitherBayer+0x3a8>
d00418c2:	eef0 9a4e 	vmov.f32	s19, s28
d00418c6:	eeb0 ba4e 	vmov.f32	s22, s28
d00418ca:	eef7 2a00 	vmov.f32	s5, #112	; 0x3f800000  1.0
d00418ce:	ed9f 4a67 	vldr	s8, [pc, #412]	; d0041a6c <fillTriangleDitherBayer+0x3a0>
d00418d2:	ee31 1a64 	vsub.f32	s2, s2, s9
d00418d6:	ee33 3a40 	vsub.f32	s6, s6, s0
d00418da:	eec2 7aaf 	vdiv.f32	s15, s5, s31
d00418de:	eeb4 9ac4 	vcmpe.f32	s18, s8
d00418e2:	ee32 2a65 	vsub.f32	s4, s4, s11
d00418e6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00418ea:	ee61 2a27 	vmul.f32	s5, s2, s15
d00418ee:	ee23 3a27 	vmul.f32	s6, s6, s15
d00418f2:	ee22 fa27 	vmul.f32	s30, s4, s15
d00418f6:	edcd 2a09 	vstr	s5, [sp, #36]	; 0x24
d00418fa:	ed8d 3a08 	vstr	s6, [sp, #32]
d00418fe:	f300 80f4 	bgt.w	d0041aea <fillTriangleDitherBayer+0x41e>
d0041902:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0041906:	edcd 7a06 	vstr	s15, [sp, #24]
d004190a:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d004190e:	f240 123f 	movw	r2, #319	; 0x13f
d0041912:	9906      	ldr	r1, [sp, #24]
d0041914:	ee17 3a90 	vmov	r3, s15
d0041918:	ea21 7be1 	bic.w	fp, r1, r1, asr #31
d004191c:	3b01      	subs	r3, #1
d004191e:	4293      	cmp	r3, r2
d0041920:	bfa8      	it	ge
d0041922:	4613      	movge	r3, r2
d0041924:	459b      	cmp	fp, r3
d0041926:	dc7c      	bgt.n	d0041a22 <fillTriangleDitherBayer+0x356>
d0041928:	ee07 ba90 	vmov	s15, fp
d004192c:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0041930:	3301      	adds	r3, #1
d0041932:	eddd aa09 	vldr	s21, [sp, #36]	; 0x24
d0041936:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004193a:	ed9d aa08 	vldr	s20, [sp, #32]
d004193e:	ed9f 1a4b 	vldr	s2, [pc, #300]	; d0041a6c <fillTriangleDitherBayer+0x3a0>
d0041942:	ed9f 2a4b 	vldr	s4, [pc, #300]	; d0041a70 <fillTriangleDitherBayer+0x3a4>
d0041946:	ee77 7aa6 	vadd.f32	s15, s15, s13
d004194a:	ed9f 3a4a 	vldr	s6, [pc, #296]	; d0041a74 <fillTriangleDitherBayer+0x3a8>
d004194e:	9302      	str	r3, [sp, #8]
d0041950:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0041954:	ee77 7ae3 	vsub.f32	s15, s15, s7
d0041958:	eddf 3a47 	vldr	s7, [pc, #284]	; d0041a78 <fillTriangleDitherBayer+0x3ac>
d004195c:	eea0 6a85 	vfma.f32	s12, s1, s10
d0041960:	eee8 1a05 	vfma.f32	s3, s16, s10
d0041964:	eea8 7a85 	vfma.f32	s14, s17, s10
d0041968:	eeea 4aa7 	vfma.f32	s9, s21, s15
d004196c:	eeaa 0a27 	vfma.f32	s0, s20, s15
d0041970:	eeef 5a27 	vfma.f32	s11, s30, s15
d0041974:	e033      	b.n	d00419de <fillTriangleDitherBayer+0x312>
d0041976:	eef0 2a47 	vmov.f32	s5, s14
d004197a:	eef0 9a61 	vmov.f32	s19, s3
d004197e:	eef0 6a46 	vmov.f32	s13, s12
d0041982:	eeb0 9a65 	vmov.f32	s18, s11
d0041986:	eeb0 5a40 	vmov.f32	s10, s0
d004198a:	eeb0 4a64 	vmov.f32	s8, s9
d004198e:	fefa 7a66 	vrintp.f32	s15, s13
d0041992:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041996:	f240 13df 	movw	r3, #479	; 0x1df
d004199a:	ee17 6a90 	vmov	r6, s15
d004199e:	fefa 7a44 	vrintp.f32	s15, s8
d00419a2:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00419a6:	3e01      	subs	r6, #1
d00419a8:	ee17 0a90 	vmov	r0, s15
d00419ac:	429e      	cmp	r6, r3
d00419ae:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d00419b2:	bfa8      	it	ge
d00419b4:	461e      	movge	r6, r3
d00419b6:	4286      	cmp	r6, r0
d00419b8:	f280 815c 	bge.w	d0041c74 <fillTriangleDitherBayer+0x5a8>
d00419bc:	f10b 0b01 	add.w	fp, fp, #1
d00419c0:	9b02      	ldr	r3, [sp, #8]
d00419c2:	ee36 6a20 	vadd.f32	s12, s12, s1
d00419c6:	459b      	cmp	fp, r3
d00419c8:	ee71 1a88 	vadd.f32	s3, s3, s16
d00419cc:	ee37 7a28 	vadd.f32	s14, s14, s17
d00419d0:	ee74 4aaa 	vadd.f32	s9, s9, s21
d00419d4:	ee30 0a0a 	vadd.f32	s0, s0, s20
d00419d8:	ee75 5a8f 	vadd.f32	s11, s11, s30
d00419dc:	d021      	beq.n	d0041a22 <fillTriangleDitherBayer+0x356>
d00419de:	eeb4 6ae4 	vcmpe.f32	s12, s9
d00419e2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00419e6:	dcc6      	bgt.n	d0041976 <fillTriangleDitherBayer+0x2aa>
d00419e8:	eef0 2a65 	vmov.f32	s5, s11
d00419ec:	eef0 9a40 	vmov.f32	s19, s0
d00419f0:	eef0 6a64 	vmov.f32	s13, s9
d00419f4:	eeb0 9a47 	vmov.f32	s18, s14
d00419f8:	eeb0 5a61 	vmov.f32	s10, s3
d00419fc:	eeb0 4a46 	vmov.f32	s8, s12
d0041a00:	e7c5      	b.n	d004198e <fillTriangleDitherBayer+0x2c2>
d0041a02:	eddd 6a0a 	vldr	s13, [sp, #40]	; 0x28
d0041a06:	ed9d 5a0b 	vldr	s10, [sp, #44]	; 0x2c
d0041a0a:	ed9d 6a0c 	vldr	s12, [sp, #48]	; 0x30
d0041a0e:	ed9d fa0d 	vldr	s30, [sp, #52]	; 0x34
d0041a12:	eddf 7a16 	vldr	s15, [pc, #88]	; d0041a6c <fillTriangleDitherBayer+0x3a0>
d0041a16:	eef4 fae7 	vcmpe.f32	s31, s15
d0041a1a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041a1e:	f73f af74 	bgt.w	d004190a <fillTriangleDitherBayer+0x23e>
d0041a22:	b00f      	add	sp, #60	; 0x3c
d0041a24:	ecbd 8b10 	vpop	{d8-d15}
d0041a28:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0041a2c:	eef4 3ae6 	vcmpe.f32	s7, s13
d0041a30:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041a34:	f340 80ec 	ble.w	d0041c10 <fillTriangleDitherBayer+0x544>
d0041a38:	eeb0 8a42 	vmov.f32	s16, s4
d0041a3c:	eef0 0a43 	vmov.f32	s1, s6
d0041a40:	eef0 2a66 	vmov.f32	s5, s13
d0041a44:	eeb0 4a41 	vmov.f32	s8, s2
d0041a48:	eeb0 2a47 	vmov.f32	s4, s14
d0041a4c:	eeb0 3a61 	vmov.f32	s6, s3
d0041a50:	eef0 6a45 	vmov.f32	s13, s10
d0041a54:	eeb0 1a46 	vmov.f32	s2, s12
d0041a58:	eeb0 7a48 	vmov.f32	s14, s16
d0041a5c:	eef0 1a60 	vmov.f32	s3, s1
d0041a60:	eeb0 5a62 	vmov.f32	s10, s5
d0041a64:	eeb0 6a44 	vmov.f32	s12, s8
d0041a68:	e6d7      	b.n	d004181a <fillTriangleDitherBayer+0x14e>
d0041a6a:	bf00      	nop
d0041a6c:	38d1b717 	.word	0x38d1b717
d0041a70:	33d6bf95 	.word	0x33d6bf95
d0041a74:	00000000 	.word	0x00000000
d0041a78:	477fff00 	.word	0x477fff00
d0041a7c:	ee04 2a10 	vmov	s8, r2
d0041a80:	ee89 aa89 	vdiv.f32	s20, s19, s18
d0041a84:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0041a88:	ee74 aac6 	vsub.f32	s21, s9, s12
d0041a8c:	ee76 fae3 	vsub.f32	s31, s13, s7
d0041a90:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0041a94:	ee70 9a61 	vsub.f32	s19, s0, s3
d0041a98:	eef4 fae2 	vcmpe.f32	s31, s5
d0041a9c:	eeb0 4a67 	vmov.f32	s8, s15
d0041aa0:	ee35 eac7 	vsub.f32	s28, s11, s14
d0041aa4:	eebe 4ace 	vcvt.s32.f32	s8, s8, #4
d0041aa8:	ee6a 7a8a 	vmul.f32	s15, s21, s20
d0041aac:	ee14 3a10 	vmov	r3, s8
d0041ab0:	ee2e ea0a 	vmul.f32	s28, s28, s20
d0041ab4:	f383 0204 	usat	r2, #4, r3
d0041ab8:	eeb0 ba67 	vmov.f32	s22, s15
d0041abc:	ee69 7a8a 	vmul.f32	s15, s19, s20
d0041ac0:	9201      	str	r2, [sp, #4]
d0041ac2:	9a04      	ldr	r2, [sp, #16]
d0041ac4:	eef0 9a67 	vmov.f32	s19, s15
d0041ac8:	4592      	cmp	sl, r2
d0041aca:	bf18      	it	ne
d0041acc:	2b00      	cmpne	r3, #0
d0041ace:	bfd4      	ite	le
d0041ad0:	2301      	movle	r3, #1
d0041ad2:	2300      	movgt	r3, #0
d0041ad4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041ad8:	9300      	str	r3, [sp, #0]
d0041ada:	f73f aef6 	bgt.w	d00418ca <fillTriangleDitherBayer+0x1fe>
d0041ade:	ed1f fa1b 	vldr	s30, [pc, #-108]	; d0041a74 <fillTriangleDitherBayer+0x3a8>
d0041ae2:	ed8d fa08 	vstr	s30, [sp, #32]
d0041ae6:	ed8d fa09 	vstr	s30, [sp, #36]	; 0x24
d0041aea:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0041aee:	f240 123f 	movw	r2, #319	; 0x13f
d0041af2:	ee17 3a90 	vmov	r3, s15
d0041af6:	edcd 7a06 	vstr	s15, [sp, #24]
d0041afa:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d0041afe:	3b01      	subs	r3, #1
d0041b00:	ee17 ba90 	vmov	fp, s15
d0041b04:	4293      	cmp	r3, r2
d0041b06:	ea2b 7beb 	bic.w	fp, fp, fp, asr #31
d0041b0a:	bfa8      	it	ge
d0041b0c:	4613      	movge	r3, r2
d0041b0e:	455b      	cmp	r3, fp
d0041b10:	f6ff af7f 	blt.w	d0041a12 <fillTriangleDitherBayer+0x346>
d0041b14:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0041b18:	3301      	adds	r3, #1
d0041b1a:	eeb0 aa46 	vmov.f32	s20, s12
d0041b1e:	ed1f da2c 	vldr	s26, [pc, #-176]	; d0041a70 <fillTriangleDitherBayer+0x3a4>
d0041b22:	eef0 aa46 	vmov.f32	s21, s12
d0041b26:	ed1f 3a2d 	vldr	s6, [pc, #-180]	; d0041a74 <fillTriangleDitherBayer+0x3a8>
d0041b2a:	ee37 4ac5 	vsub.f32	s8, s15, s10
d0041b2e:	ee07 ba90 	vmov	s15, fp
d0041b32:	eef0 ca61 	vmov.f32	s25, s3
d0041b36:	ed1f 2a30 	vldr	s4, [pc, #-192]	; d0041a78 <fillTriangleDitherBayer+0x3ac>
d0041b3a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041b3e:	9302      	str	r3, [sp, #8]
d0041b40:	eeb0 ca47 	vmov.f32	s24, s14
d0041b44:	edcd 6a0a 	vstr	s13, [sp, #40]	; 0x28
d0041b48:	eef0 da4b 	vmov.f32	s27, s22
d0041b4c:	ed8d 5a0b 	vstr	s10, [sp, #44]	; 0x2c
d0041b50:	ee77 7a84 	vadd.f32	s15, s15, s8
d0041b54:	ed8d 6a0c 	vstr	s12, [sp, #48]	; 0x30
d0041b58:	eef0 ba61 	vmov.f32	s23, s3
d0041b5c:	ed8d fa0d 	vstr	s30, [sp, #52]	; 0x34
d0041b60:	eef0 ea69 	vmov.f32	s29, s19
d0041b64:	eea7 aa8b 	vfma.f32	s20, s15, s22
d0041b68:	eeb0 ba47 	vmov.f32	s22, s14
d0041b6c:	eee0 aaa7 	vfma.f32	s21, s1, s15
d0041b70:	eee8 ca27 	vfma.f32	s25, s16, s15
d0041b74:	eea8 caa7 	vfma.f32	s24, s17, s15
d0041b78:	eee7 baa9 	vfma.f32	s23, s15, s19
d0041b7c:	eea7 ba8e 	vfma.f32	s22, s15, s28
d0041b80:	e034      	b.n	d0041bec <fillTriangleDitherBayer+0x520>
d0041b82:	eef0 2a4c 	vmov.f32	s5, s24
d0041b86:	eeb0 4a6c 	vmov.f32	s8, s25
d0041b8a:	eef0 7a6a 	vmov.f32	s15, s21
d0041b8e:	eeb0 5a4b 	vmov.f32	s10, s22
d0041b92:	eef0 6a6b 	vmov.f32	s13, s23
d0041b96:	eeb0 6a4a 	vmov.f32	s12, s20
d0041b9a:	feba 1a67 	vrintp.f32	s2, s15
d0041b9e:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d0041ba2:	feba 9a46 	vrintp.f32	s18, s12
d0041ba6:	f240 13df 	movw	r3, #479	; 0x1df
d0041baa:	ee11 6a10 	vmov	r6, s2
d0041bae:	eebd 1ac9 	vcvt.s32.f32	s2, s18
d0041bb2:	3e01      	subs	r6, #1
d0041bb4:	ee11 0a10 	vmov	r0, s2
d0041bb8:	429e      	cmp	r6, r3
d0041bba:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d0041bbe:	bfa8      	it	ge
d0041bc0:	461e      	movge	r6, r3
d0041bc2:	4286      	cmp	r6, r0
d0041bc4:	f280 813e 	bge.w	d0041e44 <fillTriangleDitherBayer+0x778>
d0041bc8:	f10b 0b01 	add.w	fp, fp, #1
d0041bcc:	9b02      	ldr	r3, [sp, #8]
d0041bce:	ee7a aaa0 	vadd.f32	s21, s21, s1
d0041bd2:	459b      	cmp	fp, r3
d0041bd4:	ee7c ca88 	vadd.f32	s25, s25, s16
d0041bd8:	ee3c ca28 	vadd.f32	s24, s24, s17
d0041bdc:	ee3a aa2d 	vadd.f32	s20, s20, s27
d0041be0:	ee7b baae 	vadd.f32	s23, s23, s29
d0041be4:	ee3b ba0e 	vadd.f32	s22, s22, s28
d0041be8:	f43f af0b 	beq.w	d0041a02 <fillTriangleDitherBayer+0x336>
d0041bec:	eef4 aaca 	vcmpe.f32	s21, s20
d0041bf0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041bf4:	dcc5      	bgt.n	d0041b82 <fillTriangleDitherBayer+0x4b6>
d0041bf6:	eef0 2a4b 	vmov.f32	s5, s22
d0041bfa:	eeb0 4a6b 	vmov.f32	s8, s23
d0041bfe:	eef0 7a4a 	vmov.f32	s15, s20
d0041c02:	eeb0 5a4c 	vmov.f32	s10, s24
d0041c06:	eef0 6a6c 	vmov.f32	s13, s25
d0041c0a:	eeb0 6a6a 	vmov.f32	s12, s21
d0041c0e:	e7c4      	b.n	d0041b9a <fillTriangleDitherBayer+0x4ce>
d0041c10:	eeb0 8a47 	vmov.f32	s16, s14
d0041c14:	eef0 0a61 	vmov.f32	s1, s3
d0041c18:	eef0 2a45 	vmov.f32	s5, s10
d0041c1c:	eeb0 4a46 	vmov.f32	s8, s12
d0041c20:	eeb0 7a65 	vmov.f32	s14, s11
d0041c24:	eef0 1a40 	vmov.f32	s3, s0
d0041c28:	eeb0 5a63 	vmov.f32	s10, s7
d0041c2c:	eeb0 6a64 	vmov.f32	s12, s9
d0041c30:	eef0 5a48 	vmov.f32	s11, s16
d0041c34:	eeb0 0a60 	vmov.f32	s0, s1
d0041c38:	eef0 3a62 	vmov.f32	s7, s5
d0041c3c:	eef0 4a44 	vmov.f32	s9, s8
d0041c40:	e5ce      	b.n	d00417e0 <fillTriangleDitherBayer+0x114>
d0041c42:	eeb0 8a47 	vmov.f32	s16, s14
d0041c46:	eef0 0a61 	vmov.f32	s1, s3
d0041c4a:	eef0 2a45 	vmov.f32	s5, s10
d0041c4e:	eeb0 4a46 	vmov.f32	s8, s12
d0041c52:	eeb0 7a42 	vmov.f32	s14, s4
d0041c56:	eef0 1a43 	vmov.f32	s3, s6
d0041c5a:	eeb0 5a66 	vmov.f32	s10, s13
d0041c5e:	eeb0 6a41 	vmov.f32	s12, s2
d0041c62:	eeb0 2a48 	vmov.f32	s4, s16
d0041c66:	eeb0 3a60 	vmov.f32	s6, s1
d0041c6a:	eef0 6a62 	vmov.f32	s13, s5
d0041c6e:	eeb0 1a44 	vmov.f32	s2, s8
d0041c72:	e5b5      	b.n	d00417e0 <fillTriangleDitherBayer+0x114>
d0041c74:	ee76 6ac4 	vsub.f32	s13, s13, s8
d0041c78:	eef4 6ac1 	vcmpe.f32	s13, s2
d0041c7c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041c80:	f340 81d8 	ble.w	d0042034 <fillTriangleDitherBayer+0x968>
d0041c84:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0041c88:	ee79 9ac5 	vsub.f32	s19, s19, s10
d0041c8c:	ee72 2ac9 	vsub.f32	s5, s5, s18
d0041c90:	ee87 baa6 	vdiv.f32	s22, s15, s13
d0041c94:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0041c98:	ee37 4ac4 	vsub.f32	s8, s15, s8
d0041c9c:	ee07 0a90 	vmov	s15, r0
d0041ca0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041ca4:	ee77 7a84 	vadd.f32	s15, s15, s8
d0041ca8:	ee69 9a8b 	vmul.f32	s19, s19, s22
d0041cac:	ee22 ba8b 	vmul.f32	s22, s5, s22
d0041cb0:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0041cb4:	eea7 9a8b 	vfma.f32	s18, s15, s22
d0041cb8:	ebcb 190b 	rsb	r9, fp, fp, lsl #4
d0041cbc:	49d6      	ldr	r1, [pc, #856]	; (d0042018 <fillTriangleDitherBayer+0x94c>)
d0041cbe:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0041cc2:	4cd6      	ldr	r4, [pc, #856]	; (d004201c <fillTriangleDitherBayer+0x950>)
d0041cc4:	eb00 1249 	add.w	r2, r0, r9, lsl #5
d0041cc8:	6809      	ldr	r1, [r1, #0]
d0041cca:	eb0b 1383 	add.w	r3, fp, r3, lsl #6
d0041cce:	f8cd b018 	str.w	fp, [sp, #24]
d0041cd2:	eb04 0942 	add.w	r9, r4, r2, lsl #1
d0041cd6:	f00b 0203 	and.w	r2, fp, #3
d0041cda:	eb01 0c03 	add.w	ip, r1, r3
d0041cde:	eef6 2a00 	vmov.f32	s5, #96	; 0x3f000000  0.5
d0041ce2:	4613      	mov	r3, r2
d0041ce4:	4ace      	ldr	r2, [pc, #824]	; (d0042020 <fillTriangleDitherBayer+0x954>)
d0041ce6:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0041cea:	469b      	mov	fp, r3
d0041cec:	e010      	b.n	d0041d10 <fillTriangleDitherBayer+0x644>
d0041cee:	ee07 3a90 	vmov	s15, r3
d0041cf2:	4418      	add	r0, r3
d0041cf4:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0041cf8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041cfc:	42b0      	cmp	r0, r6
d0041cfe:	eb09 0943 	add.w	r9, r9, r3, lsl #1
d0041d02:	eb0c 1c82 	add.w	ip, ip, r2, lsl #6
d0041d06:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0041d0a:	eea7 9a8b 	vfma.f32	s18, s15, s22
d0041d0e:	dc72      	bgt.n	d0041df6 <fillTriangleDitherBayer+0x72a>
d0041d10:	eba6 0800 	sub.w	r8, r6, r0
d0041d14:	eeb4 5ac2 	vcmpe.f32	s10, s4
d0041d18:	f108 0301 	add.w	r3, r8, #1
d0041d1c:	2b30      	cmp	r3, #48	; 0x30
d0041d1e:	bfa8      	it	ge
d0041d20:	2330      	movge	r3, #48	; 0x30
d0041d22:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041d26:	d9e2      	bls.n	d0041cee <fillTriangleDitherBayer+0x622>
d0041d28:	f1b8 0f00 	cmp.w	r8, #0
d0041d2c:	eec9 6a05 	vdiv.f32	s13, s18, s10
d0041d30:	dd64      	ble.n	d0041dfc <fillTriangleDitherBayer+0x730>
d0041d32:	1e5a      	subs	r2, r3, #1
d0041d34:	ee07 2a90 	vmov	s15, r2
d0041d38:	eeb0 4a45 	vmov.f32	s8, s10
d0041d3c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041d40:	eea7 4aa9 	vfma.f32	s8, s15, s19
d0041d44:	eeb4 4ac2 	vcmpe.f32	s8, s4
d0041d48:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041d4c:	dd57      	ble.n	d0041dfe <fillTriangleDitherBayer+0x732>
d0041d4e:	eeb0 ca49 	vmov.f32	s24, s18
d0041d52:	9a00      	ldr	r2, [sp, #0]
d0041d54:	eea7 ca8b 	vfma.f32	s24, s15, s22
d0041d58:	eecc ba04 	vdiv.f32	s23, s24, s8
d0041d5c:	ee7b bae6 	vsub.f32	s23, s23, s13
d0041d60:	ee8b 4aa7 	vdiv.f32	s8, s23, s15
d0041d64:	2a00      	cmp	r2, #0
d0041d66:	d14f      	bne.n	d0041e08 <fillTriangleDitherBayer+0x73c>
d0041d68:	f8cd 800c 	str.w	r8, [sp, #12]
d0041d6c:	f1a9 0702 	sub.w	r7, r9, #2
d0041d70:	9605      	str	r6, [sp, #20]
d0041d72:	f8dd 8004 	ldr.w	r8, [sp, #4]
d0041d76:	9e04      	ldr	r6, [sp, #16]
d0041d78:	fec6 7a83 	vmaxnm.f32	s15, s13, s6
d0041d7c:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d0041d80:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0041d84:	f837 ef02 	ldrh.w	lr, [r7, #2]!
d0041d88:	1885      	adds	r5, r0, r2
d0041d8a:	eb02 0482 	add.w	r4, r2, r2, lsl #2
d0041d8e:	ee76 6a84 	vadd.f32	s13, s13, s8
d0041d92:	3201      	adds	r2, #1
d0041d94:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0041d98:	f005 0503 	and.w	r5, r5, #3
d0041d9c:	01a4      	lsls	r4, r4, #6
d0041d9e:	ee17 1a90 	vmov	r1, s15
d0041da2:	b289      	uxth	r1, r1
d0041da4:	458e      	cmp	lr, r1
d0041da6:	d908      	bls.n	d0041dba <fillTriangleDitherBayer+0x6ee>
d0041da8:	f81b 5005 	ldrb.w	r5, [fp, r5]
d0041dac:	8039      	strh	r1, [r7, #0]
d0041dae:	45a8      	cmp	r8, r5
d0041db0:	bfd4      	ite	le
d0041db2:	4655      	movle	r5, sl
d0041db4:	4635      	movgt	r5, r6
d0041db6:	f80c 5004 	strb.w	r5, [ip, r4]
d0041dba:	4293      	cmp	r3, r2
d0041dbc:	dcdc      	bgt.n	d0041d78 <fillTriangleDitherBayer+0x6ac>
d0041dbe:	f8dd 800c 	ldr.w	r8, [sp, #12]
d0041dc2:	9e05      	ldr	r6, [sp, #20]
d0041dc4:	f1b8 0f00 	cmp.w	r8, #0
d0041dc8:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0041dcc:	ea4f 0143 	mov.w	r1, r3, lsl #1
d0041dd0:	ea4f 1282 	mov.w	r2, r2, lsl #6
d0041dd4:	bfbc      	itt	lt
d0041dd6:	2102      	movlt	r1, #2
d0041dd8:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d0041ddc:	4489      	add	r9, r1
d0041dde:	4494      	add	ip, r2
d0041de0:	ee07 3a90 	vmov	s15, r3
d0041de4:	4418      	add	r0, r3
d0041de6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041dea:	42b0      	cmp	r0, r6
d0041dec:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0041df0:	eea7 9a8b 	vfma.f32	s18, s15, s22
d0041df4:	dd8c      	ble.n	d0041d10 <fillTriangleDitherBayer+0x644>
d0041df6:	f8dd b018 	ldr.w	fp, [sp, #24]
d0041dfa:	e5df      	b.n	d00419bc <fillTriangleDitherBayer+0x2f0>
d0041dfc:	d1f0      	bne.n	d0041de0 <fillTriangleDitherBayer+0x714>
d0041dfe:	9a00      	ldr	r2, [sp, #0]
d0041e00:	eeb0 4a43 	vmov.f32	s8, s6
d0041e04:	2a00      	cmp	r2, #0
d0041e06:	d0af      	beq.n	d0041d68 <fillTriangleDitherBayer+0x69c>
d0041e08:	f1a9 0502 	sub.w	r5, r9, #2
d0041e0c:	2200      	movs	r2, #0
d0041e0e:	fec6 7a83 	vmaxnm.f32	s15, s13, s6
d0041e12:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d0041e16:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0041e1a:	eb02 0182 	add.w	r1, r2, r2, lsl #2
d0041e1e:	f835 7f02 	ldrh.w	r7, [r5, #2]!
d0041e22:	ee76 6a84 	vadd.f32	s13, s13, s8
d0041e26:	018c      	lsls	r4, r1, #6
d0041e28:	3201      	adds	r2, #1
d0041e2a:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0041e2e:	ee17 1a90 	vmov	r1, s15
d0041e32:	b289      	uxth	r1, r1
d0041e34:	428f      	cmp	r7, r1
d0041e36:	d902      	bls.n	d0041e3e <fillTriangleDitherBayer+0x772>
d0041e38:	8029      	strh	r1, [r5, #0]
d0041e3a:	f80c a004 	strb.w	sl, [ip, r4]
d0041e3e:	4293      	cmp	r3, r2
d0041e40:	dce5      	bgt.n	d0041e0e <fillTriangleDitherBayer+0x742>
d0041e42:	e7bf      	b.n	d0041dc4 <fillTriangleDitherBayer+0x6f8>
d0041e44:	ee77 7ac6 	vsub.f32	s15, s15, s12
d0041e48:	ed9f 1a76 	vldr	s2, [pc, #472]	; d0042024 <fillTriangleDitherBayer+0x958>
d0041e4c:	eef4 7ac1 	vcmpe.f32	s15, s2
d0041e50:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041e54:	f340 80f3 	ble.w	d004203e <fillTriangleDitherBayer+0x972>
d0041e58:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d0041e5c:	ee34 4a66 	vsub.f32	s8, s8, s13
d0041e60:	ee72 2ac5 	vsub.f32	s5, s5, s10
d0041e64:	ee89 1a27 	vdiv.f32	s2, s18, s15
d0041e68:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0041e6c:	ee37 6ac6 	vsub.f32	s12, s15, s12
d0041e70:	ee07 0a90 	vmov	s15, r0
d0041e74:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041e78:	ee77 7a86 	vadd.f32	s15, s15, s12
d0041e7c:	ee24 4a01 	vmul.f32	s8, s8, s2
d0041e80:	ee62 2a81 	vmul.f32	s5, s5, s2
d0041e84:	eee7 6a84 	vfma.f32	s13, s15, s8
d0041e88:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0041e8c:	ebcb 190b 	rsb	r9, fp, fp, lsl #4
d0041e90:	4961      	ldr	r1, [pc, #388]	; (d0042018 <fillTriangleDitherBayer+0x94c>)
d0041e92:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0041e96:	4c61      	ldr	r4, [pc, #388]	; (d004201c <fillTriangleDitherBayer+0x950>)
d0041e98:	eb00 1249 	add.w	r2, r0, r9, lsl #5
d0041e9c:	6809      	ldr	r1, [r1, #0]
d0041e9e:	eb0b 1383 	add.w	r3, fp, r3, lsl #6
d0041ea2:	f8cd b01c 	str.w	fp, [sp, #28]
d0041ea6:	eb04 0942 	add.w	r9, r4, r2, lsl #1
d0041eaa:	f00b 0203 	and.w	r2, fp, #3
d0041eae:	eb01 0c03 	add.w	ip, r1, r3
d0041eb2:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d0041eb6:	4613      	mov	r3, r2
d0041eb8:	4a59      	ldr	r2, [pc, #356]	; (d0042020 <fillTriangleDitherBayer+0x954>)
d0041eba:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0041ebe:	469b      	mov	fp, r3
d0041ec0:	e010      	b.n	d0041ee4 <fillTriangleDitherBayer+0x818>
d0041ec2:	ee07 2a90 	vmov	s15, r2
d0041ec6:	4410      	add	r0, r2
d0041ec8:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0041ecc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041ed0:	42b0      	cmp	r0, r6
d0041ed2:	eb09 0942 	add.w	r9, r9, r2, lsl #1
d0041ed6:	eb0c 1c83 	add.w	ip, ip, r3, lsl #6
d0041eda:	eee7 6a84 	vfma.f32	s13, s15, s8
d0041ede:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0041ee2:	dc72      	bgt.n	d0041fca <fillTriangleDitherBayer+0x8fe>
d0041ee4:	eba6 0800 	sub.w	r8, r6, r0
d0041ee8:	eef4 6acd 	vcmpe.f32	s13, s26
d0041eec:	f108 0201 	add.w	r2, r8, #1
d0041ef0:	2a30      	cmp	r2, #48	; 0x30
d0041ef2:	bfa8      	it	ge
d0041ef4:	2230      	movge	r2, #48	; 0x30
d0041ef6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041efa:	d9e2      	bls.n	d0041ec2 <fillTriangleDitherBayer+0x7f6>
d0041efc:	f1b8 0f00 	cmp.w	r8, #0
d0041f00:	ee85 1a26 	vdiv.f32	s2, s10, s13
d0041f04:	dd64      	ble.n	d0041fd0 <fillTriangleDitherBayer+0x904>
d0041f06:	1e53      	subs	r3, r2, #1
d0041f08:	ee07 3a90 	vmov	s15, r3
d0041f0c:	eeb0 9a66 	vmov.f32	s18, s13
d0041f10:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041f14:	eea7 9a84 	vfma.f32	s18, s15, s8
d0041f18:	eeb4 9acd 	vcmpe.f32	s18, s26
d0041f1c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041f20:	dd57      	ble.n	d0041fd2 <fillTriangleDitherBayer+0x906>
d0041f22:	eeb0 fa45 	vmov.f32	s30, s10
d0041f26:	9900      	ldr	r1, [sp, #0]
d0041f28:	eea7 faa2 	vfma.f32	s30, s15, s5
d0041f2c:	eecf 9a09 	vdiv.f32	s19, s30, s18
d0041f30:	ee79 9ac1 	vsub.f32	s19, s19, s2
d0041f34:	ee89 9aa7 	vdiv.f32	s18, s19, s15
d0041f38:	2900      	cmp	r1, #0
d0041f3a:	d14f      	bne.n	d0041fdc <fillTriangleDitherBayer+0x910>
d0041f3c:	9603      	str	r6, [sp, #12]
d0041f3e:	f1a9 0702 	sub.w	r7, r9, #2
d0041f42:	f8cd 8014 	str.w	r8, [sp, #20]
d0041f46:	9e04      	ldr	r6, [sp, #16]
d0041f48:	f8dd 8004 	ldr.w	r8, [sp, #4]
d0041f4c:	fec1 7a03 	vmaxnm.f32	s15, s2, s6
d0041f50:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d0041f54:	ee77 7a86 	vadd.f32	s15, s15, s12
d0041f58:	f837 ef02 	ldrh.w	lr, [r7, #2]!
d0041f5c:	1845      	adds	r5, r0, r1
d0041f5e:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d0041f62:	ee31 1a09 	vadd.f32	s2, s2, s18
d0041f66:	3101      	adds	r1, #1
d0041f68:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0041f6c:	f005 0503 	and.w	r5, r5, #3
d0041f70:	01a4      	lsls	r4, r4, #6
d0041f72:	ee17 3a90 	vmov	r3, s15
d0041f76:	b29b      	uxth	r3, r3
d0041f78:	459e      	cmp	lr, r3
d0041f7a:	d908      	bls.n	d0041f8e <fillTriangleDitherBayer+0x8c2>
d0041f7c:	f81b 5005 	ldrb.w	r5, [fp, r5]
d0041f80:	803b      	strh	r3, [r7, #0]
d0041f82:	45a8      	cmp	r8, r5
d0041f84:	bfcc      	ite	gt
d0041f86:	4635      	movgt	r5, r6
d0041f88:	4655      	movle	r5, sl
d0041f8a:	f80c 5004 	strb.w	r5, [ip, r4]
d0041f8e:	428a      	cmp	r2, r1
d0041f90:	dcdc      	bgt.n	d0041f4c <fillTriangleDitherBayer+0x880>
d0041f92:	9e03      	ldr	r6, [sp, #12]
d0041f94:	f8dd 8014 	ldr.w	r8, [sp, #20]
d0041f98:	f1b8 0f00 	cmp.w	r8, #0
d0041f9c:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0041fa0:	ea4f 0142 	mov.w	r1, r2, lsl #1
d0041fa4:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0041fa8:	bfbc      	itt	lt
d0041faa:	2102      	movlt	r1, #2
d0041fac:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0041fb0:	4489      	add	r9, r1
d0041fb2:	449c      	add	ip, r3
d0041fb4:	ee07 2a90 	vmov	s15, r2
d0041fb8:	4410      	add	r0, r2
d0041fba:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041fbe:	42b0      	cmp	r0, r6
d0041fc0:	eee7 6a84 	vfma.f32	s13, s15, s8
d0041fc4:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0041fc8:	dd8c      	ble.n	d0041ee4 <fillTriangleDitherBayer+0x818>
d0041fca:	f8dd b01c 	ldr.w	fp, [sp, #28]
d0041fce:	e5fb      	b.n	d0041bc8 <fillTriangleDitherBayer+0x4fc>
d0041fd0:	d1f0      	bne.n	d0041fb4 <fillTriangleDitherBayer+0x8e8>
d0041fd2:	9900      	ldr	r1, [sp, #0]
d0041fd4:	eeb0 9a43 	vmov.f32	s18, s6
d0041fd8:	2900      	cmp	r1, #0
d0041fda:	d0af      	beq.n	d0041f3c <fillTriangleDitherBayer+0x870>
d0041fdc:	f1a9 0502 	sub.w	r5, r9, #2
d0041fe0:	2100      	movs	r1, #0
d0041fe2:	fec1 7a03 	vmaxnm.f32	s15, s2, s6
d0041fe6:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d0041fea:	ee77 7a86 	vadd.f32	s15, s15, s12
d0041fee:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0041ff2:	f835 7f02 	ldrh.w	r7, [r5, #2]!
d0041ff6:	ee31 1a09 	vadd.f32	s2, s2, s18
d0041ffa:	019c      	lsls	r4, r3, #6
d0041ffc:	3101      	adds	r1, #1
d0041ffe:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0042002:	ee17 3a90 	vmov	r3, s15
d0042006:	b29b      	uxth	r3, r3
d0042008:	429f      	cmp	r7, r3
d004200a:	d902      	bls.n	d0042012 <fillTriangleDitherBayer+0x946>
d004200c:	802b      	strh	r3, [r5, #0]
d004200e:	f80c a004 	strb.w	sl, [ip, r4]
d0042012:	428a      	cmp	r2, r1
d0042014:	dce5      	bgt.n	d0041fe2 <fillTriangleDitherBayer+0x916>
d0042016:	e7bf      	b.n	d0041f98 <fillTriangleDitherBayer+0x8cc>
d0042018:	d012da64 	.word	0xd012da64
d004201c:	d0048360 	.word	0xd0048360
d0042020:	d00479fc 	.word	0xd00479fc
d0042024:	38d1b717 	.word	0x38d1b717
d0042028:	f04f 0a10 	mov.w	sl, #16
d004202c:	2310      	movs	r3, #16
d004202e:	9304      	str	r3, [sp, #16]
d0042030:	f7ff bbb2 	b.w	d0041798 <fillTriangleDitherBayer+0xcc>
d0042034:	eeb0 ba43 	vmov.f32	s22, s6
d0042038:	eef0 9a43 	vmov.f32	s19, s6
d004203c:	e63c      	b.n	d0041cb8 <fillTriangleDitherBayer+0x5ec>
d004203e:	eef0 2a43 	vmov.f32	s5, s6
d0042042:	eeb0 4a43 	vmov.f32	s8, s6
d0042046:	e721      	b.n	d0041e8c <fillTriangleDitherBayer+0x7c0>

d0042048 <fillTriangleDitherBayer2Mode>:
d0042048:	eddf 7aca 	vldr	s15, [pc, #808]	; d0042374 <fillTriangleDitherBayer2Mode+0x32c>
d004204c:	eef4 0ae7 	vcmpe.f32	s1, s15
d0042050:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0042054:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042058:	eeb4 1ae7 	vcmpe.f32	s2, s15
d004205c:	ed2d 8b10 	vpush	{d8-d15}
d0042060:	b08d      	sub	sp, #52	; 0x34
d0042062:	9303      	str	r3, [sp, #12]
d0042064:	bf94      	ite	ls
d0042066:	2301      	movls	r3, #1
d0042068:	2300      	movhi	r3, #0
d004206a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004206e:	9202      	str	r2, [sp, #8]
d0042070:	f89d b0ac 	ldrb.w	fp, [sp, #172]	; 0xac
d0042074:	bf98      	it	ls
d0042076:	f043 0301 	orrls.w	r3, r3, #1
d004207a:	f8bd 20a8 	ldrh.w	r2, [sp, #168]	; 0xa8
d004207e:	e9cd 0100 	strd	r0, r1, [sp]
d0042082:	f8bd 00a0 	ldrh.w	r0, [sp, #160]	; 0xa0
d0042086:	f8bd 10a4 	ldrh.w	r1, [sp, #164]	; 0xa4
d004208a:	2b00      	cmp	r3, #0
d004208c:	f040 814d 	bne.w	d004232a <fillTriangleDitherBayer2Mode+0x2e2>
d0042090:	eeb4 0a67 	vcmp.f32	s0, s15
d0042094:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042098:	f240 8147 	bls.w	d004232a <fillTriangleDitherBayer2Mode+0x2e2>
d004209c:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00420a0:	ee06 1a90 	vmov	s13, r1
d00420a4:	ee07 0a10 	vmov	s14, r0
d00420a8:	eef8 5a66 	vcvt.f32.u32	s11, s13
d00420ac:	ee87 3a80 	vdiv.f32	s6, s15, s0
d00420b0:	ee87 2a81 	vdiv.f32	s4, s15, s2
d00420b4:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d00420b8:	ee07 2a90 	vmov	s15, r2
d00420bc:	eeb8 4a67 	vcvt.f32.u32	s8, s15
d00420c0:	eddd 7a01 	vldr	s15, [sp, #4]
d00420c4:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d00420c8:	eeb8 5ae7 	vcvt.f32.s32	s10, s15
d00420cc:	eddd 7a03 	vldr	s15, [sp, #12]
d00420d0:	eef8 3ae7 	vcvt.f32.s32	s7, s15
d00420d4:	eddd 7a00 	vldr	s15, [sp]
d00420d8:	ee27 7a03 	vmul.f32	s14, s14, s6
d00420dc:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d00420e0:	eddd 7a02 	vldr	s15, [sp, #8]
d00420e4:	eeb4 5ae3 	vcmpe.f32	s10, s7
d00420e8:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d00420ec:	eddd 7a26 	vldr	s15, [sp, #152]	; 0x98
d00420f0:	ee24 4a02 	vmul.f32	s8, s8, s4
d00420f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00420f8:	eef8 2ae7 	vcvt.f32.s32	s5, s15
d00420fc:	eddd 7a27 	vldr	s15, [sp, #156]	; 0x9c
d0042100:	ee65 5a80 	vmul.f32	s11, s11, s0
d0042104:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d0042108:	f300 8114 	bgt.w	d0042334 <fillTriangleDitherBayer2Mode+0x2ec>
d004210c:	eeb4 5ae6 	vcmpe.f32	s10, s13
d0042110:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042114:	f300 8201 	bgt.w	d004251a <fillTriangleDitherBayer2Mode+0x4d2>
d0042118:	eef4 3ae6 	vcmpe.f32	s7, s13
d004211c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042120:	f300 8219 	bgt.w	d0042556 <fillTriangleDitherBayer2Mode+0x50e>
d0042124:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0042128:	ee35 1a27 	vadd.f32	s2, s10, s15
d004212c:	ee76 7aa7 	vadd.f32	s15, s13, s15
d0042130:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d0042134:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0042138:	ee11 3a10 	vmov	r3, s2
d004213c:	ee17 2a90 	vmov	r2, s15
d0042140:	4293      	cmp	r3, r2
d0042142:	f000 80f2 	beq.w	d004232a <fillTriangleDitherBayer2Mode+0x2e2>
d0042146:	ee76 8ac5 	vsub.f32	s17, s13, s10
d004214a:	ed9f 1a8a 	vldr	s2, [pc, #552]	; d0042374 <fillTriangleDitherBayer2Mode+0x32c>
d004214e:	eef4 8ac1 	vcmpe.f32	s17, s2
d0042152:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042156:	f240 80e8 	bls.w	d004232a <fillTriangleDitherBayer2Mode+0x2e2>
d004215a:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d004215e:	ee33 9ac5 	vsub.f32	s18, s7, s10
d0042162:	ee72 0ac6 	vsub.f32	s1, s5, s12
d0042166:	eec9 7aa8 	vdiv.f32	s15, s19, s17
d004216a:	eeb4 9ac1 	vcmpe.f32	s18, s2
d004216e:	ee32 8a43 	vsub.f32	s16, s4, s6
d0042172:	ee74 8a47 	vsub.f32	s17, s8, s14
d0042176:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004217a:	ee60 0aa7 	vmul.f32	s1, s1, s15
d004217e:	ee28 8a27 	vmul.f32	s16, s16, s15
d0042182:	ee68 8aa7 	vmul.f32	s17, s17, s15
d0042186:	f300 80ff 	bgt.w	d0042388 <fillTriangleDitherBayer2Mode+0x340>
d004218a:	eef1 7a04 	vmov.f32	s15, #20	; 0x40a00000  5.0
d004218e:	ed9f ba7c 	vldr	s22, [pc, #496]	; d0042380 <fillTriangleDitherBayer2Mode+0x338>
d0042192:	eddf 9a79 	vldr	s19, [pc, #484]	; d0042378 <fillTriangleDitherBayer2Mode+0x330>
d0042196:	ee76 fae3 	vsub.f32	s31, s13, s7
d004219a:	fec1 1a8b 	vmaxnm.f32	s3, s3, s22
d004219e:	fec1 7ae7 	vminnm.f32	s15, s3, s15
d00421a2:	ee67 7aa9 	vmul.f32	s15, s15, s19
d00421a6:	eef4 fac1 	vcmpe.f32	s31, s2
d00421aa:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00421ae:	ee17 3a90 	vmov	r3, s15
d00421b2:	edcd 7a00 	vstr	s15, [sp]
d00421b6:	2b10      	cmp	r3, #16
d00421b8:	bfa8      	it	ge
d00421ba:	2310      	movge	r3, #16
d00421bc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00421c0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d00421c4:	9302      	str	r3, [sp, #8]
d00421c6:	f340 80b0 	ble.w	d004232a <fillTriangleDitherBayer2Mode+0x2e2>
d00421ca:	eef0 ea4b 	vmov.f32	s29, s22
d00421ce:	eef0 ba4b 	vmov.f32	s23, s22
d00421d2:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d00421d6:	eddf 1a67 	vldr	s3, [pc, #412]	; d0042374 <fillTriangleDitherBayer2Mode+0x32c>
d00421da:	ee72 2ae4 	vsub.f32	s5, s5, s9
d00421de:	ee32 2a40 	vsub.f32	s4, s4, s0
d00421e2:	eec1 7a2f 	vdiv.f32	s15, s2, s31
d00421e6:	eeb4 9ae1 	vcmpe.f32	s18, s3
d00421ea:	ee34 4a65 	vsub.f32	s8, s8, s11
d00421ee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00421f2:	ee62 2aa7 	vmul.f32	s5, s5, s15
d00421f6:	ee24 fa27 	vmul.f32	s30, s8, s15
d00421fa:	edcd 2a06 	vstr	s5, [sp, #24]
d00421fe:	ee62 2a27 	vmul.f32	s5, s4, s15
d0042202:	edcd 2a05 	vstr	s5, [sp, #20]
d0042206:	f300 80f7 	bgt.w	d00423f8 <fillTriangleDitherBayer2Mode+0x3b0>
d004220a:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d004220e:	edcd 7a03 	vstr	s15, [sp, #12]
d0042212:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0042216:	f240 123f 	movw	r2, #319	; 0x13f
d004221a:	9903      	ldr	r1, [sp, #12]
d004221c:	ee17 3a90 	vmov	r3, s15
d0042220:	ea21 78e1 	bic.w	r8, r1, r1, asr #31
d0042224:	3b01      	subs	r3, #1
d0042226:	4293      	cmp	r3, r2
d0042228:	bfa8      	it	ge
d004222a:	4613      	movge	r3, r2
d004222c:	4543      	cmp	r3, r8
d004222e:	db7c      	blt.n	d004232a <fillTriangleDitherBayer2Mode+0x2e2>
d0042230:	ee07 8a90 	vmov	s15, r8
d0042234:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0042238:	3301      	adds	r3, #1
d004223a:	ed9d ba06 	vldr	s22, [sp, #24]
d004223e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0042242:	eddd aa05 	vldr	s21, [sp, #20]
d0042246:	ed9f 9a4b 	vldr	s18, [pc, #300]	; d0042374 <fillTriangleDitherBayer2Mode+0x32c>
d004224a:	ed9f 1a4c 	vldr	s2, [pc, #304]	; d004237c <fillTriangleDitherBayer2Mode+0x334>
d004224e:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0042252:	ed9f 4a4b 	vldr	s8, [pc, #300]	; d0042380 <fillTriangleDitherBayer2Mode+0x338>
d0042256:	eddf 1a4b 	vldr	s3, [pc, #300]	; d0042384 <fillTriangleDitherBayer2Mode+0x33c>
d004225a:	9301      	str	r3, [sp, #4]
d004225c:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0042260:	ee77 3ae3 	vsub.f32	s7, s15, s7
d0042264:	eea0 6a85 	vfma.f32	s12, s1, s10
d0042268:	eea8 3a05 	vfma.f32	s6, s16, s10
d004226c:	eea8 7a85 	vfma.f32	s14, s17, s10
d0042270:	eeeb 4a23 	vfma.f32	s9, s22, s7
d0042274:	eeaa 0aa3 	vfma.f32	s0, s21, s7
d0042278:	eeef 5a23 	vfma.f32	s11, s30, s7
d004227c:	e033      	b.n	d00422e6 <fillTriangleDitherBayer2Mode+0x29e>
d004227e:	eeb0 2a47 	vmov.f32	s4, s14
d0042282:	eef0 9a43 	vmov.f32	s19, s6
d0042286:	eef0 6a46 	vmov.f32	s13, s12
d004228a:	eef0 3a65 	vmov.f32	s7, s11
d004228e:	eeb0 5a40 	vmov.f32	s10, s0
d0042292:	eef0 2a64 	vmov.f32	s5, s9
d0042296:	fefa 7a66 	vrintp.f32	s15, s13
d004229a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004229e:	f240 13df 	movw	r3, #479	; 0x1df
d00422a2:	ee17 4a90 	vmov	r4, s15
d00422a6:	fefa 7a62 	vrintp.f32	s15, s5
d00422aa:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00422ae:	3c01      	subs	r4, #1
d00422b0:	ee17 1a90 	vmov	r1, s15
d00422b4:	429c      	cmp	r4, r3
d00422b6:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d00422ba:	bfa8      	it	ge
d00422bc:	461c      	movge	r4, r3
d00422be:	42a1      	cmp	r1, r4
d00422c0:	f340 817b 	ble.w	d00425ba <fillTriangleDitherBayer2Mode+0x572>
d00422c4:	f108 0801 	add.w	r8, r8, #1
d00422c8:	9b01      	ldr	r3, [sp, #4]
d00422ca:	ee36 6a20 	vadd.f32	s12, s12, s1
d00422ce:	4598      	cmp	r8, r3
d00422d0:	ee33 3a08 	vadd.f32	s6, s6, s16
d00422d4:	ee37 7a28 	vadd.f32	s14, s14, s17
d00422d8:	ee74 4a8b 	vadd.f32	s9, s9, s22
d00422dc:	ee30 0a2a 	vadd.f32	s0, s0, s21
d00422e0:	ee75 5a8f 	vadd.f32	s11, s11, s30
d00422e4:	d021      	beq.n	d004232a <fillTriangleDitherBayer2Mode+0x2e2>
d00422e6:	eeb4 6ae4 	vcmpe.f32	s12, s9
d00422ea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00422ee:	dcc6      	bgt.n	d004227e <fillTriangleDitherBayer2Mode+0x236>
d00422f0:	eeb0 2a65 	vmov.f32	s4, s11
d00422f4:	eef0 9a40 	vmov.f32	s19, s0
d00422f8:	eef0 6a64 	vmov.f32	s13, s9
d00422fc:	eef0 3a47 	vmov.f32	s7, s14
d0042300:	eeb0 5a43 	vmov.f32	s10, s6
d0042304:	eef0 2a46 	vmov.f32	s5, s12
d0042308:	e7c5      	b.n	d0042296 <fillTriangleDitherBayer2Mode+0x24e>
d004230a:	eddd 6a08 	vldr	s13, [sp, #32]
d004230e:	ed9d 6a09 	vldr	s12, [sp, #36]	; 0x24
d0042312:	ed9d fa0a 	vldr	s30, [sp, #40]	; 0x28
d0042316:	ed9d 0a0b 	vldr	s0, [sp, #44]	; 0x2c
d004231a:	eddf 7a16 	vldr	s15, [pc, #88]	; d0042374 <fillTriangleDitherBayer2Mode+0x32c>
d004231e:	eef4 fae7 	vcmpe.f32	s31, s15
d0042322:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042326:	f73f af74 	bgt.w	d0042212 <fillTriangleDitherBayer2Mode+0x1ca>
d004232a:	b00d      	add	sp, #52	; 0x34
d004232c:	ecbd 8b10 	vpop	{d8-d15}
d0042330:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0042334:	eef4 3ae6 	vcmpe.f32	s7, s13
d0042338:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004233c:	f340 8124 	ble.w	d0042588 <fillTriangleDitherBayer2Mode+0x540>
d0042340:	eeb0 8a44 	vmov.f32	s16, s8
d0042344:	eef0 0a42 	vmov.f32	s1, s4
d0042348:	eeb0 1a66 	vmov.f32	s2, s13
d004234c:	eef0 7a62 	vmov.f32	s15, s5
d0042350:	eeb0 4a47 	vmov.f32	s8, s14
d0042354:	eeb0 2a43 	vmov.f32	s4, s6
d0042358:	eef0 6a45 	vmov.f32	s13, s10
d004235c:	eef0 2a46 	vmov.f32	s5, s12
d0042360:	eeb0 7a48 	vmov.f32	s14, s16
d0042364:	eeb0 3a60 	vmov.f32	s6, s1
d0042368:	eeb0 5a41 	vmov.f32	s10, s2
d004236c:	eeb0 6a67 	vmov.f32	s12, s15
d0042370:	e6d8      	b.n	d0042124 <fillTriangleDitherBayer2Mode+0xdc>
d0042372:	bf00      	nop
d0042374:	38d1b717 	.word	0x38d1b717
d0042378:	404ccccd 	.word	0x404ccccd
d004237c:	33d6bf95 	.word	0x33d6bf95
d0042380:	00000000 	.word	0x00000000
d0042384:	477fff00 	.word	0x477fff00
d0042388:	ee89 aa89 	vdiv.f32	s20, s19, s18
d004238c:	ed1f ba06 	vldr	s22, [pc, #-24]	; d0042378 <fillTriangleDitherBayer2Mode+0x330>
d0042390:	ed5f 9a05 	vldr	s19, [pc, #-20]	; d0042380 <fillTriangleDitherBayer2Mode+0x338>
d0042394:	fec1 1aa9 	vmaxnm.f32	s3, s3, s19
d0042398:	eef1 7a04 	vmov.f32	s15, #20	; 0x40a00000  5.0
d004239c:	ee74 aac6 	vsub.f32	s21, s9, s12
d00423a0:	ee76 fae3 	vsub.f32	s31, s13, s7
d00423a4:	fec1 7ae7 	vminnm.f32	s15, s3, s15
d00423a8:	ee67 7a8b 	vmul.f32	s15, s15, s22
d00423ac:	ee70 1a43 	vsub.f32	s3, s0, s6
d00423b0:	eef4 fac1 	vcmpe.f32	s31, s2
d00423b4:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00423b8:	ee35 bac7 	vsub.f32	s22, s11, s14
d00423bc:	ee17 3a90 	vmov	r3, s15
d00423c0:	edcd 7a00 	vstr	s15, [sp]
d00423c4:	2b10      	cmp	r3, #16
d00423c6:	ee6a 7a8a 	vmul.f32	s15, s21, s20
d00423ca:	ee2b ba0a 	vmul.f32	s22, s22, s20
d00423ce:	bfa8      	it	ge
d00423d0:	2310      	movge	r3, #16
d00423d2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00423d6:	eef0 ba67 	vmov.f32	s23, s15
d00423da:	ee61 7a8a 	vmul.f32	s15, s3, s20
d00423de:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d00423e2:	9302      	str	r3, [sp, #8]
d00423e4:	eef0 ea67 	vmov.f32	s29, s15
d00423e8:	f73f aef3 	bgt.w	d00421d2 <fillTriangleDitherBayer2Mode+0x18a>
d00423ec:	eeb0 fa69 	vmov.f32	s30, s19
d00423f0:	edcd 9a05 	vstr	s19, [sp, #20]
d00423f4:	edcd 9a06 	vstr	s19, [sp, #24]
d00423f8:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d00423fc:	f240 123f 	movw	r2, #319	; 0x13f
d0042400:	ee17 3a90 	vmov	r3, s15
d0042404:	edcd 7a03 	vstr	s15, [sp, #12]
d0042408:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d004240c:	3b01      	subs	r3, #1
d004240e:	ee17 8a90 	vmov	r8, s15
d0042412:	4293      	cmp	r3, r2
d0042414:	ea28 78e8 	bic.w	r8, r8, r8, asr #31
d0042418:	bfa8      	it	ge
d004241a:	4613      	movge	r3, r2
d004241c:	4543      	cmp	r3, r8
d004241e:	f6ff af7c 	blt.w	d004231a <fillTriangleDitherBayer2Mode+0x2d2>
d0042422:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0042426:	3301      	adds	r3, #1
d0042428:	eeb0 aa46 	vmov.f32	s20, s12
d004242c:	ed5f da2d 	vldr	s27, [pc, #-180]	; d004237c <fillTriangleDitherBayer2Mode+0x334>
d0042430:	eef0 aa46 	vmov.f32	s21, s12
d0042434:	ed5f 2a2e 	vldr	s5, [pc, #-184]	; d0042380 <fillTriangleDitherBayer2Mode+0x338>
d0042438:	ee37 4ac5 	vsub.f32	s8, s15, s10
d004243c:	ee07 8a90 	vmov	s15, r8
d0042440:	eeb0 da43 	vmov.f32	s26, s6
d0042444:	ed1f 1a31 	vldr	s2, [pc, #-196]	; d0042384 <fillTriangleDitherBayer2Mode+0x33c>
d0042448:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004244c:	9301      	str	r3, [sp, #4]
d004244e:	eef0 ca47 	vmov.f32	s25, s14
d0042452:	edcd 6a08 	vstr	s13, [sp, #32]
d0042456:	eeb0 ea6b 	vmov.f32	s28, s23
d004245a:	ed8d 6a09 	vstr	s12, [sp, #36]	; 0x24
d004245e:	ee77 7a84 	vadd.f32	s15, s15, s8
d0042462:	ed8d fa0a 	vstr	s30, [sp, #40]	; 0x28
d0042466:	eeb0 ca43 	vmov.f32	s24, s6
d004246a:	ed8d 0a0b 	vstr	s0, [sp, #44]	; 0x2c
d004246e:	eea7 aaab 	vfma.f32	s20, s15, s23
d0042472:	eef0 ba47 	vmov.f32	s23, s14
d0042476:	eee0 aaa7 	vfma.f32	s21, s1, s15
d004247a:	eea8 da27 	vfma.f32	s26, s16, s15
d004247e:	eee8 caa7 	vfma.f32	s25, s17, s15
d0042482:	eea7 caae 	vfma.f32	s24, s15, s29
d0042486:	eee7 ba8b 	vfma.f32	s23, s15, s22
d004248a:	e034      	b.n	d00424f6 <fillTriangleDitherBayer2Mode+0x4ae>
d004248c:	eef0 1a6c 	vmov.f32	s3, s25
d0042490:	eeb0 2a4d 	vmov.f32	s4, s26
d0042494:	eef0 7a6a 	vmov.f32	s15, s21
d0042498:	eeb0 6a6b 	vmov.f32	s12, s23
d004249c:	eef0 6a4c 	vmov.f32	s13, s24
d00424a0:	eeb0 4a4a 	vmov.f32	s8, s20
d00424a4:	feba 0a67 	vrintp.f32	s0, s15
d00424a8:	eebd 0ac0 	vcvt.s32.f32	s0, s0
d00424ac:	feba 9a44 	vrintp.f32	s18, s8
d00424b0:	f240 13df 	movw	r3, #479	; 0x1df
d00424b4:	ee10 4a10 	vmov	r4, s0
d00424b8:	eebd 0ac9 	vcvt.s32.f32	s0, s18
d00424bc:	3c01      	subs	r4, #1
d00424be:	ee10 1a10 	vmov	r1, s0
d00424c2:	429c      	cmp	r4, r3
d00424c4:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d00424c8:	bfa8      	it	ge
d00424ca:	461c      	movge	r4, r3
d00424cc:	428c      	cmp	r4, r1
d00424ce:	f280 8159 	bge.w	d0042784 <fillTriangleDitherBayer2Mode+0x73c>
d00424d2:	f108 0801 	add.w	r8, r8, #1
d00424d6:	9b01      	ldr	r3, [sp, #4]
d00424d8:	ee7a aaa0 	vadd.f32	s21, s21, s1
d00424dc:	4598      	cmp	r8, r3
d00424de:	ee3d da08 	vadd.f32	s26, s26, s16
d00424e2:	ee7c caa8 	vadd.f32	s25, s25, s17
d00424e6:	ee3a aa0e 	vadd.f32	s20, s20, s28
d00424ea:	ee3c ca2e 	vadd.f32	s24, s24, s29
d00424ee:	ee7b ba8b 	vadd.f32	s23, s23, s22
d00424f2:	f43f af0a 	beq.w	d004230a <fillTriangleDitherBayer2Mode+0x2c2>
d00424f6:	eef4 aaca 	vcmpe.f32	s21, s20
d00424fa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00424fe:	dcc5      	bgt.n	d004248c <fillTriangleDitherBayer2Mode+0x444>
d0042500:	eef0 1a6b 	vmov.f32	s3, s23
d0042504:	eeb0 2a4c 	vmov.f32	s4, s24
d0042508:	eef0 7a4a 	vmov.f32	s15, s20
d004250c:	eeb0 6a6c 	vmov.f32	s12, s25
d0042510:	eef0 6a4d 	vmov.f32	s13, s26
d0042514:	eeb0 4a6a 	vmov.f32	s8, s21
d0042518:	e7c4      	b.n	d00424a4 <fillTriangleDitherBayer2Mode+0x45c>
d004251a:	eeb0 1a45 	vmov.f32	s2, s10
d004251e:	eeb0 5a66 	vmov.f32	s10, s13
d0042522:	eeb0 8a47 	vmov.f32	s16, s14
d0042526:	eef0 6a41 	vmov.f32	s13, s2
d004252a:	eef0 0a43 	vmov.f32	s1, s6
d004252e:	eef0 7a46 	vmov.f32	s15, s12
d0042532:	eef4 3ae6 	vcmpe.f32	s7, s13
d0042536:	eeb0 7a44 	vmov.f32	s14, s8
d004253a:	eeb0 3a42 	vmov.f32	s6, s4
d004253e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042542:	eeb0 6a62 	vmov.f32	s12, s5
d0042546:	eeb0 4a48 	vmov.f32	s8, s16
d004254a:	eeb0 2a60 	vmov.f32	s4, s1
d004254e:	eef0 2a67 	vmov.f32	s5, s15
d0042552:	f77f ade7 	ble.w	d0042124 <fillTriangleDitherBayer2Mode+0xdc>
d0042556:	eeb0 8a65 	vmov.f32	s16, s11
d004255a:	eef0 0a40 	vmov.f32	s1, s0
d004255e:	eeb0 1a63 	vmov.f32	s2, s7
d0042562:	eef0 7a64 	vmov.f32	s15, s9
d0042566:	eef0 5a44 	vmov.f32	s11, s8
d004256a:	eeb0 0a42 	vmov.f32	s0, s4
d004256e:	eef0 3a66 	vmov.f32	s7, s13
d0042572:	eef0 4a62 	vmov.f32	s9, s5
d0042576:	eeb0 4a48 	vmov.f32	s8, s16
d004257a:	eeb0 2a60 	vmov.f32	s4, s1
d004257e:	eef0 6a41 	vmov.f32	s13, s2
d0042582:	eef0 2a67 	vmov.f32	s5, s15
d0042586:	e5cd      	b.n	d0042124 <fillTriangleDitherBayer2Mode+0xdc>
d0042588:	eeb0 8a47 	vmov.f32	s16, s14
d004258c:	eef0 0a43 	vmov.f32	s1, s6
d0042590:	eeb0 1a45 	vmov.f32	s2, s10
d0042594:	eef0 7a46 	vmov.f32	s15, s12
d0042598:	eeb0 7a65 	vmov.f32	s14, s11
d004259c:	eeb0 3a40 	vmov.f32	s6, s0
d00425a0:	eeb0 5a63 	vmov.f32	s10, s7
d00425a4:	eeb0 6a64 	vmov.f32	s12, s9
d00425a8:	eef0 5a48 	vmov.f32	s11, s16
d00425ac:	eeb0 0a60 	vmov.f32	s0, s1
d00425b0:	eef0 3a41 	vmov.f32	s7, s2
d00425b4:	eef0 4a67 	vmov.f32	s9, s15
d00425b8:	e5ae      	b.n	d0042118 <fillTriangleDitherBayer2Mode+0xd0>
d00425ba:	ee76 6ae2 	vsub.f32	s13, s13, s5
d00425be:	eef4 6ac9 	vcmpe.f32	s13, s18
d00425c2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00425c6:	f340 8207 	ble.w	d00429d8 <fillTriangleDitherBayer2Mode+0x990>
d00425ca:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00425ce:	ee79 9ac5 	vsub.f32	s19, s19, s10
d00425d2:	ee32 2a63 	vsub.f32	s4, s4, s7
d00425d6:	ee87 aaa6 	vdiv.f32	s20, s15, s13
d00425da:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00425de:	ee77 2ae2 	vsub.f32	s5, s15, s5
d00425e2:	ee07 1a90 	vmov	s15, r1
d00425e6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00425ea:	ee77 7aa2 	vadd.f32	s15, s15, s5
d00425ee:	ee69 9a8a 	vmul.f32	s19, s19, s20
d00425f2:	ee22 aa0a 	vmul.f32	s20, s4, s20
d00425f6:	eea7 5aa9 	vfma.f32	s10, s15, s19
d00425fa:	eee7 3a8a 	vfma.f32	s7, s15, s20
d00425fe:	ebc8 1208 	rsb	r2, r8, r8, lsl #4
d0042602:	4dd3      	ldr	r5, [pc, #844]	; (d0042950 <fillTriangleDitherBayer2Mode+0x908>)
d0042604:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0042608:	48d2      	ldr	r0, [pc, #840]	; (d0042954 <fillTriangleDitherBayer2Mode+0x90c>)
d004260a:	eb01 1242 	add.w	r2, r1, r2, lsl #5
d004260e:	682f      	ldr	r7, [r5, #0]
d0042610:	eb08 1383 	add.w	r3, r8, r3, lsl #6
d0042614:	f008 0503 	and.w	r5, r8, #3
d0042618:	eb00 0942 	add.w	r9, r0, r2, lsl #1
d004261c:	4ace      	ldr	r2, [pc, #824]	; (d0042958 <fillTriangleDitherBayer2Mode+0x910>)
d004261e:	441f      	add	r7, r3
d0042620:	f8cd 800c 	str.w	r8, [sp, #12]
d0042624:	eb02 0385 	add.w	r3, r2, r5, lsl #2
d0042628:	eeb6 2a00 	vmov.f32	s4, #96	; 0x3f000000  0.5
d004262c:	4698      	mov	r8, r3
d004262e:	e010      	b.n	d0042652 <fillTriangleDitherBayer2Mode+0x60a>
d0042630:	ee07 3a90 	vmov	s15, r3
d0042634:	4419      	add	r1, r3
d0042636:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d004263a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004263e:	428c      	cmp	r4, r1
d0042640:	eb09 0943 	add.w	r9, r9, r3, lsl #1
d0042644:	eb07 1782 	add.w	r7, r7, r2, lsl #6
d0042648:	eea7 5aa9 	vfma.f32	s10, s15, s19
d004264c:	eee7 3a8a 	vfma.f32	s7, s15, s20
d0042650:	db62      	blt.n	d0042718 <fillTriangleDitherBayer2Mode+0x6d0>
d0042652:	eba4 0c01 	sub.w	ip, r4, r1
d0042656:	eeb4 5ac1 	vcmpe.f32	s10, s2
d004265a:	f10c 0301 	add.w	r3, ip, #1
d004265e:	2b30      	cmp	r3, #48	; 0x30
d0042660:	bfa8      	it	ge
d0042662:	2330      	movge	r3, #48	; 0x30
d0042664:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042668:	d9e2      	bls.n	d0042630 <fillTriangleDitherBayer2Mode+0x5e8>
d004266a:	f1bc 0f00 	cmp.w	ip, #0
d004266e:	eec3 7a85 	vdiv.f32	s15, s7, s10
d0042672:	dd54      	ble.n	d004271e <fillTriangleDitherBayer2Mode+0x6d6>
d0042674:	1e5a      	subs	r2, r3, #1
d0042676:	ee06 2a90 	vmov	s13, r2
d004267a:	eef0 2a45 	vmov.f32	s5, s10
d004267e:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0042682:	eee6 2aa9 	vfma.f32	s5, s13, s19
d0042686:	eef4 2ac1 	vcmpe.f32	s5, s2
d004268a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004268e:	dd47      	ble.n	d0042720 <fillTriangleDitherBayer2Mode+0x6d8>
d0042690:	eeb0 ca63 	vmov.f32	s24, s7
d0042694:	9a00      	ldr	r2, [sp, #0]
d0042696:	2a0f      	cmp	r2, #15
d0042698:	eea6 ca8a 	vfma.f32	s24, s13, s20
d004269c:	eecc ba22 	vdiv.f32	s23, s24, s5
d00426a0:	ee7b bae7 	vsub.f32	s23, s23, s15
d00426a4:	eecb 2aa6 	vdiv.f32	s5, s23, s13
d00426a8:	dd3f      	ble.n	d004272a <fillTriangleDitherBayer2Mode+0x6e2>
d00426aa:	f1a9 0602 	sub.w	r6, r9, #2
d00426ae:	2200      	movs	r2, #0
d00426b0:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d00426b4:	fec6 6ae1 	vminnm.f32	s13, s13, s3
d00426b8:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d00426bc:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d00426c0:	3201      	adds	r2, #1
d00426c2:	ee76 6a82 	vadd.f32	s13, s13, s4
d00426c6:	0185      	lsls	r5, r0, #6
d00426c8:	ee77 7aa2 	vadd.f32	s15, s15, s5
d00426cc:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d00426d0:	ee16 0a90 	vmov	r0, s13
d00426d4:	b280      	uxth	r0, r0
d00426d6:	4586      	cmp	lr, r0
d00426d8:	d903      	bls.n	d00426e2 <fillTriangleDitherBayer2Mode+0x69a>
d00426da:	8030      	strh	r0, [r6, #0]
d00426dc:	f04f 0010 	mov.w	r0, #16
d00426e0:	5578      	strb	r0, [r7, r5]
d00426e2:	4293      	cmp	r3, r2
d00426e4:	dce4      	bgt.n	d00426b0 <fillTriangleDitherBayer2Mode+0x668>
d00426e6:	f1bc 0f00 	cmp.w	ip, #0
d00426ea:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d00426ee:	ea4f 0043 	mov.w	r0, r3, lsl #1
d00426f2:	ea4f 1282 	mov.w	r2, r2, lsl #6
d00426f6:	bfbc      	itt	lt
d00426f8:	2002      	movlt	r0, #2
d00426fa:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d00426fe:	4481      	add	r9, r0
d0042700:	4417      	add	r7, r2
d0042702:	ee07 3a90 	vmov	s15, r3
d0042706:	4419      	add	r1, r3
d0042708:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004270c:	428c      	cmp	r4, r1
d004270e:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0042712:	eee7 3a8a 	vfma.f32	s7, s15, s20
d0042716:	da9c      	bge.n	d0042652 <fillTriangleDitherBayer2Mode+0x60a>
d0042718:	f8dd 800c 	ldr.w	r8, [sp, #12]
d004271c:	e5d2      	b.n	d00422c4 <fillTriangleDitherBayer2Mode+0x27c>
d004271e:	d1f0      	bne.n	d0042702 <fillTriangleDitherBayer2Mode+0x6ba>
d0042720:	9a00      	ldr	r2, [sp, #0]
d0042722:	eef0 2a44 	vmov.f32	s5, s8
d0042726:	2a0f      	cmp	r2, #15
d0042728:	dcbf      	bgt.n	d00426aa <fillTriangleDitherBayer2Mode+0x662>
d004272a:	2a00      	cmp	r2, #0
d004272c:	f340 8136 	ble.w	d004299c <fillTriangleDitherBayer2Mode+0x954>
d0042730:	9404      	str	r4, [sp, #16]
d0042732:	f1a9 0e02 	sub.w	lr, r9, #2
d0042736:	2200      	movs	r2, #0
d0042738:	9c02      	ldr	r4, [sp, #8]
d004273a:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d004273e:	fec6 6ae1 	vminnm.f32	s13, s13, s3
d0042742:	ee76 6a82 	vadd.f32	s13, s13, s4
d0042746:	f83e af02 	ldrh.w	sl, [lr, #2]!
d004274a:	188e      	adds	r6, r1, r2
d004274c:	eb02 0582 	add.w	r5, r2, r2, lsl #2
d0042750:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0042754:	3201      	adds	r2, #1
d0042756:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d004275a:	f006 0603 	and.w	r6, r6, #3
d004275e:	01ad      	lsls	r5, r5, #6
d0042760:	ee16 0a90 	vmov	r0, s13
d0042764:	b280      	uxth	r0, r0
d0042766:	4582      	cmp	sl, r0
d0042768:	d908      	bls.n	d004277c <fillTriangleDitherBayer2Mode+0x734>
d004276a:	f818 6006 	ldrb.w	r6, [r8, r6]
d004276e:	f8ae 0000 	strh.w	r0, [lr]
d0042772:	42a6      	cmp	r6, r4
d0042774:	bfac      	ite	ge
d0042776:	4658      	movge	r0, fp
d0042778:	2010      	movlt	r0, #16
d004277a:	5578      	strb	r0, [r7, r5]
d004277c:	4293      	cmp	r3, r2
d004277e:	dcdc      	bgt.n	d004273a <fillTriangleDitherBayer2Mode+0x6f2>
d0042780:	9c04      	ldr	r4, [sp, #16]
d0042782:	e7b0      	b.n	d00426e6 <fillTriangleDitherBayer2Mode+0x69e>
d0042784:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0042788:	ed9f 0a74 	vldr	s0, [pc, #464]	; d004295c <fillTriangleDitherBayer2Mode+0x914>
d004278c:	eef4 7ac0 	vcmpe.f32	s15, s0
d0042790:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042794:	f340 8125 	ble.w	d00429e2 <fillTriangleDitherBayer2Mode+0x99a>
d0042798:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d004279c:	ee32 2a66 	vsub.f32	s4, s4, s13
d00427a0:	ee71 1ac6 	vsub.f32	s3, s3, s12
d00427a4:	ee89 0a27 	vdiv.f32	s0, s18, s15
d00427a8:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00427ac:	ee37 4ac4 	vsub.f32	s8, s15, s8
d00427b0:	ee07 1a90 	vmov	s15, r1
d00427b4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00427b8:	ee77 7a84 	vadd.f32	s15, s15, s8
d00427bc:	ee22 2a00 	vmul.f32	s4, s4, s0
d00427c0:	ee61 1a80 	vmul.f32	s3, s3, s0
d00427c4:	eee7 6a82 	vfma.f32	s13, s15, s4
d00427c8:	eea7 6aa1 	vfma.f32	s12, s15, s3
d00427cc:	ebc8 1208 	rsb	r2, r8, r8, lsl #4
d00427d0:	4d5f      	ldr	r5, [pc, #380]	; (d0042950 <fillTriangleDitherBayer2Mode+0x908>)
d00427d2:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d00427d6:	485f      	ldr	r0, [pc, #380]	; (d0042954 <fillTriangleDitherBayer2Mode+0x90c>)
d00427d8:	eb01 1242 	add.w	r2, r1, r2, lsl #5
d00427dc:	682f      	ldr	r7, [r5, #0]
d00427de:	eb08 1383 	add.w	r3, r8, r3, lsl #6
d00427e2:	f008 0503 	and.w	r5, r8, #3
d00427e6:	eb00 0942 	add.w	r9, r0, r2, lsl #1
d00427ea:	4a5b      	ldr	r2, [pc, #364]	; (d0042958 <fillTriangleDitherBayer2Mode+0x910>)
d00427ec:	441f      	add	r7, r3
d00427ee:	f8cd 8010 	str.w	r8, [sp, #16]
d00427f2:	eb02 0385 	add.w	r3, r2, r5, lsl #2
d00427f6:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d00427fa:	4698      	mov	r8, r3
d00427fc:	e010      	b.n	d0042820 <fillTriangleDitherBayer2Mode+0x7d8>
d00427fe:	ee07 2a90 	vmov	s15, r2
d0042802:	4411      	add	r1, r2
d0042804:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0042808:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004280c:	428c      	cmp	r4, r1
d004280e:	eb09 0942 	add.w	r9, r9, r2, lsl #1
d0042812:	eb07 1783 	add.w	r7, r7, r3, lsl #6
d0042816:	eee7 6a82 	vfma.f32	s13, s15, s4
d004281a:	eea7 6aa1 	vfma.f32	s12, s15, s3
d004281e:	db62      	blt.n	d00428e6 <fillTriangleDitherBayer2Mode+0x89e>
d0042820:	eba4 0c01 	sub.w	ip, r4, r1
d0042824:	eef4 6aed 	vcmpe.f32	s13, s27
d0042828:	f10c 0201 	add.w	r2, ip, #1
d004282c:	2a30      	cmp	r2, #48	; 0x30
d004282e:	bfa8      	it	ge
d0042830:	2230      	movge	r2, #48	; 0x30
d0042832:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042836:	d9e2      	bls.n	d00427fe <fillTriangleDitherBayer2Mode+0x7b6>
d0042838:	f1bc 0f00 	cmp.w	ip, #0
d004283c:	eec6 7a26 	vdiv.f32	s15, s12, s13
d0042840:	dd54      	ble.n	d00428ec <fillTriangleDitherBayer2Mode+0x8a4>
d0042842:	1e53      	subs	r3, r2, #1
d0042844:	ee00 3a10 	vmov	s0, r3
d0042848:	eeb0 9a66 	vmov.f32	s18, s13
d004284c:	eeb8 0ac0 	vcvt.f32.s32	s0, s0
d0042850:	eea0 9a02 	vfma.f32	s18, s0, s4
d0042854:	eeb4 9aed 	vcmpe.f32	s18, s27
d0042858:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004285c:	dd47      	ble.n	d00428ee <fillTriangleDitherBayer2Mode+0x8a6>
d004285e:	eeb0 fa46 	vmov.f32	s30, s12
d0042862:	9b00      	ldr	r3, [sp, #0]
d0042864:	2b0f      	cmp	r3, #15
d0042866:	eea0 fa21 	vfma.f32	s30, s0, s3
d004286a:	eecf 9a09 	vdiv.f32	s19, s30, s18
d004286e:	ee79 9ae7 	vsub.f32	s19, s19, s15
d0042872:	ee89 9a80 	vdiv.f32	s18, s19, s0
d0042876:	dd3f      	ble.n	d00428f8 <fillTriangleDitherBayer2Mode+0x8b0>
d0042878:	f1a9 0602 	sub.w	r6, r9, #2
d004287c:	2000      	movs	r0, #0
d004287e:	fe87 0aa2 	vmaxnm.f32	s0, s15, s5
d0042882:	fe80 0a41 	vminnm.f32	s0, s0, s2
d0042886:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d004288a:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d004288e:	3001      	adds	r0, #1
d0042890:	ee30 0a04 	vadd.f32	s0, s0, s8
d0042894:	019d      	lsls	r5, r3, #6
d0042896:	ee77 7a89 	vadd.f32	s15, s15, s18
d004289a:	eebc 0ac0 	vcvt.u32.f32	s0, s0
d004289e:	ee10 3a10 	vmov	r3, s0
d00428a2:	b29b      	uxth	r3, r3
d00428a4:	459e      	cmp	lr, r3
d00428a6:	d903      	bls.n	d00428b0 <fillTriangleDitherBayer2Mode+0x868>
d00428a8:	8033      	strh	r3, [r6, #0]
d00428aa:	f04f 0310 	mov.w	r3, #16
d00428ae:	557b      	strb	r3, [r7, r5]
d00428b0:	4282      	cmp	r2, r0
d00428b2:	dce4      	bgt.n	d004287e <fillTriangleDitherBayer2Mode+0x836>
d00428b4:	f1bc 0f00 	cmp.w	ip, #0
d00428b8:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d00428bc:	ea4f 0042 	mov.w	r0, r2, lsl #1
d00428c0:	ea4f 1383 	mov.w	r3, r3, lsl #6
d00428c4:	bfbc      	itt	lt
d00428c6:	2002      	movlt	r0, #2
d00428c8:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d00428cc:	4481      	add	r9, r0
d00428ce:	441f      	add	r7, r3
d00428d0:	ee07 2a90 	vmov	s15, r2
d00428d4:	4411      	add	r1, r2
d00428d6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00428da:	428c      	cmp	r4, r1
d00428dc:	eee7 6a82 	vfma.f32	s13, s15, s4
d00428e0:	eea7 6aa1 	vfma.f32	s12, s15, s3
d00428e4:	da9c      	bge.n	d0042820 <fillTriangleDitherBayer2Mode+0x7d8>
d00428e6:	f8dd 8010 	ldr.w	r8, [sp, #16]
d00428ea:	e5f2      	b.n	d00424d2 <fillTriangleDitherBayer2Mode+0x48a>
d00428ec:	d1f0      	bne.n	d00428d0 <fillTriangleDitherBayer2Mode+0x888>
d00428ee:	9b00      	ldr	r3, [sp, #0]
d00428f0:	eeb0 9a62 	vmov.f32	s18, s5
d00428f4:	2b0f      	cmp	r3, #15
d00428f6:	dcbf      	bgt.n	d0042878 <fillTriangleDitherBayer2Mode+0x830>
d00428f8:	2b00      	cmp	r3, #0
d00428fa:	dd31      	ble.n	d0042960 <fillTriangleDitherBayer2Mode+0x918>
d00428fc:	9407      	str	r4, [sp, #28]
d00428fe:	f1a9 0e02 	sub.w	lr, r9, #2
d0042902:	2000      	movs	r0, #0
d0042904:	9c02      	ldr	r4, [sp, #8]
d0042906:	fe87 0aa2 	vmaxnm.f32	s0, s15, s5
d004290a:	fe80 0a41 	vminnm.f32	s0, s0, s2
d004290e:	ee30 0a04 	vadd.f32	s0, s0, s8
d0042912:	f83e af02 	ldrh.w	sl, [lr, #2]!
d0042916:	180e      	adds	r6, r1, r0
d0042918:	eb00 0580 	add.w	r5, r0, r0, lsl #2
d004291c:	ee77 7a89 	vadd.f32	s15, s15, s18
d0042920:	3001      	adds	r0, #1
d0042922:	eebc 0ac0 	vcvt.u32.f32	s0, s0
d0042926:	f006 0603 	and.w	r6, r6, #3
d004292a:	01ad      	lsls	r5, r5, #6
d004292c:	ee10 3a10 	vmov	r3, s0
d0042930:	b29b      	uxth	r3, r3
d0042932:	459a      	cmp	sl, r3
d0042934:	d908      	bls.n	d0042948 <fillTriangleDitherBayer2Mode+0x900>
d0042936:	f818 6006 	ldrb.w	r6, [r8, r6]
d004293a:	f8ae 3000 	strh.w	r3, [lr]
d004293e:	42a6      	cmp	r6, r4
d0042940:	bfac      	ite	ge
d0042942:	465b      	movge	r3, fp
d0042944:	2310      	movlt	r3, #16
d0042946:	557b      	strb	r3, [r7, r5]
d0042948:	4282      	cmp	r2, r0
d004294a:	dcdc      	bgt.n	d0042906 <fillTriangleDitherBayer2Mode+0x8be>
d004294c:	9c07      	ldr	r4, [sp, #28]
d004294e:	e7b1      	b.n	d00428b4 <fillTriangleDitherBayer2Mode+0x86c>
d0042950:	d012da64 	.word	0xd012da64
d0042954:	d0048360 	.word	0xd0048360
d0042958:	d00479fc 	.word	0xd00479fc
d004295c:	38d1b717 	.word	0x38d1b717
d0042960:	f1a9 0602 	sub.w	r6, r9, #2
d0042964:	2000      	movs	r0, #0
d0042966:	fe87 0aa2 	vmaxnm.f32	s0, s15, s5
d004296a:	fe80 0a41 	vminnm.f32	s0, s0, s2
d004296e:	ee30 0a04 	vadd.f32	s0, s0, s8
d0042972:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0042976:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d004297a:	ee77 7a89 	vadd.f32	s15, s15, s18
d004297e:	019d      	lsls	r5, r3, #6
d0042980:	3001      	adds	r0, #1
d0042982:	eebc 0ac0 	vcvt.u32.f32	s0, s0
d0042986:	ee10 3a10 	vmov	r3, s0
d004298a:	b29b      	uxth	r3, r3
d004298c:	459e      	cmp	lr, r3
d004298e:	d902      	bls.n	d0042996 <fillTriangleDitherBayer2Mode+0x94e>
d0042990:	8033      	strh	r3, [r6, #0]
d0042992:	f807 b005 	strb.w	fp, [r7, r5]
d0042996:	4282      	cmp	r2, r0
d0042998:	dce5      	bgt.n	d0042966 <fillTriangleDitherBayer2Mode+0x91e>
d004299a:	e78b      	b.n	d00428b4 <fillTriangleDitherBayer2Mode+0x86c>
d004299c:	f1a9 0602 	sub.w	r6, r9, #2
d00429a0:	2200      	movs	r2, #0
d00429a2:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d00429a6:	fec6 6ae1 	vminnm.f32	s13, s13, s3
d00429aa:	ee76 6a82 	vadd.f32	s13, s13, s4
d00429ae:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d00429b2:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d00429b6:	ee77 7aa2 	vadd.f32	s15, s15, s5
d00429ba:	0185      	lsls	r5, r0, #6
d00429bc:	3201      	adds	r2, #1
d00429be:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d00429c2:	ee16 0a90 	vmov	r0, s13
d00429c6:	b280      	uxth	r0, r0
d00429c8:	4586      	cmp	lr, r0
d00429ca:	d902      	bls.n	d00429d2 <fillTriangleDitherBayer2Mode+0x98a>
d00429cc:	8030      	strh	r0, [r6, #0]
d00429ce:	f807 b005 	strb.w	fp, [r7, r5]
d00429d2:	4293      	cmp	r3, r2
d00429d4:	dce5      	bgt.n	d00429a2 <fillTriangleDitherBayer2Mode+0x95a>
d00429d6:	e686      	b.n	d00426e6 <fillTriangleDitherBayer2Mode+0x69e>
d00429d8:	eeb0 aa44 	vmov.f32	s20, s8
d00429dc:	eef0 9a44 	vmov.f32	s19, s8
d00429e0:	e60d      	b.n	d00425fe <fillTriangleDitherBayer2Mode+0x5b6>
d00429e2:	eef0 1a62 	vmov.f32	s3, s5
d00429e6:	eeb0 2a62 	vmov.f32	s4, s5
d00429ea:	e6ef      	b.n	d00427cc <fillTriangleDitherBayer2Mode+0x784>

d00429ec <vec3Add>:
d00429ec:	ee30 0a21 	vadd.f32	s0, s0, s3
d00429f0:	b08e      	sub	sp, #56	; 0x38
d00429f2:	ee70 0a82 	vadd.f32	s1, s1, s4
d00429f6:	ee31 1a22 	vadd.f32	s2, s2, s5
d00429fa:	b00e      	add	sp, #56	; 0x38
d00429fc:	4770      	bx	lr
d00429fe:	bf00      	nop

d0042a00 <vec3Scale>:
d0042a00:	ee20 0a21 	vmul.f32	s0, s0, s3
d0042a04:	b08c      	sub	sp, #48	; 0x30
d0042a06:	ee61 0aa0 	vmul.f32	s1, s3, s1
d0042a0a:	ee21 1a81 	vmul.f32	s2, s3, s2
d0042a0e:	b00c      	add	sp, #48	; 0x30
d0042a10:	4770      	bx	lr
d0042a12:	bf00      	nop

d0042a14 <vec3Dot>:
d0042a14:	ee20 2a82 	vmul.f32	s4, s1, s4
d0042a18:	b086      	sub	sp, #24
d0042a1a:	eea0 2a21 	vfma.f32	s4, s0, s3
d0042a1e:	eea1 2a22 	vfma.f32	s4, s2, s5
d0042a22:	eeb0 0a42 	vmov.f32	s0, s4
d0042a26:	b006      	add	sp, #24
d0042a28:	4770      	bx	lr
d0042a2a:	bf00      	nop

d0042a2c <vec3Cross>:
d0042a2c:	eeb0 7a60 	vmov.f32	s14, s1
d0042a30:	b08e      	sub	sp, #56	; 0x38
d0042a32:	eef0 7a40 	vmov.f32	s15, s0
d0042a36:	ee62 0ac0 	vnmul.f32	s1, s5, s0
d0042a3a:	ee61 6ac7 	vnmul.f32	s13, s3, s14
d0042a3e:	ee22 0a41 	vnmul.f32	s0, s4, s2
d0042a42:	eee1 0a21 	vfma.f32	s1, s2, s3
d0042a46:	eee7 6a82 	vfma.f32	s13, s15, s4
d0042a4a:	eea7 0a22 	vfma.f32	s0, s14, s5
d0042a4e:	eeb0 1a66 	vmov.f32	s2, s13
d0042a52:	b00e      	add	sp, #56	; 0x38
d0042a54:	4770      	bx	lr
d0042a56:	bf00      	nop

d0042a58 <vec3Normalize>:
d0042a58:	ee60 7aa0 	vmul.f32	s15, s1, s1
d0042a5c:	ed9f 7a22 	vldr	s14, [pc, #136]	; d0042ae8 <vec3Normalize+0x90>
d0042a60:	b08c      	sub	sp, #48	; 0x30
d0042a62:	eee0 7a00 	vfma.f32	s15, s0, s0
d0042a66:	eee1 7a01 	vfma.f32	s15, s2, s2
d0042a6a:	eef4 7ac7 	vcmpe.f32	s15, s14
d0042a6e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042a72:	d934      	bls.n	d0042ade <vec3Normalize+0x86>
d0042a74:	ed9f 7a1d 	vldr	s14, [pc, #116]	; d0042aec <vec3Normalize+0x94>
d0042a78:	eef4 7a47 	vcmp.f32	s15, s14
d0042a7c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042a80:	dd06      	ble.n	d0042a90 <vec3Normalize+0x38>
d0042a82:	ed9f 7a1b 	vldr	s14, [pc, #108]	; d0042af0 <vec3Normalize+0x98>
d0042a86:	eef4 7a47 	vcmp.f32	s15, s14
d0042a8a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042a8e:	d418      	bmi.n	d0042ac2 <vec3Normalize+0x6a>
d0042a90:	ee17 2a90 	vmov	r2, s15
d0042a94:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d0042a98:	4b16      	ldr	r3, [pc, #88]	; (d0042af4 <vec3Normalize+0x9c>)
d0042a9a:	eeb7 7a08 	vmov.f32	s14, #120	; 0x3fc00000  1.5
d0042a9e:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d0042aa2:	ee67 7a86 	vmul.f32	s15, s15, s12
d0042aa6:	ee06 3a90 	vmov	s13, r3
d0042aaa:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0042aae:	eea6 7ae7 	vfms.f32	s14, s13, s15
d0042ab2:	ee67 7a26 	vmul.f32	s15, s14, s13
d0042ab6:	ee27 0a80 	vmul.f32	s0, s15, s0
d0042aba:	ee67 0aa0 	vmul.f32	s1, s15, s1
d0042abe:	ee27 1a81 	vmul.f32	s2, s15, s2
d0042ac2:	ed8d 0a09 	vstr	s0, [sp, #36]	; 0x24
d0042ac6:	edcd 0a0a 	vstr	s1, [sp, #40]	; 0x28
d0042aca:	ed8d 1a0b 	vstr	s2, [sp, #44]	; 0x2c
d0042ace:	ed9d 0a09 	vldr	s0, [sp, #36]	; 0x24
d0042ad2:	eddd 0a0a 	vldr	s1, [sp, #40]	; 0x28
d0042ad6:	ed9d 1a0b 	vldr	s2, [sp, #44]	; 0x2c
d0042ada:	b00c      	add	sp, #48	; 0x30
d0042adc:	4770      	bx	lr
d0042ade:	2300      	movs	r3, #0
d0042ae0:	9309      	str	r3, [sp, #36]	; 0x24
d0042ae2:	930a      	str	r3, [sp, #40]	; 0x28
d0042ae4:	930b      	str	r3, [sp, #44]	; 0x2c
d0042ae6:	e7f2      	b.n	d0042ace <vec3Normalize+0x76>
d0042ae8:	358637bd 	.word	0x358637bd
d0042aec:	3f7fbe77 	.word	0x3f7fbe77
d0042af0:	3f8020c5 	.word	0x3f8020c5
d0042af4:	5f3759df 	.word	0x5f3759df

d0042af8 <rotateAroundAxis>:
d0042af8:	ee62 7a02 	vmul.f32	s15, s4, s4
d0042afc:	ed9f 7a51 	vldr	s14, [pc, #324]	; d0042c44 <rotateAroundAxis+0x14c>
d0042b00:	b500      	push	{lr}
d0042b02:	eee1 7aa1 	vfma.f32	s15, s3, s3
d0042b06:	ed2d 8b0c 	vpush	{d8-d13}
d0042b0a:	eef0 ca40 	vmov.f32	s25, s0
d0042b0e:	b08f      	sub	sp, #60	; 0x3c
d0042b10:	eeb0 ca60 	vmov.f32	s24, s1
d0042b14:	eef0 ba41 	vmov.f32	s23, s2
d0042b18:	eee2 7aa2 	vfma.f32	s15, s5, s5
d0042b1c:	eeb0 da43 	vmov.f32	s26, s6
d0042b20:	eef4 7ac7 	vcmpe.f32	s15, s14
d0042b24:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042b28:	d97c      	bls.n	d0042c24 <rotateAroundAxis+0x12c>
d0042b2a:	ed9f 7a47 	vldr	s14, [pc, #284]	; d0042c48 <rotateAroundAxis+0x150>
d0042b2e:	eef4 7a47 	vcmp.f32	s15, s14
d0042b32:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042b36:	dd55      	ble.n	d0042be4 <rotateAroundAxis+0xec>
d0042b38:	ed9f 7a44 	vldr	s14, [pc, #272]	; d0042c4c <rotateAroundAxis+0x154>
d0042b3c:	eef4 7a47 	vcmp.f32	s15, s14
d0042b40:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042b44:	d54e      	bpl.n	d0042be4 <rotateAroundAxis+0xec>
d0042b46:	eef0 da42 	vmov.f32	s27, s4
d0042b4a:	eeb0 9a61 	vmov.f32	s18, s3
d0042b4e:	eeb0 8a62 	vmov.f32	s16, s5
d0042b52:	ee60 8a82 	vmul.f32	s17, s1, s4
d0042b56:	ee62 5ae0 	vnmul.f32	s11, s5, s1
d0042b5a:	ee21 6ac1 	vnmul.f32	s12, s3, s2
d0042b5e:	eeec 8a89 	vfma.f32	s17, s25, s18
d0042b62:	ee6d 7aec 	vnmul.f32	s15, s27, s25
d0042b66:	eeeb 5aad 	vfma.f32	s11, s23, s27
d0042b6a:	eeac 6a88 	vfma.f32	s12, s25, s16
d0042b6e:	eeec 7a09 	vfma.f32	s15, s24, s18
d0042b72:	eeeb 8a88 	vfma.f32	s17, s23, s16
d0042b76:	eeb0 ba65 	vmov.f32	s22, s11
d0042b7a:	eeb0 aa46 	vmov.f32	s20, s12
d0042b7e:	eef0 aa67 	vmov.f32	s21, s15
d0042b82:	eeb0 0a4d 	vmov.f32	s0, s26
d0042b86:	f004 faaf 	bl	d00470e8 <cosf>
d0042b8a:	eef0 9a40 	vmov.f32	s19, s0
d0042b8e:	eeb0 0a4d 	vmov.f32	s0, s26
d0042b92:	f004 fc8d 	bl	d00474b0 <sinf>
d0042b96:	ee60 5a0b 	vmul.f32	s11, s0, s22
d0042b9a:	ee20 6a0a 	vmul.f32	s12, s0, s20
d0042b9e:	ee60 7a2a 	vmul.f32	s15, s0, s21
d0042ba2:	eee9 5aac 	vfma.f32	s11, s19, s25
d0042ba6:	eea9 6a8c 	vfma.f32	s12, s19, s24
d0042baa:	eee9 7aab 	vfma.f32	s15, s19, s23
d0042bae:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0042bb2:	ee29 9a28 	vmul.f32	s18, s18, s17
d0042bb6:	ee2d 7aa8 	vmul.f32	s14, s27, s17
d0042bba:	ee76 9ae9 	vsub.f32	s19, s13, s19
d0042bbe:	ee28 8a28 	vmul.f32	s16, s16, s17
d0042bc2:	eeb0 0a65 	vmov.f32	s0, s11
d0042bc6:	eef0 0a46 	vmov.f32	s1, s12
d0042bca:	eeb0 1a67 	vmov.f32	s2, s15
d0042bce:	eea9 0a89 	vfma.f32	s0, s19, s18
d0042bd2:	eee9 0a87 	vfma.f32	s1, s19, s14
d0042bd6:	eea9 1a88 	vfma.f32	s2, s19, s16
d0042bda:	b00f      	add	sp, #60	; 0x3c
d0042bdc:	ecbd 8b0c 	vpop	{d8-d13}
d0042be0:	f85d fb04 	ldr.w	pc, [sp], #4
d0042be4:	ee17 2a90 	vmov	r2, s15
d0042be8:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0042bec:	4b18      	ldr	r3, [pc, #96]	; (d0042c50 <rotateAroundAxis+0x158>)
d0042bee:	eeb7 8a08 	vmov.f32	s16, #120	; 0x3fc00000  1.5
d0042bf2:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d0042bf6:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0042bfa:	ee07 3a10 	vmov	s14, r3
d0042bfe:	ee67 7a87 	vmul.f32	s15, s15, s14
d0042c02:	eea7 8a67 	vfms.f32	s16, s14, s15
d0042c06:	ee27 8a08 	vmul.f32	s16, s14, s16
d0042c0a:	ee62 da08 	vmul.f32	s27, s4, s16
d0042c0e:	ee21 9a88 	vmul.f32	s18, s3, s16
d0042c12:	ee22 8a88 	vmul.f32	s16, s5, s16
d0042c16:	ee6c 8a2d 	vmul.f32	s17, s24, s27
d0042c1a:	ee29 6a6b 	vnmul.f32	s12, s18, s23
d0042c1e:	ee68 5a4c 	vnmul.f32	s11, s16, s24
d0042c22:	e79c      	b.n	d0042b5e <rotateAroundAxis+0x66>
d0042c24:	eddf 8a0b 	vldr	s17, [pc, #44]	; d0042c54 <rotateAroundAxis+0x15c>
d0042c28:	eef0 aa68 	vmov.f32	s21, s17
d0042c2c:	eeb0 aa68 	vmov.f32	s20, s17
d0042c30:	eeb0 ba68 	vmov.f32	s22, s17
d0042c34:	eeb0 8a68 	vmov.f32	s16, s17
d0042c38:	eef0 da68 	vmov.f32	s27, s17
d0042c3c:	eeb0 9a68 	vmov.f32	s18, s17
d0042c40:	e79f      	b.n	d0042b82 <rotateAroundAxis+0x8a>
d0042c42:	bf00      	nop
d0042c44:	358637bd 	.word	0x358637bd
d0042c48:	3f7fbe77 	.word	0x3f7fbe77
d0042c4c:	3f8020c5 	.word	0x3f8020c5
d0042c50:	5f3759df 	.word	0x5f3759df
d0042c54:	00000000 	.word	0x00000000

d0042c58 <vec3>:
d0042c58:	b088      	sub	sp, #32
d0042c5a:	b008      	add	sp, #32
d0042c5c:	4770      	bx	lr
d0042c5e:	bf00      	nop

d0042c60 <degrees>:
d0042c60:	eddf 7a02 	vldr	s15, [pc, #8]	; d0042c6c <degrees+0xc>
d0042c64:	ee20 0a27 	vmul.f32	s0, s0, s15
d0042c68:	4770      	bx	lr
d0042c6a:	bf00      	nop
d0042c6c:	3c8efa35 	.word	0x3c8efa35

d0042c70 <powf>:
d0042c70:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0042c74:	eeb4 0a47 	vcmp.f32	s0, s14
d0042c78:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042c7c:	d04e      	beq.n	d0042d1c <powf+0xac>
d0042c7e:	eef5 0a40 	vcmp.f32	s1, #0.0
d0042c82:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042c86:	d049      	beq.n	d0042d1c <powf+0xac>
d0042c88:	eef4 0a47 	vcmp.f32	s1, s14
d0042c8c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042c90:	d054      	beq.n	d0042d3c <powf+0xcc>
d0042c92:	eeb5 0a40 	vcmp.f32	s0, #0.0
d0042c96:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042c9a:	d044      	beq.n	d0042d26 <powf+0xb6>
d0042c9c:	eefd 7ae0 	vcvt.s32.f32	s15, s1
d0042ca0:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d0042ca4:	eef4 6a60 	vcmp.f32	s13, s1
d0042ca8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042cac:	d04e      	beq.n	d0042d4c <powf+0xdc>
d0042cae:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0042cb2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042cb6:	d459      	bmi.n	d0042d6c <powf+0xfc>
d0042cb8:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0042cbc:	eef4 0a67 	vcmp.f32	s1, s15
d0042cc0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042cc4:	d03f      	beq.n	d0042d46 <powf+0xd6>
d0042cc6:	eefe 7a00 	vmov.f32	s15, #224	; 0xbf000000 -0.5
d0042cca:	eef4 0a67 	vcmp.f32	s1, s15
d0042cce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042cd2:	d052      	beq.n	d0042d7a <powf+0x10a>
d0042cd4:	eef0 7a00 	vmov.f32	s15, #0	; 0x40000000  2.0
d0042cd8:	eef4 0a67 	vcmp.f32	s1, s15
d0042cdc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042ce0:	d052      	beq.n	d0042d88 <powf+0x118>
d0042ce2:	eef0 7a08 	vmov.f32	s15, #8	; 0x40400000  3.0
d0042ce6:	eef4 0a67 	vcmp.f32	s1, s15
d0042cea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042cee:	d04e      	beq.n	d0042d8e <powf+0x11e>
d0042cf0:	eef1 7a00 	vmov.f32	s15, #16	; 0x40800000  4.0
d0042cf4:	eef4 0a67 	vcmp.f32	s1, s15
d0042cf8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042cfc:	d042      	beq.n	d0042d84 <powf+0x114>
d0042cfe:	b500      	push	{lr}
d0042d00:	b083      	sub	sp, #12
d0042d02:	edcd 0a01 	vstr	s1, [sp, #4]
d0042d06:	f004 fb41 	bl	d004738c <logf>
d0042d0a:	eddd 0a01 	vldr	s1, [sp, #4]
d0042d0e:	ee20 0a20 	vmul.f32	s0, s0, s1
d0042d12:	b003      	add	sp, #12
d0042d14:	f85d eb04 	ldr.w	lr, [sp], #4
d0042d18:	f004 bac2 	b.w	d00472a0 <expf>
d0042d1c:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0042d20:	eeb0 0a67 	vmov.f32	s0, s15
d0042d24:	4770      	bx	lr
d0042d26:	eef5 0ac0 	vcmpe.f32	s1, #0.0
d0042d2a:	eddf 7a1d 	vldr	s15, [pc, #116]	; d0042da0 <powf+0x130>
d0042d2e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042d32:	fe70 7a27 	vselgt.f32	s15, s0, s15
d0042d36:	eeb0 0a67 	vmov.f32	s0, s15
d0042d3a:	4770      	bx	lr
d0042d3c:	eef0 7a40 	vmov.f32	s15, s0
d0042d40:	eeb0 0a67 	vmov.f32	s0, s15
d0042d44:	4770      	bx	lr
d0042d46:	eef1 7ac0 	vsqrt.f32	s15, s0
d0042d4a:	e7e9      	b.n	d0042d20 <powf+0xb0>
d0042d4c:	ee17 3a90 	vmov	r3, s15
d0042d50:	2b00      	cmp	r3, #0
d0042d52:	db0e      	blt.n	d0042d72 <powf+0x102>
d0042d54:	d020      	beq.n	d0042d98 <powf+0x128>
d0042d56:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0042d5a:	07da      	lsls	r2, r3, #31
d0042d5c:	bf48      	it	mi
d0042d5e:	ee67 7a80 	vmulmi.f32	s15, s15, s0
d0042d62:	085b      	lsrs	r3, r3, #1
d0042d64:	ee20 0a00 	vmul.f32	s0, s0, s0
d0042d68:	d1f7      	bne.n	d0042d5a <powf+0xea>
d0042d6a:	e7d9      	b.n	d0042d20 <powf+0xb0>
d0042d6c:	eddf 7a0d 	vldr	s15, [pc, #52]	; d0042da4 <powf+0x134>
d0042d70:	e7d6      	b.n	d0042d20 <powf+0xb0>
d0042d72:	ee87 0a00 	vdiv.f32	s0, s14, s0
d0042d76:	425b      	negs	r3, r3
d0042d78:	e7ed      	b.n	d0042d56 <powf+0xe6>
d0042d7a:	eef1 6ac0 	vsqrt.f32	s13, s0
d0042d7e:	eec7 7a26 	vdiv.f32	s15, s14, s13
d0042d82:	e7cd      	b.n	d0042d20 <powf+0xb0>
d0042d84:	ee20 0a00 	vmul.f32	s0, s0, s0
d0042d88:	ee60 7a00 	vmul.f32	s15, s0, s0
d0042d8c:	e7c8      	b.n	d0042d20 <powf+0xb0>
d0042d8e:	ee60 7a00 	vmul.f32	s15, s0, s0
d0042d92:	ee67 7a80 	vmul.f32	s15, s15, s0
d0042d96:	e7c3      	b.n	d0042d20 <powf+0xb0>
d0042d98:	eef0 7a47 	vmov.f32	s15, s14
d0042d9c:	e7c0      	b.n	d0042d20 <powf+0xb0>
d0042d9e:	bf00      	nop
d0042da0:	7f800000 	.word	0x7f800000
d0042da4:	7fc00000 	.word	0x7fc00000

d0042da8 <sb3dParticlesClear>:
d0042da8:	4b0f      	ldr	r3, [pc, #60]	; (d0042de8 <sb3dParticlesClear+0x40>)
d0042daa:	f04f 507e 	mov.w	r0, #1065353216	; 0x3f800000
d0042dae:	2100      	movs	r1, #0
d0042db0:	2200      	movs	r2, #0
d0042db2:	b430      	push	{r4, r5}
d0042db4:	f503 5500 	add.w	r5, r3, #8192	; 0x2000
d0042db8:	2421      	movs	r4, #33	; 0x21
d0042dba:	7699      	strb	r1, [r3, #26]
d0042dbc:	3320      	adds	r3, #32
d0042dbe:	f843 2c20 	str.w	r2, [r3, #-32]
d0042dc2:	f843 2c1c 	str.w	r2, [r3, #-28]
d0042dc6:	f843 2c18 	str.w	r2, [r3, #-24]
d0042dca:	f843 0c14 	str.w	r0, [r3, #-20]
d0042dce:	f843 2c10 	str.w	r2, [r3, #-16]
d0042dd2:	f843 0c0c 	str.w	r0, [r3, #-12]
d0042dd6:	f803 4c08 	strb.w	r4, [r3, #-8]
d0042dda:	f803 1c07 	strb.w	r1, [r3, #-7]
d0042dde:	42ab      	cmp	r3, r5
d0042de0:	d1eb      	bne.n	d0042dba <sb3dParticlesClear+0x12>
d0042de2:	bc30      	pop	{r4, r5}
d0042de4:	4770      	bx	lr
d0042de6:	bf00      	nop
d0042de8:	d0093360 	.word	0xd0093360

d0042dec <sb3dParticlesRender>:
d0042dec:	2800      	cmp	r0, #0
d0042dee:	f000 82d6 	beq.w	d004339e <sb3dParticlesRender+0x5b2>
d0042df2:	edd0 7a02 	vldr	s15, [r0, #8]
d0042df6:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0042dfa:	ed2d 8b10 	vpush	{d8-d15}
d0042dfe:	b0c7      	sub	sp, #284	; 0x11c
d0042e00:	4605      	mov	r5, r0
d0042e02:	ed90 ea00 	vldr	s28, [r0]
d0042e06:	edcd 7a15 	vstr	s15, [sp, #84]	; 0x54
d0042e0a:	edd0 da01 	vldr	s27, [r0, #4]
d0042e0e:	edd0 ca06 	vldr	s25, [r0, #24]
d0042e12:	ed90 ca07 	vldr	s24, [r0, #28]
d0042e16:	edd0 ba08 	vldr	s23, [r0, #32]
d0042e1a:	ed90 9a09 	vldr	s18, [r0, #36]	; 0x24
d0042e1e:	edd0 8a0a 	vldr	s17, [r0, #40]	; 0x28
d0042e22:	ed90 8a0b 	vldr	s16, [r0, #44]	; 0x2c
d0042e26:	edd0 aa0c 	vldr	s21, [r0, #48]	; 0x30
d0042e2a:	ed90 aa0d 	vldr	s20, [r0, #52]	; 0x34
d0042e2e:	edd0 9a0e 	vldr	s19, [r0, #56]	; 0x38
d0042e32:	ed90 ba10 	vldr	s22, [r0, #64]	; 0x40
d0042e36:	f001 fc4f 	bl	d00446d8 <lightsGet>
d0042e3a:	4cae      	ldr	r4, [pc, #696]	; (d00430f4 <sb3dParticlesRender+0x308>)
d0042e3c:	4681      	mov	r9, r0
d0042e3e:	f001 fc4f 	bl	d00446e0 <lightsGetCount>
d0042e42:	4680      	mov	r8, r0
d0042e44:	f504 5600 	add.w	r6, r4, #8192	; 0x2000
d0042e48:	eb09 1780 	add.w	r7, r9, r0, lsl #6
d0042e4c:	e115      	b.n	d004307a <sb3dParticlesRender+0x28e>
d0042e4e:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d0042e52:	edd4 ea04 	vldr	s29, [r4, #16]
d0042e56:	ed9f 5aac 	vldr	s10, [pc, #688]	; d0043108 <sb3dParticlesRender+0x31c>
d0042e5a:	fece ea85 	vmaxnm.f32	s29, s29, s10
d0042e5e:	fece eac7 	vminnm.f32	s29, s29, s14
d0042e62:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d0042e66:	f105 0a10 	add.w	sl, r5, #16
d0042e6a:	eeb0 4a46 	vmov.f32	s8, s12
d0042e6e:	2250      	movs	r2, #80	; 0x50
d0042e70:	eef0 4a66 	vmov.f32	s9, s13
d0042e74:	4651      	mov	r1, sl
d0042e76:	ee67 7a87 	vmul.f32	s15, s15, s14
d0042e7a:	4668      	mov	r0, sp
d0042e7c:	eeb0 5a65 	vmov.f32	s10, s11
d0042e80:	eeb0 7a65 	vmov.f32	s14, s11
d0042e84:	eeac 6aa7 	vfma.f32	s12, s25, s15
d0042e88:	eeac 4ae7 	vfms.f32	s8, s25, s15
d0042e8c:	eeec 4a67 	vfms.f32	s9, s24, s15
d0042e90:	eeec 6a27 	vfma.f32	s13, s24, s15
d0042e94:	eeab 5ae7 	vfms.f32	s10, s23, s15
d0042e98:	eeab 7aa7 	vfma.f32	s14, s23, s15
d0042e9c:	eef0 3a46 	vmov.f32	s7, s12
d0042ea0:	eea9 6a67 	vfms.f32	s12, s18, s15
d0042ea4:	eeb0 da44 	vmov.f32	s26, s8
d0042ea8:	eef0 fa64 	vmov.f32	s31, s9
d0042eac:	eef0 5a66 	vmov.f32	s11, s13
d0042eb0:	eeb0 fa45 	vmov.f32	s30, s10
d0042eb4:	eea9 da27 	vfma.f32	s26, s18, s15
d0042eb8:	ed8d 6a1c 	vstr	s12, [sp, #112]	; 0x70
d0042ebc:	eeb0 6a47 	vmov.f32	s12, s14
d0042ec0:	eee8 faa7 	vfma.f32	s31, s17, s15
d0042ec4:	eea8 fa27 	vfma.f32	s30, s16, s15
d0042ec8:	eea9 4a67 	vfms.f32	s8, s18, s15
d0042ecc:	eee9 3a27 	vfma.f32	s7, s18, s15
d0042ed0:	eee8 4ae7 	vfms.f32	s9, s17, s15
d0042ed4:	ed8d da16 	vstr	s26, [sp, #88]	; 0x58
d0042ed8:	eee8 5aa7 	vfma.f32	s11, s17, s15
d0042edc:	eee8 6ae7 	vfms.f32	s13, s17, s15
d0042ee0:	edcd fa17 	vstr	s31, [sp, #92]	; 0x5c
d0042ee4:	eea8 5a67 	vfms.f32	s10, s16, s15
d0042ee8:	ed8d fa18 	vstr	s30, [sp, #96]	; 0x60
d0042eec:	eea8 6a27 	vfma.f32	s12, s16, s15
d0042ef0:	ed8d 4a1f 	vstr	s8, [sp, #124]	; 0x7c
d0042ef4:	eea8 7a67 	vfms.f32	s14, s16, s15
d0042ef8:	edcd 3a19 	vstr	s7, [sp, #100]	; 0x64
d0042efc:	edcd 4a20 	vstr	s9, [sp, #128]	; 0x80
d0042f00:	edcd 5a1a 	vstr	s11, [sp, #104]	; 0x68
d0042f04:	edcd 6a1d 	vstr	s13, [sp, #116]	; 0x74
d0042f08:	ed8d 5a21 	vstr	s10, [sp, #132]	; 0x84
d0042f0c:	ed8d 6a1b 	vstr	s12, [sp, #108]	; 0x6c
d0042f10:	ed8d 7a1e 	vstr	s14, [sp, #120]	; 0x78
d0042f14:	f003 fe98 	bl	d0046c48 <memcpy>
d0042f18:	eeb0 0a4d 	vmov.f32	s0, s26
d0042f1c:	eef0 0a6f 	vmov.f32	s1, s31
d0042f20:	eeb0 1a4f 	vmov.f32	s2, s30
d0042f24:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0042f28:	f000 fbfc 	bl	d0043724 <worldToCamera>
d0042f2c:	ed9d da19 	vldr	s26, [sp, #100]	; 0x64
d0042f30:	eddd fa1a 	vldr	s31, [sp, #104]	; 0x68
d0042f34:	4651      	mov	r1, sl
d0042f36:	ed9d fa1b 	vldr	s30, [sp, #108]	; 0x6c
d0042f3a:	2250      	movs	r2, #80	; 0x50
d0042f3c:	4668      	mov	r0, sp
d0042f3e:	ed8d 0a22 	vstr	s0, [sp, #136]	; 0x88
d0042f42:	edcd 0a23 	vstr	s1, [sp, #140]	; 0x8c
d0042f46:	ed8d 1a24 	vstr	s2, [sp, #144]	; 0x90
d0042f4a:	f003 fe7d 	bl	d0046c48 <memcpy>
d0042f4e:	eeb0 0a4d 	vmov.f32	s0, s26
d0042f52:	eef0 0a6f 	vmov.f32	s1, s31
d0042f56:	eeb0 1a4f 	vmov.f32	s2, s30
d0042f5a:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0042f5e:	f000 fbe1 	bl	d0043724 <worldToCamera>
d0042f62:	ed9d da1c 	vldr	s26, [sp, #112]	; 0x70
d0042f66:	eddd fa1d 	vldr	s31, [sp, #116]	; 0x74
d0042f6a:	4651      	mov	r1, sl
d0042f6c:	ed9d fa1e 	vldr	s30, [sp, #120]	; 0x78
d0042f70:	2250      	movs	r2, #80	; 0x50
d0042f72:	4668      	mov	r0, sp
d0042f74:	ed8d 0a25 	vstr	s0, [sp, #148]	; 0x94
d0042f78:	edcd 0a26 	vstr	s1, [sp, #152]	; 0x98
d0042f7c:	ed8d 1a27 	vstr	s2, [sp, #156]	; 0x9c
d0042f80:	f003 fe62 	bl	d0046c48 <memcpy>
d0042f84:	eeb0 0a4d 	vmov.f32	s0, s26
d0042f88:	eef0 0a6f 	vmov.f32	s1, s31
d0042f8c:	eeb0 1a4f 	vmov.f32	s2, s30
d0042f90:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0042f94:	f000 fbc6 	bl	d0043724 <worldToCamera>
d0042f98:	ed9d da1f 	vldr	s26, [sp, #124]	; 0x7c
d0042f9c:	eddd fa20 	vldr	s31, [sp, #128]	; 0x80
d0042fa0:	4651      	mov	r1, sl
d0042fa2:	ed9d fa21 	vldr	s30, [sp, #132]	; 0x84
d0042fa6:	2250      	movs	r2, #80	; 0x50
d0042fa8:	4668      	mov	r0, sp
d0042faa:	ed8d 0a28 	vstr	s0, [sp, #160]	; 0xa0
d0042fae:	edcd 0a29 	vstr	s1, [sp, #164]	; 0xa4
d0042fb2:	ed8d 1a2a 	vstr	s2, [sp, #168]	; 0xa8
d0042fb6:	f003 fe47 	bl	d0046c48 <memcpy>
d0042fba:	eeb0 0a4d 	vmov.f32	s0, s26
d0042fbe:	eef0 0a6f 	vmov.f32	s1, s31
d0042fc2:	eeb0 1a4f 	vmov.f32	s2, s30
d0042fc6:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0042fca:	f000 fbab 	bl	d0043724 <worldToCamera>
d0042fce:	eddd 7a24 	vldr	s15, [sp, #144]	; 0x90
d0042fd2:	ed8d 0a2b 	vstr	s0, [sp, #172]	; 0xac
d0042fd6:	eef4 7acb 	vcmpe.f32	s15, s22
d0042fda:	edcd 0a2c 	vstr	s1, [sp, #176]	; 0xb0
d0042fde:	ed8d 1a2d 	vstr	s2, [sp, #180]	; 0xb4
d0042fe2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042fe6:	d812      	bhi.n	d004300e <sb3dParticlesRender+0x222>
d0042fe8:	eddd 7a27 	vldr	s15, [sp, #156]	; 0x9c
d0042fec:	eef4 7acb 	vcmpe.f32	s15, s22
d0042ff0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042ff4:	d80b      	bhi.n	d004300e <sb3dParticlesRender+0x222>
d0042ff6:	eddd 7a2a 	vldr	s15, [sp, #168]	; 0xa8
d0042ffa:	eef4 7acb 	vcmpe.f32	s15, s22
d0042ffe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043002:	d804      	bhi.n	d004300e <sb3dParticlesRender+0x222>
d0043004:	eeb4 1acb 	vcmpe.f32	s2, s22
d0043008:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004300c:	d931      	bls.n	d0043072 <sb3dParticlesRender+0x286>
d004300e:	4629      	mov	r1, r5
d0043010:	ed9d 3a28 	vldr	s6, [sp, #160]	; 0xa0
d0043014:	eddd 3a29 	vldr	s7, [sp, #164]	; 0xa4
d0043018:	a82e      	add	r0, sp, #184	; 0xb8
d004301a:	ed9d 4a2a 	vldr	s8, [sp, #168]	; 0xa8
d004301e:	eddd 1a25 	vldr	s3, [sp, #148]	; 0x94
d0043022:	ed9d 2a26 	vldr	s4, [sp, #152]	; 0x98
d0043026:	eddd 2a27 	vldr	s5, [sp, #156]	; 0x9c
d004302a:	ed9d 0a22 	vldr	s0, [sp, #136]	; 0x88
d004302e:	eddd 0a23 	vldr	s1, [sp, #140]	; 0x8c
d0043032:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d0043036:	f001 fc19 	bl	d004486c <clipTriangleToFrustum>
d004303a:	2802      	cmp	r0, #2
d004303c:	f300 8156 	bgt.w	d00432ec <sb3dParticlesRender+0x500>
d0043040:	a82e      	add	r0, sp, #184	; 0xb8
d0043042:	4629      	mov	r1, r5
d0043044:	ed9d 3a2b 	vldr	s6, [sp, #172]	; 0xac
d0043048:	eddd 3a2c 	vldr	s7, [sp, #176]	; 0xb0
d004304c:	ed9d 4a2d 	vldr	s8, [sp, #180]	; 0xb4
d0043050:	eddd 1a28 	vldr	s3, [sp, #160]	; 0xa0
d0043054:	ed9d 2a29 	vldr	s4, [sp, #164]	; 0xa4
d0043058:	eddd 2a2a 	vldr	s5, [sp, #168]	; 0xa8
d004305c:	ed9d 0a22 	vldr	s0, [sp, #136]	; 0x88
d0043060:	eddd 0a23 	vldr	s1, [sp, #140]	; 0x8c
d0043064:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d0043068:	f001 fc00 	bl	d004486c <clipTriangleToFrustum>
d004306c:	2802      	cmp	r0, #2
d004306e:	f300 8105 	bgt.w	d004327c <sb3dParticlesRender+0x490>
d0043072:	3420      	adds	r4, #32
d0043074:	42a6      	cmp	r6, r4
d0043076:	f000 8134 	beq.w	d00432e2 <sb3dParticlesRender+0x4f6>
d004307a:	7ea3      	ldrb	r3, [r4, #26]
d004307c:	2b00      	cmp	r3, #0
d004307e:	d0f8      	beq.n	d0043072 <sb3dParticlesRender+0x286>
d0043080:	edd4 7a03 	vldr	s15, [r4, #12]
d0043084:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0043088:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004308c:	d9f1      	bls.n	d0043072 <sb3dParticlesRender+0x286>
d004308e:	edd4 6a01 	vldr	s13, [r4, #4]
d0043092:	eeb1 5a67 	vneg.f32	s10, s15
d0043096:	ed94 6a00 	vldr	s12, [r4]
d004309a:	ee36 7aed 	vsub.f32	s14, s13, s27
d004309e:	edd4 5a02 	vldr	s11, [r4, #8]
d00430a2:	ee36 4a4e 	vsub.f32	s8, s12, s28
d00430a6:	eddd 4a15 	vldr	s9, [sp, #84]	; 0x54
d00430aa:	ee27 7a0a 	vmul.f32	s14, s14, s20
d00430ae:	ee75 4ae4 	vsub.f32	s9, s11, s9
d00430b2:	eeaa 7a84 	vfma.f32	s14, s21, s8
d00430b6:	eea9 7aa4 	vfma.f32	s14, s19, s9
d00430ba:	eeb4 5ac7 	vcmpe.f32	s10, s14
d00430be:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00430c2:	dad6      	bge.n	d0043072 <sb3dParticlesRender+0x286>
d00430c4:	ed94 7a05 	vldr	s14, [r4, #20]
d00430c8:	ed9f 5a0b 	vldr	s10, [pc, #44]	; d00430f8 <sb3dParticlesRender+0x30c>
d00430cc:	eeb4 7ac5 	vcmpe.f32	s14, s10
d00430d0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00430d4:	f67f aebb 	bls.w	d0042e4e <sb3dParticlesRender+0x62>
d00430d8:	f1b8 0f00 	cmp.w	r8, #0
d00430dc:	f340 809e 	ble.w	d004321c <sb3dParticlesRender+0x430>
d00430e0:	eeb7 4a00 	vmov.f32	s8, #112	; 0x3f800000  1.0
d00430e4:	464b      	mov	r3, r9
d00430e6:	eeb5 3a00 	vmov.f32	s6, #80	; 0x3e800000  0.250
d00430ea:	ed9f 0a05 	vldr	s0, [pc, #20]	; d0043100 <sb3dParticlesRender+0x314>
d00430ee:	eef6 3a08 	vmov.f32	s7, #104	; 0x3f400000  0.750
d00430f2:	e07e      	b.n	d00431f2 <sb3dParticlesRender+0x406>
d00430f4:	d0093360 	.word	0xd0093360
d00430f8:	38d1b717 	.word	0x38d1b717
d00430fc:	358637bd 	.word	0x358637bd
d0043100:	3dcccccd 	.word	0x3dcccccd
d0043104:	3b808081 	.word	0x3b808081
d0043108:	00000000 	.word	0x00000000
d004310c:	edd3 7a02 	vldr	s15, [r3, #8]
d0043110:	edd3 4a01 	vldr	s9, [r3, #4]
d0043114:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0043118:	ed93 7a03 	vldr	s14, [r3, #12]
d004311c:	ee74 4ac6 	vsub.f32	s9, s9, s12
d0043120:	ed93 2a0a 	vldr	s4, [r3, #40]	; 0x28
d0043124:	ee37 7a65 	vsub.f32	s14, s14, s11
d0043128:	ee27 5aa7 	vmul.f32	s10, s15, s15
d004312c:	ee62 2a02 	vmul.f32	s5, s4, s4
d0043130:	eea4 5aa4 	vfma.f32	s10, s9, s9
d0043134:	eea7 5a07 	vfma.f32	s10, s14, s14
d0043138:	eeb4 5a62 	vcmp.f32	s10, s5
d004313c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043140:	d554      	bpl.n	d00431ec <sb3dParticlesRender+0x400>
d0043142:	ed5f 2a12 	vldr	s5, [pc, #-72]	; d00430fc <sb3dParticlesRender+0x310>
d0043146:	eeb4 5a62 	vcmp.f32	s10, s5
d004314a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004314e:	dd4d      	ble.n	d00431ec <sb3dParticlesRender+0x400>
d0043150:	eef1 0ac5 	vsqrt.f32	s1, s10
d0043154:	edd3 1a08 	vldr	s3, [r3, #32]
d0043158:	ee21 1aa1 	vmul.f32	s2, s3, s3
d004315c:	eeb4 5ac1 	vcmpe.f32	s10, s2
d0043160:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043164:	eec4 2a20 	vdiv.f32	s5, s8, s1
d0043168:	ee64 4aa2 	vmul.f32	s9, s9, s5
d004316c:	ee67 7aa2 	vmul.f32	s15, s15, s5
d0043170:	ee27 7a22 	vmul.f32	s14, s14, s5
d0043174:	f240 80e9 	bls.w	d004334a <sb3dParticlesRender+0x55e>
d0043178:	ed93 1a09 	vldr	s2, [r3, #36]	; 0x24
d004317c:	eef4 1ac1 	vcmpe.f32	s3, s2
d0043180:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043184:	da32      	bge.n	d00431ec <sb3dParticlesRender+0x400>
d0043186:	eeb4 2ac1 	vcmpe.f32	s4, s2
d004318a:	ee25 5a22 	vmul.f32	s10, s10, s5
d004318e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043192:	eeb4 1ac5 	vcmpe.f32	s2, s10
d0043196:	f200 80db 	bhi.w	d0043350 <sb3dParticlesRender+0x564>
d004319a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004319e:	d925      	bls.n	d00431ec <sb3dParticlesRender+0x400>
d00431a0:	ee75 2a61 	vsub.f32	s5, s10, s3
d00431a4:	ee31 2a61 	vsub.f32	s4, s2, s3
d00431a8:	ee82 5a82 	vdiv.f32	s10, s5, s4
d00431ac:	ed5f 2a2a 	vldr	s5, [pc, #-168]	; d0043108 <sb3dParticlesRender+0x31c>
d00431b0:	fe85 5a22 	vmaxnm.f32	s10, s10, s5
d00431b4:	fe85 5a44 	vminnm.f32	s10, s10, s8
d00431b8:	ee34 5a45 	vsub.f32	s10, s8, s10
d00431bc:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d00431c0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00431c4:	d912      	bls.n	d00431ec <sb3dParticlesRender+0x400>
d00431c6:	ee67 7a8a 	vmul.f32	s15, s15, s20
d00431ca:	eee4 7aaa 	vfma.f32	s15, s9, s21
d00431ce:	eee7 7a29 	vfma.f32	s15, s14, s19
d00431d2:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d00431d6:	eeb1 7a67 	vneg.f32	s14, s15
d00431da:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00431de:	da05      	bge.n	d00431ec <sb3dParticlesRender+0x400>
d00431e0:	edd3 7a07 	vldr	s15, [r3, #28]
d00431e4:	ee25 5a27 	vmul.f32	s10, s10, s15
d00431e8:	eea5 0a07 	vfma.f32	s0, s10, s14
d00431ec:	3340      	adds	r3, #64	; 0x40
d00431ee:	429f      	cmp	r7, r3
d00431f0:	d016      	beq.n	d0043220 <sb3dParticlesRender+0x434>
d00431f2:	6ada      	ldr	r2, [r3, #44]	; 0x2c
d00431f4:	2a00      	cmp	r2, #0
d00431f6:	d0f9      	beq.n	d00431ec <sb3dParticlesRender+0x400>
d00431f8:	781a      	ldrb	r2, [r3, #0]
d00431fa:	2a00      	cmp	r2, #0
d00431fc:	d086      	beq.n	d004310c <sb3dParticlesRender+0x320>
d00431fe:	edd3 4a04 	vldr	s9, [r3, #16]
d0043202:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0043206:	edd3 7a05 	vldr	s15, [r3, #20]
d004320a:	ed93 7a06 	vldr	s14, [r3, #24]
d004320e:	eef1 4a64 	vneg.f32	s9, s9
d0043212:	eef1 7a67 	vneg.f32	s15, s15
d0043216:	eeb1 7a47 	vneg.f32	s14, s14
d004321a:	e7d4      	b.n	d00431c6 <sb3dParticlesRender+0x3da>
d004321c:	ed1f 0a48 	vldr	s0, [pc, #-288]	; d0043100 <sb3dParticlesRender+0x314>
d0043220:	7e63      	ldrb	r3, [r4, #25]
d0043222:	eeb7 fa00 	vmov.f32	s30, #112	; 0x3f800000  1.0
d0043226:	ed1f 7a49 	vldr	s14, [pc, #-292]	; d0043104 <sb3dParticlesRender+0x318>
d004322a:	ee07 3a90 	vmov	s15, r3
d004322e:	ed1f da4a 	vldr	s26, [pc, #-296]	; d0043108 <sb3dParticlesRender+0x31c>
d0043232:	eef8 7a67 	vcvt.f32.u32	s15, s15
d0043236:	ee67 7a87 	vmul.f32	s15, s15, s14
d004323a:	fec7 7a8d 	vmaxnm.f32	s15, s15, s26
d004323e:	fe87 0a80 	vmaxnm.f32	s0, s15, s0
d0043242:	fe80 0a4f 	vminnm.f32	s0, s0, s30
d0043246:	f001 fa1b 	bl	d0044680 <brightnessToShadeF>
d004324a:	edd4 ea05 	vldr	s29, [r4, #20]
d004324e:	ed94 5a04 	vldr	s10, [r4, #16]
d0043252:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d0043256:	ee3f fa6e 	vsub.f32	s30, s30, s29
d004325a:	edd4 7a03 	vldr	s15, [r4, #12]
d004325e:	ee60 ea2e 	vmul.f32	s29, s0, s29
d0043262:	ed94 6a00 	vldr	s12, [r4]
d0043266:	edd4 6a01 	vldr	s13, [r4, #4]
d004326a:	edd4 5a02 	vldr	s11, [r4, #8]
d004326e:	eee5 ea0f 	vfma.f32	s29, s10, s30
d0043272:	fece ea8d 	vmaxnm.f32	s29, s29, s26
d0043276:	fece eac7 	vminnm.f32	s29, s29, s14
d004327a:	e5f2      	b.n	d0042e62 <sb3dParticlesRender+0x76>
d004327c:	f100 3aff 	add.w	sl, r0, #4294967295	; 0xffffffff
d0043280:	f04f 0b01 	mov.w	fp, #1
d0043284:	465b      	mov	r3, fp
d0043286:	f10b 0b01 	add.w	fp, fp, #1
d004328a:	a946      	add	r1, sp, #280	; 0x118
d004328c:	eef0 4a6e 	vmov.f32	s9, s29
d0043290:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0043294:	7e62      	ldrb	r2, [r4, #25]
d0043296:	eb0b 004b 	add.w	r0, fp, fp, lsl #1
d004329a:	ed9d 0a2e 	vldr	s0, [sp, #184]	; 0xb8
d004329e:	eb01 0383 	add.w	r3, r1, r3, lsl #2
d00432a2:	eddd 0a2f 	vldr	s1, [sp, #188]	; 0xbc
d00432a6:	eb01 0080 	add.w	r0, r1, r0, lsl #2
d00432aa:	ed9d 1a30 	vldr	s2, [sp, #192]	; 0xc0
d00432ae:	f1a3 0c60 	sub.w	ip, r3, #96	; 0x60
d00432b2:	ed53 1a18 	vldr	s3, [r3, #-96]	; 0xffffffa0
d00432b6:	ed10 3a18 	vldr	s6, [r0, #-96]	; 0xffffffa0
d00432ba:	f1a0 0360 	sub.w	r3, r0, #96	; 0x60
d00432be:	7e21      	ldrb	r1, [r4, #24]
d00432c0:	4628      	mov	r0, r5
d00432c2:	ed9c 2a01 	vldr	s4, [ip, #4]
d00432c6:	eddc 2a02 	vldr	s5, [ip, #8]
d00432ca:	edd3 3a01 	vldr	s7, [r3, #4]
d00432ce:	ed93 4a02 	vldr	s8, [r3, #8]
d00432d2:	f001 ff27 	bl	d0045124 <submitClippedTri>
d00432d6:	45d3      	cmp	fp, sl
d00432d8:	d1d4      	bne.n	d0043284 <sb3dParticlesRender+0x498>
d00432da:	3420      	adds	r4, #32
d00432dc:	42a6      	cmp	r6, r4
d00432de:	f47f aecc 	bne.w	d004307a <sb3dParticlesRender+0x28e>
d00432e2:	b047      	add	sp, #284	; 0x11c
d00432e4:	ecbd 8b10 	vpop	{d8-d15}
d00432e8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00432ec:	f100 3aff 	add.w	sl, r0, #4294967295	; 0xffffffff
d00432f0:	f04f 0b01 	mov.w	fp, #1
d00432f4:	465b      	mov	r3, fp
d00432f6:	aa46      	add	r2, sp, #280	; 0x118
d00432f8:	f10b 0b01 	add.w	fp, fp, #1
d00432fc:	a846      	add	r0, sp, #280	; 0x118
d00432fe:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0043302:	eef0 4a6e 	vmov.f32	s9, s29
d0043306:	eb0b 014b 	add.w	r1, fp, fp, lsl #1
d004330a:	ed9d 0a2e 	vldr	s0, [sp, #184]	; 0xb8
d004330e:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0043312:	eddd 0a2f 	vldr	s1, [sp, #188]	; 0xbc
d0043316:	eb00 0181 	add.w	r1, r0, r1, lsl #2
d004331a:	ed9d 1a30 	vldr	s2, [sp, #192]	; 0xc0
d004331e:	7e62      	ldrb	r2, [r4, #25]
d0043320:	4628      	mov	r0, r5
d0043322:	ed11 3a18 	vldr	s6, [r1, #-96]	; 0xffffffa0
d0043326:	f1a3 0c60 	sub.w	ip, r3, #96	; 0x60
d004332a:	ed51 3a17 	vldr	s7, [r1, #-92]	; 0xffffffa4
d004332e:	ed11 4a16 	vldr	s8, [r1, #-88]	; 0xffffffa8
d0043332:	ed53 1a18 	vldr	s3, [r3, #-96]	; 0xffffffa0
d0043336:	7e21      	ldrb	r1, [r4, #24]
d0043338:	ed9c 2a01 	vldr	s4, [ip, #4]
d004333c:	eddc 2a02 	vldr	s5, [ip, #8]
d0043340:	f001 fef0 	bl	d0045124 <submitClippedTri>
d0043344:	45d3      	cmp	fp, sl
d0043346:	d1d5      	bne.n	d00432f4 <sb3dParticlesRender+0x508>
d0043348:	e67a      	b.n	d0043040 <sb3dParticlesRender+0x254>
d004334a:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d004334e:	e73a      	b.n	d00431c6 <sb3dParticlesRender+0x3da>
d0043350:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043354:	db12      	blt.n	d004337c <sb3dParticlesRender+0x590>
d0043356:	ee35 5a61 	vsub.f32	s10, s10, s3
d004335a:	ee31 2a61 	vsub.f32	s4, s2, s3
d004335e:	eec5 2a02 	vdiv.f32	s5, s10, s4
d0043362:	ed1f 5a97 	vldr	s10, [pc, #-604]	; d0043108 <sb3dParticlesRender+0x31c>
d0043366:	fe82 5a85 	vmaxnm.f32	s10, s5, s10
d004336a:	eef0 2a44 	vmov.f32	s5, s8
d004336e:	fe85 5a44 	vminnm.f32	s10, s10, s8
d0043372:	eee5 2a63 	vfms.f32	s5, s10, s7
d0043376:	eeb0 5a62 	vmov.f32	s10, s5
d004337a:	e71f      	b.n	d00431bc <sb3dParticlesRender+0x3d0>
d004337c:	ee75 2a41 	vsub.f32	s5, s10, s2
d0043380:	ee32 2a41 	vsub.f32	s4, s4, s2
d0043384:	ee82 5a82 	vdiv.f32	s10, s5, s4
d0043388:	ed5f 2aa1 	vldr	s5, [pc, #-644]	; d0043108 <sb3dParticlesRender+0x31c>
d004338c:	fe85 5a22 	vmaxnm.f32	s10, s10, s5
d0043390:	fe85 5a44 	vminnm.f32	s10, s10, s8
d0043394:	ee34 5a45 	vsub.f32	s10, s8, s10
d0043398:	ee25 5a03 	vmul.f32	s10, s10, s6
d004339c:	e70e      	b.n	d00431bc <sb3dParticlesRender+0x3d0>
d004339e:	4770      	bx	lr

d00433a0 <worldClear>:
d00433a0:	f44f 42c0 	mov.w	r2, #24576	; 0x6000
d00433a4:	2100      	movs	r1, #0
d00433a6:	4801      	ldr	r0, [pc, #4]	; (d00433ac <worldClear+0xc>)
d00433a8:	f003 bc5c 	b.w	d0046c64 <memset>
d00433ac:	d012da80 	.word	0xd012da80

d00433b0 <cameraNormalize>:
d00433b0:	edd0 0a0d 	vldr	s1, [r0, #52]	; 0x34
d00433b4:	ed90 1a0e 	vldr	s2, [r0, #56]	; 0x38
d00433b8:	ed90 0a0c 	vldr	s0, [r0, #48]	; 0x30
d00433bc:	b510      	push	{r4, lr}
d00433be:	4604      	mov	r4, r0
d00433c0:	f7ff fb4a 	bl	d0042a58 <vec3Normalize>
d00433c4:	eeb0 7a60 	vmov.f32	s14, s1
d00433c8:	eef0 7a41 	vmov.f32	s15, s2
d00433cc:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d00433d0:	ed94 0a06 	vldr	s0, [r4, #24]
d00433d4:	ed84 7a0d 	vstr	s14, [r4, #52]	; 0x34
d00433d8:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d00433dc:	edd4 0a07 	vldr	s1, [r4, #28]
d00433e0:	ed94 1a08 	vldr	s2, [r4, #32]
d00433e4:	f7ff fb38 	bl	d0042a58 <vec3Normalize>
d00433e8:	eef0 1a40 	vmov.f32	s3, s0
d00433ec:	eeb0 2a60 	vmov.f32	s4, s1
d00433f0:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d00433f4:	eef0 2a41 	vmov.f32	s5, s2
d00433f8:	edc4 0a07 	vstr	s1, [r4, #28]
d00433fc:	ed84 1a08 	vstr	s2, [r4, #32]
d0043400:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0043404:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0043408:	edc4 1a06 	vstr	s3, [r4, #24]
d004340c:	f7ff fb0e 	bl	d0042a2c <vec3Cross>
d0043410:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0043414:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0043418:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d004341c:	f7ff fb1c 	bl	d0042a58 <vec3Normalize>
d0043420:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0043424:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0043428:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d004342c:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0043430:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0043434:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0043438:	f7ff faf8 	bl	d0042a2c <vec3Cross>
d004343c:	ed84 0a06 	vstr	s0, [r4, #24]
d0043440:	edc4 0a07 	vstr	s1, [r4, #28]
d0043444:	ed84 1a08 	vstr	s2, [r4, #32]
d0043448:	f7ff fb06 	bl	d0042a58 <vec3Normalize>
d004344c:	ed84 0a06 	vstr	s0, [r4, #24]
d0043450:	edc4 0a07 	vstr	s1, [r4, #28]
d0043454:	ed84 1a08 	vstr	s2, [r4, #32]
d0043458:	bd10      	pop	{r4, pc}
d004345a:	bf00      	nop

d004345c <cameraCreate>:
d004345c:	b510      	push	{r4, lr}
d004345e:	4604      	mov	r4, r0
d0043460:	2260      	movs	r2, #96	; 0x60
d0043462:	4902      	ldr	r1, [pc, #8]	; (d004346c <cameraCreate+0x10>)
d0043464:	f003 fbf0 	bl	d0046c48 <memcpy>
d0043468:	4620      	mov	r0, r4
d004346a:	bd10      	pop	{r4, pc}
d004346c:	d0047a20 	.word	0xd0047a20

d0043470 <cameraSetPosition>:
d0043470:	b084      	sub	sp, #16
d0043472:	ed8d 0a01 	vstr	s0, [sp, #4]
d0043476:	edcd 0a02 	vstr	s1, [sp, #8]
d004347a:	ed8d 1a03 	vstr	s2, [sp, #12]
d004347e:	b128      	cbz	r0, d004348c <cameraSetPosition+0x1c>
d0043480:	aa04      	add	r2, sp, #16
d0043482:	4603      	mov	r3, r0
d0043484:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0043488:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d004348c:	b004      	add	sp, #16
d004348e:	4770      	bx	lr

d0043490 <cameraTurn>:
d0043490:	2800      	cmp	r0, #0
d0043492:	f000 8144 	beq.w	d004371e <cameraTurn+0x28e>
d0043496:	b570      	push	{r4, r5, r6, lr}
d0043498:	4604      	mov	r4, r0
d004349a:	ed2d 8b04 	vpush	{d8-d9}
d004349e:	eef0 8a40 	vmov.f32	s17, s0
d00434a2:	b08a      	sub	sp, #40	; 0x28
d00434a4:	eeb0 9a60 	vmov.f32	s18, s1
d00434a8:	eeb0 8a41 	vmov.f32	s16, s2
d00434ac:	bb69      	cbnz	r1, d004350a <cameraTurn+0x7a>
d00434ae:	f100 0318 	add.w	r3, r0, #24
d00434b2:	ae01      	add	r6, sp, #4
d00434b4:	f100 0524 	add.w	r5, r0, #36	; 0x24
d00434b8:	eeb5 9a40 	vcmp.f32	s18, #0.0
d00434bc:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d00434c0:	f104 0330 	add.w	r3, r4, #48	; 0x30
d00434c4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00434c8:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d00434cc:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d00434d0:	ae04      	add	r6, sp, #16
d00434d2:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d00434d6:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d00434da:	ab0a      	add	r3, sp, #40	; 0x28
d00434dc:	e903 0007 	stmdb	r3, {r0, r1, r2}
d00434e0:	d14a      	bne.n	d0043578 <cameraTurn+0xe8>
d00434e2:	eef5 8a40 	vcmp.f32	s17, #0.0
d00434e6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00434ea:	f040 808d 	bne.w	d0043608 <cameraTurn+0x178>
d00434ee:	eeb5 8a40 	vcmp.f32	s16, #0.0
d00434f2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00434f6:	f040 80cf 	bne.w	d0043698 <cameraTurn+0x208>
d00434fa:	4620      	mov	r0, r4
d00434fc:	b00a      	add	sp, #40	; 0x28
d00434fe:	ecbd 8b04 	vpop	{d8-d9}
d0043502:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0043506:	f7ff bf53 	b.w	d00433b0 <cameraNormalize>
d004350a:	ed9f 1a85 	vldr	s2, [pc, #532]	; d0043720 <cameraTurn+0x290>
d004350e:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0043512:	eef0 0a41 	vmov.f32	s1, s2
d0043516:	f7ff fb9f 	bl	d0042c58 <vec3>
d004351a:	eef0 7a41 	vmov.f32	s15, s2
d004351e:	ed9f 1a80 	vldr	s2, [pc, #512]	; d0043720 <cameraTurn+0x290>
d0043522:	eeb0 7a60 	vmov.f32	s14, s1
d0043526:	ed8d 0a01 	vstr	s0, [sp, #4]
d004352a:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d004352e:	edcd 7a03 	vstr	s15, [sp, #12]
d0043532:	eeb0 0a41 	vmov.f32	s0, s2
d0043536:	ed8d 7a02 	vstr	s14, [sp, #8]
d004353a:	f7ff fb8d 	bl	d0042c58 <vec3>
d004353e:	eeb0 7a60 	vmov.f32	s14, s1
d0043542:	eddf 0a77 	vldr	s1, [pc, #476]	; d0043720 <cameraTurn+0x290>
d0043546:	eef0 7a41 	vmov.f32	s15, s2
d004354a:	ed8d 0a04 	vstr	s0, [sp, #16]
d004354e:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d0043552:	eeb0 0a60 	vmov.f32	s0, s1
d0043556:	ed8d 7a05 	vstr	s14, [sp, #20]
d004355a:	edcd 7a06 	vstr	s15, [sp, #24]
d004355e:	f7ff fb7b 	bl	d0042c58 <vec3>
d0043562:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0043566:	edcd 0a08 	vstr	s1, [sp, #32]
d004356a:	ed8d 0a07 	vstr	s0, [sp, #28]
d004356e:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d0043572:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043576:	d0b4      	beq.n	d00434e2 <cameraTurn+0x52>
d0043578:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d004357c:	eeb0 3a49 	vmov.f32	s6, s18
d0043580:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0043584:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0043588:	eddd 1a04 	vldr	s3, [sp, #16]
d004358c:	ed9d 2a05 	vldr	s4, [sp, #20]
d0043590:	eddd 2a06 	vldr	s5, [sp, #24]
d0043594:	f7ff fab0 	bl	d0042af8 <rotateAroundAxis>
d0043598:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d004359c:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d00435a0:	eeb0 3a49 	vmov.f32	s6, s18
d00435a4:	ed94 0a06 	vldr	s0, [r4, #24]
d00435a8:	edd4 0a07 	vldr	s1, [r4, #28]
d00435ac:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d00435b0:	ed94 1a08 	vldr	s2, [r4, #32]
d00435b4:	eddd 1a04 	vldr	s3, [sp, #16]
d00435b8:	ed9d 2a05 	vldr	s4, [sp, #20]
d00435bc:	eddd 2a06 	vldr	s5, [sp, #24]
d00435c0:	f7ff fa9a 	bl	d0042af8 <rotateAroundAxis>
d00435c4:	eeb0 3a49 	vmov.f32	s6, s18
d00435c8:	ed84 0a06 	vstr	s0, [r4, #24]
d00435cc:	edc4 0a07 	vstr	s1, [r4, #28]
d00435d0:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d00435d4:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d00435d8:	ed84 1a08 	vstr	s2, [r4, #32]
d00435dc:	eddd 1a04 	vldr	s3, [sp, #16]
d00435e0:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d00435e4:	ed9d 2a05 	vldr	s4, [sp, #20]
d00435e8:	eddd 2a06 	vldr	s5, [sp, #24]
d00435ec:	f7ff fa84 	bl	d0042af8 <rotateAroundAxis>
d00435f0:	eef5 8a40 	vcmp.f32	s17, #0.0
d00435f4:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d00435f8:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d00435fc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043600:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0043604:	f43f af73 	beq.w	d00434ee <cameraTurn+0x5e>
d0043608:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d004360c:	eeb0 3a68 	vmov.f32	s6, s17
d0043610:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0043614:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0043618:	eddd 1a01 	vldr	s3, [sp, #4]
d004361c:	ed9d 2a02 	vldr	s4, [sp, #8]
d0043620:	eddd 2a03 	vldr	s5, [sp, #12]
d0043624:	f7ff fa68 	bl	d0042af8 <rotateAroundAxis>
d0043628:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d004362c:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0043630:	eeb0 3a68 	vmov.f32	s6, s17
d0043634:	ed94 0a06 	vldr	s0, [r4, #24]
d0043638:	edd4 0a07 	vldr	s1, [r4, #28]
d004363c:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0043640:	ed94 1a08 	vldr	s2, [r4, #32]
d0043644:	eddd 1a01 	vldr	s3, [sp, #4]
d0043648:	ed9d 2a02 	vldr	s4, [sp, #8]
d004364c:	eddd 2a03 	vldr	s5, [sp, #12]
d0043650:	f7ff fa52 	bl	d0042af8 <rotateAroundAxis>
d0043654:	eeb0 3a68 	vmov.f32	s6, s17
d0043658:	ed84 0a06 	vstr	s0, [r4, #24]
d004365c:	edc4 0a07 	vstr	s1, [r4, #28]
d0043660:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0043664:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0043668:	ed84 1a08 	vstr	s2, [r4, #32]
d004366c:	eddd 1a01 	vldr	s3, [sp, #4]
d0043670:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0043674:	ed9d 2a02 	vldr	s4, [sp, #8]
d0043678:	eddd 2a03 	vldr	s5, [sp, #12]
d004367c:	f7ff fa3c 	bl	d0042af8 <rotateAroundAxis>
d0043680:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0043684:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0043688:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d004368c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043690:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0043694:	f43f af31 	beq.w	d00434fa <cameraTurn+0x6a>
d0043698:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d004369c:	eeb0 3a48 	vmov.f32	s6, s16
d00436a0:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d00436a4:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d00436a8:	eddd 1a07 	vldr	s3, [sp, #28]
d00436ac:	ed9d 2a08 	vldr	s4, [sp, #32]
d00436b0:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d00436b4:	f7ff fa20 	bl	d0042af8 <rotateAroundAxis>
d00436b8:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d00436bc:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d00436c0:	eeb0 3a48 	vmov.f32	s6, s16
d00436c4:	ed94 0a06 	vldr	s0, [r4, #24]
d00436c8:	edd4 0a07 	vldr	s1, [r4, #28]
d00436cc:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d00436d0:	ed94 1a08 	vldr	s2, [r4, #32]
d00436d4:	eddd 1a07 	vldr	s3, [sp, #28]
d00436d8:	ed9d 2a08 	vldr	s4, [sp, #32]
d00436dc:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d00436e0:	f7ff fa0a 	bl	d0042af8 <rotateAroundAxis>
d00436e4:	ed84 0a06 	vstr	s0, [r4, #24]
d00436e8:	edc4 0a07 	vstr	s1, [r4, #28]
d00436ec:	eeb0 3a48 	vmov.f32	s6, s16
d00436f0:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d00436f4:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d00436f8:	ed84 1a08 	vstr	s2, [r4, #32]
d00436fc:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0043700:	eddd 1a07 	vldr	s3, [sp, #28]
d0043704:	ed9d 2a08 	vldr	s4, [sp, #32]
d0043708:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d004370c:	f7ff f9f4 	bl	d0042af8 <rotateAroundAxis>
d0043710:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0043714:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0043718:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d004371c:	e6ed      	b.n	d00434fa <cameraTurn+0x6a>
d004371e:	4770      	bx	lr
d0043720:	00000000 	.word	0x00000000

d0043724 <worldToCamera>:
d0043724:	b084      	sub	sp, #16
d0043726:	b510      	push	{r4, lr}
d0043728:	ed2d 8b02 	vpush	{d8}
d004372c:	b0ac      	sub	sp, #176	; 0xb0
d004372e:	f10d 042f 	add.w	r4, sp, #47	; 0x2f
d0043732:	f10d 0cc0 	add.w	ip, sp, #192	; 0xc0
d0043736:	ed8d 0a23 	vstr	s0, [sp, #140]	; 0x8c
d004373a:	f024 041f 	bic.w	r4, r4, #31
d004373e:	edcd 0a24 	vstr	s1, [sp, #144]	; 0x90
d0043742:	ed8d 1a25 	vstr	s2, [sp, #148]	; 0x94
d0043746:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d004374a:	2260      	movs	r2, #96	; 0x60
d004374c:	4661      	mov	r1, ip
d004374e:	4620      	mov	r0, r4
d0043750:	f003 fa7a 	bl	d0046c48 <memcpy>
d0043754:	edd4 7a00 	vldr	s15, [r4]
d0043758:	ed9d 0a23 	vldr	s0, [sp, #140]	; 0x8c
d004375c:	ed94 7a01 	vldr	s14, [r4, #4]
d0043760:	ee30 0a67 	vsub.f32	s0, s0, s15
d0043764:	eddd 0a24 	vldr	s1, [sp, #144]	; 0x90
d0043768:	edd4 7a02 	vldr	s15, [r4, #8]
d004376c:	ed9d 1a25 	vldr	s2, [sp, #148]	; 0x94
d0043770:	ee70 0ac7 	vsub.f32	s1, s1, s14
d0043774:	edd4 1a06 	vldr	s3, [r4, #24]
d0043778:	ee31 1a67 	vsub.f32	s2, s2, s15
d004377c:	ed94 2a07 	vldr	s4, [r4, #28]
d0043780:	edd4 2a08 	vldr	s5, [r4, #32]
d0043784:	edcd 0a27 	vstr	s1, [sp, #156]	; 0x9c
d0043788:	ed8d 1a28 	vstr	s2, [sp, #160]	; 0xa0
d004378c:	ed8d 0a26 	vstr	s0, [sp, #152]	; 0x98
d0043790:	f7ff f940 	bl	d0042a14 <vec3Dot>
d0043794:	edd4 1a09 	vldr	s3, [r4, #36]	; 0x24
d0043798:	eef0 8a40 	vmov.f32	s17, s0
d004379c:	ed94 2a0a 	vldr	s4, [r4, #40]	; 0x28
d00437a0:	edd4 2a0b 	vldr	s5, [r4, #44]	; 0x2c
d00437a4:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d00437a8:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d00437ac:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d00437b0:	f7ff f930 	bl	d0042a14 <vec3Dot>
d00437b4:	eeb0 8a40 	vmov.f32	s16, s0
d00437b8:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d00437bc:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d00437c0:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d00437c4:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d00437c8:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d00437cc:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d00437d0:	f7ff f920 	bl	d0042a14 <vec3Dot>
d00437d4:	eef0 0a48 	vmov.f32	s1, s16
d00437d8:	eeb0 1a40 	vmov.f32	s2, s0
d00437dc:	eeb0 0a68 	vmov.f32	s0, s17
d00437e0:	b02c      	add	sp, #176	; 0xb0
d00437e2:	ecbd 8b02 	vpop	{d8}
d00437e6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00437ea:	b004      	add	sp, #16
d00437ec:	4770      	bx	lr
d00437ee:	bf00      	nop

d00437f0 <cameraSetRange>:
d00437f0:	b1a0      	cbz	r0, d004381c <cameraSetRange+0x2c>
d00437f2:	eddf 7a0d 	vldr	s15, [pc, #52]	; d0043828 <cameraSetRange+0x38>
d00437f6:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d00437fa:	eeb4 0ae0 	vcmpe.f32	s0, s1
d00437fe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043802:	da0c      	bge.n	d004381e <cameraSetRange+0x2e>
d0043804:	ee30 7ac0 	vsub.f32	s14, s1, s0
d0043808:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d004380c:	eec6 7a87 	vdiv.f32	s15, s13, s14
d0043810:	ed80 0a10 	vstr	s0, [r0, #64]	; 0x40
d0043814:	edc0 0a11 	vstr	s1, [r0, #68]	; 0x44
d0043818:	edc0 7a0f 	vstr	s15, [r0, #60]	; 0x3c
d004381c:	4770      	bx	lr
d004381e:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0043822:	ee70 0a27 	vadd.f32	s1, s0, s15
d0043826:	e7f3      	b.n	d0043810 <cameraSetRange+0x20>
d0043828:	3a83126f 	.word	0x3a83126f

d004382c <cameraMove>:
d004382c:	b3a8      	cbz	r0, d004389a <cameraMove+0x6e>
d004382e:	edd0 6a0b 	vldr	s13, [r0, #44]	; 0x2c
d0043832:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
d0043836:	edd0 7a0a 	vldr	s15, [r0, #40]	; 0x28
d004383a:	ee20 7a87 	vmul.f32	s14, s1, s14
d004383e:	edd0 5a06 	vldr	s11, [r0, #24]
d0043842:	ee60 7aa7 	vmul.f32	s15, s1, s15
d0043846:	ed90 6a08 	vldr	s12, [r0, #32]
d004384a:	ee60 0aa6 	vmul.f32	s1, s1, s13
d004384e:	edd0 6a07 	vldr	s13, [r0, #28]
d0043852:	eea5 7a80 	vfma.f32	s14, s11, s0
d0043856:	edd0 4a01 	vldr	s9, [r0, #4]
d004385a:	eee6 7a80 	vfma.f32	s15, s13, s0
d004385e:	ed90 5a02 	vldr	s10, [r0, #8]
d0043862:	eee6 0a00 	vfma.f32	s1, s12, s0
d0043866:	edd0 6a00 	vldr	s13, [r0]
d004386a:	edd0 5a0c 	vldr	s11, [r0, #48]	; 0x30
d004386e:	ed90 6a0d 	vldr	s12, [r0, #52]	; 0x34
d0043872:	ee37 7a26 	vadd.f32	s14, s14, s13
d0043876:	edd0 6a0e 	vldr	s13, [r0, #56]	; 0x38
d004387a:	ee77 7aa4 	vadd.f32	s15, s15, s9
d004387e:	ee70 0a85 	vadd.f32	s1, s1, s10
d0043882:	eea5 7a81 	vfma.f32	s14, s11, s2
d0043886:	eee6 7a01 	vfma.f32	s15, s12, s2
d004388a:	eee6 0a81 	vfma.f32	s1, s13, s2
d004388e:	ed80 7a00 	vstr	s14, [r0]
d0043892:	edc0 7a01 	vstr	s15, [r0, #4]
d0043896:	edc0 0a02 	vstr	s1, [r0, #8]
d004389a:	4770      	bx	lr

d004389c <normalizeEntity.part.0>:
d004389c:	edd0 0a05 	vldr	s1, [r0, #20]
d00438a0:	ed90 1a06 	vldr	s2, [r0, #24]
d00438a4:	ed90 0a04 	vldr	s0, [r0, #16]
d00438a8:	b510      	push	{r4, lr}
d00438aa:	4604      	mov	r4, r0
d00438ac:	f7ff f8d4 	bl	d0042a58 <vec3Normalize>
d00438b0:	eeb0 7a60 	vmov.f32	s14, s1
d00438b4:	eef0 7a41 	vmov.f32	s15, s2
d00438b8:	ed84 0a04 	vstr	s0, [r4, #16]
d00438bc:	ed94 0a07 	vldr	s0, [r4, #28]
d00438c0:	ed84 7a05 	vstr	s14, [r4, #20]
d00438c4:	edc4 7a06 	vstr	s15, [r4, #24]
d00438c8:	edd4 0a08 	vldr	s1, [r4, #32]
d00438cc:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00438d0:	f7ff f8c2 	bl	d0042a58 <vec3Normalize>
d00438d4:	eef0 1a40 	vmov.f32	s3, s0
d00438d8:	eeb0 2a60 	vmov.f32	s4, s1
d00438dc:	ed94 0a04 	vldr	s0, [r4, #16]
d00438e0:	eef0 2a41 	vmov.f32	s5, s2
d00438e4:	edc4 0a08 	vstr	s1, [r4, #32]
d00438e8:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d00438ec:	edd4 0a05 	vldr	s1, [r4, #20]
d00438f0:	ed94 1a06 	vldr	s2, [r4, #24]
d00438f4:	edc4 1a07 	vstr	s3, [r4, #28]
d00438f8:	f7ff f898 	bl	d0042a2c <vec3Cross>
d00438fc:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0043900:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0043904:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0043908:	f7ff f8a6 	bl	d0042a58 <vec3Normalize>
d004390c:	edd4 1a04 	vldr	s3, [r4, #16]
d0043910:	ed94 2a05 	vldr	s4, [r4, #20]
d0043914:	edd4 2a06 	vldr	s5, [r4, #24]
d0043918:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d004391c:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0043920:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0043924:	f7ff f882 	bl	d0042a2c <vec3Cross>
d0043928:	ed84 0a07 	vstr	s0, [r4, #28]
d004392c:	edc4 0a08 	vstr	s1, [r4, #32]
d0043930:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d0043934:	f7ff f890 	bl	d0042a58 <vec3Normalize>
d0043938:	ed84 0a07 	vstr	s0, [r4, #28]
d004393c:	edc4 0a08 	vstr	s1, [r4, #32]
d0043940:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d0043944:	bd10      	pop	{r4, pc}
d0043946:	bf00      	nop

d0043948 <entityRotation.part.0>:
d0043948:	b5f0      	push	{r4, r5, r6, r7, lr}
d004394a:	4eb7      	ldr	r6, [pc, #732]	; (d0043c28 <entityRotation.part.0+0x2e0>)
d004394c:	eb00 0440 	add.w	r4, r0, r0, lsl #1
d0043950:	ed2d 8b04 	vpush	{d8-d9}
d0043954:	eb06 1444 	add.w	r4, r6, r4, lsl #5
d0043958:	eeb0 9a40 	vmov.f32	s18, s0
d004395c:	eef0 8a60 	vmov.f32	s17, s1
d0043960:	b08b      	sub	sp, #44	; 0x2c
d0043962:	eeb0 8a41 	vmov.f32	s16, s2
d0043966:	2900      	cmp	r1, #0
d0043968:	d040      	beq.n	d00439ec <entityRotation.part.0+0xa4>
d004396a:	eddf 1ab0 	vldr	s3, [pc, #704]	; d0043c2c <entityRotation.part.0+0x2e4>
d004396e:	eeb7 2a00 	vmov.f32	s4, #112	; 0x3f800000  1.0
d0043972:	eeb4 0a61 	vcmp.f32	s0, s3
d0043976:	edc4 1a08 	vstr	s3, [r4, #32]
d004397a:	ed84 2a07 	vstr	s4, [r4, #28]
d004397e:	ed84 2a0b 	vstr	s4, [r4, #44]	; 0x2c
d0043982:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043986:	ed84 2a06 	vstr	s4, [r4, #24]
d004398a:	ed8d 2a02 	vstr	s4, [sp, #8]
d004398e:	ed8d 2a04 	vstr	s4, [sp, #16]
d0043992:	ed8d 2a09 	vstr	s4, [sp, #36]	; 0x24
d0043996:	edc4 1a09 	vstr	s3, [r4, #36]	; 0x24
d004399a:	edc4 1a0a 	vstr	s3, [r4, #40]	; 0x28
d004399e:	edc4 1a0c 	vstr	s3, [r4, #48]	; 0x30
d00439a2:	edc4 1a04 	vstr	s3, [r4, #16]
d00439a6:	edc4 1a05 	vstr	s3, [r4, #20]
d00439aa:	edcd 1a01 	vstr	s3, [sp, #4]
d00439ae:	edcd 1a03 	vstr	s3, [sp, #12]
d00439b2:	edcd 1a05 	vstr	s3, [sp, #20]
d00439b6:	edcd 1a06 	vstr	s3, [sp, #24]
d00439ba:	edcd 1a07 	vstr	s3, [sp, #28]
d00439be:	edcd 1a08 	vstr	s3, [sp, #32]
d00439c2:	d17e      	bne.n	d0043ac2 <entityRotation.part.0+0x17a>
d00439c4:	eef5 8a40 	vcmp.f32	s17, #0.0
d00439c8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00439cc:	f040 80c9 	bne.w	d0043b62 <entityRotation.part.0+0x21a>
d00439d0:	eeb5 8a40 	vcmp.f32	s16, #0.0
d00439d4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00439d8:	f040 8117 	bne.w	d0043c0a <entityRotation.part.0+0x2c2>
d00439dc:	4620      	mov	r0, r4
d00439de:	b00b      	add	sp, #44	; 0x2c
d00439e0:	ecbd 8b04 	vpop	{d8-d9}
d00439e4:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d00439e8:	f7ff bf58 	b.w	d004389c <normalizeEntity.part.0>
d00439ec:	eeb5 0a40 	vcmp.f32	s0, #0.0
d00439f0:	4605      	mov	r5, r0
d00439f2:	0047      	lsls	r7, r0, #1
d00439f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00439f8:	f040 811a 	bne.w	d0043c30 <entityRotation.part.0+0x2e8>
d00439fc:	eef5 8a40 	vcmp.f32	s17, #0.0
d0043a00:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043a04:	f040 8170 	bne.w	d0043ce8 <entityRotation.part.0+0x3a0>
d0043a08:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0043a0c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043a10:	d0e4      	beq.n	d00439dc <entityRotation.part.0+0x94>
d0043a12:	443d      	add	r5, r7
d0043a14:	ab0a      	add	r3, sp, #40	; 0x28
d0043a16:	eeb0 3a48 	vmov.f32	s6, s16
d0043a1a:	ed94 0a04 	vldr	s0, [r4, #16]
d0043a1e:	eb06 1545 	add.w	r5, r6, r5, lsl #5
d0043a22:	edd4 0a05 	vldr	s1, [r4, #20]
d0043a26:	ed94 1a06 	vldr	s2, [r4, #24]
d0043a2a:	3510      	adds	r5, #16
d0043a2c:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d0043a30:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0043a34:	eddd 1a07 	vldr	s3, [sp, #28]
d0043a38:	ed9d 2a08 	vldr	s4, [sp, #32]
d0043a3c:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0043a40:	f7ff f85a 	bl	d0042af8 <rotateAroundAxis>
d0043a44:	eef0 6a40 	vmov.f32	s13, s0
d0043a48:	eeb0 7a60 	vmov.f32	s14, s1
d0043a4c:	ed94 0a07 	vldr	s0, [r4, #28]
d0043a50:	eef0 7a41 	vmov.f32	s15, s2
d0043a54:	edd4 0a08 	vldr	s1, [r4, #32]
d0043a58:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0043a5c:	eeb0 3a48 	vmov.f32	s6, s16
d0043a60:	eddd 1a07 	vldr	s3, [sp, #28]
d0043a64:	ed9d 2a08 	vldr	s4, [sp, #32]
d0043a68:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0043a6c:	edc4 6a04 	vstr	s13, [r4, #16]
d0043a70:	ed84 7a05 	vstr	s14, [r4, #20]
d0043a74:	edc4 7a06 	vstr	s15, [r4, #24]
d0043a78:	f7ff f83e 	bl	d0042af8 <rotateAroundAxis>
d0043a7c:	eef0 6a40 	vmov.f32	s13, s0
d0043a80:	eeb0 7a60 	vmov.f32	s14, s1
d0043a84:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0043a88:	eef0 7a41 	vmov.f32	s15, s2
d0043a8c:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0043a90:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0043a94:	eeb0 3a48 	vmov.f32	s6, s16
d0043a98:	eddd 1a07 	vldr	s3, [sp, #28]
d0043a9c:	ed9d 2a08 	vldr	s4, [sp, #32]
d0043aa0:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0043aa4:	edc4 6a07 	vstr	s13, [r4, #28]
d0043aa8:	ed84 7a08 	vstr	s14, [r4, #32]
d0043aac:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0043ab0:	f7ff f822 	bl	d0042af8 <rotateAroundAxis>
d0043ab4:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0043ab8:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0043abc:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0043ac0:	e78c      	b.n	d00439dc <entityRotation.part.0+0x94>
d0043ac2:	eeb0 1a42 	vmov.f32	s2, s4
d0043ac6:	eef0 0a61 	vmov.f32	s1, s3
d0043aca:	eeb0 3a40 	vmov.f32	s6, s0
d0043ace:	eeb0 0a61 	vmov.f32	s0, s3
d0043ad2:	eef0 2a61 	vmov.f32	s5, s3
d0043ad6:	f7ff f80f 	bl	d0042af8 <rotateAroundAxis>
d0043ada:	eeb0 7a60 	vmov.f32	s14, s1
d0043ade:	eef0 6a40 	vmov.f32	s13, s0
d0043ae2:	edd4 0a08 	vldr	s1, [r4, #32]
d0043ae6:	eef0 7a41 	vmov.f32	s15, s2
d0043aea:	ed94 0a07 	vldr	s0, [r4, #28]
d0043aee:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0043af2:	eeb0 3a49 	vmov.f32	s6, s18
d0043af6:	eddd 1a01 	vldr	s3, [sp, #4]
d0043afa:	ed9d 2a02 	vldr	s4, [sp, #8]
d0043afe:	eddd 2a03 	vldr	s5, [sp, #12]
d0043b02:	edc4 6a04 	vstr	s13, [r4, #16]
d0043b06:	ed84 7a05 	vstr	s14, [r4, #20]
d0043b0a:	edc4 7a06 	vstr	s15, [r4, #24]
d0043b0e:	f7fe fff3 	bl	d0042af8 <rotateAroundAxis>
d0043b12:	eef0 6a40 	vmov.f32	s13, s0
d0043b16:	eeb0 7a60 	vmov.f32	s14, s1
d0043b1a:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0043b1e:	eef0 7a41 	vmov.f32	s15, s2
d0043b22:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0043b26:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0043b2a:	eeb0 3a49 	vmov.f32	s6, s18
d0043b2e:	eddd 1a01 	vldr	s3, [sp, #4]
d0043b32:	ed9d 2a02 	vldr	s4, [sp, #8]
d0043b36:	eddd 2a03 	vldr	s5, [sp, #12]
d0043b3a:	edc4 6a07 	vstr	s13, [r4, #28]
d0043b3e:	ed84 7a08 	vstr	s14, [r4, #32]
d0043b42:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0043b46:	f7fe ffd7 	bl	d0042af8 <rotateAroundAxis>
d0043b4a:	eef5 8a40 	vcmp.f32	s17, #0.0
d0043b4e:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0043b52:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0043b56:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043b5a:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0043b5e:	f43f af37 	beq.w	d00439d0 <entityRotation.part.0+0x88>
d0043b62:	ed94 0a04 	vldr	s0, [r4, #16]
d0043b66:	eeb0 3a68 	vmov.f32	s6, s17
d0043b6a:	edd4 0a05 	vldr	s1, [r4, #20]
d0043b6e:	ed94 1a06 	vldr	s2, [r4, #24]
d0043b72:	eddd 1a04 	vldr	s3, [sp, #16]
d0043b76:	ed9d 2a05 	vldr	s4, [sp, #20]
d0043b7a:	eddd 2a06 	vldr	s5, [sp, #24]
d0043b7e:	f7fe ffbb 	bl	d0042af8 <rotateAroundAxis>
d0043b82:	eef0 6a40 	vmov.f32	s13, s0
d0043b86:	eeb0 7a60 	vmov.f32	s14, s1
d0043b8a:	ed94 0a07 	vldr	s0, [r4, #28]
d0043b8e:	eef0 7a41 	vmov.f32	s15, s2
d0043b92:	edd4 0a08 	vldr	s1, [r4, #32]
d0043b96:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0043b9a:	eeb0 3a68 	vmov.f32	s6, s17
d0043b9e:	eddd 1a04 	vldr	s3, [sp, #16]
d0043ba2:	ed9d 2a05 	vldr	s4, [sp, #20]
d0043ba6:	eddd 2a06 	vldr	s5, [sp, #24]
d0043baa:	edc4 6a04 	vstr	s13, [r4, #16]
d0043bae:	ed84 7a05 	vstr	s14, [r4, #20]
d0043bb2:	edc4 7a06 	vstr	s15, [r4, #24]
d0043bb6:	f7fe ff9f 	bl	d0042af8 <rotateAroundAxis>
d0043bba:	eef0 6a40 	vmov.f32	s13, s0
d0043bbe:	eeb0 7a60 	vmov.f32	s14, s1
d0043bc2:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0043bc6:	eef0 7a41 	vmov.f32	s15, s2
d0043bca:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0043bce:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0043bd2:	eeb0 3a68 	vmov.f32	s6, s17
d0043bd6:	eddd 1a04 	vldr	s3, [sp, #16]
d0043bda:	ed9d 2a05 	vldr	s4, [sp, #20]
d0043bde:	eddd 2a06 	vldr	s5, [sp, #24]
d0043be2:	edc4 6a07 	vstr	s13, [r4, #28]
d0043be6:	ed84 7a08 	vstr	s14, [r4, #32]
d0043bea:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0043bee:	f7fe ff83 	bl	d0042af8 <rotateAroundAxis>
d0043bf2:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0043bf6:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0043bfa:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0043bfe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043c02:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0043c06:	f43f aee9 	beq.w	d00439dc <entityRotation.part.0+0x94>
d0043c0a:	eeb0 3a48 	vmov.f32	s6, s16
d0043c0e:	eddd 1a07 	vldr	s3, [sp, #28]
d0043c12:	ed9d 2a08 	vldr	s4, [sp, #32]
d0043c16:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0043c1a:	ed94 0a04 	vldr	s0, [r4, #16]
d0043c1e:	edd4 0a05 	vldr	s1, [r4, #20]
d0043c22:	ed94 1a06 	vldr	s2, [r4, #24]
d0043c26:	e70b      	b.n	d0043a40 <entityRotation.part.0+0xf8>
d0043c28:	d012da80 	.word	0xd012da80
d0043c2c:	00000000 	.word	0x00000000
d0043c30:	f104 0328 	add.w	r3, r4, #40	; 0x28
d0043c34:	f10d 0c04 	add.w	ip, sp, #4
d0043c38:	eeb0 3a40 	vmov.f32	s6, s0
d0043c3c:	edd4 0a05 	vldr	s1, [r4, #20]
d0043c40:	ed94 0a04 	vldr	s0, [r4, #16]
d0043c44:	ed94 1a06 	vldr	s2, [r4, #24]
d0043c48:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0043c4c:	e88c 0007 	stmia.w	ip, {r0, r1, r2}
d0043c50:	eddd 1a01 	vldr	s3, [sp, #4]
d0043c54:	ed9d 2a02 	vldr	s4, [sp, #8]
d0043c58:	eddd 2a03 	vldr	s5, [sp, #12]
d0043c5c:	f7fe ff4c 	bl	d0042af8 <rotateAroundAxis>
d0043c60:	eef0 6a40 	vmov.f32	s13, s0
d0043c64:	eeb0 7a60 	vmov.f32	s14, s1
d0043c68:	ed94 0a07 	vldr	s0, [r4, #28]
d0043c6c:	eef0 7a41 	vmov.f32	s15, s2
d0043c70:	edd4 0a08 	vldr	s1, [r4, #32]
d0043c74:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0043c78:	eeb0 3a49 	vmov.f32	s6, s18
d0043c7c:	eddd 1a01 	vldr	s3, [sp, #4]
d0043c80:	ed9d 2a02 	vldr	s4, [sp, #8]
d0043c84:	eddd 2a03 	vldr	s5, [sp, #12]
d0043c88:	edc4 6a04 	vstr	s13, [r4, #16]
d0043c8c:	ed84 7a05 	vstr	s14, [r4, #20]
d0043c90:	edc4 7a06 	vstr	s15, [r4, #24]
d0043c94:	f7fe ff30 	bl	d0042af8 <rotateAroundAxis>
d0043c98:	eef0 6a40 	vmov.f32	s13, s0
d0043c9c:	eeb0 7a60 	vmov.f32	s14, s1
d0043ca0:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0043ca4:	eef0 7a41 	vmov.f32	s15, s2
d0043ca8:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0043cac:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0043cb0:	eeb0 3a49 	vmov.f32	s6, s18
d0043cb4:	eddd 1a01 	vldr	s3, [sp, #4]
d0043cb8:	ed9d 2a02 	vldr	s4, [sp, #8]
d0043cbc:	eddd 2a03 	vldr	s5, [sp, #12]
d0043cc0:	edc4 6a07 	vstr	s13, [r4, #28]
d0043cc4:	ed84 7a08 	vstr	s14, [r4, #32]
d0043cc8:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0043ccc:	f7fe ff14 	bl	d0042af8 <rotateAroundAxis>
d0043cd0:	eef5 8a40 	vcmp.f32	s17, #0.0
d0043cd4:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0043cd8:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0043cdc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043ce0:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0043ce4:	f43f ae90 	beq.w	d0043a08 <entityRotation.part.0+0xc0>
d0043ce8:	197b      	adds	r3, r7, r5
d0043cea:	f10d 0c10 	add.w	ip, sp, #16
d0043cee:	ed94 0a04 	vldr	s0, [r4, #16]
d0043cf2:	eeb0 3a68 	vmov.f32	s6, s17
d0043cf6:	eb06 1343 	add.w	r3, r6, r3, lsl #5
d0043cfa:	edd4 0a05 	vldr	s1, [r4, #20]
d0043cfe:	ed94 1a06 	vldr	s2, [r4, #24]
d0043d02:	331c      	adds	r3, #28
d0043d04:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0043d08:	e88c 0007 	stmia.w	ip, {r0, r1, r2}
d0043d0c:	eddd 1a04 	vldr	s3, [sp, #16]
d0043d10:	ed9d 2a05 	vldr	s4, [sp, #20]
d0043d14:	eddd 2a06 	vldr	s5, [sp, #24]
d0043d18:	f7fe feee 	bl	d0042af8 <rotateAroundAxis>
d0043d1c:	eef0 6a40 	vmov.f32	s13, s0
d0043d20:	eeb0 7a60 	vmov.f32	s14, s1
d0043d24:	ed94 0a07 	vldr	s0, [r4, #28]
d0043d28:	eef0 7a41 	vmov.f32	s15, s2
d0043d2c:	edd4 0a08 	vldr	s1, [r4, #32]
d0043d30:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0043d34:	eeb0 3a68 	vmov.f32	s6, s17
d0043d38:	eddd 1a04 	vldr	s3, [sp, #16]
d0043d3c:	ed9d 2a05 	vldr	s4, [sp, #20]
d0043d40:	eddd 2a06 	vldr	s5, [sp, #24]
d0043d44:	edc4 6a04 	vstr	s13, [r4, #16]
d0043d48:	ed84 7a05 	vstr	s14, [r4, #20]
d0043d4c:	edc4 7a06 	vstr	s15, [r4, #24]
d0043d50:	f7fe fed2 	bl	d0042af8 <rotateAroundAxis>
d0043d54:	eef0 6a40 	vmov.f32	s13, s0
d0043d58:	eeb0 7a60 	vmov.f32	s14, s1
d0043d5c:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0043d60:	eef0 7a41 	vmov.f32	s15, s2
d0043d64:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0043d68:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0043d6c:	eeb0 3a68 	vmov.f32	s6, s17
d0043d70:	eddd 1a04 	vldr	s3, [sp, #16]
d0043d74:	ed9d 2a05 	vldr	s4, [sp, #20]
d0043d78:	eddd 2a06 	vldr	s5, [sp, #24]
d0043d7c:	edc4 6a07 	vstr	s13, [r4, #28]
d0043d80:	ed84 7a08 	vstr	s14, [r4, #32]
d0043d84:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0043d88:	f7fe feb6 	bl	d0042af8 <rotateAroundAxis>
d0043d8c:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0043d90:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0043d94:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0043d98:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043d9c:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0043da0:	f43f ae1c 	beq.w	d00439dc <entityRotation.part.0+0x94>
d0043da4:	e635      	b.n	d0043a12 <entityRotation.part.0+0xca>
d0043da6:	bf00      	nop

d0043da8 <meshComputeBoundsRadius>:
d0043da8:	b1f0      	cbz	r0, d0043de8 <meshComputeBoundsRadius+0x40>
d0043daa:	6803      	ldr	r3, [r0, #0]
d0043dac:	b1e3      	cbz	r3, d0043de8 <meshComputeBoundsRadius+0x40>
d0043dae:	6842      	ldr	r2, [r0, #4]
d0043db0:	2a00      	cmp	r2, #0
d0043db2:	dd19      	ble.n	d0043de8 <meshComputeBoundsRadius+0x40>
d0043db4:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d0043db8:	ed9f 6a0d 	vldr	s12, [pc, #52]	; d0043df0 <meshComputeBoundsRadius+0x48>
d0043dbc:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d0043dc0:	edd3 7a01 	vldr	s15, [r3, #4]
d0043dc4:	330c      	adds	r3, #12
d0043dc6:	ed53 6a03 	vldr	s13, [r3, #-12]
d0043dca:	ee67 7aa7 	vmul.f32	s15, s15, s15
d0043dce:	ed13 7a01 	vldr	s14, [r3, #-4]
d0043dd2:	429a      	cmp	r2, r3
d0043dd4:	eee6 7aa6 	vfma.f32	s15, s13, s13
d0043dd8:	eee7 7a07 	vfma.f32	s15, s14, s14
d0043ddc:	fe86 6a27 	vmaxnm.f32	s12, s12, s15
d0043de0:	d1ee      	bne.n	d0043dc0 <meshComputeBoundsRadius+0x18>
d0043de2:	eeb1 0ac6 	vsqrt.f32	s0, s12
d0043de6:	4770      	bx	lr
d0043de8:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0043df0 <meshComputeBoundsRadius+0x48>
d0043dec:	4770      	bx	lr
d0043dee:	bf00      	nop
d0043df0:	00000000 	.word	0x00000000

d0043df4 <entityWorldSpawn>:
d0043df4:	b4f0      	push	{r4, r5, r6, r7}
d0043df6:	4d20      	ldr	r5, [pc, #128]	; (d0043e78 <entityWorldSpawn+0x84>)
d0043df8:	b084      	sub	sp, #16
d0043dfa:	2300      	movs	r3, #0
d0043dfc:	462a      	mov	r2, r5
d0043dfe:	ed8d 0a01 	vstr	s0, [sp, #4]
d0043e02:	edcd 0a02 	vstr	s1, [sp, #8]
d0043e06:	ed8d 1a03 	vstr	s2, [sp, #12]
d0043e0a:	e003      	b.n	d0043e14 <entityWorldSpawn+0x20>
d0043e0c:	3301      	adds	r3, #1
d0043e0e:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d0043e12:	d02b      	beq.n	d0043e6c <entityWorldSpawn+0x78>
d0043e14:	f892 4034 	ldrb.w	r4, [r2, #52]	; 0x34
d0043e18:	3260      	adds	r2, #96	; 0x60
d0043e1a:	2c00      	cmp	r4, #0
d0043e1c:	d1f6      	bne.n	d0043e0c <entityWorldSpawn+0x18>
d0043e1e:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0043e22:	4f16      	ldr	r7, [pc, #88]	; (d0043e7c <entityWorldSpawn+0x88>)
d0043e24:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d0043e28:	2600      	movs	r6, #0
d0043e2a:	eb05 1542 	add.w	r5, r5, r2, lsl #5
d0043e2e:	f240 1c01 	movw	ip, #257	; 0x101
d0043e32:	eb07 1742 	add.w	r7, r7, r2, lsl #5
d0043e36:	aa04      	add	r2, sp, #16
d0043e38:	60e8      	str	r0, [r5, #12]
d0043e3a:	61e9      	str	r1, [r5, #28]
d0043e3c:	62e9      	str	r1, [r5, #44]	; 0x2c
d0043e3e:	61a9      	str	r1, [r5, #24]
d0043e40:	622e      	str	r6, [r5, #32]
d0043e42:	626e      	str	r6, [r5, #36]	; 0x24
d0043e44:	62ae      	str	r6, [r5, #40]	; 0x28
d0043e46:	632e      	str	r6, [r5, #48]	; 0x30
d0043e48:	612e      	str	r6, [r5, #16]
d0043e4a:	616e      	str	r6, [r5, #20]
d0043e4c:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0043e50:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d0043e54:	4618      	mov	r0, r3
d0043e56:	f8a7 c014 	strh.w	ip, [r7, #20]
d0043e5a:	f885 4036 	strb.w	r4, [r5, #54]	; 0x36
d0043e5e:	63ee      	str	r6, [r5, #60]	; 0x3c
d0043e60:	642e      	str	r6, [r5, #64]	; 0x40
d0043e62:	646e      	str	r6, [r5, #68]	; 0x44
d0043e64:	63ae      	str	r6, [r5, #56]	; 0x38
d0043e66:	b004      	add	sp, #16
d0043e68:	bcf0      	pop	{r4, r5, r6, r7}
d0043e6a:	4770      	bx	lr
d0043e6c:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d0043e70:	4618      	mov	r0, r3
d0043e72:	b004      	add	sp, #16
d0043e74:	bcf0      	pop	{r4, r5, r6, r7}
d0043e76:	4770      	bx	lr
d0043e78:	d012da80 	.word	0xd012da80
d0043e7c:	d012daa0 	.word	0xd012daa0

d0043e80 <entitySetPosition>:
d0043e80:	b084      	sub	sp, #16
d0043e82:	28ff      	cmp	r0, #255	; 0xff
d0043e84:	ed8d 0a01 	vstr	s0, [sp, #4]
d0043e88:	edcd 0a02 	vstr	s1, [sp, #8]
d0043e8c:	ed8d 1a03 	vstr	s2, [sp, #12]
d0043e90:	d80e      	bhi.n	d0043eb0 <entitySetPosition+0x30>
d0043e92:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0043e96:	4b07      	ldr	r3, [pc, #28]	; (d0043eb4 <entitySetPosition+0x34>)
d0043e98:	eb03 1340 	add.w	r3, r3, r0, lsl #5
d0043e9c:	f893 2034 	ldrb.w	r2, [r3, #52]	; 0x34
d0043ea0:	b132      	cbz	r2, d0043eb0 <entitySetPosition+0x30>
d0043ea2:	68da      	ldr	r2, [r3, #12]
d0043ea4:	b122      	cbz	r2, d0043eb0 <entitySetPosition+0x30>
d0043ea6:	aa04      	add	r2, sp, #16
d0043ea8:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0043eac:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0043eb0:	b004      	add	sp, #16
d0043eb2:	4770      	bx	lr
d0043eb4:	d012da80 	.word	0xd012da80

d0043eb8 <entityGetPosition>:
d0043eb8:	28ff      	cmp	r0, #255	; 0xff
d0043eba:	b088      	sub	sp, #32
d0043ebc:	d80e      	bhi.n	d0043edc <entityGetPosition+0x24>
d0043ebe:	4b0d      	ldr	r3, [pc, #52]	; (d0043ef4 <entityGetPosition+0x3c>)
d0043ec0:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0043ec4:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d0043ec8:	f890 3034 	ldrb.w	r3, [r0, #52]	; 0x34
d0043ecc:	b133      	cbz	r3, d0043edc <entityGetPosition+0x24>
d0043ece:	68c3      	ldr	r3, [r0, #12]
d0043ed0:	b123      	cbz	r3, d0043edc <entityGetPosition+0x24>
d0043ed2:	ab08      	add	r3, sp, #32
d0043ed4:	c807      	ldmia	r0, {r0, r1, r2}
d0043ed6:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0043eda:	e003      	b.n	d0043ee4 <entityGetPosition+0x2c>
d0043edc:	2300      	movs	r3, #0
d0043ede:	9305      	str	r3, [sp, #20]
d0043ee0:	9306      	str	r3, [sp, #24]
d0043ee2:	9307      	str	r3, [sp, #28]
d0043ee4:	ed9d 0a05 	vldr	s0, [sp, #20]
d0043ee8:	eddd 0a06 	vldr	s1, [sp, #24]
d0043eec:	ed9d 1a07 	vldr	s2, [sp, #28]
d0043ef0:	b008      	add	sp, #32
d0043ef2:	4770      	bx	lr
d0043ef4:	d012da80 	.word	0xd012da80

d0043ef8 <entityMoveForward>:
d0043ef8:	28ff      	cmp	r0, #255	; 0xff
d0043efa:	d82b      	bhi.n	d0043f54 <entityMoveForward+0x5c>
d0043efc:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0043f00:	b510      	push	{r4, lr}
d0043f02:	4c15      	ldr	r4, [pc, #84]	; (d0043f58 <entityMoveForward+0x60>)
d0043f04:	b084      	sub	sp, #16
d0043f06:	eb04 1440 	add.w	r4, r4, r0, lsl #5
d0043f0a:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0043f0e:	b1fb      	cbz	r3, d0043f50 <entityMoveForward+0x58>
d0043f10:	68e3      	ldr	r3, [r4, #12]
d0043f12:	b1eb      	cbz	r3, d0043f50 <entityMoveForward+0x58>
d0043f14:	eef0 1a40 	vmov.f32	s3, s0
d0043f18:	edd4 0a05 	vldr	s1, [r4, #20]
d0043f1c:	ed94 0a04 	vldr	s0, [r4, #16]
d0043f20:	ed94 1a06 	vldr	s2, [r4, #24]
d0043f24:	f7fe fd6c 	bl	d0042a00 <vec3Scale>
d0043f28:	eef0 1a40 	vmov.f32	s3, s0
d0043f2c:	eeb0 2a60 	vmov.f32	s4, s1
d0043f30:	ed94 0a00 	vldr	s0, [r4]
d0043f34:	eef0 2a41 	vmov.f32	s5, s2
d0043f38:	edd4 0a01 	vldr	s1, [r4, #4]
d0043f3c:	ed94 1a02 	vldr	s2, [r4, #8]
d0043f40:	f7fe fd54 	bl	d00429ec <vec3Add>
d0043f44:	ed84 0a00 	vstr	s0, [r4]
d0043f48:	edc4 0a01 	vstr	s1, [r4, #4]
d0043f4c:	ed84 1a02 	vstr	s2, [r4, #8]
d0043f50:	b004      	add	sp, #16
d0043f52:	bd10      	pop	{r4, pc}
d0043f54:	4770      	bx	lr
d0043f56:	bf00      	nop
d0043f58:	d012da80 	.word	0xd012da80

d0043f5c <entityTurnLocal>:
d0043f5c:	28ff      	cmp	r0, #255	; 0xff
d0043f5e:	d82c      	bhi.n	d0043fba <entityTurnLocal+0x5e>
d0043f60:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0043f64:	b510      	push	{r4, lr}
d0043f66:	4c65      	ldr	r4, [pc, #404]	; (d00440fc <entityTurnLocal+0x1a0>)
d0043f68:	eb04 1440 	add.w	r4, r4, r0, lsl #5
d0043f6c:	ed2d 8b04 	vpush	{d8-d9}
d0043f70:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0043f74:	b1f3      	cbz	r3, d0043fb4 <entityTurnLocal+0x58>
d0043f76:	68e3      	ldr	r3, [r4, #12]
d0043f78:	b1e3      	cbz	r3, d0043fb4 <entityTurnLocal+0x58>
d0043f7a:	eeb5 0a40 	vcmp.f32	s0, #0.0
d0043f7e:	eeb0 9a40 	vmov.f32	s18, s0
d0043f82:	eef0 8a60 	vmov.f32	s17, s1
d0043f86:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043f8a:	eeb0 8a41 	vmov.f32	s16, s2
d0043f8e:	f040 8081 	bne.w	d0044094 <entityTurnLocal+0x138>
d0043f92:	eef5 8a40 	vcmp.f32	s17, #0.0
d0043f96:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043f9a:	d148      	bne.n	d004402e <entityTurnLocal+0xd2>
d0043f9c:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0043fa0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043fa4:	d10a      	bne.n	d0043fbc <entityTurnLocal+0x60>
d0043fa6:	4620      	mov	r0, r4
d0043fa8:	ecbd 8b04 	vpop	{d8-d9}
d0043fac:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0043fb0:	f7ff bc74 	b.w	d004389c <normalizeEntity.part.0>
d0043fb4:	ecbd 8b04 	vpop	{d8-d9}
d0043fb8:	bd10      	pop	{r4, pc}
d0043fba:	4770      	bx	lr
d0043fbc:	ed94 0a07 	vldr	s0, [r4, #28]
d0043fc0:	eeb0 3a48 	vmov.f32	s6, s16
d0043fc4:	edd4 0a08 	vldr	s1, [r4, #32]
d0043fc8:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0043fcc:	edd4 1a04 	vldr	s3, [r4, #16]
d0043fd0:	ed94 2a05 	vldr	s4, [r4, #20]
d0043fd4:	edd4 2a06 	vldr	s5, [r4, #24]
d0043fd8:	f7fe fd8e 	bl	d0042af8 <rotateAroundAxis>
d0043fdc:	eef0 6a40 	vmov.f32	s13, s0
d0043fe0:	eeb0 7a60 	vmov.f32	s14, s1
d0043fe4:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0043fe8:	eef0 7a41 	vmov.f32	s15, s2
d0043fec:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0043ff0:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0043ff4:	eeb0 3a48 	vmov.f32	s6, s16
d0043ff8:	edd4 1a04 	vldr	s3, [r4, #16]
d0043ffc:	ed94 2a05 	vldr	s4, [r4, #20]
d0044000:	edd4 2a06 	vldr	s5, [r4, #24]
d0044004:	edc4 6a07 	vstr	s13, [r4, #28]
d0044008:	ed84 7a08 	vstr	s14, [r4, #32]
d004400c:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0044010:	f7fe fd72 	bl	d0042af8 <rotateAroundAxis>
d0044014:	4620      	mov	r0, r4
d0044016:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d004401a:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d004401e:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0044022:	ecbd 8b04 	vpop	{d8-d9}
d0044026:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d004402a:	f7ff bc37 	b.w	d004389c <normalizeEntity.part.0>
d004402e:	ed94 0a04 	vldr	s0, [r4, #16]
d0044032:	eeb0 3a68 	vmov.f32	s6, s17
d0044036:	edd4 0a05 	vldr	s1, [r4, #20]
d004403a:	ed94 1a06 	vldr	s2, [r4, #24]
d004403e:	edd4 1a07 	vldr	s3, [r4, #28]
d0044042:	ed94 2a08 	vldr	s4, [r4, #32]
d0044046:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d004404a:	f7fe fd55 	bl	d0042af8 <rotateAroundAxis>
d004404e:	eef0 6a40 	vmov.f32	s13, s0
d0044052:	eeb0 7a60 	vmov.f32	s14, s1
d0044056:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d004405a:	eef0 7a41 	vmov.f32	s15, s2
d004405e:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0044062:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0044066:	eeb0 3a68 	vmov.f32	s6, s17
d004406a:	edd4 1a07 	vldr	s3, [r4, #28]
d004406e:	ed94 2a08 	vldr	s4, [r4, #32]
d0044072:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d0044076:	edc4 6a04 	vstr	s13, [r4, #16]
d004407a:	ed84 7a05 	vstr	s14, [r4, #20]
d004407e:	edc4 7a06 	vstr	s15, [r4, #24]
d0044082:	f7fe fd39 	bl	d0042af8 <rotateAroundAxis>
d0044086:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d004408a:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d004408e:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0044092:	e783      	b.n	d0043f9c <entityTurnLocal+0x40>
d0044094:	eeb0 3a40 	vmov.f32	s6, s0
d0044098:	edd4 0a05 	vldr	s1, [r4, #20]
d004409c:	ed94 0a04 	vldr	s0, [r4, #16]
d00440a0:	ed94 1a06 	vldr	s2, [r4, #24]
d00440a4:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d00440a8:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d00440ac:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d00440b0:	f7fe fd22 	bl	d0042af8 <rotateAroundAxis>
d00440b4:	eef0 6a40 	vmov.f32	s13, s0
d00440b8:	eeb0 7a60 	vmov.f32	s14, s1
d00440bc:	ed94 0a07 	vldr	s0, [r4, #28]
d00440c0:	eef0 7a41 	vmov.f32	s15, s2
d00440c4:	edd4 0a08 	vldr	s1, [r4, #32]
d00440c8:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00440cc:	eeb0 3a49 	vmov.f32	s6, s18
d00440d0:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d00440d4:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d00440d8:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d00440dc:	edc4 6a04 	vstr	s13, [r4, #16]
d00440e0:	ed84 7a05 	vstr	s14, [r4, #20]
d00440e4:	edc4 7a06 	vstr	s15, [r4, #24]
d00440e8:	f7fe fd06 	bl	d0042af8 <rotateAroundAxis>
d00440ec:	ed84 0a07 	vstr	s0, [r4, #28]
d00440f0:	edc4 0a08 	vstr	s1, [r4, #32]
d00440f4:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d00440f8:	e74b      	b.n	d0043f92 <entityTurnLocal+0x36>
d00440fa:	bf00      	nop
d00440fc:	d012da80 	.word	0xd012da80

d0044100 <entityRotation>:
d0044100:	28ff      	cmp	r0, #255	; 0xff
d0044102:	d80b      	bhi.n	d004411c <entityRotation+0x1c>
d0044104:	4a06      	ldr	r2, [pc, #24]	; (d0044120 <entityRotation+0x20>)
d0044106:	eb00 0340 	add.w	r3, r0, r0, lsl #1
d004410a:	eb02 1343 	add.w	r3, r2, r3, lsl #5
d004410e:	f893 2034 	ldrb.w	r2, [r3, #52]	; 0x34
d0044112:	b11a      	cbz	r2, d004411c <entityRotation+0x1c>
d0044114:	68db      	ldr	r3, [r3, #12]
d0044116:	b10b      	cbz	r3, d004411c <entityRotation+0x1c>
d0044118:	f7ff bc16 	b.w	d0043948 <entityRotation.part.0>
d004411c:	4770      	bx	lr
d004411e:	bf00      	nop
d0044120:	d012da80 	.word	0xd012da80

d0044124 <copyMesh>:
d0044124:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0044128:	460f      	mov	r7, r1
d004412a:	b083      	sub	sp, #12
d004412c:	2240      	movs	r2, #64	; 0x40
d004412e:	2100      	movs	r1, #0
d0044130:	4606      	mov	r6, r0
d0044132:	f002 fd97 	bl	d0046c64 <memset>
d0044136:	2f00      	cmp	r7, #0
d0044138:	d077      	beq.n	d004422a <copyMesh+0x106>
d004413a:	687b      	ldr	r3, [r7, #4]
d004413c:	697a      	ldr	r2, [r7, #20]
d004413e:	2b00      	cmp	r3, #0
d0044140:	f8d7 800c 	ldr.w	r8, [r7, #12]
d0044144:	9301      	str	r3, [sp, #4]
d0044146:	9200      	str	r2, [sp, #0]
d0044148:	dc59      	bgt.n	d00441fe <copyMesh+0xda>
d004414a:	f1b8 0f00 	cmp.w	r8, #0
d004414e:	f04f 0900 	mov.w	r9, #0
d0044152:	dc5d      	bgt.n	d0044210 <copyMesh+0xec>
d0044154:	9b00      	ldr	r3, [sp, #0]
d0044156:	f04f 0a00 	mov.w	sl, #0
d004415a:	2b00      	cmp	r3, #0
d004415c:	dc60      	bgt.n	d0044220 <copyMesh+0xfc>
d004415e:	f04f 0c00 	mov.w	ip, #0
d0044162:	9b01      	ldr	r3, [sp, #4]
d0044164:	2b00      	cmp	r3, #0
d0044166:	dd0f      	ble.n	d0044188 <copyMesh+0x64>
d0044168:	eb03 0543 	add.w	r5, r3, r3, lsl #1
d004416c:	f8d7 e000 	ldr.w	lr, [r7]
d0044170:	2300      	movs	r3, #0
d0044172:	00ad      	lsls	r5, r5, #2
d0044174:	eb0e 0203 	add.w	r2, lr, r3
d0044178:	eb09 0403 	add.w	r4, r9, r3
d004417c:	330c      	adds	r3, #12
d004417e:	ca07      	ldmia	r2, {r0, r1, r2}
d0044180:	429d      	cmp	r5, r3
d0044182:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d0044186:	d1f5      	bne.n	d0044174 <copyMesh+0x50>
d0044188:	f1b8 0f00 	cmp.w	r8, #0
d004418c:	dd0b      	ble.n	d00441a6 <copyMesh+0x82>
d004418e:	68bc      	ldr	r4, [r7, #8]
d0044190:	2300      	movs	r3, #0
d0044192:	eb04 01c3 	add.w	r1, r4, r3, lsl #3
d0044196:	eb0a 02c3 	add.w	r2, sl, r3, lsl #3
d004419a:	3301      	adds	r3, #1
d004419c:	c903      	ldmia	r1, {r0, r1}
d004419e:	4598      	cmp	r8, r3
d00441a0:	e882 0003 	stmia.w	r2, {r0, r1}
d00441a4:	d1f5      	bne.n	d0044192 <copyMesh+0x6e>
d00441a6:	9b00      	ldr	r3, [sp, #0]
d00441a8:	2b00      	cmp	r3, #0
d00441aa:	dd0e      	ble.n	d00441ca <copyMesh+0xa6>
d00441ac:	f8d7 b010 	ldr.w	fp, [r7, #16]
d00441b0:	ea4f 1e03 	mov.w	lr, r3, lsl #4
d00441b4:	2400      	movs	r4, #0
d00441b6:	eb0b 0304 	add.w	r3, fp, r4
d00441ba:	eb0c 0504 	add.w	r5, ip, r4
d00441be:	3410      	adds	r4, #16
d00441c0:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
d00441c2:	4574      	cmp	r4, lr
d00441c4:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d00441c8:	d1f5      	bne.n	d00441b6 <copyMesh+0x92>
d00441ca:	9a01      	ldr	r2, [sp, #4]
d00441cc:	f107 0520 	add.w	r5, r7, #32
d00441d0:	69bb      	ldr	r3, [r7, #24]
d00441d2:	f106 0420 	add.w	r4, r6, #32
d00441d6:	6072      	str	r2, [r6, #4]
d00441d8:	9a00      	ldr	r2, [sp, #0]
d00441da:	61b3      	str	r3, [r6, #24]
d00441dc:	6172      	str	r2, [r6, #20]
d00441de:	f8c6 9000 	str.w	r9, [r6]
d00441e2:	f8c6 c010 	str.w	ip, [r6, #16]
d00441e6:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d00441e8:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d00441ea:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d00441ee:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d00441f2:	4630      	mov	r0, r6
d00441f4:	e9c6 a802 	strd	sl, r8, [r6, #8]
d00441f8:	b003      	add	sp, #12
d00441fa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00441fe:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0044202:	0080      	lsls	r0, r0, #2
d0044204:	f002 fd10 	bl	d0046c28 <malloc>
d0044208:	f1b8 0f00 	cmp.w	r8, #0
d004420c:	4681      	mov	r9, r0
d004420e:	dda1      	ble.n	d0044154 <copyMesh+0x30>
d0044210:	ea4f 00c8 	mov.w	r0, r8, lsl #3
d0044214:	f002 fd08 	bl	d0046c28 <malloc>
d0044218:	9b00      	ldr	r3, [sp, #0]
d004421a:	4682      	mov	sl, r0
d004421c:	2b00      	cmp	r3, #0
d004421e:	dd9e      	ble.n	d004415e <copyMesh+0x3a>
d0044220:	0118      	lsls	r0, r3, #4
d0044222:	f002 fd01 	bl	d0046c28 <malloc>
d0044226:	4684      	mov	ip, r0
d0044228:	e79b      	b.n	d0044162 <copyMesh+0x3e>
d004422a:	2300      	movs	r3, #0
d004422c:	4630      	mov	r0, r6
d004422e:	e9c6 7700 	strd	r7, r7, [r6]
d0044232:	e9c6 7702 	strd	r7, r7, [r6, #8]
d0044236:	e9c6 7704 	strd	r7, r7, [r6, #16]
d004423a:	61b3      	str	r3, [r6, #24]
d004423c:	b003      	add	sp, #12
d004423e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0044242:	bf00      	nop

d0044244 <buildLightingCLUT>:
d0044244:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0044248:	f1b2 0900 	subs.w	r9, r2, #0
d004424c:	b085      	sub	sp, #20
d004424e:	9c0e      	ldr	r4, [sp, #56]	; 0x38
d0044250:	f340 8212 	ble.w	d0044678 <buildLightingCLUT+0x434>
d0044254:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0044258:	4f24      	ldr	r7, [pc, #144]	; (d00442ec <buildLightingCLUT+0xa8>)
d004425a:	eb09 0c49 	add.w	ip, r9, r9, lsl #1
d004425e:	edd4 4a00 	vldr	s9, [r4]
d0044262:	ed94 5a01 	vldr	s10, [r4, #4]
d0044266:	eb09 0807 	add.w	r8, r9, r7
d004426a:	edd4 5a02 	vldr	s11, [r4, #8]
d004426e:	eb07 0e49 	add.w	lr, r7, r9, lsl #1
d0044272:	ed94 6a03 	vldr	s12, [r4, #12]
d0044276:	44bc      	add	ip, r7
d0044278:	edd4 6a04 	vldr	s13, [r4, #16]
d004427c:	eb07 0789 	add.w	r7, r7, r9, lsl #2
d0044280:	3904      	subs	r1, #4
d0044282:	ee77 4ae4 	vsub.f32	s9, s15, s9
d0044286:	ee37 5ac5 	vsub.f32	s10, s15, s10
d004428a:	ed9f 7a19 	vldr	s14, [pc, #100]	; d00442f0 <buildLightingCLUT+0xac>
d004428e:	ee77 5ae5 	vsub.f32	s11, s15, s11
d0044292:	f100 067c 	add.w	r6, r0, #124	; 0x7c
d0044296:	ee37 6ac6 	vsub.f32	s12, s15, s12
d004429a:	eb00 0888 	add.w	r8, r0, r8, lsl #2
d004429e:	ee77 6ae6 	vsub.f32	s13, s15, s13
d00442a2:	eb00 0e8e 	add.w	lr, r0, lr, lsl #2
d00442a6:	eb00 0c8c 	add.w	ip, r0, ip, lsl #2
d00442aa:	f3c3 4507 	ubfx	r5, r3, #16, #8
d00442ae:	eb00 0787 	add.w	r7, r0, r7, lsl #2
d00442b2:	f3c3 2007 	ubfx	r0, r3, #8, #8
d00442b6:	eb01 0989 	add.w	r9, r1, r9, lsl #2
d00442ba:	fec4 4a87 	vmaxnm.f32	s9, s9, s14
d00442be:	0e1c      	lsrs	r4, r3, #24
d00442c0:	fe85 5a07 	vmaxnm.f32	s10, s10, s14
d00442c4:	b2da      	uxtb	r2, r3
d00442c6:	fec5 5a87 	vmaxnm.f32	s11, s11, s14
d00442ca:	fe86 6a07 	vmaxnm.f32	s12, s12, s14
d00442ce:	fec6 6a87 	vmaxnm.f32	s13, s13, s14
d00442d2:	fec4 4ae7 	vminnm.f32	s9, s9, s15
d00442d6:	fe85 5a67 	vminnm.f32	s10, s10, s15
d00442da:	fec5 5ae7 	vminnm.f32	s11, s11, s15
d00442de:	fe86 6a67 	vminnm.f32	s12, s12, s15
d00442e2:	fec6 6ae7 	vminnm.f32	s13, s13, s15
d00442e6:	9601      	str	r6, [sp, #4]
d00442e8:	e004      	b.n	d00442f4 <buildLightingCLUT+0xb0>
d00442ea:	bf00      	nop
d00442ec:	4000001f 	.word	0x4000001f
d00442f0:	00000000 	.word	0x00000000
d00442f4:	f851 3f04 	ldr.w	r3, [r1, #4]!
d00442f8:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d00442fc:	0e1e      	lsrs	r6, r3, #24
d00442fe:	fa5f fa83 	uxtb.w	sl, r3
d0044302:	4549      	cmp	r1, r9
d0044304:	ee07 6a10 	vmov	s14, r6
d0044308:	eba5 060b 	sub.w	r6, r5, fp
d004430c:	ee04 ba10 	vmov	s8, fp
d0044310:	ee07 6a90 	vmov	s15, r6
d0044314:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0044318:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d004431c:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0044320:	ee02 6a10 	vmov	s4, r6
d0044324:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0044328:	eba2 060a 	sub.w	r6, r2, sl
d004432c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0044330:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0044334:	ee04 aa10 	vmov	s8, sl
d0044338:	ee02 6a90 	vmov	s5, r6
d004433c:	eba0 0603 	sub.w	r6, r0, r3
d0044340:	eee4 3aa7 	vfma.f32	s7, s9, s15
d0044344:	ee07 3a90 	vmov	s15, r3
d0044348:	eea4 7a82 	vfma.f32	s14, s9, s4
d004434c:	ee03 6a10 	vmov	s6, r6
d0044350:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0044354:	9e01      	ldr	r6, [sp, #4]
d0044356:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d004435a:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d004435e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0044362:	eea4 4aa2 	vfma.f32	s8, s9, s5
d0044366:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d004436a:	eee4 7a83 	vfma.f32	s15, s9, s6
d004436e:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0044372:	edcd 3a02 	vstr	s7, [sp, #8]
d0044376:	f89d a008 	ldrb.w	sl, [sp, #8]
d004437a:	ee17 3a10 	vmov	r3, s14
d004437e:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0044382:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0044386:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004438a:	ed8d 7a02 	vstr	s14, [sp, #8]
d004438e:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0044392:	f89d b008 	ldrb.w	fp, [sp, #8]
d0044396:	edcd 7a03 	vstr	s15, [sp, #12]
d004439a:	ea43 030b 	orr.w	r3, r3, fp
d004439e:	f89d a00c 	ldrb.w	sl, [sp, #12]
d00443a2:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d00443a6:	f846 3f04 	str.w	r3, [r6, #4]!
d00443aa:	680b      	ldr	r3, [r1, #0]
d00443ac:	9601      	str	r6, [sp, #4]
d00443ae:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d00443b2:	ea4f 6613 	mov.w	r6, r3, lsr #24
d00443b6:	fa5f fa83 	uxtb.w	sl, r3
d00443ba:	ee07 6a10 	vmov	s14, r6
d00443be:	eba5 060b 	sub.w	r6, r5, fp
d00443c2:	ee04 ba10 	vmov	s8, fp
d00443c6:	ee07 6a90 	vmov	s15, r6
d00443ca:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d00443ce:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d00443d2:	f3c3 2307 	ubfx	r3, r3, #8, #8
d00443d6:	ee02 6a10 	vmov	s4, r6
d00443da:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00443de:	eba2 060a 	sub.w	r6, r2, sl
d00443e2:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00443e6:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d00443ea:	ee04 aa10 	vmov	s8, sl
d00443ee:	ee02 6a90 	vmov	s5, r6
d00443f2:	eba0 0603 	sub.w	r6, r0, r3
d00443f6:	eee5 3a27 	vfma.f32	s7, s10, s15
d00443fa:	ee07 3a90 	vmov	s15, r3
d00443fe:	eea5 7a02 	vfma.f32	s14, s10, s4
d0044402:	ee03 6a10 	vmov	s6, r6
d0044406:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d004440a:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d004440e:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0044412:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0044416:	eea5 4a22 	vfma.f32	s8, s10, s5
d004441a:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d004441e:	eee5 7a03 	vfma.f32	s15, s10, s6
d0044422:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0044426:	edcd 3a02 	vstr	s7, [sp, #8]
d004442a:	f89d a008 	ldrb.w	sl, [sp, #8]
d004442e:	ee17 3a10 	vmov	r3, s14
d0044432:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0044436:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d004443a:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004443e:	ed8d 7a02 	vstr	s14, [sp, #8]
d0044442:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0044446:	f89d b008 	ldrb.w	fp, [sp, #8]
d004444a:	edcd 7a03 	vstr	s15, [sp, #12]
d004444e:	ea43 030b 	orr.w	r3, r3, fp
d0044452:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0044456:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d004445a:	f848 3f04 	str.w	r3, [r8, #4]!
d004445e:	680b      	ldr	r3, [r1, #0]
d0044460:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0044464:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0044468:	fa5f fa83 	uxtb.w	sl, r3
d004446c:	ee07 6a10 	vmov	s14, r6
d0044470:	eba5 060b 	sub.w	r6, r5, fp
d0044474:	ee04 ba10 	vmov	s8, fp
d0044478:	ee07 6a90 	vmov	s15, r6
d004447c:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0044480:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0044484:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0044488:	ee02 6a10 	vmov	s4, r6
d004448c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0044490:	eba2 060a 	sub.w	r6, r2, sl
d0044494:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0044498:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d004449c:	ee04 aa10 	vmov	s8, sl
d00444a0:	ee02 6a90 	vmov	s5, r6
d00444a4:	eba0 0603 	sub.w	r6, r0, r3
d00444a8:	eee5 3aa7 	vfma.f32	s7, s11, s15
d00444ac:	ee07 3a90 	vmov	s15, r3
d00444b0:	eea5 7a82 	vfma.f32	s14, s11, s4
d00444b4:	ee03 6a10 	vmov	s6, r6
d00444b8:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d00444bc:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00444c0:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d00444c4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00444c8:	eea5 4aa2 	vfma.f32	s8, s11, s5
d00444cc:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d00444d0:	eee5 7a83 	vfma.f32	s15, s11, s6
d00444d4:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00444d8:	edcd 3a02 	vstr	s7, [sp, #8]
d00444dc:	f89d a008 	ldrb.w	sl, [sp, #8]
d00444e0:	ee17 3a10 	vmov	r3, s14
d00444e4:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d00444e8:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d00444ec:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00444f0:	ed8d 7a02 	vstr	s14, [sp, #8]
d00444f4:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d00444f8:	f89d b008 	ldrb.w	fp, [sp, #8]
d00444fc:	edcd 7a03 	vstr	s15, [sp, #12]
d0044500:	ea43 030b 	orr.w	r3, r3, fp
d0044504:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0044508:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d004450c:	f84e 3f04 	str.w	r3, [lr, #4]!
d0044510:	680b      	ldr	r3, [r1, #0]
d0044512:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0044516:	ea4f 6613 	mov.w	r6, r3, lsr #24
d004451a:	fa5f fa83 	uxtb.w	sl, r3
d004451e:	ee07 6a10 	vmov	s14, r6
d0044522:	eba5 060b 	sub.w	r6, r5, fp
d0044526:	ee04 ba10 	vmov	s8, fp
d004452a:	ee07 6a90 	vmov	s15, r6
d004452e:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0044532:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0044536:	f3c3 2307 	ubfx	r3, r3, #8, #8
d004453a:	ee02 6a10 	vmov	s4, r6
d004453e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0044542:	eba2 060a 	sub.w	r6, r2, sl
d0044546:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004454a:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d004454e:	ee04 aa10 	vmov	s8, sl
d0044552:	ee02 6a90 	vmov	s5, r6
d0044556:	eba0 0603 	sub.w	r6, r0, r3
d004455a:	eee6 3a27 	vfma.f32	s7, s12, s15
d004455e:	ee07 3a90 	vmov	s15, r3
d0044562:	eea6 7a02 	vfma.f32	s14, s12, s4
d0044566:	ee03 6a10 	vmov	s6, r6
d004456a:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d004456e:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0044572:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0044576:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004457a:	eea6 4a22 	vfma.f32	s8, s12, s5
d004457e:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0044582:	eee6 7a03 	vfma.f32	s15, s12, s6
d0044586:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d004458a:	edcd 3a02 	vstr	s7, [sp, #8]
d004458e:	f89d a008 	ldrb.w	sl, [sp, #8]
d0044592:	ee17 3a10 	vmov	r3, s14
d0044596:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d004459a:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d004459e:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00445a2:	ed8d 7a02 	vstr	s14, [sp, #8]
d00445a6:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d00445aa:	f89d b008 	ldrb.w	fp, [sp, #8]
d00445ae:	edcd 7a03 	vstr	s15, [sp, #12]
d00445b2:	ea43 030b 	orr.w	r3, r3, fp
d00445b6:	f89d a00c 	ldrb.w	sl, [sp, #12]
d00445ba:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d00445be:	f84c 3f04 	str.w	r3, [ip, #4]!
d00445c2:	680b      	ldr	r3, [r1, #0]
d00445c4:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d00445c8:	ea4f 6613 	mov.w	r6, r3, lsr #24
d00445cc:	fa5f fa83 	uxtb.w	sl, r3
d00445d0:	ee07 6a10 	vmov	s14, r6
d00445d4:	eba5 060b 	sub.w	r6, r5, fp
d00445d8:	ee04 ba10 	vmov	s8, fp
d00445dc:	ee07 6a90 	vmov	s15, r6
d00445e0:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d00445e4:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d00445e8:	f3c3 2307 	ubfx	r3, r3, #8, #8
d00445ec:	ee02 6a10 	vmov	s4, r6
d00445f0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00445f4:	eba2 060a 	sub.w	r6, r2, sl
d00445f8:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00445fc:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0044600:	ee04 aa10 	vmov	s8, sl
d0044604:	ee02 6a90 	vmov	s5, r6
d0044608:	eba0 0603 	sub.w	r6, r0, r3
d004460c:	eee6 3aa7 	vfma.f32	s7, s13, s15
d0044610:	ee07 3a90 	vmov	s15, r3
d0044614:	eea6 7a82 	vfma.f32	s14, s13, s4
d0044618:	ee03 6a10 	vmov	s6, r6
d004461c:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0044620:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0044624:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0044628:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004462c:	eea6 4aa2 	vfma.f32	s8, s13, s5
d0044630:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0044634:	eee6 7a83 	vfma.f32	s15, s13, s6
d0044638:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d004463c:	edcd 3a02 	vstr	s7, [sp, #8]
d0044640:	f89d a008 	ldrb.w	sl, [sp, #8]
d0044644:	ee17 3a10 	vmov	r3, s14
d0044648:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d004464c:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0044650:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0044654:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0044658:	ed8d 7a02 	vstr	s14, [sp, #8]
d004465c:	f89d b008 	ldrb.w	fp, [sp, #8]
d0044660:	edcd 7a03 	vstr	s15, [sp, #12]
d0044664:	ea43 030b 	orr.w	r3, r3, fp
d0044668:	f89d a00c 	ldrb.w	sl, [sp, #12]
d004466c:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0044670:	f847 3f04 	str.w	r3, [r7, #4]!
d0044674:	f47f ae3e 	bne.w	d00442f4 <buildLightingCLUT+0xb0>
d0044678:	b005      	add	sp, #20
d004467a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004467e:	bf00      	nop

d0044680 <brightnessToShadeF>:
d0044680:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0044684:	eddf 7a09 	vldr	s15, [pc, #36]	; d00446ac <brightnessToShadeF+0x2c>
d0044688:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d004468c:	eef7 6a08 	vmov.f32	s13, #120	; 0x3fc00000  1.5
d0044690:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d0044694:	fec0 7a47 	vminnm.f32	s15, s0, s14
d0044698:	eeb1 0a04 	vmov.f32	s0, #20	; 0x40a00000  5.0
d004469c:	eee7 6ac6 	vfms.f32	s13, s15, s12
d00446a0:	eea6 7ae7 	vfms.f32	s14, s13, s15
d00446a4:	ee27 0a00 	vmul.f32	s0, s14, s0
d00446a8:	4770      	bx	lr
d00446aa:	bf00      	nop
d00446ac:	00000000 	.word	0x00000000

d00446b0 <lightSetRanges>:
d00446b0:	2800      	cmp	r0, #0
d00446b2:	db0c      	blt.n	d00446ce <lightSetRanges+0x1e>
d00446b4:	4b06      	ldr	r3, [pc, #24]	; (d00446d0 <lightSetRanges+0x20>)
d00446b6:	681b      	ldr	r3, [r3, #0]
d00446b8:	4283      	cmp	r3, r0
d00446ba:	dd08      	ble.n	d00446ce <lightSetRanges+0x1e>
d00446bc:	4b05      	ldr	r3, [pc, #20]	; (d00446d4 <lightSetRanges+0x24>)
d00446be:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d00446c2:	ed80 0a08 	vstr	s0, [r0, #32]
d00446c6:	edc0 0a09 	vstr	s1, [r0, #36]	; 0x24
d00446ca:	ed80 1a0a 	vstr	s2, [r0, #40]	; 0x28
d00446ce:	4770      	bx	lr
d00446d0:	d0095360 	.word	0xd0095360
d00446d4:	d0095380 	.word	0xd0095380

d00446d8 <lightsGet>:
d00446d8:	4800      	ldr	r0, [pc, #0]	; (d00446dc <lightsGet+0x4>)
d00446da:	4770      	bx	lr
d00446dc:	d0095380 	.word	0xd0095380

d00446e0 <lightsGetCount>:
d00446e0:	4b01      	ldr	r3, [pc, #4]	; (d00446e8 <lightsGetCount+0x8>)
d00446e2:	6818      	ldr	r0, [r3, #0]
d00446e4:	4770      	bx	lr
d00446e6:	bf00      	nop
d00446e8:	d0095360 	.word	0xd0095360

d00446ec <lightsClear>:
d00446ec:	4b01      	ldr	r3, [pc, #4]	; (d00446f4 <lightsClear+0x8>)
d00446ee:	2200      	movs	r2, #0
d00446f0:	601a      	str	r2, [r3, #0]
d00446f2:	4770      	bx	lr
d00446f4:	d0095360 	.word	0xd0095360

d00446f8 <lightEnable>:
d00446f8:	4b04      	ldr	r3, [pc, #16]	; (d004470c <lightEnable+0x14>)
d00446fa:	681b      	ldr	r3, [r3, #0]
d00446fc:	4298      	cmp	r0, r3
d00446fe:	da03      	bge.n	d0044708 <lightEnable+0x10>
d0044700:	4b03      	ldr	r3, [pc, #12]	; (d0044710 <lightEnable+0x18>)
d0044702:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d0044706:	62c1      	str	r1, [r0, #44]	; 0x2c
d0044708:	4770      	bx	lr
d004470a:	bf00      	nop
d004470c:	d0095360 	.word	0xd0095360
d0044710:	d0095380 	.word	0xd0095380

d0044714 <addPointLight>:
d0044714:	4918      	ldr	r1, [pc, #96]	; (d0044778 <addPointLight+0x64>)
d0044716:	b5f0      	push	{r4, r5, r6, r7, lr}
d0044718:	680c      	ldr	r4, [r1, #0]
d004471a:	b085      	sub	sp, #20
d004471c:	2c07      	cmp	r4, #7
d004471e:	ed8d 0a01 	vstr	s0, [sp, #4]
d0044722:	edcd 0a02 	vstr	s1, [sp, #8]
d0044726:	ed8d 1a03 	vstr	s2, [sp, #12]
d004472a:	dc21      	bgt.n	d0044770 <addPointLight+0x5c>
d004472c:	4d13      	ldr	r5, [pc, #76]	; (d004477c <addPointLight+0x68>)
d004472e:	01a2      	lsls	r2, r4, #6
d0044730:	2600      	movs	r6, #0
d0044732:	f8df e050 	ldr.w	lr, [pc, #80]	; d0044784 <addPointLight+0x70>
d0044736:	eb05 1384 	add.w	r3, r5, r4, lsl #6
d004473a:	f8df c04c 	ldr.w	ip, [pc, #76]	; d0044788 <addPointLight+0x74>
d004473e:	54ae      	strb	r6, [r5, r2]
d0044740:	2200      	movs	r2, #0
d0044742:	4f0f      	ldr	r7, [pc, #60]	; (d0044780 <addPointLight+0x6c>)
d0044744:	1d1d      	adds	r5, r3, #4
d0044746:	62d8      	str	r0, [r3, #44]	; 0x2c
d0044748:	1c66      	adds	r6, r4, #1
d004474a:	611a      	str	r2, [r3, #16]
d004474c:	615a      	str	r2, [r3, #20]
d004474e:	619a      	str	r2, [r3, #24]
d0044750:	edc3 1a07 	vstr	s3, [r3, #28]
d0044754:	f8c3 e020 	str.w	lr, [r3, #32]
d0044758:	f8c3 c024 	str.w	ip, [r3, #36]	; 0x24
d004475c:	629f      	str	r7, [r3, #40]	; 0x28
d004475e:	ab04      	add	r3, sp, #16
d0044760:	600e      	str	r6, [r1, #0]
d0044762:	e913 0007 	ldmdb	r3, {r0, r1, r2}
d0044766:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d004476a:	4620      	mov	r0, r4
d004476c:	b005      	add	sp, #20
d004476e:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0044770:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
d0044774:	e7f9      	b.n	d004476a <addPointLight+0x56>
d0044776:	bf00      	nop
d0044778:	d0095360 	.word	0xd0095360
d004477c:	d0095380 	.word	0xd0095380
d0044780:	44020000 	.word	0x44020000
d0044784:	42c80000 	.word	0x42c80000
d0044788:	43660000 	.word	0x43660000

d004478c <addDirectionalLight>:
d004478c:	b5f0      	push	{r4, r5, r6, r7, lr}
d004478e:	4f15      	ldr	r7, [pc, #84]	; (d00447e4 <addDirectionalLight+0x58>)
d0044790:	683d      	ldr	r5, [r7, #0]
d0044792:	2d07      	cmp	r5, #7
d0044794:	ed2d 8b02 	vpush	{d8}
d0044798:	b085      	sub	sp, #20
d004479a:	dc1f      	bgt.n	d00447dc <addDirectionalLight+0x50>
d004479c:	4912      	ldr	r1, [pc, #72]	; (d00447e8 <addDirectionalLight+0x5c>)
d004479e:	2300      	movs	r3, #0
d00447a0:	4606      	mov	r6, r0
d00447a2:	01aa      	lsls	r2, r5, #6
d00447a4:	eb01 1485 	add.w	r4, r1, r5, lsl #6
d00447a8:	2001      	movs	r0, #1
d00447aa:	eeb0 8a61 	vmov.f32	s16, s3
d00447ae:	6063      	str	r3, [r4, #4]
d00447b0:	60a3      	str	r3, [r4, #8]
d00447b2:	60e3      	str	r3, [r4, #12]
d00447b4:	5488      	strb	r0, [r1, r2]
d00447b6:	f7fe f94f 	bl	d0042a58 <vec3Normalize>
d00447ba:	683b      	ldr	r3, [r7, #0]
d00447bc:	ed84 8a07 	vstr	s16, [r4, #28]
d00447c0:	3301      	adds	r3, #1
d00447c2:	62e6      	str	r6, [r4, #44]	; 0x2c
d00447c4:	ed84 0a04 	vstr	s0, [r4, #16]
d00447c8:	edc4 0a05 	vstr	s1, [r4, #20]
d00447cc:	ed84 1a06 	vstr	s2, [r4, #24]
d00447d0:	603b      	str	r3, [r7, #0]
d00447d2:	4628      	mov	r0, r5
d00447d4:	b005      	add	sp, #20
d00447d6:	ecbd 8b02 	vpop	{d8}
d00447da:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00447dc:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00447e0:	e7f7      	b.n	d00447d2 <addDirectionalLight+0x46>
d00447e2:	bf00      	nop
d00447e4:	d0095360 	.word	0xd0095360
d00447e8:	d0095380 	.word	0xd0095380

d00447ec <lightSetPosition>:
d00447ec:	b084      	sub	sp, #16
d00447ee:	2800      	cmp	r0, #0
d00447f0:	ed8d 0a01 	vstr	s0, [sp, #4]
d00447f4:	edcd 0a02 	vstr	s1, [sp, #8]
d00447f8:	ed8d 1a03 	vstr	s2, [sp, #12]
d00447fc:	db0c      	blt.n	d0044818 <lightSetPosition+0x2c>
d00447fe:	4b07      	ldr	r3, [pc, #28]	; (d004481c <lightSetPosition+0x30>)
d0044800:	681b      	ldr	r3, [r3, #0]
d0044802:	4283      	cmp	r3, r0
d0044804:	dd08      	ble.n	d0044818 <lightSetPosition+0x2c>
d0044806:	4b06      	ldr	r3, [pc, #24]	; (d0044820 <lightSetPosition+0x34>)
d0044808:	aa04      	add	r2, sp, #16
d004480a:	eb03 1380 	add.w	r3, r3, r0, lsl #6
d004480e:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0044812:	3304      	adds	r3, #4
d0044814:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0044818:	b004      	add	sp, #16
d004481a:	4770      	bx	lr
d004481c:	d0095360 	.word	0xd0095360
d0044820:	d0095380 	.word	0xd0095380

d0044824 <lightSetIntensity>:
d0044824:	2800      	cmp	r0, #0
d0044826:	db08      	blt.n	d004483a <lightSetIntensity+0x16>
d0044828:	4b04      	ldr	r3, [pc, #16]	; (d004483c <lightSetIntensity+0x18>)
d004482a:	681b      	ldr	r3, [r3, #0]
d004482c:	4283      	cmp	r3, r0
d004482e:	dd04      	ble.n	d004483a <lightSetIntensity+0x16>
d0044830:	4b03      	ldr	r3, [pc, #12]	; (d0044840 <lightSetIntensity+0x1c>)
d0044832:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d0044836:	ed80 0a07 	vstr	s0, [r0, #28]
d004483a:	4770      	bx	lr
d004483c:	d0095360 	.word	0xd0095360
d0044840:	d0095380 	.word	0xd0095380

d0044844 <setDefaultRenderMode>:
d0044844:	2300      	movs	r3, #0
d0044846:	4803      	ldr	r0, [pc, #12]	; (d0044854 <setDefaultRenderMode+0x10>)
d0044848:	4903      	ldr	r1, [pc, #12]	; (d0044858 <setDefaultRenderMode+0x14>)
d004484a:	4a04      	ldr	r2, [pc, #16]	; (d004485c <setDefaultRenderMode+0x18>)
d004484c:	6003      	str	r3, [r0, #0]
d004484e:	600b      	str	r3, [r1, #0]
d0044850:	6013      	str	r3, [r2, #0]
d0044852:	4770      	bx	lr
d0044854:	d00a1580 	.word	0xd00a1580
d0044858:	d01215a0 	.word	0xd01215a0
d004485c:	d01215a4 	.word	0xd01215a4

d0044860 <enableFlatMode>:
d0044860:	4b01      	ldr	r3, [pc, #4]	; (d0044868 <enableFlatMode+0x8>)
d0044862:	6018      	str	r0, [r3, #0]
d0044864:	4770      	bx	lr
d0044866:	bf00      	nop
d0044868:	d00a1580 	.word	0xd00a1580

d004486c <clipTriangleToFrustum>:
d004486c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0044870:	ed2d 8b02 	vpush	{d8}
d0044874:	b0ba      	sub	sp, #232	; 0xe8
d0044876:	ed91 7a10 	vldr	s14, [r1, #64]	; 0x40
d004487a:	4605      	mov	r5, r0
d004487c:	aa07      	add	r2, sp, #28
d004487e:	ab04      	add	r3, sp, #16
d0044880:	ed8d 0a07 	vstr	s0, [sp, #28]
d0044884:	ac0a      	add	r4, sp, #40	; 0x28
d0044886:	edcd 0a08 	vstr	s1, [sp, #32]
d004488a:	af0d      	add	r7, sp, #52	; 0x34
d004488c:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d0044890:	ae01      	add	r6, sp, #4
d0044892:	edcd 1a04 	vstr	s3, [sp, #16]
d0044896:	ed8d 2a05 	vstr	s4, [sp, #20]
d004489a:	edcd 2a06 	vstr	s5, [sp, #24]
d004489e:	ed8d 4a03 	vstr	s8, [sp, #12]
d00448a2:	ed8d 3a01 	vstr	s6, [sp, #4]
d00448a6:	edcd 3a02 	vstr	s7, [sp, #8]
d00448aa:	ca07      	ldmia	r2, {r0, r1, r2}
d00448ac:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d00448b0:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d00448b4:	ab10      	add	r3, sp, #64	; 0x40
d00448b6:	ed9d 6a0a 	vldr	s12, [sp, #40]	; 0x28
d00448ba:	e887 0007 	stmia.w	r7, {r0, r1, r2}
d00448be:	e896 0007 	ldmia.w	r6, {r0, r1, r2}
d00448c2:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d00448c6:	ed9d 4a12 	vldr	s8, [sp, #72]	; 0x48
d00448ca:	eddd 5a10 	vldr	s11, [sp, #64]	; 0x40
d00448ce:	ee34 5a47 	vsub.f32	s10, s8, s14
d00448d2:	eddd 7a0c 	vldr	s15, [sp, #48]	; 0x30
d00448d6:	eddd 1a11 	vldr	s3, [sp, #68]	; 0x44
d00448da:	ee77 4ac7 	vsub.f32	s9, s15, s14
d00448de:	eddd 6a0b 	vldr	s13, [sp, #44]	; 0x2c
d00448e2:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d00448e6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00448ea:	eef5 4ac0 	vcmpe.f32	s9, #0.0
d00448ee:	bfac      	ite	ge
d00448f0:	2101      	movge	r1, #1
d00448f2:	2100      	movlt	r1, #0
d00448f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00448f8:	bfac      	ite	ge
d00448fa:	2001      	movge	r0, #1
d00448fc:	2000      	movlt	r0, #0
d00448fe:	2900      	cmp	r1, #0
d0044900:	f000 825d 	beq.w	d0044dbe <clipTriangleToFrustum+0x552>
d0044904:	2800      	cmp	r0, #0
d0044906:	f000 825a 	beq.w	d0044dbe <clipTriangleToFrustum+0x552>
d004490a:	2301      	movs	r3, #1
d004490c:	ed8d 6a22 	vstr	s12, [sp, #136]	; 0x88
d0044910:	edcd 6a23 	vstr	s13, [sp, #140]	; 0x8c
d0044914:	edcd 7a24 	vstr	s15, [sp, #144]	; 0x90
d0044918:	eddd 3a0f 	vldr	s7, [sp, #60]	; 0x3c
d004491c:	f000 0201 	and.w	r2, r0, #1
d0044920:	ed9d 2a0d 	vldr	s4, [sp, #52]	; 0x34
d0044924:	ee33 3ac7 	vsub.f32	s6, s7, s14
d0044928:	eddd 2a0e 	vldr	s5, [sp, #56]	; 0x38
d004492c:	eeb5 3ac0 	vcmpe.f32	s6, #0.0
d0044930:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044934:	bfb6      	itet	lt
d0044936:	2200      	movlt	r2, #0
d0044938:	2601      	movge	r6, #1
d004493a:	2600      	movlt	r6, #0
d004493c:	2a00      	cmp	r2, #0
d004493e:	f000 8277 	beq.w	d0044e30 <clipTriangleToFrustum+0x5c4>
d0044942:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0044946:	ae22      	add	r6, sp, #136	; 0x88
d0044948:	3301      	adds	r3, #1
d004494a:	eb06 0080 	add.w	r0, r6, r0, lsl #2
d004494e:	ed80 2a00 	vstr	s4, [r0]
d0044952:	edc0 2a01 	vstr	s5, [r0, #4]
d0044956:	edc0 3a02 	vstr	s7, [r0, #8]
d004495a:	2a00      	cmp	r2, #0
d004495c:	f000 828e 	beq.w	d0044e7c <clipTriangleToFrustum+0x610>
d0044960:	2900      	cmp	r1, #0
d0044962:	f000 828b 	beq.w	d0044e7c <clipTriangleToFrustum+0x610>
d0044966:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d004496a:	a922      	add	r1, sp, #136	; 0x88
d004496c:	3301      	adds	r3, #1
d004496e:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d0044972:	edc2 5a00 	vstr	s11, [r2]
d0044976:	edc2 1a01 	vstr	s3, [r2, #4]
d004497a:	ed82 4a02 	vstr	s8, [r2, #8]
d004497e:	2b02      	cmp	r3, #2
d0044980:	f340 8216 	ble.w	d0044db0 <clipTriangleToFrustum+0x544>
d0044984:	eb03 0643 	add.w	r6, r3, r3, lsl #1
d0044988:	a822      	add	r0, sp, #136	; 0x88
d004498a:	2300      	movs	r3, #0
d004498c:	00b6      	lsls	r6, r6, #2
d004498e:	4601      	mov	r1, r0
d0044990:	4607      	mov	r7, r0
d0044992:	f1a6 020c 	sub.w	r2, r6, #12
d0044996:	4406      	add	r6, r0
d0044998:	4402      	add	r2, r0
d004499a:	ed92 7a00 	vldr	s14, [r2]
d004499e:	edd2 7a02 	vldr	s15, [r2, #8]
d00449a2:	ed92 6a01 	vldr	s12, [r2, #4]
d00449a6:	ee77 6a27 	vadd.f32	s13, s14, s15
d00449aa:	e009      	b.n	d00449c0 <clipTriangleToFrustum+0x154>
d00449ac:	3301      	adds	r3, #1
d00449ae:	ed82 7a00 	vstr	s14, [r2]
d00449b2:	ed82 6a01 	vstr	s12, [r2, #4]
d00449b6:	edc2 7a02 	vstr	s15, [r2, #8]
d00449ba:	310c      	adds	r1, #12
d00449bc:	428e      	cmp	r6, r1
d00449be:	d04e      	beq.n	d0044a5e <clipTriangleToFrustum+0x1f2>
d00449c0:	eeb0 4a47 	vmov.f32	s8, s14
d00449c4:	ed91 7a00 	vldr	s14, [r1]
d00449c8:	eeb0 5a67 	vmov.f32	s10, s15
d00449cc:	edd1 7a02 	vldr	s15, [r1, #8]
d00449d0:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00449d4:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d00449d8:	eef0 5a66 	vmov.f32	s11, s13
d00449dc:	ee77 6a27 	vadd.f32	s13, s14, s15
d00449e0:	eb04 0282 	add.w	r2, r4, r2, lsl #2
d00449e4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00449e8:	eef0 4a46 	vmov.f32	s9, s12
d00449ec:	ed91 6a01 	vldr	s12, [r1, #4]
d00449f0:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00449f4:	bfac      	ite	ge
d00449f6:	2701      	movge	r7, #1
d00449f8:	2700      	movlt	r7, #0
d00449fa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00449fe:	bfac      	ite	ge
d0044a00:	f04f 0c01 	movge.w	ip, #1
d0044a04:	f04f 0c00 	movlt.w	ip, #0
d0044a08:	b117      	cbz	r7, d0044a10 <clipTriangleToFrustum+0x1a4>
d0044a0a:	f1bc 0f00 	cmp.w	ip, #0
d0044a0e:	d1cd      	bne.n	d00449ac <clipTriangleToFrustum+0x140>
d0044a10:	eef5 6a40 	vcmp.f32	s13, #0.0
d0044a14:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0044a18:	ee75 1ae6 	vsub.f32	s3, s11, s13
d0044a1c:	ee37 2a44 	vsub.f32	s4, s14, s8
d0044a20:	eb04 0282 	add.w	r2, r4, r2, lsl #2
d0044a24:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044a28:	ee76 2a64 	vsub.f32	s5, s12, s9
d0044a2c:	ee37 3ac5 	vsub.f32	s6, s15, s10
d0044a30:	f140 818f 	bpl.w	d0044d52 <clipTriangleToFrustum+0x4e6>
d0044a34:	2f00      	cmp	r7, #0
d0044a36:	f000 818c 	beq.w	d0044d52 <clipTriangleToFrustum+0x4e6>
d0044a3a:	eec5 3aa1 	vdiv.f32	s7, s11, s3
d0044a3e:	310c      	adds	r1, #12
d0044a40:	3301      	adds	r3, #1
d0044a42:	428e      	cmp	r6, r1
d0044a44:	eea2 4a23 	vfma.f32	s8, s4, s7
d0044a48:	eee2 4aa3 	vfma.f32	s9, s5, s7
d0044a4c:	eea3 5a23 	vfma.f32	s10, s6, s7
d0044a50:	ed82 4a00 	vstr	s8, [r2]
d0044a54:	edc2 4a01 	vstr	s9, [r2, #4]
d0044a58:	ed82 5a02 	vstr	s10, [r2, #8]
d0044a5c:	d1b0      	bne.n	d00449c0 <clipTriangleToFrustum+0x154>
d0044a5e:	2b02      	cmp	r3, #2
d0044a60:	f340 81a6 	ble.w	d0044db0 <clipTriangleToFrustum+0x544>
d0044a64:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0044a68:	4626      	mov	r6, r4
d0044a6a:	4627      	mov	r7, r4
d0044a6c:	2200      	movs	r2, #0
d0044a6e:	009b      	lsls	r3, r3, #2
d0044a70:	f1a3 010c 	sub.w	r1, r3, #12
d0044a74:	4423      	add	r3, r4
d0044a76:	4421      	add	r1, r4
d0044a78:	edd1 7a00 	vldr	s15, [r1]
d0044a7c:	ed91 7a02 	vldr	s14, [r1, #8]
d0044a80:	ed91 6a01 	vldr	s12, [r1, #4]
d0044a84:	ee77 6a67 	vsub.f32	s13, s14, s15
d0044a88:	e009      	b.n	d0044a9e <clipTriangleToFrustum+0x232>
d0044a8a:	3201      	adds	r2, #1
d0044a8c:	edc1 7a00 	vstr	s15, [r1]
d0044a90:	ed81 6a01 	vstr	s12, [r1, #4]
d0044a94:	ed81 7a02 	vstr	s14, [r1, #8]
d0044a98:	370c      	adds	r7, #12
d0044a9a:	42bb      	cmp	r3, r7
d0044a9c:	d059      	beq.n	d0044b52 <clipTriangleToFrustum+0x2e6>
d0044a9e:	eeb0 4a67 	vmov.f32	s8, s15
d0044aa2:	edd7 7a00 	vldr	s15, [r7]
d0044aa6:	eeb0 5a47 	vmov.f32	s10, s14
d0044aaa:	ed97 7a02 	vldr	s14, [r7, #8]
d0044aae:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0044ab2:	f10d 0c88 	add.w	ip, sp, #136	; 0x88
d0044ab6:	eef0 5a66 	vmov.f32	s11, s13
d0044aba:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0044abe:	ee77 6a67 	vsub.f32	s13, s14, s15
d0044ac2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044ac6:	eb0c 0181 	add.w	r1, ip, r1, lsl #2
d0044aca:	eef0 4a46 	vmov.f32	s9, s12
d0044ace:	ed97 6a01 	vldr	s12, [r7, #4]
d0044ad2:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0044ad6:	bfac      	ite	ge
d0044ad8:	f04f 0c01 	movge.w	ip, #1
d0044adc:	f04f 0c00 	movlt.w	ip, #0
d0044ae0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044ae4:	bfac      	ite	ge
d0044ae6:	f04f 0e01 	movge.w	lr, #1
d0044aea:	f04f 0e00 	movlt.w	lr, #0
d0044aee:	f1bc 0f00 	cmp.w	ip, #0
d0044af2:	d002      	beq.n	d0044afa <clipTriangleToFrustum+0x28e>
d0044af4:	f1be 0f00 	cmp.w	lr, #0
d0044af8:	d1c7      	bne.n	d0044a8a <clipTriangleToFrustum+0x21e>
d0044afa:	eef5 6a40 	vcmp.f32	s13, #0.0
d0044afe:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0044b02:	ee77 3aa5 	vadd.f32	s7, s15, s11
d0044b06:	f10d 0888 	add.w	r8, sp, #136	; 0x88
d0044b0a:	ee77 1ac4 	vsub.f32	s3, s15, s8
d0044b0e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044b12:	eb08 0181 	add.w	r1, r8, r1, lsl #2
d0044b16:	ee36 2a64 	vsub.f32	s4, s12, s9
d0044b1a:	ee73 3ac7 	vsub.f32	s7, s7, s14
d0044b1e:	ee77 2a45 	vsub.f32	s5, s14, s10
d0044b22:	f140 8268 	bpl.w	d0044ff6 <clipTriangleToFrustum+0x78a>
d0044b26:	f1bc 0f00 	cmp.w	ip, #0
d0044b2a:	f000 8264 	beq.w	d0044ff6 <clipTriangleToFrustum+0x78a>
d0044b2e:	ee85 3aa3 	vdiv.f32	s6, s11, s7
d0044b32:	370c      	adds	r7, #12
d0044b34:	3201      	adds	r2, #1
d0044b36:	42bb      	cmp	r3, r7
d0044b38:	eea1 4a83 	vfma.f32	s8, s3, s6
d0044b3c:	eee2 4a03 	vfma.f32	s9, s4, s6
d0044b40:	eea2 5a83 	vfma.f32	s10, s5, s6
d0044b44:	ed81 4a00 	vstr	s8, [r1]
d0044b48:	edc1 4a01 	vstr	s9, [r1, #4]
d0044b4c:	ed81 5a02 	vstr	s10, [r1, #8]
d0044b50:	d1a5      	bne.n	d0044a9e <clipTriangleToFrustum+0x232>
d0044b52:	2a02      	cmp	r2, #2
d0044b54:	f340 812c 	ble.w	d0044db0 <clipTriangleToFrustum+0x544>
d0044b58:	eb02 0342 	add.w	r3, r2, r2, lsl #1
d0044b5c:	af22      	add	r7, sp, #136	; 0x88
d0044b5e:	eddf 6add 	vldr	s13, [pc, #884]	; d0044ed4 <clipTriangleToFrustum+0x668>
d0044b62:	2200      	movs	r2, #0
d0044b64:	009b      	lsls	r3, r3, #2
d0044b66:	eef0 2a66 	vmov.f32	s5, s13
d0044b6a:	f1a3 010c 	sub.w	r1, r3, #12
d0044b6e:	443b      	add	r3, r7
d0044b70:	4439      	add	r1, r7
d0044b72:	edd1 7a01 	vldr	s15, [r1, #4]
d0044b76:	ed91 7a02 	vldr	s14, [r1, #8]
d0044b7a:	eef0 5a67 	vmov.f32	s11, s15
d0044b7e:	ed91 6a00 	vldr	s12, [r1]
d0044b82:	eed7 5a26 	vfnms.f32	s11, s14, s13
d0044b86:	eef0 6a65 	vmov.f32	s13, s11
d0044b8a:	e00c      	b.n	d0044ba6 <clipTriangleToFrustum+0x33a>
d0044b8c:	f1bc 0f00 	cmp.w	ip, #0
d0044b90:	d031      	beq.n	d0044bf6 <clipTriangleToFrustum+0x38a>
d0044b92:	3201      	adds	r2, #1
d0044b94:	ed81 6a00 	vstr	s12, [r1]
d0044b98:	edc1 7a01 	vstr	s15, [r1, #4]
d0044b9c:	ed81 7a02 	vstr	s14, [r1, #8]
d0044ba0:	300c      	adds	r0, #12
d0044ba2:	4298      	cmp	r0, r3
d0044ba4:	d050      	beq.n	d0044c48 <clipTriangleToFrustum+0x3dc>
d0044ba6:	eeb0 5a47 	vmov.f32	s10, s14
d0044baa:	ed90 7a02 	vldr	s14, [r0, #8]
d0044bae:	eef0 4a67 	vmov.f32	s9, s15
d0044bb2:	edd0 7a01 	vldr	s15, [r0, #4]
d0044bb6:	ee67 3a22 	vmul.f32	s7, s14, s5
d0044bba:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0044bbe:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0044bc2:	eef0 5a66 	vmov.f32	s11, s13
d0044bc6:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d0044bca:	ee73 6ae7 	vsub.f32	s13, s7, s15
d0044bce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044bd2:	eeb0 4a46 	vmov.f32	s8, s12
d0044bd6:	ed90 6a00 	vldr	s12, [r0]
d0044bda:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0044bde:	bfac      	ite	ge
d0044be0:	2701      	movge	r7, #1
d0044be2:	2700      	movlt	r7, #0
d0044be4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044be8:	bfac      	ite	ge
d0044bea:	f04f 0c01 	movge.w	ip, #1
d0044bee:	f04f 0c00 	movlt.w	ip, #0
d0044bf2:	2f00      	cmp	r7, #0
d0044bf4:	d1ca      	bne.n	d0044b8c <clipTriangleToFrustum+0x320>
d0044bf6:	eef5 6a40 	vcmp.f32	s13, #0.0
d0044bfa:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0044bfe:	ee37 3aa5 	vadd.f32	s6, s15, s11
d0044c02:	ee36 1a44 	vsub.f32	s2, s12, s8
d0044c06:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d0044c0a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044c0e:	ee77 1ae4 	vsub.f32	s3, s15, s9
d0044c12:	ee33 3a63 	vsub.f32	s6, s6, s7
d0044c16:	ee37 2a45 	vsub.f32	s4, s14, s10
d0044c1a:	f140 821f 	bpl.w	d004505c <clipTriangleToFrustum+0x7f0>
d0044c1e:	2f00      	cmp	r7, #0
d0044c20:	f000 821c 	beq.w	d004505c <clipTriangleToFrustum+0x7f0>
d0044c24:	eec5 3a83 	vdiv.f32	s7, s11, s6
d0044c28:	300c      	adds	r0, #12
d0044c2a:	3201      	adds	r2, #1
d0044c2c:	4298      	cmp	r0, r3
d0044c2e:	eea1 4a23 	vfma.f32	s8, s2, s7
d0044c32:	eee1 4aa3 	vfma.f32	s9, s3, s7
d0044c36:	eea2 5a23 	vfma.f32	s10, s4, s7
d0044c3a:	ed81 4a00 	vstr	s8, [r1]
d0044c3e:	edc1 4a01 	vstr	s9, [r1, #4]
d0044c42:	ed81 5a02 	vstr	s10, [r1, #8]
d0044c46:	d1ae      	bne.n	d0044ba6 <clipTriangleToFrustum+0x33a>
d0044c48:	2a02      	cmp	r2, #2
d0044c4a:	f340 80b1 	ble.w	d0044db0 <clipTriangleToFrustum+0x544>
d0044c4e:	eb02 0342 	add.w	r3, r2, r2, lsl #1
d0044c52:	eddf 6aa0 	vldr	s13, [pc, #640]	; d0044ed4 <clipTriangleToFrustum+0x668>
d0044c56:	2700      	movs	r7, #0
d0044c58:	009b      	lsls	r3, r3, #2
d0044c5a:	eef0 3a66 	vmov.f32	s7, s13
d0044c5e:	f1a3 020c 	sub.w	r2, r3, #12
d0044c62:	4423      	add	r3, r4
d0044c64:	4414      	add	r4, r2
d0044c66:	edd4 7a01 	vldr	s15, [r4, #4]
d0044c6a:	ed94 7a02 	vldr	s14, [r4, #8]
d0044c6e:	eef0 5a67 	vmov.f32	s11, s15
d0044c72:	ed94 6a00 	vldr	s12, [r4]
d0044c76:	eee7 5a26 	vfma.f32	s11, s14, s13
d0044c7a:	eef0 6a65 	vmov.f32	s13, s11
d0044c7e:	e00a      	b.n	d0044c96 <clipTriangleToFrustum+0x42a>
d0044c80:	b380      	cbz	r0, d0044ce4 <clipTriangleToFrustum+0x478>
d0044c82:	3701      	adds	r7, #1
d0044c84:	ed82 6a00 	vstr	s12, [r2]
d0044c88:	edc2 7a01 	vstr	s15, [r2, #4]
d0044c8c:	ed82 7a02 	vstr	s14, [r2, #8]
d0044c90:	360c      	adds	r6, #12
d0044c92:	429e      	cmp	r6, r3
d0044c94:	d04e      	beq.n	d0044d34 <clipTriangleToFrustum+0x4c8>
d0044c96:	eef0 4a67 	vmov.f32	s9, s15
d0044c9a:	edd6 7a01 	vldr	s15, [r6, #4]
d0044c9e:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0044ca2:	a922      	add	r1, sp, #136	; 0x88
d0044ca4:	eef0 5a66 	vmov.f32	s11, s13
d0044ca8:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d0044cac:	eef0 6a67 	vmov.f32	s13, s15
d0044cb0:	eeb0 5a47 	vmov.f32	s10, s14
d0044cb4:	ed96 7a02 	vldr	s14, [r6, #8]
d0044cb8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044cbc:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d0044cc0:	eee7 6a23 	vfma.f32	s13, s14, s7
d0044cc4:	eeb0 4a46 	vmov.f32	s8, s12
d0044cc8:	ed96 6a00 	vldr	s12, [r6]
d0044ccc:	bfac      	ite	ge
d0044cce:	2101      	movge	r1, #1
d0044cd0:	2100      	movlt	r1, #0
d0044cd2:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0044cd6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044cda:	bfac      	ite	ge
d0044cdc:	2001      	movge	r0, #1
d0044cde:	2000      	movlt	r0, #0
d0044ce0:	2900      	cmp	r1, #0
d0044ce2:	d1cd      	bne.n	d0044c80 <clipTriangleToFrustum+0x414>
d0044ce4:	eef5 6a40 	vcmp.f32	s13, #0.0
d0044ce8:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d0044cec:	ac22      	add	r4, sp, #136	; 0x88
d0044cee:	ee35 1ae6 	vsub.f32	s2, s11, s13
d0044cf2:	ee76 1a44 	vsub.f32	s3, s12, s8
d0044cf6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044cfa:	eb04 0282 	add.w	r2, r4, r2, lsl #2
d0044cfe:	ee37 2ae4 	vsub.f32	s4, s15, s9
d0044d02:	ee77 2a45 	vsub.f32	s5, s14, s10
d0044d06:	f140 81de 	bpl.w	d00450c6 <clipTriangleToFrustum+0x85a>
d0044d0a:	2900      	cmp	r1, #0
d0044d0c:	f000 81db 	beq.w	d00450c6 <clipTriangleToFrustum+0x85a>
d0044d10:	ee85 3a81 	vdiv.f32	s6, s11, s2
d0044d14:	360c      	adds	r6, #12
d0044d16:	3701      	adds	r7, #1
d0044d18:	429e      	cmp	r6, r3
d0044d1a:	eea1 4a83 	vfma.f32	s8, s3, s6
d0044d1e:	eee2 4a03 	vfma.f32	s9, s4, s6
d0044d22:	eea2 5a83 	vfma.f32	s10, s5, s6
d0044d26:	ed82 4a00 	vstr	s8, [r2]
d0044d2a:	edc2 4a01 	vstr	s9, [r2, #4]
d0044d2e:	ed82 5a02 	vstr	s10, [r2, #8]
d0044d32:	d1b0      	bne.n	d0044c96 <clipTriangleToFrustum+0x42a>
d0044d34:	2f02      	cmp	r7, #2
d0044d36:	dd3b      	ble.n	d0044db0 <clipTriangleToFrustum+0x544>
d0044d38:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d0044d3c:	a922      	add	r1, sp, #136	; 0x88
d0044d3e:	4628      	mov	r0, r5
d0044d40:	0092      	lsls	r2, r2, #2
d0044d42:	f001 ff81 	bl	d0046c48 <memcpy>
d0044d46:	4638      	mov	r0, r7
d0044d48:	b03a      	add	sp, #232	; 0xe8
d0044d4a:	ecbd 8b02 	vpop	{d8}
d0044d4e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0044d52:	eef5 5a40 	vcmp.f32	s11, #0.0
d0044d56:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0044d5a:	ee75 1ae6 	vsub.f32	s3, s11, s13
d0044d5e:	eb04 0782 	add.w	r7, r4, r2, lsl #2
d0044d62:	ee37 2a44 	vsub.f32	s4, s14, s8
d0044d66:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044d6a:	463a      	mov	r2, r7
d0044d6c:	ee76 2a64 	vsub.f32	s5, s12, s9
d0044d70:	ee37 3ac5 	vsub.f32	s6, s15, s10
d0044d74:	f107 070c 	add.w	r7, r7, #12
d0044d78:	f57f ae1f 	bpl.w	d00449ba <clipTriangleToFrustum+0x14e>
d0044d7c:	f1bc 0f00 	cmp.w	ip, #0
d0044d80:	f43f ae1b 	beq.w	d00449ba <clipTriangleToFrustum+0x14e>
d0044d84:	eec5 3aa1 	vdiv.f32	s7, s11, s3
d0044d88:	3302      	adds	r3, #2
d0044d8a:	eea2 4a23 	vfma.f32	s8, s4, s7
d0044d8e:	eee2 4aa3 	vfma.f32	s9, s5, s7
d0044d92:	eea3 5a23 	vfma.f32	s10, s6, s7
d0044d96:	ed82 4a00 	vstr	s8, [r2]
d0044d9a:	edc2 4a01 	vstr	s9, [r2, #4]
d0044d9e:	ed82 5a02 	vstr	s10, [r2, #8]
d0044da2:	ed87 7a00 	vstr	s14, [r7]
d0044da6:	ed87 6a01 	vstr	s12, [r7, #4]
d0044daa:	edc7 7a02 	vstr	s15, [r7, #8]
d0044dae:	e604      	b.n	d00449ba <clipTriangleToFrustum+0x14e>
d0044db0:	2700      	movs	r7, #0
d0044db2:	4638      	mov	r0, r7
d0044db4:	b03a      	add	sp, #232	; 0xe8
d0044db6:	ecbd 8b02 	vpop	{d8}
d0044dba:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0044dbe:	eef5 4a40 	vcmp.f32	s9, #0.0
d0044dc2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044dc6:	f140 80b7 	bpl.w	d0044f38 <clipTriangleToFrustum+0x6cc>
d0044dca:	2900      	cmp	r1, #0
d0044dcc:	f000 80b4 	beq.w	d0044f38 <clipTriangleToFrustum+0x6cc>
d0044dd0:	ee74 0a67 	vsub.f32	s1, s8, s15
d0044dd4:	eddd 3a0f 	vldr	s7, [sp, #60]	; 0x3c
d0044dd8:	ee36 8a65 	vsub.f32	s16, s12, s11
d0044ddc:	2301      	movs	r3, #1
d0044dde:	eef0 8a65 	vmov.f32	s17, s11
d0044de2:	ed9d 2a0d 	vldr	s4, [sp, #52]	; 0x34
d0044de6:	ee85 1a20 	vdiv.f32	s2, s10, s1
d0044dea:	eddd 2a0e 	vldr	s5, [sp, #56]	; 0x38
d0044dee:	ee36 0ae1 	vsub.f32	s0, s13, s3
d0044df2:	ee33 3ac7 	vsub.f32	s6, s7, s14
d0044df6:	ee77 0ac4 	vsub.f32	s1, s15, s8
d0044dfa:	eeb5 3ac0 	vcmpe.f32	s6, #0.0
d0044dfe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e02:	bfac      	ite	ge
d0044e04:	461e      	movge	r6, r3
d0044e06:	2600      	movlt	r6, #0
d0044e08:	eee1 8a08 	vfma.f32	s17, s2, s16
d0044e0c:	eeb0 8a68 	vmov.f32	s16, s17
d0044e10:	eef0 8a61 	vmov.f32	s17, s3
d0044e14:	ed8d 8a22 	vstr	s16, [sp, #136]	; 0x88
d0044e18:	eee1 8a00 	vfma.f32	s17, s2, s0
d0044e1c:	eeb0 0a68 	vmov.f32	s0, s17
d0044e20:	eef0 8a44 	vmov.f32	s17, s8
d0044e24:	ed8d 0a23 	vstr	s0, [sp, #140]	; 0x8c
d0044e28:	eee0 8a81 	vfma.f32	s17, s1, s2
d0044e2c:	edcd 8a24 	vstr	s17, [sp, #144]	; 0x90
d0044e30:	eeb5 3a40 	vcmp.f32	s6, #0.0
d0044e34:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e38:	f140 80af 	bpl.w	d0044f9a <clipTriangleToFrustum+0x72e>
d0044e3c:	2800      	cmp	r0, #0
d0044e3e:	f000 80ac 	beq.w	d0044f9a <clipTriangleToFrustum+0x72e>
d0044e42:	ee37 8ae3 	vsub.f32	s16, s15, s7
d0044e46:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0044e4a:	ee32 0a46 	vsub.f32	s0, s4, s12
d0044e4e:	4632      	mov	r2, r6
d0044e50:	ee72 0ae6 	vsub.f32	s1, s5, s13
d0044e54:	ae22      	add	r6, sp, #136	; 0x88
d0044e56:	ee84 1a88 	vdiv.f32	s2, s9, s16
d0044e5a:	3301      	adds	r3, #1
d0044e5c:	eb06 0080 	add.w	r0, r6, r0, lsl #2
d0044e60:	ee73 4ae7 	vsub.f32	s9, s7, s15
d0044e64:	eea0 6a01 	vfma.f32	s12, s0, s2
d0044e68:	eee0 6a81 	vfma.f32	s13, s1, s2
d0044e6c:	eee4 7a81 	vfma.f32	s15, s9, s2
d0044e70:	ed80 6a00 	vstr	s12, [r0]
d0044e74:	edc0 6a01 	vstr	s13, [r0, #4]
d0044e78:	edc0 7a02 	vstr	s15, [r0, #8]
d0044e7c:	eeb5 5a40 	vcmp.f32	s10, #0.0
d0044e80:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e84:	d528      	bpl.n	d0044ed8 <clipTriangleToFrustum+0x66c>
d0044e86:	b33a      	cbz	r2, d0044ed8 <clipTriangleToFrustum+0x66c>
d0044e88:	ee37 5a44 	vsub.f32	s10, s14, s8
d0044e8c:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0044e90:	ee75 5ac2 	vsub.f32	s11, s11, s4
d0044e94:	a922      	add	r1, sp, #136	; 0x88
d0044e96:	ee71 1ae2 	vsub.f32	s3, s3, s5
d0044e9a:	3301      	adds	r3, #1
d0044e9c:	ee35 5a03 	vadd.f32	s10, s10, s6
d0044ea0:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d0044ea4:	ee34 4a63 	vsub.f32	s8, s8, s7
d0044ea8:	eef0 6a42 	vmov.f32	s13, s4
d0044eac:	ee83 6a05 	vdiv.f32	s12, s6, s10
d0044eb0:	eeb0 7a62 	vmov.f32	s14, s5
d0044eb4:	eef0 7a63 	vmov.f32	s15, s7
d0044eb8:	eee5 6a86 	vfma.f32	s13, s11, s12
d0044ebc:	eea1 7a86 	vfma.f32	s14, s3, s12
d0044ec0:	eee4 7a06 	vfma.f32	s15, s8, s12
d0044ec4:	edc2 6a00 	vstr	s13, [r2]
d0044ec8:	ed82 7a01 	vstr	s14, [r2, #4]
d0044ecc:	edc2 7a02 	vstr	s15, [r2, #8]
d0044ed0:	e555      	b.n	d004497e <clipTriangleToFrustum+0x112>
d0044ed2:	bf00      	nop
d0044ed4:	3f2aaaab 	.word	0x3f2aaaab
d0044ed8:	eeb5 3a40 	vcmp.f32	s6, #0.0
d0044edc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044ee0:	f57f ad4d 	bpl.w	d004497e <clipTriangleToFrustum+0x112>
d0044ee4:	2900      	cmp	r1, #0
d0044ee6:	f43f ad4a 	beq.w	d004497e <clipTriangleToFrustum+0x112>
d0044eea:	ee77 7a44 	vsub.f32	s15, s14, s8
d0044eee:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0044ef2:	ee75 6ac2 	vsub.f32	s13, s11, s4
d0044ef6:	a922      	add	r1, sp, #136	; 0x88
d0044ef8:	ee31 7ae2 	vsub.f32	s14, s3, s5
d0044efc:	3302      	adds	r3, #2
d0044efe:	ee77 7a83 	vadd.f32	s15, s15, s6
d0044f02:	eb01 0182 	add.w	r1, r1, r2, lsl #2
d0044f06:	ee34 5a63 	vsub.f32	s10, s8, s7
d0044f0a:	edc1 5a03 	vstr	s11, [r1, #12]
d0044f0e:	ee83 6a27 	vdiv.f32	s12, s6, s15
d0044f12:	edc1 1a04 	vstr	s3, [r1, #16]
d0044f16:	ed81 4a05 	vstr	s8, [r1, #20]
d0044f1a:	eef0 7a63 	vmov.f32	s15, s7
d0044f1e:	eea6 2a86 	vfma.f32	s4, s13, s12
d0044f22:	eee7 2a06 	vfma.f32	s5, s14, s12
d0044f26:	eee5 7a06 	vfma.f32	s15, s10, s12
d0044f2a:	ed81 2a00 	vstr	s4, [r1]
d0044f2e:	edc1 2a01 	vstr	s5, [r1, #4]
d0044f32:	edc1 7a02 	vstr	s15, [r1, #8]
d0044f36:	e522      	b.n	d004497e <clipTriangleToFrustum+0x112>
d0044f38:	eeb5 5a40 	vcmp.f32	s10, #0.0
d0044f3c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044f40:	f140 80bf 	bpl.w	d00450c2 <clipTriangleToFrustum+0x856>
d0044f44:	2800      	cmp	r0, #0
d0044f46:	f000 80bc 	beq.w	d00450c2 <clipTriangleToFrustum+0x856>
d0044f4a:	ee74 3a67 	vsub.f32	s7, s8, s15
d0044f4e:	2302      	movs	r3, #2
d0044f50:	ee36 2a65 	vsub.f32	s4, s12, s11
d0044f54:	ed8d 6a25 	vstr	s12, [sp, #148]	; 0x94
d0044f58:	eeb0 1a65 	vmov.f32	s2, s11
d0044f5c:	edcd 6a26 	vstr	s13, [sp, #152]	; 0x98
d0044f60:	ee85 3a23 	vdiv.f32	s6, s10, s7
d0044f64:	edcd 7a27 	vstr	s15, [sp, #156]	; 0x9c
d0044f68:	ee76 2ae1 	vsub.f32	s5, s13, s3
d0044f6c:	ee77 3ac4 	vsub.f32	s7, s15, s8
d0044f70:	eea3 1a02 	vfma.f32	s2, s6, s4
d0044f74:	eeb0 2a41 	vmov.f32	s4, s2
d0044f78:	eeb0 1a61 	vmov.f32	s2, s3
d0044f7c:	ed8d 2a22 	vstr	s4, [sp, #136]	; 0x88
d0044f80:	eea3 1a22 	vfma.f32	s2, s6, s5
d0044f84:	eef0 2a41 	vmov.f32	s5, s2
d0044f88:	eeb0 1a44 	vmov.f32	s2, s8
d0044f8c:	edcd 2a23 	vstr	s5, [sp, #140]	; 0x8c
d0044f90:	eea3 1a23 	vfma.f32	s2, s6, s7
d0044f94:	ed8d 1a24 	vstr	s2, [sp, #144]	; 0x90
d0044f98:	e4be      	b.n	d0044918 <clipTriangleToFrustum+0xac>
d0044f9a:	eef5 4ac0 	vcmpe.f32	s9, #0.0
d0044f9e:	f006 0201 	and.w	r2, r6, #1
d0044fa2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044fa6:	bf58      	it	pl
d0044fa8:	2200      	movpl	r2, #0
d0044faa:	2a00      	cmp	r2, #0
d0044fac:	f000 8087 	beq.w	d00450be <clipTriangleToFrustum+0x852>
d0044fb0:	ee37 8ae3 	vsub.f32	s16, s15, s7
d0044fb4:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0044fb8:	ee32 0a46 	vsub.f32	s0, s4, s12
d0044fbc:	ae22      	add	r6, sp, #136	; 0x88
d0044fbe:	ee72 0ae6 	vsub.f32	s1, s5, s13
d0044fc2:	3302      	adds	r3, #2
d0044fc4:	ee84 1a88 	vdiv.f32	s2, s9, s16
d0044fc8:	eb06 0680 	add.w	r6, r6, r0, lsl #2
d0044fcc:	ed86 2a03 	vstr	s4, [r6, #12]
d0044fd0:	edc6 2a04 	vstr	s5, [r6, #16]
d0044fd4:	edc6 3a05 	vstr	s7, [r6, #20]
d0044fd8:	ee73 4ae7 	vsub.f32	s9, s7, s15
d0044fdc:	eea0 6a01 	vfma.f32	s12, s0, s2
d0044fe0:	eee0 6a81 	vfma.f32	s13, s1, s2
d0044fe4:	eee4 7a81 	vfma.f32	s15, s9, s2
d0044fe8:	ed86 6a00 	vstr	s12, [r6]
d0044fec:	edc6 6a01 	vstr	s13, [r6, #4]
d0044ff0:	edc6 7a02 	vstr	s15, [r6, #8]
d0044ff4:	e4b1      	b.n	d004495a <clipTriangleToFrustum+0xee>
d0044ff6:	eef5 5a40 	vcmp.f32	s11, #0.0
d0044ffa:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0044ffe:	f10d 0c88 	add.w	ip, sp, #136	; 0x88
d0045002:	ee77 3aa5 	vadd.f32	s7, s15, s11
d0045006:	ee77 1ac4 	vsub.f32	s3, s15, s8
d004500a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004500e:	eb0c 0c81 	add.w	ip, ip, r1, lsl #2
d0045012:	ee36 2a64 	vsub.f32	s4, s12, s9
d0045016:	4661      	mov	r1, ip
d0045018:	ee73 3ac7 	vsub.f32	s7, s7, s14
d004501c:	ee77 2a45 	vsub.f32	s5, s14, s10
d0045020:	f10c 0c0c 	add.w	ip, ip, #12
d0045024:	f57f ad38 	bpl.w	d0044a98 <clipTriangleToFrustum+0x22c>
d0045028:	f1be 0f00 	cmp.w	lr, #0
d004502c:	f43f ad34 	beq.w	d0044a98 <clipTriangleToFrustum+0x22c>
d0045030:	ee85 3aa3 	vdiv.f32	s6, s11, s7
d0045034:	3202      	adds	r2, #2
d0045036:	eea1 4a83 	vfma.f32	s8, s3, s6
d004503a:	eee2 4a03 	vfma.f32	s9, s4, s6
d004503e:	eea2 5a83 	vfma.f32	s10, s5, s6
d0045042:	ed81 4a00 	vstr	s8, [r1]
d0045046:	edc1 4a01 	vstr	s9, [r1, #4]
d004504a:	ed81 5a02 	vstr	s10, [r1, #8]
d004504e:	edcc 7a00 	vstr	s15, [ip]
d0045052:	ed8c 6a01 	vstr	s12, [ip, #4]
d0045056:	ed8c 7a02 	vstr	s14, [ip, #8]
d004505a:	e51d      	b.n	d0044a98 <clipTriangleToFrustum+0x22c>
d004505c:	eef5 5a40 	vcmp.f32	s11, #0.0
d0045060:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0045064:	ee37 3aa5 	vadd.f32	s6, s15, s11
d0045068:	eb04 0781 	add.w	r7, r4, r1, lsl #2
d004506c:	ee36 1a44 	vsub.f32	s2, s12, s8
d0045070:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045074:	4639      	mov	r1, r7
d0045076:	ee77 1ae4 	vsub.f32	s3, s15, s9
d004507a:	ee73 3a63 	vsub.f32	s7, s6, s7
d004507e:	f107 070c 	add.w	r7, r7, #12
d0045082:	ee37 2a45 	vsub.f32	s4, s14, s10
d0045086:	f57f ad8b 	bpl.w	d0044ba0 <clipTriangleToFrustum+0x334>
d004508a:	f1bc 0f00 	cmp.w	ip, #0
d004508e:	f43f ad87 	beq.w	d0044ba0 <clipTriangleToFrustum+0x334>
d0045092:	ee85 3aa3 	vdiv.f32	s6, s11, s7
d0045096:	3202      	adds	r2, #2
d0045098:	eea1 4a03 	vfma.f32	s8, s2, s6
d004509c:	eee1 4a83 	vfma.f32	s9, s3, s6
d00450a0:	eea2 5a03 	vfma.f32	s10, s4, s6
d00450a4:	ed81 4a00 	vstr	s8, [r1]
d00450a8:	edc1 4a01 	vstr	s9, [r1, #4]
d00450ac:	ed81 5a02 	vstr	s10, [r1, #8]
d00450b0:	ed87 6a00 	vstr	s12, [r7]
d00450b4:	edc7 7a01 	vstr	s15, [r7, #4]
d00450b8:	ed87 7a02 	vstr	s14, [r7, #8]
d00450bc:	e570      	b.n	d0044ba0 <clipTriangleToFrustum+0x334>
d00450be:	4632      	mov	r2, r6
d00450c0:	e44b      	b.n	d004495a <clipTriangleToFrustum+0xee>
d00450c2:	2300      	movs	r3, #0
d00450c4:	e428      	b.n	d0044918 <clipTriangleToFrustum+0xac>
d00450c6:	eef5 5a40 	vcmp.f32	s11, #0.0
d00450ca:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d00450ce:	a922      	add	r1, sp, #136	; 0x88
d00450d0:	ee35 1ae6 	vsub.f32	s2, s11, s13
d00450d4:	ee76 1a44 	vsub.f32	s3, s12, s8
d00450d8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00450dc:	eb01 0182 	add.w	r1, r1, r2, lsl #2
d00450e0:	ee37 2ae4 	vsub.f32	s4, s15, s9
d00450e4:	460a      	mov	r2, r1
d00450e6:	ee77 2a45 	vsub.f32	s5, s14, s10
d00450ea:	f101 010c 	add.w	r1, r1, #12
d00450ee:	f57f adcf 	bpl.w	d0044c90 <clipTriangleToFrustum+0x424>
d00450f2:	2800      	cmp	r0, #0
d00450f4:	f43f adcc 	beq.w	d0044c90 <clipTriangleToFrustum+0x424>
d00450f8:	ee85 3a81 	vdiv.f32	s6, s11, s2
d00450fc:	3702      	adds	r7, #2
d00450fe:	eea1 4a83 	vfma.f32	s8, s3, s6
d0045102:	eee2 4a03 	vfma.f32	s9, s4, s6
d0045106:	eea2 5a83 	vfma.f32	s10, s5, s6
d004510a:	ed82 4a00 	vstr	s8, [r2]
d004510e:	edc2 4a01 	vstr	s9, [r2, #4]
d0045112:	ed82 5a02 	vstr	s10, [r2, #8]
d0045116:	ed81 6a00 	vstr	s12, [r1]
d004511a:	edc1 7a01 	vstr	s15, [r1, #4]
d004511e:	ed81 7a02 	vstr	s14, [r1, #8]
d0045122:	e5b5      	b.n	d0044c90 <clipTriangleToFrustum+0x424>

d0045124 <submitClippedTri>:
d0045124:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d0045128:	eef4 7ac1 	vcmpe.f32	s15, s2
d004512c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045130:	eef4 2ae7 	vcmpe.f32	s5, s15
d0045134:	bfac      	ite	ge
d0045136:	2301      	movge	r3, #1
d0045138:	2300      	movlt	r3, #0
d004513a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004513e:	bf98      	it	ls
d0045140:	f043 0301 	orrls.w	r3, r3, #1
d0045144:	b923      	cbnz	r3, d0045150 <submitClippedTri+0x2c>
d0045146:	eef4 7ac4 	vcmpe.f32	s15, s8
d004514a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004514e:	db00      	blt.n	d0045152 <submitClippedTri+0x2e>
d0045150:	4770      	bx	lr
d0045152:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0045156:	ed9f 6a69 	vldr	s12, [pc, #420]	; d00452fc <submitClippedTri+0x1d8>
d004515a:	eddf 7a69 	vldr	s15, [pc, #420]	; d0045300 <submitClippedTri+0x1dc>
d004515e:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d0045162:	ee60 0a86 	vmul.f32	s1, s1, s12
d0045166:	ed9f 5a67 	vldr	s10, [pc, #412]	; d0045304 <submitClippedTri+0x1e0>
d004516a:	eec6 5aa2 	vdiv.f32	s11, s13, s5
d004516e:	ee63 3a86 	vmul.f32	s7, s7, s12
d0045172:	ee22 2a06 	vmul.f32	s4, s4, s12
d0045176:	eeb0 6a67 	vmov.f32	s12, s15
d004517a:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004517e:	ed2d 8b04 	vpush	{d8-d9}
d0045182:	eec6 8a81 	vdiv.f32	s17, s13, s2
d0045186:	b08b      	sub	sp, #44	; 0x2c
d0045188:	eeb0 9a66 	vmov.f32	s18, s13
d004518c:	ee86 8a84 	vdiv.f32	s16, s13, s8
d0045190:	eea5 6a82 	vfma.f32	s12, s11, s4
d0045194:	eea0 9a28 	vfma.f32	s18, s0, s17
d0045198:	eeb0 0a67 	vmov.f32	s0, s15
d004519c:	eebd 6ac6 	vcvt.s32.f32	s12, s12
d00451a0:	eea8 0aa0 	vfma.f32	s0, s17, s1
d00451a4:	eef0 0a66 	vmov.f32	s1, s13
d00451a8:	ee16 3a10 	vmov	r3, s12
d00451ac:	eee8 7a23 	vfma.f32	s15, s16, s7
d00451b0:	eee1 0aa5 	vfma.f32	s1, s3, s11
d00451b4:	eef0 1a47 	vmov.f32	s3, s14
d00451b8:	eefd 5ac0 	vcvt.s32.f32	s11, s0
d00451bc:	eee9 1a05 	vfma.f32	s3, s18, s10
d00451c0:	ee15 6a90 	vmov	r6, s11
d00451c4:	eef0 5a66 	vmov.f32	s11, s13
d00451c8:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00451cc:	1b9d      	subs	r5, r3, r6
d00451ce:	eee3 5a08 	vfma.f32	s11, s6, s16
d00451d2:	ee17 3a90 	vmov	r3, s15
d00451d6:	eefd 3ae1 	vcvt.s32.f32	s7, s3
d00451da:	eba3 0c06 	sub.w	ip, r3, r6
d00451de:	ee13 7a90 	vmov	r7, s7
d00451e2:	eeb0 3a65 	vmov.f32	s6, s11
d00451e6:	eef0 5a47 	vmov.f32	s11, s14
d00451ea:	eea3 7a05 	vfma.f32	s14, s6, s10
d00451ee:	eee0 5a85 	vfma.f32	s11, s1, s10
d00451f2:	eefd 7ac7 	vcvt.s32.f32	s15, s14
d00451f6:	eefd 5ae5 	vcvt.s32.f32	s11, s11
d00451fa:	ee15 4a90 	vmov	r4, s11
d00451fe:	eba4 0e07 	sub.w	lr, r4, r7
d0045202:	ee17 4a90 	vmov	r4, s15
d0045206:	fb0c fc0e 	mul.w	ip, ip, lr
d004520a:	eba4 0e07 	sub.w	lr, r4, r7
d004520e:	fb0e c515 	mls	r5, lr, r5, ip
d0045212:	2d00      	cmp	r5, #0
d0045214:	dd6d      	ble.n	d00452f2 <submitClippedTri+0x1ce>
d0045216:	f8df e0f8 	ldr.w	lr, [pc, #248]	; d0045310 <submitClippedTri+0x1ec>
d004521a:	f8de 5000 	ldr.w	r5, [lr]
d004521e:	f5b5 5f00 	cmp.w	r5, #8192	; 0x2000
d0045222:	da66      	bge.n	d00452f2 <submitClippedTri+0x1ce>
d0045224:	f8df c0ec 	ldr.w	ip, [pc, #236]	; d0045314 <submitClippedTri+0x1f0>
d0045228:	ea4f 1885 	mov.w	r8, r5, lsl #6
d004522c:	f105 0b01 	add.w	fp, r5, #1
d0045230:	ed9f 5a35 	vldr	s10, [pc, #212]	; d0045308 <submitClippedTri+0x1e4>
d0045234:	f848 700c 	str.w	r7, [r8, ip]
d0045238:	eb0c 1585 	add.w	r5, ip, r5, lsl #6
d004523c:	f108 0a08 	add.w	sl, r8, #8
d0045240:	f108 0910 	add.w	r9, r8, #16
d0045244:	ee15 7a90 	vmov	r7, s11
d0045248:	606e      	str	r6, [r5, #4]
d004524a:	eb0a 060c 	add.w	r6, sl, ip
d004524e:	f8ce b000 	str.w	fp, [lr]
d0045252:	f84a 700c 	str.w	r7, [sl, ip]
d0045256:	eb09 070c 	add.w	r7, r9, ip
d004525a:	ed86 6a01 	vstr	s12, [r6, #4]
d004525e:	f849 400c 	str.w	r4, [r9, ip]
d0045262:	607b      	str	r3, [r7, #4]
d0045264:	f885 1034 	strb.w	r1, [r5, #52]	; 0x34
d0045268:	f885 2035 	strb.w	r2, [r5, #53]	; 0x35
d004526c:	edc5 4a07 	vstr	s9, [r5, #28]
d0045270:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0045274:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0045278:	ee31 7a47 	vsub.f32	s14, s2, s14
d004527c:	ed9f 6a23 	vldr	s12, [pc, #140]	; d004530c <submitClippedTri+0x1e8>
d0045280:	ee27 7a27 	vmul.f32	s14, s14, s15
d0045284:	fe87 7a05 	vmaxnm.f32	s14, s14, s10
d0045288:	fe87 7a66 	vminnm.f32	s14, s14, s13
d004528c:	ee27 7a06 	vmul.f32	s14, s14, s12
d0045290:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0045294:	ee17 3a10 	vmov	r3, s14
d0045298:	842b      	strh	r3, [r5, #32]
d004529a:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d004529e:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d00452a2:	ee32 7ac7 	vsub.f32	s14, s5, s14
d00452a6:	ee27 7a27 	vmul.f32	s14, s14, s15
d00452aa:	fe87 7a05 	vmaxnm.f32	s14, s14, s10
d00452ae:	fe87 7a66 	vminnm.f32	s14, s14, s13
d00452b2:	ee27 7a06 	vmul.f32	s14, s14, s12
d00452b6:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00452ba:	ee17 3a10 	vmov	r3, s14
d00452be:	846b      	strh	r3, [r5, #34]	; 0x22
d00452c0:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d00452c4:	ed90 7a0f 	vldr	s14, [r0, #60]	; 0x3c
d00452c8:	ee74 7a67 	vsub.f32	s15, s8, s15
d00452cc:	ed85 1a0a 	vstr	s2, [r5, #40]	; 0x28
d00452d0:	edc5 2a0b 	vstr	s5, [r5, #44]	; 0x2c
d00452d4:	ed85 4a0c 	vstr	s8, [r5, #48]	; 0x30
d00452d8:	ee67 7a87 	vmul.f32	s15, s15, s14
d00452dc:	fec7 7a85 	vmaxnm.f32	s15, s15, s10
d00452e0:	fec7 6ae6 	vminnm.f32	s13, s15, s13
d00452e4:	ee66 6a86 	vmul.f32	s13, s13, s12
d00452e8:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d00452ec:	ee16 3a90 	vmov	r3, s13
d00452f0:	84ab      	strh	r3, [r5, #36]	; 0x24
d00452f2:	b00b      	add	sp, #44	; 0x2c
d00452f4:	ecbd 8b04 	vpop	{d8-d9}
d00452f8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00452fc:	c3700000 	.word	0xc3700000
d0045300:	43208000 	.word	0x43208000
d0045304:	43700000 	.word	0x43700000
d0045308:	00000000 	.word	0x00000000
d004530c:	477fff00 	.word	0x477fff00
d0045310:	d00a1584 	.word	0xd00a1584
d0045314:	d00a15a0 	.word	0xd00a15a0

d0045318 <drawFakeHorizonDots>:
d0045318:	2800      	cmp	r0, #0
d004531a:	f000 80f2 	beq.w	d0045502 <drawFakeHorizonDots+0x1ea>
d004531e:	2a02      	cmp	r2, #2
d0045320:	edd0 7a02 	vldr	s15, [r0, #8]
d0045324:	ed90 6a01 	vldr	s12, [r0, #4]
d0045328:	bfb8      	it	lt
d004532a:	2202      	movlt	r2, #2
d004532c:	eddf 5a75 	vldr	s11, [pc, #468]	; d0045504 <drawFakeHorizonDots+0x1ec>
d0045330:	edd0 6a0d 	vldr	s13, [r0, #52]	; 0x34
d0045334:	ee07 2a10 	vmov	s14, r2
d0045338:	edd0 4a10 	vldr	s9, [r0, #64]	; 0x40
d004533c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0045340:	ed2d 8b10 	vpush	{d8-d15}
d0045344:	eef8 9ac7 	vcvt.f32.s32	s19, s14
d0045348:	ed90 aa00 	vldr	s20, [r0]
d004534c:	b085      	sub	sp, #20
d004534e:	4617      	mov	r7, r2
d0045350:	468b      	mov	fp, r1
d0045352:	496d      	ldr	r1, [pc, #436]	; (d0045508 <drawFakeHorizonDots+0x1f0>)
d0045354:	ee8a 7a29 	vdiv.f32	s14, s20, s19
d0045358:	edcd 7a01 	vstr	s15, [sp, #4]
d004535c:	4e6b      	ldr	r6, [pc, #428]	; (d004550c <drawFakeHorizonDots+0x1f4>)
d004535e:	4698      	mov	r8, r3
d0045360:	ed90 ca07 	vldr	s24, [r0, #28]
d0045364:	edd0 ba0a 	vldr	s23, [r0, #40]	; 0x28
d0045368:	4c69      	ldr	r4, [pc, #420]	; (d0045510 <drawFakeHorizonDots+0x1f8>)
d004536a:	eec7 7aa9 	vdiv.f32	s15, s15, s19
d004536e:	edd0 fa06 	vldr	s31, [r0, #24]
d0045372:	ed90 fa08 	vldr	s30, [r0, #32]
d0045376:	edd0 ea09 	vldr	s29, [r0, #36]	; 0x24
d004537a:	ed90 ea0b 	vldr	s28, [r0, #44]	; 0x2c
d004537e:	edd0 da0c 	vldr	s27, [r0, #48]	; 0x30
d0045382:	ee30 ba46 	vsub.f32	s22, s0, s12
d0045386:	ed90 da0e 	vldr	s26, [r0, #56]	; 0x38
d004538a:	ee69 9aa5 	vmul.f32	s19, s19, s11
d004538e:	ed9f 8a61 	vldr	s16, [pc, #388]	; d0045514 <drawFakeHorizonDots+0x1fc>
d0045392:	4b61      	ldr	r3, [pc, #388]	; (d0045518 <drawFakeHorizonDots+0x200>)
d0045394:	ee2b ca0c 	vmul.f32	s24, s22, s24
d0045398:	eddf ca60 	vldr	s25, [pc, #384]	; d004551c <drawFakeHorizonDots+0x204>
d004539c:	ee6b ba2b 	vmul.f32	s23, s22, s23
d00453a0:	eddf 8a5f 	vldr	s17, [pc, #380]	; d0045520 <drawFakeHorizonDots+0x208>
d00453a4:	ee29 8a88 	vmul.f32	s16, s19, s16
d00453a8:	f8df 9184 	ldr.w	r9, [pc, #388]	; d0045530 <drawFakeHorizonDots+0x218>
d00453ac:	febb 7a47 	vrintm.f32	s14, s14
d00453b0:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d00453b4:	ee2b ba26 	vmul.f32	s22, s22, s13
d00453b8:	ee17 2a10 	vmov	r2, s14
d00453bc:	fefb 7a67 	vrintm.f32	s15, s15
d00453c0:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00453c4:	fb01 f002 	mul.w	r0, r1, r2
d00453c8:	f1a2 0112 	sub.w	r1, r2, #18
d00453cc:	ee17 2a90 	vmov	r2, s15
d00453d0:	4404      	add	r4, r0
d00453d2:	fb07 f101 	mul.w	r1, r7, r1
d00453d6:	f1a2 0a12 	sub.w	sl, r2, #18
d00453da:	fb06 0202 	mla	r2, r6, r2, r0
d00453de:	9103      	str	r1, [sp, #12]
d00453e0:	fb06 460a 	mla	r6, r6, sl, r4
d00453e4:	18d3      	adds	r3, r2, r3
d00453e6:	fb0a fa07 	mul.w	sl, sl, r7
d00453ea:	9302      	str	r3, [sp, #8]
d00453ec:	eddd 7a01 	vldr	s15, [sp, #4]
d00453f0:	4c4c      	ldr	r4, [pc, #304]	; (d0045524 <drawFakeHorizonDots+0x20c>)
d00453f2:	ee37 9aa9 	vadd.f32	s18, s15, s19
d00453f6:	ee07 aa90 	vmov	s15, sl
d00453fa:	1934      	adds	r4, r6, r4
d00453fc:	9d03      	ldr	r5, [sp, #12]
d00453fe:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0045402:	eddf aa49 	vldr	s21, [pc, #292]	; d0045528 <drawFakeHorizonDots+0x210>
d0045406:	ee37 9ac9 	vsub.f32	s18, s15, s18
d004540a:	ea84 3354 	eor.w	r3, r4, r4, lsr #13
d004540e:	ee07 5a90 	vmov	s15, r5
d0045412:	f104 54b2 	add.w	r4, r4, #373293056	; 0x16400000
d0045416:	eef0 3a49 	vmov.f32	s7, s18
d004541a:	fb09 f303 	mul.w	r3, r9, r3
d004541e:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d0045422:	ee7a 7a29 	vadd.f32	s15, s20, s19
d0045426:	f504 14b3 	add.w	r4, r4, #1466368	; 0x166000
d004542a:	ea83 4313 	eor.w	r3, r3, r3, lsr #16
d004542e:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0045432:	eddf 5a3e 	vldr	s11, [pc, #248]	; d004552c <drawFakeHorizonDots+0x214>
d0045436:	443d      	add	r5, r7
d0045438:	f3c3 4207 	ubfx	r2, r3, #16, #8
d004543c:	ee77 7a67 	vsub.f32	s15, s14, s15
d0045440:	f204 74b1 	addw	r4, r4, #1969	; 0x7b1
d0045444:	ee07 2a10 	vmov	s14, r2
d0045448:	f3c3 2207 	ubfx	r2, r3, #8, #8
d004544c:	b2db      	uxtb	r3, r3
d004544e:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0045452:	ee06 2a90 	vmov	s13, r2
d0045456:	4543      	cmp	r3, r8
d0045458:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d004545c:	eee7 3a08 	vfma.f32	s7, s14, s16
d0045460:	d83d      	bhi.n	d00454de <drawFakeHorizonDots+0x1c6>
d0045462:	eee6 7a88 	vfma.f32	s15, s13, s16
d0045466:	ee2d 6a23 	vmul.f32	s12, s26, s7
d004546a:	ee2e 7aa7 	vmul.f32	s14, s29, s15
d004546e:	eead 6aa7 	vfma.f32	s12, s27, s15
d0045472:	ee6f 6aa7 	vmul.f32	s13, s31, s15
d0045476:	eef0 7a47 	vmov.f32	s15, s14
d004547a:	eeef 6a23 	vfma.f32	s13, s30, s7
d004547e:	eeee 7a23 	vfma.f32	s15, s28, s7
d0045482:	ee3b 6a06 	vadd.f32	s12, s22, s12
d0045486:	eef4 4ac6 	vcmpe.f32	s9, s12
d004548a:	ee3c 7a26 	vadd.f32	s14, s24, s13
d004548e:	ee7b 7aa7 	vadd.f32	s15, s23, s15
d0045492:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045496:	ee27 7a2c 	vmul.f32	s14, s14, s25
d004549a:	ee67 7aaa 	vmul.f32	s15, s15, s21
d004549e:	da1e      	bge.n	d00454de <drawFakeHorizonDots+0x1c6>
d00454a0:	eec5 6a06 	vdiv.f32	s13, s10, s12
d00454a4:	eeb0 6a68 	vmov.f32	s12, s17
d00454a8:	eea7 6a26 	vfma.f32	s12, s14, s13
d00454ac:	eee7 5aa6 	vfma.f32	s11, s15, s13
d00454b0:	eefd 7ac6 	vcvt.s32.f32	s15, s12
d00454b4:	eefd 5ae5 	vcvt.s32.f32	s11, s11
d00454b8:	ee17 0a90 	vmov	r0, s15
d00454bc:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d00454c0:	d20d      	bcs.n	d00454de <drawFakeHorizonDots+0x1c6>
d00454c2:	ee15 3a90 	vmov	r3, s11
d00454c6:	465a      	mov	r2, fp
d00454c8:	ee15 1a90 	vmov	r1, s11
d00454cc:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d00454d0:	d205      	bcs.n	d00454de <drawFakeHorizonDots+0x1c6>
d00454d2:	edcd 4a00 	vstr	s9, [sp]
d00454d6:	f7fb fc7d 	bl	d0040dd4 <putPixel>
d00454da:	eddd 4a00 	vldr	s9, [sp]
d00454de:	42b4      	cmp	r4, r6
d00454e0:	d193      	bne.n	d004540a <drawFakeHorizonDots+0xf2>
d00454e2:	f106 561f 	add.w	r6, r6, #666894336	; 0x27c00000
d00454e6:	9b02      	ldr	r3, [sp, #8]
d00454e8:	44ba      	add	sl, r7
d00454ea:	f506 16a7 	add.w	r6, r6, #1368064	; 0x14e000
d00454ee:	f606 362f 	addw	r6, r6, #2863	; 0xb2f
d00454f2:	42b3      	cmp	r3, r6
d00454f4:	f47f af7a 	bne.w	d00453ec <drawFakeHorizonDots+0xd4>
d00454f8:	b005      	add	sp, #20
d00454fa:	ecbd 8b10 	vpop	{d8-d15}
d00454fe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0045502:	4770      	bx	lr
d0045504:	3eb33333 	.word	0x3eb33333
d0045508:	165667b1 	.word	0x165667b1
d004550c:	27d4eb2f 	.word	0x27d4eb2f
d0045510:	a869b223 	.word	0xa869b223
d0045514:	3c008081 	.word	0x3c008081
d0045518:	9d3726a0 	.word	0x9d3726a0
d004551c:	43700000 	.word	0x43700000
d0045520:	43708000 	.word	0x43708000
d0045524:	c583036b 	.word	0xc583036b
d0045528:	c3700000 	.word	0xc3700000
d004552c:	43208000 	.word	0x43208000
d0045530:	4bf19f61 	.word	0x4bf19f61

d0045534 <drawFakeHorizon>:
d0045534:	2800      	cmp	r0, #0
d0045536:	f000 813c 	beq.w	d00457b2 <drawFakeHorizon+0x27e>
d004553a:	ed9f 7aa2 	vldr	s14, [pc, #648]	; d00457c4 <drawFakeHorizon+0x290>
d004553e:	eddf 6aa2 	vldr	s13, [pc, #648]	; d00457c8 <drawFakeHorizon+0x294>
d0045542:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0045546:	ed2d 8b0c 	vpush	{d8-d13}
d004554a:	ed90 da0a 	vldr	s26, [r0, #40]	; 0x28
d004554e:	eeb0 ca47 	vmov.f32	s24, s14
d0045552:	ed9f 9a9e 	vldr	s18, [pc, #632]	; d00457cc <drawFakeHorizon+0x298>
d0045556:	b083      	sub	sp, #12
d0045558:	edd0 ba0d 	vldr	s23, [r0, #52]	; 0x34
d004555c:	eeb0 bacd 	vabs.f32	s22, s26
d0045560:	ee6d 7a09 	vmul.f32	s15, s26, s18
d0045564:	eddf 9a9a 	vldr	s19, [pc, #616]	; d00457d0 <drawFakeHorizon+0x29c>
d0045568:	eef0 aa6b 	vmov.f32	s21, s23
d004556c:	edd0 da07 	vldr	s27, [r0, #28]
d0045570:	eeb0 aa6b 	vmov.f32	s20, s23
d0045574:	edd0 8a01 	vldr	s17, [r0, #4]
d0045578:	eec9 ca8d 	vdiv.f32	s25, s19, s26
d004557c:	460f      	mov	r7, r1
d004557e:	4690      	mov	r8, r2
d0045580:	4699      	mov	r9, r3
d0045582:	2400      	movs	r4, #0
d0045584:	4e93      	ldr	r6, [pc, #588]	; (d00457d4 <drawFakeHorizon+0x2a0>)
d0045586:	ed9f 8a94 	vldr	s16, [pc, #592]	; d00457d8 <drawFakeHorizon+0x2a4>
d004558a:	eee7 aa87 	vfma.f32	s21, s15, s14
d004558e:	eea7 aaa6 	vfma.f32	s20, s15, s13
d0045592:	ee2d 9a89 	vmul.f32	s18, s27, s18
d0045596:	ee70 8a68 	vsub.f32	s17, s0, s17
d004559a:	e056      	b.n	d004564a <drawFakeHorizon+0x116>
d004559c:	ee88 6aa6 	vdiv.f32	s12, s17, s13
d00455a0:	eef0 6ac7 	vabs.f32	s13, s14
d00455a4:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d00455a8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00455ac:	eef4 6ac8 	vcmpe.f32	s13, s16
d00455b0:	bfcc      	ite	gt
d00455b2:	2201      	movgt	r2, #1
d00455b4:	2200      	movle	r2, #0
d00455b6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00455ba:	da61      	bge.n	d0045680 <drawFakeHorizon+0x14c>
d00455bc:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d00455c0:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d00455c4:	6833      	ldr	r3, [r6, #0]
d00455c6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00455ca:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d00455ce:	f240 80a8 	bls.w	d0045722 <drawFakeHorizon+0x1ee>
d00455d2:	eeb4 bac8 	vcmpe.f32	s22, s16
d00455d6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00455da:	f100 809a 	bmi.w	d0045712 <drawFakeHorizon+0x1de>
d00455de:	ee7b 7aa7 	vadd.f32	s15, s23, s15
d00455e2:	eeb0 7a4c 	vmov.f32	s14, s24
d00455e6:	eeac 7aa7 	vfma.f32	s14, s25, s15
d00455ea:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d00455ee:	ee17 ba90 	vmov	fp, s15
d00455f2:	f1bb 0f00 	cmp.w	fp, #0
d00455f6:	f2c0 80aa 	blt.w	d004574e <drawFakeHorizon+0x21a>
d00455fa:	2201      	movs	r2, #1
d00455fc:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d0045600:	46da      	mov	sl, fp
d0045602:	bfa8      	it	ge
d0045604:	f44f 7aa0 	movge.w	sl, #320	; 0x140
d0045608:	2a00      	cmp	r2, #0
d004560a:	f000 8091 	beq.w	d0045730 <drawFakeHorizon+0x1fc>
d004560e:	f1bb 0f00 	cmp.w	fp, #0
d0045612:	d009      	beq.n	d0045628 <drawFakeHorizon+0xf4>
d0045614:	f1ba 0f00 	cmp.w	sl, #0
d0045618:	4628      	mov	r0, r5
d004561a:	4641      	mov	r1, r8
d004561c:	bfcc      	ite	gt
d004561e:	4652      	movgt	r2, sl
d0045620:	2201      	movle	r2, #1
d0045622:	4415      	add	r5, r2
d0045624:	f001 fb1e 	bl	d0046c64 <memset>
d0045628:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d004562c:	d009      	beq.n	d0045642 <drawFakeHorizon+0x10e>
d004562e:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d0045632:	f5ca 72a0 	rsb	r2, sl, #320	; 0x140
d0045636:	4628      	mov	r0, r5
d0045638:	4639      	mov	r1, r7
d004563a:	bfa8      	it	ge
d004563c:	2201      	movge	r2, #1
d004563e:	f001 fb11 	bl	d0046c64 <memset>
d0045642:	3401      	adds	r4, #1
d0045644:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d0045648:	d04e      	beq.n	d00456e8 <drawFakeHorizon+0x1b4>
d004564a:	ee07 4a90 	vmov	s15, r4
d004564e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0045652:	ee77 7ae9 	vsub.f32	s15, s15, s19
d0045656:	ee67 7a89 	vmul.f32	s15, s15, s18
d004565a:	ee77 6aaa 	vadd.f32	s13, s15, s21
d004565e:	ee3a 7a27 	vadd.f32	s14, s20, s15
d0045662:	eeb0 6ae6 	vabs.f32	s12, s13
d0045666:	eeb4 6ac8 	vcmpe.f32	s12, s16
d004566a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004566e:	da95      	bge.n	d004559c <drawFakeHorizon+0x68>
d0045670:	eef0 6ac7 	vabs.f32	s13, s14
d0045674:	eef4 6ac8 	vcmpe.f32	s13, s16
d0045678:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004567c:	db4c      	blt.n	d0045718 <drawFakeHorizon+0x1e4>
d004567e:	2200      	movs	r2, #0
d0045680:	eec8 6a87 	vdiv.f32	s13, s17, s14
d0045684:	6833      	ldr	r3, [r6, #0]
d0045686:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d004568a:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d004568e:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0045692:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045696:	bfcc      	ite	gt
d0045698:	2301      	movgt	r3, #1
d004569a:	2300      	movle	r3, #0
d004569c:	4293      	cmp	r3, r2
d004569e:	f000 8089 	beq.w	d00457b4 <drawFakeHorizon+0x280>
d00456a2:	eeb4 bac8 	vcmpe.f32	s22, s16
d00456a6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00456aa:	d429      	bmi.n	d0045700 <drawFakeHorizon+0x1cc>
d00456ac:	ee7b 7aa7 	vadd.f32	s15, s23, s15
d00456b0:	eeb0 7a4c 	vmov.f32	s14, s24
d00456b4:	eeac 7aa7 	vfma.f32	s14, s25, s15
d00456b8:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d00456bc:	ee17 ba90 	vmov	fp, s15
d00456c0:	f1bb 0f00 	cmp.w	fp, #0
d00456c4:	da9a      	bge.n	d00455fc <drawFakeHorizon+0xc8>
d00456c6:	2a00      	cmp	r2, #0
d00456c8:	d141      	bne.n	d004574e <drawFakeHorizon+0x21a>
d00456ca:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d00456ce:	f104 0401 	add.w	r4, r4, #1
d00456d2:	f5c2 72a0 	rsb	r2, r2, #320	; 0x140
d00456d6:	4628      	mov	r0, r5
d00456d8:	bfa8      	it	ge
d00456da:	2201      	movge	r2, #1
d00456dc:	4641      	mov	r1, r8
d00456de:	f001 fac1 	bl	d0046c64 <memset>
d00456e2:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d00456e6:	d1b0      	bne.n	d004564a <drawFakeHorizon+0x116>
d00456e8:	eddf 7a3b 	vldr	s15, [pc, #236]	; d00457d8 <drawFakeHorizon+0x2a4>
d00456ec:	eeb4 bae7 	vcmpe.f32	s22, s15
d00456f0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00456f4:	da31      	bge.n	d004575a <drawFakeHorizon+0x226>
d00456f6:	b003      	add	sp, #12
d00456f8:	ecbd 8b0c 	vpop	{d8-d13}
d00456fc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0045700:	b93a      	cbnz	r2, d0045712 <drawFakeHorizon+0x1de>
d0045702:	22a0      	movs	r2, #160	; 0xa0
d0045704:	4628      	mov	r0, r5
d0045706:	4639      	mov	r1, r7
d0045708:	4415      	add	r5, r2
d004570a:	f001 faab 	bl	d0046c64 <memset>
d004570e:	22a0      	movs	r2, #160	; 0xa0
d0045710:	e7db      	b.n	d00456ca <drawFakeHorizon+0x196>
d0045712:	f04f 0aa0 	mov.w	sl, #160	; 0xa0
d0045716:	e77d      	b.n	d0045614 <drawFakeHorizon+0xe0>
d0045718:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d004571c:	6832      	ldr	r2, [r6, #0]
d004571e:	eb02 1585 	add.w	r5, r2, r5, lsl #6
d0045722:	4639      	mov	r1, r7
d0045724:	4628      	mov	r0, r5
d0045726:	f44f 72a0 	mov.w	r2, #320	; 0x140
d004572a:	f001 fa9b 	bl	d0046c64 <memset>
d004572e:	e788      	b.n	d0045642 <drawFakeHorizon+0x10e>
d0045730:	f1bb 0f00 	cmp.w	fp, #0
d0045734:	d00e      	beq.n	d0045754 <drawFakeHorizon+0x220>
d0045736:	4628      	mov	r0, r5
d0045738:	4652      	mov	r2, sl
d004573a:	4639      	mov	r1, r7
d004573c:	4455      	add	r5, sl
d004573e:	f001 fa91 	bl	d0046c64 <memset>
d0045742:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d0045746:	f6bf af7c 	bge.w	d0045642 <drawFakeHorizon+0x10e>
d004574a:	4652      	mov	r2, sl
d004574c:	e7bd      	b.n	d00456ca <drawFakeHorizon+0x196>
d004574e:	f04f 0a00 	mov.w	sl, #0
d0045752:	e76c      	b.n	d004562e <drawFakeHorizon+0xfa>
d0045754:	46da      	mov	sl, fp
d0045756:	4652      	mov	r2, sl
d0045758:	e7b7      	b.n	d00456ca <drawFakeHorizon+0x196>
d004575a:	ed9f 7a1d 	vldr	s14, [pc, #116]	; d00457d0 <drawFakeHorizon+0x29c>
d004575e:	f240 12df 	movw	r2, #479	; 0x1df
d0045762:	eddf 7a1e 	vldr	s15, [pc, #120]	; d00457dc <drawFakeHorizon+0x2a8>
d0045766:	2000      	movs	r0, #0
d0045768:	ee6b ba87 	vmul.f32	s23, s23, s14
d004576c:	ed9f 7a1c 	vldr	s14, [pc, #112]	; d00457e0 <drawFakeHorizon+0x2ac>
d0045770:	eddf 6a14 	vldr	s13, [pc, #80]	; d00457c4 <drawFakeHorizon+0x290>
d0045774:	f8cd 9000 	str.w	r9, [sp]
d0045778:	eeb0 6a6b 	vmov.f32	s12, s23
d004577c:	eeed ba87 	vfma.f32	s23, s27, s14
d0045780:	eead 6aa7 	vfma.f32	s12, s27, s15
d0045784:	eecb 7a8d 	vdiv.f32	s15, s23, s26
d0045788:	ee86 7a0d 	vdiv.f32	s14, s12, s26
d004578c:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0045790:	fefc 7ae7 	vcvta.s32.f32	s15, s15
d0045794:	ee37 7a26 	vadd.f32	s14, s14, s13
d0045798:	ee17 3a90 	vmov	r3, s15
d004579c:	febc 7ac7 	vcvta.s32.f32	s14, s14
d00457a0:	ee17 1a10 	vmov	r1, s14
d00457a4:	f7fb fb26 	bl	d0040df4 <drawLine>
d00457a8:	b003      	add	sp, #12
d00457aa:	ecbd 8b0c 	vpop	{d8-d13}
d00457ae:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00457b2:	4770      	bx	lr
d00457b4:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00457b8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00457bc:	ddb1      	ble.n	d0045722 <drawFakeHorizon+0x1ee>
d00457be:	4641      	mov	r1, r8
d00457c0:	e7b0      	b.n	d0045724 <drawFakeHorizon+0x1f0>
d00457c2:	bf00      	nop
d00457c4:	43200000 	.word	0x43200000
d00457c8:	c31f0000 	.word	0xc31f0000
d00457cc:	3b888889 	.word	0x3b888889
d00457d0:	43700000 	.word	0x43700000
d00457d4:	d012da64 	.word	0xd012da64
d00457d8:	38d1b717 	.word	0x38d1b717
d00457dc:	c3700000 	.word	0xc3700000
d00457e0:	436f0000 	.word	0x436f0000

d00457e4 <submitEntitySolid>:
d00457e4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00457e8:	ed2d 8b10 	vpush	{d8-d15}
d00457ec:	b0b3      	sub	sp, #204	; 0xcc
d00457ee:	f10d 036f 	add.w	r3, sp, #111	; 0x6f
d00457f2:	9104      	str	r1, [sp, #16]
d00457f4:	f023 031f 	bic.w	r3, r3, #31
d00457f8:	9305      	str	r3, [sp, #20]
d00457fa:	2800      	cmp	r0, #0
d00457fc:	f000 827c 	beq.w	d0045cf8 <submitEntitySolid+0x514>
d0045800:	f8d0 800c 	ldr.w	r8, [r0, #12]
d0045804:	4604      	mov	r4, r0
d0045806:	f1b8 0f00 	cmp.w	r8, #0
d004580a:	f000 8275 	beq.w	d0045cf8 <submitEntitySolid+0x514>
d004580e:	f8d8 3000 	ldr.w	r3, [r8]
d0045812:	2b00      	cmp	r3, #0
d0045814:	f000 8270 	beq.w	d0045cf8 <submitEntitySolid+0x514>
d0045818:	f8d8 3010 	ldr.w	r3, [r8, #16]
d004581c:	2b00      	cmp	r3, #0
d004581e:	f000 826b 	beq.w	d0045cf8 <submitEntitySolid+0x514>
d0045822:	f8d8 3004 	ldr.w	r3, [r8, #4]
d0045826:	3b01      	subs	r3, #1
d0045828:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d004582c:	f080 8264 	bcs.w	d0045cf8 <submitEntitySolid+0x514>
d0045830:	f8d8 3014 	ldr.w	r3, [r8, #20]
d0045834:	2b00      	cmp	r3, #0
d0045836:	f340 825f 	ble.w	d0045cf8 <submitEntitySolid+0x514>
d004583a:	460f      	mov	r7, r1
d004583c:	edd1 aa11 	vldr	s21, [r1, #68]	; 0x44
d0045840:	ed91 fa10 	vldr	s30, [r1, #64]	; 0x40
d0045844:	f7fe ff48 	bl	d00446d8 <lightsGet>
d0045848:	900b      	str	r0, [sp, #44]	; 0x2c
d004584a:	f7fe ff49 	bl	d00446e0 <lightsGetCount>
d004584e:	edd8 fa09 	vldr	s31, [r8, #36]	; 0x24
d0045852:	edd8 7a0a 	vldr	s15, [r8, #40]	; 0x28
d0045856:	eef5 fac0 	vcmpe.f32	s31, #0.0
d004585a:	ed98 7a08 	vldr	s14, [r8, #32]
d004585e:	f8d8 3004 	ldr.w	r3, [r8, #4]
d0045862:	ed8d 7a01 	vstr	s14, [sp, #4]
d0045866:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004586a:	ed98 7a0c 	vldr	s14, [r8, #48]	; 0x30
d004586e:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0045872:	ed94 6a00 	vldr	s12, [r4]
d0045876:	ed8d 7a09 	vstr	s14, [sp, #36]	; 0x24
d004587a:	bfcc      	ite	gt
d004587c:	2601      	movgt	r6, #1
d004587e:	2600      	movle	r6, #0
d0045880:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045884:	ed98 7a0b 	vldr	s14, [r8, #44]	; 0x2c
d0045888:	edd4 5a01 	vldr	s11, [r4, #4]
d004588c:	ed94 5a02 	vldr	s10, [r4, #8]
d0045890:	bfcc      	ite	gt
d0045892:	2501      	movgt	r5, #1
d0045894:	2500      	movle	r5, #0
d0045896:	2b00      	cmp	r3, #0
d0045898:	edd4 4a07 	vldr	s9, [r4, #28]
d004589c:	ed94 4a08 	vldr	s8, [r4, #32]
d00458a0:	edd4 3a09 	vldr	s7, [r4, #36]	; 0x24
d00458a4:	ed94 3a0a 	vldr	s6, [r4, #40]	; 0x28
d00458a8:	edd4 2a0b 	vldr	s5, [r4, #44]	; 0x2c
d00458ac:	ed94 2a0c 	vldr	s4, [r4, #48]	; 0x30
d00458b0:	edd4 1a04 	vldr	s3, [r4, #16]
d00458b4:	ed94 1a05 	vldr	s2, [r4, #20]
d00458b8:	edd4 0a06 	vldr	s1, [r4, #24]
d00458bc:	edd7 ca00 	vldr	s25, [r7]
d00458c0:	ed97 da01 	vldr	s26, [r7, #4]
d00458c4:	edd7 da02 	vldr	s27, [r7, #8]
d00458c8:	ed97 0a06 	vldr	s0, [r7, #24]
d00458cc:	ed97 8a07 	vldr	s16, [r7, #28]
d00458d0:	edd7 8a08 	vldr	s17, [r7, #32]
d00458d4:	ed97 9a09 	vldr	s18, [r7, #36]	; 0x24
d00458d8:	edd7 9a0a 	vldr	s19, [r7, #40]	; 0x28
d00458dc:	ed97 aa0b 	vldr	s20, [r7, #44]	; 0x2c
d00458e0:	edcd 7a0a 	vstr	s15, [sp, #40]	; 0x28
d00458e4:	9007      	str	r0, [sp, #28]
d00458e6:	ed8d 7a08 	vstr	s14, [sp, #32]
d00458ea:	ed97 ba0c 	vldr	s22, [r7, #48]	; 0x30
d00458ee:	edd7 ba0d 	vldr	s23, [r7, #52]	; 0x34
d00458f2:	ed97 ca0e 	vldr	s24, [r7, #56]	; 0x38
d00458f6:	dd51      	ble.n	d004599c <submitEntitySolid+0x1b8>
d00458f8:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d00458fc:	f8d8 3000 	ldr.w	r3, [r8]
d0045900:	49de      	ldr	r1, [pc, #888]	; (d0045c7c <submitEntitySolid+0x498>)
d0045902:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d0045906:	4ade      	ldr	r2, [pc, #888]	; (d0045c80 <submitEntitySolid+0x49c>)
d0045908:	edd3 7a01 	vldr	s15, [r3, #4]
d004590c:	330c      	adds	r3, #12
d004590e:	ed53 ea03 	vldr	s29, [r3, #-12]
d0045912:	310c      	adds	r1, #12
d0045914:	ee27 7aa2 	vmul.f32	s14, s15, s5
d0045918:	ed53 6a01 	vldr	s13, [r3, #-4]
d004591c:	ee27 ea83 	vmul.f32	s28, s15, s6
d0045920:	4298      	cmp	r0, r3
d0045922:	ee67 7a82 	vmul.f32	s15, s15, s4
d0045926:	f102 020c 	add.w	r2, r2, #12
d004592a:	eeae 7a84 	vfma.f32	s14, s29, s8
d004592e:	eeae eaa4 	vfma.f32	s28, s29, s9
d0045932:	eeee 7aa3 	vfma.f32	s15, s29, s7
d0045936:	ee35 7a87 	vadd.f32	s14, s11, s14
d004593a:	ee36 ea0e 	vadd.f32	s28, s12, s28
d004593e:	ee75 7a27 	vadd.f32	s15, s10, s15
d0045942:	eea6 7a81 	vfma.f32	s14, s13, s2
d0045946:	eea6 eaa1 	vfma.f32	s28, s13, s3
d004594a:	eee6 7aa0 	vfma.f32	s15, s13, s1
d004594e:	eef0 ea47 	vmov.f32	s29, s14
d0045952:	ee37 7a4d 	vsub.f32	s14, s14, s26
d0045956:	ed01 ea03 	vstr	s28, [r1, #-12]
d004595a:	ee7e 6a6c 	vsub.f32	s13, s28, s25
d004595e:	ed41 7a01 	vstr	s15, [r1, #-4]
d0045962:	ee37 eaed 	vsub.f32	s28, s15, s27
d0045966:	ed41 ea02 	vstr	s29, [r1, #-8]
d004596a:	ee69 7a87 	vmul.f32	s15, s19, s14
d004596e:	ee68 ea07 	vmul.f32	s29, s16, s14
d0045972:	ee2b 7a87 	vmul.f32	s14, s23, s14
d0045976:	eee9 7a26 	vfma.f32	s15, s18, s13
d004597a:	eee0 ea26 	vfma.f32	s29, s0, s13
d004597e:	eeab 7a26 	vfma.f32	s14, s22, s13
d0045982:	eeea 7a0e 	vfma.f32	s15, s20, s28
d0045986:	eee8 ea8e 	vfma.f32	s29, s17, s28
d004598a:	eeac 7a0e 	vfma.f32	s14, s24, s28
d004598e:	ed42 7a02 	vstr	s15, [r2, #-8]
d0045992:	ed42 ea03 	vstr	s29, [r2, #-12]
d0045996:	ed02 7a01 	vstr	s14, [r2, #-4]
d004599a:	d1b5      	bne.n	d0045908 <submitEntitySolid+0x124>
d004599c:	f8d8 3014 	ldr.w	r3, [r8, #20]
d00459a0:	2b00      	cmp	r3, #0
d00459a2:	9302      	str	r3, [sp, #8]
d00459a4:	f340 81a8 	ble.w	d0045cf8 <submitEntitySolid+0x514>
d00459a8:	ea46 0305 	orr.w	r3, r6, r5
d00459ac:	ed9d ba0a 	vldr	s22, [sp, #40]	; 0x28
d00459b0:	f04f 0900 	mov.w	r9, #0
d00459b4:	edcd ca0a 	vstr	s25, [sp, #40]	; 0x28
d00459b8:	eddf eab2 	vldr	s29, [pc, #712]	; d0045c84 <submitEntitySolid+0x4a0>
d00459bc:	eddd ca01 	vldr	s25, [sp, #4]
d00459c0:	ed8d da0c 	vstr	s26, [sp, #48]	; 0x30
d00459c4:	9306      	str	r3, [sp, #24]
d00459c6:	ed9d da09 	vldr	s26, [sp, #36]	; 0x24
d00459ca:	f8cd 800c 	str.w	r8, [sp, #12]
d00459ce:	edcd da09 	vstr	s27, [sp, #36]	; 0x24
d00459d2:	9a03      	ldr	r2, [sp, #12]
d00459d4:	ea4f 1309 	mov.w	r3, r9, lsl #4
d00459d8:	4ea9      	ldr	r6, [pc, #676]	; (d0045c80 <submitEntitySolid+0x49c>)
d00459da:	6915      	ldr	r5, [r2, #16]
d00459dc:	58e8      	ldr	r0, [r5, r3]
d00459de:	eb05 1509 	add.w	r5, r5, r9, lsl #4
d00459e2:	4633      	mov	r3, r6
d00459e4:	eb00 0440 	add.w	r4, r0, r0, lsl #1
d00459e8:	686a      	ldr	r2, [r5, #4]
d00459ea:	68af      	ldr	r7, [r5, #8]
d00459ec:	0041      	lsls	r1, r0, #1
d00459ee:	eb06 0484 	add.w	r4, r6, r4, lsl #2
d00459f2:	9701      	str	r7, [sp, #4]
d00459f4:	eb02 0642 	add.w	r6, r2, r2, lsl #1
d00459f8:	edd4 4a02 	vldr	s9, [r4, #8]
d00459fc:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d0045a00:	eb03 0686 	add.w	r6, r3, r6, lsl #2
d0045a04:	eef4 4aea 	vcmpe.f32	s9, s21
d0045a08:	eb03 0787 	add.w	r7, r3, r7, lsl #2
d0045a0c:	9b01      	ldr	r3, [sp, #4]
d0045a0e:	ea4f 0842 	mov.w	r8, r2, lsl #1
d0045a12:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045a16:	ea4f 0b43 	mov.w	fp, r3, lsl #1
d0045a1a:	dd0e      	ble.n	d0045a3a <submitEntitySolid+0x256>
d0045a1c:	edd6 7a02 	vldr	s15, [r6, #8]
d0045a20:	eef4 7aea 	vcmpe.f32	s15, s21
d0045a24:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045a28:	dd07      	ble.n	d0045a3a <submitEntitySolid+0x256>
d0045a2a:	edd7 7a02 	vldr	s15, [r7, #8]
d0045a2e:	eef4 7aea 	vcmpe.f32	s15, s21
d0045a32:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045a36:	f300 8159 	bgt.w	d0045cec <submitEntitySolid+0x508>
d0045a3a:	ed94 5a00 	vldr	s10, [r4]
d0045a3e:	edd4 2a02 	vldr	s5, [r4, #8]
d0045a42:	ed96 4a00 	vldr	s8, [r6]
d0045a46:	ed97 6a02 	vldr	s12, [r7, #8]
d0045a4a:	ee34 1a45 	vsub.f32	s2, s8, s10
d0045a4e:	edd4 7a01 	vldr	s15, [r4, #4]
d0045a52:	ee36 6a62 	vsub.f32	s12, s12, s5
d0045a56:	ed96 3a02 	vldr	s6, [r6, #8]
d0045a5a:	edd7 6a01 	vldr	s13, [r7, #4]
d0045a5e:	edd7 3a00 	vldr	s7, [r7]
d0045a62:	ee33 3a62 	vsub.f32	s6, s6, s5
d0045a66:	ee76 6ae7 	vsub.f32	s13, s13, s15
d0045a6a:	edd6 5a01 	vldr	s11, [r6, #4]
d0045a6e:	ee33 7ac5 	vsub.f32	s14, s7, s10
d0045a72:	ee66 1a41 	vnmul.f32	s3, s12, s2
d0045a76:	ee75 5ae7 	vsub.f32	s11, s11, s15
d0045a7a:	ee26 2ac3 	vnmul.f32	s4, s13, s6
d0045a7e:	eee3 1a07 	vfma.f32	s3, s6, s14
d0045a82:	ee27 7a65 	vnmul.f32	s14, s14, s11
d0045a86:	eea5 2a86 	vfma.f32	s4, s11, s12
d0045a8a:	eea1 7a26 	vfma.f32	s14, s2, s13
d0045a8e:	ee67 7aa1 	vmul.f32	s15, s15, s3
d0045a92:	eee5 7a02 	vfma.f32	s15, s10, s4
d0045a96:	eee2 7a87 	vfma.f32	s15, s5, s14
d0045a9a:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0045a9e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045aa2:	f280 8123 	bge.w	d0045cec <submitEntitySolid+0x508>
d0045aa6:	180b      	adds	r3, r1, r0
d0045aa8:	9901      	ldr	r1, [sp, #4]
d0045aaa:	f8df e1d0 	ldr.w	lr, [pc, #464]	; d0045c7c <submitEntitySolid+0x498>
d0045aae:	eb08 0c02 	add.w	ip, r8, r2
d0045ab2:	eb0b 0a01 	add.w	sl, fp, r1
d0045ab6:	eb0e 0383 	add.w	r3, lr, r3, lsl #2
d0045aba:	eb0e 0c8c 	add.w	ip, lr, ip, lsl #2
d0045abe:	eb0e 0a8a 	add.w	sl, lr, sl, lsl #2
d0045ac2:	ed93 7a00 	vldr	s14, [r3]
d0045ac6:	ed93 6a02 	vldr	s12, [r3, #8]
d0045aca:	eddc 5a00 	vldr	s11, [ip]
d0045ace:	ed9a 1a02 	vldr	s2, [sl, #8]
d0045ad2:	ee75 0ac7 	vsub.f32	s1, s11, s14
d0045ad6:	edd3 6a01 	vldr	s13, [r3, #4]
d0045ada:	ee31 0a46 	vsub.f32	s0, s2, s12
d0045ade:	eddc 2a02 	vldr	s5, [ip, #8]
d0045ae2:	edda 1a01 	vldr	s3, [sl, #4]
d0045ae6:	ed9a 2a00 	vldr	s4, [sl]
d0045aea:	ee32 aac6 	vsub.f32	s20, s5, s12
d0045aee:	ee71 7ae6 	vsub.f32	s15, s3, s13
d0045af2:	ed9c 3a01 	vldr	s6, [ip, #4]
d0045af6:	ee32 8a47 	vsub.f32	s16, s4, s14
d0045afa:	ee20 9a60 	vnmul.f32	s18, s0, s1
d0045afe:	ee73 9a66 	vsub.f32	s19, s6, s13
d0045b02:	ee67 8aca 	vnmul.f32	s17, s15, s20
d0045b06:	eeaa 9a08 	vfma.f32	s18, s20, s16
d0045b0a:	ee28 8a69 	vnmul.f32	s16, s16, s19
d0045b0e:	eee9 8a80 	vfma.f32	s17, s19, s0
d0045b12:	eea0 8aa7 	vfma.f32	s16, s1, s15
d0045b16:	ee69 7a09 	vmul.f32	s15, s18, s18
d0045b1a:	eee8 7aa8 	vfma.f32	s15, s17, s17
d0045b1e:	eee8 7a08 	vfma.f32	s15, s16, s16
d0045b22:	eef4 7aee 	vcmpe.f32	s15, s29
d0045b26:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045b2a:	f240 80df 	bls.w	d0045cec <submitEntitySolid+0x508>
d0045b2e:	eddf 0a59 	vldr	s1, [pc, #356]	; d0045c94 <submitEntitySolid+0x4b0>
d0045b32:	eef4 7ae0 	vcmpe.f32	s15, s1
d0045b36:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045b3a:	f100 822b 	bmi.w	d0045f94 <submitEntitySolid+0x7b0>
d0045b3e:	eddf 0a56 	vldr	s1, [pc, #344]	; d0045c98 <submitEntitySolid+0x4b4>
d0045b42:	eef4 7a60 	vcmp.f32	s15, s1
d0045b46:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045b4a:	f300 8223 	bgt.w	d0045f94 <submitEntitySolid+0x7b0>
d0045b4e:	7b6b      	ldrb	r3, [r5, #13]
d0045b50:	eef4 4acf 	vcmpe.f32	s9, s30
d0045b54:	eddf 7a4c 	vldr	s15, [pc, #304]	; d0045c88 <submitEntitySolid+0x4a4>
d0045b58:	ee7c 9a8d 	vadd.f32	s19, s25, s26
d0045b5c:	ee0a 3a10 	vmov	s20, r3
d0045b60:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045b64:	eeb8 aa4a 	vcvt.f32.u32	s20, s20
d0045b68:	ee2a aa27 	vmul.f32	s20, s20, s15
d0045b6c:	f2c0 80c9 	blt.w	d0045d02 <submitEntitySolid+0x51e>
d0045b70:	4490      	add	r8, r2
d0045b72:	4b43      	ldr	r3, [pc, #268]	; (d0045c80 <submitEntitySolid+0x49c>)
d0045b74:	eb03 0888 	add.w	r8, r3, r8, lsl #2
d0045b78:	edd8 7a02 	vldr	s15, [r8, #8]
d0045b7c:	eef4 7acf 	vcmpe.f32	s15, s30
d0045b80:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045b84:	f2c0 80bd 	blt.w	d0045d02 <submitEntitySolid+0x51e>
d0045b88:	9901      	ldr	r1, [sp, #4]
d0045b8a:	448b      	add	fp, r1
d0045b8c:	4619      	mov	r1, r3
d0045b8e:	eb03 0b8b 	add.w	fp, r3, fp, lsl #2
d0045b92:	eddb 0a02 	vldr	s1, [fp, #8]
d0045b96:	eef4 0acf 	vcmpe.f32	s1, s30
d0045b9a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045b9e:	f2c0 80b0 	blt.w	d0045d02 <submitEntitySolid+0x51e>
d0045ba2:	eeb1 0a64 	vneg.f32	s0, s9
d0045ba6:	eeb4 0a45 	vcmp.f32	s0, s10
d0045baa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045bae:	f200 80a8 	bhi.w	d0045d02 <submitEntitySolid+0x51e>
d0045bb2:	eef4 4a45 	vcmp.f32	s9, s10
d0045bb6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045bba:	f2c0 80a2 	blt.w	d0045d02 <submitEntitySolid+0x51e>
d0045bbe:	eeb1 5a67 	vneg.f32	s10, s15
d0045bc2:	eeb4 5a44 	vcmp.f32	s10, s8
d0045bc6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045bca:	f200 809a 	bhi.w	d0045d02 <submitEntitySolid+0x51e>
d0045bce:	eef4 7a44 	vcmp.f32	s15, s8
d0045bd2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045bd6:	f2c0 8094 	blt.w	d0045d02 <submitEntitySolid+0x51e>
d0045bda:	eeb1 5a60 	vneg.f32	s10, s1
d0045bde:	eeb4 5a63 	vcmp.f32	s10, s7
d0045be2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045be6:	f200 808c 	bhi.w	d0045d02 <submitEntitySolid+0x51e>
d0045bea:	eef4 0a63 	vcmp.f32	s1, s7
d0045bee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045bf2:	f2c0 8086 	blt.w	d0045d02 <submitEntitySolid+0x51e>
d0045bf6:	ed9f 5a25 	vldr	s10, [pc, #148]	; d0045c8c <submitEntitySolid+0x4a8>
d0045bfa:	230c      	movs	r3, #12
d0045bfc:	ee64 4a85 	vmul.f32	s9, s9, s10
d0045c00:	fb03 1000 	mla	r0, r3, r0, r1
d0045c04:	ed90 5a01 	vldr	s10, [r0, #4]
d0045c08:	eeb1 4a64 	vneg.f32	s8, s9
d0045c0c:	eeb4 5a44 	vcmp.f32	s10, s8
d0045c10:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045c14:	db75      	blt.n	d0045d02 <submitEntitySolid+0x51e>
d0045c16:	eeb4 5a64 	vcmp.f32	s10, s9
d0045c1a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045c1e:	d870      	bhi.n	d0045d02 <submitEntitySolid+0x51e>
d0045c20:	ed9f 5a1a 	vldr	s10, [pc, #104]	; d0045c8c <submitEntitySolid+0x4a8>
d0045c24:	fb03 1202 	mla	r2, r3, r2, r1
d0045c28:	ee67 7a85 	vmul.f32	s15, s15, s10
d0045c2c:	edd2 4a01 	vldr	s9, [r2, #4]
d0045c30:	eeb1 4a67 	vneg.f32	s8, s15
d0045c34:	eef4 4a44 	vcmp.f32	s9, s8
d0045c38:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045c3c:	db61      	blt.n	d0045d02 <submitEntitySolid+0x51e>
d0045c3e:	eef4 4a67 	vcmp.f32	s9, s15
d0045c42:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045c46:	d85c      	bhi.n	d0045d02 <submitEntitySolid+0x51e>
d0045c48:	ee60 0a85 	vmul.f32	s1, s1, s10
d0045c4c:	9a01      	ldr	r2, [sp, #4]
d0045c4e:	fb03 1102 	mla	r1, r3, r2, r1
d0045c52:	eeb1 5a60 	vneg.f32	s10, s1
d0045c56:	edd1 7a01 	vldr	s15, [r1, #4]
d0045c5a:	eef4 7a45 	vcmp.f32	s15, s10
d0045c5e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045c62:	db4e      	blt.n	d0045d02 <submitEntitySolid+0x51e>
d0045c64:	eef4 7ae0 	vcmpe.f32	s15, s1
d0045c68:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045c6c:	d849      	bhi.n	d0045d02 <submitEntitySolid+0x51e>
d0045c6e:	9b06      	ldr	r3, [sp, #24]
d0045c70:	b1b3      	cbz	r3, d0045ca0 <submitEntitySolid+0x4bc>
d0045c72:	9b07      	ldr	r3, [sp, #28]
d0045c74:	2b00      	cmp	r3, #0
d0045c76:	f300 828a 	bgt.w	d004618e <submitEntitySolid+0x9aa>
d0045c7a:	e011      	b.n	d0045ca0 <submitEntitySolid+0x4bc>
d0045c7c:	d01215c0 	.word	0xd01215c0
d0045c80:	d0095580 	.word	0xd0095580
d0045c84:	358637bd 	.word	0x358637bd
d0045c88:	3b808081 	.word	0x3b808081
d0045c8c:	3f2aaaab 	.word	0x3f2aaaab
d0045c90:	3eaaaaab 	.word	0x3eaaaaab
d0045c94:	3f7fbe77 	.word	0x3f7fbe77
d0045c98:	3f8020c5 	.word	0x3f8020c5
d0045c9c:	00000000 	.word	0x00000000
d0045ca0:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0045ca4:	fe8a 0a29 	vmaxnm.f32	s0, s20, s19
d0045ca8:	fe80 0a67 	vminnm.f32	s0, s0, s15
d0045cac:	f7fe fce8 	bl	d0044680 <brightnessToShadeF>
d0045cb0:	eeb0 8a40 	vmov.f32	s16, s0
d0045cb4:	eef0 4a48 	vmov.f32	s9, s16
d0045cb8:	7b6a      	ldrb	r2, [r5, #13]
d0045cba:	7b29      	ldrb	r1, [r5, #12]
d0045cbc:	9804      	ldr	r0, [sp, #16]
d0045cbe:	ed97 3a00 	vldr	s6, [r7]
d0045cc2:	edd7 3a01 	vldr	s7, [r7, #4]
d0045cc6:	ed97 4a02 	vldr	s8, [r7, #8]
d0045cca:	edd6 1a00 	vldr	s3, [r6]
d0045cce:	ed96 2a01 	vldr	s4, [r6, #4]
d0045cd2:	edd6 2a02 	vldr	s5, [r6, #8]
d0045cd6:	ed94 0a00 	vldr	s0, [r4]
d0045cda:	edd4 0a01 	vldr	s1, [r4, #4]
d0045cde:	ed94 1a02 	vldr	s2, [r4, #8]
d0045ce2:	f7ff fa1f 	bl	d0045124 <submitClippedTri>
d0045ce6:	9b03      	ldr	r3, [sp, #12]
d0045ce8:	695b      	ldr	r3, [r3, #20]
d0045cea:	9302      	str	r3, [sp, #8]
d0045cec:	f109 0901 	add.w	r9, r9, #1
d0045cf0:	9b02      	ldr	r3, [sp, #8]
d0045cf2:	4599      	cmp	r9, r3
d0045cf4:	f6ff ae6d 	blt.w	d00459d2 <submitEntitySolid+0x1ee>
d0045cf8:	b033      	add	sp, #204	; 0xcc
d0045cfa:	ecbd 8b10 	vpop	{d8-d15}
d0045cfe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0045d02:	9b06      	ldr	r3, [sp, #24]
d0045d04:	2b00      	cmp	r3, #0
d0045d06:	f000 8152 	beq.w	d0045fae <submitEntitySolid+0x7ca>
d0045d0a:	9b07      	ldr	r3, [sp, #28]
d0045d0c:	2b00      	cmp	r3, #0
d0045d0e:	f340 814e 	ble.w	d0045fae <submitEntitySolid+0x7ca>
d0045d12:	f04f 0800 	mov.w	r8, #0
d0045d16:	ee75 ba87 	vadd.f32	s23, s11, s14
d0045d1a:	ed5f 7a23 	vldr	s15, [pc, #-140]	; d0045c90 <submitEntitySolid+0x4ac>
d0045d1e:	ee33 ca26 	vadd.f32	s24, s6, s13
d0045d22:	ee32 ea86 	vadd.f32	s28, s5, s12
d0045d26:	eeb5 bac0 	vcmpe.f32	s22, #0.0
d0045d2a:	ee7b ba82 	vadd.f32	s23, s23, s4
d0045d2e:	ee3c ca21 	vadd.f32	s24, s24, s3
d0045d32:	ee3e ea01 	vadd.f32	s28, s28, s2
d0045d36:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045d3a:	ee6b baa7 	vmul.f32	s23, s23, s15
d0045d3e:	ee2c ca27 	vmul.f32	s24, s24, s15
d0045d42:	ee2e ea27 	vmul.f32	s28, s28, s15
d0045d46:	f340 818b 	ble.w	d0046060 <submitEntitySolid+0x87c>
d0045d4a:	eddd 7a0c 	vldr	s15, [sp, #48]	; 0x30
d0045d4e:	ee77 2acc 	vsub.f32	s5, s15, s24
d0045d52:	eddd 7a0a 	vldr	s15, [sp, #40]	; 0x28
d0045d56:	ee37 3aeb 	vsub.f32	s6, s15, s23
d0045d5a:	eddd 7a09 	vldr	s15, [sp, #36]	; 0x24
d0045d5e:	ee77 4ace 	vsub.f32	s9, s15, s28
d0045d62:	ee62 7aa2 	vmul.f32	s15, s5, s5
d0045d66:	eee3 7a03 	vfma.f32	s15, s6, s6
d0045d6a:	eee4 7aa4 	vfma.f32	s15, s9, s9
d0045d6e:	eef4 7aee 	vcmpe.f32	s15, s29
d0045d72:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045d76:	f340 8173 	ble.w	d0046060 <submitEntitySolid+0x87c>
d0045d7a:	ed1f 7a3a 	vldr	s14, [pc, #-232]	; d0045c94 <submitEntitySolid+0x4b0>
d0045d7e:	eef4 7ac7 	vcmpe.f32	s15, s14
d0045d82:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045d86:	f100 81e2 	bmi.w	d004614e <submitEntitySolid+0x96a>
d0045d8a:	ed1f 7a3d 	vldr	s14, [pc, #-244]	; d0045c98 <submitEntitySolid+0x4b4>
d0045d8e:	eef4 7a47 	vcmp.f32	s15, s14
d0045d92:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045d96:	f300 81da 	bgt.w	d004614e <submitEntitySolid+0x96a>
d0045d9a:	ee79 1a09 	vadd.f32	s3, s18, s18
d0045d9e:	4642      	mov	r2, r8
d0045da0:	ee38 2a08 	vadd.f32	s4, s16, s16
d0045da4:	46b8      	mov	r8, r7
d0045da6:	eef0 6a6c 	vmov.f32	s13, s25
d0045daa:	4637      	mov	r7, r6
d0045dac:	eef0 7a61 	vmov.f32	s15, s3
d0045db0:	4626      	mov	r6, r4
d0045db2:	eeb0 7a42 	vmov.f32	s14, s4
d0045db6:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
d0045dba:	eef0 ca64 	vmov.f32	s25, s9
d0045dbe:	f04f 0b00 	mov.w	fp, #0
d0045dc2:	eef0 4a6a 	vmov.f32	s9, s21
d0045dc6:	9c07      	ldr	r4, [sp, #28]
d0045dc8:	eef0 aa62 	vmov.f32	s21, s5
d0045dcc:	eeb0 2a4d 	vmov.f32	s4, s26
d0045dd0:	eef0 1a4a 	vmov.f32	s3, s20
d0045dd4:	ee38 1aa8 	vadd.f32	s2, s17, s17
d0045dd8:	eeb0 aa43 	vmov.f32	s20, s6
d0045ddc:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0045de0:	eeb0 3a4f 	vmov.f32	s6, s30
d0045de4:	eef2 da00 	vmov.f32	s27, #32	; 0x41000000  8.0
d0045de8:	eeb0 fa67 	vmov.f32	s30, s15
d0045dec:	eeb0 da47 	vmov.f32	s26, s14
d0045df0:	eef0 2a66 	vmov.f32	s5, s13
d0045df4:	e0b6      	b.n	d0045f64 <submitEntitySolid+0x780>
d0045df6:	edda 7a02 	vldr	s15, [sl, #8]
d0045dfa:	edda 6a01 	vldr	s13, [sl, #4]
d0045dfe:	ee77 7acc 	vsub.f32	s15, s15, s24
d0045e02:	ed9a 7a03 	vldr	s14, [sl, #12]
d0045e06:	ee76 6aeb 	vsub.f32	s13, s13, s23
d0045e0a:	edda 5a0a 	vldr	s11, [sl, #40]	; 0x28
d0045e0e:	ee37 7a4e 	vsub.f32	s14, s14, s28
d0045e12:	ee27 6aa7 	vmul.f32	s12, s15, s15
d0045e16:	ee25 4aa5 	vmul.f32	s8, s11, s11
d0045e1a:	eea6 6aa6 	vfma.f32	s12, s13, s13
d0045e1e:	eea7 6a07 	vfma.f32	s12, s14, s14
d0045e22:	eeb4 6a6e 	vcmp.f32	s12, s29
d0045e26:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045e2a:	f340 8094 	ble.w	d0045f56 <submitEntitySolid+0x772>
d0045e2e:	eeb4 4a46 	vcmp.f32	s8, s12
d0045e32:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045e36:	f340 808e 	ble.w	d0045f56 <submitEntitySolid+0x772>
d0045e3a:	eeb1 0ac6 	vsqrt.f32	s0, s12
d0045e3e:	edda 3a08 	vldr	s7, [sl, #32]
d0045e42:	ee63 0aa3 	vmul.f32	s1, s7, s7
d0045e46:	eef4 0ac6 	vcmpe.f32	s1, s12
d0045e4a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045e4e:	ee85 4a00 	vdiv.f32	s8, s10, s0
d0045e52:	ee66 6a84 	vmul.f32	s13, s13, s8
d0045e56:	ee67 7a84 	vmul.f32	s15, s15, s8
d0045e5a:	ee27 7a04 	vmul.f32	s14, s14, s8
d0045e5e:	f140 8123 	bpl.w	d00460a8 <submitEntitySolid+0x8c4>
d0045e62:	edda 0a09 	vldr	s1, [sl, #36]	; 0x24
d0045e66:	eef4 3ae0 	vcmpe.f32	s7, s1
d0045e6a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045e6e:	da72      	bge.n	d0045f56 <submitEntitySolid+0x772>
d0045e70:	eef4 5ae0 	vcmpe.f32	s11, s1
d0045e74:	ee26 6a04 	vmul.f32	s12, s12, s8
d0045e78:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045e7c:	eef4 0ac6 	vcmpe.f32	s1, s12
d0045e80:	f200 814d 	bhi.w	d004611e <submitEntitySolid+0x93a>
d0045e84:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045e88:	d965      	bls.n	d0045f56 <submitEntitySolid+0x772>
d0045e8a:	ee36 6a63 	vsub.f32	s12, s12, s7
d0045e8e:	ee70 3ae3 	vsub.f32	s7, s1, s7
d0045e92:	eec6 5a23 	vdiv.f32	s11, s12, s7
d0045e96:	ed1f 6a7f 	vldr	s12, [pc, #-508]	; d0045c9c <submitEntitySolid+0x4b8>
d0045e9a:	fe85 6a86 	vmaxnm.f32	s12, s11, s12
d0045e9e:	fe86 6a45 	vminnm.f32	s12, s12, s10
d0045ea2:	ee35 6a46 	vsub.f32	s12, s10, s12
d0045ea6:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d0045eaa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045eae:	d952      	bls.n	d0045f56 <submitEntitySolid+0x772>
d0045eb0:	ee69 5a27 	vmul.f32	s11, s18, s15
d0045eb4:	eee8 5aa6 	vfma.f32	s11, s17, s13
d0045eb8:	eee8 5a07 	vfma.f32	s11, s16, s14
d0045ebc:	eef5 5ac0 	vcmpe.f32	s11, #0.0
d0045ec0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045ec4:	d947      	bls.n	d0045f56 <submitEntitySolid+0x772>
d0045ec6:	eef5 fac0 	vcmpe.f32	s31, #0.0
d0045eca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045ece:	dd07      	ble.n	d0045ee0 <submitEntitySolid+0x6fc>
d0045ed0:	ed9a 4a07 	vldr	s8, [sl, #28]
d0045ed4:	ee2f 4a84 	vmul.f32	s8, s31, s8
d0045ed8:	ee24 4a06 	vmul.f32	s8, s8, s12
d0045edc:	eee5 9a84 	vfma.f32	s19, s11, s8
d0045ee0:	eeb5 bac0 	vcmpe.f32	s22, #0.0
d0045ee4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045ee8:	dd2f      	ble.n	d0045f4a <submitEntitySolid+0x766>
d0045eea:	eed5 7a8f 	vfnms.f32	s15, s11, s30
d0045eee:	eed5 6a81 	vfnms.f32	s13, s11, s2
d0045ef2:	ee95 7a8d 	vfnms.f32	s14, s11, s26
d0045ef6:	ee2a 0aa7 	vmul.f32	s0, s21, s15
d0045efa:	eeaa 0a26 	vfma.f32	s0, s20, s13
d0045efe:	eeac 0a87 	vfma.f32	s0, s25, s14
d0045f02:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0045f06:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045f0a:	dd1e      	ble.n	d0045f4a <submitEntitySolid+0x766>
d0045f0c:	eddd 7a08 	vldr	s15, [sp, #32]
d0045f10:	eef4 7a6d 	vcmp.f32	s15, s27
d0045f14:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045f18:	d009      	beq.n	d0045f2e <submitEntitySolid+0x74a>
d0045f1a:	eeb3 7a00 	vmov.f32	s14, #48	; 0x41800000  16.0
d0045f1e:	eef4 7a47 	vcmp.f32	s15, s14
d0045f22:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045f26:	f040 80c2 	bne.w	d00460ae <submitEntitySolid+0x8ca>
d0045f2a:	ee20 0a00 	vmul.f32	s0, s0, s0
d0045f2e:	ee20 0a00 	vmul.f32	s0, s0, s0
d0045f32:	ee20 0a00 	vmul.f32	s0, s0, s0
d0045f36:	ee20 0a00 	vmul.f32	s0, s0, s0
d0045f3a:	edda 7a07 	vldr	s15, [sl, #28]
d0045f3e:	ee6b 7a27 	vmul.f32	s15, s22, s15
d0045f42:	ee27 6a86 	vmul.f32	s12, s15, s12
d0045f46:	eee6 9a00 	vfma.f32	s19, s12, s0
d0045f4a:	eef4 9ac5 	vcmpe.f32	s19, s10
d0045f4e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045f52:	f280 80d3 	bge.w	d00460fc <submitEntitySolid+0x918>
d0045f56:	f10b 0b01 	add.w	fp, fp, #1
d0045f5a:	f10a 0a40 	add.w	sl, sl, #64	; 0x40
d0045f5e:	455c      	cmp	r4, fp
d0045f60:	f340 8085 	ble.w	d004606e <submitEntitySolid+0x88a>
d0045f64:	f8da 302c 	ldr.w	r3, [sl, #44]	; 0x2c
d0045f68:	2b00      	cmp	r3, #0
d0045f6a:	d0f4      	beq.n	d0045f56 <submitEntitySolid+0x772>
d0045f6c:	f89a 3000 	ldrb.w	r3, [sl]
d0045f70:	2b00      	cmp	r3, #0
d0045f72:	f43f af40 	beq.w	d0045df6 <submitEntitySolid+0x612>
d0045f76:	edda 6a04 	vldr	s13, [sl, #16]
d0045f7a:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0045f7e:	edda 7a05 	vldr	s15, [sl, #20]
d0045f82:	ed9a 7a06 	vldr	s14, [sl, #24]
d0045f86:	eef1 6a66 	vneg.f32	s13, s13
d0045f8a:	eef1 7a67 	vneg.f32	s15, s15
d0045f8e:	eeb1 7a47 	vneg.f32	s14, s14
d0045f92:	e78d      	b.n	d0045eb0 <submitEntitySolid+0x6cc>
d0045f94:	eef1 0ae7 	vsqrt.f32	s1, s15
d0045f98:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0045f9c:	eec0 7a20 	vdiv.f32	s15, s0, s1
d0045fa0:	ee68 8aa7 	vmul.f32	s17, s17, s15
d0045fa4:	ee29 9a27 	vmul.f32	s18, s18, s15
d0045fa8:	ee28 8a27 	vmul.f32	s16, s16, s15
d0045fac:	e5cf      	b.n	d0045b4e <submitEntitySolid+0x36a>
d0045fae:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0045fb2:	fe8a 0a29 	vmaxnm.f32	s0, s20, s19
d0045fb6:	fe80 0a67 	vminnm.f32	s0, s0, s15
d0045fba:	f7fe fb61 	bl	d0044680 <brightnessToShadeF>
d0045fbe:	eeb0 8a40 	vmov.f32	s16, s0
d0045fc2:	f8dd a010 	ldr.w	sl, [sp, #16]
d0045fc6:	f8dd 8014 	ldr.w	r8, [sp, #20]
d0045fca:	4651      	mov	r1, sl
d0045fcc:	ed97 3a00 	vldr	s6, [r7]
d0045fd0:	4640      	mov	r0, r8
d0045fd2:	edd7 3a01 	vldr	s7, [r7, #4]
d0045fd6:	ed97 4a02 	vldr	s8, [r7, #8]
d0045fda:	edd6 1a00 	vldr	s3, [r6]
d0045fde:	ed96 2a01 	vldr	s4, [r6, #4]
d0045fe2:	edd6 2a02 	vldr	s5, [r6, #8]
d0045fe6:	ed94 0a00 	vldr	s0, [r4]
d0045fea:	edd4 0a01 	vldr	s1, [r4, #4]
d0045fee:	ed94 1a02 	vldr	s2, [r4, #8]
d0045ff2:	f7fe fc3b 	bl	d004486c <clipTriangleToFrustum>
d0045ff6:	2802      	cmp	r0, #2
d0045ff8:	dc09      	bgt.n	d004600e <submitEntitySolid+0x82a>
d0045ffa:	9b03      	ldr	r3, [sp, #12]
d0045ffc:	f109 0901 	add.w	r9, r9, #1
d0046000:	695b      	ldr	r3, [r3, #20]
d0046002:	9302      	str	r3, [sp, #8]
d0046004:	9b02      	ldr	r3, [sp, #8]
d0046006:	4599      	cmp	r9, r3
d0046008:	f6ff ace3 	blt.w	d00459d2 <submitEntitySolid+0x1ee>
d004600c:	e674      	b.n	d0045cf8 <submitEntitySolid+0x514>
d004600e:	eef0 4a48 	vmov.f32	s9, s16
d0046012:	1e44      	subs	r4, r0, #1
d0046014:	2601      	movs	r6, #1
d0046016:	4647      	mov	r7, r8
d0046018:	4650      	mov	r0, sl
d004601a:	4633      	mov	r3, r6
d004601c:	3601      	adds	r6, #1
d004601e:	7b6a      	ldrb	r2, [r5, #13]
d0046020:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0046024:	7b29      	ldrb	r1, [r5, #12]
d0046026:	eb06 0c46 	add.w	ip, r6, r6, lsl #1
d004602a:	ed97 0a00 	vldr	s0, [r7]
d004602e:	eb07 0383 	add.w	r3, r7, r3, lsl #2
d0046032:	edd7 0a01 	vldr	s1, [r7, #4]
d0046036:	eb07 0c8c 	add.w	ip, r7, ip, lsl #2
d004603a:	ed97 1a02 	vldr	s2, [r7, #8]
d004603e:	edd3 1a00 	vldr	s3, [r3]
d0046042:	ed93 2a01 	vldr	s4, [r3, #4]
d0046046:	edd3 2a02 	vldr	s5, [r3, #8]
d004604a:	ed9c 3a00 	vldr	s6, [ip]
d004604e:	eddc 3a01 	vldr	s7, [ip, #4]
d0046052:	ed9c 4a02 	vldr	s8, [ip, #8]
d0046056:	f7ff f865 	bl	d0045124 <submitClippedTri>
d004605a:	42a6      	cmp	r6, r4
d004605c:	d1dd      	bne.n	d004601a <submitEntitySolid+0x836>
d004605e:	e7cc      	b.n	d0045ffa <submitEntitySolid+0x816>
d0046060:	eddf 4a4c 	vldr	s9, [pc, #304]	; d0046194 <submitEntitySolid+0x9b0>
d0046064:	eef0 2a64 	vmov.f32	s5, s9
d0046068:	eeb0 3a64 	vmov.f32	s6, s9
d004606c:	e695      	b.n	d0045d9a <submitEntitySolid+0x5b6>
d004606e:	eef0 aa64 	vmov.f32	s21, s9
d0046072:	4634      	mov	r4, r6
d0046074:	eeb0 fa43 	vmov.f32	s30, s6
d0046078:	463e      	mov	r6, r7
d004607a:	eef0 ca62 	vmov.f32	s25, s5
d004607e:	4647      	mov	r7, r8
d0046080:	eeb0 da42 	vmov.f32	s26, s4
d0046084:	4690      	mov	r8, r2
d0046086:	eeb0 aa61 	vmov.f32	s20, s3
d004608a:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d004608e:	fe89 0a8a 	vmaxnm.f32	s0, s19, s20
d0046092:	fe80 0a67 	vminnm.f32	s0, s0, s15
d0046096:	f7fe faf3 	bl	d0044680 <brightnessToShadeF>
d004609a:	eeb0 8a40 	vmov.f32	s16, s0
d004609e:	f1b8 0f00 	cmp.w	r8, #0
d00460a2:	f47f ae07 	bne.w	d0045cb4 <submitEntitySolid+0x4d0>
d00460a6:	e78c      	b.n	d0045fc2 <submitEntitySolid+0x7de>
d00460a8:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d00460ac:	e700      	b.n	d0045eb0 <submitEntitySolid+0x6cc>
d00460ae:	eef0 0a67 	vmov.f32	s1, s15
d00460b2:	ed8d 1a13 	vstr	s2, [sp, #76]	; 0x4c
d00460b6:	9212      	str	r2, [sp, #72]	; 0x48
d00460b8:	edcd 1a11 	vstr	s3, [sp, #68]	; 0x44
d00460bc:	ed8d 2a10 	vstr	s4, [sp, #64]	; 0x40
d00460c0:	edcd 2a0f 	vstr	s5, [sp, #60]	; 0x3c
d00460c4:	ed8d 3a0e 	vstr	s6, [sp, #56]	; 0x38
d00460c8:	edcd 4a0d 	vstr	s9, [sp, #52]	; 0x34
d00460cc:	ed8d 5a02 	vstr	s10, [sp, #8]
d00460d0:	ed8d 6a01 	vstr	s12, [sp, #4]
d00460d4:	f7fc fdcc 	bl	d0042c70 <powf>
d00460d8:	ed9d 1a13 	vldr	s2, [sp, #76]	; 0x4c
d00460dc:	9a12      	ldr	r2, [sp, #72]	; 0x48
d00460de:	eddd 1a11 	vldr	s3, [sp, #68]	; 0x44
d00460e2:	ed9d 2a10 	vldr	s4, [sp, #64]	; 0x40
d00460e6:	eddd 2a0f 	vldr	s5, [sp, #60]	; 0x3c
d00460ea:	ed9d 3a0e 	vldr	s6, [sp, #56]	; 0x38
d00460ee:	eddd 4a0d 	vldr	s9, [sp, #52]	; 0x34
d00460f2:	ed9d 5a02 	vldr	s10, [sp, #8]
d00460f6:	ed9d 6a01 	vldr	s12, [sp, #4]
d00460fa:	e71e      	b.n	d0045f3a <submitEntitySolid+0x756>
d00460fc:	4634      	mov	r4, r6
d00460fe:	eef0 aa64 	vmov.f32	s21, s9
d0046102:	463e      	mov	r6, r7
d0046104:	eeb0 fa43 	vmov.f32	s30, s6
d0046108:	4647      	mov	r7, r8
d004610a:	eef0 ca62 	vmov.f32	s25, s5
d004610e:	eeb0 da42 	vmov.f32	s26, s4
d0046112:	4690      	mov	r8, r2
d0046114:	eeb0 aa61 	vmov.f32	s20, s3
d0046118:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d004611c:	e7b5      	b.n	d004608a <submitEntitySolid+0x8a6>
d004611e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046122:	db21      	blt.n	d0046168 <submitEntitySolid+0x984>
d0046124:	ee36 6a63 	vsub.f32	s12, s12, s7
d0046128:	ee70 3ae3 	vsub.f32	s7, s1, s7
d004612c:	eeb6 4a08 	vmov.f32	s8, #104	; 0x3f400000  0.750
d0046130:	eec6 5a23 	vdiv.f32	s11, s12, s7
d0046134:	ed9f 6a17 	vldr	s12, [pc, #92]	; d0046194 <submitEntitySolid+0x9b0>
d0046138:	fe85 6a86 	vmaxnm.f32	s12, s11, s12
d004613c:	eef0 5a45 	vmov.f32	s11, s10
d0046140:	fe86 6a45 	vminnm.f32	s12, s12, s10
d0046144:	eee6 5a44 	vfms.f32	s11, s12, s8
d0046148:	eeb0 6a65 	vmov.f32	s12, s11
d004614c:	e6ab      	b.n	d0045ea6 <submitEntitySolid+0x6c2>
d004614e:	eeb1 7ae7 	vsqrt.f32	s14, s15
d0046152:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0046156:	eec6 7a87 	vdiv.f32	s15, s13, s14
d004615a:	ee23 3a27 	vmul.f32	s6, s6, s15
d004615e:	ee62 2aa7 	vmul.f32	s5, s5, s15
d0046162:	ee64 4aa7 	vmul.f32	s9, s9, s15
d0046166:	e618      	b.n	d0045d9a <submitEntitySolid+0x5b6>
d0046168:	ee36 6a60 	vsub.f32	s12, s12, s1
d004616c:	ee75 5ae0 	vsub.f32	s11, s11, s1
d0046170:	ee86 4a25 	vdiv.f32	s8, s12, s11
d0046174:	ed9f 6a07 	vldr	s12, [pc, #28]	; d0046194 <submitEntitySolid+0x9b0>
d0046178:	eef5 5a00 	vmov.f32	s11, #80	; 0x3e800000  0.250
d004617c:	fe84 6a06 	vmaxnm.f32	s12, s8, s12
d0046180:	fe86 6a45 	vminnm.f32	s12, s12, s10
d0046184:	ee35 6a46 	vsub.f32	s12, s10, s12
d0046188:	ee26 6a25 	vmul.f32	s12, s12, s11
d004618c:	e68b      	b.n	d0045ea6 <submitEntitySolid+0x6c2>
d004618e:	f04f 0801 	mov.w	r8, #1
d0046192:	e5c0      	b.n	d0045d16 <submitEntitySolid+0x532>
d0046194:	00000000 	.word	0x00000000

d0046198 <submitWorldEntities>:
d0046198:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d004619c:	4c30      	ldr	r4, [pc, #192]	; (d0046260 <submitWorldEntities+0xc8>)
d004619e:	b09d      	sub	sp, #116	; 0x74
d00461a0:	f04f 0800 	mov.w	r8, #0
d00461a4:	f8df 90bc 	ldr.w	r9, [pc, #188]	; d0046264 <submitWorldEntities+0xcc>
d00461a8:	4605      	mov	r5, r0
d00461aa:	f504 46c0 	add.w	r6, r4, #24576	; 0x6000
d00461ae:	f100 0710 	add.w	r7, r0, #16
d00461b2:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d00461b6:	2b00      	cmp	r3, #0
d00461b8:	d03f      	beq.n	d004623a <submitWorldEntities+0xa2>
d00461ba:	68e3      	ldr	r3, [r4, #12]
d00461bc:	2250      	movs	r2, #80	; 0x50
d00461be:	4639      	mov	r1, r7
d00461c0:	4668      	mov	r0, sp
d00461c2:	b3d3      	cbz	r3, d004623a <submitWorldEntities+0xa2>
d00461c4:	f894 3035 	ldrb.w	r3, [r4, #53]	; 0x35
d00461c8:	07db      	lsls	r3, r3, #31
d00461ca:	d536      	bpl.n	d004623a <submitWorldEntities+0xa2>
d00461cc:	ed94 0a00 	vldr	s0, [r4]
d00461d0:	edd4 0a01 	vldr	s1, [r4, #4]
d00461d4:	ed94 1a02 	vldr	s2, [r4, #8]
d00461d8:	ed8d 0a17 	vstr	s0, [sp, #92]	; 0x5c
d00461dc:	edcd 0a16 	vstr	s1, [sp, #88]	; 0x58
d00461e0:	ed8d 1a15 	vstr	s2, [sp, #84]	; 0x54
d00461e4:	f000 fd30 	bl	d0046c48 <memcpy>
d00461e8:	ed9d 1a15 	vldr	s2, [sp, #84]	; 0x54
d00461ec:	ed9d 0a17 	vldr	s0, [sp, #92]	; 0x5c
d00461f0:	eddd 0a16 	vldr	s1, [sp, #88]	; 0x58
d00461f4:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d00461f8:	f7fd fa94 	bl	d0043724 <worldToCamera>
d00461fc:	68e3      	ldr	r3, [r4, #12]
d00461fe:	ed95 7a11 	vldr	s14, [r5, #68]	; 0x44
d0046202:	edd3 7a06 	vldr	s15, [r3, #24]
d0046206:	ed8d 0a19 	vstr	s0, [sp, #100]	; 0x64
d004620a:	ee71 6a67 	vsub.f32	s13, s2, s15
d004620e:	edcd 0a1a 	vstr	s1, [sp, #104]	; 0x68
d0046212:	ee71 7a27 	vadd.f32	s15, s2, s15
d0046216:	ed8d 1a1b 	vstr	s2, [sp, #108]	; 0x6c
d004621a:	eef4 6ac7 	vcmpe.f32	s13, s14
d004621e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046222:	dc0a      	bgt.n	d004623a <submitWorldEntities+0xa2>
d0046224:	ed95 7a10 	vldr	s14, [r5, #64]	; 0x40
d0046228:	eef4 7ac7 	vcmpe.f32	s15, s14
d004622c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046230:	d403      	bmi.n	d004623a <submitWorldEntities+0xa2>
d0046232:	f849 4028 	str.w	r4, [r9, r8, lsl #2]
d0046236:	f108 0801 	add.w	r8, r8, #1
d004623a:	3460      	adds	r4, #96	; 0x60
d004623c:	42b4      	cmp	r4, r6
d004623e:	d1b8      	bne.n	d00461b2 <submitWorldEntities+0x1a>
d0046240:	f1b8 0f00 	cmp.w	r8, #0
d0046244:	d009      	beq.n	d004625a <submitWorldEntities+0xc2>
d0046246:	4c07      	ldr	r4, [pc, #28]	; (d0046264 <submitWorldEntities+0xcc>)
d0046248:	eb04 0888 	add.w	r8, r4, r8, lsl #2
d004624c:	f854 0b04 	ldr.w	r0, [r4], #4
d0046250:	4629      	mov	r1, r5
d0046252:	f7ff fac7 	bl	d00457e4 <submitEntitySolid>
d0046256:	45a0      	cmp	r8, r4
d0046258:	d1f8      	bne.n	d004624c <submitWorldEntities+0xb4>
d004625a:	b01d      	add	sp, #116	; 0x74
d004625c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0046260:	d012da80 	.word	0xd012da80
d0046264:	d012d5c0 	.word	0xd012d5c0

d0046268 <Render3D>:
d0046268:	b5f0      	push	{r4, r5, r6, r7, lr}
d004626a:	4604      	mov	r4, r0
d004626c:	4e6d      	ldr	r6, [pc, #436]	; (d0046424 <Render3D+0x1bc>)
d004626e:	2700      	movs	r7, #0
d0046270:	ed2d 8b02 	vpush	{d8}
d0046274:	b087      	sub	sp, #28
d0046276:	6037      	str	r7, [r6, #0]
d0046278:	f7ff ff8e 	bl	d0046198 <submitWorldEntities>
d004627c:	4620      	mov	r0, r4
d004627e:	f7fc fdb5 	bl	d0042dec <sb3dParticlesRender>
d0046282:	4b69      	ldr	r3, [pc, #420]	; (d0046428 <Render3D+0x1c0>)
d0046284:	681d      	ldr	r5, [r3, #0]
d0046286:	2d00      	cmp	r5, #0
d0046288:	d04d      	beq.n	d0046326 <Render3D+0xbe>
d004628a:	6833      	ldr	r3, [r6, #0]
d004628c:	42bb      	cmp	r3, r7
d004628e:	dd46      	ble.n	d004631e <Render3D+0xb6>
d0046290:	eeb6 8a00 	vmov.f32	s16, #96	; 0x3f000000  0.5
d0046294:	4c65      	ldr	r4, [pc, #404]	; (d004642c <Render3D+0x1c4>)
d0046296:	eddf 8a66 	vldr	s17, [pc, #408]	; d0046430 <Render3D+0x1c8>
d004629a:	edd4 7a07 	vldr	s15, [r4, #28]
d004629e:	3701      	adds	r7, #1
d00462a0:	f894 3035 	ldrb.w	r3, [r4, #53]	; 0x35
d00462a4:	ee77 7a88 	vadd.f32	s15, s15, s16
d00462a8:	ee07 3a10 	vmov	s14, r3
d00462ac:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00462b0:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d00462b4:	ee17 1a90 	vmov	r1, s15
d00462b8:	eef0 7a48 	vmov.f32	s15, s16
d00462bc:	2904      	cmp	r1, #4
d00462be:	eee7 7a28 	vfma.f32	s15, s14, s17
d00462c2:	bfa8      	it	ge
d00462c4:	2104      	movge	r1, #4
d00462c6:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d00462ca:	b153      	cbz	r3, d00462e2 <Render3D+0x7a>
d00462cc:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00462d0:	ee17 3a90 	vmov	r3, s15
d00462d4:	f1c3 0305 	rsb	r3, r3, #5
d00462d8:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d00462dc:	4299      	cmp	r1, r3
d00462de:	bfa8      	it	ge
d00462e0:	4619      	movge	r1, r3
d00462e2:	f894 0034 	ldrb.w	r0, [r4, #52]	; 0x34
d00462e6:	f7fa fdd3 	bl	d0040e90 <shadeColor>
d00462ea:	4605      	mov	r5, r0
d00462ec:	68e3      	ldr	r3, [r4, #12]
d00462ee:	68a2      	ldr	r2, [r4, #8]
d00462f0:	6861      	ldr	r1, [r4, #4]
d00462f2:	9000      	str	r0, [sp, #0]
d00462f4:	6820      	ldr	r0, [r4, #0]
d00462f6:	f7fa fd7d 	bl	d0040df4 <drawLine>
d00462fa:	9500      	str	r5, [sp, #0]
d00462fc:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
d0046300:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
d0046304:	f7fa fd76 	bl	d0040df4 <drawLine>
d0046308:	9500      	str	r5, [sp, #0]
d004630a:	e9d4 2300 	ldrd	r2, r3, [r4]
d004630e:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
d0046312:	f7fa fd6f 	bl	d0040df4 <drawLine>
d0046316:	6833      	ldr	r3, [r6, #0]
d0046318:	3440      	adds	r4, #64	; 0x40
d004631a:	42bb      	cmp	r3, r7
d004631c:	dcbd      	bgt.n	d004629a <Render3D+0x32>
d004631e:	b007      	add	sp, #28
d0046320:	ecbd 8b02 	vpop	{d8}
d0046324:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0046326:	f7fa fd47 	bl	d0040db8 <resetDepthBuffer>
d004632a:	4b42      	ldr	r3, [pc, #264]	; (d0046434 <Render3D+0x1cc>)
d004632c:	681f      	ldr	r7, [r3, #0]
d004632e:	b33f      	cbz	r7, d0046380 <Render3D+0x118>
d0046330:	6833      	ldr	r3, [r6, #0]
d0046332:	2b00      	cmp	r3, #0
d0046334:	ddf3      	ble.n	d004631e <Render3D+0xb6>
d0046336:	4c3d      	ldr	r4, [pc, #244]	; (d004642c <Render3D+0x1c4>)
d0046338:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d004633c:	3501      	adds	r5, #1
d004633e:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d0046340:	8c21      	ldrh	r1, [r4, #32]
d0046342:	6962      	ldr	r2, [r4, #20]
d0046344:	8ca7      	ldrh	r7, [r4, #36]	; 0x24
d0046346:	9305      	str	r3, [sp, #20]
d0046348:	9704      	str	r7, [sp, #16]
d004634a:	9003      	str	r0, [sp, #12]
d004634c:	9102      	str	r1, [sp, #8]
d004634e:	9201      	str	r2, [sp, #4]
d0046350:	6923      	ldr	r3, [r4, #16]
d0046352:	9300      	str	r3, [sp, #0]
d0046354:	edd4 1a07 	vldr	s3, [r4, #28]
d0046358:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d004635c:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0046360:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0046364:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d0046368:	e9d4 0100 	ldrd	r0, r1, [r4]
d004636c:	f7fa fda0 	bl	d0040eb0 <fillTriangleFlat>
d0046370:	6833      	ldr	r3, [r6, #0]
d0046372:	3440      	adds	r4, #64	; 0x40
d0046374:	42ab      	cmp	r3, r5
d0046376:	dcdf      	bgt.n	d0046338 <Render3D+0xd0>
d0046378:	b007      	add	sp, #28
d004637a:	ecbd 8b02 	vpop	{d8}
d004637e:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0046380:	4b2d      	ldr	r3, [pc, #180]	; (d0046438 <Render3D+0x1d0>)
d0046382:	681d      	ldr	r5, [r3, #0]
d0046384:	6833      	ldr	r3, [r6, #0]
d0046386:	b335      	cbz	r5, d00463d6 <Render3D+0x16e>
d0046388:	2b00      	cmp	r3, #0
d004638a:	ddc8      	ble.n	d004631e <Render3D+0xb6>
d004638c:	4c27      	ldr	r4, [pc, #156]	; (d004642c <Render3D+0x1c4>)
d004638e:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0046392:	3701      	adds	r7, #1
d0046394:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d0046396:	8c21      	ldrh	r1, [r4, #32]
d0046398:	6962      	ldr	r2, [r4, #20]
d004639a:	8ca5      	ldrh	r5, [r4, #36]	; 0x24
d004639c:	9305      	str	r3, [sp, #20]
d004639e:	6923      	ldr	r3, [r4, #16]
d00463a0:	9504      	str	r5, [sp, #16]
d00463a2:	9003      	str	r0, [sp, #12]
d00463a4:	9102      	str	r1, [sp, #8]
d00463a6:	9201      	str	r2, [sp, #4]
d00463a8:	9300      	str	r3, [sp, #0]
d00463aa:	edd4 1a07 	vldr	s3, [r4, #28]
d00463ae:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00463b2:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00463b6:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00463ba:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d00463be:	e9d4 0100 	ldrd	r0, r1, [r4]
d00463c2:	f7fb fe41 	bl	d0042048 <fillTriangleDitherBayer2Mode>
d00463c6:	6833      	ldr	r3, [r6, #0]
d00463c8:	3440      	adds	r4, #64	; 0x40
d00463ca:	42bb      	cmp	r3, r7
d00463cc:	dcdf      	bgt.n	d004638e <Render3D+0x126>
d00463ce:	b007      	add	sp, #28
d00463d0:	ecbd 8b02 	vpop	{d8}
d00463d4:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00463d6:	2b00      	cmp	r3, #0
d00463d8:	dda1      	ble.n	d004631e <Render3D+0xb6>
d00463da:	4c14      	ldr	r4, [pc, #80]	; (d004642c <Render3D+0x1c4>)
d00463dc:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d00463e0:	3501      	adds	r5, #1
d00463e2:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d00463e4:	8c21      	ldrh	r1, [r4, #32]
d00463e6:	6962      	ldr	r2, [r4, #20]
d00463e8:	8ca7      	ldrh	r7, [r4, #36]	; 0x24
d00463ea:	9305      	str	r3, [sp, #20]
d00463ec:	6923      	ldr	r3, [r4, #16]
d00463ee:	9704      	str	r7, [sp, #16]
d00463f0:	9003      	str	r0, [sp, #12]
d00463f2:	9102      	str	r1, [sp, #8]
d00463f4:	9201      	str	r2, [sp, #4]
d00463f6:	9300      	str	r3, [sp, #0]
d00463f8:	edd4 1a07 	vldr	s3, [r4, #28]
d00463fc:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0046400:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0046404:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0046408:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d004640c:	e9d4 0100 	ldrd	r0, r1, [r4]
d0046410:	f7fb f95c 	bl	d00416cc <fillTriangleDitherBayer>
d0046414:	6833      	ldr	r3, [r6, #0]
d0046416:	3440      	adds	r4, #64	; 0x40
d0046418:	42ab      	cmp	r3, r5
d004641a:	dcdf      	bgt.n	d00463dc <Render3D+0x174>
d004641c:	b007      	add	sp, #28
d004641e:	ecbd 8b02 	vpop	{d8}
d0046422:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0046424:	d00a1584 	.word	0xd00a1584
d0046428:	d01215a4 	.word	0xd01215a4
d004642c:	d00a15a0 	.word	0xd00a15a0
d0046430:	3ca0a0a1 	.word	0x3ca0a0a1
d0046434:	d00a1580 	.word	0xd00a1580
d0046438:	d01215a0 	.word	0xd01215a0

d004643c <loadMeshSB3D>:
d004643c:	2800      	cmp	r0, #0
d004643e:	d07a      	beq.n	d0046536 <loadMeshSB3D+0xfa>
d0046440:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0046444:	460d      	mov	r5, r1
d0046446:	4601      	mov	r1, r0
d0046448:	fab5 f085 	clz	r0, r5
d004644c:	ed2d 8b02 	vpush	{d8}
d0046450:	0940      	lsrs	r0, r0, #5
d0046452:	b08c      	sub	sp, #48	; 0x30
d0046454:	2d00      	cmp	r5, #0
d0046456:	d068      	beq.n	d004652a <loadMeshSB3D+0xee>
d0046458:	4c6c      	ldr	r4, [pc, #432]	; (d004660c <loadMeshSB3D+0x1d0>)
d004645a:	2201      	movs	r2, #1
d004645c:	eeb0 8a40 	vmov.f32	s16, s0
d0046460:	7923      	ldrb	r3, [r4, #4]
d0046462:	7966      	ldrb	r6, [r4, #5]
d0046464:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d0046468:	79a6      	ldrb	r6, [r4, #6]
d004646a:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d004646e:	79e6      	ldrb	r6, [r4, #7]
d0046470:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d0046474:	681b      	ldr	r3, [r3, #0]
d0046476:	681b      	ldr	r3, [r3, #0]
d0046478:	4798      	blx	r3
d004647a:	2800      	cmp	r0, #0
d004647c:	d155      	bne.n	d004652a <loadMeshSB3D+0xee>
d004647e:	f894 c004 	ldrb.w	ip, [r4, #4]
d0046482:	2204      	movs	r2, #4
d0046484:	7961      	ldrb	r1, [r4, #5]
d0046486:	ab02      	add	r3, sp, #8
d0046488:	79a7      	ldrb	r7, [r4, #6]
d004648a:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d004648e:	79e6      	ldrb	r6, [r4, #7]
d0046490:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0046494:	a903      	add	r1, sp, #12
d0046496:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d004649a:	6836      	ldr	r6, [r6, #0]
d004649c:	68b6      	ldr	r6, [r6, #8]
d004649e:	47b0      	blx	r6
d00464a0:	2800      	cmp	r0, #0
d00464a2:	d13f      	bne.n	d0046524 <loadMeshSB3D+0xe8>
d00464a4:	4b5a      	ldr	r3, [pc, #360]	; (d0046610 <loadMeshSB3D+0x1d4>)
d00464a6:	9a03      	ldr	r2, [sp, #12]
d00464a8:	429a      	cmp	r2, r3
d00464aa:	d13b      	bne.n	d0046524 <loadMeshSB3D+0xe8>
d00464ac:	f894 c004 	ldrb.w	ip, [r4, #4]
d00464b0:	ab02      	add	r3, sp, #8
d00464b2:	7961      	ldrb	r1, [r4, #5]
d00464b4:	2204      	movs	r2, #4
d00464b6:	79a7      	ldrb	r7, [r4, #6]
d00464b8:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d00464bc:	79e6      	ldrb	r6, [r4, #7]
d00464be:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d00464c2:	a904      	add	r1, sp, #16
d00464c4:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d00464c8:	6836      	ldr	r6, [r6, #0]
d00464ca:	68b6      	ldr	r6, [r6, #8]
d00464cc:	47b0      	blx	r6
d00464ce:	bb48      	cbnz	r0, d0046524 <loadMeshSB3D+0xe8>
d00464d0:	9b04      	ldr	r3, [sp, #16]
d00464d2:	2b02      	cmp	r3, #2
d00464d4:	d126      	bne.n	d0046524 <loadMeshSB3D+0xe8>
d00464d6:	f894 c004 	ldrb.w	ip, [r4, #4]
d00464da:	ab02      	add	r3, sp, #8
d00464dc:	7961      	ldrb	r1, [r4, #5]
d00464de:	2204      	movs	r2, #4
d00464e0:	79a7      	ldrb	r7, [r4, #6]
d00464e2:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d00464e6:	79e6      	ldrb	r6, [r4, #7]
d00464e8:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d00464ec:	a905      	add	r1, sp, #20
d00464ee:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d00464f2:	6836      	ldr	r6, [r6, #0]
d00464f4:	68b6      	ldr	r6, [r6, #8]
d00464f6:	47b0      	blx	r6
d00464f8:	b9a0      	cbnz	r0, d0046524 <loadMeshSB3D+0xe8>
d00464fa:	7921      	ldrb	r1, [r4, #4]
d00464fc:	ab02      	add	r3, sp, #8
d00464fe:	7966      	ldrb	r6, [r4, #5]
d0046500:	2204      	movs	r2, #4
d0046502:	79a7      	ldrb	r7, [r4, #6]
d0046504:	ea41 2106 	orr.w	r1, r1, r6, lsl #8
d0046508:	79e6      	ldrb	r6, [r4, #7]
d004650a:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d004650e:	a906      	add	r1, sp, #24
d0046510:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0046514:	6836      	ldr	r6, [r6, #0]
d0046516:	68b6      	ldr	r6, [r6, #8]
d0046518:	47b0      	blx	r6
d004651a:	b918      	cbnz	r0, d0046524 <loadMeshSB3D+0xe8>
d004651c:	9b05      	ldr	r3, [sp, #20]
d004651e:	b10b      	cbz	r3, d0046524 <loadMeshSB3D+0xe8>
d0046520:	9e06      	ldr	r6, [sp, #24]
d0046522:	b956      	cbnz	r6, d004653a <loadMeshSB3D+0xfe>
d0046524:	2000      	movs	r0, #0
d0046526:	f000 f997 	bl	d0046858 <fclose>
d004652a:	2000      	movs	r0, #0
d004652c:	b00c      	add	sp, #48	; 0x30
d004652e:	ecbd 8b02 	vpop	{d8}
d0046532:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0046536:	2000      	movs	r0, #0
d0046538:	4770      	bx	lr
d004653a:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d004653e:	2700      	movs	r7, #0
d0046540:	606b      	str	r3, [r5, #4]
d0046542:	616e      	str	r6, [r5, #20]
d0046544:	0080      	lsls	r0, r0, #2
d0046546:	60ef      	str	r7, [r5, #12]
d0046548:	f000 fb6e 	bl	d0046c28 <malloc>
d004654c:	4603      	mov	r3, r0
d004654e:	0130      	lsls	r0, r6, #4
d0046550:	461e      	mov	r6, r3
d0046552:	602b      	str	r3, [r5, #0]
d0046554:	f000 fb68 	bl	d0046c28 <malloc>
d0046558:	60af      	str	r7, [r5, #8]
d004655a:	6128      	str	r0, [r5, #16]
d004655c:	2e00      	cmp	r6, #0
d004655e:	f000 80f7 	beq.w	d0046750 <loadMeshSB3D+0x314>
d0046562:	2800      	cmp	r0, #0
d0046564:	f000 80e7 	beq.w	d0046736 <loadMeshSB3D+0x2fa>
d0046568:	46b8      	mov	r8, r7
d004656a:	e017      	b.n	d004659c <loadMeshSB3D+0x160>
d004656c:	eddd 6a09 	vldr	s13, [sp, #36]	; 0x24
d0046570:	ed9d 7a0a 	vldr	s14, [sp, #40]	; 0x28
d0046574:	eddd 7a0b 	vldr	s15, [sp, #44]	; 0x2c
d0046578:	ee66 6a88 	vmul.f32	s13, s13, s16
d004657c:	682b      	ldr	r3, [r5, #0]
d004657e:	ee27 7a08 	vmul.f32	s14, s14, s16
d0046582:	9905      	ldr	r1, [sp, #20]
d0046584:	ee67 7a88 	vmul.f32	s15, s15, s16
d0046588:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d004658c:	4541      	cmp	r1, r8
d004658e:	edc3 6a00 	vstr	s13, [r3]
d0046592:	ed83 7a01 	vstr	s14, [r3, #4]
d0046596:	edc3 7a02 	vstr	s15, [r3, #8]
d004659a:	d931      	bls.n	d0046600 <loadMeshSB3D+0x1c4>
d004659c:	f894 c004 	ldrb.w	ip, [r4, #4]
d00465a0:	220c      	movs	r2, #12
d00465a2:	7960      	ldrb	r0, [r4, #5]
d00465a4:	ab02      	add	r3, sp, #8
d00465a6:	79a7      	ldrb	r7, [r4, #6]
d00465a8:	a909      	add	r1, sp, #36	; 0x24
d00465aa:	ea4c 2000 	orr.w	r0, ip, r0, lsl #8
d00465ae:	79e6      	ldrb	r6, [r4, #7]
d00465b0:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d00465b4:	2000      	movs	r0, #0
d00465b6:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d00465ba:	6836      	ldr	r6, [r6, #0]
d00465bc:	68b6      	ldr	r6, [r6, #8]
d00465be:	47b0      	blx	r6
d00465c0:	eb08 0248 	add.w	r2, r8, r8, lsl #1
d00465c4:	f108 0801 	add.w	r8, r8, #1
d00465c8:	2800      	cmp	r0, #0
d00465ca:	d0cf      	beq.n	d004656c <loadMeshSB3D+0x130>
d00465cc:	6828      	ldr	r0, [r5, #0]
d00465ce:	b108      	cbz	r0, d00465d4 <loadMeshSB3D+0x198>
d00465d0:	f000 fb32 	bl	d0046c38 <free>
d00465d4:	6928      	ldr	r0, [r5, #16]
d00465d6:	b108      	cbz	r0, d00465dc <loadMeshSB3D+0x1a0>
d00465d8:	f000 fb2e 	bl	d0046c38 <free>
d00465dc:	68a8      	ldr	r0, [r5, #8]
d00465de:	b108      	cbz	r0, d00465e4 <loadMeshSB3D+0x1a8>
d00465e0:	f000 fb2a 	bl	d0046c38 <free>
d00465e4:	2400      	movs	r4, #0
d00465e6:	2300      	movs	r3, #0
d00465e8:	4620      	mov	r0, r4
d00465ea:	602c      	str	r4, [r5, #0]
d00465ec:	612c      	str	r4, [r5, #16]
d00465ee:	60ac      	str	r4, [r5, #8]
d00465f0:	606c      	str	r4, [r5, #4]
d00465f2:	616c      	str	r4, [r5, #20]
d00465f4:	60ec      	str	r4, [r5, #12]
d00465f6:	61ab      	str	r3, [r5, #24]
d00465f8:	f000 f92e 	bl	d0046858 <fclose>
d00465fc:	4620      	mov	r0, r4
d00465fe:	e795      	b.n	d004652c <loadMeshSB3D+0xf0>
d0046600:	9b06      	ldr	r3, [sp, #24]
d0046602:	2b00      	cmp	r3, #0
d0046604:	f000 808a 	beq.w	d004671c <loadMeshSB3D+0x2e0>
d0046608:	4606      	mov	r6, r0
d004660a:	e06e      	b.n	d00466ea <loadMeshSB3D+0x2ae>
d004660c:	2001f000 	.word	0x2001f000
d0046610:	44334253 	.word	0x44334253
d0046614:	f894 e004 	ldrb.w	lr, [r4, #4]
d0046618:	7967      	ldrb	r7, [r4, #5]
d004661a:	f894 c006 	ldrb.w	ip, [r4, #6]
d004661e:	ea4e 2e07 	orr.w	lr, lr, r7, lsl #8
d0046622:	79e7      	ldrb	r7, [r4, #7]
d0046624:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d0046628:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d004662c:	683f      	ldr	r7, [r7, #0]
d004662e:	68bf      	ldr	r7, [r7, #8]
d0046630:	47b8      	blx	r7
d0046632:	ab02      	add	r3, sp, #8
d0046634:	2204      	movs	r2, #4
d0046636:	a909      	add	r1, sp, #36	; 0x24
d0046638:	2800      	cmp	r0, #0
d004663a:	d1c7      	bne.n	d00465cc <loadMeshSB3D+0x190>
d004663c:	f894 e004 	ldrb.w	lr, [r4, #4]
d0046640:	7967      	ldrb	r7, [r4, #5]
d0046642:	f894 c006 	ldrb.w	ip, [r4, #6]
d0046646:	ea4e 2e07 	orr.w	lr, lr, r7, lsl #8
d004664a:	79e7      	ldrb	r7, [r4, #7]
d004664c:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d0046650:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0046654:	683f      	ldr	r7, [r7, #0]
d0046656:	68bf      	ldr	r7, [r7, #8]
d0046658:	47b8      	blx	r7
d004665a:	ab02      	add	r3, sp, #8
d004665c:	2201      	movs	r2, #1
d004665e:	f10d 0106 	add.w	r1, sp, #6
d0046662:	2800      	cmp	r0, #0
d0046664:	d1b2      	bne.n	d00465cc <loadMeshSB3D+0x190>
d0046666:	f894 e004 	ldrb.w	lr, [r4, #4]
d004666a:	7967      	ldrb	r7, [r4, #5]
d004666c:	f894 c006 	ldrb.w	ip, [r4, #6]
d0046670:	ea4e 2e07 	orr.w	lr, lr, r7, lsl #8
d0046674:	79e7      	ldrb	r7, [r4, #7]
d0046676:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d004667a:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d004667e:	683f      	ldr	r7, [r7, #0]
d0046680:	68bf      	ldr	r7, [r7, #8]
d0046682:	47b8      	blx	r7
d0046684:	ab02      	add	r3, sp, #8
d0046686:	2201      	movs	r2, #1
d0046688:	f10d 0107 	add.w	r1, sp, #7
d004668c:	2800      	cmp	r0, #0
d004668e:	d19d      	bne.n	d00465cc <loadMeshSB3D+0x190>
d0046690:	f894 e004 	ldrb.w	lr, [r4, #4]
d0046694:	7967      	ldrb	r7, [r4, #5]
d0046696:	f894 c006 	ldrb.w	ip, [r4, #6]
d004669a:	ea4e 2e07 	orr.w	lr, lr, r7, lsl #8
d004669e:	79e7      	ldrb	r7, [r4, #7]
d00466a0:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d00466a4:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d00466a8:	683f      	ldr	r7, [r7, #0]
d00466aa:	68bf      	ldr	r7, [r7, #8]
d00466ac:	47b8      	blx	r7
d00466ae:	0137      	lsls	r7, r6, #4
d00466b0:	2800      	cmp	r0, #0
d00466b2:	d18b      	bne.n	d00465cc <loadMeshSB3D+0x190>
d00466b4:	9a07      	ldr	r2, [sp, #28]
d00466b6:	9b05      	ldr	r3, [sp, #20]
d00466b8:	429a      	cmp	r2, r3
d00466ba:	d287      	bcs.n	d00465cc <loadMeshSB3D+0x190>
d00466bc:	9908      	ldr	r1, [sp, #32]
d00466be:	428b      	cmp	r3, r1
d00466c0:	d984      	bls.n	d00465cc <loadMeshSB3D+0x190>
d00466c2:	9809      	ldr	r0, [sp, #36]	; 0x24
d00466c4:	4283      	cmp	r3, r0
d00466c6:	d981      	bls.n	d00465cc <loadMeshSB3D+0x190>
d00466c8:	692b      	ldr	r3, [r5, #16]
d00466ca:	f8dd c018 	ldr.w	ip, [sp, #24]
d00466ce:	51da      	str	r2, [r3, r7]
d00466d0:	eb03 1306 	add.w	r3, r3, r6, lsl #4
d00466d4:	3601      	adds	r6, #1
d00466d6:	f89d 7006 	ldrb.w	r7, [sp, #6]
d00466da:	f89d 2007 	ldrb.w	r2, [sp, #7]
d00466de:	45b4      	cmp	ip, r6
d00466e0:	6059      	str	r1, [r3, #4]
d00466e2:	6098      	str	r0, [r3, #8]
d00466e4:	731f      	strb	r7, [r3, #12]
d00466e6:	735a      	strb	r2, [r3, #13]
d00466e8:	d918      	bls.n	d004671c <loadMeshSB3D+0x2e0>
d00466ea:	7920      	ldrb	r0, [r4, #4]
d00466ec:	ab02      	add	r3, sp, #8
d00466ee:	7967      	ldrb	r7, [r4, #5]
d00466f0:	2204      	movs	r2, #4
d00466f2:	f894 c006 	ldrb.w	ip, [r4, #6]
d00466f6:	a907      	add	r1, sp, #28
d00466f8:	ea40 2007 	orr.w	r0, r0, r7, lsl #8
d00466fc:	79e7      	ldrb	r7, [r4, #7]
d00466fe:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d0046702:	2000      	movs	r0, #0
d0046704:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0046708:	683f      	ldr	r7, [r7, #0]
d004670a:	68bf      	ldr	r7, [r7, #8]
d004670c:	47b8      	blx	r7
d004670e:	ab02      	add	r3, sp, #8
d0046710:	2204      	movs	r2, #4
d0046712:	a908      	add	r1, sp, #32
d0046714:	2800      	cmp	r0, #0
d0046716:	f43f af7d 	beq.w	d0046614 <loadMeshSB3D+0x1d8>
d004671a:	e757      	b.n	d00465cc <loadMeshSB3D+0x190>
d004671c:	2000      	movs	r0, #0
d004671e:	f000 f89b 	bl	d0046858 <fclose>
d0046722:	4628      	mov	r0, r5
d0046724:	f7fd fb40 	bl	d0043da8 <meshComputeBoundsRadius>
d0046728:	4628      	mov	r0, r5
d004672a:	ed85 0a06 	vstr	s0, [r5, #24]
d004672e:	f000 f815 	bl	d004675c <meshSetDefaultMaterial>
d0046732:	2001      	movs	r0, #1
d0046734:	e6fa      	b.n	d004652c <loadMeshSB3D+0xf0>
d0046736:	4630      	mov	r0, r6
d0046738:	f000 fa7e 	bl	d0046c38 <free>
d004673c:	2400      	movs	r4, #0
d004673e:	4620      	mov	r0, r4
d0046740:	602c      	str	r4, [r5, #0]
d0046742:	612c      	str	r4, [r5, #16]
d0046744:	606c      	str	r4, [r5, #4]
d0046746:	616c      	str	r4, [r5, #20]
d0046748:	f000 f886 	bl	d0046858 <fclose>
d004674c:	4620      	mov	r0, r4
d004674e:	e6ed      	b.n	d004652c <loadMeshSB3D+0xf0>
d0046750:	2800      	cmp	r0, #0
d0046752:	d0f3      	beq.n	d004673c <loadMeshSB3D+0x300>
d0046754:	f000 fa70 	bl	d0046c38 <free>
d0046758:	e7f0      	b.n	d004673c <loadMeshSB3D+0x300>
d004675a:	bf00      	nop

d004675c <meshSetDefaultMaterial>:
d004675c:	b148      	cbz	r0, d0046772 <meshSetDefaultMaterial+0x16>
d004675e:	2300      	movs	r3, #0
d0046760:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d0046764:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
d0046768:	6203      	str	r3, [r0, #32]
d004676a:	6241      	str	r1, [r0, #36]	; 0x24
d004676c:	62c2      	str	r2, [r0, #44]	; 0x2c
d004676e:	6303      	str	r3, [r0, #48]	; 0x30
d0046770:	6283      	str	r3, [r0, #40]	; 0x28
d0046772:	4770      	bx	lr

d0046774 <__errno>:
d0046774:	4b01      	ldr	r3, [pc, #4]	; (d004677c <__errno+0x8>)
d0046776:	6818      	ldr	r0, [r3, #0]
d0046778:	4770      	bx	lr
d004677a:	bf00      	nop
d004677c:	d00482a0 	.word	0xd00482a0

d0046780 <_fclose_r>:
d0046780:	b570      	push	{r4, r5, r6, lr}
d0046782:	4605      	mov	r5, r0
d0046784:	460c      	mov	r4, r1
d0046786:	b911      	cbnz	r1, d004678e <_fclose_r+0xe>
d0046788:	2600      	movs	r6, #0
d004678a:	4630      	mov	r0, r6
d004678c:	bd70      	pop	{r4, r5, r6, pc}
d004678e:	b118      	cbz	r0, d0046798 <_fclose_r+0x18>
d0046790:	6983      	ldr	r3, [r0, #24]
d0046792:	b90b      	cbnz	r3, d0046798 <_fclose_r+0x18>
d0046794:	f000 f982 	bl	d0046a9c <__sinit>
d0046798:	4b2c      	ldr	r3, [pc, #176]	; (d004684c <_fclose_r+0xcc>)
d004679a:	429c      	cmp	r4, r3
d004679c:	d114      	bne.n	d00467c8 <_fclose_r+0x48>
d004679e:	686c      	ldr	r4, [r5, #4]
d00467a0:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00467a2:	07d8      	lsls	r0, r3, #31
d00467a4:	d405      	bmi.n	d00467b2 <_fclose_r+0x32>
d00467a6:	89a3      	ldrh	r3, [r4, #12]
d00467a8:	0599      	lsls	r1, r3, #22
d00467aa:	d402      	bmi.n	d00467b2 <_fclose_r+0x32>
d00467ac:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00467ae:	f000 fa14 	bl	d0046bda <__retarget_lock_acquire_recursive>
d00467b2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d00467b6:	b98b      	cbnz	r3, d00467dc <_fclose_r+0x5c>
d00467b8:	6e66      	ldr	r6, [r4, #100]	; 0x64
d00467ba:	f016 0601 	ands.w	r6, r6, #1
d00467be:	d1e3      	bne.n	d0046788 <_fclose_r+0x8>
d00467c0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00467c2:	f000 fa0b 	bl	d0046bdc <__retarget_lock_release_recursive>
d00467c6:	e7e0      	b.n	d004678a <_fclose_r+0xa>
d00467c8:	4b21      	ldr	r3, [pc, #132]	; (d0046850 <_fclose_r+0xd0>)
d00467ca:	429c      	cmp	r4, r3
d00467cc:	d101      	bne.n	d00467d2 <_fclose_r+0x52>
d00467ce:	68ac      	ldr	r4, [r5, #8]
d00467d0:	e7e6      	b.n	d00467a0 <_fclose_r+0x20>
d00467d2:	4b20      	ldr	r3, [pc, #128]	; (d0046854 <_fclose_r+0xd4>)
d00467d4:	429c      	cmp	r4, r3
d00467d6:	bf08      	it	eq
d00467d8:	68ec      	ldreq	r4, [r5, #12]
d00467da:	e7e1      	b.n	d00467a0 <_fclose_r+0x20>
d00467dc:	4621      	mov	r1, r4
d00467de:	4628      	mov	r0, r5
d00467e0:	f000 f842 	bl	d0046868 <__sflush_r>
d00467e4:	6b23      	ldr	r3, [r4, #48]	; 0x30
d00467e6:	4606      	mov	r6, r0
d00467e8:	b133      	cbz	r3, d00467f8 <_fclose_r+0x78>
d00467ea:	6a21      	ldr	r1, [r4, #32]
d00467ec:	4628      	mov	r0, r5
d00467ee:	4798      	blx	r3
d00467f0:	2800      	cmp	r0, #0
d00467f2:	bfb8      	it	lt
d00467f4:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
d00467f8:	89a3      	ldrh	r3, [r4, #12]
d00467fa:	061a      	lsls	r2, r3, #24
d00467fc:	d503      	bpl.n	d0046806 <_fclose_r+0x86>
d00467fe:	6921      	ldr	r1, [r4, #16]
d0046800:	4628      	mov	r0, r5
d0046802:	f000 fa37 	bl	d0046c74 <_free_r>
d0046806:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0046808:	b141      	cbz	r1, d004681c <_fclose_r+0x9c>
d004680a:	f104 0344 	add.w	r3, r4, #68	; 0x44
d004680e:	4299      	cmp	r1, r3
d0046810:	d002      	beq.n	d0046818 <_fclose_r+0x98>
d0046812:	4628      	mov	r0, r5
d0046814:	f000 fa2e 	bl	d0046c74 <_free_r>
d0046818:	2300      	movs	r3, #0
d004681a:	6363      	str	r3, [r4, #52]	; 0x34
d004681c:	6ca1      	ldr	r1, [r4, #72]	; 0x48
d004681e:	b121      	cbz	r1, d004682a <_fclose_r+0xaa>
d0046820:	4628      	mov	r0, r5
d0046822:	f000 fa27 	bl	d0046c74 <_free_r>
d0046826:	2300      	movs	r3, #0
d0046828:	64a3      	str	r3, [r4, #72]	; 0x48
d004682a:	f000 f91f 	bl	d0046a6c <__sfp_lock_acquire>
d004682e:	2300      	movs	r3, #0
d0046830:	81a3      	strh	r3, [r4, #12]
d0046832:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0046834:	07db      	lsls	r3, r3, #31
d0046836:	d402      	bmi.n	d004683e <_fclose_r+0xbe>
d0046838:	6da0      	ldr	r0, [r4, #88]	; 0x58
d004683a:	f000 f9cf 	bl	d0046bdc <__retarget_lock_release_recursive>
d004683e:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0046840:	f000 f9ca 	bl	d0046bd8 <__retarget_lock_close_recursive>
d0046844:	f000 f918 	bl	d0046a78 <__sfp_lock_release>
d0046848:	e79f      	b.n	d004678a <_fclose_r+0xa>
d004684a:	bf00      	nop
d004684c:	d0047aa0 	.word	0xd0047aa0
d0046850:	d0047ac0 	.word	0xd0047ac0
d0046854:	d0047a80 	.word	0xd0047a80

d0046858 <fclose>:
d0046858:	4b02      	ldr	r3, [pc, #8]	; (d0046864 <fclose+0xc>)
d004685a:	4601      	mov	r1, r0
d004685c:	6818      	ldr	r0, [r3, #0]
d004685e:	f7ff bf8f 	b.w	d0046780 <_fclose_r>
d0046862:	bf00      	nop
d0046864:	d00482a0 	.word	0xd00482a0

d0046868 <__sflush_r>:
d0046868:	898a      	ldrh	r2, [r1, #12]
d004686a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d004686e:	4605      	mov	r5, r0
d0046870:	0710      	lsls	r0, r2, #28
d0046872:	460c      	mov	r4, r1
d0046874:	d458      	bmi.n	d0046928 <__sflush_r+0xc0>
d0046876:	684b      	ldr	r3, [r1, #4]
d0046878:	2b00      	cmp	r3, #0
d004687a:	dc05      	bgt.n	d0046888 <__sflush_r+0x20>
d004687c:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d004687e:	2b00      	cmp	r3, #0
d0046880:	dc02      	bgt.n	d0046888 <__sflush_r+0x20>
d0046882:	2000      	movs	r0, #0
d0046884:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0046888:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d004688a:	2e00      	cmp	r6, #0
d004688c:	d0f9      	beq.n	d0046882 <__sflush_r+0x1a>
d004688e:	2300      	movs	r3, #0
d0046890:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0046894:	682f      	ldr	r7, [r5, #0]
d0046896:	602b      	str	r3, [r5, #0]
d0046898:	d032      	beq.n	d0046900 <__sflush_r+0x98>
d004689a:	6d60      	ldr	r0, [r4, #84]	; 0x54
d004689c:	89a3      	ldrh	r3, [r4, #12]
d004689e:	075a      	lsls	r2, r3, #29
d00468a0:	d505      	bpl.n	d00468ae <__sflush_r+0x46>
d00468a2:	6863      	ldr	r3, [r4, #4]
d00468a4:	1ac0      	subs	r0, r0, r3
d00468a6:	6b63      	ldr	r3, [r4, #52]	; 0x34
d00468a8:	b10b      	cbz	r3, d00468ae <__sflush_r+0x46>
d00468aa:	6c23      	ldr	r3, [r4, #64]	; 0x40
d00468ac:	1ac0      	subs	r0, r0, r3
d00468ae:	2300      	movs	r3, #0
d00468b0:	4602      	mov	r2, r0
d00468b2:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d00468b4:	6a21      	ldr	r1, [r4, #32]
d00468b6:	4628      	mov	r0, r5
d00468b8:	47b0      	blx	r6
d00468ba:	1c43      	adds	r3, r0, #1
d00468bc:	89a3      	ldrh	r3, [r4, #12]
d00468be:	d106      	bne.n	d00468ce <__sflush_r+0x66>
d00468c0:	6829      	ldr	r1, [r5, #0]
d00468c2:	291d      	cmp	r1, #29
d00468c4:	d82c      	bhi.n	d0046920 <__sflush_r+0xb8>
d00468c6:	4a2a      	ldr	r2, [pc, #168]	; (d0046970 <__sflush_r+0x108>)
d00468c8:	40ca      	lsrs	r2, r1
d00468ca:	07d6      	lsls	r6, r2, #31
d00468cc:	d528      	bpl.n	d0046920 <__sflush_r+0xb8>
d00468ce:	2200      	movs	r2, #0
d00468d0:	6062      	str	r2, [r4, #4]
d00468d2:	04d9      	lsls	r1, r3, #19
d00468d4:	6922      	ldr	r2, [r4, #16]
d00468d6:	6022      	str	r2, [r4, #0]
d00468d8:	d504      	bpl.n	d00468e4 <__sflush_r+0x7c>
d00468da:	1c42      	adds	r2, r0, #1
d00468dc:	d101      	bne.n	d00468e2 <__sflush_r+0x7a>
d00468de:	682b      	ldr	r3, [r5, #0]
d00468e0:	b903      	cbnz	r3, d00468e4 <__sflush_r+0x7c>
d00468e2:	6560      	str	r0, [r4, #84]	; 0x54
d00468e4:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00468e6:	602f      	str	r7, [r5, #0]
d00468e8:	2900      	cmp	r1, #0
d00468ea:	d0ca      	beq.n	d0046882 <__sflush_r+0x1a>
d00468ec:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00468f0:	4299      	cmp	r1, r3
d00468f2:	d002      	beq.n	d00468fa <__sflush_r+0x92>
d00468f4:	4628      	mov	r0, r5
d00468f6:	f000 f9bd 	bl	d0046c74 <_free_r>
d00468fa:	2000      	movs	r0, #0
d00468fc:	6360      	str	r0, [r4, #52]	; 0x34
d00468fe:	e7c1      	b.n	d0046884 <__sflush_r+0x1c>
d0046900:	6a21      	ldr	r1, [r4, #32]
d0046902:	2301      	movs	r3, #1
d0046904:	4628      	mov	r0, r5
d0046906:	47b0      	blx	r6
d0046908:	1c41      	adds	r1, r0, #1
d004690a:	d1c7      	bne.n	d004689c <__sflush_r+0x34>
d004690c:	682b      	ldr	r3, [r5, #0]
d004690e:	2b00      	cmp	r3, #0
d0046910:	d0c4      	beq.n	d004689c <__sflush_r+0x34>
d0046912:	2b1d      	cmp	r3, #29
d0046914:	d001      	beq.n	d004691a <__sflush_r+0xb2>
d0046916:	2b16      	cmp	r3, #22
d0046918:	d101      	bne.n	d004691e <__sflush_r+0xb6>
d004691a:	602f      	str	r7, [r5, #0]
d004691c:	e7b1      	b.n	d0046882 <__sflush_r+0x1a>
d004691e:	89a3      	ldrh	r3, [r4, #12]
d0046920:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0046924:	81a3      	strh	r3, [r4, #12]
d0046926:	e7ad      	b.n	d0046884 <__sflush_r+0x1c>
d0046928:	690f      	ldr	r7, [r1, #16]
d004692a:	2f00      	cmp	r7, #0
d004692c:	d0a9      	beq.n	d0046882 <__sflush_r+0x1a>
d004692e:	0793      	lsls	r3, r2, #30
d0046930:	680e      	ldr	r6, [r1, #0]
d0046932:	bf08      	it	eq
d0046934:	694b      	ldreq	r3, [r1, #20]
d0046936:	600f      	str	r7, [r1, #0]
d0046938:	bf18      	it	ne
d004693a:	2300      	movne	r3, #0
d004693c:	eba6 0807 	sub.w	r8, r6, r7
d0046940:	608b      	str	r3, [r1, #8]
d0046942:	f1b8 0f00 	cmp.w	r8, #0
d0046946:	dd9c      	ble.n	d0046882 <__sflush_r+0x1a>
d0046948:	6a21      	ldr	r1, [r4, #32]
d004694a:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d004694c:	4643      	mov	r3, r8
d004694e:	463a      	mov	r2, r7
d0046950:	4628      	mov	r0, r5
d0046952:	47b0      	blx	r6
d0046954:	2800      	cmp	r0, #0
d0046956:	dc06      	bgt.n	d0046966 <__sflush_r+0xfe>
d0046958:	89a3      	ldrh	r3, [r4, #12]
d004695a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d004695e:	81a3      	strh	r3, [r4, #12]
d0046960:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0046964:	e78e      	b.n	d0046884 <__sflush_r+0x1c>
d0046966:	4407      	add	r7, r0
d0046968:	eba8 0800 	sub.w	r8, r8, r0
d004696c:	e7e9      	b.n	d0046942 <__sflush_r+0xda>
d004696e:	bf00      	nop
d0046970:	20400001 	.word	0x20400001

d0046974 <_fflush_r>:
d0046974:	b538      	push	{r3, r4, r5, lr}
d0046976:	690b      	ldr	r3, [r1, #16]
d0046978:	4605      	mov	r5, r0
d004697a:	460c      	mov	r4, r1
d004697c:	b913      	cbnz	r3, d0046984 <_fflush_r+0x10>
d004697e:	2500      	movs	r5, #0
d0046980:	4628      	mov	r0, r5
d0046982:	bd38      	pop	{r3, r4, r5, pc}
d0046984:	b118      	cbz	r0, d004698e <_fflush_r+0x1a>
d0046986:	6983      	ldr	r3, [r0, #24]
d0046988:	b90b      	cbnz	r3, d004698e <_fflush_r+0x1a>
d004698a:	f000 f887 	bl	d0046a9c <__sinit>
d004698e:	4b14      	ldr	r3, [pc, #80]	; (d00469e0 <_fflush_r+0x6c>)
d0046990:	429c      	cmp	r4, r3
d0046992:	d11b      	bne.n	d00469cc <_fflush_r+0x58>
d0046994:	686c      	ldr	r4, [r5, #4]
d0046996:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d004699a:	2b00      	cmp	r3, #0
d004699c:	d0ef      	beq.n	d004697e <_fflush_r+0xa>
d004699e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d00469a0:	07d0      	lsls	r0, r2, #31
d00469a2:	d404      	bmi.n	d00469ae <_fflush_r+0x3a>
d00469a4:	0599      	lsls	r1, r3, #22
d00469a6:	d402      	bmi.n	d00469ae <_fflush_r+0x3a>
d00469a8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00469aa:	f000 f916 	bl	d0046bda <__retarget_lock_acquire_recursive>
d00469ae:	4628      	mov	r0, r5
d00469b0:	4621      	mov	r1, r4
d00469b2:	f7ff ff59 	bl	d0046868 <__sflush_r>
d00469b6:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00469b8:	07da      	lsls	r2, r3, #31
d00469ba:	4605      	mov	r5, r0
d00469bc:	d4e0      	bmi.n	d0046980 <_fflush_r+0xc>
d00469be:	89a3      	ldrh	r3, [r4, #12]
d00469c0:	059b      	lsls	r3, r3, #22
d00469c2:	d4dd      	bmi.n	d0046980 <_fflush_r+0xc>
d00469c4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00469c6:	f000 f909 	bl	d0046bdc <__retarget_lock_release_recursive>
d00469ca:	e7d9      	b.n	d0046980 <_fflush_r+0xc>
d00469cc:	4b05      	ldr	r3, [pc, #20]	; (d00469e4 <_fflush_r+0x70>)
d00469ce:	429c      	cmp	r4, r3
d00469d0:	d101      	bne.n	d00469d6 <_fflush_r+0x62>
d00469d2:	68ac      	ldr	r4, [r5, #8]
d00469d4:	e7df      	b.n	d0046996 <_fflush_r+0x22>
d00469d6:	4b04      	ldr	r3, [pc, #16]	; (d00469e8 <_fflush_r+0x74>)
d00469d8:	429c      	cmp	r4, r3
d00469da:	bf08      	it	eq
d00469dc:	68ec      	ldreq	r4, [r5, #12]
d00469de:	e7da      	b.n	d0046996 <_fflush_r+0x22>
d00469e0:	d0047aa0 	.word	0xd0047aa0
d00469e4:	d0047ac0 	.word	0xd0047ac0
d00469e8:	d0047a80 	.word	0xd0047a80

d00469ec <std>:
d00469ec:	2300      	movs	r3, #0
d00469ee:	b510      	push	{r4, lr}
d00469f0:	4604      	mov	r4, r0
d00469f2:	e9c0 3300 	strd	r3, r3, [r0]
d00469f6:	e9c0 3304 	strd	r3, r3, [r0, #16]
d00469fa:	6083      	str	r3, [r0, #8]
d00469fc:	8181      	strh	r1, [r0, #12]
d00469fe:	6643      	str	r3, [r0, #100]	; 0x64
d0046a00:	81c2      	strh	r2, [r0, #14]
d0046a02:	6183      	str	r3, [r0, #24]
d0046a04:	4619      	mov	r1, r3
d0046a06:	2208      	movs	r2, #8
d0046a08:	305c      	adds	r0, #92	; 0x5c
d0046a0a:	f000 f92b 	bl	d0046c64 <memset>
d0046a0e:	4b05      	ldr	r3, [pc, #20]	; (d0046a24 <std+0x38>)
d0046a10:	6263      	str	r3, [r4, #36]	; 0x24
d0046a12:	4b05      	ldr	r3, [pc, #20]	; (d0046a28 <std+0x3c>)
d0046a14:	62a3      	str	r3, [r4, #40]	; 0x28
d0046a16:	4b05      	ldr	r3, [pc, #20]	; (d0046a2c <std+0x40>)
d0046a18:	62e3      	str	r3, [r4, #44]	; 0x2c
d0046a1a:	4b05      	ldr	r3, [pc, #20]	; (d0046a30 <std+0x44>)
d0046a1c:	6224      	str	r4, [r4, #32]
d0046a1e:	6323      	str	r3, [r4, #48]	; 0x30
d0046a20:	bd10      	pop	{r4, pc}
d0046a22:	bf00      	nop
d0046a24:	d0046f65 	.word	0xd0046f65
d0046a28:	d0046f87 	.word	0xd0046f87
d0046a2c:	d0046fbf 	.word	0xd0046fbf
d0046a30:	d0046fe3 	.word	0xd0046fe3

d0046a34 <_cleanup_r>:
d0046a34:	4901      	ldr	r1, [pc, #4]	; (d0046a3c <_cleanup_r+0x8>)
d0046a36:	f000 b8af 	b.w	d0046b98 <_fwalk_reent>
d0046a3a:	bf00      	nop
d0046a3c:	d0046975 	.word	0xd0046975

d0046a40 <__sfmoreglue>:
d0046a40:	b570      	push	{r4, r5, r6, lr}
d0046a42:	1e4a      	subs	r2, r1, #1
d0046a44:	2568      	movs	r5, #104	; 0x68
d0046a46:	4355      	muls	r5, r2
d0046a48:	460e      	mov	r6, r1
d0046a4a:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0046a4e:	f000 f961 	bl	d0046d14 <_malloc_r>
d0046a52:	4604      	mov	r4, r0
d0046a54:	b140      	cbz	r0, d0046a68 <__sfmoreglue+0x28>
d0046a56:	2100      	movs	r1, #0
d0046a58:	e9c0 1600 	strd	r1, r6, [r0]
d0046a5c:	300c      	adds	r0, #12
d0046a5e:	60a0      	str	r0, [r4, #8]
d0046a60:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0046a64:	f000 f8fe 	bl	d0046c64 <memset>
d0046a68:	4620      	mov	r0, r4
d0046a6a:	bd70      	pop	{r4, r5, r6, pc}

d0046a6c <__sfp_lock_acquire>:
d0046a6c:	4801      	ldr	r0, [pc, #4]	; (d0046a74 <__sfp_lock_acquire+0x8>)
d0046a6e:	f000 b8b4 	b.w	d0046bda <__retarget_lock_acquire_recursive>
d0046a72:	bf00      	nop
d0046a74:	d0133a88 	.word	0xd0133a88

d0046a78 <__sfp_lock_release>:
d0046a78:	4801      	ldr	r0, [pc, #4]	; (d0046a80 <__sfp_lock_release+0x8>)
d0046a7a:	f000 b8af 	b.w	d0046bdc <__retarget_lock_release_recursive>
d0046a7e:	bf00      	nop
d0046a80:	d0133a88 	.word	0xd0133a88

d0046a84 <__sinit_lock_acquire>:
d0046a84:	4801      	ldr	r0, [pc, #4]	; (d0046a8c <__sinit_lock_acquire+0x8>)
d0046a86:	f000 b8a8 	b.w	d0046bda <__retarget_lock_acquire_recursive>
d0046a8a:	bf00      	nop
d0046a8c:	d0133a83 	.word	0xd0133a83

d0046a90 <__sinit_lock_release>:
d0046a90:	4801      	ldr	r0, [pc, #4]	; (d0046a98 <__sinit_lock_release+0x8>)
d0046a92:	f000 b8a3 	b.w	d0046bdc <__retarget_lock_release_recursive>
d0046a96:	bf00      	nop
d0046a98:	d0133a83 	.word	0xd0133a83

d0046a9c <__sinit>:
d0046a9c:	b510      	push	{r4, lr}
d0046a9e:	4604      	mov	r4, r0
d0046aa0:	f7ff fff0 	bl	d0046a84 <__sinit_lock_acquire>
d0046aa4:	69a3      	ldr	r3, [r4, #24]
d0046aa6:	b11b      	cbz	r3, d0046ab0 <__sinit+0x14>
d0046aa8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0046aac:	f7ff bff0 	b.w	d0046a90 <__sinit_lock_release>
d0046ab0:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0046ab4:	6523      	str	r3, [r4, #80]	; 0x50
d0046ab6:	4b13      	ldr	r3, [pc, #76]	; (d0046b04 <__sinit+0x68>)
d0046ab8:	4a13      	ldr	r2, [pc, #76]	; (d0046b08 <__sinit+0x6c>)
d0046aba:	681b      	ldr	r3, [r3, #0]
d0046abc:	62a2      	str	r2, [r4, #40]	; 0x28
d0046abe:	42a3      	cmp	r3, r4
d0046ac0:	bf04      	itt	eq
d0046ac2:	2301      	moveq	r3, #1
d0046ac4:	61a3      	streq	r3, [r4, #24]
d0046ac6:	4620      	mov	r0, r4
d0046ac8:	f000 f820 	bl	d0046b0c <__sfp>
d0046acc:	6060      	str	r0, [r4, #4]
d0046ace:	4620      	mov	r0, r4
d0046ad0:	f000 f81c 	bl	d0046b0c <__sfp>
d0046ad4:	60a0      	str	r0, [r4, #8]
d0046ad6:	4620      	mov	r0, r4
d0046ad8:	f000 f818 	bl	d0046b0c <__sfp>
d0046adc:	2200      	movs	r2, #0
d0046ade:	60e0      	str	r0, [r4, #12]
d0046ae0:	2104      	movs	r1, #4
d0046ae2:	6860      	ldr	r0, [r4, #4]
d0046ae4:	f7ff ff82 	bl	d00469ec <std>
d0046ae8:	68a0      	ldr	r0, [r4, #8]
d0046aea:	2201      	movs	r2, #1
d0046aec:	2109      	movs	r1, #9
d0046aee:	f7ff ff7d 	bl	d00469ec <std>
d0046af2:	68e0      	ldr	r0, [r4, #12]
d0046af4:	2202      	movs	r2, #2
d0046af6:	2112      	movs	r1, #18
d0046af8:	f7ff ff78 	bl	d00469ec <std>
d0046afc:	2301      	movs	r3, #1
d0046afe:	61a3      	str	r3, [r4, #24]
d0046b00:	e7d2      	b.n	d0046aa8 <__sinit+0xc>
d0046b02:	bf00      	nop
d0046b04:	d0047ae0 	.word	0xd0047ae0
d0046b08:	d0046a35 	.word	0xd0046a35

d0046b0c <__sfp>:
d0046b0c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0046b0e:	4607      	mov	r7, r0
d0046b10:	f7ff ffac 	bl	d0046a6c <__sfp_lock_acquire>
d0046b14:	4b1e      	ldr	r3, [pc, #120]	; (d0046b90 <__sfp+0x84>)
d0046b16:	681e      	ldr	r6, [r3, #0]
d0046b18:	69b3      	ldr	r3, [r6, #24]
d0046b1a:	b913      	cbnz	r3, d0046b22 <__sfp+0x16>
d0046b1c:	4630      	mov	r0, r6
d0046b1e:	f7ff ffbd 	bl	d0046a9c <__sinit>
d0046b22:	3648      	adds	r6, #72	; 0x48
d0046b24:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0046b28:	3b01      	subs	r3, #1
d0046b2a:	d503      	bpl.n	d0046b34 <__sfp+0x28>
d0046b2c:	6833      	ldr	r3, [r6, #0]
d0046b2e:	b30b      	cbz	r3, d0046b74 <__sfp+0x68>
d0046b30:	6836      	ldr	r6, [r6, #0]
d0046b32:	e7f7      	b.n	d0046b24 <__sfp+0x18>
d0046b34:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0046b38:	b9d5      	cbnz	r5, d0046b70 <__sfp+0x64>
d0046b3a:	4b16      	ldr	r3, [pc, #88]	; (d0046b94 <__sfp+0x88>)
d0046b3c:	60e3      	str	r3, [r4, #12]
d0046b3e:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0046b42:	6665      	str	r5, [r4, #100]	; 0x64
d0046b44:	f000 f847 	bl	d0046bd6 <__retarget_lock_init_recursive>
d0046b48:	f7ff ff96 	bl	d0046a78 <__sfp_lock_release>
d0046b4c:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0046b50:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0046b54:	6025      	str	r5, [r4, #0]
d0046b56:	61a5      	str	r5, [r4, #24]
d0046b58:	2208      	movs	r2, #8
d0046b5a:	4629      	mov	r1, r5
d0046b5c:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0046b60:	f000 f880 	bl	d0046c64 <memset>
d0046b64:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0046b68:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0046b6c:	4620      	mov	r0, r4
d0046b6e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0046b70:	3468      	adds	r4, #104	; 0x68
d0046b72:	e7d9      	b.n	d0046b28 <__sfp+0x1c>
d0046b74:	2104      	movs	r1, #4
d0046b76:	4638      	mov	r0, r7
d0046b78:	f7ff ff62 	bl	d0046a40 <__sfmoreglue>
d0046b7c:	4604      	mov	r4, r0
d0046b7e:	6030      	str	r0, [r6, #0]
d0046b80:	2800      	cmp	r0, #0
d0046b82:	d1d5      	bne.n	d0046b30 <__sfp+0x24>
d0046b84:	f7ff ff78 	bl	d0046a78 <__sfp_lock_release>
d0046b88:	230c      	movs	r3, #12
d0046b8a:	603b      	str	r3, [r7, #0]
d0046b8c:	e7ee      	b.n	d0046b6c <__sfp+0x60>
d0046b8e:	bf00      	nop
d0046b90:	d0047ae0 	.word	0xd0047ae0
d0046b94:	ffff0001 	.word	0xffff0001

d0046b98 <_fwalk_reent>:
d0046b98:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0046b9c:	4606      	mov	r6, r0
d0046b9e:	4688      	mov	r8, r1
d0046ba0:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0046ba4:	2700      	movs	r7, #0
d0046ba6:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0046baa:	f1b9 0901 	subs.w	r9, r9, #1
d0046bae:	d505      	bpl.n	d0046bbc <_fwalk_reent+0x24>
d0046bb0:	6824      	ldr	r4, [r4, #0]
d0046bb2:	2c00      	cmp	r4, #0
d0046bb4:	d1f7      	bne.n	d0046ba6 <_fwalk_reent+0xe>
d0046bb6:	4638      	mov	r0, r7
d0046bb8:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0046bbc:	89ab      	ldrh	r3, [r5, #12]
d0046bbe:	2b01      	cmp	r3, #1
d0046bc0:	d907      	bls.n	d0046bd2 <_fwalk_reent+0x3a>
d0046bc2:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0046bc6:	3301      	adds	r3, #1
d0046bc8:	d003      	beq.n	d0046bd2 <_fwalk_reent+0x3a>
d0046bca:	4629      	mov	r1, r5
d0046bcc:	4630      	mov	r0, r6
d0046bce:	47c0      	blx	r8
d0046bd0:	4307      	orrs	r7, r0
d0046bd2:	3568      	adds	r5, #104	; 0x68
d0046bd4:	e7e9      	b.n	d0046baa <_fwalk_reent+0x12>

d0046bd6 <__retarget_lock_init_recursive>:
d0046bd6:	4770      	bx	lr

d0046bd8 <__retarget_lock_close_recursive>:
d0046bd8:	4770      	bx	lr

d0046bda <__retarget_lock_acquire_recursive>:
d0046bda:	4770      	bx	lr

d0046bdc <__retarget_lock_release_recursive>:
d0046bdc:	4770      	bx	lr

d0046bde <__swhatbuf_r>:
d0046bde:	b570      	push	{r4, r5, r6, lr}
d0046be0:	460e      	mov	r6, r1
d0046be2:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0046be6:	2900      	cmp	r1, #0
d0046be8:	b096      	sub	sp, #88	; 0x58
d0046bea:	4614      	mov	r4, r2
d0046bec:	461d      	mov	r5, r3
d0046bee:	da07      	bge.n	d0046c00 <__swhatbuf_r+0x22>
d0046bf0:	2300      	movs	r3, #0
d0046bf2:	602b      	str	r3, [r5, #0]
d0046bf4:	89b3      	ldrh	r3, [r6, #12]
d0046bf6:	061a      	lsls	r2, r3, #24
d0046bf8:	d410      	bmi.n	d0046c1c <__swhatbuf_r+0x3e>
d0046bfa:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0046bfe:	e00e      	b.n	d0046c1e <__swhatbuf_r+0x40>
d0046c00:	466a      	mov	r2, sp
d0046c02:	f000 fa03 	bl	d004700c <_fstat_r>
d0046c06:	2800      	cmp	r0, #0
d0046c08:	dbf2      	blt.n	d0046bf0 <__swhatbuf_r+0x12>
d0046c0a:	9a01      	ldr	r2, [sp, #4]
d0046c0c:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0046c10:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0046c14:	425a      	negs	r2, r3
d0046c16:	415a      	adcs	r2, r3
d0046c18:	602a      	str	r2, [r5, #0]
d0046c1a:	e7ee      	b.n	d0046bfa <__swhatbuf_r+0x1c>
d0046c1c:	2340      	movs	r3, #64	; 0x40
d0046c1e:	2000      	movs	r0, #0
d0046c20:	6023      	str	r3, [r4, #0]
d0046c22:	b016      	add	sp, #88	; 0x58
d0046c24:	bd70      	pop	{r4, r5, r6, pc}
	...

d0046c28 <malloc>:
d0046c28:	4b02      	ldr	r3, [pc, #8]	; (d0046c34 <malloc+0xc>)
d0046c2a:	4601      	mov	r1, r0
d0046c2c:	6818      	ldr	r0, [r3, #0]
d0046c2e:	f000 b871 	b.w	d0046d14 <_malloc_r>
d0046c32:	bf00      	nop
d0046c34:	d00482a0 	.word	0xd00482a0

d0046c38 <free>:
d0046c38:	4b02      	ldr	r3, [pc, #8]	; (d0046c44 <free+0xc>)
d0046c3a:	4601      	mov	r1, r0
d0046c3c:	6818      	ldr	r0, [r3, #0]
d0046c3e:	f000 b819 	b.w	d0046c74 <_free_r>
d0046c42:	bf00      	nop
d0046c44:	d00482a0 	.word	0xd00482a0

d0046c48 <memcpy>:
d0046c48:	440a      	add	r2, r1
d0046c4a:	4291      	cmp	r1, r2
d0046c4c:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0046c50:	d100      	bne.n	d0046c54 <memcpy+0xc>
d0046c52:	4770      	bx	lr
d0046c54:	b510      	push	{r4, lr}
d0046c56:	f811 4b01 	ldrb.w	r4, [r1], #1
d0046c5a:	f803 4f01 	strb.w	r4, [r3, #1]!
d0046c5e:	4291      	cmp	r1, r2
d0046c60:	d1f9      	bne.n	d0046c56 <memcpy+0xe>
d0046c62:	bd10      	pop	{r4, pc}

d0046c64 <memset>:
d0046c64:	4402      	add	r2, r0
d0046c66:	4603      	mov	r3, r0
d0046c68:	4293      	cmp	r3, r2
d0046c6a:	d100      	bne.n	d0046c6e <memset+0xa>
d0046c6c:	4770      	bx	lr
d0046c6e:	f803 1b01 	strb.w	r1, [r3], #1
d0046c72:	e7f9      	b.n	d0046c68 <memset+0x4>

d0046c74 <_free_r>:
d0046c74:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0046c76:	2900      	cmp	r1, #0
d0046c78:	d048      	beq.n	d0046d0c <_free_r+0x98>
d0046c7a:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0046c7e:	9001      	str	r0, [sp, #4]
d0046c80:	2b00      	cmp	r3, #0
d0046c82:	f1a1 0404 	sub.w	r4, r1, #4
d0046c86:	bfb8      	it	lt
d0046c88:	18e4      	addlt	r4, r4, r3
d0046c8a:	f000 f9e3 	bl	d0047054 <__malloc_lock>
d0046c8e:	4a20      	ldr	r2, [pc, #128]	; (d0046d10 <_free_r+0x9c>)
d0046c90:	9801      	ldr	r0, [sp, #4]
d0046c92:	6813      	ldr	r3, [r2, #0]
d0046c94:	4615      	mov	r5, r2
d0046c96:	b933      	cbnz	r3, d0046ca6 <_free_r+0x32>
d0046c98:	6063      	str	r3, [r4, #4]
d0046c9a:	6014      	str	r4, [r2, #0]
d0046c9c:	b003      	add	sp, #12
d0046c9e:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0046ca2:	f000 b9dd 	b.w	d0047060 <__malloc_unlock>
d0046ca6:	42a3      	cmp	r3, r4
d0046ca8:	d90b      	bls.n	d0046cc2 <_free_r+0x4e>
d0046caa:	6821      	ldr	r1, [r4, #0]
d0046cac:	1862      	adds	r2, r4, r1
d0046cae:	4293      	cmp	r3, r2
d0046cb0:	bf04      	itt	eq
d0046cb2:	681a      	ldreq	r2, [r3, #0]
d0046cb4:	685b      	ldreq	r3, [r3, #4]
d0046cb6:	6063      	str	r3, [r4, #4]
d0046cb8:	bf04      	itt	eq
d0046cba:	1852      	addeq	r2, r2, r1
d0046cbc:	6022      	streq	r2, [r4, #0]
d0046cbe:	602c      	str	r4, [r5, #0]
d0046cc0:	e7ec      	b.n	d0046c9c <_free_r+0x28>
d0046cc2:	461a      	mov	r2, r3
d0046cc4:	685b      	ldr	r3, [r3, #4]
d0046cc6:	b10b      	cbz	r3, d0046ccc <_free_r+0x58>
d0046cc8:	42a3      	cmp	r3, r4
d0046cca:	d9fa      	bls.n	d0046cc2 <_free_r+0x4e>
d0046ccc:	6811      	ldr	r1, [r2, #0]
d0046cce:	1855      	adds	r5, r2, r1
d0046cd0:	42a5      	cmp	r5, r4
d0046cd2:	d10b      	bne.n	d0046cec <_free_r+0x78>
d0046cd4:	6824      	ldr	r4, [r4, #0]
d0046cd6:	4421      	add	r1, r4
d0046cd8:	1854      	adds	r4, r2, r1
d0046cda:	42a3      	cmp	r3, r4
d0046cdc:	6011      	str	r1, [r2, #0]
d0046cde:	d1dd      	bne.n	d0046c9c <_free_r+0x28>
d0046ce0:	681c      	ldr	r4, [r3, #0]
d0046ce2:	685b      	ldr	r3, [r3, #4]
d0046ce4:	6053      	str	r3, [r2, #4]
d0046ce6:	4421      	add	r1, r4
d0046ce8:	6011      	str	r1, [r2, #0]
d0046cea:	e7d7      	b.n	d0046c9c <_free_r+0x28>
d0046cec:	d902      	bls.n	d0046cf4 <_free_r+0x80>
d0046cee:	230c      	movs	r3, #12
d0046cf0:	6003      	str	r3, [r0, #0]
d0046cf2:	e7d3      	b.n	d0046c9c <_free_r+0x28>
d0046cf4:	6825      	ldr	r5, [r4, #0]
d0046cf6:	1961      	adds	r1, r4, r5
d0046cf8:	428b      	cmp	r3, r1
d0046cfa:	bf04      	itt	eq
d0046cfc:	6819      	ldreq	r1, [r3, #0]
d0046cfe:	685b      	ldreq	r3, [r3, #4]
d0046d00:	6063      	str	r3, [r4, #4]
d0046d02:	bf04      	itt	eq
d0046d04:	1949      	addeq	r1, r1, r5
d0046d06:	6021      	streq	r1, [r4, #0]
d0046d08:	6054      	str	r4, [r2, #4]
d0046d0a:	e7c7      	b.n	d0046c9c <_free_r+0x28>
d0046d0c:	b003      	add	sp, #12
d0046d0e:	bd30      	pop	{r4, r5, pc}
d0046d10:	d012d9c0 	.word	0xd012d9c0

d0046d14 <_malloc_r>:
d0046d14:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0046d16:	1ccd      	adds	r5, r1, #3
d0046d18:	f025 0503 	bic.w	r5, r5, #3
d0046d1c:	3508      	adds	r5, #8
d0046d1e:	2d0c      	cmp	r5, #12
d0046d20:	bf38      	it	cc
d0046d22:	250c      	movcc	r5, #12
d0046d24:	2d00      	cmp	r5, #0
d0046d26:	4606      	mov	r6, r0
d0046d28:	db01      	blt.n	d0046d2e <_malloc_r+0x1a>
d0046d2a:	42a9      	cmp	r1, r5
d0046d2c:	d903      	bls.n	d0046d36 <_malloc_r+0x22>
d0046d2e:	230c      	movs	r3, #12
d0046d30:	6033      	str	r3, [r6, #0]
d0046d32:	2000      	movs	r0, #0
d0046d34:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0046d36:	f000 f98d 	bl	d0047054 <__malloc_lock>
d0046d3a:	4921      	ldr	r1, [pc, #132]	; (d0046dc0 <_malloc_r+0xac>)
d0046d3c:	680a      	ldr	r2, [r1, #0]
d0046d3e:	4614      	mov	r4, r2
d0046d40:	b99c      	cbnz	r4, d0046d6a <_malloc_r+0x56>
d0046d42:	4f20      	ldr	r7, [pc, #128]	; (d0046dc4 <_malloc_r+0xb0>)
d0046d44:	683b      	ldr	r3, [r7, #0]
d0046d46:	b923      	cbnz	r3, d0046d52 <_malloc_r+0x3e>
d0046d48:	4621      	mov	r1, r4
d0046d4a:	4630      	mov	r0, r6
d0046d4c:	f7f9 f9c8 	bl	d00400e0 <_sbrk_r>
d0046d50:	6038      	str	r0, [r7, #0]
d0046d52:	4629      	mov	r1, r5
d0046d54:	4630      	mov	r0, r6
d0046d56:	f7f9 f9c3 	bl	d00400e0 <_sbrk_r>
d0046d5a:	1c43      	adds	r3, r0, #1
d0046d5c:	d123      	bne.n	d0046da6 <_malloc_r+0x92>
d0046d5e:	230c      	movs	r3, #12
d0046d60:	6033      	str	r3, [r6, #0]
d0046d62:	4630      	mov	r0, r6
d0046d64:	f000 f97c 	bl	d0047060 <__malloc_unlock>
d0046d68:	e7e3      	b.n	d0046d32 <_malloc_r+0x1e>
d0046d6a:	6823      	ldr	r3, [r4, #0]
d0046d6c:	1b5b      	subs	r3, r3, r5
d0046d6e:	d417      	bmi.n	d0046da0 <_malloc_r+0x8c>
d0046d70:	2b0b      	cmp	r3, #11
d0046d72:	d903      	bls.n	d0046d7c <_malloc_r+0x68>
d0046d74:	6023      	str	r3, [r4, #0]
d0046d76:	441c      	add	r4, r3
d0046d78:	6025      	str	r5, [r4, #0]
d0046d7a:	e004      	b.n	d0046d86 <_malloc_r+0x72>
d0046d7c:	6863      	ldr	r3, [r4, #4]
d0046d7e:	42a2      	cmp	r2, r4
d0046d80:	bf0c      	ite	eq
d0046d82:	600b      	streq	r3, [r1, #0]
d0046d84:	6053      	strne	r3, [r2, #4]
d0046d86:	4630      	mov	r0, r6
d0046d88:	f000 f96a 	bl	d0047060 <__malloc_unlock>
d0046d8c:	f104 000b 	add.w	r0, r4, #11
d0046d90:	1d23      	adds	r3, r4, #4
d0046d92:	f020 0007 	bic.w	r0, r0, #7
d0046d96:	1ac2      	subs	r2, r0, r3
d0046d98:	d0cc      	beq.n	d0046d34 <_malloc_r+0x20>
d0046d9a:	1a1b      	subs	r3, r3, r0
d0046d9c:	50a3      	str	r3, [r4, r2]
d0046d9e:	e7c9      	b.n	d0046d34 <_malloc_r+0x20>
d0046da0:	4622      	mov	r2, r4
d0046da2:	6864      	ldr	r4, [r4, #4]
d0046da4:	e7cc      	b.n	d0046d40 <_malloc_r+0x2c>
d0046da6:	1cc4      	adds	r4, r0, #3
d0046da8:	f024 0403 	bic.w	r4, r4, #3
d0046dac:	42a0      	cmp	r0, r4
d0046dae:	d0e3      	beq.n	d0046d78 <_malloc_r+0x64>
d0046db0:	1a21      	subs	r1, r4, r0
d0046db2:	4630      	mov	r0, r6
d0046db4:	f7f9 f994 	bl	d00400e0 <_sbrk_r>
d0046db8:	3001      	adds	r0, #1
d0046dba:	d1dd      	bne.n	d0046d78 <_malloc_r+0x64>
d0046dbc:	e7cf      	b.n	d0046d5e <_malloc_r+0x4a>
d0046dbe:	bf00      	nop
d0046dc0:	d012d9c0 	.word	0xd012d9c0
d0046dc4:	d012d9c4 	.word	0xd012d9c4

d0046dc8 <setbuf>:
d0046dc8:	2900      	cmp	r1, #0
d0046dca:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0046dce:	bf0c      	ite	eq
d0046dd0:	2202      	moveq	r2, #2
d0046dd2:	2200      	movne	r2, #0
d0046dd4:	f000 b800 	b.w	d0046dd8 <setvbuf>

d0046dd8 <setvbuf>:
d0046dd8:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0046ddc:	461d      	mov	r5, r3
d0046dde:	4b5d      	ldr	r3, [pc, #372]	; (d0046f54 <setvbuf+0x17c>)
d0046de0:	681f      	ldr	r7, [r3, #0]
d0046de2:	4604      	mov	r4, r0
d0046de4:	460e      	mov	r6, r1
d0046de6:	4690      	mov	r8, r2
d0046de8:	b127      	cbz	r7, d0046df4 <setvbuf+0x1c>
d0046dea:	69bb      	ldr	r3, [r7, #24]
d0046dec:	b913      	cbnz	r3, d0046df4 <setvbuf+0x1c>
d0046dee:	4638      	mov	r0, r7
d0046df0:	f7ff fe54 	bl	d0046a9c <__sinit>
d0046df4:	4b58      	ldr	r3, [pc, #352]	; (d0046f58 <setvbuf+0x180>)
d0046df6:	429c      	cmp	r4, r3
d0046df8:	d167      	bne.n	d0046eca <setvbuf+0xf2>
d0046dfa:	687c      	ldr	r4, [r7, #4]
d0046dfc:	f1b8 0f02 	cmp.w	r8, #2
d0046e00:	d006      	beq.n	d0046e10 <setvbuf+0x38>
d0046e02:	f1b8 0f01 	cmp.w	r8, #1
d0046e06:	f200 809f 	bhi.w	d0046f48 <setvbuf+0x170>
d0046e0a:	2d00      	cmp	r5, #0
d0046e0c:	f2c0 809c 	blt.w	d0046f48 <setvbuf+0x170>
d0046e10:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0046e12:	07db      	lsls	r3, r3, #31
d0046e14:	d405      	bmi.n	d0046e22 <setvbuf+0x4a>
d0046e16:	89a3      	ldrh	r3, [r4, #12]
d0046e18:	0598      	lsls	r0, r3, #22
d0046e1a:	d402      	bmi.n	d0046e22 <setvbuf+0x4a>
d0046e1c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0046e1e:	f7ff fedc 	bl	d0046bda <__retarget_lock_acquire_recursive>
d0046e22:	4621      	mov	r1, r4
d0046e24:	4638      	mov	r0, r7
d0046e26:	f7ff fda5 	bl	d0046974 <_fflush_r>
d0046e2a:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0046e2c:	b141      	cbz	r1, d0046e40 <setvbuf+0x68>
d0046e2e:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0046e32:	4299      	cmp	r1, r3
d0046e34:	d002      	beq.n	d0046e3c <setvbuf+0x64>
d0046e36:	4638      	mov	r0, r7
d0046e38:	f7ff ff1c 	bl	d0046c74 <_free_r>
d0046e3c:	2300      	movs	r3, #0
d0046e3e:	6363      	str	r3, [r4, #52]	; 0x34
d0046e40:	2300      	movs	r3, #0
d0046e42:	61a3      	str	r3, [r4, #24]
d0046e44:	6063      	str	r3, [r4, #4]
d0046e46:	89a3      	ldrh	r3, [r4, #12]
d0046e48:	0619      	lsls	r1, r3, #24
d0046e4a:	d503      	bpl.n	d0046e54 <setvbuf+0x7c>
d0046e4c:	6921      	ldr	r1, [r4, #16]
d0046e4e:	4638      	mov	r0, r7
d0046e50:	f7ff ff10 	bl	d0046c74 <_free_r>
d0046e54:	89a3      	ldrh	r3, [r4, #12]
d0046e56:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d0046e5a:	f023 0303 	bic.w	r3, r3, #3
d0046e5e:	f1b8 0f02 	cmp.w	r8, #2
d0046e62:	81a3      	strh	r3, [r4, #12]
d0046e64:	d06c      	beq.n	d0046f40 <setvbuf+0x168>
d0046e66:	ab01      	add	r3, sp, #4
d0046e68:	466a      	mov	r2, sp
d0046e6a:	4621      	mov	r1, r4
d0046e6c:	4638      	mov	r0, r7
d0046e6e:	f7ff feb6 	bl	d0046bde <__swhatbuf_r>
d0046e72:	89a3      	ldrh	r3, [r4, #12]
d0046e74:	4318      	orrs	r0, r3
d0046e76:	81a0      	strh	r0, [r4, #12]
d0046e78:	2d00      	cmp	r5, #0
d0046e7a:	d130      	bne.n	d0046ede <setvbuf+0x106>
d0046e7c:	9d00      	ldr	r5, [sp, #0]
d0046e7e:	4628      	mov	r0, r5
d0046e80:	f7ff fed2 	bl	d0046c28 <malloc>
d0046e84:	4606      	mov	r6, r0
d0046e86:	2800      	cmp	r0, #0
d0046e88:	d155      	bne.n	d0046f36 <setvbuf+0x15e>
d0046e8a:	f8dd 9000 	ldr.w	r9, [sp]
d0046e8e:	45a9      	cmp	r9, r5
d0046e90:	d14a      	bne.n	d0046f28 <setvbuf+0x150>
d0046e92:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0046e96:	2200      	movs	r2, #0
d0046e98:	60a2      	str	r2, [r4, #8]
d0046e9a:	f104 0247 	add.w	r2, r4, #71	; 0x47
d0046e9e:	6022      	str	r2, [r4, #0]
d0046ea0:	6122      	str	r2, [r4, #16]
d0046ea2:	2201      	movs	r2, #1
d0046ea4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0046ea8:	6162      	str	r2, [r4, #20]
d0046eaa:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0046eac:	f043 0302 	orr.w	r3, r3, #2
d0046eb0:	07d2      	lsls	r2, r2, #31
d0046eb2:	81a3      	strh	r3, [r4, #12]
d0046eb4:	d405      	bmi.n	d0046ec2 <setvbuf+0xea>
d0046eb6:	f413 7f00 	tst.w	r3, #512	; 0x200
d0046eba:	d102      	bne.n	d0046ec2 <setvbuf+0xea>
d0046ebc:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0046ebe:	f7ff fe8d 	bl	d0046bdc <__retarget_lock_release_recursive>
d0046ec2:	4628      	mov	r0, r5
d0046ec4:	b003      	add	sp, #12
d0046ec6:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0046eca:	4b24      	ldr	r3, [pc, #144]	; (d0046f5c <setvbuf+0x184>)
d0046ecc:	429c      	cmp	r4, r3
d0046ece:	d101      	bne.n	d0046ed4 <setvbuf+0xfc>
d0046ed0:	68bc      	ldr	r4, [r7, #8]
d0046ed2:	e793      	b.n	d0046dfc <setvbuf+0x24>
d0046ed4:	4b22      	ldr	r3, [pc, #136]	; (d0046f60 <setvbuf+0x188>)
d0046ed6:	429c      	cmp	r4, r3
d0046ed8:	bf08      	it	eq
d0046eda:	68fc      	ldreq	r4, [r7, #12]
d0046edc:	e78e      	b.n	d0046dfc <setvbuf+0x24>
d0046ede:	2e00      	cmp	r6, #0
d0046ee0:	d0cd      	beq.n	d0046e7e <setvbuf+0xa6>
d0046ee2:	69bb      	ldr	r3, [r7, #24]
d0046ee4:	b913      	cbnz	r3, d0046eec <setvbuf+0x114>
d0046ee6:	4638      	mov	r0, r7
d0046ee8:	f7ff fdd8 	bl	d0046a9c <__sinit>
d0046eec:	f1b8 0f01 	cmp.w	r8, #1
d0046ef0:	bf08      	it	eq
d0046ef2:	89a3      	ldrheq	r3, [r4, #12]
d0046ef4:	6026      	str	r6, [r4, #0]
d0046ef6:	bf04      	itt	eq
d0046ef8:	f043 0301 	orreq.w	r3, r3, #1
d0046efc:	81a3      	strheq	r3, [r4, #12]
d0046efe:	89a2      	ldrh	r2, [r4, #12]
d0046f00:	f012 0308 	ands.w	r3, r2, #8
d0046f04:	e9c4 6504 	strd	r6, r5, [r4, #16]
d0046f08:	d01c      	beq.n	d0046f44 <setvbuf+0x16c>
d0046f0a:	07d3      	lsls	r3, r2, #31
d0046f0c:	bf41      	itttt	mi
d0046f0e:	2300      	movmi	r3, #0
d0046f10:	426d      	negmi	r5, r5
d0046f12:	60a3      	strmi	r3, [r4, #8]
d0046f14:	61a5      	strmi	r5, [r4, #24]
d0046f16:	bf58      	it	pl
d0046f18:	60a5      	strpl	r5, [r4, #8]
d0046f1a:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0046f1c:	f015 0501 	ands.w	r5, r5, #1
d0046f20:	d115      	bne.n	d0046f4e <setvbuf+0x176>
d0046f22:	f412 7f00 	tst.w	r2, #512	; 0x200
d0046f26:	e7c8      	b.n	d0046eba <setvbuf+0xe2>
d0046f28:	4648      	mov	r0, r9
d0046f2a:	f7ff fe7d 	bl	d0046c28 <malloc>
d0046f2e:	4606      	mov	r6, r0
d0046f30:	2800      	cmp	r0, #0
d0046f32:	d0ae      	beq.n	d0046e92 <setvbuf+0xba>
d0046f34:	464d      	mov	r5, r9
d0046f36:	89a3      	ldrh	r3, [r4, #12]
d0046f38:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0046f3c:	81a3      	strh	r3, [r4, #12]
d0046f3e:	e7d0      	b.n	d0046ee2 <setvbuf+0x10a>
d0046f40:	2500      	movs	r5, #0
d0046f42:	e7a8      	b.n	d0046e96 <setvbuf+0xbe>
d0046f44:	60a3      	str	r3, [r4, #8]
d0046f46:	e7e8      	b.n	d0046f1a <setvbuf+0x142>
d0046f48:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0046f4c:	e7b9      	b.n	d0046ec2 <setvbuf+0xea>
d0046f4e:	2500      	movs	r5, #0
d0046f50:	e7b7      	b.n	d0046ec2 <setvbuf+0xea>
d0046f52:	bf00      	nop
d0046f54:	d00482a0 	.word	0xd00482a0
d0046f58:	d0047aa0 	.word	0xd0047aa0
d0046f5c:	d0047ac0 	.word	0xd0047ac0
d0046f60:	d0047a80 	.word	0xd0047a80

d0046f64 <__sread>:
d0046f64:	b510      	push	{r4, lr}
d0046f66:	460c      	mov	r4, r1
d0046f68:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0046f6c:	f000 f87e 	bl	d004706c <_read_r>
d0046f70:	2800      	cmp	r0, #0
d0046f72:	bfab      	itete	ge
d0046f74:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0046f76:	89a3      	ldrhlt	r3, [r4, #12]
d0046f78:	181b      	addge	r3, r3, r0
d0046f7a:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d0046f7e:	bfac      	ite	ge
d0046f80:	6563      	strge	r3, [r4, #84]	; 0x54
d0046f82:	81a3      	strhlt	r3, [r4, #12]
d0046f84:	bd10      	pop	{r4, pc}

d0046f86 <__swrite>:
d0046f86:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0046f8a:	461f      	mov	r7, r3
d0046f8c:	898b      	ldrh	r3, [r1, #12]
d0046f8e:	05db      	lsls	r3, r3, #23
d0046f90:	4605      	mov	r5, r0
d0046f92:	460c      	mov	r4, r1
d0046f94:	4616      	mov	r6, r2
d0046f96:	d505      	bpl.n	d0046fa4 <__swrite+0x1e>
d0046f98:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0046f9c:	2302      	movs	r3, #2
d0046f9e:	2200      	movs	r2, #0
d0046fa0:	f000 f846 	bl	d0047030 <_lseek_r>
d0046fa4:	89a3      	ldrh	r3, [r4, #12]
d0046fa6:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0046faa:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0046fae:	81a3      	strh	r3, [r4, #12]
d0046fb0:	4632      	mov	r2, r6
d0046fb2:	463b      	mov	r3, r7
d0046fb4:	4628      	mov	r0, r5
d0046fb6:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0046fba:	f7f9 b84b 	b.w	d0040054 <_write_r>

d0046fbe <__sseek>:
d0046fbe:	b510      	push	{r4, lr}
d0046fc0:	460c      	mov	r4, r1
d0046fc2:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0046fc6:	f000 f833 	bl	d0047030 <_lseek_r>
d0046fca:	1c43      	adds	r3, r0, #1
d0046fcc:	89a3      	ldrh	r3, [r4, #12]
d0046fce:	bf15      	itete	ne
d0046fd0:	6560      	strne	r0, [r4, #84]	; 0x54
d0046fd2:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0046fd6:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d0046fda:	81a3      	strheq	r3, [r4, #12]
d0046fdc:	bf18      	it	ne
d0046fde:	81a3      	strhne	r3, [r4, #12]
d0046fe0:	bd10      	pop	{r4, pc}

d0046fe2 <__sclose>:
d0046fe2:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0046fe6:	f000 b801 	b.w	d0046fec <_close_r>
	...

d0046fec <_close_r>:
d0046fec:	b538      	push	{r3, r4, r5, lr}
d0046fee:	4d06      	ldr	r5, [pc, #24]	; (d0047008 <_close_r+0x1c>)
d0046ff0:	2300      	movs	r3, #0
d0046ff2:	4604      	mov	r4, r0
d0046ff4:	4608      	mov	r0, r1
d0046ff6:	602b      	str	r3, [r5, #0]
d0046ff8:	f7f9 f866 	bl	d00400c8 <_close>
d0046ffc:	1c43      	adds	r3, r0, #1
d0046ffe:	d102      	bne.n	d0047006 <_close_r+0x1a>
d0047000:	682b      	ldr	r3, [r5, #0]
d0047002:	b103      	cbz	r3, d0047006 <_close_r+0x1a>
d0047004:	6023      	str	r3, [r4, #0]
d0047006:	bd38      	pop	{r3, r4, r5, pc}
d0047008:	d0133a8c 	.word	0xd0133a8c

d004700c <_fstat_r>:
d004700c:	b538      	push	{r3, r4, r5, lr}
d004700e:	4d07      	ldr	r5, [pc, #28]	; (d004702c <_fstat_r+0x20>)
d0047010:	2300      	movs	r3, #0
d0047012:	4604      	mov	r4, r0
d0047014:	4608      	mov	r0, r1
d0047016:	4611      	mov	r1, r2
d0047018:	602b      	str	r3, [r5, #0]
d004701a:	f7f9 f859 	bl	d00400d0 <_fstat>
d004701e:	1c43      	adds	r3, r0, #1
d0047020:	d102      	bne.n	d0047028 <_fstat_r+0x1c>
d0047022:	682b      	ldr	r3, [r5, #0]
d0047024:	b103      	cbz	r3, d0047028 <_fstat_r+0x1c>
d0047026:	6023      	str	r3, [r4, #0]
d0047028:	bd38      	pop	{r3, r4, r5, pc}
d004702a:	bf00      	nop
d004702c:	d0133a8c 	.word	0xd0133a8c

d0047030 <_lseek_r>:
d0047030:	b538      	push	{r3, r4, r5, lr}
d0047032:	4d07      	ldr	r5, [pc, #28]	; (d0047050 <_lseek_r+0x20>)
d0047034:	4604      	mov	r4, r0
d0047036:	4608      	mov	r0, r1
d0047038:	4611      	mov	r1, r2
d004703a:	2200      	movs	r2, #0
d004703c:	602a      	str	r2, [r5, #0]
d004703e:	461a      	mov	r2, r3
d0047040:	f7f9 f84c 	bl	d00400dc <_lseek>
d0047044:	1c43      	adds	r3, r0, #1
d0047046:	d102      	bne.n	d004704e <_lseek_r+0x1e>
d0047048:	682b      	ldr	r3, [r5, #0]
d004704a:	b103      	cbz	r3, d004704e <_lseek_r+0x1e>
d004704c:	6023      	str	r3, [r4, #0]
d004704e:	bd38      	pop	{r3, r4, r5, pc}
d0047050:	d0133a8c 	.word	0xd0133a8c

d0047054 <__malloc_lock>:
d0047054:	4801      	ldr	r0, [pc, #4]	; (d004705c <__malloc_lock+0x8>)
d0047056:	f7ff bdc0 	b.w	d0046bda <__retarget_lock_acquire_recursive>
d004705a:	bf00      	nop
d004705c:	d0133a84 	.word	0xd0133a84

d0047060 <__malloc_unlock>:
d0047060:	4801      	ldr	r0, [pc, #4]	; (d0047068 <__malloc_unlock+0x8>)
d0047062:	f7ff bdbb 	b.w	d0046bdc <__retarget_lock_release_recursive>
d0047066:	bf00      	nop
d0047068:	d0133a84 	.word	0xd0133a84

d004706c <_read_r>:
d004706c:	b538      	push	{r3, r4, r5, lr}
d004706e:	4d07      	ldr	r5, [pc, #28]	; (d004708c <_read_r+0x20>)
d0047070:	4604      	mov	r4, r0
d0047072:	4608      	mov	r0, r1
d0047074:	4611      	mov	r1, r2
d0047076:	2200      	movs	r2, #0
d0047078:	602a      	str	r2, [r5, #0]
d004707a:	461a      	mov	r2, r3
d004707c:	f7f9 f81a 	bl	d00400b4 <_read>
d0047080:	1c43      	adds	r3, r0, #1
d0047082:	d102      	bne.n	d004708a <_read_r+0x1e>
d0047084:	682b      	ldr	r3, [r5, #0]
d0047086:	b103      	cbz	r3, d004708a <_read_r+0x1e>
d0047088:	6023      	str	r3, [r4, #0]
d004708a:	bd38      	pop	{r3, r4, r5, pc}
d004708c:	d0133a8c 	.word	0xd0133a8c

d0047090 <sinf_poly>:
d0047090:	07cb      	lsls	r3, r1, #31
d0047092:	d412      	bmi.n	d00470ba <sinf_poly+0x2a>
d0047094:	ee21 6b00 	vmul.f64	d6, d1, d0
d0047098:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d004709c:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d00470a0:	eea5 7b01 	vfma.f64	d7, d5, d1
d00470a4:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d00470a8:	ee21 1b06 	vmul.f64	d1, d1, d6
d00470ac:	eea5 0b06 	vfma.f64	d0, d5, d6
d00470b0:	eea7 0b01 	vfma.f64	d0, d7, d1
d00470b4:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d00470b8:	4770      	bx	lr
d00470ba:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d00470be:	ee21 6b01 	vmul.f64	d6, d1, d1
d00470c2:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d00470c6:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d00470ca:	eea1 7b05 	vfma.f64	d7, d1, d5
d00470ce:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d00470d2:	eea1 0b05 	vfma.f64	d0, d1, d5
d00470d6:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d00470da:	ee21 1b06 	vmul.f64	d1, d1, d6
d00470de:	eea6 0b05 	vfma.f64	d0, d6, d5
d00470e2:	e7e5      	b.n	d00470b0 <sinf_poly+0x20>
d00470e4:	0000      	movs	r0, r0
	...

d00470e8 <cosf>:
d00470e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00470ea:	ee10 4a10 	vmov	r4, s0
d00470ee:	f3c4 530a 	ubfx	r3, r4, #20, #11
d00470f2:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d00470f6:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d00470fa:	d20c      	bcs.n	d0047116 <cosf+0x2e>
d00470fc:	ee26 1b06 	vmul.f64	d1, d6, d6
d0047100:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d0047104:	d378      	bcc.n	d00471f8 <cosf+0x110>
d0047106:	eeb0 0b46 	vmov.f64	d0, d6
d004710a:	483f      	ldr	r0, [pc, #252]	; (d0047208 <cosf+0x120>)
d004710c:	2101      	movs	r1, #1
d004710e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0047112:	f7ff bfbd 	b.w	d0047090 <sinf_poly>
d0047116:	f240 422e 	movw	r2, #1070	; 0x42e
d004711a:	4293      	cmp	r3, r2
d004711c:	d826      	bhi.n	d004716c <cosf+0x84>
d004711e:	4b3a      	ldr	r3, [pc, #232]	; (d0047208 <cosf+0x120>)
d0047120:	ed93 7b08 	vldr	d7, [r3, #32]
d0047124:	ee26 7b07 	vmul.f64	d7, d6, d7
d0047128:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d004712c:	f103 0070 	add.w	r0, r3, #112	; 0x70
d0047130:	ee17 1a90 	vmov	r1, s15
d0047134:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d0047138:	1609      	asrs	r1, r1, #24
d004713a:	ee07 1a90 	vmov	s15, r1
d004713e:	f001 0203 	and.w	r2, r1, #3
d0047142:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d0047146:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d004714a:	ed92 0b00 	vldr	d0, [r2]
d004714e:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d0047152:	f011 0f02 	tst.w	r1, #2
d0047156:	eea5 6b47 	vfms.f64	d6, d5, d7
d004715a:	f081 0101 	eor.w	r1, r1, #1
d004715e:	bf08      	it	eq
d0047160:	4618      	moveq	r0, r3
d0047162:	ee26 1b06 	vmul.f64	d1, d6, d6
d0047166:	ee20 0b06 	vmul.f64	d0, d0, d6
d004716a:	e7d0      	b.n	d004710e <cosf+0x26>
d004716c:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0047170:	d23e      	bcs.n	d00471f0 <cosf+0x108>
d0047172:	4b26      	ldr	r3, [pc, #152]	; (d004720c <cosf+0x124>)
d0047174:	f3c4 6283 	ubfx	r2, r4, #26, #4
d0047178:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d004717c:	f3c4 0116 	ubfx	r1, r4, #0, #23
d0047180:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d0047184:	6a06      	ldr	r6, [r0, #32]
d0047186:	6900      	ldr	r0, [r0, #16]
d0047188:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d004718c:	40a9      	lsls	r1, r5
d004718e:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d0047192:	fba1 6706 	umull	r6, r7, r1, r6
d0047196:	fb05 f301 	mul.w	r3, r5, r1
d004719a:	463a      	mov	r2, r7
d004719c:	fbe0 2301 	umlal	r2, r3, r0, r1
d00471a0:	1c11      	adds	r1, r2, #0
d00471a2:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d00471a6:	2000      	movs	r0, #0
d00471a8:	1a10      	subs	r0, r2, r0
d00471aa:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d00471ae:	eb63 0101 	sbc.w	r1, r3, r1
d00471b2:	f000 fbab 	bl	d004790c <__aeabi_l2d>
d00471b6:	0fb5      	lsrs	r5, r6, #30
d00471b8:	4b13      	ldr	r3, [pc, #76]	; (d0047208 <cosf+0x120>)
d00471ba:	eb05 74d4 	add.w	r4, r5, r4, lsr #31
d00471be:	ed9f 0b10 	vldr	d0, [pc, #64]	; d0047200 <cosf+0x118>
d00471c2:	ec41 0b17 	vmov	d7, r0, r1
d00471c6:	f004 0203 	and.w	r2, r4, #3
d00471ca:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d00471ce:	ee27 0b00 	vmul.f64	d0, d7, d0
d00471d2:	ed92 7b00 	vldr	d7, [r2]
d00471d6:	ee20 1b00 	vmul.f64	d1, d0, d0
d00471da:	f014 0f02 	tst.w	r4, #2
d00471de:	f103 0070 	add.w	r0, r3, #112	; 0x70
d00471e2:	f085 0101 	eor.w	r1, r5, #1
d00471e6:	bf08      	it	eq
d00471e8:	4618      	moveq	r0, r3
d00471ea:	ee27 0b00 	vmul.f64	d0, d7, d0
d00471ee:	e78e      	b.n	d004710e <cosf+0x26>
d00471f0:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d00471f4:	f000 b844 	b.w	d0047280 <__math_invalidf>
d00471f8:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d00471fc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00471fe:	bf00      	nop
d0047200:	54442d18 	.word	0x54442d18
d0047204:	3c1921fb 	.word	0x3c1921fb
d0047208:	d0047db0 	.word	0xd0047db0
d004720c:	d0047d50 	.word	0xd0047d50

d0047210 <with_errnof>:
d0047210:	b513      	push	{r0, r1, r4, lr}
d0047212:	4604      	mov	r4, r0
d0047214:	ed8d 0a01 	vstr	s0, [sp, #4]
d0047218:	f7ff faac 	bl	d0046774 <__errno>
d004721c:	ed9d 0a01 	vldr	s0, [sp, #4]
d0047220:	6004      	str	r4, [r0, #0]
d0047222:	b002      	add	sp, #8
d0047224:	bd10      	pop	{r4, pc}

d0047226 <xflowf>:
d0047226:	b130      	cbz	r0, d0047236 <xflowf+0x10>
d0047228:	eef1 7a40 	vneg.f32	s15, s0
d004722c:	ee27 0a80 	vmul.f32	s0, s15, s0
d0047230:	2022      	movs	r0, #34	; 0x22
d0047232:	f7ff bfed 	b.w	d0047210 <with_errnof>
d0047236:	eef0 7a40 	vmov.f32	s15, s0
d004723a:	e7f7      	b.n	d004722c <xflowf+0x6>

d004723c <__math_uflowf>:
d004723c:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0047244 <__math_uflowf+0x8>
d0047240:	f7ff bff1 	b.w	d0047226 <xflowf>
d0047244:	10000000 	.word	0x10000000

d0047248 <__math_may_uflowf>:
d0047248:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0047250 <__math_may_uflowf+0x8>
d004724c:	f7ff bfeb 	b.w	d0047226 <xflowf>
d0047250:	1a200000 	.word	0x1a200000

d0047254 <__math_oflowf>:
d0047254:	ed9f 0a01 	vldr	s0, [pc, #4]	; d004725c <__math_oflowf+0x8>
d0047258:	f7ff bfe5 	b.w	d0047226 <xflowf>
d004725c:	70000000 	.word	0x70000000

d0047260 <__math_divzerof>:
d0047260:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0047264:	eeff 7a00 	vmov.f32	s15, #240	; 0xbf800000 -1.0
d0047268:	2800      	cmp	r0, #0
d004726a:	fe40 7a27 	vseleq.f32	s15, s0, s15
d004726e:	ed9f 0a03 	vldr	s0, [pc, #12]	; d004727c <__math_divzerof+0x1c>
d0047272:	2022      	movs	r0, #34	; 0x22
d0047274:	ee87 0a80 	vdiv.f32	s0, s15, s0
d0047278:	f7ff bfca 	b.w	d0047210 <with_errnof>
d004727c:	00000000 	.word	0x00000000

d0047280 <__math_invalidf>:
d0047280:	eef0 7a40 	vmov.f32	s15, s0
d0047284:	ee30 7a40 	vsub.f32	s14, s0, s0
d0047288:	eef4 7a67 	vcmp.f32	s15, s15
d004728c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0047290:	ee87 0a07 	vdiv.f32	s0, s14, s14
d0047294:	d602      	bvs.n	d004729c <__math_invalidf+0x1c>
d0047296:	2021      	movs	r0, #33	; 0x21
d0047298:	f7ff bfba 	b.w	d0047210 <with_errnof>
d004729c:	4770      	bx	lr
	...

d00472a0 <expf>:
d00472a0:	ee10 2a10 	vmov	r2, s0
d00472a4:	b470      	push	{r4, r5, r6}
d00472a6:	f3c2 530a 	ubfx	r3, r2, #20, #11
d00472aa:	f240 442a 	movw	r4, #1066	; 0x42a
d00472ae:	42a3      	cmp	r3, r4
d00472b0:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d00472b4:	d92a      	bls.n	d004730c <expf+0x6c>
d00472b6:	f512 0f00 	cmn.w	r2, #8388608	; 0x800000
d00472ba:	d059      	beq.n	d0047370 <expf+0xd0>
d00472bc:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d00472c0:	d303      	bcc.n	d00472ca <expf+0x2a>
d00472c2:	ee30 0a00 	vadd.f32	s0, s0, s0
d00472c6:	bc70      	pop	{r4, r5, r6}
d00472c8:	4770      	bx	lr
d00472ca:	eddf 7a2b 	vldr	s15, [pc, #172]	; d0047378 <expf+0xd8>
d00472ce:	eeb4 0ae7 	vcmpe.f32	s0, s15
d00472d2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00472d6:	dd03      	ble.n	d00472e0 <expf+0x40>
d00472d8:	bc70      	pop	{r4, r5, r6}
d00472da:	2000      	movs	r0, #0
d00472dc:	f7ff bfba 	b.w	d0047254 <__math_oflowf>
d00472e0:	eddf 7a26 	vldr	s15, [pc, #152]	; d004737c <expf+0xdc>
d00472e4:	eeb4 0ae7 	vcmpe.f32	s0, s15
d00472e8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00472ec:	d503      	bpl.n	d00472f6 <expf+0x56>
d00472ee:	bc70      	pop	{r4, r5, r6}
d00472f0:	2000      	movs	r0, #0
d00472f2:	f7ff bfa3 	b.w	d004723c <__math_uflowf>
d00472f6:	eddf 7a22 	vldr	s15, [pc, #136]	; d0047380 <expf+0xe0>
d00472fa:	eeb4 0ae7 	vcmpe.f32	s0, s15
d00472fe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0047302:	d503      	bpl.n	d004730c <expf+0x6c>
d0047304:	bc70      	pop	{r4, r5, r6}
d0047306:	2000      	movs	r0, #0
d0047308:	f7ff bf9e 	b.w	d0047248 <__math_may_uflowf>
d004730c:	4b1d      	ldr	r3, [pc, #116]	; (d0047384 <expf+0xe4>)
d004730e:	eeb7 0b00 	vmov.f64	d0, #112	; 0x3f800000  1.0
d0047312:	ed93 5b4a 	vldr	d5, [r3, #296]	; 0x128
d0047316:	ed93 4b48 	vldr	d4, [r3, #288]	; 0x120
d004731a:	eeb0 7b44 	vmov.f64	d7, d4
d004731e:	eea5 7b06 	vfma.f64	d7, d5, d6
d0047322:	ee17 5a10 	vmov	r5, s14
d0047326:	ee37 7b44 	vsub.f64	d7, d7, d4
d004732a:	f005 021f 	and.w	r2, r5, #31
d004732e:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d0047332:	e9d2 4600 	ldrd	r4, r6, [r2]
d0047336:	ee95 7b06 	vfnms.f64	d7, d5, d6
d004733a:	ed93 4b50 	vldr	d4, [r3, #320]	; 0x140
d004733e:	ed93 5b4c 	vldr	d5, [r3, #304]	; 0x130
d0047342:	eea4 0b07 	vfma.f64	d0, d4, d7
d0047346:	ed93 6b4e 	vldr	d6, [r3, #312]	; 0x138
d004734a:	2300      	movs	r3, #0
d004734c:	1918      	adds	r0, r3, r4
d004734e:	ea4f 32c5 	mov.w	r2, r5, lsl #15
d0047352:	eb42 0106 	adc.w	r1, r2, r6
d0047356:	eea5 6b07 	vfma.f64	d6, d5, d7
d004735a:	ee27 5b07 	vmul.f64	d5, d7, d7
d004735e:	ec41 0b17 	vmov	d7, r0, r1
d0047362:	eea6 0b05 	vfma.f64	d0, d6, d5
d0047366:	ee20 0b07 	vmul.f64	d0, d0, d7
d004736a:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d004736e:	e7aa      	b.n	d00472c6 <expf+0x26>
d0047370:	ed9f 0a05 	vldr	s0, [pc, #20]	; d0047388 <expf+0xe8>
d0047374:	e7a7      	b.n	d00472c6 <expf+0x26>
d0047376:	bf00      	nop
d0047378:	42b17217 	.word	0x42b17217
d004737c:	c2cff1b4 	.word	0xc2cff1b4
d0047380:	c2ce8ecf 	.word	0xc2ce8ecf
d0047384:	d0047ae8 	.word	0xd0047ae8
d0047388:	00000000 	.word	0x00000000

d004738c <logf>:
d004738c:	ee10 3a10 	vmov	r3, s0
d0047390:	f1b3 5f7e 	cmp.w	r3, #1065353216	; 0x3f800000
d0047394:	b410      	push	{r4}
d0047396:	d055      	beq.n	d0047444 <logf+0xb8>
d0047398:	f5a3 0200 	sub.w	r2, r3, #8388608	; 0x800000
d004739c:	f1b2 4ffe 	cmp.w	r2, #2130706432	; 0x7f000000
d00473a0:	d31a      	bcc.n	d00473d8 <logf+0x4c>
d00473a2:	005a      	lsls	r2, r3, #1
d00473a4:	d104      	bne.n	d00473b0 <logf+0x24>
d00473a6:	f85d 4b04 	ldr.w	r4, [sp], #4
d00473aa:	2001      	movs	r0, #1
d00473ac:	f7ff bf58 	b.w	d0047260 <__math_divzerof>
d00473b0:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d00473b4:	d043      	beq.n	d004743e <logf+0xb2>
d00473b6:	2b00      	cmp	r3, #0
d00473b8:	db02      	blt.n	d00473c0 <logf+0x34>
d00473ba:	f1b2 4f7f 	cmp.w	r2, #4278190080	; 0xff000000
d00473be:	d303      	bcc.n	d00473c8 <logf+0x3c>
d00473c0:	f85d 4b04 	ldr.w	r4, [sp], #4
d00473c4:	f7ff bf5c 	b.w	d0047280 <__math_invalidf>
d00473c8:	eddf 7a20 	vldr	s15, [pc, #128]	; d004744c <logf+0xc0>
d00473cc:	ee20 0a27 	vmul.f32	s0, s0, s15
d00473d0:	ee10 3a10 	vmov	r3, s0
d00473d4:	f1a3 6338 	sub.w	r3, r3, #192937984	; 0xb800000
d00473d8:	f103 4240 	add.w	r2, r3, #3221225472	; 0xc0000000
d00473dc:	491c      	ldr	r1, [pc, #112]	; (d0047450 <logf+0xc4>)
d00473de:	eebf 0b00 	vmov.f64	d0, #240	; 0xbf800000 -1.0
d00473e2:	f502 024d 	add.w	r2, r2, #13434880	; 0xcd0000
d00473e6:	f3c2 40c3 	ubfx	r0, r2, #19, #4
d00473ea:	0dd4      	lsrs	r4, r2, #23
d00473ec:	eb01 1000 	add.w	r0, r1, r0, lsl #4
d00473f0:	05e4      	lsls	r4, r4, #23
d00473f2:	ed90 6b00 	vldr	d6, [r0]
d00473f6:	1b1b      	subs	r3, r3, r4
d00473f8:	ee07 3a90 	vmov	s15, r3
d00473fc:	ed91 5b40 	vldr	d5, [r1, #256]	; 0x100
d0047400:	eeb7 7ae7 	vcvt.f64.f32	d7, s15
d0047404:	15d2      	asrs	r2, r2, #23
d0047406:	eea6 0b07 	vfma.f64	d0, d6, d7
d004740a:	ed90 6b02 	vldr	d6, [r0, #8]
d004740e:	ee07 2a90 	vmov	s15, r2
d0047412:	ed91 4b44 	vldr	d4, [r1, #272]	; 0x110
d0047416:	eeb8 7be7 	vcvt.f64.s32	d7, s15
d004741a:	eea7 6b05 	vfma.f64	d6, d7, d5
d004741e:	ed91 7b46 	vldr	d7, [r1, #280]	; 0x118
d0047422:	ee20 5b00 	vmul.f64	d5, d0, d0
d0047426:	eea4 7b00 	vfma.f64	d7, d4, d0
d004742a:	ed91 4b42 	vldr	d4, [r1, #264]	; 0x108
d004742e:	ee30 0b06 	vadd.f64	d0, d0, d6
d0047432:	eea4 7b05 	vfma.f64	d7, d4, d5
d0047436:	eea5 0b07 	vfma.f64	d0, d5, d7
d004743a:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d004743e:	f85d 4b04 	ldr.w	r4, [sp], #4
d0047442:	4770      	bx	lr
d0047444:	ed9f 0a03 	vldr	s0, [pc, #12]	; d0047454 <logf+0xc8>
d0047448:	e7f9      	b.n	d004743e <logf+0xb2>
d004744a:	bf00      	nop
d004744c:	4b000000 	.word	0x4b000000
d0047450:	d0047c30 	.word	0xd0047c30
d0047454:	00000000 	.word	0x00000000

d0047458 <sinf_poly>:
d0047458:	07cb      	lsls	r3, r1, #31
d004745a:	d412      	bmi.n	d0047482 <sinf_poly+0x2a>
d004745c:	ee21 6b00 	vmul.f64	d6, d1, d0
d0047460:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d0047464:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d0047468:	eea5 7b01 	vfma.f64	d7, d5, d1
d004746c:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d0047470:	ee21 1b06 	vmul.f64	d1, d1, d6
d0047474:	eea5 0b06 	vfma.f64	d0, d5, d6
d0047478:	eea7 0b01 	vfma.f64	d0, d7, d1
d004747c:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0047480:	4770      	bx	lr
d0047482:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d0047486:	ee21 6b01 	vmul.f64	d6, d1, d1
d004748a:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d004748e:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d0047492:	eea1 7b05 	vfma.f64	d7, d1, d5
d0047496:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d004749a:	eea1 0b05 	vfma.f64	d0, d1, d5
d004749e:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d00474a2:	ee21 1b06 	vmul.f64	d1, d1, d6
d00474a6:	eea6 0b05 	vfma.f64	d0, d6, d5
d00474aa:	e7e5      	b.n	d0047478 <sinf_poly+0x20>
d00474ac:	0000      	movs	r0, r0
	...

d00474b0 <sinf>:
d00474b0:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
d00474b2:	ee10 4a10 	vmov	r4, s0
d00474b6:	f3c4 530a 	ubfx	r3, r4, #20, #11
d00474ba:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d00474be:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d00474c2:	eef0 7a40 	vmov.f32	s15, s0
d00474c6:	ea4f 5214 	mov.w	r2, r4, lsr #20
d00474ca:	d218      	bcs.n	d00474fe <sinf+0x4e>
d00474cc:	ee26 1b06 	vmul.f64	d1, d6, d6
d00474d0:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d00474d4:	d20a      	bcs.n	d00474ec <sinf+0x3c>
d00474d6:	f412 6fff 	tst.w	r2, #2040	; 0x7f8
d00474da:	d103      	bne.n	d00474e4 <sinf+0x34>
d00474dc:	eeb7 1bc1 	vcvt.f32.f64	s2, d1
d00474e0:	ed8d 1a01 	vstr	s2, [sp, #4]
d00474e4:	eeb0 0a67 	vmov.f32	s0, s15
d00474e8:	b003      	add	sp, #12
d00474ea:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00474ec:	483e      	ldr	r0, [pc, #248]	; (d00475e8 <sinf+0x138>)
d00474ee:	eeb0 0b46 	vmov.f64	d0, d6
d00474f2:	2100      	movs	r1, #0
d00474f4:	b003      	add	sp, #12
d00474f6:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d00474fa:	f7ff bfad 	b.w	d0047458 <sinf_poly>
d00474fe:	f240 422e 	movw	r2, #1070	; 0x42e
d0047502:	4293      	cmp	r3, r2
d0047504:	d824      	bhi.n	d0047550 <sinf+0xa0>
d0047506:	4b38      	ldr	r3, [pc, #224]	; (d00475e8 <sinf+0x138>)
d0047508:	ed93 7b08 	vldr	d7, [r3, #32]
d004750c:	ee26 7b07 	vmul.f64	d7, d6, d7
d0047510:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d0047514:	f103 0070 	add.w	r0, r3, #112	; 0x70
d0047518:	ee17 1a90 	vmov	r1, s15
d004751c:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d0047520:	1609      	asrs	r1, r1, #24
d0047522:	ee07 1a90 	vmov	s15, r1
d0047526:	f001 0203 	and.w	r2, r1, #3
d004752a:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d004752e:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d0047532:	ed92 0b00 	vldr	d0, [r2]
d0047536:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d004753a:	f011 0f02 	tst.w	r1, #2
d004753e:	eea5 6b47 	vfms.f64	d6, d5, d7
d0047542:	bf08      	it	eq
d0047544:	4618      	moveq	r0, r3
d0047546:	ee26 1b06 	vmul.f64	d1, d6, d6
d004754a:	ee20 0b06 	vmul.f64	d0, d0, d6
d004754e:	e7d1      	b.n	d00474f4 <sinf+0x44>
d0047550:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0047554:	d23d      	bcs.n	d00475d2 <sinf+0x122>
d0047556:	4b25      	ldr	r3, [pc, #148]	; (d00475ec <sinf+0x13c>)
d0047558:	f3c4 6283 	ubfx	r2, r4, #26, #4
d004755c:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d0047560:	f3c4 0116 	ubfx	r1, r4, #0, #23
d0047564:	6a06      	ldr	r6, [r0, #32]
d0047566:	6900      	ldr	r0, [r0, #16]
d0047568:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d004756c:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d0047570:	40a9      	lsls	r1, r5
d0047572:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d0047576:	fba1 6706 	umull	r6, r7, r1, r6
d004757a:	fb05 f301 	mul.w	r3, r5, r1
d004757e:	463a      	mov	r2, r7
d0047580:	fbe0 2301 	umlal	r2, r3, r0, r1
d0047584:	1c11      	adds	r1, r2, #0
d0047586:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d004758a:	2000      	movs	r0, #0
d004758c:	1a10      	subs	r0, r2, r0
d004758e:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d0047592:	eb63 0101 	sbc.w	r1, r3, r1
d0047596:	f000 f9b9 	bl	d004790c <__aeabi_l2d>
d004759a:	0fb5      	lsrs	r5, r6, #30
d004759c:	4a12      	ldr	r2, [pc, #72]	; (d00475e8 <sinf+0x138>)
d004759e:	eb05 73d4 	add.w	r3, r5, r4, lsr #31
d00475a2:	ed9f 0b0f 	vldr	d0, [pc, #60]	; d00475e0 <sinf+0x130>
d00475a6:	ec41 0b17 	vmov	d7, r0, r1
d00475aa:	f003 0103 	and.w	r1, r3, #3
d00475ae:	eb02 01c1 	add.w	r1, r2, r1, lsl #3
d00475b2:	ee27 0b00 	vmul.f64	d0, d7, d0
d00475b6:	ed91 7b00 	vldr	d7, [r1]
d00475ba:	ee20 1b00 	vmul.f64	d1, d0, d0
d00475be:	f013 0f02 	tst.w	r3, #2
d00475c2:	f102 0070 	add.w	r0, r2, #112	; 0x70
d00475c6:	4629      	mov	r1, r5
d00475c8:	bf08      	it	eq
d00475ca:	4610      	moveq	r0, r2
d00475cc:	ee27 0b00 	vmul.f64	d0, d7, d0
d00475d0:	e790      	b.n	d00474f4 <sinf+0x44>
d00475d2:	b003      	add	sp, #12
d00475d4:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d00475d8:	f7ff be52 	b.w	d0047280 <__math_invalidf>
d00475dc:	f3af 8000 	nop.w
d00475e0:	54442d18 	.word	0x54442d18
d00475e4:	3c1921fb 	.word	0x3c1921fb
d00475e8:	d0047db0 	.word	0xd0047db0
d00475ec:	d0047d50 	.word	0xd0047d50

d00475f0 <__aeabi_drsub>:
d00475f0:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
d00475f4:	e002      	b.n	d00475fc <__adddf3>
d00475f6:	bf00      	nop

d00475f8 <__aeabi_dsub>:
d00475f8:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

d00475fc <__adddf3>:
d00475fc:	b530      	push	{r4, r5, lr}
d00475fe:	ea4f 0441 	mov.w	r4, r1, lsl #1
d0047602:	ea4f 0543 	mov.w	r5, r3, lsl #1
d0047606:	ea94 0f05 	teq	r4, r5
d004760a:	bf08      	it	eq
d004760c:	ea90 0f02 	teqeq	r0, r2
d0047610:	bf1f      	itttt	ne
d0047612:	ea54 0c00 	orrsne.w	ip, r4, r0
d0047616:	ea55 0c02 	orrsne.w	ip, r5, r2
d004761a:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
d004761e:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d0047622:	f000 80e2 	beq.w	d00477ea <__adddf3+0x1ee>
d0047626:	ea4f 5454 	mov.w	r4, r4, lsr #21
d004762a:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
d004762e:	bfb8      	it	lt
d0047630:	426d      	neglt	r5, r5
d0047632:	dd0c      	ble.n	d004764e <__adddf3+0x52>
d0047634:	442c      	add	r4, r5
d0047636:	ea80 0202 	eor.w	r2, r0, r2
d004763a:	ea81 0303 	eor.w	r3, r1, r3
d004763e:	ea82 0000 	eor.w	r0, r2, r0
d0047642:	ea83 0101 	eor.w	r1, r3, r1
d0047646:	ea80 0202 	eor.w	r2, r0, r2
d004764a:	ea81 0303 	eor.w	r3, r1, r3
d004764e:	2d36      	cmp	r5, #54	; 0x36
d0047650:	bf88      	it	hi
d0047652:	bd30      	pophi	{r4, r5, pc}
d0047654:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
d0047658:	ea4f 3101 	mov.w	r1, r1, lsl #12
d004765c:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
d0047660:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
d0047664:	d002      	beq.n	d004766c <__adddf3+0x70>
d0047666:	4240      	negs	r0, r0
d0047668:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d004766c:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
d0047670:	ea4f 3303 	mov.w	r3, r3, lsl #12
d0047674:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
d0047678:	d002      	beq.n	d0047680 <__adddf3+0x84>
d004767a:	4252      	negs	r2, r2
d004767c:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
d0047680:	ea94 0f05 	teq	r4, r5
d0047684:	f000 80a7 	beq.w	d00477d6 <__adddf3+0x1da>
d0047688:	f1a4 0401 	sub.w	r4, r4, #1
d004768c:	f1d5 0e20 	rsbs	lr, r5, #32
d0047690:	db0d      	blt.n	d00476ae <__adddf3+0xb2>
d0047692:	fa02 fc0e 	lsl.w	ip, r2, lr
d0047696:	fa22 f205 	lsr.w	r2, r2, r5
d004769a:	1880      	adds	r0, r0, r2
d004769c:	f141 0100 	adc.w	r1, r1, #0
d00476a0:	fa03 f20e 	lsl.w	r2, r3, lr
d00476a4:	1880      	adds	r0, r0, r2
d00476a6:	fa43 f305 	asr.w	r3, r3, r5
d00476aa:	4159      	adcs	r1, r3
d00476ac:	e00e      	b.n	d00476cc <__adddf3+0xd0>
d00476ae:	f1a5 0520 	sub.w	r5, r5, #32
d00476b2:	f10e 0e20 	add.w	lr, lr, #32
d00476b6:	2a01      	cmp	r2, #1
d00476b8:	fa03 fc0e 	lsl.w	ip, r3, lr
d00476bc:	bf28      	it	cs
d00476be:	f04c 0c02 	orrcs.w	ip, ip, #2
d00476c2:	fa43 f305 	asr.w	r3, r3, r5
d00476c6:	18c0      	adds	r0, r0, r3
d00476c8:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
d00476cc:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d00476d0:	d507      	bpl.n	d00476e2 <__adddf3+0xe6>
d00476d2:	f04f 0e00 	mov.w	lr, #0
d00476d6:	f1dc 0c00 	rsbs	ip, ip, #0
d00476da:	eb7e 0000 	sbcs.w	r0, lr, r0
d00476de:	eb6e 0101 	sbc.w	r1, lr, r1
d00476e2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
d00476e6:	d31b      	bcc.n	d0047720 <__adddf3+0x124>
d00476e8:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
d00476ec:	d30c      	bcc.n	d0047708 <__adddf3+0x10c>
d00476ee:	0849      	lsrs	r1, r1, #1
d00476f0:	ea5f 0030 	movs.w	r0, r0, rrx
d00476f4:	ea4f 0c3c 	mov.w	ip, ip, rrx
d00476f8:	f104 0401 	add.w	r4, r4, #1
d00476fc:	ea4f 5244 	mov.w	r2, r4, lsl #21
d0047700:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
d0047704:	f080 809a 	bcs.w	d004783c <__adddf3+0x240>
d0047708:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
d004770c:	bf08      	it	eq
d004770e:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
d0047712:	f150 0000 	adcs.w	r0, r0, #0
d0047716:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
d004771a:	ea41 0105 	orr.w	r1, r1, r5
d004771e:	bd30      	pop	{r4, r5, pc}
d0047720:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
d0047724:	4140      	adcs	r0, r0
d0047726:	eb41 0101 	adc.w	r1, r1, r1
d004772a:	3c01      	subs	r4, #1
d004772c:	bf28      	it	cs
d004772e:	f5b1 1f80 	cmpcs.w	r1, #1048576	; 0x100000
d0047732:	d2e9      	bcs.n	d0047708 <__adddf3+0x10c>
d0047734:	f091 0f00 	teq	r1, #0
d0047738:	bf04      	itt	eq
d004773a:	4601      	moveq	r1, r0
d004773c:	2000      	moveq	r0, #0
d004773e:	fab1 f381 	clz	r3, r1
d0047742:	bf08      	it	eq
d0047744:	3320      	addeq	r3, #32
d0047746:	f1a3 030b 	sub.w	r3, r3, #11
d004774a:	f1b3 0220 	subs.w	r2, r3, #32
d004774e:	da0c      	bge.n	d004776a <__adddf3+0x16e>
d0047750:	320c      	adds	r2, #12
d0047752:	dd08      	ble.n	d0047766 <__adddf3+0x16a>
d0047754:	f102 0c14 	add.w	ip, r2, #20
d0047758:	f1c2 020c 	rsb	r2, r2, #12
d004775c:	fa01 f00c 	lsl.w	r0, r1, ip
d0047760:	fa21 f102 	lsr.w	r1, r1, r2
d0047764:	e00c      	b.n	d0047780 <__adddf3+0x184>
d0047766:	f102 0214 	add.w	r2, r2, #20
d004776a:	bfd8      	it	le
d004776c:	f1c2 0c20 	rsble	ip, r2, #32
d0047770:	fa01 f102 	lsl.w	r1, r1, r2
d0047774:	fa20 fc0c 	lsr.w	ip, r0, ip
d0047778:	bfdc      	itt	le
d004777a:	ea41 010c 	orrle.w	r1, r1, ip
d004777e:	4090      	lslle	r0, r2
d0047780:	1ae4      	subs	r4, r4, r3
d0047782:	bfa2      	ittt	ge
d0047784:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
d0047788:	4329      	orrge	r1, r5
d004778a:	bd30      	popge	{r4, r5, pc}
d004778c:	ea6f 0404 	mvn.w	r4, r4
d0047790:	3c1f      	subs	r4, #31
d0047792:	da1c      	bge.n	d00477ce <__adddf3+0x1d2>
d0047794:	340c      	adds	r4, #12
d0047796:	dc0e      	bgt.n	d00477b6 <__adddf3+0x1ba>
d0047798:	f104 0414 	add.w	r4, r4, #20
d004779c:	f1c4 0220 	rsb	r2, r4, #32
d00477a0:	fa20 f004 	lsr.w	r0, r0, r4
d00477a4:	fa01 f302 	lsl.w	r3, r1, r2
d00477a8:	ea40 0003 	orr.w	r0, r0, r3
d00477ac:	fa21 f304 	lsr.w	r3, r1, r4
d00477b0:	ea45 0103 	orr.w	r1, r5, r3
d00477b4:	bd30      	pop	{r4, r5, pc}
d00477b6:	f1c4 040c 	rsb	r4, r4, #12
d00477ba:	f1c4 0220 	rsb	r2, r4, #32
d00477be:	fa20 f002 	lsr.w	r0, r0, r2
d00477c2:	fa01 f304 	lsl.w	r3, r1, r4
d00477c6:	ea40 0003 	orr.w	r0, r0, r3
d00477ca:	4629      	mov	r1, r5
d00477cc:	bd30      	pop	{r4, r5, pc}
d00477ce:	fa21 f004 	lsr.w	r0, r1, r4
d00477d2:	4629      	mov	r1, r5
d00477d4:	bd30      	pop	{r4, r5, pc}
d00477d6:	f094 0f00 	teq	r4, #0
d00477da:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
d00477de:	bf06      	itte	eq
d00477e0:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
d00477e4:	3401      	addeq	r4, #1
d00477e6:	3d01      	subne	r5, #1
d00477e8:	e74e      	b.n	d0047688 <__adddf3+0x8c>
d00477ea:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d00477ee:	bf18      	it	ne
d00477f0:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d00477f4:	d029      	beq.n	d004784a <__adddf3+0x24e>
d00477f6:	ea94 0f05 	teq	r4, r5
d00477fa:	bf08      	it	eq
d00477fc:	ea90 0f02 	teqeq	r0, r2
d0047800:	d005      	beq.n	d004780e <__adddf3+0x212>
d0047802:	ea54 0c00 	orrs.w	ip, r4, r0
d0047806:	bf04      	itt	eq
d0047808:	4619      	moveq	r1, r3
d004780a:	4610      	moveq	r0, r2
d004780c:	bd30      	pop	{r4, r5, pc}
d004780e:	ea91 0f03 	teq	r1, r3
d0047812:	bf1e      	ittt	ne
d0047814:	2100      	movne	r1, #0
d0047816:	2000      	movne	r0, #0
d0047818:	bd30      	popne	{r4, r5, pc}
d004781a:	ea5f 5c54 	movs.w	ip, r4, lsr #21
d004781e:	d105      	bne.n	d004782c <__adddf3+0x230>
d0047820:	0040      	lsls	r0, r0, #1
d0047822:	4149      	adcs	r1, r1
d0047824:	bf28      	it	cs
d0047826:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
d004782a:	bd30      	pop	{r4, r5, pc}
d004782c:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
d0047830:	bf3c      	itt	cc
d0047832:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
d0047836:	bd30      	popcc	{r4, r5, pc}
d0047838:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d004783c:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
d0047840:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
d0047844:	f04f 0000 	mov.w	r0, #0
d0047848:	bd30      	pop	{r4, r5, pc}
d004784a:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d004784e:	bf1a      	itte	ne
d0047850:	4619      	movne	r1, r3
d0047852:	4610      	movne	r0, r2
d0047854:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
d0047858:	bf1c      	itt	ne
d004785a:	460b      	movne	r3, r1
d004785c:	4602      	movne	r2, r0
d004785e:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
d0047862:	bf06      	itte	eq
d0047864:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
d0047868:	ea91 0f03 	teqeq	r1, r3
d004786c:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
d0047870:	bd30      	pop	{r4, r5, pc}
d0047872:	bf00      	nop

d0047874 <__aeabi_ui2d>:
d0047874:	f090 0f00 	teq	r0, #0
d0047878:	bf04      	itt	eq
d004787a:	2100      	moveq	r1, #0
d004787c:	4770      	bxeq	lr
d004787e:	b530      	push	{r4, r5, lr}
d0047880:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0047884:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0047888:	f04f 0500 	mov.w	r5, #0
d004788c:	f04f 0100 	mov.w	r1, #0
d0047890:	e750      	b.n	d0047734 <__adddf3+0x138>
d0047892:	bf00      	nop

d0047894 <__aeabi_i2d>:
d0047894:	f090 0f00 	teq	r0, #0
d0047898:	bf04      	itt	eq
d004789a:	2100      	moveq	r1, #0
d004789c:	4770      	bxeq	lr
d004789e:	b530      	push	{r4, r5, lr}
d00478a0:	f44f 6480 	mov.w	r4, #1024	; 0x400
d00478a4:	f104 0432 	add.w	r4, r4, #50	; 0x32
d00478a8:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
d00478ac:	bf48      	it	mi
d00478ae:	4240      	negmi	r0, r0
d00478b0:	f04f 0100 	mov.w	r1, #0
d00478b4:	e73e      	b.n	d0047734 <__adddf3+0x138>
d00478b6:	bf00      	nop

d00478b8 <__aeabi_f2d>:
d00478b8:	0042      	lsls	r2, r0, #1
d00478ba:	ea4f 01e2 	mov.w	r1, r2, asr #3
d00478be:	ea4f 0131 	mov.w	r1, r1, rrx
d00478c2:	ea4f 7002 	mov.w	r0, r2, lsl #28
d00478c6:	bf1f      	itttt	ne
d00478c8:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
d00478cc:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
d00478d0:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
d00478d4:	4770      	bxne	lr
d00478d6:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
d00478da:	bf08      	it	eq
d00478dc:	4770      	bxeq	lr
d00478de:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
d00478e2:	bf04      	itt	eq
d00478e4:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
d00478e8:	4770      	bxeq	lr
d00478ea:	b530      	push	{r4, r5, lr}
d00478ec:	f44f 7460 	mov.w	r4, #896	; 0x380
d00478f0:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d00478f4:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
d00478f8:	e71c      	b.n	d0047734 <__adddf3+0x138>
d00478fa:	bf00      	nop

d00478fc <__aeabi_ul2d>:
d00478fc:	ea50 0201 	orrs.w	r2, r0, r1
d0047900:	bf08      	it	eq
d0047902:	4770      	bxeq	lr
d0047904:	b530      	push	{r4, r5, lr}
d0047906:	f04f 0500 	mov.w	r5, #0
d004790a:	e00a      	b.n	d0047922 <__aeabi_l2d+0x16>

d004790c <__aeabi_l2d>:
d004790c:	ea50 0201 	orrs.w	r2, r0, r1
d0047910:	bf08      	it	eq
d0047912:	4770      	bxeq	lr
d0047914:	b530      	push	{r4, r5, lr}
d0047916:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
d004791a:	d502      	bpl.n	d0047922 <__aeabi_l2d+0x16>
d004791c:	4240      	negs	r0, r0
d004791e:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d0047922:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0047926:	f104 0432 	add.w	r4, r4, #50	; 0x32
d004792a:	ea5f 5c91 	movs.w	ip, r1, lsr #22
d004792e:	f43f aed8 	beq.w	d00476e2 <__adddf3+0xe6>
d0047932:	f04f 0203 	mov.w	r2, #3
d0047936:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d004793a:	bf18      	it	ne
d004793c:	3203      	addne	r2, #3
d004793e:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d0047942:	bf18      	it	ne
d0047944:	3203      	addne	r2, #3
d0047946:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
d004794a:	f1c2 0320 	rsb	r3, r2, #32
d004794e:	fa00 fc03 	lsl.w	ip, r0, r3
d0047952:	fa20 f002 	lsr.w	r0, r0, r2
d0047956:	fa01 fe03 	lsl.w	lr, r1, r3
d004795a:	ea40 000e 	orr.w	r0, r0, lr
d004795e:	fa21 f102 	lsr.w	r1, r1, r2
d0047962:	4414      	add	r4, r2
d0047964:	e6bd      	b.n	d00476e2 <__adddf3+0xe6>
d0047966:	bf00      	nop
d0047968:	2e706661 	.word	0x2e706661
d004796c:	00646f6d 	.word	0x00646f6d
d0047970:	616c7369 	.word	0x616c7369
d0047974:	2e78646e 	.word	0x2e78646e
d0047978:	64336273 	.word	0x64336273
d004797c:	00000000 	.word	0x00000000
d0047980:	72726163 	.word	0x72726163
d0047984:	2e726569 	.word	0x2e726569
d0047988:	64336273 	.word	0x64336273
d004798c:	00000000 	.word	0x00000000
d0047990:	70696873 	.word	0x70696873
d0047994:	732e3176 	.word	0x732e3176
d0047998:	00643362 	.word	0x00643362
d004799c:	ff5516e3 	.word	0xff5516e3
d00479a0:	ffffffff 	.word	0xffffffff
d00479a4:	ffff0000 	.word	0xffff0000
d00479a8:	ff00ff00 	.word	0xff00ff00
d00479ac:	ff0000ff 	.word	0xff0000ff
d00479b0:	ffffff00 	.word	0xffffff00
d00479b4:	ffff00ff 	.word	0xffff00ff
d00479b8:	ff00ffff 	.word	0xff00ffff
d00479bc:	ff808080 	.word	0xff808080
d00479c0:	ffff8000 	.word	0xffff8000
d00479c4:	ff8000ff 	.word	0xff8000ff
d00479c8:	ff0080ff 	.word	0xff0080ff
d00479cc:	ff80ff00 	.word	0xff80ff00
d00479d0:	ffff0080 	.word	0xffff0080
d00479d4:	ff00ff80 	.word	0xff00ff80
d00479d8:	ffc0c0c0 	.word	0xffc0c0c0
d00479dc:	3f800000 	.word	0x3f800000
d00479e0:	3f400000 	.word	0x3f400000
d00479e4:	3f0ccccd 	.word	0x3f0ccccd
d00479e8:	3eb33333 	.word	0x3eb33333
d00479ec:	3e4ccccd 	.word	0x3e4ccccd
d00479f0:	bf800000 	.word	0xbf800000
d00479f4:	bf000000 	.word	0xbf000000
d00479f8:	3e99999a 	.word	0x3e99999a

d00479fc <bayer4x4>:
d00479fc:	0a020800 060e040c 09010b03 050d070f     ................
	...
d0047a38:	3f800000 00000000 00000000 00000000     ...?............
d0047a48:	3f800000 00000000 00000000 00000000     ...?............
d0047a58:	3f800000 3a8312c5 3c23d70a 447a0000     ...?...:..#<..zD
	...

d0047a80 <__sf_fake_stderr>:
	...

d0047aa0 <__sf_fake_stdin>:
	...

d0047ac0 <__sf_fake_stdout>:
	...

d0047ae0 <_global_impure_ptr>:
d0047ae0:	d00482a4 00000000                       ........

d0047ae8 <__exp2f_data>:
d0047ae8:	00000000 3ff00000 d3158574 3fefd9b0     .......?t......?
d0047af8:	6cf9890f 3fefb558 d0125b51 3fef9301     ...lX..?Q[.....?
d0047b08:	3c7d517b 3fef72b8 3168b9aa 3fef5487     {Q}<.r.?..h1.T.?
d0047b18:	6e756238 3fef387a f51fdee1 3fef1e9d     8bunz8.?.......?
d0047b28:	0a31b715 3fef06fe 373aa9cb 3feef1a7     ..1....?..:7...?
d0047b38:	4c123422 3feedea6 6061892d 3feece08     "4.L...?-.a`...?
d0047b48:	d5362a27 3feebfda 569d4f82 3feeb42b     '*6....?.O.V+..?
d0047b58:	dd485429 3feeab07 b03a5585 3feea47e     )TH....?.U:.~..?
d0047b68:	667f3bcd 3feea09e e8ec5f74 3fee9f75     .;.f...?t_..u..?
d0047b78:	73eb0187 3feea114 994cce13 3feea589     ...s...?..L....?
d0047b88:	422aa0db 3feeace5 b0cdc5e5 3feeb737     ..*B...?....7..?
d0047b98:	82a3f090 3feec491 b23e255d 3feed503     .......?]%>....?
d0047ba8:	995ad3ad 3feee89f f2fb5e47 3feeff76     ..Z....?G^..v..?
d0047bb8:	dd85529c 3fef199b dcef9069 3fef3720     .R.....?i... 7.?
d0047bc8:	dcfba487 3fef5818 337b9b5f 3fef7c97     .....X.?_.{3.|.?
d0047bd8:	a2a490da 3fefa4af 5b6e4540 3fefd076     .......?@En[v..?
d0047be8:	00000000 42e80000 4b912394 3fac6af8     .......B.#.K.j.?
d0047bf8:	50fac4f3 3fcebfce ff0c52d6 3fe62e42     ...P...?.R..B..?
d0047c08:	00000000 43380000 652b82fe 40471547     ......8C..+eG.G@
d0047c18:	4b912394 3ebc6af8 50fac4f3 3f2ebfce     .#.K.j.>...P...?
d0047c28:	ff0c52d6 3f962e42                       .R..B..?

d0047c30 <__logf_data>:
d0047c30:	79f8f3be 3ff661ec 808caade bfd57bf7     ...y.a.?.....{..
d0047c40:	4aaf883d 3ff571ed a7c06ddb bfd2bef0     =..J.q.?.m......
d0047c50:	f0f010b0 3ff49539 7f513a67 bfd01eae     ....9..?g:Q.....
d0047c60:	b0b80385 3ff3c995 a68224e9 bfcb31d8     .......?.$...1..
d0047c70:	0c8864a5 3ff30d19 0ac07758 bfc6574f     .d.....?Xw..OW..
d0047c80:	7b0b8ea0 3ff25e22 c79c8100 bfc1aa2b     ...{"^.?....+...
d0047c90:	4a1a343f 3ff1bb4a ce8c0e5e bfba4e76     ?4.JJ..?^...vN..
d0047ca0:	f08ae5ba 3ff12358 5a611ccc bfb1973c     ....X#.?..aZ<...
d0047cb0:	419900a7 3ff0953f 38e10c1e bfa252f4     ...A?..?...8.R..
d0047cc0:	00000000 3ff00000 00000000 00000000     .......?........
d0047cd0:	fd9a47ac 3fee608c 5df25984 3faaa5aa     .G...`.?.Y.]...?
d0047ce0:	1f026aa0 3feca4b3 aa362eb4 3fbc5e53     .j.....?..6.S^.?
d0047cf0:	576afce6 3feb2036 7720db08 3fc526e5     ..jW6 .?.. w.&.?
d0047d00:	63a1aa2d 3fe9c2d1 0d224770 3fcbc286     -..c...?pG"....?
d0047d10:	037841ed 3fe886e6 c8a07ee1 3fd1058b     .Ax....?.~.....?
d0047d20:	f5534862 3fe767dc 57b6ee09 3fd40430     bHS..g.?...W0..?
d0047d30:	fefa39ef 3fe62e42 48b88334 bfd00ea3     .9..B..?4..H....
d0047d40:	0be00b6a 3fd5575b f20a4123 bfdffffe     j...[W.?#A......

d0047d50 <__inv_pio4>:
d0047d50:	000000a2 0000a2f9 00a2f983 a2f9836e     ............n...
d0047d60:	f9836e4e 836e4e44 6e4e4415 4e441529     Nn..DNn..DNn).DN
d0047d70:	441529fc 1529fc27 29fc2757 fc2757d1     .).D'.).W'.).W'.
d0047d80:	2757d1f5 57d1f534 d1f534dd f534ddc0     ..W'4..W.4....4.
d0047d90:	34ddc0db ddc0db62 c0db6295 db629599     ...4b....b....b.
d0047da0:	6295993c 95993c43 993c4390 3c439041     <..bC<...C<.A.C<

d0047db0 <__sincosf_table>:
d0047db0:	00000000 3ff00000 00000000 bff00000     .......?........
d0047dc0:	00000000 bff00000 00000000 3ff00000     ...............?
d0047dd0:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d0047de0:	00000000 3ff00000 fd0c621c bfdfffff     .......?.b......
d0047df0:	e1068f19 3fa55553 e89a359d bf56c087     ....SU.?.5....V.
d0047e00:	027bf8c3 3ef99343 5995a603 bfc55554     ..{.C..>...YTU..
d0047e10:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).
d0047e20:	00000000 3ff00000 00000000 bff00000     .......?........
d0047e30:	00000000 bff00000 00000000 3ff00000     ...............?
d0047e40:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d0047e50:	00000000 bff00000 fd0c621c 3fdfffff     .........b.....?
d0047e60:	e1068f19 bfa55553 e89a359d 3f56c087     ....SU...5....V?
d0047e70:	027bf8c3 bef99343 5995a603 bfc55554     ..{.C......YTU..
d0047e80:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).

Disassembly of section .init:

d0047e90 <_init>:
d0047e90:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0047e92:	bf00      	nop

Disassembly of section .fini:

d0047e94 <_fini>:
d0047e94:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0047e96:	bf00      	nop
