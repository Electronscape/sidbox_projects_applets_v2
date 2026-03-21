
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
d004001e:	f006 f87d 	bl	d004611c <setbuf>
d0040022:	6833      	ldr	r3, [r6, #0]
d0040024:	2100      	movs	r1, #0
d0040026:	68d8      	ldr	r0, [r3, #12]
d0040028:	f006 f878 	bl	d004611c <setbuf>
d004002c:	4629      	mov	r1, r5
d004002e:	4620      	mov	r0, r4
d0040030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0040034:	f000 b90c 	b.w	d0040250 <main>
d0040038:	d00475d8 	.word	0xd00475d8

d004003c <initMalloc>:
d004003c:	4902      	ldr	r1, [pc, #8]	; (d0040048 <initMalloc+0xc>)
d004003e:	4b03      	ldr	r3, [pc, #12]	; (d004004c <initMalloc+0x10>)
d0040040:	4a03      	ldr	r2, [pc, #12]	; (d0040050 <initMalloc+0x14>)
d0040042:	1a5b      	subs	r3, r3, r1
d0040044:	6013      	str	r3, [r2, #0]
d0040046:	4770      	bx	lr
d0040048:	d0134d70 	.word	0xd0134d70
d004004c:	d0600000 	.word	0xd0600000
d0040050:	d012ccc8 	.word	0xd012ccc8

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
d004009c:	f005 fd14 	bl	d0045ac8 <__errno>
d00400a0:	2209      	movs	r2, #9
d00400a2:	4603      	mov	r3, r0
d00400a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00400a8:	601a      	str	r2, [r3, #0]
d00400aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00400ac:	d0047644 	.word	0xd0047644
d00400b0:	2001f000 	.word	0x2001f000

d00400b4 <_read>:
d00400b4:	b508      	push	{r3, lr}
d00400b6:	f005 fd07 	bl	d0045ac8 <__errno>
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
d0040102:	f005 fce1 	bl	d0045ac8 <__errno>
d0040106:	220c      	movs	r2, #12
d0040108:	4603      	mov	r3, r0
d004010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004010e:	601a      	str	r2, [r3, #0]
d0040110:	bd10      	pop	{r4, pc}
d0040112:	bf00      	nop
d0040114:	d0047640 	.word	0xd0047640
d0040118:	d0134d70 	.word	0xd0134d70
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
d004014c:	2170      	movs	r1, #112	; 0x70
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
d0040248:	d012cd40 	.word	0xd012cd40
d004024c:	d012cd20 	.word	0xd012cd20

d0040250 <main>:
d0040250:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040254:	ed2d 8b0c 	vpush	{d8-d13}
d0040258:	b0fb      	sub	sp, #492	; 0x1ec
d004025a:	4db6      	ldr	r5, [pc, #728]	; (d0040534 <main+0x2e4>)
d004025c:	f7ff ff60 	bl	d0040120 <initSystem>
d0040260:	4fb5      	ldr	r7, [pc, #724]	; (d0040538 <main+0x2e8>)
d0040262:	f10d 06cf 	add.w	r6, sp, #207	; 0xcf
d0040266:	f002 fde5 	bl	d0042e34 <worldClear>
d004026a:	f003 fc67 	bl	d0043b3c <lightsClear>
d004026e:	f04f 4a7f 	mov.w	sl, #4278190080	; 0xff000000
d0040272:	f026 061f 	bic.w	r6, r6, #31
d0040276:	4cb1      	ldr	r4, [pc, #708]	; (d004053c <main+0x2ec>)
d0040278:	ed9f 9ab1 	vldr	s18, [pc, #708]	; d0040540 <main+0x2f0>
d004027c:	f106 03e0 	add.w	r3, r6, #224	; 0xe0
d0040280:	f106 09a0 	add.w	r9, r6, #160	; 0xa0
d0040284:	ed9f baaf 	vldr	s22, [pc, #700]	; d0040544 <main+0x2f4>
d0040288:	9303      	str	r3, [sp, #12]
d004028a:	f002 fad7 	bl	d004283c <sb3dParticlesClear>
d004028e:	f003 fc8b 	bl	d0043ba8 <setDefaultRenderMode>
d0040292:	4630      	mov	r0, r6
d0040294:	f002 fdd6 	bl	d0042e44 <cameraCreate>
d0040298:	4630      	mov	r0, r6
d004029a:	eddf 0aab 	vldr	s1, [pc, #684]	; d0040548 <main+0x2f8>
d004029e:	ed9f 0aab 	vldr	s0, [pc, #684]	; d004054c <main+0x2fc>
d00402a2:	f002 ffef 	bl	d0043284 <cameraSetRange>
d00402a6:	ed9f 1ac7 	vldr	s2, [pc, #796]	; d00405c4 <main+0x374>
d00402aa:	eddf 0aa9 	vldr	s1, [pc, #676]	; d0040550 <main+0x300>
d00402ae:	eeb0 0a41 	vmov.f32	s0, s2
d00402b2:	eddf aaa8 	vldr	s21, [pc, #672]	; d0040554 <main+0x304>
d00402b6:	f002 fa21 	bl	d00426fc <vec3>
d00402ba:	4630      	mov	r0, r6
d00402bc:	edcd 0a0c 	vstr	s1, [sp, #48]	; 0x30
d00402c0:	ed8d 0a0b 	vstr	s0, [sp, #44]	; 0x2c
d00402c4:	ed8d 1a0d 	vstr	s2, [sp, #52]	; 0x34
d00402c8:	f002 fdc6 	bl	d0042e58 <cameraSetPosition>
d00402cc:	4630      	mov	r0, r6
d00402ce:	ed9f aaa2 	vldr	s20, [pc, #648]	; d0040558 <main+0x308>
d00402d2:	f002 fdd1 	bl	d0042e78 <cameraNormalize>
d00402d6:	f10d 0c70 	add.w	ip, sp, #112	; 0x70
d00402da:	f10d 0e5c 	add.w	lr, sp, #92	; 0x5c
d00402de:	eddf 9a9f 	vldr	s19, [pc, #636]	; d004055c <main+0x30c>
d00402e2:	f8df 82bc 	ldr.w	r8, [pc, #700]	; d00405a0 <main+0x350>
d00402e6:	f8df b2bc 	ldr.w	fp, [pc, #700]	; d00405a4 <main+0x354>
d00402ea:	eddf 8ab6 	vldr	s17, [pc, #728]	; d00405c4 <main+0x374>
d00402ee:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d00402f0:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d00402f4:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d00402f6:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d00402fa:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d00402fc:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d0040300:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0040304:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d0040308:	f105 0c10 	add.w	ip, r5, #16
d004030c:	f8c7 a000 	str.w	sl, [r7]
d0040310:	f8cd e000 	str.w	lr, [sp]
d0040314:	3524      	adds	r5, #36	; 0x24
d0040316:	f8c7 a040 	str.w	sl, [r7, #64]	; 0x40
d004031a:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d004031e:	f8dc c000 	ldr.w	ip, [ip]
d0040322:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
d0040326:	4653      	mov	r3, sl
d0040328:	f8ce c000 	str.w	ip, [lr]
d004032c:	4638      	mov	r0, r7
d004032e:	a91c      	add	r1, sp, #112	; 0x70
d0040330:	2210      	movs	r2, #16
d0040332:	f8df a274 	ldr.w	sl, [pc, #628]	; d00405a8 <main+0x358>
d0040336:	f003 f9c1 	bl	d00436bc <buildLightingCLUT>
d004033a:	7b22      	ldrb	r2, [r4, #12]
d004033c:	7b61      	ldrb	r1, [r4, #13]
d004033e:	4638      	mov	r0, r7
d0040340:	f894 c00e 	ldrb.w	ip, [r4, #14]
d0040344:	f106 0760 	add.w	r7, r6, #96	; 0x60
d0040348:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d004034c:	7be1      	ldrb	r1, [r4, #15]
d004034e:	ea42 420c 	orr.w	r2, r2, ip, lsl #16
d0040352:	ea42 6201 	orr.w	r2, r2, r1, lsl #24
d0040356:	6812      	ldr	r2, [r2, #0]
d0040358:	6cd2      	ldr	r2, [r2, #76]	; 0x4c
d004035a:	4790      	blx	r2
d004035c:	7c22      	ldrb	r2, [r4, #16]
d004035e:	7c60      	ldrb	r0, [r4, #17]
d0040360:	2100      	movs	r1, #0
d0040362:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
d0040366:	7ca0      	ldrb	r0, [r4, #18]
d0040368:	ea42 4200 	orr.w	r2, r2, r0, lsl #16
d004036c:	7ce0      	ldrb	r0, [r4, #19]
d004036e:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d0040372:	487b      	ldr	r0, [pc, #492]	; (d0040560 <main+0x310>)
d0040374:	6852      	ldr	r2, [r2, #4]
d0040376:	6812      	ldr	r2, [r2, #0]
d0040378:	4790      	blx	r2
d004037a:	f10d 0c20 	add.w	ip, sp, #32
d004037e:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d0040382:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d0040386:	e88c 0007 	stmia.w	ip, {r0, r1, r2}
d004038a:	2001      	movs	r0, #1
d004038c:	ed9c 0a00 	vldr	s0, [ip]
d0040390:	eddc 0a01 	vldr	s1, [ip, #4]
d0040394:	252b      	movs	r5, #43	; 0x2b
d0040396:	ed9c 1a02 	vldr	s2, [ip, #8]
d004039a:	f003 fbd5 	bl	d0043b48 <addDirectionalLight>
d004039e:	2209      	movs	r2, #9
d00403a0:	4b70      	ldr	r3, [pc, #448]	; (d0040564 <main+0x314>)
d00403a2:	203b      	movs	r0, #59	; 0x3b
d00403a4:	ed9d 8a03 	vldr	s16, [sp, #12]
d00403a8:	701a      	strb	r2, [r3, #0]
d00403aa:	2202      	movs	r2, #2
d00403ac:	4b6e      	ldr	r3, [pc, #440]	; (d0040568 <main+0x318>)
d00403ae:	ee18 1a10 	vmov	r1, s16
d00403b2:	ed9f 0a6e 	vldr	s0, [pc, #440]	; d004056c <main+0x31c>
d00403b6:	7018      	strb	r0, [r3, #0]
d00403b8:	4b6d      	ldr	r3, [pc, #436]	; (d0040570 <main+0x320>)
d00403ba:	486e      	ldr	r0, [pc, #440]	; (d0040574 <main+0x324>)
d00403bc:	701d      	strb	r5, [r3, #0]
d00403be:	4b6e      	ldr	r3, [pc, #440]	; (d0040578 <main+0x328>)
d00403c0:	701a      	strb	r2, [r3, #0]
d00403c2:	f005 f9ed 	bl	d00457a0 <loadMeshSB3D>
d00403c6:	ed9f 1a7f 	vldr	s2, [pc, #508]	; d00405c4 <main+0x374>
d00403ca:	eef0 0a41 	vmov.f32	s1, s2
d00403ce:	eeb0 0a41 	vmov.f32	s0, s2
d00403d2:	f002 f993 	bl	d00426fc <vec3>
d00403d6:	ee18 0a10 	vmov	r0, s16
d00403da:	edcd 0a0f 	vstr	s1, [sp, #60]	; 0x3c
d00403de:	ed8d 1a10 	vstr	s2, [sp, #64]	; 0x40
d00403e2:	ed8d 0a0e 	vstr	s0, [sp, #56]	; 0x38
d00403e6:	f003 f81f 	bl	d0043428 <entityWorldSpawn>
d00403ea:	4649      	mov	r1, r9
d00403ec:	ed9f 0a58 	vldr	s0, [pc, #352]	; d0040550 <main+0x300>
d00403f0:	4862      	ldr	r0, [pc, #392]	; (d004057c <main+0x32c>)
d00403f2:	f005 f9d5 	bl	d00457a0 <loadMeshSB3D>
d00403f6:	ed9f 1a62 	vldr	s2, [pc, #392]	; d0040580 <main+0x330>
d00403fa:	eddf 0a72 	vldr	s1, [pc, #456]	; d00405c4 <main+0x374>
d00403fe:	ed9f 0a61 	vldr	s0, [pc, #388]	; d0040584 <main+0x334>
d0040402:	f002 f97b 	bl	d00426fc <vec3>
d0040406:	4648      	mov	r0, r9
d0040408:	edcd 0a12 	vstr	s1, [sp, #72]	; 0x48
d004040c:	ed8d 1a13 	vstr	s2, [sp, #76]	; 0x4c
d0040410:	ed8d 0a11 	vstr	s0, [sp, #68]	; 0x44
d0040414:	f003 f808 	bl	d0043428 <entityWorldSpawn>
d0040418:	4639      	mov	r1, r7
d004041a:	ed9f 0a5b 	vldr	s0, [pc, #364]	; d0040588 <main+0x338>
d004041e:	4681      	mov	r9, r0
d0040420:	485a      	ldr	r0, [pc, #360]	; (d004058c <main+0x33c>)
d0040422:	f005 f9bd 	bl	d00457a0 <loadMeshSB3D>
d0040426:	ed9f 1a5a 	vldr	s2, [pc, #360]	; d0040590 <main+0x340>
d004042a:	eddf 0a50 	vldr	s1, [pc, #320]	; d004056c <main+0x31c>
d004042e:	ed9f 0a65 	vldr	s0, [pc, #404]	; d00405c4 <main+0x374>
d0040432:	f002 f963 	bl	d00426fc <vec3>
d0040436:	4638      	mov	r0, r7
d0040438:	ed8d 0a14 	vstr	s0, [sp, #80]	; 0x50
d004043c:	edcd 0a15 	vstr	s1, [sp, #84]	; 0x54
d0040440:	ed8d 1a16 	vstr	s2, [sp, #88]	; 0x58
d0040444:	f002 fff0 	bl	d0043428 <entityWorldSpawn>
d0040448:	ed9f 1a5e 	vldr	s2, [pc, #376]	; d00405c4 <main+0x374>
d004044c:	4602      	mov	r2, r0
d004044e:	ed9f 2a51 	vldr	s4, [pc, #324]	; d0040594 <main+0x344>
d0040452:	4638      	mov	r0, r7
d0040454:	eeb0 0a41 	vmov.f32	s0, s2
d0040458:	eddf 1a4f 	vldr	s3, [pc, #316]	; d0040598 <main+0x348>
d004045c:	eddf 0a4f 	vldr	s1, [pc, #316]	; d004059c <main+0x34c>
d0040460:	ee0d 2a10 	vmov	s26, r2
d0040464:	f000 f9ee 	bl	d0040844 <meshSetMaterial>
d0040468:	2000      	movs	r0, #0
d004046a:	f003 fbab 	bl	d0043bc4 <enableFlatMode>
d004046e:	7b23      	ldrb	r3, [r4, #12]
d0040470:	7b62      	ldrb	r2, [r4, #13]
d0040472:	7ba1      	ldrb	r1, [r4, #14]
d0040474:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040478:	7be2      	ldrb	r2, [r4, #15]
d004047a:	f8da 0000 	ldr.w	r0, [sl]
d004047e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040482:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040486:	681b      	ldr	r3, [r3, #0]
d0040488:	69db      	ldr	r3, [r3, #28]
d004048a:	4798      	blx	r3
d004048c:	7b23      	ldrb	r3, [r4, #12]
d004048e:	7b62      	ldrb	r2, [r4, #13]
d0040490:	7ba1      	ldrb	r1, [r4, #14]
d0040492:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040496:	7be2      	ldrb	r2, [r4, #15]
d0040498:	f8da 0000 	ldr.w	r0, [sl]
d004049c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00404a0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00404a4:	681b      	ldr	r3, [r3, #0]
d00404a6:	699b      	ldr	r3, [r3, #24]
d00404a8:	4798      	blx	r3
d00404aa:	7b23      	ldrb	r3, [r4, #12]
d00404ac:	7b62      	ldrb	r2, [r4, #13]
d00404ae:	2001      	movs	r0, #1
d00404b0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00404b4:	7ba2      	ldrb	r2, [r4, #14]
d00404b6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00404ba:	7be2      	ldrb	r2, [r4, #15]
d00404bc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00404c0:	685b      	ldr	r3, [r3, #4]
d00404c2:	68db      	ldr	r3, [r3, #12]
d00404c4:	4798      	blx	r3
d00404c6:	7b23      	ldrb	r3, [r4, #12]
d00404c8:	7b62      	ldrb	r2, [r4, #13]
d00404ca:	211e      	movs	r1, #30
d00404cc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00404d0:	7ba2      	ldrb	r2, [r4, #14]
d00404d2:	4608      	mov	r0, r1
d00404d4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00404d8:	7be2      	ldrb	r2, [r4, #15]
d00404da:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00404de:	685b      	ldr	r3, [r3, #4]
d00404e0:	689b      	ldr	r3, [r3, #8]
d00404e2:	4798      	blx	r3
d00404e4:	7823      	ldrb	r3, [r4, #0]
d00404e6:	7862      	ldrb	r2, [r4, #1]
d00404e8:	a905      	add	r1, sp, #20
d00404ea:	a804      	add	r0, sp, #16
d00404ec:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00404f0:	78a2      	ldrb	r2, [r4, #2]
d00404f2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00404f6:	78e2      	ldrb	r2, [r4, #3]
d00404f8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00404fc:	691b      	ldr	r3, [r3, #16]
d00404fe:	4798      	blx	r3
d0040500:	7823      	ldrb	r3, [r4, #0]
d0040502:	7862      	ldrb	r2, [r4, #1]
d0040504:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040508:	78a2      	ldrb	r2, [r4, #2]
d004050a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004050e:	78e2      	ldrb	r2, [r4, #3]
d0040510:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040514:	69db      	ldr	r3, [r3, #28]
d0040516:	4798      	blx	r3
d0040518:	7823      	ldrb	r3, [r4, #0]
d004051a:	7862      	ldrb	r2, [r4, #1]
d004051c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040520:	78a2      	ldrb	r2, [r4, #2]
d0040522:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040526:	78e2      	ldrb	r2, [r4, #3]
d0040528:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004052c:	689b      	ldr	r3, [r3, #8]
d004052e:	4798      	blx	r3
d0040530:	4605      	mov	r5, r0
d0040532:	e11e      	b.n	d0040772 <main+0x522>
d0040534:	d0046cf0 	.word	0xd0046cf0
d0040538:	d00471d8 	.word	0xd00471d8
d004053c:	2001f000 	.word	0x2001f000
d0040540:	4c895441 	.word	0x4c895441
d0040544:	42040000 	.word	0x42040000
d0040548:	459c4000 	.word	0x459c4000
d004054c:	3c23d70a 	.word	0x3c23d70a
d0040550:	42480000 	.word	0x42480000
d0040554:	41233334 	.word	0x41233334
d0040558:	bb9374bc 	.word	0xbb9374bc
d004055c:	3e19999a 	.word	0x3e19999a
d0040560:	d0046cb8 	.word	0xd0046cb8
d0040564:	d012cd24 	.word	0xd012cd24
d0040568:	d012cd25 	.word	0xd012cd25
d004056c:	43480000 	.word	0x43480000
d0040570:	d012cd00 	.word	0xd012cd00
d0040574:	d0046cc0 	.word	0xd0046cc0
d0040578:	d012cd01 	.word	0xd012cd01
d004057c:	d0046cd0 	.word	0xd0046cd0
d0040580:	c2c80000 	.word	0xc2c80000
d0040584:	44f3c000 	.word	0x44f3c000
d0040588:	42c80000 	.word	0x42c80000
d004058c:	d0046ce0 	.word	0xd0046ce0
d0040590:	450fc000 	.word	0x450fc000
d0040594:	42800000 	.word	0x42800000
d0040598:	4059999a 	.word	0x4059999a
d004059c:	3f0ccccd 	.word	0x3f0ccccd
d00405a0:	d0047648 	.word	0xd0047648
d00405a4:	d012cd20 	.word	0xd012cd20
d00405a8:	d012cd40 	.word	0xd012cd40
d00405ac:	310f2a63 	.word	0x310f2a63
d00405b0:	bb449ba6 	.word	0xbb449ba6
d00405b4:	435c0000 	.word	0x435c0000
d00405b8:	40d9999a 	.word	0x40d9999a
d00405bc:	3c088889 	.word	0x3c088889
d00405c0:	3ba3d70a 	.word	0x3ba3d70a
d00405c4:	00000000 	.word	0x00000000
d00405c8:	ed5f 7a08 	vldr	s15, [pc, #-32]	; d00405ac <main+0x35c>
d00405cc:	eef2 ba04 	vmov.f32	s23, #36	; 0x41200000  10.0
d00405d0:	ed5f ca09 	vldr	s25, [pc, #-36]	; d00405b0 <main+0x360>
d00405d4:	ee28 8a27 	vmul.f32	s16, s16, s15
d00405d8:	ed1f ca0a 	vldr	s24, [pc, #-40]	; d00405b4 <main+0x364>
d00405dc:	ed5f 7a0a 	vldr	s15, [pc, #-40]	; d00405b8 <main+0x368>
d00405e0:	ee68 ba2b 	vmul.f32	s23, s16, s23
d00405e4:	ee28 ca0c 	vmul.f32	s24, s16, s24
d00405e8:	ee6b caac 	vmul.f32	s25, s23, s25
d00405ec:	ee6b baa7 	vmul.f32	s23, s23, s15
d00405f0:	7820      	ldrb	r0, [r4, #0]
d00405f2:	7861      	ldrb	r1, [r4, #1]
d00405f4:	78a2      	ldrb	r2, [r4, #2]
d00405f6:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00405fa:	78e3      	ldrb	r3, [r4, #3]
d00405fc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040600:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040604:	6a1b      	ldr	r3, [r3, #32]
d0040606:	4798      	blx	r3
d0040608:	f894 c000 	ldrb.w	ip, [r4]
d004060c:	7863      	ldrb	r3, [r4, #1]
d004060e:	a907      	add	r1, sp, #28
d0040610:	78a2      	ldrb	r2, [r4, #2]
d0040612:	4605      	mov	r5, r0
d0040614:	ea4c 2c03 	orr.w	ip, ip, r3, lsl #8
d0040618:	78e3      	ldrb	r3, [r4, #3]
d004061a:	a806      	add	r0, sp, #24
d004061c:	ea4c 4202 	orr.w	r2, ip, r2, lsl #16
d0040620:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040624:	699b      	ldr	r3, [r3, #24]
d0040626:	4798      	blx	r3
d0040628:	ed5f 7a1c 	vldr	s15, [pc, #-112]	; d00405bc <main+0x36c>
d004062c:	ed1f 7a1c 	vldr	s14, [pc, #-112]	; d00405c0 <main+0x370>
d0040630:	eef0 0a68 	vmov.f32	s1, s17
d0040634:	2100      	movs	r1, #0
d0040636:	4630      	mov	r0, r6
d0040638:	e9dd 2306 	ldrd	r2, r3, [sp, #24]
d004063c:	4252      	negs	r2, r2
d004063e:	425b      	negs	r3, r3
d0040640:	ee06 2a90 	vmov	s13, r2
d0040644:	eeb8 1ae6 	vcvt.f32.s32	s2, s13
d0040648:	ee06 3a90 	vmov	s13, r3
d004064c:	eeb8 0ae6 	vcvt.f32.s32	s0, s13
d0040650:	ee21 1a07 	vmul.f32	s2, s2, s14
d0040654:	ee20 0a27 	vmul.f32	s0, s0, s15
d0040658:	f002 fc64 	bl	d0042f24 <cameraTurn>
d004065c:	eef0 7a04 	vmov.f32	s15, #4	; 0x40200000  2.5
d0040660:	edd6 0a07 	vldr	s1, [r6, #28]
d0040664:	ee60 0aa7 	vmul.f32	s1, s1, s15
d0040668:	ee60 0a88 	vmul.f32	s1, s1, s16
d004066c:	eef5 0a40 	vcmp.f32	s1, #0.0
d0040670:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040674:	f040 80c4 	bne.w	d0040800 <main+0x5b0>
d0040678:	eeb0 1a68 	vmov.f32	s2, s17
d004067c:	ed5f 0a2f 	vldr	s1, [pc, #-188]	; d00405c4 <main+0x374>
d0040680:	eeb0 0a6c 	vmov.f32	s0, s25
d0040684:	4648      	mov	r0, r9
d0040686:	f002 ff47 	bl	d0043518 <entityTurnLocal>
d004068a:	eeb0 0a6b 	vmov.f32	s0, s23
d004068e:	4648      	mov	r0, r9
d0040690:	f002 ff10 	bl	d00434b4 <entityMoveForward>
d0040694:	eeb0 1a68 	vmov.f32	s2, s17
d0040698:	eeb0 0a48 	vmov.f32	s0, s16
d004069c:	ed5f 0a37 	vldr	s1, [pc, #-220]	; d00405c4 <main+0x374>
d00406a0:	ee1d 0a10 	vmov	r0, s26
d00406a4:	f002 ff38 	bl	d0043518 <entityTurnLocal>
d00406a8:	7820      	ldrb	r0, [r4, #0]
d00406aa:	7861      	ldrb	r1, [r4, #1]
d00406ac:	78a2      	ldrb	r2, [r4, #2]
d00406ae:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00406b2:	78e3      	ldrb	r3, [r4, #3]
d00406b4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00406b8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00406bc:	69db      	ldr	r3, [r3, #28]
d00406be:	4798      	blx	r3
d00406c0:	07ea      	lsls	r2, r5, #31
d00406c2:	f100 8093 	bmi.w	d00407ec <main+0x59c>
d00406c6:	07ab      	lsls	r3, r5, #30
d00406c8:	f100 8086 	bmi.w	d00407d8 <main+0x588>
d00406cc:	7b20      	ldrb	r0, [r4, #12]
d00406ce:	7b61      	ldrb	r1, [r4, #13]
d00406d0:	7ba2      	ldrb	r2, [r4, #14]
d00406d2:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00406d6:	7be3      	ldrb	r3, [r4, #15]
d00406d8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00406dc:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00406e0:	681b      	ldr	r3, [r3, #0]
d00406e2:	68db      	ldr	r3, [r3, #12]
d00406e4:	4798      	blx	r3
d00406e6:	f898 3000 	ldrb.w	r3, [r8]
d00406ea:	f1c3 0301 	rsb	r3, r3, #1
d00406ee:	b2db      	uxtb	r3, r3
d00406f0:	f888 3000 	strb.w	r3, [r8]
d00406f4:	f898 3000 	ldrb.w	r3, [r8]
d00406f8:	7b21      	ldrb	r1, [r4, #12]
d00406fa:	7b60      	ldrb	r0, [r4, #13]
d00406fc:	7ba2      	ldrb	r2, [r4, #14]
d00406fe:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0040702:	2b00      	cmp	r3, #0
d0040704:	d056      	beq.n	d00407b4 <main+0x564>
d0040706:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d004070a:	7be3      	ldrb	r3, [r4, #15]
d004070c:	f8da 0000 	ldr.w	r0, [sl]
d0040710:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040714:	f8db 1000 	ldr.w	r1, [fp]
d0040718:	681b      	ldr	r3, [r3, #0]
d004071a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d004071c:	4798      	blx	r3
d004071e:	f8db 3000 	ldr.w	r3, [fp]
d0040722:	6818      	ldr	r0, [r3, #0]
d0040724:	f000 f8a2 	bl	d004086c <set3DRenderBuffer>
d0040728:	4b3b      	ldr	r3, [pc, #236]	; (d0040818 <main+0x5c8>)
d004072a:	eeb0 0a68 	vmov.f32	s0, s17
d004072e:	4a3b      	ldr	r2, [pc, #236]	; (d004081c <main+0x5cc>)
d0040730:	4630      	mov	r0, r6
d0040732:	493b      	ldr	r1, [pc, #236]	; (d0040820 <main+0x5d0>)
d0040734:	463d      	mov	r5, r7
d0040736:	781b      	ldrb	r3, [r3, #0]
d0040738:	7812      	ldrb	r2, [r2, #0]
d004073a:	7809      	ldrb	r1, [r1, #0]
d004073c:	f004 f8ac 	bl	d0044898 <drawFakeHorizon>
d0040740:	4938      	ldr	r1, [pc, #224]	; (d0040824 <main+0x5d4>)
d0040742:	236e      	movs	r3, #110	; 0x6e
d0040744:	2280      	movs	r2, #128	; 0x80
d0040746:	7809      	ldrb	r1, [r1, #0]
d0040748:	eeb0 0a68 	vmov.f32	s0, s17
d004074c:	4630      	mov	r0, r6
d004074e:	f003 ff95 	bl	d004467c <drawFakeHorizonDots>
d0040752:	4630      	mov	r0, r6
d0040754:	f004 ff3a 	bl	d00455cc <Render3D>
d0040758:	7b20      	ldrb	r0, [r4, #12]
d004075a:	7b61      	ldrb	r1, [r4, #13]
d004075c:	7ba2      	ldrb	r2, [r4, #14]
d004075e:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0040762:	7be3      	ldrb	r3, [r4, #15]
d0040764:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040768:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004076c:	681b      	ldr	r3, [r3, #0]
d004076e:	681b      	ldr	r3, [r3, #0]
d0040770:	4798      	blx	r3
d0040772:	7820      	ldrb	r0, [r4, #0]
d0040774:	7861      	ldrb	r1, [r4, #1]
d0040776:	78a2      	ldrb	r2, [r4, #2]
d0040778:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004077c:	78e3      	ldrb	r3, [r4, #3]
d004077e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040782:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040786:	689b      	ldr	r3, [r3, #8]
d0040788:	4798      	blx	r3
d004078a:	1b43      	subs	r3, r0, r5
d004078c:	4607      	mov	r7, r0
d004078e:	ee08 3a10 	vmov	s16, r3
d0040792:	eeb8 8a48 	vcvt.f32.u32	s16, s16
d0040796:	eeb4 8ac9 	vcmpe.f32	s16, s18
d004079a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004079e:	f77f af13 	ble.w	d00405c8 <main+0x378>
d00407a2:	eeb0 ca4b 	vmov.f32	s24, s22
d00407a6:	eef0 ba6a 	vmov.f32	s23, s21
d00407aa:	eef0 ca4a 	vmov.f32	s25, s20
d00407ae:	eeb0 8a69 	vmov.f32	s16, s19
d00407b2:	e71d      	b.n	d00405f0 <main+0x3a0>
d00407b4:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d00407b8:	7be3      	ldrb	r3, [r4, #15]
d00407ba:	f8db 0000 	ldr.w	r0, [fp]
d00407be:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00407c2:	f8da 1000 	ldr.w	r1, [sl]
d00407c6:	681b      	ldr	r3, [r3, #0]
d00407c8:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00407ca:	4798      	blx	r3
d00407cc:	f8da 3000 	ldr.w	r3, [sl]
d00407d0:	6818      	ldr	r0, [r3, #0]
d00407d2:	f000 f84b 	bl	d004086c <set3DRenderBuffer>
d00407d6:	e7a7      	b.n	d0040728 <main+0x4d8>
d00407d8:	eeb1 1a4c 	vneg.f32	s2, s24
d00407dc:	ed9f 0a12 	vldr	s0, [pc, #72]	; d0040828 <main+0x5d8>
d00407e0:	eef0 0a68 	vmov.f32	s1, s17
d00407e4:	4630      	mov	r0, r6
d00407e6:	f002 fd6b 	bl	d00432c0 <cameraMove>
d00407ea:	e76f      	b.n	d00406cc <main+0x47c>
d00407ec:	eeb0 1a4c 	vmov.f32	s2, s24
d00407f0:	ed9f 0a0d 	vldr	s0, [pc, #52]	; d0040828 <main+0x5d8>
d00407f4:	eef0 0a68 	vmov.f32	s1, s17
d00407f8:	4630      	mov	r0, r6
d00407fa:	f002 fd61 	bl	d00432c0 <cameraMove>
d00407fe:	e762      	b.n	d00406c6 <main+0x476>
d0040800:	eef1 0a60 	vneg.f32	s1, s1
d0040804:	2101      	movs	r1, #1
d0040806:	eeb0 1a68 	vmov.f32	s2, s17
d004080a:	ed9f 0a07 	vldr	s0, [pc, #28]	; d0040828 <main+0x5d8>
d004080e:	4630      	mov	r0, r6
d0040810:	f002 fb88 	bl	d0042f24 <cameraTurn>
d0040814:	e730      	b.n	d0040678 <main+0x428>
d0040816:	bf00      	nop
d0040818:	d012cd00 	.word	0xd012cd00
d004081c:	d012cd25 	.word	0xd012cd25
d0040820:	d012cd24 	.word	0xd012cd24
d0040824:	d012cd01 	.word	0xd012cd01
d0040828:	00000000 	.word	0x00000000

d004082c <meshSetDefaultMaterial>:
d004082c:	b148      	cbz	r0, d0040842 <meshSetDefaultMaterial+0x16>
d004082e:	2300      	movs	r3, #0
d0040830:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d0040834:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
d0040838:	6203      	str	r3, [r0, #32]
d004083a:	6241      	str	r1, [r0, #36]	; 0x24
d004083c:	62c2      	str	r2, [r0, #44]	; 0x2c
d004083e:	6303      	str	r3, [r0, #48]	; 0x30
d0040840:	6283      	str	r3, [r0, #40]	; 0x28
d0040842:	4770      	bx	lr

d0040844 <meshSetMaterial>:
d0040844:	b148      	cbz	r0, d004085a <meshSetMaterial+0x16>
d0040846:	ed80 0a08 	vstr	s0, [r0, #32]
d004084a:	edc0 0a09 	vstr	s1, [r0, #36]	; 0x24
d004084e:	ed80 1a0c 	vstr	s2, [r0, #48]	; 0x30
d0040852:	edc0 1a0a 	vstr	s3, [r0, #40]	; 0x28
d0040856:	ed80 2a0b 	vstr	s4, [r0, #44]	; 0x2c
d004085a:	4770      	bx	lr

d004085c <resetDepthBuffer>:
d004085c:	f44f 2296 	mov.w	r2, #307200	; 0x4b000
d0040860:	21ff      	movs	r1, #255	; 0xff
d0040862:	4801      	ldr	r0, [pc, #4]	; (d0040868 <resetDepthBuffer+0xc>)
d0040864:	f005 bba8 	b.w	d0045fb8 <memset>
d0040868:	d0047660 	.word	0xd0047660

d004086c <set3DRenderBuffer>:
d004086c:	4b01      	ldr	r3, [pc, #4]	; (d0040874 <set3DRenderBuffer+0x8>)
d004086e:	6018      	str	r0, [r3, #0]
d0040870:	4770      	bx	lr
d0040872:	bf00      	nop
d0040874:	d012cd44 	.word	0xd012cd44

d0040878 <putPixel>:
d0040878:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d004087c:	d209      	bcs.n	d0040892 <putPixel+0x1a>
d004087e:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d0040882:	d206      	bcs.n	d0040892 <putPixel+0x1a>
d0040884:	4b03      	ldr	r3, [pc, #12]	; (d0040894 <putPixel+0x1c>)
d0040886:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d004088a:	681b      	ldr	r3, [r3, #0]
d004088c:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d0040890:	5442      	strb	r2, [r0, r1]
d0040892:	4770      	bx	lr
d0040894:	d012cd44 	.word	0xd012cd44

d0040898 <drawLine>:
d0040898:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004089c:	b085      	sub	sp, #20
d004089e:	eba2 0c00 	sub.w	ip, r2, r0
d00408a2:	eba3 0901 	sub.w	r9, r3, r1
d00408a6:	f240 1edf 	movw	lr, #479	; 0x1df
d00408aa:	f89d 4038 	ldrb.w	r4, [sp, #56]	; 0x38
d00408ae:	f240 1a3f 	movw	sl, #319	; 0x13f
d00408b2:	f8df b07c 	ldr.w	fp, [pc, #124]	; d0040930 <drawLine+0x98>
d00408b6:	9401      	str	r4, [sp, #4]
d00408b8:	4282      	cmp	r2, r0
d00408ba:	bfcc      	ite	gt
d00408bc:	2401      	movgt	r4, #1
d00408be:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d00408c2:	9402      	str	r4, [sp, #8]
d00408c4:	428b      	cmp	r3, r1
d00408c6:	bfcc      	ite	gt
d00408c8:	2401      	movgt	r4, #1
d00408ca:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d00408ce:	f1bc 0f00 	cmp.w	ip, #0
d00408d2:	9403      	str	r4, [sp, #12]
d00408d4:	bfb8      	it	lt
d00408d6:	f1cc 0c00 	rsblt	ip, ip, #0
d00408da:	f1b9 0f00 	cmp.w	r9, #0
d00408de:	bfb8      	it	lt
d00408e0:	f1c9 0900 	rsblt	r9, r9, #0
d00408e4:	ebac 0409 	sub.w	r4, ip, r9
d00408e8:	f1c9 0800 	rsb	r8, r9, #0
d00408ec:	4570      	cmp	r0, lr
d00408ee:	eb00 0780 	add.w	r7, r0, r0, lsl #2
d00408f2:	ea4f 0644 	mov.w	r6, r4, lsl #1
d00408f6:	d807      	bhi.n	d0040908 <drawLine+0x70>
d00408f8:	4551      	cmp	r1, sl
d00408fa:	d805      	bhi.n	d0040908 <drawLine+0x70>
d00408fc:	f8db 5000 	ldr.w	r5, [fp]
d0040900:	eb05 1587 	add.w	r5, r5, r7, lsl #6
d0040904:	9f01      	ldr	r7, [sp, #4]
d0040906:	546f      	strb	r7, [r5, r1]
d0040908:	4290      	cmp	r0, r2
d004090a:	d101      	bne.n	d0040910 <drawLine+0x78>
d004090c:	4299      	cmp	r1, r3
d004090e:	d00c      	beq.n	d004092a <drawLine+0x92>
d0040910:	ebb8 0f44 	cmp.w	r8, r4, lsl #1
d0040914:	dc05      	bgt.n	d0040922 <drawLine+0x8a>
d0040916:	9d02      	ldr	r5, [sp, #8]
d0040918:	45b4      	cmp	ip, r6
d004091a:	eba4 0409 	sub.w	r4, r4, r9
d004091e:	4428      	add	r0, r5
d0040920:	dbe4      	blt.n	d00408ec <drawLine+0x54>
d0040922:	9d03      	ldr	r5, [sp, #12]
d0040924:	4464      	add	r4, ip
d0040926:	4429      	add	r1, r5
d0040928:	e7e0      	b.n	d00408ec <drawLine+0x54>
d004092a:	b005      	add	sp, #20
d004092c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040930:	d012cd44 	.word	0xd012cd44

d0040934 <shadeColor>:
d0040934:	2900      	cmp	r1, #0
d0040936:	db09      	blt.n	d004094c <shadeColor+0x18>
d0040938:	2904      	cmp	r1, #4
d004093a:	dc09      	bgt.n	d0040950 <shadeColor+0x1c>
d004093c:	0109      	lsls	r1, r1, #4
d004093e:	b2c9      	uxtb	r1, r1
d0040940:	f000 000f 	and.w	r0, r0, #15
d0040944:	3020      	adds	r0, #32
d0040946:	4408      	add	r0, r1
d0040948:	b2c0      	uxtb	r0, r0
d004094a:	4770      	bx	lr
d004094c:	2100      	movs	r1, #0
d004094e:	e7f7      	b.n	d0040940 <shadeColor+0xc>
d0040950:	2010      	movs	r0, #16
d0040952:	4770      	bx	lr

d0040954 <fillTriangleFlat>:
d0040954:	eddf 7ad1 	vldr	s15, [pc, #836]	; d0040c9c <fillTriangleFlat+0x348>
d0040958:	eef4 0ae7 	vcmpe.f32	s1, s15
d004095c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040960:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040964:	eeb4 1ae7 	vcmpe.f32	s2, s15
d0040968:	ed2d 8b10 	vpush	{d8-d15}
d004096c:	b089      	sub	sp, #36	; 0x24
d004096e:	9304      	str	r3, [sp, #16]
d0040970:	bf94      	ite	ls
d0040972:	2301      	movls	r3, #1
d0040974:	2300      	movhi	r3, #0
d0040976:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004097a:	9001      	str	r0, [sp, #4]
d004097c:	9102      	str	r1, [sp, #8]
d004097e:	bf98      	it	ls
d0040980:	f043 0301 	orrls.w	r3, r3, #1
d0040984:	9203      	str	r2, [sp, #12]
d0040986:	f8bd 4090 	ldrh.w	r4, [sp, #144]	; 0x90
d004098a:	f8bd 0094 	ldrh.w	r0, [sp, #148]	; 0x94
d004098e:	f8bd 1098 	ldrh.w	r1, [sp, #152]	; 0x98
d0040992:	f89d 209c 	ldrb.w	r2, [sp, #156]	; 0x9c
d0040996:	2b00      	cmp	r3, #0
d0040998:	f040 8154 	bne.w	d0040c44 <fillTriangleFlat+0x2f0>
d004099c:	eeb4 0ae7 	vcmpe.f32	s0, s15
d00409a0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00409a4:	bf94      	ite	ls
d00409a6:	2701      	movls	r7, #1
d00409a8:	2700      	movhi	r7, #0
d00409aa:	f240 814b 	bls.w	d0040c44 <fillTriangleFlat+0x2f0>
d00409ae:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00409b2:	ee07 4a10 	vmov	s14, r4
d00409b6:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d00409ba:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d00409be:	ee87 8a80 	vdiv.f32	s16, s15, s0
d00409c2:	ee87 2a81 	vdiv.f32	s4, s15, s2
d00409c6:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d00409ca:	ee07 0a90 	vmov	s15, r0
d00409ce:	ee71 1aa6 	vadd.f32	s3, s3, s13
d00409d2:	eef8 5a67 	vcvt.f32.u32	s11, s15
d00409d6:	ee07 1a90 	vmov	s15, r1
d00409da:	ee27 7a08 	vmul.f32	s14, s14, s16
d00409de:	eeb8 3a67 	vcvt.f32.u32	s6, s15
d00409e2:	eefd 7ae1 	vcvt.s32.f32	s15, s3
d00409e6:	ee23 3a02 	vmul.f32	s6, s6, s4
d00409ea:	ee17 3a90 	vmov	r3, s15
d00409ee:	2b00      	cmp	r3, #0
d00409f0:	ee65 5a80 	vmul.f32	s11, s11, s0
d00409f4:	f2c0 812d 	blt.w	d0040c52 <fillTriangleFlat+0x2fe>
d00409f8:	2b04      	cmp	r3, #4
d00409fa:	f340 8128 	ble.w	d0040c4e <fillTriangleFlat+0x2fa>
d00409fe:	2710      	movs	r7, #16
d0040a00:	eddd 7a02 	vldr	s15, [sp, #8]
d0040a04:	eddd 6a23 	vldr	s13, [sp, #140]	; 0x8c
d0040a08:	eeb8 5ae7 	vcvt.f32.s32	s10, s15
d0040a0c:	eddd 7a04 	vldr	s15, [sp, #16]
d0040a10:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0040a14:	eef8 3ae7 	vcvt.f32.s32	s7, s15
d0040a18:	eddd 7a01 	vldr	s15, [sp, #4]
d0040a1c:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d0040a20:	eddd 7a03 	vldr	s15, [sp, #12]
d0040a24:	eeb4 5ae3 	vcmpe.f32	s10, s7
d0040a28:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d0040a2c:	eddd 7a22 	vldr	s15, [sp, #136]	; 0x88
d0040a30:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040a34:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040a38:	f300 8111 	bgt.w	d0040c5e <fillTriangleFlat+0x30a>
d0040a3c:	eeb4 5ae6 	vcmpe.f32	s10, s13
d0040a40:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040a44:	f300 81ee 	bgt.w	d0040e24 <fillTriangleFlat+0x4d0>
d0040a48:	eef4 3ae6 	vcmpe.f32	s7, s13
d0040a4c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040a50:	dd17      	ble.n	d0040a82 <fillTriangleFlat+0x12e>
d0040a52:	eeb0 1a65 	vmov.f32	s2, s11
d0040a56:	eef0 1a40 	vmov.f32	s3, s0
d0040a5a:	eef0 2a63 	vmov.f32	s5, s7
d0040a5e:	eeb0 4a64 	vmov.f32	s8, s9
d0040a62:	eef0 5a43 	vmov.f32	s11, s6
d0040a66:	eeb0 0a42 	vmov.f32	s0, s4
d0040a6a:	eef0 3a66 	vmov.f32	s7, s13
d0040a6e:	eef0 4a67 	vmov.f32	s9, s15
d0040a72:	eeb0 3a41 	vmov.f32	s6, s2
d0040a76:	eeb0 2a61 	vmov.f32	s4, s3
d0040a7a:	eef0 6a62 	vmov.f32	s13, s5
d0040a7e:	eef0 7a44 	vmov.f32	s15, s8
d0040a82:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d0040a86:	ee75 2a04 	vadd.f32	s5, s10, s8
d0040a8a:	ee36 4a84 	vadd.f32	s8, s13, s8
d0040a8e:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d0040a92:	eebd 4ac4 	vcvt.s32.f32	s8, s8
d0040a96:	ee12 3a90 	vmov	r3, s5
d0040a9a:	ee14 2a10 	vmov	r2, s8
d0040a9e:	4293      	cmp	r3, r2
d0040aa0:	f000 80d0 	beq.w	d0040c44 <fillTriangleFlat+0x2f0>
d0040aa4:	ee76 2ac5 	vsub.f32	s5, s13, s10
d0040aa8:	ed9f 9a7c 	vldr	s18, [pc, #496]	; d0040c9c <fillTriangleFlat+0x348>
d0040aac:	eef4 2ac9 	vcmpe.f32	s5, s18
d0040ab0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040ab4:	f240 80c6 	bls.w	d0040c44 <fillTriangleFlat+0x2f0>
d0040ab8:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d0040abc:	ee37 1ac6 	vsub.f32	s2, s15, s12
d0040ac0:	ee72 0a48 	vsub.f32	s1, s4, s16
d0040ac4:	ee81 4aa2 	vdiv.f32	s8, s3, s5
d0040ac8:	ee73 2ac5 	vsub.f32	s5, s7, s10
d0040acc:	ee73 8a47 	vsub.f32	s17, s6, s14
d0040ad0:	eef4 2ac9 	vcmpe.f32	s5, s18
d0040ad4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040ad8:	ee21 1a04 	vmul.f32	s2, s2, s8
d0040adc:	ee60 0a84 	vmul.f32	s1, s1, s8
d0040ae0:	ee68 8a84 	vmul.f32	s17, s17, s8
d0040ae4:	f300 80e2 	bgt.w	d0040cac <fillTriangleFlat+0x358>
d0040ae8:	ee36 4ae3 	vsub.f32	s8, s13, s7
d0040aec:	eeb4 4ac9 	vcmpe.f32	s8, s18
d0040af0:	ed8d 4a01 	vstr	s8, [sp, #4]
d0040af4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040af8:	f340 80a4 	ble.w	d0040c44 <fillTriangleFlat+0x2f0>
d0040afc:	eec1 9a84 	vdiv.f32	s19, s3, s8
d0040b00:	eef4 2ac9 	vcmpe.f32	s5, s18
d0040b04:	ee77 7ae4 	vsub.f32	s15, s15, s9
d0040b08:	ee32 4a40 	vsub.f32	s8, s4, s0
d0040b0c:	ee33 3a65 	vsub.f32	s6, s6, s11
d0040b10:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040b14:	ee67 eaa9 	vmul.f32	s29, s15, s19
d0040b18:	ee64 fa29 	vmul.f32	s31, s8, s19
d0040b1c:	ee23 fa29 	vmul.f32	s30, s6, s19
d0040b20:	f300 8315 	bgt.w	d004114e <fillTriangleFlat+0x7fa>
d0040b24:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0040b28:	edcd 7a02 	vstr	s15, [sp, #8]
d0040b2c:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0040b30:	f240 133f 	movw	r3, #319	; 0x13f
d0040b34:	9a02      	ldr	r2, [sp, #8]
d0040b36:	ee17 ea90 	vmov	lr, s15
d0040b3a:	ea22 7be2 	bic.w	fp, r2, r2, asr #31
d0040b3e:	f10e 3eff 	add.w	lr, lr, #4294967295	; 0xffffffff
d0040b42:	459e      	cmp	lr, r3
d0040b44:	bfa8      	it	ge
d0040b46:	469e      	movge	lr, r3
d0040b48:	45f3      	cmp	fp, lr
d0040b4a:	dc7b      	bgt.n	d0040c44 <fillTriangleFlat+0x2f0>
d0040b4c:	ee07 ba90 	vmov	s15, fp
d0040b50:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0040b54:	f10e 0e01 	add.w	lr, lr, #1
d0040b58:	ed9f 9a50 	vldr	s18, [pc, #320]	; d0040c9c <fillTriangleFlat+0x348>
d0040b5c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040b60:	eddf 1a4f 	vldr	s3, [pc, #316]	; d0040ca0 <fillTriangleFlat+0x34c>
d0040b64:	ed9f 2a4f 	vldr	s4, [pc, #316]	; d0040ca4 <fillTriangleFlat+0x350>
d0040b68:	eddf 9a4f 	vldr	s19, [pc, #316]	; d0040ca8 <fillTriangleFlat+0x354>
d0040b6c:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0040b70:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0040b74:	ee77 3ae3 	vsub.f32	s7, s15, s7
d0040b78:	eea1 6a05 	vfma.f32	s12, s2, s10
d0040b7c:	eea0 8a85 	vfma.f32	s16, s1, s10
d0040b80:	eea8 7a85 	vfma.f32	s14, s17, s10
d0040b84:	eee3 4aae 	vfma.f32	s9, s7, s29
d0040b88:	eea3 0aaf 	vfma.f32	s0, s7, s31
d0040b8c:	eeef 5a23 	vfma.f32	s11, s30, s7
d0040b90:	e032      	b.n	d0040bf8 <fillTriangleFlat+0x2a4>
d0040b92:	eef0 3a47 	vmov.f32	s7, s14
d0040b96:	eef0 2a48 	vmov.f32	s5, s16
d0040b9a:	eef0 6a46 	vmov.f32	s13, s12
d0040b9e:	eeb0 3a65 	vmov.f32	s6, s11
d0040ba2:	eeb0 5a40 	vmov.f32	s10, s0
d0040ba6:	eeb0 4a64 	vmov.f32	s8, s9
d0040baa:	fefa 7a66 	vrintp.f32	s15, s13
d0040bae:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0040bb2:	f240 13df 	movw	r3, #479	; 0x1df
d0040bb6:	ee17 6a90 	vmov	r6, s15
d0040bba:	fefa 7a44 	vrintp.f32	s15, s8
d0040bbe:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0040bc2:	3e01      	subs	r6, #1
d0040bc4:	ee17 4a90 	vmov	r4, s15
d0040bc8:	429e      	cmp	r6, r3
d0040bca:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d0040bce:	bfa8      	it	ge
d0040bd0:	461e      	movge	r6, r3
d0040bd2:	42a6      	cmp	r6, r4
d0040bd4:	f280 8158 	bge.w	d0040e88 <fillTriangleFlat+0x534>
d0040bd8:	f10b 0b01 	add.w	fp, fp, #1
d0040bdc:	ee36 6a01 	vadd.f32	s12, s12, s2
d0040be0:	ee38 8a20 	vadd.f32	s16, s16, s1
d0040be4:	45f3      	cmp	fp, lr
d0040be6:	ee37 7a28 	vadd.f32	s14, s14, s17
d0040bea:	ee74 4aae 	vadd.f32	s9, s9, s29
d0040bee:	ee30 0a2f 	vadd.f32	s0, s0, s31
d0040bf2:	ee75 5a8f 	vadd.f32	s11, s11, s30
d0040bf6:	d025      	beq.n	d0040c44 <fillTriangleFlat+0x2f0>
d0040bf8:	eeb4 6ae4 	vcmpe.f32	s12, s9
d0040bfc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040c00:	dcc7      	bgt.n	d0040b92 <fillTriangleFlat+0x23e>
d0040c02:	eef0 3a65 	vmov.f32	s7, s11
d0040c06:	eef0 2a40 	vmov.f32	s5, s0
d0040c0a:	eef0 6a64 	vmov.f32	s13, s9
d0040c0e:	eeb0 3a47 	vmov.f32	s6, s14
d0040c12:	eeb0 5a48 	vmov.f32	s10, s16
d0040c16:	eeb0 4a46 	vmov.f32	s8, s12
d0040c1a:	e7c6      	b.n	d0040baa <fillTriangleFlat+0x256>
d0040c1c:	eddd 6a03 	vldr	s13, [sp, #12]
d0040c20:	eddd 4a04 	vldr	s9, [sp, #16]
d0040c24:	ed9d 7a05 	vldr	s14, [sp, #20]
d0040c28:	ed9d 8a06 	vldr	s16, [sp, #24]
d0040c2c:	ed9d 5a07 	vldr	s10, [sp, #28]
d0040c30:	eddf 7a1a 	vldr	s15, [pc, #104]	; d0040c9c <fillTriangleFlat+0x348>
d0040c34:	ed9d 4a01 	vldr	s8, [sp, #4]
d0040c38:	eeb4 4ae7 	vcmpe.f32	s8, s15
d0040c3c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040c40:	f73f af74 	bgt.w	d0040b2c <fillTriangleFlat+0x1d8>
d0040c44:	b009      	add	sp, #36	; 0x24
d0040c46:	ecbd 8b10 	vpop	{d8-d15}
d0040c4a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040c4e:	011b      	lsls	r3, r3, #4
d0040c50:	b2df      	uxtb	r7, r3
d0040c52:	f002 020f 	and.w	r2, r2, #15
d0040c56:	3220      	adds	r2, #32
d0040c58:	4417      	add	r7, r2
d0040c5a:	b2ff      	uxtb	r7, r7
d0040c5c:	e6d0      	b.n	d0040a00 <fillTriangleFlat+0xac>
d0040c5e:	eef4 3ae6 	vcmpe.f32	s7, s13
d0040c62:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040c66:	f340 80f6 	ble.w	d0040e56 <fillTriangleFlat+0x502>
d0040c6a:	eeb0 1a43 	vmov.f32	s2, s6
d0040c6e:	eef0 1a42 	vmov.f32	s3, s4
d0040c72:	eef0 2a66 	vmov.f32	s5, s13
d0040c76:	eeb0 4a67 	vmov.f32	s8, s15
d0040c7a:	eeb0 3a47 	vmov.f32	s6, s14
d0040c7e:	eeb0 2a48 	vmov.f32	s4, s16
d0040c82:	eef0 6a45 	vmov.f32	s13, s10
d0040c86:	eef0 7a46 	vmov.f32	s15, s12
d0040c8a:	eeb0 7a41 	vmov.f32	s14, s2
d0040c8e:	eeb0 8a61 	vmov.f32	s16, s3
d0040c92:	eeb0 5a62 	vmov.f32	s10, s5
d0040c96:	eeb0 6a44 	vmov.f32	s12, s8
d0040c9a:	e6f2      	b.n	d0040a82 <fillTriangleFlat+0x12e>
d0040c9c:	38d1b717 	.word	0x38d1b717
d0040ca0:	33d6bf95 	.word	0x33d6bf95
d0040ca4:	00000000 	.word	0x00000000
d0040ca8:	477fff00 	.word	0x477fff00
d0040cac:	ee81 4aa2 	vdiv.f32	s8, s3, s5
d0040cb0:	ee76 aae3 	vsub.f32	s21, s13, s7
d0040cb4:	ee34 aac6 	vsub.f32	s20, s9, s12
d0040cb8:	ee70 9a48 	vsub.f32	s19, s0, s16
d0040cbc:	ee75 2ac7 	vsub.f32	s5, s11, s14
d0040cc0:	edcd aa01 	vstr	s21, [sp, #4]
d0040cc4:	eef4 aac9 	vcmpe.f32	s21, s18
d0040cc8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040ccc:	ee2a aa04 	vmul.f32	s20, s20, s8
d0040cd0:	ee69 9a84 	vmul.f32	s19, s19, s8
d0040cd4:	ee22 4a84 	vmul.f32	s8, s5, s8
d0040cd8:	eeb0 ba4a 	vmov.f32	s22, s20
d0040cdc:	eef0 da44 	vmov.f32	s27, s8
d0040ce0:	f340 822e 	ble.w	d0041140 <fillTriangleFlat+0x7ec>
d0040ce4:	eec1 2aaa 	vdiv.f32	s5, s3, s21
d0040ce8:	ee77 7ae4 	vsub.f32	s15, s15, s9
d0040cec:	ee32 4a40 	vsub.f32	s8, s4, s0
d0040cf0:	ee33 3a65 	vsub.f32	s6, s6, s11
d0040cf4:	ee67 eaa2 	vmul.f32	s29, s15, s5
d0040cf8:	ee64 fa22 	vmul.f32	s31, s8, s5
d0040cfc:	ee23 fa22 	vmul.f32	s30, s6, s5
d0040d00:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0040d04:	f240 133f 	movw	r3, #319	; 0x13f
d0040d08:	ee17 2a90 	vmov	r2, s15
d0040d0c:	edcd 7a02 	vstr	s15, [sp, #8]
d0040d10:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d0040d14:	f102 3bff 	add.w	fp, r2, #4294967295	; 0xffffffff
d0040d18:	ee17 aa90 	vmov	sl, s15
d0040d1c:	459b      	cmp	fp, r3
d0040d1e:	ea2a 7aea 	bic.w	sl, sl, sl, asr #31
d0040d22:	bfa8      	it	ge
d0040d24:	469b      	movge	fp, r3
d0040d26:	45d3      	cmp	fp, sl
d0040d28:	db82      	blt.n	d0040c30 <fillTriangleFlat+0x2dc>
d0040d2a:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0040d2e:	f10b 0b01 	add.w	fp, fp, #1
d0040d32:	eeb0 aa46 	vmov.f32	s20, s12
d0040d36:	ed1f da26 	vldr	s26, [pc, #-152]	; d0040ca0 <fillTriangleFlat+0x34c>
d0040d3a:	eef0 aa46 	vmov.f32	s21, s12
d0040d3e:	ed1f 3a27 	vldr	s6, [pc, #-156]	; d0040ca4 <fillTriangleFlat+0x350>
d0040d42:	ee37 4ac5 	vsub.f32	s8, s15, s10
d0040d46:	ee07 aa90 	vmov	s15, sl
d0040d4a:	eef0 ca48 	vmov.f32	s25, s16
d0040d4e:	ed1f 2a2a 	vldr	s4, [pc, #-168]	; d0040ca8 <fillTriangleFlat+0x354>
d0040d52:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040d56:	edcd 6a03 	vstr	s13, [sp, #12]
d0040d5a:	eeb0 ca47 	vmov.f32	s24, s14
d0040d5e:	edcd 4a04 	vstr	s9, [sp, #16]
d0040d62:	eeb0 9a4b 	vmov.f32	s18, s22
d0040d66:	ed8d 7a05 	vstr	s14, [sp, #20]
d0040d6a:	ee77 7a84 	vadd.f32	s15, s15, s8
d0040d6e:	ed8d 8a06 	vstr	s16, [sp, #24]
d0040d72:	eef0 ba48 	vmov.f32	s23, s16
d0040d76:	ed8d 5a07 	vstr	s10, [sp, #28]
d0040d7a:	eea7 aa8b 	vfma.f32	s20, s15, s22
d0040d7e:	eeb0 ba47 	vmov.f32	s22, s14
d0040d82:	eee1 aa27 	vfma.f32	s21, s2, s15
d0040d86:	eee0 caa7 	vfma.f32	s25, s1, s15
d0040d8a:	eea8 caa7 	vfma.f32	s24, s17, s15
d0040d8e:	eee7 baa9 	vfma.f32	s23, s15, s19
d0040d92:	eea7 baad 	vfma.f32	s22, s15, s27
d0040d96:	e033      	b.n	d0040e00 <fillTriangleFlat+0x4ac>
d0040d98:	eeb0 4a4c 	vmov.f32	s8, s24
d0040d9c:	eef0 4a6c 	vmov.f32	s9, s25
d0040da0:	eef0 7a6a 	vmov.f32	s15, s21
d0040da4:	eeb0 5a4b 	vmov.f32	s10, s22
d0040da8:	eeb0 7a6b 	vmov.f32	s14, s23
d0040dac:	eef0 6a4a 	vmov.f32	s13, s20
d0040db0:	fefa 2a67 	vrintp.f32	s5, s15
d0040db4:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d0040db8:	f240 13df 	movw	r3, #479	; 0x1df
d0040dbc:	ee12 6a90 	vmov	r6, s5
d0040dc0:	fefa 2a66 	vrintp.f32	s5, s13
d0040dc4:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d0040dc8:	3e01      	subs	r6, #1
d0040dca:	ee12 4a90 	vmov	r4, s5
d0040dce:	429e      	cmp	r6, r3
d0040dd0:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d0040dd4:	bfa8      	it	ge
d0040dd6:	461e      	movge	r6, r3
d0040dd8:	42a6      	cmp	r6, r4
d0040dda:	f280 80fd 	bge.w	d0040fd8 <fillTriangleFlat+0x684>
d0040dde:	f10a 0a01 	add.w	sl, sl, #1
d0040de2:	ee7a aa81 	vadd.f32	s21, s21, s2
d0040de6:	ee7c caa0 	vadd.f32	s25, s25, s1
d0040dea:	45da      	cmp	sl, fp
d0040dec:	ee3c ca28 	vadd.f32	s24, s24, s17
d0040df0:	ee3a aa09 	vadd.f32	s20, s20, s18
d0040df4:	ee7b baa9 	vadd.f32	s23, s23, s19
d0040df8:	ee3b ba2d 	vadd.f32	s22, s22, s27
d0040dfc:	f43f af0e 	beq.w	d0040c1c <fillTriangleFlat+0x2c8>
d0040e00:	eef4 aaca 	vcmpe.f32	s21, s20
d0040e04:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040e08:	dcc6      	bgt.n	d0040d98 <fillTriangleFlat+0x444>
d0040e0a:	eeb0 4a4b 	vmov.f32	s8, s22
d0040e0e:	eef0 4a6b 	vmov.f32	s9, s23
d0040e12:	eef0 7a4a 	vmov.f32	s15, s20
d0040e16:	eeb0 5a4c 	vmov.f32	s10, s24
d0040e1a:	eeb0 7a6c 	vmov.f32	s14, s25
d0040e1e:	eef0 6a6a 	vmov.f32	s13, s21
d0040e22:	e7c5      	b.n	d0040db0 <fillTriangleFlat+0x45c>
d0040e24:	eeb0 1a47 	vmov.f32	s2, s14
d0040e28:	eef0 1a48 	vmov.f32	s3, s16
d0040e2c:	eef0 2a45 	vmov.f32	s5, s10
d0040e30:	eeb0 4a46 	vmov.f32	s8, s12
d0040e34:	eeb0 7a43 	vmov.f32	s14, s6
d0040e38:	eeb0 8a42 	vmov.f32	s16, s4
d0040e3c:	eeb0 5a66 	vmov.f32	s10, s13
d0040e40:	eeb0 6a67 	vmov.f32	s12, s15
d0040e44:	eeb0 3a41 	vmov.f32	s6, s2
d0040e48:	eeb0 2a61 	vmov.f32	s4, s3
d0040e4c:	eef0 6a62 	vmov.f32	s13, s5
d0040e50:	eef0 7a44 	vmov.f32	s15, s8
d0040e54:	e5f8      	b.n	d0040a48 <fillTriangleFlat+0xf4>
d0040e56:	eeb0 1a47 	vmov.f32	s2, s14
d0040e5a:	eef0 1a48 	vmov.f32	s3, s16
d0040e5e:	eef0 2a45 	vmov.f32	s5, s10
d0040e62:	eeb0 4a46 	vmov.f32	s8, s12
d0040e66:	eeb0 7a65 	vmov.f32	s14, s11
d0040e6a:	eeb0 8a40 	vmov.f32	s16, s0
d0040e6e:	eeb0 5a63 	vmov.f32	s10, s7
d0040e72:	eeb0 6a64 	vmov.f32	s12, s9
d0040e76:	eef0 5a41 	vmov.f32	s11, s2
d0040e7a:	eeb0 0a61 	vmov.f32	s0, s3
d0040e7e:	eef0 3a62 	vmov.f32	s7, s5
d0040e82:	eef0 4a44 	vmov.f32	s9, s8
d0040e86:	e5df      	b.n	d0040a48 <fillTriangleFlat+0xf4>
d0040e88:	ee76 6ac4 	vsub.f32	s13, s13, s8
d0040e8c:	eef4 6ac9 	vcmpe.f32	s13, s18
d0040e90:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040e94:	f340 814f 	ble.w	d0041136 <fillTriangleFlat+0x7e2>
d0040e98:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0040e9c:	ee72 2ac5 	vsub.f32	s5, s5, s10
d0040ea0:	ee73 3ac3 	vsub.f32	s7, s7, s6
d0040ea4:	ee87 aaa6 	vdiv.f32	s20, s15, s13
d0040ea8:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0040eac:	ee37 4ac4 	vsub.f32	s8, s15, s8
d0040eb0:	ee07 4a90 	vmov	s15, r4
d0040eb4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040eb8:	ee77 7a84 	vadd.f32	s15, s15, s8
d0040ebc:	ee62 2a8a 	vmul.f32	s5, s5, s20
d0040ec0:	ee23 aa8a 	vmul.f32	s20, s7, s20
d0040ec4:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0040ec8:	eea7 3a8a 	vfma.f32	s6, s15, s20
d0040ecc:	ebcb 180b 	rsb	r8, fp, fp, lsl #4
d0040ed0:	4ba3      	ldr	r3, [pc, #652]	; (d0041160 <fillTriangleFlat+0x80c>)
d0040ed2:	eb04 0c84 	add.w	ip, r4, r4, lsl #2
d0040ed6:	4aa3      	ldr	r2, [pc, #652]	; (d0041164 <fillTriangleFlat+0x810>)
d0040ed8:	681b      	ldr	r3, [r3, #0]
d0040eda:	eb04 1848 	add.w	r8, r4, r8, lsl #5
d0040ede:	eb0b 1c8c 	add.w	ip, fp, ip, lsl #6
d0040ee2:	eef6 3a00 	vmov.f32	s7, #96	; 0x3f000000  0.5
d0040ee6:	eb02 0848 	add.w	r8, r2, r8, lsl #1
d0040eea:	449c      	add	ip, r3
d0040eec:	e011      	b.n	d0040f12 <fillTriangleFlat+0x5be>
d0040eee:	ee07 1a90 	vmov	s15, r1
d0040ef2:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0040ef6:	eb08 0841 	add.w	r8, r8, r1, lsl #1
d0040efa:	440c      	add	r4, r1
d0040efc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040f00:	eb0c 1c83 	add.w	ip, ip, r3, lsl #6
d0040f04:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0040f08:	eea7 3a8a 	vfma.f32	s6, s15, s20
d0040f0c:	42a6      	cmp	r6, r4
d0040f0e:	f6ff ae63 	blt.w	d0040bd8 <fillTriangleFlat+0x284>
d0040f12:	eba6 0904 	sub.w	r9, r6, r4
d0040f16:	eeb4 5ae1 	vcmpe.f32	s10, s3
d0040f1a:	f109 0101 	add.w	r1, r9, #1
d0040f1e:	2930      	cmp	r1, #48	; 0x30
d0040f20:	bfa8      	it	ge
d0040f22:	2130      	movge	r1, #48	; 0x30
d0040f24:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040f28:	d9e1      	bls.n	d0040eee <fillTriangleFlat+0x59a>
d0040f2a:	f1b9 0f00 	cmp.w	r9, #0
d0040f2e:	eec3 6a05 	vdiv.f32	s13, s6, s10
d0040f32:	dd4d      	ble.n	d0040fd0 <fillTriangleFlat+0x67c>
d0040f34:	1e4b      	subs	r3, r1, #1
d0040f36:	ee07 3a90 	vmov	s15, r3
d0040f3a:	eeb0 4a45 	vmov.f32	s8, s10
d0040f3e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040f42:	eea7 4aa2 	vfma.f32	s8, s15, s5
d0040f46:	eeb4 4ae1 	vcmpe.f32	s8, s3
d0040f4a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040f4e:	dd40      	ble.n	d0040fd2 <fillTriangleFlat+0x67e>
d0040f50:	eeb0 ba43 	vmov.f32	s22, s6
d0040f54:	eea7 ba8a 	vfma.f32	s22, s15, s20
d0040f58:	eecb aa04 	vdiv.f32	s21, s22, s8
d0040f5c:	ee7a aae6 	vsub.f32	s21, s21, s13
d0040f60:	ee8a 4aa7 	vdiv.f32	s8, s21, s15
d0040f64:	f1a8 0002 	sub.w	r0, r8, #2
d0040f68:	2300      	movs	r3, #0
d0040f6a:	fec6 7a82 	vmaxnm.f32	s15, s13, s4
d0040f6e:	fec7 7ae9 	vminnm.f32	s15, s15, s19
d0040f72:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0040f76:	f830 5f02 	ldrh.w	r5, [r0, #2]!
d0040f7a:	3301      	adds	r3, #1
d0040f7c:	ee77 7aa3 	vadd.f32	s15, s15, s7
d0040f80:	ea4f 1a82 	mov.w	sl, r2, lsl #6
d0040f84:	ee76 6a84 	vadd.f32	s13, s13, s8
d0040f88:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0040f8c:	ee17 2a90 	vmov	r2, s15
d0040f90:	b292      	uxth	r2, r2
d0040f92:	4295      	cmp	r5, r2
d0040f94:	d902      	bls.n	d0040f9c <fillTriangleFlat+0x648>
d0040f96:	8002      	strh	r2, [r0, #0]
d0040f98:	f80c 700a 	strb.w	r7, [ip, sl]
d0040f9c:	4299      	cmp	r1, r3
d0040f9e:	dce4      	bgt.n	d0040f6a <fillTriangleFlat+0x616>
d0040fa0:	f1b9 0f00 	cmp.w	r9, #0
d0040fa4:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0040fa8:	ea4f 0241 	mov.w	r2, r1, lsl #1
d0040fac:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0040fb0:	bfbc      	itt	lt
d0040fb2:	2202      	movlt	r2, #2
d0040fb4:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0040fb8:	4490      	add	r8, r2
d0040fba:	449c      	add	ip, r3
d0040fbc:	ee07 1a90 	vmov	s15, r1
d0040fc0:	440c      	add	r4, r1
d0040fc2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040fc6:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0040fca:	eea7 3a8a 	vfma.f32	s6, s15, s20
d0040fce:	e79d      	b.n	d0040f0c <fillTriangleFlat+0x5b8>
d0040fd0:	d1f4      	bne.n	d0040fbc <fillTriangleFlat+0x668>
d0040fd2:	eeb0 4a42 	vmov.f32	s8, s4
d0040fd6:	e7c5      	b.n	d0040f64 <fillTriangleFlat+0x610>
d0040fd8:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0040fdc:	eddf 2a62 	vldr	s5, [pc, #392]	; d0041168 <fillTriangleFlat+0x814>
d0040fe0:	eef4 7ae2 	vcmpe.f32	s15, s5
d0040fe4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040fe8:	f340 80a0 	ble.w	d004112c <fillTriangleFlat+0x7d8>
d0040fec:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d0040ff0:	ee74 4ac7 	vsub.f32	s9, s9, s14
d0040ff4:	ee34 4a45 	vsub.f32	s8, s8, s10
d0040ff8:	eec1 2aa7 	vdiv.f32	s5, s3, s15
d0040ffc:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0041000:	ee77 6ae6 	vsub.f32	s13, s15, s13
d0041004:	ee07 4a90 	vmov	s15, r4
d0041008:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004100c:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0041010:	ee64 4aa2 	vmul.f32	s9, s9, s5
d0041014:	ee24 4a22 	vmul.f32	s8, s8, s5
d0041018:	eea7 7aa4 	vfma.f32	s14, s15, s9
d004101c:	eea7 5a84 	vfma.f32	s10, s15, s8
d0041020:	ebca 1e0a 	rsb	lr, sl, sl, lsl #4
d0041024:	4b4e      	ldr	r3, [pc, #312]	; (d0041160 <fillTriangleFlat+0x80c>)
d0041026:	eb04 0c84 	add.w	ip, r4, r4, lsl #2
d004102a:	4a4e      	ldr	r2, [pc, #312]	; (d0041164 <fillTriangleFlat+0x810>)
d004102c:	681b      	ldr	r3, [r3, #0]
d004102e:	eb04 1e4e 	add.w	lr, r4, lr, lsl #5
d0041032:	eb0a 1c8c 	add.w	ip, sl, ip, lsl #6
d0041036:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d004103a:	eb02 0e4e 	add.w	lr, r2, lr, lsl #1
d004103e:	449c      	add	ip, r3
d0041040:	e011      	b.n	d0041066 <fillTriangleFlat+0x712>
d0041042:	ee07 1a90 	vmov	s15, r1
d0041046:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d004104a:	eb0e 0e41 	add.w	lr, lr, r1, lsl #1
d004104e:	440c      	add	r4, r1
d0041050:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041054:	eb0c 1c83 	add.w	ip, ip, r3, lsl #6
d0041058:	eea7 7aa4 	vfma.f32	s14, s15, s9
d004105c:	eea7 5a84 	vfma.f32	s10, s15, s8
d0041060:	42b4      	cmp	r4, r6
d0041062:	f73f aebc 	bgt.w	d0040dde <fillTriangleFlat+0x48a>
d0041066:	eba6 0804 	sub.w	r8, r6, r4
d004106a:	eeb4 7acd 	vcmpe.f32	s14, s26
d004106e:	f108 0101 	add.w	r1, r8, #1
d0041072:	2930      	cmp	r1, #48	; 0x30
d0041074:	bfa8      	it	ge
d0041076:	2130      	movge	r1, #48	; 0x30
d0041078:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004107c:	d9e1      	bls.n	d0041042 <fillTriangleFlat+0x6ee>
d004107e:	f1b8 0f00 	cmp.w	r8, #0
d0041082:	eec5 2a07 	vdiv.f32	s5, s10, s14
d0041086:	dd4d      	ble.n	d0041124 <fillTriangleFlat+0x7d0>
d0041088:	1e4b      	subs	r3, r1, #1
d004108a:	ee07 3a90 	vmov	s15, r3
d004108e:	eef0 1a47 	vmov.f32	s3, s14
d0041092:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041096:	eee7 1aa4 	vfma.f32	s3, s15, s9
d004109a:	eef4 1acd 	vcmpe.f32	s3, s26
d004109e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00410a2:	dd40      	ble.n	d0041126 <fillTriangleFlat+0x7d2>
d00410a4:	eeb0 ea45 	vmov.f32	s28, s10
d00410a8:	eea7 ea84 	vfma.f32	s28, s15, s8
d00410ac:	ee8e 8a21 	vdiv.f32	s16, s28, s3
d00410b0:	ee38 8a62 	vsub.f32	s16, s16, s5
d00410b4:	eec8 1a27 	vdiv.f32	s3, s16, s15
d00410b8:	f1ae 0002 	sub.w	r0, lr, #2
d00410bc:	2200      	movs	r2, #0
d00410be:	fec2 7a83 	vmaxnm.f32	s15, s5, s6
d00410c2:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d00410c6:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d00410ca:	f830 5f02 	ldrh.w	r5, [r0, #2]!
d00410ce:	3201      	adds	r2, #1
d00410d0:	ee77 7aa6 	vadd.f32	s15, s15, s13
d00410d4:	ea4f 1983 	mov.w	r9, r3, lsl #6
d00410d8:	ee72 2aa1 	vadd.f32	s5, s5, s3
d00410dc:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00410e0:	ee17 3a90 	vmov	r3, s15
d00410e4:	b29b      	uxth	r3, r3
d00410e6:	429d      	cmp	r5, r3
d00410e8:	d902      	bls.n	d00410f0 <fillTriangleFlat+0x79c>
d00410ea:	8003      	strh	r3, [r0, #0]
d00410ec:	f80c 7009 	strb.w	r7, [ip, r9]
d00410f0:	428a      	cmp	r2, r1
d00410f2:	dbe4      	blt.n	d00410be <fillTriangleFlat+0x76a>
d00410f4:	f1b8 0f00 	cmp.w	r8, #0
d00410f8:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d00410fc:	ea4f 0241 	mov.w	r2, r1, lsl #1
d0041100:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0041104:	bfbc      	itt	lt
d0041106:	2202      	movlt	r2, #2
d0041108:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d004110c:	4496      	add	lr, r2
d004110e:	449c      	add	ip, r3
d0041110:	ee07 1a90 	vmov	s15, r1
d0041114:	440c      	add	r4, r1
d0041116:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004111a:	eea7 7aa4 	vfma.f32	s14, s15, s9
d004111e:	eea7 5a84 	vfma.f32	s10, s15, s8
d0041122:	e79d      	b.n	d0041060 <fillTriangleFlat+0x70c>
d0041124:	d1f4      	bne.n	d0041110 <fillTriangleFlat+0x7bc>
d0041126:	eef0 1a43 	vmov.f32	s3, s6
d004112a:	e7c5      	b.n	d00410b8 <fillTriangleFlat+0x764>
d004112c:	eeb0 4a43 	vmov.f32	s8, s6
d0041130:	eef0 4a43 	vmov.f32	s9, s6
d0041134:	e774      	b.n	d0041020 <fillTriangleFlat+0x6cc>
d0041136:	eeb0 aa42 	vmov.f32	s20, s4
d004113a:	eef0 2a42 	vmov.f32	s5, s4
d004113e:	e6c5      	b.n	d0040ecc <fillTriangleFlat+0x578>
d0041140:	ed9f fa0a 	vldr	s30, [pc, #40]	; d004116c <fillTriangleFlat+0x818>
d0041144:	eef0 fa4f 	vmov.f32	s31, s30
d0041148:	eef0 ea4f 	vmov.f32	s29, s30
d004114c:	e5d8      	b.n	d0040d00 <fillTriangleFlat+0x3ac>
d004114e:	eddf 7a07 	vldr	s15, [pc, #28]	; d004116c <fillTriangleFlat+0x818>
d0041152:	eef0 da67 	vmov.f32	s27, s15
d0041156:	eef0 9a67 	vmov.f32	s19, s15
d004115a:	eeb0 ba67 	vmov.f32	s22, s15
d004115e:	e5cf      	b.n	d0040d00 <fillTriangleFlat+0x3ac>
d0041160:	d012cd44 	.word	0xd012cd44
d0041164:	d0047660 	.word	0xd0047660
d0041168:	38d1b717 	.word	0x38d1b717
d004116c:	00000000 	.word	0x00000000

d0041170 <fillTriangleDitherBayer>:
d0041170:	eddf 7ae7 	vldr	s15, [pc, #924]	; d0041510 <fillTriangleDitherBayer+0x3a0>
d0041174:	eef4 0ae7 	vcmpe.f32	s1, s15
d0041178:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004117c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041180:	eeb4 1ae7 	vcmpe.f32	s2, s15
d0041184:	ed2d 8b10 	vpush	{d8-d15}
d0041188:	b08f      	sub	sp, #60	; 0x3c
d004118a:	9202      	str	r2, [sp, #8]
d004118c:	bf94      	ite	ls
d004118e:	2201      	movls	r2, #1
d0041190:	2200      	movhi	r2, #0
d0041192:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041196:	9303      	str	r3, [sp, #12]
d0041198:	f8bd 40a8 	ldrh.w	r4, [sp, #168]	; 0xa8
d004119c:	bf98      	it	ls
d004119e:	f042 0201 	orrls.w	r2, r2, #1
d00411a2:	f89d 30b4 	ldrb.w	r3, [sp, #180]	; 0xb4
d00411a6:	e9cd 0100 	strd	r0, r1, [sp]
d00411aa:	f8bd 00ac 	ldrh.w	r0, [sp, #172]	; 0xac
d00411ae:	f8bd 10b0 	ldrh.w	r1, [sp, #176]	; 0xb0
d00411b2:	2a00      	cmp	r2, #0
d00411b4:	f040 8187 	bne.w	d00414c6 <fillTriangleDitherBayer+0x356>
d00411b8:	eeb4 0a67 	vcmp.f32	s0, s15
d00411bc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00411c0:	f240 8181 	bls.w	d00414c6 <fillTriangleDitherBayer+0x356>
d00411c4:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d00411c8:	eddf 7ad3 	vldr	s15, [pc, #844]	; d0041518 <fillTriangleDitherBayer+0x3a8>
d00411cc:	eeb1 6a04 	vmov.f32	s12, #20	; 0x40a00000  5.0
d00411d0:	ee07 4a10 	vmov	s14, r4
d00411d4:	fec1 7aa7 	vmaxnm.f32	s15, s3, s15
d00411d8:	ee86 3a81 	vdiv.f32	s6, s13, s2
d00411dc:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d00411e0:	eec6 1a80 	vdiv.f32	s3, s13, s0
d00411e4:	ee86 0aa0 	vdiv.f32	s0, s13, s1
d00411e8:	eefd 6ae7 	vcvt.s32.f32	s13, s15
d00411ec:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d00411f0:	ee16 2a90 	vmov	r2, s13
d00411f4:	ee06 0a90 	vmov	s13, r0
d00411f8:	eef8 5a66 	vcvt.f32.u32	s11, s13
d00411fc:	ee06 1a90 	vmov	s13, r1
d0041200:	1c51      	adds	r1, r2, #1
d0041202:	ee27 7a21 	vmul.f32	s14, s14, s3
d0041206:	eef8 6a66 	vcvt.f32.u32	s13, s13
d004120a:	2905      	cmp	r1, #5
d004120c:	bfa8      	it	ge
d004120e:	2105      	movge	r1, #5
d0041210:	2a04      	cmp	r2, #4
d0041212:	ee65 5a80 	vmul.f32	s11, s11, s0
d0041216:	ee26 2a83 	vmul.f32	s4, s13, s6
d004121a:	f300 8457 	bgt.w	d0041acc <fillTriangleDitherBayer+0x95c>
d004121e:	f003 030f 	and.w	r3, r3, #15
d0041222:	2a03      	cmp	r2, #3
d0041224:	f103 0320 	add.w	r3, r3, #32
d0041228:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d004122c:	fa5f fa80 	uxtb.w	sl, r0
d0041230:	f300 844e 	bgt.w	d0041ad0 <fillTriangleDitherBayer+0x960>
d0041234:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d0041238:	b2db      	uxtb	r3, r3
d004123a:	9304      	str	r3, [sp, #16]
d004123c:	eddd 6a01 	vldr	s13, [sp, #4]
d0041240:	eeb8 5ae6 	vcvt.f32.s32	s10, s13
d0041244:	eddd 6a03 	vldr	s13, [sp, #12]
d0041248:	eef8 3ae6 	vcvt.f32.s32	s7, s13
d004124c:	eddd 6a00 	vldr	s13, [sp]
d0041250:	eeb8 6ae6 	vcvt.f32.s32	s12, s13
d0041254:	eddd 6a02 	vldr	s13, [sp, #8]
d0041258:	eeb4 5ae3 	vcmpe.f32	s10, s7
d004125c:	eef8 4ae6 	vcvt.f32.s32	s9, s13
d0041260:	eddd 6a28 	vldr	s13, [sp, #160]	; 0xa0
d0041264:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041268:	eeb8 1ae6 	vcvt.f32.s32	s2, s13
d004126c:	eddd 6a29 	vldr	s13, [sp, #164]	; 0xa4
d0041270:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0041274:	f300 812c 	bgt.w	d00414d0 <fillTriangleDitherBayer+0x360>
d0041278:	eeb4 5ae6 	vcmpe.f32	s10, s13
d004127c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041280:	f300 8231 	bgt.w	d00416e6 <fillTriangleDitherBayer+0x576>
d0041284:	eef4 3ae6 	vcmpe.f32	s7, s13
d0041288:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004128c:	dd17      	ble.n	d00412be <fillTriangleDitherBayer+0x14e>
d004128e:	eeb0 8a65 	vmov.f32	s16, s11
d0041292:	eef0 0a40 	vmov.f32	s1, s0
d0041296:	eef0 2a63 	vmov.f32	s5, s7
d004129a:	eeb0 4a64 	vmov.f32	s8, s9
d004129e:	eef0 5a42 	vmov.f32	s11, s4
d00412a2:	eeb0 0a43 	vmov.f32	s0, s6
d00412a6:	eef0 3a66 	vmov.f32	s7, s13
d00412aa:	eef0 4a41 	vmov.f32	s9, s2
d00412ae:	eeb0 2a48 	vmov.f32	s4, s16
d00412b2:	eeb0 3a60 	vmov.f32	s6, s1
d00412b6:	eef0 6a62 	vmov.f32	s13, s5
d00412ba:	eeb0 1a44 	vmov.f32	s2, s8
d00412be:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d00412c2:	ee75 2a04 	vadd.f32	s5, s10, s8
d00412c6:	ee36 4a84 	vadd.f32	s8, s13, s8
d00412ca:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d00412ce:	eebd 4ac4 	vcvt.s32.f32	s8, s8
d00412d2:	ee12 3a90 	vmov	r3, s5
d00412d6:	ee14 1a10 	vmov	r1, s8
d00412da:	428b      	cmp	r3, r1
d00412dc:	f000 80f3 	beq.w	d00414c6 <fillTriangleDitherBayer+0x356>
d00412e0:	ee76 8ac5 	vsub.f32	s17, s13, s10
d00412e4:	eddf 2a8a 	vldr	s5, [pc, #552]	; d0041510 <fillTriangleDitherBayer+0x3a0>
d00412e8:	eef4 8ae2 	vcmpe.f32	s17, s5
d00412ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00412f0:	f240 80e9 	bls.w	d00414c6 <fillTriangleDitherBayer+0x356>
d00412f4:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d00412f8:	ee33 9ac5 	vsub.f32	s18, s7, s10
d00412fc:	ee71 0a46 	vsub.f32	s1, s2, s12
d0041300:	ee89 4aa8 	vdiv.f32	s8, s19, s17
d0041304:	eeb4 9ae2 	vcmpe.f32	s18, s5
d0041308:	ee33 8a61 	vsub.f32	s16, s6, s3
d004130c:	ee72 8a47 	vsub.f32	s17, s4, s14
d0041310:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041314:	ee60 0a84 	vmul.f32	s1, s1, s8
d0041318:	ee28 8a04 	vmul.f32	s16, s16, s8
d004131c:	ee68 8a84 	vmul.f32	s17, s17, s8
d0041320:	f300 80fe 	bgt.w	d0041520 <fillTriangleDitherBayer+0x3b0>
d0041324:	ee04 2a10 	vmov	s8, r2
d0041328:	ee76 fae3 	vsub.f32	s31, s13, s7
d004132c:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0041330:	eef4 fae2 	vcmpe.f32	s31, s5
d0041334:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0041338:	eeb0 4a67 	vmov.f32	s8, s15
d004133c:	eebe 4ace 	vcvt.s32.f32	s8, s8, #4
d0041340:	ee14 3a10 	vmov	r3, s8
d0041344:	f383 0204 	usat	r2, #4, r3
d0041348:	9201      	str	r2, [sp, #4]
d004134a:	9a04      	ldr	r2, [sp, #16]
d004134c:	4592      	cmp	sl, r2
d004134e:	bf18      	it	ne
d0041350:	2b00      	cmpne	r3, #0
d0041352:	bfd4      	ite	le
d0041354:	2301      	movle	r3, #1
d0041356:	2300      	movgt	r3, #0
d0041358:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004135c:	9300      	str	r3, [sp, #0]
d004135e:	f340 80b2 	ble.w	d00414c6 <fillTriangleDitherBayer+0x356>
d0041362:	ed9f ea6d 	vldr	s28, [pc, #436]	; d0041518 <fillTriangleDitherBayer+0x3a8>
d0041366:	eef0 9a4e 	vmov.f32	s19, s28
d004136a:	eeb0 ba4e 	vmov.f32	s22, s28
d004136e:	eef7 2a00 	vmov.f32	s5, #112	; 0x3f800000  1.0
d0041372:	ed9f 4a67 	vldr	s8, [pc, #412]	; d0041510 <fillTriangleDitherBayer+0x3a0>
d0041376:	ee31 1a64 	vsub.f32	s2, s2, s9
d004137a:	ee33 3a40 	vsub.f32	s6, s6, s0
d004137e:	eec2 7aaf 	vdiv.f32	s15, s5, s31
d0041382:	eeb4 9ac4 	vcmpe.f32	s18, s8
d0041386:	ee32 2a65 	vsub.f32	s4, s4, s11
d004138a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004138e:	ee61 2a27 	vmul.f32	s5, s2, s15
d0041392:	ee23 3a27 	vmul.f32	s6, s6, s15
d0041396:	ee22 fa27 	vmul.f32	s30, s4, s15
d004139a:	edcd 2a09 	vstr	s5, [sp, #36]	; 0x24
d004139e:	ed8d 3a08 	vstr	s6, [sp, #32]
d00413a2:	f300 80f4 	bgt.w	d004158e <fillTriangleDitherBayer+0x41e>
d00413a6:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d00413aa:	edcd 7a06 	vstr	s15, [sp, #24]
d00413ae:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d00413b2:	f240 123f 	movw	r2, #319	; 0x13f
d00413b6:	9906      	ldr	r1, [sp, #24]
d00413b8:	ee17 3a90 	vmov	r3, s15
d00413bc:	ea21 7be1 	bic.w	fp, r1, r1, asr #31
d00413c0:	3b01      	subs	r3, #1
d00413c2:	4293      	cmp	r3, r2
d00413c4:	bfa8      	it	ge
d00413c6:	4613      	movge	r3, r2
d00413c8:	459b      	cmp	fp, r3
d00413ca:	dc7c      	bgt.n	d00414c6 <fillTriangleDitherBayer+0x356>
d00413cc:	ee07 ba90 	vmov	s15, fp
d00413d0:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d00413d4:	3301      	adds	r3, #1
d00413d6:	eddd aa09 	vldr	s21, [sp, #36]	; 0x24
d00413da:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00413de:	ed9d aa08 	vldr	s20, [sp, #32]
d00413e2:	ed9f 1a4b 	vldr	s2, [pc, #300]	; d0041510 <fillTriangleDitherBayer+0x3a0>
d00413e6:	ed9f 2a4b 	vldr	s4, [pc, #300]	; d0041514 <fillTriangleDitherBayer+0x3a4>
d00413ea:	ee77 7aa6 	vadd.f32	s15, s15, s13
d00413ee:	ed9f 3a4a 	vldr	s6, [pc, #296]	; d0041518 <fillTriangleDitherBayer+0x3a8>
d00413f2:	9302      	str	r3, [sp, #8]
d00413f4:	ee37 5ac5 	vsub.f32	s10, s15, s10
d00413f8:	ee77 7ae3 	vsub.f32	s15, s15, s7
d00413fc:	eddf 3a47 	vldr	s7, [pc, #284]	; d004151c <fillTriangleDitherBayer+0x3ac>
d0041400:	eea0 6a85 	vfma.f32	s12, s1, s10
d0041404:	eee8 1a05 	vfma.f32	s3, s16, s10
d0041408:	eea8 7a85 	vfma.f32	s14, s17, s10
d004140c:	eeea 4aa7 	vfma.f32	s9, s21, s15
d0041410:	eeaa 0a27 	vfma.f32	s0, s20, s15
d0041414:	eeef 5a27 	vfma.f32	s11, s30, s15
d0041418:	e033      	b.n	d0041482 <fillTriangleDitherBayer+0x312>
d004141a:	eef0 2a47 	vmov.f32	s5, s14
d004141e:	eef0 9a61 	vmov.f32	s19, s3
d0041422:	eef0 6a46 	vmov.f32	s13, s12
d0041426:	eeb0 9a65 	vmov.f32	s18, s11
d004142a:	eeb0 5a40 	vmov.f32	s10, s0
d004142e:	eeb0 4a64 	vmov.f32	s8, s9
d0041432:	fefa 7a66 	vrintp.f32	s15, s13
d0041436:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004143a:	f240 13df 	movw	r3, #479	; 0x1df
d004143e:	ee17 6a90 	vmov	r6, s15
d0041442:	fefa 7a44 	vrintp.f32	s15, s8
d0041446:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004144a:	3e01      	subs	r6, #1
d004144c:	ee17 0a90 	vmov	r0, s15
d0041450:	429e      	cmp	r6, r3
d0041452:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d0041456:	bfa8      	it	ge
d0041458:	461e      	movge	r6, r3
d004145a:	4286      	cmp	r6, r0
d004145c:	f280 815c 	bge.w	d0041718 <fillTriangleDitherBayer+0x5a8>
d0041460:	f10b 0b01 	add.w	fp, fp, #1
d0041464:	9b02      	ldr	r3, [sp, #8]
d0041466:	ee36 6a20 	vadd.f32	s12, s12, s1
d004146a:	459b      	cmp	fp, r3
d004146c:	ee71 1a88 	vadd.f32	s3, s3, s16
d0041470:	ee37 7a28 	vadd.f32	s14, s14, s17
d0041474:	ee74 4aaa 	vadd.f32	s9, s9, s21
d0041478:	ee30 0a0a 	vadd.f32	s0, s0, s20
d004147c:	ee75 5a8f 	vadd.f32	s11, s11, s30
d0041480:	d021      	beq.n	d00414c6 <fillTriangleDitherBayer+0x356>
d0041482:	eeb4 6ae4 	vcmpe.f32	s12, s9
d0041486:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004148a:	dcc6      	bgt.n	d004141a <fillTriangleDitherBayer+0x2aa>
d004148c:	eef0 2a65 	vmov.f32	s5, s11
d0041490:	eef0 9a40 	vmov.f32	s19, s0
d0041494:	eef0 6a64 	vmov.f32	s13, s9
d0041498:	eeb0 9a47 	vmov.f32	s18, s14
d004149c:	eeb0 5a61 	vmov.f32	s10, s3
d00414a0:	eeb0 4a46 	vmov.f32	s8, s12
d00414a4:	e7c5      	b.n	d0041432 <fillTriangleDitherBayer+0x2c2>
d00414a6:	eddd 6a0a 	vldr	s13, [sp, #40]	; 0x28
d00414aa:	ed9d 5a0b 	vldr	s10, [sp, #44]	; 0x2c
d00414ae:	ed9d 6a0c 	vldr	s12, [sp, #48]	; 0x30
d00414b2:	ed9d fa0d 	vldr	s30, [sp, #52]	; 0x34
d00414b6:	eddf 7a16 	vldr	s15, [pc, #88]	; d0041510 <fillTriangleDitherBayer+0x3a0>
d00414ba:	eef4 fae7 	vcmpe.f32	s31, s15
d00414be:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00414c2:	f73f af74 	bgt.w	d00413ae <fillTriangleDitherBayer+0x23e>
d00414c6:	b00f      	add	sp, #60	; 0x3c
d00414c8:	ecbd 8b10 	vpop	{d8-d15}
d00414cc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00414d0:	eef4 3ae6 	vcmpe.f32	s7, s13
d00414d4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00414d8:	f340 80ec 	ble.w	d00416b4 <fillTriangleDitherBayer+0x544>
d00414dc:	eeb0 8a42 	vmov.f32	s16, s4
d00414e0:	eef0 0a43 	vmov.f32	s1, s6
d00414e4:	eef0 2a66 	vmov.f32	s5, s13
d00414e8:	eeb0 4a41 	vmov.f32	s8, s2
d00414ec:	eeb0 2a47 	vmov.f32	s4, s14
d00414f0:	eeb0 3a61 	vmov.f32	s6, s3
d00414f4:	eef0 6a45 	vmov.f32	s13, s10
d00414f8:	eeb0 1a46 	vmov.f32	s2, s12
d00414fc:	eeb0 7a48 	vmov.f32	s14, s16
d0041500:	eef0 1a60 	vmov.f32	s3, s1
d0041504:	eeb0 5a62 	vmov.f32	s10, s5
d0041508:	eeb0 6a44 	vmov.f32	s12, s8
d004150c:	e6d7      	b.n	d00412be <fillTriangleDitherBayer+0x14e>
d004150e:	bf00      	nop
d0041510:	38d1b717 	.word	0x38d1b717
d0041514:	33d6bf95 	.word	0x33d6bf95
d0041518:	00000000 	.word	0x00000000
d004151c:	477fff00 	.word	0x477fff00
d0041520:	ee04 2a10 	vmov	s8, r2
d0041524:	ee89 aa89 	vdiv.f32	s20, s19, s18
d0041528:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d004152c:	ee74 aac6 	vsub.f32	s21, s9, s12
d0041530:	ee76 fae3 	vsub.f32	s31, s13, s7
d0041534:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0041538:	ee70 9a61 	vsub.f32	s19, s0, s3
d004153c:	eef4 fae2 	vcmpe.f32	s31, s5
d0041540:	eeb0 4a67 	vmov.f32	s8, s15
d0041544:	ee35 eac7 	vsub.f32	s28, s11, s14
d0041548:	eebe 4ace 	vcvt.s32.f32	s8, s8, #4
d004154c:	ee6a 7a8a 	vmul.f32	s15, s21, s20
d0041550:	ee14 3a10 	vmov	r3, s8
d0041554:	ee2e ea0a 	vmul.f32	s28, s28, s20
d0041558:	f383 0204 	usat	r2, #4, r3
d004155c:	eeb0 ba67 	vmov.f32	s22, s15
d0041560:	ee69 7a8a 	vmul.f32	s15, s19, s20
d0041564:	9201      	str	r2, [sp, #4]
d0041566:	9a04      	ldr	r2, [sp, #16]
d0041568:	eef0 9a67 	vmov.f32	s19, s15
d004156c:	4592      	cmp	sl, r2
d004156e:	bf18      	it	ne
d0041570:	2b00      	cmpne	r3, #0
d0041572:	bfd4      	ite	le
d0041574:	2301      	movle	r3, #1
d0041576:	2300      	movgt	r3, #0
d0041578:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004157c:	9300      	str	r3, [sp, #0]
d004157e:	f73f aef6 	bgt.w	d004136e <fillTriangleDitherBayer+0x1fe>
d0041582:	ed1f fa1b 	vldr	s30, [pc, #-108]	; d0041518 <fillTriangleDitherBayer+0x3a8>
d0041586:	ed8d fa08 	vstr	s30, [sp, #32]
d004158a:	ed8d fa09 	vstr	s30, [sp, #36]	; 0x24
d004158e:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0041592:	f240 123f 	movw	r2, #319	; 0x13f
d0041596:	ee17 3a90 	vmov	r3, s15
d004159a:	edcd 7a06 	vstr	s15, [sp, #24]
d004159e:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d00415a2:	3b01      	subs	r3, #1
d00415a4:	ee17 ba90 	vmov	fp, s15
d00415a8:	4293      	cmp	r3, r2
d00415aa:	ea2b 7beb 	bic.w	fp, fp, fp, asr #31
d00415ae:	bfa8      	it	ge
d00415b0:	4613      	movge	r3, r2
d00415b2:	455b      	cmp	r3, fp
d00415b4:	f6ff af7f 	blt.w	d00414b6 <fillTriangleDitherBayer+0x346>
d00415b8:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00415bc:	3301      	adds	r3, #1
d00415be:	eeb0 aa46 	vmov.f32	s20, s12
d00415c2:	ed1f da2c 	vldr	s26, [pc, #-176]	; d0041514 <fillTriangleDitherBayer+0x3a4>
d00415c6:	eef0 aa46 	vmov.f32	s21, s12
d00415ca:	ed1f 3a2d 	vldr	s6, [pc, #-180]	; d0041518 <fillTriangleDitherBayer+0x3a8>
d00415ce:	ee37 4ac5 	vsub.f32	s8, s15, s10
d00415d2:	ee07 ba90 	vmov	s15, fp
d00415d6:	eef0 ca61 	vmov.f32	s25, s3
d00415da:	ed1f 2a30 	vldr	s4, [pc, #-192]	; d004151c <fillTriangleDitherBayer+0x3ac>
d00415de:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00415e2:	9302      	str	r3, [sp, #8]
d00415e4:	eeb0 ca47 	vmov.f32	s24, s14
d00415e8:	edcd 6a0a 	vstr	s13, [sp, #40]	; 0x28
d00415ec:	eef0 da4b 	vmov.f32	s27, s22
d00415f0:	ed8d 5a0b 	vstr	s10, [sp, #44]	; 0x2c
d00415f4:	ee77 7a84 	vadd.f32	s15, s15, s8
d00415f8:	ed8d 6a0c 	vstr	s12, [sp, #48]	; 0x30
d00415fc:	eef0 ba61 	vmov.f32	s23, s3
d0041600:	ed8d fa0d 	vstr	s30, [sp, #52]	; 0x34
d0041604:	eef0 ea69 	vmov.f32	s29, s19
d0041608:	eea7 aa8b 	vfma.f32	s20, s15, s22
d004160c:	eeb0 ba47 	vmov.f32	s22, s14
d0041610:	eee0 aaa7 	vfma.f32	s21, s1, s15
d0041614:	eee8 ca27 	vfma.f32	s25, s16, s15
d0041618:	eea8 caa7 	vfma.f32	s24, s17, s15
d004161c:	eee7 baa9 	vfma.f32	s23, s15, s19
d0041620:	eea7 ba8e 	vfma.f32	s22, s15, s28
d0041624:	e034      	b.n	d0041690 <fillTriangleDitherBayer+0x520>
d0041626:	eef0 2a4c 	vmov.f32	s5, s24
d004162a:	eeb0 4a6c 	vmov.f32	s8, s25
d004162e:	eef0 7a6a 	vmov.f32	s15, s21
d0041632:	eeb0 5a4b 	vmov.f32	s10, s22
d0041636:	eef0 6a6b 	vmov.f32	s13, s23
d004163a:	eeb0 6a4a 	vmov.f32	s12, s20
d004163e:	feba 1a67 	vrintp.f32	s2, s15
d0041642:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d0041646:	feba 9a46 	vrintp.f32	s18, s12
d004164a:	f240 13df 	movw	r3, #479	; 0x1df
d004164e:	ee11 6a10 	vmov	r6, s2
d0041652:	eebd 1ac9 	vcvt.s32.f32	s2, s18
d0041656:	3e01      	subs	r6, #1
d0041658:	ee11 0a10 	vmov	r0, s2
d004165c:	429e      	cmp	r6, r3
d004165e:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d0041662:	bfa8      	it	ge
d0041664:	461e      	movge	r6, r3
d0041666:	4286      	cmp	r6, r0
d0041668:	f280 813e 	bge.w	d00418e8 <fillTriangleDitherBayer+0x778>
d004166c:	f10b 0b01 	add.w	fp, fp, #1
d0041670:	9b02      	ldr	r3, [sp, #8]
d0041672:	ee7a aaa0 	vadd.f32	s21, s21, s1
d0041676:	459b      	cmp	fp, r3
d0041678:	ee7c ca88 	vadd.f32	s25, s25, s16
d004167c:	ee3c ca28 	vadd.f32	s24, s24, s17
d0041680:	ee3a aa2d 	vadd.f32	s20, s20, s27
d0041684:	ee7b baae 	vadd.f32	s23, s23, s29
d0041688:	ee3b ba0e 	vadd.f32	s22, s22, s28
d004168c:	f43f af0b 	beq.w	d00414a6 <fillTriangleDitherBayer+0x336>
d0041690:	eef4 aaca 	vcmpe.f32	s21, s20
d0041694:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041698:	dcc5      	bgt.n	d0041626 <fillTriangleDitherBayer+0x4b6>
d004169a:	eef0 2a4b 	vmov.f32	s5, s22
d004169e:	eeb0 4a6b 	vmov.f32	s8, s23
d00416a2:	eef0 7a4a 	vmov.f32	s15, s20
d00416a6:	eeb0 5a4c 	vmov.f32	s10, s24
d00416aa:	eef0 6a6c 	vmov.f32	s13, s25
d00416ae:	eeb0 6a6a 	vmov.f32	s12, s21
d00416b2:	e7c4      	b.n	d004163e <fillTriangleDitherBayer+0x4ce>
d00416b4:	eeb0 8a47 	vmov.f32	s16, s14
d00416b8:	eef0 0a61 	vmov.f32	s1, s3
d00416bc:	eef0 2a45 	vmov.f32	s5, s10
d00416c0:	eeb0 4a46 	vmov.f32	s8, s12
d00416c4:	eeb0 7a65 	vmov.f32	s14, s11
d00416c8:	eef0 1a40 	vmov.f32	s3, s0
d00416cc:	eeb0 5a63 	vmov.f32	s10, s7
d00416d0:	eeb0 6a64 	vmov.f32	s12, s9
d00416d4:	eef0 5a48 	vmov.f32	s11, s16
d00416d8:	eeb0 0a60 	vmov.f32	s0, s1
d00416dc:	eef0 3a62 	vmov.f32	s7, s5
d00416e0:	eef0 4a44 	vmov.f32	s9, s8
d00416e4:	e5ce      	b.n	d0041284 <fillTriangleDitherBayer+0x114>
d00416e6:	eeb0 8a47 	vmov.f32	s16, s14
d00416ea:	eef0 0a61 	vmov.f32	s1, s3
d00416ee:	eef0 2a45 	vmov.f32	s5, s10
d00416f2:	eeb0 4a46 	vmov.f32	s8, s12
d00416f6:	eeb0 7a42 	vmov.f32	s14, s4
d00416fa:	eef0 1a43 	vmov.f32	s3, s6
d00416fe:	eeb0 5a66 	vmov.f32	s10, s13
d0041702:	eeb0 6a41 	vmov.f32	s12, s2
d0041706:	eeb0 2a48 	vmov.f32	s4, s16
d004170a:	eeb0 3a60 	vmov.f32	s6, s1
d004170e:	eef0 6a62 	vmov.f32	s13, s5
d0041712:	eeb0 1a44 	vmov.f32	s2, s8
d0041716:	e5b5      	b.n	d0041284 <fillTriangleDitherBayer+0x114>
d0041718:	ee76 6ac4 	vsub.f32	s13, s13, s8
d004171c:	eef4 6ac1 	vcmpe.f32	s13, s2
d0041720:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041724:	f340 81d8 	ble.w	d0041ad8 <fillTriangleDitherBayer+0x968>
d0041728:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d004172c:	ee79 9ac5 	vsub.f32	s19, s19, s10
d0041730:	ee72 2ac9 	vsub.f32	s5, s5, s18
d0041734:	ee87 baa6 	vdiv.f32	s22, s15, s13
d0041738:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004173c:	ee37 4ac4 	vsub.f32	s8, s15, s8
d0041740:	ee07 0a90 	vmov	s15, r0
d0041744:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041748:	ee77 7a84 	vadd.f32	s15, s15, s8
d004174c:	ee69 9a8b 	vmul.f32	s19, s19, s22
d0041750:	ee22 ba8b 	vmul.f32	s22, s5, s22
d0041754:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0041758:	eea7 9a8b 	vfma.f32	s18, s15, s22
d004175c:	ebcb 190b 	rsb	r9, fp, fp, lsl #4
d0041760:	49d6      	ldr	r1, [pc, #856]	; (d0041abc <fillTriangleDitherBayer+0x94c>)
d0041762:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0041766:	4cd6      	ldr	r4, [pc, #856]	; (d0041ac0 <fillTriangleDitherBayer+0x950>)
d0041768:	eb00 1249 	add.w	r2, r0, r9, lsl #5
d004176c:	6809      	ldr	r1, [r1, #0]
d004176e:	eb0b 1383 	add.w	r3, fp, r3, lsl #6
d0041772:	f8cd b018 	str.w	fp, [sp, #24]
d0041776:	eb04 0942 	add.w	r9, r4, r2, lsl #1
d004177a:	f00b 0203 	and.w	r2, fp, #3
d004177e:	eb01 0c03 	add.w	ip, r1, r3
d0041782:	eef6 2a00 	vmov.f32	s5, #96	; 0x3f000000  0.5
d0041786:	4613      	mov	r3, r2
d0041788:	4ace      	ldr	r2, [pc, #824]	; (d0041ac4 <fillTriangleDitherBayer+0x954>)
d004178a:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d004178e:	469b      	mov	fp, r3
d0041790:	e010      	b.n	d00417b4 <fillTriangleDitherBayer+0x644>
d0041792:	ee07 3a90 	vmov	s15, r3
d0041796:	4418      	add	r0, r3
d0041798:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d004179c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00417a0:	42b0      	cmp	r0, r6
d00417a2:	eb09 0943 	add.w	r9, r9, r3, lsl #1
d00417a6:	eb0c 1c82 	add.w	ip, ip, r2, lsl #6
d00417aa:	eea7 5aa9 	vfma.f32	s10, s15, s19
d00417ae:	eea7 9a8b 	vfma.f32	s18, s15, s22
d00417b2:	dc72      	bgt.n	d004189a <fillTriangleDitherBayer+0x72a>
d00417b4:	eba6 0800 	sub.w	r8, r6, r0
d00417b8:	eeb4 5ac2 	vcmpe.f32	s10, s4
d00417bc:	f108 0301 	add.w	r3, r8, #1
d00417c0:	2b30      	cmp	r3, #48	; 0x30
d00417c2:	bfa8      	it	ge
d00417c4:	2330      	movge	r3, #48	; 0x30
d00417c6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00417ca:	d9e2      	bls.n	d0041792 <fillTriangleDitherBayer+0x622>
d00417cc:	f1b8 0f00 	cmp.w	r8, #0
d00417d0:	eec9 6a05 	vdiv.f32	s13, s18, s10
d00417d4:	dd64      	ble.n	d00418a0 <fillTriangleDitherBayer+0x730>
d00417d6:	1e5a      	subs	r2, r3, #1
d00417d8:	ee07 2a90 	vmov	s15, r2
d00417dc:	eeb0 4a45 	vmov.f32	s8, s10
d00417e0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00417e4:	eea7 4aa9 	vfma.f32	s8, s15, s19
d00417e8:	eeb4 4ac2 	vcmpe.f32	s8, s4
d00417ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00417f0:	dd57      	ble.n	d00418a2 <fillTriangleDitherBayer+0x732>
d00417f2:	eeb0 ca49 	vmov.f32	s24, s18
d00417f6:	9a00      	ldr	r2, [sp, #0]
d00417f8:	eea7 ca8b 	vfma.f32	s24, s15, s22
d00417fc:	eecc ba04 	vdiv.f32	s23, s24, s8
d0041800:	ee7b bae6 	vsub.f32	s23, s23, s13
d0041804:	ee8b 4aa7 	vdiv.f32	s8, s23, s15
d0041808:	2a00      	cmp	r2, #0
d004180a:	d14f      	bne.n	d00418ac <fillTriangleDitherBayer+0x73c>
d004180c:	f8cd 800c 	str.w	r8, [sp, #12]
d0041810:	f1a9 0702 	sub.w	r7, r9, #2
d0041814:	9605      	str	r6, [sp, #20]
d0041816:	f8dd 8004 	ldr.w	r8, [sp, #4]
d004181a:	9e04      	ldr	r6, [sp, #16]
d004181c:	fec6 7a83 	vmaxnm.f32	s15, s13, s6
d0041820:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d0041824:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0041828:	f837 ef02 	ldrh.w	lr, [r7, #2]!
d004182c:	1885      	adds	r5, r0, r2
d004182e:	eb02 0482 	add.w	r4, r2, r2, lsl #2
d0041832:	ee76 6a84 	vadd.f32	s13, s13, s8
d0041836:	3201      	adds	r2, #1
d0041838:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004183c:	f005 0503 	and.w	r5, r5, #3
d0041840:	01a4      	lsls	r4, r4, #6
d0041842:	ee17 1a90 	vmov	r1, s15
d0041846:	b289      	uxth	r1, r1
d0041848:	458e      	cmp	lr, r1
d004184a:	d908      	bls.n	d004185e <fillTriangleDitherBayer+0x6ee>
d004184c:	f81b 5005 	ldrb.w	r5, [fp, r5]
d0041850:	8039      	strh	r1, [r7, #0]
d0041852:	45a8      	cmp	r8, r5
d0041854:	bfd4      	ite	le
d0041856:	4655      	movle	r5, sl
d0041858:	4635      	movgt	r5, r6
d004185a:	f80c 5004 	strb.w	r5, [ip, r4]
d004185e:	4293      	cmp	r3, r2
d0041860:	dcdc      	bgt.n	d004181c <fillTriangleDitherBayer+0x6ac>
d0041862:	f8dd 800c 	ldr.w	r8, [sp, #12]
d0041866:	9e05      	ldr	r6, [sp, #20]
d0041868:	f1b8 0f00 	cmp.w	r8, #0
d004186c:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0041870:	ea4f 0143 	mov.w	r1, r3, lsl #1
d0041874:	ea4f 1282 	mov.w	r2, r2, lsl #6
d0041878:	bfbc      	itt	lt
d004187a:	2102      	movlt	r1, #2
d004187c:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d0041880:	4489      	add	r9, r1
d0041882:	4494      	add	ip, r2
d0041884:	ee07 3a90 	vmov	s15, r3
d0041888:	4418      	add	r0, r3
d004188a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004188e:	42b0      	cmp	r0, r6
d0041890:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0041894:	eea7 9a8b 	vfma.f32	s18, s15, s22
d0041898:	dd8c      	ble.n	d00417b4 <fillTriangleDitherBayer+0x644>
d004189a:	f8dd b018 	ldr.w	fp, [sp, #24]
d004189e:	e5df      	b.n	d0041460 <fillTriangleDitherBayer+0x2f0>
d00418a0:	d1f0      	bne.n	d0041884 <fillTriangleDitherBayer+0x714>
d00418a2:	9a00      	ldr	r2, [sp, #0]
d00418a4:	eeb0 4a43 	vmov.f32	s8, s6
d00418a8:	2a00      	cmp	r2, #0
d00418aa:	d0af      	beq.n	d004180c <fillTriangleDitherBayer+0x69c>
d00418ac:	f1a9 0502 	sub.w	r5, r9, #2
d00418b0:	2200      	movs	r2, #0
d00418b2:	fec6 7a83 	vmaxnm.f32	s15, s13, s6
d00418b6:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d00418ba:	ee77 7aa2 	vadd.f32	s15, s15, s5
d00418be:	eb02 0182 	add.w	r1, r2, r2, lsl #2
d00418c2:	f835 7f02 	ldrh.w	r7, [r5, #2]!
d00418c6:	ee76 6a84 	vadd.f32	s13, s13, s8
d00418ca:	018c      	lsls	r4, r1, #6
d00418cc:	3201      	adds	r2, #1
d00418ce:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00418d2:	ee17 1a90 	vmov	r1, s15
d00418d6:	b289      	uxth	r1, r1
d00418d8:	428f      	cmp	r7, r1
d00418da:	d902      	bls.n	d00418e2 <fillTriangleDitherBayer+0x772>
d00418dc:	8029      	strh	r1, [r5, #0]
d00418de:	f80c a004 	strb.w	sl, [ip, r4]
d00418e2:	4293      	cmp	r3, r2
d00418e4:	dce5      	bgt.n	d00418b2 <fillTriangleDitherBayer+0x742>
d00418e6:	e7bf      	b.n	d0041868 <fillTriangleDitherBayer+0x6f8>
d00418e8:	ee77 7ac6 	vsub.f32	s15, s15, s12
d00418ec:	ed9f 1a76 	vldr	s2, [pc, #472]	; d0041ac8 <fillTriangleDitherBayer+0x958>
d00418f0:	eef4 7ac1 	vcmpe.f32	s15, s2
d00418f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00418f8:	f340 80f3 	ble.w	d0041ae2 <fillTriangleDitherBayer+0x972>
d00418fc:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d0041900:	ee34 4a66 	vsub.f32	s8, s8, s13
d0041904:	ee72 2ac5 	vsub.f32	s5, s5, s10
d0041908:	ee89 1a27 	vdiv.f32	s2, s18, s15
d004190c:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0041910:	ee37 6ac6 	vsub.f32	s12, s15, s12
d0041914:	ee07 0a90 	vmov	s15, r0
d0041918:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004191c:	ee77 7a86 	vadd.f32	s15, s15, s12
d0041920:	ee24 4a01 	vmul.f32	s8, s8, s2
d0041924:	ee62 2a81 	vmul.f32	s5, s5, s2
d0041928:	eee7 6a84 	vfma.f32	s13, s15, s8
d004192c:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0041930:	ebcb 190b 	rsb	r9, fp, fp, lsl #4
d0041934:	4961      	ldr	r1, [pc, #388]	; (d0041abc <fillTriangleDitherBayer+0x94c>)
d0041936:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d004193a:	4c61      	ldr	r4, [pc, #388]	; (d0041ac0 <fillTriangleDitherBayer+0x950>)
d004193c:	eb00 1249 	add.w	r2, r0, r9, lsl #5
d0041940:	6809      	ldr	r1, [r1, #0]
d0041942:	eb0b 1383 	add.w	r3, fp, r3, lsl #6
d0041946:	f8cd b01c 	str.w	fp, [sp, #28]
d004194a:	eb04 0942 	add.w	r9, r4, r2, lsl #1
d004194e:	f00b 0203 	and.w	r2, fp, #3
d0041952:	eb01 0c03 	add.w	ip, r1, r3
d0041956:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d004195a:	4613      	mov	r3, r2
d004195c:	4a59      	ldr	r2, [pc, #356]	; (d0041ac4 <fillTriangleDitherBayer+0x954>)
d004195e:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0041962:	469b      	mov	fp, r3
d0041964:	e010      	b.n	d0041988 <fillTriangleDitherBayer+0x818>
d0041966:	ee07 2a90 	vmov	s15, r2
d004196a:	4410      	add	r0, r2
d004196c:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0041970:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041974:	42b0      	cmp	r0, r6
d0041976:	eb09 0942 	add.w	r9, r9, r2, lsl #1
d004197a:	eb0c 1c83 	add.w	ip, ip, r3, lsl #6
d004197e:	eee7 6a84 	vfma.f32	s13, s15, s8
d0041982:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0041986:	dc72      	bgt.n	d0041a6e <fillTriangleDitherBayer+0x8fe>
d0041988:	eba6 0800 	sub.w	r8, r6, r0
d004198c:	eef4 6acd 	vcmpe.f32	s13, s26
d0041990:	f108 0201 	add.w	r2, r8, #1
d0041994:	2a30      	cmp	r2, #48	; 0x30
d0041996:	bfa8      	it	ge
d0041998:	2230      	movge	r2, #48	; 0x30
d004199a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004199e:	d9e2      	bls.n	d0041966 <fillTriangleDitherBayer+0x7f6>
d00419a0:	f1b8 0f00 	cmp.w	r8, #0
d00419a4:	ee85 1a26 	vdiv.f32	s2, s10, s13
d00419a8:	dd64      	ble.n	d0041a74 <fillTriangleDitherBayer+0x904>
d00419aa:	1e53      	subs	r3, r2, #1
d00419ac:	ee07 3a90 	vmov	s15, r3
d00419b0:	eeb0 9a66 	vmov.f32	s18, s13
d00419b4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00419b8:	eea7 9a84 	vfma.f32	s18, s15, s8
d00419bc:	eeb4 9acd 	vcmpe.f32	s18, s26
d00419c0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00419c4:	dd57      	ble.n	d0041a76 <fillTriangleDitherBayer+0x906>
d00419c6:	eeb0 fa45 	vmov.f32	s30, s10
d00419ca:	9900      	ldr	r1, [sp, #0]
d00419cc:	eea7 faa2 	vfma.f32	s30, s15, s5
d00419d0:	eecf 9a09 	vdiv.f32	s19, s30, s18
d00419d4:	ee79 9ac1 	vsub.f32	s19, s19, s2
d00419d8:	ee89 9aa7 	vdiv.f32	s18, s19, s15
d00419dc:	2900      	cmp	r1, #0
d00419de:	d14f      	bne.n	d0041a80 <fillTriangleDitherBayer+0x910>
d00419e0:	9603      	str	r6, [sp, #12]
d00419e2:	f1a9 0702 	sub.w	r7, r9, #2
d00419e6:	f8cd 8014 	str.w	r8, [sp, #20]
d00419ea:	9e04      	ldr	r6, [sp, #16]
d00419ec:	f8dd 8004 	ldr.w	r8, [sp, #4]
d00419f0:	fec1 7a03 	vmaxnm.f32	s15, s2, s6
d00419f4:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d00419f8:	ee77 7a86 	vadd.f32	s15, s15, s12
d00419fc:	f837 ef02 	ldrh.w	lr, [r7, #2]!
d0041a00:	1845      	adds	r5, r0, r1
d0041a02:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d0041a06:	ee31 1a09 	vadd.f32	s2, s2, s18
d0041a0a:	3101      	adds	r1, #1
d0041a0c:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0041a10:	f005 0503 	and.w	r5, r5, #3
d0041a14:	01a4      	lsls	r4, r4, #6
d0041a16:	ee17 3a90 	vmov	r3, s15
d0041a1a:	b29b      	uxth	r3, r3
d0041a1c:	459e      	cmp	lr, r3
d0041a1e:	d908      	bls.n	d0041a32 <fillTriangleDitherBayer+0x8c2>
d0041a20:	f81b 5005 	ldrb.w	r5, [fp, r5]
d0041a24:	803b      	strh	r3, [r7, #0]
d0041a26:	45a8      	cmp	r8, r5
d0041a28:	bfcc      	ite	gt
d0041a2a:	4635      	movgt	r5, r6
d0041a2c:	4655      	movle	r5, sl
d0041a2e:	f80c 5004 	strb.w	r5, [ip, r4]
d0041a32:	428a      	cmp	r2, r1
d0041a34:	dcdc      	bgt.n	d00419f0 <fillTriangleDitherBayer+0x880>
d0041a36:	9e03      	ldr	r6, [sp, #12]
d0041a38:	f8dd 8014 	ldr.w	r8, [sp, #20]
d0041a3c:	f1b8 0f00 	cmp.w	r8, #0
d0041a40:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0041a44:	ea4f 0142 	mov.w	r1, r2, lsl #1
d0041a48:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0041a4c:	bfbc      	itt	lt
d0041a4e:	2102      	movlt	r1, #2
d0041a50:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0041a54:	4489      	add	r9, r1
d0041a56:	449c      	add	ip, r3
d0041a58:	ee07 2a90 	vmov	s15, r2
d0041a5c:	4410      	add	r0, r2
d0041a5e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041a62:	42b0      	cmp	r0, r6
d0041a64:	eee7 6a84 	vfma.f32	s13, s15, s8
d0041a68:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0041a6c:	dd8c      	ble.n	d0041988 <fillTriangleDitherBayer+0x818>
d0041a6e:	f8dd b01c 	ldr.w	fp, [sp, #28]
d0041a72:	e5fb      	b.n	d004166c <fillTriangleDitherBayer+0x4fc>
d0041a74:	d1f0      	bne.n	d0041a58 <fillTriangleDitherBayer+0x8e8>
d0041a76:	9900      	ldr	r1, [sp, #0]
d0041a78:	eeb0 9a43 	vmov.f32	s18, s6
d0041a7c:	2900      	cmp	r1, #0
d0041a7e:	d0af      	beq.n	d00419e0 <fillTriangleDitherBayer+0x870>
d0041a80:	f1a9 0502 	sub.w	r5, r9, #2
d0041a84:	2100      	movs	r1, #0
d0041a86:	fec1 7a03 	vmaxnm.f32	s15, s2, s6
d0041a8a:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d0041a8e:	ee77 7a86 	vadd.f32	s15, s15, s12
d0041a92:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0041a96:	f835 7f02 	ldrh.w	r7, [r5, #2]!
d0041a9a:	ee31 1a09 	vadd.f32	s2, s2, s18
d0041a9e:	019c      	lsls	r4, r3, #6
d0041aa0:	3101      	adds	r1, #1
d0041aa2:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0041aa6:	ee17 3a90 	vmov	r3, s15
d0041aaa:	b29b      	uxth	r3, r3
d0041aac:	429f      	cmp	r7, r3
d0041aae:	d902      	bls.n	d0041ab6 <fillTriangleDitherBayer+0x946>
d0041ab0:	802b      	strh	r3, [r5, #0]
d0041ab2:	f80c a004 	strb.w	sl, [ip, r4]
d0041ab6:	428a      	cmp	r2, r1
d0041ab8:	dce5      	bgt.n	d0041a86 <fillTriangleDitherBayer+0x916>
d0041aba:	e7bf      	b.n	d0041a3c <fillTriangleDitherBayer+0x8cc>
d0041abc:	d012cd44 	.word	0xd012cd44
d0041ac0:	d0047660 	.word	0xd0047660
d0041ac4:	d0046d50 	.word	0xd0046d50
d0041ac8:	38d1b717 	.word	0x38d1b717
d0041acc:	f04f 0a10 	mov.w	sl, #16
d0041ad0:	2310      	movs	r3, #16
d0041ad2:	9304      	str	r3, [sp, #16]
d0041ad4:	f7ff bbb2 	b.w	d004123c <fillTriangleDitherBayer+0xcc>
d0041ad8:	eeb0 ba43 	vmov.f32	s22, s6
d0041adc:	eef0 9a43 	vmov.f32	s19, s6
d0041ae0:	e63c      	b.n	d004175c <fillTriangleDitherBayer+0x5ec>
d0041ae2:	eef0 2a43 	vmov.f32	s5, s6
d0041ae6:	eeb0 4a43 	vmov.f32	s8, s6
d0041aea:	e721      	b.n	d0041930 <fillTriangleDitherBayer+0x7c0>

d0041aec <fillTriangleDitherBayer2Mode>:
d0041aec:	eddf 7aca 	vldr	s15, [pc, #808]	; d0041e18 <fillTriangleDitherBayer2Mode+0x32c>
d0041af0:	eef4 0ae7 	vcmpe.f32	s1, s15
d0041af4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041af8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041afc:	eeb4 1ae7 	vcmpe.f32	s2, s15
d0041b00:	ed2d 8b10 	vpush	{d8-d15}
d0041b04:	b08d      	sub	sp, #52	; 0x34
d0041b06:	9303      	str	r3, [sp, #12]
d0041b08:	bf94      	ite	ls
d0041b0a:	2301      	movls	r3, #1
d0041b0c:	2300      	movhi	r3, #0
d0041b0e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041b12:	9202      	str	r2, [sp, #8]
d0041b14:	f89d b0ac 	ldrb.w	fp, [sp, #172]	; 0xac
d0041b18:	bf98      	it	ls
d0041b1a:	f043 0301 	orrls.w	r3, r3, #1
d0041b1e:	f8bd 20a8 	ldrh.w	r2, [sp, #168]	; 0xa8
d0041b22:	e9cd 0100 	strd	r0, r1, [sp]
d0041b26:	f8bd 00a0 	ldrh.w	r0, [sp, #160]	; 0xa0
d0041b2a:	f8bd 10a4 	ldrh.w	r1, [sp, #164]	; 0xa4
d0041b2e:	2b00      	cmp	r3, #0
d0041b30:	f040 814d 	bne.w	d0041dce <fillTriangleDitherBayer2Mode+0x2e2>
d0041b34:	eeb4 0a67 	vcmp.f32	s0, s15
d0041b38:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041b3c:	f240 8147 	bls.w	d0041dce <fillTriangleDitherBayer2Mode+0x2e2>
d0041b40:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0041b44:	ee06 1a90 	vmov	s13, r1
d0041b48:	ee07 0a10 	vmov	s14, r0
d0041b4c:	eef8 5a66 	vcvt.f32.u32	s11, s13
d0041b50:	ee87 3a80 	vdiv.f32	s6, s15, s0
d0041b54:	ee87 2a81 	vdiv.f32	s4, s15, s2
d0041b58:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d0041b5c:	ee07 2a90 	vmov	s15, r2
d0041b60:	eeb8 4a67 	vcvt.f32.u32	s8, s15
d0041b64:	eddd 7a01 	vldr	s15, [sp, #4]
d0041b68:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0041b6c:	eeb8 5ae7 	vcvt.f32.s32	s10, s15
d0041b70:	eddd 7a03 	vldr	s15, [sp, #12]
d0041b74:	eef8 3ae7 	vcvt.f32.s32	s7, s15
d0041b78:	eddd 7a00 	vldr	s15, [sp]
d0041b7c:	ee27 7a03 	vmul.f32	s14, s14, s6
d0041b80:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d0041b84:	eddd 7a02 	vldr	s15, [sp, #8]
d0041b88:	eeb4 5ae3 	vcmpe.f32	s10, s7
d0041b8c:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d0041b90:	eddd 7a26 	vldr	s15, [sp, #152]	; 0x98
d0041b94:	ee24 4a02 	vmul.f32	s8, s8, s4
d0041b98:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041b9c:	eef8 2ae7 	vcvt.f32.s32	s5, s15
d0041ba0:	eddd 7a27 	vldr	s15, [sp, #156]	; 0x9c
d0041ba4:	ee65 5a80 	vmul.f32	s11, s11, s0
d0041ba8:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d0041bac:	f300 8114 	bgt.w	d0041dd8 <fillTriangleDitherBayer2Mode+0x2ec>
d0041bb0:	eeb4 5ae6 	vcmpe.f32	s10, s13
d0041bb4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041bb8:	f300 8201 	bgt.w	d0041fbe <fillTriangleDitherBayer2Mode+0x4d2>
d0041bbc:	eef4 3ae6 	vcmpe.f32	s7, s13
d0041bc0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041bc4:	f300 8219 	bgt.w	d0041ffa <fillTriangleDitherBayer2Mode+0x50e>
d0041bc8:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0041bcc:	ee35 1a27 	vadd.f32	s2, s10, s15
d0041bd0:	ee76 7aa7 	vadd.f32	s15, s13, s15
d0041bd4:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d0041bd8:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041bdc:	ee11 3a10 	vmov	r3, s2
d0041be0:	ee17 2a90 	vmov	r2, s15
d0041be4:	4293      	cmp	r3, r2
d0041be6:	f000 80f2 	beq.w	d0041dce <fillTriangleDitherBayer2Mode+0x2e2>
d0041bea:	ee76 8ac5 	vsub.f32	s17, s13, s10
d0041bee:	ed9f 1a8a 	vldr	s2, [pc, #552]	; d0041e18 <fillTriangleDitherBayer2Mode+0x32c>
d0041bf2:	eef4 8ac1 	vcmpe.f32	s17, s2
d0041bf6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041bfa:	f240 80e8 	bls.w	d0041dce <fillTriangleDitherBayer2Mode+0x2e2>
d0041bfe:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0041c02:	ee33 9ac5 	vsub.f32	s18, s7, s10
d0041c06:	ee72 0ac6 	vsub.f32	s1, s5, s12
d0041c0a:	eec9 7aa8 	vdiv.f32	s15, s19, s17
d0041c0e:	eeb4 9ac1 	vcmpe.f32	s18, s2
d0041c12:	ee32 8a43 	vsub.f32	s16, s4, s6
d0041c16:	ee74 8a47 	vsub.f32	s17, s8, s14
d0041c1a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041c1e:	ee60 0aa7 	vmul.f32	s1, s1, s15
d0041c22:	ee28 8a27 	vmul.f32	s16, s16, s15
d0041c26:	ee68 8aa7 	vmul.f32	s17, s17, s15
d0041c2a:	f300 80ff 	bgt.w	d0041e2c <fillTriangleDitherBayer2Mode+0x340>
d0041c2e:	eef1 7a04 	vmov.f32	s15, #20	; 0x40a00000  5.0
d0041c32:	ed9f ba7c 	vldr	s22, [pc, #496]	; d0041e24 <fillTriangleDitherBayer2Mode+0x338>
d0041c36:	eddf 9a79 	vldr	s19, [pc, #484]	; d0041e1c <fillTriangleDitherBayer2Mode+0x330>
d0041c3a:	ee76 fae3 	vsub.f32	s31, s13, s7
d0041c3e:	fec1 1a8b 	vmaxnm.f32	s3, s3, s22
d0041c42:	fec1 7ae7 	vminnm.f32	s15, s3, s15
d0041c46:	ee67 7aa9 	vmul.f32	s15, s15, s19
d0041c4a:	eef4 fac1 	vcmpe.f32	s31, s2
d0041c4e:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041c52:	ee17 3a90 	vmov	r3, s15
d0041c56:	edcd 7a00 	vstr	s15, [sp]
d0041c5a:	2b10      	cmp	r3, #16
d0041c5c:	bfa8      	it	ge
d0041c5e:	2310      	movge	r3, #16
d0041c60:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041c64:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0041c68:	9302      	str	r3, [sp, #8]
d0041c6a:	f340 80b0 	ble.w	d0041dce <fillTriangleDitherBayer2Mode+0x2e2>
d0041c6e:	eef0 ea4b 	vmov.f32	s29, s22
d0041c72:	eef0 ba4b 	vmov.f32	s23, s22
d0041c76:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d0041c7a:	eddf 1a67 	vldr	s3, [pc, #412]	; d0041e18 <fillTriangleDitherBayer2Mode+0x32c>
d0041c7e:	ee72 2ae4 	vsub.f32	s5, s5, s9
d0041c82:	ee32 2a40 	vsub.f32	s4, s4, s0
d0041c86:	eec1 7a2f 	vdiv.f32	s15, s2, s31
d0041c8a:	eeb4 9ae1 	vcmpe.f32	s18, s3
d0041c8e:	ee34 4a65 	vsub.f32	s8, s8, s11
d0041c92:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041c96:	ee62 2aa7 	vmul.f32	s5, s5, s15
d0041c9a:	ee24 fa27 	vmul.f32	s30, s8, s15
d0041c9e:	edcd 2a06 	vstr	s5, [sp, #24]
d0041ca2:	ee62 2a27 	vmul.f32	s5, s4, s15
d0041ca6:	edcd 2a05 	vstr	s5, [sp, #20]
d0041caa:	f300 80f7 	bgt.w	d0041e9c <fillTriangleDitherBayer2Mode+0x3b0>
d0041cae:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0041cb2:	edcd 7a03 	vstr	s15, [sp, #12]
d0041cb6:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0041cba:	f240 123f 	movw	r2, #319	; 0x13f
d0041cbe:	9903      	ldr	r1, [sp, #12]
d0041cc0:	ee17 3a90 	vmov	r3, s15
d0041cc4:	ea21 78e1 	bic.w	r8, r1, r1, asr #31
d0041cc8:	3b01      	subs	r3, #1
d0041cca:	4293      	cmp	r3, r2
d0041ccc:	bfa8      	it	ge
d0041cce:	4613      	movge	r3, r2
d0041cd0:	4543      	cmp	r3, r8
d0041cd2:	db7c      	blt.n	d0041dce <fillTriangleDitherBayer2Mode+0x2e2>
d0041cd4:	ee07 8a90 	vmov	s15, r8
d0041cd8:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0041cdc:	3301      	adds	r3, #1
d0041cde:	ed9d ba06 	vldr	s22, [sp, #24]
d0041ce2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041ce6:	eddd aa05 	vldr	s21, [sp, #20]
d0041cea:	ed9f 9a4b 	vldr	s18, [pc, #300]	; d0041e18 <fillTriangleDitherBayer2Mode+0x32c>
d0041cee:	ed9f 1a4c 	vldr	s2, [pc, #304]	; d0041e20 <fillTriangleDitherBayer2Mode+0x334>
d0041cf2:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0041cf6:	ed9f 4a4b 	vldr	s8, [pc, #300]	; d0041e24 <fillTriangleDitherBayer2Mode+0x338>
d0041cfa:	eddf 1a4b 	vldr	s3, [pc, #300]	; d0041e28 <fillTriangleDitherBayer2Mode+0x33c>
d0041cfe:	9301      	str	r3, [sp, #4]
d0041d00:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0041d04:	ee77 3ae3 	vsub.f32	s7, s15, s7
d0041d08:	eea0 6a85 	vfma.f32	s12, s1, s10
d0041d0c:	eea8 3a05 	vfma.f32	s6, s16, s10
d0041d10:	eea8 7a85 	vfma.f32	s14, s17, s10
d0041d14:	eeeb 4a23 	vfma.f32	s9, s22, s7
d0041d18:	eeaa 0aa3 	vfma.f32	s0, s21, s7
d0041d1c:	eeef 5a23 	vfma.f32	s11, s30, s7
d0041d20:	e033      	b.n	d0041d8a <fillTriangleDitherBayer2Mode+0x29e>
d0041d22:	eeb0 2a47 	vmov.f32	s4, s14
d0041d26:	eef0 9a43 	vmov.f32	s19, s6
d0041d2a:	eef0 6a46 	vmov.f32	s13, s12
d0041d2e:	eef0 3a65 	vmov.f32	s7, s11
d0041d32:	eeb0 5a40 	vmov.f32	s10, s0
d0041d36:	eef0 2a64 	vmov.f32	s5, s9
d0041d3a:	fefa 7a66 	vrintp.f32	s15, s13
d0041d3e:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041d42:	f240 13df 	movw	r3, #479	; 0x1df
d0041d46:	ee17 4a90 	vmov	r4, s15
d0041d4a:	fefa 7a62 	vrintp.f32	s15, s5
d0041d4e:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041d52:	3c01      	subs	r4, #1
d0041d54:	ee17 1a90 	vmov	r1, s15
d0041d58:	429c      	cmp	r4, r3
d0041d5a:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d0041d5e:	bfa8      	it	ge
d0041d60:	461c      	movge	r4, r3
d0041d62:	42a1      	cmp	r1, r4
d0041d64:	f340 817b 	ble.w	d004205e <fillTriangleDitherBayer2Mode+0x572>
d0041d68:	f108 0801 	add.w	r8, r8, #1
d0041d6c:	9b01      	ldr	r3, [sp, #4]
d0041d6e:	ee36 6a20 	vadd.f32	s12, s12, s1
d0041d72:	4598      	cmp	r8, r3
d0041d74:	ee33 3a08 	vadd.f32	s6, s6, s16
d0041d78:	ee37 7a28 	vadd.f32	s14, s14, s17
d0041d7c:	ee74 4a8b 	vadd.f32	s9, s9, s22
d0041d80:	ee30 0a2a 	vadd.f32	s0, s0, s21
d0041d84:	ee75 5a8f 	vadd.f32	s11, s11, s30
d0041d88:	d021      	beq.n	d0041dce <fillTriangleDitherBayer2Mode+0x2e2>
d0041d8a:	eeb4 6ae4 	vcmpe.f32	s12, s9
d0041d8e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041d92:	dcc6      	bgt.n	d0041d22 <fillTriangleDitherBayer2Mode+0x236>
d0041d94:	eeb0 2a65 	vmov.f32	s4, s11
d0041d98:	eef0 9a40 	vmov.f32	s19, s0
d0041d9c:	eef0 6a64 	vmov.f32	s13, s9
d0041da0:	eef0 3a47 	vmov.f32	s7, s14
d0041da4:	eeb0 5a43 	vmov.f32	s10, s6
d0041da8:	eef0 2a46 	vmov.f32	s5, s12
d0041dac:	e7c5      	b.n	d0041d3a <fillTriangleDitherBayer2Mode+0x24e>
d0041dae:	eddd 6a08 	vldr	s13, [sp, #32]
d0041db2:	ed9d 6a09 	vldr	s12, [sp, #36]	; 0x24
d0041db6:	ed9d fa0a 	vldr	s30, [sp, #40]	; 0x28
d0041dba:	ed9d 0a0b 	vldr	s0, [sp, #44]	; 0x2c
d0041dbe:	eddf 7a16 	vldr	s15, [pc, #88]	; d0041e18 <fillTriangleDitherBayer2Mode+0x32c>
d0041dc2:	eef4 fae7 	vcmpe.f32	s31, s15
d0041dc6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041dca:	f73f af74 	bgt.w	d0041cb6 <fillTriangleDitherBayer2Mode+0x1ca>
d0041dce:	b00d      	add	sp, #52	; 0x34
d0041dd0:	ecbd 8b10 	vpop	{d8-d15}
d0041dd4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0041dd8:	eef4 3ae6 	vcmpe.f32	s7, s13
d0041ddc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041de0:	f340 8124 	ble.w	d004202c <fillTriangleDitherBayer2Mode+0x540>
d0041de4:	eeb0 8a44 	vmov.f32	s16, s8
d0041de8:	eef0 0a42 	vmov.f32	s1, s4
d0041dec:	eeb0 1a66 	vmov.f32	s2, s13
d0041df0:	eef0 7a62 	vmov.f32	s15, s5
d0041df4:	eeb0 4a47 	vmov.f32	s8, s14
d0041df8:	eeb0 2a43 	vmov.f32	s4, s6
d0041dfc:	eef0 6a45 	vmov.f32	s13, s10
d0041e00:	eef0 2a46 	vmov.f32	s5, s12
d0041e04:	eeb0 7a48 	vmov.f32	s14, s16
d0041e08:	eeb0 3a60 	vmov.f32	s6, s1
d0041e0c:	eeb0 5a41 	vmov.f32	s10, s2
d0041e10:	eeb0 6a67 	vmov.f32	s12, s15
d0041e14:	e6d8      	b.n	d0041bc8 <fillTriangleDitherBayer2Mode+0xdc>
d0041e16:	bf00      	nop
d0041e18:	38d1b717 	.word	0x38d1b717
d0041e1c:	404ccccd 	.word	0x404ccccd
d0041e20:	33d6bf95 	.word	0x33d6bf95
d0041e24:	00000000 	.word	0x00000000
d0041e28:	477fff00 	.word	0x477fff00
d0041e2c:	ee89 aa89 	vdiv.f32	s20, s19, s18
d0041e30:	ed1f ba06 	vldr	s22, [pc, #-24]	; d0041e1c <fillTriangleDitherBayer2Mode+0x330>
d0041e34:	ed5f 9a05 	vldr	s19, [pc, #-20]	; d0041e24 <fillTriangleDitherBayer2Mode+0x338>
d0041e38:	fec1 1aa9 	vmaxnm.f32	s3, s3, s19
d0041e3c:	eef1 7a04 	vmov.f32	s15, #20	; 0x40a00000  5.0
d0041e40:	ee74 aac6 	vsub.f32	s21, s9, s12
d0041e44:	ee76 fae3 	vsub.f32	s31, s13, s7
d0041e48:	fec1 7ae7 	vminnm.f32	s15, s3, s15
d0041e4c:	ee67 7a8b 	vmul.f32	s15, s15, s22
d0041e50:	ee70 1a43 	vsub.f32	s3, s0, s6
d0041e54:	eef4 fac1 	vcmpe.f32	s31, s2
d0041e58:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041e5c:	ee35 bac7 	vsub.f32	s22, s11, s14
d0041e60:	ee17 3a90 	vmov	r3, s15
d0041e64:	edcd 7a00 	vstr	s15, [sp]
d0041e68:	2b10      	cmp	r3, #16
d0041e6a:	ee6a 7a8a 	vmul.f32	s15, s21, s20
d0041e6e:	ee2b ba0a 	vmul.f32	s22, s22, s20
d0041e72:	bfa8      	it	ge
d0041e74:	2310      	movge	r3, #16
d0041e76:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041e7a:	eef0 ba67 	vmov.f32	s23, s15
d0041e7e:	ee61 7a8a 	vmul.f32	s15, s3, s20
d0041e82:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0041e86:	9302      	str	r3, [sp, #8]
d0041e88:	eef0 ea67 	vmov.f32	s29, s15
d0041e8c:	f73f aef3 	bgt.w	d0041c76 <fillTriangleDitherBayer2Mode+0x18a>
d0041e90:	eeb0 fa69 	vmov.f32	s30, s19
d0041e94:	edcd 9a05 	vstr	s19, [sp, #20]
d0041e98:	edcd 9a06 	vstr	s19, [sp, #24]
d0041e9c:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0041ea0:	f240 123f 	movw	r2, #319	; 0x13f
d0041ea4:	ee17 3a90 	vmov	r3, s15
d0041ea8:	edcd 7a03 	vstr	s15, [sp, #12]
d0041eac:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d0041eb0:	3b01      	subs	r3, #1
d0041eb2:	ee17 8a90 	vmov	r8, s15
d0041eb6:	4293      	cmp	r3, r2
d0041eb8:	ea28 78e8 	bic.w	r8, r8, r8, asr #31
d0041ebc:	bfa8      	it	ge
d0041ebe:	4613      	movge	r3, r2
d0041ec0:	4543      	cmp	r3, r8
d0041ec2:	f6ff af7c 	blt.w	d0041dbe <fillTriangleDitherBayer2Mode+0x2d2>
d0041ec6:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0041eca:	3301      	adds	r3, #1
d0041ecc:	eeb0 aa46 	vmov.f32	s20, s12
d0041ed0:	ed5f da2d 	vldr	s27, [pc, #-180]	; d0041e20 <fillTriangleDitherBayer2Mode+0x334>
d0041ed4:	eef0 aa46 	vmov.f32	s21, s12
d0041ed8:	ed5f 2a2e 	vldr	s5, [pc, #-184]	; d0041e24 <fillTriangleDitherBayer2Mode+0x338>
d0041edc:	ee37 4ac5 	vsub.f32	s8, s15, s10
d0041ee0:	ee07 8a90 	vmov	s15, r8
d0041ee4:	eeb0 da43 	vmov.f32	s26, s6
d0041ee8:	ed1f 1a31 	vldr	s2, [pc, #-196]	; d0041e28 <fillTriangleDitherBayer2Mode+0x33c>
d0041eec:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041ef0:	9301      	str	r3, [sp, #4]
d0041ef2:	eef0 ca47 	vmov.f32	s25, s14
d0041ef6:	edcd 6a08 	vstr	s13, [sp, #32]
d0041efa:	eeb0 ea6b 	vmov.f32	s28, s23
d0041efe:	ed8d 6a09 	vstr	s12, [sp, #36]	; 0x24
d0041f02:	ee77 7a84 	vadd.f32	s15, s15, s8
d0041f06:	ed8d fa0a 	vstr	s30, [sp, #40]	; 0x28
d0041f0a:	eeb0 ca43 	vmov.f32	s24, s6
d0041f0e:	ed8d 0a0b 	vstr	s0, [sp, #44]	; 0x2c
d0041f12:	eea7 aaab 	vfma.f32	s20, s15, s23
d0041f16:	eef0 ba47 	vmov.f32	s23, s14
d0041f1a:	eee0 aaa7 	vfma.f32	s21, s1, s15
d0041f1e:	eea8 da27 	vfma.f32	s26, s16, s15
d0041f22:	eee8 caa7 	vfma.f32	s25, s17, s15
d0041f26:	eea7 caae 	vfma.f32	s24, s15, s29
d0041f2a:	eee7 ba8b 	vfma.f32	s23, s15, s22
d0041f2e:	e034      	b.n	d0041f9a <fillTriangleDitherBayer2Mode+0x4ae>
d0041f30:	eef0 1a6c 	vmov.f32	s3, s25
d0041f34:	eeb0 2a4d 	vmov.f32	s4, s26
d0041f38:	eef0 7a6a 	vmov.f32	s15, s21
d0041f3c:	eeb0 6a6b 	vmov.f32	s12, s23
d0041f40:	eef0 6a4c 	vmov.f32	s13, s24
d0041f44:	eeb0 4a4a 	vmov.f32	s8, s20
d0041f48:	feba 0a67 	vrintp.f32	s0, s15
d0041f4c:	eebd 0ac0 	vcvt.s32.f32	s0, s0
d0041f50:	feba 9a44 	vrintp.f32	s18, s8
d0041f54:	f240 13df 	movw	r3, #479	; 0x1df
d0041f58:	ee10 4a10 	vmov	r4, s0
d0041f5c:	eebd 0ac9 	vcvt.s32.f32	s0, s18
d0041f60:	3c01      	subs	r4, #1
d0041f62:	ee10 1a10 	vmov	r1, s0
d0041f66:	429c      	cmp	r4, r3
d0041f68:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d0041f6c:	bfa8      	it	ge
d0041f6e:	461c      	movge	r4, r3
d0041f70:	428c      	cmp	r4, r1
d0041f72:	f280 8159 	bge.w	d0042228 <fillTriangleDitherBayer2Mode+0x73c>
d0041f76:	f108 0801 	add.w	r8, r8, #1
d0041f7a:	9b01      	ldr	r3, [sp, #4]
d0041f7c:	ee7a aaa0 	vadd.f32	s21, s21, s1
d0041f80:	4598      	cmp	r8, r3
d0041f82:	ee3d da08 	vadd.f32	s26, s26, s16
d0041f86:	ee7c caa8 	vadd.f32	s25, s25, s17
d0041f8a:	ee3a aa0e 	vadd.f32	s20, s20, s28
d0041f8e:	ee3c ca2e 	vadd.f32	s24, s24, s29
d0041f92:	ee7b ba8b 	vadd.f32	s23, s23, s22
d0041f96:	f43f af0a 	beq.w	d0041dae <fillTriangleDitherBayer2Mode+0x2c2>
d0041f9a:	eef4 aaca 	vcmpe.f32	s21, s20
d0041f9e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041fa2:	dcc5      	bgt.n	d0041f30 <fillTriangleDitherBayer2Mode+0x444>
d0041fa4:	eef0 1a6b 	vmov.f32	s3, s23
d0041fa8:	eeb0 2a4c 	vmov.f32	s4, s24
d0041fac:	eef0 7a4a 	vmov.f32	s15, s20
d0041fb0:	eeb0 6a6c 	vmov.f32	s12, s25
d0041fb4:	eef0 6a4d 	vmov.f32	s13, s26
d0041fb8:	eeb0 4a6a 	vmov.f32	s8, s21
d0041fbc:	e7c4      	b.n	d0041f48 <fillTriangleDitherBayer2Mode+0x45c>
d0041fbe:	eeb0 1a45 	vmov.f32	s2, s10
d0041fc2:	eeb0 5a66 	vmov.f32	s10, s13
d0041fc6:	eeb0 8a47 	vmov.f32	s16, s14
d0041fca:	eef0 6a41 	vmov.f32	s13, s2
d0041fce:	eef0 0a43 	vmov.f32	s1, s6
d0041fd2:	eef0 7a46 	vmov.f32	s15, s12
d0041fd6:	eef4 3ae6 	vcmpe.f32	s7, s13
d0041fda:	eeb0 7a44 	vmov.f32	s14, s8
d0041fde:	eeb0 3a42 	vmov.f32	s6, s4
d0041fe2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041fe6:	eeb0 6a62 	vmov.f32	s12, s5
d0041fea:	eeb0 4a48 	vmov.f32	s8, s16
d0041fee:	eeb0 2a60 	vmov.f32	s4, s1
d0041ff2:	eef0 2a67 	vmov.f32	s5, s15
d0041ff6:	f77f ade7 	ble.w	d0041bc8 <fillTriangleDitherBayer2Mode+0xdc>
d0041ffa:	eeb0 8a65 	vmov.f32	s16, s11
d0041ffe:	eef0 0a40 	vmov.f32	s1, s0
d0042002:	eeb0 1a63 	vmov.f32	s2, s7
d0042006:	eef0 7a64 	vmov.f32	s15, s9
d004200a:	eef0 5a44 	vmov.f32	s11, s8
d004200e:	eeb0 0a42 	vmov.f32	s0, s4
d0042012:	eef0 3a66 	vmov.f32	s7, s13
d0042016:	eef0 4a62 	vmov.f32	s9, s5
d004201a:	eeb0 4a48 	vmov.f32	s8, s16
d004201e:	eeb0 2a60 	vmov.f32	s4, s1
d0042022:	eef0 6a41 	vmov.f32	s13, s2
d0042026:	eef0 2a67 	vmov.f32	s5, s15
d004202a:	e5cd      	b.n	d0041bc8 <fillTriangleDitherBayer2Mode+0xdc>
d004202c:	eeb0 8a47 	vmov.f32	s16, s14
d0042030:	eef0 0a43 	vmov.f32	s1, s6
d0042034:	eeb0 1a45 	vmov.f32	s2, s10
d0042038:	eef0 7a46 	vmov.f32	s15, s12
d004203c:	eeb0 7a65 	vmov.f32	s14, s11
d0042040:	eeb0 3a40 	vmov.f32	s6, s0
d0042044:	eeb0 5a63 	vmov.f32	s10, s7
d0042048:	eeb0 6a64 	vmov.f32	s12, s9
d004204c:	eef0 5a48 	vmov.f32	s11, s16
d0042050:	eeb0 0a60 	vmov.f32	s0, s1
d0042054:	eef0 3a41 	vmov.f32	s7, s2
d0042058:	eef0 4a67 	vmov.f32	s9, s15
d004205c:	e5ae      	b.n	d0041bbc <fillTriangleDitherBayer2Mode+0xd0>
d004205e:	ee76 6ae2 	vsub.f32	s13, s13, s5
d0042062:	eef4 6ac9 	vcmpe.f32	s13, s18
d0042066:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004206a:	f340 8207 	ble.w	d004247c <fillTriangleDitherBayer2Mode+0x990>
d004206e:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0042072:	ee79 9ac5 	vsub.f32	s19, s19, s10
d0042076:	ee32 2a63 	vsub.f32	s4, s4, s7
d004207a:	ee87 aaa6 	vdiv.f32	s20, s15, s13
d004207e:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0042082:	ee77 2ae2 	vsub.f32	s5, s15, s5
d0042086:	ee07 1a90 	vmov	s15, r1
d004208a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004208e:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0042092:	ee69 9a8a 	vmul.f32	s19, s19, s20
d0042096:	ee22 aa0a 	vmul.f32	s20, s4, s20
d004209a:	eea7 5aa9 	vfma.f32	s10, s15, s19
d004209e:	eee7 3a8a 	vfma.f32	s7, s15, s20
d00420a2:	ebc8 1208 	rsb	r2, r8, r8, lsl #4
d00420a6:	4dd3      	ldr	r5, [pc, #844]	; (d00423f4 <fillTriangleDitherBayer2Mode+0x908>)
d00420a8:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d00420ac:	48d2      	ldr	r0, [pc, #840]	; (d00423f8 <fillTriangleDitherBayer2Mode+0x90c>)
d00420ae:	eb01 1242 	add.w	r2, r1, r2, lsl #5
d00420b2:	682f      	ldr	r7, [r5, #0]
d00420b4:	eb08 1383 	add.w	r3, r8, r3, lsl #6
d00420b8:	f008 0503 	and.w	r5, r8, #3
d00420bc:	eb00 0942 	add.w	r9, r0, r2, lsl #1
d00420c0:	4ace      	ldr	r2, [pc, #824]	; (d00423fc <fillTriangleDitherBayer2Mode+0x910>)
d00420c2:	441f      	add	r7, r3
d00420c4:	f8cd 800c 	str.w	r8, [sp, #12]
d00420c8:	eb02 0385 	add.w	r3, r2, r5, lsl #2
d00420cc:	eeb6 2a00 	vmov.f32	s4, #96	; 0x3f000000  0.5
d00420d0:	4698      	mov	r8, r3
d00420d2:	e010      	b.n	d00420f6 <fillTriangleDitherBayer2Mode+0x60a>
d00420d4:	ee07 3a90 	vmov	s15, r3
d00420d8:	4419      	add	r1, r3
d00420da:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d00420de:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00420e2:	428c      	cmp	r4, r1
d00420e4:	eb09 0943 	add.w	r9, r9, r3, lsl #1
d00420e8:	eb07 1782 	add.w	r7, r7, r2, lsl #6
d00420ec:	eea7 5aa9 	vfma.f32	s10, s15, s19
d00420f0:	eee7 3a8a 	vfma.f32	s7, s15, s20
d00420f4:	db62      	blt.n	d00421bc <fillTriangleDitherBayer2Mode+0x6d0>
d00420f6:	eba4 0c01 	sub.w	ip, r4, r1
d00420fa:	eeb4 5ac1 	vcmpe.f32	s10, s2
d00420fe:	f10c 0301 	add.w	r3, ip, #1
d0042102:	2b30      	cmp	r3, #48	; 0x30
d0042104:	bfa8      	it	ge
d0042106:	2330      	movge	r3, #48	; 0x30
d0042108:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004210c:	d9e2      	bls.n	d00420d4 <fillTriangleDitherBayer2Mode+0x5e8>
d004210e:	f1bc 0f00 	cmp.w	ip, #0
d0042112:	eec3 7a85 	vdiv.f32	s15, s7, s10
d0042116:	dd54      	ble.n	d00421c2 <fillTriangleDitherBayer2Mode+0x6d6>
d0042118:	1e5a      	subs	r2, r3, #1
d004211a:	ee06 2a90 	vmov	s13, r2
d004211e:	eef0 2a45 	vmov.f32	s5, s10
d0042122:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0042126:	eee6 2aa9 	vfma.f32	s5, s13, s19
d004212a:	eef4 2ac1 	vcmpe.f32	s5, s2
d004212e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042132:	dd47      	ble.n	d00421c4 <fillTriangleDitherBayer2Mode+0x6d8>
d0042134:	eeb0 ca63 	vmov.f32	s24, s7
d0042138:	9a00      	ldr	r2, [sp, #0]
d004213a:	2a0f      	cmp	r2, #15
d004213c:	eea6 ca8a 	vfma.f32	s24, s13, s20
d0042140:	eecc ba22 	vdiv.f32	s23, s24, s5
d0042144:	ee7b bae7 	vsub.f32	s23, s23, s15
d0042148:	eecb 2aa6 	vdiv.f32	s5, s23, s13
d004214c:	dd3f      	ble.n	d00421ce <fillTriangleDitherBayer2Mode+0x6e2>
d004214e:	f1a9 0602 	sub.w	r6, r9, #2
d0042152:	2200      	movs	r2, #0
d0042154:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d0042158:	fec6 6ae1 	vminnm.f32	s13, s13, s3
d004215c:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d0042160:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d0042164:	3201      	adds	r2, #1
d0042166:	ee76 6a82 	vadd.f32	s13, s13, s4
d004216a:	0185      	lsls	r5, r0, #6
d004216c:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0042170:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d0042174:	ee16 0a90 	vmov	r0, s13
d0042178:	b280      	uxth	r0, r0
d004217a:	4586      	cmp	lr, r0
d004217c:	d903      	bls.n	d0042186 <fillTriangleDitherBayer2Mode+0x69a>
d004217e:	8030      	strh	r0, [r6, #0]
d0042180:	f04f 0010 	mov.w	r0, #16
d0042184:	5578      	strb	r0, [r7, r5]
d0042186:	4293      	cmp	r3, r2
d0042188:	dce4      	bgt.n	d0042154 <fillTriangleDitherBayer2Mode+0x668>
d004218a:	f1bc 0f00 	cmp.w	ip, #0
d004218e:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0042192:	ea4f 0043 	mov.w	r0, r3, lsl #1
d0042196:	ea4f 1282 	mov.w	r2, r2, lsl #6
d004219a:	bfbc      	itt	lt
d004219c:	2002      	movlt	r0, #2
d004219e:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d00421a2:	4481      	add	r9, r0
d00421a4:	4417      	add	r7, r2
d00421a6:	ee07 3a90 	vmov	s15, r3
d00421aa:	4419      	add	r1, r3
d00421ac:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00421b0:	428c      	cmp	r4, r1
d00421b2:	eea7 5aa9 	vfma.f32	s10, s15, s19
d00421b6:	eee7 3a8a 	vfma.f32	s7, s15, s20
d00421ba:	da9c      	bge.n	d00420f6 <fillTriangleDitherBayer2Mode+0x60a>
d00421bc:	f8dd 800c 	ldr.w	r8, [sp, #12]
d00421c0:	e5d2      	b.n	d0041d68 <fillTriangleDitherBayer2Mode+0x27c>
d00421c2:	d1f0      	bne.n	d00421a6 <fillTriangleDitherBayer2Mode+0x6ba>
d00421c4:	9a00      	ldr	r2, [sp, #0]
d00421c6:	eef0 2a44 	vmov.f32	s5, s8
d00421ca:	2a0f      	cmp	r2, #15
d00421cc:	dcbf      	bgt.n	d004214e <fillTriangleDitherBayer2Mode+0x662>
d00421ce:	2a00      	cmp	r2, #0
d00421d0:	f340 8136 	ble.w	d0042440 <fillTriangleDitherBayer2Mode+0x954>
d00421d4:	9404      	str	r4, [sp, #16]
d00421d6:	f1a9 0e02 	sub.w	lr, r9, #2
d00421da:	2200      	movs	r2, #0
d00421dc:	9c02      	ldr	r4, [sp, #8]
d00421de:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d00421e2:	fec6 6ae1 	vminnm.f32	s13, s13, s3
d00421e6:	ee76 6a82 	vadd.f32	s13, s13, s4
d00421ea:	f83e af02 	ldrh.w	sl, [lr, #2]!
d00421ee:	188e      	adds	r6, r1, r2
d00421f0:	eb02 0582 	add.w	r5, r2, r2, lsl #2
d00421f4:	ee77 7aa2 	vadd.f32	s15, s15, s5
d00421f8:	3201      	adds	r2, #1
d00421fa:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d00421fe:	f006 0603 	and.w	r6, r6, #3
d0042202:	01ad      	lsls	r5, r5, #6
d0042204:	ee16 0a90 	vmov	r0, s13
d0042208:	b280      	uxth	r0, r0
d004220a:	4582      	cmp	sl, r0
d004220c:	d908      	bls.n	d0042220 <fillTriangleDitherBayer2Mode+0x734>
d004220e:	f818 6006 	ldrb.w	r6, [r8, r6]
d0042212:	f8ae 0000 	strh.w	r0, [lr]
d0042216:	42a6      	cmp	r6, r4
d0042218:	bfac      	ite	ge
d004221a:	4658      	movge	r0, fp
d004221c:	2010      	movlt	r0, #16
d004221e:	5578      	strb	r0, [r7, r5]
d0042220:	4293      	cmp	r3, r2
d0042222:	dcdc      	bgt.n	d00421de <fillTriangleDitherBayer2Mode+0x6f2>
d0042224:	9c04      	ldr	r4, [sp, #16]
d0042226:	e7b0      	b.n	d004218a <fillTriangleDitherBayer2Mode+0x69e>
d0042228:	ee77 7ac4 	vsub.f32	s15, s15, s8
d004222c:	ed9f 0a74 	vldr	s0, [pc, #464]	; d0042400 <fillTriangleDitherBayer2Mode+0x914>
d0042230:	eef4 7ac0 	vcmpe.f32	s15, s0
d0042234:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042238:	f340 8125 	ble.w	d0042486 <fillTriangleDitherBayer2Mode+0x99a>
d004223c:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d0042240:	ee32 2a66 	vsub.f32	s4, s4, s13
d0042244:	ee71 1ac6 	vsub.f32	s3, s3, s12
d0042248:	ee89 0a27 	vdiv.f32	s0, s18, s15
d004224c:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0042250:	ee37 4ac4 	vsub.f32	s8, s15, s8
d0042254:	ee07 1a90 	vmov	s15, r1
d0042258:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004225c:	ee77 7a84 	vadd.f32	s15, s15, s8
d0042260:	ee22 2a00 	vmul.f32	s4, s4, s0
d0042264:	ee61 1a80 	vmul.f32	s3, s3, s0
d0042268:	eee7 6a82 	vfma.f32	s13, s15, s4
d004226c:	eea7 6aa1 	vfma.f32	s12, s15, s3
d0042270:	ebc8 1208 	rsb	r2, r8, r8, lsl #4
d0042274:	4d5f      	ldr	r5, [pc, #380]	; (d00423f4 <fillTriangleDitherBayer2Mode+0x908>)
d0042276:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d004227a:	485f      	ldr	r0, [pc, #380]	; (d00423f8 <fillTriangleDitherBayer2Mode+0x90c>)
d004227c:	eb01 1242 	add.w	r2, r1, r2, lsl #5
d0042280:	682f      	ldr	r7, [r5, #0]
d0042282:	eb08 1383 	add.w	r3, r8, r3, lsl #6
d0042286:	f008 0503 	and.w	r5, r8, #3
d004228a:	eb00 0942 	add.w	r9, r0, r2, lsl #1
d004228e:	4a5b      	ldr	r2, [pc, #364]	; (d00423fc <fillTriangleDitherBayer2Mode+0x910>)
d0042290:	441f      	add	r7, r3
d0042292:	f8cd 8010 	str.w	r8, [sp, #16]
d0042296:	eb02 0385 	add.w	r3, r2, r5, lsl #2
d004229a:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d004229e:	4698      	mov	r8, r3
d00422a0:	e010      	b.n	d00422c4 <fillTriangleDitherBayer2Mode+0x7d8>
d00422a2:	ee07 2a90 	vmov	s15, r2
d00422a6:	4411      	add	r1, r2
d00422a8:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d00422ac:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00422b0:	428c      	cmp	r4, r1
d00422b2:	eb09 0942 	add.w	r9, r9, r2, lsl #1
d00422b6:	eb07 1783 	add.w	r7, r7, r3, lsl #6
d00422ba:	eee7 6a82 	vfma.f32	s13, s15, s4
d00422be:	eea7 6aa1 	vfma.f32	s12, s15, s3
d00422c2:	db62      	blt.n	d004238a <fillTriangleDitherBayer2Mode+0x89e>
d00422c4:	eba4 0c01 	sub.w	ip, r4, r1
d00422c8:	eef4 6aed 	vcmpe.f32	s13, s27
d00422cc:	f10c 0201 	add.w	r2, ip, #1
d00422d0:	2a30      	cmp	r2, #48	; 0x30
d00422d2:	bfa8      	it	ge
d00422d4:	2230      	movge	r2, #48	; 0x30
d00422d6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00422da:	d9e2      	bls.n	d00422a2 <fillTriangleDitherBayer2Mode+0x7b6>
d00422dc:	f1bc 0f00 	cmp.w	ip, #0
d00422e0:	eec6 7a26 	vdiv.f32	s15, s12, s13
d00422e4:	dd54      	ble.n	d0042390 <fillTriangleDitherBayer2Mode+0x8a4>
d00422e6:	1e53      	subs	r3, r2, #1
d00422e8:	ee00 3a10 	vmov	s0, r3
d00422ec:	eeb0 9a66 	vmov.f32	s18, s13
d00422f0:	eeb8 0ac0 	vcvt.f32.s32	s0, s0
d00422f4:	eea0 9a02 	vfma.f32	s18, s0, s4
d00422f8:	eeb4 9aed 	vcmpe.f32	s18, s27
d00422fc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042300:	dd47      	ble.n	d0042392 <fillTriangleDitherBayer2Mode+0x8a6>
d0042302:	eeb0 fa46 	vmov.f32	s30, s12
d0042306:	9b00      	ldr	r3, [sp, #0]
d0042308:	2b0f      	cmp	r3, #15
d004230a:	eea0 fa21 	vfma.f32	s30, s0, s3
d004230e:	eecf 9a09 	vdiv.f32	s19, s30, s18
d0042312:	ee79 9ae7 	vsub.f32	s19, s19, s15
d0042316:	ee89 9a80 	vdiv.f32	s18, s19, s0
d004231a:	dd3f      	ble.n	d004239c <fillTriangleDitherBayer2Mode+0x8b0>
d004231c:	f1a9 0602 	sub.w	r6, r9, #2
d0042320:	2000      	movs	r0, #0
d0042322:	fe87 0aa2 	vmaxnm.f32	s0, s15, s5
d0042326:	fe80 0a41 	vminnm.f32	s0, s0, s2
d004232a:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d004232e:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d0042332:	3001      	adds	r0, #1
d0042334:	ee30 0a04 	vadd.f32	s0, s0, s8
d0042338:	019d      	lsls	r5, r3, #6
d004233a:	ee77 7a89 	vadd.f32	s15, s15, s18
d004233e:	eebc 0ac0 	vcvt.u32.f32	s0, s0
d0042342:	ee10 3a10 	vmov	r3, s0
d0042346:	b29b      	uxth	r3, r3
d0042348:	459e      	cmp	lr, r3
d004234a:	d903      	bls.n	d0042354 <fillTriangleDitherBayer2Mode+0x868>
d004234c:	8033      	strh	r3, [r6, #0]
d004234e:	f04f 0310 	mov.w	r3, #16
d0042352:	557b      	strb	r3, [r7, r5]
d0042354:	4282      	cmp	r2, r0
d0042356:	dce4      	bgt.n	d0042322 <fillTriangleDitherBayer2Mode+0x836>
d0042358:	f1bc 0f00 	cmp.w	ip, #0
d004235c:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0042360:	ea4f 0042 	mov.w	r0, r2, lsl #1
d0042364:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0042368:	bfbc      	itt	lt
d004236a:	2002      	movlt	r0, #2
d004236c:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0042370:	4481      	add	r9, r0
d0042372:	441f      	add	r7, r3
d0042374:	ee07 2a90 	vmov	s15, r2
d0042378:	4411      	add	r1, r2
d004237a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004237e:	428c      	cmp	r4, r1
d0042380:	eee7 6a82 	vfma.f32	s13, s15, s4
d0042384:	eea7 6aa1 	vfma.f32	s12, s15, s3
d0042388:	da9c      	bge.n	d00422c4 <fillTriangleDitherBayer2Mode+0x7d8>
d004238a:	f8dd 8010 	ldr.w	r8, [sp, #16]
d004238e:	e5f2      	b.n	d0041f76 <fillTriangleDitherBayer2Mode+0x48a>
d0042390:	d1f0      	bne.n	d0042374 <fillTriangleDitherBayer2Mode+0x888>
d0042392:	9b00      	ldr	r3, [sp, #0]
d0042394:	eeb0 9a62 	vmov.f32	s18, s5
d0042398:	2b0f      	cmp	r3, #15
d004239a:	dcbf      	bgt.n	d004231c <fillTriangleDitherBayer2Mode+0x830>
d004239c:	2b00      	cmp	r3, #0
d004239e:	dd31      	ble.n	d0042404 <fillTriangleDitherBayer2Mode+0x918>
d00423a0:	9407      	str	r4, [sp, #28]
d00423a2:	f1a9 0e02 	sub.w	lr, r9, #2
d00423a6:	2000      	movs	r0, #0
d00423a8:	9c02      	ldr	r4, [sp, #8]
d00423aa:	fe87 0aa2 	vmaxnm.f32	s0, s15, s5
d00423ae:	fe80 0a41 	vminnm.f32	s0, s0, s2
d00423b2:	ee30 0a04 	vadd.f32	s0, s0, s8
d00423b6:	f83e af02 	ldrh.w	sl, [lr, #2]!
d00423ba:	180e      	adds	r6, r1, r0
d00423bc:	eb00 0580 	add.w	r5, r0, r0, lsl #2
d00423c0:	ee77 7a89 	vadd.f32	s15, s15, s18
d00423c4:	3001      	adds	r0, #1
d00423c6:	eebc 0ac0 	vcvt.u32.f32	s0, s0
d00423ca:	f006 0603 	and.w	r6, r6, #3
d00423ce:	01ad      	lsls	r5, r5, #6
d00423d0:	ee10 3a10 	vmov	r3, s0
d00423d4:	b29b      	uxth	r3, r3
d00423d6:	459a      	cmp	sl, r3
d00423d8:	d908      	bls.n	d00423ec <fillTriangleDitherBayer2Mode+0x900>
d00423da:	f818 6006 	ldrb.w	r6, [r8, r6]
d00423de:	f8ae 3000 	strh.w	r3, [lr]
d00423e2:	42a6      	cmp	r6, r4
d00423e4:	bfac      	ite	ge
d00423e6:	465b      	movge	r3, fp
d00423e8:	2310      	movlt	r3, #16
d00423ea:	557b      	strb	r3, [r7, r5]
d00423ec:	4282      	cmp	r2, r0
d00423ee:	dcdc      	bgt.n	d00423aa <fillTriangleDitherBayer2Mode+0x8be>
d00423f0:	9c07      	ldr	r4, [sp, #28]
d00423f2:	e7b1      	b.n	d0042358 <fillTriangleDitherBayer2Mode+0x86c>
d00423f4:	d012cd44 	.word	0xd012cd44
d00423f8:	d0047660 	.word	0xd0047660
d00423fc:	d0046d50 	.word	0xd0046d50
d0042400:	38d1b717 	.word	0x38d1b717
d0042404:	f1a9 0602 	sub.w	r6, r9, #2
d0042408:	2000      	movs	r0, #0
d004240a:	fe87 0aa2 	vmaxnm.f32	s0, s15, s5
d004240e:	fe80 0a41 	vminnm.f32	s0, s0, s2
d0042412:	ee30 0a04 	vadd.f32	s0, s0, s8
d0042416:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d004241a:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d004241e:	ee77 7a89 	vadd.f32	s15, s15, s18
d0042422:	019d      	lsls	r5, r3, #6
d0042424:	3001      	adds	r0, #1
d0042426:	eebc 0ac0 	vcvt.u32.f32	s0, s0
d004242a:	ee10 3a10 	vmov	r3, s0
d004242e:	b29b      	uxth	r3, r3
d0042430:	459e      	cmp	lr, r3
d0042432:	d902      	bls.n	d004243a <fillTriangleDitherBayer2Mode+0x94e>
d0042434:	8033      	strh	r3, [r6, #0]
d0042436:	f807 b005 	strb.w	fp, [r7, r5]
d004243a:	4282      	cmp	r2, r0
d004243c:	dce5      	bgt.n	d004240a <fillTriangleDitherBayer2Mode+0x91e>
d004243e:	e78b      	b.n	d0042358 <fillTriangleDitherBayer2Mode+0x86c>
d0042440:	f1a9 0602 	sub.w	r6, r9, #2
d0042444:	2200      	movs	r2, #0
d0042446:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d004244a:	fec6 6ae1 	vminnm.f32	s13, s13, s3
d004244e:	ee76 6a82 	vadd.f32	s13, s13, s4
d0042452:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d0042456:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d004245a:	ee77 7aa2 	vadd.f32	s15, s15, s5
d004245e:	0185      	lsls	r5, r0, #6
d0042460:	3201      	adds	r2, #1
d0042462:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d0042466:	ee16 0a90 	vmov	r0, s13
d004246a:	b280      	uxth	r0, r0
d004246c:	4586      	cmp	lr, r0
d004246e:	d902      	bls.n	d0042476 <fillTriangleDitherBayer2Mode+0x98a>
d0042470:	8030      	strh	r0, [r6, #0]
d0042472:	f807 b005 	strb.w	fp, [r7, r5]
d0042476:	4293      	cmp	r3, r2
d0042478:	dce5      	bgt.n	d0042446 <fillTriangleDitherBayer2Mode+0x95a>
d004247a:	e686      	b.n	d004218a <fillTriangleDitherBayer2Mode+0x69e>
d004247c:	eeb0 aa44 	vmov.f32	s20, s8
d0042480:	eef0 9a44 	vmov.f32	s19, s8
d0042484:	e60d      	b.n	d00420a2 <fillTriangleDitherBayer2Mode+0x5b6>
d0042486:	eef0 1a62 	vmov.f32	s3, s5
d004248a:	eeb0 2a62 	vmov.f32	s4, s5
d004248e:	e6ef      	b.n	d0042270 <fillTriangleDitherBayer2Mode+0x784>

d0042490 <vec3Add>:
d0042490:	ee30 0a21 	vadd.f32	s0, s0, s3
d0042494:	b08e      	sub	sp, #56	; 0x38
d0042496:	ee70 0a82 	vadd.f32	s1, s1, s4
d004249a:	ee31 1a22 	vadd.f32	s2, s2, s5
d004249e:	b00e      	add	sp, #56	; 0x38
d00424a0:	4770      	bx	lr
d00424a2:	bf00      	nop

d00424a4 <vec3Scale>:
d00424a4:	ee20 0a21 	vmul.f32	s0, s0, s3
d00424a8:	b08c      	sub	sp, #48	; 0x30
d00424aa:	ee61 0aa0 	vmul.f32	s1, s3, s1
d00424ae:	ee21 1a81 	vmul.f32	s2, s3, s2
d00424b2:	b00c      	add	sp, #48	; 0x30
d00424b4:	4770      	bx	lr
d00424b6:	bf00      	nop

d00424b8 <vec3Dot>:
d00424b8:	ee20 2a82 	vmul.f32	s4, s1, s4
d00424bc:	b086      	sub	sp, #24
d00424be:	eea0 2a21 	vfma.f32	s4, s0, s3
d00424c2:	eea1 2a22 	vfma.f32	s4, s2, s5
d00424c6:	eeb0 0a42 	vmov.f32	s0, s4
d00424ca:	b006      	add	sp, #24
d00424cc:	4770      	bx	lr
d00424ce:	bf00      	nop

d00424d0 <vec3Cross>:
d00424d0:	eeb0 7a60 	vmov.f32	s14, s1
d00424d4:	b08e      	sub	sp, #56	; 0x38
d00424d6:	eef0 7a40 	vmov.f32	s15, s0
d00424da:	ee62 0ac0 	vnmul.f32	s1, s5, s0
d00424de:	ee61 6ac7 	vnmul.f32	s13, s3, s14
d00424e2:	ee22 0a41 	vnmul.f32	s0, s4, s2
d00424e6:	eee1 0a21 	vfma.f32	s1, s2, s3
d00424ea:	eee7 6a82 	vfma.f32	s13, s15, s4
d00424ee:	eea7 0a22 	vfma.f32	s0, s14, s5
d00424f2:	eeb0 1a66 	vmov.f32	s2, s13
d00424f6:	b00e      	add	sp, #56	; 0x38
d00424f8:	4770      	bx	lr
d00424fa:	bf00      	nop

d00424fc <vec3Normalize>:
d00424fc:	ee60 7aa0 	vmul.f32	s15, s1, s1
d0042500:	ed9f 7a22 	vldr	s14, [pc, #136]	; d004258c <vec3Normalize+0x90>
d0042504:	b08c      	sub	sp, #48	; 0x30
d0042506:	eee0 7a00 	vfma.f32	s15, s0, s0
d004250a:	eee1 7a01 	vfma.f32	s15, s2, s2
d004250e:	eef4 7ac7 	vcmpe.f32	s15, s14
d0042512:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042516:	d934      	bls.n	d0042582 <vec3Normalize+0x86>
d0042518:	ed9f 7a1d 	vldr	s14, [pc, #116]	; d0042590 <vec3Normalize+0x94>
d004251c:	eef4 7a47 	vcmp.f32	s15, s14
d0042520:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042524:	dd06      	ble.n	d0042534 <vec3Normalize+0x38>
d0042526:	ed9f 7a1b 	vldr	s14, [pc, #108]	; d0042594 <vec3Normalize+0x98>
d004252a:	eef4 7a47 	vcmp.f32	s15, s14
d004252e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042532:	d418      	bmi.n	d0042566 <vec3Normalize+0x6a>
d0042534:	ee17 2a90 	vmov	r2, s15
d0042538:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d004253c:	4b16      	ldr	r3, [pc, #88]	; (d0042598 <vec3Normalize+0x9c>)
d004253e:	eeb7 7a08 	vmov.f32	s14, #120	; 0x3fc00000  1.5
d0042542:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d0042546:	ee67 7a86 	vmul.f32	s15, s15, s12
d004254a:	ee06 3a90 	vmov	s13, r3
d004254e:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0042552:	eea6 7ae7 	vfms.f32	s14, s13, s15
d0042556:	ee67 7a26 	vmul.f32	s15, s14, s13
d004255a:	ee27 0a80 	vmul.f32	s0, s15, s0
d004255e:	ee67 0aa0 	vmul.f32	s1, s15, s1
d0042562:	ee27 1a81 	vmul.f32	s2, s15, s2
d0042566:	ed8d 0a09 	vstr	s0, [sp, #36]	; 0x24
d004256a:	edcd 0a0a 	vstr	s1, [sp, #40]	; 0x28
d004256e:	ed8d 1a0b 	vstr	s2, [sp, #44]	; 0x2c
d0042572:	ed9d 0a09 	vldr	s0, [sp, #36]	; 0x24
d0042576:	eddd 0a0a 	vldr	s1, [sp, #40]	; 0x28
d004257a:	ed9d 1a0b 	vldr	s2, [sp, #44]	; 0x2c
d004257e:	b00c      	add	sp, #48	; 0x30
d0042580:	4770      	bx	lr
d0042582:	2300      	movs	r3, #0
d0042584:	9309      	str	r3, [sp, #36]	; 0x24
d0042586:	930a      	str	r3, [sp, #40]	; 0x28
d0042588:	930b      	str	r3, [sp, #44]	; 0x2c
d004258a:	e7f2      	b.n	d0042572 <vec3Normalize+0x76>
d004258c:	358637bd 	.word	0x358637bd
d0042590:	3f7fbe77 	.word	0x3f7fbe77
d0042594:	3f8020c5 	.word	0x3f8020c5
d0042598:	5f3759df 	.word	0x5f3759df

d004259c <rotateAroundAxis>:
d004259c:	ee62 7a02 	vmul.f32	s15, s4, s4
d00425a0:	ed9f 7a51 	vldr	s14, [pc, #324]	; d00426e8 <rotateAroundAxis+0x14c>
d00425a4:	b500      	push	{lr}
d00425a6:	eee1 7aa1 	vfma.f32	s15, s3, s3
d00425aa:	ed2d 8b0c 	vpush	{d8-d13}
d00425ae:	eef0 ca40 	vmov.f32	s25, s0
d00425b2:	b08f      	sub	sp, #60	; 0x3c
d00425b4:	eeb0 ca60 	vmov.f32	s24, s1
d00425b8:	eef0 ba41 	vmov.f32	s23, s2
d00425bc:	eee2 7aa2 	vfma.f32	s15, s5, s5
d00425c0:	eeb0 da43 	vmov.f32	s26, s6
d00425c4:	eef4 7ac7 	vcmpe.f32	s15, s14
d00425c8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00425cc:	d97c      	bls.n	d00426c8 <rotateAroundAxis+0x12c>
d00425ce:	ed9f 7a47 	vldr	s14, [pc, #284]	; d00426ec <rotateAroundAxis+0x150>
d00425d2:	eef4 7a47 	vcmp.f32	s15, s14
d00425d6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00425da:	dd55      	ble.n	d0042688 <rotateAroundAxis+0xec>
d00425dc:	ed9f 7a44 	vldr	s14, [pc, #272]	; d00426f0 <rotateAroundAxis+0x154>
d00425e0:	eef4 7a47 	vcmp.f32	s15, s14
d00425e4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00425e8:	d54e      	bpl.n	d0042688 <rotateAroundAxis+0xec>
d00425ea:	eef0 da42 	vmov.f32	s27, s4
d00425ee:	eeb0 9a61 	vmov.f32	s18, s3
d00425f2:	eeb0 8a62 	vmov.f32	s16, s5
d00425f6:	ee60 8a82 	vmul.f32	s17, s1, s4
d00425fa:	ee62 5ae0 	vnmul.f32	s11, s5, s1
d00425fe:	ee21 6ac1 	vnmul.f32	s12, s3, s2
d0042602:	eeec 8a89 	vfma.f32	s17, s25, s18
d0042606:	ee6d 7aec 	vnmul.f32	s15, s27, s25
d004260a:	eeeb 5aad 	vfma.f32	s11, s23, s27
d004260e:	eeac 6a88 	vfma.f32	s12, s25, s16
d0042612:	eeec 7a09 	vfma.f32	s15, s24, s18
d0042616:	eeeb 8a88 	vfma.f32	s17, s23, s16
d004261a:	eeb0 ba65 	vmov.f32	s22, s11
d004261e:	eeb0 aa46 	vmov.f32	s20, s12
d0042622:	eef0 aa67 	vmov.f32	s21, s15
d0042626:	eeb0 0a4d 	vmov.f32	s0, s26
d004262a:	f003 ff05 	bl	d0046438 <cosf>
d004262e:	eef0 9a40 	vmov.f32	s19, s0
d0042632:	eeb0 0a4d 	vmov.f32	s0, s26
d0042636:	f004 f8e3 	bl	d0046800 <sinf>
d004263a:	ee60 5a0b 	vmul.f32	s11, s0, s22
d004263e:	ee20 6a0a 	vmul.f32	s12, s0, s20
d0042642:	ee60 7a2a 	vmul.f32	s15, s0, s21
d0042646:	eee9 5aac 	vfma.f32	s11, s19, s25
d004264a:	eea9 6a8c 	vfma.f32	s12, s19, s24
d004264e:	eee9 7aab 	vfma.f32	s15, s19, s23
d0042652:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0042656:	ee29 9a28 	vmul.f32	s18, s18, s17
d004265a:	ee2d 7aa8 	vmul.f32	s14, s27, s17
d004265e:	ee76 9ae9 	vsub.f32	s19, s13, s19
d0042662:	ee28 8a28 	vmul.f32	s16, s16, s17
d0042666:	eeb0 0a65 	vmov.f32	s0, s11
d004266a:	eef0 0a46 	vmov.f32	s1, s12
d004266e:	eeb0 1a67 	vmov.f32	s2, s15
d0042672:	eea9 0a89 	vfma.f32	s0, s19, s18
d0042676:	eee9 0a87 	vfma.f32	s1, s19, s14
d004267a:	eea9 1a88 	vfma.f32	s2, s19, s16
d004267e:	b00f      	add	sp, #60	; 0x3c
d0042680:	ecbd 8b0c 	vpop	{d8-d13}
d0042684:	f85d fb04 	ldr.w	pc, [sp], #4
d0042688:	ee17 2a90 	vmov	r2, s15
d004268c:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0042690:	4b18      	ldr	r3, [pc, #96]	; (d00426f4 <rotateAroundAxis+0x158>)
d0042692:	eeb7 8a08 	vmov.f32	s16, #120	; 0x3fc00000  1.5
d0042696:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d004269a:	ee67 7aa6 	vmul.f32	s15, s15, s13
d004269e:	ee07 3a10 	vmov	s14, r3
d00426a2:	ee67 7a87 	vmul.f32	s15, s15, s14
d00426a6:	eea7 8a67 	vfms.f32	s16, s14, s15
d00426aa:	ee27 8a08 	vmul.f32	s16, s14, s16
d00426ae:	ee62 da08 	vmul.f32	s27, s4, s16
d00426b2:	ee21 9a88 	vmul.f32	s18, s3, s16
d00426b6:	ee22 8a88 	vmul.f32	s16, s5, s16
d00426ba:	ee6c 8a2d 	vmul.f32	s17, s24, s27
d00426be:	ee29 6a6b 	vnmul.f32	s12, s18, s23
d00426c2:	ee68 5a4c 	vnmul.f32	s11, s16, s24
d00426c6:	e79c      	b.n	d0042602 <rotateAroundAxis+0x66>
d00426c8:	eddf 8a0b 	vldr	s17, [pc, #44]	; d00426f8 <rotateAroundAxis+0x15c>
d00426cc:	eef0 aa68 	vmov.f32	s21, s17
d00426d0:	eeb0 aa68 	vmov.f32	s20, s17
d00426d4:	eeb0 ba68 	vmov.f32	s22, s17
d00426d8:	eeb0 8a68 	vmov.f32	s16, s17
d00426dc:	eef0 da68 	vmov.f32	s27, s17
d00426e0:	eeb0 9a68 	vmov.f32	s18, s17
d00426e4:	e79f      	b.n	d0042626 <rotateAroundAxis+0x8a>
d00426e6:	bf00      	nop
d00426e8:	358637bd 	.word	0x358637bd
d00426ec:	3f7fbe77 	.word	0x3f7fbe77
d00426f0:	3f8020c5 	.word	0x3f8020c5
d00426f4:	5f3759df 	.word	0x5f3759df
d00426f8:	00000000 	.word	0x00000000

d00426fc <vec3>:
d00426fc:	b088      	sub	sp, #32
d00426fe:	b008      	add	sp, #32
d0042700:	4770      	bx	lr
d0042702:	bf00      	nop

d0042704 <powf>:
d0042704:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0042708:	eeb4 0a47 	vcmp.f32	s0, s14
d004270c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042710:	d04e      	beq.n	d00427b0 <powf+0xac>
d0042712:	eef5 0a40 	vcmp.f32	s1, #0.0
d0042716:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004271a:	d049      	beq.n	d00427b0 <powf+0xac>
d004271c:	eef4 0a47 	vcmp.f32	s1, s14
d0042720:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042724:	d054      	beq.n	d00427d0 <powf+0xcc>
d0042726:	eeb5 0a40 	vcmp.f32	s0, #0.0
d004272a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004272e:	d044      	beq.n	d00427ba <powf+0xb6>
d0042730:	eefd 7ae0 	vcvt.s32.f32	s15, s1
d0042734:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d0042738:	eef4 6a60 	vcmp.f32	s13, s1
d004273c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042740:	d04e      	beq.n	d00427e0 <powf+0xdc>
d0042742:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0042746:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004274a:	d459      	bmi.n	d0042800 <powf+0xfc>
d004274c:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0042750:	eef4 0a67 	vcmp.f32	s1, s15
d0042754:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042758:	d03f      	beq.n	d00427da <powf+0xd6>
d004275a:	eefe 7a00 	vmov.f32	s15, #224	; 0xbf000000 -0.5
d004275e:	eef4 0a67 	vcmp.f32	s1, s15
d0042762:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042766:	d052      	beq.n	d004280e <powf+0x10a>
d0042768:	eef0 7a00 	vmov.f32	s15, #0	; 0x40000000  2.0
d004276c:	eef4 0a67 	vcmp.f32	s1, s15
d0042770:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042774:	d052      	beq.n	d004281c <powf+0x118>
d0042776:	eef0 7a08 	vmov.f32	s15, #8	; 0x40400000  3.0
d004277a:	eef4 0a67 	vcmp.f32	s1, s15
d004277e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042782:	d04e      	beq.n	d0042822 <powf+0x11e>
d0042784:	eef1 7a00 	vmov.f32	s15, #16	; 0x40800000  4.0
d0042788:	eef4 0a67 	vcmp.f32	s1, s15
d004278c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042790:	d042      	beq.n	d0042818 <powf+0x114>
d0042792:	b500      	push	{lr}
d0042794:	b083      	sub	sp, #12
d0042796:	edcd 0a01 	vstr	s1, [sp, #4]
d004279a:	f003 ff9f 	bl	d00466dc <logf>
d004279e:	eddd 0a01 	vldr	s1, [sp, #4]
d00427a2:	ee20 0a20 	vmul.f32	s0, s0, s1
d00427a6:	b003      	add	sp, #12
d00427a8:	f85d eb04 	ldr.w	lr, [sp], #4
d00427ac:	f003 bf20 	b.w	d00465f0 <expf>
d00427b0:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00427b4:	eeb0 0a67 	vmov.f32	s0, s15
d00427b8:	4770      	bx	lr
d00427ba:	eef5 0ac0 	vcmpe.f32	s1, #0.0
d00427be:	eddf 7a1d 	vldr	s15, [pc, #116]	; d0042834 <powf+0x130>
d00427c2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00427c6:	fe70 7a27 	vselgt.f32	s15, s0, s15
d00427ca:	eeb0 0a67 	vmov.f32	s0, s15
d00427ce:	4770      	bx	lr
d00427d0:	eef0 7a40 	vmov.f32	s15, s0
d00427d4:	eeb0 0a67 	vmov.f32	s0, s15
d00427d8:	4770      	bx	lr
d00427da:	eef1 7ac0 	vsqrt.f32	s15, s0
d00427de:	e7e9      	b.n	d00427b4 <powf+0xb0>
d00427e0:	ee17 3a90 	vmov	r3, s15
d00427e4:	2b00      	cmp	r3, #0
d00427e6:	db0e      	blt.n	d0042806 <powf+0x102>
d00427e8:	d020      	beq.n	d004282c <powf+0x128>
d00427ea:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00427ee:	07da      	lsls	r2, r3, #31
d00427f0:	bf48      	it	mi
d00427f2:	ee67 7a80 	vmulmi.f32	s15, s15, s0
d00427f6:	085b      	lsrs	r3, r3, #1
d00427f8:	ee20 0a00 	vmul.f32	s0, s0, s0
d00427fc:	d1f7      	bne.n	d00427ee <powf+0xea>
d00427fe:	e7d9      	b.n	d00427b4 <powf+0xb0>
d0042800:	eddf 7a0d 	vldr	s15, [pc, #52]	; d0042838 <powf+0x134>
d0042804:	e7d6      	b.n	d00427b4 <powf+0xb0>
d0042806:	ee87 0a00 	vdiv.f32	s0, s14, s0
d004280a:	425b      	negs	r3, r3
d004280c:	e7ed      	b.n	d00427ea <powf+0xe6>
d004280e:	eef1 6ac0 	vsqrt.f32	s13, s0
d0042812:	eec7 7a26 	vdiv.f32	s15, s14, s13
d0042816:	e7cd      	b.n	d00427b4 <powf+0xb0>
d0042818:	ee20 0a00 	vmul.f32	s0, s0, s0
d004281c:	ee60 7a00 	vmul.f32	s15, s0, s0
d0042820:	e7c8      	b.n	d00427b4 <powf+0xb0>
d0042822:	ee60 7a00 	vmul.f32	s15, s0, s0
d0042826:	ee67 7a80 	vmul.f32	s15, s15, s0
d004282a:	e7c3      	b.n	d00427b4 <powf+0xb0>
d004282c:	eef0 7a47 	vmov.f32	s15, s14
d0042830:	e7c0      	b.n	d00427b4 <powf+0xb0>
d0042832:	bf00      	nop
d0042834:	7f800000 	.word	0x7f800000
d0042838:	7fc00000 	.word	0x7fc00000

d004283c <sb3dParticlesClear>:
d004283c:	4b0f      	ldr	r3, [pc, #60]	; (d004287c <sb3dParticlesClear+0x40>)
d004283e:	f04f 507e 	mov.w	r0, #1065353216	; 0x3f800000
d0042842:	2100      	movs	r1, #0
d0042844:	2200      	movs	r2, #0
d0042846:	b430      	push	{r4, r5}
d0042848:	f503 5500 	add.w	r5, r3, #8192	; 0x2000
d004284c:	2421      	movs	r4, #33	; 0x21
d004284e:	7699      	strb	r1, [r3, #26]
d0042850:	3320      	adds	r3, #32
d0042852:	f843 2c20 	str.w	r2, [r3, #-32]
d0042856:	f843 2c1c 	str.w	r2, [r3, #-28]
d004285a:	f843 2c18 	str.w	r2, [r3, #-24]
d004285e:	f843 0c14 	str.w	r0, [r3, #-20]
d0042862:	f843 2c10 	str.w	r2, [r3, #-16]
d0042866:	f843 0c0c 	str.w	r0, [r3, #-12]
d004286a:	f803 4c08 	strb.w	r4, [r3, #-8]
d004286e:	f803 1c07 	strb.w	r1, [r3, #-7]
d0042872:	42ab      	cmp	r3, r5
d0042874:	d1eb      	bne.n	d004284e <sb3dParticlesClear+0x12>
d0042876:	bc30      	pop	{r4, r5}
d0042878:	4770      	bx	lr
d004287a:	bf00      	nop
d004287c:	d0092660 	.word	0xd0092660

d0042880 <sb3dParticlesRender>:
d0042880:	2800      	cmp	r0, #0
d0042882:	f000 82d6 	beq.w	d0042e32 <sb3dParticlesRender+0x5b2>
d0042886:	edd0 7a02 	vldr	s15, [r0, #8]
d004288a:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004288e:	ed2d 8b10 	vpush	{d8-d15}
d0042892:	b0c7      	sub	sp, #284	; 0x11c
d0042894:	4605      	mov	r5, r0
d0042896:	ed90 ea00 	vldr	s28, [r0]
d004289a:	edcd 7a15 	vstr	s15, [sp, #84]	; 0x54
d004289e:	edd0 da01 	vldr	s27, [r0, #4]
d00428a2:	edd0 ca06 	vldr	s25, [r0, #24]
d00428a6:	ed90 ca07 	vldr	s24, [r0, #28]
d00428aa:	edd0 ba08 	vldr	s23, [r0, #32]
d00428ae:	ed90 9a09 	vldr	s18, [r0, #36]	; 0x24
d00428b2:	edd0 8a0a 	vldr	s17, [r0, #40]	; 0x28
d00428b6:	ed90 8a0b 	vldr	s16, [r0, #44]	; 0x2c
d00428ba:	edd0 aa0c 	vldr	s21, [r0, #48]	; 0x30
d00428be:	ed90 aa0d 	vldr	s20, [r0, #52]	; 0x34
d00428c2:	edd0 9a0e 	vldr	s19, [r0, #56]	; 0x38
d00428c6:	ed90 ba10 	vldr	s22, [r0, #64]	; 0x40
d00428ca:	f001 f92d 	bl	d0043b28 <lightsGet>
d00428ce:	4cae      	ldr	r4, [pc, #696]	; (d0042b88 <sb3dParticlesRender+0x308>)
d00428d0:	4681      	mov	r9, r0
d00428d2:	f001 f92d 	bl	d0043b30 <lightsGetCount>
d00428d6:	4680      	mov	r8, r0
d00428d8:	f504 5600 	add.w	r6, r4, #8192	; 0x2000
d00428dc:	eb09 1780 	add.w	r7, r9, r0, lsl #6
d00428e0:	e115      	b.n	d0042b0e <sb3dParticlesRender+0x28e>
d00428e2:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d00428e6:	edd4 ea04 	vldr	s29, [r4, #16]
d00428ea:	ed9f 5aac 	vldr	s10, [pc, #688]	; d0042b9c <sb3dParticlesRender+0x31c>
d00428ee:	fece ea85 	vmaxnm.f32	s29, s29, s10
d00428f2:	fece eac7 	vminnm.f32	s29, s29, s14
d00428f6:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d00428fa:	f105 0a10 	add.w	sl, r5, #16
d00428fe:	eeb0 4a46 	vmov.f32	s8, s12
d0042902:	2250      	movs	r2, #80	; 0x50
d0042904:	eef0 4a66 	vmov.f32	s9, s13
d0042908:	4651      	mov	r1, sl
d004290a:	ee67 7a87 	vmul.f32	s15, s15, s14
d004290e:	4668      	mov	r0, sp
d0042910:	eeb0 5a65 	vmov.f32	s10, s11
d0042914:	eeb0 7a65 	vmov.f32	s14, s11
d0042918:	eeac 6aa7 	vfma.f32	s12, s25, s15
d004291c:	eeac 4ae7 	vfms.f32	s8, s25, s15
d0042920:	eeec 4a67 	vfms.f32	s9, s24, s15
d0042924:	eeec 6a27 	vfma.f32	s13, s24, s15
d0042928:	eeab 5ae7 	vfms.f32	s10, s23, s15
d004292c:	eeab 7aa7 	vfma.f32	s14, s23, s15
d0042930:	eef0 3a46 	vmov.f32	s7, s12
d0042934:	eea9 6a67 	vfms.f32	s12, s18, s15
d0042938:	eeb0 da44 	vmov.f32	s26, s8
d004293c:	eef0 fa64 	vmov.f32	s31, s9
d0042940:	eef0 5a66 	vmov.f32	s11, s13
d0042944:	eeb0 fa45 	vmov.f32	s30, s10
d0042948:	eea9 da27 	vfma.f32	s26, s18, s15
d004294c:	ed8d 6a1c 	vstr	s12, [sp, #112]	; 0x70
d0042950:	eeb0 6a47 	vmov.f32	s12, s14
d0042954:	eee8 faa7 	vfma.f32	s31, s17, s15
d0042958:	eea8 fa27 	vfma.f32	s30, s16, s15
d004295c:	eea9 4a67 	vfms.f32	s8, s18, s15
d0042960:	eee9 3a27 	vfma.f32	s7, s18, s15
d0042964:	eee8 4ae7 	vfms.f32	s9, s17, s15
d0042968:	ed8d da16 	vstr	s26, [sp, #88]	; 0x58
d004296c:	eee8 5aa7 	vfma.f32	s11, s17, s15
d0042970:	eee8 6ae7 	vfms.f32	s13, s17, s15
d0042974:	edcd fa17 	vstr	s31, [sp, #92]	; 0x5c
d0042978:	eea8 5a67 	vfms.f32	s10, s16, s15
d004297c:	ed8d fa18 	vstr	s30, [sp, #96]	; 0x60
d0042980:	eea8 6a27 	vfma.f32	s12, s16, s15
d0042984:	ed8d 4a1f 	vstr	s8, [sp, #124]	; 0x7c
d0042988:	eea8 7a67 	vfms.f32	s14, s16, s15
d004298c:	edcd 3a19 	vstr	s7, [sp, #100]	; 0x64
d0042990:	edcd 4a20 	vstr	s9, [sp, #128]	; 0x80
d0042994:	edcd 5a1a 	vstr	s11, [sp, #104]	; 0x68
d0042998:	edcd 6a1d 	vstr	s13, [sp, #116]	; 0x74
d004299c:	ed8d 5a21 	vstr	s10, [sp, #132]	; 0x84
d00429a0:	ed8d 6a1b 	vstr	s12, [sp, #108]	; 0x6c
d00429a4:	ed8d 7a1e 	vstr	s14, [sp, #120]	; 0x78
d00429a8:	f003 faf8 	bl	d0045f9c <memcpy>
d00429ac:	eeb0 0a4d 	vmov.f32	s0, s26
d00429b0:	eef0 0a6f 	vmov.f32	s1, s31
d00429b4:	eeb0 1a4f 	vmov.f32	s2, s30
d00429b8:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d00429bc:	f000 fbfc 	bl	d00431b8 <worldToCamera>
d00429c0:	ed9d da19 	vldr	s26, [sp, #100]	; 0x64
d00429c4:	eddd fa1a 	vldr	s31, [sp, #104]	; 0x68
d00429c8:	4651      	mov	r1, sl
d00429ca:	ed9d fa1b 	vldr	s30, [sp, #108]	; 0x6c
d00429ce:	2250      	movs	r2, #80	; 0x50
d00429d0:	4668      	mov	r0, sp
d00429d2:	ed8d 0a22 	vstr	s0, [sp, #136]	; 0x88
d00429d6:	edcd 0a23 	vstr	s1, [sp, #140]	; 0x8c
d00429da:	ed8d 1a24 	vstr	s2, [sp, #144]	; 0x90
d00429de:	f003 fadd 	bl	d0045f9c <memcpy>
d00429e2:	eeb0 0a4d 	vmov.f32	s0, s26
d00429e6:	eef0 0a6f 	vmov.f32	s1, s31
d00429ea:	eeb0 1a4f 	vmov.f32	s2, s30
d00429ee:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d00429f2:	f000 fbe1 	bl	d00431b8 <worldToCamera>
d00429f6:	ed9d da1c 	vldr	s26, [sp, #112]	; 0x70
d00429fa:	eddd fa1d 	vldr	s31, [sp, #116]	; 0x74
d00429fe:	4651      	mov	r1, sl
d0042a00:	ed9d fa1e 	vldr	s30, [sp, #120]	; 0x78
d0042a04:	2250      	movs	r2, #80	; 0x50
d0042a06:	4668      	mov	r0, sp
d0042a08:	ed8d 0a25 	vstr	s0, [sp, #148]	; 0x94
d0042a0c:	edcd 0a26 	vstr	s1, [sp, #152]	; 0x98
d0042a10:	ed8d 1a27 	vstr	s2, [sp, #156]	; 0x9c
d0042a14:	f003 fac2 	bl	d0045f9c <memcpy>
d0042a18:	eeb0 0a4d 	vmov.f32	s0, s26
d0042a1c:	eef0 0a6f 	vmov.f32	s1, s31
d0042a20:	eeb0 1a4f 	vmov.f32	s2, s30
d0042a24:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0042a28:	f000 fbc6 	bl	d00431b8 <worldToCamera>
d0042a2c:	ed9d da1f 	vldr	s26, [sp, #124]	; 0x7c
d0042a30:	eddd fa20 	vldr	s31, [sp, #128]	; 0x80
d0042a34:	4651      	mov	r1, sl
d0042a36:	ed9d fa21 	vldr	s30, [sp, #132]	; 0x84
d0042a3a:	2250      	movs	r2, #80	; 0x50
d0042a3c:	4668      	mov	r0, sp
d0042a3e:	ed8d 0a28 	vstr	s0, [sp, #160]	; 0xa0
d0042a42:	edcd 0a29 	vstr	s1, [sp, #164]	; 0xa4
d0042a46:	ed8d 1a2a 	vstr	s2, [sp, #168]	; 0xa8
d0042a4a:	f003 faa7 	bl	d0045f9c <memcpy>
d0042a4e:	eeb0 0a4d 	vmov.f32	s0, s26
d0042a52:	eef0 0a6f 	vmov.f32	s1, s31
d0042a56:	eeb0 1a4f 	vmov.f32	s2, s30
d0042a5a:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0042a5e:	f000 fbab 	bl	d00431b8 <worldToCamera>
d0042a62:	eddd 7a24 	vldr	s15, [sp, #144]	; 0x90
d0042a66:	ed8d 0a2b 	vstr	s0, [sp, #172]	; 0xac
d0042a6a:	eef4 7acb 	vcmpe.f32	s15, s22
d0042a6e:	edcd 0a2c 	vstr	s1, [sp, #176]	; 0xb0
d0042a72:	ed8d 1a2d 	vstr	s2, [sp, #180]	; 0xb4
d0042a76:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042a7a:	d812      	bhi.n	d0042aa2 <sb3dParticlesRender+0x222>
d0042a7c:	eddd 7a27 	vldr	s15, [sp, #156]	; 0x9c
d0042a80:	eef4 7acb 	vcmpe.f32	s15, s22
d0042a84:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042a88:	d80b      	bhi.n	d0042aa2 <sb3dParticlesRender+0x222>
d0042a8a:	eddd 7a2a 	vldr	s15, [sp, #168]	; 0xa8
d0042a8e:	eef4 7acb 	vcmpe.f32	s15, s22
d0042a92:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042a96:	d804      	bhi.n	d0042aa2 <sb3dParticlesRender+0x222>
d0042a98:	eeb4 1acb 	vcmpe.f32	s2, s22
d0042a9c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042aa0:	d931      	bls.n	d0042b06 <sb3dParticlesRender+0x286>
d0042aa2:	4629      	mov	r1, r5
d0042aa4:	ed9d 3a28 	vldr	s6, [sp, #160]	; 0xa0
d0042aa8:	eddd 3a29 	vldr	s7, [sp, #164]	; 0xa4
d0042aac:	a82e      	add	r0, sp, #184	; 0xb8
d0042aae:	ed9d 4a2a 	vldr	s8, [sp, #168]	; 0xa8
d0042ab2:	eddd 1a25 	vldr	s3, [sp, #148]	; 0x94
d0042ab6:	ed9d 2a26 	vldr	s4, [sp, #152]	; 0x98
d0042aba:	eddd 2a27 	vldr	s5, [sp, #156]	; 0x9c
d0042abe:	ed9d 0a22 	vldr	s0, [sp, #136]	; 0x88
d0042ac2:	eddd 0a23 	vldr	s1, [sp, #140]	; 0x8c
d0042ac6:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d0042aca:	f001 f881 	bl	d0043bd0 <clipTriangleToFrustum>
d0042ace:	2802      	cmp	r0, #2
d0042ad0:	f300 8156 	bgt.w	d0042d80 <sb3dParticlesRender+0x500>
d0042ad4:	a82e      	add	r0, sp, #184	; 0xb8
d0042ad6:	4629      	mov	r1, r5
d0042ad8:	ed9d 3a2b 	vldr	s6, [sp, #172]	; 0xac
d0042adc:	eddd 3a2c 	vldr	s7, [sp, #176]	; 0xb0
d0042ae0:	ed9d 4a2d 	vldr	s8, [sp, #180]	; 0xb4
d0042ae4:	eddd 1a28 	vldr	s3, [sp, #160]	; 0xa0
d0042ae8:	ed9d 2a29 	vldr	s4, [sp, #164]	; 0xa4
d0042aec:	eddd 2a2a 	vldr	s5, [sp, #168]	; 0xa8
d0042af0:	ed9d 0a22 	vldr	s0, [sp, #136]	; 0x88
d0042af4:	eddd 0a23 	vldr	s1, [sp, #140]	; 0x8c
d0042af8:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d0042afc:	f001 f868 	bl	d0043bd0 <clipTriangleToFrustum>
d0042b00:	2802      	cmp	r0, #2
d0042b02:	f300 8105 	bgt.w	d0042d10 <sb3dParticlesRender+0x490>
d0042b06:	3420      	adds	r4, #32
d0042b08:	42a6      	cmp	r6, r4
d0042b0a:	f000 8134 	beq.w	d0042d76 <sb3dParticlesRender+0x4f6>
d0042b0e:	7ea3      	ldrb	r3, [r4, #26]
d0042b10:	2b00      	cmp	r3, #0
d0042b12:	d0f8      	beq.n	d0042b06 <sb3dParticlesRender+0x286>
d0042b14:	edd4 7a03 	vldr	s15, [r4, #12]
d0042b18:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0042b1c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042b20:	d9f1      	bls.n	d0042b06 <sb3dParticlesRender+0x286>
d0042b22:	edd4 6a01 	vldr	s13, [r4, #4]
d0042b26:	eeb1 5a67 	vneg.f32	s10, s15
d0042b2a:	ed94 6a00 	vldr	s12, [r4]
d0042b2e:	ee36 7aed 	vsub.f32	s14, s13, s27
d0042b32:	edd4 5a02 	vldr	s11, [r4, #8]
d0042b36:	ee36 4a4e 	vsub.f32	s8, s12, s28
d0042b3a:	eddd 4a15 	vldr	s9, [sp, #84]	; 0x54
d0042b3e:	ee27 7a0a 	vmul.f32	s14, s14, s20
d0042b42:	ee75 4ae4 	vsub.f32	s9, s11, s9
d0042b46:	eeaa 7a84 	vfma.f32	s14, s21, s8
d0042b4a:	eea9 7aa4 	vfma.f32	s14, s19, s9
d0042b4e:	eeb4 5ac7 	vcmpe.f32	s10, s14
d0042b52:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042b56:	dad6      	bge.n	d0042b06 <sb3dParticlesRender+0x286>
d0042b58:	ed94 7a05 	vldr	s14, [r4, #20]
d0042b5c:	ed9f 5a0b 	vldr	s10, [pc, #44]	; d0042b8c <sb3dParticlesRender+0x30c>
d0042b60:	eeb4 7ac5 	vcmpe.f32	s14, s10
d0042b64:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042b68:	f67f aebb 	bls.w	d00428e2 <sb3dParticlesRender+0x62>
d0042b6c:	f1b8 0f00 	cmp.w	r8, #0
d0042b70:	f340 809e 	ble.w	d0042cb0 <sb3dParticlesRender+0x430>
d0042b74:	eeb7 4a00 	vmov.f32	s8, #112	; 0x3f800000  1.0
d0042b78:	464b      	mov	r3, r9
d0042b7a:	eeb5 3a00 	vmov.f32	s6, #80	; 0x3e800000  0.250
d0042b7e:	ed9f 0a05 	vldr	s0, [pc, #20]	; d0042b94 <sb3dParticlesRender+0x314>
d0042b82:	eef6 3a08 	vmov.f32	s7, #104	; 0x3f400000  0.750
d0042b86:	e07e      	b.n	d0042c86 <sb3dParticlesRender+0x406>
d0042b88:	d0092660 	.word	0xd0092660
d0042b8c:	38d1b717 	.word	0x38d1b717
d0042b90:	358637bd 	.word	0x358637bd
d0042b94:	3dcccccd 	.word	0x3dcccccd
d0042b98:	3b808081 	.word	0x3b808081
d0042b9c:	00000000 	.word	0x00000000
d0042ba0:	edd3 7a02 	vldr	s15, [r3, #8]
d0042ba4:	edd3 4a01 	vldr	s9, [r3, #4]
d0042ba8:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0042bac:	ed93 7a03 	vldr	s14, [r3, #12]
d0042bb0:	ee74 4ac6 	vsub.f32	s9, s9, s12
d0042bb4:	ed93 2a0a 	vldr	s4, [r3, #40]	; 0x28
d0042bb8:	ee37 7a65 	vsub.f32	s14, s14, s11
d0042bbc:	ee27 5aa7 	vmul.f32	s10, s15, s15
d0042bc0:	ee62 2a02 	vmul.f32	s5, s4, s4
d0042bc4:	eea4 5aa4 	vfma.f32	s10, s9, s9
d0042bc8:	eea7 5a07 	vfma.f32	s10, s14, s14
d0042bcc:	eeb4 5a62 	vcmp.f32	s10, s5
d0042bd0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042bd4:	d554      	bpl.n	d0042c80 <sb3dParticlesRender+0x400>
d0042bd6:	ed5f 2a12 	vldr	s5, [pc, #-72]	; d0042b90 <sb3dParticlesRender+0x310>
d0042bda:	eeb4 5a62 	vcmp.f32	s10, s5
d0042bde:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042be2:	dd4d      	ble.n	d0042c80 <sb3dParticlesRender+0x400>
d0042be4:	eef1 0ac5 	vsqrt.f32	s1, s10
d0042be8:	edd3 1a08 	vldr	s3, [r3, #32]
d0042bec:	ee21 1aa1 	vmul.f32	s2, s3, s3
d0042bf0:	eeb4 5ac1 	vcmpe.f32	s10, s2
d0042bf4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042bf8:	eec4 2a20 	vdiv.f32	s5, s8, s1
d0042bfc:	ee64 4aa2 	vmul.f32	s9, s9, s5
d0042c00:	ee67 7aa2 	vmul.f32	s15, s15, s5
d0042c04:	ee27 7a22 	vmul.f32	s14, s14, s5
d0042c08:	f240 80e9 	bls.w	d0042dde <sb3dParticlesRender+0x55e>
d0042c0c:	ed93 1a09 	vldr	s2, [r3, #36]	; 0x24
d0042c10:	eef4 1ac1 	vcmpe.f32	s3, s2
d0042c14:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042c18:	da32      	bge.n	d0042c80 <sb3dParticlesRender+0x400>
d0042c1a:	eeb4 2ac1 	vcmpe.f32	s4, s2
d0042c1e:	ee25 5a22 	vmul.f32	s10, s10, s5
d0042c22:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042c26:	eeb4 1ac5 	vcmpe.f32	s2, s10
d0042c2a:	f200 80db 	bhi.w	d0042de4 <sb3dParticlesRender+0x564>
d0042c2e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042c32:	d925      	bls.n	d0042c80 <sb3dParticlesRender+0x400>
d0042c34:	ee75 2a61 	vsub.f32	s5, s10, s3
d0042c38:	ee31 2a61 	vsub.f32	s4, s2, s3
d0042c3c:	ee82 5a82 	vdiv.f32	s10, s5, s4
d0042c40:	ed5f 2a2a 	vldr	s5, [pc, #-168]	; d0042b9c <sb3dParticlesRender+0x31c>
d0042c44:	fe85 5a22 	vmaxnm.f32	s10, s10, s5
d0042c48:	fe85 5a44 	vminnm.f32	s10, s10, s8
d0042c4c:	ee34 5a45 	vsub.f32	s10, s8, s10
d0042c50:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d0042c54:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042c58:	d912      	bls.n	d0042c80 <sb3dParticlesRender+0x400>
d0042c5a:	ee67 7a8a 	vmul.f32	s15, s15, s20
d0042c5e:	eee4 7aaa 	vfma.f32	s15, s9, s21
d0042c62:	eee7 7a29 	vfma.f32	s15, s14, s19
d0042c66:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0042c6a:	eeb1 7a67 	vneg.f32	s14, s15
d0042c6e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042c72:	da05      	bge.n	d0042c80 <sb3dParticlesRender+0x400>
d0042c74:	edd3 7a07 	vldr	s15, [r3, #28]
d0042c78:	ee25 5a27 	vmul.f32	s10, s10, s15
d0042c7c:	eea5 0a07 	vfma.f32	s0, s10, s14
d0042c80:	3340      	adds	r3, #64	; 0x40
d0042c82:	429f      	cmp	r7, r3
d0042c84:	d016      	beq.n	d0042cb4 <sb3dParticlesRender+0x434>
d0042c86:	6ada      	ldr	r2, [r3, #44]	; 0x2c
d0042c88:	2a00      	cmp	r2, #0
d0042c8a:	d0f9      	beq.n	d0042c80 <sb3dParticlesRender+0x400>
d0042c8c:	781a      	ldrb	r2, [r3, #0]
d0042c8e:	2a00      	cmp	r2, #0
d0042c90:	d086      	beq.n	d0042ba0 <sb3dParticlesRender+0x320>
d0042c92:	edd3 4a04 	vldr	s9, [r3, #16]
d0042c96:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0042c9a:	edd3 7a05 	vldr	s15, [r3, #20]
d0042c9e:	ed93 7a06 	vldr	s14, [r3, #24]
d0042ca2:	eef1 4a64 	vneg.f32	s9, s9
d0042ca6:	eef1 7a67 	vneg.f32	s15, s15
d0042caa:	eeb1 7a47 	vneg.f32	s14, s14
d0042cae:	e7d4      	b.n	d0042c5a <sb3dParticlesRender+0x3da>
d0042cb0:	ed1f 0a48 	vldr	s0, [pc, #-288]	; d0042b94 <sb3dParticlesRender+0x314>
d0042cb4:	7e63      	ldrb	r3, [r4, #25]
d0042cb6:	eeb7 fa00 	vmov.f32	s30, #112	; 0x3f800000  1.0
d0042cba:	ed1f 7a49 	vldr	s14, [pc, #-292]	; d0042b98 <sb3dParticlesRender+0x318>
d0042cbe:	ee07 3a90 	vmov	s15, r3
d0042cc2:	ed1f da4a 	vldr	s26, [pc, #-296]	; d0042b9c <sb3dParticlesRender+0x31c>
d0042cc6:	eef8 7a67 	vcvt.f32.u32	s15, s15
d0042cca:	ee67 7a87 	vmul.f32	s15, s15, s14
d0042cce:	fec7 7a8d 	vmaxnm.f32	s15, s15, s26
d0042cd2:	fe87 0a80 	vmaxnm.f32	s0, s15, s0
d0042cd6:	fe80 0a4f 	vminnm.f32	s0, s0, s30
d0042cda:	f000 ff0d 	bl	d0043af8 <brightnessToShadeF>
d0042cde:	edd4 ea05 	vldr	s29, [r4, #20]
d0042ce2:	ed94 5a04 	vldr	s10, [r4, #16]
d0042ce6:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d0042cea:	ee3f fa6e 	vsub.f32	s30, s30, s29
d0042cee:	edd4 7a03 	vldr	s15, [r4, #12]
d0042cf2:	ee60 ea2e 	vmul.f32	s29, s0, s29
d0042cf6:	ed94 6a00 	vldr	s12, [r4]
d0042cfa:	edd4 6a01 	vldr	s13, [r4, #4]
d0042cfe:	edd4 5a02 	vldr	s11, [r4, #8]
d0042d02:	eee5 ea0f 	vfma.f32	s29, s10, s30
d0042d06:	fece ea8d 	vmaxnm.f32	s29, s29, s26
d0042d0a:	fece eac7 	vminnm.f32	s29, s29, s14
d0042d0e:	e5f2      	b.n	d00428f6 <sb3dParticlesRender+0x76>
d0042d10:	f100 3aff 	add.w	sl, r0, #4294967295	; 0xffffffff
d0042d14:	f04f 0b01 	mov.w	fp, #1
d0042d18:	465b      	mov	r3, fp
d0042d1a:	f10b 0b01 	add.w	fp, fp, #1
d0042d1e:	a946      	add	r1, sp, #280	; 0x118
d0042d20:	eef0 4a6e 	vmov.f32	s9, s29
d0042d24:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0042d28:	7e62      	ldrb	r2, [r4, #25]
d0042d2a:	eb0b 004b 	add.w	r0, fp, fp, lsl #1
d0042d2e:	ed9d 0a2e 	vldr	s0, [sp, #184]	; 0xb8
d0042d32:	eb01 0383 	add.w	r3, r1, r3, lsl #2
d0042d36:	eddd 0a2f 	vldr	s1, [sp, #188]	; 0xbc
d0042d3a:	eb01 0080 	add.w	r0, r1, r0, lsl #2
d0042d3e:	ed9d 1a30 	vldr	s2, [sp, #192]	; 0xc0
d0042d42:	f1a3 0c60 	sub.w	ip, r3, #96	; 0x60
d0042d46:	ed53 1a18 	vldr	s3, [r3, #-96]	; 0xffffffa0
d0042d4a:	ed10 3a18 	vldr	s6, [r0, #-96]	; 0xffffffa0
d0042d4e:	f1a0 0360 	sub.w	r3, r0, #96	; 0x60
d0042d52:	7e21      	ldrb	r1, [r4, #24]
d0042d54:	4628      	mov	r0, r5
d0042d56:	ed9c 2a01 	vldr	s4, [ip, #4]
d0042d5a:	eddc 2a02 	vldr	s5, [ip, #8]
d0042d5e:	edd3 3a01 	vldr	s7, [r3, #4]
d0042d62:	ed93 4a02 	vldr	s8, [r3, #8]
d0042d66:	f001 fb8f 	bl	d0044488 <submitClippedTri>
d0042d6a:	45d3      	cmp	fp, sl
d0042d6c:	d1d4      	bne.n	d0042d18 <sb3dParticlesRender+0x498>
d0042d6e:	3420      	adds	r4, #32
d0042d70:	42a6      	cmp	r6, r4
d0042d72:	f47f aecc 	bne.w	d0042b0e <sb3dParticlesRender+0x28e>
d0042d76:	b047      	add	sp, #284	; 0x11c
d0042d78:	ecbd 8b10 	vpop	{d8-d15}
d0042d7c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0042d80:	f100 3aff 	add.w	sl, r0, #4294967295	; 0xffffffff
d0042d84:	f04f 0b01 	mov.w	fp, #1
d0042d88:	465b      	mov	r3, fp
d0042d8a:	aa46      	add	r2, sp, #280	; 0x118
d0042d8c:	f10b 0b01 	add.w	fp, fp, #1
d0042d90:	a846      	add	r0, sp, #280	; 0x118
d0042d92:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0042d96:	eef0 4a6e 	vmov.f32	s9, s29
d0042d9a:	eb0b 014b 	add.w	r1, fp, fp, lsl #1
d0042d9e:	ed9d 0a2e 	vldr	s0, [sp, #184]	; 0xb8
d0042da2:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0042da6:	eddd 0a2f 	vldr	s1, [sp, #188]	; 0xbc
d0042daa:	eb00 0181 	add.w	r1, r0, r1, lsl #2
d0042dae:	ed9d 1a30 	vldr	s2, [sp, #192]	; 0xc0
d0042db2:	7e62      	ldrb	r2, [r4, #25]
d0042db4:	4628      	mov	r0, r5
d0042db6:	ed11 3a18 	vldr	s6, [r1, #-96]	; 0xffffffa0
d0042dba:	f1a3 0c60 	sub.w	ip, r3, #96	; 0x60
d0042dbe:	ed51 3a17 	vldr	s7, [r1, #-92]	; 0xffffffa4
d0042dc2:	ed11 4a16 	vldr	s8, [r1, #-88]	; 0xffffffa8
d0042dc6:	ed53 1a18 	vldr	s3, [r3, #-96]	; 0xffffffa0
d0042dca:	7e21      	ldrb	r1, [r4, #24]
d0042dcc:	ed9c 2a01 	vldr	s4, [ip, #4]
d0042dd0:	eddc 2a02 	vldr	s5, [ip, #8]
d0042dd4:	f001 fb58 	bl	d0044488 <submitClippedTri>
d0042dd8:	45d3      	cmp	fp, sl
d0042dda:	d1d5      	bne.n	d0042d88 <sb3dParticlesRender+0x508>
d0042ddc:	e67a      	b.n	d0042ad4 <sb3dParticlesRender+0x254>
d0042dde:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0042de2:	e73a      	b.n	d0042c5a <sb3dParticlesRender+0x3da>
d0042de4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042de8:	db12      	blt.n	d0042e10 <sb3dParticlesRender+0x590>
d0042dea:	ee35 5a61 	vsub.f32	s10, s10, s3
d0042dee:	ee31 2a61 	vsub.f32	s4, s2, s3
d0042df2:	eec5 2a02 	vdiv.f32	s5, s10, s4
d0042df6:	ed1f 5a97 	vldr	s10, [pc, #-604]	; d0042b9c <sb3dParticlesRender+0x31c>
d0042dfa:	fe82 5a85 	vmaxnm.f32	s10, s5, s10
d0042dfe:	eef0 2a44 	vmov.f32	s5, s8
d0042e02:	fe85 5a44 	vminnm.f32	s10, s10, s8
d0042e06:	eee5 2a63 	vfms.f32	s5, s10, s7
d0042e0a:	eeb0 5a62 	vmov.f32	s10, s5
d0042e0e:	e71f      	b.n	d0042c50 <sb3dParticlesRender+0x3d0>
d0042e10:	ee75 2a41 	vsub.f32	s5, s10, s2
d0042e14:	ee32 2a41 	vsub.f32	s4, s4, s2
d0042e18:	ee82 5a82 	vdiv.f32	s10, s5, s4
d0042e1c:	ed5f 2aa1 	vldr	s5, [pc, #-644]	; d0042b9c <sb3dParticlesRender+0x31c>
d0042e20:	fe85 5a22 	vmaxnm.f32	s10, s10, s5
d0042e24:	fe85 5a44 	vminnm.f32	s10, s10, s8
d0042e28:	ee34 5a45 	vsub.f32	s10, s8, s10
d0042e2c:	ee25 5a03 	vmul.f32	s10, s10, s6
d0042e30:	e70e      	b.n	d0042c50 <sb3dParticlesRender+0x3d0>
d0042e32:	4770      	bx	lr

d0042e34 <worldClear>:
d0042e34:	f44f 42c0 	mov.w	r2, #24576	; 0x6000
d0042e38:	2100      	movs	r1, #0
d0042e3a:	4801      	ldr	r0, [pc, #4]	; (d0042e40 <worldClear+0xc>)
d0042e3c:	f003 b8bc 	b.w	d0045fb8 <memset>
d0042e40:	d012cd60 	.word	0xd012cd60

d0042e44 <cameraCreate>:
d0042e44:	b510      	push	{r4, lr}
d0042e46:	4604      	mov	r4, r0
d0042e48:	2260      	movs	r2, #96	; 0x60
d0042e4a:	4902      	ldr	r1, [pc, #8]	; (d0042e54 <cameraCreate+0x10>)
d0042e4c:	f003 f8a6 	bl	d0045f9c <memcpy>
d0042e50:	4620      	mov	r0, r4
d0042e52:	bd10      	pop	{r4, pc}
d0042e54:	d0046d60 	.word	0xd0046d60

d0042e58 <cameraSetPosition>:
d0042e58:	b084      	sub	sp, #16
d0042e5a:	ed8d 0a01 	vstr	s0, [sp, #4]
d0042e5e:	edcd 0a02 	vstr	s1, [sp, #8]
d0042e62:	ed8d 1a03 	vstr	s2, [sp, #12]
d0042e66:	b128      	cbz	r0, d0042e74 <cameraSetPosition+0x1c>
d0042e68:	aa04      	add	r2, sp, #16
d0042e6a:	4603      	mov	r3, r0
d0042e6c:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0042e70:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0042e74:	b004      	add	sp, #16
d0042e76:	4770      	bx	lr

d0042e78 <cameraNormalize>:
d0042e78:	edd0 0a0d 	vldr	s1, [r0, #52]	; 0x34
d0042e7c:	ed90 1a0e 	vldr	s2, [r0, #56]	; 0x38
d0042e80:	ed90 0a0c 	vldr	s0, [r0, #48]	; 0x30
d0042e84:	b510      	push	{r4, lr}
d0042e86:	4604      	mov	r4, r0
d0042e88:	f7ff fb38 	bl	d00424fc <vec3Normalize>
d0042e8c:	eeb0 7a60 	vmov.f32	s14, s1
d0042e90:	eef0 7a41 	vmov.f32	s15, s2
d0042e94:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0042e98:	ed94 0a06 	vldr	s0, [r4, #24]
d0042e9c:	ed84 7a0d 	vstr	s14, [r4, #52]	; 0x34
d0042ea0:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d0042ea4:	edd4 0a07 	vldr	s1, [r4, #28]
d0042ea8:	ed94 1a08 	vldr	s2, [r4, #32]
d0042eac:	f7ff fb26 	bl	d00424fc <vec3Normalize>
d0042eb0:	eef0 1a40 	vmov.f32	s3, s0
d0042eb4:	eeb0 2a60 	vmov.f32	s4, s1
d0042eb8:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0042ebc:	eef0 2a41 	vmov.f32	s5, s2
d0042ec0:	edc4 0a07 	vstr	s1, [r4, #28]
d0042ec4:	ed84 1a08 	vstr	s2, [r4, #32]
d0042ec8:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0042ecc:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0042ed0:	edc4 1a06 	vstr	s3, [r4, #24]
d0042ed4:	f7ff fafc 	bl	d00424d0 <vec3Cross>
d0042ed8:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0042edc:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0042ee0:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0042ee4:	f7ff fb0a 	bl	d00424fc <vec3Normalize>
d0042ee8:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0042eec:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0042ef0:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0042ef4:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0042ef8:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0042efc:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0042f00:	f7ff fae6 	bl	d00424d0 <vec3Cross>
d0042f04:	ed84 0a06 	vstr	s0, [r4, #24]
d0042f08:	edc4 0a07 	vstr	s1, [r4, #28]
d0042f0c:	ed84 1a08 	vstr	s2, [r4, #32]
d0042f10:	f7ff faf4 	bl	d00424fc <vec3Normalize>
d0042f14:	ed84 0a06 	vstr	s0, [r4, #24]
d0042f18:	edc4 0a07 	vstr	s1, [r4, #28]
d0042f1c:	ed84 1a08 	vstr	s2, [r4, #32]
d0042f20:	bd10      	pop	{r4, pc}
d0042f22:	bf00      	nop

d0042f24 <cameraTurn>:
d0042f24:	2800      	cmp	r0, #0
d0042f26:	f000 8144 	beq.w	d00431b2 <cameraTurn+0x28e>
d0042f2a:	b570      	push	{r4, r5, r6, lr}
d0042f2c:	4604      	mov	r4, r0
d0042f2e:	ed2d 8b04 	vpush	{d8-d9}
d0042f32:	eef0 8a40 	vmov.f32	s17, s0
d0042f36:	b08a      	sub	sp, #40	; 0x28
d0042f38:	eeb0 9a60 	vmov.f32	s18, s1
d0042f3c:	eeb0 8a41 	vmov.f32	s16, s2
d0042f40:	bb69      	cbnz	r1, d0042f9e <cameraTurn+0x7a>
d0042f42:	f100 0318 	add.w	r3, r0, #24
d0042f46:	ae01      	add	r6, sp, #4
d0042f48:	f100 0524 	add.w	r5, r0, #36	; 0x24
d0042f4c:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0042f50:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0042f54:	f104 0330 	add.w	r3, r4, #48	; 0x30
d0042f58:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042f5c:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0042f60:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d0042f64:	ae04      	add	r6, sp, #16
d0042f66:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0042f6a:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0042f6e:	ab0a      	add	r3, sp, #40	; 0x28
d0042f70:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0042f74:	d14a      	bne.n	d004300c <cameraTurn+0xe8>
d0042f76:	eef5 8a40 	vcmp.f32	s17, #0.0
d0042f7a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042f7e:	f040 808d 	bne.w	d004309c <cameraTurn+0x178>
d0042f82:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0042f86:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042f8a:	f040 80cf 	bne.w	d004312c <cameraTurn+0x208>
d0042f8e:	4620      	mov	r0, r4
d0042f90:	b00a      	add	sp, #40	; 0x28
d0042f92:	ecbd 8b04 	vpop	{d8-d9}
d0042f96:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0042f9a:	f7ff bf6d 	b.w	d0042e78 <cameraNormalize>
d0042f9e:	ed9f 1a85 	vldr	s2, [pc, #532]	; d00431b4 <cameraTurn+0x290>
d0042fa2:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0042fa6:	eef0 0a41 	vmov.f32	s1, s2
d0042faa:	f7ff fba7 	bl	d00426fc <vec3>
d0042fae:	eef0 7a41 	vmov.f32	s15, s2
d0042fb2:	ed9f 1a80 	vldr	s2, [pc, #512]	; d00431b4 <cameraTurn+0x290>
d0042fb6:	eeb0 7a60 	vmov.f32	s14, s1
d0042fba:	ed8d 0a01 	vstr	s0, [sp, #4]
d0042fbe:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d0042fc2:	edcd 7a03 	vstr	s15, [sp, #12]
d0042fc6:	eeb0 0a41 	vmov.f32	s0, s2
d0042fca:	ed8d 7a02 	vstr	s14, [sp, #8]
d0042fce:	f7ff fb95 	bl	d00426fc <vec3>
d0042fd2:	eeb0 7a60 	vmov.f32	s14, s1
d0042fd6:	eddf 0a77 	vldr	s1, [pc, #476]	; d00431b4 <cameraTurn+0x290>
d0042fda:	eef0 7a41 	vmov.f32	s15, s2
d0042fde:	ed8d 0a04 	vstr	s0, [sp, #16]
d0042fe2:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d0042fe6:	eeb0 0a60 	vmov.f32	s0, s1
d0042fea:	ed8d 7a05 	vstr	s14, [sp, #20]
d0042fee:	edcd 7a06 	vstr	s15, [sp, #24]
d0042ff2:	f7ff fb83 	bl	d00426fc <vec3>
d0042ff6:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0042ffa:	edcd 0a08 	vstr	s1, [sp, #32]
d0042ffe:	ed8d 0a07 	vstr	s0, [sp, #28]
d0043002:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d0043006:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004300a:	d0b4      	beq.n	d0042f76 <cameraTurn+0x52>
d004300c:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0043010:	eeb0 3a49 	vmov.f32	s6, s18
d0043014:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0043018:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d004301c:	eddd 1a04 	vldr	s3, [sp, #16]
d0043020:	ed9d 2a05 	vldr	s4, [sp, #20]
d0043024:	eddd 2a06 	vldr	s5, [sp, #24]
d0043028:	f7ff fab8 	bl	d004259c <rotateAroundAxis>
d004302c:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0043030:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0043034:	eeb0 3a49 	vmov.f32	s6, s18
d0043038:	ed94 0a06 	vldr	s0, [r4, #24]
d004303c:	edd4 0a07 	vldr	s1, [r4, #28]
d0043040:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0043044:	ed94 1a08 	vldr	s2, [r4, #32]
d0043048:	eddd 1a04 	vldr	s3, [sp, #16]
d004304c:	ed9d 2a05 	vldr	s4, [sp, #20]
d0043050:	eddd 2a06 	vldr	s5, [sp, #24]
d0043054:	f7ff faa2 	bl	d004259c <rotateAroundAxis>
d0043058:	eeb0 3a49 	vmov.f32	s6, s18
d004305c:	ed84 0a06 	vstr	s0, [r4, #24]
d0043060:	edc4 0a07 	vstr	s1, [r4, #28]
d0043064:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0043068:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d004306c:	ed84 1a08 	vstr	s2, [r4, #32]
d0043070:	eddd 1a04 	vldr	s3, [sp, #16]
d0043074:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0043078:	ed9d 2a05 	vldr	s4, [sp, #20]
d004307c:	eddd 2a06 	vldr	s5, [sp, #24]
d0043080:	f7ff fa8c 	bl	d004259c <rotateAroundAxis>
d0043084:	eef5 8a40 	vcmp.f32	s17, #0.0
d0043088:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d004308c:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0043090:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043094:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0043098:	f43f af73 	beq.w	d0042f82 <cameraTurn+0x5e>
d004309c:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d00430a0:	eeb0 3a68 	vmov.f32	s6, s17
d00430a4:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d00430a8:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d00430ac:	eddd 1a01 	vldr	s3, [sp, #4]
d00430b0:	ed9d 2a02 	vldr	s4, [sp, #8]
d00430b4:	eddd 2a03 	vldr	s5, [sp, #12]
d00430b8:	f7ff fa70 	bl	d004259c <rotateAroundAxis>
d00430bc:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d00430c0:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d00430c4:	eeb0 3a68 	vmov.f32	s6, s17
d00430c8:	ed94 0a06 	vldr	s0, [r4, #24]
d00430cc:	edd4 0a07 	vldr	s1, [r4, #28]
d00430d0:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d00430d4:	ed94 1a08 	vldr	s2, [r4, #32]
d00430d8:	eddd 1a01 	vldr	s3, [sp, #4]
d00430dc:	ed9d 2a02 	vldr	s4, [sp, #8]
d00430e0:	eddd 2a03 	vldr	s5, [sp, #12]
d00430e4:	f7ff fa5a 	bl	d004259c <rotateAroundAxis>
d00430e8:	eeb0 3a68 	vmov.f32	s6, s17
d00430ec:	ed84 0a06 	vstr	s0, [r4, #24]
d00430f0:	edc4 0a07 	vstr	s1, [r4, #28]
d00430f4:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d00430f8:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d00430fc:	ed84 1a08 	vstr	s2, [r4, #32]
d0043100:	eddd 1a01 	vldr	s3, [sp, #4]
d0043104:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0043108:	ed9d 2a02 	vldr	s4, [sp, #8]
d004310c:	eddd 2a03 	vldr	s5, [sp, #12]
d0043110:	f7ff fa44 	bl	d004259c <rotateAroundAxis>
d0043114:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0043118:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d004311c:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0043120:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043124:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0043128:	f43f af31 	beq.w	d0042f8e <cameraTurn+0x6a>
d004312c:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0043130:	eeb0 3a48 	vmov.f32	s6, s16
d0043134:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0043138:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d004313c:	eddd 1a07 	vldr	s3, [sp, #28]
d0043140:	ed9d 2a08 	vldr	s4, [sp, #32]
d0043144:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0043148:	f7ff fa28 	bl	d004259c <rotateAroundAxis>
d004314c:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0043150:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0043154:	eeb0 3a48 	vmov.f32	s6, s16
d0043158:	ed94 0a06 	vldr	s0, [r4, #24]
d004315c:	edd4 0a07 	vldr	s1, [r4, #28]
d0043160:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0043164:	ed94 1a08 	vldr	s2, [r4, #32]
d0043168:	eddd 1a07 	vldr	s3, [sp, #28]
d004316c:	ed9d 2a08 	vldr	s4, [sp, #32]
d0043170:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0043174:	f7ff fa12 	bl	d004259c <rotateAroundAxis>
d0043178:	ed84 0a06 	vstr	s0, [r4, #24]
d004317c:	edc4 0a07 	vstr	s1, [r4, #28]
d0043180:	eeb0 3a48 	vmov.f32	s6, s16
d0043184:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0043188:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d004318c:	ed84 1a08 	vstr	s2, [r4, #32]
d0043190:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0043194:	eddd 1a07 	vldr	s3, [sp, #28]
d0043198:	ed9d 2a08 	vldr	s4, [sp, #32]
d004319c:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d00431a0:	f7ff f9fc 	bl	d004259c <rotateAroundAxis>
d00431a4:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d00431a8:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d00431ac:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d00431b0:	e6ed      	b.n	d0042f8e <cameraTurn+0x6a>
d00431b2:	4770      	bx	lr
d00431b4:	00000000 	.word	0x00000000

d00431b8 <worldToCamera>:
d00431b8:	b084      	sub	sp, #16
d00431ba:	b510      	push	{r4, lr}
d00431bc:	ed2d 8b02 	vpush	{d8}
d00431c0:	b0ac      	sub	sp, #176	; 0xb0
d00431c2:	f10d 042f 	add.w	r4, sp, #47	; 0x2f
d00431c6:	f10d 0cc0 	add.w	ip, sp, #192	; 0xc0
d00431ca:	ed8d 0a23 	vstr	s0, [sp, #140]	; 0x8c
d00431ce:	f024 041f 	bic.w	r4, r4, #31
d00431d2:	edcd 0a24 	vstr	s1, [sp, #144]	; 0x90
d00431d6:	ed8d 1a25 	vstr	s2, [sp, #148]	; 0x94
d00431da:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d00431de:	2260      	movs	r2, #96	; 0x60
d00431e0:	4661      	mov	r1, ip
d00431e2:	4620      	mov	r0, r4
d00431e4:	f002 feda 	bl	d0045f9c <memcpy>
d00431e8:	edd4 7a00 	vldr	s15, [r4]
d00431ec:	ed9d 0a23 	vldr	s0, [sp, #140]	; 0x8c
d00431f0:	ed94 7a01 	vldr	s14, [r4, #4]
d00431f4:	ee30 0a67 	vsub.f32	s0, s0, s15
d00431f8:	eddd 0a24 	vldr	s1, [sp, #144]	; 0x90
d00431fc:	edd4 7a02 	vldr	s15, [r4, #8]
d0043200:	ed9d 1a25 	vldr	s2, [sp, #148]	; 0x94
d0043204:	ee70 0ac7 	vsub.f32	s1, s1, s14
d0043208:	edd4 1a06 	vldr	s3, [r4, #24]
d004320c:	ee31 1a67 	vsub.f32	s2, s2, s15
d0043210:	ed94 2a07 	vldr	s4, [r4, #28]
d0043214:	edd4 2a08 	vldr	s5, [r4, #32]
d0043218:	edcd 0a27 	vstr	s1, [sp, #156]	; 0x9c
d004321c:	ed8d 1a28 	vstr	s2, [sp, #160]	; 0xa0
d0043220:	ed8d 0a26 	vstr	s0, [sp, #152]	; 0x98
d0043224:	f7ff f948 	bl	d00424b8 <vec3Dot>
d0043228:	edd4 1a09 	vldr	s3, [r4, #36]	; 0x24
d004322c:	eef0 8a40 	vmov.f32	s17, s0
d0043230:	ed94 2a0a 	vldr	s4, [r4, #40]	; 0x28
d0043234:	edd4 2a0b 	vldr	s5, [r4, #44]	; 0x2c
d0043238:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d004323c:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d0043240:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d0043244:	f7ff f938 	bl	d00424b8 <vec3Dot>
d0043248:	eeb0 8a40 	vmov.f32	s16, s0
d004324c:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d0043250:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d0043254:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0043258:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d004325c:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0043260:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0043264:	f7ff f928 	bl	d00424b8 <vec3Dot>
d0043268:	eef0 0a48 	vmov.f32	s1, s16
d004326c:	eeb0 1a40 	vmov.f32	s2, s0
d0043270:	eeb0 0a68 	vmov.f32	s0, s17
d0043274:	b02c      	add	sp, #176	; 0xb0
d0043276:	ecbd 8b02 	vpop	{d8}
d004327a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d004327e:	b004      	add	sp, #16
d0043280:	4770      	bx	lr
d0043282:	bf00      	nop

d0043284 <cameraSetRange>:
d0043284:	b1a0      	cbz	r0, d00432b0 <cameraSetRange+0x2c>
d0043286:	eddf 7a0d 	vldr	s15, [pc, #52]	; d00432bc <cameraSetRange+0x38>
d004328a:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d004328e:	eeb4 0ae0 	vcmpe.f32	s0, s1
d0043292:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043296:	da0c      	bge.n	d00432b2 <cameraSetRange+0x2e>
d0043298:	ee30 7ac0 	vsub.f32	s14, s1, s0
d004329c:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d00432a0:	eec6 7a87 	vdiv.f32	s15, s13, s14
d00432a4:	ed80 0a10 	vstr	s0, [r0, #64]	; 0x40
d00432a8:	edc0 0a11 	vstr	s1, [r0, #68]	; 0x44
d00432ac:	edc0 7a0f 	vstr	s15, [r0, #60]	; 0x3c
d00432b0:	4770      	bx	lr
d00432b2:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00432b6:	ee70 0a27 	vadd.f32	s1, s0, s15
d00432ba:	e7f3      	b.n	d00432a4 <cameraSetRange+0x20>
d00432bc:	3a83126f 	.word	0x3a83126f

d00432c0 <cameraMove>:
d00432c0:	b3a8      	cbz	r0, d004332e <cameraMove+0x6e>
d00432c2:	edd0 6a0b 	vldr	s13, [r0, #44]	; 0x2c
d00432c6:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
d00432ca:	edd0 7a0a 	vldr	s15, [r0, #40]	; 0x28
d00432ce:	ee20 7a87 	vmul.f32	s14, s1, s14
d00432d2:	edd0 5a06 	vldr	s11, [r0, #24]
d00432d6:	ee60 7aa7 	vmul.f32	s15, s1, s15
d00432da:	ed90 6a08 	vldr	s12, [r0, #32]
d00432de:	ee60 0aa6 	vmul.f32	s1, s1, s13
d00432e2:	edd0 6a07 	vldr	s13, [r0, #28]
d00432e6:	eea5 7a80 	vfma.f32	s14, s11, s0
d00432ea:	edd0 4a01 	vldr	s9, [r0, #4]
d00432ee:	eee6 7a80 	vfma.f32	s15, s13, s0
d00432f2:	ed90 5a02 	vldr	s10, [r0, #8]
d00432f6:	eee6 0a00 	vfma.f32	s1, s12, s0
d00432fa:	edd0 6a00 	vldr	s13, [r0]
d00432fe:	edd0 5a0c 	vldr	s11, [r0, #48]	; 0x30
d0043302:	ed90 6a0d 	vldr	s12, [r0, #52]	; 0x34
d0043306:	ee37 7a26 	vadd.f32	s14, s14, s13
d004330a:	edd0 6a0e 	vldr	s13, [r0, #56]	; 0x38
d004330e:	ee77 7aa4 	vadd.f32	s15, s15, s9
d0043312:	ee70 0a85 	vadd.f32	s1, s1, s10
d0043316:	eea5 7a81 	vfma.f32	s14, s11, s2
d004331a:	eee6 7a01 	vfma.f32	s15, s12, s2
d004331e:	eee6 0a81 	vfma.f32	s1, s13, s2
d0043322:	ed80 7a00 	vstr	s14, [r0]
d0043326:	edc0 7a01 	vstr	s15, [r0, #4]
d004332a:	edc0 0a02 	vstr	s1, [r0, #8]
d004332e:	4770      	bx	lr

d0043330 <normalizeEntity.part.0>:
d0043330:	edd0 0a05 	vldr	s1, [r0, #20]
d0043334:	ed90 1a06 	vldr	s2, [r0, #24]
d0043338:	ed90 0a04 	vldr	s0, [r0, #16]
d004333c:	b510      	push	{r4, lr}
d004333e:	4604      	mov	r4, r0
d0043340:	f7ff f8dc 	bl	d00424fc <vec3Normalize>
d0043344:	eeb0 7a60 	vmov.f32	s14, s1
d0043348:	eef0 7a41 	vmov.f32	s15, s2
d004334c:	ed84 0a04 	vstr	s0, [r4, #16]
d0043350:	ed94 0a07 	vldr	s0, [r4, #28]
d0043354:	ed84 7a05 	vstr	s14, [r4, #20]
d0043358:	edc4 7a06 	vstr	s15, [r4, #24]
d004335c:	edd4 0a08 	vldr	s1, [r4, #32]
d0043360:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0043364:	f7ff f8ca 	bl	d00424fc <vec3Normalize>
d0043368:	eef0 1a40 	vmov.f32	s3, s0
d004336c:	eeb0 2a60 	vmov.f32	s4, s1
d0043370:	ed94 0a04 	vldr	s0, [r4, #16]
d0043374:	eef0 2a41 	vmov.f32	s5, s2
d0043378:	edc4 0a08 	vstr	s1, [r4, #32]
d004337c:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d0043380:	edd4 0a05 	vldr	s1, [r4, #20]
d0043384:	ed94 1a06 	vldr	s2, [r4, #24]
d0043388:	edc4 1a07 	vstr	s3, [r4, #28]
d004338c:	f7ff f8a0 	bl	d00424d0 <vec3Cross>
d0043390:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0043394:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0043398:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d004339c:	f7ff f8ae 	bl	d00424fc <vec3Normalize>
d00433a0:	edd4 1a04 	vldr	s3, [r4, #16]
d00433a4:	ed94 2a05 	vldr	s4, [r4, #20]
d00433a8:	edd4 2a06 	vldr	s5, [r4, #24]
d00433ac:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d00433b0:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d00433b4:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d00433b8:	f7ff f88a 	bl	d00424d0 <vec3Cross>
d00433bc:	ed84 0a07 	vstr	s0, [r4, #28]
d00433c0:	edc4 0a08 	vstr	s1, [r4, #32]
d00433c4:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d00433c8:	f7ff f898 	bl	d00424fc <vec3Normalize>
d00433cc:	ed84 0a07 	vstr	s0, [r4, #28]
d00433d0:	edc4 0a08 	vstr	s1, [r4, #32]
d00433d4:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d00433d8:	bd10      	pop	{r4, pc}
d00433da:	bf00      	nop

d00433dc <meshComputeBoundsRadius>:
d00433dc:	b1f0      	cbz	r0, d004341c <meshComputeBoundsRadius+0x40>
d00433de:	6803      	ldr	r3, [r0, #0]
d00433e0:	b1e3      	cbz	r3, d004341c <meshComputeBoundsRadius+0x40>
d00433e2:	6842      	ldr	r2, [r0, #4]
d00433e4:	2a00      	cmp	r2, #0
d00433e6:	dd19      	ble.n	d004341c <meshComputeBoundsRadius+0x40>
d00433e8:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d00433ec:	ed9f 6a0d 	vldr	s12, [pc, #52]	; d0043424 <meshComputeBoundsRadius+0x48>
d00433f0:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d00433f4:	edd3 7a01 	vldr	s15, [r3, #4]
d00433f8:	330c      	adds	r3, #12
d00433fa:	ed53 6a03 	vldr	s13, [r3, #-12]
d00433fe:	ee67 7aa7 	vmul.f32	s15, s15, s15
d0043402:	ed13 7a01 	vldr	s14, [r3, #-4]
d0043406:	429a      	cmp	r2, r3
d0043408:	eee6 7aa6 	vfma.f32	s15, s13, s13
d004340c:	eee7 7a07 	vfma.f32	s15, s14, s14
d0043410:	fe86 6a27 	vmaxnm.f32	s12, s12, s15
d0043414:	d1ee      	bne.n	d00433f4 <meshComputeBoundsRadius+0x18>
d0043416:	eeb1 0ac6 	vsqrt.f32	s0, s12
d004341a:	4770      	bx	lr
d004341c:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0043424 <meshComputeBoundsRadius+0x48>
d0043420:	4770      	bx	lr
d0043422:	bf00      	nop
d0043424:	00000000 	.word	0x00000000

d0043428 <entityWorldSpawn>:
d0043428:	b4f0      	push	{r4, r5, r6, r7}
d004342a:	4d20      	ldr	r5, [pc, #128]	; (d00434ac <entityWorldSpawn+0x84>)
d004342c:	b084      	sub	sp, #16
d004342e:	2300      	movs	r3, #0
d0043430:	462a      	mov	r2, r5
d0043432:	ed8d 0a01 	vstr	s0, [sp, #4]
d0043436:	edcd 0a02 	vstr	s1, [sp, #8]
d004343a:	ed8d 1a03 	vstr	s2, [sp, #12]
d004343e:	e003      	b.n	d0043448 <entityWorldSpawn+0x20>
d0043440:	3301      	adds	r3, #1
d0043442:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d0043446:	d02b      	beq.n	d00434a0 <entityWorldSpawn+0x78>
d0043448:	f892 4034 	ldrb.w	r4, [r2, #52]	; 0x34
d004344c:	3260      	adds	r2, #96	; 0x60
d004344e:	2c00      	cmp	r4, #0
d0043450:	d1f6      	bne.n	d0043440 <entityWorldSpawn+0x18>
d0043452:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0043456:	4f16      	ldr	r7, [pc, #88]	; (d00434b0 <entityWorldSpawn+0x88>)
d0043458:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d004345c:	2600      	movs	r6, #0
d004345e:	eb05 1542 	add.w	r5, r5, r2, lsl #5
d0043462:	f240 1c01 	movw	ip, #257	; 0x101
d0043466:	eb07 1742 	add.w	r7, r7, r2, lsl #5
d004346a:	aa04      	add	r2, sp, #16
d004346c:	60e8      	str	r0, [r5, #12]
d004346e:	61e9      	str	r1, [r5, #28]
d0043470:	62e9      	str	r1, [r5, #44]	; 0x2c
d0043472:	61a9      	str	r1, [r5, #24]
d0043474:	622e      	str	r6, [r5, #32]
d0043476:	626e      	str	r6, [r5, #36]	; 0x24
d0043478:	62ae      	str	r6, [r5, #40]	; 0x28
d004347a:	632e      	str	r6, [r5, #48]	; 0x30
d004347c:	612e      	str	r6, [r5, #16]
d004347e:	616e      	str	r6, [r5, #20]
d0043480:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0043484:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d0043488:	4618      	mov	r0, r3
d004348a:	f8a7 c014 	strh.w	ip, [r7, #20]
d004348e:	f885 4036 	strb.w	r4, [r5, #54]	; 0x36
d0043492:	63ee      	str	r6, [r5, #60]	; 0x3c
d0043494:	642e      	str	r6, [r5, #64]	; 0x40
d0043496:	646e      	str	r6, [r5, #68]	; 0x44
d0043498:	63ae      	str	r6, [r5, #56]	; 0x38
d004349a:	b004      	add	sp, #16
d004349c:	bcf0      	pop	{r4, r5, r6, r7}
d004349e:	4770      	bx	lr
d00434a0:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d00434a4:	4618      	mov	r0, r3
d00434a6:	b004      	add	sp, #16
d00434a8:	bcf0      	pop	{r4, r5, r6, r7}
d00434aa:	4770      	bx	lr
d00434ac:	d012cd60 	.word	0xd012cd60
d00434b0:	d012cd80 	.word	0xd012cd80

d00434b4 <entityMoveForward>:
d00434b4:	28ff      	cmp	r0, #255	; 0xff
d00434b6:	d82b      	bhi.n	d0043510 <entityMoveForward+0x5c>
d00434b8:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d00434bc:	b510      	push	{r4, lr}
d00434be:	4c15      	ldr	r4, [pc, #84]	; (d0043514 <entityMoveForward+0x60>)
d00434c0:	b084      	sub	sp, #16
d00434c2:	eb04 1440 	add.w	r4, r4, r0, lsl #5
d00434c6:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d00434ca:	b1fb      	cbz	r3, d004350c <entityMoveForward+0x58>
d00434cc:	68e3      	ldr	r3, [r4, #12]
d00434ce:	b1eb      	cbz	r3, d004350c <entityMoveForward+0x58>
d00434d0:	eef0 1a40 	vmov.f32	s3, s0
d00434d4:	edd4 0a05 	vldr	s1, [r4, #20]
d00434d8:	ed94 0a04 	vldr	s0, [r4, #16]
d00434dc:	ed94 1a06 	vldr	s2, [r4, #24]
d00434e0:	f7fe ffe0 	bl	d00424a4 <vec3Scale>
d00434e4:	eef0 1a40 	vmov.f32	s3, s0
d00434e8:	eeb0 2a60 	vmov.f32	s4, s1
d00434ec:	ed94 0a00 	vldr	s0, [r4]
d00434f0:	eef0 2a41 	vmov.f32	s5, s2
d00434f4:	edd4 0a01 	vldr	s1, [r4, #4]
d00434f8:	ed94 1a02 	vldr	s2, [r4, #8]
d00434fc:	f7fe ffc8 	bl	d0042490 <vec3Add>
d0043500:	ed84 0a00 	vstr	s0, [r4]
d0043504:	edc4 0a01 	vstr	s1, [r4, #4]
d0043508:	ed84 1a02 	vstr	s2, [r4, #8]
d004350c:	b004      	add	sp, #16
d004350e:	bd10      	pop	{r4, pc}
d0043510:	4770      	bx	lr
d0043512:	bf00      	nop
d0043514:	d012cd60 	.word	0xd012cd60

d0043518 <entityTurnLocal>:
d0043518:	28ff      	cmp	r0, #255	; 0xff
d004351a:	d82c      	bhi.n	d0043576 <entityTurnLocal+0x5e>
d004351c:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0043520:	b510      	push	{r4, lr}
d0043522:	4c65      	ldr	r4, [pc, #404]	; (d00436b8 <entityTurnLocal+0x1a0>)
d0043524:	eb04 1440 	add.w	r4, r4, r0, lsl #5
d0043528:	ed2d 8b04 	vpush	{d8-d9}
d004352c:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0043530:	b1f3      	cbz	r3, d0043570 <entityTurnLocal+0x58>
d0043532:	68e3      	ldr	r3, [r4, #12]
d0043534:	b1e3      	cbz	r3, d0043570 <entityTurnLocal+0x58>
d0043536:	eeb5 0a40 	vcmp.f32	s0, #0.0
d004353a:	eeb0 9a40 	vmov.f32	s18, s0
d004353e:	eef0 8a60 	vmov.f32	s17, s1
d0043542:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043546:	eeb0 8a41 	vmov.f32	s16, s2
d004354a:	f040 8081 	bne.w	d0043650 <entityTurnLocal+0x138>
d004354e:	eef5 8a40 	vcmp.f32	s17, #0.0
d0043552:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043556:	d148      	bne.n	d00435ea <entityTurnLocal+0xd2>
d0043558:	eeb5 8a40 	vcmp.f32	s16, #0.0
d004355c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043560:	d10a      	bne.n	d0043578 <entityTurnLocal+0x60>
d0043562:	4620      	mov	r0, r4
d0043564:	ecbd 8b04 	vpop	{d8-d9}
d0043568:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d004356c:	f7ff bee0 	b.w	d0043330 <normalizeEntity.part.0>
d0043570:	ecbd 8b04 	vpop	{d8-d9}
d0043574:	bd10      	pop	{r4, pc}
d0043576:	4770      	bx	lr
d0043578:	ed94 0a07 	vldr	s0, [r4, #28]
d004357c:	eeb0 3a48 	vmov.f32	s6, s16
d0043580:	edd4 0a08 	vldr	s1, [r4, #32]
d0043584:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0043588:	edd4 1a04 	vldr	s3, [r4, #16]
d004358c:	ed94 2a05 	vldr	s4, [r4, #20]
d0043590:	edd4 2a06 	vldr	s5, [r4, #24]
d0043594:	f7ff f802 	bl	d004259c <rotateAroundAxis>
d0043598:	eef0 6a40 	vmov.f32	s13, s0
d004359c:	eeb0 7a60 	vmov.f32	s14, s1
d00435a0:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00435a4:	eef0 7a41 	vmov.f32	s15, s2
d00435a8:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00435ac:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00435b0:	eeb0 3a48 	vmov.f32	s6, s16
d00435b4:	edd4 1a04 	vldr	s3, [r4, #16]
d00435b8:	ed94 2a05 	vldr	s4, [r4, #20]
d00435bc:	edd4 2a06 	vldr	s5, [r4, #24]
d00435c0:	edc4 6a07 	vstr	s13, [r4, #28]
d00435c4:	ed84 7a08 	vstr	s14, [r4, #32]
d00435c8:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d00435cc:	f7fe ffe6 	bl	d004259c <rotateAroundAxis>
d00435d0:	4620      	mov	r0, r4
d00435d2:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d00435d6:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d00435da:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d00435de:	ecbd 8b04 	vpop	{d8-d9}
d00435e2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00435e6:	f7ff bea3 	b.w	d0043330 <normalizeEntity.part.0>
d00435ea:	ed94 0a04 	vldr	s0, [r4, #16]
d00435ee:	eeb0 3a68 	vmov.f32	s6, s17
d00435f2:	edd4 0a05 	vldr	s1, [r4, #20]
d00435f6:	ed94 1a06 	vldr	s2, [r4, #24]
d00435fa:	edd4 1a07 	vldr	s3, [r4, #28]
d00435fe:	ed94 2a08 	vldr	s4, [r4, #32]
d0043602:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d0043606:	f7fe ffc9 	bl	d004259c <rotateAroundAxis>
d004360a:	eef0 6a40 	vmov.f32	s13, s0
d004360e:	eeb0 7a60 	vmov.f32	s14, s1
d0043612:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0043616:	eef0 7a41 	vmov.f32	s15, s2
d004361a:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d004361e:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0043622:	eeb0 3a68 	vmov.f32	s6, s17
d0043626:	edd4 1a07 	vldr	s3, [r4, #28]
d004362a:	ed94 2a08 	vldr	s4, [r4, #32]
d004362e:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d0043632:	edc4 6a04 	vstr	s13, [r4, #16]
d0043636:	ed84 7a05 	vstr	s14, [r4, #20]
d004363a:	edc4 7a06 	vstr	s15, [r4, #24]
d004363e:	f7fe ffad 	bl	d004259c <rotateAroundAxis>
d0043642:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0043646:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d004364a:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d004364e:	e783      	b.n	d0043558 <entityTurnLocal+0x40>
d0043650:	eeb0 3a40 	vmov.f32	s6, s0
d0043654:	edd4 0a05 	vldr	s1, [r4, #20]
d0043658:	ed94 0a04 	vldr	s0, [r4, #16]
d004365c:	ed94 1a06 	vldr	s2, [r4, #24]
d0043660:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d0043664:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d0043668:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d004366c:	f7fe ff96 	bl	d004259c <rotateAroundAxis>
d0043670:	eef0 6a40 	vmov.f32	s13, s0
d0043674:	eeb0 7a60 	vmov.f32	s14, s1
d0043678:	ed94 0a07 	vldr	s0, [r4, #28]
d004367c:	eef0 7a41 	vmov.f32	s15, s2
d0043680:	edd4 0a08 	vldr	s1, [r4, #32]
d0043684:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0043688:	eeb0 3a49 	vmov.f32	s6, s18
d004368c:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d0043690:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d0043694:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d0043698:	edc4 6a04 	vstr	s13, [r4, #16]
d004369c:	ed84 7a05 	vstr	s14, [r4, #20]
d00436a0:	edc4 7a06 	vstr	s15, [r4, #24]
d00436a4:	f7fe ff7a 	bl	d004259c <rotateAroundAxis>
d00436a8:	ed84 0a07 	vstr	s0, [r4, #28]
d00436ac:	edc4 0a08 	vstr	s1, [r4, #32]
d00436b0:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d00436b4:	e74b      	b.n	d004354e <entityTurnLocal+0x36>
d00436b6:	bf00      	nop
d00436b8:	d012cd60 	.word	0xd012cd60

d00436bc <buildLightingCLUT>:
d00436bc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00436c0:	f1b2 0900 	subs.w	r9, r2, #0
d00436c4:	b085      	sub	sp, #20
d00436c6:	9c0e      	ldr	r4, [sp, #56]	; 0x38
d00436c8:	f340 8212 	ble.w	d0043af0 <buildLightingCLUT+0x434>
d00436cc:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00436d0:	4f24      	ldr	r7, [pc, #144]	; (d0043764 <buildLightingCLUT+0xa8>)
d00436d2:	eb09 0c49 	add.w	ip, r9, r9, lsl #1
d00436d6:	edd4 4a00 	vldr	s9, [r4]
d00436da:	ed94 5a01 	vldr	s10, [r4, #4]
d00436de:	eb09 0807 	add.w	r8, r9, r7
d00436e2:	edd4 5a02 	vldr	s11, [r4, #8]
d00436e6:	eb07 0e49 	add.w	lr, r7, r9, lsl #1
d00436ea:	ed94 6a03 	vldr	s12, [r4, #12]
d00436ee:	44bc      	add	ip, r7
d00436f0:	edd4 6a04 	vldr	s13, [r4, #16]
d00436f4:	eb07 0789 	add.w	r7, r7, r9, lsl #2
d00436f8:	3904      	subs	r1, #4
d00436fa:	ee77 4ae4 	vsub.f32	s9, s15, s9
d00436fe:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0043702:	ed9f 7a19 	vldr	s14, [pc, #100]	; d0043768 <buildLightingCLUT+0xac>
d0043706:	ee77 5ae5 	vsub.f32	s11, s15, s11
d004370a:	f100 067c 	add.w	r6, r0, #124	; 0x7c
d004370e:	ee37 6ac6 	vsub.f32	s12, s15, s12
d0043712:	eb00 0888 	add.w	r8, r0, r8, lsl #2
d0043716:	ee77 6ae6 	vsub.f32	s13, s15, s13
d004371a:	eb00 0e8e 	add.w	lr, r0, lr, lsl #2
d004371e:	eb00 0c8c 	add.w	ip, r0, ip, lsl #2
d0043722:	f3c3 4507 	ubfx	r5, r3, #16, #8
d0043726:	eb00 0787 	add.w	r7, r0, r7, lsl #2
d004372a:	f3c3 2007 	ubfx	r0, r3, #8, #8
d004372e:	eb01 0989 	add.w	r9, r1, r9, lsl #2
d0043732:	fec4 4a87 	vmaxnm.f32	s9, s9, s14
d0043736:	0e1c      	lsrs	r4, r3, #24
d0043738:	fe85 5a07 	vmaxnm.f32	s10, s10, s14
d004373c:	b2da      	uxtb	r2, r3
d004373e:	fec5 5a87 	vmaxnm.f32	s11, s11, s14
d0043742:	fe86 6a07 	vmaxnm.f32	s12, s12, s14
d0043746:	fec6 6a87 	vmaxnm.f32	s13, s13, s14
d004374a:	fec4 4ae7 	vminnm.f32	s9, s9, s15
d004374e:	fe85 5a67 	vminnm.f32	s10, s10, s15
d0043752:	fec5 5ae7 	vminnm.f32	s11, s11, s15
d0043756:	fe86 6a67 	vminnm.f32	s12, s12, s15
d004375a:	fec6 6ae7 	vminnm.f32	s13, s13, s15
d004375e:	9601      	str	r6, [sp, #4]
d0043760:	e004      	b.n	d004376c <buildLightingCLUT+0xb0>
d0043762:	bf00      	nop
d0043764:	4000001f 	.word	0x4000001f
d0043768:	00000000 	.word	0x00000000
d004376c:	f851 3f04 	ldr.w	r3, [r1, #4]!
d0043770:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0043774:	0e1e      	lsrs	r6, r3, #24
d0043776:	fa5f fa83 	uxtb.w	sl, r3
d004377a:	4549      	cmp	r1, r9
d004377c:	ee07 6a10 	vmov	s14, r6
d0043780:	eba5 060b 	sub.w	r6, r5, fp
d0043784:	ee04 ba10 	vmov	s8, fp
d0043788:	ee07 6a90 	vmov	s15, r6
d004378c:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0043790:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0043794:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0043798:	ee02 6a10 	vmov	s4, r6
d004379c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00437a0:	eba2 060a 	sub.w	r6, r2, sl
d00437a4:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00437a8:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d00437ac:	ee04 aa10 	vmov	s8, sl
d00437b0:	ee02 6a90 	vmov	s5, r6
d00437b4:	eba0 0603 	sub.w	r6, r0, r3
d00437b8:	eee4 3aa7 	vfma.f32	s7, s9, s15
d00437bc:	ee07 3a90 	vmov	s15, r3
d00437c0:	eea4 7a82 	vfma.f32	s14, s9, s4
d00437c4:	ee03 6a10 	vmov	s6, r6
d00437c8:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d00437cc:	9e01      	ldr	r6, [sp, #4]
d00437ce:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00437d2:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d00437d6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00437da:	eea4 4aa2 	vfma.f32	s8, s9, s5
d00437de:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d00437e2:	eee4 7a83 	vfma.f32	s15, s9, s6
d00437e6:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00437ea:	edcd 3a02 	vstr	s7, [sp, #8]
d00437ee:	f89d a008 	ldrb.w	sl, [sp, #8]
d00437f2:	ee17 3a10 	vmov	r3, s14
d00437f6:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d00437fa:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d00437fe:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0043802:	ed8d 7a02 	vstr	s14, [sp, #8]
d0043806:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d004380a:	f89d b008 	ldrb.w	fp, [sp, #8]
d004380e:	edcd 7a03 	vstr	s15, [sp, #12]
d0043812:	ea43 030b 	orr.w	r3, r3, fp
d0043816:	f89d a00c 	ldrb.w	sl, [sp, #12]
d004381a:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d004381e:	f846 3f04 	str.w	r3, [r6, #4]!
d0043822:	680b      	ldr	r3, [r1, #0]
d0043824:	9601      	str	r6, [sp, #4]
d0043826:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d004382a:	ea4f 6613 	mov.w	r6, r3, lsr #24
d004382e:	fa5f fa83 	uxtb.w	sl, r3
d0043832:	ee07 6a10 	vmov	s14, r6
d0043836:	eba5 060b 	sub.w	r6, r5, fp
d004383a:	ee04 ba10 	vmov	s8, fp
d004383e:	ee07 6a90 	vmov	s15, r6
d0043842:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0043846:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d004384a:	f3c3 2307 	ubfx	r3, r3, #8, #8
d004384e:	ee02 6a10 	vmov	s4, r6
d0043852:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0043856:	eba2 060a 	sub.w	r6, r2, sl
d004385a:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004385e:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0043862:	ee04 aa10 	vmov	s8, sl
d0043866:	ee02 6a90 	vmov	s5, r6
d004386a:	eba0 0603 	sub.w	r6, r0, r3
d004386e:	eee5 3a27 	vfma.f32	s7, s10, s15
d0043872:	ee07 3a90 	vmov	s15, r3
d0043876:	eea5 7a02 	vfma.f32	s14, s10, s4
d004387a:	ee03 6a10 	vmov	s6, r6
d004387e:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0043882:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0043886:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d004388a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004388e:	eea5 4a22 	vfma.f32	s8, s10, s5
d0043892:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0043896:	eee5 7a03 	vfma.f32	s15, s10, s6
d004389a:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d004389e:	edcd 3a02 	vstr	s7, [sp, #8]
d00438a2:	f89d a008 	ldrb.w	sl, [sp, #8]
d00438a6:	ee17 3a10 	vmov	r3, s14
d00438aa:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d00438ae:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d00438b2:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00438b6:	ed8d 7a02 	vstr	s14, [sp, #8]
d00438ba:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d00438be:	f89d b008 	ldrb.w	fp, [sp, #8]
d00438c2:	edcd 7a03 	vstr	s15, [sp, #12]
d00438c6:	ea43 030b 	orr.w	r3, r3, fp
d00438ca:	f89d a00c 	ldrb.w	sl, [sp, #12]
d00438ce:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d00438d2:	f848 3f04 	str.w	r3, [r8, #4]!
d00438d6:	680b      	ldr	r3, [r1, #0]
d00438d8:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d00438dc:	ea4f 6613 	mov.w	r6, r3, lsr #24
d00438e0:	fa5f fa83 	uxtb.w	sl, r3
d00438e4:	ee07 6a10 	vmov	s14, r6
d00438e8:	eba5 060b 	sub.w	r6, r5, fp
d00438ec:	ee04 ba10 	vmov	s8, fp
d00438f0:	ee07 6a90 	vmov	s15, r6
d00438f4:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d00438f8:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d00438fc:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0043900:	ee02 6a10 	vmov	s4, r6
d0043904:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0043908:	eba2 060a 	sub.w	r6, r2, sl
d004390c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0043910:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0043914:	ee04 aa10 	vmov	s8, sl
d0043918:	ee02 6a90 	vmov	s5, r6
d004391c:	eba0 0603 	sub.w	r6, r0, r3
d0043920:	eee5 3aa7 	vfma.f32	s7, s11, s15
d0043924:	ee07 3a90 	vmov	s15, r3
d0043928:	eea5 7a82 	vfma.f32	s14, s11, s4
d004392c:	ee03 6a10 	vmov	s6, r6
d0043930:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0043934:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0043938:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d004393c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0043940:	eea5 4aa2 	vfma.f32	s8, s11, s5
d0043944:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0043948:	eee5 7a83 	vfma.f32	s15, s11, s6
d004394c:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0043950:	edcd 3a02 	vstr	s7, [sp, #8]
d0043954:	f89d a008 	ldrb.w	sl, [sp, #8]
d0043958:	ee17 3a10 	vmov	r3, s14
d004395c:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0043960:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0043964:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0043968:	ed8d 7a02 	vstr	s14, [sp, #8]
d004396c:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0043970:	f89d b008 	ldrb.w	fp, [sp, #8]
d0043974:	edcd 7a03 	vstr	s15, [sp, #12]
d0043978:	ea43 030b 	orr.w	r3, r3, fp
d004397c:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0043980:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0043984:	f84e 3f04 	str.w	r3, [lr, #4]!
d0043988:	680b      	ldr	r3, [r1, #0]
d004398a:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d004398e:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0043992:	fa5f fa83 	uxtb.w	sl, r3
d0043996:	ee07 6a10 	vmov	s14, r6
d004399a:	eba5 060b 	sub.w	r6, r5, fp
d004399e:	ee04 ba10 	vmov	s8, fp
d00439a2:	ee07 6a90 	vmov	s15, r6
d00439a6:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d00439aa:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d00439ae:	f3c3 2307 	ubfx	r3, r3, #8, #8
d00439b2:	ee02 6a10 	vmov	s4, r6
d00439b6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00439ba:	eba2 060a 	sub.w	r6, r2, sl
d00439be:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00439c2:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d00439c6:	ee04 aa10 	vmov	s8, sl
d00439ca:	ee02 6a90 	vmov	s5, r6
d00439ce:	eba0 0603 	sub.w	r6, r0, r3
d00439d2:	eee6 3a27 	vfma.f32	s7, s12, s15
d00439d6:	ee07 3a90 	vmov	s15, r3
d00439da:	eea6 7a02 	vfma.f32	s14, s12, s4
d00439de:	ee03 6a10 	vmov	s6, r6
d00439e2:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d00439e6:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00439ea:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d00439ee:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00439f2:	eea6 4a22 	vfma.f32	s8, s12, s5
d00439f6:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d00439fa:	eee6 7a03 	vfma.f32	s15, s12, s6
d00439fe:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0043a02:	edcd 3a02 	vstr	s7, [sp, #8]
d0043a06:	f89d a008 	ldrb.w	sl, [sp, #8]
d0043a0a:	ee17 3a10 	vmov	r3, s14
d0043a0e:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0043a12:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0043a16:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0043a1a:	ed8d 7a02 	vstr	s14, [sp, #8]
d0043a1e:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0043a22:	f89d b008 	ldrb.w	fp, [sp, #8]
d0043a26:	edcd 7a03 	vstr	s15, [sp, #12]
d0043a2a:	ea43 030b 	orr.w	r3, r3, fp
d0043a2e:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0043a32:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0043a36:	f84c 3f04 	str.w	r3, [ip, #4]!
d0043a3a:	680b      	ldr	r3, [r1, #0]
d0043a3c:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0043a40:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0043a44:	fa5f fa83 	uxtb.w	sl, r3
d0043a48:	ee07 6a10 	vmov	s14, r6
d0043a4c:	eba5 060b 	sub.w	r6, r5, fp
d0043a50:	ee04 ba10 	vmov	s8, fp
d0043a54:	ee07 6a90 	vmov	s15, r6
d0043a58:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0043a5c:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0043a60:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0043a64:	ee02 6a10 	vmov	s4, r6
d0043a68:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0043a6c:	eba2 060a 	sub.w	r6, r2, sl
d0043a70:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0043a74:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0043a78:	ee04 aa10 	vmov	s8, sl
d0043a7c:	ee02 6a90 	vmov	s5, r6
d0043a80:	eba0 0603 	sub.w	r6, r0, r3
d0043a84:	eee6 3aa7 	vfma.f32	s7, s13, s15
d0043a88:	ee07 3a90 	vmov	s15, r3
d0043a8c:	eea6 7a82 	vfma.f32	s14, s13, s4
d0043a90:	ee03 6a10 	vmov	s6, r6
d0043a94:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0043a98:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0043a9c:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0043aa0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0043aa4:	eea6 4aa2 	vfma.f32	s8, s13, s5
d0043aa8:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0043aac:	eee6 7a83 	vfma.f32	s15, s13, s6
d0043ab0:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0043ab4:	edcd 3a02 	vstr	s7, [sp, #8]
d0043ab8:	f89d a008 	ldrb.w	sl, [sp, #8]
d0043abc:	ee17 3a10 	vmov	r3, s14
d0043ac0:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0043ac4:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0043ac8:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0043acc:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0043ad0:	ed8d 7a02 	vstr	s14, [sp, #8]
d0043ad4:	f89d b008 	ldrb.w	fp, [sp, #8]
d0043ad8:	edcd 7a03 	vstr	s15, [sp, #12]
d0043adc:	ea43 030b 	orr.w	r3, r3, fp
d0043ae0:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0043ae4:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0043ae8:	f847 3f04 	str.w	r3, [r7, #4]!
d0043aec:	f47f ae3e 	bne.w	d004376c <buildLightingCLUT+0xb0>
d0043af0:	b005      	add	sp, #20
d0043af2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0043af6:	bf00      	nop

d0043af8 <brightnessToShadeF>:
d0043af8:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0043afc:	eddf 7a09 	vldr	s15, [pc, #36]	; d0043b24 <brightnessToShadeF+0x2c>
d0043b00:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d0043b04:	eef7 6a08 	vmov.f32	s13, #120	; 0x3fc00000  1.5
d0043b08:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d0043b0c:	fec0 7a47 	vminnm.f32	s15, s0, s14
d0043b10:	eeb1 0a04 	vmov.f32	s0, #20	; 0x40a00000  5.0
d0043b14:	eee7 6ac6 	vfms.f32	s13, s15, s12
d0043b18:	eea6 7ae7 	vfms.f32	s14, s13, s15
d0043b1c:	ee27 0a00 	vmul.f32	s0, s14, s0
d0043b20:	4770      	bx	lr
d0043b22:	bf00      	nop
d0043b24:	00000000 	.word	0x00000000

d0043b28 <lightsGet>:
d0043b28:	4800      	ldr	r0, [pc, #0]	; (d0043b2c <lightsGet+0x4>)
d0043b2a:	4770      	bx	lr
d0043b2c:	d0094680 	.word	0xd0094680

d0043b30 <lightsGetCount>:
d0043b30:	4b01      	ldr	r3, [pc, #4]	; (d0043b38 <lightsGetCount+0x8>)
d0043b32:	6818      	ldr	r0, [r3, #0]
d0043b34:	4770      	bx	lr
d0043b36:	bf00      	nop
d0043b38:	d0094660 	.word	0xd0094660

d0043b3c <lightsClear>:
d0043b3c:	4b01      	ldr	r3, [pc, #4]	; (d0043b44 <lightsClear+0x8>)
d0043b3e:	2200      	movs	r2, #0
d0043b40:	601a      	str	r2, [r3, #0]
d0043b42:	4770      	bx	lr
d0043b44:	d0094660 	.word	0xd0094660

d0043b48 <addDirectionalLight>:
d0043b48:	b5f0      	push	{r4, r5, r6, r7, lr}
d0043b4a:	4f15      	ldr	r7, [pc, #84]	; (d0043ba0 <addDirectionalLight+0x58>)
d0043b4c:	683d      	ldr	r5, [r7, #0]
d0043b4e:	2d07      	cmp	r5, #7
d0043b50:	ed2d 8b02 	vpush	{d8}
d0043b54:	b085      	sub	sp, #20
d0043b56:	dc1f      	bgt.n	d0043b98 <addDirectionalLight+0x50>
d0043b58:	4912      	ldr	r1, [pc, #72]	; (d0043ba4 <addDirectionalLight+0x5c>)
d0043b5a:	2300      	movs	r3, #0
d0043b5c:	4606      	mov	r6, r0
d0043b5e:	01aa      	lsls	r2, r5, #6
d0043b60:	eb01 1485 	add.w	r4, r1, r5, lsl #6
d0043b64:	2001      	movs	r0, #1
d0043b66:	eeb0 8a61 	vmov.f32	s16, s3
d0043b6a:	6063      	str	r3, [r4, #4]
d0043b6c:	60a3      	str	r3, [r4, #8]
d0043b6e:	60e3      	str	r3, [r4, #12]
d0043b70:	5488      	strb	r0, [r1, r2]
d0043b72:	f7fe fcc3 	bl	d00424fc <vec3Normalize>
d0043b76:	683b      	ldr	r3, [r7, #0]
d0043b78:	ed84 8a07 	vstr	s16, [r4, #28]
d0043b7c:	3301      	adds	r3, #1
d0043b7e:	62e6      	str	r6, [r4, #44]	; 0x2c
d0043b80:	ed84 0a04 	vstr	s0, [r4, #16]
d0043b84:	edc4 0a05 	vstr	s1, [r4, #20]
d0043b88:	ed84 1a06 	vstr	s2, [r4, #24]
d0043b8c:	603b      	str	r3, [r7, #0]
d0043b8e:	4628      	mov	r0, r5
d0043b90:	b005      	add	sp, #20
d0043b92:	ecbd 8b02 	vpop	{d8}
d0043b96:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0043b98:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0043b9c:	e7f7      	b.n	d0043b8e <addDirectionalLight+0x46>
d0043b9e:	bf00      	nop
d0043ba0:	d0094660 	.word	0xd0094660
d0043ba4:	d0094680 	.word	0xd0094680

d0043ba8 <setDefaultRenderMode>:
d0043ba8:	2300      	movs	r3, #0
d0043baa:	4803      	ldr	r0, [pc, #12]	; (d0043bb8 <setDefaultRenderMode+0x10>)
d0043bac:	4903      	ldr	r1, [pc, #12]	; (d0043bbc <setDefaultRenderMode+0x14>)
d0043bae:	4a04      	ldr	r2, [pc, #16]	; (d0043bc0 <setDefaultRenderMode+0x18>)
d0043bb0:	6003      	str	r3, [r0, #0]
d0043bb2:	600b      	str	r3, [r1, #0]
d0043bb4:	6013      	str	r3, [r2, #0]
d0043bb6:	4770      	bx	lr
d0043bb8:	d00a0880 	.word	0xd00a0880
d0043bbc:	d01208a0 	.word	0xd01208a0
d0043bc0:	d01208a4 	.word	0xd01208a4

d0043bc4 <enableFlatMode>:
d0043bc4:	4b01      	ldr	r3, [pc, #4]	; (d0043bcc <enableFlatMode+0x8>)
d0043bc6:	6018      	str	r0, [r3, #0]
d0043bc8:	4770      	bx	lr
d0043bca:	bf00      	nop
d0043bcc:	d00a0880 	.word	0xd00a0880

d0043bd0 <clipTriangleToFrustum>:
d0043bd0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0043bd4:	ed2d 8b02 	vpush	{d8}
d0043bd8:	b0ba      	sub	sp, #232	; 0xe8
d0043bda:	ed91 7a10 	vldr	s14, [r1, #64]	; 0x40
d0043bde:	4605      	mov	r5, r0
d0043be0:	aa07      	add	r2, sp, #28
d0043be2:	ab04      	add	r3, sp, #16
d0043be4:	ed8d 0a07 	vstr	s0, [sp, #28]
d0043be8:	ac0a      	add	r4, sp, #40	; 0x28
d0043bea:	edcd 0a08 	vstr	s1, [sp, #32]
d0043bee:	af0d      	add	r7, sp, #52	; 0x34
d0043bf0:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d0043bf4:	ae01      	add	r6, sp, #4
d0043bf6:	edcd 1a04 	vstr	s3, [sp, #16]
d0043bfa:	ed8d 2a05 	vstr	s4, [sp, #20]
d0043bfe:	edcd 2a06 	vstr	s5, [sp, #24]
d0043c02:	ed8d 4a03 	vstr	s8, [sp, #12]
d0043c06:	ed8d 3a01 	vstr	s6, [sp, #4]
d0043c0a:	edcd 3a02 	vstr	s7, [sp, #8]
d0043c0e:	ca07      	ldmia	r2, {r0, r1, r2}
d0043c10:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d0043c14:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0043c18:	ab10      	add	r3, sp, #64	; 0x40
d0043c1a:	ed9d 6a0a 	vldr	s12, [sp, #40]	; 0x28
d0043c1e:	e887 0007 	stmia.w	r7, {r0, r1, r2}
d0043c22:	e896 0007 	ldmia.w	r6, {r0, r1, r2}
d0043c26:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0043c2a:	ed9d 4a12 	vldr	s8, [sp, #72]	; 0x48
d0043c2e:	eddd 5a10 	vldr	s11, [sp, #64]	; 0x40
d0043c32:	ee34 5a47 	vsub.f32	s10, s8, s14
d0043c36:	eddd 7a0c 	vldr	s15, [sp, #48]	; 0x30
d0043c3a:	eddd 1a11 	vldr	s3, [sp, #68]	; 0x44
d0043c3e:	ee77 4ac7 	vsub.f32	s9, s15, s14
d0043c42:	eddd 6a0b 	vldr	s13, [sp, #44]	; 0x2c
d0043c46:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d0043c4a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043c4e:	eef5 4ac0 	vcmpe.f32	s9, #0.0
d0043c52:	bfac      	ite	ge
d0043c54:	2101      	movge	r1, #1
d0043c56:	2100      	movlt	r1, #0
d0043c58:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043c5c:	bfac      	ite	ge
d0043c5e:	2001      	movge	r0, #1
d0043c60:	2000      	movlt	r0, #0
d0043c62:	2900      	cmp	r1, #0
d0043c64:	f000 825d 	beq.w	d0044122 <clipTriangleToFrustum+0x552>
d0043c68:	2800      	cmp	r0, #0
d0043c6a:	f000 825a 	beq.w	d0044122 <clipTriangleToFrustum+0x552>
d0043c6e:	2301      	movs	r3, #1
d0043c70:	ed8d 6a22 	vstr	s12, [sp, #136]	; 0x88
d0043c74:	edcd 6a23 	vstr	s13, [sp, #140]	; 0x8c
d0043c78:	edcd 7a24 	vstr	s15, [sp, #144]	; 0x90
d0043c7c:	eddd 3a0f 	vldr	s7, [sp, #60]	; 0x3c
d0043c80:	f000 0201 	and.w	r2, r0, #1
d0043c84:	ed9d 2a0d 	vldr	s4, [sp, #52]	; 0x34
d0043c88:	ee33 3ac7 	vsub.f32	s6, s7, s14
d0043c8c:	eddd 2a0e 	vldr	s5, [sp, #56]	; 0x38
d0043c90:	eeb5 3ac0 	vcmpe.f32	s6, #0.0
d0043c94:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043c98:	bfb6      	itet	lt
d0043c9a:	2200      	movlt	r2, #0
d0043c9c:	2601      	movge	r6, #1
d0043c9e:	2600      	movlt	r6, #0
d0043ca0:	2a00      	cmp	r2, #0
d0043ca2:	f000 8277 	beq.w	d0044194 <clipTriangleToFrustum+0x5c4>
d0043ca6:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0043caa:	ae22      	add	r6, sp, #136	; 0x88
d0043cac:	3301      	adds	r3, #1
d0043cae:	eb06 0080 	add.w	r0, r6, r0, lsl #2
d0043cb2:	ed80 2a00 	vstr	s4, [r0]
d0043cb6:	edc0 2a01 	vstr	s5, [r0, #4]
d0043cba:	edc0 3a02 	vstr	s7, [r0, #8]
d0043cbe:	2a00      	cmp	r2, #0
d0043cc0:	f000 828e 	beq.w	d00441e0 <clipTriangleToFrustum+0x610>
d0043cc4:	2900      	cmp	r1, #0
d0043cc6:	f000 828b 	beq.w	d00441e0 <clipTriangleToFrustum+0x610>
d0043cca:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0043cce:	a922      	add	r1, sp, #136	; 0x88
d0043cd0:	3301      	adds	r3, #1
d0043cd2:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d0043cd6:	edc2 5a00 	vstr	s11, [r2]
d0043cda:	edc2 1a01 	vstr	s3, [r2, #4]
d0043cde:	ed82 4a02 	vstr	s8, [r2, #8]
d0043ce2:	2b02      	cmp	r3, #2
d0043ce4:	f340 8216 	ble.w	d0044114 <clipTriangleToFrustum+0x544>
d0043ce8:	eb03 0643 	add.w	r6, r3, r3, lsl #1
d0043cec:	a822      	add	r0, sp, #136	; 0x88
d0043cee:	2300      	movs	r3, #0
d0043cf0:	00b6      	lsls	r6, r6, #2
d0043cf2:	4601      	mov	r1, r0
d0043cf4:	4607      	mov	r7, r0
d0043cf6:	f1a6 020c 	sub.w	r2, r6, #12
d0043cfa:	4406      	add	r6, r0
d0043cfc:	4402      	add	r2, r0
d0043cfe:	ed92 7a00 	vldr	s14, [r2]
d0043d02:	edd2 7a02 	vldr	s15, [r2, #8]
d0043d06:	ed92 6a01 	vldr	s12, [r2, #4]
d0043d0a:	ee77 6a27 	vadd.f32	s13, s14, s15
d0043d0e:	e009      	b.n	d0043d24 <clipTriangleToFrustum+0x154>
d0043d10:	3301      	adds	r3, #1
d0043d12:	ed82 7a00 	vstr	s14, [r2]
d0043d16:	ed82 6a01 	vstr	s12, [r2, #4]
d0043d1a:	edc2 7a02 	vstr	s15, [r2, #8]
d0043d1e:	310c      	adds	r1, #12
d0043d20:	428e      	cmp	r6, r1
d0043d22:	d04e      	beq.n	d0043dc2 <clipTriangleToFrustum+0x1f2>
d0043d24:	eeb0 4a47 	vmov.f32	s8, s14
d0043d28:	ed91 7a00 	vldr	s14, [r1]
d0043d2c:	eeb0 5a67 	vmov.f32	s10, s15
d0043d30:	edd1 7a02 	vldr	s15, [r1, #8]
d0043d34:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043d38:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0043d3c:	eef0 5a66 	vmov.f32	s11, s13
d0043d40:	ee77 6a27 	vadd.f32	s13, s14, s15
d0043d44:	eb04 0282 	add.w	r2, r4, r2, lsl #2
d0043d48:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043d4c:	eef0 4a46 	vmov.f32	s9, s12
d0043d50:	ed91 6a01 	vldr	s12, [r1, #4]
d0043d54:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043d58:	bfac      	ite	ge
d0043d5a:	2701      	movge	r7, #1
d0043d5c:	2700      	movlt	r7, #0
d0043d5e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043d62:	bfac      	ite	ge
d0043d64:	f04f 0c01 	movge.w	ip, #1
d0043d68:	f04f 0c00 	movlt.w	ip, #0
d0043d6c:	b117      	cbz	r7, d0043d74 <clipTriangleToFrustum+0x1a4>
d0043d6e:	f1bc 0f00 	cmp.w	ip, #0
d0043d72:	d1cd      	bne.n	d0043d10 <clipTriangleToFrustum+0x140>
d0043d74:	eef5 6a40 	vcmp.f32	s13, #0.0
d0043d78:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0043d7c:	ee75 1ae6 	vsub.f32	s3, s11, s13
d0043d80:	ee37 2a44 	vsub.f32	s4, s14, s8
d0043d84:	eb04 0282 	add.w	r2, r4, r2, lsl #2
d0043d88:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043d8c:	ee76 2a64 	vsub.f32	s5, s12, s9
d0043d90:	ee37 3ac5 	vsub.f32	s6, s15, s10
d0043d94:	f140 818f 	bpl.w	d00440b6 <clipTriangleToFrustum+0x4e6>
d0043d98:	2f00      	cmp	r7, #0
d0043d9a:	f000 818c 	beq.w	d00440b6 <clipTriangleToFrustum+0x4e6>
d0043d9e:	eec5 3aa1 	vdiv.f32	s7, s11, s3
d0043da2:	310c      	adds	r1, #12
d0043da4:	3301      	adds	r3, #1
d0043da6:	428e      	cmp	r6, r1
d0043da8:	eea2 4a23 	vfma.f32	s8, s4, s7
d0043dac:	eee2 4aa3 	vfma.f32	s9, s5, s7
d0043db0:	eea3 5a23 	vfma.f32	s10, s6, s7
d0043db4:	ed82 4a00 	vstr	s8, [r2]
d0043db8:	edc2 4a01 	vstr	s9, [r2, #4]
d0043dbc:	ed82 5a02 	vstr	s10, [r2, #8]
d0043dc0:	d1b0      	bne.n	d0043d24 <clipTriangleToFrustum+0x154>
d0043dc2:	2b02      	cmp	r3, #2
d0043dc4:	f340 81a6 	ble.w	d0044114 <clipTriangleToFrustum+0x544>
d0043dc8:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0043dcc:	4626      	mov	r6, r4
d0043dce:	4627      	mov	r7, r4
d0043dd0:	2200      	movs	r2, #0
d0043dd2:	009b      	lsls	r3, r3, #2
d0043dd4:	f1a3 010c 	sub.w	r1, r3, #12
d0043dd8:	4423      	add	r3, r4
d0043dda:	4421      	add	r1, r4
d0043ddc:	edd1 7a00 	vldr	s15, [r1]
d0043de0:	ed91 7a02 	vldr	s14, [r1, #8]
d0043de4:	ed91 6a01 	vldr	s12, [r1, #4]
d0043de8:	ee77 6a67 	vsub.f32	s13, s14, s15
d0043dec:	e009      	b.n	d0043e02 <clipTriangleToFrustum+0x232>
d0043dee:	3201      	adds	r2, #1
d0043df0:	edc1 7a00 	vstr	s15, [r1]
d0043df4:	ed81 6a01 	vstr	s12, [r1, #4]
d0043df8:	ed81 7a02 	vstr	s14, [r1, #8]
d0043dfc:	370c      	adds	r7, #12
d0043dfe:	42bb      	cmp	r3, r7
d0043e00:	d059      	beq.n	d0043eb6 <clipTriangleToFrustum+0x2e6>
d0043e02:	eeb0 4a67 	vmov.f32	s8, s15
d0043e06:	edd7 7a00 	vldr	s15, [r7]
d0043e0a:	eeb0 5a47 	vmov.f32	s10, s14
d0043e0e:	ed97 7a02 	vldr	s14, [r7, #8]
d0043e12:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043e16:	f10d 0c88 	add.w	ip, sp, #136	; 0x88
d0043e1a:	eef0 5a66 	vmov.f32	s11, s13
d0043e1e:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0043e22:	ee77 6a67 	vsub.f32	s13, s14, s15
d0043e26:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043e2a:	eb0c 0181 	add.w	r1, ip, r1, lsl #2
d0043e2e:	eef0 4a46 	vmov.f32	s9, s12
d0043e32:	ed97 6a01 	vldr	s12, [r7, #4]
d0043e36:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043e3a:	bfac      	ite	ge
d0043e3c:	f04f 0c01 	movge.w	ip, #1
d0043e40:	f04f 0c00 	movlt.w	ip, #0
d0043e44:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043e48:	bfac      	ite	ge
d0043e4a:	f04f 0e01 	movge.w	lr, #1
d0043e4e:	f04f 0e00 	movlt.w	lr, #0
d0043e52:	f1bc 0f00 	cmp.w	ip, #0
d0043e56:	d002      	beq.n	d0043e5e <clipTriangleToFrustum+0x28e>
d0043e58:	f1be 0f00 	cmp.w	lr, #0
d0043e5c:	d1c7      	bne.n	d0043dee <clipTriangleToFrustum+0x21e>
d0043e5e:	eef5 6a40 	vcmp.f32	s13, #0.0
d0043e62:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0043e66:	ee77 3aa5 	vadd.f32	s7, s15, s11
d0043e6a:	f10d 0888 	add.w	r8, sp, #136	; 0x88
d0043e6e:	ee77 1ac4 	vsub.f32	s3, s15, s8
d0043e72:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043e76:	eb08 0181 	add.w	r1, r8, r1, lsl #2
d0043e7a:	ee36 2a64 	vsub.f32	s4, s12, s9
d0043e7e:	ee73 3ac7 	vsub.f32	s7, s7, s14
d0043e82:	ee77 2a45 	vsub.f32	s5, s14, s10
d0043e86:	f140 8268 	bpl.w	d004435a <clipTriangleToFrustum+0x78a>
d0043e8a:	f1bc 0f00 	cmp.w	ip, #0
d0043e8e:	f000 8264 	beq.w	d004435a <clipTriangleToFrustum+0x78a>
d0043e92:	ee85 3aa3 	vdiv.f32	s6, s11, s7
d0043e96:	370c      	adds	r7, #12
d0043e98:	3201      	adds	r2, #1
d0043e9a:	42bb      	cmp	r3, r7
d0043e9c:	eea1 4a83 	vfma.f32	s8, s3, s6
d0043ea0:	eee2 4a03 	vfma.f32	s9, s4, s6
d0043ea4:	eea2 5a83 	vfma.f32	s10, s5, s6
d0043ea8:	ed81 4a00 	vstr	s8, [r1]
d0043eac:	edc1 4a01 	vstr	s9, [r1, #4]
d0043eb0:	ed81 5a02 	vstr	s10, [r1, #8]
d0043eb4:	d1a5      	bne.n	d0043e02 <clipTriangleToFrustum+0x232>
d0043eb6:	2a02      	cmp	r2, #2
d0043eb8:	f340 812c 	ble.w	d0044114 <clipTriangleToFrustum+0x544>
d0043ebc:	eb02 0342 	add.w	r3, r2, r2, lsl #1
d0043ec0:	af22      	add	r7, sp, #136	; 0x88
d0043ec2:	eddf 6add 	vldr	s13, [pc, #884]	; d0044238 <clipTriangleToFrustum+0x668>
d0043ec6:	2200      	movs	r2, #0
d0043ec8:	009b      	lsls	r3, r3, #2
d0043eca:	eef0 2a66 	vmov.f32	s5, s13
d0043ece:	f1a3 010c 	sub.w	r1, r3, #12
d0043ed2:	443b      	add	r3, r7
d0043ed4:	4439      	add	r1, r7
d0043ed6:	edd1 7a01 	vldr	s15, [r1, #4]
d0043eda:	ed91 7a02 	vldr	s14, [r1, #8]
d0043ede:	eef0 5a67 	vmov.f32	s11, s15
d0043ee2:	ed91 6a00 	vldr	s12, [r1]
d0043ee6:	eed7 5a26 	vfnms.f32	s11, s14, s13
d0043eea:	eef0 6a65 	vmov.f32	s13, s11
d0043eee:	e00c      	b.n	d0043f0a <clipTriangleToFrustum+0x33a>
d0043ef0:	f1bc 0f00 	cmp.w	ip, #0
d0043ef4:	d031      	beq.n	d0043f5a <clipTriangleToFrustum+0x38a>
d0043ef6:	3201      	adds	r2, #1
d0043ef8:	ed81 6a00 	vstr	s12, [r1]
d0043efc:	edc1 7a01 	vstr	s15, [r1, #4]
d0043f00:	ed81 7a02 	vstr	s14, [r1, #8]
d0043f04:	300c      	adds	r0, #12
d0043f06:	4298      	cmp	r0, r3
d0043f08:	d050      	beq.n	d0043fac <clipTriangleToFrustum+0x3dc>
d0043f0a:	eeb0 5a47 	vmov.f32	s10, s14
d0043f0e:	ed90 7a02 	vldr	s14, [r0, #8]
d0043f12:	eef0 4a67 	vmov.f32	s9, s15
d0043f16:	edd0 7a01 	vldr	s15, [r0, #4]
d0043f1a:	ee67 3a22 	vmul.f32	s7, s14, s5
d0043f1e:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0043f22:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043f26:	eef0 5a66 	vmov.f32	s11, s13
d0043f2a:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d0043f2e:	ee73 6ae7 	vsub.f32	s13, s7, s15
d0043f32:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043f36:	eeb0 4a46 	vmov.f32	s8, s12
d0043f3a:	ed90 6a00 	vldr	s12, [r0]
d0043f3e:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043f42:	bfac      	ite	ge
d0043f44:	2701      	movge	r7, #1
d0043f46:	2700      	movlt	r7, #0
d0043f48:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043f4c:	bfac      	ite	ge
d0043f4e:	f04f 0c01 	movge.w	ip, #1
d0043f52:	f04f 0c00 	movlt.w	ip, #0
d0043f56:	2f00      	cmp	r7, #0
d0043f58:	d1ca      	bne.n	d0043ef0 <clipTriangleToFrustum+0x320>
d0043f5a:	eef5 6a40 	vcmp.f32	s13, #0.0
d0043f5e:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0043f62:	ee37 3aa5 	vadd.f32	s6, s15, s11
d0043f66:	ee36 1a44 	vsub.f32	s2, s12, s8
d0043f6a:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d0043f6e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043f72:	ee77 1ae4 	vsub.f32	s3, s15, s9
d0043f76:	ee33 3a63 	vsub.f32	s6, s6, s7
d0043f7a:	ee37 2a45 	vsub.f32	s4, s14, s10
d0043f7e:	f140 821f 	bpl.w	d00443c0 <clipTriangleToFrustum+0x7f0>
d0043f82:	2f00      	cmp	r7, #0
d0043f84:	f000 821c 	beq.w	d00443c0 <clipTriangleToFrustum+0x7f0>
d0043f88:	eec5 3a83 	vdiv.f32	s7, s11, s6
d0043f8c:	300c      	adds	r0, #12
d0043f8e:	3201      	adds	r2, #1
d0043f90:	4298      	cmp	r0, r3
d0043f92:	eea1 4a23 	vfma.f32	s8, s2, s7
d0043f96:	eee1 4aa3 	vfma.f32	s9, s3, s7
d0043f9a:	eea2 5a23 	vfma.f32	s10, s4, s7
d0043f9e:	ed81 4a00 	vstr	s8, [r1]
d0043fa2:	edc1 4a01 	vstr	s9, [r1, #4]
d0043fa6:	ed81 5a02 	vstr	s10, [r1, #8]
d0043faa:	d1ae      	bne.n	d0043f0a <clipTriangleToFrustum+0x33a>
d0043fac:	2a02      	cmp	r2, #2
d0043fae:	f340 80b1 	ble.w	d0044114 <clipTriangleToFrustum+0x544>
d0043fb2:	eb02 0342 	add.w	r3, r2, r2, lsl #1
d0043fb6:	eddf 6aa0 	vldr	s13, [pc, #640]	; d0044238 <clipTriangleToFrustum+0x668>
d0043fba:	2700      	movs	r7, #0
d0043fbc:	009b      	lsls	r3, r3, #2
d0043fbe:	eef0 3a66 	vmov.f32	s7, s13
d0043fc2:	f1a3 020c 	sub.w	r2, r3, #12
d0043fc6:	4423      	add	r3, r4
d0043fc8:	4414      	add	r4, r2
d0043fca:	edd4 7a01 	vldr	s15, [r4, #4]
d0043fce:	ed94 7a02 	vldr	s14, [r4, #8]
d0043fd2:	eef0 5a67 	vmov.f32	s11, s15
d0043fd6:	ed94 6a00 	vldr	s12, [r4]
d0043fda:	eee7 5a26 	vfma.f32	s11, s14, s13
d0043fde:	eef0 6a65 	vmov.f32	s13, s11
d0043fe2:	e00a      	b.n	d0043ffa <clipTriangleToFrustum+0x42a>
d0043fe4:	b380      	cbz	r0, d0044048 <clipTriangleToFrustum+0x478>
d0043fe6:	3701      	adds	r7, #1
d0043fe8:	ed82 6a00 	vstr	s12, [r2]
d0043fec:	edc2 7a01 	vstr	s15, [r2, #4]
d0043ff0:	ed82 7a02 	vstr	s14, [r2, #8]
d0043ff4:	360c      	adds	r6, #12
d0043ff6:	429e      	cmp	r6, r3
d0043ff8:	d04e      	beq.n	d0044098 <clipTriangleToFrustum+0x4c8>
d0043ffa:	eef0 4a67 	vmov.f32	s9, s15
d0043ffe:	edd6 7a01 	vldr	s15, [r6, #4]
d0044002:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0044006:	a922      	add	r1, sp, #136	; 0x88
d0044008:	eef0 5a66 	vmov.f32	s11, s13
d004400c:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d0044010:	eef0 6a67 	vmov.f32	s13, s15
d0044014:	eeb0 5a47 	vmov.f32	s10, s14
d0044018:	ed96 7a02 	vldr	s14, [r6, #8]
d004401c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044020:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d0044024:	eee7 6a23 	vfma.f32	s13, s14, s7
d0044028:	eeb0 4a46 	vmov.f32	s8, s12
d004402c:	ed96 6a00 	vldr	s12, [r6]
d0044030:	bfac      	ite	ge
d0044032:	2101      	movge	r1, #1
d0044034:	2100      	movlt	r1, #0
d0044036:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d004403a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004403e:	bfac      	ite	ge
d0044040:	2001      	movge	r0, #1
d0044042:	2000      	movlt	r0, #0
d0044044:	2900      	cmp	r1, #0
d0044046:	d1cd      	bne.n	d0043fe4 <clipTriangleToFrustum+0x414>
d0044048:	eef5 6a40 	vcmp.f32	s13, #0.0
d004404c:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d0044050:	ac22      	add	r4, sp, #136	; 0x88
d0044052:	ee35 1ae6 	vsub.f32	s2, s11, s13
d0044056:	ee76 1a44 	vsub.f32	s3, s12, s8
d004405a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004405e:	eb04 0282 	add.w	r2, r4, r2, lsl #2
d0044062:	ee37 2ae4 	vsub.f32	s4, s15, s9
d0044066:	ee77 2a45 	vsub.f32	s5, s14, s10
d004406a:	f140 81de 	bpl.w	d004442a <clipTriangleToFrustum+0x85a>
d004406e:	2900      	cmp	r1, #0
d0044070:	f000 81db 	beq.w	d004442a <clipTriangleToFrustum+0x85a>
d0044074:	ee85 3a81 	vdiv.f32	s6, s11, s2
d0044078:	360c      	adds	r6, #12
d004407a:	3701      	adds	r7, #1
d004407c:	429e      	cmp	r6, r3
d004407e:	eea1 4a83 	vfma.f32	s8, s3, s6
d0044082:	eee2 4a03 	vfma.f32	s9, s4, s6
d0044086:	eea2 5a83 	vfma.f32	s10, s5, s6
d004408a:	ed82 4a00 	vstr	s8, [r2]
d004408e:	edc2 4a01 	vstr	s9, [r2, #4]
d0044092:	ed82 5a02 	vstr	s10, [r2, #8]
d0044096:	d1b0      	bne.n	d0043ffa <clipTriangleToFrustum+0x42a>
d0044098:	2f02      	cmp	r7, #2
d004409a:	dd3b      	ble.n	d0044114 <clipTriangleToFrustum+0x544>
d004409c:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d00440a0:	a922      	add	r1, sp, #136	; 0x88
d00440a2:	4628      	mov	r0, r5
d00440a4:	0092      	lsls	r2, r2, #2
d00440a6:	f001 ff79 	bl	d0045f9c <memcpy>
d00440aa:	4638      	mov	r0, r7
d00440ac:	b03a      	add	sp, #232	; 0xe8
d00440ae:	ecbd 8b02 	vpop	{d8}
d00440b2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00440b6:	eef5 5a40 	vcmp.f32	s11, #0.0
d00440ba:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d00440be:	ee75 1ae6 	vsub.f32	s3, s11, s13
d00440c2:	eb04 0782 	add.w	r7, r4, r2, lsl #2
d00440c6:	ee37 2a44 	vsub.f32	s4, s14, s8
d00440ca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00440ce:	463a      	mov	r2, r7
d00440d0:	ee76 2a64 	vsub.f32	s5, s12, s9
d00440d4:	ee37 3ac5 	vsub.f32	s6, s15, s10
d00440d8:	f107 070c 	add.w	r7, r7, #12
d00440dc:	f57f ae1f 	bpl.w	d0043d1e <clipTriangleToFrustum+0x14e>
d00440e0:	f1bc 0f00 	cmp.w	ip, #0
d00440e4:	f43f ae1b 	beq.w	d0043d1e <clipTriangleToFrustum+0x14e>
d00440e8:	eec5 3aa1 	vdiv.f32	s7, s11, s3
d00440ec:	3302      	adds	r3, #2
d00440ee:	eea2 4a23 	vfma.f32	s8, s4, s7
d00440f2:	eee2 4aa3 	vfma.f32	s9, s5, s7
d00440f6:	eea3 5a23 	vfma.f32	s10, s6, s7
d00440fa:	ed82 4a00 	vstr	s8, [r2]
d00440fe:	edc2 4a01 	vstr	s9, [r2, #4]
d0044102:	ed82 5a02 	vstr	s10, [r2, #8]
d0044106:	ed87 7a00 	vstr	s14, [r7]
d004410a:	ed87 6a01 	vstr	s12, [r7, #4]
d004410e:	edc7 7a02 	vstr	s15, [r7, #8]
d0044112:	e604      	b.n	d0043d1e <clipTriangleToFrustum+0x14e>
d0044114:	2700      	movs	r7, #0
d0044116:	4638      	mov	r0, r7
d0044118:	b03a      	add	sp, #232	; 0xe8
d004411a:	ecbd 8b02 	vpop	{d8}
d004411e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0044122:	eef5 4a40 	vcmp.f32	s9, #0.0
d0044126:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004412a:	f140 80b7 	bpl.w	d004429c <clipTriangleToFrustum+0x6cc>
d004412e:	2900      	cmp	r1, #0
d0044130:	f000 80b4 	beq.w	d004429c <clipTriangleToFrustum+0x6cc>
d0044134:	ee74 0a67 	vsub.f32	s1, s8, s15
d0044138:	eddd 3a0f 	vldr	s7, [sp, #60]	; 0x3c
d004413c:	ee36 8a65 	vsub.f32	s16, s12, s11
d0044140:	2301      	movs	r3, #1
d0044142:	eef0 8a65 	vmov.f32	s17, s11
d0044146:	ed9d 2a0d 	vldr	s4, [sp, #52]	; 0x34
d004414a:	ee85 1a20 	vdiv.f32	s2, s10, s1
d004414e:	eddd 2a0e 	vldr	s5, [sp, #56]	; 0x38
d0044152:	ee36 0ae1 	vsub.f32	s0, s13, s3
d0044156:	ee33 3ac7 	vsub.f32	s6, s7, s14
d004415a:	ee77 0ac4 	vsub.f32	s1, s15, s8
d004415e:	eeb5 3ac0 	vcmpe.f32	s6, #0.0
d0044162:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044166:	bfac      	ite	ge
d0044168:	461e      	movge	r6, r3
d004416a:	2600      	movlt	r6, #0
d004416c:	eee1 8a08 	vfma.f32	s17, s2, s16
d0044170:	eeb0 8a68 	vmov.f32	s16, s17
d0044174:	eef0 8a61 	vmov.f32	s17, s3
d0044178:	ed8d 8a22 	vstr	s16, [sp, #136]	; 0x88
d004417c:	eee1 8a00 	vfma.f32	s17, s2, s0
d0044180:	eeb0 0a68 	vmov.f32	s0, s17
d0044184:	eef0 8a44 	vmov.f32	s17, s8
d0044188:	ed8d 0a23 	vstr	s0, [sp, #140]	; 0x8c
d004418c:	eee0 8a81 	vfma.f32	s17, s1, s2
d0044190:	edcd 8a24 	vstr	s17, [sp, #144]	; 0x90
d0044194:	eeb5 3a40 	vcmp.f32	s6, #0.0
d0044198:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004419c:	f140 80af 	bpl.w	d00442fe <clipTriangleToFrustum+0x72e>
d00441a0:	2800      	cmp	r0, #0
d00441a2:	f000 80ac 	beq.w	d00442fe <clipTriangleToFrustum+0x72e>
d00441a6:	ee37 8ae3 	vsub.f32	s16, s15, s7
d00441aa:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d00441ae:	ee32 0a46 	vsub.f32	s0, s4, s12
d00441b2:	4632      	mov	r2, r6
d00441b4:	ee72 0ae6 	vsub.f32	s1, s5, s13
d00441b8:	ae22      	add	r6, sp, #136	; 0x88
d00441ba:	ee84 1a88 	vdiv.f32	s2, s9, s16
d00441be:	3301      	adds	r3, #1
d00441c0:	eb06 0080 	add.w	r0, r6, r0, lsl #2
d00441c4:	ee73 4ae7 	vsub.f32	s9, s7, s15
d00441c8:	eea0 6a01 	vfma.f32	s12, s0, s2
d00441cc:	eee0 6a81 	vfma.f32	s13, s1, s2
d00441d0:	eee4 7a81 	vfma.f32	s15, s9, s2
d00441d4:	ed80 6a00 	vstr	s12, [r0]
d00441d8:	edc0 6a01 	vstr	s13, [r0, #4]
d00441dc:	edc0 7a02 	vstr	s15, [r0, #8]
d00441e0:	eeb5 5a40 	vcmp.f32	s10, #0.0
d00441e4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00441e8:	d528      	bpl.n	d004423c <clipTriangleToFrustum+0x66c>
d00441ea:	b33a      	cbz	r2, d004423c <clipTriangleToFrustum+0x66c>
d00441ec:	ee37 5a44 	vsub.f32	s10, s14, s8
d00441f0:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d00441f4:	ee75 5ac2 	vsub.f32	s11, s11, s4
d00441f8:	a922      	add	r1, sp, #136	; 0x88
d00441fa:	ee71 1ae2 	vsub.f32	s3, s3, s5
d00441fe:	3301      	adds	r3, #1
d0044200:	ee35 5a03 	vadd.f32	s10, s10, s6
d0044204:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d0044208:	ee34 4a63 	vsub.f32	s8, s8, s7
d004420c:	eef0 6a42 	vmov.f32	s13, s4
d0044210:	ee83 6a05 	vdiv.f32	s12, s6, s10
d0044214:	eeb0 7a62 	vmov.f32	s14, s5
d0044218:	eef0 7a63 	vmov.f32	s15, s7
d004421c:	eee5 6a86 	vfma.f32	s13, s11, s12
d0044220:	eea1 7a86 	vfma.f32	s14, s3, s12
d0044224:	eee4 7a06 	vfma.f32	s15, s8, s12
d0044228:	edc2 6a00 	vstr	s13, [r2]
d004422c:	ed82 7a01 	vstr	s14, [r2, #4]
d0044230:	edc2 7a02 	vstr	s15, [r2, #8]
d0044234:	e555      	b.n	d0043ce2 <clipTriangleToFrustum+0x112>
d0044236:	bf00      	nop
d0044238:	3f2aaaab 	.word	0x3f2aaaab
d004423c:	eeb5 3a40 	vcmp.f32	s6, #0.0
d0044240:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044244:	f57f ad4d 	bpl.w	d0043ce2 <clipTriangleToFrustum+0x112>
d0044248:	2900      	cmp	r1, #0
d004424a:	f43f ad4a 	beq.w	d0043ce2 <clipTriangleToFrustum+0x112>
d004424e:	ee77 7a44 	vsub.f32	s15, s14, s8
d0044252:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0044256:	ee75 6ac2 	vsub.f32	s13, s11, s4
d004425a:	a922      	add	r1, sp, #136	; 0x88
d004425c:	ee31 7ae2 	vsub.f32	s14, s3, s5
d0044260:	3302      	adds	r3, #2
d0044262:	ee77 7a83 	vadd.f32	s15, s15, s6
d0044266:	eb01 0182 	add.w	r1, r1, r2, lsl #2
d004426a:	ee34 5a63 	vsub.f32	s10, s8, s7
d004426e:	edc1 5a03 	vstr	s11, [r1, #12]
d0044272:	ee83 6a27 	vdiv.f32	s12, s6, s15
d0044276:	edc1 1a04 	vstr	s3, [r1, #16]
d004427a:	ed81 4a05 	vstr	s8, [r1, #20]
d004427e:	eef0 7a63 	vmov.f32	s15, s7
d0044282:	eea6 2a86 	vfma.f32	s4, s13, s12
d0044286:	eee7 2a06 	vfma.f32	s5, s14, s12
d004428a:	eee5 7a06 	vfma.f32	s15, s10, s12
d004428e:	ed81 2a00 	vstr	s4, [r1]
d0044292:	edc1 2a01 	vstr	s5, [r1, #4]
d0044296:	edc1 7a02 	vstr	s15, [r1, #8]
d004429a:	e522      	b.n	d0043ce2 <clipTriangleToFrustum+0x112>
d004429c:	eeb5 5a40 	vcmp.f32	s10, #0.0
d00442a0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00442a4:	f140 80bf 	bpl.w	d0044426 <clipTriangleToFrustum+0x856>
d00442a8:	2800      	cmp	r0, #0
d00442aa:	f000 80bc 	beq.w	d0044426 <clipTriangleToFrustum+0x856>
d00442ae:	ee74 3a67 	vsub.f32	s7, s8, s15
d00442b2:	2302      	movs	r3, #2
d00442b4:	ee36 2a65 	vsub.f32	s4, s12, s11
d00442b8:	ed8d 6a25 	vstr	s12, [sp, #148]	; 0x94
d00442bc:	eeb0 1a65 	vmov.f32	s2, s11
d00442c0:	edcd 6a26 	vstr	s13, [sp, #152]	; 0x98
d00442c4:	ee85 3a23 	vdiv.f32	s6, s10, s7
d00442c8:	edcd 7a27 	vstr	s15, [sp, #156]	; 0x9c
d00442cc:	ee76 2ae1 	vsub.f32	s5, s13, s3
d00442d0:	ee77 3ac4 	vsub.f32	s7, s15, s8
d00442d4:	eea3 1a02 	vfma.f32	s2, s6, s4
d00442d8:	eeb0 2a41 	vmov.f32	s4, s2
d00442dc:	eeb0 1a61 	vmov.f32	s2, s3
d00442e0:	ed8d 2a22 	vstr	s4, [sp, #136]	; 0x88
d00442e4:	eea3 1a22 	vfma.f32	s2, s6, s5
d00442e8:	eef0 2a41 	vmov.f32	s5, s2
d00442ec:	eeb0 1a44 	vmov.f32	s2, s8
d00442f0:	edcd 2a23 	vstr	s5, [sp, #140]	; 0x8c
d00442f4:	eea3 1a23 	vfma.f32	s2, s6, s7
d00442f8:	ed8d 1a24 	vstr	s2, [sp, #144]	; 0x90
d00442fc:	e4be      	b.n	d0043c7c <clipTriangleToFrustum+0xac>
d00442fe:	eef5 4ac0 	vcmpe.f32	s9, #0.0
d0044302:	f006 0201 	and.w	r2, r6, #1
d0044306:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004430a:	bf58      	it	pl
d004430c:	2200      	movpl	r2, #0
d004430e:	2a00      	cmp	r2, #0
d0044310:	f000 8087 	beq.w	d0044422 <clipTriangleToFrustum+0x852>
d0044314:	ee37 8ae3 	vsub.f32	s16, s15, s7
d0044318:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d004431c:	ee32 0a46 	vsub.f32	s0, s4, s12
d0044320:	ae22      	add	r6, sp, #136	; 0x88
d0044322:	ee72 0ae6 	vsub.f32	s1, s5, s13
d0044326:	3302      	adds	r3, #2
d0044328:	ee84 1a88 	vdiv.f32	s2, s9, s16
d004432c:	eb06 0680 	add.w	r6, r6, r0, lsl #2
d0044330:	ed86 2a03 	vstr	s4, [r6, #12]
d0044334:	edc6 2a04 	vstr	s5, [r6, #16]
d0044338:	edc6 3a05 	vstr	s7, [r6, #20]
d004433c:	ee73 4ae7 	vsub.f32	s9, s7, s15
d0044340:	eea0 6a01 	vfma.f32	s12, s0, s2
d0044344:	eee0 6a81 	vfma.f32	s13, s1, s2
d0044348:	eee4 7a81 	vfma.f32	s15, s9, s2
d004434c:	ed86 6a00 	vstr	s12, [r6]
d0044350:	edc6 6a01 	vstr	s13, [r6, #4]
d0044354:	edc6 7a02 	vstr	s15, [r6, #8]
d0044358:	e4b1      	b.n	d0043cbe <clipTriangleToFrustum+0xee>
d004435a:	eef5 5a40 	vcmp.f32	s11, #0.0
d004435e:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0044362:	f10d 0c88 	add.w	ip, sp, #136	; 0x88
d0044366:	ee77 3aa5 	vadd.f32	s7, s15, s11
d004436a:	ee77 1ac4 	vsub.f32	s3, s15, s8
d004436e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044372:	eb0c 0c81 	add.w	ip, ip, r1, lsl #2
d0044376:	ee36 2a64 	vsub.f32	s4, s12, s9
d004437a:	4661      	mov	r1, ip
d004437c:	ee73 3ac7 	vsub.f32	s7, s7, s14
d0044380:	ee77 2a45 	vsub.f32	s5, s14, s10
d0044384:	f10c 0c0c 	add.w	ip, ip, #12
d0044388:	f57f ad38 	bpl.w	d0043dfc <clipTriangleToFrustum+0x22c>
d004438c:	f1be 0f00 	cmp.w	lr, #0
d0044390:	f43f ad34 	beq.w	d0043dfc <clipTriangleToFrustum+0x22c>
d0044394:	ee85 3aa3 	vdiv.f32	s6, s11, s7
d0044398:	3202      	adds	r2, #2
d004439a:	eea1 4a83 	vfma.f32	s8, s3, s6
d004439e:	eee2 4a03 	vfma.f32	s9, s4, s6
d00443a2:	eea2 5a83 	vfma.f32	s10, s5, s6
d00443a6:	ed81 4a00 	vstr	s8, [r1]
d00443aa:	edc1 4a01 	vstr	s9, [r1, #4]
d00443ae:	ed81 5a02 	vstr	s10, [r1, #8]
d00443b2:	edcc 7a00 	vstr	s15, [ip]
d00443b6:	ed8c 6a01 	vstr	s12, [ip, #4]
d00443ba:	ed8c 7a02 	vstr	s14, [ip, #8]
d00443be:	e51d      	b.n	d0043dfc <clipTriangleToFrustum+0x22c>
d00443c0:	eef5 5a40 	vcmp.f32	s11, #0.0
d00443c4:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d00443c8:	ee37 3aa5 	vadd.f32	s6, s15, s11
d00443cc:	eb04 0781 	add.w	r7, r4, r1, lsl #2
d00443d0:	ee36 1a44 	vsub.f32	s2, s12, s8
d00443d4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00443d8:	4639      	mov	r1, r7
d00443da:	ee77 1ae4 	vsub.f32	s3, s15, s9
d00443de:	ee73 3a63 	vsub.f32	s7, s6, s7
d00443e2:	f107 070c 	add.w	r7, r7, #12
d00443e6:	ee37 2a45 	vsub.f32	s4, s14, s10
d00443ea:	f57f ad8b 	bpl.w	d0043f04 <clipTriangleToFrustum+0x334>
d00443ee:	f1bc 0f00 	cmp.w	ip, #0
d00443f2:	f43f ad87 	beq.w	d0043f04 <clipTriangleToFrustum+0x334>
d00443f6:	ee85 3aa3 	vdiv.f32	s6, s11, s7
d00443fa:	3202      	adds	r2, #2
d00443fc:	eea1 4a03 	vfma.f32	s8, s2, s6
d0044400:	eee1 4a83 	vfma.f32	s9, s3, s6
d0044404:	eea2 5a03 	vfma.f32	s10, s4, s6
d0044408:	ed81 4a00 	vstr	s8, [r1]
d004440c:	edc1 4a01 	vstr	s9, [r1, #4]
d0044410:	ed81 5a02 	vstr	s10, [r1, #8]
d0044414:	ed87 6a00 	vstr	s12, [r7]
d0044418:	edc7 7a01 	vstr	s15, [r7, #4]
d004441c:	ed87 7a02 	vstr	s14, [r7, #8]
d0044420:	e570      	b.n	d0043f04 <clipTriangleToFrustum+0x334>
d0044422:	4632      	mov	r2, r6
d0044424:	e44b      	b.n	d0043cbe <clipTriangleToFrustum+0xee>
d0044426:	2300      	movs	r3, #0
d0044428:	e428      	b.n	d0043c7c <clipTriangleToFrustum+0xac>
d004442a:	eef5 5a40 	vcmp.f32	s11, #0.0
d004442e:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d0044432:	a922      	add	r1, sp, #136	; 0x88
d0044434:	ee35 1ae6 	vsub.f32	s2, s11, s13
d0044438:	ee76 1a44 	vsub.f32	s3, s12, s8
d004443c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044440:	eb01 0182 	add.w	r1, r1, r2, lsl #2
d0044444:	ee37 2ae4 	vsub.f32	s4, s15, s9
d0044448:	460a      	mov	r2, r1
d004444a:	ee77 2a45 	vsub.f32	s5, s14, s10
d004444e:	f101 010c 	add.w	r1, r1, #12
d0044452:	f57f adcf 	bpl.w	d0043ff4 <clipTriangleToFrustum+0x424>
d0044456:	2800      	cmp	r0, #0
d0044458:	f43f adcc 	beq.w	d0043ff4 <clipTriangleToFrustum+0x424>
d004445c:	ee85 3a81 	vdiv.f32	s6, s11, s2
d0044460:	3702      	adds	r7, #2
d0044462:	eea1 4a83 	vfma.f32	s8, s3, s6
d0044466:	eee2 4a03 	vfma.f32	s9, s4, s6
d004446a:	eea2 5a83 	vfma.f32	s10, s5, s6
d004446e:	ed82 4a00 	vstr	s8, [r2]
d0044472:	edc2 4a01 	vstr	s9, [r2, #4]
d0044476:	ed82 5a02 	vstr	s10, [r2, #8]
d004447a:	ed81 6a00 	vstr	s12, [r1]
d004447e:	edc1 7a01 	vstr	s15, [r1, #4]
d0044482:	ed81 7a02 	vstr	s14, [r1, #8]
d0044486:	e5b5      	b.n	d0043ff4 <clipTriangleToFrustum+0x424>

d0044488 <submitClippedTri>:
d0044488:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d004448c:	eef4 7ac1 	vcmpe.f32	s15, s2
d0044490:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044494:	eef4 2ae7 	vcmpe.f32	s5, s15
d0044498:	bfac      	ite	ge
d004449a:	2301      	movge	r3, #1
d004449c:	2300      	movlt	r3, #0
d004449e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00444a2:	bf98      	it	ls
d00444a4:	f043 0301 	orrls.w	r3, r3, #1
d00444a8:	b923      	cbnz	r3, d00444b4 <submitClippedTri+0x2c>
d00444aa:	eef4 7ac4 	vcmpe.f32	s15, s8
d00444ae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00444b2:	db00      	blt.n	d00444b6 <submitClippedTri+0x2e>
d00444b4:	4770      	bx	lr
d00444b6:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d00444ba:	ed9f 6a69 	vldr	s12, [pc, #420]	; d0044660 <submitClippedTri+0x1d8>
d00444be:	eddf 7a69 	vldr	s15, [pc, #420]	; d0044664 <submitClippedTri+0x1dc>
d00444c2:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d00444c6:	ee60 0a86 	vmul.f32	s1, s1, s12
d00444ca:	ed9f 5a67 	vldr	s10, [pc, #412]	; d0044668 <submitClippedTri+0x1e0>
d00444ce:	eec6 5aa2 	vdiv.f32	s11, s13, s5
d00444d2:	ee63 3a86 	vmul.f32	s7, s7, s12
d00444d6:	ee22 2a06 	vmul.f32	s4, s4, s12
d00444da:	eeb0 6a67 	vmov.f32	s12, s15
d00444de:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00444e2:	ed2d 8b04 	vpush	{d8-d9}
d00444e6:	eec6 8a81 	vdiv.f32	s17, s13, s2
d00444ea:	b08b      	sub	sp, #44	; 0x2c
d00444ec:	eeb0 9a66 	vmov.f32	s18, s13
d00444f0:	ee86 8a84 	vdiv.f32	s16, s13, s8
d00444f4:	eea5 6a82 	vfma.f32	s12, s11, s4
d00444f8:	eea0 9a28 	vfma.f32	s18, s0, s17
d00444fc:	eeb0 0a67 	vmov.f32	s0, s15
d0044500:	eebd 6ac6 	vcvt.s32.f32	s12, s12
d0044504:	eea8 0aa0 	vfma.f32	s0, s17, s1
d0044508:	eef0 0a66 	vmov.f32	s1, s13
d004450c:	ee16 3a10 	vmov	r3, s12
d0044510:	eee8 7a23 	vfma.f32	s15, s16, s7
d0044514:	eee1 0aa5 	vfma.f32	s1, s3, s11
d0044518:	eef0 1a47 	vmov.f32	s3, s14
d004451c:	eefd 5ac0 	vcvt.s32.f32	s11, s0
d0044520:	eee9 1a05 	vfma.f32	s3, s18, s10
d0044524:	ee15 6a90 	vmov	r6, s11
d0044528:	eef0 5a66 	vmov.f32	s11, s13
d004452c:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0044530:	1b9d      	subs	r5, r3, r6
d0044532:	eee3 5a08 	vfma.f32	s11, s6, s16
d0044536:	ee17 3a90 	vmov	r3, s15
d004453a:	eefd 3ae1 	vcvt.s32.f32	s7, s3
d004453e:	eba3 0c06 	sub.w	ip, r3, r6
d0044542:	ee13 7a90 	vmov	r7, s7
d0044546:	eeb0 3a65 	vmov.f32	s6, s11
d004454a:	eef0 5a47 	vmov.f32	s11, s14
d004454e:	eea3 7a05 	vfma.f32	s14, s6, s10
d0044552:	eee0 5a85 	vfma.f32	s11, s1, s10
d0044556:	eefd 7ac7 	vcvt.s32.f32	s15, s14
d004455a:	eefd 5ae5 	vcvt.s32.f32	s11, s11
d004455e:	ee15 4a90 	vmov	r4, s11
d0044562:	eba4 0e07 	sub.w	lr, r4, r7
d0044566:	ee17 4a90 	vmov	r4, s15
d004456a:	fb0c fc0e 	mul.w	ip, ip, lr
d004456e:	eba4 0e07 	sub.w	lr, r4, r7
d0044572:	fb0e c515 	mls	r5, lr, r5, ip
d0044576:	2d00      	cmp	r5, #0
d0044578:	dd6d      	ble.n	d0044656 <submitClippedTri+0x1ce>
d004457a:	f8df e0f8 	ldr.w	lr, [pc, #248]	; d0044674 <submitClippedTri+0x1ec>
d004457e:	f8de 5000 	ldr.w	r5, [lr]
d0044582:	f5b5 5f00 	cmp.w	r5, #8192	; 0x2000
d0044586:	da66      	bge.n	d0044656 <submitClippedTri+0x1ce>
d0044588:	f8df c0ec 	ldr.w	ip, [pc, #236]	; d0044678 <submitClippedTri+0x1f0>
d004458c:	ea4f 1885 	mov.w	r8, r5, lsl #6
d0044590:	f105 0b01 	add.w	fp, r5, #1
d0044594:	ed9f 5a35 	vldr	s10, [pc, #212]	; d004466c <submitClippedTri+0x1e4>
d0044598:	f848 700c 	str.w	r7, [r8, ip]
d004459c:	eb0c 1585 	add.w	r5, ip, r5, lsl #6
d00445a0:	f108 0a08 	add.w	sl, r8, #8
d00445a4:	f108 0910 	add.w	r9, r8, #16
d00445a8:	ee15 7a90 	vmov	r7, s11
d00445ac:	606e      	str	r6, [r5, #4]
d00445ae:	eb0a 060c 	add.w	r6, sl, ip
d00445b2:	f8ce b000 	str.w	fp, [lr]
d00445b6:	f84a 700c 	str.w	r7, [sl, ip]
d00445ba:	eb09 070c 	add.w	r7, r9, ip
d00445be:	ed86 6a01 	vstr	s12, [r6, #4]
d00445c2:	f849 400c 	str.w	r4, [r9, ip]
d00445c6:	607b      	str	r3, [r7, #4]
d00445c8:	f885 1034 	strb.w	r1, [r5, #52]	; 0x34
d00445cc:	f885 2035 	strb.w	r2, [r5, #53]	; 0x35
d00445d0:	edc5 4a07 	vstr	s9, [r5, #28]
d00445d4:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d00445d8:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d00445dc:	ee31 7a47 	vsub.f32	s14, s2, s14
d00445e0:	ed9f 6a23 	vldr	s12, [pc, #140]	; d0044670 <submitClippedTri+0x1e8>
d00445e4:	ee27 7a27 	vmul.f32	s14, s14, s15
d00445e8:	fe87 7a05 	vmaxnm.f32	s14, s14, s10
d00445ec:	fe87 7a66 	vminnm.f32	s14, s14, s13
d00445f0:	ee27 7a06 	vmul.f32	s14, s14, s12
d00445f4:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00445f8:	ee17 3a10 	vmov	r3, s14
d00445fc:	842b      	strh	r3, [r5, #32]
d00445fe:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0044602:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0044606:	ee32 7ac7 	vsub.f32	s14, s5, s14
d004460a:	ee27 7a27 	vmul.f32	s14, s14, s15
d004460e:	fe87 7a05 	vmaxnm.f32	s14, s14, s10
d0044612:	fe87 7a66 	vminnm.f32	s14, s14, s13
d0044616:	ee27 7a06 	vmul.f32	s14, s14, s12
d004461a:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d004461e:	ee17 3a10 	vmov	r3, s14
d0044622:	846b      	strh	r3, [r5, #34]	; 0x22
d0044624:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d0044628:	ed90 7a0f 	vldr	s14, [r0, #60]	; 0x3c
d004462c:	ee74 7a67 	vsub.f32	s15, s8, s15
d0044630:	ed85 1a0a 	vstr	s2, [r5, #40]	; 0x28
d0044634:	edc5 2a0b 	vstr	s5, [r5, #44]	; 0x2c
d0044638:	ed85 4a0c 	vstr	s8, [r5, #48]	; 0x30
d004463c:	ee67 7a87 	vmul.f32	s15, s15, s14
d0044640:	fec7 7a85 	vmaxnm.f32	s15, s15, s10
d0044644:	fec7 6ae6 	vminnm.f32	s13, s15, s13
d0044648:	ee66 6a86 	vmul.f32	s13, s13, s12
d004464c:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d0044650:	ee16 3a90 	vmov	r3, s13
d0044654:	84ab      	strh	r3, [r5, #36]	; 0x24
d0044656:	b00b      	add	sp, #44	; 0x2c
d0044658:	ecbd 8b04 	vpop	{d8-d9}
d004465c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0044660:	c3700000 	.word	0xc3700000
d0044664:	43208000 	.word	0x43208000
d0044668:	43700000 	.word	0x43700000
d004466c:	00000000 	.word	0x00000000
d0044670:	477fff00 	.word	0x477fff00
d0044674:	d00a0884 	.word	0xd00a0884
d0044678:	d00a08a0 	.word	0xd00a08a0

d004467c <drawFakeHorizonDots>:
d004467c:	2800      	cmp	r0, #0
d004467e:	f000 80f2 	beq.w	d0044866 <drawFakeHorizonDots+0x1ea>
d0044682:	2a02      	cmp	r2, #2
d0044684:	edd0 7a02 	vldr	s15, [r0, #8]
d0044688:	ed90 6a01 	vldr	s12, [r0, #4]
d004468c:	bfb8      	it	lt
d004468e:	2202      	movlt	r2, #2
d0044690:	eddf 5a75 	vldr	s11, [pc, #468]	; d0044868 <drawFakeHorizonDots+0x1ec>
d0044694:	edd0 6a0d 	vldr	s13, [r0, #52]	; 0x34
d0044698:	ee07 2a10 	vmov	s14, r2
d004469c:	edd0 4a10 	vldr	s9, [r0, #64]	; 0x40
d00446a0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00446a4:	ed2d 8b10 	vpush	{d8-d15}
d00446a8:	eef8 9ac7 	vcvt.f32.s32	s19, s14
d00446ac:	ed90 aa00 	vldr	s20, [r0]
d00446b0:	b085      	sub	sp, #20
d00446b2:	4617      	mov	r7, r2
d00446b4:	468b      	mov	fp, r1
d00446b6:	496d      	ldr	r1, [pc, #436]	; (d004486c <drawFakeHorizonDots+0x1f0>)
d00446b8:	ee8a 7a29 	vdiv.f32	s14, s20, s19
d00446bc:	edcd 7a01 	vstr	s15, [sp, #4]
d00446c0:	4e6b      	ldr	r6, [pc, #428]	; (d0044870 <drawFakeHorizonDots+0x1f4>)
d00446c2:	4698      	mov	r8, r3
d00446c4:	ed90 ca07 	vldr	s24, [r0, #28]
d00446c8:	edd0 ba0a 	vldr	s23, [r0, #40]	; 0x28
d00446cc:	4c69      	ldr	r4, [pc, #420]	; (d0044874 <drawFakeHorizonDots+0x1f8>)
d00446ce:	eec7 7aa9 	vdiv.f32	s15, s15, s19
d00446d2:	edd0 fa06 	vldr	s31, [r0, #24]
d00446d6:	ed90 fa08 	vldr	s30, [r0, #32]
d00446da:	edd0 ea09 	vldr	s29, [r0, #36]	; 0x24
d00446de:	ed90 ea0b 	vldr	s28, [r0, #44]	; 0x2c
d00446e2:	edd0 da0c 	vldr	s27, [r0, #48]	; 0x30
d00446e6:	ee30 ba46 	vsub.f32	s22, s0, s12
d00446ea:	ed90 da0e 	vldr	s26, [r0, #56]	; 0x38
d00446ee:	ee69 9aa5 	vmul.f32	s19, s19, s11
d00446f2:	ed9f 8a61 	vldr	s16, [pc, #388]	; d0044878 <drawFakeHorizonDots+0x1fc>
d00446f6:	4b61      	ldr	r3, [pc, #388]	; (d004487c <drawFakeHorizonDots+0x200>)
d00446f8:	ee2b ca0c 	vmul.f32	s24, s22, s24
d00446fc:	eddf ca60 	vldr	s25, [pc, #384]	; d0044880 <drawFakeHorizonDots+0x204>
d0044700:	ee6b ba2b 	vmul.f32	s23, s22, s23
d0044704:	eddf 8a5f 	vldr	s17, [pc, #380]	; d0044884 <drawFakeHorizonDots+0x208>
d0044708:	ee29 8a88 	vmul.f32	s16, s19, s16
d004470c:	f8df 9184 	ldr.w	r9, [pc, #388]	; d0044894 <drawFakeHorizonDots+0x218>
d0044710:	febb 7a47 	vrintm.f32	s14, s14
d0044714:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0044718:	ee2b ba26 	vmul.f32	s22, s22, s13
d004471c:	ee17 2a10 	vmov	r2, s14
d0044720:	fefb 7a67 	vrintm.f32	s15, s15
d0044724:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0044728:	fb01 f002 	mul.w	r0, r1, r2
d004472c:	f1a2 0112 	sub.w	r1, r2, #18
d0044730:	ee17 2a90 	vmov	r2, s15
d0044734:	4404      	add	r4, r0
d0044736:	fb07 f101 	mul.w	r1, r7, r1
d004473a:	f1a2 0a12 	sub.w	sl, r2, #18
d004473e:	fb06 0202 	mla	r2, r6, r2, r0
d0044742:	9103      	str	r1, [sp, #12]
d0044744:	fb06 460a 	mla	r6, r6, sl, r4
d0044748:	18d3      	adds	r3, r2, r3
d004474a:	fb0a fa07 	mul.w	sl, sl, r7
d004474e:	9302      	str	r3, [sp, #8]
d0044750:	eddd 7a01 	vldr	s15, [sp, #4]
d0044754:	4c4c      	ldr	r4, [pc, #304]	; (d0044888 <drawFakeHorizonDots+0x20c>)
d0044756:	ee37 9aa9 	vadd.f32	s18, s15, s19
d004475a:	ee07 aa90 	vmov	s15, sl
d004475e:	1934      	adds	r4, r6, r4
d0044760:	9d03      	ldr	r5, [sp, #12]
d0044762:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0044766:	eddf aa49 	vldr	s21, [pc, #292]	; d004488c <drawFakeHorizonDots+0x210>
d004476a:	ee37 9ac9 	vsub.f32	s18, s15, s18
d004476e:	ea84 3354 	eor.w	r3, r4, r4, lsr #13
d0044772:	ee07 5a90 	vmov	s15, r5
d0044776:	f104 54b2 	add.w	r4, r4, #373293056	; 0x16400000
d004477a:	eef0 3a49 	vmov.f32	s7, s18
d004477e:	fb09 f303 	mul.w	r3, r9, r3
d0044782:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d0044786:	ee7a 7a29 	vadd.f32	s15, s20, s19
d004478a:	f504 14b3 	add.w	r4, r4, #1466368	; 0x166000
d004478e:	ea83 4313 	eor.w	r3, r3, r3, lsr #16
d0044792:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0044796:	eddf 5a3e 	vldr	s11, [pc, #248]	; d0044890 <drawFakeHorizonDots+0x214>
d004479a:	443d      	add	r5, r7
d004479c:	f3c3 4207 	ubfx	r2, r3, #16, #8
d00447a0:	ee77 7a67 	vsub.f32	s15, s14, s15
d00447a4:	f204 74b1 	addw	r4, r4, #1969	; 0x7b1
d00447a8:	ee07 2a10 	vmov	s14, r2
d00447ac:	f3c3 2207 	ubfx	r2, r3, #8, #8
d00447b0:	b2db      	uxtb	r3, r3
d00447b2:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00447b6:	ee06 2a90 	vmov	s13, r2
d00447ba:	4543      	cmp	r3, r8
d00447bc:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d00447c0:	eee7 3a08 	vfma.f32	s7, s14, s16
d00447c4:	d83d      	bhi.n	d0044842 <drawFakeHorizonDots+0x1c6>
d00447c6:	eee6 7a88 	vfma.f32	s15, s13, s16
d00447ca:	ee2d 6a23 	vmul.f32	s12, s26, s7
d00447ce:	ee2e 7aa7 	vmul.f32	s14, s29, s15
d00447d2:	eead 6aa7 	vfma.f32	s12, s27, s15
d00447d6:	ee6f 6aa7 	vmul.f32	s13, s31, s15
d00447da:	eef0 7a47 	vmov.f32	s15, s14
d00447de:	eeef 6a23 	vfma.f32	s13, s30, s7
d00447e2:	eeee 7a23 	vfma.f32	s15, s28, s7
d00447e6:	ee3b 6a06 	vadd.f32	s12, s22, s12
d00447ea:	eef4 4ac6 	vcmpe.f32	s9, s12
d00447ee:	ee3c 7a26 	vadd.f32	s14, s24, s13
d00447f2:	ee7b 7aa7 	vadd.f32	s15, s23, s15
d00447f6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00447fa:	ee27 7a2c 	vmul.f32	s14, s14, s25
d00447fe:	ee67 7aaa 	vmul.f32	s15, s15, s21
d0044802:	da1e      	bge.n	d0044842 <drawFakeHorizonDots+0x1c6>
d0044804:	eec5 6a06 	vdiv.f32	s13, s10, s12
d0044808:	eeb0 6a68 	vmov.f32	s12, s17
d004480c:	eea7 6a26 	vfma.f32	s12, s14, s13
d0044810:	eee7 5aa6 	vfma.f32	s11, s15, s13
d0044814:	eefd 7ac6 	vcvt.s32.f32	s15, s12
d0044818:	eefd 5ae5 	vcvt.s32.f32	s11, s11
d004481c:	ee17 0a90 	vmov	r0, s15
d0044820:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0044824:	d20d      	bcs.n	d0044842 <drawFakeHorizonDots+0x1c6>
d0044826:	ee15 3a90 	vmov	r3, s11
d004482a:	465a      	mov	r2, fp
d004482c:	ee15 1a90 	vmov	r1, s11
d0044830:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0044834:	d205      	bcs.n	d0044842 <drawFakeHorizonDots+0x1c6>
d0044836:	edcd 4a00 	vstr	s9, [sp]
d004483a:	f7fc f81d 	bl	d0040878 <putPixel>
d004483e:	eddd 4a00 	vldr	s9, [sp]
d0044842:	42b4      	cmp	r4, r6
d0044844:	d193      	bne.n	d004476e <drawFakeHorizonDots+0xf2>
d0044846:	f106 561f 	add.w	r6, r6, #666894336	; 0x27c00000
d004484a:	9b02      	ldr	r3, [sp, #8]
d004484c:	44ba      	add	sl, r7
d004484e:	f506 16a7 	add.w	r6, r6, #1368064	; 0x14e000
d0044852:	f606 362f 	addw	r6, r6, #2863	; 0xb2f
d0044856:	42b3      	cmp	r3, r6
d0044858:	f47f af7a 	bne.w	d0044750 <drawFakeHorizonDots+0xd4>
d004485c:	b005      	add	sp, #20
d004485e:	ecbd 8b10 	vpop	{d8-d15}
d0044862:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0044866:	4770      	bx	lr
d0044868:	3eb33333 	.word	0x3eb33333
d004486c:	165667b1 	.word	0x165667b1
d0044870:	27d4eb2f 	.word	0x27d4eb2f
d0044874:	a869b223 	.word	0xa869b223
d0044878:	3c008081 	.word	0x3c008081
d004487c:	9d3726a0 	.word	0x9d3726a0
d0044880:	43700000 	.word	0x43700000
d0044884:	43708000 	.word	0x43708000
d0044888:	c583036b 	.word	0xc583036b
d004488c:	c3700000 	.word	0xc3700000
d0044890:	43208000 	.word	0x43208000
d0044894:	4bf19f61 	.word	0x4bf19f61

d0044898 <drawFakeHorizon>:
d0044898:	2800      	cmp	r0, #0
d004489a:	f000 813c 	beq.w	d0044b16 <drawFakeHorizon+0x27e>
d004489e:	ed9f 7aa2 	vldr	s14, [pc, #648]	; d0044b28 <drawFakeHorizon+0x290>
d00448a2:	eddf 6aa2 	vldr	s13, [pc, #648]	; d0044b2c <drawFakeHorizon+0x294>
d00448a6:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00448aa:	ed2d 8b0c 	vpush	{d8-d13}
d00448ae:	ed90 da0a 	vldr	s26, [r0, #40]	; 0x28
d00448b2:	eeb0 ca47 	vmov.f32	s24, s14
d00448b6:	ed9f 9a9e 	vldr	s18, [pc, #632]	; d0044b30 <drawFakeHorizon+0x298>
d00448ba:	b083      	sub	sp, #12
d00448bc:	edd0 ba0d 	vldr	s23, [r0, #52]	; 0x34
d00448c0:	eeb0 bacd 	vabs.f32	s22, s26
d00448c4:	ee6d 7a09 	vmul.f32	s15, s26, s18
d00448c8:	eddf 9a9a 	vldr	s19, [pc, #616]	; d0044b34 <drawFakeHorizon+0x29c>
d00448cc:	eef0 aa6b 	vmov.f32	s21, s23
d00448d0:	edd0 da07 	vldr	s27, [r0, #28]
d00448d4:	eeb0 aa6b 	vmov.f32	s20, s23
d00448d8:	edd0 8a01 	vldr	s17, [r0, #4]
d00448dc:	eec9 ca8d 	vdiv.f32	s25, s19, s26
d00448e0:	460f      	mov	r7, r1
d00448e2:	4690      	mov	r8, r2
d00448e4:	4699      	mov	r9, r3
d00448e6:	2400      	movs	r4, #0
d00448e8:	4e93      	ldr	r6, [pc, #588]	; (d0044b38 <drawFakeHorizon+0x2a0>)
d00448ea:	ed9f 8a94 	vldr	s16, [pc, #592]	; d0044b3c <drawFakeHorizon+0x2a4>
d00448ee:	eee7 aa87 	vfma.f32	s21, s15, s14
d00448f2:	eea7 aaa6 	vfma.f32	s20, s15, s13
d00448f6:	ee2d 9a89 	vmul.f32	s18, s27, s18
d00448fa:	ee70 8a68 	vsub.f32	s17, s0, s17
d00448fe:	e056      	b.n	d00449ae <drawFakeHorizon+0x116>
d0044900:	ee88 6aa6 	vdiv.f32	s12, s17, s13
d0044904:	eef0 6ac7 	vabs.f32	s13, s14
d0044908:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d004490c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044910:	eef4 6ac8 	vcmpe.f32	s13, s16
d0044914:	bfcc      	ite	gt
d0044916:	2201      	movgt	r2, #1
d0044918:	2200      	movle	r2, #0
d004491a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004491e:	da61      	bge.n	d00449e4 <drawFakeHorizon+0x14c>
d0044920:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d0044924:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d0044928:	6833      	ldr	r3, [r6, #0]
d004492a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004492e:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d0044932:	f240 80a8 	bls.w	d0044a86 <drawFakeHorizon+0x1ee>
d0044936:	eeb4 bac8 	vcmpe.f32	s22, s16
d004493a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004493e:	f100 809a 	bmi.w	d0044a76 <drawFakeHorizon+0x1de>
d0044942:	ee7b 7aa7 	vadd.f32	s15, s23, s15
d0044946:	eeb0 7a4c 	vmov.f32	s14, s24
d004494a:	eeac 7aa7 	vfma.f32	s14, s25, s15
d004494e:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d0044952:	ee17 ba90 	vmov	fp, s15
d0044956:	f1bb 0f00 	cmp.w	fp, #0
d004495a:	f2c0 80aa 	blt.w	d0044ab2 <drawFakeHorizon+0x21a>
d004495e:	2201      	movs	r2, #1
d0044960:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d0044964:	46da      	mov	sl, fp
d0044966:	bfa8      	it	ge
d0044968:	f44f 7aa0 	movge.w	sl, #320	; 0x140
d004496c:	2a00      	cmp	r2, #0
d004496e:	f000 8091 	beq.w	d0044a94 <drawFakeHorizon+0x1fc>
d0044972:	f1bb 0f00 	cmp.w	fp, #0
d0044976:	d009      	beq.n	d004498c <drawFakeHorizon+0xf4>
d0044978:	f1ba 0f00 	cmp.w	sl, #0
d004497c:	4628      	mov	r0, r5
d004497e:	4641      	mov	r1, r8
d0044980:	bfcc      	ite	gt
d0044982:	4652      	movgt	r2, sl
d0044984:	2201      	movle	r2, #1
d0044986:	4415      	add	r5, r2
d0044988:	f001 fb16 	bl	d0045fb8 <memset>
d004498c:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d0044990:	d009      	beq.n	d00449a6 <drawFakeHorizon+0x10e>
d0044992:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d0044996:	f5ca 72a0 	rsb	r2, sl, #320	; 0x140
d004499a:	4628      	mov	r0, r5
d004499c:	4639      	mov	r1, r7
d004499e:	bfa8      	it	ge
d00449a0:	2201      	movge	r2, #1
d00449a2:	f001 fb09 	bl	d0045fb8 <memset>
d00449a6:	3401      	adds	r4, #1
d00449a8:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d00449ac:	d04e      	beq.n	d0044a4c <drawFakeHorizon+0x1b4>
d00449ae:	ee07 4a90 	vmov	s15, r4
d00449b2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00449b6:	ee77 7ae9 	vsub.f32	s15, s15, s19
d00449ba:	ee67 7a89 	vmul.f32	s15, s15, s18
d00449be:	ee77 6aaa 	vadd.f32	s13, s15, s21
d00449c2:	ee3a 7a27 	vadd.f32	s14, s20, s15
d00449c6:	eeb0 6ae6 	vabs.f32	s12, s13
d00449ca:	eeb4 6ac8 	vcmpe.f32	s12, s16
d00449ce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00449d2:	da95      	bge.n	d0044900 <drawFakeHorizon+0x68>
d00449d4:	eef0 6ac7 	vabs.f32	s13, s14
d00449d8:	eef4 6ac8 	vcmpe.f32	s13, s16
d00449dc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00449e0:	db4c      	blt.n	d0044a7c <drawFakeHorizon+0x1e4>
d00449e2:	2200      	movs	r2, #0
d00449e4:	eec8 6a87 	vdiv.f32	s13, s17, s14
d00449e8:	6833      	ldr	r3, [r6, #0]
d00449ea:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d00449ee:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d00449f2:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00449f6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00449fa:	bfcc      	ite	gt
d00449fc:	2301      	movgt	r3, #1
d00449fe:	2300      	movle	r3, #0
d0044a00:	4293      	cmp	r3, r2
d0044a02:	f000 8089 	beq.w	d0044b18 <drawFakeHorizon+0x280>
d0044a06:	eeb4 bac8 	vcmpe.f32	s22, s16
d0044a0a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044a0e:	d429      	bmi.n	d0044a64 <drawFakeHorizon+0x1cc>
d0044a10:	ee7b 7aa7 	vadd.f32	s15, s23, s15
d0044a14:	eeb0 7a4c 	vmov.f32	s14, s24
d0044a18:	eeac 7aa7 	vfma.f32	s14, s25, s15
d0044a1c:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d0044a20:	ee17 ba90 	vmov	fp, s15
d0044a24:	f1bb 0f00 	cmp.w	fp, #0
d0044a28:	da9a      	bge.n	d0044960 <drawFakeHorizon+0xc8>
d0044a2a:	2a00      	cmp	r2, #0
d0044a2c:	d141      	bne.n	d0044ab2 <drawFakeHorizon+0x21a>
d0044a2e:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d0044a32:	f104 0401 	add.w	r4, r4, #1
d0044a36:	f5c2 72a0 	rsb	r2, r2, #320	; 0x140
d0044a3a:	4628      	mov	r0, r5
d0044a3c:	bfa8      	it	ge
d0044a3e:	2201      	movge	r2, #1
d0044a40:	4641      	mov	r1, r8
d0044a42:	f001 fab9 	bl	d0045fb8 <memset>
d0044a46:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d0044a4a:	d1b0      	bne.n	d00449ae <drawFakeHorizon+0x116>
d0044a4c:	eddf 7a3b 	vldr	s15, [pc, #236]	; d0044b3c <drawFakeHorizon+0x2a4>
d0044a50:	eeb4 bae7 	vcmpe.f32	s22, s15
d0044a54:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044a58:	da31      	bge.n	d0044abe <drawFakeHorizon+0x226>
d0044a5a:	b003      	add	sp, #12
d0044a5c:	ecbd 8b0c 	vpop	{d8-d13}
d0044a60:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0044a64:	b93a      	cbnz	r2, d0044a76 <drawFakeHorizon+0x1de>
d0044a66:	22a0      	movs	r2, #160	; 0xa0
d0044a68:	4628      	mov	r0, r5
d0044a6a:	4639      	mov	r1, r7
d0044a6c:	4415      	add	r5, r2
d0044a6e:	f001 faa3 	bl	d0045fb8 <memset>
d0044a72:	22a0      	movs	r2, #160	; 0xa0
d0044a74:	e7db      	b.n	d0044a2e <drawFakeHorizon+0x196>
d0044a76:	f04f 0aa0 	mov.w	sl, #160	; 0xa0
d0044a7a:	e77d      	b.n	d0044978 <drawFakeHorizon+0xe0>
d0044a7c:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d0044a80:	6832      	ldr	r2, [r6, #0]
d0044a82:	eb02 1585 	add.w	r5, r2, r5, lsl #6
d0044a86:	4639      	mov	r1, r7
d0044a88:	4628      	mov	r0, r5
d0044a8a:	f44f 72a0 	mov.w	r2, #320	; 0x140
d0044a8e:	f001 fa93 	bl	d0045fb8 <memset>
d0044a92:	e788      	b.n	d00449a6 <drawFakeHorizon+0x10e>
d0044a94:	f1bb 0f00 	cmp.w	fp, #0
d0044a98:	d00e      	beq.n	d0044ab8 <drawFakeHorizon+0x220>
d0044a9a:	4628      	mov	r0, r5
d0044a9c:	4652      	mov	r2, sl
d0044a9e:	4639      	mov	r1, r7
d0044aa0:	4455      	add	r5, sl
d0044aa2:	f001 fa89 	bl	d0045fb8 <memset>
d0044aa6:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d0044aaa:	f6bf af7c 	bge.w	d00449a6 <drawFakeHorizon+0x10e>
d0044aae:	4652      	mov	r2, sl
d0044ab0:	e7bd      	b.n	d0044a2e <drawFakeHorizon+0x196>
d0044ab2:	f04f 0a00 	mov.w	sl, #0
d0044ab6:	e76c      	b.n	d0044992 <drawFakeHorizon+0xfa>
d0044ab8:	46da      	mov	sl, fp
d0044aba:	4652      	mov	r2, sl
d0044abc:	e7b7      	b.n	d0044a2e <drawFakeHorizon+0x196>
d0044abe:	ed9f 7a1d 	vldr	s14, [pc, #116]	; d0044b34 <drawFakeHorizon+0x29c>
d0044ac2:	f240 12df 	movw	r2, #479	; 0x1df
d0044ac6:	eddf 7a1e 	vldr	s15, [pc, #120]	; d0044b40 <drawFakeHorizon+0x2a8>
d0044aca:	2000      	movs	r0, #0
d0044acc:	ee6b ba87 	vmul.f32	s23, s23, s14
d0044ad0:	ed9f 7a1c 	vldr	s14, [pc, #112]	; d0044b44 <drawFakeHorizon+0x2ac>
d0044ad4:	eddf 6a14 	vldr	s13, [pc, #80]	; d0044b28 <drawFakeHorizon+0x290>
d0044ad8:	f8cd 9000 	str.w	r9, [sp]
d0044adc:	eeb0 6a6b 	vmov.f32	s12, s23
d0044ae0:	eeed ba87 	vfma.f32	s23, s27, s14
d0044ae4:	eead 6aa7 	vfma.f32	s12, s27, s15
d0044ae8:	eecb 7a8d 	vdiv.f32	s15, s23, s26
d0044aec:	ee86 7a0d 	vdiv.f32	s14, s12, s26
d0044af0:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0044af4:	fefc 7ae7 	vcvta.s32.f32	s15, s15
d0044af8:	ee37 7a26 	vadd.f32	s14, s14, s13
d0044afc:	ee17 3a90 	vmov	r3, s15
d0044b00:	febc 7ac7 	vcvta.s32.f32	s14, s14
d0044b04:	ee17 1a10 	vmov	r1, s14
d0044b08:	f7fb fec6 	bl	d0040898 <drawLine>
d0044b0c:	b003      	add	sp, #12
d0044b0e:	ecbd 8b0c 	vpop	{d8-d13}
d0044b12:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0044b16:	4770      	bx	lr
d0044b18:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0044b1c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044b20:	ddb1      	ble.n	d0044a86 <drawFakeHorizon+0x1ee>
d0044b22:	4641      	mov	r1, r8
d0044b24:	e7b0      	b.n	d0044a88 <drawFakeHorizon+0x1f0>
d0044b26:	bf00      	nop
d0044b28:	43200000 	.word	0x43200000
d0044b2c:	c31f0000 	.word	0xc31f0000
d0044b30:	3b888889 	.word	0x3b888889
d0044b34:	43700000 	.word	0x43700000
d0044b38:	d012cd44 	.word	0xd012cd44
d0044b3c:	38d1b717 	.word	0x38d1b717
d0044b40:	c3700000 	.word	0xc3700000
d0044b44:	436f0000 	.word	0x436f0000

d0044b48 <submitEntitySolid>:
d0044b48:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0044b4c:	ed2d 8b10 	vpush	{d8-d15}
d0044b50:	b0b3      	sub	sp, #204	; 0xcc
d0044b52:	f10d 036f 	add.w	r3, sp, #111	; 0x6f
d0044b56:	9104      	str	r1, [sp, #16]
d0044b58:	f023 031f 	bic.w	r3, r3, #31
d0044b5c:	9305      	str	r3, [sp, #20]
d0044b5e:	2800      	cmp	r0, #0
d0044b60:	f000 827c 	beq.w	d004505c <submitEntitySolid+0x514>
d0044b64:	f8d0 800c 	ldr.w	r8, [r0, #12]
d0044b68:	4604      	mov	r4, r0
d0044b6a:	f1b8 0f00 	cmp.w	r8, #0
d0044b6e:	f000 8275 	beq.w	d004505c <submitEntitySolid+0x514>
d0044b72:	f8d8 3000 	ldr.w	r3, [r8]
d0044b76:	2b00      	cmp	r3, #0
d0044b78:	f000 8270 	beq.w	d004505c <submitEntitySolid+0x514>
d0044b7c:	f8d8 3010 	ldr.w	r3, [r8, #16]
d0044b80:	2b00      	cmp	r3, #0
d0044b82:	f000 826b 	beq.w	d004505c <submitEntitySolid+0x514>
d0044b86:	f8d8 3004 	ldr.w	r3, [r8, #4]
d0044b8a:	3b01      	subs	r3, #1
d0044b8c:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d0044b90:	f080 8264 	bcs.w	d004505c <submitEntitySolid+0x514>
d0044b94:	f8d8 3014 	ldr.w	r3, [r8, #20]
d0044b98:	2b00      	cmp	r3, #0
d0044b9a:	f340 825f 	ble.w	d004505c <submitEntitySolid+0x514>
d0044b9e:	460f      	mov	r7, r1
d0044ba0:	edd1 aa11 	vldr	s21, [r1, #68]	; 0x44
d0044ba4:	ed91 fa10 	vldr	s30, [r1, #64]	; 0x40
d0044ba8:	f7fe ffbe 	bl	d0043b28 <lightsGet>
d0044bac:	900b      	str	r0, [sp, #44]	; 0x2c
d0044bae:	f7fe ffbf 	bl	d0043b30 <lightsGetCount>
d0044bb2:	edd8 fa09 	vldr	s31, [r8, #36]	; 0x24
d0044bb6:	edd8 7a0a 	vldr	s15, [r8, #40]	; 0x28
d0044bba:	eef5 fac0 	vcmpe.f32	s31, #0.0
d0044bbe:	ed98 7a08 	vldr	s14, [r8, #32]
d0044bc2:	f8d8 3004 	ldr.w	r3, [r8, #4]
d0044bc6:	ed8d 7a01 	vstr	s14, [sp, #4]
d0044bca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044bce:	ed98 7a0c 	vldr	s14, [r8, #48]	; 0x30
d0044bd2:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0044bd6:	ed94 6a00 	vldr	s12, [r4]
d0044bda:	ed8d 7a09 	vstr	s14, [sp, #36]	; 0x24
d0044bde:	bfcc      	ite	gt
d0044be0:	2601      	movgt	r6, #1
d0044be2:	2600      	movle	r6, #0
d0044be4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044be8:	ed98 7a0b 	vldr	s14, [r8, #44]	; 0x2c
d0044bec:	edd4 5a01 	vldr	s11, [r4, #4]
d0044bf0:	ed94 5a02 	vldr	s10, [r4, #8]
d0044bf4:	bfcc      	ite	gt
d0044bf6:	2501      	movgt	r5, #1
d0044bf8:	2500      	movle	r5, #0
d0044bfa:	2b00      	cmp	r3, #0
d0044bfc:	edd4 4a07 	vldr	s9, [r4, #28]
d0044c00:	ed94 4a08 	vldr	s8, [r4, #32]
d0044c04:	edd4 3a09 	vldr	s7, [r4, #36]	; 0x24
d0044c08:	ed94 3a0a 	vldr	s6, [r4, #40]	; 0x28
d0044c0c:	edd4 2a0b 	vldr	s5, [r4, #44]	; 0x2c
d0044c10:	ed94 2a0c 	vldr	s4, [r4, #48]	; 0x30
d0044c14:	edd4 1a04 	vldr	s3, [r4, #16]
d0044c18:	ed94 1a05 	vldr	s2, [r4, #20]
d0044c1c:	edd4 0a06 	vldr	s1, [r4, #24]
d0044c20:	edd7 ca00 	vldr	s25, [r7]
d0044c24:	ed97 da01 	vldr	s26, [r7, #4]
d0044c28:	edd7 da02 	vldr	s27, [r7, #8]
d0044c2c:	ed97 0a06 	vldr	s0, [r7, #24]
d0044c30:	ed97 8a07 	vldr	s16, [r7, #28]
d0044c34:	edd7 8a08 	vldr	s17, [r7, #32]
d0044c38:	ed97 9a09 	vldr	s18, [r7, #36]	; 0x24
d0044c3c:	edd7 9a0a 	vldr	s19, [r7, #40]	; 0x28
d0044c40:	ed97 aa0b 	vldr	s20, [r7, #44]	; 0x2c
d0044c44:	edcd 7a0a 	vstr	s15, [sp, #40]	; 0x28
d0044c48:	9007      	str	r0, [sp, #28]
d0044c4a:	ed8d 7a08 	vstr	s14, [sp, #32]
d0044c4e:	ed97 ba0c 	vldr	s22, [r7, #48]	; 0x30
d0044c52:	edd7 ba0d 	vldr	s23, [r7, #52]	; 0x34
d0044c56:	ed97 ca0e 	vldr	s24, [r7, #56]	; 0x38
d0044c5a:	dd51      	ble.n	d0044d00 <submitEntitySolid+0x1b8>
d0044c5c:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0044c60:	f8d8 3000 	ldr.w	r3, [r8]
d0044c64:	49de      	ldr	r1, [pc, #888]	; (d0044fe0 <submitEntitySolid+0x498>)
d0044c66:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d0044c6a:	4ade      	ldr	r2, [pc, #888]	; (d0044fe4 <submitEntitySolid+0x49c>)
d0044c6c:	edd3 7a01 	vldr	s15, [r3, #4]
d0044c70:	330c      	adds	r3, #12
d0044c72:	ed53 ea03 	vldr	s29, [r3, #-12]
d0044c76:	310c      	adds	r1, #12
d0044c78:	ee27 7aa2 	vmul.f32	s14, s15, s5
d0044c7c:	ed53 6a01 	vldr	s13, [r3, #-4]
d0044c80:	ee27 ea83 	vmul.f32	s28, s15, s6
d0044c84:	4298      	cmp	r0, r3
d0044c86:	ee67 7a82 	vmul.f32	s15, s15, s4
d0044c8a:	f102 020c 	add.w	r2, r2, #12
d0044c8e:	eeae 7a84 	vfma.f32	s14, s29, s8
d0044c92:	eeae eaa4 	vfma.f32	s28, s29, s9
d0044c96:	eeee 7aa3 	vfma.f32	s15, s29, s7
d0044c9a:	ee35 7a87 	vadd.f32	s14, s11, s14
d0044c9e:	ee36 ea0e 	vadd.f32	s28, s12, s28
d0044ca2:	ee75 7a27 	vadd.f32	s15, s10, s15
d0044ca6:	eea6 7a81 	vfma.f32	s14, s13, s2
d0044caa:	eea6 eaa1 	vfma.f32	s28, s13, s3
d0044cae:	eee6 7aa0 	vfma.f32	s15, s13, s1
d0044cb2:	eef0 ea47 	vmov.f32	s29, s14
d0044cb6:	ee37 7a4d 	vsub.f32	s14, s14, s26
d0044cba:	ed01 ea03 	vstr	s28, [r1, #-12]
d0044cbe:	ee7e 6a6c 	vsub.f32	s13, s28, s25
d0044cc2:	ed41 7a01 	vstr	s15, [r1, #-4]
d0044cc6:	ee37 eaed 	vsub.f32	s28, s15, s27
d0044cca:	ed41 ea02 	vstr	s29, [r1, #-8]
d0044cce:	ee69 7a87 	vmul.f32	s15, s19, s14
d0044cd2:	ee68 ea07 	vmul.f32	s29, s16, s14
d0044cd6:	ee2b 7a87 	vmul.f32	s14, s23, s14
d0044cda:	eee9 7a26 	vfma.f32	s15, s18, s13
d0044cde:	eee0 ea26 	vfma.f32	s29, s0, s13
d0044ce2:	eeab 7a26 	vfma.f32	s14, s22, s13
d0044ce6:	eeea 7a0e 	vfma.f32	s15, s20, s28
d0044cea:	eee8 ea8e 	vfma.f32	s29, s17, s28
d0044cee:	eeac 7a0e 	vfma.f32	s14, s24, s28
d0044cf2:	ed42 7a02 	vstr	s15, [r2, #-8]
d0044cf6:	ed42 ea03 	vstr	s29, [r2, #-12]
d0044cfa:	ed02 7a01 	vstr	s14, [r2, #-4]
d0044cfe:	d1b5      	bne.n	d0044c6c <submitEntitySolid+0x124>
d0044d00:	f8d8 3014 	ldr.w	r3, [r8, #20]
d0044d04:	2b00      	cmp	r3, #0
d0044d06:	9302      	str	r3, [sp, #8]
d0044d08:	f340 81a8 	ble.w	d004505c <submitEntitySolid+0x514>
d0044d0c:	ea46 0305 	orr.w	r3, r6, r5
d0044d10:	ed9d ba0a 	vldr	s22, [sp, #40]	; 0x28
d0044d14:	f04f 0900 	mov.w	r9, #0
d0044d18:	edcd ca0a 	vstr	s25, [sp, #40]	; 0x28
d0044d1c:	eddf eab2 	vldr	s29, [pc, #712]	; d0044fe8 <submitEntitySolid+0x4a0>
d0044d20:	eddd ca01 	vldr	s25, [sp, #4]
d0044d24:	ed8d da0c 	vstr	s26, [sp, #48]	; 0x30
d0044d28:	9306      	str	r3, [sp, #24]
d0044d2a:	ed9d da09 	vldr	s26, [sp, #36]	; 0x24
d0044d2e:	f8cd 800c 	str.w	r8, [sp, #12]
d0044d32:	edcd da09 	vstr	s27, [sp, #36]	; 0x24
d0044d36:	9a03      	ldr	r2, [sp, #12]
d0044d38:	ea4f 1309 	mov.w	r3, r9, lsl #4
d0044d3c:	4ea9      	ldr	r6, [pc, #676]	; (d0044fe4 <submitEntitySolid+0x49c>)
d0044d3e:	6915      	ldr	r5, [r2, #16]
d0044d40:	58e8      	ldr	r0, [r5, r3]
d0044d42:	eb05 1509 	add.w	r5, r5, r9, lsl #4
d0044d46:	4633      	mov	r3, r6
d0044d48:	eb00 0440 	add.w	r4, r0, r0, lsl #1
d0044d4c:	686a      	ldr	r2, [r5, #4]
d0044d4e:	68af      	ldr	r7, [r5, #8]
d0044d50:	0041      	lsls	r1, r0, #1
d0044d52:	eb06 0484 	add.w	r4, r6, r4, lsl #2
d0044d56:	9701      	str	r7, [sp, #4]
d0044d58:	eb02 0642 	add.w	r6, r2, r2, lsl #1
d0044d5c:	edd4 4a02 	vldr	s9, [r4, #8]
d0044d60:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d0044d64:	eb03 0686 	add.w	r6, r3, r6, lsl #2
d0044d68:	eef4 4aea 	vcmpe.f32	s9, s21
d0044d6c:	eb03 0787 	add.w	r7, r3, r7, lsl #2
d0044d70:	9b01      	ldr	r3, [sp, #4]
d0044d72:	ea4f 0842 	mov.w	r8, r2, lsl #1
d0044d76:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044d7a:	ea4f 0b43 	mov.w	fp, r3, lsl #1
d0044d7e:	dd0e      	ble.n	d0044d9e <submitEntitySolid+0x256>
d0044d80:	edd6 7a02 	vldr	s15, [r6, #8]
d0044d84:	eef4 7aea 	vcmpe.f32	s15, s21
d0044d88:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044d8c:	dd07      	ble.n	d0044d9e <submitEntitySolid+0x256>
d0044d8e:	edd7 7a02 	vldr	s15, [r7, #8]
d0044d92:	eef4 7aea 	vcmpe.f32	s15, s21
d0044d96:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044d9a:	f300 8159 	bgt.w	d0045050 <submitEntitySolid+0x508>
d0044d9e:	ed94 5a00 	vldr	s10, [r4]
d0044da2:	edd4 2a02 	vldr	s5, [r4, #8]
d0044da6:	ed96 4a00 	vldr	s8, [r6]
d0044daa:	ed97 6a02 	vldr	s12, [r7, #8]
d0044dae:	ee34 1a45 	vsub.f32	s2, s8, s10
d0044db2:	edd4 7a01 	vldr	s15, [r4, #4]
d0044db6:	ee36 6a62 	vsub.f32	s12, s12, s5
d0044dba:	ed96 3a02 	vldr	s6, [r6, #8]
d0044dbe:	edd7 6a01 	vldr	s13, [r7, #4]
d0044dc2:	edd7 3a00 	vldr	s7, [r7]
d0044dc6:	ee33 3a62 	vsub.f32	s6, s6, s5
d0044dca:	ee76 6ae7 	vsub.f32	s13, s13, s15
d0044dce:	edd6 5a01 	vldr	s11, [r6, #4]
d0044dd2:	ee33 7ac5 	vsub.f32	s14, s7, s10
d0044dd6:	ee66 1a41 	vnmul.f32	s3, s12, s2
d0044dda:	ee75 5ae7 	vsub.f32	s11, s11, s15
d0044dde:	ee26 2ac3 	vnmul.f32	s4, s13, s6
d0044de2:	eee3 1a07 	vfma.f32	s3, s6, s14
d0044de6:	ee27 7a65 	vnmul.f32	s14, s14, s11
d0044dea:	eea5 2a86 	vfma.f32	s4, s11, s12
d0044dee:	eea1 7a26 	vfma.f32	s14, s2, s13
d0044df2:	ee67 7aa1 	vmul.f32	s15, s15, s3
d0044df6:	eee5 7a02 	vfma.f32	s15, s10, s4
d0044dfa:	eee2 7a87 	vfma.f32	s15, s5, s14
d0044dfe:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0044e02:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e06:	f280 8123 	bge.w	d0045050 <submitEntitySolid+0x508>
d0044e0a:	180b      	adds	r3, r1, r0
d0044e0c:	9901      	ldr	r1, [sp, #4]
d0044e0e:	f8df e1d0 	ldr.w	lr, [pc, #464]	; d0044fe0 <submitEntitySolid+0x498>
d0044e12:	eb08 0c02 	add.w	ip, r8, r2
d0044e16:	eb0b 0a01 	add.w	sl, fp, r1
d0044e1a:	eb0e 0383 	add.w	r3, lr, r3, lsl #2
d0044e1e:	eb0e 0c8c 	add.w	ip, lr, ip, lsl #2
d0044e22:	eb0e 0a8a 	add.w	sl, lr, sl, lsl #2
d0044e26:	ed93 7a00 	vldr	s14, [r3]
d0044e2a:	ed93 6a02 	vldr	s12, [r3, #8]
d0044e2e:	eddc 5a00 	vldr	s11, [ip]
d0044e32:	ed9a 1a02 	vldr	s2, [sl, #8]
d0044e36:	ee75 0ac7 	vsub.f32	s1, s11, s14
d0044e3a:	edd3 6a01 	vldr	s13, [r3, #4]
d0044e3e:	ee31 0a46 	vsub.f32	s0, s2, s12
d0044e42:	eddc 2a02 	vldr	s5, [ip, #8]
d0044e46:	edda 1a01 	vldr	s3, [sl, #4]
d0044e4a:	ed9a 2a00 	vldr	s4, [sl]
d0044e4e:	ee32 aac6 	vsub.f32	s20, s5, s12
d0044e52:	ee71 7ae6 	vsub.f32	s15, s3, s13
d0044e56:	ed9c 3a01 	vldr	s6, [ip, #4]
d0044e5a:	ee32 8a47 	vsub.f32	s16, s4, s14
d0044e5e:	ee20 9a60 	vnmul.f32	s18, s0, s1
d0044e62:	ee73 9a66 	vsub.f32	s19, s6, s13
d0044e66:	ee67 8aca 	vnmul.f32	s17, s15, s20
d0044e6a:	eeaa 9a08 	vfma.f32	s18, s20, s16
d0044e6e:	ee28 8a69 	vnmul.f32	s16, s16, s19
d0044e72:	eee9 8a80 	vfma.f32	s17, s19, s0
d0044e76:	eea0 8aa7 	vfma.f32	s16, s1, s15
d0044e7a:	ee69 7a09 	vmul.f32	s15, s18, s18
d0044e7e:	eee8 7aa8 	vfma.f32	s15, s17, s17
d0044e82:	eee8 7a08 	vfma.f32	s15, s16, s16
d0044e86:	eef4 7aee 	vcmpe.f32	s15, s29
d0044e8a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e8e:	f240 80df 	bls.w	d0045050 <submitEntitySolid+0x508>
d0044e92:	eddf 0a59 	vldr	s1, [pc, #356]	; d0044ff8 <submitEntitySolid+0x4b0>
d0044e96:	eef4 7ae0 	vcmpe.f32	s15, s1
d0044e9a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e9e:	f100 822b 	bmi.w	d00452f8 <submitEntitySolid+0x7b0>
d0044ea2:	eddf 0a56 	vldr	s1, [pc, #344]	; d0044ffc <submitEntitySolid+0x4b4>
d0044ea6:	eef4 7a60 	vcmp.f32	s15, s1
d0044eaa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044eae:	f300 8223 	bgt.w	d00452f8 <submitEntitySolid+0x7b0>
d0044eb2:	7b6b      	ldrb	r3, [r5, #13]
d0044eb4:	eef4 4acf 	vcmpe.f32	s9, s30
d0044eb8:	eddf 7a4c 	vldr	s15, [pc, #304]	; d0044fec <submitEntitySolid+0x4a4>
d0044ebc:	ee7c 9a8d 	vadd.f32	s19, s25, s26
d0044ec0:	ee0a 3a10 	vmov	s20, r3
d0044ec4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044ec8:	eeb8 aa4a 	vcvt.f32.u32	s20, s20
d0044ecc:	ee2a aa27 	vmul.f32	s20, s20, s15
d0044ed0:	f2c0 80c9 	blt.w	d0045066 <submitEntitySolid+0x51e>
d0044ed4:	4490      	add	r8, r2
d0044ed6:	4b43      	ldr	r3, [pc, #268]	; (d0044fe4 <submitEntitySolid+0x49c>)
d0044ed8:	eb03 0888 	add.w	r8, r3, r8, lsl #2
d0044edc:	edd8 7a02 	vldr	s15, [r8, #8]
d0044ee0:	eef4 7acf 	vcmpe.f32	s15, s30
d0044ee4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044ee8:	f2c0 80bd 	blt.w	d0045066 <submitEntitySolid+0x51e>
d0044eec:	9901      	ldr	r1, [sp, #4]
d0044eee:	448b      	add	fp, r1
d0044ef0:	4619      	mov	r1, r3
d0044ef2:	eb03 0b8b 	add.w	fp, r3, fp, lsl #2
d0044ef6:	eddb 0a02 	vldr	s1, [fp, #8]
d0044efa:	eef4 0acf 	vcmpe.f32	s1, s30
d0044efe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044f02:	f2c0 80b0 	blt.w	d0045066 <submitEntitySolid+0x51e>
d0044f06:	eeb1 0a64 	vneg.f32	s0, s9
d0044f0a:	eeb4 0a45 	vcmp.f32	s0, s10
d0044f0e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044f12:	f200 80a8 	bhi.w	d0045066 <submitEntitySolid+0x51e>
d0044f16:	eef4 4a45 	vcmp.f32	s9, s10
d0044f1a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044f1e:	f2c0 80a2 	blt.w	d0045066 <submitEntitySolid+0x51e>
d0044f22:	eeb1 5a67 	vneg.f32	s10, s15
d0044f26:	eeb4 5a44 	vcmp.f32	s10, s8
d0044f2a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044f2e:	f200 809a 	bhi.w	d0045066 <submitEntitySolid+0x51e>
d0044f32:	eef4 7a44 	vcmp.f32	s15, s8
d0044f36:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044f3a:	f2c0 8094 	blt.w	d0045066 <submitEntitySolid+0x51e>
d0044f3e:	eeb1 5a60 	vneg.f32	s10, s1
d0044f42:	eeb4 5a63 	vcmp.f32	s10, s7
d0044f46:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044f4a:	f200 808c 	bhi.w	d0045066 <submitEntitySolid+0x51e>
d0044f4e:	eef4 0a63 	vcmp.f32	s1, s7
d0044f52:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044f56:	f2c0 8086 	blt.w	d0045066 <submitEntitySolid+0x51e>
d0044f5a:	ed9f 5a25 	vldr	s10, [pc, #148]	; d0044ff0 <submitEntitySolid+0x4a8>
d0044f5e:	230c      	movs	r3, #12
d0044f60:	ee64 4a85 	vmul.f32	s9, s9, s10
d0044f64:	fb03 1000 	mla	r0, r3, r0, r1
d0044f68:	ed90 5a01 	vldr	s10, [r0, #4]
d0044f6c:	eeb1 4a64 	vneg.f32	s8, s9
d0044f70:	eeb4 5a44 	vcmp.f32	s10, s8
d0044f74:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044f78:	db75      	blt.n	d0045066 <submitEntitySolid+0x51e>
d0044f7a:	eeb4 5a64 	vcmp.f32	s10, s9
d0044f7e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044f82:	d870      	bhi.n	d0045066 <submitEntitySolid+0x51e>
d0044f84:	ed9f 5a1a 	vldr	s10, [pc, #104]	; d0044ff0 <submitEntitySolid+0x4a8>
d0044f88:	fb03 1202 	mla	r2, r3, r2, r1
d0044f8c:	ee67 7a85 	vmul.f32	s15, s15, s10
d0044f90:	edd2 4a01 	vldr	s9, [r2, #4]
d0044f94:	eeb1 4a67 	vneg.f32	s8, s15
d0044f98:	eef4 4a44 	vcmp.f32	s9, s8
d0044f9c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044fa0:	db61      	blt.n	d0045066 <submitEntitySolid+0x51e>
d0044fa2:	eef4 4a67 	vcmp.f32	s9, s15
d0044fa6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044faa:	d85c      	bhi.n	d0045066 <submitEntitySolid+0x51e>
d0044fac:	ee60 0a85 	vmul.f32	s1, s1, s10
d0044fb0:	9a01      	ldr	r2, [sp, #4]
d0044fb2:	fb03 1102 	mla	r1, r3, r2, r1
d0044fb6:	eeb1 5a60 	vneg.f32	s10, s1
d0044fba:	edd1 7a01 	vldr	s15, [r1, #4]
d0044fbe:	eef4 7a45 	vcmp.f32	s15, s10
d0044fc2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044fc6:	db4e      	blt.n	d0045066 <submitEntitySolid+0x51e>
d0044fc8:	eef4 7ae0 	vcmpe.f32	s15, s1
d0044fcc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044fd0:	d849      	bhi.n	d0045066 <submitEntitySolid+0x51e>
d0044fd2:	9b06      	ldr	r3, [sp, #24]
d0044fd4:	b1b3      	cbz	r3, d0045004 <submitEntitySolid+0x4bc>
d0044fd6:	9b07      	ldr	r3, [sp, #28]
d0044fd8:	2b00      	cmp	r3, #0
d0044fda:	f300 828a 	bgt.w	d00454f2 <submitEntitySolid+0x9aa>
d0044fde:	e011      	b.n	d0045004 <submitEntitySolid+0x4bc>
d0044fe0:	d01208c0 	.word	0xd01208c0
d0044fe4:	d0094880 	.word	0xd0094880
d0044fe8:	358637bd 	.word	0x358637bd
d0044fec:	3b808081 	.word	0x3b808081
d0044ff0:	3f2aaaab 	.word	0x3f2aaaab
d0044ff4:	3eaaaaab 	.word	0x3eaaaaab
d0044ff8:	3f7fbe77 	.word	0x3f7fbe77
d0044ffc:	3f8020c5 	.word	0x3f8020c5
d0045000:	00000000 	.word	0x00000000
d0045004:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0045008:	fe8a 0a29 	vmaxnm.f32	s0, s20, s19
d004500c:	fe80 0a67 	vminnm.f32	s0, s0, s15
d0045010:	f7fe fd72 	bl	d0043af8 <brightnessToShadeF>
d0045014:	eeb0 8a40 	vmov.f32	s16, s0
d0045018:	eef0 4a48 	vmov.f32	s9, s16
d004501c:	7b6a      	ldrb	r2, [r5, #13]
d004501e:	7b29      	ldrb	r1, [r5, #12]
d0045020:	9804      	ldr	r0, [sp, #16]
d0045022:	ed97 3a00 	vldr	s6, [r7]
d0045026:	edd7 3a01 	vldr	s7, [r7, #4]
d004502a:	ed97 4a02 	vldr	s8, [r7, #8]
d004502e:	edd6 1a00 	vldr	s3, [r6]
d0045032:	ed96 2a01 	vldr	s4, [r6, #4]
d0045036:	edd6 2a02 	vldr	s5, [r6, #8]
d004503a:	ed94 0a00 	vldr	s0, [r4]
d004503e:	edd4 0a01 	vldr	s1, [r4, #4]
d0045042:	ed94 1a02 	vldr	s2, [r4, #8]
d0045046:	f7ff fa1f 	bl	d0044488 <submitClippedTri>
d004504a:	9b03      	ldr	r3, [sp, #12]
d004504c:	695b      	ldr	r3, [r3, #20]
d004504e:	9302      	str	r3, [sp, #8]
d0045050:	f109 0901 	add.w	r9, r9, #1
d0045054:	9b02      	ldr	r3, [sp, #8]
d0045056:	4599      	cmp	r9, r3
d0045058:	f6ff ae6d 	blt.w	d0044d36 <submitEntitySolid+0x1ee>
d004505c:	b033      	add	sp, #204	; 0xcc
d004505e:	ecbd 8b10 	vpop	{d8-d15}
d0045062:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0045066:	9b06      	ldr	r3, [sp, #24]
d0045068:	2b00      	cmp	r3, #0
d004506a:	f000 8152 	beq.w	d0045312 <submitEntitySolid+0x7ca>
d004506e:	9b07      	ldr	r3, [sp, #28]
d0045070:	2b00      	cmp	r3, #0
d0045072:	f340 814e 	ble.w	d0045312 <submitEntitySolid+0x7ca>
d0045076:	f04f 0800 	mov.w	r8, #0
d004507a:	ee75 ba87 	vadd.f32	s23, s11, s14
d004507e:	ed5f 7a23 	vldr	s15, [pc, #-140]	; d0044ff4 <submitEntitySolid+0x4ac>
d0045082:	ee33 ca26 	vadd.f32	s24, s6, s13
d0045086:	ee32 ea86 	vadd.f32	s28, s5, s12
d004508a:	eeb5 bac0 	vcmpe.f32	s22, #0.0
d004508e:	ee7b ba82 	vadd.f32	s23, s23, s4
d0045092:	ee3c ca21 	vadd.f32	s24, s24, s3
d0045096:	ee3e ea01 	vadd.f32	s28, s28, s2
d004509a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004509e:	ee6b baa7 	vmul.f32	s23, s23, s15
d00450a2:	ee2c ca27 	vmul.f32	s24, s24, s15
d00450a6:	ee2e ea27 	vmul.f32	s28, s28, s15
d00450aa:	f340 818b 	ble.w	d00453c4 <submitEntitySolid+0x87c>
d00450ae:	eddd 7a0c 	vldr	s15, [sp, #48]	; 0x30
d00450b2:	ee77 2acc 	vsub.f32	s5, s15, s24
d00450b6:	eddd 7a0a 	vldr	s15, [sp, #40]	; 0x28
d00450ba:	ee37 3aeb 	vsub.f32	s6, s15, s23
d00450be:	eddd 7a09 	vldr	s15, [sp, #36]	; 0x24
d00450c2:	ee77 4ace 	vsub.f32	s9, s15, s28
d00450c6:	ee62 7aa2 	vmul.f32	s15, s5, s5
d00450ca:	eee3 7a03 	vfma.f32	s15, s6, s6
d00450ce:	eee4 7aa4 	vfma.f32	s15, s9, s9
d00450d2:	eef4 7aee 	vcmpe.f32	s15, s29
d00450d6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00450da:	f340 8173 	ble.w	d00453c4 <submitEntitySolid+0x87c>
d00450de:	ed1f 7a3a 	vldr	s14, [pc, #-232]	; d0044ff8 <submitEntitySolid+0x4b0>
d00450e2:	eef4 7ac7 	vcmpe.f32	s15, s14
d00450e6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00450ea:	f100 81e2 	bmi.w	d00454b2 <submitEntitySolid+0x96a>
d00450ee:	ed1f 7a3d 	vldr	s14, [pc, #-244]	; d0044ffc <submitEntitySolid+0x4b4>
d00450f2:	eef4 7a47 	vcmp.f32	s15, s14
d00450f6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00450fa:	f300 81da 	bgt.w	d00454b2 <submitEntitySolid+0x96a>
d00450fe:	ee79 1a09 	vadd.f32	s3, s18, s18
d0045102:	4642      	mov	r2, r8
d0045104:	ee38 2a08 	vadd.f32	s4, s16, s16
d0045108:	46b8      	mov	r8, r7
d004510a:	eef0 6a6c 	vmov.f32	s13, s25
d004510e:	4637      	mov	r7, r6
d0045110:	eef0 7a61 	vmov.f32	s15, s3
d0045114:	4626      	mov	r6, r4
d0045116:	eeb0 7a42 	vmov.f32	s14, s4
d004511a:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
d004511e:	eef0 ca64 	vmov.f32	s25, s9
d0045122:	f04f 0b00 	mov.w	fp, #0
d0045126:	eef0 4a6a 	vmov.f32	s9, s21
d004512a:	9c07      	ldr	r4, [sp, #28]
d004512c:	eef0 aa62 	vmov.f32	s21, s5
d0045130:	eeb0 2a4d 	vmov.f32	s4, s26
d0045134:	eef0 1a4a 	vmov.f32	s3, s20
d0045138:	ee38 1aa8 	vadd.f32	s2, s17, s17
d004513c:	eeb0 aa43 	vmov.f32	s20, s6
d0045140:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0045144:	eeb0 3a4f 	vmov.f32	s6, s30
d0045148:	eef2 da00 	vmov.f32	s27, #32	; 0x41000000  8.0
d004514c:	eeb0 fa67 	vmov.f32	s30, s15
d0045150:	eeb0 da47 	vmov.f32	s26, s14
d0045154:	eef0 2a66 	vmov.f32	s5, s13
d0045158:	e0b6      	b.n	d00452c8 <submitEntitySolid+0x780>
d004515a:	edda 7a02 	vldr	s15, [sl, #8]
d004515e:	edda 6a01 	vldr	s13, [sl, #4]
d0045162:	ee77 7acc 	vsub.f32	s15, s15, s24
d0045166:	ed9a 7a03 	vldr	s14, [sl, #12]
d004516a:	ee76 6aeb 	vsub.f32	s13, s13, s23
d004516e:	edda 5a0a 	vldr	s11, [sl, #40]	; 0x28
d0045172:	ee37 7a4e 	vsub.f32	s14, s14, s28
d0045176:	ee27 6aa7 	vmul.f32	s12, s15, s15
d004517a:	ee25 4aa5 	vmul.f32	s8, s11, s11
d004517e:	eea6 6aa6 	vfma.f32	s12, s13, s13
d0045182:	eea7 6a07 	vfma.f32	s12, s14, s14
d0045186:	eeb4 6a6e 	vcmp.f32	s12, s29
d004518a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004518e:	f340 8094 	ble.w	d00452ba <submitEntitySolid+0x772>
d0045192:	eeb4 4a46 	vcmp.f32	s8, s12
d0045196:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004519a:	f340 808e 	ble.w	d00452ba <submitEntitySolid+0x772>
d004519e:	eeb1 0ac6 	vsqrt.f32	s0, s12
d00451a2:	edda 3a08 	vldr	s7, [sl, #32]
d00451a6:	ee63 0aa3 	vmul.f32	s1, s7, s7
d00451aa:	eef4 0ac6 	vcmpe.f32	s1, s12
d00451ae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00451b2:	ee85 4a00 	vdiv.f32	s8, s10, s0
d00451b6:	ee66 6a84 	vmul.f32	s13, s13, s8
d00451ba:	ee67 7a84 	vmul.f32	s15, s15, s8
d00451be:	ee27 7a04 	vmul.f32	s14, s14, s8
d00451c2:	f140 8123 	bpl.w	d004540c <submitEntitySolid+0x8c4>
d00451c6:	edda 0a09 	vldr	s1, [sl, #36]	; 0x24
d00451ca:	eef4 3ae0 	vcmpe.f32	s7, s1
d00451ce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00451d2:	da72      	bge.n	d00452ba <submitEntitySolid+0x772>
d00451d4:	eef4 5ae0 	vcmpe.f32	s11, s1
d00451d8:	ee26 6a04 	vmul.f32	s12, s12, s8
d00451dc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00451e0:	eef4 0ac6 	vcmpe.f32	s1, s12
d00451e4:	f200 814d 	bhi.w	d0045482 <submitEntitySolid+0x93a>
d00451e8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00451ec:	d965      	bls.n	d00452ba <submitEntitySolid+0x772>
d00451ee:	ee36 6a63 	vsub.f32	s12, s12, s7
d00451f2:	ee70 3ae3 	vsub.f32	s7, s1, s7
d00451f6:	eec6 5a23 	vdiv.f32	s11, s12, s7
d00451fa:	ed1f 6a7f 	vldr	s12, [pc, #-508]	; d0045000 <submitEntitySolid+0x4b8>
d00451fe:	fe85 6a86 	vmaxnm.f32	s12, s11, s12
d0045202:	fe86 6a45 	vminnm.f32	s12, s12, s10
d0045206:	ee35 6a46 	vsub.f32	s12, s10, s12
d004520a:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d004520e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045212:	d952      	bls.n	d00452ba <submitEntitySolid+0x772>
d0045214:	ee69 5a27 	vmul.f32	s11, s18, s15
d0045218:	eee8 5aa6 	vfma.f32	s11, s17, s13
d004521c:	eee8 5a07 	vfma.f32	s11, s16, s14
d0045220:	eef5 5ac0 	vcmpe.f32	s11, #0.0
d0045224:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045228:	d947      	bls.n	d00452ba <submitEntitySolid+0x772>
d004522a:	eef5 fac0 	vcmpe.f32	s31, #0.0
d004522e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045232:	dd07      	ble.n	d0045244 <submitEntitySolid+0x6fc>
d0045234:	ed9a 4a07 	vldr	s8, [sl, #28]
d0045238:	ee2f 4a84 	vmul.f32	s8, s31, s8
d004523c:	ee24 4a06 	vmul.f32	s8, s8, s12
d0045240:	eee5 9a84 	vfma.f32	s19, s11, s8
d0045244:	eeb5 bac0 	vcmpe.f32	s22, #0.0
d0045248:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004524c:	dd2f      	ble.n	d00452ae <submitEntitySolid+0x766>
d004524e:	eed5 7a8f 	vfnms.f32	s15, s11, s30
d0045252:	eed5 6a81 	vfnms.f32	s13, s11, s2
d0045256:	ee95 7a8d 	vfnms.f32	s14, s11, s26
d004525a:	ee2a 0aa7 	vmul.f32	s0, s21, s15
d004525e:	eeaa 0a26 	vfma.f32	s0, s20, s13
d0045262:	eeac 0a87 	vfma.f32	s0, s25, s14
d0045266:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d004526a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004526e:	dd1e      	ble.n	d00452ae <submitEntitySolid+0x766>
d0045270:	eddd 7a08 	vldr	s15, [sp, #32]
d0045274:	eef4 7a6d 	vcmp.f32	s15, s27
d0045278:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004527c:	d009      	beq.n	d0045292 <submitEntitySolid+0x74a>
d004527e:	eeb3 7a00 	vmov.f32	s14, #48	; 0x41800000  16.0
d0045282:	eef4 7a47 	vcmp.f32	s15, s14
d0045286:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004528a:	f040 80c2 	bne.w	d0045412 <submitEntitySolid+0x8ca>
d004528e:	ee20 0a00 	vmul.f32	s0, s0, s0
d0045292:	ee20 0a00 	vmul.f32	s0, s0, s0
d0045296:	ee20 0a00 	vmul.f32	s0, s0, s0
d004529a:	ee20 0a00 	vmul.f32	s0, s0, s0
d004529e:	edda 7a07 	vldr	s15, [sl, #28]
d00452a2:	ee6b 7a27 	vmul.f32	s15, s22, s15
d00452a6:	ee27 6a86 	vmul.f32	s12, s15, s12
d00452aa:	eee6 9a00 	vfma.f32	s19, s12, s0
d00452ae:	eef4 9ac5 	vcmpe.f32	s19, s10
d00452b2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00452b6:	f280 80d3 	bge.w	d0045460 <submitEntitySolid+0x918>
d00452ba:	f10b 0b01 	add.w	fp, fp, #1
d00452be:	f10a 0a40 	add.w	sl, sl, #64	; 0x40
d00452c2:	455c      	cmp	r4, fp
d00452c4:	f340 8085 	ble.w	d00453d2 <submitEntitySolid+0x88a>
d00452c8:	f8da 302c 	ldr.w	r3, [sl, #44]	; 0x2c
d00452cc:	2b00      	cmp	r3, #0
d00452ce:	d0f4      	beq.n	d00452ba <submitEntitySolid+0x772>
d00452d0:	f89a 3000 	ldrb.w	r3, [sl]
d00452d4:	2b00      	cmp	r3, #0
d00452d6:	f43f af40 	beq.w	d004515a <submitEntitySolid+0x612>
d00452da:	edda 6a04 	vldr	s13, [sl, #16]
d00452de:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d00452e2:	edda 7a05 	vldr	s15, [sl, #20]
d00452e6:	ed9a 7a06 	vldr	s14, [sl, #24]
d00452ea:	eef1 6a66 	vneg.f32	s13, s13
d00452ee:	eef1 7a67 	vneg.f32	s15, s15
d00452f2:	eeb1 7a47 	vneg.f32	s14, s14
d00452f6:	e78d      	b.n	d0045214 <submitEntitySolid+0x6cc>
d00452f8:	eef1 0ae7 	vsqrt.f32	s1, s15
d00452fc:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0045300:	eec0 7a20 	vdiv.f32	s15, s0, s1
d0045304:	ee68 8aa7 	vmul.f32	s17, s17, s15
d0045308:	ee29 9a27 	vmul.f32	s18, s18, s15
d004530c:	ee28 8a27 	vmul.f32	s16, s16, s15
d0045310:	e5cf      	b.n	d0044eb2 <submitEntitySolid+0x36a>
d0045312:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0045316:	fe8a 0a29 	vmaxnm.f32	s0, s20, s19
d004531a:	fe80 0a67 	vminnm.f32	s0, s0, s15
d004531e:	f7fe fbeb 	bl	d0043af8 <brightnessToShadeF>
d0045322:	eeb0 8a40 	vmov.f32	s16, s0
d0045326:	f8dd a010 	ldr.w	sl, [sp, #16]
d004532a:	f8dd 8014 	ldr.w	r8, [sp, #20]
d004532e:	4651      	mov	r1, sl
d0045330:	ed97 3a00 	vldr	s6, [r7]
d0045334:	4640      	mov	r0, r8
d0045336:	edd7 3a01 	vldr	s7, [r7, #4]
d004533a:	ed97 4a02 	vldr	s8, [r7, #8]
d004533e:	edd6 1a00 	vldr	s3, [r6]
d0045342:	ed96 2a01 	vldr	s4, [r6, #4]
d0045346:	edd6 2a02 	vldr	s5, [r6, #8]
d004534a:	ed94 0a00 	vldr	s0, [r4]
d004534e:	edd4 0a01 	vldr	s1, [r4, #4]
d0045352:	ed94 1a02 	vldr	s2, [r4, #8]
d0045356:	f7fe fc3b 	bl	d0043bd0 <clipTriangleToFrustum>
d004535a:	2802      	cmp	r0, #2
d004535c:	dc09      	bgt.n	d0045372 <submitEntitySolid+0x82a>
d004535e:	9b03      	ldr	r3, [sp, #12]
d0045360:	f109 0901 	add.w	r9, r9, #1
d0045364:	695b      	ldr	r3, [r3, #20]
d0045366:	9302      	str	r3, [sp, #8]
d0045368:	9b02      	ldr	r3, [sp, #8]
d004536a:	4599      	cmp	r9, r3
d004536c:	f6ff ace3 	blt.w	d0044d36 <submitEntitySolid+0x1ee>
d0045370:	e674      	b.n	d004505c <submitEntitySolid+0x514>
d0045372:	eef0 4a48 	vmov.f32	s9, s16
d0045376:	1e44      	subs	r4, r0, #1
d0045378:	2601      	movs	r6, #1
d004537a:	4647      	mov	r7, r8
d004537c:	4650      	mov	r0, sl
d004537e:	4633      	mov	r3, r6
d0045380:	3601      	adds	r6, #1
d0045382:	7b6a      	ldrb	r2, [r5, #13]
d0045384:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0045388:	7b29      	ldrb	r1, [r5, #12]
d004538a:	eb06 0c46 	add.w	ip, r6, r6, lsl #1
d004538e:	ed97 0a00 	vldr	s0, [r7]
d0045392:	eb07 0383 	add.w	r3, r7, r3, lsl #2
d0045396:	edd7 0a01 	vldr	s1, [r7, #4]
d004539a:	eb07 0c8c 	add.w	ip, r7, ip, lsl #2
d004539e:	ed97 1a02 	vldr	s2, [r7, #8]
d00453a2:	edd3 1a00 	vldr	s3, [r3]
d00453a6:	ed93 2a01 	vldr	s4, [r3, #4]
d00453aa:	edd3 2a02 	vldr	s5, [r3, #8]
d00453ae:	ed9c 3a00 	vldr	s6, [ip]
d00453b2:	eddc 3a01 	vldr	s7, [ip, #4]
d00453b6:	ed9c 4a02 	vldr	s8, [ip, #8]
d00453ba:	f7ff f865 	bl	d0044488 <submitClippedTri>
d00453be:	42a6      	cmp	r6, r4
d00453c0:	d1dd      	bne.n	d004537e <submitEntitySolid+0x836>
d00453c2:	e7cc      	b.n	d004535e <submitEntitySolid+0x816>
d00453c4:	eddf 4a4c 	vldr	s9, [pc, #304]	; d00454f8 <submitEntitySolid+0x9b0>
d00453c8:	eef0 2a64 	vmov.f32	s5, s9
d00453cc:	eeb0 3a64 	vmov.f32	s6, s9
d00453d0:	e695      	b.n	d00450fe <submitEntitySolid+0x5b6>
d00453d2:	eef0 aa64 	vmov.f32	s21, s9
d00453d6:	4634      	mov	r4, r6
d00453d8:	eeb0 fa43 	vmov.f32	s30, s6
d00453dc:	463e      	mov	r6, r7
d00453de:	eef0 ca62 	vmov.f32	s25, s5
d00453e2:	4647      	mov	r7, r8
d00453e4:	eeb0 da42 	vmov.f32	s26, s4
d00453e8:	4690      	mov	r8, r2
d00453ea:	eeb0 aa61 	vmov.f32	s20, s3
d00453ee:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00453f2:	fe89 0a8a 	vmaxnm.f32	s0, s19, s20
d00453f6:	fe80 0a67 	vminnm.f32	s0, s0, s15
d00453fa:	f7fe fb7d 	bl	d0043af8 <brightnessToShadeF>
d00453fe:	eeb0 8a40 	vmov.f32	s16, s0
d0045402:	f1b8 0f00 	cmp.w	r8, #0
d0045406:	f47f ae07 	bne.w	d0045018 <submitEntitySolid+0x4d0>
d004540a:	e78c      	b.n	d0045326 <submitEntitySolid+0x7de>
d004540c:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0045410:	e700      	b.n	d0045214 <submitEntitySolid+0x6cc>
d0045412:	eef0 0a67 	vmov.f32	s1, s15
d0045416:	ed8d 1a13 	vstr	s2, [sp, #76]	; 0x4c
d004541a:	9212      	str	r2, [sp, #72]	; 0x48
d004541c:	edcd 1a11 	vstr	s3, [sp, #68]	; 0x44
d0045420:	ed8d 2a10 	vstr	s4, [sp, #64]	; 0x40
d0045424:	edcd 2a0f 	vstr	s5, [sp, #60]	; 0x3c
d0045428:	ed8d 3a0e 	vstr	s6, [sp, #56]	; 0x38
d004542c:	edcd 4a0d 	vstr	s9, [sp, #52]	; 0x34
d0045430:	ed8d 5a02 	vstr	s10, [sp, #8]
d0045434:	ed8d 6a01 	vstr	s12, [sp, #4]
d0045438:	f7fd f964 	bl	d0042704 <powf>
d004543c:	ed9d 1a13 	vldr	s2, [sp, #76]	; 0x4c
d0045440:	9a12      	ldr	r2, [sp, #72]	; 0x48
d0045442:	eddd 1a11 	vldr	s3, [sp, #68]	; 0x44
d0045446:	ed9d 2a10 	vldr	s4, [sp, #64]	; 0x40
d004544a:	eddd 2a0f 	vldr	s5, [sp, #60]	; 0x3c
d004544e:	ed9d 3a0e 	vldr	s6, [sp, #56]	; 0x38
d0045452:	eddd 4a0d 	vldr	s9, [sp, #52]	; 0x34
d0045456:	ed9d 5a02 	vldr	s10, [sp, #8]
d004545a:	ed9d 6a01 	vldr	s12, [sp, #4]
d004545e:	e71e      	b.n	d004529e <submitEntitySolid+0x756>
d0045460:	4634      	mov	r4, r6
d0045462:	eef0 aa64 	vmov.f32	s21, s9
d0045466:	463e      	mov	r6, r7
d0045468:	eeb0 fa43 	vmov.f32	s30, s6
d004546c:	4647      	mov	r7, r8
d004546e:	eef0 ca62 	vmov.f32	s25, s5
d0045472:	eeb0 da42 	vmov.f32	s26, s4
d0045476:	4690      	mov	r8, r2
d0045478:	eeb0 aa61 	vmov.f32	s20, s3
d004547c:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0045480:	e7b5      	b.n	d00453ee <submitEntitySolid+0x8a6>
d0045482:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045486:	db21      	blt.n	d00454cc <submitEntitySolid+0x984>
d0045488:	ee36 6a63 	vsub.f32	s12, s12, s7
d004548c:	ee70 3ae3 	vsub.f32	s7, s1, s7
d0045490:	eeb6 4a08 	vmov.f32	s8, #104	; 0x3f400000  0.750
d0045494:	eec6 5a23 	vdiv.f32	s11, s12, s7
d0045498:	ed9f 6a17 	vldr	s12, [pc, #92]	; d00454f8 <submitEntitySolid+0x9b0>
d004549c:	fe85 6a86 	vmaxnm.f32	s12, s11, s12
d00454a0:	eef0 5a45 	vmov.f32	s11, s10
d00454a4:	fe86 6a45 	vminnm.f32	s12, s12, s10
d00454a8:	eee6 5a44 	vfms.f32	s11, s12, s8
d00454ac:	eeb0 6a65 	vmov.f32	s12, s11
d00454b0:	e6ab      	b.n	d004520a <submitEntitySolid+0x6c2>
d00454b2:	eeb1 7ae7 	vsqrt.f32	s14, s15
d00454b6:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d00454ba:	eec6 7a87 	vdiv.f32	s15, s13, s14
d00454be:	ee23 3a27 	vmul.f32	s6, s6, s15
d00454c2:	ee62 2aa7 	vmul.f32	s5, s5, s15
d00454c6:	ee64 4aa7 	vmul.f32	s9, s9, s15
d00454ca:	e618      	b.n	d00450fe <submitEntitySolid+0x5b6>
d00454cc:	ee36 6a60 	vsub.f32	s12, s12, s1
d00454d0:	ee75 5ae0 	vsub.f32	s11, s11, s1
d00454d4:	ee86 4a25 	vdiv.f32	s8, s12, s11
d00454d8:	ed9f 6a07 	vldr	s12, [pc, #28]	; d00454f8 <submitEntitySolid+0x9b0>
d00454dc:	eef5 5a00 	vmov.f32	s11, #80	; 0x3e800000  0.250
d00454e0:	fe84 6a06 	vmaxnm.f32	s12, s8, s12
d00454e4:	fe86 6a45 	vminnm.f32	s12, s12, s10
d00454e8:	ee35 6a46 	vsub.f32	s12, s10, s12
d00454ec:	ee26 6a25 	vmul.f32	s12, s12, s11
d00454f0:	e68b      	b.n	d004520a <submitEntitySolid+0x6c2>
d00454f2:	f04f 0801 	mov.w	r8, #1
d00454f6:	e5c0      	b.n	d004507a <submitEntitySolid+0x532>
d00454f8:	00000000 	.word	0x00000000

d00454fc <submitWorldEntities>:
d00454fc:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d0045500:	4c30      	ldr	r4, [pc, #192]	; (d00455c4 <submitWorldEntities+0xc8>)
d0045502:	b09d      	sub	sp, #116	; 0x74
d0045504:	f04f 0800 	mov.w	r8, #0
d0045508:	f8df 90bc 	ldr.w	r9, [pc, #188]	; d00455c8 <submitWorldEntities+0xcc>
d004550c:	4605      	mov	r5, r0
d004550e:	f504 46c0 	add.w	r6, r4, #24576	; 0x6000
d0045512:	f100 0710 	add.w	r7, r0, #16
d0045516:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d004551a:	2b00      	cmp	r3, #0
d004551c:	d03f      	beq.n	d004559e <submitWorldEntities+0xa2>
d004551e:	68e3      	ldr	r3, [r4, #12]
d0045520:	2250      	movs	r2, #80	; 0x50
d0045522:	4639      	mov	r1, r7
d0045524:	4668      	mov	r0, sp
d0045526:	b3d3      	cbz	r3, d004559e <submitWorldEntities+0xa2>
d0045528:	f894 3035 	ldrb.w	r3, [r4, #53]	; 0x35
d004552c:	07db      	lsls	r3, r3, #31
d004552e:	d536      	bpl.n	d004559e <submitWorldEntities+0xa2>
d0045530:	ed94 0a00 	vldr	s0, [r4]
d0045534:	edd4 0a01 	vldr	s1, [r4, #4]
d0045538:	ed94 1a02 	vldr	s2, [r4, #8]
d004553c:	ed8d 0a17 	vstr	s0, [sp, #92]	; 0x5c
d0045540:	edcd 0a16 	vstr	s1, [sp, #88]	; 0x58
d0045544:	ed8d 1a15 	vstr	s2, [sp, #84]	; 0x54
d0045548:	f000 fd28 	bl	d0045f9c <memcpy>
d004554c:	ed9d 1a15 	vldr	s2, [sp, #84]	; 0x54
d0045550:	ed9d 0a17 	vldr	s0, [sp, #92]	; 0x5c
d0045554:	eddd 0a16 	vldr	s1, [sp, #88]	; 0x58
d0045558:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d004555c:	f7fd fe2c 	bl	d00431b8 <worldToCamera>
d0045560:	68e3      	ldr	r3, [r4, #12]
d0045562:	ed95 7a11 	vldr	s14, [r5, #68]	; 0x44
d0045566:	edd3 7a06 	vldr	s15, [r3, #24]
d004556a:	ed8d 0a19 	vstr	s0, [sp, #100]	; 0x64
d004556e:	ee71 6a67 	vsub.f32	s13, s2, s15
d0045572:	edcd 0a1a 	vstr	s1, [sp, #104]	; 0x68
d0045576:	ee71 7a27 	vadd.f32	s15, s2, s15
d004557a:	ed8d 1a1b 	vstr	s2, [sp, #108]	; 0x6c
d004557e:	eef4 6ac7 	vcmpe.f32	s13, s14
d0045582:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045586:	dc0a      	bgt.n	d004559e <submitWorldEntities+0xa2>
d0045588:	ed95 7a10 	vldr	s14, [r5, #64]	; 0x40
d004558c:	eef4 7ac7 	vcmpe.f32	s15, s14
d0045590:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045594:	d403      	bmi.n	d004559e <submitWorldEntities+0xa2>
d0045596:	f849 4028 	str.w	r4, [r9, r8, lsl #2]
d004559a:	f108 0801 	add.w	r8, r8, #1
d004559e:	3460      	adds	r4, #96	; 0x60
d00455a0:	42b4      	cmp	r4, r6
d00455a2:	d1b8      	bne.n	d0045516 <submitWorldEntities+0x1a>
d00455a4:	f1b8 0f00 	cmp.w	r8, #0
d00455a8:	d009      	beq.n	d00455be <submitWorldEntities+0xc2>
d00455aa:	4c07      	ldr	r4, [pc, #28]	; (d00455c8 <submitWorldEntities+0xcc>)
d00455ac:	eb04 0888 	add.w	r8, r4, r8, lsl #2
d00455b0:	f854 0b04 	ldr.w	r0, [r4], #4
d00455b4:	4629      	mov	r1, r5
d00455b6:	f7ff fac7 	bl	d0044b48 <submitEntitySolid>
d00455ba:	45a0      	cmp	r8, r4
d00455bc:	d1f8      	bne.n	d00455b0 <submitWorldEntities+0xb4>
d00455be:	b01d      	add	sp, #116	; 0x74
d00455c0:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d00455c4:	d012cd60 	.word	0xd012cd60
d00455c8:	d012c8c0 	.word	0xd012c8c0

d00455cc <Render3D>:
d00455cc:	b5f0      	push	{r4, r5, r6, r7, lr}
d00455ce:	4604      	mov	r4, r0
d00455d0:	4e6d      	ldr	r6, [pc, #436]	; (d0045788 <Render3D+0x1bc>)
d00455d2:	2700      	movs	r7, #0
d00455d4:	ed2d 8b02 	vpush	{d8}
d00455d8:	b087      	sub	sp, #28
d00455da:	6037      	str	r7, [r6, #0]
d00455dc:	f7ff ff8e 	bl	d00454fc <submitWorldEntities>
d00455e0:	4620      	mov	r0, r4
d00455e2:	f7fd f94d 	bl	d0042880 <sb3dParticlesRender>
d00455e6:	4b69      	ldr	r3, [pc, #420]	; (d004578c <Render3D+0x1c0>)
d00455e8:	681d      	ldr	r5, [r3, #0]
d00455ea:	2d00      	cmp	r5, #0
d00455ec:	d04d      	beq.n	d004568a <Render3D+0xbe>
d00455ee:	6833      	ldr	r3, [r6, #0]
d00455f0:	42bb      	cmp	r3, r7
d00455f2:	dd46      	ble.n	d0045682 <Render3D+0xb6>
d00455f4:	eeb6 8a00 	vmov.f32	s16, #96	; 0x3f000000  0.5
d00455f8:	4c65      	ldr	r4, [pc, #404]	; (d0045790 <Render3D+0x1c4>)
d00455fa:	eddf 8a66 	vldr	s17, [pc, #408]	; d0045794 <Render3D+0x1c8>
d00455fe:	edd4 7a07 	vldr	s15, [r4, #28]
d0045602:	3701      	adds	r7, #1
d0045604:	f894 3035 	ldrb.w	r3, [r4, #53]	; 0x35
d0045608:	ee77 7a88 	vadd.f32	s15, s15, s16
d004560c:	ee07 3a10 	vmov	s14, r3
d0045610:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0045614:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0045618:	ee17 1a90 	vmov	r1, s15
d004561c:	eef0 7a48 	vmov.f32	s15, s16
d0045620:	2904      	cmp	r1, #4
d0045622:	eee7 7a28 	vfma.f32	s15, s14, s17
d0045626:	bfa8      	it	ge
d0045628:	2104      	movge	r1, #4
d004562a:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d004562e:	b153      	cbz	r3, d0045646 <Render3D+0x7a>
d0045630:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0045634:	ee17 3a90 	vmov	r3, s15
d0045638:	f1c3 0305 	rsb	r3, r3, #5
d004563c:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0045640:	4299      	cmp	r1, r3
d0045642:	bfa8      	it	ge
d0045644:	4619      	movge	r1, r3
d0045646:	f894 0034 	ldrb.w	r0, [r4, #52]	; 0x34
d004564a:	f7fb f973 	bl	d0040934 <shadeColor>
d004564e:	4605      	mov	r5, r0
d0045650:	68e3      	ldr	r3, [r4, #12]
d0045652:	68a2      	ldr	r2, [r4, #8]
d0045654:	6861      	ldr	r1, [r4, #4]
d0045656:	9000      	str	r0, [sp, #0]
d0045658:	6820      	ldr	r0, [r4, #0]
d004565a:	f7fb f91d 	bl	d0040898 <drawLine>
d004565e:	9500      	str	r5, [sp, #0]
d0045660:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
d0045664:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
d0045668:	f7fb f916 	bl	d0040898 <drawLine>
d004566c:	9500      	str	r5, [sp, #0]
d004566e:	e9d4 2300 	ldrd	r2, r3, [r4]
d0045672:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
d0045676:	f7fb f90f 	bl	d0040898 <drawLine>
d004567a:	6833      	ldr	r3, [r6, #0]
d004567c:	3440      	adds	r4, #64	; 0x40
d004567e:	42bb      	cmp	r3, r7
d0045680:	dcbd      	bgt.n	d00455fe <Render3D+0x32>
d0045682:	b007      	add	sp, #28
d0045684:	ecbd 8b02 	vpop	{d8}
d0045688:	bdf0      	pop	{r4, r5, r6, r7, pc}
d004568a:	f7fb f8e7 	bl	d004085c <resetDepthBuffer>
d004568e:	4b42      	ldr	r3, [pc, #264]	; (d0045798 <Render3D+0x1cc>)
d0045690:	681f      	ldr	r7, [r3, #0]
d0045692:	b33f      	cbz	r7, d00456e4 <Render3D+0x118>
d0045694:	6833      	ldr	r3, [r6, #0]
d0045696:	2b00      	cmp	r3, #0
d0045698:	ddf3      	ble.n	d0045682 <Render3D+0xb6>
d004569a:	4c3d      	ldr	r4, [pc, #244]	; (d0045790 <Render3D+0x1c4>)
d004569c:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d00456a0:	3501      	adds	r5, #1
d00456a2:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d00456a4:	8c21      	ldrh	r1, [r4, #32]
d00456a6:	6962      	ldr	r2, [r4, #20]
d00456a8:	8ca7      	ldrh	r7, [r4, #36]	; 0x24
d00456aa:	9305      	str	r3, [sp, #20]
d00456ac:	9704      	str	r7, [sp, #16]
d00456ae:	9003      	str	r0, [sp, #12]
d00456b0:	9102      	str	r1, [sp, #8]
d00456b2:	9201      	str	r2, [sp, #4]
d00456b4:	6923      	ldr	r3, [r4, #16]
d00456b6:	9300      	str	r3, [sp, #0]
d00456b8:	edd4 1a07 	vldr	s3, [r4, #28]
d00456bc:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00456c0:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00456c4:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00456c8:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d00456cc:	e9d4 0100 	ldrd	r0, r1, [r4]
d00456d0:	f7fb f940 	bl	d0040954 <fillTriangleFlat>
d00456d4:	6833      	ldr	r3, [r6, #0]
d00456d6:	3440      	adds	r4, #64	; 0x40
d00456d8:	42ab      	cmp	r3, r5
d00456da:	dcdf      	bgt.n	d004569c <Render3D+0xd0>
d00456dc:	b007      	add	sp, #28
d00456de:	ecbd 8b02 	vpop	{d8}
d00456e2:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00456e4:	4b2d      	ldr	r3, [pc, #180]	; (d004579c <Render3D+0x1d0>)
d00456e6:	681d      	ldr	r5, [r3, #0]
d00456e8:	6833      	ldr	r3, [r6, #0]
d00456ea:	b335      	cbz	r5, d004573a <Render3D+0x16e>
d00456ec:	2b00      	cmp	r3, #0
d00456ee:	ddc8      	ble.n	d0045682 <Render3D+0xb6>
d00456f0:	4c27      	ldr	r4, [pc, #156]	; (d0045790 <Render3D+0x1c4>)
d00456f2:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d00456f6:	3701      	adds	r7, #1
d00456f8:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d00456fa:	8c21      	ldrh	r1, [r4, #32]
d00456fc:	6962      	ldr	r2, [r4, #20]
d00456fe:	8ca5      	ldrh	r5, [r4, #36]	; 0x24
d0045700:	9305      	str	r3, [sp, #20]
d0045702:	6923      	ldr	r3, [r4, #16]
d0045704:	9504      	str	r5, [sp, #16]
d0045706:	9003      	str	r0, [sp, #12]
d0045708:	9102      	str	r1, [sp, #8]
d004570a:	9201      	str	r2, [sp, #4]
d004570c:	9300      	str	r3, [sp, #0]
d004570e:	edd4 1a07 	vldr	s3, [r4, #28]
d0045712:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0045716:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d004571a:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d004571e:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d0045722:	e9d4 0100 	ldrd	r0, r1, [r4]
d0045726:	f7fc f9e1 	bl	d0041aec <fillTriangleDitherBayer2Mode>
d004572a:	6833      	ldr	r3, [r6, #0]
d004572c:	3440      	adds	r4, #64	; 0x40
d004572e:	42bb      	cmp	r3, r7
d0045730:	dcdf      	bgt.n	d00456f2 <Render3D+0x126>
d0045732:	b007      	add	sp, #28
d0045734:	ecbd 8b02 	vpop	{d8}
d0045738:	bdf0      	pop	{r4, r5, r6, r7, pc}
d004573a:	2b00      	cmp	r3, #0
d004573c:	dda1      	ble.n	d0045682 <Render3D+0xb6>
d004573e:	4c14      	ldr	r4, [pc, #80]	; (d0045790 <Render3D+0x1c4>)
d0045740:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0045744:	3501      	adds	r5, #1
d0045746:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d0045748:	8c21      	ldrh	r1, [r4, #32]
d004574a:	6962      	ldr	r2, [r4, #20]
d004574c:	8ca7      	ldrh	r7, [r4, #36]	; 0x24
d004574e:	9305      	str	r3, [sp, #20]
d0045750:	6923      	ldr	r3, [r4, #16]
d0045752:	9704      	str	r7, [sp, #16]
d0045754:	9003      	str	r0, [sp, #12]
d0045756:	9102      	str	r1, [sp, #8]
d0045758:	9201      	str	r2, [sp, #4]
d004575a:	9300      	str	r3, [sp, #0]
d004575c:	edd4 1a07 	vldr	s3, [r4, #28]
d0045760:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0045764:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0045768:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d004576c:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d0045770:	e9d4 0100 	ldrd	r0, r1, [r4]
d0045774:	f7fb fcfc 	bl	d0041170 <fillTriangleDitherBayer>
d0045778:	6833      	ldr	r3, [r6, #0]
d004577a:	3440      	adds	r4, #64	; 0x40
d004577c:	42ab      	cmp	r3, r5
d004577e:	dcdf      	bgt.n	d0045740 <Render3D+0x174>
d0045780:	b007      	add	sp, #28
d0045782:	ecbd 8b02 	vpop	{d8}
d0045786:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0045788:	d00a0884 	.word	0xd00a0884
d004578c:	d01208a4 	.word	0xd01208a4
d0045790:	d00a08a0 	.word	0xd00a08a0
d0045794:	3ca0a0a1 	.word	0x3ca0a0a1
d0045798:	d00a0880 	.word	0xd00a0880
d004579c:	d01208a0 	.word	0xd01208a0

d00457a0 <loadMeshSB3D>:
d00457a0:	2800      	cmp	r0, #0
d00457a2:	d07a      	beq.n	d004589a <loadMeshSB3D+0xfa>
d00457a4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00457a8:	460d      	mov	r5, r1
d00457aa:	4601      	mov	r1, r0
d00457ac:	fab5 f085 	clz	r0, r5
d00457b0:	ed2d 8b02 	vpush	{d8}
d00457b4:	0940      	lsrs	r0, r0, #5
d00457b6:	b08c      	sub	sp, #48	; 0x30
d00457b8:	2d00      	cmp	r5, #0
d00457ba:	d068      	beq.n	d004588e <loadMeshSB3D+0xee>
d00457bc:	4c6c      	ldr	r4, [pc, #432]	; (d0045970 <loadMeshSB3D+0x1d0>)
d00457be:	2201      	movs	r2, #1
d00457c0:	eeb0 8a40 	vmov.f32	s16, s0
d00457c4:	7923      	ldrb	r3, [r4, #4]
d00457c6:	7966      	ldrb	r6, [r4, #5]
d00457c8:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d00457cc:	79a6      	ldrb	r6, [r4, #6]
d00457ce:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d00457d2:	79e6      	ldrb	r6, [r4, #7]
d00457d4:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d00457d8:	681b      	ldr	r3, [r3, #0]
d00457da:	681b      	ldr	r3, [r3, #0]
d00457dc:	4798      	blx	r3
d00457de:	2800      	cmp	r0, #0
d00457e0:	d155      	bne.n	d004588e <loadMeshSB3D+0xee>
d00457e2:	f894 c004 	ldrb.w	ip, [r4, #4]
d00457e6:	2204      	movs	r2, #4
d00457e8:	7961      	ldrb	r1, [r4, #5]
d00457ea:	ab02      	add	r3, sp, #8
d00457ec:	79a7      	ldrb	r7, [r4, #6]
d00457ee:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d00457f2:	79e6      	ldrb	r6, [r4, #7]
d00457f4:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d00457f8:	a903      	add	r1, sp, #12
d00457fa:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d00457fe:	6836      	ldr	r6, [r6, #0]
d0045800:	68b6      	ldr	r6, [r6, #8]
d0045802:	47b0      	blx	r6
d0045804:	2800      	cmp	r0, #0
d0045806:	d13f      	bne.n	d0045888 <loadMeshSB3D+0xe8>
d0045808:	4b5a      	ldr	r3, [pc, #360]	; (d0045974 <loadMeshSB3D+0x1d4>)
d004580a:	9a03      	ldr	r2, [sp, #12]
d004580c:	429a      	cmp	r2, r3
d004580e:	d13b      	bne.n	d0045888 <loadMeshSB3D+0xe8>
d0045810:	f894 c004 	ldrb.w	ip, [r4, #4]
d0045814:	ab02      	add	r3, sp, #8
d0045816:	7961      	ldrb	r1, [r4, #5]
d0045818:	2204      	movs	r2, #4
d004581a:	79a7      	ldrb	r7, [r4, #6]
d004581c:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0045820:	79e6      	ldrb	r6, [r4, #7]
d0045822:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0045826:	a904      	add	r1, sp, #16
d0045828:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d004582c:	6836      	ldr	r6, [r6, #0]
d004582e:	68b6      	ldr	r6, [r6, #8]
d0045830:	47b0      	blx	r6
d0045832:	bb48      	cbnz	r0, d0045888 <loadMeshSB3D+0xe8>
d0045834:	9b04      	ldr	r3, [sp, #16]
d0045836:	2b02      	cmp	r3, #2
d0045838:	d126      	bne.n	d0045888 <loadMeshSB3D+0xe8>
d004583a:	f894 c004 	ldrb.w	ip, [r4, #4]
d004583e:	ab02      	add	r3, sp, #8
d0045840:	7961      	ldrb	r1, [r4, #5]
d0045842:	2204      	movs	r2, #4
d0045844:	79a7      	ldrb	r7, [r4, #6]
d0045846:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d004584a:	79e6      	ldrb	r6, [r4, #7]
d004584c:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0045850:	a905      	add	r1, sp, #20
d0045852:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0045856:	6836      	ldr	r6, [r6, #0]
d0045858:	68b6      	ldr	r6, [r6, #8]
d004585a:	47b0      	blx	r6
d004585c:	b9a0      	cbnz	r0, d0045888 <loadMeshSB3D+0xe8>
d004585e:	7921      	ldrb	r1, [r4, #4]
d0045860:	ab02      	add	r3, sp, #8
d0045862:	7966      	ldrb	r6, [r4, #5]
d0045864:	2204      	movs	r2, #4
d0045866:	79a7      	ldrb	r7, [r4, #6]
d0045868:	ea41 2106 	orr.w	r1, r1, r6, lsl #8
d004586c:	79e6      	ldrb	r6, [r4, #7]
d004586e:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0045872:	a906      	add	r1, sp, #24
d0045874:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0045878:	6836      	ldr	r6, [r6, #0]
d004587a:	68b6      	ldr	r6, [r6, #8]
d004587c:	47b0      	blx	r6
d004587e:	b918      	cbnz	r0, d0045888 <loadMeshSB3D+0xe8>
d0045880:	9b05      	ldr	r3, [sp, #20]
d0045882:	b10b      	cbz	r3, d0045888 <loadMeshSB3D+0xe8>
d0045884:	9e06      	ldr	r6, [sp, #24]
d0045886:	b956      	cbnz	r6, d004589e <loadMeshSB3D+0xfe>
d0045888:	2000      	movs	r0, #0
d004588a:	f000 f98f 	bl	d0045bac <fclose>
d004588e:	2000      	movs	r0, #0
d0045890:	b00c      	add	sp, #48	; 0x30
d0045892:	ecbd 8b02 	vpop	{d8}
d0045896:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d004589a:	2000      	movs	r0, #0
d004589c:	4770      	bx	lr
d004589e:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d00458a2:	2700      	movs	r7, #0
d00458a4:	606b      	str	r3, [r5, #4]
d00458a6:	616e      	str	r6, [r5, #20]
d00458a8:	0080      	lsls	r0, r0, #2
d00458aa:	60ef      	str	r7, [r5, #12]
d00458ac:	f000 fb66 	bl	d0045f7c <malloc>
d00458b0:	4603      	mov	r3, r0
d00458b2:	0130      	lsls	r0, r6, #4
d00458b4:	461e      	mov	r6, r3
d00458b6:	602b      	str	r3, [r5, #0]
d00458b8:	f000 fb60 	bl	d0045f7c <malloc>
d00458bc:	60af      	str	r7, [r5, #8]
d00458be:	6128      	str	r0, [r5, #16]
d00458c0:	2e00      	cmp	r6, #0
d00458c2:	f000 80fb 	beq.w	d0045abc <loadMeshSB3D+0x31c>
d00458c6:	2800      	cmp	r0, #0
d00458c8:	f000 80eb 	beq.w	d0045aa2 <loadMeshSB3D+0x302>
d00458cc:	46b8      	mov	r8, r7
d00458ce:	e017      	b.n	d0045900 <loadMeshSB3D+0x160>
d00458d0:	eddd 6a09 	vldr	s13, [sp, #36]	; 0x24
d00458d4:	ed9d 7a0a 	vldr	s14, [sp, #40]	; 0x28
d00458d8:	eddd 7a0b 	vldr	s15, [sp, #44]	; 0x2c
d00458dc:	ee66 6a88 	vmul.f32	s13, s13, s16
d00458e0:	682b      	ldr	r3, [r5, #0]
d00458e2:	ee27 7a08 	vmul.f32	s14, s14, s16
d00458e6:	9905      	ldr	r1, [sp, #20]
d00458e8:	ee67 7a88 	vmul.f32	s15, s15, s16
d00458ec:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d00458f0:	4541      	cmp	r1, r8
d00458f2:	edc3 6a00 	vstr	s13, [r3]
d00458f6:	ed83 7a01 	vstr	s14, [r3, #4]
d00458fa:	edc3 7a02 	vstr	s15, [r3, #8]
d00458fe:	d931      	bls.n	d0045964 <loadMeshSB3D+0x1c4>
d0045900:	f894 c004 	ldrb.w	ip, [r4, #4]
d0045904:	220c      	movs	r2, #12
d0045906:	7960      	ldrb	r0, [r4, #5]
d0045908:	ab02      	add	r3, sp, #8
d004590a:	79a7      	ldrb	r7, [r4, #6]
d004590c:	a909      	add	r1, sp, #36	; 0x24
d004590e:	ea4c 2000 	orr.w	r0, ip, r0, lsl #8
d0045912:	79e6      	ldrb	r6, [r4, #7]
d0045914:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d0045918:	2000      	movs	r0, #0
d004591a:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d004591e:	6836      	ldr	r6, [r6, #0]
d0045920:	68b6      	ldr	r6, [r6, #8]
d0045922:	47b0      	blx	r6
d0045924:	eb08 0248 	add.w	r2, r8, r8, lsl #1
d0045928:	f108 0801 	add.w	r8, r8, #1
d004592c:	2800      	cmp	r0, #0
d004592e:	d0cf      	beq.n	d00458d0 <loadMeshSB3D+0x130>
d0045930:	6828      	ldr	r0, [r5, #0]
d0045932:	b108      	cbz	r0, d0045938 <loadMeshSB3D+0x198>
d0045934:	f000 fb2a 	bl	d0045f8c <free>
d0045938:	6928      	ldr	r0, [r5, #16]
d004593a:	b108      	cbz	r0, d0045940 <loadMeshSB3D+0x1a0>
d004593c:	f000 fb26 	bl	d0045f8c <free>
d0045940:	68a8      	ldr	r0, [r5, #8]
d0045942:	b108      	cbz	r0, d0045948 <loadMeshSB3D+0x1a8>
d0045944:	f000 fb22 	bl	d0045f8c <free>
d0045948:	2400      	movs	r4, #0
d004594a:	2300      	movs	r3, #0
d004594c:	4620      	mov	r0, r4
d004594e:	602c      	str	r4, [r5, #0]
d0045950:	612c      	str	r4, [r5, #16]
d0045952:	60ac      	str	r4, [r5, #8]
d0045954:	606c      	str	r4, [r5, #4]
d0045956:	616c      	str	r4, [r5, #20]
d0045958:	60ec      	str	r4, [r5, #12]
d004595a:	61ab      	str	r3, [r5, #24]
d004595c:	f000 f926 	bl	d0045bac <fclose>
d0045960:	4620      	mov	r0, r4
d0045962:	e795      	b.n	d0045890 <loadMeshSB3D+0xf0>
d0045964:	9b06      	ldr	r3, [sp, #24]
d0045966:	2b00      	cmp	r3, #0
d0045968:	f000 808a 	beq.w	d0045a80 <loadMeshSB3D+0x2e0>
d004596c:	4606      	mov	r6, r0
d004596e:	e06e      	b.n	d0045a4e <loadMeshSB3D+0x2ae>
d0045970:	2001f000 	.word	0x2001f000
d0045974:	44334253 	.word	0x44334253
d0045978:	f894 e004 	ldrb.w	lr, [r4, #4]
d004597c:	7967      	ldrb	r7, [r4, #5]
d004597e:	f894 c006 	ldrb.w	ip, [r4, #6]
d0045982:	ea4e 2e07 	orr.w	lr, lr, r7, lsl #8
d0045986:	79e7      	ldrb	r7, [r4, #7]
d0045988:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d004598c:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0045990:	683f      	ldr	r7, [r7, #0]
d0045992:	68bf      	ldr	r7, [r7, #8]
d0045994:	47b8      	blx	r7
d0045996:	ab02      	add	r3, sp, #8
d0045998:	2204      	movs	r2, #4
d004599a:	a909      	add	r1, sp, #36	; 0x24
d004599c:	2800      	cmp	r0, #0
d004599e:	d1c7      	bne.n	d0045930 <loadMeshSB3D+0x190>
d00459a0:	f894 e004 	ldrb.w	lr, [r4, #4]
d00459a4:	7967      	ldrb	r7, [r4, #5]
d00459a6:	f894 c006 	ldrb.w	ip, [r4, #6]
d00459aa:	ea4e 2e07 	orr.w	lr, lr, r7, lsl #8
d00459ae:	79e7      	ldrb	r7, [r4, #7]
d00459b0:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d00459b4:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d00459b8:	683f      	ldr	r7, [r7, #0]
d00459ba:	68bf      	ldr	r7, [r7, #8]
d00459bc:	47b8      	blx	r7
d00459be:	ab02      	add	r3, sp, #8
d00459c0:	2201      	movs	r2, #1
d00459c2:	f10d 0106 	add.w	r1, sp, #6
d00459c6:	2800      	cmp	r0, #0
d00459c8:	d1b2      	bne.n	d0045930 <loadMeshSB3D+0x190>
d00459ca:	f894 e004 	ldrb.w	lr, [r4, #4]
d00459ce:	7967      	ldrb	r7, [r4, #5]
d00459d0:	f894 c006 	ldrb.w	ip, [r4, #6]
d00459d4:	ea4e 2e07 	orr.w	lr, lr, r7, lsl #8
d00459d8:	79e7      	ldrb	r7, [r4, #7]
d00459da:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d00459de:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d00459e2:	683f      	ldr	r7, [r7, #0]
d00459e4:	68bf      	ldr	r7, [r7, #8]
d00459e6:	47b8      	blx	r7
d00459e8:	ab02      	add	r3, sp, #8
d00459ea:	2201      	movs	r2, #1
d00459ec:	f10d 0107 	add.w	r1, sp, #7
d00459f0:	2800      	cmp	r0, #0
d00459f2:	d19d      	bne.n	d0045930 <loadMeshSB3D+0x190>
d00459f4:	f894 e004 	ldrb.w	lr, [r4, #4]
d00459f8:	7967      	ldrb	r7, [r4, #5]
d00459fa:	f894 c006 	ldrb.w	ip, [r4, #6]
d00459fe:	ea4e 2e07 	orr.w	lr, lr, r7, lsl #8
d0045a02:	79e7      	ldrb	r7, [r4, #7]
d0045a04:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d0045a08:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0045a0c:	683f      	ldr	r7, [r7, #0]
d0045a0e:	68bf      	ldr	r7, [r7, #8]
d0045a10:	47b8      	blx	r7
d0045a12:	0137      	lsls	r7, r6, #4
d0045a14:	2800      	cmp	r0, #0
d0045a16:	d18b      	bne.n	d0045930 <loadMeshSB3D+0x190>
d0045a18:	9a07      	ldr	r2, [sp, #28]
d0045a1a:	9b05      	ldr	r3, [sp, #20]
d0045a1c:	429a      	cmp	r2, r3
d0045a1e:	d287      	bcs.n	d0045930 <loadMeshSB3D+0x190>
d0045a20:	9908      	ldr	r1, [sp, #32]
d0045a22:	428b      	cmp	r3, r1
d0045a24:	d984      	bls.n	d0045930 <loadMeshSB3D+0x190>
d0045a26:	9809      	ldr	r0, [sp, #36]	; 0x24
d0045a28:	4283      	cmp	r3, r0
d0045a2a:	d981      	bls.n	d0045930 <loadMeshSB3D+0x190>
d0045a2c:	692b      	ldr	r3, [r5, #16]
d0045a2e:	f8dd c018 	ldr.w	ip, [sp, #24]
d0045a32:	51da      	str	r2, [r3, r7]
d0045a34:	eb03 1306 	add.w	r3, r3, r6, lsl #4
d0045a38:	3601      	adds	r6, #1
d0045a3a:	f89d 7006 	ldrb.w	r7, [sp, #6]
d0045a3e:	f89d 2007 	ldrb.w	r2, [sp, #7]
d0045a42:	45b4      	cmp	ip, r6
d0045a44:	6059      	str	r1, [r3, #4]
d0045a46:	6098      	str	r0, [r3, #8]
d0045a48:	731f      	strb	r7, [r3, #12]
d0045a4a:	735a      	strb	r2, [r3, #13]
d0045a4c:	d918      	bls.n	d0045a80 <loadMeshSB3D+0x2e0>
d0045a4e:	7920      	ldrb	r0, [r4, #4]
d0045a50:	ab02      	add	r3, sp, #8
d0045a52:	7967      	ldrb	r7, [r4, #5]
d0045a54:	2204      	movs	r2, #4
d0045a56:	f894 c006 	ldrb.w	ip, [r4, #6]
d0045a5a:	a907      	add	r1, sp, #28
d0045a5c:	ea40 2007 	orr.w	r0, r0, r7, lsl #8
d0045a60:	79e7      	ldrb	r7, [r4, #7]
d0045a62:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d0045a66:	2000      	movs	r0, #0
d0045a68:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0045a6c:	683f      	ldr	r7, [r7, #0]
d0045a6e:	68bf      	ldr	r7, [r7, #8]
d0045a70:	47b8      	blx	r7
d0045a72:	ab02      	add	r3, sp, #8
d0045a74:	2204      	movs	r2, #4
d0045a76:	a908      	add	r1, sp, #32
d0045a78:	2800      	cmp	r0, #0
d0045a7a:	f43f af7d 	beq.w	d0045978 <loadMeshSB3D+0x1d8>
d0045a7e:	e757      	b.n	d0045930 <loadMeshSB3D+0x190>
d0045a80:	2000      	movs	r0, #0
d0045a82:	f000 f893 	bl	d0045bac <fclose>
d0045a86:	4628      	mov	r0, r5
d0045a88:	f7fd fca8 	bl	d00433dc <meshComputeBoundsRadius>
d0045a8c:	eef1 7a00 	vmov.f32	s15, #16	; 0x40800000  4.0
d0045a90:	4628      	mov	r0, r5
d0045a92:	ee20 0a27 	vmul.f32	s0, s0, s15
d0045a96:	ed85 0a06 	vstr	s0, [r5, #24]
d0045a9a:	f7fa fec7 	bl	d004082c <meshSetDefaultMaterial>
d0045a9e:	2001      	movs	r0, #1
d0045aa0:	e6f6      	b.n	d0045890 <loadMeshSB3D+0xf0>
d0045aa2:	4630      	mov	r0, r6
d0045aa4:	f000 fa72 	bl	d0045f8c <free>
d0045aa8:	2400      	movs	r4, #0
d0045aaa:	4620      	mov	r0, r4
d0045aac:	602c      	str	r4, [r5, #0]
d0045aae:	612c      	str	r4, [r5, #16]
d0045ab0:	606c      	str	r4, [r5, #4]
d0045ab2:	616c      	str	r4, [r5, #20]
d0045ab4:	f000 f87a 	bl	d0045bac <fclose>
d0045ab8:	4620      	mov	r0, r4
d0045aba:	e6e9      	b.n	d0045890 <loadMeshSB3D+0xf0>
d0045abc:	2800      	cmp	r0, #0
d0045abe:	d0f3      	beq.n	d0045aa8 <loadMeshSB3D+0x308>
d0045ac0:	f000 fa64 	bl	d0045f8c <free>
d0045ac4:	e7f0      	b.n	d0045aa8 <loadMeshSB3D+0x308>
d0045ac6:	bf00      	nop

d0045ac8 <__errno>:
d0045ac8:	4b01      	ldr	r3, [pc, #4]	; (d0045ad0 <__errno+0x8>)
d0045aca:	6818      	ldr	r0, [r3, #0]
d0045acc:	4770      	bx	lr
d0045ace:	bf00      	nop
d0045ad0:	d00475d8 	.word	0xd00475d8

d0045ad4 <_fclose_r>:
d0045ad4:	b570      	push	{r4, r5, r6, lr}
d0045ad6:	4605      	mov	r5, r0
d0045ad8:	460c      	mov	r4, r1
d0045ada:	b911      	cbnz	r1, d0045ae2 <_fclose_r+0xe>
d0045adc:	2600      	movs	r6, #0
d0045ade:	4630      	mov	r0, r6
d0045ae0:	bd70      	pop	{r4, r5, r6, pc}
d0045ae2:	b118      	cbz	r0, d0045aec <_fclose_r+0x18>
d0045ae4:	6983      	ldr	r3, [r0, #24]
d0045ae6:	b90b      	cbnz	r3, d0045aec <_fclose_r+0x18>
d0045ae8:	f000 f982 	bl	d0045df0 <__sinit>
d0045aec:	4b2c      	ldr	r3, [pc, #176]	; (d0045ba0 <_fclose_r+0xcc>)
d0045aee:	429c      	cmp	r4, r3
d0045af0:	d114      	bne.n	d0045b1c <_fclose_r+0x48>
d0045af2:	686c      	ldr	r4, [r5, #4]
d0045af4:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0045af6:	07d8      	lsls	r0, r3, #31
d0045af8:	d405      	bmi.n	d0045b06 <_fclose_r+0x32>
d0045afa:	89a3      	ldrh	r3, [r4, #12]
d0045afc:	0599      	lsls	r1, r3, #22
d0045afe:	d402      	bmi.n	d0045b06 <_fclose_r+0x32>
d0045b00:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045b02:	f000 fa14 	bl	d0045f2e <__retarget_lock_acquire_recursive>
d0045b06:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0045b0a:	b98b      	cbnz	r3, d0045b30 <_fclose_r+0x5c>
d0045b0c:	6e66      	ldr	r6, [r4, #100]	; 0x64
d0045b0e:	f016 0601 	ands.w	r6, r6, #1
d0045b12:	d1e3      	bne.n	d0045adc <_fclose_r+0x8>
d0045b14:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045b16:	f000 fa0b 	bl	d0045f30 <__retarget_lock_release_recursive>
d0045b1a:	e7e0      	b.n	d0045ade <_fclose_r+0xa>
d0045b1c:	4b21      	ldr	r3, [pc, #132]	; (d0045ba4 <_fclose_r+0xd0>)
d0045b1e:	429c      	cmp	r4, r3
d0045b20:	d101      	bne.n	d0045b26 <_fclose_r+0x52>
d0045b22:	68ac      	ldr	r4, [r5, #8]
d0045b24:	e7e6      	b.n	d0045af4 <_fclose_r+0x20>
d0045b26:	4b20      	ldr	r3, [pc, #128]	; (d0045ba8 <_fclose_r+0xd4>)
d0045b28:	429c      	cmp	r4, r3
d0045b2a:	bf08      	it	eq
d0045b2c:	68ec      	ldreq	r4, [r5, #12]
d0045b2e:	e7e1      	b.n	d0045af4 <_fclose_r+0x20>
d0045b30:	4621      	mov	r1, r4
d0045b32:	4628      	mov	r0, r5
d0045b34:	f000 f842 	bl	d0045bbc <__sflush_r>
d0045b38:	6b23      	ldr	r3, [r4, #48]	; 0x30
d0045b3a:	4606      	mov	r6, r0
d0045b3c:	b133      	cbz	r3, d0045b4c <_fclose_r+0x78>
d0045b3e:	6a21      	ldr	r1, [r4, #32]
d0045b40:	4628      	mov	r0, r5
d0045b42:	4798      	blx	r3
d0045b44:	2800      	cmp	r0, #0
d0045b46:	bfb8      	it	lt
d0045b48:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
d0045b4c:	89a3      	ldrh	r3, [r4, #12]
d0045b4e:	061a      	lsls	r2, r3, #24
d0045b50:	d503      	bpl.n	d0045b5a <_fclose_r+0x86>
d0045b52:	6921      	ldr	r1, [r4, #16]
d0045b54:	4628      	mov	r0, r5
d0045b56:	f000 fa37 	bl	d0045fc8 <_free_r>
d0045b5a:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0045b5c:	b141      	cbz	r1, d0045b70 <_fclose_r+0x9c>
d0045b5e:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0045b62:	4299      	cmp	r1, r3
d0045b64:	d002      	beq.n	d0045b6c <_fclose_r+0x98>
d0045b66:	4628      	mov	r0, r5
d0045b68:	f000 fa2e 	bl	d0045fc8 <_free_r>
d0045b6c:	2300      	movs	r3, #0
d0045b6e:	6363      	str	r3, [r4, #52]	; 0x34
d0045b70:	6ca1      	ldr	r1, [r4, #72]	; 0x48
d0045b72:	b121      	cbz	r1, d0045b7e <_fclose_r+0xaa>
d0045b74:	4628      	mov	r0, r5
d0045b76:	f000 fa27 	bl	d0045fc8 <_free_r>
d0045b7a:	2300      	movs	r3, #0
d0045b7c:	64a3      	str	r3, [r4, #72]	; 0x48
d0045b7e:	f000 f91f 	bl	d0045dc0 <__sfp_lock_acquire>
d0045b82:	2300      	movs	r3, #0
d0045b84:	81a3      	strh	r3, [r4, #12]
d0045b86:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0045b88:	07db      	lsls	r3, r3, #31
d0045b8a:	d402      	bmi.n	d0045b92 <_fclose_r+0xbe>
d0045b8c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045b8e:	f000 f9cf 	bl	d0045f30 <__retarget_lock_release_recursive>
d0045b92:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045b94:	f000 f9ca 	bl	d0045f2c <__retarget_lock_close_recursive>
d0045b98:	f000 f918 	bl	d0045dcc <__sfp_lock_release>
d0045b9c:	e79f      	b.n	d0045ade <_fclose_r+0xa>
d0045b9e:	bf00      	nop
d0045ba0:	d0046de0 	.word	0xd0046de0
d0045ba4:	d0046e00 	.word	0xd0046e00
d0045ba8:	d0046dc0 	.word	0xd0046dc0

d0045bac <fclose>:
d0045bac:	4b02      	ldr	r3, [pc, #8]	; (d0045bb8 <fclose+0xc>)
d0045bae:	4601      	mov	r1, r0
d0045bb0:	6818      	ldr	r0, [r3, #0]
d0045bb2:	f7ff bf8f 	b.w	d0045ad4 <_fclose_r>
d0045bb6:	bf00      	nop
d0045bb8:	d00475d8 	.word	0xd00475d8

d0045bbc <__sflush_r>:
d0045bbc:	898a      	ldrh	r2, [r1, #12]
d0045bbe:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0045bc2:	4605      	mov	r5, r0
d0045bc4:	0710      	lsls	r0, r2, #28
d0045bc6:	460c      	mov	r4, r1
d0045bc8:	d458      	bmi.n	d0045c7c <__sflush_r+0xc0>
d0045bca:	684b      	ldr	r3, [r1, #4]
d0045bcc:	2b00      	cmp	r3, #0
d0045bce:	dc05      	bgt.n	d0045bdc <__sflush_r+0x20>
d0045bd0:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0045bd2:	2b00      	cmp	r3, #0
d0045bd4:	dc02      	bgt.n	d0045bdc <__sflush_r+0x20>
d0045bd6:	2000      	movs	r0, #0
d0045bd8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0045bdc:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0045bde:	2e00      	cmp	r6, #0
d0045be0:	d0f9      	beq.n	d0045bd6 <__sflush_r+0x1a>
d0045be2:	2300      	movs	r3, #0
d0045be4:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0045be8:	682f      	ldr	r7, [r5, #0]
d0045bea:	602b      	str	r3, [r5, #0]
d0045bec:	d032      	beq.n	d0045c54 <__sflush_r+0x98>
d0045bee:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0045bf0:	89a3      	ldrh	r3, [r4, #12]
d0045bf2:	075a      	lsls	r2, r3, #29
d0045bf4:	d505      	bpl.n	d0045c02 <__sflush_r+0x46>
d0045bf6:	6863      	ldr	r3, [r4, #4]
d0045bf8:	1ac0      	subs	r0, r0, r3
d0045bfa:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0045bfc:	b10b      	cbz	r3, d0045c02 <__sflush_r+0x46>
d0045bfe:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0045c00:	1ac0      	subs	r0, r0, r3
d0045c02:	2300      	movs	r3, #0
d0045c04:	4602      	mov	r2, r0
d0045c06:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0045c08:	6a21      	ldr	r1, [r4, #32]
d0045c0a:	4628      	mov	r0, r5
d0045c0c:	47b0      	blx	r6
d0045c0e:	1c43      	adds	r3, r0, #1
d0045c10:	89a3      	ldrh	r3, [r4, #12]
d0045c12:	d106      	bne.n	d0045c22 <__sflush_r+0x66>
d0045c14:	6829      	ldr	r1, [r5, #0]
d0045c16:	291d      	cmp	r1, #29
d0045c18:	d82c      	bhi.n	d0045c74 <__sflush_r+0xb8>
d0045c1a:	4a2a      	ldr	r2, [pc, #168]	; (d0045cc4 <__sflush_r+0x108>)
d0045c1c:	40ca      	lsrs	r2, r1
d0045c1e:	07d6      	lsls	r6, r2, #31
d0045c20:	d528      	bpl.n	d0045c74 <__sflush_r+0xb8>
d0045c22:	2200      	movs	r2, #0
d0045c24:	6062      	str	r2, [r4, #4]
d0045c26:	04d9      	lsls	r1, r3, #19
d0045c28:	6922      	ldr	r2, [r4, #16]
d0045c2a:	6022      	str	r2, [r4, #0]
d0045c2c:	d504      	bpl.n	d0045c38 <__sflush_r+0x7c>
d0045c2e:	1c42      	adds	r2, r0, #1
d0045c30:	d101      	bne.n	d0045c36 <__sflush_r+0x7a>
d0045c32:	682b      	ldr	r3, [r5, #0]
d0045c34:	b903      	cbnz	r3, d0045c38 <__sflush_r+0x7c>
d0045c36:	6560      	str	r0, [r4, #84]	; 0x54
d0045c38:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0045c3a:	602f      	str	r7, [r5, #0]
d0045c3c:	2900      	cmp	r1, #0
d0045c3e:	d0ca      	beq.n	d0045bd6 <__sflush_r+0x1a>
d0045c40:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0045c44:	4299      	cmp	r1, r3
d0045c46:	d002      	beq.n	d0045c4e <__sflush_r+0x92>
d0045c48:	4628      	mov	r0, r5
d0045c4a:	f000 f9bd 	bl	d0045fc8 <_free_r>
d0045c4e:	2000      	movs	r0, #0
d0045c50:	6360      	str	r0, [r4, #52]	; 0x34
d0045c52:	e7c1      	b.n	d0045bd8 <__sflush_r+0x1c>
d0045c54:	6a21      	ldr	r1, [r4, #32]
d0045c56:	2301      	movs	r3, #1
d0045c58:	4628      	mov	r0, r5
d0045c5a:	47b0      	blx	r6
d0045c5c:	1c41      	adds	r1, r0, #1
d0045c5e:	d1c7      	bne.n	d0045bf0 <__sflush_r+0x34>
d0045c60:	682b      	ldr	r3, [r5, #0]
d0045c62:	2b00      	cmp	r3, #0
d0045c64:	d0c4      	beq.n	d0045bf0 <__sflush_r+0x34>
d0045c66:	2b1d      	cmp	r3, #29
d0045c68:	d001      	beq.n	d0045c6e <__sflush_r+0xb2>
d0045c6a:	2b16      	cmp	r3, #22
d0045c6c:	d101      	bne.n	d0045c72 <__sflush_r+0xb6>
d0045c6e:	602f      	str	r7, [r5, #0]
d0045c70:	e7b1      	b.n	d0045bd6 <__sflush_r+0x1a>
d0045c72:	89a3      	ldrh	r3, [r4, #12]
d0045c74:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0045c78:	81a3      	strh	r3, [r4, #12]
d0045c7a:	e7ad      	b.n	d0045bd8 <__sflush_r+0x1c>
d0045c7c:	690f      	ldr	r7, [r1, #16]
d0045c7e:	2f00      	cmp	r7, #0
d0045c80:	d0a9      	beq.n	d0045bd6 <__sflush_r+0x1a>
d0045c82:	0793      	lsls	r3, r2, #30
d0045c84:	680e      	ldr	r6, [r1, #0]
d0045c86:	bf08      	it	eq
d0045c88:	694b      	ldreq	r3, [r1, #20]
d0045c8a:	600f      	str	r7, [r1, #0]
d0045c8c:	bf18      	it	ne
d0045c8e:	2300      	movne	r3, #0
d0045c90:	eba6 0807 	sub.w	r8, r6, r7
d0045c94:	608b      	str	r3, [r1, #8]
d0045c96:	f1b8 0f00 	cmp.w	r8, #0
d0045c9a:	dd9c      	ble.n	d0045bd6 <__sflush_r+0x1a>
d0045c9c:	6a21      	ldr	r1, [r4, #32]
d0045c9e:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0045ca0:	4643      	mov	r3, r8
d0045ca2:	463a      	mov	r2, r7
d0045ca4:	4628      	mov	r0, r5
d0045ca6:	47b0      	blx	r6
d0045ca8:	2800      	cmp	r0, #0
d0045caa:	dc06      	bgt.n	d0045cba <__sflush_r+0xfe>
d0045cac:	89a3      	ldrh	r3, [r4, #12]
d0045cae:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0045cb2:	81a3      	strh	r3, [r4, #12]
d0045cb4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0045cb8:	e78e      	b.n	d0045bd8 <__sflush_r+0x1c>
d0045cba:	4407      	add	r7, r0
d0045cbc:	eba8 0800 	sub.w	r8, r8, r0
d0045cc0:	e7e9      	b.n	d0045c96 <__sflush_r+0xda>
d0045cc2:	bf00      	nop
d0045cc4:	20400001 	.word	0x20400001

d0045cc8 <_fflush_r>:
d0045cc8:	b538      	push	{r3, r4, r5, lr}
d0045cca:	690b      	ldr	r3, [r1, #16]
d0045ccc:	4605      	mov	r5, r0
d0045cce:	460c      	mov	r4, r1
d0045cd0:	b913      	cbnz	r3, d0045cd8 <_fflush_r+0x10>
d0045cd2:	2500      	movs	r5, #0
d0045cd4:	4628      	mov	r0, r5
d0045cd6:	bd38      	pop	{r3, r4, r5, pc}
d0045cd8:	b118      	cbz	r0, d0045ce2 <_fflush_r+0x1a>
d0045cda:	6983      	ldr	r3, [r0, #24]
d0045cdc:	b90b      	cbnz	r3, d0045ce2 <_fflush_r+0x1a>
d0045cde:	f000 f887 	bl	d0045df0 <__sinit>
d0045ce2:	4b14      	ldr	r3, [pc, #80]	; (d0045d34 <_fflush_r+0x6c>)
d0045ce4:	429c      	cmp	r4, r3
d0045ce6:	d11b      	bne.n	d0045d20 <_fflush_r+0x58>
d0045ce8:	686c      	ldr	r4, [r5, #4]
d0045cea:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0045cee:	2b00      	cmp	r3, #0
d0045cf0:	d0ef      	beq.n	d0045cd2 <_fflush_r+0xa>
d0045cf2:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0045cf4:	07d0      	lsls	r0, r2, #31
d0045cf6:	d404      	bmi.n	d0045d02 <_fflush_r+0x3a>
d0045cf8:	0599      	lsls	r1, r3, #22
d0045cfa:	d402      	bmi.n	d0045d02 <_fflush_r+0x3a>
d0045cfc:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045cfe:	f000 f916 	bl	d0045f2e <__retarget_lock_acquire_recursive>
d0045d02:	4628      	mov	r0, r5
d0045d04:	4621      	mov	r1, r4
d0045d06:	f7ff ff59 	bl	d0045bbc <__sflush_r>
d0045d0a:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0045d0c:	07da      	lsls	r2, r3, #31
d0045d0e:	4605      	mov	r5, r0
d0045d10:	d4e0      	bmi.n	d0045cd4 <_fflush_r+0xc>
d0045d12:	89a3      	ldrh	r3, [r4, #12]
d0045d14:	059b      	lsls	r3, r3, #22
d0045d16:	d4dd      	bmi.n	d0045cd4 <_fflush_r+0xc>
d0045d18:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045d1a:	f000 f909 	bl	d0045f30 <__retarget_lock_release_recursive>
d0045d1e:	e7d9      	b.n	d0045cd4 <_fflush_r+0xc>
d0045d20:	4b05      	ldr	r3, [pc, #20]	; (d0045d38 <_fflush_r+0x70>)
d0045d22:	429c      	cmp	r4, r3
d0045d24:	d101      	bne.n	d0045d2a <_fflush_r+0x62>
d0045d26:	68ac      	ldr	r4, [r5, #8]
d0045d28:	e7df      	b.n	d0045cea <_fflush_r+0x22>
d0045d2a:	4b04      	ldr	r3, [pc, #16]	; (d0045d3c <_fflush_r+0x74>)
d0045d2c:	429c      	cmp	r4, r3
d0045d2e:	bf08      	it	eq
d0045d30:	68ec      	ldreq	r4, [r5, #12]
d0045d32:	e7da      	b.n	d0045cea <_fflush_r+0x22>
d0045d34:	d0046de0 	.word	0xd0046de0
d0045d38:	d0046e00 	.word	0xd0046e00
d0045d3c:	d0046dc0 	.word	0xd0046dc0

d0045d40 <std>:
d0045d40:	2300      	movs	r3, #0
d0045d42:	b510      	push	{r4, lr}
d0045d44:	4604      	mov	r4, r0
d0045d46:	e9c0 3300 	strd	r3, r3, [r0]
d0045d4a:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0045d4e:	6083      	str	r3, [r0, #8]
d0045d50:	8181      	strh	r1, [r0, #12]
d0045d52:	6643      	str	r3, [r0, #100]	; 0x64
d0045d54:	81c2      	strh	r2, [r0, #14]
d0045d56:	6183      	str	r3, [r0, #24]
d0045d58:	4619      	mov	r1, r3
d0045d5a:	2208      	movs	r2, #8
d0045d5c:	305c      	adds	r0, #92	; 0x5c
d0045d5e:	f000 f92b 	bl	d0045fb8 <memset>
d0045d62:	4b05      	ldr	r3, [pc, #20]	; (d0045d78 <std+0x38>)
d0045d64:	6263      	str	r3, [r4, #36]	; 0x24
d0045d66:	4b05      	ldr	r3, [pc, #20]	; (d0045d7c <std+0x3c>)
d0045d68:	62a3      	str	r3, [r4, #40]	; 0x28
d0045d6a:	4b05      	ldr	r3, [pc, #20]	; (d0045d80 <std+0x40>)
d0045d6c:	62e3      	str	r3, [r4, #44]	; 0x2c
d0045d6e:	4b05      	ldr	r3, [pc, #20]	; (d0045d84 <std+0x44>)
d0045d70:	6224      	str	r4, [r4, #32]
d0045d72:	6323      	str	r3, [r4, #48]	; 0x30
d0045d74:	bd10      	pop	{r4, pc}
d0045d76:	bf00      	nop
d0045d78:	d00462b9 	.word	0xd00462b9
d0045d7c:	d00462db 	.word	0xd00462db
d0045d80:	d0046313 	.word	0xd0046313
d0045d84:	d0046337 	.word	0xd0046337

d0045d88 <_cleanup_r>:
d0045d88:	4901      	ldr	r1, [pc, #4]	; (d0045d90 <_cleanup_r+0x8>)
d0045d8a:	f000 b8af 	b.w	d0045eec <_fwalk_reent>
d0045d8e:	bf00      	nop
d0045d90:	d0045cc9 	.word	0xd0045cc9

d0045d94 <__sfmoreglue>:
d0045d94:	b570      	push	{r4, r5, r6, lr}
d0045d96:	1e4a      	subs	r2, r1, #1
d0045d98:	2568      	movs	r5, #104	; 0x68
d0045d9a:	4355      	muls	r5, r2
d0045d9c:	460e      	mov	r6, r1
d0045d9e:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0045da2:	f000 f961 	bl	d0046068 <_malloc_r>
d0045da6:	4604      	mov	r4, r0
d0045da8:	b140      	cbz	r0, d0045dbc <__sfmoreglue+0x28>
d0045daa:	2100      	movs	r1, #0
d0045dac:	e9c0 1600 	strd	r1, r6, [r0]
d0045db0:	300c      	adds	r0, #12
d0045db2:	60a0      	str	r0, [r4, #8]
d0045db4:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0045db8:	f000 f8fe 	bl	d0045fb8 <memset>
d0045dbc:	4620      	mov	r0, r4
d0045dbe:	bd70      	pop	{r4, r5, r6, pc}

d0045dc0 <__sfp_lock_acquire>:
d0045dc0:	4801      	ldr	r0, [pc, #4]	; (d0045dc8 <__sfp_lock_acquire+0x8>)
d0045dc2:	f000 b8b4 	b.w	d0045f2e <__retarget_lock_acquire_recursive>
d0045dc6:	bf00      	nop
d0045dc8:	d0132d68 	.word	0xd0132d68

d0045dcc <__sfp_lock_release>:
d0045dcc:	4801      	ldr	r0, [pc, #4]	; (d0045dd4 <__sfp_lock_release+0x8>)
d0045dce:	f000 b8af 	b.w	d0045f30 <__retarget_lock_release_recursive>
d0045dd2:	bf00      	nop
d0045dd4:	d0132d68 	.word	0xd0132d68

d0045dd8 <__sinit_lock_acquire>:
d0045dd8:	4801      	ldr	r0, [pc, #4]	; (d0045de0 <__sinit_lock_acquire+0x8>)
d0045dda:	f000 b8a8 	b.w	d0045f2e <__retarget_lock_acquire_recursive>
d0045dde:	bf00      	nop
d0045de0:	d0132d63 	.word	0xd0132d63

d0045de4 <__sinit_lock_release>:
d0045de4:	4801      	ldr	r0, [pc, #4]	; (d0045dec <__sinit_lock_release+0x8>)
d0045de6:	f000 b8a3 	b.w	d0045f30 <__retarget_lock_release_recursive>
d0045dea:	bf00      	nop
d0045dec:	d0132d63 	.word	0xd0132d63

d0045df0 <__sinit>:
d0045df0:	b510      	push	{r4, lr}
d0045df2:	4604      	mov	r4, r0
d0045df4:	f7ff fff0 	bl	d0045dd8 <__sinit_lock_acquire>
d0045df8:	69a3      	ldr	r3, [r4, #24]
d0045dfa:	b11b      	cbz	r3, d0045e04 <__sinit+0x14>
d0045dfc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0045e00:	f7ff bff0 	b.w	d0045de4 <__sinit_lock_release>
d0045e04:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0045e08:	6523      	str	r3, [r4, #80]	; 0x50
d0045e0a:	4b13      	ldr	r3, [pc, #76]	; (d0045e58 <__sinit+0x68>)
d0045e0c:	4a13      	ldr	r2, [pc, #76]	; (d0045e5c <__sinit+0x6c>)
d0045e0e:	681b      	ldr	r3, [r3, #0]
d0045e10:	62a2      	str	r2, [r4, #40]	; 0x28
d0045e12:	42a3      	cmp	r3, r4
d0045e14:	bf04      	itt	eq
d0045e16:	2301      	moveq	r3, #1
d0045e18:	61a3      	streq	r3, [r4, #24]
d0045e1a:	4620      	mov	r0, r4
d0045e1c:	f000 f820 	bl	d0045e60 <__sfp>
d0045e20:	6060      	str	r0, [r4, #4]
d0045e22:	4620      	mov	r0, r4
d0045e24:	f000 f81c 	bl	d0045e60 <__sfp>
d0045e28:	60a0      	str	r0, [r4, #8]
d0045e2a:	4620      	mov	r0, r4
d0045e2c:	f000 f818 	bl	d0045e60 <__sfp>
d0045e30:	2200      	movs	r2, #0
d0045e32:	60e0      	str	r0, [r4, #12]
d0045e34:	2104      	movs	r1, #4
d0045e36:	6860      	ldr	r0, [r4, #4]
d0045e38:	f7ff ff82 	bl	d0045d40 <std>
d0045e3c:	68a0      	ldr	r0, [r4, #8]
d0045e3e:	2201      	movs	r2, #1
d0045e40:	2109      	movs	r1, #9
d0045e42:	f7ff ff7d 	bl	d0045d40 <std>
d0045e46:	68e0      	ldr	r0, [r4, #12]
d0045e48:	2202      	movs	r2, #2
d0045e4a:	2112      	movs	r1, #18
d0045e4c:	f7ff ff78 	bl	d0045d40 <std>
d0045e50:	2301      	movs	r3, #1
d0045e52:	61a3      	str	r3, [r4, #24]
d0045e54:	e7d2      	b.n	d0045dfc <__sinit+0xc>
d0045e56:	bf00      	nop
d0045e58:	d0046e20 	.word	0xd0046e20
d0045e5c:	d0045d89 	.word	0xd0045d89

d0045e60 <__sfp>:
d0045e60:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0045e62:	4607      	mov	r7, r0
d0045e64:	f7ff ffac 	bl	d0045dc0 <__sfp_lock_acquire>
d0045e68:	4b1e      	ldr	r3, [pc, #120]	; (d0045ee4 <__sfp+0x84>)
d0045e6a:	681e      	ldr	r6, [r3, #0]
d0045e6c:	69b3      	ldr	r3, [r6, #24]
d0045e6e:	b913      	cbnz	r3, d0045e76 <__sfp+0x16>
d0045e70:	4630      	mov	r0, r6
d0045e72:	f7ff ffbd 	bl	d0045df0 <__sinit>
d0045e76:	3648      	adds	r6, #72	; 0x48
d0045e78:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0045e7c:	3b01      	subs	r3, #1
d0045e7e:	d503      	bpl.n	d0045e88 <__sfp+0x28>
d0045e80:	6833      	ldr	r3, [r6, #0]
d0045e82:	b30b      	cbz	r3, d0045ec8 <__sfp+0x68>
d0045e84:	6836      	ldr	r6, [r6, #0]
d0045e86:	e7f7      	b.n	d0045e78 <__sfp+0x18>
d0045e88:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0045e8c:	b9d5      	cbnz	r5, d0045ec4 <__sfp+0x64>
d0045e8e:	4b16      	ldr	r3, [pc, #88]	; (d0045ee8 <__sfp+0x88>)
d0045e90:	60e3      	str	r3, [r4, #12]
d0045e92:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0045e96:	6665      	str	r5, [r4, #100]	; 0x64
d0045e98:	f000 f847 	bl	d0045f2a <__retarget_lock_init_recursive>
d0045e9c:	f7ff ff96 	bl	d0045dcc <__sfp_lock_release>
d0045ea0:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0045ea4:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0045ea8:	6025      	str	r5, [r4, #0]
d0045eaa:	61a5      	str	r5, [r4, #24]
d0045eac:	2208      	movs	r2, #8
d0045eae:	4629      	mov	r1, r5
d0045eb0:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0045eb4:	f000 f880 	bl	d0045fb8 <memset>
d0045eb8:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0045ebc:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0045ec0:	4620      	mov	r0, r4
d0045ec2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0045ec4:	3468      	adds	r4, #104	; 0x68
d0045ec6:	e7d9      	b.n	d0045e7c <__sfp+0x1c>
d0045ec8:	2104      	movs	r1, #4
d0045eca:	4638      	mov	r0, r7
d0045ecc:	f7ff ff62 	bl	d0045d94 <__sfmoreglue>
d0045ed0:	4604      	mov	r4, r0
d0045ed2:	6030      	str	r0, [r6, #0]
d0045ed4:	2800      	cmp	r0, #0
d0045ed6:	d1d5      	bne.n	d0045e84 <__sfp+0x24>
d0045ed8:	f7ff ff78 	bl	d0045dcc <__sfp_lock_release>
d0045edc:	230c      	movs	r3, #12
d0045ede:	603b      	str	r3, [r7, #0]
d0045ee0:	e7ee      	b.n	d0045ec0 <__sfp+0x60>
d0045ee2:	bf00      	nop
d0045ee4:	d0046e20 	.word	0xd0046e20
d0045ee8:	ffff0001 	.word	0xffff0001

d0045eec <_fwalk_reent>:
d0045eec:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0045ef0:	4606      	mov	r6, r0
d0045ef2:	4688      	mov	r8, r1
d0045ef4:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0045ef8:	2700      	movs	r7, #0
d0045efa:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0045efe:	f1b9 0901 	subs.w	r9, r9, #1
d0045f02:	d505      	bpl.n	d0045f10 <_fwalk_reent+0x24>
d0045f04:	6824      	ldr	r4, [r4, #0]
d0045f06:	2c00      	cmp	r4, #0
d0045f08:	d1f7      	bne.n	d0045efa <_fwalk_reent+0xe>
d0045f0a:	4638      	mov	r0, r7
d0045f0c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0045f10:	89ab      	ldrh	r3, [r5, #12]
d0045f12:	2b01      	cmp	r3, #1
d0045f14:	d907      	bls.n	d0045f26 <_fwalk_reent+0x3a>
d0045f16:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0045f1a:	3301      	adds	r3, #1
d0045f1c:	d003      	beq.n	d0045f26 <_fwalk_reent+0x3a>
d0045f1e:	4629      	mov	r1, r5
d0045f20:	4630      	mov	r0, r6
d0045f22:	47c0      	blx	r8
d0045f24:	4307      	orrs	r7, r0
d0045f26:	3568      	adds	r5, #104	; 0x68
d0045f28:	e7e9      	b.n	d0045efe <_fwalk_reent+0x12>

d0045f2a <__retarget_lock_init_recursive>:
d0045f2a:	4770      	bx	lr

d0045f2c <__retarget_lock_close_recursive>:
d0045f2c:	4770      	bx	lr

d0045f2e <__retarget_lock_acquire_recursive>:
d0045f2e:	4770      	bx	lr

d0045f30 <__retarget_lock_release_recursive>:
d0045f30:	4770      	bx	lr

d0045f32 <__swhatbuf_r>:
d0045f32:	b570      	push	{r4, r5, r6, lr}
d0045f34:	460e      	mov	r6, r1
d0045f36:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0045f3a:	2900      	cmp	r1, #0
d0045f3c:	b096      	sub	sp, #88	; 0x58
d0045f3e:	4614      	mov	r4, r2
d0045f40:	461d      	mov	r5, r3
d0045f42:	da07      	bge.n	d0045f54 <__swhatbuf_r+0x22>
d0045f44:	2300      	movs	r3, #0
d0045f46:	602b      	str	r3, [r5, #0]
d0045f48:	89b3      	ldrh	r3, [r6, #12]
d0045f4a:	061a      	lsls	r2, r3, #24
d0045f4c:	d410      	bmi.n	d0045f70 <__swhatbuf_r+0x3e>
d0045f4e:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0045f52:	e00e      	b.n	d0045f72 <__swhatbuf_r+0x40>
d0045f54:	466a      	mov	r2, sp
d0045f56:	f000 fa03 	bl	d0046360 <_fstat_r>
d0045f5a:	2800      	cmp	r0, #0
d0045f5c:	dbf2      	blt.n	d0045f44 <__swhatbuf_r+0x12>
d0045f5e:	9a01      	ldr	r2, [sp, #4]
d0045f60:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0045f64:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0045f68:	425a      	negs	r2, r3
d0045f6a:	415a      	adcs	r2, r3
d0045f6c:	602a      	str	r2, [r5, #0]
d0045f6e:	e7ee      	b.n	d0045f4e <__swhatbuf_r+0x1c>
d0045f70:	2340      	movs	r3, #64	; 0x40
d0045f72:	2000      	movs	r0, #0
d0045f74:	6023      	str	r3, [r4, #0]
d0045f76:	b016      	add	sp, #88	; 0x58
d0045f78:	bd70      	pop	{r4, r5, r6, pc}
	...

d0045f7c <malloc>:
d0045f7c:	4b02      	ldr	r3, [pc, #8]	; (d0045f88 <malloc+0xc>)
d0045f7e:	4601      	mov	r1, r0
d0045f80:	6818      	ldr	r0, [r3, #0]
d0045f82:	f000 b871 	b.w	d0046068 <_malloc_r>
d0045f86:	bf00      	nop
d0045f88:	d00475d8 	.word	0xd00475d8

d0045f8c <free>:
d0045f8c:	4b02      	ldr	r3, [pc, #8]	; (d0045f98 <free+0xc>)
d0045f8e:	4601      	mov	r1, r0
d0045f90:	6818      	ldr	r0, [r3, #0]
d0045f92:	f000 b819 	b.w	d0045fc8 <_free_r>
d0045f96:	bf00      	nop
d0045f98:	d00475d8 	.word	0xd00475d8

d0045f9c <memcpy>:
d0045f9c:	440a      	add	r2, r1
d0045f9e:	4291      	cmp	r1, r2
d0045fa0:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0045fa4:	d100      	bne.n	d0045fa8 <memcpy+0xc>
d0045fa6:	4770      	bx	lr
d0045fa8:	b510      	push	{r4, lr}
d0045faa:	f811 4b01 	ldrb.w	r4, [r1], #1
d0045fae:	f803 4f01 	strb.w	r4, [r3, #1]!
d0045fb2:	4291      	cmp	r1, r2
d0045fb4:	d1f9      	bne.n	d0045faa <memcpy+0xe>
d0045fb6:	bd10      	pop	{r4, pc}

d0045fb8 <memset>:
d0045fb8:	4402      	add	r2, r0
d0045fba:	4603      	mov	r3, r0
d0045fbc:	4293      	cmp	r3, r2
d0045fbe:	d100      	bne.n	d0045fc2 <memset+0xa>
d0045fc0:	4770      	bx	lr
d0045fc2:	f803 1b01 	strb.w	r1, [r3], #1
d0045fc6:	e7f9      	b.n	d0045fbc <memset+0x4>

d0045fc8 <_free_r>:
d0045fc8:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0045fca:	2900      	cmp	r1, #0
d0045fcc:	d048      	beq.n	d0046060 <_free_r+0x98>
d0045fce:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0045fd2:	9001      	str	r0, [sp, #4]
d0045fd4:	2b00      	cmp	r3, #0
d0045fd6:	f1a1 0404 	sub.w	r4, r1, #4
d0045fda:	bfb8      	it	lt
d0045fdc:	18e4      	addlt	r4, r4, r3
d0045fde:	f000 f9e3 	bl	d00463a8 <__malloc_lock>
d0045fe2:	4a20      	ldr	r2, [pc, #128]	; (d0046064 <_free_r+0x9c>)
d0045fe4:	9801      	ldr	r0, [sp, #4]
d0045fe6:	6813      	ldr	r3, [r2, #0]
d0045fe8:	4615      	mov	r5, r2
d0045fea:	b933      	cbnz	r3, d0045ffa <_free_r+0x32>
d0045fec:	6063      	str	r3, [r4, #4]
d0045fee:	6014      	str	r4, [r2, #0]
d0045ff0:	b003      	add	sp, #12
d0045ff2:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0045ff6:	f000 b9dd 	b.w	d00463b4 <__malloc_unlock>
d0045ffa:	42a3      	cmp	r3, r4
d0045ffc:	d90b      	bls.n	d0046016 <_free_r+0x4e>
d0045ffe:	6821      	ldr	r1, [r4, #0]
d0046000:	1862      	adds	r2, r4, r1
d0046002:	4293      	cmp	r3, r2
d0046004:	bf04      	itt	eq
d0046006:	681a      	ldreq	r2, [r3, #0]
d0046008:	685b      	ldreq	r3, [r3, #4]
d004600a:	6063      	str	r3, [r4, #4]
d004600c:	bf04      	itt	eq
d004600e:	1852      	addeq	r2, r2, r1
d0046010:	6022      	streq	r2, [r4, #0]
d0046012:	602c      	str	r4, [r5, #0]
d0046014:	e7ec      	b.n	d0045ff0 <_free_r+0x28>
d0046016:	461a      	mov	r2, r3
d0046018:	685b      	ldr	r3, [r3, #4]
d004601a:	b10b      	cbz	r3, d0046020 <_free_r+0x58>
d004601c:	42a3      	cmp	r3, r4
d004601e:	d9fa      	bls.n	d0046016 <_free_r+0x4e>
d0046020:	6811      	ldr	r1, [r2, #0]
d0046022:	1855      	adds	r5, r2, r1
d0046024:	42a5      	cmp	r5, r4
d0046026:	d10b      	bne.n	d0046040 <_free_r+0x78>
d0046028:	6824      	ldr	r4, [r4, #0]
d004602a:	4421      	add	r1, r4
d004602c:	1854      	adds	r4, r2, r1
d004602e:	42a3      	cmp	r3, r4
d0046030:	6011      	str	r1, [r2, #0]
d0046032:	d1dd      	bne.n	d0045ff0 <_free_r+0x28>
d0046034:	681c      	ldr	r4, [r3, #0]
d0046036:	685b      	ldr	r3, [r3, #4]
d0046038:	6053      	str	r3, [r2, #4]
d004603a:	4421      	add	r1, r4
d004603c:	6011      	str	r1, [r2, #0]
d004603e:	e7d7      	b.n	d0045ff0 <_free_r+0x28>
d0046040:	d902      	bls.n	d0046048 <_free_r+0x80>
d0046042:	230c      	movs	r3, #12
d0046044:	6003      	str	r3, [r0, #0]
d0046046:	e7d3      	b.n	d0045ff0 <_free_r+0x28>
d0046048:	6825      	ldr	r5, [r4, #0]
d004604a:	1961      	adds	r1, r4, r5
d004604c:	428b      	cmp	r3, r1
d004604e:	bf04      	itt	eq
d0046050:	6819      	ldreq	r1, [r3, #0]
d0046052:	685b      	ldreq	r3, [r3, #4]
d0046054:	6063      	str	r3, [r4, #4]
d0046056:	bf04      	itt	eq
d0046058:	1949      	addeq	r1, r1, r5
d004605a:	6021      	streq	r1, [r4, #0]
d004605c:	6054      	str	r4, [r2, #4]
d004605e:	e7c7      	b.n	d0045ff0 <_free_r+0x28>
d0046060:	b003      	add	sp, #12
d0046062:	bd30      	pop	{r4, r5, pc}
d0046064:	d012ccc0 	.word	0xd012ccc0

d0046068 <_malloc_r>:
d0046068:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d004606a:	1ccd      	adds	r5, r1, #3
d004606c:	f025 0503 	bic.w	r5, r5, #3
d0046070:	3508      	adds	r5, #8
d0046072:	2d0c      	cmp	r5, #12
d0046074:	bf38      	it	cc
d0046076:	250c      	movcc	r5, #12
d0046078:	2d00      	cmp	r5, #0
d004607a:	4606      	mov	r6, r0
d004607c:	db01      	blt.n	d0046082 <_malloc_r+0x1a>
d004607e:	42a9      	cmp	r1, r5
d0046080:	d903      	bls.n	d004608a <_malloc_r+0x22>
d0046082:	230c      	movs	r3, #12
d0046084:	6033      	str	r3, [r6, #0]
d0046086:	2000      	movs	r0, #0
d0046088:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d004608a:	f000 f98d 	bl	d00463a8 <__malloc_lock>
d004608e:	4921      	ldr	r1, [pc, #132]	; (d0046114 <_malloc_r+0xac>)
d0046090:	680a      	ldr	r2, [r1, #0]
d0046092:	4614      	mov	r4, r2
d0046094:	b99c      	cbnz	r4, d00460be <_malloc_r+0x56>
d0046096:	4f20      	ldr	r7, [pc, #128]	; (d0046118 <_malloc_r+0xb0>)
d0046098:	683b      	ldr	r3, [r7, #0]
d004609a:	b923      	cbnz	r3, d00460a6 <_malloc_r+0x3e>
d004609c:	4621      	mov	r1, r4
d004609e:	4630      	mov	r0, r6
d00460a0:	f7fa f81e 	bl	d00400e0 <_sbrk_r>
d00460a4:	6038      	str	r0, [r7, #0]
d00460a6:	4629      	mov	r1, r5
d00460a8:	4630      	mov	r0, r6
d00460aa:	f7fa f819 	bl	d00400e0 <_sbrk_r>
d00460ae:	1c43      	adds	r3, r0, #1
d00460b0:	d123      	bne.n	d00460fa <_malloc_r+0x92>
d00460b2:	230c      	movs	r3, #12
d00460b4:	6033      	str	r3, [r6, #0]
d00460b6:	4630      	mov	r0, r6
d00460b8:	f000 f97c 	bl	d00463b4 <__malloc_unlock>
d00460bc:	e7e3      	b.n	d0046086 <_malloc_r+0x1e>
d00460be:	6823      	ldr	r3, [r4, #0]
d00460c0:	1b5b      	subs	r3, r3, r5
d00460c2:	d417      	bmi.n	d00460f4 <_malloc_r+0x8c>
d00460c4:	2b0b      	cmp	r3, #11
d00460c6:	d903      	bls.n	d00460d0 <_malloc_r+0x68>
d00460c8:	6023      	str	r3, [r4, #0]
d00460ca:	441c      	add	r4, r3
d00460cc:	6025      	str	r5, [r4, #0]
d00460ce:	e004      	b.n	d00460da <_malloc_r+0x72>
d00460d0:	6863      	ldr	r3, [r4, #4]
d00460d2:	42a2      	cmp	r2, r4
d00460d4:	bf0c      	ite	eq
d00460d6:	600b      	streq	r3, [r1, #0]
d00460d8:	6053      	strne	r3, [r2, #4]
d00460da:	4630      	mov	r0, r6
d00460dc:	f000 f96a 	bl	d00463b4 <__malloc_unlock>
d00460e0:	f104 000b 	add.w	r0, r4, #11
d00460e4:	1d23      	adds	r3, r4, #4
d00460e6:	f020 0007 	bic.w	r0, r0, #7
d00460ea:	1ac2      	subs	r2, r0, r3
d00460ec:	d0cc      	beq.n	d0046088 <_malloc_r+0x20>
d00460ee:	1a1b      	subs	r3, r3, r0
d00460f0:	50a3      	str	r3, [r4, r2]
d00460f2:	e7c9      	b.n	d0046088 <_malloc_r+0x20>
d00460f4:	4622      	mov	r2, r4
d00460f6:	6864      	ldr	r4, [r4, #4]
d00460f8:	e7cc      	b.n	d0046094 <_malloc_r+0x2c>
d00460fa:	1cc4      	adds	r4, r0, #3
d00460fc:	f024 0403 	bic.w	r4, r4, #3
d0046100:	42a0      	cmp	r0, r4
d0046102:	d0e3      	beq.n	d00460cc <_malloc_r+0x64>
d0046104:	1a21      	subs	r1, r4, r0
d0046106:	4630      	mov	r0, r6
d0046108:	f7f9 ffea 	bl	d00400e0 <_sbrk_r>
d004610c:	3001      	adds	r0, #1
d004610e:	d1dd      	bne.n	d00460cc <_malloc_r+0x64>
d0046110:	e7cf      	b.n	d00460b2 <_malloc_r+0x4a>
d0046112:	bf00      	nop
d0046114:	d012ccc0 	.word	0xd012ccc0
d0046118:	d012ccc4 	.word	0xd012ccc4

d004611c <setbuf>:
d004611c:	2900      	cmp	r1, #0
d004611e:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0046122:	bf0c      	ite	eq
d0046124:	2202      	moveq	r2, #2
d0046126:	2200      	movne	r2, #0
d0046128:	f000 b800 	b.w	d004612c <setvbuf>

d004612c <setvbuf>:
d004612c:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0046130:	461d      	mov	r5, r3
d0046132:	4b5d      	ldr	r3, [pc, #372]	; (d00462a8 <setvbuf+0x17c>)
d0046134:	681f      	ldr	r7, [r3, #0]
d0046136:	4604      	mov	r4, r0
d0046138:	460e      	mov	r6, r1
d004613a:	4690      	mov	r8, r2
d004613c:	b127      	cbz	r7, d0046148 <setvbuf+0x1c>
d004613e:	69bb      	ldr	r3, [r7, #24]
d0046140:	b913      	cbnz	r3, d0046148 <setvbuf+0x1c>
d0046142:	4638      	mov	r0, r7
d0046144:	f7ff fe54 	bl	d0045df0 <__sinit>
d0046148:	4b58      	ldr	r3, [pc, #352]	; (d00462ac <setvbuf+0x180>)
d004614a:	429c      	cmp	r4, r3
d004614c:	d167      	bne.n	d004621e <setvbuf+0xf2>
d004614e:	687c      	ldr	r4, [r7, #4]
d0046150:	f1b8 0f02 	cmp.w	r8, #2
d0046154:	d006      	beq.n	d0046164 <setvbuf+0x38>
d0046156:	f1b8 0f01 	cmp.w	r8, #1
d004615a:	f200 809f 	bhi.w	d004629c <setvbuf+0x170>
d004615e:	2d00      	cmp	r5, #0
d0046160:	f2c0 809c 	blt.w	d004629c <setvbuf+0x170>
d0046164:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0046166:	07db      	lsls	r3, r3, #31
d0046168:	d405      	bmi.n	d0046176 <setvbuf+0x4a>
d004616a:	89a3      	ldrh	r3, [r4, #12]
d004616c:	0598      	lsls	r0, r3, #22
d004616e:	d402      	bmi.n	d0046176 <setvbuf+0x4a>
d0046170:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0046172:	f7ff fedc 	bl	d0045f2e <__retarget_lock_acquire_recursive>
d0046176:	4621      	mov	r1, r4
d0046178:	4638      	mov	r0, r7
d004617a:	f7ff fda5 	bl	d0045cc8 <_fflush_r>
d004617e:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0046180:	b141      	cbz	r1, d0046194 <setvbuf+0x68>
d0046182:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0046186:	4299      	cmp	r1, r3
d0046188:	d002      	beq.n	d0046190 <setvbuf+0x64>
d004618a:	4638      	mov	r0, r7
d004618c:	f7ff ff1c 	bl	d0045fc8 <_free_r>
d0046190:	2300      	movs	r3, #0
d0046192:	6363      	str	r3, [r4, #52]	; 0x34
d0046194:	2300      	movs	r3, #0
d0046196:	61a3      	str	r3, [r4, #24]
d0046198:	6063      	str	r3, [r4, #4]
d004619a:	89a3      	ldrh	r3, [r4, #12]
d004619c:	0619      	lsls	r1, r3, #24
d004619e:	d503      	bpl.n	d00461a8 <setvbuf+0x7c>
d00461a0:	6921      	ldr	r1, [r4, #16]
d00461a2:	4638      	mov	r0, r7
d00461a4:	f7ff ff10 	bl	d0045fc8 <_free_r>
d00461a8:	89a3      	ldrh	r3, [r4, #12]
d00461aa:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d00461ae:	f023 0303 	bic.w	r3, r3, #3
d00461b2:	f1b8 0f02 	cmp.w	r8, #2
d00461b6:	81a3      	strh	r3, [r4, #12]
d00461b8:	d06c      	beq.n	d0046294 <setvbuf+0x168>
d00461ba:	ab01      	add	r3, sp, #4
d00461bc:	466a      	mov	r2, sp
d00461be:	4621      	mov	r1, r4
d00461c0:	4638      	mov	r0, r7
d00461c2:	f7ff feb6 	bl	d0045f32 <__swhatbuf_r>
d00461c6:	89a3      	ldrh	r3, [r4, #12]
d00461c8:	4318      	orrs	r0, r3
d00461ca:	81a0      	strh	r0, [r4, #12]
d00461cc:	2d00      	cmp	r5, #0
d00461ce:	d130      	bne.n	d0046232 <setvbuf+0x106>
d00461d0:	9d00      	ldr	r5, [sp, #0]
d00461d2:	4628      	mov	r0, r5
d00461d4:	f7ff fed2 	bl	d0045f7c <malloc>
d00461d8:	4606      	mov	r6, r0
d00461da:	2800      	cmp	r0, #0
d00461dc:	d155      	bne.n	d004628a <setvbuf+0x15e>
d00461de:	f8dd 9000 	ldr.w	r9, [sp]
d00461e2:	45a9      	cmp	r9, r5
d00461e4:	d14a      	bne.n	d004627c <setvbuf+0x150>
d00461e6:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00461ea:	2200      	movs	r2, #0
d00461ec:	60a2      	str	r2, [r4, #8]
d00461ee:	f104 0247 	add.w	r2, r4, #71	; 0x47
d00461f2:	6022      	str	r2, [r4, #0]
d00461f4:	6122      	str	r2, [r4, #16]
d00461f6:	2201      	movs	r2, #1
d00461f8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d00461fc:	6162      	str	r2, [r4, #20]
d00461fe:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0046200:	f043 0302 	orr.w	r3, r3, #2
d0046204:	07d2      	lsls	r2, r2, #31
d0046206:	81a3      	strh	r3, [r4, #12]
d0046208:	d405      	bmi.n	d0046216 <setvbuf+0xea>
d004620a:	f413 7f00 	tst.w	r3, #512	; 0x200
d004620e:	d102      	bne.n	d0046216 <setvbuf+0xea>
d0046210:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0046212:	f7ff fe8d 	bl	d0045f30 <__retarget_lock_release_recursive>
d0046216:	4628      	mov	r0, r5
d0046218:	b003      	add	sp, #12
d004621a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d004621e:	4b24      	ldr	r3, [pc, #144]	; (d00462b0 <setvbuf+0x184>)
d0046220:	429c      	cmp	r4, r3
d0046222:	d101      	bne.n	d0046228 <setvbuf+0xfc>
d0046224:	68bc      	ldr	r4, [r7, #8]
d0046226:	e793      	b.n	d0046150 <setvbuf+0x24>
d0046228:	4b22      	ldr	r3, [pc, #136]	; (d00462b4 <setvbuf+0x188>)
d004622a:	429c      	cmp	r4, r3
d004622c:	bf08      	it	eq
d004622e:	68fc      	ldreq	r4, [r7, #12]
d0046230:	e78e      	b.n	d0046150 <setvbuf+0x24>
d0046232:	2e00      	cmp	r6, #0
d0046234:	d0cd      	beq.n	d00461d2 <setvbuf+0xa6>
d0046236:	69bb      	ldr	r3, [r7, #24]
d0046238:	b913      	cbnz	r3, d0046240 <setvbuf+0x114>
d004623a:	4638      	mov	r0, r7
d004623c:	f7ff fdd8 	bl	d0045df0 <__sinit>
d0046240:	f1b8 0f01 	cmp.w	r8, #1
d0046244:	bf08      	it	eq
d0046246:	89a3      	ldrheq	r3, [r4, #12]
d0046248:	6026      	str	r6, [r4, #0]
d004624a:	bf04      	itt	eq
d004624c:	f043 0301 	orreq.w	r3, r3, #1
d0046250:	81a3      	strheq	r3, [r4, #12]
d0046252:	89a2      	ldrh	r2, [r4, #12]
d0046254:	f012 0308 	ands.w	r3, r2, #8
d0046258:	e9c4 6504 	strd	r6, r5, [r4, #16]
d004625c:	d01c      	beq.n	d0046298 <setvbuf+0x16c>
d004625e:	07d3      	lsls	r3, r2, #31
d0046260:	bf41      	itttt	mi
d0046262:	2300      	movmi	r3, #0
d0046264:	426d      	negmi	r5, r5
d0046266:	60a3      	strmi	r3, [r4, #8]
d0046268:	61a5      	strmi	r5, [r4, #24]
d004626a:	bf58      	it	pl
d004626c:	60a5      	strpl	r5, [r4, #8]
d004626e:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0046270:	f015 0501 	ands.w	r5, r5, #1
d0046274:	d115      	bne.n	d00462a2 <setvbuf+0x176>
d0046276:	f412 7f00 	tst.w	r2, #512	; 0x200
d004627a:	e7c8      	b.n	d004620e <setvbuf+0xe2>
d004627c:	4648      	mov	r0, r9
d004627e:	f7ff fe7d 	bl	d0045f7c <malloc>
d0046282:	4606      	mov	r6, r0
d0046284:	2800      	cmp	r0, #0
d0046286:	d0ae      	beq.n	d00461e6 <setvbuf+0xba>
d0046288:	464d      	mov	r5, r9
d004628a:	89a3      	ldrh	r3, [r4, #12]
d004628c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0046290:	81a3      	strh	r3, [r4, #12]
d0046292:	e7d0      	b.n	d0046236 <setvbuf+0x10a>
d0046294:	2500      	movs	r5, #0
d0046296:	e7a8      	b.n	d00461ea <setvbuf+0xbe>
d0046298:	60a3      	str	r3, [r4, #8]
d004629a:	e7e8      	b.n	d004626e <setvbuf+0x142>
d004629c:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00462a0:	e7b9      	b.n	d0046216 <setvbuf+0xea>
d00462a2:	2500      	movs	r5, #0
d00462a4:	e7b7      	b.n	d0046216 <setvbuf+0xea>
d00462a6:	bf00      	nop
d00462a8:	d00475d8 	.word	0xd00475d8
d00462ac:	d0046de0 	.word	0xd0046de0
d00462b0:	d0046e00 	.word	0xd0046e00
d00462b4:	d0046dc0 	.word	0xd0046dc0

d00462b8 <__sread>:
d00462b8:	b510      	push	{r4, lr}
d00462ba:	460c      	mov	r4, r1
d00462bc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00462c0:	f000 f87e 	bl	d00463c0 <_read_r>
d00462c4:	2800      	cmp	r0, #0
d00462c6:	bfab      	itete	ge
d00462c8:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d00462ca:	89a3      	ldrhlt	r3, [r4, #12]
d00462cc:	181b      	addge	r3, r3, r0
d00462ce:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d00462d2:	bfac      	ite	ge
d00462d4:	6563      	strge	r3, [r4, #84]	; 0x54
d00462d6:	81a3      	strhlt	r3, [r4, #12]
d00462d8:	bd10      	pop	{r4, pc}

d00462da <__swrite>:
d00462da:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00462de:	461f      	mov	r7, r3
d00462e0:	898b      	ldrh	r3, [r1, #12]
d00462e2:	05db      	lsls	r3, r3, #23
d00462e4:	4605      	mov	r5, r0
d00462e6:	460c      	mov	r4, r1
d00462e8:	4616      	mov	r6, r2
d00462ea:	d505      	bpl.n	d00462f8 <__swrite+0x1e>
d00462ec:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00462f0:	2302      	movs	r3, #2
d00462f2:	2200      	movs	r2, #0
d00462f4:	f000 f846 	bl	d0046384 <_lseek_r>
d00462f8:	89a3      	ldrh	r3, [r4, #12]
d00462fa:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d00462fe:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0046302:	81a3      	strh	r3, [r4, #12]
d0046304:	4632      	mov	r2, r6
d0046306:	463b      	mov	r3, r7
d0046308:	4628      	mov	r0, r5
d004630a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d004630e:	f7f9 bea1 	b.w	d0040054 <_write_r>

d0046312 <__sseek>:
d0046312:	b510      	push	{r4, lr}
d0046314:	460c      	mov	r4, r1
d0046316:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d004631a:	f000 f833 	bl	d0046384 <_lseek_r>
d004631e:	1c43      	adds	r3, r0, #1
d0046320:	89a3      	ldrh	r3, [r4, #12]
d0046322:	bf15      	itete	ne
d0046324:	6560      	strne	r0, [r4, #84]	; 0x54
d0046326:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d004632a:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d004632e:	81a3      	strheq	r3, [r4, #12]
d0046330:	bf18      	it	ne
d0046332:	81a3      	strhne	r3, [r4, #12]
d0046334:	bd10      	pop	{r4, pc}

d0046336 <__sclose>:
d0046336:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d004633a:	f000 b801 	b.w	d0046340 <_close_r>
	...

d0046340 <_close_r>:
d0046340:	b538      	push	{r3, r4, r5, lr}
d0046342:	4d06      	ldr	r5, [pc, #24]	; (d004635c <_close_r+0x1c>)
d0046344:	2300      	movs	r3, #0
d0046346:	4604      	mov	r4, r0
d0046348:	4608      	mov	r0, r1
d004634a:	602b      	str	r3, [r5, #0]
d004634c:	f7f9 febc 	bl	d00400c8 <_close>
d0046350:	1c43      	adds	r3, r0, #1
d0046352:	d102      	bne.n	d004635a <_close_r+0x1a>
d0046354:	682b      	ldr	r3, [r5, #0]
d0046356:	b103      	cbz	r3, d004635a <_close_r+0x1a>
d0046358:	6023      	str	r3, [r4, #0]
d004635a:	bd38      	pop	{r3, r4, r5, pc}
d004635c:	d0132d6c 	.word	0xd0132d6c

d0046360 <_fstat_r>:
d0046360:	b538      	push	{r3, r4, r5, lr}
d0046362:	4d07      	ldr	r5, [pc, #28]	; (d0046380 <_fstat_r+0x20>)
d0046364:	2300      	movs	r3, #0
d0046366:	4604      	mov	r4, r0
d0046368:	4608      	mov	r0, r1
d004636a:	4611      	mov	r1, r2
d004636c:	602b      	str	r3, [r5, #0]
d004636e:	f7f9 feaf 	bl	d00400d0 <_fstat>
d0046372:	1c43      	adds	r3, r0, #1
d0046374:	d102      	bne.n	d004637c <_fstat_r+0x1c>
d0046376:	682b      	ldr	r3, [r5, #0]
d0046378:	b103      	cbz	r3, d004637c <_fstat_r+0x1c>
d004637a:	6023      	str	r3, [r4, #0]
d004637c:	bd38      	pop	{r3, r4, r5, pc}
d004637e:	bf00      	nop
d0046380:	d0132d6c 	.word	0xd0132d6c

d0046384 <_lseek_r>:
d0046384:	b538      	push	{r3, r4, r5, lr}
d0046386:	4d07      	ldr	r5, [pc, #28]	; (d00463a4 <_lseek_r+0x20>)
d0046388:	4604      	mov	r4, r0
d004638a:	4608      	mov	r0, r1
d004638c:	4611      	mov	r1, r2
d004638e:	2200      	movs	r2, #0
d0046390:	602a      	str	r2, [r5, #0]
d0046392:	461a      	mov	r2, r3
d0046394:	f7f9 fea2 	bl	d00400dc <_lseek>
d0046398:	1c43      	adds	r3, r0, #1
d004639a:	d102      	bne.n	d00463a2 <_lseek_r+0x1e>
d004639c:	682b      	ldr	r3, [r5, #0]
d004639e:	b103      	cbz	r3, d00463a2 <_lseek_r+0x1e>
d00463a0:	6023      	str	r3, [r4, #0]
d00463a2:	bd38      	pop	{r3, r4, r5, pc}
d00463a4:	d0132d6c 	.word	0xd0132d6c

d00463a8 <__malloc_lock>:
d00463a8:	4801      	ldr	r0, [pc, #4]	; (d00463b0 <__malloc_lock+0x8>)
d00463aa:	f7ff bdc0 	b.w	d0045f2e <__retarget_lock_acquire_recursive>
d00463ae:	bf00      	nop
d00463b0:	d0132d64 	.word	0xd0132d64

d00463b4 <__malloc_unlock>:
d00463b4:	4801      	ldr	r0, [pc, #4]	; (d00463bc <__malloc_unlock+0x8>)
d00463b6:	f7ff bdbb 	b.w	d0045f30 <__retarget_lock_release_recursive>
d00463ba:	bf00      	nop
d00463bc:	d0132d64 	.word	0xd0132d64

d00463c0 <_read_r>:
d00463c0:	b538      	push	{r3, r4, r5, lr}
d00463c2:	4d07      	ldr	r5, [pc, #28]	; (d00463e0 <_read_r+0x20>)
d00463c4:	4604      	mov	r4, r0
d00463c6:	4608      	mov	r0, r1
d00463c8:	4611      	mov	r1, r2
d00463ca:	2200      	movs	r2, #0
d00463cc:	602a      	str	r2, [r5, #0]
d00463ce:	461a      	mov	r2, r3
d00463d0:	f7f9 fe70 	bl	d00400b4 <_read>
d00463d4:	1c43      	adds	r3, r0, #1
d00463d6:	d102      	bne.n	d00463de <_read_r+0x1e>
d00463d8:	682b      	ldr	r3, [r5, #0]
d00463da:	b103      	cbz	r3, d00463de <_read_r+0x1e>
d00463dc:	6023      	str	r3, [r4, #0]
d00463de:	bd38      	pop	{r3, r4, r5, pc}
d00463e0:	d0132d6c 	.word	0xd0132d6c

d00463e4 <sinf_poly>:
d00463e4:	07cb      	lsls	r3, r1, #31
d00463e6:	d412      	bmi.n	d004640e <sinf_poly+0x2a>
d00463e8:	ee21 6b00 	vmul.f64	d6, d1, d0
d00463ec:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d00463f0:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d00463f4:	eea5 7b01 	vfma.f64	d7, d5, d1
d00463f8:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d00463fc:	ee21 1b06 	vmul.f64	d1, d1, d6
d0046400:	eea5 0b06 	vfma.f64	d0, d5, d6
d0046404:	eea7 0b01 	vfma.f64	d0, d7, d1
d0046408:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d004640c:	4770      	bx	lr
d004640e:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d0046412:	ee21 6b01 	vmul.f64	d6, d1, d1
d0046416:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d004641a:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d004641e:	eea1 7b05 	vfma.f64	d7, d1, d5
d0046422:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d0046426:	eea1 0b05 	vfma.f64	d0, d1, d5
d004642a:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d004642e:	ee21 1b06 	vmul.f64	d1, d1, d6
d0046432:	eea6 0b05 	vfma.f64	d0, d6, d5
d0046436:	e7e5      	b.n	d0046404 <sinf_poly+0x20>

d0046438 <cosf>:
d0046438:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d004643a:	ee10 4a10 	vmov	r4, s0
d004643e:	f3c4 530a 	ubfx	r3, r4, #20, #11
d0046442:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d0046446:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d004644a:	d20c      	bcs.n	d0046466 <cosf+0x2e>
d004644c:	ee26 1b06 	vmul.f64	d1, d6, d6
d0046450:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d0046454:	d378      	bcc.n	d0046548 <cosf+0x110>
d0046456:	eeb0 0b46 	vmov.f64	d0, d6
d004645a:	483f      	ldr	r0, [pc, #252]	; (d0046558 <cosf+0x120>)
d004645c:	2101      	movs	r1, #1
d004645e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0046462:	f7ff bfbf 	b.w	d00463e4 <sinf_poly>
d0046466:	f240 422e 	movw	r2, #1070	; 0x42e
d004646a:	4293      	cmp	r3, r2
d004646c:	d826      	bhi.n	d00464bc <cosf+0x84>
d004646e:	4b3a      	ldr	r3, [pc, #232]	; (d0046558 <cosf+0x120>)
d0046470:	ed93 7b08 	vldr	d7, [r3, #32]
d0046474:	ee26 7b07 	vmul.f64	d7, d6, d7
d0046478:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d004647c:	f103 0070 	add.w	r0, r3, #112	; 0x70
d0046480:	ee17 1a90 	vmov	r1, s15
d0046484:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d0046488:	1609      	asrs	r1, r1, #24
d004648a:	ee07 1a90 	vmov	s15, r1
d004648e:	f001 0203 	and.w	r2, r1, #3
d0046492:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d0046496:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d004649a:	ed92 0b00 	vldr	d0, [r2]
d004649e:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d00464a2:	f011 0f02 	tst.w	r1, #2
d00464a6:	eea5 6b47 	vfms.f64	d6, d5, d7
d00464aa:	f081 0101 	eor.w	r1, r1, #1
d00464ae:	bf08      	it	eq
d00464b0:	4618      	moveq	r0, r3
d00464b2:	ee26 1b06 	vmul.f64	d1, d6, d6
d00464b6:	ee20 0b06 	vmul.f64	d0, d0, d6
d00464ba:	e7d0      	b.n	d004645e <cosf+0x26>
d00464bc:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d00464c0:	d23e      	bcs.n	d0046540 <cosf+0x108>
d00464c2:	4b26      	ldr	r3, [pc, #152]	; (d004655c <cosf+0x124>)
d00464c4:	f3c4 6283 	ubfx	r2, r4, #26, #4
d00464c8:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d00464cc:	f3c4 0116 	ubfx	r1, r4, #0, #23
d00464d0:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d00464d4:	6a06      	ldr	r6, [r0, #32]
d00464d6:	6900      	ldr	r0, [r0, #16]
d00464d8:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d00464dc:	40a9      	lsls	r1, r5
d00464de:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d00464e2:	fba1 6706 	umull	r6, r7, r1, r6
d00464e6:	fb05 f301 	mul.w	r3, r5, r1
d00464ea:	463a      	mov	r2, r7
d00464ec:	fbe0 2301 	umlal	r2, r3, r0, r1
d00464f0:	1c11      	adds	r1, r2, #0
d00464f2:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d00464f6:	2000      	movs	r0, #0
d00464f8:	1a10      	subs	r0, r2, r0
d00464fa:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d00464fe:	eb63 0101 	sbc.w	r1, r3, r1
d0046502:	f000 fbab 	bl	d0046c5c <__aeabi_l2d>
d0046506:	0fb5      	lsrs	r5, r6, #30
d0046508:	4b13      	ldr	r3, [pc, #76]	; (d0046558 <cosf+0x120>)
d004650a:	eb05 74d4 	add.w	r4, r5, r4, lsr #31
d004650e:	ed9f 0b10 	vldr	d0, [pc, #64]	; d0046550 <cosf+0x118>
d0046512:	ec41 0b17 	vmov	d7, r0, r1
d0046516:	f004 0203 	and.w	r2, r4, #3
d004651a:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d004651e:	ee27 0b00 	vmul.f64	d0, d7, d0
d0046522:	ed92 7b00 	vldr	d7, [r2]
d0046526:	ee20 1b00 	vmul.f64	d1, d0, d0
d004652a:	f014 0f02 	tst.w	r4, #2
d004652e:	f103 0070 	add.w	r0, r3, #112	; 0x70
d0046532:	f085 0101 	eor.w	r1, r5, #1
d0046536:	bf08      	it	eq
d0046538:	4618      	moveq	r0, r3
d004653a:	ee27 0b00 	vmul.f64	d0, d7, d0
d004653e:	e78e      	b.n	d004645e <cosf+0x26>
d0046540:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0046544:	f000 b844 	b.w	d00465d0 <__math_invalidf>
d0046548:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d004654c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d004654e:	bf00      	nop
d0046550:	54442d18 	.word	0x54442d18
d0046554:	3c1921fb 	.word	0x3c1921fb
d0046558:	d00470f0 	.word	0xd00470f0
d004655c:	d0047090 	.word	0xd0047090

d0046560 <with_errnof>:
d0046560:	b513      	push	{r0, r1, r4, lr}
d0046562:	4604      	mov	r4, r0
d0046564:	ed8d 0a01 	vstr	s0, [sp, #4]
d0046568:	f7ff faae 	bl	d0045ac8 <__errno>
d004656c:	ed9d 0a01 	vldr	s0, [sp, #4]
d0046570:	6004      	str	r4, [r0, #0]
d0046572:	b002      	add	sp, #8
d0046574:	bd10      	pop	{r4, pc}

d0046576 <xflowf>:
d0046576:	b130      	cbz	r0, d0046586 <xflowf+0x10>
d0046578:	eef1 7a40 	vneg.f32	s15, s0
d004657c:	ee27 0a80 	vmul.f32	s0, s15, s0
d0046580:	2022      	movs	r0, #34	; 0x22
d0046582:	f7ff bfed 	b.w	d0046560 <with_errnof>
d0046586:	eef0 7a40 	vmov.f32	s15, s0
d004658a:	e7f7      	b.n	d004657c <xflowf+0x6>

d004658c <__math_uflowf>:
d004658c:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0046594 <__math_uflowf+0x8>
d0046590:	f7ff bff1 	b.w	d0046576 <xflowf>
d0046594:	10000000 	.word	0x10000000

d0046598 <__math_may_uflowf>:
d0046598:	ed9f 0a01 	vldr	s0, [pc, #4]	; d00465a0 <__math_may_uflowf+0x8>
d004659c:	f7ff bfeb 	b.w	d0046576 <xflowf>
d00465a0:	1a200000 	.word	0x1a200000

d00465a4 <__math_oflowf>:
d00465a4:	ed9f 0a01 	vldr	s0, [pc, #4]	; d00465ac <__math_oflowf+0x8>
d00465a8:	f7ff bfe5 	b.w	d0046576 <xflowf>
d00465ac:	70000000 	.word	0x70000000

d00465b0 <__math_divzerof>:
d00465b0:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d00465b4:	eeff 7a00 	vmov.f32	s15, #240	; 0xbf800000 -1.0
d00465b8:	2800      	cmp	r0, #0
d00465ba:	fe40 7a27 	vseleq.f32	s15, s0, s15
d00465be:	ed9f 0a03 	vldr	s0, [pc, #12]	; d00465cc <__math_divzerof+0x1c>
d00465c2:	2022      	movs	r0, #34	; 0x22
d00465c4:	ee87 0a80 	vdiv.f32	s0, s15, s0
d00465c8:	f7ff bfca 	b.w	d0046560 <with_errnof>
d00465cc:	00000000 	.word	0x00000000

d00465d0 <__math_invalidf>:
d00465d0:	eef0 7a40 	vmov.f32	s15, s0
d00465d4:	ee30 7a40 	vsub.f32	s14, s0, s0
d00465d8:	eef4 7a67 	vcmp.f32	s15, s15
d00465dc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00465e0:	ee87 0a07 	vdiv.f32	s0, s14, s14
d00465e4:	d602      	bvs.n	d00465ec <__math_invalidf+0x1c>
d00465e6:	2021      	movs	r0, #33	; 0x21
d00465e8:	f7ff bfba 	b.w	d0046560 <with_errnof>
d00465ec:	4770      	bx	lr
	...

d00465f0 <expf>:
d00465f0:	ee10 2a10 	vmov	r2, s0
d00465f4:	b470      	push	{r4, r5, r6}
d00465f6:	f3c2 530a 	ubfx	r3, r2, #20, #11
d00465fa:	f240 442a 	movw	r4, #1066	; 0x42a
d00465fe:	42a3      	cmp	r3, r4
d0046600:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d0046604:	d92a      	bls.n	d004665c <expf+0x6c>
d0046606:	f512 0f00 	cmn.w	r2, #8388608	; 0x800000
d004660a:	d059      	beq.n	d00466c0 <expf+0xd0>
d004660c:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0046610:	d303      	bcc.n	d004661a <expf+0x2a>
d0046612:	ee30 0a00 	vadd.f32	s0, s0, s0
d0046616:	bc70      	pop	{r4, r5, r6}
d0046618:	4770      	bx	lr
d004661a:	eddf 7a2b 	vldr	s15, [pc, #172]	; d00466c8 <expf+0xd8>
d004661e:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0046622:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046626:	dd03      	ble.n	d0046630 <expf+0x40>
d0046628:	bc70      	pop	{r4, r5, r6}
d004662a:	2000      	movs	r0, #0
d004662c:	f7ff bfba 	b.w	d00465a4 <__math_oflowf>
d0046630:	eddf 7a26 	vldr	s15, [pc, #152]	; d00466cc <expf+0xdc>
d0046634:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0046638:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004663c:	d503      	bpl.n	d0046646 <expf+0x56>
d004663e:	bc70      	pop	{r4, r5, r6}
d0046640:	2000      	movs	r0, #0
d0046642:	f7ff bfa3 	b.w	d004658c <__math_uflowf>
d0046646:	eddf 7a22 	vldr	s15, [pc, #136]	; d00466d0 <expf+0xe0>
d004664a:	eeb4 0ae7 	vcmpe.f32	s0, s15
d004664e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046652:	d503      	bpl.n	d004665c <expf+0x6c>
d0046654:	bc70      	pop	{r4, r5, r6}
d0046656:	2000      	movs	r0, #0
d0046658:	f7ff bf9e 	b.w	d0046598 <__math_may_uflowf>
d004665c:	4b1d      	ldr	r3, [pc, #116]	; (d00466d4 <expf+0xe4>)
d004665e:	eeb7 0b00 	vmov.f64	d0, #112	; 0x3f800000  1.0
d0046662:	ed93 5b4a 	vldr	d5, [r3, #296]	; 0x128
d0046666:	ed93 4b48 	vldr	d4, [r3, #288]	; 0x120
d004666a:	eeb0 7b44 	vmov.f64	d7, d4
d004666e:	eea5 7b06 	vfma.f64	d7, d5, d6
d0046672:	ee17 5a10 	vmov	r5, s14
d0046676:	ee37 7b44 	vsub.f64	d7, d7, d4
d004667a:	f005 021f 	and.w	r2, r5, #31
d004667e:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d0046682:	e9d2 4600 	ldrd	r4, r6, [r2]
d0046686:	ee95 7b06 	vfnms.f64	d7, d5, d6
d004668a:	ed93 4b50 	vldr	d4, [r3, #320]	; 0x140
d004668e:	ed93 5b4c 	vldr	d5, [r3, #304]	; 0x130
d0046692:	eea4 0b07 	vfma.f64	d0, d4, d7
d0046696:	ed93 6b4e 	vldr	d6, [r3, #312]	; 0x138
d004669a:	2300      	movs	r3, #0
d004669c:	1918      	adds	r0, r3, r4
d004669e:	ea4f 32c5 	mov.w	r2, r5, lsl #15
d00466a2:	eb42 0106 	adc.w	r1, r2, r6
d00466a6:	eea5 6b07 	vfma.f64	d6, d5, d7
d00466aa:	ee27 5b07 	vmul.f64	d5, d7, d7
d00466ae:	ec41 0b17 	vmov	d7, r0, r1
d00466b2:	eea6 0b05 	vfma.f64	d0, d6, d5
d00466b6:	ee20 0b07 	vmul.f64	d0, d0, d7
d00466ba:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d00466be:	e7aa      	b.n	d0046616 <expf+0x26>
d00466c0:	ed9f 0a05 	vldr	s0, [pc, #20]	; d00466d8 <expf+0xe8>
d00466c4:	e7a7      	b.n	d0046616 <expf+0x26>
d00466c6:	bf00      	nop
d00466c8:	42b17217 	.word	0x42b17217
d00466cc:	c2cff1b4 	.word	0xc2cff1b4
d00466d0:	c2ce8ecf 	.word	0xc2ce8ecf
d00466d4:	d0046e28 	.word	0xd0046e28
d00466d8:	00000000 	.word	0x00000000

d00466dc <logf>:
d00466dc:	ee10 3a10 	vmov	r3, s0
d00466e0:	f1b3 5f7e 	cmp.w	r3, #1065353216	; 0x3f800000
d00466e4:	b410      	push	{r4}
d00466e6:	d055      	beq.n	d0046794 <logf+0xb8>
d00466e8:	f5a3 0200 	sub.w	r2, r3, #8388608	; 0x800000
d00466ec:	f1b2 4ffe 	cmp.w	r2, #2130706432	; 0x7f000000
d00466f0:	d31a      	bcc.n	d0046728 <logf+0x4c>
d00466f2:	005a      	lsls	r2, r3, #1
d00466f4:	d104      	bne.n	d0046700 <logf+0x24>
d00466f6:	f85d 4b04 	ldr.w	r4, [sp], #4
d00466fa:	2001      	movs	r0, #1
d00466fc:	f7ff bf58 	b.w	d00465b0 <__math_divzerof>
d0046700:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0046704:	d043      	beq.n	d004678e <logf+0xb2>
d0046706:	2b00      	cmp	r3, #0
d0046708:	db02      	blt.n	d0046710 <logf+0x34>
d004670a:	f1b2 4f7f 	cmp.w	r2, #4278190080	; 0xff000000
d004670e:	d303      	bcc.n	d0046718 <logf+0x3c>
d0046710:	f85d 4b04 	ldr.w	r4, [sp], #4
d0046714:	f7ff bf5c 	b.w	d00465d0 <__math_invalidf>
d0046718:	eddf 7a20 	vldr	s15, [pc, #128]	; d004679c <logf+0xc0>
d004671c:	ee20 0a27 	vmul.f32	s0, s0, s15
d0046720:	ee10 3a10 	vmov	r3, s0
d0046724:	f1a3 6338 	sub.w	r3, r3, #192937984	; 0xb800000
d0046728:	f103 4240 	add.w	r2, r3, #3221225472	; 0xc0000000
d004672c:	491c      	ldr	r1, [pc, #112]	; (d00467a0 <logf+0xc4>)
d004672e:	eebf 0b00 	vmov.f64	d0, #240	; 0xbf800000 -1.0
d0046732:	f502 024d 	add.w	r2, r2, #13434880	; 0xcd0000
d0046736:	f3c2 40c3 	ubfx	r0, r2, #19, #4
d004673a:	0dd4      	lsrs	r4, r2, #23
d004673c:	eb01 1000 	add.w	r0, r1, r0, lsl #4
d0046740:	05e4      	lsls	r4, r4, #23
d0046742:	ed90 6b00 	vldr	d6, [r0]
d0046746:	1b1b      	subs	r3, r3, r4
d0046748:	ee07 3a90 	vmov	s15, r3
d004674c:	ed91 5b40 	vldr	d5, [r1, #256]	; 0x100
d0046750:	eeb7 7ae7 	vcvt.f64.f32	d7, s15
d0046754:	15d2      	asrs	r2, r2, #23
d0046756:	eea6 0b07 	vfma.f64	d0, d6, d7
d004675a:	ed90 6b02 	vldr	d6, [r0, #8]
d004675e:	ee07 2a90 	vmov	s15, r2
d0046762:	ed91 4b44 	vldr	d4, [r1, #272]	; 0x110
d0046766:	eeb8 7be7 	vcvt.f64.s32	d7, s15
d004676a:	eea7 6b05 	vfma.f64	d6, d7, d5
d004676e:	ed91 7b46 	vldr	d7, [r1, #280]	; 0x118
d0046772:	ee20 5b00 	vmul.f64	d5, d0, d0
d0046776:	eea4 7b00 	vfma.f64	d7, d4, d0
d004677a:	ed91 4b42 	vldr	d4, [r1, #264]	; 0x108
d004677e:	ee30 0b06 	vadd.f64	d0, d0, d6
d0046782:	eea4 7b05 	vfma.f64	d7, d4, d5
d0046786:	eea5 0b07 	vfma.f64	d0, d5, d7
d004678a:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d004678e:	f85d 4b04 	ldr.w	r4, [sp], #4
d0046792:	4770      	bx	lr
d0046794:	ed9f 0a03 	vldr	s0, [pc, #12]	; d00467a4 <logf+0xc8>
d0046798:	e7f9      	b.n	d004678e <logf+0xb2>
d004679a:	bf00      	nop
d004679c:	4b000000 	.word	0x4b000000
d00467a0:	d0046f70 	.word	0xd0046f70
d00467a4:	00000000 	.word	0x00000000

d00467a8 <sinf_poly>:
d00467a8:	07cb      	lsls	r3, r1, #31
d00467aa:	d412      	bmi.n	d00467d2 <sinf_poly+0x2a>
d00467ac:	ee21 6b00 	vmul.f64	d6, d1, d0
d00467b0:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d00467b4:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d00467b8:	eea5 7b01 	vfma.f64	d7, d5, d1
d00467bc:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d00467c0:	ee21 1b06 	vmul.f64	d1, d1, d6
d00467c4:	eea5 0b06 	vfma.f64	d0, d5, d6
d00467c8:	eea7 0b01 	vfma.f64	d0, d7, d1
d00467cc:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d00467d0:	4770      	bx	lr
d00467d2:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d00467d6:	ee21 6b01 	vmul.f64	d6, d1, d1
d00467da:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d00467de:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d00467e2:	eea1 7b05 	vfma.f64	d7, d1, d5
d00467e6:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d00467ea:	eea1 0b05 	vfma.f64	d0, d1, d5
d00467ee:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d00467f2:	ee21 1b06 	vmul.f64	d1, d1, d6
d00467f6:	eea6 0b05 	vfma.f64	d0, d6, d5
d00467fa:	e7e5      	b.n	d00467c8 <sinf_poly+0x20>
d00467fc:	0000      	movs	r0, r0
	...

d0046800 <sinf>:
d0046800:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
d0046802:	ee10 4a10 	vmov	r4, s0
d0046806:	f3c4 530a 	ubfx	r3, r4, #20, #11
d004680a:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d004680e:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d0046812:	eef0 7a40 	vmov.f32	s15, s0
d0046816:	ea4f 5214 	mov.w	r2, r4, lsr #20
d004681a:	d218      	bcs.n	d004684e <sinf+0x4e>
d004681c:	ee26 1b06 	vmul.f64	d1, d6, d6
d0046820:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d0046824:	d20a      	bcs.n	d004683c <sinf+0x3c>
d0046826:	f412 6fff 	tst.w	r2, #2040	; 0x7f8
d004682a:	d103      	bne.n	d0046834 <sinf+0x34>
d004682c:	eeb7 1bc1 	vcvt.f32.f64	s2, d1
d0046830:	ed8d 1a01 	vstr	s2, [sp, #4]
d0046834:	eeb0 0a67 	vmov.f32	s0, s15
d0046838:	b003      	add	sp, #12
d004683a:	bdf0      	pop	{r4, r5, r6, r7, pc}
d004683c:	483e      	ldr	r0, [pc, #248]	; (d0046938 <sinf+0x138>)
d004683e:	eeb0 0b46 	vmov.f64	d0, d6
d0046842:	2100      	movs	r1, #0
d0046844:	b003      	add	sp, #12
d0046846:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d004684a:	f7ff bfad 	b.w	d00467a8 <sinf_poly>
d004684e:	f240 422e 	movw	r2, #1070	; 0x42e
d0046852:	4293      	cmp	r3, r2
d0046854:	d824      	bhi.n	d00468a0 <sinf+0xa0>
d0046856:	4b38      	ldr	r3, [pc, #224]	; (d0046938 <sinf+0x138>)
d0046858:	ed93 7b08 	vldr	d7, [r3, #32]
d004685c:	ee26 7b07 	vmul.f64	d7, d6, d7
d0046860:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d0046864:	f103 0070 	add.w	r0, r3, #112	; 0x70
d0046868:	ee17 1a90 	vmov	r1, s15
d004686c:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d0046870:	1609      	asrs	r1, r1, #24
d0046872:	ee07 1a90 	vmov	s15, r1
d0046876:	f001 0203 	and.w	r2, r1, #3
d004687a:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d004687e:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d0046882:	ed92 0b00 	vldr	d0, [r2]
d0046886:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d004688a:	f011 0f02 	tst.w	r1, #2
d004688e:	eea5 6b47 	vfms.f64	d6, d5, d7
d0046892:	bf08      	it	eq
d0046894:	4618      	moveq	r0, r3
d0046896:	ee26 1b06 	vmul.f64	d1, d6, d6
d004689a:	ee20 0b06 	vmul.f64	d0, d0, d6
d004689e:	e7d1      	b.n	d0046844 <sinf+0x44>
d00468a0:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d00468a4:	d23d      	bcs.n	d0046922 <sinf+0x122>
d00468a6:	4b25      	ldr	r3, [pc, #148]	; (d004693c <sinf+0x13c>)
d00468a8:	f3c4 6283 	ubfx	r2, r4, #26, #4
d00468ac:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d00468b0:	f3c4 0116 	ubfx	r1, r4, #0, #23
d00468b4:	6a06      	ldr	r6, [r0, #32]
d00468b6:	6900      	ldr	r0, [r0, #16]
d00468b8:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d00468bc:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d00468c0:	40a9      	lsls	r1, r5
d00468c2:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d00468c6:	fba1 6706 	umull	r6, r7, r1, r6
d00468ca:	fb05 f301 	mul.w	r3, r5, r1
d00468ce:	463a      	mov	r2, r7
d00468d0:	fbe0 2301 	umlal	r2, r3, r0, r1
d00468d4:	1c11      	adds	r1, r2, #0
d00468d6:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d00468da:	2000      	movs	r0, #0
d00468dc:	1a10      	subs	r0, r2, r0
d00468de:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d00468e2:	eb63 0101 	sbc.w	r1, r3, r1
d00468e6:	f000 f9b9 	bl	d0046c5c <__aeabi_l2d>
d00468ea:	0fb5      	lsrs	r5, r6, #30
d00468ec:	4a12      	ldr	r2, [pc, #72]	; (d0046938 <sinf+0x138>)
d00468ee:	eb05 73d4 	add.w	r3, r5, r4, lsr #31
d00468f2:	ed9f 0b0f 	vldr	d0, [pc, #60]	; d0046930 <sinf+0x130>
d00468f6:	ec41 0b17 	vmov	d7, r0, r1
d00468fa:	f003 0103 	and.w	r1, r3, #3
d00468fe:	eb02 01c1 	add.w	r1, r2, r1, lsl #3
d0046902:	ee27 0b00 	vmul.f64	d0, d7, d0
d0046906:	ed91 7b00 	vldr	d7, [r1]
d004690a:	ee20 1b00 	vmul.f64	d1, d0, d0
d004690e:	f013 0f02 	tst.w	r3, #2
d0046912:	f102 0070 	add.w	r0, r2, #112	; 0x70
d0046916:	4629      	mov	r1, r5
d0046918:	bf08      	it	eq
d004691a:	4610      	moveq	r0, r2
d004691c:	ee27 0b00 	vmul.f64	d0, d7, d0
d0046920:	e790      	b.n	d0046844 <sinf+0x44>
d0046922:	b003      	add	sp, #12
d0046924:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0046928:	f7ff be52 	b.w	d00465d0 <__math_invalidf>
d004692c:	f3af 8000 	nop.w
d0046930:	54442d18 	.word	0x54442d18
d0046934:	3c1921fb 	.word	0x3c1921fb
d0046938:	d00470f0 	.word	0xd00470f0
d004693c:	d0047090 	.word	0xd0047090

d0046940 <__aeabi_drsub>:
d0046940:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
d0046944:	e002      	b.n	d004694c <__adddf3>
d0046946:	bf00      	nop

d0046948 <__aeabi_dsub>:
d0046948:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

d004694c <__adddf3>:
d004694c:	b530      	push	{r4, r5, lr}
d004694e:	ea4f 0441 	mov.w	r4, r1, lsl #1
d0046952:	ea4f 0543 	mov.w	r5, r3, lsl #1
d0046956:	ea94 0f05 	teq	r4, r5
d004695a:	bf08      	it	eq
d004695c:	ea90 0f02 	teqeq	r0, r2
d0046960:	bf1f      	itttt	ne
d0046962:	ea54 0c00 	orrsne.w	ip, r4, r0
d0046966:	ea55 0c02 	orrsne.w	ip, r5, r2
d004696a:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
d004696e:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d0046972:	f000 80e2 	beq.w	d0046b3a <__adddf3+0x1ee>
d0046976:	ea4f 5454 	mov.w	r4, r4, lsr #21
d004697a:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
d004697e:	bfb8      	it	lt
d0046980:	426d      	neglt	r5, r5
d0046982:	dd0c      	ble.n	d004699e <__adddf3+0x52>
d0046984:	442c      	add	r4, r5
d0046986:	ea80 0202 	eor.w	r2, r0, r2
d004698a:	ea81 0303 	eor.w	r3, r1, r3
d004698e:	ea82 0000 	eor.w	r0, r2, r0
d0046992:	ea83 0101 	eor.w	r1, r3, r1
d0046996:	ea80 0202 	eor.w	r2, r0, r2
d004699a:	ea81 0303 	eor.w	r3, r1, r3
d004699e:	2d36      	cmp	r5, #54	; 0x36
d00469a0:	bf88      	it	hi
d00469a2:	bd30      	pophi	{r4, r5, pc}
d00469a4:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
d00469a8:	ea4f 3101 	mov.w	r1, r1, lsl #12
d00469ac:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
d00469b0:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
d00469b4:	d002      	beq.n	d00469bc <__adddf3+0x70>
d00469b6:	4240      	negs	r0, r0
d00469b8:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d00469bc:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
d00469c0:	ea4f 3303 	mov.w	r3, r3, lsl #12
d00469c4:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
d00469c8:	d002      	beq.n	d00469d0 <__adddf3+0x84>
d00469ca:	4252      	negs	r2, r2
d00469cc:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
d00469d0:	ea94 0f05 	teq	r4, r5
d00469d4:	f000 80a7 	beq.w	d0046b26 <__adddf3+0x1da>
d00469d8:	f1a4 0401 	sub.w	r4, r4, #1
d00469dc:	f1d5 0e20 	rsbs	lr, r5, #32
d00469e0:	db0d      	blt.n	d00469fe <__adddf3+0xb2>
d00469e2:	fa02 fc0e 	lsl.w	ip, r2, lr
d00469e6:	fa22 f205 	lsr.w	r2, r2, r5
d00469ea:	1880      	adds	r0, r0, r2
d00469ec:	f141 0100 	adc.w	r1, r1, #0
d00469f0:	fa03 f20e 	lsl.w	r2, r3, lr
d00469f4:	1880      	adds	r0, r0, r2
d00469f6:	fa43 f305 	asr.w	r3, r3, r5
d00469fa:	4159      	adcs	r1, r3
d00469fc:	e00e      	b.n	d0046a1c <__adddf3+0xd0>
d00469fe:	f1a5 0520 	sub.w	r5, r5, #32
d0046a02:	f10e 0e20 	add.w	lr, lr, #32
d0046a06:	2a01      	cmp	r2, #1
d0046a08:	fa03 fc0e 	lsl.w	ip, r3, lr
d0046a0c:	bf28      	it	cs
d0046a0e:	f04c 0c02 	orrcs.w	ip, ip, #2
d0046a12:	fa43 f305 	asr.w	r3, r3, r5
d0046a16:	18c0      	adds	r0, r0, r3
d0046a18:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
d0046a1c:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d0046a20:	d507      	bpl.n	d0046a32 <__adddf3+0xe6>
d0046a22:	f04f 0e00 	mov.w	lr, #0
d0046a26:	f1dc 0c00 	rsbs	ip, ip, #0
d0046a2a:	eb7e 0000 	sbcs.w	r0, lr, r0
d0046a2e:	eb6e 0101 	sbc.w	r1, lr, r1
d0046a32:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
d0046a36:	d31b      	bcc.n	d0046a70 <__adddf3+0x124>
d0046a38:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
d0046a3c:	d30c      	bcc.n	d0046a58 <__adddf3+0x10c>
d0046a3e:	0849      	lsrs	r1, r1, #1
d0046a40:	ea5f 0030 	movs.w	r0, r0, rrx
d0046a44:	ea4f 0c3c 	mov.w	ip, ip, rrx
d0046a48:	f104 0401 	add.w	r4, r4, #1
d0046a4c:	ea4f 5244 	mov.w	r2, r4, lsl #21
d0046a50:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
d0046a54:	f080 809a 	bcs.w	d0046b8c <__adddf3+0x240>
d0046a58:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
d0046a5c:	bf08      	it	eq
d0046a5e:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
d0046a62:	f150 0000 	adcs.w	r0, r0, #0
d0046a66:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
d0046a6a:	ea41 0105 	orr.w	r1, r1, r5
d0046a6e:	bd30      	pop	{r4, r5, pc}
d0046a70:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
d0046a74:	4140      	adcs	r0, r0
d0046a76:	eb41 0101 	adc.w	r1, r1, r1
d0046a7a:	3c01      	subs	r4, #1
d0046a7c:	bf28      	it	cs
d0046a7e:	f5b1 1f80 	cmpcs.w	r1, #1048576	; 0x100000
d0046a82:	d2e9      	bcs.n	d0046a58 <__adddf3+0x10c>
d0046a84:	f091 0f00 	teq	r1, #0
d0046a88:	bf04      	itt	eq
d0046a8a:	4601      	moveq	r1, r0
d0046a8c:	2000      	moveq	r0, #0
d0046a8e:	fab1 f381 	clz	r3, r1
d0046a92:	bf08      	it	eq
d0046a94:	3320      	addeq	r3, #32
d0046a96:	f1a3 030b 	sub.w	r3, r3, #11
d0046a9a:	f1b3 0220 	subs.w	r2, r3, #32
d0046a9e:	da0c      	bge.n	d0046aba <__adddf3+0x16e>
d0046aa0:	320c      	adds	r2, #12
d0046aa2:	dd08      	ble.n	d0046ab6 <__adddf3+0x16a>
d0046aa4:	f102 0c14 	add.w	ip, r2, #20
d0046aa8:	f1c2 020c 	rsb	r2, r2, #12
d0046aac:	fa01 f00c 	lsl.w	r0, r1, ip
d0046ab0:	fa21 f102 	lsr.w	r1, r1, r2
d0046ab4:	e00c      	b.n	d0046ad0 <__adddf3+0x184>
d0046ab6:	f102 0214 	add.w	r2, r2, #20
d0046aba:	bfd8      	it	le
d0046abc:	f1c2 0c20 	rsble	ip, r2, #32
d0046ac0:	fa01 f102 	lsl.w	r1, r1, r2
d0046ac4:	fa20 fc0c 	lsr.w	ip, r0, ip
d0046ac8:	bfdc      	itt	le
d0046aca:	ea41 010c 	orrle.w	r1, r1, ip
d0046ace:	4090      	lslle	r0, r2
d0046ad0:	1ae4      	subs	r4, r4, r3
d0046ad2:	bfa2      	ittt	ge
d0046ad4:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
d0046ad8:	4329      	orrge	r1, r5
d0046ada:	bd30      	popge	{r4, r5, pc}
d0046adc:	ea6f 0404 	mvn.w	r4, r4
d0046ae0:	3c1f      	subs	r4, #31
d0046ae2:	da1c      	bge.n	d0046b1e <__adddf3+0x1d2>
d0046ae4:	340c      	adds	r4, #12
d0046ae6:	dc0e      	bgt.n	d0046b06 <__adddf3+0x1ba>
d0046ae8:	f104 0414 	add.w	r4, r4, #20
d0046aec:	f1c4 0220 	rsb	r2, r4, #32
d0046af0:	fa20 f004 	lsr.w	r0, r0, r4
d0046af4:	fa01 f302 	lsl.w	r3, r1, r2
d0046af8:	ea40 0003 	orr.w	r0, r0, r3
d0046afc:	fa21 f304 	lsr.w	r3, r1, r4
d0046b00:	ea45 0103 	orr.w	r1, r5, r3
d0046b04:	bd30      	pop	{r4, r5, pc}
d0046b06:	f1c4 040c 	rsb	r4, r4, #12
d0046b0a:	f1c4 0220 	rsb	r2, r4, #32
d0046b0e:	fa20 f002 	lsr.w	r0, r0, r2
d0046b12:	fa01 f304 	lsl.w	r3, r1, r4
d0046b16:	ea40 0003 	orr.w	r0, r0, r3
d0046b1a:	4629      	mov	r1, r5
d0046b1c:	bd30      	pop	{r4, r5, pc}
d0046b1e:	fa21 f004 	lsr.w	r0, r1, r4
d0046b22:	4629      	mov	r1, r5
d0046b24:	bd30      	pop	{r4, r5, pc}
d0046b26:	f094 0f00 	teq	r4, #0
d0046b2a:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
d0046b2e:	bf06      	itte	eq
d0046b30:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
d0046b34:	3401      	addeq	r4, #1
d0046b36:	3d01      	subne	r5, #1
d0046b38:	e74e      	b.n	d00469d8 <__adddf3+0x8c>
d0046b3a:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d0046b3e:	bf18      	it	ne
d0046b40:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d0046b44:	d029      	beq.n	d0046b9a <__adddf3+0x24e>
d0046b46:	ea94 0f05 	teq	r4, r5
d0046b4a:	bf08      	it	eq
d0046b4c:	ea90 0f02 	teqeq	r0, r2
d0046b50:	d005      	beq.n	d0046b5e <__adddf3+0x212>
d0046b52:	ea54 0c00 	orrs.w	ip, r4, r0
d0046b56:	bf04      	itt	eq
d0046b58:	4619      	moveq	r1, r3
d0046b5a:	4610      	moveq	r0, r2
d0046b5c:	bd30      	pop	{r4, r5, pc}
d0046b5e:	ea91 0f03 	teq	r1, r3
d0046b62:	bf1e      	ittt	ne
d0046b64:	2100      	movne	r1, #0
d0046b66:	2000      	movne	r0, #0
d0046b68:	bd30      	popne	{r4, r5, pc}
d0046b6a:	ea5f 5c54 	movs.w	ip, r4, lsr #21
d0046b6e:	d105      	bne.n	d0046b7c <__adddf3+0x230>
d0046b70:	0040      	lsls	r0, r0, #1
d0046b72:	4149      	adcs	r1, r1
d0046b74:	bf28      	it	cs
d0046b76:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
d0046b7a:	bd30      	pop	{r4, r5, pc}
d0046b7c:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
d0046b80:	bf3c      	itt	cc
d0046b82:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
d0046b86:	bd30      	popcc	{r4, r5, pc}
d0046b88:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d0046b8c:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
d0046b90:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
d0046b94:	f04f 0000 	mov.w	r0, #0
d0046b98:	bd30      	pop	{r4, r5, pc}
d0046b9a:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d0046b9e:	bf1a      	itte	ne
d0046ba0:	4619      	movne	r1, r3
d0046ba2:	4610      	movne	r0, r2
d0046ba4:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
d0046ba8:	bf1c      	itt	ne
d0046baa:	460b      	movne	r3, r1
d0046bac:	4602      	movne	r2, r0
d0046bae:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
d0046bb2:	bf06      	itte	eq
d0046bb4:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
d0046bb8:	ea91 0f03 	teqeq	r1, r3
d0046bbc:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
d0046bc0:	bd30      	pop	{r4, r5, pc}
d0046bc2:	bf00      	nop

d0046bc4 <__aeabi_ui2d>:
d0046bc4:	f090 0f00 	teq	r0, #0
d0046bc8:	bf04      	itt	eq
d0046bca:	2100      	moveq	r1, #0
d0046bcc:	4770      	bxeq	lr
d0046bce:	b530      	push	{r4, r5, lr}
d0046bd0:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0046bd4:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0046bd8:	f04f 0500 	mov.w	r5, #0
d0046bdc:	f04f 0100 	mov.w	r1, #0
d0046be0:	e750      	b.n	d0046a84 <__adddf3+0x138>
d0046be2:	bf00      	nop

d0046be4 <__aeabi_i2d>:
d0046be4:	f090 0f00 	teq	r0, #0
d0046be8:	bf04      	itt	eq
d0046bea:	2100      	moveq	r1, #0
d0046bec:	4770      	bxeq	lr
d0046bee:	b530      	push	{r4, r5, lr}
d0046bf0:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0046bf4:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0046bf8:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
d0046bfc:	bf48      	it	mi
d0046bfe:	4240      	negmi	r0, r0
d0046c00:	f04f 0100 	mov.w	r1, #0
d0046c04:	e73e      	b.n	d0046a84 <__adddf3+0x138>
d0046c06:	bf00      	nop

d0046c08 <__aeabi_f2d>:
d0046c08:	0042      	lsls	r2, r0, #1
d0046c0a:	ea4f 01e2 	mov.w	r1, r2, asr #3
d0046c0e:	ea4f 0131 	mov.w	r1, r1, rrx
d0046c12:	ea4f 7002 	mov.w	r0, r2, lsl #28
d0046c16:	bf1f      	itttt	ne
d0046c18:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
d0046c1c:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
d0046c20:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
d0046c24:	4770      	bxne	lr
d0046c26:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
d0046c2a:	bf08      	it	eq
d0046c2c:	4770      	bxeq	lr
d0046c2e:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
d0046c32:	bf04      	itt	eq
d0046c34:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
d0046c38:	4770      	bxeq	lr
d0046c3a:	b530      	push	{r4, r5, lr}
d0046c3c:	f44f 7460 	mov.w	r4, #896	; 0x380
d0046c40:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d0046c44:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
d0046c48:	e71c      	b.n	d0046a84 <__adddf3+0x138>
d0046c4a:	bf00      	nop

d0046c4c <__aeabi_ul2d>:
d0046c4c:	ea50 0201 	orrs.w	r2, r0, r1
d0046c50:	bf08      	it	eq
d0046c52:	4770      	bxeq	lr
d0046c54:	b530      	push	{r4, r5, lr}
d0046c56:	f04f 0500 	mov.w	r5, #0
d0046c5a:	e00a      	b.n	d0046c72 <__aeabi_l2d+0x16>

d0046c5c <__aeabi_l2d>:
d0046c5c:	ea50 0201 	orrs.w	r2, r0, r1
d0046c60:	bf08      	it	eq
d0046c62:	4770      	bxeq	lr
d0046c64:	b530      	push	{r4, r5, lr}
d0046c66:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
d0046c6a:	d502      	bpl.n	d0046c72 <__aeabi_l2d+0x16>
d0046c6c:	4240      	negs	r0, r0
d0046c6e:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d0046c72:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0046c76:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0046c7a:	ea5f 5c91 	movs.w	ip, r1, lsr #22
d0046c7e:	f43f aed8 	beq.w	d0046a32 <__adddf3+0xe6>
d0046c82:	f04f 0203 	mov.w	r2, #3
d0046c86:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d0046c8a:	bf18      	it	ne
d0046c8c:	3203      	addne	r2, #3
d0046c8e:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d0046c92:	bf18      	it	ne
d0046c94:	3203      	addne	r2, #3
d0046c96:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
d0046c9a:	f1c2 0320 	rsb	r3, r2, #32
d0046c9e:	fa00 fc03 	lsl.w	ip, r0, r3
d0046ca2:	fa20 f002 	lsr.w	r0, r0, r2
d0046ca6:	fa01 fe03 	lsl.w	lr, r1, r3
d0046caa:	ea40 000e 	orr.w	r0, r0, lr
d0046cae:	fa21 f102 	lsr.w	r1, r1, r2
d0046cb2:	4414      	add	r4, r2
d0046cb4:	e6bd      	b.n	d0046a32 <__adddf3+0xe6>
d0046cb6:	bf00      	nop
d0046cb8:	2e706661 	.word	0x2e706661
d0046cbc:	00646f6d 	.word	0x00646f6d
d0046cc0:	616c7369 	.word	0x616c7369
d0046cc4:	2e78646e 	.word	0x2e78646e
d0046cc8:	64336273 	.word	0x64336273
d0046ccc:	00000000 	.word	0x00000000
d0046cd0:	72726163 	.word	0x72726163
d0046cd4:	2e726569 	.word	0x2e726569
d0046cd8:	64336273 	.word	0x64336273
d0046cdc:	00000000 	.word	0x00000000
d0046ce0:	617a7573 	.word	0x617a7573
d0046ce4:	2e656e6e 	.word	0x2e656e6e
d0046ce8:	64336273 	.word	0x64336273
d0046cec:	00000000 	.word	0x00000000
d0046cf0:	ff5516e3 	.word	0xff5516e3
d0046cf4:	ffffffff 	.word	0xffffffff
d0046cf8:	ffff0000 	.word	0xffff0000
d0046cfc:	ff00ff00 	.word	0xff00ff00
d0046d00:	ff0000ff 	.word	0xff0000ff
d0046d04:	ffffff00 	.word	0xffffff00
d0046d08:	ffff00ff 	.word	0xffff00ff
d0046d0c:	ff00ffff 	.word	0xff00ffff
d0046d10:	ff808080 	.word	0xff808080
d0046d14:	ffff8000 	.word	0xffff8000
d0046d18:	ff8000ff 	.word	0xff8000ff
d0046d1c:	ff0080ff 	.word	0xff0080ff
d0046d20:	ff80ff00 	.word	0xff80ff00
d0046d24:	ffff0080 	.word	0xffff0080
d0046d28:	ff00ff80 	.word	0xff00ff80
d0046d2c:	ffc0c0c0 	.word	0xffc0c0c0
d0046d30:	3f800000 	.word	0x3f800000
d0046d34:	3f400000 	.word	0x3f400000
d0046d38:	3f0ccccd 	.word	0x3f0ccccd
d0046d3c:	3eb33333 	.word	0x3eb33333
d0046d40:	3e4ccccd 	.word	0x3e4ccccd
d0046d44:	bf800000 	.word	0xbf800000
d0046d48:	bf000000 	.word	0xbf000000
d0046d4c:	3e99999a 	.word	0x3e99999a

d0046d50 <bayer4x4>:
d0046d50:	0a020800 060e040c 09010b03 050d070f     ................
	...
d0046d78:	3f800000 00000000 00000000 00000000     ...?............
d0046d88:	3f800000 00000000 00000000 00000000     ...?............
d0046d98:	3f800000 3a8312c5 3c23d70a 447a0000     ...?...:..#<..zD
	...

d0046dc0 <__sf_fake_stderr>:
	...

d0046de0 <__sf_fake_stdin>:
	...

d0046e00 <__sf_fake_stdout>:
	...

d0046e20 <_global_impure_ptr>:
d0046e20:	d00475dc 00000000                       .u......

d0046e28 <__exp2f_data>:
d0046e28:	00000000 3ff00000 d3158574 3fefd9b0     .......?t......?
d0046e38:	6cf9890f 3fefb558 d0125b51 3fef9301     ...lX..?Q[.....?
d0046e48:	3c7d517b 3fef72b8 3168b9aa 3fef5487     {Q}<.r.?..h1.T.?
d0046e58:	6e756238 3fef387a f51fdee1 3fef1e9d     8bunz8.?.......?
d0046e68:	0a31b715 3fef06fe 373aa9cb 3feef1a7     ..1....?..:7...?
d0046e78:	4c123422 3feedea6 6061892d 3feece08     "4.L...?-.a`...?
d0046e88:	d5362a27 3feebfda 569d4f82 3feeb42b     '*6....?.O.V+..?
d0046e98:	dd485429 3feeab07 b03a5585 3feea47e     )TH....?.U:.~..?
d0046ea8:	667f3bcd 3feea09e e8ec5f74 3fee9f75     .;.f...?t_..u..?
d0046eb8:	73eb0187 3feea114 994cce13 3feea589     ...s...?..L....?
d0046ec8:	422aa0db 3feeace5 b0cdc5e5 3feeb737     ..*B...?....7..?
d0046ed8:	82a3f090 3feec491 b23e255d 3feed503     .......?]%>....?
d0046ee8:	995ad3ad 3feee89f f2fb5e47 3feeff76     ..Z....?G^..v..?
d0046ef8:	dd85529c 3fef199b dcef9069 3fef3720     .R.....?i... 7.?
d0046f08:	dcfba487 3fef5818 337b9b5f 3fef7c97     .....X.?_.{3.|.?
d0046f18:	a2a490da 3fefa4af 5b6e4540 3fefd076     .......?@En[v..?
d0046f28:	00000000 42e80000 4b912394 3fac6af8     .......B.#.K.j.?
d0046f38:	50fac4f3 3fcebfce ff0c52d6 3fe62e42     ...P...?.R..B..?
d0046f48:	00000000 43380000 652b82fe 40471547     ......8C..+eG.G@
d0046f58:	4b912394 3ebc6af8 50fac4f3 3f2ebfce     .#.K.j.>...P...?
d0046f68:	ff0c52d6 3f962e42                       .R..B..?

d0046f70 <__logf_data>:
d0046f70:	79f8f3be 3ff661ec 808caade bfd57bf7     ...y.a.?.....{..
d0046f80:	4aaf883d 3ff571ed a7c06ddb bfd2bef0     =..J.q.?.m......
d0046f90:	f0f010b0 3ff49539 7f513a67 bfd01eae     ....9..?g:Q.....
d0046fa0:	b0b80385 3ff3c995 a68224e9 bfcb31d8     .......?.$...1..
d0046fb0:	0c8864a5 3ff30d19 0ac07758 bfc6574f     .d.....?Xw..OW..
d0046fc0:	7b0b8ea0 3ff25e22 c79c8100 bfc1aa2b     ...{"^.?....+...
d0046fd0:	4a1a343f 3ff1bb4a ce8c0e5e bfba4e76     ?4.JJ..?^...vN..
d0046fe0:	f08ae5ba 3ff12358 5a611ccc bfb1973c     ....X#.?..aZ<...
d0046ff0:	419900a7 3ff0953f 38e10c1e bfa252f4     ...A?..?...8.R..
d0047000:	00000000 3ff00000 00000000 00000000     .......?........
d0047010:	fd9a47ac 3fee608c 5df25984 3faaa5aa     .G...`.?.Y.]...?
d0047020:	1f026aa0 3feca4b3 aa362eb4 3fbc5e53     .j.....?..6.S^.?
d0047030:	576afce6 3feb2036 7720db08 3fc526e5     ..jW6 .?.. w.&.?
d0047040:	63a1aa2d 3fe9c2d1 0d224770 3fcbc286     -..c...?pG"....?
d0047050:	037841ed 3fe886e6 c8a07ee1 3fd1058b     .Ax....?.~.....?
d0047060:	f5534862 3fe767dc 57b6ee09 3fd40430     bHS..g.?...W0..?
d0047070:	fefa39ef 3fe62e42 48b88334 bfd00ea3     .9..B..?4..H....
d0047080:	0be00b6a 3fd5575b f20a4123 bfdffffe     j...[W.?#A......

d0047090 <__inv_pio4>:
d0047090:	000000a2 0000a2f9 00a2f983 a2f9836e     ............n...
d00470a0:	f9836e4e 836e4e44 6e4e4415 4e441529     Nn..DNn..DNn).DN
d00470b0:	441529fc 1529fc27 29fc2757 fc2757d1     .).D'.).W'.).W'.
d00470c0:	2757d1f5 57d1f534 d1f534dd f534ddc0     ..W'4..W.4....4.
d00470d0:	34ddc0db ddc0db62 c0db6295 db629599     ...4b....b....b.
d00470e0:	6295993c 95993c43 993c4390 3c439041     <..bC<...C<.A.C<

d00470f0 <__sincosf_table>:
d00470f0:	00000000 3ff00000 00000000 bff00000     .......?........
d0047100:	00000000 bff00000 00000000 3ff00000     ...............?
d0047110:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d0047120:	00000000 3ff00000 fd0c621c bfdfffff     .......?.b......
d0047130:	e1068f19 3fa55553 e89a359d bf56c087     ....SU.?.5....V.
d0047140:	027bf8c3 3ef99343 5995a603 bfc55554     ..{.C..>...YTU..
d0047150:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).
d0047160:	00000000 3ff00000 00000000 bff00000     .......?........
d0047170:	00000000 bff00000 00000000 3ff00000     ...............?
d0047180:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d0047190:	00000000 bff00000 fd0c621c 3fdfffff     .........b.....?
d00471a0:	e1068f19 bfa55553 e89a359d 3f56c087     ....SU...5....V?
d00471b0:	027bf8c3 bef99343 5995a603 bfc55554     ..{.C......YTU..
d00471c0:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).

Disassembly of section .init:

d00471d0 <_init>:
d00471d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00471d2:	bf00      	nop

Disassembly of section .fini:

d00471d4 <_fini>:
d00471d4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00471d6:	bf00      	nop
