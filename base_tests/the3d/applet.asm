
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
d004001e:	f006 f82b 	bl	d0046078 <setbuf>
d0040022:	6833      	ldr	r3, [r6, #0]
d0040024:	2100      	movs	r1, #0
d0040026:	68d8      	ldr	r0, [r3, #12]
d0040028:	f006 f826 	bl	d0046078 <setbuf>
d004002c:	4629      	mov	r1, r5
d004002e:	4620      	mov	r0, r4
d0040030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0040034:	f000 b90c 	b.w	d0040250 <main>
d0040038:	d0047538 	.word	0xd0047538

d004003c <initMalloc>:
d004003c:	4902      	ldr	r1, [pc, #8]	; (d0040048 <initMalloc+0xc>)
d004003e:	4b03      	ldr	r3, [pc, #12]	; (d004004c <initMalloc+0x10>)
d0040040:	4a03      	ldr	r2, [pc, #12]	; (d0040050 <initMalloc+0x14>)
d0040042:	1a5b      	subs	r3, r3, r1
d0040044:	6013      	str	r3, [r2, #0]
d0040046:	4770      	bx	lr
d0040048:	d0134cd0 	.word	0xd0134cd0
d004004c:	d0600000 	.word	0xd0600000
d0040050:	d00e1c28 	.word	0xd00e1c28

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
d004009c:	f005 fcc2 	bl	d0045a24 <__errno>
d00400a0:	2209      	movs	r2, #9
d00400a2:	4603      	mov	r3, r0
d00400a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00400a8:	601a      	str	r2, [r3, #0]
d00400aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00400ac:	d00475a4 	.word	0xd00475a4
d00400b0:	2001f000 	.word	0x2001f000

d00400b4 <_read>:
d00400b4:	b508      	push	{r3, lr}
d00400b6:	f005 fcb5 	bl	d0045a24 <__errno>
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
d0040102:	f005 fc8f 	bl	d0045a24 <__errno>
d0040106:	220c      	movs	r2, #12
d0040108:	4603      	mov	r3, r0
d004010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004010e:	601a      	str	r2, [r3, #0]
d0040110:	bd10      	pop	{r4, pc}
d0040112:	bf00      	nop
d0040114:	d00475a0 	.word	0xd00475a0
d0040118:	d0134cd0 	.word	0xd0134cd0
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
d0040248:	d00e1ca0 	.word	0xd00e1ca0
d004024c:	d00e1c80 	.word	0xd00e1c80

d0040250 <main>:
d0040250:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040254:	ed2d 8b0a 	vpush	{d8-d12}
d0040258:	b0e7      	sub	sp, #412	; 0x19c
d004025a:	4d9f      	ldr	r5, [pc, #636]	; (d00404d8 <main+0x288>)
d004025c:	f7ff ff60 	bl	d0040120 <initSystem>
d0040260:	f8df 82c4 	ldr.w	r8, [pc, #708]	; d0040528 <main+0x2d8>
d0040264:	f10d 06bf 	add.w	r6, sp, #191	; 0xbf
d0040268:	f002 fd8c 	bl	d0042d84 <worldClear>
d004026c:	f003 fc0e 	bl	d0043a8c <lightsClear>
d0040270:	f04f 4a7f 	mov.w	sl, #4278190080	; 0xff000000
d0040274:	f026 061f 	bic.w	r6, r6, #31
d0040278:	f002 fa88 	bl	d004278c <sb3dParticlesClear>
d004027c:	f003 fc3c 	bl	d0043af8 <setDefaultRenderMode>
d0040280:	4c96      	ldr	r4, [pc, #600]	; (d00404dc <main+0x28c>)
d0040282:	4630      	mov	r0, r6
d0040284:	f106 07a0 	add.w	r7, r6, #160	; 0xa0
d0040288:	f002 fd84 	bl	d0042d94 <cameraCreate>
d004028c:	4630      	mov	r0, r6
d004028e:	eddf 0a94 	vldr	s1, [pc, #592]	; d00404e0 <main+0x290>
d0040292:	f106 0960 	add.w	r9, r6, #96	; 0x60
d0040296:	ed9f 0a93 	vldr	s0, [pc, #588]	; d00404e4 <main+0x294>
d004029a:	f002 ff9b 	bl	d00431d4 <cameraSetRange>
d004029e:	ed9f 1aac 	vldr	s2, [pc, #688]	; d0040550 <main+0x300>
d00402a2:	eddf 0a91 	vldr	s1, [pc, #580]	; d00404e8 <main+0x298>
d00402a6:	eeb0 0a41 	vmov.f32	s0, s2
d00402aa:	ed9f 9a90 	vldr	s18, [pc, #576]	; d00404ec <main+0x29c>
d00402ae:	f002 f9cd 	bl	d004264c <vec3>
d00402b2:	4630      	mov	r0, r6
d00402b4:	edcd 0a0b 	vstr	s1, [sp, #44]	; 0x2c
d00402b8:	ed8d 0a0a 	vstr	s0, [sp, #40]	; 0x28
d00402bc:	ed8d 1a0c 	vstr	s2, [sp, #48]	; 0x30
d00402c0:	f002 fd72 	bl	d0042da8 <cameraSetPosition>
d00402c4:	4630      	mov	r0, r6
d00402c6:	ed9f ba8a 	vldr	s22, [pc, #552]	; d00404f0 <main+0x2a0>
d00402ca:	f002 fd7d 	bl	d0042dc8 <cameraNormalize>
d00402ce:	f10d 0c60 	add.w	ip, sp, #96	; 0x60
d00402d2:	f10d 0e4c 	add.w	lr, sp, #76	; 0x4c
d00402d6:	eddf aa87 	vldr	s21, [pc, #540]	; d00404f4 <main+0x2a4>
d00402da:	ed9f aa87 	vldr	s20, [pc, #540]	; d00404f8 <main+0x2a8>
d00402de:	eddf 9a87 	vldr	s19, [pc, #540]	; d00404fc <main+0x2ac>
d00402e2:	eddf 8a9b 	vldr	s17, [pc, #620]	; d0040550 <main+0x300>
d00402e6:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d00402e8:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d00402ec:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d00402ee:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d00402f2:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d00402f4:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d00402f8:	f105 0b10 	add.w	fp, r5, #16
d00402fc:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0040300:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d0040304:	f8c8 a000 	str.w	sl, [r8]
d0040308:	46f4      	mov	ip, lr
d004030a:	f8cd e000 	str.w	lr, [sp]
d004030e:	3524      	adds	r5, #36	; 0x24
d0040310:	f8c8 a040 	str.w	sl, [r8, #64]	; 0x40
d0040314:	e8bb 000f 	ldmia.w	fp!, {r0, r1, r2, r3}
d0040318:	f8db e000 	ldr.w	lr, [fp]
d004031c:	f8df b20c 	ldr.w	fp, [pc, #524]	; d004052c <main+0x2dc>
d0040320:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d0040324:	4653      	mov	r3, sl
d0040326:	f8cc e000 	str.w	lr, [ip]
d004032a:	4640      	mov	r0, r8
d004032c:	a918      	add	r1, sp, #96	; 0x60
d004032e:	2210      	movs	r2, #16
d0040330:	f8df a1fc 	ldr.w	sl, [pc, #508]	; d0040530 <main+0x2e0>
d0040334:	f003 f96a 	bl	d004360c <buildLightingCLUT>
d0040338:	7b23      	ldrb	r3, [r4, #12]
d004033a:	7b62      	ldrb	r2, [r4, #13]
d004033c:	4640      	mov	r0, r8
d004033e:	7ba1      	ldrb	r1, [r4, #14]
d0040340:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040344:	7be2      	ldrb	r2, [r4, #15]
d0040346:	f8df 81ec 	ldr.w	r8, [pc, #492]	; d0040534 <main+0x2e4>
d004034a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004034e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040352:	681b      	ldr	r3, [r3, #0]
d0040354:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d0040356:	4798      	blx	r3
d0040358:	7c23      	ldrb	r3, [r4, #16]
d004035a:	7c62      	ldrb	r2, [r4, #17]
d004035c:	2100      	movs	r1, #0
d004035e:	4868      	ldr	r0, [pc, #416]	; (d0040500 <main+0x2b0>)
d0040360:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040364:	7ca2      	ldrb	r2, [r4, #18]
d0040366:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004036a:	7ce2      	ldrb	r2, [r4, #19]
d004036c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040370:	685b      	ldr	r3, [r3, #4]
d0040372:	681b      	ldr	r3, [r3, #0]
d0040374:	4798      	blx	r3
d0040376:	ab07      	add	r3, sp, #28
d0040378:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d004037c:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d0040380:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0040384:	2001      	movs	r0, #1
d0040386:	edd3 0a01 	vldr	s1, [r3, #4]
d004038a:	ed93 1a02 	vldr	s2, [r3, #8]
d004038e:	ed93 0a00 	vldr	s0, [r3]
d0040392:	f003 fb81 	bl	d0043a98 <addDirectionalLight>
d0040396:	4d5b      	ldr	r5, [pc, #364]	; (d0040504 <main+0x2b4>)
d0040398:	2309      	movs	r3, #9
d004039a:	203b      	movs	r0, #59	; 0x3b
d004039c:	222b      	movs	r2, #43	; 0x2b
d004039e:	4639      	mov	r1, r7
d00403a0:	702b      	strb	r3, [r5, #0]
d00403a2:	2302      	movs	r3, #2
d00403a4:	4d58      	ldr	r5, [pc, #352]	; (d0040508 <main+0x2b8>)
d00403a6:	ed9f 0a59 	vldr	s0, [pc, #356]	; d004050c <main+0x2bc>
d00403aa:	7028      	strb	r0, [r5, #0]
d00403ac:	4d58      	ldr	r5, [pc, #352]	; (d0040510 <main+0x2c0>)
d00403ae:	4859      	ldr	r0, [pc, #356]	; (d0040514 <main+0x2c4>)
d00403b0:	702a      	strb	r2, [r5, #0]
d00403b2:	4a59      	ldr	r2, [pc, #356]	; (d0040518 <main+0x2c8>)
d00403b4:	7013      	strb	r3, [r2, #0]
d00403b6:	f005 f9a1 	bl	d00456fc <loadMeshSB3D>
d00403ba:	ed9f 1a65 	vldr	s2, [pc, #404]	; d0040550 <main+0x300>
d00403be:	eef0 0a41 	vmov.f32	s1, s2
d00403c2:	eeb0 0a41 	vmov.f32	s0, s2
d00403c6:	f002 f941 	bl	d004264c <vec3>
d00403ca:	4638      	mov	r0, r7
d00403cc:	edcd 0a0e 	vstr	s1, [sp, #56]	; 0x38
d00403d0:	ed8d 1a0f 	vstr	s2, [sp, #60]	; 0x3c
d00403d4:	ed8d 0a0d 	vstr	s0, [sp, #52]	; 0x34
d00403d8:	f002 ffce 	bl	d0043378 <entityWorldSpawn>
d00403dc:	4649      	mov	r1, r9
d00403de:	ed9f 0a42 	vldr	s0, [pc, #264]	; d00404e8 <main+0x298>
d00403e2:	484e      	ldr	r0, [pc, #312]	; (d004051c <main+0x2cc>)
d00403e4:	f005 f98a 	bl	d00456fc <loadMeshSB3D>
d00403e8:	ed9f 1a4d 	vldr	s2, [pc, #308]	; d0040520 <main+0x2d0>
d00403ec:	eddf 0a58 	vldr	s1, [pc, #352]	; d0040550 <main+0x300>
d00403f0:	ed9f 0a4c 	vldr	s0, [pc, #304]	; d0040524 <main+0x2d4>
d00403f4:	f002 f92a 	bl	d004264c <vec3>
d00403f8:	4648      	mov	r0, r9
d00403fa:	ed8d 0a10 	vstr	s0, [sp, #64]	; 0x40
d00403fe:	edcd 0a11 	vstr	s1, [sp, #68]	; 0x44
d0040402:	ed8d 1a12 	vstr	s2, [sp, #72]	; 0x48
d0040406:	f002 ffb7 	bl	d0043378 <entityWorldSpawn>
d004040a:	4681      	mov	r9, r0
d004040c:	2000      	movs	r0, #0
d004040e:	f003 fb81 	bl	d0043b14 <enableFlatMode>
d0040412:	7b23      	ldrb	r3, [r4, #12]
d0040414:	7b62      	ldrb	r2, [r4, #13]
d0040416:	7ba1      	ldrb	r1, [r4, #14]
d0040418:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004041c:	7be2      	ldrb	r2, [r4, #15]
d004041e:	f8da 0000 	ldr.w	r0, [sl]
d0040422:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040426:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004042a:	681b      	ldr	r3, [r3, #0]
d004042c:	69db      	ldr	r3, [r3, #28]
d004042e:	4798      	blx	r3
d0040430:	7b23      	ldrb	r3, [r4, #12]
d0040432:	7b62      	ldrb	r2, [r4, #13]
d0040434:	7ba1      	ldrb	r1, [r4, #14]
d0040436:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004043a:	7be2      	ldrb	r2, [r4, #15]
d004043c:	f8da 0000 	ldr.w	r0, [sl]
d0040440:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040444:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040448:	681b      	ldr	r3, [r3, #0]
d004044a:	699b      	ldr	r3, [r3, #24]
d004044c:	4798      	blx	r3
d004044e:	7b23      	ldrb	r3, [r4, #12]
d0040450:	7b62      	ldrb	r2, [r4, #13]
d0040452:	2001      	movs	r0, #1
d0040454:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040458:	7ba2      	ldrb	r2, [r4, #14]
d004045a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004045e:	7be2      	ldrb	r2, [r4, #15]
d0040460:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040464:	685b      	ldr	r3, [r3, #4]
d0040466:	68db      	ldr	r3, [r3, #12]
d0040468:	4798      	blx	r3
d004046a:	7b23      	ldrb	r3, [r4, #12]
d004046c:	7b62      	ldrb	r2, [r4, #13]
d004046e:	211e      	movs	r1, #30
d0040470:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040474:	7ba2      	ldrb	r2, [r4, #14]
d0040476:	4608      	mov	r0, r1
d0040478:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004047c:	7be2      	ldrb	r2, [r4, #15]
d004047e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040482:	685b      	ldr	r3, [r3, #4]
d0040484:	689b      	ldr	r3, [r3, #8]
d0040486:	4798      	blx	r3
d0040488:	7823      	ldrb	r3, [r4, #0]
d004048a:	7862      	ldrb	r2, [r4, #1]
d004048c:	a904      	add	r1, sp, #16
d004048e:	a803      	add	r0, sp, #12
d0040490:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040494:	78a2      	ldrb	r2, [r4, #2]
d0040496:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004049a:	78e2      	ldrb	r2, [r4, #3]
d004049c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00404a0:	691b      	ldr	r3, [r3, #16]
d00404a2:	4798      	blx	r3
d00404a4:	7823      	ldrb	r3, [r4, #0]
d00404a6:	7862      	ldrb	r2, [r4, #1]
d00404a8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00404ac:	78a2      	ldrb	r2, [r4, #2]
d00404ae:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00404b2:	78e2      	ldrb	r2, [r4, #3]
d00404b4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00404b8:	69db      	ldr	r3, [r3, #28]
d00404ba:	4798      	blx	r3
d00404bc:	7823      	ldrb	r3, [r4, #0]
d00404be:	7862      	ldrb	r2, [r4, #1]
d00404c0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00404c4:	78a2      	ldrb	r2, [r4, #2]
d00404c6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00404ca:	78e2      	ldrb	r2, [r4, #3]
d00404cc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00404d0:	689b      	ldr	r3, [r3, #8]
d00404d2:	4798      	blx	r3
d00404d4:	4605      	mov	r5, r0
d00404d6:	e108      	b.n	d00406ea <main+0x49a>
d00404d8:	d0046c40 	.word	0xd0046c40
d00404dc:	2001f000 	.word	0x2001f000
d00404e0:	459c4000 	.word	0x459c4000
d00404e4:	3c23d70a 	.word	0x3c23d70a
d00404e8:	42480000 	.word	0x42480000
d00404ec:	4c895441 	.word	0x4c895441
d00404f0:	42040000 	.word	0x42040000
d00404f4:	41233334 	.word	0x41233334
d00404f8:	bb9374bc 	.word	0xbb9374bc
d00404fc:	3e19999a 	.word	0x3e19999a
d0040500:	d0046c18 	.word	0xd0046c18
d0040504:	d00e1c84 	.word	0xd00e1c84
d0040508:	d00e1c85 	.word	0xd00e1c85
d004050c:	43480000 	.word	0x43480000
d0040510:	d00e1c60 	.word	0xd00e1c60
d0040514:	d0046c20 	.word	0xd0046c20
d0040518:	d00e1c61 	.word	0xd00e1c61
d004051c:	d0046c30 	.word	0xd0046c30
d0040520:	c2c80000 	.word	0xc2c80000
d0040524:	44f3c000 	.word	0x44f3c000
d0040528:	d0047138 	.word	0xd0047138
d004052c:	d00e1c80 	.word	0xd00e1c80
d0040530:	d00e1ca0 	.word	0xd00e1ca0
d0040534:	d00475a8 	.word	0xd00475a8
d0040538:	310f2a63 	.word	0x310f2a63
d004053c:	bb449ba6 	.word	0xbb449ba6
d0040540:	40d9999a 	.word	0x40d9999a
d0040544:	435c0000 	.word	0x435c0000
d0040548:	3c088889 	.word	0x3c088889
d004054c:	3ba3d70a 	.word	0x3ba3d70a
d0040550:	00000000 	.word	0x00000000
d0040554:	ed5f 0a08 	vldr	s1, [pc, #-32]	; d0040538 <main+0x2e8>
d0040558:	eef2 ba04 	vmov.f32	s23, #36	; 0x41200000  10.0
d004055c:	ed5f ca09 	vldr	s25, [pc, #-36]	; d004053c <main+0x2ec>
d0040560:	ee28 8a20 	vmul.f32	s16, s16, s1
d0040564:	ed5f 7a0a 	vldr	s15, [pc, #-40]	; d0040540 <main+0x2f0>
d0040568:	ed1f ca0a 	vldr	s24, [pc, #-40]	; d0040544 <main+0x2f4>
d004056c:	ee68 ba2b 	vmul.f32	s23, s16, s23
d0040570:	ee28 ca0c 	vmul.f32	s24, s16, s24
d0040574:	ee6b caac 	vmul.f32	s25, s23, s25
d0040578:	ee6b baa7 	vmul.f32	s23, s23, s15
d004057c:	7820      	ldrb	r0, [r4, #0]
d004057e:	7861      	ldrb	r1, [r4, #1]
d0040580:	78a2      	ldrb	r2, [r4, #2]
d0040582:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0040586:	78e3      	ldrb	r3, [r4, #3]
d0040588:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004058c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040590:	6a1b      	ldr	r3, [r3, #32]
d0040592:	4798      	blx	r3
d0040594:	f894 c000 	ldrb.w	ip, [r4]
d0040598:	7863      	ldrb	r3, [r4, #1]
d004059a:	a906      	add	r1, sp, #24
d004059c:	78a2      	ldrb	r2, [r4, #2]
d004059e:	4605      	mov	r5, r0
d00405a0:	ea4c 2c03 	orr.w	ip, ip, r3, lsl #8
d00405a4:	78e3      	ldrb	r3, [r4, #3]
d00405a6:	a805      	add	r0, sp, #20
d00405a8:	ea4c 4202 	orr.w	r2, ip, r2, lsl #16
d00405ac:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00405b0:	699b      	ldr	r3, [r3, #24]
d00405b2:	4798      	blx	r3
d00405b4:	9a05      	ldr	r2, [sp, #20]
d00405b6:	9b06      	ldr	r3, [sp, #24]
d00405b8:	eef0 0a68 	vmov.f32	s1, s17
d00405bc:	4252      	negs	r2, r2
d00405be:	ed5f 7a1e 	vldr	s15, [pc, #-120]	; d0040548 <main+0x2f8>
d00405c2:	425b      	negs	r3, r3
d00405c4:	ed1f 7a1f 	vldr	s14, [pc, #-124]	; d004054c <main+0x2fc>
d00405c8:	ee06 2a90 	vmov	s13, r2
d00405cc:	2100      	movs	r1, #0
d00405ce:	4630      	mov	r0, r6
d00405d0:	eeb8 1ae6 	vcvt.f32.s32	s2, s13
d00405d4:	ee06 3a90 	vmov	s13, r3
d00405d8:	eeb8 0ae6 	vcvt.f32.s32	s0, s13
d00405dc:	ee21 1a07 	vmul.f32	s2, s2, s14
d00405e0:	ee20 0a27 	vmul.f32	s0, s0, s15
d00405e4:	f002 fc46 	bl	d0042e74 <cameraTurn>
d00405e8:	eef0 7a04 	vmov.f32	s15, #4	; 0x40200000  2.5
d00405ec:	edd6 0a07 	vldr	s1, [r6, #28]
d00405f0:	ee60 0aa7 	vmul.f32	s1, s1, s15
d00405f4:	ee60 0a88 	vmul.f32	s1, s1, s16
d00405f8:	eef5 0a40 	vcmp.f32	s1, #0.0
d00405fc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040600:	f040 80ba 	bne.w	d0040778 <main+0x528>
d0040604:	eeb0 1a68 	vmov.f32	s2, s17
d0040608:	ed5f 0a2f 	vldr	s1, [pc, #-188]	; d0040550 <main+0x300>
d004060c:	eeb0 0a6c 	vmov.f32	s0, s25
d0040610:	4648      	mov	r0, r9
d0040612:	f002 ff29 	bl	d0043468 <entityTurnLocal>
d0040616:	eeb0 0a6b 	vmov.f32	s0, s23
d004061a:	4648      	mov	r0, r9
d004061c:	f002 fef2 	bl	d0043404 <entityMoveForward>
d0040620:	7820      	ldrb	r0, [r4, #0]
d0040622:	7861      	ldrb	r1, [r4, #1]
d0040624:	78a2      	ldrb	r2, [r4, #2]
d0040626:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004062a:	78e3      	ldrb	r3, [r4, #3]
d004062c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040630:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040634:	69db      	ldr	r3, [r3, #28]
d0040636:	4798      	blx	r3
d0040638:	07ea      	lsls	r2, r5, #31
d004063a:	f100 8093 	bmi.w	d0040764 <main+0x514>
d004063e:	07ab      	lsls	r3, r5, #30
d0040640:	f100 8086 	bmi.w	d0040750 <main+0x500>
d0040644:	7b20      	ldrb	r0, [r4, #12]
d0040646:	7b61      	ldrb	r1, [r4, #13]
d0040648:	7ba2      	ldrb	r2, [r4, #14]
d004064a:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004064e:	7be3      	ldrb	r3, [r4, #15]
d0040650:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040654:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040658:	681b      	ldr	r3, [r3, #0]
d004065a:	68db      	ldr	r3, [r3, #12]
d004065c:	4798      	blx	r3
d004065e:	f898 3000 	ldrb.w	r3, [r8]
d0040662:	f1c3 0301 	rsb	r3, r3, #1
d0040666:	b2db      	uxtb	r3, r3
d0040668:	f888 3000 	strb.w	r3, [r8]
d004066c:	f898 3000 	ldrb.w	r3, [r8]
d0040670:	7b21      	ldrb	r1, [r4, #12]
d0040672:	7b60      	ldrb	r0, [r4, #13]
d0040674:	7ba2      	ldrb	r2, [r4, #14]
d0040676:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004067a:	2b00      	cmp	r3, #0
d004067c:	d056      	beq.n	d004072c <main+0x4dc>
d004067e:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0040682:	7be3      	ldrb	r3, [r4, #15]
d0040684:	f8da 0000 	ldr.w	r0, [sl]
d0040688:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004068c:	f8db 1000 	ldr.w	r1, [fp]
d0040690:	681b      	ldr	r3, [r3, #0]
d0040692:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0040694:	4798      	blx	r3
d0040696:	f8db 3000 	ldr.w	r3, [fp]
d004069a:	6818      	ldr	r0, [r3, #0]
d004069c:	f000 f88e 	bl	d00407bc <set3DRenderBuffer>
d00406a0:	4b3b      	ldr	r3, [pc, #236]	; (d0040790 <main+0x540>)
d00406a2:	eeb0 0a68 	vmov.f32	s0, s17
d00406a6:	4a3b      	ldr	r2, [pc, #236]	; (d0040794 <main+0x544>)
d00406a8:	4630      	mov	r0, r6
d00406aa:	493b      	ldr	r1, [pc, #236]	; (d0040798 <main+0x548>)
d00406ac:	463d      	mov	r5, r7
d00406ae:	781b      	ldrb	r3, [r3, #0]
d00406b0:	7812      	ldrb	r2, [r2, #0]
d00406b2:	7809      	ldrb	r1, [r1, #0]
d00406b4:	f004 f898 	bl	d00447e8 <drawFakeHorizon>
d00406b8:	4938      	ldr	r1, [pc, #224]	; (d004079c <main+0x54c>)
d00406ba:	236e      	movs	r3, #110	; 0x6e
d00406bc:	2280      	movs	r2, #128	; 0x80
d00406be:	7809      	ldrb	r1, [r1, #0]
d00406c0:	eeb0 0a68 	vmov.f32	s0, s17
d00406c4:	4630      	mov	r0, r6
d00406c6:	f003 ff81 	bl	d00445cc <drawFakeHorizonDots>
d00406ca:	4630      	mov	r0, r6
d00406cc:	f004 ff26 	bl	d004551c <Render3D>
d00406d0:	7b20      	ldrb	r0, [r4, #12]
d00406d2:	7b61      	ldrb	r1, [r4, #13]
d00406d4:	7ba2      	ldrb	r2, [r4, #14]
d00406d6:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00406da:	7be3      	ldrb	r3, [r4, #15]
d00406dc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00406e0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00406e4:	681b      	ldr	r3, [r3, #0]
d00406e6:	681b      	ldr	r3, [r3, #0]
d00406e8:	4798      	blx	r3
d00406ea:	7820      	ldrb	r0, [r4, #0]
d00406ec:	7861      	ldrb	r1, [r4, #1]
d00406ee:	78a2      	ldrb	r2, [r4, #2]
d00406f0:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00406f4:	78e3      	ldrb	r3, [r4, #3]
d00406f6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00406fa:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00406fe:	689b      	ldr	r3, [r3, #8]
d0040700:	4798      	blx	r3
d0040702:	1b43      	subs	r3, r0, r5
d0040704:	4607      	mov	r7, r0
d0040706:	ee08 3a10 	vmov	s16, r3
d004070a:	eeb8 8a48 	vcvt.f32.u32	s16, s16
d004070e:	eeb4 8ac9 	vcmpe.f32	s16, s18
d0040712:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040716:	f77f af1d 	ble.w	d0040554 <main+0x304>
d004071a:	eeb0 ca4b 	vmov.f32	s24, s22
d004071e:	eef0 ba6a 	vmov.f32	s23, s21
d0040722:	eef0 ca4a 	vmov.f32	s25, s20
d0040726:	eeb0 8a69 	vmov.f32	s16, s19
d004072a:	e727      	b.n	d004057c <main+0x32c>
d004072c:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0040730:	7be3      	ldrb	r3, [r4, #15]
d0040732:	f8db 0000 	ldr.w	r0, [fp]
d0040736:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004073a:	f8da 1000 	ldr.w	r1, [sl]
d004073e:	681b      	ldr	r3, [r3, #0]
d0040740:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0040742:	4798      	blx	r3
d0040744:	f8da 3000 	ldr.w	r3, [sl]
d0040748:	6818      	ldr	r0, [r3, #0]
d004074a:	f000 f837 	bl	d00407bc <set3DRenderBuffer>
d004074e:	e7a7      	b.n	d00406a0 <main+0x450>
d0040750:	eeb1 1a4c 	vneg.f32	s2, s24
d0040754:	ed9f 0a12 	vldr	s0, [pc, #72]	; d00407a0 <main+0x550>
d0040758:	eef0 0a68 	vmov.f32	s1, s17
d004075c:	4630      	mov	r0, r6
d004075e:	f002 fd57 	bl	d0043210 <cameraMove>
d0040762:	e76f      	b.n	d0040644 <main+0x3f4>
d0040764:	eeb0 1a4c 	vmov.f32	s2, s24
d0040768:	ed9f 0a0d 	vldr	s0, [pc, #52]	; d00407a0 <main+0x550>
d004076c:	eef0 0a68 	vmov.f32	s1, s17
d0040770:	4630      	mov	r0, r6
d0040772:	f002 fd4d 	bl	d0043210 <cameraMove>
d0040776:	e762      	b.n	d004063e <main+0x3ee>
d0040778:	eef1 0a60 	vneg.f32	s1, s1
d004077c:	2101      	movs	r1, #1
d004077e:	eeb0 1a68 	vmov.f32	s2, s17
d0040782:	ed9f 0a07 	vldr	s0, [pc, #28]	; d00407a0 <main+0x550>
d0040786:	4630      	mov	r0, r6
d0040788:	f002 fb74 	bl	d0042e74 <cameraTurn>
d004078c:	e73a      	b.n	d0040604 <main+0x3b4>
d004078e:	bf00      	nop
d0040790:	d00e1c60 	.word	0xd00e1c60
d0040794:	d00e1c85 	.word	0xd00e1c85
d0040798:	d00e1c84 	.word	0xd00e1c84
d004079c:	d00e1c61 	.word	0xd00e1c61
d00407a0:	00000000 	.word	0x00000000

d00407a4 <meshSetDefaultMaterial>:
d00407a4:	b148      	cbz	r0, d00407ba <meshSetDefaultMaterial+0x16>
d00407a6:	2300      	movs	r3, #0
d00407a8:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d00407ac:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
d00407b0:	6203      	str	r3, [r0, #32]
d00407b2:	6241      	str	r1, [r0, #36]	; 0x24
d00407b4:	62c2      	str	r2, [r0, #44]	; 0x2c
d00407b6:	6303      	str	r3, [r0, #48]	; 0x30
d00407b8:	6283      	str	r3, [r0, #40]	; 0x28
d00407ba:	4770      	bx	lr

d00407bc <set3DRenderBuffer>:
d00407bc:	4b01      	ldr	r3, [pc, #4]	; (d00407c4 <set3DRenderBuffer+0x8>)
d00407be:	6018      	str	r0, [r3, #0]
d00407c0:	4770      	bx	lr
d00407c2:	bf00      	nop
d00407c4:	d00e1ca4 	.word	0xd00e1ca4

d00407c8 <putPixel>:
d00407c8:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d00407cc:	d209      	bcs.n	d00407e2 <putPixel+0x1a>
d00407ce:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d00407d2:	d206      	bcs.n	d00407e2 <putPixel+0x1a>
d00407d4:	4b03      	ldr	r3, [pc, #12]	; (d00407e4 <putPixel+0x1c>)
d00407d6:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d00407da:	681b      	ldr	r3, [r3, #0]
d00407dc:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d00407e0:	5442      	strb	r2, [r0, r1]
d00407e2:	4770      	bx	lr
d00407e4:	d00e1ca4 	.word	0xd00e1ca4

d00407e8 <drawLine>:
d00407e8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00407ec:	b085      	sub	sp, #20
d00407ee:	eba2 0c00 	sub.w	ip, r2, r0
d00407f2:	eba3 0901 	sub.w	r9, r3, r1
d00407f6:	f240 1edf 	movw	lr, #479	; 0x1df
d00407fa:	f89d 4038 	ldrb.w	r4, [sp, #56]	; 0x38
d00407fe:	f240 1a3f 	movw	sl, #319	; 0x13f
d0040802:	f8df b07c 	ldr.w	fp, [pc, #124]	; d0040880 <drawLine+0x98>
d0040806:	9401      	str	r4, [sp, #4]
d0040808:	4282      	cmp	r2, r0
d004080a:	bfcc      	ite	gt
d004080c:	2401      	movgt	r4, #1
d004080e:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d0040812:	9402      	str	r4, [sp, #8]
d0040814:	428b      	cmp	r3, r1
d0040816:	bfcc      	ite	gt
d0040818:	2401      	movgt	r4, #1
d004081a:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d004081e:	f1bc 0f00 	cmp.w	ip, #0
d0040822:	9403      	str	r4, [sp, #12]
d0040824:	bfb8      	it	lt
d0040826:	f1cc 0c00 	rsblt	ip, ip, #0
d004082a:	f1b9 0f00 	cmp.w	r9, #0
d004082e:	bfb8      	it	lt
d0040830:	f1c9 0900 	rsblt	r9, r9, #0
d0040834:	ebac 0409 	sub.w	r4, ip, r9
d0040838:	f1c9 0800 	rsb	r8, r9, #0
d004083c:	4570      	cmp	r0, lr
d004083e:	eb00 0780 	add.w	r7, r0, r0, lsl #2
d0040842:	ea4f 0644 	mov.w	r6, r4, lsl #1
d0040846:	d807      	bhi.n	d0040858 <drawLine+0x70>
d0040848:	4551      	cmp	r1, sl
d004084a:	d805      	bhi.n	d0040858 <drawLine+0x70>
d004084c:	f8db 5000 	ldr.w	r5, [fp]
d0040850:	eb05 1587 	add.w	r5, r5, r7, lsl #6
d0040854:	9f01      	ldr	r7, [sp, #4]
d0040856:	546f      	strb	r7, [r5, r1]
d0040858:	4290      	cmp	r0, r2
d004085a:	d101      	bne.n	d0040860 <drawLine+0x78>
d004085c:	4299      	cmp	r1, r3
d004085e:	d00c      	beq.n	d004087a <drawLine+0x92>
d0040860:	ebb8 0f44 	cmp.w	r8, r4, lsl #1
d0040864:	dc05      	bgt.n	d0040872 <drawLine+0x8a>
d0040866:	9d02      	ldr	r5, [sp, #8]
d0040868:	45b4      	cmp	ip, r6
d004086a:	eba4 0409 	sub.w	r4, r4, r9
d004086e:	4428      	add	r0, r5
d0040870:	dbe4      	blt.n	d004083c <drawLine+0x54>
d0040872:	9d03      	ldr	r5, [sp, #12]
d0040874:	4464      	add	r4, ip
d0040876:	4429      	add	r1, r5
d0040878:	e7e0      	b.n	d004083c <drawLine+0x54>
d004087a:	b005      	add	sp, #20
d004087c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040880:	d00e1ca4 	.word	0xd00e1ca4

d0040884 <shadeColor>:
d0040884:	2900      	cmp	r1, #0
d0040886:	db09      	blt.n	d004089c <shadeColor+0x18>
d0040888:	2904      	cmp	r1, #4
d004088a:	dc09      	bgt.n	d00408a0 <shadeColor+0x1c>
d004088c:	0109      	lsls	r1, r1, #4
d004088e:	b2c9      	uxtb	r1, r1
d0040890:	f000 000f 	and.w	r0, r0, #15
d0040894:	3020      	adds	r0, #32
d0040896:	4408      	add	r0, r1
d0040898:	b2c0      	uxtb	r0, r0
d004089a:	4770      	bx	lr
d004089c:	2100      	movs	r1, #0
d004089e:	e7f7      	b.n	d0040890 <shadeColor+0xc>
d00408a0:	2010      	movs	r0, #16
d00408a2:	4770      	bx	lr

d00408a4 <fillTriangleFlat>:
d00408a4:	eddf 7ad1 	vldr	s15, [pc, #836]	; d0040bec <fillTriangleFlat+0x348>
d00408a8:	eef4 0ae7 	vcmpe.f32	s1, s15
d00408ac:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00408b0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00408b4:	eeb4 1ae7 	vcmpe.f32	s2, s15
d00408b8:	ed2d 8b10 	vpush	{d8-d15}
d00408bc:	b089      	sub	sp, #36	; 0x24
d00408be:	9304      	str	r3, [sp, #16]
d00408c0:	bf94      	ite	ls
d00408c2:	2301      	movls	r3, #1
d00408c4:	2300      	movhi	r3, #0
d00408c6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00408ca:	9001      	str	r0, [sp, #4]
d00408cc:	9102      	str	r1, [sp, #8]
d00408ce:	bf98      	it	ls
d00408d0:	f043 0301 	orrls.w	r3, r3, #1
d00408d4:	9203      	str	r2, [sp, #12]
d00408d6:	f8bd 4090 	ldrh.w	r4, [sp, #144]	; 0x90
d00408da:	f8bd 0094 	ldrh.w	r0, [sp, #148]	; 0x94
d00408de:	f8bd 1098 	ldrh.w	r1, [sp, #152]	; 0x98
d00408e2:	f89d 209c 	ldrb.w	r2, [sp, #156]	; 0x9c
d00408e6:	2b00      	cmp	r3, #0
d00408e8:	f040 8154 	bne.w	d0040b94 <fillTriangleFlat+0x2f0>
d00408ec:	eeb4 0ae7 	vcmpe.f32	s0, s15
d00408f0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00408f4:	bf94      	ite	ls
d00408f6:	2701      	movls	r7, #1
d00408f8:	2700      	movhi	r7, #0
d00408fa:	f240 814b 	bls.w	d0040b94 <fillTriangleFlat+0x2f0>
d00408fe:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0040902:	ee07 4a10 	vmov	s14, r4
d0040906:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d004090a:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d004090e:	ee87 8a80 	vdiv.f32	s16, s15, s0
d0040912:	ee87 2a81 	vdiv.f32	s4, s15, s2
d0040916:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d004091a:	ee07 0a90 	vmov	s15, r0
d004091e:	ee71 1aa6 	vadd.f32	s3, s3, s13
d0040922:	eef8 5a67 	vcvt.f32.u32	s11, s15
d0040926:	ee07 1a90 	vmov	s15, r1
d004092a:	ee27 7a08 	vmul.f32	s14, s14, s16
d004092e:	eeb8 3a67 	vcvt.f32.u32	s6, s15
d0040932:	eefd 7ae1 	vcvt.s32.f32	s15, s3
d0040936:	ee23 3a02 	vmul.f32	s6, s6, s4
d004093a:	ee17 3a90 	vmov	r3, s15
d004093e:	2b00      	cmp	r3, #0
d0040940:	ee65 5a80 	vmul.f32	s11, s11, s0
d0040944:	f2c0 812d 	blt.w	d0040ba2 <fillTriangleFlat+0x2fe>
d0040948:	2b04      	cmp	r3, #4
d004094a:	f340 8128 	ble.w	d0040b9e <fillTriangleFlat+0x2fa>
d004094e:	2710      	movs	r7, #16
d0040950:	eddd 7a02 	vldr	s15, [sp, #8]
d0040954:	eddd 6a23 	vldr	s13, [sp, #140]	; 0x8c
d0040958:	eeb8 5ae7 	vcvt.f32.s32	s10, s15
d004095c:	eddd 7a04 	vldr	s15, [sp, #16]
d0040960:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0040964:	eef8 3ae7 	vcvt.f32.s32	s7, s15
d0040968:	eddd 7a01 	vldr	s15, [sp, #4]
d004096c:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d0040970:	eddd 7a03 	vldr	s15, [sp, #12]
d0040974:	eeb4 5ae3 	vcmpe.f32	s10, s7
d0040978:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d004097c:	eddd 7a22 	vldr	s15, [sp, #136]	; 0x88
d0040980:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040984:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040988:	f300 8111 	bgt.w	d0040bae <fillTriangleFlat+0x30a>
d004098c:	eeb4 5ae6 	vcmpe.f32	s10, s13
d0040990:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040994:	f300 81ee 	bgt.w	d0040d74 <fillTriangleFlat+0x4d0>
d0040998:	eef4 3ae6 	vcmpe.f32	s7, s13
d004099c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00409a0:	dd17      	ble.n	d00409d2 <fillTriangleFlat+0x12e>
d00409a2:	eeb0 1a65 	vmov.f32	s2, s11
d00409a6:	eef0 1a40 	vmov.f32	s3, s0
d00409aa:	eef0 2a63 	vmov.f32	s5, s7
d00409ae:	eeb0 4a64 	vmov.f32	s8, s9
d00409b2:	eef0 5a43 	vmov.f32	s11, s6
d00409b6:	eeb0 0a42 	vmov.f32	s0, s4
d00409ba:	eef0 3a66 	vmov.f32	s7, s13
d00409be:	eef0 4a67 	vmov.f32	s9, s15
d00409c2:	eeb0 3a41 	vmov.f32	s6, s2
d00409c6:	eeb0 2a61 	vmov.f32	s4, s3
d00409ca:	eef0 6a62 	vmov.f32	s13, s5
d00409ce:	eef0 7a44 	vmov.f32	s15, s8
d00409d2:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d00409d6:	ee75 2a04 	vadd.f32	s5, s10, s8
d00409da:	ee36 4a84 	vadd.f32	s8, s13, s8
d00409de:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d00409e2:	eebd 4ac4 	vcvt.s32.f32	s8, s8
d00409e6:	ee12 3a90 	vmov	r3, s5
d00409ea:	ee14 2a10 	vmov	r2, s8
d00409ee:	4293      	cmp	r3, r2
d00409f0:	f000 80d0 	beq.w	d0040b94 <fillTriangleFlat+0x2f0>
d00409f4:	ee76 2ac5 	vsub.f32	s5, s13, s10
d00409f8:	ed9f 9a7c 	vldr	s18, [pc, #496]	; d0040bec <fillTriangleFlat+0x348>
d00409fc:	eef4 2ac9 	vcmpe.f32	s5, s18
d0040a00:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040a04:	f240 80c6 	bls.w	d0040b94 <fillTriangleFlat+0x2f0>
d0040a08:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d0040a0c:	ee37 1ac6 	vsub.f32	s2, s15, s12
d0040a10:	ee72 0a48 	vsub.f32	s1, s4, s16
d0040a14:	ee81 4aa2 	vdiv.f32	s8, s3, s5
d0040a18:	ee73 2ac5 	vsub.f32	s5, s7, s10
d0040a1c:	ee73 8a47 	vsub.f32	s17, s6, s14
d0040a20:	eef4 2ac9 	vcmpe.f32	s5, s18
d0040a24:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040a28:	ee21 1a04 	vmul.f32	s2, s2, s8
d0040a2c:	ee60 0a84 	vmul.f32	s1, s1, s8
d0040a30:	ee68 8a84 	vmul.f32	s17, s17, s8
d0040a34:	f300 80e2 	bgt.w	d0040bfc <fillTriangleFlat+0x358>
d0040a38:	ee36 4ae3 	vsub.f32	s8, s13, s7
d0040a3c:	eeb4 4ac9 	vcmpe.f32	s8, s18
d0040a40:	ed8d 4a01 	vstr	s8, [sp, #4]
d0040a44:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040a48:	f340 80a4 	ble.w	d0040b94 <fillTriangleFlat+0x2f0>
d0040a4c:	eec1 9a84 	vdiv.f32	s19, s3, s8
d0040a50:	eef4 2ac9 	vcmpe.f32	s5, s18
d0040a54:	ee77 7ae4 	vsub.f32	s15, s15, s9
d0040a58:	ee32 4a40 	vsub.f32	s8, s4, s0
d0040a5c:	ee33 3a65 	vsub.f32	s6, s6, s11
d0040a60:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040a64:	ee67 eaa9 	vmul.f32	s29, s15, s19
d0040a68:	ee64 fa29 	vmul.f32	s31, s8, s19
d0040a6c:	ee23 fa29 	vmul.f32	s30, s6, s19
d0040a70:	f300 8315 	bgt.w	d004109e <fillTriangleFlat+0x7fa>
d0040a74:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0040a78:	edcd 7a02 	vstr	s15, [sp, #8]
d0040a7c:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0040a80:	f240 133f 	movw	r3, #319	; 0x13f
d0040a84:	9a02      	ldr	r2, [sp, #8]
d0040a86:	ee17 ea90 	vmov	lr, s15
d0040a8a:	ea22 7be2 	bic.w	fp, r2, r2, asr #31
d0040a8e:	f10e 3eff 	add.w	lr, lr, #4294967295	; 0xffffffff
d0040a92:	459e      	cmp	lr, r3
d0040a94:	bfa8      	it	ge
d0040a96:	469e      	movge	lr, r3
d0040a98:	45f3      	cmp	fp, lr
d0040a9a:	dc7b      	bgt.n	d0040b94 <fillTriangleFlat+0x2f0>
d0040a9c:	ee07 ba90 	vmov	s15, fp
d0040aa0:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0040aa4:	f10e 0e01 	add.w	lr, lr, #1
d0040aa8:	ed9f 9a50 	vldr	s18, [pc, #320]	; d0040bec <fillTriangleFlat+0x348>
d0040aac:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040ab0:	eddf 1a4f 	vldr	s3, [pc, #316]	; d0040bf0 <fillTriangleFlat+0x34c>
d0040ab4:	ed9f 2a4f 	vldr	s4, [pc, #316]	; d0040bf4 <fillTriangleFlat+0x350>
d0040ab8:	eddf 9a4f 	vldr	s19, [pc, #316]	; d0040bf8 <fillTriangleFlat+0x354>
d0040abc:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0040ac0:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0040ac4:	ee77 3ae3 	vsub.f32	s7, s15, s7
d0040ac8:	eea1 6a05 	vfma.f32	s12, s2, s10
d0040acc:	eea0 8a85 	vfma.f32	s16, s1, s10
d0040ad0:	eea8 7a85 	vfma.f32	s14, s17, s10
d0040ad4:	eee3 4aae 	vfma.f32	s9, s7, s29
d0040ad8:	eea3 0aaf 	vfma.f32	s0, s7, s31
d0040adc:	eeef 5a23 	vfma.f32	s11, s30, s7
d0040ae0:	e032      	b.n	d0040b48 <fillTriangleFlat+0x2a4>
d0040ae2:	eef0 3a47 	vmov.f32	s7, s14
d0040ae6:	eef0 2a48 	vmov.f32	s5, s16
d0040aea:	eef0 6a46 	vmov.f32	s13, s12
d0040aee:	eeb0 3a65 	vmov.f32	s6, s11
d0040af2:	eeb0 5a40 	vmov.f32	s10, s0
d0040af6:	eeb0 4a64 	vmov.f32	s8, s9
d0040afa:	fefa 7a66 	vrintp.f32	s15, s13
d0040afe:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0040b02:	f240 13df 	movw	r3, #479	; 0x1df
d0040b06:	ee17 6a90 	vmov	r6, s15
d0040b0a:	fefa 7a44 	vrintp.f32	s15, s8
d0040b0e:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0040b12:	3e01      	subs	r6, #1
d0040b14:	ee17 4a90 	vmov	r4, s15
d0040b18:	429e      	cmp	r6, r3
d0040b1a:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d0040b1e:	bfa8      	it	ge
d0040b20:	461e      	movge	r6, r3
d0040b22:	42a6      	cmp	r6, r4
d0040b24:	f280 8158 	bge.w	d0040dd8 <fillTriangleFlat+0x534>
d0040b28:	f10b 0b01 	add.w	fp, fp, #1
d0040b2c:	ee36 6a01 	vadd.f32	s12, s12, s2
d0040b30:	ee38 8a20 	vadd.f32	s16, s16, s1
d0040b34:	45f3      	cmp	fp, lr
d0040b36:	ee37 7a28 	vadd.f32	s14, s14, s17
d0040b3a:	ee74 4aae 	vadd.f32	s9, s9, s29
d0040b3e:	ee30 0a2f 	vadd.f32	s0, s0, s31
d0040b42:	ee75 5a8f 	vadd.f32	s11, s11, s30
d0040b46:	d025      	beq.n	d0040b94 <fillTriangleFlat+0x2f0>
d0040b48:	eeb4 6ae4 	vcmpe.f32	s12, s9
d0040b4c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040b50:	dcc7      	bgt.n	d0040ae2 <fillTriangleFlat+0x23e>
d0040b52:	eef0 3a65 	vmov.f32	s7, s11
d0040b56:	eef0 2a40 	vmov.f32	s5, s0
d0040b5a:	eef0 6a64 	vmov.f32	s13, s9
d0040b5e:	eeb0 3a47 	vmov.f32	s6, s14
d0040b62:	eeb0 5a48 	vmov.f32	s10, s16
d0040b66:	eeb0 4a46 	vmov.f32	s8, s12
d0040b6a:	e7c6      	b.n	d0040afa <fillTriangleFlat+0x256>
d0040b6c:	eddd 6a03 	vldr	s13, [sp, #12]
d0040b70:	eddd 4a04 	vldr	s9, [sp, #16]
d0040b74:	ed9d 7a05 	vldr	s14, [sp, #20]
d0040b78:	ed9d 8a06 	vldr	s16, [sp, #24]
d0040b7c:	ed9d 5a07 	vldr	s10, [sp, #28]
d0040b80:	eddf 7a1a 	vldr	s15, [pc, #104]	; d0040bec <fillTriangleFlat+0x348>
d0040b84:	ed9d 4a01 	vldr	s8, [sp, #4]
d0040b88:	eeb4 4ae7 	vcmpe.f32	s8, s15
d0040b8c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040b90:	f73f af74 	bgt.w	d0040a7c <fillTriangleFlat+0x1d8>
d0040b94:	b009      	add	sp, #36	; 0x24
d0040b96:	ecbd 8b10 	vpop	{d8-d15}
d0040b9a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040b9e:	011b      	lsls	r3, r3, #4
d0040ba0:	b2df      	uxtb	r7, r3
d0040ba2:	f002 020f 	and.w	r2, r2, #15
d0040ba6:	3220      	adds	r2, #32
d0040ba8:	4417      	add	r7, r2
d0040baa:	b2ff      	uxtb	r7, r7
d0040bac:	e6d0      	b.n	d0040950 <fillTriangleFlat+0xac>
d0040bae:	eef4 3ae6 	vcmpe.f32	s7, s13
d0040bb2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040bb6:	f340 80f6 	ble.w	d0040da6 <fillTriangleFlat+0x502>
d0040bba:	eeb0 1a43 	vmov.f32	s2, s6
d0040bbe:	eef0 1a42 	vmov.f32	s3, s4
d0040bc2:	eef0 2a66 	vmov.f32	s5, s13
d0040bc6:	eeb0 4a67 	vmov.f32	s8, s15
d0040bca:	eeb0 3a47 	vmov.f32	s6, s14
d0040bce:	eeb0 2a48 	vmov.f32	s4, s16
d0040bd2:	eef0 6a45 	vmov.f32	s13, s10
d0040bd6:	eef0 7a46 	vmov.f32	s15, s12
d0040bda:	eeb0 7a41 	vmov.f32	s14, s2
d0040bde:	eeb0 8a61 	vmov.f32	s16, s3
d0040be2:	eeb0 5a62 	vmov.f32	s10, s5
d0040be6:	eeb0 6a44 	vmov.f32	s12, s8
d0040bea:	e6f2      	b.n	d00409d2 <fillTriangleFlat+0x12e>
d0040bec:	38d1b717 	.word	0x38d1b717
d0040bf0:	33d6bf95 	.word	0x33d6bf95
d0040bf4:	00000000 	.word	0x00000000
d0040bf8:	477fff00 	.word	0x477fff00
d0040bfc:	ee81 4aa2 	vdiv.f32	s8, s3, s5
d0040c00:	ee76 aae3 	vsub.f32	s21, s13, s7
d0040c04:	ee34 aac6 	vsub.f32	s20, s9, s12
d0040c08:	ee70 9a48 	vsub.f32	s19, s0, s16
d0040c0c:	ee75 2ac7 	vsub.f32	s5, s11, s14
d0040c10:	edcd aa01 	vstr	s21, [sp, #4]
d0040c14:	eef4 aac9 	vcmpe.f32	s21, s18
d0040c18:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040c1c:	ee2a aa04 	vmul.f32	s20, s20, s8
d0040c20:	ee69 9a84 	vmul.f32	s19, s19, s8
d0040c24:	ee22 4a84 	vmul.f32	s8, s5, s8
d0040c28:	eeb0 ba4a 	vmov.f32	s22, s20
d0040c2c:	eef0 da44 	vmov.f32	s27, s8
d0040c30:	f340 822e 	ble.w	d0041090 <fillTriangleFlat+0x7ec>
d0040c34:	eec1 2aaa 	vdiv.f32	s5, s3, s21
d0040c38:	ee77 7ae4 	vsub.f32	s15, s15, s9
d0040c3c:	ee32 4a40 	vsub.f32	s8, s4, s0
d0040c40:	ee33 3a65 	vsub.f32	s6, s6, s11
d0040c44:	ee67 eaa2 	vmul.f32	s29, s15, s5
d0040c48:	ee64 fa22 	vmul.f32	s31, s8, s5
d0040c4c:	ee23 fa22 	vmul.f32	s30, s6, s5
d0040c50:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0040c54:	f240 133f 	movw	r3, #319	; 0x13f
d0040c58:	ee17 2a90 	vmov	r2, s15
d0040c5c:	edcd 7a02 	vstr	s15, [sp, #8]
d0040c60:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d0040c64:	f102 3bff 	add.w	fp, r2, #4294967295	; 0xffffffff
d0040c68:	ee17 aa90 	vmov	sl, s15
d0040c6c:	459b      	cmp	fp, r3
d0040c6e:	ea2a 7aea 	bic.w	sl, sl, sl, asr #31
d0040c72:	bfa8      	it	ge
d0040c74:	469b      	movge	fp, r3
d0040c76:	45d3      	cmp	fp, sl
d0040c78:	db82      	blt.n	d0040b80 <fillTriangleFlat+0x2dc>
d0040c7a:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0040c7e:	f10b 0b01 	add.w	fp, fp, #1
d0040c82:	eeb0 aa46 	vmov.f32	s20, s12
d0040c86:	ed1f da26 	vldr	s26, [pc, #-152]	; d0040bf0 <fillTriangleFlat+0x34c>
d0040c8a:	eef0 aa46 	vmov.f32	s21, s12
d0040c8e:	ed1f 3a27 	vldr	s6, [pc, #-156]	; d0040bf4 <fillTriangleFlat+0x350>
d0040c92:	ee37 4ac5 	vsub.f32	s8, s15, s10
d0040c96:	ee07 aa90 	vmov	s15, sl
d0040c9a:	eef0 ca48 	vmov.f32	s25, s16
d0040c9e:	ed1f 2a2a 	vldr	s4, [pc, #-168]	; d0040bf8 <fillTriangleFlat+0x354>
d0040ca2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040ca6:	edcd 6a03 	vstr	s13, [sp, #12]
d0040caa:	eeb0 ca47 	vmov.f32	s24, s14
d0040cae:	edcd 4a04 	vstr	s9, [sp, #16]
d0040cb2:	eeb0 9a4b 	vmov.f32	s18, s22
d0040cb6:	ed8d 7a05 	vstr	s14, [sp, #20]
d0040cba:	ee77 7a84 	vadd.f32	s15, s15, s8
d0040cbe:	ed8d 8a06 	vstr	s16, [sp, #24]
d0040cc2:	eef0 ba48 	vmov.f32	s23, s16
d0040cc6:	ed8d 5a07 	vstr	s10, [sp, #28]
d0040cca:	eea7 aa8b 	vfma.f32	s20, s15, s22
d0040cce:	eeb0 ba47 	vmov.f32	s22, s14
d0040cd2:	eee1 aa27 	vfma.f32	s21, s2, s15
d0040cd6:	eee0 caa7 	vfma.f32	s25, s1, s15
d0040cda:	eea8 caa7 	vfma.f32	s24, s17, s15
d0040cde:	eee7 baa9 	vfma.f32	s23, s15, s19
d0040ce2:	eea7 baad 	vfma.f32	s22, s15, s27
d0040ce6:	e033      	b.n	d0040d50 <fillTriangleFlat+0x4ac>
d0040ce8:	eeb0 4a4c 	vmov.f32	s8, s24
d0040cec:	eef0 4a6c 	vmov.f32	s9, s25
d0040cf0:	eef0 7a6a 	vmov.f32	s15, s21
d0040cf4:	eeb0 5a4b 	vmov.f32	s10, s22
d0040cf8:	eeb0 7a6b 	vmov.f32	s14, s23
d0040cfc:	eef0 6a4a 	vmov.f32	s13, s20
d0040d00:	fefa 2a67 	vrintp.f32	s5, s15
d0040d04:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d0040d08:	f240 13df 	movw	r3, #479	; 0x1df
d0040d0c:	ee12 6a90 	vmov	r6, s5
d0040d10:	fefa 2a66 	vrintp.f32	s5, s13
d0040d14:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d0040d18:	3e01      	subs	r6, #1
d0040d1a:	ee12 4a90 	vmov	r4, s5
d0040d1e:	429e      	cmp	r6, r3
d0040d20:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d0040d24:	bfa8      	it	ge
d0040d26:	461e      	movge	r6, r3
d0040d28:	42a6      	cmp	r6, r4
d0040d2a:	f280 80fd 	bge.w	d0040f28 <fillTriangleFlat+0x684>
d0040d2e:	f10a 0a01 	add.w	sl, sl, #1
d0040d32:	ee7a aa81 	vadd.f32	s21, s21, s2
d0040d36:	ee7c caa0 	vadd.f32	s25, s25, s1
d0040d3a:	45da      	cmp	sl, fp
d0040d3c:	ee3c ca28 	vadd.f32	s24, s24, s17
d0040d40:	ee3a aa09 	vadd.f32	s20, s20, s18
d0040d44:	ee7b baa9 	vadd.f32	s23, s23, s19
d0040d48:	ee3b ba2d 	vadd.f32	s22, s22, s27
d0040d4c:	f43f af0e 	beq.w	d0040b6c <fillTriangleFlat+0x2c8>
d0040d50:	eef4 aaca 	vcmpe.f32	s21, s20
d0040d54:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040d58:	dcc6      	bgt.n	d0040ce8 <fillTriangleFlat+0x444>
d0040d5a:	eeb0 4a4b 	vmov.f32	s8, s22
d0040d5e:	eef0 4a6b 	vmov.f32	s9, s23
d0040d62:	eef0 7a4a 	vmov.f32	s15, s20
d0040d66:	eeb0 5a4c 	vmov.f32	s10, s24
d0040d6a:	eeb0 7a6c 	vmov.f32	s14, s25
d0040d6e:	eef0 6a6a 	vmov.f32	s13, s21
d0040d72:	e7c5      	b.n	d0040d00 <fillTriangleFlat+0x45c>
d0040d74:	eeb0 1a47 	vmov.f32	s2, s14
d0040d78:	eef0 1a48 	vmov.f32	s3, s16
d0040d7c:	eef0 2a45 	vmov.f32	s5, s10
d0040d80:	eeb0 4a46 	vmov.f32	s8, s12
d0040d84:	eeb0 7a43 	vmov.f32	s14, s6
d0040d88:	eeb0 8a42 	vmov.f32	s16, s4
d0040d8c:	eeb0 5a66 	vmov.f32	s10, s13
d0040d90:	eeb0 6a67 	vmov.f32	s12, s15
d0040d94:	eeb0 3a41 	vmov.f32	s6, s2
d0040d98:	eeb0 2a61 	vmov.f32	s4, s3
d0040d9c:	eef0 6a62 	vmov.f32	s13, s5
d0040da0:	eef0 7a44 	vmov.f32	s15, s8
d0040da4:	e5f8      	b.n	d0040998 <fillTriangleFlat+0xf4>
d0040da6:	eeb0 1a47 	vmov.f32	s2, s14
d0040daa:	eef0 1a48 	vmov.f32	s3, s16
d0040dae:	eef0 2a45 	vmov.f32	s5, s10
d0040db2:	eeb0 4a46 	vmov.f32	s8, s12
d0040db6:	eeb0 7a65 	vmov.f32	s14, s11
d0040dba:	eeb0 8a40 	vmov.f32	s16, s0
d0040dbe:	eeb0 5a63 	vmov.f32	s10, s7
d0040dc2:	eeb0 6a64 	vmov.f32	s12, s9
d0040dc6:	eef0 5a41 	vmov.f32	s11, s2
d0040dca:	eeb0 0a61 	vmov.f32	s0, s3
d0040dce:	eef0 3a62 	vmov.f32	s7, s5
d0040dd2:	eef0 4a44 	vmov.f32	s9, s8
d0040dd6:	e5df      	b.n	d0040998 <fillTriangleFlat+0xf4>
d0040dd8:	ee76 6ac4 	vsub.f32	s13, s13, s8
d0040ddc:	eef4 6ac9 	vcmpe.f32	s13, s18
d0040de0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040de4:	f340 814f 	ble.w	d0041086 <fillTriangleFlat+0x7e2>
d0040de8:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0040dec:	ee72 2ac5 	vsub.f32	s5, s5, s10
d0040df0:	ee73 3ac3 	vsub.f32	s7, s7, s6
d0040df4:	ee87 aaa6 	vdiv.f32	s20, s15, s13
d0040df8:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0040dfc:	ee37 4ac4 	vsub.f32	s8, s15, s8
d0040e00:	ee07 4a90 	vmov	s15, r4
d0040e04:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040e08:	ee77 7a84 	vadd.f32	s15, s15, s8
d0040e0c:	ee62 2a8a 	vmul.f32	s5, s5, s20
d0040e10:	ee23 aa8a 	vmul.f32	s20, s7, s20
d0040e14:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0040e18:	eea7 3a8a 	vfma.f32	s6, s15, s20
d0040e1c:	ebcb 180b 	rsb	r8, fp, fp, lsl #4
d0040e20:	4ba3      	ldr	r3, [pc, #652]	; (d00410b0 <fillTriangleFlat+0x80c>)
d0040e22:	eb04 0c84 	add.w	ip, r4, r4, lsl #2
d0040e26:	4aa3      	ldr	r2, [pc, #652]	; (d00410b4 <fillTriangleFlat+0x810>)
d0040e28:	681b      	ldr	r3, [r3, #0]
d0040e2a:	eb04 1848 	add.w	r8, r4, r8, lsl #5
d0040e2e:	eb0b 1c8c 	add.w	ip, fp, ip, lsl #6
d0040e32:	eef6 3a00 	vmov.f32	s7, #96	; 0x3f000000  0.5
d0040e36:	eb02 0848 	add.w	r8, r2, r8, lsl #1
d0040e3a:	449c      	add	ip, r3
d0040e3c:	e011      	b.n	d0040e62 <fillTriangleFlat+0x5be>
d0040e3e:	ee07 1a90 	vmov	s15, r1
d0040e42:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0040e46:	eb08 0841 	add.w	r8, r8, r1, lsl #1
d0040e4a:	440c      	add	r4, r1
d0040e4c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040e50:	eb0c 1c83 	add.w	ip, ip, r3, lsl #6
d0040e54:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0040e58:	eea7 3a8a 	vfma.f32	s6, s15, s20
d0040e5c:	42a6      	cmp	r6, r4
d0040e5e:	f6ff ae63 	blt.w	d0040b28 <fillTriangleFlat+0x284>
d0040e62:	eba6 0904 	sub.w	r9, r6, r4
d0040e66:	eeb4 5ae1 	vcmpe.f32	s10, s3
d0040e6a:	f109 0101 	add.w	r1, r9, #1
d0040e6e:	2930      	cmp	r1, #48	; 0x30
d0040e70:	bfa8      	it	ge
d0040e72:	2130      	movge	r1, #48	; 0x30
d0040e74:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040e78:	d9e1      	bls.n	d0040e3e <fillTriangleFlat+0x59a>
d0040e7a:	f1b9 0f00 	cmp.w	r9, #0
d0040e7e:	eec3 6a05 	vdiv.f32	s13, s6, s10
d0040e82:	dd4d      	ble.n	d0040f20 <fillTriangleFlat+0x67c>
d0040e84:	1e4b      	subs	r3, r1, #1
d0040e86:	ee07 3a90 	vmov	s15, r3
d0040e8a:	eeb0 4a45 	vmov.f32	s8, s10
d0040e8e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040e92:	eea7 4aa2 	vfma.f32	s8, s15, s5
d0040e96:	eeb4 4ae1 	vcmpe.f32	s8, s3
d0040e9a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040e9e:	dd40      	ble.n	d0040f22 <fillTriangleFlat+0x67e>
d0040ea0:	eeb0 ba43 	vmov.f32	s22, s6
d0040ea4:	eea7 ba8a 	vfma.f32	s22, s15, s20
d0040ea8:	eecb aa04 	vdiv.f32	s21, s22, s8
d0040eac:	ee7a aae6 	vsub.f32	s21, s21, s13
d0040eb0:	ee8a 4aa7 	vdiv.f32	s8, s21, s15
d0040eb4:	f1a8 0002 	sub.w	r0, r8, #2
d0040eb8:	2300      	movs	r3, #0
d0040eba:	fec6 7a82 	vmaxnm.f32	s15, s13, s4
d0040ebe:	fec7 7ae9 	vminnm.f32	s15, s15, s19
d0040ec2:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0040ec6:	f830 5f02 	ldrh.w	r5, [r0, #2]!
d0040eca:	3301      	adds	r3, #1
d0040ecc:	ee77 7aa3 	vadd.f32	s15, s15, s7
d0040ed0:	ea4f 1a82 	mov.w	sl, r2, lsl #6
d0040ed4:	ee76 6a84 	vadd.f32	s13, s13, s8
d0040ed8:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0040edc:	ee17 2a90 	vmov	r2, s15
d0040ee0:	b292      	uxth	r2, r2
d0040ee2:	4295      	cmp	r5, r2
d0040ee4:	d902      	bls.n	d0040eec <fillTriangleFlat+0x648>
d0040ee6:	8002      	strh	r2, [r0, #0]
d0040ee8:	f80c 700a 	strb.w	r7, [ip, sl]
d0040eec:	4299      	cmp	r1, r3
d0040eee:	dce4      	bgt.n	d0040eba <fillTriangleFlat+0x616>
d0040ef0:	f1b9 0f00 	cmp.w	r9, #0
d0040ef4:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0040ef8:	ea4f 0241 	mov.w	r2, r1, lsl #1
d0040efc:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0040f00:	bfbc      	itt	lt
d0040f02:	2202      	movlt	r2, #2
d0040f04:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0040f08:	4490      	add	r8, r2
d0040f0a:	449c      	add	ip, r3
d0040f0c:	ee07 1a90 	vmov	s15, r1
d0040f10:	440c      	add	r4, r1
d0040f12:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040f16:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0040f1a:	eea7 3a8a 	vfma.f32	s6, s15, s20
d0040f1e:	e79d      	b.n	d0040e5c <fillTriangleFlat+0x5b8>
d0040f20:	d1f4      	bne.n	d0040f0c <fillTriangleFlat+0x668>
d0040f22:	eeb0 4a42 	vmov.f32	s8, s4
d0040f26:	e7c5      	b.n	d0040eb4 <fillTriangleFlat+0x610>
d0040f28:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0040f2c:	eddf 2a62 	vldr	s5, [pc, #392]	; d00410b8 <fillTriangleFlat+0x814>
d0040f30:	eef4 7ae2 	vcmpe.f32	s15, s5
d0040f34:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040f38:	f340 80a0 	ble.w	d004107c <fillTriangleFlat+0x7d8>
d0040f3c:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d0040f40:	ee74 4ac7 	vsub.f32	s9, s9, s14
d0040f44:	ee34 4a45 	vsub.f32	s8, s8, s10
d0040f48:	eec1 2aa7 	vdiv.f32	s5, s3, s15
d0040f4c:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0040f50:	ee77 6ae6 	vsub.f32	s13, s15, s13
d0040f54:	ee07 4a90 	vmov	s15, r4
d0040f58:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040f5c:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0040f60:	ee64 4aa2 	vmul.f32	s9, s9, s5
d0040f64:	ee24 4a22 	vmul.f32	s8, s8, s5
d0040f68:	eea7 7aa4 	vfma.f32	s14, s15, s9
d0040f6c:	eea7 5a84 	vfma.f32	s10, s15, s8
d0040f70:	ebca 1e0a 	rsb	lr, sl, sl, lsl #4
d0040f74:	4b4e      	ldr	r3, [pc, #312]	; (d00410b0 <fillTriangleFlat+0x80c>)
d0040f76:	eb04 0c84 	add.w	ip, r4, r4, lsl #2
d0040f7a:	4a4e      	ldr	r2, [pc, #312]	; (d00410b4 <fillTriangleFlat+0x810>)
d0040f7c:	681b      	ldr	r3, [r3, #0]
d0040f7e:	eb04 1e4e 	add.w	lr, r4, lr, lsl #5
d0040f82:	eb0a 1c8c 	add.w	ip, sl, ip, lsl #6
d0040f86:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0040f8a:	eb02 0e4e 	add.w	lr, r2, lr, lsl #1
d0040f8e:	449c      	add	ip, r3
d0040f90:	e011      	b.n	d0040fb6 <fillTriangleFlat+0x712>
d0040f92:	ee07 1a90 	vmov	s15, r1
d0040f96:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0040f9a:	eb0e 0e41 	add.w	lr, lr, r1, lsl #1
d0040f9e:	440c      	add	r4, r1
d0040fa0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040fa4:	eb0c 1c83 	add.w	ip, ip, r3, lsl #6
d0040fa8:	eea7 7aa4 	vfma.f32	s14, s15, s9
d0040fac:	eea7 5a84 	vfma.f32	s10, s15, s8
d0040fb0:	42b4      	cmp	r4, r6
d0040fb2:	f73f aebc 	bgt.w	d0040d2e <fillTriangleFlat+0x48a>
d0040fb6:	eba6 0804 	sub.w	r8, r6, r4
d0040fba:	eeb4 7acd 	vcmpe.f32	s14, s26
d0040fbe:	f108 0101 	add.w	r1, r8, #1
d0040fc2:	2930      	cmp	r1, #48	; 0x30
d0040fc4:	bfa8      	it	ge
d0040fc6:	2130      	movge	r1, #48	; 0x30
d0040fc8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040fcc:	d9e1      	bls.n	d0040f92 <fillTriangleFlat+0x6ee>
d0040fce:	f1b8 0f00 	cmp.w	r8, #0
d0040fd2:	eec5 2a07 	vdiv.f32	s5, s10, s14
d0040fd6:	dd4d      	ble.n	d0041074 <fillTriangleFlat+0x7d0>
d0040fd8:	1e4b      	subs	r3, r1, #1
d0040fda:	ee07 3a90 	vmov	s15, r3
d0040fde:	eef0 1a47 	vmov.f32	s3, s14
d0040fe2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040fe6:	eee7 1aa4 	vfma.f32	s3, s15, s9
d0040fea:	eef4 1acd 	vcmpe.f32	s3, s26
d0040fee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040ff2:	dd40      	ble.n	d0041076 <fillTriangleFlat+0x7d2>
d0040ff4:	eeb0 ea45 	vmov.f32	s28, s10
d0040ff8:	eea7 ea84 	vfma.f32	s28, s15, s8
d0040ffc:	ee8e 8a21 	vdiv.f32	s16, s28, s3
d0041000:	ee38 8a62 	vsub.f32	s16, s16, s5
d0041004:	eec8 1a27 	vdiv.f32	s3, s16, s15
d0041008:	f1ae 0002 	sub.w	r0, lr, #2
d004100c:	2200      	movs	r2, #0
d004100e:	fec2 7a83 	vmaxnm.f32	s15, s5, s6
d0041012:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d0041016:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d004101a:	f830 5f02 	ldrh.w	r5, [r0, #2]!
d004101e:	3201      	adds	r2, #1
d0041020:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0041024:	ea4f 1983 	mov.w	r9, r3, lsl #6
d0041028:	ee72 2aa1 	vadd.f32	s5, s5, s3
d004102c:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0041030:	ee17 3a90 	vmov	r3, s15
d0041034:	b29b      	uxth	r3, r3
d0041036:	429d      	cmp	r5, r3
d0041038:	d902      	bls.n	d0041040 <fillTriangleFlat+0x79c>
d004103a:	8003      	strh	r3, [r0, #0]
d004103c:	f80c 7009 	strb.w	r7, [ip, r9]
d0041040:	428a      	cmp	r2, r1
d0041042:	dbe4      	blt.n	d004100e <fillTriangleFlat+0x76a>
d0041044:	f1b8 0f00 	cmp.w	r8, #0
d0041048:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d004104c:	ea4f 0241 	mov.w	r2, r1, lsl #1
d0041050:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0041054:	bfbc      	itt	lt
d0041056:	2202      	movlt	r2, #2
d0041058:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d004105c:	4496      	add	lr, r2
d004105e:	449c      	add	ip, r3
d0041060:	ee07 1a90 	vmov	s15, r1
d0041064:	440c      	add	r4, r1
d0041066:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004106a:	eea7 7aa4 	vfma.f32	s14, s15, s9
d004106e:	eea7 5a84 	vfma.f32	s10, s15, s8
d0041072:	e79d      	b.n	d0040fb0 <fillTriangleFlat+0x70c>
d0041074:	d1f4      	bne.n	d0041060 <fillTriangleFlat+0x7bc>
d0041076:	eef0 1a43 	vmov.f32	s3, s6
d004107a:	e7c5      	b.n	d0041008 <fillTriangleFlat+0x764>
d004107c:	eeb0 4a43 	vmov.f32	s8, s6
d0041080:	eef0 4a43 	vmov.f32	s9, s6
d0041084:	e774      	b.n	d0040f70 <fillTriangleFlat+0x6cc>
d0041086:	eeb0 aa42 	vmov.f32	s20, s4
d004108a:	eef0 2a42 	vmov.f32	s5, s4
d004108e:	e6c5      	b.n	d0040e1c <fillTriangleFlat+0x578>
d0041090:	ed9f fa0a 	vldr	s30, [pc, #40]	; d00410bc <fillTriangleFlat+0x818>
d0041094:	eef0 fa4f 	vmov.f32	s31, s30
d0041098:	eef0 ea4f 	vmov.f32	s29, s30
d004109c:	e5d8      	b.n	d0040c50 <fillTriangleFlat+0x3ac>
d004109e:	eddf 7a07 	vldr	s15, [pc, #28]	; d00410bc <fillTriangleFlat+0x818>
d00410a2:	eef0 da67 	vmov.f32	s27, s15
d00410a6:	eef0 9a67 	vmov.f32	s19, s15
d00410aa:	eeb0 ba67 	vmov.f32	s22, s15
d00410ae:	e5cf      	b.n	d0040c50 <fillTriangleFlat+0x3ac>
d00410b0:	d00e1ca4 	.word	0xd00e1ca4
d00410b4:	d00e7cc0 	.word	0xd00e7cc0
d00410b8:	38d1b717 	.word	0x38d1b717
d00410bc:	00000000 	.word	0x00000000

d00410c0 <fillTriangleDitherBayer>:
d00410c0:	eddf 7ae7 	vldr	s15, [pc, #924]	; d0041460 <fillTriangleDitherBayer+0x3a0>
d00410c4:	eef4 0ae7 	vcmpe.f32	s1, s15
d00410c8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00410cc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00410d0:	eeb4 1ae7 	vcmpe.f32	s2, s15
d00410d4:	ed2d 8b10 	vpush	{d8-d15}
d00410d8:	b08f      	sub	sp, #60	; 0x3c
d00410da:	9202      	str	r2, [sp, #8]
d00410dc:	bf94      	ite	ls
d00410de:	2201      	movls	r2, #1
d00410e0:	2200      	movhi	r2, #0
d00410e2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00410e6:	9303      	str	r3, [sp, #12]
d00410e8:	f8bd 40a8 	ldrh.w	r4, [sp, #168]	; 0xa8
d00410ec:	bf98      	it	ls
d00410ee:	f042 0201 	orrls.w	r2, r2, #1
d00410f2:	f89d 30b4 	ldrb.w	r3, [sp, #180]	; 0xb4
d00410f6:	e9cd 0100 	strd	r0, r1, [sp]
d00410fa:	f8bd 00ac 	ldrh.w	r0, [sp, #172]	; 0xac
d00410fe:	f8bd 10b0 	ldrh.w	r1, [sp, #176]	; 0xb0
d0041102:	2a00      	cmp	r2, #0
d0041104:	f040 8187 	bne.w	d0041416 <fillTriangleDitherBayer+0x356>
d0041108:	eeb4 0a67 	vcmp.f32	s0, s15
d004110c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041110:	f240 8181 	bls.w	d0041416 <fillTriangleDitherBayer+0x356>
d0041114:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0041118:	eddf 7ad3 	vldr	s15, [pc, #844]	; d0041468 <fillTriangleDitherBayer+0x3a8>
d004111c:	eeb1 6a04 	vmov.f32	s12, #20	; 0x40a00000  5.0
d0041120:	ee07 4a10 	vmov	s14, r4
d0041124:	fec1 7aa7 	vmaxnm.f32	s15, s3, s15
d0041128:	ee86 3a81 	vdiv.f32	s6, s13, s2
d004112c:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d0041130:	eec6 1a80 	vdiv.f32	s3, s13, s0
d0041134:	ee86 0aa0 	vdiv.f32	s0, s13, s1
d0041138:	eefd 6ae7 	vcvt.s32.f32	s13, s15
d004113c:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0041140:	ee16 2a90 	vmov	r2, s13
d0041144:	ee06 0a90 	vmov	s13, r0
d0041148:	eef8 5a66 	vcvt.f32.u32	s11, s13
d004114c:	ee06 1a90 	vmov	s13, r1
d0041150:	1c51      	adds	r1, r2, #1
d0041152:	ee27 7a21 	vmul.f32	s14, s14, s3
d0041156:	eef8 6a66 	vcvt.f32.u32	s13, s13
d004115a:	2905      	cmp	r1, #5
d004115c:	bfa8      	it	ge
d004115e:	2105      	movge	r1, #5
d0041160:	2a04      	cmp	r2, #4
d0041162:	ee65 5a80 	vmul.f32	s11, s11, s0
d0041166:	ee26 2a83 	vmul.f32	s4, s13, s6
d004116a:	f300 8457 	bgt.w	d0041a1c <fillTriangleDitherBayer+0x95c>
d004116e:	f003 030f 	and.w	r3, r3, #15
d0041172:	2a03      	cmp	r2, #3
d0041174:	f103 0320 	add.w	r3, r3, #32
d0041178:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d004117c:	fa5f fa80 	uxtb.w	sl, r0
d0041180:	f300 844e 	bgt.w	d0041a20 <fillTriangleDitherBayer+0x960>
d0041184:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d0041188:	b2db      	uxtb	r3, r3
d004118a:	9304      	str	r3, [sp, #16]
d004118c:	eddd 6a01 	vldr	s13, [sp, #4]
d0041190:	eeb8 5ae6 	vcvt.f32.s32	s10, s13
d0041194:	eddd 6a03 	vldr	s13, [sp, #12]
d0041198:	eef8 3ae6 	vcvt.f32.s32	s7, s13
d004119c:	eddd 6a00 	vldr	s13, [sp]
d00411a0:	eeb8 6ae6 	vcvt.f32.s32	s12, s13
d00411a4:	eddd 6a02 	vldr	s13, [sp, #8]
d00411a8:	eeb4 5ae3 	vcmpe.f32	s10, s7
d00411ac:	eef8 4ae6 	vcvt.f32.s32	s9, s13
d00411b0:	eddd 6a28 	vldr	s13, [sp, #160]	; 0xa0
d00411b4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00411b8:	eeb8 1ae6 	vcvt.f32.s32	s2, s13
d00411bc:	eddd 6a29 	vldr	s13, [sp, #164]	; 0xa4
d00411c0:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d00411c4:	f300 812c 	bgt.w	d0041420 <fillTriangleDitherBayer+0x360>
d00411c8:	eeb4 5ae6 	vcmpe.f32	s10, s13
d00411cc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00411d0:	f300 8231 	bgt.w	d0041636 <fillTriangleDitherBayer+0x576>
d00411d4:	eef4 3ae6 	vcmpe.f32	s7, s13
d00411d8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00411dc:	dd17      	ble.n	d004120e <fillTriangleDitherBayer+0x14e>
d00411de:	eeb0 8a65 	vmov.f32	s16, s11
d00411e2:	eef0 0a40 	vmov.f32	s1, s0
d00411e6:	eef0 2a63 	vmov.f32	s5, s7
d00411ea:	eeb0 4a64 	vmov.f32	s8, s9
d00411ee:	eef0 5a42 	vmov.f32	s11, s4
d00411f2:	eeb0 0a43 	vmov.f32	s0, s6
d00411f6:	eef0 3a66 	vmov.f32	s7, s13
d00411fa:	eef0 4a41 	vmov.f32	s9, s2
d00411fe:	eeb0 2a48 	vmov.f32	s4, s16
d0041202:	eeb0 3a60 	vmov.f32	s6, s1
d0041206:	eef0 6a62 	vmov.f32	s13, s5
d004120a:	eeb0 1a44 	vmov.f32	s2, s8
d004120e:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d0041212:	ee75 2a04 	vadd.f32	s5, s10, s8
d0041216:	ee36 4a84 	vadd.f32	s8, s13, s8
d004121a:	eefd 2ae2 	vcvt.s32.f32	s5, s5
d004121e:	eebd 4ac4 	vcvt.s32.f32	s8, s8
d0041222:	ee12 3a90 	vmov	r3, s5
d0041226:	ee14 1a10 	vmov	r1, s8
d004122a:	428b      	cmp	r3, r1
d004122c:	f000 80f3 	beq.w	d0041416 <fillTriangleDitherBayer+0x356>
d0041230:	ee76 8ac5 	vsub.f32	s17, s13, s10
d0041234:	eddf 2a8a 	vldr	s5, [pc, #552]	; d0041460 <fillTriangleDitherBayer+0x3a0>
d0041238:	eef4 8ae2 	vcmpe.f32	s17, s5
d004123c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041240:	f240 80e9 	bls.w	d0041416 <fillTriangleDitherBayer+0x356>
d0041244:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0041248:	ee33 9ac5 	vsub.f32	s18, s7, s10
d004124c:	ee71 0a46 	vsub.f32	s1, s2, s12
d0041250:	ee89 4aa8 	vdiv.f32	s8, s19, s17
d0041254:	eeb4 9ae2 	vcmpe.f32	s18, s5
d0041258:	ee33 8a61 	vsub.f32	s16, s6, s3
d004125c:	ee72 8a47 	vsub.f32	s17, s4, s14
d0041260:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041264:	ee60 0a84 	vmul.f32	s1, s1, s8
d0041268:	ee28 8a04 	vmul.f32	s16, s16, s8
d004126c:	ee68 8a84 	vmul.f32	s17, s17, s8
d0041270:	f300 80fe 	bgt.w	d0041470 <fillTriangleDitherBayer+0x3b0>
d0041274:	ee04 2a10 	vmov	s8, r2
d0041278:	ee76 fae3 	vsub.f32	s31, s13, s7
d004127c:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0041280:	eef4 fae2 	vcmpe.f32	s31, s5
d0041284:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0041288:	eeb0 4a67 	vmov.f32	s8, s15
d004128c:	eebe 4ace 	vcvt.s32.f32	s8, s8, #4
d0041290:	ee14 3a10 	vmov	r3, s8
d0041294:	f383 0204 	usat	r2, #4, r3
d0041298:	9201      	str	r2, [sp, #4]
d004129a:	9a04      	ldr	r2, [sp, #16]
d004129c:	4592      	cmp	sl, r2
d004129e:	bf18      	it	ne
d00412a0:	2b00      	cmpne	r3, #0
d00412a2:	bfd4      	ite	le
d00412a4:	2301      	movle	r3, #1
d00412a6:	2300      	movgt	r3, #0
d00412a8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00412ac:	9300      	str	r3, [sp, #0]
d00412ae:	f340 80b2 	ble.w	d0041416 <fillTriangleDitherBayer+0x356>
d00412b2:	ed9f ea6d 	vldr	s28, [pc, #436]	; d0041468 <fillTriangleDitherBayer+0x3a8>
d00412b6:	eef0 9a4e 	vmov.f32	s19, s28
d00412ba:	eeb0 ba4e 	vmov.f32	s22, s28
d00412be:	eef7 2a00 	vmov.f32	s5, #112	; 0x3f800000  1.0
d00412c2:	ed9f 4a67 	vldr	s8, [pc, #412]	; d0041460 <fillTriangleDitherBayer+0x3a0>
d00412c6:	ee31 1a64 	vsub.f32	s2, s2, s9
d00412ca:	ee33 3a40 	vsub.f32	s6, s6, s0
d00412ce:	eec2 7aaf 	vdiv.f32	s15, s5, s31
d00412d2:	eeb4 9ac4 	vcmpe.f32	s18, s8
d00412d6:	ee32 2a65 	vsub.f32	s4, s4, s11
d00412da:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00412de:	ee61 2a27 	vmul.f32	s5, s2, s15
d00412e2:	ee23 3a27 	vmul.f32	s6, s6, s15
d00412e6:	ee22 fa27 	vmul.f32	s30, s4, s15
d00412ea:	edcd 2a09 	vstr	s5, [sp, #36]	; 0x24
d00412ee:	ed8d 3a08 	vstr	s6, [sp, #32]
d00412f2:	f300 80f4 	bgt.w	d00414de <fillTriangleDitherBayer+0x41e>
d00412f6:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d00412fa:	edcd 7a06 	vstr	s15, [sp, #24]
d00412fe:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0041302:	f240 123f 	movw	r2, #319	; 0x13f
d0041306:	9906      	ldr	r1, [sp, #24]
d0041308:	ee17 3a90 	vmov	r3, s15
d004130c:	ea21 7be1 	bic.w	fp, r1, r1, asr #31
d0041310:	3b01      	subs	r3, #1
d0041312:	4293      	cmp	r3, r2
d0041314:	bfa8      	it	ge
d0041316:	4613      	movge	r3, r2
d0041318:	459b      	cmp	fp, r3
d004131a:	dc7c      	bgt.n	d0041416 <fillTriangleDitherBayer+0x356>
d004131c:	ee07 ba90 	vmov	s15, fp
d0041320:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0041324:	3301      	adds	r3, #1
d0041326:	eddd aa09 	vldr	s21, [sp, #36]	; 0x24
d004132a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004132e:	ed9d aa08 	vldr	s20, [sp, #32]
d0041332:	ed9f 1a4b 	vldr	s2, [pc, #300]	; d0041460 <fillTriangleDitherBayer+0x3a0>
d0041336:	ed9f 2a4b 	vldr	s4, [pc, #300]	; d0041464 <fillTriangleDitherBayer+0x3a4>
d004133a:	ee77 7aa6 	vadd.f32	s15, s15, s13
d004133e:	ed9f 3a4a 	vldr	s6, [pc, #296]	; d0041468 <fillTriangleDitherBayer+0x3a8>
d0041342:	9302      	str	r3, [sp, #8]
d0041344:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0041348:	ee77 7ae3 	vsub.f32	s15, s15, s7
d004134c:	eddf 3a47 	vldr	s7, [pc, #284]	; d004146c <fillTriangleDitherBayer+0x3ac>
d0041350:	eea0 6a85 	vfma.f32	s12, s1, s10
d0041354:	eee8 1a05 	vfma.f32	s3, s16, s10
d0041358:	eea8 7a85 	vfma.f32	s14, s17, s10
d004135c:	eeea 4aa7 	vfma.f32	s9, s21, s15
d0041360:	eeaa 0a27 	vfma.f32	s0, s20, s15
d0041364:	eeef 5a27 	vfma.f32	s11, s30, s15
d0041368:	e033      	b.n	d00413d2 <fillTriangleDitherBayer+0x312>
d004136a:	eef0 2a47 	vmov.f32	s5, s14
d004136e:	eef0 9a61 	vmov.f32	s19, s3
d0041372:	eef0 6a46 	vmov.f32	s13, s12
d0041376:	eeb0 9a65 	vmov.f32	s18, s11
d004137a:	eeb0 5a40 	vmov.f32	s10, s0
d004137e:	eeb0 4a64 	vmov.f32	s8, s9
d0041382:	fefa 7a66 	vrintp.f32	s15, s13
d0041386:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004138a:	f240 13df 	movw	r3, #479	; 0x1df
d004138e:	ee17 6a90 	vmov	r6, s15
d0041392:	fefa 7a44 	vrintp.f32	s15, s8
d0041396:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004139a:	3e01      	subs	r6, #1
d004139c:	ee17 0a90 	vmov	r0, s15
d00413a0:	429e      	cmp	r6, r3
d00413a2:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d00413a6:	bfa8      	it	ge
d00413a8:	461e      	movge	r6, r3
d00413aa:	4286      	cmp	r6, r0
d00413ac:	f280 815c 	bge.w	d0041668 <fillTriangleDitherBayer+0x5a8>
d00413b0:	f10b 0b01 	add.w	fp, fp, #1
d00413b4:	9b02      	ldr	r3, [sp, #8]
d00413b6:	ee36 6a20 	vadd.f32	s12, s12, s1
d00413ba:	459b      	cmp	fp, r3
d00413bc:	ee71 1a88 	vadd.f32	s3, s3, s16
d00413c0:	ee37 7a28 	vadd.f32	s14, s14, s17
d00413c4:	ee74 4aaa 	vadd.f32	s9, s9, s21
d00413c8:	ee30 0a0a 	vadd.f32	s0, s0, s20
d00413cc:	ee75 5a8f 	vadd.f32	s11, s11, s30
d00413d0:	d021      	beq.n	d0041416 <fillTriangleDitherBayer+0x356>
d00413d2:	eeb4 6ae4 	vcmpe.f32	s12, s9
d00413d6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00413da:	dcc6      	bgt.n	d004136a <fillTriangleDitherBayer+0x2aa>
d00413dc:	eef0 2a65 	vmov.f32	s5, s11
d00413e0:	eef0 9a40 	vmov.f32	s19, s0
d00413e4:	eef0 6a64 	vmov.f32	s13, s9
d00413e8:	eeb0 9a47 	vmov.f32	s18, s14
d00413ec:	eeb0 5a61 	vmov.f32	s10, s3
d00413f0:	eeb0 4a46 	vmov.f32	s8, s12
d00413f4:	e7c5      	b.n	d0041382 <fillTriangleDitherBayer+0x2c2>
d00413f6:	eddd 6a0a 	vldr	s13, [sp, #40]	; 0x28
d00413fa:	ed9d 5a0b 	vldr	s10, [sp, #44]	; 0x2c
d00413fe:	ed9d 6a0c 	vldr	s12, [sp, #48]	; 0x30
d0041402:	ed9d fa0d 	vldr	s30, [sp, #52]	; 0x34
d0041406:	eddf 7a16 	vldr	s15, [pc, #88]	; d0041460 <fillTriangleDitherBayer+0x3a0>
d004140a:	eef4 fae7 	vcmpe.f32	s31, s15
d004140e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041412:	f73f af74 	bgt.w	d00412fe <fillTriangleDitherBayer+0x23e>
d0041416:	b00f      	add	sp, #60	; 0x3c
d0041418:	ecbd 8b10 	vpop	{d8-d15}
d004141c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0041420:	eef4 3ae6 	vcmpe.f32	s7, s13
d0041424:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041428:	f340 80ec 	ble.w	d0041604 <fillTriangleDitherBayer+0x544>
d004142c:	eeb0 8a42 	vmov.f32	s16, s4
d0041430:	eef0 0a43 	vmov.f32	s1, s6
d0041434:	eef0 2a66 	vmov.f32	s5, s13
d0041438:	eeb0 4a41 	vmov.f32	s8, s2
d004143c:	eeb0 2a47 	vmov.f32	s4, s14
d0041440:	eeb0 3a61 	vmov.f32	s6, s3
d0041444:	eef0 6a45 	vmov.f32	s13, s10
d0041448:	eeb0 1a46 	vmov.f32	s2, s12
d004144c:	eeb0 7a48 	vmov.f32	s14, s16
d0041450:	eef0 1a60 	vmov.f32	s3, s1
d0041454:	eeb0 5a62 	vmov.f32	s10, s5
d0041458:	eeb0 6a44 	vmov.f32	s12, s8
d004145c:	e6d7      	b.n	d004120e <fillTriangleDitherBayer+0x14e>
d004145e:	bf00      	nop
d0041460:	38d1b717 	.word	0x38d1b717
d0041464:	33d6bf95 	.word	0x33d6bf95
d0041468:	00000000 	.word	0x00000000
d004146c:	477fff00 	.word	0x477fff00
d0041470:	ee04 2a10 	vmov	s8, r2
d0041474:	ee89 aa89 	vdiv.f32	s20, s19, s18
d0041478:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d004147c:	ee74 aac6 	vsub.f32	s21, s9, s12
d0041480:	ee76 fae3 	vsub.f32	s31, s13, s7
d0041484:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0041488:	ee70 9a61 	vsub.f32	s19, s0, s3
d004148c:	eef4 fae2 	vcmpe.f32	s31, s5
d0041490:	eeb0 4a67 	vmov.f32	s8, s15
d0041494:	ee35 eac7 	vsub.f32	s28, s11, s14
d0041498:	eebe 4ace 	vcvt.s32.f32	s8, s8, #4
d004149c:	ee6a 7a8a 	vmul.f32	s15, s21, s20
d00414a0:	ee14 3a10 	vmov	r3, s8
d00414a4:	ee2e ea0a 	vmul.f32	s28, s28, s20
d00414a8:	f383 0204 	usat	r2, #4, r3
d00414ac:	eeb0 ba67 	vmov.f32	s22, s15
d00414b0:	ee69 7a8a 	vmul.f32	s15, s19, s20
d00414b4:	9201      	str	r2, [sp, #4]
d00414b6:	9a04      	ldr	r2, [sp, #16]
d00414b8:	eef0 9a67 	vmov.f32	s19, s15
d00414bc:	4592      	cmp	sl, r2
d00414be:	bf18      	it	ne
d00414c0:	2b00      	cmpne	r3, #0
d00414c2:	bfd4      	ite	le
d00414c4:	2301      	movle	r3, #1
d00414c6:	2300      	movgt	r3, #0
d00414c8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00414cc:	9300      	str	r3, [sp, #0]
d00414ce:	f73f aef6 	bgt.w	d00412be <fillTriangleDitherBayer+0x1fe>
d00414d2:	ed1f fa1b 	vldr	s30, [pc, #-108]	; d0041468 <fillTriangleDitherBayer+0x3a8>
d00414d6:	ed8d fa08 	vstr	s30, [sp, #32]
d00414da:	ed8d fa09 	vstr	s30, [sp, #36]	; 0x24
d00414de:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d00414e2:	f240 123f 	movw	r2, #319	; 0x13f
d00414e6:	ee17 3a90 	vmov	r3, s15
d00414ea:	edcd 7a06 	vstr	s15, [sp, #24]
d00414ee:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d00414f2:	3b01      	subs	r3, #1
d00414f4:	ee17 ba90 	vmov	fp, s15
d00414f8:	4293      	cmp	r3, r2
d00414fa:	ea2b 7beb 	bic.w	fp, fp, fp, asr #31
d00414fe:	bfa8      	it	ge
d0041500:	4613      	movge	r3, r2
d0041502:	455b      	cmp	r3, fp
d0041504:	f6ff af7f 	blt.w	d0041406 <fillTriangleDitherBayer+0x346>
d0041508:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004150c:	3301      	adds	r3, #1
d004150e:	eeb0 aa46 	vmov.f32	s20, s12
d0041512:	ed1f da2c 	vldr	s26, [pc, #-176]	; d0041464 <fillTriangleDitherBayer+0x3a4>
d0041516:	eef0 aa46 	vmov.f32	s21, s12
d004151a:	ed1f 3a2d 	vldr	s6, [pc, #-180]	; d0041468 <fillTriangleDitherBayer+0x3a8>
d004151e:	ee37 4ac5 	vsub.f32	s8, s15, s10
d0041522:	ee07 ba90 	vmov	s15, fp
d0041526:	eef0 ca61 	vmov.f32	s25, s3
d004152a:	ed1f 2a30 	vldr	s4, [pc, #-192]	; d004146c <fillTriangleDitherBayer+0x3ac>
d004152e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041532:	9302      	str	r3, [sp, #8]
d0041534:	eeb0 ca47 	vmov.f32	s24, s14
d0041538:	edcd 6a0a 	vstr	s13, [sp, #40]	; 0x28
d004153c:	eef0 da4b 	vmov.f32	s27, s22
d0041540:	ed8d 5a0b 	vstr	s10, [sp, #44]	; 0x2c
d0041544:	ee77 7a84 	vadd.f32	s15, s15, s8
d0041548:	ed8d 6a0c 	vstr	s12, [sp, #48]	; 0x30
d004154c:	eef0 ba61 	vmov.f32	s23, s3
d0041550:	ed8d fa0d 	vstr	s30, [sp, #52]	; 0x34
d0041554:	eef0 ea69 	vmov.f32	s29, s19
d0041558:	eea7 aa8b 	vfma.f32	s20, s15, s22
d004155c:	eeb0 ba47 	vmov.f32	s22, s14
d0041560:	eee0 aaa7 	vfma.f32	s21, s1, s15
d0041564:	eee8 ca27 	vfma.f32	s25, s16, s15
d0041568:	eea8 caa7 	vfma.f32	s24, s17, s15
d004156c:	eee7 baa9 	vfma.f32	s23, s15, s19
d0041570:	eea7 ba8e 	vfma.f32	s22, s15, s28
d0041574:	e034      	b.n	d00415e0 <fillTriangleDitherBayer+0x520>
d0041576:	eef0 2a4c 	vmov.f32	s5, s24
d004157a:	eeb0 4a6c 	vmov.f32	s8, s25
d004157e:	eef0 7a6a 	vmov.f32	s15, s21
d0041582:	eeb0 5a4b 	vmov.f32	s10, s22
d0041586:	eef0 6a6b 	vmov.f32	s13, s23
d004158a:	eeb0 6a4a 	vmov.f32	s12, s20
d004158e:	feba 1a67 	vrintp.f32	s2, s15
d0041592:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d0041596:	feba 9a46 	vrintp.f32	s18, s12
d004159a:	f240 13df 	movw	r3, #479	; 0x1df
d004159e:	ee11 6a10 	vmov	r6, s2
d00415a2:	eebd 1ac9 	vcvt.s32.f32	s2, s18
d00415a6:	3e01      	subs	r6, #1
d00415a8:	ee11 0a10 	vmov	r0, s2
d00415ac:	429e      	cmp	r6, r3
d00415ae:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d00415b2:	bfa8      	it	ge
d00415b4:	461e      	movge	r6, r3
d00415b6:	4286      	cmp	r6, r0
d00415b8:	f280 813e 	bge.w	d0041838 <fillTriangleDitherBayer+0x778>
d00415bc:	f10b 0b01 	add.w	fp, fp, #1
d00415c0:	9b02      	ldr	r3, [sp, #8]
d00415c2:	ee7a aaa0 	vadd.f32	s21, s21, s1
d00415c6:	459b      	cmp	fp, r3
d00415c8:	ee7c ca88 	vadd.f32	s25, s25, s16
d00415cc:	ee3c ca28 	vadd.f32	s24, s24, s17
d00415d0:	ee3a aa2d 	vadd.f32	s20, s20, s27
d00415d4:	ee7b baae 	vadd.f32	s23, s23, s29
d00415d8:	ee3b ba0e 	vadd.f32	s22, s22, s28
d00415dc:	f43f af0b 	beq.w	d00413f6 <fillTriangleDitherBayer+0x336>
d00415e0:	eef4 aaca 	vcmpe.f32	s21, s20
d00415e4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00415e8:	dcc5      	bgt.n	d0041576 <fillTriangleDitherBayer+0x4b6>
d00415ea:	eef0 2a4b 	vmov.f32	s5, s22
d00415ee:	eeb0 4a6b 	vmov.f32	s8, s23
d00415f2:	eef0 7a4a 	vmov.f32	s15, s20
d00415f6:	eeb0 5a4c 	vmov.f32	s10, s24
d00415fa:	eef0 6a6c 	vmov.f32	s13, s25
d00415fe:	eeb0 6a6a 	vmov.f32	s12, s21
d0041602:	e7c4      	b.n	d004158e <fillTriangleDitherBayer+0x4ce>
d0041604:	eeb0 8a47 	vmov.f32	s16, s14
d0041608:	eef0 0a61 	vmov.f32	s1, s3
d004160c:	eef0 2a45 	vmov.f32	s5, s10
d0041610:	eeb0 4a46 	vmov.f32	s8, s12
d0041614:	eeb0 7a65 	vmov.f32	s14, s11
d0041618:	eef0 1a40 	vmov.f32	s3, s0
d004161c:	eeb0 5a63 	vmov.f32	s10, s7
d0041620:	eeb0 6a64 	vmov.f32	s12, s9
d0041624:	eef0 5a48 	vmov.f32	s11, s16
d0041628:	eeb0 0a60 	vmov.f32	s0, s1
d004162c:	eef0 3a62 	vmov.f32	s7, s5
d0041630:	eef0 4a44 	vmov.f32	s9, s8
d0041634:	e5ce      	b.n	d00411d4 <fillTriangleDitherBayer+0x114>
d0041636:	eeb0 8a47 	vmov.f32	s16, s14
d004163a:	eef0 0a61 	vmov.f32	s1, s3
d004163e:	eef0 2a45 	vmov.f32	s5, s10
d0041642:	eeb0 4a46 	vmov.f32	s8, s12
d0041646:	eeb0 7a42 	vmov.f32	s14, s4
d004164a:	eef0 1a43 	vmov.f32	s3, s6
d004164e:	eeb0 5a66 	vmov.f32	s10, s13
d0041652:	eeb0 6a41 	vmov.f32	s12, s2
d0041656:	eeb0 2a48 	vmov.f32	s4, s16
d004165a:	eeb0 3a60 	vmov.f32	s6, s1
d004165e:	eef0 6a62 	vmov.f32	s13, s5
d0041662:	eeb0 1a44 	vmov.f32	s2, s8
d0041666:	e5b5      	b.n	d00411d4 <fillTriangleDitherBayer+0x114>
d0041668:	ee76 6ac4 	vsub.f32	s13, s13, s8
d004166c:	eef4 6ac1 	vcmpe.f32	s13, s2
d0041670:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041674:	f340 81d8 	ble.w	d0041a28 <fillTriangleDitherBayer+0x968>
d0041678:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d004167c:	ee79 9ac5 	vsub.f32	s19, s19, s10
d0041680:	ee72 2ac9 	vsub.f32	s5, s5, s18
d0041684:	ee87 baa6 	vdiv.f32	s22, s15, s13
d0041688:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d004168c:	ee37 4ac4 	vsub.f32	s8, s15, s8
d0041690:	ee07 0a90 	vmov	s15, r0
d0041694:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041698:	ee77 7a84 	vadd.f32	s15, s15, s8
d004169c:	ee69 9a8b 	vmul.f32	s19, s19, s22
d00416a0:	ee22 ba8b 	vmul.f32	s22, s5, s22
d00416a4:	eea7 5aa9 	vfma.f32	s10, s15, s19
d00416a8:	eea7 9a8b 	vfma.f32	s18, s15, s22
d00416ac:	ebcb 190b 	rsb	r9, fp, fp, lsl #4
d00416b0:	49d6      	ldr	r1, [pc, #856]	; (d0041a0c <fillTriangleDitherBayer+0x94c>)
d00416b2:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d00416b6:	4cd6      	ldr	r4, [pc, #856]	; (d0041a10 <fillTriangleDitherBayer+0x950>)
d00416b8:	eb00 1249 	add.w	r2, r0, r9, lsl #5
d00416bc:	6809      	ldr	r1, [r1, #0]
d00416be:	eb0b 1383 	add.w	r3, fp, r3, lsl #6
d00416c2:	f8cd b018 	str.w	fp, [sp, #24]
d00416c6:	eb04 0942 	add.w	r9, r4, r2, lsl #1
d00416ca:	f00b 0203 	and.w	r2, fp, #3
d00416ce:	eb01 0c03 	add.w	ip, r1, r3
d00416d2:	eef6 2a00 	vmov.f32	s5, #96	; 0x3f000000  0.5
d00416d6:	4613      	mov	r3, r2
d00416d8:	4ace      	ldr	r2, [pc, #824]	; (d0041a14 <fillTriangleDitherBayer+0x954>)
d00416da:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d00416de:	469b      	mov	fp, r3
d00416e0:	e010      	b.n	d0041704 <fillTriangleDitherBayer+0x644>
d00416e2:	ee07 3a90 	vmov	s15, r3
d00416e6:	4418      	add	r0, r3
d00416e8:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d00416ec:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00416f0:	42b0      	cmp	r0, r6
d00416f2:	eb09 0943 	add.w	r9, r9, r3, lsl #1
d00416f6:	eb0c 1c82 	add.w	ip, ip, r2, lsl #6
d00416fa:	eea7 5aa9 	vfma.f32	s10, s15, s19
d00416fe:	eea7 9a8b 	vfma.f32	s18, s15, s22
d0041702:	dc72      	bgt.n	d00417ea <fillTriangleDitherBayer+0x72a>
d0041704:	eba6 0800 	sub.w	r8, r6, r0
d0041708:	eeb4 5ac2 	vcmpe.f32	s10, s4
d004170c:	f108 0301 	add.w	r3, r8, #1
d0041710:	2b30      	cmp	r3, #48	; 0x30
d0041712:	bfa8      	it	ge
d0041714:	2330      	movge	r3, #48	; 0x30
d0041716:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004171a:	d9e2      	bls.n	d00416e2 <fillTriangleDitherBayer+0x622>
d004171c:	f1b8 0f00 	cmp.w	r8, #0
d0041720:	eec9 6a05 	vdiv.f32	s13, s18, s10
d0041724:	dd64      	ble.n	d00417f0 <fillTriangleDitherBayer+0x730>
d0041726:	1e5a      	subs	r2, r3, #1
d0041728:	ee07 2a90 	vmov	s15, r2
d004172c:	eeb0 4a45 	vmov.f32	s8, s10
d0041730:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041734:	eea7 4aa9 	vfma.f32	s8, s15, s19
d0041738:	eeb4 4ac2 	vcmpe.f32	s8, s4
d004173c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041740:	dd57      	ble.n	d00417f2 <fillTriangleDitherBayer+0x732>
d0041742:	eeb0 ca49 	vmov.f32	s24, s18
d0041746:	9a00      	ldr	r2, [sp, #0]
d0041748:	eea7 ca8b 	vfma.f32	s24, s15, s22
d004174c:	eecc ba04 	vdiv.f32	s23, s24, s8
d0041750:	ee7b bae6 	vsub.f32	s23, s23, s13
d0041754:	ee8b 4aa7 	vdiv.f32	s8, s23, s15
d0041758:	2a00      	cmp	r2, #0
d004175a:	d14f      	bne.n	d00417fc <fillTriangleDitherBayer+0x73c>
d004175c:	f8cd 800c 	str.w	r8, [sp, #12]
d0041760:	f1a9 0702 	sub.w	r7, r9, #2
d0041764:	9605      	str	r6, [sp, #20]
d0041766:	f8dd 8004 	ldr.w	r8, [sp, #4]
d004176a:	9e04      	ldr	r6, [sp, #16]
d004176c:	fec6 7a83 	vmaxnm.f32	s15, s13, s6
d0041770:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d0041774:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0041778:	f837 ef02 	ldrh.w	lr, [r7, #2]!
d004177c:	1885      	adds	r5, r0, r2
d004177e:	eb02 0482 	add.w	r4, r2, r2, lsl #2
d0041782:	ee76 6a84 	vadd.f32	s13, s13, s8
d0041786:	3201      	adds	r2, #1
d0041788:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004178c:	f005 0503 	and.w	r5, r5, #3
d0041790:	01a4      	lsls	r4, r4, #6
d0041792:	ee17 1a90 	vmov	r1, s15
d0041796:	b289      	uxth	r1, r1
d0041798:	458e      	cmp	lr, r1
d004179a:	d908      	bls.n	d00417ae <fillTriangleDitherBayer+0x6ee>
d004179c:	f81b 5005 	ldrb.w	r5, [fp, r5]
d00417a0:	8039      	strh	r1, [r7, #0]
d00417a2:	45a8      	cmp	r8, r5
d00417a4:	bfd4      	ite	le
d00417a6:	4655      	movle	r5, sl
d00417a8:	4635      	movgt	r5, r6
d00417aa:	f80c 5004 	strb.w	r5, [ip, r4]
d00417ae:	4293      	cmp	r3, r2
d00417b0:	dcdc      	bgt.n	d004176c <fillTriangleDitherBayer+0x6ac>
d00417b2:	f8dd 800c 	ldr.w	r8, [sp, #12]
d00417b6:	9e05      	ldr	r6, [sp, #20]
d00417b8:	f1b8 0f00 	cmp.w	r8, #0
d00417bc:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d00417c0:	ea4f 0143 	mov.w	r1, r3, lsl #1
d00417c4:	ea4f 1282 	mov.w	r2, r2, lsl #6
d00417c8:	bfbc      	itt	lt
d00417ca:	2102      	movlt	r1, #2
d00417cc:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d00417d0:	4489      	add	r9, r1
d00417d2:	4494      	add	ip, r2
d00417d4:	ee07 3a90 	vmov	s15, r3
d00417d8:	4418      	add	r0, r3
d00417da:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00417de:	42b0      	cmp	r0, r6
d00417e0:	eea7 5aa9 	vfma.f32	s10, s15, s19
d00417e4:	eea7 9a8b 	vfma.f32	s18, s15, s22
d00417e8:	dd8c      	ble.n	d0041704 <fillTriangleDitherBayer+0x644>
d00417ea:	f8dd b018 	ldr.w	fp, [sp, #24]
d00417ee:	e5df      	b.n	d00413b0 <fillTriangleDitherBayer+0x2f0>
d00417f0:	d1f0      	bne.n	d00417d4 <fillTriangleDitherBayer+0x714>
d00417f2:	9a00      	ldr	r2, [sp, #0]
d00417f4:	eeb0 4a43 	vmov.f32	s8, s6
d00417f8:	2a00      	cmp	r2, #0
d00417fa:	d0af      	beq.n	d004175c <fillTriangleDitherBayer+0x69c>
d00417fc:	f1a9 0502 	sub.w	r5, r9, #2
d0041800:	2200      	movs	r2, #0
d0041802:	fec6 7a83 	vmaxnm.f32	s15, s13, s6
d0041806:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d004180a:	ee77 7aa2 	vadd.f32	s15, s15, s5
d004180e:	eb02 0182 	add.w	r1, r2, r2, lsl #2
d0041812:	f835 7f02 	ldrh.w	r7, [r5, #2]!
d0041816:	ee76 6a84 	vadd.f32	s13, s13, s8
d004181a:	018c      	lsls	r4, r1, #6
d004181c:	3201      	adds	r2, #1
d004181e:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0041822:	ee17 1a90 	vmov	r1, s15
d0041826:	b289      	uxth	r1, r1
d0041828:	428f      	cmp	r7, r1
d004182a:	d902      	bls.n	d0041832 <fillTriangleDitherBayer+0x772>
d004182c:	8029      	strh	r1, [r5, #0]
d004182e:	f80c a004 	strb.w	sl, [ip, r4]
d0041832:	4293      	cmp	r3, r2
d0041834:	dce5      	bgt.n	d0041802 <fillTriangleDitherBayer+0x742>
d0041836:	e7bf      	b.n	d00417b8 <fillTriangleDitherBayer+0x6f8>
d0041838:	ee77 7ac6 	vsub.f32	s15, s15, s12
d004183c:	ed9f 1a76 	vldr	s2, [pc, #472]	; d0041a18 <fillTriangleDitherBayer+0x958>
d0041840:	eef4 7ac1 	vcmpe.f32	s15, s2
d0041844:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041848:	f340 80f3 	ble.w	d0041a32 <fillTriangleDitherBayer+0x972>
d004184c:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d0041850:	ee34 4a66 	vsub.f32	s8, s8, s13
d0041854:	ee72 2ac5 	vsub.f32	s5, s5, s10
d0041858:	ee89 1a27 	vdiv.f32	s2, s18, s15
d004185c:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0041860:	ee37 6ac6 	vsub.f32	s12, s15, s12
d0041864:	ee07 0a90 	vmov	s15, r0
d0041868:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004186c:	ee77 7a86 	vadd.f32	s15, s15, s12
d0041870:	ee24 4a01 	vmul.f32	s8, s8, s2
d0041874:	ee62 2a81 	vmul.f32	s5, s5, s2
d0041878:	eee7 6a84 	vfma.f32	s13, s15, s8
d004187c:	eea7 5aa2 	vfma.f32	s10, s15, s5
d0041880:	ebcb 190b 	rsb	r9, fp, fp, lsl #4
d0041884:	4961      	ldr	r1, [pc, #388]	; (d0041a0c <fillTriangleDitherBayer+0x94c>)
d0041886:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d004188a:	4c61      	ldr	r4, [pc, #388]	; (d0041a10 <fillTriangleDitherBayer+0x950>)
d004188c:	eb00 1249 	add.w	r2, r0, r9, lsl #5
d0041890:	6809      	ldr	r1, [r1, #0]
d0041892:	eb0b 1383 	add.w	r3, fp, r3, lsl #6
d0041896:	f8cd b01c 	str.w	fp, [sp, #28]
d004189a:	eb04 0942 	add.w	r9, r4, r2, lsl #1
d004189e:	f00b 0203 	and.w	r2, fp, #3
d00418a2:	eb01 0c03 	add.w	ip, r1, r3
d00418a6:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d00418aa:	4613      	mov	r3, r2
d00418ac:	4a59      	ldr	r2, [pc, #356]	; (d0041a14 <fillTriangleDitherBayer+0x954>)
d00418ae:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d00418b2:	469b      	mov	fp, r3
d00418b4:	e010      	b.n	d00418d8 <fillTriangleDitherBayer+0x818>
d00418b6:	ee07 2a90 	vmov	s15, r2
d00418ba:	4410      	add	r0, r2
d00418bc:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d00418c0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00418c4:	42b0      	cmp	r0, r6
d00418c6:	eb09 0942 	add.w	r9, r9, r2, lsl #1
d00418ca:	eb0c 1c83 	add.w	ip, ip, r3, lsl #6
d00418ce:	eee7 6a84 	vfma.f32	s13, s15, s8
d00418d2:	eea7 5aa2 	vfma.f32	s10, s15, s5
d00418d6:	dc72      	bgt.n	d00419be <fillTriangleDitherBayer+0x8fe>
d00418d8:	eba6 0800 	sub.w	r8, r6, r0
d00418dc:	eef4 6acd 	vcmpe.f32	s13, s26
d00418e0:	f108 0201 	add.w	r2, r8, #1
d00418e4:	2a30      	cmp	r2, #48	; 0x30
d00418e6:	bfa8      	it	ge
d00418e8:	2230      	movge	r2, #48	; 0x30
d00418ea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00418ee:	d9e2      	bls.n	d00418b6 <fillTriangleDitherBayer+0x7f6>
d00418f0:	f1b8 0f00 	cmp.w	r8, #0
d00418f4:	ee85 1a26 	vdiv.f32	s2, s10, s13
d00418f8:	dd64      	ble.n	d00419c4 <fillTriangleDitherBayer+0x904>
d00418fa:	1e53      	subs	r3, r2, #1
d00418fc:	ee07 3a90 	vmov	s15, r3
d0041900:	eeb0 9a66 	vmov.f32	s18, s13
d0041904:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041908:	eea7 9a84 	vfma.f32	s18, s15, s8
d004190c:	eeb4 9acd 	vcmpe.f32	s18, s26
d0041910:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041914:	dd57      	ble.n	d00419c6 <fillTriangleDitherBayer+0x906>
d0041916:	eeb0 fa45 	vmov.f32	s30, s10
d004191a:	9900      	ldr	r1, [sp, #0]
d004191c:	eea7 faa2 	vfma.f32	s30, s15, s5
d0041920:	eecf 9a09 	vdiv.f32	s19, s30, s18
d0041924:	ee79 9ac1 	vsub.f32	s19, s19, s2
d0041928:	ee89 9aa7 	vdiv.f32	s18, s19, s15
d004192c:	2900      	cmp	r1, #0
d004192e:	d14f      	bne.n	d00419d0 <fillTriangleDitherBayer+0x910>
d0041930:	9603      	str	r6, [sp, #12]
d0041932:	f1a9 0702 	sub.w	r7, r9, #2
d0041936:	f8cd 8014 	str.w	r8, [sp, #20]
d004193a:	9e04      	ldr	r6, [sp, #16]
d004193c:	f8dd 8004 	ldr.w	r8, [sp, #4]
d0041940:	fec1 7a03 	vmaxnm.f32	s15, s2, s6
d0041944:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d0041948:	ee77 7a86 	vadd.f32	s15, s15, s12
d004194c:	f837 ef02 	ldrh.w	lr, [r7, #2]!
d0041950:	1845      	adds	r5, r0, r1
d0041952:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d0041956:	ee31 1a09 	vadd.f32	s2, s2, s18
d004195a:	3101      	adds	r1, #1
d004195c:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0041960:	f005 0503 	and.w	r5, r5, #3
d0041964:	01a4      	lsls	r4, r4, #6
d0041966:	ee17 3a90 	vmov	r3, s15
d004196a:	b29b      	uxth	r3, r3
d004196c:	459e      	cmp	lr, r3
d004196e:	d908      	bls.n	d0041982 <fillTriangleDitherBayer+0x8c2>
d0041970:	f81b 5005 	ldrb.w	r5, [fp, r5]
d0041974:	803b      	strh	r3, [r7, #0]
d0041976:	45a8      	cmp	r8, r5
d0041978:	bfcc      	ite	gt
d004197a:	4635      	movgt	r5, r6
d004197c:	4655      	movle	r5, sl
d004197e:	f80c 5004 	strb.w	r5, [ip, r4]
d0041982:	428a      	cmp	r2, r1
d0041984:	dcdc      	bgt.n	d0041940 <fillTriangleDitherBayer+0x880>
d0041986:	9e03      	ldr	r6, [sp, #12]
d0041988:	f8dd 8014 	ldr.w	r8, [sp, #20]
d004198c:	f1b8 0f00 	cmp.w	r8, #0
d0041990:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0041994:	ea4f 0142 	mov.w	r1, r2, lsl #1
d0041998:	ea4f 1383 	mov.w	r3, r3, lsl #6
d004199c:	bfbc      	itt	lt
d004199e:	2102      	movlt	r1, #2
d00419a0:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d00419a4:	4489      	add	r9, r1
d00419a6:	449c      	add	ip, r3
d00419a8:	ee07 2a90 	vmov	s15, r2
d00419ac:	4410      	add	r0, r2
d00419ae:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00419b2:	42b0      	cmp	r0, r6
d00419b4:	eee7 6a84 	vfma.f32	s13, s15, s8
d00419b8:	eea7 5aa2 	vfma.f32	s10, s15, s5
d00419bc:	dd8c      	ble.n	d00418d8 <fillTriangleDitherBayer+0x818>
d00419be:	f8dd b01c 	ldr.w	fp, [sp, #28]
d00419c2:	e5fb      	b.n	d00415bc <fillTriangleDitherBayer+0x4fc>
d00419c4:	d1f0      	bne.n	d00419a8 <fillTriangleDitherBayer+0x8e8>
d00419c6:	9900      	ldr	r1, [sp, #0]
d00419c8:	eeb0 9a43 	vmov.f32	s18, s6
d00419cc:	2900      	cmp	r1, #0
d00419ce:	d0af      	beq.n	d0041930 <fillTriangleDitherBayer+0x870>
d00419d0:	f1a9 0502 	sub.w	r5, r9, #2
d00419d4:	2100      	movs	r1, #0
d00419d6:	fec1 7a03 	vmaxnm.f32	s15, s2, s6
d00419da:	fec7 7ac2 	vminnm.f32	s15, s15, s4
d00419de:	ee77 7a86 	vadd.f32	s15, s15, s12
d00419e2:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d00419e6:	f835 7f02 	ldrh.w	r7, [r5, #2]!
d00419ea:	ee31 1a09 	vadd.f32	s2, s2, s18
d00419ee:	019c      	lsls	r4, r3, #6
d00419f0:	3101      	adds	r1, #1
d00419f2:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00419f6:	ee17 3a90 	vmov	r3, s15
d00419fa:	b29b      	uxth	r3, r3
d00419fc:	429f      	cmp	r7, r3
d00419fe:	d902      	bls.n	d0041a06 <fillTriangleDitherBayer+0x946>
d0041a00:	802b      	strh	r3, [r5, #0]
d0041a02:	f80c a004 	strb.w	sl, [ip, r4]
d0041a06:	428a      	cmp	r2, r1
d0041a08:	dce5      	bgt.n	d00419d6 <fillTriangleDitherBayer+0x916>
d0041a0a:	e7bf      	b.n	d004198c <fillTriangleDitherBayer+0x8cc>
d0041a0c:	d00e1ca4 	.word	0xd00e1ca4
d0041a10:	d00e7cc0 	.word	0xd00e7cc0
d0041a14:	d0046ca0 	.word	0xd0046ca0
d0041a18:	38d1b717 	.word	0x38d1b717
d0041a1c:	f04f 0a10 	mov.w	sl, #16
d0041a20:	2310      	movs	r3, #16
d0041a22:	9304      	str	r3, [sp, #16]
d0041a24:	f7ff bbb2 	b.w	d004118c <fillTriangleDitherBayer+0xcc>
d0041a28:	eeb0 ba43 	vmov.f32	s22, s6
d0041a2c:	eef0 9a43 	vmov.f32	s19, s6
d0041a30:	e63c      	b.n	d00416ac <fillTriangleDitherBayer+0x5ec>
d0041a32:	eef0 2a43 	vmov.f32	s5, s6
d0041a36:	eeb0 4a43 	vmov.f32	s8, s6
d0041a3a:	e721      	b.n	d0041880 <fillTriangleDitherBayer+0x7c0>

d0041a3c <fillTriangleDitherBayer2Mode>:
d0041a3c:	eddf 7aca 	vldr	s15, [pc, #808]	; d0041d68 <fillTriangleDitherBayer2Mode+0x32c>
d0041a40:	eef4 0ae7 	vcmpe.f32	s1, s15
d0041a44:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041a48:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041a4c:	eeb4 1ae7 	vcmpe.f32	s2, s15
d0041a50:	ed2d 8b10 	vpush	{d8-d15}
d0041a54:	b08d      	sub	sp, #52	; 0x34
d0041a56:	9303      	str	r3, [sp, #12]
d0041a58:	bf94      	ite	ls
d0041a5a:	2301      	movls	r3, #1
d0041a5c:	2300      	movhi	r3, #0
d0041a5e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041a62:	9202      	str	r2, [sp, #8]
d0041a64:	f89d b0ac 	ldrb.w	fp, [sp, #172]	; 0xac
d0041a68:	bf98      	it	ls
d0041a6a:	f043 0301 	orrls.w	r3, r3, #1
d0041a6e:	f8bd 20a8 	ldrh.w	r2, [sp, #168]	; 0xa8
d0041a72:	e9cd 0100 	strd	r0, r1, [sp]
d0041a76:	f8bd 00a0 	ldrh.w	r0, [sp, #160]	; 0xa0
d0041a7a:	f8bd 10a4 	ldrh.w	r1, [sp, #164]	; 0xa4
d0041a7e:	2b00      	cmp	r3, #0
d0041a80:	f040 814d 	bne.w	d0041d1e <fillTriangleDitherBayer2Mode+0x2e2>
d0041a84:	eeb4 0a67 	vcmp.f32	s0, s15
d0041a88:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041a8c:	f240 8147 	bls.w	d0041d1e <fillTriangleDitherBayer2Mode+0x2e2>
d0041a90:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0041a94:	ee06 1a90 	vmov	s13, r1
d0041a98:	ee07 0a10 	vmov	s14, r0
d0041a9c:	eef8 5a66 	vcvt.f32.u32	s11, s13
d0041aa0:	ee87 3a80 	vdiv.f32	s6, s15, s0
d0041aa4:	ee87 2a81 	vdiv.f32	s4, s15, s2
d0041aa8:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d0041aac:	ee07 2a90 	vmov	s15, r2
d0041ab0:	eeb8 4a67 	vcvt.f32.u32	s8, s15
d0041ab4:	eddd 7a01 	vldr	s15, [sp, #4]
d0041ab8:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0041abc:	eeb8 5ae7 	vcvt.f32.s32	s10, s15
d0041ac0:	eddd 7a03 	vldr	s15, [sp, #12]
d0041ac4:	eef8 3ae7 	vcvt.f32.s32	s7, s15
d0041ac8:	eddd 7a00 	vldr	s15, [sp]
d0041acc:	ee27 7a03 	vmul.f32	s14, s14, s6
d0041ad0:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d0041ad4:	eddd 7a02 	vldr	s15, [sp, #8]
d0041ad8:	eeb4 5ae3 	vcmpe.f32	s10, s7
d0041adc:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d0041ae0:	eddd 7a26 	vldr	s15, [sp, #152]	; 0x98
d0041ae4:	ee24 4a02 	vmul.f32	s8, s8, s4
d0041ae8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041aec:	eef8 2ae7 	vcvt.f32.s32	s5, s15
d0041af0:	eddd 7a27 	vldr	s15, [sp, #156]	; 0x9c
d0041af4:	ee65 5a80 	vmul.f32	s11, s11, s0
d0041af8:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d0041afc:	f300 8114 	bgt.w	d0041d28 <fillTriangleDitherBayer2Mode+0x2ec>
d0041b00:	eeb4 5ae6 	vcmpe.f32	s10, s13
d0041b04:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041b08:	f300 8201 	bgt.w	d0041f0e <fillTriangleDitherBayer2Mode+0x4d2>
d0041b0c:	eef4 3ae6 	vcmpe.f32	s7, s13
d0041b10:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041b14:	f300 8219 	bgt.w	d0041f4a <fillTriangleDitherBayer2Mode+0x50e>
d0041b18:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0041b1c:	ee35 1a27 	vadd.f32	s2, s10, s15
d0041b20:	ee76 7aa7 	vadd.f32	s15, s13, s15
d0041b24:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d0041b28:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041b2c:	ee11 3a10 	vmov	r3, s2
d0041b30:	ee17 2a90 	vmov	r2, s15
d0041b34:	4293      	cmp	r3, r2
d0041b36:	f000 80f2 	beq.w	d0041d1e <fillTriangleDitherBayer2Mode+0x2e2>
d0041b3a:	ee76 8ac5 	vsub.f32	s17, s13, s10
d0041b3e:	ed9f 1a8a 	vldr	s2, [pc, #552]	; d0041d68 <fillTriangleDitherBayer2Mode+0x32c>
d0041b42:	eef4 8ac1 	vcmpe.f32	s17, s2
d0041b46:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041b4a:	f240 80e8 	bls.w	d0041d1e <fillTriangleDitherBayer2Mode+0x2e2>
d0041b4e:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0041b52:	ee33 9ac5 	vsub.f32	s18, s7, s10
d0041b56:	ee72 0ac6 	vsub.f32	s1, s5, s12
d0041b5a:	eec9 7aa8 	vdiv.f32	s15, s19, s17
d0041b5e:	eeb4 9ac1 	vcmpe.f32	s18, s2
d0041b62:	ee32 8a43 	vsub.f32	s16, s4, s6
d0041b66:	ee74 8a47 	vsub.f32	s17, s8, s14
d0041b6a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041b6e:	ee60 0aa7 	vmul.f32	s1, s1, s15
d0041b72:	ee28 8a27 	vmul.f32	s16, s16, s15
d0041b76:	ee68 8aa7 	vmul.f32	s17, s17, s15
d0041b7a:	f300 80ff 	bgt.w	d0041d7c <fillTriangleDitherBayer2Mode+0x340>
d0041b7e:	eef1 7a04 	vmov.f32	s15, #20	; 0x40a00000  5.0
d0041b82:	ed9f ba7c 	vldr	s22, [pc, #496]	; d0041d74 <fillTriangleDitherBayer2Mode+0x338>
d0041b86:	eddf 9a79 	vldr	s19, [pc, #484]	; d0041d6c <fillTriangleDitherBayer2Mode+0x330>
d0041b8a:	ee76 fae3 	vsub.f32	s31, s13, s7
d0041b8e:	fec1 1a8b 	vmaxnm.f32	s3, s3, s22
d0041b92:	fec1 7ae7 	vminnm.f32	s15, s3, s15
d0041b96:	ee67 7aa9 	vmul.f32	s15, s15, s19
d0041b9a:	eef4 fac1 	vcmpe.f32	s31, s2
d0041b9e:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041ba2:	ee17 3a90 	vmov	r3, s15
d0041ba6:	edcd 7a00 	vstr	s15, [sp]
d0041baa:	2b10      	cmp	r3, #16
d0041bac:	bfa8      	it	ge
d0041bae:	2310      	movge	r3, #16
d0041bb0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041bb4:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0041bb8:	9302      	str	r3, [sp, #8]
d0041bba:	f340 80b0 	ble.w	d0041d1e <fillTriangleDitherBayer2Mode+0x2e2>
d0041bbe:	eef0 ea4b 	vmov.f32	s29, s22
d0041bc2:	eef0 ba4b 	vmov.f32	s23, s22
d0041bc6:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d0041bca:	eddf 1a67 	vldr	s3, [pc, #412]	; d0041d68 <fillTriangleDitherBayer2Mode+0x32c>
d0041bce:	ee72 2ae4 	vsub.f32	s5, s5, s9
d0041bd2:	ee32 2a40 	vsub.f32	s4, s4, s0
d0041bd6:	eec1 7a2f 	vdiv.f32	s15, s2, s31
d0041bda:	eeb4 9ae1 	vcmpe.f32	s18, s3
d0041bde:	ee34 4a65 	vsub.f32	s8, s8, s11
d0041be2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041be6:	ee62 2aa7 	vmul.f32	s5, s5, s15
d0041bea:	ee24 fa27 	vmul.f32	s30, s8, s15
d0041bee:	edcd 2a06 	vstr	s5, [sp, #24]
d0041bf2:	ee62 2a27 	vmul.f32	s5, s4, s15
d0041bf6:	edcd 2a05 	vstr	s5, [sp, #20]
d0041bfa:	f300 80f7 	bgt.w	d0041dec <fillTriangleDitherBayer2Mode+0x3b0>
d0041bfe:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0041c02:	edcd 7a03 	vstr	s15, [sp, #12]
d0041c06:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0041c0a:	f240 123f 	movw	r2, #319	; 0x13f
d0041c0e:	9903      	ldr	r1, [sp, #12]
d0041c10:	ee17 3a90 	vmov	r3, s15
d0041c14:	ea21 78e1 	bic.w	r8, r1, r1, asr #31
d0041c18:	3b01      	subs	r3, #1
d0041c1a:	4293      	cmp	r3, r2
d0041c1c:	bfa8      	it	ge
d0041c1e:	4613      	movge	r3, r2
d0041c20:	4543      	cmp	r3, r8
d0041c22:	db7c      	blt.n	d0041d1e <fillTriangleDitherBayer2Mode+0x2e2>
d0041c24:	ee07 8a90 	vmov	s15, r8
d0041c28:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0041c2c:	3301      	adds	r3, #1
d0041c2e:	ed9d ba06 	vldr	s22, [sp, #24]
d0041c32:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041c36:	eddd aa05 	vldr	s21, [sp, #20]
d0041c3a:	ed9f 9a4b 	vldr	s18, [pc, #300]	; d0041d68 <fillTriangleDitherBayer2Mode+0x32c>
d0041c3e:	ed9f 1a4c 	vldr	s2, [pc, #304]	; d0041d70 <fillTriangleDitherBayer2Mode+0x334>
d0041c42:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0041c46:	ed9f 4a4b 	vldr	s8, [pc, #300]	; d0041d74 <fillTriangleDitherBayer2Mode+0x338>
d0041c4a:	eddf 1a4b 	vldr	s3, [pc, #300]	; d0041d78 <fillTriangleDitherBayer2Mode+0x33c>
d0041c4e:	9301      	str	r3, [sp, #4]
d0041c50:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0041c54:	ee77 3ae3 	vsub.f32	s7, s15, s7
d0041c58:	eea0 6a85 	vfma.f32	s12, s1, s10
d0041c5c:	eea8 3a05 	vfma.f32	s6, s16, s10
d0041c60:	eea8 7a85 	vfma.f32	s14, s17, s10
d0041c64:	eeeb 4a23 	vfma.f32	s9, s22, s7
d0041c68:	eeaa 0aa3 	vfma.f32	s0, s21, s7
d0041c6c:	eeef 5a23 	vfma.f32	s11, s30, s7
d0041c70:	e033      	b.n	d0041cda <fillTriangleDitherBayer2Mode+0x29e>
d0041c72:	eeb0 2a47 	vmov.f32	s4, s14
d0041c76:	eef0 9a43 	vmov.f32	s19, s6
d0041c7a:	eef0 6a46 	vmov.f32	s13, s12
d0041c7e:	eef0 3a65 	vmov.f32	s7, s11
d0041c82:	eeb0 5a40 	vmov.f32	s10, s0
d0041c86:	eef0 2a64 	vmov.f32	s5, s9
d0041c8a:	fefa 7a66 	vrintp.f32	s15, s13
d0041c8e:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041c92:	f240 13df 	movw	r3, #479	; 0x1df
d0041c96:	ee17 4a90 	vmov	r4, s15
d0041c9a:	fefa 7a62 	vrintp.f32	s15, s5
d0041c9e:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041ca2:	3c01      	subs	r4, #1
d0041ca4:	ee17 1a90 	vmov	r1, s15
d0041ca8:	429c      	cmp	r4, r3
d0041caa:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d0041cae:	bfa8      	it	ge
d0041cb0:	461c      	movge	r4, r3
d0041cb2:	42a1      	cmp	r1, r4
d0041cb4:	f340 817b 	ble.w	d0041fae <fillTriangleDitherBayer2Mode+0x572>
d0041cb8:	f108 0801 	add.w	r8, r8, #1
d0041cbc:	9b01      	ldr	r3, [sp, #4]
d0041cbe:	ee36 6a20 	vadd.f32	s12, s12, s1
d0041cc2:	4598      	cmp	r8, r3
d0041cc4:	ee33 3a08 	vadd.f32	s6, s6, s16
d0041cc8:	ee37 7a28 	vadd.f32	s14, s14, s17
d0041ccc:	ee74 4a8b 	vadd.f32	s9, s9, s22
d0041cd0:	ee30 0a2a 	vadd.f32	s0, s0, s21
d0041cd4:	ee75 5a8f 	vadd.f32	s11, s11, s30
d0041cd8:	d021      	beq.n	d0041d1e <fillTriangleDitherBayer2Mode+0x2e2>
d0041cda:	eeb4 6ae4 	vcmpe.f32	s12, s9
d0041cde:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041ce2:	dcc6      	bgt.n	d0041c72 <fillTriangleDitherBayer2Mode+0x236>
d0041ce4:	eeb0 2a65 	vmov.f32	s4, s11
d0041ce8:	eef0 9a40 	vmov.f32	s19, s0
d0041cec:	eef0 6a64 	vmov.f32	s13, s9
d0041cf0:	eef0 3a47 	vmov.f32	s7, s14
d0041cf4:	eeb0 5a43 	vmov.f32	s10, s6
d0041cf8:	eef0 2a46 	vmov.f32	s5, s12
d0041cfc:	e7c5      	b.n	d0041c8a <fillTriangleDitherBayer2Mode+0x24e>
d0041cfe:	eddd 6a08 	vldr	s13, [sp, #32]
d0041d02:	ed9d 6a09 	vldr	s12, [sp, #36]	; 0x24
d0041d06:	ed9d fa0a 	vldr	s30, [sp, #40]	; 0x28
d0041d0a:	ed9d 0a0b 	vldr	s0, [sp, #44]	; 0x2c
d0041d0e:	eddf 7a16 	vldr	s15, [pc, #88]	; d0041d68 <fillTriangleDitherBayer2Mode+0x32c>
d0041d12:	eef4 fae7 	vcmpe.f32	s31, s15
d0041d16:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041d1a:	f73f af74 	bgt.w	d0041c06 <fillTriangleDitherBayer2Mode+0x1ca>
d0041d1e:	b00d      	add	sp, #52	; 0x34
d0041d20:	ecbd 8b10 	vpop	{d8-d15}
d0041d24:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0041d28:	eef4 3ae6 	vcmpe.f32	s7, s13
d0041d2c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041d30:	f340 8124 	ble.w	d0041f7c <fillTriangleDitherBayer2Mode+0x540>
d0041d34:	eeb0 8a44 	vmov.f32	s16, s8
d0041d38:	eef0 0a42 	vmov.f32	s1, s4
d0041d3c:	eeb0 1a66 	vmov.f32	s2, s13
d0041d40:	eef0 7a62 	vmov.f32	s15, s5
d0041d44:	eeb0 4a47 	vmov.f32	s8, s14
d0041d48:	eeb0 2a43 	vmov.f32	s4, s6
d0041d4c:	eef0 6a45 	vmov.f32	s13, s10
d0041d50:	eef0 2a46 	vmov.f32	s5, s12
d0041d54:	eeb0 7a48 	vmov.f32	s14, s16
d0041d58:	eeb0 3a60 	vmov.f32	s6, s1
d0041d5c:	eeb0 5a41 	vmov.f32	s10, s2
d0041d60:	eeb0 6a67 	vmov.f32	s12, s15
d0041d64:	e6d8      	b.n	d0041b18 <fillTriangleDitherBayer2Mode+0xdc>
d0041d66:	bf00      	nop
d0041d68:	38d1b717 	.word	0x38d1b717
d0041d6c:	404ccccd 	.word	0x404ccccd
d0041d70:	33d6bf95 	.word	0x33d6bf95
d0041d74:	00000000 	.word	0x00000000
d0041d78:	477fff00 	.word	0x477fff00
d0041d7c:	ee89 aa89 	vdiv.f32	s20, s19, s18
d0041d80:	ed1f ba06 	vldr	s22, [pc, #-24]	; d0041d6c <fillTriangleDitherBayer2Mode+0x330>
d0041d84:	ed5f 9a05 	vldr	s19, [pc, #-20]	; d0041d74 <fillTriangleDitherBayer2Mode+0x338>
d0041d88:	fec1 1aa9 	vmaxnm.f32	s3, s3, s19
d0041d8c:	eef1 7a04 	vmov.f32	s15, #20	; 0x40a00000  5.0
d0041d90:	ee74 aac6 	vsub.f32	s21, s9, s12
d0041d94:	ee76 fae3 	vsub.f32	s31, s13, s7
d0041d98:	fec1 7ae7 	vminnm.f32	s15, s3, s15
d0041d9c:	ee67 7a8b 	vmul.f32	s15, s15, s22
d0041da0:	ee70 1a43 	vsub.f32	s3, s0, s6
d0041da4:	eef4 fac1 	vcmpe.f32	s31, s2
d0041da8:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041dac:	ee35 bac7 	vsub.f32	s22, s11, s14
d0041db0:	ee17 3a90 	vmov	r3, s15
d0041db4:	edcd 7a00 	vstr	s15, [sp]
d0041db8:	2b10      	cmp	r3, #16
d0041dba:	ee6a 7a8a 	vmul.f32	s15, s21, s20
d0041dbe:	ee2b ba0a 	vmul.f32	s22, s22, s20
d0041dc2:	bfa8      	it	ge
d0041dc4:	2310      	movge	r3, #16
d0041dc6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041dca:	eef0 ba67 	vmov.f32	s23, s15
d0041dce:	ee61 7a8a 	vmul.f32	s15, s3, s20
d0041dd2:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0041dd6:	9302      	str	r3, [sp, #8]
d0041dd8:	eef0 ea67 	vmov.f32	s29, s15
d0041ddc:	f73f aef3 	bgt.w	d0041bc6 <fillTriangleDitherBayer2Mode+0x18a>
d0041de0:	eeb0 fa69 	vmov.f32	s30, s19
d0041de4:	edcd 9a05 	vstr	s19, [sp, #20]
d0041de8:	edcd 9a06 	vstr	s19, [sp, #24]
d0041dec:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0041df0:	f240 123f 	movw	r2, #319	; 0x13f
d0041df4:	ee17 3a90 	vmov	r3, s15
d0041df8:	edcd 7a03 	vstr	s15, [sp, #12]
d0041dfc:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d0041e00:	3b01      	subs	r3, #1
d0041e02:	ee17 8a90 	vmov	r8, s15
d0041e06:	4293      	cmp	r3, r2
d0041e08:	ea28 78e8 	bic.w	r8, r8, r8, asr #31
d0041e0c:	bfa8      	it	ge
d0041e0e:	4613      	movge	r3, r2
d0041e10:	4543      	cmp	r3, r8
d0041e12:	f6ff af7c 	blt.w	d0041d0e <fillTriangleDitherBayer2Mode+0x2d2>
d0041e16:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0041e1a:	3301      	adds	r3, #1
d0041e1c:	eeb0 aa46 	vmov.f32	s20, s12
d0041e20:	ed5f da2d 	vldr	s27, [pc, #-180]	; d0041d70 <fillTriangleDitherBayer2Mode+0x334>
d0041e24:	eef0 aa46 	vmov.f32	s21, s12
d0041e28:	ed5f 2a2e 	vldr	s5, [pc, #-184]	; d0041d74 <fillTriangleDitherBayer2Mode+0x338>
d0041e2c:	ee37 4ac5 	vsub.f32	s8, s15, s10
d0041e30:	ee07 8a90 	vmov	s15, r8
d0041e34:	eeb0 da43 	vmov.f32	s26, s6
d0041e38:	ed1f 1a31 	vldr	s2, [pc, #-196]	; d0041d78 <fillTriangleDitherBayer2Mode+0x33c>
d0041e3c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041e40:	9301      	str	r3, [sp, #4]
d0041e42:	eef0 ca47 	vmov.f32	s25, s14
d0041e46:	edcd 6a08 	vstr	s13, [sp, #32]
d0041e4a:	eeb0 ea6b 	vmov.f32	s28, s23
d0041e4e:	ed8d 6a09 	vstr	s12, [sp, #36]	; 0x24
d0041e52:	ee77 7a84 	vadd.f32	s15, s15, s8
d0041e56:	ed8d fa0a 	vstr	s30, [sp, #40]	; 0x28
d0041e5a:	eeb0 ca43 	vmov.f32	s24, s6
d0041e5e:	ed8d 0a0b 	vstr	s0, [sp, #44]	; 0x2c
d0041e62:	eea7 aaab 	vfma.f32	s20, s15, s23
d0041e66:	eef0 ba47 	vmov.f32	s23, s14
d0041e6a:	eee0 aaa7 	vfma.f32	s21, s1, s15
d0041e6e:	eea8 da27 	vfma.f32	s26, s16, s15
d0041e72:	eee8 caa7 	vfma.f32	s25, s17, s15
d0041e76:	eea7 caae 	vfma.f32	s24, s15, s29
d0041e7a:	eee7 ba8b 	vfma.f32	s23, s15, s22
d0041e7e:	e034      	b.n	d0041eea <fillTriangleDitherBayer2Mode+0x4ae>
d0041e80:	eef0 1a6c 	vmov.f32	s3, s25
d0041e84:	eeb0 2a4d 	vmov.f32	s4, s26
d0041e88:	eef0 7a6a 	vmov.f32	s15, s21
d0041e8c:	eeb0 6a6b 	vmov.f32	s12, s23
d0041e90:	eef0 6a4c 	vmov.f32	s13, s24
d0041e94:	eeb0 4a4a 	vmov.f32	s8, s20
d0041e98:	feba 0a67 	vrintp.f32	s0, s15
d0041e9c:	eebd 0ac0 	vcvt.s32.f32	s0, s0
d0041ea0:	feba 9a44 	vrintp.f32	s18, s8
d0041ea4:	f240 13df 	movw	r3, #479	; 0x1df
d0041ea8:	ee10 4a10 	vmov	r4, s0
d0041eac:	eebd 0ac9 	vcvt.s32.f32	s0, s18
d0041eb0:	3c01      	subs	r4, #1
d0041eb2:	ee10 1a10 	vmov	r1, s0
d0041eb6:	429c      	cmp	r4, r3
d0041eb8:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d0041ebc:	bfa8      	it	ge
d0041ebe:	461c      	movge	r4, r3
d0041ec0:	428c      	cmp	r4, r1
d0041ec2:	f280 8159 	bge.w	d0042178 <fillTriangleDitherBayer2Mode+0x73c>
d0041ec6:	f108 0801 	add.w	r8, r8, #1
d0041eca:	9b01      	ldr	r3, [sp, #4]
d0041ecc:	ee7a aaa0 	vadd.f32	s21, s21, s1
d0041ed0:	4598      	cmp	r8, r3
d0041ed2:	ee3d da08 	vadd.f32	s26, s26, s16
d0041ed6:	ee7c caa8 	vadd.f32	s25, s25, s17
d0041eda:	ee3a aa0e 	vadd.f32	s20, s20, s28
d0041ede:	ee3c ca2e 	vadd.f32	s24, s24, s29
d0041ee2:	ee7b ba8b 	vadd.f32	s23, s23, s22
d0041ee6:	f43f af0a 	beq.w	d0041cfe <fillTriangleDitherBayer2Mode+0x2c2>
d0041eea:	eef4 aaca 	vcmpe.f32	s21, s20
d0041eee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041ef2:	dcc5      	bgt.n	d0041e80 <fillTriangleDitherBayer2Mode+0x444>
d0041ef4:	eef0 1a6b 	vmov.f32	s3, s23
d0041ef8:	eeb0 2a4c 	vmov.f32	s4, s24
d0041efc:	eef0 7a4a 	vmov.f32	s15, s20
d0041f00:	eeb0 6a6c 	vmov.f32	s12, s25
d0041f04:	eef0 6a4d 	vmov.f32	s13, s26
d0041f08:	eeb0 4a6a 	vmov.f32	s8, s21
d0041f0c:	e7c4      	b.n	d0041e98 <fillTriangleDitherBayer2Mode+0x45c>
d0041f0e:	eeb0 1a45 	vmov.f32	s2, s10
d0041f12:	eeb0 5a66 	vmov.f32	s10, s13
d0041f16:	eeb0 8a47 	vmov.f32	s16, s14
d0041f1a:	eef0 6a41 	vmov.f32	s13, s2
d0041f1e:	eef0 0a43 	vmov.f32	s1, s6
d0041f22:	eef0 7a46 	vmov.f32	s15, s12
d0041f26:	eef4 3ae6 	vcmpe.f32	s7, s13
d0041f2a:	eeb0 7a44 	vmov.f32	s14, s8
d0041f2e:	eeb0 3a42 	vmov.f32	s6, s4
d0041f32:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041f36:	eeb0 6a62 	vmov.f32	s12, s5
d0041f3a:	eeb0 4a48 	vmov.f32	s8, s16
d0041f3e:	eeb0 2a60 	vmov.f32	s4, s1
d0041f42:	eef0 2a67 	vmov.f32	s5, s15
d0041f46:	f77f ade7 	ble.w	d0041b18 <fillTriangleDitherBayer2Mode+0xdc>
d0041f4a:	eeb0 8a65 	vmov.f32	s16, s11
d0041f4e:	eef0 0a40 	vmov.f32	s1, s0
d0041f52:	eeb0 1a63 	vmov.f32	s2, s7
d0041f56:	eef0 7a64 	vmov.f32	s15, s9
d0041f5a:	eef0 5a44 	vmov.f32	s11, s8
d0041f5e:	eeb0 0a42 	vmov.f32	s0, s4
d0041f62:	eef0 3a66 	vmov.f32	s7, s13
d0041f66:	eef0 4a62 	vmov.f32	s9, s5
d0041f6a:	eeb0 4a48 	vmov.f32	s8, s16
d0041f6e:	eeb0 2a60 	vmov.f32	s4, s1
d0041f72:	eef0 6a41 	vmov.f32	s13, s2
d0041f76:	eef0 2a67 	vmov.f32	s5, s15
d0041f7a:	e5cd      	b.n	d0041b18 <fillTriangleDitherBayer2Mode+0xdc>
d0041f7c:	eeb0 8a47 	vmov.f32	s16, s14
d0041f80:	eef0 0a43 	vmov.f32	s1, s6
d0041f84:	eeb0 1a45 	vmov.f32	s2, s10
d0041f88:	eef0 7a46 	vmov.f32	s15, s12
d0041f8c:	eeb0 7a65 	vmov.f32	s14, s11
d0041f90:	eeb0 3a40 	vmov.f32	s6, s0
d0041f94:	eeb0 5a63 	vmov.f32	s10, s7
d0041f98:	eeb0 6a64 	vmov.f32	s12, s9
d0041f9c:	eef0 5a48 	vmov.f32	s11, s16
d0041fa0:	eeb0 0a60 	vmov.f32	s0, s1
d0041fa4:	eef0 3a41 	vmov.f32	s7, s2
d0041fa8:	eef0 4a67 	vmov.f32	s9, s15
d0041fac:	e5ae      	b.n	d0041b0c <fillTriangleDitherBayer2Mode+0xd0>
d0041fae:	ee76 6ae2 	vsub.f32	s13, s13, s5
d0041fb2:	eef4 6ac9 	vcmpe.f32	s13, s18
d0041fb6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041fba:	f340 8207 	ble.w	d00423cc <fillTriangleDitherBayer2Mode+0x990>
d0041fbe:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0041fc2:	ee79 9ac5 	vsub.f32	s19, s19, s10
d0041fc6:	ee32 2a63 	vsub.f32	s4, s4, s7
d0041fca:	ee87 aaa6 	vdiv.f32	s20, s15, s13
d0041fce:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0041fd2:	ee77 2ae2 	vsub.f32	s5, s15, s5
d0041fd6:	ee07 1a90 	vmov	s15, r1
d0041fda:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041fde:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0041fe2:	ee69 9a8a 	vmul.f32	s19, s19, s20
d0041fe6:	ee22 aa0a 	vmul.f32	s20, s4, s20
d0041fea:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0041fee:	eee7 3a8a 	vfma.f32	s7, s15, s20
d0041ff2:	ebc8 1208 	rsb	r2, r8, r8, lsl #4
d0041ff6:	4dd3      	ldr	r5, [pc, #844]	; (d0042344 <fillTriangleDitherBayer2Mode+0x908>)
d0041ff8:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0041ffc:	48d2      	ldr	r0, [pc, #840]	; (d0042348 <fillTriangleDitherBayer2Mode+0x90c>)
d0041ffe:	eb01 1242 	add.w	r2, r1, r2, lsl #5
d0042002:	682f      	ldr	r7, [r5, #0]
d0042004:	eb08 1383 	add.w	r3, r8, r3, lsl #6
d0042008:	f008 0503 	and.w	r5, r8, #3
d004200c:	eb00 0942 	add.w	r9, r0, r2, lsl #1
d0042010:	4ace      	ldr	r2, [pc, #824]	; (d004234c <fillTriangleDitherBayer2Mode+0x910>)
d0042012:	441f      	add	r7, r3
d0042014:	f8cd 800c 	str.w	r8, [sp, #12]
d0042018:	eb02 0385 	add.w	r3, r2, r5, lsl #2
d004201c:	eeb6 2a00 	vmov.f32	s4, #96	; 0x3f000000  0.5
d0042020:	4698      	mov	r8, r3
d0042022:	e010      	b.n	d0042046 <fillTriangleDitherBayer2Mode+0x60a>
d0042024:	ee07 3a90 	vmov	s15, r3
d0042028:	4419      	add	r1, r3
d004202a:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d004202e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0042032:	428c      	cmp	r4, r1
d0042034:	eb09 0943 	add.w	r9, r9, r3, lsl #1
d0042038:	eb07 1782 	add.w	r7, r7, r2, lsl #6
d004203c:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0042040:	eee7 3a8a 	vfma.f32	s7, s15, s20
d0042044:	db62      	blt.n	d004210c <fillTriangleDitherBayer2Mode+0x6d0>
d0042046:	eba4 0c01 	sub.w	ip, r4, r1
d004204a:	eeb4 5ac1 	vcmpe.f32	s10, s2
d004204e:	f10c 0301 	add.w	r3, ip, #1
d0042052:	2b30      	cmp	r3, #48	; 0x30
d0042054:	bfa8      	it	ge
d0042056:	2330      	movge	r3, #48	; 0x30
d0042058:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004205c:	d9e2      	bls.n	d0042024 <fillTriangleDitherBayer2Mode+0x5e8>
d004205e:	f1bc 0f00 	cmp.w	ip, #0
d0042062:	eec3 7a85 	vdiv.f32	s15, s7, s10
d0042066:	dd54      	ble.n	d0042112 <fillTriangleDitherBayer2Mode+0x6d6>
d0042068:	1e5a      	subs	r2, r3, #1
d004206a:	ee06 2a90 	vmov	s13, r2
d004206e:	eef0 2a45 	vmov.f32	s5, s10
d0042072:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0042076:	eee6 2aa9 	vfma.f32	s5, s13, s19
d004207a:	eef4 2ac1 	vcmpe.f32	s5, s2
d004207e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042082:	dd47      	ble.n	d0042114 <fillTriangleDitherBayer2Mode+0x6d8>
d0042084:	eeb0 ca63 	vmov.f32	s24, s7
d0042088:	9a00      	ldr	r2, [sp, #0]
d004208a:	2a0f      	cmp	r2, #15
d004208c:	eea6 ca8a 	vfma.f32	s24, s13, s20
d0042090:	eecc ba22 	vdiv.f32	s23, s24, s5
d0042094:	ee7b bae7 	vsub.f32	s23, s23, s15
d0042098:	eecb 2aa6 	vdiv.f32	s5, s23, s13
d004209c:	dd3f      	ble.n	d004211e <fillTriangleDitherBayer2Mode+0x6e2>
d004209e:	f1a9 0602 	sub.w	r6, r9, #2
d00420a2:	2200      	movs	r2, #0
d00420a4:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d00420a8:	fec6 6ae1 	vminnm.f32	s13, s13, s3
d00420ac:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d00420b0:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d00420b4:	3201      	adds	r2, #1
d00420b6:	ee76 6a82 	vadd.f32	s13, s13, s4
d00420ba:	0185      	lsls	r5, r0, #6
d00420bc:	ee77 7aa2 	vadd.f32	s15, s15, s5
d00420c0:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d00420c4:	ee16 0a90 	vmov	r0, s13
d00420c8:	b280      	uxth	r0, r0
d00420ca:	4586      	cmp	lr, r0
d00420cc:	d903      	bls.n	d00420d6 <fillTriangleDitherBayer2Mode+0x69a>
d00420ce:	8030      	strh	r0, [r6, #0]
d00420d0:	f04f 0010 	mov.w	r0, #16
d00420d4:	5578      	strb	r0, [r7, r5]
d00420d6:	4293      	cmp	r3, r2
d00420d8:	dce4      	bgt.n	d00420a4 <fillTriangleDitherBayer2Mode+0x668>
d00420da:	f1bc 0f00 	cmp.w	ip, #0
d00420de:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d00420e2:	ea4f 0043 	mov.w	r0, r3, lsl #1
d00420e6:	ea4f 1282 	mov.w	r2, r2, lsl #6
d00420ea:	bfbc      	itt	lt
d00420ec:	2002      	movlt	r0, #2
d00420ee:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d00420f2:	4481      	add	r9, r0
d00420f4:	4417      	add	r7, r2
d00420f6:	ee07 3a90 	vmov	s15, r3
d00420fa:	4419      	add	r1, r3
d00420fc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0042100:	428c      	cmp	r4, r1
d0042102:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0042106:	eee7 3a8a 	vfma.f32	s7, s15, s20
d004210a:	da9c      	bge.n	d0042046 <fillTriangleDitherBayer2Mode+0x60a>
d004210c:	f8dd 800c 	ldr.w	r8, [sp, #12]
d0042110:	e5d2      	b.n	d0041cb8 <fillTriangleDitherBayer2Mode+0x27c>
d0042112:	d1f0      	bne.n	d00420f6 <fillTriangleDitherBayer2Mode+0x6ba>
d0042114:	9a00      	ldr	r2, [sp, #0]
d0042116:	eef0 2a44 	vmov.f32	s5, s8
d004211a:	2a0f      	cmp	r2, #15
d004211c:	dcbf      	bgt.n	d004209e <fillTriangleDitherBayer2Mode+0x662>
d004211e:	2a00      	cmp	r2, #0
d0042120:	f340 8136 	ble.w	d0042390 <fillTriangleDitherBayer2Mode+0x954>
d0042124:	9404      	str	r4, [sp, #16]
d0042126:	f1a9 0e02 	sub.w	lr, r9, #2
d004212a:	2200      	movs	r2, #0
d004212c:	9c02      	ldr	r4, [sp, #8]
d004212e:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d0042132:	fec6 6ae1 	vminnm.f32	s13, s13, s3
d0042136:	ee76 6a82 	vadd.f32	s13, s13, s4
d004213a:	f83e af02 	ldrh.w	sl, [lr, #2]!
d004213e:	188e      	adds	r6, r1, r2
d0042140:	eb02 0582 	add.w	r5, r2, r2, lsl #2
d0042144:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0042148:	3201      	adds	r2, #1
d004214a:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d004214e:	f006 0603 	and.w	r6, r6, #3
d0042152:	01ad      	lsls	r5, r5, #6
d0042154:	ee16 0a90 	vmov	r0, s13
d0042158:	b280      	uxth	r0, r0
d004215a:	4582      	cmp	sl, r0
d004215c:	d908      	bls.n	d0042170 <fillTriangleDitherBayer2Mode+0x734>
d004215e:	f818 6006 	ldrb.w	r6, [r8, r6]
d0042162:	f8ae 0000 	strh.w	r0, [lr]
d0042166:	42a6      	cmp	r6, r4
d0042168:	bfac      	ite	ge
d004216a:	4658      	movge	r0, fp
d004216c:	2010      	movlt	r0, #16
d004216e:	5578      	strb	r0, [r7, r5]
d0042170:	4293      	cmp	r3, r2
d0042172:	dcdc      	bgt.n	d004212e <fillTriangleDitherBayer2Mode+0x6f2>
d0042174:	9c04      	ldr	r4, [sp, #16]
d0042176:	e7b0      	b.n	d00420da <fillTriangleDitherBayer2Mode+0x69e>
d0042178:	ee77 7ac4 	vsub.f32	s15, s15, s8
d004217c:	ed9f 0a74 	vldr	s0, [pc, #464]	; d0042350 <fillTriangleDitherBayer2Mode+0x914>
d0042180:	eef4 7ac0 	vcmpe.f32	s15, s0
d0042184:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042188:	f340 8125 	ble.w	d00423d6 <fillTriangleDitherBayer2Mode+0x99a>
d004218c:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d0042190:	ee32 2a66 	vsub.f32	s4, s4, s13
d0042194:	ee71 1ac6 	vsub.f32	s3, s3, s12
d0042198:	ee89 0a27 	vdiv.f32	s0, s18, s15
d004219c:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00421a0:	ee37 4ac4 	vsub.f32	s8, s15, s8
d00421a4:	ee07 1a90 	vmov	s15, r1
d00421a8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00421ac:	ee77 7a84 	vadd.f32	s15, s15, s8
d00421b0:	ee22 2a00 	vmul.f32	s4, s4, s0
d00421b4:	ee61 1a80 	vmul.f32	s3, s3, s0
d00421b8:	eee7 6a82 	vfma.f32	s13, s15, s4
d00421bc:	eea7 6aa1 	vfma.f32	s12, s15, s3
d00421c0:	ebc8 1208 	rsb	r2, r8, r8, lsl #4
d00421c4:	4d5f      	ldr	r5, [pc, #380]	; (d0042344 <fillTriangleDitherBayer2Mode+0x908>)
d00421c6:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d00421ca:	485f      	ldr	r0, [pc, #380]	; (d0042348 <fillTriangleDitherBayer2Mode+0x90c>)
d00421cc:	eb01 1242 	add.w	r2, r1, r2, lsl #5
d00421d0:	682f      	ldr	r7, [r5, #0]
d00421d2:	eb08 1383 	add.w	r3, r8, r3, lsl #6
d00421d6:	f008 0503 	and.w	r5, r8, #3
d00421da:	eb00 0942 	add.w	r9, r0, r2, lsl #1
d00421de:	4a5b      	ldr	r2, [pc, #364]	; (d004234c <fillTriangleDitherBayer2Mode+0x910>)
d00421e0:	441f      	add	r7, r3
d00421e2:	f8cd 8010 	str.w	r8, [sp, #16]
d00421e6:	eb02 0385 	add.w	r3, r2, r5, lsl #2
d00421ea:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d00421ee:	4698      	mov	r8, r3
d00421f0:	e010      	b.n	d0042214 <fillTriangleDitherBayer2Mode+0x7d8>
d00421f2:	ee07 2a90 	vmov	s15, r2
d00421f6:	4411      	add	r1, r2
d00421f8:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d00421fc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0042200:	428c      	cmp	r4, r1
d0042202:	eb09 0942 	add.w	r9, r9, r2, lsl #1
d0042206:	eb07 1783 	add.w	r7, r7, r3, lsl #6
d004220a:	eee7 6a82 	vfma.f32	s13, s15, s4
d004220e:	eea7 6aa1 	vfma.f32	s12, s15, s3
d0042212:	db62      	blt.n	d00422da <fillTriangleDitherBayer2Mode+0x89e>
d0042214:	eba4 0c01 	sub.w	ip, r4, r1
d0042218:	eef4 6aed 	vcmpe.f32	s13, s27
d004221c:	f10c 0201 	add.w	r2, ip, #1
d0042220:	2a30      	cmp	r2, #48	; 0x30
d0042222:	bfa8      	it	ge
d0042224:	2230      	movge	r2, #48	; 0x30
d0042226:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004222a:	d9e2      	bls.n	d00421f2 <fillTriangleDitherBayer2Mode+0x7b6>
d004222c:	f1bc 0f00 	cmp.w	ip, #0
d0042230:	eec6 7a26 	vdiv.f32	s15, s12, s13
d0042234:	dd54      	ble.n	d00422e0 <fillTriangleDitherBayer2Mode+0x8a4>
d0042236:	1e53      	subs	r3, r2, #1
d0042238:	ee00 3a10 	vmov	s0, r3
d004223c:	eeb0 9a66 	vmov.f32	s18, s13
d0042240:	eeb8 0ac0 	vcvt.f32.s32	s0, s0
d0042244:	eea0 9a02 	vfma.f32	s18, s0, s4
d0042248:	eeb4 9aed 	vcmpe.f32	s18, s27
d004224c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042250:	dd47      	ble.n	d00422e2 <fillTriangleDitherBayer2Mode+0x8a6>
d0042252:	eeb0 fa46 	vmov.f32	s30, s12
d0042256:	9b00      	ldr	r3, [sp, #0]
d0042258:	2b0f      	cmp	r3, #15
d004225a:	eea0 fa21 	vfma.f32	s30, s0, s3
d004225e:	eecf 9a09 	vdiv.f32	s19, s30, s18
d0042262:	ee79 9ae7 	vsub.f32	s19, s19, s15
d0042266:	ee89 9a80 	vdiv.f32	s18, s19, s0
d004226a:	dd3f      	ble.n	d00422ec <fillTriangleDitherBayer2Mode+0x8b0>
d004226c:	f1a9 0602 	sub.w	r6, r9, #2
d0042270:	2000      	movs	r0, #0
d0042272:	fe87 0aa2 	vmaxnm.f32	s0, s15, s5
d0042276:	fe80 0a41 	vminnm.f32	s0, s0, s2
d004227a:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d004227e:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d0042282:	3001      	adds	r0, #1
d0042284:	ee30 0a04 	vadd.f32	s0, s0, s8
d0042288:	019d      	lsls	r5, r3, #6
d004228a:	ee77 7a89 	vadd.f32	s15, s15, s18
d004228e:	eebc 0ac0 	vcvt.u32.f32	s0, s0
d0042292:	ee10 3a10 	vmov	r3, s0
d0042296:	b29b      	uxth	r3, r3
d0042298:	459e      	cmp	lr, r3
d004229a:	d903      	bls.n	d00422a4 <fillTriangleDitherBayer2Mode+0x868>
d004229c:	8033      	strh	r3, [r6, #0]
d004229e:	f04f 0310 	mov.w	r3, #16
d00422a2:	557b      	strb	r3, [r7, r5]
d00422a4:	4282      	cmp	r2, r0
d00422a6:	dce4      	bgt.n	d0042272 <fillTriangleDitherBayer2Mode+0x836>
d00422a8:	f1bc 0f00 	cmp.w	ip, #0
d00422ac:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d00422b0:	ea4f 0042 	mov.w	r0, r2, lsl #1
d00422b4:	ea4f 1383 	mov.w	r3, r3, lsl #6
d00422b8:	bfbc      	itt	lt
d00422ba:	2002      	movlt	r0, #2
d00422bc:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d00422c0:	4481      	add	r9, r0
d00422c2:	441f      	add	r7, r3
d00422c4:	ee07 2a90 	vmov	s15, r2
d00422c8:	4411      	add	r1, r2
d00422ca:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00422ce:	428c      	cmp	r4, r1
d00422d0:	eee7 6a82 	vfma.f32	s13, s15, s4
d00422d4:	eea7 6aa1 	vfma.f32	s12, s15, s3
d00422d8:	da9c      	bge.n	d0042214 <fillTriangleDitherBayer2Mode+0x7d8>
d00422da:	f8dd 8010 	ldr.w	r8, [sp, #16]
d00422de:	e5f2      	b.n	d0041ec6 <fillTriangleDitherBayer2Mode+0x48a>
d00422e0:	d1f0      	bne.n	d00422c4 <fillTriangleDitherBayer2Mode+0x888>
d00422e2:	9b00      	ldr	r3, [sp, #0]
d00422e4:	eeb0 9a62 	vmov.f32	s18, s5
d00422e8:	2b0f      	cmp	r3, #15
d00422ea:	dcbf      	bgt.n	d004226c <fillTriangleDitherBayer2Mode+0x830>
d00422ec:	2b00      	cmp	r3, #0
d00422ee:	dd31      	ble.n	d0042354 <fillTriangleDitherBayer2Mode+0x918>
d00422f0:	9407      	str	r4, [sp, #28]
d00422f2:	f1a9 0e02 	sub.w	lr, r9, #2
d00422f6:	2000      	movs	r0, #0
d00422f8:	9c02      	ldr	r4, [sp, #8]
d00422fa:	fe87 0aa2 	vmaxnm.f32	s0, s15, s5
d00422fe:	fe80 0a41 	vminnm.f32	s0, s0, s2
d0042302:	ee30 0a04 	vadd.f32	s0, s0, s8
d0042306:	f83e af02 	ldrh.w	sl, [lr, #2]!
d004230a:	180e      	adds	r6, r1, r0
d004230c:	eb00 0580 	add.w	r5, r0, r0, lsl #2
d0042310:	ee77 7a89 	vadd.f32	s15, s15, s18
d0042314:	3001      	adds	r0, #1
d0042316:	eebc 0ac0 	vcvt.u32.f32	s0, s0
d004231a:	f006 0603 	and.w	r6, r6, #3
d004231e:	01ad      	lsls	r5, r5, #6
d0042320:	ee10 3a10 	vmov	r3, s0
d0042324:	b29b      	uxth	r3, r3
d0042326:	459a      	cmp	sl, r3
d0042328:	d908      	bls.n	d004233c <fillTriangleDitherBayer2Mode+0x900>
d004232a:	f818 6006 	ldrb.w	r6, [r8, r6]
d004232e:	f8ae 3000 	strh.w	r3, [lr]
d0042332:	42a6      	cmp	r6, r4
d0042334:	bfac      	ite	ge
d0042336:	465b      	movge	r3, fp
d0042338:	2310      	movlt	r3, #16
d004233a:	557b      	strb	r3, [r7, r5]
d004233c:	4282      	cmp	r2, r0
d004233e:	dcdc      	bgt.n	d00422fa <fillTriangleDitherBayer2Mode+0x8be>
d0042340:	9c07      	ldr	r4, [sp, #28]
d0042342:	e7b1      	b.n	d00422a8 <fillTriangleDitherBayer2Mode+0x86c>
d0042344:	d00e1ca4 	.word	0xd00e1ca4
d0042348:	d00e7cc0 	.word	0xd00e7cc0
d004234c:	d0046ca0 	.word	0xd0046ca0
d0042350:	38d1b717 	.word	0x38d1b717
d0042354:	f1a9 0602 	sub.w	r6, r9, #2
d0042358:	2000      	movs	r0, #0
d004235a:	fe87 0aa2 	vmaxnm.f32	s0, s15, s5
d004235e:	fe80 0a41 	vminnm.f32	s0, s0, s2
d0042362:	ee30 0a04 	vadd.f32	s0, s0, s8
d0042366:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d004236a:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d004236e:	ee77 7a89 	vadd.f32	s15, s15, s18
d0042372:	019d      	lsls	r5, r3, #6
d0042374:	3001      	adds	r0, #1
d0042376:	eebc 0ac0 	vcvt.u32.f32	s0, s0
d004237a:	ee10 3a10 	vmov	r3, s0
d004237e:	b29b      	uxth	r3, r3
d0042380:	459e      	cmp	lr, r3
d0042382:	d902      	bls.n	d004238a <fillTriangleDitherBayer2Mode+0x94e>
d0042384:	8033      	strh	r3, [r6, #0]
d0042386:	f807 b005 	strb.w	fp, [r7, r5]
d004238a:	4282      	cmp	r2, r0
d004238c:	dce5      	bgt.n	d004235a <fillTriangleDitherBayer2Mode+0x91e>
d004238e:	e78b      	b.n	d00422a8 <fillTriangleDitherBayer2Mode+0x86c>
d0042390:	f1a9 0602 	sub.w	r6, r9, #2
d0042394:	2200      	movs	r2, #0
d0042396:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d004239a:	fec6 6ae1 	vminnm.f32	s13, s13, s3
d004239e:	ee76 6a82 	vadd.f32	s13, s13, s4
d00423a2:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d00423a6:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d00423aa:	ee77 7aa2 	vadd.f32	s15, s15, s5
d00423ae:	0185      	lsls	r5, r0, #6
d00423b0:	3201      	adds	r2, #1
d00423b2:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d00423b6:	ee16 0a90 	vmov	r0, s13
d00423ba:	b280      	uxth	r0, r0
d00423bc:	4586      	cmp	lr, r0
d00423be:	d902      	bls.n	d00423c6 <fillTriangleDitherBayer2Mode+0x98a>
d00423c0:	8030      	strh	r0, [r6, #0]
d00423c2:	f807 b005 	strb.w	fp, [r7, r5]
d00423c6:	4293      	cmp	r3, r2
d00423c8:	dce5      	bgt.n	d0042396 <fillTriangleDitherBayer2Mode+0x95a>
d00423ca:	e686      	b.n	d00420da <fillTriangleDitherBayer2Mode+0x69e>
d00423cc:	eeb0 aa44 	vmov.f32	s20, s8
d00423d0:	eef0 9a44 	vmov.f32	s19, s8
d00423d4:	e60d      	b.n	d0041ff2 <fillTriangleDitherBayer2Mode+0x5b6>
d00423d6:	eef0 1a62 	vmov.f32	s3, s5
d00423da:	eeb0 2a62 	vmov.f32	s4, s5
d00423de:	e6ef      	b.n	d00421c0 <fillTriangleDitherBayer2Mode+0x784>

d00423e0 <vec3Add>:
d00423e0:	ee30 0a21 	vadd.f32	s0, s0, s3
d00423e4:	b08e      	sub	sp, #56	; 0x38
d00423e6:	ee70 0a82 	vadd.f32	s1, s1, s4
d00423ea:	ee31 1a22 	vadd.f32	s2, s2, s5
d00423ee:	b00e      	add	sp, #56	; 0x38
d00423f0:	4770      	bx	lr
d00423f2:	bf00      	nop

d00423f4 <vec3Scale>:
d00423f4:	ee20 0a21 	vmul.f32	s0, s0, s3
d00423f8:	b08c      	sub	sp, #48	; 0x30
d00423fa:	ee61 0aa0 	vmul.f32	s1, s3, s1
d00423fe:	ee21 1a81 	vmul.f32	s2, s3, s2
d0042402:	b00c      	add	sp, #48	; 0x30
d0042404:	4770      	bx	lr
d0042406:	bf00      	nop

d0042408 <vec3Dot>:
d0042408:	ee20 2a82 	vmul.f32	s4, s1, s4
d004240c:	b086      	sub	sp, #24
d004240e:	eea0 2a21 	vfma.f32	s4, s0, s3
d0042412:	eea1 2a22 	vfma.f32	s4, s2, s5
d0042416:	eeb0 0a42 	vmov.f32	s0, s4
d004241a:	b006      	add	sp, #24
d004241c:	4770      	bx	lr
d004241e:	bf00      	nop

d0042420 <vec3Cross>:
d0042420:	eeb0 7a60 	vmov.f32	s14, s1
d0042424:	b08e      	sub	sp, #56	; 0x38
d0042426:	eef0 7a40 	vmov.f32	s15, s0
d004242a:	ee62 0ac0 	vnmul.f32	s1, s5, s0
d004242e:	ee61 6ac7 	vnmul.f32	s13, s3, s14
d0042432:	ee22 0a41 	vnmul.f32	s0, s4, s2
d0042436:	eee1 0a21 	vfma.f32	s1, s2, s3
d004243a:	eee7 6a82 	vfma.f32	s13, s15, s4
d004243e:	eea7 0a22 	vfma.f32	s0, s14, s5
d0042442:	eeb0 1a66 	vmov.f32	s2, s13
d0042446:	b00e      	add	sp, #56	; 0x38
d0042448:	4770      	bx	lr
d004244a:	bf00      	nop

d004244c <vec3Normalize>:
d004244c:	ee60 7aa0 	vmul.f32	s15, s1, s1
d0042450:	ed9f 7a22 	vldr	s14, [pc, #136]	; d00424dc <vec3Normalize+0x90>
d0042454:	b08c      	sub	sp, #48	; 0x30
d0042456:	eee0 7a00 	vfma.f32	s15, s0, s0
d004245a:	eee1 7a01 	vfma.f32	s15, s2, s2
d004245e:	eef4 7ac7 	vcmpe.f32	s15, s14
d0042462:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042466:	d934      	bls.n	d00424d2 <vec3Normalize+0x86>
d0042468:	ed9f 7a1d 	vldr	s14, [pc, #116]	; d00424e0 <vec3Normalize+0x94>
d004246c:	eef4 7a47 	vcmp.f32	s15, s14
d0042470:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042474:	dd06      	ble.n	d0042484 <vec3Normalize+0x38>
d0042476:	ed9f 7a1b 	vldr	s14, [pc, #108]	; d00424e4 <vec3Normalize+0x98>
d004247a:	eef4 7a47 	vcmp.f32	s15, s14
d004247e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042482:	d418      	bmi.n	d00424b6 <vec3Normalize+0x6a>
d0042484:	ee17 2a90 	vmov	r2, s15
d0042488:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d004248c:	4b16      	ldr	r3, [pc, #88]	; (d00424e8 <vec3Normalize+0x9c>)
d004248e:	eeb7 7a08 	vmov.f32	s14, #120	; 0x3fc00000  1.5
d0042492:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d0042496:	ee67 7a86 	vmul.f32	s15, s15, s12
d004249a:	ee06 3a90 	vmov	s13, r3
d004249e:	ee67 7aa6 	vmul.f32	s15, s15, s13
d00424a2:	eea6 7ae7 	vfms.f32	s14, s13, s15
d00424a6:	ee67 7a26 	vmul.f32	s15, s14, s13
d00424aa:	ee27 0a80 	vmul.f32	s0, s15, s0
d00424ae:	ee67 0aa0 	vmul.f32	s1, s15, s1
d00424b2:	ee27 1a81 	vmul.f32	s2, s15, s2
d00424b6:	ed8d 0a09 	vstr	s0, [sp, #36]	; 0x24
d00424ba:	edcd 0a0a 	vstr	s1, [sp, #40]	; 0x28
d00424be:	ed8d 1a0b 	vstr	s2, [sp, #44]	; 0x2c
d00424c2:	ed9d 0a09 	vldr	s0, [sp, #36]	; 0x24
d00424c6:	eddd 0a0a 	vldr	s1, [sp, #40]	; 0x28
d00424ca:	ed9d 1a0b 	vldr	s2, [sp, #44]	; 0x2c
d00424ce:	b00c      	add	sp, #48	; 0x30
d00424d0:	4770      	bx	lr
d00424d2:	2300      	movs	r3, #0
d00424d4:	9309      	str	r3, [sp, #36]	; 0x24
d00424d6:	930a      	str	r3, [sp, #40]	; 0x28
d00424d8:	930b      	str	r3, [sp, #44]	; 0x2c
d00424da:	e7f2      	b.n	d00424c2 <vec3Normalize+0x76>
d00424dc:	358637bd 	.word	0x358637bd
d00424e0:	3f7fbe77 	.word	0x3f7fbe77
d00424e4:	3f8020c5 	.word	0x3f8020c5
d00424e8:	5f3759df 	.word	0x5f3759df

d00424ec <rotateAroundAxis>:
d00424ec:	ee62 7a02 	vmul.f32	s15, s4, s4
d00424f0:	ed9f 7a51 	vldr	s14, [pc, #324]	; d0042638 <rotateAroundAxis+0x14c>
d00424f4:	b500      	push	{lr}
d00424f6:	eee1 7aa1 	vfma.f32	s15, s3, s3
d00424fa:	ed2d 8b0c 	vpush	{d8-d13}
d00424fe:	eef0 ca40 	vmov.f32	s25, s0
d0042502:	b08f      	sub	sp, #60	; 0x3c
d0042504:	eeb0 ca60 	vmov.f32	s24, s1
d0042508:	eef0 ba41 	vmov.f32	s23, s2
d004250c:	eee2 7aa2 	vfma.f32	s15, s5, s5
d0042510:	eeb0 da43 	vmov.f32	s26, s6
d0042514:	eef4 7ac7 	vcmpe.f32	s15, s14
d0042518:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004251c:	d97c      	bls.n	d0042618 <rotateAroundAxis+0x12c>
d004251e:	ed9f 7a47 	vldr	s14, [pc, #284]	; d004263c <rotateAroundAxis+0x150>
d0042522:	eef4 7a47 	vcmp.f32	s15, s14
d0042526:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004252a:	dd55      	ble.n	d00425d8 <rotateAroundAxis+0xec>
d004252c:	ed9f 7a44 	vldr	s14, [pc, #272]	; d0042640 <rotateAroundAxis+0x154>
d0042530:	eef4 7a47 	vcmp.f32	s15, s14
d0042534:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042538:	d54e      	bpl.n	d00425d8 <rotateAroundAxis+0xec>
d004253a:	eef0 da42 	vmov.f32	s27, s4
d004253e:	eeb0 9a61 	vmov.f32	s18, s3
d0042542:	eeb0 8a62 	vmov.f32	s16, s5
d0042546:	ee60 8a82 	vmul.f32	s17, s1, s4
d004254a:	ee62 5ae0 	vnmul.f32	s11, s5, s1
d004254e:	ee21 6ac1 	vnmul.f32	s12, s3, s2
d0042552:	eeec 8a89 	vfma.f32	s17, s25, s18
d0042556:	ee6d 7aec 	vnmul.f32	s15, s27, s25
d004255a:	eeeb 5aad 	vfma.f32	s11, s23, s27
d004255e:	eeac 6a88 	vfma.f32	s12, s25, s16
d0042562:	eeec 7a09 	vfma.f32	s15, s24, s18
d0042566:	eeeb 8a88 	vfma.f32	s17, s23, s16
d004256a:	eeb0 ba65 	vmov.f32	s22, s11
d004256e:	eeb0 aa46 	vmov.f32	s20, s12
d0042572:	eef0 aa67 	vmov.f32	s21, s15
d0042576:	eeb0 0a4d 	vmov.f32	s0, s26
d004257a:	f003 ff0d 	bl	d0046398 <cosf>
d004257e:	eef0 9a40 	vmov.f32	s19, s0
d0042582:	eeb0 0a4d 	vmov.f32	s0, s26
d0042586:	f004 f8eb 	bl	d0046760 <sinf>
d004258a:	ee60 5a0b 	vmul.f32	s11, s0, s22
d004258e:	ee20 6a0a 	vmul.f32	s12, s0, s20
d0042592:	ee60 7a2a 	vmul.f32	s15, s0, s21
d0042596:	eee9 5aac 	vfma.f32	s11, s19, s25
d004259a:	eea9 6a8c 	vfma.f32	s12, s19, s24
d004259e:	eee9 7aab 	vfma.f32	s15, s19, s23
d00425a2:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d00425a6:	ee29 9a28 	vmul.f32	s18, s18, s17
d00425aa:	ee2d 7aa8 	vmul.f32	s14, s27, s17
d00425ae:	ee76 9ae9 	vsub.f32	s19, s13, s19
d00425b2:	ee28 8a28 	vmul.f32	s16, s16, s17
d00425b6:	eeb0 0a65 	vmov.f32	s0, s11
d00425ba:	eef0 0a46 	vmov.f32	s1, s12
d00425be:	eeb0 1a67 	vmov.f32	s2, s15
d00425c2:	eea9 0a89 	vfma.f32	s0, s19, s18
d00425c6:	eee9 0a87 	vfma.f32	s1, s19, s14
d00425ca:	eea9 1a88 	vfma.f32	s2, s19, s16
d00425ce:	b00f      	add	sp, #60	; 0x3c
d00425d0:	ecbd 8b0c 	vpop	{d8-d13}
d00425d4:	f85d fb04 	ldr.w	pc, [sp], #4
d00425d8:	ee17 2a90 	vmov	r2, s15
d00425dc:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d00425e0:	4b18      	ldr	r3, [pc, #96]	; (d0042644 <rotateAroundAxis+0x158>)
d00425e2:	eeb7 8a08 	vmov.f32	s16, #120	; 0x3fc00000  1.5
d00425e6:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d00425ea:	ee67 7aa6 	vmul.f32	s15, s15, s13
d00425ee:	ee07 3a10 	vmov	s14, r3
d00425f2:	ee67 7a87 	vmul.f32	s15, s15, s14
d00425f6:	eea7 8a67 	vfms.f32	s16, s14, s15
d00425fa:	ee27 8a08 	vmul.f32	s16, s14, s16
d00425fe:	ee62 da08 	vmul.f32	s27, s4, s16
d0042602:	ee21 9a88 	vmul.f32	s18, s3, s16
d0042606:	ee22 8a88 	vmul.f32	s16, s5, s16
d004260a:	ee6c 8a2d 	vmul.f32	s17, s24, s27
d004260e:	ee29 6a6b 	vnmul.f32	s12, s18, s23
d0042612:	ee68 5a4c 	vnmul.f32	s11, s16, s24
d0042616:	e79c      	b.n	d0042552 <rotateAroundAxis+0x66>
d0042618:	eddf 8a0b 	vldr	s17, [pc, #44]	; d0042648 <rotateAroundAxis+0x15c>
d004261c:	eef0 aa68 	vmov.f32	s21, s17
d0042620:	eeb0 aa68 	vmov.f32	s20, s17
d0042624:	eeb0 ba68 	vmov.f32	s22, s17
d0042628:	eeb0 8a68 	vmov.f32	s16, s17
d004262c:	eef0 da68 	vmov.f32	s27, s17
d0042630:	eeb0 9a68 	vmov.f32	s18, s17
d0042634:	e79f      	b.n	d0042576 <rotateAroundAxis+0x8a>
d0042636:	bf00      	nop
d0042638:	358637bd 	.word	0x358637bd
d004263c:	3f7fbe77 	.word	0x3f7fbe77
d0042640:	3f8020c5 	.word	0x3f8020c5
d0042644:	5f3759df 	.word	0x5f3759df
d0042648:	00000000 	.word	0x00000000

d004264c <vec3>:
d004264c:	b088      	sub	sp, #32
d004264e:	b008      	add	sp, #32
d0042650:	4770      	bx	lr
d0042652:	bf00      	nop

d0042654 <powf>:
d0042654:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0042658:	eeb4 0a47 	vcmp.f32	s0, s14
d004265c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042660:	d04e      	beq.n	d0042700 <powf+0xac>
d0042662:	eef5 0a40 	vcmp.f32	s1, #0.0
d0042666:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004266a:	d049      	beq.n	d0042700 <powf+0xac>
d004266c:	eef4 0a47 	vcmp.f32	s1, s14
d0042670:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042674:	d054      	beq.n	d0042720 <powf+0xcc>
d0042676:	eeb5 0a40 	vcmp.f32	s0, #0.0
d004267a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004267e:	d044      	beq.n	d004270a <powf+0xb6>
d0042680:	eefd 7ae0 	vcvt.s32.f32	s15, s1
d0042684:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d0042688:	eef4 6a60 	vcmp.f32	s13, s1
d004268c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042690:	d04e      	beq.n	d0042730 <powf+0xdc>
d0042692:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0042696:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004269a:	d459      	bmi.n	d0042750 <powf+0xfc>
d004269c:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00426a0:	eef4 0a67 	vcmp.f32	s1, s15
d00426a4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00426a8:	d03f      	beq.n	d004272a <powf+0xd6>
d00426aa:	eefe 7a00 	vmov.f32	s15, #224	; 0xbf000000 -0.5
d00426ae:	eef4 0a67 	vcmp.f32	s1, s15
d00426b2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00426b6:	d052      	beq.n	d004275e <powf+0x10a>
d00426b8:	eef0 7a00 	vmov.f32	s15, #0	; 0x40000000  2.0
d00426bc:	eef4 0a67 	vcmp.f32	s1, s15
d00426c0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00426c4:	d052      	beq.n	d004276c <powf+0x118>
d00426c6:	eef0 7a08 	vmov.f32	s15, #8	; 0x40400000  3.0
d00426ca:	eef4 0a67 	vcmp.f32	s1, s15
d00426ce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00426d2:	d04e      	beq.n	d0042772 <powf+0x11e>
d00426d4:	eef1 7a00 	vmov.f32	s15, #16	; 0x40800000  4.0
d00426d8:	eef4 0a67 	vcmp.f32	s1, s15
d00426dc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00426e0:	d042      	beq.n	d0042768 <powf+0x114>
d00426e2:	b500      	push	{lr}
d00426e4:	b083      	sub	sp, #12
d00426e6:	edcd 0a01 	vstr	s1, [sp, #4]
d00426ea:	f003 ffa7 	bl	d004663c <logf>
d00426ee:	eddd 0a01 	vldr	s1, [sp, #4]
d00426f2:	ee20 0a20 	vmul.f32	s0, s0, s1
d00426f6:	b003      	add	sp, #12
d00426f8:	f85d eb04 	ldr.w	lr, [sp], #4
d00426fc:	f003 bf28 	b.w	d0046550 <expf>
d0042700:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0042704:	eeb0 0a67 	vmov.f32	s0, s15
d0042708:	4770      	bx	lr
d004270a:	eef5 0ac0 	vcmpe.f32	s1, #0.0
d004270e:	eddf 7a1d 	vldr	s15, [pc, #116]	; d0042784 <powf+0x130>
d0042712:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042716:	fe70 7a27 	vselgt.f32	s15, s0, s15
d004271a:	eeb0 0a67 	vmov.f32	s0, s15
d004271e:	4770      	bx	lr
d0042720:	eef0 7a40 	vmov.f32	s15, s0
d0042724:	eeb0 0a67 	vmov.f32	s0, s15
d0042728:	4770      	bx	lr
d004272a:	eef1 7ac0 	vsqrt.f32	s15, s0
d004272e:	e7e9      	b.n	d0042704 <powf+0xb0>
d0042730:	ee17 3a90 	vmov	r3, s15
d0042734:	2b00      	cmp	r3, #0
d0042736:	db0e      	blt.n	d0042756 <powf+0x102>
d0042738:	d020      	beq.n	d004277c <powf+0x128>
d004273a:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d004273e:	07da      	lsls	r2, r3, #31
d0042740:	bf48      	it	mi
d0042742:	ee67 7a80 	vmulmi.f32	s15, s15, s0
d0042746:	085b      	lsrs	r3, r3, #1
d0042748:	ee20 0a00 	vmul.f32	s0, s0, s0
d004274c:	d1f7      	bne.n	d004273e <powf+0xea>
d004274e:	e7d9      	b.n	d0042704 <powf+0xb0>
d0042750:	eddf 7a0d 	vldr	s15, [pc, #52]	; d0042788 <powf+0x134>
d0042754:	e7d6      	b.n	d0042704 <powf+0xb0>
d0042756:	ee87 0a00 	vdiv.f32	s0, s14, s0
d004275a:	425b      	negs	r3, r3
d004275c:	e7ed      	b.n	d004273a <powf+0xe6>
d004275e:	eef1 6ac0 	vsqrt.f32	s13, s0
d0042762:	eec7 7a26 	vdiv.f32	s15, s14, s13
d0042766:	e7cd      	b.n	d0042704 <powf+0xb0>
d0042768:	ee20 0a00 	vmul.f32	s0, s0, s0
d004276c:	ee60 7a00 	vmul.f32	s15, s0, s0
d0042770:	e7c8      	b.n	d0042704 <powf+0xb0>
d0042772:	ee60 7a00 	vmul.f32	s15, s0, s0
d0042776:	ee67 7a80 	vmul.f32	s15, s15, s0
d004277a:	e7c3      	b.n	d0042704 <powf+0xb0>
d004277c:	eef0 7a47 	vmov.f32	s15, s14
d0042780:	e7c0      	b.n	d0042704 <powf+0xb0>
d0042782:	bf00      	nop
d0042784:	7f800000 	.word	0x7f800000
d0042788:	7fc00000 	.word	0x7fc00000

d004278c <sb3dParticlesClear>:
d004278c:	4b0f      	ldr	r3, [pc, #60]	; (d00427cc <sb3dParticlesClear+0x40>)
d004278e:	f04f 507e 	mov.w	r0, #1065353216	; 0x3f800000
d0042792:	2100      	movs	r1, #0
d0042794:	2200      	movs	r2, #0
d0042796:	b430      	push	{r4, r5}
d0042798:	f503 5500 	add.w	r5, r3, #8192	; 0x2000
d004279c:	2421      	movs	r4, #33	; 0x21
d004279e:	7699      	strb	r1, [r3, #26]
d00427a0:	3320      	adds	r3, #32
d00427a2:	f843 2c20 	str.w	r2, [r3, #-32]
d00427a6:	f843 2c1c 	str.w	r2, [r3, #-28]
d00427aa:	f843 2c18 	str.w	r2, [r3, #-24]
d00427ae:	f843 0c14 	str.w	r0, [r3, #-20]
d00427b2:	f843 2c10 	str.w	r2, [r3, #-16]
d00427b6:	f843 0c0c 	str.w	r0, [r3, #-12]
d00427ba:	f803 4c08 	strb.w	r4, [r3, #-8]
d00427be:	f803 1c07 	strb.w	r1, [r3, #-7]
d00427c2:	42ab      	cmp	r3, r5
d00427c4:	d1eb      	bne.n	d004279e <sb3dParticlesClear+0x12>
d00427c6:	bc30      	pop	{r4, r5}
d00427c8:	4770      	bx	lr
d00427ca:	bf00      	nop
d00427cc:	d00475c0 	.word	0xd00475c0

d00427d0 <sb3dParticlesRender>:
d00427d0:	2800      	cmp	r0, #0
d00427d2:	f000 82d6 	beq.w	d0042d82 <sb3dParticlesRender+0x5b2>
d00427d6:	edd0 7a02 	vldr	s15, [r0, #8]
d00427da:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00427de:	ed2d 8b10 	vpush	{d8-d15}
d00427e2:	b0c7      	sub	sp, #284	; 0x11c
d00427e4:	4605      	mov	r5, r0
d00427e6:	ed90 ea00 	vldr	s28, [r0]
d00427ea:	edcd 7a15 	vstr	s15, [sp, #84]	; 0x54
d00427ee:	edd0 da01 	vldr	s27, [r0, #4]
d00427f2:	edd0 ca06 	vldr	s25, [r0, #24]
d00427f6:	ed90 ca07 	vldr	s24, [r0, #28]
d00427fa:	edd0 ba08 	vldr	s23, [r0, #32]
d00427fe:	ed90 9a09 	vldr	s18, [r0, #36]	; 0x24
d0042802:	edd0 8a0a 	vldr	s17, [r0, #40]	; 0x28
d0042806:	ed90 8a0b 	vldr	s16, [r0, #44]	; 0x2c
d004280a:	edd0 aa0c 	vldr	s21, [r0, #48]	; 0x30
d004280e:	ed90 aa0d 	vldr	s20, [r0, #52]	; 0x34
d0042812:	edd0 9a0e 	vldr	s19, [r0, #56]	; 0x38
d0042816:	ed90 ba10 	vldr	s22, [r0, #64]	; 0x40
d004281a:	f001 f92d 	bl	d0043a78 <lightsGet>
d004281e:	4cae      	ldr	r4, [pc, #696]	; (d0042ad8 <sb3dParticlesRender+0x308>)
d0042820:	4681      	mov	r9, r0
d0042822:	f001 f92d 	bl	d0043a80 <lightsGetCount>
d0042826:	4680      	mov	r8, r0
d0042828:	f504 5600 	add.w	r6, r4, #8192	; 0x2000
d004282c:	eb09 1780 	add.w	r7, r9, r0, lsl #6
d0042830:	e115      	b.n	d0042a5e <sb3dParticlesRender+0x28e>
d0042832:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d0042836:	edd4 ea04 	vldr	s29, [r4, #16]
d004283a:	ed9f 5aac 	vldr	s10, [pc, #688]	; d0042aec <sb3dParticlesRender+0x31c>
d004283e:	fece ea85 	vmaxnm.f32	s29, s29, s10
d0042842:	fece eac7 	vminnm.f32	s29, s29, s14
d0042846:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d004284a:	f105 0a10 	add.w	sl, r5, #16
d004284e:	eeb0 4a46 	vmov.f32	s8, s12
d0042852:	2250      	movs	r2, #80	; 0x50
d0042854:	eef0 4a66 	vmov.f32	s9, s13
d0042858:	4651      	mov	r1, sl
d004285a:	ee67 7a87 	vmul.f32	s15, s15, s14
d004285e:	4668      	mov	r0, sp
d0042860:	eeb0 5a65 	vmov.f32	s10, s11
d0042864:	eeb0 7a65 	vmov.f32	s14, s11
d0042868:	eeac 6aa7 	vfma.f32	s12, s25, s15
d004286c:	eeac 4ae7 	vfms.f32	s8, s25, s15
d0042870:	eeec 4a67 	vfms.f32	s9, s24, s15
d0042874:	eeec 6a27 	vfma.f32	s13, s24, s15
d0042878:	eeab 5ae7 	vfms.f32	s10, s23, s15
d004287c:	eeab 7aa7 	vfma.f32	s14, s23, s15
d0042880:	eef0 3a46 	vmov.f32	s7, s12
d0042884:	eea9 6a67 	vfms.f32	s12, s18, s15
d0042888:	eeb0 da44 	vmov.f32	s26, s8
d004288c:	eef0 fa64 	vmov.f32	s31, s9
d0042890:	eef0 5a66 	vmov.f32	s11, s13
d0042894:	eeb0 fa45 	vmov.f32	s30, s10
d0042898:	eea9 da27 	vfma.f32	s26, s18, s15
d004289c:	ed8d 6a1c 	vstr	s12, [sp, #112]	; 0x70
d00428a0:	eeb0 6a47 	vmov.f32	s12, s14
d00428a4:	eee8 faa7 	vfma.f32	s31, s17, s15
d00428a8:	eea8 fa27 	vfma.f32	s30, s16, s15
d00428ac:	eea9 4a67 	vfms.f32	s8, s18, s15
d00428b0:	eee9 3a27 	vfma.f32	s7, s18, s15
d00428b4:	eee8 4ae7 	vfms.f32	s9, s17, s15
d00428b8:	ed8d da16 	vstr	s26, [sp, #88]	; 0x58
d00428bc:	eee8 5aa7 	vfma.f32	s11, s17, s15
d00428c0:	eee8 6ae7 	vfms.f32	s13, s17, s15
d00428c4:	edcd fa17 	vstr	s31, [sp, #92]	; 0x5c
d00428c8:	eea8 5a67 	vfms.f32	s10, s16, s15
d00428cc:	ed8d fa18 	vstr	s30, [sp, #96]	; 0x60
d00428d0:	eea8 6a27 	vfma.f32	s12, s16, s15
d00428d4:	ed8d 4a1f 	vstr	s8, [sp, #124]	; 0x7c
d00428d8:	eea8 7a67 	vfms.f32	s14, s16, s15
d00428dc:	edcd 3a19 	vstr	s7, [sp, #100]	; 0x64
d00428e0:	edcd 4a20 	vstr	s9, [sp, #128]	; 0x80
d00428e4:	edcd 5a1a 	vstr	s11, [sp, #104]	; 0x68
d00428e8:	edcd 6a1d 	vstr	s13, [sp, #116]	; 0x74
d00428ec:	ed8d 5a21 	vstr	s10, [sp, #132]	; 0x84
d00428f0:	ed8d 6a1b 	vstr	s12, [sp, #108]	; 0x6c
d00428f4:	ed8d 7a1e 	vstr	s14, [sp, #120]	; 0x78
d00428f8:	f003 fafe 	bl	d0045ef8 <memcpy>
d00428fc:	eeb0 0a4d 	vmov.f32	s0, s26
d0042900:	eef0 0a6f 	vmov.f32	s1, s31
d0042904:	eeb0 1a4f 	vmov.f32	s2, s30
d0042908:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d004290c:	f000 fbfc 	bl	d0043108 <worldToCamera>
d0042910:	ed9d da19 	vldr	s26, [sp, #100]	; 0x64
d0042914:	eddd fa1a 	vldr	s31, [sp, #104]	; 0x68
d0042918:	4651      	mov	r1, sl
d004291a:	ed9d fa1b 	vldr	s30, [sp, #108]	; 0x6c
d004291e:	2250      	movs	r2, #80	; 0x50
d0042920:	4668      	mov	r0, sp
d0042922:	ed8d 0a22 	vstr	s0, [sp, #136]	; 0x88
d0042926:	edcd 0a23 	vstr	s1, [sp, #140]	; 0x8c
d004292a:	ed8d 1a24 	vstr	s2, [sp, #144]	; 0x90
d004292e:	f003 fae3 	bl	d0045ef8 <memcpy>
d0042932:	eeb0 0a4d 	vmov.f32	s0, s26
d0042936:	eef0 0a6f 	vmov.f32	s1, s31
d004293a:	eeb0 1a4f 	vmov.f32	s2, s30
d004293e:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0042942:	f000 fbe1 	bl	d0043108 <worldToCamera>
d0042946:	ed9d da1c 	vldr	s26, [sp, #112]	; 0x70
d004294a:	eddd fa1d 	vldr	s31, [sp, #116]	; 0x74
d004294e:	4651      	mov	r1, sl
d0042950:	ed9d fa1e 	vldr	s30, [sp, #120]	; 0x78
d0042954:	2250      	movs	r2, #80	; 0x50
d0042956:	4668      	mov	r0, sp
d0042958:	ed8d 0a25 	vstr	s0, [sp, #148]	; 0x94
d004295c:	edcd 0a26 	vstr	s1, [sp, #152]	; 0x98
d0042960:	ed8d 1a27 	vstr	s2, [sp, #156]	; 0x9c
d0042964:	f003 fac8 	bl	d0045ef8 <memcpy>
d0042968:	eeb0 0a4d 	vmov.f32	s0, s26
d004296c:	eef0 0a6f 	vmov.f32	s1, s31
d0042970:	eeb0 1a4f 	vmov.f32	s2, s30
d0042974:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0042978:	f000 fbc6 	bl	d0043108 <worldToCamera>
d004297c:	ed9d da1f 	vldr	s26, [sp, #124]	; 0x7c
d0042980:	eddd fa20 	vldr	s31, [sp, #128]	; 0x80
d0042984:	4651      	mov	r1, sl
d0042986:	ed9d fa21 	vldr	s30, [sp, #132]	; 0x84
d004298a:	2250      	movs	r2, #80	; 0x50
d004298c:	4668      	mov	r0, sp
d004298e:	ed8d 0a28 	vstr	s0, [sp, #160]	; 0xa0
d0042992:	edcd 0a29 	vstr	s1, [sp, #164]	; 0xa4
d0042996:	ed8d 1a2a 	vstr	s2, [sp, #168]	; 0xa8
d004299a:	f003 faad 	bl	d0045ef8 <memcpy>
d004299e:	eeb0 0a4d 	vmov.f32	s0, s26
d00429a2:	eef0 0a6f 	vmov.f32	s1, s31
d00429a6:	eeb0 1a4f 	vmov.f32	s2, s30
d00429aa:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d00429ae:	f000 fbab 	bl	d0043108 <worldToCamera>
d00429b2:	eddd 7a24 	vldr	s15, [sp, #144]	; 0x90
d00429b6:	ed8d 0a2b 	vstr	s0, [sp, #172]	; 0xac
d00429ba:	eef4 7acb 	vcmpe.f32	s15, s22
d00429be:	edcd 0a2c 	vstr	s1, [sp, #176]	; 0xb0
d00429c2:	ed8d 1a2d 	vstr	s2, [sp, #180]	; 0xb4
d00429c6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00429ca:	d812      	bhi.n	d00429f2 <sb3dParticlesRender+0x222>
d00429cc:	eddd 7a27 	vldr	s15, [sp, #156]	; 0x9c
d00429d0:	eef4 7acb 	vcmpe.f32	s15, s22
d00429d4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00429d8:	d80b      	bhi.n	d00429f2 <sb3dParticlesRender+0x222>
d00429da:	eddd 7a2a 	vldr	s15, [sp, #168]	; 0xa8
d00429de:	eef4 7acb 	vcmpe.f32	s15, s22
d00429e2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00429e6:	d804      	bhi.n	d00429f2 <sb3dParticlesRender+0x222>
d00429e8:	eeb4 1acb 	vcmpe.f32	s2, s22
d00429ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00429f0:	d931      	bls.n	d0042a56 <sb3dParticlesRender+0x286>
d00429f2:	4629      	mov	r1, r5
d00429f4:	ed9d 3a28 	vldr	s6, [sp, #160]	; 0xa0
d00429f8:	eddd 3a29 	vldr	s7, [sp, #164]	; 0xa4
d00429fc:	a82e      	add	r0, sp, #184	; 0xb8
d00429fe:	ed9d 4a2a 	vldr	s8, [sp, #168]	; 0xa8
d0042a02:	eddd 1a25 	vldr	s3, [sp, #148]	; 0x94
d0042a06:	ed9d 2a26 	vldr	s4, [sp, #152]	; 0x98
d0042a0a:	eddd 2a27 	vldr	s5, [sp, #156]	; 0x9c
d0042a0e:	ed9d 0a22 	vldr	s0, [sp, #136]	; 0x88
d0042a12:	eddd 0a23 	vldr	s1, [sp, #140]	; 0x8c
d0042a16:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d0042a1a:	f001 f881 	bl	d0043b20 <clipTriangleToFrustum>
d0042a1e:	2802      	cmp	r0, #2
d0042a20:	f300 8156 	bgt.w	d0042cd0 <sb3dParticlesRender+0x500>
d0042a24:	a82e      	add	r0, sp, #184	; 0xb8
d0042a26:	4629      	mov	r1, r5
d0042a28:	ed9d 3a2b 	vldr	s6, [sp, #172]	; 0xac
d0042a2c:	eddd 3a2c 	vldr	s7, [sp, #176]	; 0xb0
d0042a30:	ed9d 4a2d 	vldr	s8, [sp, #180]	; 0xb4
d0042a34:	eddd 1a28 	vldr	s3, [sp, #160]	; 0xa0
d0042a38:	ed9d 2a29 	vldr	s4, [sp, #164]	; 0xa4
d0042a3c:	eddd 2a2a 	vldr	s5, [sp, #168]	; 0xa8
d0042a40:	ed9d 0a22 	vldr	s0, [sp, #136]	; 0x88
d0042a44:	eddd 0a23 	vldr	s1, [sp, #140]	; 0x8c
d0042a48:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d0042a4c:	f001 f868 	bl	d0043b20 <clipTriangleToFrustum>
d0042a50:	2802      	cmp	r0, #2
d0042a52:	f300 8105 	bgt.w	d0042c60 <sb3dParticlesRender+0x490>
d0042a56:	3420      	adds	r4, #32
d0042a58:	42a6      	cmp	r6, r4
d0042a5a:	f000 8134 	beq.w	d0042cc6 <sb3dParticlesRender+0x4f6>
d0042a5e:	7ea3      	ldrb	r3, [r4, #26]
d0042a60:	2b00      	cmp	r3, #0
d0042a62:	d0f8      	beq.n	d0042a56 <sb3dParticlesRender+0x286>
d0042a64:	edd4 7a03 	vldr	s15, [r4, #12]
d0042a68:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0042a6c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042a70:	d9f1      	bls.n	d0042a56 <sb3dParticlesRender+0x286>
d0042a72:	edd4 6a01 	vldr	s13, [r4, #4]
d0042a76:	eeb1 5a67 	vneg.f32	s10, s15
d0042a7a:	ed94 6a00 	vldr	s12, [r4]
d0042a7e:	ee36 7aed 	vsub.f32	s14, s13, s27
d0042a82:	edd4 5a02 	vldr	s11, [r4, #8]
d0042a86:	ee36 4a4e 	vsub.f32	s8, s12, s28
d0042a8a:	eddd 4a15 	vldr	s9, [sp, #84]	; 0x54
d0042a8e:	ee27 7a0a 	vmul.f32	s14, s14, s20
d0042a92:	ee75 4ae4 	vsub.f32	s9, s11, s9
d0042a96:	eeaa 7a84 	vfma.f32	s14, s21, s8
d0042a9a:	eea9 7aa4 	vfma.f32	s14, s19, s9
d0042a9e:	eeb4 5ac7 	vcmpe.f32	s10, s14
d0042aa2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042aa6:	dad6      	bge.n	d0042a56 <sb3dParticlesRender+0x286>
d0042aa8:	ed94 7a05 	vldr	s14, [r4, #20]
d0042aac:	ed9f 5a0b 	vldr	s10, [pc, #44]	; d0042adc <sb3dParticlesRender+0x30c>
d0042ab0:	eeb4 7ac5 	vcmpe.f32	s14, s10
d0042ab4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042ab8:	f67f aebb 	bls.w	d0042832 <sb3dParticlesRender+0x62>
d0042abc:	f1b8 0f00 	cmp.w	r8, #0
d0042ac0:	f340 809e 	ble.w	d0042c00 <sb3dParticlesRender+0x430>
d0042ac4:	eeb7 4a00 	vmov.f32	s8, #112	; 0x3f800000  1.0
d0042ac8:	464b      	mov	r3, r9
d0042aca:	eeb5 3a00 	vmov.f32	s6, #80	; 0x3e800000  0.250
d0042ace:	ed9f 0a05 	vldr	s0, [pc, #20]	; d0042ae4 <sb3dParticlesRender+0x314>
d0042ad2:	eef6 3a08 	vmov.f32	s7, #104	; 0x3f400000  0.750
d0042ad6:	e07e      	b.n	d0042bd6 <sb3dParticlesRender+0x406>
d0042ad8:	d00475c0 	.word	0xd00475c0
d0042adc:	38d1b717 	.word	0x38d1b717
d0042ae0:	358637bd 	.word	0x358637bd
d0042ae4:	3dcccccd 	.word	0x3dcccccd
d0042ae8:	3b808081 	.word	0x3b808081
d0042aec:	00000000 	.word	0x00000000
d0042af0:	edd3 7a02 	vldr	s15, [r3, #8]
d0042af4:	edd3 4a01 	vldr	s9, [r3, #4]
d0042af8:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0042afc:	ed93 7a03 	vldr	s14, [r3, #12]
d0042b00:	ee74 4ac6 	vsub.f32	s9, s9, s12
d0042b04:	ed93 2a0a 	vldr	s4, [r3, #40]	; 0x28
d0042b08:	ee37 7a65 	vsub.f32	s14, s14, s11
d0042b0c:	ee27 5aa7 	vmul.f32	s10, s15, s15
d0042b10:	ee62 2a02 	vmul.f32	s5, s4, s4
d0042b14:	eea4 5aa4 	vfma.f32	s10, s9, s9
d0042b18:	eea7 5a07 	vfma.f32	s10, s14, s14
d0042b1c:	eeb4 5a62 	vcmp.f32	s10, s5
d0042b20:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042b24:	d554      	bpl.n	d0042bd0 <sb3dParticlesRender+0x400>
d0042b26:	ed5f 2a12 	vldr	s5, [pc, #-72]	; d0042ae0 <sb3dParticlesRender+0x310>
d0042b2a:	eeb4 5a62 	vcmp.f32	s10, s5
d0042b2e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042b32:	dd4d      	ble.n	d0042bd0 <sb3dParticlesRender+0x400>
d0042b34:	eef1 0ac5 	vsqrt.f32	s1, s10
d0042b38:	edd3 1a08 	vldr	s3, [r3, #32]
d0042b3c:	ee21 1aa1 	vmul.f32	s2, s3, s3
d0042b40:	eeb4 5ac1 	vcmpe.f32	s10, s2
d0042b44:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042b48:	eec4 2a20 	vdiv.f32	s5, s8, s1
d0042b4c:	ee64 4aa2 	vmul.f32	s9, s9, s5
d0042b50:	ee67 7aa2 	vmul.f32	s15, s15, s5
d0042b54:	ee27 7a22 	vmul.f32	s14, s14, s5
d0042b58:	f240 80e9 	bls.w	d0042d2e <sb3dParticlesRender+0x55e>
d0042b5c:	ed93 1a09 	vldr	s2, [r3, #36]	; 0x24
d0042b60:	eef4 1ac1 	vcmpe.f32	s3, s2
d0042b64:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042b68:	da32      	bge.n	d0042bd0 <sb3dParticlesRender+0x400>
d0042b6a:	eeb4 2ac1 	vcmpe.f32	s4, s2
d0042b6e:	ee25 5a22 	vmul.f32	s10, s10, s5
d0042b72:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042b76:	eeb4 1ac5 	vcmpe.f32	s2, s10
d0042b7a:	f200 80db 	bhi.w	d0042d34 <sb3dParticlesRender+0x564>
d0042b7e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042b82:	d925      	bls.n	d0042bd0 <sb3dParticlesRender+0x400>
d0042b84:	ee75 2a61 	vsub.f32	s5, s10, s3
d0042b88:	ee31 2a61 	vsub.f32	s4, s2, s3
d0042b8c:	ee82 5a82 	vdiv.f32	s10, s5, s4
d0042b90:	ed5f 2a2a 	vldr	s5, [pc, #-168]	; d0042aec <sb3dParticlesRender+0x31c>
d0042b94:	fe85 5a22 	vmaxnm.f32	s10, s10, s5
d0042b98:	fe85 5a44 	vminnm.f32	s10, s10, s8
d0042b9c:	ee34 5a45 	vsub.f32	s10, s8, s10
d0042ba0:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d0042ba4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042ba8:	d912      	bls.n	d0042bd0 <sb3dParticlesRender+0x400>
d0042baa:	ee67 7a8a 	vmul.f32	s15, s15, s20
d0042bae:	eee4 7aaa 	vfma.f32	s15, s9, s21
d0042bb2:	eee7 7a29 	vfma.f32	s15, s14, s19
d0042bb6:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0042bba:	eeb1 7a67 	vneg.f32	s14, s15
d0042bbe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042bc2:	da05      	bge.n	d0042bd0 <sb3dParticlesRender+0x400>
d0042bc4:	edd3 7a07 	vldr	s15, [r3, #28]
d0042bc8:	ee25 5a27 	vmul.f32	s10, s10, s15
d0042bcc:	eea5 0a07 	vfma.f32	s0, s10, s14
d0042bd0:	3340      	adds	r3, #64	; 0x40
d0042bd2:	429f      	cmp	r7, r3
d0042bd4:	d016      	beq.n	d0042c04 <sb3dParticlesRender+0x434>
d0042bd6:	6ada      	ldr	r2, [r3, #44]	; 0x2c
d0042bd8:	2a00      	cmp	r2, #0
d0042bda:	d0f9      	beq.n	d0042bd0 <sb3dParticlesRender+0x400>
d0042bdc:	781a      	ldrb	r2, [r3, #0]
d0042bde:	2a00      	cmp	r2, #0
d0042be0:	d086      	beq.n	d0042af0 <sb3dParticlesRender+0x320>
d0042be2:	edd3 4a04 	vldr	s9, [r3, #16]
d0042be6:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0042bea:	edd3 7a05 	vldr	s15, [r3, #20]
d0042bee:	ed93 7a06 	vldr	s14, [r3, #24]
d0042bf2:	eef1 4a64 	vneg.f32	s9, s9
d0042bf6:	eef1 7a67 	vneg.f32	s15, s15
d0042bfa:	eeb1 7a47 	vneg.f32	s14, s14
d0042bfe:	e7d4      	b.n	d0042baa <sb3dParticlesRender+0x3da>
d0042c00:	ed1f 0a48 	vldr	s0, [pc, #-288]	; d0042ae4 <sb3dParticlesRender+0x314>
d0042c04:	7e63      	ldrb	r3, [r4, #25]
d0042c06:	eeb7 fa00 	vmov.f32	s30, #112	; 0x3f800000  1.0
d0042c0a:	ed1f 7a49 	vldr	s14, [pc, #-292]	; d0042ae8 <sb3dParticlesRender+0x318>
d0042c0e:	ee07 3a90 	vmov	s15, r3
d0042c12:	ed1f da4a 	vldr	s26, [pc, #-296]	; d0042aec <sb3dParticlesRender+0x31c>
d0042c16:	eef8 7a67 	vcvt.f32.u32	s15, s15
d0042c1a:	ee67 7a87 	vmul.f32	s15, s15, s14
d0042c1e:	fec7 7a8d 	vmaxnm.f32	s15, s15, s26
d0042c22:	fe87 0a80 	vmaxnm.f32	s0, s15, s0
d0042c26:	fe80 0a4f 	vminnm.f32	s0, s0, s30
d0042c2a:	f000 ff0d 	bl	d0043a48 <brightnessToShadeF>
d0042c2e:	edd4 ea05 	vldr	s29, [r4, #20]
d0042c32:	ed94 5a04 	vldr	s10, [r4, #16]
d0042c36:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d0042c3a:	ee3f fa6e 	vsub.f32	s30, s30, s29
d0042c3e:	edd4 7a03 	vldr	s15, [r4, #12]
d0042c42:	ee60 ea2e 	vmul.f32	s29, s0, s29
d0042c46:	ed94 6a00 	vldr	s12, [r4]
d0042c4a:	edd4 6a01 	vldr	s13, [r4, #4]
d0042c4e:	edd4 5a02 	vldr	s11, [r4, #8]
d0042c52:	eee5 ea0f 	vfma.f32	s29, s10, s30
d0042c56:	fece ea8d 	vmaxnm.f32	s29, s29, s26
d0042c5a:	fece eac7 	vminnm.f32	s29, s29, s14
d0042c5e:	e5f2      	b.n	d0042846 <sb3dParticlesRender+0x76>
d0042c60:	f100 3aff 	add.w	sl, r0, #4294967295	; 0xffffffff
d0042c64:	f04f 0b01 	mov.w	fp, #1
d0042c68:	465b      	mov	r3, fp
d0042c6a:	f10b 0b01 	add.w	fp, fp, #1
d0042c6e:	a946      	add	r1, sp, #280	; 0x118
d0042c70:	eef0 4a6e 	vmov.f32	s9, s29
d0042c74:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0042c78:	7e62      	ldrb	r2, [r4, #25]
d0042c7a:	eb0b 004b 	add.w	r0, fp, fp, lsl #1
d0042c7e:	ed9d 0a2e 	vldr	s0, [sp, #184]	; 0xb8
d0042c82:	eb01 0383 	add.w	r3, r1, r3, lsl #2
d0042c86:	eddd 0a2f 	vldr	s1, [sp, #188]	; 0xbc
d0042c8a:	eb01 0080 	add.w	r0, r1, r0, lsl #2
d0042c8e:	ed9d 1a30 	vldr	s2, [sp, #192]	; 0xc0
d0042c92:	f1a3 0c60 	sub.w	ip, r3, #96	; 0x60
d0042c96:	ed53 1a18 	vldr	s3, [r3, #-96]	; 0xffffffa0
d0042c9a:	ed10 3a18 	vldr	s6, [r0, #-96]	; 0xffffffa0
d0042c9e:	f1a0 0360 	sub.w	r3, r0, #96	; 0x60
d0042ca2:	7e21      	ldrb	r1, [r4, #24]
d0042ca4:	4628      	mov	r0, r5
d0042ca6:	ed9c 2a01 	vldr	s4, [ip, #4]
d0042caa:	eddc 2a02 	vldr	s5, [ip, #8]
d0042cae:	edd3 3a01 	vldr	s7, [r3, #4]
d0042cb2:	ed93 4a02 	vldr	s8, [r3, #8]
d0042cb6:	f001 fb8f 	bl	d00443d8 <submitClippedTri>
d0042cba:	45d3      	cmp	fp, sl
d0042cbc:	d1d4      	bne.n	d0042c68 <sb3dParticlesRender+0x498>
d0042cbe:	3420      	adds	r4, #32
d0042cc0:	42a6      	cmp	r6, r4
d0042cc2:	f47f aecc 	bne.w	d0042a5e <sb3dParticlesRender+0x28e>
d0042cc6:	b047      	add	sp, #284	; 0x11c
d0042cc8:	ecbd 8b10 	vpop	{d8-d15}
d0042ccc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0042cd0:	f100 3aff 	add.w	sl, r0, #4294967295	; 0xffffffff
d0042cd4:	f04f 0b01 	mov.w	fp, #1
d0042cd8:	465b      	mov	r3, fp
d0042cda:	aa46      	add	r2, sp, #280	; 0x118
d0042cdc:	f10b 0b01 	add.w	fp, fp, #1
d0042ce0:	a846      	add	r0, sp, #280	; 0x118
d0042ce2:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0042ce6:	eef0 4a6e 	vmov.f32	s9, s29
d0042cea:	eb0b 014b 	add.w	r1, fp, fp, lsl #1
d0042cee:	ed9d 0a2e 	vldr	s0, [sp, #184]	; 0xb8
d0042cf2:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0042cf6:	eddd 0a2f 	vldr	s1, [sp, #188]	; 0xbc
d0042cfa:	eb00 0181 	add.w	r1, r0, r1, lsl #2
d0042cfe:	ed9d 1a30 	vldr	s2, [sp, #192]	; 0xc0
d0042d02:	7e62      	ldrb	r2, [r4, #25]
d0042d04:	4628      	mov	r0, r5
d0042d06:	ed11 3a18 	vldr	s6, [r1, #-96]	; 0xffffffa0
d0042d0a:	f1a3 0c60 	sub.w	ip, r3, #96	; 0x60
d0042d0e:	ed51 3a17 	vldr	s7, [r1, #-92]	; 0xffffffa4
d0042d12:	ed11 4a16 	vldr	s8, [r1, #-88]	; 0xffffffa8
d0042d16:	ed53 1a18 	vldr	s3, [r3, #-96]	; 0xffffffa0
d0042d1a:	7e21      	ldrb	r1, [r4, #24]
d0042d1c:	ed9c 2a01 	vldr	s4, [ip, #4]
d0042d20:	eddc 2a02 	vldr	s5, [ip, #8]
d0042d24:	f001 fb58 	bl	d00443d8 <submitClippedTri>
d0042d28:	45d3      	cmp	fp, sl
d0042d2a:	d1d5      	bne.n	d0042cd8 <sb3dParticlesRender+0x508>
d0042d2c:	e67a      	b.n	d0042a24 <sb3dParticlesRender+0x254>
d0042d2e:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0042d32:	e73a      	b.n	d0042baa <sb3dParticlesRender+0x3da>
d0042d34:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042d38:	db12      	blt.n	d0042d60 <sb3dParticlesRender+0x590>
d0042d3a:	ee35 5a61 	vsub.f32	s10, s10, s3
d0042d3e:	ee31 2a61 	vsub.f32	s4, s2, s3
d0042d42:	eec5 2a02 	vdiv.f32	s5, s10, s4
d0042d46:	ed1f 5a97 	vldr	s10, [pc, #-604]	; d0042aec <sb3dParticlesRender+0x31c>
d0042d4a:	fe82 5a85 	vmaxnm.f32	s10, s5, s10
d0042d4e:	eef0 2a44 	vmov.f32	s5, s8
d0042d52:	fe85 5a44 	vminnm.f32	s10, s10, s8
d0042d56:	eee5 2a63 	vfms.f32	s5, s10, s7
d0042d5a:	eeb0 5a62 	vmov.f32	s10, s5
d0042d5e:	e71f      	b.n	d0042ba0 <sb3dParticlesRender+0x3d0>
d0042d60:	ee75 2a41 	vsub.f32	s5, s10, s2
d0042d64:	ee32 2a41 	vsub.f32	s4, s4, s2
d0042d68:	ee82 5a82 	vdiv.f32	s10, s5, s4
d0042d6c:	ed5f 2aa1 	vldr	s5, [pc, #-644]	; d0042aec <sb3dParticlesRender+0x31c>
d0042d70:	fe85 5a22 	vmaxnm.f32	s10, s10, s5
d0042d74:	fe85 5a44 	vminnm.f32	s10, s10, s8
d0042d78:	ee34 5a45 	vsub.f32	s10, s8, s10
d0042d7c:	ee25 5a03 	vmul.f32	s10, s10, s6
d0042d80:	e70e      	b.n	d0042ba0 <sb3dParticlesRender+0x3d0>
d0042d82:	4770      	bx	lr

d0042d84 <worldClear>:
d0042d84:	f44f 42c0 	mov.w	r2, #24576	; 0x6000
d0042d88:	2100      	movs	r1, #0
d0042d8a:	4801      	ldr	r0, [pc, #4]	; (d0042d90 <worldClear+0xc>)
d0042d8c:	f003 b8c2 	b.w	d0045f14 <memset>
d0042d90:	d00e1cc0 	.word	0xd00e1cc0

d0042d94 <cameraCreate>:
d0042d94:	b510      	push	{r4, lr}
d0042d96:	4604      	mov	r4, r0
d0042d98:	2260      	movs	r2, #96	; 0x60
d0042d9a:	4902      	ldr	r1, [pc, #8]	; (d0042da4 <cameraCreate+0x10>)
d0042d9c:	f003 f8ac 	bl	d0045ef8 <memcpy>
d0042da0:	4620      	mov	r0, r4
d0042da2:	bd10      	pop	{r4, pc}
d0042da4:	d0046cc0 	.word	0xd0046cc0

d0042da8 <cameraSetPosition>:
d0042da8:	b084      	sub	sp, #16
d0042daa:	ed8d 0a01 	vstr	s0, [sp, #4]
d0042dae:	edcd 0a02 	vstr	s1, [sp, #8]
d0042db2:	ed8d 1a03 	vstr	s2, [sp, #12]
d0042db6:	b128      	cbz	r0, d0042dc4 <cameraSetPosition+0x1c>
d0042db8:	aa04      	add	r2, sp, #16
d0042dba:	4603      	mov	r3, r0
d0042dbc:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0042dc0:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0042dc4:	b004      	add	sp, #16
d0042dc6:	4770      	bx	lr

d0042dc8 <cameraNormalize>:
d0042dc8:	edd0 0a0d 	vldr	s1, [r0, #52]	; 0x34
d0042dcc:	ed90 1a0e 	vldr	s2, [r0, #56]	; 0x38
d0042dd0:	ed90 0a0c 	vldr	s0, [r0, #48]	; 0x30
d0042dd4:	b510      	push	{r4, lr}
d0042dd6:	4604      	mov	r4, r0
d0042dd8:	f7ff fb38 	bl	d004244c <vec3Normalize>
d0042ddc:	eeb0 7a60 	vmov.f32	s14, s1
d0042de0:	eef0 7a41 	vmov.f32	s15, s2
d0042de4:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0042de8:	ed94 0a06 	vldr	s0, [r4, #24]
d0042dec:	ed84 7a0d 	vstr	s14, [r4, #52]	; 0x34
d0042df0:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d0042df4:	edd4 0a07 	vldr	s1, [r4, #28]
d0042df8:	ed94 1a08 	vldr	s2, [r4, #32]
d0042dfc:	f7ff fb26 	bl	d004244c <vec3Normalize>
d0042e00:	eef0 1a40 	vmov.f32	s3, s0
d0042e04:	eeb0 2a60 	vmov.f32	s4, s1
d0042e08:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0042e0c:	eef0 2a41 	vmov.f32	s5, s2
d0042e10:	edc4 0a07 	vstr	s1, [r4, #28]
d0042e14:	ed84 1a08 	vstr	s2, [r4, #32]
d0042e18:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0042e1c:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0042e20:	edc4 1a06 	vstr	s3, [r4, #24]
d0042e24:	f7ff fafc 	bl	d0042420 <vec3Cross>
d0042e28:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0042e2c:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0042e30:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0042e34:	f7ff fb0a 	bl	d004244c <vec3Normalize>
d0042e38:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0042e3c:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0042e40:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0042e44:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0042e48:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0042e4c:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0042e50:	f7ff fae6 	bl	d0042420 <vec3Cross>
d0042e54:	ed84 0a06 	vstr	s0, [r4, #24]
d0042e58:	edc4 0a07 	vstr	s1, [r4, #28]
d0042e5c:	ed84 1a08 	vstr	s2, [r4, #32]
d0042e60:	f7ff faf4 	bl	d004244c <vec3Normalize>
d0042e64:	ed84 0a06 	vstr	s0, [r4, #24]
d0042e68:	edc4 0a07 	vstr	s1, [r4, #28]
d0042e6c:	ed84 1a08 	vstr	s2, [r4, #32]
d0042e70:	bd10      	pop	{r4, pc}
d0042e72:	bf00      	nop

d0042e74 <cameraTurn>:
d0042e74:	2800      	cmp	r0, #0
d0042e76:	f000 8144 	beq.w	d0043102 <cameraTurn+0x28e>
d0042e7a:	b570      	push	{r4, r5, r6, lr}
d0042e7c:	4604      	mov	r4, r0
d0042e7e:	ed2d 8b04 	vpush	{d8-d9}
d0042e82:	eef0 8a40 	vmov.f32	s17, s0
d0042e86:	b08a      	sub	sp, #40	; 0x28
d0042e88:	eeb0 9a60 	vmov.f32	s18, s1
d0042e8c:	eeb0 8a41 	vmov.f32	s16, s2
d0042e90:	bb69      	cbnz	r1, d0042eee <cameraTurn+0x7a>
d0042e92:	f100 0318 	add.w	r3, r0, #24
d0042e96:	ae01      	add	r6, sp, #4
d0042e98:	f100 0524 	add.w	r5, r0, #36	; 0x24
d0042e9c:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0042ea0:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0042ea4:	f104 0330 	add.w	r3, r4, #48	; 0x30
d0042ea8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042eac:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0042eb0:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d0042eb4:	ae04      	add	r6, sp, #16
d0042eb6:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0042eba:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0042ebe:	ab0a      	add	r3, sp, #40	; 0x28
d0042ec0:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0042ec4:	d14a      	bne.n	d0042f5c <cameraTurn+0xe8>
d0042ec6:	eef5 8a40 	vcmp.f32	s17, #0.0
d0042eca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042ece:	f040 808d 	bne.w	d0042fec <cameraTurn+0x178>
d0042ed2:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0042ed6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042eda:	f040 80cf 	bne.w	d004307c <cameraTurn+0x208>
d0042ede:	4620      	mov	r0, r4
d0042ee0:	b00a      	add	sp, #40	; 0x28
d0042ee2:	ecbd 8b04 	vpop	{d8-d9}
d0042ee6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0042eea:	f7ff bf6d 	b.w	d0042dc8 <cameraNormalize>
d0042eee:	ed9f 1a85 	vldr	s2, [pc, #532]	; d0043104 <cameraTurn+0x290>
d0042ef2:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0042ef6:	eef0 0a41 	vmov.f32	s1, s2
d0042efa:	f7ff fba7 	bl	d004264c <vec3>
d0042efe:	eef0 7a41 	vmov.f32	s15, s2
d0042f02:	ed9f 1a80 	vldr	s2, [pc, #512]	; d0043104 <cameraTurn+0x290>
d0042f06:	eeb0 7a60 	vmov.f32	s14, s1
d0042f0a:	ed8d 0a01 	vstr	s0, [sp, #4]
d0042f0e:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d0042f12:	edcd 7a03 	vstr	s15, [sp, #12]
d0042f16:	eeb0 0a41 	vmov.f32	s0, s2
d0042f1a:	ed8d 7a02 	vstr	s14, [sp, #8]
d0042f1e:	f7ff fb95 	bl	d004264c <vec3>
d0042f22:	eeb0 7a60 	vmov.f32	s14, s1
d0042f26:	eddf 0a77 	vldr	s1, [pc, #476]	; d0043104 <cameraTurn+0x290>
d0042f2a:	eef0 7a41 	vmov.f32	s15, s2
d0042f2e:	ed8d 0a04 	vstr	s0, [sp, #16]
d0042f32:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d0042f36:	eeb0 0a60 	vmov.f32	s0, s1
d0042f3a:	ed8d 7a05 	vstr	s14, [sp, #20]
d0042f3e:	edcd 7a06 	vstr	s15, [sp, #24]
d0042f42:	f7ff fb83 	bl	d004264c <vec3>
d0042f46:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0042f4a:	edcd 0a08 	vstr	s1, [sp, #32]
d0042f4e:	ed8d 0a07 	vstr	s0, [sp, #28]
d0042f52:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d0042f56:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042f5a:	d0b4      	beq.n	d0042ec6 <cameraTurn+0x52>
d0042f5c:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0042f60:	eeb0 3a49 	vmov.f32	s6, s18
d0042f64:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0042f68:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0042f6c:	eddd 1a04 	vldr	s3, [sp, #16]
d0042f70:	ed9d 2a05 	vldr	s4, [sp, #20]
d0042f74:	eddd 2a06 	vldr	s5, [sp, #24]
d0042f78:	f7ff fab8 	bl	d00424ec <rotateAroundAxis>
d0042f7c:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0042f80:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0042f84:	eeb0 3a49 	vmov.f32	s6, s18
d0042f88:	ed94 0a06 	vldr	s0, [r4, #24]
d0042f8c:	edd4 0a07 	vldr	s1, [r4, #28]
d0042f90:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0042f94:	ed94 1a08 	vldr	s2, [r4, #32]
d0042f98:	eddd 1a04 	vldr	s3, [sp, #16]
d0042f9c:	ed9d 2a05 	vldr	s4, [sp, #20]
d0042fa0:	eddd 2a06 	vldr	s5, [sp, #24]
d0042fa4:	f7ff faa2 	bl	d00424ec <rotateAroundAxis>
d0042fa8:	eeb0 3a49 	vmov.f32	s6, s18
d0042fac:	ed84 0a06 	vstr	s0, [r4, #24]
d0042fb0:	edc4 0a07 	vstr	s1, [r4, #28]
d0042fb4:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0042fb8:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0042fbc:	ed84 1a08 	vstr	s2, [r4, #32]
d0042fc0:	eddd 1a04 	vldr	s3, [sp, #16]
d0042fc4:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0042fc8:	ed9d 2a05 	vldr	s4, [sp, #20]
d0042fcc:	eddd 2a06 	vldr	s5, [sp, #24]
d0042fd0:	f7ff fa8c 	bl	d00424ec <rotateAroundAxis>
d0042fd4:	eef5 8a40 	vcmp.f32	s17, #0.0
d0042fd8:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0042fdc:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0042fe0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042fe4:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0042fe8:	f43f af73 	beq.w	d0042ed2 <cameraTurn+0x5e>
d0042fec:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0042ff0:	eeb0 3a68 	vmov.f32	s6, s17
d0042ff4:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0042ff8:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0042ffc:	eddd 1a01 	vldr	s3, [sp, #4]
d0043000:	ed9d 2a02 	vldr	s4, [sp, #8]
d0043004:	eddd 2a03 	vldr	s5, [sp, #12]
d0043008:	f7ff fa70 	bl	d00424ec <rotateAroundAxis>
d004300c:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0043010:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0043014:	eeb0 3a68 	vmov.f32	s6, s17
d0043018:	ed94 0a06 	vldr	s0, [r4, #24]
d004301c:	edd4 0a07 	vldr	s1, [r4, #28]
d0043020:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0043024:	ed94 1a08 	vldr	s2, [r4, #32]
d0043028:	eddd 1a01 	vldr	s3, [sp, #4]
d004302c:	ed9d 2a02 	vldr	s4, [sp, #8]
d0043030:	eddd 2a03 	vldr	s5, [sp, #12]
d0043034:	f7ff fa5a 	bl	d00424ec <rotateAroundAxis>
d0043038:	eeb0 3a68 	vmov.f32	s6, s17
d004303c:	ed84 0a06 	vstr	s0, [r4, #24]
d0043040:	edc4 0a07 	vstr	s1, [r4, #28]
d0043044:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0043048:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d004304c:	ed84 1a08 	vstr	s2, [r4, #32]
d0043050:	eddd 1a01 	vldr	s3, [sp, #4]
d0043054:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0043058:	ed9d 2a02 	vldr	s4, [sp, #8]
d004305c:	eddd 2a03 	vldr	s5, [sp, #12]
d0043060:	f7ff fa44 	bl	d00424ec <rotateAroundAxis>
d0043064:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0043068:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d004306c:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0043070:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043074:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0043078:	f43f af31 	beq.w	d0042ede <cameraTurn+0x6a>
d004307c:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0043080:	eeb0 3a48 	vmov.f32	s6, s16
d0043084:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0043088:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d004308c:	eddd 1a07 	vldr	s3, [sp, #28]
d0043090:	ed9d 2a08 	vldr	s4, [sp, #32]
d0043094:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0043098:	f7ff fa28 	bl	d00424ec <rotateAroundAxis>
d004309c:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d00430a0:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d00430a4:	eeb0 3a48 	vmov.f32	s6, s16
d00430a8:	ed94 0a06 	vldr	s0, [r4, #24]
d00430ac:	edd4 0a07 	vldr	s1, [r4, #28]
d00430b0:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d00430b4:	ed94 1a08 	vldr	s2, [r4, #32]
d00430b8:	eddd 1a07 	vldr	s3, [sp, #28]
d00430bc:	ed9d 2a08 	vldr	s4, [sp, #32]
d00430c0:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d00430c4:	f7ff fa12 	bl	d00424ec <rotateAroundAxis>
d00430c8:	ed84 0a06 	vstr	s0, [r4, #24]
d00430cc:	edc4 0a07 	vstr	s1, [r4, #28]
d00430d0:	eeb0 3a48 	vmov.f32	s6, s16
d00430d4:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d00430d8:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d00430dc:	ed84 1a08 	vstr	s2, [r4, #32]
d00430e0:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d00430e4:	eddd 1a07 	vldr	s3, [sp, #28]
d00430e8:	ed9d 2a08 	vldr	s4, [sp, #32]
d00430ec:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d00430f0:	f7ff f9fc 	bl	d00424ec <rotateAroundAxis>
d00430f4:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d00430f8:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d00430fc:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0043100:	e6ed      	b.n	d0042ede <cameraTurn+0x6a>
d0043102:	4770      	bx	lr
d0043104:	00000000 	.word	0x00000000

d0043108 <worldToCamera>:
d0043108:	b084      	sub	sp, #16
d004310a:	b510      	push	{r4, lr}
d004310c:	ed2d 8b02 	vpush	{d8}
d0043110:	b0ac      	sub	sp, #176	; 0xb0
d0043112:	f10d 042f 	add.w	r4, sp, #47	; 0x2f
d0043116:	f10d 0cc0 	add.w	ip, sp, #192	; 0xc0
d004311a:	ed8d 0a23 	vstr	s0, [sp, #140]	; 0x8c
d004311e:	f024 041f 	bic.w	r4, r4, #31
d0043122:	edcd 0a24 	vstr	s1, [sp, #144]	; 0x90
d0043126:	ed8d 1a25 	vstr	s2, [sp, #148]	; 0x94
d004312a:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d004312e:	2260      	movs	r2, #96	; 0x60
d0043130:	4661      	mov	r1, ip
d0043132:	4620      	mov	r0, r4
d0043134:	f002 fee0 	bl	d0045ef8 <memcpy>
d0043138:	edd4 7a00 	vldr	s15, [r4]
d004313c:	ed9d 0a23 	vldr	s0, [sp, #140]	; 0x8c
d0043140:	ed94 7a01 	vldr	s14, [r4, #4]
d0043144:	ee30 0a67 	vsub.f32	s0, s0, s15
d0043148:	eddd 0a24 	vldr	s1, [sp, #144]	; 0x90
d004314c:	edd4 7a02 	vldr	s15, [r4, #8]
d0043150:	ed9d 1a25 	vldr	s2, [sp, #148]	; 0x94
d0043154:	ee70 0ac7 	vsub.f32	s1, s1, s14
d0043158:	edd4 1a06 	vldr	s3, [r4, #24]
d004315c:	ee31 1a67 	vsub.f32	s2, s2, s15
d0043160:	ed94 2a07 	vldr	s4, [r4, #28]
d0043164:	edd4 2a08 	vldr	s5, [r4, #32]
d0043168:	edcd 0a27 	vstr	s1, [sp, #156]	; 0x9c
d004316c:	ed8d 1a28 	vstr	s2, [sp, #160]	; 0xa0
d0043170:	ed8d 0a26 	vstr	s0, [sp, #152]	; 0x98
d0043174:	f7ff f948 	bl	d0042408 <vec3Dot>
d0043178:	edd4 1a09 	vldr	s3, [r4, #36]	; 0x24
d004317c:	eef0 8a40 	vmov.f32	s17, s0
d0043180:	ed94 2a0a 	vldr	s4, [r4, #40]	; 0x28
d0043184:	edd4 2a0b 	vldr	s5, [r4, #44]	; 0x2c
d0043188:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d004318c:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d0043190:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d0043194:	f7ff f938 	bl	d0042408 <vec3Dot>
d0043198:	eeb0 8a40 	vmov.f32	s16, s0
d004319c:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d00431a0:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d00431a4:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d00431a8:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d00431ac:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d00431b0:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d00431b4:	f7ff f928 	bl	d0042408 <vec3Dot>
d00431b8:	eef0 0a48 	vmov.f32	s1, s16
d00431bc:	eeb0 1a40 	vmov.f32	s2, s0
d00431c0:	eeb0 0a68 	vmov.f32	s0, s17
d00431c4:	b02c      	add	sp, #176	; 0xb0
d00431c6:	ecbd 8b02 	vpop	{d8}
d00431ca:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00431ce:	b004      	add	sp, #16
d00431d0:	4770      	bx	lr
d00431d2:	bf00      	nop

d00431d4 <cameraSetRange>:
d00431d4:	b1a0      	cbz	r0, d0043200 <cameraSetRange+0x2c>
d00431d6:	eddf 7a0d 	vldr	s15, [pc, #52]	; d004320c <cameraSetRange+0x38>
d00431da:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d00431de:	eeb4 0ae0 	vcmpe.f32	s0, s1
d00431e2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00431e6:	da0c      	bge.n	d0043202 <cameraSetRange+0x2e>
d00431e8:	ee30 7ac0 	vsub.f32	s14, s1, s0
d00431ec:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d00431f0:	eec6 7a87 	vdiv.f32	s15, s13, s14
d00431f4:	ed80 0a10 	vstr	s0, [r0, #64]	; 0x40
d00431f8:	edc0 0a11 	vstr	s1, [r0, #68]	; 0x44
d00431fc:	edc0 7a0f 	vstr	s15, [r0, #60]	; 0x3c
d0043200:	4770      	bx	lr
d0043202:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0043206:	ee70 0a27 	vadd.f32	s1, s0, s15
d004320a:	e7f3      	b.n	d00431f4 <cameraSetRange+0x20>
d004320c:	3a83126f 	.word	0x3a83126f

d0043210 <cameraMove>:
d0043210:	b3a8      	cbz	r0, d004327e <cameraMove+0x6e>
d0043212:	edd0 6a0b 	vldr	s13, [r0, #44]	; 0x2c
d0043216:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
d004321a:	edd0 7a0a 	vldr	s15, [r0, #40]	; 0x28
d004321e:	ee20 7a87 	vmul.f32	s14, s1, s14
d0043222:	edd0 5a06 	vldr	s11, [r0, #24]
d0043226:	ee60 7aa7 	vmul.f32	s15, s1, s15
d004322a:	ed90 6a08 	vldr	s12, [r0, #32]
d004322e:	ee60 0aa6 	vmul.f32	s1, s1, s13
d0043232:	edd0 6a07 	vldr	s13, [r0, #28]
d0043236:	eea5 7a80 	vfma.f32	s14, s11, s0
d004323a:	edd0 4a01 	vldr	s9, [r0, #4]
d004323e:	eee6 7a80 	vfma.f32	s15, s13, s0
d0043242:	ed90 5a02 	vldr	s10, [r0, #8]
d0043246:	eee6 0a00 	vfma.f32	s1, s12, s0
d004324a:	edd0 6a00 	vldr	s13, [r0]
d004324e:	edd0 5a0c 	vldr	s11, [r0, #48]	; 0x30
d0043252:	ed90 6a0d 	vldr	s12, [r0, #52]	; 0x34
d0043256:	ee37 7a26 	vadd.f32	s14, s14, s13
d004325a:	edd0 6a0e 	vldr	s13, [r0, #56]	; 0x38
d004325e:	ee77 7aa4 	vadd.f32	s15, s15, s9
d0043262:	ee70 0a85 	vadd.f32	s1, s1, s10
d0043266:	eea5 7a81 	vfma.f32	s14, s11, s2
d004326a:	eee6 7a01 	vfma.f32	s15, s12, s2
d004326e:	eee6 0a81 	vfma.f32	s1, s13, s2
d0043272:	ed80 7a00 	vstr	s14, [r0]
d0043276:	edc0 7a01 	vstr	s15, [r0, #4]
d004327a:	edc0 0a02 	vstr	s1, [r0, #8]
d004327e:	4770      	bx	lr

d0043280 <normalizeEntity.part.0>:
d0043280:	edd0 0a05 	vldr	s1, [r0, #20]
d0043284:	ed90 1a06 	vldr	s2, [r0, #24]
d0043288:	ed90 0a04 	vldr	s0, [r0, #16]
d004328c:	b510      	push	{r4, lr}
d004328e:	4604      	mov	r4, r0
d0043290:	f7ff f8dc 	bl	d004244c <vec3Normalize>
d0043294:	eeb0 7a60 	vmov.f32	s14, s1
d0043298:	eef0 7a41 	vmov.f32	s15, s2
d004329c:	ed84 0a04 	vstr	s0, [r4, #16]
d00432a0:	ed94 0a07 	vldr	s0, [r4, #28]
d00432a4:	ed84 7a05 	vstr	s14, [r4, #20]
d00432a8:	edc4 7a06 	vstr	s15, [r4, #24]
d00432ac:	edd4 0a08 	vldr	s1, [r4, #32]
d00432b0:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00432b4:	f7ff f8ca 	bl	d004244c <vec3Normalize>
d00432b8:	eef0 1a40 	vmov.f32	s3, s0
d00432bc:	eeb0 2a60 	vmov.f32	s4, s1
d00432c0:	ed94 0a04 	vldr	s0, [r4, #16]
d00432c4:	eef0 2a41 	vmov.f32	s5, s2
d00432c8:	edc4 0a08 	vstr	s1, [r4, #32]
d00432cc:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d00432d0:	edd4 0a05 	vldr	s1, [r4, #20]
d00432d4:	ed94 1a06 	vldr	s2, [r4, #24]
d00432d8:	edc4 1a07 	vstr	s3, [r4, #28]
d00432dc:	f7ff f8a0 	bl	d0042420 <vec3Cross>
d00432e0:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d00432e4:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d00432e8:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d00432ec:	f7ff f8ae 	bl	d004244c <vec3Normalize>
d00432f0:	edd4 1a04 	vldr	s3, [r4, #16]
d00432f4:	ed94 2a05 	vldr	s4, [r4, #20]
d00432f8:	edd4 2a06 	vldr	s5, [r4, #24]
d00432fc:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0043300:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0043304:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0043308:	f7ff f88a 	bl	d0042420 <vec3Cross>
d004330c:	ed84 0a07 	vstr	s0, [r4, #28]
d0043310:	edc4 0a08 	vstr	s1, [r4, #32]
d0043314:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d0043318:	f7ff f898 	bl	d004244c <vec3Normalize>
d004331c:	ed84 0a07 	vstr	s0, [r4, #28]
d0043320:	edc4 0a08 	vstr	s1, [r4, #32]
d0043324:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d0043328:	bd10      	pop	{r4, pc}
d004332a:	bf00      	nop

d004332c <meshComputeBoundsRadius>:
d004332c:	b1f0      	cbz	r0, d004336c <meshComputeBoundsRadius+0x40>
d004332e:	6803      	ldr	r3, [r0, #0]
d0043330:	b1e3      	cbz	r3, d004336c <meshComputeBoundsRadius+0x40>
d0043332:	6842      	ldr	r2, [r0, #4]
d0043334:	2a00      	cmp	r2, #0
d0043336:	dd19      	ble.n	d004336c <meshComputeBoundsRadius+0x40>
d0043338:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d004333c:	ed9f 6a0d 	vldr	s12, [pc, #52]	; d0043374 <meshComputeBoundsRadius+0x48>
d0043340:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d0043344:	edd3 7a01 	vldr	s15, [r3, #4]
d0043348:	330c      	adds	r3, #12
d004334a:	ed53 6a03 	vldr	s13, [r3, #-12]
d004334e:	ee67 7aa7 	vmul.f32	s15, s15, s15
d0043352:	ed13 7a01 	vldr	s14, [r3, #-4]
d0043356:	429a      	cmp	r2, r3
d0043358:	eee6 7aa6 	vfma.f32	s15, s13, s13
d004335c:	eee7 7a07 	vfma.f32	s15, s14, s14
d0043360:	fe86 6a27 	vmaxnm.f32	s12, s12, s15
d0043364:	d1ee      	bne.n	d0043344 <meshComputeBoundsRadius+0x18>
d0043366:	eeb1 0ac6 	vsqrt.f32	s0, s12
d004336a:	4770      	bx	lr
d004336c:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0043374 <meshComputeBoundsRadius+0x48>
d0043370:	4770      	bx	lr
d0043372:	bf00      	nop
d0043374:	00000000 	.word	0x00000000

d0043378 <entityWorldSpawn>:
d0043378:	b4f0      	push	{r4, r5, r6, r7}
d004337a:	4d20      	ldr	r5, [pc, #128]	; (d00433fc <entityWorldSpawn+0x84>)
d004337c:	b084      	sub	sp, #16
d004337e:	2300      	movs	r3, #0
d0043380:	462a      	mov	r2, r5
d0043382:	ed8d 0a01 	vstr	s0, [sp, #4]
d0043386:	edcd 0a02 	vstr	s1, [sp, #8]
d004338a:	ed8d 1a03 	vstr	s2, [sp, #12]
d004338e:	e003      	b.n	d0043398 <entityWorldSpawn+0x20>
d0043390:	3301      	adds	r3, #1
d0043392:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d0043396:	d02b      	beq.n	d00433f0 <entityWorldSpawn+0x78>
d0043398:	f892 4034 	ldrb.w	r4, [r2, #52]	; 0x34
d004339c:	3260      	adds	r2, #96	; 0x60
d004339e:	2c00      	cmp	r4, #0
d00433a0:	d1f6      	bne.n	d0043390 <entityWorldSpawn+0x18>
d00433a2:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d00433a6:	4f16      	ldr	r7, [pc, #88]	; (d0043400 <entityWorldSpawn+0x88>)
d00433a8:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d00433ac:	2600      	movs	r6, #0
d00433ae:	eb05 1542 	add.w	r5, r5, r2, lsl #5
d00433b2:	f240 1c01 	movw	ip, #257	; 0x101
d00433b6:	eb07 1742 	add.w	r7, r7, r2, lsl #5
d00433ba:	aa04      	add	r2, sp, #16
d00433bc:	60e8      	str	r0, [r5, #12]
d00433be:	61e9      	str	r1, [r5, #28]
d00433c0:	62e9      	str	r1, [r5, #44]	; 0x2c
d00433c2:	61a9      	str	r1, [r5, #24]
d00433c4:	622e      	str	r6, [r5, #32]
d00433c6:	626e      	str	r6, [r5, #36]	; 0x24
d00433c8:	62ae      	str	r6, [r5, #40]	; 0x28
d00433ca:	632e      	str	r6, [r5, #48]	; 0x30
d00433cc:	612e      	str	r6, [r5, #16]
d00433ce:	616e      	str	r6, [r5, #20]
d00433d0:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d00433d4:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d00433d8:	4618      	mov	r0, r3
d00433da:	f8a7 c014 	strh.w	ip, [r7, #20]
d00433de:	f885 4036 	strb.w	r4, [r5, #54]	; 0x36
d00433e2:	63ee      	str	r6, [r5, #60]	; 0x3c
d00433e4:	642e      	str	r6, [r5, #64]	; 0x40
d00433e6:	646e      	str	r6, [r5, #68]	; 0x44
d00433e8:	63ae      	str	r6, [r5, #56]	; 0x38
d00433ea:	b004      	add	sp, #16
d00433ec:	bcf0      	pop	{r4, r5, r6, r7}
d00433ee:	4770      	bx	lr
d00433f0:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d00433f4:	4618      	mov	r0, r3
d00433f6:	b004      	add	sp, #16
d00433f8:	bcf0      	pop	{r4, r5, r6, r7}
d00433fa:	4770      	bx	lr
d00433fc:	d00e1cc0 	.word	0xd00e1cc0
d0043400:	d00e1ce0 	.word	0xd00e1ce0

d0043404 <entityMoveForward>:
d0043404:	28ff      	cmp	r0, #255	; 0xff
d0043406:	d82b      	bhi.n	d0043460 <entityMoveForward+0x5c>
d0043408:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d004340c:	b510      	push	{r4, lr}
d004340e:	4c15      	ldr	r4, [pc, #84]	; (d0043464 <entityMoveForward+0x60>)
d0043410:	b084      	sub	sp, #16
d0043412:	eb04 1440 	add.w	r4, r4, r0, lsl #5
d0043416:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d004341a:	b1fb      	cbz	r3, d004345c <entityMoveForward+0x58>
d004341c:	68e3      	ldr	r3, [r4, #12]
d004341e:	b1eb      	cbz	r3, d004345c <entityMoveForward+0x58>
d0043420:	eef0 1a40 	vmov.f32	s3, s0
d0043424:	edd4 0a05 	vldr	s1, [r4, #20]
d0043428:	ed94 0a04 	vldr	s0, [r4, #16]
d004342c:	ed94 1a06 	vldr	s2, [r4, #24]
d0043430:	f7fe ffe0 	bl	d00423f4 <vec3Scale>
d0043434:	eef0 1a40 	vmov.f32	s3, s0
d0043438:	eeb0 2a60 	vmov.f32	s4, s1
d004343c:	ed94 0a00 	vldr	s0, [r4]
d0043440:	eef0 2a41 	vmov.f32	s5, s2
d0043444:	edd4 0a01 	vldr	s1, [r4, #4]
d0043448:	ed94 1a02 	vldr	s2, [r4, #8]
d004344c:	f7fe ffc8 	bl	d00423e0 <vec3Add>
d0043450:	ed84 0a00 	vstr	s0, [r4]
d0043454:	edc4 0a01 	vstr	s1, [r4, #4]
d0043458:	ed84 1a02 	vstr	s2, [r4, #8]
d004345c:	b004      	add	sp, #16
d004345e:	bd10      	pop	{r4, pc}
d0043460:	4770      	bx	lr
d0043462:	bf00      	nop
d0043464:	d00e1cc0 	.word	0xd00e1cc0

d0043468 <entityTurnLocal>:
d0043468:	28ff      	cmp	r0, #255	; 0xff
d004346a:	d82c      	bhi.n	d00434c6 <entityTurnLocal+0x5e>
d004346c:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0043470:	b510      	push	{r4, lr}
d0043472:	4c65      	ldr	r4, [pc, #404]	; (d0043608 <entityTurnLocal+0x1a0>)
d0043474:	eb04 1440 	add.w	r4, r4, r0, lsl #5
d0043478:	ed2d 8b04 	vpush	{d8-d9}
d004347c:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0043480:	b1f3      	cbz	r3, d00434c0 <entityTurnLocal+0x58>
d0043482:	68e3      	ldr	r3, [r4, #12]
d0043484:	b1e3      	cbz	r3, d00434c0 <entityTurnLocal+0x58>
d0043486:	eeb5 0a40 	vcmp.f32	s0, #0.0
d004348a:	eeb0 9a40 	vmov.f32	s18, s0
d004348e:	eef0 8a60 	vmov.f32	s17, s1
d0043492:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043496:	eeb0 8a41 	vmov.f32	s16, s2
d004349a:	f040 8081 	bne.w	d00435a0 <entityTurnLocal+0x138>
d004349e:	eef5 8a40 	vcmp.f32	s17, #0.0
d00434a2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00434a6:	d148      	bne.n	d004353a <entityTurnLocal+0xd2>
d00434a8:	eeb5 8a40 	vcmp.f32	s16, #0.0
d00434ac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00434b0:	d10a      	bne.n	d00434c8 <entityTurnLocal+0x60>
d00434b2:	4620      	mov	r0, r4
d00434b4:	ecbd 8b04 	vpop	{d8-d9}
d00434b8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00434bc:	f7ff bee0 	b.w	d0043280 <normalizeEntity.part.0>
d00434c0:	ecbd 8b04 	vpop	{d8-d9}
d00434c4:	bd10      	pop	{r4, pc}
d00434c6:	4770      	bx	lr
d00434c8:	ed94 0a07 	vldr	s0, [r4, #28]
d00434cc:	eeb0 3a48 	vmov.f32	s6, s16
d00434d0:	edd4 0a08 	vldr	s1, [r4, #32]
d00434d4:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00434d8:	edd4 1a04 	vldr	s3, [r4, #16]
d00434dc:	ed94 2a05 	vldr	s4, [r4, #20]
d00434e0:	edd4 2a06 	vldr	s5, [r4, #24]
d00434e4:	f7ff f802 	bl	d00424ec <rotateAroundAxis>
d00434e8:	eef0 6a40 	vmov.f32	s13, s0
d00434ec:	eeb0 7a60 	vmov.f32	s14, s1
d00434f0:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00434f4:	eef0 7a41 	vmov.f32	s15, s2
d00434f8:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00434fc:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0043500:	eeb0 3a48 	vmov.f32	s6, s16
d0043504:	edd4 1a04 	vldr	s3, [r4, #16]
d0043508:	ed94 2a05 	vldr	s4, [r4, #20]
d004350c:	edd4 2a06 	vldr	s5, [r4, #24]
d0043510:	edc4 6a07 	vstr	s13, [r4, #28]
d0043514:	ed84 7a08 	vstr	s14, [r4, #32]
d0043518:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d004351c:	f7fe ffe6 	bl	d00424ec <rotateAroundAxis>
d0043520:	4620      	mov	r0, r4
d0043522:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0043526:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d004352a:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d004352e:	ecbd 8b04 	vpop	{d8-d9}
d0043532:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0043536:	f7ff bea3 	b.w	d0043280 <normalizeEntity.part.0>
d004353a:	ed94 0a04 	vldr	s0, [r4, #16]
d004353e:	eeb0 3a68 	vmov.f32	s6, s17
d0043542:	edd4 0a05 	vldr	s1, [r4, #20]
d0043546:	ed94 1a06 	vldr	s2, [r4, #24]
d004354a:	edd4 1a07 	vldr	s3, [r4, #28]
d004354e:	ed94 2a08 	vldr	s4, [r4, #32]
d0043552:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d0043556:	f7fe ffc9 	bl	d00424ec <rotateAroundAxis>
d004355a:	eef0 6a40 	vmov.f32	s13, s0
d004355e:	eeb0 7a60 	vmov.f32	s14, s1
d0043562:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0043566:	eef0 7a41 	vmov.f32	s15, s2
d004356a:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d004356e:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0043572:	eeb0 3a68 	vmov.f32	s6, s17
d0043576:	edd4 1a07 	vldr	s3, [r4, #28]
d004357a:	ed94 2a08 	vldr	s4, [r4, #32]
d004357e:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d0043582:	edc4 6a04 	vstr	s13, [r4, #16]
d0043586:	ed84 7a05 	vstr	s14, [r4, #20]
d004358a:	edc4 7a06 	vstr	s15, [r4, #24]
d004358e:	f7fe ffad 	bl	d00424ec <rotateAroundAxis>
d0043592:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0043596:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d004359a:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d004359e:	e783      	b.n	d00434a8 <entityTurnLocal+0x40>
d00435a0:	eeb0 3a40 	vmov.f32	s6, s0
d00435a4:	edd4 0a05 	vldr	s1, [r4, #20]
d00435a8:	ed94 0a04 	vldr	s0, [r4, #16]
d00435ac:	ed94 1a06 	vldr	s2, [r4, #24]
d00435b0:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d00435b4:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d00435b8:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d00435bc:	f7fe ff96 	bl	d00424ec <rotateAroundAxis>
d00435c0:	eef0 6a40 	vmov.f32	s13, s0
d00435c4:	eeb0 7a60 	vmov.f32	s14, s1
d00435c8:	ed94 0a07 	vldr	s0, [r4, #28]
d00435cc:	eef0 7a41 	vmov.f32	s15, s2
d00435d0:	edd4 0a08 	vldr	s1, [r4, #32]
d00435d4:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00435d8:	eeb0 3a49 	vmov.f32	s6, s18
d00435dc:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d00435e0:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d00435e4:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d00435e8:	edc4 6a04 	vstr	s13, [r4, #16]
d00435ec:	ed84 7a05 	vstr	s14, [r4, #20]
d00435f0:	edc4 7a06 	vstr	s15, [r4, #24]
d00435f4:	f7fe ff7a 	bl	d00424ec <rotateAroundAxis>
d00435f8:	ed84 0a07 	vstr	s0, [r4, #28]
d00435fc:	edc4 0a08 	vstr	s1, [r4, #32]
d0043600:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d0043604:	e74b      	b.n	d004349e <entityTurnLocal+0x36>
d0043606:	bf00      	nop
d0043608:	d00e1cc0 	.word	0xd00e1cc0

d004360c <buildLightingCLUT>:
d004360c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0043610:	f1b2 0900 	subs.w	r9, r2, #0
d0043614:	b085      	sub	sp, #20
d0043616:	9c0e      	ldr	r4, [sp, #56]	; 0x38
d0043618:	f340 8212 	ble.w	d0043a40 <buildLightingCLUT+0x434>
d004361c:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0043620:	4f24      	ldr	r7, [pc, #144]	; (d00436b4 <buildLightingCLUT+0xa8>)
d0043622:	eb09 0c49 	add.w	ip, r9, r9, lsl #1
d0043626:	edd4 4a00 	vldr	s9, [r4]
d004362a:	ed94 5a01 	vldr	s10, [r4, #4]
d004362e:	eb09 0807 	add.w	r8, r9, r7
d0043632:	edd4 5a02 	vldr	s11, [r4, #8]
d0043636:	eb07 0e49 	add.w	lr, r7, r9, lsl #1
d004363a:	ed94 6a03 	vldr	s12, [r4, #12]
d004363e:	44bc      	add	ip, r7
d0043640:	edd4 6a04 	vldr	s13, [r4, #16]
d0043644:	eb07 0789 	add.w	r7, r7, r9, lsl #2
d0043648:	3904      	subs	r1, #4
d004364a:	ee77 4ae4 	vsub.f32	s9, s15, s9
d004364e:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0043652:	ed9f 7a19 	vldr	s14, [pc, #100]	; d00436b8 <buildLightingCLUT+0xac>
d0043656:	ee77 5ae5 	vsub.f32	s11, s15, s11
d004365a:	f100 067c 	add.w	r6, r0, #124	; 0x7c
d004365e:	ee37 6ac6 	vsub.f32	s12, s15, s12
d0043662:	eb00 0888 	add.w	r8, r0, r8, lsl #2
d0043666:	ee77 6ae6 	vsub.f32	s13, s15, s13
d004366a:	eb00 0e8e 	add.w	lr, r0, lr, lsl #2
d004366e:	eb00 0c8c 	add.w	ip, r0, ip, lsl #2
d0043672:	f3c3 4507 	ubfx	r5, r3, #16, #8
d0043676:	eb00 0787 	add.w	r7, r0, r7, lsl #2
d004367a:	f3c3 2007 	ubfx	r0, r3, #8, #8
d004367e:	eb01 0989 	add.w	r9, r1, r9, lsl #2
d0043682:	fec4 4a87 	vmaxnm.f32	s9, s9, s14
d0043686:	0e1c      	lsrs	r4, r3, #24
d0043688:	fe85 5a07 	vmaxnm.f32	s10, s10, s14
d004368c:	b2da      	uxtb	r2, r3
d004368e:	fec5 5a87 	vmaxnm.f32	s11, s11, s14
d0043692:	fe86 6a07 	vmaxnm.f32	s12, s12, s14
d0043696:	fec6 6a87 	vmaxnm.f32	s13, s13, s14
d004369a:	fec4 4ae7 	vminnm.f32	s9, s9, s15
d004369e:	fe85 5a67 	vminnm.f32	s10, s10, s15
d00436a2:	fec5 5ae7 	vminnm.f32	s11, s11, s15
d00436a6:	fe86 6a67 	vminnm.f32	s12, s12, s15
d00436aa:	fec6 6ae7 	vminnm.f32	s13, s13, s15
d00436ae:	9601      	str	r6, [sp, #4]
d00436b0:	e004      	b.n	d00436bc <buildLightingCLUT+0xb0>
d00436b2:	bf00      	nop
d00436b4:	4000001f 	.word	0x4000001f
d00436b8:	00000000 	.word	0x00000000
d00436bc:	f851 3f04 	ldr.w	r3, [r1, #4]!
d00436c0:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d00436c4:	0e1e      	lsrs	r6, r3, #24
d00436c6:	fa5f fa83 	uxtb.w	sl, r3
d00436ca:	4549      	cmp	r1, r9
d00436cc:	ee07 6a10 	vmov	s14, r6
d00436d0:	eba5 060b 	sub.w	r6, r5, fp
d00436d4:	ee04 ba10 	vmov	s8, fp
d00436d8:	ee07 6a90 	vmov	s15, r6
d00436dc:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d00436e0:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d00436e4:	f3c3 2307 	ubfx	r3, r3, #8, #8
d00436e8:	ee02 6a10 	vmov	s4, r6
d00436ec:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00436f0:	eba2 060a 	sub.w	r6, r2, sl
d00436f4:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00436f8:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d00436fc:	ee04 aa10 	vmov	s8, sl
d0043700:	ee02 6a90 	vmov	s5, r6
d0043704:	eba0 0603 	sub.w	r6, r0, r3
d0043708:	eee4 3aa7 	vfma.f32	s7, s9, s15
d004370c:	ee07 3a90 	vmov	s15, r3
d0043710:	eea4 7a82 	vfma.f32	s14, s9, s4
d0043714:	ee03 6a10 	vmov	s6, r6
d0043718:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d004371c:	9e01      	ldr	r6, [sp, #4]
d004371e:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0043722:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0043726:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004372a:	eea4 4aa2 	vfma.f32	s8, s9, s5
d004372e:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0043732:	eee4 7a83 	vfma.f32	s15, s9, s6
d0043736:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d004373a:	edcd 3a02 	vstr	s7, [sp, #8]
d004373e:	f89d a008 	ldrb.w	sl, [sp, #8]
d0043742:	ee17 3a10 	vmov	r3, s14
d0043746:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d004374a:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d004374e:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0043752:	ed8d 7a02 	vstr	s14, [sp, #8]
d0043756:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d004375a:	f89d b008 	ldrb.w	fp, [sp, #8]
d004375e:	edcd 7a03 	vstr	s15, [sp, #12]
d0043762:	ea43 030b 	orr.w	r3, r3, fp
d0043766:	f89d a00c 	ldrb.w	sl, [sp, #12]
d004376a:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d004376e:	f846 3f04 	str.w	r3, [r6, #4]!
d0043772:	680b      	ldr	r3, [r1, #0]
d0043774:	9601      	str	r6, [sp, #4]
d0043776:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d004377a:	ea4f 6613 	mov.w	r6, r3, lsr #24
d004377e:	fa5f fa83 	uxtb.w	sl, r3
d0043782:	ee07 6a10 	vmov	s14, r6
d0043786:	eba5 060b 	sub.w	r6, r5, fp
d004378a:	ee04 ba10 	vmov	s8, fp
d004378e:	ee07 6a90 	vmov	s15, r6
d0043792:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0043796:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d004379a:	f3c3 2307 	ubfx	r3, r3, #8, #8
d004379e:	ee02 6a10 	vmov	s4, r6
d00437a2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00437a6:	eba2 060a 	sub.w	r6, r2, sl
d00437aa:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00437ae:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d00437b2:	ee04 aa10 	vmov	s8, sl
d00437b6:	ee02 6a90 	vmov	s5, r6
d00437ba:	eba0 0603 	sub.w	r6, r0, r3
d00437be:	eee5 3a27 	vfma.f32	s7, s10, s15
d00437c2:	ee07 3a90 	vmov	s15, r3
d00437c6:	eea5 7a02 	vfma.f32	s14, s10, s4
d00437ca:	ee03 6a10 	vmov	s6, r6
d00437ce:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d00437d2:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00437d6:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d00437da:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00437de:	eea5 4a22 	vfma.f32	s8, s10, s5
d00437e2:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d00437e6:	eee5 7a03 	vfma.f32	s15, s10, s6
d00437ea:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00437ee:	edcd 3a02 	vstr	s7, [sp, #8]
d00437f2:	f89d a008 	ldrb.w	sl, [sp, #8]
d00437f6:	ee17 3a10 	vmov	r3, s14
d00437fa:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d00437fe:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0043802:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0043806:	ed8d 7a02 	vstr	s14, [sp, #8]
d004380a:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d004380e:	f89d b008 	ldrb.w	fp, [sp, #8]
d0043812:	edcd 7a03 	vstr	s15, [sp, #12]
d0043816:	ea43 030b 	orr.w	r3, r3, fp
d004381a:	f89d a00c 	ldrb.w	sl, [sp, #12]
d004381e:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0043822:	f848 3f04 	str.w	r3, [r8, #4]!
d0043826:	680b      	ldr	r3, [r1, #0]
d0043828:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d004382c:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0043830:	fa5f fa83 	uxtb.w	sl, r3
d0043834:	ee07 6a10 	vmov	s14, r6
d0043838:	eba5 060b 	sub.w	r6, r5, fp
d004383c:	ee04 ba10 	vmov	s8, fp
d0043840:	ee07 6a90 	vmov	s15, r6
d0043844:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0043848:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d004384c:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0043850:	ee02 6a10 	vmov	s4, r6
d0043854:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0043858:	eba2 060a 	sub.w	r6, r2, sl
d004385c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0043860:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0043864:	ee04 aa10 	vmov	s8, sl
d0043868:	ee02 6a90 	vmov	s5, r6
d004386c:	eba0 0603 	sub.w	r6, r0, r3
d0043870:	eee5 3aa7 	vfma.f32	s7, s11, s15
d0043874:	ee07 3a90 	vmov	s15, r3
d0043878:	eea5 7a82 	vfma.f32	s14, s11, s4
d004387c:	ee03 6a10 	vmov	s6, r6
d0043880:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0043884:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0043888:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d004388c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0043890:	eea5 4aa2 	vfma.f32	s8, s11, s5
d0043894:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0043898:	eee5 7a83 	vfma.f32	s15, s11, s6
d004389c:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00438a0:	edcd 3a02 	vstr	s7, [sp, #8]
d00438a4:	f89d a008 	ldrb.w	sl, [sp, #8]
d00438a8:	ee17 3a10 	vmov	r3, s14
d00438ac:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d00438b0:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d00438b4:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00438b8:	ed8d 7a02 	vstr	s14, [sp, #8]
d00438bc:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d00438c0:	f89d b008 	ldrb.w	fp, [sp, #8]
d00438c4:	edcd 7a03 	vstr	s15, [sp, #12]
d00438c8:	ea43 030b 	orr.w	r3, r3, fp
d00438cc:	f89d a00c 	ldrb.w	sl, [sp, #12]
d00438d0:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d00438d4:	f84e 3f04 	str.w	r3, [lr, #4]!
d00438d8:	680b      	ldr	r3, [r1, #0]
d00438da:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d00438de:	ea4f 6613 	mov.w	r6, r3, lsr #24
d00438e2:	fa5f fa83 	uxtb.w	sl, r3
d00438e6:	ee07 6a10 	vmov	s14, r6
d00438ea:	eba5 060b 	sub.w	r6, r5, fp
d00438ee:	ee04 ba10 	vmov	s8, fp
d00438f2:	ee07 6a90 	vmov	s15, r6
d00438f6:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d00438fa:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d00438fe:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0043902:	ee02 6a10 	vmov	s4, r6
d0043906:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004390a:	eba2 060a 	sub.w	r6, r2, sl
d004390e:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0043912:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0043916:	ee04 aa10 	vmov	s8, sl
d004391a:	ee02 6a90 	vmov	s5, r6
d004391e:	eba0 0603 	sub.w	r6, r0, r3
d0043922:	eee6 3a27 	vfma.f32	s7, s12, s15
d0043926:	ee07 3a90 	vmov	s15, r3
d004392a:	eea6 7a02 	vfma.f32	s14, s12, s4
d004392e:	ee03 6a10 	vmov	s6, r6
d0043932:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0043936:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d004393a:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d004393e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0043942:	eea6 4a22 	vfma.f32	s8, s12, s5
d0043946:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d004394a:	eee6 7a03 	vfma.f32	s15, s12, s6
d004394e:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0043952:	edcd 3a02 	vstr	s7, [sp, #8]
d0043956:	f89d a008 	ldrb.w	sl, [sp, #8]
d004395a:	ee17 3a10 	vmov	r3, s14
d004395e:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0043962:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0043966:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d004396a:	ed8d 7a02 	vstr	s14, [sp, #8]
d004396e:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0043972:	f89d b008 	ldrb.w	fp, [sp, #8]
d0043976:	edcd 7a03 	vstr	s15, [sp, #12]
d004397a:	ea43 030b 	orr.w	r3, r3, fp
d004397e:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0043982:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0043986:	f84c 3f04 	str.w	r3, [ip, #4]!
d004398a:	680b      	ldr	r3, [r1, #0]
d004398c:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0043990:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0043994:	fa5f fa83 	uxtb.w	sl, r3
d0043998:	ee07 6a10 	vmov	s14, r6
d004399c:	eba5 060b 	sub.w	r6, r5, fp
d00439a0:	ee04 ba10 	vmov	s8, fp
d00439a4:	ee07 6a90 	vmov	s15, r6
d00439a8:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d00439ac:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d00439b0:	f3c3 2307 	ubfx	r3, r3, #8, #8
d00439b4:	ee02 6a10 	vmov	s4, r6
d00439b8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00439bc:	eba2 060a 	sub.w	r6, r2, sl
d00439c0:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00439c4:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d00439c8:	ee04 aa10 	vmov	s8, sl
d00439cc:	ee02 6a90 	vmov	s5, r6
d00439d0:	eba0 0603 	sub.w	r6, r0, r3
d00439d4:	eee6 3aa7 	vfma.f32	s7, s13, s15
d00439d8:	ee07 3a90 	vmov	s15, r3
d00439dc:	eea6 7a82 	vfma.f32	s14, s13, s4
d00439e0:	ee03 6a10 	vmov	s6, r6
d00439e4:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00439e8:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d00439ec:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d00439f0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00439f4:	eea6 4aa2 	vfma.f32	s8, s13, s5
d00439f8:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d00439fc:	eee6 7a83 	vfma.f32	s15, s13, s6
d0043a00:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0043a04:	edcd 3a02 	vstr	s7, [sp, #8]
d0043a08:	f89d a008 	ldrb.w	sl, [sp, #8]
d0043a0c:	ee17 3a10 	vmov	r3, s14
d0043a10:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0043a14:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0043a18:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0043a1c:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0043a20:	ed8d 7a02 	vstr	s14, [sp, #8]
d0043a24:	f89d b008 	ldrb.w	fp, [sp, #8]
d0043a28:	edcd 7a03 	vstr	s15, [sp, #12]
d0043a2c:	ea43 030b 	orr.w	r3, r3, fp
d0043a30:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0043a34:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0043a38:	f847 3f04 	str.w	r3, [r7, #4]!
d0043a3c:	f47f ae3e 	bne.w	d00436bc <buildLightingCLUT+0xb0>
d0043a40:	b005      	add	sp, #20
d0043a42:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0043a46:	bf00      	nop

d0043a48 <brightnessToShadeF>:
d0043a48:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0043a4c:	eddf 7a09 	vldr	s15, [pc, #36]	; d0043a74 <brightnessToShadeF+0x2c>
d0043a50:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d0043a54:	eef7 6a08 	vmov.f32	s13, #120	; 0x3fc00000  1.5
d0043a58:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d0043a5c:	fec0 7a47 	vminnm.f32	s15, s0, s14
d0043a60:	eeb1 0a04 	vmov.f32	s0, #20	; 0x40a00000  5.0
d0043a64:	eee7 6ac6 	vfms.f32	s13, s15, s12
d0043a68:	eea6 7ae7 	vfms.f32	s14, s13, s15
d0043a6c:	ee27 0a00 	vmul.f32	s0, s14, s0
d0043a70:	4770      	bx	lr
d0043a72:	bf00      	nop
d0043a74:	00000000 	.word	0x00000000

d0043a78 <lightsGet>:
d0043a78:	4800      	ldr	r0, [pc, #0]	; (d0043a7c <lightsGet+0x4>)
d0043a7a:	4770      	bx	lr
d0043a7c:	d00495e0 	.word	0xd00495e0

d0043a80 <lightsGetCount>:
d0043a80:	4b01      	ldr	r3, [pc, #4]	; (d0043a88 <lightsGetCount+0x8>)
d0043a82:	6818      	ldr	r0, [r3, #0]
d0043a84:	4770      	bx	lr
d0043a86:	bf00      	nop
d0043a88:	d00495c0 	.word	0xd00495c0

d0043a8c <lightsClear>:
d0043a8c:	4b01      	ldr	r3, [pc, #4]	; (d0043a94 <lightsClear+0x8>)
d0043a8e:	2200      	movs	r2, #0
d0043a90:	601a      	str	r2, [r3, #0]
d0043a92:	4770      	bx	lr
d0043a94:	d00495c0 	.word	0xd00495c0

d0043a98 <addDirectionalLight>:
d0043a98:	b5f0      	push	{r4, r5, r6, r7, lr}
d0043a9a:	4f15      	ldr	r7, [pc, #84]	; (d0043af0 <addDirectionalLight+0x58>)
d0043a9c:	683d      	ldr	r5, [r7, #0]
d0043a9e:	2d07      	cmp	r5, #7
d0043aa0:	ed2d 8b02 	vpush	{d8}
d0043aa4:	b085      	sub	sp, #20
d0043aa6:	dc1f      	bgt.n	d0043ae8 <addDirectionalLight+0x50>
d0043aa8:	4912      	ldr	r1, [pc, #72]	; (d0043af4 <addDirectionalLight+0x5c>)
d0043aaa:	2300      	movs	r3, #0
d0043aac:	4606      	mov	r6, r0
d0043aae:	01aa      	lsls	r2, r5, #6
d0043ab0:	eb01 1485 	add.w	r4, r1, r5, lsl #6
d0043ab4:	2001      	movs	r0, #1
d0043ab6:	eeb0 8a61 	vmov.f32	s16, s3
d0043aba:	6063      	str	r3, [r4, #4]
d0043abc:	60a3      	str	r3, [r4, #8]
d0043abe:	60e3      	str	r3, [r4, #12]
d0043ac0:	5488      	strb	r0, [r1, r2]
d0043ac2:	f7fe fcc3 	bl	d004244c <vec3Normalize>
d0043ac6:	683b      	ldr	r3, [r7, #0]
d0043ac8:	ed84 8a07 	vstr	s16, [r4, #28]
d0043acc:	3301      	adds	r3, #1
d0043ace:	62e6      	str	r6, [r4, #44]	; 0x2c
d0043ad0:	ed84 0a04 	vstr	s0, [r4, #16]
d0043ad4:	edc4 0a05 	vstr	s1, [r4, #20]
d0043ad8:	ed84 1a06 	vstr	s2, [r4, #24]
d0043adc:	603b      	str	r3, [r7, #0]
d0043ade:	4628      	mov	r0, r5
d0043ae0:	b005      	add	sp, #20
d0043ae2:	ecbd 8b02 	vpop	{d8}
d0043ae6:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0043ae8:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0043aec:	e7f7      	b.n	d0043ade <addDirectionalLight+0x46>
d0043aee:	bf00      	nop
d0043af0:	d00495c0 	.word	0xd00495c0
d0043af4:	d00495e0 	.word	0xd00495e0

d0043af8 <setDefaultRenderMode>:
d0043af8:	2300      	movs	r3, #0
d0043afa:	4803      	ldr	r0, [pc, #12]	; (d0043b08 <setDefaultRenderMode+0x10>)
d0043afc:	4903      	ldr	r1, [pc, #12]	; (d0043b0c <setDefaultRenderMode+0x14>)
d0043afe:	4a04      	ldr	r2, [pc, #16]	; (d0043b10 <setDefaultRenderMode+0x18>)
d0043b00:	6003      	str	r3, [r0, #0]
d0043b02:	600b      	str	r3, [r1, #0]
d0043b04:	6013      	str	r3, [r2, #0]
d0043b06:	4770      	bx	lr
d0043b08:	d00557e0 	.word	0xd00557e0
d0043b0c:	d00d5800 	.word	0xd00d5800
d0043b10:	d00d5804 	.word	0xd00d5804

d0043b14 <enableFlatMode>:
d0043b14:	4b01      	ldr	r3, [pc, #4]	; (d0043b1c <enableFlatMode+0x8>)
d0043b16:	6018      	str	r0, [r3, #0]
d0043b18:	4770      	bx	lr
d0043b1a:	bf00      	nop
d0043b1c:	d00557e0 	.word	0xd00557e0

d0043b20 <clipTriangleToFrustum>:
d0043b20:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0043b24:	ed2d 8b02 	vpush	{d8}
d0043b28:	b0ba      	sub	sp, #232	; 0xe8
d0043b2a:	ed91 7a10 	vldr	s14, [r1, #64]	; 0x40
d0043b2e:	4605      	mov	r5, r0
d0043b30:	aa07      	add	r2, sp, #28
d0043b32:	ab04      	add	r3, sp, #16
d0043b34:	ed8d 0a07 	vstr	s0, [sp, #28]
d0043b38:	ac0a      	add	r4, sp, #40	; 0x28
d0043b3a:	edcd 0a08 	vstr	s1, [sp, #32]
d0043b3e:	af0d      	add	r7, sp, #52	; 0x34
d0043b40:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d0043b44:	ae01      	add	r6, sp, #4
d0043b46:	edcd 1a04 	vstr	s3, [sp, #16]
d0043b4a:	ed8d 2a05 	vstr	s4, [sp, #20]
d0043b4e:	edcd 2a06 	vstr	s5, [sp, #24]
d0043b52:	ed8d 4a03 	vstr	s8, [sp, #12]
d0043b56:	ed8d 3a01 	vstr	s6, [sp, #4]
d0043b5a:	edcd 3a02 	vstr	s7, [sp, #8]
d0043b5e:	ca07      	ldmia	r2, {r0, r1, r2}
d0043b60:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d0043b64:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0043b68:	ab10      	add	r3, sp, #64	; 0x40
d0043b6a:	ed9d 6a0a 	vldr	s12, [sp, #40]	; 0x28
d0043b6e:	e887 0007 	stmia.w	r7, {r0, r1, r2}
d0043b72:	e896 0007 	ldmia.w	r6, {r0, r1, r2}
d0043b76:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0043b7a:	ed9d 4a12 	vldr	s8, [sp, #72]	; 0x48
d0043b7e:	eddd 5a10 	vldr	s11, [sp, #64]	; 0x40
d0043b82:	ee34 5a47 	vsub.f32	s10, s8, s14
d0043b86:	eddd 7a0c 	vldr	s15, [sp, #48]	; 0x30
d0043b8a:	eddd 1a11 	vldr	s3, [sp, #68]	; 0x44
d0043b8e:	ee77 4ac7 	vsub.f32	s9, s15, s14
d0043b92:	eddd 6a0b 	vldr	s13, [sp, #44]	; 0x2c
d0043b96:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d0043b9a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043b9e:	eef5 4ac0 	vcmpe.f32	s9, #0.0
d0043ba2:	bfac      	ite	ge
d0043ba4:	2101      	movge	r1, #1
d0043ba6:	2100      	movlt	r1, #0
d0043ba8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043bac:	bfac      	ite	ge
d0043bae:	2001      	movge	r0, #1
d0043bb0:	2000      	movlt	r0, #0
d0043bb2:	2900      	cmp	r1, #0
d0043bb4:	f000 825d 	beq.w	d0044072 <clipTriangleToFrustum+0x552>
d0043bb8:	2800      	cmp	r0, #0
d0043bba:	f000 825a 	beq.w	d0044072 <clipTriangleToFrustum+0x552>
d0043bbe:	2301      	movs	r3, #1
d0043bc0:	ed8d 6a22 	vstr	s12, [sp, #136]	; 0x88
d0043bc4:	edcd 6a23 	vstr	s13, [sp, #140]	; 0x8c
d0043bc8:	edcd 7a24 	vstr	s15, [sp, #144]	; 0x90
d0043bcc:	eddd 3a0f 	vldr	s7, [sp, #60]	; 0x3c
d0043bd0:	f000 0201 	and.w	r2, r0, #1
d0043bd4:	ed9d 2a0d 	vldr	s4, [sp, #52]	; 0x34
d0043bd8:	ee33 3ac7 	vsub.f32	s6, s7, s14
d0043bdc:	eddd 2a0e 	vldr	s5, [sp, #56]	; 0x38
d0043be0:	eeb5 3ac0 	vcmpe.f32	s6, #0.0
d0043be4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043be8:	bfb6      	itet	lt
d0043bea:	2200      	movlt	r2, #0
d0043bec:	2601      	movge	r6, #1
d0043bee:	2600      	movlt	r6, #0
d0043bf0:	2a00      	cmp	r2, #0
d0043bf2:	f000 8277 	beq.w	d00440e4 <clipTriangleToFrustum+0x5c4>
d0043bf6:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0043bfa:	ae22      	add	r6, sp, #136	; 0x88
d0043bfc:	3301      	adds	r3, #1
d0043bfe:	eb06 0080 	add.w	r0, r6, r0, lsl #2
d0043c02:	ed80 2a00 	vstr	s4, [r0]
d0043c06:	edc0 2a01 	vstr	s5, [r0, #4]
d0043c0a:	edc0 3a02 	vstr	s7, [r0, #8]
d0043c0e:	2a00      	cmp	r2, #0
d0043c10:	f000 828e 	beq.w	d0044130 <clipTriangleToFrustum+0x610>
d0043c14:	2900      	cmp	r1, #0
d0043c16:	f000 828b 	beq.w	d0044130 <clipTriangleToFrustum+0x610>
d0043c1a:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0043c1e:	a922      	add	r1, sp, #136	; 0x88
d0043c20:	3301      	adds	r3, #1
d0043c22:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d0043c26:	edc2 5a00 	vstr	s11, [r2]
d0043c2a:	edc2 1a01 	vstr	s3, [r2, #4]
d0043c2e:	ed82 4a02 	vstr	s8, [r2, #8]
d0043c32:	2b02      	cmp	r3, #2
d0043c34:	f340 8216 	ble.w	d0044064 <clipTriangleToFrustum+0x544>
d0043c38:	eb03 0643 	add.w	r6, r3, r3, lsl #1
d0043c3c:	a822      	add	r0, sp, #136	; 0x88
d0043c3e:	2300      	movs	r3, #0
d0043c40:	00b6      	lsls	r6, r6, #2
d0043c42:	4601      	mov	r1, r0
d0043c44:	4607      	mov	r7, r0
d0043c46:	f1a6 020c 	sub.w	r2, r6, #12
d0043c4a:	4406      	add	r6, r0
d0043c4c:	4402      	add	r2, r0
d0043c4e:	ed92 7a00 	vldr	s14, [r2]
d0043c52:	edd2 7a02 	vldr	s15, [r2, #8]
d0043c56:	ed92 6a01 	vldr	s12, [r2, #4]
d0043c5a:	ee77 6a27 	vadd.f32	s13, s14, s15
d0043c5e:	e009      	b.n	d0043c74 <clipTriangleToFrustum+0x154>
d0043c60:	3301      	adds	r3, #1
d0043c62:	ed82 7a00 	vstr	s14, [r2]
d0043c66:	ed82 6a01 	vstr	s12, [r2, #4]
d0043c6a:	edc2 7a02 	vstr	s15, [r2, #8]
d0043c6e:	310c      	adds	r1, #12
d0043c70:	428e      	cmp	r6, r1
d0043c72:	d04e      	beq.n	d0043d12 <clipTriangleToFrustum+0x1f2>
d0043c74:	eeb0 4a47 	vmov.f32	s8, s14
d0043c78:	ed91 7a00 	vldr	s14, [r1]
d0043c7c:	eeb0 5a67 	vmov.f32	s10, s15
d0043c80:	edd1 7a02 	vldr	s15, [r1, #8]
d0043c84:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043c88:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0043c8c:	eef0 5a66 	vmov.f32	s11, s13
d0043c90:	ee77 6a27 	vadd.f32	s13, s14, s15
d0043c94:	eb04 0282 	add.w	r2, r4, r2, lsl #2
d0043c98:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043c9c:	eef0 4a46 	vmov.f32	s9, s12
d0043ca0:	ed91 6a01 	vldr	s12, [r1, #4]
d0043ca4:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043ca8:	bfac      	ite	ge
d0043caa:	2701      	movge	r7, #1
d0043cac:	2700      	movlt	r7, #0
d0043cae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043cb2:	bfac      	ite	ge
d0043cb4:	f04f 0c01 	movge.w	ip, #1
d0043cb8:	f04f 0c00 	movlt.w	ip, #0
d0043cbc:	b117      	cbz	r7, d0043cc4 <clipTriangleToFrustum+0x1a4>
d0043cbe:	f1bc 0f00 	cmp.w	ip, #0
d0043cc2:	d1cd      	bne.n	d0043c60 <clipTriangleToFrustum+0x140>
d0043cc4:	eef5 6a40 	vcmp.f32	s13, #0.0
d0043cc8:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0043ccc:	ee75 1ae6 	vsub.f32	s3, s11, s13
d0043cd0:	ee37 2a44 	vsub.f32	s4, s14, s8
d0043cd4:	eb04 0282 	add.w	r2, r4, r2, lsl #2
d0043cd8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043cdc:	ee76 2a64 	vsub.f32	s5, s12, s9
d0043ce0:	ee37 3ac5 	vsub.f32	s6, s15, s10
d0043ce4:	f140 818f 	bpl.w	d0044006 <clipTriangleToFrustum+0x4e6>
d0043ce8:	2f00      	cmp	r7, #0
d0043cea:	f000 818c 	beq.w	d0044006 <clipTriangleToFrustum+0x4e6>
d0043cee:	eec5 3aa1 	vdiv.f32	s7, s11, s3
d0043cf2:	310c      	adds	r1, #12
d0043cf4:	3301      	adds	r3, #1
d0043cf6:	428e      	cmp	r6, r1
d0043cf8:	eea2 4a23 	vfma.f32	s8, s4, s7
d0043cfc:	eee2 4aa3 	vfma.f32	s9, s5, s7
d0043d00:	eea3 5a23 	vfma.f32	s10, s6, s7
d0043d04:	ed82 4a00 	vstr	s8, [r2]
d0043d08:	edc2 4a01 	vstr	s9, [r2, #4]
d0043d0c:	ed82 5a02 	vstr	s10, [r2, #8]
d0043d10:	d1b0      	bne.n	d0043c74 <clipTriangleToFrustum+0x154>
d0043d12:	2b02      	cmp	r3, #2
d0043d14:	f340 81a6 	ble.w	d0044064 <clipTriangleToFrustum+0x544>
d0043d18:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d0043d1c:	4626      	mov	r6, r4
d0043d1e:	4627      	mov	r7, r4
d0043d20:	2200      	movs	r2, #0
d0043d22:	009b      	lsls	r3, r3, #2
d0043d24:	f1a3 010c 	sub.w	r1, r3, #12
d0043d28:	4423      	add	r3, r4
d0043d2a:	4421      	add	r1, r4
d0043d2c:	edd1 7a00 	vldr	s15, [r1]
d0043d30:	ed91 7a02 	vldr	s14, [r1, #8]
d0043d34:	ed91 6a01 	vldr	s12, [r1, #4]
d0043d38:	ee77 6a67 	vsub.f32	s13, s14, s15
d0043d3c:	e009      	b.n	d0043d52 <clipTriangleToFrustum+0x232>
d0043d3e:	3201      	adds	r2, #1
d0043d40:	edc1 7a00 	vstr	s15, [r1]
d0043d44:	ed81 6a01 	vstr	s12, [r1, #4]
d0043d48:	ed81 7a02 	vstr	s14, [r1, #8]
d0043d4c:	370c      	adds	r7, #12
d0043d4e:	42bb      	cmp	r3, r7
d0043d50:	d059      	beq.n	d0043e06 <clipTriangleToFrustum+0x2e6>
d0043d52:	eeb0 4a67 	vmov.f32	s8, s15
d0043d56:	edd7 7a00 	vldr	s15, [r7]
d0043d5a:	eeb0 5a47 	vmov.f32	s10, s14
d0043d5e:	ed97 7a02 	vldr	s14, [r7, #8]
d0043d62:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043d66:	f10d 0c88 	add.w	ip, sp, #136	; 0x88
d0043d6a:	eef0 5a66 	vmov.f32	s11, s13
d0043d6e:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0043d72:	ee77 6a67 	vsub.f32	s13, s14, s15
d0043d76:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043d7a:	eb0c 0181 	add.w	r1, ip, r1, lsl #2
d0043d7e:	eef0 4a46 	vmov.f32	s9, s12
d0043d82:	ed97 6a01 	vldr	s12, [r7, #4]
d0043d86:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043d8a:	bfac      	ite	ge
d0043d8c:	f04f 0c01 	movge.w	ip, #1
d0043d90:	f04f 0c00 	movlt.w	ip, #0
d0043d94:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043d98:	bfac      	ite	ge
d0043d9a:	f04f 0e01 	movge.w	lr, #1
d0043d9e:	f04f 0e00 	movlt.w	lr, #0
d0043da2:	f1bc 0f00 	cmp.w	ip, #0
d0043da6:	d002      	beq.n	d0043dae <clipTriangleToFrustum+0x28e>
d0043da8:	f1be 0f00 	cmp.w	lr, #0
d0043dac:	d1c7      	bne.n	d0043d3e <clipTriangleToFrustum+0x21e>
d0043dae:	eef5 6a40 	vcmp.f32	s13, #0.0
d0043db2:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0043db6:	ee77 3aa5 	vadd.f32	s7, s15, s11
d0043dba:	f10d 0888 	add.w	r8, sp, #136	; 0x88
d0043dbe:	ee77 1ac4 	vsub.f32	s3, s15, s8
d0043dc2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043dc6:	eb08 0181 	add.w	r1, r8, r1, lsl #2
d0043dca:	ee36 2a64 	vsub.f32	s4, s12, s9
d0043dce:	ee73 3ac7 	vsub.f32	s7, s7, s14
d0043dd2:	ee77 2a45 	vsub.f32	s5, s14, s10
d0043dd6:	f140 8268 	bpl.w	d00442aa <clipTriangleToFrustum+0x78a>
d0043dda:	f1bc 0f00 	cmp.w	ip, #0
d0043dde:	f000 8264 	beq.w	d00442aa <clipTriangleToFrustum+0x78a>
d0043de2:	ee85 3aa3 	vdiv.f32	s6, s11, s7
d0043de6:	370c      	adds	r7, #12
d0043de8:	3201      	adds	r2, #1
d0043dea:	42bb      	cmp	r3, r7
d0043dec:	eea1 4a83 	vfma.f32	s8, s3, s6
d0043df0:	eee2 4a03 	vfma.f32	s9, s4, s6
d0043df4:	eea2 5a83 	vfma.f32	s10, s5, s6
d0043df8:	ed81 4a00 	vstr	s8, [r1]
d0043dfc:	edc1 4a01 	vstr	s9, [r1, #4]
d0043e00:	ed81 5a02 	vstr	s10, [r1, #8]
d0043e04:	d1a5      	bne.n	d0043d52 <clipTriangleToFrustum+0x232>
d0043e06:	2a02      	cmp	r2, #2
d0043e08:	f340 812c 	ble.w	d0044064 <clipTriangleToFrustum+0x544>
d0043e0c:	eb02 0342 	add.w	r3, r2, r2, lsl #1
d0043e10:	af22      	add	r7, sp, #136	; 0x88
d0043e12:	eddf 6add 	vldr	s13, [pc, #884]	; d0044188 <clipTriangleToFrustum+0x668>
d0043e16:	2200      	movs	r2, #0
d0043e18:	009b      	lsls	r3, r3, #2
d0043e1a:	eef0 2a66 	vmov.f32	s5, s13
d0043e1e:	f1a3 010c 	sub.w	r1, r3, #12
d0043e22:	443b      	add	r3, r7
d0043e24:	4439      	add	r1, r7
d0043e26:	edd1 7a01 	vldr	s15, [r1, #4]
d0043e2a:	ed91 7a02 	vldr	s14, [r1, #8]
d0043e2e:	eef0 5a67 	vmov.f32	s11, s15
d0043e32:	ed91 6a00 	vldr	s12, [r1]
d0043e36:	eed7 5a26 	vfnms.f32	s11, s14, s13
d0043e3a:	eef0 6a65 	vmov.f32	s13, s11
d0043e3e:	e00c      	b.n	d0043e5a <clipTriangleToFrustum+0x33a>
d0043e40:	f1bc 0f00 	cmp.w	ip, #0
d0043e44:	d031      	beq.n	d0043eaa <clipTriangleToFrustum+0x38a>
d0043e46:	3201      	adds	r2, #1
d0043e48:	ed81 6a00 	vstr	s12, [r1]
d0043e4c:	edc1 7a01 	vstr	s15, [r1, #4]
d0043e50:	ed81 7a02 	vstr	s14, [r1, #8]
d0043e54:	300c      	adds	r0, #12
d0043e56:	4298      	cmp	r0, r3
d0043e58:	d050      	beq.n	d0043efc <clipTriangleToFrustum+0x3dc>
d0043e5a:	eeb0 5a47 	vmov.f32	s10, s14
d0043e5e:	ed90 7a02 	vldr	s14, [r0, #8]
d0043e62:	eef0 4a67 	vmov.f32	s9, s15
d0043e66:	edd0 7a01 	vldr	s15, [r0, #4]
d0043e6a:	ee67 3a22 	vmul.f32	s7, s14, s5
d0043e6e:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0043e72:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043e76:	eef0 5a66 	vmov.f32	s11, s13
d0043e7a:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d0043e7e:	ee73 6ae7 	vsub.f32	s13, s7, s15
d0043e82:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043e86:	eeb0 4a46 	vmov.f32	s8, s12
d0043e8a:	ed90 6a00 	vldr	s12, [r0]
d0043e8e:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043e92:	bfac      	ite	ge
d0043e94:	2701      	movge	r7, #1
d0043e96:	2700      	movlt	r7, #0
d0043e98:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043e9c:	bfac      	ite	ge
d0043e9e:	f04f 0c01 	movge.w	ip, #1
d0043ea2:	f04f 0c00 	movlt.w	ip, #0
d0043ea6:	2f00      	cmp	r7, #0
d0043ea8:	d1ca      	bne.n	d0043e40 <clipTriangleToFrustum+0x320>
d0043eaa:	eef5 6a40 	vcmp.f32	s13, #0.0
d0043eae:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0043eb2:	ee37 3aa5 	vadd.f32	s6, s15, s11
d0043eb6:	ee36 1a44 	vsub.f32	s2, s12, s8
d0043eba:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d0043ebe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043ec2:	ee77 1ae4 	vsub.f32	s3, s15, s9
d0043ec6:	ee33 3a63 	vsub.f32	s6, s6, s7
d0043eca:	ee37 2a45 	vsub.f32	s4, s14, s10
d0043ece:	f140 821f 	bpl.w	d0044310 <clipTriangleToFrustum+0x7f0>
d0043ed2:	2f00      	cmp	r7, #0
d0043ed4:	f000 821c 	beq.w	d0044310 <clipTriangleToFrustum+0x7f0>
d0043ed8:	eec5 3a83 	vdiv.f32	s7, s11, s6
d0043edc:	300c      	adds	r0, #12
d0043ede:	3201      	adds	r2, #1
d0043ee0:	4298      	cmp	r0, r3
d0043ee2:	eea1 4a23 	vfma.f32	s8, s2, s7
d0043ee6:	eee1 4aa3 	vfma.f32	s9, s3, s7
d0043eea:	eea2 5a23 	vfma.f32	s10, s4, s7
d0043eee:	ed81 4a00 	vstr	s8, [r1]
d0043ef2:	edc1 4a01 	vstr	s9, [r1, #4]
d0043ef6:	ed81 5a02 	vstr	s10, [r1, #8]
d0043efa:	d1ae      	bne.n	d0043e5a <clipTriangleToFrustum+0x33a>
d0043efc:	2a02      	cmp	r2, #2
d0043efe:	f340 80b1 	ble.w	d0044064 <clipTriangleToFrustum+0x544>
d0043f02:	eb02 0342 	add.w	r3, r2, r2, lsl #1
d0043f06:	eddf 6aa0 	vldr	s13, [pc, #640]	; d0044188 <clipTriangleToFrustum+0x668>
d0043f0a:	2700      	movs	r7, #0
d0043f0c:	009b      	lsls	r3, r3, #2
d0043f0e:	eef0 3a66 	vmov.f32	s7, s13
d0043f12:	f1a3 020c 	sub.w	r2, r3, #12
d0043f16:	4423      	add	r3, r4
d0043f18:	4414      	add	r4, r2
d0043f1a:	edd4 7a01 	vldr	s15, [r4, #4]
d0043f1e:	ed94 7a02 	vldr	s14, [r4, #8]
d0043f22:	eef0 5a67 	vmov.f32	s11, s15
d0043f26:	ed94 6a00 	vldr	s12, [r4]
d0043f2a:	eee7 5a26 	vfma.f32	s11, s14, s13
d0043f2e:	eef0 6a65 	vmov.f32	s13, s11
d0043f32:	e00a      	b.n	d0043f4a <clipTriangleToFrustum+0x42a>
d0043f34:	b380      	cbz	r0, d0043f98 <clipTriangleToFrustum+0x478>
d0043f36:	3701      	adds	r7, #1
d0043f38:	ed82 6a00 	vstr	s12, [r2]
d0043f3c:	edc2 7a01 	vstr	s15, [r2, #4]
d0043f40:	ed82 7a02 	vstr	s14, [r2, #8]
d0043f44:	360c      	adds	r6, #12
d0043f46:	429e      	cmp	r6, r3
d0043f48:	d04e      	beq.n	d0043fe8 <clipTriangleToFrustum+0x4c8>
d0043f4a:	eef0 4a67 	vmov.f32	s9, s15
d0043f4e:	edd6 7a01 	vldr	s15, [r6, #4]
d0043f52:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043f56:	a922      	add	r1, sp, #136	; 0x88
d0043f58:	eef0 5a66 	vmov.f32	s11, s13
d0043f5c:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d0043f60:	eef0 6a67 	vmov.f32	s13, s15
d0043f64:	eeb0 5a47 	vmov.f32	s10, s14
d0043f68:	ed96 7a02 	vldr	s14, [r6, #8]
d0043f6c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043f70:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d0043f74:	eee7 6a23 	vfma.f32	s13, s14, s7
d0043f78:	eeb0 4a46 	vmov.f32	s8, s12
d0043f7c:	ed96 6a00 	vldr	s12, [r6]
d0043f80:	bfac      	ite	ge
d0043f82:	2101      	movge	r1, #1
d0043f84:	2100      	movlt	r1, #0
d0043f86:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0043f8a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043f8e:	bfac      	ite	ge
d0043f90:	2001      	movge	r0, #1
d0043f92:	2000      	movlt	r0, #0
d0043f94:	2900      	cmp	r1, #0
d0043f96:	d1cd      	bne.n	d0043f34 <clipTriangleToFrustum+0x414>
d0043f98:	eef5 6a40 	vcmp.f32	s13, #0.0
d0043f9c:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d0043fa0:	ac22      	add	r4, sp, #136	; 0x88
d0043fa2:	ee35 1ae6 	vsub.f32	s2, s11, s13
d0043fa6:	ee76 1a44 	vsub.f32	s3, s12, s8
d0043faa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0043fae:	eb04 0282 	add.w	r2, r4, r2, lsl #2
d0043fb2:	ee37 2ae4 	vsub.f32	s4, s15, s9
d0043fb6:	ee77 2a45 	vsub.f32	s5, s14, s10
d0043fba:	f140 81de 	bpl.w	d004437a <clipTriangleToFrustum+0x85a>
d0043fbe:	2900      	cmp	r1, #0
d0043fc0:	f000 81db 	beq.w	d004437a <clipTriangleToFrustum+0x85a>
d0043fc4:	ee85 3a81 	vdiv.f32	s6, s11, s2
d0043fc8:	360c      	adds	r6, #12
d0043fca:	3701      	adds	r7, #1
d0043fcc:	429e      	cmp	r6, r3
d0043fce:	eea1 4a83 	vfma.f32	s8, s3, s6
d0043fd2:	eee2 4a03 	vfma.f32	s9, s4, s6
d0043fd6:	eea2 5a83 	vfma.f32	s10, s5, s6
d0043fda:	ed82 4a00 	vstr	s8, [r2]
d0043fde:	edc2 4a01 	vstr	s9, [r2, #4]
d0043fe2:	ed82 5a02 	vstr	s10, [r2, #8]
d0043fe6:	d1b0      	bne.n	d0043f4a <clipTriangleToFrustum+0x42a>
d0043fe8:	2f02      	cmp	r7, #2
d0043fea:	dd3b      	ble.n	d0044064 <clipTriangleToFrustum+0x544>
d0043fec:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d0043ff0:	a922      	add	r1, sp, #136	; 0x88
d0043ff2:	4628      	mov	r0, r5
d0043ff4:	0092      	lsls	r2, r2, #2
d0043ff6:	f001 ff7f 	bl	d0045ef8 <memcpy>
d0043ffa:	4638      	mov	r0, r7
d0043ffc:	b03a      	add	sp, #232	; 0xe8
d0043ffe:	ecbd 8b02 	vpop	{d8}
d0044002:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0044006:	eef5 5a40 	vcmp.f32	s11, #0.0
d004400a:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d004400e:	ee75 1ae6 	vsub.f32	s3, s11, s13
d0044012:	eb04 0782 	add.w	r7, r4, r2, lsl #2
d0044016:	ee37 2a44 	vsub.f32	s4, s14, s8
d004401a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004401e:	463a      	mov	r2, r7
d0044020:	ee76 2a64 	vsub.f32	s5, s12, s9
d0044024:	ee37 3ac5 	vsub.f32	s6, s15, s10
d0044028:	f107 070c 	add.w	r7, r7, #12
d004402c:	f57f ae1f 	bpl.w	d0043c6e <clipTriangleToFrustum+0x14e>
d0044030:	f1bc 0f00 	cmp.w	ip, #0
d0044034:	f43f ae1b 	beq.w	d0043c6e <clipTriangleToFrustum+0x14e>
d0044038:	eec5 3aa1 	vdiv.f32	s7, s11, s3
d004403c:	3302      	adds	r3, #2
d004403e:	eea2 4a23 	vfma.f32	s8, s4, s7
d0044042:	eee2 4aa3 	vfma.f32	s9, s5, s7
d0044046:	eea3 5a23 	vfma.f32	s10, s6, s7
d004404a:	ed82 4a00 	vstr	s8, [r2]
d004404e:	edc2 4a01 	vstr	s9, [r2, #4]
d0044052:	ed82 5a02 	vstr	s10, [r2, #8]
d0044056:	ed87 7a00 	vstr	s14, [r7]
d004405a:	ed87 6a01 	vstr	s12, [r7, #4]
d004405e:	edc7 7a02 	vstr	s15, [r7, #8]
d0044062:	e604      	b.n	d0043c6e <clipTriangleToFrustum+0x14e>
d0044064:	2700      	movs	r7, #0
d0044066:	4638      	mov	r0, r7
d0044068:	b03a      	add	sp, #232	; 0xe8
d004406a:	ecbd 8b02 	vpop	{d8}
d004406e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0044072:	eef5 4a40 	vcmp.f32	s9, #0.0
d0044076:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004407a:	f140 80b7 	bpl.w	d00441ec <clipTriangleToFrustum+0x6cc>
d004407e:	2900      	cmp	r1, #0
d0044080:	f000 80b4 	beq.w	d00441ec <clipTriangleToFrustum+0x6cc>
d0044084:	ee74 0a67 	vsub.f32	s1, s8, s15
d0044088:	eddd 3a0f 	vldr	s7, [sp, #60]	; 0x3c
d004408c:	ee36 8a65 	vsub.f32	s16, s12, s11
d0044090:	2301      	movs	r3, #1
d0044092:	eef0 8a65 	vmov.f32	s17, s11
d0044096:	ed9d 2a0d 	vldr	s4, [sp, #52]	; 0x34
d004409a:	ee85 1a20 	vdiv.f32	s2, s10, s1
d004409e:	eddd 2a0e 	vldr	s5, [sp, #56]	; 0x38
d00440a2:	ee36 0ae1 	vsub.f32	s0, s13, s3
d00440a6:	ee33 3ac7 	vsub.f32	s6, s7, s14
d00440aa:	ee77 0ac4 	vsub.f32	s1, s15, s8
d00440ae:	eeb5 3ac0 	vcmpe.f32	s6, #0.0
d00440b2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00440b6:	bfac      	ite	ge
d00440b8:	461e      	movge	r6, r3
d00440ba:	2600      	movlt	r6, #0
d00440bc:	eee1 8a08 	vfma.f32	s17, s2, s16
d00440c0:	eeb0 8a68 	vmov.f32	s16, s17
d00440c4:	eef0 8a61 	vmov.f32	s17, s3
d00440c8:	ed8d 8a22 	vstr	s16, [sp, #136]	; 0x88
d00440cc:	eee1 8a00 	vfma.f32	s17, s2, s0
d00440d0:	eeb0 0a68 	vmov.f32	s0, s17
d00440d4:	eef0 8a44 	vmov.f32	s17, s8
d00440d8:	ed8d 0a23 	vstr	s0, [sp, #140]	; 0x8c
d00440dc:	eee0 8a81 	vfma.f32	s17, s1, s2
d00440e0:	edcd 8a24 	vstr	s17, [sp, #144]	; 0x90
d00440e4:	eeb5 3a40 	vcmp.f32	s6, #0.0
d00440e8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00440ec:	f140 80af 	bpl.w	d004424e <clipTriangleToFrustum+0x72e>
d00440f0:	2800      	cmp	r0, #0
d00440f2:	f000 80ac 	beq.w	d004424e <clipTriangleToFrustum+0x72e>
d00440f6:	ee37 8ae3 	vsub.f32	s16, s15, s7
d00440fa:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d00440fe:	ee32 0a46 	vsub.f32	s0, s4, s12
d0044102:	4632      	mov	r2, r6
d0044104:	ee72 0ae6 	vsub.f32	s1, s5, s13
d0044108:	ae22      	add	r6, sp, #136	; 0x88
d004410a:	ee84 1a88 	vdiv.f32	s2, s9, s16
d004410e:	3301      	adds	r3, #1
d0044110:	eb06 0080 	add.w	r0, r6, r0, lsl #2
d0044114:	ee73 4ae7 	vsub.f32	s9, s7, s15
d0044118:	eea0 6a01 	vfma.f32	s12, s0, s2
d004411c:	eee0 6a81 	vfma.f32	s13, s1, s2
d0044120:	eee4 7a81 	vfma.f32	s15, s9, s2
d0044124:	ed80 6a00 	vstr	s12, [r0]
d0044128:	edc0 6a01 	vstr	s13, [r0, #4]
d004412c:	edc0 7a02 	vstr	s15, [r0, #8]
d0044130:	eeb5 5a40 	vcmp.f32	s10, #0.0
d0044134:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044138:	d528      	bpl.n	d004418c <clipTriangleToFrustum+0x66c>
d004413a:	b33a      	cbz	r2, d004418c <clipTriangleToFrustum+0x66c>
d004413c:	ee37 5a44 	vsub.f32	s10, s14, s8
d0044140:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0044144:	ee75 5ac2 	vsub.f32	s11, s11, s4
d0044148:	a922      	add	r1, sp, #136	; 0x88
d004414a:	ee71 1ae2 	vsub.f32	s3, s3, s5
d004414e:	3301      	adds	r3, #1
d0044150:	ee35 5a03 	vadd.f32	s10, s10, s6
d0044154:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d0044158:	ee34 4a63 	vsub.f32	s8, s8, s7
d004415c:	eef0 6a42 	vmov.f32	s13, s4
d0044160:	ee83 6a05 	vdiv.f32	s12, s6, s10
d0044164:	eeb0 7a62 	vmov.f32	s14, s5
d0044168:	eef0 7a63 	vmov.f32	s15, s7
d004416c:	eee5 6a86 	vfma.f32	s13, s11, s12
d0044170:	eea1 7a86 	vfma.f32	s14, s3, s12
d0044174:	eee4 7a06 	vfma.f32	s15, s8, s12
d0044178:	edc2 6a00 	vstr	s13, [r2]
d004417c:	ed82 7a01 	vstr	s14, [r2, #4]
d0044180:	edc2 7a02 	vstr	s15, [r2, #8]
d0044184:	e555      	b.n	d0043c32 <clipTriangleToFrustum+0x112>
d0044186:	bf00      	nop
d0044188:	3f2aaaab 	.word	0x3f2aaaab
d004418c:	eeb5 3a40 	vcmp.f32	s6, #0.0
d0044190:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044194:	f57f ad4d 	bpl.w	d0043c32 <clipTriangleToFrustum+0x112>
d0044198:	2900      	cmp	r1, #0
d004419a:	f43f ad4a 	beq.w	d0043c32 <clipTriangleToFrustum+0x112>
d004419e:	ee77 7a44 	vsub.f32	s15, s14, s8
d00441a2:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d00441a6:	ee75 6ac2 	vsub.f32	s13, s11, s4
d00441aa:	a922      	add	r1, sp, #136	; 0x88
d00441ac:	ee31 7ae2 	vsub.f32	s14, s3, s5
d00441b0:	3302      	adds	r3, #2
d00441b2:	ee77 7a83 	vadd.f32	s15, s15, s6
d00441b6:	eb01 0182 	add.w	r1, r1, r2, lsl #2
d00441ba:	ee34 5a63 	vsub.f32	s10, s8, s7
d00441be:	edc1 5a03 	vstr	s11, [r1, #12]
d00441c2:	ee83 6a27 	vdiv.f32	s12, s6, s15
d00441c6:	edc1 1a04 	vstr	s3, [r1, #16]
d00441ca:	ed81 4a05 	vstr	s8, [r1, #20]
d00441ce:	eef0 7a63 	vmov.f32	s15, s7
d00441d2:	eea6 2a86 	vfma.f32	s4, s13, s12
d00441d6:	eee7 2a06 	vfma.f32	s5, s14, s12
d00441da:	eee5 7a06 	vfma.f32	s15, s10, s12
d00441de:	ed81 2a00 	vstr	s4, [r1]
d00441e2:	edc1 2a01 	vstr	s5, [r1, #4]
d00441e6:	edc1 7a02 	vstr	s15, [r1, #8]
d00441ea:	e522      	b.n	d0043c32 <clipTriangleToFrustum+0x112>
d00441ec:	eeb5 5a40 	vcmp.f32	s10, #0.0
d00441f0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00441f4:	f140 80bf 	bpl.w	d0044376 <clipTriangleToFrustum+0x856>
d00441f8:	2800      	cmp	r0, #0
d00441fa:	f000 80bc 	beq.w	d0044376 <clipTriangleToFrustum+0x856>
d00441fe:	ee74 3a67 	vsub.f32	s7, s8, s15
d0044202:	2302      	movs	r3, #2
d0044204:	ee36 2a65 	vsub.f32	s4, s12, s11
d0044208:	ed8d 6a25 	vstr	s12, [sp, #148]	; 0x94
d004420c:	eeb0 1a65 	vmov.f32	s2, s11
d0044210:	edcd 6a26 	vstr	s13, [sp, #152]	; 0x98
d0044214:	ee85 3a23 	vdiv.f32	s6, s10, s7
d0044218:	edcd 7a27 	vstr	s15, [sp, #156]	; 0x9c
d004421c:	ee76 2ae1 	vsub.f32	s5, s13, s3
d0044220:	ee77 3ac4 	vsub.f32	s7, s15, s8
d0044224:	eea3 1a02 	vfma.f32	s2, s6, s4
d0044228:	eeb0 2a41 	vmov.f32	s4, s2
d004422c:	eeb0 1a61 	vmov.f32	s2, s3
d0044230:	ed8d 2a22 	vstr	s4, [sp, #136]	; 0x88
d0044234:	eea3 1a22 	vfma.f32	s2, s6, s5
d0044238:	eef0 2a41 	vmov.f32	s5, s2
d004423c:	eeb0 1a44 	vmov.f32	s2, s8
d0044240:	edcd 2a23 	vstr	s5, [sp, #140]	; 0x8c
d0044244:	eea3 1a23 	vfma.f32	s2, s6, s7
d0044248:	ed8d 1a24 	vstr	s2, [sp, #144]	; 0x90
d004424c:	e4be      	b.n	d0043bcc <clipTriangleToFrustum+0xac>
d004424e:	eef5 4ac0 	vcmpe.f32	s9, #0.0
d0044252:	f006 0201 	and.w	r2, r6, #1
d0044256:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004425a:	bf58      	it	pl
d004425c:	2200      	movpl	r2, #0
d004425e:	2a00      	cmp	r2, #0
d0044260:	f000 8087 	beq.w	d0044372 <clipTriangleToFrustum+0x852>
d0044264:	ee37 8ae3 	vsub.f32	s16, s15, s7
d0044268:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d004426c:	ee32 0a46 	vsub.f32	s0, s4, s12
d0044270:	ae22      	add	r6, sp, #136	; 0x88
d0044272:	ee72 0ae6 	vsub.f32	s1, s5, s13
d0044276:	3302      	adds	r3, #2
d0044278:	ee84 1a88 	vdiv.f32	s2, s9, s16
d004427c:	eb06 0680 	add.w	r6, r6, r0, lsl #2
d0044280:	ed86 2a03 	vstr	s4, [r6, #12]
d0044284:	edc6 2a04 	vstr	s5, [r6, #16]
d0044288:	edc6 3a05 	vstr	s7, [r6, #20]
d004428c:	ee73 4ae7 	vsub.f32	s9, s7, s15
d0044290:	eea0 6a01 	vfma.f32	s12, s0, s2
d0044294:	eee0 6a81 	vfma.f32	s13, s1, s2
d0044298:	eee4 7a81 	vfma.f32	s15, s9, s2
d004429c:	ed86 6a00 	vstr	s12, [r6]
d00442a0:	edc6 6a01 	vstr	s13, [r6, #4]
d00442a4:	edc6 7a02 	vstr	s15, [r6, #8]
d00442a8:	e4b1      	b.n	d0043c0e <clipTriangleToFrustum+0xee>
d00442aa:	eef5 5a40 	vcmp.f32	s11, #0.0
d00442ae:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d00442b2:	f10d 0c88 	add.w	ip, sp, #136	; 0x88
d00442b6:	ee77 3aa5 	vadd.f32	s7, s15, s11
d00442ba:	ee77 1ac4 	vsub.f32	s3, s15, s8
d00442be:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00442c2:	eb0c 0c81 	add.w	ip, ip, r1, lsl #2
d00442c6:	ee36 2a64 	vsub.f32	s4, s12, s9
d00442ca:	4661      	mov	r1, ip
d00442cc:	ee73 3ac7 	vsub.f32	s7, s7, s14
d00442d0:	ee77 2a45 	vsub.f32	s5, s14, s10
d00442d4:	f10c 0c0c 	add.w	ip, ip, #12
d00442d8:	f57f ad38 	bpl.w	d0043d4c <clipTriangleToFrustum+0x22c>
d00442dc:	f1be 0f00 	cmp.w	lr, #0
d00442e0:	f43f ad34 	beq.w	d0043d4c <clipTriangleToFrustum+0x22c>
d00442e4:	ee85 3aa3 	vdiv.f32	s6, s11, s7
d00442e8:	3202      	adds	r2, #2
d00442ea:	eea1 4a83 	vfma.f32	s8, s3, s6
d00442ee:	eee2 4a03 	vfma.f32	s9, s4, s6
d00442f2:	eea2 5a83 	vfma.f32	s10, s5, s6
d00442f6:	ed81 4a00 	vstr	s8, [r1]
d00442fa:	edc1 4a01 	vstr	s9, [r1, #4]
d00442fe:	ed81 5a02 	vstr	s10, [r1, #8]
d0044302:	edcc 7a00 	vstr	s15, [ip]
d0044306:	ed8c 6a01 	vstr	s12, [ip, #4]
d004430a:	ed8c 7a02 	vstr	s14, [ip, #8]
d004430e:	e51d      	b.n	d0043d4c <clipTriangleToFrustum+0x22c>
d0044310:	eef5 5a40 	vcmp.f32	s11, #0.0
d0044314:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0044318:	ee37 3aa5 	vadd.f32	s6, s15, s11
d004431c:	eb04 0781 	add.w	r7, r4, r1, lsl #2
d0044320:	ee36 1a44 	vsub.f32	s2, s12, s8
d0044324:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044328:	4639      	mov	r1, r7
d004432a:	ee77 1ae4 	vsub.f32	s3, s15, s9
d004432e:	ee73 3a63 	vsub.f32	s7, s6, s7
d0044332:	f107 070c 	add.w	r7, r7, #12
d0044336:	ee37 2a45 	vsub.f32	s4, s14, s10
d004433a:	f57f ad8b 	bpl.w	d0043e54 <clipTriangleToFrustum+0x334>
d004433e:	f1bc 0f00 	cmp.w	ip, #0
d0044342:	f43f ad87 	beq.w	d0043e54 <clipTriangleToFrustum+0x334>
d0044346:	ee85 3aa3 	vdiv.f32	s6, s11, s7
d004434a:	3202      	adds	r2, #2
d004434c:	eea1 4a03 	vfma.f32	s8, s2, s6
d0044350:	eee1 4a83 	vfma.f32	s9, s3, s6
d0044354:	eea2 5a03 	vfma.f32	s10, s4, s6
d0044358:	ed81 4a00 	vstr	s8, [r1]
d004435c:	edc1 4a01 	vstr	s9, [r1, #4]
d0044360:	ed81 5a02 	vstr	s10, [r1, #8]
d0044364:	ed87 6a00 	vstr	s12, [r7]
d0044368:	edc7 7a01 	vstr	s15, [r7, #4]
d004436c:	ed87 7a02 	vstr	s14, [r7, #8]
d0044370:	e570      	b.n	d0043e54 <clipTriangleToFrustum+0x334>
d0044372:	4632      	mov	r2, r6
d0044374:	e44b      	b.n	d0043c0e <clipTriangleToFrustum+0xee>
d0044376:	2300      	movs	r3, #0
d0044378:	e428      	b.n	d0043bcc <clipTriangleToFrustum+0xac>
d004437a:	eef5 5a40 	vcmp.f32	s11, #0.0
d004437e:	eb07 0247 	add.w	r2, r7, r7, lsl #1
d0044382:	a922      	add	r1, sp, #136	; 0x88
d0044384:	ee35 1ae6 	vsub.f32	s2, s11, s13
d0044388:	ee76 1a44 	vsub.f32	s3, s12, s8
d004438c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044390:	eb01 0182 	add.w	r1, r1, r2, lsl #2
d0044394:	ee37 2ae4 	vsub.f32	s4, s15, s9
d0044398:	460a      	mov	r2, r1
d004439a:	ee77 2a45 	vsub.f32	s5, s14, s10
d004439e:	f101 010c 	add.w	r1, r1, #12
d00443a2:	f57f adcf 	bpl.w	d0043f44 <clipTriangleToFrustum+0x424>
d00443a6:	2800      	cmp	r0, #0
d00443a8:	f43f adcc 	beq.w	d0043f44 <clipTriangleToFrustum+0x424>
d00443ac:	ee85 3a81 	vdiv.f32	s6, s11, s2
d00443b0:	3702      	adds	r7, #2
d00443b2:	eea1 4a83 	vfma.f32	s8, s3, s6
d00443b6:	eee2 4a03 	vfma.f32	s9, s4, s6
d00443ba:	eea2 5a83 	vfma.f32	s10, s5, s6
d00443be:	ed82 4a00 	vstr	s8, [r2]
d00443c2:	edc2 4a01 	vstr	s9, [r2, #4]
d00443c6:	ed82 5a02 	vstr	s10, [r2, #8]
d00443ca:	ed81 6a00 	vstr	s12, [r1]
d00443ce:	edc1 7a01 	vstr	s15, [r1, #4]
d00443d2:	ed81 7a02 	vstr	s14, [r1, #8]
d00443d6:	e5b5      	b.n	d0043f44 <clipTriangleToFrustum+0x424>

d00443d8 <submitClippedTri>:
d00443d8:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d00443dc:	eef4 7ac1 	vcmpe.f32	s15, s2
d00443e0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00443e4:	eef4 2ae7 	vcmpe.f32	s5, s15
d00443e8:	bfac      	ite	ge
d00443ea:	2301      	movge	r3, #1
d00443ec:	2300      	movlt	r3, #0
d00443ee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00443f2:	bf98      	it	ls
d00443f4:	f043 0301 	orrls.w	r3, r3, #1
d00443f8:	b923      	cbnz	r3, d0044404 <submitClippedTri+0x2c>
d00443fa:	eef4 7ac4 	vcmpe.f32	s15, s8
d00443fe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044402:	db00      	blt.n	d0044406 <submitClippedTri+0x2e>
d0044404:	4770      	bx	lr
d0044406:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d004440a:	ed9f 6a69 	vldr	s12, [pc, #420]	; d00445b0 <submitClippedTri+0x1d8>
d004440e:	eddf 7a69 	vldr	s15, [pc, #420]	; d00445b4 <submitClippedTri+0x1dc>
d0044412:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d0044416:	ee60 0a86 	vmul.f32	s1, s1, s12
d004441a:	ed9f 5a67 	vldr	s10, [pc, #412]	; d00445b8 <submitClippedTri+0x1e0>
d004441e:	eec6 5aa2 	vdiv.f32	s11, s13, s5
d0044422:	ee63 3a86 	vmul.f32	s7, s7, s12
d0044426:	ee22 2a06 	vmul.f32	s4, s4, s12
d004442a:	eeb0 6a67 	vmov.f32	s12, s15
d004442e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0044432:	ed2d 8b04 	vpush	{d8-d9}
d0044436:	eec6 8a81 	vdiv.f32	s17, s13, s2
d004443a:	b08b      	sub	sp, #44	; 0x2c
d004443c:	eeb0 9a66 	vmov.f32	s18, s13
d0044440:	ee86 8a84 	vdiv.f32	s16, s13, s8
d0044444:	eea5 6a82 	vfma.f32	s12, s11, s4
d0044448:	eea0 9a28 	vfma.f32	s18, s0, s17
d004444c:	eeb0 0a67 	vmov.f32	s0, s15
d0044450:	eebd 6ac6 	vcvt.s32.f32	s12, s12
d0044454:	eea8 0aa0 	vfma.f32	s0, s17, s1
d0044458:	eef0 0a66 	vmov.f32	s1, s13
d004445c:	ee16 3a10 	vmov	r3, s12
d0044460:	eee8 7a23 	vfma.f32	s15, s16, s7
d0044464:	eee1 0aa5 	vfma.f32	s1, s3, s11
d0044468:	eef0 1a47 	vmov.f32	s3, s14
d004446c:	eefd 5ac0 	vcvt.s32.f32	s11, s0
d0044470:	eee9 1a05 	vfma.f32	s3, s18, s10
d0044474:	ee15 6a90 	vmov	r6, s11
d0044478:	eef0 5a66 	vmov.f32	s11, s13
d004447c:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0044480:	1b9d      	subs	r5, r3, r6
d0044482:	eee3 5a08 	vfma.f32	s11, s6, s16
d0044486:	ee17 3a90 	vmov	r3, s15
d004448a:	eefd 3ae1 	vcvt.s32.f32	s7, s3
d004448e:	eba3 0c06 	sub.w	ip, r3, r6
d0044492:	ee13 7a90 	vmov	r7, s7
d0044496:	eeb0 3a65 	vmov.f32	s6, s11
d004449a:	eef0 5a47 	vmov.f32	s11, s14
d004449e:	eea3 7a05 	vfma.f32	s14, s6, s10
d00444a2:	eee0 5a85 	vfma.f32	s11, s1, s10
d00444a6:	eefd 7ac7 	vcvt.s32.f32	s15, s14
d00444aa:	eefd 5ae5 	vcvt.s32.f32	s11, s11
d00444ae:	ee15 4a90 	vmov	r4, s11
d00444b2:	eba4 0e07 	sub.w	lr, r4, r7
d00444b6:	ee17 4a90 	vmov	r4, s15
d00444ba:	fb0c fc0e 	mul.w	ip, ip, lr
d00444be:	eba4 0e07 	sub.w	lr, r4, r7
d00444c2:	fb0e c515 	mls	r5, lr, r5, ip
d00444c6:	2d00      	cmp	r5, #0
d00444c8:	dd6d      	ble.n	d00445a6 <submitClippedTri+0x1ce>
d00444ca:	f8df e0f8 	ldr.w	lr, [pc, #248]	; d00445c4 <submitClippedTri+0x1ec>
d00444ce:	f8de 5000 	ldr.w	r5, [lr]
d00444d2:	f5b5 5f00 	cmp.w	r5, #8192	; 0x2000
d00444d6:	da66      	bge.n	d00445a6 <submitClippedTri+0x1ce>
d00444d8:	f8df c0ec 	ldr.w	ip, [pc, #236]	; d00445c8 <submitClippedTri+0x1f0>
d00444dc:	ea4f 1885 	mov.w	r8, r5, lsl #6
d00444e0:	f105 0b01 	add.w	fp, r5, #1
d00444e4:	ed9f 5a35 	vldr	s10, [pc, #212]	; d00445bc <submitClippedTri+0x1e4>
d00444e8:	f848 700c 	str.w	r7, [r8, ip]
d00444ec:	eb0c 1585 	add.w	r5, ip, r5, lsl #6
d00444f0:	f108 0a08 	add.w	sl, r8, #8
d00444f4:	f108 0910 	add.w	r9, r8, #16
d00444f8:	ee15 7a90 	vmov	r7, s11
d00444fc:	606e      	str	r6, [r5, #4]
d00444fe:	eb0a 060c 	add.w	r6, sl, ip
d0044502:	f8ce b000 	str.w	fp, [lr]
d0044506:	f84a 700c 	str.w	r7, [sl, ip]
d004450a:	eb09 070c 	add.w	r7, r9, ip
d004450e:	ed86 6a01 	vstr	s12, [r6, #4]
d0044512:	f849 400c 	str.w	r4, [r9, ip]
d0044516:	607b      	str	r3, [r7, #4]
d0044518:	f885 1034 	strb.w	r1, [r5, #52]	; 0x34
d004451c:	f885 2035 	strb.w	r2, [r5, #53]	; 0x35
d0044520:	edc5 4a07 	vstr	s9, [r5, #28]
d0044524:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0044528:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d004452c:	ee31 7a47 	vsub.f32	s14, s2, s14
d0044530:	ed9f 6a23 	vldr	s12, [pc, #140]	; d00445c0 <submitClippedTri+0x1e8>
d0044534:	ee27 7a27 	vmul.f32	s14, s14, s15
d0044538:	fe87 7a05 	vmaxnm.f32	s14, s14, s10
d004453c:	fe87 7a66 	vminnm.f32	s14, s14, s13
d0044540:	ee27 7a06 	vmul.f32	s14, s14, s12
d0044544:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0044548:	ee17 3a10 	vmov	r3, s14
d004454c:	842b      	strh	r3, [r5, #32]
d004454e:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0044552:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0044556:	ee32 7ac7 	vsub.f32	s14, s5, s14
d004455a:	ee27 7a27 	vmul.f32	s14, s14, s15
d004455e:	fe87 7a05 	vmaxnm.f32	s14, s14, s10
d0044562:	fe87 7a66 	vminnm.f32	s14, s14, s13
d0044566:	ee27 7a06 	vmul.f32	s14, s14, s12
d004456a:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d004456e:	ee17 3a10 	vmov	r3, s14
d0044572:	846b      	strh	r3, [r5, #34]	; 0x22
d0044574:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d0044578:	ed90 7a0f 	vldr	s14, [r0, #60]	; 0x3c
d004457c:	ee74 7a67 	vsub.f32	s15, s8, s15
d0044580:	ed85 1a0a 	vstr	s2, [r5, #40]	; 0x28
d0044584:	edc5 2a0b 	vstr	s5, [r5, #44]	; 0x2c
d0044588:	ed85 4a0c 	vstr	s8, [r5, #48]	; 0x30
d004458c:	ee67 7a87 	vmul.f32	s15, s15, s14
d0044590:	fec7 7a85 	vmaxnm.f32	s15, s15, s10
d0044594:	fec7 6ae6 	vminnm.f32	s13, s15, s13
d0044598:	ee66 6a86 	vmul.f32	s13, s13, s12
d004459c:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d00445a0:	ee16 3a90 	vmov	r3, s13
d00445a4:	84ab      	strh	r3, [r5, #36]	; 0x24
d00445a6:	b00b      	add	sp, #44	; 0x2c
d00445a8:	ecbd 8b04 	vpop	{d8-d9}
d00445ac:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00445b0:	c3700000 	.word	0xc3700000
d00445b4:	43208000 	.word	0x43208000
d00445b8:	43700000 	.word	0x43700000
d00445bc:	00000000 	.word	0x00000000
d00445c0:	477fff00 	.word	0x477fff00
d00445c4:	d00557e4 	.word	0xd00557e4
d00445c8:	d0055800 	.word	0xd0055800

d00445cc <drawFakeHorizonDots>:
d00445cc:	2800      	cmp	r0, #0
d00445ce:	f000 80f2 	beq.w	d00447b6 <drawFakeHorizonDots+0x1ea>
d00445d2:	2a02      	cmp	r2, #2
d00445d4:	edd0 7a02 	vldr	s15, [r0, #8]
d00445d8:	ed90 6a01 	vldr	s12, [r0, #4]
d00445dc:	bfb8      	it	lt
d00445de:	2202      	movlt	r2, #2
d00445e0:	eddf 5a75 	vldr	s11, [pc, #468]	; d00447b8 <drawFakeHorizonDots+0x1ec>
d00445e4:	edd0 6a0d 	vldr	s13, [r0, #52]	; 0x34
d00445e8:	ee07 2a10 	vmov	s14, r2
d00445ec:	edd0 4a10 	vldr	s9, [r0, #64]	; 0x40
d00445f0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00445f4:	ed2d 8b10 	vpush	{d8-d15}
d00445f8:	eef8 9ac7 	vcvt.f32.s32	s19, s14
d00445fc:	ed90 aa00 	vldr	s20, [r0]
d0044600:	b085      	sub	sp, #20
d0044602:	4617      	mov	r7, r2
d0044604:	468b      	mov	fp, r1
d0044606:	496d      	ldr	r1, [pc, #436]	; (d00447bc <drawFakeHorizonDots+0x1f0>)
d0044608:	ee8a 7a29 	vdiv.f32	s14, s20, s19
d004460c:	edcd 7a01 	vstr	s15, [sp, #4]
d0044610:	4e6b      	ldr	r6, [pc, #428]	; (d00447c0 <drawFakeHorizonDots+0x1f4>)
d0044612:	4698      	mov	r8, r3
d0044614:	ed90 ca07 	vldr	s24, [r0, #28]
d0044618:	edd0 ba0a 	vldr	s23, [r0, #40]	; 0x28
d004461c:	4c69      	ldr	r4, [pc, #420]	; (d00447c4 <drawFakeHorizonDots+0x1f8>)
d004461e:	eec7 7aa9 	vdiv.f32	s15, s15, s19
d0044622:	edd0 fa06 	vldr	s31, [r0, #24]
d0044626:	ed90 fa08 	vldr	s30, [r0, #32]
d004462a:	edd0 ea09 	vldr	s29, [r0, #36]	; 0x24
d004462e:	ed90 ea0b 	vldr	s28, [r0, #44]	; 0x2c
d0044632:	edd0 da0c 	vldr	s27, [r0, #48]	; 0x30
d0044636:	ee30 ba46 	vsub.f32	s22, s0, s12
d004463a:	ed90 da0e 	vldr	s26, [r0, #56]	; 0x38
d004463e:	ee69 9aa5 	vmul.f32	s19, s19, s11
d0044642:	ed9f 8a61 	vldr	s16, [pc, #388]	; d00447c8 <drawFakeHorizonDots+0x1fc>
d0044646:	4b61      	ldr	r3, [pc, #388]	; (d00447cc <drawFakeHorizonDots+0x200>)
d0044648:	ee2b ca0c 	vmul.f32	s24, s22, s24
d004464c:	eddf ca60 	vldr	s25, [pc, #384]	; d00447d0 <drawFakeHorizonDots+0x204>
d0044650:	ee6b ba2b 	vmul.f32	s23, s22, s23
d0044654:	eddf 8a5f 	vldr	s17, [pc, #380]	; d00447d4 <drawFakeHorizonDots+0x208>
d0044658:	ee29 8a88 	vmul.f32	s16, s19, s16
d004465c:	f8df 9184 	ldr.w	r9, [pc, #388]	; d00447e4 <drawFakeHorizonDots+0x218>
d0044660:	febb 7a47 	vrintm.f32	s14, s14
d0044664:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0044668:	ee2b ba26 	vmul.f32	s22, s22, s13
d004466c:	ee17 2a10 	vmov	r2, s14
d0044670:	fefb 7a67 	vrintm.f32	s15, s15
d0044674:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0044678:	fb01 f002 	mul.w	r0, r1, r2
d004467c:	f1a2 0112 	sub.w	r1, r2, #18
d0044680:	ee17 2a90 	vmov	r2, s15
d0044684:	4404      	add	r4, r0
d0044686:	fb07 f101 	mul.w	r1, r7, r1
d004468a:	f1a2 0a12 	sub.w	sl, r2, #18
d004468e:	fb06 0202 	mla	r2, r6, r2, r0
d0044692:	9103      	str	r1, [sp, #12]
d0044694:	fb06 460a 	mla	r6, r6, sl, r4
d0044698:	18d3      	adds	r3, r2, r3
d004469a:	fb0a fa07 	mul.w	sl, sl, r7
d004469e:	9302      	str	r3, [sp, #8]
d00446a0:	eddd 7a01 	vldr	s15, [sp, #4]
d00446a4:	4c4c      	ldr	r4, [pc, #304]	; (d00447d8 <drawFakeHorizonDots+0x20c>)
d00446a6:	ee37 9aa9 	vadd.f32	s18, s15, s19
d00446aa:	ee07 aa90 	vmov	s15, sl
d00446ae:	1934      	adds	r4, r6, r4
d00446b0:	9d03      	ldr	r5, [sp, #12]
d00446b2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00446b6:	eddf aa49 	vldr	s21, [pc, #292]	; d00447dc <drawFakeHorizonDots+0x210>
d00446ba:	ee37 9ac9 	vsub.f32	s18, s15, s18
d00446be:	ea84 3354 	eor.w	r3, r4, r4, lsr #13
d00446c2:	ee07 5a90 	vmov	s15, r5
d00446c6:	f104 54b2 	add.w	r4, r4, #373293056	; 0x16400000
d00446ca:	eef0 3a49 	vmov.f32	s7, s18
d00446ce:	fb09 f303 	mul.w	r3, r9, r3
d00446d2:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d00446d6:	ee7a 7a29 	vadd.f32	s15, s20, s19
d00446da:	f504 14b3 	add.w	r4, r4, #1466368	; 0x166000
d00446de:	ea83 4313 	eor.w	r3, r3, r3, lsr #16
d00446e2:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d00446e6:	eddf 5a3e 	vldr	s11, [pc, #248]	; d00447e0 <drawFakeHorizonDots+0x214>
d00446ea:	443d      	add	r5, r7
d00446ec:	f3c3 4207 	ubfx	r2, r3, #16, #8
d00446f0:	ee77 7a67 	vsub.f32	s15, s14, s15
d00446f4:	f204 74b1 	addw	r4, r4, #1969	; 0x7b1
d00446f8:	ee07 2a10 	vmov	s14, r2
d00446fc:	f3c3 2207 	ubfx	r2, r3, #8, #8
d0044700:	b2db      	uxtb	r3, r3
d0044702:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0044706:	ee06 2a90 	vmov	s13, r2
d004470a:	4543      	cmp	r3, r8
d004470c:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0044710:	eee7 3a08 	vfma.f32	s7, s14, s16
d0044714:	d83d      	bhi.n	d0044792 <drawFakeHorizonDots+0x1c6>
d0044716:	eee6 7a88 	vfma.f32	s15, s13, s16
d004471a:	ee2d 6a23 	vmul.f32	s12, s26, s7
d004471e:	ee2e 7aa7 	vmul.f32	s14, s29, s15
d0044722:	eead 6aa7 	vfma.f32	s12, s27, s15
d0044726:	ee6f 6aa7 	vmul.f32	s13, s31, s15
d004472a:	eef0 7a47 	vmov.f32	s15, s14
d004472e:	eeef 6a23 	vfma.f32	s13, s30, s7
d0044732:	eeee 7a23 	vfma.f32	s15, s28, s7
d0044736:	ee3b 6a06 	vadd.f32	s12, s22, s12
d004473a:	eef4 4ac6 	vcmpe.f32	s9, s12
d004473e:	ee3c 7a26 	vadd.f32	s14, s24, s13
d0044742:	ee7b 7aa7 	vadd.f32	s15, s23, s15
d0044746:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004474a:	ee27 7a2c 	vmul.f32	s14, s14, s25
d004474e:	ee67 7aaa 	vmul.f32	s15, s15, s21
d0044752:	da1e      	bge.n	d0044792 <drawFakeHorizonDots+0x1c6>
d0044754:	eec5 6a06 	vdiv.f32	s13, s10, s12
d0044758:	eeb0 6a68 	vmov.f32	s12, s17
d004475c:	eea7 6a26 	vfma.f32	s12, s14, s13
d0044760:	eee7 5aa6 	vfma.f32	s11, s15, s13
d0044764:	eefd 7ac6 	vcvt.s32.f32	s15, s12
d0044768:	eefd 5ae5 	vcvt.s32.f32	s11, s11
d004476c:	ee17 0a90 	vmov	r0, s15
d0044770:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0044774:	d20d      	bcs.n	d0044792 <drawFakeHorizonDots+0x1c6>
d0044776:	ee15 3a90 	vmov	r3, s11
d004477a:	465a      	mov	r2, fp
d004477c:	ee15 1a90 	vmov	r1, s11
d0044780:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0044784:	d205      	bcs.n	d0044792 <drawFakeHorizonDots+0x1c6>
d0044786:	edcd 4a00 	vstr	s9, [sp]
d004478a:	f7fc f81d 	bl	d00407c8 <putPixel>
d004478e:	eddd 4a00 	vldr	s9, [sp]
d0044792:	42b4      	cmp	r4, r6
d0044794:	d193      	bne.n	d00446be <drawFakeHorizonDots+0xf2>
d0044796:	f106 561f 	add.w	r6, r6, #666894336	; 0x27c00000
d004479a:	9b02      	ldr	r3, [sp, #8]
d004479c:	44ba      	add	sl, r7
d004479e:	f506 16a7 	add.w	r6, r6, #1368064	; 0x14e000
d00447a2:	f606 362f 	addw	r6, r6, #2863	; 0xb2f
d00447a6:	42b3      	cmp	r3, r6
d00447a8:	f47f af7a 	bne.w	d00446a0 <drawFakeHorizonDots+0xd4>
d00447ac:	b005      	add	sp, #20
d00447ae:	ecbd 8b10 	vpop	{d8-d15}
d00447b2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00447b6:	4770      	bx	lr
d00447b8:	3eb33333 	.word	0x3eb33333
d00447bc:	165667b1 	.word	0x165667b1
d00447c0:	27d4eb2f 	.word	0x27d4eb2f
d00447c4:	a869b223 	.word	0xa869b223
d00447c8:	3c008081 	.word	0x3c008081
d00447cc:	9d3726a0 	.word	0x9d3726a0
d00447d0:	43700000 	.word	0x43700000
d00447d4:	43708000 	.word	0x43708000
d00447d8:	c583036b 	.word	0xc583036b
d00447dc:	c3700000 	.word	0xc3700000
d00447e0:	43208000 	.word	0x43208000
d00447e4:	4bf19f61 	.word	0x4bf19f61

d00447e8 <drawFakeHorizon>:
d00447e8:	2800      	cmp	r0, #0
d00447ea:	f000 813c 	beq.w	d0044a66 <drawFakeHorizon+0x27e>
d00447ee:	ed9f 7aa2 	vldr	s14, [pc, #648]	; d0044a78 <drawFakeHorizon+0x290>
d00447f2:	eddf 6aa2 	vldr	s13, [pc, #648]	; d0044a7c <drawFakeHorizon+0x294>
d00447f6:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00447fa:	ed2d 8b0c 	vpush	{d8-d13}
d00447fe:	ed90 da0a 	vldr	s26, [r0, #40]	; 0x28
d0044802:	eeb0 ca47 	vmov.f32	s24, s14
d0044806:	ed9f 9a9e 	vldr	s18, [pc, #632]	; d0044a80 <drawFakeHorizon+0x298>
d004480a:	b083      	sub	sp, #12
d004480c:	edd0 ba0d 	vldr	s23, [r0, #52]	; 0x34
d0044810:	eeb0 bacd 	vabs.f32	s22, s26
d0044814:	ee6d 7a09 	vmul.f32	s15, s26, s18
d0044818:	eddf 9a9a 	vldr	s19, [pc, #616]	; d0044a84 <drawFakeHorizon+0x29c>
d004481c:	eef0 aa6b 	vmov.f32	s21, s23
d0044820:	edd0 da07 	vldr	s27, [r0, #28]
d0044824:	eeb0 aa6b 	vmov.f32	s20, s23
d0044828:	edd0 8a01 	vldr	s17, [r0, #4]
d004482c:	eec9 ca8d 	vdiv.f32	s25, s19, s26
d0044830:	460f      	mov	r7, r1
d0044832:	4690      	mov	r8, r2
d0044834:	4699      	mov	r9, r3
d0044836:	2400      	movs	r4, #0
d0044838:	4e93      	ldr	r6, [pc, #588]	; (d0044a88 <drawFakeHorizon+0x2a0>)
d004483a:	ed9f 8a94 	vldr	s16, [pc, #592]	; d0044a8c <drawFakeHorizon+0x2a4>
d004483e:	eee7 aa87 	vfma.f32	s21, s15, s14
d0044842:	eea7 aaa6 	vfma.f32	s20, s15, s13
d0044846:	ee2d 9a89 	vmul.f32	s18, s27, s18
d004484a:	ee70 8a68 	vsub.f32	s17, s0, s17
d004484e:	e056      	b.n	d00448fe <drawFakeHorizon+0x116>
d0044850:	ee88 6aa6 	vdiv.f32	s12, s17, s13
d0044854:	eef0 6ac7 	vabs.f32	s13, s14
d0044858:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d004485c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044860:	eef4 6ac8 	vcmpe.f32	s13, s16
d0044864:	bfcc      	ite	gt
d0044866:	2201      	movgt	r2, #1
d0044868:	2200      	movle	r2, #0
d004486a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004486e:	da61      	bge.n	d0044934 <drawFakeHorizon+0x14c>
d0044870:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d0044874:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d0044878:	6833      	ldr	r3, [r6, #0]
d004487a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004487e:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d0044882:	f240 80a8 	bls.w	d00449d6 <drawFakeHorizon+0x1ee>
d0044886:	eeb4 bac8 	vcmpe.f32	s22, s16
d004488a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004488e:	f100 809a 	bmi.w	d00449c6 <drawFakeHorizon+0x1de>
d0044892:	ee7b 7aa7 	vadd.f32	s15, s23, s15
d0044896:	eeb0 7a4c 	vmov.f32	s14, s24
d004489a:	eeac 7aa7 	vfma.f32	s14, s25, s15
d004489e:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d00448a2:	ee17 ba90 	vmov	fp, s15
d00448a6:	f1bb 0f00 	cmp.w	fp, #0
d00448aa:	f2c0 80aa 	blt.w	d0044a02 <drawFakeHorizon+0x21a>
d00448ae:	2201      	movs	r2, #1
d00448b0:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d00448b4:	46da      	mov	sl, fp
d00448b6:	bfa8      	it	ge
d00448b8:	f44f 7aa0 	movge.w	sl, #320	; 0x140
d00448bc:	2a00      	cmp	r2, #0
d00448be:	f000 8091 	beq.w	d00449e4 <drawFakeHorizon+0x1fc>
d00448c2:	f1bb 0f00 	cmp.w	fp, #0
d00448c6:	d009      	beq.n	d00448dc <drawFakeHorizon+0xf4>
d00448c8:	f1ba 0f00 	cmp.w	sl, #0
d00448cc:	4628      	mov	r0, r5
d00448ce:	4641      	mov	r1, r8
d00448d0:	bfcc      	ite	gt
d00448d2:	4652      	movgt	r2, sl
d00448d4:	2201      	movle	r2, #1
d00448d6:	4415      	add	r5, r2
d00448d8:	f001 fb1c 	bl	d0045f14 <memset>
d00448dc:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d00448e0:	d009      	beq.n	d00448f6 <drawFakeHorizon+0x10e>
d00448e2:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d00448e6:	f5ca 72a0 	rsb	r2, sl, #320	; 0x140
d00448ea:	4628      	mov	r0, r5
d00448ec:	4639      	mov	r1, r7
d00448ee:	bfa8      	it	ge
d00448f0:	2201      	movge	r2, #1
d00448f2:	f001 fb0f 	bl	d0045f14 <memset>
d00448f6:	3401      	adds	r4, #1
d00448f8:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d00448fc:	d04e      	beq.n	d004499c <drawFakeHorizon+0x1b4>
d00448fe:	ee07 4a90 	vmov	s15, r4
d0044902:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0044906:	ee77 7ae9 	vsub.f32	s15, s15, s19
d004490a:	ee67 7a89 	vmul.f32	s15, s15, s18
d004490e:	ee77 6aaa 	vadd.f32	s13, s15, s21
d0044912:	ee3a 7a27 	vadd.f32	s14, s20, s15
d0044916:	eeb0 6ae6 	vabs.f32	s12, s13
d004491a:	eeb4 6ac8 	vcmpe.f32	s12, s16
d004491e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044922:	da95      	bge.n	d0044850 <drawFakeHorizon+0x68>
d0044924:	eef0 6ac7 	vabs.f32	s13, s14
d0044928:	eef4 6ac8 	vcmpe.f32	s13, s16
d004492c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044930:	db4c      	blt.n	d00449cc <drawFakeHorizon+0x1e4>
d0044932:	2200      	movs	r2, #0
d0044934:	eec8 6a87 	vdiv.f32	s13, s17, s14
d0044938:	6833      	ldr	r3, [r6, #0]
d004493a:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d004493e:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d0044942:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0044946:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004494a:	bfcc      	ite	gt
d004494c:	2301      	movgt	r3, #1
d004494e:	2300      	movle	r3, #0
d0044950:	4293      	cmp	r3, r2
d0044952:	f000 8089 	beq.w	d0044a68 <drawFakeHorizon+0x280>
d0044956:	eeb4 bac8 	vcmpe.f32	s22, s16
d004495a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004495e:	d429      	bmi.n	d00449b4 <drawFakeHorizon+0x1cc>
d0044960:	ee7b 7aa7 	vadd.f32	s15, s23, s15
d0044964:	eeb0 7a4c 	vmov.f32	s14, s24
d0044968:	eeac 7aa7 	vfma.f32	s14, s25, s15
d004496c:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d0044970:	ee17 ba90 	vmov	fp, s15
d0044974:	f1bb 0f00 	cmp.w	fp, #0
d0044978:	da9a      	bge.n	d00448b0 <drawFakeHorizon+0xc8>
d004497a:	2a00      	cmp	r2, #0
d004497c:	d141      	bne.n	d0044a02 <drawFakeHorizon+0x21a>
d004497e:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d0044982:	f104 0401 	add.w	r4, r4, #1
d0044986:	f5c2 72a0 	rsb	r2, r2, #320	; 0x140
d004498a:	4628      	mov	r0, r5
d004498c:	bfa8      	it	ge
d004498e:	2201      	movge	r2, #1
d0044990:	4641      	mov	r1, r8
d0044992:	f001 fabf 	bl	d0045f14 <memset>
d0044996:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d004499a:	d1b0      	bne.n	d00448fe <drawFakeHorizon+0x116>
d004499c:	eddf 7a3b 	vldr	s15, [pc, #236]	; d0044a8c <drawFakeHorizon+0x2a4>
d00449a0:	eeb4 bae7 	vcmpe.f32	s22, s15
d00449a4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00449a8:	da31      	bge.n	d0044a0e <drawFakeHorizon+0x226>
d00449aa:	b003      	add	sp, #12
d00449ac:	ecbd 8b0c 	vpop	{d8-d13}
d00449b0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00449b4:	b93a      	cbnz	r2, d00449c6 <drawFakeHorizon+0x1de>
d00449b6:	22a0      	movs	r2, #160	; 0xa0
d00449b8:	4628      	mov	r0, r5
d00449ba:	4639      	mov	r1, r7
d00449bc:	4415      	add	r5, r2
d00449be:	f001 faa9 	bl	d0045f14 <memset>
d00449c2:	22a0      	movs	r2, #160	; 0xa0
d00449c4:	e7db      	b.n	d004497e <drawFakeHorizon+0x196>
d00449c6:	f04f 0aa0 	mov.w	sl, #160	; 0xa0
d00449ca:	e77d      	b.n	d00448c8 <drawFakeHorizon+0xe0>
d00449cc:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d00449d0:	6832      	ldr	r2, [r6, #0]
d00449d2:	eb02 1585 	add.w	r5, r2, r5, lsl #6
d00449d6:	4639      	mov	r1, r7
d00449d8:	4628      	mov	r0, r5
d00449da:	f44f 72a0 	mov.w	r2, #320	; 0x140
d00449de:	f001 fa99 	bl	d0045f14 <memset>
d00449e2:	e788      	b.n	d00448f6 <drawFakeHorizon+0x10e>
d00449e4:	f1bb 0f00 	cmp.w	fp, #0
d00449e8:	d00e      	beq.n	d0044a08 <drawFakeHorizon+0x220>
d00449ea:	4628      	mov	r0, r5
d00449ec:	4652      	mov	r2, sl
d00449ee:	4639      	mov	r1, r7
d00449f0:	4455      	add	r5, sl
d00449f2:	f001 fa8f 	bl	d0045f14 <memset>
d00449f6:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d00449fa:	f6bf af7c 	bge.w	d00448f6 <drawFakeHorizon+0x10e>
d00449fe:	4652      	mov	r2, sl
d0044a00:	e7bd      	b.n	d004497e <drawFakeHorizon+0x196>
d0044a02:	f04f 0a00 	mov.w	sl, #0
d0044a06:	e76c      	b.n	d00448e2 <drawFakeHorizon+0xfa>
d0044a08:	46da      	mov	sl, fp
d0044a0a:	4652      	mov	r2, sl
d0044a0c:	e7b7      	b.n	d004497e <drawFakeHorizon+0x196>
d0044a0e:	ed9f 7a1d 	vldr	s14, [pc, #116]	; d0044a84 <drawFakeHorizon+0x29c>
d0044a12:	f240 12df 	movw	r2, #479	; 0x1df
d0044a16:	eddf 7a1e 	vldr	s15, [pc, #120]	; d0044a90 <drawFakeHorizon+0x2a8>
d0044a1a:	2000      	movs	r0, #0
d0044a1c:	ee6b ba87 	vmul.f32	s23, s23, s14
d0044a20:	ed9f 7a1c 	vldr	s14, [pc, #112]	; d0044a94 <drawFakeHorizon+0x2ac>
d0044a24:	eddf 6a14 	vldr	s13, [pc, #80]	; d0044a78 <drawFakeHorizon+0x290>
d0044a28:	f8cd 9000 	str.w	r9, [sp]
d0044a2c:	eeb0 6a6b 	vmov.f32	s12, s23
d0044a30:	eeed ba87 	vfma.f32	s23, s27, s14
d0044a34:	eead 6aa7 	vfma.f32	s12, s27, s15
d0044a38:	eecb 7a8d 	vdiv.f32	s15, s23, s26
d0044a3c:	ee86 7a0d 	vdiv.f32	s14, s12, s26
d0044a40:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0044a44:	fefc 7ae7 	vcvta.s32.f32	s15, s15
d0044a48:	ee37 7a26 	vadd.f32	s14, s14, s13
d0044a4c:	ee17 3a90 	vmov	r3, s15
d0044a50:	febc 7ac7 	vcvta.s32.f32	s14, s14
d0044a54:	ee17 1a10 	vmov	r1, s14
d0044a58:	f7fb fec6 	bl	d00407e8 <drawLine>
d0044a5c:	b003      	add	sp, #12
d0044a5e:	ecbd 8b0c 	vpop	{d8-d13}
d0044a62:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0044a66:	4770      	bx	lr
d0044a68:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0044a6c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044a70:	ddb1      	ble.n	d00449d6 <drawFakeHorizon+0x1ee>
d0044a72:	4641      	mov	r1, r8
d0044a74:	e7b0      	b.n	d00449d8 <drawFakeHorizon+0x1f0>
d0044a76:	bf00      	nop
d0044a78:	43200000 	.word	0x43200000
d0044a7c:	c31f0000 	.word	0xc31f0000
d0044a80:	3b888889 	.word	0x3b888889
d0044a84:	43700000 	.word	0x43700000
d0044a88:	d00e1ca4 	.word	0xd00e1ca4
d0044a8c:	38d1b717 	.word	0x38d1b717
d0044a90:	c3700000 	.word	0xc3700000
d0044a94:	436f0000 	.word	0x436f0000

d0044a98 <submitEntitySolid>:
d0044a98:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0044a9c:	ed2d 8b10 	vpush	{d8-d15}
d0044aa0:	b0b3      	sub	sp, #204	; 0xcc
d0044aa2:	f10d 036f 	add.w	r3, sp, #111	; 0x6f
d0044aa6:	9104      	str	r1, [sp, #16]
d0044aa8:	f023 031f 	bic.w	r3, r3, #31
d0044aac:	9305      	str	r3, [sp, #20]
d0044aae:	2800      	cmp	r0, #0
d0044ab0:	f000 827c 	beq.w	d0044fac <submitEntitySolid+0x514>
d0044ab4:	f8d0 800c 	ldr.w	r8, [r0, #12]
d0044ab8:	4604      	mov	r4, r0
d0044aba:	f1b8 0f00 	cmp.w	r8, #0
d0044abe:	f000 8275 	beq.w	d0044fac <submitEntitySolid+0x514>
d0044ac2:	f8d8 3000 	ldr.w	r3, [r8]
d0044ac6:	2b00      	cmp	r3, #0
d0044ac8:	f000 8270 	beq.w	d0044fac <submitEntitySolid+0x514>
d0044acc:	f8d8 3010 	ldr.w	r3, [r8, #16]
d0044ad0:	2b00      	cmp	r3, #0
d0044ad2:	f000 826b 	beq.w	d0044fac <submitEntitySolid+0x514>
d0044ad6:	f8d8 3004 	ldr.w	r3, [r8, #4]
d0044ada:	3b01      	subs	r3, #1
d0044adc:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d0044ae0:	f080 8264 	bcs.w	d0044fac <submitEntitySolid+0x514>
d0044ae4:	f8d8 3014 	ldr.w	r3, [r8, #20]
d0044ae8:	2b00      	cmp	r3, #0
d0044aea:	f340 825f 	ble.w	d0044fac <submitEntitySolid+0x514>
d0044aee:	460f      	mov	r7, r1
d0044af0:	edd1 aa11 	vldr	s21, [r1, #68]	; 0x44
d0044af4:	ed91 fa10 	vldr	s30, [r1, #64]	; 0x40
d0044af8:	f7fe ffbe 	bl	d0043a78 <lightsGet>
d0044afc:	900b      	str	r0, [sp, #44]	; 0x2c
d0044afe:	f7fe ffbf 	bl	d0043a80 <lightsGetCount>
d0044b02:	edd8 fa09 	vldr	s31, [r8, #36]	; 0x24
d0044b06:	edd8 7a0a 	vldr	s15, [r8, #40]	; 0x28
d0044b0a:	eef5 fac0 	vcmpe.f32	s31, #0.0
d0044b0e:	ed98 7a08 	vldr	s14, [r8, #32]
d0044b12:	f8d8 3004 	ldr.w	r3, [r8, #4]
d0044b16:	ed8d 7a01 	vstr	s14, [sp, #4]
d0044b1a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044b1e:	ed98 7a0c 	vldr	s14, [r8, #48]	; 0x30
d0044b22:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0044b26:	ed94 6a00 	vldr	s12, [r4]
d0044b2a:	ed8d 7a09 	vstr	s14, [sp, #36]	; 0x24
d0044b2e:	bfcc      	ite	gt
d0044b30:	2601      	movgt	r6, #1
d0044b32:	2600      	movle	r6, #0
d0044b34:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044b38:	ed98 7a0b 	vldr	s14, [r8, #44]	; 0x2c
d0044b3c:	edd4 5a01 	vldr	s11, [r4, #4]
d0044b40:	ed94 5a02 	vldr	s10, [r4, #8]
d0044b44:	bfcc      	ite	gt
d0044b46:	2501      	movgt	r5, #1
d0044b48:	2500      	movle	r5, #0
d0044b4a:	2b00      	cmp	r3, #0
d0044b4c:	edd4 4a07 	vldr	s9, [r4, #28]
d0044b50:	ed94 4a08 	vldr	s8, [r4, #32]
d0044b54:	edd4 3a09 	vldr	s7, [r4, #36]	; 0x24
d0044b58:	ed94 3a0a 	vldr	s6, [r4, #40]	; 0x28
d0044b5c:	edd4 2a0b 	vldr	s5, [r4, #44]	; 0x2c
d0044b60:	ed94 2a0c 	vldr	s4, [r4, #48]	; 0x30
d0044b64:	edd4 1a04 	vldr	s3, [r4, #16]
d0044b68:	ed94 1a05 	vldr	s2, [r4, #20]
d0044b6c:	edd4 0a06 	vldr	s1, [r4, #24]
d0044b70:	edd7 ca00 	vldr	s25, [r7]
d0044b74:	ed97 da01 	vldr	s26, [r7, #4]
d0044b78:	edd7 da02 	vldr	s27, [r7, #8]
d0044b7c:	ed97 0a06 	vldr	s0, [r7, #24]
d0044b80:	ed97 8a07 	vldr	s16, [r7, #28]
d0044b84:	edd7 8a08 	vldr	s17, [r7, #32]
d0044b88:	ed97 9a09 	vldr	s18, [r7, #36]	; 0x24
d0044b8c:	edd7 9a0a 	vldr	s19, [r7, #40]	; 0x28
d0044b90:	ed97 aa0b 	vldr	s20, [r7, #44]	; 0x2c
d0044b94:	edcd 7a0a 	vstr	s15, [sp, #40]	; 0x28
d0044b98:	9007      	str	r0, [sp, #28]
d0044b9a:	ed8d 7a08 	vstr	s14, [sp, #32]
d0044b9e:	ed97 ba0c 	vldr	s22, [r7, #48]	; 0x30
d0044ba2:	edd7 ba0d 	vldr	s23, [r7, #52]	; 0x34
d0044ba6:	ed97 ca0e 	vldr	s24, [r7, #56]	; 0x38
d0044baa:	dd51      	ble.n	d0044c50 <submitEntitySolid+0x1b8>
d0044bac:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0044bb0:	f8d8 3000 	ldr.w	r3, [r8]
d0044bb4:	49de      	ldr	r1, [pc, #888]	; (d0044f30 <submitEntitySolid+0x498>)
d0044bb6:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d0044bba:	4ade      	ldr	r2, [pc, #888]	; (d0044f34 <submitEntitySolid+0x49c>)
d0044bbc:	edd3 7a01 	vldr	s15, [r3, #4]
d0044bc0:	330c      	adds	r3, #12
d0044bc2:	ed53 ea03 	vldr	s29, [r3, #-12]
d0044bc6:	310c      	adds	r1, #12
d0044bc8:	ee27 7aa2 	vmul.f32	s14, s15, s5
d0044bcc:	ed53 6a01 	vldr	s13, [r3, #-4]
d0044bd0:	ee27 ea83 	vmul.f32	s28, s15, s6
d0044bd4:	4298      	cmp	r0, r3
d0044bd6:	ee67 7a82 	vmul.f32	s15, s15, s4
d0044bda:	f102 020c 	add.w	r2, r2, #12
d0044bde:	eeae 7a84 	vfma.f32	s14, s29, s8
d0044be2:	eeae eaa4 	vfma.f32	s28, s29, s9
d0044be6:	eeee 7aa3 	vfma.f32	s15, s29, s7
d0044bea:	ee35 7a87 	vadd.f32	s14, s11, s14
d0044bee:	ee36 ea0e 	vadd.f32	s28, s12, s28
d0044bf2:	ee75 7a27 	vadd.f32	s15, s10, s15
d0044bf6:	eea6 7a81 	vfma.f32	s14, s13, s2
d0044bfa:	eea6 eaa1 	vfma.f32	s28, s13, s3
d0044bfe:	eee6 7aa0 	vfma.f32	s15, s13, s1
d0044c02:	eef0 ea47 	vmov.f32	s29, s14
d0044c06:	ee37 7a4d 	vsub.f32	s14, s14, s26
d0044c0a:	ed01 ea03 	vstr	s28, [r1, #-12]
d0044c0e:	ee7e 6a6c 	vsub.f32	s13, s28, s25
d0044c12:	ed41 7a01 	vstr	s15, [r1, #-4]
d0044c16:	ee37 eaed 	vsub.f32	s28, s15, s27
d0044c1a:	ed41 ea02 	vstr	s29, [r1, #-8]
d0044c1e:	ee69 7a87 	vmul.f32	s15, s19, s14
d0044c22:	ee68 ea07 	vmul.f32	s29, s16, s14
d0044c26:	ee2b 7a87 	vmul.f32	s14, s23, s14
d0044c2a:	eee9 7a26 	vfma.f32	s15, s18, s13
d0044c2e:	eee0 ea26 	vfma.f32	s29, s0, s13
d0044c32:	eeab 7a26 	vfma.f32	s14, s22, s13
d0044c36:	eeea 7a0e 	vfma.f32	s15, s20, s28
d0044c3a:	eee8 ea8e 	vfma.f32	s29, s17, s28
d0044c3e:	eeac 7a0e 	vfma.f32	s14, s24, s28
d0044c42:	ed42 7a02 	vstr	s15, [r2, #-8]
d0044c46:	ed42 ea03 	vstr	s29, [r2, #-12]
d0044c4a:	ed02 7a01 	vstr	s14, [r2, #-4]
d0044c4e:	d1b5      	bne.n	d0044bbc <submitEntitySolid+0x124>
d0044c50:	f8d8 3014 	ldr.w	r3, [r8, #20]
d0044c54:	2b00      	cmp	r3, #0
d0044c56:	9302      	str	r3, [sp, #8]
d0044c58:	f340 81a8 	ble.w	d0044fac <submitEntitySolid+0x514>
d0044c5c:	ea46 0305 	orr.w	r3, r6, r5
d0044c60:	ed9d ba0a 	vldr	s22, [sp, #40]	; 0x28
d0044c64:	f04f 0900 	mov.w	r9, #0
d0044c68:	edcd ca0a 	vstr	s25, [sp, #40]	; 0x28
d0044c6c:	eddf eab2 	vldr	s29, [pc, #712]	; d0044f38 <submitEntitySolid+0x4a0>
d0044c70:	eddd ca01 	vldr	s25, [sp, #4]
d0044c74:	ed8d da0c 	vstr	s26, [sp, #48]	; 0x30
d0044c78:	9306      	str	r3, [sp, #24]
d0044c7a:	ed9d da09 	vldr	s26, [sp, #36]	; 0x24
d0044c7e:	f8cd 800c 	str.w	r8, [sp, #12]
d0044c82:	edcd da09 	vstr	s27, [sp, #36]	; 0x24
d0044c86:	9a03      	ldr	r2, [sp, #12]
d0044c88:	ea4f 1309 	mov.w	r3, r9, lsl #4
d0044c8c:	4ea9      	ldr	r6, [pc, #676]	; (d0044f34 <submitEntitySolid+0x49c>)
d0044c8e:	6915      	ldr	r5, [r2, #16]
d0044c90:	58e8      	ldr	r0, [r5, r3]
d0044c92:	eb05 1509 	add.w	r5, r5, r9, lsl #4
d0044c96:	4633      	mov	r3, r6
d0044c98:	eb00 0440 	add.w	r4, r0, r0, lsl #1
d0044c9c:	686a      	ldr	r2, [r5, #4]
d0044c9e:	68af      	ldr	r7, [r5, #8]
d0044ca0:	0041      	lsls	r1, r0, #1
d0044ca2:	eb06 0484 	add.w	r4, r6, r4, lsl #2
d0044ca6:	9701      	str	r7, [sp, #4]
d0044ca8:	eb02 0642 	add.w	r6, r2, r2, lsl #1
d0044cac:	edd4 4a02 	vldr	s9, [r4, #8]
d0044cb0:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d0044cb4:	eb03 0686 	add.w	r6, r3, r6, lsl #2
d0044cb8:	eef4 4aea 	vcmpe.f32	s9, s21
d0044cbc:	eb03 0787 	add.w	r7, r3, r7, lsl #2
d0044cc0:	9b01      	ldr	r3, [sp, #4]
d0044cc2:	ea4f 0842 	mov.w	r8, r2, lsl #1
d0044cc6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044cca:	ea4f 0b43 	mov.w	fp, r3, lsl #1
d0044cce:	dd0e      	ble.n	d0044cee <submitEntitySolid+0x256>
d0044cd0:	edd6 7a02 	vldr	s15, [r6, #8]
d0044cd4:	eef4 7aea 	vcmpe.f32	s15, s21
d0044cd8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044cdc:	dd07      	ble.n	d0044cee <submitEntitySolid+0x256>
d0044cde:	edd7 7a02 	vldr	s15, [r7, #8]
d0044ce2:	eef4 7aea 	vcmpe.f32	s15, s21
d0044ce6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044cea:	f300 8159 	bgt.w	d0044fa0 <submitEntitySolid+0x508>
d0044cee:	ed94 5a00 	vldr	s10, [r4]
d0044cf2:	edd4 2a02 	vldr	s5, [r4, #8]
d0044cf6:	ed96 4a00 	vldr	s8, [r6]
d0044cfa:	ed97 6a02 	vldr	s12, [r7, #8]
d0044cfe:	ee34 1a45 	vsub.f32	s2, s8, s10
d0044d02:	edd4 7a01 	vldr	s15, [r4, #4]
d0044d06:	ee36 6a62 	vsub.f32	s12, s12, s5
d0044d0a:	ed96 3a02 	vldr	s6, [r6, #8]
d0044d0e:	edd7 6a01 	vldr	s13, [r7, #4]
d0044d12:	edd7 3a00 	vldr	s7, [r7]
d0044d16:	ee33 3a62 	vsub.f32	s6, s6, s5
d0044d1a:	ee76 6ae7 	vsub.f32	s13, s13, s15
d0044d1e:	edd6 5a01 	vldr	s11, [r6, #4]
d0044d22:	ee33 7ac5 	vsub.f32	s14, s7, s10
d0044d26:	ee66 1a41 	vnmul.f32	s3, s12, s2
d0044d2a:	ee75 5ae7 	vsub.f32	s11, s11, s15
d0044d2e:	ee26 2ac3 	vnmul.f32	s4, s13, s6
d0044d32:	eee3 1a07 	vfma.f32	s3, s6, s14
d0044d36:	ee27 7a65 	vnmul.f32	s14, s14, s11
d0044d3a:	eea5 2a86 	vfma.f32	s4, s11, s12
d0044d3e:	eea1 7a26 	vfma.f32	s14, s2, s13
d0044d42:	ee67 7aa1 	vmul.f32	s15, s15, s3
d0044d46:	eee5 7a02 	vfma.f32	s15, s10, s4
d0044d4a:	eee2 7a87 	vfma.f32	s15, s5, s14
d0044d4e:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0044d52:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044d56:	f280 8123 	bge.w	d0044fa0 <submitEntitySolid+0x508>
d0044d5a:	180b      	adds	r3, r1, r0
d0044d5c:	9901      	ldr	r1, [sp, #4]
d0044d5e:	f8df e1d0 	ldr.w	lr, [pc, #464]	; d0044f30 <submitEntitySolid+0x498>
d0044d62:	eb08 0c02 	add.w	ip, r8, r2
d0044d66:	eb0b 0a01 	add.w	sl, fp, r1
d0044d6a:	eb0e 0383 	add.w	r3, lr, r3, lsl #2
d0044d6e:	eb0e 0c8c 	add.w	ip, lr, ip, lsl #2
d0044d72:	eb0e 0a8a 	add.w	sl, lr, sl, lsl #2
d0044d76:	ed93 7a00 	vldr	s14, [r3]
d0044d7a:	ed93 6a02 	vldr	s12, [r3, #8]
d0044d7e:	eddc 5a00 	vldr	s11, [ip]
d0044d82:	ed9a 1a02 	vldr	s2, [sl, #8]
d0044d86:	ee75 0ac7 	vsub.f32	s1, s11, s14
d0044d8a:	edd3 6a01 	vldr	s13, [r3, #4]
d0044d8e:	ee31 0a46 	vsub.f32	s0, s2, s12
d0044d92:	eddc 2a02 	vldr	s5, [ip, #8]
d0044d96:	edda 1a01 	vldr	s3, [sl, #4]
d0044d9a:	ed9a 2a00 	vldr	s4, [sl]
d0044d9e:	ee32 aac6 	vsub.f32	s20, s5, s12
d0044da2:	ee71 7ae6 	vsub.f32	s15, s3, s13
d0044da6:	ed9c 3a01 	vldr	s6, [ip, #4]
d0044daa:	ee32 8a47 	vsub.f32	s16, s4, s14
d0044dae:	ee20 9a60 	vnmul.f32	s18, s0, s1
d0044db2:	ee73 9a66 	vsub.f32	s19, s6, s13
d0044db6:	ee67 8aca 	vnmul.f32	s17, s15, s20
d0044dba:	eeaa 9a08 	vfma.f32	s18, s20, s16
d0044dbe:	ee28 8a69 	vnmul.f32	s16, s16, s19
d0044dc2:	eee9 8a80 	vfma.f32	s17, s19, s0
d0044dc6:	eea0 8aa7 	vfma.f32	s16, s1, s15
d0044dca:	ee69 7a09 	vmul.f32	s15, s18, s18
d0044dce:	eee8 7aa8 	vfma.f32	s15, s17, s17
d0044dd2:	eee8 7a08 	vfma.f32	s15, s16, s16
d0044dd6:	eef4 7aee 	vcmpe.f32	s15, s29
d0044dda:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044dde:	f240 80df 	bls.w	d0044fa0 <submitEntitySolid+0x508>
d0044de2:	eddf 0a59 	vldr	s1, [pc, #356]	; d0044f48 <submitEntitySolid+0x4b0>
d0044de6:	eef4 7ae0 	vcmpe.f32	s15, s1
d0044dea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044dee:	f100 822b 	bmi.w	d0045248 <submitEntitySolid+0x7b0>
d0044df2:	eddf 0a56 	vldr	s1, [pc, #344]	; d0044f4c <submitEntitySolid+0x4b4>
d0044df6:	eef4 7a60 	vcmp.f32	s15, s1
d0044dfa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044dfe:	f300 8223 	bgt.w	d0045248 <submitEntitySolid+0x7b0>
d0044e02:	7b6b      	ldrb	r3, [r5, #13]
d0044e04:	eef4 4acf 	vcmpe.f32	s9, s30
d0044e08:	eddf 7a4c 	vldr	s15, [pc, #304]	; d0044f3c <submitEntitySolid+0x4a4>
d0044e0c:	ee7c 9a8d 	vadd.f32	s19, s25, s26
d0044e10:	ee0a 3a10 	vmov	s20, r3
d0044e14:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e18:	eeb8 aa4a 	vcvt.f32.u32	s20, s20
d0044e1c:	ee2a aa27 	vmul.f32	s20, s20, s15
d0044e20:	f2c0 80c9 	blt.w	d0044fb6 <submitEntitySolid+0x51e>
d0044e24:	4490      	add	r8, r2
d0044e26:	4b43      	ldr	r3, [pc, #268]	; (d0044f34 <submitEntitySolid+0x49c>)
d0044e28:	eb03 0888 	add.w	r8, r3, r8, lsl #2
d0044e2c:	edd8 7a02 	vldr	s15, [r8, #8]
d0044e30:	eef4 7acf 	vcmpe.f32	s15, s30
d0044e34:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e38:	f2c0 80bd 	blt.w	d0044fb6 <submitEntitySolid+0x51e>
d0044e3c:	9901      	ldr	r1, [sp, #4]
d0044e3e:	448b      	add	fp, r1
d0044e40:	4619      	mov	r1, r3
d0044e42:	eb03 0b8b 	add.w	fp, r3, fp, lsl #2
d0044e46:	eddb 0a02 	vldr	s1, [fp, #8]
d0044e4a:	eef4 0acf 	vcmpe.f32	s1, s30
d0044e4e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e52:	f2c0 80b0 	blt.w	d0044fb6 <submitEntitySolid+0x51e>
d0044e56:	eeb1 0a64 	vneg.f32	s0, s9
d0044e5a:	eeb4 0a45 	vcmp.f32	s0, s10
d0044e5e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e62:	f200 80a8 	bhi.w	d0044fb6 <submitEntitySolid+0x51e>
d0044e66:	eef4 4a45 	vcmp.f32	s9, s10
d0044e6a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e6e:	f2c0 80a2 	blt.w	d0044fb6 <submitEntitySolid+0x51e>
d0044e72:	eeb1 5a67 	vneg.f32	s10, s15
d0044e76:	eeb4 5a44 	vcmp.f32	s10, s8
d0044e7a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e7e:	f200 809a 	bhi.w	d0044fb6 <submitEntitySolid+0x51e>
d0044e82:	eef4 7a44 	vcmp.f32	s15, s8
d0044e86:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e8a:	f2c0 8094 	blt.w	d0044fb6 <submitEntitySolid+0x51e>
d0044e8e:	eeb1 5a60 	vneg.f32	s10, s1
d0044e92:	eeb4 5a63 	vcmp.f32	s10, s7
d0044e96:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044e9a:	f200 808c 	bhi.w	d0044fb6 <submitEntitySolid+0x51e>
d0044e9e:	eef4 0a63 	vcmp.f32	s1, s7
d0044ea2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044ea6:	f2c0 8086 	blt.w	d0044fb6 <submitEntitySolid+0x51e>
d0044eaa:	ed9f 5a25 	vldr	s10, [pc, #148]	; d0044f40 <submitEntitySolid+0x4a8>
d0044eae:	230c      	movs	r3, #12
d0044eb0:	ee64 4a85 	vmul.f32	s9, s9, s10
d0044eb4:	fb03 1000 	mla	r0, r3, r0, r1
d0044eb8:	ed90 5a01 	vldr	s10, [r0, #4]
d0044ebc:	eeb1 4a64 	vneg.f32	s8, s9
d0044ec0:	eeb4 5a44 	vcmp.f32	s10, s8
d0044ec4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044ec8:	db75      	blt.n	d0044fb6 <submitEntitySolid+0x51e>
d0044eca:	eeb4 5a64 	vcmp.f32	s10, s9
d0044ece:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044ed2:	d870      	bhi.n	d0044fb6 <submitEntitySolid+0x51e>
d0044ed4:	ed9f 5a1a 	vldr	s10, [pc, #104]	; d0044f40 <submitEntitySolid+0x4a8>
d0044ed8:	fb03 1202 	mla	r2, r3, r2, r1
d0044edc:	ee67 7a85 	vmul.f32	s15, s15, s10
d0044ee0:	edd2 4a01 	vldr	s9, [r2, #4]
d0044ee4:	eeb1 4a67 	vneg.f32	s8, s15
d0044ee8:	eef4 4a44 	vcmp.f32	s9, s8
d0044eec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044ef0:	db61      	blt.n	d0044fb6 <submitEntitySolid+0x51e>
d0044ef2:	eef4 4a67 	vcmp.f32	s9, s15
d0044ef6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044efa:	d85c      	bhi.n	d0044fb6 <submitEntitySolid+0x51e>
d0044efc:	ee60 0a85 	vmul.f32	s1, s1, s10
d0044f00:	9a01      	ldr	r2, [sp, #4]
d0044f02:	fb03 1102 	mla	r1, r3, r2, r1
d0044f06:	eeb1 5a60 	vneg.f32	s10, s1
d0044f0a:	edd1 7a01 	vldr	s15, [r1, #4]
d0044f0e:	eef4 7a45 	vcmp.f32	s15, s10
d0044f12:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044f16:	db4e      	blt.n	d0044fb6 <submitEntitySolid+0x51e>
d0044f18:	eef4 7ae0 	vcmpe.f32	s15, s1
d0044f1c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044f20:	d849      	bhi.n	d0044fb6 <submitEntitySolid+0x51e>
d0044f22:	9b06      	ldr	r3, [sp, #24]
d0044f24:	b1b3      	cbz	r3, d0044f54 <submitEntitySolid+0x4bc>
d0044f26:	9b07      	ldr	r3, [sp, #28]
d0044f28:	2b00      	cmp	r3, #0
d0044f2a:	f300 828a 	bgt.w	d0045442 <submitEntitySolid+0x9aa>
d0044f2e:	e011      	b.n	d0044f54 <submitEntitySolid+0x4bc>
d0044f30:	d00d5820 	.word	0xd00d5820
d0044f34:	d00497e0 	.word	0xd00497e0
d0044f38:	358637bd 	.word	0x358637bd
d0044f3c:	3b808081 	.word	0x3b808081
d0044f40:	3f2aaaab 	.word	0x3f2aaaab
d0044f44:	3eaaaaab 	.word	0x3eaaaaab
d0044f48:	3f7fbe77 	.word	0x3f7fbe77
d0044f4c:	3f8020c5 	.word	0x3f8020c5
d0044f50:	00000000 	.word	0x00000000
d0044f54:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0044f58:	fe8a 0a29 	vmaxnm.f32	s0, s20, s19
d0044f5c:	fe80 0a67 	vminnm.f32	s0, s0, s15
d0044f60:	f7fe fd72 	bl	d0043a48 <brightnessToShadeF>
d0044f64:	eeb0 8a40 	vmov.f32	s16, s0
d0044f68:	eef0 4a48 	vmov.f32	s9, s16
d0044f6c:	7b6a      	ldrb	r2, [r5, #13]
d0044f6e:	7b29      	ldrb	r1, [r5, #12]
d0044f70:	9804      	ldr	r0, [sp, #16]
d0044f72:	ed97 3a00 	vldr	s6, [r7]
d0044f76:	edd7 3a01 	vldr	s7, [r7, #4]
d0044f7a:	ed97 4a02 	vldr	s8, [r7, #8]
d0044f7e:	edd6 1a00 	vldr	s3, [r6]
d0044f82:	ed96 2a01 	vldr	s4, [r6, #4]
d0044f86:	edd6 2a02 	vldr	s5, [r6, #8]
d0044f8a:	ed94 0a00 	vldr	s0, [r4]
d0044f8e:	edd4 0a01 	vldr	s1, [r4, #4]
d0044f92:	ed94 1a02 	vldr	s2, [r4, #8]
d0044f96:	f7ff fa1f 	bl	d00443d8 <submitClippedTri>
d0044f9a:	9b03      	ldr	r3, [sp, #12]
d0044f9c:	695b      	ldr	r3, [r3, #20]
d0044f9e:	9302      	str	r3, [sp, #8]
d0044fa0:	f109 0901 	add.w	r9, r9, #1
d0044fa4:	9b02      	ldr	r3, [sp, #8]
d0044fa6:	4599      	cmp	r9, r3
d0044fa8:	f6ff ae6d 	blt.w	d0044c86 <submitEntitySolid+0x1ee>
d0044fac:	b033      	add	sp, #204	; 0xcc
d0044fae:	ecbd 8b10 	vpop	{d8-d15}
d0044fb2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0044fb6:	9b06      	ldr	r3, [sp, #24]
d0044fb8:	2b00      	cmp	r3, #0
d0044fba:	f000 8152 	beq.w	d0045262 <submitEntitySolid+0x7ca>
d0044fbe:	9b07      	ldr	r3, [sp, #28]
d0044fc0:	2b00      	cmp	r3, #0
d0044fc2:	f340 814e 	ble.w	d0045262 <submitEntitySolid+0x7ca>
d0044fc6:	f04f 0800 	mov.w	r8, #0
d0044fca:	ee75 ba87 	vadd.f32	s23, s11, s14
d0044fce:	ed5f 7a23 	vldr	s15, [pc, #-140]	; d0044f44 <submitEntitySolid+0x4ac>
d0044fd2:	ee33 ca26 	vadd.f32	s24, s6, s13
d0044fd6:	ee32 ea86 	vadd.f32	s28, s5, s12
d0044fda:	eeb5 bac0 	vcmpe.f32	s22, #0.0
d0044fde:	ee7b ba82 	vadd.f32	s23, s23, s4
d0044fe2:	ee3c ca21 	vadd.f32	s24, s24, s3
d0044fe6:	ee3e ea01 	vadd.f32	s28, s28, s2
d0044fea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0044fee:	ee6b baa7 	vmul.f32	s23, s23, s15
d0044ff2:	ee2c ca27 	vmul.f32	s24, s24, s15
d0044ff6:	ee2e ea27 	vmul.f32	s28, s28, s15
d0044ffa:	f340 818b 	ble.w	d0045314 <submitEntitySolid+0x87c>
d0044ffe:	eddd 7a0c 	vldr	s15, [sp, #48]	; 0x30
d0045002:	ee77 2acc 	vsub.f32	s5, s15, s24
d0045006:	eddd 7a0a 	vldr	s15, [sp, #40]	; 0x28
d004500a:	ee37 3aeb 	vsub.f32	s6, s15, s23
d004500e:	eddd 7a09 	vldr	s15, [sp, #36]	; 0x24
d0045012:	ee77 4ace 	vsub.f32	s9, s15, s28
d0045016:	ee62 7aa2 	vmul.f32	s15, s5, s5
d004501a:	eee3 7a03 	vfma.f32	s15, s6, s6
d004501e:	eee4 7aa4 	vfma.f32	s15, s9, s9
d0045022:	eef4 7aee 	vcmpe.f32	s15, s29
d0045026:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004502a:	f340 8173 	ble.w	d0045314 <submitEntitySolid+0x87c>
d004502e:	ed1f 7a3a 	vldr	s14, [pc, #-232]	; d0044f48 <submitEntitySolid+0x4b0>
d0045032:	eef4 7ac7 	vcmpe.f32	s15, s14
d0045036:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004503a:	f100 81e2 	bmi.w	d0045402 <submitEntitySolid+0x96a>
d004503e:	ed1f 7a3d 	vldr	s14, [pc, #-244]	; d0044f4c <submitEntitySolid+0x4b4>
d0045042:	eef4 7a47 	vcmp.f32	s15, s14
d0045046:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004504a:	f300 81da 	bgt.w	d0045402 <submitEntitySolid+0x96a>
d004504e:	ee79 1a09 	vadd.f32	s3, s18, s18
d0045052:	4642      	mov	r2, r8
d0045054:	ee38 2a08 	vadd.f32	s4, s16, s16
d0045058:	46b8      	mov	r8, r7
d004505a:	eef0 6a6c 	vmov.f32	s13, s25
d004505e:	4637      	mov	r7, r6
d0045060:	eef0 7a61 	vmov.f32	s15, s3
d0045064:	4626      	mov	r6, r4
d0045066:	eeb0 7a42 	vmov.f32	s14, s4
d004506a:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
d004506e:	eef0 ca64 	vmov.f32	s25, s9
d0045072:	f04f 0b00 	mov.w	fp, #0
d0045076:	eef0 4a6a 	vmov.f32	s9, s21
d004507a:	9c07      	ldr	r4, [sp, #28]
d004507c:	eef0 aa62 	vmov.f32	s21, s5
d0045080:	eeb0 2a4d 	vmov.f32	s4, s26
d0045084:	eef0 1a4a 	vmov.f32	s3, s20
d0045088:	ee38 1aa8 	vadd.f32	s2, s17, s17
d004508c:	eeb0 aa43 	vmov.f32	s20, s6
d0045090:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0045094:	eeb0 3a4f 	vmov.f32	s6, s30
d0045098:	eef2 da00 	vmov.f32	s27, #32	; 0x41000000  8.0
d004509c:	eeb0 fa67 	vmov.f32	s30, s15
d00450a0:	eeb0 da47 	vmov.f32	s26, s14
d00450a4:	eef0 2a66 	vmov.f32	s5, s13
d00450a8:	e0b6      	b.n	d0045218 <submitEntitySolid+0x780>
d00450aa:	edda 7a02 	vldr	s15, [sl, #8]
d00450ae:	edda 6a01 	vldr	s13, [sl, #4]
d00450b2:	ee77 7acc 	vsub.f32	s15, s15, s24
d00450b6:	ed9a 7a03 	vldr	s14, [sl, #12]
d00450ba:	ee76 6aeb 	vsub.f32	s13, s13, s23
d00450be:	edda 5a0a 	vldr	s11, [sl, #40]	; 0x28
d00450c2:	ee37 7a4e 	vsub.f32	s14, s14, s28
d00450c6:	ee27 6aa7 	vmul.f32	s12, s15, s15
d00450ca:	ee25 4aa5 	vmul.f32	s8, s11, s11
d00450ce:	eea6 6aa6 	vfma.f32	s12, s13, s13
d00450d2:	eea7 6a07 	vfma.f32	s12, s14, s14
d00450d6:	eeb4 6a6e 	vcmp.f32	s12, s29
d00450da:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00450de:	f340 8094 	ble.w	d004520a <submitEntitySolid+0x772>
d00450e2:	eeb4 4a46 	vcmp.f32	s8, s12
d00450e6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00450ea:	f340 808e 	ble.w	d004520a <submitEntitySolid+0x772>
d00450ee:	eeb1 0ac6 	vsqrt.f32	s0, s12
d00450f2:	edda 3a08 	vldr	s7, [sl, #32]
d00450f6:	ee63 0aa3 	vmul.f32	s1, s7, s7
d00450fa:	eef4 0ac6 	vcmpe.f32	s1, s12
d00450fe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045102:	ee85 4a00 	vdiv.f32	s8, s10, s0
d0045106:	ee66 6a84 	vmul.f32	s13, s13, s8
d004510a:	ee67 7a84 	vmul.f32	s15, s15, s8
d004510e:	ee27 7a04 	vmul.f32	s14, s14, s8
d0045112:	f140 8123 	bpl.w	d004535c <submitEntitySolid+0x8c4>
d0045116:	edda 0a09 	vldr	s1, [sl, #36]	; 0x24
d004511a:	eef4 3ae0 	vcmpe.f32	s7, s1
d004511e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045122:	da72      	bge.n	d004520a <submitEntitySolid+0x772>
d0045124:	eef4 5ae0 	vcmpe.f32	s11, s1
d0045128:	ee26 6a04 	vmul.f32	s12, s12, s8
d004512c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045130:	eef4 0ac6 	vcmpe.f32	s1, s12
d0045134:	f200 814d 	bhi.w	d00453d2 <submitEntitySolid+0x93a>
d0045138:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004513c:	d965      	bls.n	d004520a <submitEntitySolid+0x772>
d004513e:	ee36 6a63 	vsub.f32	s12, s12, s7
d0045142:	ee70 3ae3 	vsub.f32	s7, s1, s7
d0045146:	eec6 5a23 	vdiv.f32	s11, s12, s7
d004514a:	ed1f 6a7f 	vldr	s12, [pc, #-508]	; d0044f50 <submitEntitySolid+0x4b8>
d004514e:	fe85 6a86 	vmaxnm.f32	s12, s11, s12
d0045152:	fe86 6a45 	vminnm.f32	s12, s12, s10
d0045156:	ee35 6a46 	vsub.f32	s12, s10, s12
d004515a:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d004515e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045162:	d952      	bls.n	d004520a <submitEntitySolid+0x772>
d0045164:	ee69 5a27 	vmul.f32	s11, s18, s15
d0045168:	eee8 5aa6 	vfma.f32	s11, s17, s13
d004516c:	eee8 5a07 	vfma.f32	s11, s16, s14
d0045170:	eef5 5ac0 	vcmpe.f32	s11, #0.0
d0045174:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045178:	d947      	bls.n	d004520a <submitEntitySolid+0x772>
d004517a:	eef5 fac0 	vcmpe.f32	s31, #0.0
d004517e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045182:	dd07      	ble.n	d0045194 <submitEntitySolid+0x6fc>
d0045184:	ed9a 4a07 	vldr	s8, [sl, #28]
d0045188:	ee2f 4a84 	vmul.f32	s8, s31, s8
d004518c:	ee24 4a06 	vmul.f32	s8, s8, s12
d0045190:	eee5 9a84 	vfma.f32	s19, s11, s8
d0045194:	eeb5 bac0 	vcmpe.f32	s22, #0.0
d0045198:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004519c:	dd2f      	ble.n	d00451fe <submitEntitySolid+0x766>
d004519e:	eed5 7a8f 	vfnms.f32	s15, s11, s30
d00451a2:	eed5 6a81 	vfnms.f32	s13, s11, s2
d00451a6:	ee95 7a8d 	vfnms.f32	s14, s11, s26
d00451aa:	ee2a 0aa7 	vmul.f32	s0, s21, s15
d00451ae:	eeaa 0a26 	vfma.f32	s0, s20, s13
d00451b2:	eeac 0a87 	vfma.f32	s0, s25, s14
d00451b6:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d00451ba:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00451be:	dd1e      	ble.n	d00451fe <submitEntitySolid+0x766>
d00451c0:	eddd 7a08 	vldr	s15, [sp, #32]
d00451c4:	eef4 7a6d 	vcmp.f32	s15, s27
d00451c8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00451cc:	d009      	beq.n	d00451e2 <submitEntitySolid+0x74a>
d00451ce:	eeb3 7a00 	vmov.f32	s14, #48	; 0x41800000  16.0
d00451d2:	eef4 7a47 	vcmp.f32	s15, s14
d00451d6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00451da:	f040 80c2 	bne.w	d0045362 <submitEntitySolid+0x8ca>
d00451de:	ee20 0a00 	vmul.f32	s0, s0, s0
d00451e2:	ee20 0a00 	vmul.f32	s0, s0, s0
d00451e6:	ee20 0a00 	vmul.f32	s0, s0, s0
d00451ea:	ee20 0a00 	vmul.f32	s0, s0, s0
d00451ee:	edda 7a07 	vldr	s15, [sl, #28]
d00451f2:	ee6b 7a27 	vmul.f32	s15, s22, s15
d00451f6:	ee27 6a86 	vmul.f32	s12, s15, s12
d00451fa:	eee6 9a00 	vfma.f32	s19, s12, s0
d00451fe:	eef4 9ac5 	vcmpe.f32	s19, s10
d0045202:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0045206:	f280 80d3 	bge.w	d00453b0 <submitEntitySolid+0x918>
d004520a:	f10b 0b01 	add.w	fp, fp, #1
d004520e:	f10a 0a40 	add.w	sl, sl, #64	; 0x40
d0045212:	455c      	cmp	r4, fp
d0045214:	f340 8085 	ble.w	d0045322 <submitEntitySolid+0x88a>
d0045218:	f8da 302c 	ldr.w	r3, [sl, #44]	; 0x2c
d004521c:	2b00      	cmp	r3, #0
d004521e:	d0f4      	beq.n	d004520a <submitEntitySolid+0x772>
d0045220:	f89a 3000 	ldrb.w	r3, [sl]
d0045224:	2b00      	cmp	r3, #0
d0045226:	f43f af40 	beq.w	d00450aa <submitEntitySolid+0x612>
d004522a:	edda 6a04 	vldr	s13, [sl, #16]
d004522e:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0045232:	edda 7a05 	vldr	s15, [sl, #20]
d0045236:	ed9a 7a06 	vldr	s14, [sl, #24]
d004523a:	eef1 6a66 	vneg.f32	s13, s13
d004523e:	eef1 7a67 	vneg.f32	s15, s15
d0045242:	eeb1 7a47 	vneg.f32	s14, s14
d0045246:	e78d      	b.n	d0045164 <submitEntitySolid+0x6cc>
d0045248:	eef1 0ae7 	vsqrt.f32	s1, s15
d004524c:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0045250:	eec0 7a20 	vdiv.f32	s15, s0, s1
d0045254:	ee68 8aa7 	vmul.f32	s17, s17, s15
d0045258:	ee29 9a27 	vmul.f32	s18, s18, s15
d004525c:	ee28 8a27 	vmul.f32	s16, s16, s15
d0045260:	e5cf      	b.n	d0044e02 <submitEntitySolid+0x36a>
d0045262:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0045266:	fe8a 0a29 	vmaxnm.f32	s0, s20, s19
d004526a:	fe80 0a67 	vminnm.f32	s0, s0, s15
d004526e:	f7fe fbeb 	bl	d0043a48 <brightnessToShadeF>
d0045272:	eeb0 8a40 	vmov.f32	s16, s0
d0045276:	f8dd a010 	ldr.w	sl, [sp, #16]
d004527a:	f8dd 8014 	ldr.w	r8, [sp, #20]
d004527e:	4651      	mov	r1, sl
d0045280:	ed97 3a00 	vldr	s6, [r7]
d0045284:	4640      	mov	r0, r8
d0045286:	edd7 3a01 	vldr	s7, [r7, #4]
d004528a:	ed97 4a02 	vldr	s8, [r7, #8]
d004528e:	edd6 1a00 	vldr	s3, [r6]
d0045292:	ed96 2a01 	vldr	s4, [r6, #4]
d0045296:	edd6 2a02 	vldr	s5, [r6, #8]
d004529a:	ed94 0a00 	vldr	s0, [r4]
d004529e:	edd4 0a01 	vldr	s1, [r4, #4]
d00452a2:	ed94 1a02 	vldr	s2, [r4, #8]
d00452a6:	f7fe fc3b 	bl	d0043b20 <clipTriangleToFrustum>
d00452aa:	2802      	cmp	r0, #2
d00452ac:	dc09      	bgt.n	d00452c2 <submitEntitySolid+0x82a>
d00452ae:	9b03      	ldr	r3, [sp, #12]
d00452b0:	f109 0901 	add.w	r9, r9, #1
d00452b4:	695b      	ldr	r3, [r3, #20]
d00452b6:	9302      	str	r3, [sp, #8]
d00452b8:	9b02      	ldr	r3, [sp, #8]
d00452ba:	4599      	cmp	r9, r3
d00452bc:	f6ff ace3 	blt.w	d0044c86 <submitEntitySolid+0x1ee>
d00452c0:	e674      	b.n	d0044fac <submitEntitySolid+0x514>
d00452c2:	eef0 4a48 	vmov.f32	s9, s16
d00452c6:	1e44      	subs	r4, r0, #1
d00452c8:	2601      	movs	r6, #1
d00452ca:	4647      	mov	r7, r8
d00452cc:	4650      	mov	r0, sl
d00452ce:	4633      	mov	r3, r6
d00452d0:	3601      	adds	r6, #1
d00452d2:	7b6a      	ldrb	r2, [r5, #13]
d00452d4:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d00452d8:	7b29      	ldrb	r1, [r5, #12]
d00452da:	eb06 0c46 	add.w	ip, r6, r6, lsl #1
d00452de:	ed97 0a00 	vldr	s0, [r7]
d00452e2:	eb07 0383 	add.w	r3, r7, r3, lsl #2
d00452e6:	edd7 0a01 	vldr	s1, [r7, #4]
d00452ea:	eb07 0c8c 	add.w	ip, r7, ip, lsl #2
d00452ee:	ed97 1a02 	vldr	s2, [r7, #8]
d00452f2:	edd3 1a00 	vldr	s3, [r3]
d00452f6:	ed93 2a01 	vldr	s4, [r3, #4]
d00452fa:	edd3 2a02 	vldr	s5, [r3, #8]
d00452fe:	ed9c 3a00 	vldr	s6, [ip]
d0045302:	eddc 3a01 	vldr	s7, [ip, #4]
d0045306:	ed9c 4a02 	vldr	s8, [ip, #8]
d004530a:	f7ff f865 	bl	d00443d8 <submitClippedTri>
d004530e:	42a6      	cmp	r6, r4
d0045310:	d1dd      	bne.n	d00452ce <submitEntitySolid+0x836>
d0045312:	e7cc      	b.n	d00452ae <submitEntitySolid+0x816>
d0045314:	eddf 4a4c 	vldr	s9, [pc, #304]	; d0045448 <submitEntitySolid+0x9b0>
d0045318:	eef0 2a64 	vmov.f32	s5, s9
d004531c:	eeb0 3a64 	vmov.f32	s6, s9
d0045320:	e695      	b.n	d004504e <submitEntitySolid+0x5b6>
d0045322:	eef0 aa64 	vmov.f32	s21, s9
d0045326:	4634      	mov	r4, r6
d0045328:	eeb0 fa43 	vmov.f32	s30, s6
d004532c:	463e      	mov	r6, r7
d004532e:	eef0 ca62 	vmov.f32	s25, s5
d0045332:	4647      	mov	r7, r8
d0045334:	eeb0 da42 	vmov.f32	s26, s4
d0045338:	4690      	mov	r8, r2
d004533a:	eeb0 aa61 	vmov.f32	s20, s3
d004533e:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0045342:	fe89 0a8a 	vmaxnm.f32	s0, s19, s20
d0045346:	fe80 0a67 	vminnm.f32	s0, s0, s15
d004534a:	f7fe fb7d 	bl	d0043a48 <brightnessToShadeF>
d004534e:	eeb0 8a40 	vmov.f32	s16, s0
d0045352:	f1b8 0f00 	cmp.w	r8, #0
d0045356:	f47f ae07 	bne.w	d0044f68 <submitEntitySolid+0x4d0>
d004535a:	e78c      	b.n	d0045276 <submitEntitySolid+0x7de>
d004535c:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0045360:	e700      	b.n	d0045164 <submitEntitySolid+0x6cc>
d0045362:	eef0 0a67 	vmov.f32	s1, s15
d0045366:	ed8d 1a13 	vstr	s2, [sp, #76]	; 0x4c
d004536a:	9212      	str	r2, [sp, #72]	; 0x48
d004536c:	edcd 1a11 	vstr	s3, [sp, #68]	; 0x44
d0045370:	ed8d 2a10 	vstr	s4, [sp, #64]	; 0x40
d0045374:	edcd 2a0f 	vstr	s5, [sp, #60]	; 0x3c
d0045378:	ed8d 3a0e 	vstr	s6, [sp, #56]	; 0x38
d004537c:	edcd 4a0d 	vstr	s9, [sp, #52]	; 0x34
d0045380:	ed8d 5a02 	vstr	s10, [sp, #8]
d0045384:	ed8d 6a01 	vstr	s12, [sp, #4]
d0045388:	f7fd f964 	bl	d0042654 <powf>
d004538c:	ed9d 1a13 	vldr	s2, [sp, #76]	; 0x4c
d0045390:	9a12      	ldr	r2, [sp, #72]	; 0x48
d0045392:	eddd 1a11 	vldr	s3, [sp, #68]	; 0x44
d0045396:	ed9d 2a10 	vldr	s4, [sp, #64]	; 0x40
d004539a:	eddd 2a0f 	vldr	s5, [sp, #60]	; 0x3c
d004539e:	ed9d 3a0e 	vldr	s6, [sp, #56]	; 0x38
d00453a2:	eddd 4a0d 	vldr	s9, [sp, #52]	; 0x34
d00453a6:	ed9d 5a02 	vldr	s10, [sp, #8]
d00453aa:	ed9d 6a01 	vldr	s12, [sp, #4]
d00453ae:	e71e      	b.n	d00451ee <submitEntitySolid+0x756>
d00453b0:	4634      	mov	r4, r6
d00453b2:	eef0 aa64 	vmov.f32	s21, s9
d00453b6:	463e      	mov	r6, r7
d00453b8:	eeb0 fa43 	vmov.f32	s30, s6
d00453bc:	4647      	mov	r7, r8
d00453be:	eef0 ca62 	vmov.f32	s25, s5
d00453c2:	eeb0 da42 	vmov.f32	s26, s4
d00453c6:	4690      	mov	r8, r2
d00453c8:	eeb0 aa61 	vmov.f32	s20, s3
d00453cc:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d00453d0:	e7b5      	b.n	d004533e <submitEntitySolid+0x8a6>
d00453d2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00453d6:	db21      	blt.n	d004541c <submitEntitySolid+0x984>
d00453d8:	ee36 6a63 	vsub.f32	s12, s12, s7
d00453dc:	ee70 3ae3 	vsub.f32	s7, s1, s7
d00453e0:	eeb6 4a08 	vmov.f32	s8, #104	; 0x3f400000  0.750
d00453e4:	eec6 5a23 	vdiv.f32	s11, s12, s7
d00453e8:	ed9f 6a17 	vldr	s12, [pc, #92]	; d0045448 <submitEntitySolid+0x9b0>
d00453ec:	fe85 6a86 	vmaxnm.f32	s12, s11, s12
d00453f0:	eef0 5a45 	vmov.f32	s11, s10
d00453f4:	fe86 6a45 	vminnm.f32	s12, s12, s10
d00453f8:	eee6 5a44 	vfms.f32	s11, s12, s8
d00453fc:	eeb0 6a65 	vmov.f32	s12, s11
d0045400:	e6ab      	b.n	d004515a <submitEntitySolid+0x6c2>
d0045402:	eeb1 7ae7 	vsqrt.f32	s14, s15
d0045406:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d004540a:	eec6 7a87 	vdiv.f32	s15, s13, s14
d004540e:	ee23 3a27 	vmul.f32	s6, s6, s15
d0045412:	ee62 2aa7 	vmul.f32	s5, s5, s15
d0045416:	ee64 4aa7 	vmul.f32	s9, s9, s15
d004541a:	e618      	b.n	d004504e <submitEntitySolid+0x5b6>
d004541c:	ee36 6a60 	vsub.f32	s12, s12, s1
d0045420:	ee75 5ae0 	vsub.f32	s11, s11, s1
d0045424:	ee86 4a25 	vdiv.f32	s8, s12, s11
d0045428:	ed9f 6a07 	vldr	s12, [pc, #28]	; d0045448 <submitEntitySolid+0x9b0>
d004542c:	eef5 5a00 	vmov.f32	s11, #80	; 0x3e800000  0.250
d0045430:	fe84 6a06 	vmaxnm.f32	s12, s8, s12
d0045434:	fe86 6a45 	vminnm.f32	s12, s12, s10
d0045438:	ee35 6a46 	vsub.f32	s12, s10, s12
d004543c:	ee26 6a25 	vmul.f32	s12, s12, s11
d0045440:	e68b      	b.n	d004515a <submitEntitySolid+0x6c2>
d0045442:	f04f 0801 	mov.w	r8, #1
d0045446:	e5c0      	b.n	d0044fca <submitEntitySolid+0x532>
d0045448:	00000000 	.word	0x00000000

d004544c <submitWorldEntities>:
d004544c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d0045450:	4c30      	ldr	r4, [pc, #192]	; (d0045514 <submitWorldEntities+0xc8>)
d0045452:	b09d      	sub	sp, #116	; 0x74
d0045454:	f04f 0800 	mov.w	r8, #0
d0045458:	f8df 90bc 	ldr.w	r9, [pc, #188]	; d0045518 <submitWorldEntities+0xcc>
d004545c:	4605      	mov	r5, r0
d004545e:	f504 46c0 	add.w	r6, r4, #24576	; 0x6000
d0045462:	f100 0710 	add.w	r7, r0, #16
d0045466:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d004546a:	2b00      	cmp	r3, #0
d004546c:	d03f      	beq.n	d00454ee <submitWorldEntities+0xa2>
d004546e:	68e3      	ldr	r3, [r4, #12]
d0045470:	2250      	movs	r2, #80	; 0x50
d0045472:	4639      	mov	r1, r7
d0045474:	4668      	mov	r0, sp
d0045476:	b3d3      	cbz	r3, d00454ee <submitWorldEntities+0xa2>
d0045478:	f894 3035 	ldrb.w	r3, [r4, #53]	; 0x35
d004547c:	07db      	lsls	r3, r3, #31
d004547e:	d536      	bpl.n	d00454ee <submitWorldEntities+0xa2>
d0045480:	ed94 0a00 	vldr	s0, [r4]
d0045484:	edd4 0a01 	vldr	s1, [r4, #4]
d0045488:	ed94 1a02 	vldr	s2, [r4, #8]
d004548c:	ed8d 0a17 	vstr	s0, [sp, #92]	; 0x5c
d0045490:	edcd 0a16 	vstr	s1, [sp, #88]	; 0x58
d0045494:	ed8d 1a15 	vstr	s2, [sp, #84]	; 0x54
d0045498:	f000 fd2e 	bl	d0045ef8 <memcpy>
d004549c:	ed9d 1a15 	vldr	s2, [sp, #84]	; 0x54
d00454a0:	ed9d 0a17 	vldr	s0, [sp, #92]	; 0x5c
d00454a4:	eddd 0a16 	vldr	s1, [sp, #88]	; 0x58
d00454a8:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d00454ac:	f7fd fe2c 	bl	d0043108 <worldToCamera>
d00454b0:	68e3      	ldr	r3, [r4, #12]
d00454b2:	ed95 7a11 	vldr	s14, [r5, #68]	; 0x44
d00454b6:	edd3 7a06 	vldr	s15, [r3, #24]
d00454ba:	ed8d 0a19 	vstr	s0, [sp, #100]	; 0x64
d00454be:	ee71 6a67 	vsub.f32	s13, s2, s15
d00454c2:	edcd 0a1a 	vstr	s1, [sp, #104]	; 0x68
d00454c6:	ee71 7a27 	vadd.f32	s15, s2, s15
d00454ca:	ed8d 1a1b 	vstr	s2, [sp, #108]	; 0x6c
d00454ce:	eef4 6ac7 	vcmpe.f32	s13, s14
d00454d2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00454d6:	dc0a      	bgt.n	d00454ee <submitWorldEntities+0xa2>
d00454d8:	ed95 7a10 	vldr	s14, [r5, #64]	; 0x40
d00454dc:	eef4 7ac7 	vcmpe.f32	s15, s14
d00454e0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00454e4:	d403      	bmi.n	d00454ee <submitWorldEntities+0xa2>
d00454e6:	f849 4028 	str.w	r4, [r9, r8, lsl #2]
d00454ea:	f108 0801 	add.w	r8, r8, #1
d00454ee:	3460      	adds	r4, #96	; 0x60
d00454f0:	42b4      	cmp	r4, r6
d00454f2:	d1b8      	bne.n	d0045466 <submitWorldEntities+0x1a>
d00454f4:	f1b8 0f00 	cmp.w	r8, #0
d00454f8:	d009      	beq.n	d004550e <submitWorldEntities+0xc2>
d00454fa:	4c07      	ldr	r4, [pc, #28]	; (d0045518 <submitWorldEntities+0xcc>)
d00454fc:	eb04 0888 	add.w	r8, r4, r8, lsl #2
d0045500:	f854 0b04 	ldr.w	r0, [r4], #4
d0045504:	4629      	mov	r1, r5
d0045506:	f7ff fac7 	bl	d0044a98 <submitEntitySolid>
d004550a:	45a0      	cmp	r8, r4
d004550c:	d1f8      	bne.n	d0045500 <submitWorldEntities+0xb4>
d004550e:	b01d      	add	sp, #116	; 0x74
d0045510:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0045514:	d00e1cc0 	.word	0xd00e1cc0
d0045518:	d00e1820 	.word	0xd00e1820

d004551c <Render3D>:
d004551c:	b5f0      	push	{r4, r5, r6, r7, lr}
d004551e:	4604      	mov	r4, r0
d0045520:	4e6f      	ldr	r6, [pc, #444]	; (d00456e0 <Render3D+0x1c4>)
d0045522:	2700      	movs	r7, #0
d0045524:	ed2d 8b02 	vpush	{d8}
d0045528:	b087      	sub	sp, #28
d004552a:	6037      	str	r7, [r6, #0]
d004552c:	f7ff ff8e 	bl	d004544c <submitWorldEntities>
d0045530:	4620      	mov	r0, r4
d0045532:	f7fd f94d 	bl	d00427d0 <sb3dParticlesRender>
d0045536:	4b6b      	ldr	r3, [pc, #428]	; (d00456e4 <Render3D+0x1c8>)
d0045538:	681d      	ldr	r5, [r3, #0]
d004553a:	2d00      	cmp	r5, #0
d004553c:	d04d      	beq.n	d00455da <Render3D+0xbe>
d004553e:	6833      	ldr	r3, [r6, #0]
d0045540:	42bb      	cmp	r3, r7
d0045542:	dd46      	ble.n	d00455d2 <Render3D+0xb6>
d0045544:	eeb6 8a00 	vmov.f32	s16, #96	; 0x3f000000  0.5
d0045548:	4c67      	ldr	r4, [pc, #412]	; (d00456e8 <Render3D+0x1cc>)
d004554a:	eddf 8a68 	vldr	s17, [pc, #416]	; d00456ec <Render3D+0x1d0>
d004554e:	edd4 7a07 	vldr	s15, [r4, #28]
d0045552:	3701      	adds	r7, #1
d0045554:	f894 3035 	ldrb.w	r3, [r4, #53]	; 0x35
d0045558:	ee77 7a88 	vadd.f32	s15, s15, s16
d004555c:	ee07 3a10 	vmov	s14, r3
d0045560:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0045564:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0045568:	ee17 1a90 	vmov	r1, s15
d004556c:	eef0 7a48 	vmov.f32	s15, s16
d0045570:	2904      	cmp	r1, #4
d0045572:	eee7 7a28 	vfma.f32	s15, s14, s17
d0045576:	bfa8      	it	ge
d0045578:	2104      	movge	r1, #4
d004557a:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d004557e:	b153      	cbz	r3, d0045596 <Render3D+0x7a>
d0045580:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0045584:	ee17 3a90 	vmov	r3, s15
d0045588:	f1c3 0305 	rsb	r3, r3, #5
d004558c:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0045590:	4299      	cmp	r1, r3
d0045592:	bfa8      	it	ge
d0045594:	4619      	movge	r1, r3
d0045596:	f894 0034 	ldrb.w	r0, [r4, #52]	; 0x34
d004559a:	f7fb f973 	bl	d0040884 <shadeColor>
d004559e:	4605      	mov	r5, r0
d00455a0:	68e3      	ldr	r3, [r4, #12]
d00455a2:	68a2      	ldr	r2, [r4, #8]
d00455a4:	6861      	ldr	r1, [r4, #4]
d00455a6:	9000      	str	r0, [sp, #0]
d00455a8:	6820      	ldr	r0, [r4, #0]
d00455aa:	f7fb f91d 	bl	d00407e8 <drawLine>
d00455ae:	9500      	str	r5, [sp, #0]
d00455b0:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
d00455b4:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
d00455b8:	f7fb f916 	bl	d00407e8 <drawLine>
d00455bc:	9500      	str	r5, [sp, #0]
d00455be:	e9d4 2300 	ldrd	r2, r3, [r4]
d00455c2:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
d00455c6:	f7fb f90f 	bl	d00407e8 <drawLine>
d00455ca:	6833      	ldr	r3, [r6, #0]
d00455cc:	3440      	adds	r4, #64	; 0x40
d00455ce:	42bb      	cmp	r3, r7
d00455d0:	dcbd      	bgt.n	d004554e <Render3D+0x32>
d00455d2:	b007      	add	sp, #28
d00455d4:	ecbd 8b02 	vpop	{d8}
d00455d8:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00455da:	f44f 2296 	mov.w	r2, #307200	; 0x4b000
d00455de:	21ff      	movs	r1, #255	; 0xff
d00455e0:	4843      	ldr	r0, [pc, #268]	; (d00456f0 <Render3D+0x1d4>)
d00455e2:	f000 fc97 	bl	d0045f14 <memset>
d00455e6:	4b43      	ldr	r3, [pc, #268]	; (d00456f4 <Render3D+0x1d8>)
d00455e8:	681f      	ldr	r7, [r3, #0]
d00455ea:	b33f      	cbz	r7, d004563c <Render3D+0x120>
d00455ec:	6833      	ldr	r3, [r6, #0]
d00455ee:	2b00      	cmp	r3, #0
d00455f0:	ddef      	ble.n	d00455d2 <Render3D+0xb6>
d00455f2:	4c3d      	ldr	r4, [pc, #244]	; (d00456e8 <Render3D+0x1cc>)
d00455f4:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d00455f8:	3501      	adds	r5, #1
d00455fa:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d00455fc:	8c21      	ldrh	r1, [r4, #32]
d00455fe:	6962      	ldr	r2, [r4, #20]
d0045600:	8ca7      	ldrh	r7, [r4, #36]	; 0x24
d0045602:	9305      	str	r3, [sp, #20]
d0045604:	9704      	str	r7, [sp, #16]
d0045606:	9003      	str	r0, [sp, #12]
d0045608:	9102      	str	r1, [sp, #8]
d004560a:	9201      	str	r2, [sp, #4]
d004560c:	6923      	ldr	r3, [r4, #16]
d004560e:	9300      	str	r3, [sp, #0]
d0045610:	edd4 1a07 	vldr	s3, [r4, #28]
d0045614:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0045618:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d004561c:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0045620:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d0045624:	e9d4 0100 	ldrd	r0, r1, [r4]
d0045628:	f7fb f93c 	bl	d00408a4 <fillTriangleFlat>
d004562c:	6833      	ldr	r3, [r6, #0]
d004562e:	3440      	adds	r4, #64	; 0x40
d0045630:	42ab      	cmp	r3, r5
d0045632:	dcdf      	bgt.n	d00455f4 <Render3D+0xd8>
d0045634:	b007      	add	sp, #28
d0045636:	ecbd 8b02 	vpop	{d8}
d004563a:	bdf0      	pop	{r4, r5, r6, r7, pc}
d004563c:	4b2e      	ldr	r3, [pc, #184]	; (d00456f8 <Render3D+0x1dc>)
d004563e:	681d      	ldr	r5, [r3, #0]
d0045640:	6833      	ldr	r3, [r6, #0]
d0045642:	b335      	cbz	r5, d0045692 <Render3D+0x176>
d0045644:	2b00      	cmp	r3, #0
d0045646:	ddc4      	ble.n	d00455d2 <Render3D+0xb6>
d0045648:	4c27      	ldr	r4, [pc, #156]	; (d00456e8 <Render3D+0x1cc>)
d004564a:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d004564e:	3701      	adds	r7, #1
d0045650:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d0045652:	8c21      	ldrh	r1, [r4, #32]
d0045654:	6962      	ldr	r2, [r4, #20]
d0045656:	8ca5      	ldrh	r5, [r4, #36]	; 0x24
d0045658:	9305      	str	r3, [sp, #20]
d004565a:	6923      	ldr	r3, [r4, #16]
d004565c:	9504      	str	r5, [sp, #16]
d004565e:	9003      	str	r0, [sp, #12]
d0045660:	9102      	str	r1, [sp, #8]
d0045662:	9201      	str	r2, [sp, #4]
d0045664:	9300      	str	r3, [sp, #0]
d0045666:	edd4 1a07 	vldr	s3, [r4, #28]
d004566a:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d004566e:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0045672:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0045676:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d004567a:	e9d4 0100 	ldrd	r0, r1, [r4]
d004567e:	f7fc f9dd 	bl	d0041a3c <fillTriangleDitherBayer2Mode>
d0045682:	6833      	ldr	r3, [r6, #0]
d0045684:	3440      	adds	r4, #64	; 0x40
d0045686:	42bb      	cmp	r3, r7
d0045688:	dcdf      	bgt.n	d004564a <Render3D+0x12e>
d004568a:	b007      	add	sp, #28
d004568c:	ecbd 8b02 	vpop	{d8}
d0045690:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0045692:	2b00      	cmp	r3, #0
d0045694:	dd9d      	ble.n	d00455d2 <Render3D+0xb6>
d0045696:	4c14      	ldr	r4, [pc, #80]	; (d00456e8 <Render3D+0x1cc>)
d0045698:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d004569c:	3501      	adds	r5, #1
d004569e:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d00456a0:	8c21      	ldrh	r1, [r4, #32]
d00456a2:	6962      	ldr	r2, [r4, #20]
d00456a4:	8ca7      	ldrh	r7, [r4, #36]	; 0x24
d00456a6:	9305      	str	r3, [sp, #20]
d00456a8:	6923      	ldr	r3, [r4, #16]
d00456aa:	9704      	str	r7, [sp, #16]
d00456ac:	9003      	str	r0, [sp, #12]
d00456ae:	9102      	str	r1, [sp, #8]
d00456b0:	9201      	str	r2, [sp, #4]
d00456b2:	9300      	str	r3, [sp, #0]
d00456b4:	edd4 1a07 	vldr	s3, [r4, #28]
d00456b8:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00456bc:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00456c0:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00456c4:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d00456c8:	e9d4 0100 	ldrd	r0, r1, [r4]
d00456cc:	f7fb fcf8 	bl	d00410c0 <fillTriangleDitherBayer>
d00456d0:	6833      	ldr	r3, [r6, #0]
d00456d2:	3440      	adds	r4, #64	; 0x40
d00456d4:	42ab      	cmp	r3, r5
d00456d6:	dcdf      	bgt.n	d0045698 <Render3D+0x17c>
d00456d8:	b007      	add	sp, #28
d00456da:	ecbd 8b02 	vpop	{d8}
d00456de:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00456e0:	d00557e4 	.word	0xd00557e4
d00456e4:	d00d5804 	.word	0xd00d5804
d00456e8:	d0055800 	.word	0xd0055800
d00456ec:	3ca0a0a1 	.word	0x3ca0a0a1
d00456f0:	d00e7cc0 	.word	0xd00e7cc0
d00456f4:	d00557e0 	.word	0xd00557e0
d00456f8:	d00d5800 	.word	0xd00d5800

d00456fc <loadMeshSB3D>:
d00456fc:	2800      	cmp	r0, #0
d00456fe:	d07a      	beq.n	d00457f6 <loadMeshSB3D+0xfa>
d0045700:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0045704:	460d      	mov	r5, r1
d0045706:	4601      	mov	r1, r0
d0045708:	fab5 f085 	clz	r0, r5
d004570c:	ed2d 8b02 	vpush	{d8}
d0045710:	0940      	lsrs	r0, r0, #5
d0045712:	b08c      	sub	sp, #48	; 0x30
d0045714:	2d00      	cmp	r5, #0
d0045716:	d068      	beq.n	d00457ea <loadMeshSB3D+0xee>
d0045718:	4c6c      	ldr	r4, [pc, #432]	; (d00458cc <loadMeshSB3D+0x1d0>)
d004571a:	2201      	movs	r2, #1
d004571c:	eeb0 8a40 	vmov.f32	s16, s0
d0045720:	7923      	ldrb	r3, [r4, #4]
d0045722:	7966      	ldrb	r6, [r4, #5]
d0045724:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d0045728:	79a6      	ldrb	r6, [r4, #6]
d004572a:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d004572e:	79e6      	ldrb	r6, [r4, #7]
d0045730:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d0045734:	681b      	ldr	r3, [r3, #0]
d0045736:	681b      	ldr	r3, [r3, #0]
d0045738:	4798      	blx	r3
d004573a:	2800      	cmp	r0, #0
d004573c:	d155      	bne.n	d00457ea <loadMeshSB3D+0xee>
d004573e:	f894 c004 	ldrb.w	ip, [r4, #4]
d0045742:	2204      	movs	r2, #4
d0045744:	7961      	ldrb	r1, [r4, #5]
d0045746:	ab02      	add	r3, sp, #8
d0045748:	79a7      	ldrb	r7, [r4, #6]
d004574a:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d004574e:	79e6      	ldrb	r6, [r4, #7]
d0045750:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0045754:	a903      	add	r1, sp, #12
d0045756:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d004575a:	6836      	ldr	r6, [r6, #0]
d004575c:	68b6      	ldr	r6, [r6, #8]
d004575e:	47b0      	blx	r6
d0045760:	2800      	cmp	r0, #0
d0045762:	d13f      	bne.n	d00457e4 <loadMeshSB3D+0xe8>
d0045764:	4b5a      	ldr	r3, [pc, #360]	; (d00458d0 <loadMeshSB3D+0x1d4>)
d0045766:	9a03      	ldr	r2, [sp, #12]
d0045768:	429a      	cmp	r2, r3
d004576a:	d13b      	bne.n	d00457e4 <loadMeshSB3D+0xe8>
d004576c:	f894 c004 	ldrb.w	ip, [r4, #4]
d0045770:	ab02      	add	r3, sp, #8
d0045772:	7961      	ldrb	r1, [r4, #5]
d0045774:	2204      	movs	r2, #4
d0045776:	79a7      	ldrb	r7, [r4, #6]
d0045778:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d004577c:	79e6      	ldrb	r6, [r4, #7]
d004577e:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0045782:	a904      	add	r1, sp, #16
d0045784:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0045788:	6836      	ldr	r6, [r6, #0]
d004578a:	68b6      	ldr	r6, [r6, #8]
d004578c:	47b0      	blx	r6
d004578e:	bb48      	cbnz	r0, d00457e4 <loadMeshSB3D+0xe8>
d0045790:	9b04      	ldr	r3, [sp, #16]
d0045792:	2b02      	cmp	r3, #2
d0045794:	d126      	bne.n	d00457e4 <loadMeshSB3D+0xe8>
d0045796:	f894 c004 	ldrb.w	ip, [r4, #4]
d004579a:	ab02      	add	r3, sp, #8
d004579c:	7961      	ldrb	r1, [r4, #5]
d004579e:	2204      	movs	r2, #4
d00457a0:	79a7      	ldrb	r7, [r4, #6]
d00457a2:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d00457a6:	79e6      	ldrb	r6, [r4, #7]
d00457a8:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d00457ac:	a905      	add	r1, sp, #20
d00457ae:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d00457b2:	6836      	ldr	r6, [r6, #0]
d00457b4:	68b6      	ldr	r6, [r6, #8]
d00457b6:	47b0      	blx	r6
d00457b8:	b9a0      	cbnz	r0, d00457e4 <loadMeshSB3D+0xe8>
d00457ba:	7921      	ldrb	r1, [r4, #4]
d00457bc:	ab02      	add	r3, sp, #8
d00457be:	7966      	ldrb	r6, [r4, #5]
d00457c0:	2204      	movs	r2, #4
d00457c2:	79a7      	ldrb	r7, [r4, #6]
d00457c4:	ea41 2106 	orr.w	r1, r1, r6, lsl #8
d00457c8:	79e6      	ldrb	r6, [r4, #7]
d00457ca:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d00457ce:	a906      	add	r1, sp, #24
d00457d0:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d00457d4:	6836      	ldr	r6, [r6, #0]
d00457d6:	68b6      	ldr	r6, [r6, #8]
d00457d8:	47b0      	blx	r6
d00457da:	b918      	cbnz	r0, d00457e4 <loadMeshSB3D+0xe8>
d00457dc:	9b05      	ldr	r3, [sp, #20]
d00457de:	b10b      	cbz	r3, d00457e4 <loadMeshSB3D+0xe8>
d00457e0:	9e06      	ldr	r6, [sp, #24]
d00457e2:	b956      	cbnz	r6, d00457fa <loadMeshSB3D+0xfe>
d00457e4:	2000      	movs	r0, #0
d00457e6:	f000 f98f 	bl	d0045b08 <fclose>
d00457ea:	2000      	movs	r0, #0
d00457ec:	b00c      	add	sp, #48	; 0x30
d00457ee:	ecbd 8b02 	vpop	{d8}
d00457f2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00457f6:	2000      	movs	r0, #0
d00457f8:	4770      	bx	lr
d00457fa:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d00457fe:	2700      	movs	r7, #0
d0045800:	606b      	str	r3, [r5, #4]
d0045802:	616e      	str	r6, [r5, #20]
d0045804:	0080      	lsls	r0, r0, #2
d0045806:	60ef      	str	r7, [r5, #12]
d0045808:	f000 fb66 	bl	d0045ed8 <malloc>
d004580c:	4603      	mov	r3, r0
d004580e:	0130      	lsls	r0, r6, #4
d0045810:	461e      	mov	r6, r3
d0045812:	602b      	str	r3, [r5, #0]
d0045814:	f000 fb60 	bl	d0045ed8 <malloc>
d0045818:	60af      	str	r7, [r5, #8]
d004581a:	6128      	str	r0, [r5, #16]
d004581c:	2e00      	cmp	r6, #0
d004581e:	f000 80fb 	beq.w	d0045a18 <loadMeshSB3D+0x31c>
d0045822:	2800      	cmp	r0, #0
d0045824:	f000 80eb 	beq.w	d00459fe <loadMeshSB3D+0x302>
d0045828:	46b8      	mov	r8, r7
d004582a:	e017      	b.n	d004585c <loadMeshSB3D+0x160>
d004582c:	eddd 6a09 	vldr	s13, [sp, #36]	; 0x24
d0045830:	ed9d 7a0a 	vldr	s14, [sp, #40]	; 0x28
d0045834:	eddd 7a0b 	vldr	s15, [sp, #44]	; 0x2c
d0045838:	ee66 6a88 	vmul.f32	s13, s13, s16
d004583c:	682b      	ldr	r3, [r5, #0]
d004583e:	ee27 7a08 	vmul.f32	s14, s14, s16
d0045842:	9905      	ldr	r1, [sp, #20]
d0045844:	ee67 7a88 	vmul.f32	s15, s15, s16
d0045848:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d004584c:	4541      	cmp	r1, r8
d004584e:	edc3 6a00 	vstr	s13, [r3]
d0045852:	ed83 7a01 	vstr	s14, [r3, #4]
d0045856:	edc3 7a02 	vstr	s15, [r3, #8]
d004585a:	d931      	bls.n	d00458c0 <loadMeshSB3D+0x1c4>
d004585c:	f894 c004 	ldrb.w	ip, [r4, #4]
d0045860:	220c      	movs	r2, #12
d0045862:	7960      	ldrb	r0, [r4, #5]
d0045864:	ab02      	add	r3, sp, #8
d0045866:	79a7      	ldrb	r7, [r4, #6]
d0045868:	a909      	add	r1, sp, #36	; 0x24
d004586a:	ea4c 2000 	orr.w	r0, ip, r0, lsl #8
d004586e:	79e6      	ldrb	r6, [r4, #7]
d0045870:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d0045874:	2000      	movs	r0, #0
d0045876:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d004587a:	6836      	ldr	r6, [r6, #0]
d004587c:	68b6      	ldr	r6, [r6, #8]
d004587e:	47b0      	blx	r6
d0045880:	eb08 0248 	add.w	r2, r8, r8, lsl #1
d0045884:	f108 0801 	add.w	r8, r8, #1
d0045888:	2800      	cmp	r0, #0
d004588a:	d0cf      	beq.n	d004582c <loadMeshSB3D+0x130>
d004588c:	6828      	ldr	r0, [r5, #0]
d004588e:	b108      	cbz	r0, d0045894 <loadMeshSB3D+0x198>
d0045890:	f000 fb2a 	bl	d0045ee8 <free>
d0045894:	6928      	ldr	r0, [r5, #16]
d0045896:	b108      	cbz	r0, d004589c <loadMeshSB3D+0x1a0>
d0045898:	f000 fb26 	bl	d0045ee8 <free>
d004589c:	68a8      	ldr	r0, [r5, #8]
d004589e:	b108      	cbz	r0, d00458a4 <loadMeshSB3D+0x1a8>
d00458a0:	f000 fb22 	bl	d0045ee8 <free>
d00458a4:	2400      	movs	r4, #0
d00458a6:	2300      	movs	r3, #0
d00458a8:	4620      	mov	r0, r4
d00458aa:	602c      	str	r4, [r5, #0]
d00458ac:	612c      	str	r4, [r5, #16]
d00458ae:	60ac      	str	r4, [r5, #8]
d00458b0:	606c      	str	r4, [r5, #4]
d00458b2:	616c      	str	r4, [r5, #20]
d00458b4:	60ec      	str	r4, [r5, #12]
d00458b6:	61ab      	str	r3, [r5, #24]
d00458b8:	f000 f926 	bl	d0045b08 <fclose>
d00458bc:	4620      	mov	r0, r4
d00458be:	e795      	b.n	d00457ec <loadMeshSB3D+0xf0>
d00458c0:	9b06      	ldr	r3, [sp, #24]
d00458c2:	2b00      	cmp	r3, #0
d00458c4:	f000 808a 	beq.w	d00459dc <loadMeshSB3D+0x2e0>
d00458c8:	4606      	mov	r6, r0
d00458ca:	e06e      	b.n	d00459aa <loadMeshSB3D+0x2ae>
d00458cc:	2001f000 	.word	0x2001f000
d00458d0:	44334253 	.word	0x44334253
d00458d4:	f894 e004 	ldrb.w	lr, [r4, #4]
d00458d8:	7967      	ldrb	r7, [r4, #5]
d00458da:	f894 c006 	ldrb.w	ip, [r4, #6]
d00458de:	ea4e 2e07 	orr.w	lr, lr, r7, lsl #8
d00458e2:	79e7      	ldrb	r7, [r4, #7]
d00458e4:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d00458e8:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d00458ec:	683f      	ldr	r7, [r7, #0]
d00458ee:	68bf      	ldr	r7, [r7, #8]
d00458f0:	47b8      	blx	r7
d00458f2:	ab02      	add	r3, sp, #8
d00458f4:	2204      	movs	r2, #4
d00458f6:	a909      	add	r1, sp, #36	; 0x24
d00458f8:	2800      	cmp	r0, #0
d00458fa:	d1c7      	bne.n	d004588c <loadMeshSB3D+0x190>
d00458fc:	f894 e004 	ldrb.w	lr, [r4, #4]
d0045900:	7967      	ldrb	r7, [r4, #5]
d0045902:	f894 c006 	ldrb.w	ip, [r4, #6]
d0045906:	ea4e 2e07 	orr.w	lr, lr, r7, lsl #8
d004590a:	79e7      	ldrb	r7, [r4, #7]
d004590c:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d0045910:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0045914:	683f      	ldr	r7, [r7, #0]
d0045916:	68bf      	ldr	r7, [r7, #8]
d0045918:	47b8      	blx	r7
d004591a:	ab02      	add	r3, sp, #8
d004591c:	2201      	movs	r2, #1
d004591e:	f10d 0106 	add.w	r1, sp, #6
d0045922:	2800      	cmp	r0, #0
d0045924:	d1b2      	bne.n	d004588c <loadMeshSB3D+0x190>
d0045926:	f894 e004 	ldrb.w	lr, [r4, #4]
d004592a:	7967      	ldrb	r7, [r4, #5]
d004592c:	f894 c006 	ldrb.w	ip, [r4, #6]
d0045930:	ea4e 2e07 	orr.w	lr, lr, r7, lsl #8
d0045934:	79e7      	ldrb	r7, [r4, #7]
d0045936:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d004593a:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d004593e:	683f      	ldr	r7, [r7, #0]
d0045940:	68bf      	ldr	r7, [r7, #8]
d0045942:	47b8      	blx	r7
d0045944:	ab02      	add	r3, sp, #8
d0045946:	2201      	movs	r2, #1
d0045948:	f10d 0107 	add.w	r1, sp, #7
d004594c:	2800      	cmp	r0, #0
d004594e:	d19d      	bne.n	d004588c <loadMeshSB3D+0x190>
d0045950:	f894 e004 	ldrb.w	lr, [r4, #4]
d0045954:	7967      	ldrb	r7, [r4, #5]
d0045956:	f894 c006 	ldrb.w	ip, [r4, #6]
d004595a:	ea4e 2e07 	orr.w	lr, lr, r7, lsl #8
d004595e:	79e7      	ldrb	r7, [r4, #7]
d0045960:	ea4e 4c0c 	orr.w	ip, lr, ip, lsl #16
d0045964:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0045968:	683f      	ldr	r7, [r7, #0]
d004596a:	68bf      	ldr	r7, [r7, #8]
d004596c:	47b8      	blx	r7
d004596e:	0137      	lsls	r7, r6, #4
d0045970:	2800      	cmp	r0, #0
d0045972:	d18b      	bne.n	d004588c <loadMeshSB3D+0x190>
d0045974:	9a07      	ldr	r2, [sp, #28]
d0045976:	9b05      	ldr	r3, [sp, #20]
d0045978:	429a      	cmp	r2, r3
d004597a:	d287      	bcs.n	d004588c <loadMeshSB3D+0x190>
d004597c:	9908      	ldr	r1, [sp, #32]
d004597e:	428b      	cmp	r3, r1
d0045980:	d984      	bls.n	d004588c <loadMeshSB3D+0x190>
d0045982:	9809      	ldr	r0, [sp, #36]	; 0x24
d0045984:	4283      	cmp	r3, r0
d0045986:	d981      	bls.n	d004588c <loadMeshSB3D+0x190>
d0045988:	692b      	ldr	r3, [r5, #16]
d004598a:	f8dd c018 	ldr.w	ip, [sp, #24]
d004598e:	51da      	str	r2, [r3, r7]
d0045990:	eb03 1306 	add.w	r3, r3, r6, lsl #4
d0045994:	3601      	adds	r6, #1
d0045996:	f89d 7006 	ldrb.w	r7, [sp, #6]
d004599a:	f89d 2007 	ldrb.w	r2, [sp, #7]
d004599e:	45b4      	cmp	ip, r6
d00459a0:	6059      	str	r1, [r3, #4]
d00459a2:	6098      	str	r0, [r3, #8]
d00459a4:	731f      	strb	r7, [r3, #12]
d00459a6:	735a      	strb	r2, [r3, #13]
d00459a8:	d918      	bls.n	d00459dc <loadMeshSB3D+0x2e0>
d00459aa:	7920      	ldrb	r0, [r4, #4]
d00459ac:	ab02      	add	r3, sp, #8
d00459ae:	7967      	ldrb	r7, [r4, #5]
d00459b0:	2204      	movs	r2, #4
d00459b2:	f894 c006 	ldrb.w	ip, [r4, #6]
d00459b6:	a907      	add	r1, sp, #28
d00459b8:	ea40 2007 	orr.w	r0, r0, r7, lsl #8
d00459bc:	79e7      	ldrb	r7, [r4, #7]
d00459be:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d00459c2:	2000      	movs	r0, #0
d00459c4:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d00459c8:	683f      	ldr	r7, [r7, #0]
d00459ca:	68bf      	ldr	r7, [r7, #8]
d00459cc:	47b8      	blx	r7
d00459ce:	ab02      	add	r3, sp, #8
d00459d0:	2204      	movs	r2, #4
d00459d2:	a908      	add	r1, sp, #32
d00459d4:	2800      	cmp	r0, #0
d00459d6:	f43f af7d 	beq.w	d00458d4 <loadMeshSB3D+0x1d8>
d00459da:	e757      	b.n	d004588c <loadMeshSB3D+0x190>
d00459dc:	2000      	movs	r0, #0
d00459de:	f000 f893 	bl	d0045b08 <fclose>
d00459e2:	4628      	mov	r0, r5
d00459e4:	f7fd fca2 	bl	d004332c <meshComputeBoundsRadius>
d00459e8:	eef1 7a00 	vmov.f32	s15, #16	; 0x40800000  4.0
d00459ec:	4628      	mov	r0, r5
d00459ee:	ee20 0a27 	vmul.f32	s0, s0, s15
d00459f2:	ed85 0a06 	vstr	s0, [r5, #24]
d00459f6:	f7fa fed5 	bl	d00407a4 <meshSetDefaultMaterial>
d00459fa:	2001      	movs	r0, #1
d00459fc:	e6f6      	b.n	d00457ec <loadMeshSB3D+0xf0>
d00459fe:	4630      	mov	r0, r6
d0045a00:	f000 fa72 	bl	d0045ee8 <free>
d0045a04:	2400      	movs	r4, #0
d0045a06:	4620      	mov	r0, r4
d0045a08:	602c      	str	r4, [r5, #0]
d0045a0a:	612c      	str	r4, [r5, #16]
d0045a0c:	606c      	str	r4, [r5, #4]
d0045a0e:	616c      	str	r4, [r5, #20]
d0045a10:	f000 f87a 	bl	d0045b08 <fclose>
d0045a14:	4620      	mov	r0, r4
d0045a16:	e6e9      	b.n	d00457ec <loadMeshSB3D+0xf0>
d0045a18:	2800      	cmp	r0, #0
d0045a1a:	d0f3      	beq.n	d0045a04 <loadMeshSB3D+0x308>
d0045a1c:	f000 fa64 	bl	d0045ee8 <free>
d0045a20:	e7f0      	b.n	d0045a04 <loadMeshSB3D+0x308>
d0045a22:	bf00      	nop

d0045a24 <__errno>:
d0045a24:	4b01      	ldr	r3, [pc, #4]	; (d0045a2c <__errno+0x8>)
d0045a26:	6818      	ldr	r0, [r3, #0]
d0045a28:	4770      	bx	lr
d0045a2a:	bf00      	nop
d0045a2c:	d0047538 	.word	0xd0047538

d0045a30 <_fclose_r>:
d0045a30:	b570      	push	{r4, r5, r6, lr}
d0045a32:	4605      	mov	r5, r0
d0045a34:	460c      	mov	r4, r1
d0045a36:	b911      	cbnz	r1, d0045a3e <_fclose_r+0xe>
d0045a38:	2600      	movs	r6, #0
d0045a3a:	4630      	mov	r0, r6
d0045a3c:	bd70      	pop	{r4, r5, r6, pc}
d0045a3e:	b118      	cbz	r0, d0045a48 <_fclose_r+0x18>
d0045a40:	6983      	ldr	r3, [r0, #24]
d0045a42:	b90b      	cbnz	r3, d0045a48 <_fclose_r+0x18>
d0045a44:	f000 f982 	bl	d0045d4c <__sinit>
d0045a48:	4b2c      	ldr	r3, [pc, #176]	; (d0045afc <_fclose_r+0xcc>)
d0045a4a:	429c      	cmp	r4, r3
d0045a4c:	d114      	bne.n	d0045a78 <_fclose_r+0x48>
d0045a4e:	686c      	ldr	r4, [r5, #4]
d0045a50:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0045a52:	07d8      	lsls	r0, r3, #31
d0045a54:	d405      	bmi.n	d0045a62 <_fclose_r+0x32>
d0045a56:	89a3      	ldrh	r3, [r4, #12]
d0045a58:	0599      	lsls	r1, r3, #22
d0045a5a:	d402      	bmi.n	d0045a62 <_fclose_r+0x32>
d0045a5c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045a5e:	f000 fa14 	bl	d0045e8a <__retarget_lock_acquire_recursive>
d0045a62:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0045a66:	b98b      	cbnz	r3, d0045a8c <_fclose_r+0x5c>
d0045a68:	6e66      	ldr	r6, [r4, #100]	; 0x64
d0045a6a:	f016 0601 	ands.w	r6, r6, #1
d0045a6e:	d1e3      	bne.n	d0045a38 <_fclose_r+0x8>
d0045a70:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045a72:	f000 fa0b 	bl	d0045e8c <__retarget_lock_release_recursive>
d0045a76:	e7e0      	b.n	d0045a3a <_fclose_r+0xa>
d0045a78:	4b21      	ldr	r3, [pc, #132]	; (d0045b00 <_fclose_r+0xd0>)
d0045a7a:	429c      	cmp	r4, r3
d0045a7c:	d101      	bne.n	d0045a82 <_fclose_r+0x52>
d0045a7e:	68ac      	ldr	r4, [r5, #8]
d0045a80:	e7e6      	b.n	d0045a50 <_fclose_r+0x20>
d0045a82:	4b20      	ldr	r3, [pc, #128]	; (d0045b04 <_fclose_r+0xd4>)
d0045a84:	429c      	cmp	r4, r3
d0045a86:	bf08      	it	eq
d0045a88:	68ec      	ldreq	r4, [r5, #12]
d0045a8a:	e7e1      	b.n	d0045a50 <_fclose_r+0x20>
d0045a8c:	4621      	mov	r1, r4
d0045a8e:	4628      	mov	r0, r5
d0045a90:	f000 f842 	bl	d0045b18 <__sflush_r>
d0045a94:	6b23      	ldr	r3, [r4, #48]	; 0x30
d0045a96:	4606      	mov	r6, r0
d0045a98:	b133      	cbz	r3, d0045aa8 <_fclose_r+0x78>
d0045a9a:	6a21      	ldr	r1, [r4, #32]
d0045a9c:	4628      	mov	r0, r5
d0045a9e:	4798      	blx	r3
d0045aa0:	2800      	cmp	r0, #0
d0045aa2:	bfb8      	it	lt
d0045aa4:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
d0045aa8:	89a3      	ldrh	r3, [r4, #12]
d0045aaa:	061a      	lsls	r2, r3, #24
d0045aac:	d503      	bpl.n	d0045ab6 <_fclose_r+0x86>
d0045aae:	6921      	ldr	r1, [r4, #16]
d0045ab0:	4628      	mov	r0, r5
d0045ab2:	f000 fa37 	bl	d0045f24 <_free_r>
d0045ab6:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0045ab8:	b141      	cbz	r1, d0045acc <_fclose_r+0x9c>
d0045aba:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0045abe:	4299      	cmp	r1, r3
d0045ac0:	d002      	beq.n	d0045ac8 <_fclose_r+0x98>
d0045ac2:	4628      	mov	r0, r5
d0045ac4:	f000 fa2e 	bl	d0045f24 <_free_r>
d0045ac8:	2300      	movs	r3, #0
d0045aca:	6363      	str	r3, [r4, #52]	; 0x34
d0045acc:	6ca1      	ldr	r1, [r4, #72]	; 0x48
d0045ace:	b121      	cbz	r1, d0045ada <_fclose_r+0xaa>
d0045ad0:	4628      	mov	r0, r5
d0045ad2:	f000 fa27 	bl	d0045f24 <_free_r>
d0045ad6:	2300      	movs	r3, #0
d0045ad8:	64a3      	str	r3, [r4, #72]	; 0x48
d0045ada:	f000 f91f 	bl	d0045d1c <__sfp_lock_acquire>
d0045ade:	2300      	movs	r3, #0
d0045ae0:	81a3      	strh	r3, [r4, #12]
d0045ae2:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0045ae4:	07db      	lsls	r3, r3, #31
d0045ae6:	d402      	bmi.n	d0045aee <_fclose_r+0xbe>
d0045ae8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045aea:	f000 f9cf 	bl	d0045e8c <__retarget_lock_release_recursive>
d0045aee:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045af0:	f000 f9ca 	bl	d0045e88 <__retarget_lock_close_recursive>
d0045af4:	f000 f918 	bl	d0045d28 <__sfp_lock_release>
d0045af8:	e79f      	b.n	d0045a3a <_fclose_r+0xa>
d0045afa:	bf00      	nop
d0045afc:	d0046d40 	.word	0xd0046d40
d0045b00:	d0046d60 	.word	0xd0046d60
d0045b04:	d0046d20 	.word	0xd0046d20

d0045b08 <fclose>:
d0045b08:	4b02      	ldr	r3, [pc, #8]	; (d0045b14 <fclose+0xc>)
d0045b0a:	4601      	mov	r1, r0
d0045b0c:	6818      	ldr	r0, [r3, #0]
d0045b0e:	f7ff bf8f 	b.w	d0045a30 <_fclose_r>
d0045b12:	bf00      	nop
d0045b14:	d0047538 	.word	0xd0047538

d0045b18 <__sflush_r>:
d0045b18:	898a      	ldrh	r2, [r1, #12]
d0045b1a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0045b1e:	4605      	mov	r5, r0
d0045b20:	0710      	lsls	r0, r2, #28
d0045b22:	460c      	mov	r4, r1
d0045b24:	d458      	bmi.n	d0045bd8 <__sflush_r+0xc0>
d0045b26:	684b      	ldr	r3, [r1, #4]
d0045b28:	2b00      	cmp	r3, #0
d0045b2a:	dc05      	bgt.n	d0045b38 <__sflush_r+0x20>
d0045b2c:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0045b2e:	2b00      	cmp	r3, #0
d0045b30:	dc02      	bgt.n	d0045b38 <__sflush_r+0x20>
d0045b32:	2000      	movs	r0, #0
d0045b34:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0045b38:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0045b3a:	2e00      	cmp	r6, #0
d0045b3c:	d0f9      	beq.n	d0045b32 <__sflush_r+0x1a>
d0045b3e:	2300      	movs	r3, #0
d0045b40:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0045b44:	682f      	ldr	r7, [r5, #0]
d0045b46:	602b      	str	r3, [r5, #0]
d0045b48:	d032      	beq.n	d0045bb0 <__sflush_r+0x98>
d0045b4a:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0045b4c:	89a3      	ldrh	r3, [r4, #12]
d0045b4e:	075a      	lsls	r2, r3, #29
d0045b50:	d505      	bpl.n	d0045b5e <__sflush_r+0x46>
d0045b52:	6863      	ldr	r3, [r4, #4]
d0045b54:	1ac0      	subs	r0, r0, r3
d0045b56:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0045b58:	b10b      	cbz	r3, d0045b5e <__sflush_r+0x46>
d0045b5a:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0045b5c:	1ac0      	subs	r0, r0, r3
d0045b5e:	2300      	movs	r3, #0
d0045b60:	4602      	mov	r2, r0
d0045b62:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0045b64:	6a21      	ldr	r1, [r4, #32]
d0045b66:	4628      	mov	r0, r5
d0045b68:	47b0      	blx	r6
d0045b6a:	1c43      	adds	r3, r0, #1
d0045b6c:	89a3      	ldrh	r3, [r4, #12]
d0045b6e:	d106      	bne.n	d0045b7e <__sflush_r+0x66>
d0045b70:	6829      	ldr	r1, [r5, #0]
d0045b72:	291d      	cmp	r1, #29
d0045b74:	d82c      	bhi.n	d0045bd0 <__sflush_r+0xb8>
d0045b76:	4a2a      	ldr	r2, [pc, #168]	; (d0045c20 <__sflush_r+0x108>)
d0045b78:	40ca      	lsrs	r2, r1
d0045b7a:	07d6      	lsls	r6, r2, #31
d0045b7c:	d528      	bpl.n	d0045bd0 <__sflush_r+0xb8>
d0045b7e:	2200      	movs	r2, #0
d0045b80:	6062      	str	r2, [r4, #4]
d0045b82:	04d9      	lsls	r1, r3, #19
d0045b84:	6922      	ldr	r2, [r4, #16]
d0045b86:	6022      	str	r2, [r4, #0]
d0045b88:	d504      	bpl.n	d0045b94 <__sflush_r+0x7c>
d0045b8a:	1c42      	adds	r2, r0, #1
d0045b8c:	d101      	bne.n	d0045b92 <__sflush_r+0x7a>
d0045b8e:	682b      	ldr	r3, [r5, #0]
d0045b90:	b903      	cbnz	r3, d0045b94 <__sflush_r+0x7c>
d0045b92:	6560      	str	r0, [r4, #84]	; 0x54
d0045b94:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0045b96:	602f      	str	r7, [r5, #0]
d0045b98:	2900      	cmp	r1, #0
d0045b9a:	d0ca      	beq.n	d0045b32 <__sflush_r+0x1a>
d0045b9c:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0045ba0:	4299      	cmp	r1, r3
d0045ba2:	d002      	beq.n	d0045baa <__sflush_r+0x92>
d0045ba4:	4628      	mov	r0, r5
d0045ba6:	f000 f9bd 	bl	d0045f24 <_free_r>
d0045baa:	2000      	movs	r0, #0
d0045bac:	6360      	str	r0, [r4, #52]	; 0x34
d0045bae:	e7c1      	b.n	d0045b34 <__sflush_r+0x1c>
d0045bb0:	6a21      	ldr	r1, [r4, #32]
d0045bb2:	2301      	movs	r3, #1
d0045bb4:	4628      	mov	r0, r5
d0045bb6:	47b0      	blx	r6
d0045bb8:	1c41      	adds	r1, r0, #1
d0045bba:	d1c7      	bne.n	d0045b4c <__sflush_r+0x34>
d0045bbc:	682b      	ldr	r3, [r5, #0]
d0045bbe:	2b00      	cmp	r3, #0
d0045bc0:	d0c4      	beq.n	d0045b4c <__sflush_r+0x34>
d0045bc2:	2b1d      	cmp	r3, #29
d0045bc4:	d001      	beq.n	d0045bca <__sflush_r+0xb2>
d0045bc6:	2b16      	cmp	r3, #22
d0045bc8:	d101      	bne.n	d0045bce <__sflush_r+0xb6>
d0045bca:	602f      	str	r7, [r5, #0]
d0045bcc:	e7b1      	b.n	d0045b32 <__sflush_r+0x1a>
d0045bce:	89a3      	ldrh	r3, [r4, #12]
d0045bd0:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0045bd4:	81a3      	strh	r3, [r4, #12]
d0045bd6:	e7ad      	b.n	d0045b34 <__sflush_r+0x1c>
d0045bd8:	690f      	ldr	r7, [r1, #16]
d0045bda:	2f00      	cmp	r7, #0
d0045bdc:	d0a9      	beq.n	d0045b32 <__sflush_r+0x1a>
d0045bde:	0793      	lsls	r3, r2, #30
d0045be0:	680e      	ldr	r6, [r1, #0]
d0045be2:	bf08      	it	eq
d0045be4:	694b      	ldreq	r3, [r1, #20]
d0045be6:	600f      	str	r7, [r1, #0]
d0045be8:	bf18      	it	ne
d0045bea:	2300      	movne	r3, #0
d0045bec:	eba6 0807 	sub.w	r8, r6, r7
d0045bf0:	608b      	str	r3, [r1, #8]
d0045bf2:	f1b8 0f00 	cmp.w	r8, #0
d0045bf6:	dd9c      	ble.n	d0045b32 <__sflush_r+0x1a>
d0045bf8:	6a21      	ldr	r1, [r4, #32]
d0045bfa:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0045bfc:	4643      	mov	r3, r8
d0045bfe:	463a      	mov	r2, r7
d0045c00:	4628      	mov	r0, r5
d0045c02:	47b0      	blx	r6
d0045c04:	2800      	cmp	r0, #0
d0045c06:	dc06      	bgt.n	d0045c16 <__sflush_r+0xfe>
d0045c08:	89a3      	ldrh	r3, [r4, #12]
d0045c0a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0045c0e:	81a3      	strh	r3, [r4, #12]
d0045c10:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0045c14:	e78e      	b.n	d0045b34 <__sflush_r+0x1c>
d0045c16:	4407      	add	r7, r0
d0045c18:	eba8 0800 	sub.w	r8, r8, r0
d0045c1c:	e7e9      	b.n	d0045bf2 <__sflush_r+0xda>
d0045c1e:	bf00      	nop
d0045c20:	20400001 	.word	0x20400001

d0045c24 <_fflush_r>:
d0045c24:	b538      	push	{r3, r4, r5, lr}
d0045c26:	690b      	ldr	r3, [r1, #16]
d0045c28:	4605      	mov	r5, r0
d0045c2a:	460c      	mov	r4, r1
d0045c2c:	b913      	cbnz	r3, d0045c34 <_fflush_r+0x10>
d0045c2e:	2500      	movs	r5, #0
d0045c30:	4628      	mov	r0, r5
d0045c32:	bd38      	pop	{r3, r4, r5, pc}
d0045c34:	b118      	cbz	r0, d0045c3e <_fflush_r+0x1a>
d0045c36:	6983      	ldr	r3, [r0, #24]
d0045c38:	b90b      	cbnz	r3, d0045c3e <_fflush_r+0x1a>
d0045c3a:	f000 f887 	bl	d0045d4c <__sinit>
d0045c3e:	4b14      	ldr	r3, [pc, #80]	; (d0045c90 <_fflush_r+0x6c>)
d0045c40:	429c      	cmp	r4, r3
d0045c42:	d11b      	bne.n	d0045c7c <_fflush_r+0x58>
d0045c44:	686c      	ldr	r4, [r5, #4]
d0045c46:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0045c4a:	2b00      	cmp	r3, #0
d0045c4c:	d0ef      	beq.n	d0045c2e <_fflush_r+0xa>
d0045c4e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0045c50:	07d0      	lsls	r0, r2, #31
d0045c52:	d404      	bmi.n	d0045c5e <_fflush_r+0x3a>
d0045c54:	0599      	lsls	r1, r3, #22
d0045c56:	d402      	bmi.n	d0045c5e <_fflush_r+0x3a>
d0045c58:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045c5a:	f000 f916 	bl	d0045e8a <__retarget_lock_acquire_recursive>
d0045c5e:	4628      	mov	r0, r5
d0045c60:	4621      	mov	r1, r4
d0045c62:	f7ff ff59 	bl	d0045b18 <__sflush_r>
d0045c66:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0045c68:	07da      	lsls	r2, r3, #31
d0045c6a:	4605      	mov	r5, r0
d0045c6c:	d4e0      	bmi.n	d0045c30 <_fflush_r+0xc>
d0045c6e:	89a3      	ldrh	r3, [r4, #12]
d0045c70:	059b      	lsls	r3, r3, #22
d0045c72:	d4dd      	bmi.n	d0045c30 <_fflush_r+0xc>
d0045c74:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0045c76:	f000 f909 	bl	d0045e8c <__retarget_lock_release_recursive>
d0045c7a:	e7d9      	b.n	d0045c30 <_fflush_r+0xc>
d0045c7c:	4b05      	ldr	r3, [pc, #20]	; (d0045c94 <_fflush_r+0x70>)
d0045c7e:	429c      	cmp	r4, r3
d0045c80:	d101      	bne.n	d0045c86 <_fflush_r+0x62>
d0045c82:	68ac      	ldr	r4, [r5, #8]
d0045c84:	e7df      	b.n	d0045c46 <_fflush_r+0x22>
d0045c86:	4b04      	ldr	r3, [pc, #16]	; (d0045c98 <_fflush_r+0x74>)
d0045c88:	429c      	cmp	r4, r3
d0045c8a:	bf08      	it	eq
d0045c8c:	68ec      	ldreq	r4, [r5, #12]
d0045c8e:	e7da      	b.n	d0045c46 <_fflush_r+0x22>
d0045c90:	d0046d40 	.word	0xd0046d40
d0045c94:	d0046d60 	.word	0xd0046d60
d0045c98:	d0046d20 	.word	0xd0046d20

d0045c9c <std>:
d0045c9c:	2300      	movs	r3, #0
d0045c9e:	b510      	push	{r4, lr}
d0045ca0:	4604      	mov	r4, r0
d0045ca2:	e9c0 3300 	strd	r3, r3, [r0]
d0045ca6:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0045caa:	6083      	str	r3, [r0, #8]
d0045cac:	8181      	strh	r1, [r0, #12]
d0045cae:	6643      	str	r3, [r0, #100]	; 0x64
d0045cb0:	81c2      	strh	r2, [r0, #14]
d0045cb2:	6183      	str	r3, [r0, #24]
d0045cb4:	4619      	mov	r1, r3
d0045cb6:	2208      	movs	r2, #8
d0045cb8:	305c      	adds	r0, #92	; 0x5c
d0045cba:	f000 f92b 	bl	d0045f14 <memset>
d0045cbe:	4b05      	ldr	r3, [pc, #20]	; (d0045cd4 <std+0x38>)
d0045cc0:	6263      	str	r3, [r4, #36]	; 0x24
d0045cc2:	4b05      	ldr	r3, [pc, #20]	; (d0045cd8 <std+0x3c>)
d0045cc4:	62a3      	str	r3, [r4, #40]	; 0x28
d0045cc6:	4b05      	ldr	r3, [pc, #20]	; (d0045cdc <std+0x40>)
d0045cc8:	62e3      	str	r3, [r4, #44]	; 0x2c
d0045cca:	4b05      	ldr	r3, [pc, #20]	; (d0045ce0 <std+0x44>)
d0045ccc:	6224      	str	r4, [r4, #32]
d0045cce:	6323      	str	r3, [r4, #48]	; 0x30
d0045cd0:	bd10      	pop	{r4, pc}
d0045cd2:	bf00      	nop
d0045cd4:	d0046215 	.word	0xd0046215
d0045cd8:	d0046237 	.word	0xd0046237
d0045cdc:	d004626f 	.word	0xd004626f
d0045ce0:	d0046293 	.word	0xd0046293

d0045ce4 <_cleanup_r>:
d0045ce4:	4901      	ldr	r1, [pc, #4]	; (d0045cec <_cleanup_r+0x8>)
d0045ce6:	f000 b8af 	b.w	d0045e48 <_fwalk_reent>
d0045cea:	bf00      	nop
d0045cec:	d0045c25 	.word	0xd0045c25

d0045cf0 <__sfmoreglue>:
d0045cf0:	b570      	push	{r4, r5, r6, lr}
d0045cf2:	1e4a      	subs	r2, r1, #1
d0045cf4:	2568      	movs	r5, #104	; 0x68
d0045cf6:	4355      	muls	r5, r2
d0045cf8:	460e      	mov	r6, r1
d0045cfa:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0045cfe:	f000 f961 	bl	d0045fc4 <_malloc_r>
d0045d02:	4604      	mov	r4, r0
d0045d04:	b140      	cbz	r0, d0045d18 <__sfmoreglue+0x28>
d0045d06:	2100      	movs	r1, #0
d0045d08:	e9c0 1600 	strd	r1, r6, [r0]
d0045d0c:	300c      	adds	r0, #12
d0045d0e:	60a0      	str	r0, [r4, #8]
d0045d10:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0045d14:	f000 f8fe 	bl	d0045f14 <memset>
d0045d18:	4620      	mov	r0, r4
d0045d1a:	bd70      	pop	{r4, r5, r6, pc}

d0045d1c <__sfp_lock_acquire>:
d0045d1c:	4801      	ldr	r0, [pc, #4]	; (d0045d24 <__sfp_lock_acquire+0x8>)
d0045d1e:	f000 b8b4 	b.w	d0045e8a <__retarget_lock_acquire_recursive>
d0045d22:	bf00      	nop
d0045d24:	d0132cc8 	.word	0xd0132cc8

d0045d28 <__sfp_lock_release>:
d0045d28:	4801      	ldr	r0, [pc, #4]	; (d0045d30 <__sfp_lock_release+0x8>)
d0045d2a:	f000 b8af 	b.w	d0045e8c <__retarget_lock_release_recursive>
d0045d2e:	bf00      	nop
d0045d30:	d0132cc8 	.word	0xd0132cc8

d0045d34 <__sinit_lock_acquire>:
d0045d34:	4801      	ldr	r0, [pc, #4]	; (d0045d3c <__sinit_lock_acquire+0x8>)
d0045d36:	f000 b8a8 	b.w	d0045e8a <__retarget_lock_acquire_recursive>
d0045d3a:	bf00      	nop
d0045d3c:	d0132cc3 	.word	0xd0132cc3

d0045d40 <__sinit_lock_release>:
d0045d40:	4801      	ldr	r0, [pc, #4]	; (d0045d48 <__sinit_lock_release+0x8>)
d0045d42:	f000 b8a3 	b.w	d0045e8c <__retarget_lock_release_recursive>
d0045d46:	bf00      	nop
d0045d48:	d0132cc3 	.word	0xd0132cc3

d0045d4c <__sinit>:
d0045d4c:	b510      	push	{r4, lr}
d0045d4e:	4604      	mov	r4, r0
d0045d50:	f7ff fff0 	bl	d0045d34 <__sinit_lock_acquire>
d0045d54:	69a3      	ldr	r3, [r4, #24]
d0045d56:	b11b      	cbz	r3, d0045d60 <__sinit+0x14>
d0045d58:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0045d5c:	f7ff bff0 	b.w	d0045d40 <__sinit_lock_release>
d0045d60:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0045d64:	6523      	str	r3, [r4, #80]	; 0x50
d0045d66:	4b13      	ldr	r3, [pc, #76]	; (d0045db4 <__sinit+0x68>)
d0045d68:	4a13      	ldr	r2, [pc, #76]	; (d0045db8 <__sinit+0x6c>)
d0045d6a:	681b      	ldr	r3, [r3, #0]
d0045d6c:	62a2      	str	r2, [r4, #40]	; 0x28
d0045d6e:	42a3      	cmp	r3, r4
d0045d70:	bf04      	itt	eq
d0045d72:	2301      	moveq	r3, #1
d0045d74:	61a3      	streq	r3, [r4, #24]
d0045d76:	4620      	mov	r0, r4
d0045d78:	f000 f820 	bl	d0045dbc <__sfp>
d0045d7c:	6060      	str	r0, [r4, #4]
d0045d7e:	4620      	mov	r0, r4
d0045d80:	f000 f81c 	bl	d0045dbc <__sfp>
d0045d84:	60a0      	str	r0, [r4, #8]
d0045d86:	4620      	mov	r0, r4
d0045d88:	f000 f818 	bl	d0045dbc <__sfp>
d0045d8c:	2200      	movs	r2, #0
d0045d8e:	60e0      	str	r0, [r4, #12]
d0045d90:	2104      	movs	r1, #4
d0045d92:	6860      	ldr	r0, [r4, #4]
d0045d94:	f7ff ff82 	bl	d0045c9c <std>
d0045d98:	68a0      	ldr	r0, [r4, #8]
d0045d9a:	2201      	movs	r2, #1
d0045d9c:	2109      	movs	r1, #9
d0045d9e:	f7ff ff7d 	bl	d0045c9c <std>
d0045da2:	68e0      	ldr	r0, [r4, #12]
d0045da4:	2202      	movs	r2, #2
d0045da6:	2112      	movs	r1, #18
d0045da8:	f7ff ff78 	bl	d0045c9c <std>
d0045dac:	2301      	movs	r3, #1
d0045dae:	61a3      	str	r3, [r4, #24]
d0045db0:	e7d2      	b.n	d0045d58 <__sinit+0xc>
d0045db2:	bf00      	nop
d0045db4:	d0046d80 	.word	0xd0046d80
d0045db8:	d0045ce5 	.word	0xd0045ce5

d0045dbc <__sfp>:
d0045dbc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0045dbe:	4607      	mov	r7, r0
d0045dc0:	f7ff ffac 	bl	d0045d1c <__sfp_lock_acquire>
d0045dc4:	4b1e      	ldr	r3, [pc, #120]	; (d0045e40 <__sfp+0x84>)
d0045dc6:	681e      	ldr	r6, [r3, #0]
d0045dc8:	69b3      	ldr	r3, [r6, #24]
d0045dca:	b913      	cbnz	r3, d0045dd2 <__sfp+0x16>
d0045dcc:	4630      	mov	r0, r6
d0045dce:	f7ff ffbd 	bl	d0045d4c <__sinit>
d0045dd2:	3648      	adds	r6, #72	; 0x48
d0045dd4:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0045dd8:	3b01      	subs	r3, #1
d0045dda:	d503      	bpl.n	d0045de4 <__sfp+0x28>
d0045ddc:	6833      	ldr	r3, [r6, #0]
d0045dde:	b30b      	cbz	r3, d0045e24 <__sfp+0x68>
d0045de0:	6836      	ldr	r6, [r6, #0]
d0045de2:	e7f7      	b.n	d0045dd4 <__sfp+0x18>
d0045de4:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0045de8:	b9d5      	cbnz	r5, d0045e20 <__sfp+0x64>
d0045dea:	4b16      	ldr	r3, [pc, #88]	; (d0045e44 <__sfp+0x88>)
d0045dec:	60e3      	str	r3, [r4, #12]
d0045dee:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0045df2:	6665      	str	r5, [r4, #100]	; 0x64
d0045df4:	f000 f847 	bl	d0045e86 <__retarget_lock_init_recursive>
d0045df8:	f7ff ff96 	bl	d0045d28 <__sfp_lock_release>
d0045dfc:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0045e00:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0045e04:	6025      	str	r5, [r4, #0]
d0045e06:	61a5      	str	r5, [r4, #24]
d0045e08:	2208      	movs	r2, #8
d0045e0a:	4629      	mov	r1, r5
d0045e0c:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0045e10:	f000 f880 	bl	d0045f14 <memset>
d0045e14:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0045e18:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0045e1c:	4620      	mov	r0, r4
d0045e1e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0045e20:	3468      	adds	r4, #104	; 0x68
d0045e22:	e7d9      	b.n	d0045dd8 <__sfp+0x1c>
d0045e24:	2104      	movs	r1, #4
d0045e26:	4638      	mov	r0, r7
d0045e28:	f7ff ff62 	bl	d0045cf0 <__sfmoreglue>
d0045e2c:	4604      	mov	r4, r0
d0045e2e:	6030      	str	r0, [r6, #0]
d0045e30:	2800      	cmp	r0, #0
d0045e32:	d1d5      	bne.n	d0045de0 <__sfp+0x24>
d0045e34:	f7ff ff78 	bl	d0045d28 <__sfp_lock_release>
d0045e38:	230c      	movs	r3, #12
d0045e3a:	603b      	str	r3, [r7, #0]
d0045e3c:	e7ee      	b.n	d0045e1c <__sfp+0x60>
d0045e3e:	bf00      	nop
d0045e40:	d0046d80 	.word	0xd0046d80
d0045e44:	ffff0001 	.word	0xffff0001

d0045e48 <_fwalk_reent>:
d0045e48:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0045e4c:	4606      	mov	r6, r0
d0045e4e:	4688      	mov	r8, r1
d0045e50:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0045e54:	2700      	movs	r7, #0
d0045e56:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0045e5a:	f1b9 0901 	subs.w	r9, r9, #1
d0045e5e:	d505      	bpl.n	d0045e6c <_fwalk_reent+0x24>
d0045e60:	6824      	ldr	r4, [r4, #0]
d0045e62:	2c00      	cmp	r4, #0
d0045e64:	d1f7      	bne.n	d0045e56 <_fwalk_reent+0xe>
d0045e66:	4638      	mov	r0, r7
d0045e68:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0045e6c:	89ab      	ldrh	r3, [r5, #12]
d0045e6e:	2b01      	cmp	r3, #1
d0045e70:	d907      	bls.n	d0045e82 <_fwalk_reent+0x3a>
d0045e72:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0045e76:	3301      	adds	r3, #1
d0045e78:	d003      	beq.n	d0045e82 <_fwalk_reent+0x3a>
d0045e7a:	4629      	mov	r1, r5
d0045e7c:	4630      	mov	r0, r6
d0045e7e:	47c0      	blx	r8
d0045e80:	4307      	orrs	r7, r0
d0045e82:	3568      	adds	r5, #104	; 0x68
d0045e84:	e7e9      	b.n	d0045e5a <_fwalk_reent+0x12>

d0045e86 <__retarget_lock_init_recursive>:
d0045e86:	4770      	bx	lr

d0045e88 <__retarget_lock_close_recursive>:
d0045e88:	4770      	bx	lr

d0045e8a <__retarget_lock_acquire_recursive>:
d0045e8a:	4770      	bx	lr

d0045e8c <__retarget_lock_release_recursive>:
d0045e8c:	4770      	bx	lr

d0045e8e <__swhatbuf_r>:
d0045e8e:	b570      	push	{r4, r5, r6, lr}
d0045e90:	460e      	mov	r6, r1
d0045e92:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0045e96:	2900      	cmp	r1, #0
d0045e98:	b096      	sub	sp, #88	; 0x58
d0045e9a:	4614      	mov	r4, r2
d0045e9c:	461d      	mov	r5, r3
d0045e9e:	da07      	bge.n	d0045eb0 <__swhatbuf_r+0x22>
d0045ea0:	2300      	movs	r3, #0
d0045ea2:	602b      	str	r3, [r5, #0]
d0045ea4:	89b3      	ldrh	r3, [r6, #12]
d0045ea6:	061a      	lsls	r2, r3, #24
d0045ea8:	d410      	bmi.n	d0045ecc <__swhatbuf_r+0x3e>
d0045eaa:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0045eae:	e00e      	b.n	d0045ece <__swhatbuf_r+0x40>
d0045eb0:	466a      	mov	r2, sp
d0045eb2:	f000 fa03 	bl	d00462bc <_fstat_r>
d0045eb6:	2800      	cmp	r0, #0
d0045eb8:	dbf2      	blt.n	d0045ea0 <__swhatbuf_r+0x12>
d0045eba:	9a01      	ldr	r2, [sp, #4]
d0045ebc:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0045ec0:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0045ec4:	425a      	negs	r2, r3
d0045ec6:	415a      	adcs	r2, r3
d0045ec8:	602a      	str	r2, [r5, #0]
d0045eca:	e7ee      	b.n	d0045eaa <__swhatbuf_r+0x1c>
d0045ecc:	2340      	movs	r3, #64	; 0x40
d0045ece:	2000      	movs	r0, #0
d0045ed0:	6023      	str	r3, [r4, #0]
d0045ed2:	b016      	add	sp, #88	; 0x58
d0045ed4:	bd70      	pop	{r4, r5, r6, pc}
	...

d0045ed8 <malloc>:
d0045ed8:	4b02      	ldr	r3, [pc, #8]	; (d0045ee4 <malloc+0xc>)
d0045eda:	4601      	mov	r1, r0
d0045edc:	6818      	ldr	r0, [r3, #0]
d0045ede:	f000 b871 	b.w	d0045fc4 <_malloc_r>
d0045ee2:	bf00      	nop
d0045ee4:	d0047538 	.word	0xd0047538

d0045ee8 <free>:
d0045ee8:	4b02      	ldr	r3, [pc, #8]	; (d0045ef4 <free+0xc>)
d0045eea:	4601      	mov	r1, r0
d0045eec:	6818      	ldr	r0, [r3, #0]
d0045eee:	f000 b819 	b.w	d0045f24 <_free_r>
d0045ef2:	bf00      	nop
d0045ef4:	d0047538 	.word	0xd0047538

d0045ef8 <memcpy>:
d0045ef8:	440a      	add	r2, r1
d0045efa:	4291      	cmp	r1, r2
d0045efc:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0045f00:	d100      	bne.n	d0045f04 <memcpy+0xc>
d0045f02:	4770      	bx	lr
d0045f04:	b510      	push	{r4, lr}
d0045f06:	f811 4b01 	ldrb.w	r4, [r1], #1
d0045f0a:	f803 4f01 	strb.w	r4, [r3, #1]!
d0045f0e:	4291      	cmp	r1, r2
d0045f10:	d1f9      	bne.n	d0045f06 <memcpy+0xe>
d0045f12:	bd10      	pop	{r4, pc}

d0045f14 <memset>:
d0045f14:	4402      	add	r2, r0
d0045f16:	4603      	mov	r3, r0
d0045f18:	4293      	cmp	r3, r2
d0045f1a:	d100      	bne.n	d0045f1e <memset+0xa>
d0045f1c:	4770      	bx	lr
d0045f1e:	f803 1b01 	strb.w	r1, [r3], #1
d0045f22:	e7f9      	b.n	d0045f18 <memset+0x4>

d0045f24 <_free_r>:
d0045f24:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0045f26:	2900      	cmp	r1, #0
d0045f28:	d048      	beq.n	d0045fbc <_free_r+0x98>
d0045f2a:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0045f2e:	9001      	str	r0, [sp, #4]
d0045f30:	2b00      	cmp	r3, #0
d0045f32:	f1a1 0404 	sub.w	r4, r1, #4
d0045f36:	bfb8      	it	lt
d0045f38:	18e4      	addlt	r4, r4, r3
d0045f3a:	f000 f9e3 	bl	d0046304 <__malloc_lock>
d0045f3e:	4a20      	ldr	r2, [pc, #128]	; (d0045fc0 <_free_r+0x9c>)
d0045f40:	9801      	ldr	r0, [sp, #4]
d0045f42:	6813      	ldr	r3, [r2, #0]
d0045f44:	4615      	mov	r5, r2
d0045f46:	b933      	cbnz	r3, d0045f56 <_free_r+0x32>
d0045f48:	6063      	str	r3, [r4, #4]
d0045f4a:	6014      	str	r4, [r2, #0]
d0045f4c:	b003      	add	sp, #12
d0045f4e:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0045f52:	f000 b9dd 	b.w	d0046310 <__malloc_unlock>
d0045f56:	42a3      	cmp	r3, r4
d0045f58:	d90b      	bls.n	d0045f72 <_free_r+0x4e>
d0045f5a:	6821      	ldr	r1, [r4, #0]
d0045f5c:	1862      	adds	r2, r4, r1
d0045f5e:	4293      	cmp	r3, r2
d0045f60:	bf04      	itt	eq
d0045f62:	681a      	ldreq	r2, [r3, #0]
d0045f64:	685b      	ldreq	r3, [r3, #4]
d0045f66:	6063      	str	r3, [r4, #4]
d0045f68:	bf04      	itt	eq
d0045f6a:	1852      	addeq	r2, r2, r1
d0045f6c:	6022      	streq	r2, [r4, #0]
d0045f6e:	602c      	str	r4, [r5, #0]
d0045f70:	e7ec      	b.n	d0045f4c <_free_r+0x28>
d0045f72:	461a      	mov	r2, r3
d0045f74:	685b      	ldr	r3, [r3, #4]
d0045f76:	b10b      	cbz	r3, d0045f7c <_free_r+0x58>
d0045f78:	42a3      	cmp	r3, r4
d0045f7a:	d9fa      	bls.n	d0045f72 <_free_r+0x4e>
d0045f7c:	6811      	ldr	r1, [r2, #0]
d0045f7e:	1855      	adds	r5, r2, r1
d0045f80:	42a5      	cmp	r5, r4
d0045f82:	d10b      	bne.n	d0045f9c <_free_r+0x78>
d0045f84:	6824      	ldr	r4, [r4, #0]
d0045f86:	4421      	add	r1, r4
d0045f88:	1854      	adds	r4, r2, r1
d0045f8a:	42a3      	cmp	r3, r4
d0045f8c:	6011      	str	r1, [r2, #0]
d0045f8e:	d1dd      	bne.n	d0045f4c <_free_r+0x28>
d0045f90:	681c      	ldr	r4, [r3, #0]
d0045f92:	685b      	ldr	r3, [r3, #4]
d0045f94:	6053      	str	r3, [r2, #4]
d0045f96:	4421      	add	r1, r4
d0045f98:	6011      	str	r1, [r2, #0]
d0045f9a:	e7d7      	b.n	d0045f4c <_free_r+0x28>
d0045f9c:	d902      	bls.n	d0045fa4 <_free_r+0x80>
d0045f9e:	230c      	movs	r3, #12
d0045fa0:	6003      	str	r3, [r0, #0]
d0045fa2:	e7d3      	b.n	d0045f4c <_free_r+0x28>
d0045fa4:	6825      	ldr	r5, [r4, #0]
d0045fa6:	1961      	adds	r1, r4, r5
d0045fa8:	428b      	cmp	r3, r1
d0045faa:	bf04      	itt	eq
d0045fac:	6819      	ldreq	r1, [r3, #0]
d0045fae:	685b      	ldreq	r3, [r3, #4]
d0045fb0:	6063      	str	r3, [r4, #4]
d0045fb2:	bf04      	itt	eq
d0045fb4:	1949      	addeq	r1, r1, r5
d0045fb6:	6021      	streq	r1, [r4, #0]
d0045fb8:	6054      	str	r4, [r2, #4]
d0045fba:	e7c7      	b.n	d0045f4c <_free_r+0x28>
d0045fbc:	b003      	add	sp, #12
d0045fbe:	bd30      	pop	{r4, r5, pc}
d0045fc0:	d00e1c20 	.word	0xd00e1c20

d0045fc4 <_malloc_r>:
d0045fc4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0045fc6:	1ccd      	adds	r5, r1, #3
d0045fc8:	f025 0503 	bic.w	r5, r5, #3
d0045fcc:	3508      	adds	r5, #8
d0045fce:	2d0c      	cmp	r5, #12
d0045fd0:	bf38      	it	cc
d0045fd2:	250c      	movcc	r5, #12
d0045fd4:	2d00      	cmp	r5, #0
d0045fd6:	4606      	mov	r6, r0
d0045fd8:	db01      	blt.n	d0045fde <_malloc_r+0x1a>
d0045fda:	42a9      	cmp	r1, r5
d0045fdc:	d903      	bls.n	d0045fe6 <_malloc_r+0x22>
d0045fde:	230c      	movs	r3, #12
d0045fe0:	6033      	str	r3, [r6, #0]
d0045fe2:	2000      	movs	r0, #0
d0045fe4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0045fe6:	f000 f98d 	bl	d0046304 <__malloc_lock>
d0045fea:	4921      	ldr	r1, [pc, #132]	; (d0046070 <_malloc_r+0xac>)
d0045fec:	680a      	ldr	r2, [r1, #0]
d0045fee:	4614      	mov	r4, r2
d0045ff0:	b99c      	cbnz	r4, d004601a <_malloc_r+0x56>
d0045ff2:	4f20      	ldr	r7, [pc, #128]	; (d0046074 <_malloc_r+0xb0>)
d0045ff4:	683b      	ldr	r3, [r7, #0]
d0045ff6:	b923      	cbnz	r3, d0046002 <_malloc_r+0x3e>
d0045ff8:	4621      	mov	r1, r4
d0045ffa:	4630      	mov	r0, r6
d0045ffc:	f7fa f870 	bl	d00400e0 <_sbrk_r>
d0046000:	6038      	str	r0, [r7, #0]
d0046002:	4629      	mov	r1, r5
d0046004:	4630      	mov	r0, r6
d0046006:	f7fa f86b 	bl	d00400e0 <_sbrk_r>
d004600a:	1c43      	adds	r3, r0, #1
d004600c:	d123      	bne.n	d0046056 <_malloc_r+0x92>
d004600e:	230c      	movs	r3, #12
d0046010:	6033      	str	r3, [r6, #0]
d0046012:	4630      	mov	r0, r6
d0046014:	f000 f97c 	bl	d0046310 <__malloc_unlock>
d0046018:	e7e3      	b.n	d0045fe2 <_malloc_r+0x1e>
d004601a:	6823      	ldr	r3, [r4, #0]
d004601c:	1b5b      	subs	r3, r3, r5
d004601e:	d417      	bmi.n	d0046050 <_malloc_r+0x8c>
d0046020:	2b0b      	cmp	r3, #11
d0046022:	d903      	bls.n	d004602c <_malloc_r+0x68>
d0046024:	6023      	str	r3, [r4, #0]
d0046026:	441c      	add	r4, r3
d0046028:	6025      	str	r5, [r4, #0]
d004602a:	e004      	b.n	d0046036 <_malloc_r+0x72>
d004602c:	6863      	ldr	r3, [r4, #4]
d004602e:	42a2      	cmp	r2, r4
d0046030:	bf0c      	ite	eq
d0046032:	600b      	streq	r3, [r1, #0]
d0046034:	6053      	strne	r3, [r2, #4]
d0046036:	4630      	mov	r0, r6
d0046038:	f000 f96a 	bl	d0046310 <__malloc_unlock>
d004603c:	f104 000b 	add.w	r0, r4, #11
d0046040:	1d23      	adds	r3, r4, #4
d0046042:	f020 0007 	bic.w	r0, r0, #7
d0046046:	1ac2      	subs	r2, r0, r3
d0046048:	d0cc      	beq.n	d0045fe4 <_malloc_r+0x20>
d004604a:	1a1b      	subs	r3, r3, r0
d004604c:	50a3      	str	r3, [r4, r2]
d004604e:	e7c9      	b.n	d0045fe4 <_malloc_r+0x20>
d0046050:	4622      	mov	r2, r4
d0046052:	6864      	ldr	r4, [r4, #4]
d0046054:	e7cc      	b.n	d0045ff0 <_malloc_r+0x2c>
d0046056:	1cc4      	adds	r4, r0, #3
d0046058:	f024 0403 	bic.w	r4, r4, #3
d004605c:	42a0      	cmp	r0, r4
d004605e:	d0e3      	beq.n	d0046028 <_malloc_r+0x64>
d0046060:	1a21      	subs	r1, r4, r0
d0046062:	4630      	mov	r0, r6
d0046064:	f7fa f83c 	bl	d00400e0 <_sbrk_r>
d0046068:	3001      	adds	r0, #1
d004606a:	d1dd      	bne.n	d0046028 <_malloc_r+0x64>
d004606c:	e7cf      	b.n	d004600e <_malloc_r+0x4a>
d004606e:	bf00      	nop
d0046070:	d00e1c20 	.word	0xd00e1c20
d0046074:	d00e1c24 	.word	0xd00e1c24

d0046078 <setbuf>:
d0046078:	2900      	cmp	r1, #0
d004607a:	f44f 6380 	mov.w	r3, #1024	; 0x400
d004607e:	bf0c      	ite	eq
d0046080:	2202      	moveq	r2, #2
d0046082:	2200      	movne	r2, #0
d0046084:	f000 b800 	b.w	d0046088 <setvbuf>

d0046088 <setvbuf>:
d0046088:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d004608c:	461d      	mov	r5, r3
d004608e:	4b5d      	ldr	r3, [pc, #372]	; (d0046204 <setvbuf+0x17c>)
d0046090:	681f      	ldr	r7, [r3, #0]
d0046092:	4604      	mov	r4, r0
d0046094:	460e      	mov	r6, r1
d0046096:	4690      	mov	r8, r2
d0046098:	b127      	cbz	r7, d00460a4 <setvbuf+0x1c>
d004609a:	69bb      	ldr	r3, [r7, #24]
d004609c:	b913      	cbnz	r3, d00460a4 <setvbuf+0x1c>
d004609e:	4638      	mov	r0, r7
d00460a0:	f7ff fe54 	bl	d0045d4c <__sinit>
d00460a4:	4b58      	ldr	r3, [pc, #352]	; (d0046208 <setvbuf+0x180>)
d00460a6:	429c      	cmp	r4, r3
d00460a8:	d167      	bne.n	d004617a <setvbuf+0xf2>
d00460aa:	687c      	ldr	r4, [r7, #4]
d00460ac:	f1b8 0f02 	cmp.w	r8, #2
d00460b0:	d006      	beq.n	d00460c0 <setvbuf+0x38>
d00460b2:	f1b8 0f01 	cmp.w	r8, #1
d00460b6:	f200 809f 	bhi.w	d00461f8 <setvbuf+0x170>
d00460ba:	2d00      	cmp	r5, #0
d00460bc:	f2c0 809c 	blt.w	d00461f8 <setvbuf+0x170>
d00460c0:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00460c2:	07db      	lsls	r3, r3, #31
d00460c4:	d405      	bmi.n	d00460d2 <setvbuf+0x4a>
d00460c6:	89a3      	ldrh	r3, [r4, #12]
d00460c8:	0598      	lsls	r0, r3, #22
d00460ca:	d402      	bmi.n	d00460d2 <setvbuf+0x4a>
d00460cc:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00460ce:	f7ff fedc 	bl	d0045e8a <__retarget_lock_acquire_recursive>
d00460d2:	4621      	mov	r1, r4
d00460d4:	4638      	mov	r0, r7
d00460d6:	f7ff fda5 	bl	d0045c24 <_fflush_r>
d00460da:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00460dc:	b141      	cbz	r1, d00460f0 <setvbuf+0x68>
d00460de:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00460e2:	4299      	cmp	r1, r3
d00460e4:	d002      	beq.n	d00460ec <setvbuf+0x64>
d00460e6:	4638      	mov	r0, r7
d00460e8:	f7ff ff1c 	bl	d0045f24 <_free_r>
d00460ec:	2300      	movs	r3, #0
d00460ee:	6363      	str	r3, [r4, #52]	; 0x34
d00460f0:	2300      	movs	r3, #0
d00460f2:	61a3      	str	r3, [r4, #24]
d00460f4:	6063      	str	r3, [r4, #4]
d00460f6:	89a3      	ldrh	r3, [r4, #12]
d00460f8:	0619      	lsls	r1, r3, #24
d00460fa:	d503      	bpl.n	d0046104 <setvbuf+0x7c>
d00460fc:	6921      	ldr	r1, [r4, #16]
d00460fe:	4638      	mov	r0, r7
d0046100:	f7ff ff10 	bl	d0045f24 <_free_r>
d0046104:	89a3      	ldrh	r3, [r4, #12]
d0046106:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d004610a:	f023 0303 	bic.w	r3, r3, #3
d004610e:	f1b8 0f02 	cmp.w	r8, #2
d0046112:	81a3      	strh	r3, [r4, #12]
d0046114:	d06c      	beq.n	d00461f0 <setvbuf+0x168>
d0046116:	ab01      	add	r3, sp, #4
d0046118:	466a      	mov	r2, sp
d004611a:	4621      	mov	r1, r4
d004611c:	4638      	mov	r0, r7
d004611e:	f7ff feb6 	bl	d0045e8e <__swhatbuf_r>
d0046122:	89a3      	ldrh	r3, [r4, #12]
d0046124:	4318      	orrs	r0, r3
d0046126:	81a0      	strh	r0, [r4, #12]
d0046128:	2d00      	cmp	r5, #0
d004612a:	d130      	bne.n	d004618e <setvbuf+0x106>
d004612c:	9d00      	ldr	r5, [sp, #0]
d004612e:	4628      	mov	r0, r5
d0046130:	f7ff fed2 	bl	d0045ed8 <malloc>
d0046134:	4606      	mov	r6, r0
d0046136:	2800      	cmp	r0, #0
d0046138:	d155      	bne.n	d00461e6 <setvbuf+0x15e>
d004613a:	f8dd 9000 	ldr.w	r9, [sp]
d004613e:	45a9      	cmp	r9, r5
d0046140:	d14a      	bne.n	d00461d8 <setvbuf+0x150>
d0046142:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0046146:	2200      	movs	r2, #0
d0046148:	60a2      	str	r2, [r4, #8]
d004614a:	f104 0247 	add.w	r2, r4, #71	; 0x47
d004614e:	6022      	str	r2, [r4, #0]
d0046150:	6122      	str	r2, [r4, #16]
d0046152:	2201      	movs	r2, #1
d0046154:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0046158:	6162      	str	r2, [r4, #20]
d004615a:	6e62      	ldr	r2, [r4, #100]	; 0x64
d004615c:	f043 0302 	orr.w	r3, r3, #2
d0046160:	07d2      	lsls	r2, r2, #31
d0046162:	81a3      	strh	r3, [r4, #12]
d0046164:	d405      	bmi.n	d0046172 <setvbuf+0xea>
d0046166:	f413 7f00 	tst.w	r3, #512	; 0x200
d004616a:	d102      	bne.n	d0046172 <setvbuf+0xea>
d004616c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d004616e:	f7ff fe8d 	bl	d0045e8c <__retarget_lock_release_recursive>
d0046172:	4628      	mov	r0, r5
d0046174:	b003      	add	sp, #12
d0046176:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d004617a:	4b24      	ldr	r3, [pc, #144]	; (d004620c <setvbuf+0x184>)
d004617c:	429c      	cmp	r4, r3
d004617e:	d101      	bne.n	d0046184 <setvbuf+0xfc>
d0046180:	68bc      	ldr	r4, [r7, #8]
d0046182:	e793      	b.n	d00460ac <setvbuf+0x24>
d0046184:	4b22      	ldr	r3, [pc, #136]	; (d0046210 <setvbuf+0x188>)
d0046186:	429c      	cmp	r4, r3
d0046188:	bf08      	it	eq
d004618a:	68fc      	ldreq	r4, [r7, #12]
d004618c:	e78e      	b.n	d00460ac <setvbuf+0x24>
d004618e:	2e00      	cmp	r6, #0
d0046190:	d0cd      	beq.n	d004612e <setvbuf+0xa6>
d0046192:	69bb      	ldr	r3, [r7, #24]
d0046194:	b913      	cbnz	r3, d004619c <setvbuf+0x114>
d0046196:	4638      	mov	r0, r7
d0046198:	f7ff fdd8 	bl	d0045d4c <__sinit>
d004619c:	f1b8 0f01 	cmp.w	r8, #1
d00461a0:	bf08      	it	eq
d00461a2:	89a3      	ldrheq	r3, [r4, #12]
d00461a4:	6026      	str	r6, [r4, #0]
d00461a6:	bf04      	itt	eq
d00461a8:	f043 0301 	orreq.w	r3, r3, #1
d00461ac:	81a3      	strheq	r3, [r4, #12]
d00461ae:	89a2      	ldrh	r2, [r4, #12]
d00461b0:	f012 0308 	ands.w	r3, r2, #8
d00461b4:	e9c4 6504 	strd	r6, r5, [r4, #16]
d00461b8:	d01c      	beq.n	d00461f4 <setvbuf+0x16c>
d00461ba:	07d3      	lsls	r3, r2, #31
d00461bc:	bf41      	itttt	mi
d00461be:	2300      	movmi	r3, #0
d00461c0:	426d      	negmi	r5, r5
d00461c2:	60a3      	strmi	r3, [r4, #8]
d00461c4:	61a5      	strmi	r5, [r4, #24]
d00461c6:	bf58      	it	pl
d00461c8:	60a5      	strpl	r5, [r4, #8]
d00461ca:	6e65      	ldr	r5, [r4, #100]	; 0x64
d00461cc:	f015 0501 	ands.w	r5, r5, #1
d00461d0:	d115      	bne.n	d00461fe <setvbuf+0x176>
d00461d2:	f412 7f00 	tst.w	r2, #512	; 0x200
d00461d6:	e7c8      	b.n	d004616a <setvbuf+0xe2>
d00461d8:	4648      	mov	r0, r9
d00461da:	f7ff fe7d 	bl	d0045ed8 <malloc>
d00461de:	4606      	mov	r6, r0
d00461e0:	2800      	cmp	r0, #0
d00461e2:	d0ae      	beq.n	d0046142 <setvbuf+0xba>
d00461e4:	464d      	mov	r5, r9
d00461e6:	89a3      	ldrh	r3, [r4, #12]
d00461e8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00461ec:	81a3      	strh	r3, [r4, #12]
d00461ee:	e7d0      	b.n	d0046192 <setvbuf+0x10a>
d00461f0:	2500      	movs	r5, #0
d00461f2:	e7a8      	b.n	d0046146 <setvbuf+0xbe>
d00461f4:	60a3      	str	r3, [r4, #8]
d00461f6:	e7e8      	b.n	d00461ca <setvbuf+0x142>
d00461f8:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00461fc:	e7b9      	b.n	d0046172 <setvbuf+0xea>
d00461fe:	2500      	movs	r5, #0
d0046200:	e7b7      	b.n	d0046172 <setvbuf+0xea>
d0046202:	bf00      	nop
d0046204:	d0047538 	.word	0xd0047538
d0046208:	d0046d40 	.word	0xd0046d40
d004620c:	d0046d60 	.word	0xd0046d60
d0046210:	d0046d20 	.word	0xd0046d20

d0046214 <__sread>:
d0046214:	b510      	push	{r4, lr}
d0046216:	460c      	mov	r4, r1
d0046218:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d004621c:	f000 f87e 	bl	d004631c <_read_r>
d0046220:	2800      	cmp	r0, #0
d0046222:	bfab      	itete	ge
d0046224:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0046226:	89a3      	ldrhlt	r3, [r4, #12]
d0046228:	181b      	addge	r3, r3, r0
d004622a:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d004622e:	bfac      	ite	ge
d0046230:	6563      	strge	r3, [r4, #84]	; 0x54
d0046232:	81a3      	strhlt	r3, [r4, #12]
d0046234:	bd10      	pop	{r4, pc}

d0046236 <__swrite>:
d0046236:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d004623a:	461f      	mov	r7, r3
d004623c:	898b      	ldrh	r3, [r1, #12]
d004623e:	05db      	lsls	r3, r3, #23
d0046240:	4605      	mov	r5, r0
d0046242:	460c      	mov	r4, r1
d0046244:	4616      	mov	r6, r2
d0046246:	d505      	bpl.n	d0046254 <__swrite+0x1e>
d0046248:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d004624c:	2302      	movs	r3, #2
d004624e:	2200      	movs	r2, #0
d0046250:	f000 f846 	bl	d00462e0 <_lseek_r>
d0046254:	89a3      	ldrh	r3, [r4, #12]
d0046256:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d004625a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d004625e:	81a3      	strh	r3, [r4, #12]
d0046260:	4632      	mov	r2, r6
d0046262:	463b      	mov	r3, r7
d0046264:	4628      	mov	r0, r5
d0046266:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d004626a:	f7f9 bef3 	b.w	d0040054 <_write_r>

d004626e <__sseek>:
d004626e:	b510      	push	{r4, lr}
d0046270:	460c      	mov	r4, r1
d0046272:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0046276:	f000 f833 	bl	d00462e0 <_lseek_r>
d004627a:	1c43      	adds	r3, r0, #1
d004627c:	89a3      	ldrh	r3, [r4, #12]
d004627e:	bf15      	itete	ne
d0046280:	6560      	strne	r0, [r4, #84]	; 0x54
d0046282:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0046286:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d004628a:	81a3      	strheq	r3, [r4, #12]
d004628c:	bf18      	it	ne
d004628e:	81a3      	strhne	r3, [r4, #12]
d0046290:	bd10      	pop	{r4, pc}

d0046292 <__sclose>:
d0046292:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0046296:	f000 b801 	b.w	d004629c <_close_r>
	...

d004629c <_close_r>:
d004629c:	b538      	push	{r3, r4, r5, lr}
d004629e:	4d06      	ldr	r5, [pc, #24]	; (d00462b8 <_close_r+0x1c>)
d00462a0:	2300      	movs	r3, #0
d00462a2:	4604      	mov	r4, r0
d00462a4:	4608      	mov	r0, r1
d00462a6:	602b      	str	r3, [r5, #0]
d00462a8:	f7f9 ff0e 	bl	d00400c8 <_close>
d00462ac:	1c43      	adds	r3, r0, #1
d00462ae:	d102      	bne.n	d00462b6 <_close_r+0x1a>
d00462b0:	682b      	ldr	r3, [r5, #0]
d00462b2:	b103      	cbz	r3, d00462b6 <_close_r+0x1a>
d00462b4:	6023      	str	r3, [r4, #0]
d00462b6:	bd38      	pop	{r3, r4, r5, pc}
d00462b8:	d0132ccc 	.word	0xd0132ccc

d00462bc <_fstat_r>:
d00462bc:	b538      	push	{r3, r4, r5, lr}
d00462be:	4d07      	ldr	r5, [pc, #28]	; (d00462dc <_fstat_r+0x20>)
d00462c0:	2300      	movs	r3, #0
d00462c2:	4604      	mov	r4, r0
d00462c4:	4608      	mov	r0, r1
d00462c6:	4611      	mov	r1, r2
d00462c8:	602b      	str	r3, [r5, #0]
d00462ca:	f7f9 ff01 	bl	d00400d0 <_fstat>
d00462ce:	1c43      	adds	r3, r0, #1
d00462d0:	d102      	bne.n	d00462d8 <_fstat_r+0x1c>
d00462d2:	682b      	ldr	r3, [r5, #0]
d00462d4:	b103      	cbz	r3, d00462d8 <_fstat_r+0x1c>
d00462d6:	6023      	str	r3, [r4, #0]
d00462d8:	bd38      	pop	{r3, r4, r5, pc}
d00462da:	bf00      	nop
d00462dc:	d0132ccc 	.word	0xd0132ccc

d00462e0 <_lseek_r>:
d00462e0:	b538      	push	{r3, r4, r5, lr}
d00462e2:	4d07      	ldr	r5, [pc, #28]	; (d0046300 <_lseek_r+0x20>)
d00462e4:	4604      	mov	r4, r0
d00462e6:	4608      	mov	r0, r1
d00462e8:	4611      	mov	r1, r2
d00462ea:	2200      	movs	r2, #0
d00462ec:	602a      	str	r2, [r5, #0]
d00462ee:	461a      	mov	r2, r3
d00462f0:	f7f9 fef4 	bl	d00400dc <_lseek>
d00462f4:	1c43      	adds	r3, r0, #1
d00462f6:	d102      	bne.n	d00462fe <_lseek_r+0x1e>
d00462f8:	682b      	ldr	r3, [r5, #0]
d00462fa:	b103      	cbz	r3, d00462fe <_lseek_r+0x1e>
d00462fc:	6023      	str	r3, [r4, #0]
d00462fe:	bd38      	pop	{r3, r4, r5, pc}
d0046300:	d0132ccc 	.word	0xd0132ccc

d0046304 <__malloc_lock>:
d0046304:	4801      	ldr	r0, [pc, #4]	; (d004630c <__malloc_lock+0x8>)
d0046306:	f7ff bdc0 	b.w	d0045e8a <__retarget_lock_acquire_recursive>
d004630a:	bf00      	nop
d004630c:	d0132cc4 	.word	0xd0132cc4

d0046310 <__malloc_unlock>:
d0046310:	4801      	ldr	r0, [pc, #4]	; (d0046318 <__malloc_unlock+0x8>)
d0046312:	f7ff bdbb 	b.w	d0045e8c <__retarget_lock_release_recursive>
d0046316:	bf00      	nop
d0046318:	d0132cc4 	.word	0xd0132cc4

d004631c <_read_r>:
d004631c:	b538      	push	{r3, r4, r5, lr}
d004631e:	4d07      	ldr	r5, [pc, #28]	; (d004633c <_read_r+0x20>)
d0046320:	4604      	mov	r4, r0
d0046322:	4608      	mov	r0, r1
d0046324:	4611      	mov	r1, r2
d0046326:	2200      	movs	r2, #0
d0046328:	602a      	str	r2, [r5, #0]
d004632a:	461a      	mov	r2, r3
d004632c:	f7f9 fec2 	bl	d00400b4 <_read>
d0046330:	1c43      	adds	r3, r0, #1
d0046332:	d102      	bne.n	d004633a <_read_r+0x1e>
d0046334:	682b      	ldr	r3, [r5, #0]
d0046336:	b103      	cbz	r3, d004633a <_read_r+0x1e>
d0046338:	6023      	str	r3, [r4, #0]
d004633a:	bd38      	pop	{r3, r4, r5, pc}
d004633c:	d0132ccc 	.word	0xd0132ccc

d0046340 <sinf_poly>:
d0046340:	07cb      	lsls	r3, r1, #31
d0046342:	d412      	bmi.n	d004636a <sinf_poly+0x2a>
d0046344:	ee21 6b00 	vmul.f64	d6, d1, d0
d0046348:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d004634c:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d0046350:	eea5 7b01 	vfma.f64	d7, d5, d1
d0046354:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d0046358:	ee21 1b06 	vmul.f64	d1, d1, d6
d004635c:	eea5 0b06 	vfma.f64	d0, d5, d6
d0046360:	eea7 0b01 	vfma.f64	d0, d7, d1
d0046364:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0046368:	4770      	bx	lr
d004636a:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d004636e:	ee21 6b01 	vmul.f64	d6, d1, d1
d0046372:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d0046376:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d004637a:	eea1 7b05 	vfma.f64	d7, d1, d5
d004637e:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d0046382:	eea1 0b05 	vfma.f64	d0, d1, d5
d0046386:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d004638a:	ee21 1b06 	vmul.f64	d1, d1, d6
d004638e:	eea6 0b05 	vfma.f64	d0, d6, d5
d0046392:	e7e5      	b.n	d0046360 <sinf_poly+0x20>
d0046394:	0000      	movs	r0, r0
	...

d0046398 <cosf>:
d0046398:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d004639a:	ee10 4a10 	vmov	r4, s0
d004639e:	f3c4 530a 	ubfx	r3, r4, #20, #11
d00463a2:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d00463a6:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d00463aa:	d20c      	bcs.n	d00463c6 <cosf+0x2e>
d00463ac:	ee26 1b06 	vmul.f64	d1, d6, d6
d00463b0:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d00463b4:	d378      	bcc.n	d00464a8 <cosf+0x110>
d00463b6:	eeb0 0b46 	vmov.f64	d0, d6
d00463ba:	483f      	ldr	r0, [pc, #252]	; (d00464b8 <cosf+0x120>)
d00463bc:	2101      	movs	r1, #1
d00463be:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d00463c2:	f7ff bfbd 	b.w	d0046340 <sinf_poly>
d00463c6:	f240 422e 	movw	r2, #1070	; 0x42e
d00463ca:	4293      	cmp	r3, r2
d00463cc:	d826      	bhi.n	d004641c <cosf+0x84>
d00463ce:	4b3a      	ldr	r3, [pc, #232]	; (d00464b8 <cosf+0x120>)
d00463d0:	ed93 7b08 	vldr	d7, [r3, #32]
d00463d4:	ee26 7b07 	vmul.f64	d7, d6, d7
d00463d8:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d00463dc:	f103 0070 	add.w	r0, r3, #112	; 0x70
d00463e0:	ee17 1a90 	vmov	r1, s15
d00463e4:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d00463e8:	1609      	asrs	r1, r1, #24
d00463ea:	ee07 1a90 	vmov	s15, r1
d00463ee:	f001 0203 	and.w	r2, r1, #3
d00463f2:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d00463f6:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d00463fa:	ed92 0b00 	vldr	d0, [r2]
d00463fe:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d0046402:	f011 0f02 	tst.w	r1, #2
d0046406:	eea5 6b47 	vfms.f64	d6, d5, d7
d004640a:	f081 0101 	eor.w	r1, r1, #1
d004640e:	bf08      	it	eq
d0046410:	4618      	moveq	r0, r3
d0046412:	ee26 1b06 	vmul.f64	d1, d6, d6
d0046416:	ee20 0b06 	vmul.f64	d0, d0, d6
d004641a:	e7d0      	b.n	d00463be <cosf+0x26>
d004641c:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0046420:	d23e      	bcs.n	d00464a0 <cosf+0x108>
d0046422:	4b26      	ldr	r3, [pc, #152]	; (d00464bc <cosf+0x124>)
d0046424:	f3c4 6283 	ubfx	r2, r4, #26, #4
d0046428:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d004642c:	f3c4 0116 	ubfx	r1, r4, #0, #23
d0046430:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d0046434:	6a06      	ldr	r6, [r0, #32]
d0046436:	6900      	ldr	r0, [r0, #16]
d0046438:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d004643c:	40a9      	lsls	r1, r5
d004643e:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d0046442:	fba1 6706 	umull	r6, r7, r1, r6
d0046446:	fb05 f301 	mul.w	r3, r5, r1
d004644a:	463a      	mov	r2, r7
d004644c:	fbe0 2301 	umlal	r2, r3, r0, r1
d0046450:	1c11      	adds	r1, r2, #0
d0046452:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d0046456:	2000      	movs	r0, #0
d0046458:	1a10      	subs	r0, r2, r0
d004645a:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d004645e:	eb63 0101 	sbc.w	r1, r3, r1
d0046462:	f000 fbab 	bl	d0046bbc <__aeabi_l2d>
d0046466:	0fb5      	lsrs	r5, r6, #30
d0046468:	4b13      	ldr	r3, [pc, #76]	; (d00464b8 <cosf+0x120>)
d004646a:	eb05 74d4 	add.w	r4, r5, r4, lsr #31
d004646e:	ed9f 0b10 	vldr	d0, [pc, #64]	; d00464b0 <cosf+0x118>
d0046472:	ec41 0b17 	vmov	d7, r0, r1
d0046476:	f004 0203 	and.w	r2, r4, #3
d004647a:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d004647e:	ee27 0b00 	vmul.f64	d0, d7, d0
d0046482:	ed92 7b00 	vldr	d7, [r2]
d0046486:	ee20 1b00 	vmul.f64	d1, d0, d0
d004648a:	f014 0f02 	tst.w	r4, #2
d004648e:	f103 0070 	add.w	r0, r3, #112	; 0x70
d0046492:	f085 0101 	eor.w	r1, r5, #1
d0046496:	bf08      	it	eq
d0046498:	4618      	moveq	r0, r3
d004649a:	ee27 0b00 	vmul.f64	d0, d7, d0
d004649e:	e78e      	b.n	d00463be <cosf+0x26>
d00464a0:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d00464a4:	f000 b844 	b.w	d0046530 <__math_invalidf>
d00464a8:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d00464ac:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00464ae:	bf00      	nop
d00464b0:	54442d18 	.word	0x54442d18
d00464b4:	3c1921fb 	.word	0x3c1921fb
d00464b8:	d0047050 	.word	0xd0047050
d00464bc:	d0046ff0 	.word	0xd0046ff0

d00464c0 <with_errnof>:
d00464c0:	b513      	push	{r0, r1, r4, lr}
d00464c2:	4604      	mov	r4, r0
d00464c4:	ed8d 0a01 	vstr	s0, [sp, #4]
d00464c8:	f7ff faac 	bl	d0045a24 <__errno>
d00464cc:	ed9d 0a01 	vldr	s0, [sp, #4]
d00464d0:	6004      	str	r4, [r0, #0]
d00464d2:	b002      	add	sp, #8
d00464d4:	bd10      	pop	{r4, pc}

d00464d6 <xflowf>:
d00464d6:	b130      	cbz	r0, d00464e6 <xflowf+0x10>
d00464d8:	eef1 7a40 	vneg.f32	s15, s0
d00464dc:	ee27 0a80 	vmul.f32	s0, s15, s0
d00464e0:	2022      	movs	r0, #34	; 0x22
d00464e2:	f7ff bfed 	b.w	d00464c0 <with_errnof>
d00464e6:	eef0 7a40 	vmov.f32	s15, s0
d00464ea:	e7f7      	b.n	d00464dc <xflowf+0x6>

d00464ec <__math_uflowf>:
d00464ec:	ed9f 0a01 	vldr	s0, [pc, #4]	; d00464f4 <__math_uflowf+0x8>
d00464f0:	f7ff bff1 	b.w	d00464d6 <xflowf>
d00464f4:	10000000 	.word	0x10000000

d00464f8 <__math_may_uflowf>:
d00464f8:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0046500 <__math_may_uflowf+0x8>
d00464fc:	f7ff bfeb 	b.w	d00464d6 <xflowf>
d0046500:	1a200000 	.word	0x1a200000

d0046504 <__math_oflowf>:
d0046504:	ed9f 0a01 	vldr	s0, [pc, #4]	; d004650c <__math_oflowf+0x8>
d0046508:	f7ff bfe5 	b.w	d00464d6 <xflowf>
d004650c:	70000000 	.word	0x70000000

d0046510 <__math_divzerof>:
d0046510:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0046514:	eeff 7a00 	vmov.f32	s15, #240	; 0xbf800000 -1.0
d0046518:	2800      	cmp	r0, #0
d004651a:	fe40 7a27 	vseleq.f32	s15, s0, s15
d004651e:	ed9f 0a03 	vldr	s0, [pc, #12]	; d004652c <__math_divzerof+0x1c>
d0046522:	2022      	movs	r0, #34	; 0x22
d0046524:	ee87 0a80 	vdiv.f32	s0, s15, s0
d0046528:	f7ff bfca 	b.w	d00464c0 <with_errnof>
d004652c:	00000000 	.word	0x00000000

d0046530 <__math_invalidf>:
d0046530:	eef0 7a40 	vmov.f32	s15, s0
d0046534:	ee30 7a40 	vsub.f32	s14, s0, s0
d0046538:	eef4 7a67 	vcmp.f32	s15, s15
d004653c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046540:	ee87 0a07 	vdiv.f32	s0, s14, s14
d0046544:	d602      	bvs.n	d004654c <__math_invalidf+0x1c>
d0046546:	2021      	movs	r0, #33	; 0x21
d0046548:	f7ff bfba 	b.w	d00464c0 <with_errnof>
d004654c:	4770      	bx	lr
	...

d0046550 <expf>:
d0046550:	ee10 2a10 	vmov	r2, s0
d0046554:	b470      	push	{r4, r5, r6}
d0046556:	f3c2 530a 	ubfx	r3, r2, #20, #11
d004655a:	f240 442a 	movw	r4, #1066	; 0x42a
d004655e:	42a3      	cmp	r3, r4
d0046560:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d0046564:	d92a      	bls.n	d00465bc <expf+0x6c>
d0046566:	f512 0f00 	cmn.w	r2, #8388608	; 0x800000
d004656a:	d059      	beq.n	d0046620 <expf+0xd0>
d004656c:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0046570:	d303      	bcc.n	d004657a <expf+0x2a>
d0046572:	ee30 0a00 	vadd.f32	s0, s0, s0
d0046576:	bc70      	pop	{r4, r5, r6}
d0046578:	4770      	bx	lr
d004657a:	eddf 7a2b 	vldr	s15, [pc, #172]	; d0046628 <expf+0xd8>
d004657e:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0046582:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0046586:	dd03      	ble.n	d0046590 <expf+0x40>
d0046588:	bc70      	pop	{r4, r5, r6}
d004658a:	2000      	movs	r0, #0
d004658c:	f7ff bfba 	b.w	d0046504 <__math_oflowf>
d0046590:	eddf 7a26 	vldr	s15, [pc, #152]	; d004662c <expf+0xdc>
d0046594:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0046598:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004659c:	d503      	bpl.n	d00465a6 <expf+0x56>
d004659e:	bc70      	pop	{r4, r5, r6}
d00465a0:	2000      	movs	r0, #0
d00465a2:	f7ff bfa3 	b.w	d00464ec <__math_uflowf>
d00465a6:	eddf 7a22 	vldr	s15, [pc, #136]	; d0046630 <expf+0xe0>
d00465aa:	eeb4 0ae7 	vcmpe.f32	s0, s15
d00465ae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00465b2:	d503      	bpl.n	d00465bc <expf+0x6c>
d00465b4:	bc70      	pop	{r4, r5, r6}
d00465b6:	2000      	movs	r0, #0
d00465b8:	f7ff bf9e 	b.w	d00464f8 <__math_may_uflowf>
d00465bc:	4b1d      	ldr	r3, [pc, #116]	; (d0046634 <expf+0xe4>)
d00465be:	eeb7 0b00 	vmov.f64	d0, #112	; 0x3f800000  1.0
d00465c2:	ed93 5b4a 	vldr	d5, [r3, #296]	; 0x128
d00465c6:	ed93 4b48 	vldr	d4, [r3, #288]	; 0x120
d00465ca:	eeb0 7b44 	vmov.f64	d7, d4
d00465ce:	eea5 7b06 	vfma.f64	d7, d5, d6
d00465d2:	ee17 5a10 	vmov	r5, s14
d00465d6:	ee37 7b44 	vsub.f64	d7, d7, d4
d00465da:	f005 021f 	and.w	r2, r5, #31
d00465de:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d00465e2:	e9d2 4600 	ldrd	r4, r6, [r2]
d00465e6:	ee95 7b06 	vfnms.f64	d7, d5, d6
d00465ea:	ed93 4b50 	vldr	d4, [r3, #320]	; 0x140
d00465ee:	ed93 5b4c 	vldr	d5, [r3, #304]	; 0x130
d00465f2:	eea4 0b07 	vfma.f64	d0, d4, d7
d00465f6:	ed93 6b4e 	vldr	d6, [r3, #312]	; 0x138
d00465fa:	2300      	movs	r3, #0
d00465fc:	1918      	adds	r0, r3, r4
d00465fe:	ea4f 32c5 	mov.w	r2, r5, lsl #15
d0046602:	eb42 0106 	adc.w	r1, r2, r6
d0046606:	eea5 6b07 	vfma.f64	d6, d5, d7
d004660a:	ee27 5b07 	vmul.f64	d5, d7, d7
d004660e:	ec41 0b17 	vmov	d7, r0, r1
d0046612:	eea6 0b05 	vfma.f64	d0, d6, d5
d0046616:	ee20 0b07 	vmul.f64	d0, d0, d7
d004661a:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d004661e:	e7aa      	b.n	d0046576 <expf+0x26>
d0046620:	ed9f 0a05 	vldr	s0, [pc, #20]	; d0046638 <expf+0xe8>
d0046624:	e7a7      	b.n	d0046576 <expf+0x26>
d0046626:	bf00      	nop
d0046628:	42b17217 	.word	0x42b17217
d004662c:	c2cff1b4 	.word	0xc2cff1b4
d0046630:	c2ce8ecf 	.word	0xc2ce8ecf
d0046634:	d0046d88 	.word	0xd0046d88
d0046638:	00000000 	.word	0x00000000

d004663c <logf>:
d004663c:	ee10 3a10 	vmov	r3, s0
d0046640:	f1b3 5f7e 	cmp.w	r3, #1065353216	; 0x3f800000
d0046644:	b410      	push	{r4}
d0046646:	d055      	beq.n	d00466f4 <logf+0xb8>
d0046648:	f5a3 0200 	sub.w	r2, r3, #8388608	; 0x800000
d004664c:	f1b2 4ffe 	cmp.w	r2, #2130706432	; 0x7f000000
d0046650:	d31a      	bcc.n	d0046688 <logf+0x4c>
d0046652:	005a      	lsls	r2, r3, #1
d0046654:	d104      	bne.n	d0046660 <logf+0x24>
d0046656:	f85d 4b04 	ldr.w	r4, [sp], #4
d004665a:	2001      	movs	r0, #1
d004665c:	f7ff bf58 	b.w	d0046510 <__math_divzerof>
d0046660:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0046664:	d043      	beq.n	d00466ee <logf+0xb2>
d0046666:	2b00      	cmp	r3, #0
d0046668:	db02      	blt.n	d0046670 <logf+0x34>
d004666a:	f1b2 4f7f 	cmp.w	r2, #4278190080	; 0xff000000
d004666e:	d303      	bcc.n	d0046678 <logf+0x3c>
d0046670:	f85d 4b04 	ldr.w	r4, [sp], #4
d0046674:	f7ff bf5c 	b.w	d0046530 <__math_invalidf>
d0046678:	eddf 7a20 	vldr	s15, [pc, #128]	; d00466fc <logf+0xc0>
d004667c:	ee20 0a27 	vmul.f32	s0, s0, s15
d0046680:	ee10 3a10 	vmov	r3, s0
d0046684:	f1a3 6338 	sub.w	r3, r3, #192937984	; 0xb800000
d0046688:	f103 4240 	add.w	r2, r3, #3221225472	; 0xc0000000
d004668c:	491c      	ldr	r1, [pc, #112]	; (d0046700 <logf+0xc4>)
d004668e:	eebf 0b00 	vmov.f64	d0, #240	; 0xbf800000 -1.0
d0046692:	f502 024d 	add.w	r2, r2, #13434880	; 0xcd0000
d0046696:	f3c2 40c3 	ubfx	r0, r2, #19, #4
d004669a:	0dd4      	lsrs	r4, r2, #23
d004669c:	eb01 1000 	add.w	r0, r1, r0, lsl #4
d00466a0:	05e4      	lsls	r4, r4, #23
d00466a2:	ed90 6b00 	vldr	d6, [r0]
d00466a6:	1b1b      	subs	r3, r3, r4
d00466a8:	ee07 3a90 	vmov	s15, r3
d00466ac:	ed91 5b40 	vldr	d5, [r1, #256]	; 0x100
d00466b0:	eeb7 7ae7 	vcvt.f64.f32	d7, s15
d00466b4:	15d2      	asrs	r2, r2, #23
d00466b6:	eea6 0b07 	vfma.f64	d0, d6, d7
d00466ba:	ed90 6b02 	vldr	d6, [r0, #8]
d00466be:	ee07 2a90 	vmov	s15, r2
d00466c2:	ed91 4b44 	vldr	d4, [r1, #272]	; 0x110
d00466c6:	eeb8 7be7 	vcvt.f64.s32	d7, s15
d00466ca:	eea7 6b05 	vfma.f64	d6, d7, d5
d00466ce:	ed91 7b46 	vldr	d7, [r1, #280]	; 0x118
d00466d2:	ee20 5b00 	vmul.f64	d5, d0, d0
d00466d6:	eea4 7b00 	vfma.f64	d7, d4, d0
d00466da:	ed91 4b42 	vldr	d4, [r1, #264]	; 0x108
d00466de:	ee30 0b06 	vadd.f64	d0, d0, d6
d00466e2:	eea4 7b05 	vfma.f64	d7, d4, d5
d00466e6:	eea5 0b07 	vfma.f64	d0, d5, d7
d00466ea:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d00466ee:	f85d 4b04 	ldr.w	r4, [sp], #4
d00466f2:	4770      	bx	lr
d00466f4:	ed9f 0a03 	vldr	s0, [pc, #12]	; d0046704 <logf+0xc8>
d00466f8:	e7f9      	b.n	d00466ee <logf+0xb2>
d00466fa:	bf00      	nop
d00466fc:	4b000000 	.word	0x4b000000
d0046700:	d0046ed0 	.word	0xd0046ed0
d0046704:	00000000 	.word	0x00000000

d0046708 <sinf_poly>:
d0046708:	07cb      	lsls	r3, r1, #31
d004670a:	d412      	bmi.n	d0046732 <sinf_poly+0x2a>
d004670c:	ee21 6b00 	vmul.f64	d6, d1, d0
d0046710:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d0046714:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d0046718:	eea5 7b01 	vfma.f64	d7, d5, d1
d004671c:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d0046720:	ee21 1b06 	vmul.f64	d1, d1, d6
d0046724:	eea5 0b06 	vfma.f64	d0, d5, d6
d0046728:	eea7 0b01 	vfma.f64	d0, d7, d1
d004672c:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0046730:	4770      	bx	lr
d0046732:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d0046736:	ee21 6b01 	vmul.f64	d6, d1, d1
d004673a:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d004673e:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d0046742:	eea1 7b05 	vfma.f64	d7, d1, d5
d0046746:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d004674a:	eea1 0b05 	vfma.f64	d0, d1, d5
d004674e:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d0046752:	ee21 1b06 	vmul.f64	d1, d1, d6
d0046756:	eea6 0b05 	vfma.f64	d0, d6, d5
d004675a:	e7e5      	b.n	d0046728 <sinf_poly+0x20>
d004675c:	0000      	movs	r0, r0
	...

d0046760 <sinf>:
d0046760:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
d0046762:	ee10 4a10 	vmov	r4, s0
d0046766:	f3c4 530a 	ubfx	r3, r4, #20, #11
d004676a:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d004676e:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d0046772:	eef0 7a40 	vmov.f32	s15, s0
d0046776:	ea4f 5214 	mov.w	r2, r4, lsr #20
d004677a:	d218      	bcs.n	d00467ae <sinf+0x4e>
d004677c:	ee26 1b06 	vmul.f64	d1, d6, d6
d0046780:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d0046784:	d20a      	bcs.n	d004679c <sinf+0x3c>
d0046786:	f412 6fff 	tst.w	r2, #2040	; 0x7f8
d004678a:	d103      	bne.n	d0046794 <sinf+0x34>
d004678c:	eeb7 1bc1 	vcvt.f32.f64	s2, d1
d0046790:	ed8d 1a01 	vstr	s2, [sp, #4]
d0046794:	eeb0 0a67 	vmov.f32	s0, s15
d0046798:	b003      	add	sp, #12
d004679a:	bdf0      	pop	{r4, r5, r6, r7, pc}
d004679c:	483e      	ldr	r0, [pc, #248]	; (d0046898 <sinf+0x138>)
d004679e:	eeb0 0b46 	vmov.f64	d0, d6
d00467a2:	2100      	movs	r1, #0
d00467a4:	b003      	add	sp, #12
d00467a6:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d00467aa:	f7ff bfad 	b.w	d0046708 <sinf_poly>
d00467ae:	f240 422e 	movw	r2, #1070	; 0x42e
d00467b2:	4293      	cmp	r3, r2
d00467b4:	d824      	bhi.n	d0046800 <sinf+0xa0>
d00467b6:	4b38      	ldr	r3, [pc, #224]	; (d0046898 <sinf+0x138>)
d00467b8:	ed93 7b08 	vldr	d7, [r3, #32]
d00467bc:	ee26 7b07 	vmul.f64	d7, d6, d7
d00467c0:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d00467c4:	f103 0070 	add.w	r0, r3, #112	; 0x70
d00467c8:	ee17 1a90 	vmov	r1, s15
d00467cc:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d00467d0:	1609      	asrs	r1, r1, #24
d00467d2:	ee07 1a90 	vmov	s15, r1
d00467d6:	f001 0203 	and.w	r2, r1, #3
d00467da:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d00467de:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d00467e2:	ed92 0b00 	vldr	d0, [r2]
d00467e6:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d00467ea:	f011 0f02 	tst.w	r1, #2
d00467ee:	eea5 6b47 	vfms.f64	d6, d5, d7
d00467f2:	bf08      	it	eq
d00467f4:	4618      	moveq	r0, r3
d00467f6:	ee26 1b06 	vmul.f64	d1, d6, d6
d00467fa:	ee20 0b06 	vmul.f64	d0, d0, d6
d00467fe:	e7d1      	b.n	d00467a4 <sinf+0x44>
d0046800:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0046804:	d23d      	bcs.n	d0046882 <sinf+0x122>
d0046806:	4b25      	ldr	r3, [pc, #148]	; (d004689c <sinf+0x13c>)
d0046808:	f3c4 6283 	ubfx	r2, r4, #26, #4
d004680c:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d0046810:	f3c4 0116 	ubfx	r1, r4, #0, #23
d0046814:	6a06      	ldr	r6, [r0, #32]
d0046816:	6900      	ldr	r0, [r0, #16]
d0046818:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d004681c:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d0046820:	40a9      	lsls	r1, r5
d0046822:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d0046826:	fba1 6706 	umull	r6, r7, r1, r6
d004682a:	fb05 f301 	mul.w	r3, r5, r1
d004682e:	463a      	mov	r2, r7
d0046830:	fbe0 2301 	umlal	r2, r3, r0, r1
d0046834:	1c11      	adds	r1, r2, #0
d0046836:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d004683a:	2000      	movs	r0, #0
d004683c:	1a10      	subs	r0, r2, r0
d004683e:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d0046842:	eb63 0101 	sbc.w	r1, r3, r1
d0046846:	f000 f9b9 	bl	d0046bbc <__aeabi_l2d>
d004684a:	0fb5      	lsrs	r5, r6, #30
d004684c:	4a12      	ldr	r2, [pc, #72]	; (d0046898 <sinf+0x138>)
d004684e:	eb05 73d4 	add.w	r3, r5, r4, lsr #31
d0046852:	ed9f 0b0f 	vldr	d0, [pc, #60]	; d0046890 <sinf+0x130>
d0046856:	ec41 0b17 	vmov	d7, r0, r1
d004685a:	f003 0103 	and.w	r1, r3, #3
d004685e:	eb02 01c1 	add.w	r1, r2, r1, lsl #3
d0046862:	ee27 0b00 	vmul.f64	d0, d7, d0
d0046866:	ed91 7b00 	vldr	d7, [r1]
d004686a:	ee20 1b00 	vmul.f64	d1, d0, d0
d004686e:	f013 0f02 	tst.w	r3, #2
d0046872:	f102 0070 	add.w	r0, r2, #112	; 0x70
d0046876:	4629      	mov	r1, r5
d0046878:	bf08      	it	eq
d004687a:	4610      	moveq	r0, r2
d004687c:	ee27 0b00 	vmul.f64	d0, d7, d0
d0046880:	e790      	b.n	d00467a4 <sinf+0x44>
d0046882:	b003      	add	sp, #12
d0046884:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0046888:	f7ff be52 	b.w	d0046530 <__math_invalidf>
d004688c:	f3af 8000 	nop.w
d0046890:	54442d18 	.word	0x54442d18
d0046894:	3c1921fb 	.word	0x3c1921fb
d0046898:	d0047050 	.word	0xd0047050
d004689c:	d0046ff0 	.word	0xd0046ff0

d00468a0 <__aeabi_drsub>:
d00468a0:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
d00468a4:	e002      	b.n	d00468ac <__adddf3>
d00468a6:	bf00      	nop

d00468a8 <__aeabi_dsub>:
d00468a8:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

d00468ac <__adddf3>:
d00468ac:	b530      	push	{r4, r5, lr}
d00468ae:	ea4f 0441 	mov.w	r4, r1, lsl #1
d00468b2:	ea4f 0543 	mov.w	r5, r3, lsl #1
d00468b6:	ea94 0f05 	teq	r4, r5
d00468ba:	bf08      	it	eq
d00468bc:	ea90 0f02 	teqeq	r0, r2
d00468c0:	bf1f      	itttt	ne
d00468c2:	ea54 0c00 	orrsne.w	ip, r4, r0
d00468c6:	ea55 0c02 	orrsne.w	ip, r5, r2
d00468ca:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
d00468ce:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d00468d2:	f000 80e2 	beq.w	d0046a9a <__adddf3+0x1ee>
d00468d6:	ea4f 5454 	mov.w	r4, r4, lsr #21
d00468da:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
d00468de:	bfb8      	it	lt
d00468e0:	426d      	neglt	r5, r5
d00468e2:	dd0c      	ble.n	d00468fe <__adddf3+0x52>
d00468e4:	442c      	add	r4, r5
d00468e6:	ea80 0202 	eor.w	r2, r0, r2
d00468ea:	ea81 0303 	eor.w	r3, r1, r3
d00468ee:	ea82 0000 	eor.w	r0, r2, r0
d00468f2:	ea83 0101 	eor.w	r1, r3, r1
d00468f6:	ea80 0202 	eor.w	r2, r0, r2
d00468fa:	ea81 0303 	eor.w	r3, r1, r3
d00468fe:	2d36      	cmp	r5, #54	; 0x36
d0046900:	bf88      	it	hi
d0046902:	bd30      	pophi	{r4, r5, pc}
d0046904:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
d0046908:	ea4f 3101 	mov.w	r1, r1, lsl #12
d004690c:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
d0046910:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
d0046914:	d002      	beq.n	d004691c <__adddf3+0x70>
d0046916:	4240      	negs	r0, r0
d0046918:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d004691c:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
d0046920:	ea4f 3303 	mov.w	r3, r3, lsl #12
d0046924:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
d0046928:	d002      	beq.n	d0046930 <__adddf3+0x84>
d004692a:	4252      	negs	r2, r2
d004692c:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
d0046930:	ea94 0f05 	teq	r4, r5
d0046934:	f000 80a7 	beq.w	d0046a86 <__adddf3+0x1da>
d0046938:	f1a4 0401 	sub.w	r4, r4, #1
d004693c:	f1d5 0e20 	rsbs	lr, r5, #32
d0046940:	db0d      	blt.n	d004695e <__adddf3+0xb2>
d0046942:	fa02 fc0e 	lsl.w	ip, r2, lr
d0046946:	fa22 f205 	lsr.w	r2, r2, r5
d004694a:	1880      	adds	r0, r0, r2
d004694c:	f141 0100 	adc.w	r1, r1, #0
d0046950:	fa03 f20e 	lsl.w	r2, r3, lr
d0046954:	1880      	adds	r0, r0, r2
d0046956:	fa43 f305 	asr.w	r3, r3, r5
d004695a:	4159      	adcs	r1, r3
d004695c:	e00e      	b.n	d004697c <__adddf3+0xd0>
d004695e:	f1a5 0520 	sub.w	r5, r5, #32
d0046962:	f10e 0e20 	add.w	lr, lr, #32
d0046966:	2a01      	cmp	r2, #1
d0046968:	fa03 fc0e 	lsl.w	ip, r3, lr
d004696c:	bf28      	it	cs
d004696e:	f04c 0c02 	orrcs.w	ip, ip, #2
d0046972:	fa43 f305 	asr.w	r3, r3, r5
d0046976:	18c0      	adds	r0, r0, r3
d0046978:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
d004697c:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d0046980:	d507      	bpl.n	d0046992 <__adddf3+0xe6>
d0046982:	f04f 0e00 	mov.w	lr, #0
d0046986:	f1dc 0c00 	rsbs	ip, ip, #0
d004698a:	eb7e 0000 	sbcs.w	r0, lr, r0
d004698e:	eb6e 0101 	sbc.w	r1, lr, r1
d0046992:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
d0046996:	d31b      	bcc.n	d00469d0 <__adddf3+0x124>
d0046998:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
d004699c:	d30c      	bcc.n	d00469b8 <__adddf3+0x10c>
d004699e:	0849      	lsrs	r1, r1, #1
d00469a0:	ea5f 0030 	movs.w	r0, r0, rrx
d00469a4:	ea4f 0c3c 	mov.w	ip, ip, rrx
d00469a8:	f104 0401 	add.w	r4, r4, #1
d00469ac:	ea4f 5244 	mov.w	r2, r4, lsl #21
d00469b0:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
d00469b4:	f080 809a 	bcs.w	d0046aec <__adddf3+0x240>
d00469b8:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
d00469bc:	bf08      	it	eq
d00469be:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
d00469c2:	f150 0000 	adcs.w	r0, r0, #0
d00469c6:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
d00469ca:	ea41 0105 	orr.w	r1, r1, r5
d00469ce:	bd30      	pop	{r4, r5, pc}
d00469d0:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
d00469d4:	4140      	adcs	r0, r0
d00469d6:	eb41 0101 	adc.w	r1, r1, r1
d00469da:	3c01      	subs	r4, #1
d00469dc:	bf28      	it	cs
d00469de:	f5b1 1f80 	cmpcs.w	r1, #1048576	; 0x100000
d00469e2:	d2e9      	bcs.n	d00469b8 <__adddf3+0x10c>
d00469e4:	f091 0f00 	teq	r1, #0
d00469e8:	bf04      	itt	eq
d00469ea:	4601      	moveq	r1, r0
d00469ec:	2000      	moveq	r0, #0
d00469ee:	fab1 f381 	clz	r3, r1
d00469f2:	bf08      	it	eq
d00469f4:	3320      	addeq	r3, #32
d00469f6:	f1a3 030b 	sub.w	r3, r3, #11
d00469fa:	f1b3 0220 	subs.w	r2, r3, #32
d00469fe:	da0c      	bge.n	d0046a1a <__adddf3+0x16e>
d0046a00:	320c      	adds	r2, #12
d0046a02:	dd08      	ble.n	d0046a16 <__adddf3+0x16a>
d0046a04:	f102 0c14 	add.w	ip, r2, #20
d0046a08:	f1c2 020c 	rsb	r2, r2, #12
d0046a0c:	fa01 f00c 	lsl.w	r0, r1, ip
d0046a10:	fa21 f102 	lsr.w	r1, r1, r2
d0046a14:	e00c      	b.n	d0046a30 <__adddf3+0x184>
d0046a16:	f102 0214 	add.w	r2, r2, #20
d0046a1a:	bfd8      	it	le
d0046a1c:	f1c2 0c20 	rsble	ip, r2, #32
d0046a20:	fa01 f102 	lsl.w	r1, r1, r2
d0046a24:	fa20 fc0c 	lsr.w	ip, r0, ip
d0046a28:	bfdc      	itt	le
d0046a2a:	ea41 010c 	orrle.w	r1, r1, ip
d0046a2e:	4090      	lslle	r0, r2
d0046a30:	1ae4      	subs	r4, r4, r3
d0046a32:	bfa2      	ittt	ge
d0046a34:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
d0046a38:	4329      	orrge	r1, r5
d0046a3a:	bd30      	popge	{r4, r5, pc}
d0046a3c:	ea6f 0404 	mvn.w	r4, r4
d0046a40:	3c1f      	subs	r4, #31
d0046a42:	da1c      	bge.n	d0046a7e <__adddf3+0x1d2>
d0046a44:	340c      	adds	r4, #12
d0046a46:	dc0e      	bgt.n	d0046a66 <__adddf3+0x1ba>
d0046a48:	f104 0414 	add.w	r4, r4, #20
d0046a4c:	f1c4 0220 	rsb	r2, r4, #32
d0046a50:	fa20 f004 	lsr.w	r0, r0, r4
d0046a54:	fa01 f302 	lsl.w	r3, r1, r2
d0046a58:	ea40 0003 	orr.w	r0, r0, r3
d0046a5c:	fa21 f304 	lsr.w	r3, r1, r4
d0046a60:	ea45 0103 	orr.w	r1, r5, r3
d0046a64:	bd30      	pop	{r4, r5, pc}
d0046a66:	f1c4 040c 	rsb	r4, r4, #12
d0046a6a:	f1c4 0220 	rsb	r2, r4, #32
d0046a6e:	fa20 f002 	lsr.w	r0, r0, r2
d0046a72:	fa01 f304 	lsl.w	r3, r1, r4
d0046a76:	ea40 0003 	orr.w	r0, r0, r3
d0046a7a:	4629      	mov	r1, r5
d0046a7c:	bd30      	pop	{r4, r5, pc}
d0046a7e:	fa21 f004 	lsr.w	r0, r1, r4
d0046a82:	4629      	mov	r1, r5
d0046a84:	bd30      	pop	{r4, r5, pc}
d0046a86:	f094 0f00 	teq	r4, #0
d0046a8a:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
d0046a8e:	bf06      	itte	eq
d0046a90:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
d0046a94:	3401      	addeq	r4, #1
d0046a96:	3d01      	subne	r5, #1
d0046a98:	e74e      	b.n	d0046938 <__adddf3+0x8c>
d0046a9a:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d0046a9e:	bf18      	it	ne
d0046aa0:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d0046aa4:	d029      	beq.n	d0046afa <__adddf3+0x24e>
d0046aa6:	ea94 0f05 	teq	r4, r5
d0046aaa:	bf08      	it	eq
d0046aac:	ea90 0f02 	teqeq	r0, r2
d0046ab0:	d005      	beq.n	d0046abe <__adddf3+0x212>
d0046ab2:	ea54 0c00 	orrs.w	ip, r4, r0
d0046ab6:	bf04      	itt	eq
d0046ab8:	4619      	moveq	r1, r3
d0046aba:	4610      	moveq	r0, r2
d0046abc:	bd30      	pop	{r4, r5, pc}
d0046abe:	ea91 0f03 	teq	r1, r3
d0046ac2:	bf1e      	ittt	ne
d0046ac4:	2100      	movne	r1, #0
d0046ac6:	2000      	movne	r0, #0
d0046ac8:	bd30      	popne	{r4, r5, pc}
d0046aca:	ea5f 5c54 	movs.w	ip, r4, lsr #21
d0046ace:	d105      	bne.n	d0046adc <__adddf3+0x230>
d0046ad0:	0040      	lsls	r0, r0, #1
d0046ad2:	4149      	adcs	r1, r1
d0046ad4:	bf28      	it	cs
d0046ad6:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
d0046ada:	bd30      	pop	{r4, r5, pc}
d0046adc:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
d0046ae0:	bf3c      	itt	cc
d0046ae2:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
d0046ae6:	bd30      	popcc	{r4, r5, pc}
d0046ae8:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d0046aec:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
d0046af0:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
d0046af4:	f04f 0000 	mov.w	r0, #0
d0046af8:	bd30      	pop	{r4, r5, pc}
d0046afa:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d0046afe:	bf1a      	itte	ne
d0046b00:	4619      	movne	r1, r3
d0046b02:	4610      	movne	r0, r2
d0046b04:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
d0046b08:	bf1c      	itt	ne
d0046b0a:	460b      	movne	r3, r1
d0046b0c:	4602      	movne	r2, r0
d0046b0e:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
d0046b12:	bf06      	itte	eq
d0046b14:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
d0046b18:	ea91 0f03 	teqeq	r1, r3
d0046b1c:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
d0046b20:	bd30      	pop	{r4, r5, pc}
d0046b22:	bf00      	nop

d0046b24 <__aeabi_ui2d>:
d0046b24:	f090 0f00 	teq	r0, #0
d0046b28:	bf04      	itt	eq
d0046b2a:	2100      	moveq	r1, #0
d0046b2c:	4770      	bxeq	lr
d0046b2e:	b530      	push	{r4, r5, lr}
d0046b30:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0046b34:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0046b38:	f04f 0500 	mov.w	r5, #0
d0046b3c:	f04f 0100 	mov.w	r1, #0
d0046b40:	e750      	b.n	d00469e4 <__adddf3+0x138>
d0046b42:	bf00      	nop

d0046b44 <__aeabi_i2d>:
d0046b44:	f090 0f00 	teq	r0, #0
d0046b48:	bf04      	itt	eq
d0046b4a:	2100      	moveq	r1, #0
d0046b4c:	4770      	bxeq	lr
d0046b4e:	b530      	push	{r4, r5, lr}
d0046b50:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0046b54:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0046b58:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
d0046b5c:	bf48      	it	mi
d0046b5e:	4240      	negmi	r0, r0
d0046b60:	f04f 0100 	mov.w	r1, #0
d0046b64:	e73e      	b.n	d00469e4 <__adddf3+0x138>
d0046b66:	bf00      	nop

d0046b68 <__aeabi_f2d>:
d0046b68:	0042      	lsls	r2, r0, #1
d0046b6a:	ea4f 01e2 	mov.w	r1, r2, asr #3
d0046b6e:	ea4f 0131 	mov.w	r1, r1, rrx
d0046b72:	ea4f 7002 	mov.w	r0, r2, lsl #28
d0046b76:	bf1f      	itttt	ne
d0046b78:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
d0046b7c:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
d0046b80:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
d0046b84:	4770      	bxne	lr
d0046b86:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
d0046b8a:	bf08      	it	eq
d0046b8c:	4770      	bxeq	lr
d0046b8e:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
d0046b92:	bf04      	itt	eq
d0046b94:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
d0046b98:	4770      	bxeq	lr
d0046b9a:	b530      	push	{r4, r5, lr}
d0046b9c:	f44f 7460 	mov.w	r4, #896	; 0x380
d0046ba0:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d0046ba4:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
d0046ba8:	e71c      	b.n	d00469e4 <__adddf3+0x138>
d0046baa:	bf00      	nop

d0046bac <__aeabi_ul2d>:
d0046bac:	ea50 0201 	orrs.w	r2, r0, r1
d0046bb0:	bf08      	it	eq
d0046bb2:	4770      	bxeq	lr
d0046bb4:	b530      	push	{r4, r5, lr}
d0046bb6:	f04f 0500 	mov.w	r5, #0
d0046bba:	e00a      	b.n	d0046bd2 <__aeabi_l2d+0x16>

d0046bbc <__aeabi_l2d>:
d0046bbc:	ea50 0201 	orrs.w	r2, r0, r1
d0046bc0:	bf08      	it	eq
d0046bc2:	4770      	bxeq	lr
d0046bc4:	b530      	push	{r4, r5, lr}
d0046bc6:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
d0046bca:	d502      	bpl.n	d0046bd2 <__aeabi_l2d+0x16>
d0046bcc:	4240      	negs	r0, r0
d0046bce:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d0046bd2:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0046bd6:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0046bda:	ea5f 5c91 	movs.w	ip, r1, lsr #22
d0046bde:	f43f aed8 	beq.w	d0046992 <__adddf3+0xe6>
d0046be2:	f04f 0203 	mov.w	r2, #3
d0046be6:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d0046bea:	bf18      	it	ne
d0046bec:	3203      	addne	r2, #3
d0046bee:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d0046bf2:	bf18      	it	ne
d0046bf4:	3203      	addne	r2, #3
d0046bf6:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
d0046bfa:	f1c2 0320 	rsb	r3, r2, #32
d0046bfe:	fa00 fc03 	lsl.w	ip, r0, r3
d0046c02:	fa20 f002 	lsr.w	r0, r0, r2
d0046c06:	fa01 fe03 	lsl.w	lr, r1, r3
d0046c0a:	ea40 000e 	orr.w	r0, r0, lr
d0046c0e:	fa21 f102 	lsr.w	r1, r1, r2
d0046c12:	4414      	add	r4, r2
d0046c14:	e6bd      	b.n	d0046992 <__adddf3+0xe6>
d0046c16:	bf00      	nop
d0046c18:	2e706661 	.word	0x2e706661
d0046c1c:	00646f6d 	.word	0x00646f6d
d0046c20:	616c7369 	.word	0x616c7369
d0046c24:	2e78646e 	.word	0x2e78646e
d0046c28:	64336273 	.word	0x64336273
d0046c2c:	00000000 	.word	0x00000000
d0046c30:	72726163 	.word	0x72726163
d0046c34:	2e726569 	.word	0x2e726569
d0046c38:	64336273 	.word	0x64336273
d0046c3c:	00000000 	.word	0x00000000
d0046c40:	ff5516e3 	.word	0xff5516e3
d0046c44:	ffffffff 	.word	0xffffffff
d0046c48:	ffff0000 	.word	0xffff0000
d0046c4c:	ff00ff00 	.word	0xff00ff00
d0046c50:	ff0000ff 	.word	0xff0000ff
d0046c54:	ffffff00 	.word	0xffffff00
d0046c58:	ffff00ff 	.word	0xffff00ff
d0046c5c:	ff00ffff 	.word	0xff00ffff
d0046c60:	ff808080 	.word	0xff808080
d0046c64:	ffff8000 	.word	0xffff8000
d0046c68:	ff8000ff 	.word	0xff8000ff
d0046c6c:	ff0080ff 	.word	0xff0080ff
d0046c70:	ff80ff00 	.word	0xff80ff00
d0046c74:	ffff0080 	.word	0xffff0080
d0046c78:	ff00ff80 	.word	0xff00ff80
d0046c7c:	ffc0c0c0 	.word	0xffc0c0c0
d0046c80:	3f800000 	.word	0x3f800000
d0046c84:	3f400000 	.word	0x3f400000
d0046c88:	3f0ccccd 	.word	0x3f0ccccd
d0046c8c:	3eb33333 	.word	0x3eb33333
d0046c90:	3e4ccccd 	.word	0x3e4ccccd
d0046c94:	bf800000 	.word	0xbf800000
d0046c98:	bf000000 	.word	0xbf000000
d0046c9c:	3e99999a 	.word	0x3e99999a

d0046ca0 <bayer4x4>:
d0046ca0:	0a020800 060e040c 09010b03 050d070f     ................
	...
d0046cd8:	3f800000 00000000 00000000 00000000     ...?............
d0046ce8:	3f800000 00000000 00000000 00000000     ...?............
d0046cf8:	3f800000 3a8312c5 3c23d70a 447a0000     ...?...:..#<..zD
	...

d0046d20 <__sf_fake_stderr>:
	...

d0046d40 <__sf_fake_stdin>:
	...

d0046d60 <__sf_fake_stdout>:
	...

d0046d80 <_global_impure_ptr>:
d0046d80:	d004753c 00000000                       <u......

d0046d88 <__exp2f_data>:
d0046d88:	00000000 3ff00000 d3158574 3fefd9b0     .......?t......?
d0046d98:	6cf9890f 3fefb558 d0125b51 3fef9301     ...lX..?Q[.....?
d0046da8:	3c7d517b 3fef72b8 3168b9aa 3fef5487     {Q}<.r.?..h1.T.?
d0046db8:	6e756238 3fef387a f51fdee1 3fef1e9d     8bunz8.?.......?
d0046dc8:	0a31b715 3fef06fe 373aa9cb 3feef1a7     ..1....?..:7...?
d0046dd8:	4c123422 3feedea6 6061892d 3feece08     "4.L...?-.a`...?
d0046de8:	d5362a27 3feebfda 569d4f82 3feeb42b     '*6....?.O.V+..?
d0046df8:	dd485429 3feeab07 b03a5585 3feea47e     )TH....?.U:.~..?
d0046e08:	667f3bcd 3feea09e e8ec5f74 3fee9f75     .;.f...?t_..u..?
d0046e18:	73eb0187 3feea114 994cce13 3feea589     ...s...?..L....?
d0046e28:	422aa0db 3feeace5 b0cdc5e5 3feeb737     ..*B...?....7..?
d0046e38:	82a3f090 3feec491 b23e255d 3feed503     .......?]%>....?
d0046e48:	995ad3ad 3feee89f f2fb5e47 3feeff76     ..Z....?G^..v..?
d0046e58:	dd85529c 3fef199b dcef9069 3fef3720     .R.....?i... 7.?
d0046e68:	dcfba487 3fef5818 337b9b5f 3fef7c97     .....X.?_.{3.|.?
d0046e78:	a2a490da 3fefa4af 5b6e4540 3fefd076     .......?@En[v..?
d0046e88:	00000000 42e80000 4b912394 3fac6af8     .......B.#.K.j.?
d0046e98:	50fac4f3 3fcebfce ff0c52d6 3fe62e42     ...P...?.R..B..?
d0046ea8:	00000000 43380000 652b82fe 40471547     ......8C..+eG.G@
d0046eb8:	4b912394 3ebc6af8 50fac4f3 3f2ebfce     .#.K.j.>...P...?
d0046ec8:	ff0c52d6 3f962e42                       .R..B..?

d0046ed0 <__logf_data>:
d0046ed0:	79f8f3be 3ff661ec 808caade bfd57bf7     ...y.a.?.....{..
d0046ee0:	4aaf883d 3ff571ed a7c06ddb bfd2bef0     =..J.q.?.m......
d0046ef0:	f0f010b0 3ff49539 7f513a67 bfd01eae     ....9..?g:Q.....
d0046f00:	b0b80385 3ff3c995 a68224e9 bfcb31d8     .......?.$...1..
d0046f10:	0c8864a5 3ff30d19 0ac07758 bfc6574f     .d.....?Xw..OW..
d0046f20:	7b0b8ea0 3ff25e22 c79c8100 bfc1aa2b     ...{"^.?....+...
d0046f30:	4a1a343f 3ff1bb4a ce8c0e5e bfba4e76     ?4.JJ..?^...vN..
d0046f40:	f08ae5ba 3ff12358 5a611ccc bfb1973c     ....X#.?..aZ<...
d0046f50:	419900a7 3ff0953f 38e10c1e bfa252f4     ...A?..?...8.R..
d0046f60:	00000000 3ff00000 00000000 00000000     .......?........
d0046f70:	fd9a47ac 3fee608c 5df25984 3faaa5aa     .G...`.?.Y.]...?
d0046f80:	1f026aa0 3feca4b3 aa362eb4 3fbc5e53     .j.....?..6.S^.?
d0046f90:	576afce6 3feb2036 7720db08 3fc526e5     ..jW6 .?.. w.&.?
d0046fa0:	63a1aa2d 3fe9c2d1 0d224770 3fcbc286     -..c...?pG"....?
d0046fb0:	037841ed 3fe886e6 c8a07ee1 3fd1058b     .Ax....?.~.....?
d0046fc0:	f5534862 3fe767dc 57b6ee09 3fd40430     bHS..g.?...W0..?
d0046fd0:	fefa39ef 3fe62e42 48b88334 bfd00ea3     .9..B..?4..H....
d0046fe0:	0be00b6a 3fd5575b f20a4123 bfdffffe     j...[W.?#A......

d0046ff0 <__inv_pio4>:
d0046ff0:	000000a2 0000a2f9 00a2f983 a2f9836e     ............n...
d0047000:	f9836e4e 836e4e44 6e4e4415 4e441529     Nn..DNn..DNn).DN
d0047010:	441529fc 1529fc27 29fc2757 fc2757d1     .).D'.).W'.).W'.
d0047020:	2757d1f5 57d1f534 d1f534dd f534ddc0     ..W'4..W.4....4.
d0047030:	34ddc0db ddc0db62 c0db6295 db629599     ...4b....b....b.
d0047040:	6295993c 95993c43 993c4390 3c439041     <..bC<...C<.A.C<

d0047050 <__sincosf_table>:
d0047050:	00000000 3ff00000 00000000 bff00000     .......?........
d0047060:	00000000 bff00000 00000000 3ff00000     ...............?
d0047070:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d0047080:	00000000 3ff00000 fd0c621c bfdfffff     .......?.b......
d0047090:	e1068f19 3fa55553 e89a359d bf56c087     ....SU.?.5....V.
d00470a0:	027bf8c3 3ef99343 5995a603 bfc55554     ..{.C..>...YTU..
d00470b0:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).
d00470c0:	00000000 3ff00000 00000000 bff00000     .......?........
d00470d0:	00000000 bff00000 00000000 3ff00000     ...............?
d00470e0:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d00470f0:	00000000 bff00000 fd0c621c 3fdfffff     .........b.....?
d0047100:	e1068f19 bfa55553 e89a359d 3f56c087     ....SU...5....V?
d0047110:	027bf8c3 bef99343 5995a603 bfc55554     ..{.C......YTU..
d0047120:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).

Disassembly of section .init:

d0047130 <_init>:
d0047130:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0047132:	bf00      	nop

Disassembly of section .fini:

d0047134 <_fini>:
d0047134:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0047136:	bf00      	nop
