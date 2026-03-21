
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
d004001e:	f006 f815 	bl	d004604c <setbuf>
d0040022:	6833      	ldr	r3, [r6, #0]
d0040024:	2100      	movs	r1, #0
d0040026:	68d8      	ldr	r0, [r3, #12]
d0040028:	f006 f810 	bl	d004604c <setbuf>
d004002c:	4629      	mov	r1, r5
d004002e:	4620      	mov	r0, r4
d0040030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0040034:	f000 b90c 	b.w	d0040250 <main>
d0040038:	d00474f8 	.word	0xd00474f8

d004003c <initMalloc>:
d004003c:	4902      	ldr	r1, [pc, #8]	; (d0040048 <initMalloc+0xc>)
d004003e:	4b03      	ldr	r3, [pc, #12]	; (d004004c <initMalloc+0x10>)
d0040040:	4a03      	ldr	r2, [pc, #12]	; (d0040050 <initMalloc+0x14>)
d0040042:	1a5b      	subs	r3, r3, r1
d0040044:	6013      	str	r3, [r2, #0]
d0040046:	4770      	bx	lr
d0040048:	d0134c90 	.word	0xd0134c90
d004004c:	d0600000 	.word	0xd0600000
d0040050:	d00e1be8 	.word	0xd00e1be8

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
d004009c:	f005 fcac 	bl	d00459f8 <__errno>
d00400a0:	2209      	movs	r2, #9
d00400a2:	4603      	mov	r3, r0
d00400a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00400a8:	601a      	str	r2, [r3, #0]
d00400aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00400ac:	d0047564 	.word	0xd0047564
d00400b0:	2001f000 	.word	0x2001f000

d00400b4 <_read>:
d00400b4:	b508      	push	{r3, lr}
d00400b6:	f005 fc9f 	bl	d00459f8 <__errno>
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
d0040102:	f005 fc79 	bl	d00459f8 <__errno>
d0040106:	220c      	movs	r2, #12
d0040108:	4603      	mov	r3, r0
d004010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004010e:	601a      	str	r2, [r3, #0]
d0040110:	bd10      	pop	{r4, pc}
d0040112:	bf00      	nop
d0040114:	d0047560 	.word	0xd0047560
d0040118:	d0134c90 	.word	0xd0134c90
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
d0040248:	d00e1c60 	.word	0xd00e1c60
d004024c:	d00e1c40 	.word	0xd00e1c40

d0040250 <main>:
d0040250:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040254:	ed2d 8b0a 	vpush	{d8-d12}
d0040258:	b0d3      	sub	sp, #332	; 0x14c
d004025a:	4d97      	ldr	r5, [pc, #604]	; (d00404b8 <main+0x268>)
d004025c:	f7ff ff60 	bl	d0040120 <initSystem>
d0040260:	f8df 82a4 	ldr.w	r8, [pc, #676]	; d0040508 <main+0x2b8>
d0040264:	f002 fd6c 	bl	d0042d40 <worldClear>
d0040268:	ae30      	add	r6, sp, #192	; 0xc0
d004026a:	f003 fbed 	bl	d0043a48 <lightsClear>
d004026e:	af13      	add	r7, sp, #76	; 0x4c
d0040270:	f002 fa6a 	bl	d0042748 <sb3dParticlesClear>
d0040274:	4c91      	ldr	r4, [pc, #580]	; (d00404bc <main+0x26c>)
d0040276:	f003 fc1d 	bl	d0043ab4 <setDefaultRenderMode>
d004027a:	a840      	add	r0, sp, #256	; 0x100
d004027c:	f002 fd68 	bl	d0042d50 <cameraCreate>
d0040280:	a840      	add	r0, sp, #256	; 0x100
d0040282:	eddf 0a8f 	vldr	s1, [pc, #572]	; d00404c0 <main+0x270>
d0040286:	ed9f 0a8f 	vldr	s0, [pc, #572]	; d00404c4 <main+0x274>
d004028a:	f002 ff81 	bl	d0043190 <cameraSetRange>
d004028e:	ed9f 1aa8 	vldr	s2, [pc, #672]	; d0040530 <main+0x2e0>
d0040292:	eddf 0a8d 	vldr	s1, [pc, #564]	; d00404c8 <main+0x278>
d0040296:	eeb0 0a41 	vmov.f32	s0, s2
d004029a:	f8df b270 	ldr.w	fp, [pc, #624]	; d004050c <main+0x2bc>
d004029e:	f002 f9b3 	bl	d0042608 <vec3>
d00402a2:	a840      	add	r0, sp, #256	; 0x100
d00402a4:	edcd 0a0b 	vstr	s1, [sp, #44]	; 0x2c
d00402a8:	ed8d 0a0a 	vstr	s0, [sp, #40]	; 0x28
d00402ac:	ed8d 1a0c 	vstr	s2, [sp, #48]	; 0x30
d00402b0:	f002 fd58 	bl	d0042d64 <cameraSetPosition>
d00402b4:	a840      	add	r0, sp, #256	; 0x100
d00402b6:	f8df 9258 	ldr.w	r9, [pc, #600]	; d0040510 <main+0x2c0>
d00402ba:	f002 fd63 	bl	d0042d84 <cameraNormalize>
d00402be:	f04f 4c7f 	mov.w	ip, #4278190080	; 0xff000000
d00402c2:	46be      	mov	lr, r7
d00402c4:	ed9f 9a81 	vldr	s18, [pc, #516]	; d00404cc <main+0x27c>
d00402c8:	ed9f ba81 	vldr	s22, [pc, #516]	; d00404d0 <main+0x280>
d00402cc:	eddf aa81 	vldr	s21, [pc, #516]	; d00404d4 <main+0x284>
d00402d0:	ed9f aa81 	vldr	s20, [pc, #516]	; d00404d8 <main+0x288>
d00402d4:	eddf 9a81 	vldr	s19, [pc, #516]	; d00404dc <main+0x28c>
d00402d8:	f8df a238 	ldr.w	sl, [pc, #568]	; d0040514 <main+0x2c4>
d00402dc:	eddf 8a94 	vldr	s17, [pc, #592]	; d0040530 <main+0x2e0>
d00402e0:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d00402e2:	c60f      	stmia	r6!, {r0, r1, r2, r3}
d00402e4:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d00402e6:	c60f      	stmia	r6!, {r0, r1, r2, r3}
d00402e8:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d00402ea:	c60f      	stmia	r6!, {r0, r1, r2, r3}
d00402ec:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d00402f0:	e886 000f 	stmia.w	r6, {r0, r1, r2, r3}
d00402f4:	f105 0610 	add.w	r6, r5, #16
d00402f8:	f8c8 c000 	str.w	ip, [r8]
d00402fc:	f8c8 c040 	str.w	ip, [r8, #64]	; 0x40
d0040300:	3524      	adds	r5, #36	; 0x24
d0040302:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
d0040304:	6836      	ldr	r6, [r6, #0]
d0040306:	c70f      	stmia	r7!, {r0, r1, r2, r3}
d0040308:	4663      	mov	r3, ip
d004030a:	f8cd e000 	str.w	lr, [sp]
d004030e:	4640      	mov	r0, r8
d0040310:	2210      	movs	r2, #16
d0040312:	a930      	add	r1, sp, #192	; 0xc0
d0040314:	603e      	str	r6, [r7, #0]
d0040316:	f003 f957 	bl	d00435c8 <buildLightingCLUT>
d004031a:	7b23      	ldrb	r3, [r4, #12]
d004031c:	7b62      	ldrb	r2, [r4, #13]
d004031e:	4640      	mov	r0, r8
d0040320:	7ba1      	ldrb	r1, [r4, #14]
d0040322:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040326:	7be2      	ldrb	r2, [r4, #15]
d0040328:	4f6d      	ldr	r7, [pc, #436]	; (d00404e0 <main+0x290>)
d004032a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004032e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040332:	681b      	ldr	r3, [r3, #0]
d0040334:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d0040336:	4798      	blx	r3
d0040338:	7c23      	ldrb	r3, [r4, #16]
d004033a:	7c62      	ldrb	r2, [r4, #17]
d004033c:	2100      	movs	r1, #0
d004033e:	4869      	ldr	r0, [pc, #420]	; (d00404e4 <main+0x294>)
d0040340:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040344:	7ca2      	ldrb	r2, [r4, #18]
d0040346:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004034a:	7ce2      	ldrb	r2, [r4, #19]
d004034c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040350:	685b      	ldr	r3, [r3, #4]
d0040352:	681b      	ldr	r3, [r3, #0]
d0040354:	4798      	blx	r3
d0040356:	ab07      	add	r3, sp, #28
d0040358:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d004035c:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d0040360:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0040364:	2001      	movs	r0, #1
d0040366:	edd3 0a01 	vldr	s1, [r3, #4]
d004036a:	ed93 1a02 	vldr	s2, [r3, #8]
d004036e:	ed93 0a00 	vldr	s0, [r3]
d0040372:	f003 fb6f 	bl	d0043a54 <addDirectionalLight>
d0040376:	4d5c      	ldr	r5, [pc, #368]	; (d00404e8 <main+0x298>)
d0040378:	203b      	movs	r0, #59	; 0x3b
d004037a:	2309      	movs	r3, #9
d004037c:	222b      	movs	r2, #43	; 0x2b
d004037e:	a918      	add	r1, sp, #96	; 0x60
d0040380:	7028      	strb	r0, [r5, #0]
d0040382:	4d5a      	ldr	r5, [pc, #360]	; (d00404ec <main+0x29c>)
d0040384:	f88b 3000 	strb.w	r3, [fp]
d0040388:	2302      	movs	r3, #2
d004038a:	702a      	strb	r2, [r5, #0]
d004038c:	4a58      	ldr	r2, [pc, #352]	; (d00404f0 <main+0x2a0>)
d004038e:	ed9f 0a59 	vldr	s0, [pc, #356]	; d00404f4 <main+0x2a4>
d0040392:	4859      	ldr	r0, [pc, #356]	; (d00404f8 <main+0x2a8>)
d0040394:	7013      	strb	r3, [r2, #0]
d0040396:	f005 f98f 	bl	d00456b8 <loadMeshSB3D>
d004039a:	ed9f 1a65 	vldr	s2, [pc, #404]	; d0040530 <main+0x2e0>
d004039e:	eef0 0a41 	vmov.f32	s1, s2
d00403a2:	eeb0 0a41 	vmov.f32	s0, s2
d00403a6:	f002 f92f 	bl	d0042608 <vec3>
d00403aa:	a818      	add	r0, sp, #96	; 0x60
d00403ac:	edcd 0a0e 	vstr	s1, [sp, #56]	; 0x38
d00403b0:	ed8d 1a0f 	vstr	s2, [sp, #60]	; 0x3c
d00403b4:	ed8d 0a0d 	vstr	s0, [sp, #52]	; 0x34
d00403b8:	f002 ffbc 	bl	d0043334 <entityWorldSpawn>
d00403bc:	a924      	add	r1, sp, #144	; 0x90
d00403be:	ed9f 0a42 	vldr	s0, [pc, #264]	; d00404c8 <main+0x278>
d00403c2:	484e      	ldr	r0, [pc, #312]	; (d00404fc <main+0x2ac>)
d00403c4:	f005 f978 	bl	d00456b8 <loadMeshSB3D>
d00403c8:	ed9f 1a4d 	vldr	s2, [pc, #308]	; d0040500 <main+0x2b0>
d00403cc:	eddf 0a58 	vldr	s1, [pc, #352]	; d0040530 <main+0x2e0>
d00403d0:	ed9f 0a4c 	vldr	s0, [pc, #304]	; d0040504 <main+0x2b4>
d00403d4:	f002 f918 	bl	d0042608 <vec3>
d00403d8:	a824      	add	r0, sp, #144	; 0x90
d00403da:	ed8d 0a10 	vstr	s0, [sp, #64]	; 0x40
d00403de:	edcd 0a11 	vstr	s1, [sp, #68]	; 0x44
d00403e2:	ed8d 1a12 	vstr	s2, [sp, #72]	; 0x48
d00403e6:	f002 ffa5 	bl	d0043334 <entityWorldSpawn>
d00403ea:	4680      	mov	r8, r0
d00403ec:	2000      	movs	r0, #0
d00403ee:	f003 fb6f 	bl	d0043ad0 <enableFlatMode>
d00403f2:	7b23      	ldrb	r3, [r4, #12]
d00403f4:	7b62      	ldrb	r2, [r4, #13]
d00403f6:	7ba1      	ldrb	r1, [r4, #14]
d00403f8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00403fc:	7be2      	ldrb	r2, [r4, #15]
d00403fe:	f8d9 0000 	ldr.w	r0, [r9]
d0040402:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040406:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004040a:	681b      	ldr	r3, [r3, #0]
d004040c:	69db      	ldr	r3, [r3, #28]
d004040e:	4798      	blx	r3
d0040410:	7b23      	ldrb	r3, [r4, #12]
d0040412:	7b62      	ldrb	r2, [r4, #13]
d0040414:	7ba1      	ldrb	r1, [r4, #14]
d0040416:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004041a:	7be2      	ldrb	r2, [r4, #15]
d004041c:	f8d9 0000 	ldr.w	r0, [r9]
d0040420:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040424:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040428:	681b      	ldr	r3, [r3, #0]
d004042a:	699b      	ldr	r3, [r3, #24]
d004042c:	4798      	blx	r3
d004042e:	7b23      	ldrb	r3, [r4, #12]
d0040430:	7b62      	ldrb	r2, [r4, #13]
d0040432:	2001      	movs	r0, #1
d0040434:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040438:	7ba2      	ldrb	r2, [r4, #14]
d004043a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004043e:	7be2      	ldrb	r2, [r4, #15]
d0040440:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040444:	685b      	ldr	r3, [r3, #4]
d0040446:	68db      	ldr	r3, [r3, #12]
d0040448:	4798      	blx	r3
d004044a:	7b23      	ldrb	r3, [r4, #12]
d004044c:	7b62      	ldrb	r2, [r4, #13]
d004044e:	211e      	movs	r1, #30
d0040450:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040454:	7ba2      	ldrb	r2, [r4, #14]
d0040456:	4608      	mov	r0, r1
d0040458:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004045c:	7be2      	ldrb	r2, [r4, #15]
d004045e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040462:	685b      	ldr	r3, [r3, #4]
d0040464:	689b      	ldr	r3, [r3, #8]
d0040466:	4798      	blx	r3
d0040468:	7823      	ldrb	r3, [r4, #0]
d004046a:	7862      	ldrb	r2, [r4, #1]
d004046c:	a904      	add	r1, sp, #16
d004046e:	a803      	add	r0, sp, #12
d0040470:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040474:	78a2      	ldrb	r2, [r4, #2]
d0040476:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004047a:	78e2      	ldrb	r2, [r4, #3]
d004047c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040480:	691b      	ldr	r3, [r3, #16]
d0040482:	4798      	blx	r3
d0040484:	7823      	ldrb	r3, [r4, #0]
d0040486:	7862      	ldrb	r2, [r4, #1]
d0040488:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004048c:	78a2      	ldrb	r2, [r4, #2]
d004048e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040492:	78e2      	ldrb	r2, [r4, #3]
d0040494:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040498:	69db      	ldr	r3, [r3, #28]
d004049a:	4798      	blx	r3
d004049c:	7823      	ldrb	r3, [r4, #0]
d004049e:	7862      	ldrb	r2, [r4, #1]
d00404a0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00404a4:	78a2      	ldrb	r2, [r4, #2]
d00404a6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00404aa:	78e2      	ldrb	r2, [r4, #3]
d00404ac:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00404b0:	689b      	ldr	r3, [r3, #8]
d00404b2:	4798      	blx	r3
d00404b4:	4605      	mov	r5, r0
d00404b6:	e105      	b.n	d00406c4 <main+0x474>
d00404b8:	d0046c10 	.word	0xd0046c10
d00404bc:	2001f000 	.word	0x2001f000
d00404c0:	459c4000 	.word	0x459c4000
d00404c4:	3c23d70a 	.word	0x3c23d70a
d00404c8:	42480000 	.word	0x42480000
d00404cc:	4c895441 	.word	0x4c895441
d00404d0:	42040000 	.word	0x42040000
d00404d4:	41233334 	.word	0x41233334
d00404d8:	bb9374bc 	.word	0xbb9374bc
d00404dc:	3e19999a 	.word	0x3e19999a
d00404e0:	d0047568 	.word	0xd0047568
d00404e4:	d0046be8 	.word	0xd0046be8
d00404e8:	d00e1c45 	.word	0xd00e1c45
d00404ec:	d00e1c20 	.word	0xd00e1c20
d00404f0:	d00e1c21 	.word	0xd00e1c21
d00404f4:	43480000 	.word	0x43480000
d00404f8:	d0046bf0 	.word	0xd0046bf0
d00404fc:	d0046c00 	.word	0xd0046c00
d0040500:	c2c80000 	.word	0xc2c80000
d0040504:	44f3c000 	.word	0x44f3c000
d0040508:	d00470f8 	.word	0xd00470f8
d004050c:	d00e1c44 	.word	0xd00e1c44
d0040510:	d00e1c60 	.word	0xd00e1c60
d0040514:	d00e1c40 	.word	0xd00e1c40
d0040518:	310f2a63 	.word	0x310f2a63
d004051c:	bb449ba6 	.word	0xbb449ba6
d0040520:	40d9999a 	.word	0x40d9999a
d0040524:	435c0000 	.word	0x435c0000
d0040528:	3c088889 	.word	0x3c088889
d004052c:	3ba3d70a 	.word	0x3ba3d70a
d0040530:	00000000 	.word	0x00000000
d0040534:	ed5f 0a08 	vldr	s1, [pc, #-32]	; d0040518 <main+0x2c8>
d0040538:	eef2 ba04 	vmov.f32	s23, #36	; 0x41200000  10.0
d004053c:	ed5f ca09 	vldr	s25, [pc, #-36]	; d004051c <main+0x2cc>
d0040540:	ee28 8a20 	vmul.f32	s16, s16, s1
d0040544:	ed5f 7a0a 	vldr	s15, [pc, #-40]	; d0040520 <main+0x2d0>
d0040548:	ed1f ca0a 	vldr	s24, [pc, #-40]	; d0040524 <main+0x2d4>
d004054c:	ee68 ba2b 	vmul.f32	s23, s16, s23
d0040550:	ee28 ca0c 	vmul.f32	s24, s16, s24
d0040554:	ee6b caac 	vmul.f32	s25, s23, s25
d0040558:	ee6b baa7 	vmul.f32	s23, s23, s15
d004055c:	7820      	ldrb	r0, [r4, #0]
d004055e:	7861      	ldrb	r1, [r4, #1]
d0040560:	78a2      	ldrb	r2, [r4, #2]
d0040562:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0040566:	78e3      	ldrb	r3, [r4, #3]
d0040568:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004056c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040570:	6a1b      	ldr	r3, [r3, #32]
d0040572:	4798      	blx	r3
d0040574:	f894 c000 	ldrb.w	ip, [r4]
d0040578:	7863      	ldrb	r3, [r4, #1]
d004057a:	a906      	add	r1, sp, #24
d004057c:	78a2      	ldrb	r2, [r4, #2]
d004057e:	4605      	mov	r5, r0
d0040580:	ea4c 2c03 	orr.w	ip, ip, r3, lsl #8
d0040584:	78e3      	ldrb	r3, [r4, #3]
d0040586:	a805      	add	r0, sp, #20
d0040588:	ea4c 4202 	orr.w	r2, ip, r2, lsl #16
d004058c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040590:	699b      	ldr	r3, [r3, #24]
d0040592:	4798      	blx	r3
d0040594:	9a05      	ldr	r2, [sp, #20]
d0040596:	9b06      	ldr	r3, [sp, #24]
d0040598:	eef0 0a68 	vmov.f32	s1, s17
d004059c:	4252      	negs	r2, r2
d004059e:	ed5f 7a1e 	vldr	s15, [pc, #-120]	; d0040528 <main+0x2d8>
d00405a2:	425b      	negs	r3, r3
d00405a4:	ed1f 7a1f 	vldr	s14, [pc, #-124]	; d004052c <main+0x2dc>
d00405a8:	ee06 2a90 	vmov	s13, r2
d00405ac:	2100      	movs	r1, #0
d00405ae:	a840      	add	r0, sp, #256	; 0x100
d00405b0:	eeb8 1ae6 	vcvt.f32.s32	s2, s13
d00405b4:	ee06 3a90 	vmov	s13, r3
d00405b8:	eeb8 0ae6 	vcvt.f32.s32	s0, s13
d00405bc:	ee21 1a07 	vmul.f32	s2, s2, s14
d00405c0:	ee20 0a27 	vmul.f32	s0, s0, s15
d00405c4:	f002 fc34 	bl	d0042e30 <cameraTurn>
d00405c8:	eef0 7a04 	vmov.f32	s15, #4	; 0x40200000  2.5
d00405cc:	eddd 0a47 	vldr	s1, [sp, #284]	; 0x11c
d00405d0:	ee60 0aa7 	vmul.f32	s1, s1, s15
d00405d4:	ee60 0a88 	vmul.f32	s1, s1, s16
d00405d8:	eef5 0a40 	vcmp.f32	s1, #0.0
d00405dc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00405e0:	f040 80b7 	bne.w	d0040752 <main+0x502>
d00405e4:	eeb0 1a68 	vmov.f32	s2, s17
d00405e8:	ed5f 0a2f 	vldr	s1, [pc, #-188]	; d0040530 <main+0x2e0>
d00405ec:	eeb0 0a6c 	vmov.f32	s0, s25
d00405f0:	4640      	mov	r0, r8
d00405f2:	f002 ff17 	bl	d0043424 <entityTurnLocal>
d00405f6:	eeb0 0a6b 	vmov.f32	s0, s23
d00405fa:	4640      	mov	r0, r8
d00405fc:	f002 fee0 	bl	d00433c0 <entityMoveForward>
d0040600:	7820      	ldrb	r0, [r4, #0]
d0040602:	7861      	ldrb	r1, [r4, #1]
d0040604:	78a2      	ldrb	r2, [r4, #2]
d0040606:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004060a:	78e3      	ldrb	r3, [r4, #3]
d004060c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040610:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040614:	69db      	ldr	r3, [r3, #28]
d0040616:	4798      	blx	r3
d0040618:	07ea      	lsls	r2, r5, #31
d004061a:	f100 8090 	bmi.w	d004073e <main+0x4ee>
d004061e:	07ab      	lsls	r3, r5, #30
d0040620:	f100 8083 	bmi.w	d004072a <main+0x4da>
d0040624:	7b20      	ldrb	r0, [r4, #12]
d0040626:	7b61      	ldrb	r1, [r4, #13]
d0040628:	7ba2      	ldrb	r2, [r4, #14]
d004062a:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004062e:	7be3      	ldrb	r3, [r4, #15]
d0040630:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040634:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040638:	681b      	ldr	r3, [r3, #0]
d004063a:	68db      	ldr	r3, [r3, #12]
d004063c:	4798      	blx	r3
d004063e:	783b      	ldrb	r3, [r7, #0]
d0040640:	f1c3 0301 	rsb	r3, r3, #1
d0040644:	b2db      	uxtb	r3, r3
d0040646:	703b      	strb	r3, [r7, #0]
d0040648:	783b      	ldrb	r3, [r7, #0]
d004064a:	7b21      	ldrb	r1, [r4, #12]
d004064c:	7b60      	ldrb	r0, [r4, #13]
d004064e:	7ba2      	ldrb	r2, [r4, #14]
d0040650:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0040654:	2b00      	cmp	r3, #0
d0040656:	d056      	beq.n	d0040706 <main+0x4b6>
d0040658:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d004065c:	7be3      	ldrb	r3, [r4, #15]
d004065e:	f8d9 0000 	ldr.w	r0, [r9]
d0040662:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040666:	f8da 1000 	ldr.w	r1, [sl]
d004066a:	681b      	ldr	r3, [r3, #0]
d004066c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d004066e:	4798      	blx	r3
d0040670:	f8da 3000 	ldr.w	r3, [sl]
d0040674:	6818      	ldr	r0, [r3, #0]
d0040676:	f000 f87f 	bl	d0040778 <set3DRenderBuffer>
d004067a:	4b3b      	ldr	r3, [pc, #236]	; (d0040768 <main+0x518>)
d004067c:	eeb0 0a68 	vmov.f32	s0, s17
d0040680:	4a3a      	ldr	r2, [pc, #232]	; (d004076c <main+0x51c>)
d0040682:	a840      	add	r0, sp, #256	; 0x100
d0040684:	781b      	ldrb	r3, [r3, #0]
d0040686:	4635      	mov	r5, r6
d0040688:	7812      	ldrb	r2, [r2, #0]
d004068a:	f89b 1000 	ldrb.w	r1, [fp]
d004068e:	f004 f889 	bl	d00447a4 <drawFakeHorizon>
d0040692:	4937      	ldr	r1, [pc, #220]	; (d0040770 <main+0x520>)
d0040694:	236e      	movs	r3, #110	; 0x6e
d0040696:	2280      	movs	r2, #128	; 0x80
d0040698:	7809      	ldrb	r1, [r1, #0]
d004069a:	eeb0 0a68 	vmov.f32	s0, s17
d004069e:	a840      	add	r0, sp, #256	; 0x100
d00406a0:	f003 ff72 	bl	d0044588 <drawFakeHorizonDots>
d00406a4:	a840      	add	r0, sp, #256	; 0x100
d00406a6:	f004 ff17 	bl	d00454d8 <Render3D>
d00406aa:	7b20      	ldrb	r0, [r4, #12]
d00406ac:	7b61      	ldrb	r1, [r4, #13]
d00406ae:	7ba2      	ldrb	r2, [r4, #14]
d00406b0:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00406b4:	7be3      	ldrb	r3, [r4, #15]
d00406b6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00406ba:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00406be:	681b      	ldr	r3, [r3, #0]
d00406c0:	681b      	ldr	r3, [r3, #0]
d00406c2:	4798      	blx	r3
d00406c4:	7820      	ldrb	r0, [r4, #0]
d00406c6:	7861      	ldrb	r1, [r4, #1]
d00406c8:	78a2      	ldrb	r2, [r4, #2]
d00406ca:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00406ce:	78e3      	ldrb	r3, [r4, #3]
d00406d0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00406d4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00406d8:	689b      	ldr	r3, [r3, #8]
d00406da:	4798      	blx	r3
d00406dc:	1b43      	subs	r3, r0, r5
d00406de:	4606      	mov	r6, r0
d00406e0:	ee08 3a10 	vmov	s16, r3
d00406e4:	eeb8 8a48 	vcvt.f32.u32	s16, s16
d00406e8:	eeb4 8ac9 	vcmpe.f32	s16, s18
d00406ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00406f0:	f77f af20 	ble.w	d0040534 <main+0x2e4>
d00406f4:	eeb0 ca4b 	vmov.f32	s24, s22
d00406f8:	eef0 ba6a 	vmov.f32	s23, s21
d00406fc:	eef0 ca4a 	vmov.f32	s25, s20
d0040700:	eeb0 8a69 	vmov.f32	s16, s19
d0040704:	e72a      	b.n	d004055c <main+0x30c>
d0040706:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d004070a:	7be3      	ldrb	r3, [r4, #15]
d004070c:	f8da 0000 	ldr.w	r0, [sl]
d0040710:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040714:	f8d9 1000 	ldr.w	r1, [r9]
d0040718:	681b      	ldr	r3, [r3, #0]
d004071a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d004071c:	4798      	blx	r3
d004071e:	f8d9 3000 	ldr.w	r3, [r9]
d0040722:	6818      	ldr	r0, [r3, #0]
d0040724:	f000 f828 	bl	d0040778 <set3DRenderBuffer>
d0040728:	e7a7      	b.n	d004067a <main+0x42a>
d004072a:	eeb1 1a4c 	vneg.f32	s2, s24
d004072e:	ed9f 0a11 	vldr	s0, [pc, #68]	; d0040774 <main+0x524>
d0040732:	eef0 0a68 	vmov.f32	s1, s17
d0040736:	a840      	add	r0, sp, #256	; 0x100
d0040738:	f002 fd48 	bl	d00431cc <cameraMove>
d004073c:	e772      	b.n	d0040624 <main+0x3d4>
d004073e:	eeb0 1a4c 	vmov.f32	s2, s24
d0040742:	ed9f 0a0c 	vldr	s0, [pc, #48]	; d0040774 <main+0x524>
d0040746:	eef0 0a68 	vmov.f32	s1, s17
d004074a:	a840      	add	r0, sp, #256	; 0x100
d004074c:	f002 fd3e 	bl	d00431cc <cameraMove>
d0040750:	e765      	b.n	d004061e <main+0x3ce>
d0040752:	eef1 0a60 	vneg.f32	s1, s1
d0040756:	2101      	movs	r1, #1
d0040758:	eeb0 1a68 	vmov.f32	s2, s17
d004075c:	ed9f 0a05 	vldr	s0, [pc, #20]	; d0040774 <main+0x524>
d0040760:	a840      	add	r0, sp, #256	; 0x100
d0040762:	f002 fb65 	bl	d0042e30 <cameraTurn>
d0040766:	e73d      	b.n	d00405e4 <main+0x394>
d0040768:	d00e1c20 	.word	0xd00e1c20
d004076c:	d00e1c45 	.word	0xd00e1c45
d0040770:	d00e1c21 	.word	0xd00e1c21
d0040774:	00000000 	.word	0x00000000

d0040778 <set3DRenderBuffer>:
d0040778:	4b01      	ldr	r3, [pc, #4]	; (d0040780 <set3DRenderBuffer+0x8>)
d004077a:	6018      	str	r0, [r3, #0]
d004077c:	4770      	bx	lr
d004077e:	bf00      	nop
d0040780:	d00e1c64 	.word	0xd00e1c64

d0040784 <putPixel>:
d0040784:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0040788:	d209      	bcs.n	d004079e <putPixel+0x1a>
d004078a:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d004078e:	d206      	bcs.n	d004079e <putPixel+0x1a>
d0040790:	4b03      	ldr	r3, [pc, #12]	; (d00407a0 <putPixel+0x1c>)
d0040792:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d0040796:	681b      	ldr	r3, [r3, #0]
d0040798:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d004079c:	5442      	strb	r2, [r0, r1]
d004079e:	4770      	bx	lr
d00407a0:	d00e1c64 	.word	0xd00e1c64

d00407a4 <drawLine>:
d00407a4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00407a8:	b085      	sub	sp, #20
d00407aa:	eba2 0c00 	sub.w	ip, r2, r0
d00407ae:	eba3 0901 	sub.w	r9, r3, r1
d00407b2:	f240 1edf 	movw	lr, #479	; 0x1df
d00407b6:	f89d 4038 	ldrb.w	r4, [sp, #56]	; 0x38
d00407ba:	f240 1a3f 	movw	sl, #319	; 0x13f
d00407be:	f8df b07c 	ldr.w	fp, [pc, #124]	; d004083c <drawLine+0x98>
d00407c2:	9401      	str	r4, [sp, #4]
d00407c4:	4282      	cmp	r2, r0
d00407c6:	bfcc      	ite	gt
d00407c8:	2401      	movgt	r4, #1
d00407ca:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d00407ce:	9402      	str	r4, [sp, #8]
d00407d0:	428b      	cmp	r3, r1
d00407d2:	bfcc      	ite	gt
d00407d4:	2401      	movgt	r4, #1
d00407d6:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d00407da:	f1bc 0f00 	cmp.w	ip, #0
d00407de:	9403      	str	r4, [sp, #12]
d00407e0:	bfb8      	it	lt
d00407e2:	f1cc 0c00 	rsblt	ip, ip, #0
d00407e6:	f1b9 0f00 	cmp.w	r9, #0
d00407ea:	bfb8      	it	lt
d00407ec:	f1c9 0900 	rsblt	r9, r9, #0
d00407f0:	ebac 0409 	sub.w	r4, ip, r9
d00407f4:	f1c9 0800 	rsb	r8, r9, #0
d00407f8:	4570      	cmp	r0, lr
d00407fa:	eb00 0780 	add.w	r7, r0, r0, lsl #2
d00407fe:	ea4f 0644 	mov.w	r6, r4, lsl #1
d0040802:	d807      	bhi.n	d0040814 <drawLine+0x70>
d0040804:	4551      	cmp	r1, sl
d0040806:	d805      	bhi.n	d0040814 <drawLine+0x70>
d0040808:	f8db 5000 	ldr.w	r5, [fp]
d004080c:	eb05 1587 	add.w	r5, r5, r7, lsl #6
d0040810:	9f01      	ldr	r7, [sp, #4]
d0040812:	546f      	strb	r7, [r5, r1]
d0040814:	4290      	cmp	r0, r2
d0040816:	d101      	bne.n	d004081c <drawLine+0x78>
d0040818:	4299      	cmp	r1, r3
d004081a:	d00c      	beq.n	d0040836 <drawLine+0x92>
d004081c:	ebb8 0f44 	cmp.w	r8, r4, lsl #1
d0040820:	dc05      	bgt.n	d004082e <drawLine+0x8a>
d0040822:	9d02      	ldr	r5, [sp, #8]
d0040824:	45b4      	cmp	ip, r6
d0040826:	eba4 0409 	sub.w	r4, r4, r9
d004082a:	4428      	add	r0, r5
d004082c:	dbe4      	blt.n	d00407f8 <drawLine+0x54>
d004082e:	9d03      	ldr	r5, [sp, #12]
d0040830:	4464      	add	r4, ip
d0040832:	4429      	add	r1, r5
d0040834:	e7e0      	b.n	d00407f8 <drawLine+0x54>
d0040836:	b005      	add	sp, #20
d0040838:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004083c:	d00e1c64 	.word	0xd00e1c64

d0040840 <shadeColor>:
d0040840:	2900      	cmp	r1, #0
d0040842:	db09      	blt.n	d0040858 <shadeColor+0x18>
d0040844:	2904      	cmp	r1, #4
d0040846:	dc09      	bgt.n	d004085c <shadeColor+0x1c>
d0040848:	0109      	lsls	r1, r1, #4
d004084a:	b2c9      	uxtb	r1, r1
d004084c:	f000 000f 	and.w	r0, r0, #15
d0040850:	3020      	adds	r0, #32
d0040852:	4408      	add	r0, r1
d0040854:	b2c0      	uxtb	r0, r0
d0040856:	4770      	bx	lr
d0040858:	2100      	movs	r1, #0
d004085a:	e7f7      	b.n	d004084c <shadeColor+0xc>
d004085c:	2010      	movs	r0, #16
d004085e:	4770      	bx	lr

d0040860 <fillTriangleFlat>:
d0040860:	eddf 7ad1 	vldr	s15, [pc, #836]	; d0040ba8 <fillTriangleFlat+0x348>
d0040864:	eef4 0ae7 	vcmpe.f32	s1, s15
d0040868:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004086c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040870:	eeb4 1ae7 	vcmpe.f32	s2, s15
d0040874:	ed2d 8b10 	vpush	{d8-d15}
d0040878:	b089      	sub	sp, #36	; 0x24
d004087a:	9304      	str	r3, [sp, #16]
d004087c:	bf94      	ite	ls
d004087e:	2301      	movls	r3, #1
d0040880:	2300      	movhi	r3, #0
d0040882:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040886:	9001      	str	r0, [sp, #4]
d0040888:	9102      	str	r1, [sp, #8]
d004088a:	bf98      	it	ls
d004088c:	f043 0301 	orrls.w	r3, r3, #1
d0040890:	9203      	str	r2, [sp, #12]
d0040892:	f8bd 4090 	ldrh.w	r4, [sp, #144]	; 0x90
d0040896:	f8bd 0094 	ldrh.w	r0, [sp, #148]	; 0x94
d004089a:	f8bd 1098 	ldrh.w	r1, [sp, #152]	; 0x98
d004089e:	f89d 209c 	ldrb.w	r2, [sp, #156]	; 0x9c
d00408a2:	2b00      	cmp	r3, #0
d00408a4:	f040 8154 	bne.w	d0040b50 <fillTriangleFlat+0x2f0>
d00408a8:	eeb4 0ae7 	vcmpe.f32	s0, s15
d00408ac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00408b0:	bf94      	ite	ls
d00408b2:	2701      	movls	r7, #1
d00408b4:	2700      	movhi	r7, #0
d00408b6:	f240 814b 	bls.w	d0040b50 <fillTriangleFlat+0x2f0>
d00408ba:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00408be:	ee07 4a10 	vmov	s14, r4
d00408c2:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d00408c6:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d00408ca:	ee87 8a80 	vdiv.f32	s16, s15, s0
d00408ce:	ee87 2a81 	vdiv.f32	s4, s15, s2
d00408d2:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d00408d6:	ee07 0a90 	vmov	s15, r0
d00408da:	ee71 1aa6 	vadd.f32	s3, s3, s13
d00408de:	eef8 5a67 	vcvt.f32.u32	s11, s15
d00408e2:	ee07 1a90 	vmov	s15, r1
d00408e6:	ee27 7a08 	vmul.f32	s14, s14, s16
d00408ea:	eeb8 3a67 	vcvt.f32.u32	s6, s15
d00408ee:	eefd 7ae1 	vcvt.s32.f32	s15, s3
d00408f2:	ee23 3a02 	vmul.f32	s6, s6, s4
d00408f6:	ee17 3a90 	vmov	r3, s15
d00408fa:	2b00      	cmp	r3, #0
d00408fc:	ee65 5a80 	vmul.f32	s11, s11, s0
d0040900:	f2c0 812d 	blt.w	d0040b5e <fillTriangleFlat+0x2fe>
d0040904:	2b04      	cmp	r3, #4
d0040906:	f340 8128 	ble.w	d0040b5a <fillTriangleFlat+0x2fa>
d004090a:	2710      	movs	r7, #16
d004090c:	eddd 7a02 	vldr	s15, [sp, #8]
d0040910:	eddd 6a23 	vldr	s13, [sp, #140]	; 0x8c
d0040914:	eeb8 5ae7 	vcvt.f32.s32	s10, s15
d0040918:	eddd 7a04 	vldr	s15, [sp, #16]
d004091c:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0040920:	eef8 3ae7 	vcvt.f32.s32	s7, s15
d0040924:	eddd 7a01 	vldr	s15, [sp, #4]
d0040928:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d004092c:	eddd 7a03 	vldr	s15, [sp, #12]
d0040930:	eeb4 5ae3 	vcmpe.f32	s10, s7
d0040934:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d0040938:	eddd 7a22 	vldr	s15, [sp, #136]	; 0x88
d004093c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040940:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040944:	f300 8111 	bgt.w	d0040b6a <fillTriangleFlat+0x30a>
d0040948:	eeb4 5ae6 	vcmpe.f32	s10, s13
d004094c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040950:	f300 81ee 	bgt.w	d0040d30 <fillTriangleFlat+0x4d0>
d0040954:	eef4 3ae6 	vcmpe.f32	s7, s13
d0040958:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004095c:	dd17      	ble.n	d004098e <fillTriangleFlat+0x12e>
d004095e:	eeb0 1a65 	vmov.f32	s2, s11
d0040962:	eef0 1a40 	vmov.f32	s3, s0
d0040966:	eef0 2a63 	vmov.f32	s5, s7
d004096a:	eeb0 4a64 	vmov.f32	s8, s9
d004096e:	eef0 5a43 	vmov.f32	s11, s6
d0040972:	eeb0 0a42 	vmov.f32	s0, s4
d0040976:	eef0 3a66 	vmov.f32	s7, s13
d004097a:	eef0 4a67 	vmov.f32	s9, s15
d004097e:	eeb0 3a41 	vmov.f32	s6, s2
d0040982:	eeb0 2a61 	vmov.f32	s4, s3
d0040986:	eef0 6a62 	vmov.f32	s13, s5
d004098a:	eef0 7a44 	vmov.f32	s15, s8
d004098e:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d0040992:	ee75 2a04 	vadd.f32	s5, s10, s8
d0040996:	ee36 4a84 	vadd.f32	s8, s13, s8
d004099a:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d004099e:	eebd 4ac4 	vcvt.s32.f32	s8, s8
d00409a2:	ee12 3a90 	vmov	r3, s5
d00409a6:	ee14 2a10 	vmov	r2, s8
d00409aa:	4293      	cmp	r3, r2
d00409ac:	f000 80d0 	beq.w	d0040b50 <fillTriangleFlat+0x2f0>
d00409b0:	ee76 2ac5 	vsub.f32	s5, s13, s10
d00409b4:	ed9f 9a7c 	vldr	s18, [pc, #496]	; d0040ba8 <fillTriangleFlat+0x348>
d00409b8:	eef4 2ac9 	vcmpe.f32	s5, s18
d00409bc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00409c0:	f240 80c6 	bls.w	d0040b50 <fillTriangleFlat+0x2f0>
d00409c4:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d00409c8:	ee37 1ac6 	vsub.f32	s2, s15, s12
d00409cc:	ee72 0a48 	vsub.f32	s1, s4, s16
d00409d0:	ee81 4aa2 	vdiv.f32	s8, s3, s5
d00409d4:	ee73 2ac5 	vsub.f32	s5, s7, s10
d00409d8:	ee73 8a47 	vsub.f32	s17, s6, s14
d00409dc:	eef4 2ac9 	vcmpe.f32	s5, s18
d00409e0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00409e4:	ee21 1a04 	vmul.f32	s2, s2, s8
d00409e8:	ee60 0a84 	vmul.f32	s1, s1, s8
d00409ec:	ee68 8a84 	vmul.f32	s17, s17, s8
d00409f0:	f300 80e2 	bgt.w	d0040bb8 <fillTriangleFlat+0x358>
d00409f4:	ee36 4ae3 	vsub.f32	s8, s13, s7
d00409f8:	eeb4 4ac9 	vcmpe.f32	s8, s18
d00409fc:	ed8d 4a01 	vstr	s8, [sp, #4]
d0040a00:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040a04:	f340 80a4 	ble.w	d0040b50 <fillTriangleFlat+0x2f0>
d0040a08:	eec1 9a84 	vdiv.f32	s19, s3, s8
d0040a0c:	eef4 2ac9 	vcmpe.f32	s5, s18
d0040a10:	ee77 7ae4 	vsub.f32	s15, s15, s9
d0040a14:	ee32 4a40 	vsub.f32	s8, s4, s0
d0040a18:	ee33 3a65 	vsub.f32	s6, s6, s11
d0040a1c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040a20:	ee67 eaa9 	vmul.f32	s29, s15, s19
d0040a24:	ee64 fa29 	vmul.f32	s31, s8, s19
d0040a28:	ee23 fa29 	vmul.f32	s30, s6, s19
d0040a2c:	f300 8315 	bgt.w	d004105a <fillTriangleFlat+0x7fa>
d0040a30:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0040a34:	edcd 7a02 	vstr	s15, [sp, #8]
d0040a38:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0040a3c:	f240 133f 	movw	r3, #319	; 0x13f
d0040a40:	9a02      	ldr	r2, [sp, #8]
d0040a42:	ee17 ea90 	vmov	lr, s15
d0040a46:	ea22 7be2 	bic.w	fp, r2, r2, asr #31
d0040a4a:	f10e 3eff 	add.w	lr, lr, #4294967295	; 0xffffffff
d0040a4e:	459e      	cmp	lr, r3
d0040a50:	bfa8      	it	ge
d0040a52:	469e      	movge	lr, r3
d0040a54:	45f3      	cmp	fp, lr
d0040a56:	dc7b      	bgt.n	d0040b50 <fillTriangleFlat+0x2f0>
d0040a58:	ee07 ba90 	vmov	s15, fp
d0040a5c:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0040a60:	f10e 0e01 	add.w	lr, lr, #1
d0040a64:	ed9f 9a50 	vldr	s18, [pc, #320]	; d0040ba8 <fillTriangleFlat+0x348>
d0040a68:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040a6c:	eddf 1a4f 	vldr	s3, [pc, #316]	; d0040bac <fillTriangleFlat+0x34c>
d0040a70:	ed9f 2a4f 	vldr	s4, [pc, #316]	; d0040bb0 <fillTriangleFlat+0x350>
d0040a74:	eddf 9a4f 	vldr	s19, [pc, #316]	; d0040bb4 <fillTriangleFlat+0x354>
d0040a78:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0040a7c:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0040a80:	ee77 3ae3 	vsub.f32	s7, s15, s7
d0040a84:	eea1 6a05 	vfma.f32	s12, s2, s10
d0040a88:	eea0 8a85 	vfma.f32	s16, s1, s10
d0040a8c:	eea8 7a85 	vfma.f32	s14, s17, s10
d0040a90:	eee3 4aae 	vfma.f32	s9, s7, s29
d0040a94:	eea3 0aaf 	vfma.f32	s0, s7, s31
d0040a98:	eeef 5a23 	vfma.f32	s11, s30, s7
d0040a9c:	e032      	b.n	d0040b04 <fillTriangleFlat+0x2a4>
d0040a9e:	eef0 3a47 	vmov.f32	s7, s14
d0040aa2:	eef0 2a48 	vmov.f32	s5, s16
d0040aa6:	eef0 6a46 	vmov.f32	s13, s12
d0040aaa:	eeb0 3a65 	vmov.f32	s6, s11
d0040aae:	eeb0 5a40 	vmov.f32	s10, s0
d0040ab2:	eeb0 4a64 	vmov.f32	s8, s9
d0040ab6:	fefa 7a66 	vrintp.f32	s15, s13
d0040aba:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0040abe:	f240 13df 	movw	r3, #479	; 0x1df
d0040ac2:	ee17 6a90 	vmov	r6, s15
d0040ac6:	fefa 7a44 	vrintp.f32	s15, s8
d0040aca:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0040ace:	3e01      	subs	r6, #1
d0040ad0:	ee17 4a90 	vmov	r4, s15
d0040ad4:	429e      	cmp	r6, r3
d0040ad6:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d0040ada:	bfa8      	it	ge
d0040adc:	461e      	movge	r6, r3
d0040ade:	42a6      	cmp	r6, r4
d0040ae0:	f280 8158 	bge.w	d0040d94 <fillTriangleFlat+0x534>
d0040ae4:	f10b 0b01 	add.w	fp, fp, #1
d0040ae8:	ee36 6a01 	vadd.f32	s12, s12, s2
d0040aec:	ee38 8a20 	vadd.f32	s16, s16, s1
d0040af0:	45f3      	cmp	fp, lr
d0040af2:	ee37 7a28 	vadd.f32	s14, s14, s17
d0040af6:	ee74 4aae 	vadd.f32	s9, s9, s29
d0040afa:	ee30 0a2f 	vadd.f32	s0, s0, s31
d0040afe:	ee75 5a8f 	vadd.f32	s11, s11, s30
d0040b02:	d025      	beq.n	d0040b50 <fillTriangleFlat+0x2f0>
d0040b04:	eeb4 6ae4 	vcmpe.f32	s12, s9
d0040b08:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040b0c:	dcc7      	bgt.n	d0040a9e <fillTriangleFlat+0x23e>
d0040b0e:	eef0 3a65 	vmov.f32	s7, s11
d0040b12:	eef0 2a40 	vmov.f32	s5, s0
d0040b16:	eef0 6a64 	vmov.f32	s13, s9
d0040b1a:	eeb0 3a47 	vmov.f32	s6, s14
d0040b1e:	eeb0 5a48 	vmov.f32	s10, s16
d0040b22:	eeb0 4a46 	vmov.f32	s8, s12
d0040b26:	e7c6      	b.n	d0040ab6 <fillTriangleFlat+0x256>
d0040b28:	eddd 6a03 	vldr	s13, [sp, #12]
d0040b2c:	eddd 4a04 	vldr	s9, [sp, #16]
d0040b30:	ed9d 7a05 	vldr	s14, [sp, #20]
d0040b34:	ed9d 8a06 	vldr	s16, [sp, #24]
d0040b38:	ed9d 5a07 	vldr	s10, [sp, #28]
d0040b3c:	eddf 7a1a 	vldr	s15, [pc, #104]	; d0040ba8 <fillTriangleFlat+0x348>
d0040b40:	ed9d 4a01 	vldr	s8, [sp, #4]
d0040b44:	eeb4 4ae7 	vcmpe.f32	s8, s15
d0040b48:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040b4c:	f73f af74 	bgt.w	d0040a38 <fillTriangleFlat+0x1d8>
d0040b50:	b009      	add	sp, #36	; 0x24
d0040b52:	ecbd 8b10 	vpop	{d8-d15}
d0040b56:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040b5a:	011b      	lsls	r3, r3, #4
d0040b5c:	b2df      	uxtb	r7, r3
d0040b5e:	f002 020f 	and.w	r2, r2, #15
d0040b62:	3220      	adds	r2, #32
d0040b64:	4417      	add	r7, r2
d0040b66:	b2ff      	uxtb	r7, r7
d0040b68:	e6d0      	b.n	d004090c <fillTriangleFlat+0xac>
d0040b6a:	eef4 3ae6 	vcmpe.f32	s7, s13
d0040b6e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040b72:	f340 80f6 	ble.w	d0040d62 <fillTriangleFlat+0x502>
d0040b76:	eeb0 1a43 	vmov.f32	s2, s6
d0040b7a:	eef0 1a42 	vmov.f32	s3, s4
d0040b7e:	eef0 2a66 	vmov.f32	s5, s13
d0040b82:	eeb0 4a67 	vmov.f32	s8, s15
d0040b86:	eeb0 3a47 	vmov.f32	s6, s14
d0040b8a:	eeb0 2a48 	vmov.f32	s4, s16
d0040b8e:	eef0 6a45 	vmov.f32	s13, s10
d0040b92:	eef0 7a46 	vmov.f32	s15, s12
d0040b96:	eeb0 7a41 	vmov.f32	s14, s2
d0040b9a:	eeb0 8a61 	vmov.f32	s16, s3
d0040b9e:	eeb0 5a62 	vmov.f32	s10, s5
d0040ba2:	eeb0 6a44 	vmov.f32	s12, s8
d0040ba6:	e6f2      	b.n	d004098e <fillTriangleFlat+0x12e>
d0040ba8:	38d1b717 	.word	0x38d1b717
d0040bac:	33d6bf95 	.word	0x33d6bf95
d0040bb0:	00000000 	.word	0x00000000
d0040bb4:	477fff00 	.word	0x477fff00
d0040bb8:	ee81 4aa2 	vdiv.f32	s8, s3, s5
d0040bbc:	ee76 aae3 	vsub.f32	s21, s13, s7
d0040bc0:	ee34 aac6 	vsub.f32	s20, s9, s12
d0040bc4:	ee70 9a48 	vsub.f32	s19, s0, s16
d0040bc8:	ee75 2ac7 	vsub.f32	s5, s11, s14
d0040bcc:	edcd aa01 	vstr	s21, [sp, #4]
d0040bd0:	eef4 aac9 	vcmpe.f32	s21, s18
d0040bd4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040bd8:	ee2a aa04 	vmul.f32	s20, s20, s8
d0040bdc:	ee69 9a84 	vmul.f32	s19, s19, s8
d0040be0:	ee22 4a84 	vmul.f32	s8, s5, s8
d0040be4:	eeb0 ba4a 	vmov.f32	s22, s20
d0040be8:	eef0 da44 	vmov.f32	s27, s8
d0040bec:	f340 822e 	ble.w	d004104c <fillTriangleFlat+0x7ec>
d0040bf0:	eec1 2aaa 	vdiv.f32	s5, s3, s21
d0040bf4:	ee77 7ae4 	vsub.f32	s15, s15, s9
d0040bf8:	ee32 4a40 	vsub.f32	s8, s4, s0
d0040bfc:	ee33 3a65 	vsub.f32	s6, s6, s11
d0040c00:	ee67 eaa2 	vmul.f32	s29, s15, s5
d0040c04:	ee64 fa22 	vmul.f32	s31, s8, s5
d0040c08:	ee23 fa22 	vmul.f32	s30, s6, s5
d0040c0c:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0040c10:	f240 133f 	movw	r3, #319	; 0x13f
d0040c14:	ee17 2a90 	vmov	r2, s15
d0040c18:	edcd 7a02 	vstr	s15, [sp, #8]
d0040c1c:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d0040c20:	f102 3bff 	add.w	fp, r2, #4294967295	; 0xffffffff
d0040c24:	ee17 aa90 	vmov	sl, s15
d0040c28:	459b      	cmp	fp, r3
d0040c2a:	ea2a 7aea 	bic.w	sl, sl, sl, asr #31
d0040c2e:	bfa8      	it	ge
d0040c30:	469b      	movge	fp, r3
d0040c32:	45d3      	cmp	fp, sl
d0040c34:	db82      	blt.n	d0040b3c <fillTriangleFlat+0x2dc>
d0040c36:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0040c3a:	f10b 0b01 	add.w	fp, fp, #1
d0040c3e:	eeb0 aa46 	vmov.f32	s20, s12
d0040c42:	ed1f da26 	vldr	s26, [pc, #-152]	; d0040bac <fillTriangleFlat+0x34c>
d0040c46:	eef0 aa46 	vmov.f32	s21, s12
d0040c4a:	ed1f 3a27 	vldr	s6, [pc, #-156]	; d0040bb0 <fillTriangleFlat+0x350>
d0040c4e:	ee37 4ac5 	vsub.f32	s8, s15, s10
d0040c52:	ee07 aa90 	vmov	s15, sl
d0040c56:	eef0 ca48 	vmov.f32	s25, s16
d0040c5a:	ed1f 2a2a 	vldr	s4, [pc, #-168]	; d0040bb4 <fillTriangleFlat+0x354>
d0040c5e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040c62:	edcd 6a03 	vstr	s13, [sp, #12]
d0040c66:	eeb0 ca47 	vmov.f32	s24, s14
d0040c6a:	edcd 4a04 	vstr	s9, [sp, #16]
d0040c6e:	eeb0 9a4b 	vmov.f32	s18, s22
d0040c72:	ed8d 7a05 	vstr	s14, [sp, #20]
d0040c76:	ee77 7a84 	vadd.f32	s15, s15, s8
d0040c7a:	ed8d 8a06 	vstr	s16, [sp, #24]
d0040c7e:	eef0 ba48 	vmov.f32	s23, s16
d0040c82:	ed8d 5a07 	vstr	s10, [sp, #28]
d0040c86:	eea7 aa8b 	vfma.f32	s20, s15, s22
d0040c8a:	eeb0 ba47 	vmov.f32	s22, s14
d0040c8e:	eee1 aa27 	vfma.f32	s21, s2, s15
d0040c92:	eee0 caa7 	vfma.f32	s25, s1, s15
d0040c96:	eea8 caa7 	vfma.f32	s24, s17, s15
d0040c9a:	eee7 baa9 	vfma.f32	s23, s15, s19
d0040c9e:	eea7 baad 	vfma.f32	s22, s15, s27
d0040ca2:	e033      	b.n	d0040d0c <fillTriangleFlat+0x4ac>
d0040ca4:	eeb0 4a4c 	vmov.f32	s8, s24
d0040ca8:	eef0 4a6c 	vmov.f32	s9, s25
d0040cac:	eef0 7a6a 	vmov.f32	s15, s21
d0040cb0:	eeb0 5a4b 	vmov.f32	s10, s22
d0040cb4:	eeb0 7a6b 	vmov.f32	s14, s23
d0040cb8:	eef0 6a4a 	vmov.f32	s13, s20
d0040cbc:	fefa 2a67 	vrintp.f32	s5, s15
d0040cc0:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d0040cc4:	f240 13df 	movw	r3, #479	; 0x1df
d0040cc8:	ee12 6a90 	vmov	r6, s5
d0040ccc:	fefa 2a66 	vrintp.f32	s5, s13
d0040cd0:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d0040cd4:	3e01      	subs	r6, #1
d0040cd6:	ee12 4a90 	vmov	r4, s5
d0040cda:	429e      	cmp	r6, r3
d0040cdc:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d0040ce0:	bfa8      	it	ge
d0040ce2:	461e      	movge	r6, r3
d0040ce4:	42a6      	cmp	r6, r4
d0040ce6:	f280 80fd 	bge.w	d0040ee4 <fillTriangleFlat+0x684>
d0040cea:	f10a 0a01 	add.w	sl, sl, #1
d0040cee:	ee7a aa81 	vadd.f32	s21, s21, s2
d0040cf2:	ee7c caa0 	vadd.f32	s25, s25, s1
d0040cf6:	45da      	cmp	sl, fp
d0040cf8:	ee3c ca28 	vadd.f32	s24, s24, s17
d0040cfc:	ee3a aa09 	vadd.f32	s20, s20, s18
d0040d00:	ee7b baa9 	vadd.f32	s23, s23, s19
d0040d04:	ee3b ba2d 	vadd.f32	s22, s22, s27
d0040d08:	f43f af0e 	beq.w	d0040b28 <fillTriangleFlat+0x2c8>
d0040d0c:	eef4 aaca 	vcmpe.f32	s21, s20
d0040d10:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040d14:	dcc6      	bgt.n	d0040ca4 <fillTriangleFlat+0x444>
d0040d16:	eeb0 4a4b 	vmov.f32	s8, s22
d0040d1a:	eef0 4a6b 	vmov.f32	s9, s23
d0040d1e:	eef0 7a4a 	vmov.f32	s15, s20
d0040d22:	eeb0 5a4c 	vmov.f32	s10, s24
d0040d26:	eeb0 7a6c 	vmov.f32	s14, s25
d0040d2a:	eef0 6a6a 	vmov.f32	s13, s21
d0040d2e:	e7c5      	b.n	d0040cbc <fillTriangleFlat+0x45c>
d0040d30:	eeb0 1a47 	vmov.f32	s2, s14
d0040d34:	eef0 1a48 	vmov.f32	s3, s16
d0040d38:	eef0 2a45 	vmov.f32	s5, s10
d0040d3c:	eeb0 4a46 	vmov.f32	s8, s12
d0040d40:	eeb0 7a43 	vmov.f32	s14, s6
d0040d44:	eeb0 8a42 	vmov.f32	s16, s4
d0040d48:	eeb0 5a66 	vmov.f32	s10, s13
d0040d4c:	eeb0 6a67 	vmov.f32	s12, s15
d0040d50:	eeb0 3a41 	vmov.f32	s6, s2
d0040d54:	eeb0 2a61 	vmov.f32	s4, s3
d0040d58:	eef0 6a62 	vmov.f32	s13, s5
d0040d5c:	eef0 7a44 	vmov.f32	s15, s8
d0040d60:	e5f8      	b.n	d0040954 <fillTriangleFlat+0xf4>
d0040d62:	eeb0 1a47 	vmov.f32	s2, s14
d0040d66:	eef0 1a48 	vmov.f32	s3, s16
d0040d6a:	eef0 2a45 	vmov.f32	s5, s10
d0040d6e:	eeb0 4a46 	vmov.f32	s8, s12
d0040d72:	eeb0 7a65 	vmov.f32	s14, s11
d0040d76:	eeb0 8a40 	vmov.f32	s16, s0
d0040d7a:	eeb0 5a63 	vmov.f32	s10, s7
d0040d7e:	eeb0 6a64 	vmov.f32	s12, s9
d0040d82:	eef0 5a41 	vmov.f32	s11, s2
d0040d86:	eeb0 0a61 	vmov.f32	s0, s3
d0040d8a:	eef0 3a62 	vmov.f32	s7, s5
d0040d8e:	eef0 4a44 	vmov.f32	s9, s8
d0040d92:	e5df      	b.n	d0040954 <fillTriangleFlat+0xf4>
d0040d94:	ee76 6ac4 	vsub.f32	s13, s13, s8
d0040d98:	eef4 6ac9 	vcmpe.f32	s13, s18
d0040d9c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040da0:	f340 814f 	ble.w	d0041042 <fillTriangleFlat+0x7e2>
d0040da4:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0040da8:	ee72 2ac5 	vsub.f32	s5, s5, s10
d0040dac:	ee73 3ac3 	vsub.f32	s7, s7, s6
d0040db0:	ee87 aaa6 	vdiv.f32	s20, s15, s13
d0040db4:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0040db8:	ee37 4ac4 	vsub.f32	s8, s15, s8
d0040dbc:	ee07 4a90 	vmov	s15, r4
d0040dc0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040dc4:	ee77 7a84 	vadd.f32	s15, s15, s8
d0040dc8:	ee62 2a8a 	vmul.f32	s5, s5, s20
d0040dcc:	ee23 aa8a 	vmul.f32	s20, s7, s20
d0040dd0:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0040dd4:	eea7 3a8a 	vfma.f32	s6, s15, s20
d0040dd8:	ebcb 180b 	rsb	r8, fp, fp, lsl #4
d0040ddc:	4ba3      	ldr	r3, [pc, #652]	; (d004106c <fillTriangleFlat+0x80c>)
d0040dde:	eb04 0c84 	add.w	ip, r4, r4, lsl #2
d0040de2:	4aa3      	ldr	r2, [pc, #652]	; (d0041070 <fillTriangleFlat+0x810>)
d0040de4:	681b      	ldr	r3, [r3, #0]
d0040de6:	eb04 1848 	add.w	r8, r4, r8, lsl #5
d0040dea:	eb0b 1c8c 	add.w	ip, fp, ip, lsl #6
d0040dee:	eef6 3a00 	vmov.f32	s7, #96	; 0x3f000000  0.5
d0040df2:	eb02 0848 	add.w	r8, r2, r8, lsl #1
d0040df6:	449c      	add	ip, r3
d0040df8:	e011      	b.n	d0040e1e <fillTriangleFlat+0x5be>
d0040dfa:	ee07 1a90 	vmov	s15, r1
d0040dfe:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0040e02:	eb08 0841 	add.w	r8, r8, r1, lsl #1
d0040e06:	440c      	add	r4, r1
d0040e08:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040e0c:	eb0c 1c83 	add.w	ip, ip, r3, lsl #6
d0040e10:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0040e14:	eea7 3a8a 	vfma.f32	s6, s15, s20
d0040e18:	42a6      	cmp	r6, r4
d0040e1a:	f6ff ae63 	blt.w	d0040ae4 <fillTriangleFlat+0x284>
d0040e1e:	eba6 0904 	sub.w	r9, r6, r4
d0040e22:	eeb4 5ae1 	vcmpe.f32	s10, s3
d0040e26:	f109 0101 	add.w	r1, r9, #1
d0040e2a:	2930      	cmp	r1, #48	; 0x30
d0040e2c:	bfa8      	it	ge
d0040e2e:	2130      	movge	r1, #48	; 0x30
d0040e30:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040e34:	d9e1      	bls.n	d0040dfa <fillTriangleFlat+0x59a>
d0040e36:	f1b9 0f00 	cmp.w	r9, #0
d0040e3a:	eec3 6a05 	vdiv.f32	s13, s6, s10
d0040e3e:	dd4d      	ble.n	d0040edc <fillTriangleFlat+0x67c>
d0040e40:	1e4b      	subs	r3, r1, #1
d0040e42:	ee07 3a90 	vmov	s15, r3
d0040e46:	eeb0 4a45 	vmov.f32	s8, s10
d0040e4a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040e4e:	eea7 4aa2 	vfma.f32	s8, s15, s5
d0040e52:	eeb4 4ae1 	vcmpe.f32	s8, s3
d0040e56:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040e5a:	dd40      	ble.n	d0040ede <fillTriangleFlat+0x67e>
d0040e5c:	eeb0 ba43 	vmov.f32	s22, s6
d0040e60:	eea7 ba8a 	vfma.f32	s22, s15, s20
d0040e64:	eecb aa04 	vdiv.f32	s21, s22, s8
d0040e68:	ee7a aae6 	vsub.f32	s21, s21, s13
d0040e6c:	ee8a 4aa7 	vdiv.f32	s8, s21, s15
d0040e70:	f1a8 0002 	sub.w	r0, r8, #2
d0040e74:	2300      	movs	r3, #0
d0040e76:	fec6 7a82 	vmaxnm.f32	s15, s13, s4
d0040e7a:	fec7 7ae9 	vminnm.f32	s15, s15, s19
d0040e7e:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0040e82:	f830 5f02 	ldrh.w	r5, [r0, #2]!
d0040e86:	3301      	adds	r3, #1
d0040e88:	ee77 7aa3 	vadd.f32	s15, s15, s7
d0040e8c:	ea4f 1a82 	mov.w	sl, r2, lsl #6
d0040e90:	ee76 6a84 	vadd.f32	s13, s13, s8
d0040e94:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0040e98:	ee17 2a90 	vmov	r2, s15
d0040e9c:	b292      	uxth	r2, r2
d0040e9e:	4295      	cmp	r5, r2
d0040ea0:	d902      	bls.n	d0040ea8 <fillTriangleFlat+0x648>
d0040ea2:	8002      	strh	r2, [r0, #0]
d0040ea4:	f80c 700a 	strb.w	r7, [ip, sl]
d0040ea8:	4299      	cmp	r1, r3
d0040eaa:	dce4      	bgt.n	d0040e76 <fillTriangleFlat+0x616>
d0040eac:	f1b9 0f00 	cmp.w	r9, #0
d0040eb0:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0040eb4:	ea4f 0241 	mov.w	r2, r1, lsl #1
d0040eb8:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0040ebc:	bfbc      	itt	lt
d0040ebe:	2202      	movlt	r2, #2
d0040ec0:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0040ec4:	4490      	add	r8, r2
d0040ec6:	449c      	add	ip, r3
d0040ec8:	ee07 1a90 	vmov	s15, r1
d0040ecc:	440c      	add	r4, r1
d0040ece:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040ed2:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0040ed6:	eea7 3a8a 	vfma.f32	s6, s15, s20
d0040eda:	e79d      	b.n	d0040e18 <fillTriangleFlat+0x5b8>
d0040edc:	d1f4      	bne.n	d0040ec8 <fillTriangleFlat+0x668>
d0040ede:	eeb0 4a42 	vmov.f32	s8, s4
d0040ee2:	e7c5      	b.n	d0040e70 <fillTriangleFlat+0x610>
d0040ee4:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0040ee8:	eddf 2a62 	vldr	s5, [pc, #392]	; d0041074 <fillTriangleFlat+0x814>
d0040eec:	eef4 7ae2 	vcmpe.f32	s15, s5
d0040ef0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040ef4:	f340 80a0 	ble.w	d0041038 <fillTriangleFlat+0x7d8>
d0040ef8:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d0040efc:	ee74 4ac7 	vsub.f32	s9, s9, s14
d0040f00:	ee34 4a45 	vsub.f32	s8, s8, s10
d0040f04:	eec1 2aa7 	vdiv.f32	s5, s3, s15
d0040f08:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0040f0c:	ee77 6ae6 	vsub.f32	s13, s15, s13
d0040f10:	ee07 4a90 	vmov	s15, r4
d0040f14:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040f18:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0040f1c:	ee64 4aa2 	vmul.f32	s9, s9, s5
d0040f20:	ee24 4a22 	vmul.f32	s8, s8, s5
d0040f24:	eea7 7aa4 	vfma.f32	s14, s15, s9
d0040f28:	eea7 5a84 	vfma.f32	s10, s15, s8
d0040f2c:	ebca 1e0a 	rsb	lr, sl, sl, lsl #4
d0040f30:	4b4e      	ldr	r3, [pc, #312]	; (d004106c <fillTriangleFlat+0x80c>)
d0040f32:	eb04 0c84 	add.w	ip, r4, r4, lsl #2
d0040f36:	4a4e      	ldr	r2, [pc, #312]	; (d0041070 <fillTriangleFlat+0x810>)
d0040f38:	681b      	ldr	r3, [r3, #0]
d0040f3a:	eb04 1e4e 	add.w	lr, r4, lr, lsl #5
d0040f3e:	eb0a 1c8c 	add.w	ip, sl, ip, lsl #6
d0040f42:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0040f46:	eb02 0e4e 	add.w	lr, r2, lr, lsl #1
d0040f4a:	449c      	add	ip, r3
d0040f4c:	e011      	b.n	d0040f72 <fillTriangleFlat+0x712>
d0040f4e:	ee07 1a90 	vmov	s15, r1
d0040f52:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0040f56:	eb0e 0e41 	add.w	lr, lr, r1, lsl #1
d0040f5a:	440c      	add	r4, r1
d0040f5c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040f60:	eb0c 1c83 	add.w	ip, ip, r3, lsl #6
d0040f64:	eea7 7aa4 	vfma.f32	s14, s15, s9
d0040f68:	eea7 5a84 	vfma.f32	s10, s15, s8
d0040f6c:	42b4      	cmp	r4, r6
d0040f6e:	f73f aebc 	bgt.w	d0040cea <fillTriangleFlat+0x48a>
d0040f72:	eba6 0804 	sub.w	r8, r6, r4
d0040f76:	eeb4 7acd 	vcmpe.f32	s14, s26
d0040f7a:	f108 0101 	add.w	r1, r8, #1
d0040f7e:	2930      	cmp	r1, #48	; 0x30
d0040f80:	bfa8      	it	ge
d0040f82:	2130      	movge	r1, #48	; 0x30
d0040f84:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040f88:	d9e1      	bls.n	d0040f4e <fillTriangleFlat+0x6ee>
d0040f8a:	f1b8 0f00 	cmp.w	r8, #0
d0040f8e:	eec5 2a07 	vdiv.f32	s5, s10, s14
d0040f92:	dd4d      	ble.n	d0041030 <fillTriangleFlat+0x7d0>
d0040f94:	1e4b      	subs	r3, r1, #1
d0040f96:	ee07 3a90 	vmov	s15, r3
d0040f9a:	eef0 1a47 	vmov.f32	s3, s14
d0040f9e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040fa2:	eee7 1aa4 	vfma.f32	s3, s15, s9
d0040fa6:	eef4 1acd 	vcmpe.f32	s3, s26
d0040faa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040fae:	dd40      	ble.n	d0041032 <fillTriangleFlat+0x7d2>
d0040fb0:	eeb0 ea45 	vmov.f32	s28, s10
d0040fb4:	eea7 ea84 	vfma.f32	s28, s15, s8
d0040fb8:	ee8e 8a21 	vdiv.f32	s16, s28, s3
d0040fbc:	ee38 8a62 	vsub.f32	s16, s16, s5
d0040fc0:	eec8 1a27 	vdiv.f32	s3, s16, s15
d0040fc4:	f1ae 0002 	sub.w	r0, lr, #2
d0040fc8:	2200      	movs	r2, #0
d0040fca:	fec2 7a83 	vmaxnm.f32	s15, s5, s6
d0040fce:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d0040fd2:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0040fd6:	f830 5f02 	ldrh.w	r5, [r0, #2]!
d0040fda:	3201      	adds	r2, #1
d0040fdc:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0040fe0:	ea4f 1983 	mov.w	r9, r3, lsl #6
d0040fe4:	ee72 2aa1 	vadd.f32	s5, s5, s3
d0040fe8:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0040fec:	ee17 3a90 	vmov	r3, s15
d0040ff0:	b29b      	uxth	r3, r3
d0040ff2:	429d      	cmp	r5, r3
d0040ff4:	d902      	bls.n	d0040ffc <fillTriangleFlat+0x79c>
d0040ff6:	8003      	strh	r3, [r0, #0]
d0040ff8:	f80c 7009 	strb.w	r7, [ip, r9]
d0040ffc:	428a      	cmp	r2, r1
d0040ffe:	dbe4      	blt.n	d0040fca <fillTriangleFlat+0x76a>
d0041000:	f1b8 0f00 	cmp.w	r8, #0
d0041004:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0041008:	ea4f 0241 	mov.w	r2, r1, lsl #1
d004100c:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0041010:	bfbc      	itt	lt
d0041012:	2202      	movlt	r2, #2
d0041014:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0041018:	4496      	add	lr, r2
d004101a:	449c      	add	ip, r3
d004101c:	ee07 1a90 	vmov	s15, r1
d0041020:	440c      	add	r4, r1
d0041022:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041026:	eea7 7aa4 	vfma.f32	s14, s15, s9
d004102a:	eea7 5a84 	vfma.f32	s10, s15, s8
d004102e:	e79d      	b.n	d0040f6c <fillTriangleFlat+0x70c>
d0041030:	d1f4      	bne.n	d004101c <fillTriangleFlat+0x7bc>
d0041032:	eef0 1a43 	vmov.f32	s3, s6
d0041036:	e7c5      	b.n	d0040fc4 <fillTriangleFlat+0x764>
d0041038:	eeb0 4a43 	vmov.f32	s8, s6
d004103c:	eef0 4a43 	vmov.f32	s9, s6
d0041040:	e774      	b.n	d0040f2c <fillTriangleFlat+0x6cc>
d0041042:	eeb0 aa42 	vmov.f32	s20, s4
d0041046:	eef0 2a42 	vmov.f32	s5, s4
d004104a:	e6c5      	b.n	d0040dd8 <fillTriangleFlat+0x578>
d004104c:	ed9f fa0a 	vldr	s30, [pc, #40]	; d0041078 <fillTriangleFlat+0x818>
d0041050:	eef0 fa4f 	vmov.f32	s31, s30
d0041054:	eef0 ea4f 	vmov.f32	s29, s30
d0041058:	e5d8      	b.n	d0040c0c <fillTriangleFlat+0x3ac>
d004105a:	eddf 7a07 	vldr	s15, [pc, #28]	; d0041078 <fillTriangleFlat+0x818>
d004105e:	eef0 da67 	vmov.f32	s27, s15
d0041062:	eef0 9a67 	vmov.f32	s19, s15
d0041066:	eeb0 ba67 	vmov.f32	s22, s15
d004106a:	e5cf      	b.n	d0040c0c <fillTriangleFlat+0x3ac>
d004106c:	d00e1c64 	.word	0xd00e1c64
d0041070:	d00e7c80 	.word	0xd00e7c80
d0041074:	38d1b717 	.word	0x38d1b717
d0041078:	00000000 	.word	0x00000000

d004107c <fillTriangleDitherBayer>:
d004107c:	eddf 7ae7 	vldr	s15, [pc, #924]	; d004141c <fillTriangleDitherBayer+0x3a0>
d0041080:	eef4 0ae7 	vcmpe.f32	s1, s15
d0041084:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041088:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004108c:	eeb4 1ae7 	vcmpe.f32	s2, s15
d0041090:	ed2d 8b10 	vpush	{d8-d15}
d0041094:	b08f      	sub	sp, #60	; 0x3c
d0041096:	9202      	str	r2, [sp, #8]
d0041098:	bf94      	ite	ls
d004109a:	2201      	movls	r2, #1
d004109c:	2200      	movhi	r2, #0
d004109e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00410a2:	9303      	str	r3, [sp, #12]
d00410a4:	f8bd 40a8 	ldrh.w	r4, [sp, #168]	; 0xa8
d00410a8:	bf98      	it	ls
d00410aa:	f042 0201 	orrls.w	r2, r2, #1
d00410ae:	f89d 30b4 	ldrb.w	r3, [sp, #180]	; 0xb4
d00410b2:	e9cd 0100 	strd	r0, r1, [sp]
d00410b6:	f8bd 00ac 	ldrh.w	r0, [sp, #172]	; 0xac
d00410ba:	f8bd 10b0 	ldrh.w	r1, [sp, #176]	; 0xb0
d00410be:	2a00      	cmp	r2, #0
d00410c0:	f040 8187 	bne.w	d00413d2 <fillTriangleDitherBayer+0x356>
d00410c4:	eeb4 0a67 	vcmp.f32	s0, s15
d00410c8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00410cc:	f240 8181 	bls.w	d00413d2 <fillTriangleDitherBayer+0x356>
d00410d0:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d00410d4:	eddf 7ad3 	vldr	s15, [pc, #844]	; d0041424 <fillTriangleDitherBayer+0x3a8>
d00410d8:	eeb1 6a04 	vmov.f32	s12, #20	; 0x40a00000  5.0
d00410dc:	ee07 4a10 	vmov	s14, r4
d00410e0:	fec1 7aa7 	vmaxnm.f32	s15, s3, s15
d00410e4:	ee86 3a81 	vdiv.f32	s6, s13, s2
d00410e8:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d00410ec:	eec6 1a80 	vdiv.f32	s3, s13, s0
d00410f0:	ee86 0aa0 	vdiv.f32	s0, s13, s1
d00410f4:	eefd 6ae7 	vcvt.s32.f32	s13, s15
d00410f8:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d00410fc:	ee16 2a90 	vmov	r2, s13
d0041100:	ee06 0a90 	vmov	s13, r0
d0041104:	eef8 5a66 	vcvt.f32.u32	s11, s13
d0041108:	ee06 1a90 	vmov	s13, r1
d004110c:	1c51      	adds	r1, r2, #1
d004110e:	ee27 7a21 	vmul.f32	s14, s14, s3
d0041112:	eef8 6a66 	vcvt.f32.u32	s13, s13
d0041116:	2905      	cmp	r1, #5
d0041118:	bfa8      	it	ge
d004111a:	2105      	movge	r1, #5
d004111c:	2a04      	cmp	r2, #4
d004111e:	ee65 5a80 	vmul.f32	s11, s11, s0
d0041122:	ee26 2a83 	vmul.f32	s4, s13, s6
d0041126:	f300 8457 	bgt.w	d00419d8 <fillTriangleDitherBayer+0x95c>
d004112a:	f003 030f 	and.w	r3, r3, #15
d004112e:	2a03      	cmp	r2, #3
d0041130:	f103 0320 	add.w	r3, r3, #32
d0041134:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d0041138:	fa5f fa80 	uxtb.w	sl, r0
d004113c:	f300 844e 	bgt.w	d00419dc <fillTriangleDitherBayer+0x960>
d0041140:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d0041144:	b2db      	uxtb	r3, r3
d0041146:	9304      	str	r3, [sp, #16]
d0041148:	eddd 6a01 	vldr	s13, [sp, #4]
d004114c:	eeb8 5ae6 	vcvt.f32.s32	s10, s13
d0041150:	eddd 6a03 	vldr	s13, [sp, #12]
d0041154:	eef8 3ae6 	vcvt.f32.s32	s7, s13
d0041158:	eddd 6a00 	vldr	s13, [sp]
d004115c:	eeb8 6ae6 	vcvt.f32.s32	s12, s13
d0041160:	eddd 6a02 	vldr	s13, [sp, #8]
d0041164:	eeb4 5ae3 	vcmpe.f32	s10, s7
d0041168:	eef8 4ae6 	vcvt.f32.s32	s9, s13
d004116c:	eddd 6a28 	vldr	s13, [sp, #160]	; 0xa0
d0041170:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041174:	eeb8 1ae6 	vcvt.f32.s32	s2, s13
d0041178:	eddd 6a29 	vldr	s13, [sp, #164]	; 0xa4
d004117c:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0041180:	f300 812c 	bgt.w	d00413dc <fillTriangleDitherBayer+0x360>
d0041184:	eeb4 5ae6 	vcmpe.f32	s10, s13
d0041188:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004118c:	f300 8231 	bgt.w	d00415f2 <fillTriangleDitherBayer+0x576>
d0041190:	eef4 3ae6 	vcmpe.f32	s7, s13
d0041194:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041198:	dd17      	ble.n	d00411ca <fillTriangleDitherBayer+0x14e>
d004119a:	eeb0 8a65 	vmov.f32	s16, s11
d004119e:	eef0 0a40 	vmov.f32	s1, s0
d00411a2:	eef0 2a63 	vmov.f32	s5, s7
d00411a6:	eeb0 4a64 	vmov.f32	s8, s9
d00411aa:	eef0 5a42 	vmov.f32	s11, s4
d00411ae:	eeb0 0a43 	vmov.f32	s0, s6
d00411b2:	eef0 3a66 	vmov.f32	s7, s13
d00411b6:	eef0 4a41 	vmov.f32	s9, s2
d00411ba:	eeb0 2a48 	vmov.f32	s4, s16
d00411be:	eeb0 3a60 	vmov.f32	s6, s1
d00411c2:	eef0 6a62 	vmov.f32	s13, s5
d00411c6:	eeb0 1a44 	vmov.f32	s2, s8
d00411ca:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d00411ce:	ee75 2a04 	vadd.f32	s5, s10, s8
d00411d2:	ee36 4a84 	vadd.f32	s8, s13, s8
d00411d6:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d00411da:	eebd 4ac4 	vcvt.s32.f32	s8, s8
d00411de:	ee12 3a90 	vmov	r3, s5
d00411e2:	ee14 1a10 	vmov	r1, s8
d00411e6:	428b      	cmp	r3, r1
d00411e8:	f000 80f3 	beq.w	d00413d2 <fillTriangleDitherBayer+0x356>
d00411ec:	ee76 8ac5 	vsub.f32	s17, s13, s10
d00411f0:	eddf 2a8a 	vldr	s5, [pc, #552]	; d004141c <fillTriangleDitherBayer+0x3a0>
d00411f4:	eef4 8ae2 	vcmpe.f32	s17, s5
d00411f8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00411fc:	f240 80e9 	bls.w	d00413d2 <fillTriangleDitherBayer+0x356>
d0041200:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0041204:	ee33 9ac5 	vsub.f32	s18, s7, s10
d0041208:	ee71 0a46 	vsub.f32	s1, s2, s12
d004120c:	ee89 4aa8 	vdiv.f32	s8, s19, s17
d0041210:	eeb4 9ae2 	vcmpe.f32	s18, s5
d0041214:	ee33 8a61 	vsub.f32	s16, s6, s3
d0041218:	ee72 8a47 	vsub.f32	s17, s4, s14
d004121c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041220:	ee60 0a84 	vmul.f32	s1, s1, s8
d0041224:	ee28 8a04 	vmul.f32	s16, s16, s8
d0041228:	ee68 8a84 	vmul.f32	s17, s17, s8
d004122c:	f300 80fe 	bgt.w	d004142c <fillTriangleDitherBayer+0x3b0>
d0041230:	ee04 2a10 	vmov	s8, r2
d0041234:	ee76 fae3 	vsub.f32	s31, s13, s7
d0041238:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d004123c:	eef4 fae2 	vcmpe.f32	s31, s5
d0041240:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0041244:	eeb0 4a67 	vmov.f32	s8, s15
d0041248:	eebe 4ace 	vcvt.s32.f32	s8, s8, #4
d004124c:	ee14 3a10 	vmov	r3, s8
d0041250:	f383 0204 	usat	r2, #4, r3
d0041254:	9201      	str	r2, [sp, #4]
d0041256:	9a04      	ldr	r2, [sp, #16]
d0041258:	4592      	cmp	sl, r2
d004125a:	bf18      	it	ne
d004125c:	2b00      	cmpne	r3, #0
d004125e:	bfd4      	ite	le
d0041260:	2301      	movle	r3, #1
d0041262:	2300      	movgt	r3, #0
d0041264:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041268:	9300      	str	r3, [sp, #0]
d004126a:	f340 80b2 	ble.w	d00413d2 <fillTriangleDitherBayer+0x356>
d004126e:	ed9f ea6d 	vldr	s28, [pc, #436]	; d0041424 <fillTriangleDitherBayer+0x3a8>
d0041272:	eef0 9a4e 	vmov.f32	s19, s28
d0041276:	eeb0 ba4e 	vmov.f32	s22, s28
d004127a:	eef7 2a00 	vmov.f32	s5, #112	; 0x3f800000  1.0
d004127e:	ed9f 4a67 	vldr	s8, [pc, #412]	; d004141c <fillTriangleDitherBayer+0x3a0>
d0041282:	ee31 1a64 	vsub.f32	s2, s2, s9
d0041286:	ee33 3a40 	vsub.f32	s6, s6, s0
d004128a:	eec2 7aaf 	vdiv.f32	s15, s5, s31
d004128e:	eeb4 9ac4 	vcmpe.f32	s18, s8
d0041292:	ee32 2a65 	vsub.f32	s4, s4, s11
d0041296:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004129a:	ee61 2a27 	vmul.f32	s5, s2, s15
d004129e:	ee23 3a27 	vmul.f32	s6, s6, s15
d00412a2:	ee22 fa27 	vmul.f32	s30, s4, s15
d00412a6:	edcd 2a09 	vstr	s5, [sp, #36]	; 0x24
d00412aa:	ed8d 3a08 	vstr	s6, [sp, #32]
d00412ae:	f300 80f4 	bgt.w	d004149a <fillTriangleDitherBayer+0x41e>
d00412b2:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d00412b6:	edcd 7a06 	vstr	s15, [sp, #24]
d00412ba:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d00412be:	f240 123f 	movw	r2, #319	; 0x13f
d00412c2:	9906      	ldr	r1, [sp, #24]
d00412c4:	ee17 3a90 	vmov	r3, s15
d00412c8:	ea21 7be1 	bic.w	fp, r1, r1, asr #31
d00412cc:	3b01      	subs	r3, #1
d00412ce:	4293      	cmp	r3, r2
d00412d0:	bfa8      	it	ge
d00412d2:	4613      	movge	r3, r2
d00412d4:	459b      	cmp	fp, r3
d00412d6:	dc7c      	bgt.n	d00413d2 <fillTriangleDitherBayer+0x356>
d00412d8:	ee07 ba90 	vmov	s15, fp
d00412dc:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d00412e0:	3301      	adds	r3, #1
d00412e2:	eddd aa09 	vldr	s21, [sp, #36]	; 0x24
d00412e6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00412ea:	ed9d aa08 	vldr	s20, [sp, #32]
d00412ee:	ed9f 1a4b 	vldr	s2, [pc, #300]	; d004141c <fillTriangleDitherBayer+0x3a0>
d00412f2:	ed9f 2a4b 	vldr	s4, [pc, #300]	; d0041420 <fillTriangleDitherBayer+0x3a4>
d00412f6:	ee77 7aa6 	vadd.f32	s15, s15, s13
d00412fa:	ed9f 3a4a 	vldr	s6, [pc, #296]	; d0041424 <fillTriangleDitherBayer+0x3a8>
d00412fe:	9302      	str	r3, [sp, #8]
d0041300:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0041304:	ee77 7ae3 	vsub.f32	s15, s15, s7
d0041308:	eddf 3a47 	vldr	s7, [pc, #284]	; d0041428 <fillTriangleDitherBayer+0x3ac>
d004130c:	eea0 6a85 	vfma.f32	s12, s1, s10
d0041310:	eee8 1a05 	vfma.f32	s3, s16, s10
d0041314:	eea8 7a85 	vfma.f32	s14, s17, s10
d0041318:	eeea 4aa7 	vfma.f32	s9, s21, s15
d004131c:	eeaa 0a27 	vfma.f32	s0, s20, s15
d0041320:	eeef 5a27 	vfma.f32	s11, s30, s15
d0041324:	e033      	b.n	d004138e <fillTriangleDitherBayer+0x312>
d0041326:	eef0 2a47 	vmov.f32	s5, s14
d004132a:	eef0 9a61 	vmov.f32	s19, s3
d004132e:	eef0 6a46 	vmov.f32	s13, s12
d0041332:	eeb0 9a65 	vmov.f32	s18, s11
d0041336:	eeb0 5a40 	vmov.f32	s10, s0
d004133a:	eeb0 4a64 	vmov.f32	s8, s9
d004133e:	fefa 7a66 	vrintp.f32	s15, s13
d0041342:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041346:	f240 13df 	movw	r3, #479	; 0x1df
d004134a:	ee17 6a90 	vmov	r6, s15
d004134e:	fefa 7a44 	vrintp.f32	s15, s8
d0041352:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041356:	3e01      	subs	r6, #1
d0041358:	ee17 0a90 	vmov	r0, s15
d004135c:	429e      	cmp	r6, r3
d004135e:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d0041362:	bfa8      	it	ge
d0041364:	461e      	movge	r6, r3
d0041366:	4286      	cmp	r6, r0
d0041368:	f280 815c 	bge.w	d0041624 <fillTriangleDitherBayer+0x5a8>
d004136c:	f10b 0b01 	add.w	fp, fp, #1
d0041370:	9b02      	ldr	r3, [sp, #8]
d0041372:	ee36 6a20 	vadd.f32	s12, s12, s1
d0041376:	459b      	cmp	fp, r3
d0041378:	ee71 1a88 	vadd.f32	s3, s3, s16
d004137c:	ee37 7a28 	vadd.f32	s14, s14, s17
d0041380:	ee74 4aaa 	vadd.f32	s9, s9, s21
d0041384:	ee30 0a0a 	vadd.f32	s0, s0, s20
d0041388:	ee75 5a8f 	vadd.f32	s11, s11, s30
d004138c:	d021      	beq.n	d00413d2 <fillTriangleDitherBayer+0x356>
d004138e:	eeb4 6ae4 	vcmpe.f32	s12, s9
d0041392:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041396:	dcc6      	bgt.n	d0041326 <fillTriangleDitherBayer+0x2aa>
d0041398:	eef0 2a65 	vmov.f32	s5, s11
d004139c:	eef0 9a40 	vmov.f32	s19, s0
d00413a0:	eef0 6a64 	vmov.f32	s13, s9
d00413a4:	eeb0 9a47 	vmov.f32	s18, s14
d00413a8:	eeb0 5a61 	vmov.f32	s10, s3
d00413ac:	eeb0 4a46 	vmov.f32	s8, s12
d00413b0:	e7c5      	b.n	d004133e <fillTriangleDitherBayer+0x2c2>
d00413b2:	eddd 6a0a 	vldr	s13, [sp, #40]	; 0x28
d00413b6:	ed9d 5a0b 	vldr	s10, [sp, #44]	; 0x2c
d00413ba:	ed9d 6a0c 	vldr	s12, [sp, #48]	; 0x30
d00413be:	ed9d fa0d 	vldr	s30, [sp, #52]	; 0x34
d00413c2:	eddf 7a16 	vldr	s15, [pc, #88]	; d004141c <fillTriangleDitherBayer+0x3a0>
d00413c6:	eef4 fae7 	vcmpe.f32	s31, s15
d00413ca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00413ce:	f73f af74 	bgt.w	d00412ba <fillTriangleDitherBayer+0x23e>
d00413d2:	b00f      	add	sp, #60	; 0x3c
d00413d4:	ecbd 8b10 	vpop	{d8-d15}
d00413d8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00413dc:	eef4 3ae6 	vcmpe.f32	s7, s13
d00413e0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00413e4:	f340 80ec 	ble.w	d00415c0 <fillTriangleDitherBayer+0x544>
d00413e8:	eeb0 8a42 	vmov.f32	s16, s4
d00413ec:	eef0 0a43 	vmov.f32	s1, s6
d00413f0:	eef0 2a66 	vmov.f32	s5, s13
d00413f4:	eeb0 4a41 	vmov.f32	s8, s2
d00413f8:	eeb0 2a47 	vmov.f32	s4, s14
d00413fc:	eeb0 3a61 	vmov.f32	s6, s3
d0041400:	eef0 6a45 	vmov.f32	s13, s10
d0041404:	eeb0 1a46 	vmov.f32	s2, s12
d0041408:	eeb0 7a48 	vmov.f32	s14, s16
d004140c:	eef0 1a60 	vmov.f32	s3, s1
d0041410:	eeb0 5a62 	vmov.f32	s10, s5
d0041414:	eeb0 6a44 	vmov.f32	s12, s8
d0041418:	e6d7      	b.n	d00411ca <fillTriangleDitherBayer+0x14e>
d004141a:	bf00      	nop
d004141c:	38d1b717 	.word	0x38d1b717
d0041420:	33d6bf95 	.word	0x33d6bf95
d0041424:	00000000 	.word	0x00000000
d0041428:	477fff00 	.word	0x477fff00
d004142c:	ee04 2a10 	vmov	s8, r2
d0041430:	ee89 aa89 	vdiv.f32	s20, s19, s18
d0041434:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0041438:	ee74 aac6 	vsub.f32	s21, s9, s12
d004143c:	ee76 fae3 	vsub.f32	s31, s13, s7
d0041440:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0041444:	ee70 9a61 	vsub.f32	s19, s0, s3
d0041448:	eef4 fae2 	vcmpe.f32	s31, s5
d004144c:	eeb0 4a67 	vmov.f32	s8, s15
d0041450:	ee35 eac7 	vsub.f32	s28, s11, s14
d0041454:	eebe 4ace 	vcvt.s32.f32	s8, s8, #4
d0041458:	ee6a 7a8a 	vmul.f32	s15, s21, s20
d004145c:	ee14 3a10 	vmov	r3, s8
d0041460:	ee2e ea0a 	vmul.f32	s28, s28, s20
d0041464:	f383 0204 	usat	r2, #4, r3
d0041468:	eeb0 ba67 	vmov.f32	s22, s15
d004146c:	ee69 7a8a 	vmul.f32	s15, s19, s20
d0041470:	9201      	str	r2, [sp, #4]
d0041472:	9a04      	ldr	r2, [sp, #16]
d0041474:	eef0 9a67 	vmov.f32	s19, s15
d0041478:	4592      	cmp	sl, r2
d004147a:	bf18      	it	ne
d004147c:	2b00      	cmpne	r3, #0
d004147e:	bfd4      	ite	le
d0041480:	2301      	movle	r3, #1
d0041482:	2300      	movgt	r3, #0
d0041484:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041488:	9300      	str	r3, [sp, #0]
d004148a:	f73f aef6 	bgt.w	d004127a <fillTriangleDitherBayer+0x1fe>
d004148e:	ed1f fa1b 	vldr	s30, [pc, #-108]	; d0041424 <fillTriangleDitherBayer+0x3a8>
d0041492:	ed8d fa08 	vstr	s30, [sp, #32]
d0041496:	ed8d fa09 	vstr	s30, [sp, #36]	; 0x24
d004149a:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d004149e:	f240 123f 	movw	r2, #319	; 0x13f
d00414a2:	ee17 3a90 	vmov	r3, s15
d00414a6:	edcd 7a06 	vstr	s15, [sp, #24]
d00414aa:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d00414ae:	3b01      	subs	r3, #1
d00414b0:	ee17 ba90 	vmov	fp, s15
d00414b4:	4293      	cmp	r3, r2
d00414b6:	ea2b 7beb 	bic.w	fp, fp, fp, asr #31
d00414ba:	bfa8      	it	ge
d00414bc:	4613      	movge	r3, r2
d00414be:	455b      	cmp	r3, fp
d00414c0:	f6ff af7f 	blt.w	d00413c2 <fillTriangleDitherBayer+0x346>
d00414c4:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00414c8:	3301      	adds	r3, #1
d00414ca:	eeb0 aa46 	vmov.f32	s20, s12
d00414ce:	ed1f da2c 	vldr	s26, [pc, #-176]	; d0041420 <fillTriangleDitherBayer+0x3a4>
d00414d2:	eef0 aa46 	vmov.f32	s21, s12
d00414d6:	ed1f 3a2d 	vldr	s6, [pc, #-180]	; d0041424 <fillTriangleDitherBayer+0x3a8>
d00414da:	ee37 4ac5 	vsub.f32	s8, s15, s10
d00414de:	ee07 ba90 	vmov	s15, fp
d00414e2:	eef0 ca61 	vmov.f32	s25, s3
d00414e6:	ed1f 2a30 	vldr	s4, [pc, #-192]	; d0041428 <fillTriangleDitherBayer+0x3ac>
d00414ea:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00414ee:	9302      	str	r3, [sp, #8]
d00414f0:	eeb0 ca47 	vmov.f32	s24, s14
d00414f4:	edcd 6a0a 	vstr	s13, [sp, #40]	; 0x28
d00414f8:	eef0 da4b 	vmov.f32	s27, s22
d00414fc:	ed8d 5a0b 	vstr	s10, [sp, #44]	; 0x2c
d0041500:	ee77 7a84 	vadd.f32	s15, s15, s8
d0041504:	ed8d 6a0c 	vstr	s12, [sp, #48]	; 0x30
d0041508:	eef0 ba61 	vmov.f32	s23, s3
d004150c:	ed8d fa0d 	vstr	s30, [sp, #52]	; 0x34
d0041510:	eef0 ea69 	vmov.f32	s29, s19
d0041514:	eea7 aa8b 	vfma.f32	s20, s15, s22
d0041518:	eeb0 ba47 	vmov.f32	s22, s14
d004151c:	eee0 aaa7 	vfma.f32	s21, s1, s15
d0041520:	eee8 ca27 	vfma.f32	s25, s16, s15
d0041524:	eea8 caa7 	vfma.f32	s24, s17, s15
d0041528:	eee7 baa9 	vfma.f32	s23, s15, s19
d004152c:	eea7 ba8e 	vfma.f32	s22, s15, s28
d0041530:	e034      	b.n	d004159c <fillTriangleDitherBayer+0x520>
d0041532:	eef0 2a4c 	vmov.f32	s5, s24
d0041536:	eeb0 4a6c 	vmov.f32	s8, s25
d004153a:	eef0 7a6a 	vmov.f32	s15, s21
d004153e:	eeb0 5a4b 	vmov.f32	s10, s22
d0041542:	eef0 6a6b 	vmov.f32	s13, s23
d0041546:	eeb0 6a4a 	vmov.f32	s12, s20
d004154a:	feba 1a67 	vrintp.f32	s2, s15
d004154e:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d0041552:	feba 9a46 	vrintp.f32	s18, s12
d0041556:	f240 13df 	movw	r3, #479	; 0x1df
d004155a:	ee11 6a10 	vmov	r6, s2
d004155e:	eebd 1ac9 	vcvt.s32.f32	s2, s18
d0041562:	3e01      	subs	r6, #1
d0041564:	ee11 0a10 	vmov	r0, s2
d0041568:	429e      	cmp	r6, r3
d004156a:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d004156e:	bfa8      	it	ge
d0041570:	461e      	movge	r6, r3
d0041572:	4286      	cmp	r6, r0
d0041574:	f280 813e 	bge.w	d00417f4 <fillTriangleDitherBayer+0x778>
d0041578:	f10b 0b01 	add.w	fp, fp, #1
d004157c:	9b02      	ldr	r3, [sp, #8]
d004157e:	ee7a aaa0 	vadd.f32	s21, s21, s1
d0041582:	459b      	cmp	fp, r3
d0041584:	ee7c ca88 	vadd.f32	s25, s25, s16
d0041588:	ee3c ca28 	vadd.f32	s24, s24, s17
d004158c:	ee3a aa2d 	vadd.f32	s20, s20, s27
d0041590:	ee7b baae 	vadd.f32	s23, s23, s29
d0041594:	ee3b ba0e 	vadd.f32	s22, s22, s28
d0041598:	f43f af0b 	beq.w	d00413b2 <fillTriangleDitherBayer+0x336>
d004159c:	eef4 aaca 	vcmpe.f32	s21, s20
d00415a0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00415a4:	dcc5      	bgt.n	d0041532 <fillTriangleDitherBayer+0x4b6>
d00415a6:	eef0 2a4b 	vmov.f32	s5, s22
d00415aa:	eeb0 4a6b 	vmov.f32	s8, s23
d00415ae:	eef0 7a4a 	vmov.f32	s15, s20
d00415b2:	eeb0 5a4c 	vmov.f32	s10, s24
d00415b6:	eef0 6a6c 	vmov.f32	s13, s25
d00415ba:	eeb0 6a6a 	vmov.f32	s12, s21
d00415be:	e7c4      	b.n	d004154a <fillTriangleDitherBayer+0x4ce>
d00415c0:	eeb0 8a47 	vmov.f32	s16, s14
d00415c4:	eef0 0a61 	vmov.f32	s1, s3
d00415c8:	eef0 2a45 	vmov.f32	s5, s10
d00415cc:	eeb0 4a46 	vmov.f32	s8, s12
d00415d0:	eeb0 7a65 	vmov.f32	s14, s11
d00415d4:	eef0 1a40 	vmov.f32	s3, s0
d00415d8:	eeb0 5a63 	vmov.f32	s10, s7
d00415dc:	eeb0 6a64 	vmov.f32	s12, s9
d00415e0:	eef0 5a48 	vmov.f32	s11, s16
d00415e4:	eeb0 0a60 	vmov.f32	s0, s1
d00415e8:	eef0 3a62 	vmov.f32	s7, s5
d00415ec:	eef0 4a44 	vmov.f32	s9, s8
d00415f0:	e5ce      	b.n	d0041190 <fillTriangleDitherBayer+0x114>
d00415f2:	eeb0 8a47 	vmov.f32	s16, s14
d00415f6:	eef0 0a61 	vmov.f32	s1, s3
d00415fa:	eef0 2a45 	vmov.f32	s5, s10
d00415fe:	eeb0 4a46 	vmov.f32	s8, s12
d0041602:	eeb0 7a42 	vmov.f32	s14, s4
d0041606:	eef0 1a43 	vmov.f32	s3, s6
d004160a:	eeb0 5a66 	vmov.f32	s10, s13
d004160e:	eeb0 6a41 	vmov.f32	s12, s2
d0041612:	eeb0 2a48 	vmov.f32	s4, s16
d0041616:	eeb0 3a60 	vmov.f32	s6, s1
d004161a:	eef0 6a62 	vmov.f32	s13, s5
d004161e:	eeb0 1a44 	vmov.f32	s2, s8
d0041622:	e5b5      	b.n	d0041190 <fillTriangleDitherBayer+0x114>
d0041624:	ee76 6ac4 	vsub.f32	s13, s13, s8
d0041628:	eef4 6ac1 	vcmpe.f32	s13, s2
d004162c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041630:	f340 81d8 	ble.w	d00419e4 <fillTriangleDitherBayer+0x968>
d0041634:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0041638:	ee79 9ac5 	vsub.f32	s19, s19, s10
d004163c:	ee72 2ac9 	vsub.f32	s5, s5, s18
d0041640:	ee87 baa6 	vdiv.f32	s22, s15, s13
d0041644:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0041648:	ee37 4ac4 	vsub.f32	s8, s15, s8
d004164c:	ee07 0a90 	vmov	s15, r0
d0041650:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041654:	ee77 7a84 	vadd.f32	s15, s15, s8
d0041658:	ee69 9a8b 	vmul.f32	s19, s19, s22
d004165c:	ee22 ba8b 	vmul.f32	s22, s5, s22
d0041660:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0041664:	eea7 9a8b 	vfma.f32	s18, s15, s22
d0041668:	ebcb 190b 	rsb	r9, fp, fp, lsl #4
d004166c:	49d6      	ldr	r1, [pc, #856]	; (d00419c8 <fillTriangleDitherBayer+0x94c>)
d004166e:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0041672:	4cd6      	ldr	r4, [pc, #856]	; (d00419cc <fillTriangleDitherBayer+0x950>)
d0041674:	eb00 1249 	add.w	r2, r0, r9, lsl #5
d0041678:	6809      	ldr	r1, [r1, #0]
d004167a:	eb0b 1383 	add.w	r3, fp, r3, lsl #6
d004167e:	f8cd b018 	str.w	fp, [sp, #24]
d0041682:	eb04 0942 	add.w	r9, r4, r2, lsl #1
d0041686:	f00b 0203 	and.w	r2, fp, #3
d004168a:	eb01 0c03 	add.w	ip, r1, r3
d004168e:	eef6 2a00 	vmov.f32	s5, #96	; 0x3f000000  0.5
d0041692:	4613      	mov	r3, r2
d0041694:	4ace      	ldr	r2, [pc, #824]	; (d00419d0 <fillTriangleDitherBayer+0x954>)
d0041696:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d004169a:	469b      	mov	fp, r3
d004169c:	e010      	b.n	d00416c0 <fillTriangleDitherBayer+0x644>
d004169e:	ee07 3a90 	vmov	s15, r3
d00416a2:	4418      	add	r0, r3
d00416a4:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d00416a8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00416ac:	42b0      	cmp	r0, r6
d00416ae:	eb09 0943 	add.w	r9, r9, r3, lsl #1
d00416b2:	eb0c 1c82 	add.w	ip, ip, r2, lsl #6
d00416b6:	eea7 5aa9 	vfma.f32	s10, s15, s19
d00416ba:	eea7 9a8b 	vfma.f32	s18, s15, s22
d00416be:	dc72      	bgt.n	d00417a6 <fillTriangleDitherBayer+0x72a>
d00416c0:	eba6 0800 	sub.w	r8, r6, r0
d00416c4:	eeb4 5ac2 	vcmpe.f32	s10, s4
d00416c8:	f108 0301 	add.w	r3, r8, #1
d00416cc:	2b30      	cmp	r3, #48	; 0x30
d00416ce:	bfa8      	it	ge
d00416d0:	2330      	movge	r3, #48	; 0x30
d00416d2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00416d6:	d9e2      	bls.n	d004169e <fillTriangleDitherBayer+0x622>
d00416d8:	f1b8 0f00 	cmp.w	r8, #0
d00416dc:	eec9 6a05 	vdiv.f32	s13, s18, s10
d00416e0:	dd64      	ble.n	d00417ac <fillTriangleDitherBayer+0x730>
d00416e2:	1e5a      	subs	r2, r3, #1
d00416e4:	ee07 2a90 	vmov	s15, r2
d00416e8:	eeb0 4a45 	vmov.f32	s8, s10
d00416ec:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00416f0:	eea7 4aa9 	vfma.f32	s8, s15, s19
d00416f4:	eeb4 4ac2 	vcmpe.f32	s8, s4
d00416f8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00416fc:	dd57      	ble.n	d00417ae <fillTriangleDitherBayer+0x732>
d00416fe:	eeb0 ca49 	vmov.f32	s24, s18
d0041702:	9a00      	ldr	r2, [sp, #0]
d0041704:	eea7 ca8b 	vfma.f32	s24, s15, s22
d0041708:	eecc ba04 	vdiv.f32	s23, s24, s8
d004170c:	ee7b bae6 	vsub.f32	s23, s23, s13
d0041710:	ee8b 4aa7 	vdiv.f32	s8, s23, s15
d0041714:	2a00      	cmp	r2, #0
d0041716:	d14f      	bne.n	d00417b8 <fillTriangleDitherBayer+0x73c>
d0041718:	f8cd 800c 	str.w	r8, [sp, #12]
d004171c:	f1a9 0702 	sub.w	r7, r9, #2
d0041720:	9605      	str	r6, [sp, #20]
d0041722:	f8dd 8004 	ldr.w	r8, [sp, #4]
d0041726:	9e04      	ldr	r6, [sp, #16]
d0041728:	fec6 7a83 	vmaxnm.f32	s15, s13, s6
d004172c:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d0041730:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0041734:	f837 ef02 	ldrh.w	lr, [r7, #2]!
d0041738:	1885      	adds	r5, r0, r2
d004173a:	eb02 0482 	add.w	r4, r2, r2, lsl #2
d004173e:	ee76 6a84 	vadd.f32	s13, s13, s8
d0041742:	3201      	adds	r2, #1
d0041744:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0041748:	f005 0503 	and.w	r5, r5, #3
d004174c:	01a4      	lsls	r4, r4, #6
d004174e:	ee17 1a90 	vmov	r1, s15
d0041752:	b289      	uxth	r1, r1
d0041754:	458e      	cmp	lr, r1
d0041756:	d908      	bls.n	d004176a <fillTriangleDitherBayer+0x6ee>
d0041758:	f81b 5005 	ldrb.w	r5, [fp, r5]
d004175c:	8039      	strh	r1, [r7, #0]
d004175e:	45a8      	cmp	r8, r5
d0041760:	bfd4      	ite	le
d0041762:	4655      	movle	r5, sl
d0041764:	4635      	movgt	r5, r6
d0041766:	f80c 5004 	strb.w	r5, [ip, r4]
d004176a:	4293      	cmp	r3, r2
d004176c:	dcdc      	bgt.n	d0041728 <fillTriangleDitherBayer+0x6ac>
d004176e:	f8dd 800c 	ldr.w	r8, [sp, #12]
d0041772:	9e05      	ldr	r6, [sp, #20]
d0041774:	f1b8 0f00 	cmp.w	r8, #0
d0041778:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d004177c:	ea4f 0143 	mov.w	r1, r3, lsl #1
d0041780:	ea4f 1282 	mov.w	r2, r2, lsl #6
d0041784:	bfbc      	itt	lt
d0041786:	2102      	movlt	r1, #2
d0041788:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d004178c:	4489      	add	r9, r1
d004178e:	4494      	add	ip, r2
d0041790:	ee07 3a90 	vmov	s15, r3
d0041794:	4418      	add	r0, r3
d0041796:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004179a:	42b0      	cmp	r0, r6
d004179c:	eea7 5aa9 	vfma.f32	s10, s15, s19
d00417a0:	eea7 9a8b 	vfma.f32	s18, s15, s22
d00417a4:	dd8c      	ble.n	d00416c0 <fillTriangleDitherBayer+0x644>
d00417a6:	f8dd b018 	ldr.w	fp, [sp, #24]
d00417aa:	e5df      	b.n	d004136c <fillTriangleDitherBayer+0x2f0>
d00417ac:	d1f0      	bne.n	d0041790 <fillTriangleDitherBayer+0x714>
d00417ae:	9a00      	ldr	r2, [sp, #0]
d00417b0:	eeb0 4a43 	vmov.f32	s8, s6
d00417b4:	2a00      	cmp	r2, #0
d00417b6:	d0af      	beq.n	d0041718 <fillTriangleDitherBayer+0x69c>
d00417b8:	f1a9 0502 	sub.w	r5, r9, #2
d00417bc:	2200      	movs	r2, #0
d00417be:	fec6 7a83 	vmaxnm.f32	s15, s13, s6
d00417c2:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d00417c6:	ee77 7aa2 	vadd.f32	s15, s15, s5
d00417ca:	eb02 0182 	add.w	r1, r2, r2, lsl #2
d00417ce:	f835 7f02 	ldrh.w	r7, [r5, #2]!
d00417d2:	ee76 6a84 	vadd.f32	s13, s13, s8
d00417d6:	018c      	lsls	r4, r1, #6
d00417d8:	3201      	adds	r2, #1
d00417da:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00417de:	ee17 1a90 	vmov	r1, s15
d00417e2:	b289      	uxth	r1, r1
d00417e4:	428f      	cmp	r7, r1
d00417e6:	d902      	bls.n	d00417ee <fillTriangleDitherBayer+0x772>
d00417e8:	8029      	strh	r1, [r5, #0]
d00417ea:	f80c a004 	strb.w	sl, [ip, r4]
d00417ee:	4293      	cmp	r3, r2
d00417f0:	dce5      	bgt.n	d00417be <fillTriangleDitherBayer+0x742>
d00417f2:	e7bf      	b.n	d0041774 <fillTriangleDitherBayer+0x6f8>
d00417f4:	ee77 7ac6 	vsub.f32	s15, s15, s12
d00417f8:	ed9f 1a76 	vldr	s2, [pc, #472]	; d00419d4 <fillTriangleDitherBayer+0x958>
d00417fc:	eef4 7ac1 	vcmpe.f32	s15, s2
d0041800:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041804:	f340 80f3 	ble.w	d00419ee <fillTriangleDitherBayer+0x972>
d0041808:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d004180c:	ee34 4a66 	vsub.f32	s8, s8, s13
d0041810:	ee72 2ac5 	vsub.f32	s5, s5, s10
d0041814:	ee89 1a27 	vdiv.f32	s2, s18, s15
d0041818:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004181c:	ee37 6ac6 	vsub.f32	s12, s15, s12
d0041820:	ee07 0a90 	vmov	s15, r0
d0041824:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041828:	ee77 7a86 	vadd.f32	s15, s15, s12
d004182c:	ee24 4a01 	vmul.f32	s8, s8, s2
d0041830:	ee62 2a81 	vmul.f32	s5, s5, s2
d0041834:	eee7 6a84 	vfma.f32	s13, s15, s8
d0041838:	eea7 5aa2 	vfma.f32	s10, s15, s5
d004183c:	ebcb 190b 	rsb	r9, fp, fp, lsl #4
d0041840:	4961      	ldr	r1, [pc, #388]	; (d00419c8 <fillTriangleDitherBayer+0x94c>)
d0041842:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0041846:	4c61      	ldr	r4, [pc, #388]	; (d00419cc <fillTriangleDitherBayer+0x950>)
d0041848:	eb00 1249 	add.w	r2, r0, r9, lsl #5
d004184c:	6809      	ldr	r1, [r1, #0]
d004184e:	eb0b 1383 	add.w	r3, fp, r3, lsl #6
d0041852:	f8cd b01c 	str.w	fp, [sp, #28]
d0041856:	eb04 0942 	add.w	r9, r4, r2, lsl #1
d004185a:	f00b 0203 	and.w	r2, fp, #3
d004185e:	eb01 0c03 	add.w	ip, r1, r3
d0041862:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d0041866:	4613      	mov	r3, r2
d0041868:	4a59      	ldr	r2, [pc, #356]	; (d00419d0 <fillTriangleDitherBayer+0x954>)
d004186a:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d004186e:	469b      	mov	fp, r3
d0041870:	e010      	b.n	d0041894 <fillTriangleDitherBayer+0x818>
d0041872:	ee07 2a90 	vmov	s15, r2
d0041876:	4410      	add	r0, r2
d0041878:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d004187c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041880:	42b0      	cmp	r0, r6
d0041882:	eb09 0942 	add.w	r9, r9, r2, lsl #1
d0041886:	eb0c 1c83 	add.w	ip, ip, r3, lsl #6
d004188a:	eee7 6a84 	vfma.f32	s13, s15, s8
d004188e:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0041892:	dc72      	bgt.n	d004197a <fillTriangleDitherBayer+0x8fe>
d0041894:	eba6 0800 	sub.w	r8, r6, r0
d0041898:	eef4 6acd 	vcmpe.f32	s13, s26
d004189c:	f108 0201 	add.w	r2, r8, #1
d00418a0:	2a30      	cmp	r2, #48	; 0x30
d00418a2:	bfa8      	it	ge
d00418a4:	2230      	movge	r2, #48	; 0x30
d00418a6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00418aa:	d9e2      	bls.n	d0041872 <fillTriangleDitherBayer+0x7f6>
d00418ac:	f1b8 0f00 	cmp.w	r8, #0
d00418b0:	ee85 1a26 	vdiv.f32	s2, s10, s13
d00418b4:	dd64      	ble.n	d0041980 <fillTriangleDitherBayer+0x904>
d00418b6:	1e53      	subs	r3, r2, #1
d00418b8:	ee07 3a90 	vmov	s15, r3
d00418bc:	eeb0 9a66 	vmov.f32	s18, s13
d00418c0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00418c4:	eea7 9a84 	vfma.f32	s18, s15, s8
d00418c8:	eeb4 9acd 	vcmpe.f32	s18, s26
d00418cc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00418d0:	dd57      	ble.n	d0041982 <fillTriangleDitherBayer+0x906>
d00418d2:	eeb0 fa45 	vmov.f32	s30, s10
d00418d6:	9900      	ldr	r1, [sp, #0]
d00418d8:	eea7 faa2 	vfma.f32	s30, s15, s5
d00418dc:	eecf 9a09 	vdiv.f32	s19, s30, s18
d00418e0:	ee79 9ac1 	vsub.f32	s19, s19, s2
d00418e4:	ee89 9aa7 	vdiv.f32	s18, s19, s15
d00418e8:	2900      	cmp	r1, #0
d00418ea:	d14f      	bne.n	d004198c <fillTriangleDitherBayer+0x910>
d00418ec:	9603      	str	r6, [sp, #12]
d00418ee:	f1a9 0702 	sub.w	r7, r9, #2
d00418f2:	f8cd 8014 	str.w	r8, [sp, #20]
d00418f6:	9e04      	ldr	r6, [sp, #16]
d00418f8:	f8dd 8004 	ldr.w	r8, [sp, #4]
d00418fc:	fec1 7a03 	vmaxnm.f32	s15, s2, s6
d0041900:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d0041904:	ee77 7a86 	vadd.f32	s15, s15, s12
d0041908:	f837 ef02 	ldrh.w	lr, [r7, #2]!
d004190c:	1845      	adds	r5, r0, r1
d004190e:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d0041912:	ee31 1a09 	vadd.f32	s2, s2, s18
d0041916:	3101      	adds	r1, #1
d0041918:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004191c:	f005 0503 	and.w	r5, r5, #3
d0041920:	01a4      	lsls	r4, r4, #6
d0041922:	ee17 3a90 	vmov	r3, s15
d0041926:	b29b      	uxth	r3, r3
d0041928:	459e      	cmp	lr, r3
d004192a:	d908      	bls.n	d004193e <fillTriangleDitherBayer+0x8c2>
d004192c:	f81b 5005 	ldrb.w	r5, [fp, r5]
d0041930:	803b      	strh	r3, [r7, #0]
d0041932:	45a8      	cmp	r8, r5
d0041934:	bfcc      	ite	gt
d0041936:	4635      	movgt	r5, r6
d0041938:	4655      	movle	r5, sl
d004193a:	f80c 5004 	strb.w	r5, [ip, r4]
d004193e:	428a      	cmp	r2, r1
d0041940:	dcdc      	bgt.n	d00418fc <fillTriangleDitherBayer+0x880>
d0041942:	9e03      	ldr	r6, [sp, #12]
d0041944:	f8dd 8014 	ldr.w	r8, [sp, #20]
d0041948:	f1b8 0f00 	cmp.w	r8, #0
d004194c:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0041950:	ea4f 0142 	mov.w	r1, r2, lsl #1
d0041954:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0041958:	bfbc      	itt	lt
d004195a:	2102      	movlt	r1, #2
d004195c:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0041960:	4489      	add	r9, r1
d0041962:	449c      	add	ip, r3
d0041964:	ee07 2a90 	vmov	s15, r2
d0041968:	4410      	add	r0, r2
d004196a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004196e:	42b0      	cmp	r0, r6
d0041970:	eee7 6a84 	vfma.f32	s13, s15, s8
d0041974:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0041978:	dd8c      	ble.n	d0041894 <fillTriangleDitherBayer+0x818>
d004197a:	f8dd b01c 	ldr.w	fp, [sp, #28]
d004197e:	e5fb      	b.n	d0041578 <fillTriangleDitherBayer+0x4fc>
d0041980:	d1f0      	bne.n	d0041964 <fillTriangleDitherBayer+0x8e8>
d0041982:	9900      	ldr	r1, [sp, #0]
d0041984:	eeb0 9a43 	vmov.f32	s18, s6
d0041988:	2900      	cmp	r1, #0
d004198a:	d0af      	beq.n	d00418ec <fillTriangleDitherBayer+0x870>
d004198c:	f1a9 0502 	sub.w	r5, r9, #2
d0041990:	2100      	movs	r1, #0
d0041992:	fec1 7a03 	vmaxnm.f32	s15, s2, s6
d0041996:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d004199a:	ee77 7a86 	vadd.f32	s15, s15, s12
d004199e:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d00419a2:	f835 7f02 	ldrh.w	r7, [r5, #2]!
d00419a6:	ee31 1a09 	vadd.f32	s2, s2, s18
d00419aa:	019c      	lsls	r4, r3, #6
d00419ac:	3101      	adds	r1, #1
d00419ae:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00419b2:	ee17 3a90 	vmov	r3, s15
d00419b6:	b29b      	uxth	r3, r3
d00419b8:	429f      	cmp	r7, r3
d00419ba:	d902      	bls.n	d00419c2 <fillTriangleDitherBayer+0x946>
d00419bc:	802b      	strh	r3, [r5, #0]
d00419be:	f80c a004 	strb.w	sl, [ip, r4]
d00419c2:	428a      	cmp	r2, r1
d00419c4:	dce5      	bgt.n	d0041992 <fillTriangleDitherBayer+0x916>
d00419c6:	e7bf      	b.n	d0041948 <fillTriangleDitherBayer+0x8cc>
d00419c8:	d00e1c64 	.word	0xd00e1c64
d00419cc:	d00e7c80 	.word	0xd00e7c80
d00419d0:	d0046c70 	.word	0xd0046c70
d00419d4:	38d1b717 	.word	0x38d1b717
d00419d8:	f04f 0a10 	mov.w	sl, #16
d00419dc:	2310      	movs	r3, #16
d00419de:	9304      	str	r3, [sp, #16]
d00419e0:	f7ff bbb2 	b.w	d0041148 <fillTriangleDitherBayer+0xcc>
d00419e4:	eeb0 ba43 	vmov.f32	s22, s6
d00419e8:	eef0 9a43 	vmov.f32	s19, s6
d00419ec:	e63c      	b.n	d0041668 <fillTriangleDitherBayer+0x5ec>
d00419ee:	eef0 2a43 	vmov.f32	s5, s6
d00419f2:	eeb0 4a43 	vmov.f32	s8, s6
d00419f6:	e721      	b.n	d004183c <fillTriangleDitherBayer+0x7c0>

d00419f8 <fillTriangleDitherBayer2Mode>:
d00419f8:	eddf 7aca 	vldr	s15, [pc, #808]	; d0041d24 <fillTriangleDitherBayer2Mode+0x32c>
d00419fc:	eef4 0ae7 	vcmpe.f32	s1, s15
d0041a00:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041a04:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041a08:	eeb4 1ae7 	vcmpe.f32	s2, s15
d0041a0c:	ed2d 8b10 	vpush	{d8-d15}
d0041a10:	b08d      	sub	sp, #52	; 0x34
d0041a12:	9303      	str	r3, [sp, #12]
d0041a14:	bf94      	ite	ls
d0041a16:	2301      	movls	r3, #1
d0041a18:	2300      	movhi	r3, #0
d0041a1a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041a1e:	9202      	str	r2, [sp, #8]
d0041a20:	f89d b0ac 	ldrb.w	fp, [sp, #172]	; 0xac
d0041a24:	bf98      	it	ls
d0041a26:	f043 0301 	orrls.w	r3, r3, #1
d0041a2a:	f8bd 20a8 	ldrh.w	r2, [sp, #168]	; 0xa8
d0041a2e:	e9cd 0100 	strd	r0, r1, [sp]
d0041a32:	f8bd 00a0 	ldrh.w	r0, [sp, #160]	; 0xa0
d0041a36:	f8bd 10a4 	ldrh.w	r1, [sp, #164]	; 0xa4
d0041a3a:	2b00      	cmp	r3, #0
d0041a3c:	f040 814d 	bne.w	d0041cda <fillTriangleDitherBayer2Mode+0x2e2>
d0041a40:	eeb4 0a67 	vcmp.f32	s0, s15
d0041a44:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041a48:	f240 8147 	bls.w	d0041cda <fillTriangleDitherBayer2Mode+0x2e2>
d0041a4c:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0041a50:	ee06 1a90 	vmov	s13, r1
d0041a54:	ee07 0a10 	vmov	s14, r0
d0041a58:	eef8 5a66 	vcvt.f32.u32	s11, s13
d0041a5c:	ee87 3a80 	vdiv.f32	s6, s15, s0
d0041a60:	ee87 2a81 	vdiv.f32	s4, s15, s2
d0041a64:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d0041a68:	ee07 2a90 	vmov	s15, r2
d0041a6c:	eeb8 4a67 	vcvt.f32.u32	s8, s15
d0041a70:	eddd 7a01 	vldr	s15, [sp, #4]
d0041a74:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0041a78:	eeb8 5ae7 	vcvt.f32.s32	s10, s15
d0041a7c:	eddd 7a03 	vldr	s15, [sp, #12]
d0041a80:	eef8 3ae7 	vcvt.f32.s32	s7, s15
d0041a84:	eddd 7a00 	vldr	s15, [sp]
d0041a88:	ee27 7a03 	vmul.f32	s14, s14, s6
d0041a8c:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d0041a90:	eddd 7a02 	vldr	s15, [sp, #8]
d0041a94:	eeb4 5ae3 	vcmpe.f32	s10, s7
d0041a98:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d0041a9c:	eddd 7a26 	vldr	s15, [sp, #152]	; 0x98
d0041aa0:	ee24 4a02 	vmul.f32	s8, s8, s4
d0041aa4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041aa8:	eef8 2ae7 	vcvt.f32.s32	s5, s15
d0041aac:	eddd 7a27 	vldr	s15, [sp, #156]	; 0x9c
d0041ab0:	ee65 5a80 	vmul.f32	s11, s11, s0
d0041ab4:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d0041ab8:	f300 8114 	bgt.w	d0041ce4 <fillTriangleDitherBayer2Mode+0x2ec>
d0041abc:	eeb4 5ae6 	vcmpe.f32	s10, s13
d0041ac0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041ac4:	f300 8201 	bgt.w	d0041eca <fillTriangleDitherBayer2Mode+0x4d2>
d0041ac8:	eef4 3ae6 	vcmpe.f32	s7, s13
d0041acc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041ad0:	f300 8219 	bgt.w	d0041f06 <fillTriangleDitherBayer2Mode+0x50e>
d0041ad4:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0041ad8:	ee35 1a27 	vadd.f32	s2, s10, s15
d0041adc:	ee76 7aa7 	vadd.f32	s15, s13, s15
d0041ae0:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d0041ae4:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041ae8:	ee11 3a10 	vmov	r3, s2
d0041aec:	ee17 2a90 	vmov	r2, s15
d0041af0:	4293      	cmp	r3, r2
d0041af2:	f000 80f2 	beq.w	d0041cda <fillTriangleDitherBayer2Mode+0x2e2>
d0041af6:	ee76 8ac5 	vsub.f32	s17, s13, s10
d0041afa:	ed9f 1a8a 	vldr	s2, [pc, #552]	; d0041d24 <fillTriangleDitherBayer2Mode+0x32c>
d0041afe:	eef4 8ac1 	vcmpe.f32	s17, s2
d0041b02:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041b06:	f240 80e8 	bls.w	d0041cda <fillTriangleDitherBayer2Mode+0x2e2>
d0041b0a:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0041b0e:	ee33 9ac5 	vsub.f32	s18, s7, s10
d0041b12:	ee72 0ac6 	vsub.f32	s1, s5, s12
d0041b16:	eec9 7aa8 	vdiv.f32	s15, s19, s17
d0041b1a:	eeb4 9ac1 	vcmpe.f32	s18, s2
d0041b1e:	ee32 8a43 	vsub.f32	s16, s4, s6
d0041b22:	ee74 8a47 	vsub.f32	s17, s8, s14
d0041b26:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041b2a:	ee60 0aa7 	vmul.f32	s1, s1, s15
d0041b2e:	ee28 8a27 	vmul.f32	s16, s16, s15
d0041b32:	ee68 8aa7 	vmul.f32	s17, s17, s15
d0041b36:	f300 80ff 	bgt.w	d0041d38 <fillTriangleDitherBayer2Mode+0x340>
d0041b3a:	eef1 7a04 	vmov.f32	s15, #20	; 0x40a00000  5.0
d0041b3e:	ed9f ba7c 	vldr	s22, [pc, #496]	; d0041d30 <fillTriangleDitherBayer2Mode+0x338>
d0041b42:	eddf 9a79 	vldr	s19, [pc, #484]	; d0041d28 <fillTriangleDitherBayer2Mode+0x330>
d0041b46:	ee76 fae3 	vsub.f32	s31, s13, s7
d0041b4a:	fec1 1a8b 	vmaxnm.f32	s3, s3, s22
d0041b4e:	fec1 7ae7 	vminnm.f32	s15, s3, s15
d0041b52:	ee67 7aa9 	vmul.f32	s15, s15, s19
d0041b56:	eef4 fac1 	vcmpe.f32	s31, s2
d0041b5a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041b5e:	ee17 3a90 	vmov	r3, s15
d0041b62:	edcd 7a00 	vstr	s15, [sp]
d0041b66:	2b10      	cmp	r3, #16
d0041b68:	bfa8      	it	ge
d0041b6a:	2310      	movge	r3, #16
d0041b6c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041b70:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0041b74:	9302      	str	r3, [sp, #8]
d0041b76:	f340 80b0 	ble.w	d0041cda <fillTriangleDitherBayer2Mode+0x2e2>
d0041b7a:	eef0 ea4b 	vmov.f32	s29, s22
d0041b7e:	eef0 ba4b 	vmov.f32	s23, s22
d0041b82:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d0041b86:	eddf 1a67 	vldr	s3, [pc, #412]	; d0041d24 <fillTriangleDitherBayer2Mode+0x32c>
d0041b8a:	ee72 2ae4 	vsub.f32	s5, s5, s9
d0041b8e:	ee32 2a40 	vsub.f32	s4, s4, s0
d0041b92:	eec1 7a2f 	vdiv.f32	s15, s2, s31
d0041b96:	eeb4 9ae1 	vcmpe.f32	s18, s3
d0041b9a:	ee34 4a65 	vsub.f32	s8, s8, s11
d0041b9e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041ba2:	ee62 2aa7 	vmul.f32	s5, s5, s15
d0041ba6:	ee24 fa27 	vmul.f32	s30, s8, s15
d0041baa:	edcd 2a06 	vstr	s5, [sp, #24]
d0041bae:	ee62 2a27 	vmul.f32	s5, s4, s15
d0041bb2:	edcd 2a05 	vstr	s5, [sp, #20]
d0041bb6:	f300 80f7 	bgt.w	d0041da8 <fillTriangleDitherBayer2Mode+0x3b0>
d0041bba:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0041bbe:	edcd 7a03 	vstr	s15, [sp, #12]
d0041bc2:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0041bc6:	f240 123f 	movw	r2, #319	; 0x13f
d0041bca:	9903      	ldr	r1, [sp, #12]
d0041bcc:	ee17 3a90 	vmov	r3, s15
d0041bd0:	ea21 78e1 	bic.w	r8, r1, r1, asr #31
d0041bd4:	3b01      	subs	r3, #1
d0041bd6:	4293      	cmp	r3, r2
d0041bd8:	bfa8      	it	ge
d0041bda:	4613      	movge	r3, r2
d0041bdc:	4543      	cmp	r3, r8
d0041bde:	db7c      	blt.n	d0041cda <fillTriangleDitherBayer2Mode+0x2e2>
d0041be0:	ee07 8a90 	vmov	s15, r8
d0041be4:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0041be8:	3301      	adds	r3, #1
d0041bea:	ed9d ba06 	vldr	s22, [sp, #24]
d0041bee:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041bf2:	eddd aa05 	vldr	s21, [sp, #20]
d0041bf6:	ed9f 9a4b 	vldr	s18, [pc, #300]	; d0041d24 <fillTriangleDitherBayer2Mode+0x32c>
d0041bfa:	ed9f 1a4c 	vldr	s2, [pc, #304]	; d0041d2c <fillTriangleDitherBayer2Mode+0x334>
d0041bfe:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0041c02:	ed9f 4a4b 	vldr	s8, [pc, #300]	; d0041d30 <fillTriangleDitherBayer2Mode+0x338>
d0041c06:	eddf 1a4b 	vldr	s3, [pc, #300]	; d0041d34 <fillTriangleDitherBayer2Mode+0x33c>
d0041c0a:	9301      	str	r3, [sp, #4]
d0041c0c:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0041c10:	ee77 3ae3 	vsub.f32	s7, s15, s7
d0041c14:	eea0 6a85 	vfma.f32	s12, s1, s10
d0041c18:	eea8 3a05 	vfma.f32	s6, s16, s10
d0041c1c:	eea8 7a85 	vfma.f32	s14, s17, s10
d0041c20:	eeeb 4a23 	vfma.f32	s9, s22, s7
d0041c24:	eeaa 0aa3 	vfma.f32	s0, s21, s7
d0041c28:	eeef 5a23 	vfma.f32	s11, s30, s7
d0041c2c:	e033      	b.n	d0041c96 <fillTriangleDitherBayer2Mode+0x29e>
d0041c2e:	eeb0 2a47 	vmov.f32	s4, s14
d0041c32:	eef0 9a43 	vmov.f32	s19, s6
d0041c36:	eef0 6a46 	vmov.f32	s13, s12
d0041c3a:	eef0 3a65 	vmov.f32	s7, s11
d0041c3e:	eeb0 5a40 	vmov.f32	s10, s0
d0041c42:	eef0 2a64 	vmov.f32	s5, s9
d0041c46:	fefa 7a66 	vrintp.f32	s15, s13
d0041c4a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041c4e:	f240 13df 	movw	r3, #479	; 0x1df
d0041c52:	ee17 4a90 	vmov	r4, s15
d0041c56:	fefa 7a62 	vrintp.f32	s15, s5
d0041c5a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041c5e:	3c01      	subs	r4, #1
d0041c60:	ee17 1a90 	vmov	r1, s15
d0041c64:	429c      	cmp	r4, r3
d0041c66:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d0041c6a:	bfa8      	it	ge
d0041c6c:	461c      	movge	r4, r3
d0041c6e:	42a1      	cmp	r1, r4
d0041c70:	f340 817b 	ble.w	d0041f6a <fillTriangleDitherBayer2Mode+0x572>
d0041c74:	f108 0801 	add.w	r8, r8, #1
d0041c78:	9b01      	ldr	r3, [sp, #4]
d0041c7a:	ee36 6a20 	vadd.f32	s12, s12, s1
d0041c7e:	4598      	cmp	r8, r3
d0041c80:	ee33 3a08 	vadd.f32	s6, s6, s16
d0041c84:	ee37 7a28 	vadd.f32	s14, s14, s17
d0041c88:	ee74 4a8b 	vadd.f32	s9, s9, s22
d0041c8c:	ee30 0a2a 	vadd.f32	s0, s0, s21
d0041c90:	ee75 5a8f 	vadd.f32	s11, s11, s30
d0041c94:	d021      	beq.n	d0041cda <fillTriangleDitherBayer2Mode+0x2e2>
d0041c96:	eeb4 6ae4 	vcmpe.f32	s12, s9
d0041c9a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041c9e:	dcc6      	bgt.n	d0041c2e <fillTriangleDitherBayer2Mode+0x236>
d0041ca0:	eeb0 2a65 	vmov.f32	s4, s11
d0041ca4:	eef0 9a40 	vmov.f32	s19, s0
d0041ca8:	eef0 6a64 	vmov.f32	s13, s9
d0041cac:	eef0 3a47 	vmov.f32	s7, s14
d0041cb0:	eeb0 5a43 	vmov.f32	s10, s6
d0041cb4:	eef0 2a46 	vmov.f32	s5, s12
d0041cb8:	e7c5      	b.n	d0041c46 <fillTriangleDitherBayer2Mode+0x24e>
d0041cba:	eddd 6a08 	vldr	s13, [sp, #32]
d0041cbe:	ed9d 6a09 	vldr	s12, [sp, #36]	; 0x24
d0041cc2:	ed9d fa0a 	vldr	s30, [sp, #40]	; 0x28
d0041cc6:	ed9d 0a0b 	vldr	s0, [sp, #44]	; 0x2c
d0041cca:	eddf 7a16 	vldr	s15, [pc, #88]	; d0041d24 <fillTriangleDitherBayer2Mode+0x32c>
d0041cce:	eef4 fae7 	vcmpe.f32	s31, s15
d0041cd2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041cd6:	f73f af74 	bgt.w	d0041bc2 <fillTriangleDitherBayer2Mode+0x1ca>
d0041cda:	b00d      	add	sp, #52	; 0x34
d0041cdc:	ecbd 8b10 	vpop	{d8-d15}
d0041ce0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0041ce4:	eef4 3ae6 	vcmpe.f32	s7, s13
d0041ce8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041cec:	f340 8124 	ble.w	d0041f38 <fillTriangleDitherBayer2Mode+0x540>
d0041cf0:	eeb0 8a44 	vmov.f32	s16, s8
d0041cf4:	eef0 0a42 	vmov.f32	s1, s4
d0041cf8:	eeb0 1a66 	vmov.f32	s2, s13
d0041cfc:	eef0 7a62 	vmov.f32	s15, s5
d0041d00:	eeb0 4a47 	vmov.f32	s8, s14
d0041d04:	eeb0 2a43 	vmov.f32	s4, s6
d0041d08:	eef0 6a45 	vmov.f32	s13, s10
d0041d0c:	eef0 2a46 	vmov.f32	s5, s12
d0041d10:	eeb0 7a48 	vmov.f32	s14, s16
d0041d14:	eeb0 3a60 	vmov.f32	s6, s1
d0041d18:	eeb0 5a41 	vmov.f32	s10, s2
d0041d1c:	eeb0 6a67 	vmov.f32	s12, s15
d0041d20:	e6d8      	b.n	d0041ad4 <fillTriangleDitherBayer2Mode+0xdc>
d0041d22:	bf00      	nop
d0041d24:	38d1b717 	.word	0x38d1b717
d0041d28:	404ccccd 	.word	0x404ccccd
d0041d2c:	33d6bf95 	.word	0x33d6bf95
d0041d30:	00000000 	.word	0x00000000
d0041d34:	477fff00 	.word	0x477fff00
d0041d38:	ee89 aa89 	vdiv.f32	s20, s19, s18
d0041d3c:	ed1f ba06 	vldr	s22, [pc, #-24]	; d0041d28 <fillTriangleDitherBayer2Mode+0x330>
d0041d40:	ed5f 9a05 	vldr	s19, [pc, #-20]	; d0041d30 <fillTriangleDitherBayer2Mode+0x338>
d0041d44:	fec1 1aa9 	vmaxnm.f32	s3, s3, s19
d0041d48:	eef1 7a04 	vmov.f32	s15, #20	; 0x40a00000  5.0
d0041d4c:	ee74 aac6 	vsub.f32	s21, s9, s12
d0041d50:	ee76 fae3 	vsub.f32	s31, s13, s7
d0041d54:	fec1 7ae7 	vminnm.f32	s15, s3, s15
d0041d58:	ee67 7a8b 	vmul.f32	s15, s15, s22
d0041d5c:	ee70 1a43 	vsub.f32	s3, s0, s6
d0041d60:	eef4 fac1 	vcmpe.f32	s31, s2
d0041d64:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041d68:	ee35 bac7 	vsub.f32	s22, s11, s14
d0041d6c:	ee17 3a90 	vmov	r3, s15
d0041d70:	edcd 7a00 	vstr	s15, [sp]
d0041d74:	2b10      	cmp	r3, #16
d0041d76:	ee6a 7a8a 	vmul.f32	s15, s21, s20
d0041d7a:	ee2b ba0a 	vmul.f32	s22, s22, s20
d0041d7e:	bfa8      	it	ge
d0041d80:	2310      	movge	r3, #16
d0041d82:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041d86:	eef0 ba67 	vmov.f32	s23, s15
d0041d8a:	ee61 7a8a 	vmul.f32	s15, s3, s20
d0041d8e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0041d92:	9302      	str	r3, [sp, #8]
d0041d94:	eef0 ea67 	vmov.f32	s29, s15
d0041d98:	f73f aef3 	bgt.w	d0041b82 <fillTriangleDitherBayer2Mode+0x18a>
d0041d9c:	eeb0 fa69 	vmov.f32	s30, s19
d0041da0:	edcd 9a05 	vstr	s19, [sp, #20]
d0041da4:	edcd 9a06 	vstr	s19, [sp, #24]
d0041da8:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0041dac:	f240 123f 	movw	r2, #319	; 0x13f
d0041db0:	ee17 3a90 	vmov	r3, s15
d0041db4:	edcd 7a03 	vstr	s15, [sp, #12]
d0041db8:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d0041dbc:	3b01      	subs	r3, #1
d0041dbe:	ee17 8a90 	vmov	r8, s15
d0041dc2:	4293      	cmp	r3, r2
d0041dc4:	ea28 78e8 	bic.w	r8, r8, r8, asr #31
d0041dc8:	bfa8      	it	ge
d0041dca:	4613      	movge	r3, r2
d0041dcc:	4543      	cmp	r3, r8
d0041dce:	f6ff af7c 	blt.w	d0041cca <fillTriangleDitherBayer2Mode+0x2d2>
d0041dd2:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0041dd6:	3301      	adds	r3, #1
d0041dd8:	eeb0 aa46 	vmov.f32	s20, s12
d0041ddc:	ed5f da2d 	vldr	s27, [pc, #-180]	; d0041d2c <fillTriangleDitherBayer2Mode+0x334>
d0041de0:	eef0 aa46 	vmov.f32	s21, s12
d0041de4:	ed5f 2a2e 	vldr	s5, [pc, #-184]	; d0041d30 <fillTriangleDitherBayer2Mode+0x338>
d0041de8:	ee37 4ac5 	vsub.f32	s8, s15, s10
d0041dec:	ee07 8a90 	vmov	s15, r8
d0041df0:	eeb0 da43 	vmov.f32	s26, s6
d0041df4:	ed1f 1a31 	vldr	s2, [pc, #-196]	; d0041d34 <fillTriangleDitherBayer2Mode+0x33c>
d0041df8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041dfc:	9301      	str	r3, [sp, #4]
d0041dfe:	eef0 ca47 	vmov.f32	s25, s14
d0041e02:	edcd 6a08 	vstr	s13, [sp, #32]
d0041e06:	eeb0 ea6b 	vmov.f32	s28, s23
d0041e0a:	ed8d 6a09 	vstr	s12, [sp, #36]	; 0x24
d0041e0e:	ee77 7a84 	vadd.f32	s15, s15, s8
d0041e12:	ed8d fa0a 	vstr	s30, [sp, #40]	; 0x28
d0041e16:	eeb0 ca43 	vmov.f32	s24, s6
d0041e1a:	ed8d 0a0b 	vstr	s0, [sp, #44]	; 0x2c
d0041e1e:	eea7 aaab 	vfma.f32	s20, s15, s23
d0041e22:	eef0 ba47 	vmov.f32	s23, s14
d0041e26:	eee0 aaa7 	vfma.f32	s21, s1, s15
d0041e2a:	eea8 da27 	vfma.f32	s26, s16, s15
d0041e2e:	eee8 caa7 	vfma.f32	s25, s17, s15
d0041e32:	eea7 caae 	vfma.f32	s24, s15, s29
d0041e36:	eee7 ba8b 	vfma.f32	s23, s15, s22
d0041e3a:	e034      	b.n	d0041ea6 <fillTriangleDitherBayer2Mode+0x4ae>
d0041e3c:	eef0 1a6c 	vmov.f32	s3, s25
d0041e40:	eeb0 2a4d 	vmov.f32	s4, s26
d0041e44:	eef0 7a6a 	vmov.f32	s15, s21
d0041e48:	eeb0 6a6b 	vmov.f32	s12, s23
d0041e4c:	eef0 6a4c 	vmov.f32	s13, s24
d0041e50:	eeb0 4a4a 	vmov.f32	s8, s20
d0041e54:	feba 0a67 	vrintp.f32	s0, s15
d0041e58:	eebd 0ac0 	vcvt.s32.f32	s0, s0
d0041e5c:	feba 9a44 	vrintp.f32	s18, s8
d0041e60:	f240 13df 	movw	r3, #479	; 0x1df
d0041e64:	ee10 4a10 	vmov	r4, s0
d0041e68:	eebd 0ac9 	vcvt.s32.f32	s0, s18
d0041e6c:	3c01      	subs	r4, #1
d0041e6e:	ee10 1a10 	vmov	r1, s0
d0041e72:	429c      	cmp	r4, r3
d0041e74:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d0041e78:	bfa8      	it	ge
d0041e7a:	461c      	movge	r4, r3
d0041e7c:	428c      	cmp	r4, r1
d0041e7e:	f280 8159 	bge.w	d0042134 <fillTriangleDitherBayer2Mode+0x73c>
d0041e82:	f108 0801 	add.w	r8, r8, #1
d0041e86:	9b01      	ldr	r3, [sp, #4]
d0041e88:	ee7a aaa0 	vadd.f32	s21, s21, s1
d0041e8c:	4598      	cmp	r8, r3
d0041e8e:	ee3d da08 	vadd.f32	s26, s26, s16
d0041e92:	ee7c caa8 	vadd.f32	s25, s25, s17
d0041e96:	ee3a aa0e 	vadd.f32	s20, s20, s28
d0041e9a:	ee3c ca2e 	vadd.f32	s24, s24, s29
d0041e9e:	ee7b ba8b 	vadd.f32	s23, s23, s22
d0041ea2:	f43f af0a 	beq.w	d0041cba <fillTriangleDitherBayer2Mode+0x2c2>
d0041ea6:	eef4 aaca 	vcmpe.f32	s21, s20
d0041eaa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041eae:	dcc5      	bgt.n	d0041e3c <fillTriangleDitherBayer2Mode+0x444>
d0041eb0:	eef0 1a6b 	vmov.f32	s3, s23
d0041eb4:	eeb0 2a4c 	vmov.f32	s4, s24
d0041eb8:	eef0 7a4a 	vmov.f32	s15, s20
d0041ebc:	eeb0 6a6c 	vmov.f32	s12, s25
d0041ec0:	eef0 6a4d 	vmov.f32	s13, s26
d0041ec4:	eeb0 4a6a 	vmov.f32	s8, s21
d0041ec8:	e7c4      	b.n	d0041e54 <fillTriangleDitherBayer2Mode+0x45c>
d0041eca:	eeb0 1a45 	vmov.f32	s2, s10
d0041ece:	eeb0 5a66 	vmov.f32	s10, s13
d0041ed2:	eeb0 8a47 	vmov.f32	s16, s14
d0041ed6:	eef0 6a41 	vmov.f32	s13, s2
d0041eda:	eef0 0a43 	vmov.f32	s1, s6
d0041ede:	eef0 7a46 	vmov.f32	s15, s12
d0041ee2:	eef4 3ae6 	vcmpe.f32	s7, s13
d0041ee6:	eeb0 7a44 	vmov.f32	s14, s8
d0041eea:	eeb0 3a42 	vmov.f32	s6, s4
d0041eee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041ef2:	eeb0 6a62 	vmov.f32	s12, s5
d0041ef6:	eeb0 4a48 	vmov.f32	s8, s16
d0041efa:	eeb0 2a60 	vmov.f32	s4, s1
d0041efe:	eef0 2a67 	vmov.f32	s5, s15
d0041f02:	f77f ade7 	ble.w	d0041ad4 <fillTriangleDitherBayer2Mode+0xdc>
d0041f06:	eeb0 8a65 	vmov.f32	s16, s11
d0041f0a:	eef0 0a40 	vmov.f32	s1, s0
d0041f0e:	eeb0 1a63 	vmov.f32	s2, s7
d0041f12:	eef0 7a64 	vmov.f32	s15, s9
d0041f16:	eef0 5a44 	vmov.f32	s11, s8
d0041f1a:	eeb0 0a42 	vmov.f32	s0, s4
d0041f1e:	eef0 3a66 	vmov.f32	s7, s13
d0041f22:	eef0 4a62 	vmov.f32	s9, s5
d0041f26:	eeb0 4a48 	vmov.f32	s8, s16
d0041f2a:	eeb0 2a60 	vmov.f32	s4, s1
d0041f2e:	eef0 6a41 	vmov.f32	s13, s2
d0041f32:	eef0 2a67 	vmov.f32	s5, s15
d0041f36:	e5cd      	b.n	d0041ad4 <fillTriangleDitherBayer2Mode+0xdc>
d0041f38:	eeb0 8a47 	vmov.f32	s16, s14
d0041f3c:	eef0 0a43 	vmov.f32	s1, s6
d0041f40:	eeb0 1a45 	vmov.f32	s2, s10
d0041f44:	eef0 7a46 	vmov.f32	s15, s12
d0041f48:	eeb0 7a65 	vmov.f32	s14, s11
d0041f4c:	eeb0 3a40 	vmov.f32	s6, s0
d0041f50:	eeb0 5a63 	vmov.f32	s10, s7
d0041f54:	eeb0 6a64 	vmov.f32	s12, s9
d0041f58:	eef0 5a48 	vmov.f32	s11, s16
d0041f5c:	eeb0 0a60 	vmov.f32	s0, s1
d0041f60:	eef0 3a41 	vmov.f32	s7, s2
d0041f64:	eef0 4a67 	vmov.f32	s9, s15
d0041f68:	e5ae      	b.n	d0041ac8 <fillTriangleDitherBayer2Mode+0xd0>
d0041f6a:	ee76 6ae2 	vsub.f32	s13, s13, s5
d0041f6e:	eef4 6ac9 	vcmpe.f32	s13, s18
d0041f72:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041f76:	f340 8207 	ble.w	d0042388 <fillTriangleDitherBayer2Mode+0x990>
d0041f7a:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0041f7e:	ee79 9ac5 	vsub.f32	s19, s19, s10
d0041f82:	ee32 2a63 	vsub.f32	s4, s4, s7
d0041f86:	ee87 aaa6 	vdiv.f32	s20, s15, s13
d0041f8a:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0041f8e:	ee77 2ae2 	vsub.f32	s5, s15, s5
d0041f92:	ee07 1a90 	vmov	s15, r1
d0041f96:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041f9a:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0041f9e:	ee69 9a8a 	vmul.f32	s19, s19, s20
d0041fa2:	ee22 aa0a 	vmul.f32	s20, s4, s20
d0041fa6:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0041faa:	eee7 3a8a 	vfma.f32	s7, s15, s20
d0041fae:	ebc8 1208 	rsb	r2, r8, r8, lsl #4
d0041fb2:	4dd3      	ldr	r5, [pc, #844]	; (d0042300 <fillTriangleDitherBayer2Mode+0x908>)
d0041fb4:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0041fb8:	48d2      	ldr	r0, [pc, #840]	; (d0042304 <fillTriangleDitherBayer2Mode+0x90c>)
d0041fba:	eb01 1242 	add.w	r2, r1, r2, lsl #5
d0041fbe:	682f      	ldr	r7, [r5, #0]
d0041fc0:	eb08 1383 	add.w	r3, r8, r3, lsl #6
d0041fc4:	f008 0503 	and.w	r5, r8, #3
d0041fc8:	eb00 0942 	add.w	r9, r0, r2, lsl #1
d0041fcc:	4ace      	ldr	r2, [pc, #824]	; (d0042308 <fillTriangleDitherBayer2Mode+0x910>)
d0041fce:	441f      	add	r7, r3
d0041fd0:	f8cd 800c 	str.w	r8, [sp, #12]
d0041fd4:	eb02 0385 	add.w	r3, r2, r5, lsl #2
d0041fd8:	eeb6 2a00 	vmov.f32	s4, #96	; 0x3f000000  0.5
d0041fdc:	4698      	mov	r8, r3
d0041fde:	e010      	b.n	d0042002 <fillTriangleDitherBayer2Mode+0x60a>
d0041fe0:	ee07 3a90 	vmov	s15, r3
d0041fe4:	4419      	add	r1, r3
d0041fe6:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0041fea:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041fee:	428c      	cmp	r4, r1
d0041ff0:	eb09 0943 	add.w	r9, r9, r3, lsl #1
d0041ff4:	eb07 1782 	add.w	r7, r7, r2, lsl #6
d0041ff8:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0041ffc:	eee7 3a8a 	vfma.f32	s7, s15, s20
d0042000:	db62      	blt.n	d00420c8 <fillTriangleDitherBayer2Mode+0x6d0>
d0042002:	eba4 0c01 	sub.w	ip, r4, r1
d0042006:	eeb4 5ac1 	vcmpe.f32	s10, s2
d004200a:	f10c 0301 	add.w	r3, ip, #1
d004200e:	2b30      	cmp	r3, #48	; 0x30
d0042010:	bfa8      	it	ge
d0042012:	2330      	movge	r3, #48	; 0x30
d0042014:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042018:	d9e2      	bls.n	d0041fe0 <fillTriangleDitherBayer2Mode+0x5e8>
d004201a:	f1bc 0f00 	cmp.w	ip, #0
d004201e:	eec3 7a85 	vdiv.f32	s15, s7, s10
d0042022:	dd54      	ble.n	d00420ce <fillTriangleDitherBayer2Mode+0x6d6>
d0042024:	1e5a      	subs	r2, r3, #1
d0042026:	ee06 2a90 	vmov	s13, r2
d004202a:	eef0 2a45 	vmov.f32	s5, s10
d004202e:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0042032:	eee6 2aa9 	vfma.f32	s5, s13, s19
d0042036:	eef4 2ac1 	vcmpe.f32	s5, s2
d004203a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004203e:	dd47      	ble.n	d00420d0 <fillTriangleDitherBayer2Mode+0x6d8>
d0042040:	eeb0 ca63 	vmov.f32	s24, s7
d0042044:	9a00      	ldr	r2, [sp, #0]
d0042046:	2a0f      	cmp	r2, #15
d0042048:	eea6 ca8a 	vfma.f32	s24, s13, s20
d004204c:	eecc ba22 	vdiv.f32	s23, s24, s5
d0042050:	ee7b bae7 	vsub.f32	s23, s23, s15
d0042054:	eecb 2aa6 	vdiv.f32	s5, s23, s13
d0042058:	dd3f      	ble.n	d00420da <fillTriangleDitherBayer2Mode+0x6e2>
d004205a:	f1a9 0602 	sub.w	r6, r9, #2
d004205e:	2200      	movs	r2, #0
d0042060:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d0042064:	fec6 6ae1 	vminnm.f32	s13, s13, s3
d0042068:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d004206c:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d0042070:	3201      	adds	r2, #1
d0042072:	ee76 6a82 	vadd.f32	s13, s13, s4
d0042076:	0185      	lsls	r5, r0, #6
d0042078:	ee77 7aa2 	vadd.f32	s15, s15, s5
d004207c:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d0042080:	ee16 0a90 	vmov	r0, s13
d0042084:	b280      	uxth	r0, r0
d0042086:	4586      	cmp	lr, r0
d0042088:	d903      	bls.n	d0042092 <fillTriangleDitherBayer2Mode+0x69a>
d004208a:	8030      	strh	r0, [r6, #0]
d004208c:	f04f 0010 	mov.w	r0, #16
d0042090:	5578      	strb	r0, [r7, r5]
d0042092:	4293      	cmp	r3, r2
d0042094:	dce4      	bgt.n	d0042060 <fillTriangleDitherBayer2Mode+0x668>
d0042096:	f1bc 0f00 	cmp.w	ip, #0
d004209a:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d004209e:	ea4f 0043 	mov.w	r0, r3, lsl #1
d00420a2:	ea4f 1282 	mov.w	r2, r2, lsl #6
d00420a6:	bfbc      	itt	lt
d00420a8:	2002      	movlt	r0, #2
d00420aa:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d00420ae:	4481      	add	r9, r0
d00420b0:	4417      	add	r7, r2
d00420b2:	ee07 3a90 	vmov	s15, r3
d00420b6:	4419      	add	r1, r3
d00420b8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00420bc:	428c      	cmp	r4, r1
d00420be:	eea7 5aa9 	vfma.f32	s10, s15, s19
d00420c2:	eee7 3a8a 	vfma.f32	s7, s15, s20
d00420c6:	da9c      	bge.n	d0042002 <fillTriangleDitherBayer2Mode+0x60a>
d00420c8:	f8dd 800c 	ldr.w	r8, [sp, #12]
d00420cc:	e5d2      	b.n	d0041c74 <fillTriangleDitherBayer2Mode+0x27c>
d00420ce:	d1f0      	bne.n	d00420b2 <fillTriangleDitherBayer2Mode+0x6ba>
d00420d0:	9a00      	ldr	r2, [sp, #0]
d00420d2:	eef0 2a44 	vmov.f32	s5, s8
d00420d6:	2a0f      	cmp	r2, #15
d00420d8:	dcbf      	bgt.n	d004205a <fillTriangleDitherBayer2Mode+0x662>
d00420da:	2a00      	cmp	r2, #0
d00420dc:	f340 8136 	ble.w	d004234c <fillTriangleDitherBayer2Mode+0x954>
d00420e0:	9404      	str	r4, [sp, #16]
d00420e2:	f1a9 0e02 	sub.w	lr, r9, #2
d00420e6:	2200      	movs	r2, #0
d00420e8:	9c02      	ldr	r4, [sp, #8]
d00420ea:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d00420ee:	fec6 6ae1 	vminnm.f32	s13, s13, s3
d00420f2:	ee76 6a82 	vadd.f32	s13, s13, s4
d00420f6:	f83e af02 	ldrh.w	sl, [lr, #2]!
d00420fa:	188e      	adds	r6, r1, r2
d00420fc:	eb02 0582 	add.w	r5, r2, r2, lsl #2
d0042100:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0042104:	3201      	adds	r2, #1
d0042106:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d004210a:	f006 0603 	and.w	r6, r6, #3
d004210e:	01ad      	lsls	r5, r5, #6
d0042110:	ee16 0a90 	vmov	r0, s13
d0042114:	b280      	uxth	r0, r0
d0042116:	4582      	cmp	sl, r0
d0042118:	d908      	bls.n	d004212c <fillTriangleDitherBayer2Mode+0x734>
d004211a:	f818 6006 	ldrb.w	r6, [r8, r6]
d004211e:	f8ae 0000 	strh.w	r0, [lr]
d0042122:	42a6      	cmp	r6, r4
d0042124:	bfac      	ite	ge
d0042126:	4658      	movge	r0, fp
d0042128:	2010      	movlt	r0, #16
d004212a:	5578      	strb	r0, [r7, r5]
d004212c:	4293      	cmp	r3, r2
d004212e:	dcdc      	bgt.n	d00420ea <fillTriangleDitherBayer2Mode+0x6f2>
d0042130:	9c04      	ldr	r4, [sp, #16]
d0042132:	e7b0      	b.n	d0042096 <fillTriangleDitherBayer2Mode+0x69e>
d0042134:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0042138:	ed9f 0a74 	vldr	s0, [pc, #464]	; d004230c <fillTriangleDitherBayer2Mode+0x914>
d004213c:	eef4 7ac0 	vcmpe.f32	s15, s0
d0042140:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042144:	f340 8125 	ble.w	d0042392 <fillTriangleDitherBayer2Mode+0x99a>
d0042148:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d004214c:	ee32 2a66 	vsub.f32	s4, s4, s13
d0042150:	ee71 1ac6 	vsub.f32	s3, s3, s12
d0042154:	ee89 0a27 	vdiv.f32	s0, s18, s15
d0042158:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004215c:	ee37 4ac4 	vsub.f32	s8, s15, s8
d0042160:	ee07 1a90 	vmov	s15, r1
d0042164:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0042168:	ee77 7a84 	vadd.f32	s15, s15, s8
d004216c:	ee22 2a00 	vmul.f32	s4, s4, s0
d0042170:	ee61 1a80 	vmul.f32	s3, s3, s0
d0042174:	eee7 6a82 	vfma.f32	s13, s15, s4
d0042178:	eea7 6aa1 	vfma.f32	s12, s15, s3
d004217c:	ebc8 1208 	rsb	r2, r8, r8, lsl #4
d0042180:	4d5f      	ldr	r5, [pc, #380]	; (d0042300 <fillTriangleDitherBayer2Mode+0x908>)
d0042182:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0042186:	485f      	ldr	r0, [pc, #380]	; (d0042304 <fillTriangleDitherBayer2Mode+0x90c>)
d0042188:	eb01 1242 	add.w	r2, r1, r2, lsl #5
d004218c:	682f      	ldr	r7, [r5, #0]
d004218e:	eb08 1383 	add.w	r3, r8, r3, lsl #6
d0042192:	f008 0503 	and.w	r5, r8, #3
d0042196:	eb00 0942 	add.w	r9, r0, r2, lsl #1
d004219a:	4a5b      	ldr	r2, [pc, #364]	; (d0042308 <fillTriangleDitherBayer2Mode+0x910>)
d004219c:	441f      	add	r7, r3
d004219e:	f8cd 8010 	str.w	r8, [sp, #16]
d00421a2:	eb02 0385 	add.w	r3, r2, r5, lsl #2
d00421a6:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d00421aa:	4698      	mov	r8, r3
d00421ac:	e010      	b.n	d00421d0 <fillTriangleDitherBayer2Mode+0x7d8>
d00421ae:	ee07 2a90 	vmov	s15, r2
d00421b2:	4411      	add	r1, r2
d00421b4:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d00421b8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00421bc:	428c      	cmp	r4, r1
d00421be:	eb09 0942 	add.w	r9, r9, r2, lsl #1
d00421c2:	eb07 1783 	add.w	r7, r7, r3, lsl #6
d00421c6:	eee7 6a82 	vfma.f32	s13, s15, s4
d00421ca:	eea7 6aa1 	vfma.f32	s12, s15, s3
d00421ce:	db62      	blt.n	d0042296 <fillTriangleDitherBayer2Mode+0x89e>
d00421d0:	eba4 0c01 	sub.w	ip, r4, r1
d00421d4:	eef4 6aed 	vcmpe.f32	s13, s27
d00421d8:	f10c 0201 	add.w	r2, ip, #1
d00421dc:	2a30      	cmp	r2, #48	; 0x30
d00421de:	bfa8      	it	ge
d00421e0:	2230      	movge	r2, #48	; 0x30
d00421e2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00421e6:	d9e2      	bls.n	d00421ae <fillTriangleDitherBayer2Mode+0x7b6>
d00421e8:	f1bc 0f00 	cmp.w	ip, #0
d00421ec:	eec6 7a26 	vdiv.f32	s15, s12, s13
d00421f0:	dd54      	ble.n	d004229c <fillTriangleDitherBayer2Mode+0x8a4>
d00421f2:	1e53      	subs	r3, r2, #1
d00421f4:	ee00 3a10 	vmov	s0, r3
d00421f8:	eeb0 9a66 	vmov.f32	s18, s13
d00421fc:	eeb8 0ac0 	vcvt.f32.s32	s0, s0
d0042200:	eea0 9a02 	vfma.f32	s18, s0, s4
d0042204:	eeb4 9aed 	vcmpe.f32	s18, s27
d0042208:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004220c:	dd47      	ble.n	d004229e <fillTriangleDitherBayer2Mode+0x8a6>
d004220e:	eeb0 fa46 	vmov.f32	s30, s12
d0042212:	9b00      	ldr	r3, [sp, #0]
d0042214:	2b0f      	cmp	r3, #15
d0042216:	eea0 fa21 	vfma.f32	s30, s0, s3
d004221a:	eecf 9a09 	vdiv.f32	s19, s30, s18
d004221e:	ee79 9ae7 	vsub.f32	s19, s19, s15
d0042222:	ee89 9a80 	vdiv.f32	s18, s19, s0
d0042226:	dd3f      	ble.n	d00422a8 <fillTriangleDitherBayer2Mode+0x8b0>
d0042228:	f1a9 0602 	sub.w	r6, r9, #2
d004222c:	2000      	movs	r0, #0
d004222e:	fe87 0aa2 	vmaxnm.f32	s0, s15, s5
d0042232:	fe80 0a41 	vminnm.f32	s0, s0, s2
d0042236:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d004223a:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d004223e:	3001      	adds	r0, #1
d0042240:	ee30 0a04 	vadd.f32	s0, s0, s8
d0042244:	019d      	lsls	r5, r3, #6
d0042246:	ee77 7a89 	vadd.f32	s15, s15, s18
d004224a:	eebc 0ac0 	vcvt.u32.f32	s0, s0
d004224e:	ee10 3a10 	vmov	r3, s0
d0042252:	b29b      	uxth	r3, r3
d0042254:	459e      	cmp	lr, r3
d0042256:	d903      	bls.n	d0042260 <fillTriangleDitherBayer2Mode+0x868>
d0042258:	8033      	strh	r3, [r6, #0]
d004225a:	f04f 0310 	mov.w	r3, #16
d004225e:	557b      	strb	r3, [r7, r5]
d0042260:	4282      	cmp	r2, r0
d0042262:	dce4      	bgt.n	d004222e <fillTriangleDitherBayer2Mode+0x836>
d0042264:	f1bc 0f00 	cmp.w	ip, #0
d0042268:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d004226c:	ea4f 0042 	mov.w	r0, r2, lsl #1
d0042270:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0042274:	bfbc      	itt	lt
d0042276:	2002      	movlt	r0, #2
d0042278:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d004227c:	4481      	add	r9, r0
d004227e:	441f      	add	r7, r3
d0042280:	ee07 2a90 	vmov	s15, r2
d0042284:	4411      	add	r1, r2
d0042286:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004228a:	428c      	cmp	r4, r1
d004228c:	eee7 6a82 	vfma.f32	s13, s15, s4
d0042290:	eea7 6aa1 	vfma.f32	s12, s15, s3
d0042294:	da9c      	bge.n	d00421d0 <fillTriangleDitherBayer2Mode+0x7d8>
d0042296:	f8dd 8010 	ldr.w	r8, [sp, #16]
d004229a:	e5f2      	b.n	d0041e82 <fillTriangleDitherBayer2Mode+0x48a>
d004229c:	d1f0      	bne.n	d0042280 <fillTriangleDitherBayer2Mode+0x888>
d004229e:	9b00      	ldr	r3, [sp, #0]
d00422a0:	eeb0 9a62 	vmov.f32	s18, s5
d00422a4:	2b0f      	cmp	r3, #15
d00422a6:	dcbf      	bgt.n	d0042228 <fillTriangleDitherBayer2Mode+0x830>
d00422a8:	2b00      	cmp	r3, #0
d00422aa:	dd31      	ble.n	d0042310 <fillTriangleDitherBayer2Mode+0x918>
d00422ac:	9407      	str	r4, [sp, #28]
d00422ae:	f1a9 0e02 	sub.w	lr, r9, #2
d00422b2:	2000      	movs	r0, #0
d00422b4:	9c02      	ldr	r4, [sp, #8]
d00422b6:	fe87 0aa2 	vmaxnm.f32	s0, s15, s5
d00422ba:	fe80 0a41 	vminnm.f32	s0, s0, s2
d00422be:	ee30 0a04 	vadd.f32	s0, s0, s8
d00422c2:	f83e af02 	ldrh.w	sl, [lr, #2]!
d00422c6:	180e      	adds	r6, r1, r0
d00422c8:	eb00 0580 	add.w	r5, r0, r0, lsl #2
d00422cc:	ee77 7a89 	vadd.f32	s15, s15, s18
d00422d0:	3001      	adds	r0, #1
d00422d2:	eebc 0ac0 	vcvt.u32.f32	s0, s0
d00422d6:	f006 0603 	and.w	r6, r6, #3
d00422da:	01ad      	lsls	r5, r5, #6
d00422dc:	ee10 3a10 	vmov	r3, s0
d00422e0:	b29b      	uxth	r3, r3
d00422e2:	459a      	cmp	sl, r3
d00422e4:	d908      	bls.n	d00422f8 <fillTriangleDitherBayer2Mode+0x900>
d00422e6:	f818 6006 	ldrb.w	r6, [r8, r6]
d00422ea:	f8ae 3000 	strh.w	r3, [lr]
d00422ee:	42a6      	cmp	r6, r4
d00422f0:	bfac      	ite	ge
d00422f2:	465b      	movge	r3, fp
d00422f4:	2310      	movlt	r3, #16
d00422f6:	557b      	strb	r3, [r7, r5]
d00422f8:	4282      	cmp	r2, r0
d00422fa:	dcdc      	bgt.n	d00422b6 <fillTriangleDitherBayer2Mode+0x8be>
d00422fc:	9c07      	ldr	r4, [sp, #28]
d00422fe:	e7b1      	b.n	d0042264 <fillTriangleDitherBayer2Mode+0x86c>
d0042300:	d00e1c64 	.word	0xd00e1c64
d0042304:	d00e7c80 	.word	0xd00e7c80
d0042308:	d0046c70 	.word	0xd0046c70
d004230c:	38d1b717 	.word	0x38d1b717
d0042310:	f1a9 0602 	sub.w	r6, r9, #2
d0042314:	2000      	movs	r0, #0
d0042316:	fe87 0aa2 	vmaxnm.f32	s0, s15, s5
d004231a:	fe80 0a41 	vminnm.f32	s0, s0, s2
d004231e:	ee30 0a04 	vadd.f32	s0, s0, s8
d0042322:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0042326:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d004232a:	ee77 7a89 	vadd.f32	s15, s15, s18
d004232e:	019d      	lsls	r5, r3, #6
d0042330:	3001      	adds	r0, #1
d0042332:	eebc 0ac0 	vcvt.u32.f32	s0, s0
d0042336:	ee10 3a10 	vmov	r3, s0
d004233a:	b29b      	uxth	r3, r3
d004233c:	459e      	cmp	lr, r3
d004233e:	d902      	bls.n	d0042346 <fillTriangleDitherBayer2Mode+0x94e>
d0042340:	8033      	strh	r3, [r6, #0]
d0042342:	f807 b005 	strb.w	fp, [r7, r5]
d0042346:	4282      	cmp	r2, r0
d0042348:	dce5      	bgt.n	d0042316 <fillTriangleDitherBayer2Mode+0x91e>
d004234a:	e78b      	b.n	d0042264 <fillTriangleDitherBayer2Mode+0x86c>
d004234c:	f1a9 0602 	sub.w	r6, r9, #2
d0042350:	2200      	movs	r2, #0
d0042352:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d0042356:	fec6 6ae1 	vminnm.f32	s13, s13, s3
d004235a:	ee76 6a82 	vadd.f32	s13, s13, s4
d004235e:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d0042362:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d0042366:	ee77 7aa2 	vadd.f32	s15, s15, s5
d004236a:	0185      	lsls	r5, r0, #6
d004236c:	3201      	adds	r2, #1
d004236e:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d0042372:	ee16 0a90 	vmov	r0, s13
d0042376:	b280      	uxth	r0, r0
d0042378:	4586      	cmp	lr, r0
d004237a:	d902      	bls.n	d0042382 <fillTriangleDitherBayer2Mode+0x98a>
d004237c:	8030      	strh	r0, [r6, #0]
d004237e:	f807 b005 	strb.w	fp, [r7, r5]
d0042382:	4293      	cmp	r3, r2
d0042384:	dce5      	bgt.n	d0042352 <fillTriangleDitherBayer2Mode+0x95a>
d0042386:	e686      	b.n	d0042096 <fillTriangleDitherBayer2Mode+0x69e>
d0042388:	eeb0 aa44 	vmov.f32	s20, s8
d004238c:	eef0 9a44 	vmov.f32	s19, s8
d0042390:	e60d      	b.n	d0041fae <fillTriangleDitherBayer2Mode+0x5b6>
d0042392:	eef0 1a62 	vmov.f32	s3, s5
d0042396:	eeb0 2a62 	vmov.f32	s4, s5
d004239a:	e6ef      	b.n	d004217c <fillTriangleDitherBayer2Mode+0x784>

d004239c <vec3Add>:
d004239c:	ee30 0a21 	vadd.f32	s0, s0, s3
d00423a0:	b08e      	sub	sp, #56	; 0x38
d00423a2:	ee70 0a82 	vadd.f32	s1, s1, s4
d00423a6:	ee31 1a22 	vadd.f32	s2, s2, s5
d00423aa:	b00e      	add	sp, #56	; 0x38
d00423ac:	4770      	bx	lr
d00423ae:	bf00      	nop

d00423b0 <vec3Scale>:
d00423b0:	ee20 0a21 	vmul.f32	s0, s0, s3
d00423b4:	b08c      	sub	sp, #48	; 0x30
d00423b6:	ee61 0aa0 	vmul.f32	s1, s3, s1
d00423ba:	ee21 1a81 	vmul.f32	s2, s3, s2
d00423be:	b00c      	add	sp, #48	; 0x30
d00423c0:	4770      	bx	lr
d00423c2:	bf00      	nop

d00423c4 <vec3Dot>:
d00423c4:	ee20 2a82 	vmul.f32	s4, s1, s4
d00423c8:	b086      	sub	sp, #24
d00423ca:	eea0 2a21 	vfma.f32	s4, s0, s3
d00423ce:	eea1 2a22 	vfma.f32	s4, s2, s5
d00423d2:	eeb0 0a42 	vmov.f32	s0, s4
d00423d6:	b006      	add	sp, #24
d00423d8:	4770      	bx	lr
d00423da:	bf00      	nop

d00423dc <vec3Cross>:
d00423dc:	eeb0 7a60 	vmov.f32	s14, s1
d00423e0:	b08e      	sub	sp, #56	; 0x38
d00423e2:	eef0 7a40 	vmov.f32	s15, s0
d00423e6:	ee62 0ac0 	vnmul.f32	s1, s5, s0
d00423ea:	ee61 6ac7 	vnmul.f32	s13, s3, s14
d00423ee:	ee22 0a41 	vnmul.f32	s0, s4, s2
d00423f2:	eee1 0a21 	vfma.f32	s1, s2, s3
d00423f6:	eee7 6a82 	vfma.f32	s13, s15, s4
d00423fa:	eea7 0a22 	vfma.f32	s0, s14, s5
d00423fe:	eeb0 1a66 	vmov.f32	s2, s13
d0042402:	b00e      	add	sp, #56	; 0x38
d0042404:	4770      	bx	lr
d0042406:	bf00      	nop

d0042408 <vec3Normalize>:
d0042408:	ee60 7aa0 	vmul.f32	s15, s1, s1
d004240c:	ed9f 7a22 	vldr	s14, [pc, #136]	; d0042498 <vec3Normalize+0x90>
d0042410:	b08c      	sub	sp, #48	; 0x30
d0042412:	eee0 7a00 	vfma.f32	s15, s0, s0
d0042416:	eee1 7a01 	vfma.f32	s15, s2, s2
d004241a:	eef4 7ac7 	vcmpe.f32	s15, s14
d004241e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042422:	d934      	bls.n	d004248e <vec3Normalize+0x86>
d0042424:	ed9f 7a1d 	vldr	s14, [pc, #116]	; d004249c <vec3Normalize+0x94>
d0042428:	eef4 7a47 	vcmp.f32	s15, s14
d004242c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042430:	dd06      	ble.n	d0042440 <vec3Normalize+0x38>
d0042432:	ed9f 7a1b 	vldr	s14, [pc, #108]	; d00424a0 <vec3Normalize+0x98>
d0042436:	eef4 7a47 	vcmp.f32	s15, s14
d004243a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004243e:	d418      	bmi.n	d0042472 <vec3Normalize+0x6a>
d0042440:	ee17 2a90 	vmov	r2, s15
d0042444:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d0042448:	4b16      	ldr	r3, [pc, #88]	; (d00424a4 <vec3Normalize+0x9c>)
d004244a:	eeb7 7a08 	vmov.f32	s14, #120	; 0x3fc00000  1.5
d004244e:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d0042452:	ee67 7a86 	vmul.f32	s15, s15, s12
d0042456:	ee06 3a90 	vmov	s13, r3
d004245a:	ee67 7aa6 	vmul.f32	s15, s15, s13
d004245e:	eea6 7ae7 	vfms.f32	s14, s13, s15
d0042462:	ee67 7a26 	vmul.f32	s15, s14, s13
d0042466:	ee27 0a80 	vmul.f32	s0, s15, s0
d004246a:	ee67 0aa0 	vmul.f32	s1, s15, s1
d004246e:	ee27 1a81 	vmul.f32	s2, s15, s2
d0042472:	ed8d 0a09 	vstr	s0, [sp, #36]	; 0x24
d0042476:	edcd 0a0a 	vstr	s1, [sp, #40]	; 0x28
d004247a:	ed8d 1a0b 	vstr	s2, [sp, #44]	; 0x2c
d004247e:	ed9d 0a09 	vldr	s0, [sp, #36]	; 0x24
d0042482:	eddd 0a0a 	vldr	s1, [sp, #40]	; 0x28
d0042486:	ed9d 1a0b 	vldr	s2, [sp, #44]	; 0x2c
d004248a:	b00c      	add	sp, #48	; 0x30
d004248c:	4770      	bx	lr
d004248e:	2300      	movs	r3, #0
d0042490:	9309      	str	r3, [sp, #36]	; 0x24
d0042492:	930a      	str	r3, [sp, #40]	; 0x28
d0042494:	930b      	str	r3, [sp, #44]	; 0x2c
d0042496:	e7f2      	b.n	d004247e <vec3Normalize+0x76>
d0042498:	358637bd 	.word	0x358637bd
d004249c:	3f7fbe77 	.word	0x3f7fbe77
d00424a0:	3f8020c5 	.word	0x3f8020c5
d00424a4:	5f3759df 	.word	0x5f3759df

d00424a8 <rotateAroundAxis>:
d00424a8:	ee62 7a02 	vmul.f32	s15, s4, s4
d00424ac:	ed9f 7a51 	vldr	s14, [pc, #324]	; d00425f4 <rotateAroundAxis+0x14c>
d00424b0:	b500      	push	{lr}
d00424b2:	eee1 7aa1 	vfma.f32	s15, s3, s3
d00424b6:	ed2d 8b0c 	vpush	{d8-d13}
d00424ba:	eef0 ca40 	vmov.f32	s25, s0
d00424be:	b08f      	sub	sp, #60	; 0x3c
d00424c0:	eeb0 ca60 	vmov.f32	s24, s1
d00424c4:	eef0 ba41 	vmov.f32	s23, s2
d00424c8:	eee2 7aa2 	vfma.f32	s15, s5, s5
d00424cc:	eeb0 da43 	vmov.f32	s26, s6
d00424d0:	eef4 7ac7 	vcmpe.f32	s15, s14
d00424d4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00424d8:	d97c      	bls.n	d00425d4 <rotateAroundAxis+0x12c>
d00424da:	ed9f 7a47 	vldr	s14, [pc, #284]	; d00425f8 <rotateAroundAxis+0x150>
d00424de:	eef4 7a47 	vcmp.f32	s15, s14
d00424e2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00424e6:	dd55      	ble.n	d0042594 <rotateAroundAxis+0xec>
d00424e8:	ed9f 7a44 	vldr	s14, [pc, #272]	; d00425fc <rotateAroundAxis+0x154>
d00424ec:	eef4 7a47 	vcmp.f32	s15, s14
d00424f0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00424f4:	d54e      	bpl.n	d0042594 <rotateAroundAxis+0xec>
d00424f6:	eef0 da42 	vmov.f32	s27, s4
d00424fa:	eeb0 9a61 	vmov.f32	s18, s3
d00424fe:	eeb0 8a62 	vmov.f32	s16, s5
d0042502:	ee60 8a82 	vmul.f32	s17, s1, s4
d0042506:	ee62 5ae0 	vnmul.f32	s11, s5, s1
d004250a:	ee21 6ac1 	vnmul.f32	s12, s3, s2
d004250e:	eeec 8a89 	vfma.f32	s17, s25, s18
d0042512:	ee6d 7aec 	vnmul.f32	s15, s27, s25
d0042516:	eeeb 5aad 	vfma.f32	s11, s23, s27
d004251a:	eeac 6a88 	vfma.f32	s12, s25, s16
d004251e:	eeec 7a09 	vfma.f32	s15, s24, s18
d0042522:	eeeb 8a88 	vfma.f32	s17, s23, s16
d0042526:	eeb0 ba65 	vmov.f32	s22, s11
d004252a:	eeb0 aa46 	vmov.f32	s20, s12
d004252e:	eef0 aa67 	vmov.f32	s21, s15
d0042532:	eeb0 0a4d 	vmov.f32	s0, s26
d0042536:	f003 ff17 	bl	d0046368 <cosf>
d004253a:	eef0 9a40 	vmov.f32	s19, s0
d004253e:	eeb0 0a4d 	vmov.f32	s0, s26
d0042542:	f004 f8f5 	bl	d0046730 <sinf>
d0042546:	ee60 5a0b 	vmul.f32	s11, s0, s22
d004254a:	ee20 6a0a 	vmul.f32	s12, s0, s20
d004254e:	ee60 7a2a 	vmul.f32	s15, s0, s21
d0042552:	eee9 5aac 	vfma.f32	s11, s19, s25
d0042556:	eea9 6a8c 	vfma.f32	s12, s19, s24
d004255a:	eee9 7aab 	vfma.f32	s15, s19, s23
d004255e:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0042562:	ee29 9a28 	vmul.f32	s18, s18, s17
d0042566:	ee2d 7aa8 	vmul.f32	s14, s27, s17
d004256a:	ee76 9ae9 	vsub.f32	s19, s13, s19
d004256e:	ee28 8a28 	vmul.f32	s16, s16, s17
d0042572:	eeb0 0a65 	vmov.f32	s0, s11
d0042576:	eef0 0a46 	vmov.f32	s1, s12
d004257a:	eeb0 1a67 	vmov.f32	s2, s15
d004257e:	eea9 0a89 	vfma.f32	s0, s19, s18
d0042582:	eee9 0a87 	vfma.f32	s1, s19, s14
d0042586:	eea9 1a88 	vfma.f32	s2, s19, s16
d004258a:	b00f      	add	sp, #60	; 0x3c
d004258c:	ecbd 8b0c 	vpop	{d8-d13}
d0042590:	f85d fb04 	ldr.w	pc, [sp], #4
d0042594:	ee17 2a90 	vmov	r2, s15
d0042598:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d004259c:	4b18      	ldr	r3, [pc, #96]	; (d0042600 <rotateAroundAxis+0x158>)
d004259e:	eeb7 8a08 	vmov.f32	s16, #120	; 0x3fc00000  1.5
d00425a2:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d00425a6:	ee67 7aa6 	vmul.f32	s15, s15, s13
d00425aa:	ee07 3a10 	vmov	s14, r3
d00425ae:	ee67 7a87 	vmul.f32	s15, s15, s14
d00425b2:	eea7 8a67 	vfms.f32	s16, s14, s15
d00425b6:	ee27 8a08 	vmul.f32	s16, s14, s16
d00425ba:	ee62 da08 	vmul.f32	s27, s4, s16
d00425be:	ee21 9a88 	vmul.f32	s18, s3, s16
d00425c2:	ee22 8a88 	vmul.f32	s16, s5, s16
d00425c6:	ee6c 8a2d 	vmul.f32	s17, s24, s27
d00425ca:	ee29 6a6b 	vnmul.f32	s12, s18, s23
d00425ce:	ee68 5a4c 	vnmul.f32	s11, s16, s24
d00425d2:	e79c      	b.n	d004250e <rotateAroundAxis+0x66>
d00425d4:	eddf 8a0b 	vldr	s17, [pc, #44]	; d0042604 <rotateAroundAxis+0x15c>
d00425d8:	eef0 aa68 	vmov.f32	s21, s17
d00425dc:	eeb0 aa68 	vmov.f32	s20, s17
d00425e0:	eeb0 ba68 	vmov.f32	s22, s17
d00425e4:	eeb0 8a68 	vmov.f32	s16, s17
d00425e8:	eef0 da68 	vmov.f32	s27, s17
d00425ec:	eeb0 9a68 	vmov.f32	s18, s17
d00425f0:	e79f      	b.n	d0042532 <rotateAroundAxis+0x8a>
d00425f2:	bf00      	nop
d00425f4:	358637bd 	.word	0x358637bd
d00425f8:	3f7fbe77 	.word	0x3f7fbe77
d00425fc:	3f8020c5 	.word	0x3f8020c5
d0042600:	5f3759df 	.word	0x5f3759df
d0042604:	00000000 	.word	0x00000000

d0042608 <vec3>:
d0042608:	b088      	sub	sp, #32
d004260a:	b008      	add	sp, #32
d004260c:	4770      	bx	lr
d004260e:	bf00      	nop

d0042610 <powf>:
d0042610:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0042614:	eeb4 0a47 	vcmp.f32	s0, s14
d0042618:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004261c:	d04e      	beq.n	d00426bc <powf+0xac>
d004261e:	eef5 0a40 	vcmp.f32	s1, #0.0
d0042622:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042626:	d049      	beq.n	d00426bc <powf+0xac>
d0042628:	eef4 0a47 	vcmp.f32	s1, s14
d004262c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042630:	d054      	beq.n	d00426dc <powf+0xcc>
d0042632:	eeb5 0a40 	vcmp.f32	s0, #0.0
d0042636:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004263a:	d044      	beq.n	d00426c6 <powf+0xb6>
d004263c:	eefd 7ae0 	vcvt.s32.f32	s15, s1
d0042640:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d0042644:	eef4 6a60 	vcmp.f32	s13, s1
d0042648:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004264c:	d04e      	beq.n	d00426ec <powf+0xdc>
d004264e:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0042652:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042656:	d459      	bmi.n	d004270c <powf+0xfc>
d0042658:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004265c:	eef4 0a67 	vcmp.f32	s1, s15
d0042660:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042664:	d03f      	beq.n	d00426e6 <powf+0xd6>
d0042666:	eefe 7a00 	vmov.f32	s15, #224	; 0xbf000000 -0.5
d004266a:	eef4 0a67 	vcmp.f32	s1, s15
d004266e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042672:	d052      	beq.n	d004271a <powf+0x10a>
d0042674:	eef0 7a00 	vmov.f32	s15, #0	; 0x40000000  2.0
d0042678:	eef4 0a67 	vcmp.f32	s1, s15
d004267c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042680:	d052      	beq.n	d0042728 <powf+0x118>
d0042682:	eef0 7a08 	vmov.f32	s15, #8	; 0x40400000  3.0
d0042686:	eef4 0a67 	vcmp.f32	s1, s15
d004268a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004268e:	d04e      	beq.n	d004272e <powf+0x11e>
d0042690:	eef1 7a00 	vmov.f32	s15, #16	; 0x40800000  4.0
d0042694:	eef4 0a67 	vcmp.f32	s1, s15
d0042698:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004269c:	d042      	beq.n	d0042724 <powf+0x114>
d004269e:	b500      	push	{lr}
d00426a0:	b083      	sub	sp, #12
d00426a2:	edcd 0a01 	vstr	s1, [sp, #4]
d00426a6:	f003 ffb1 	bl	d004660c <logf>
d00426aa:	eddd 0a01 	vldr	s1, [sp, #4]
d00426ae:	ee20 0a20 	vmul.f32	s0, s0, s1
d00426b2:	b003      	add	sp, #12
d00426b4:	f85d eb04 	ldr.w	lr, [sp], #4
d00426b8:	f003 bf32 	b.w	d0046520 <expf>
d00426bc:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00426c0:	eeb0 0a67 	vmov.f32	s0, s15
d00426c4:	4770      	bx	lr
d00426c6:	eef5 0ac0 	vcmpe.f32	s1, #0.0
d00426ca:	eddf 7a1d 	vldr	s15, [pc, #116]	; d0042740 <powf+0x130>
d00426ce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00426d2:	fe70 7a27 	vselgt.f32	s15, s0, s15
d00426d6:	eeb0 0a67 	vmov.f32	s0, s15
d00426da:	4770      	bx	lr
d00426dc:	eef0 7a40 	vmov.f32	s15, s0
d00426e0:	eeb0 0a67 	vmov.f32	s0, s15
d00426e4:	4770      	bx	lr
d00426e6:	eef1 7ac0 	vsqrt.f32	s15, s0
d00426ea:	e7e9      	b.n	d00426c0 <powf+0xb0>
d00426ec:	ee17 3a90 	vmov	r3, s15
d00426f0:	2b00      	cmp	r3, #0
d00426f2:	db0e      	blt.n	d0042712 <powf+0x102>
d00426f4:	d020      	beq.n	d0042738 <powf+0x128>
d00426f6:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00426fa:	07da      	lsls	r2, r3, #31
d00426fc:	bf48      	it	mi
d00426fe:	ee67 7a80 	vmulmi.f32	s15, s15, s0
d0042702:	085b      	lsrs	r3, r3, #1
d0042704:	ee20 0a00 	vmul.f32	s0, s0, s0
d0042708:	d1f7      	bne.n	d00426fa <powf+0xea>
d004270a:	e7d9      	b.n	d00426c0 <powf+0xb0>
d004270c:	eddf 7a0d 	vldr	s15, [pc, #52]	; d0042744 <powf+0x134>
d0042710:	e7d6      	b.n	d00426c0 <powf+0xb0>
d0042712:	ee87 0a00 	vdiv.f32	s0, s14, s0
d0042716:	425b      	negs	r3, r3
d0042718:	e7ed      	b.n	d00426f6 <powf+0xe6>
d004271a:	eef1 6ac0 	vsqrt.f32	s13, s0
d004271e:	eec7 7a26 	vdiv.f32	s15, s14, s13
d0042722:	e7cd      	b.n	d00426c0 <powf+0xb0>
d0042724:	ee20 0a00 	vmul.f32	s0, s0, s0
d0042728:	ee60 7a00 	vmul.f32	s15, s0, s0
d004272c:	e7c8      	b.n	d00426c0 <powf+0xb0>
d004272e:	ee60 7a00 	vmul.f32	s15, s0, s0
d0042732:	ee67 7a80 	vmul.f32	s15, s15, s0
d0042736:	e7c3      	b.n	d00426c0 <powf+0xb0>
d0042738:	eef0 7a47 	vmov.f32	s15, s14
d004273c:	e7c0      	b.n	d00426c0 <powf+0xb0>
d004273e:	bf00      	nop
d0042740:	7f800000 	.word	0x7f800000
d0042744:	7fc00000 	.word	0x7fc00000

d0042748 <sb3dParticlesClear>:
d0042748:	4b0f      	ldr	r3, [pc, #60]	; (d0042788 <sb3dParticlesClear+0x40>)
d004274a:	f04f 507e 	mov.w	r0, #1065353216	; 0x3f800000
d004274e:	2100      	movs	r1, #0
d0042750:	2200      	movs	r2, #0
d0042752:	b430      	push	{r4, r5}
d0042754:	f503 5500 	add.w	r5, r3, #8192	; 0x2000
d0042758:	2421      	movs	r4, #33	; 0x21
d004275a:	7699      	strb	r1, [r3, #26]
d004275c:	3320      	adds	r3, #32
d004275e:	f843 2c20 	str.w	r2, [r3, #-32]
d0042762:	f843 2c1c 	str.w	r2, [r3, #-28]
d0042766:	f843 2c18 	str.w	r2, [r3, #-24]
d004276a:	f843 0c14 	str.w	r0, [r3, #-20]
d004276e:	f843 2c10 	str.w	r2, [r3, #-16]
d0042772:	f843 0c0c 	str.w	r0, [r3, #-12]
d0042776:	f803 4c08 	strb.w	r4, [r3, #-8]
d004277a:	f803 1c07 	strb.w	r1, [r3, #-7]
d004277e:	42ab      	cmp	r3, r5
d0042780:	d1eb      	bne.n	d004275a <sb3dParticlesClear+0x12>
d0042782:	bc30      	pop	{r4, r5}
d0042784:	4770      	bx	lr
d0042786:	bf00      	nop
d0042788:	d0047580 	.word	0xd0047580

d004278c <sb3dParticlesRender>:
d004278c:	2800      	cmp	r0, #0
d004278e:	f000 82d6 	beq.w	d0042d3e <sb3dParticlesRender+0x5b2>
d0042792:	edd0 7a02 	vldr	s15, [r0, #8]
d0042796:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004279a:	ed2d 8b10 	vpush	{d8-d15}
d004279e:	b0c7      	sub	sp, #284	; 0x11c
d00427a0:	4605      	mov	r5, r0
d00427a2:	ed90 ea00 	vldr	s28, [r0]
d00427a6:	edcd 7a15 	vstr	s15, [sp, #84]	; 0x54
d00427aa:	edd0 da01 	vldr	s27, [r0, #4]
d00427ae:	edd0 ca06 	vldr	s25, [r0, #24]
d00427b2:	ed90 ca07 	vldr	s24, [r0, #28]
d00427b6:	edd0 ba08 	vldr	s23, [r0, #32]
d00427ba:	ed90 9a09 	vldr	s18, [r0, #36]	; 0x24
d00427be:	edd0 8a0a 	vldr	s17, [r0, #40]	; 0x28
d00427c2:	ed90 8a0b 	vldr	s16, [r0, #44]	; 0x2c
d00427c6:	edd0 aa0c 	vldr	s21, [r0, #48]	; 0x30
d00427ca:	ed90 aa0d 	vldr	s20, [r0, #52]	; 0x34
d00427ce:	edd0 9a0e 	vldr	s19, [r0, #56]	; 0x38
d00427d2:	ed90 ba10 	vldr	s22, [r0, #64]	; 0x40
d00427d6:	f001 f92d 	bl	d0043a34 <lightsGet>
d00427da:	4cae      	ldr	r4, [pc, #696]	; (d0042a94 <sb3dParticlesRender+0x308>)
d00427dc:	4681      	mov	r9, r0
d00427de:	f001 f92d 	bl	d0043a3c <lightsGetCount>
d00427e2:	4680      	mov	r8, r0
d00427e4:	f504 5600 	add.w	r6, r4, #8192	; 0x2000
d00427e8:	eb09 1780 	add.w	r7, r9, r0, lsl #6
d00427ec:	e115      	b.n	d0042a1a <sb3dParticlesRender+0x28e>
d00427ee:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d00427f2:	edd4 ea04 	vldr	s29, [r4, #16]
d00427f6:	ed9f 5aac 	vldr	s10, [pc, #688]	; d0042aa8 <sb3dParticlesRender+0x31c>
d00427fa:	fece ea85 	vmaxnm.f32	s29, s29, s10
d00427fe:	fece eac7 	vminnm.f32	s29, s29, s14
d0042802:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d0042806:	f105 0a10 	add.w	sl, r5, #16
d004280a:	eeb0 4a46 	vmov.f32	s8, s12
d004280e:	2250      	movs	r2, #80	; 0x50
d0042810:	eef0 4a66 	vmov.f32	s9, s13
d0042814:	4651      	mov	r1, sl
d0042816:	ee67 7a87 	vmul.f32	s15, s15, s14
d004281a:	4668      	mov	r0, sp
d004281c:	eeb0 5a65 	vmov.f32	s10, s11
d0042820:	eeb0 7a65 	vmov.f32	s14, s11
d0042824:	eeac 6aa7 	vfma.f32	s12, s25, s15
d0042828:	eeac 4ae7 	vfms.f32	s8, s25, s15
d004282c:	eeec 4a67 	vfms.f32	s9, s24, s15
d0042830:	eeec 6a27 	vfma.f32	s13, s24, s15
d0042834:	eeab 5ae7 	vfms.f32	s10, s23, s15
d0042838:	eeab 7aa7 	vfma.f32	s14, s23, s15
d004283c:	eef0 3a46 	vmov.f32	s7, s12
d0042840:	eea9 6a67 	vfms.f32	s12, s18, s15
d0042844:	eeb0 da44 	vmov.f32	s26, s8
d0042848:	eef0 fa64 	vmov.f32	s31, s9
d004284c:	eef0 5a66 	vmov.f32	s11, s13
d0042850:	eeb0 fa45 	vmov.f32	s30, s10
d0042854:	eea9 da27 	vfma.f32	s26, s18, s15
d0042858:	ed8d 6a1c 	vstr	s12, [sp, #112]	; 0x70
d004285c:	eeb0 6a47 	vmov.f32	s12, s14
d0042860:	eee8 faa7 	vfma.f32	s31, s17, s15
d0042864:	eea8 fa27 	vfma.f32	s30, s16, s15
d0042868:	eea9 4a67 	vfms.f32	s8, s18, s15
d004286c:	eee9 3a27 	vfma.f32	s7, s18, s15
d0042870:	eee8 4ae7 	vfms.f32	s9, s17, s15
d0042874:	ed8d da16 	vstr	s26, [sp, #88]	; 0x58
d0042878:	eee8 5aa7 	vfma.f32	s11, s17, s15
d004287c:	eee8 6ae7 	vfms.f32	s13, s17, s15
d0042880:	edcd fa17 	vstr	s31, [sp, #92]	; 0x5c
d0042884:	eea8 5a67 	vfms.f32	s10, s16, s15
d0042888:	ed8d fa18 	vstr	s30, [sp, #96]	; 0x60
d004288c:	eea8 6a27 	vfma.f32	s12, s16, s15
d0042890:	ed8d 4a1f 	vstr	s8, [sp, #124]	; 0x7c
d0042894:	eea8 7a67 	vfms.f32	s14, s16, s15
d0042898:	edcd 3a19 	vstr	s7, [sp, #100]	; 0x64
d004289c:	edcd 4a20 	vstr	s9, [sp, #128]	; 0x80
d00428a0:	edcd 5a1a 	vstr	s11, [sp, #104]	; 0x68
d00428a4:	edcd 6a1d 	vstr	s13, [sp, #116]	; 0x74
d00428a8:	ed8d 5a21 	vstr	s10, [sp, #132]	; 0x84
d00428ac:	ed8d 6a1b 	vstr	s12, [sp, #108]	; 0x6c
d00428b0:	ed8d 7a1e 	vstr	s14, [sp, #120]	; 0x78
d00428b4:	f003 fb0a 	bl	d0045ecc <memcpy>
d00428b8:	eeb0 0a4d 	vmov.f32	s0, s26
d00428bc:	eef0 0a6f 	vmov.f32	s1, s31
d00428c0:	eeb0 1a4f 	vmov.f32	s2, s30
d00428c4:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d00428c8:	f000 fbfc 	bl	d00430c4 <worldToCamera>
d00428cc:	ed9d da19 	vldr	s26, [sp, #100]	; 0x64
d00428d0:	eddd fa1a 	vldr	s31, [sp, #104]	; 0x68
d00428d4:	4651      	mov	r1, sl
d00428d6:	ed9d fa1b 	vldr	s30, [sp, #108]	; 0x6c
d00428da:	2250      	movs	r2, #80	; 0x50
d00428dc:	4668      	mov	r0, sp
d00428de:	ed8d 0a22 	vstr	s0, [sp, #136]	; 0x88
d00428e2:	edcd 0a23 	vstr	s1, [sp, #140]	; 0x8c
d00428e6:	ed8d 1a24 	vstr	s2, [sp, #144]	; 0x90
d00428ea:	f003 faef 	bl	d0045ecc <memcpy>
d00428ee:	eeb0 0a4d 	vmov.f32	s0, s26
d00428f2:	eef0 0a6f 	vmov.f32	s1, s31
d00428f6:	eeb0 1a4f 	vmov.f32	s2, s30
d00428fa:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d00428fe:	f000 fbe1 	bl	d00430c4 <worldToCamera>
d0042902:	ed9d da1c 	vldr	s26, [sp, #112]	; 0x70
d0042906:	eddd fa1d 	vldr	s31, [sp, #116]	; 0x74
d004290a:	4651      	mov	r1, sl
d004290c:	ed9d fa1e 	vldr	s30, [sp, #120]	; 0x78
d0042910:	2250      	movs	r2, #80	; 0x50
d0042912:	4668      	mov	r0, sp
d0042914:	ed8d 0a25 	vstr	s0, [sp, #148]	; 0x94
d0042918:	edcd 0a26 	vstr	s1, [sp, #152]	; 0x98
d004291c:	ed8d 1a27 	vstr	s2, [sp, #156]	; 0x9c
d0042920:	f003 fad4 	bl	d0045ecc <memcpy>
d0042924:	eeb0 0a4d 	vmov.f32	s0, s26
d0042928:	eef0 0a6f 	vmov.f32	s1, s31
d004292c:	eeb0 1a4f 	vmov.f32	s2, s30
d0042930:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0042934:	f000 fbc6 	bl	d00430c4 <worldToCamera>
d0042938:	ed9d da1f 	vldr	s26, [sp, #124]	; 0x7c
d004293c:	eddd fa20 	vldr	s31, [sp, #128]	; 0x80
d0042940:	4651      	mov	r1, sl
d0042942:	ed9d fa21 	vldr	s30, [sp, #132]	; 0x84
d0042946:	2250      	movs	r2, #80	; 0x50
d0042948:	4668      	mov	r0, sp
d004294a:	ed8d 0a28 	vstr	s0, [sp, #160]	; 0xa0
d004294e:	edcd 0a29 	vstr	s1, [sp, #164]	; 0xa4
d0042952:	ed8d 1a2a 	vstr	s2, [sp, #168]	; 0xa8
d0042956:	f003 fab9 	bl	d0045ecc <memcpy>
d004295a:	eeb0 0a4d 	vmov.f32	s0, s26
d004295e:	eef0 0a6f 	vmov.f32	s1, s31
d0042962:	eeb0 1a4f 	vmov.f32	s2, s30
d0042966:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d004296a:	f000 fbab 	bl	d00430c4 <worldToCamera>
d004296e:	eddd 7a24 	vldr	s15, [sp, #144]	; 0x90
d0042972:	ed8d 0a2b 	vstr	s0, [sp, #172]	; 0xac
d0042976:	eef4 7acb 	vcmpe.f32	s15, s22
d004297a:	edcd 0a2c 	vstr	s1, [sp, #176]	; 0xb0
d004297e:	ed8d 1a2d 	vstr	s2, [sp, #180]	; 0xb4
d0042982:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042986:	d812      	bhi.n	d00429ae <sb3dParticlesRender+0x222>
d0042988:	eddd 7a27 	vldr	s15, [sp, #156]	; 0x9c
d004298c:	eef4 7acb 	vcmpe.f32	s15, s22
d0042990:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042994:	d80b      	bhi.n	d00429ae <sb3dParticlesRender+0x222>
d0042996:	eddd 7a2a 	vldr	s15, [sp, #168]	; 0xa8
d004299a:	eef4 7acb 	vcmpe.f32	s15, s22
d004299e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00429a2:	d804      	bhi.n	d00429ae <sb3dParticlesRender+0x222>
d00429a4:	eeb4 1acb 	vcmpe.f32	s2, s22
d00429a8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00429ac:	d931      	bls.n	d0042a12 <sb3dParticlesRender+0x286>
d00429ae:	4629      	mov	r1, r5
d00429b0:	ed9d 3a28 	vldr	s6, [sp, #160]	; 0xa0
d00429b4:	eddd 3a29 	vldr	s7, [sp, #164]	; 0xa4
d00429b8:	a82e      	add	r0, sp, #184	; 0xb8
d00429ba:	ed9d 4a2a 	vldr	s8, [sp, #168]	; 0xa8
d00429be:	eddd 1a25 	vldr	s3, [sp, #148]	; 0x94
d00429c2:	ed9d 2a26 	vldr	s4, [sp, #152]	; 0x98
d00429c6:	eddd 2a27 	vldr	s5, [sp, #156]	; 0x9c
d00429ca:	ed9d 0a22 	vldr	s0, [sp, #136]	; 0x88
d00429ce:	eddd 0a23 	vldr	s1, [sp, #140]	; 0x8c
d00429d2:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d00429d6:	f001 f881 	bl	d0043adc <clipTriangleToFrustum>
d00429da:	2802      	cmp	r0, #2
d00429dc:	f300 8156 	bgt.w	d0042c8c <sb3dParticlesRender+0x500>
d00429e0:	a82e      	add	r0, sp, #184	; 0xb8
d00429e2:	4629      	mov	r1, r5
d00429e4:	ed9d 3a2b 	vldr	s6, [sp, #172]	; 0xac
d00429e8:	eddd 3a2c 	vldr	s7, [sp, #176]	; 0xb0
d00429ec:	ed9d 4a2d 	vldr	s8, [sp, #180]	; 0xb4
d00429f0:	eddd 1a28 	vldr	s3, [sp, #160]	; 0xa0
d00429f4:	ed9d 2a29 	vldr	s4, [sp, #164]	; 0xa4
d00429f8:	eddd 2a2a 	vldr	s5, [sp, #168]	; 0xa8
d00429fc:	ed9d 0a22 	vldr	s0, [sp, #136]	; 0x88
d0042a00:	eddd 0a23 	vldr	s1, [sp, #140]	; 0x8c
d0042a04:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d0042a08:	f001 f868 	bl	d0043adc <clipTriangleToFrustum>
d0042a0c:	2802      	cmp	r0, #2
d0042a0e:	f300 8105 	bgt.w	d0042c1c <sb3dParticlesRender+0x490>
d0042a12:	3420      	adds	r4, #32
d0042a14:	42a6      	cmp	r6, r4
d0042a16:	f000 8134 	beq.w	d0042c82 <sb3dParticlesRender+0x4f6>
d0042a1a:	7ea3      	ldrb	r3, [r4, #26]
d0042a1c:	2b00      	cmp	r3, #0
d0042a1e:	d0f8      	beq.n	d0042a12 <sb3dParticlesRender+0x286>
d0042a20:	edd4 7a03 	vldr	s15, [r4, #12]
d0042a24:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0042a28:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042a2c:	d9f1      	bls.n	d0042a12 <sb3dParticlesRender+0x286>
d0042a2e:	edd4 6a01 	vldr	s13, [r4, #4]
d0042a32:	eeb1 5a67 	vneg.f32	s10, s15
d0042a36:	ed94 6a00 	vldr	s12, [r4]
d0042a3a:	ee36 7aed 	vsub.f32	s14, s13, s27
d0042a3e:	edd4 5a02 	vldr	s11, [r4, #8]
d0042a42:	ee36 4a4e 	vsub.f32	s8, s12, s28
d0042a46:	eddd 4a15 	vldr	s9, [sp, #84]	; 0x54
d0042a4a:	ee27 7a0a 	vmul.f32	s14, s14, s20
d0042a4e:	ee75 4ae4 	vsub.f32	s9, s11, s9
d0042a52:	eeaa 7a84 	vfma.f32	s14, s21, s8
d0042a56:	eea9 7aa4 	vfma.f32	s14, s19, s9
d0042a5a:	eeb4 5ac7 	vcmpe.f32	s10, s14
d0042a5e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042a62:	dad6      	bge.n	d0042a12 <sb3dParticlesRender+0x286>
d0042a64:	ed94 7a05 	vldr	s14, [r4, #20]
d0042a68:	ed9f 5a0b 	vldr	s10, [pc, #44]	; d0042a98 <sb3dParticlesRender+0x30c>
d0042a6c:	eeb4 7ac5 	vcmpe.f32	s14, s10
d0042a70:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042a74:	f67f aebb 	bls.w	d00427ee <sb3dParticlesRender+0x62>
d0042a78:	f1b8 0f00 	cmp.w	r8, #0
d0042a7c:	f340 809e 	ble.w	d0042bbc <sb3dParticlesRender+0x430>
d0042a80:	eeb7 4a00 	vmov.f32	s8, #112	; 0x3f800000  1.0
d0042a84:	464b      	mov	r3, r9
d0042a86:	eeb5 3a00 	vmov.f32	s6, #80	; 0x3e800000  0.250
d0042a8a:	ed9f 0a05 	vldr	s0, [pc, #20]	; d0042aa0 <sb3dParticlesRender+0x314>
d0042a8e:	eef6 3a08 	vmov.f32	s7, #104	; 0x3f400000  0.750
d0042a92:	e07e      	b.n	d0042b92 <sb3dParticlesRender+0x406>
d0042a94:	d0047580 	.word	0xd0047580
d0042a98:	38d1b717 	.word	0x38d1b717
d0042a9c:	358637bd 	.word	0x358637bd
d0042aa0:	3dcccccd 	.word	0x3dcccccd
d0042aa4:	3b808081 	.word	0x3b808081
d0042aa8:	00000000 	.word	0x00000000
d0042aac:	edd3 7a02 	vldr	s15, [r3, #8]
d0042ab0:	edd3 4a01 	vldr	s9, [r3, #4]
d0042ab4:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0042ab8:	ed93 7a03 	vldr	s14, [r3, #12]
d0042abc:	ee74 4ac6 	vsub.f32	s9, s9, s12
d0042ac0:	ed93 2a0a 	vldr	s4, [r3, #40]	; 0x28
d0042ac4:	ee37 7a65 	vsub.f32	s14, s14, s11
d0042ac8:	ee27 5aa7 	vmul.f32	s10, s15, s15
d0042acc:	ee62 2a02 	vmul.f32	s5, s4, s4
d0042ad0:	eea4 5aa4 	vfma.f32	s10, s9, s9
d0042ad4:	eea7 5a07 	vfma.f32	s10, s14, s14
d0042ad8:	eeb4 5a62 	vcmp.f32	s10, s5
d0042adc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042ae0:	d554      	bpl.n	d0042b8c <sb3dParticlesRender+0x400>
d0042ae2:	ed5f 2a12 	vldr	s5, [pc, #-72]	; d0042a9c <sb3dParticlesRender+0x310>
d0042ae6:	eeb4 5a62 	vcmp.f32	s10, s5
d0042aea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042aee:	dd4d      	ble.n	d0042b8c <sb3dParticlesRender+0x400>
d0042af0:	eef1 0ac5 	vsqrt.f32	s1, s10
d0042af4:	edd3 1a08 	vldr	s3, [r3, #32]
d0042af8:	ee21 1aa1 	vmul.f32	s2, s3, s3
d0042afc:	eeb4 5ac1 	vcmpe.f32	s10, s2
d0042b00:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042b04:	eec4 2a20 	vdiv.f32	s5, s8, s1
d0042b08:	ee64 4aa2 	vmul.f32	s9, s9, s5
d0042b0c:	ee67 7aa2 	vmul.f32	s15, s15, s5
d0042b10:	ee27 7a22 	vmul.f32	s14, s14, s5
d0042b14:	f240 80e9 	bls.w	d0042cea <sb3dParticlesRender+0x55e>
d0042b18:	ed93 1a09 	vldr	s2, [r3, #36]	; 0x24
d0042b1c:	eef4 1ac1 	vcmpe.f32	s3, s2
d0042b20:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042b24:	da32      	bge.n	d0042b8c <sb3dParticlesRender+0x400>
d0042b26:	eeb4 2ac1 	vcmpe.f32	s4, s2
d0042b2a:	ee25 5a22 	vmul.f32	s10, s10, s5
d0042b2e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042b32:	eeb4 1ac5 	vcmpe.f32	s2, s10
d0042b36:	f200 80db 	bhi.w	d0042cf0 <sb3dParticlesRender+0x564>
d0042b3a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042b3e:	d925      	bls.n	d0042b8c <sb3dParticlesRender+0x400>
d0042b40:	ee75 2a61 	vsub.f32	s5, s10, s3
d0042b44:	ee31 2a61 	vsub.f32	s4, s2, s3
d0042b48:	ee82 5a82 	vdiv.f32	s10, s5, s4
d0042b4c:	ed5f 2a2a 	vldr	s5, [pc, #-168]	; d0042aa8 <sb3dParticlesRender+0x31c>
d0042b50:	fe85 5a22 	vmaxnm.f32	s10, s10, s5
d0042b54:	fe85 5a44 	vminnm.f32	s10, s10, s8
d0042b58:	ee34 5a45 	vsub.f32	s10, s8, s10
d0042b5c:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d0042b60:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042b64:	d912      	bls.n	d0042b8c <sb3dParticlesRender+0x400>
d0042b66:	ee67 7a8a 	vmul.f32	s15, s15, s20
d0042b6a:	eee4 7aaa 	vfma.f32	s15, s9, s21
d0042b6e:	eee7 7a29 	vfma.f32	s15, s14, s19
d0042b72:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0042b76:	eeb1 7a67 	vneg.f32	s14, s15
d0042b7a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042b7e:	da05      	bge.n	d0042b8c <sb3dParticlesRender+0x400>
d0042b80:	edd3 7a07 	vldr	s15, [r3, #28]
d0042b84:	ee25 5a27 	vmul.f32	s10, s10, s15
d0042b88:	eea5 0a07 	vfma.f32	s0, s10, s14
d0042b8c:	3340      	adds	r3, #64	; 0x40
d0042b8e:	429f      	cmp	r7, r3
d0042b90:	d016      	beq.n	d0042bc0 <sb3dParticlesRender+0x434>
d0042b92:	6ada      	ldr	r2, [r3, #44]	; 0x2c
d0042b94:	2a00      	cmp	r2, #0
d0042b96:	d0f9      	beq.n	d0042b8c <sb3dParticlesRender+0x400>
d0042b98:	781a      	ldrb	r2, [r3, #0]
d0042b9a:	2a00      	cmp	r2, #0
d0042b9c:	d086      	beq.n	d0042aac <sb3dParticlesRender+0x320>
d0042b9e:	edd3 4a04 	vldr	s9, [r3, #16]
d0042ba2:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0042ba6:	edd3 7a05 	vldr	s15, [r3, #20]
d0042baa:	ed93 7a06 	vldr	s14, [r3, #24]
d0042bae:	eef1 4a64 	vneg.f32	s9, s9
d0042bb2:	eef1 7a67 	vneg.f32	s15, s15
d0042bb6:	eeb1 7a47 	vneg.f32	s14, s14
d0042bba:	e7d4      	b.n	d0042b66 <sb3dParticlesRender+0x3da>
d0042bbc:	ed1f 0a48 	vldr	s0, [pc, #-288]	; d0042aa0 <sb3dParticlesRender+0x314>
d0042bc0:	7e63      	ldrb	r3, [r4, #25]
d0042bc2:	eeb7 fa00 	vmov.f32	s30, #112	; 0x3f800000  1.0
d0042bc6:	ed1f 7a49 	vldr	s14, [pc, #-292]	; d0042aa4 <sb3dParticlesRender+0x318>
d0042bca:	ee07 3a90 	vmov	s15, r3
d0042bce:	ed1f da4a 	vldr	s26, [pc, #-296]	; d0042aa8 <sb3dParticlesRender+0x31c>
d0042bd2:	eef8 7a67 	vcvt.f32.u32	s15, s15
d0042bd6:	ee67 7a87 	vmul.f32	s15, s15, s14
d0042bda:	fec7 7a8d 	vmaxnm.f32	s15, s15, s26
d0042bde:	fe87 0a80 	vmaxnm.f32	s0, s15, s0
d0042be2:	fe80 0a4f 	vminnm.f32	s0, s0, s30
d0042be6:	f000 ff0d 	bl	d0043a04 <brightnessToShadeF>
d0042bea:	edd4 ea05 	vldr	s29, [r4, #20]
d0042bee:	ed94 5a04 	vldr	s10, [r4, #16]
d0042bf2:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d0042bf6:	ee3f fa6e 	vsub.f32	s30, s30, s29
d0042bfa:	edd4 7a03 	vldr	s15, [r4, #12]
d0042bfe:	ee60 ea2e 	vmul.f32	s29, s0, s29
d0042c02:	ed94 6a00 	vldr	s12, [r4]
d0042c06:	edd4 6a01 	vldr	s13, [r4, #4]
d0042c0a:	edd4 5a02 	vldr	s11, [r4, #8]
d0042c0e:	eee5 ea0f 	vfma.f32	s29, s10, s30
d0042c12:	fece ea8d 	vmaxnm.f32	s29, s29, s26
d0042c16:	fece eac7 	vminnm.f32	s29, s29, s14
d0042c1a:	e5f2      	b.n	d0042802 <sb3dParticlesRender+0x76>
d0042c1c:	f100 3aff 	add.w	sl, r0, #4294967295	; 0xffffffff
d0042c20:	f04f 0b01 	mov.w	fp, #1
d0042c24:	465b      	mov	r3, fp
d0042c26:	f10b 0b01 	add.w	fp, fp, #1
d0042c2a:	a946      	add	r1, sp, #280	; 0x118
d0042c2c:	eef0 4a6e 	vmov.f32	s9, s29
d0042c30:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0042c34:	7e62      	ldrb	r2, [r4, #25]
d0042c36:	eb0b 004b 	add.w	r0, fp, fp, lsl #1
d0042c3a:	ed9d 0a2e 	vldr	s0, [sp, #184]	; 0xb8
d0042c3e:	eb01 0383 	add.w	r3, r1, r3, lsl #2
d0042c42:	eddd 0a2f 	vldr	s1, [sp, #188]	; 0xbc
d0042c46:	eb01 0080 	add.w	r0, r1, r0, lsl #2
d0042c4a:	ed9d 1a30 	vldr	s2, [sp, #192]	; 0xc0
d0042c4e:	f1a3 0c60 	sub.w	ip, r3, #96	; 0x60
d0042c52:	ed53 1a18 	vldr	s3, [r3, #-96]	; 0xffffffa0
d0042c56:	ed10 3a18 	vldr	s6, [r0, #-96]	; 0xffffffa0
d0042c5a:	f1a0 0360 	sub.w	r3, r0, #96	; 0x60
d0042c5e:	7e21      	ldrb	r1, [r4, #24]
d0042c60:	4628      	mov	r0, r5
d0042c62:	ed9c 2a01 	vldr	s4, [ip, #4]
d0042c66:	eddc 2a02 	vldr	s5, [ip, #8]
d0042c6a:	edd3 3a01 	vldr	s7, [r3, #4]
d0042c6e:	ed93 4a02 	vldr	s8, [r3, #8]
d0042c72:	f001 fb8f 	bl	d0044394 <submitClippedTri>
d0042c76:	45d3      	cmp	fp, sl
d0042c78:	d1d4      	bne.n	d0042c24 <sb3dParticlesRender+0x498>
d0042c7a:	3420      	adds	r4, #32
d0042c7c:	42a6      	cmp	r6, r4
d0042c7e:	f47f aecc 	bne.w	d0042a1a <sb3dParticlesRender+0x28e>
d0042c82:	b047      	add	sp, #284	; 0x11c
d0042c84:	ecbd 8b10 	vpop	{d8-d15}
d0042c88:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0042c8c:	f100 3aff 	add.w	sl, r0, #4294967295	; 0xffffffff
d0042c90:	f04f 0b01 	mov.w	fp, #1
d0042c94:	465b      	mov	r3, fp
d0042c96:	aa46      	add	r2, sp, #280	; 0x118
d0042c98:	f10b 0b01 	add.w	fp, fp, #1
d0042c9c:	a846      	add	r0, sp, #280	; 0x118
d0042c9e:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0042ca2:	eef0 4a6e 	vmov.f32	s9, s29
d0042ca6:	eb0b 014b 	add.w	r1, fp, fp, lsl #1
d0042caa:	ed9d 0a2e 	vldr	s0, [sp, #184]	; 0xb8
d0042cae:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0042cb2:	eddd 0a2f 	vldr	s1, [sp, #188]	; 0xbc
d0042cb6:	eb00 0181 	add.w	r1, r0, r1, lsl #2
d0042cba:	ed9d 1a30 	vldr	s2, [sp, #192]	; 0xc0
d0042cbe:	7e62      	ldrb	r2, [r4, #25]
d0042cc0:	4628      	mov	r0, r5
d0042cc2:	ed11 3a18 	vldr	s6, [r1, #-96]	; 0xffffffa0
d0042cc6:	f1a3 0c60 	sub.w	ip, r3, #96	; 0x60
d0042cca:	ed51 3a17 	vldr	s7, [r1, #-92]	; 0xffffffa4
d0042cce:	ed11 4a16 	vldr	s8, [r1, #-88]	; 0xffffffa8
d0042cd2:	ed53 1a18 	vldr	s3, [r3, #-96]	; 0xffffffa0
d0042cd6:	7e21      	ldrb	r1, [r4, #24]
d0042cd8:	ed9c 2a01 	vldr	s4, [ip, #4]
d0042cdc:	eddc 2a02 	vldr	s5, [ip, #8]
d0042ce0:	f001 fb58 	bl	d0044394 <submitClippedTri>
d0042ce4:	45d3      	cmp	fp, sl
d0042ce6:	d1d5      	bne.n	d0042c94 <sb3dParticlesRender+0x508>
d0042ce8:	e67a      	b.n	d00429e0 <sb3dParticlesRender+0x254>
d0042cea:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0042cee:	e73a      	b.n	d0042b66 <sb3dParticlesRender+0x3da>
d0042cf0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042cf4:	db12      	blt.n	d0042d1c <sb3dParticlesRender+0x590>
d0042cf6:	ee35 5a61 	vsub.f32	s10, s10, s3
d0042cfa:	ee31 2a61 	vsub.f32	s4, s2, s3
d0042cfe:	eec5 2a02 	vdiv.f32	s5, s10, s4
d0042d02:	ed1f 5a97 	vldr	s10, [pc, #-604]	; d0042aa8 <sb3dParticlesRender+0x31c>
d0042d06:	fe82 5a85 	vmaxnm.f32	s10, s5, s10
d0042d0a:	eef0 2a44 	vmov.f32	s5, s8
d0042d0e:	fe85 5a44 	vminnm.f32	s10, s10, s8
d0042d12:	eee5 2a63 	vfms.f32	s5, s10, s7
d0042d16:	eeb0 5a62 	vmov.f32	s10, s5
d0042d1a:	e71f      	b.n	d0042b5c <sb3dParticlesRender+0x3d0>
d0042d1c:	ee75 2a41 	vsub.f32	s5, s10, s2
d0042d20:	ee32 2a41 	vsub.f32	s4, s4, s2
d0042d24:	ee82 5a82 	vdiv.f32	s10, s5, s4
d0042d28:	ed5f 2aa1 	vldr	s5, [pc, #-644]	; d0042aa8 <sb3dParticlesRender+0x31c>
d0042d2c:	fe85 5a22 	vmaxnm.f32	s10, s10, s5
d0042d30:	fe85 5a44 	vminnm.f32	s10, s10, s8
d0042d34:	ee34 5a45 	vsub.f32	s10, s8, s10
d0042d38:	ee25 5a03 	vmul.f32	s10, s10, s6
d0042d3c:	e70e      	b.n	d0042b5c <sb3dParticlesRender+0x3d0>
d0042d3e:	4770      	bx	lr

d0042d40 <worldClear>:
d0042d40:	f44f 42c0 	mov.w	r2, #24576	; 0x6000
d0042d44:	2100      	movs	r1, #0
d0042d46:	4801      	ldr	r0, [pc, #4]	; (d0042d4c <worldClear+0xc>)
d0042d48:	f003 b8ce 	b.w	d0045ee8 <memset>
d0042d4c:	d00e1c80 	.word	0xd00e1c80

d0042d50 <cameraCreate>:
d0042d50:	b510      	push	{r4, lr}
d0042d52:	4604      	mov	r4, r0
d0042d54:	2260      	movs	r2, #96	; 0x60
d0042d56:	4902      	ldr	r1, [pc, #8]	; (d0042d60 <cameraCreate+0x10>)
d0042d58:	f003 f8b8 	bl	d0045ecc <memcpy>
d0042d5c:	4620      	mov	r0, r4
d0042d5e:	bd10      	pop	{r4, pc}
d0042d60:	d0046c80 	.word	0xd0046c80

d0042d64 <cameraSetPosition>:
d0042d64:	b084      	sub	sp, #16
d0042d66:	ed8d 0a01 	vstr	s0, [sp, #4]
d0042d6a:	edcd 0a02 	vstr	s1, [sp, #8]
d0042d6e:	ed8d 1a03 	vstr	s2, [sp, #12]
d0042d72:	b128      	cbz	r0, d0042d80 <cameraSetPosition+0x1c>
d0042d74:	aa04      	add	r2, sp, #16
d0042d76:	4603      	mov	r3, r0
d0042d78:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0042d7c:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0042d80:	b004      	add	sp, #16
d0042d82:	4770      	bx	lr

d0042d84 <cameraNormalize>:
d0042d84:	edd0 0a0d 	vldr	s1, [r0, #52]	; 0x34
d0042d88:	ed90 1a0e 	vldr	s2, [r0, #56]	; 0x38
d0042d8c:	ed90 0a0c 	vldr	s0, [r0, #48]	; 0x30
d0042d90:	b510      	push	{r4, lr}
d0042d92:	4604      	mov	r4, r0
d0042d94:	f7ff fb38 	bl	d0042408 <vec3Normalize>
d0042d98:	eeb0 7a60 	vmov.f32	s14, s1
d0042d9c:	eef0 7a41 	vmov.f32	s15, s2
d0042da0:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0042da4:	ed94 0a06 	vldr	s0, [r4, #24]
d0042da8:	ed84 7a0d 	vstr	s14, [r4, #52]	; 0x34
d0042dac:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d0042db0:	edd4 0a07 	vldr	s1, [r4, #28]
d0042db4:	ed94 1a08 	vldr	s2, [r4, #32]
d0042db8:	f7ff fb26 	bl	d0042408 <vec3Normalize>
d0042dbc:	eef0 1a40 	vmov.f32	s3, s0
d0042dc0:	eeb0 2a60 	vmov.f32	s4, s1
d0042dc4:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0042dc8:	eef0 2a41 	vmov.f32	s5, s2
d0042dcc:	edc4 0a07 	vstr	s1, [r4, #28]
d0042dd0:	ed84 1a08 	vstr	s2, [r4, #32]
d0042dd4:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0042dd8:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0042ddc:	edc4 1a06 	vstr	s3, [r4, #24]
d0042de0:	f7ff fafc 	bl	d00423dc <vec3Cross>
d0042de4:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0042de8:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0042dec:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0042df0:	f7ff fb0a 	bl	d0042408 <vec3Normalize>
d0042df4:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0042df8:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0042dfc:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0042e00:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0042e04:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0042e08:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0042e0c:	f7ff fae6 	bl	d00423dc <vec3Cross>
d0042e10:	ed84 0a06 	vstr	s0, [r4, #24]
d0042e14:	edc4 0a07 	vstr	s1, [r4, #28]
d0042e18:	ed84 1a08 	vstr	s2, [r4, #32]
d0042e1c:	f7ff faf4 	bl	d0042408 <vec3Normalize>
d0042e20:	ed84 0a06 	vstr	s0, [r4, #24]
d0042e24:	edc4 0a07 	vstr	s1, [r4, #28]
d0042e28:	ed84 1a08 	vstr	s2, [r4, #32]
d0042e2c:	bd10      	pop	{r4, pc}
d0042e2e:	bf00      	nop

d0042e30 <cameraTurn>:
d0042e30:	2800      	cmp	r0, #0
d0042e32:	f000 8144 	beq.w	d00430be <cameraTurn+0x28e>
d0042e36:	b570      	push	{r4, r5, r6, lr}
d0042e38:	4604      	mov	r4, r0
d0042e3a:	ed2d 8b04 	vpush	{d8-d9}
d0042e3e:	eef0 8a40 	vmov.f32	s17, s0
d0042e42:	b08a      	sub	sp, #40	; 0x28
d0042e44:	eeb0 9a60 	vmov.f32	s18, s1
d0042e48:	eeb0 8a41 	vmov.f32	s16, s2
d0042e4c:	bb69      	cbnz	r1, d0042eaa <cameraTurn+0x7a>
d0042e4e:	f100 0318 	add.w	r3, r0, #24
d0042e52:	ae01      	add	r6, sp, #4
d0042e54:	f100 0524 	add.w	r5, r0, #36	; 0x24
d0042e58:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0042e5c:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0042e60:	f104 0330 	add.w	r3, r4, #48	; 0x30
d0042e64:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042e68:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0042e6c:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d0042e70:	ae04      	add	r6, sp, #16
d0042e72:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0042e76:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0042e7a:	ab0a      	add	r3, sp, #40	; 0x28
d0042e7c:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0042e80:	d14a      	bne.n	d0042f18 <cameraTurn+0xe8>
d0042e82:	eef5 8a40 	vcmp.f32	s17, #0.0
d0042e86:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042e8a:	f040 808d 	bne.w	d0042fa8 <cameraTurn+0x178>
d0042e8e:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0042e92:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042e96:	f040 80cf 	bne.w	d0043038 <cameraTurn+0x208>
d0042e9a:	4620      	mov	r0, r4
d0042e9c:	b00a      	add	sp, #40	; 0x28
d0042e9e:	ecbd 8b04 	vpop	{d8-d9}
d0042ea2:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0042ea6:	f7ff bf6d 	b.w	d0042d84 <cameraNormalize>
d0042eaa:	ed9f 1a85 	vldr	s2, [pc, #532]	; d00430c0 <cameraTurn+0x290>
d0042eae:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0042eb2:	eef0 0a41 	vmov.f32	s1, s2
d0042eb6:	f7ff fba7 	bl	d0042608 <vec3>
d0042eba:	eef0 7a41 	vmov.f32	s15, s2
d0042ebe:	ed9f 1a80 	vldr	s2, [pc, #512]	; d00430c0 <cameraTurn+0x290>
d0042ec2:	eeb0 7a60 	vmov.f32	s14, s1
d0042ec6:	ed8d 0a01 	vstr	s0, [sp, #4]
d0042eca:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d0042ece:	edcd 7a03 	vstr	s15, [sp, #12]
d0042ed2:	eeb0 0a41 	vmov.f32	s0, s2
d0042ed6:	ed8d 7a02 	vstr	s14, [sp, #8]
d0042eda:	f7ff fb95 	bl	d0042608 <vec3>
d0042ede:	eeb0 7a60 	vmov.f32	s14, s1
d0042ee2:	eddf 0a77 	vldr	s1, [pc, #476]	; d00430c0 <cameraTurn+0x290>
d0042ee6:	eef0 7a41 	vmov.f32	s15, s2
d0042eea:	ed8d 0a04 	vstr	s0, [sp, #16]
d0042eee:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d0042ef2:	eeb0 0a60 	vmov.f32	s0, s1
d0042ef6:	ed8d 7a05 	vstr	s14, [sp, #20]
d0042efa:	edcd 7a06 	vstr	s15, [sp, #24]
d0042efe:	f7ff fb83 	bl	d0042608 <vec3>
d0042f02:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0042f06:	edcd 0a08 	vstr	s1, [sp, #32]
d0042f0a:	ed8d 0a07 	vstr	s0, [sp, #28]
d0042f0e:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d0042f12:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042f16:	d0b4      	beq.n	d0042e82 <cameraTurn+0x52>
d0042f18:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0042f1c:	eeb0 3a49 	vmov.f32	s6, s18
d0042f20:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0042f24:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0042f28:	eddd 1a04 	vldr	s3, [sp, #16]
d0042f2c:	ed9d 2a05 	vldr	s4, [sp, #20]
d0042f30:	eddd 2a06 	vldr	s5, [sp, #24]
d0042f34:	f7ff fab8 	bl	d00424a8 <rotateAroundAxis>
d0042f38:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0042f3c:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0042f40:	eeb0 3a49 	vmov.f32	s6, s18
d0042f44:	ed94 0a06 	vldr	s0, [r4, #24]
d0042f48:	edd4 0a07 	vldr	s1, [r4, #28]
d0042f4c:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0042f50:	ed94 1a08 	vldr	s2, [r4, #32]
d0042f54:	eddd 1a04 	vldr	s3, [sp, #16]
d0042f58:	ed9d 2a05 	vldr	s4, [sp, #20]
d0042f5c:	eddd 2a06 	vldr	s5, [sp, #24]
d0042f60:	f7ff faa2 	bl	d00424a8 <rotateAroundAxis>
d0042f64:	eeb0 3a49 	vmov.f32	s6, s18
d0042f68:	ed84 0a06 	vstr	s0, [r4, #24]
d0042f6c:	edc4 0a07 	vstr	s1, [r4, #28]
d0042f70:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0042f74:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0042f78:	ed84 1a08 	vstr	s2, [r4, #32]
d0042f7c:	eddd 1a04 	vldr	s3, [sp, #16]
d0042f80:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0042f84:	ed9d 2a05 	vldr	s4, [sp, #20]
d0042f88:	eddd 2a06 	vldr	s5, [sp, #24]
d0042f8c:	f7ff fa8c 	bl	d00424a8 <rotateAroundAxis>
d0042f90:	eef5 8a40 	vcmp.f32	s17, #0.0
d0042f94:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0042f98:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0042f9c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042fa0:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0042fa4:	f43f af73 	beq.w	d0042e8e <cameraTurn+0x5e>
d0042fa8:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0042fac:	eeb0 3a68 	vmov.f32	s6, s17
d0042fb0:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0042fb4:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0042fb8:	eddd 1a01 	vldr	s3, [sp, #4]
d0042fbc:	ed9d 2a02 	vldr	s4, [sp, #8]
d0042fc0:	eddd 2a03 	vldr	s5, [sp, #12]
d0042fc4:	f7ff fa70 	bl	d00424a8 <rotateAroundAxis>
d0042fc8:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0042fcc:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0042fd0:	eeb0 3a68 	vmov.f32	s6, s17
d0042fd4:	ed94 0a06 	vldr	s0, [r4, #24]
d0042fd8:	edd4 0a07 	vldr	s1, [r4, #28]
d0042fdc:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0042fe0:	ed94 1a08 	vldr	s2, [r4, #32]
d0042fe4:	eddd 1a01 	vldr	s3, [sp, #4]
d0042fe8:	ed9d 2a02 	vldr	s4, [sp, #8]
d0042fec:	eddd 2a03 	vldr	s5, [sp, #12]
d0042ff0:	f7ff fa5a 	bl	d00424a8 <rotateAroundAxis>
d0042ff4:	eeb0 3a68 	vmov.f32	s6, s17
d0042ff8:	ed84 0a06 	vstr	s0, [r4, #24]
d0042ffc:	edc4 0a07 	vstr	s1, [r4, #28]
d0043000:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0043004:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0043008:	ed84 1a08 	vstr	s2, [r4, #32]
d004300c:	eddd 1a01 	vldr	s3, [sp, #4]
d0043010:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0043014:	ed9d 2a02 	vldr	s4, [sp, #8]
d0043018:	eddd 2a03 	vldr	s5, [sp, #12]
d004301c:	f7ff fa44 	bl	d00424a8 <rotateAroundAxis>
d0043020:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0043024:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0043028:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d004302c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043030:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0043034:	f43f af31 	beq.w	d0042e9a <cameraTurn+0x6a>
d0043038:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d004303c:	eeb0 3a48 	vmov.f32	s6, s16
d0043040:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0043044:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0043048:	eddd 1a07 	vldr	s3, [sp, #28]
d004304c:	ed9d 2a08 	vldr	s4, [sp, #32]
d0043050:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0043054:	f7ff fa28 	bl	d00424a8 <rotateAroundAxis>
d0043058:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d004305c:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0043060:	eeb0 3a48 	vmov.f32	s6, s16
d0043064:	ed94 0a06 	vldr	s0, [r4, #24]
d0043068:	edd4 0a07 	vldr	s1, [r4, #28]
d004306c:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0043070:	ed94 1a08 	vldr	s2, [r4, #32]
d0043074:	eddd 1a07 	vldr	s3, [sp, #28]
d0043078:	ed9d 2a08 	vldr	s4, [sp, #32]
d004307c:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0043080:	f7ff fa12 	bl	d00424a8 <rotateAroundAxis>
d0043084:	ed84 0a06 	vstr	s0, [r4, #24]
d0043088:	edc4 0a07 	vstr	s1, [r4, #28]
d004308c:	eeb0 3a48 	vmov.f32	s6, s16
d0043090:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0043094:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0043098:	ed84 1a08 	vstr	s2, [r4, #32]
d004309c:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d00430a0:	eddd 1a07 	vldr	s3, [sp, #28]
d00430a4:	ed9d 2a08 	vldr	s4, [sp, #32]
d00430a8:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d00430ac:	f7ff f9fc 	bl	d00424a8 <rotateAroundAxis>
d00430b0:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d00430b4:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d00430b8:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d00430bc:	e6ed      	b.n	d0042e9a <cameraTurn+0x6a>
d00430be:	4770      	bx	lr
d00430c0:	00000000 	.word	0x00000000

d00430c4 <worldToCamera>:
d00430c4:	b084      	sub	sp, #16
d00430c6:	b510      	push	{r4, lr}
d00430c8:	ed2d 8b02 	vpush	{d8}
d00430cc:	b0ac      	sub	sp, #176	; 0xb0
d00430ce:	f10d 042f 	add.w	r4, sp, #47	; 0x2f
d00430d2:	f10d 0cc0 	add.w	ip, sp, #192	; 0xc0
d00430d6:	ed8d 0a23 	vstr	s0, [sp, #140]	; 0x8c
d00430da:	f024 041f 	bic.w	r4, r4, #31
d00430de:	edcd 0a24 	vstr	s1, [sp, #144]	; 0x90
d00430e2:	ed8d 1a25 	vstr	s2, [sp, #148]	; 0x94
d00430e6:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d00430ea:	2260      	movs	r2, #96	; 0x60
d00430ec:	4661      	mov	r1, ip
d00430ee:	4620      	mov	r0, r4
d00430f0:	f002 feec 	bl	d0045ecc <memcpy>
d00430f4:	edd4 7a00 	vldr	s15, [r4]
d00430f8:	ed9d 0a23 	vldr	s0, [sp, #140]	; 0x8c
d00430fc:	ed94 7a01 	vldr	s14, [r4, #4]
d0043100:	ee30 0a67 	vsub.f32	s0, s0, s15
d0043104:	eddd 0a24 	vldr	s1, [sp, #144]	; 0x90
d0043108:	edd4 7a02 	vldr	s15, [r4, #8]
d004310c:	ed9d 1a25 	vldr	s2, [sp, #148]	; 0x94
d0043110:	ee70 0ac7 	vsub.f32	s1, s1, s14
d0043114:	edd4 1a06 	vldr	s3, [r4, #24]
d0043118:	ee31 1a67 	vsub.f32	s2, s2, s15
d004311c:	ed94 2a07 	vldr	s4, [r4, #28]
d0043120:	edd4 2a08 	vldr	s5, [r4, #32]
d0043124:	edcd 0a27 	vstr	s1, [sp, #156]	; 0x9c
d0043128:	ed8d 1a28 	vstr	s2, [sp, #160]	; 0xa0
d004312c:	ed8d 0a26 	vstr	s0, [sp, #152]	; 0x98
d0043130:	f7ff f948 	bl	d00423c4 <vec3Dot>
d0043134:	edd4 1a09 	vldr	s3, [r4, #36]	; 0x24
d0043138:	eef0 8a40 	vmov.f32	s17, s0
d004313c:	ed94 2a0a 	vldr	s4, [r4, #40]	; 0x28
d0043140:	edd4 2a0b 	vldr	s5, [r4, #44]	; 0x2c
d0043144:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d0043148:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d004314c:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d0043150:	f7ff f938 	bl	d00423c4 <vec3Dot>
d0043154:	eeb0 8a40 	vmov.f32	s16, s0
d0043158:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d004315c:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d0043160:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0043164:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d0043168:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d004316c:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0043170:	f7ff f928 	bl	d00423c4 <vec3Dot>
d0043174:	eef0 0a48 	vmov.f32	s1, s16
d0043178:	eeb0 1a40 	vmov.f32	s2, s0
d004317c:	eeb0 0a68 	vmov.f32	s0, s17
d0043180:	b02c      	add	sp, #176	; 0xb0
d0043182:	ecbd 8b02 	vpop	{d8}
d0043186:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d004318a:	b004      	add	sp, #16
d004318c:	4770      	bx	lr
d004318e:	bf00      	nop

d0043190 <cameraSetRange>:
d0043190:	b1a0      	cbz	r0, d00431bc <cameraSetRange+0x2c>
d0043192:	eddf 7a0d 	vldr	s15, [pc, #52]	; d00431c8 <cameraSetRange+0x38>
d0043196:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d004319a:	eeb4 0ae0 	vcmpe.f32	s0, s1
d004319e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00431a2:	da0c      	bge.n	d00431be <cameraSetRange+0x2e>
d00431a4:	ee30 7ac0 	vsub.f32	s14, s1, s0
d00431a8:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d00431ac:	eec6 7a87 	vdiv.f32	s15, s13, s14
d00431b0:	ed80 0a10 	vstr	s0, [r0, #64]	; 0x40
d00431b4:	edc0 0a11 	vstr	s1, [r0, #68]	; 0x44
d00431b8:	edc0 7a0f 	vstr	s15, [r0, #60]	; 0x3c
d00431bc:	4770      	bx	lr
d00431be:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00431c2:	ee70 0a27 	vadd.f32	s1, s0, s15
d00431c6:	e7f3      	b.n	d00431b0 <cameraSetRange+0x20>
d00431c8:	3a83126f 	.word	0x3a83126f

d00431cc <cameraMove>:
d00431cc:	b3a8      	cbz	r0, d004323a <cameraMove+0x6e>
d00431ce:	edd0 6a0b 	vldr	s13, [r0, #44]	; 0x2c
d00431d2:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
d00431d6:	edd0 7a0a 	vldr	s15, [r0, #40]	; 0x28
d00431da:	ee20 7a87 	vmul.f32	s14, s1, s14
d00431de:	edd0 5a06 	vldr	s11, [r0, #24]
d00431e2:	ee60 7aa7 	vmul.f32	s15, s1, s15
d00431e6:	ed90 6a08 	vldr	s12, [r0, #32]
d00431ea:	ee60 0aa6 	vmul.f32	s1, s1, s13
d00431ee:	edd0 6a07 	vldr	s13, [r0, #28]
d00431f2:	eea5 7a80 	vfma.f32	s14, s11, s0
d00431f6:	edd0 4a01 	vldr	s9, [r0, #4]
d00431fa:	eee6 7a80 	vfma.f32	s15, s13, s0
d00431fe:	ed90 5a02 	vldr	s10, [r0, #8]
d0043202:	eee6 0a00 	vfma.f32	s1, s12, s0
d0043206:	edd0 6a00 	vldr	s13, [r0]
d004320a:	edd0 5a0c 	vldr	s11, [r0, #48]	; 0x30
d004320e:	ed90 6a0d 	vldr	s12, [r0, #52]	; 0x34
d0043212:	ee37 7a26 	vadd.f32	s14, s14, s13
d0043216:	edd0 6a0e 	vldr	s13, [r0, #56]	; 0x38
d004321a:	ee77 7aa4 	vadd.f32	s15, s15, s9
d004321e:	ee70 0a85 	vadd.f32	s1, s1, s10
d0043222:	eea5 7a81 	vfma.f32	s14, s11, s2
d0043226:	eee6 7a01 	vfma.f32	s15, s12, s2
d004322a:	eee6 0a81 	vfma.f32	s1, s13, s2
d004322e:	ed80 7a00 	vstr	s14, [r0]
d0043232:	edc0 7a01 	vstr	s15, [r0, #4]
d0043236:	edc0 0a02 	vstr	s1, [r0, #8]
d004323a:	4770      	bx	lr

d004323c <normalizeEntity.part.0>:
d004323c:	edd0 0a05 	vldr	s1, [r0, #20]
d0043240:	ed90 1a06 	vldr	s2, [r0, #24]
d0043244:	ed90 0a04 	vldr	s0, [r0, #16]
d0043248:	b510      	push	{r4, lr}
d004324a:	4604      	mov	r4, r0
d004324c:	f7ff f8dc 	bl	d0042408 <vec3Normalize>
d0043250:	eeb0 7a60 	vmov.f32	s14, s1
d0043254:	eef0 7a41 	vmov.f32	s15, s2
d0043258:	ed84 0a04 	vstr	s0, [r4, #16]
d004325c:	ed94 0a07 	vldr	s0, [r4, #28]
d0043260:	ed84 7a05 	vstr	s14, [r4, #20]
d0043264:	edc4 7a06 	vstr	s15, [r4, #24]
d0043268:	edd4 0a08 	vldr	s1, [r4, #32]
d004326c:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0043270:	f7ff f8ca 	bl	d0042408 <vec3Normalize>
d0043274:	eef0 1a40 	vmov.f32	s3, s0
d0043278:	eeb0 2a60 	vmov.f32	s4, s1
d004327c:	ed94 0a04 	vldr	s0, [r4, #16]
d0043280:	eef0 2a41 	vmov.f32	s5, s2
d0043284:	edc4 0a08 	vstr	s1, [r4, #32]
d0043288:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d004328c:	edd4 0a05 	vldr	s1, [r4, #20]
d0043290:	ed94 1a06 	vldr	s2, [r4, #24]
d0043294:	edc4 1a07 	vstr	s3, [r4, #28]
d0043298:	f7ff f8a0 	bl	d00423dc <vec3Cross>
d004329c:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d00432a0:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d00432a4:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d00432a8:	f7ff f8ae 	bl	d0042408 <vec3Normalize>
d00432ac:	edd4 1a04 	vldr	s3, [r4, #16]
d00432b0:	ed94 2a05 	vldr	s4, [r4, #20]
d00432b4:	edd4 2a06 	vldr	s5, [r4, #24]
d00432b8:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d00432bc:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d00432c0:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d00432c4:	f7ff f88a 	bl	d00423dc <vec3Cross>
d00432c8:	ed84 0a07 	vstr	s0, [r4, #28]
d00432cc:	edc4 0a08 	vstr	s1, [r4, #32]
d00432d0:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d00432d4:	f7ff f898 	bl	d0042408 <vec3Normalize>
d00432d8:	ed84 0a07 	vstr	s0, [r4, #28]
d00432dc:	edc4 0a08 	vstr	s1, [r4, #32]
d00432e0:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d00432e4:	bd10      	pop	{r4, pc}
d00432e6:	bf00      	nop

d00432e8 <meshComputeBoundsRadius>:
d00432e8:	b1f0      	cbz	r0, d0043328 <meshComputeBoundsRadius+0x40>
d00432ea:	6803      	ldr	r3, [r0, #0]
d00432ec:	b1e3      	cbz	r3, d0043328 <meshComputeBoundsRadius+0x40>
d00432ee:	6842      	ldr	r2, [r0, #4]
d00432f0:	2a00      	cmp	r2, #0
d00432f2:	dd19      	ble.n	d0043328 <meshComputeBoundsRadius+0x40>
d00432f4:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d00432f8:	ed9f 6a0d 	vldr	s12, [pc, #52]	; d0043330 <meshComputeBoundsRadius+0x48>
d00432fc:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d0043300:	edd3 7a01 	vldr	s15, [r3, #4]
d0043304:	330c      	adds	r3, #12
d0043306:	ed53 6a03 	vldr	s13, [r3, #-12]
d004330a:	ee67 7aa7 	vmul.f32	s15, s15, s15
d004330e:	ed13 7a01 	vldr	s14, [r3, #-4]
d0043312:	429a      	cmp	r2, r3
d0043314:	eee6 7aa6 	vfma.f32	s15, s13, s13
d0043318:	eee7 7a07 	vfma.f32	s15, s14, s14
d004331c:	fe86 6a27 	vmaxnm.f32	s12, s12, s15
d0043320:	d1ee      	bne.n	d0043300 <meshComputeBoundsRadius+0x18>
d0043322:	eeb1 0ac6 	vsqrt.f32	s0, s12
d0043326:	4770      	bx	lr
d0043328:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0043330 <meshComputeBoundsRadius+0x48>
d004332c:	4770      	bx	lr
d004332e:	bf00      	nop
d0043330:	00000000 	.word	0x00000000

d0043334 <entityWorldSpawn>:
d0043334:	b4f0      	push	{r4, r5, r6, r7}
d0043336:	4d20      	ldr	r5, [pc, #128]	; (d00433b8 <entityWorldSpawn+0x84>)
d0043338:	b084      	sub	sp, #16
d004333a:	2300      	movs	r3, #0
d004333c:	462a      	mov	r2, r5
d004333e:	ed8d 0a01 	vstr	s0, [sp, #4]
d0043342:	edcd 0a02 	vstr	s1, [sp, #8]
d0043346:	ed8d 1a03 	vstr	s2, [sp, #12]
d004334a:	e003      	b.n	d0043354 <entityWorldSpawn+0x20>
d004334c:	3301      	adds	r3, #1
d004334e:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d0043352:	d02b      	beq.n	d00433ac <entityWorldSpawn+0x78>
d0043354:	f892 4034 	ldrb.w	r4, [r2, #52]	; 0x34
d0043358:	3260      	adds	r2, #96	; 0x60
d004335a:	2c00      	cmp	r4, #0
d004335c:	d1f6      	bne.n	d004334c <entityWorldSpawn+0x18>
d004335e:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0043362:	4f16      	ldr	r7, [pc, #88]	; (d00433bc <entityWorldSpawn+0x88>)
d0043364:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d0043368:	2600      	movs	r6, #0
d004336a:	eb05 1542 	add.w	r5, r5, r2, lsl #5
d004336e:	f240 1c01 	movw	ip, #257	; 0x101
d0043372:	eb07 1742 	add.w	r7, r7, r2, lsl #5
d0043376:	aa04      	add	r2, sp, #16
d0043378:	60e8      	str	r0, [r5, #12]
d004337a:	61e9      	str	r1, [r5, #28]
d004337c:	62e9      	str	r1, [r5, #44]	; 0x2c
d004337e:	61a9      	str	r1, [r5, #24]
d0043380:	622e      	str	r6, [r5, #32]
d0043382:	626e      	str	r6, [r5, #36]	; 0x24
d0043384:	62ae      	str	r6, [r5, #40]	; 0x28
d0043386:	632e      	str	r6, [r5, #48]	; 0x30
d0043388:	612e      	str	r6, [r5, #16]
d004338a:	616e      	str	r6, [r5, #20]
d004338c:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0043390:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d0043394:	4618      	mov	r0, r3
d0043396:	f8a7 c014 	strh.w	ip, [r7, #20]
d004339a:	f885 4036 	strb.w	r4, [r5, #54]	; 0x36
d004339e:	63ee      	str	r6, [r5, #60]	; 0x3c
d00433a0:	642e      	str	r6, [r5, #64]	; 0x40
d00433a2:	646e      	str	r6, [r5, #68]	; 0x44
d00433a4:	63ae      	str	r6, [r5, #56]	; 0x38
d00433a6:	b004      	add	sp, #16
d00433a8:	bcf0      	pop	{r4, r5, r6, r7}
d00433aa:	4770      	bx	lr
d00433ac:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d00433b0:	4618      	mov	r0, r3
d00433b2:	b004      	add	sp, #16
d00433b4:	bcf0      	pop	{r4, r5, r6, r7}
d00433b6:	4770      	bx	lr
d00433b8:	d00e1c80 	.word	0xd00e1c80
d00433bc:	d00e1ca0 	.word	0xd00e1ca0

d00433c0 <entityMoveForward>:
d00433c0:	28ff      	cmp	r0, #255	; 0xff
d00433c2:	d82b      	bhi.n	d004341c <entityMoveForward+0x5c>
d00433c4:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d00433c8:	b510      	push	{r4, lr}
d00433ca:	4c15      	ldr	r4, [pc, #84]	; (d0043420 <entityMoveForward+0x60>)
d00433cc:	b084      	sub	sp, #16
d00433ce:	eb04 1440 	add.w	r4, r4, r0, lsl #5
d00433d2:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d00433d6:	b1fb      	cbz	r3, d0043418 <entityMoveForward+0x58>
d00433d8:	68e3      	ldr	r3, [r4, #12]
d00433da:	b1eb      	cbz	r3, d0043418 <entityMoveForward+0x58>
d00433dc:	eef0 1a40 	vmov.f32	s3, s0
d00433e0:	edd4 0a05 	vldr	s1, [r4, #20]
d00433e4:	ed94 0a04 	vldr	s0, [r4, #16]
d00433e8:	ed94 1a06 	vldr	s2, [r4, #24]
d00433ec:	f7fe ffe0 	bl	d00423b0 <vec3Scale>
d00433f0:	eef0 1a40 	vmov.f32	s3, s0
d00433f4:	eeb0 2a60 	vmov.f32	s4, s1
d00433f8:	ed94 0a00 	vldr	s0, [r4]
d00433fc:	eef0 2a41 	vmov.f32	s5, s2
d0043400:	edd4 0a01 	vldr	s1, [r4, #4]
d0043404:	ed94 1a02 	vldr	s2, [r4, #8]
d0043408:	f7fe ffc8 	bl	d004239c <vec3Add>
d004340c:	ed84 0a00 	vstr	s0, [r4]
d0043410:	edc4 0a01 	vstr	s1, [r4, #4]
d0043414:	ed84 1a02 	vstr	s2, [r4, #8]
d0043418:	b004      	add	sp, #16
d004341a:	bd10      	pop	{r4, pc}
d004341c:	4770      	bx	lr
d004341e:	bf00      	nop
d0043420:	d00e1c80 	.word	0xd00e1c80

d0043424 <entityTurnLocal>:
d0043424:	28ff      	cmp	r0, #255	; 0xff
d0043426:	d82c      	bhi.n	d0043482 <entityTurnLocal+0x5e>
d0043428:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d004342c:	b510      	push	{r4, lr}
d004342e:	4c65      	ldr	r4, [pc, #404]	; (d00435c4 <entityTurnLocal+0x1a0>)
d0043430:	eb04 1440 	add.w	r4, r4, r0, lsl #5
d0043434:	ed2d 8b04 	vpush	{d8-d9}
d0043438:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d004343c:	b1f3      	cbz	r3, d004347c <entityTurnLocal+0x58>
d004343e:	68e3      	ldr	r3, [r4, #12]
d0043440:	b1e3      	cbz	r3, d004347c <entityTurnLocal+0x58>
d0043442:	eeb5 0a40 	vcmp.f32	s0, #0.0
d0043446:	eeb0 9a40 	vmov.f32	s18, s0
d004344a:	eef0 8a60 	vmov.f32	s17, s1
d004344e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043452:	eeb0 8a41 	vmov.f32	s16, s2
d0043456:	f040 8081 	bne.w	d004355c <entityTurnLocal+0x138>
d004345a:	eef5 8a40 	vcmp.f32	s17, #0.0
d004345e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043462:	d148      	bne.n	d00434f6 <entityTurnLocal+0xd2>
d0043464:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0043468:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004346c:	d10a      	bne.n	d0043484 <entityTurnLocal+0x60>
d004346e:	4620      	mov	r0, r4
d0043470:	ecbd 8b04 	vpop	{d8-d9}
d0043474:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0043478:	f7ff bee0 	b.w	d004323c <normalizeEntity.part.0>
d004347c:	ecbd 8b04 	vpop	{d8-d9}
d0043480:	bd10      	pop	{r4, pc}
d0043482:	4770      	bx	lr
d0043484:	ed94 0a07 	vldr	s0, [r4, #28]
d0043488:	eeb0 3a48 	vmov.f32	s6, s16
d004348c:	edd4 0a08 	vldr	s1, [r4, #32]
d0043490:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0043494:	edd4 1a04 	vldr	s3, [r4, #16]
d0043498:	ed94 2a05 	vldr	s4, [r4, #20]
d004349c:	edd4 2a06 	vldr	s5, [r4, #24]
d00434a0:	f7ff f802 	bl	d00424a8 <rotateAroundAxis>
d00434a4:	eef0 6a40 	vmov.f32	s13, s0
d00434a8:	eeb0 7a60 	vmov.f32	s14, s1
d00434ac:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00434b0:	eef0 7a41 	vmov.f32	s15, s2
d00434b4:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00434b8:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00434bc:	eeb0 3a48 	vmov.f32	s6, s16
d00434c0:	edd4 1a04 	vldr	s3, [r4, #16]
d00434c4:	ed94 2a05 	vldr	s4, [r4, #20]
d00434c8:	edd4 2a06 	vldr	s5, [r4, #24]
d00434cc:	edc4 6a07 	vstr	s13, [r4, #28]
d00434d0:	ed84 7a08 	vstr	s14, [r4, #32]
d00434d4:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d00434d8:	f7fe ffe6 	bl	d00424a8 <rotateAroundAxis>
d00434dc:	4620      	mov	r0, r4
d00434de:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d00434e2:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d00434e6:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d00434ea:	ecbd 8b04 	vpop	{d8-d9}
d00434ee:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00434f2:	f7ff bea3 	b.w	d004323c <normalizeEntity.part.0>
d00434f6:	ed94 0a04 	vldr	s0, [r4, #16]
d00434fa:	eeb0 3a68 	vmov.f32	s6, s17
d00434fe:	edd4 0a05 	vldr	s1, [r4, #20]
d0043502:	ed94 1a06 	vldr	s2, [r4, #24]
d0043506:	edd4 1a07 	vldr	s3, [r4, #28]
d004350a:	ed94 2a08 	vldr	s4, [r4, #32]
d004350e:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d0043512:	f7fe ffc9 	bl	d00424a8 <rotateAroundAxis>
d0043516:	eef0 6a40 	vmov.f32	s13, s0
d004351a:	eeb0 7a60 	vmov.f32	s14, s1
d004351e:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0043522:	eef0 7a41 	vmov.f32	s15, s2
d0043526:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d004352a:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d004352e:	eeb0 3a68 	vmov.f32	s6, s17
d0043532:	edd4 1a07 	vldr	s3, [r4, #28]
d0043536:	ed94 2a08 	vldr	s4, [r4, #32]
d004353a:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d004353e:	edc4 6a04 	vstr	s13, [r4, #16]
d0043542:	ed84 7a05 	vstr	s14, [r4, #20]
d0043546:	edc4 7a06 	vstr	s15, [r4, #24]
d004354a:	f7fe ffad 	bl	d00424a8 <rotateAroundAxis>
d004354e:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0043552:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0043556:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d004355a:	e783      	b.n	d0043464 <entityTurnLocal+0x40>
d004355c:	eeb0 3a40 	vmov.f32	s6, s0
d0043560:	edd4 0a05 	vldr	s1, [r4, #20]
d0043564:	ed94 0a04 	vldr	s0, [r4, #16]
d0043568:	ed94 1a06 	vldr	s2, [r4, #24]
d004356c:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d0043570:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d0043574:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d0043578:	f7fe ff96 	bl	d00424a8 <rotateAroundAxis>
d004357c:	eef0 6a40 	vmov.f32	s13, s0
d0043580:	eeb0 7a60 	vmov.f32	s14, s1
d0043584:	ed94 0a07 	vldr	s0, [r4, #28]
d0043588:	eef0 7a41 	vmov.f32	s15, s2
d004358c:	edd4 0a08 	vldr	s1, [r4, #32]
d0043590:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0043594:	eeb0 3a49 	vmov.f32	s6, s18
d0043598:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d004359c:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d00435a0:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d00435a4:	edc4 6a04 	vstr	s13, [r4, #16]
d00435a8:	ed84 7a05 	vstr	s14, [r4, #20]
d00435ac:	edc4 7a06 	vstr	s15, [r4, #24]
d00435b0:	f7fe ff7a 	bl	d00424a8 <rotateAroundAxis>
d00435b4:	ed84 0a07 	vstr	s0, [r4, #28]
d00435b8:	edc4 0a08 	vstr	s1, [r4, #32]
d00435bc:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d00435c0:	e74b      	b.n	d004345a <entityTurnLocal+0x36>
d00435c2:	bf00      	nop
d00435c4:	d00e1c80 	.word	0xd00e1c80

d00435c8 <buildLightingCLUT>:
d00435c8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00435cc:	f1b2 0900 	subs.w	r9, r2, #0
d00435d0:	b085      	sub	sp, #20
d00435d2:	9c0e      	ldr	r4, [sp, #56]	; 0x38
d00435d4:	f340 8212 	ble.w	d00439fc <buildLightingCLUT+0x434>
d00435d8:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00435dc:	4f24      	ldr	r7, [pc, #144]	; (d0043670 <buildLightingCLUT+0xa8>)
d00435de:	eb09 0c49 	add.w	ip, r9, r9, lsl #1
d00435e2:	edd4 4a00 	vldr	s9, [r4]
d00435e6:	ed94 5a01 	vldr	s10, [r4, #4]
d00435ea:	eb09 0807 	add.w	r8, r9, r7
d00435ee:	edd4 5a02 	vldr	s11, [r4, #8]
d00435f2:	eb07 0e49 	add.w	lr, r7, r9, lsl #1
d00435f6:	ed94 6a03 	vldr	s12, [r4, #12]
d00435fa:	44bc      	add	ip, r7
d00435fc:	edd4 6a04 	vldr	s13, [r4, #16]
d0043600:	eb07 0789 	add.w	r7, r7, r9, lsl #2
d0043604:	3904      	subs	r1, #4
d0043606:	ee77 4ae4 	vsub.f32	s9, s15, s9
d004360a:	ee37 5ac5 	vsub.f32	s10, s15, s10
d004360e:	ed9f 7a19 	vldr	s14, [pc, #100]	; d0043674 <buildLightingCLUT+0xac>
d0043612:	ee77 5ae5 	vsub.f32	s11, s15, s11
d0043616:	f100 067c 	add.w	r6, r0, #124	; 0x7c
d004361a:	ee37 6ac6 	vsub.f32	s12, s15, s12
d004361e:	eb00 0888 	add.w	r8, r0, r8, lsl #2
d0043622:	ee77 6ae6 	vsub.f32	s13, s15, s13
d0043626:	eb00 0e8e 	add.w	lr, r0, lr, lsl #2
d004362a:	eb00 0c8c 	add.w	ip, r0, ip, lsl #2
d004362e:	f3c3 4507 	ubfx	r5, r3, #16, #8
d0043632:	eb00 0787 	add.w	r7, r0, r7, lsl #2
d0043636:	f3c3 2007 	ubfx	r0, r3, #8, #8
d004363a:	eb01 0989 	add.w	r9, r1, r9, lsl #2
d004363e:	fec4 4a87 	vmaxnm.f32	s9, s9, s14
d0043642:	0e1c      	lsrs	r4, r3, #24
d0043644:	fe85 5a07 	vmaxnm.f32	s10, s10, s14
d0043648:	b2da      	uxtb	r2, r3
d004364a:	fec5 5a87 	vmaxnm.f32	s11, s11, s14
d004364e:	fe86 6a07 	vmaxnm.f32	s12, s12, s14
d0043652:	fec6 6a87 	vmaxnm.f32	s13, s13, s14
d0043656:	fec4 4ae7 	vminnm.f32	s9, s9, s15
d004365a:	fe85 5a67 	vminnm.f32	s10, s10, s15
d004365e:	fec5 5ae7 	vminnm.f32	s11, s11, s15
d0043662:	fe86 6a67 	vminnm.f32	s12, s12, s15
d0043666:	fec6 6ae7 	vminnm.f32	s13, s13, s15
d004366a:	9601      	str	r6, [sp, #4]
d004366c:	e004      	b.n	d0043678 <buildLightingCLUT+0xb0>
d004366e:	bf00      	nop
d0043670:	4000001f 	.word	0x4000001f
d0043674:	00000000 	.word	0x00000000
d0043678:	f851 3f04 	ldr.w	r3, [r1, #4]!
d004367c:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0043680:	0e1e      	lsrs	r6, r3, #24
d0043682:	fa5f fa83 	uxtb.w	sl, r3
d0043686:	4549      	cmp	r1, r9
d0043688:	ee07 6a10 	vmov	s14, r6
d004368c:	eba5 060b 	sub.w	r6, r5, fp
d0043690:	ee04 ba10 	vmov	s8, fp
d0043694:	ee07 6a90 	vmov	s15, r6
d0043698:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d004369c:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d00436a0:	f3c3 2307 	ubfx	r3, r3, #8, #8
d00436a4:	ee02 6a10 	vmov	s4, r6
d00436a8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00436ac:	eba2 060a 	sub.w	r6, r2, sl
d00436b0:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00436b4:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d00436b8:	ee04 aa10 	vmov	s8, sl
d00436bc:	ee02 6a90 	vmov	s5, r6
d00436c0:	eba0 0603 	sub.w	r6, r0, r3
d00436c4:	eee4 3aa7 	vfma.f32	s7, s9, s15
d00436c8:	ee07 3a90 	vmov	s15, r3
d00436cc:	eea4 7a82 	vfma.f32	s14, s9, s4
d00436d0:	ee03 6a10 	vmov	s6, r6
d00436d4:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d00436d8:	9e01      	ldr	r6, [sp, #4]
d00436da:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00436de:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d00436e2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00436e6:	eea4 4aa2 	vfma.f32	s8, s9, s5
d00436ea:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d00436ee:	eee4 7a83 	vfma.f32	s15, s9, s6
d00436f2:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00436f6:	edcd 3a02 	vstr	s7, [sp, #8]
d00436fa:	f89d a008 	ldrb.w	sl, [sp, #8]
d00436fe:	ee17 3a10 	vmov	r3, s14
d0043702:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0043706:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d004370a:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004370e:	ed8d 7a02 	vstr	s14, [sp, #8]
d0043712:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0043716:	f89d b008 	ldrb.w	fp, [sp, #8]
d004371a:	edcd 7a03 	vstr	s15, [sp, #12]
d004371e:	ea43 030b 	orr.w	r3, r3, fp
d0043722:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0043726:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d004372a:	f846 3f04 	str.w	r3, [r6, #4]!
d004372e:	680b      	ldr	r3, [r1, #0]
d0043730:	9601      	str	r6, [sp, #4]
d0043732:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0043736:	ea4f 6613 	mov.w	r6, r3, lsr #24
d004373a:	fa5f fa83 	uxtb.w	sl, r3
d004373e:	ee07 6a10 	vmov	s14, r6
d0043742:	eba5 060b 	sub.w	r6, r5, fp
d0043746:	ee04 ba10 	vmov	s8, fp
d004374a:	ee07 6a90 	vmov	s15, r6
d004374e:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0043752:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0043756:	f3c3 2307 	ubfx	r3, r3, #8, #8
d004375a:	ee02 6a10 	vmov	s4, r6
d004375e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0043762:	eba2 060a 	sub.w	r6, r2, sl
d0043766:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004376a:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d004376e:	ee04 aa10 	vmov	s8, sl
d0043772:	ee02 6a90 	vmov	s5, r6
d0043776:	eba0 0603 	sub.w	r6, r0, r3
d004377a:	eee5 3a27 	vfma.f32	s7, s10, s15
d004377e:	ee07 3a90 	vmov	s15, r3
d0043782:	eea5 7a02 	vfma.f32	s14, s10, s4
d0043786:	ee03 6a10 	vmov	s6, r6
d004378a:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d004378e:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0043792:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0043796:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004379a:	eea5 4a22 	vfma.f32	s8, s10, s5
d004379e:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d00437a2:	eee5 7a03 	vfma.f32	s15, s10, s6
d00437a6:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00437aa:	edcd 3a02 	vstr	s7, [sp, #8]
d00437ae:	f89d a008 	ldrb.w	sl, [sp, #8]
d00437b2:	ee17 3a10 	vmov	r3, s14
d00437b6:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d00437ba:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d00437be:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00437c2:	ed8d 7a02 	vstr	s14, [sp, #8]
d00437c6:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d00437ca:	f89d b008 	ldrb.w	fp, [sp, #8]
d00437ce:	edcd 7a03 	vstr	s15, [sp, #12]
d00437d2:	ea43 030b 	orr.w	r3, r3, fp
d00437d6:	f89d a00c 	ldrb.w	sl, [sp, #12]
d00437da:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d00437de:	f848 3f04 	str.w	r3, [r8, #4]!
d00437e2:	680b      	ldr	r3, [r1, #0]
d00437e4:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d00437e8:	ea4f 6613 	mov.w	r6, r3, lsr #24
d00437ec:	fa5f fa83 	uxtb.w	sl, r3
d00437f0:	ee07 6a10 	vmov	s14, r6
d00437f4:	eba5 060b 	sub.w	r6, r5, fp
d00437f8:	ee04 ba10 	vmov	s8, fp
d00437fc:	ee07 6a90 	vmov	s15, r6
d0043800:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0043804:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0043808:	f3c3 2307 	ubfx	r3, r3, #8, #8
d004380c:	ee02 6a10 	vmov	s4, r6
d0043810:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0043814:	eba2 060a 	sub.w	r6, r2, sl
d0043818:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004381c:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0043820:	ee04 aa10 	vmov	s8, sl
d0043824:	ee02 6a90 	vmov	s5, r6
d0043828:	eba0 0603 	sub.w	r6, r0, r3
d004382c:	eee5 3aa7 	vfma.f32	s7, s11, s15
d0043830:	ee07 3a90 	vmov	s15, r3
d0043834:	eea5 7a82 	vfma.f32	s14, s11, s4
d0043838:	ee03 6a10 	vmov	s6, r6
d004383c:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0043840:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0043844:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0043848:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004384c:	eea5 4aa2 	vfma.f32	s8, s11, s5
d0043850:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0043854:	eee5 7a83 	vfma.f32	s15, s11, s6
d0043858:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d004385c:	edcd 3a02 	vstr	s7, [sp, #8]
d0043860:	f89d a008 	ldrb.w	sl, [sp, #8]
d0043864:	ee17 3a10 	vmov	r3, s14
d0043868:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d004386c:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0043870:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0043874:	ed8d 7a02 	vstr	s14, [sp, #8]
d0043878:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d004387c:	f89d b008 	ldrb.w	fp, [sp, #8]
d0043880:	edcd 7a03 	vstr	s15, [sp, #12]
d0043884:	ea43 030b 	orr.w	r3, r3, fp
d0043888:	f89d a00c 	ldrb.w	sl, [sp, #12]
d004388c:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0043890:	f84e 3f04 	str.w	r3, [lr, #4]!
d0043894:	680b      	ldr	r3, [r1, #0]
d0043896:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d004389a:	ea4f 6613 	mov.w	r6, r3, lsr #24
d004389e:	fa5f fa83 	uxtb.w	sl, r3
d00438a2:	ee07 6a10 	vmov	s14, r6
d00438a6:	eba5 060b 	sub.w	r6, r5, fp
d00438aa:	ee04 ba10 	vmov	s8, fp
d00438ae:	ee07 6a90 	vmov	s15, r6
d00438b2:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d00438b6:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d00438ba:	f3c3 2307 	ubfx	r3, r3, #8, #8
d00438be:	ee02 6a10 	vmov	s4, r6
d00438c2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00438c6:	eba2 060a 	sub.w	r6, r2, sl
d00438ca:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00438ce:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d00438d2:	ee04 aa10 	vmov	s8, sl
d00438d6:	ee02 6a90 	vmov	s5, r6
d00438da:	eba0 0603 	sub.w	r6, r0, r3
d00438de:	eee6 3a27 	vfma.f32	s7, s12, s15
d00438e2:	ee07 3a90 	vmov	s15, r3
d00438e6:	eea6 7a02 	vfma.f32	s14, s12, s4
d00438ea:	ee03 6a10 	vmov	s6, r6
d00438ee:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d00438f2:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00438f6:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d00438fa:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00438fe:	eea6 4a22 	vfma.f32	s8, s12, s5
d0043902:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0043906:	eee6 7a03 	vfma.f32	s15, s12, s6
d004390a:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d004390e:	edcd 3a02 	vstr	s7, [sp, #8]
d0043912:	f89d a008 	ldrb.w	sl, [sp, #8]
d0043916:	ee17 3a10 	vmov	r3, s14
d004391a:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d004391e:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0043922:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0043926:	ed8d 7a02 	vstr	s14, [sp, #8]
d004392a:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d004392e:	f89d b008 	ldrb.w	fp, [sp, #8]
d0043932:	edcd 7a03 	vstr	s15, [sp, #12]
d0043936:	ea43 030b 	orr.w	r3, r3, fp
d004393a:	f89d a00c 	ldrb.w	sl, [sp, #12]
d004393e:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0043942:	f84c 3f04 	str.w	r3, [ip, #4]!
d0043946:	680b      	ldr	r3, [r1, #0]
d0043948:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d004394c:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0043950:	fa5f fa83 	uxtb.w	sl, r3
d0043954:	ee07 6a10 	vmov	s14, r6
d0043958:	eba5 060b 	sub.w	r6, r5, fp
d004395c:	ee04 ba10 	vmov	s8, fp
d0043960:	ee07 6a90 	vmov	s15, r6
d0043964:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0043968:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d004396c:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0043970:	ee02 6a10 	vmov	s4, r6
d0043974:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0043978:	eba2 060a 	sub.w	r6, r2, sl
d004397c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0043980:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0043984:	ee04 aa10 	vmov	s8, sl
d0043988:	ee02 6a90 	vmov	s5, r6
d004398c:	eba0 0603 	sub.w	r6, r0, r3
d0043990:	eee6 3aa7 	vfma.f32	s7, s13, s15
d0043994:	ee07 3a90 	vmov	s15, r3
d0043998:	eea6 7a82 	vfma.f32	s14, s13, s4
d004399c:	ee03 6a10 	vmov	s6, r6
d00439a0:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00439a4:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d00439a8:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d00439ac:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00439b0:	eea6 4aa2 	vfma.f32	s8, s13, s5
d00439b4:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d00439b8:	eee6 7a83 	vfma.f32	s15, s13, s6
d00439bc:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00439c0:	edcd 3a02 	vstr	s7, [sp, #8]
d00439c4:	f89d a008 	ldrb.w	sl, [sp, #8]
d00439c8:	ee17 3a10 	vmov	r3, s14
d00439cc:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d00439d0:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d00439d4:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00439d8:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d00439dc:	ed8d 7a02 	vstr	s14, [sp, #8]
d00439e0:	f89d b008 	ldrb.w	fp, [sp, #8]
d00439e4:	edcd 7a03 	vstr	s15, [sp, #12]
d00439e8:	ea43 030b 	orr.w	r3, r3, fp
d00439ec:	f89d a00c 	ldrb.w	sl, [sp, #12]
d00439f0:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d00439f4:	f847 3f04 	str.w	r3, [r7, #4]!
d00439f8:	f47f ae3e 	bne.w	d0043678 <buildLightingCLUT+0xb0>
d00439fc:	b005      	add	sp, #20
d00439fe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0043a02:	bf00      	nop

d0043a04 <brightnessToShadeF>:
d0043a04:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0043a08:	eddf 7a09 	vldr	s15, [pc, #36]	; d0043a30 <brightnessToShadeF+0x2c>
d0043a0c:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d0043a10:	eef7 6a08 	vmov.f32	s13, #120	; 0x3fc00000  1.5
d0043a14:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d0043a18:	fec0 7a47 	vminnm.f32	s15, s0, s14
d0043a1c:	eeb1 0a04 	vmov.f32	s0, #20	; 0x40a00000  5.0
d0043a20:	eee7 6ac6 	vfms.f32	s13, s15, s12
d0043a24:	eea6 7ae7 	vfms.f32	s14, s13, s15
d0043a28:	ee27 0a00 	vmul.f32	s0, s14, s0
d0043a2c:	4770      	bx	lr
d0043a2e:	bf00      	nop
d0043a30:	00000000 	.word	0x00000000

d0043a34 <lightsGet>:
d0043a34:	4800      	ldr	r0, [pc, #0]	; (d0043a38 <lightsGet+0x4>)
d0043a36:	4770      	bx	lr
d0043a38:	d00495a0 	.word	0xd00495a0

d0043a3c <lightsGetCount>:
d0043a3c:	4b01      	ldr	r3, [pc, #4]	; (d0043a44 <lightsGetCount+0x8>)
d0043a3e:	6818      	ldr	r0, [r3, #0]
d0043a40:	4770      	bx	lr
d0043a42:	bf00      	nop
d0043a44:	d0049580 	.word	0xd0049580

d0043a48 <lightsClear>:
d0043a48:	4b01      	ldr	r3, [pc, #4]	; (d0043a50 <lightsClear+0x8>)
d0043a4a:	2200      	movs	r2, #0
d0043a4c:	601a      	str	r2, [r3, #0]
d0043a4e:	4770      	bx	lr
d0043a50:	d0049580 	.word	0xd0049580

d0043a54 <addDirectionalLight>:
d0043a54:	b5f0      	push	{r4, r5, r6, r7, lr}
d0043a56:	4f15      	ldr	r7, [pc, #84]	; (d0043aac <addDirectionalLight+0x58>)
d0043a58:	683d      	ldr	r5, [r7, #0]
d0043a5a:	2d07      	cmp	r5, #7
d0043a5c:	ed2d 8b02 	vpush	{d8}
d0043a60:	b085      	sub	sp, #20
d0043a62:	dc1f      	bgt.n	d0043aa4 <addDirectionalLight+0x50>
d0043a64:	4912      	ldr	r1, [pc, #72]	; (d0043ab0 <addDirectionalLight+0x5c>)
d0043a66:	2300      	movs	r3, #0
d0043a68:	4606      	mov	r6, r0
d0043a6a:	01aa      	lsls	r2, r5, #6
d0043a6c:	eb01 1485 	add.w	r4, r1, r5, lsl #6
d0043a70:	2001      	movs	r0, #1
d0043a72:	eeb0 8a61 	vmov.f32	s16, s3
d0043a76:	6063      	str	r3, [r4, #4]
d0043a78:	60a3      	str	r3, [r4, #8]
d0043a7a:	60e3      	str	r3, [r4, #12]
d0043a7c:	5488      	strb	r0, [r1, r2]
d0043a7e:	f7fe fcc3 	bl	d0042408 <vec3Normalize>
d0043a82:	683b      	ldr	r3, [r7, #0]
d0043a84:	ed84 8a07 	vstr	s16, [r4, #28]
d0043a88:	3301      	adds	r3, #1
d0043a8a:	62e6      	str	r6, [r4, #44]	; 0x2c
d0043a8c:	ed84 0a04 	vstr	s0, [r4, #16]
d0043a90:	edc4 0a05 	vstr	s1, [r4, #20]
d0043a94:	ed84 1a06 	vstr	s2, [r4, #24]
d0043a98:	603b      	str	r3, [r7, #0]
d0043a9a:	4628      	mov	r0, r5
d0043a9c:	b005      	add	sp, #20
d0043a9e:	ecbd 8b02 	vpop	{d8}
d0043aa2:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0043aa4:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0043aa8:	e7f7      	b.n	d0043a9a <addDirectionalLight+0x46>
d0043aaa:	bf00      	nop
d0043aac:	d0049580 	.word	0xd0049580
d0043ab0:	d00495a0 	.word	0xd00495a0

d0043ab4 <setDefaultRenderMode>:
d0043ab4:	2300      	movs	r3, #0
d0043ab6:	4803      	ldr	r0, [pc, #12]	; (d0043ac4 <setDefaultRenderMode+0x10>)
d0043ab8:	4903      	ldr	r1, [pc, #12]	; (d0043ac8 <setDefaultRenderMode+0x14>)
d0043aba:	4a04      	ldr	r2, [pc, #16]	; (d0043acc <setDefaultRenderMode+0x18>)
d0043abc:	6003      	str	r3, [r0, #0]
d0043abe:	600b      	str	r3, [r1, #0]
d0043ac0:	6013      	str	r3, [r2, #0]
d0043ac2:	4770      	bx	lr
d0043ac4:	d00557a0 	.word	0xd00557a0
d0043ac8:	d00d57c0 	.word	0xd00d57c0
d0043acc:	d00d57c4 	.word	0xd00d57c4

d0043ad0 <enableFlatMode>:
d0043ad0:	4b01      	ldr	r3, [pc, #4]	; (d0043ad8 <enableFlatMode+0x8>)
d0043ad2:	6018      	str	r0, [r3, #0]
d0043ad4:	4770      	bx	lr
d0043ad6:	bf00      	nop
d0043ad8:	d00557a0 	.word	0xd00557a0

d0043adc <clipTriangleToFrustum>:
d0043adc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0043ae0:	ed2d 8b02 	vpush	{d8}
d0043ae4:	b0ba      	sub	sp, #232	; 0xe8
d0043ae6:	ed91 7a10 	vldr	s14, [r1, #64]	; 0x40
d0043aea:	4605      	mov	r5, r0
d0043aec:	aa07      	add	r2, sp, #28
d0043aee:	ab04      	add	r3, sp, #16
d0043af0:	ed8d 0a07 	vstr	s0, [sp, #28]
d0043af4:	ac0a      	add	r4, sp, #40	; 0x28
d0043af6:	edcd 0a08 	vstr	s1, [sp, #32]
d0043afa:	af0d      	add	r7, sp, #52	; 0x34
d0043afc:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d0043b00:	ae01      	add	r6, sp, #4
d0043b02:	edcd 1a04 	vstr	s3, [sp, #16]
d0043b06:	ed8d 2a05 	vstr	s4, [sp, #20]
d0043b0a:	edcd 2a06 	vstr	s5, [sp, #24]
d0043b0e:	ed8d 4a03 	vstr	s8, [sp, #12]
d0043b12:	ed8d 3a01 	vstr	s6, [sp, #4]
d0043b16:	edcd 3a02 	vstr	s7, [sp, #8]
d0043b1a:	ca07      	ldmia	r2, {r0, r1, r2}
d0043b1c:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d0043b20:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0043b24:	ab10      	add	r3, sp, #64	; 0x40
d0043b26:	ed9d 6a0a 	vldr	s12, [sp, #40]	; 0x28
d0043b2a:	e887 0007 	stmia.w	r7, {r0, r1, r2}
d0043b2e:	e896 0007 	ldmia.w	r6, {r0, r1, r2}
d0043b32:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0043b36:	ed9d 4a12 	vldr	s8, [sp, #72]	; 0x48
d0043b3a:	eddd 5a10 	vldr	s11, [sp, #64]	; 0x40
d0043b3e:	ee34 5a47 	vsub.f32	s10, s8, s14
d0043b42:	eddd 7a0c 	vldr	s15, [sp, #48]	; 0x30
d0043b46:	eddd 1a11 	vldr	s3, [sp, #68]	; 0x44
d0043b4a:	ee77 4ac7 	vsub.f32	s9, s15, s14
d0043b4e:	eddd 6a0b 	vldr	s13, [sp, #44]	; 0x2c
d0043b52:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d0043b56:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043b5a:	eef5 4ac0 	vcmpe.f32	s9, #0.0
d0043b5e:	bfac      	ite	ge
d0043b60:	2101      	movge	r1, #1
d0043b62:	2100      	movlt	r1, #0
d0043b64:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043b68:	bfac      	ite	ge
d0043b6a:	2001      	movge	r0, #1
d0043b6c:	2000      	movlt	r0, #0
d0043b6e:	2900      	cmp	r1, #0
d0043b70:	f000 825d 	beq.w	d004402e <clipTriangleToFrustum+0x552>
d0043b74:	2800      	cmp	r0, #0
d0043b76:	f000 825a 	beq.w	d004402e <clipTriangleToFrustum+0x552>
d0043b7a:	2301      	movs	r3, #1
d0043b7c:	ed8d 6a22 	vstr	s12, [sp, #136]	; 0x88
d0043b80:	edcd 6a23 	vstr	s13, [sp, #140]	; 0x8c
d0043b84:	edcd 7a24 	vstr	s15, [sp, #144]	; 0x90
d0043b88:	eddd 3a0f 	vldr	s7, [sp, #60]	; 0x3c
d0043b8c:	f000 0201 	and.w	r2, r0, #1
d0043b90:	ed9d 2a0d 	vldr	s4, [sp, #52]	; 0x34
d0043b94:	ee33 3ac7 	vsub.f32	s6, s7, s14
d0043b98:	eddd 2a0e 	vldr	s5, [sp, #56]	; 0x38
d0043b9c:	eeb5 3ac0 	vcmpe.f32	s6, #0.0
d0043ba0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043ba4:	bfb6      	itet	lt
d0043ba6:	2200      	movlt	r2, #0
d0043ba8:	2601      	movge	r6, #1
d0043baa:	2600      	movlt	r6, #0
d0043bac:	2a00      	cmp	r2, #0
d0043bae:	f000 8277 	beq.w	d00440a0 <clipTriangleToFrustum+0x5c4>
d0043bb2:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0043bb6:	ae22      	add	r6, sp, #136	; 0x88
d0043bb8:	3301      	adds	r3, #1
d0043bba:	eb06 0080 	add.w	r0, r6, r0, lsl #2
d0043bbe:	ed80 2a00 	vstr	s4, [r0]
d0043bc2:	edc0 2a01 	vstr	s5, [r0, #4]
d0043bc6:	edc0 3a02 	vstr	s7, [r0, #8]
d0043bca:	2a00      	cmp	r2, #0
d0043bcc:	f000 828e 	beq.w	d00440ec <clipTriangleToFrustum+0x610>
d0043bd0:	2900      	cmp	r1, #0
d0043bd2:	f000 828b 	beq.w	d00440ec <clipTriangleToFrustum+0x610>
d0043bd6:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0043bda:	a922      	add	r1, sp, #136	; 0x88
d0043bdc:	3301      	adds	r3, #1
d0043bde:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d0043be2:	edc2 5a00 	vstr	s11, [r2]
d0043be6:	edc2 1a01 	vstr	s3, [r2, #4]
d0043bea:	ed82 4a02 	vstr	s8, [r2, #8]
d0043bee:	2b02      	cmp	r3, #2
d0043bf0:	f340 8216 	ble.w	d0044020 <clipTriangleToFrustum+0x544>
d0043bf4:	eb03 0643 	add.w	r6, r3, r3, lsl #1
d0043bf8:	a822      	add	r0, sp, #136	; 0x88
d0043bfa:	2300      	movs	r3, #0
d0043bfc:	00b6      	lsls	r6, r6, #2
d0043bfe:	4601      	mov	r1, r0
d0043c00:	4607      	mov	r7, r0
d0043c02:	f1a6 020c 	sub.w	r2, r6, #12
d0043c06:	4406      	add	r6, r0
d0043c08:	4402      	add	r2, r0
d0043c0a:	ed92 7a00 	vldr	s14, [r2]
d0043c0e:	edd2 7a02 	vldr	s15, [r2, #8]
d0043c12:	ed92 6a01 	vldr	s12, [r2, #4]
d0043c16:	ee77 6a27 	vadd.f32	s13, s14, s15
d0043c1a:	e009      	b.n	d0043c30 <clipTriangleToFrustum+0x154>
d0043c1c:	3301      	adds	r3, #1
d0043c1e:	ed82 7a00 	vstr	s14, [r2]
d0043c22:	ed82 6a01 	vstr	s12, [r2, #4]
d0043c26:	edc2 7a02 	vstr	s15, [r2, #8]
d0043c2a:	310c      	adds	r1, #12
d0043c2c:	428e      	cmp	r6, r1
d0043c2e:	d04e      	beq.n	d0043cce <clipTriangleToFrustum+0x1f2>
d0043c30:	eeb0 4a47 	vmov.f32	s8, s14
d0043c34:	ed91 7a00 	vldr	s14, [r1]
d0043c38:	eeb0 5a67 	vmov.f32	s10, s15
d0043c3c:	edd1 7a02 	vldr	s15, [r1, #8]
d0043c40:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043c44:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0043c48:	eef0 5a66 	vmov.f32	s11, s13
d0043c4c:	ee77 6a27 	vadd.f32	s13, s14, s15
d0043c50:	eb04 0282 	add.w	r2, r4, r2, lsl #2
d0043c54:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043c58:	eef0 4a46 	vmov.f32	s9, s12
d0043c5c:	ed91 6a01 	vldr	s12, [r1, #4]
d0043c60:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043c64:	bfac      	ite	ge
d0043c66:	2701      	movge	r7, #1
d0043c68:	2700      	movlt	r7, #0
d0043c6a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043c6e:	bfac      	ite	ge
d0043c70:	f04f 0c01 	movge.w	ip, #1
d0043c74:	f04f 0c00 	movlt.w	ip, #0
d0043c78:	b117      	cbz	r7, d0043c80 <clipTriangleToFrustum+0x1a4>
d0043c7a:	f1bc 0f00 	cmp.w	ip, #0
d0043c7e:	d1cd      	bne.n	d0043c1c <clipTriangleToFrustum+0x140>
d0043c80:	eef5 6a40 	vcmp.f32	s13, #0.0
d0043c84:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0043c88:	ee75 1ae6 	vsub.f32	s3, s11, s13
d0043c8c:	ee37 2a44 	vsub.f32	s4, s14, s8
d0043c90:	eb04 0282 	add.w	r2, r4, r2, lsl #2
d0043c94:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043c98:	ee76 2a64 	vsub.f32	s5, s12, s9
d0043c9c:	ee37 3ac5 	vsub.f32	s6, s15, s10
d0043ca0:	f140 818f 	bpl.w	d0043fc2 <clipTriangleToFrustum+0x4e6>
d0043ca4:	2f00      	cmp	r7, #0
d0043ca6:	f000 818c 	beq.w	d0043fc2 <clipTriangleToFrustum+0x4e6>
d0043caa:	eec5 3aa1 	vdiv.f32	s7, s11, s3
d0043cae:	310c      	adds	r1, #12
d0043cb0:	3301      	adds	r3, #1
d0043cb2:	428e      	cmp	r6, r1
d0043cb4:	eea2 4a23 	vfma.f32	s8, s4, s7
d0043cb8:	eee2 4aa3 	vfma.f32	s9, s5, s7
d0043cbc:	eea3 5a23 	vfma.f32	s10, s6, s7
d0043cc0:	ed82 4a00 	vstr	s8, [r2]
d0043cc4:	edc2 4a01 	vstr	s9, [r2, #4]
d0043cc8:	ed82 5a02 	vstr	s10, [r2, #8]
d0043ccc:	d1b0      	bne.n	d0043c30 <clipTriangleToFrustum+0x154>
d0043cce:	2b02      	cmp	r3, #2
d0043cd0:	f340 81a6 	ble.w	d0044020 <clipTriangleToFrustum+0x544>
d0043cd4:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0043cd8:	4626      	mov	r6, r4
d0043cda:	4627      	mov	r7, r4
d0043cdc:	2200      	movs	r2, #0
d0043cde:	009b      	lsls	r3, r3, #2
d0043ce0:	f1a3 010c 	sub.w	r1, r3, #12
d0043ce4:	4423      	add	r3, r4
d0043ce6:	4421      	add	r1, r4
d0043ce8:	edd1 7a00 	vldr	s15, [r1]
d0043cec:	ed91 7a02 	vldr	s14, [r1, #8]
d0043cf0:	ed91 6a01 	vldr	s12, [r1, #4]
d0043cf4:	ee77 6a67 	vsub.f32	s13, s14, s15
d0043cf8:	e009      	b.n	d0043d0e <clipTriangleToFrustum+0x232>
d0043cfa:	3201      	adds	r2, #1
d0043cfc:	edc1 7a00 	vstr	s15, [r1]
d0043d00:	ed81 6a01 	vstr	s12, [r1, #4]
d0043d04:	ed81 7a02 	vstr	s14, [r1, #8]
d0043d08:	370c      	adds	r7, #12
d0043d0a:	42bb      	cmp	r3, r7
d0043d0c:	d059      	beq.n	d0043dc2 <clipTriangleToFrustum+0x2e6>
d0043d0e:	eeb0 4a67 	vmov.f32	s8, s15
d0043d12:	edd7 7a00 	vldr	s15, [r7]
d0043d16:	eeb0 5a47 	vmov.f32	s10, s14
d0043d1a:	ed97 7a02 	vldr	s14, [r7, #8]
d0043d1e:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043d22:	f10d 0c88 	add.w	ip, sp, #136	; 0x88
d0043d26:	eef0 5a66 	vmov.f32	s11, s13
d0043d2a:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0043d2e:	ee77 6a67 	vsub.f32	s13, s14, s15
d0043d32:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043d36:	eb0c 0181 	add.w	r1, ip, r1, lsl #2
d0043d3a:	eef0 4a46 	vmov.f32	s9, s12
d0043d3e:	ed97 6a01 	vldr	s12, [r7, #4]
d0043d42:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043d46:	bfac      	ite	ge
d0043d48:	f04f 0c01 	movge.w	ip, #1
d0043d4c:	f04f 0c00 	movlt.w	ip, #0
d0043d50:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043d54:	bfac      	ite	ge
d0043d56:	f04f 0e01 	movge.w	lr, #1
d0043d5a:	f04f 0e00 	movlt.w	lr, #0
d0043d5e:	f1bc 0f00 	cmp.w	ip, #0
d0043d62:	d002      	beq.n	d0043d6a <clipTriangleToFrustum+0x28e>
d0043d64:	f1be 0f00 	cmp.w	lr, #0
d0043d68:	d1c7      	bne.n	d0043cfa <clipTriangleToFrustum+0x21e>
d0043d6a:	eef5 6a40 	vcmp.f32	s13, #0.0
d0043d6e:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0043d72:	ee77 3aa5 	vadd.f32	s7, s15, s11
d0043d76:	f10d 0888 	add.w	r8, sp, #136	; 0x88
d0043d7a:	ee77 1ac4 	vsub.f32	s3, s15, s8
d0043d7e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043d82:	eb08 0181 	add.w	r1, r8, r1, lsl #2
d0043d86:	ee36 2a64 	vsub.f32	s4, s12, s9
d0043d8a:	ee73 3ac7 	vsub.f32	s7, s7, s14
d0043d8e:	ee77 2a45 	vsub.f32	s5, s14, s10
d0043d92:	f140 8268 	bpl.w	d0044266 <clipTriangleToFrustum+0x78a>
d0043d96:	f1bc 0f00 	cmp.w	ip, #0
d0043d9a:	f000 8264 	beq.w	d0044266 <clipTriangleToFrustum+0x78a>
d0043d9e:	ee85 3aa3 	vdiv.f32	s6, s11, s7
d0043da2:	370c      	adds	r7, #12
d0043da4:	3201      	adds	r2, #1
d0043da6:	42bb      	cmp	r3, r7
d0043da8:	eea1 4a83 	vfma.f32	s8, s3, s6
d0043dac:	eee2 4a03 	vfma.f32	s9, s4, s6
d0043db0:	eea2 5a83 	vfma.f32	s10, s5, s6
d0043db4:	ed81 4a00 	vstr	s8, [r1]
d0043db8:	edc1 4a01 	vstr	s9, [r1, #4]
d0043dbc:	ed81 5a02 	vstr	s10, [r1, #8]
d0043dc0:	d1a5      	bne.n	d0043d0e <clipTriangleToFrustum+0x232>
d0043dc2:	2a02      	cmp	r2, #2
d0043dc4:	f340 812c 	ble.w	d0044020 <clipTriangleToFrustum+0x544>
d0043dc8:	eb02 0342 	add.w	r3, r2, r2, lsl #1
d0043dcc:	af22      	add	r7, sp, #136	; 0x88
d0043dce:	eddf 6add 	vldr	s13, [pc, #884]	; d0044144 <clipTriangleToFrustum+0x668>
d0043dd2:	2200      	movs	r2, #0
d0043dd4:	009b      	lsls	r3, r3, #2
d0043dd6:	eef0 2a66 	vmov.f32	s5, s13
d0043dda:	f1a3 010c 	sub.w	r1, r3, #12
d0043dde:	443b      	add	r3, r7
d0043de0:	4439      	add	r1, r7
d0043de2:	edd1 7a01 	vldr	s15, [r1, #4]
d0043de6:	ed91 7a02 	vldr	s14, [r1, #8]
d0043dea:	eef0 5a67 	vmov.f32	s11, s15
d0043dee:	ed91 6a00 	vldr	s12, [r1]
d0043df2:	eed7 5a26 	vfnms.f32	s11, s14, s13
d0043df6:	eef0 6a65 	vmov.f32	s13, s11
d0043dfa:	e00c      	b.n	d0043e16 <clipTriangleToFrustum+0x33a>
d0043dfc:	f1bc 0f00 	cmp.w	ip, #0
d0043e00:	d031      	beq.n	d0043e66 <clipTriangleToFrustum+0x38a>
d0043e02:	3201      	adds	r2, #1
d0043e04:	ed81 6a00 	vstr	s12, [r1]
d0043e08:	edc1 7a01 	vstr	s15, [r1, #4]
d0043e0c:	ed81 7a02 	vstr	s14, [r1, #8]
d0043e10:	300c      	adds	r0, #12
d0043e12:	4298      	cmp	r0, r3
d0043e14:	d050      	beq.n	d0043eb8 <clipTriangleToFrustum+0x3dc>
d0043e16:	eeb0 5a47 	vmov.f32	s10, s14
d0043e1a:	ed90 7a02 	vldr	s14, [r0, #8]
d0043e1e:	eef0 4a67 	vmov.f32	s9, s15
d0043e22:	edd0 7a01 	vldr	s15, [r0, #4]
d0043e26:	ee67 3a22 	vmul.f32	s7, s14, s5
d0043e2a:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0043e2e:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043e32:	eef0 5a66 	vmov.f32	s11, s13
d0043e36:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d0043e3a:	ee73 6ae7 	vsub.f32	s13, s7, s15
d0043e3e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043e42:	eeb0 4a46 	vmov.f32	s8, s12
d0043e46:	ed90 6a00 	vldr	s12, [r0]
d0043e4a:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043e4e:	bfac      	ite	ge
d0043e50:	2701      	movge	r7, #1
d0043e52:	2700      	movlt	r7, #0
d0043e54:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043e58:	bfac      	ite	ge
d0043e5a:	f04f 0c01 	movge.w	ip, #1
d0043e5e:	f04f 0c00 	movlt.w	ip, #0
d0043e62:	2f00      	cmp	r7, #0
d0043e64:	d1ca      	bne.n	d0043dfc <clipTriangleToFrustum+0x320>
d0043e66:	eef5 6a40 	vcmp.f32	s13, #0.0
d0043e6a:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0043e6e:	ee37 3aa5 	vadd.f32	s6, s15, s11
d0043e72:	ee36 1a44 	vsub.f32	s2, s12, s8
d0043e76:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d0043e7a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043e7e:	ee77 1ae4 	vsub.f32	s3, s15, s9
d0043e82:	ee33 3a63 	vsub.f32	s6, s6, s7
d0043e86:	ee37 2a45 	vsub.f32	s4, s14, s10
d0043e8a:	f140 821f 	bpl.w	d00442cc <clipTriangleToFrustum+0x7f0>
d0043e8e:	2f00      	cmp	r7, #0
d0043e90:	f000 821c 	beq.w	d00442cc <clipTriangleToFrustum+0x7f0>
d0043e94:	eec5 3a83 	vdiv.f32	s7, s11, s6
d0043e98:	300c      	adds	r0, #12
d0043e9a:	3201      	adds	r2, #1
d0043e9c:	4298      	cmp	r0, r3
d0043e9e:	eea1 4a23 	vfma.f32	s8, s2, s7
d0043ea2:	eee1 4aa3 	vfma.f32	s9, s3, s7
d0043ea6:	eea2 5a23 	vfma.f32	s10, s4, s7
d0043eaa:	ed81 4a00 	vstr	s8, [r1]
d0043eae:	edc1 4a01 	vstr	s9, [r1, #4]
d0043eb2:	ed81 5a02 	vstr	s10, [r1, #8]
d0043eb6:	d1ae      	bne.n	d0043e16 <clipTriangleToFrustum+0x33a>
d0043eb8:	2a02      	cmp	r2, #2
d0043eba:	f340 80b1 	ble.w	d0044020 <clipTriangleToFrustum+0x544>
d0043ebe:	eb02 0342 	add.w	r3, r2, r2, lsl #1
d0043ec2:	eddf 6aa0 	vldr	s13, [pc, #640]	; d0044144 <clipTriangleToFrustum+0x668>
d0043ec6:	2700      	movs	r7, #0
d0043ec8:	009b      	lsls	r3, r3, #2
d0043eca:	eef0 3a66 	vmov.f32	s7, s13
d0043ece:	f1a3 020c 	sub.w	r2, r3, #12
d0043ed2:	4423      	add	r3, r4
d0043ed4:	4414      	add	r4, r2
d0043ed6:	edd4 7a01 	vldr	s15, [r4, #4]
d0043eda:	ed94 7a02 	vldr	s14, [r4, #8]
d0043ede:	eef0 5a67 	vmov.f32	s11, s15
d0043ee2:	ed94 6a00 	vldr	s12, [r4]
d0043ee6:	eee7 5a26 	vfma.f32	s11, s14, s13
d0043eea:	eef0 6a65 	vmov.f32	s13, s11
d0043eee:	e00a      	b.n	d0043f06 <clipTriangleToFrustum+0x42a>
d0043ef0:	b380      	cbz	r0, d0043f54 <clipTriangleToFrustum+0x478>
d0043ef2:	3701      	adds	r7, #1
d0043ef4:	ed82 6a00 	vstr	s12, [r2]
d0043ef8:	edc2 7a01 	vstr	s15, [r2, #4]
d0043efc:	ed82 7a02 	vstr	s14, [r2, #8]
d0043f00:	360c      	adds	r6, #12
d0043f02:	429e      	cmp	r6, r3
d0043f04:	d04e      	beq.n	d0043fa4 <clipTriangleToFrustum+0x4c8>
d0043f06:	eef0 4a67 	vmov.f32	s9, s15
d0043f0a:	edd6 7a01 	vldr	s15, [r6, #4]
d0043f0e:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043f12:	a922      	add	r1, sp, #136	; 0x88
d0043f14:	eef0 5a66 	vmov.f32	s11, s13
d0043f18:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d0043f1c:	eef0 6a67 	vmov.f32	s13, s15
d0043f20:	eeb0 5a47 	vmov.f32	s10, s14
d0043f24:	ed96 7a02 	vldr	s14, [r6, #8]
d0043f28:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043f2c:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d0043f30:	eee7 6a23 	vfma.f32	s13, s14, s7
d0043f34:	eeb0 4a46 	vmov.f32	s8, s12
d0043f38:	ed96 6a00 	vldr	s12, [r6]
d0043f3c:	bfac      	ite	ge
d0043f3e:	2101      	movge	r1, #1
d0043f40:	2100      	movlt	r1, #0
d0043f42:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043f46:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043f4a:	bfac      	ite	ge
d0043f4c:	2001      	movge	r0, #1
d0043f4e:	2000      	movlt	r0, #0
d0043f50:	2900      	cmp	r1, #0
d0043f52:	d1cd      	bne.n	d0043ef0 <clipTriangleToFrustum+0x414>
d0043f54:	eef5 6a40 	vcmp.f32	s13, #0.0
d0043f58:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d0043f5c:	ac22      	add	r4, sp, #136	; 0x88
d0043f5e:	ee35 1ae6 	vsub.f32	s2, s11, s13
d0043f62:	ee76 1a44 	vsub.f32	s3, s12, s8
d0043f66:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043f6a:	eb04 0282 	add.w	r2, r4, r2, lsl #2
d0043f6e:	ee37 2ae4 	vsub.f32	s4, s15, s9
d0043f72:	ee77 2a45 	vsub.f32	s5, s14, s10
d0043f76:	f140 81de 	bpl.w	d0044336 <clipTriangleToFrustum+0x85a>
d0043f7a:	2900      	cmp	r1, #0
d0043f7c:	f000 81db 	beq.w	d0044336 <clipTriangleToFrustum+0x85a>
d0043f80:	ee85 3a81 	vdiv.f32	s6, s11, s2
d0043f84:	360c      	adds	r6, #12
d0043f86:	3701      	adds	r7, #1
d0043f88:	429e      	cmp	r6, r3
d0043f8a:	eea1 4a83 	vfma.f32	s8, s3, s6
d0043f8e:	eee2 4a03 	vfma.f32	s9, s4, s6
d0043f92:	eea2 5a83 	vfma.f32	s10, s5, s6
d0043f96:	ed82 4a00 	vstr	s8, [r2]
d0043f9a:	edc2 4a01 	vstr	s9, [r2, #4]
d0043f9e:	ed82 5a02 	vstr	s10, [r2, #8]
d0043fa2:	d1b0      	bne.n	d0043f06 <clipTriangleToFrustum+0x42a>
d0043fa4:	2f02      	cmp	r7, #2
d0043fa6:	dd3b      	ble.n	d0044020 <clipTriangleToFrustum+0x544>
d0043fa8:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d0043fac:	a922      	add	r1, sp, #136	; 0x88
d0043fae:	4628      	mov	r0, r5
d0043fb0:	0092      	lsls	r2, r2, #2
d0043fb2:	f001 ff8b 	bl	d0045ecc <memcpy>
d0043fb6:	4638      	mov	r0, r7
d0043fb8:	b03a      	add	sp, #232	; 0xe8
d0043fba:	ecbd 8b02 	vpop	{d8}
d0043fbe:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0043fc2:	eef5 5a40 	vcmp.f32	s11, #0.0
d0043fc6:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0043fca:	ee75 1ae6 	vsub.f32	s3, s11, s13
d0043fce:	eb04 0782 	add.w	r7, r4, r2, lsl #2
d0043fd2:	ee37 2a44 	vsub.f32	s4, s14, s8
d0043fd6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043fda:	463a      	mov	r2, r7
d0043fdc:	ee76 2a64 	vsub.f32	s5, s12, s9
d0043fe0:	ee37 3ac5 	vsub.f32	s6, s15, s10
d0043fe4:	f107 070c 	add.w	r7, r7, #12
d0043fe8:	f57f ae1f 	bpl.w	d0043c2a <clipTriangleToFrustum+0x14e>
d0043fec:	f1bc 0f00 	cmp.w	ip, #0
d0043ff0:	f43f ae1b 	beq.w	d0043c2a <clipTriangleToFrustum+0x14e>
d0043ff4:	eec5 3aa1 	vdiv.f32	s7, s11, s3
d0043ff8:	3302      	adds	r3, #2
d0043ffa:	eea2 4a23 	vfma.f32	s8, s4, s7
d0043ffe:	eee2 4aa3 	vfma.f32	s9, s5, s7
d0044002:	eea3 5a23 	vfma.f32	s10, s6, s7
d0044006:	ed82 4a00 	vstr	s8, [r2]
d004400a:	edc2 4a01 	vstr	s9, [r2, #4]
d004400e:	ed82 5a02 	vstr	s10, [r2, #8]
d0044012:	ed87 7a00 	vstr	s14, [r7]
d0044016:	ed87 6a01 	vstr	s12, [r7, #4]
d004401a:	edc7 7a02 	vstr	s15, [r7, #8]
d004401e:	e604      	b.n	d0043c2a <clipTriangleToFrustum+0x14e>
d0044020:	2700      	movs	r7, #0
d0044022:	4638      	mov	r0, r7
d0044024:	b03a      	add	sp, #232	; 0xe8
d0044026:	ecbd 8b02 	vpop	{d8}
d004402a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d004402e:	eef5 4a40 	vcmp.f32	s9, #0.0
d0044032:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044036:	f140 80b7 	bpl.w	d00441a8 <clipTriangleToFrustum+0x6cc>
d004403a:	2900      	cmp	r1, #0
d004403c:	f000 80b4 	beq.w	d00441a8 <clipTriangleToFrustum+0x6cc>
d0044040:	ee74 0a67 	vsub.f32	s1, s8, s15
d0044044:	eddd 3a0f 	vldr	s7, [sp, #60]	; 0x3c
d0044048:	ee36 8a65 	vsub.f32	s16, s12, s11
d004404c:	2301      	movs	r3, #1
d004404e:	eef0 8a65 	vmov.f32	s17, s11
d0044052:	ed9d 2a0d 	vldr	s4, [sp, #52]	; 0x34
d0044056:	ee85 1a20 	vdiv.f32	s2, s10, s1
d004405a:	eddd 2a0e 	vldr	s5, [sp, #56]	; 0x38
d004405e:	ee36 0ae1 	vsub.f32	s0, s13, s3
d0044062:	ee33 3ac7 	vsub.f32	s6, s7, s14
d0044066:	ee77 0ac4 	vsub.f32	s1, s15, s8
d004406a:	eeb5 3ac0 	vcmpe.f32	s6, #0.0
d004406e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044072:	bfac      	ite	ge
d0044074:	461e      	movge	r6, r3
d0044076:	2600      	movlt	r6, #0
d0044078:	eee1 8a08 	vfma.f32	s17, s2, s16
d004407c:	eeb0 8a68 	vmov.f32	s16, s17
d0044080:	eef0 8a61 	vmov.f32	s17, s3
d0044084:	ed8d 8a22 	vstr	s16, [sp, #136]	; 0x88
d0044088:	eee1 8a00 	vfma.f32	s17, s2, s0
d004408c:	eeb0 0a68 	vmov.f32	s0, s17
d0044090:	eef0 8a44 	vmov.f32	s17, s8
d0044094:	ed8d 0a23 	vstr	s0, [sp, #140]	; 0x8c
d0044098:	eee0 8a81 	vfma.f32	s17, s1, s2
d004409c:	edcd 8a24 	vstr	s17, [sp, #144]	; 0x90
d00440a0:	eeb5 3a40 	vcmp.f32	s6, #0.0
d00440a4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00440a8:	f140 80af 	bpl.w	d004420a <clipTriangleToFrustum+0x72e>
d00440ac:	2800      	cmp	r0, #0
d00440ae:	f000 80ac 	beq.w	d004420a <clipTriangleToFrustum+0x72e>
d00440b2:	ee37 8ae3 	vsub.f32	s16, s15, s7
d00440b6:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d00440ba:	ee32 0a46 	vsub.f32	s0, s4, s12
d00440be:	4632      	mov	r2, r6
d00440c0:	ee72 0ae6 	vsub.f32	s1, s5, s13
d00440c4:	ae22      	add	r6, sp, #136	; 0x88
d00440c6:	ee84 1a88 	vdiv.f32	s2, s9, s16
d00440ca:	3301      	adds	r3, #1
d00440cc:	eb06 0080 	add.w	r0, r6, r0, lsl #2
d00440d0:	ee73 4ae7 	vsub.f32	s9, s7, s15
d00440d4:	eea0 6a01 	vfma.f32	s12, s0, s2
d00440d8:	eee0 6a81 	vfma.f32	s13, s1, s2
d00440dc:	eee4 7a81 	vfma.f32	s15, s9, s2
d00440e0:	ed80 6a00 	vstr	s12, [r0]
d00440e4:	edc0 6a01 	vstr	s13, [r0, #4]
d00440e8:	edc0 7a02 	vstr	s15, [r0, #8]
d00440ec:	eeb5 5a40 	vcmp.f32	s10, #0.0
d00440f0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00440f4:	d528      	bpl.n	d0044148 <clipTriangleToFrustum+0x66c>
d00440f6:	b33a      	cbz	r2, d0044148 <clipTriangleToFrustum+0x66c>
d00440f8:	ee37 5a44 	vsub.f32	s10, s14, s8
d00440fc:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0044100:	ee75 5ac2 	vsub.f32	s11, s11, s4
d0044104:	a922      	add	r1, sp, #136	; 0x88
d0044106:	ee71 1ae2 	vsub.f32	s3, s3, s5
d004410a:	3301      	adds	r3, #1
d004410c:	ee35 5a03 	vadd.f32	s10, s10, s6
d0044110:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d0044114:	ee34 4a63 	vsub.f32	s8, s8, s7
d0044118:	eef0 6a42 	vmov.f32	s13, s4
d004411c:	ee83 6a05 	vdiv.f32	s12, s6, s10
d0044120:	eeb0 7a62 	vmov.f32	s14, s5
d0044124:	eef0 7a63 	vmov.f32	s15, s7
d0044128:	eee5 6a86 	vfma.f32	s13, s11, s12
d004412c:	eea1 7a86 	vfma.f32	s14, s3, s12
d0044130:	eee4 7a06 	vfma.f32	s15, s8, s12
d0044134:	edc2 6a00 	vstr	s13, [r2]
d0044138:	ed82 7a01 	vstr	s14, [r2, #4]
d004413c:	edc2 7a02 	vstr	s15, [r2, #8]
d0044140:	e555      	b.n	d0043bee <clipTriangleToFrustum+0x112>
d0044142:	bf00      	nop
d0044144:	3f2aaaab 	.word	0x3f2aaaab
d0044148:	eeb5 3a40 	vcmp.f32	s6, #0.0
d004414c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044150:	f57f ad4d 	bpl.w	d0043bee <clipTriangleToFrustum+0x112>
d0044154:	2900      	cmp	r1, #0
d0044156:	f43f ad4a 	beq.w	d0043bee <clipTriangleToFrustum+0x112>
d004415a:	ee77 7a44 	vsub.f32	s15, s14, s8
d004415e:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0044162:	ee75 6ac2 	vsub.f32	s13, s11, s4
d0044166:	a922      	add	r1, sp, #136	; 0x88
d0044168:	ee31 7ae2 	vsub.f32	s14, s3, s5
d004416c:	3302      	adds	r3, #2
d004416e:	ee77 7a83 	vadd.f32	s15, s15, s6
d0044172:	eb01 0182 	add.w	r1, r1, r2, lsl #2
d0044176:	ee34 5a63 	vsub.f32	s10, s8, s7
d004417a:	edc1 5a03 	vstr	s11, [r1, #12]
d004417e:	ee83 6a27 	vdiv.f32	s12, s6, s15
d0044182:	edc1 1a04 	vstr	s3, [r1, #16]
d0044186:	ed81 4a05 	vstr	s8, [r1, #20]
d004418a:	eef0 7a63 	vmov.f32	s15, s7
d004418e:	eea6 2a86 	vfma.f32	s4, s13, s12
d0044192:	eee7 2a06 	vfma.f32	s5, s14, s12
d0044196:	eee5 7a06 	vfma.f32	s15, s10, s12
d004419a:	ed81 2a00 	vstr	s4, [r1]
d004419e:	edc1 2a01 	vstr	s5, [r1, #4]
d00441a2:	edc1 7a02 	vstr	s15, [r1, #8]
d00441a6:	e522      	b.n	d0043bee <clipTriangleToFrustum+0x112>
d00441a8:	eeb5 5a40 	vcmp.f32	s10, #0.0
d00441ac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00441b0:	f140 80bf 	bpl.w	d0044332 <clipTriangleToFrustum+0x856>
d00441b4:	2800      	cmp	r0, #0
d00441b6:	f000 80bc 	beq.w	d0044332 <clipTriangleToFrustum+0x856>
d00441ba:	ee74 3a67 	vsub.f32	s7, s8, s15
d00441be:	2302      	movs	r3, #2
d00441c0:	ee36 2a65 	vsub.f32	s4, s12, s11
d00441c4:	ed8d 6a25 	vstr	s12, [sp, #148]	; 0x94
d00441c8:	eeb0 1a65 	vmov.f32	s2, s11
d00441cc:	edcd 6a26 	vstr	s13, [sp, #152]	; 0x98
d00441d0:	ee85 3a23 	vdiv.f32	s6, s10, s7
d00441d4:	edcd 7a27 	vstr	s15, [sp, #156]	; 0x9c
d00441d8:	ee76 2ae1 	vsub.f32	s5, s13, s3
d00441dc:	ee77 3ac4 	vsub.f32	s7, s15, s8
d00441e0:	eea3 1a02 	vfma.f32	s2, s6, s4
d00441e4:	eeb0 2a41 	vmov.f32	s4, s2
d00441e8:	eeb0 1a61 	vmov.f32	s2, s3
d00441ec:	ed8d 2a22 	vstr	s4, [sp, #136]	; 0x88
d00441f0:	eea3 1a22 	vfma.f32	s2, s6, s5
d00441f4:	eef0 2a41 	vmov.f32	s5, s2
d00441f8:	eeb0 1a44 	vmov.f32	s2, s8
d00441fc:	edcd 2a23 	vstr	s5, [sp, #140]	; 0x8c
d0044200:	eea3 1a23 	vfma.f32	s2, s6, s7
d0044204:	ed8d 1a24 	vstr	s2, [sp, #144]	; 0x90
d0044208:	e4be      	b.n	d0043b88 <clipTriangleToFrustum+0xac>
d004420a:	eef5 4ac0 	vcmpe.f32	s9, #0.0
d004420e:	f006 0201 	and.w	r2, r6, #1
d0044212:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044216:	bf58      	it	pl
d0044218:	2200      	movpl	r2, #0
d004421a:	2a00      	cmp	r2, #0
d004421c:	f000 8087 	beq.w	d004432e <clipTriangleToFrustum+0x852>
d0044220:	ee37 8ae3 	vsub.f32	s16, s15, s7
d0044224:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0044228:	ee32 0a46 	vsub.f32	s0, s4, s12
d004422c:	ae22      	add	r6, sp, #136	; 0x88
d004422e:	ee72 0ae6 	vsub.f32	s1, s5, s13
d0044232:	3302      	adds	r3, #2
d0044234:	ee84 1a88 	vdiv.f32	s2, s9, s16
d0044238:	eb06 0680 	add.w	r6, r6, r0, lsl #2
d004423c:	ed86 2a03 	vstr	s4, [r6, #12]
d0044240:	edc6 2a04 	vstr	s5, [r6, #16]
d0044244:	edc6 3a05 	vstr	s7, [r6, #20]
d0044248:	ee73 4ae7 	vsub.f32	s9, s7, s15
d004424c:	eea0 6a01 	vfma.f32	s12, s0, s2
d0044250:	eee0 6a81 	vfma.f32	s13, s1, s2
d0044254:	eee4 7a81 	vfma.f32	s15, s9, s2
d0044258:	ed86 6a00 	vstr	s12, [r6]
d004425c:	edc6 6a01 	vstr	s13, [r6, #4]
d0044260:	edc6 7a02 	vstr	s15, [r6, #8]
d0044264:	e4b1      	b.n	d0043bca <clipTriangleToFrustum+0xee>
d0044266:	eef5 5a40 	vcmp.f32	s11, #0.0
d004426a:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d004426e:	f10d 0c88 	add.w	ip, sp, #136	; 0x88
d0044272:	ee77 3aa5 	vadd.f32	s7, s15, s11
d0044276:	ee77 1ac4 	vsub.f32	s3, s15, s8
d004427a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004427e:	eb0c 0c81 	add.w	ip, ip, r1, lsl #2
d0044282:	ee36 2a64 	vsub.f32	s4, s12, s9
d0044286:	4661      	mov	r1, ip
d0044288:	ee73 3ac7 	vsub.f32	s7, s7, s14
d004428c:	ee77 2a45 	vsub.f32	s5, s14, s10
d0044290:	f10c 0c0c 	add.w	ip, ip, #12
d0044294:	f57f ad38 	bpl.w	d0043d08 <clipTriangleToFrustum+0x22c>
d0044298:	f1be 0f00 	cmp.w	lr, #0
d004429c:	f43f ad34 	beq.w	d0043d08 <clipTriangleToFrustum+0x22c>
d00442a0:	ee85 3aa3 	vdiv.f32	s6, s11, s7
d00442a4:	3202      	adds	r2, #2
d00442a6:	eea1 4a83 	vfma.f32	s8, s3, s6
d00442aa:	eee2 4a03 	vfma.f32	s9, s4, s6
d00442ae:	eea2 5a83 	vfma.f32	s10, s5, s6
d00442b2:	ed81 4a00 	vstr	s8, [r1]
d00442b6:	edc1 4a01 	vstr	s9, [r1, #4]
d00442ba:	ed81 5a02 	vstr	s10, [r1, #8]
d00442be:	edcc 7a00 	vstr	s15, [ip]
d00442c2:	ed8c 6a01 	vstr	s12, [ip, #4]
d00442c6:	ed8c 7a02 	vstr	s14, [ip, #8]
d00442ca:	e51d      	b.n	d0043d08 <clipTriangleToFrustum+0x22c>
d00442cc:	eef5 5a40 	vcmp.f32	s11, #0.0
d00442d0:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d00442d4:	ee37 3aa5 	vadd.f32	s6, s15, s11
d00442d8:	eb04 0781 	add.w	r7, r4, r1, lsl #2
d00442dc:	ee36 1a44 	vsub.f32	s2, s12, s8
d00442e0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00442e4:	4639      	mov	r1, r7
d00442e6:	ee77 1ae4 	vsub.f32	s3, s15, s9
d00442ea:	ee73 3a63 	vsub.f32	s7, s6, s7
d00442ee:	f107 070c 	add.w	r7, r7, #12
d00442f2:	ee37 2a45 	vsub.f32	s4, s14, s10
d00442f6:	f57f ad8b 	bpl.w	d0043e10 <clipTriangleToFrustum+0x334>
d00442fa:	f1bc 0f00 	cmp.w	ip, #0
d00442fe:	f43f ad87 	beq.w	d0043e10 <clipTriangleToFrustum+0x334>
d0044302:	ee85 3aa3 	vdiv.f32	s6, s11, s7
d0044306:	3202      	adds	r2, #2
d0044308:	eea1 4a03 	vfma.f32	s8, s2, s6
d004430c:	eee1 4a83 	vfma.f32	s9, s3, s6
d0044310:	eea2 5a03 	vfma.f32	s10, s4, s6
d0044314:	ed81 4a00 	vstr	s8, [r1]
d0044318:	edc1 4a01 	vstr	s9, [r1, #4]
d004431c:	ed81 5a02 	vstr	s10, [r1, #8]
d0044320:	ed87 6a00 	vstr	s12, [r7]
d0044324:	edc7 7a01 	vstr	s15, [r7, #4]
d0044328:	ed87 7a02 	vstr	s14, [r7, #8]
d004432c:	e570      	b.n	d0043e10 <clipTriangleToFrustum+0x334>
d004432e:	4632      	mov	r2, r6
d0044330:	e44b      	b.n	d0043bca <clipTriangleToFrustum+0xee>
d0044332:	2300      	movs	r3, #0
d0044334:	e428      	b.n	d0043b88 <clipTriangleToFrustum+0xac>
d0044336:	eef5 5a40 	vcmp.f32	s11, #0.0
d004433a:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d004433e:	a922      	add	r1, sp, #136	; 0x88
d0044340:	ee35 1ae6 	vsub.f32	s2, s11, s13
d0044344:	ee76 1a44 	vsub.f32	s3, s12, s8
d0044348:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004434c:	eb01 0182 	add.w	r1, r1, r2, lsl #2
d0044350:	ee37 2ae4 	vsub.f32	s4, s15, s9
d0044354:	460a      	mov	r2, r1
d0044356:	ee77 2a45 	vsub.f32	s5, s14, s10
d004435a:	f101 010c 	add.w	r1, r1, #12
d004435e:	f57f adcf 	bpl.w	d0043f00 <clipTriangleToFrustum+0x424>
d0044362:	2800      	cmp	r0, #0
d0044364:	f43f adcc 	beq.w	d0043f00 <clipTriangleToFrustum+0x424>
d0044368:	ee85 3a81 	vdiv.f32	s6, s11, s2
d004436c:	3702      	adds	r7, #2
d004436e:	eea1 4a83 	vfma.f32	s8, s3, s6
d0044372:	eee2 4a03 	vfma.f32	s9, s4, s6
d0044376:	eea2 5a83 	vfma.f32	s10, s5, s6
d004437a:	ed82 4a00 	vstr	s8, [r2]
d004437e:	edc2 4a01 	vstr	s9, [r2, #4]
d0044382:	ed82 5a02 	vstr	s10, [r2, #8]
d0044386:	ed81 6a00 	vstr	s12, [r1]
d004438a:	edc1 7a01 	vstr	s15, [r1, #4]
d004438e:	ed81 7a02 	vstr	s14, [r1, #8]
d0044392:	e5b5      	b.n	d0043f00 <clipTriangleToFrustum+0x424>

d0044394 <submitClippedTri>:
d0044394:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d0044398:	eef4 7ac1 	vcmpe.f32	s15, s2
d004439c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00443a0:	eef4 2ae7 	vcmpe.f32	s5, s15
d00443a4:	bfac      	ite	ge
d00443a6:	2301      	movge	r3, #1
d00443a8:	2300      	movlt	r3, #0
d00443aa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00443ae:	bf98      	it	ls
d00443b0:	f043 0301 	orrls.w	r3, r3, #1
d00443b4:	b923      	cbnz	r3, d00443c0 <submitClippedTri+0x2c>
d00443b6:	eef4 7ac4 	vcmpe.f32	s15, s8
d00443ba:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00443be:	db00      	blt.n	d00443c2 <submitClippedTri+0x2e>
d00443c0:	4770      	bx	lr
d00443c2:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d00443c6:	ed9f 6a69 	vldr	s12, [pc, #420]	; d004456c <submitClippedTri+0x1d8>
d00443ca:	eddf 7a69 	vldr	s15, [pc, #420]	; d0044570 <submitClippedTri+0x1dc>
d00443ce:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d00443d2:	ee60 0a86 	vmul.f32	s1, s1, s12
d00443d6:	ed9f 5a67 	vldr	s10, [pc, #412]	; d0044574 <submitClippedTri+0x1e0>
d00443da:	eec6 5aa2 	vdiv.f32	s11, s13, s5
d00443de:	ee63 3a86 	vmul.f32	s7, s7, s12
d00443e2:	ee22 2a06 	vmul.f32	s4, s4, s12
d00443e6:	eeb0 6a67 	vmov.f32	s12, s15
d00443ea:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00443ee:	ed2d 8b04 	vpush	{d8-d9}
d00443f2:	eec6 8a81 	vdiv.f32	s17, s13, s2
d00443f6:	b08b      	sub	sp, #44	; 0x2c
d00443f8:	eeb0 9a66 	vmov.f32	s18, s13
d00443fc:	ee86 8a84 	vdiv.f32	s16, s13, s8
d0044400:	eea5 6a82 	vfma.f32	s12, s11, s4
d0044404:	eea0 9a28 	vfma.f32	s18, s0, s17
d0044408:	eeb0 0a67 	vmov.f32	s0, s15
d004440c:	eebd 6ac6 	vcvt.s32.f32	s12, s12
d0044410:	eea8 0aa0 	vfma.f32	s0, s17, s1
d0044414:	eef0 0a66 	vmov.f32	s1, s13
d0044418:	ee16 3a10 	vmov	r3, s12
d004441c:	eee8 7a23 	vfma.f32	s15, s16, s7
d0044420:	eee1 0aa5 	vfma.f32	s1, s3, s11
d0044424:	eef0 1a47 	vmov.f32	s3, s14
d0044428:	eefd 5ac0 	vcvt.s32.f32	s11, s0
d004442c:	eee9 1a05 	vfma.f32	s3, s18, s10
d0044430:	ee15 6a90 	vmov	r6, s11
d0044434:	eef0 5a66 	vmov.f32	s11, s13
d0044438:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004443c:	1b9d      	subs	r5, r3, r6
d004443e:	eee3 5a08 	vfma.f32	s11, s6, s16
d0044442:	ee17 3a90 	vmov	r3, s15
d0044446:	eefd 3ae1 	vcvt.s32.f32	s7, s3
d004444a:	eba3 0c06 	sub.w	ip, r3, r6
d004444e:	ee13 7a90 	vmov	r7, s7
d0044452:	eeb0 3a65 	vmov.f32	s6, s11
d0044456:	eef0 5a47 	vmov.f32	s11, s14
d004445a:	eea3 7a05 	vfma.f32	s14, s6, s10
d004445e:	eee0 5a85 	vfma.f32	s11, s1, s10
d0044462:	eefd 7ac7 	vcvt.s32.f32	s15, s14
d0044466:	eefd 5ae5 	vcvt.s32.f32	s11, s11
d004446a:	ee15 4a90 	vmov	r4, s11
d004446e:	eba4 0e07 	sub.w	lr, r4, r7
d0044472:	ee17 4a90 	vmov	r4, s15
d0044476:	fb0c fc0e 	mul.w	ip, ip, lr
d004447a:	eba4 0e07 	sub.w	lr, r4, r7
d004447e:	fb0e c515 	mls	r5, lr, r5, ip
d0044482:	2d00      	cmp	r5, #0
d0044484:	dd6d      	ble.n	d0044562 <submitClippedTri+0x1ce>
d0044486:	f8df e0f8 	ldr.w	lr, [pc, #248]	; d0044580 <submitClippedTri+0x1ec>
d004448a:	f8de 5000 	ldr.w	r5, [lr]
d004448e:	f5b5 5f00 	cmp.w	r5, #8192	; 0x2000
d0044492:	da66      	bge.n	d0044562 <submitClippedTri+0x1ce>
d0044494:	f8df c0ec 	ldr.w	ip, [pc, #236]	; d0044584 <submitClippedTri+0x1f0>
d0044498:	ea4f 1885 	mov.w	r8, r5, lsl #6
d004449c:	f105 0b01 	add.w	fp, r5, #1
d00444a0:	ed9f 5a35 	vldr	s10, [pc, #212]	; d0044578 <submitClippedTri+0x1e4>
d00444a4:	f848 700c 	str.w	r7, [r8, ip]
d00444a8:	eb0c 1585 	add.w	r5, ip, r5, lsl #6
d00444ac:	f108 0a08 	add.w	sl, r8, #8
d00444b0:	f108 0910 	add.w	r9, r8, #16
d00444b4:	ee15 7a90 	vmov	r7, s11
d00444b8:	606e      	str	r6, [r5, #4]
d00444ba:	eb0a 060c 	add.w	r6, sl, ip
d00444be:	f8ce b000 	str.w	fp, [lr]
d00444c2:	f84a 700c 	str.w	r7, [sl, ip]
d00444c6:	eb09 070c 	add.w	r7, r9, ip
d00444ca:	ed86 6a01 	vstr	s12, [r6, #4]
d00444ce:	f849 400c 	str.w	r4, [r9, ip]
d00444d2:	607b      	str	r3, [r7, #4]
d00444d4:	f885 1034 	strb.w	r1, [r5, #52]	; 0x34
d00444d8:	f885 2035 	strb.w	r2, [r5, #53]	; 0x35
d00444dc:	edc5 4a07 	vstr	s9, [r5, #28]
d00444e0:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d00444e4:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d00444e8:	ee31 7a47 	vsub.f32	s14, s2, s14
d00444ec:	ed9f 6a23 	vldr	s12, [pc, #140]	; d004457c <submitClippedTri+0x1e8>
d00444f0:	ee27 7a27 	vmul.f32	s14, s14, s15
d00444f4:	fe87 7a05 	vmaxnm.f32	s14, s14, s10
d00444f8:	fe87 7a66 	vminnm.f32	s14, s14, s13
d00444fc:	ee27 7a06 	vmul.f32	s14, s14, s12
d0044500:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0044504:	ee17 3a10 	vmov	r3, s14
d0044508:	842b      	strh	r3, [r5, #32]
d004450a:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d004450e:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0044512:	ee32 7ac7 	vsub.f32	s14, s5, s14
d0044516:	ee27 7a27 	vmul.f32	s14, s14, s15
d004451a:	fe87 7a05 	vmaxnm.f32	s14, s14, s10
d004451e:	fe87 7a66 	vminnm.f32	s14, s14, s13
d0044522:	ee27 7a06 	vmul.f32	s14, s14, s12
d0044526:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d004452a:	ee17 3a10 	vmov	r3, s14
d004452e:	846b      	strh	r3, [r5, #34]	; 0x22
d0044530:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d0044534:	ed90 7a0f 	vldr	s14, [r0, #60]	; 0x3c
d0044538:	ee74 7a67 	vsub.f32	s15, s8, s15
d004453c:	ed85 1a0a 	vstr	s2, [r5, #40]	; 0x28
d0044540:	edc5 2a0b 	vstr	s5, [r5, #44]	; 0x2c
d0044544:	ed85 4a0c 	vstr	s8, [r5, #48]	; 0x30
d0044548:	ee67 7a87 	vmul.f32	s15, s15, s14
d004454c:	fec7 7a85 	vmaxnm.f32	s15, s15, s10
d0044550:	fec7 6ae6 	vminnm.f32	s13, s15, s13
d0044554:	ee66 6a86 	vmul.f32	s13, s13, s12
d0044558:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d004455c:	ee16 3a90 	vmov	r3, s13
d0044560:	84ab      	strh	r3, [r5, #36]	; 0x24
d0044562:	b00b      	add	sp, #44	; 0x2c
d0044564:	ecbd 8b04 	vpop	{d8-d9}
d0044568:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004456c:	c3700000 	.word	0xc3700000
d0044570:	43208000 	.word	0x43208000
d0044574:	43700000 	.word	0x43700000
d0044578:	00000000 	.word	0x00000000
d004457c:	477fff00 	.word	0x477fff00
d0044580:	d00557a4 	.word	0xd00557a4
d0044584:	d00557c0 	.word	0xd00557c0

d0044588 <drawFakeHorizonDots>:
d0044588:	2800      	cmp	r0, #0
d004458a:	f000 80f2 	beq.w	d0044772 <drawFakeHorizonDots+0x1ea>
d004458e:	2a02      	cmp	r2, #2
d0044590:	edd0 7a02 	vldr	s15, [r0, #8]
d0044594:	ed90 6a01 	vldr	s12, [r0, #4]
d0044598:	bfb8      	it	lt
d004459a:	2202      	movlt	r2, #2
d004459c:	eddf 5a75 	vldr	s11, [pc, #468]	; d0044774 <drawFakeHorizonDots+0x1ec>
d00445a0:	edd0 6a0d 	vldr	s13, [r0, #52]	; 0x34
d00445a4:	ee07 2a10 	vmov	s14, r2
d00445a8:	edd0 4a10 	vldr	s9, [r0, #64]	; 0x40
d00445ac:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00445b0:	ed2d 8b10 	vpush	{d8-d15}
d00445b4:	eef8 9ac7 	vcvt.f32.s32	s19, s14
d00445b8:	ed90 aa00 	vldr	s20, [r0]
d00445bc:	b085      	sub	sp, #20
d00445be:	4617      	mov	r7, r2
d00445c0:	468b      	mov	fp, r1
d00445c2:	496d      	ldr	r1, [pc, #436]	; (d0044778 <drawFakeHorizonDots+0x1f0>)
d00445c4:	ee8a 7a29 	vdiv.f32	s14, s20, s19
d00445c8:	edcd 7a01 	vstr	s15, [sp, #4]
d00445cc:	4e6b      	ldr	r6, [pc, #428]	; (d004477c <drawFakeHorizonDots+0x1f4>)
d00445ce:	4698      	mov	r8, r3
d00445d0:	ed90 ca07 	vldr	s24, [r0, #28]
d00445d4:	edd0 ba0a 	vldr	s23, [r0, #40]	; 0x28
d00445d8:	4c69      	ldr	r4, [pc, #420]	; (d0044780 <drawFakeHorizonDots+0x1f8>)
d00445da:	eec7 7aa9 	vdiv.f32	s15, s15, s19
d00445de:	edd0 fa06 	vldr	s31, [r0, #24]
d00445e2:	ed90 fa08 	vldr	s30, [r0, #32]
d00445e6:	edd0 ea09 	vldr	s29, [r0, #36]	; 0x24
d00445ea:	ed90 ea0b 	vldr	s28, [r0, #44]	; 0x2c
d00445ee:	edd0 da0c 	vldr	s27, [r0, #48]	; 0x30
d00445f2:	ee30 ba46 	vsub.f32	s22, s0, s12
d00445f6:	ed90 da0e 	vldr	s26, [r0, #56]	; 0x38
d00445fa:	ee69 9aa5 	vmul.f32	s19, s19, s11
d00445fe:	ed9f 8a61 	vldr	s16, [pc, #388]	; d0044784 <drawFakeHorizonDots+0x1fc>
d0044602:	4b61      	ldr	r3, [pc, #388]	; (d0044788 <drawFakeHorizonDots+0x200>)
d0044604:	ee2b ca0c 	vmul.f32	s24, s22, s24
d0044608:	eddf ca60 	vldr	s25, [pc, #384]	; d004478c <drawFakeHorizonDots+0x204>
d004460c:	ee6b ba2b 	vmul.f32	s23, s22, s23
d0044610:	eddf 8a5f 	vldr	s17, [pc, #380]	; d0044790 <drawFakeHorizonDots+0x208>
d0044614:	ee29 8a88 	vmul.f32	s16, s19, s16
d0044618:	f8df 9184 	ldr.w	r9, [pc, #388]	; d00447a0 <drawFakeHorizonDots+0x218>
d004461c:	febb 7a47 	vrintm.f32	s14, s14
d0044620:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0044624:	ee2b ba26 	vmul.f32	s22, s22, s13
d0044628:	ee17 2a10 	vmov	r2, s14
d004462c:	fefb 7a67 	vrintm.f32	s15, s15
d0044630:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0044634:	fb01 f002 	mul.w	r0, r1, r2
d0044638:	f1a2 0112 	sub.w	r1, r2, #18
d004463c:	ee17 2a90 	vmov	r2, s15
d0044640:	4404      	add	r4, r0
d0044642:	fb07 f101 	mul.w	r1, r7, r1
d0044646:	f1a2 0a12 	sub.w	sl, r2, #18
d004464a:	fb06 0202 	mla	r2, r6, r2, r0
d004464e:	9103      	str	r1, [sp, #12]
d0044650:	fb06 460a 	mla	r6, r6, sl, r4
d0044654:	18d3      	adds	r3, r2, r3
d0044656:	fb0a fa07 	mul.w	sl, sl, r7
d004465a:	9302      	str	r3, [sp, #8]
d004465c:	eddd 7a01 	vldr	s15, [sp, #4]
d0044660:	4c4c      	ldr	r4, [pc, #304]	; (d0044794 <drawFakeHorizonDots+0x20c>)
d0044662:	ee37 9aa9 	vadd.f32	s18, s15, s19
d0044666:	ee07 aa90 	vmov	s15, sl
d004466a:	1934      	adds	r4, r6, r4
d004466c:	9d03      	ldr	r5, [sp, #12]
d004466e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0044672:	eddf aa49 	vldr	s21, [pc, #292]	; d0044798 <drawFakeHorizonDots+0x210>
d0044676:	ee37 9ac9 	vsub.f32	s18, s15, s18
d004467a:	ea84 3354 	eor.w	r3, r4, r4, lsr #13
d004467e:	ee07 5a90 	vmov	s15, r5
d0044682:	f104 54b2 	add.w	r4, r4, #373293056	; 0x16400000
d0044686:	eef0 3a49 	vmov.f32	s7, s18
d004468a:	fb09 f303 	mul.w	r3, r9, r3
d004468e:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d0044692:	ee7a 7a29 	vadd.f32	s15, s20, s19
d0044696:	f504 14b3 	add.w	r4, r4, #1466368	; 0x166000
d004469a:	ea83 4313 	eor.w	r3, r3, r3, lsr #16
d004469e:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d00446a2:	eddf 5a3e 	vldr	s11, [pc, #248]	; d004479c <drawFakeHorizonDots+0x214>
d00446a6:	443d      	add	r5, r7
d00446a8:	f3c3 4207 	ubfx	r2, r3, #16, #8
d00446ac:	ee77 7a67 	vsub.f32	s15, s14, s15
d00446b0:	f204 74b1 	addw	r4, r4, #1969	; 0x7b1
d00446b4:	ee07 2a10 	vmov	s14, r2
d00446b8:	f3c3 2207 	ubfx	r2, r3, #8, #8
d00446bc:	b2db      	uxtb	r3, r3
d00446be:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00446c2:	ee06 2a90 	vmov	s13, r2
d00446c6:	4543      	cmp	r3, r8
d00446c8:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d00446cc:	eee7 3a08 	vfma.f32	s7, s14, s16
d00446d0:	d83d      	bhi.n	d004474e <drawFakeHorizonDots+0x1c6>
d00446d2:	eee6 7a88 	vfma.f32	s15, s13, s16
d00446d6:	ee2d 6a23 	vmul.f32	s12, s26, s7
d00446da:	ee2e 7aa7 	vmul.f32	s14, s29, s15
d00446de:	eead 6aa7 	vfma.f32	s12, s27, s15
d00446e2:	ee6f 6aa7 	vmul.f32	s13, s31, s15
d00446e6:	eef0 7a47 	vmov.f32	s15, s14
d00446ea:	eeef 6a23 	vfma.f32	s13, s30, s7
d00446ee:	eeee 7a23 	vfma.f32	s15, s28, s7
d00446f2:	ee3b 6a06 	vadd.f32	s12, s22, s12
d00446f6:	eef4 4ac6 	vcmpe.f32	s9, s12
d00446fa:	ee3c 7a26 	vadd.f32	s14, s24, s13
d00446fe:	ee7b 7aa7 	vadd.f32	s15, s23, s15
d0044702:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044706:	ee27 7a2c 	vmul.f32	s14, s14, s25
d004470a:	ee67 7aaa 	vmul.f32	s15, s15, s21
d004470e:	da1e      	bge.n	d004474e <drawFakeHorizonDots+0x1c6>
d0044710:	eec5 6a06 	vdiv.f32	s13, s10, s12
d0044714:	eeb0 6a68 	vmov.f32	s12, s17
d0044718:	eea7 6a26 	vfma.f32	s12, s14, s13
d004471c:	eee7 5aa6 	vfma.f32	s11, s15, s13
d0044720:	eefd 7ac6 	vcvt.s32.f32	s15, s12
d0044724:	eefd 5ae5 	vcvt.s32.f32	s11, s11
d0044728:	ee17 0a90 	vmov	r0, s15
d004472c:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0044730:	d20d      	bcs.n	d004474e <drawFakeHorizonDots+0x1c6>
d0044732:	ee15 3a90 	vmov	r3, s11
d0044736:	465a      	mov	r2, fp
d0044738:	ee15 1a90 	vmov	r1, s11
d004473c:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0044740:	d205      	bcs.n	d004474e <drawFakeHorizonDots+0x1c6>
d0044742:	edcd 4a00 	vstr	s9, [sp]
d0044746:	f7fc f81d 	bl	d0040784 <putPixel>
d004474a:	eddd 4a00 	vldr	s9, [sp]
d004474e:	42b4      	cmp	r4, r6
d0044750:	d193      	bne.n	d004467a <drawFakeHorizonDots+0xf2>
d0044752:	f106 561f 	add.w	r6, r6, #666894336	; 0x27c00000
d0044756:	9b02      	ldr	r3, [sp, #8]
d0044758:	44ba      	add	sl, r7
d004475a:	f506 16a7 	add.w	r6, r6, #1368064	; 0x14e000
d004475e:	f606 362f 	addw	r6, r6, #2863	; 0xb2f
d0044762:	42b3      	cmp	r3, r6
d0044764:	f47f af7a 	bne.w	d004465c <drawFakeHorizonDots+0xd4>
d0044768:	b005      	add	sp, #20
d004476a:	ecbd 8b10 	vpop	{d8-d15}
d004476e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0044772:	4770      	bx	lr
d0044774:	3eb33333 	.word	0x3eb33333
d0044778:	165667b1 	.word	0x165667b1
d004477c:	27d4eb2f 	.word	0x27d4eb2f
d0044780:	a869b223 	.word	0xa869b223
d0044784:	3c008081 	.word	0x3c008081
d0044788:	9d3726a0 	.word	0x9d3726a0
d004478c:	43700000 	.word	0x43700000
d0044790:	43708000 	.word	0x43708000
d0044794:	c583036b 	.word	0xc583036b
d0044798:	c3700000 	.word	0xc3700000
d004479c:	43208000 	.word	0x43208000
d00447a0:	4bf19f61 	.word	0x4bf19f61

d00447a4 <drawFakeHorizon>:
d00447a4:	2800      	cmp	r0, #0
d00447a6:	f000 813c 	beq.w	d0044a22 <drawFakeHorizon+0x27e>
d00447aa:	ed9f 7aa2 	vldr	s14, [pc, #648]	; d0044a34 <drawFakeHorizon+0x290>
d00447ae:	eddf 6aa2 	vldr	s13, [pc, #648]	; d0044a38 <drawFakeHorizon+0x294>
d00447b2:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00447b6:	ed2d 8b0c 	vpush	{d8-d13}
d00447ba:	ed90 da0a 	vldr	s26, [r0, #40]	; 0x28
d00447be:	eeb0 ca47 	vmov.f32	s24, s14
d00447c2:	ed9f 9a9e 	vldr	s18, [pc, #632]	; d0044a3c <drawFakeHorizon+0x298>
d00447c6:	b083      	sub	sp, #12
d00447c8:	edd0 ba0d 	vldr	s23, [r0, #52]	; 0x34
d00447cc:	eeb0 bacd 	vabs.f32	s22, s26
d00447d0:	ee6d 7a09 	vmul.f32	s15, s26, s18
d00447d4:	eddf 9a9a 	vldr	s19, [pc, #616]	; d0044a40 <drawFakeHorizon+0x29c>
d00447d8:	eef0 aa6b 	vmov.f32	s21, s23
d00447dc:	edd0 da07 	vldr	s27, [r0, #28]
d00447e0:	eeb0 aa6b 	vmov.f32	s20, s23
d00447e4:	edd0 8a01 	vldr	s17, [r0, #4]
d00447e8:	eec9 ca8d 	vdiv.f32	s25, s19, s26
d00447ec:	460f      	mov	r7, r1
d00447ee:	4690      	mov	r8, r2
d00447f0:	4699      	mov	r9, r3
d00447f2:	2400      	movs	r4, #0
d00447f4:	4e93      	ldr	r6, [pc, #588]	; (d0044a44 <drawFakeHorizon+0x2a0>)
d00447f6:	ed9f 8a94 	vldr	s16, [pc, #592]	; d0044a48 <drawFakeHorizon+0x2a4>
d00447fa:	eee7 aa87 	vfma.f32	s21, s15, s14
d00447fe:	eea7 aaa6 	vfma.f32	s20, s15, s13
d0044802:	ee2d 9a89 	vmul.f32	s18, s27, s18
d0044806:	ee70 8a68 	vsub.f32	s17, s0, s17
d004480a:	e056      	b.n	d00448ba <drawFakeHorizon+0x116>
d004480c:	ee88 6aa6 	vdiv.f32	s12, s17, s13
d0044810:	eef0 6ac7 	vabs.f32	s13, s14
d0044814:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d0044818:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004481c:	eef4 6ac8 	vcmpe.f32	s13, s16
d0044820:	bfcc      	ite	gt
d0044822:	2201      	movgt	r2, #1
d0044824:	2200      	movle	r2, #0
d0044826:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004482a:	da61      	bge.n	d00448f0 <drawFakeHorizon+0x14c>
d004482c:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d0044830:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d0044834:	6833      	ldr	r3, [r6, #0]
d0044836:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004483a:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d004483e:	f240 80a8 	bls.w	d0044992 <drawFakeHorizon+0x1ee>
d0044842:	eeb4 bac8 	vcmpe.f32	s22, s16
d0044846:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004484a:	f100 809a 	bmi.w	d0044982 <drawFakeHorizon+0x1de>
d004484e:	ee7b 7aa7 	vadd.f32	s15, s23, s15
d0044852:	eeb0 7a4c 	vmov.f32	s14, s24
d0044856:	eeac 7aa7 	vfma.f32	s14, s25, s15
d004485a:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d004485e:	ee17 ba90 	vmov	fp, s15
d0044862:	f1bb 0f00 	cmp.w	fp, #0
d0044866:	f2c0 80aa 	blt.w	d00449be <drawFakeHorizon+0x21a>
d004486a:	2201      	movs	r2, #1
d004486c:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d0044870:	46da      	mov	sl, fp
d0044872:	bfa8      	it	ge
d0044874:	f44f 7aa0 	movge.w	sl, #320	; 0x140
d0044878:	2a00      	cmp	r2, #0
d004487a:	f000 8091 	beq.w	d00449a0 <drawFakeHorizon+0x1fc>
d004487e:	f1bb 0f00 	cmp.w	fp, #0
d0044882:	d009      	beq.n	d0044898 <drawFakeHorizon+0xf4>
d0044884:	f1ba 0f00 	cmp.w	sl, #0
d0044888:	4628      	mov	r0, r5
d004488a:	4641      	mov	r1, r8
d004488c:	bfcc      	ite	gt
d004488e:	4652      	movgt	r2, sl
d0044890:	2201      	movle	r2, #1
d0044892:	4415      	add	r5, r2
d0044894:	f001 fb28 	bl	d0045ee8 <memset>
d0044898:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d004489c:	d009      	beq.n	d00448b2 <drawFakeHorizon+0x10e>
d004489e:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d00448a2:	f5ca 72a0 	rsb	r2, sl, #320	; 0x140
d00448a6:	4628      	mov	r0, r5
d00448a8:	4639      	mov	r1, r7
d00448aa:	bfa8      	it	ge
d00448ac:	2201      	movge	r2, #1
d00448ae:	f001 fb1b 	bl	d0045ee8 <memset>
d00448b2:	3401      	adds	r4, #1
d00448b4:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d00448b8:	d04e      	beq.n	d0044958 <drawFakeHorizon+0x1b4>
d00448ba:	ee07 4a90 	vmov	s15, r4
d00448be:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00448c2:	ee77 7ae9 	vsub.f32	s15, s15, s19
d00448c6:	ee67 7a89 	vmul.f32	s15, s15, s18
d00448ca:	ee77 6aaa 	vadd.f32	s13, s15, s21
d00448ce:	ee3a 7a27 	vadd.f32	s14, s20, s15
d00448d2:	eeb0 6ae6 	vabs.f32	s12, s13
d00448d6:	eeb4 6ac8 	vcmpe.f32	s12, s16
d00448da:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00448de:	da95      	bge.n	d004480c <drawFakeHorizon+0x68>
d00448e0:	eef0 6ac7 	vabs.f32	s13, s14
d00448e4:	eef4 6ac8 	vcmpe.f32	s13, s16
d00448e8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00448ec:	db4c      	blt.n	d0044988 <drawFakeHorizon+0x1e4>
d00448ee:	2200      	movs	r2, #0
d00448f0:	eec8 6a87 	vdiv.f32	s13, s17, s14
d00448f4:	6833      	ldr	r3, [r6, #0]
d00448f6:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d00448fa:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d00448fe:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0044902:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044906:	bfcc      	ite	gt
d0044908:	2301      	movgt	r3, #1
d004490a:	2300      	movle	r3, #0
d004490c:	4293      	cmp	r3, r2
d004490e:	f000 8089 	beq.w	d0044a24 <drawFakeHorizon+0x280>
d0044912:	eeb4 bac8 	vcmpe.f32	s22, s16
d0044916:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004491a:	d429      	bmi.n	d0044970 <drawFakeHorizon+0x1cc>
d004491c:	ee7b 7aa7 	vadd.f32	s15, s23, s15
d0044920:	eeb0 7a4c 	vmov.f32	s14, s24
d0044924:	eeac 7aa7 	vfma.f32	s14, s25, s15
d0044928:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d004492c:	ee17 ba90 	vmov	fp, s15
d0044930:	f1bb 0f00 	cmp.w	fp, #0
d0044934:	da9a      	bge.n	d004486c <drawFakeHorizon+0xc8>
d0044936:	2a00      	cmp	r2, #0
d0044938:	d141      	bne.n	d00449be <drawFakeHorizon+0x21a>
d004493a:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d004493e:	f104 0401 	add.w	r4, r4, #1
d0044942:	f5c2 72a0 	rsb	r2, r2, #320	; 0x140
d0044946:	4628      	mov	r0, r5
d0044948:	bfa8      	it	ge
d004494a:	2201      	movge	r2, #1
d004494c:	4641      	mov	r1, r8
d004494e:	f001 facb 	bl	d0045ee8 <memset>
d0044952:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d0044956:	d1b0      	bne.n	d00448ba <drawFakeHorizon+0x116>
d0044958:	eddf 7a3b 	vldr	s15, [pc, #236]	; d0044a48 <drawFakeHorizon+0x2a4>
d004495c:	eeb4 bae7 	vcmpe.f32	s22, s15
d0044960:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044964:	da31      	bge.n	d00449ca <drawFakeHorizon+0x226>
d0044966:	b003      	add	sp, #12
d0044968:	ecbd 8b0c 	vpop	{d8-d13}
d004496c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0044970:	b93a      	cbnz	r2, d0044982 <drawFakeHorizon+0x1de>
d0044972:	22a0      	movs	r2, #160	; 0xa0
d0044974:	4628      	mov	r0, r5
d0044976:	4639      	mov	r1, r7
d0044978:	4415      	add	r5, r2
d004497a:	f001 fab5 	bl	d0045ee8 <memset>
d004497e:	22a0      	movs	r2, #160	; 0xa0
d0044980:	e7db      	b.n	d004493a <drawFakeHorizon+0x196>
d0044982:	f04f 0aa0 	mov.w	sl, #160	; 0xa0
d0044986:	e77d      	b.n	d0044884 <drawFakeHorizon+0xe0>
d0044988:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d004498c:	6832      	ldr	r2, [r6, #0]
d004498e:	eb02 1585 	add.w	r5, r2, r5, lsl #6
d0044992:	4639      	mov	r1, r7
d0044994:	4628      	mov	r0, r5
d0044996:	f44f 72a0 	mov.w	r2, #320	; 0x140
d004499a:	f001 faa5 	bl	d0045ee8 <memset>
d004499e:	e788      	b.n	d00448b2 <drawFakeHorizon+0x10e>
d00449a0:	f1bb 0f00 	cmp.w	fp, #0
d00449a4:	d00e      	beq.n	d00449c4 <drawFakeHorizon+0x220>
d00449a6:	4628      	mov	r0, r5
d00449a8:	4652      	mov	r2, sl
d00449aa:	4639      	mov	r1, r7
d00449ac:	4455      	add	r5, sl
d00449ae:	f001 fa9b 	bl	d0045ee8 <memset>
d00449b2:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d00449b6:	f6bf af7c 	bge.w	d00448b2 <drawFakeHorizon+0x10e>
d00449ba:	4652      	mov	r2, sl
d00449bc:	e7bd      	b.n	d004493a <drawFakeHorizon+0x196>
d00449be:	f04f 0a00 	mov.w	sl, #0
d00449c2:	e76c      	b.n	d004489e <drawFakeHorizon+0xfa>
d00449c4:	46da      	mov	sl, fp
d00449c6:	4652      	mov	r2, sl
d00449c8:	e7b7      	b.n	d004493a <drawFakeHorizon+0x196>
d00449ca:	ed9f 7a1d 	vldr	s14, [pc, #116]	; d0044a40 <drawFakeHorizon+0x29c>
d00449ce:	f240 12df 	movw	r2, #479	; 0x1df
d00449d2:	eddf 7a1e 	vldr	s15, [pc, #120]	; d0044a4c <drawFakeHorizon+0x2a8>
d00449d6:	2000      	movs	r0, #0
d00449d8:	ee6b ba87 	vmul.f32	s23, s23, s14
d00449dc:	ed9f 7a1c 	vldr	s14, [pc, #112]	; d0044a50 <drawFakeHorizon+0x2ac>
d00449e0:	eddf 6a14 	vldr	s13, [pc, #80]	; d0044a34 <drawFakeHorizon+0x290>
d00449e4:	f8cd 9000 	str.w	r9, [sp]
d00449e8:	eeb0 6a6b 	vmov.f32	s12, s23
d00449ec:	eeed ba87 	vfma.f32	s23, s27, s14
d00449f0:	eead 6aa7 	vfma.f32	s12, s27, s15
d00449f4:	eecb 7a8d 	vdiv.f32	s15, s23, s26
d00449f8:	ee86 7a0d 	vdiv.f32	s14, s12, s26
d00449fc:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0044a00:	fefc 7ae7 	vcvta.s32.f32	s15, s15
d0044a04:	ee37 7a26 	vadd.f32	s14, s14, s13
d0044a08:	ee17 3a90 	vmov	r3, s15
d0044a0c:	febc 7ac7 	vcvta.s32.f32	s14, s14
d0044a10:	ee17 1a10 	vmov	r1, s14
d0044a14:	f7fb fec6 	bl	d00407a4 <drawLine>
d0044a18:	b003      	add	sp, #12
d0044a1a:	ecbd 8b0c 	vpop	{d8-d13}
d0044a1e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0044a22:	4770      	bx	lr
d0044a24:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0044a28:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044a2c:	ddb1      	ble.n	d0044992 <drawFakeHorizon+0x1ee>
d0044a2e:	4641      	mov	r1, r8
d0044a30:	e7b0      	b.n	d0044994 <drawFakeHorizon+0x1f0>
d0044a32:	bf00      	nop
d0044a34:	43200000 	.word	0x43200000
d0044a38:	c31f0000 	.word	0xc31f0000
d0044a3c:	3b888889 	.word	0x3b888889
d0044a40:	43700000 	.word	0x43700000
d0044a44:	d00e1c64 	.word	0xd00e1c64
d0044a48:	38d1b717 	.word	0x38d1b717
d0044a4c:	c3700000 	.word	0xc3700000
d0044a50:	436f0000 	.word	0x436f0000

d0044a54 <submitEntitySolid>:
d0044a54:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0044a58:	ed2d 8b10 	vpush	{d8-d15}
d0044a5c:	b0b3      	sub	sp, #204	; 0xcc
d0044a5e:	f10d 036f 	add.w	r3, sp, #111	; 0x6f
d0044a62:	9104      	str	r1, [sp, #16]
d0044a64:	f023 031f 	bic.w	r3, r3, #31
d0044a68:	9305      	str	r3, [sp, #20]
d0044a6a:	2800      	cmp	r0, #0
d0044a6c:	f000 827c 	beq.w	d0044f68 <submitEntitySolid+0x514>
d0044a70:	f8d0 800c 	ldr.w	r8, [r0, #12]
d0044a74:	4604      	mov	r4, r0
d0044a76:	f1b8 0f00 	cmp.w	r8, #0
d0044a7a:	f000 8275 	beq.w	d0044f68 <submitEntitySolid+0x514>
d0044a7e:	f8d8 3000 	ldr.w	r3, [r8]
d0044a82:	2b00      	cmp	r3, #0
d0044a84:	f000 8270 	beq.w	d0044f68 <submitEntitySolid+0x514>
d0044a88:	f8d8 3010 	ldr.w	r3, [r8, #16]
d0044a8c:	2b00      	cmp	r3, #0
d0044a8e:	f000 826b 	beq.w	d0044f68 <submitEntitySolid+0x514>
d0044a92:	f8d8 3004 	ldr.w	r3, [r8, #4]
d0044a96:	3b01      	subs	r3, #1
d0044a98:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d0044a9c:	f080 8264 	bcs.w	d0044f68 <submitEntitySolid+0x514>
d0044aa0:	f8d8 3014 	ldr.w	r3, [r8, #20]
d0044aa4:	2b00      	cmp	r3, #0
d0044aa6:	f340 825f 	ble.w	d0044f68 <submitEntitySolid+0x514>
d0044aaa:	460f      	mov	r7, r1
d0044aac:	edd1 aa11 	vldr	s21, [r1, #68]	; 0x44
d0044ab0:	ed91 fa10 	vldr	s30, [r1, #64]	; 0x40
d0044ab4:	f7fe ffbe 	bl	d0043a34 <lightsGet>
d0044ab8:	900b      	str	r0, [sp, #44]	; 0x2c
d0044aba:	f7fe ffbf 	bl	d0043a3c <lightsGetCount>
d0044abe:	edd8 fa09 	vldr	s31, [r8, #36]	; 0x24
d0044ac2:	edd8 7a0a 	vldr	s15, [r8, #40]	; 0x28
d0044ac6:	eef5 fac0 	vcmpe.f32	s31, #0.0
d0044aca:	ed98 7a08 	vldr	s14, [r8, #32]
d0044ace:	f8d8 3004 	ldr.w	r3, [r8, #4]
d0044ad2:	ed8d 7a01 	vstr	s14, [sp, #4]
d0044ad6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044ada:	ed98 7a0c 	vldr	s14, [r8, #48]	; 0x30
d0044ade:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0044ae2:	ed94 6a00 	vldr	s12, [r4]
d0044ae6:	ed8d 7a09 	vstr	s14, [sp, #36]	; 0x24
d0044aea:	bfcc      	ite	gt
d0044aec:	2601      	movgt	r6, #1
d0044aee:	2600      	movle	r6, #0
d0044af0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044af4:	ed98 7a0b 	vldr	s14, [r8, #44]	; 0x2c
d0044af8:	edd4 5a01 	vldr	s11, [r4, #4]
d0044afc:	ed94 5a02 	vldr	s10, [r4, #8]
d0044b00:	bfcc      	ite	gt
d0044b02:	2501      	movgt	r5, #1
d0044b04:	2500      	movle	r5, #0
d0044b06:	2b00      	cmp	r3, #0
d0044b08:	edd4 4a07 	vldr	s9, [r4, #28]
d0044b0c:	ed94 4a08 	vldr	s8, [r4, #32]
d0044b10:	edd4 3a09 	vldr	s7, [r4, #36]	; 0x24
d0044b14:	ed94 3a0a 	vldr	s6, [r4, #40]	; 0x28
d0044b18:	edd4 2a0b 	vldr	s5, [r4, #44]	; 0x2c
d0044b1c:	ed94 2a0c 	vldr	s4, [r4, #48]	; 0x30
d0044b20:	edd4 1a04 	vldr	s3, [r4, #16]
d0044b24:	ed94 1a05 	vldr	s2, [r4, #20]
d0044b28:	edd4 0a06 	vldr	s1, [r4, #24]
d0044b2c:	edd7 ca00 	vldr	s25, [r7]
d0044b30:	ed97 da01 	vldr	s26, [r7, #4]
d0044b34:	edd7 da02 	vldr	s27, [r7, #8]
d0044b38:	ed97 0a06 	vldr	s0, [r7, #24]
d0044b3c:	ed97 8a07 	vldr	s16, [r7, #28]
d0044b40:	edd7 8a08 	vldr	s17, [r7, #32]
d0044b44:	ed97 9a09 	vldr	s18, [r7, #36]	; 0x24
d0044b48:	edd7 9a0a 	vldr	s19, [r7, #40]	; 0x28
d0044b4c:	ed97 aa0b 	vldr	s20, [r7, #44]	; 0x2c
d0044b50:	edcd 7a0a 	vstr	s15, [sp, #40]	; 0x28
d0044b54:	9007      	str	r0, [sp, #28]
d0044b56:	ed8d 7a08 	vstr	s14, [sp, #32]
d0044b5a:	ed97 ba0c 	vldr	s22, [r7, #48]	; 0x30
d0044b5e:	edd7 ba0d 	vldr	s23, [r7, #52]	; 0x34
d0044b62:	ed97 ca0e 	vldr	s24, [r7, #56]	; 0x38
d0044b66:	dd51      	ble.n	d0044c0c <submitEntitySolid+0x1b8>
d0044b68:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0044b6c:	f8d8 3000 	ldr.w	r3, [r8]
d0044b70:	49de      	ldr	r1, [pc, #888]	; (d0044eec <submitEntitySolid+0x498>)
d0044b72:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d0044b76:	4ade      	ldr	r2, [pc, #888]	; (d0044ef0 <submitEntitySolid+0x49c>)
d0044b78:	edd3 7a01 	vldr	s15, [r3, #4]
d0044b7c:	330c      	adds	r3, #12
d0044b7e:	ed53 ea03 	vldr	s29, [r3, #-12]
d0044b82:	310c      	adds	r1, #12
d0044b84:	ee27 7aa2 	vmul.f32	s14, s15, s5
d0044b88:	ed53 6a01 	vldr	s13, [r3, #-4]
d0044b8c:	ee27 ea83 	vmul.f32	s28, s15, s6
d0044b90:	4298      	cmp	r0, r3
d0044b92:	ee67 7a82 	vmul.f32	s15, s15, s4
d0044b96:	f102 020c 	add.w	r2, r2, #12
d0044b9a:	eeae 7a84 	vfma.f32	s14, s29, s8
d0044b9e:	eeae eaa4 	vfma.f32	s28, s29, s9
d0044ba2:	eeee 7aa3 	vfma.f32	s15, s29, s7
d0044ba6:	ee35 7a87 	vadd.f32	s14, s11, s14
d0044baa:	ee36 ea0e 	vadd.f32	s28, s12, s28
d0044bae:	ee75 7a27 	vadd.f32	s15, s10, s15
d0044bb2:	eea6 7a81 	vfma.f32	s14, s13, s2
d0044bb6:	eea6 eaa1 	vfma.f32	s28, s13, s3
d0044bba:	eee6 7aa0 	vfma.f32	s15, s13, s1
d0044bbe:	eef0 ea47 	vmov.f32	s29, s14
d0044bc2:	ee37 7a4d 	vsub.f32	s14, s14, s26
d0044bc6:	ed01 ea03 	vstr	s28, [r1, #-12]
d0044bca:	ee7e 6a6c 	vsub.f32	s13, s28, s25
d0044bce:	ed41 7a01 	vstr	s15, [r1, #-4]
d0044bd2:	ee37 eaed 	vsub.f32	s28, s15, s27
d0044bd6:	ed41 ea02 	vstr	s29, [r1, #-8]
d0044bda:	ee69 7a87 	vmul.f32	s15, s19, s14
d0044bde:	ee68 ea07 	vmul.f32	s29, s16, s14
d0044be2:	ee2b 7a87 	vmul.f32	s14, s23, s14
d0044be6:	eee9 7a26 	vfma.f32	s15, s18, s13
d0044bea:	eee0 ea26 	vfma.f32	s29, s0, s13
d0044bee:	eeab 7a26 	vfma.f32	s14, s22, s13
d0044bf2:	eeea 7a0e 	vfma.f32	s15, s20, s28
d0044bf6:	eee8 ea8e 	vfma.f32	s29, s17, s28
d0044bfa:	eeac 7a0e 	vfma.f32	s14, s24, s28
d0044bfe:	ed42 7a02 	vstr	s15, [r2, #-8]
d0044c02:	ed42 ea03 	vstr	s29, [r2, #-12]
d0044c06:	ed02 7a01 	vstr	s14, [r2, #-4]
d0044c0a:	d1b5      	bne.n	d0044b78 <submitEntitySolid+0x124>
d0044c0c:	f8d8 3014 	ldr.w	r3, [r8, #20]
d0044c10:	2b00      	cmp	r3, #0
d0044c12:	9302      	str	r3, [sp, #8]
d0044c14:	f340 81a8 	ble.w	d0044f68 <submitEntitySolid+0x514>
d0044c18:	ea46 0305 	orr.w	r3, r6, r5
d0044c1c:	ed9d ba0a 	vldr	s22, [sp, #40]	; 0x28
d0044c20:	f04f 0900 	mov.w	r9, #0
d0044c24:	edcd ca0a 	vstr	s25, [sp, #40]	; 0x28
d0044c28:	eddf eab2 	vldr	s29, [pc, #712]	; d0044ef4 <submitEntitySolid+0x4a0>
d0044c2c:	eddd ca01 	vldr	s25, [sp, #4]
d0044c30:	ed8d da0c 	vstr	s26, [sp, #48]	; 0x30
d0044c34:	9306      	str	r3, [sp, #24]
d0044c36:	ed9d da09 	vldr	s26, [sp, #36]	; 0x24
d0044c3a:	f8cd 800c 	str.w	r8, [sp, #12]
d0044c3e:	edcd da09 	vstr	s27, [sp, #36]	; 0x24
d0044c42:	9a03      	ldr	r2, [sp, #12]
d0044c44:	ea4f 1309 	mov.w	r3, r9, lsl #4
d0044c48:	4ea9      	ldr	r6, [pc, #676]	; (d0044ef0 <submitEntitySolid+0x49c>)
d0044c4a:	6915      	ldr	r5, [r2, #16]
d0044c4c:	58e8      	ldr	r0, [r5, r3]
d0044c4e:	eb05 1509 	add.w	r5, r5, r9, lsl #4
d0044c52:	4633      	mov	r3, r6
d0044c54:	eb00 0440 	add.w	r4, r0, r0, lsl #1
d0044c58:	686a      	ldr	r2, [r5, #4]
d0044c5a:	68af      	ldr	r7, [r5, #8]
d0044c5c:	0041      	lsls	r1, r0, #1
d0044c5e:	eb06 0484 	add.w	r4, r6, r4, lsl #2
d0044c62:	9701      	str	r7, [sp, #4]
d0044c64:	eb02 0642 	add.w	r6, r2, r2, lsl #1
d0044c68:	edd4 4a02 	vldr	s9, [r4, #8]
d0044c6c:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d0044c70:	eb03 0686 	add.w	r6, r3, r6, lsl #2
d0044c74:	eef4 4aea 	vcmpe.f32	s9, s21
d0044c78:	eb03 0787 	add.w	r7, r3, r7, lsl #2
d0044c7c:	9b01      	ldr	r3, [sp, #4]
d0044c7e:	ea4f 0842 	mov.w	r8, r2, lsl #1
d0044c82:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044c86:	ea4f 0b43 	mov.w	fp, r3, lsl #1
d0044c8a:	dd0e      	ble.n	d0044caa <submitEntitySolid+0x256>
d0044c8c:	edd6 7a02 	vldr	s15, [r6, #8]
d0044c90:	eef4 7aea 	vcmpe.f32	s15, s21
d0044c94:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044c98:	dd07      	ble.n	d0044caa <submitEntitySolid+0x256>
d0044c9a:	edd7 7a02 	vldr	s15, [r7, #8]
d0044c9e:	eef4 7aea 	vcmpe.f32	s15, s21
d0044ca2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044ca6:	f300 8159 	bgt.w	d0044f5c <submitEntitySolid+0x508>
d0044caa:	ed94 5a00 	vldr	s10, [r4]
d0044cae:	edd4 2a02 	vldr	s5, [r4, #8]
d0044cb2:	ed96 4a00 	vldr	s8, [r6]
d0044cb6:	ed97 6a02 	vldr	s12, [r7, #8]
d0044cba:	ee34 1a45 	vsub.f32	s2, s8, s10
d0044cbe:	edd4 7a01 	vldr	s15, [r4, #4]
d0044cc2:	ee36 6a62 	vsub.f32	s12, s12, s5
d0044cc6:	ed96 3a02 	vldr	s6, [r6, #8]
d0044cca:	edd7 6a01 	vldr	s13, [r7, #4]
d0044cce:	edd7 3a00 	vldr	s7, [r7]
d0044cd2:	ee33 3a62 	vsub.f32	s6, s6, s5
d0044cd6:	ee76 6ae7 	vsub.f32	s13, s13, s15
d0044cda:	edd6 5a01 	vldr	s11, [r6, #4]
d0044cde:	ee33 7ac5 	vsub.f32	s14, s7, s10
d0044ce2:	ee66 1a41 	vnmul.f32	s3, s12, s2
d0044ce6:	ee75 5ae7 	vsub.f32	s11, s11, s15
d0044cea:	ee26 2ac3 	vnmul.f32	s4, s13, s6
d0044cee:	eee3 1a07 	vfma.f32	s3, s6, s14
d0044cf2:	ee27 7a65 	vnmul.f32	s14, s14, s11
d0044cf6:	eea5 2a86 	vfma.f32	s4, s11, s12
d0044cfa:	eea1 7a26 	vfma.f32	s14, s2, s13
d0044cfe:	ee67 7aa1 	vmul.f32	s15, s15, s3
d0044d02:	eee5 7a02 	vfma.f32	s15, s10, s4
d0044d06:	eee2 7a87 	vfma.f32	s15, s5, s14
d0044d0a:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0044d0e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044d12:	f280 8123 	bge.w	d0044f5c <submitEntitySolid+0x508>
d0044d16:	180b      	adds	r3, r1, r0
d0044d18:	9901      	ldr	r1, [sp, #4]
d0044d1a:	f8df e1d0 	ldr.w	lr, [pc, #464]	; d0044eec <submitEntitySolid+0x498>
d0044d1e:	eb08 0c02 	add.w	ip, r8, r2
d0044d22:	eb0b 0a01 	add.w	sl, fp, r1
d0044d26:	eb0e 0383 	add.w	r3, lr, r3, lsl #2
d0044d2a:	eb0e 0c8c 	add.w	ip, lr, ip, lsl #2
d0044d2e:	eb0e 0a8a 	add.w	sl, lr, sl, lsl #2
d0044d32:	ed93 7a00 	vldr	s14, [r3]
d0044d36:	ed93 6a02 	vldr	s12, [r3, #8]
d0044d3a:	eddc 5a00 	vldr	s11, [ip]
d0044d3e:	ed9a 1a02 	vldr	s2, [sl, #8]
d0044d42:	ee75 0ac7 	vsub.f32	s1, s11, s14
d0044d46:	edd3 6a01 	vldr	s13, [r3, #4]
d0044d4a:	ee31 0a46 	vsub.f32	s0, s2, s12
d0044d4e:	eddc 2a02 	vldr	s5, [ip, #8]
d0044d52:	edda 1a01 	vldr	s3, [sl, #4]
d0044d56:	ed9a 2a00 	vldr	s4, [sl]
d0044d5a:	ee32 aac6 	vsub.f32	s20, s5, s12
d0044d5e:	ee71 7ae6 	vsub.f32	s15, s3, s13
d0044d62:	ed9c 3a01 	vldr	s6, [ip, #4]
d0044d66:	ee32 8a47 	vsub.f32	s16, s4, s14
d0044d6a:	ee20 9a60 	vnmul.f32	s18, s0, s1
d0044d6e:	ee73 9a66 	vsub.f32	s19, s6, s13
d0044d72:	ee67 8aca 	vnmul.f32	s17, s15, s20
d0044d76:	eeaa 9a08 	vfma.f32	s18, s20, s16
d0044d7a:	ee28 8a69 	vnmul.f32	s16, s16, s19
d0044d7e:	eee9 8a80 	vfma.f32	s17, s19, s0
d0044d82:	eea0 8aa7 	vfma.f32	s16, s1, s15
d0044d86:	ee69 7a09 	vmul.f32	s15, s18, s18
d0044d8a:	eee8 7aa8 	vfma.f32	s15, s17, s17
d0044d8e:	eee8 7a08 	vfma.f32	s15, s16, s16
d0044d92:	eef4 7aee 	vcmpe.f32	s15, s29
d0044d96:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044d9a:	f240 80df 	bls.w	d0044f5c <submitEntitySolid+0x508>
d0044d9e:	eddf 0a59 	vldr	s1, [pc, #356]	; d0044f04 <submitEntitySolid+0x4b0>
d0044da2:	eef4 7ae0 	vcmpe.f32	s15, s1
d0044da6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044daa:	f100 822b 	bmi.w	d0045204 <submitEntitySolid+0x7b0>
d0044dae:	eddf 0a56 	vldr	s1, [pc, #344]	; d0044f08 <submitEntitySolid+0x4b4>
d0044db2:	eef4 7a60 	vcmp.f32	s15, s1
d0044db6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044dba:	f300 8223 	bgt.w	d0045204 <submitEntitySolid+0x7b0>
d0044dbe:	7b6b      	ldrb	r3, [r5, #13]
d0044dc0:	eef4 4acf 	vcmpe.f32	s9, s30
d0044dc4:	eddf 7a4c 	vldr	s15, [pc, #304]	; d0044ef8 <submitEntitySolid+0x4a4>
d0044dc8:	ee7c 9a8d 	vadd.f32	s19, s25, s26
d0044dcc:	ee0a 3a10 	vmov	s20, r3
d0044dd0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044dd4:	eeb8 aa4a 	vcvt.f32.u32	s20, s20
d0044dd8:	ee2a aa27 	vmul.f32	s20, s20, s15
d0044ddc:	f2c0 80c9 	blt.w	d0044f72 <submitEntitySolid+0x51e>
d0044de0:	4490      	add	r8, r2
d0044de2:	4b43      	ldr	r3, [pc, #268]	; (d0044ef0 <submitEntitySolid+0x49c>)
d0044de4:	eb03 0888 	add.w	r8, r3, r8, lsl #2
d0044de8:	edd8 7a02 	vldr	s15, [r8, #8]
d0044dec:	eef4 7acf 	vcmpe.f32	s15, s30
d0044df0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044df4:	f2c0 80bd 	blt.w	d0044f72 <submitEntitySolid+0x51e>
d0044df8:	9901      	ldr	r1, [sp, #4]
d0044dfa:	448b      	add	fp, r1
d0044dfc:	4619      	mov	r1, r3
d0044dfe:	eb03 0b8b 	add.w	fp, r3, fp, lsl #2
d0044e02:	eddb 0a02 	vldr	s1, [fp, #8]
d0044e06:	eef4 0acf 	vcmpe.f32	s1, s30
d0044e0a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e0e:	f2c0 80b0 	blt.w	d0044f72 <submitEntitySolid+0x51e>
d0044e12:	eeb1 0a64 	vneg.f32	s0, s9
d0044e16:	eeb4 0a45 	vcmp.f32	s0, s10
d0044e1a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e1e:	f200 80a8 	bhi.w	d0044f72 <submitEntitySolid+0x51e>
d0044e22:	eef4 4a45 	vcmp.f32	s9, s10
d0044e26:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e2a:	f2c0 80a2 	blt.w	d0044f72 <submitEntitySolid+0x51e>
d0044e2e:	eeb1 5a67 	vneg.f32	s10, s15
d0044e32:	eeb4 5a44 	vcmp.f32	s10, s8
d0044e36:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e3a:	f200 809a 	bhi.w	d0044f72 <submitEntitySolid+0x51e>
d0044e3e:	eef4 7a44 	vcmp.f32	s15, s8
d0044e42:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e46:	f2c0 8094 	blt.w	d0044f72 <submitEntitySolid+0x51e>
d0044e4a:	eeb1 5a60 	vneg.f32	s10, s1
d0044e4e:	eeb4 5a63 	vcmp.f32	s10, s7
d0044e52:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e56:	f200 808c 	bhi.w	d0044f72 <submitEntitySolid+0x51e>
d0044e5a:	eef4 0a63 	vcmp.f32	s1, s7
d0044e5e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e62:	f2c0 8086 	blt.w	d0044f72 <submitEntitySolid+0x51e>
d0044e66:	ed9f 5a25 	vldr	s10, [pc, #148]	; d0044efc <submitEntitySolid+0x4a8>
d0044e6a:	230c      	movs	r3, #12
d0044e6c:	ee64 4a85 	vmul.f32	s9, s9, s10
d0044e70:	fb03 1000 	mla	r0, r3, r0, r1
d0044e74:	ed90 5a01 	vldr	s10, [r0, #4]
d0044e78:	eeb1 4a64 	vneg.f32	s8, s9
d0044e7c:	eeb4 5a44 	vcmp.f32	s10, s8
d0044e80:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e84:	db75      	blt.n	d0044f72 <submitEntitySolid+0x51e>
d0044e86:	eeb4 5a64 	vcmp.f32	s10, s9
d0044e8a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e8e:	d870      	bhi.n	d0044f72 <submitEntitySolid+0x51e>
d0044e90:	ed9f 5a1a 	vldr	s10, [pc, #104]	; d0044efc <submitEntitySolid+0x4a8>
d0044e94:	fb03 1202 	mla	r2, r3, r2, r1
d0044e98:	ee67 7a85 	vmul.f32	s15, s15, s10
d0044e9c:	edd2 4a01 	vldr	s9, [r2, #4]
d0044ea0:	eeb1 4a67 	vneg.f32	s8, s15
d0044ea4:	eef4 4a44 	vcmp.f32	s9, s8
d0044ea8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044eac:	db61      	blt.n	d0044f72 <submitEntitySolid+0x51e>
d0044eae:	eef4 4a67 	vcmp.f32	s9, s15
d0044eb2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044eb6:	d85c      	bhi.n	d0044f72 <submitEntitySolid+0x51e>
d0044eb8:	ee60 0a85 	vmul.f32	s1, s1, s10
d0044ebc:	9a01      	ldr	r2, [sp, #4]
d0044ebe:	fb03 1102 	mla	r1, r3, r2, r1
d0044ec2:	eeb1 5a60 	vneg.f32	s10, s1
d0044ec6:	edd1 7a01 	vldr	s15, [r1, #4]
d0044eca:	eef4 7a45 	vcmp.f32	s15, s10
d0044ece:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044ed2:	db4e      	blt.n	d0044f72 <submitEntitySolid+0x51e>
d0044ed4:	eef4 7ae0 	vcmpe.f32	s15, s1
d0044ed8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044edc:	d849      	bhi.n	d0044f72 <submitEntitySolid+0x51e>
d0044ede:	9b06      	ldr	r3, [sp, #24]
d0044ee0:	b1b3      	cbz	r3, d0044f10 <submitEntitySolid+0x4bc>
d0044ee2:	9b07      	ldr	r3, [sp, #28]
d0044ee4:	2b00      	cmp	r3, #0
d0044ee6:	f300 828a 	bgt.w	d00453fe <submitEntitySolid+0x9aa>
d0044eea:	e011      	b.n	d0044f10 <submitEntitySolid+0x4bc>
d0044eec:	d00d57e0 	.word	0xd00d57e0
d0044ef0:	d00497a0 	.word	0xd00497a0
d0044ef4:	358637bd 	.word	0x358637bd
d0044ef8:	3b808081 	.word	0x3b808081
d0044efc:	3f2aaaab 	.word	0x3f2aaaab
d0044f00:	3eaaaaab 	.word	0x3eaaaaab
d0044f04:	3f7fbe77 	.word	0x3f7fbe77
d0044f08:	3f8020c5 	.word	0x3f8020c5
d0044f0c:	00000000 	.word	0x00000000
d0044f10:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0044f14:	fe8a 0a29 	vmaxnm.f32	s0, s20, s19
d0044f18:	fe80 0a67 	vminnm.f32	s0, s0, s15
d0044f1c:	f7fe fd72 	bl	d0043a04 <brightnessToShadeF>
d0044f20:	eeb0 8a40 	vmov.f32	s16, s0
d0044f24:	eef0 4a48 	vmov.f32	s9, s16
d0044f28:	7b6a      	ldrb	r2, [r5, #13]
d0044f2a:	7b29      	ldrb	r1, [r5, #12]
d0044f2c:	9804      	ldr	r0, [sp, #16]
d0044f2e:	ed97 3a00 	vldr	s6, [r7]
d0044f32:	edd7 3a01 	vldr	s7, [r7, #4]
d0044f36:	ed97 4a02 	vldr	s8, [r7, #8]
d0044f3a:	edd6 1a00 	vldr	s3, [r6]
d0044f3e:	ed96 2a01 	vldr	s4, [r6, #4]
d0044f42:	edd6 2a02 	vldr	s5, [r6, #8]
d0044f46:	ed94 0a00 	vldr	s0, [r4]
d0044f4a:	edd4 0a01 	vldr	s1, [r4, #4]
d0044f4e:	ed94 1a02 	vldr	s2, [r4, #8]
d0044f52:	f7ff fa1f 	bl	d0044394 <submitClippedTri>
d0044f56:	9b03      	ldr	r3, [sp, #12]
d0044f58:	695b      	ldr	r3, [r3, #20]
d0044f5a:	9302      	str	r3, [sp, #8]
d0044f5c:	f109 0901 	add.w	r9, r9, #1
d0044f60:	9b02      	ldr	r3, [sp, #8]
d0044f62:	4599      	cmp	r9, r3
d0044f64:	f6ff ae6d 	blt.w	d0044c42 <submitEntitySolid+0x1ee>
d0044f68:	b033      	add	sp, #204	; 0xcc
d0044f6a:	ecbd 8b10 	vpop	{d8-d15}
d0044f6e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0044f72:	9b06      	ldr	r3, [sp, #24]
d0044f74:	2b00      	cmp	r3, #0
d0044f76:	f000 8152 	beq.w	d004521e <submitEntitySolid+0x7ca>
d0044f7a:	9b07      	ldr	r3, [sp, #28]
d0044f7c:	2b00      	cmp	r3, #0
d0044f7e:	f340 814e 	ble.w	d004521e <submitEntitySolid+0x7ca>
d0044f82:	f04f 0800 	mov.w	r8, #0
d0044f86:	ee75 ba87 	vadd.f32	s23, s11, s14
d0044f8a:	ed5f 7a23 	vldr	s15, [pc, #-140]	; d0044f00 <submitEntitySolid+0x4ac>
d0044f8e:	ee33 ca26 	vadd.f32	s24, s6, s13
d0044f92:	ee32 ea86 	vadd.f32	s28, s5, s12
d0044f96:	eeb5 bac0 	vcmpe.f32	s22, #0.0
d0044f9a:	ee7b ba82 	vadd.f32	s23, s23, s4
d0044f9e:	ee3c ca21 	vadd.f32	s24, s24, s3
d0044fa2:	ee3e ea01 	vadd.f32	s28, s28, s2
d0044fa6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044faa:	ee6b baa7 	vmul.f32	s23, s23, s15
d0044fae:	ee2c ca27 	vmul.f32	s24, s24, s15
d0044fb2:	ee2e ea27 	vmul.f32	s28, s28, s15
d0044fb6:	f340 818b 	ble.w	d00452d0 <submitEntitySolid+0x87c>
d0044fba:	eddd 7a0c 	vldr	s15, [sp, #48]	; 0x30
d0044fbe:	ee77 2acc 	vsub.f32	s5, s15, s24
d0044fc2:	eddd 7a0a 	vldr	s15, [sp, #40]	; 0x28
d0044fc6:	ee37 3aeb 	vsub.f32	s6, s15, s23
d0044fca:	eddd 7a09 	vldr	s15, [sp, #36]	; 0x24
d0044fce:	ee77 4ace 	vsub.f32	s9, s15, s28
d0044fd2:	ee62 7aa2 	vmul.f32	s15, s5, s5
d0044fd6:	eee3 7a03 	vfma.f32	s15, s6, s6
d0044fda:	eee4 7aa4 	vfma.f32	s15, s9, s9
d0044fde:	eef4 7aee 	vcmpe.f32	s15, s29
d0044fe2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044fe6:	f340 8173 	ble.w	d00452d0 <submitEntitySolid+0x87c>
d0044fea:	ed1f 7a3a 	vldr	s14, [pc, #-232]	; d0044f04 <submitEntitySolid+0x4b0>
d0044fee:	eef4 7ac7 	vcmpe.f32	s15, s14
d0044ff2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044ff6:	f100 81e2 	bmi.w	d00453be <submitEntitySolid+0x96a>
d0044ffa:	ed1f 7a3d 	vldr	s14, [pc, #-244]	; d0044f08 <submitEntitySolid+0x4b4>
d0044ffe:	eef4 7a47 	vcmp.f32	s15, s14
d0045002:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045006:	f300 81da 	bgt.w	d00453be <submitEntitySolid+0x96a>
d004500a:	ee79 1a09 	vadd.f32	s3, s18, s18
d004500e:	4642      	mov	r2, r8
d0045010:	ee38 2a08 	vadd.f32	s4, s16, s16
d0045014:	46b8      	mov	r8, r7
d0045016:	eef0 6a6c 	vmov.f32	s13, s25
d004501a:	4637      	mov	r7, r6
d004501c:	eef0 7a61 	vmov.f32	s15, s3
d0045020:	4626      	mov	r6, r4
d0045022:	eeb0 7a42 	vmov.f32	s14, s4
d0045026:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
d004502a:	eef0 ca64 	vmov.f32	s25, s9
d004502e:	f04f 0b00 	mov.w	fp, #0
d0045032:	eef0 4a6a 	vmov.f32	s9, s21
d0045036:	9c07      	ldr	r4, [sp, #28]
d0045038:	eef0 aa62 	vmov.f32	s21, s5
d004503c:	eeb0 2a4d 	vmov.f32	s4, s26
d0045040:	eef0 1a4a 	vmov.f32	s3, s20
d0045044:	ee38 1aa8 	vadd.f32	s2, s17, s17
d0045048:	eeb0 aa43 	vmov.f32	s20, s6
d004504c:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0045050:	eeb0 3a4f 	vmov.f32	s6, s30
d0045054:	eef2 da00 	vmov.f32	s27, #32	; 0x41000000  8.0
d0045058:	eeb0 fa67 	vmov.f32	s30, s15
d004505c:	eeb0 da47 	vmov.f32	s26, s14
d0045060:	eef0 2a66 	vmov.f32	s5, s13
d0045064:	e0b6      	b.n	d00451d4 <submitEntitySolid+0x780>
d0045066:	edda 7a02 	vldr	s15, [sl, #8]
d004506a:	edda 6a01 	vldr	s13, [sl, #4]
d004506e:	ee77 7acc 	vsub.f32	s15, s15, s24
d0045072:	ed9a 7a03 	vldr	s14, [sl, #12]
d0045076:	ee76 6aeb 	vsub.f32	s13, s13, s23
d004507a:	edda 5a0a 	vldr	s11, [sl, #40]	; 0x28
d004507e:	ee37 7a4e 	vsub.f32	s14, s14, s28
d0045082:	ee27 6aa7 	vmul.f32	s12, s15, s15
d0045086:	ee25 4aa5 	vmul.f32	s8, s11, s11
d004508a:	eea6 6aa6 	vfma.f32	s12, s13, s13
d004508e:	eea7 6a07 	vfma.f32	s12, s14, s14
d0045092:	eeb4 6a6e 	vcmp.f32	s12, s29
d0045096:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004509a:	f340 8094 	ble.w	d00451c6 <submitEntitySolid+0x772>
d004509e:	eeb4 4a46 	vcmp.f32	s8, s12
d00450a2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00450a6:	f340 808e 	ble.w	d00451c6 <submitEntitySolid+0x772>
d00450aa:	eeb1 0ac6 	vsqrt.f32	s0, s12
d00450ae:	edda 3a08 	vldr	s7, [sl, #32]
d00450b2:	ee63 0aa3 	vmul.f32	s1, s7, s7
d00450b6:	eef4 0ac6 	vcmpe.f32	s1, s12
d00450ba:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00450be:	ee85 4a00 	vdiv.f32	s8, s10, s0
d00450c2:	ee66 6a84 	vmul.f32	s13, s13, s8
d00450c6:	ee67 7a84 	vmul.f32	s15, s15, s8
d00450ca:	ee27 7a04 	vmul.f32	s14, s14, s8
d00450ce:	f140 8123 	bpl.w	d0045318 <submitEntitySolid+0x8c4>
d00450d2:	edda 0a09 	vldr	s1, [sl, #36]	; 0x24
d00450d6:	eef4 3ae0 	vcmpe.f32	s7, s1
d00450da:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00450de:	da72      	bge.n	d00451c6 <submitEntitySolid+0x772>
d00450e0:	eef4 5ae0 	vcmpe.f32	s11, s1
d00450e4:	ee26 6a04 	vmul.f32	s12, s12, s8
d00450e8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00450ec:	eef4 0ac6 	vcmpe.f32	s1, s12
d00450f0:	f200 814d 	bhi.w	d004538e <submitEntitySolid+0x93a>
d00450f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00450f8:	d965      	bls.n	d00451c6 <submitEntitySolid+0x772>
d00450fa:	ee36 6a63 	vsub.f32	s12, s12, s7
d00450fe:	ee70 3ae3 	vsub.f32	s7, s1, s7
d0045102:	eec6 5a23 	vdiv.f32	s11, s12, s7
d0045106:	ed1f 6a7f 	vldr	s12, [pc, #-508]	; d0044f0c <submitEntitySolid+0x4b8>
d004510a:	fe85 6a86 	vmaxnm.f32	s12, s11, s12
d004510e:	fe86 6a45 	vminnm.f32	s12, s12, s10
d0045112:	ee35 6a46 	vsub.f32	s12, s10, s12
d0045116:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d004511a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004511e:	d952      	bls.n	d00451c6 <submitEntitySolid+0x772>
d0045120:	ee69 5a27 	vmul.f32	s11, s18, s15
d0045124:	eee8 5aa6 	vfma.f32	s11, s17, s13
d0045128:	eee8 5a07 	vfma.f32	s11, s16, s14
d004512c:	eef5 5ac0 	vcmpe.f32	s11, #0.0
d0045130:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045134:	d947      	bls.n	d00451c6 <submitEntitySolid+0x772>
d0045136:	eef5 fac0 	vcmpe.f32	s31, #0.0
d004513a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004513e:	dd07      	ble.n	d0045150 <submitEntitySolid+0x6fc>
d0045140:	ed9a 4a07 	vldr	s8, [sl, #28]
d0045144:	ee2f 4a84 	vmul.f32	s8, s31, s8
d0045148:	ee24 4a06 	vmul.f32	s8, s8, s12
d004514c:	eee5 9a84 	vfma.f32	s19, s11, s8
d0045150:	eeb5 bac0 	vcmpe.f32	s22, #0.0
d0045154:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045158:	dd2f      	ble.n	d00451ba <submitEntitySolid+0x766>
d004515a:	eed5 7a8f 	vfnms.f32	s15, s11, s30
d004515e:	eed5 6a81 	vfnms.f32	s13, s11, s2
d0045162:	ee95 7a8d 	vfnms.f32	s14, s11, s26
d0045166:	ee2a 0aa7 	vmul.f32	s0, s21, s15
d004516a:	eeaa 0a26 	vfma.f32	s0, s20, s13
d004516e:	eeac 0a87 	vfma.f32	s0, s25, s14
d0045172:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0045176:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004517a:	dd1e      	ble.n	d00451ba <submitEntitySolid+0x766>
d004517c:	eddd 7a08 	vldr	s15, [sp, #32]
d0045180:	eef4 7a6d 	vcmp.f32	s15, s27
d0045184:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045188:	d009      	beq.n	d004519e <submitEntitySolid+0x74a>
d004518a:	eeb3 7a00 	vmov.f32	s14, #48	; 0x41800000  16.0
d004518e:	eef4 7a47 	vcmp.f32	s15, s14
d0045192:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045196:	f040 80c2 	bne.w	d004531e <submitEntitySolid+0x8ca>
d004519a:	ee20 0a00 	vmul.f32	s0, s0, s0
d004519e:	ee20 0a00 	vmul.f32	s0, s0, s0
d00451a2:	ee20 0a00 	vmul.f32	s0, s0, s0
d00451a6:	ee20 0a00 	vmul.f32	s0, s0, s0
d00451aa:	edda 7a07 	vldr	s15, [sl, #28]
d00451ae:	ee6b 7a27 	vmul.f32	s15, s22, s15
d00451b2:	ee27 6a86 	vmul.f32	s12, s15, s12
d00451b6:	eee6 9a00 	vfma.f32	s19, s12, s0
d00451ba:	eef4 9ac5 	vcmpe.f32	s19, s10
d00451be:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00451c2:	f280 80d3 	bge.w	d004536c <submitEntitySolid+0x918>
d00451c6:	f10b 0b01 	add.w	fp, fp, #1
d00451ca:	f10a 0a40 	add.w	sl, sl, #64	; 0x40
d00451ce:	455c      	cmp	r4, fp
d00451d0:	f340 8085 	ble.w	d00452de <submitEntitySolid+0x88a>
d00451d4:	f8da 302c 	ldr.w	r3, [sl, #44]	; 0x2c
d00451d8:	2b00      	cmp	r3, #0
d00451da:	d0f4      	beq.n	d00451c6 <submitEntitySolid+0x772>
d00451dc:	f89a 3000 	ldrb.w	r3, [sl]
d00451e0:	2b00      	cmp	r3, #0
d00451e2:	f43f af40 	beq.w	d0045066 <submitEntitySolid+0x612>
d00451e6:	edda 6a04 	vldr	s13, [sl, #16]
d00451ea:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d00451ee:	edda 7a05 	vldr	s15, [sl, #20]
d00451f2:	ed9a 7a06 	vldr	s14, [sl, #24]
d00451f6:	eef1 6a66 	vneg.f32	s13, s13
d00451fa:	eef1 7a67 	vneg.f32	s15, s15
d00451fe:	eeb1 7a47 	vneg.f32	s14, s14
d0045202:	e78d      	b.n	d0045120 <submitEntitySolid+0x6cc>
d0045204:	eef1 0ae7 	vsqrt.f32	s1, s15
d0045208:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d004520c:	eec0 7a20 	vdiv.f32	s15, s0, s1
d0045210:	ee68 8aa7 	vmul.f32	s17, s17, s15
d0045214:	ee29 9a27 	vmul.f32	s18, s18, s15
d0045218:	ee28 8a27 	vmul.f32	s16, s16, s15
d004521c:	e5cf      	b.n	d0044dbe <submitEntitySolid+0x36a>
d004521e:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0045222:	fe8a 0a29 	vmaxnm.f32	s0, s20, s19
d0045226:	fe80 0a67 	vminnm.f32	s0, s0, s15
d004522a:	f7fe fbeb 	bl	d0043a04 <brightnessToShadeF>
d004522e:	eeb0 8a40 	vmov.f32	s16, s0
d0045232:	f8dd a010 	ldr.w	sl, [sp, #16]
d0045236:	f8dd 8014 	ldr.w	r8, [sp, #20]
d004523a:	4651      	mov	r1, sl
d004523c:	ed97 3a00 	vldr	s6, [r7]
d0045240:	4640      	mov	r0, r8
d0045242:	edd7 3a01 	vldr	s7, [r7, #4]
d0045246:	ed97 4a02 	vldr	s8, [r7, #8]
d004524a:	edd6 1a00 	vldr	s3, [r6]
d004524e:	ed96 2a01 	vldr	s4, [r6, #4]
d0045252:	edd6 2a02 	vldr	s5, [r6, #8]
d0045256:	ed94 0a00 	vldr	s0, [r4]
d004525a:	edd4 0a01 	vldr	s1, [r4, #4]
d004525e:	ed94 1a02 	vldr	s2, [r4, #8]
d0045262:	f7fe fc3b 	bl	d0043adc <clipTriangleToFrustum>
d0045266:	2802      	cmp	r0, #2
d0045268:	dc09      	bgt.n	d004527e <submitEntitySolid+0x82a>
d004526a:	9b03      	ldr	r3, [sp, #12]
d004526c:	f109 0901 	add.w	r9, r9, #1
d0045270:	695b      	ldr	r3, [r3, #20]
d0045272:	9302      	str	r3, [sp, #8]
d0045274:	9b02      	ldr	r3, [sp, #8]
d0045276:	4599      	cmp	r9, r3
d0045278:	f6ff ace3 	blt.w	d0044c42 <submitEntitySolid+0x1ee>
d004527c:	e674      	b.n	d0044f68 <submitEntitySolid+0x514>
d004527e:	eef0 4a48 	vmov.f32	s9, s16
d0045282:	1e44      	subs	r4, r0, #1
d0045284:	2601      	movs	r6, #1
d0045286:	4647      	mov	r7, r8
d0045288:	4650      	mov	r0, sl
d004528a:	4633      	mov	r3, r6
d004528c:	3601      	adds	r6, #1
d004528e:	7b6a      	ldrb	r2, [r5, #13]
d0045290:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0045294:	7b29      	ldrb	r1, [r5, #12]
d0045296:	eb06 0c46 	add.w	ip, r6, r6, lsl #1
d004529a:	ed97 0a00 	vldr	s0, [r7]
d004529e:	eb07 0383 	add.w	r3, r7, r3, lsl #2
d00452a2:	edd7 0a01 	vldr	s1, [r7, #4]
d00452a6:	eb07 0c8c 	add.w	ip, r7, ip, lsl #2
d00452aa:	ed97 1a02 	vldr	s2, [r7, #8]
d00452ae:	edd3 1a00 	vldr	s3, [r3]
d00452b2:	ed93 2a01 	vldr	s4, [r3, #4]
d00452b6:	edd3 2a02 	vldr	s5, [r3, #8]
d00452ba:	ed9c 3a00 	vldr	s6, [ip]
d00452be:	eddc 3a01 	vldr	s7, [ip, #4]
d00452c2:	ed9c 4a02 	vldr	s8, [ip, #8]
d00452c6:	f7ff f865 	bl	d0044394 <submitClippedTri>
d00452ca:	42a6      	cmp	r6, r4
d00452cc:	d1dd      	bne.n	d004528a <submitEntitySolid+0x836>
d00452ce:	e7cc      	b.n	d004526a <submitEntitySolid+0x816>
d00452d0:	eddf 4a4c 	vldr	s9, [pc, #304]	; d0045404 <submitEntitySolid+0x9b0>
d00452d4:	eef0 2a64 	vmov.f32	s5, s9
d00452d8:	eeb0 3a64 	vmov.f32	s6, s9
d00452dc:	e695      	b.n	d004500a <submitEntitySolid+0x5b6>
d00452de:	eef0 aa64 	vmov.f32	s21, s9
d00452e2:	4634      	mov	r4, r6
d00452e4:	eeb0 fa43 	vmov.f32	s30, s6
d00452e8:	463e      	mov	r6, r7
d00452ea:	eef0 ca62 	vmov.f32	s25, s5
d00452ee:	4647      	mov	r7, r8
d00452f0:	eeb0 da42 	vmov.f32	s26, s4
d00452f4:	4690      	mov	r8, r2
d00452f6:	eeb0 aa61 	vmov.f32	s20, s3
d00452fa:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00452fe:	fe89 0a8a 	vmaxnm.f32	s0, s19, s20
d0045302:	fe80 0a67 	vminnm.f32	s0, s0, s15
d0045306:	f7fe fb7d 	bl	d0043a04 <brightnessToShadeF>
d004530a:	eeb0 8a40 	vmov.f32	s16, s0
d004530e:	f1b8 0f00 	cmp.w	r8, #0
d0045312:	f47f ae07 	bne.w	d0044f24 <submitEntitySolid+0x4d0>
d0045316:	e78c      	b.n	d0045232 <submitEntitySolid+0x7de>
d0045318:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d004531c:	e700      	b.n	d0045120 <submitEntitySolid+0x6cc>
d004531e:	eef0 0a67 	vmov.f32	s1, s15
d0045322:	ed8d 1a13 	vstr	s2, [sp, #76]	; 0x4c
d0045326:	9212      	str	r2, [sp, #72]	; 0x48
d0045328:	edcd 1a11 	vstr	s3, [sp, #68]	; 0x44
d004532c:	ed8d 2a10 	vstr	s4, [sp, #64]	; 0x40
d0045330:	edcd 2a0f 	vstr	s5, [sp, #60]	; 0x3c
d0045334:	ed8d 3a0e 	vstr	s6, [sp, #56]	; 0x38
d0045338:	edcd 4a0d 	vstr	s9, [sp, #52]	; 0x34
d004533c:	ed8d 5a02 	vstr	s10, [sp, #8]
d0045340:	ed8d 6a01 	vstr	s12, [sp, #4]
d0045344:	f7fd f964 	bl	d0042610 <powf>
d0045348:	ed9d 1a13 	vldr	s2, [sp, #76]	; 0x4c
d004534c:	9a12      	ldr	r2, [sp, #72]	; 0x48
d004534e:	eddd 1a11 	vldr	s3, [sp, #68]	; 0x44
d0045352:	ed9d 2a10 	vldr	s4, [sp, #64]	; 0x40
d0045356:	eddd 2a0f 	vldr	s5, [sp, #60]	; 0x3c
d004535a:	ed9d 3a0e 	vldr	s6, [sp, #56]	; 0x38
d004535e:	eddd 4a0d 	vldr	s9, [sp, #52]	; 0x34
d0045362:	ed9d 5a02 	vldr	s10, [sp, #8]
d0045366:	ed9d 6a01 	vldr	s12, [sp, #4]
d004536a:	e71e      	b.n	d00451aa <submitEntitySolid+0x756>
d004536c:	4634      	mov	r4, r6
d004536e:	eef0 aa64 	vmov.f32	s21, s9
d0045372:	463e      	mov	r6, r7
d0045374:	eeb0 fa43 	vmov.f32	s30, s6
d0045378:	4647      	mov	r7, r8
d004537a:	eef0 ca62 	vmov.f32	s25, s5
d004537e:	eeb0 da42 	vmov.f32	s26, s4
d0045382:	4690      	mov	r8, r2
d0045384:	eeb0 aa61 	vmov.f32	s20, s3
d0045388:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d004538c:	e7b5      	b.n	d00452fa <submitEntitySolid+0x8a6>
d004538e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045392:	db21      	blt.n	d00453d8 <submitEntitySolid+0x984>
d0045394:	ee36 6a63 	vsub.f32	s12, s12, s7
d0045398:	ee70 3ae3 	vsub.f32	s7, s1, s7
d004539c:	eeb6 4a08 	vmov.f32	s8, #104	; 0x3f400000  0.750
d00453a0:	eec6 5a23 	vdiv.f32	s11, s12, s7
d00453a4:	ed9f 6a17 	vldr	s12, [pc, #92]	; d0045404 <submitEntitySolid+0x9b0>
d00453a8:	fe85 6a86 	vmaxnm.f32	s12, s11, s12
d00453ac:	eef0 5a45 	vmov.f32	s11, s10
d00453b0:	fe86 6a45 	vminnm.f32	s12, s12, s10
d00453b4:	eee6 5a44 	vfms.f32	s11, s12, s8
d00453b8:	eeb0 6a65 	vmov.f32	s12, s11
d00453bc:	e6ab      	b.n	d0045116 <submitEntitySolid+0x6c2>
d00453be:	eeb1 7ae7 	vsqrt.f32	s14, s15
d00453c2:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d00453c6:	eec6 7a87 	vdiv.f32	s15, s13, s14
d00453ca:	ee23 3a27 	vmul.f32	s6, s6, s15
d00453ce:	ee62 2aa7 	vmul.f32	s5, s5, s15
d00453d2:	ee64 4aa7 	vmul.f32	s9, s9, s15
d00453d6:	e618      	b.n	d004500a <submitEntitySolid+0x5b6>
d00453d8:	ee36 6a60 	vsub.f32	s12, s12, s1
d00453dc:	ee75 5ae0 	vsub.f32	s11, s11, s1
d00453e0:	ee86 4a25 	vdiv.f32	s8, s12, s11
d00453e4:	ed9f 6a07 	vldr	s12, [pc, #28]	; d0045404 <submitEntitySolid+0x9b0>
d00453e8:	eef5 5a00 	vmov.f32	s11, #80	; 0x3e800000  0.250
d00453ec:	fe84 6a06 	vmaxnm.f32	s12, s8, s12
d00453f0:	fe86 6a45 	vminnm.f32	s12, s12, s10
d00453f4:	ee35 6a46 	vsub.f32	s12, s10, s12
d00453f8:	ee26 6a25 	vmul.f32	s12, s12, s11
d00453fc:	e68b      	b.n	d0045116 <submitEntitySolid+0x6c2>
d00453fe:	f04f 0801 	mov.w	r8, #1
d0045402:	e5c0      	b.n	d0044f86 <submitEntitySolid+0x532>
d0045404:	00000000 	.word	0x00000000

d0045408 <submitWorldEntities>:
d0045408:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d004540c:	4c30      	ldr	r4, [pc, #192]	; (d00454d0 <submitWorldEntities+0xc8>)
d004540e:	b09d      	sub	sp, #116	; 0x74
d0045410:	f04f 0800 	mov.w	r8, #0
d0045414:	f8df 90bc 	ldr.w	r9, [pc, #188]	; d00454d4 <submitWorldEntities+0xcc>
d0045418:	4605      	mov	r5, r0
d004541a:	f504 46c0 	add.w	r6, r4, #24576	; 0x6000
d004541e:	f100 0710 	add.w	r7, r0, #16
d0045422:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0045426:	2b00      	cmp	r3, #0
d0045428:	d03f      	beq.n	d00454aa <submitWorldEntities+0xa2>
d004542a:	68e3      	ldr	r3, [r4, #12]
d004542c:	2250      	movs	r2, #80	; 0x50
d004542e:	4639      	mov	r1, r7
d0045430:	4668      	mov	r0, sp
d0045432:	b3d3      	cbz	r3, d00454aa <submitWorldEntities+0xa2>
d0045434:	f894 3035 	ldrb.w	r3, [r4, #53]	; 0x35
d0045438:	07db      	lsls	r3, r3, #31
d004543a:	d536      	bpl.n	d00454aa <submitWorldEntities+0xa2>
d004543c:	ed94 0a00 	vldr	s0, [r4]
d0045440:	edd4 0a01 	vldr	s1, [r4, #4]
d0045444:	ed94 1a02 	vldr	s2, [r4, #8]
d0045448:	ed8d 0a17 	vstr	s0, [sp, #92]	; 0x5c
d004544c:	edcd 0a16 	vstr	s1, [sp, #88]	; 0x58
d0045450:	ed8d 1a15 	vstr	s2, [sp, #84]	; 0x54
d0045454:	f000 fd3a 	bl	d0045ecc <memcpy>
d0045458:	ed9d 1a15 	vldr	s2, [sp, #84]	; 0x54
d004545c:	ed9d 0a17 	vldr	s0, [sp, #92]	; 0x5c
d0045460:	eddd 0a16 	vldr	s1, [sp, #88]	; 0x58
d0045464:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0045468:	f7fd fe2c 	bl	d00430c4 <worldToCamera>
d004546c:	68e3      	ldr	r3, [r4, #12]
d004546e:	ed95 7a11 	vldr	s14, [r5, #68]	; 0x44
d0045472:	edd3 7a06 	vldr	s15, [r3, #24]
d0045476:	ed8d 0a19 	vstr	s0, [sp, #100]	; 0x64
d004547a:	ee71 6a67 	vsub.f32	s13, s2, s15
d004547e:	edcd 0a1a 	vstr	s1, [sp, #104]	; 0x68
d0045482:	ee71 7a27 	vadd.f32	s15, s2, s15
d0045486:	ed8d 1a1b 	vstr	s2, [sp, #108]	; 0x6c
d004548a:	eef4 6ac7 	vcmpe.f32	s13, s14
d004548e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045492:	dc0a      	bgt.n	d00454aa <submitWorldEntities+0xa2>
d0045494:	ed95 7a10 	vldr	s14, [r5, #64]	; 0x40
d0045498:	eef4 7ac7 	vcmpe.f32	s15, s14
d004549c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00454a0:	d403      	bmi.n	d00454aa <submitWorldEntities+0xa2>
d00454a2:	f849 4028 	str.w	r4, [r9, r8, lsl #2]
d00454a6:	f108 0801 	add.w	r8, r8, #1
d00454aa:	3460      	adds	r4, #96	; 0x60
d00454ac:	42b4      	cmp	r4, r6
d00454ae:	d1b8      	bne.n	d0045422 <submitWorldEntities+0x1a>
d00454b0:	f1b8 0f00 	cmp.w	r8, #0
d00454b4:	d009      	beq.n	d00454ca <submitWorldEntities+0xc2>
d00454b6:	4c07      	ldr	r4, [pc, #28]	; (d00454d4 <submitWorldEntities+0xcc>)
d00454b8:	eb04 0888 	add.w	r8, r4, r8, lsl #2
d00454bc:	f854 0b04 	ldr.w	r0, [r4], #4
d00454c0:	4629      	mov	r1, r5
d00454c2:	f7ff fac7 	bl	d0044a54 <submitEntitySolid>
d00454c6:	45a0      	cmp	r8, r4
d00454c8:	d1f8      	bne.n	d00454bc <submitWorldEntities+0xb4>
d00454ca:	b01d      	add	sp, #116	; 0x74
d00454cc:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d00454d0:	d00e1c80 	.word	0xd00e1c80
d00454d4:	d00e17e0 	.word	0xd00e17e0

d00454d8 <Render3D>:
d00454d8:	b5f0      	push	{r4, r5, r6, r7, lr}
d00454da:	4604      	mov	r4, r0
d00454dc:	4e6f      	ldr	r6, [pc, #444]	; (d004569c <Render3D+0x1c4>)
d00454de:	2700      	movs	r7, #0
d00454e0:	ed2d 8b02 	vpush	{d8}
d00454e4:	b087      	sub	sp, #28
d00454e6:	6037      	str	r7, [r6, #0]
d00454e8:	f7ff ff8e 	bl	d0045408 <submitWorldEntities>
d00454ec:	4620      	mov	r0, r4
d00454ee:	f7fd f94d 	bl	d004278c <sb3dParticlesRender>
d00454f2:	4b6b      	ldr	r3, [pc, #428]	; (d00456a0 <Render3D+0x1c8>)
d00454f4:	681d      	ldr	r5, [r3, #0]
d00454f6:	2d00      	cmp	r5, #0
d00454f8:	d04d      	beq.n	d0045596 <Render3D+0xbe>
d00454fa:	6833      	ldr	r3, [r6, #0]
d00454fc:	42bb      	cmp	r3, r7
d00454fe:	dd46      	ble.n	d004558e <Render3D+0xb6>
d0045500:	eeb6 8a00 	vmov.f32	s16, #96	; 0x3f000000  0.5
d0045504:	4c67      	ldr	r4, [pc, #412]	; (d00456a4 <Render3D+0x1cc>)
d0045506:	eddf 8a68 	vldr	s17, [pc, #416]	; d00456a8 <Render3D+0x1d0>
d004550a:	edd4 7a07 	vldr	s15, [r4, #28]
d004550e:	3701      	adds	r7, #1
d0045510:	f894 3035 	ldrb.w	r3, [r4, #53]	; 0x35
d0045514:	ee77 7a88 	vadd.f32	s15, s15, s16
d0045518:	ee07 3a10 	vmov	s14, r3
d004551c:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0045520:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0045524:	ee17 1a90 	vmov	r1, s15
d0045528:	eef0 7a48 	vmov.f32	s15, s16
d004552c:	2904      	cmp	r1, #4
d004552e:	eee7 7a28 	vfma.f32	s15, s14, s17
d0045532:	bfa8      	it	ge
d0045534:	2104      	movge	r1, #4
d0045536:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d004553a:	b153      	cbz	r3, d0045552 <Render3D+0x7a>
d004553c:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0045540:	ee17 3a90 	vmov	r3, s15
d0045544:	f1c3 0305 	rsb	r3, r3, #5
d0045548:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d004554c:	4299      	cmp	r1, r3
d004554e:	bfa8      	it	ge
d0045550:	4619      	movge	r1, r3
d0045552:	f894 0034 	ldrb.w	r0, [r4, #52]	; 0x34
d0045556:	f7fb f973 	bl	d0040840 <shadeColor>
d004555a:	4605      	mov	r5, r0
d004555c:	68e3      	ldr	r3, [r4, #12]
d004555e:	68a2      	ldr	r2, [r4, #8]
d0045560:	6861      	ldr	r1, [r4, #4]
d0045562:	9000      	str	r0, [sp, #0]
d0045564:	6820      	ldr	r0, [r4, #0]
d0045566:	f7fb f91d 	bl	d00407a4 <drawLine>
d004556a:	9500      	str	r5, [sp, #0]
d004556c:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
d0045570:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
d0045574:	f7fb f916 	bl	d00407a4 <drawLine>
d0045578:	9500      	str	r5, [sp, #0]
d004557a:	e9d4 2300 	ldrd	r2, r3, [r4]
d004557e:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
d0045582:	f7fb f90f 	bl	d00407a4 <drawLine>
d0045586:	6833      	ldr	r3, [r6, #0]
d0045588:	3440      	adds	r4, #64	; 0x40
d004558a:	42bb      	cmp	r3, r7
d004558c:	dcbd      	bgt.n	d004550a <Render3D+0x32>
d004558e:	b007      	add	sp, #28
d0045590:	ecbd 8b02 	vpop	{d8}
d0045594:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0045596:	f44f 2296 	mov.w	r2, #307200	; 0x4b000
d004559a:	21ff      	movs	r1, #255	; 0xff
d004559c:	4843      	ldr	r0, [pc, #268]	; (d00456ac <Render3D+0x1d4>)
d004559e:	f000 fca3 	bl	d0045ee8 <memset>
d00455a2:	4b43      	ldr	r3, [pc, #268]	; (d00456b0 <Render3D+0x1d8>)
d00455a4:	681f      	ldr	r7, [r3, #0]
d00455a6:	b33f      	cbz	r7, d00455f8 <Render3D+0x120>
d00455a8:	6833      	ldr	r3, [r6, #0]
d00455aa:	2b00      	cmp	r3, #0
d00455ac:	ddef      	ble.n	d004558e <Render3D+0xb6>
d00455ae:	4c3d      	ldr	r4, [pc, #244]	; (d00456a4 <Render3D+0x1cc>)
d00455b0:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d00455b4:	3501      	adds	r5, #1
d00455b6:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d00455b8:	8c21      	ldrh	r1, [r4, #32]
d00455ba:	6962      	ldr	r2, [r4, #20]
d00455bc:	8ca7      	ldrh	r7, [r4, #36]	; 0x24
d00455be:	9305      	str	r3, [sp, #20]
d00455c0:	9704      	str	r7, [sp, #16]
d00455c2:	9003      	str	r0, [sp, #12]
d00455c4:	9102      	str	r1, [sp, #8]
d00455c6:	9201      	str	r2, [sp, #4]
d00455c8:	6923      	ldr	r3, [r4, #16]
d00455ca:	9300      	str	r3, [sp, #0]
d00455cc:	edd4 1a07 	vldr	s3, [r4, #28]
d00455d0:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00455d4:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00455d8:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00455dc:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d00455e0:	e9d4 0100 	ldrd	r0, r1, [r4]
d00455e4:	f7fb f93c 	bl	d0040860 <fillTriangleFlat>
d00455e8:	6833      	ldr	r3, [r6, #0]
d00455ea:	3440      	adds	r4, #64	; 0x40
d00455ec:	42ab      	cmp	r3, r5
d00455ee:	dcdf      	bgt.n	d00455b0 <Render3D+0xd8>
d00455f0:	b007      	add	sp, #28
d00455f2:	ecbd 8b02 	vpop	{d8}
d00455f6:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00455f8:	4b2e      	ldr	r3, [pc, #184]	; (d00456b4 <Render3D+0x1dc>)
d00455fa:	681d      	ldr	r5, [r3, #0]
d00455fc:	6833      	ldr	r3, [r6, #0]
d00455fe:	b335      	cbz	r5, d004564e <Render3D+0x176>
d0045600:	2b00      	cmp	r3, #0
d0045602:	ddc4      	ble.n	d004558e <Render3D+0xb6>
d0045604:	4c27      	ldr	r4, [pc, #156]	; (d00456a4 <Render3D+0x1cc>)
d0045606:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d004560a:	3701      	adds	r7, #1
d004560c:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d004560e:	8c21      	ldrh	r1, [r4, #32]
d0045610:	6962      	ldr	r2, [r4, #20]
d0045612:	8ca5      	ldrh	r5, [r4, #36]	; 0x24
d0045614:	9305      	str	r3, [sp, #20]
d0045616:	6923      	ldr	r3, [r4, #16]
d0045618:	9504      	str	r5, [sp, #16]
d004561a:	9003      	str	r0, [sp, #12]
d004561c:	9102      	str	r1, [sp, #8]
d004561e:	9201      	str	r2, [sp, #4]
d0045620:	9300      	str	r3, [sp, #0]
d0045622:	edd4 1a07 	vldr	s3, [r4, #28]
d0045626:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d004562a:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d004562e:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0045632:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d0045636:	e9d4 0100 	ldrd	r0, r1, [r4]
d004563a:	f7fc f9dd 	bl	d00419f8 <fillTriangleDitherBayer2Mode>
d004563e:	6833      	ldr	r3, [r6, #0]
d0045640:	3440      	adds	r4, #64	; 0x40
d0045642:	42bb      	cmp	r3, r7
d0045644:	dcdf      	bgt.n	d0045606 <Render3D+0x12e>
d0045646:	b007      	add	sp, #28
d0045648:	ecbd 8b02 	vpop	{d8}
d004564c:	bdf0      	pop	{r4, r5, r6, r7, pc}
d004564e:	2b00      	cmp	r3, #0
d0045650:	dd9d      	ble.n	d004558e <Render3D+0xb6>
d0045652:	4c14      	ldr	r4, [pc, #80]	; (d00456a4 <Render3D+0x1cc>)
d0045654:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0045658:	3501      	adds	r5, #1
d004565a:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d004565c:	8c21      	ldrh	r1, [r4, #32]
d004565e:	6962      	ldr	r2, [r4, #20]
d0045660:	8ca7      	ldrh	r7, [r4, #36]	; 0x24
d0045662:	9305      	str	r3, [sp, #20]
d0045664:	6923      	ldr	r3, [r4, #16]
d0045666:	9704      	str	r7, [sp, #16]
d0045668:	9003      	str	r0, [sp, #12]
d004566a:	9102      	str	r1, [sp, #8]
d004566c:	9201      	str	r2, [sp, #4]
d004566e:	9300      	str	r3, [sp, #0]
d0045670:	edd4 1a07 	vldr	s3, [r4, #28]
d0045674:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0045678:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d004567c:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0045680:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d0045684:	e9d4 0100 	ldrd	r0, r1, [r4]
d0045688:	f7fb fcf8 	bl	d004107c <fillTriangleDitherBayer>
d004568c:	6833      	ldr	r3, [r6, #0]
d004568e:	3440      	adds	r4, #64	; 0x40
d0045690:	42ab      	cmp	r3, r5
d0045692:	dcdf      	bgt.n	d0045654 <Render3D+0x17c>
d0045694:	b007      	add	sp, #28
d0045696:	ecbd 8b02 	vpop	{d8}
d004569a:	bdf0      	pop	{r4, r5, r6, r7, pc}
d004569c:	d00557a4 	.word	0xd00557a4
d00456a0:	d00d57c4 	.word	0xd00d57c4
d00456a4:	d00557c0 	.word	0xd00557c0
d00456a8:	3ca0a0a1 	.word	0x3ca0a0a1
d00456ac:	d00e7c80 	.word	0xd00e7c80
d00456b0:	d00557a0 	.word	0xd00557a0
d00456b4:	d00d57c0 	.word	0xd00d57c0

d00456b8 <loadMeshSB3D>:
d00456b8:	2800      	cmp	r0, #0
d00456ba:	d07a      	beq.n	d00457b2 <loadMeshSB3D+0xfa>
d00456bc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00456c0:	460d      	mov	r5, r1
d00456c2:	4601      	mov	r1, r0
d00456c4:	fab5 f085 	clz	r0, r5
d00456c8:	ed2d 8b02 	vpush	{d8}
d00456cc:	0940      	lsrs	r0, r0, #5
d00456ce:	b08c      	sub	sp, #48	; 0x30
d00456d0:	2d00      	cmp	r5, #0
d00456d2:	d068      	beq.n	d00457a6 <loadMeshSB3D+0xee>
d00456d4:	4c6c      	ldr	r4, [pc, #432]	; (d0045888 <loadMeshSB3D+0x1d0>)
d00456d6:	2201      	movs	r2, #1
d00456d8:	eeb0 8a40 	vmov.f32	s16, s0
d00456dc:	7923      	ldrb	r3, [r4, #4]
d00456de:	7966      	ldrb	r6, [r4, #5]
d00456e0:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d00456e4:	79a6      	ldrb	r6, [r4, #6]
d00456e6:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d00456ea:	79e6      	ldrb	r6, [r4, #7]
d00456ec:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d00456f0:	681b      	ldr	r3, [r3, #0]
d00456f2:	681b      	ldr	r3, [r3, #0]
d00456f4:	4798      	blx	r3
d00456f6:	2800      	cmp	r0, #0
d00456f8:	d155      	bne.n	d00457a6 <loadMeshSB3D+0xee>
d00456fa:	f894 c004 	ldrb.w	ip, [r4, #4]
d00456fe:	2204      	movs	r2, #4
d0045700:	7961      	ldrb	r1, [r4, #5]
d0045702:	ab02      	add	r3, sp, #8
d0045704:	79a7      	ldrb	r7, [r4, #6]
d0045706:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d004570a:	79e6      	ldrb	r6, [r4, #7]
d004570c:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0045710:	a903      	add	r1, sp, #12
d0045712:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0045716:	6836      	ldr	r6, [r6, #0]
d0045718:	68b6      	ldr	r6, [r6, #8]
d004571a:	47b0      	blx	r6
d004571c:	2800      	cmp	r0, #0
d004571e:	d13f      	bne.n	d00457a0 <loadMeshSB3D+0xe8>
d0045720:	4b5a      	ldr	r3, [pc, #360]	; (d004588c <loadMeshSB3D+0x1d4>)
d0045722:	9a03      	ldr	r2, [sp, #12]
d0045724:	429a      	cmp	r2, r3
d0045726:	d13b      	bne.n	d00457a0 <loadMeshSB3D+0xe8>
d0045728:	f894 c004 	ldrb.w	ip, [r4, #4]
d004572c:	ab02      	add	r3, sp, #8
d004572e:	7961      	ldrb	r1, [r4, #5]
d0045730:	2204      	movs	r2, #4
d0045732:	79a7      	ldrb	r7, [r4, #6]
d0045734:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0045738:	79e6      	ldrb	r6, [r4, #7]
d004573a:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d004573e:	a904      	add	r1, sp, #16
d0045740:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0045744:	6836      	ldr	r6, [r6, #0]
d0045746:	68b6      	ldr	r6, [r6, #8]
d0045748:	47b0      	blx	r6
d004574a:	bb48      	cbnz	r0, d00457a0 <loadMeshSB3D+0xe8>
d004574c:	9b04      	ldr	r3, [sp, #16]
d004574e:	2b02      	cmp	r3, #2
d0045750:	d126      	bne.n	d00457a0 <loadMeshSB3D+0xe8>
d0045752:	f894 c004 	ldrb.w	ip, [r4, #4]
d0045756:	ab02      	add	r3, sp, #8
d0045758:	7961      	ldrb	r1, [r4, #5]
d004575a:	2204      	movs	r2, #4
d004575c:	79a7      	ldrb	r7, [r4, #6]
d004575e:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0045762:	79e6      	ldrb	r6, [r4, #7]
d0045764:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0045768:	a905      	add	r1, sp, #20
d004576a:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d004576e:	6836      	ldr	r6, [r6, #0]
d0045770:	68b6      	ldr	r6, [r6, #8]
d0045772:	47b0      	blx	r6
d0045774:	b9a0      	cbnz	r0, d00457a0 <loadMeshSB3D+0xe8>
d0045776:	7921      	ldrb	r1, [r4, #4]
d0045778:	ab02      	add	r3, sp, #8
d004577a:	7966      	ldrb	r6, [r4, #5]
d004577c:	2204      	movs	r2, #4
d004577e:	79a7      	ldrb	r7, [r4, #6]
d0045780:	ea41 2106 	orr.w	r1, r1, r6, lsl #8
d0045784:	79e6      	ldrb	r6, [r4, #7]
d0045786:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d004578a:	a906      	add	r1, sp, #24
d004578c:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0045790:	6836      	ldr	r6, [r6, #0]
d0045792:	68b6      	ldr	r6, [r6, #8]
d0045794:	47b0      	blx	r6
d0045796:	b918      	cbnz	r0, d00457a0 <loadMeshSB3D+0xe8>
d0045798:	9b05      	ldr	r3, [sp, #20]
d004579a:	b10b      	cbz	r3, d00457a0 <loadMeshSB3D+0xe8>
d004579c:	9e06      	ldr	r6, [sp, #24]
d004579e:	b956      	cbnz	r6, d00457b6 <loadMeshSB3D+0xfe>
d00457a0:	2000      	movs	r0, #0
d00457a2:	f000 f99b 	bl	d0045adc <fclose>
d00457a6:	2000      	movs	r0, #0
d00457a8:	b00c      	add	sp, #48	; 0x30
d00457aa:	ecbd 8b02 	vpop	{d8}
d00457ae:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00457b2:	2000      	movs	r0, #0
d00457b4:	4770      	bx	lr
d00457b6:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d00457ba:	2700      	movs	r7, #0
d00457bc:	606b      	str	r3, [r5, #4]
d00457be:	616e      	str	r6, [r5, #20]
d00457c0:	0080      	lsls	r0, r0, #2
d00457c2:	60ef      	str	r7, [r5, #12]
d00457c4:	f000 fb72 	bl	d0045eac <malloc>
d00457c8:	4603      	mov	r3, r0
d00457ca:	0130      	lsls	r0, r6, #4
d00457cc:	461e      	mov	r6, r3
d00457ce:	602b      	str	r3, [r5, #0]
d00457d0:	f000 fb6c 	bl	d0045eac <malloc>
d00457d4:	60af      	str	r7, [r5, #8]
d00457d6:	6128      	str	r0, [r5, #16]
d00457d8:	2e00      	cmp	r6, #0
d00457da:	f000 80fb 	beq.w	d00459d4 <loadMeshSB3D+0x31c>
d00457de:	2800      	cmp	r0, #0
d00457e0:	f000 80eb 	beq.w	d00459ba <loadMeshSB3D+0x302>
d00457e4:	46b8      	mov	r8, r7
d00457e6:	e017      	b.n	d0045818 <loadMeshSB3D+0x160>
d00457e8:	eddd 6a09 	vldr	s13, [sp, #36]	; 0x24
d00457ec:	ed9d 7a0a 	vldr	s14, [sp, #40]	; 0x28
d00457f0:	eddd 7a0b 	vldr	s15, [sp, #44]	; 0x2c
d00457f4:	ee66 6a88 	vmul.f32	s13, s13, s16
d00457f8:	682b      	ldr	r3, [r5, #0]
d00457fa:	ee27 7a08 	vmul.f32	s14, s14, s16
d00457fe:	9905      	ldr	r1, [sp, #20]
d0045800:	ee67 7a88 	vmul.f32	s15, s15, s16
d0045804:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d0045808:	4541      	cmp	r1, r8
d004580a:	edc3 6a00 	vstr	s13, [r3]
d004580e:	ed83 7a01 	vstr	s14, [r3, #4]
d0045812:	edc3 7a02 	vstr	s15, [r3, #8]
d0045816:	d931      	bls.n	d004587c <loadMeshSB3D+0x1c4>
d0045818:	f894 c004 	ldrb.w	ip, [r4, #4]
d004581c:	220c      	movs	r2, #12
d004581e:	7960      	ldrb	r0, [r4, #5]
d0045820:	ab02      	add	r3, sp, #8
d0045822:	79a7      	ldrb	r7, [r4, #6]
d0045824:	a909      	add	r1, sp, #36	; 0x24
d0045826:	ea4c 2000 	orr.w	r0, ip, r0, lsl #8
d004582a:	79e6      	ldrb	r6, [r4, #7]
d004582c:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d0045830:	2000      	movs	r0, #0
d0045832:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0045836:	6836      	ldr	r6, [r6, #0]
d0045838:	68b6      	ldr	r6, [r6, #8]
d004583a:	47b0      	blx	r6
d004583c:	eb08 0248 	add.w	r2, r8, r8, lsl #1
d0045840:	f108 0801 	add.w	r8, r8, #1
d0045844:	2800      	cmp	r0, #0
d0045846:	d0cf      	beq.n	d00457e8 <loadMeshSB3D+0x130>
d0045848:	6828      	ldr	r0, [r5, #0]
d004584a:	b108      	cbz	r0, d0045850 <loadMeshSB3D+0x198>
d004584c:	f000 fb36 	bl	d0045ebc <free>
d0045850:	6928      	ldr	r0, [r5, #16]
d0045852:	b108      	cbz	r0, d0045858 <loadMeshSB3D+0x1a0>
d0045854:	f000 fb32 	bl	d0045ebc <free>
d0045858:	68a8      	ldr	r0, [r5, #8]
d004585a:	b108      	cbz	r0, d0045860 <loadMeshSB3D+0x1a8>
d004585c:	f000 fb2e 	bl	d0045ebc <free>
d0045860:	2400      	movs	r4, #0
d0045862:	2300      	movs	r3, #0
d0045864:	4620      	mov	r0, r4
d0045866:	602c      	str	r4, [r5, #0]
d0045868:	612c      	str	r4, [r5, #16]
d004586a:	60ac      	str	r4, [r5, #8]
d004586c:	606c      	str	r4, [r5, #4]
d004586e:	616c      	str	r4, [r5, #20]
d0045870:	60ec      	str	r4, [r5, #12]
d0045872:	61ab      	str	r3, [r5, #24]
d0045874:	f000 f932 	bl	d0045adc <fclose>
d0045878:	4620      	mov	r0, r4
d004587a:	e795      	b.n	d00457a8 <loadMeshSB3D+0xf0>
d004587c:	9b06      	ldr	r3, [sp, #24]
d004587e:	2b00      	cmp	r3, #0
d0045880:	f000 808a 	beq.w	d0045998 <loadMeshSB3D+0x2e0>
d0045884:	4606      	mov	r6, r0
d0045886:	e06e      	b.n	d0045966 <loadMeshSB3D+0x2ae>
d0045888:	2001f000 	.word	0x2001f000
d004588c:	44334253 	.word	0x44334253
d0045890:	f894 e004 	ldrb.w	lr, [r4, #4]
d0045894:	7967      	ldrb	r7, [r4, #5]
d0045896:	f894 c006 	ldrb.w	ip, [r4, #6]
d004589a:	ea4e 2e07 	orr.w	lr, lr, r7, lsl #8
d004589e:	79e7      	ldrb	r7, [r4, #7]
d00458a0:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d00458a4:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d00458a8:	683f      	ldr	r7, [r7, #0]
d00458aa:	68bf      	ldr	r7, [r7, #8]
d00458ac:	47b8      	blx	r7
d00458ae:	ab02      	add	r3, sp, #8
d00458b0:	2204      	movs	r2, #4
d00458b2:	a909      	add	r1, sp, #36	; 0x24
d00458b4:	2800      	cmp	r0, #0
d00458b6:	d1c7      	bne.n	d0045848 <loadMeshSB3D+0x190>
d00458b8:	f894 e004 	ldrb.w	lr, [r4, #4]
d00458bc:	7967      	ldrb	r7, [r4, #5]
d00458be:	f894 c006 	ldrb.w	ip, [r4, #6]
d00458c2:	ea4e 2e07 	orr.w	lr, lr, r7, lsl #8
d00458c6:	79e7      	ldrb	r7, [r4, #7]
d00458c8:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d00458cc:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d00458d0:	683f      	ldr	r7, [r7, #0]
d00458d2:	68bf      	ldr	r7, [r7, #8]
d00458d4:	47b8      	blx	r7
d00458d6:	ab02      	add	r3, sp, #8
d00458d8:	2201      	movs	r2, #1
d00458da:	f10d 0106 	add.w	r1, sp, #6
d00458de:	2800      	cmp	r0, #0
d00458e0:	d1b2      	bne.n	d0045848 <loadMeshSB3D+0x190>
d00458e2:	f894 e004 	ldrb.w	lr, [r4, #4]
d00458e6:	7967      	ldrb	r7, [r4, #5]
d00458e8:	f894 c006 	ldrb.w	ip, [r4, #6]
d00458ec:	ea4e 2e07 	orr.w	lr, lr, r7, lsl #8
d00458f0:	79e7      	ldrb	r7, [r4, #7]
d00458f2:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d00458f6:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d00458fa:	683f      	ldr	r7, [r7, #0]
d00458fc:	68bf      	ldr	r7, [r7, #8]
d00458fe:	47b8      	blx	r7
d0045900:	ab02      	add	r3, sp, #8
d0045902:	2201      	movs	r2, #1
d0045904:	f10d 0107 	add.w	r1, sp, #7
d0045908:	2800      	cmp	r0, #0
d004590a:	d19d      	bne.n	d0045848 <loadMeshSB3D+0x190>
d004590c:	f894 e004 	ldrb.w	lr, [r4, #4]
d0045910:	7967      	ldrb	r7, [r4, #5]
d0045912:	f894 c006 	ldrb.w	ip, [r4, #6]
d0045916:	ea4e 2e07 	orr.w	lr, lr, r7, lsl #8
d004591a:	79e7      	ldrb	r7, [r4, #7]
d004591c:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d0045920:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0045924:	683f      	ldr	r7, [r7, #0]
d0045926:	68bf      	ldr	r7, [r7, #8]
d0045928:	47b8      	blx	r7
d004592a:	0137      	lsls	r7, r6, #4
d004592c:	2800      	cmp	r0, #0
d004592e:	d18b      	bne.n	d0045848 <loadMeshSB3D+0x190>
d0045930:	9a07      	ldr	r2, [sp, #28]
d0045932:	9b05      	ldr	r3, [sp, #20]
d0045934:	429a      	cmp	r2, r3
d0045936:	d287      	bcs.n	d0045848 <loadMeshSB3D+0x190>
d0045938:	9908      	ldr	r1, [sp, #32]
d004593a:	428b      	cmp	r3, r1
d004593c:	d984      	bls.n	d0045848 <loadMeshSB3D+0x190>
d004593e:	9809      	ldr	r0, [sp, #36]	; 0x24
d0045940:	4283      	cmp	r3, r0
d0045942:	d981      	bls.n	d0045848 <loadMeshSB3D+0x190>
d0045944:	692b      	ldr	r3, [r5, #16]
d0045946:	f8dd c018 	ldr.w	ip, [sp, #24]
d004594a:	51da      	str	r2, [r3, r7]
d004594c:	eb03 1306 	add.w	r3, r3, r6, lsl #4
d0045950:	3601      	adds	r6, #1
d0045952:	f89d 7006 	ldrb.w	r7, [sp, #6]
d0045956:	f89d 2007 	ldrb.w	r2, [sp, #7]
d004595a:	45b4      	cmp	ip, r6
d004595c:	6059      	str	r1, [r3, #4]
d004595e:	6098      	str	r0, [r3, #8]
d0045960:	731f      	strb	r7, [r3, #12]
d0045962:	735a      	strb	r2, [r3, #13]
d0045964:	d918      	bls.n	d0045998 <loadMeshSB3D+0x2e0>
d0045966:	7920      	ldrb	r0, [r4, #4]
d0045968:	ab02      	add	r3, sp, #8
d004596a:	7967      	ldrb	r7, [r4, #5]
d004596c:	2204      	movs	r2, #4
d004596e:	f894 c006 	ldrb.w	ip, [r4, #6]
d0045972:	a907      	add	r1, sp, #28
d0045974:	ea40 2007 	orr.w	r0, r0, r7, lsl #8
d0045978:	79e7      	ldrb	r7, [r4, #7]
d004597a:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d004597e:	2000      	movs	r0, #0
d0045980:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0045984:	683f      	ldr	r7, [r7, #0]
d0045986:	68bf      	ldr	r7, [r7, #8]
d0045988:	47b8      	blx	r7
d004598a:	ab02      	add	r3, sp, #8
d004598c:	2204      	movs	r2, #4
d004598e:	a908      	add	r1, sp, #32
d0045990:	2800      	cmp	r0, #0
d0045992:	f43f af7d 	beq.w	d0045890 <loadMeshSB3D+0x1d8>
d0045996:	e757      	b.n	d0045848 <loadMeshSB3D+0x190>
d0045998:	2000      	movs	r0, #0
d004599a:	f000 f89f 	bl	d0045adc <fclose>
d004599e:	4628      	mov	r0, r5
d00459a0:	f7fd fca2 	bl	d00432e8 <meshComputeBoundsRadius>
d00459a4:	eef1 7a00 	vmov.f32	s15, #16	; 0x40800000  4.0
d00459a8:	4628      	mov	r0, r5
d00459aa:	ee20 0a27 	vmul.f32	s0, s0, s15
d00459ae:	ed85 0a06 	vstr	s0, [r5, #24]
d00459b2:	f000 f815 	bl	d00459e0 <meshSetDefaultMaterial>
d00459b6:	2001      	movs	r0, #1
d00459b8:	e6f6      	b.n	d00457a8 <loadMeshSB3D+0xf0>
d00459ba:	4630      	mov	r0, r6
d00459bc:	f000 fa7e 	bl	d0045ebc <free>
d00459c0:	2400      	movs	r4, #0
d00459c2:	4620      	mov	r0, r4
d00459c4:	602c      	str	r4, [r5, #0]
d00459c6:	612c      	str	r4, [r5, #16]
d00459c8:	606c      	str	r4, [r5, #4]
d00459ca:	616c      	str	r4, [r5, #20]
d00459cc:	f000 f886 	bl	d0045adc <fclose>
d00459d0:	4620      	mov	r0, r4
d00459d2:	e6e9      	b.n	d00457a8 <loadMeshSB3D+0xf0>
d00459d4:	2800      	cmp	r0, #0
d00459d6:	d0f3      	beq.n	d00459c0 <loadMeshSB3D+0x308>
d00459d8:	f000 fa70 	bl	d0045ebc <free>
d00459dc:	e7f0      	b.n	d00459c0 <loadMeshSB3D+0x308>
d00459de:	bf00      	nop

d00459e0 <meshSetDefaultMaterial>:
d00459e0:	b148      	cbz	r0, d00459f6 <meshSetDefaultMaterial+0x16>
d00459e2:	2300      	movs	r3, #0
d00459e4:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d00459e8:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
d00459ec:	6203      	str	r3, [r0, #32]
d00459ee:	6241      	str	r1, [r0, #36]	; 0x24
d00459f0:	62c2      	str	r2, [r0, #44]	; 0x2c
d00459f2:	6303      	str	r3, [r0, #48]	; 0x30
d00459f4:	6283      	str	r3, [r0, #40]	; 0x28
d00459f6:	4770      	bx	lr

d00459f8 <__errno>:
d00459f8:	4b01      	ldr	r3, [pc, #4]	; (d0045a00 <__errno+0x8>)
d00459fa:	6818      	ldr	r0, [r3, #0]
d00459fc:	4770      	bx	lr
d00459fe:	bf00      	nop
d0045a00:	d00474f8 	.word	0xd00474f8

d0045a04 <_fclose_r>:
d0045a04:	b570      	push	{r4, r5, r6, lr}
d0045a06:	4605      	mov	r5, r0
d0045a08:	460c      	mov	r4, r1
d0045a0a:	b911      	cbnz	r1, d0045a12 <_fclose_r+0xe>
d0045a0c:	2600      	movs	r6, #0
d0045a0e:	4630      	mov	r0, r6
d0045a10:	bd70      	pop	{r4, r5, r6, pc}
d0045a12:	b118      	cbz	r0, d0045a1c <_fclose_r+0x18>
d0045a14:	6983      	ldr	r3, [r0, #24]
d0045a16:	b90b      	cbnz	r3, d0045a1c <_fclose_r+0x18>
d0045a18:	f000 f982 	bl	d0045d20 <__sinit>
d0045a1c:	4b2c      	ldr	r3, [pc, #176]	; (d0045ad0 <_fclose_r+0xcc>)
d0045a1e:	429c      	cmp	r4, r3
d0045a20:	d114      	bne.n	d0045a4c <_fclose_r+0x48>
d0045a22:	686c      	ldr	r4, [r5, #4]
d0045a24:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0045a26:	07d8      	lsls	r0, r3, #31
d0045a28:	d405      	bmi.n	d0045a36 <_fclose_r+0x32>
d0045a2a:	89a3      	ldrh	r3, [r4, #12]
d0045a2c:	0599      	lsls	r1, r3, #22
d0045a2e:	d402      	bmi.n	d0045a36 <_fclose_r+0x32>
d0045a30:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045a32:	f000 fa14 	bl	d0045e5e <__retarget_lock_acquire_recursive>
d0045a36:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0045a3a:	b98b      	cbnz	r3, d0045a60 <_fclose_r+0x5c>
d0045a3c:	6e66      	ldr	r6, [r4, #100]	; 0x64
d0045a3e:	f016 0601 	ands.w	r6, r6, #1
d0045a42:	d1e3      	bne.n	d0045a0c <_fclose_r+0x8>
d0045a44:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045a46:	f000 fa0b 	bl	d0045e60 <__retarget_lock_release_recursive>
d0045a4a:	e7e0      	b.n	d0045a0e <_fclose_r+0xa>
d0045a4c:	4b21      	ldr	r3, [pc, #132]	; (d0045ad4 <_fclose_r+0xd0>)
d0045a4e:	429c      	cmp	r4, r3
d0045a50:	d101      	bne.n	d0045a56 <_fclose_r+0x52>
d0045a52:	68ac      	ldr	r4, [r5, #8]
d0045a54:	e7e6      	b.n	d0045a24 <_fclose_r+0x20>
d0045a56:	4b20      	ldr	r3, [pc, #128]	; (d0045ad8 <_fclose_r+0xd4>)
d0045a58:	429c      	cmp	r4, r3
d0045a5a:	bf08      	it	eq
d0045a5c:	68ec      	ldreq	r4, [r5, #12]
d0045a5e:	e7e1      	b.n	d0045a24 <_fclose_r+0x20>
d0045a60:	4621      	mov	r1, r4
d0045a62:	4628      	mov	r0, r5
d0045a64:	f000 f842 	bl	d0045aec <__sflush_r>
d0045a68:	6b23      	ldr	r3, [r4, #48]	; 0x30
d0045a6a:	4606      	mov	r6, r0
d0045a6c:	b133      	cbz	r3, d0045a7c <_fclose_r+0x78>
d0045a6e:	6a21      	ldr	r1, [r4, #32]
d0045a70:	4628      	mov	r0, r5
d0045a72:	4798      	blx	r3
d0045a74:	2800      	cmp	r0, #0
d0045a76:	bfb8      	it	lt
d0045a78:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
d0045a7c:	89a3      	ldrh	r3, [r4, #12]
d0045a7e:	061a      	lsls	r2, r3, #24
d0045a80:	d503      	bpl.n	d0045a8a <_fclose_r+0x86>
d0045a82:	6921      	ldr	r1, [r4, #16]
d0045a84:	4628      	mov	r0, r5
d0045a86:	f000 fa37 	bl	d0045ef8 <_free_r>
d0045a8a:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0045a8c:	b141      	cbz	r1, d0045aa0 <_fclose_r+0x9c>
d0045a8e:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0045a92:	4299      	cmp	r1, r3
d0045a94:	d002      	beq.n	d0045a9c <_fclose_r+0x98>
d0045a96:	4628      	mov	r0, r5
d0045a98:	f000 fa2e 	bl	d0045ef8 <_free_r>
d0045a9c:	2300      	movs	r3, #0
d0045a9e:	6363      	str	r3, [r4, #52]	; 0x34
d0045aa0:	6ca1      	ldr	r1, [r4, #72]	; 0x48
d0045aa2:	b121      	cbz	r1, d0045aae <_fclose_r+0xaa>
d0045aa4:	4628      	mov	r0, r5
d0045aa6:	f000 fa27 	bl	d0045ef8 <_free_r>
d0045aaa:	2300      	movs	r3, #0
d0045aac:	64a3      	str	r3, [r4, #72]	; 0x48
d0045aae:	f000 f91f 	bl	d0045cf0 <__sfp_lock_acquire>
d0045ab2:	2300      	movs	r3, #0
d0045ab4:	81a3      	strh	r3, [r4, #12]
d0045ab6:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0045ab8:	07db      	lsls	r3, r3, #31
d0045aba:	d402      	bmi.n	d0045ac2 <_fclose_r+0xbe>
d0045abc:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045abe:	f000 f9cf 	bl	d0045e60 <__retarget_lock_release_recursive>
d0045ac2:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045ac4:	f000 f9ca 	bl	d0045e5c <__retarget_lock_close_recursive>
d0045ac8:	f000 f918 	bl	d0045cfc <__sfp_lock_release>
d0045acc:	e79f      	b.n	d0045a0e <_fclose_r+0xa>
d0045ace:	bf00      	nop
d0045ad0:	d0046d00 	.word	0xd0046d00
d0045ad4:	d0046d20 	.word	0xd0046d20
d0045ad8:	d0046ce0 	.word	0xd0046ce0

d0045adc <fclose>:
d0045adc:	4b02      	ldr	r3, [pc, #8]	; (d0045ae8 <fclose+0xc>)
d0045ade:	4601      	mov	r1, r0
d0045ae0:	6818      	ldr	r0, [r3, #0]
d0045ae2:	f7ff bf8f 	b.w	d0045a04 <_fclose_r>
d0045ae6:	bf00      	nop
d0045ae8:	d00474f8 	.word	0xd00474f8

d0045aec <__sflush_r>:
d0045aec:	898a      	ldrh	r2, [r1, #12]
d0045aee:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0045af2:	4605      	mov	r5, r0
d0045af4:	0710      	lsls	r0, r2, #28
d0045af6:	460c      	mov	r4, r1
d0045af8:	d458      	bmi.n	d0045bac <__sflush_r+0xc0>
d0045afa:	684b      	ldr	r3, [r1, #4]
d0045afc:	2b00      	cmp	r3, #0
d0045afe:	dc05      	bgt.n	d0045b0c <__sflush_r+0x20>
d0045b00:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0045b02:	2b00      	cmp	r3, #0
d0045b04:	dc02      	bgt.n	d0045b0c <__sflush_r+0x20>
d0045b06:	2000      	movs	r0, #0
d0045b08:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0045b0c:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0045b0e:	2e00      	cmp	r6, #0
d0045b10:	d0f9      	beq.n	d0045b06 <__sflush_r+0x1a>
d0045b12:	2300      	movs	r3, #0
d0045b14:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0045b18:	682f      	ldr	r7, [r5, #0]
d0045b1a:	602b      	str	r3, [r5, #0]
d0045b1c:	d032      	beq.n	d0045b84 <__sflush_r+0x98>
d0045b1e:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0045b20:	89a3      	ldrh	r3, [r4, #12]
d0045b22:	075a      	lsls	r2, r3, #29
d0045b24:	d505      	bpl.n	d0045b32 <__sflush_r+0x46>
d0045b26:	6863      	ldr	r3, [r4, #4]
d0045b28:	1ac0      	subs	r0, r0, r3
d0045b2a:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0045b2c:	b10b      	cbz	r3, d0045b32 <__sflush_r+0x46>
d0045b2e:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0045b30:	1ac0      	subs	r0, r0, r3
d0045b32:	2300      	movs	r3, #0
d0045b34:	4602      	mov	r2, r0
d0045b36:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0045b38:	6a21      	ldr	r1, [r4, #32]
d0045b3a:	4628      	mov	r0, r5
d0045b3c:	47b0      	blx	r6
d0045b3e:	1c43      	adds	r3, r0, #1
d0045b40:	89a3      	ldrh	r3, [r4, #12]
d0045b42:	d106      	bne.n	d0045b52 <__sflush_r+0x66>
d0045b44:	6829      	ldr	r1, [r5, #0]
d0045b46:	291d      	cmp	r1, #29
d0045b48:	d82c      	bhi.n	d0045ba4 <__sflush_r+0xb8>
d0045b4a:	4a2a      	ldr	r2, [pc, #168]	; (d0045bf4 <__sflush_r+0x108>)
d0045b4c:	40ca      	lsrs	r2, r1
d0045b4e:	07d6      	lsls	r6, r2, #31
d0045b50:	d528      	bpl.n	d0045ba4 <__sflush_r+0xb8>
d0045b52:	2200      	movs	r2, #0
d0045b54:	6062      	str	r2, [r4, #4]
d0045b56:	04d9      	lsls	r1, r3, #19
d0045b58:	6922      	ldr	r2, [r4, #16]
d0045b5a:	6022      	str	r2, [r4, #0]
d0045b5c:	d504      	bpl.n	d0045b68 <__sflush_r+0x7c>
d0045b5e:	1c42      	adds	r2, r0, #1
d0045b60:	d101      	bne.n	d0045b66 <__sflush_r+0x7a>
d0045b62:	682b      	ldr	r3, [r5, #0]
d0045b64:	b903      	cbnz	r3, d0045b68 <__sflush_r+0x7c>
d0045b66:	6560      	str	r0, [r4, #84]	; 0x54
d0045b68:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0045b6a:	602f      	str	r7, [r5, #0]
d0045b6c:	2900      	cmp	r1, #0
d0045b6e:	d0ca      	beq.n	d0045b06 <__sflush_r+0x1a>
d0045b70:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0045b74:	4299      	cmp	r1, r3
d0045b76:	d002      	beq.n	d0045b7e <__sflush_r+0x92>
d0045b78:	4628      	mov	r0, r5
d0045b7a:	f000 f9bd 	bl	d0045ef8 <_free_r>
d0045b7e:	2000      	movs	r0, #0
d0045b80:	6360      	str	r0, [r4, #52]	; 0x34
d0045b82:	e7c1      	b.n	d0045b08 <__sflush_r+0x1c>
d0045b84:	6a21      	ldr	r1, [r4, #32]
d0045b86:	2301      	movs	r3, #1
d0045b88:	4628      	mov	r0, r5
d0045b8a:	47b0      	blx	r6
d0045b8c:	1c41      	adds	r1, r0, #1
d0045b8e:	d1c7      	bne.n	d0045b20 <__sflush_r+0x34>
d0045b90:	682b      	ldr	r3, [r5, #0]
d0045b92:	2b00      	cmp	r3, #0
d0045b94:	d0c4      	beq.n	d0045b20 <__sflush_r+0x34>
d0045b96:	2b1d      	cmp	r3, #29
d0045b98:	d001      	beq.n	d0045b9e <__sflush_r+0xb2>
d0045b9a:	2b16      	cmp	r3, #22
d0045b9c:	d101      	bne.n	d0045ba2 <__sflush_r+0xb6>
d0045b9e:	602f      	str	r7, [r5, #0]
d0045ba0:	e7b1      	b.n	d0045b06 <__sflush_r+0x1a>
d0045ba2:	89a3      	ldrh	r3, [r4, #12]
d0045ba4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0045ba8:	81a3      	strh	r3, [r4, #12]
d0045baa:	e7ad      	b.n	d0045b08 <__sflush_r+0x1c>
d0045bac:	690f      	ldr	r7, [r1, #16]
d0045bae:	2f00      	cmp	r7, #0
d0045bb0:	d0a9      	beq.n	d0045b06 <__sflush_r+0x1a>
d0045bb2:	0793      	lsls	r3, r2, #30
d0045bb4:	680e      	ldr	r6, [r1, #0]
d0045bb6:	bf08      	it	eq
d0045bb8:	694b      	ldreq	r3, [r1, #20]
d0045bba:	600f      	str	r7, [r1, #0]
d0045bbc:	bf18      	it	ne
d0045bbe:	2300      	movne	r3, #0
d0045bc0:	eba6 0807 	sub.w	r8, r6, r7
d0045bc4:	608b      	str	r3, [r1, #8]
d0045bc6:	f1b8 0f00 	cmp.w	r8, #0
d0045bca:	dd9c      	ble.n	d0045b06 <__sflush_r+0x1a>
d0045bcc:	6a21      	ldr	r1, [r4, #32]
d0045bce:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0045bd0:	4643      	mov	r3, r8
d0045bd2:	463a      	mov	r2, r7
d0045bd4:	4628      	mov	r0, r5
d0045bd6:	47b0      	blx	r6
d0045bd8:	2800      	cmp	r0, #0
d0045bda:	dc06      	bgt.n	d0045bea <__sflush_r+0xfe>
d0045bdc:	89a3      	ldrh	r3, [r4, #12]
d0045bde:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0045be2:	81a3      	strh	r3, [r4, #12]
d0045be4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0045be8:	e78e      	b.n	d0045b08 <__sflush_r+0x1c>
d0045bea:	4407      	add	r7, r0
d0045bec:	eba8 0800 	sub.w	r8, r8, r0
d0045bf0:	e7e9      	b.n	d0045bc6 <__sflush_r+0xda>
d0045bf2:	bf00      	nop
d0045bf4:	20400001 	.word	0x20400001

d0045bf8 <_fflush_r>:
d0045bf8:	b538      	push	{r3, r4, r5, lr}
d0045bfa:	690b      	ldr	r3, [r1, #16]
d0045bfc:	4605      	mov	r5, r0
d0045bfe:	460c      	mov	r4, r1
d0045c00:	b913      	cbnz	r3, d0045c08 <_fflush_r+0x10>
d0045c02:	2500      	movs	r5, #0
d0045c04:	4628      	mov	r0, r5
d0045c06:	bd38      	pop	{r3, r4, r5, pc}
d0045c08:	b118      	cbz	r0, d0045c12 <_fflush_r+0x1a>
d0045c0a:	6983      	ldr	r3, [r0, #24]
d0045c0c:	b90b      	cbnz	r3, d0045c12 <_fflush_r+0x1a>
d0045c0e:	f000 f887 	bl	d0045d20 <__sinit>
d0045c12:	4b14      	ldr	r3, [pc, #80]	; (d0045c64 <_fflush_r+0x6c>)
d0045c14:	429c      	cmp	r4, r3
d0045c16:	d11b      	bne.n	d0045c50 <_fflush_r+0x58>
d0045c18:	686c      	ldr	r4, [r5, #4]
d0045c1a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0045c1e:	2b00      	cmp	r3, #0
d0045c20:	d0ef      	beq.n	d0045c02 <_fflush_r+0xa>
d0045c22:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0045c24:	07d0      	lsls	r0, r2, #31
d0045c26:	d404      	bmi.n	d0045c32 <_fflush_r+0x3a>
d0045c28:	0599      	lsls	r1, r3, #22
d0045c2a:	d402      	bmi.n	d0045c32 <_fflush_r+0x3a>
d0045c2c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045c2e:	f000 f916 	bl	d0045e5e <__retarget_lock_acquire_recursive>
d0045c32:	4628      	mov	r0, r5
d0045c34:	4621      	mov	r1, r4
d0045c36:	f7ff ff59 	bl	d0045aec <__sflush_r>
d0045c3a:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0045c3c:	07da      	lsls	r2, r3, #31
d0045c3e:	4605      	mov	r5, r0
d0045c40:	d4e0      	bmi.n	d0045c04 <_fflush_r+0xc>
d0045c42:	89a3      	ldrh	r3, [r4, #12]
d0045c44:	059b      	lsls	r3, r3, #22
d0045c46:	d4dd      	bmi.n	d0045c04 <_fflush_r+0xc>
d0045c48:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045c4a:	f000 f909 	bl	d0045e60 <__retarget_lock_release_recursive>
d0045c4e:	e7d9      	b.n	d0045c04 <_fflush_r+0xc>
d0045c50:	4b05      	ldr	r3, [pc, #20]	; (d0045c68 <_fflush_r+0x70>)
d0045c52:	429c      	cmp	r4, r3
d0045c54:	d101      	bne.n	d0045c5a <_fflush_r+0x62>
d0045c56:	68ac      	ldr	r4, [r5, #8]
d0045c58:	e7df      	b.n	d0045c1a <_fflush_r+0x22>
d0045c5a:	4b04      	ldr	r3, [pc, #16]	; (d0045c6c <_fflush_r+0x74>)
d0045c5c:	429c      	cmp	r4, r3
d0045c5e:	bf08      	it	eq
d0045c60:	68ec      	ldreq	r4, [r5, #12]
d0045c62:	e7da      	b.n	d0045c1a <_fflush_r+0x22>
d0045c64:	d0046d00 	.word	0xd0046d00
d0045c68:	d0046d20 	.word	0xd0046d20
d0045c6c:	d0046ce0 	.word	0xd0046ce0

d0045c70 <std>:
d0045c70:	2300      	movs	r3, #0
d0045c72:	b510      	push	{r4, lr}
d0045c74:	4604      	mov	r4, r0
d0045c76:	e9c0 3300 	strd	r3, r3, [r0]
d0045c7a:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0045c7e:	6083      	str	r3, [r0, #8]
d0045c80:	8181      	strh	r1, [r0, #12]
d0045c82:	6643      	str	r3, [r0, #100]	; 0x64
d0045c84:	81c2      	strh	r2, [r0, #14]
d0045c86:	6183      	str	r3, [r0, #24]
d0045c88:	4619      	mov	r1, r3
d0045c8a:	2208      	movs	r2, #8
d0045c8c:	305c      	adds	r0, #92	; 0x5c
d0045c8e:	f000 f92b 	bl	d0045ee8 <memset>
d0045c92:	4b05      	ldr	r3, [pc, #20]	; (d0045ca8 <std+0x38>)
d0045c94:	6263      	str	r3, [r4, #36]	; 0x24
d0045c96:	4b05      	ldr	r3, [pc, #20]	; (d0045cac <std+0x3c>)
d0045c98:	62a3      	str	r3, [r4, #40]	; 0x28
d0045c9a:	4b05      	ldr	r3, [pc, #20]	; (d0045cb0 <std+0x40>)
d0045c9c:	62e3      	str	r3, [r4, #44]	; 0x2c
d0045c9e:	4b05      	ldr	r3, [pc, #20]	; (d0045cb4 <std+0x44>)
d0045ca0:	6224      	str	r4, [r4, #32]
d0045ca2:	6323      	str	r3, [r4, #48]	; 0x30
d0045ca4:	bd10      	pop	{r4, pc}
d0045ca6:	bf00      	nop
d0045ca8:	d00461e9 	.word	0xd00461e9
d0045cac:	d004620b 	.word	0xd004620b
d0045cb0:	d0046243 	.word	0xd0046243
d0045cb4:	d0046267 	.word	0xd0046267

d0045cb8 <_cleanup_r>:
d0045cb8:	4901      	ldr	r1, [pc, #4]	; (d0045cc0 <_cleanup_r+0x8>)
d0045cba:	f000 b8af 	b.w	d0045e1c <_fwalk_reent>
d0045cbe:	bf00      	nop
d0045cc0:	d0045bf9 	.word	0xd0045bf9

d0045cc4 <__sfmoreglue>:
d0045cc4:	b570      	push	{r4, r5, r6, lr}
d0045cc6:	1e4a      	subs	r2, r1, #1
d0045cc8:	2568      	movs	r5, #104	; 0x68
d0045cca:	4355      	muls	r5, r2
d0045ccc:	460e      	mov	r6, r1
d0045cce:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0045cd2:	f000 f961 	bl	d0045f98 <_malloc_r>
d0045cd6:	4604      	mov	r4, r0
d0045cd8:	b140      	cbz	r0, d0045cec <__sfmoreglue+0x28>
d0045cda:	2100      	movs	r1, #0
d0045cdc:	e9c0 1600 	strd	r1, r6, [r0]
d0045ce0:	300c      	adds	r0, #12
d0045ce2:	60a0      	str	r0, [r4, #8]
d0045ce4:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0045ce8:	f000 f8fe 	bl	d0045ee8 <memset>
d0045cec:	4620      	mov	r0, r4
d0045cee:	bd70      	pop	{r4, r5, r6, pc}

d0045cf0 <__sfp_lock_acquire>:
d0045cf0:	4801      	ldr	r0, [pc, #4]	; (d0045cf8 <__sfp_lock_acquire+0x8>)
d0045cf2:	f000 b8b4 	b.w	d0045e5e <__retarget_lock_acquire_recursive>
d0045cf6:	bf00      	nop
d0045cf8:	d0132c88 	.word	0xd0132c88

d0045cfc <__sfp_lock_release>:
d0045cfc:	4801      	ldr	r0, [pc, #4]	; (d0045d04 <__sfp_lock_release+0x8>)
d0045cfe:	f000 b8af 	b.w	d0045e60 <__retarget_lock_release_recursive>
d0045d02:	bf00      	nop
d0045d04:	d0132c88 	.word	0xd0132c88

d0045d08 <__sinit_lock_acquire>:
d0045d08:	4801      	ldr	r0, [pc, #4]	; (d0045d10 <__sinit_lock_acquire+0x8>)
d0045d0a:	f000 b8a8 	b.w	d0045e5e <__retarget_lock_acquire_recursive>
d0045d0e:	bf00      	nop
d0045d10:	d0132c83 	.word	0xd0132c83

d0045d14 <__sinit_lock_release>:
d0045d14:	4801      	ldr	r0, [pc, #4]	; (d0045d1c <__sinit_lock_release+0x8>)
d0045d16:	f000 b8a3 	b.w	d0045e60 <__retarget_lock_release_recursive>
d0045d1a:	bf00      	nop
d0045d1c:	d0132c83 	.word	0xd0132c83

d0045d20 <__sinit>:
d0045d20:	b510      	push	{r4, lr}
d0045d22:	4604      	mov	r4, r0
d0045d24:	f7ff fff0 	bl	d0045d08 <__sinit_lock_acquire>
d0045d28:	69a3      	ldr	r3, [r4, #24]
d0045d2a:	b11b      	cbz	r3, d0045d34 <__sinit+0x14>
d0045d2c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0045d30:	f7ff bff0 	b.w	d0045d14 <__sinit_lock_release>
d0045d34:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0045d38:	6523      	str	r3, [r4, #80]	; 0x50
d0045d3a:	4b13      	ldr	r3, [pc, #76]	; (d0045d88 <__sinit+0x68>)
d0045d3c:	4a13      	ldr	r2, [pc, #76]	; (d0045d8c <__sinit+0x6c>)
d0045d3e:	681b      	ldr	r3, [r3, #0]
d0045d40:	62a2      	str	r2, [r4, #40]	; 0x28
d0045d42:	42a3      	cmp	r3, r4
d0045d44:	bf04      	itt	eq
d0045d46:	2301      	moveq	r3, #1
d0045d48:	61a3      	streq	r3, [r4, #24]
d0045d4a:	4620      	mov	r0, r4
d0045d4c:	f000 f820 	bl	d0045d90 <__sfp>
d0045d50:	6060      	str	r0, [r4, #4]
d0045d52:	4620      	mov	r0, r4
d0045d54:	f000 f81c 	bl	d0045d90 <__sfp>
d0045d58:	60a0      	str	r0, [r4, #8]
d0045d5a:	4620      	mov	r0, r4
d0045d5c:	f000 f818 	bl	d0045d90 <__sfp>
d0045d60:	2200      	movs	r2, #0
d0045d62:	60e0      	str	r0, [r4, #12]
d0045d64:	2104      	movs	r1, #4
d0045d66:	6860      	ldr	r0, [r4, #4]
d0045d68:	f7ff ff82 	bl	d0045c70 <std>
d0045d6c:	68a0      	ldr	r0, [r4, #8]
d0045d6e:	2201      	movs	r2, #1
d0045d70:	2109      	movs	r1, #9
d0045d72:	f7ff ff7d 	bl	d0045c70 <std>
d0045d76:	68e0      	ldr	r0, [r4, #12]
d0045d78:	2202      	movs	r2, #2
d0045d7a:	2112      	movs	r1, #18
d0045d7c:	f7ff ff78 	bl	d0045c70 <std>
d0045d80:	2301      	movs	r3, #1
d0045d82:	61a3      	str	r3, [r4, #24]
d0045d84:	e7d2      	b.n	d0045d2c <__sinit+0xc>
d0045d86:	bf00      	nop
d0045d88:	d0046d40 	.word	0xd0046d40
d0045d8c:	d0045cb9 	.word	0xd0045cb9

d0045d90 <__sfp>:
d0045d90:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0045d92:	4607      	mov	r7, r0
d0045d94:	f7ff ffac 	bl	d0045cf0 <__sfp_lock_acquire>
d0045d98:	4b1e      	ldr	r3, [pc, #120]	; (d0045e14 <__sfp+0x84>)
d0045d9a:	681e      	ldr	r6, [r3, #0]
d0045d9c:	69b3      	ldr	r3, [r6, #24]
d0045d9e:	b913      	cbnz	r3, d0045da6 <__sfp+0x16>
d0045da0:	4630      	mov	r0, r6
d0045da2:	f7ff ffbd 	bl	d0045d20 <__sinit>
d0045da6:	3648      	adds	r6, #72	; 0x48
d0045da8:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0045dac:	3b01      	subs	r3, #1
d0045dae:	d503      	bpl.n	d0045db8 <__sfp+0x28>
d0045db0:	6833      	ldr	r3, [r6, #0]
d0045db2:	b30b      	cbz	r3, d0045df8 <__sfp+0x68>
d0045db4:	6836      	ldr	r6, [r6, #0]
d0045db6:	e7f7      	b.n	d0045da8 <__sfp+0x18>
d0045db8:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0045dbc:	b9d5      	cbnz	r5, d0045df4 <__sfp+0x64>
d0045dbe:	4b16      	ldr	r3, [pc, #88]	; (d0045e18 <__sfp+0x88>)
d0045dc0:	60e3      	str	r3, [r4, #12]
d0045dc2:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0045dc6:	6665      	str	r5, [r4, #100]	; 0x64
d0045dc8:	f000 f847 	bl	d0045e5a <__retarget_lock_init_recursive>
d0045dcc:	f7ff ff96 	bl	d0045cfc <__sfp_lock_release>
d0045dd0:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0045dd4:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0045dd8:	6025      	str	r5, [r4, #0]
d0045dda:	61a5      	str	r5, [r4, #24]
d0045ddc:	2208      	movs	r2, #8
d0045dde:	4629      	mov	r1, r5
d0045de0:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0045de4:	f000 f880 	bl	d0045ee8 <memset>
d0045de8:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0045dec:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0045df0:	4620      	mov	r0, r4
d0045df2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0045df4:	3468      	adds	r4, #104	; 0x68
d0045df6:	e7d9      	b.n	d0045dac <__sfp+0x1c>
d0045df8:	2104      	movs	r1, #4
d0045dfa:	4638      	mov	r0, r7
d0045dfc:	f7ff ff62 	bl	d0045cc4 <__sfmoreglue>
d0045e00:	4604      	mov	r4, r0
d0045e02:	6030      	str	r0, [r6, #0]
d0045e04:	2800      	cmp	r0, #0
d0045e06:	d1d5      	bne.n	d0045db4 <__sfp+0x24>
d0045e08:	f7ff ff78 	bl	d0045cfc <__sfp_lock_release>
d0045e0c:	230c      	movs	r3, #12
d0045e0e:	603b      	str	r3, [r7, #0]
d0045e10:	e7ee      	b.n	d0045df0 <__sfp+0x60>
d0045e12:	bf00      	nop
d0045e14:	d0046d40 	.word	0xd0046d40
d0045e18:	ffff0001 	.word	0xffff0001

d0045e1c <_fwalk_reent>:
d0045e1c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0045e20:	4606      	mov	r6, r0
d0045e22:	4688      	mov	r8, r1
d0045e24:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0045e28:	2700      	movs	r7, #0
d0045e2a:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0045e2e:	f1b9 0901 	subs.w	r9, r9, #1
d0045e32:	d505      	bpl.n	d0045e40 <_fwalk_reent+0x24>
d0045e34:	6824      	ldr	r4, [r4, #0]
d0045e36:	2c00      	cmp	r4, #0
d0045e38:	d1f7      	bne.n	d0045e2a <_fwalk_reent+0xe>
d0045e3a:	4638      	mov	r0, r7
d0045e3c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0045e40:	89ab      	ldrh	r3, [r5, #12]
d0045e42:	2b01      	cmp	r3, #1
d0045e44:	d907      	bls.n	d0045e56 <_fwalk_reent+0x3a>
d0045e46:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0045e4a:	3301      	adds	r3, #1
d0045e4c:	d003      	beq.n	d0045e56 <_fwalk_reent+0x3a>
d0045e4e:	4629      	mov	r1, r5
d0045e50:	4630      	mov	r0, r6
d0045e52:	47c0      	blx	r8
d0045e54:	4307      	orrs	r7, r0
d0045e56:	3568      	adds	r5, #104	; 0x68
d0045e58:	e7e9      	b.n	d0045e2e <_fwalk_reent+0x12>

d0045e5a <__retarget_lock_init_recursive>:
d0045e5a:	4770      	bx	lr

d0045e5c <__retarget_lock_close_recursive>:
d0045e5c:	4770      	bx	lr

d0045e5e <__retarget_lock_acquire_recursive>:
d0045e5e:	4770      	bx	lr

d0045e60 <__retarget_lock_release_recursive>:
d0045e60:	4770      	bx	lr

d0045e62 <__swhatbuf_r>:
d0045e62:	b570      	push	{r4, r5, r6, lr}
d0045e64:	460e      	mov	r6, r1
d0045e66:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0045e6a:	2900      	cmp	r1, #0
d0045e6c:	b096      	sub	sp, #88	; 0x58
d0045e6e:	4614      	mov	r4, r2
d0045e70:	461d      	mov	r5, r3
d0045e72:	da07      	bge.n	d0045e84 <__swhatbuf_r+0x22>
d0045e74:	2300      	movs	r3, #0
d0045e76:	602b      	str	r3, [r5, #0]
d0045e78:	89b3      	ldrh	r3, [r6, #12]
d0045e7a:	061a      	lsls	r2, r3, #24
d0045e7c:	d410      	bmi.n	d0045ea0 <__swhatbuf_r+0x3e>
d0045e7e:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0045e82:	e00e      	b.n	d0045ea2 <__swhatbuf_r+0x40>
d0045e84:	466a      	mov	r2, sp
d0045e86:	f000 fa03 	bl	d0046290 <_fstat_r>
d0045e8a:	2800      	cmp	r0, #0
d0045e8c:	dbf2      	blt.n	d0045e74 <__swhatbuf_r+0x12>
d0045e8e:	9a01      	ldr	r2, [sp, #4]
d0045e90:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0045e94:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0045e98:	425a      	negs	r2, r3
d0045e9a:	415a      	adcs	r2, r3
d0045e9c:	602a      	str	r2, [r5, #0]
d0045e9e:	e7ee      	b.n	d0045e7e <__swhatbuf_r+0x1c>
d0045ea0:	2340      	movs	r3, #64	; 0x40
d0045ea2:	2000      	movs	r0, #0
d0045ea4:	6023      	str	r3, [r4, #0]
d0045ea6:	b016      	add	sp, #88	; 0x58
d0045ea8:	bd70      	pop	{r4, r5, r6, pc}
	...

d0045eac <malloc>:
d0045eac:	4b02      	ldr	r3, [pc, #8]	; (d0045eb8 <malloc+0xc>)
d0045eae:	4601      	mov	r1, r0
d0045eb0:	6818      	ldr	r0, [r3, #0]
d0045eb2:	f000 b871 	b.w	d0045f98 <_malloc_r>
d0045eb6:	bf00      	nop
d0045eb8:	d00474f8 	.word	0xd00474f8

d0045ebc <free>:
d0045ebc:	4b02      	ldr	r3, [pc, #8]	; (d0045ec8 <free+0xc>)
d0045ebe:	4601      	mov	r1, r0
d0045ec0:	6818      	ldr	r0, [r3, #0]
d0045ec2:	f000 b819 	b.w	d0045ef8 <_free_r>
d0045ec6:	bf00      	nop
d0045ec8:	d00474f8 	.word	0xd00474f8

d0045ecc <memcpy>:
d0045ecc:	440a      	add	r2, r1
d0045ece:	4291      	cmp	r1, r2
d0045ed0:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0045ed4:	d100      	bne.n	d0045ed8 <memcpy+0xc>
d0045ed6:	4770      	bx	lr
d0045ed8:	b510      	push	{r4, lr}
d0045eda:	f811 4b01 	ldrb.w	r4, [r1], #1
d0045ede:	f803 4f01 	strb.w	r4, [r3, #1]!
d0045ee2:	4291      	cmp	r1, r2
d0045ee4:	d1f9      	bne.n	d0045eda <memcpy+0xe>
d0045ee6:	bd10      	pop	{r4, pc}

d0045ee8 <memset>:
d0045ee8:	4402      	add	r2, r0
d0045eea:	4603      	mov	r3, r0
d0045eec:	4293      	cmp	r3, r2
d0045eee:	d100      	bne.n	d0045ef2 <memset+0xa>
d0045ef0:	4770      	bx	lr
d0045ef2:	f803 1b01 	strb.w	r1, [r3], #1
d0045ef6:	e7f9      	b.n	d0045eec <memset+0x4>

d0045ef8 <_free_r>:
d0045ef8:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0045efa:	2900      	cmp	r1, #0
d0045efc:	d048      	beq.n	d0045f90 <_free_r+0x98>
d0045efe:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0045f02:	9001      	str	r0, [sp, #4]
d0045f04:	2b00      	cmp	r3, #0
d0045f06:	f1a1 0404 	sub.w	r4, r1, #4
d0045f0a:	bfb8      	it	lt
d0045f0c:	18e4      	addlt	r4, r4, r3
d0045f0e:	f000 f9e3 	bl	d00462d8 <__malloc_lock>
d0045f12:	4a20      	ldr	r2, [pc, #128]	; (d0045f94 <_free_r+0x9c>)
d0045f14:	9801      	ldr	r0, [sp, #4]
d0045f16:	6813      	ldr	r3, [r2, #0]
d0045f18:	4615      	mov	r5, r2
d0045f1a:	b933      	cbnz	r3, d0045f2a <_free_r+0x32>
d0045f1c:	6063      	str	r3, [r4, #4]
d0045f1e:	6014      	str	r4, [r2, #0]
d0045f20:	b003      	add	sp, #12
d0045f22:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0045f26:	f000 b9dd 	b.w	d00462e4 <__malloc_unlock>
d0045f2a:	42a3      	cmp	r3, r4
d0045f2c:	d90b      	bls.n	d0045f46 <_free_r+0x4e>
d0045f2e:	6821      	ldr	r1, [r4, #0]
d0045f30:	1862      	adds	r2, r4, r1
d0045f32:	4293      	cmp	r3, r2
d0045f34:	bf04      	itt	eq
d0045f36:	681a      	ldreq	r2, [r3, #0]
d0045f38:	685b      	ldreq	r3, [r3, #4]
d0045f3a:	6063      	str	r3, [r4, #4]
d0045f3c:	bf04      	itt	eq
d0045f3e:	1852      	addeq	r2, r2, r1
d0045f40:	6022      	streq	r2, [r4, #0]
d0045f42:	602c      	str	r4, [r5, #0]
d0045f44:	e7ec      	b.n	d0045f20 <_free_r+0x28>
d0045f46:	461a      	mov	r2, r3
d0045f48:	685b      	ldr	r3, [r3, #4]
d0045f4a:	b10b      	cbz	r3, d0045f50 <_free_r+0x58>
d0045f4c:	42a3      	cmp	r3, r4
d0045f4e:	d9fa      	bls.n	d0045f46 <_free_r+0x4e>
d0045f50:	6811      	ldr	r1, [r2, #0]
d0045f52:	1855      	adds	r5, r2, r1
d0045f54:	42a5      	cmp	r5, r4
d0045f56:	d10b      	bne.n	d0045f70 <_free_r+0x78>
d0045f58:	6824      	ldr	r4, [r4, #0]
d0045f5a:	4421      	add	r1, r4
d0045f5c:	1854      	adds	r4, r2, r1
d0045f5e:	42a3      	cmp	r3, r4
d0045f60:	6011      	str	r1, [r2, #0]
d0045f62:	d1dd      	bne.n	d0045f20 <_free_r+0x28>
d0045f64:	681c      	ldr	r4, [r3, #0]
d0045f66:	685b      	ldr	r3, [r3, #4]
d0045f68:	6053      	str	r3, [r2, #4]
d0045f6a:	4421      	add	r1, r4
d0045f6c:	6011      	str	r1, [r2, #0]
d0045f6e:	e7d7      	b.n	d0045f20 <_free_r+0x28>
d0045f70:	d902      	bls.n	d0045f78 <_free_r+0x80>
d0045f72:	230c      	movs	r3, #12
d0045f74:	6003      	str	r3, [r0, #0]
d0045f76:	e7d3      	b.n	d0045f20 <_free_r+0x28>
d0045f78:	6825      	ldr	r5, [r4, #0]
d0045f7a:	1961      	adds	r1, r4, r5
d0045f7c:	428b      	cmp	r3, r1
d0045f7e:	bf04      	itt	eq
d0045f80:	6819      	ldreq	r1, [r3, #0]
d0045f82:	685b      	ldreq	r3, [r3, #4]
d0045f84:	6063      	str	r3, [r4, #4]
d0045f86:	bf04      	itt	eq
d0045f88:	1949      	addeq	r1, r1, r5
d0045f8a:	6021      	streq	r1, [r4, #0]
d0045f8c:	6054      	str	r4, [r2, #4]
d0045f8e:	e7c7      	b.n	d0045f20 <_free_r+0x28>
d0045f90:	b003      	add	sp, #12
d0045f92:	bd30      	pop	{r4, r5, pc}
d0045f94:	d00e1be0 	.word	0xd00e1be0

d0045f98 <_malloc_r>:
d0045f98:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0045f9a:	1ccd      	adds	r5, r1, #3
d0045f9c:	f025 0503 	bic.w	r5, r5, #3
d0045fa0:	3508      	adds	r5, #8
d0045fa2:	2d0c      	cmp	r5, #12
d0045fa4:	bf38      	it	cc
d0045fa6:	250c      	movcc	r5, #12
d0045fa8:	2d00      	cmp	r5, #0
d0045faa:	4606      	mov	r6, r0
d0045fac:	db01      	blt.n	d0045fb2 <_malloc_r+0x1a>
d0045fae:	42a9      	cmp	r1, r5
d0045fb0:	d903      	bls.n	d0045fba <_malloc_r+0x22>
d0045fb2:	230c      	movs	r3, #12
d0045fb4:	6033      	str	r3, [r6, #0]
d0045fb6:	2000      	movs	r0, #0
d0045fb8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0045fba:	f000 f98d 	bl	d00462d8 <__malloc_lock>
d0045fbe:	4921      	ldr	r1, [pc, #132]	; (d0046044 <_malloc_r+0xac>)
d0045fc0:	680a      	ldr	r2, [r1, #0]
d0045fc2:	4614      	mov	r4, r2
d0045fc4:	b99c      	cbnz	r4, d0045fee <_malloc_r+0x56>
d0045fc6:	4f20      	ldr	r7, [pc, #128]	; (d0046048 <_malloc_r+0xb0>)
d0045fc8:	683b      	ldr	r3, [r7, #0]
d0045fca:	b923      	cbnz	r3, d0045fd6 <_malloc_r+0x3e>
d0045fcc:	4621      	mov	r1, r4
d0045fce:	4630      	mov	r0, r6
d0045fd0:	f7fa f886 	bl	d00400e0 <_sbrk_r>
d0045fd4:	6038      	str	r0, [r7, #0]
d0045fd6:	4629      	mov	r1, r5
d0045fd8:	4630      	mov	r0, r6
d0045fda:	f7fa f881 	bl	d00400e0 <_sbrk_r>
d0045fde:	1c43      	adds	r3, r0, #1
d0045fe0:	d123      	bne.n	d004602a <_malloc_r+0x92>
d0045fe2:	230c      	movs	r3, #12
d0045fe4:	6033      	str	r3, [r6, #0]
d0045fe6:	4630      	mov	r0, r6
d0045fe8:	f000 f97c 	bl	d00462e4 <__malloc_unlock>
d0045fec:	e7e3      	b.n	d0045fb6 <_malloc_r+0x1e>
d0045fee:	6823      	ldr	r3, [r4, #0]
d0045ff0:	1b5b      	subs	r3, r3, r5
d0045ff2:	d417      	bmi.n	d0046024 <_malloc_r+0x8c>
d0045ff4:	2b0b      	cmp	r3, #11
d0045ff6:	d903      	bls.n	d0046000 <_malloc_r+0x68>
d0045ff8:	6023      	str	r3, [r4, #0]
d0045ffa:	441c      	add	r4, r3
d0045ffc:	6025      	str	r5, [r4, #0]
d0045ffe:	e004      	b.n	d004600a <_malloc_r+0x72>
d0046000:	6863      	ldr	r3, [r4, #4]
d0046002:	42a2      	cmp	r2, r4
d0046004:	bf0c      	ite	eq
d0046006:	600b      	streq	r3, [r1, #0]
d0046008:	6053      	strne	r3, [r2, #4]
d004600a:	4630      	mov	r0, r6
d004600c:	f000 f96a 	bl	d00462e4 <__malloc_unlock>
d0046010:	f104 000b 	add.w	r0, r4, #11
d0046014:	1d23      	adds	r3, r4, #4
d0046016:	f020 0007 	bic.w	r0, r0, #7
d004601a:	1ac2      	subs	r2, r0, r3
d004601c:	d0cc      	beq.n	d0045fb8 <_malloc_r+0x20>
d004601e:	1a1b      	subs	r3, r3, r0
d0046020:	50a3      	str	r3, [r4, r2]
d0046022:	e7c9      	b.n	d0045fb8 <_malloc_r+0x20>
d0046024:	4622      	mov	r2, r4
d0046026:	6864      	ldr	r4, [r4, #4]
d0046028:	e7cc      	b.n	d0045fc4 <_malloc_r+0x2c>
d004602a:	1cc4      	adds	r4, r0, #3
d004602c:	f024 0403 	bic.w	r4, r4, #3
d0046030:	42a0      	cmp	r0, r4
d0046032:	d0e3      	beq.n	d0045ffc <_malloc_r+0x64>
d0046034:	1a21      	subs	r1, r4, r0
d0046036:	4630      	mov	r0, r6
d0046038:	f7fa f852 	bl	d00400e0 <_sbrk_r>
d004603c:	3001      	adds	r0, #1
d004603e:	d1dd      	bne.n	d0045ffc <_malloc_r+0x64>
d0046040:	e7cf      	b.n	d0045fe2 <_malloc_r+0x4a>
d0046042:	bf00      	nop
d0046044:	d00e1be0 	.word	0xd00e1be0
d0046048:	d00e1be4 	.word	0xd00e1be4

d004604c <setbuf>:
d004604c:	2900      	cmp	r1, #0
d004604e:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0046052:	bf0c      	ite	eq
d0046054:	2202      	moveq	r2, #2
d0046056:	2200      	movne	r2, #0
d0046058:	f000 b800 	b.w	d004605c <setvbuf>

d004605c <setvbuf>:
d004605c:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0046060:	461d      	mov	r5, r3
d0046062:	4b5d      	ldr	r3, [pc, #372]	; (d00461d8 <setvbuf+0x17c>)
d0046064:	681f      	ldr	r7, [r3, #0]
d0046066:	4604      	mov	r4, r0
d0046068:	460e      	mov	r6, r1
d004606a:	4690      	mov	r8, r2
d004606c:	b127      	cbz	r7, d0046078 <setvbuf+0x1c>
d004606e:	69bb      	ldr	r3, [r7, #24]
d0046070:	b913      	cbnz	r3, d0046078 <setvbuf+0x1c>
d0046072:	4638      	mov	r0, r7
d0046074:	f7ff fe54 	bl	d0045d20 <__sinit>
d0046078:	4b58      	ldr	r3, [pc, #352]	; (d00461dc <setvbuf+0x180>)
d004607a:	429c      	cmp	r4, r3
d004607c:	d167      	bne.n	d004614e <setvbuf+0xf2>
d004607e:	687c      	ldr	r4, [r7, #4]
d0046080:	f1b8 0f02 	cmp.w	r8, #2
d0046084:	d006      	beq.n	d0046094 <setvbuf+0x38>
d0046086:	f1b8 0f01 	cmp.w	r8, #1
d004608a:	f200 809f 	bhi.w	d00461cc <setvbuf+0x170>
d004608e:	2d00      	cmp	r5, #0
d0046090:	f2c0 809c 	blt.w	d00461cc <setvbuf+0x170>
d0046094:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0046096:	07db      	lsls	r3, r3, #31
d0046098:	d405      	bmi.n	d00460a6 <setvbuf+0x4a>
d004609a:	89a3      	ldrh	r3, [r4, #12]
d004609c:	0598      	lsls	r0, r3, #22
d004609e:	d402      	bmi.n	d00460a6 <setvbuf+0x4a>
d00460a0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00460a2:	f7ff fedc 	bl	d0045e5e <__retarget_lock_acquire_recursive>
d00460a6:	4621      	mov	r1, r4
d00460a8:	4638      	mov	r0, r7
d00460aa:	f7ff fda5 	bl	d0045bf8 <_fflush_r>
d00460ae:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00460b0:	b141      	cbz	r1, d00460c4 <setvbuf+0x68>
d00460b2:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00460b6:	4299      	cmp	r1, r3
d00460b8:	d002      	beq.n	d00460c0 <setvbuf+0x64>
d00460ba:	4638      	mov	r0, r7
d00460bc:	f7ff ff1c 	bl	d0045ef8 <_free_r>
d00460c0:	2300      	movs	r3, #0
d00460c2:	6363      	str	r3, [r4, #52]	; 0x34
d00460c4:	2300      	movs	r3, #0
d00460c6:	61a3      	str	r3, [r4, #24]
d00460c8:	6063      	str	r3, [r4, #4]
d00460ca:	89a3      	ldrh	r3, [r4, #12]
d00460cc:	0619      	lsls	r1, r3, #24
d00460ce:	d503      	bpl.n	d00460d8 <setvbuf+0x7c>
d00460d0:	6921      	ldr	r1, [r4, #16]
d00460d2:	4638      	mov	r0, r7
d00460d4:	f7ff ff10 	bl	d0045ef8 <_free_r>
d00460d8:	89a3      	ldrh	r3, [r4, #12]
d00460da:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d00460de:	f023 0303 	bic.w	r3, r3, #3
d00460e2:	f1b8 0f02 	cmp.w	r8, #2
d00460e6:	81a3      	strh	r3, [r4, #12]
d00460e8:	d06c      	beq.n	d00461c4 <setvbuf+0x168>
d00460ea:	ab01      	add	r3, sp, #4
d00460ec:	466a      	mov	r2, sp
d00460ee:	4621      	mov	r1, r4
d00460f0:	4638      	mov	r0, r7
d00460f2:	f7ff feb6 	bl	d0045e62 <__swhatbuf_r>
d00460f6:	89a3      	ldrh	r3, [r4, #12]
d00460f8:	4318      	orrs	r0, r3
d00460fa:	81a0      	strh	r0, [r4, #12]
d00460fc:	2d00      	cmp	r5, #0
d00460fe:	d130      	bne.n	d0046162 <setvbuf+0x106>
d0046100:	9d00      	ldr	r5, [sp, #0]
d0046102:	4628      	mov	r0, r5
d0046104:	f7ff fed2 	bl	d0045eac <malloc>
d0046108:	4606      	mov	r6, r0
d004610a:	2800      	cmp	r0, #0
d004610c:	d155      	bne.n	d00461ba <setvbuf+0x15e>
d004610e:	f8dd 9000 	ldr.w	r9, [sp]
d0046112:	45a9      	cmp	r9, r5
d0046114:	d14a      	bne.n	d00461ac <setvbuf+0x150>
d0046116:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d004611a:	2200      	movs	r2, #0
d004611c:	60a2      	str	r2, [r4, #8]
d004611e:	f104 0247 	add.w	r2, r4, #71	; 0x47
d0046122:	6022      	str	r2, [r4, #0]
d0046124:	6122      	str	r2, [r4, #16]
d0046126:	2201      	movs	r2, #1
d0046128:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d004612c:	6162      	str	r2, [r4, #20]
d004612e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0046130:	f043 0302 	orr.w	r3, r3, #2
d0046134:	07d2      	lsls	r2, r2, #31
d0046136:	81a3      	strh	r3, [r4, #12]
d0046138:	d405      	bmi.n	d0046146 <setvbuf+0xea>
d004613a:	f413 7f00 	tst.w	r3, #512	; 0x200
d004613e:	d102      	bne.n	d0046146 <setvbuf+0xea>
d0046140:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0046142:	f7ff fe8d 	bl	d0045e60 <__retarget_lock_release_recursive>
d0046146:	4628      	mov	r0, r5
d0046148:	b003      	add	sp, #12
d004614a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d004614e:	4b24      	ldr	r3, [pc, #144]	; (d00461e0 <setvbuf+0x184>)
d0046150:	429c      	cmp	r4, r3
d0046152:	d101      	bne.n	d0046158 <setvbuf+0xfc>
d0046154:	68bc      	ldr	r4, [r7, #8]
d0046156:	e793      	b.n	d0046080 <setvbuf+0x24>
d0046158:	4b22      	ldr	r3, [pc, #136]	; (d00461e4 <setvbuf+0x188>)
d004615a:	429c      	cmp	r4, r3
d004615c:	bf08      	it	eq
d004615e:	68fc      	ldreq	r4, [r7, #12]
d0046160:	e78e      	b.n	d0046080 <setvbuf+0x24>
d0046162:	2e00      	cmp	r6, #0
d0046164:	d0cd      	beq.n	d0046102 <setvbuf+0xa6>
d0046166:	69bb      	ldr	r3, [r7, #24]
d0046168:	b913      	cbnz	r3, d0046170 <setvbuf+0x114>
d004616a:	4638      	mov	r0, r7
d004616c:	f7ff fdd8 	bl	d0045d20 <__sinit>
d0046170:	f1b8 0f01 	cmp.w	r8, #1
d0046174:	bf08      	it	eq
d0046176:	89a3      	ldrheq	r3, [r4, #12]
d0046178:	6026      	str	r6, [r4, #0]
d004617a:	bf04      	itt	eq
d004617c:	f043 0301 	orreq.w	r3, r3, #1
d0046180:	81a3      	strheq	r3, [r4, #12]
d0046182:	89a2      	ldrh	r2, [r4, #12]
d0046184:	f012 0308 	ands.w	r3, r2, #8
d0046188:	e9c4 6504 	strd	r6, r5, [r4, #16]
d004618c:	d01c      	beq.n	d00461c8 <setvbuf+0x16c>
d004618e:	07d3      	lsls	r3, r2, #31
d0046190:	bf41      	itttt	mi
d0046192:	2300      	movmi	r3, #0
d0046194:	426d      	negmi	r5, r5
d0046196:	60a3      	strmi	r3, [r4, #8]
d0046198:	61a5      	strmi	r5, [r4, #24]
d004619a:	bf58      	it	pl
d004619c:	60a5      	strpl	r5, [r4, #8]
d004619e:	6e65      	ldr	r5, [r4, #100]	; 0x64
d00461a0:	f015 0501 	ands.w	r5, r5, #1
d00461a4:	d115      	bne.n	d00461d2 <setvbuf+0x176>
d00461a6:	f412 7f00 	tst.w	r2, #512	; 0x200
d00461aa:	e7c8      	b.n	d004613e <setvbuf+0xe2>
d00461ac:	4648      	mov	r0, r9
d00461ae:	f7ff fe7d 	bl	d0045eac <malloc>
d00461b2:	4606      	mov	r6, r0
d00461b4:	2800      	cmp	r0, #0
d00461b6:	d0ae      	beq.n	d0046116 <setvbuf+0xba>
d00461b8:	464d      	mov	r5, r9
d00461ba:	89a3      	ldrh	r3, [r4, #12]
d00461bc:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00461c0:	81a3      	strh	r3, [r4, #12]
d00461c2:	e7d0      	b.n	d0046166 <setvbuf+0x10a>
d00461c4:	2500      	movs	r5, #0
d00461c6:	e7a8      	b.n	d004611a <setvbuf+0xbe>
d00461c8:	60a3      	str	r3, [r4, #8]
d00461ca:	e7e8      	b.n	d004619e <setvbuf+0x142>
d00461cc:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00461d0:	e7b9      	b.n	d0046146 <setvbuf+0xea>
d00461d2:	2500      	movs	r5, #0
d00461d4:	e7b7      	b.n	d0046146 <setvbuf+0xea>
d00461d6:	bf00      	nop
d00461d8:	d00474f8 	.word	0xd00474f8
d00461dc:	d0046d00 	.word	0xd0046d00
d00461e0:	d0046d20 	.word	0xd0046d20
d00461e4:	d0046ce0 	.word	0xd0046ce0

d00461e8 <__sread>:
d00461e8:	b510      	push	{r4, lr}
d00461ea:	460c      	mov	r4, r1
d00461ec:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00461f0:	f000 f87e 	bl	d00462f0 <_read_r>
d00461f4:	2800      	cmp	r0, #0
d00461f6:	bfab      	itete	ge
d00461f8:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d00461fa:	89a3      	ldrhlt	r3, [r4, #12]
d00461fc:	181b      	addge	r3, r3, r0
d00461fe:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d0046202:	bfac      	ite	ge
d0046204:	6563      	strge	r3, [r4, #84]	; 0x54
d0046206:	81a3      	strhlt	r3, [r4, #12]
d0046208:	bd10      	pop	{r4, pc}

d004620a <__swrite>:
d004620a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d004620e:	461f      	mov	r7, r3
d0046210:	898b      	ldrh	r3, [r1, #12]
d0046212:	05db      	lsls	r3, r3, #23
d0046214:	4605      	mov	r5, r0
d0046216:	460c      	mov	r4, r1
d0046218:	4616      	mov	r6, r2
d004621a:	d505      	bpl.n	d0046228 <__swrite+0x1e>
d004621c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0046220:	2302      	movs	r3, #2
d0046222:	2200      	movs	r2, #0
d0046224:	f000 f846 	bl	d00462b4 <_lseek_r>
d0046228:	89a3      	ldrh	r3, [r4, #12]
d004622a:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d004622e:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0046232:	81a3      	strh	r3, [r4, #12]
d0046234:	4632      	mov	r2, r6
d0046236:	463b      	mov	r3, r7
d0046238:	4628      	mov	r0, r5
d004623a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d004623e:	f7f9 bf09 	b.w	d0040054 <_write_r>

d0046242 <__sseek>:
d0046242:	b510      	push	{r4, lr}
d0046244:	460c      	mov	r4, r1
d0046246:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d004624a:	f000 f833 	bl	d00462b4 <_lseek_r>
d004624e:	1c43      	adds	r3, r0, #1
d0046250:	89a3      	ldrh	r3, [r4, #12]
d0046252:	bf15      	itete	ne
d0046254:	6560      	strne	r0, [r4, #84]	; 0x54
d0046256:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d004625a:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d004625e:	81a3      	strheq	r3, [r4, #12]
d0046260:	bf18      	it	ne
d0046262:	81a3      	strhne	r3, [r4, #12]
d0046264:	bd10      	pop	{r4, pc}

d0046266 <__sclose>:
d0046266:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d004626a:	f000 b801 	b.w	d0046270 <_close_r>
	...

d0046270 <_close_r>:
d0046270:	b538      	push	{r3, r4, r5, lr}
d0046272:	4d06      	ldr	r5, [pc, #24]	; (d004628c <_close_r+0x1c>)
d0046274:	2300      	movs	r3, #0
d0046276:	4604      	mov	r4, r0
d0046278:	4608      	mov	r0, r1
d004627a:	602b      	str	r3, [r5, #0]
d004627c:	f7f9 ff24 	bl	d00400c8 <_close>
d0046280:	1c43      	adds	r3, r0, #1
d0046282:	d102      	bne.n	d004628a <_close_r+0x1a>
d0046284:	682b      	ldr	r3, [r5, #0]
d0046286:	b103      	cbz	r3, d004628a <_close_r+0x1a>
d0046288:	6023      	str	r3, [r4, #0]
d004628a:	bd38      	pop	{r3, r4, r5, pc}
d004628c:	d0132c8c 	.word	0xd0132c8c

d0046290 <_fstat_r>:
d0046290:	b538      	push	{r3, r4, r5, lr}
d0046292:	4d07      	ldr	r5, [pc, #28]	; (d00462b0 <_fstat_r+0x20>)
d0046294:	2300      	movs	r3, #0
d0046296:	4604      	mov	r4, r0
d0046298:	4608      	mov	r0, r1
d004629a:	4611      	mov	r1, r2
d004629c:	602b      	str	r3, [r5, #0]
d004629e:	f7f9 ff17 	bl	d00400d0 <_fstat>
d00462a2:	1c43      	adds	r3, r0, #1
d00462a4:	d102      	bne.n	d00462ac <_fstat_r+0x1c>
d00462a6:	682b      	ldr	r3, [r5, #0]
d00462a8:	b103      	cbz	r3, d00462ac <_fstat_r+0x1c>
d00462aa:	6023      	str	r3, [r4, #0]
d00462ac:	bd38      	pop	{r3, r4, r5, pc}
d00462ae:	bf00      	nop
d00462b0:	d0132c8c 	.word	0xd0132c8c

d00462b4 <_lseek_r>:
d00462b4:	b538      	push	{r3, r4, r5, lr}
d00462b6:	4d07      	ldr	r5, [pc, #28]	; (d00462d4 <_lseek_r+0x20>)
d00462b8:	4604      	mov	r4, r0
d00462ba:	4608      	mov	r0, r1
d00462bc:	4611      	mov	r1, r2
d00462be:	2200      	movs	r2, #0
d00462c0:	602a      	str	r2, [r5, #0]
d00462c2:	461a      	mov	r2, r3
d00462c4:	f7f9 ff0a 	bl	d00400dc <_lseek>
d00462c8:	1c43      	adds	r3, r0, #1
d00462ca:	d102      	bne.n	d00462d2 <_lseek_r+0x1e>
d00462cc:	682b      	ldr	r3, [r5, #0]
d00462ce:	b103      	cbz	r3, d00462d2 <_lseek_r+0x1e>
d00462d0:	6023      	str	r3, [r4, #0]
d00462d2:	bd38      	pop	{r3, r4, r5, pc}
d00462d4:	d0132c8c 	.word	0xd0132c8c

d00462d8 <__malloc_lock>:
d00462d8:	4801      	ldr	r0, [pc, #4]	; (d00462e0 <__malloc_lock+0x8>)
d00462da:	f7ff bdc0 	b.w	d0045e5e <__retarget_lock_acquire_recursive>
d00462de:	bf00      	nop
d00462e0:	d0132c84 	.word	0xd0132c84

d00462e4 <__malloc_unlock>:
d00462e4:	4801      	ldr	r0, [pc, #4]	; (d00462ec <__malloc_unlock+0x8>)
d00462e6:	f7ff bdbb 	b.w	d0045e60 <__retarget_lock_release_recursive>
d00462ea:	bf00      	nop
d00462ec:	d0132c84 	.word	0xd0132c84

d00462f0 <_read_r>:
d00462f0:	b538      	push	{r3, r4, r5, lr}
d00462f2:	4d07      	ldr	r5, [pc, #28]	; (d0046310 <_read_r+0x20>)
d00462f4:	4604      	mov	r4, r0
d00462f6:	4608      	mov	r0, r1
d00462f8:	4611      	mov	r1, r2
d00462fa:	2200      	movs	r2, #0
d00462fc:	602a      	str	r2, [r5, #0]
d00462fe:	461a      	mov	r2, r3
d0046300:	f7f9 fed8 	bl	d00400b4 <_read>
d0046304:	1c43      	adds	r3, r0, #1
d0046306:	d102      	bne.n	d004630e <_read_r+0x1e>
d0046308:	682b      	ldr	r3, [r5, #0]
d004630a:	b103      	cbz	r3, d004630e <_read_r+0x1e>
d004630c:	6023      	str	r3, [r4, #0]
d004630e:	bd38      	pop	{r3, r4, r5, pc}
d0046310:	d0132c8c 	.word	0xd0132c8c

d0046314 <sinf_poly>:
d0046314:	07cb      	lsls	r3, r1, #31
d0046316:	d412      	bmi.n	d004633e <sinf_poly+0x2a>
d0046318:	ee21 6b00 	vmul.f64	d6, d1, d0
d004631c:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d0046320:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d0046324:	eea5 7b01 	vfma.f64	d7, d5, d1
d0046328:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d004632c:	ee21 1b06 	vmul.f64	d1, d1, d6
d0046330:	eea5 0b06 	vfma.f64	d0, d5, d6
d0046334:	eea7 0b01 	vfma.f64	d0, d7, d1
d0046338:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d004633c:	4770      	bx	lr
d004633e:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d0046342:	ee21 6b01 	vmul.f64	d6, d1, d1
d0046346:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d004634a:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d004634e:	eea1 7b05 	vfma.f64	d7, d1, d5
d0046352:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d0046356:	eea1 0b05 	vfma.f64	d0, d1, d5
d004635a:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d004635e:	ee21 1b06 	vmul.f64	d1, d1, d6
d0046362:	eea6 0b05 	vfma.f64	d0, d6, d5
d0046366:	e7e5      	b.n	d0046334 <sinf_poly+0x20>

d0046368 <cosf>:
d0046368:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d004636a:	ee10 4a10 	vmov	r4, s0
d004636e:	f3c4 530a 	ubfx	r3, r4, #20, #11
d0046372:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d0046376:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d004637a:	d20c      	bcs.n	d0046396 <cosf+0x2e>
d004637c:	ee26 1b06 	vmul.f64	d1, d6, d6
d0046380:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d0046384:	d378      	bcc.n	d0046478 <cosf+0x110>
d0046386:	eeb0 0b46 	vmov.f64	d0, d6
d004638a:	483f      	ldr	r0, [pc, #252]	; (d0046488 <cosf+0x120>)
d004638c:	2101      	movs	r1, #1
d004638e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0046392:	f7ff bfbf 	b.w	d0046314 <sinf_poly>
d0046396:	f240 422e 	movw	r2, #1070	; 0x42e
d004639a:	4293      	cmp	r3, r2
d004639c:	d826      	bhi.n	d00463ec <cosf+0x84>
d004639e:	4b3a      	ldr	r3, [pc, #232]	; (d0046488 <cosf+0x120>)
d00463a0:	ed93 7b08 	vldr	d7, [r3, #32]
d00463a4:	ee26 7b07 	vmul.f64	d7, d6, d7
d00463a8:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d00463ac:	f103 0070 	add.w	r0, r3, #112	; 0x70
d00463b0:	ee17 1a90 	vmov	r1, s15
d00463b4:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d00463b8:	1609      	asrs	r1, r1, #24
d00463ba:	ee07 1a90 	vmov	s15, r1
d00463be:	f001 0203 	and.w	r2, r1, #3
d00463c2:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d00463c6:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d00463ca:	ed92 0b00 	vldr	d0, [r2]
d00463ce:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d00463d2:	f011 0f02 	tst.w	r1, #2
d00463d6:	eea5 6b47 	vfms.f64	d6, d5, d7
d00463da:	f081 0101 	eor.w	r1, r1, #1
d00463de:	bf08      	it	eq
d00463e0:	4618      	moveq	r0, r3
d00463e2:	ee26 1b06 	vmul.f64	d1, d6, d6
d00463e6:	ee20 0b06 	vmul.f64	d0, d0, d6
d00463ea:	e7d0      	b.n	d004638e <cosf+0x26>
d00463ec:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d00463f0:	d23e      	bcs.n	d0046470 <cosf+0x108>
d00463f2:	4b26      	ldr	r3, [pc, #152]	; (d004648c <cosf+0x124>)
d00463f4:	f3c4 6283 	ubfx	r2, r4, #26, #4
d00463f8:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d00463fc:	f3c4 0116 	ubfx	r1, r4, #0, #23
d0046400:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d0046404:	6a06      	ldr	r6, [r0, #32]
d0046406:	6900      	ldr	r0, [r0, #16]
d0046408:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d004640c:	40a9      	lsls	r1, r5
d004640e:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d0046412:	fba1 6706 	umull	r6, r7, r1, r6
d0046416:	fb05 f301 	mul.w	r3, r5, r1
d004641a:	463a      	mov	r2, r7
d004641c:	fbe0 2301 	umlal	r2, r3, r0, r1
d0046420:	1c11      	adds	r1, r2, #0
d0046422:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d0046426:	2000      	movs	r0, #0
d0046428:	1a10      	subs	r0, r2, r0
d004642a:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d004642e:	eb63 0101 	sbc.w	r1, r3, r1
d0046432:	f000 fbab 	bl	d0046b8c <__aeabi_l2d>
d0046436:	0fb5      	lsrs	r5, r6, #30
d0046438:	4b13      	ldr	r3, [pc, #76]	; (d0046488 <cosf+0x120>)
d004643a:	eb05 74d4 	add.w	r4, r5, r4, lsr #31
d004643e:	ed9f 0b10 	vldr	d0, [pc, #64]	; d0046480 <cosf+0x118>
d0046442:	ec41 0b17 	vmov	d7, r0, r1
d0046446:	f004 0203 	and.w	r2, r4, #3
d004644a:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d004644e:	ee27 0b00 	vmul.f64	d0, d7, d0
d0046452:	ed92 7b00 	vldr	d7, [r2]
d0046456:	ee20 1b00 	vmul.f64	d1, d0, d0
d004645a:	f014 0f02 	tst.w	r4, #2
d004645e:	f103 0070 	add.w	r0, r3, #112	; 0x70
d0046462:	f085 0101 	eor.w	r1, r5, #1
d0046466:	bf08      	it	eq
d0046468:	4618      	moveq	r0, r3
d004646a:	ee27 0b00 	vmul.f64	d0, d7, d0
d004646e:	e78e      	b.n	d004638e <cosf+0x26>
d0046470:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0046474:	f000 b844 	b.w	d0046500 <__math_invalidf>
d0046478:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d004647c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d004647e:	bf00      	nop
d0046480:	54442d18 	.word	0x54442d18
d0046484:	3c1921fb 	.word	0x3c1921fb
d0046488:	d0047010 	.word	0xd0047010
d004648c:	d0046fb0 	.word	0xd0046fb0

d0046490 <with_errnof>:
d0046490:	b513      	push	{r0, r1, r4, lr}
d0046492:	4604      	mov	r4, r0
d0046494:	ed8d 0a01 	vstr	s0, [sp, #4]
d0046498:	f7ff faae 	bl	d00459f8 <__errno>
d004649c:	ed9d 0a01 	vldr	s0, [sp, #4]
d00464a0:	6004      	str	r4, [r0, #0]
d00464a2:	b002      	add	sp, #8
d00464a4:	bd10      	pop	{r4, pc}

d00464a6 <xflowf>:
d00464a6:	b130      	cbz	r0, d00464b6 <xflowf+0x10>
d00464a8:	eef1 7a40 	vneg.f32	s15, s0
d00464ac:	ee27 0a80 	vmul.f32	s0, s15, s0
d00464b0:	2022      	movs	r0, #34	; 0x22
d00464b2:	f7ff bfed 	b.w	d0046490 <with_errnof>
d00464b6:	eef0 7a40 	vmov.f32	s15, s0
d00464ba:	e7f7      	b.n	d00464ac <xflowf+0x6>

d00464bc <__math_uflowf>:
d00464bc:	ed9f 0a01 	vldr	s0, [pc, #4]	; d00464c4 <__math_uflowf+0x8>
d00464c0:	f7ff bff1 	b.w	d00464a6 <xflowf>
d00464c4:	10000000 	.word	0x10000000

d00464c8 <__math_may_uflowf>:
d00464c8:	ed9f 0a01 	vldr	s0, [pc, #4]	; d00464d0 <__math_may_uflowf+0x8>
d00464cc:	f7ff bfeb 	b.w	d00464a6 <xflowf>
d00464d0:	1a200000 	.word	0x1a200000

d00464d4 <__math_oflowf>:
d00464d4:	ed9f 0a01 	vldr	s0, [pc, #4]	; d00464dc <__math_oflowf+0x8>
d00464d8:	f7ff bfe5 	b.w	d00464a6 <xflowf>
d00464dc:	70000000 	.word	0x70000000

d00464e0 <__math_divzerof>:
d00464e0:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d00464e4:	eeff 7a00 	vmov.f32	s15, #240	; 0xbf800000 -1.0
d00464e8:	2800      	cmp	r0, #0
d00464ea:	fe40 7a27 	vseleq.f32	s15, s0, s15
d00464ee:	ed9f 0a03 	vldr	s0, [pc, #12]	; d00464fc <__math_divzerof+0x1c>
d00464f2:	2022      	movs	r0, #34	; 0x22
d00464f4:	ee87 0a80 	vdiv.f32	s0, s15, s0
d00464f8:	f7ff bfca 	b.w	d0046490 <with_errnof>
d00464fc:	00000000 	.word	0x00000000

d0046500 <__math_invalidf>:
d0046500:	eef0 7a40 	vmov.f32	s15, s0
d0046504:	ee30 7a40 	vsub.f32	s14, s0, s0
d0046508:	eef4 7a67 	vcmp.f32	s15, s15
d004650c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046510:	ee87 0a07 	vdiv.f32	s0, s14, s14
d0046514:	d602      	bvs.n	d004651c <__math_invalidf+0x1c>
d0046516:	2021      	movs	r0, #33	; 0x21
d0046518:	f7ff bfba 	b.w	d0046490 <with_errnof>
d004651c:	4770      	bx	lr
	...

d0046520 <expf>:
d0046520:	ee10 2a10 	vmov	r2, s0
d0046524:	b470      	push	{r4, r5, r6}
d0046526:	f3c2 530a 	ubfx	r3, r2, #20, #11
d004652a:	f240 442a 	movw	r4, #1066	; 0x42a
d004652e:	42a3      	cmp	r3, r4
d0046530:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d0046534:	d92a      	bls.n	d004658c <expf+0x6c>
d0046536:	f512 0f00 	cmn.w	r2, #8388608	; 0x800000
d004653a:	d059      	beq.n	d00465f0 <expf+0xd0>
d004653c:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0046540:	d303      	bcc.n	d004654a <expf+0x2a>
d0046542:	ee30 0a00 	vadd.f32	s0, s0, s0
d0046546:	bc70      	pop	{r4, r5, r6}
d0046548:	4770      	bx	lr
d004654a:	eddf 7a2b 	vldr	s15, [pc, #172]	; d00465f8 <expf+0xd8>
d004654e:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0046552:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046556:	dd03      	ble.n	d0046560 <expf+0x40>
d0046558:	bc70      	pop	{r4, r5, r6}
d004655a:	2000      	movs	r0, #0
d004655c:	f7ff bfba 	b.w	d00464d4 <__math_oflowf>
d0046560:	eddf 7a26 	vldr	s15, [pc, #152]	; d00465fc <expf+0xdc>
d0046564:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0046568:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004656c:	d503      	bpl.n	d0046576 <expf+0x56>
d004656e:	bc70      	pop	{r4, r5, r6}
d0046570:	2000      	movs	r0, #0
d0046572:	f7ff bfa3 	b.w	d00464bc <__math_uflowf>
d0046576:	eddf 7a22 	vldr	s15, [pc, #136]	; d0046600 <expf+0xe0>
d004657a:	eeb4 0ae7 	vcmpe.f32	s0, s15
d004657e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046582:	d503      	bpl.n	d004658c <expf+0x6c>
d0046584:	bc70      	pop	{r4, r5, r6}
d0046586:	2000      	movs	r0, #0
d0046588:	f7ff bf9e 	b.w	d00464c8 <__math_may_uflowf>
d004658c:	4b1d      	ldr	r3, [pc, #116]	; (d0046604 <expf+0xe4>)
d004658e:	eeb7 0b00 	vmov.f64	d0, #112	; 0x3f800000  1.0
d0046592:	ed93 5b4a 	vldr	d5, [r3, #296]	; 0x128
d0046596:	ed93 4b48 	vldr	d4, [r3, #288]	; 0x120
d004659a:	eeb0 7b44 	vmov.f64	d7, d4
d004659e:	eea5 7b06 	vfma.f64	d7, d5, d6
d00465a2:	ee17 5a10 	vmov	r5, s14
d00465a6:	ee37 7b44 	vsub.f64	d7, d7, d4
d00465aa:	f005 021f 	and.w	r2, r5, #31
d00465ae:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d00465b2:	e9d2 4600 	ldrd	r4, r6, [r2]
d00465b6:	ee95 7b06 	vfnms.f64	d7, d5, d6
d00465ba:	ed93 4b50 	vldr	d4, [r3, #320]	; 0x140
d00465be:	ed93 5b4c 	vldr	d5, [r3, #304]	; 0x130
d00465c2:	eea4 0b07 	vfma.f64	d0, d4, d7
d00465c6:	ed93 6b4e 	vldr	d6, [r3, #312]	; 0x138
d00465ca:	2300      	movs	r3, #0
d00465cc:	1918      	adds	r0, r3, r4
d00465ce:	ea4f 32c5 	mov.w	r2, r5, lsl #15
d00465d2:	eb42 0106 	adc.w	r1, r2, r6
d00465d6:	eea5 6b07 	vfma.f64	d6, d5, d7
d00465da:	ee27 5b07 	vmul.f64	d5, d7, d7
d00465de:	ec41 0b17 	vmov	d7, r0, r1
d00465e2:	eea6 0b05 	vfma.f64	d0, d6, d5
d00465e6:	ee20 0b07 	vmul.f64	d0, d0, d7
d00465ea:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d00465ee:	e7aa      	b.n	d0046546 <expf+0x26>
d00465f0:	ed9f 0a05 	vldr	s0, [pc, #20]	; d0046608 <expf+0xe8>
d00465f4:	e7a7      	b.n	d0046546 <expf+0x26>
d00465f6:	bf00      	nop
d00465f8:	42b17217 	.word	0x42b17217
d00465fc:	c2cff1b4 	.word	0xc2cff1b4
d0046600:	c2ce8ecf 	.word	0xc2ce8ecf
d0046604:	d0046d48 	.word	0xd0046d48
d0046608:	00000000 	.word	0x00000000

d004660c <logf>:
d004660c:	ee10 3a10 	vmov	r3, s0
d0046610:	f1b3 5f7e 	cmp.w	r3, #1065353216	; 0x3f800000
d0046614:	b410      	push	{r4}
d0046616:	d055      	beq.n	d00466c4 <logf+0xb8>
d0046618:	f5a3 0200 	sub.w	r2, r3, #8388608	; 0x800000
d004661c:	f1b2 4ffe 	cmp.w	r2, #2130706432	; 0x7f000000
d0046620:	d31a      	bcc.n	d0046658 <logf+0x4c>
d0046622:	005a      	lsls	r2, r3, #1
d0046624:	d104      	bne.n	d0046630 <logf+0x24>
d0046626:	f85d 4b04 	ldr.w	r4, [sp], #4
d004662a:	2001      	movs	r0, #1
d004662c:	f7ff bf58 	b.w	d00464e0 <__math_divzerof>
d0046630:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0046634:	d043      	beq.n	d00466be <logf+0xb2>
d0046636:	2b00      	cmp	r3, #0
d0046638:	db02      	blt.n	d0046640 <logf+0x34>
d004663a:	f1b2 4f7f 	cmp.w	r2, #4278190080	; 0xff000000
d004663e:	d303      	bcc.n	d0046648 <logf+0x3c>
d0046640:	f85d 4b04 	ldr.w	r4, [sp], #4
d0046644:	f7ff bf5c 	b.w	d0046500 <__math_invalidf>
d0046648:	eddf 7a20 	vldr	s15, [pc, #128]	; d00466cc <logf+0xc0>
d004664c:	ee20 0a27 	vmul.f32	s0, s0, s15
d0046650:	ee10 3a10 	vmov	r3, s0
d0046654:	f1a3 6338 	sub.w	r3, r3, #192937984	; 0xb800000
d0046658:	f103 4240 	add.w	r2, r3, #3221225472	; 0xc0000000
d004665c:	491c      	ldr	r1, [pc, #112]	; (d00466d0 <logf+0xc4>)
d004665e:	eebf 0b00 	vmov.f64	d0, #240	; 0xbf800000 -1.0
d0046662:	f502 024d 	add.w	r2, r2, #13434880	; 0xcd0000
d0046666:	f3c2 40c3 	ubfx	r0, r2, #19, #4
d004666a:	0dd4      	lsrs	r4, r2, #23
d004666c:	eb01 1000 	add.w	r0, r1, r0, lsl #4
d0046670:	05e4      	lsls	r4, r4, #23
d0046672:	ed90 6b00 	vldr	d6, [r0]
d0046676:	1b1b      	subs	r3, r3, r4
d0046678:	ee07 3a90 	vmov	s15, r3
d004667c:	ed91 5b40 	vldr	d5, [r1, #256]	; 0x100
d0046680:	eeb7 7ae7 	vcvt.f64.f32	d7, s15
d0046684:	15d2      	asrs	r2, r2, #23
d0046686:	eea6 0b07 	vfma.f64	d0, d6, d7
d004668a:	ed90 6b02 	vldr	d6, [r0, #8]
d004668e:	ee07 2a90 	vmov	s15, r2
d0046692:	ed91 4b44 	vldr	d4, [r1, #272]	; 0x110
d0046696:	eeb8 7be7 	vcvt.f64.s32	d7, s15
d004669a:	eea7 6b05 	vfma.f64	d6, d7, d5
d004669e:	ed91 7b46 	vldr	d7, [r1, #280]	; 0x118
d00466a2:	ee20 5b00 	vmul.f64	d5, d0, d0
d00466a6:	eea4 7b00 	vfma.f64	d7, d4, d0
d00466aa:	ed91 4b42 	vldr	d4, [r1, #264]	; 0x108
d00466ae:	ee30 0b06 	vadd.f64	d0, d0, d6
d00466b2:	eea4 7b05 	vfma.f64	d7, d4, d5
d00466b6:	eea5 0b07 	vfma.f64	d0, d5, d7
d00466ba:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d00466be:	f85d 4b04 	ldr.w	r4, [sp], #4
d00466c2:	4770      	bx	lr
d00466c4:	ed9f 0a03 	vldr	s0, [pc, #12]	; d00466d4 <logf+0xc8>
d00466c8:	e7f9      	b.n	d00466be <logf+0xb2>
d00466ca:	bf00      	nop
d00466cc:	4b000000 	.word	0x4b000000
d00466d0:	d0046e90 	.word	0xd0046e90
d00466d4:	00000000 	.word	0x00000000

d00466d8 <sinf_poly>:
d00466d8:	07cb      	lsls	r3, r1, #31
d00466da:	d412      	bmi.n	d0046702 <sinf_poly+0x2a>
d00466dc:	ee21 6b00 	vmul.f64	d6, d1, d0
d00466e0:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d00466e4:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d00466e8:	eea5 7b01 	vfma.f64	d7, d5, d1
d00466ec:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d00466f0:	ee21 1b06 	vmul.f64	d1, d1, d6
d00466f4:	eea5 0b06 	vfma.f64	d0, d5, d6
d00466f8:	eea7 0b01 	vfma.f64	d0, d7, d1
d00466fc:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0046700:	4770      	bx	lr
d0046702:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d0046706:	ee21 6b01 	vmul.f64	d6, d1, d1
d004670a:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d004670e:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d0046712:	eea1 7b05 	vfma.f64	d7, d1, d5
d0046716:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d004671a:	eea1 0b05 	vfma.f64	d0, d1, d5
d004671e:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d0046722:	ee21 1b06 	vmul.f64	d1, d1, d6
d0046726:	eea6 0b05 	vfma.f64	d0, d6, d5
d004672a:	e7e5      	b.n	d00466f8 <sinf_poly+0x20>
d004672c:	0000      	movs	r0, r0
	...

d0046730 <sinf>:
d0046730:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
d0046732:	ee10 4a10 	vmov	r4, s0
d0046736:	f3c4 530a 	ubfx	r3, r4, #20, #11
d004673a:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d004673e:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d0046742:	eef0 7a40 	vmov.f32	s15, s0
d0046746:	ea4f 5214 	mov.w	r2, r4, lsr #20
d004674a:	d218      	bcs.n	d004677e <sinf+0x4e>
d004674c:	ee26 1b06 	vmul.f64	d1, d6, d6
d0046750:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d0046754:	d20a      	bcs.n	d004676c <sinf+0x3c>
d0046756:	f412 6fff 	tst.w	r2, #2040	; 0x7f8
d004675a:	d103      	bne.n	d0046764 <sinf+0x34>
d004675c:	eeb7 1bc1 	vcvt.f32.f64	s2, d1
d0046760:	ed8d 1a01 	vstr	s2, [sp, #4]
d0046764:	eeb0 0a67 	vmov.f32	s0, s15
d0046768:	b003      	add	sp, #12
d004676a:	bdf0      	pop	{r4, r5, r6, r7, pc}
d004676c:	483e      	ldr	r0, [pc, #248]	; (d0046868 <sinf+0x138>)
d004676e:	eeb0 0b46 	vmov.f64	d0, d6
d0046772:	2100      	movs	r1, #0
d0046774:	b003      	add	sp, #12
d0046776:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d004677a:	f7ff bfad 	b.w	d00466d8 <sinf_poly>
d004677e:	f240 422e 	movw	r2, #1070	; 0x42e
d0046782:	4293      	cmp	r3, r2
d0046784:	d824      	bhi.n	d00467d0 <sinf+0xa0>
d0046786:	4b38      	ldr	r3, [pc, #224]	; (d0046868 <sinf+0x138>)
d0046788:	ed93 7b08 	vldr	d7, [r3, #32]
d004678c:	ee26 7b07 	vmul.f64	d7, d6, d7
d0046790:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d0046794:	f103 0070 	add.w	r0, r3, #112	; 0x70
d0046798:	ee17 1a90 	vmov	r1, s15
d004679c:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d00467a0:	1609      	asrs	r1, r1, #24
d00467a2:	ee07 1a90 	vmov	s15, r1
d00467a6:	f001 0203 	and.w	r2, r1, #3
d00467aa:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d00467ae:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d00467b2:	ed92 0b00 	vldr	d0, [r2]
d00467b6:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d00467ba:	f011 0f02 	tst.w	r1, #2
d00467be:	eea5 6b47 	vfms.f64	d6, d5, d7
d00467c2:	bf08      	it	eq
d00467c4:	4618      	moveq	r0, r3
d00467c6:	ee26 1b06 	vmul.f64	d1, d6, d6
d00467ca:	ee20 0b06 	vmul.f64	d0, d0, d6
d00467ce:	e7d1      	b.n	d0046774 <sinf+0x44>
d00467d0:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d00467d4:	d23d      	bcs.n	d0046852 <sinf+0x122>
d00467d6:	4b25      	ldr	r3, [pc, #148]	; (d004686c <sinf+0x13c>)
d00467d8:	f3c4 6283 	ubfx	r2, r4, #26, #4
d00467dc:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d00467e0:	f3c4 0116 	ubfx	r1, r4, #0, #23
d00467e4:	6a06      	ldr	r6, [r0, #32]
d00467e6:	6900      	ldr	r0, [r0, #16]
d00467e8:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d00467ec:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d00467f0:	40a9      	lsls	r1, r5
d00467f2:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d00467f6:	fba1 6706 	umull	r6, r7, r1, r6
d00467fa:	fb05 f301 	mul.w	r3, r5, r1
d00467fe:	463a      	mov	r2, r7
d0046800:	fbe0 2301 	umlal	r2, r3, r0, r1
d0046804:	1c11      	adds	r1, r2, #0
d0046806:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d004680a:	2000      	movs	r0, #0
d004680c:	1a10      	subs	r0, r2, r0
d004680e:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d0046812:	eb63 0101 	sbc.w	r1, r3, r1
d0046816:	f000 f9b9 	bl	d0046b8c <__aeabi_l2d>
d004681a:	0fb5      	lsrs	r5, r6, #30
d004681c:	4a12      	ldr	r2, [pc, #72]	; (d0046868 <sinf+0x138>)
d004681e:	eb05 73d4 	add.w	r3, r5, r4, lsr #31
d0046822:	ed9f 0b0f 	vldr	d0, [pc, #60]	; d0046860 <sinf+0x130>
d0046826:	ec41 0b17 	vmov	d7, r0, r1
d004682a:	f003 0103 	and.w	r1, r3, #3
d004682e:	eb02 01c1 	add.w	r1, r2, r1, lsl #3
d0046832:	ee27 0b00 	vmul.f64	d0, d7, d0
d0046836:	ed91 7b00 	vldr	d7, [r1]
d004683a:	ee20 1b00 	vmul.f64	d1, d0, d0
d004683e:	f013 0f02 	tst.w	r3, #2
d0046842:	f102 0070 	add.w	r0, r2, #112	; 0x70
d0046846:	4629      	mov	r1, r5
d0046848:	bf08      	it	eq
d004684a:	4610      	moveq	r0, r2
d004684c:	ee27 0b00 	vmul.f64	d0, d7, d0
d0046850:	e790      	b.n	d0046774 <sinf+0x44>
d0046852:	b003      	add	sp, #12
d0046854:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0046858:	f7ff be52 	b.w	d0046500 <__math_invalidf>
d004685c:	f3af 8000 	nop.w
d0046860:	54442d18 	.word	0x54442d18
d0046864:	3c1921fb 	.word	0x3c1921fb
d0046868:	d0047010 	.word	0xd0047010
d004686c:	d0046fb0 	.word	0xd0046fb0

d0046870 <__aeabi_drsub>:
d0046870:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
d0046874:	e002      	b.n	d004687c <__adddf3>
d0046876:	bf00      	nop

d0046878 <__aeabi_dsub>:
d0046878:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

d004687c <__adddf3>:
d004687c:	b530      	push	{r4, r5, lr}
d004687e:	ea4f 0441 	mov.w	r4, r1, lsl #1
d0046882:	ea4f 0543 	mov.w	r5, r3, lsl #1
d0046886:	ea94 0f05 	teq	r4, r5
d004688a:	bf08      	it	eq
d004688c:	ea90 0f02 	teqeq	r0, r2
d0046890:	bf1f      	itttt	ne
d0046892:	ea54 0c00 	orrsne.w	ip, r4, r0
d0046896:	ea55 0c02 	orrsne.w	ip, r5, r2
d004689a:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
d004689e:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d00468a2:	f000 80e2 	beq.w	d0046a6a <__adddf3+0x1ee>
d00468a6:	ea4f 5454 	mov.w	r4, r4, lsr #21
d00468aa:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
d00468ae:	bfb8      	it	lt
d00468b0:	426d      	neglt	r5, r5
d00468b2:	dd0c      	ble.n	d00468ce <__adddf3+0x52>
d00468b4:	442c      	add	r4, r5
d00468b6:	ea80 0202 	eor.w	r2, r0, r2
d00468ba:	ea81 0303 	eor.w	r3, r1, r3
d00468be:	ea82 0000 	eor.w	r0, r2, r0
d00468c2:	ea83 0101 	eor.w	r1, r3, r1
d00468c6:	ea80 0202 	eor.w	r2, r0, r2
d00468ca:	ea81 0303 	eor.w	r3, r1, r3
d00468ce:	2d36      	cmp	r5, #54	; 0x36
d00468d0:	bf88      	it	hi
d00468d2:	bd30      	pophi	{r4, r5, pc}
d00468d4:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
d00468d8:	ea4f 3101 	mov.w	r1, r1, lsl #12
d00468dc:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
d00468e0:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
d00468e4:	d002      	beq.n	d00468ec <__adddf3+0x70>
d00468e6:	4240      	negs	r0, r0
d00468e8:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d00468ec:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
d00468f0:	ea4f 3303 	mov.w	r3, r3, lsl #12
d00468f4:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
d00468f8:	d002      	beq.n	d0046900 <__adddf3+0x84>
d00468fa:	4252      	negs	r2, r2
d00468fc:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
d0046900:	ea94 0f05 	teq	r4, r5
d0046904:	f000 80a7 	beq.w	d0046a56 <__adddf3+0x1da>
d0046908:	f1a4 0401 	sub.w	r4, r4, #1
d004690c:	f1d5 0e20 	rsbs	lr, r5, #32
d0046910:	db0d      	blt.n	d004692e <__adddf3+0xb2>
d0046912:	fa02 fc0e 	lsl.w	ip, r2, lr
d0046916:	fa22 f205 	lsr.w	r2, r2, r5
d004691a:	1880      	adds	r0, r0, r2
d004691c:	f141 0100 	adc.w	r1, r1, #0
d0046920:	fa03 f20e 	lsl.w	r2, r3, lr
d0046924:	1880      	adds	r0, r0, r2
d0046926:	fa43 f305 	asr.w	r3, r3, r5
d004692a:	4159      	adcs	r1, r3
d004692c:	e00e      	b.n	d004694c <__adddf3+0xd0>
d004692e:	f1a5 0520 	sub.w	r5, r5, #32
d0046932:	f10e 0e20 	add.w	lr, lr, #32
d0046936:	2a01      	cmp	r2, #1
d0046938:	fa03 fc0e 	lsl.w	ip, r3, lr
d004693c:	bf28      	it	cs
d004693e:	f04c 0c02 	orrcs.w	ip, ip, #2
d0046942:	fa43 f305 	asr.w	r3, r3, r5
d0046946:	18c0      	adds	r0, r0, r3
d0046948:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
d004694c:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d0046950:	d507      	bpl.n	d0046962 <__adddf3+0xe6>
d0046952:	f04f 0e00 	mov.w	lr, #0
d0046956:	f1dc 0c00 	rsbs	ip, ip, #0
d004695a:	eb7e 0000 	sbcs.w	r0, lr, r0
d004695e:	eb6e 0101 	sbc.w	r1, lr, r1
d0046962:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
d0046966:	d31b      	bcc.n	d00469a0 <__adddf3+0x124>
d0046968:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
d004696c:	d30c      	bcc.n	d0046988 <__adddf3+0x10c>
d004696e:	0849      	lsrs	r1, r1, #1
d0046970:	ea5f 0030 	movs.w	r0, r0, rrx
d0046974:	ea4f 0c3c 	mov.w	ip, ip, rrx
d0046978:	f104 0401 	add.w	r4, r4, #1
d004697c:	ea4f 5244 	mov.w	r2, r4, lsl #21
d0046980:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
d0046984:	f080 809a 	bcs.w	d0046abc <__adddf3+0x240>
d0046988:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
d004698c:	bf08      	it	eq
d004698e:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
d0046992:	f150 0000 	adcs.w	r0, r0, #0
d0046996:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
d004699a:	ea41 0105 	orr.w	r1, r1, r5
d004699e:	bd30      	pop	{r4, r5, pc}
d00469a0:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
d00469a4:	4140      	adcs	r0, r0
d00469a6:	eb41 0101 	adc.w	r1, r1, r1
d00469aa:	3c01      	subs	r4, #1
d00469ac:	bf28      	it	cs
d00469ae:	f5b1 1f80 	cmpcs.w	r1, #1048576	; 0x100000
d00469b2:	d2e9      	bcs.n	d0046988 <__adddf3+0x10c>
d00469b4:	f091 0f00 	teq	r1, #0
d00469b8:	bf04      	itt	eq
d00469ba:	4601      	moveq	r1, r0
d00469bc:	2000      	moveq	r0, #0
d00469be:	fab1 f381 	clz	r3, r1
d00469c2:	bf08      	it	eq
d00469c4:	3320      	addeq	r3, #32
d00469c6:	f1a3 030b 	sub.w	r3, r3, #11
d00469ca:	f1b3 0220 	subs.w	r2, r3, #32
d00469ce:	da0c      	bge.n	d00469ea <__adddf3+0x16e>
d00469d0:	320c      	adds	r2, #12
d00469d2:	dd08      	ble.n	d00469e6 <__adddf3+0x16a>
d00469d4:	f102 0c14 	add.w	ip, r2, #20
d00469d8:	f1c2 020c 	rsb	r2, r2, #12
d00469dc:	fa01 f00c 	lsl.w	r0, r1, ip
d00469e0:	fa21 f102 	lsr.w	r1, r1, r2
d00469e4:	e00c      	b.n	d0046a00 <__adddf3+0x184>
d00469e6:	f102 0214 	add.w	r2, r2, #20
d00469ea:	bfd8      	it	le
d00469ec:	f1c2 0c20 	rsble	ip, r2, #32
d00469f0:	fa01 f102 	lsl.w	r1, r1, r2
d00469f4:	fa20 fc0c 	lsr.w	ip, r0, ip
d00469f8:	bfdc      	itt	le
d00469fa:	ea41 010c 	orrle.w	r1, r1, ip
d00469fe:	4090      	lslle	r0, r2
d0046a00:	1ae4      	subs	r4, r4, r3
d0046a02:	bfa2      	ittt	ge
d0046a04:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
d0046a08:	4329      	orrge	r1, r5
d0046a0a:	bd30      	popge	{r4, r5, pc}
d0046a0c:	ea6f 0404 	mvn.w	r4, r4
d0046a10:	3c1f      	subs	r4, #31
d0046a12:	da1c      	bge.n	d0046a4e <__adddf3+0x1d2>
d0046a14:	340c      	adds	r4, #12
d0046a16:	dc0e      	bgt.n	d0046a36 <__adddf3+0x1ba>
d0046a18:	f104 0414 	add.w	r4, r4, #20
d0046a1c:	f1c4 0220 	rsb	r2, r4, #32
d0046a20:	fa20 f004 	lsr.w	r0, r0, r4
d0046a24:	fa01 f302 	lsl.w	r3, r1, r2
d0046a28:	ea40 0003 	orr.w	r0, r0, r3
d0046a2c:	fa21 f304 	lsr.w	r3, r1, r4
d0046a30:	ea45 0103 	orr.w	r1, r5, r3
d0046a34:	bd30      	pop	{r4, r5, pc}
d0046a36:	f1c4 040c 	rsb	r4, r4, #12
d0046a3a:	f1c4 0220 	rsb	r2, r4, #32
d0046a3e:	fa20 f002 	lsr.w	r0, r0, r2
d0046a42:	fa01 f304 	lsl.w	r3, r1, r4
d0046a46:	ea40 0003 	orr.w	r0, r0, r3
d0046a4a:	4629      	mov	r1, r5
d0046a4c:	bd30      	pop	{r4, r5, pc}
d0046a4e:	fa21 f004 	lsr.w	r0, r1, r4
d0046a52:	4629      	mov	r1, r5
d0046a54:	bd30      	pop	{r4, r5, pc}
d0046a56:	f094 0f00 	teq	r4, #0
d0046a5a:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
d0046a5e:	bf06      	itte	eq
d0046a60:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
d0046a64:	3401      	addeq	r4, #1
d0046a66:	3d01      	subne	r5, #1
d0046a68:	e74e      	b.n	d0046908 <__adddf3+0x8c>
d0046a6a:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d0046a6e:	bf18      	it	ne
d0046a70:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d0046a74:	d029      	beq.n	d0046aca <__adddf3+0x24e>
d0046a76:	ea94 0f05 	teq	r4, r5
d0046a7a:	bf08      	it	eq
d0046a7c:	ea90 0f02 	teqeq	r0, r2
d0046a80:	d005      	beq.n	d0046a8e <__adddf3+0x212>
d0046a82:	ea54 0c00 	orrs.w	ip, r4, r0
d0046a86:	bf04      	itt	eq
d0046a88:	4619      	moveq	r1, r3
d0046a8a:	4610      	moveq	r0, r2
d0046a8c:	bd30      	pop	{r4, r5, pc}
d0046a8e:	ea91 0f03 	teq	r1, r3
d0046a92:	bf1e      	ittt	ne
d0046a94:	2100      	movne	r1, #0
d0046a96:	2000      	movne	r0, #0
d0046a98:	bd30      	popne	{r4, r5, pc}
d0046a9a:	ea5f 5c54 	movs.w	ip, r4, lsr #21
d0046a9e:	d105      	bne.n	d0046aac <__adddf3+0x230>
d0046aa0:	0040      	lsls	r0, r0, #1
d0046aa2:	4149      	adcs	r1, r1
d0046aa4:	bf28      	it	cs
d0046aa6:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
d0046aaa:	bd30      	pop	{r4, r5, pc}
d0046aac:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
d0046ab0:	bf3c      	itt	cc
d0046ab2:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
d0046ab6:	bd30      	popcc	{r4, r5, pc}
d0046ab8:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d0046abc:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
d0046ac0:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
d0046ac4:	f04f 0000 	mov.w	r0, #0
d0046ac8:	bd30      	pop	{r4, r5, pc}
d0046aca:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d0046ace:	bf1a      	itte	ne
d0046ad0:	4619      	movne	r1, r3
d0046ad2:	4610      	movne	r0, r2
d0046ad4:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
d0046ad8:	bf1c      	itt	ne
d0046ada:	460b      	movne	r3, r1
d0046adc:	4602      	movne	r2, r0
d0046ade:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
d0046ae2:	bf06      	itte	eq
d0046ae4:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
d0046ae8:	ea91 0f03 	teqeq	r1, r3
d0046aec:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
d0046af0:	bd30      	pop	{r4, r5, pc}
d0046af2:	bf00      	nop

d0046af4 <__aeabi_ui2d>:
d0046af4:	f090 0f00 	teq	r0, #0
d0046af8:	bf04      	itt	eq
d0046afa:	2100      	moveq	r1, #0
d0046afc:	4770      	bxeq	lr
d0046afe:	b530      	push	{r4, r5, lr}
d0046b00:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0046b04:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0046b08:	f04f 0500 	mov.w	r5, #0
d0046b0c:	f04f 0100 	mov.w	r1, #0
d0046b10:	e750      	b.n	d00469b4 <__adddf3+0x138>
d0046b12:	bf00      	nop

d0046b14 <__aeabi_i2d>:
d0046b14:	f090 0f00 	teq	r0, #0
d0046b18:	bf04      	itt	eq
d0046b1a:	2100      	moveq	r1, #0
d0046b1c:	4770      	bxeq	lr
d0046b1e:	b530      	push	{r4, r5, lr}
d0046b20:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0046b24:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0046b28:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
d0046b2c:	bf48      	it	mi
d0046b2e:	4240      	negmi	r0, r0
d0046b30:	f04f 0100 	mov.w	r1, #0
d0046b34:	e73e      	b.n	d00469b4 <__adddf3+0x138>
d0046b36:	bf00      	nop

d0046b38 <__aeabi_f2d>:
d0046b38:	0042      	lsls	r2, r0, #1
d0046b3a:	ea4f 01e2 	mov.w	r1, r2, asr #3
d0046b3e:	ea4f 0131 	mov.w	r1, r1, rrx
d0046b42:	ea4f 7002 	mov.w	r0, r2, lsl #28
d0046b46:	bf1f      	itttt	ne
d0046b48:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
d0046b4c:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
d0046b50:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
d0046b54:	4770      	bxne	lr
d0046b56:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
d0046b5a:	bf08      	it	eq
d0046b5c:	4770      	bxeq	lr
d0046b5e:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
d0046b62:	bf04      	itt	eq
d0046b64:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
d0046b68:	4770      	bxeq	lr
d0046b6a:	b530      	push	{r4, r5, lr}
d0046b6c:	f44f 7460 	mov.w	r4, #896	; 0x380
d0046b70:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d0046b74:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
d0046b78:	e71c      	b.n	d00469b4 <__adddf3+0x138>
d0046b7a:	bf00      	nop

d0046b7c <__aeabi_ul2d>:
d0046b7c:	ea50 0201 	orrs.w	r2, r0, r1
d0046b80:	bf08      	it	eq
d0046b82:	4770      	bxeq	lr
d0046b84:	b530      	push	{r4, r5, lr}
d0046b86:	f04f 0500 	mov.w	r5, #0
d0046b8a:	e00a      	b.n	d0046ba2 <__aeabi_l2d+0x16>

d0046b8c <__aeabi_l2d>:
d0046b8c:	ea50 0201 	orrs.w	r2, r0, r1
d0046b90:	bf08      	it	eq
d0046b92:	4770      	bxeq	lr
d0046b94:	b530      	push	{r4, r5, lr}
d0046b96:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
d0046b9a:	d502      	bpl.n	d0046ba2 <__aeabi_l2d+0x16>
d0046b9c:	4240      	negs	r0, r0
d0046b9e:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d0046ba2:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0046ba6:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0046baa:	ea5f 5c91 	movs.w	ip, r1, lsr #22
d0046bae:	f43f aed8 	beq.w	d0046962 <__adddf3+0xe6>
d0046bb2:	f04f 0203 	mov.w	r2, #3
d0046bb6:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d0046bba:	bf18      	it	ne
d0046bbc:	3203      	addne	r2, #3
d0046bbe:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d0046bc2:	bf18      	it	ne
d0046bc4:	3203      	addne	r2, #3
d0046bc6:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
d0046bca:	f1c2 0320 	rsb	r3, r2, #32
d0046bce:	fa00 fc03 	lsl.w	ip, r0, r3
d0046bd2:	fa20 f002 	lsr.w	r0, r0, r2
d0046bd6:	fa01 fe03 	lsl.w	lr, r1, r3
d0046bda:	ea40 000e 	orr.w	r0, r0, lr
d0046bde:	fa21 f102 	lsr.w	r1, r1, r2
d0046be2:	4414      	add	r4, r2
d0046be4:	e6bd      	b.n	d0046962 <__adddf3+0xe6>
d0046be6:	bf00      	nop
d0046be8:	2e706661 	.word	0x2e706661
d0046bec:	00646f6d 	.word	0x00646f6d
d0046bf0:	616c7369 	.word	0x616c7369
d0046bf4:	2e78646e 	.word	0x2e78646e
d0046bf8:	64336273 	.word	0x64336273
d0046bfc:	00000000 	.word	0x00000000
d0046c00:	72726163 	.word	0x72726163
d0046c04:	2e726569 	.word	0x2e726569
d0046c08:	64336273 	.word	0x64336273
d0046c0c:	00000000 	.word	0x00000000
d0046c10:	ff5516e3 	.word	0xff5516e3
d0046c14:	ffffffff 	.word	0xffffffff
d0046c18:	ffff0000 	.word	0xffff0000
d0046c1c:	ff00ff00 	.word	0xff00ff00
d0046c20:	ff0000ff 	.word	0xff0000ff
d0046c24:	ffffff00 	.word	0xffffff00
d0046c28:	ffff00ff 	.word	0xffff00ff
d0046c2c:	ff00ffff 	.word	0xff00ffff
d0046c30:	ff808080 	.word	0xff808080
d0046c34:	ffff8000 	.word	0xffff8000
d0046c38:	ff8000ff 	.word	0xff8000ff
d0046c3c:	ff0080ff 	.word	0xff0080ff
d0046c40:	ff80ff00 	.word	0xff80ff00
d0046c44:	ffff0080 	.word	0xffff0080
d0046c48:	ff00ff80 	.word	0xff00ff80
d0046c4c:	ffc0c0c0 	.word	0xffc0c0c0
d0046c50:	3f800000 	.word	0x3f800000
d0046c54:	3f400000 	.word	0x3f400000
d0046c58:	3f0ccccd 	.word	0x3f0ccccd
d0046c5c:	3eb33333 	.word	0x3eb33333
d0046c60:	3e4ccccd 	.word	0x3e4ccccd
d0046c64:	bf800000 	.word	0xbf800000
d0046c68:	bf000000 	.word	0xbf000000
d0046c6c:	3e99999a 	.word	0x3e99999a

d0046c70 <bayer4x4>:
d0046c70:	0a020800 060e040c 09010b03 050d070f     ................
	...
d0046c98:	3f800000 00000000 00000000 00000000     ...?............
d0046ca8:	3f800000 00000000 00000000 00000000     ...?............
d0046cb8:	3f800000 3a8312c5 3c23d70a 447a0000     ...?...:..#<..zD
	...

d0046ce0 <__sf_fake_stderr>:
	...

d0046d00 <__sf_fake_stdin>:
	...

d0046d20 <__sf_fake_stdout>:
	...

d0046d40 <_global_impure_ptr>:
d0046d40:	d00474fc 00000000                       .t......

d0046d48 <__exp2f_data>:
d0046d48:	00000000 3ff00000 d3158574 3fefd9b0     .......?t......?
d0046d58:	6cf9890f 3fefb558 d0125b51 3fef9301     ...lX..?Q[.....?
d0046d68:	3c7d517b 3fef72b8 3168b9aa 3fef5487     {Q}<.r.?..h1.T.?
d0046d78:	6e756238 3fef387a f51fdee1 3fef1e9d     8bunz8.?.......?
d0046d88:	0a31b715 3fef06fe 373aa9cb 3feef1a7     ..1....?..:7...?
d0046d98:	4c123422 3feedea6 6061892d 3feece08     "4.L...?-.a`...?
d0046da8:	d5362a27 3feebfda 569d4f82 3feeb42b     '*6....?.O.V+..?
d0046db8:	dd485429 3feeab07 b03a5585 3feea47e     )TH....?.U:.~..?
d0046dc8:	667f3bcd 3feea09e e8ec5f74 3fee9f75     .;.f...?t_..u..?
d0046dd8:	73eb0187 3feea114 994cce13 3feea589     ...s...?..L....?
d0046de8:	422aa0db 3feeace5 b0cdc5e5 3feeb737     ..*B...?....7..?
d0046df8:	82a3f090 3feec491 b23e255d 3feed503     .......?]%>....?
d0046e08:	995ad3ad 3feee89f f2fb5e47 3feeff76     ..Z....?G^..v..?
d0046e18:	dd85529c 3fef199b dcef9069 3fef3720     .R.....?i... 7.?
d0046e28:	dcfba487 3fef5818 337b9b5f 3fef7c97     .....X.?_.{3.|.?
d0046e38:	a2a490da 3fefa4af 5b6e4540 3fefd076     .......?@En[v..?
d0046e48:	00000000 42e80000 4b912394 3fac6af8     .......B.#.K.j.?
d0046e58:	50fac4f3 3fcebfce ff0c52d6 3fe62e42     ...P...?.R..B..?
d0046e68:	00000000 43380000 652b82fe 40471547     ......8C..+eG.G@
d0046e78:	4b912394 3ebc6af8 50fac4f3 3f2ebfce     .#.K.j.>...P...?
d0046e88:	ff0c52d6 3f962e42                       .R..B..?

d0046e90 <__logf_data>:
d0046e90:	79f8f3be 3ff661ec 808caade bfd57bf7     ...y.a.?.....{..
d0046ea0:	4aaf883d 3ff571ed a7c06ddb bfd2bef0     =..J.q.?.m......
d0046eb0:	f0f010b0 3ff49539 7f513a67 bfd01eae     ....9..?g:Q.....
d0046ec0:	b0b80385 3ff3c995 a68224e9 bfcb31d8     .......?.$...1..
d0046ed0:	0c8864a5 3ff30d19 0ac07758 bfc6574f     .d.....?Xw..OW..
d0046ee0:	7b0b8ea0 3ff25e22 c79c8100 bfc1aa2b     ...{"^.?....+...
d0046ef0:	4a1a343f 3ff1bb4a ce8c0e5e bfba4e76     ?4.JJ..?^...vN..
d0046f00:	f08ae5ba 3ff12358 5a611ccc bfb1973c     ....X#.?..aZ<...
d0046f10:	419900a7 3ff0953f 38e10c1e bfa252f4     ...A?..?...8.R..
d0046f20:	00000000 3ff00000 00000000 00000000     .......?........
d0046f30:	fd9a47ac 3fee608c 5df25984 3faaa5aa     .G...`.?.Y.]...?
d0046f40:	1f026aa0 3feca4b3 aa362eb4 3fbc5e53     .j.....?..6.S^.?
d0046f50:	576afce6 3feb2036 7720db08 3fc526e5     ..jW6 .?.. w.&.?
d0046f60:	63a1aa2d 3fe9c2d1 0d224770 3fcbc286     -..c...?pG"....?
d0046f70:	037841ed 3fe886e6 c8a07ee1 3fd1058b     .Ax....?.~.....?
d0046f80:	f5534862 3fe767dc 57b6ee09 3fd40430     bHS..g.?...W0..?
d0046f90:	fefa39ef 3fe62e42 48b88334 bfd00ea3     .9..B..?4..H....
d0046fa0:	0be00b6a 3fd5575b f20a4123 bfdffffe     j...[W.?#A......

d0046fb0 <__inv_pio4>:
d0046fb0:	000000a2 0000a2f9 00a2f983 a2f9836e     ............n...
d0046fc0:	f9836e4e 836e4e44 6e4e4415 4e441529     Nn..DNn..DNn).DN
d0046fd0:	441529fc 1529fc27 29fc2757 fc2757d1     .).D'.).W'.).W'.
d0046fe0:	2757d1f5 57d1f534 d1f534dd f534ddc0     ..W'4..W.4....4.
d0046ff0:	34ddc0db ddc0db62 c0db6295 db629599     ...4b....b....b.
d0047000:	6295993c 95993c43 993c4390 3c439041     <..bC<...C<.A.C<

d0047010 <__sincosf_table>:
d0047010:	00000000 3ff00000 00000000 bff00000     .......?........
d0047020:	00000000 bff00000 00000000 3ff00000     ...............?
d0047030:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d0047040:	00000000 3ff00000 fd0c621c bfdfffff     .......?.b......
d0047050:	e1068f19 3fa55553 e89a359d bf56c087     ....SU.?.5....V.
d0047060:	027bf8c3 3ef99343 5995a603 bfc55554     ..{.C..>...YTU..
d0047070:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).
d0047080:	00000000 3ff00000 00000000 bff00000     .......?........
d0047090:	00000000 bff00000 00000000 3ff00000     ...............?
d00470a0:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d00470b0:	00000000 bff00000 fd0c621c 3fdfffff     .........b.....?
d00470c0:	e1068f19 bfa55553 e89a359d 3f56c087     ....SU...5....V?
d00470d0:	027bf8c3 bef99343 5995a603 bfc55554     ..{.C......YTU..
d00470e0:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).

Disassembly of section .init:

d00470f0 <_init>:
d00470f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00470f2:	bf00      	nop

Disassembly of section .fini:

d00470f4 <_fini>:
d00470f4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00470f6:	bf00      	nop
