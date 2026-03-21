
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
d004001e:	f006 f887 	bl	d0046130 <setbuf>
d0040022:	6833      	ldr	r3, [r6, #0]
d0040024:	2100      	movs	r1, #0
d0040026:	68d8      	ldr	r0, [r3, #12]
d0040028:	f006 f882 	bl	d0046130 <setbuf>
d004002c:	4629      	mov	r1, r5
d004002e:	4620      	mov	r0, r4
d0040030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0040034:	f000 b90c 	b.w	d0040250 <main>
d0040038:	d00475f8 	.word	0xd00475f8

d004003c <initMalloc>:
d004003c:	4902      	ldr	r1, [pc, #8]	; (d0040048 <initMalloc+0xc>)
d004003e:	4b03      	ldr	r3, [pc, #12]	; (d004004c <initMalloc+0x10>)
d0040040:	4a03      	ldr	r2, [pc, #12]	; (d0040050 <initMalloc+0x14>)
d0040042:	1a5b      	subs	r3, r3, r1
d0040044:	6013      	str	r3, [r2, #0]
d0040046:	4770      	bx	lr
d0040048:	d0134d90 	.word	0xd0134d90
d004004c:	d0600000 	.word	0xd0600000
d0040050:	d00e1ce8 	.word	0xd00e1ce8

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
d004009c:	f005 fd1e 	bl	d0045adc <__errno>
d00400a0:	2209      	movs	r2, #9
d00400a2:	4603      	mov	r3, r0
d00400a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00400a8:	601a      	str	r2, [r3, #0]
d00400aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00400ac:	d0047664 	.word	0xd0047664
d00400b0:	2001f000 	.word	0x2001f000

d00400b4 <_read>:
d00400b4:	b508      	push	{r3, lr}
d00400b6:	f005 fd11 	bl	d0045adc <__errno>
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
d0040102:	f005 fceb 	bl	d0045adc <__errno>
d0040106:	220c      	movs	r2, #12
d0040108:	4603      	mov	r3, r0
d004010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004010e:	601a      	str	r2, [r3, #0]
d0040110:	bd10      	pop	{r4, pc}
d0040112:	bf00      	nop
d0040114:	d0047660 	.word	0xd0047660
d0040118:	d0134d90 	.word	0xd0134d90
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
d004014c:	2100      	movs	r1, #0
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
d0040248:	d00e1d60 	.word	0xd00e1d60
d004024c:	d00e1d40 	.word	0xd00e1d40

d0040250 <main>:
d0040250:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040254:	ed2d 8b0e 	vpush	{d8-d14}
d0040258:	b0fb      	sub	sp, #492	; 0x1ec
d004025a:	4db9      	ldr	r5, [pc, #740]	; (d0040540 <main+0x2f0>)
d004025c:	f7ff ff60 	bl	d0040120 <initSystem>
d0040260:	4fb8      	ldr	r7, [pc, #736]	; (d0040544 <main+0x2f4>)
d0040262:	f10d 06cf 	add.w	r6, sp, #207	; 0xcf
d0040266:	f002 fde9 	bl	d0042e3c <worldClear>
d004026a:	f003 fc6b 	bl	d0043b44 <lightsClear>
d004026e:	f04f 4a7f 	mov.w	sl, #4278190080	; 0xff000000
d0040272:	f026 061f 	bic.w	r6, r6, #31
d0040276:	4cb4      	ldr	r4, [pc, #720]	; (d0040548 <main+0x2f8>)
d0040278:	eddf bab4 	vldr	s23, [pc, #720]	; d004054c <main+0x2fc>
d004027c:	f106 03e0 	add.w	r3, r6, #224	; 0xe0
d0040280:	f106 09a0 	add.w	r9, r6, #160	; 0xa0
d0040284:	ed9f dab2 	vldr	s26, [pc, #712]	; d0040550 <main+0x300>
d0040288:	9303      	str	r3, [sp, #12]
d004028a:	f002 fadb 	bl	d0042844 <sb3dParticlesClear>
d004028e:	f003 fc8f 	bl	d0043bb0 <setDefaultRenderMode>
d0040292:	4630      	mov	r0, r6
d0040294:	f002 fdda 	bl	d0042e4c <cameraCreate>
d0040298:	4630      	mov	r0, r6
d004029a:	eddf 0aae 	vldr	s1, [pc, #696]	; d0040554 <main+0x304>
d004029e:	ed9f 0aae 	vldr	s0, [pc, #696]	; d0040558 <main+0x308>
d00402a2:	f002 fff3 	bl	d004328c <cameraSetRange>
d00402a6:	ed9f 1ac7 	vldr	s2, [pc, #796]	; d00405c4 <main+0x374>
d00402aa:	eddf 0aac 	vldr	s1, [pc, #688]	; d004055c <main+0x30c>
d00402ae:	eeb0 0a41 	vmov.f32	s0, s2
d00402b2:	eddf caab 	vldr	s25, [pc, #684]	; d0040560 <main+0x310>
d00402b6:	f002 fa25 	bl	d0042704 <vec3>
d00402ba:	4630      	mov	r0, r6
d00402bc:	edcd 0a0c 	vstr	s1, [sp, #48]	; 0x30
d00402c0:	ed8d 0a0b 	vstr	s0, [sp, #44]	; 0x2c
d00402c4:	ed8d 1a0d 	vstr	s2, [sp, #52]	; 0x34
d00402c8:	f002 fdca 	bl	d0042e60 <cameraSetPosition>
d00402cc:	4630      	mov	r0, r6
d00402ce:	ed9f caa5 	vldr	s24, [pc, #660]	; d0040564 <main+0x314>
d00402d2:	f002 fdd5 	bl	d0042e80 <cameraNormalize>
d00402d6:	f10d 0c70 	add.w	ip, sp, #112	; 0x70
d00402da:	f10d 0e5c 	add.w	lr, sp, #92	; 0x5c
d00402de:	f8df 82c0 	ldr.w	r8, [pc, #704]	; d00405a0 <main+0x350>
d00402e2:	f8df b2c0 	ldr.w	fp, [pc, #704]	; d00405a4 <main+0x354>
d00402e6:	eddf 8ab7 	vldr	s17, [pc, #732]	; d00405c4 <main+0x374>
d00402ea:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d00402ec:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d00402f0:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d00402f2:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d00402f6:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d00402f8:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d00402fc:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0040300:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d0040304:	f105 0c10 	add.w	ip, r5, #16
d0040308:	f8c7 a000 	str.w	sl, [r7]
d004030c:	f8cd e000 	str.w	lr, [sp]
d0040310:	3524      	adds	r5, #36	; 0x24
d0040312:	f8c7 a040 	str.w	sl, [r7, #64]	; 0x40
d0040316:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d004031a:	f8dc c000 	ldr.w	ip, [ip]
d004031e:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
d0040322:	4653      	mov	r3, sl
d0040324:	f8ce c000 	str.w	ip, [lr]
d0040328:	4638      	mov	r0, r7
d004032a:	a91c      	add	r1, sp, #112	; 0x70
d004032c:	2210      	movs	r2, #16
d004032e:	f8df a278 	ldr.w	sl, [pc, #632]	; d00405a8 <main+0x358>
d0040332:	f003 f9c7 	bl	d00436c4 <buildLightingCLUT>
d0040336:	7b22      	ldrb	r2, [r4, #12]
d0040338:	7b61      	ldrb	r1, [r4, #13]
d004033a:	4638      	mov	r0, r7
d004033c:	f894 c00e 	ldrb.w	ip, [r4, #14]
d0040340:	f106 0760 	add.w	r7, r6, #96	; 0x60
d0040344:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d0040348:	7be1      	ldrb	r1, [r4, #15]
d004034a:	ea42 420c 	orr.w	r2, r2, ip, lsl #16
d004034e:	ea42 6201 	orr.w	r2, r2, r1, lsl #24
d0040352:	6812      	ldr	r2, [r2, #0]
d0040354:	6cd2      	ldr	r2, [r2, #76]	; 0x4c
d0040356:	4790      	blx	r2
d0040358:	7c22      	ldrb	r2, [r4, #16]
d004035a:	7c60      	ldrb	r0, [r4, #17]
d004035c:	2100      	movs	r1, #0
d004035e:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
d0040362:	7ca0      	ldrb	r0, [r4, #18]
d0040364:	ea42 4200 	orr.w	r2, r2, r0, lsl #16
d0040368:	7ce0      	ldrb	r0, [r4, #19]
d004036a:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d004036e:	487e      	ldr	r0, [pc, #504]	; (d0040568 <main+0x318>)
d0040370:	6852      	ldr	r2, [r2, #4]
d0040372:	6812      	ldr	r2, [r2, #0]
d0040374:	4790      	blx	r2
d0040376:	f10d 0c20 	add.w	ip, sp, #32
d004037a:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d004037e:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d0040382:	e88c 0007 	stmia.w	ip, {r0, r1, r2}
d0040386:	2001      	movs	r0, #1
d0040388:	ed9c 0a00 	vldr	s0, [ip]
d004038c:	eddc 0a01 	vldr	s1, [ip, #4]
d0040390:	252b      	movs	r5, #43	; 0x2b
d0040392:	ed9c 1a02 	vldr	s2, [ip, #8]
d0040396:	f003 fbdb 	bl	d0043b50 <addDirectionalLight>
d004039a:	2209      	movs	r2, #9
d004039c:	4b73      	ldr	r3, [pc, #460]	; (d004056c <main+0x31c>)
d004039e:	203b      	movs	r0, #59	; 0x3b
d00403a0:	ed9d 8a03 	vldr	s16, [sp, #12]
d00403a4:	701a      	strb	r2, [r3, #0]
d00403a6:	2202      	movs	r2, #2
d00403a8:	4b71      	ldr	r3, [pc, #452]	; (d0040570 <main+0x320>)
d00403aa:	ee18 1a10 	vmov	r1, s16
d00403ae:	ed9f 0a71 	vldr	s0, [pc, #452]	; d0040574 <main+0x324>
d00403b2:	7018      	strb	r0, [r3, #0]
d00403b4:	4b70      	ldr	r3, [pc, #448]	; (d0040578 <main+0x328>)
d00403b6:	4871      	ldr	r0, [pc, #452]	; (d004057c <main+0x32c>)
d00403b8:	701d      	strb	r5, [r3, #0]
d00403ba:	4b71      	ldr	r3, [pc, #452]	; (d0040580 <main+0x330>)
d00403bc:	701a      	strb	r2, [r3, #0]
d00403be:	f005 f9f9 	bl	d00457b4 <loadMeshSB3D>
d00403c2:	ed9f 1a80 	vldr	s2, [pc, #512]	; d00405c4 <main+0x374>
d00403c6:	eef0 0a41 	vmov.f32	s1, s2
d00403ca:	eeb0 0a41 	vmov.f32	s0, s2
d00403ce:	f002 f999 	bl	d0042704 <vec3>
d00403d2:	ee18 0a10 	vmov	r0, s16
d00403d6:	edcd 0a0f 	vstr	s1, [sp, #60]	; 0x3c
d00403da:	ed8d 1a10 	vstr	s2, [sp, #64]	; 0x40
d00403de:	ed8d 0a0e 	vstr	s0, [sp, #56]	; 0x38
d00403e2:	f003 f825 	bl	d0043430 <entityWorldSpawn>
d00403e6:	4649      	mov	r1, r9
d00403e8:	ed9f 0a5c 	vldr	s0, [pc, #368]	; d004055c <main+0x30c>
d00403ec:	4865      	ldr	r0, [pc, #404]	; (d0040584 <main+0x334>)
d00403ee:	f005 f9e1 	bl	d00457b4 <loadMeshSB3D>
d00403f2:	ed9f 1a65 	vldr	s2, [pc, #404]	; d0040588 <main+0x338>
d00403f6:	eddf 0a73 	vldr	s1, [pc, #460]	; d00405c4 <main+0x374>
d00403fa:	ed9f 0a64 	vldr	s0, [pc, #400]	; d004058c <main+0x33c>
d00403fe:	f002 f981 	bl	d0042704 <vec3>
d0040402:	4648      	mov	r0, r9
d0040404:	edcd 0a12 	vstr	s1, [sp, #72]	; 0x48
d0040408:	ed8d 1a13 	vstr	s2, [sp, #76]	; 0x4c
d004040c:	ed8d 0a11 	vstr	s0, [sp, #68]	; 0x44
d0040410:	f003 f80e 	bl	d0043430 <entityWorldSpawn>
d0040414:	4681      	mov	r9, r0
d0040416:	2000      	movs	r0, #0
d0040418:	f003 fbd8 	bl	d0043bcc <enableFlatMode>
d004041c:	4639      	mov	r1, r7
d004041e:	ed9f 0a4f 	vldr	s0, [pc, #316]	; d004055c <main+0x30c>
d0040422:	485b      	ldr	r0, [pc, #364]	; (d0040590 <main+0x340>)
d0040424:	f005 f9c6 	bl	d00457b4 <loadMeshSB3D>
d0040428:	ed9f 1a52 	vldr	s2, [pc, #328]	; d0040574 <main+0x324>
d004042c:	eddf 0a59 	vldr	s1, [pc, #356]	; d0040594 <main+0x344>
d0040430:	ed9f 0a55 	vldr	s0, [pc, #340]	; d0040588 <main+0x338>
d0040434:	f002 f966 	bl	d0042704 <vec3>
d0040438:	4638      	mov	r0, r7
d004043a:	ed8d 0a14 	vstr	s0, [sp, #80]	; 0x50
d004043e:	edcd 0a15 	vstr	s1, [sp, #84]	; 0x54
d0040442:	ed8d 1a16 	vstr	s2, [sp, #88]	; 0x58
d0040446:	f002 fff3 	bl	d0043430 <entityWorldSpawn>
d004044a:	ed9f 2a5e 	vldr	s4, [pc, #376]	; d00405c4 <main+0x374>
d004044e:	4602      	mov	r2, r0
d0040450:	eeb7 1a08 	vmov.f32	s2, #120	; 0x3fc00000  1.5
d0040454:	eddf 1a50 	vldr	s3, [pc, #320]	; d0040598 <main+0x348>
d0040458:	eeb0 0a42 	vmov.f32	s0, s4
d004045c:	eddf 0a4f 	vldr	s1, [pc, #316]	; d004059c <main+0x34c>
d0040460:	4638      	mov	r0, r7
d0040462:	ee0e 2a10 	vmov	s28, r2
d0040466:	f000 f9f9 	bl	d004085c <meshSetMaterial>
d004046a:	7b23      	ldrb	r3, [r4, #12]
d004046c:	7b62      	ldrb	r2, [r4, #13]
d004046e:	7ba1      	ldrb	r1, [r4, #14]
d0040470:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040474:	7be2      	ldrb	r2, [r4, #15]
d0040476:	f8da 0000 	ldr.w	r0, [sl]
d004047a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004047e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040482:	681b      	ldr	r3, [r3, #0]
d0040484:	69db      	ldr	r3, [r3, #28]
d0040486:	4798      	blx	r3
d0040488:	7b23      	ldrb	r3, [r4, #12]
d004048a:	7b62      	ldrb	r2, [r4, #13]
d004048c:	7ba1      	ldrb	r1, [r4, #14]
d004048e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040492:	7be2      	ldrb	r2, [r4, #15]
d0040494:	f8da 0000 	ldr.w	r0, [sl]
d0040498:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004049c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00404a0:	681b      	ldr	r3, [r3, #0]
d00404a2:	699b      	ldr	r3, [r3, #24]
d00404a4:	4798      	blx	r3
d00404a6:	7b23      	ldrb	r3, [r4, #12]
d00404a8:	7b62      	ldrb	r2, [r4, #13]
d00404aa:	2001      	movs	r0, #1
d00404ac:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00404b0:	7ba2      	ldrb	r2, [r4, #14]
d00404b2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00404b6:	7be2      	ldrb	r2, [r4, #15]
d00404b8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00404bc:	685b      	ldr	r3, [r3, #4]
d00404be:	68db      	ldr	r3, [r3, #12]
d00404c0:	4798      	blx	r3
d00404c2:	7b23      	ldrb	r3, [r4, #12]
d00404c4:	7b62      	ldrb	r2, [r4, #13]
d00404c6:	211e      	movs	r1, #30
d00404c8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00404cc:	7ba2      	ldrb	r2, [r4, #14]
d00404ce:	4608      	mov	r0, r1
d00404d0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00404d4:	7be2      	ldrb	r2, [r4, #15]
d00404d6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00404da:	685b      	ldr	r3, [r3, #4]
d00404dc:	689b      	ldr	r3, [r3, #8]
d00404de:	4798      	blx	r3
d00404e0:	7823      	ldrb	r3, [r4, #0]
d00404e2:	7862      	ldrb	r2, [r4, #1]
d00404e4:	a905      	add	r1, sp, #20
d00404e6:	a804      	add	r0, sp, #16
d00404e8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00404ec:	78a2      	ldrb	r2, [r4, #2]
d00404ee:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00404f2:	78e2      	ldrb	r2, [r4, #3]
d00404f4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00404f8:	691b      	ldr	r3, [r3, #16]
d00404fa:	4798      	blx	r3
d00404fc:	7823      	ldrb	r3, [r4, #0]
d00404fe:	7862      	ldrb	r2, [r4, #1]
d0040500:	78a1      	ldrb	r1, [r4, #2]
d0040502:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040506:	78e2      	ldrb	r2, [r4, #3]
d0040508:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004050c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040510:	69db      	ldr	r3, [r3, #28]
d0040512:	4798      	blx	r3
d0040514:	7823      	ldrb	r3, [r4, #0]
d0040516:	7862      	ldrb	r2, [r4, #1]
d0040518:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004051c:	78a2      	ldrb	r2, [r4, #2]
d004051e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040522:	78e2      	ldrb	r2, [r4, #3]
d0040524:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040528:	689b      	ldr	r3, [r3, #8]
d004052a:	4798      	blx	r3
d004052c:	4605      	mov	r5, r0
d004052e:	ed9f 9b02 	vldr	d9, [pc, #8]	; d0040538 <main+0x2e8>
d0040532:	e124      	b.n	d004077e <main+0x52e>
d0040534:	f3af 8000 	nop.w
d0040538:	9999999a 	.word	0x9999999a
d004053c:	3fc99999 	.word	0x3fc99999
d0040540:	d0046d04 	.word	0xd0046d04
d0040544:	d00471f8 	.word	0xd00471f8
d0040548:	2001f000 	.word	0x2001f000
d004054c:	4c895441 	.word	0x4c895441
d0040550:	42040000 	.word	0x42040000
d0040554:	459c4000 	.word	0x459c4000
d0040558:	3c23d70a 	.word	0x3c23d70a
d004055c:	42480000 	.word	0x42480000
d0040560:	3cf5c290 	.word	0x3cf5c290
d0040564:	41233334 	.word	0x41233334
d0040568:	d0046cd0 	.word	0xd0046cd0
d004056c:	d00e1d44 	.word	0xd00e1d44
d0040570:	d00e1d45 	.word	0xd00e1d45
d0040574:	43480000 	.word	0x43480000
d0040578:	d00e1d20 	.word	0xd00e1d20
d004057c:	d0046cd8 	.word	0xd0046cd8
d0040580:	d00e1d21 	.word	0xd00e1d21
d0040584:	d0046ce8 	.word	0xd0046ce8
d0040588:	c2c80000 	.word	0xc2c80000
d004058c:	44f3c000 	.word	0x44f3c000
d0040590:	d0046cf8 	.word	0xd0046cf8
d0040594:	42c80000 	.word	0x42c80000
d0040598:	42800000 	.word	0x42800000
d004059c:	3f0ccccd 	.word	0x3f0ccccd
d00405a0:	d0047668 	.word	0xd0047668
d00405a4:	d00e1d40 	.word	0xd00e1d40
d00405a8:	d00e1d60 	.word	0xd00e1d60
d00405ac:	310f2a63 	.word	0x310f2a63
d00405b0:	bb449ba6 	.word	0xbb449ba6
d00405b4:	40d9999a 	.word	0x40d9999a
d00405b8:	435c0000 	.word	0x435c0000
d00405bc:	3c088889 	.word	0x3c088889
d00405c0:	3ba3d70a 	.word	0x3ba3d70a
d00405c4:	00000000 	.word	0x00000000
d00405c8:	ed5f 0a08 	vldr	s1, [pc, #-32]	; d00405ac <main+0x35c>
d00405cc:	eeb2 aa04 	vmov.f32	s20, #36	; 0x41200000  10.0
d00405d0:	ed5f da09 	vldr	s27, [pc, #-36]	; d00405b0 <main+0x360>
d00405d4:	ee28 8a20 	vmul.f32	s16, s16, s1
d00405d8:	ed5f 6a0a 	vldr	s13, [pc, #-40]	; d00405b4 <main+0x364>
d00405dc:	ed1f ba0a 	vldr	s22, [pc, #-40]	; d00405b8 <main+0x368>
d00405e0:	eeb7 7ac8 	vcvt.f64.f32	d7, s16
d00405e4:	ee28 aa0a 	vmul.f32	s20, s16, s20
d00405e8:	ee28 ba0b 	vmul.f32	s22, s16, s22
d00405ec:	ee27 7b09 	vmul.f64	d7, d7, d9
d00405f0:	ee6a da2d 	vmul.f32	s27, s20, s27
d00405f4:	ee2a aa26 	vmul.f32	s20, s20, s13
d00405f8:	eef7 abc7 	vcvt.f32.f64	s21, d7
d00405fc:	7820      	ldrb	r0, [r4, #0]
d00405fe:	7861      	ldrb	r1, [r4, #1]
d0040600:	78a2      	ldrb	r2, [r4, #2]
d0040602:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0040606:	78e3      	ldrb	r3, [r4, #3]
d0040608:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004060c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040610:	6a1b      	ldr	r3, [r3, #32]
d0040612:	4798      	blx	r3
d0040614:	f894 c000 	ldrb.w	ip, [r4]
d0040618:	7863      	ldrb	r3, [r4, #1]
d004061a:	a907      	add	r1, sp, #28
d004061c:	78a2      	ldrb	r2, [r4, #2]
d004061e:	4605      	mov	r5, r0
d0040620:	ea4c 2c03 	orr.w	ip, ip, r3, lsl #8
d0040624:	78e3      	ldrb	r3, [r4, #3]
d0040626:	a806      	add	r0, sp, #24
d0040628:	ea4c 4202 	orr.w	r2, ip, r2, lsl #16
d004062c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040630:	699b      	ldr	r3, [r3, #24]
d0040632:	4798      	blx	r3
d0040634:	ed5f 7a1f 	vldr	s15, [pc, #-124]	; d00405bc <main+0x36c>
d0040638:	ed1f 7a1f 	vldr	s14, [pc, #-124]	; d00405c0 <main+0x370>
d004063c:	eef0 0a68 	vmov.f32	s1, s17
d0040640:	2100      	movs	r1, #0
d0040642:	4630      	mov	r0, r6
d0040644:	e9dd 2306 	ldrd	r2, r3, [sp, #24]
d0040648:	4252      	negs	r2, r2
d004064a:	425b      	negs	r3, r3
d004064c:	ee06 2a90 	vmov	s13, r2
d0040650:	eeb8 1ae6 	vcvt.f32.s32	s2, s13
d0040654:	ee06 3a90 	vmov	s13, r3
d0040658:	eeb8 0ae6 	vcvt.f32.s32	s0, s13
d004065c:	ee21 1a07 	vmul.f32	s2, s2, s14
d0040660:	ee20 0a27 	vmul.f32	s0, s0, s15
d0040664:	f002 fc62 	bl	d0042f2c <cameraTurn>
d0040668:	eef0 7a04 	vmov.f32	s15, #4	; 0x40200000  2.5
d004066c:	edd6 0a07 	vldr	s1, [r6, #28]
d0040670:	ee60 0aa7 	vmul.f32	s1, s1, s15
d0040674:	ee60 0a88 	vmul.f32	s1, s1, s16
d0040678:	eef5 0a40 	vcmp.f32	s1, #0.0
d004067c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040680:	f040 80c6 	bne.w	d0040810 <main+0x5c0>
d0040684:	eeb0 1a68 	vmov.f32	s2, s17
d0040688:	ed5f 0a32 	vldr	s1, [pc, #-200]	; d00405c4 <main+0x374>
d004068c:	eeb0 0a6d 	vmov.f32	s0, s27
d0040690:	4648      	mov	r0, r9
d0040692:	f002 ff45 	bl	d0043520 <entityTurnLocal>
d0040696:	eeb0 0a4a 	vmov.f32	s0, s20
d004069a:	4648      	mov	r0, r9
d004069c:	f002 ff0e 	bl	d00434bc <entityMoveForward>
d00406a0:	eeb0 1a68 	vmov.f32	s2, s17
d00406a4:	eeb0 0a6a 	vmov.f32	s0, s21
d00406a8:	ed5f 0a3a 	vldr	s1, [pc, #-232]	; d00405c4 <main+0x374>
d00406ac:	ee1e 0a10 	vmov	r0, s28
d00406b0:	f002 ff36 	bl	d0043520 <entityTurnLocal>
d00406b4:	7820      	ldrb	r0, [r4, #0]
d00406b6:	7861      	ldrb	r1, [r4, #1]
d00406b8:	78a2      	ldrb	r2, [r4, #2]
d00406ba:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00406be:	78e3      	ldrb	r3, [r4, #3]
d00406c0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00406c4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00406c8:	69db      	ldr	r3, [r3, #28]
d00406ca:	4798      	blx	r3
d00406cc:	07ea      	lsls	r2, r5, #31
d00406ce:	f100 8095 	bmi.w	d00407fc <main+0x5ac>
d00406d2:	07ab      	lsls	r3, r5, #30
d00406d4:	f100 8088 	bmi.w	d00407e8 <main+0x598>
d00406d8:	7b20      	ldrb	r0, [r4, #12]
d00406da:	7b61      	ldrb	r1, [r4, #13]
d00406dc:	7ba2      	ldrb	r2, [r4, #14]
d00406de:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00406e2:	7be3      	ldrb	r3, [r4, #15]
d00406e4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00406e8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00406ec:	681b      	ldr	r3, [r3, #0]
d00406ee:	68db      	ldr	r3, [r3, #12]
d00406f0:	4798      	blx	r3
d00406f2:	f898 3000 	ldrb.w	r3, [r8]
d00406f6:	f1c3 0301 	rsb	r3, r3, #1
d00406fa:	b2db      	uxtb	r3, r3
d00406fc:	f888 3000 	strb.w	r3, [r8]
d0040700:	f898 3000 	ldrb.w	r3, [r8]
d0040704:	7b21      	ldrb	r1, [r4, #12]
d0040706:	7b60      	ldrb	r0, [r4, #13]
d0040708:	7ba2      	ldrb	r2, [r4, #14]
d004070a:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004070e:	2b00      	cmp	r3, #0
d0040710:	d058      	beq.n	d00407c4 <main+0x574>
d0040712:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0040716:	7be3      	ldrb	r3, [r4, #15]
d0040718:	f8da 0000 	ldr.w	r0, [sl]
d004071c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040720:	f8db 1000 	ldr.w	r1, [fp]
d0040724:	681b      	ldr	r3, [r3, #0]
d0040726:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0040728:	4798      	blx	r3
d004072a:	f8db 3000 	ldr.w	r3, [fp]
d004072e:	6818      	ldr	r0, [r3, #0]
d0040730:	f000 f8a0 	bl	d0040874 <set3DRenderBuffer>
d0040734:	4b3c      	ldr	r3, [pc, #240]	; (d0040828 <main+0x5d8>)
d0040736:	eeb0 0a68 	vmov.f32	s0, s17
d004073a:	4a3c      	ldr	r2, [pc, #240]	; (d004082c <main+0x5dc>)
d004073c:	4630      	mov	r0, r6
d004073e:	493c      	ldr	r1, [pc, #240]	; (d0040830 <main+0x5e0>)
d0040740:	463d      	mov	r5, r7
d0040742:	781b      	ldrb	r3, [r3, #0]
d0040744:	7812      	ldrb	r2, [r2, #0]
d0040746:	7809      	ldrb	r1, [r1, #0]
d0040748:	f004 f8aa 	bl	d00448a0 <drawFakeHorizon>
d004074c:	4939      	ldr	r1, [pc, #228]	; (d0040834 <main+0x5e4>)
d004074e:	236e      	movs	r3, #110	; 0x6e
d0040750:	2280      	movs	r2, #128	; 0x80
d0040752:	7809      	ldrb	r1, [r1, #0]
d0040754:	eeb0 0a68 	vmov.f32	s0, s17
d0040758:	4630      	mov	r0, r6
d004075a:	f003 ff93 	bl	d0044684 <drawFakeHorizonDots>
d004075e:	4630      	mov	r0, r6
d0040760:	f004 ff38 	bl	d00455d4 <Render3D>
d0040764:	7b20      	ldrb	r0, [r4, #12]
d0040766:	7b61      	ldrb	r1, [r4, #13]
d0040768:	7ba2      	ldrb	r2, [r4, #14]
d004076a:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004076e:	7be3      	ldrb	r3, [r4, #15]
d0040770:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040774:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040778:	681b      	ldr	r3, [r3, #0]
d004077a:	681b      	ldr	r3, [r3, #0]
d004077c:	4798      	blx	r3
d004077e:	7820      	ldrb	r0, [r4, #0]
d0040780:	7861      	ldrb	r1, [r4, #1]
d0040782:	78a2      	ldrb	r2, [r4, #2]
d0040784:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0040788:	78e3      	ldrb	r3, [r4, #3]
d004078a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004078e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040792:	689b      	ldr	r3, [r3, #8]
d0040794:	4798      	blx	r3
d0040796:	1b43      	subs	r3, r0, r5
d0040798:	4607      	mov	r7, r0
d004079a:	ee08 3a10 	vmov	s16, r3
d004079e:	eeb8 8a48 	vcvt.f32.u32	s16, s16
d00407a2:	eeb4 8aeb 	vcmpe.f32	s16, s23
d00407a6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00407aa:	f77f af0d 	ble.w	d00405c8 <main+0x378>
d00407ae:	eeb0 ba4d 	vmov.f32	s22, s26
d00407b2:	eddf da21 	vldr	s27, [pc, #132]	; d0040838 <main+0x5e8>
d00407b6:	eef0 aa6c 	vmov.f32	s21, s25
d00407ba:	ed9f 8a20 	vldr	s16, [pc, #128]	; d004083c <main+0x5ec>
d00407be:	eeb0 aa4c 	vmov.f32	s20, s24
d00407c2:	e71b      	b.n	d00405fc <main+0x3ac>
d00407c4:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d00407c8:	7be3      	ldrb	r3, [r4, #15]
d00407ca:	f8db 0000 	ldr.w	r0, [fp]
d00407ce:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00407d2:	f8da 1000 	ldr.w	r1, [sl]
d00407d6:	681b      	ldr	r3, [r3, #0]
d00407d8:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00407da:	4798      	blx	r3
d00407dc:	f8da 3000 	ldr.w	r3, [sl]
d00407e0:	6818      	ldr	r0, [r3, #0]
d00407e2:	f000 f847 	bl	d0040874 <set3DRenderBuffer>
d00407e6:	e7a5      	b.n	d0040734 <main+0x4e4>
d00407e8:	eeb1 1a4b 	vneg.f32	s2, s22
d00407ec:	ed9f 0a14 	vldr	s0, [pc, #80]	; d0040840 <main+0x5f0>
d00407f0:	eef0 0a68 	vmov.f32	s1, s17
d00407f4:	4630      	mov	r0, r6
d00407f6:	f002 fd67 	bl	d00432c8 <cameraMove>
d00407fa:	e76d      	b.n	d00406d8 <main+0x488>
d00407fc:	eeb0 1a4b 	vmov.f32	s2, s22
d0040800:	ed9f 0a0f 	vldr	s0, [pc, #60]	; d0040840 <main+0x5f0>
d0040804:	eef0 0a68 	vmov.f32	s1, s17
d0040808:	4630      	mov	r0, r6
d004080a:	f002 fd5d 	bl	d00432c8 <cameraMove>
d004080e:	e760      	b.n	d00406d2 <main+0x482>
d0040810:	eef1 0a60 	vneg.f32	s1, s1
d0040814:	2101      	movs	r1, #1
d0040816:	eeb0 1a68 	vmov.f32	s2, s17
d004081a:	ed9f 0a09 	vldr	s0, [pc, #36]	; d0040840 <main+0x5f0>
d004081e:	4630      	mov	r0, r6
d0040820:	f002 fb84 	bl	d0042f2c <cameraTurn>
d0040824:	e72e      	b.n	d0040684 <main+0x434>
d0040826:	bf00      	nop
d0040828:	d00e1d20 	.word	0xd00e1d20
d004082c:	d00e1d45 	.word	0xd00e1d45
d0040830:	d00e1d44 	.word	0xd00e1d44
d0040834:	d00e1d21 	.word	0xd00e1d21
d0040838:	bb9374bc 	.word	0xbb9374bc
d004083c:	3e19999a 	.word	0x3e19999a
d0040840:	00000000 	.word	0x00000000

d0040844 <meshSetDefaultMaterial>:
d0040844:	b148      	cbz	r0, d004085a <meshSetDefaultMaterial+0x16>
d0040846:	2300      	movs	r3, #0
d0040848:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d004084c:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
d0040850:	6203      	str	r3, [r0, #32]
d0040852:	6241      	str	r1, [r0, #36]	; 0x24
d0040854:	62c2      	str	r2, [r0, #44]	; 0x2c
d0040856:	6303      	str	r3, [r0, #48]	; 0x30
d0040858:	6283      	str	r3, [r0, #40]	; 0x28
d004085a:	4770      	bx	lr

d004085c <meshSetMaterial>:
d004085c:	b148      	cbz	r0, d0040872 <meshSetMaterial+0x16>
d004085e:	ed80 0a08 	vstr	s0, [r0, #32]
d0040862:	edc0 0a09 	vstr	s1, [r0, #36]	; 0x24
d0040866:	ed80 1a0c 	vstr	s2, [r0, #48]	; 0x30
d004086a:	edc0 1a0a 	vstr	s3, [r0, #40]	; 0x28
d004086e:	ed80 2a0b 	vstr	s4, [r0, #44]	; 0x2c
d0040872:	4770      	bx	lr

d0040874 <set3DRenderBuffer>:
d0040874:	4b01      	ldr	r3, [pc, #4]	; (d004087c <set3DRenderBuffer+0x8>)
d0040876:	6018      	str	r0, [r3, #0]
d0040878:	4770      	bx	lr
d004087a:	bf00      	nop
d004087c:	d00e1d64 	.word	0xd00e1d64

d0040880 <putPixel>:
d0040880:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0040884:	d209      	bcs.n	d004089a <putPixel+0x1a>
d0040886:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d004088a:	d206      	bcs.n	d004089a <putPixel+0x1a>
d004088c:	4b03      	ldr	r3, [pc, #12]	; (d004089c <putPixel+0x1c>)
d004088e:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d0040892:	681b      	ldr	r3, [r3, #0]
d0040894:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d0040898:	5442      	strb	r2, [r0, r1]
d004089a:	4770      	bx	lr
d004089c:	d00e1d64 	.word	0xd00e1d64

d00408a0 <drawLine>:
d00408a0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00408a4:	b085      	sub	sp, #20
d00408a6:	eba2 0c00 	sub.w	ip, r2, r0
d00408aa:	eba3 0901 	sub.w	r9, r3, r1
d00408ae:	f240 1edf 	movw	lr, #479	; 0x1df
d00408b2:	f89d 4038 	ldrb.w	r4, [sp, #56]	; 0x38
d00408b6:	f240 1a3f 	movw	sl, #319	; 0x13f
d00408ba:	f8df b07c 	ldr.w	fp, [pc, #124]	; d0040938 <drawLine+0x98>
d00408be:	9401      	str	r4, [sp, #4]
d00408c0:	4282      	cmp	r2, r0
d00408c2:	bfcc      	ite	gt
d00408c4:	2401      	movgt	r4, #1
d00408c6:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d00408ca:	9402      	str	r4, [sp, #8]
d00408cc:	428b      	cmp	r3, r1
d00408ce:	bfcc      	ite	gt
d00408d0:	2401      	movgt	r4, #1
d00408d2:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d00408d6:	f1bc 0f00 	cmp.w	ip, #0
d00408da:	9403      	str	r4, [sp, #12]
d00408dc:	bfb8      	it	lt
d00408de:	f1cc 0c00 	rsblt	ip, ip, #0
d00408e2:	f1b9 0f00 	cmp.w	r9, #0
d00408e6:	bfb8      	it	lt
d00408e8:	f1c9 0900 	rsblt	r9, r9, #0
d00408ec:	ebac 0409 	sub.w	r4, ip, r9
d00408f0:	f1c9 0800 	rsb	r8, r9, #0
d00408f4:	4570      	cmp	r0, lr
d00408f6:	eb00 0780 	add.w	r7, r0, r0, lsl #2
d00408fa:	ea4f 0644 	mov.w	r6, r4, lsl #1
d00408fe:	d807      	bhi.n	d0040910 <drawLine+0x70>
d0040900:	4551      	cmp	r1, sl
d0040902:	d805      	bhi.n	d0040910 <drawLine+0x70>
d0040904:	f8db 5000 	ldr.w	r5, [fp]
d0040908:	eb05 1587 	add.w	r5, r5, r7, lsl #6
d004090c:	9f01      	ldr	r7, [sp, #4]
d004090e:	546f      	strb	r7, [r5, r1]
d0040910:	4290      	cmp	r0, r2
d0040912:	d101      	bne.n	d0040918 <drawLine+0x78>
d0040914:	4299      	cmp	r1, r3
d0040916:	d00c      	beq.n	d0040932 <drawLine+0x92>
d0040918:	ebb8 0f44 	cmp.w	r8, r4, lsl #1
d004091c:	dc05      	bgt.n	d004092a <drawLine+0x8a>
d004091e:	9d02      	ldr	r5, [sp, #8]
d0040920:	45b4      	cmp	ip, r6
d0040922:	eba4 0409 	sub.w	r4, r4, r9
d0040926:	4428      	add	r0, r5
d0040928:	dbe4      	blt.n	d00408f4 <drawLine+0x54>
d004092a:	9d03      	ldr	r5, [sp, #12]
d004092c:	4464      	add	r4, ip
d004092e:	4429      	add	r1, r5
d0040930:	e7e0      	b.n	d00408f4 <drawLine+0x54>
d0040932:	b005      	add	sp, #20
d0040934:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040938:	d00e1d64 	.word	0xd00e1d64

d004093c <shadeColor>:
d004093c:	2900      	cmp	r1, #0
d004093e:	db09      	blt.n	d0040954 <shadeColor+0x18>
d0040940:	2904      	cmp	r1, #4
d0040942:	dc09      	bgt.n	d0040958 <shadeColor+0x1c>
d0040944:	0109      	lsls	r1, r1, #4
d0040946:	b2c9      	uxtb	r1, r1
d0040948:	f000 000f 	and.w	r0, r0, #15
d004094c:	3020      	adds	r0, #32
d004094e:	4408      	add	r0, r1
d0040950:	b2c0      	uxtb	r0, r0
d0040952:	4770      	bx	lr
d0040954:	2100      	movs	r1, #0
d0040956:	e7f7      	b.n	d0040948 <shadeColor+0xc>
d0040958:	2010      	movs	r0, #16
d004095a:	4770      	bx	lr

d004095c <fillTriangleFlat>:
d004095c:	eddf 7ad1 	vldr	s15, [pc, #836]	; d0040ca4 <fillTriangleFlat+0x348>
d0040960:	eef4 0ae7 	vcmpe.f32	s1, s15
d0040964:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040968:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004096c:	eeb4 1ae7 	vcmpe.f32	s2, s15
d0040970:	ed2d 8b10 	vpush	{d8-d15}
d0040974:	b089      	sub	sp, #36	; 0x24
d0040976:	9304      	str	r3, [sp, #16]
d0040978:	bf94      	ite	ls
d004097a:	2301      	movls	r3, #1
d004097c:	2300      	movhi	r3, #0
d004097e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040982:	9001      	str	r0, [sp, #4]
d0040984:	9102      	str	r1, [sp, #8]
d0040986:	bf98      	it	ls
d0040988:	f043 0301 	orrls.w	r3, r3, #1
d004098c:	9203      	str	r2, [sp, #12]
d004098e:	f8bd 4090 	ldrh.w	r4, [sp, #144]	; 0x90
d0040992:	f8bd 0094 	ldrh.w	r0, [sp, #148]	; 0x94
d0040996:	f8bd 1098 	ldrh.w	r1, [sp, #152]	; 0x98
d004099a:	f89d 209c 	ldrb.w	r2, [sp, #156]	; 0x9c
d004099e:	2b00      	cmp	r3, #0
d00409a0:	f040 8154 	bne.w	d0040c4c <fillTriangleFlat+0x2f0>
d00409a4:	eeb4 0ae7 	vcmpe.f32	s0, s15
d00409a8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00409ac:	bf94      	ite	ls
d00409ae:	2701      	movls	r7, #1
d00409b0:	2700      	movhi	r7, #0
d00409b2:	f240 814b 	bls.w	d0040c4c <fillTriangleFlat+0x2f0>
d00409b6:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00409ba:	ee07 4a10 	vmov	s14, r4
d00409be:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d00409c2:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d00409c6:	ee87 8a80 	vdiv.f32	s16, s15, s0
d00409ca:	ee87 2a81 	vdiv.f32	s4, s15, s2
d00409ce:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d00409d2:	ee07 0a90 	vmov	s15, r0
d00409d6:	ee71 1aa6 	vadd.f32	s3, s3, s13
d00409da:	eef8 5a67 	vcvt.f32.u32	s11, s15
d00409de:	ee07 1a90 	vmov	s15, r1
d00409e2:	ee27 7a08 	vmul.f32	s14, s14, s16
d00409e6:	eeb8 3a67 	vcvt.f32.u32	s6, s15
d00409ea:	eefd 7ae1 	vcvt.s32.f32	s15, s3
d00409ee:	ee23 3a02 	vmul.f32	s6, s6, s4
d00409f2:	ee17 3a90 	vmov	r3, s15
d00409f6:	2b00      	cmp	r3, #0
d00409f8:	ee65 5a80 	vmul.f32	s11, s11, s0
d00409fc:	f2c0 812d 	blt.w	d0040c5a <fillTriangleFlat+0x2fe>
d0040a00:	2b04      	cmp	r3, #4
d0040a02:	f340 8128 	ble.w	d0040c56 <fillTriangleFlat+0x2fa>
d0040a06:	2710      	movs	r7, #16
d0040a08:	eddd 7a02 	vldr	s15, [sp, #8]
d0040a0c:	eddd 6a23 	vldr	s13, [sp, #140]	; 0x8c
d0040a10:	eeb8 5ae7 	vcvt.f32.s32	s10, s15
d0040a14:	eddd 7a04 	vldr	s15, [sp, #16]
d0040a18:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0040a1c:	eef8 3ae7 	vcvt.f32.s32	s7, s15
d0040a20:	eddd 7a01 	vldr	s15, [sp, #4]
d0040a24:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d0040a28:	eddd 7a03 	vldr	s15, [sp, #12]
d0040a2c:	eeb4 5ae3 	vcmpe.f32	s10, s7
d0040a30:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d0040a34:	eddd 7a22 	vldr	s15, [sp, #136]	; 0x88
d0040a38:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040a3c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040a40:	f300 8111 	bgt.w	d0040c66 <fillTriangleFlat+0x30a>
d0040a44:	eeb4 5ae6 	vcmpe.f32	s10, s13
d0040a48:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040a4c:	f300 81ee 	bgt.w	d0040e2c <fillTriangleFlat+0x4d0>
d0040a50:	eef4 3ae6 	vcmpe.f32	s7, s13
d0040a54:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040a58:	dd17      	ble.n	d0040a8a <fillTriangleFlat+0x12e>
d0040a5a:	eeb0 1a65 	vmov.f32	s2, s11
d0040a5e:	eef0 1a40 	vmov.f32	s3, s0
d0040a62:	eef0 2a63 	vmov.f32	s5, s7
d0040a66:	eeb0 4a64 	vmov.f32	s8, s9
d0040a6a:	eef0 5a43 	vmov.f32	s11, s6
d0040a6e:	eeb0 0a42 	vmov.f32	s0, s4
d0040a72:	eef0 3a66 	vmov.f32	s7, s13
d0040a76:	eef0 4a67 	vmov.f32	s9, s15
d0040a7a:	eeb0 3a41 	vmov.f32	s6, s2
d0040a7e:	eeb0 2a61 	vmov.f32	s4, s3
d0040a82:	eef0 6a62 	vmov.f32	s13, s5
d0040a86:	eef0 7a44 	vmov.f32	s15, s8
d0040a8a:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d0040a8e:	ee75 2a04 	vadd.f32	s5, s10, s8
d0040a92:	ee36 4a84 	vadd.f32	s8, s13, s8
d0040a96:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d0040a9a:	eebd 4ac4 	vcvt.s32.f32	s8, s8
d0040a9e:	ee12 3a90 	vmov	r3, s5
d0040aa2:	ee14 2a10 	vmov	r2, s8
d0040aa6:	4293      	cmp	r3, r2
d0040aa8:	f000 80d0 	beq.w	d0040c4c <fillTriangleFlat+0x2f0>
d0040aac:	ee76 2ac5 	vsub.f32	s5, s13, s10
d0040ab0:	ed9f 9a7c 	vldr	s18, [pc, #496]	; d0040ca4 <fillTriangleFlat+0x348>
d0040ab4:	eef4 2ac9 	vcmpe.f32	s5, s18
d0040ab8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040abc:	f240 80c6 	bls.w	d0040c4c <fillTriangleFlat+0x2f0>
d0040ac0:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d0040ac4:	ee37 1ac6 	vsub.f32	s2, s15, s12
d0040ac8:	ee72 0a48 	vsub.f32	s1, s4, s16
d0040acc:	ee81 4aa2 	vdiv.f32	s8, s3, s5
d0040ad0:	ee73 2ac5 	vsub.f32	s5, s7, s10
d0040ad4:	ee73 8a47 	vsub.f32	s17, s6, s14
d0040ad8:	eef4 2ac9 	vcmpe.f32	s5, s18
d0040adc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040ae0:	ee21 1a04 	vmul.f32	s2, s2, s8
d0040ae4:	ee60 0a84 	vmul.f32	s1, s1, s8
d0040ae8:	ee68 8a84 	vmul.f32	s17, s17, s8
d0040aec:	f300 80e2 	bgt.w	d0040cb4 <fillTriangleFlat+0x358>
d0040af0:	ee36 4ae3 	vsub.f32	s8, s13, s7
d0040af4:	eeb4 4ac9 	vcmpe.f32	s8, s18
d0040af8:	ed8d 4a01 	vstr	s8, [sp, #4]
d0040afc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040b00:	f340 80a4 	ble.w	d0040c4c <fillTriangleFlat+0x2f0>
d0040b04:	eec1 9a84 	vdiv.f32	s19, s3, s8
d0040b08:	eef4 2ac9 	vcmpe.f32	s5, s18
d0040b0c:	ee77 7ae4 	vsub.f32	s15, s15, s9
d0040b10:	ee32 4a40 	vsub.f32	s8, s4, s0
d0040b14:	ee33 3a65 	vsub.f32	s6, s6, s11
d0040b18:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040b1c:	ee67 eaa9 	vmul.f32	s29, s15, s19
d0040b20:	ee64 fa29 	vmul.f32	s31, s8, s19
d0040b24:	ee23 fa29 	vmul.f32	s30, s6, s19
d0040b28:	f300 8315 	bgt.w	d0041156 <fillTriangleFlat+0x7fa>
d0040b2c:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0040b30:	edcd 7a02 	vstr	s15, [sp, #8]
d0040b34:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0040b38:	f240 133f 	movw	r3, #319	; 0x13f
d0040b3c:	9a02      	ldr	r2, [sp, #8]
d0040b3e:	ee17 ea90 	vmov	lr, s15
d0040b42:	ea22 7be2 	bic.w	fp, r2, r2, asr #31
d0040b46:	f10e 3eff 	add.w	lr, lr, #4294967295	; 0xffffffff
d0040b4a:	459e      	cmp	lr, r3
d0040b4c:	bfa8      	it	ge
d0040b4e:	469e      	movge	lr, r3
d0040b50:	45f3      	cmp	fp, lr
d0040b52:	dc7b      	bgt.n	d0040c4c <fillTriangleFlat+0x2f0>
d0040b54:	ee07 ba90 	vmov	s15, fp
d0040b58:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0040b5c:	f10e 0e01 	add.w	lr, lr, #1
d0040b60:	ed9f 9a50 	vldr	s18, [pc, #320]	; d0040ca4 <fillTriangleFlat+0x348>
d0040b64:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040b68:	eddf 1a4f 	vldr	s3, [pc, #316]	; d0040ca8 <fillTriangleFlat+0x34c>
d0040b6c:	ed9f 2a4f 	vldr	s4, [pc, #316]	; d0040cac <fillTriangleFlat+0x350>
d0040b70:	eddf 9a4f 	vldr	s19, [pc, #316]	; d0040cb0 <fillTriangleFlat+0x354>
d0040b74:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0040b78:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0040b7c:	ee77 3ae3 	vsub.f32	s7, s15, s7
d0040b80:	eea1 6a05 	vfma.f32	s12, s2, s10
d0040b84:	eea0 8a85 	vfma.f32	s16, s1, s10
d0040b88:	eea8 7a85 	vfma.f32	s14, s17, s10
d0040b8c:	eee3 4aae 	vfma.f32	s9, s7, s29
d0040b90:	eea3 0aaf 	vfma.f32	s0, s7, s31
d0040b94:	eeef 5a23 	vfma.f32	s11, s30, s7
d0040b98:	e032      	b.n	d0040c00 <fillTriangleFlat+0x2a4>
d0040b9a:	eef0 3a47 	vmov.f32	s7, s14
d0040b9e:	eef0 2a48 	vmov.f32	s5, s16
d0040ba2:	eef0 6a46 	vmov.f32	s13, s12
d0040ba6:	eeb0 3a65 	vmov.f32	s6, s11
d0040baa:	eeb0 5a40 	vmov.f32	s10, s0
d0040bae:	eeb0 4a64 	vmov.f32	s8, s9
d0040bb2:	fefa 7a66 	vrintp.f32	s15, s13
d0040bb6:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0040bba:	f240 13df 	movw	r3, #479	; 0x1df
d0040bbe:	ee17 6a90 	vmov	r6, s15
d0040bc2:	fefa 7a44 	vrintp.f32	s15, s8
d0040bc6:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0040bca:	3e01      	subs	r6, #1
d0040bcc:	ee17 4a90 	vmov	r4, s15
d0040bd0:	429e      	cmp	r6, r3
d0040bd2:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d0040bd6:	bfa8      	it	ge
d0040bd8:	461e      	movge	r6, r3
d0040bda:	42a6      	cmp	r6, r4
d0040bdc:	f280 8158 	bge.w	d0040e90 <fillTriangleFlat+0x534>
d0040be0:	f10b 0b01 	add.w	fp, fp, #1
d0040be4:	ee36 6a01 	vadd.f32	s12, s12, s2
d0040be8:	ee38 8a20 	vadd.f32	s16, s16, s1
d0040bec:	45f3      	cmp	fp, lr
d0040bee:	ee37 7a28 	vadd.f32	s14, s14, s17
d0040bf2:	ee74 4aae 	vadd.f32	s9, s9, s29
d0040bf6:	ee30 0a2f 	vadd.f32	s0, s0, s31
d0040bfa:	ee75 5a8f 	vadd.f32	s11, s11, s30
d0040bfe:	d025      	beq.n	d0040c4c <fillTriangleFlat+0x2f0>
d0040c00:	eeb4 6ae4 	vcmpe.f32	s12, s9
d0040c04:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040c08:	dcc7      	bgt.n	d0040b9a <fillTriangleFlat+0x23e>
d0040c0a:	eef0 3a65 	vmov.f32	s7, s11
d0040c0e:	eef0 2a40 	vmov.f32	s5, s0
d0040c12:	eef0 6a64 	vmov.f32	s13, s9
d0040c16:	eeb0 3a47 	vmov.f32	s6, s14
d0040c1a:	eeb0 5a48 	vmov.f32	s10, s16
d0040c1e:	eeb0 4a46 	vmov.f32	s8, s12
d0040c22:	e7c6      	b.n	d0040bb2 <fillTriangleFlat+0x256>
d0040c24:	eddd 6a03 	vldr	s13, [sp, #12]
d0040c28:	eddd 4a04 	vldr	s9, [sp, #16]
d0040c2c:	ed9d 7a05 	vldr	s14, [sp, #20]
d0040c30:	ed9d 8a06 	vldr	s16, [sp, #24]
d0040c34:	ed9d 5a07 	vldr	s10, [sp, #28]
d0040c38:	eddf 7a1a 	vldr	s15, [pc, #104]	; d0040ca4 <fillTriangleFlat+0x348>
d0040c3c:	ed9d 4a01 	vldr	s8, [sp, #4]
d0040c40:	eeb4 4ae7 	vcmpe.f32	s8, s15
d0040c44:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040c48:	f73f af74 	bgt.w	d0040b34 <fillTriangleFlat+0x1d8>
d0040c4c:	b009      	add	sp, #36	; 0x24
d0040c4e:	ecbd 8b10 	vpop	{d8-d15}
d0040c52:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040c56:	011b      	lsls	r3, r3, #4
d0040c58:	b2df      	uxtb	r7, r3
d0040c5a:	f002 020f 	and.w	r2, r2, #15
d0040c5e:	3220      	adds	r2, #32
d0040c60:	4417      	add	r7, r2
d0040c62:	b2ff      	uxtb	r7, r7
d0040c64:	e6d0      	b.n	d0040a08 <fillTriangleFlat+0xac>
d0040c66:	eef4 3ae6 	vcmpe.f32	s7, s13
d0040c6a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040c6e:	f340 80f6 	ble.w	d0040e5e <fillTriangleFlat+0x502>
d0040c72:	eeb0 1a43 	vmov.f32	s2, s6
d0040c76:	eef0 1a42 	vmov.f32	s3, s4
d0040c7a:	eef0 2a66 	vmov.f32	s5, s13
d0040c7e:	eeb0 4a67 	vmov.f32	s8, s15
d0040c82:	eeb0 3a47 	vmov.f32	s6, s14
d0040c86:	eeb0 2a48 	vmov.f32	s4, s16
d0040c8a:	eef0 6a45 	vmov.f32	s13, s10
d0040c8e:	eef0 7a46 	vmov.f32	s15, s12
d0040c92:	eeb0 7a41 	vmov.f32	s14, s2
d0040c96:	eeb0 8a61 	vmov.f32	s16, s3
d0040c9a:	eeb0 5a62 	vmov.f32	s10, s5
d0040c9e:	eeb0 6a44 	vmov.f32	s12, s8
d0040ca2:	e6f2      	b.n	d0040a8a <fillTriangleFlat+0x12e>
d0040ca4:	38d1b717 	.word	0x38d1b717
d0040ca8:	33d6bf95 	.word	0x33d6bf95
d0040cac:	00000000 	.word	0x00000000
d0040cb0:	477fff00 	.word	0x477fff00
d0040cb4:	ee81 4aa2 	vdiv.f32	s8, s3, s5
d0040cb8:	ee76 aae3 	vsub.f32	s21, s13, s7
d0040cbc:	ee34 aac6 	vsub.f32	s20, s9, s12
d0040cc0:	ee70 9a48 	vsub.f32	s19, s0, s16
d0040cc4:	ee75 2ac7 	vsub.f32	s5, s11, s14
d0040cc8:	edcd aa01 	vstr	s21, [sp, #4]
d0040ccc:	eef4 aac9 	vcmpe.f32	s21, s18
d0040cd0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040cd4:	ee2a aa04 	vmul.f32	s20, s20, s8
d0040cd8:	ee69 9a84 	vmul.f32	s19, s19, s8
d0040cdc:	ee22 4a84 	vmul.f32	s8, s5, s8
d0040ce0:	eeb0 ba4a 	vmov.f32	s22, s20
d0040ce4:	eef0 da44 	vmov.f32	s27, s8
d0040ce8:	f340 822e 	ble.w	d0041148 <fillTriangleFlat+0x7ec>
d0040cec:	eec1 2aaa 	vdiv.f32	s5, s3, s21
d0040cf0:	ee77 7ae4 	vsub.f32	s15, s15, s9
d0040cf4:	ee32 4a40 	vsub.f32	s8, s4, s0
d0040cf8:	ee33 3a65 	vsub.f32	s6, s6, s11
d0040cfc:	ee67 eaa2 	vmul.f32	s29, s15, s5
d0040d00:	ee64 fa22 	vmul.f32	s31, s8, s5
d0040d04:	ee23 fa22 	vmul.f32	s30, s6, s5
d0040d08:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0040d0c:	f240 133f 	movw	r3, #319	; 0x13f
d0040d10:	ee17 2a90 	vmov	r2, s15
d0040d14:	edcd 7a02 	vstr	s15, [sp, #8]
d0040d18:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d0040d1c:	f102 3bff 	add.w	fp, r2, #4294967295	; 0xffffffff
d0040d20:	ee17 aa90 	vmov	sl, s15
d0040d24:	459b      	cmp	fp, r3
d0040d26:	ea2a 7aea 	bic.w	sl, sl, sl, asr #31
d0040d2a:	bfa8      	it	ge
d0040d2c:	469b      	movge	fp, r3
d0040d2e:	45d3      	cmp	fp, sl
d0040d30:	db82      	blt.n	d0040c38 <fillTriangleFlat+0x2dc>
d0040d32:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0040d36:	f10b 0b01 	add.w	fp, fp, #1
d0040d3a:	eeb0 aa46 	vmov.f32	s20, s12
d0040d3e:	ed1f da26 	vldr	s26, [pc, #-152]	; d0040ca8 <fillTriangleFlat+0x34c>
d0040d42:	eef0 aa46 	vmov.f32	s21, s12
d0040d46:	ed1f 3a27 	vldr	s6, [pc, #-156]	; d0040cac <fillTriangleFlat+0x350>
d0040d4a:	ee37 4ac5 	vsub.f32	s8, s15, s10
d0040d4e:	ee07 aa90 	vmov	s15, sl
d0040d52:	eef0 ca48 	vmov.f32	s25, s16
d0040d56:	ed1f 2a2a 	vldr	s4, [pc, #-168]	; d0040cb0 <fillTriangleFlat+0x354>
d0040d5a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040d5e:	edcd 6a03 	vstr	s13, [sp, #12]
d0040d62:	eeb0 ca47 	vmov.f32	s24, s14
d0040d66:	edcd 4a04 	vstr	s9, [sp, #16]
d0040d6a:	eeb0 9a4b 	vmov.f32	s18, s22
d0040d6e:	ed8d 7a05 	vstr	s14, [sp, #20]
d0040d72:	ee77 7a84 	vadd.f32	s15, s15, s8
d0040d76:	ed8d 8a06 	vstr	s16, [sp, #24]
d0040d7a:	eef0 ba48 	vmov.f32	s23, s16
d0040d7e:	ed8d 5a07 	vstr	s10, [sp, #28]
d0040d82:	eea7 aa8b 	vfma.f32	s20, s15, s22
d0040d86:	eeb0 ba47 	vmov.f32	s22, s14
d0040d8a:	eee1 aa27 	vfma.f32	s21, s2, s15
d0040d8e:	eee0 caa7 	vfma.f32	s25, s1, s15
d0040d92:	eea8 caa7 	vfma.f32	s24, s17, s15
d0040d96:	eee7 baa9 	vfma.f32	s23, s15, s19
d0040d9a:	eea7 baad 	vfma.f32	s22, s15, s27
d0040d9e:	e033      	b.n	d0040e08 <fillTriangleFlat+0x4ac>
d0040da0:	eeb0 4a4c 	vmov.f32	s8, s24
d0040da4:	eef0 4a6c 	vmov.f32	s9, s25
d0040da8:	eef0 7a6a 	vmov.f32	s15, s21
d0040dac:	eeb0 5a4b 	vmov.f32	s10, s22
d0040db0:	eeb0 7a6b 	vmov.f32	s14, s23
d0040db4:	eef0 6a4a 	vmov.f32	s13, s20
d0040db8:	fefa 2a67 	vrintp.f32	s5, s15
d0040dbc:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d0040dc0:	f240 13df 	movw	r3, #479	; 0x1df
d0040dc4:	ee12 6a90 	vmov	r6, s5
d0040dc8:	fefa 2a66 	vrintp.f32	s5, s13
d0040dcc:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d0040dd0:	3e01      	subs	r6, #1
d0040dd2:	ee12 4a90 	vmov	r4, s5
d0040dd6:	429e      	cmp	r6, r3
d0040dd8:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d0040ddc:	bfa8      	it	ge
d0040dde:	461e      	movge	r6, r3
d0040de0:	42a6      	cmp	r6, r4
d0040de2:	f280 80fd 	bge.w	d0040fe0 <fillTriangleFlat+0x684>
d0040de6:	f10a 0a01 	add.w	sl, sl, #1
d0040dea:	ee7a aa81 	vadd.f32	s21, s21, s2
d0040dee:	ee7c caa0 	vadd.f32	s25, s25, s1
d0040df2:	45da      	cmp	sl, fp
d0040df4:	ee3c ca28 	vadd.f32	s24, s24, s17
d0040df8:	ee3a aa09 	vadd.f32	s20, s20, s18
d0040dfc:	ee7b baa9 	vadd.f32	s23, s23, s19
d0040e00:	ee3b ba2d 	vadd.f32	s22, s22, s27
d0040e04:	f43f af0e 	beq.w	d0040c24 <fillTriangleFlat+0x2c8>
d0040e08:	eef4 aaca 	vcmpe.f32	s21, s20
d0040e0c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040e10:	dcc6      	bgt.n	d0040da0 <fillTriangleFlat+0x444>
d0040e12:	eeb0 4a4b 	vmov.f32	s8, s22
d0040e16:	eef0 4a6b 	vmov.f32	s9, s23
d0040e1a:	eef0 7a4a 	vmov.f32	s15, s20
d0040e1e:	eeb0 5a4c 	vmov.f32	s10, s24
d0040e22:	eeb0 7a6c 	vmov.f32	s14, s25
d0040e26:	eef0 6a6a 	vmov.f32	s13, s21
d0040e2a:	e7c5      	b.n	d0040db8 <fillTriangleFlat+0x45c>
d0040e2c:	eeb0 1a47 	vmov.f32	s2, s14
d0040e30:	eef0 1a48 	vmov.f32	s3, s16
d0040e34:	eef0 2a45 	vmov.f32	s5, s10
d0040e38:	eeb0 4a46 	vmov.f32	s8, s12
d0040e3c:	eeb0 7a43 	vmov.f32	s14, s6
d0040e40:	eeb0 8a42 	vmov.f32	s16, s4
d0040e44:	eeb0 5a66 	vmov.f32	s10, s13
d0040e48:	eeb0 6a67 	vmov.f32	s12, s15
d0040e4c:	eeb0 3a41 	vmov.f32	s6, s2
d0040e50:	eeb0 2a61 	vmov.f32	s4, s3
d0040e54:	eef0 6a62 	vmov.f32	s13, s5
d0040e58:	eef0 7a44 	vmov.f32	s15, s8
d0040e5c:	e5f8      	b.n	d0040a50 <fillTriangleFlat+0xf4>
d0040e5e:	eeb0 1a47 	vmov.f32	s2, s14
d0040e62:	eef0 1a48 	vmov.f32	s3, s16
d0040e66:	eef0 2a45 	vmov.f32	s5, s10
d0040e6a:	eeb0 4a46 	vmov.f32	s8, s12
d0040e6e:	eeb0 7a65 	vmov.f32	s14, s11
d0040e72:	eeb0 8a40 	vmov.f32	s16, s0
d0040e76:	eeb0 5a63 	vmov.f32	s10, s7
d0040e7a:	eeb0 6a64 	vmov.f32	s12, s9
d0040e7e:	eef0 5a41 	vmov.f32	s11, s2
d0040e82:	eeb0 0a61 	vmov.f32	s0, s3
d0040e86:	eef0 3a62 	vmov.f32	s7, s5
d0040e8a:	eef0 4a44 	vmov.f32	s9, s8
d0040e8e:	e5df      	b.n	d0040a50 <fillTriangleFlat+0xf4>
d0040e90:	ee76 6ac4 	vsub.f32	s13, s13, s8
d0040e94:	eef4 6ac9 	vcmpe.f32	s13, s18
d0040e98:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040e9c:	f340 814f 	ble.w	d004113e <fillTriangleFlat+0x7e2>
d0040ea0:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0040ea4:	ee72 2ac5 	vsub.f32	s5, s5, s10
d0040ea8:	ee73 3ac3 	vsub.f32	s7, s7, s6
d0040eac:	ee87 aaa6 	vdiv.f32	s20, s15, s13
d0040eb0:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0040eb4:	ee37 4ac4 	vsub.f32	s8, s15, s8
d0040eb8:	ee07 4a90 	vmov	s15, r4
d0040ebc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040ec0:	ee77 7a84 	vadd.f32	s15, s15, s8
d0040ec4:	ee62 2a8a 	vmul.f32	s5, s5, s20
d0040ec8:	ee23 aa8a 	vmul.f32	s20, s7, s20
d0040ecc:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0040ed0:	eea7 3a8a 	vfma.f32	s6, s15, s20
d0040ed4:	ebcb 180b 	rsb	r8, fp, fp, lsl #4
d0040ed8:	4ba3      	ldr	r3, [pc, #652]	; (d0041168 <fillTriangleFlat+0x80c>)
d0040eda:	eb04 0c84 	add.w	ip, r4, r4, lsl #2
d0040ede:	4aa3      	ldr	r2, [pc, #652]	; (d004116c <fillTriangleFlat+0x810>)
d0040ee0:	681b      	ldr	r3, [r3, #0]
d0040ee2:	eb04 1848 	add.w	r8, r4, r8, lsl #5
d0040ee6:	eb0b 1c8c 	add.w	ip, fp, ip, lsl #6
d0040eea:	eef6 3a00 	vmov.f32	s7, #96	; 0x3f000000  0.5
d0040eee:	eb02 0848 	add.w	r8, r2, r8, lsl #1
d0040ef2:	449c      	add	ip, r3
d0040ef4:	e011      	b.n	d0040f1a <fillTriangleFlat+0x5be>
d0040ef6:	ee07 1a90 	vmov	s15, r1
d0040efa:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0040efe:	eb08 0841 	add.w	r8, r8, r1, lsl #1
d0040f02:	440c      	add	r4, r1
d0040f04:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040f08:	eb0c 1c83 	add.w	ip, ip, r3, lsl #6
d0040f0c:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0040f10:	eea7 3a8a 	vfma.f32	s6, s15, s20
d0040f14:	42a6      	cmp	r6, r4
d0040f16:	f6ff ae63 	blt.w	d0040be0 <fillTriangleFlat+0x284>
d0040f1a:	eba6 0904 	sub.w	r9, r6, r4
d0040f1e:	eeb4 5ae1 	vcmpe.f32	s10, s3
d0040f22:	f109 0101 	add.w	r1, r9, #1
d0040f26:	2930      	cmp	r1, #48	; 0x30
d0040f28:	bfa8      	it	ge
d0040f2a:	2130      	movge	r1, #48	; 0x30
d0040f2c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040f30:	d9e1      	bls.n	d0040ef6 <fillTriangleFlat+0x59a>
d0040f32:	f1b9 0f00 	cmp.w	r9, #0
d0040f36:	eec3 6a05 	vdiv.f32	s13, s6, s10
d0040f3a:	dd4d      	ble.n	d0040fd8 <fillTriangleFlat+0x67c>
d0040f3c:	1e4b      	subs	r3, r1, #1
d0040f3e:	ee07 3a90 	vmov	s15, r3
d0040f42:	eeb0 4a45 	vmov.f32	s8, s10
d0040f46:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040f4a:	eea7 4aa2 	vfma.f32	s8, s15, s5
d0040f4e:	eeb4 4ae1 	vcmpe.f32	s8, s3
d0040f52:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040f56:	dd40      	ble.n	d0040fda <fillTriangleFlat+0x67e>
d0040f58:	eeb0 ba43 	vmov.f32	s22, s6
d0040f5c:	eea7 ba8a 	vfma.f32	s22, s15, s20
d0040f60:	eecb aa04 	vdiv.f32	s21, s22, s8
d0040f64:	ee7a aae6 	vsub.f32	s21, s21, s13
d0040f68:	ee8a 4aa7 	vdiv.f32	s8, s21, s15
d0040f6c:	f1a8 0002 	sub.w	r0, r8, #2
d0040f70:	2300      	movs	r3, #0
d0040f72:	fec6 7a82 	vmaxnm.f32	s15, s13, s4
d0040f76:	fec7 7ae9 	vminnm.f32	s15, s15, s19
d0040f7a:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0040f7e:	f830 5f02 	ldrh.w	r5, [r0, #2]!
d0040f82:	3301      	adds	r3, #1
d0040f84:	ee77 7aa3 	vadd.f32	s15, s15, s7
d0040f88:	ea4f 1a82 	mov.w	sl, r2, lsl #6
d0040f8c:	ee76 6a84 	vadd.f32	s13, s13, s8
d0040f90:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0040f94:	ee17 2a90 	vmov	r2, s15
d0040f98:	b292      	uxth	r2, r2
d0040f9a:	4295      	cmp	r5, r2
d0040f9c:	d902      	bls.n	d0040fa4 <fillTriangleFlat+0x648>
d0040f9e:	8002      	strh	r2, [r0, #0]
d0040fa0:	f80c 700a 	strb.w	r7, [ip, sl]
d0040fa4:	4299      	cmp	r1, r3
d0040fa6:	dce4      	bgt.n	d0040f72 <fillTriangleFlat+0x616>
d0040fa8:	f1b9 0f00 	cmp.w	r9, #0
d0040fac:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0040fb0:	ea4f 0241 	mov.w	r2, r1, lsl #1
d0040fb4:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0040fb8:	bfbc      	itt	lt
d0040fba:	2202      	movlt	r2, #2
d0040fbc:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0040fc0:	4490      	add	r8, r2
d0040fc2:	449c      	add	ip, r3
d0040fc4:	ee07 1a90 	vmov	s15, r1
d0040fc8:	440c      	add	r4, r1
d0040fca:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040fce:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0040fd2:	eea7 3a8a 	vfma.f32	s6, s15, s20
d0040fd6:	e79d      	b.n	d0040f14 <fillTriangleFlat+0x5b8>
d0040fd8:	d1f4      	bne.n	d0040fc4 <fillTriangleFlat+0x668>
d0040fda:	eeb0 4a42 	vmov.f32	s8, s4
d0040fde:	e7c5      	b.n	d0040f6c <fillTriangleFlat+0x610>
d0040fe0:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0040fe4:	eddf 2a62 	vldr	s5, [pc, #392]	; d0041170 <fillTriangleFlat+0x814>
d0040fe8:	eef4 7ae2 	vcmpe.f32	s15, s5
d0040fec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040ff0:	f340 80a0 	ble.w	d0041134 <fillTriangleFlat+0x7d8>
d0040ff4:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d0040ff8:	ee74 4ac7 	vsub.f32	s9, s9, s14
d0040ffc:	ee34 4a45 	vsub.f32	s8, s8, s10
d0041000:	eec1 2aa7 	vdiv.f32	s5, s3, s15
d0041004:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0041008:	ee77 6ae6 	vsub.f32	s13, s15, s13
d004100c:	ee07 4a90 	vmov	s15, r4
d0041010:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041014:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0041018:	ee64 4aa2 	vmul.f32	s9, s9, s5
d004101c:	ee24 4a22 	vmul.f32	s8, s8, s5
d0041020:	eea7 7aa4 	vfma.f32	s14, s15, s9
d0041024:	eea7 5a84 	vfma.f32	s10, s15, s8
d0041028:	ebca 1e0a 	rsb	lr, sl, sl, lsl #4
d004102c:	4b4e      	ldr	r3, [pc, #312]	; (d0041168 <fillTriangleFlat+0x80c>)
d004102e:	eb04 0c84 	add.w	ip, r4, r4, lsl #2
d0041032:	4a4e      	ldr	r2, [pc, #312]	; (d004116c <fillTriangleFlat+0x810>)
d0041034:	681b      	ldr	r3, [r3, #0]
d0041036:	eb04 1e4e 	add.w	lr, r4, lr, lsl #5
d004103a:	eb0a 1c8c 	add.w	ip, sl, ip, lsl #6
d004103e:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0041042:	eb02 0e4e 	add.w	lr, r2, lr, lsl #1
d0041046:	449c      	add	ip, r3
d0041048:	e011      	b.n	d004106e <fillTriangleFlat+0x712>
d004104a:	ee07 1a90 	vmov	s15, r1
d004104e:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0041052:	eb0e 0e41 	add.w	lr, lr, r1, lsl #1
d0041056:	440c      	add	r4, r1
d0041058:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004105c:	eb0c 1c83 	add.w	ip, ip, r3, lsl #6
d0041060:	eea7 7aa4 	vfma.f32	s14, s15, s9
d0041064:	eea7 5a84 	vfma.f32	s10, s15, s8
d0041068:	42b4      	cmp	r4, r6
d004106a:	f73f aebc 	bgt.w	d0040de6 <fillTriangleFlat+0x48a>
d004106e:	eba6 0804 	sub.w	r8, r6, r4
d0041072:	eeb4 7acd 	vcmpe.f32	s14, s26
d0041076:	f108 0101 	add.w	r1, r8, #1
d004107a:	2930      	cmp	r1, #48	; 0x30
d004107c:	bfa8      	it	ge
d004107e:	2130      	movge	r1, #48	; 0x30
d0041080:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041084:	d9e1      	bls.n	d004104a <fillTriangleFlat+0x6ee>
d0041086:	f1b8 0f00 	cmp.w	r8, #0
d004108a:	eec5 2a07 	vdiv.f32	s5, s10, s14
d004108e:	dd4d      	ble.n	d004112c <fillTriangleFlat+0x7d0>
d0041090:	1e4b      	subs	r3, r1, #1
d0041092:	ee07 3a90 	vmov	s15, r3
d0041096:	eef0 1a47 	vmov.f32	s3, s14
d004109a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004109e:	eee7 1aa4 	vfma.f32	s3, s15, s9
d00410a2:	eef4 1acd 	vcmpe.f32	s3, s26
d00410a6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00410aa:	dd40      	ble.n	d004112e <fillTriangleFlat+0x7d2>
d00410ac:	eeb0 ea45 	vmov.f32	s28, s10
d00410b0:	eea7 ea84 	vfma.f32	s28, s15, s8
d00410b4:	ee8e 8a21 	vdiv.f32	s16, s28, s3
d00410b8:	ee38 8a62 	vsub.f32	s16, s16, s5
d00410bc:	eec8 1a27 	vdiv.f32	s3, s16, s15
d00410c0:	f1ae 0002 	sub.w	r0, lr, #2
d00410c4:	2200      	movs	r2, #0
d00410c6:	fec2 7a83 	vmaxnm.f32	s15, s5, s6
d00410ca:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d00410ce:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d00410d2:	f830 5f02 	ldrh.w	r5, [r0, #2]!
d00410d6:	3201      	adds	r2, #1
d00410d8:	ee77 7aa6 	vadd.f32	s15, s15, s13
d00410dc:	ea4f 1983 	mov.w	r9, r3, lsl #6
d00410e0:	ee72 2aa1 	vadd.f32	s5, s5, s3
d00410e4:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00410e8:	ee17 3a90 	vmov	r3, s15
d00410ec:	b29b      	uxth	r3, r3
d00410ee:	429d      	cmp	r5, r3
d00410f0:	d902      	bls.n	d00410f8 <fillTriangleFlat+0x79c>
d00410f2:	8003      	strh	r3, [r0, #0]
d00410f4:	f80c 7009 	strb.w	r7, [ip, r9]
d00410f8:	428a      	cmp	r2, r1
d00410fa:	dbe4      	blt.n	d00410c6 <fillTriangleFlat+0x76a>
d00410fc:	f1b8 0f00 	cmp.w	r8, #0
d0041100:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0041104:	ea4f 0241 	mov.w	r2, r1, lsl #1
d0041108:	ea4f 1383 	mov.w	r3, r3, lsl #6
d004110c:	bfbc      	itt	lt
d004110e:	2202      	movlt	r2, #2
d0041110:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0041114:	4496      	add	lr, r2
d0041116:	449c      	add	ip, r3
d0041118:	ee07 1a90 	vmov	s15, r1
d004111c:	440c      	add	r4, r1
d004111e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041122:	eea7 7aa4 	vfma.f32	s14, s15, s9
d0041126:	eea7 5a84 	vfma.f32	s10, s15, s8
d004112a:	e79d      	b.n	d0041068 <fillTriangleFlat+0x70c>
d004112c:	d1f4      	bne.n	d0041118 <fillTriangleFlat+0x7bc>
d004112e:	eef0 1a43 	vmov.f32	s3, s6
d0041132:	e7c5      	b.n	d00410c0 <fillTriangleFlat+0x764>
d0041134:	eeb0 4a43 	vmov.f32	s8, s6
d0041138:	eef0 4a43 	vmov.f32	s9, s6
d004113c:	e774      	b.n	d0041028 <fillTriangleFlat+0x6cc>
d004113e:	eeb0 aa42 	vmov.f32	s20, s4
d0041142:	eef0 2a42 	vmov.f32	s5, s4
d0041146:	e6c5      	b.n	d0040ed4 <fillTriangleFlat+0x578>
d0041148:	ed9f fa0a 	vldr	s30, [pc, #40]	; d0041174 <fillTriangleFlat+0x818>
d004114c:	eef0 fa4f 	vmov.f32	s31, s30
d0041150:	eef0 ea4f 	vmov.f32	s29, s30
d0041154:	e5d8      	b.n	d0040d08 <fillTriangleFlat+0x3ac>
d0041156:	eddf 7a07 	vldr	s15, [pc, #28]	; d0041174 <fillTriangleFlat+0x818>
d004115a:	eef0 da67 	vmov.f32	s27, s15
d004115e:	eef0 9a67 	vmov.f32	s19, s15
d0041162:	eeb0 ba67 	vmov.f32	s22, s15
d0041166:	e5cf      	b.n	d0040d08 <fillTriangleFlat+0x3ac>
d0041168:	d00e1d64 	.word	0xd00e1d64
d004116c:	d00e7d80 	.word	0xd00e7d80
d0041170:	38d1b717 	.word	0x38d1b717
d0041174:	00000000 	.word	0x00000000

d0041178 <fillTriangleDitherBayer>:
d0041178:	eddf 7ae7 	vldr	s15, [pc, #924]	; d0041518 <fillTriangleDitherBayer+0x3a0>
d004117c:	eef4 0ae7 	vcmpe.f32	s1, s15
d0041180:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041184:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041188:	eeb4 1ae7 	vcmpe.f32	s2, s15
d004118c:	ed2d 8b10 	vpush	{d8-d15}
d0041190:	b08f      	sub	sp, #60	; 0x3c
d0041192:	9202      	str	r2, [sp, #8]
d0041194:	bf94      	ite	ls
d0041196:	2201      	movls	r2, #1
d0041198:	2200      	movhi	r2, #0
d004119a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004119e:	9303      	str	r3, [sp, #12]
d00411a0:	f8bd 40a8 	ldrh.w	r4, [sp, #168]	; 0xa8
d00411a4:	bf98      	it	ls
d00411a6:	f042 0201 	orrls.w	r2, r2, #1
d00411aa:	f89d 30b4 	ldrb.w	r3, [sp, #180]	; 0xb4
d00411ae:	e9cd 0100 	strd	r0, r1, [sp]
d00411b2:	f8bd 00ac 	ldrh.w	r0, [sp, #172]	; 0xac
d00411b6:	f8bd 10b0 	ldrh.w	r1, [sp, #176]	; 0xb0
d00411ba:	2a00      	cmp	r2, #0
d00411bc:	f040 8187 	bne.w	d00414ce <fillTriangleDitherBayer+0x356>
d00411c0:	eeb4 0a67 	vcmp.f32	s0, s15
d00411c4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00411c8:	f240 8181 	bls.w	d00414ce <fillTriangleDitherBayer+0x356>
d00411cc:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d00411d0:	eddf 7ad3 	vldr	s15, [pc, #844]	; d0041520 <fillTriangleDitherBayer+0x3a8>
d00411d4:	eeb1 6a04 	vmov.f32	s12, #20	; 0x40a00000  5.0
d00411d8:	ee07 4a10 	vmov	s14, r4
d00411dc:	fec1 7aa7 	vmaxnm.f32	s15, s3, s15
d00411e0:	ee86 3a81 	vdiv.f32	s6, s13, s2
d00411e4:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d00411e8:	eec6 1a80 	vdiv.f32	s3, s13, s0
d00411ec:	ee86 0aa0 	vdiv.f32	s0, s13, s1
d00411f0:	eefd 6ae7 	vcvt.s32.f32	s13, s15
d00411f4:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d00411f8:	ee16 2a90 	vmov	r2, s13
d00411fc:	ee06 0a90 	vmov	s13, r0
d0041200:	eef8 5a66 	vcvt.f32.u32	s11, s13
d0041204:	ee06 1a90 	vmov	s13, r1
d0041208:	1c51      	adds	r1, r2, #1
d004120a:	ee27 7a21 	vmul.f32	s14, s14, s3
d004120e:	eef8 6a66 	vcvt.f32.u32	s13, s13
d0041212:	2905      	cmp	r1, #5
d0041214:	bfa8      	it	ge
d0041216:	2105      	movge	r1, #5
d0041218:	2a04      	cmp	r2, #4
d004121a:	ee65 5a80 	vmul.f32	s11, s11, s0
d004121e:	ee26 2a83 	vmul.f32	s4, s13, s6
d0041222:	f300 8457 	bgt.w	d0041ad4 <fillTriangleDitherBayer+0x95c>
d0041226:	f003 030f 	and.w	r3, r3, #15
d004122a:	2a03      	cmp	r2, #3
d004122c:	f103 0320 	add.w	r3, r3, #32
d0041230:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d0041234:	fa5f fa80 	uxtb.w	sl, r0
d0041238:	f300 844e 	bgt.w	d0041ad8 <fillTriangleDitherBayer+0x960>
d004123c:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d0041240:	b2db      	uxtb	r3, r3
d0041242:	9304      	str	r3, [sp, #16]
d0041244:	eddd 6a01 	vldr	s13, [sp, #4]
d0041248:	eeb8 5ae6 	vcvt.f32.s32	s10, s13
d004124c:	eddd 6a03 	vldr	s13, [sp, #12]
d0041250:	eef8 3ae6 	vcvt.f32.s32	s7, s13
d0041254:	eddd 6a00 	vldr	s13, [sp]
d0041258:	eeb8 6ae6 	vcvt.f32.s32	s12, s13
d004125c:	eddd 6a02 	vldr	s13, [sp, #8]
d0041260:	eeb4 5ae3 	vcmpe.f32	s10, s7
d0041264:	eef8 4ae6 	vcvt.f32.s32	s9, s13
d0041268:	eddd 6a28 	vldr	s13, [sp, #160]	; 0xa0
d004126c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041270:	eeb8 1ae6 	vcvt.f32.s32	s2, s13
d0041274:	eddd 6a29 	vldr	s13, [sp, #164]	; 0xa4
d0041278:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d004127c:	f300 812c 	bgt.w	d00414d8 <fillTriangleDitherBayer+0x360>
d0041280:	eeb4 5ae6 	vcmpe.f32	s10, s13
d0041284:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041288:	f300 8231 	bgt.w	d00416ee <fillTriangleDitherBayer+0x576>
d004128c:	eef4 3ae6 	vcmpe.f32	s7, s13
d0041290:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041294:	dd17      	ble.n	d00412c6 <fillTriangleDitherBayer+0x14e>
d0041296:	eeb0 8a65 	vmov.f32	s16, s11
d004129a:	eef0 0a40 	vmov.f32	s1, s0
d004129e:	eef0 2a63 	vmov.f32	s5, s7
d00412a2:	eeb0 4a64 	vmov.f32	s8, s9
d00412a6:	eef0 5a42 	vmov.f32	s11, s4
d00412aa:	eeb0 0a43 	vmov.f32	s0, s6
d00412ae:	eef0 3a66 	vmov.f32	s7, s13
d00412b2:	eef0 4a41 	vmov.f32	s9, s2
d00412b6:	eeb0 2a48 	vmov.f32	s4, s16
d00412ba:	eeb0 3a60 	vmov.f32	s6, s1
d00412be:	eef0 6a62 	vmov.f32	s13, s5
d00412c2:	eeb0 1a44 	vmov.f32	s2, s8
d00412c6:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d00412ca:	ee75 2a04 	vadd.f32	s5, s10, s8
d00412ce:	ee36 4a84 	vadd.f32	s8, s13, s8
d00412d2:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d00412d6:	eebd 4ac4 	vcvt.s32.f32	s8, s8
d00412da:	ee12 3a90 	vmov	r3, s5
d00412de:	ee14 1a10 	vmov	r1, s8
d00412e2:	428b      	cmp	r3, r1
d00412e4:	f000 80f3 	beq.w	d00414ce <fillTriangleDitherBayer+0x356>
d00412e8:	ee76 8ac5 	vsub.f32	s17, s13, s10
d00412ec:	eddf 2a8a 	vldr	s5, [pc, #552]	; d0041518 <fillTriangleDitherBayer+0x3a0>
d00412f0:	eef4 8ae2 	vcmpe.f32	s17, s5
d00412f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00412f8:	f240 80e9 	bls.w	d00414ce <fillTriangleDitherBayer+0x356>
d00412fc:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0041300:	ee33 9ac5 	vsub.f32	s18, s7, s10
d0041304:	ee71 0a46 	vsub.f32	s1, s2, s12
d0041308:	ee89 4aa8 	vdiv.f32	s8, s19, s17
d004130c:	eeb4 9ae2 	vcmpe.f32	s18, s5
d0041310:	ee33 8a61 	vsub.f32	s16, s6, s3
d0041314:	ee72 8a47 	vsub.f32	s17, s4, s14
d0041318:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004131c:	ee60 0a84 	vmul.f32	s1, s1, s8
d0041320:	ee28 8a04 	vmul.f32	s16, s16, s8
d0041324:	ee68 8a84 	vmul.f32	s17, s17, s8
d0041328:	f300 80fe 	bgt.w	d0041528 <fillTriangleDitherBayer+0x3b0>
d004132c:	ee04 2a10 	vmov	s8, r2
d0041330:	ee76 fae3 	vsub.f32	s31, s13, s7
d0041334:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0041338:	eef4 fae2 	vcmpe.f32	s31, s5
d004133c:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0041340:	eeb0 4a67 	vmov.f32	s8, s15
d0041344:	eebe 4ace 	vcvt.s32.f32	s8, s8, #4
d0041348:	ee14 3a10 	vmov	r3, s8
d004134c:	f383 0204 	usat	r2, #4, r3
d0041350:	9201      	str	r2, [sp, #4]
d0041352:	9a04      	ldr	r2, [sp, #16]
d0041354:	4592      	cmp	sl, r2
d0041356:	bf18      	it	ne
d0041358:	2b00      	cmpne	r3, #0
d004135a:	bfd4      	ite	le
d004135c:	2301      	movle	r3, #1
d004135e:	2300      	movgt	r3, #0
d0041360:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041364:	9300      	str	r3, [sp, #0]
d0041366:	f340 80b2 	ble.w	d00414ce <fillTriangleDitherBayer+0x356>
d004136a:	ed9f ea6d 	vldr	s28, [pc, #436]	; d0041520 <fillTriangleDitherBayer+0x3a8>
d004136e:	eef0 9a4e 	vmov.f32	s19, s28
d0041372:	eeb0 ba4e 	vmov.f32	s22, s28
d0041376:	eef7 2a00 	vmov.f32	s5, #112	; 0x3f800000  1.0
d004137a:	ed9f 4a67 	vldr	s8, [pc, #412]	; d0041518 <fillTriangleDitherBayer+0x3a0>
d004137e:	ee31 1a64 	vsub.f32	s2, s2, s9
d0041382:	ee33 3a40 	vsub.f32	s6, s6, s0
d0041386:	eec2 7aaf 	vdiv.f32	s15, s5, s31
d004138a:	eeb4 9ac4 	vcmpe.f32	s18, s8
d004138e:	ee32 2a65 	vsub.f32	s4, s4, s11
d0041392:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041396:	ee61 2a27 	vmul.f32	s5, s2, s15
d004139a:	ee23 3a27 	vmul.f32	s6, s6, s15
d004139e:	ee22 fa27 	vmul.f32	s30, s4, s15
d00413a2:	edcd 2a09 	vstr	s5, [sp, #36]	; 0x24
d00413a6:	ed8d 3a08 	vstr	s6, [sp, #32]
d00413aa:	f300 80f4 	bgt.w	d0041596 <fillTriangleDitherBayer+0x41e>
d00413ae:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d00413b2:	edcd 7a06 	vstr	s15, [sp, #24]
d00413b6:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d00413ba:	f240 123f 	movw	r2, #319	; 0x13f
d00413be:	9906      	ldr	r1, [sp, #24]
d00413c0:	ee17 3a90 	vmov	r3, s15
d00413c4:	ea21 7be1 	bic.w	fp, r1, r1, asr #31
d00413c8:	3b01      	subs	r3, #1
d00413ca:	4293      	cmp	r3, r2
d00413cc:	bfa8      	it	ge
d00413ce:	4613      	movge	r3, r2
d00413d0:	459b      	cmp	fp, r3
d00413d2:	dc7c      	bgt.n	d00414ce <fillTriangleDitherBayer+0x356>
d00413d4:	ee07 ba90 	vmov	s15, fp
d00413d8:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d00413dc:	3301      	adds	r3, #1
d00413de:	eddd aa09 	vldr	s21, [sp, #36]	; 0x24
d00413e2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00413e6:	ed9d aa08 	vldr	s20, [sp, #32]
d00413ea:	ed9f 1a4b 	vldr	s2, [pc, #300]	; d0041518 <fillTriangleDitherBayer+0x3a0>
d00413ee:	ed9f 2a4b 	vldr	s4, [pc, #300]	; d004151c <fillTriangleDitherBayer+0x3a4>
d00413f2:	ee77 7aa6 	vadd.f32	s15, s15, s13
d00413f6:	ed9f 3a4a 	vldr	s6, [pc, #296]	; d0041520 <fillTriangleDitherBayer+0x3a8>
d00413fa:	9302      	str	r3, [sp, #8]
d00413fc:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0041400:	ee77 7ae3 	vsub.f32	s15, s15, s7
d0041404:	eddf 3a47 	vldr	s7, [pc, #284]	; d0041524 <fillTriangleDitherBayer+0x3ac>
d0041408:	eea0 6a85 	vfma.f32	s12, s1, s10
d004140c:	eee8 1a05 	vfma.f32	s3, s16, s10
d0041410:	eea8 7a85 	vfma.f32	s14, s17, s10
d0041414:	eeea 4aa7 	vfma.f32	s9, s21, s15
d0041418:	eeaa 0a27 	vfma.f32	s0, s20, s15
d004141c:	eeef 5a27 	vfma.f32	s11, s30, s15
d0041420:	e033      	b.n	d004148a <fillTriangleDitherBayer+0x312>
d0041422:	eef0 2a47 	vmov.f32	s5, s14
d0041426:	eef0 9a61 	vmov.f32	s19, s3
d004142a:	eef0 6a46 	vmov.f32	s13, s12
d004142e:	eeb0 9a65 	vmov.f32	s18, s11
d0041432:	eeb0 5a40 	vmov.f32	s10, s0
d0041436:	eeb0 4a64 	vmov.f32	s8, s9
d004143a:	fefa 7a66 	vrintp.f32	s15, s13
d004143e:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041442:	f240 13df 	movw	r3, #479	; 0x1df
d0041446:	ee17 6a90 	vmov	r6, s15
d004144a:	fefa 7a44 	vrintp.f32	s15, s8
d004144e:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041452:	3e01      	subs	r6, #1
d0041454:	ee17 0a90 	vmov	r0, s15
d0041458:	429e      	cmp	r6, r3
d004145a:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d004145e:	bfa8      	it	ge
d0041460:	461e      	movge	r6, r3
d0041462:	4286      	cmp	r6, r0
d0041464:	f280 815c 	bge.w	d0041720 <fillTriangleDitherBayer+0x5a8>
d0041468:	f10b 0b01 	add.w	fp, fp, #1
d004146c:	9b02      	ldr	r3, [sp, #8]
d004146e:	ee36 6a20 	vadd.f32	s12, s12, s1
d0041472:	459b      	cmp	fp, r3
d0041474:	ee71 1a88 	vadd.f32	s3, s3, s16
d0041478:	ee37 7a28 	vadd.f32	s14, s14, s17
d004147c:	ee74 4aaa 	vadd.f32	s9, s9, s21
d0041480:	ee30 0a0a 	vadd.f32	s0, s0, s20
d0041484:	ee75 5a8f 	vadd.f32	s11, s11, s30
d0041488:	d021      	beq.n	d00414ce <fillTriangleDitherBayer+0x356>
d004148a:	eeb4 6ae4 	vcmpe.f32	s12, s9
d004148e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041492:	dcc6      	bgt.n	d0041422 <fillTriangleDitherBayer+0x2aa>
d0041494:	eef0 2a65 	vmov.f32	s5, s11
d0041498:	eef0 9a40 	vmov.f32	s19, s0
d004149c:	eef0 6a64 	vmov.f32	s13, s9
d00414a0:	eeb0 9a47 	vmov.f32	s18, s14
d00414a4:	eeb0 5a61 	vmov.f32	s10, s3
d00414a8:	eeb0 4a46 	vmov.f32	s8, s12
d00414ac:	e7c5      	b.n	d004143a <fillTriangleDitherBayer+0x2c2>
d00414ae:	eddd 6a0a 	vldr	s13, [sp, #40]	; 0x28
d00414b2:	ed9d 5a0b 	vldr	s10, [sp, #44]	; 0x2c
d00414b6:	ed9d 6a0c 	vldr	s12, [sp, #48]	; 0x30
d00414ba:	ed9d fa0d 	vldr	s30, [sp, #52]	; 0x34
d00414be:	eddf 7a16 	vldr	s15, [pc, #88]	; d0041518 <fillTriangleDitherBayer+0x3a0>
d00414c2:	eef4 fae7 	vcmpe.f32	s31, s15
d00414c6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00414ca:	f73f af74 	bgt.w	d00413b6 <fillTriangleDitherBayer+0x23e>
d00414ce:	b00f      	add	sp, #60	; 0x3c
d00414d0:	ecbd 8b10 	vpop	{d8-d15}
d00414d4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00414d8:	eef4 3ae6 	vcmpe.f32	s7, s13
d00414dc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00414e0:	f340 80ec 	ble.w	d00416bc <fillTriangleDitherBayer+0x544>
d00414e4:	eeb0 8a42 	vmov.f32	s16, s4
d00414e8:	eef0 0a43 	vmov.f32	s1, s6
d00414ec:	eef0 2a66 	vmov.f32	s5, s13
d00414f0:	eeb0 4a41 	vmov.f32	s8, s2
d00414f4:	eeb0 2a47 	vmov.f32	s4, s14
d00414f8:	eeb0 3a61 	vmov.f32	s6, s3
d00414fc:	eef0 6a45 	vmov.f32	s13, s10
d0041500:	eeb0 1a46 	vmov.f32	s2, s12
d0041504:	eeb0 7a48 	vmov.f32	s14, s16
d0041508:	eef0 1a60 	vmov.f32	s3, s1
d004150c:	eeb0 5a62 	vmov.f32	s10, s5
d0041510:	eeb0 6a44 	vmov.f32	s12, s8
d0041514:	e6d7      	b.n	d00412c6 <fillTriangleDitherBayer+0x14e>
d0041516:	bf00      	nop
d0041518:	38d1b717 	.word	0x38d1b717
d004151c:	33d6bf95 	.word	0x33d6bf95
d0041520:	00000000 	.word	0x00000000
d0041524:	477fff00 	.word	0x477fff00
d0041528:	ee04 2a10 	vmov	s8, r2
d004152c:	ee89 aa89 	vdiv.f32	s20, s19, s18
d0041530:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0041534:	ee74 aac6 	vsub.f32	s21, s9, s12
d0041538:	ee76 fae3 	vsub.f32	s31, s13, s7
d004153c:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0041540:	ee70 9a61 	vsub.f32	s19, s0, s3
d0041544:	eef4 fae2 	vcmpe.f32	s31, s5
d0041548:	eeb0 4a67 	vmov.f32	s8, s15
d004154c:	ee35 eac7 	vsub.f32	s28, s11, s14
d0041550:	eebe 4ace 	vcvt.s32.f32	s8, s8, #4
d0041554:	ee6a 7a8a 	vmul.f32	s15, s21, s20
d0041558:	ee14 3a10 	vmov	r3, s8
d004155c:	ee2e ea0a 	vmul.f32	s28, s28, s20
d0041560:	f383 0204 	usat	r2, #4, r3
d0041564:	eeb0 ba67 	vmov.f32	s22, s15
d0041568:	ee69 7a8a 	vmul.f32	s15, s19, s20
d004156c:	9201      	str	r2, [sp, #4]
d004156e:	9a04      	ldr	r2, [sp, #16]
d0041570:	eef0 9a67 	vmov.f32	s19, s15
d0041574:	4592      	cmp	sl, r2
d0041576:	bf18      	it	ne
d0041578:	2b00      	cmpne	r3, #0
d004157a:	bfd4      	ite	le
d004157c:	2301      	movle	r3, #1
d004157e:	2300      	movgt	r3, #0
d0041580:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041584:	9300      	str	r3, [sp, #0]
d0041586:	f73f aef6 	bgt.w	d0041376 <fillTriangleDitherBayer+0x1fe>
d004158a:	ed1f fa1b 	vldr	s30, [pc, #-108]	; d0041520 <fillTriangleDitherBayer+0x3a8>
d004158e:	ed8d fa08 	vstr	s30, [sp, #32]
d0041592:	ed8d fa09 	vstr	s30, [sp, #36]	; 0x24
d0041596:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d004159a:	f240 123f 	movw	r2, #319	; 0x13f
d004159e:	ee17 3a90 	vmov	r3, s15
d00415a2:	edcd 7a06 	vstr	s15, [sp, #24]
d00415a6:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d00415aa:	3b01      	subs	r3, #1
d00415ac:	ee17 ba90 	vmov	fp, s15
d00415b0:	4293      	cmp	r3, r2
d00415b2:	ea2b 7beb 	bic.w	fp, fp, fp, asr #31
d00415b6:	bfa8      	it	ge
d00415b8:	4613      	movge	r3, r2
d00415ba:	455b      	cmp	r3, fp
d00415bc:	f6ff af7f 	blt.w	d00414be <fillTriangleDitherBayer+0x346>
d00415c0:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00415c4:	3301      	adds	r3, #1
d00415c6:	eeb0 aa46 	vmov.f32	s20, s12
d00415ca:	ed1f da2c 	vldr	s26, [pc, #-176]	; d004151c <fillTriangleDitherBayer+0x3a4>
d00415ce:	eef0 aa46 	vmov.f32	s21, s12
d00415d2:	ed1f 3a2d 	vldr	s6, [pc, #-180]	; d0041520 <fillTriangleDitherBayer+0x3a8>
d00415d6:	ee37 4ac5 	vsub.f32	s8, s15, s10
d00415da:	ee07 ba90 	vmov	s15, fp
d00415de:	eef0 ca61 	vmov.f32	s25, s3
d00415e2:	ed1f 2a30 	vldr	s4, [pc, #-192]	; d0041524 <fillTriangleDitherBayer+0x3ac>
d00415e6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00415ea:	9302      	str	r3, [sp, #8]
d00415ec:	eeb0 ca47 	vmov.f32	s24, s14
d00415f0:	edcd 6a0a 	vstr	s13, [sp, #40]	; 0x28
d00415f4:	eef0 da4b 	vmov.f32	s27, s22
d00415f8:	ed8d 5a0b 	vstr	s10, [sp, #44]	; 0x2c
d00415fc:	ee77 7a84 	vadd.f32	s15, s15, s8
d0041600:	ed8d 6a0c 	vstr	s12, [sp, #48]	; 0x30
d0041604:	eef0 ba61 	vmov.f32	s23, s3
d0041608:	ed8d fa0d 	vstr	s30, [sp, #52]	; 0x34
d004160c:	eef0 ea69 	vmov.f32	s29, s19
d0041610:	eea7 aa8b 	vfma.f32	s20, s15, s22
d0041614:	eeb0 ba47 	vmov.f32	s22, s14
d0041618:	eee0 aaa7 	vfma.f32	s21, s1, s15
d004161c:	eee8 ca27 	vfma.f32	s25, s16, s15
d0041620:	eea8 caa7 	vfma.f32	s24, s17, s15
d0041624:	eee7 baa9 	vfma.f32	s23, s15, s19
d0041628:	eea7 ba8e 	vfma.f32	s22, s15, s28
d004162c:	e034      	b.n	d0041698 <fillTriangleDitherBayer+0x520>
d004162e:	eef0 2a4c 	vmov.f32	s5, s24
d0041632:	eeb0 4a6c 	vmov.f32	s8, s25
d0041636:	eef0 7a6a 	vmov.f32	s15, s21
d004163a:	eeb0 5a4b 	vmov.f32	s10, s22
d004163e:	eef0 6a6b 	vmov.f32	s13, s23
d0041642:	eeb0 6a4a 	vmov.f32	s12, s20
d0041646:	feba 1a67 	vrintp.f32	s2, s15
d004164a:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d004164e:	feba 9a46 	vrintp.f32	s18, s12
d0041652:	f240 13df 	movw	r3, #479	; 0x1df
d0041656:	ee11 6a10 	vmov	r6, s2
d004165a:	eebd 1ac9 	vcvt.s32.f32	s2, s18
d004165e:	3e01      	subs	r6, #1
d0041660:	ee11 0a10 	vmov	r0, s2
d0041664:	429e      	cmp	r6, r3
d0041666:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d004166a:	bfa8      	it	ge
d004166c:	461e      	movge	r6, r3
d004166e:	4286      	cmp	r6, r0
d0041670:	f280 813e 	bge.w	d00418f0 <fillTriangleDitherBayer+0x778>
d0041674:	f10b 0b01 	add.w	fp, fp, #1
d0041678:	9b02      	ldr	r3, [sp, #8]
d004167a:	ee7a aaa0 	vadd.f32	s21, s21, s1
d004167e:	459b      	cmp	fp, r3
d0041680:	ee7c ca88 	vadd.f32	s25, s25, s16
d0041684:	ee3c ca28 	vadd.f32	s24, s24, s17
d0041688:	ee3a aa2d 	vadd.f32	s20, s20, s27
d004168c:	ee7b baae 	vadd.f32	s23, s23, s29
d0041690:	ee3b ba0e 	vadd.f32	s22, s22, s28
d0041694:	f43f af0b 	beq.w	d00414ae <fillTriangleDitherBayer+0x336>
d0041698:	eef4 aaca 	vcmpe.f32	s21, s20
d004169c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00416a0:	dcc5      	bgt.n	d004162e <fillTriangleDitherBayer+0x4b6>
d00416a2:	eef0 2a4b 	vmov.f32	s5, s22
d00416a6:	eeb0 4a6b 	vmov.f32	s8, s23
d00416aa:	eef0 7a4a 	vmov.f32	s15, s20
d00416ae:	eeb0 5a4c 	vmov.f32	s10, s24
d00416b2:	eef0 6a6c 	vmov.f32	s13, s25
d00416b6:	eeb0 6a6a 	vmov.f32	s12, s21
d00416ba:	e7c4      	b.n	d0041646 <fillTriangleDitherBayer+0x4ce>
d00416bc:	eeb0 8a47 	vmov.f32	s16, s14
d00416c0:	eef0 0a61 	vmov.f32	s1, s3
d00416c4:	eef0 2a45 	vmov.f32	s5, s10
d00416c8:	eeb0 4a46 	vmov.f32	s8, s12
d00416cc:	eeb0 7a65 	vmov.f32	s14, s11
d00416d0:	eef0 1a40 	vmov.f32	s3, s0
d00416d4:	eeb0 5a63 	vmov.f32	s10, s7
d00416d8:	eeb0 6a64 	vmov.f32	s12, s9
d00416dc:	eef0 5a48 	vmov.f32	s11, s16
d00416e0:	eeb0 0a60 	vmov.f32	s0, s1
d00416e4:	eef0 3a62 	vmov.f32	s7, s5
d00416e8:	eef0 4a44 	vmov.f32	s9, s8
d00416ec:	e5ce      	b.n	d004128c <fillTriangleDitherBayer+0x114>
d00416ee:	eeb0 8a47 	vmov.f32	s16, s14
d00416f2:	eef0 0a61 	vmov.f32	s1, s3
d00416f6:	eef0 2a45 	vmov.f32	s5, s10
d00416fa:	eeb0 4a46 	vmov.f32	s8, s12
d00416fe:	eeb0 7a42 	vmov.f32	s14, s4
d0041702:	eef0 1a43 	vmov.f32	s3, s6
d0041706:	eeb0 5a66 	vmov.f32	s10, s13
d004170a:	eeb0 6a41 	vmov.f32	s12, s2
d004170e:	eeb0 2a48 	vmov.f32	s4, s16
d0041712:	eeb0 3a60 	vmov.f32	s6, s1
d0041716:	eef0 6a62 	vmov.f32	s13, s5
d004171a:	eeb0 1a44 	vmov.f32	s2, s8
d004171e:	e5b5      	b.n	d004128c <fillTriangleDitherBayer+0x114>
d0041720:	ee76 6ac4 	vsub.f32	s13, s13, s8
d0041724:	eef4 6ac1 	vcmpe.f32	s13, s2
d0041728:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004172c:	f340 81d8 	ble.w	d0041ae0 <fillTriangleDitherBayer+0x968>
d0041730:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0041734:	ee79 9ac5 	vsub.f32	s19, s19, s10
d0041738:	ee72 2ac9 	vsub.f32	s5, s5, s18
d004173c:	ee87 baa6 	vdiv.f32	s22, s15, s13
d0041740:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0041744:	ee37 4ac4 	vsub.f32	s8, s15, s8
d0041748:	ee07 0a90 	vmov	s15, r0
d004174c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041750:	ee77 7a84 	vadd.f32	s15, s15, s8
d0041754:	ee69 9a8b 	vmul.f32	s19, s19, s22
d0041758:	ee22 ba8b 	vmul.f32	s22, s5, s22
d004175c:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0041760:	eea7 9a8b 	vfma.f32	s18, s15, s22
d0041764:	ebcb 190b 	rsb	r9, fp, fp, lsl #4
d0041768:	49d6      	ldr	r1, [pc, #856]	; (d0041ac4 <fillTriangleDitherBayer+0x94c>)
d004176a:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d004176e:	4cd6      	ldr	r4, [pc, #856]	; (d0041ac8 <fillTriangleDitherBayer+0x950>)
d0041770:	eb00 1249 	add.w	r2, r0, r9, lsl #5
d0041774:	6809      	ldr	r1, [r1, #0]
d0041776:	eb0b 1383 	add.w	r3, fp, r3, lsl #6
d004177a:	f8cd b018 	str.w	fp, [sp, #24]
d004177e:	eb04 0942 	add.w	r9, r4, r2, lsl #1
d0041782:	f00b 0203 	and.w	r2, fp, #3
d0041786:	eb01 0c03 	add.w	ip, r1, r3
d004178a:	eef6 2a00 	vmov.f32	s5, #96	; 0x3f000000  0.5
d004178e:	4613      	mov	r3, r2
d0041790:	4ace      	ldr	r2, [pc, #824]	; (d0041acc <fillTriangleDitherBayer+0x954>)
d0041792:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0041796:	469b      	mov	fp, r3
d0041798:	e010      	b.n	d00417bc <fillTriangleDitherBayer+0x644>
d004179a:	ee07 3a90 	vmov	s15, r3
d004179e:	4418      	add	r0, r3
d00417a0:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d00417a4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00417a8:	42b0      	cmp	r0, r6
d00417aa:	eb09 0943 	add.w	r9, r9, r3, lsl #1
d00417ae:	eb0c 1c82 	add.w	ip, ip, r2, lsl #6
d00417b2:	eea7 5aa9 	vfma.f32	s10, s15, s19
d00417b6:	eea7 9a8b 	vfma.f32	s18, s15, s22
d00417ba:	dc72      	bgt.n	d00418a2 <fillTriangleDitherBayer+0x72a>
d00417bc:	eba6 0800 	sub.w	r8, r6, r0
d00417c0:	eeb4 5ac2 	vcmpe.f32	s10, s4
d00417c4:	f108 0301 	add.w	r3, r8, #1
d00417c8:	2b30      	cmp	r3, #48	; 0x30
d00417ca:	bfa8      	it	ge
d00417cc:	2330      	movge	r3, #48	; 0x30
d00417ce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00417d2:	d9e2      	bls.n	d004179a <fillTriangleDitherBayer+0x622>
d00417d4:	f1b8 0f00 	cmp.w	r8, #0
d00417d8:	eec9 6a05 	vdiv.f32	s13, s18, s10
d00417dc:	dd64      	ble.n	d00418a8 <fillTriangleDitherBayer+0x730>
d00417de:	1e5a      	subs	r2, r3, #1
d00417e0:	ee07 2a90 	vmov	s15, r2
d00417e4:	eeb0 4a45 	vmov.f32	s8, s10
d00417e8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00417ec:	eea7 4aa9 	vfma.f32	s8, s15, s19
d00417f0:	eeb4 4ac2 	vcmpe.f32	s8, s4
d00417f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00417f8:	dd57      	ble.n	d00418aa <fillTriangleDitherBayer+0x732>
d00417fa:	eeb0 ca49 	vmov.f32	s24, s18
d00417fe:	9a00      	ldr	r2, [sp, #0]
d0041800:	eea7 ca8b 	vfma.f32	s24, s15, s22
d0041804:	eecc ba04 	vdiv.f32	s23, s24, s8
d0041808:	ee7b bae6 	vsub.f32	s23, s23, s13
d004180c:	ee8b 4aa7 	vdiv.f32	s8, s23, s15
d0041810:	2a00      	cmp	r2, #0
d0041812:	d14f      	bne.n	d00418b4 <fillTriangleDitherBayer+0x73c>
d0041814:	f8cd 800c 	str.w	r8, [sp, #12]
d0041818:	f1a9 0702 	sub.w	r7, r9, #2
d004181c:	9605      	str	r6, [sp, #20]
d004181e:	f8dd 8004 	ldr.w	r8, [sp, #4]
d0041822:	9e04      	ldr	r6, [sp, #16]
d0041824:	fec6 7a83 	vmaxnm.f32	s15, s13, s6
d0041828:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d004182c:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0041830:	f837 ef02 	ldrh.w	lr, [r7, #2]!
d0041834:	1885      	adds	r5, r0, r2
d0041836:	eb02 0482 	add.w	r4, r2, r2, lsl #2
d004183a:	ee76 6a84 	vadd.f32	s13, s13, s8
d004183e:	3201      	adds	r2, #1
d0041840:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0041844:	f005 0503 	and.w	r5, r5, #3
d0041848:	01a4      	lsls	r4, r4, #6
d004184a:	ee17 1a90 	vmov	r1, s15
d004184e:	b289      	uxth	r1, r1
d0041850:	458e      	cmp	lr, r1
d0041852:	d908      	bls.n	d0041866 <fillTriangleDitherBayer+0x6ee>
d0041854:	f81b 5005 	ldrb.w	r5, [fp, r5]
d0041858:	8039      	strh	r1, [r7, #0]
d004185a:	45a8      	cmp	r8, r5
d004185c:	bfd4      	ite	le
d004185e:	4655      	movle	r5, sl
d0041860:	4635      	movgt	r5, r6
d0041862:	f80c 5004 	strb.w	r5, [ip, r4]
d0041866:	4293      	cmp	r3, r2
d0041868:	dcdc      	bgt.n	d0041824 <fillTriangleDitherBayer+0x6ac>
d004186a:	f8dd 800c 	ldr.w	r8, [sp, #12]
d004186e:	9e05      	ldr	r6, [sp, #20]
d0041870:	f1b8 0f00 	cmp.w	r8, #0
d0041874:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0041878:	ea4f 0143 	mov.w	r1, r3, lsl #1
d004187c:	ea4f 1282 	mov.w	r2, r2, lsl #6
d0041880:	bfbc      	itt	lt
d0041882:	2102      	movlt	r1, #2
d0041884:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d0041888:	4489      	add	r9, r1
d004188a:	4494      	add	ip, r2
d004188c:	ee07 3a90 	vmov	s15, r3
d0041890:	4418      	add	r0, r3
d0041892:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041896:	42b0      	cmp	r0, r6
d0041898:	eea7 5aa9 	vfma.f32	s10, s15, s19
d004189c:	eea7 9a8b 	vfma.f32	s18, s15, s22
d00418a0:	dd8c      	ble.n	d00417bc <fillTriangleDitherBayer+0x644>
d00418a2:	f8dd b018 	ldr.w	fp, [sp, #24]
d00418a6:	e5df      	b.n	d0041468 <fillTriangleDitherBayer+0x2f0>
d00418a8:	d1f0      	bne.n	d004188c <fillTriangleDitherBayer+0x714>
d00418aa:	9a00      	ldr	r2, [sp, #0]
d00418ac:	eeb0 4a43 	vmov.f32	s8, s6
d00418b0:	2a00      	cmp	r2, #0
d00418b2:	d0af      	beq.n	d0041814 <fillTriangleDitherBayer+0x69c>
d00418b4:	f1a9 0502 	sub.w	r5, r9, #2
d00418b8:	2200      	movs	r2, #0
d00418ba:	fec6 7a83 	vmaxnm.f32	s15, s13, s6
d00418be:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d00418c2:	ee77 7aa2 	vadd.f32	s15, s15, s5
d00418c6:	eb02 0182 	add.w	r1, r2, r2, lsl #2
d00418ca:	f835 7f02 	ldrh.w	r7, [r5, #2]!
d00418ce:	ee76 6a84 	vadd.f32	s13, s13, s8
d00418d2:	018c      	lsls	r4, r1, #6
d00418d4:	3201      	adds	r2, #1
d00418d6:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00418da:	ee17 1a90 	vmov	r1, s15
d00418de:	b289      	uxth	r1, r1
d00418e0:	428f      	cmp	r7, r1
d00418e2:	d902      	bls.n	d00418ea <fillTriangleDitherBayer+0x772>
d00418e4:	8029      	strh	r1, [r5, #0]
d00418e6:	f80c a004 	strb.w	sl, [ip, r4]
d00418ea:	4293      	cmp	r3, r2
d00418ec:	dce5      	bgt.n	d00418ba <fillTriangleDitherBayer+0x742>
d00418ee:	e7bf      	b.n	d0041870 <fillTriangleDitherBayer+0x6f8>
d00418f0:	ee77 7ac6 	vsub.f32	s15, s15, s12
d00418f4:	ed9f 1a76 	vldr	s2, [pc, #472]	; d0041ad0 <fillTriangleDitherBayer+0x958>
d00418f8:	eef4 7ac1 	vcmpe.f32	s15, s2
d00418fc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041900:	f340 80f3 	ble.w	d0041aea <fillTriangleDitherBayer+0x972>
d0041904:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d0041908:	ee34 4a66 	vsub.f32	s8, s8, s13
d004190c:	ee72 2ac5 	vsub.f32	s5, s5, s10
d0041910:	ee89 1a27 	vdiv.f32	s2, s18, s15
d0041914:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0041918:	ee37 6ac6 	vsub.f32	s12, s15, s12
d004191c:	ee07 0a90 	vmov	s15, r0
d0041920:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041924:	ee77 7a86 	vadd.f32	s15, s15, s12
d0041928:	ee24 4a01 	vmul.f32	s8, s8, s2
d004192c:	ee62 2a81 	vmul.f32	s5, s5, s2
d0041930:	eee7 6a84 	vfma.f32	s13, s15, s8
d0041934:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0041938:	ebcb 190b 	rsb	r9, fp, fp, lsl #4
d004193c:	4961      	ldr	r1, [pc, #388]	; (d0041ac4 <fillTriangleDitherBayer+0x94c>)
d004193e:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0041942:	4c61      	ldr	r4, [pc, #388]	; (d0041ac8 <fillTriangleDitherBayer+0x950>)
d0041944:	eb00 1249 	add.w	r2, r0, r9, lsl #5
d0041948:	6809      	ldr	r1, [r1, #0]
d004194a:	eb0b 1383 	add.w	r3, fp, r3, lsl #6
d004194e:	f8cd b01c 	str.w	fp, [sp, #28]
d0041952:	eb04 0942 	add.w	r9, r4, r2, lsl #1
d0041956:	f00b 0203 	and.w	r2, fp, #3
d004195a:	eb01 0c03 	add.w	ip, r1, r3
d004195e:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d0041962:	4613      	mov	r3, r2
d0041964:	4a59      	ldr	r2, [pc, #356]	; (d0041acc <fillTriangleDitherBayer+0x954>)
d0041966:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d004196a:	469b      	mov	fp, r3
d004196c:	e010      	b.n	d0041990 <fillTriangleDitherBayer+0x818>
d004196e:	ee07 2a90 	vmov	s15, r2
d0041972:	4410      	add	r0, r2
d0041974:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0041978:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004197c:	42b0      	cmp	r0, r6
d004197e:	eb09 0942 	add.w	r9, r9, r2, lsl #1
d0041982:	eb0c 1c83 	add.w	ip, ip, r3, lsl #6
d0041986:	eee7 6a84 	vfma.f32	s13, s15, s8
d004198a:	eea7 5aa2 	vfma.f32	s10, s15, s5
d004198e:	dc72      	bgt.n	d0041a76 <fillTriangleDitherBayer+0x8fe>
d0041990:	eba6 0800 	sub.w	r8, r6, r0
d0041994:	eef4 6acd 	vcmpe.f32	s13, s26
d0041998:	f108 0201 	add.w	r2, r8, #1
d004199c:	2a30      	cmp	r2, #48	; 0x30
d004199e:	bfa8      	it	ge
d00419a0:	2230      	movge	r2, #48	; 0x30
d00419a2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00419a6:	d9e2      	bls.n	d004196e <fillTriangleDitherBayer+0x7f6>
d00419a8:	f1b8 0f00 	cmp.w	r8, #0
d00419ac:	ee85 1a26 	vdiv.f32	s2, s10, s13
d00419b0:	dd64      	ble.n	d0041a7c <fillTriangleDitherBayer+0x904>
d00419b2:	1e53      	subs	r3, r2, #1
d00419b4:	ee07 3a90 	vmov	s15, r3
d00419b8:	eeb0 9a66 	vmov.f32	s18, s13
d00419bc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00419c0:	eea7 9a84 	vfma.f32	s18, s15, s8
d00419c4:	eeb4 9acd 	vcmpe.f32	s18, s26
d00419c8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00419cc:	dd57      	ble.n	d0041a7e <fillTriangleDitherBayer+0x906>
d00419ce:	eeb0 fa45 	vmov.f32	s30, s10
d00419d2:	9900      	ldr	r1, [sp, #0]
d00419d4:	eea7 faa2 	vfma.f32	s30, s15, s5
d00419d8:	eecf 9a09 	vdiv.f32	s19, s30, s18
d00419dc:	ee79 9ac1 	vsub.f32	s19, s19, s2
d00419e0:	ee89 9aa7 	vdiv.f32	s18, s19, s15
d00419e4:	2900      	cmp	r1, #0
d00419e6:	d14f      	bne.n	d0041a88 <fillTriangleDitherBayer+0x910>
d00419e8:	9603      	str	r6, [sp, #12]
d00419ea:	f1a9 0702 	sub.w	r7, r9, #2
d00419ee:	f8cd 8014 	str.w	r8, [sp, #20]
d00419f2:	9e04      	ldr	r6, [sp, #16]
d00419f4:	f8dd 8004 	ldr.w	r8, [sp, #4]
d00419f8:	fec1 7a03 	vmaxnm.f32	s15, s2, s6
d00419fc:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d0041a00:	ee77 7a86 	vadd.f32	s15, s15, s12
d0041a04:	f837 ef02 	ldrh.w	lr, [r7, #2]!
d0041a08:	1845      	adds	r5, r0, r1
d0041a0a:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d0041a0e:	ee31 1a09 	vadd.f32	s2, s2, s18
d0041a12:	3101      	adds	r1, #1
d0041a14:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0041a18:	f005 0503 	and.w	r5, r5, #3
d0041a1c:	01a4      	lsls	r4, r4, #6
d0041a1e:	ee17 3a90 	vmov	r3, s15
d0041a22:	b29b      	uxth	r3, r3
d0041a24:	459e      	cmp	lr, r3
d0041a26:	d908      	bls.n	d0041a3a <fillTriangleDitherBayer+0x8c2>
d0041a28:	f81b 5005 	ldrb.w	r5, [fp, r5]
d0041a2c:	803b      	strh	r3, [r7, #0]
d0041a2e:	45a8      	cmp	r8, r5
d0041a30:	bfcc      	ite	gt
d0041a32:	4635      	movgt	r5, r6
d0041a34:	4655      	movle	r5, sl
d0041a36:	f80c 5004 	strb.w	r5, [ip, r4]
d0041a3a:	428a      	cmp	r2, r1
d0041a3c:	dcdc      	bgt.n	d00419f8 <fillTriangleDitherBayer+0x880>
d0041a3e:	9e03      	ldr	r6, [sp, #12]
d0041a40:	f8dd 8014 	ldr.w	r8, [sp, #20]
d0041a44:	f1b8 0f00 	cmp.w	r8, #0
d0041a48:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0041a4c:	ea4f 0142 	mov.w	r1, r2, lsl #1
d0041a50:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0041a54:	bfbc      	itt	lt
d0041a56:	2102      	movlt	r1, #2
d0041a58:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0041a5c:	4489      	add	r9, r1
d0041a5e:	449c      	add	ip, r3
d0041a60:	ee07 2a90 	vmov	s15, r2
d0041a64:	4410      	add	r0, r2
d0041a66:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041a6a:	42b0      	cmp	r0, r6
d0041a6c:	eee7 6a84 	vfma.f32	s13, s15, s8
d0041a70:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0041a74:	dd8c      	ble.n	d0041990 <fillTriangleDitherBayer+0x818>
d0041a76:	f8dd b01c 	ldr.w	fp, [sp, #28]
d0041a7a:	e5fb      	b.n	d0041674 <fillTriangleDitherBayer+0x4fc>
d0041a7c:	d1f0      	bne.n	d0041a60 <fillTriangleDitherBayer+0x8e8>
d0041a7e:	9900      	ldr	r1, [sp, #0]
d0041a80:	eeb0 9a43 	vmov.f32	s18, s6
d0041a84:	2900      	cmp	r1, #0
d0041a86:	d0af      	beq.n	d00419e8 <fillTriangleDitherBayer+0x870>
d0041a88:	f1a9 0502 	sub.w	r5, r9, #2
d0041a8c:	2100      	movs	r1, #0
d0041a8e:	fec1 7a03 	vmaxnm.f32	s15, s2, s6
d0041a92:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d0041a96:	ee77 7a86 	vadd.f32	s15, s15, s12
d0041a9a:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0041a9e:	f835 7f02 	ldrh.w	r7, [r5, #2]!
d0041aa2:	ee31 1a09 	vadd.f32	s2, s2, s18
d0041aa6:	019c      	lsls	r4, r3, #6
d0041aa8:	3101      	adds	r1, #1
d0041aaa:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0041aae:	ee17 3a90 	vmov	r3, s15
d0041ab2:	b29b      	uxth	r3, r3
d0041ab4:	429f      	cmp	r7, r3
d0041ab6:	d902      	bls.n	d0041abe <fillTriangleDitherBayer+0x946>
d0041ab8:	802b      	strh	r3, [r5, #0]
d0041aba:	f80c a004 	strb.w	sl, [ip, r4]
d0041abe:	428a      	cmp	r2, r1
d0041ac0:	dce5      	bgt.n	d0041a8e <fillTriangleDitherBayer+0x916>
d0041ac2:	e7bf      	b.n	d0041a44 <fillTriangleDitherBayer+0x8cc>
d0041ac4:	d00e1d64 	.word	0xd00e1d64
d0041ac8:	d00e7d80 	.word	0xd00e7d80
d0041acc:	d0046d64 	.word	0xd0046d64
d0041ad0:	38d1b717 	.word	0x38d1b717
d0041ad4:	f04f 0a10 	mov.w	sl, #16
d0041ad8:	2310      	movs	r3, #16
d0041ada:	9304      	str	r3, [sp, #16]
d0041adc:	f7ff bbb2 	b.w	d0041244 <fillTriangleDitherBayer+0xcc>
d0041ae0:	eeb0 ba43 	vmov.f32	s22, s6
d0041ae4:	eef0 9a43 	vmov.f32	s19, s6
d0041ae8:	e63c      	b.n	d0041764 <fillTriangleDitherBayer+0x5ec>
d0041aea:	eef0 2a43 	vmov.f32	s5, s6
d0041aee:	eeb0 4a43 	vmov.f32	s8, s6
d0041af2:	e721      	b.n	d0041938 <fillTriangleDitherBayer+0x7c0>

d0041af4 <fillTriangleDitherBayer2Mode>:
d0041af4:	eddf 7aca 	vldr	s15, [pc, #808]	; d0041e20 <fillTriangleDitherBayer2Mode+0x32c>
d0041af8:	eef4 0ae7 	vcmpe.f32	s1, s15
d0041afc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041b00:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041b04:	eeb4 1ae7 	vcmpe.f32	s2, s15
d0041b08:	ed2d 8b10 	vpush	{d8-d15}
d0041b0c:	b08d      	sub	sp, #52	; 0x34
d0041b0e:	9303      	str	r3, [sp, #12]
d0041b10:	bf94      	ite	ls
d0041b12:	2301      	movls	r3, #1
d0041b14:	2300      	movhi	r3, #0
d0041b16:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041b1a:	9202      	str	r2, [sp, #8]
d0041b1c:	f89d b0ac 	ldrb.w	fp, [sp, #172]	; 0xac
d0041b20:	bf98      	it	ls
d0041b22:	f043 0301 	orrls.w	r3, r3, #1
d0041b26:	f8bd 20a8 	ldrh.w	r2, [sp, #168]	; 0xa8
d0041b2a:	e9cd 0100 	strd	r0, r1, [sp]
d0041b2e:	f8bd 00a0 	ldrh.w	r0, [sp, #160]	; 0xa0
d0041b32:	f8bd 10a4 	ldrh.w	r1, [sp, #164]	; 0xa4
d0041b36:	2b00      	cmp	r3, #0
d0041b38:	f040 814d 	bne.w	d0041dd6 <fillTriangleDitherBayer2Mode+0x2e2>
d0041b3c:	eeb4 0a67 	vcmp.f32	s0, s15
d0041b40:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041b44:	f240 8147 	bls.w	d0041dd6 <fillTriangleDitherBayer2Mode+0x2e2>
d0041b48:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0041b4c:	ee06 1a90 	vmov	s13, r1
d0041b50:	ee07 0a10 	vmov	s14, r0
d0041b54:	eef8 5a66 	vcvt.f32.u32	s11, s13
d0041b58:	ee87 3a80 	vdiv.f32	s6, s15, s0
d0041b5c:	ee87 2a81 	vdiv.f32	s4, s15, s2
d0041b60:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d0041b64:	ee07 2a90 	vmov	s15, r2
d0041b68:	eeb8 4a67 	vcvt.f32.u32	s8, s15
d0041b6c:	eddd 7a01 	vldr	s15, [sp, #4]
d0041b70:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0041b74:	eeb8 5ae7 	vcvt.f32.s32	s10, s15
d0041b78:	eddd 7a03 	vldr	s15, [sp, #12]
d0041b7c:	eef8 3ae7 	vcvt.f32.s32	s7, s15
d0041b80:	eddd 7a00 	vldr	s15, [sp]
d0041b84:	ee27 7a03 	vmul.f32	s14, s14, s6
d0041b88:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d0041b8c:	eddd 7a02 	vldr	s15, [sp, #8]
d0041b90:	eeb4 5ae3 	vcmpe.f32	s10, s7
d0041b94:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d0041b98:	eddd 7a26 	vldr	s15, [sp, #152]	; 0x98
d0041b9c:	ee24 4a02 	vmul.f32	s8, s8, s4
d0041ba0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041ba4:	eef8 2ae7 	vcvt.f32.s32	s5, s15
d0041ba8:	eddd 7a27 	vldr	s15, [sp, #156]	; 0x9c
d0041bac:	ee65 5a80 	vmul.f32	s11, s11, s0
d0041bb0:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d0041bb4:	f300 8114 	bgt.w	d0041de0 <fillTriangleDitherBayer2Mode+0x2ec>
d0041bb8:	eeb4 5ae6 	vcmpe.f32	s10, s13
d0041bbc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041bc0:	f300 8201 	bgt.w	d0041fc6 <fillTriangleDitherBayer2Mode+0x4d2>
d0041bc4:	eef4 3ae6 	vcmpe.f32	s7, s13
d0041bc8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041bcc:	f300 8219 	bgt.w	d0042002 <fillTriangleDitherBayer2Mode+0x50e>
d0041bd0:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0041bd4:	ee35 1a27 	vadd.f32	s2, s10, s15
d0041bd8:	ee76 7aa7 	vadd.f32	s15, s13, s15
d0041bdc:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d0041be0:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041be4:	ee11 3a10 	vmov	r3, s2
d0041be8:	ee17 2a90 	vmov	r2, s15
d0041bec:	4293      	cmp	r3, r2
d0041bee:	f000 80f2 	beq.w	d0041dd6 <fillTriangleDitherBayer2Mode+0x2e2>
d0041bf2:	ee76 8ac5 	vsub.f32	s17, s13, s10
d0041bf6:	ed9f 1a8a 	vldr	s2, [pc, #552]	; d0041e20 <fillTriangleDitherBayer2Mode+0x32c>
d0041bfa:	eef4 8ac1 	vcmpe.f32	s17, s2
d0041bfe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041c02:	f240 80e8 	bls.w	d0041dd6 <fillTriangleDitherBayer2Mode+0x2e2>
d0041c06:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0041c0a:	ee33 9ac5 	vsub.f32	s18, s7, s10
d0041c0e:	ee72 0ac6 	vsub.f32	s1, s5, s12
d0041c12:	eec9 7aa8 	vdiv.f32	s15, s19, s17
d0041c16:	eeb4 9ac1 	vcmpe.f32	s18, s2
d0041c1a:	ee32 8a43 	vsub.f32	s16, s4, s6
d0041c1e:	ee74 8a47 	vsub.f32	s17, s8, s14
d0041c22:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041c26:	ee60 0aa7 	vmul.f32	s1, s1, s15
d0041c2a:	ee28 8a27 	vmul.f32	s16, s16, s15
d0041c2e:	ee68 8aa7 	vmul.f32	s17, s17, s15
d0041c32:	f300 80ff 	bgt.w	d0041e34 <fillTriangleDitherBayer2Mode+0x340>
d0041c36:	eef1 7a04 	vmov.f32	s15, #20	; 0x40a00000  5.0
d0041c3a:	ed9f ba7c 	vldr	s22, [pc, #496]	; d0041e2c <fillTriangleDitherBayer2Mode+0x338>
d0041c3e:	eddf 9a79 	vldr	s19, [pc, #484]	; d0041e24 <fillTriangleDitherBayer2Mode+0x330>
d0041c42:	ee76 fae3 	vsub.f32	s31, s13, s7
d0041c46:	fec1 1a8b 	vmaxnm.f32	s3, s3, s22
d0041c4a:	fec1 7ae7 	vminnm.f32	s15, s3, s15
d0041c4e:	ee67 7aa9 	vmul.f32	s15, s15, s19
d0041c52:	eef4 fac1 	vcmpe.f32	s31, s2
d0041c56:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041c5a:	ee17 3a90 	vmov	r3, s15
d0041c5e:	edcd 7a00 	vstr	s15, [sp]
d0041c62:	2b10      	cmp	r3, #16
d0041c64:	bfa8      	it	ge
d0041c66:	2310      	movge	r3, #16
d0041c68:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041c6c:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0041c70:	9302      	str	r3, [sp, #8]
d0041c72:	f340 80b0 	ble.w	d0041dd6 <fillTriangleDitherBayer2Mode+0x2e2>
d0041c76:	eef0 ea4b 	vmov.f32	s29, s22
d0041c7a:	eef0 ba4b 	vmov.f32	s23, s22
d0041c7e:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d0041c82:	eddf 1a67 	vldr	s3, [pc, #412]	; d0041e20 <fillTriangleDitherBayer2Mode+0x32c>
d0041c86:	ee72 2ae4 	vsub.f32	s5, s5, s9
d0041c8a:	ee32 2a40 	vsub.f32	s4, s4, s0
d0041c8e:	eec1 7a2f 	vdiv.f32	s15, s2, s31
d0041c92:	eeb4 9ae1 	vcmpe.f32	s18, s3
d0041c96:	ee34 4a65 	vsub.f32	s8, s8, s11
d0041c9a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041c9e:	ee62 2aa7 	vmul.f32	s5, s5, s15
d0041ca2:	ee24 fa27 	vmul.f32	s30, s8, s15
d0041ca6:	edcd 2a06 	vstr	s5, [sp, #24]
d0041caa:	ee62 2a27 	vmul.f32	s5, s4, s15
d0041cae:	edcd 2a05 	vstr	s5, [sp, #20]
d0041cb2:	f300 80f7 	bgt.w	d0041ea4 <fillTriangleDitherBayer2Mode+0x3b0>
d0041cb6:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0041cba:	edcd 7a03 	vstr	s15, [sp, #12]
d0041cbe:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0041cc2:	f240 123f 	movw	r2, #319	; 0x13f
d0041cc6:	9903      	ldr	r1, [sp, #12]
d0041cc8:	ee17 3a90 	vmov	r3, s15
d0041ccc:	ea21 78e1 	bic.w	r8, r1, r1, asr #31
d0041cd0:	3b01      	subs	r3, #1
d0041cd2:	4293      	cmp	r3, r2
d0041cd4:	bfa8      	it	ge
d0041cd6:	4613      	movge	r3, r2
d0041cd8:	4543      	cmp	r3, r8
d0041cda:	db7c      	blt.n	d0041dd6 <fillTriangleDitherBayer2Mode+0x2e2>
d0041cdc:	ee07 8a90 	vmov	s15, r8
d0041ce0:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0041ce4:	3301      	adds	r3, #1
d0041ce6:	ed9d ba06 	vldr	s22, [sp, #24]
d0041cea:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041cee:	eddd aa05 	vldr	s21, [sp, #20]
d0041cf2:	ed9f 9a4b 	vldr	s18, [pc, #300]	; d0041e20 <fillTriangleDitherBayer2Mode+0x32c>
d0041cf6:	ed9f 1a4c 	vldr	s2, [pc, #304]	; d0041e28 <fillTriangleDitherBayer2Mode+0x334>
d0041cfa:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0041cfe:	ed9f 4a4b 	vldr	s8, [pc, #300]	; d0041e2c <fillTriangleDitherBayer2Mode+0x338>
d0041d02:	eddf 1a4b 	vldr	s3, [pc, #300]	; d0041e30 <fillTriangleDitherBayer2Mode+0x33c>
d0041d06:	9301      	str	r3, [sp, #4]
d0041d08:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0041d0c:	ee77 3ae3 	vsub.f32	s7, s15, s7
d0041d10:	eea0 6a85 	vfma.f32	s12, s1, s10
d0041d14:	eea8 3a05 	vfma.f32	s6, s16, s10
d0041d18:	eea8 7a85 	vfma.f32	s14, s17, s10
d0041d1c:	eeeb 4a23 	vfma.f32	s9, s22, s7
d0041d20:	eeaa 0aa3 	vfma.f32	s0, s21, s7
d0041d24:	eeef 5a23 	vfma.f32	s11, s30, s7
d0041d28:	e033      	b.n	d0041d92 <fillTriangleDitherBayer2Mode+0x29e>
d0041d2a:	eeb0 2a47 	vmov.f32	s4, s14
d0041d2e:	eef0 9a43 	vmov.f32	s19, s6
d0041d32:	eef0 6a46 	vmov.f32	s13, s12
d0041d36:	eef0 3a65 	vmov.f32	s7, s11
d0041d3a:	eeb0 5a40 	vmov.f32	s10, s0
d0041d3e:	eef0 2a64 	vmov.f32	s5, s9
d0041d42:	fefa 7a66 	vrintp.f32	s15, s13
d0041d46:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041d4a:	f240 13df 	movw	r3, #479	; 0x1df
d0041d4e:	ee17 4a90 	vmov	r4, s15
d0041d52:	fefa 7a62 	vrintp.f32	s15, s5
d0041d56:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041d5a:	3c01      	subs	r4, #1
d0041d5c:	ee17 1a90 	vmov	r1, s15
d0041d60:	429c      	cmp	r4, r3
d0041d62:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d0041d66:	bfa8      	it	ge
d0041d68:	461c      	movge	r4, r3
d0041d6a:	42a1      	cmp	r1, r4
d0041d6c:	f340 817b 	ble.w	d0042066 <fillTriangleDitherBayer2Mode+0x572>
d0041d70:	f108 0801 	add.w	r8, r8, #1
d0041d74:	9b01      	ldr	r3, [sp, #4]
d0041d76:	ee36 6a20 	vadd.f32	s12, s12, s1
d0041d7a:	4598      	cmp	r8, r3
d0041d7c:	ee33 3a08 	vadd.f32	s6, s6, s16
d0041d80:	ee37 7a28 	vadd.f32	s14, s14, s17
d0041d84:	ee74 4a8b 	vadd.f32	s9, s9, s22
d0041d88:	ee30 0a2a 	vadd.f32	s0, s0, s21
d0041d8c:	ee75 5a8f 	vadd.f32	s11, s11, s30
d0041d90:	d021      	beq.n	d0041dd6 <fillTriangleDitherBayer2Mode+0x2e2>
d0041d92:	eeb4 6ae4 	vcmpe.f32	s12, s9
d0041d96:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041d9a:	dcc6      	bgt.n	d0041d2a <fillTriangleDitherBayer2Mode+0x236>
d0041d9c:	eeb0 2a65 	vmov.f32	s4, s11
d0041da0:	eef0 9a40 	vmov.f32	s19, s0
d0041da4:	eef0 6a64 	vmov.f32	s13, s9
d0041da8:	eef0 3a47 	vmov.f32	s7, s14
d0041dac:	eeb0 5a43 	vmov.f32	s10, s6
d0041db0:	eef0 2a46 	vmov.f32	s5, s12
d0041db4:	e7c5      	b.n	d0041d42 <fillTriangleDitherBayer2Mode+0x24e>
d0041db6:	eddd 6a08 	vldr	s13, [sp, #32]
d0041dba:	ed9d 6a09 	vldr	s12, [sp, #36]	; 0x24
d0041dbe:	ed9d fa0a 	vldr	s30, [sp, #40]	; 0x28
d0041dc2:	ed9d 0a0b 	vldr	s0, [sp, #44]	; 0x2c
d0041dc6:	eddf 7a16 	vldr	s15, [pc, #88]	; d0041e20 <fillTriangleDitherBayer2Mode+0x32c>
d0041dca:	eef4 fae7 	vcmpe.f32	s31, s15
d0041dce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041dd2:	f73f af74 	bgt.w	d0041cbe <fillTriangleDitherBayer2Mode+0x1ca>
d0041dd6:	b00d      	add	sp, #52	; 0x34
d0041dd8:	ecbd 8b10 	vpop	{d8-d15}
d0041ddc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0041de0:	eef4 3ae6 	vcmpe.f32	s7, s13
d0041de4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041de8:	f340 8124 	ble.w	d0042034 <fillTriangleDitherBayer2Mode+0x540>
d0041dec:	eeb0 8a44 	vmov.f32	s16, s8
d0041df0:	eef0 0a42 	vmov.f32	s1, s4
d0041df4:	eeb0 1a66 	vmov.f32	s2, s13
d0041df8:	eef0 7a62 	vmov.f32	s15, s5
d0041dfc:	eeb0 4a47 	vmov.f32	s8, s14
d0041e00:	eeb0 2a43 	vmov.f32	s4, s6
d0041e04:	eef0 6a45 	vmov.f32	s13, s10
d0041e08:	eef0 2a46 	vmov.f32	s5, s12
d0041e0c:	eeb0 7a48 	vmov.f32	s14, s16
d0041e10:	eeb0 3a60 	vmov.f32	s6, s1
d0041e14:	eeb0 5a41 	vmov.f32	s10, s2
d0041e18:	eeb0 6a67 	vmov.f32	s12, s15
d0041e1c:	e6d8      	b.n	d0041bd0 <fillTriangleDitherBayer2Mode+0xdc>
d0041e1e:	bf00      	nop
d0041e20:	38d1b717 	.word	0x38d1b717
d0041e24:	404ccccd 	.word	0x404ccccd
d0041e28:	33d6bf95 	.word	0x33d6bf95
d0041e2c:	00000000 	.word	0x00000000
d0041e30:	477fff00 	.word	0x477fff00
d0041e34:	ee89 aa89 	vdiv.f32	s20, s19, s18
d0041e38:	ed1f ba06 	vldr	s22, [pc, #-24]	; d0041e24 <fillTriangleDitherBayer2Mode+0x330>
d0041e3c:	ed5f 9a05 	vldr	s19, [pc, #-20]	; d0041e2c <fillTriangleDitherBayer2Mode+0x338>
d0041e40:	fec1 1aa9 	vmaxnm.f32	s3, s3, s19
d0041e44:	eef1 7a04 	vmov.f32	s15, #20	; 0x40a00000  5.0
d0041e48:	ee74 aac6 	vsub.f32	s21, s9, s12
d0041e4c:	ee76 fae3 	vsub.f32	s31, s13, s7
d0041e50:	fec1 7ae7 	vminnm.f32	s15, s3, s15
d0041e54:	ee67 7a8b 	vmul.f32	s15, s15, s22
d0041e58:	ee70 1a43 	vsub.f32	s3, s0, s6
d0041e5c:	eef4 fac1 	vcmpe.f32	s31, s2
d0041e60:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041e64:	ee35 bac7 	vsub.f32	s22, s11, s14
d0041e68:	ee17 3a90 	vmov	r3, s15
d0041e6c:	edcd 7a00 	vstr	s15, [sp]
d0041e70:	2b10      	cmp	r3, #16
d0041e72:	ee6a 7a8a 	vmul.f32	s15, s21, s20
d0041e76:	ee2b ba0a 	vmul.f32	s22, s22, s20
d0041e7a:	bfa8      	it	ge
d0041e7c:	2310      	movge	r3, #16
d0041e7e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041e82:	eef0 ba67 	vmov.f32	s23, s15
d0041e86:	ee61 7a8a 	vmul.f32	s15, s3, s20
d0041e8a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0041e8e:	9302      	str	r3, [sp, #8]
d0041e90:	eef0 ea67 	vmov.f32	s29, s15
d0041e94:	f73f aef3 	bgt.w	d0041c7e <fillTriangleDitherBayer2Mode+0x18a>
d0041e98:	eeb0 fa69 	vmov.f32	s30, s19
d0041e9c:	edcd 9a05 	vstr	s19, [sp, #20]
d0041ea0:	edcd 9a06 	vstr	s19, [sp, #24]
d0041ea4:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0041ea8:	f240 123f 	movw	r2, #319	; 0x13f
d0041eac:	ee17 3a90 	vmov	r3, s15
d0041eb0:	edcd 7a03 	vstr	s15, [sp, #12]
d0041eb4:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d0041eb8:	3b01      	subs	r3, #1
d0041eba:	ee17 8a90 	vmov	r8, s15
d0041ebe:	4293      	cmp	r3, r2
d0041ec0:	ea28 78e8 	bic.w	r8, r8, r8, asr #31
d0041ec4:	bfa8      	it	ge
d0041ec6:	4613      	movge	r3, r2
d0041ec8:	4543      	cmp	r3, r8
d0041eca:	f6ff af7c 	blt.w	d0041dc6 <fillTriangleDitherBayer2Mode+0x2d2>
d0041ece:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0041ed2:	3301      	adds	r3, #1
d0041ed4:	eeb0 aa46 	vmov.f32	s20, s12
d0041ed8:	ed5f da2d 	vldr	s27, [pc, #-180]	; d0041e28 <fillTriangleDitherBayer2Mode+0x334>
d0041edc:	eef0 aa46 	vmov.f32	s21, s12
d0041ee0:	ed5f 2a2e 	vldr	s5, [pc, #-184]	; d0041e2c <fillTriangleDitherBayer2Mode+0x338>
d0041ee4:	ee37 4ac5 	vsub.f32	s8, s15, s10
d0041ee8:	ee07 8a90 	vmov	s15, r8
d0041eec:	eeb0 da43 	vmov.f32	s26, s6
d0041ef0:	ed1f 1a31 	vldr	s2, [pc, #-196]	; d0041e30 <fillTriangleDitherBayer2Mode+0x33c>
d0041ef4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041ef8:	9301      	str	r3, [sp, #4]
d0041efa:	eef0 ca47 	vmov.f32	s25, s14
d0041efe:	edcd 6a08 	vstr	s13, [sp, #32]
d0041f02:	eeb0 ea6b 	vmov.f32	s28, s23
d0041f06:	ed8d 6a09 	vstr	s12, [sp, #36]	; 0x24
d0041f0a:	ee77 7a84 	vadd.f32	s15, s15, s8
d0041f0e:	ed8d fa0a 	vstr	s30, [sp, #40]	; 0x28
d0041f12:	eeb0 ca43 	vmov.f32	s24, s6
d0041f16:	ed8d 0a0b 	vstr	s0, [sp, #44]	; 0x2c
d0041f1a:	eea7 aaab 	vfma.f32	s20, s15, s23
d0041f1e:	eef0 ba47 	vmov.f32	s23, s14
d0041f22:	eee0 aaa7 	vfma.f32	s21, s1, s15
d0041f26:	eea8 da27 	vfma.f32	s26, s16, s15
d0041f2a:	eee8 caa7 	vfma.f32	s25, s17, s15
d0041f2e:	eea7 caae 	vfma.f32	s24, s15, s29
d0041f32:	eee7 ba8b 	vfma.f32	s23, s15, s22
d0041f36:	e034      	b.n	d0041fa2 <fillTriangleDitherBayer2Mode+0x4ae>
d0041f38:	eef0 1a6c 	vmov.f32	s3, s25
d0041f3c:	eeb0 2a4d 	vmov.f32	s4, s26
d0041f40:	eef0 7a6a 	vmov.f32	s15, s21
d0041f44:	eeb0 6a6b 	vmov.f32	s12, s23
d0041f48:	eef0 6a4c 	vmov.f32	s13, s24
d0041f4c:	eeb0 4a4a 	vmov.f32	s8, s20
d0041f50:	feba 0a67 	vrintp.f32	s0, s15
d0041f54:	eebd 0ac0 	vcvt.s32.f32	s0, s0
d0041f58:	feba 9a44 	vrintp.f32	s18, s8
d0041f5c:	f240 13df 	movw	r3, #479	; 0x1df
d0041f60:	ee10 4a10 	vmov	r4, s0
d0041f64:	eebd 0ac9 	vcvt.s32.f32	s0, s18
d0041f68:	3c01      	subs	r4, #1
d0041f6a:	ee10 1a10 	vmov	r1, s0
d0041f6e:	429c      	cmp	r4, r3
d0041f70:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d0041f74:	bfa8      	it	ge
d0041f76:	461c      	movge	r4, r3
d0041f78:	428c      	cmp	r4, r1
d0041f7a:	f280 8159 	bge.w	d0042230 <fillTriangleDitherBayer2Mode+0x73c>
d0041f7e:	f108 0801 	add.w	r8, r8, #1
d0041f82:	9b01      	ldr	r3, [sp, #4]
d0041f84:	ee7a aaa0 	vadd.f32	s21, s21, s1
d0041f88:	4598      	cmp	r8, r3
d0041f8a:	ee3d da08 	vadd.f32	s26, s26, s16
d0041f8e:	ee7c caa8 	vadd.f32	s25, s25, s17
d0041f92:	ee3a aa0e 	vadd.f32	s20, s20, s28
d0041f96:	ee3c ca2e 	vadd.f32	s24, s24, s29
d0041f9a:	ee7b ba8b 	vadd.f32	s23, s23, s22
d0041f9e:	f43f af0a 	beq.w	d0041db6 <fillTriangleDitherBayer2Mode+0x2c2>
d0041fa2:	eef4 aaca 	vcmpe.f32	s21, s20
d0041fa6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041faa:	dcc5      	bgt.n	d0041f38 <fillTriangleDitherBayer2Mode+0x444>
d0041fac:	eef0 1a6b 	vmov.f32	s3, s23
d0041fb0:	eeb0 2a4c 	vmov.f32	s4, s24
d0041fb4:	eef0 7a4a 	vmov.f32	s15, s20
d0041fb8:	eeb0 6a6c 	vmov.f32	s12, s25
d0041fbc:	eef0 6a4d 	vmov.f32	s13, s26
d0041fc0:	eeb0 4a6a 	vmov.f32	s8, s21
d0041fc4:	e7c4      	b.n	d0041f50 <fillTriangleDitherBayer2Mode+0x45c>
d0041fc6:	eeb0 1a45 	vmov.f32	s2, s10
d0041fca:	eeb0 5a66 	vmov.f32	s10, s13
d0041fce:	eeb0 8a47 	vmov.f32	s16, s14
d0041fd2:	eef0 6a41 	vmov.f32	s13, s2
d0041fd6:	eef0 0a43 	vmov.f32	s1, s6
d0041fda:	eef0 7a46 	vmov.f32	s15, s12
d0041fde:	eef4 3ae6 	vcmpe.f32	s7, s13
d0041fe2:	eeb0 7a44 	vmov.f32	s14, s8
d0041fe6:	eeb0 3a42 	vmov.f32	s6, s4
d0041fea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041fee:	eeb0 6a62 	vmov.f32	s12, s5
d0041ff2:	eeb0 4a48 	vmov.f32	s8, s16
d0041ff6:	eeb0 2a60 	vmov.f32	s4, s1
d0041ffa:	eef0 2a67 	vmov.f32	s5, s15
d0041ffe:	f77f ade7 	ble.w	d0041bd0 <fillTriangleDitherBayer2Mode+0xdc>
d0042002:	eeb0 8a65 	vmov.f32	s16, s11
d0042006:	eef0 0a40 	vmov.f32	s1, s0
d004200a:	eeb0 1a63 	vmov.f32	s2, s7
d004200e:	eef0 7a64 	vmov.f32	s15, s9
d0042012:	eef0 5a44 	vmov.f32	s11, s8
d0042016:	eeb0 0a42 	vmov.f32	s0, s4
d004201a:	eef0 3a66 	vmov.f32	s7, s13
d004201e:	eef0 4a62 	vmov.f32	s9, s5
d0042022:	eeb0 4a48 	vmov.f32	s8, s16
d0042026:	eeb0 2a60 	vmov.f32	s4, s1
d004202a:	eef0 6a41 	vmov.f32	s13, s2
d004202e:	eef0 2a67 	vmov.f32	s5, s15
d0042032:	e5cd      	b.n	d0041bd0 <fillTriangleDitherBayer2Mode+0xdc>
d0042034:	eeb0 8a47 	vmov.f32	s16, s14
d0042038:	eef0 0a43 	vmov.f32	s1, s6
d004203c:	eeb0 1a45 	vmov.f32	s2, s10
d0042040:	eef0 7a46 	vmov.f32	s15, s12
d0042044:	eeb0 7a65 	vmov.f32	s14, s11
d0042048:	eeb0 3a40 	vmov.f32	s6, s0
d004204c:	eeb0 5a63 	vmov.f32	s10, s7
d0042050:	eeb0 6a64 	vmov.f32	s12, s9
d0042054:	eef0 5a48 	vmov.f32	s11, s16
d0042058:	eeb0 0a60 	vmov.f32	s0, s1
d004205c:	eef0 3a41 	vmov.f32	s7, s2
d0042060:	eef0 4a67 	vmov.f32	s9, s15
d0042064:	e5ae      	b.n	d0041bc4 <fillTriangleDitherBayer2Mode+0xd0>
d0042066:	ee76 6ae2 	vsub.f32	s13, s13, s5
d004206a:	eef4 6ac9 	vcmpe.f32	s13, s18
d004206e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042072:	f340 8207 	ble.w	d0042484 <fillTriangleDitherBayer2Mode+0x990>
d0042076:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d004207a:	ee79 9ac5 	vsub.f32	s19, s19, s10
d004207e:	ee32 2a63 	vsub.f32	s4, s4, s7
d0042082:	ee87 aaa6 	vdiv.f32	s20, s15, s13
d0042086:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004208a:	ee77 2ae2 	vsub.f32	s5, s15, s5
d004208e:	ee07 1a90 	vmov	s15, r1
d0042092:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0042096:	ee77 7aa2 	vadd.f32	s15, s15, s5
d004209a:	ee69 9a8a 	vmul.f32	s19, s19, s20
d004209e:	ee22 aa0a 	vmul.f32	s20, s4, s20
d00420a2:	eea7 5aa9 	vfma.f32	s10, s15, s19
d00420a6:	eee7 3a8a 	vfma.f32	s7, s15, s20
d00420aa:	ebc8 1208 	rsb	r2, r8, r8, lsl #4
d00420ae:	4dd3      	ldr	r5, [pc, #844]	; (d00423fc <fillTriangleDitherBayer2Mode+0x908>)
d00420b0:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d00420b4:	48d2      	ldr	r0, [pc, #840]	; (d0042400 <fillTriangleDitherBayer2Mode+0x90c>)
d00420b6:	eb01 1242 	add.w	r2, r1, r2, lsl #5
d00420ba:	682f      	ldr	r7, [r5, #0]
d00420bc:	eb08 1383 	add.w	r3, r8, r3, lsl #6
d00420c0:	f008 0503 	and.w	r5, r8, #3
d00420c4:	eb00 0942 	add.w	r9, r0, r2, lsl #1
d00420c8:	4ace      	ldr	r2, [pc, #824]	; (d0042404 <fillTriangleDitherBayer2Mode+0x910>)
d00420ca:	441f      	add	r7, r3
d00420cc:	f8cd 800c 	str.w	r8, [sp, #12]
d00420d0:	eb02 0385 	add.w	r3, r2, r5, lsl #2
d00420d4:	eeb6 2a00 	vmov.f32	s4, #96	; 0x3f000000  0.5
d00420d8:	4698      	mov	r8, r3
d00420da:	e010      	b.n	d00420fe <fillTriangleDitherBayer2Mode+0x60a>
d00420dc:	ee07 3a90 	vmov	s15, r3
d00420e0:	4419      	add	r1, r3
d00420e2:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d00420e6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00420ea:	428c      	cmp	r4, r1
d00420ec:	eb09 0943 	add.w	r9, r9, r3, lsl #1
d00420f0:	eb07 1782 	add.w	r7, r7, r2, lsl #6
d00420f4:	eea7 5aa9 	vfma.f32	s10, s15, s19
d00420f8:	eee7 3a8a 	vfma.f32	s7, s15, s20
d00420fc:	db62      	blt.n	d00421c4 <fillTriangleDitherBayer2Mode+0x6d0>
d00420fe:	eba4 0c01 	sub.w	ip, r4, r1
d0042102:	eeb4 5ac1 	vcmpe.f32	s10, s2
d0042106:	f10c 0301 	add.w	r3, ip, #1
d004210a:	2b30      	cmp	r3, #48	; 0x30
d004210c:	bfa8      	it	ge
d004210e:	2330      	movge	r3, #48	; 0x30
d0042110:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042114:	d9e2      	bls.n	d00420dc <fillTriangleDitherBayer2Mode+0x5e8>
d0042116:	f1bc 0f00 	cmp.w	ip, #0
d004211a:	eec3 7a85 	vdiv.f32	s15, s7, s10
d004211e:	dd54      	ble.n	d00421ca <fillTriangleDitherBayer2Mode+0x6d6>
d0042120:	1e5a      	subs	r2, r3, #1
d0042122:	ee06 2a90 	vmov	s13, r2
d0042126:	eef0 2a45 	vmov.f32	s5, s10
d004212a:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d004212e:	eee6 2aa9 	vfma.f32	s5, s13, s19
d0042132:	eef4 2ac1 	vcmpe.f32	s5, s2
d0042136:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004213a:	dd47      	ble.n	d00421cc <fillTriangleDitherBayer2Mode+0x6d8>
d004213c:	eeb0 ca63 	vmov.f32	s24, s7
d0042140:	9a00      	ldr	r2, [sp, #0]
d0042142:	2a0f      	cmp	r2, #15
d0042144:	eea6 ca8a 	vfma.f32	s24, s13, s20
d0042148:	eecc ba22 	vdiv.f32	s23, s24, s5
d004214c:	ee7b bae7 	vsub.f32	s23, s23, s15
d0042150:	eecb 2aa6 	vdiv.f32	s5, s23, s13
d0042154:	dd3f      	ble.n	d00421d6 <fillTriangleDitherBayer2Mode+0x6e2>
d0042156:	f1a9 0602 	sub.w	r6, r9, #2
d004215a:	2200      	movs	r2, #0
d004215c:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d0042160:	fec6 6ae1 	vminnm.f32	s13, s13, s3
d0042164:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d0042168:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d004216c:	3201      	adds	r2, #1
d004216e:	ee76 6a82 	vadd.f32	s13, s13, s4
d0042172:	0185      	lsls	r5, r0, #6
d0042174:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0042178:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d004217c:	ee16 0a90 	vmov	r0, s13
d0042180:	b280      	uxth	r0, r0
d0042182:	4586      	cmp	lr, r0
d0042184:	d903      	bls.n	d004218e <fillTriangleDitherBayer2Mode+0x69a>
d0042186:	8030      	strh	r0, [r6, #0]
d0042188:	f04f 0010 	mov.w	r0, #16
d004218c:	5578      	strb	r0, [r7, r5]
d004218e:	4293      	cmp	r3, r2
d0042190:	dce4      	bgt.n	d004215c <fillTriangleDitherBayer2Mode+0x668>
d0042192:	f1bc 0f00 	cmp.w	ip, #0
d0042196:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d004219a:	ea4f 0043 	mov.w	r0, r3, lsl #1
d004219e:	ea4f 1282 	mov.w	r2, r2, lsl #6
d00421a2:	bfbc      	itt	lt
d00421a4:	2002      	movlt	r0, #2
d00421a6:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d00421aa:	4481      	add	r9, r0
d00421ac:	4417      	add	r7, r2
d00421ae:	ee07 3a90 	vmov	s15, r3
d00421b2:	4419      	add	r1, r3
d00421b4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00421b8:	428c      	cmp	r4, r1
d00421ba:	eea7 5aa9 	vfma.f32	s10, s15, s19
d00421be:	eee7 3a8a 	vfma.f32	s7, s15, s20
d00421c2:	da9c      	bge.n	d00420fe <fillTriangleDitherBayer2Mode+0x60a>
d00421c4:	f8dd 800c 	ldr.w	r8, [sp, #12]
d00421c8:	e5d2      	b.n	d0041d70 <fillTriangleDitherBayer2Mode+0x27c>
d00421ca:	d1f0      	bne.n	d00421ae <fillTriangleDitherBayer2Mode+0x6ba>
d00421cc:	9a00      	ldr	r2, [sp, #0]
d00421ce:	eef0 2a44 	vmov.f32	s5, s8
d00421d2:	2a0f      	cmp	r2, #15
d00421d4:	dcbf      	bgt.n	d0042156 <fillTriangleDitherBayer2Mode+0x662>
d00421d6:	2a00      	cmp	r2, #0
d00421d8:	f340 8136 	ble.w	d0042448 <fillTriangleDitherBayer2Mode+0x954>
d00421dc:	9404      	str	r4, [sp, #16]
d00421de:	f1a9 0e02 	sub.w	lr, r9, #2
d00421e2:	2200      	movs	r2, #0
d00421e4:	9c02      	ldr	r4, [sp, #8]
d00421e6:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d00421ea:	fec6 6ae1 	vminnm.f32	s13, s13, s3
d00421ee:	ee76 6a82 	vadd.f32	s13, s13, s4
d00421f2:	f83e af02 	ldrh.w	sl, [lr, #2]!
d00421f6:	188e      	adds	r6, r1, r2
d00421f8:	eb02 0582 	add.w	r5, r2, r2, lsl #2
d00421fc:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0042200:	3201      	adds	r2, #1
d0042202:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d0042206:	f006 0603 	and.w	r6, r6, #3
d004220a:	01ad      	lsls	r5, r5, #6
d004220c:	ee16 0a90 	vmov	r0, s13
d0042210:	b280      	uxth	r0, r0
d0042212:	4582      	cmp	sl, r0
d0042214:	d908      	bls.n	d0042228 <fillTriangleDitherBayer2Mode+0x734>
d0042216:	f818 6006 	ldrb.w	r6, [r8, r6]
d004221a:	f8ae 0000 	strh.w	r0, [lr]
d004221e:	42a6      	cmp	r6, r4
d0042220:	bfac      	ite	ge
d0042222:	4658      	movge	r0, fp
d0042224:	2010      	movlt	r0, #16
d0042226:	5578      	strb	r0, [r7, r5]
d0042228:	4293      	cmp	r3, r2
d004222a:	dcdc      	bgt.n	d00421e6 <fillTriangleDitherBayer2Mode+0x6f2>
d004222c:	9c04      	ldr	r4, [sp, #16]
d004222e:	e7b0      	b.n	d0042192 <fillTriangleDitherBayer2Mode+0x69e>
d0042230:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0042234:	ed9f 0a74 	vldr	s0, [pc, #464]	; d0042408 <fillTriangleDitherBayer2Mode+0x914>
d0042238:	eef4 7ac0 	vcmpe.f32	s15, s0
d004223c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042240:	f340 8125 	ble.w	d004248e <fillTriangleDitherBayer2Mode+0x99a>
d0042244:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d0042248:	ee32 2a66 	vsub.f32	s4, s4, s13
d004224c:	ee71 1ac6 	vsub.f32	s3, s3, s12
d0042250:	ee89 0a27 	vdiv.f32	s0, s18, s15
d0042254:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0042258:	ee37 4ac4 	vsub.f32	s8, s15, s8
d004225c:	ee07 1a90 	vmov	s15, r1
d0042260:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0042264:	ee77 7a84 	vadd.f32	s15, s15, s8
d0042268:	ee22 2a00 	vmul.f32	s4, s4, s0
d004226c:	ee61 1a80 	vmul.f32	s3, s3, s0
d0042270:	eee7 6a82 	vfma.f32	s13, s15, s4
d0042274:	eea7 6aa1 	vfma.f32	s12, s15, s3
d0042278:	ebc8 1208 	rsb	r2, r8, r8, lsl #4
d004227c:	4d5f      	ldr	r5, [pc, #380]	; (d00423fc <fillTriangleDitherBayer2Mode+0x908>)
d004227e:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0042282:	485f      	ldr	r0, [pc, #380]	; (d0042400 <fillTriangleDitherBayer2Mode+0x90c>)
d0042284:	eb01 1242 	add.w	r2, r1, r2, lsl #5
d0042288:	682f      	ldr	r7, [r5, #0]
d004228a:	eb08 1383 	add.w	r3, r8, r3, lsl #6
d004228e:	f008 0503 	and.w	r5, r8, #3
d0042292:	eb00 0942 	add.w	r9, r0, r2, lsl #1
d0042296:	4a5b      	ldr	r2, [pc, #364]	; (d0042404 <fillTriangleDitherBayer2Mode+0x910>)
d0042298:	441f      	add	r7, r3
d004229a:	f8cd 8010 	str.w	r8, [sp, #16]
d004229e:	eb02 0385 	add.w	r3, r2, r5, lsl #2
d00422a2:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d00422a6:	4698      	mov	r8, r3
d00422a8:	e010      	b.n	d00422cc <fillTriangleDitherBayer2Mode+0x7d8>
d00422aa:	ee07 2a90 	vmov	s15, r2
d00422ae:	4411      	add	r1, r2
d00422b0:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d00422b4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00422b8:	428c      	cmp	r4, r1
d00422ba:	eb09 0942 	add.w	r9, r9, r2, lsl #1
d00422be:	eb07 1783 	add.w	r7, r7, r3, lsl #6
d00422c2:	eee7 6a82 	vfma.f32	s13, s15, s4
d00422c6:	eea7 6aa1 	vfma.f32	s12, s15, s3
d00422ca:	db62      	blt.n	d0042392 <fillTriangleDitherBayer2Mode+0x89e>
d00422cc:	eba4 0c01 	sub.w	ip, r4, r1
d00422d0:	eef4 6aed 	vcmpe.f32	s13, s27
d00422d4:	f10c 0201 	add.w	r2, ip, #1
d00422d8:	2a30      	cmp	r2, #48	; 0x30
d00422da:	bfa8      	it	ge
d00422dc:	2230      	movge	r2, #48	; 0x30
d00422de:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00422e2:	d9e2      	bls.n	d00422aa <fillTriangleDitherBayer2Mode+0x7b6>
d00422e4:	f1bc 0f00 	cmp.w	ip, #0
d00422e8:	eec6 7a26 	vdiv.f32	s15, s12, s13
d00422ec:	dd54      	ble.n	d0042398 <fillTriangleDitherBayer2Mode+0x8a4>
d00422ee:	1e53      	subs	r3, r2, #1
d00422f0:	ee00 3a10 	vmov	s0, r3
d00422f4:	eeb0 9a66 	vmov.f32	s18, s13
d00422f8:	eeb8 0ac0 	vcvt.f32.s32	s0, s0
d00422fc:	eea0 9a02 	vfma.f32	s18, s0, s4
d0042300:	eeb4 9aed 	vcmpe.f32	s18, s27
d0042304:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042308:	dd47      	ble.n	d004239a <fillTriangleDitherBayer2Mode+0x8a6>
d004230a:	eeb0 fa46 	vmov.f32	s30, s12
d004230e:	9b00      	ldr	r3, [sp, #0]
d0042310:	2b0f      	cmp	r3, #15
d0042312:	eea0 fa21 	vfma.f32	s30, s0, s3
d0042316:	eecf 9a09 	vdiv.f32	s19, s30, s18
d004231a:	ee79 9ae7 	vsub.f32	s19, s19, s15
d004231e:	ee89 9a80 	vdiv.f32	s18, s19, s0
d0042322:	dd3f      	ble.n	d00423a4 <fillTriangleDitherBayer2Mode+0x8b0>
d0042324:	f1a9 0602 	sub.w	r6, r9, #2
d0042328:	2000      	movs	r0, #0
d004232a:	fe87 0aa2 	vmaxnm.f32	s0, s15, s5
d004232e:	fe80 0a41 	vminnm.f32	s0, s0, s2
d0042332:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0042336:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d004233a:	3001      	adds	r0, #1
d004233c:	ee30 0a04 	vadd.f32	s0, s0, s8
d0042340:	019d      	lsls	r5, r3, #6
d0042342:	ee77 7a89 	vadd.f32	s15, s15, s18
d0042346:	eebc 0ac0 	vcvt.u32.f32	s0, s0
d004234a:	ee10 3a10 	vmov	r3, s0
d004234e:	b29b      	uxth	r3, r3
d0042350:	459e      	cmp	lr, r3
d0042352:	d903      	bls.n	d004235c <fillTriangleDitherBayer2Mode+0x868>
d0042354:	8033      	strh	r3, [r6, #0]
d0042356:	f04f 0310 	mov.w	r3, #16
d004235a:	557b      	strb	r3, [r7, r5]
d004235c:	4282      	cmp	r2, r0
d004235e:	dce4      	bgt.n	d004232a <fillTriangleDitherBayer2Mode+0x836>
d0042360:	f1bc 0f00 	cmp.w	ip, #0
d0042364:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0042368:	ea4f 0042 	mov.w	r0, r2, lsl #1
d004236c:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0042370:	bfbc      	itt	lt
d0042372:	2002      	movlt	r0, #2
d0042374:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0042378:	4481      	add	r9, r0
d004237a:	441f      	add	r7, r3
d004237c:	ee07 2a90 	vmov	s15, r2
d0042380:	4411      	add	r1, r2
d0042382:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0042386:	428c      	cmp	r4, r1
d0042388:	eee7 6a82 	vfma.f32	s13, s15, s4
d004238c:	eea7 6aa1 	vfma.f32	s12, s15, s3
d0042390:	da9c      	bge.n	d00422cc <fillTriangleDitherBayer2Mode+0x7d8>
d0042392:	f8dd 8010 	ldr.w	r8, [sp, #16]
d0042396:	e5f2      	b.n	d0041f7e <fillTriangleDitherBayer2Mode+0x48a>
d0042398:	d1f0      	bne.n	d004237c <fillTriangleDitherBayer2Mode+0x888>
d004239a:	9b00      	ldr	r3, [sp, #0]
d004239c:	eeb0 9a62 	vmov.f32	s18, s5
d00423a0:	2b0f      	cmp	r3, #15
d00423a2:	dcbf      	bgt.n	d0042324 <fillTriangleDitherBayer2Mode+0x830>
d00423a4:	2b00      	cmp	r3, #0
d00423a6:	dd31      	ble.n	d004240c <fillTriangleDitherBayer2Mode+0x918>
d00423a8:	9407      	str	r4, [sp, #28]
d00423aa:	f1a9 0e02 	sub.w	lr, r9, #2
d00423ae:	2000      	movs	r0, #0
d00423b0:	9c02      	ldr	r4, [sp, #8]
d00423b2:	fe87 0aa2 	vmaxnm.f32	s0, s15, s5
d00423b6:	fe80 0a41 	vminnm.f32	s0, s0, s2
d00423ba:	ee30 0a04 	vadd.f32	s0, s0, s8
d00423be:	f83e af02 	ldrh.w	sl, [lr, #2]!
d00423c2:	180e      	adds	r6, r1, r0
d00423c4:	eb00 0580 	add.w	r5, r0, r0, lsl #2
d00423c8:	ee77 7a89 	vadd.f32	s15, s15, s18
d00423cc:	3001      	adds	r0, #1
d00423ce:	eebc 0ac0 	vcvt.u32.f32	s0, s0
d00423d2:	f006 0603 	and.w	r6, r6, #3
d00423d6:	01ad      	lsls	r5, r5, #6
d00423d8:	ee10 3a10 	vmov	r3, s0
d00423dc:	b29b      	uxth	r3, r3
d00423de:	459a      	cmp	sl, r3
d00423e0:	d908      	bls.n	d00423f4 <fillTriangleDitherBayer2Mode+0x900>
d00423e2:	f818 6006 	ldrb.w	r6, [r8, r6]
d00423e6:	f8ae 3000 	strh.w	r3, [lr]
d00423ea:	42a6      	cmp	r6, r4
d00423ec:	bfac      	ite	ge
d00423ee:	465b      	movge	r3, fp
d00423f0:	2310      	movlt	r3, #16
d00423f2:	557b      	strb	r3, [r7, r5]
d00423f4:	4282      	cmp	r2, r0
d00423f6:	dcdc      	bgt.n	d00423b2 <fillTriangleDitherBayer2Mode+0x8be>
d00423f8:	9c07      	ldr	r4, [sp, #28]
d00423fa:	e7b1      	b.n	d0042360 <fillTriangleDitherBayer2Mode+0x86c>
d00423fc:	d00e1d64 	.word	0xd00e1d64
d0042400:	d00e7d80 	.word	0xd00e7d80
d0042404:	d0046d64 	.word	0xd0046d64
d0042408:	38d1b717 	.word	0x38d1b717
d004240c:	f1a9 0602 	sub.w	r6, r9, #2
d0042410:	2000      	movs	r0, #0
d0042412:	fe87 0aa2 	vmaxnm.f32	s0, s15, s5
d0042416:	fe80 0a41 	vminnm.f32	s0, s0, s2
d004241a:	ee30 0a04 	vadd.f32	s0, s0, s8
d004241e:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0042422:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d0042426:	ee77 7a89 	vadd.f32	s15, s15, s18
d004242a:	019d      	lsls	r5, r3, #6
d004242c:	3001      	adds	r0, #1
d004242e:	eebc 0ac0 	vcvt.u32.f32	s0, s0
d0042432:	ee10 3a10 	vmov	r3, s0
d0042436:	b29b      	uxth	r3, r3
d0042438:	459e      	cmp	lr, r3
d004243a:	d902      	bls.n	d0042442 <fillTriangleDitherBayer2Mode+0x94e>
d004243c:	8033      	strh	r3, [r6, #0]
d004243e:	f807 b005 	strb.w	fp, [r7, r5]
d0042442:	4282      	cmp	r2, r0
d0042444:	dce5      	bgt.n	d0042412 <fillTriangleDitherBayer2Mode+0x91e>
d0042446:	e78b      	b.n	d0042360 <fillTriangleDitherBayer2Mode+0x86c>
d0042448:	f1a9 0602 	sub.w	r6, r9, #2
d004244c:	2200      	movs	r2, #0
d004244e:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d0042452:	fec6 6ae1 	vminnm.f32	s13, s13, s3
d0042456:	ee76 6a82 	vadd.f32	s13, s13, s4
d004245a:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d004245e:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d0042462:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0042466:	0185      	lsls	r5, r0, #6
d0042468:	3201      	adds	r2, #1
d004246a:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d004246e:	ee16 0a90 	vmov	r0, s13
d0042472:	b280      	uxth	r0, r0
d0042474:	4586      	cmp	lr, r0
d0042476:	d902      	bls.n	d004247e <fillTriangleDitherBayer2Mode+0x98a>
d0042478:	8030      	strh	r0, [r6, #0]
d004247a:	f807 b005 	strb.w	fp, [r7, r5]
d004247e:	4293      	cmp	r3, r2
d0042480:	dce5      	bgt.n	d004244e <fillTriangleDitherBayer2Mode+0x95a>
d0042482:	e686      	b.n	d0042192 <fillTriangleDitherBayer2Mode+0x69e>
d0042484:	eeb0 aa44 	vmov.f32	s20, s8
d0042488:	eef0 9a44 	vmov.f32	s19, s8
d004248c:	e60d      	b.n	d00420aa <fillTriangleDitherBayer2Mode+0x5b6>
d004248e:	eef0 1a62 	vmov.f32	s3, s5
d0042492:	eeb0 2a62 	vmov.f32	s4, s5
d0042496:	e6ef      	b.n	d0042278 <fillTriangleDitherBayer2Mode+0x784>

d0042498 <vec3Add>:
d0042498:	ee30 0a21 	vadd.f32	s0, s0, s3
d004249c:	b08e      	sub	sp, #56	; 0x38
d004249e:	ee70 0a82 	vadd.f32	s1, s1, s4
d00424a2:	ee31 1a22 	vadd.f32	s2, s2, s5
d00424a6:	b00e      	add	sp, #56	; 0x38
d00424a8:	4770      	bx	lr
d00424aa:	bf00      	nop

d00424ac <vec3Scale>:
d00424ac:	ee20 0a21 	vmul.f32	s0, s0, s3
d00424b0:	b08c      	sub	sp, #48	; 0x30
d00424b2:	ee61 0aa0 	vmul.f32	s1, s3, s1
d00424b6:	ee21 1a81 	vmul.f32	s2, s3, s2
d00424ba:	b00c      	add	sp, #48	; 0x30
d00424bc:	4770      	bx	lr
d00424be:	bf00      	nop

d00424c0 <vec3Dot>:
d00424c0:	ee20 2a82 	vmul.f32	s4, s1, s4
d00424c4:	b086      	sub	sp, #24
d00424c6:	eea0 2a21 	vfma.f32	s4, s0, s3
d00424ca:	eea1 2a22 	vfma.f32	s4, s2, s5
d00424ce:	eeb0 0a42 	vmov.f32	s0, s4
d00424d2:	b006      	add	sp, #24
d00424d4:	4770      	bx	lr
d00424d6:	bf00      	nop

d00424d8 <vec3Cross>:
d00424d8:	eeb0 7a60 	vmov.f32	s14, s1
d00424dc:	b08e      	sub	sp, #56	; 0x38
d00424de:	eef0 7a40 	vmov.f32	s15, s0
d00424e2:	ee62 0ac0 	vnmul.f32	s1, s5, s0
d00424e6:	ee61 6ac7 	vnmul.f32	s13, s3, s14
d00424ea:	ee22 0a41 	vnmul.f32	s0, s4, s2
d00424ee:	eee1 0a21 	vfma.f32	s1, s2, s3
d00424f2:	eee7 6a82 	vfma.f32	s13, s15, s4
d00424f6:	eea7 0a22 	vfma.f32	s0, s14, s5
d00424fa:	eeb0 1a66 	vmov.f32	s2, s13
d00424fe:	b00e      	add	sp, #56	; 0x38
d0042500:	4770      	bx	lr
d0042502:	bf00      	nop

d0042504 <vec3Normalize>:
d0042504:	ee60 7aa0 	vmul.f32	s15, s1, s1
d0042508:	ed9f 7a22 	vldr	s14, [pc, #136]	; d0042594 <vec3Normalize+0x90>
d004250c:	b08c      	sub	sp, #48	; 0x30
d004250e:	eee0 7a00 	vfma.f32	s15, s0, s0
d0042512:	eee1 7a01 	vfma.f32	s15, s2, s2
d0042516:	eef4 7ac7 	vcmpe.f32	s15, s14
d004251a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004251e:	d934      	bls.n	d004258a <vec3Normalize+0x86>
d0042520:	ed9f 7a1d 	vldr	s14, [pc, #116]	; d0042598 <vec3Normalize+0x94>
d0042524:	eef4 7a47 	vcmp.f32	s15, s14
d0042528:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004252c:	dd06      	ble.n	d004253c <vec3Normalize+0x38>
d004252e:	ed9f 7a1b 	vldr	s14, [pc, #108]	; d004259c <vec3Normalize+0x98>
d0042532:	eef4 7a47 	vcmp.f32	s15, s14
d0042536:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004253a:	d418      	bmi.n	d004256e <vec3Normalize+0x6a>
d004253c:	ee17 2a90 	vmov	r2, s15
d0042540:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d0042544:	4b16      	ldr	r3, [pc, #88]	; (d00425a0 <vec3Normalize+0x9c>)
d0042546:	eeb7 7a08 	vmov.f32	s14, #120	; 0x3fc00000  1.5
d004254a:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d004254e:	ee67 7a86 	vmul.f32	s15, s15, s12
d0042552:	ee06 3a90 	vmov	s13, r3
d0042556:	ee67 7aa6 	vmul.f32	s15, s15, s13
d004255a:	eea6 7ae7 	vfms.f32	s14, s13, s15
d004255e:	ee67 7a26 	vmul.f32	s15, s14, s13
d0042562:	ee27 0a80 	vmul.f32	s0, s15, s0
d0042566:	ee67 0aa0 	vmul.f32	s1, s15, s1
d004256a:	ee27 1a81 	vmul.f32	s2, s15, s2
d004256e:	ed8d 0a09 	vstr	s0, [sp, #36]	; 0x24
d0042572:	edcd 0a0a 	vstr	s1, [sp, #40]	; 0x28
d0042576:	ed8d 1a0b 	vstr	s2, [sp, #44]	; 0x2c
d004257a:	ed9d 0a09 	vldr	s0, [sp, #36]	; 0x24
d004257e:	eddd 0a0a 	vldr	s1, [sp, #40]	; 0x28
d0042582:	ed9d 1a0b 	vldr	s2, [sp, #44]	; 0x2c
d0042586:	b00c      	add	sp, #48	; 0x30
d0042588:	4770      	bx	lr
d004258a:	2300      	movs	r3, #0
d004258c:	9309      	str	r3, [sp, #36]	; 0x24
d004258e:	930a      	str	r3, [sp, #40]	; 0x28
d0042590:	930b      	str	r3, [sp, #44]	; 0x2c
d0042592:	e7f2      	b.n	d004257a <vec3Normalize+0x76>
d0042594:	358637bd 	.word	0x358637bd
d0042598:	3f7fbe77 	.word	0x3f7fbe77
d004259c:	3f8020c5 	.word	0x3f8020c5
d00425a0:	5f3759df 	.word	0x5f3759df

d00425a4 <rotateAroundAxis>:
d00425a4:	ee62 7a02 	vmul.f32	s15, s4, s4
d00425a8:	ed9f 7a51 	vldr	s14, [pc, #324]	; d00426f0 <rotateAroundAxis+0x14c>
d00425ac:	b500      	push	{lr}
d00425ae:	eee1 7aa1 	vfma.f32	s15, s3, s3
d00425b2:	ed2d 8b0c 	vpush	{d8-d13}
d00425b6:	eef0 ca40 	vmov.f32	s25, s0
d00425ba:	b08f      	sub	sp, #60	; 0x3c
d00425bc:	eeb0 ca60 	vmov.f32	s24, s1
d00425c0:	eef0 ba41 	vmov.f32	s23, s2
d00425c4:	eee2 7aa2 	vfma.f32	s15, s5, s5
d00425c8:	eeb0 da43 	vmov.f32	s26, s6
d00425cc:	eef4 7ac7 	vcmpe.f32	s15, s14
d00425d0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00425d4:	d97c      	bls.n	d00426d0 <rotateAroundAxis+0x12c>
d00425d6:	ed9f 7a47 	vldr	s14, [pc, #284]	; d00426f4 <rotateAroundAxis+0x150>
d00425da:	eef4 7a47 	vcmp.f32	s15, s14
d00425de:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00425e2:	dd55      	ble.n	d0042690 <rotateAroundAxis+0xec>
d00425e4:	ed9f 7a44 	vldr	s14, [pc, #272]	; d00426f8 <rotateAroundAxis+0x154>
d00425e8:	eef4 7a47 	vcmp.f32	s15, s14
d00425ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00425f0:	d54e      	bpl.n	d0042690 <rotateAroundAxis+0xec>
d00425f2:	eef0 da42 	vmov.f32	s27, s4
d00425f6:	eeb0 9a61 	vmov.f32	s18, s3
d00425fa:	eeb0 8a62 	vmov.f32	s16, s5
d00425fe:	ee60 8a82 	vmul.f32	s17, s1, s4
d0042602:	ee62 5ae0 	vnmul.f32	s11, s5, s1
d0042606:	ee21 6ac1 	vnmul.f32	s12, s3, s2
d004260a:	eeec 8a89 	vfma.f32	s17, s25, s18
d004260e:	ee6d 7aec 	vnmul.f32	s15, s27, s25
d0042612:	eeeb 5aad 	vfma.f32	s11, s23, s27
d0042616:	eeac 6a88 	vfma.f32	s12, s25, s16
d004261a:	eeec 7a09 	vfma.f32	s15, s24, s18
d004261e:	eeeb 8a88 	vfma.f32	s17, s23, s16
d0042622:	eeb0 ba65 	vmov.f32	s22, s11
d0042626:	eeb0 aa46 	vmov.f32	s20, s12
d004262a:	eef0 aa67 	vmov.f32	s21, s15
d004262e:	eeb0 0a4d 	vmov.f32	s0, s26
d0042632:	f003 ff0d 	bl	d0046450 <cosf>
d0042636:	eef0 9a40 	vmov.f32	s19, s0
d004263a:	eeb0 0a4d 	vmov.f32	s0, s26
d004263e:	f004 f8eb 	bl	d0046818 <sinf>
d0042642:	ee60 5a0b 	vmul.f32	s11, s0, s22
d0042646:	ee20 6a0a 	vmul.f32	s12, s0, s20
d004264a:	ee60 7a2a 	vmul.f32	s15, s0, s21
d004264e:	eee9 5aac 	vfma.f32	s11, s19, s25
d0042652:	eea9 6a8c 	vfma.f32	s12, s19, s24
d0042656:	eee9 7aab 	vfma.f32	s15, s19, s23
d004265a:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d004265e:	ee29 9a28 	vmul.f32	s18, s18, s17
d0042662:	ee2d 7aa8 	vmul.f32	s14, s27, s17
d0042666:	ee76 9ae9 	vsub.f32	s19, s13, s19
d004266a:	ee28 8a28 	vmul.f32	s16, s16, s17
d004266e:	eeb0 0a65 	vmov.f32	s0, s11
d0042672:	eef0 0a46 	vmov.f32	s1, s12
d0042676:	eeb0 1a67 	vmov.f32	s2, s15
d004267a:	eea9 0a89 	vfma.f32	s0, s19, s18
d004267e:	eee9 0a87 	vfma.f32	s1, s19, s14
d0042682:	eea9 1a88 	vfma.f32	s2, s19, s16
d0042686:	b00f      	add	sp, #60	; 0x3c
d0042688:	ecbd 8b0c 	vpop	{d8-d13}
d004268c:	f85d fb04 	ldr.w	pc, [sp], #4
d0042690:	ee17 2a90 	vmov	r2, s15
d0042694:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0042698:	4b18      	ldr	r3, [pc, #96]	; (d00426fc <rotateAroundAxis+0x158>)
d004269a:	eeb7 8a08 	vmov.f32	s16, #120	; 0x3fc00000  1.5
d004269e:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d00426a2:	ee67 7aa6 	vmul.f32	s15, s15, s13
d00426a6:	ee07 3a10 	vmov	s14, r3
d00426aa:	ee67 7a87 	vmul.f32	s15, s15, s14
d00426ae:	eea7 8a67 	vfms.f32	s16, s14, s15
d00426b2:	ee27 8a08 	vmul.f32	s16, s14, s16
d00426b6:	ee62 da08 	vmul.f32	s27, s4, s16
d00426ba:	ee21 9a88 	vmul.f32	s18, s3, s16
d00426be:	ee22 8a88 	vmul.f32	s16, s5, s16
d00426c2:	ee6c 8a2d 	vmul.f32	s17, s24, s27
d00426c6:	ee29 6a6b 	vnmul.f32	s12, s18, s23
d00426ca:	ee68 5a4c 	vnmul.f32	s11, s16, s24
d00426ce:	e79c      	b.n	d004260a <rotateAroundAxis+0x66>
d00426d0:	eddf 8a0b 	vldr	s17, [pc, #44]	; d0042700 <rotateAroundAxis+0x15c>
d00426d4:	eef0 aa68 	vmov.f32	s21, s17
d00426d8:	eeb0 aa68 	vmov.f32	s20, s17
d00426dc:	eeb0 ba68 	vmov.f32	s22, s17
d00426e0:	eeb0 8a68 	vmov.f32	s16, s17
d00426e4:	eef0 da68 	vmov.f32	s27, s17
d00426e8:	eeb0 9a68 	vmov.f32	s18, s17
d00426ec:	e79f      	b.n	d004262e <rotateAroundAxis+0x8a>
d00426ee:	bf00      	nop
d00426f0:	358637bd 	.word	0x358637bd
d00426f4:	3f7fbe77 	.word	0x3f7fbe77
d00426f8:	3f8020c5 	.word	0x3f8020c5
d00426fc:	5f3759df 	.word	0x5f3759df
d0042700:	00000000 	.word	0x00000000

d0042704 <vec3>:
d0042704:	b088      	sub	sp, #32
d0042706:	b008      	add	sp, #32
d0042708:	4770      	bx	lr
d004270a:	bf00      	nop

d004270c <powf>:
d004270c:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0042710:	eeb4 0a47 	vcmp.f32	s0, s14
d0042714:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042718:	d04e      	beq.n	d00427b8 <powf+0xac>
d004271a:	eef5 0a40 	vcmp.f32	s1, #0.0
d004271e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042722:	d049      	beq.n	d00427b8 <powf+0xac>
d0042724:	eef4 0a47 	vcmp.f32	s1, s14
d0042728:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004272c:	d054      	beq.n	d00427d8 <powf+0xcc>
d004272e:	eeb5 0a40 	vcmp.f32	s0, #0.0
d0042732:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042736:	d044      	beq.n	d00427c2 <powf+0xb6>
d0042738:	eefd 7ae0 	vcvt.s32.f32	s15, s1
d004273c:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d0042740:	eef4 6a60 	vcmp.f32	s13, s1
d0042744:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042748:	d04e      	beq.n	d00427e8 <powf+0xdc>
d004274a:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d004274e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042752:	d459      	bmi.n	d0042808 <powf+0xfc>
d0042754:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0042758:	eef4 0a67 	vcmp.f32	s1, s15
d004275c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042760:	d03f      	beq.n	d00427e2 <powf+0xd6>
d0042762:	eefe 7a00 	vmov.f32	s15, #224	; 0xbf000000 -0.5
d0042766:	eef4 0a67 	vcmp.f32	s1, s15
d004276a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004276e:	d052      	beq.n	d0042816 <powf+0x10a>
d0042770:	eef0 7a00 	vmov.f32	s15, #0	; 0x40000000  2.0
d0042774:	eef4 0a67 	vcmp.f32	s1, s15
d0042778:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004277c:	d052      	beq.n	d0042824 <powf+0x118>
d004277e:	eef0 7a08 	vmov.f32	s15, #8	; 0x40400000  3.0
d0042782:	eef4 0a67 	vcmp.f32	s1, s15
d0042786:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004278a:	d04e      	beq.n	d004282a <powf+0x11e>
d004278c:	eef1 7a00 	vmov.f32	s15, #16	; 0x40800000  4.0
d0042790:	eef4 0a67 	vcmp.f32	s1, s15
d0042794:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042798:	d042      	beq.n	d0042820 <powf+0x114>
d004279a:	b500      	push	{lr}
d004279c:	b083      	sub	sp, #12
d004279e:	edcd 0a01 	vstr	s1, [sp, #4]
d00427a2:	f003 ffa7 	bl	d00466f4 <logf>
d00427a6:	eddd 0a01 	vldr	s1, [sp, #4]
d00427aa:	ee20 0a20 	vmul.f32	s0, s0, s1
d00427ae:	b003      	add	sp, #12
d00427b0:	f85d eb04 	ldr.w	lr, [sp], #4
d00427b4:	f003 bf28 	b.w	d0046608 <expf>
d00427b8:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00427bc:	eeb0 0a67 	vmov.f32	s0, s15
d00427c0:	4770      	bx	lr
d00427c2:	eef5 0ac0 	vcmpe.f32	s1, #0.0
d00427c6:	eddf 7a1d 	vldr	s15, [pc, #116]	; d004283c <powf+0x130>
d00427ca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00427ce:	fe70 7a27 	vselgt.f32	s15, s0, s15
d00427d2:	eeb0 0a67 	vmov.f32	s0, s15
d00427d6:	4770      	bx	lr
d00427d8:	eef0 7a40 	vmov.f32	s15, s0
d00427dc:	eeb0 0a67 	vmov.f32	s0, s15
d00427e0:	4770      	bx	lr
d00427e2:	eef1 7ac0 	vsqrt.f32	s15, s0
d00427e6:	e7e9      	b.n	d00427bc <powf+0xb0>
d00427e8:	ee17 3a90 	vmov	r3, s15
d00427ec:	2b00      	cmp	r3, #0
d00427ee:	db0e      	blt.n	d004280e <powf+0x102>
d00427f0:	d020      	beq.n	d0042834 <powf+0x128>
d00427f2:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00427f6:	07da      	lsls	r2, r3, #31
d00427f8:	bf48      	it	mi
d00427fa:	ee67 7a80 	vmulmi.f32	s15, s15, s0
d00427fe:	085b      	lsrs	r3, r3, #1
d0042800:	ee20 0a00 	vmul.f32	s0, s0, s0
d0042804:	d1f7      	bne.n	d00427f6 <powf+0xea>
d0042806:	e7d9      	b.n	d00427bc <powf+0xb0>
d0042808:	eddf 7a0d 	vldr	s15, [pc, #52]	; d0042840 <powf+0x134>
d004280c:	e7d6      	b.n	d00427bc <powf+0xb0>
d004280e:	ee87 0a00 	vdiv.f32	s0, s14, s0
d0042812:	425b      	negs	r3, r3
d0042814:	e7ed      	b.n	d00427f2 <powf+0xe6>
d0042816:	eef1 6ac0 	vsqrt.f32	s13, s0
d004281a:	eec7 7a26 	vdiv.f32	s15, s14, s13
d004281e:	e7cd      	b.n	d00427bc <powf+0xb0>
d0042820:	ee20 0a00 	vmul.f32	s0, s0, s0
d0042824:	ee60 7a00 	vmul.f32	s15, s0, s0
d0042828:	e7c8      	b.n	d00427bc <powf+0xb0>
d004282a:	ee60 7a00 	vmul.f32	s15, s0, s0
d004282e:	ee67 7a80 	vmul.f32	s15, s15, s0
d0042832:	e7c3      	b.n	d00427bc <powf+0xb0>
d0042834:	eef0 7a47 	vmov.f32	s15, s14
d0042838:	e7c0      	b.n	d00427bc <powf+0xb0>
d004283a:	bf00      	nop
d004283c:	7f800000 	.word	0x7f800000
d0042840:	7fc00000 	.word	0x7fc00000

d0042844 <sb3dParticlesClear>:
d0042844:	4b0f      	ldr	r3, [pc, #60]	; (d0042884 <sb3dParticlesClear+0x40>)
d0042846:	f04f 507e 	mov.w	r0, #1065353216	; 0x3f800000
d004284a:	2100      	movs	r1, #0
d004284c:	2200      	movs	r2, #0
d004284e:	b430      	push	{r4, r5}
d0042850:	f503 5500 	add.w	r5, r3, #8192	; 0x2000
d0042854:	2421      	movs	r4, #33	; 0x21
d0042856:	7699      	strb	r1, [r3, #26]
d0042858:	3320      	adds	r3, #32
d004285a:	f843 2c20 	str.w	r2, [r3, #-32]
d004285e:	f843 2c1c 	str.w	r2, [r3, #-28]
d0042862:	f843 2c18 	str.w	r2, [r3, #-24]
d0042866:	f843 0c14 	str.w	r0, [r3, #-20]
d004286a:	f843 2c10 	str.w	r2, [r3, #-16]
d004286e:	f843 0c0c 	str.w	r0, [r3, #-12]
d0042872:	f803 4c08 	strb.w	r4, [r3, #-8]
d0042876:	f803 1c07 	strb.w	r1, [r3, #-7]
d004287a:	42ab      	cmp	r3, r5
d004287c:	d1eb      	bne.n	d0042856 <sb3dParticlesClear+0x12>
d004287e:	bc30      	pop	{r4, r5}
d0042880:	4770      	bx	lr
d0042882:	bf00      	nop
d0042884:	d0047680 	.word	0xd0047680

d0042888 <sb3dParticlesRender>:
d0042888:	2800      	cmp	r0, #0
d004288a:	f000 82d6 	beq.w	d0042e3a <sb3dParticlesRender+0x5b2>
d004288e:	edd0 7a02 	vldr	s15, [r0, #8]
d0042892:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0042896:	ed2d 8b10 	vpush	{d8-d15}
d004289a:	b0c7      	sub	sp, #284	; 0x11c
d004289c:	4605      	mov	r5, r0
d004289e:	ed90 ea00 	vldr	s28, [r0]
d00428a2:	edcd 7a15 	vstr	s15, [sp, #84]	; 0x54
d00428a6:	edd0 da01 	vldr	s27, [r0, #4]
d00428aa:	edd0 ca06 	vldr	s25, [r0, #24]
d00428ae:	ed90 ca07 	vldr	s24, [r0, #28]
d00428b2:	edd0 ba08 	vldr	s23, [r0, #32]
d00428b6:	ed90 9a09 	vldr	s18, [r0, #36]	; 0x24
d00428ba:	edd0 8a0a 	vldr	s17, [r0, #40]	; 0x28
d00428be:	ed90 8a0b 	vldr	s16, [r0, #44]	; 0x2c
d00428c2:	edd0 aa0c 	vldr	s21, [r0, #48]	; 0x30
d00428c6:	ed90 aa0d 	vldr	s20, [r0, #52]	; 0x34
d00428ca:	edd0 9a0e 	vldr	s19, [r0, #56]	; 0x38
d00428ce:	ed90 ba10 	vldr	s22, [r0, #64]	; 0x40
d00428d2:	f001 f92d 	bl	d0043b30 <lightsGet>
d00428d6:	4cae      	ldr	r4, [pc, #696]	; (d0042b90 <sb3dParticlesRender+0x308>)
d00428d8:	4681      	mov	r9, r0
d00428da:	f001 f92d 	bl	d0043b38 <lightsGetCount>
d00428de:	4680      	mov	r8, r0
d00428e0:	f504 5600 	add.w	r6, r4, #8192	; 0x2000
d00428e4:	eb09 1780 	add.w	r7, r9, r0, lsl #6
d00428e8:	e115      	b.n	d0042b16 <sb3dParticlesRender+0x28e>
d00428ea:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d00428ee:	edd4 ea04 	vldr	s29, [r4, #16]
d00428f2:	ed9f 5aac 	vldr	s10, [pc, #688]	; d0042ba4 <sb3dParticlesRender+0x31c>
d00428f6:	fece ea85 	vmaxnm.f32	s29, s29, s10
d00428fa:	fece eac7 	vminnm.f32	s29, s29, s14
d00428fe:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d0042902:	f105 0a10 	add.w	sl, r5, #16
d0042906:	eeb0 4a46 	vmov.f32	s8, s12
d004290a:	2250      	movs	r2, #80	; 0x50
d004290c:	eef0 4a66 	vmov.f32	s9, s13
d0042910:	4651      	mov	r1, sl
d0042912:	ee67 7a87 	vmul.f32	s15, s15, s14
d0042916:	4668      	mov	r0, sp
d0042918:	eeb0 5a65 	vmov.f32	s10, s11
d004291c:	eeb0 7a65 	vmov.f32	s14, s11
d0042920:	eeac 6aa7 	vfma.f32	s12, s25, s15
d0042924:	eeac 4ae7 	vfms.f32	s8, s25, s15
d0042928:	eeec 4a67 	vfms.f32	s9, s24, s15
d004292c:	eeec 6a27 	vfma.f32	s13, s24, s15
d0042930:	eeab 5ae7 	vfms.f32	s10, s23, s15
d0042934:	eeab 7aa7 	vfma.f32	s14, s23, s15
d0042938:	eef0 3a46 	vmov.f32	s7, s12
d004293c:	eea9 6a67 	vfms.f32	s12, s18, s15
d0042940:	eeb0 da44 	vmov.f32	s26, s8
d0042944:	eef0 fa64 	vmov.f32	s31, s9
d0042948:	eef0 5a66 	vmov.f32	s11, s13
d004294c:	eeb0 fa45 	vmov.f32	s30, s10
d0042950:	eea9 da27 	vfma.f32	s26, s18, s15
d0042954:	ed8d 6a1c 	vstr	s12, [sp, #112]	; 0x70
d0042958:	eeb0 6a47 	vmov.f32	s12, s14
d004295c:	eee8 faa7 	vfma.f32	s31, s17, s15
d0042960:	eea8 fa27 	vfma.f32	s30, s16, s15
d0042964:	eea9 4a67 	vfms.f32	s8, s18, s15
d0042968:	eee9 3a27 	vfma.f32	s7, s18, s15
d004296c:	eee8 4ae7 	vfms.f32	s9, s17, s15
d0042970:	ed8d da16 	vstr	s26, [sp, #88]	; 0x58
d0042974:	eee8 5aa7 	vfma.f32	s11, s17, s15
d0042978:	eee8 6ae7 	vfms.f32	s13, s17, s15
d004297c:	edcd fa17 	vstr	s31, [sp, #92]	; 0x5c
d0042980:	eea8 5a67 	vfms.f32	s10, s16, s15
d0042984:	ed8d fa18 	vstr	s30, [sp, #96]	; 0x60
d0042988:	eea8 6a27 	vfma.f32	s12, s16, s15
d004298c:	ed8d 4a1f 	vstr	s8, [sp, #124]	; 0x7c
d0042990:	eea8 7a67 	vfms.f32	s14, s16, s15
d0042994:	edcd 3a19 	vstr	s7, [sp, #100]	; 0x64
d0042998:	edcd 4a20 	vstr	s9, [sp, #128]	; 0x80
d004299c:	edcd 5a1a 	vstr	s11, [sp, #104]	; 0x68
d00429a0:	edcd 6a1d 	vstr	s13, [sp, #116]	; 0x74
d00429a4:	ed8d 5a21 	vstr	s10, [sp, #132]	; 0x84
d00429a8:	ed8d 6a1b 	vstr	s12, [sp, #108]	; 0x6c
d00429ac:	ed8d 7a1e 	vstr	s14, [sp, #120]	; 0x78
d00429b0:	f003 fafe 	bl	d0045fb0 <memcpy>
d00429b4:	eeb0 0a4d 	vmov.f32	s0, s26
d00429b8:	eef0 0a6f 	vmov.f32	s1, s31
d00429bc:	eeb0 1a4f 	vmov.f32	s2, s30
d00429c0:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d00429c4:	f000 fbfc 	bl	d00431c0 <worldToCamera>
d00429c8:	ed9d da19 	vldr	s26, [sp, #100]	; 0x64
d00429cc:	eddd fa1a 	vldr	s31, [sp, #104]	; 0x68
d00429d0:	4651      	mov	r1, sl
d00429d2:	ed9d fa1b 	vldr	s30, [sp, #108]	; 0x6c
d00429d6:	2250      	movs	r2, #80	; 0x50
d00429d8:	4668      	mov	r0, sp
d00429da:	ed8d 0a22 	vstr	s0, [sp, #136]	; 0x88
d00429de:	edcd 0a23 	vstr	s1, [sp, #140]	; 0x8c
d00429e2:	ed8d 1a24 	vstr	s2, [sp, #144]	; 0x90
d00429e6:	f003 fae3 	bl	d0045fb0 <memcpy>
d00429ea:	eeb0 0a4d 	vmov.f32	s0, s26
d00429ee:	eef0 0a6f 	vmov.f32	s1, s31
d00429f2:	eeb0 1a4f 	vmov.f32	s2, s30
d00429f6:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d00429fa:	f000 fbe1 	bl	d00431c0 <worldToCamera>
d00429fe:	ed9d da1c 	vldr	s26, [sp, #112]	; 0x70
d0042a02:	eddd fa1d 	vldr	s31, [sp, #116]	; 0x74
d0042a06:	4651      	mov	r1, sl
d0042a08:	ed9d fa1e 	vldr	s30, [sp, #120]	; 0x78
d0042a0c:	2250      	movs	r2, #80	; 0x50
d0042a0e:	4668      	mov	r0, sp
d0042a10:	ed8d 0a25 	vstr	s0, [sp, #148]	; 0x94
d0042a14:	edcd 0a26 	vstr	s1, [sp, #152]	; 0x98
d0042a18:	ed8d 1a27 	vstr	s2, [sp, #156]	; 0x9c
d0042a1c:	f003 fac8 	bl	d0045fb0 <memcpy>
d0042a20:	eeb0 0a4d 	vmov.f32	s0, s26
d0042a24:	eef0 0a6f 	vmov.f32	s1, s31
d0042a28:	eeb0 1a4f 	vmov.f32	s2, s30
d0042a2c:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0042a30:	f000 fbc6 	bl	d00431c0 <worldToCamera>
d0042a34:	ed9d da1f 	vldr	s26, [sp, #124]	; 0x7c
d0042a38:	eddd fa20 	vldr	s31, [sp, #128]	; 0x80
d0042a3c:	4651      	mov	r1, sl
d0042a3e:	ed9d fa21 	vldr	s30, [sp, #132]	; 0x84
d0042a42:	2250      	movs	r2, #80	; 0x50
d0042a44:	4668      	mov	r0, sp
d0042a46:	ed8d 0a28 	vstr	s0, [sp, #160]	; 0xa0
d0042a4a:	edcd 0a29 	vstr	s1, [sp, #164]	; 0xa4
d0042a4e:	ed8d 1a2a 	vstr	s2, [sp, #168]	; 0xa8
d0042a52:	f003 faad 	bl	d0045fb0 <memcpy>
d0042a56:	eeb0 0a4d 	vmov.f32	s0, s26
d0042a5a:	eef0 0a6f 	vmov.f32	s1, s31
d0042a5e:	eeb0 1a4f 	vmov.f32	s2, s30
d0042a62:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0042a66:	f000 fbab 	bl	d00431c0 <worldToCamera>
d0042a6a:	eddd 7a24 	vldr	s15, [sp, #144]	; 0x90
d0042a6e:	ed8d 0a2b 	vstr	s0, [sp, #172]	; 0xac
d0042a72:	eef4 7acb 	vcmpe.f32	s15, s22
d0042a76:	edcd 0a2c 	vstr	s1, [sp, #176]	; 0xb0
d0042a7a:	ed8d 1a2d 	vstr	s2, [sp, #180]	; 0xb4
d0042a7e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042a82:	d812      	bhi.n	d0042aaa <sb3dParticlesRender+0x222>
d0042a84:	eddd 7a27 	vldr	s15, [sp, #156]	; 0x9c
d0042a88:	eef4 7acb 	vcmpe.f32	s15, s22
d0042a8c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042a90:	d80b      	bhi.n	d0042aaa <sb3dParticlesRender+0x222>
d0042a92:	eddd 7a2a 	vldr	s15, [sp, #168]	; 0xa8
d0042a96:	eef4 7acb 	vcmpe.f32	s15, s22
d0042a9a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042a9e:	d804      	bhi.n	d0042aaa <sb3dParticlesRender+0x222>
d0042aa0:	eeb4 1acb 	vcmpe.f32	s2, s22
d0042aa4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042aa8:	d931      	bls.n	d0042b0e <sb3dParticlesRender+0x286>
d0042aaa:	4629      	mov	r1, r5
d0042aac:	ed9d 3a28 	vldr	s6, [sp, #160]	; 0xa0
d0042ab0:	eddd 3a29 	vldr	s7, [sp, #164]	; 0xa4
d0042ab4:	a82e      	add	r0, sp, #184	; 0xb8
d0042ab6:	ed9d 4a2a 	vldr	s8, [sp, #168]	; 0xa8
d0042aba:	eddd 1a25 	vldr	s3, [sp, #148]	; 0x94
d0042abe:	ed9d 2a26 	vldr	s4, [sp, #152]	; 0x98
d0042ac2:	eddd 2a27 	vldr	s5, [sp, #156]	; 0x9c
d0042ac6:	ed9d 0a22 	vldr	s0, [sp, #136]	; 0x88
d0042aca:	eddd 0a23 	vldr	s1, [sp, #140]	; 0x8c
d0042ace:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d0042ad2:	f001 f881 	bl	d0043bd8 <clipTriangleToFrustum>
d0042ad6:	2802      	cmp	r0, #2
d0042ad8:	f300 8156 	bgt.w	d0042d88 <sb3dParticlesRender+0x500>
d0042adc:	a82e      	add	r0, sp, #184	; 0xb8
d0042ade:	4629      	mov	r1, r5
d0042ae0:	ed9d 3a2b 	vldr	s6, [sp, #172]	; 0xac
d0042ae4:	eddd 3a2c 	vldr	s7, [sp, #176]	; 0xb0
d0042ae8:	ed9d 4a2d 	vldr	s8, [sp, #180]	; 0xb4
d0042aec:	eddd 1a28 	vldr	s3, [sp, #160]	; 0xa0
d0042af0:	ed9d 2a29 	vldr	s4, [sp, #164]	; 0xa4
d0042af4:	eddd 2a2a 	vldr	s5, [sp, #168]	; 0xa8
d0042af8:	ed9d 0a22 	vldr	s0, [sp, #136]	; 0x88
d0042afc:	eddd 0a23 	vldr	s1, [sp, #140]	; 0x8c
d0042b00:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d0042b04:	f001 f868 	bl	d0043bd8 <clipTriangleToFrustum>
d0042b08:	2802      	cmp	r0, #2
d0042b0a:	f300 8105 	bgt.w	d0042d18 <sb3dParticlesRender+0x490>
d0042b0e:	3420      	adds	r4, #32
d0042b10:	42a6      	cmp	r6, r4
d0042b12:	f000 8134 	beq.w	d0042d7e <sb3dParticlesRender+0x4f6>
d0042b16:	7ea3      	ldrb	r3, [r4, #26]
d0042b18:	2b00      	cmp	r3, #0
d0042b1a:	d0f8      	beq.n	d0042b0e <sb3dParticlesRender+0x286>
d0042b1c:	edd4 7a03 	vldr	s15, [r4, #12]
d0042b20:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0042b24:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042b28:	d9f1      	bls.n	d0042b0e <sb3dParticlesRender+0x286>
d0042b2a:	edd4 6a01 	vldr	s13, [r4, #4]
d0042b2e:	eeb1 5a67 	vneg.f32	s10, s15
d0042b32:	ed94 6a00 	vldr	s12, [r4]
d0042b36:	ee36 7aed 	vsub.f32	s14, s13, s27
d0042b3a:	edd4 5a02 	vldr	s11, [r4, #8]
d0042b3e:	ee36 4a4e 	vsub.f32	s8, s12, s28
d0042b42:	eddd 4a15 	vldr	s9, [sp, #84]	; 0x54
d0042b46:	ee27 7a0a 	vmul.f32	s14, s14, s20
d0042b4a:	ee75 4ae4 	vsub.f32	s9, s11, s9
d0042b4e:	eeaa 7a84 	vfma.f32	s14, s21, s8
d0042b52:	eea9 7aa4 	vfma.f32	s14, s19, s9
d0042b56:	eeb4 5ac7 	vcmpe.f32	s10, s14
d0042b5a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042b5e:	dad6      	bge.n	d0042b0e <sb3dParticlesRender+0x286>
d0042b60:	ed94 7a05 	vldr	s14, [r4, #20]
d0042b64:	ed9f 5a0b 	vldr	s10, [pc, #44]	; d0042b94 <sb3dParticlesRender+0x30c>
d0042b68:	eeb4 7ac5 	vcmpe.f32	s14, s10
d0042b6c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042b70:	f67f aebb 	bls.w	d00428ea <sb3dParticlesRender+0x62>
d0042b74:	f1b8 0f00 	cmp.w	r8, #0
d0042b78:	f340 809e 	ble.w	d0042cb8 <sb3dParticlesRender+0x430>
d0042b7c:	eeb7 4a00 	vmov.f32	s8, #112	; 0x3f800000  1.0
d0042b80:	464b      	mov	r3, r9
d0042b82:	eeb5 3a00 	vmov.f32	s6, #80	; 0x3e800000  0.250
d0042b86:	ed9f 0a05 	vldr	s0, [pc, #20]	; d0042b9c <sb3dParticlesRender+0x314>
d0042b8a:	eef6 3a08 	vmov.f32	s7, #104	; 0x3f400000  0.750
d0042b8e:	e07e      	b.n	d0042c8e <sb3dParticlesRender+0x406>
d0042b90:	d0047680 	.word	0xd0047680
d0042b94:	38d1b717 	.word	0x38d1b717
d0042b98:	358637bd 	.word	0x358637bd
d0042b9c:	3dcccccd 	.word	0x3dcccccd
d0042ba0:	3b808081 	.word	0x3b808081
d0042ba4:	00000000 	.word	0x00000000
d0042ba8:	edd3 7a02 	vldr	s15, [r3, #8]
d0042bac:	edd3 4a01 	vldr	s9, [r3, #4]
d0042bb0:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0042bb4:	ed93 7a03 	vldr	s14, [r3, #12]
d0042bb8:	ee74 4ac6 	vsub.f32	s9, s9, s12
d0042bbc:	ed93 2a0a 	vldr	s4, [r3, #40]	; 0x28
d0042bc0:	ee37 7a65 	vsub.f32	s14, s14, s11
d0042bc4:	ee27 5aa7 	vmul.f32	s10, s15, s15
d0042bc8:	ee62 2a02 	vmul.f32	s5, s4, s4
d0042bcc:	eea4 5aa4 	vfma.f32	s10, s9, s9
d0042bd0:	eea7 5a07 	vfma.f32	s10, s14, s14
d0042bd4:	eeb4 5a62 	vcmp.f32	s10, s5
d0042bd8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042bdc:	d554      	bpl.n	d0042c88 <sb3dParticlesRender+0x400>
d0042bde:	ed5f 2a12 	vldr	s5, [pc, #-72]	; d0042b98 <sb3dParticlesRender+0x310>
d0042be2:	eeb4 5a62 	vcmp.f32	s10, s5
d0042be6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042bea:	dd4d      	ble.n	d0042c88 <sb3dParticlesRender+0x400>
d0042bec:	eef1 0ac5 	vsqrt.f32	s1, s10
d0042bf0:	edd3 1a08 	vldr	s3, [r3, #32]
d0042bf4:	ee21 1aa1 	vmul.f32	s2, s3, s3
d0042bf8:	eeb4 5ac1 	vcmpe.f32	s10, s2
d0042bfc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042c00:	eec4 2a20 	vdiv.f32	s5, s8, s1
d0042c04:	ee64 4aa2 	vmul.f32	s9, s9, s5
d0042c08:	ee67 7aa2 	vmul.f32	s15, s15, s5
d0042c0c:	ee27 7a22 	vmul.f32	s14, s14, s5
d0042c10:	f240 80e9 	bls.w	d0042de6 <sb3dParticlesRender+0x55e>
d0042c14:	ed93 1a09 	vldr	s2, [r3, #36]	; 0x24
d0042c18:	eef4 1ac1 	vcmpe.f32	s3, s2
d0042c1c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042c20:	da32      	bge.n	d0042c88 <sb3dParticlesRender+0x400>
d0042c22:	eeb4 2ac1 	vcmpe.f32	s4, s2
d0042c26:	ee25 5a22 	vmul.f32	s10, s10, s5
d0042c2a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042c2e:	eeb4 1ac5 	vcmpe.f32	s2, s10
d0042c32:	f200 80db 	bhi.w	d0042dec <sb3dParticlesRender+0x564>
d0042c36:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042c3a:	d925      	bls.n	d0042c88 <sb3dParticlesRender+0x400>
d0042c3c:	ee75 2a61 	vsub.f32	s5, s10, s3
d0042c40:	ee31 2a61 	vsub.f32	s4, s2, s3
d0042c44:	ee82 5a82 	vdiv.f32	s10, s5, s4
d0042c48:	ed5f 2a2a 	vldr	s5, [pc, #-168]	; d0042ba4 <sb3dParticlesRender+0x31c>
d0042c4c:	fe85 5a22 	vmaxnm.f32	s10, s10, s5
d0042c50:	fe85 5a44 	vminnm.f32	s10, s10, s8
d0042c54:	ee34 5a45 	vsub.f32	s10, s8, s10
d0042c58:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d0042c5c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042c60:	d912      	bls.n	d0042c88 <sb3dParticlesRender+0x400>
d0042c62:	ee67 7a8a 	vmul.f32	s15, s15, s20
d0042c66:	eee4 7aaa 	vfma.f32	s15, s9, s21
d0042c6a:	eee7 7a29 	vfma.f32	s15, s14, s19
d0042c6e:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0042c72:	eeb1 7a67 	vneg.f32	s14, s15
d0042c76:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042c7a:	da05      	bge.n	d0042c88 <sb3dParticlesRender+0x400>
d0042c7c:	edd3 7a07 	vldr	s15, [r3, #28]
d0042c80:	ee25 5a27 	vmul.f32	s10, s10, s15
d0042c84:	eea5 0a07 	vfma.f32	s0, s10, s14
d0042c88:	3340      	adds	r3, #64	; 0x40
d0042c8a:	429f      	cmp	r7, r3
d0042c8c:	d016      	beq.n	d0042cbc <sb3dParticlesRender+0x434>
d0042c8e:	6ada      	ldr	r2, [r3, #44]	; 0x2c
d0042c90:	2a00      	cmp	r2, #0
d0042c92:	d0f9      	beq.n	d0042c88 <sb3dParticlesRender+0x400>
d0042c94:	781a      	ldrb	r2, [r3, #0]
d0042c96:	2a00      	cmp	r2, #0
d0042c98:	d086      	beq.n	d0042ba8 <sb3dParticlesRender+0x320>
d0042c9a:	edd3 4a04 	vldr	s9, [r3, #16]
d0042c9e:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0042ca2:	edd3 7a05 	vldr	s15, [r3, #20]
d0042ca6:	ed93 7a06 	vldr	s14, [r3, #24]
d0042caa:	eef1 4a64 	vneg.f32	s9, s9
d0042cae:	eef1 7a67 	vneg.f32	s15, s15
d0042cb2:	eeb1 7a47 	vneg.f32	s14, s14
d0042cb6:	e7d4      	b.n	d0042c62 <sb3dParticlesRender+0x3da>
d0042cb8:	ed1f 0a48 	vldr	s0, [pc, #-288]	; d0042b9c <sb3dParticlesRender+0x314>
d0042cbc:	7e63      	ldrb	r3, [r4, #25]
d0042cbe:	eeb7 fa00 	vmov.f32	s30, #112	; 0x3f800000  1.0
d0042cc2:	ed1f 7a49 	vldr	s14, [pc, #-292]	; d0042ba0 <sb3dParticlesRender+0x318>
d0042cc6:	ee07 3a90 	vmov	s15, r3
d0042cca:	ed1f da4a 	vldr	s26, [pc, #-296]	; d0042ba4 <sb3dParticlesRender+0x31c>
d0042cce:	eef8 7a67 	vcvt.f32.u32	s15, s15
d0042cd2:	ee67 7a87 	vmul.f32	s15, s15, s14
d0042cd6:	fec7 7a8d 	vmaxnm.f32	s15, s15, s26
d0042cda:	fe87 0a80 	vmaxnm.f32	s0, s15, s0
d0042cde:	fe80 0a4f 	vminnm.f32	s0, s0, s30
d0042ce2:	f000 ff0d 	bl	d0043b00 <brightnessToShadeF>
d0042ce6:	edd4 ea05 	vldr	s29, [r4, #20]
d0042cea:	ed94 5a04 	vldr	s10, [r4, #16]
d0042cee:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d0042cf2:	ee3f fa6e 	vsub.f32	s30, s30, s29
d0042cf6:	edd4 7a03 	vldr	s15, [r4, #12]
d0042cfa:	ee60 ea2e 	vmul.f32	s29, s0, s29
d0042cfe:	ed94 6a00 	vldr	s12, [r4]
d0042d02:	edd4 6a01 	vldr	s13, [r4, #4]
d0042d06:	edd4 5a02 	vldr	s11, [r4, #8]
d0042d0a:	eee5 ea0f 	vfma.f32	s29, s10, s30
d0042d0e:	fece ea8d 	vmaxnm.f32	s29, s29, s26
d0042d12:	fece eac7 	vminnm.f32	s29, s29, s14
d0042d16:	e5f2      	b.n	d00428fe <sb3dParticlesRender+0x76>
d0042d18:	f100 3aff 	add.w	sl, r0, #4294967295	; 0xffffffff
d0042d1c:	f04f 0b01 	mov.w	fp, #1
d0042d20:	465b      	mov	r3, fp
d0042d22:	f10b 0b01 	add.w	fp, fp, #1
d0042d26:	a946      	add	r1, sp, #280	; 0x118
d0042d28:	eef0 4a6e 	vmov.f32	s9, s29
d0042d2c:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0042d30:	7e62      	ldrb	r2, [r4, #25]
d0042d32:	eb0b 004b 	add.w	r0, fp, fp, lsl #1
d0042d36:	ed9d 0a2e 	vldr	s0, [sp, #184]	; 0xb8
d0042d3a:	eb01 0383 	add.w	r3, r1, r3, lsl #2
d0042d3e:	eddd 0a2f 	vldr	s1, [sp, #188]	; 0xbc
d0042d42:	eb01 0080 	add.w	r0, r1, r0, lsl #2
d0042d46:	ed9d 1a30 	vldr	s2, [sp, #192]	; 0xc0
d0042d4a:	f1a3 0c60 	sub.w	ip, r3, #96	; 0x60
d0042d4e:	ed53 1a18 	vldr	s3, [r3, #-96]	; 0xffffffa0
d0042d52:	ed10 3a18 	vldr	s6, [r0, #-96]	; 0xffffffa0
d0042d56:	f1a0 0360 	sub.w	r3, r0, #96	; 0x60
d0042d5a:	7e21      	ldrb	r1, [r4, #24]
d0042d5c:	4628      	mov	r0, r5
d0042d5e:	ed9c 2a01 	vldr	s4, [ip, #4]
d0042d62:	eddc 2a02 	vldr	s5, [ip, #8]
d0042d66:	edd3 3a01 	vldr	s7, [r3, #4]
d0042d6a:	ed93 4a02 	vldr	s8, [r3, #8]
d0042d6e:	f001 fb8f 	bl	d0044490 <submitClippedTri>
d0042d72:	45d3      	cmp	fp, sl
d0042d74:	d1d4      	bne.n	d0042d20 <sb3dParticlesRender+0x498>
d0042d76:	3420      	adds	r4, #32
d0042d78:	42a6      	cmp	r6, r4
d0042d7a:	f47f aecc 	bne.w	d0042b16 <sb3dParticlesRender+0x28e>
d0042d7e:	b047      	add	sp, #284	; 0x11c
d0042d80:	ecbd 8b10 	vpop	{d8-d15}
d0042d84:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0042d88:	f100 3aff 	add.w	sl, r0, #4294967295	; 0xffffffff
d0042d8c:	f04f 0b01 	mov.w	fp, #1
d0042d90:	465b      	mov	r3, fp
d0042d92:	aa46      	add	r2, sp, #280	; 0x118
d0042d94:	f10b 0b01 	add.w	fp, fp, #1
d0042d98:	a846      	add	r0, sp, #280	; 0x118
d0042d9a:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0042d9e:	eef0 4a6e 	vmov.f32	s9, s29
d0042da2:	eb0b 014b 	add.w	r1, fp, fp, lsl #1
d0042da6:	ed9d 0a2e 	vldr	s0, [sp, #184]	; 0xb8
d0042daa:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0042dae:	eddd 0a2f 	vldr	s1, [sp, #188]	; 0xbc
d0042db2:	eb00 0181 	add.w	r1, r0, r1, lsl #2
d0042db6:	ed9d 1a30 	vldr	s2, [sp, #192]	; 0xc0
d0042dba:	7e62      	ldrb	r2, [r4, #25]
d0042dbc:	4628      	mov	r0, r5
d0042dbe:	ed11 3a18 	vldr	s6, [r1, #-96]	; 0xffffffa0
d0042dc2:	f1a3 0c60 	sub.w	ip, r3, #96	; 0x60
d0042dc6:	ed51 3a17 	vldr	s7, [r1, #-92]	; 0xffffffa4
d0042dca:	ed11 4a16 	vldr	s8, [r1, #-88]	; 0xffffffa8
d0042dce:	ed53 1a18 	vldr	s3, [r3, #-96]	; 0xffffffa0
d0042dd2:	7e21      	ldrb	r1, [r4, #24]
d0042dd4:	ed9c 2a01 	vldr	s4, [ip, #4]
d0042dd8:	eddc 2a02 	vldr	s5, [ip, #8]
d0042ddc:	f001 fb58 	bl	d0044490 <submitClippedTri>
d0042de0:	45d3      	cmp	fp, sl
d0042de2:	d1d5      	bne.n	d0042d90 <sb3dParticlesRender+0x508>
d0042de4:	e67a      	b.n	d0042adc <sb3dParticlesRender+0x254>
d0042de6:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0042dea:	e73a      	b.n	d0042c62 <sb3dParticlesRender+0x3da>
d0042dec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042df0:	db12      	blt.n	d0042e18 <sb3dParticlesRender+0x590>
d0042df2:	ee35 5a61 	vsub.f32	s10, s10, s3
d0042df6:	ee31 2a61 	vsub.f32	s4, s2, s3
d0042dfa:	eec5 2a02 	vdiv.f32	s5, s10, s4
d0042dfe:	ed1f 5a97 	vldr	s10, [pc, #-604]	; d0042ba4 <sb3dParticlesRender+0x31c>
d0042e02:	fe82 5a85 	vmaxnm.f32	s10, s5, s10
d0042e06:	eef0 2a44 	vmov.f32	s5, s8
d0042e0a:	fe85 5a44 	vminnm.f32	s10, s10, s8
d0042e0e:	eee5 2a63 	vfms.f32	s5, s10, s7
d0042e12:	eeb0 5a62 	vmov.f32	s10, s5
d0042e16:	e71f      	b.n	d0042c58 <sb3dParticlesRender+0x3d0>
d0042e18:	ee75 2a41 	vsub.f32	s5, s10, s2
d0042e1c:	ee32 2a41 	vsub.f32	s4, s4, s2
d0042e20:	ee82 5a82 	vdiv.f32	s10, s5, s4
d0042e24:	ed5f 2aa1 	vldr	s5, [pc, #-644]	; d0042ba4 <sb3dParticlesRender+0x31c>
d0042e28:	fe85 5a22 	vmaxnm.f32	s10, s10, s5
d0042e2c:	fe85 5a44 	vminnm.f32	s10, s10, s8
d0042e30:	ee34 5a45 	vsub.f32	s10, s8, s10
d0042e34:	ee25 5a03 	vmul.f32	s10, s10, s6
d0042e38:	e70e      	b.n	d0042c58 <sb3dParticlesRender+0x3d0>
d0042e3a:	4770      	bx	lr

d0042e3c <worldClear>:
d0042e3c:	f44f 42c0 	mov.w	r2, #24576	; 0x6000
d0042e40:	2100      	movs	r1, #0
d0042e42:	4801      	ldr	r0, [pc, #4]	; (d0042e48 <worldClear+0xc>)
d0042e44:	f003 b8c2 	b.w	d0045fcc <memset>
d0042e48:	d00e1d80 	.word	0xd00e1d80

d0042e4c <cameraCreate>:
d0042e4c:	b510      	push	{r4, lr}
d0042e4e:	4604      	mov	r4, r0
d0042e50:	2260      	movs	r2, #96	; 0x60
d0042e52:	4902      	ldr	r1, [pc, #8]	; (d0042e5c <cameraCreate+0x10>)
d0042e54:	f003 f8ac 	bl	d0045fb0 <memcpy>
d0042e58:	4620      	mov	r0, r4
d0042e5a:	bd10      	pop	{r4, pc}
d0042e5c:	d0046d80 	.word	0xd0046d80

d0042e60 <cameraSetPosition>:
d0042e60:	b084      	sub	sp, #16
d0042e62:	ed8d 0a01 	vstr	s0, [sp, #4]
d0042e66:	edcd 0a02 	vstr	s1, [sp, #8]
d0042e6a:	ed8d 1a03 	vstr	s2, [sp, #12]
d0042e6e:	b128      	cbz	r0, d0042e7c <cameraSetPosition+0x1c>
d0042e70:	aa04      	add	r2, sp, #16
d0042e72:	4603      	mov	r3, r0
d0042e74:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0042e78:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0042e7c:	b004      	add	sp, #16
d0042e7e:	4770      	bx	lr

d0042e80 <cameraNormalize>:
d0042e80:	edd0 0a0d 	vldr	s1, [r0, #52]	; 0x34
d0042e84:	ed90 1a0e 	vldr	s2, [r0, #56]	; 0x38
d0042e88:	ed90 0a0c 	vldr	s0, [r0, #48]	; 0x30
d0042e8c:	b510      	push	{r4, lr}
d0042e8e:	4604      	mov	r4, r0
d0042e90:	f7ff fb38 	bl	d0042504 <vec3Normalize>
d0042e94:	eeb0 7a60 	vmov.f32	s14, s1
d0042e98:	eef0 7a41 	vmov.f32	s15, s2
d0042e9c:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0042ea0:	ed94 0a06 	vldr	s0, [r4, #24]
d0042ea4:	ed84 7a0d 	vstr	s14, [r4, #52]	; 0x34
d0042ea8:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d0042eac:	edd4 0a07 	vldr	s1, [r4, #28]
d0042eb0:	ed94 1a08 	vldr	s2, [r4, #32]
d0042eb4:	f7ff fb26 	bl	d0042504 <vec3Normalize>
d0042eb8:	eef0 1a40 	vmov.f32	s3, s0
d0042ebc:	eeb0 2a60 	vmov.f32	s4, s1
d0042ec0:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0042ec4:	eef0 2a41 	vmov.f32	s5, s2
d0042ec8:	edc4 0a07 	vstr	s1, [r4, #28]
d0042ecc:	ed84 1a08 	vstr	s2, [r4, #32]
d0042ed0:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0042ed4:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0042ed8:	edc4 1a06 	vstr	s3, [r4, #24]
d0042edc:	f7ff fafc 	bl	d00424d8 <vec3Cross>
d0042ee0:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0042ee4:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0042ee8:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0042eec:	f7ff fb0a 	bl	d0042504 <vec3Normalize>
d0042ef0:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0042ef4:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0042ef8:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0042efc:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0042f00:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0042f04:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0042f08:	f7ff fae6 	bl	d00424d8 <vec3Cross>
d0042f0c:	ed84 0a06 	vstr	s0, [r4, #24]
d0042f10:	edc4 0a07 	vstr	s1, [r4, #28]
d0042f14:	ed84 1a08 	vstr	s2, [r4, #32]
d0042f18:	f7ff faf4 	bl	d0042504 <vec3Normalize>
d0042f1c:	ed84 0a06 	vstr	s0, [r4, #24]
d0042f20:	edc4 0a07 	vstr	s1, [r4, #28]
d0042f24:	ed84 1a08 	vstr	s2, [r4, #32]
d0042f28:	bd10      	pop	{r4, pc}
d0042f2a:	bf00      	nop

d0042f2c <cameraTurn>:
d0042f2c:	2800      	cmp	r0, #0
d0042f2e:	f000 8144 	beq.w	d00431ba <cameraTurn+0x28e>
d0042f32:	b570      	push	{r4, r5, r6, lr}
d0042f34:	4604      	mov	r4, r0
d0042f36:	ed2d 8b04 	vpush	{d8-d9}
d0042f3a:	eef0 8a40 	vmov.f32	s17, s0
d0042f3e:	b08a      	sub	sp, #40	; 0x28
d0042f40:	eeb0 9a60 	vmov.f32	s18, s1
d0042f44:	eeb0 8a41 	vmov.f32	s16, s2
d0042f48:	bb69      	cbnz	r1, d0042fa6 <cameraTurn+0x7a>
d0042f4a:	f100 0318 	add.w	r3, r0, #24
d0042f4e:	ae01      	add	r6, sp, #4
d0042f50:	f100 0524 	add.w	r5, r0, #36	; 0x24
d0042f54:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0042f58:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0042f5c:	f104 0330 	add.w	r3, r4, #48	; 0x30
d0042f60:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042f64:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0042f68:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d0042f6c:	ae04      	add	r6, sp, #16
d0042f6e:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0042f72:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0042f76:	ab0a      	add	r3, sp, #40	; 0x28
d0042f78:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0042f7c:	d14a      	bne.n	d0043014 <cameraTurn+0xe8>
d0042f7e:	eef5 8a40 	vcmp.f32	s17, #0.0
d0042f82:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042f86:	f040 808d 	bne.w	d00430a4 <cameraTurn+0x178>
d0042f8a:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0042f8e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042f92:	f040 80cf 	bne.w	d0043134 <cameraTurn+0x208>
d0042f96:	4620      	mov	r0, r4
d0042f98:	b00a      	add	sp, #40	; 0x28
d0042f9a:	ecbd 8b04 	vpop	{d8-d9}
d0042f9e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0042fa2:	f7ff bf6d 	b.w	d0042e80 <cameraNormalize>
d0042fa6:	ed9f 1a85 	vldr	s2, [pc, #532]	; d00431bc <cameraTurn+0x290>
d0042faa:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0042fae:	eef0 0a41 	vmov.f32	s1, s2
d0042fb2:	f7ff fba7 	bl	d0042704 <vec3>
d0042fb6:	eef0 7a41 	vmov.f32	s15, s2
d0042fba:	ed9f 1a80 	vldr	s2, [pc, #512]	; d00431bc <cameraTurn+0x290>
d0042fbe:	eeb0 7a60 	vmov.f32	s14, s1
d0042fc2:	ed8d 0a01 	vstr	s0, [sp, #4]
d0042fc6:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d0042fca:	edcd 7a03 	vstr	s15, [sp, #12]
d0042fce:	eeb0 0a41 	vmov.f32	s0, s2
d0042fd2:	ed8d 7a02 	vstr	s14, [sp, #8]
d0042fd6:	f7ff fb95 	bl	d0042704 <vec3>
d0042fda:	eeb0 7a60 	vmov.f32	s14, s1
d0042fde:	eddf 0a77 	vldr	s1, [pc, #476]	; d00431bc <cameraTurn+0x290>
d0042fe2:	eef0 7a41 	vmov.f32	s15, s2
d0042fe6:	ed8d 0a04 	vstr	s0, [sp, #16]
d0042fea:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d0042fee:	eeb0 0a60 	vmov.f32	s0, s1
d0042ff2:	ed8d 7a05 	vstr	s14, [sp, #20]
d0042ff6:	edcd 7a06 	vstr	s15, [sp, #24]
d0042ffa:	f7ff fb83 	bl	d0042704 <vec3>
d0042ffe:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0043002:	edcd 0a08 	vstr	s1, [sp, #32]
d0043006:	ed8d 0a07 	vstr	s0, [sp, #28]
d004300a:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d004300e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043012:	d0b4      	beq.n	d0042f7e <cameraTurn+0x52>
d0043014:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0043018:	eeb0 3a49 	vmov.f32	s6, s18
d004301c:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0043020:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0043024:	eddd 1a04 	vldr	s3, [sp, #16]
d0043028:	ed9d 2a05 	vldr	s4, [sp, #20]
d004302c:	eddd 2a06 	vldr	s5, [sp, #24]
d0043030:	f7ff fab8 	bl	d00425a4 <rotateAroundAxis>
d0043034:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0043038:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d004303c:	eeb0 3a49 	vmov.f32	s6, s18
d0043040:	ed94 0a06 	vldr	s0, [r4, #24]
d0043044:	edd4 0a07 	vldr	s1, [r4, #28]
d0043048:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d004304c:	ed94 1a08 	vldr	s2, [r4, #32]
d0043050:	eddd 1a04 	vldr	s3, [sp, #16]
d0043054:	ed9d 2a05 	vldr	s4, [sp, #20]
d0043058:	eddd 2a06 	vldr	s5, [sp, #24]
d004305c:	f7ff faa2 	bl	d00425a4 <rotateAroundAxis>
d0043060:	eeb0 3a49 	vmov.f32	s6, s18
d0043064:	ed84 0a06 	vstr	s0, [r4, #24]
d0043068:	edc4 0a07 	vstr	s1, [r4, #28]
d004306c:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0043070:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0043074:	ed84 1a08 	vstr	s2, [r4, #32]
d0043078:	eddd 1a04 	vldr	s3, [sp, #16]
d004307c:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0043080:	ed9d 2a05 	vldr	s4, [sp, #20]
d0043084:	eddd 2a06 	vldr	s5, [sp, #24]
d0043088:	f7ff fa8c 	bl	d00425a4 <rotateAroundAxis>
d004308c:	eef5 8a40 	vcmp.f32	s17, #0.0
d0043090:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0043094:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0043098:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004309c:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d00430a0:	f43f af73 	beq.w	d0042f8a <cameraTurn+0x5e>
d00430a4:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d00430a8:	eeb0 3a68 	vmov.f32	s6, s17
d00430ac:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d00430b0:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d00430b4:	eddd 1a01 	vldr	s3, [sp, #4]
d00430b8:	ed9d 2a02 	vldr	s4, [sp, #8]
d00430bc:	eddd 2a03 	vldr	s5, [sp, #12]
d00430c0:	f7ff fa70 	bl	d00425a4 <rotateAroundAxis>
d00430c4:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d00430c8:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d00430cc:	eeb0 3a68 	vmov.f32	s6, s17
d00430d0:	ed94 0a06 	vldr	s0, [r4, #24]
d00430d4:	edd4 0a07 	vldr	s1, [r4, #28]
d00430d8:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d00430dc:	ed94 1a08 	vldr	s2, [r4, #32]
d00430e0:	eddd 1a01 	vldr	s3, [sp, #4]
d00430e4:	ed9d 2a02 	vldr	s4, [sp, #8]
d00430e8:	eddd 2a03 	vldr	s5, [sp, #12]
d00430ec:	f7ff fa5a 	bl	d00425a4 <rotateAroundAxis>
d00430f0:	eeb0 3a68 	vmov.f32	s6, s17
d00430f4:	ed84 0a06 	vstr	s0, [r4, #24]
d00430f8:	edc4 0a07 	vstr	s1, [r4, #28]
d00430fc:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0043100:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0043104:	ed84 1a08 	vstr	s2, [r4, #32]
d0043108:	eddd 1a01 	vldr	s3, [sp, #4]
d004310c:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0043110:	ed9d 2a02 	vldr	s4, [sp, #8]
d0043114:	eddd 2a03 	vldr	s5, [sp, #12]
d0043118:	f7ff fa44 	bl	d00425a4 <rotateAroundAxis>
d004311c:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0043120:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0043124:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0043128:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004312c:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0043130:	f43f af31 	beq.w	d0042f96 <cameraTurn+0x6a>
d0043134:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0043138:	eeb0 3a48 	vmov.f32	s6, s16
d004313c:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0043140:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0043144:	eddd 1a07 	vldr	s3, [sp, #28]
d0043148:	ed9d 2a08 	vldr	s4, [sp, #32]
d004314c:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0043150:	f7ff fa28 	bl	d00425a4 <rotateAroundAxis>
d0043154:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0043158:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d004315c:	eeb0 3a48 	vmov.f32	s6, s16
d0043160:	ed94 0a06 	vldr	s0, [r4, #24]
d0043164:	edd4 0a07 	vldr	s1, [r4, #28]
d0043168:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d004316c:	ed94 1a08 	vldr	s2, [r4, #32]
d0043170:	eddd 1a07 	vldr	s3, [sp, #28]
d0043174:	ed9d 2a08 	vldr	s4, [sp, #32]
d0043178:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d004317c:	f7ff fa12 	bl	d00425a4 <rotateAroundAxis>
d0043180:	ed84 0a06 	vstr	s0, [r4, #24]
d0043184:	edc4 0a07 	vstr	s1, [r4, #28]
d0043188:	eeb0 3a48 	vmov.f32	s6, s16
d004318c:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0043190:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0043194:	ed84 1a08 	vstr	s2, [r4, #32]
d0043198:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d004319c:	eddd 1a07 	vldr	s3, [sp, #28]
d00431a0:	ed9d 2a08 	vldr	s4, [sp, #32]
d00431a4:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d00431a8:	f7ff f9fc 	bl	d00425a4 <rotateAroundAxis>
d00431ac:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d00431b0:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d00431b4:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d00431b8:	e6ed      	b.n	d0042f96 <cameraTurn+0x6a>
d00431ba:	4770      	bx	lr
d00431bc:	00000000 	.word	0x00000000

d00431c0 <worldToCamera>:
d00431c0:	b084      	sub	sp, #16
d00431c2:	b510      	push	{r4, lr}
d00431c4:	ed2d 8b02 	vpush	{d8}
d00431c8:	b0ac      	sub	sp, #176	; 0xb0
d00431ca:	f10d 042f 	add.w	r4, sp, #47	; 0x2f
d00431ce:	f10d 0cc0 	add.w	ip, sp, #192	; 0xc0
d00431d2:	ed8d 0a23 	vstr	s0, [sp, #140]	; 0x8c
d00431d6:	f024 041f 	bic.w	r4, r4, #31
d00431da:	edcd 0a24 	vstr	s1, [sp, #144]	; 0x90
d00431de:	ed8d 1a25 	vstr	s2, [sp, #148]	; 0x94
d00431e2:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d00431e6:	2260      	movs	r2, #96	; 0x60
d00431e8:	4661      	mov	r1, ip
d00431ea:	4620      	mov	r0, r4
d00431ec:	f002 fee0 	bl	d0045fb0 <memcpy>
d00431f0:	edd4 7a00 	vldr	s15, [r4]
d00431f4:	ed9d 0a23 	vldr	s0, [sp, #140]	; 0x8c
d00431f8:	ed94 7a01 	vldr	s14, [r4, #4]
d00431fc:	ee30 0a67 	vsub.f32	s0, s0, s15
d0043200:	eddd 0a24 	vldr	s1, [sp, #144]	; 0x90
d0043204:	edd4 7a02 	vldr	s15, [r4, #8]
d0043208:	ed9d 1a25 	vldr	s2, [sp, #148]	; 0x94
d004320c:	ee70 0ac7 	vsub.f32	s1, s1, s14
d0043210:	edd4 1a06 	vldr	s3, [r4, #24]
d0043214:	ee31 1a67 	vsub.f32	s2, s2, s15
d0043218:	ed94 2a07 	vldr	s4, [r4, #28]
d004321c:	edd4 2a08 	vldr	s5, [r4, #32]
d0043220:	edcd 0a27 	vstr	s1, [sp, #156]	; 0x9c
d0043224:	ed8d 1a28 	vstr	s2, [sp, #160]	; 0xa0
d0043228:	ed8d 0a26 	vstr	s0, [sp, #152]	; 0x98
d004322c:	f7ff f948 	bl	d00424c0 <vec3Dot>
d0043230:	edd4 1a09 	vldr	s3, [r4, #36]	; 0x24
d0043234:	eef0 8a40 	vmov.f32	s17, s0
d0043238:	ed94 2a0a 	vldr	s4, [r4, #40]	; 0x28
d004323c:	edd4 2a0b 	vldr	s5, [r4, #44]	; 0x2c
d0043240:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d0043244:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d0043248:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d004324c:	f7ff f938 	bl	d00424c0 <vec3Dot>
d0043250:	eeb0 8a40 	vmov.f32	s16, s0
d0043254:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d0043258:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d004325c:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0043260:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d0043264:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0043268:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d004326c:	f7ff f928 	bl	d00424c0 <vec3Dot>
d0043270:	eef0 0a48 	vmov.f32	s1, s16
d0043274:	eeb0 1a40 	vmov.f32	s2, s0
d0043278:	eeb0 0a68 	vmov.f32	s0, s17
d004327c:	b02c      	add	sp, #176	; 0xb0
d004327e:	ecbd 8b02 	vpop	{d8}
d0043282:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0043286:	b004      	add	sp, #16
d0043288:	4770      	bx	lr
d004328a:	bf00      	nop

d004328c <cameraSetRange>:
d004328c:	b1a0      	cbz	r0, d00432b8 <cameraSetRange+0x2c>
d004328e:	eddf 7a0d 	vldr	s15, [pc, #52]	; d00432c4 <cameraSetRange+0x38>
d0043292:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d0043296:	eeb4 0ae0 	vcmpe.f32	s0, s1
d004329a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004329e:	da0c      	bge.n	d00432ba <cameraSetRange+0x2e>
d00432a0:	ee30 7ac0 	vsub.f32	s14, s1, s0
d00432a4:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d00432a8:	eec6 7a87 	vdiv.f32	s15, s13, s14
d00432ac:	ed80 0a10 	vstr	s0, [r0, #64]	; 0x40
d00432b0:	edc0 0a11 	vstr	s1, [r0, #68]	; 0x44
d00432b4:	edc0 7a0f 	vstr	s15, [r0, #60]	; 0x3c
d00432b8:	4770      	bx	lr
d00432ba:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00432be:	ee70 0a27 	vadd.f32	s1, s0, s15
d00432c2:	e7f3      	b.n	d00432ac <cameraSetRange+0x20>
d00432c4:	3a83126f 	.word	0x3a83126f

d00432c8 <cameraMove>:
d00432c8:	b3a8      	cbz	r0, d0043336 <cameraMove+0x6e>
d00432ca:	edd0 6a0b 	vldr	s13, [r0, #44]	; 0x2c
d00432ce:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
d00432d2:	edd0 7a0a 	vldr	s15, [r0, #40]	; 0x28
d00432d6:	ee20 7a87 	vmul.f32	s14, s1, s14
d00432da:	edd0 5a06 	vldr	s11, [r0, #24]
d00432de:	ee60 7aa7 	vmul.f32	s15, s1, s15
d00432e2:	ed90 6a08 	vldr	s12, [r0, #32]
d00432e6:	ee60 0aa6 	vmul.f32	s1, s1, s13
d00432ea:	edd0 6a07 	vldr	s13, [r0, #28]
d00432ee:	eea5 7a80 	vfma.f32	s14, s11, s0
d00432f2:	edd0 4a01 	vldr	s9, [r0, #4]
d00432f6:	eee6 7a80 	vfma.f32	s15, s13, s0
d00432fa:	ed90 5a02 	vldr	s10, [r0, #8]
d00432fe:	eee6 0a00 	vfma.f32	s1, s12, s0
d0043302:	edd0 6a00 	vldr	s13, [r0]
d0043306:	edd0 5a0c 	vldr	s11, [r0, #48]	; 0x30
d004330a:	ed90 6a0d 	vldr	s12, [r0, #52]	; 0x34
d004330e:	ee37 7a26 	vadd.f32	s14, s14, s13
d0043312:	edd0 6a0e 	vldr	s13, [r0, #56]	; 0x38
d0043316:	ee77 7aa4 	vadd.f32	s15, s15, s9
d004331a:	ee70 0a85 	vadd.f32	s1, s1, s10
d004331e:	eea5 7a81 	vfma.f32	s14, s11, s2
d0043322:	eee6 7a01 	vfma.f32	s15, s12, s2
d0043326:	eee6 0a81 	vfma.f32	s1, s13, s2
d004332a:	ed80 7a00 	vstr	s14, [r0]
d004332e:	edc0 7a01 	vstr	s15, [r0, #4]
d0043332:	edc0 0a02 	vstr	s1, [r0, #8]
d0043336:	4770      	bx	lr

d0043338 <normalizeEntity.part.0>:
d0043338:	edd0 0a05 	vldr	s1, [r0, #20]
d004333c:	ed90 1a06 	vldr	s2, [r0, #24]
d0043340:	ed90 0a04 	vldr	s0, [r0, #16]
d0043344:	b510      	push	{r4, lr}
d0043346:	4604      	mov	r4, r0
d0043348:	f7ff f8dc 	bl	d0042504 <vec3Normalize>
d004334c:	eeb0 7a60 	vmov.f32	s14, s1
d0043350:	eef0 7a41 	vmov.f32	s15, s2
d0043354:	ed84 0a04 	vstr	s0, [r4, #16]
d0043358:	ed94 0a07 	vldr	s0, [r4, #28]
d004335c:	ed84 7a05 	vstr	s14, [r4, #20]
d0043360:	edc4 7a06 	vstr	s15, [r4, #24]
d0043364:	edd4 0a08 	vldr	s1, [r4, #32]
d0043368:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d004336c:	f7ff f8ca 	bl	d0042504 <vec3Normalize>
d0043370:	eef0 1a40 	vmov.f32	s3, s0
d0043374:	eeb0 2a60 	vmov.f32	s4, s1
d0043378:	ed94 0a04 	vldr	s0, [r4, #16]
d004337c:	eef0 2a41 	vmov.f32	s5, s2
d0043380:	edc4 0a08 	vstr	s1, [r4, #32]
d0043384:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d0043388:	edd4 0a05 	vldr	s1, [r4, #20]
d004338c:	ed94 1a06 	vldr	s2, [r4, #24]
d0043390:	edc4 1a07 	vstr	s3, [r4, #28]
d0043394:	f7ff f8a0 	bl	d00424d8 <vec3Cross>
d0043398:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d004339c:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d00433a0:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d00433a4:	f7ff f8ae 	bl	d0042504 <vec3Normalize>
d00433a8:	edd4 1a04 	vldr	s3, [r4, #16]
d00433ac:	ed94 2a05 	vldr	s4, [r4, #20]
d00433b0:	edd4 2a06 	vldr	s5, [r4, #24]
d00433b4:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d00433b8:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d00433bc:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d00433c0:	f7ff f88a 	bl	d00424d8 <vec3Cross>
d00433c4:	ed84 0a07 	vstr	s0, [r4, #28]
d00433c8:	edc4 0a08 	vstr	s1, [r4, #32]
d00433cc:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d00433d0:	f7ff f898 	bl	d0042504 <vec3Normalize>
d00433d4:	ed84 0a07 	vstr	s0, [r4, #28]
d00433d8:	edc4 0a08 	vstr	s1, [r4, #32]
d00433dc:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d00433e0:	bd10      	pop	{r4, pc}
d00433e2:	bf00      	nop

d00433e4 <meshComputeBoundsRadius>:
d00433e4:	b1f0      	cbz	r0, d0043424 <meshComputeBoundsRadius+0x40>
d00433e6:	6803      	ldr	r3, [r0, #0]
d00433e8:	b1e3      	cbz	r3, d0043424 <meshComputeBoundsRadius+0x40>
d00433ea:	6842      	ldr	r2, [r0, #4]
d00433ec:	2a00      	cmp	r2, #0
d00433ee:	dd19      	ble.n	d0043424 <meshComputeBoundsRadius+0x40>
d00433f0:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d00433f4:	ed9f 6a0d 	vldr	s12, [pc, #52]	; d004342c <meshComputeBoundsRadius+0x48>
d00433f8:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d00433fc:	edd3 7a01 	vldr	s15, [r3, #4]
d0043400:	330c      	adds	r3, #12
d0043402:	ed53 6a03 	vldr	s13, [r3, #-12]
d0043406:	ee67 7aa7 	vmul.f32	s15, s15, s15
d004340a:	ed13 7a01 	vldr	s14, [r3, #-4]
d004340e:	429a      	cmp	r2, r3
d0043410:	eee6 7aa6 	vfma.f32	s15, s13, s13
d0043414:	eee7 7a07 	vfma.f32	s15, s14, s14
d0043418:	fe86 6a27 	vmaxnm.f32	s12, s12, s15
d004341c:	d1ee      	bne.n	d00433fc <meshComputeBoundsRadius+0x18>
d004341e:	eeb1 0ac6 	vsqrt.f32	s0, s12
d0043422:	4770      	bx	lr
d0043424:	ed9f 0a01 	vldr	s0, [pc, #4]	; d004342c <meshComputeBoundsRadius+0x48>
d0043428:	4770      	bx	lr
d004342a:	bf00      	nop
d004342c:	00000000 	.word	0x00000000

d0043430 <entityWorldSpawn>:
d0043430:	b4f0      	push	{r4, r5, r6, r7}
d0043432:	4d20      	ldr	r5, [pc, #128]	; (d00434b4 <entityWorldSpawn+0x84>)
d0043434:	b084      	sub	sp, #16
d0043436:	2300      	movs	r3, #0
d0043438:	462a      	mov	r2, r5
d004343a:	ed8d 0a01 	vstr	s0, [sp, #4]
d004343e:	edcd 0a02 	vstr	s1, [sp, #8]
d0043442:	ed8d 1a03 	vstr	s2, [sp, #12]
d0043446:	e003      	b.n	d0043450 <entityWorldSpawn+0x20>
d0043448:	3301      	adds	r3, #1
d004344a:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d004344e:	d02b      	beq.n	d00434a8 <entityWorldSpawn+0x78>
d0043450:	f892 4034 	ldrb.w	r4, [r2, #52]	; 0x34
d0043454:	3260      	adds	r2, #96	; 0x60
d0043456:	2c00      	cmp	r4, #0
d0043458:	d1f6      	bne.n	d0043448 <entityWorldSpawn+0x18>
d004345a:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d004345e:	4f16      	ldr	r7, [pc, #88]	; (d00434b8 <entityWorldSpawn+0x88>)
d0043460:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d0043464:	2600      	movs	r6, #0
d0043466:	eb05 1542 	add.w	r5, r5, r2, lsl #5
d004346a:	f240 1c01 	movw	ip, #257	; 0x101
d004346e:	eb07 1742 	add.w	r7, r7, r2, lsl #5
d0043472:	aa04      	add	r2, sp, #16
d0043474:	60e8      	str	r0, [r5, #12]
d0043476:	61e9      	str	r1, [r5, #28]
d0043478:	62e9      	str	r1, [r5, #44]	; 0x2c
d004347a:	61a9      	str	r1, [r5, #24]
d004347c:	622e      	str	r6, [r5, #32]
d004347e:	626e      	str	r6, [r5, #36]	; 0x24
d0043480:	62ae      	str	r6, [r5, #40]	; 0x28
d0043482:	632e      	str	r6, [r5, #48]	; 0x30
d0043484:	612e      	str	r6, [r5, #16]
d0043486:	616e      	str	r6, [r5, #20]
d0043488:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d004348c:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d0043490:	4618      	mov	r0, r3
d0043492:	f8a7 c014 	strh.w	ip, [r7, #20]
d0043496:	f885 4036 	strb.w	r4, [r5, #54]	; 0x36
d004349a:	63ee      	str	r6, [r5, #60]	; 0x3c
d004349c:	642e      	str	r6, [r5, #64]	; 0x40
d004349e:	646e      	str	r6, [r5, #68]	; 0x44
d00434a0:	63ae      	str	r6, [r5, #56]	; 0x38
d00434a2:	b004      	add	sp, #16
d00434a4:	bcf0      	pop	{r4, r5, r6, r7}
d00434a6:	4770      	bx	lr
d00434a8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d00434ac:	4618      	mov	r0, r3
d00434ae:	b004      	add	sp, #16
d00434b0:	bcf0      	pop	{r4, r5, r6, r7}
d00434b2:	4770      	bx	lr
d00434b4:	d00e1d80 	.word	0xd00e1d80
d00434b8:	d00e1da0 	.word	0xd00e1da0

d00434bc <entityMoveForward>:
d00434bc:	28ff      	cmp	r0, #255	; 0xff
d00434be:	d82b      	bhi.n	d0043518 <entityMoveForward+0x5c>
d00434c0:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d00434c4:	b510      	push	{r4, lr}
d00434c6:	4c15      	ldr	r4, [pc, #84]	; (d004351c <entityMoveForward+0x60>)
d00434c8:	b084      	sub	sp, #16
d00434ca:	eb04 1440 	add.w	r4, r4, r0, lsl #5
d00434ce:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d00434d2:	b1fb      	cbz	r3, d0043514 <entityMoveForward+0x58>
d00434d4:	68e3      	ldr	r3, [r4, #12]
d00434d6:	b1eb      	cbz	r3, d0043514 <entityMoveForward+0x58>
d00434d8:	eef0 1a40 	vmov.f32	s3, s0
d00434dc:	edd4 0a05 	vldr	s1, [r4, #20]
d00434e0:	ed94 0a04 	vldr	s0, [r4, #16]
d00434e4:	ed94 1a06 	vldr	s2, [r4, #24]
d00434e8:	f7fe ffe0 	bl	d00424ac <vec3Scale>
d00434ec:	eef0 1a40 	vmov.f32	s3, s0
d00434f0:	eeb0 2a60 	vmov.f32	s4, s1
d00434f4:	ed94 0a00 	vldr	s0, [r4]
d00434f8:	eef0 2a41 	vmov.f32	s5, s2
d00434fc:	edd4 0a01 	vldr	s1, [r4, #4]
d0043500:	ed94 1a02 	vldr	s2, [r4, #8]
d0043504:	f7fe ffc8 	bl	d0042498 <vec3Add>
d0043508:	ed84 0a00 	vstr	s0, [r4]
d004350c:	edc4 0a01 	vstr	s1, [r4, #4]
d0043510:	ed84 1a02 	vstr	s2, [r4, #8]
d0043514:	b004      	add	sp, #16
d0043516:	bd10      	pop	{r4, pc}
d0043518:	4770      	bx	lr
d004351a:	bf00      	nop
d004351c:	d00e1d80 	.word	0xd00e1d80

d0043520 <entityTurnLocal>:
d0043520:	28ff      	cmp	r0, #255	; 0xff
d0043522:	d82c      	bhi.n	d004357e <entityTurnLocal+0x5e>
d0043524:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0043528:	b510      	push	{r4, lr}
d004352a:	4c65      	ldr	r4, [pc, #404]	; (d00436c0 <entityTurnLocal+0x1a0>)
d004352c:	eb04 1440 	add.w	r4, r4, r0, lsl #5
d0043530:	ed2d 8b04 	vpush	{d8-d9}
d0043534:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0043538:	b1f3      	cbz	r3, d0043578 <entityTurnLocal+0x58>
d004353a:	68e3      	ldr	r3, [r4, #12]
d004353c:	b1e3      	cbz	r3, d0043578 <entityTurnLocal+0x58>
d004353e:	eeb5 0a40 	vcmp.f32	s0, #0.0
d0043542:	eeb0 9a40 	vmov.f32	s18, s0
d0043546:	eef0 8a60 	vmov.f32	s17, s1
d004354a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004354e:	eeb0 8a41 	vmov.f32	s16, s2
d0043552:	f040 8081 	bne.w	d0043658 <entityTurnLocal+0x138>
d0043556:	eef5 8a40 	vcmp.f32	s17, #0.0
d004355a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004355e:	d148      	bne.n	d00435f2 <entityTurnLocal+0xd2>
d0043560:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0043564:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043568:	d10a      	bne.n	d0043580 <entityTurnLocal+0x60>
d004356a:	4620      	mov	r0, r4
d004356c:	ecbd 8b04 	vpop	{d8-d9}
d0043570:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0043574:	f7ff bee0 	b.w	d0043338 <normalizeEntity.part.0>
d0043578:	ecbd 8b04 	vpop	{d8-d9}
d004357c:	bd10      	pop	{r4, pc}
d004357e:	4770      	bx	lr
d0043580:	ed94 0a07 	vldr	s0, [r4, #28]
d0043584:	eeb0 3a48 	vmov.f32	s6, s16
d0043588:	edd4 0a08 	vldr	s1, [r4, #32]
d004358c:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0043590:	edd4 1a04 	vldr	s3, [r4, #16]
d0043594:	ed94 2a05 	vldr	s4, [r4, #20]
d0043598:	edd4 2a06 	vldr	s5, [r4, #24]
d004359c:	f7ff f802 	bl	d00425a4 <rotateAroundAxis>
d00435a0:	eef0 6a40 	vmov.f32	s13, s0
d00435a4:	eeb0 7a60 	vmov.f32	s14, s1
d00435a8:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00435ac:	eef0 7a41 	vmov.f32	s15, s2
d00435b0:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00435b4:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00435b8:	eeb0 3a48 	vmov.f32	s6, s16
d00435bc:	edd4 1a04 	vldr	s3, [r4, #16]
d00435c0:	ed94 2a05 	vldr	s4, [r4, #20]
d00435c4:	edd4 2a06 	vldr	s5, [r4, #24]
d00435c8:	edc4 6a07 	vstr	s13, [r4, #28]
d00435cc:	ed84 7a08 	vstr	s14, [r4, #32]
d00435d0:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d00435d4:	f7fe ffe6 	bl	d00425a4 <rotateAroundAxis>
d00435d8:	4620      	mov	r0, r4
d00435da:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d00435de:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d00435e2:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d00435e6:	ecbd 8b04 	vpop	{d8-d9}
d00435ea:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00435ee:	f7ff bea3 	b.w	d0043338 <normalizeEntity.part.0>
d00435f2:	ed94 0a04 	vldr	s0, [r4, #16]
d00435f6:	eeb0 3a68 	vmov.f32	s6, s17
d00435fa:	edd4 0a05 	vldr	s1, [r4, #20]
d00435fe:	ed94 1a06 	vldr	s2, [r4, #24]
d0043602:	edd4 1a07 	vldr	s3, [r4, #28]
d0043606:	ed94 2a08 	vldr	s4, [r4, #32]
d004360a:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d004360e:	f7fe ffc9 	bl	d00425a4 <rotateAroundAxis>
d0043612:	eef0 6a40 	vmov.f32	s13, s0
d0043616:	eeb0 7a60 	vmov.f32	s14, s1
d004361a:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d004361e:	eef0 7a41 	vmov.f32	s15, s2
d0043622:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0043626:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d004362a:	eeb0 3a68 	vmov.f32	s6, s17
d004362e:	edd4 1a07 	vldr	s3, [r4, #28]
d0043632:	ed94 2a08 	vldr	s4, [r4, #32]
d0043636:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d004363a:	edc4 6a04 	vstr	s13, [r4, #16]
d004363e:	ed84 7a05 	vstr	s14, [r4, #20]
d0043642:	edc4 7a06 	vstr	s15, [r4, #24]
d0043646:	f7fe ffad 	bl	d00425a4 <rotateAroundAxis>
d004364a:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d004364e:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0043652:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0043656:	e783      	b.n	d0043560 <entityTurnLocal+0x40>
d0043658:	eeb0 3a40 	vmov.f32	s6, s0
d004365c:	edd4 0a05 	vldr	s1, [r4, #20]
d0043660:	ed94 0a04 	vldr	s0, [r4, #16]
d0043664:	ed94 1a06 	vldr	s2, [r4, #24]
d0043668:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d004366c:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d0043670:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d0043674:	f7fe ff96 	bl	d00425a4 <rotateAroundAxis>
d0043678:	eef0 6a40 	vmov.f32	s13, s0
d004367c:	eeb0 7a60 	vmov.f32	s14, s1
d0043680:	ed94 0a07 	vldr	s0, [r4, #28]
d0043684:	eef0 7a41 	vmov.f32	s15, s2
d0043688:	edd4 0a08 	vldr	s1, [r4, #32]
d004368c:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0043690:	eeb0 3a49 	vmov.f32	s6, s18
d0043694:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d0043698:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d004369c:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d00436a0:	edc4 6a04 	vstr	s13, [r4, #16]
d00436a4:	ed84 7a05 	vstr	s14, [r4, #20]
d00436a8:	edc4 7a06 	vstr	s15, [r4, #24]
d00436ac:	f7fe ff7a 	bl	d00425a4 <rotateAroundAxis>
d00436b0:	ed84 0a07 	vstr	s0, [r4, #28]
d00436b4:	edc4 0a08 	vstr	s1, [r4, #32]
d00436b8:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d00436bc:	e74b      	b.n	d0043556 <entityTurnLocal+0x36>
d00436be:	bf00      	nop
d00436c0:	d00e1d80 	.word	0xd00e1d80

d00436c4 <buildLightingCLUT>:
d00436c4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00436c8:	f1b2 0900 	subs.w	r9, r2, #0
d00436cc:	b085      	sub	sp, #20
d00436ce:	9c0e      	ldr	r4, [sp, #56]	; 0x38
d00436d0:	f340 8212 	ble.w	d0043af8 <buildLightingCLUT+0x434>
d00436d4:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00436d8:	4f24      	ldr	r7, [pc, #144]	; (d004376c <buildLightingCLUT+0xa8>)
d00436da:	eb09 0c49 	add.w	ip, r9, r9, lsl #1
d00436de:	edd4 4a00 	vldr	s9, [r4]
d00436e2:	ed94 5a01 	vldr	s10, [r4, #4]
d00436e6:	eb09 0807 	add.w	r8, r9, r7
d00436ea:	edd4 5a02 	vldr	s11, [r4, #8]
d00436ee:	eb07 0e49 	add.w	lr, r7, r9, lsl #1
d00436f2:	ed94 6a03 	vldr	s12, [r4, #12]
d00436f6:	44bc      	add	ip, r7
d00436f8:	edd4 6a04 	vldr	s13, [r4, #16]
d00436fc:	eb07 0789 	add.w	r7, r7, r9, lsl #2
d0043700:	3904      	subs	r1, #4
d0043702:	ee77 4ae4 	vsub.f32	s9, s15, s9
d0043706:	ee37 5ac5 	vsub.f32	s10, s15, s10
d004370a:	ed9f 7a19 	vldr	s14, [pc, #100]	; d0043770 <buildLightingCLUT+0xac>
d004370e:	ee77 5ae5 	vsub.f32	s11, s15, s11
d0043712:	f100 067c 	add.w	r6, r0, #124	; 0x7c
d0043716:	ee37 6ac6 	vsub.f32	s12, s15, s12
d004371a:	eb00 0888 	add.w	r8, r0, r8, lsl #2
d004371e:	ee77 6ae6 	vsub.f32	s13, s15, s13
d0043722:	eb00 0e8e 	add.w	lr, r0, lr, lsl #2
d0043726:	eb00 0c8c 	add.w	ip, r0, ip, lsl #2
d004372a:	f3c3 4507 	ubfx	r5, r3, #16, #8
d004372e:	eb00 0787 	add.w	r7, r0, r7, lsl #2
d0043732:	f3c3 2007 	ubfx	r0, r3, #8, #8
d0043736:	eb01 0989 	add.w	r9, r1, r9, lsl #2
d004373a:	fec4 4a87 	vmaxnm.f32	s9, s9, s14
d004373e:	0e1c      	lsrs	r4, r3, #24
d0043740:	fe85 5a07 	vmaxnm.f32	s10, s10, s14
d0043744:	b2da      	uxtb	r2, r3
d0043746:	fec5 5a87 	vmaxnm.f32	s11, s11, s14
d004374a:	fe86 6a07 	vmaxnm.f32	s12, s12, s14
d004374e:	fec6 6a87 	vmaxnm.f32	s13, s13, s14
d0043752:	fec4 4ae7 	vminnm.f32	s9, s9, s15
d0043756:	fe85 5a67 	vminnm.f32	s10, s10, s15
d004375a:	fec5 5ae7 	vminnm.f32	s11, s11, s15
d004375e:	fe86 6a67 	vminnm.f32	s12, s12, s15
d0043762:	fec6 6ae7 	vminnm.f32	s13, s13, s15
d0043766:	9601      	str	r6, [sp, #4]
d0043768:	e004      	b.n	d0043774 <buildLightingCLUT+0xb0>
d004376a:	bf00      	nop
d004376c:	4000001f 	.word	0x4000001f
d0043770:	00000000 	.word	0x00000000
d0043774:	f851 3f04 	ldr.w	r3, [r1, #4]!
d0043778:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d004377c:	0e1e      	lsrs	r6, r3, #24
d004377e:	fa5f fa83 	uxtb.w	sl, r3
d0043782:	4549      	cmp	r1, r9
d0043784:	ee07 6a10 	vmov	s14, r6
d0043788:	eba5 060b 	sub.w	r6, r5, fp
d004378c:	ee04 ba10 	vmov	s8, fp
d0043790:	ee07 6a90 	vmov	s15, r6
d0043794:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0043798:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d004379c:	f3c3 2307 	ubfx	r3, r3, #8, #8
d00437a0:	ee02 6a10 	vmov	s4, r6
d00437a4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00437a8:	eba2 060a 	sub.w	r6, r2, sl
d00437ac:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00437b0:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d00437b4:	ee04 aa10 	vmov	s8, sl
d00437b8:	ee02 6a90 	vmov	s5, r6
d00437bc:	eba0 0603 	sub.w	r6, r0, r3
d00437c0:	eee4 3aa7 	vfma.f32	s7, s9, s15
d00437c4:	ee07 3a90 	vmov	s15, r3
d00437c8:	eea4 7a82 	vfma.f32	s14, s9, s4
d00437cc:	ee03 6a10 	vmov	s6, r6
d00437d0:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d00437d4:	9e01      	ldr	r6, [sp, #4]
d00437d6:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00437da:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d00437de:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00437e2:	eea4 4aa2 	vfma.f32	s8, s9, s5
d00437e6:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d00437ea:	eee4 7a83 	vfma.f32	s15, s9, s6
d00437ee:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00437f2:	edcd 3a02 	vstr	s7, [sp, #8]
d00437f6:	f89d a008 	ldrb.w	sl, [sp, #8]
d00437fa:	ee17 3a10 	vmov	r3, s14
d00437fe:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0043802:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0043806:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004380a:	ed8d 7a02 	vstr	s14, [sp, #8]
d004380e:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0043812:	f89d b008 	ldrb.w	fp, [sp, #8]
d0043816:	edcd 7a03 	vstr	s15, [sp, #12]
d004381a:	ea43 030b 	orr.w	r3, r3, fp
d004381e:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0043822:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0043826:	f846 3f04 	str.w	r3, [r6, #4]!
d004382a:	680b      	ldr	r3, [r1, #0]
d004382c:	9601      	str	r6, [sp, #4]
d004382e:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0043832:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0043836:	fa5f fa83 	uxtb.w	sl, r3
d004383a:	ee07 6a10 	vmov	s14, r6
d004383e:	eba5 060b 	sub.w	r6, r5, fp
d0043842:	ee04 ba10 	vmov	s8, fp
d0043846:	ee07 6a90 	vmov	s15, r6
d004384a:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d004384e:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0043852:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0043856:	ee02 6a10 	vmov	s4, r6
d004385a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004385e:	eba2 060a 	sub.w	r6, r2, sl
d0043862:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0043866:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d004386a:	ee04 aa10 	vmov	s8, sl
d004386e:	ee02 6a90 	vmov	s5, r6
d0043872:	eba0 0603 	sub.w	r6, r0, r3
d0043876:	eee5 3a27 	vfma.f32	s7, s10, s15
d004387a:	ee07 3a90 	vmov	s15, r3
d004387e:	eea5 7a02 	vfma.f32	s14, s10, s4
d0043882:	ee03 6a10 	vmov	s6, r6
d0043886:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d004388a:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d004388e:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0043892:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0043896:	eea5 4a22 	vfma.f32	s8, s10, s5
d004389a:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d004389e:	eee5 7a03 	vfma.f32	s15, s10, s6
d00438a2:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00438a6:	edcd 3a02 	vstr	s7, [sp, #8]
d00438aa:	f89d a008 	ldrb.w	sl, [sp, #8]
d00438ae:	ee17 3a10 	vmov	r3, s14
d00438b2:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d00438b6:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d00438ba:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00438be:	ed8d 7a02 	vstr	s14, [sp, #8]
d00438c2:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d00438c6:	f89d b008 	ldrb.w	fp, [sp, #8]
d00438ca:	edcd 7a03 	vstr	s15, [sp, #12]
d00438ce:	ea43 030b 	orr.w	r3, r3, fp
d00438d2:	f89d a00c 	ldrb.w	sl, [sp, #12]
d00438d6:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d00438da:	f848 3f04 	str.w	r3, [r8, #4]!
d00438de:	680b      	ldr	r3, [r1, #0]
d00438e0:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d00438e4:	ea4f 6613 	mov.w	r6, r3, lsr #24
d00438e8:	fa5f fa83 	uxtb.w	sl, r3
d00438ec:	ee07 6a10 	vmov	s14, r6
d00438f0:	eba5 060b 	sub.w	r6, r5, fp
d00438f4:	ee04 ba10 	vmov	s8, fp
d00438f8:	ee07 6a90 	vmov	s15, r6
d00438fc:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0043900:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0043904:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0043908:	ee02 6a10 	vmov	s4, r6
d004390c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0043910:	eba2 060a 	sub.w	r6, r2, sl
d0043914:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0043918:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d004391c:	ee04 aa10 	vmov	s8, sl
d0043920:	ee02 6a90 	vmov	s5, r6
d0043924:	eba0 0603 	sub.w	r6, r0, r3
d0043928:	eee5 3aa7 	vfma.f32	s7, s11, s15
d004392c:	ee07 3a90 	vmov	s15, r3
d0043930:	eea5 7a82 	vfma.f32	s14, s11, s4
d0043934:	ee03 6a10 	vmov	s6, r6
d0043938:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d004393c:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0043940:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0043944:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0043948:	eea5 4aa2 	vfma.f32	s8, s11, s5
d004394c:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0043950:	eee5 7a83 	vfma.f32	s15, s11, s6
d0043954:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0043958:	edcd 3a02 	vstr	s7, [sp, #8]
d004395c:	f89d a008 	ldrb.w	sl, [sp, #8]
d0043960:	ee17 3a10 	vmov	r3, s14
d0043964:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0043968:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d004396c:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0043970:	ed8d 7a02 	vstr	s14, [sp, #8]
d0043974:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0043978:	f89d b008 	ldrb.w	fp, [sp, #8]
d004397c:	edcd 7a03 	vstr	s15, [sp, #12]
d0043980:	ea43 030b 	orr.w	r3, r3, fp
d0043984:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0043988:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d004398c:	f84e 3f04 	str.w	r3, [lr, #4]!
d0043990:	680b      	ldr	r3, [r1, #0]
d0043992:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0043996:	ea4f 6613 	mov.w	r6, r3, lsr #24
d004399a:	fa5f fa83 	uxtb.w	sl, r3
d004399e:	ee07 6a10 	vmov	s14, r6
d00439a2:	eba5 060b 	sub.w	r6, r5, fp
d00439a6:	ee04 ba10 	vmov	s8, fp
d00439aa:	ee07 6a90 	vmov	s15, r6
d00439ae:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d00439b2:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d00439b6:	f3c3 2307 	ubfx	r3, r3, #8, #8
d00439ba:	ee02 6a10 	vmov	s4, r6
d00439be:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00439c2:	eba2 060a 	sub.w	r6, r2, sl
d00439c6:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00439ca:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d00439ce:	ee04 aa10 	vmov	s8, sl
d00439d2:	ee02 6a90 	vmov	s5, r6
d00439d6:	eba0 0603 	sub.w	r6, r0, r3
d00439da:	eee6 3a27 	vfma.f32	s7, s12, s15
d00439de:	ee07 3a90 	vmov	s15, r3
d00439e2:	eea6 7a02 	vfma.f32	s14, s12, s4
d00439e6:	ee03 6a10 	vmov	s6, r6
d00439ea:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d00439ee:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00439f2:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d00439f6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00439fa:	eea6 4a22 	vfma.f32	s8, s12, s5
d00439fe:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0043a02:	eee6 7a03 	vfma.f32	s15, s12, s6
d0043a06:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0043a0a:	edcd 3a02 	vstr	s7, [sp, #8]
d0043a0e:	f89d a008 	ldrb.w	sl, [sp, #8]
d0043a12:	ee17 3a10 	vmov	r3, s14
d0043a16:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0043a1a:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0043a1e:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0043a22:	ed8d 7a02 	vstr	s14, [sp, #8]
d0043a26:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0043a2a:	f89d b008 	ldrb.w	fp, [sp, #8]
d0043a2e:	edcd 7a03 	vstr	s15, [sp, #12]
d0043a32:	ea43 030b 	orr.w	r3, r3, fp
d0043a36:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0043a3a:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0043a3e:	f84c 3f04 	str.w	r3, [ip, #4]!
d0043a42:	680b      	ldr	r3, [r1, #0]
d0043a44:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0043a48:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0043a4c:	fa5f fa83 	uxtb.w	sl, r3
d0043a50:	ee07 6a10 	vmov	s14, r6
d0043a54:	eba5 060b 	sub.w	r6, r5, fp
d0043a58:	ee04 ba10 	vmov	s8, fp
d0043a5c:	ee07 6a90 	vmov	s15, r6
d0043a60:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0043a64:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0043a68:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0043a6c:	ee02 6a10 	vmov	s4, r6
d0043a70:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0043a74:	eba2 060a 	sub.w	r6, r2, sl
d0043a78:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0043a7c:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0043a80:	ee04 aa10 	vmov	s8, sl
d0043a84:	ee02 6a90 	vmov	s5, r6
d0043a88:	eba0 0603 	sub.w	r6, r0, r3
d0043a8c:	eee6 3aa7 	vfma.f32	s7, s13, s15
d0043a90:	ee07 3a90 	vmov	s15, r3
d0043a94:	eea6 7a82 	vfma.f32	s14, s13, s4
d0043a98:	ee03 6a10 	vmov	s6, r6
d0043a9c:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0043aa0:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0043aa4:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0043aa8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0043aac:	eea6 4aa2 	vfma.f32	s8, s13, s5
d0043ab0:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0043ab4:	eee6 7a83 	vfma.f32	s15, s13, s6
d0043ab8:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0043abc:	edcd 3a02 	vstr	s7, [sp, #8]
d0043ac0:	f89d a008 	ldrb.w	sl, [sp, #8]
d0043ac4:	ee17 3a10 	vmov	r3, s14
d0043ac8:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0043acc:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0043ad0:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0043ad4:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0043ad8:	ed8d 7a02 	vstr	s14, [sp, #8]
d0043adc:	f89d b008 	ldrb.w	fp, [sp, #8]
d0043ae0:	edcd 7a03 	vstr	s15, [sp, #12]
d0043ae4:	ea43 030b 	orr.w	r3, r3, fp
d0043ae8:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0043aec:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0043af0:	f847 3f04 	str.w	r3, [r7, #4]!
d0043af4:	f47f ae3e 	bne.w	d0043774 <buildLightingCLUT+0xb0>
d0043af8:	b005      	add	sp, #20
d0043afa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0043afe:	bf00      	nop

d0043b00 <brightnessToShadeF>:
d0043b00:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0043b04:	eddf 7a09 	vldr	s15, [pc, #36]	; d0043b2c <brightnessToShadeF+0x2c>
d0043b08:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d0043b0c:	eef7 6a08 	vmov.f32	s13, #120	; 0x3fc00000  1.5
d0043b10:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d0043b14:	fec0 7a47 	vminnm.f32	s15, s0, s14
d0043b18:	eeb1 0a04 	vmov.f32	s0, #20	; 0x40a00000  5.0
d0043b1c:	eee7 6ac6 	vfms.f32	s13, s15, s12
d0043b20:	eea6 7ae7 	vfms.f32	s14, s13, s15
d0043b24:	ee27 0a00 	vmul.f32	s0, s14, s0
d0043b28:	4770      	bx	lr
d0043b2a:	bf00      	nop
d0043b2c:	00000000 	.word	0x00000000

d0043b30 <lightsGet>:
d0043b30:	4800      	ldr	r0, [pc, #0]	; (d0043b34 <lightsGet+0x4>)
d0043b32:	4770      	bx	lr
d0043b34:	d00496a0 	.word	0xd00496a0

d0043b38 <lightsGetCount>:
d0043b38:	4b01      	ldr	r3, [pc, #4]	; (d0043b40 <lightsGetCount+0x8>)
d0043b3a:	6818      	ldr	r0, [r3, #0]
d0043b3c:	4770      	bx	lr
d0043b3e:	bf00      	nop
d0043b40:	d0049680 	.word	0xd0049680

d0043b44 <lightsClear>:
d0043b44:	4b01      	ldr	r3, [pc, #4]	; (d0043b4c <lightsClear+0x8>)
d0043b46:	2200      	movs	r2, #0
d0043b48:	601a      	str	r2, [r3, #0]
d0043b4a:	4770      	bx	lr
d0043b4c:	d0049680 	.word	0xd0049680

d0043b50 <addDirectionalLight>:
d0043b50:	b5f0      	push	{r4, r5, r6, r7, lr}
d0043b52:	4f15      	ldr	r7, [pc, #84]	; (d0043ba8 <addDirectionalLight+0x58>)
d0043b54:	683d      	ldr	r5, [r7, #0]
d0043b56:	2d07      	cmp	r5, #7
d0043b58:	ed2d 8b02 	vpush	{d8}
d0043b5c:	b085      	sub	sp, #20
d0043b5e:	dc1f      	bgt.n	d0043ba0 <addDirectionalLight+0x50>
d0043b60:	4912      	ldr	r1, [pc, #72]	; (d0043bac <addDirectionalLight+0x5c>)
d0043b62:	2300      	movs	r3, #0
d0043b64:	4606      	mov	r6, r0
d0043b66:	01aa      	lsls	r2, r5, #6
d0043b68:	eb01 1485 	add.w	r4, r1, r5, lsl #6
d0043b6c:	2001      	movs	r0, #1
d0043b6e:	eeb0 8a61 	vmov.f32	s16, s3
d0043b72:	6063      	str	r3, [r4, #4]
d0043b74:	60a3      	str	r3, [r4, #8]
d0043b76:	60e3      	str	r3, [r4, #12]
d0043b78:	5488      	strb	r0, [r1, r2]
d0043b7a:	f7fe fcc3 	bl	d0042504 <vec3Normalize>
d0043b7e:	683b      	ldr	r3, [r7, #0]
d0043b80:	ed84 8a07 	vstr	s16, [r4, #28]
d0043b84:	3301      	adds	r3, #1
d0043b86:	62e6      	str	r6, [r4, #44]	; 0x2c
d0043b88:	ed84 0a04 	vstr	s0, [r4, #16]
d0043b8c:	edc4 0a05 	vstr	s1, [r4, #20]
d0043b90:	ed84 1a06 	vstr	s2, [r4, #24]
d0043b94:	603b      	str	r3, [r7, #0]
d0043b96:	4628      	mov	r0, r5
d0043b98:	b005      	add	sp, #20
d0043b9a:	ecbd 8b02 	vpop	{d8}
d0043b9e:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0043ba0:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0043ba4:	e7f7      	b.n	d0043b96 <addDirectionalLight+0x46>
d0043ba6:	bf00      	nop
d0043ba8:	d0049680 	.word	0xd0049680
d0043bac:	d00496a0 	.word	0xd00496a0

d0043bb0 <setDefaultRenderMode>:
d0043bb0:	2300      	movs	r3, #0
d0043bb2:	4803      	ldr	r0, [pc, #12]	; (d0043bc0 <setDefaultRenderMode+0x10>)
d0043bb4:	4903      	ldr	r1, [pc, #12]	; (d0043bc4 <setDefaultRenderMode+0x14>)
d0043bb6:	4a04      	ldr	r2, [pc, #16]	; (d0043bc8 <setDefaultRenderMode+0x18>)
d0043bb8:	6003      	str	r3, [r0, #0]
d0043bba:	600b      	str	r3, [r1, #0]
d0043bbc:	6013      	str	r3, [r2, #0]
d0043bbe:	4770      	bx	lr
d0043bc0:	d00558a0 	.word	0xd00558a0
d0043bc4:	d00d58c0 	.word	0xd00d58c0
d0043bc8:	d00d58c4 	.word	0xd00d58c4

d0043bcc <enableFlatMode>:
d0043bcc:	4b01      	ldr	r3, [pc, #4]	; (d0043bd4 <enableFlatMode+0x8>)
d0043bce:	6018      	str	r0, [r3, #0]
d0043bd0:	4770      	bx	lr
d0043bd2:	bf00      	nop
d0043bd4:	d00558a0 	.word	0xd00558a0

d0043bd8 <clipTriangleToFrustum>:
d0043bd8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0043bdc:	ed2d 8b02 	vpush	{d8}
d0043be0:	b0ba      	sub	sp, #232	; 0xe8
d0043be2:	ed91 7a10 	vldr	s14, [r1, #64]	; 0x40
d0043be6:	4605      	mov	r5, r0
d0043be8:	aa07      	add	r2, sp, #28
d0043bea:	ab04      	add	r3, sp, #16
d0043bec:	ed8d 0a07 	vstr	s0, [sp, #28]
d0043bf0:	ac0a      	add	r4, sp, #40	; 0x28
d0043bf2:	edcd 0a08 	vstr	s1, [sp, #32]
d0043bf6:	af0d      	add	r7, sp, #52	; 0x34
d0043bf8:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d0043bfc:	ae01      	add	r6, sp, #4
d0043bfe:	edcd 1a04 	vstr	s3, [sp, #16]
d0043c02:	ed8d 2a05 	vstr	s4, [sp, #20]
d0043c06:	edcd 2a06 	vstr	s5, [sp, #24]
d0043c0a:	ed8d 4a03 	vstr	s8, [sp, #12]
d0043c0e:	ed8d 3a01 	vstr	s6, [sp, #4]
d0043c12:	edcd 3a02 	vstr	s7, [sp, #8]
d0043c16:	ca07      	ldmia	r2, {r0, r1, r2}
d0043c18:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d0043c1c:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0043c20:	ab10      	add	r3, sp, #64	; 0x40
d0043c22:	ed9d 6a0a 	vldr	s12, [sp, #40]	; 0x28
d0043c26:	e887 0007 	stmia.w	r7, {r0, r1, r2}
d0043c2a:	e896 0007 	ldmia.w	r6, {r0, r1, r2}
d0043c2e:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0043c32:	ed9d 4a12 	vldr	s8, [sp, #72]	; 0x48
d0043c36:	eddd 5a10 	vldr	s11, [sp, #64]	; 0x40
d0043c3a:	ee34 5a47 	vsub.f32	s10, s8, s14
d0043c3e:	eddd 7a0c 	vldr	s15, [sp, #48]	; 0x30
d0043c42:	eddd 1a11 	vldr	s3, [sp, #68]	; 0x44
d0043c46:	ee77 4ac7 	vsub.f32	s9, s15, s14
d0043c4a:	eddd 6a0b 	vldr	s13, [sp, #44]	; 0x2c
d0043c4e:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d0043c52:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043c56:	eef5 4ac0 	vcmpe.f32	s9, #0.0
d0043c5a:	bfac      	ite	ge
d0043c5c:	2101      	movge	r1, #1
d0043c5e:	2100      	movlt	r1, #0
d0043c60:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043c64:	bfac      	ite	ge
d0043c66:	2001      	movge	r0, #1
d0043c68:	2000      	movlt	r0, #0
d0043c6a:	2900      	cmp	r1, #0
d0043c6c:	f000 825d 	beq.w	d004412a <clipTriangleToFrustum+0x552>
d0043c70:	2800      	cmp	r0, #0
d0043c72:	f000 825a 	beq.w	d004412a <clipTriangleToFrustum+0x552>
d0043c76:	2301      	movs	r3, #1
d0043c78:	ed8d 6a22 	vstr	s12, [sp, #136]	; 0x88
d0043c7c:	edcd 6a23 	vstr	s13, [sp, #140]	; 0x8c
d0043c80:	edcd 7a24 	vstr	s15, [sp, #144]	; 0x90
d0043c84:	eddd 3a0f 	vldr	s7, [sp, #60]	; 0x3c
d0043c88:	f000 0201 	and.w	r2, r0, #1
d0043c8c:	ed9d 2a0d 	vldr	s4, [sp, #52]	; 0x34
d0043c90:	ee33 3ac7 	vsub.f32	s6, s7, s14
d0043c94:	eddd 2a0e 	vldr	s5, [sp, #56]	; 0x38
d0043c98:	eeb5 3ac0 	vcmpe.f32	s6, #0.0
d0043c9c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043ca0:	bfb6      	itet	lt
d0043ca2:	2200      	movlt	r2, #0
d0043ca4:	2601      	movge	r6, #1
d0043ca6:	2600      	movlt	r6, #0
d0043ca8:	2a00      	cmp	r2, #0
d0043caa:	f000 8277 	beq.w	d004419c <clipTriangleToFrustum+0x5c4>
d0043cae:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0043cb2:	ae22      	add	r6, sp, #136	; 0x88
d0043cb4:	3301      	adds	r3, #1
d0043cb6:	eb06 0080 	add.w	r0, r6, r0, lsl #2
d0043cba:	ed80 2a00 	vstr	s4, [r0]
d0043cbe:	edc0 2a01 	vstr	s5, [r0, #4]
d0043cc2:	edc0 3a02 	vstr	s7, [r0, #8]
d0043cc6:	2a00      	cmp	r2, #0
d0043cc8:	f000 828e 	beq.w	d00441e8 <clipTriangleToFrustum+0x610>
d0043ccc:	2900      	cmp	r1, #0
d0043cce:	f000 828b 	beq.w	d00441e8 <clipTriangleToFrustum+0x610>
d0043cd2:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0043cd6:	a922      	add	r1, sp, #136	; 0x88
d0043cd8:	3301      	adds	r3, #1
d0043cda:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d0043cde:	edc2 5a00 	vstr	s11, [r2]
d0043ce2:	edc2 1a01 	vstr	s3, [r2, #4]
d0043ce6:	ed82 4a02 	vstr	s8, [r2, #8]
d0043cea:	2b02      	cmp	r3, #2
d0043cec:	f340 8216 	ble.w	d004411c <clipTriangleToFrustum+0x544>
d0043cf0:	eb03 0643 	add.w	r6, r3, r3, lsl #1
d0043cf4:	a822      	add	r0, sp, #136	; 0x88
d0043cf6:	2300      	movs	r3, #0
d0043cf8:	00b6      	lsls	r6, r6, #2
d0043cfa:	4601      	mov	r1, r0
d0043cfc:	4607      	mov	r7, r0
d0043cfe:	f1a6 020c 	sub.w	r2, r6, #12
d0043d02:	4406      	add	r6, r0
d0043d04:	4402      	add	r2, r0
d0043d06:	ed92 7a00 	vldr	s14, [r2]
d0043d0a:	edd2 7a02 	vldr	s15, [r2, #8]
d0043d0e:	ed92 6a01 	vldr	s12, [r2, #4]
d0043d12:	ee77 6a27 	vadd.f32	s13, s14, s15
d0043d16:	e009      	b.n	d0043d2c <clipTriangleToFrustum+0x154>
d0043d18:	3301      	adds	r3, #1
d0043d1a:	ed82 7a00 	vstr	s14, [r2]
d0043d1e:	ed82 6a01 	vstr	s12, [r2, #4]
d0043d22:	edc2 7a02 	vstr	s15, [r2, #8]
d0043d26:	310c      	adds	r1, #12
d0043d28:	428e      	cmp	r6, r1
d0043d2a:	d04e      	beq.n	d0043dca <clipTriangleToFrustum+0x1f2>
d0043d2c:	eeb0 4a47 	vmov.f32	s8, s14
d0043d30:	ed91 7a00 	vldr	s14, [r1]
d0043d34:	eeb0 5a67 	vmov.f32	s10, s15
d0043d38:	edd1 7a02 	vldr	s15, [r1, #8]
d0043d3c:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043d40:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0043d44:	eef0 5a66 	vmov.f32	s11, s13
d0043d48:	ee77 6a27 	vadd.f32	s13, s14, s15
d0043d4c:	eb04 0282 	add.w	r2, r4, r2, lsl #2
d0043d50:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043d54:	eef0 4a46 	vmov.f32	s9, s12
d0043d58:	ed91 6a01 	vldr	s12, [r1, #4]
d0043d5c:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043d60:	bfac      	ite	ge
d0043d62:	2701      	movge	r7, #1
d0043d64:	2700      	movlt	r7, #0
d0043d66:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043d6a:	bfac      	ite	ge
d0043d6c:	f04f 0c01 	movge.w	ip, #1
d0043d70:	f04f 0c00 	movlt.w	ip, #0
d0043d74:	b117      	cbz	r7, d0043d7c <clipTriangleToFrustum+0x1a4>
d0043d76:	f1bc 0f00 	cmp.w	ip, #0
d0043d7a:	d1cd      	bne.n	d0043d18 <clipTriangleToFrustum+0x140>
d0043d7c:	eef5 6a40 	vcmp.f32	s13, #0.0
d0043d80:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0043d84:	ee75 1ae6 	vsub.f32	s3, s11, s13
d0043d88:	ee37 2a44 	vsub.f32	s4, s14, s8
d0043d8c:	eb04 0282 	add.w	r2, r4, r2, lsl #2
d0043d90:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043d94:	ee76 2a64 	vsub.f32	s5, s12, s9
d0043d98:	ee37 3ac5 	vsub.f32	s6, s15, s10
d0043d9c:	f140 818f 	bpl.w	d00440be <clipTriangleToFrustum+0x4e6>
d0043da0:	2f00      	cmp	r7, #0
d0043da2:	f000 818c 	beq.w	d00440be <clipTriangleToFrustum+0x4e6>
d0043da6:	eec5 3aa1 	vdiv.f32	s7, s11, s3
d0043daa:	310c      	adds	r1, #12
d0043dac:	3301      	adds	r3, #1
d0043dae:	428e      	cmp	r6, r1
d0043db0:	eea2 4a23 	vfma.f32	s8, s4, s7
d0043db4:	eee2 4aa3 	vfma.f32	s9, s5, s7
d0043db8:	eea3 5a23 	vfma.f32	s10, s6, s7
d0043dbc:	ed82 4a00 	vstr	s8, [r2]
d0043dc0:	edc2 4a01 	vstr	s9, [r2, #4]
d0043dc4:	ed82 5a02 	vstr	s10, [r2, #8]
d0043dc8:	d1b0      	bne.n	d0043d2c <clipTriangleToFrustum+0x154>
d0043dca:	2b02      	cmp	r3, #2
d0043dcc:	f340 81a6 	ble.w	d004411c <clipTriangleToFrustum+0x544>
d0043dd0:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0043dd4:	4626      	mov	r6, r4
d0043dd6:	4627      	mov	r7, r4
d0043dd8:	2200      	movs	r2, #0
d0043dda:	009b      	lsls	r3, r3, #2
d0043ddc:	f1a3 010c 	sub.w	r1, r3, #12
d0043de0:	4423      	add	r3, r4
d0043de2:	4421      	add	r1, r4
d0043de4:	edd1 7a00 	vldr	s15, [r1]
d0043de8:	ed91 7a02 	vldr	s14, [r1, #8]
d0043dec:	ed91 6a01 	vldr	s12, [r1, #4]
d0043df0:	ee77 6a67 	vsub.f32	s13, s14, s15
d0043df4:	e009      	b.n	d0043e0a <clipTriangleToFrustum+0x232>
d0043df6:	3201      	adds	r2, #1
d0043df8:	edc1 7a00 	vstr	s15, [r1]
d0043dfc:	ed81 6a01 	vstr	s12, [r1, #4]
d0043e00:	ed81 7a02 	vstr	s14, [r1, #8]
d0043e04:	370c      	adds	r7, #12
d0043e06:	42bb      	cmp	r3, r7
d0043e08:	d059      	beq.n	d0043ebe <clipTriangleToFrustum+0x2e6>
d0043e0a:	eeb0 4a67 	vmov.f32	s8, s15
d0043e0e:	edd7 7a00 	vldr	s15, [r7]
d0043e12:	eeb0 5a47 	vmov.f32	s10, s14
d0043e16:	ed97 7a02 	vldr	s14, [r7, #8]
d0043e1a:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043e1e:	f10d 0c88 	add.w	ip, sp, #136	; 0x88
d0043e22:	eef0 5a66 	vmov.f32	s11, s13
d0043e26:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0043e2a:	ee77 6a67 	vsub.f32	s13, s14, s15
d0043e2e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043e32:	eb0c 0181 	add.w	r1, ip, r1, lsl #2
d0043e36:	eef0 4a46 	vmov.f32	s9, s12
d0043e3a:	ed97 6a01 	vldr	s12, [r7, #4]
d0043e3e:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043e42:	bfac      	ite	ge
d0043e44:	f04f 0c01 	movge.w	ip, #1
d0043e48:	f04f 0c00 	movlt.w	ip, #0
d0043e4c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043e50:	bfac      	ite	ge
d0043e52:	f04f 0e01 	movge.w	lr, #1
d0043e56:	f04f 0e00 	movlt.w	lr, #0
d0043e5a:	f1bc 0f00 	cmp.w	ip, #0
d0043e5e:	d002      	beq.n	d0043e66 <clipTriangleToFrustum+0x28e>
d0043e60:	f1be 0f00 	cmp.w	lr, #0
d0043e64:	d1c7      	bne.n	d0043df6 <clipTriangleToFrustum+0x21e>
d0043e66:	eef5 6a40 	vcmp.f32	s13, #0.0
d0043e6a:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0043e6e:	ee77 3aa5 	vadd.f32	s7, s15, s11
d0043e72:	f10d 0888 	add.w	r8, sp, #136	; 0x88
d0043e76:	ee77 1ac4 	vsub.f32	s3, s15, s8
d0043e7a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043e7e:	eb08 0181 	add.w	r1, r8, r1, lsl #2
d0043e82:	ee36 2a64 	vsub.f32	s4, s12, s9
d0043e86:	ee73 3ac7 	vsub.f32	s7, s7, s14
d0043e8a:	ee77 2a45 	vsub.f32	s5, s14, s10
d0043e8e:	f140 8268 	bpl.w	d0044362 <clipTriangleToFrustum+0x78a>
d0043e92:	f1bc 0f00 	cmp.w	ip, #0
d0043e96:	f000 8264 	beq.w	d0044362 <clipTriangleToFrustum+0x78a>
d0043e9a:	ee85 3aa3 	vdiv.f32	s6, s11, s7
d0043e9e:	370c      	adds	r7, #12
d0043ea0:	3201      	adds	r2, #1
d0043ea2:	42bb      	cmp	r3, r7
d0043ea4:	eea1 4a83 	vfma.f32	s8, s3, s6
d0043ea8:	eee2 4a03 	vfma.f32	s9, s4, s6
d0043eac:	eea2 5a83 	vfma.f32	s10, s5, s6
d0043eb0:	ed81 4a00 	vstr	s8, [r1]
d0043eb4:	edc1 4a01 	vstr	s9, [r1, #4]
d0043eb8:	ed81 5a02 	vstr	s10, [r1, #8]
d0043ebc:	d1a5      	bne.n	d0043e0a <clipTriangleToFrustum+0x232>
d0043ebe:	2a02      	cmp	r2, #2
d0043ec0:	f340 812c 	ble.w	d004411c <clipTriangleToFrustum+0x544>
d0043ec4:	eb02 0342 	add.w	r3, r2, r2, lsl #1
d0043ec8:	af22      	add	r7, sp, #136	; 0x88
d0043eca:	eddf 6add 	vldr	s13, [pc, #884]	; d0044240 <clipTriangleToFrustum+0x668>
d0043ece:	2200      	movs	r2, #0
d0043ed0:	009b      	lsls	r3, r3, #2
d0043ed2:	eef0 2a66 	vmov.f32	s5, s13
d0043ed6:	f1a3 010c 	sub.w	r1, r3, #12
d0043eda:	443b      	add	r3, r7
d0043edc:	4439      	add	r1, r7
d0043ede:	edd1 7a01 	vldr	s15, [r1, #4]
d0043ee2:	ed91 7a02 	vldr	s14, [r1, #8]
d0043ee6:	eef0 5a67 	vmov.f32	s11, s15
d0043eea:	ed91 6a00 	vldr	s12, [r1]
d0043eee:	eed7 5a26 	vfnms.f32	s11, s14, s13
d0043ef2:	eef0 6a65 	vmov.f32	s13, s11
d0043ef6:	e00c      	b.n	d0043f12 <clipTriangleToFrustum+0x33a>
d0043ef8:	f1bc 0f00 	cmp.w	ip, #0
d0043efc:	d031      	beq.n	d0043f62 <clipTriangleToFrustum+0x38a>
d0043efe:	3201      	adds	r2, #1
d0043f00:	ed81 6a00 	vstr	s12, [r1]
d0043f04:	edc1 7a01 	vstr	s15, [r1, #4]
d0043f08:	ed81 7a02 	vstr	s14, [r1, #8]
d0043f0c:	300c      	adds	r0, #12
d0043f0e:	4298      	cmp	r0, r3
d0043f10:	d050      	beq.n	d0043fb4 <clipTriangleToFrustum+0x3dc>
d0043f12:	eeb0 5a47 	vmov.f32	s10, s14
d0043f16:	ed90 7a02 	vldr	s14, [r0, #8]
d0043f1a:	eef0 4a67 	vmov.f32	s9, s15
d0043f1e:	edd0 7a01 	vldr	s15, [r0, #4]
d0043f22:	ee67 3a22 	vmul.f32	s7, s14, s5
d0043f26:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0043f2a:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043f2e:	eef0 5a66 	vmov.f32	s11, s13
d0043f32:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d0043f36:	ee73 6ae7 	vsub.f32	s13, s7, s15
d0043f3a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043f3e:	eeb0 4a46 	vmov.f32	s8, s12
d0043f42:	ed90 6a00 	vldr	s12, [r0]
d0043f46:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043f4a:	bfac      	ite	ge
d0043f4c:	2701      	movge	r7, #1
d0043f4e:	2700      	movlt	r7, #0
d0043f50:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043f54:	bfac      	ite	ge
d0043f56:	f04f 0c01 	movge.w	ip, #1
d0043f5a:	f04f 0c00 	movlt.w	ip, #0
d0043f5e:	2f00      	cmp	r7, #0
d0043f60:	d1ca      	bne.n	d0043ef8 <clipTriangleToFrustum+0x320>
d0043f62:	eef5 6a40 	vcmp.f32	s13, #0.0
d0043f66:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0043f6a:	ee37 3aa5 	vadd.f32	s6, s15, s11
d0043f6e:	ee36 1a44 	vsub.f32	s2, s12, s8
d0043f72:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d0043f76:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043f7a:	ee77 1ae4 	vsub.f32	s3, s15, s9
d0043f7e:	ee33 3a63 	vsub.f32	s6, s6, s7
d0043f82:	ee37 2a45 	vsub.f32	s4, s14, s10
d0043f86:	f140 821f 	bpl.w	d00443c8 <clipTriangleToFrustum+0x7f0>
d0043f8a:	2f00      	cmp	r7, #0
d0043f8c:	f000 821c 	beq.w	d00443c8 <clipTriangleToFrustum+0x7f0>
d0043f90:	eec5 3a83 	vdiv.f32	s7, s11, s6
d0043f94:	300c      	adds	r0, #12
d0043f96:	3201      	adds	r2, #1
d0043f98:	4298      	cmp	r0, r3
d0043f9a:	eea1 4a23 	vfma.f32	s8, s2, s7
d0043f9e:	eee1 4aa3 	vfma.f32	s9, s3, s7
d0043fa2:	eea2 5a23 	vfma.f32	s10, s4, s7
d0043fa6:	ed81 4a00 	vstr	s8, [r1]
d0043faa:	edc1 4a01 	vstr	s9, [r1, #4]
d0043fae:	ed81 5a02 	vstr	s10, [r1, #8]
d0043fb2:	d1ae      	bne.n	d0043f12 <clipTriangleToFrustum+0x33a>
d0043fb4:	2a02      	cmp	r2, #2
d0043fb6:	f340 80b1 	ble.w	d004411c <clipTriangleToFrustum+0x544>
d0043fba:	eb02 0342 	add.w	r3, r2, r2, lsl #1
d0043fbe:	eddf 6aa0 	vldr	s13, [pc, #640]	; d0044240 <clipTriangleToFrustum+0x668>
d0043fc2:	2700      	movs	r7, #0
d0043fc4:	009b      	lsls	r3, r3, #2
d0043fc6:	eef0 3a66 	vmov.f32	s7, s13
d0043fca:	f1a3 020c 	sub.w	r2, r3, #12
d0043fce:	4423      	add	r3, r4
d0043fd0:	4414      	add	r4, r2
d0043fd2:	edd4 7a01 	vldr	s15, [r4, #4]
d0043fd6:	ed94 7a02 	vldr	s14, [r4, #8]
d0043fda:	eef0 5a67 	vmov.f32	s11, s15
d0043fde:	ed94 6a00 	vldr	s12, [r4]
d0043fe2:	eee7 5a26 	vfma.f32	s11, s14, s13
d0043fe6:	eef0 6a65 	vmov.f32	s13, s11
d0043fea:	e00a      	b.n	d0044002 <clipTriangleToFrustum+0x42a>
d0043fec:	b380      	cbz	r0, d0044050 <clipTriangleToFrustum+0x478>
d0043fee:	3701      	adds	r7, #1
d0043ff0:	ed82 6a00 	vstr	s12, [r2]
d0043ff4:	edc2 7a01 	vstr	s15, [r2, #4]
d0043ff8:	ed82 7a02 	vstr	s14, [r2, #8]
d0043ffc:	360c      	adds	r6, #12
d0043ffe:	429e      	cmp	r6, r3
d0044000:	d04e      	beq.n	d00440a0 <clipTriangleToFrustum+0x4c8>
d0044002:	eef0 4a67 	vmov.f32	s9, s15
d0044006:	edd6 7a01 	vldr	s15, [r6, #4]
d004400a:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d004400e:	a922      	add	r1, sp, #136	; 0x88
d0044010:	eef0 5a66 	vmov.f32	s11, s13
d0044014:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d0044018:	eef0 6a67 	vmov.f32	s13, s15
d004401c:	eeb0 5a47 	vmov.f32	s10, s14
d0044020:	ed96 7a02 	vldr	s14, [r6, #8]
d0044024:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044028:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d004402c:	eee7 6a23 	vfma.f32	s13, s14, s7
d0044030:	eeb0 4a46 	vmov.f32	s8, s12
d0044034:	ed96 6a00 	vldr	s12, [r6]
d0044038:	bfac      	ite	ge
d004403a:	2101      	movge	r1, #1
d004403c:	2100      	movlt	r1, #0
d004403e:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0044042:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044046:	bfac      	ite	ge
d0044048:	2001      	movge	r0, #1
d004404a:	2000      	movlt	r0, #0
d004404c:	2900      	cmp	r1, #0
d004404e:	d1cd      	bne.n	d0043fec <clipTriangleToFrustum+0x414>
d0044050:	eef5 6a40 	vcmp.f32	s13, #0.0
d0044054:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d0044058:	ac22      	add	r4, sp, #136	; 0x88
d004405a:	ee35 1ae6 	vsub.f32	s2, s11, s13
d004405e:	ee76 1a44 	vsub.f32	s3, s12, s8
d0044062:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044066:	eb04 0282 	add.w	r2, r4, r2, lsl #2
d004406a:	ee37 2ae4 	vsub.f32	s4, s15, s9
d004406e:	ee77 2a45 	vsub.f32	s5, s14, s10
d0044072:	f140 81de 	bpl.w	d0044432 <clipTriangleToFrustum+0x85a>
d0044076:	2900      	cmp	r1, #0
d0044078:	f000 81db 	beq.w	d0044432 <clipTriangleToFrustum+0x85a>
d004407c:	ee85 3a81 	vdiv.f32	s6, s11, s2
d0044080:	360c      	adds	r6, #12
d0044082:	3701      	adds	r7, #1
d0044084:	429e      	cmp	r6, r3
d0044086:	eea1 4a83 	vfma.f32	s8, s3, s6
d004408a:	eee2 4a03 	vfma.f32	s9, s4, s6
d004408e:	eea2 5a83 	vfma.f32	s10, s5, s6
d0044092:	ed82 4a00 	vstr	s8, [r2]
d0044096:	edc2 4a01 	vstr	s9, [r2, #4]
d004409a:	ed82 5a02 	vstr	s10, [r2, #8]
d004409e:	d1b0      	bne.n	d0044002 <clipTriangleToFrustum+0x42a>
d00440a0:	2f02      	cmp	r7, #2
d00440a2:	dd3b      	ble.n	d004411c <clipTriangleToFrustum+0x544>
d00440a4:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d00440a8:	a922      	add	r1, sp, #136	; 0x88
d00440aa:	4628      	mov	r0, r5
d00440ac:	0092      	lsls	r2, r2, #2
d00440ae:	f001 ff7f 	bl	d0045fb0 <memcpy>
d00440b2:	4638      	mov	r0, r7
d00440b4:	b03a      	add	sp, #232	; 0xe8
d00440b6:	ecbd 8b02 	vpop	{d8}
d00440ba:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00440be:	eef5 5a40 	vcmp.f32	s11, #0.0
d00440c2:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d00440c6:	ee75 1ae6 	vsub.f32	s3, s11, s13
d00440ca:	eb04 0782 	add.w	r7, r4, r2, lsl #2
d00440ce:	ee37 2a44 	vsub.f32	s4, s14, s8
d00440d2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00440d6:	463a      	mov	r2, r7
d00440d8:	ee76 2a64 	vsub.f32	s5, s12, s9
d00440dc:	ee37 3ac5 	vsub.f32	s6, s15, s10
d00440e0:	f107 070c 	add.w	r7, r7, #12
d00440e4:	f57f ae1f 	bpl.w	d0043d26 <clipTriangleToFrustum+0x14e>
d00440e8:	f1bc 0f00 	cmp.w	ip, #0
d00440ec:	f43f ae1b 	beq.w	d0043d26 <clipTriangleToFrustum+0x14e>
d00440f0:	eec5 3aa1 	vdiv.f32	s7, s11, s3
d00440f4:	3302      	adds	r3, #2
d00440f6:	eea2 4a23 	vfma.f32	s8, s4, s7
d00440fa:	eee2 4aa3 	vfma.f32	s9, s5, s7
d00440fe:	eea3 5a23 	vfma.f32	s10, s6, s7
d0044102:	ed82 4a00 	vstr	s8, [r2]
d0044106:	edc2 4a01 	vstr	s9, [r2, #4]
d004410a:	ed82 5a02 	vstr	s10, [r2, #8]
d004410e:	ed87 7a00 	vstr	s14, [r7]
d0044112:	ed87 6a01 	vstr	s12, [r7, #4]
d0044116:	edc7 7a02 	vstr	s15, [r7, #8]
d004411a:	e604      	b.n	d0043d26 <clipTriangleToFrustum+0x14e>
d004411c:	2700      	movs	r7, #0
d004411e:	4638      	mov	r0, r7
d0044120:	b03a      	add	sp, #232	; 0xe8
d0044122:	ecbd 8b02 	vpop	{d8}
d0044126:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d004412a:	eef5 4a40 	vcmp.f32	s9, #0.0
d004412e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044132:	f140 80b7 	bpl.w	d00442a4 <clipTriangleToFrustum+0x6cc>
d0044136:	2900      	cmp	r1, #0
d0044138:	f000 80b4 	beq.w	d00442a4 <clipTriangleToFrustum+0x6cc>
d004413c:	ee74 0a67 	vsub.f32	s1, s8, s15
d0044140:	eddd 3a0f 	vldr	s7, [sp, #60]	; 0x3c
d0044144:	ee36 8a65 	vsub.f32	s16, s12, s11
d0044148:	2301      	movs	r3, #1
d004414a:	eef0 8a65 	vmov.f32	s17, s11
d004414e:	ed9d 2a0d 	vldr	s4, [sp, #52]	; 0x34
d0044152:	ee85 1a20 	vdiv.f32	s2, s10, s1
d0044156:	eddd 2a0e 	vldr	s5, [sp, #56]	; 0x38
d004415a:	ee36 0ae1 	vsub.f32	s0, s13, s3
d004415e:	ee33 3ac7 	vsub.f32	s6, s7, s14
d0044162:	ee77 0ac4 	vsub.f32	s1, s15, s8
d0044166:	eeb5 3ac0 	vcmpe.f32	s6, #0.0
d004416a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004416e:	bfac      	ite	ge
d0044170:	461e      	movge	r6, r3
d0044172:	2600      	movlt	r6, #0
d0044174:	eee1 8a08 	vfma.f32	s17, s2, s16
d0044178:	eeb0 8a68 	vmov.f32	s16, s17
d004417c:	eef0 8a61 	vmov.f32	s17, s3
d0044180:	ed8d 8a22 	vstr	s16, [sp, #136]	; 0x88
d0044184:	eee1 8a00 	vfma.f32	s17, s2, s0
d0044188:	eeb0 0a68 	vmov.f32	s0, s17
d004418c:	eef0 8a44 	vmov.f32	s17, s8
d0044190:	ed8d 0a23 	vstr	s0, [sp, #140]	; 0x8c
d0044194:	eee0 8a81 	vfma.f32	s17, s1, s2
d0044198:	edcd 8a24 	vstr	s17, [sp, #144]	; 0x90
d004419c:	eeb5 3a40 	vcmp.f32	s6, #0.0
d00441a0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00441a4:	f140 80af 	bpl.w	d0044306 <clipTriangleToFrustum+0x72e>
d00441a8:	2800      	cmp	r0, #0
d00441aa:	f000 80ac 	beq.w	d0044306 <clipTriangleToFrustum+0x72e>
d00441ae:	ee37 8ae3 	vsub.f32	s16, s15, s7
d00441b2:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d00441b6:	ee32 0a46 	vsub.f32	s0, s4, s12
d00441ba:	4632      	mov	r2, r6
d00441bc:	ee72 0ae6 	vsub.f32	s1, s5, s13
d00441c0:	ae22      	add	r6, sp, #136	; 0x88
d00441c2:	ee84 1a88 	vdiv.f32	s2, s9, s16
d00441c6:	3301      	adds	r3, #1
d00441c8:	eb06 0080 	add.w	r0, r6, r0, lsl #2
d00441cc:	ee73 4ae7 	vsub.f32	s9, s7, s15
d00441d0:	eea0 6a01 	vfma.f32	s12, s0, s2
d00441d4:	eee0 6a81 	vfma.f32	s13, s1, s2
d00441d8:	eee4 7a81 	vfma.f32	s15, s9, s2
d00441dc:	ed80 6a00 	vstr	s12, [r0]
d00441e0:	edc0 6a01 	vstr	s13, [r0, #4]
d00441e4:	edc0 7a02 	vstr	s15, [r0, #8]
d00441e8:	eeb5 5a40 	vcmp.f32	s10, #0.0
d00441ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00441f0:	d528      	bpl.n	d0044244 <clipTriangleToFrustum+0x66c>
d00441f2:	b33a      	cbz	r2, d0044244 <clipTriangleToFrustum+0x66c>
d00441f4:	ee37 5a44 	vsub.f32	s10, s14, s8
d00441f8:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d00441fc:	ee75 5ac2 	vsub.f32	s11, s11, s4
d0044200:	a922      	add	r1, sp, #136	; 0x88
d0044202:	ee71 1ae2 	vsub.f32	s3, s3, s5
d0044206:	3301      	adds	r3, #1
d0044208:	ee35 5a03 	vadd.f32	s10, s10, s6
d004420c:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d0044210:	ee34 4a63 	vsub.f32	s8, s8, s7
d0044214:	eef0 6a42 	vmov.f32	s13, s4
d0044218:	ee83 6a05 	vdiv.f32	s12, s6, s10
d004421c:	eeb0 7a62 	vmov.f32	s14, s5
d0044220:	eef0 7a63 	vmov.f32	s15, s7
d0044224:	eee5 6a86 	vfma.f32	s13, s11, s12
d0044228:	eea1 7a86 	vfma.f32	s14, s3, s12
d004422c:	eee4 7a06 	vfma.f32	s15, s8, s12
d0044230:	edc2 6a00 	vstr	s13, [r2]
d0044234:	ed82 7a01 	vstr	s14, [r2, #4]
d0044238:	edc2 7a02 	vstr	s15, [r2, #8]
d004423c:	e555      	b.n	d0043cea <clipTriangleToFrustum+0x112>
d004423e:	bf00      	nop
d0044240:	3f2aaaab 	.word	0x3f2aaaab
d0044244:	eeb5 3a40 	vcmp.f32	s6, #0.0
d0044248:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004424c:	f57f ad4d 	bpl.w	d0043cea <clipTriangleToFrustum+0x112>
d0044250:	2900      	cmp	r1, #0
d0044252:	f43f ad4a 	beq.w	d0043cea <clipTriangleToFrustum+0x112>
d0044256:	ee77 7a44 	vsub.f32	s15, s14, s8
d004425a:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d004425e:	ee75 6ac2 	vsub.f32	s13, s11, s4
d0044262:	a922      	add	r1, sp, #136	; 0x88
d0044264:	ee31 7ae2 	vsub.f32	s14, s3, s5
d0044268:	3302      	adds	r3, #2
d004426a:	ee77 7a83 	vadd.f32	s15, s15, s6
d004426e:	eb01 0182 	add.w	r1, r1, r2, lsl #2
d0044272:	ee34 5a63 	vsub.f32	s10, s8, s7
d0044276:	edc1 5a03 	vstr	s11, [r1, #12]
d004427a:	ee83 6a27 	vdiv.f32	s12, s6, s15
d004427e:	edc1 1a04 	vstr	s3, [r1, #16]
d0044282:	ed81 4a05 	vstr	s8, [r1, #20]
d0044286:	eef0 7a63 	vmov.f32	s15, s7
d004428a:	eea6 2a86 	vfma.f32	s4, s13, s12
d004428e:	eee7 2a06 	vfma.f32	s5, s14, s12
d0044292:	eee5 7a06 	vfma.f32	s15, s10, s12
d0044296:	ed81 2a00 	vstr	s4, [r1]
d004429a:	edc1 2a01 	vstr	s5, [r1, #4]
d004429e:	edc1 7a02 	vstr	s15, [r1, #8]
d00442a2:	e522      	b.n	d0043cea <clipTriangleToFrustum+0x112>
d00442a4:	eeb5 5a40 	vcmp.f32	s10, #0.0
d00442a8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00442ac:	f140 80bf 	bpl.w	d004442e <clipTriangleToFrustum+0x856>
d00442b0:	2800      	cmp	r0, #0
d00442b2:	f000 80bc 	beq.w	d004442e <clipTriangleToFrustum+0x856>
d00442b6:	ee74 3a67 	vsub.f32	s7, s8, s15
d00442ba:	2302      	movs	r3, #2
d00442bc:	ee36 2a65 	vsub.f32	s4, s12, s11
d00442c0:	ed8d 6a25 	vstr	s12, [sp, #148]	; 0x94
d00442c4:	eeb0 1a65 	vmov.f32	s2, s11
d00442c8:	edcd 6a26 	vstr	s13, [sp, #152]	; 0x98
d00442cc:	ee85 3a23 	vdiv.f32	s6, s10, s7
d00442d0:	edcd 7a27 	vstr	s15, [sp, #156]	; 0x9c
d00442d4:	ee76 2ae1 	vsub.f32	s5, s13, s3
d00442d8:	ee77 3ac4 	vsub.f32	s7, s15, s8
d00442dc:	eea3 1a02 	vfma.f32	s2, s6, s4
d00442e0:	eeb0 2a41 	vmov.f32	s4, s2
d00442e4:	eeb0 1a61 	vmov.f32	s2, s3
d00442e8:	ed8d 2a22 	vstr	s4, [sp, #136]	; 0x88
d00442ec:	eea3 1a22 	vfma.f32	s2, s6, s5
d00442f0:	eef0 2a41 	vmov.f32	s5, s2
d00442f4:	eeb0 1a44 	vmov.f32	s2, s8
d00442f8:	edcd 2a23 	vstr	s5, [sp, #140]	; 0x8c
d00442fc:	eea3 1a23 	vfma.f32	s2, s6, s7
d0044300:	ed8d 1a24 	vstr	s2, [sp, #144]	; 0x90
d0044304:	e4be      	b.n	d0043c84 <clipTriangleToFrustum+0xac>
d0044306:	eef5 4ac0 	vcmpe.f32	s9, #0.0
d004430a:	f006 0201 	and.w	r2, r6, #1
d004430e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044312:	bf58      	it	pl
d0044314:	2200      	movpl	r2, #0
d0044316:	2a00      	cmp	r2, #0
d0044318:	f000 8087 	beq.w	d004442a <clipTriangleToFrustum+0x852>
d004431c:	ee37 8ae3 	vsub.f32	s16, s15, s7
d0044320:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0044324:	ee32 0a46 	vsub.f32	s0, s4, s12
d0044328:	ae22      	add	r6, sp, #136	; 0x88
d004432a:	ee72 0ae6 	vsub.f32	s1, s5, s13
d004432e:	3302      	adds	r3, #2
d0044330:	ee84 1a88 	vdiv.f32	s2, s9, s16
d0044334:	eb06 0680 	add.w	r6, r6, r0, lsl #2
d0044338:	ed86 2a03 	vstr	s4, [r6, #12]
d004433c:	edc6 2a04 	vstr	s5, [r6, #16]
d0044340:	edc6 3a05 	vstr	s7, [r6, #20]
d0044344:	ee73 4ae7 	vsub.f32	s9, s7, s15
d0044348:	eea0 6a01 	vfma.f32	s12, s0, s2
d004434c:	eee0 6a81 	vfma.f32	s13, s1, s2
d0044350:	eee4 7a81 	vfma.f32	s15, s9, s2
d0044354:	ed86 6a00 	vstr	s12, [r6]
d0044358:	edc6 6a01 	vstr	s13, [r6, #4]
d004435c:	edc6 7a02 	vstr	s15, [r6, #8]
d0044360:	e4b1      	b.n	d0043cc6 <clipTriangleToFrustum+0xee>
d0044362:	eef5 5a40 	vcmp.f32	s11, #0.0
d0044366:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d004436a:	f10d 0c88 	add.w	ip, sp, #136	; 0x88
d004436e:	ee77 3aa5 	vadd.f32	s7, s15, s11
d0044372:	ee77 1ac4 	vsub.f32	s3, s15, s8
d0044376:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004437a:	eb0c 0c81 	add.w	ip, ip, r1, lsl #2
d004437e:	ee36 2a64 	vsub.f32	s4, s12, s9
d0044382:	4661      	mov	r1, ip
d0044384:	ee73 3ac7 	vsub.f32	s7, s7, s14
d0044388:	ee77 2a45 	vsub.f32	s5, s14, s10
d004438c:	f10c 0c0c 	add.w	ip, ip, #12
d0044390:	f57f ad38 	bpl.w	d0043e04 <clipTriangleToFrustum+0x22c>
d0044394:	f1be 0f00 	cmp.w	lr, #0
d0044398:	f43f ad34 	beq.w	d0043e04 <clipTriangleToFrustum+0x22c>
d004439c:	ee85 3aa3 	vdiv.f32	s6, s11, s7
d00443a0:	3202      	adds	r2, #2
d00443a2:	eea1 4a83 	vfma.f32	s8, s3, s6
d00443a6:	eee2 4a03 	vfma.f32	s9, s4, s6
d00443aa:	eea2 5a83 	vfma.f32	s10, s5, s6
d00443ae:	ed81 4a00 	vstr	s8, [r1]
d00443b2:	edc1 4a01 	vstr	s9, [r1, #4]
d00443b6:	ed81 5a02 	vstr	s10, [r1, #8]
d00443ba:	edcc 7a00 	vstr	s15, [ip]
d00443be:	ed8c 6a01 	vstr	s12, [ip, #4]
d00443c2:	ed8c 7a02 	vstr	s14, [ip, #8]
d00443c6:	e51d      	b.n	d0043e04 <clipTriangleToFrustum+0x22c>
d00443c8:	eef5 5a40 	vcmp.f32	s11, #0.0
d00443cc:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d00443d0:	ee37 3aa5 	vadd.f32	s6, s15, s11
d00443d4:	eb04 0781 	add.w	r7, r4, r1, lsl #2
d00443d8:	ee36 1a44 	vsub.f32	s2, s12, s8
d00443dc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00443e0:	4639      	mov	r1, r7
d00443e2:	ee77 1ae4 	vsub.f32	s3, s15, s9
d00443e6:	ee73 3a63 	vsub.f32	s7, s6, s7
d00443ea:	f107 070c 	add.w	r7, r7, #12
d00443ee:	ee37 2a45 	vsub.f32	s4, s14, s10
d00443f2:	f57f ad8b 	bpl.w	d0043f0c <clipTriangleToFrustum+0x334>
d00443f6:	f1bc 0f00 	cmp.w	ip, #0
d00443fa:	f43f ad87 	beq.w	d0043f0c <clipTriangleToFrustum+0x334>
d00443fe:	ee85 3aa3 	vdiv.f32	s6, s11, s7
d0044402:	3202      	adds	r2, #2
d0044404:	eea1 4a03 	vfma.f32	s8, s2, s6
d0044408:	eee1 4a83 	vfma.f32	s9, s3, s6
d004440c:	eea2 5a03 	vfma.f32	s10, s4, s6
d0044410:	ed81 4a00 	vstr	s8, [r1]
d0044414:	edc1 4a01 	vstr	s9, [r1, #4]
d0044418:	ed81 5a02 	vstr	s10, [r1, #8]
d004441c:	ed87 6a00 	vstr	s12, [r7]
d0044420:	edc7 7a01 	vstr	s15, [r7, #4]
d0044424:	ed87 7a02 	vstr	s14, [r7, #8]
d0044428:	e570      	b.n	d0043f0c <clipTriangleToFrustum+0x334>
d004442a:	4632      	mov	r2, r6
d004442c:	e44b      	b.n	d0043cc6 <clipTriangleToFrustum+0xee>
d004442e:	2300      	movs	r3, #0
d0044430:	e428      	b.n	d0043c84 <clipTriangleToFrustum+0xac>
d0044432:	eef5 5a40 	vcmp.f32	s11, #0.0
d0044436:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d004443a:	a922      	add	r1, sp, #136	; 0x88
d004443c:	ee35 1ae6 	vsub.f32	s2, s11, s13
d0044440:	ee76 1a44 	vsub.f32	s3, s12, s8
d0044444:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044448:	eb01 0182 	add.w	r1, r1, r2, lsl #2
d004444c:	ee37 2ae4 	vsub.f32	s4, s15, s9
d0044450:	460a      	mov	r2, r1
d0044452:	ee77 2a45 	vsub.f32	s5, s14, s10
d0044456:	f101 010c 	add.w	r1, r1, #12
d004445a:	f57f adcf 	bpl.w	d0043ffc <clipTriangleToFrustum+0x424>
d004445e:	2800      	cmp	r0, #0
d0044460:	f43f adcc 	beq.w	d0043ffc <clipTriangleToFrustum+0x424>
d0044464:	ee85 3a81 	vdiv.f32	s6, s11, s2
d0044468:	3702      	adds	r7, #2
d004446a:	eea1 4a83 	vfma.f32	s8, s3, s6
d004446e:	eee2 4a03 	vfma.f32	s9, s4, s6
d0044472:	eea2 5a83 	vfma.f32	s10, s5, s6
d0044476:	ed82 4a00 	vstr	s8, [r2]
d004447a:	edc2 4a01 	vstr	s9, [r2, #4]
d004447e:	ed82 5a02 	vstr	s10, [r2, #8]
d0044482:	ed81 6a00 	vstr	s12, [r1]
d0044486:	edc1 7a01 	vstr	s15, [r1, #4]
d004448a:	ed81 7a02 	vstr	s14, [r1, #8]
d004448e:	e5b5      	b.n	d0043ffc <clipTriangleToFrustum+0x424>

d0044490 <submitClippedTri>:
d0044490:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d0044494:	eef4 7ac1 	vcmpe.f32	s15, s2
d0044498:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004449c:	eef4 2ae7 	vcmpe.f32	s5, s15
d00444a0:	bfac      	ite	ge
d00444a2:	2301      	movge	r3, #1
d00444a4:	2300      	movlt	r3, #0
d00444a6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00444aa:	bf98      	it	ls
d00444ac:	f043 0301 	orrls.w	r3, r3, #1
d00444b0:	b923      	cbnz	r3, d00444bc <submitClippedTri+0x2c>
d00444b2:	eef4 7ac4 	vcmpe.f32	s15, s8
d00444b6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00444ba:	db00      	blt.n	d00444be <submitClippedTri+0x2e>
d00444bc:	4770      	bx	lr
d00444be:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d00444c2:	ed9f 6a69 	vldr	s12, [pc, #420]	; d0044668 <submitClippedTri+0x1d8>
d00444c6:	eddf 7a69 	vldr	s15, [pc, #420]	; d004466c <submitClippedTri+0x1dc>
d00444ca:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d00444ce:	ee60 0a86 	vmul.f32	s1, s1, s12
d00444d2:	ed9f 5a67 	vldr	s10, [pc, #412]	; d0044670 <submitClippedTri+0x1e0>
d00444d6:	eec6 5aa2 	vdiv.f32	s11, s13, s5
d00444da:	ee63 3a86 	vmul.f32	s7, s7, s12
d00444de:	ee22 2a06 	vmul.f32	s4, s4, s12
d00444e2:	eeb0 6a67 	vmov.f32	s12, s15
d00444e6:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00444ea:	ed2d 8b04 	vpush	{d8-d9}
d00444ee:	eec6 8a81 	vdiv.f32	s17, s13, s2
d00444f2:	b08b      	sub	sp, #44	; 0x2c
d00444f4:	eeb0 9a66 	vmov.f32	s18, s13
d00444f8:	ee86 8a84 	vdiv.f32	s16, s13, s8
d00444fc:	eea5 6a82 	vfma.f32	s12, s11, s4
d0044500:	eea0 9a28 	vfma.f32	s18, s0, s17
d0044504:	eeb0 0a67 	vmov.f32	s0, s15
d0044508:	eebd 6ac6 	vcvt.s32.f32	s12, s12
d004450c:	eea8 0aa0 	vfma.f32	s0, s17, s1
d0044510:	eef0 0a66 	vmov.f32	s1, s13
d0044514:	ee16 3a10 	vmov	r3, s12
d0044518:	eee8 7a23 	vfma.f32	s15, s16, s7
d004451c:	eee1 0aa5 	vfma.f32	s1, s3, s11
d0044520:	eef0 1a47 	vmov.f32	s3, s14
d0044524:	eefd 5ac0 	vcvt.s32.f32	s11, s0
d0044528:	eee9 1a05 	vfma.f32	s3, s18, s10
d004452c:	ee15 6a90 	vmov	r6, s11
d0044530:	eef0 5a66 	vmov.f32	s11, s13
d0044534:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0044538:	1b9d      	subs	r5, r3, r6
d004453a:	eee3 5a08 	vfma.f32	s11, s6, s16
d004453e:	ee17 3a90 	vmov	r3, s15
d0044542:	eefd 3ae1 	vcvt.s32.f32	s7, s3
d0044546:	eba3 0c06 	sub.w	ip, r3, r6
d004454a:	ee13 7a90 	vmov	r7, s7
d004454e:	eeb0 3a65 	vmov.f32	s6, s11
d0044552:	eef0 5a47 	vmov.f32	s11, s14
d0044556:	eea3 7a05 	vfma.f32	s14, s6, s10
d004455a:	eee0 5a85 	vfma.f32	s11, s1, s10
d004455e:	eefd 7ac7 	vcvt.s32.f32	s15, s14
d0044562:	eefd 5ae5 	vcvt.s32.f32	s11, s11
d0044566:	ee15 4a90 	vmov	r4, s11
d004456a:	eba4 0e07 	sub.w	lr, r4, r7
d004456e:	ee17 4a90 	vmov	r4, s15
d0044572:	fb0c fc0e 	mul.w	ip, ip, lr
d0044576:	eba4 0e07 	sub.w	lr, r4, r7
d004457a:	fb0e c515 	mls	r5, lr, r5, ip
d004457e:	2d00      	cmp	r5, #0
d0044580:	dd6d      	ble.n	d004465e <submitClippedTri+0x1ce>
d0044582:	f8df e0f8 	ldr.w	lr, [pc, #248]	; d004467c <submitClippedTri+0x1ec>
d0044586:	f8de 5000 	ldr.w	r5, [lr]
d004458a:	f5b5 5f00 	cmp.w	r5, #8192	; 0x2000
d004458e:	da66      	bge.n	d004465e <submitClippedTri+0x1ce>
d0044590:	f8df c0ec 	ldr.w	ip, [pc, #236]	; d0044680 <submitClippedTri+0x1f0>
d0044594:	ea4f 1885 	mov.w	r8, r5, lsl #6
d0044598:	f105 0b01 	add.w	fp, r5, #1
d004459c:	ed9f 5a35 	vldr	s10, [pc, #212]	; d0044674 <submitClippedTri+0x1e4>
d00445a0:	f848 700c 	str.w	r7, [r8, ip]
d00445a4:	eb0c 1585 	add.w	r5, ip, r5, lsl #6
d00445a8:	f108 0a08 	add.w	sl, r8, #8
d00445ac:	f108 0910 	add.w	r9, r8, #16
d00445b0:	ee15 7a90 	vmov	r7, s11
d00445b4:	606e      	str	r6, [r5, #4]
d00445b6:	eb0a 060c 	add.w	r6, sl, ip
d00445ba:	f8ce b000 	str.w	fp, [lr]
d00445be:	f84a 700c 	str.w	r7, [sl, ip]
d00445c2:	eb09 070c 	add.w	r7, r9, ip
d00445c6:	ed86 6a01 	vstr	s12, [r6, #4]
d00445ca:	f849 400c 	str.w	r4, [r9, ip]
d00445ce:	607b      	str	r3, [r7, #4]
d00445d0:	f885 1034 	strb.w	r1, [r5, #52]	; 0x34
d00445d4:	f885 2035 	strb.w	r2, [r5, #53]	; 0x35
d00445d8:	edc5 4a07 	vstr	s9, [r5, #28]
d00445dc:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d00445e0:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d00445e4:	ee31 7a47 	vsub.f32	s14, s2, s14
d00445e8:	ed9f 6a23 	vldr	s12, [pc, #140]	; d0044678 <submitClippedTri+0x1e8>
d00445ec:	ee27 7a27 	vmul.f32	s14, s14, s15
d00445f0:	fe87 7a05 	vmaxnm.f32	s14, s14, s10
d00445f4:	fe87 7a66 	vminnm.f32	s14, s14, s13
d00445f8:	ee27 7a06 	vmul.f32	s14, s14, s12
d00445fc:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0044600:	ee17 3a10 	vmov	r3, s14
d0044604:	842b      	strh	r3, [r5, #32]
d0044606:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d004460a:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d004460e:	ee32 7ac7 	vsub.f32	s14, s5, s14
d0044612:	ee27 7a27 	vmul.f32	s14, s14, s15
d0044616:	fe87 7a05 	vmaxnm.f32	s14, s14, s10
d004461a:	fe87 7a66 	vminnm.f32	s14, s14, s13
d004461e:	ee27 7a06 	vmul.f32	s14, s14, s12
d0044622:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0044626:	ee17 3a10 	vmov	r3, s14
d004462a:	846b      	strh	r3, [r5, #34]	; 0x22
d004462c:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d0044630:	ed90 7a0f 	vldr	s14, [r0, #60]	; 0x3c
d0044634:	ee74 7a67 	vsub.f32	s15, s8, s15
d0044638:	ed85 1a0a 	vstr	s2, [r5, #40]	; 0x28
d004463c:	edc5 2a0b 	vstr	s5, [r5, #44]	; 0x2c
d0044640:	ed85 4a0c 	vstr	s8, [r5, #48]	; 0x30
d0044644:	ee67 7a87 	vmul.f32	s15, s15, s14
d0044648:	fec7 7a85 	vmaxnm.f32	s15, s15, s10
d004464c:	fec7 6ae6 	vminnm.f32	s13, s15, s13
d0044650:	ee66 6a86 	vmul.f32	s13, s13, s12
d0044654:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d0044658:	ee16 3a90 	vmov	r3, s13
d004465c:	84ab      	strh	r3, [r5, #36]	; 0x24
d004465e:	b00b      	add	sp, #44	; 0x2c
d0044660:	ecbd 8b04 	vpop	{d8-d9}
d0044664:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0044668:	c3700000 	.word	0xc3700000
d004466c:	43208000 	.word	0x43208000
d0044670:	43700000 	.word	0x43700000
d0044674:	00000000 	.word	0x00000000
d0044678:	477fff00 	.word	0x477fff00
d004467c:	d00558a4 	.word	0xd00558a4
d0044680:	d00558c0 	.word	0xd00558c0

d0044684 <drawFakeHorizonDots>:
d0044684:	2800      	cmp	r0, #0
d0044686:	f000 80f2 	beq.w	d004486e <drawFakeHorizonDots+0x1ea>
d004468a:	2a02      	cmp	r2, #2
d004468c:	edd0 7a02 	vldr	s15, [r0, #8]
d0044690:	ed90 6a01 	vldr	s12, [r0, #4]
d0044694:	bfb8      	it	lt
d0044696:	2202      	movlt	r2, #2
d0044698:	eddf 5a75 	vldr	s11, [pc, #468]	; d0044870 <drawFakeHorizonDots+0x1ec>
d004469c:	edd0 6a0d 	vldr	s13, [r0, #52]	; 0x34
d00446a0:	ee07 2a10 	vmov	s14, r2
d00446a4:	edd0 4a10 	vldr	s9, [r0, #64]	; 0x40
d00446a8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00446ac:	ed2d 8b10 	vpush	{d8-d15}
d00446b0:	eef8 9ac7 	vcvt.f32.s32	s19, s14
d00446b4:	ed90 aa00 	vldr	s20, [r0]
d00446b8:	b085      	sub	sp, #20
d00446ba:	4617      	mov	r7, r2
d00446bc:	468b      	mov	fp, r1
d00446be:	496d      	ldr	r1, [pc, #436]	; (d0044874 <drawFakeHorizonDots+0x1f0>)
d00446c0:	ee8a 7a29 	vdiv.f32	s14, s20, s19
d00446c4:	edcd 7a01 	vstr	s15, [sp, #4]
d00446c8:	4e6b      	ldr	r6, [pc, #428]	; (d0044878 <drawFakeHorizonDots+0x1f4>)
d00446ca:	4698      	mov	r8, r3
d00446cc:	ed90 ca07 	vldr	s24, [r0, #28]
d00446d0:	edd0 ba0a 	vldr	s23, [r0, #40]	; 0x28
d00446d4:	4c69      	ldr	r4, [pc, #420]	; (d004487c <drawFakeHorizonDots+0x1f8>)
d00446d6:	eec7 7aa9 	vdiv.f32	s15, s15, s19
d00446da:	edd0 fa06 	vldr	s31, [r0, #24]
d00446de:	ed90 fa08 	vldr	s30, [r0, #32]
d00446e2:	edd0 ea09 	vldr	s29, [r0, #36]	; 0x24
d00446e6:	ed90 ea0b 	vldr	s28, [r0, #44]	; 0x2c
d00446ea:	edd0 da0c 	vldr	s27, [r0, #48]	; 0x30
d00446ee:	ee30 ba46 	vsub.f32	s22, s0, s12
d00446f2:	ed90 da0e 	vldr	s26, [r0, #56]	; 0x38
d00446f6:	ee69 9aa5 	vmul.f32	s19, s19, s11
d00446fa:	ed9f 8a61 	vldr	s16, [pc, #388]	; d0044880 <drawFakeHorizonDots+0x1fc>
d00446fe:	4b61      	ldr	r3, [pc, #388]	; (d0044884 <drawFakeHorizonDots+0x200>)
d0044700:	ee2b ca0c 	vmul.f32	s24, s22, s24
d0044704:	eddf ca60 	vldr	s25, [pc, #384]	; d0044888 <drawFakeHorizonDots+0x204>
d0044708:	ee6b ba2b 	vmul.f32	s23, s22, s23
d004470c:	eddf 8a5f 	vldr	s17, [pc, #380]	; d004488c <drawFakeHorizonDots+0x208>
d0044710:	ee29 8a88 	vmul.f32	s16, s19, s16
d0044714:	f8df 9184 	ldr.w	r9, [pc, #388]	; d004489c <drawFakeHorizonDots+0x218>
d0044718:	febb 7a47 	vrintm.f32	s14, s14
d004471c:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0044720:	ee2b ba26 	vmul.f32	s22, s22, s13
d0044724:	ee17 2a10 	vmov	r2, s14
d0044728:	fefb 7a67 	vrintm.f32	s15, s15
d004472c:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0044730:	fb01 f002 	mul.w	r0, r1, r2
d0044734:	f1a2 0112 	sub.w	r1, r2, #18
d0044738:	ee17 2a90 	vmov	r2, s15
d004473c:	4404      	add	r4, r0
d004473e:	fb07 f101 	mul.w	r1, r7, r1
d0044742:	f1a2 0a12 	sub.w	sl, r2, #18
d0044746:	fb06 0202 	mla	r2, r6, r2, r0
d004474a:	9103      	str	r1, [sp, #12]
d004474c:	fb06 460a 	mla	r6, r6, sl, r4
d0044750:	18d3      	adds	r3, r2, r3
d0044752:	fb0a fa07 	mul.w	sl, sl, r7
d0044756:	9302      	str	r3, [sp, #8]
d0044758:	eddd 7a01 	vldr	s15, [sp, #4]
d004475c:	4c4c      	ldr	r4, [pc, #304]	; (d0044890 <drawFakeHorizonDots+0x20c>)
d004475e:	ee37 9aa9 	vadd.f32	s18, s15, s19
d0044762:	ee07 aa90 	vmov	s15, sl
d0044766:	1934      	adds	r4, r6, r4
d0044768:	9d03      	ldr	r5, [sp, #12]
d004476a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004476e:	eddf aa49 	vldr	s21, [pc, #292]	; d0044894 <drawFakeHorizonDots+0x210>
d0044772:	ee37 9ac9 	vsub.f32	s18, s15, s18
d0044776:	ea84 3354 	eor.w	r3, r4, r4, lsr #13
d004477a:	ee07 5a90 	vmov	s15, r5
d004477e:	f104 54b2 	add.w	r4, r4, #373293056	; 0x16400000
d0044782:	eef0 3a49 	vmov.f32	s7, s18
d0044786:	fb09 f303 	mul.w	r3, r9, r3
d004478a:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d004478e:	ee7a 7a29 	vadd.f32	s15, s20, s19
d0044792:	f504 14b3 	add.w	r4, r4, #1466368	; 0x166000
d0044796:	ea83 4313 	eor.w	r3, r3, r3, lsr #16
d004479a:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d004479e:	eddf 5a3e 	vldr	s11, [pc, #248]	; d0044898 <drawFakeHorizonDots+0x214>
d00447a2:	443d      	add	r5, r7
d00447a4:	f3c3 4207 	ubfx	r2, r3, #16, #8
d00447a8:	ee77 7a67 	vsub.f32	s15, s14, s15
d00447ac:	f204 74b1 	addw	r4, r4, #1969	; 0x7b1
d00447b0:	ee07 2a10 	vmov	s14, r2
d00447b4:	f3c3 2207 	ubfx	r2, r3, #8, #8
d00447b8:	b2db      	uxtb	r3, r3
d00447ba:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00447be:	ee06 2a90 	vmov	s13, r2
d00447c2:	4543      	cmp	r3, r8
d00447c4:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d00447c8:	eee7 3a08 	vfma.f32	s7, s14, s16
d00447cc:	d83d      	bhi.n	d004484a <drawFakeHorizonDots+0x1c6>
d00447ce:	eee6 7a88 	vfma.f32	s15, s13, s16
d00447d2:	ee2d 6a23 	vmul.f32	s12, s26, s7
d00447d6:	ee2e 7aa7 	vmul.f32	s14, s29, s15
d00447da:	eead 6aa7 	vfma.f32	s12, s27, s15
d00447de:	ee6f 6aa7 	vmul.f32	s13, s31, s15
d00447e2:	eef0 7a47 	vmov.f32	s15, s14
d00447e6:	eeef 6a23 	vfma.f32	s13, s30, s7
d00447ea:	eeee 7a23 	vfma.f32	s15, s28, s7
d00447ee:	ee3b 6a06 	vadd.f32	s12, s22, s12
d00447f2:	eef4 4ac6 	vcmpe.f32	s9, s12
d00447f6:	ee3c 7a26 	vadd.f32	s14, s24, s13
d00447fa:	ee7b 7aa7 	vadd.f32	s15, s23, s15
d00447fe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044802:	ee27 7a2c 	vmul.f32	s14, s14, s25
d0044806:	ee67 7aaa 	vmul.f32	s15, s15, s21
d004480a:	da1e      	bge.n	d004484a <drawFakeHorizonDots+0x1c6>
d004480c:	eec5 6a06 	vdiv.f32	s13, s10, s12
d0044810:	eeb0 6a68 	vmov.f32	s12, s17
d0044814:	eea7 6a26 	vfma.f32	s12, s14, s13
d0044818:	eee7 5aa6 	vfma.f32	s11, s15, s13
d004481c:	eefd 7ac6 	vcvt.s32.f32	s15, s12
d0044820:	eefd 5ae5 	vcvt.s32.f32	s11, s11
d0044824:	ee17 0a90 	vmov	r0, s15
d0044828:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d004482c:	d20d      	bcs.n	d004484a <drawFakeHorizonDots+0x1c6>
d004482e:	ee15 3a90 	vmov	r3, s11
d0044832:	465a      	mov	r2, fp
d0044834:	ee15 1a90 	vmov	r1, s11
d0044838:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d004483c:	d205      	bcs.n	d004484a <drawFakeHorizonDots+0x1c6>
d004483e:	edcd 4a00 	vstr	s9, [sp]
d0044842:	f7fc f81d 	bl	d0040880 <putPixel>
d0044846:	eddd 4a00 	vldr	s9, [sp]
d004484a:	42b4      	cmp	r4, r6
d004484c:	d193      	bne.n	d0044776 <drawFakeHorizonDots+0xf2>
d004484e:	f106 561f 	add.w	r6, r6, #666894336	; 0x27c00000
d0044852:	9b02      	ldr	r3, [sp, #8]
d0044854:	44ba      	add	sl, r7
d0044856:	f506 16a7 	add.w	r6, r6, #1368064	; 0x14e000
d004485a:	f606 362f 	addw	r6, r6, #2863	; 0xb2f
d004485e:	42b3      	cmp	r3, r6
d0044860:	f47f af7a 	bne.w	d0044758 <drawFakeHorizonDots+0xd4>
d0044864:	b005      	add	sp, #20
d0044866:	ecbd 8b10 	vpop	{d8-d15}
d004486a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004486e:	4770      	bx	lr
d0044870:	3eb33333 	.word	0x3eb33333
d0044874:	165667b1 	.word	0x165667b1
d0044878:	27d4eb2f 	.word	0x27d4eb2f
d004487c:	a869b223 	.word	0xa869b223
d0044880:	3c008081 	.word	0x3c008081
d0044884:	9d3726a0 	.word	0x9d3726a0
d0044888:	43700000 	.word	0x43700000
d004488c:	43708000 	.word	0x43708000
d0044890:	c583036b 	.word	0xc583036b
d0044894:	c3700000 	.word	0xc3700000
d0044898:	43208000 	.word	0x43208000
d004489c:	4bf19f61 	.word	0x4bf19f61

d00448a0 <drawFakeHorizon>:
d00448a0:	2800      	cmp	r0, #0
d00448a2:	f000 813c 	beq.w	d0044b1e <drawFakeHorizon+0x27e>
d00448a6:	ed9f 7aa2 	vldr	s14, [pc, #648]	; d0044b30 <drawFakeHorizon+0x290>
d00448aa:	eddf 6aa2 	vldr	s13, [pc, #648]	; d0044b34 <drawFakeHorizon+0x294>
d00448ae:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00448b2:	ed2d 8b0c 	vpush	{d8-d13}
d00448b6:	ed90 da0a 	vldr	s26, [r0, #40]	; 0x28
d00448ba:	eeb0 ca47 	vmov.f32	s24, s14
d00448be:	ed9f 9a9e 	vldr	s18, [pc, #632]	; d0044b38 <drawFakeHorizon+0x298>
d00448c2:	b083      	sub	sp, #12
d00448c4:	edd0 ba0d 	vldr	s23, [r0, #52]	; 0x34
d00448c8:	eeb0 bacd 	vabs.f32	s22, s26
d00448cc:	ee6d 7a09 	vmul.f32	s15, s26, s18
d00448d0:	eddf 9a9a 	vldr	s19, [pc, #616]	; d0044b3c <drawFakeHorizon+0x29c>
d00448d4:	eef0 aa6b 	vmov.f32	s21, s23
d00448d8:	edd0 da07 	vldr	s27, [r0, #28]
d00448dc:	eeb0 aa6b 	vmov.f32	s20, s23
d00448e0:	edd0 8a01 	vldr	s17, [r0, #4]
d00448e4:	eec9 ca8d 	vdiv.f32	s25, s19, s26
d00448e8:	460f      	mov	r7, r1
d00448ea:	4690      	mov	r8, r2
d00448ec:	4699      	mov	r9, r3
d00448ee:	2400      	movs	r4, #0
d00448f0:	4e93      	ldr	r6, [pc, #588]	; (d0044b40 <drawFakeHorizon+0x2a0>)
d00448f2:	ed9f 8a94 	vldr	s16, [pc, #592]	; d0044b44 <drawFakeHorizon+0x2a4>
d00448f6:	eee7 aa87 	vfma.f32	s21, s15, s14
d00448fa:	eea7 aaa6 	vfma.f32	s20, s15, s13
d00448fe:	ee2d 9a89 	vmul.f32	s18, s27, s18
d0044902:	ee70 8a68 	vsub.f32	s17, s0, s17
d0044906:	e056      	b.n	d00449b6 <drawFakeHorizon+0x116>
d0044908:	ee88 6aa6 	vdiv.f32	s12, s17, s13
d004490c:	eef0 6ac7 	vabs.f32	s13, s14
d0044910:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d0044914:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044918:	eef4 6ac8 	vcmpe.f32	s13, s16
d004491c:	bfcc      	ite	gt
d004491e:	2201      	movgt	r2, #1
d0044920:	2200      	movle	r2, #0
d0044922:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044926:	da61      	bge.n	d00449ec <drawFakeHorizon+0x14c>
d0044928:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d004492c:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d0044930:	6833      	ldr	r3, [r6, #0]
d0044932:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044936:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d004493a:	f240 80a8 	bls.w	d0044a8e <drawFakeHorizon+0x1ee>
d004493e:	eeb4 bac8 	vcmpe.f32	s22, s16
d0044942:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044946:	f100 809a 	bmi.w	d0044a7e <drawFakeHorizon+0x1de>
d004494a:	ee7b 7aa7 	vadd.f32	s15, s23, s15
d004494e:	eeb0 7a4c 	vmov.f32	s14, s24
d0044952:	eeac 7aa7 	vfma.f32	s14, s25, s15
d0044956:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d004495a:	ee17 ba90 	vmov	fp, s15
d004495e:	f1bb 0f00 	cmp.w	fp, #0
d0044962:	f2c0 80aa 	blt.w	d0044aba <drawFakeHorizon+0x21a>
d0044966:	2201      	movs	r2, #1
d0044968:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d004496c:	46da      	mov	sl, fp
d004496e:	bfa8      	it	ge
d0044970:	f44f 7aa0 	movge.w	sl, #320	; 0x140
d0044974:	2a00      	cmp	r2, #0
d0044976:	f000 8091 	beq.w	d0044a9c <drawFakeHorizon+0x1fc>
d004497a:	f1bb 0f00 	cmp.w	fp, #0
d004497e:	d009      	beq.n	d0044994 <drawFakeHorizon+0xf4>
d0044980:	f1ba 0f00 	cmp.w	sl, #0
d0044984:	4628      	mov	r0, r5
d0044986:	4641      	mov	r1, r8
d0044988:	bfcc      	ite	gt
d004498a:	4652      	movgt	r2, sl
d004498c:	2201      	movle	r2, #1
d004498e:	4415      	add	r5, r2
d0044990:	f001 fb1c 	bl	d0045fcc <memset>
d0044994:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d0044998:	d009      	beq.n	d00449ae <drawFakeHorizon+0x10e>
d004499a:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d004499e:	f5ca 72a0 	rsb	r2, sl, #320	; 0x140
d00449a2:	4628      	mov	r0, r5
d00449a4:	4639      	mov	r1, r7
d00449a6:	bfa8      	it	ge
d00449a8:	2201      	movge	r2, #1
d00449aa:	f001 fb0f 	bl	d0045fcc <memset>
d00449ae:	3401      	adds	r4, #1
d00449b0:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d00449b4:	d04e      	beq.n	d0044a54 <drawFakeHorizon+0x1b4>
d00449b6:	ee07 4a90 	vmov	s15, r4
d00449ba:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00449be:	ee77 7ae9 	vsub.f32	s15, s15, s19
d00449c2:	ee67 7a89 	vmul.f32	s15, s15, s18
d00449c6:	ee77 6aaa 	vadd.f32	s13, s15, s21
d00449ca:	ee3a 7a27 	vadd.f32	s14, s20, s15
d00449ce:	eeb0 6ae6 	vabs.f32	s12, s13
d00449d2:	eeb4 6ac8 	vcmpe.f32	s12, s16
d00449d6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00449da:	da95      	bge.n	d0044908 <drawFakeHorizon+0x68>
d00449dc:	eef0 6ac7 	vabs.f32	s13, s14
d00449e0:	eef4 6ac8 	vcmpe.f32	s13, s16
d00449e4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00449e8:	db4c      	blt.n	d0044a84 <drawFakeHorizon+0x1e4>
d00449ea:	2200      	movs	r2, #0
d00449ec:	eec8 6a87 	vdiv.f32	s13, s17, s14
d00449f0:	6833      	ldr	r3, [r6, #0]
d00449f2:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d00449f6:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d00449fa:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00449fe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044a02:	bfcc      	ite	gt
d0044a04:	2301      	movgt	r3, #1
d0044a06:	2300      	movle	r3, #0
d0044a08:	4293      	cmp	r3, r2
d0044a0a:	f000 8089 	beq.w	d0044b20 <drawFakeHorizon+0x280>
d0044a0e:	eeb4 bac8 	vcmpe.f32	s22, s16
d0044a12:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044a16:	d429      	bmi.n	d0044a6c <drawFakeHorizon+0x1cc>
d0044a18:	ee7b 7aa7 	vadd.f32	s15, s23, s15
d0044a1c:	eeb0 7a4c 	vmov.f32	s14, s24
d0044a20:	eeac 7aa7 	vfma.f32	s14, s25, s15
d0044a24:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d0044a28:	ee17 ba90 	vmov	fp, s15
d0044a2c:	f1bb 0f00 	cmp.w	fp, #0
d0044a30:	da9a      	bge.n	d0044968 <drawFakeHorizon+0xc8>
d0044a32:	2a00      	cmp	r2, #0
d0044a34:	d141      	bne.n	d0044aba <drawFakeHorizon+0x21a>
d0044a36:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d0044a3a:	f104 0401 	add.w	r4, r4, #1
d0044a3e:	f5c2 72a0 	rsb	r2, r2, #320	; 0x140
d0044a42:	4628      	mov	r0, r5
d0044a44:	bfa8      	it	ge
d0044a46:	2201      	movge	r2, #1
d0044a48:	4641      	mov	r1, r8
d0044a4a:	f001 fabf 	bl	d0045fcc <memset>
d0044a4e:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d0044a52:	d1b0      	bne.n	d00449b6 <drawFakeHorizon+0x116>
d0044a54:	eddf 7a3b 	vldr	s15, [pc, #236]	; d0044b44 <drawFakeHorizon+0x2a4>
d0044a58:	eeb4 bae7 	vcmpe.f32	s22, s15
d0044a5c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044a60:	da31      	bge.n	d0044ac6 <drawFakeHorizon+0x226>
d0044a62:	b003      	add	sp, #12
d0044a64:	ecbd 8b0c 	vpop	{d8-d13}
d0044a68:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0044a6c:	b93a      	cbnz	r2, d0044a7e <drawFakeHorizon+0x1de>
d0044a6e:	22a0      	movs	r2, #160	; 0xa0
d0044a70:	4628      	mov	r0, r5
d0044a72:	4639      	mov	r1, r7
d0044a74:	4415      	add	r5, r2
d0044a76:	f001 faa9 	bl	d0045fcc <memset>
d0044a7a:	22a0      	movs	r2, #160	; 0xa0
d0044a7c:	e7db      	b.n	d0044a36 <drawFakeHorizon+0x196>
d0044a7e:	f04f 0aa0 	mov.w	sl, #160	; 0xa0
d0044a82:	e77d      	b.n	d0044980 <drawFakeHorizon+0xe0>
d0044a84:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d0044a88:	6832      	ldr	r2, [r6, #0]
d0044a8a:	eb02 1585 	add.w	r5, r2, r5, lsl #6
d0044a8e:	4639      	mov	r1, r7
d0044a90:	4628      	mov	r0, r5
d0044a92:	f44f 72a0 	mov.w	r2, #320	; 0x140
d0044a96:	f001 fa99 	bl	d0045fcc <memset>
d0044a9a:	e788      	b.n	d00449ae <drawFakeHorizon+0x10e>
d0044a9c:	f1bb 0f00 	cmp.w	fp, #0
d0044aa0:	d00e      	beq.n	d0044ac0 <drawFakeHorizon+0x220>
d0044aa2:	4628      	mov	r0, r5
d0044aa4:	4652      	mov	r2, sl
d0044aa6:	4639      	mov	r1, r7
d0044aa8:	4455      	add	r5, sl
d0044aaa:	f001 fa8f 	bl	d0045fcc <memset>
d0044aae:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d0044ab2:	f6bf af7c 	bge.w	d00449ae <drawFakeHorizon+0x10e>
d0044ab6:	4652      	mov	r2, sl
d0044ab8:	e7bd      	b.n	d0044a36 <drawFakeHorizon+0x196>
d0044aba:	f04f 0a00 	mov.w	sl, #0
d0044abe:	e76c      	b.n	d004499a <drawFakeHorizon+0xfa>
d0044ac0:	46da      	mov	sl, fp
d0044ac2:	4652      	mov	r2, sl
d0044ac4:	e7b7      	b.n	d0044a36 <drawFakeHorizon+0x196>
d0044ac6:	ed9f 7a1d 	vldr	s14, [pc, #116]	; d0044b3c <drawFakeHorizon+0x29c>
d0044aca:	f240 12df 	movw	r2, #479	; 0x1df
d0044ace:	eddf 7a1e 	vldr	s15, [pc, #120]	; d0044b48 <drawFakeHorizon+0x2a8>
d0044ad2:	2000      	movs	r0, #0
d0044ad4:	ee6b ba87 	vmul.f32	s23, s23, s14
d0044ad8:	ed9f 7a1c 	vldr	s14, [pc, #112]	; d0044b4c <drawFakeHorizon+0x2ac>
d0044adc:	eddf 6a14 	vldr	s13, [pc, #80]	; d0044b30 <drawFakeHorizon+0x290>
d0044ae0:	f8cd 9000 	str.w	r9, [sp]
d0044ae4:	eeb0 6a6b 	vmov.f32	s12, s23
d0044ae8:	eeed ba87 	vfma.f32	s23, s27, s14
d0044aec:	eead 6aa7 	vfma.f32	s12, s27, s15
d0044af0:	eecb 7a8d 	vdiv.f32	s15, s23, s26
d0044af4:	ee86 7a0d 	vdiv.f32	s14, s12, s26
d0044af8:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0044afc:	fefc 7ae7 	vcvta.s32.f32	s15, s15
d0044b00:	ee37 7a26 	vadd.f32	s14, s14, s13
d0044b04:	ee17 3a90 	vmov	r3, s15
d0044b08:	febc 7ac7 	vcvta.s32.f32	s14, s14
d0044b0c:	ee17 1a10 	vmov	r1, s14
d0044b10:	f7fb fec6 	bl	d00408a0 <drawLine>
d0044b14:	b003      	add	sp, #12
d0044b16:	ecbd 8b0c 	vpop	{d8-d13}
d0044b1a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0044b1e:	4770      	bx	lr
d0044b20:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0044b24:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044b28:	ddb1      	ble.n	d0044a8e <drawFakeHorizon+0x1ee>
d0044b2a:	4641      	mov	r1, r8
d0044b2c:	e7b0      	b.n	d0044a90 <drawFakeHorizon+0x1f0>
d0044b2e:	bf00      	nop
d0044b30:	43200000 	.word	0x43200000
d0044b34:	c31f0000 	.word	0xc31f0000
d0044b38:	3b888889 	.word	0x3b888889
d0044b3c:	43700000 	.word	0x43700000
d0044b40:	d00e1d64 	.word	0xd00e1d64
d0044b44:	38d1b717 	.word	0x38d1b717
d0044b48:	c3700000 	.word	0xc3700000
d0044b4c:	436f0000 	.word	0x436f0000

d0044b50 <submitEntitySolid>:
d0044b50:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0044b54:	ed2d 8b10 	vpush	{d8-d15}
d0044b58:	b0b3      	sub	sp, #204	; 0xcc
d0044b5a:	f10d 036f 	add.w	r3, sp, #111	; 0x6f
d0044b5e:	9104      	str	r1, [sp, #16]
d0044b60:	f023 031f 	bic.w	r3, r3, #31
d0044b64:	9305      	str	r3, [sp, #20]
d0044b66:	2800      	cmp	r0, #0
d0044b68:	f000 827c 	beq.w	d0045064 <submitEntitySolid+0x514>
d0044b6c:	f8d0 800c 	ldr.w	r8, [r0, #12]
d0044b70:	4604      	mov	r4, r0
d0044b72:	f1b8 0f00 	cmp.w	r8, #0
d0044b76:	f000 8275 	beq.w	d0045064 <submitEntitySolid+0x514>
d0044b7a:	f8d8 3000 	ldr.w	r3, [r8]
d0044b7e:	2b00      	cmp	r3, #0
d0044b80:	f000 8270 	beq.w	d0045064 <submitEntitySolid+0x514>
d0044b84:	f8d8 3010 	ldr.w	r3, [r8, #16]
d0044b88:	2b00      	cmp	r3, #0
d0044b8a:	f000 826b 	beq.w	d0045064 <submitEntitySolid+0x514>
d0044b8e:	f8d8 3004 	ldr.w	r3, [r8, #4]
d0044b92:	3b01      	subs	r3, #1
d0044b94:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d0044b98:	f080 8264 	bcs.w	d0045064 <submitEntitySolid+0x514>
d0044b9c:	f8d8 3014 	ldr.w	r3, [r8, #20]
d0044ba0:	2b00      	cmp	r3, #0
d0044ba2:	f340 825f 	ble.w	d0045064 <submitEntitySolid+0x514>
d0044ba6:	460f      	mov	r7, r1
d0044ba8:	edd1 aa11 	vldr	s21, [r1, #68]	; 0x44
d0044bac:	ed91 fa10 	vldr	s30, [r1, #64]	; 0x40
d0044bb0:	f7fe ffbe 	bl	d0043b30 <lightsGet>
d0044bb4:	900b      	str	r0, [sp, #44]	; 0x2c
d0044bb6:	f7fe ffbf 	bl	d0043b38 <lightsGetCount>
d0044bba:	edd8 fa09 	vldr	s31, [r8, #36]	; 0x24
d0044bbe:	edd8 7a0a 	vldr	s15, [r8, #40]	; 0x28
d0044bc2:	eef5 fac0 	vcmpe.f32	s31, #0.0
d0044bc6:	ed98 7a08 	vldr	s14, [r8, #32]
d0044bca:	f8d8 3004 	ldr.w	r3, [r8, #4]
d0044bce:	ed8d 7a01 	vstr	s14, [sp, #4]
d0044bd2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044bd6:	ed98 7a0c 	vldr	s14, [r8, #48]	; 0x30
d0044bda:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0044bde:	ed94 6a00 	vldr	s12, [r4]
d0044be2:	ed8d 7a09 	vstr	s14, [sp, #36]	; 0x24
d0044be6:	bfcc      	ite	gt
d0044be8:	2601      	movgt	r6, #1
d0044bea:	2600      	movle	r6, #0
d0044bec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044bf0:	ed98 7a0b 	vldr	s14, [r8, #44]	; 0x2c
d0044bf4:	edd4 5a01 	vldr	s11, [r4, #4]
d0044bf8:	ed94 5a02 	vldr	s10, [r4, #8]
d0044bfc:	bfcc      	ite	gt
d0044bfe:	2501      	movgt	r5, #1
d0044c00:	2500      	movle	r5, #0
d0044c02:	2b00      	cmp	r3, #0
d0044c04:	edd4 4a07 	vldr	s9, [r4, #28]
d0044c08:	ed94 4a08 	vldr	s8, [r4, #32]
d0044c0c:	edd4 3a09 	vldr	s7, [r4, #36]	; 0x24
d0044c10:	ed94 3a0a 	vldr	s6, [r4, #40]	; 0x28
d0044c14:	edd4 2a0b 	vldr	s5, [r4, #44]	; 0x2c
d0044c18:	ed94 2a0c 	vldr	s4, [r4, #48]	; 0x30
d0044c1c:	edd4 1a04 	vldr	s3, [r4, #16]
d0044c20:	ed94 1a05 	vldr	s2, [r4, #20]
d0044c24:	edd4 0a06 	vldr	s1, [r4, #24]
d0044c28:	edd7 ca00 	vldr	s25, [r7]
d0044c2c:	ed97 da01 	vldr	s26, [r7, #4]
d0044c30:	edd7 da02 	vldr	s27, [r7, #8]
d0044c34:	ed97 0a06 	vldr	s0, [r7, #24]
d0044c38:	ed97 8a07 	vldr	s16, [r7, #28]
d0044c3c:	edd7 8a08 	vldr	s17, [r7, #32]
d0044c40:	ed97 9a09 	vldr	s18, [r7, #36]	; 0x24
d0044c44:	edd7 9a0a 	vldr	s19, [r7, #40]	; 0x28
d0044c48:	ed97 aa0b 	vldr	s20, [r7, #44]	; 0x2c
d0044c4c:	edcd 7a0a 	vstr	s15, [sp, #40]	; 0x28
d0044c50:	9007      	str	r0, [sp, #28]
d0044c52:	ed8d 7a08 	vstr	s14, [sp, #32]
d0044c56:	ed97 ba0c 	vldr	s22, [r7, #48]	; 0x30
d0044c5a:	edd7 ba0d 	vldr	s23, [r7, #52]	; 0x34
d0044c5e:	ed97 ca0e 	vldr	s24, [r7, #56]	; 0x38
d0044c62:	dd51      	ble.n	d0044d08 <submitEntitySolid+0x1b8>
d0044c64:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0044c68:	f8d8 3000 	ldr.w	r3, [r8]
d0044c6c:	49de      	ldr	r1, [pc, #888]	; (d0044fe8 <submitEntitySolid+0x498>)
d0044c6e:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d0044c72:	4ade      	ldr	r2, [pc, #888]	; (d0044fec <submitEntitySolid+0x49c>)
d0044c74:	edd3 7a01 	vldr	s15, [r3, #4]
d0044c78:	330c      	adds	r3, #12
d0044c7a:	ed53 ea03 	vldr	s29, [r3, #-12]
d0044c7e:	310c      	adds	r1, #12
d0044c80:	ee27 7aa2 	vmul.f32	s14, s15, s5
d0044c84:	ed53 6a01 	vldr	s13, [r3, #-4]
d0044c88:	ee27 ea83 	vmul.f32	s28, s15, s6
d0044c8c:	4298      	cmp	r0, r3
d0044c8e:	ee67 7a82 	vmul.f32	s15, s15, s4
d0044c92:	f102 020c 	add.w	r2, r2, #12
d0044c96:	eeae 7a84 	vfma.f32	s14, s29, s8
d0044c9a:	eeae eaa4 	vfma.f32	s28, s29, s9
d0044c9e:	eeee 7aa3 	vfma.f32	s15, s29, s7
d0044ca2:	ee35 7a87 	vadd.f32	s14, s11, s14
d0044ca6:	ee36 ea0e 	vadd.f32	s28, s12, s28
d0044caa:	ee75 7a27 	vadd.f32	s15, s10, s15
d0044cae:	eea6 7a81 	vfma.f32	s14, s13, s2
d0044cb2:	eea6 eaa1 	vfma.f32	s28, s13, s3
d0044cb6:	eee6 7aa0 	vfma.f32	s15, s13, s1
d0044cba:	eef0 ea47 	vmov.f32	s29, s14
d0044cbe:	ee37 7a4d 	vsub.f32	s14, s14, s26
d0044cc2:	ed01 ea03 	vstr	s28, [r1, #-12]
d0044cc6:	ee7e 6a6c 	vsub.f32	s13, s28, s25
d0044cca:	ed41 7a01 	vstr	s15, [r1, #-4]
d0044cce:	ee37 eaed 	vsub.f32	s28, s15, s27
d0044cd2:	ed41 ea02 	vstr	s29, [r1, #-8]
d0044cd6:	ee69 7a87 	vmul.f32	s15, s19, s14
d0044cda:	ee68 ea07 	vmul.f32	s29, s16, s14
d0044cde:	ee2b 7a87 	vmul.f32	s14, s23, s14
d0044ce2:	eee9 7a26 	vfma.f32	s15, s18, s13
d0044ce6:	eee0 ea26 	vfma.f32	s29, s0, s13
d0044cea:	eeab 7a26 	vfma.f32	s14, s22, s13
d0044cee:	eeea 7a0e 	vfma.f32	s15, s20, s28
d0044cf2:	eee8 ea8e 	vfma.f32	s29, s17, s28
d0044cf6:	eeac 7a0e 	vfma.f32	s14, s24, s28
d0044cfa:	ed42 7a02 	vstr	s15, [r2, #-8]
d0044cfe:	ed42 ea03 	vstr	s29, [r2, #-12]
d0044d02:	ed02 7a01 	vstr	s14, [r2, #-4]
d0044d06:	d1b5      	bne.n	d0044c74 <submitEntitySolid+0x124>
d0044d08:	f8d8 3014 	ldr.w	r3, [r8, #20]
d0044d0c:	2b00      	cmp	r3, #0
d0044d0e:	9302      	str	r3, [sp, #8]
d0044d10:	f340 81a8 	ble.w	d0045064 <submitEntitySolid+0x514>
d0044d14:	ea46 0305 	orr.w	r3, r6, r5
d0044d18:	ed9d ba0a 	vldr	s22, [sp, #40]	; 0x28
d0044d1c:	f04f 0900 	mov.w	r9, #0
d0044d20:	edcd ca0a 	vstr	s25, [sp, #40]	; 0x28
d0044d24:	eddf eab2 	vldr	s29, [pc, #712]	; d0044ff0 <submitEntitySolid+0x4a0>
d0044d28:	eddd ca01 	vldr	s25, [sp, #4]
d0044d2c:	ed8d da0c 	vstr	s26, [sp, #48]	; 0x30
d0044d30:	9306      	str	r3, [sp, #24]
d0044d32:	ed9d da09 	vldr	s26, [sp, #36]	; 0x24
d0044d36:	f8cd 800c 	str.w	r8, [sp, #12]
d0044d3a:	edcd da09 	vstr	s27, [sp, #36]	; 0x24
d0044d3e:	9a03      	ldr	r2, [sp, #12]
d0044d40:	ea4f 1309 	mov.w	r3, r9, lsl #4
d0044d44:	4ea9      	ldr	r6, [pc, #676]	; (d0044fec <submitEntitySolid+0x49c>)
d0044d46:	6915      	ldr	r5, [r2, #16]
d0044d48:	58e8      	ldr	r0, [r5, r3]
d0044d4a:	eb05 1509 	add.w	r5, r5, r9, lsl #4
d0044d4e:	4633      	mov	r3, r6
d0044d50:	eb00 0440 	add.w	r4, r0, r0, lsl #1
d0044d54:	686a      	ldr	r2, [r5, #4]
d0044d56:	68af      	ldr	r7, [r5, #8]
d0044d58:	0041      	lsls	r1, r0, #1
d0044d5a:	eb06 0484 	add.w	r4, r6, r4, lsl #2
d0044d5e:	9701      	str	r7, [sp, #4]
d0044d60:	eb02 0642 	add.w	r6, r2, r2, lsl #1
d0044d64:	edd4 4a02 	vldr	s9, [r4, #8]
d0044d68:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d0044d6c:	eb03 0686 	add.w	r6, r3, r6, lsl #2
d0044d70:	eef4 4aea 	vcmpe.f32	s9, s21
d0044d74:	eb03 0787 	add.w	r7, r3, r7, lsl #2
d0044d78:	9b01      	ldr	r3, [sp, #4]
d0044d7a:	ea4f 0842 	mov.w	r8, r2, lsl #1
d0044d7e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044d82:	ea4f 0b43 	mov.w	fp, r3, lsl #1
d0044d86:	dd0e      	ble.n	d0044da6 <submitEntitySolid+0x256>
d0044d88:	edd6 7a02 	vldr	s15, [r6, #8]
d0044d8c:	eef4 7aea 	vcmpe.f32	s15, s21
d0044d90:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044d94:	dd07      	ble.n	d0044da6 <submitEntitySolid+0x256>
d0044d96:	edd7 7a02 	vldr	s15, [r7, #8]
d0044d9a:	eef4 7aea 	vcmpe.f32	s15, s21
d0044d9e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044da2:	f300 8159 	bgt.w	d0045058 <submitEntitySolid+0x508>
d0044da6:	ed94 5a00 	vldr	s10, [r4]
d0044daa:	edd4 2a02 	vldr	s5, [r4, #8]
d0044dae:	ed96 4a00 	vldr	s8, [r6]
d0044db2:	ed97 6a02 	vldr	s12, [r7, #8]
d0044db6:	ee34 1a45 	vsub.f32	s2, s8, s10
d0044dba:	edd4 7a01 	vldr	s15, [r4, #4]
d0044dbe:	ee36 6a62 	vsub.f32	s12, s12, s5
d0044dc2:	ed96 3a02 	vldr	s6, [r6, #8]
d0044dc6:	edd7 6a01 	vldr	s13, [r7, #4]
d0044dca:	edd7 3a00 	vldr	s7, [r7]
d0044dce:	ee33 3a62 	vsub.f32	s6, s6, s5
d0044dd2:	ee76 6ae7 	vsub.f32	s13, s13, s15
d0044dd6:	edd6 5a01 	vldr	s11, [r6, #4]
d0044dda:	ee33 7ac5 	vsub.f32	s14, s7, s10
d0044dde:	ee66 1a41 	vnmul.f32	s3, s12, s2
d0044de2:	ee75 5ae7 	vsub.f32	s11, s11, s15
d0044de6:	ee26 2ac3 	vnmul.f32	s4, s13, s6
d0044dea:	eee3 1a07 	vfma.f32	s3, s6, s14
d0044dee:	ee27 7a65 	vnmul.f32	s14, s14, s11
d0044df2:	eea5 2a86 	vfma.f32	s4, s11, s12
d0044df6:	eea1 7a26 	vfma.f32	s14, s2, s13
d0044dfa:	ee67 7aa1 	vmul.f32	s15, s15, s3
d0044dfe:	eee5 7a02 	vfma.f32	s15, s10, s4
d0044e02:	eee2 7a87 	vfma.f32	s15, s5, s14
d0044e06:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0044e0a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e0e:	f280 8123 	bge.w	d0045058 <submitEntitySolid+0x508>
d0044e12:	180b      	adds	r3, r1, r0
d0044e14:	9901      	ldr	r1, [sp, #4]
d0044e16:	f8df e1d0 	ldr.w	lr, [pc, #464]	; d0044fe8 <submitEntitySolid+0x498>
d0044e1a:	eb08 0c02 	add.w	ip, r8, r2
d0044e1e:	eb0b 0a01 	add.w	sl, fp, r1
d0044e22:	eb0e 0383 	add.w	r3, lr, r3, lsl #2
d0044e26:	eb0e 0c8c 	add.w	ip, lr, ip, lsl #2
d0044e2a:	eb0e 0a8a 	add.w	sl, lr, sl, lsl #2
d0044e2e:	ed93 7a00 	vldr	s14, [r3]
d0044e32:	ed93 6a02 	vldr	s12, [r3, #8]
d0044e36:	eddc 5a00 	vldr	s11, [ip]
d0044e3a:	ed9a 1a02 	vldr	s2, [sl, #8]
d0044e3e:	ee75 0ac7 	vsub.f32	s1, s11, s14
d0044e42:	edd3 6a01 	vldr	s13, [r3, #4]
d0044e46:	ee31 0a46 	vsub.f32	s0, s2, s12
d0044e4a:	eddc 2a02 	vldr	s5, [ip, #8]
d0044e4e:	edda 1a01 	vldr	s3, [sl, #4]
d0044e52:	ed9a 2a00 	vldr	s4, [sl]
d0044e56:	ee32 aac6 	vsub.f32	s20, s5, s12
d0044e5a:	ee71 7ae6 	vsub.f32	s15, s3, s13
d0044e5e:	ed9c 3a01 	vldr	s6, [ip, #4]
d0044e62:	ee32 8a47 	vsub.f32	s16, s4, s14
d0044e66:	ee20 9a60 	vnmul.f32	s18, s0, s1
d0044e6a:	ee73 9a66 	vsub.f32	s19, s6, s13
d0044e6e:	ee67 8aca 	vnmul.f32	s17, s15, s20
d0044e72:	eeaa 9a08 	vfma.f32	s18, s20, s16
d0044e76:	ee28 8a69 	vnmul.f32	s16, s16, s19
d0044e7a:	eee9 8a80 	vfma.f32	s17, s19, s0
d0044e7e:	eea0 8aa7 	vfma.f32	s16, s1, s15
d0044e82:	ee69 7a09 	vmul.f32	s15, s18, s18
d0044e86:	eee8 7aa8 	vfma.f32	s15, s17, s17
d0044e8a:	eee8 7a08 	vfma.f32	s15, s16, s16
d0044e8e:	eef4 7aee 	vcmpe.f32	s15, s29
d0044e92:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e96:	f240 80df 	bls.w	d0045058 <submitEntitySolid+0x508>
d0044e9a:	eddf 0a59 	vldr	s1, [pc, #356]	; d0045000 <submitEntitySolid+0x4b0>
d0044e9e:	eef4 7ae0 	vcmpe.f32	s15, s1
d0044ea2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044ea6:	f100 822b 	bmi.w	d0045300 <submitEntitySolid+0x7b0>
d0044eaa:	eddf 0a56 	vldr	s1, [pc, #344]	; d0045004 <submitEntitySolid+0x4b4>
d0044eae:	eef4 7a60 	vcmp.f32	s15, s1
d0044eb2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044eb6:	f300 8223 	bgt.w	d0045300 <submitEntitySolid+0x7b0>
d0044eba:	7b6b      	ldrb	r3, [r5, #13]
d0044ebc:	eef4 4acf 	vcmpe.f32	s9, s30
d0044ec0:	eddf 7a4c 	vldr	s15, [pc, #304]	; d0044ff4 <submitEntitySolid+0x4a4>
d0044ec4:	ee7c 9a8d 	vadd.f32	s19, s25, s26
d0044ec8:	ee0a 3a10 	vmov	s20, r3
d0044ecc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044ed0:	eeb8 aa4a 	vcvt.f32.u32	s20, s20
d0044ed4:	ee2a aa27 	vmul.f32	s20, s20, s15
d0044ed8:	f2c0 80c9 	blt.w	d004506e <submitEntitySolid+0x51e>
d0044edc:	4490      	add	r8, r2
d0044ede:	4b43      	ldr	r3, [pc, #268]	; (d0044fec <submitEntitySolid+0x49c>)
d0044ee0:	eb03 0888 	add.w	r8, r3, r8, lsl #2
d0044ee4:	edd8 7a02 	vldr	s15, [r8, #8]
d0044ee8:	eef4 7acf 	vcmpe.f32	s15, s30
d0044eec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044ef0:	f2c0 80bd 	blt.w	d004506e <submitEntitySolid+0x51e>
d0044ef4:	9901      	ldr	r1, [sp, #4]
d0044ef6:	448b      	add	fp, r1
d0044ef8:	4619      	mov	r1, r3
d0044efa:	eb03 0b8b 	add.w	fp, r3, fp, lsl #2
d0044efe:	eddb 0a02 	vldr	s1, [fp, #8]
d0044f02:	eef4 0acf 	vcmpe.f32	s1, s30
d0044f06:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044f0a:	f2c0 80b0 	blt.w	d004506e <submitEntitySolid+0x51e>
d0044f0e:	eeb1 0a64 	vneg.f32	s0, s9
d0044f12:	eeb4 0a45 	vcmp.f32	s0, s10
d0044f16:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044f1a:	f200 80a8 	bhi.w	d004506e <submitEntitySolid+0x51e>
d0044f1e:	eef4 4a45 	vcmp.f32	s9, s10
d0044f22:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044f26:	f2c0 80a2 	blt.w	d004506e <submitEntitySolid+0x51e>
d0044f2a:	eeb1 5a67 	vneg.f32	s10, s15
d0044f2e:	eeb4 5a44 	vcmp.f32	s10, s8
d0044f32:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044f36:	f200 809a 	bhi.w	d004506e <submitEntitySolid+0x51e>
d0044f3a:	eef4 7a44 	vcmp.f32	s15, s8
d0044f3e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044f42:	f2c0 8094 	blt.w	d004506e <submitEntitySolid+0x51e>
d0044f46:	eeb1 5a60 	vneg.f32	s10, s1
d0044f4a:	eeb4 5a63 	vcmp.f32	s10, s7
d0044f4e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044f52:	f200 808c 	bhi.w	d004506e <submitEntitySolid+0x51e>
d0044f56:	eef4 0a63 	vcmp.f32	s1, s7
d0044f5a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044f5e:	f2c0 8086 	blt.w	d004506e <submitEntitySolid+0x51e>
d0044f62:	ed9f 5a25 	vldr	s10, [pc, #148]	; d0044ff8 <submitEntitySolid+0x4a8>
d0044f66:	230c      	movs	r3, #12
d0044f68:	ee64 4a85 	vmul.f32	s9, s9, s10
d0044f6c:	fb03 1000 	mla	r0, r3, r0, r1
d0044f70:	ed90 5a01 	vldr	s10, [r0, #4]
d0044f74:	eeb1 4a64 	vneg.f32	s8, s9
d0044f78:	eeb4 5a44 	vcmp.f32	s10, s8
d0044f7c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044f80:	db75      	blt.n	d004506e <submitEntitySolid+0x51e>
d0044f82:	eeb4 5a64 	vcmp.f32	s10, s9
d0044f86:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044f8a:	d870      	bhi.n	d004506e <submitEntitySolid+0x51e>
d0044f8c:	ed9f 5a1a 	vldr	s10, [pc, #104]	; d0044ff8 <submitEntitySolid+0x4a8>
d0044f90:	fb03 1202 	mla	r2, r3, r2, r1
d0044f94:	ee67 7a85 	vmul.f32	s15, s15, s10
d0044f98:	edd2 4a01 	vldr	s9, [r2, #4]
d0044f9c:	eeb1 4a67 	vneg.f32	s8, s15
d0044fa0:	eef4 4a44 	vcmp.f32	s9, s8
d0044fa4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044fa8:	db61      	blt.n	d004506e <submitEntitySolid+0x51e>
d0044faa:	eef4 4a67 	vcmp.f32	s9, s15
d0044fae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044fb2:	d85c      	bhi.n	d004506e <submitEntitySolid+0x51e>
d0044fb4:	ee60 0a85 	vmul.f32	s1, s1, s10
d0044fb8:	9a01      	ldr	r2, [sp, #4]
d0044fba:	fb03 1102 	mla	r1, r3, r2, r1
d0044fbe:	eeb1 5a60 	vneg.f32	s10, s1
d0044fc2:	edd1 7a01 	vldr	s15, [r1, #4]
d0044fc6:	eef4 7a45 	vcmp.f32	s15, s10
d0044fca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044fce:	db4e      	blt.n	d004506e <submitEntitySolid+0x51e>
d0044fd0:	eef4 7ae0 	vcmpe.f32	s15, s1
d0044fd4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044fd8:	d849      	bhi.n	d004506e <submitEntitySolid+0x51e>
d0044fda:	9b06      	ldr	r3, [sp, #24]
d0044fdc:	b1b3      	cbz	r3, d004500c <submitEntitySolid+0x4bc>
d0044fde:	9b07      	ldr	r3, [sp, #28]
d0044fe0:	2b00      	cmp	r3, #0
d0044fe2:	f300 828a 	bgt.w	d00454fa <submitEntitySolid+0x9aa>
d0044fe6:	e011      	b.n	d004500c <submitEntitySolid+0x4bc>
d0044fe8:	d00d58e0 	.word	0xd00d58e0
d0044fec:	d00498a0 	.word	0xd00498a0
d0044ff0:	358637bd 	.word	0x358637bd
d0044ff4:	3b808081 	.word	0x3b808081
d0044ff8:	3f2aaaab 	.word	0x3f2aaaab
d0044ffc:	3eaaaaab 	.word	0x3eaaaaab
d0045000:	3f7fbe77 	.word	0x3f7fbe77
d0045004:	3f8020c5 	.word	0x3f8020c5
d0045008:	00000000 	.word	0x00000000
d004500c:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0045010:	fe8a 0a29 	vmaxnm.f32	s0, s20, s19
d0045014:	fe80 0a67 	vminnm.f32	s0, s0, s15
d0045018:	f7fe fd72 	bl	d0043b00 <brightnessToShadeF>
d004501c:	eeb0 8a40 	vmov.f32	s16, s0
d0045020:	eef0 4a48 	vmov.f32	s9, s16
d0045024:	7b6a      	ldrb	r2, [r5, #13]
d0045026:	7b29      	ldrb	r1, [r5, #12]
d0045028:	9804      	ldr	r0, [sp, #16]
d004502a:	ed97 3a00 	vldr	s6, [r7]
d004502e:	edd7 3a01 	vldr	s7, [r7, #4]
d0045032:	ed97 4a02 	vldr	s8, [r7, #8]
d0045036:	edd6 1a00 	vldr	s3, [r6]
d004503a:	ed96 2a01 	vldr	s4, [r6, #4]
d004503e:	edd6 2a02 	vldr	s5, [r6, #8]
d0045042:	ed94 0a00 	vldr	s0, [r4]
d0045046:	edd4 0a01 	vldr	s1, [r4, #4]
d004504a:	ed94 1a02 	vldr	s2, [r4, #8]
d004504e:	f7ff fa1f 	bl	d0044490 <submitClippedTri>
d0045052:	9b03      	ldr	r3, [sp, #12]
d0045054:	695b      	ldr	r3, [r3, #20]
d0045056:	9302      	str	r3, [sp, #8]
d0045058:	f109 0901 	add.w	r9, r9, #1
d004505c:	9b02      	ldr	r3, [sp, #8]
d004505e:	4599      	cmp	r9, r3
d0045060:	f6ff ae6d 	blt.w	d0044d3e <submitEntitySolid+0x1ee>
d0045064:	b033      	add	sp, #204	; 0xcc
d0045066:	ecbd 8b10 	vpop	{d8-d15}
d004506a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004506e:	9b06      	ldr	r3, [sp, #24]
d0045070:	2b00      	cmp	r3, #0
d0045072:	f000 8152 	beq.w	d004531a <submitEntitySolid+0x7ca>
d0045076:	9b07      	ldr	r3, [sp, #28]
d0045078:	2b00      	cmp	r3, #0
d004507a:	f340 814e 	ble.w	d004531a <submitEntitySolid+0x7ca>
d004507e:	f04f 0800 	mov.w	r8, #0
d0045082:	ee75 ba87 	vadd.f32	s23, s11, s14
d0045086:	ed5f 7a23 	vldr	s15, [pc, #-140]	; d0044ffc <submitEntitySolid+0x4ac>
d004508a:	ee33 ca26 	vadd.f32	s24, s6, s13
d004508e:	ee32 ea86 	vadd.f32	s28, s5, s12
d0045092:	eeb5 bac0 	vcmpe.f32	s22, #0.0
d0045096:	ee7b ba82 	vadd.f32	s23, s23, s4
d004509a:	ee3c ca21 	vadd.f32	s24, s24, s3
d004509e:	ee3e ea01 	vadd.f32	s28, s28, s2
d00450a2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00450a6:	ee6b baa7 	vmul.f32	s23, s23, s15
d00450aa:	ee2c ca27 	vmul.f32	s24, s24, s15
d00450ae:	ee2e ea27 	vmul.f32	s28, s28, s15
d00450b2:	f340 818b 	ble.w	d00453cc <submitEntitySolid+0x87c>
d00450b6:	eddd 7a0c 	vldr	s15, [sp, #48]	; 0x30
d00450ba:	ee77 2acc 	vsub.f32	s5, s15, s24
d00450be:	eddd 7a0a 	vldr	s15, [sp, #40]	; 0x28
d00450c2:	ee37 3aeb 	vsub.f32	s6, s15, s23
d00450c6:	eddd 7a09 	vldr	s15, [sp, #36]	; 0x24
d00450ca:	ee77 4ace 	vsub.f32	s9, s15, s28
d00450ce:	ee62 7aa2 	vmul.f32	s15, s5, s5
d00450d2:	eee3 7a03 	vfma.f32	s15, s6, s6
d00450d6:	eee4 7aa4 	vfma.f32	s15, s9, s9
d00450da:	eef4 7aee 	vcmpe.f32	s15, s29
d00450de:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00450e2:	f340 8173 	ble.w	d00453cc <submitEntitySolid+0x87c>
d00450e6:	ed1f 7a3a 	vldr	s14, [pc, #-232]	; d0045000 <submitEntitySolid+0x4b0>
d00450ea:	eef4 7ac7 	vcmpe.f32	s15, s14
d00450ee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00450f2:	f100 81e2 	bmi.w	d00454ba <submitEntitySolid+0x96a>
d00450f6:	ed1f 7a3d 	vldr	s14, [pc, #-244]	; d0045004 <submitEntitySolid+0x4b4>
d00450fa:	eef4 7a47 	vcmp.f32	s15, s14
d00450fe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045102:	f300 81da 	bgt.w	d00454ba <submitEntitySolid+0x96a>
d0045106:	ee79 1a09 	vadd.f32	s3, s18, s18
d004510a:	4642      	mov	r2, r8
d004510c:	ee38 2a08 	vadd.f32	s4, s16, s16
d0045110:	46b8      	mov	r8, r7
d0045112:	eef0 6a6c 	vmov.f32	s13, s25
d0045116:	4637      	mov	r7, r6
d0045118:	eef0 7a61 	vmov.f32	s15, s3
d004511c:	4626      	mov	r6, r4
d004511e:	eeb0 7a42 	vmov.f32	s14, s4
d0045122:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
d0045126:	eef0 ca64 	vmov.f32	s25, s9
d004512a:	f04f 0b00 	mov.w	fp, #0
d004512e:	eef0 4a6a 	vmov.f32	s9, s21
d0045132:	9c07      	ldr	r4, [sp, #28]
d0045134:	eef0 aa62 	vmov.f32	s21, s5
d0045138:	eeb0 2a4d 	vmov.f32	s4, s26
d004513c:	eef0 1a4a 	vmov.f32	s3, s20
d0045140:	ee38 1aa8 	vadd.f32	s2, s17, s17
d0045144:	eeb0 aa43 	vmov.f32	s20, s6
d0045148:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d004514c:	eeb0 3a4f 	vmov.f32	s6, s30
d0045150:	eef2 da00 	vmov.f32	s27, #32	; 0x41000000  8.0
d0045154:	eeb0 fa67 	vmov.f32	s30, s15
d0045158:	eeb0 da47 	vmov.f32	s26, s14
d004515c:	eef0 2a66 	vmov.f32	s5, s13
d0045160:	e0b6      	b.n	d00452d0 <submitEntitySolid+0x780>
d0045162:	edda 7a02 	vldr	s15, [sl, #8]
d0045166:	edda 6a01 	vldr	s13, [sl, #4]
d004516a:	ee77 7acc 	vsub.f32	s15, s15, s24
d004516e:	ed9a 7a03 	vldr	s14, [sl, #12]
d0045172:	ee76 6aeb 	vsub.f32	s13, s13, s23
d0045176:	edda 5a0a 	vldr	s11, [sl, #40]	; 0x28
d004517a:	ee37 7a4e 	vsub.f32	s14, s14, s28
d004517e:	ee27 6aa7 	vmul.f32	s12, s15, s15
d0045182:	ee25 4aa5 	vmul.f32	s8, s11, s11
d0045186:	eea6 6aa6 	vfma.f32	s12, s13, s13
d004518a:	eea7 6a07 	vfma.f32	s12, s14, s14
d004518e:	eeb4 6a6e 	vcmp.f32	s12, s29
d0045192:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045196:	f340 8094 	ble.w	d00452c2 <submitEntitySolid+0x772>
d004519a:	eeb4 4a46 	vcmp.f32	s8, s12
d004519e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00451a2:	f340 808e 	ble.w	d00452c2 <submitEntitySolid+0x772>
d00451a6:	eeb1 0ac6 	vsqrt.f32	s0, s12
d00451aa:	edda 3a08 	vldr	s7, [sl, #32]
d00451ae:	ee63 0aa3 	vmul.f32	s1, s7, s7
d00451b2:	eef4 0ac6 	vcmpe.f32	s1, s12
d00451b6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00451ba:	ee85 4a00 	vdiv.f32	s8, s10, s0
d00451be:	ee66 6a84 	vmul.f32	s13, s13, s8
d00451c2:	ee67 7a84 	vmul.f32	s15, s15, s8
d00451c6:	ee27 7a04 	vmul.f32	s14, s14, s8
d00451ca:	f140 8123 	bpl.w	d0045414 <submitEntitySolid+0x8c4>
d00451ce:	edda 0a09 	vldr	s1, [sl, #36]	; 0x24
d00451d2:	eef4 3ae0 	vcmpe.f32	s7, s1
d00451d6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00451da:	da72      	bge.n	d00452c2 <submitEntitySolid+0x772>
d00451dc:	eef4 5ae0 	vcmpe.f32	s11, s1
d00451e0:	ee26 6a04 	vmul.f32	s12, s12, s8
d00451e4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00451e8:	eef4 0ac6 	vcmpe.f32	s1, s12
d00451ec:	f200 814d 	bhi.w	d004548a <submitEntitySolid+0x93a>
d00451f0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00451f4:	d965      	bls.n	d00452c2 <submitEntitySolid+0x772>
d00451f6:	ee36 6a63 	vsub.f32	s12, s12, s7
d00451fa:	ee70 3ae3 	vsub.f32	s7, s1, s7
d00451fe:	eec6 5a23 	vdiv.f32	s11, s12, s7
d0045202:	ed1f 6a7f 	vldr	s12, [pc, #-508]	; d0045008 <submitEntitySolid+0x4b8>
d0045206:	fe85 6a86 	vmaxnm.f32	s12, s11, s12
d004520a:	fe86 6a45 	vminnm.f32	s12, s12, s10
d004520e:	ee35 6a46 	vsub.f32	s12, s10, s12
d0045212:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d0045216:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004521a:	d952      	bls.n	d00452c2 <submitEntitySolid+0x772>
d004521c:	ee69 5a27 	vmul.f32	s11, s18, s15
d0045220:	eee8 5aa6 	vfma.f32	s11, s17, s13
d0045224:	eee8 5a07 	vfma.f32	s11, s16, s14
d0045228:	eef5 5ac0 	vcmpe.f32	s11, #0.0
d004522c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045230:	d947      	bls.n	d00452c2 <submitEntitySolid+0x772>
d0045232:	eef5 fac0 	vcmpe.f32	s31, #0.0
d0045236:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004523a:	dd07      	ble.n	d004524c <submitEntitySolid+0x6fc>
d004523c:	ed9a 4a07 	vldr	s8, [sl, #28]
d0045240:	ee2f 4a84 	vmul.f32	s8, s31, s8
d0045244:	ee24 4a06 	vmul.f32	s8, s8, s12
d0045248:	eee5 9a84 	vfma.f32	s19, s11, s8
d004524c:	eeb5 bac0 	vcmpe.f32	s22, #0.0
d0045250:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045254:	dd2f      	ble.n	d00452b6 <submitEntitySolid+0x766>
d0045256:	eed5 7a8f 	vfnms.f32	s15, s11, s30
d004525a:	eed5 6a81 	vfnms.f32	s13, s11, s2
d004525e:	ee95 7a8d 	vfnms.f32	s14, s11, s26
d0045262:	ee2a 0aa7 	vmul.f32	s0, s21, s15
d0045266:	eeaa 0a26 	vfma.f32	s0, s20, s13
d004526a:	eeac 0a87 	vfma.f32	s0, s25, s14
d004526e:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0045272:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045276:	dd1e      	ble.n	d00452b6 <submitEntitySolid+0x766>
d0045278:	eddd 7a08 	vldr	s15, [sp, #32]
d004527c:	eef4 7a6d 	vcmp.f32	s15, s27
d0045280:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045284:	d009      	beq.n	d004529a <submitEntitySolid+0x74a>
d0045286:	eeb3 7a00 	vmov.f32	s14, #48	; 0x41800000  16.0
d004528a:	eef4 7a47 	vcmp.f32	s15, s14
d004528e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045292:	f040 80c2 	bne.w	d004541a <submitEntitySolid+0x8ca>
d0045296:	ee20 0a00 	vmul.f32	s0, s0, s0
d004529a:	ee20 0a00 	vmul.f32	s0, s0, s0
d004529e:	ee20 0a00 	vmul.f32	s0, s0, s0
d00452a2:	ee20 0a00 	vmul.f32	s0, s0, s0
d00452a6:	edda 7a07 	vldr	s15, [sl, #28]
d00452aa:	ee6b 7a27 	vmul.f32	s15, s22, s15
d00452ae:	ee27 6a86 	vmul.f32	s12, s15, s12
d00452b2:	eee6 9a00 	vfma.f32	s19, s12, s0
d00452b6:	eef4 9ac5 	vcmpe.f32	s19, s10
d00452ba:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00452be:	f280 80d3 	bge.w	d0045468 <submitEntitySolid+0x918>
d00452c2:	f10b 0b01 	add.w	fp, fp, #1
d00452c6:	f10a 0a40 	add.w	sl, sl, #64	; 0x40
d00452ca:	455c      	cmp	r4, fp
d00452cc:	f340 8085 	ble.w	d00453da <submitEntitySolid+0x88a>
d00452d0:	f8da 302c 	ldr.w	r3, [sl, #44]	; 0x2c
d00452d4:	2b00      	cmp	r3, #0
d00452d6:	d0f4      	beq.n	d00452c2 <submitEntitySolid+0x772>
d00452d8:	f89a 3000 	ldrb.w	r3, [sl]
d00452dc:	2b00      	cmp	r3, #0
d00452de:	f43f af40 	beq.w	d0045162 <submitEntitySolid+0x612>
d00452e2:	edda 6a04 	vldr	s13, [sl, #16]
d00452e6:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d00452ea:	edda 7a05 	vldr	s15, [sl, #20]
d00452ee:	ed9a 7a06 	vldr	s14, [sl, #24]
d00452f2:	eef1 6a66 	vneg.f32	s13, s13
d00452f6:	eef1 7a67 	vneg.f32	s15, s15
d00452fa:	eeb1 7a47 	vneg.f32	s14, s14
d00452fe:	e78d      	b.n	d004521c <submitEntitySolid+0x6cc>
d0045300:	eef1 0ae7 	vsqrt.f32	s1, s15
d0045304:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0045308:	eec0 7a20 	vdiv.f32	s15, s0, s1
d004530c:	ee68 8aa7 	vmul.f32	s17, s17, s15
d0045310:	ee29 9a27 	vmul.f32	s18, s18, s15
d0045314:	ee28 8a27 	vmul.f32	s16, s16, s15
d0045318:	e5cf      	b.n	d0044eba <submitEntitySolid+0x36a>
d004531a:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d004531e:	fe8a 0a29 	vmaxnm.f32	s0, s20, s19
d0045322:	fe80 0a67 	vminnm.f32	s0, s0, s15
d0045326:	f7fe fbeb 	bl	d0043b00 <brightnessToShadeF>
d004532a:	eeb0 8a40 	vmov.f32	s16, s0
d004532e:	f8dd a010 	ldr.w	sl, [sp, #16]
d0045332:	f8dd 8014 	ldr.w	r8, [sp, #20]
d0045336:	4651      	mov	r1, sl
d0045338:	ed97 3a00 	vldr	s6, [r7]
d004533c:	4640      	mov	r0, r8
d004533e:	edd7 3a01 	vldr	s7, [r7, #4]
d0045342:	ed97 4a02 	vldr	s8, [r7, #8]
d0045346:	edd6 1a00 	vldr	s3, [r6]
d004534a:	ed96 2a01 	vldr	s4, [r6, #4]
d004534e:	edd6 2a02 	vldr	s5, [r6, #8]
d0045352:	ed94 0a00 	vldr	s0, [r4]
d0045356:	edd4 0a01 	vldr	s1, [r4, #4]
d004535a:	ed94 1a02 	vldr	s2, [r4, #8]
d004535e:	f7fe fc3b 	bl	d0043bd8 <clipTriangleToFrustum>
d0045362:	2802      	cmp	r0, #2
d0045364:	dc09      	bgt.n	d004537a <submitEntitySolid+0x82a>
d0045366:	9b03      	ldr	r3, [sp, #12]
d0045368:	f109 0901 	add.w	r9, r9, #1
d004536c:	695b      	ldr	r3, [r3, #20]
d004536e:	9302      	str	r3, [sp, #8]
d0045370:	9b02      	ldr	r3, [sp, #8]
d0045372:	4599      	cmp	r9, r3
d0045374:	f6ff ace3 	blt.w	d0044d3e <submitEntitySolid+0x1ee>
d0045378:	e674      	b.n	d0045064 <submitEntitySolid+0x514>
d004537a:	eef0 4a48 	vmov.f32	s9, s16
d004537e:	1e44      	subs	r4, r0, #1
d0045380:	2601      	movs	r6, #1
d0045382:	4647      	mov	r7, r8
d0045384:	4650      	mov	r0, sl
d0045386:	4633      	mov	r3, r6
d0045388:	3601      	adds	r6, #1
d004538a:	7b6a      	ldrb	r2, [r5, #13]
d004538c:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0045390:	7b29      	ldrb	r1, [r5, #12]
d0045392:	eb06 0c46 	add.w	ip, r6, r6, lsl #1
d0045396:	ed97 0a00 	vldr	s0, [r7]
d004539a:	eb07 0383 	add.w	r3, r7, r3, lsl #2
d004539e:	edd7 0a01 	vldr	s1, [r7, #4]
d00453a2:	eb07 0c8c 	add.w	ip, r7, ip, lsl #2
d00453a6:	ed97 1a02 	vldr	s2, [r7, #8]
d00453aa:	edd3 1a00 	vldr	s3, [r3]
d00453ae:	ed93 2a01 	vldr	s4, [r3, #4]
d00453b2:	edd3 2a02 	vldr	s5, [r3, #8]
d00453b6:	ed9c 3a00 	vldr	s6, [ip]
d00453ba:	eddc 3a01 	vldr	s7, [ip, #4]
d00453be:	ed9c 4a02 	vldr	s8, [ip, #8]
d00453c2:	f7ff f865 	bl	d0044490 <submitClippedTri>
d00453c6:	42a6      	cmp	r6, r4
d00453c8:	d1dd      	bne.n	d0045386 <submitEntitySolid+0x836>
d00453ca:	e7cc      	b.n	d0045366 <submitEntitySolid+0x816>
d00453cc:	eddf 4a4c 	vldr	s9, [pc, #304]	; d0045500 <submitEntitySolid+0x9b0>
d00453d0:	eef0 2a64 	vmov.f32	s5, s9
d00453d4:	eeb0 3a64 	vmov.f32	s6, s9
d00453d8:	e695      	b.n	d0045106 <submitEntitySolid+0x5b6>
d00453da:	eef0 aa64 	vmov.f32	s21, s9
d00453de:	4634      	mov	r4, r6
d00453e0:	eeb0 fa43 	vmov.f32	s30, s6
d00453e4:	463e      	mov	r6, r7
d00453e6:	eef0 ca62 	vmov.f32	s25, s5
d00453ea:	4647      	mov	r7, r8
d00453ec:	eeb0 da42 	vmov.f32	s26, s4
d00453f0:	4690      	mov	r8, r2
d00453f2:	eeb0 aa61 	vmov.f32	s20, s3
d00453f6:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00453fa:	fe89 0a8a 	vmaxnm.f32	s0, s19, s20
d00453fe:	fe80 0a67 	vminnm.f32	s0, s0, s15
d0045402:	f7fe fb7d 	bl	d0043b00 <brightnessToShadeF>
d0045406:	eeb0 8a40 	vmov.f32	s16, s0
d004540a:	f1b8 0f00 	cmp.w	r8, #0
d004540e:	f47f ae07 	bne.w	d0045020 <submitEntitySolid+0x4d0>
d0045412:	e78c      	b.n	d004532e <submitEntitySolid+0x7de>
d0045414:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0045418:	e700      	b.n	d004521c <submitEntitySolid+0x6cc>
d004541a:	eef0 0a67 	vmov.f32	s1, s15
d004541e:	ed8d 1a13 	vstr	s2, [sp, #76]	; 0x4c
d0045422:	9212      	str	r2, [sp, #72]	; 0x48
d0045424:	edcd 1a11 	vstr	s3, [sp, #68]	; 0x44
d0045428:	ed8d 2a10 	vstr	s4, [sp, #64]	; 0x40
d004542c:	edcd 2a0f 	vstr	s5, [sp, #60]	; 0x3c
d0045430:	ed8d 3a0e 	vstr	s6, [sp, #56]	; 0x38
d0045434:	edcd 4a0d 	vstr	s9, [sp, #52]	; 0x34
d0045438:	ed8d 5a02 	vstr	s10, [sp, #8]
d004543c:	ed8d 6a01 	vstr	s12, [sp, #4]
d0045440:	f7fd f964 	bl	d004270c <powf>
d0045444:	ed9d 1a13 	vldr	s2, [sp, #76]	; 0x4c
d0045448:	9a12      	ldr	r2, [sp, #72]	; 0x48
d004544a:	eddd 1a11 	vldr	s3, [sp, #68]	; 0x44
d004544e:	ed9d 2a10 	vldr	s4, [sp, #64]	; 0x40
d0045452:	eddd 2a0f 	vldr	s5, [sp, #60]	; 0x3c
d0045456:	ed9d 3a0e 	vldr	s6, [sp, #56]	; 0x38
d004545a:	eddd 4a0d 	vldr	s9, [sp, #52]	; 0x34
d004545e:	ed9d 5a02 	vldr	s10, [sp, #8]
d0045462:	ed9d 6a01 	vldr	s12, [sp, #4]
d0045466:	e71e      	b.n	d00452a6 <submitEntitySolid+0x756>
d0045468:	4634      	mov	r4, r6
d004546a:	eef0 aa64 	vmov.f32	s21, s9
d004546e:	463e      	mov	r6, r7
d0045470:	eeb0 fa43 	vmov.f32	s30, s6
d0045474:	4647      	mov	r7, r8
d0045476:	eef0 ca62 	vmov.f32	s25, s5
d004547a:	eeb0 da42 	vmov.f32	s26, s4
d004547e:	4690      	mov	r8, r2
d0045480:	eeb0 aa61 	vmov.f32	s20, s3
d0045484:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0045488:	e7b5      	b.n	d00453f6 <submitEntitySolid+0x8a6>
d004548a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004548e:	db21      	blt.n	d00454d4 <submitEntitySolid+0x984>
d0045490:	ee36 6a63 	vsub.f32	s12, s12, s7
d0045494:	ee70 3ae3 	vsub.f32	s7, s1, s7
d0045498:	eeb6 4a08 	vmov.f32	s8, #104	; 0x3f400000  0.750
d004549c:	eec6 5a23 	vdiv.f32	s11, s12, s7
d00454a0:	ed9f 6a17 	vldr	s12, [pc, #92]	; d0045500 <submitEntitySolid+0x9b0>
d00454a4:	fe85 6a86 	vmaxnm.f32	s12, s11, s12
d00454a8:	eef0 5a45 	vmov.f32	s11, s10
d00454ac:	fe86 6a45 	vminnm.f32	s12, s12, s10
d00454b0:	eee6 5a44 	vfms.f32	s11, s12, s8
d00454b4:	eeb0 6a65 	vmov.f32	s12, s11
d00454b8:	e6ab      	b.n	d0045212 <submitEntitySolid+0x6c2>
d00454ba:	eeb1 7ae7 	vsqrt.f32	s14, s15
d00454be:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d00454c2:	eec6 7a87 	vdiv.f32	s15, s13, s14
d00454c6:	ee23 3a27 	vmul.f32	s6, s6, s15
d00454ca:	ee62 2aa7 	vmul.f32	s5, s5, s15
d00454ce:	ee64 4aa7 	vmul.f32	s9, s9, s15
d00454d2:	e618      	b.n	d0045106 <submitEntitySolid+0x5b6>
d00454d4:	ee36 6a60 	vsub.f32	s12, s12, s1
d00454d8:	ee75 5ae0 	vsub.f32	s11, s11, s1
d00454dc:	ee86 4a25 	vdiv.f32	s8, s12, s11
d00454e0:	ed9f 6a07 	vldr	s12, [pc, #28]	; d0045500 <submitEntitySolid+0x9b0>
d00454e4:	eef5 5a00 	vmov.f32	s11, #80	; 0x3e800000  0.250
d00454e8:	fe84 6a06 	vmaxnm.f32	s12, s8, s12
d00454ec:	fe86 6a45 	vminnm.f32	s12, s12, s10
d00454f0:	ee35 6a46 	vsub.f32	s12, s10, s12
d00454f4:	ee26 6a25 	vmul.f32	s12, s12, s11
d00454f8:	e68b      	b.n	d0045212 <submitEntitySolid+0x6c2>
d00454fa:	f04f 0801 	mov.w	r8, #1
d00454fe:	e5c0      	b.n	d0045082 <submitEntitySolid+0x532>
d0045500:	00000000 	.word	0x00000000

d0045504 <submitWorldEntities>:
d0045504:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d0045508:	4c30      	ldr	r4, [pc, #192]	; (d00455cc <submitWorldEntities+0xc8>)
d004550a:	b09d      	sub	sp, #116	; 0x74
d004550c:	f04f 0800 	mov.w	r8, #0
d0045510:	f8df 90bc 	ldr.w	r9, [pc, #188]	; d00455d0 <submitWorldEntities+0xcc>
d0045514:	4605      	mov	r5, r0
d0045516:	f504 46c0 	add.w	r6, r4, #24576	; 0x6000
d004551a:	f100 0710 	add.w	r7, r0, #16
d004551e:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0045522:	2b00      	cmp	r3, #0
d0045524:	d03f      	beq.n	d00455a6 <submitWorldEntities+0xa2>
d0045526:	68e3      	ldr	r3, [r4, #12]
d0045528:	2250      	movs	r2, #80	; 0x50
d004552a:	4639      	mov	r1, r7
d004552c:	4668      	mov	r0, sp
d004552e:	b3d3      	cbz	r3, d00455a6 <submitWorldEntities+0xa2>
d0045530:	f894 3035 	ldrb.w	r3, [r4, #53]	; 0x35
d0045534:	07db      	lsls	r3, r3, #31
d0045536:	d536      	bpl.n	d00455a6 <submitWorldEntities+0xa2>
d0045538:	ed94 0a00 	vldr	s0, [r4]
d004553c:	edd4 0a01 	vldr	s1, [r4, #4]
d0045540:	ed94 1a02 	vldr	s2, [r4, #8]
d0045544:	ed8d 0a17 	vstr	s0, [sp, #92]	; 0x5c
d0045548:	edcd 0a16 	vstr	s1, [sp, #88]	; 0x58
d004554c:	ed8d 1a15 	vstr	s2, [sp, #84]	; 0x54
d0045550:	f000 fd2e 	bl	d0045fb0 <memcpy>
d0045554:	ed9d 1a15 	vldr	s2, [sp, #84]	; 0x54
d0045558:	ed9d 0a17 	vldr	s0, [sp, #92]	; 0x5c
d004555c:	eddd 0a16 	vldr	s1, [sp, #88]	; 0x58
d0045560:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0045564:	f7fd fe2c 	bl	d00431c0 <worldToCamera>
d0045568:	68e3      	ldr	r3, [r4, #12]
d004556a:	ed95 7a11 	vldr	s14, [r5, #68]	; 0x44
d004556e:	edd3 7a06 	vldr	s15, [r3, #24]
d0045572:	ed8d 0a19 	vstr	s0, [sp, #100]	; 0x64
d0045576:	ee71 6a67 	vsub.f32	s13, s2, s15
d004557a:	edcd 0a1a 	vstr	s1, [sp, #104]	; 0x68
d004557e:	ee71 7a27 	vadd.f32	s15, s2, s15
d0045582:	ed8d 1a1b 	vstr	s2, [sp, #108]	; 0x6c
d0045586:	eef4 6ac7 	vcmpe.f32	s13, s14
d004558a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004558e:	dc0a      	bgt.n	d00455a6 <submitWorldEntities+0xa2>
d0045590:	ed95 7a10 	vldr	s14, [r5, #64]	; 0x40
d0045594:	eef4 7ac7 	vcmpe.f32	s15, s14
d0045598:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004559c:	d403      	bmi.n	d00455a6 <submitWorldEntities+0xa2>
d004559e:	f849 4028 	str.w	r4, [r9, r8, lsl #2]
d00455a2:	f108 0801 	add.w	r8, r8, #1
d00455a6:	3460      	adds	r4, #96	; 0x60
d00455a8:	42b4      	cmp	r4, r6
d00455aa:	d1b8      	bne.n	d004551e <submitWorldEntities+0x1a>
d00455ac:	f1b8 0f00 	cmp.w	r8, #0
d00455b0:	d009      	beq.n	d00455c6 <submitWorldEntities+0xc2>
d00455b2:	4c07      	ldr	r4, [pc, #28]	; (d00455d0 <submitWorldEntities+0xcc>)
d00455b4:	eb04 0888 	add.w	r8, r4, r8, lsl #2
d00455b8:	f854 0b04 	ldr.w	r0, [r4], #4
d00455bc:	4629      	mov	r1, r5
d00455be:	f7ff fac7 	bl	d0044b50 <submitEntitySolid>
d00455c2:	45a0      	cmp	r8, r4
d00455c4:	d1f8      	bne.n	d00455b8 <submitWorldEntities+0xb4>
d00455c6:	b01d      	add	sp, #116	; 0x74
d00455c8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d00455cc:	d00e1d80 	.word	0xd00e1d80
d00455d0:	d00e18e0 	.word	0xd00e18e0

d00455d4 <Render3D>:
d00455d4:	b5f0      	push	{r4, r5, r6, r7, lr}
d00455d6:	4604      	mov	r4, r0
d00455d8:	4e6f      	ldr	r6, [pc, #444]	; (d0045798 <Render3D+0x1c4>)
d00455da:	2700      	movs	r7, #0
d00455dc:	ed2d 8b02 	vpush	{d8}
d00455e0:	b087      	sub	sp, #28
d00455e2:	6037      	str	r7, [r6, #0]
d00455e4:	f7ff ff8e 	bl	d0045504 <submitWorldEntities>
d00455e8:	4620      	mov	r0, r4
d00455ea:	f7fd f94d 	bl	d0042888 <sb3dParticlesRender>
d00455ee:	4b6b      	ldr	r3, [pc, #428]	; (d004579c <Render3D+0x1c8>)
d00455f0:	681d      	ldr	r5, [r3, #0]
d00455f2:	2d00      	cmp	r5, #0
d00455f4:	d04d      	beq.n	d0045692 <Render3D+0xbe>
d00455f6:	6833      	ldr	r3, [r6, #0]
d00455f8:	42bb      	cmp	r3, r7
d00455fa:	dd46      	ble.n	d004568a <Render3D+0xb6>
d00455fc:	eeb6 8a00 	vmov.f32	s16, #96	; 0x3f000000  0.5
d0045600:	4c67      	ldr	r4, [pc, #412]	; (d00457a0 <Render3D+0x1cc>)
d0045602:	eddf 8a68 	vldr	s17, [pc, #416]	; d00457a4 <Render3D+0x1d0>
d0045606:	edd4 7a07 	vldr	s15, [r4, #28]
d004560a:	3701      	adds	r7, #1
d004560c:	f894 3035 	ldrb.w	r3, [r4, #53]	; 0x35
d0045610:	ee77 7a88 	vadd.f32	s15, s15, s16
d0045614:	ee07 3a10 	vmov	s14, r3
d0045618:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004561c:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0045620:	ee17 1a90 	vmov	r1, s15
d0045624:	eef0 7a48 	vmov.f32	s15, s16
d0045628:	2904      	cmp	r1, #4
d004562a:	eee7 7a28 	vfma.f32	s15, s14, s17
d004562e:	bfa8      	it	ge
d0045630:	2104      	movge	r1, #4
d0045632:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d0045636:	b153      	cbz	r3, d004564e <Render3D+0x7a>
d0045638:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004563c:	ee17 3a90 	vmov	r3, s15
d0045640:	f1c3 0305 	rsb	r3, r3, #5
d0045644:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0045648:	4299      	cmp	r1, r3
d004564a:	bfa8      	it	ge
d004564c:	4619      	movge	r1, r3
d004564e:	f894 0034 	ldrb.w	r0, [r4, #52]	; 0x34
d0045652:	f7fb f973 	bl	d004093c <shadeColor>
d0045656:	4605      	mov	r5, r0
d0045658:	68e3      	ldr	r3, [r4, #12]
d004565a:	68a2      	ldr	r2, [r4, #8]
d004565c:	6861      	ldr	r1, [r4, #4]
d004565e:	9000      	str	r0, [sp, #0]
d0045660:	6820      	ldr	r0, [r4, #0]
d0045662:	f7fb f91d 	bl	d00408a0 <drawLine>
d0045666:	9500      	str	r5, [sp, #0]
d0045668:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
d004566c:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
d0045670:	f7fb f916 	bl	d00408a0 <drawLine>
d0045674:	9500      	str	r5, [sp, #0]
d0045676:	e9d4 2300 	ldrd	r2, r3, [r4]
d004567a:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
d004567e:	f7fb f90f 	bl	d00408a0 <drawLine>
d0045682:	6833      	ldr	r3, [r6, #0]
d0045684:	3440      	adds	r4, #64	; 0x40
d0045686:	42bb      	cmp	r3, r7
d0045688:	dcbd      	bgt.n	d0045606 <Render3D+0x32>
d004568a:	b007      	add	sp, #28
d004568c:	ecbd 8b02 	vpop	{d8}
d0045690:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0045692:	f44f 2296 	mov.w	r2, #307200	; 0x4b000
d0045696:	21ff      	movs	r1, #255	; 0xff
d0045698:	4843      	ldr	r0, [pc, #268]	; (d00457a8 <Render3D+0x1d4>)
d004569a:	f000 fc97 	bl	d0045fcc <memset>
d004569e:	4b43      	ldr	r3, [pc, #268]	; (d00457ac <Render3D+0x1d8>)
d00456a0:	681f      	ldr	r7, [r3, #0]
d00456a2:	b33f      	cbz	r7, d00456f4 <Render3D+0x120>
d00456a4:	6833      	ldr	r3, [r6, #0]
d00456a6:	2b00      	cmp	r3, #0
d00456a8:	ddef      	ble.n	d004568a <Render3D+0xb6>
d00456aa:	4c3d      	ldr	r4, [pc, #244]	; (d00457a0 <Render3D+0x1cc>)
d00456ac:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d00456b0:	3501      	adds	r5, #1
d00456b2:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d00456b4:	8c21      	ldrh	r1, [r4, #32]
d00456b6:	6962      	ldr	r2, [r4, #20]
d00456b8:	8ca7      	ldrh	r7, [r4, #36]	; 0x24
d00456ba:	9305      	str	r3, [sp, #20]
d00456bc:	9704      	str	r7, [sp, #16]
d00456be:	9003      	str	r0, [sp, #12]
d00456c0:	9102      	str	r1, [sp, #8]
d00456c2:	9201      	str	r2, [sp, #4]
d00456c4:	6923      	ldr	r3, [r4, #16]
d00456c6:	9300      	str	r3, [sp, #0]
d00456c8:	edd4 1a07 	vldr	s3, [r4, #28]
d00456cc:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00456d0:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00456d4:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00456d8:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d00456dc:	e9d4 0100 	ldrd	r0, r1, [r4]
d00456e0:	f7fb f93c 	bl	d004095c <fillTriangleFlat>
d00456e4:	6833      	ldr	r3, [r6, #0]
d00456e6:	3440      	adds	r4, #64	; 0x40
d00456e8:	42ab      	cmp	r3, r5
d00456ea:	dcdf      	bgt.n	d00456ac <Render3D+0xd8>
d00456ec:	b007      	add	sp, #28
d00456ee:	ecbd 8b02 	vpop	{d8}
d00456f2:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00456f4:	4b2e      	ldr	r3, [pc, #184]	; (d00457b0 <Render3D+0x1dc>)
d00456f6:	681d      	ldr	r5, [r3, #0]
d00456f8:	6833      	ldr	r3, [r6, #0]
d00456fa:	b335      	cbz	r5, d004574a <Render3D+0x176>
d00456fc:	2b00      	cmp	r3, #0
d00456fe:	ddc4      	ble.n	d004568a <Render3D+0xb6>
d0045700:	4c27      	ldr	r4, [pc, #156]	; (d00457a0 <Render3D+0x1cc>)
d0045702:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0045706:	3701      	adds	r7, #1
d0045708:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d004570a:	8c21      	ldrh	r1, [r4, #32]
d004570c:	6962      	ldr	r2, [r4, #20]
d004570e:	8ca5      	ldrh	r5, [r4, #36]	; 0x24
d0045710:	9305      	str	r3, [sp, #20]
d0045712:	6923      	ldr	r3, [r4, #16]
d0045714:	9504      	str	r5, [sp, #16]
d0045716:	9003      	str	r0, [sp, #12]
d0045718:	9102      	str	r1, [sp, #8]
d004571a:	9201      	str	r2, [sp, #4]
d004571c:	9300      	str	r3, [sp, #0]
d004571e:	edd4 1a07 	vldr	s3, [r4, #28]
d0045722:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0045726:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d004572a:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d004572e:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d0045732:	e9d4 0100 	ldrd	r0, r1, [r4]
d0045736:	f7fc f9dd 	bl	d0041af4 <fillTriangleDitherBayer2Mode>
d004573a:	6833      	ldr	r3, [r6, #0]
d004573c:	3440      	adds	r4, #64	; 0x40
d004573e:	42bb      	cmp	r3, r7
d0045740:	dcdf      	bgt.n	d0045702 <Render3D+0x12e>
d0045742:	b007      	add	sp, #28
d0045744:	ecbd 8b02 	vpop	{d8}
d0045748:	bdf0      	pop	{r4, r5, r6, r7, pc}
d004574a:	2b00      	cmp	r3, #0
d004574c:	dd9d      	ble.n	d004568a <Render3D+0xb6>
d004574e:	4c14      	ldr	r4, [pc, #80]	; (d00457a0 <Render3D+0x1cc>)
d0045750:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0045754:	3501      	adds	r5, #1
d0045756:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d0045758:	8c21      	ldrh	r1, [r4, #32]
d004575a:	6962      	ldr	r2, [r4, #20]
d004575c:	8ca7      	ldrh	r7, [r4, #36]	; 0x24
d004575e:	9305      	str	r3, [sp, #20]
d0045760:	6923      	ldr	r3, [r4, #16]
d0045762:	9704      	str	r7, [sp, #16]
d0045764:	9003      	str	r0, [sp, #12]
d0045766:	9102      	str	r1, [sp, #8]
d0045768:	9201      	str	r2, [sp, #4]
d004576a:	9300      	str	r3, [sp, #0]
d004576c:	edd4 1a07 	vldr	s3, [r4, #28]
d0045770:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0045774:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0045778:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d004577c:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d0045780:	e9d4 0100 	ldrd	r0, r1, [r4]
d0045784:	f7fb fcf8 	bl	d0041178 <fillTriangleDitherBayer>
d0045788:	6833      	ldr	r3, [r6, #0]
d004578a:	3440      	adds	r4, #64	; 0x40
d004578c:	42ab      	cmp	r3, r5
d004578e:	dcdf      	bgt.n	d0045750 <Render3D+0x17c>
d0045790:	b007      	add	sp, #28
d0045792:	ecbd 8b02 	vpop	{d8}
d0045796:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0045798:	d00558a4 	.word	0xd00558a4
d004579c:	d00d58c4 	.word	0xd00d58c4
d00457a0:	d00558c0 	.word	0xd00558c0
d00457a4:	3ca0a0a1 	.word	0x3ca0a0a1
d00457a8:	d00e7d80 	.word	0xd00e7d80
d00457ac:	d00558a0 	.word	0xd00558a0
d00457b0:	d00d58c0 	.word	0xd00d58c0

d00457b4 <loadMeshSB3D>:
d00457b4:	2800      	cmp	r0, #0
d00457b6:	d07a      	beq.n	d00458ae <loadMeshSB3D+0xfa>
d00457b8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00457bc:	460d      	mov	r5, r1
d00457be:	4601      	mov	r1, r0
d00457c0:	fab5 f085 	clz	r0, r5
d00457c4:	ed2d 8b02 	vpush	{d8}
d00457c8:	0940      	lsrs	r0, r0, #5
d00457ca:	b08c      	sub	sp, #48	; 0x30
d00457cc:	2d00      	cmp	r5, #0
d00457ce:	d068      	beq.n	d00458a2 <loadMeshSB3D+0xee>
d00457d0:	4c6c      	ldr	r4, [pc, #432]	; (d0045984 <loadMeshSB3D+0x1d0>)
d00457d2:	2201      	movs	r2, #1
d00457d4:	eeb0 8a40 	vmov.f32	s16, s0
d00457d8:	7923      	ldrb	r3, [r4, #4]
d00457da:	7966      	ldrb	r6, [r4, #5]
d00457dc:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d00457e0:	79a6      	ldrb	r6, [r4, #6]
d00457e2:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d00457e6:	79e6      	ldrb	r6, [r4, #7]
d00457e8:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d00457ec:	681b      	ldr	r3, [r3, #0]
d00457ee:	681b      	ldr	r3, [r3, #0]
d00457f0:	4798      	blx	r3
d00457f2:	2800      	cmp	r0, #0
d00457f4:	d155      	bne.n	d00458a2 <loadMeshSB3D+0xee>
d00457f6:	f894 c004 	ldrb.w	ip, [r4, #4]
d00457fa:	2204      	movs	r2, #4
d00457fc:	7961      	ldrb	r1, [r4, #5]
d00457fe:	ab02      	add	r3, sp, #8
d0045800:	79a7      	ldrb	r7, [r4, #6]
d0045802:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0045806:	79e6      	ldrb	r6, [r4, #7]
d0045808:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d004580c:	a903      	add	r1, sp, #12
d004580e:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0045812:	6836      	ldr	r6, [r6, #0]
d0045814:	68b6      	ldr	r6, [r6, #8]
d0045816:	47b0      	blx	r6
d0045818:	2800      	cmp	r0, #0
d004581a:	d13f      	bne.n	d004589c <loadMeshSB3D+0xe8>
d004581c:	4b5a      	ldr	r3, [pc, #360]	; (d0045988 <loadMeshSB3D+0x1d4>)
d004581e:	9a03      	ldr	r2, [sp, #12]
d0045820:	429a      	cmp	r2, r3
d0045822:	d13b      	bne.n	d004589c <loadMeshSB3D+0xe8>
d0045824:	f894 c004 	ldrb.w	ip, [r4, #4]
d0045828:	ab02      	add	r3, sp, #8
d004582a:	7961      	ldrb	r1, [r4, #5]
d004582c:	2204      	movs	r2, #4
d004582e:	79a7      	ldrb	r7, [r4, #6]
d0045830:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0045834:	79e6      	ldrb	r6, [r4, #7]
d0045836:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d004583a:	a904      	add	r1, sp, #16
d004583c:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0045840:	6836      	ldr	r6, [r6, #0]
d0045842:	68b6      	ldr	r6, [r6, #8]
d0045844:	47b0      	blx	r6
d0045846:	bb48      	cbnz	r0, d004589c <loadMeshSB3D+0xe8>
d0045848:	9b04      	ldr	r3, [sp, #16]
d004584a:	2b02      	cmp	r3, #2
d004584c:	d126      	bne.n	d004589c <loadMeshSB3D+0xe8>
d004584e:	f894 c004 	ldrb.w	ip, [r4, #4]
d0045852:	ab02      	add	r3, sp, #8
d0045854:	7961      	ldrb	r1, [r4, #5]
d0045856:	2204      	movs	r2, #4
d0045858:	79a7      	ldrb	r7, [r4, #6]
d004585a:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d004585e:	79e6      	ldrb	r6, [r4, #7]
d0045860:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0045864:	a905      	add	r1, sp, #20
d0045866:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d004586a:	6836      	ldr	r6, [r6, #0]
d004586c:	68b6      	ldr	r6, [r6, #8]
d004586e:	47b0      	blx	r6
d0045870:	b9a0      	cbnz	r0, d004589c <loadMeshSB3D+0xe8>
d0045872:	7921      	ldrb	r1, [r4, #4]
d0045874:	ab02      	add	r3, sp, #8
d0045876:	7966      	ldrb	r6, [r4, #5]
d0045878:	2204      	movs	r2, #4
d004587a:	79a7      	ldrb	r7, [r4, #6]
d004587c:	ea41 2106 	orr.w	r1, r1, r6, lsl #8
d0045880:	79e6      	ldrb	r6, [r4, #7]
d0045882:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0045886:	a906      	add	r1, sp, #24
d0045888:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d004588c:	6836      	ldr	r6, [r6, #0]
d004588e:	68b6      	ldr	r6, [r6, #8]
d0045890:	47b0      	blx	r6
d0045892:	b918      	cbnz	r0, d004589c <loadMeshSB3D+0xe8>
d0045894:	9b05      	ldr	r3, [sp, #20]
d0045896:	b10b      	cbz	r3, d004589c <loadMeshSB3D+0xe8>
d0045898:	9e06      	ldr	r6, [sp, #24]
d004589a:	b956      	cbnz	r6, d00458b2 <loadMeshSB3D+0xfe>
d004589c:	2000      	movs	r0, #0
d004589e:	f000 f98f 	bl	d0045bc0 <fclose>
d00458a2:	2000      	movs	r0, #0
d00458a4:	b00c      	add	sp, #48	; 0x30
d00458a6:	ecbd 8b02 	vpop	{d8}
d00458aa:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00458ae:	2000      	movs	r0, #0
d00458b0:	4770      	bx	lr
d00458b2:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d00458b6:	2700      	movs	r7, #0
d00458b8:	606b      	str	r3, [r5, #4]
d00458ba:	616e      	str	r6, [r5, #20]
d00458bc:	0080      	lsls	r0, r0, #2
d00458be:	60ef      	str	r7, [r5, #12]
d00458c0:	f000 fb66 	bl	d0045f90 <malloc>
d00458c4:	4603      	mov	r3, r0
d00458c6:	0130      	lsls	r0, r6, #4
d00458c8:	461e      	mov	r6, r3
d00458ca:	602b      	str	r3, [r5, #0]
d00458cc:	f000 fb60 	bl	d0045f90 <malloc>
d00458d0:	60af      	str	r7, [r5, #8]
d00458d2:	6128      	str	r0, [r5, #16]
d00458d4:	2e00      	cmp	r6, #0
d00458d6:	f000 80fb 	beq.w	d0045ad0 <loadMeshSB3D+0x31c>
d00458da:	2800      	cmp	r0, #0
d00458dc:	f000 80eb 	beq.w	d0045ab6 <loadMeshSB3D+0x302>
d00458e0:	46b8      	mov	r8, r7
d00458e2:	e017      	b.n	d0045914 <loadMeshSB3D+0x160>
d00458e4:	eddd 6a09 	vldr	s13, [sp, #36]	; 0x24
d00458e8:	ed9d 7a0a 	vldr	s14, [sp, #40]	; 0x28
d00458ec:	eddd 7a0b 	vldr	s15, [sp, #44]	; 0x2c
d00458f0:	ee66 6a88 	vmul.f32	s13, s13, s16
d00458f4:	682b      	ldr	r3, [r5, #0]
d00458f6:	ee27 7a08 	vmul.f32	s14, s14, s16
d00458fa:	9905      	ldr	r1, [sp, #20]
d00458fc:	ee67 7a88 	vmul.f32	s15, s15, s16
d0045900:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d0045904:	4541      	cmp	r1, r8
d0045906:	edc3 6a00 	vstr	s13, [r3]
d004590a:	ed83 7a01 	vstr	s14, [r3, #4]
d004590e:	edc3 7a02 	vstr	s15, [r3, #8]
d0045912:	d931      	bls.n	d0045978 <loadMeshSB3D+0x1c4>
d0045914:	f894 c004 	ldrb.w	ip, [r4, #4]
d0045918:	220c      	movs	r2, #12
d004591a:	7960      	ldrb	r0, [r4, #5]
d004591c:	ab02      	add	r3, sp, #8
d004591e:	79a7      	ldrb	r7, [r4, #6]
d0045920:	a909      	add	r1, sp, #36	; 0x24
d0045922:	ea4c 2000 	orr.w	r0, ip, r0, lsl #8
d0045926:	79e6      	ldrb	r6, [r4, #7]
d0045928:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d004592c:	2000      	movs	r0, #0
d004592e:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0045932:	6836      	ldr	r6, [r6, #0]
d0045934:	68b6      	ldr	r6, [r6, #8]
d0045936:	47b0      	blx	r6
d0045938:	eb08 0248 	add.w	r2, r8, r8, lsl #1
d004593c:	f108 0801 	add.w	r8, r8, #1
d0045940:	2800      	cmp	r0, #0
d0045942:	d0cf      	beq.n	d00458e4 <loadMeshSB3D+0x130>
d0045944:	6828      	ldr	r0, [r5, #0]
d0045946:	b108      	cbz	r0, d004594c <loadMeshSB3D+0x198>
d0045948:	f000 fb2a 	bl	d0045fa0 <free>
d004594c:	6928      	ldr	r0, [r5, #16]
d004594e:	b108      	cbz	r0, d0045954 <loadMeshSB3D+0x1a0>
d0045950:	f000 fb26 	bl	d0045fa0 <free>
d0045954:	68a8      	ldr	r0, [r5, #8]
d0045956:	b108      	cbz	r0, d004595c <loadMeshSB3D+0x1a8>
d0045958:	f000 fb22 	bl	d0045fa0 <free>
d004595c:	2400      	movs	r4, #0
d004595e:	2300      	movs	r3, #0
d0045960:	4620      	mov	r0, r4
d0045962:	602c      	str	r4, [r5, #0]
d0045964:	612c      	str	r4, [r5, #16]
d0045966:	60ac      	str	r4, [r5, #8]
d0045968:	606c      	str	r4, [r5, #4]
d004596a:	616c      	str	r4, [r5, #20]
d004596c:	60ec      	str	r4, [r5, #12]
d004596e:	61ab      	str	r3, [r5, #24]
d0045970:	f000 f926 	bl	d0045bc0 <fclose>
d0045974:	4620      	mov	r0, r4
d0045976:	e795      	b.n	d00458a4 <loadMeshSB3D+0xf0>
d0045978:	9b06      	ldr	r3, [sp, #24]
d004597a:	2b00      	cmp	r3, #0
d004597c:	f000 808a 	beq.w	d0045a94 <loadMeshSB3D+0x2e0>
d0045980:	4606      	mov	r6, r0
d0045982:	e06e      	b.n	d0045a62 <loadMeshSB3D+0x2ae>
d0045984:	2001f000 	.word	0x2001f000
d0045988:	44334253 	.word	0x44334253
d004598c:	f894 e004 	ldrb.w	lr, [r4, #4]
d0045990:	7967      	ldrb	r7, [r4, #5]
d0045992:	f894 c006 	ldrb.w	ip, [r4, #6]
d0045996:	ea4e 2e07 	orr.w	lr, lr, r7, lsl #8
d004599a:	79e7      	ldrb	r7, [r4, #7]
d004599c:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d00459a0:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d00459a4:	683f      	ldr	r7, [r7, #0]
d00459a6:	68bf      	ldr	r7, [r7, #8]
d00459a8:	47b8      	blx	r7
d00459aa:	ab02      	add	r3, sp, #8
d00459ac:	2204      	movs	r2, #4
d00459ae:	a909      	add	r1, sp, #36	; 0x24
d00459b0:	2800      	cmp	r0, #0
d00459b2:	d1c7      	bne.n	d0045944 <loadMeshSB3D+0x190>
d00459b4:	f894 e004 	ldrb.w	lr, [r4, #4]
d00459b8:	7967      	ldrb	r7, [r4, #5]
d00459ba:	f894 c006 	ldrb.w	ip, [r4, #6]
d00459be:	ea4e 2e07 	orr.w	lr, lr, r7, lsl #8
d00459c2:	79e7      	ldrb	r7, [r4, #7]
d00459c4:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d00459c8:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d00459cc:	683f      	ldr	r7, [r7, #0]
d00459ce:	68bf      	ldr	r7, [r7, #8]
d00459d0:	47b8      	blx	r7
d00459d2:	ab02      	add	r3, sp, #8
d00459d4:	2201      	movs	r2, #1
d00459d6:	f10d 0106 	add.w	r1, sp, #6
d00459da:	2800      	cmp	r0, #0
d00459dc:	d1b2      	bne.n	d0045944 <loadMeshSB3D+0x190>
d00459de:	f894 e004 	ldrb.w	lr, [r4, #4]
d00459e2:	7967      	ldrb	r7, [r4, #5]
d00459e4:	f894 c006 	ldrb.w	ip, [r4, #6]
d00459e8:	ea4e 2e07 	orr.w	lr, lr, r7, lsl #8
d00459ec:	79e7      	ldrb	r7, [r4, #7]
d00459ee:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d00459f2:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d00459f6:	683f      	ldr	r7, [r7, #0]
d00459f8:	68bf      	ldr	r7, [r7, #8]
d00459fa:	47b8      	blx	r7
d00459fc:	ab02      	add	r3, sp, #8
d00459fe:	2201      	movs	r2, #1
d0045a00:	f10d 0107 	add.w	r1, sp, #7
d0045a04:	2800      	cmp	r0, #0
d0045a06:	d19d      	bne.n	d0045944 <loadMeshSB3D+0x190>
d0045a08:	f894 e004 	ldrb.w	lr, [r4, #4]
d0045a0c:	7967      	ldrb	r7, [r4, #5]
d0045a0e:	f894 c006 	ldrb.w	ip, [r4, #6]
d0045a12:	ea4e 2e07 	orr.w	lr, lr, r7, lsl #8
d0045a16:	79e7      	ldrb	r7, [r4, #7]
d0045a18:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d0045a1c:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0045a20:	683f      	ldr	r7, [r7, #0]
d0045a22:	68bf      	ldr	r7, [r7, #8]
d0045a24:	47b8      	blx	r7
d0045a26:	0137      	lsls	r7, r6, #4
d0045a28:	2800      	cmp	r0, #0
d0045a2a:	d18b      	bne.n	d0045944 <loadMeshSB3D+0x190>
d0045a2c:	9a07      	ldr	r2, [sp, #28]
d0045a2e:	9b05      	ldr	r3, [sp, #20]
d0045a30:	429a      	cmp	r2, r3
d0045a32:	d287      	bcs.n	d0045944 <loadMeshSB3D+0x190>
d0045a34:	9908      	ldr	r1, [sp, #32]
d0045a36:	428b      	cmp	r3, r1
d0045a38:	d984      	bls.n	d0045944 <loadMeshSB3D+0x190>
d0045a3a:	9809      	ldr	r0, [sp, #36]	; 0x24
d0045a3c:	4283      	cmp	r3, r0
d0045a3e:	d981      	bls.n	d0045944 <loadMeshSB3D+0x190>
d0045a40:	692b      	ldr	r3, [r5, #16]
d0045a42:	f8dd c018 	ldr.w	ip, [sp, #24]
d0045a46:	51da      	str	r2, [r3, r7]
d0045a48:	eb03 1306 	add.w	r3, r3, r6, lsl #4
d0045a4c:	3601      	adds	r6, #1
d0045a4e:	f89d 7006 	ldrb.w	r7, [sp, #6]
d0045a52:	f89d 2007 	ldrb.w	r2, [sp, #7]
d0045a56:	45b4      	cmp	ip, r6
d0045a58:	6059      	str	r1, [r3, #4]
d0045a5a:	6098      	str	r0, [r3, #8]
d0045a5c:	731f      	strb	r7, [r3, #12]
d0045a5e:	735a      	strb	r2, [r3, #13]
d0045a60:	d918      	bls.n	d0045a94 <loadMeshSB3D+0x2e0>
d0045a62:	7920      	ldrb	r0, [r4, #4]
d0045a64:	ab02      	add	r3, sp, #8
d0045a66:	7967      	ldrb	r7, [r4, #5]
d0045a68:	2204      	movs	r2, #4
d0045a6a:	f894 c006 	ldrb.w	ip, [r4, #6]
d0045a6e:	a907      	add	r1, sp, #28
d0045a70:	ea40 2007 	orr.w	r0, r0, r7, lsl #8
d0045a74:	79e7      	ldrb	r7, [r4, #7]
d0045a76:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d0045a7a:	2000      	movs	r0, #0
d0045a7c:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0045a80:	683f      	ldr	r7, [r7, #0]
d0045a82:	68bf      	ldr	r7, [r7, #8]
d0045a84:	47b8      	blx	r7
d0045a86:	ab02      	add	r3, sp, #8
d0045a88:	2204      	movs	r2, #4
d0045a8a:	a908      	add	r1, sp, #32
d0045a8c:	2800      	cmp	r0, #0
d0045a8e:	f43f af7d 	beq.w	d004598c <loadMeshSB3D+0x1d8>
d0045a92:	e757      	b.n	d0045944 <loadMeshSB3D+0x190>
d0045a94:	2000      	movs	r0, #0
d0045a96:	f000 f893 	bl	d0045bc0 <fclose>
d0045a9a:	4628      	mov	r0, r5
d0045a9c:	f7fd fca2 	bl	d00433e4 <meshComputeBoundsRadius>
d0045aa0:	eef1 7a00 	vmov.f32	s15, #16	; 0x40800000  4.0
d0045aa4:	4628      	mov	r0, r5
d0045aa6:	ee20 0a27 	vmul.f32	s0, s0, s15
d0045aaa:	ed85 0a06 	vstr	s0, [r5, #24]
d0045aae:	f7fa fec9 	bl	d0040844 <meshSetDefaultMaterial>
d0045ab2:	2001      	movs	r0, #1
d0045ab4:	e6f6      	b.n	d00458a4 <loadMeshSB3D+0xf0>
d0045ab6:	4630      	mov	r0, r6
d0045ab8:	f000 fa72 	bl	d0045fa0 <free>
d0045abc:	2400      	movs	r4, #0
d0045abe:	4620      	mov	r0, r4
d0045ac0:	602c      	str	r4, [r5, #0]
d0045ac2:	612c      	str	r4, [r5, #16]
d0045ac4:	606c      	str	r4, [r5, #4]
d0045ac6:	616c      	str	r4, [r5, #20]
d0045ac8:	f000 f87a 	bl	d0045bc0 <fclose>
d0045acc:	4620      	mov	r0, r4
d0045ace:	e6e9      	b.n	d00458a4 <loadMeshSB3D+0xf0>
d0045ad0:	2800      	cmp	r0, #0
d0045ad2:	d0f3      	beq.n	d0045abc <loadMeshSB3D+0x308>
d0045ad4:	f000 fa64 	bl	d0045fa0 <free>
d0045ad8:	e7f0      	b.n	d0045abc <loadMeshSB3D+0x308>
d0045ada:	bf00      	nop

d0045adc <__errno>:
d0045adc:	4b01      	ldr	r3, [pc, #4]	; (d0045ae4 <__errno+0x8>)
d0045ade:	6818      	ldr	r0, [r3, #0]
d0045ae0:	4770      	bx	lr
d0045ae2:	bf00      	nop
d0045ae4:	d00475f8 	.word	0xd00475f8

d0045ae8 <_fclose_r>:
d0045ae8:	b570      	push	{r4, r5, r6, lr}
d0045aea:	4605      	mov	r5, r0
d0045aec:	460c      	mov	r4, r1
d0045aee:	b911      	cbnz	r1, d0045af6 <_fclose_r+0xe>
d0045af0:	2600      	movs	r6, #0
d0045af2:	4630      	mov	r0, r6
d0045af4:	bd70      	pop	{r4, r5, r6, pc}
d0045af6:	b118      	cbz	r0, d0045b00 <_fclose_r+0x18>
d0045af8:	6983      	ldr	r3, [r0, #24]
d0045afa:	b90b      	cbnz	r3, d0045b00 <_fclose_r+0x18>
d0045afc:	f000 f982 	bl	d0045e04 <__sinit>
d0045b00:	4b2c      	ldr	r3, [pc, #176]	; (d0045bb4 <_fclose_r+0xcc>)
d0045b02:	429c      	cmp	r4, r3
d0045b04:	d114      	bne.n	d0045b30 <_fclose_r+0x48>
d0045b06:	686c      	ldr	r4, [r5, #4]
d0045b08:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0045b0a:	07d8      	lsls	r0, r3, #31
d0045b0c:	d405      	bmi.n	d0045b1a <_fclose_r+0x32>
d0045b0e:	89a3      	ldrh	r3, [r4, #12]
d0045b10:	0599      	lsls	r1, r3, #22
d0045b12:	d402      	bmi.n	d0045b1a <_fclose_r+0x32>
d0045b14:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045b16:	f000 fa14 	bl	d0045f42 <__retarget_lock_acquire_recursive>
d0045b1a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0045b1e:	b98b      	cbnz	r3, d0045b44 <_fclose_r+0x5c>
d0045b20:	6e66      	ldr	r6, [r4, #100]	; 0x64
d0045b22:	f016 0601 	ands.w	r6, r6, #1
d0045b26:	d1e3      	bne.n	d0045af0 <_fclose_r+0x8>
d0045b28:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045b2a:	f000 fa0b 	bl	d0045f44 <__retarget_lock_release_recursive>
d0045b2e:	e7e0      	b.n	d0045af2 <_fclose_r+0xa>
d0045b30:	4b21      	ldr	r3, [pc, #132]	; (d0045bb8 <_fclose_r+0xd0>)
d0045b32:	429c      	cmp	r4, r3
d0045b34:	d101      	bne.n	d0045b3a <_fclose_r+0x52>
d0045b36:	68ac      	ldr	r4, [r5, #8]
d0045b38:	e7e6      	b.n	d0045b08 <_fclose_r+0x20>
d0045b3a:	4b20      	ldr	r3, [pc, #128]	; (d0045bbc <_fclose_r+0xd4>)
d0045b3c:	429c      	cmp	r4, r3
d0045b3e:	bf08      	it	eq
d0045b40:	68ec      	ldreq	r4, [r5, #12]
d0045b42:	e7e1      	b.n	d0045b08 <_fclose_r+0x20>
d0045b44:	4621      	mov	r1, r4
d0045b46:	4628      	mov	r0, r5
d0045b48:	f000 f842 	bl	d0045bd0 <__sflush_r>
d0045b4c:	6b23      	ldr	r3, [r4, #48]	; 0x30
d0045b4e:	4606      	mov	r6, r0
d0045b50:	b133      	cbz	r3, d0045b60 <_fclose_r+0x78>
d0045b52:	6a21      	ldr	r1, [r4, #32]
d0045b54:	4628      	mov	r0, r5
d0045b56:	4798      	blx	r3
d0045b58:	2800      	cmp	r0, #0
d0045b5a:	bfb8      	it	lt
d0045b5c:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
d0045b60:	89a3      	ldrh	r3, [r4, #12]
d0045b62:	061a      	lsls	r2, r3, #24
d0045b64:	d503      	bpl.n	d0045b6e <_fclose_r+0x86>
d0045b66:	6921      	ldr	r1, [r4, #16]
d0045b68:	4628      	mov	r0, r5
d0045b6a:	f000 fa37 	bl	d0045fdc <_free_r>
d0045b6e:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0045b70:	b141      	cbz	r1, d0045b84 <_fclose_r+0x9c>
d0045b72:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0045b76:	4299      	cmp	r1, r3
d0045b78:	d002      	beq.n	d0045b80 <_fclose_r+0x98>
d0045b7a:	4628      	mov	r0, r5
d0045b7c:	f000 fa2e 	bl	d0045fdc <_free_r>
d0045b80:	2300      	movs	r3, #0
d0045b82:	6363      	str	r3, [r4, #52]	; 0x34
d0045b84:	6ca1      	ldr	r1, [r4, #72]	; 0x48
d0045b86:	b121      	cbz	r1, d0045b92 <_fclose_r+0xaa>
d0045b88:	4628      	mov	r0, r5
d0045b8a:	f000 fa27 	bl	d0045fdc <_free_r>
d0045b8e:	2300      	movs	r3, #0
d0045b90:	64a3      	str	r3, [r4, #72]	; 0x48
d0045b92:	f000 f91f 	bl	d0045dd4 <__sfp_lock_acquire>
d0045b96:	2300      	movs	r3, #0
d0045b98:	81a3      	strh	r3, [r4, #12]
d0045b9a:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0045b9c:	07db      	lsls	r3, r3, #31
d0045b9e:	d402      	bmi.n	d0045ba6 <_fclose_r+0xbe>
d0045ba0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045ba2:	f000 f9cf 	bl	d0045f44 <__retarget_lock_release_recursive>
d0045ba6:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045ba8:	f000 f9ca 	bl	d0045f40 <__retarget_lock_close_recursive>
d0045bac:	f000 f918 	bl	d0045de0 <__sfp_lock_release>
d0045bb0:	e79f      	b.n	d0045af2 <_fclose_r+0xa>
d0045bb2:	bf00      	nop
d0045bb4:	d0046e00 	.word	0xd0046e00
d0045bb8:	d0046e20 	.word	0xd0046e20
d0045bbc:	d0046de0 	.word	0xd0046de0

d0045bc0 <fclose>:
d0045bc0:	4b02      	ldr	r3, [pc, #8]	; (d0045bcc <fclose+0xc>)
d0045bc2:	4601      	mov	r1, r0
d0045bc4:	6818      	ldr	r0, [r3, #0]
d0045bc6:	f7ff bf8f 	b.w	d0045ae8 <_fclose_r>
d0045bca:	bf00      	nop
d0045bcc:	d00475f8 	.word	0xd00475f8

d0045bd0 <__sflush_r>:
d0045bd0:	898a      	ldrh	r2, [r1, #12]
d0045bd2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0045bd6:	4605      	mov	r5, r0
d0045bd8:	0710      	lsls	r0, r2, #28
d0045bda:	460c      	mov	r4, r1
d0045bdc:	d458      	bmi.n	d0045c90 <__sflush_r+0xc0>
d0045bde:	684b      	ldr	r3, [r1, #4]
d0045be0:	2b00      	cmp	r3, #0
d0045be2:	dc05      	bgt.n	d0045bf0 <__sflush_r+0x20>
d0045be4:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0045be6:	2b00      	cmp	r3, #0
d0045be8:	dc02      	bgt.n	d0045bf0 <__sflush_r+0x20>
d0045bea:	2000      	movs	r0, #0
d0045bec:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0045bf0:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0045bf2:	2e00      	cmp	r6, #0
d0045bf4:	d0f9      	beq.n	d0045bea <__sflush_r+0x1a>
d0045bf6:	2300      	movs	r3, #0
d0045bf8:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0045bfc:	682f      	ldr	r7, [r5, #0]
d0045bfe:	602b      	str	r3, [r5, #0]
d0045c00:	d032      	beq.n	d0045c68 <__sflush_r+0x98>
d0045c02:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0045c04:	89a3      	ldrh	r3, [r4, #12]
d0045c06:	075a      	lsls	r2, r3, #29
d0045c08:	d505      	bpl.n	d0045c16 <__sflush_r+0x46>
d0045c0a:	6863      	ldr	r3, [r4, #4]
d0045c0c:	1ac0      	subs	r0, r0, r3
d0045c0e:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0045c10:	b10b      	cbz	r3, d0045c16 <__sflush_r+0x46>
d0045c12:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0045c14:	1ac0      	subs	r0, r0, r3
d0045c16:	2300      	movs	r3, #0
d0045c18:	4602      	mov	r2, r0
d0045c1a:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0045c1c:	6a21      	ldr	r1, [r4, #32]
d0045c1e:	4628      	mov	r0, r5
d0045c20:	47b0      	blx	r6
d0045c22:	1c43      	adds	r3, r0, #1
d0045c24:	89a3      	ldrh	r3, [r4, #12]
d0045c26:	d106      	bne.n	d0045c36 <__sflush_r+0x66>
d0045c28:	6829      	ldr	r1, [r5, #0]
d0045c2a:	291d      	cmp	r1, #29
d0045c2c:	d82c      	bhi.n	d0045c88 <__sflush_r+0xb8>
d0045c2e:	4a2a      	ldr	r2, [pc, #168]	; (d0045cd8 <__sflush_r+0x108>)
d0045c30:	40ca      	lsrs	r2, r1
d0045c32:	07d6      	lsls	r6, r2, #31
d0045c34:	d528      	bpl.n	d0045c88 <__sflush_r+0xb8>
d0045c36:	2200      	movs	r2, #0
d0045c38:	6062      	str	r2, [r4, #4]
d0045c3a:	04d9      	lsls	r1, r3, #19
d0045c3c:	6922      	ldr	r2, [r4, #16]
d0045c3e:	6022      	str	r2, [r4, #0]
d0045c40:	d504      	bpl.n	d0045c4c <__sflush_r+0x7c>
d0045c42:	1c42      	adds	r2, r0, #1
d0045c44:	d101      	bne.n	d0045c4a <__sflush_r+0x7a>
d0045c46:	682b      	ldr	r3, [r5, #0]
d0045c48:	b903      	cbnz	r3, d0045c4c <__sflush_r+0x7c>
d0045c4a:	6560      	str	r0, [r4, #84]	; 0x54
d0045c4c:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0045c4e:	602f      	str	r7, [r5, #0]
d0045c50:	2900      	cmp	r1, #0
d0045c52:	d0ca      	beq.n	d0045bea <__sflush_r+0x1a>
d0045c54:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0045c58:	4299      	cmp	r1, r3
d0045c5a:	d002      	beq.n	d0045c62 <__sflush_r+0x92>
d0045c5c:	4628      	mov	r0, r5
d0045c5e:	f000 f9bd 	bl	d0045fdc <_free_r>
d0045c62:	2000      	movs	r0, #0
d0045c64:	6360      	str	r0, [r4, #52]	; 0x34
d0045c66:	e7c1      	b.n	d0045bec <__sflush_r+0x1c>
d0045c68:	6a21      	ldr	r1, [r4, #32]
d0045c6a:	2301      	movs	r3, #1
d0045c6c:	4628      	mov	r0, r5
d0045c6e:	47b0      	blx	r6
d0045c70:	1c41      	adds	r1, r0, #1
d0045c72:	d1c7      	bne.n	d0045c04 <__sflush_r+0x34>
d0045c74:	682b      	ldr	r3, [r5, #0]
d0045c76:	2b00      	cmp	r3, #0
d0045c78:	d0c4      	beq.n	d0045c04 <__sflush_r+0x34>
d0045c7a:	2b1d      	cmp	r3, #29
d0045c7c:	d001      	beq.n	d0045c82 <__sflush_r+0xb2>
d0045c7e:	2b16      	cmp	r3, #22
d0045c80:	d101      	bne.n	d0045c86 <__sflush_r+0xb6>
d0045c82:	602f      	str	r7, [r5, #0]
d0045c84:	e7b1      	b.n	d0045bea <__sflush_r+0x1a>
d0045c86:	89a3      	ldrh	r3, [r4, #12]
d0045c88:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0045c8c:	81a3      	strh	r3, [r4, #12]
d0045c8e:	e7ad      	b.n	d0045bec <__sflush_r+0x1c>
d0045c90:	690f      	ldr	r7, [r1, #16]
d0045c92:	2f00      	cmp	r7, #0
d0045c94:	d0a9      	beq.n	d0045bea <__sflush_r+0x1a>
d0045c96:	0793      	lsls	r3, r2, #30
d0045c98:	680e      	ldr	r6, [r1, #0]
d0045c9a:	bf08      	it	eq
d0045c9c:	694b      	ldreq	r3, [r1, #20]
d0045c9e:	600f      	str	r7, [r1, #0]
d0045ca0:	bf18      	it	ne
d0045ca2:	2300      	movne	r3, #0
d0045ca4:	eba6 0807 	sub.w	r8, r6, r7
d0045ca8:	608b      	str	r3, [r1, #8]
d0045caa:	f1b8 0f00 	cmp.w	r8, #0
d0045cae:	dd9c      	ble.n	d0045bea <__sflush_r+0x1a>
d0045cb0:	6a21      	ldr	r1, [r4, #32]
d0045cb2:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0045cb4:	4643      	mov	r3, r8
d0045cb6:	463a      	mov	r2, r7
d0045cb8:	4628      	mov	r0, r5
d0045cba:	47b0      	blx	r6
d0045cbc:	2800      	cmp	r0, #0
d0045cbe:	dc06      	bgt.n	d0045cce <__sflush_r+0xfe>
d0045cc0:	89a3      	ldrh	r3, [r4, #12]
d0045cc2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0045cc6:	81a3      	strh	r3, [r4, #12]
d0045cc8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0045ccc:	e78e      	b.n	d0045bec <__sflush_r+0x1c>
d0045cce:	4407      	add	r7, r0
d0045cd0:	eba8 0800 	sub.w	r8, r8, r0
d0045cd4:	e7e9      	b.n	d0045caa <__sflush_r+0xda>
d0045cd6:	bf00      	nop
d0045cd8:	20400001 	.word	0x20400001

d0045cdc <_fflush_r>:
d0045cdc:	b538      	push	{r3, r4, r5, lr}
d0045cde:	690b      	ldr	r3, [r1, #16]
d0045ce0:	4605      	mov	r5, r0
d0045ce2:	460c      	mov	r4, r1
d0045ce4:	b913      	cbnz	r3, d0045cec <_fflush_r+0x10>
d0045ce6:	2500      	movs	r5, #0
d0045ce8:	4628      	mov	r0, r5
d0045cea:	bd38      	pop	{r3, r4, r5, pc}
d0045cec:	b118      	cbz	r0, d0045cf6 <_fflush_r+0x1a>
d0045cee:	6983      	ldr	r3, [r0, #24]
d0045cf0:	b90b      	cbnz	r3, d0045cf6 <_fflush_r+0x1a>
d0045cf2:	f000 f887 	bl	d0045e04 <__sinit>
d0045cf6:	4b14      	ldr	r3, [pc, #80]	; (d0045d48 <_fflush_r+0x6c>)
d0045cf8:	429c      	cmp	r4, r3
d0045cfa:	d11b      	bne.n	d0045d34 <_fflush_r+0x58>
d0045cfc:	686c      	ldr	r4, [r5, #4]
d0045cfe:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0045d02:	2b00      	cmp	r3, #0
d0045d04:	d0ef      	beq.n	d0045ce6 <_fflush_r+0xa>
d0045d06:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0045d08:	07d0      	lsls	r0, r2, #31
d0045d0a:	d404      	bmi.n	d0045d16 <_fflush_r+0x3a>
d0045d0c:	0599      	lsls	r1, r3, #22
d0045d0e:	d402      	bmi.n	d0045d16 <_fflush_r+0x3a>
d0045d10:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045d12:	f000 f916 	bl	d0045f42 <__retarget_lock_acquire_recursive>
d0045d16:	4628      	mov	r0, r5
d0045d18:	4621      	mov	r1, r4
d0045d1a:	f7ff ff59 	bl	d0045bd0 <__sflush_r>
d0045d1e:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0045d20:	07da      	lsls	r2, r3, #31
d0045d22:	4605      	mov	r5, r0
d0045d24:	d4e0      	bmi.n	d0045ce8 <_fflush_r+0xc>
d0045d26:	89a3      	ldrh	r3, [r4, #12]
d0045d28:	059b      	lsls	r3, r3, #22
d0045d2a:	d4dd      	bmi.n	d0045ce8 <_fflush_r+0xc>
d0045d2c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045d2e:	f000 f909 	bl	d0045f44 <__retarget_lock_release_recursive>
d0045d32:	e7d9      	b.n	d0045ce8 <_fflush_r+0xc>
d0045d34:	4b05      	ldr	r3, [pc, #20]	; (d0045d4c <_fflush_r+0x70>)
d0045d36:	429c      	cmp	r4, r3
d0045d38:	d101      	bne.n	d0045d3e <_fflush_r+0x62>
d0045d3a:	68ac      	ldr	r4, [r5, #8]
d0045d3c:	e7df      	b.n	d0045cfe <_fflush_r+0x22>
d0045d3e:	4b04      	ldr	r3, [pc, #16]	; (d0045d50 <_fflush_r+0x74>)
d0045d40:	429c      	cmp	r4, r3
d0045d42:	bf08      	it	eq
d0045d44:	68ec      	ldreq	r4, [r5, #12]
d0045d46:	e7da      	b.n	d0045cfe <_fflush_r+0x22>
d0045d48:	d0046e00 	.word	0xd0046e00
d0045d4c:	d0046e20 	.word	0xd0046e20
d0045d50:	d0046de0 	.word	0xd0046de0

d0045d54 <std>:
d0045d54:	2300      	movs	r3, #0
d0045d56:	b510      	push	{r4, lr}
d0045d58:	4604      	mov	r4, r0
d0045d5a:	e9c0 3300 	strd	r3, r3, [r0]
d0045d5e:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0045d62:	6083      	str	r3, [r0, #8]
d0045d64:	8181      	strh	r1, [r0, #12]
d0045d66:	6643      	str	r3, [r0, #100]	; 0x64
d0045d68:	81c2      	strh	r2, [r0, #14]
d0045d6a:	6183      	str	r3, [r0, #24]
d0045d6c:	4619      	mov	r1, r3
d0045d6e:	2208      	movs	r2, #8
d0045d70:	305c      	adds	r0, #92	; 0x5c
d0045d72:	f000 f92b 	bl	d0045fcc <memset>
d0045d76:	4b05      	ldr	r3, [pc, #20]	; (d0045d8c <std+0x38>)
d0045d78:	6263      	str	r3, [r4, #36]	; 0x24
d0045d7a:	4b05      	ldr	r3, [pc, #20]	; (d0045d90 <std+0x3c>)
d0045d7c:	62a3      	str	r3, [r4, #40]	; 0x28
d0045d7e:	4b05      	ldr	r3, [pc, #20]	; (d0045d94 <std+0x40>)
d0045d80:	62e3      	str	r3, [r4, #44]	; 0x2c
d0045d82:	4b05      	ldr	r3, [pc, #20]	; (d0045d98 <std+0x44>)
d0045d84:	6224      	str	r4, [r4, #32]
d0045d86:	6323      	str	r3, [r4, #48]	; 0x30
d0045d88:	bd10      	pop	{r4, pc}
d0045d8a:	bf00      	nop
d0045d8c:	d00462cd 	.word	0xd00462cd
d0045d90:	d00462ef 	.word	0xd00462ef
d0045d94:	d0046327 	.word	0xd0046327
d0045d98:	d004634b 	.word	0xd004634b

d0045d9c <_cleanup_r>:
d0045d9c:	4901      	ldr	r1, [pc, #4]	; (d0045da4 <_cleanup_r+0x8>)
d0045d9e:	f000 b8af 	b.w	d0045f00 <_fwalk_reent>
d0045da2:	bf00      	nop
d0045da4:	d0045cdd 	.word	0xd0045cdd

d0045da8 <__sfmoreglue>:
d0045da8:	b570      	push	{r4, r5, r6, lr}
d0045daa:	1e4a      	subs	r2, r1, #1
d0045dac:	2568      	movs	r5, #104	; 0x68
d0045dae:	4355      	muls	r5, r2
d0045db0:	460e      	mov	r6, r1
d0045db2:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0045db6:	f000 f961 	bl	d004607c <_malloc_r>
d0045dba:	4604      	mov	r4, r0
d0045dbc:	b140      	cbz	r0, d0045dd0 <__sfmoreglue+0x28>
d0045dbe:	2100      	movs	r1, #0
d0045dc0:	e9c0 1600 	strd	r1, r6, [r0]
d0045dc4:	300c      	adds	r0, #12
d0045dc6:	60a0      	str	r0, [r4, #8]
d0045dc8:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0045dcc:	f000 f8fe 	bl	d0045fcc <memset>
d0045dd0:	4620      	mov	r0, r4
d0045dd2:	bd70      	pop	{r4, r5, r6, pc}

d0045dd4 <__sfp_lock_acquire>:
d0045dd4:	4801      	ldr	r0, [pc, #4]	; (d0045ddc <__sfp_lock_acquire+0x8>)
d0045dd6:	f000 b8b4 	b.w	d0045f42 <__retarget_lock_acquire_recursive>
d0045dda:	bf00      	nop
d0045ddc:	d0132d88 	.word	0xd0132d88

d0045de0 <__sfp_lock_release>:
d0045de0:	4801      	ldr	r0, [pc, #4]	; (d0045de8 <__sfp_lock_release+0x8>)
d0045de2:	f000 b8af 	b.w	d0045f44 <__retarget_lock_release_recursive>
d0045de6:	bf00      	nop
d0045de8:	d0132d88 	.word	0xd0132d88

d0045dec <__sinit_lock_acquire>:
d0045dec:	4801      	ldr	r0, [pc, #4]	; (d0045df4 <__sinit_lock_acquire+0x8>)
d0045dee:	f000 b8a8 	b.w	d0045f42 <__retarget_lock_acquire_recursive>
d0045df2:	bf00      	nop
d0045df4:	d0132d83 	.word	0xd0132d83

d0045df8 <__sinit_lock_release>:
d0045df8:	4801      	ldr	r0, [pc, #4]	; (d0045e00 <__sinit_lock_release+0x8>)
d0045dfa:	f000 b8a3 	b.w	d0045f44 <__retarget_lock_release_recursive>
d0045dfe:	bf00      	nop
d0045e00:	d0132d83 	.word	0xd0132d83

d0045e04 <__sinit>:
d0045e04:	b510      	push	{r4, lr}
d0045e06:	4604      	mov	r4, r0
d0045e08:	f7ff fff0 	bl	d0045dec <__sinit_lock_acquire>
d0045e0c:	69a3      	ldr	r3, [r4, #24]
d0045e0e:	b11b      	cbz	r3, d0045e18 <__sinit+0x14>
d0045e10:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0045e14:	f7ff bff0 	b.w	d0045df8 <__sinit_lock_release>
d0045e18:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0045e1c:	6523      	str	r3, [r4, #80]	; 0x50
d0045e1e:	4b13      	ldr	r3, [pc, #76]	; (d0045e6c <__sinit+0x68>)
d0045e20:	4a13      	ldr	r2, [pc, #76]	; (d0045e70 <__sinit+0x6c>)
d0045e22:	681b      	ldr	r3, [r3, #0]
d0045e24:	62a2      	str	r2, [r4, #40]	; 0x28
d0045e26:	42a3      	cmp	r3, r4
d0045e28:	bf04      	itt	eq
d0045e2a:	2301      	moveq	r3, #1
d0045e2c:	61a3      	streq	r3, [r4, #24]
d0045e2e:	4620      	mov	r0, r4
d0045e30:	f000 f820 	bl	d0045e74 <__sfp>
d0045e34:	6060      	str	r0, [r4, #4]
d0045e36:	4620      	mov	r0, r4
d0045e38:	f000 f81c 	bl	d0045e74 <__sfp>
d0045e3c:	60a0      	str	r0, [r4, #8]
d0045e3e:	4620      	mov	r0, r4
d0045e40:	f000 f818 	bl	d0045e74 <__sfp>
d0045e44:	2200      	movs	r2, #0
d0045e46:	60e0      	str	r0, [r4, #12]
d0045e48:	2104      	movs	r1, #4
d0045e4a:	6860      	ldr	r0, [r4, #4]
d0045e4c:	f7ff ff82 	bl	d0045d54 <std>
d0045e50:	68a0      	ldr	r0, [r4, #8]
d0045e52:	2201      	movs	r2, #1
d0045e54:	2109      	movs	r1, #9
d0045e56:	f7ff ff7d 	bl	d0045d54 <std>
d0045e5a:	68e0      	ldr	r0, [r4, #12]
d0045e5c:	2202      	movs	r2, #2
d0045e5e:	2112      	movs	r1, #18
d0045e60:	f7ff ff78 	bl	d0045d54 <std>
d0045e64:	2301      	movs	r3, #1
d0045e66:	61a3      	str	r3, [r4, #24]
d0045e68:	e7d2      	b.n	d0045e10 <__sinit+0xc>
d0045e6a:	bf00      	nop
d0045e6c:	d0046e40 	.word	0xd0046e40
d0045e70:	d0045d9d 	.word	0xd0045d9d

d0045e74 <__sfp>:
d0045e74:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0045e76:	4607      	mov	r7, r0
d0045e78:	f7ff ffac 	bl	d0045dd4 <__sfp_lock_acquire>
d0045e7c:	4b1e      	ldr	r3, [pc, #120]	; (d0045ef8 <__sfp+0x84>)
d0045e7e:	681e      	ldr	r6, [r3, #0]
d0045e80:	69b3      	ldr	r3, [r6, #24]
d0045e82:	b913      	cbnz	r3, d0045e8a <__sfp+0x16>
d0045e84:	4630      	mov	r0, r6
d0045e86:	f7ff ffbd 	bl	d0045e04 <__sinit>
d0045e8a:	3648      	adds	r6, #72	; 0x48
d0045e8c:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0045e90:	3b01      	subs	r3, #1
d0045e92:	d503      	bpl.n	d0045e9c <__sfp+0x28>
d0045e94:	6833      	ldr	r3, [r6, #0]
d0045e96:	b30b      	cbz	r3, d0045edc <__sfp+0x68>
d0045e98:	6836      	ldr	r6, [r6, #0]
d0045e9a:	e7f7      	b.n	d0045e8c <__sfp+0x18>
d0045e9c:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0045ea0:	b9d5      	cbnz	r5, d0045ed8 <__sfp+0x64>
d0045ea2:	4b16      	ldr	r3, [pc, #88]	; (d0045efc <__sfp+0x88>)
d0045ea4:	60e3      	str	r3, [r4, #12]
d0045ea6:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0045eaa:	6665      	str	r5, [r4, #100]	; 0x64
d0045eac:	f000 f847 	bl	d0045f3e <__retarget_lock_init_recursive>
d0045eb0:	f7ff ff96 	bl	d0045de0 <__sfp_lock_release>
d0045eb4:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0045eb8:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0045ebc:	6025      	str	r5, [r4, #0]
d0045ebe:	61a5      	str	r5, [r4, #24]
d0045ec0:	2208      	movs	r2, #8
d0045ec2:	4629      	mov	r1, r5
d0045ec4:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0045ec8:	f000 f880 	bl	d0045fcc <memset>
d0045ecc:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0045ed0:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0045ed4:	4620      	mov	r0, r4
d0045ed6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0045ed8:	3468      	adds	r4, #104	; 0x68
d0045eda:	e7d9      	b.n	d0045e90 <__sfp+0x1c>
d0045edc:	2104      	movs	r1, #4
d0045ede:	4638      	mov	r0, r7
d0045ee0:	f7ff ff62 	bl	d0045da8 <__sfmoreglue>
d0045ee4:	4604      	mov	r4, r0
d0045ee6:	6030      	str	r0, [r6, #0]
d0045ee8:	2800      	cmp	r0, #0
d0045eea:	d1d5      	bne.n	d0045e98 <__sfp+0x24>
d0045eec:	f7ff ff78 	bl	d0045de0 <__sfp_lock_release>
d0045ef0:	230c      	movs	r3, #12
d0045ef2:	603b      	str	r3, [r7, #0]
d0045ef4:	e7ee      	b.n	d0045ed4 <__sfp+0x60>
d0045ef6:	bf00      	nop
d0045ef8:	d0046e40 	.word	0xd0046e40
d0045efc:	ffff0001 	.word	0xffff0001

d0045f00 <_fwalk_reent>:
d0045f00:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0045f04:	4606      	mov	r6, r0
d0045f06:	4688      	mov	r8, r1
d0045f08:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0045f0c:	2700      	movs	r7, #0
d0045f0e:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0045f12:	f1b9 0901 	subs.w	r9, r9, #1
d0045f16:	d505      	bpl.n	d0045f24 <_fwalk_reent+0x24>
d0045f18:	6824      	ldr	r4, [r4, #0]
d0045f1a:	2c00      	cmp	r4, #0
d0045f1c:	d1f7      	bne.n	d0045f0e <_fwalk_reent+0xe>
d0045f1e:	4638      	mov	r0, r7
d0045f20:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0045f24:	89ab      	ldrh	r3, [r5, #12]
d0045f26:	2b01      	cmp	r3, #1
d0045f28:	d907      	bls.n	d0045f3a <_fwalk_reent+0x3a>
d0045f2a:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0045f2e:	3301      	adds	r3, #1
d0045f30:	d003      	beq.n	d0045f3a <_fwalk_reent+0x3a>
d0045f32:	4629      	mov	r1, r5
d0045f34:	4630      	mov	r0, r6
d0045f36:	47c0      	blx	r8
d0045f38:	4307      	orrs	r7, r0
d0045f3a:	3568      	adds	r5, #104	; 0x68
d0045f3c:	e7e9      	b.n	d0045f12 <_fwalk_reent+0x12>

d0045f3e <__retarget_lock_init_recursive>:
d0045f3e:	4770      	bx	lr

d0045f40 <__retarget_lock_close_recursive>:
d0045f40:	4770      	bx	lr

d0045f42 <__retarget_lock_acquire_recursive>:
d0045f42:	4770      	bx	lr

d0045f44 <__retarget_lock_release_recursive>:
d0045f44:	4770      	bx	lr

d0045f46 <__swhatbuf_r>:
d0045f46:	b570      	push	{r4, r5, r6, lr}
d0045f48:	460e      	mov	r6, r1
d0045f4a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0045f4e:	2900      	cmp	r1, #0
d0045f50:	b096      	sub	sp, #88	; 0x58
d0045f52:	4614      	mov	r4, r2
d0045f54:	461d      	mov	r5, r3
d0045f56:	da07      	bge.n	d0045f68 <__swhatbuf_r+0x22>
d0045f58:	2300      	movs	r3, #0
d0045f5a:	602b      	str	r3, [r5, #0]
d0045f5c:	89b3      	ldrh	r3, [r6, #12]
d0045f5e:	061a      	lsls	r2, r3, #24
d0045f60:	d410      	bmi.n	d0045f84 <__swhatbuf_r+0x3e>
d0045f62:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0045f66:	e00e      	b.n	d0045f86 <__swhatbuf_r+0x40>
d0045f68:	466a      	mov	r2, sp
d0045f6a:	f000 fa03 	bl	d0046374 <_fstat_r>
d0045f6e:	2800      	cmp	r0, #0
d0045f70:	dbf2      	blt.n	d0045f58 <__swhatbuf_r+0x12>
d0045f72:	9a01      	ldr	r2, [sp, #4]
d0045f74:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0045f78:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0045f7c:	425a      	negs	r2, r3
d0045f7e:	415a      	adcs	r2, r3
d0045f80:	602a      	str	r2, [r5, #0]
d0045f82:	e7ee      	b.n	d0045f62 <__swhatbuf_r+0x1c>
d0045f84:	2340      	movs	r3, #64	; 0x40
d0045f86:	2000      	movs	r0, #0
d0045f88:	6023      	str	r3, [r4, #0]
d0045f8a:	b016      	add	sp, #88	; 0x58
d0045f8c:	bd70      	pop	{r4, r5, r6, pc}
	...

d0045f90 <malloc>:
d0045f90:	4b02      	ldr	r3, [pc, #8]	; (d0045f9c <malloc+0xc>)
d0045f92:	4601      	mov	r1, r0
d0045f94:	6818      	ldr	r0, [r3, #0]
d0045f96:	f000 b871 	b.w	d004607c <_malloc_r>
d0045f9a:	bf00      	nop
d0045f9c:	d00475f8 	.word	0xd00475f8

d0045fa0 <free>:
d0045fa0:	4b02      	ldr	r3, [pc, #8]	; (d0045fac <free+0xc>)
d0045fa2:	4601      	mov	r1, r0
d0045fa4:	6818      	ldr	r0, [r3, #0]
d0045fa6:	f000 b819 	b.w	d0045fdc <_free_r>
d0045faa:	bf00      	nop
d0045fac:	d00475f8 	.word	0xd00475f8

d0045fb0 <memcpy>:
d0045fb0:	440a      	add	r2, r1
d0045fb2:	4291      	cmp	r1, r2
d0045fb4:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0045fb8:	d100      	bne.n	d0045fbc <memcpy+0xc>
d0045fba:	4770      	bx	lr
d0045fbc:	b510      	push	{r4, lr}
d0045fbe:	f811 4b01 	ldrb.w	r4, [r1], #1
d0045fc2:	f803 4f01 	strb.w	r4, [r3, #1]!
d0045fc6:	4291      	cmp	r1, r2
d0045fc8:	d1f9      	bne.n	d0045fbe <memcpy+0xe>
d0045fca:	bd10      	pop	{r4, pc}

d0045fcc <memset>:
d0045fcc:	4402      	add	r2, r0
d0045fce:	4603      	mov	r3, r0
d0045fd0:	4293      	cmp	r3, r2
d0045fd2:	d100      	bne.n	d0045fd6 <memset+0xa>
d0045fd4:	4770      	bx	lr
d0045fd6:	f803 1b01 	strb.w	r1, [r3], #1
d0045fda:	e7f9      	b.n	d0045fd0 <memset+0x4>

d0045fdc <_free_r>:
d0045fdc:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0045fde:	2900      	cmp	r1, #0
d0045fe0:	d048      	beq.n	d0046074 <_free_r+0x98>
d0045fe2:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0045fe6:	9001      	str	r0, [sp, #4]
d0045fe8:	2b00      	cmp	r3, #0
d0045fea:	f1a1 0404 	sub.w	r4, r1, #4
d0045fee:	bfb8      	it	lt
d0045ff0:	18e4      	addlt	r4, r4, r3
d0045ff2:	f000 f9e3 	bl	d00463bc <__malloc_lock>
d0045ff6:	4a20      	ldr	r2, [pc, #128]	; (d0046078 <_free_r+0x9c>)
d0045ff8:	9801      	ldr	r0, [sp, #4]
d0045ffa:	6813      	ldr	r3, [r2, #0]
d0045ffc:	4615      	mov	r5, r2
d0045ffe:	b933      	cbnz	r3, d004600e <_free_r+0x32>
d0046000:	6063      	str	r3, [r4, #4]
d0046002:	6014      	str	r4, [r2, #0]
d0046004:	b003      	add	sp, #12
d0046006:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d004600a:	f000 b9dd 	b.w	d00463c8 <__malloc_unlock>
d004600e:	42a3      	cmp	r3, r4
d0046010:	d90b      	bls.n	d004602a <_free_r+0x4e>
d0046012:	6821      	ldr	r1, [r4, #0]
d0046014:	1862      	adds	r2, r4, r1
d0046016:	4293      	cmp	r3, r2
d0046018:	bf04      	itt	eq
d004601a:	681a      	ldreq	r2, [r3, #0]
d004601c:	685b      	ldreq	r3, [r3, #4]
d004601e:	6063      	str	r3, [r4, #4]
d0046020:	bf04      	itt	eq
d0046022:	1852      	addeq	r2, r2, r1
d0046024:	6022      	streq	r2, [r4, #0]
d0046026:	602c      	str	r4, [r5, #0]
d0046028:	e7ec      	b.n	d0046004 <_free_r+0x28>
d004602a:	461a      	mov	r2, r3
d004602c:	685b      	ldr	r3, [r3, #4]
d004602e:	b10b      	cbz	r3, d0046034 <_free_r+0x58>
d0046030:	42a3      	cmp	r3, r4
d0046032:	d9fa      	bls.n	d004602a <_free_r+0x4e>
d0046034:	6811      	ldr	r1, [r2, #0]
d0046036:	1855      	adds	r5, r2, r1
d0046038:	42a5      	cmp	r5, r4
d004603a:	d10b      	bne.n	d0046054 <_free_r+0x78>
d004603c:	6824      	ldr	r4, [r4, #0]
d004603e:	4421      	add	r1, r4
d0046040:	1854      	adds	r4, r2, r1
d0046042:	42a3      	cmp	r3, r4
d0046044:	6011      	str	r1, [r2, #0]
d0046046:	d1dd      	bne.n	d0046004 <_free_r+0x28>
d0046048:	681c      	ldr	r4, [r3, #0]
d004604a:	685b      	ldr	r3, [r3, #4]
d004604c:	6053      	str	r3, [r2, #4]
d004604e:	4421      	add	r1, r4
d0046050:	6011      	str	r1, [r2, #0]
d0046052:	e7d7      	b.n	d0046004 <_free_r+0x28>
d0046054:	d902      	bls.n	d004605c <_free_r+0x80>
d0046056:	230c      	movs	r3, #12
d0046058:	6003      	str	r3, [r0, #0]
d004605a:	e7d3      	b.n	d0046004 <_free_r+0x28>
d004605c:	6825      	ldr	r5, [r4, #0]
d004605e:	1961      	adds	r1, r4, r5
d0046060:	428b      	cmp	r3, r1
d0046062:	bf04      	itt	eq
d0046064:	6819      	ldreq	r1, [r3, #0]
d0046066:	685b      	ldreq	r3, [r3, #4]
d0046068:	6063      	str	r3, [r4, #4]
d004606a:	bf04      	itt	eq
d004606c:	1949      	addeq	r1, r1, r5
d004606e:	6021      	streq	r1, [r4, #0]
d0046070:	6054      	str	r4, [r2, #4]
d0046072:	e7c7      	b.n	d0046004 <_free_r+0x28>
d0046074:	b003      	add	sp, #12
d0046076:	bd30      	pop	{r4, r5, pc}
d0046078:	d00e1ce0 	.word	0xd00e1ce0

d004607c <_malloc_r>:
d004607c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d004607e:	1ccd      	adds	r5, r1, #3
d0046080:	f025 0503 	bic.w	r5, r5, #3
d0046084:	3508      	adds	r5, #8
d0046086:	2d0c      	cmp	r5, #12
d0046088:	bf38      	it	cc
d004608a:	250c      	movcc	r5, #12
d004608c:	2d00      	cmp	r5, #0
d004608e:	4606      	mov	r6, r0
d0046090:	db01      	blt.n	d0046096 <_malloc_r+0x1a>
d0046092:	42a9      	cmp	r1, r5
d0046094:	d903      	bls.n	d004609e <_malloc_r+0x22>
d0046096:	230c      	movs	r3, #12
d0046098:	6033      	str	r3, [r6, #0]
d004609a:	2000      	movs	r0, #0
d004609c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d004609e:	f000 f98d 	bl	d00463bc <__malloc_lock>
d00460a2:	4921      	ldr	r1, [pc, #132]	; (d0046128 <_malloc_r+0xac>)
d00460a4:	680a      	ldr	r2, [r1, #0]
d00460a6:	4614      	mov	r4, r2
d00460a8:	b99c      	cbnz	r4, d00460d2 <_malloc_r+0x56>
d00460aa:	4f20      	ldr	r7, [pc, #128]	; (d004612c <_malloc_r+0xb0>)
d00460ac:	683b      	ldr	r3, [r7, #0]
d00460ae:	b923      	cbnz	r3, d00460ba <_malloc_r+0x3e>
d00460b0:	4621      	mov	r1, r4
d00460b2:	4630      	mov	r0, r6
d00460b4:	f7fa f814 	bl	d00400e0 <_sbrk_r>
d00460b8:	6038      	str	r0, [r7, #0]
d00460ba:	4629      	mov	r1, r5
d00460bc:	4630      	mov	r0, r6
d00460be:	f7fa f80f 	bl	d00400e0 <_sbrk_r>
d00460c2:	1c43      	adds	r3, r0, #1
d00460c4:	d123      	bne.n	d004610e <_malloc_r+0x92>
d00460c6:	230c      	movs	r3, #12
d00460c8:	6033      	str	r3, [r6, #0]
d00460ca:	4630      	mov	r0, r6
d00460cc:	f000 f97c 	bl	d00463c8 <__malloc_unlock>
d00460d0:	e7e3      	b.n	d004609a <_malloc_r+0x1e>
d00460d2:	6823      	ldr	r3, [r4, #0]
d00460d4:	1b5b      	subs	r3, r3, r5
d00460d6:	d417      	bmi.n	d0046108 <_malloc_r+0x8c>
d00460d8:	2b0b      	cmp	r3, #11
d00460da:	d903      	bls.n	d00460e4 <_malloc_r+0x68>
d00460dc:	6023      	str	r3, [r4, #0]
d00460de:	441c      	add	r4, r3
d00460e0:	6025      	str	r5, [r4, #0]
d00460e2:	e004      	b.n	d00460ee <_malloc_r+0x72>
d00460e4:	6863      	ldr	r3, [r4, #4]
d00460e6:	42a2      	cmp	r2, r4
d00460e8:	bf0c      	ite	eq
d00460ea:	600b      	streq	r3, [r1, #0]
d00460ec:	6053      	strne	r3, [r2, #4]
d00460ee:	4630      	mov	r0, r6
d00460f0:	f000 f96a 	bl	d00463c8 <__malloc_unlock>
d00460f4:	f104 000b 	add.w	r0, r4, #11
d00460f8:	1d23      	adds	r3, r4, #4
d00460fa:	f020 0007 	bic.w	r0, r0, #7
d00460fe:	1ac2      	subs	r2, r0, r3
d0046100:	d0cc      	beq.n	d004609c <_malloc_r+0x20>
d0046102:	1a1b      	subs	r3, r3, r0
d0046104:	50a3      	str	r3, [r4, r2]
d0046106:	e7c9      	b.n	d004609c <_malloc_r+0x20>
d0046108:	4622      	mov	r2, r4
d004610a:	6864      	ldr	r4, [r4, #4]
d004610c:	e7cc      	b.n	d00460a8 <_malloc_r+0x2c>
d004610e:	1cc4      	adds	r4, r0, #3
d0046110:	f024 0403 	bic.w	r4, r4, #3
d0046114:	42a0      	cmp	r0, r4
d0046116:	d0e3      	beq.n	d00460e0 <_malloc_r+0x64>
d0046118:	1a21      	subs	r1, r4, r0
d004611a:	4630      	mov	r0, r6
d004611c:	f7f9 ffe0 	bl	d00400e0 <_sbrk_r>
d0046120:	3001      	adds	r0, #1
d0046122:	d1dd      	bne.n	d00460e0 <_malloc_r+0x64>
d0046124:	e7cf      	b.n	d00460c6 <_malloc_r+0x4a>
d0046126:	bf00      	nop
d0046128:	d00e1ce0 	.word	0xd00e1ce0
d004612c:	d00e1ce4 	.word	0xd00e1ce4

d0046130 <setbuf>:
d0046130:	2900      	cmp	r1, #0
d0046132:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0046136:	bf0c      	ite	eq
d0046138:	2202      	moveq	r2, #2
d004613a:	2200      	movne	r2, #0
d004613c:	f000 b800 	b.w	d0046140 <setvbuf>

d0046140 <setvbuf>:
d0046140:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0046144:	461d      	mov	r5, r3
d0046146:	4b5d      	ldr	r3, [pc, #372]	; (d00462bc <setvbuf+0x17c>)
d0046148:	681f      	ldr	r7, [r3, #0]
d004614a:	4604      	mov	r4, r0
d004614c:	460e      	mov	r6, r1
d004614e:	4690      	mov	r8, r2
d0046150:	b127      	cbz	r7, d004615c <setvbuf+0x1c>
d0046152:	69bb      	ldr	r3, [r7, #24]
d0046154:	b913      	cbnz	r3, d004615c <setvbuf+0x1c>
d0046156:	4638      	mov	r0, r7
d0046158:	f7ff fe54 	bl	d0045e04 <__sinit>
d004615c:	4b58      	ldr	r3, [pc, #352]	; (d00462c0 <setvbuf+0x180>)
d004615e:	429c      	cmp	r4, r3
d0046160:	d167      	bne.n	d0046232 <setvbuf+0xf2>
d0046162:	687c      	ldr	r4, [r7, #4]
d0046164:	f1b8 0f02 	cmp.w	r8, #2
d0046168:	d006      	beq.n	d0046178 <setvbuf+0x38>
d004616a:	f1b8 0f01 	cmp.w	r8, #1
d004616e:	f200 809f 	bhi.w	d00462b0 <setvbuf+0x170>
d0046172:	2d00      	cmp	r5, #0
d0046174:	f2c0 809c 	blt.w	d00462b0 <setvbuf+0x170>
d0046178:	6e63      	ldr	r3, [r4, #100]	; 0x64
d004617a:	07db      	lsls	r3, r3, #31
d004617c:	d405      	bmi.n	d004618a <setvbuf+0x4a>
d004617e:	89a3      	ldrh	r3, [r4, #12]
d0046180:	0598      	lsls	r0, r3, #22
d0046182:	d402      	bmi.n	d004618a <setvbuf+0x4a>
d0046184:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0046186:	f7ff fedc 	bl	d0045f42 <__retarget_lock_acquire_recursive>
d004618a:	4621      	mov	r1, r4
d004618c:	4638      	mov	r0, r7
d004618e:	f7ff fda5 	bl	d0045cdc <_fflush_r>
d0046192:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0046194:	b141      	cbz	r1, d00461a8 <setvbuf+0x68>
d0046196:	f104 0344 	add.w	r3, r4, #68	; 0x44
d004619a:	4299      	cmp	r1, r3
d004619c:	d002      	beq.n	d00461a4 <setvbuf+0x64>
d004619e:	4638      	mov	r0, r7
d00461a0:	f7ff ff1c 	bl	d0045fdc <_free_r>
d00461a4:	2300      	movs	r3, #0
d00461a6:	6363      	str	r3, [r4, #52]	; 0x34
d00461a8:	2300      	movs	r3, #0
d00461aa:	61a3      	str	r3, [r4, #24]
d00461ac:	6063      	str	r3, [r4, #4]
d00461ae:	89a3      	ldrh	r3, [r4, #12]
d00461b0:	0619      	lsls	r1, r3, #24
d00461b2:	d503      	bpl.n	d00461bc <setvbuf+0x7c>
d00461b4:	6921      	ldr	r1, [r4, #16]
d00461b6:	4638      	mov	r0, r7
d00461b8:	f7ff ff10 	bl	d0045fdc <_free_r>
d00461bc:	89a3      	ldrh	r3, [r4, #12]
d00461be:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d00461c2:	f023 0303 	bic.w	r3, r3, #3
d00461c6:	f1b8 0f02 	cmp.w	r8, #2
d00461ca:	81a3      	strh	r3, [r4, #12]
d00461cc:	d06c      	beq.n	d00462a8 <setvbuf+0x168>
d00461ce:	ab01      	add	r3, sp, #4
d00461d0:	466a      	mov	r2, sp
d00461d2:	4621      	mov	r1, r4
d00461d4:	4638      	mov	r0, r7
d00461d6:	f7ff feb6 	bl	d0045f46 <__swhatbuf_r>
d00461da:	89a3      	ldrh	r3, [r4, #12]
d00461dc:	4318      	orrs	r0, r3
d00461de:	81a0      	strh	r0, [r4, #12]
d00461e0:	2d00      	cmp	r5, #0
d00461e2:	d130      	bne.n	d0046246 <setvbuf+0x106>
d00461e4:	9d00      	ldr	r5, [sp, #0]
d00461e6:	4628      	mov	r0, r5
d00461e8:	f7ff fed2 	bl	d0045f90 <malloc>
d00461ec:	4606      	mov	r6, r0
d00461ee:	2800      	cmp	r0, #0
d00461f0:	d155      	bne.n	d004629e <setvbuf+0x15e>
d00461f2:	f8dd 9000 	ldr.w	r9, [sp]
d00461f6:	45a9      	cmp	r9, r5
d00461f8:	d14a      	bne.n	d0046290 <setvbuf+0x150>
d00461fa:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00461fe:	2200      	movs	r2, #0
d0046200:	60a2      	str	r2, [r4, #8]
d0046202:	f104 0247 	add.w	r2, r4, #71	; 0x47
d0046206:	6022      	str	r2, [r4, #0]
d0046208:	6122      	str	r2, [r4, #16]
d004620a:	2201      	movs	r2, #1
d004620c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0046210:	6162      	str	r2, [r4, #20]
d0046212:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0046214:	f043 0302 	orr.w	r3, r3, #2
d0046218:	07d2      	lsls	r2, r2, #31
d004621a:	81a3      	strh	r3, [r4, #12]
d004621c:	d405      	bmi.n	d004622a <setvbuf+0xea>
d004621e:	f413 7f00 	tst.w	r3, #512	; 0x200
d0046222:	d102      	bne.n	d004622a <setvbuf+0xea>
d0046224:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0046226:	f7ff fe8d 	bl	d0045f44 <__retarget_lock_release_recursive>
d004622a:	4628      	mov	r0, r5
d004622c:	b003      	add	sp, #12
d004622e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0046232:	4b24      	ldr	r3, [pc, #144]	; (d00462c4 <setvbuf+0x184>)
d0046234:	429c      	cmp	r4, r3
d0046236:	d101      	bne.n	d004623c <setvbuf+0xfc>
d0046238:	68bc      	ldr	r4, [r7, #8]
d004623a:	e793      	b.n	d0046164 <setvbuf+0x24>
d004623c:	4b22      	ldr	r3, [pc, #136]	; (d00462c8 <setvbuf+0x188>)
d004623e:	429c      	cmp	r4, r3
d0046240:	bf08      	it	eq
d0046242:	68fc      	ldreq	r4, [r7, #12]
d0046244:	e78e      	b.n	d0046164 <setvbuf+0x24>
d0046246:	2e00      	cmp	r6, #0
d0046248:	d0cd      	beq.n	d00461e6 <setvbuf+0xa6>
d004624a:	69bb      	ldr	r3, [r7, #24]
d004624c:	b913      	cbnz	r3, d0046254 <setvbuf+0x114>
d004624e:	4638      	mov	r0, r7
d0046250:	f7ff fdd8 	bl	d0045e04 <__sinit>
d0046254:	f1b8 0f01 	cmp.w	r8, #1
d0046258:	bf08      	it	eq
d004625a:	89a3      	ldrheq	r3, [r4, #12]
d004625c:	6026      	str	r6, [r4, #0]
d004625e:	bf04      	itt	eq
d0046260:	f043 0301 	orreq.w	r3, r3, #1
d0046264:	81a3      	strheq	r3, [r4, #12]
d0046266:	89a2      	ldrh	r2, [r4, #12]
d0046268:	f012 0308 	ands.w	r3, r2, #8
d004626c:	e9c4 6504 	strd	r6, r5, [r4, #16]
d0046270:	d01c      	beq.n	d00462ac <setvbuf+0x16c>
d0046272:	07d3      	lsls	r3, r2, #31
d0046274:	bf41      	itttt	mi
d0046276:	2300      	movmi	r3, #0
d0046278:	426d      	negmi	r5, r5
d004627a:	60a3      	strmi	r3, [r4, #8]
d004627c:	61a5      	strmi	r5, [r4, #24]
d004627e:	bf58      	it	pl
d0046280:	60a5      	strpl	r5, [r4, #8]
d0046282:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0046284:	f015 0501 	ands.w	r5, r5, #1
d0046288:	d115      	bne.n	d00462b6 <setvbuf+0x176>
d004628a:	f412 7f00 	tst.w	r2, #512	; 0x200
d004628e:	e7c8      	b.n	d0046222 <setvbuf+0xe2>
d0046290:	4648      	mov	r0, r9
d0046292:	f7ff fe7d 	bl	d0045f90 <malloc>
d0046296:	4606      	mov	r6, r0
d0046298:	2800      	cmp	r0, #0
d004629a:	d0ae      	beq.n	d00461fa <setvbuf+0xba>
d004629c:	464d      	mov	r5, r9
d004629e:	89a3      	ldrh	r3, [r4, #12]
d00462a0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00462a4:	81a3      	strh	r3, [r4, #12]
d00462a6:	e7d0      	b.n	d004624a <setvbuf+0x10a>
d00462a8:	2500      	movs	r5, #0
d00462aa:	e7a8      	b.n	d00461fe <setvbuf+0xbe>
d00462ac:	60a3      	str	r3, [r4, #8]
d00462ae:	e7e8      	b.n	d0046282 <setvbuf+0x142>
d00462b0:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00462b4:	e7b9      	b.n	d004622a <setvbuf+0xea>
d00462b6:	2500      	movs	r5, #0
d00462b8:	e7b7      	b.n	d004622a <setvbuf+0xea>
d00462ba:	bf00      	nop
d00462bc:	d00475f8 	.word	0xd00475f8
d00462c0:	d0046e00 	.word	0xd0046e00
d00462c4:	d0046e20 	.word	0xd0046e20
d00462c8:	d0046de0 	.word	0xd0046de0

d00462cc <__sread>:
d00462cc:	b510      	push	{r4, lr}
d00462ce:	460c      	mov	r4, r1
d00462d0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00462d4:	f000 f87e 	bl	d00463d4 <_read_r>
d00462d8:	2800      	cmp	r0, #0
d00462da:	bfab      	itete	ge
d00462dc:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d00462de:	89a3      	ldrhlt	r3, [r4, #12]
d00462e0:	181b      	addge	r3, r3, r0
d00462e2:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d00462e6:	bfac      	ite	ge
d00462e8:	6563      	strge	r3, [r4, #84]	; 0x54
d00462ea:	81a3      	strhlt	r3, [r4, #12]
d00462ec:	bd10      	pop	{r4, pc}

d00462ee <__swrite>:
d00462ee:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00462f2:	461f      	mov	r7, r3
d00462f4:	898b      	ldrh	r3, [r1, #12]
d00462f6:	05db      	lsls	r3, r3, #23
d00462f8:	4605      	mov	r5, r0
d00462fa:	460c      	mov	r4, r1
d00462fc:	4616      	mov	r6, r2
d00462fe:	d505      	bpl.n	d004630c <__swrite+0x1e>
d0046300:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0046304:	2302      	movs	r3, #2
d0046306:	2200      	movs	r2, #0
d0046308:	f000 f846 	bl	d0046398 <_lseek_r>
d004630c:	89a3      	ldrh	r3, [r4, #12]
d004630e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0046312:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0046316:	81a3      	strh	r3, [r4, #12]
d0046318:	4632      	mov	r2, r6
d004631a:	463b      	mov	r3, r7
d004631c:	4628      	mov	r0, r5
d004631e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0046322:	f7f9 be97 	b.w	d0040054 <_write_r>

d0046326 <__sseek>:
d0046326:	b510      	push	{r4, lr}
d0046328:	460c      	mov	r4, r1
d004632a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d004632e:	f000 f833 	bl	d0046398 <_lseek_r>
d0046332:	1c43      	adds	r3, r0, #1
d0046334:	89a3      	ldrh	r3, [r4, #12]
d0046336:	bf15      	itete	ne
d0046338:	6560      	strne	r0, [r4, #84]	; 0x54
d004633a:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d004633e:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d0046342:	81a3      	strheq	r3, [r4, #12]
d0046344:	bf18      	it	ne
d0046346:	81a3      	strhne	r3, [r4, #12]
d0046348:	bd10      	pop	{r4, pc}

d004634a <__sclose>:
d004634a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d004634e:	f000 b801 	b.w	d0046354 <_close_r>
	...

d0046354 <_close_r>:
d0046354:	b538      	push	{r3, r4, r5, lr}
d0046356:	4d06      	ldr	r5, [pc, #24]	; (d0046370 <_close_r+0x1c>)
d0046358:	2300      	movs	r3, #0
d004635a:	4604      	mov	r4, r0
d004635c:	4608      	mov	r0, r1
d004635e:	602b      	str	r3, [r5, #0]
d0046360:	f7f9 feb2 	bl	d00400c8 <_close>
d0046364:	1c43      	adds	r3, r0, #1
d0046366:	d102      	bne.n	d004636e <_close_r+0x1a>
d0046368:	682b      	ldr	r3, [r5, #0]
d004636a:	b103      	cbz	r3, d004636e <_close_r+0x1a>
d004636c:	6023      	str	r3, [r4, #0]
d004636e:	bd38      	pop	{r3, r4, r5, pc}
d0046370:	d0132d8c 	.word	0xd0132d8c

d0046374 <_fstat_r>:
d0046374:	b538      	push	{r3, r4, r5, lr}
d0046376:	4d07      	ldr	r5, [pc, #28]	; (d0046394 <_fstat_r+0x20>)
d0046378:	2300      	movs	r3, #0
d004637a:	4604      	mov	r4, r0
d004637c:	4608      	mov	r0, r1
d004637e:	4611      	mov	r1, r2
d0046380:	602b      	str	r3, [r5, #0]
d0046382:	f7f9 fea5 	bl	d00400d0 <_fstat>
d0046386:	1c43      	adds	r3, r0, #1
d0046388:	d102      	bne.n	d0046390 <_fstat_r+0x1c>
d004638a:	682b      	ldr	r3, [r5, #0]
d004638c:	b103      	cbz	r3, d0046390 <_fstat_r+0x1c>
d004638e:	6023      	str	r3, [r4, #0]
d0046390:	bd38      	pop	{r3, r4, r5, pc}
d0046392:	bf00      	nop
d0046394:	d0132d8c 	.word	0xd0132d8c

d0046398 <_lseek_r>:
d0046398:	b538      	push	{r3, r4, r5, lr}
d004639a:	4d07      	ldr	r5, [pc, #28]	; (d00463b8 <_lseek_r+0x20>)
d004639c:	4604      	mov	r4, r0
d004639e:	4608      	mov	r0, r1
d00463a0:	4611      	mov	r1, r2
d00463a2:	2200      	movs	r2, #0
d00463a4:	602a      	str	r2, [r5, #0]
d00463a6:	461a      	mov	r2, r3
d00463a8:	f7f9 fe98 	bl	d00400dc <_lseek>
d00463ac:	1c43      	adds	r3, r0, #1
d00463ae:	d102      	bne.n	d00463b6 <_lseek_r+0x1e>
d00463b0:	682b      	ldr	r3, [r5, #0]
d00463b2:	b103      	cbz	r3, d00463b6 <_lseek_r+0x1e>
d00463b4:	6023      	str	r3, [r4, #0]
d00463b6:	bd38      	pop	{r3, r4, r5, pc}
d00463b8:	d0132d8c 	.word	0xd0132d8c

d00463bc <__malloc_lock>:
d00463bc:	4801      	ldr	r0, [pc, #4]	; (d00463c4 <__malloc_lock+0x8>)
d00463be:	f7ff bdc0 	b.w	d0045f42 <__retarget_lock_acquire_recursive>
d00463c2:	bf00      	nop
d00463c4:	d0132d84 	.word	0xd0132d84

d00463c8 <__malloc_unlock>:
d00463c8:	4801      	ldr	r0, [pc, #4]	; (d00463d0 <__malloc_unlock+0x8>)
d00463ca:	f7ff bdbb 	b.w	d0045f44 <__retarget_lock_release_recursive>
d00463ce:	bf00      	nop
d00463d0:	d0132d84 	.word	0xd0132d84

d00463d4 <_read_r>:
d00463d4:	b538      	push	{r3, r4, r5, lr}
d00463d6:	4d07      	ldr	r5, [pc, #28]	; (d00463f4 <_read_r+0x20>)
d00463d8:	4604      	mov	r4, r0
d00463da:	4608      	mov	r0, r1
d00463dc:	4611      	mov	r1, r2
d00463de:	2200      	movs	r2, #0
d00463e0:	602a      	str	r2, [r5, #0]
d00463e2:	461a      	mov	r2, r3
d00463e4:	f7f9 fe66 	bl	d00400b4 <_read>
d00463e8:	1c43      	adds	r3, r0, #1
d00463ea:	d102      	bne.n	d00463f2 <_read_r+0x1e>
d00463ec:	682b      	ldr	r3, [r5, #0]
d00463ee:	b103      	cbz	r3, d00463f2 <_read_r+0x1e>
d00463f0:	6023      	str	r3, [r4, #0]
d00463f2:	bd38      	pop	{r3, r4, r5, pc}
d00463f4:	d0132d8c 	.word	0xd0132d8c

d00463f8 <sinf_poly>:
d00463f8:	07cb      	lsls	r3, r1, #31
d00463fa:	d412      	bmi.n	d0046422 <sinf_poly+0x2a>
d00463fc:	ee21 6b00 	vmul.f64	d6, d1, d0
d0046400:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d0046404:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d0046408:	eea5 7b01 	vfma.f64	d7, d5, d1
d004640c:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d0046410:	ee21 1b06 	vmul.f64	d1, d1, d6
d0046414:	eea5 0b06 	vfma.f64	d0, d5, d6
d0046418:	eea7 0b01 	vfma.f64	d0, d7, d1
d004641c:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0046420:	4770      	bx	lr
d0046422:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d0046426:	ee21 6b01 	vmul.f64	d6, d1, d1
d004642a:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d004642e:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d0046432:	eea1 7b05 	vfma.f64	d7, d1, d5
d0046436:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d004643a:	eea1 0b05 	vfma.f64	d0, d1, d5
d004643e:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d0046442:	ee21 1b06 	vmul.f64	d1, d1, d6
d0046446:	eea6 0b05 	vfma.f64	d0, d6, d5
d004644a:	e7e5      	b.n	d0046418 <sinf_poly+0x20>
d004644c:	0000      	movs	r0, r0
	...

d0046450 <cosf>:
d0046450:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0046452:	ee10 4a10 	vmov	r4, s0
d0046456:	f3c4 530a 	ubfx	r3, r4, #20, #11
d004645a:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d004645e:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d0046462:	d20c      	bcs.n	d004647e <cosf+0x2e>
d0046464:	ee26 1b06 	vmul.f64	d1, d6, d6
d0046468:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d004646c:	d378      	bcc.n	d0046560 <cosf+0x110>
d004646e:	eeb0 0b46 	vmov.f64	d0, d6
d0046472:	483f      	ldr	r0, [pc, #252]	; (d0046570 <cosf+0x120>)
d0046474:	2101      	movs	r1, #1
d0046476:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d004647a:	f7ff bfbd 	b.w	d00463f8 <sinf_poly>
d004647e:	f240 422e 	movw	r2, #1070	; 0x42e
d0046482:	4293      	cmp	r3, r2
d0046484:	d826      	bhi.n	d00464d4 <cosf+0x84>
d0046486:	4b3a      	ldr	r3, [pc, #232]	; (d0046570 <cosf+0x120>)
d0046488:	ed93 7b08 	vldr	d7, [r3, #32]
d004648c:	ee26 7b07 	vmul.f64	d7, d6, d7
d0046490:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d0046494:	f103 0070 	add.w	r0, r3, #112	; 0x70
d0046498:	ee17 1a90 	vmov	r1, s15
d004649c:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d00464a0:	1609      	asrs	r1, r1, #24
d00464a2:	ee07 1a90 	vmov	s15, r1
d00464a6:	f001 0203 	and.w	r2, r1, #3
d00464aa:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d00464ae:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d00464b2:	ed92 0b00 	vldr	d0, [r2]
d00464b6:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d00464ba:	f011 0f02 	tst.w	r1, #2
d00464be:	eea5 6b47 	vfms.f64	d6, d5, d7
d00464c2:	f081 0101 	eor.w	r1, r1, #1
d00464c6:	bf08      	it	eq
d00464c8:	4618      	moveq	r0, r3
d00464ca:	ee26 1b06 	vmul.f64	d1, d6, d6
d00464ce:	ee20 0b06 	vmul.f64	d0, d0, d6
d00464d2:	e7d0      	b.n	d0046476 <cosf+0x26>
d00464d4:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d00464d8:	d23e      	bcs.n	d0046558 <cosf+0x108>
d00464da:	4b26      	ldr	r3, [pc, #152]	; (d0046574 <cosf+0x124>)
d00464dc:	f3c4 6283 	ubfx	r2, r4, #26, #4
d00464e0:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d00464e4:	f3c4 0116 	ubfx	r1, r4, #0, #23
d00464e8:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d00464ec:	6a06      	ldr	r6, [r0, #32]
d00464ee:	6900      	ldr	r0, [r0, #16]
d00464f0:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d00464f4:	40a9      	lsls	r1, r5
d00464f6:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d00464fa:	fba1 6706 	umull	r6, r7, r1, r6
d00464fe:	fb05 f301 	mul.w	r3, r5, r1
d0046502:	463a      	mov	r2, r7
d0046504:	fbe0 2301 	umlal	r2, r3, r0, r1
d0046508:	1c11      	adds	r1, r2, #0
d004650a:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d004650e:	2000      	movs	r0, #0
d0046510:	1a10      	subs	r0, r2, r0
d0046512:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d0046516:	eb63 0101 	sbc.w	r1, r3, r1
d004651a:	f000 fbab 	bl	d0046c74 <__aeabi_l2d>
d004651e:	0fb5      	lsrs	r5, r6, #30
d0046520:	4b13      	ldr	r3, [pc, #76]	; (d0046570 <cosf+0x120>)
d0046522:	eb05 74d4 	add.w	r4, r5, r4, lsr #31
d0046526:	ed9f 0b10 	vldr	d0, [pc, #64]	; d0046568 <cosf+0x118>
d004652a:	ec41 0b17 	vmov	d7, r0, r1
d004652e:	f004 0203 	and.w	r2, r4, #3
d0046532:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d0046536:	ee27 0b00 	vmul.f64	d0, d7, d0
d004653a:	ed92 7b00 	vldr	d7, [r2]
d004653e:	ee20 1b00 	vmul.f64	d1, d0, d0
d0046542:	f014 0f02 	tst.w	r4, #2
d0046546:	f103 0070 	add.w	r0, r3, #112	; 0x70
d004654a:	f085 0101 	eor.w	r1, r5, #1
d004654e:	bf08      	it	eq
d0046550:	4618      	moveq	r0, r3
d0046552:	ee27 0b00 	vmul.f64	d0, d7, d0
d0046556:	e78e      	b.n	d0046476 <cosf+0x26>
d0046558:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d004655c:	f000 b844 	b.w	d00465e8 <__math_invalidf>
d0046560:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0046564:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0046566:	bf00      	nop
d0046568:	54442d18 	.word	0x54442d18
d004656c:	3c1921fb 	.word	0x3c1921fb
d0046570:	d0047110 	.word	0xd0047110
d0046574:	d00470b0 	.word	0xd00470b0

d0046578 <with_errnof>:
d0046578:	b513      	push	{r0, r1, r4, lr}
d004657a:	4604      	mov	r4, r0
d004657c:	ed8d 0a01 	vstr	s0, [sp, #4]
d0046580:	f7ff faac 	bl	d0045adc <__errno>
d0046584:	ed9d 0a01 	vldr	s0, [sp, #4]
d0046588:	6004      	str	r4, [r0, #0]
d004658a:	b002      	add	sp, #8
d004658c:	bd10      	pop	{r4, pc}

d004658e <xflowf>:
d004658e:	b130      	cbz	r0, d004659e <xflowf+0x10>
d0046590:	eef1 7a40 	vneg.f32	s15, s0
d0046594:	ee27 0a80 	vmul.f32	s0, s15, s0
d0046598:	2022      	movs	r0, #34	; 0x22
d004659a:	f7ff bfed 	b.w	d0046578 <with_errnof>
d004659e:	eef0 7a40 	vmov.f32	s15, s0
d00465a2:	e7f7      	b.n	d0046594 <xflowf+0x6>

d00465a4 <__math_uflowf>:
d00465a4:	ed9f 0a01 	vldr	s0, [pc, #4]	; d00465ac <__math_uflowf+0x8>
d00465a8:	f7ff bff1 	b.w	d004658e <xflowf>
d00465ac:	10000000 	.word	0x10000000

d00465b0 <__math_may_uflowf>:
d00465b0:	ed9f 0a01 	vldr	s0, [pc, #4]	; d00465b8 <__math_may_uflowf+0x8>
d00465b4:	f7ff bfeb 	b.w	d004658e <xflowf>
d00465b8:	1a200000 	.word	0x1a200000

d00465bc <__math_oflowf>:
d00465bc:	ed9f 0a01 	vldr	s0, [pc, #4]	; d00465c4 <__math_oflowf+0x8>
d00465c0:	f7ff bfe5 	b.w	d004658e <xflowf>
d00465c4:	70000000 	.word	0x70000000

d00465c8 <__math_divzerof>:
d00465c8:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d00465cc:	eeff 7a00 	vmov.f32	s15, #240	; 0xbf800000 -1.0
d00465d0:	2800      	cmp	r0, #0
d00465d2:	fe40 7a27 	vseleq.f32	s15, s0, s15
d00465d6:	ed9f 0a03 	vldr	s0, [pc, #12]	; d00465e4 <__math_divzerof+0x1c>
d00465da:	2022      	movs	r0, #34	; 0x22
d00465dc:	ee87 0a80 	vdiv.f32	s0, s15, s0
d00465e0:	f7ff bfca 	b.w	d0046578 <with_errnof>
d00465e4:	00000000 	.word	0x00000000

d00465e8 <__math_invalidf>:
d00465e8:	eef0 7a40 	vmov.f32	s15, s0
d00465ec:	ee30 7a40 	vsub.f32	s14, s0, s0
d00465f0:	eef4 7a67 	vcmp.f32	s15, s15
d00465f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00465f8:	ee87 0a07 	vdiv.f32	s0, s14, s14
d00465fc:	d602      	bvs.n	d0046604 <__math_invalidf+0x1c>
d00465fe:	2021      	movs	r0, #33	; 0x21
d0046600:	f7ff bfba 	b.w	d0046578 <with_errnof>
d0046604:	4770      	bx	lr
	...

d0046608 <expf>:
d0046608:	ee10 2a10 	vmov	r2, s0
d004660c:	b470      	push	{r4, r5, r6}
d004660e:	f3c2 530a 	ubfx	r3, r2, #20, #11
d0046612:	f240 442a 	movw	r4, #1066	; 0x42a
d0046616:	42a3      	cmp	r3, r4
d0046618:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d004661c:	d92a      	bls.n	d0046674 <expf+0x6c>
d004661e:	f512 0f00 	cmn.w	r2, #8388608	; 0x800000
d0046622:	d059      	beq.n	d00466d8 <expf+0xd0>
d0046624:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0046628:	d303      	bcc.n	d0046632 <expf+0x2a>
d004662a:	ee30 0a00 	vadd.f32	s0, s0, s0
d004662e:	bc70      	pop	{r4, r5, r6}
d0046630:	4770      	bx	lr
d0046632:	eddf 7a2b 	vldr	s15, [pc, #172]	; d00466e0 <expf+0xd8>
d0046636:	eeb4 0ae7 	vcmpe.f32	s0, s15
d004663a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004663e:	dd03      	ble.n	d0046648 <expf+0x40>
d0046640:	bc70      	pop	{r4, r5, r6}
d0046642:	2000      	movs	r0, #0
d0046644:	f7ff bfba 	b.w	d00465bc <__math_oflowf>
d0046648:	eddf 7a26 	vldr	s15, [pc, #152]	; d00466e4 <expf+0xdc>
d004664c:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0046650:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046654:	d503      	bpl.n	d004665e <expf+0x56>
d0046656:	bc70      	pop	{r4, r5, r6}
d0046658:	2000      	movs	r0, #0
d004665a:	f7ff bfa3 	b.w	d00465a4 <__math_uflowf>
d004665e:	eddf 7a22 	vldr	s15, [pc, #136]	; d00466e8 <expf+0xe0>
d0046662:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0046666:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004666a:	d503      	bpl.n	d0046674 <expf+0x6c>
d004666c:	bc70      	pop	{r4, r5, r6}
d004666e:	2000      	movs	r0, #0
d0046670:	f7ff bf9e 	b.w	d00465b0 <__math_may_uflowf>
d0046674:	4b1d      	ldr	r3, [pc, #116]	; (d00466ec <expf+0xe4>)
d0046676:	eeb7 0b00 	vmov.f64	d0, #112	; 0x3f800000  1.0
d004667a:	ed93 5b4a 	vldr	d5, [r3, #296]	; 0x128
d004667e:	ed93 4b48 	vldr	d4, [r3, #288]	; 0x120
d0046682:	eeb0 7b44 	vmov.f64	d7, d4
d0046686:	eea5 7b06 	vfma.f64	d7, d5, d6
d004668a:	ee17 5a10 	vmov	r5, s14
d004668e:	ee37 7b44 	vsub.f64	d7, d7, d4
d0046692:	f005 021f 	and.w	r2, r5, #31
d0046696:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d004669a:	e9d2 4600 	ldrd	r4, r6, [r2]
d004669e:	ee95 7b06 	vfnms.f64	d7, d5, d6
d00466a2:	ed93 4b50 	vldr	d4, [r3, #320]	; 0x140
d00466a6:	ed93 5b4c 	vldr	d5, [r3, #304]	; 0x130
d00466aa:	eea4 0b07 	vfma.f64	d0, d4, d7
d00466ae:	ed93 6b4e 	vldr	d6, [r3, #312]	; 0x138
d00466b2:	2300      	movs	r3, #0
d00466b4:	1918      	adds	r0, r3, r4
d00466b6:	ea4f 32c5 	mov.w	r2, r5, lsl #15
d00466ba:	eb42 0106 	adc.w	r1, r2, r6
d00466be:	eea5 6b07 	vfma.f64	d6, d5, d7
d00466c2:	ee27 5b07 	vmul.f64	d5, d7, d7
d00466c6:	ec41 0b17 	vmov	d7, r0, r1
d00466ca:	eea6 0b05 	vfma.f64	d0, d6, d5
d00466ce:	ee20 0b07 	vmul.f64	d0, d0, d7
d00466d2:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d00466d6:	e7aa      	b.n	d004662e <expf+0x26>
d00466d8:	ed9f 0a05 	vldr	s0, [pc, #20]	; d00466f0 <expf+0xe8>
d00466dc:	e7a7      	b.n	d004662e <expf+0x26>
d00466de:	bf00      	nop
d00466e0:	42b17217 	.word	0x42b17217
d00466e4:	c2cff1b4 	.word	0xc2cff1b4
d00466e8:	c2ce8ecf 	.word	0xc2ce8ecf
d00466ec:	d0046e48 	.word	0xd0046e48
d00466f0:	00000000 	.word	0x00000000

d00466f4 <logf>:
d00466f4:	ee10 3a10 	vmov	r3, s0
d00466f8:	f1b3 5f7e 	cmp.w	r3, #1065353216	; 0x3f800000
d00466fc:	b410      	push	{r4}
d00466fe:	d055      	beq.n	d00467ac <logf+0xb8>
d0046700:	f5a3 0200 	sub.w	r2, r3, #8388608	; 0x800000
d0046704:	f1b2 4ffe 	cmp.w	r2, #2130706432	; 0x7f000000
d0046708:	d31a      	bcc.n	d0046740 <logf+0x4c>
d004670a:	005a      	lsls	r2, r3, #1
d004670c:	d104      	bne.n	d0046718 <logf+0x24>
d004670e:	f85d 4b04 	ldr.w	r4, [sp], #4
d0046712:	2001      	movs	r0, #1
d0046714:	f7ff bf58 	b.w	d00465c8 <__math_divzerof>
d0046718:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d004671c:	d043      	beq.n	d00467a6 <logf+0xb2>
d004671e:	2b00      	cmp	r3, #0
d0046720:	db02      	blt.n	d0046728 <logf+0x34>
d0046722:	f1b2 4f7f 	cmp.w	r2, #4278190080	; 0xff000000
d0046726:	d303      	bcc.n	d0046730 <logf+0x3c>
d0046728:	f85d 4b04 	ldr.w	r4, [sp], #4
d004672c:	f7ff bf5c 	b.w	d00465e8 <__math_invalidf>
d0046730:	eddf 7a20 	vldr	s15, [pc, #128]	; d00467b4 <logf+0xc0>
d0046734:	ee20 0a27 	vmul.f32	s0, s0, s15
d0046738:	ee10 3a10 	vmov	r3, s0
d004673c:	f1a3 6338 	sub.w	r3, r3, #192937984	; 0xb800000
d0046740:	f103 4240 	add.w	r2, r3, #3221225472	; 0xc0000000
d0046744:	491c      	ldr	r1, [pc, #112]	; (d00467b8 <logf+0xc4>)
d0046746:	eebf 0b00 	vmov.f64	d0, #240	; 0xbf800000 -1.0
d004674a:	f502 024d 	add.w	r2, r2, #13434880	; 0xcd0000
d004674e:	f3c2 40c3 	ubfx	r0, r2, #19, #4
d0046752:	0dd4      	lsrs	r4, r2, #23
d0046754:	eb01 1000 	add.w	r0, r1, r0, lsl #4
d0046758:	05e4      	lsls	r4, r4, #23
d004675a:	ed90 6b00 	vldr	d6, [r0]
d004675e:	1b1b      	subs	r3, r3, r4
d0046760:	ee07 3a90 	vmov	s15, r3
d0046764:	ed91 5b40 	vldr	d5, [r1, #256]	; 0x100
d0046768:	eeb7 7ae7 	vcvt.f64.f32	d7, s15
d004676c:	15d2      	asrs	r2, r2, #23
d004676e:	eea6 0b07 	vfma.f64	d0, d6, d7
d0046772:	ed90 6b02 	vldr	d6, [r0, #8]
d0046776:	ee07 2a90 	vmov	s15, r2
d004677a:	ed91 4b44 	vldr	d4, [r1, #272]	; 0x110
d004677e:	eeb8 7be7 	vcvt.f64.s32	d7, s15
d0046782:	eea7 6b05 	vfma.f64	d6, d7, d5
d0046786:	ed91 7b46 	vldr	d7, [r1, #280]	; 0x118
d004678a:	ee20 5b00 	vmul.f64	d5, d0, d0
d004678e:	eea4 7b00 	vfma.f64	d7, d4, d0
d0046792:	ed91 4b42 	vldr	d4, [r1, #264]	; 0x108
d0046796:	ee30 0b06 	vadd.f64	d0, d0, d6
d004679a:	eea4 7b05 	vfma.f64	d7, d4, d5
d004679e:	eea5 0b07 	vfma.f64	d0, d5, d7
d00467a2:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d00467a6:	f85d 4b04 	ldr.w	r4, [sp], #4
d00467aa:	4770      	bx	lr
d00467ac:	ed9f 0a03 	vldr	s0, [pc, #12]	; d00467bc <logf+0xc8>
d00467b0:	e7f9      	b.n	d00467a6 <logf+0xb2>
d00467b2:	bf00      	nop
d00467b4:	4b000000 	.word	0x4b000000
d00467b8:	d0046f90 	.word	0xd0046f90
d00467bc:	00000000 	.word	0x00000000

d00467c0 <sinf_poly>:
d00467c0:	07cb      	lsls	r3, r1, #31
d00467c2:	d412      	bmi.n	d00467ea <sinf_poly+0x2a>
d00467c4:	ee21 6b00 	vmul.f64	d6, d1, d0
d00467c8:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d00467cc:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d00467d0:	eea5 7b01 	vfma.f64	d7, d5, d1
d00467d4:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d00467d8:	ee21 1b06 	vmul.f64	d1, d1, d6
d00467dc:	eea5 0b06 	vfma.f64	d0, d5, d6
d00467e0:	eea7 0b01 	vfma.f64	d0, d7, d1
d00467e4:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d00467e8:	4770      	bx	lr
d00467ea:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d00467ee:	ee21 6b01 	vmul.f64	d6, d1, d1
d00467f2:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d00467f6:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d00467fa:	eea1 7b05 	vfma.f64	d7, d1, d5
d00467fe:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d0046802:	eea1 0b05 	vfma.f64	d0, d1, d5
d0046806:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d004680a:	ee21 1b06 	vmul.f64	d1, d1, d6
d004680e:	eea6 0b05 	vfma.f64	d0, d6, d5
d0046812:	e7e5      	b.n	d00467e0 <sinf_poly+0x20>
d0046814:	0000      	movs	r0, r0
	...

d0046818 <sinf>:
d0046818:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
d004681a:	ee10 4a10 	vmov	r4, s0
d004681e:	f3c4 530a 	ubfx	r3, r4, #20, #11
d0046822:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d0046826:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d004682a:	eef0 7a40 	vmov.f32	s15, s0
d004682e:	ea4f 5214 	mov.w	r2, r4, lsr #20
d0046832:	d218      	bcs.n	d0046866 <sinf+0x4e>
d0046834:	ee26 1b06 	vmul.f64	d1, d6, d6
d0046838:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d004683c:	d20a      	bcs.n	d0046854 <sinf+0x3c>
d004683e:	f412 6fff 	tst.w	r2, #2040	; 0x7f8
d0046842:	d103      	bne.n	d004684c <sinf+0x34>
d0046844:	eeb7 1bc1 	vcvt.f32.f64	s2, d1
d0046848:	ed8d 1a01 	vstr	s2, [sp, #4]
d004684c:	eeb0 0a67 	vmov.f32	s0, s15
d0046850:	b003      	add	sp, #12
d0046852:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0046854:	483e      	ldr	r0, [pc, #248]	; (d0046950 <sinf+0x138>)
d0046856:	eeb0 0b46 	vmov.f64	d0, d6
d004685a:	2100      	movs	r1, #0
d004685c:	b003      	add	sp, #12
d004685e:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0046862:	f7ff bfad 	b.w	d00467c0 <sinf_poly>
d0046866:	f240 422e 	movw	r2, #1070	; 0x42e
d004686a:	4293      	cmp	r3, r2
d004686c:	d824      	bhi.n	d00468b8 <sinf+0xa0>
d004686e:	4b38      	ldr	r3, [pc, #224]	; (d0046950 <sinf+0x138>)
d0046870:	ed93 7b08 	vldr	d7, [r3, #32]
d0046874:	ee26 7b07 	vmul.f64	d7, d6, d7
d0046878:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d004687c:	f103 0070 	add.w	r0, r3, #112	; 0x70
d0046880:	ee17 1a90 	vmov	r1, s15
d0046884:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d0046888:	1609      	asrs	r1, r1, #24
d004688a:	ee07 1a90 	vmov	s15, r1
d004688e:	f001 0203 	and.w	r2, r1, #3
d0046892:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d0046896:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d004689a:	ed92 0b00 	vldr	d0, [r2]
d004689e:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d00468a2:	f011 0f02 	tst.w	r1, #2
d00468a6:	eea5 6b47 	vfms.f64	d6, d5, d7
d00468aa:	bf08      	it	eq
d00468ac:	4618      	moveq	r0, r3
d00468ae:	ee26 1b06 	vmul.f64	d1, d6, d6
d00468b2:	ee20 0b06 	vmul.f64	d0, d0, d6
d00468b6:	e7d1      	b.n	d004685c <sinf+0x44>
d00468b8:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d00468bc:	d23d      	bcs.n	d004693a <sinf+0x122>
d00468be:	4b25      	ldr	r3, [pc, #148]	; (d0046954 <sinf+0x13c>)
d00468c0:	f3c4 6283 	ubfx	r2, r4, #26, #4
d00468c4:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d00468c8:	f3c4 0116 	ubfx	r1, r4, #0, #23
d00468cc:	6a06      	ldr	r6, [r0, #32]
d00468ce:	6900      	ldr	r0, [r0, #16]
d00468d0:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d00468d4:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d00468d8:	40a9      	lsls	r1, r5
d00468da:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d00468de:	fba1 6706 	umull	r6, r7, r1, r6
d00468e2:	fb05 f301 	mul.w	r3, r5, r1
d00468e6:	463a      	mov	r2, r7
d00468e8:	fbe0 2301 	umlal	r2, r3, r0, r1
d00468ec:	1c11      	adds	r1, r2, #0
d00468ee:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d00468f2:	2000      	movs	r0, #0
d00468f4:	1a10      	subs	r0, r2, r0
d00468f6:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d00468fa:	eb63 0101 	sbc.w	r1, r3, r1
d00468fe:	f000 f9b9 	bl	d0046c74 <__aeabi_l2d>
d0046902:	0fb5      	lsrs	r5, r6, #30
d0046904:	4a12      	ldr	r2, [pc, #72]	; (d0046950 <sinf+0x138>)
d0046906:	eb05 73d4 	add.w	r3, r5, r4, lsr #31
d004690a:	ed9f 0b0f 	vldr	d0, [pc, #60]	; d0046948 <sinf+0x130>
d004690e:	ec41 0b17 	vmov	d7, r0, r1
d0046912:	f003 0103 	and.w	r1, r3, #3
d0046916:	eb02 01c1 	add.w	r1, r2, r1, lsl #3
d004691a:	ee27 0b00 	vmul.f64	d0, d7, d0
d004691e:	ed91 7b00 	vldr	d7, [r1]
d0046922:	ee20 1b00 	vmul.f64	d1, d0, d0
d0046926:	f013 0f02 	tst.w	r3, #2
d004692a:	f102 0070 	add.w	r0, r2, #112	; 0x70
d004692e:	4629      	mov	r1, r5
d0046930:	bf08      	it	eq
d0046932:	4610      	moveq	r0, r2
d0046934:	ee27 0b00 	vmul.f64	d0, d7, d0
d0046938:	e790      	b.n	d004685c <sinf+0x44>
d004693a:	b003      	add	sp, #12
d004693c:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0046940:	f7ff be52 	b.w	d00465e8 <__math_invalidf>
d0046944:	f3af 8000 	nop.w
d0046948:	54442d18 	.word	0x54442d18
d004694c:	3c1921fb 	.word	0x3c1921fb
d0046950:	d0047110 	.word	0xd0047110
d0046954:	d00470b0 	.word	0xd00470b0

d0046958 <__aeabi_drsub>:
d0046958:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
d004695c:	e002      	b.n	d0046964 <__adddf3>
d004695e:	bf00      	nop

d0046960 <__aeabi_dsub>:
d0046960:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

d0046964 <__adddf3>:
d0046964:	b530      	push	{r4, r5, lr}
d0046966:	ea4f 0441 	mov.w	r4, r1, lsl #1
d004696a:	ea4f 0543 	mov.w	r5, r3, lsl #1
d004696e:	ea94 0f05 	teq	r4, r5
d0046972:	bf08      	it	eq
d0046974:	ea90 0f02 	teqeq	r0, r2
d0046978:	bf1f      	itttt	ne
d004697a:	ea54 0c00 	orrsne.w	ip, r4, r0
d004697e:	ea55 0c02 	orrsne.w	ip, r5, r2
d0046982:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
d0046986:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d004698a:	f000 80e2 	beq.w	d0046b52 <__adddf3+0x1ee>
d004698e:	ea4f 5454 	mov.w	r4, r4, lsr #21
d0046992:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
d0046996:	bfb8      	it	lt
d0046998:	426d      	neglt	r5, r5
d004699a:	dd0c      	ble.n	d00469b6 <__adddf3+0x52>
d004699c:	442c      	add	r4, r5
d004699e:	ea80 0202 	eor.w	r2, r0, r2
d00469a2:	ea81 0303 	eor.w	r3, r1, r3
d00469a6:	ea82 0000 	eor.w	r0, r2, r0
d00469aa:	ea83 0101 	eor.w	r1, r3, r1
d00469ae:	ea80 0202 	eor.w	r2, r0, r2
d00469b2:	ea81 0303 	eor.w	r3, r1, r3
d00469b6:	2d36      	cmp	r5, #54	; 0x36
d00469b8:	bf88      	it	hi
d00469ba:	bd30      	pophi	{r4, r5, pc}
d00469bc:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
d00469c0:	ea4f 3101 	mov.w	r1, r1, lsl #12
d00469c4:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
d00469c8:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
d00469cc:	d002      	beq.n	d00469d4 <__adddf3+0x70>
d00469ce:	4240      	negs	r0, r0
d00469d0:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d00469d4:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
d00469d8:	ea4f 3303 	mov.w	r3, r3, lsl #12
d00469dc:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
d00469e0:	d002      	beq.n	d00469e8 <__adddf3+0x84>
d00469e2:	4252      	negs	r2, r2
d00469e4:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
d00469e8:	ea94 0f05 	teq	r4, r5
d00469ec:	f000 80a7 	beq.w	d0046b3e <__adddf3+0x1da>
d00469f0:	f1a4 0401 	sub.w	r4, r4, #1
d00469f4:	f1d5 0e20 	rsbs	lr, r5, #32
d00469f8:	db0d      	blt.n	d0046a16 <__adddf3+0xb2>
d00469fa:	fa02 fc0e 	lsl.w	ip, r2, lr
d00469fe:	fa22 f205 	lsr.w	r2, r2, r5
d0046a02:	1880      	adds	r0, r0, r2
d0046a04:	f141 0100 	adc.w	r1, r1, #0
d0046a08:	fa03 f20e 	lsl.w	r2, r3, lr
d0046a0c:	1880      	adds	r0, r0, r2
d0046a0e:	fa43 f305 	asr.w	r3, r3, r5
d0046a12:	4159      	adcs	r1, r3
d0046a14:	e00e      	b.n	d0046a34 <__adddf3+0xd0>
d0046a16:	f1a5 0520 	sub.w	r5, r5, #32
d0046a1a:	f10e 0e20 	add.w	lr, lr, #32
d0046a1e:	2a01      	cmp	r2, #1
d0046a20:	fa03 fc0e 	lsl.w	ip, r3, lr
d0046a24:	bf28      	it	cs
d0046a26:	f04c 0c02 	orrcs.w	ip, ip, #2
d0046a2a:	fa43 f305 	asr.w	r3, r3, r5
d0046a2e:	18c0      	adds	r0, r0, r3
d0046a30:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
d0046a34:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d0046a38:	d507      	bpl.n	d0046a4a <__adddf3+0xe6>
d0046a3a:	f04f 0e00 	mov.w	lr, #0
d0046a3e:	f1dc 0c00 	rsbs	ip, ip, #0
d0046a42:	eb7e 0000 	sbcs.w	r0, lr, r0
d0046a46:	eb6e 0101 	sbc.w	r1, lr, r1
d0046a4a:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
d0046a4e:	d31b      	bcc.n	d0046a88 <__adddf3+0x124>
d0046a50:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
d0046a54:	d30c      	bcc.n	d0046a70 <__adddf3+0x10c>
d0046a56:	0849      	lsrs	r1, r1, #1
d0046a58:	ea5f 0030 	movs.w	r0, r0, rrx
d0046a5c:	ea4f 0c3c 	mov.w	ip, ip, rrx
d0046a60:	f104 0401 	add.w	r4, r4, #1
d0046a64:	ea4f 5244 	mov.w	r2, r4, lsl #21
d0046a68:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
d0046a6c:	f080 809a 	bcs.w	d0046ba4 <__adddf3+0x240>
d0046a70:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
d0046a74:	bf08      	it	eq
d0046a76:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
d0046a7a:	f150 0000 	adcs.w	r0, r0, #0
d0046a7e:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
d0046a82:	ea41 0105 	orr.w	r1, r1, r5
d0046a86:	bd30      	pop	{r4, r5, pc}
d0046a88:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
d0046a8c:	4140      	adcs	r0, r0
d0046a8e:	eb41 0101 	adc.w	r1, r1, r1
d0046a92:	3c01      	subs	r4, #1
d0046a94:	bf28      	it	cs
d0046a96:	f5b1 1f80 	cmpcs.w	r1, #1048576	; 0x100000
d0046a9a:	d2e9      	bcs.n	d0046a70 <__adddf3+0x10c>
d0046a9c:	f091 0f00 	teq	r1, #0
d0046aa0:	bf04      	itt	eq
d0046aa2:	4601      	moveq	r1, r0
d0046aa4:	2000      	moveq	r0, #0
d0046aa6:	fab1 f381 	clz	r3, r1
d0046aaa:	bf08      	it	eq
d0046aac:	3320      	addeq	r3, #32
d0046aae:	f1a3 030b 	sub.w	r3, r3, #11
d0046ab2:	f1b3 0220 	subs.w	r2, r3, #32
d0046ab6:	da0c      	bge.n	d0046ad2 <__adddf3+0x16e>
d0046ab8:	320c      	adds	r2, #12
d0046aba:	dd08      	ble.n	d0046ace <__adddf3+0x16a>
d0046abc:	f102 0c14 	add.w	ip, r2, #20
d0046ac0:	f1c2 020c 	rsb	r2, r2, #12
d0046ac4:	fa01 f00c 	lsl.w	r0, r1, ip
d0046ac8:	fa21 f102 	lsr.w	r1, r1, r2
d0046acc:	e00c      	b.n	d0046ae8 <__adddf3+0x184>
d0046ace:	f102 0214 	add.w	r2, r2, #20
d0046ad2:	bfd8      	it	le
d0046ad4:	f1c2 0c20 	rsble	ip, r2, #32
d0046ad8:	fa01 f102 	lsl.w	r1, r1, r2
d0046adc:	fa20 fc0c 	lsr.w	ip, r0, ip
d0046ae0:	bfdc      	itt	le
d0046ae2:	ea41 010c 	orrle.w	r1, r1, ip
d0046ae6:	4090      	lslle	r0, r2
d0046ae8:	1ae4      	subs	r4, r4, r3
d0046aea:	bfa2      	ittt	ge
d0046aec:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
d0046af0:	4329      	orrge	r1, r5
d0046af2:	bd30      	popge	{r4, r5, pc}
d0046af4:	ea6f 0404 	mvn.w	r4, r4
d0046af8:	3c1f      	subs	r4, #31
d0046afa:	da1c      	bge.n	d0046b36 <__adddf3+0x1d2>
d0046afc:	340c      	adds	r4, #12
d0046afe:	dc0e      	bgt.n	d0046b1e <__adddf3+0x1ba>
d0046b00:	f104 0414 	add.w	r4, r4, #20
d0046b04:	f1c4 0220 	rsb	r2, r4, #32
d0046b08:	fa20 f004 	lsr.w	r0, r0, r4
d0046b0c:	fa01 f302 	lsl.w	r3, r1, r2
d0046b10:	ea40 0003 	orr.w	r0, r0, r3
d0046b14:	fa21 f304 	lsr.w	r3, r1, r4
d0046b18:	ea45 0103 	orr.w	r1, r5, r3
d0046b1c:	bd30      	pop	{r4, r5, pc}
d0046b1e:	f1c4 040c 	rsb	r4, r4, #12
d0046b22:	f1c4 0220 	rsb	r2, r4, #32
d0046b26:	fa20 f002 	lsr.w	r0, r0, r2
d0046b2a:	fa01 f304 	lsl.w	r3, r1, r4
d0046b2e:	ea40 0003 	orr.w	r0, r0, r3
d0046b32:	4629      	mov	r1, r5
d0046b34:	bd30      	pop	{r4, r5, pc}
d0046b36:	fa21 f004 	lsr.w	r0, r1, r4
d0046b3a:	4629      	mov	r1, r5
d0046b3c:	bd30      	pop	{r4, r5, pc}
d0046b3e:	f094 0f00 	teq	r4, #0
d0046b42:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
d0046b46:	bf06      	itte	eq
d0046b48:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
d0046b4c:	3401      	addeq	r4, #1
d0046b4e:	3d01      	subne	r5, #1
d0046b50:	e74e      	b.n	d00469f0 <__adddf3+0x8c>
d0046b52:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d0046b56:	bf18      	it	ne
d0046b58:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d0046b5c:	d029      	beq.n	d0046bb2 <__adddf3+0x24e>
d0046b5e:	ea94 0f05 	teq	r4, r5
d0046b62:	bf08      	it	eq
d0046b64:	ea90 0f02 	teqeq	r0, r2
d0046b68:	d005      	beq.n	d0046b76 <__adddf3+0x212>
d0046b6a:	ea54 0c00 	orrs.w	ip, r4, r0
d0046b6e:	bf04      	itt	eq
d0046b70:	4619      	moveq	r1, r3
d0046b72:	4610      	moveq	r0, r2
d0046b74:	bd30      	pop	{r4, r5, pc}
d0046b76:	ea91 0f03 	teq	r1, r3
d0046b7a:	bf1e      	ittt	ne
d0046b7c:	2100      	movne	r1, #0
d0046b7e:	2000      	movne	r0, #0
d0046b80:	bd30      	popne	{r4, r5, pc}
d0046b82:	ea5f 5c54 	movs.w	ip, r4, lsr #21
d0046b86:	d105      	bne.n	d0046b94 <__adddf3+0x230>
d0046b88:	0040      	lsls	r0, r0, #1
d0046b8a:	4149      	adcs	r1, r1
d0046b8c:	bf28      	it	cs
d0046b8e:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
d0046b92:	bd30      	pop	{r4, r5, pc}
d0046b94:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
d0046b98:	bf3c      	itt	cc
d0046b9a:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
d0046b9e:	bd30      	popcc	{r4, r5, pc}
d0046ba0:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d0046ba4:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
d0046ba8:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
d0046bac:	f04f 0000 	mov.w	r0, #0
d0046bb0:	bd30      	pop	{r4, r5, pc}
d0046bb2:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d0046bb6:	bf1a      	itte	ne
d0046bb8:	4619      	movne	r1, r3
d0046bba:	4610      	movne	r0, r2
d0046bbc:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
d0046bc0:	bf1c      	itt	ne
d0046bc2:	460b      	movne	r3, r1
d0046bc4:	4602      	movne	r2, r0
d0046bc6:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
d0046bca:	bf06      	itte	eq
d0046bcc:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
d0046bd0:	ea91 0f03 	teqeq	r1, r3
d0046bd4:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
d0046bd8:	bd30      	pop	{r4, r5, pc}
d0046bda:	bf00      	nop

d0046bdc <__aeabi_ui2d>:
d0046bdc:	f090 0f00 	teq	r0, #0
d0046be0:	bf04      	itt	eq
d0046be2:	2100      	moveq	r1, #0
d0046be4:	4770      	bxeq	lr
d0046be6:	b530      	push	{r4, r5, lr}
d0046be8:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0046bec:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0046bf0:	f04f 0500 	mov.w	r5, #0
d0046bf4:	f04f 0100 	mov.w	r1, #0
d0046bf8:	e750      	b.n	d0046a9c <__adddf3+0x138>
d0046bfa:	bf00      	nop

d0046bfc <__aeabi_i2d>:
d0046bfc:	f090 0f00 	teq	r0, #0
d0046c00:	bf04      	itt	eq
d0046c02:	2100      	moveq	r1, #0
d0046c04:	4770      	bxeq	lr
d0046c06:	b530      	push	{r4, r5, lr}
d0046c08:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0046c0c:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0046c10:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
d0046c14:	bf48      	it	mi
d0046c16:	4240      	negmi	r0, r0
d0046c18:	f04f 0100 	mov.w	r1, #0
d0046c1c:	e73e      	b.n	d0046a9c <__adddf3+0x138>
d0046c1e:	bf00      	nop

d0046c20 <__aeabi_f2d>:
d0046c20:	0042      	lsls	r2, r0, #1
d0046c22:	ea4f 01e2 	mov.w	r1, r2, asr #3
d0046c26:	ea4f 0131 	mov.w	r1, r1, rrx
d0046c2a:	ea4f 7002 	mov.w	r0, r2, lsl #28
d0046c2e:	bf1f      	itttt	ne
d0046c30:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
d0046c34:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
d0046c38:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
d0046c3c:	4770      	bxne	lr
d0046c3e:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
d0046c42:	bf08      	it	eq
d0046c44:	4770      	bxeq	lr
d0046c46:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
d0046c4a:	bf04      	itt	eq
d0046c4c:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
d0046c50:	4770      	bxeq	lr
d0046c52:	b530      	push	{r4, r5, lr}
d0046c54:	f44f 7460 	mov.w	r4, #896	; 0x380
d0046c58:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d0046c5c:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
d0046c60:	e71c      	b.n	d0046a9c <__adddf3+0x138>
d0046c62:	bf00      	nop

d0046c64 <__aeabi_ul2d>:
d0046c64:	ea50 0201 	orrs.w	r2, r0, r1
d0046c68:	bf08      	it	eq
d0046c6a:	4770      	bxeq	lr
d0046c6c:	b530      	push	{r4, r5, lr}
d0046c6e:	f04f 0500 	mov.w	r5, #0
d0046c72:	e00a      	b.n	d0046c8a <__aeabi_l2d+0x16>

d0046c74 <__aeabi_l2d>:
d0046c74:	ea50 0201 	orrs.w	r2, r0, r1
d0046c78:	bf08      	it	eq
d0046c7a:	4770      	bxeq	lr
d0046c7c:	b530      	push	{r4, r5, lr}
d0046c7e:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
d0046c82:	d502      	bpl.n	d0046c8a <__aeabi_l2d+0x16>
d0046c84:	4240      	negs	r0, r0
d0046c86:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d0046c8a:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0046c8e:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0046c92:	ea5f 5c91 	movs.w	ip, r1, lsr #22
d0046c96:	f43f aed8 	beq.w	d0046a4a <__adddf3+0xe6>
d0046c9a:	f04f 0203 	mov.w	r2, #3
d0046c9e:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d0046ca2:	bf18      	it	ne
d0046ca4:	3203      	addne	r2, #3
d0046ca6:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d0046caa:	bf18      	it	ne
d0046cac:	3203      	addne	r2, #3
d0046cae:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
d0046cb2:	f1c2 0320 	rsb	r3, r2, #32
d0046cb6:	fa00 fc03 	lsl.w	ip, r0, r3
d0046cba:	fa20 f002 	lsr.w	r0, r0, r2
d0046cbe:	fa01 fe03 	lsl.w	lr, r1, r3
d0046cc2:	ea40 000e 	orr.w	r0, r0, lr
d0046cc6:	fa21 f102 	lsr.w	r1, r1, r2
d0046cca:	4414      	add	r4, r2
d0046ccc:	e6bd      	b.n	d0046a4a <__adddf3+0xe6>
d0046cce:	bf00      	nop
d0046cd0:	2e706661 	.word	0x2e706661
d0046cd4:	00646f6d 	.word	0x00646f6d
d0046cd8:	616c7369 	.word	0x616c7369
d0046cdc:	2e78646e 	.word	0x2e78646e
d0046ce0:	64336273 	.word	0x64336273
d0046ce4:	00000000 	.word	0x00000000
d0046ce8:	72726163 	.word	0x72726163
d0046cec:	2e726569 	.word	0x2e726569
d0046cf0:	64336273 	.word	0x64336273
d0046cf4:	00000000 	.word	0x00000000
d0046cf8:	74786574 	.word	0x74786574
d0046cfc:	3362732e 	.word	0x3362732e
d0046d00:	00000064 	.word	0x00000064
d0046d04:	ff5516e3 	.word	0xff5516e3
d0046d08:	ffffffff 	.word	0xffffffff
d0046d0c:	ffff0000 	.word	0xffff0000
d0046d10:	ff00ff00 	.word	0xff00ff00
d0046d14:	ff0000ff 	.word	0xff0000ff
d0046d18:	ffffff00 	.word	0xffffff00
d0046d1c:	ffff00ff 	.word	0xffff00ff
d0046d20:	ff00ffff 	.word	0xff00ffff
d0046d24:	ff808080 	.word	0xff808080
d0046d28:	ffff8000 	.word	0xffff8000
d0046d2c:	ff8000ff 	.word	0xff8000ff
d0046d30:	ff0080ff 	.word	0xff0080ff
d0046d34:	ff80ff00 	.word	0xff80ff00
d0046d38:	ffff0080 	.word	0xffff0080
d0046d3c:	ff00ff80 	.word	0xff00ff80
d0046d40:	ffc0c0c0 	.word	0xffc0c0c0
d0046d44:	3f800000 	.word	0x3f800000
d0046d48:	3f400000 	.word	0x3f400000
d0046d4c:	3f0ccccd 	.word	0x3f0ccccd
d0046d50:	3eb33333 	.word	0x3eb33333
d0046d54:	3e4ccccd 	.word	0x3e4ccccd
d0046d58:	bf800000 	.word	0xbf800000
d0046d5c:	bf000000 	.word	0xbf000000
d0046d60:	3e99999a 	.word	0x3e99999a

d0046d64 <bayer4x4>:
d0046d64:	0a020800 060e040c 09010b03 050d070f     ................
	...
d0046d98:	3f800000 00000000 00000000 00000000     ...?............
d0046da8:	3f800000 00000000 00000000 00000000     ...?............
d0046db8:	3f800000 3a8312c5 3c23d70a 447a0000     ...?...:..#<..zD
	...

d0046de0 <__sf_fake_stderr>:
	...

d0046e00 <__sf_fake_stdin>:
	...

d0046e20 <__sf_fake_stdout>:
	...

d0046e40 <_global_impure_ptr>:
d0046e40:	d00475fc 00000000                       .u......

d0046e48 <__exp2f_data>:
d0046e48:	00000000 3ff00000 d3158574 3fefd9b0     .......?t......?
d0046e58:	6cf9890f 3fefb558 d0125b51 3fef9301     ...lX..?Q[.....?
d0046e68:	3c7d517b 3fef72b8 3168b9aa 3fef5487     {Q}<.r.?..h1.T.?
d0046e78:	6e756238 3fef387a f51fdee1 3fef1e9d     8bunz8.?.......?
d0046e88:	0a31b715 3fef06fe 373aa9cb 3feef1a7     ..1....?..:7...?
d0046e98:	4c123422 3feedea6 6061892d 3feece08     "4.L...?-.a`...?
d0046ea8:	d5362a27 3feebfda 569d4f82 3feeb42b     '*6....?.O.V+..?
d0046eb8:	dd485429 3feeab07 b03a5585 3feea47e     )TH....?.U:.~..?
d0046ec8:	667f3bcd 3feea09e e8ec5f74 3fee9f75     .;.f...?t_..u..?
d0046ed8:	73eb0187 3feea114 994cce13 3feea589     ...s...?..L....?
d0046ee8:	422aa0db 3feeace5 b0cdc5e5 3feeb737     ..*B...?....7..?
d0046ef8:	82a3f090 3feec491 b23e255d 3feed503     .......?]%>....?
d0046f08:	995ad3ad 3feee89f f2fb5e47 3feeff76     ..Z....?G^..v..?
d0046f18:	dd85529c 3fef199b dcef9069 3fef3720     .R.....?i... 7.?
d0046f28:	dcfba487 3fef5818 337b9b5f 3fef7c97     .....X.?_.{3.|.?
d0046f38:	a2a490da 3fefa4af 5b6e4540 3fefd076     .......?@En[v..?
d0046f48:	00000000 42e80000 4b912394 3fac6af8     .......B.#.K.j.?
d0046f58:	50fac4f3 3fcebfce ff0c52d6 3fe62e42     ...P...?.R..B..?
d0046f68:	00000000 43380000 652b82fe 40471547     ......8C..+eG.G@
d0046f78:	4b912394 3ebc6af8 50fac4f3 3f2ebfce     .#.K.j.>...P...?
d0046f88:	ff0c52d6 3f962e42                       .R..B..?

d0046f90 <__logf_data>:
d0046f90:	79f8f3be 3ff661ec 808caade bfd57bf7     ...y.a.?.....{..
d0046fa0:	4aaf883d 3ff571ed a7c06ddb bfd2bef0     =..J.q.?.m......
d0046fb0:	f0f010b0 3ff49539 7f513a67 bfd01eae     ....9..?g:Q.....
d0046fc0:	b0b80385 3ff3c995 a68224e9 bfcb31d8     .......?.$...1..
d0046fd0:	0c8864a5 3ff30d19 0ac07758 bfc6574f     .d.....?Xw..OW..
d0046fe0:	7b0b8ea0 3ff25e22 c79c8100 bfc1aa2b     ...{"^.?....+...
d0046ff0:	4a1a343f 3ff1bb4a ce8c0e5e bfba4e76     ?4.JJ..?^...vN..
d0047000:	f08ae5ba 3ff12358 5a611ccc bfb1973c     ....X#.?..aZ<...
d0047010:	419900a7 3ff0953f 38e10c1e bfa252f4     ...A?..?...8.R..
d0047020:	00000000 3ff00000 00000000 00000000     .......?........
d0047030:	fd9a47ac 3fee608c 5df25984 3faaa5aa     .G...`.?.Y.]...?
d0047040:	1f026aa0 3feca4b3 aa362eb4 3fbc5e53     .j.....?..6.S^.?
d0047050:	576afce6 3feb2036 7720db08 3fc526e5     ..jW6 .?.. w.&.?
d0047060:	63a1aa2d 3fe9c2d1 0d224770 3fcbc286     -..c...?pG"....?
d0047070:	037841ed 3fe886e6 c8a07ee1 3fd1058b     .Ax....?.~.....?
d0047080:	f5534862 3fe767dc 57b6ee09 3fd40430     bHS..g.?...W0..?
d0047090:	fefa39ef 3fe62e42 48b88334 bfd00ea3     .9..B..?4..H....
d00470a0:	0be00b6a 3fd5575b f20a4123 bfdffffe     j...[W.?#A......

d00470b0 <__inv_pio4>:
d00470b0:	000000a2 0000a2f9 00a2f983 a2f9836e     ............n...
d00470c0:	f9836e4e 836e4e44 6e4e4415 4e441529     Nn..DNn..DNn).DN
d00470d0:	441529fc 1529fc27 29fc2757 fc2757d1     .).D'.).W'.).W'.
d00470e0:	2757d1f5 57d1f534 d1f534dd f534ddc0     ..W'4..W.4....4.
d00470f0:	34ddc0db ddc0db62 c0db6295 db629599     ...4b....b....b.
d0047100:	6295993c 95993c43 993c4390 3c439041     <..bC<...C<.A.C<

d0047110 <__sincosf_table>:
d0047110:	00000000 3ff00000 00000000 bff00000     .......?........
d0047120:	00000000 bff00000 00000000 3ff00000     ...............?
d0047130:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d0047140:	00000000 3ff00000 fd0c621c bfdfffff     .......?.b......
d0047150:	e1068f19 3fa55553 e89a359d bf56c087     ....SU.?.5....V.
d0047160:	027bf8c3 3ef99343 5995a603 bfc55554     ..{.C..>...YTU..
d0047170:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).
d0047180:	00000000 3ff00000 00000000 bff00000     .......?........
d0047190:	00000000 bff00000 00000000 3ff00000     ...............?
d00471a0:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d00471b0:	00000000 bff00000 fd0c621c 3fdfffff     .........b.....?
d00471c0:	e1068f19 bfa55553 e89a359d 3f56c087     ....SU...5....V?
d00471d0:	027bf8c3 bef99343 5995a603 bfc55554     ..{.C......YTU..
d00471e0:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).

Disassembly of section .init:

d00471f0 <_init>:
d00471f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00471f2:	bf00      	nop

Disassembly of section .fini:

d00471f4 <_fini>:
d00471f4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00471f6:	bf00      	nop
