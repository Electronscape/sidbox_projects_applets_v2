
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
d004001e:	f000 fe57 	bl	d0040cd0 <setbuf>
d0040022:	6833      	ldr	r3, [r6, #0]
d0040024:	2100      	movs	r1, #0
d0040026:	68d8      	ldr	r0, [r3, #12]
d0040028:	f000 fe52 	bl	d0040cd0 <setbuf>
d004002c:	4629      	mov	r1, r5
d004002e:	4620      	mov	r0, r4
d0040030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0040034:	f000 baf4 	b.w	d0040620 <main>
d0040038:	d004141c 	.word	0xd004141c

d004003c <memset>:
d004003c:	4402      	add	r2, r0
d004003e:	4603      	mov	r3, r0
d0040040:	4293      	cmp	r3, r2
d0040042:	d100      	bne.n	d0040046 <memset+0xa>
d0040044:	4770      	bx	lr
d0040046:	f803 1b01 	strb.w	r1, [r3], #1
d004004a:	e7f9      	b.n	d0040040 <memset+0x4>

d004004c <LoadPPB>:
d004004c:	b5f0      	push	{r4, r5, r6, r7, lr}
d004004e:	4c28      	ldr	r4, [pc, #160]	; (d00400f0 <LoadPPB+0xa4>)
d0040050:	2600      	movs	r6, #0
d0040052:	f2ad 4d1c 	subw	sp, sp, #1052	; 0x41c
d0040056:	460f      	mov	r7, r1
d0040058:	7923      	ldrb	r3, [r4, #4]
d004005a:	4601      	mov	r1, r0
d004005c:	7965      	ldrb	r5, [r4, #5]
d004005e:	4630      	mov	r0, r6
d0040060:	f894 c006 	ldrb.w	ip, [r4, #6]
d0040064:	2201      	movs	r2, #1
d0040066:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d004006a:	79e5      	ldrb	r5, [r4, #7]
d004006c:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0040070:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d0040074:	681b      	ldr	r3, [r3, #0]
d0040076:	681b      	ldr	r3, [r3, #0]
d0040078:	4798      	blx	r3
d004007a:	7925      	ldrb	r5, [r4, #4]
d004007c:	7961      	ldrb	r1, [r4, #5]
d004007e:	4630      	mov	r0, r6
d0040080:	79a2      	ldrb	r2, [r4, #6]
d0040082:	ab01      	add	r3, sp, #4
d0040084:	ea45 2501 	orr.w	r5, r5, r1, lsl #8
d0040088:	f894 c007 	ldrb.w	ip, [r4, #7]
d004008c:	a902      	add	r1, sp, #8
d004008e:	ea45 4502 	orr.w	r5, r5, r2, lsl #16
d0040092:	f44f 6282 	mov.w	r2, #1040	; 0x410
d0040096:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d004009a:	682d      	ldr	r5, [r5, #0]
d004009c:	68ad      	ldr	r5, [r5, #8]
d004009e:	47a8      	blx	r5
d00400a0:	7925      	ldrb	r5, [r4, #4]
d00400a2:	7962      	ldrb	r2, [r4, #5]
d00400a4:	4639      	mov	r1, r7
d00400a6:	79a7      	ldrb	r7, [r4, #6]
d00400a8:	ab01      	add	r3, sp, #4
d00400aa:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d00400ae:	f894 c007 	ldrb.w	ip, [r4, #7]
d00400b2:	f89d 2010 	ldrb.w	r2, [sp, #16]
d00400b6:	4630      	mov	r0, r6
d00400b8:	ea45 4507 	orr.w	r5, r5, r7, lsl #16
d00400bc:	9f03      	ldr	r7, [sp, #12]
d00400be:	0612      	lsls	r2, r2, #24
d00400c0:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d00400c4:	ea42 2217 	orr.w	r2, r2, r7, lsr #8
d00400c8:	682d      	ldr	r5, [r5, #0]
d00400ca:	68ad      	ldr	r5, [r5, #8]
d00400cc:	47a8      	blx	r5
d00400ce:	7923      	ldrb	r3, [r4, #4]
d00400d0:	7962      	ldrb	r2, [r4, #5]
d00400d2:	4630      	mov	r0, r6
d00400d4:	79a1      	ldrb	r1, [r4, #6]
d00400d6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00400da:	79e2      	ldrb	r2, [r4, #7]
d00400dc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00400e0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00400e4:	681b      	ldr	r3, [r3, #0]
d00400e6:	68db      	ldr	r3, [r3, #12]
d00400e8:	4798      	blx	r3
d00400ea:	f20d 4d1c 	addw	sp, sp, #1052	; 0x41c
d00400ee:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00400f0:	2001f000 	.word	0x2001f000

d00400f4 <initMalloc>:
d00400f4:	4902      	ldr	r1, [pc, #8]	; (d0040100 <initMalloc+0xc>)
d00400f6:	4b03      	ldr	r3, [pc, #12]	; (d0040104 <initMalloc+0x10>)
d00400f8:	4a03      	ldr	r2, [pc, #12]	; (d0040108 <initMalloc+0x14>)
d00400fa:	1a5b      	subs	r3, r3, r1
d00400fc:	6013      	str	r3, [r2, #0]
d00400fe:	4770      	bx	lr
d0040100:	d00445f0 	.word	0xd00445f0
d0040104:	d0600000 	.word	0xd0600000
d0040108:	d0042448 	.word	0xd0042448

d004010c <_write_r>:
d004010c:	3901      	subs	r1, #1
d004010e:	2901      	cmp	r1, #1
d0040110:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0040112:	d81f      	bhi.n	d0040154 <_write_r+0x48>
d0040114:	b1e2      	cbz	r2, d0040150 <_write_r+0x44>
d0040116:	461c      	mov	r4, r3
d0040118:	b1d3      	cbz	r3, d0040150 <_write_r+0x44>
d004011a:	4d12      	ldr	r5, [pc, #72]	; (d0040164 <_write_r+0x58>)
d004011c:	682e      	ldr	r6, [r5, #0]
d004011e:	b9ae      	cbnz	r6, d004014c <_write_r+0x40>
d0040120:	4f11      	ldr	r7, [pc, #68]	; (d0040168 <_write_r+0x5c>)
d0040122:	2301      	movs	r3, #1
d0040124:	4611      	mov	r1, r2
d0040126:	4630      	mov	r0, r6
d0040128:	602b      	str	r3, [r5, #0]
d004012a:	4622      	mov	r2, r4
d004012c:	7a3b      	ldrb	r3, [r7, #8]
d004012e:	f897 c009 	ldrb.w	ip, [r7, #9]
d0040132:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d0040136:	f897 c00a 	ldrb.w	ip, [r7, #10]
d004013a:	7aff      	ldrb	r7, [r7, #11]
d004013c:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0040140:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d0040144:	681b      	ldr	r3, [r3, #0]
d0040146:	685b      	ldr	r3, [r3, #4]
d0040148:	4798      	blx	r3
d004014a:	602e      	str	r6, [r5, #0]
d004014c:	4620      	mov	r0, r4
d004014e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0040150:	2000      	movs	r0, #0
d0040152:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0040154:	f000 fcf6 	bl	d0040b44 <__errno>
d0040158:	2209      	movs	r2, #9
d004015a:	4603      	mov	r3, r0
d004015c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0040160:	601a      	str	r2, [r3, #0]
d0040162:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0040164:	d0041ca4 	.word	0xd0041ca4
d0040168:	2001f000 	.word	0x2001f000

d004016c <_read>:
d004016c:	b508      	push	{r3, lr}
d004016e:	f000 fce9 	bl	d0040b44 <__errno>
d0040172:	2258      	movs	r2, #88	; 0x58
d0040174:	4603      	mov	r3, r0
d0040176:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004017a:	601a      	str	r2, [r3, #0]
d004017c:	bd08      	pop	{r3, pc}
d004017e:	bf00      	nop

d0040180 <_close>:
d0040180:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0040184:	4770      	bx	lr
d0040186:	bf00      	nop

d0040188 <_fstat>:
d0040188:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d004018c:	2000      	movs	r0, #0
d004018e:	604b      	str	r3, [r1, #4]
d0040190:	4770      	bx	lr
d0040192:	bf00      	nop

d0040194 <_lseek>:
d0040194:	2000      	movs	r0, #0
d0040196:	4770      	bx	lr

d0040198 <_sbrk_r>:
d0040198:	4b0c      	ldr	r3, [pc, #48]	; (d00401cc <_sbrk_r+0x34>)
d004019a:	4a0d      	ldr	r2, [pc, #52]	; (d00401d0 <_sbrk_r+0x38>)
d004019c:	6818      	ldr	r0, [r3, #0]
d004019e:	b510      	push	{r4, lr}
d00401a0:	b918      	cbnz	r0, d00401aa <_sbrk_r+0x12>
d00401a2:	1dd0      	adds	r0, r2, #7
d00401a4:	f020 0007 	bic.w	r0, r0, #7
d00401a8:	6018      	str	r0, [r3, #0]
d00401aa:	4401      	add	r1, r0
d00401ac:	4c09      	ldr	r4, [pc, #36]	; (d00401d4 <_sbrk_r+0x3c>)
d00401ae:	42a1      	cmp	r1, r4
d00401b0:	d803      	bhi.n	d00401ba <_sbrk_r+0x22>
d00401b2:	4291      	cmp	r1, r2
d00401b4:	d301      	bcc.n	d00401ba <_sbrk_r+0x22>
d00401b6:	6019      	str	r1, [r3, #0]
d00401b8:	bd10      	pop	{r4, pc}
d00401ba:	f000 fcc3 	bl	d0040b44 <__errno>
d00401be:	220c      	movs	r2, #12
d00401c0:	4603      	mov	r3, r0
d00401c2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00401c6:	601a      	str	r2, [r3, #0]
d00401c8:	bd10      	pop	{r4, pc}
d00401ca:	bf00      	nop
d00401cc:	d0041ca0 	.word	0xd0041ca0
d00401d0:	d00445f0 	.word	0xd00445f0
d00401d4:	d0600000 	.word	0xd0600000

d00401d8 <LoadSFX>:
d00401d8:	b5f0      	push	{r4, r5, r6, r7, lr}
d00401da:	4c40      	ldr	r4, [pc, #256]	; (d00402dc <LoadSFX+0x104>)
d00401dc:	460f      	mov	r7, r1
d00401de:	4601      	mov	r1, r0
d00401e0:	b08f      	sub	sp, #60	; 0x3c
d00401e2:	7925      	ldrb	r5, [r4, #4]
d00401e4:	2201      	movs	r2, #1
d00401e6:	7963      	ldrb	r3, [r4, #5]
d00401e8:	79a0      	ldrb	r0, [r4, #6]
d00401ea:	ea45 2303 	orr.w	r3, r5, r3, lsl #8
d00401ee:	79e5      	ldrb	r5, [r4, #7]
d00401f0:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00401f4:	2000      	movs	r0, #0
d00401f6:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d00401fa:	681b      	ldr	r3, [r3, #0]
d00401fc:	681b      	ldr	r3, [r3, #0]
d00401fe:	4798      	blx	r3
d0040200:	bb00      	cbnz	r0, d0040244 <LoadSFX+0x6c>
d0040202:	7921      	ldrb	r1, [r4, #4]
d0040204:	ab02      	add	r3, sp, #8
d0040206:	7962      	ldrb	r2, [r4, #5]
d0040208:	79a6      	ldrb	r6, [r4, #6]
d004020a:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
d004020e:	79e5      	ldrb	r5, [r4, #7]
d0040210:	a903      	add	r1, sp, #12
d0040212:	ea42 4606 	orr.w	r6, r2, r6, lsl #16
d0040216:	222c      	movs	r2, #44	; 0x2c
d0040218:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d004021c:	682d      	ldr	r5, [r5, #0]
d004021e:	68ad      	ldr	r5, [r5, #8]
d0040220:	47a8      	blx	r5
d0040222:	a803      	add	r0, sp, #12
d0040224:	2204      	movs	r2, #4
d0040226:	492e      	ldr	r1, [pc, #184]	; (d00402e0 <LoadSFX+0x108>)
d0040228:	f000 fc9a 	bl	d0040b60 <memcmp>
d004022c:	b950      	cbnz	r0, d0040244 <LoadSFX+0x6c>
d004022e:	2204      	movs	r2, #4
d0040230:	492c      	ldr	r1, [pc, #176]	; (d00402e4 <LoadSFX+0x10c>)
d0040232:	a805      	add	r0, sp, #20
d0040234:	f000 fc94 	bl	d0040b60 <memcmp>
d0040238:	4605      	mov	r5, r0
d004023a:	b918      	cbnz	r0, d0040244 <LoadSFX+0x6c>
d004023c:	f8bd 3020 	ldrh.w	r3, [sp, #32]
d0040240:	2b01      	cmp	r3, #1
d0040242:	d010      	beq.n	d0040266 <LoadSFX+0x8e>
d0040244:	7923      	ldrb	r3, [r4, #4]
d0040246:	2000      	movs	r0, #0
d0040248:	7962      	ldrb	r2, [r4, #5]
d004024a:	79a1      	ldrb	r1, [r4, #6]
d004024c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040250:	79e2      	ldrb	r2, [r4, #7]
d0040252:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040256:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004025a:	681b      	ldr	r3, [r3, #0]
d004025c:	68db      	ldr	r3, [r3, #12]
d004025e:	4798      	blx	r3
d0040260:	2000      	movs	r0, #0
d0040262:	b00f      	add	sp, #60	; 0x3c
d0040264:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0040266:	9a0d      	ldr	r2, [sp, #52]	; 0x34
d0040268:	4610      	mov	r0, r2
d004026a:	9201      	str	r2, [sp, #4]
d004026c:	f000 fc70 	bl	d0040b50 <malloc>
d0040270:	9a01      	ldr	r2, [sp, #4]
d0040272:	4601      	mov	r1, r0
d0040274:	6038      	str	r0, [r7, #0]
d0040276:	b1f8      	cbz	r0, d00402b8 <LoadSFX+0xe0>
d0040278:	7920      	ldrb	r0, [r4, #4]
d004027a:	ab02      	add	r3, sp, #8
d004027c:	7966      	ldrb	r6, [r4, #5]
d004027e:	f894 c006 	ldrb.w	ip, [r4, #6]
d0040282:	ea40 2606 	orr.w	r6, r0, r6, lsl #8
d0040286:	79e7      	ldrb	r7, [r4, #7]
d0040288:	4628      	mov	r0, r5
d004028a:	ea46 460c 	orr.w	r6, r6, ip, lsl #16
d004028e:	ea46 6607 	orr.w	r6, r6, r7, lsl #24
d0040292:	6836      	ldr	r6, [r6, #0]
d0040294:	68b6      	ldr	r6, [r6, #8]
d0040296:	47b0      	blx	r6
d0040298:	7923      	ldrb	r3, [r4, #4]
d004029a:	7962      	ldrb	r2, [r4, #5]
d004029c:	4628      	mov	r0, r5
d004029e:	79a1      	ldrb	r1, [r4, #6]
d00402a0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00402a4:	79e2      	ldrb	r2, [r4, #7]
d00402a6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00402aa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00402ae:	681b      	ldr	r3, [r3, #0]
d00402b0:	68db      	ldr	r3, [r3, #12]
d00402b2:	4798      	blx	r3
d00402b4:	980d      	ldr	r0, [sp, #52]	; 0x34
d00402b6:	e7d4      	b.n	d0040262 <LoadSFX+0x8a>
d00402b8:	7923      	ldrb	r3, [r4, #4]
d00402ba:	7962      	ldrb	r2, [r4, #5]
d00402bc:	79a5      	ldrb	r5, [r4, #6]
d00402be:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00402c2:	79e2      	ldrb	r2, [r4, #7]
d00402c4:	9001      	str	r0, [sp, #4]
d00402c6:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00402ca:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00402ce:	681b      	ldr	r3, [r3, #0]
d00402d0:	68db      	ldr	r3, [r3, #12]
d00402d2:	4798      	blx	r3
d00402d4:	9901      	ldr	r1, [sp, #4]
d00402d6:	4608      	mov	r0, r1
d00402d8:	e7c3      	b.n	d0040262 <LoadSFX+0x8a>
d00402da:	bf00      	nop
d00402dc:	2001f000 	.word	0x2001f000
d00402e0:	d0041358 	.word	0xd0041358
d00402e4:	d0041360 	.word	0xd0041360

d00402e8 <initAstroids>:
d00402e8:	4848      	ldr	r0, [pc, #288]	; (d004040c <initAstroids+0x124>)
d00402ea:	4b49      	ldr	r3, [pc, #292]	; (d0040410 <initAstroids+0x128>)
d00402ec:	f8df c12c 	ldr.w	ip, [pc, #300]	; d004041c <initAstroids+0x134>
d00402f0:	6819      	ldr	r1, [r3, #0]
d00402f2:	4a48      	ldr	r2, [pc, #288]	; (d0040414 <initAstroids+0x12c>)
d00402f4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00402f8:	f240 2a19 	movw	sl, #537	; 0x219
d00402fc:	f240 1979 	movw	r9, #377	; 0x179
d0040300:	f04f 0bff 	mov.w	fp, #255	; 0xff
d0040304:	f500 78c0 	add.w	r8, r0, #384	; 0x180
d0040308:	f8df e114 	ldr.w	lr, [pc, #276]	; d0040420 <initAstroids+0x138>
d004030c:	4f42      	ldr	r7, [pc, #264]	; (d0040418 <initAstroids+0x130>)
d004030e:	ea81 3141 	eor.w	r1, r1, r1, lsl #13
d0040312:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d0040316:	ea81 1141 	eor.w	r1, r1, r1, lsl #5
d004031a:	ea81 3341 	eor.w	r3, r1, r1, lsl #13
d004031e:	fbae 4501 	umull	r4, r5, lr, r1
d0040322:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0040326:	0a2d      	lsrs	r5, r5, #8
d0040328:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d004032c:	fb0a 1115 	mls	r1, sl, r5, r1
d0040330:	fbac 5403 	umull	r5, r4, ip, r3
d0040334:	f1a1 053c 	sub.w	r5, r1, #60	; 0x3c
d0040338:	1b19      	subs	r1, r3, r4
d004033a:	8005      	strh	r5, [r0, #0]
d004033c:	eb04 0151 	add.w	r1, r4, r1, lsr #1
d0040340:	0a09      	lsrs	r1, r1, #8
d0040342:	fb09 3111 	mls	r1, r9, r1, r3
d0040346:	393c      	subs	r1, #60	; 0x3c
d0040348:	8041      	strh	r1, [r0, #2]
d004034a:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d004034e:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0040352:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0040356:	fba2 4103 	umull	r4, r1, r2, r3
d004035a:	1a5c      	subs	r4, r3, r1
d004035c:	eb01 0154 	add.w	r1, r1, r4, lsr #1
d0040360:	0889      	lsrs	r1, r1, #2
d0040362:	ebc1 01c1 	rsb	r1, r1, r1, lsl #3
d0040366:	1a59      	subs	r1, r3, r1
d0040368:	3903      	subs	r1, #3
d004036a:	b209      	sxth	r1, r1
d004036c:	2900      	cmp	r1, #0
d004036e:	d0ec      	beq.n	d004034a <initAstroids+0x62>
d0040370:	8081      	strh	r1, [r0, #4]
d0040372:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d0040376:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d004037a:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d004037e:	fba2 4103 	umull	r4, r1, r2, r3
d0040382:	1a5c      	subs	r4, r3, r1
d0040384:	eb01 0154 	add.w	r1, r1, r4, lsr #1
d0040388:	0889      	lsrs	r1, r1, #2
d004038a:	ebc1 01c1 	rsb	r1, r1, r1, lsl #3
d004038e:	1a59      	subs	r1, r3, r1
d0040390:	3903      	subs	r1, #3
d0040392:	b209      	sxth	r1, r1
d0040394:	2900      	cmp	r1, #0
d0040396:	d0ec      	beq.n	d0040372 <initAstroids+0x8a>
d0040398:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d004039c:	80c1      	strh	r1, [r0, #6]
d004039e:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d00403a2:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d00403a6:	ea83 3543 	eor.w	r5, r3, r3, lsl #13
d00403aa:	fba7 4103 	umull	r4, r1, r7, r3
d00403ae:	ea85 4555 	eor.w	r5, r5, r5, lsr #17
d00403b2:	0909      	lsrs	r1, r1, #4
d00403b4:	ea85 1545 	eor.w	r5, r5, r5, lsl #5
d00403b8:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d00403bc:	fba7 4605 	umull	r4, r6, r7, r5
d00403c0:	ea85 3445 	eor.w	r4, r5, r5, lsl #13
d00403c4:	eba3 01c1 	sub.w	r1, r3, r1, lsl #3
d00403c8:	f026 0301 	bic.w	r3, r6, #1
d00403cc:	ea84 4454 	eor.w	r4, r4, r4, lsr #17
d00403d0:	7201      	strb	r1, [r0, #8]
d00403d2:	eb03 0356 	add.w	r3, r3, r6, lsr #1
d00403d6:	ea84 1144 	eor.w	r1, r4, r4, lsl #5
d00403da:	1aeb      	subs	r3, r5, r3
d00403dc:	3301      	adds	r3, #1
d00403de:	7243      	strb	r3, [r0, #9]
d00403e0:	07e3      	lsls	r3, r4, #31
d00403e2:	d40a      	bmi.n	d00403fa <initAstroids+0x112>
d00403e4:	f04f 0301 	mov.w	r3, #1
d00403e8:	300c      	adds	r0, #12
d00403ea:	f800 3c01 	strb.w	r3, [r0, #-1]
d00403ee:	4540      	cmp	r0, r8
d00403f0:	d18d      	bne.n	d004030e <initAstroids+0x26>
d00403f2:	4b07      	ldr	r3, [pc, #28]	; (d0040410 <initAstroids+0x128>)
d00403f4:	6019      	str	r1, [r3, #0]
d00403f6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00403fa:	f880 b00b 	strb.w	fp, [r0, #11]
d00403fe:	300c      	adds	r0, #12
d0040400:	4580      	cmp	r8, r0
d0040402:	d184      	bne.n	d004030e <initAstroids+0x26>
d0040404:	4b02      	ldr	r3, [pc, #8]	; (d0040410 <initAstroids+0x128>)
d0040406:	6019      	str	r1, [r3, #0]
d0040408:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004040c:	d0042454 	.word	0xd0042454
d0040410:	d0041c80 	.word	0xd0041c80
d0040414:	24924925 	.word	0x24924925
d0040418:	aaaaaaab 	.word	0xaaaaaaab
d004041c:	5babcc65 	.word	0x5babcc65
d0040420:	7a0a7ce7 	.word	0x7a0a7ce7

d0040424 <proc_astroids>:
d0040424:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040428:	4c3e      	ldr	r4, [pc, #248]	; (d0040524 <proc_astroids+0x100>)
d004042a:	b085      	sub	sp, #20
d004042c:	f04f 0800 	mov.w	r8, #0
d0040430:	4d3d      	ldr	r5, [pc, #244]	; (d0040528 <proc_astroids+0x104>)
d0040432:	f44f 79a0 	mov.w	r9, #320	; 0x140
d0040436:	f504 77c0 	add.w	r7, r4, #384	; 0x180
d004043a:	4e3c      	ldr	r6, [pc, #240]	; (d004052c <proc_astroids+0x108>)
d004043c:	e034      	b.n	d00404a8 <proc_astroids+0x84>
d004043e:	f64f 73c0 	movw	r3, #65472	; 0xffc0
d0040442:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d0040446:	8023      	strh	r3, [r4, #0]
d0040448:	dd57      	ble.n	d00404fa <proc_astroids+0xd6>
d004044a:	f9b4 1000 	ldrsh.w	r1, [r4]
d004044e:	f64f 73c0 	movw	r3, #65472	; 0xffc0
d0040452:	f111 0f40 	cmn.w	r1, #64	; 0x40
d0040456:	8063      	strh	r3, [r4, #2]
d0040458:	db4c      	blt.n	d00404f4 <proc_astroids+0xd0>
d004045a:	f06f 023f 	mvn.w	r2, #63	; 0x3f
d004045e:	7b2b      	ldrb	r3, [r5, #12]
d0040460:	f04f 0c40 	mov.w	ip, #64	; 0x40
d0040464:	f895 a00d 	ldrb.w	sl, [r5, #13]
d0040468:	f04f 0ec0 	mov.w	lr, #192	; 0xc0
d004046c:	7ba8      	ldrb	r0, [r5, #14]
d004046e:	340c      	adds	r4, #12
d0040470:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0040474:	f895 b00f 	ldrb.w	fp, [r5, #15]
d0040478:	f814 ac04 	ldrb.w	sl, [r4, #-4]
d004047c:	ea43 4000 	orr.w	r0, r3, r0, lsl #16
d0040480:	f44f 7300 	mov.w	r3, #512	; 0x200
d0040484:	ea40 6b0b 	orr.w	fp, r0, fp, lsl #24
d0040488:	6830      	ldr	r0, [r6, #0]
d004048a:	f8db b004 	ldr.w	fp, [fp, #4]
d004048e:	f8cd a00c 	str.w	sl, [sp, #12]
d0040492:	f8cd c008 	str.w	ip, [sp, #8]
d0040496:	f8cd c004 	str.w	ip, [sp, #4]
d004049a:	f8cd e000 	str.w	lr, [sp]
d004049e:	f8db a010 	ldr.w	sl, [fp, #16]
d00404a2:	47d0      	blx	sl
d00404a4:	42bc      	cmp	r4, r7
d00404a6:	d03a      	beq.n	d004051e <proc_astroids+0xfa>
d00404a8:	7aa3      	ldrb	r3, [r4, #10]
d00404aa:	7a62      	ldrb	r2, [r4, #9]
d00404ac:	3301      	adds	r3, #1
d00404ae:	b2db      	uxtb	r3, r3
d00404b0:	429a      	cmp	r2, r3
d00404b2:	72a3      	strb	r3, [r4, #10]
d00404b4:	d20c      	bcs.n	d00404d0 <proc_astroids+0xac>
d00404b6:	7a23      	ldrb	r3, [r4, #8]
d00404b8:	7ae2      	ldrb	r2, [r4, #11]
d00404ba:	f884 800a 	strb.w	r8, [r4, #10]
d00404be:	4413      	add	r3, r2
d00404c0:	b25b      	sxtb	r3, r3
d00404c2:	2b00      	cmp	r3, #0
d00404c4:	db28      	blt.n	d0040518 <proc_astroids+0xf4>
d00404c6:	2b17      	cmp	r3, #23
d00404c8:	bfd4      	ite	le
d00404ca:	7223      	strble	r3, [r4, #8]
d00404cc:	f884 8008 	strbgt.w	r8, [r4, #8]
d00404d0:	8823      	ldrh	r3, [r4, #0]
d00404d2:	88a0      	ldrh	r0, [r4, #4]
d00404d4:	8862      	ldrh	r2, [r4, #2]
d00404d6:	88e1      	ldrh	r1, [r4, #6]
d00404d8:	4403      	add	r3, r0
d00404da:	440a      	add	r2, r1
d00404dc:	b21b      	sxth	r3, r3
d00404de:	b212      	sxth	r2, r2
d00404e0:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d00404e4:	8023      	strh	r3, [r4, #0]
d00404e6:	8062      	strh	r2, [r4, #2]
d00404e8:	dca9      	bgt.n	d004043e <proc_astroids+0x1a>
d00404ea:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d00404ee:	dcac      	bgt.n	d004044a <proc_astroids+0x26>
d00404f0:	3340      	adds	r3, #64	; 0x40
d00404f2:	da02      	bge.n	d00404fa <proc_astroids+0xd6>
d00404f4:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d00404f8:	8023      	strh	r3, [r4, #0]
d00404fa:	f9b4 2002 	ldrsh.w	r2, [r4, #2]
d00404fe:	f112 0f40 	cmn.w	r2, #64	; 0x40
d0040502:	da06      	bge.n	d0040512 <proc_astroids+0xee>
d0040504:	f44f 72a0 	mov.w	r2, #320	; 0x140
d0040508:	f9b4 1000 	ldrsh.w	r1, [r4]
d004050c:	f8a4 9002 	strh.w	r9, [r4, #2]
d0040510:	e7a5      	b.n	d004045e <proc_astroids+0x3a>
d0040512:	f9b4 1000 	ldrsh.w	r1, [r4]
d0040516:	e7a2      	b.n	d004045e <proc_astroids+0x3a>
d0040518:	2317      	movs	r3, #23
d004051a:	7223      	strb	r3, [r4, #8]
d004051c:	e7d8      	b.n	d00404d0 <proc_astroids+0xac>
d004051e:	b005      	add	sp, #20
d0040520:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040524:	d0042454 	.word	0xd0042454
d0040528:	2001f000 	.word	0x2001f000
d004052c:	d00425d8 	.word	0xd00425d8

d0040530 <sbx_init_worms>:
d0040530:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040534:	2800      	cmp	r0, #0
d0040536:	4c36      	ldr	r4, [pc, #216]	; (d0040610 <sbx_init_worms+0xe0>)
d0040538:	f04f 0900 	mov.w	r9, #0
d004053c:	f504 68f0 	add.w	r8, r4, #1920	; 0x780
d0040540:	bf08      	it	eq
d0040542:	f04f 30a5 	moveq.w	r0, #2779096485	; 0xa5a5a5a5
d0040546:	ea80 3040 	eor.w	r0, r0, r0, lsl #13
d004054a:	2600      	movs	r6, #0
d004054c:	4623      	mov	r3, r4
d004054e:	f1a4 02a4 	sub.w	r2, r4, #164	; 0xa4
d0040552:	ea80 4050 	eor.w	r0, r0, r0, lsr #17
d0040556:	4635      	mov	r5, r6
d0040558:	ea80 1c40 	eor.w	ip, r0, r0, lsl #5
d004055c:	482d      	ldr	r0, [pc, #180]	; (d0040614 <sbx_init_worms+0xe4>)
d004055e:	ea8c 374c 	eor.w	r7, ip, ip, lsl #13
d0040562:	fba0 0a0c 	umull	r0, sl, r0, ip
d0040566:	482c      	ldr	r0, [pc, #176]	; (d0040618 <sbx_init_worms+0xe8>)
d0040568:	ea87 4757 	eor.w	r7, r7, r7, lsr #17
d004056c:	ea4f 2a1a 	mov.w	sl, sl, lsr #8
d0040570:	ea87 1747 	eor.w	r7, r7, r7, lsl #5
d0040574:	ea87 3b47 	eor.w	fp, r7, r7, lsl #13
d0040578:	fba0 e007 	umull	lr, r0, r0, r7
d004057c:	ea8b 4b5b 	eor.w	fp, fp, fp, lsr #17
d0040580:	0a00      	lsrs	r0, r0, #8
d0040582:	ea8b 1b4b 	eor.w	fp, fp, fp, lsl #5
d0040586:	eb00 1000 	add.w	r0, r0, r0, lsl #4
d004058a:	ea8b 3e4b 	eor.w	lr, fp, fp, lsl #13
d004058e:	f804 bca4 	strb.w	fp, [r4, #-164]
d0040592:	ebca 0bca 	rsb	fp, sl, sl, lsl #3
d0040596:	eb00 1000 	add.w	r0, r0, r0, lsl #4
d004059a:	ea8e 4e5e 	eor.w	lr, lr, lr, lsr #17
d004059e:	eb0a 1a8b 	add.w	sl, sl, fp, lsl #6
d00405a2:	1a3f      	subs	r7, r7, r0
d00405a4:	ea8e 104e 	eor.w	r0, lr, lr, lsl #5
d00405a8:	f00e 0e03 	and.w	lr, lr, #3
d00405ac:	ebac 0c0a 	sub.w	ip, ip, sl
d00405b0:	3708      	adds	r7, #8
d00405b2:	ea80 3040 	eor.w	r0, r0, r0, lsl #13
d00405b6:	f10e 0e02 	add.w	lr, lr, #2
d00405ba:	f10c 0c08 	add.w	ip, ip, #8
d00405be:	b23f      	sxth	r7, r7
d00405c0:	ea80 4050 	eor.w	r0, r0, r0, lsr #17
d00405c4:	f804 eca3 	strb.w	lr, [r4, #-163]
d00405c8:	fa0f fc8c 	sxth.w	ip, ip
d00405cc:	f367 060f 	bfi	r6, r7, #0, #16
d00405d0:	f000 0e0f 	and.w	lr, r0, #15
d00405d4:	ea80 1040 	eor.w	r0, r0, r0, lsl #5
d00405d8:	f36c 050f 	bfi	r5, ip, #0, #16
d00405dc:	f367 461f 	bfi	r6, r7, #16, #16
d00405e0:	448e      	add	lr, r1
d00405e2:	f824 7ca6 	strh.w	r7, [r4, #-166]
d00405e6:	f36c 451f 	bfi	r5, ip, #16, #16
d00405ea:	f824 cca8 	strh.w	ip, [r4, #-168]
d00405ee:	f804 eca2 	strb.w	lr, [r4, #-162]
d00405f2:	f803 9950 	strb.w	r9, [r3], #-80
d00405f6:	f842 5f04 	str.w	r5, [r2, #4]!
d00405fa:	f843 6b04 	str.w	r6, [r3], #4
d00405fe:	429c      	cmp	r4, r3
d0040600:	d1f9      	bne.n	d00405f6 <sbx_init_worms+0xc6>
d0040602:	34c0      	adds	r4, #192	; 0xc0
d0040604:	4544      	cmp	r4, r8
d0040606:	d19e      	bne.n	d0040546 <sbx_init_worms+0x16>
d0040608:	4b04      	ldr	r3, [pc, #16]	; (d004061c <sbx_init_worms+0xec>)
d004060a:	6018      	str	r0, [r3, #0]
d004060c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040610:	d0041d68 	.word	0xd0041d68
d0040614:	91f5bcb9 	.word	0x91f5bcb9
d0040618:	e2c4a689 	.word	0xe2c4a689
d004061c:	d0041c80 	.word	0xd0041c80

d0040620 <main>:
d0040620:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040624:	4cb1      	ldr	r4, [pc, #708]	; (d00408ec <main+0x2cc>)
d0040626:	b083      	sub	sp, #12
d0040628:	f44f 3000 	mov.w	r0, #131072	; 0x20000
d004062c:	2601      	movs	r6, #1
d004062e:	7823      	ldrb	r3, [r4, #0]
d0040630:	f04f 0900 	mov.w	r9, #0
d0040634:	7862      	ldrb	r2, [r4, #1]
d0040636:	2582      	movs	r5, #130	; 0x82
d0040638:	78a1      	ldrb	r1, [r4, #2]
d004063a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004063e:	78e2      	ldrb	r2, [r4, #3]
d0040640:	4fab      	ldr	r7, [pc, #684]	; (d00408f0 <main+0x2d0>)
d0040642:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040646:	f8df a2c4 	ldr.w	sl, [pc, #708]	; d004090c <main+0x2ec>
d004064a:	f8df b2c4 	ldr.w	fp, [pc, #708]	; d0040910 <main+0x2f0>
d004064e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040652:	681b      	ldr	r3, [r3, #0]
d0040654:	4798      	blx	r3
d0040656:	f7ff fd4d 	bl	d00400f4 <initMalloc>
d004065a:	7b23      	ldrb	r3, [r4, #12]
d004065c:	7b62      	ldrb	r2, [r4, #13]
d004065e:	2190      	movs	r1, #144	; 0x90
d0040660:	f894 c00e 	ldrb.w	ip, [r4, #14]
d0040664:	20dc      	movs	r0, #220	; 0xdc
d0040666:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004066a:	7be2      	ldrb	r2, [r4, #15]
d004066c:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0040670:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040674:	681b      	ldr	r3, [r3, #0]
d0040676:	68db      	ldr	r3, [r3, #12]
d0040678:	4798      	blx	r3
d004067a:	7b20      	ldrb	r0, [r4, #12]
d004067c:	7b61      	ldrb	r1, [r4, #13]
d004067e:	f04f 0c02 	mov.w	ip, #2
d0040682:	7ba2      	ldrb	r2, [r4, #14]
d0040684:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0040688:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
d004068c:	7be1      	ldrb	r1, [r4, #15]
d004068e:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
d0040692:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0040696:	ea40 6001 	orr.w	r0, r0, r1, lsl #24
d004069a:	4619      	mov	r1, r3
d004069c:	f8d0 e000 	ldr.w	lr, [r0]
d00406a0:	4610      	mov	r0, r2
d00406a2:	f8cd c000 	str.w	ip, [sp]
d00406a6:	f8de 8010 	ldr.w	r8, [lr, #16]
d00406aa:	47c0      	blx	r8
d00406ac:	7c23      	ldrb	r3, [r4, #16]
d00406ae:	7c62      	ldrb	r2, [r4, #17]
d00406b0:	f44f 7000 	mov.w	r0, #512	; 0x200
d00406b4:	7ca1      	ldrb	r1, [r4, #18]
d00406b6:	46c8      	mov	r8, r9
d00406b8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00406bc:	7ce2      	ldrb	r2, [r4, #19]
d00406be:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00406c2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00406c6:	681b      	ldr	r3, [r3, #0]
d00406c8:	681b      	ldr	r3, [r3, #0]
d00406ca:	4798      	blx	r3
d00406cc:	7c23      	ldrb	r3, [r4, #16]
d00406ce:	7c62      	ldrb	r2, [r4, #17]
d00406d0:	4639      	mov	r1, r7
d00406d2:	7ca0      	ldrb	r0, [r4, #18]
d00406d4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00406d8:	7ce2      	ldrb	r2, [r4, #19]
d00406da:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00406de:	4885      	ldr	r0, [pc, #532]	; (d00408f4 <main+0x2d4>)
d00406e0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00406e4:	681b      	ldr	r3, [r3, #0]
d00406e6:	685b      	ldr	r3, [r3, #4]
d00406e8:	701e      	strb	r6, [r3, #0]
d00406ea:	f7ff fd75 	bl	d00401d8 <LoadSFX>
d00406ee:	f894 c010 	ldrb.w	ip, [r4, #16]
d00406f2:	f894 e011 	ldrb.w	lr, [r4, #17]
d00406f6:	4602      	mov	r2, r0
d00406f8:	6839      	ldr	r1, [r7, #0]
d00406fa:	464b      	mov	r3, r9
d00406fc:	ea4c 270e 	orr.w	r7, ip, lr, lsl #8
d0040700:	7ca0      	ldrb	r0, [r4, #18]
d0040702:	ea47 4700 	orr.w	r7, r7, r0, lsl #16
d0040706:	7ce0      	ldrb	r0, [r4, #19]
d0040708:	ea47 6700 	orr.w	r7, r7, r0, lsl #24
d004070c:	4648      	mov	r0, r9
d004070e:	68bf      	ldr	r7, [r7, #8]
d0040710:	68ff      	ldr	r7, [r7, #12]
d0040712:	47b8      	blx	r7
d0040714:	7c23      	ldrb	r3, [r4, #16]
d0040716:	7c62      	ldrb	r2, [r4, #17]
d0040718:	f64a 4144 	movw	r1, #44100	; 0xac44
d004071c:	7ca0      	ldrb	r0, [r4, #18]
d004071e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040722:	7ce2      	ldrb	r2, [r4, #19]
d0040724:	4f74      	ldr	r7, [pc, #464]	; (d00408f8 <main+0x2d8>)
d0040726:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004072a:	4648      	mov	r0, r9
d004072c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040730:	689b      	ldr	r3, [r3, #8]
d0040732:	691b      	ldr	r3, [r3, #16]
d0040734:	4798      	blx	r3
d0040736:	7c23      	ldrb	r3, [r4, #16]
d0040738:	7c62      	ldrb	r2, [r4, #17]
d004073a:	4648      	mov	r0, r9
d004073c:	7ca1      	ldrb	r1, [r4, #18]
d004073e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040742:	7ce2      	ldrb	r2, [r4, #19]
d0040744:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040748:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004074c:	689b      	ldr	r3, [r3, #8]
d004074e:	685b      	ldr	r3, [r3, #4]
d0040750:	4798      	blx	r3
d0040752:	7c23      	ldrb	r3, [r4, #16]
d0040754:	7c62      	ldrb	r2, [r4, #17]
d0040756:	21f0      	movs	r1, #240	; 0xf0
d0040758:	7ca0      	ldrb	r0, [r4, #18]
d004075a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004075e:	7ce2      	ldrb	r2, [r4, #19]
d0040760:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0040764:	4648      	mov	r0, r9
d0040766:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004076a:	689b      	ldr	r3, [r3, #8]
d004076c:	695b      	ldr	r3, [r3, #20]
d004076e:	4798      	blx	r3
d0040770:	7c23      	ldrb	r3, [r4, #16]
d0040772:	7c62      	ldrb	r2, [r4, #17]
d0040774:	4649      	mov	r1, r9
d0040776:	7ca0      	ldrb	r0, [r4, #18]
d0040778:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004077c:	7ce2      	ldrb	r2, [r4, #19]
d004077e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0040782:	4648      	mov	r0, r9
d0040784:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040788:	689b      	ldr	r3, [r3, #8]
d004078a:	699b      	ldr	r3, [r3, #24]
d004078c:	4798      	blx	r3
d004078e:	7c23      	ldrb	r3, [r4, #16]
d0040790:	7c60      	ldrb	r0, [r4, #17]
d0040792:	f241 1251 	movw	r2, #4433	; 0x1151
d0040796:	7ca1      	ldrb	r1, [r4, #18]
d0040798:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d004079c:	7ce0      	ldrb	r0, [r4, #19]
d004079e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00407a2:	21c8      	movs	r1, #200	; 0xc8
d00407a4:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d00407a8:	4648      	mov	r0, r9
d00407aa:	689b      	ldr	r3, [r3, #8]
d00407ac:	69db      	ldr	r3, [r3, #28]
d00407ae:	4798      	blx	r3
d00407b0:	7c23      	ldrb	r3, [r4, #16]
d00407b2:	7c62      	ldrb	r2, [r4, #17]
d00407b4:	4631      	mov	r1, r6
d00407b6:	7ca6      	ldrb	r6, [r4, #18]
d00407b8:	4648      	mov	r0, r9
d00407ba:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00407be:	7ce2      	ldrb	r2, [r4, #19]
d00407c0:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d00407c4:	4e4d      	ldr	r6, [pc, #308]	; (d00408fc <main+0x2dc>)
d00407c6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00407ca:	689b      	ldr	r3, [r3, #8]
d00407cc:	6a1b      	ldr	r3, [r3, #32]
d00407ce:	4798      	blx	r3
d00407d0:	7b23      	ldrb	r3, [r4, #12]
d00407d2:	7b62      	ldrb	r2, [r4, #13]
d00407d4:	7ba1      	ldrb	r1, [r4, #14]
d00407d6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00407da:	7be2      	ldrb	r2, [r4, #15]
d00407dc:	4848      	ldr	r0, [pc, #288]	; (d0040900 <main+0x2e0>)
d00407de:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00407e2:	f8c0 9000 	str.w	r9, [r0]
d00407e6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00407ea:	681b      	ldr	r3, [r3, #0]
d00407ec:	6c1b      	ldr	r3, [r3, #64]	; 0x40
d00407ee:	4798      	blx	r3
d00407f0:	7b23      	ldrb	r3, [r4, #12]
d00407f2:	7b62      	ldrb	r2, [r4, #13]
d00407f4:	7ba1      	ldrb	r1, [r4, #14]
d00407f6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00407fa:	7be2      	ldrb	r2, [r4, #15]
d00407fc:	4841      	ldr	r0, [pc, #260]	; (d0040904 <main+0x2e4>)
d00407fe:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040802:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040806:	681b      	ldr	r3, [r3, #0]
d0040808:	6c5b      	ldr	r3, [r3, #68]	; 0x44
d004080a:	4798      	blx	r3
d004080c:	7b23      	ldrb	r3, [r4, #12]
d004080e:	7b62      	ldrb	r2, [r4, #13]
d0040810:	7ba1      	ldrb	r1, [r4, #14]
d0040812:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040816:	7be2      	ldrb	r2, [r4, #15]
d0040818:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004081c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040820:	681b      	ldr	r3, [r3, #0]
d0040822:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d0040824:	4798      	blx	r3
d0040826:	7b23      	ldrb	r3, [r4, #12]
d0040828:	7b62      	ldrb	r2, [r4, #13]
d004082a:	7ba1      	ldrb	r1, [r4, #14]
d004082c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040830:	7be2      	ldrb	r2, [r4, #15]
d0040832:	f8ca 0000 	str.w	r0, [sl]
d0040836:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004083a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004083e:	681b      	ldr	r3, [r3, #0]
d0040840:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d0040842:	4798      	blx	r3
d0040844:	7b23      	ldrb	r3, [r4, #12]
d0040846:	7b62      	ldrb	r2, [r4, #13]
d0040848:	7ba1      	ldrb	r1, [r4, #14]
d004084a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004084e:	7be2      	ldrb	r2, [r4, #15]
d0040850:	6030      	str	r0, [r6, #0]
d0040852:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040856:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004085a:	681b      	ldr	r3, [r3, #0]
d004085c:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d004085e:	4798      	blx	r3
d0040860:	4603      	mov	r3, r0
d0040862:	4829      	ldr	r0, [pc, #164]	; (d0040908 <main+0x2e8>)
d0040864:	6819      	ldr	r1, [r3, #0]
d0040866:	f8cb 3000 	str.w	r3, [fp]
d004086a:	f7ff fbef 	bl	d004004c <LoadPPB>
d004086e:	7b23      	ldrb	r3, [r4, #12]
d0040870:	7b62      	ldrb	r2, [r4, #13]
d0040872:	7ba1      	ldrb	r1, [r4, #14]
d0040874:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040878:	7be2      	ldrb	r2, [r4, #15]
d004087a:	f8db 0000 	ldr.w	r0, [fp]
d004087e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040882:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040886:	681b      	ldr	r3, [r3, #0]
d0040888:	695b      	ldr	r3, [r3, #20]
d004088a:	4798      	blx	r3
d004088c:	7b23      	ldrb	r3, [r4, #12]
d004088e:	7b62      	ldrb	r2, [r4, #13]
d0040890:	7ba1      	ldrb	r1, [r4, #14]
d0040892:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040896:	7be2      	ldrb	r2, [r4, #15]
d0040898:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004089c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00408a0:	685b      	ldr	r3, [r3, #4]
d00408a2:	681b      	ldr	r3, [r3, #0]
d00408a4:	4798      	blx	r3
d00408a6:	7b23      	ldrb	r3, [r4, #12]
d00408a8:	7b62      	ldrb	r2, [r4, #13]
d00408aa:	200c      	movs	r0, #12
d00408ac:	7ba1      	ldrb	r1, [r4, #14]
d00408ae:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00408b2:	7be2      	ldrb	r2, [r4, #15]
d00408b4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00408b8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00408bc:	685b      	ldr	r3, [r3, #4]
d00408be:	68db      	ldr	r3, [r3, #12]
d00408c0:	4798      	blx	r3
d00408c2:	7b26      	ldrb	r6, [r4, #12]
d00408c4:	7b60      	ldrb	r0, [r4, #13]
d00408c6:	2350      	movs	r3, #80	; 0x50
d00408c8:	7ba2      	ldrb	r2, [r4, #14]
d00408ca:	2114      	movs	r1, #20
d00408cc:	ea46 2600 	orr.w	r6, r6, r0, lsl #8
d00408d0:	7be0      	ldrb	r0, [r4, #15]
d00408d2:	ea46 4602 	orr.w	r6, r6, r2, lsl #16
d00408d6:	461a      	mov	r2, r3
d00408d8:	ea46 6600 	orr.w	r6, r6, r0, lsl #24
d00408dc:	4608      	mov	r0, r1
d00408de:	6876      	ldr	r6, [r6, #4]
d00408e0:	6876      	ldr	r6, [r6, #4]
d00408e2:	47b0      	blx	r6
d00408e4:	2150      	movs	r1, #80	; 0x50
d00408e6:	2090      	movs	r0, #144	; 0x90
d00408e8:	464e      	mov	r6, r9
d00408ea:	e013      	b.n	d0040914 <main+0x2f4>
d00408ec:	2001f000 	.word	0x2001f000
d00408f0:	d0042450 	.word	0xd0042450
d00408f4:	d0041368 	.word	0xd0041368
d00408f8:	d0041ca8 	.word	0xd0041ca8
d00408fc:	d00425d4 	.word	0xd00425d4
d0040900:	d0041880 	.word	0xd0041880
d0040904:	d0041480 	.word	0xd0041480
d0040908:	d004137c 	.word	0xd004137c
d004090c:	d00425dc 	.word	0xd00425dc
d0040910:	d004244c 	.word	0xd004244c
d0040914:	f7ff fe0c 	bl	d0040530 <sbx_init_worms>
d0040918:	f7ff fce6 	bl	d00402e8 <initAstroids>
d004091c:	7c23      	ldrb	r3, [r4, #16]
d004091e:	7c62      	ldrb	r2, [r4, #17]
d0040920:	4649      	mov	r1, r9
d0040922:	4884      	ldr	r0, [pc, #528]	; (d0040b34 <main+0x514>)
d0040924:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040928:	7ca2      	ldrb	r2, [r4, #18]
d004092a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004092e:	7ce2      	ldrb	r2, [r4, #19]
d0040930:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040934:	685b      	ldr	r3, [r3, #4]
d0040936:	681b      	ldr	r3, [r3, #0]
d0040938:	4798      	blx	r3
d004093a:	f44f 30c0 	mov.w	r0, #98304	; 0x18000
d004093e:	f000 f907 	bl	d0040b50 <malloc>
d0040942:	4b7d      	ldr	r3, [pc, #500]	; (d0040b38 <main+0x518>)
d0040944:	4601      	mov	r1, r0
d0040946:	487d      	ldr	r0, [pc, #500]	; (d0040b3c <main+0x51c>)
d0040948:	6019      	str	r1, [r3, #0]
d004094a:	f7ff fb7f 	bl	d004004c <LoadPPB>
d004094e:	7b23      	ldrb	r3, [r4, #12]
d0040950:	7b62      	ldrb	r2, [r4, #13]
d0040952:	7ba1      	ldrb	r1, [r4, #14]
d0040954:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040958:	7be2      	ldrb	r2, [r4, #15]
d004095a:	f8da 0000 	ldr.w	r0, [sl]
d004095e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040962:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040966:	681b      	ldr	r3, [r3, #0]
d0040968:	699b      	ldr	r3, [r3, #24]
d004096a:	4798      	blx	r3
d004096c:	7b23      	ldrb	r3, [r4, #12]
d004096e:	7b62      	ldrb	r2, [r4, #13]
d0040970:	7ba1      	ldrb	r1, [r4, #14]
d0040972:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040976:	7be2      	ldrb	r2, [r4, #15]
d0040978:	f8da 0000 	ldr.w	r0, [sl]
d004097c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040980:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040984:	681b      	ldr	r3, [r3, #0]
d0040986:	695b      	ldr	r3, [r3, #20]
d0040988:	4798      	blx	r3
d004098a:	e0aa      	b.n	d0040ae2 <main+0x4c2>
d004098c:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0040990:	7be3      	ldrb	r3, [r4, #15]
d0040992:	496b      	ldr	r1, [pc, #428]	; (d0040b40 <main+0x520>)
d0040994:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040998:	f8da 0000 	ldr.w	r0, [sl]
d004099c:	6809      	ldr	r1, [r1, #0]
d004099e:	681b      	ldr	r3, [r3, #0]
d00409a0:	6a1b      	ldr	r3, [r3, #32]
d00409a2:	4798      	blx	r3
d00409a4:	7b20      	ldrb	r0, [r4, #12]
d00409a6:	3601      	adds	r6, #1
d00409a8:	7b61      	ldrb	r1, [r4, #13]
d00409aa:	7ba2      	ldrb	r2, [r4, #14]
d00409ac:	b2f6      	uxtb	r6, r6
d00409ae:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00409b2:	7be3      	ldrb	r3, [r4, #15]
d00409b4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00409b8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00409bc:	685b      	ldr	r3, [r3, #4]
d00409be:	681b      	ldr	r3, [r3, #0]
d00409c0:	4798      	blx	r3
d00409c2:	f7ff fd2f 	bl	d0040424 <proc_astroids>
d00409c6:	2e64      	cmp	r6, #100	; 0x64
d00409c8:	d932      	bls.n	d0040a30 <main+0x410>
d00409ca:	f894 c010 	ldrb.w	ip, [r4, #16]
d00409ce:	2000      	movs	r0, #0
d00409d0:	7c61      	ldrb	r1, [r4, #17]
d00409d2:	f1c8 0801 	rsb	r8, r8, #1
d00409d6:	7ca2      	ldrb	r2, [r4, #18]
d00409d8:	4606      	mov	r6, r0
d00409da:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d00409de:	7ce3      	ldrb	r3, [r4, #19]
d00409e0:	fa5f f888 	uxtb.w	r8, r8
d00409e4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00409e8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00409ec:	689b      	ldr	r3, [r3, #8]
d00409ee:	689b      	ldr	r3, [r3, #8]
d00409f0:	4798      	blx	r3
d00409f2:	f894 c010 	ldrb.w	ip, [r4, #16]
d00409f6:	7c61      	ldrb	r1, [r4, #17]
d00409f8:	4630      	mov	r0, r6
d00409fa:	7ca2      	ldrb	r2, [r4, #18]
d00409fc:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0040a00:	7ce3      	ldrb	r3, [r4, #19]
d0040a02:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040a06:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040a0a:	689b      	ldr	r3, [r3, #8]
d0040a0c:	685b      	ldr	r3, [r3, #4]
d0040a0e:	4798      	blx	r3
d0040a10:	f894 c010 	ldrb.w	ip, [r4, #16]
d0040a14:	7c61      	ldrb	r1, [r4, #17]
d0040a16:	4630      	mov	r0, r6
d0040a18:	7ca2      	ldrb	r2, [r4, #18]
d0040a1a:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0040a1e:	7ce3      	ldrb	r3, [r4, #19]
d0040a20:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040a24:	4641      	mov	r1, r8
d0040a26:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040a2a:	689b      	ldr	r3, [r3, #8]
d0040a2c:	6a1b      	ldr	r3, [r3, #32]
d0040a2e:	4798      	blx	r3
d0040a30:	f894 e010 	ldrb.w	lr, [r4, #16]
d0040a34:	fa4f f985 	sxtb.w	r9, r5
d0040a38:	f894 c011 	ldrb.w	ip, [r4, #17]
d0040a3c:	2000      	movs	r0, #0
d0040a3e:	7ca2      	ldrb	r2, [r4, #18]
d0040a40:	4649      	mov	r1, r9
d0040a42:	ea4e 2c0c 	orr.w	ip, lr, ip, lsl #8
d0040a46:	7ce3      	ldrb	r3, [r4, #19]
d0040a48:	ea4c 4202 	orr.w	r2, ip, r2, lsl #16
d0040a4c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040a50:	689b      	ldr	r3, [r3, #8]
d0040a52:	699b      	ldr	r3, [r3, #24]
d0040a54:	4798      	blx	r3
d0040a56:	7b20      	ldrb	r0, [r4, #12]
d0040a58:	7b61      	ldrb	r1, [r4, #13]
d0040a5a:	7ba2      	ldrb	r2, [r4, #14]
d0040a5c:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0040a60:	7be3      	ldrb	r3, [r4, #15]
d0040a62:	f8db 0000 	ldr.w	r0, [fp]
d0040a66:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040a6a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040a6e:	681b      	ldr	r3, [r3, #0]
d0040a70:	695b      	ldr	r3, [r3, #20]
d0040a72:	4798      	blx	r3
d0040a74:	7b21      	ldrb	r1, [r4, #12]
d0040a76:	f894 c00d 	ldrb.w	ip, [r4, #13]
d0040a7a:	f005 003f 	and.w	r0, r5, #63	; 0x3f
d0040a7e:	7ba2      	ldrb	r2, [r4, #14]
d0040a80:	3501      	adds	r5, #1
d0040a82:	ea41 2c0c 	orr.w	ip, r1, ip, lsl #8
d0040a86:	7be3      	ldrb	r3, [r4, #15]
d0040a88:	b2ed      	uxtb	r5, r5
d0040a8a:	ea4c 4202 	orr.w	r2, ip, r2, lsl #16
d0040a8e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040a92:	685b      	ldr	r3, [r3, #4]
d0040a94:	68db      	ldr	r3, [r3, #12]
d0040a96:	4798      	blx	r3
d0040a98:	7b21      	ldrb	r1, [r4, #12]
d0040a9a:	f894 c00d 	ldrb.w	ip, [r4, #13]
d0040a9e:	2330      	movs	r3, #48	; 0x30
d0040aa0:	f894 e00e 	ldrb.w	lr, [r4, #14]
d0040aa4:	fa5f f089 	uxtb.w	r0, r9
d0040aa8:	ea41 210c 	orr.w	r1, r1, ip, lsl #8
d0040aac:	f894 c00f 	ldrb.w	ip, [r4, #15]
d0040ab0:	461a      	mov	r2, r3
d0040ab2:	3014      	adds	r0, #20
d0040ab4:	ea41 4e0e 	orr.w	lr, r1, lr, lsl #16
d0040ab8:	2114      	movs	r1, #20
d0040aba:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d0040abe:	f8dc c004 	ldr.w	ip, [ip, #4]
d0040ac2:	f8dc 9004 	ldr.w	r9, [ip, #4]
d0040ac6:	47c8      	blx	r9
d0040ac8:	7b20      	ldrb	r0, [r4, #12]
d0040aca:	7b61      	ldrb	r1, [r4, #13]
d0040acc:	7ba2      	ldrb	r2, [r4, #14]
d0040ace:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0040ad2:	7be3      	ldrb	r3, [r4, #15]
d0040ad4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040ad8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040adc:	681b      	ldr	r3, [r3, #0]
d0040ade:	681b      	ldr	r3, [r3, #0]
d0040ae0:	4798      	blx	r3
d0040ae2:	7b20      	ldrb	r0, [r4, #12]
d0040ae4:	7b61      	ldrb	r1, [r4, #13]
d0040ae6:	7ba2      	ldrb	r2, [r4, #14]
d0040ae8:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0040aec:	7be3      	ldrb	r3, [r4, #15]
d0040aee:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040af2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040af6:	681b      	ldr	r3, [r3, #0]
d0040af8:	689b      	ldr	r3, [r3, #8]
d0040afa:	4798      	blx	r3
d0040afc:	783b      	ldrb	r3, [r7, #0]
d0040afe:	f1c3 0301 	rsb	r3, r3, #1
d0040b02:	b2db      	uxtb	r3, r3
d0040b04:	703b      	strb	r3, [r7, #0]
d0040b06:	783b      	ldrb	r3, [r7, #0]
d0040b08:	7b21      	ldrb	r1, [r4, #12]
d0040b0a:	7b60      	ldrb	r0, [r4, #13]
d0040b0c:	7ba2      	ldrb	r2, [r4, #14]
d0040b0e:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0040b12:	2b00      	cmp	r3, #0
d0040b14:	f47f af3a 	bne.w	d004098c <main+0x36c>
d0040b18:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0040b1c:	7be3      	ldrb	r3, [r4, #15]
d0040b1e:	4808      	ldr	r0, [pc, #32]	; (d0040b40 <main+0x520>)
d0040b20:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040b24:	f8da 1000 	ldr.w	r1, [sl]
d0040b28:	6800      	ldr	r0, [r0, #0]
d0040b2a:	681b      	ldr	r3, [r3, #0]
d0040b2c:	6a1b      	ldr	r3, [r3, #32]
d0040b2e:	4798      	blx	r3
d0040b30:	e738      	b.n	d00409a4 <main+0x384>
d0040b32:	bf00      	nop
d0040b34:	d0041390 	.word	0xd0041390
d0040b38:	d00425d8 	.word	0xd00425d8
d0040b3c:	d00413a4 	.word	0xd00413a4
d0040b40:	d00425d4 	.word	0xd00425d4

d0040b44 <__errno>:
d0040b44:	4b01      	ldr	r3, [pc, #4]	; (d0040b4c <__errno+0x8>)
d0040b46:	6818      	ldr	r0, [r3, #0]
d0040b48:	4770      	bx	lr
d0040b4a:	bf00      	nop
d0040b4c:	d004141c 	.word	0xd004141c

d0040b50 <malloc>:
d0040b50:	4b02      	ldr	r3, [pc, #8]	; (d0040b5c <malloc+0xc>)
d0040b52:	4601      	mov	r1, r0
d0040b54:	6818      	ldr	r0, [r3, #0]
d0040b56:	f000 b861 	b.w	d0040c1c <_malloc_r>
d0040b5a:	bf00      	nop
d0040b5c:	d004141c 	.word	0xd004141c

d0040b60 <memcmp>:
d0040b60:	b530      	push	{r4, r5, lr}
d0040b62:	3901      	subs	r1, #1
d0040b64:	2400      	movs	r4, #0
d0040b66:	42a2      	cmp	r2, r4
d0040b68:	d101      	bne.n	d0040b6e <memcmp+0xe>
d0040b6a:	2000      	movs	r0, #0
d0040b6c:	e005      	b.n	d0040b7a <memcmp+0x1a>
d0040b6e:	5d03      	ldrb	r3, [r0, r4]
d0040b70:	3401      	adds	r4, #1
d0040b72:	5d0d      	ldrb	r5, [r1, r4]
d0040b74:	42ab      	cmp	r3, r5
d0040b76:	d0f6      	beq.n	d0040b66 <memcmp+0x6>
d0040b78:	1b58      	subs	r0, r3, r5
d0040b7a:	bd30      	pop	{r4, r5, pc}

d0040b7c <_free_r>:
d0040b7c:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0040b7e:	2900      	cmp	r1, #0
d0040b80:	d048      	beq.n	d0040c14 <_free_r+0x98>
d0040b82:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0040b86:	9001      	str	r0, [sp, #4]
d0040b88:	2b00      	cmp	r3, #0
d0040b8a:	f1a1 0404 	sub.w	r4, r1, #4
d0040b8e:	bfb8      	it	lt
d0040b90:	18e4      	addlt	r4, r4, r3
d0040b92:	f000 fb49 	bl	d0041228 <__malloc_lock>
d0040b96:	4a20      	ldr	r2, [pc, #128]	; (d0040c18 <_free_r+0x9c>)
d0040b98:	9801      	ldr	r0, [sp, #4]
d0040b9a:	6813      	ldr	r3, [r2, #0]
d0040b9c:	4615      	mov	r5, r2
d0040b9e:	b933      	cbnz	r3, d0040bae <_free_r+0x32>
d0040ba0:	6063      	str	r3, [r4, #4]
d0040ba2:	6014      	str	r4, [r2, #0]
d0040ba4:	b003      	add	sp, #12
d0040ba6:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0040baa:	f000 bb43 	b.w	d0041234 <__malloc_unlock>
d0040bae:	42a3      	cmp	r3, r4
d0040bb0:	d90b      	bls.n	d0040bca <_free_r+0x4e>
d0040bb2:	6821      	ldr	r1, [r4, #0]
d0040bb4:	1862      	adds	r2, r4, r1
d0040bb6:	4293      	cmp	r3, r2
d0040bb8:	bf04      	itt	eq
d0040bba:	681a      	ldreq	r2, [r3, #0]
d0040bbc:	685b      	ldreq	r3, [r3, #4]
d0040bbe:	6063      	str	r3, [r4, #4]
d0040bc0:	bf04      	itt	eq
d0040bc2:	1852      	addeq	r2, r2, r1
d0040bc4:	6022      	streq	r2, [r4, #0]
d0040bc6:	602c      	str	r4, [r5, #0]
d0040bc8:	e7ec      	b.n	d0040ba4 <_free_r+0x28>
d0040bca:	461a      	mov	r2, r3
d0040bcc:	685b      	ldr	r3, [r3, #4]
d0040bce:	b10b      	cbz	r3, d0040bd4 <_free_r+0x58>
d0040bd0:	42a3      	cmp	r3, r4
d0040bd2:	d9fa      	bls.n	d0040bca <_free_r+0x4e>
d0040bd4:	6811      	ldr	r1, [r2, #0]
d0040bd6:	1855      	adds	r5, r2, r1
d0040bd8:	42a5      	cmp	r5, r4
d0040bda:	d10b      	bne.n	d0040bf4 <_free_r+0x78>
d0040bdc:	6824      	ldr	r4, [r4, #0]
d0040bde:	4421      	add	r1, r4
d0040be0:	1854      	adds	r4, r2, r1
d0040be2:	42a3      	cmp	r3, r4
d0040be4:	6011      	str	r1, [r2, #0]
d0040be6:	d1dd      	bne.n	d0040ba4 <_free_r+0x28>
d0040be8:	681c      	ldr	r4, [r3, #0]
d0040bea:	685b      	ldr	r3, [r3, #4]
d0040bec:	6053      	str	r3, [r2, #4]
d0040bee:	4421      	add	r1, r4
d0040bf0:	6011      	str	r1, [r2, #0]
d0040bf2:	e7d7      	b.n	d0040ba4 <_free_r+0x28>
d0040bf4:	d902      	bls.n	d0040bfc <_free_r+0x80>
d0040bf6:	230c      	movs	r3, #12
d0040bf8:	6003      	str	r3, [r0, #0]
d0040bfa:	e7d3      	b.n	d0040ba4 <_free_r+0x28>
d0040bfc:	6825      	ldr	r5, [r4, #0]
d0040bfe:	1961      	adds	r1, r4, r5
d0040c00:	428b      	cmp	r3, r1
d0040c02:	bf04      	itt	eq
d0040c04:	6819      	ldreq	r1, [r3, #0]
d0040c06:	685b      	ldreq	r3, [r3, #4]
d0040c08:	6063      	str	r3, [r4, #4]
d0040c0a:	bf04      	itt	eq
d0040c0c:	1949      	addeq	r1, r1, r5
d0040c0e:	6021      	streq	r1, [r4, #0]
d0040c10:	6054      	str	r4, [r2, #4]
d0040c12:	e7c7      	b.n	d0040ba4 <_free_r+0x28>
d0040c14:	b003      	add	sp, #12
d0040c16:	bd30      	pop	{r4, r5, pc}
d0040c18:	d0042440 	.word	0xd0042440

d0040c1c <_malloc_r>:
d0040c1c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0040c1e:	1ccd      	adds	r5, r1, #3
d0040c20:	f025 0503 	bic.w	r5, r5, #3
d0040c24:	3508      	adds	r5, #8
d0040c26:	2d0c      	cmp	r5, #12
d0040c28:	bf38      	it	cc
d0040c2a:	250c      	movcc	r5, #12
d0040c2c:	2d00      	cmp	r5, #0
d0040c2e:	4606      	mov	r6, r0
d0040c30:	db01      	blt.n	d0040c36 <_malloc_r+0x1a>
d0040c32:	42a9      	cmp	r1, r5
d0040c34:	d903      	bls.n	d0040c3e <_malloc_r+0x22>
d0040c36:	230c      	movs	r3, #12
d0040c38:	6033      	str	r3, [r6, #0]
d0040c3a:	2000      	movs	r0, #0
d0040c3c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0040c3e:	f000 faf3 	bl	d0041228 <__malloc_lock>
d0040c42:	4921      	ldr	r1, [pc, #132]	; (d0040cc8 <_malloc_r+0xac>)
d0040c44:	680a      	ldr	r2, [r1, #0]
d0040c46:	4614      	mov	r4, r2
d0040c48:	b99c      	cbnz	r4, d0040c72 <_malloc_r+0x56>
d0040c4a:	4f20      	ldr	r7, [pc, #128]	; (d0040ccc <_malloc_r+0xb0>)
d0040c4c:	683b      	ldr	r3, [r7, #0]
d0040c4e:	b923      	cbnz	r3, d0040c5a <_malloc_r+0x3e>
d0040c50:	4621      	mov	r1, r4
d0040c52:	4630      	mov	r0, r6
d0040c54:	f7ff faa0 	bl	d0040198 <_sbrk_r>
d0040c58:	6038      	str	r0, [r7, #0]
d0040c5a:	4629      	mov	r1, r5
d0040c5c:	4630      	mov	r0, r6
d0040c5e:	f7ff fa9b 	bl	d0040198 <_sbrk_r>
d0040c62:	1c43      	adds	r3, r0, #1
d0040c64:	d123      	bne.n	d0040cae <_malloc_r+0x92>
d0040c66:	230c      	movs	r3, #12
d0040c68:	6033      	str	r3, [r6, #0]
d0040c6a:	4630      	mov	r0, r6
d0040c6c:	f000 fae2 	bl	d0041234 <__malloc_unlock>
d0040c70:	e7e3      	b.n	d0040c3a <_malloc_r+0x1e>
d0040c72:	6823      	ldr	r3, [r4, #0]
d0040c74:	1b5b      	subs	r3, r3, r5
d0040c76:	d417      	bmi.n	d0040ca8 <_malloc_r+0x8c>
d0040c78:	2b0b      	cmp	r3, #11
d0040c7a:	d903      	bls.n	d0040c84 <_malloc_r+0x68>
d0040c7c:	6023      	str	r3, [r4, #0]
d0040c7e:	441c      	add	r4, r3
d0040c80:	6025      	str	r5, [r4, #0]
d0040c82:	e004      	b.n	d0040c8e <_malloc_r+0x72>
d0040c84:	6863      	ldr	r3, [r4, #4]
d0040c86:	42a2      	cmp	r2, r4
d0040c88:	bf0c      	ite	eq
d0040c8a:	600b      	streq	r3, [r1, #0]
d0040c8c:	6053      	strne	r3, [r2, #4]
d0040c8e:	4630      	mov	r0, r6
d0040c90:	f000 fad0 	bl	d0041234 <__malloc_unlock>
d0040c94:	f104 000b 	add.w	r0, r4, #11
d0040c98:	1d23      	adds	r3, r4, #4
d0040c9a:	f020 0007 	bic.w	r0, r0, #7
d0040c9e:	1ac2      	subs	r2, r0, r3
d0040ca0:	d0cc      	beq.n	d0040c3c <_malloc_r+0x20>
d0040ca2:	1a1b      	subs	r3, r3, r0
d0040ca4:	50a3      	str	r3, [r4, r2]
d0040ca6:	e7c9      	b.n	d0040c3c <_malloc_r+0x20>
d0040ca8:	4622      	mov	r2, r4
d0040caa:	6864      	ldr	r4, [r4, #4]
d0040cac:	e7cc      	b.n	d0040c48 <_malloc_r+0x2c>
d0040cae:	1cc4      	adds	r4, r0, #3
d0040cb0:	f024 0403 	bic.w	r4, r4, #3
d0040cb4:	42a0      	cmp	r0, r4
d0040cb6:	d0e3      	beq.n	d0040c80 <_malloc_r+0x64>
d0040cb8:	1a21      	subs	r1, r4, r0
d0040cba:	4630      	mov	r0, r6
d0040cbc:	f7ff fa6c 	bl	d0040198 <_sbrk_r>
d0040cc0:	3001      	adds	r0, #1
d0040cc2:	d1dd      	bne.n	d0040c80 <_malloc_r+0x64>
d0040cc4:	e7cf      	b.n	d0040c66 <_malloc_r+0x4a>
d0040cc6:	bf00      	nop
d0040cc8:	d0042440 	.word	0xd0042440
d0040ccc:	d0042444 	.word	0xd0042444

d0040cd0 <setbuf>:
d0040cd0:	2900      	cmp	r1, #0
d0040cd2:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0040cd6:	bf0c      	ite	eq
d0040cd8:	2202      	moveq	r2, #2
d0040cda:	2200      	movne	r2, #0
d0040cdc:	f000 b800 	b.w	d0040ce0 <setvbuf>

d0040ce0 <setvbuf>:
d0040ce0:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0040ce4:	461d      	mov	r5, r3
d0040ce6:	4b5d      	ldr	r3, [pc, #372]	; (d0040e5c <setvbuf+0x17c>)
d0040ce8:	681f      	ldr	r7, [r3, #0]
d0040cea:	4604      	mov	r4, r0
d0040cec:	460e      	mov	r6, r1
d0040cee:	4690      	mov	r8, r2
d0040cf0:	b127      	cbz	r7, d0040cfc <setvbuf+0x1c>
d0040cf2:	69bb      	ldr	r3, [r7, #24]
d0040cf4:	b913      	cbnz	r3, d0040cfc <setvbuf+0x1c>
d0040cf6:	4638      	mov	r0, r7
d0040cf8:	f000 f9d2 	bl	d00410a0 <__sinit>
d0040cfc:	4b58      	ldr	r3, [pc, #352]	; (d0040e60 <setvbuf+0x180>)
d0040cfe:	429c      	cmp	r4, r3
d0040d00:	d167      	bne.n	d0040dd2 <setvbuf+0xf2>
d0040d02:	687c      	ldr	r4, [r7, #4]
d0040d04:	f1b8 0f02 	cmp.w	r8, #2
d0040d08:	d006      	beq.n	d0040d18 <setvbuf+0x38>
d0040d0a:	f1b8 0f01 	cmp.w	r8, #1
d0040d0e:	f200 809f 	bhi.w	d0040e50 <setvbuf+0x170>
d0040d12:	2d00      	cmp	r5, #0
d0040d14:	f2c0 809c 	blt.w	d0040e50 <setvbuf+0x170>
d0040d18:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0040d1a:	07db      	lsls	r3, r3, #31
d0040d1c:	d405      	bmi.n	d0040d2a <setvbuf+0x4a>
d0040d1e:	89a3      	ldrh	r3, [r4, #12]
d0040d20:	0598      	lsls	r0, r3, #22
d0040d22:	d402      	bmi.n	d0040d2a <setvbuf+0x4a>
d0040d24:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0040d26:	f000 fa59 	bl	d00411dc <__retarget_lock_acquire_recursive>
d0040d2a:	4621      	mov	r1, r4
d0040d2c:	4638      	mov	r0, r7
d0040d2e:	f000 f923 	bl	d0040f78 <_fflush_r>
d0040d32:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0040d34:	b141      	cbz	r1, d0040d48 <setvbuf+0x68>
d0040d36:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0040d3a:	4299      	cmp	r1, r3
d0040d3c:	d002      	beq.n	d0040d44 <setvbuf+0x64>
d0040d3e:	4638      	mov	r0, r7
d0040d40:	f7ff ff1c 	bl	d0040b7c <_free_r>
d0040d44:	2300      	movs	r3, #0
d0040d46:	6363      	str	r3, [r4, #52]	; 0x34
d0040d48:	2300      	movs	r3, #0
d0040d4a:	61a3      	str	r3, [r4, #24]
d0040d4c:	6063      	str	r3, [r4, #4]
d0040d4e:	89a3      	ldrh	r3, [r4, #12]
d0040d50:	0619      	lsls	r1, r3, #24
d0040d52:	d503      	bpl.n	d0040d5c <setvbuf+0x7c>
d0040d54:	6921      	ldr	r1, [r4, #16]
d0040d56:	4638      	mov	r0, r7
d0040d58:	f7ff ff10 	bl	d0040b7c <_free_r>
d0040d5c:	89a3      	ldrh	r3, [r4, #12]
d0040d5e:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d0040d62:	f023 0303 	bic.w	r3, r3, #3
d0040d66:	f1b8 0f02 	cmp.w	r8, #2
d0040d6a:	81a3      	strh	r3, [r4, #12]
d0040d6c:	d06c      	beq.n	d0040e48 <setvbuf+0x168>
d0040d6e:	ab01      	add	r3, sp, #4
d0040d70:	466a      	mov	r2, sp
d0040d72:	4621      	mov	r1, r4
d0040d74:	4638      	mov	r0, r7
d0040d76:	f000 fa33 	bl	d00411e0 <__swhatbuf_r>
d0040d7a:	89a3      	ldrh	r3, [r4, #12]
d0040d7c:	4318      	orrs	r0, r3
d0040d7e:	81a0      	strh	r0, [r4, #12]
d0040d80:	2d00      	cmp	r5, #0
d0040d82:	d130      	bne.n	d0040de6 <setvbuf+0x106>
d0040d84:	9d00      	ldr	r5, [sp, #0]
d0040d86:	4628      	mov	r0, r5
d0040d88:	f7ff fee2 	bl	d0040b50 <malloc>
d0040d8c:	4606      	mov	r6, r0
d0040d8e:	2800      	cmp	r0, #0
d0040d90:	d155      	bne.n	d0040e3e <setvbuf+0x15e>
d0040d92:	f8dd 9000 	ldr.w	r9, [sp]
d0040d96:	45a9      	cmp	r9, r5
d0040d98:	d14a      	bne.n	d0040e30 <setvbuf+0x150>
d0040d9a:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0040d9e:	2200      	movs	r2, #0
d0040da0:	60a2      	str	r2, [r4, #8]
d0040da2:	f104 0247 	add.w	r2, r4, #71	; 0x47
d0040da6:	6022      	str	r2, [r4, #0]
d0040da8:	6122      	str	r2, [r4, #16]
d0040daa:	2201      	movs	r2, #1
d0040dac:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0040db0:	6162      	str	r2, [r4, #20]
d0040db2:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0040db4:	f043 0302 	orr.w	r3, r3, #2
d0040db8:	07d2      	lsls	r2, r2, #31
d0040dba:	81a3      	strh	r3, [r4, #12]
d0040dbc:	d405      	bmi.n	d0040dca <setvbuf+0xea>
d0040dbe:	f413 7f00 	tst.w	r3, #512	; 0x200
d0040dc2:	d102      	bne.n	d0040dca <setvbuf+0xea>
d0040dc4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0040dc6:	f000 fa0a 	bl	d00411de <__retarget_lock_release_recursive>
d0040dca:	4628      	mov	r0, r5
d0040dcc:	b003      	add	sp, #12
d0040dce:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0040dd2:	4b24      	ldr	r3, [pc, #144]	; (d0040e64 <setvbuf+0x184>)
d0040dd4:	429c      	cmp	r4, r3
d0040dd6:	d101      	bne.n	d0040ddc <setvbuf+0xfc>
d0040dd8:	68bc      	ldr	r4, [r7, #8]
d0040dda:	e793      	b.n	d0040d04 <setvbuf+0x24>
d0040ddc:	4b22      	ldr	r3, [pc, #136]	; (d0040e68 <setvbuf+0x188>)
d0040dde:	429c      	cmp	r4, r3
d0040de0:	bf08      	it	eq
d0040de2:	68fc      	ldreq	r4, [r7, #12]
d0040de4:	e78e      	b.n	d0040d04 <setvbuf+0x24>
d0040de6:	2e00      	cmp	r6, #0
d0040de8:	d0cd      	beq.n	d0040d86 <setvbuf+0xa6>
d0040dea:	69bb      	ldr	r3, [r7, #24]
d0040dec:	b913      	cbnz	r3, d0040df4 <setvbuf+0x114>
d0040dee:	4638      	mov	r0, r7
d0040df0:	f000 f956 	bl	d00410a0 <__sinit>
d0040df4:	f1b8 0f01 	cmp.w	r8, #1
d0040df8:	bf08      	it	eq
d0040dfa:	89a3      	ldrheq	r3, [r4, #12]
d0040dfc:	6026      	str	r6, [r4, #0]
d0040dfe:	bf04      	itt	eq
d0040e00:	f043 0301 	orreq.w	r3, r3, #1
d0040e04:	81a3      	strheq	r3, [r4, #12]
d0040e06:	89a2      	ldrh	r2, [r4, #12]
d0040e08:	f012 0308 	ands.w	r3, r2, #8
d0040e0c:	e9c4 6504 	strd	r6, r5, [r4, #16]
d0040e10:	d01c      	beq.n	d0040e4c <setvbuf+0x16c>
d0040e12:	07d3      	lsls	r3, r2, #31
d0040e14:	bf41      	itttt	mi
d0040e16:	2300      	movmi	r3, #0
d0040e18:	426d      	negmi	r5, r5
d0040e1a:	60a3      	strmi	r3, [r4, #8]
d0040e1c:	61a5      	strmi	r5, [r4, #24]
d0040e1e:	bf58      	it	pl
d0040e20:	60a5      	strpl	r5, [r4, #8]
d0040e22:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0040e24:	f015 0501 	ands.w	r5, r5, #1
d0040e28:	d115      	bne.n	d0040e56 <setvbuf+0x176>
d0040e2a:	f412 7f00 	tst.w	r2, #512	; 0x200
d0040e2e:	e7c8      	b.n	d0040dc2 <setvbuf+0xe2>
d0040e30:	4648      	mov	r0, r9
d0040e32:	f7ff fe8d 	bl	d0040b50 <malloc>
d0040e36:	4606      	mov	r6, r0
d0040e38:	2800      	cmp	r0, #0
d0040e3a:	d0ae      	beq.n	d0040d9a <setvbuf+0xba>
d0040e3c:	464d      	mov	r5, r9
d0040e3e:	89a3      	ldrh	r3, [r4, #12]
d0040e40:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0040e44:	81a3      	strh	r3, [r4, #12]
d0040e46:	e7d0      	b.n	d0040dea <setvbuf+0x10a>
d0040e48:	2500      	movs	r5, #0
d0040e4a:	e7a8      	b.n	d0040d9e <setvbuf+0xbe>
d0040e4c:	60a3      	str	r3, [r4, #8]
d0040e4e:	e7e8      	b.n	d0040e22 <setvbuf+0x142>
d0040e50:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0040e54:	e7b9      	b.n	d0040dca <setvbuf+0xea>
d0040e56:	2500      	movs	r5, #0
d0040e58:	e7b7      	b.n	d0040dca <setvbuf+0xea>
d0040e5a:	bf00      	nop
d0040e5c:	d004141c 	.word	0xd004141c
d0040e60:	d00413d4 	.word	0xd00413d4
d0040e64:	d00413f4 	.word	0xd00413f4
d0040e68:	d00413b4 	.word	0xd00413b4

d0040e6c <__sflush_r>:
d0040e6c:	898a      	ldrh	r2, [r1, #12]
d0040e6e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0040e72:	4605      	mov	r5, r0
d0040e74:	0710      	lsls	r0, r2, #28
d0040e76:	460c      	mov	r4, r1
d0040e78:	d458      	bmi.n	d0040f2c <__sflush_r+0xc0>
d0040e7a:	684b      	ldr	r3, [r1, #4]
d0040e7c:	2b00      	cmp	r3, #0
d0040e7e:	dc05      	bgt.n	d0040e8c <__sflush_r+0x20>
d0040e80:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0040e82:	2b00      	cmp	r3, #0
d0040e84:	dc02      	bgt.n	d0040e8c <__sflush_r+0x20>
d0040e86:	2000      	movs	r0, #0
d0040e88:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0040e8c:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0040e8e:	2e00      	cmp	r6, #0
d0040e90:	d0f9      	beq.n	d0040e86 <__sflush_r+0x1a>
d0040e92:	2300      	movs	r3, #0
d0040e94:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0040e98:	682f      	ldr	r7, [r5, #0]
d0040e9a:	602b      	str	r3, [r5, #0]
d0040e9c:	d032      	beq.n	d0040f04 <__sflush_r+0x98>
d0040e9e:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0040ea0:	89a3      	ldrh	r3, [r4, #12]
d0040ea2:	075a      	lsls	r2, r3, #29
d0040ea4:	d505      	bpl.n	d0040eb2 <__sflush_r+0x46>
d0040ea6:	6863      	ldr	r3, [r4, #4]
d0040ea8:	1ac0      	subs	r0, r0, r3
d0040eaa:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0040eac:	b10b      	cbz	r3, d0040eb2 <__sflush_r+0x46>
d0040eae:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0040eb0:	1ac0      	subs	r0, r0, r3
d0040eb2:	2300      	movs	r3, #0
d0040eb4:	4602      	mov	r2, r0
d0040eb6:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0040eb8:	6a21      	ldr	r1, [r4, #32]
d0040eba:	4628      	mov	r0, r5
d0040ebc:	47b0      	blx	r6
d0040ebe:	1c43      	adds	r3, r0, #1
d0040ec0:	89a3      	ldrh	r3, [r4, #12]
d0040ec2:	d106      	bne.n	d0040ed2 <__sflush_r+0x66>
d0040ec4:	6829      	ldr	r1, [r5, #0]
d0040ec6:	291d      	cmp	r1, #29
d0040ec8:	d82c      	bhi.n	d0040f24 <__sflush_r+0xb8>
d0040eca:	4a2a      	ldr	r2, [pc, #168]	; (d0040f74 <__sflush_r+0x108>)
d0040ecc:	40ca      	lsrs	r2, r1
d0040ece:	07d6      	lsls	r6, r2, #31
d0040ed0:	d528      	bpl.n	d0040f24 <__sflush_r+0xb8>
d0040ed2:	2200      	movs	r2, #0
d0040ed4:	6062      	str	r2, [r4, #4]
d0040ed6:	04d9      	lsls	r1, r3, #19
d0040ed8:	6922      	ldr	r2, [r4, #16]
d0040eda:	6022      	str	r2, [r4, #0]
d0040edc:	d504      	bpl.n	d0040ee8 <__sflush_r+0x7c>
d0040ede:	1c42      	adds	r2, r0, #1
d0040ee0:	d101      	bne.n	d0040ee6 <__sflush_r+0x7a>
d0040ee2:	682b      	ldr	r3, [r5, #0]
d0040ee4:	b903      	cbnz	r3, d0040ee8 <__sflush_r+0x7c>
d0040ee6:	6560      	str	r0, [r4, #84]	; 0x54
d0040ee8:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0040eea:	602f      	str	r7, [r5, #0]
d0040eec:	2900      	cmp	r1, #0
d0040eee:	d0ca      	beq.n	d0040e86 <__sflush_r+0x1a>
d0040ef0:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0040ef4:	4299      	cmp	r1, r3
d0040ef6:	d002      	beq.n	d0040efe <__sflush_r+0x92>
d0040ef8:	4628      	mov	r0, r5
d0040efa:	f7ff fe3f 	bl	d0040b7c <_free_r>
d0040efe:	2000      	movs	r0, #0
d0040f00:	6360      	str	r0, [r4, #52]	; 0x34
d0040f02:	e7c1      	b.n	d0040e88 <__sflush_r+0x1c>
d0040f04:	6a21      	ldr	r1, [r4, #32]
d0040f06:	2301      	movs	r3, #1
d0040f08:	4628      	mov	r0, r5
d0040f0a:	47b0      	blx	r6
d0040f0c:	1c41      	adds	r1, r0, #1
d0040f0e:	d1c7      	bne.n	d0040ea0 <__sflush_r+0x34>
d0040f10:	682b      	ldr	r3, [r5, #0]
d0040f12:	2b00      	cmp	r3, #0
d0040f14:	d0c4      	beq.n	d0040ea0 <__sflush_r+0x34>
d0040f16:	2b1d      	cmp	r3, #29
d0040f18:	d001      	beq.n	d0040f1e <__sflush_r+0xb2>
d0040f1a:	2b16      	cmp	r3, #22
d0040f1c:	d101      	bne.n	d0040f22 <__sflush_r+0xb6>
d0040f1e:	602f      	str	r7, [r5, #0]
d0040f20:	e7b1      	b.n	d0040e86 <__sflush_r+0x1a>
d0040f22:	89a3      	ldrh	r3, [r4, #12]
d0040f24:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0040f28:	81a3      	strh	r3, [r4, #12]
d0040f2a:	e7ad      	b.n	d0040e88 <__sflush_r+0x1c>
d0040f2c:	690f      	ldr	r7, [r1, #16]
d0040f2e:	2f00      	cmp	r7, #0
d0040f30:	d0a9      	beq.n	d0040e86 <__sflush_r+0x1a>
d0040f32:	0793      	lsls	r3, r2, #30
d0040f34:	680e      	ldr	r6, [r1, #0]
d0040f36:	bf08      	it	eq
d0040f38:	694b      	ldreq	r3, [r1, #20]
d0040f3a:	600f      	str	r7, [r1, #0]
d0040f3c:	bf18      	it	ne
d0040f3e:	2300      	movne	r3, #0
d0040f40:	eba6 0807 	sub.w	r8, r6, r7
d0040f44:	608b      	str	r3, [r1, #8]
d0040f46:	f1b8 0f00 	cmp.w	r8, #0
d0040f4a:	dd9c      	ble.n	d0040e86 <__sflush_r+0x1a>
d0040f4c:	6a21      	ldr	r1, [r4, #32]
d0040f4e:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0040f50:	4643      	mov	r3, r8
d0040f52:	463a      	mov	r2, r7
d0040f54:	4628      	mov	r0, r5
d0040f56:	47b0      	blx	r6
d0040f58:	2800      	cmp	r0, #0
d0040f5a:	dc06      	bgt.n	d0040f6a <__sflush_r+0xfe>
d0040f5c:	89a3      	ldrh	r3, [r4, #12]
d0040f5e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0040f62:	81a3      	strh	r3, [r4, #12]
d0040f64:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0040f68:	e78e      	b.n	d0040e88 <__sflush_r+0x1c>
d0040f6a:	4407      	add	r7, r0
d0040f6c:	eba8 0800 	sub.w	r8, r8, r0
d0040f70:	e7e9      	b.n	d0040f46 <__sflush_r+0xda>
d0040f72:	bf00      	nop
d0040f74:	20400001 	.word	0x20400001

d0040f78 <_fflush_r>:
d0040f78:	b538      	push	{r3, r4, r5, lr}
d0040f7a:	690b      	ldr	r3, [r1, #16]
d0040f7c:	4605      	mov	r5, r0
d0040f7e:	460c      	mov	r4, r1
d0040f80:	b913      	cbnz	r3, d0040f88 <_fflush_r+0x10>
d0040f82:	2500      	movs	r5, #0
d0040f84:	4628      	mov	r0, r5
d0040f86:	bd38      	pop	{r3, r4, r5, pc}
d0040f88:	b118      	cbz	r0, d0040f92 <_fflush_r+0x1a>
d0040f8a:	6983      	ldr	r3, [r0, #24]
d0040f8c:	b90b      	cbnz	r3, d0040f92 <_fflush_r+0x1a>
d0040f8e:	f000 f887 	bl	d00410a0 <__sinit>
d0040f92:	4b14      	ldr	r3, [pc, #80]	; (d0040fe4 <_fflush_r+0x6c>)
d0040f94:	429c      	cmp	r4, r3
d0040f96:	d11b      	bne.n	d0040fd0 <_fflush_r+0x58>
d0040f98:	686c      	ldr	r4, [r5, #4]
d0040f9a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0040f9e:	2b00      	cmp	r3, #0
d0040fa0:	d0ef      	beq.n	d0040f82 <_fflush_r+0xa>
d0040fa2:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0040fa4:	07d0      	lsls	r0, r2, #31
d0040fa6:	d404      	bmi.n	d0040fb2 <_fflush_r+0x3a>
d0040fa8:	0599      	lsls	r1, r3, #22
d0040faa:	d402      	bmi.n	d0040fb2 <_fflush_r+0x3a>
d0040fac:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0040fae:	f000 f915 	bl	d00411dc <__retarget_lock_acquire_recursive>
d0040fb2:	4628      	mov	r0, r5
d0040fb4:	4621      	mov	r1, r4
d0040fb6:	f7ff ff59 	bl	d0040e6c <__sflush_r>
d0040fba:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0040fbc:	07da      	lsls	r2, r3, #31
d0040fbe:	4605      	mov	r5, r0
d0040fc0:	d4e0      	bmi.n	d0040f84 <_fflush_r+0xc>
d0040fc2:	89a3      	ldrh	r3, [r4, #12]
d0040fc4:	059b      	lsls	r3, r3, #22
d0040fc6:	d4dd      	bmi.n	d0040f84 <_fflush_r+0xc>
d0040fc8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0040fca:	f000 f908 	bl	d00411de <__retarget_lock_release_recursive>
d0040fce:	e7d9      	b.n	d0040f84 <_fflush_r+0xc>
d0040fd0:	4b05      	ldr	r3, [pc, #20]	; (d0040fe8 <_fflush_r+0x70>)
d0040fd2:	429c      	cmp	r4, r3
d0040fd4:	d101      	bne.n	d0040fda <_fflush_r+0x62>
d0040fd6:	68ac      	ldr	r4, [r5, #8]
d0040fd8:	e7df      	b.n	d0040f9a <_fflush_r+0x22>
d0040fda:	4b04      	ldr	r3, [pc, #16]	; (d0040fec <_fflush_r+0x74>)
d0040fdc:	429c      	cmp	r4, r3
d0040fde:	bf08      	it	eq
d0040fe0:	68ec      	ldreq	r4, [r5, #12]
d0040fe2:	e7da      	b.n	d0040f9a <_fflush_r+0x22>
d0040fe4:	d00413d4 	.word	0xd00413d4
d0040fe8:	d00413f4 	.word	0xd00413f4
d0040fec:	d00413b4 	.word	0xd00413b4

d0040ff0 <std>:
d0040ff0:	2300      	movs	r3, #0
d0040ff2:	b510      	push	{r4, lr}
d0040ff4:	4604      	mov	r4, r0
d0040ff6:	e9c0 3300 	strd	r3, r3, [r0]
d0040ffa:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0040ffe:	6083      	str	r3, [r0, #8]
d0041000:	8181      	strh	r1, [r0, #12]
d0041002:	6643      	str	r3, [r0, #100]	; 0x64
d0041004:	81c2      	strh	r2, [r0, #14]
d0041006:	6183      	str	r3, [r0, #24]
d0041008:	4619      	mov	r1, r3
d004100a:	2208      	movs	r2, #8
d004100c:	305c      	adds	r0, #92	; 0x5c
d004100e:	f7ff f815 	bl	d004003c <memset>
d0041012:	4b05      	ldr	r3, [pc, #20]	; (d0041028 <std+0x38>)
d0041014:	6263      	str	r3, [r4, #36]	; 0x24
d0041016:	4b05      	ldr	r3, [pc, #20]	; (d004102c <std+0x3c>)
d0041018:	62a3      	str	r3, [r4, #40]	; 0x28
d004101a:	4b05      	ldr	r3, [pc, #20]	; (d0041030 <std+0x40>)
d004101c:	62e3      	str	r3, [r4, #44]	; 0x2c
d004101e:	4b05      	ldr	r3, [pc, #20]	; (d0041034 <std+0x44>)
d0041020:	6224      	str	r4, [r4, #32]
d0041022:	6323      	str	r3, [r4, #48]	; 0x30
d0041024:	bd10      	pop	{r4, pc}
d0041026:	bf00      	nop
d0041028:	d0041241 	.word	0xd0041241
d004102c:	d0041263 	.word	0xd0041263
d0041030:	d004129b 	.word	0xd004129b
d0041034:	d00412bf 	.word	0xd00412bf

d0041038 <_cleanup_r>:
d0041038:	4901      	ldr	r1, [pc, #4]	; (d0041040 <_cleanup_r+0x8>)
d004103a:	f000 b8af 	b.w	d004119c <_fwalk_reent>
d004103e:	bf00      	nop
d0041040:	d0040f79 	.word	0xd0040f79

d0041044 <__sfmoreglue>:
d0041044:	b570      	push	{r4, r5, r6, lr}
d0041046:	1e4a      	subs	r2, r1, #1
d0041048:	2568      	movs	r5, #104	; 0x68
d004104a:	4355      	muls	r5, r2
d004104c:	460e      	mov	r6, r1
d004104e:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0041052:	f7ff fde3 	bl	d0040c1c <_malloc_r>
d0041056:	4604      	mov	r4, r0
d0041058:	b140      	cbz	r0, d004106c <__sfmoreglue+0x28>
d004105a:	2100      	movs	r1, #0
d004105c:	e9c0 1600 	strd	r1, r6, [r0]
d0041060:	300c      	adds	r0, #12
d0041062:	60a0      	str	r0, [r4, #8]
d0041064:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0041068:	f7fe ffe8 	bl	d004003c <memset>
d004106c:	4620      	mov	r0, r4
d004106e:	bd70      	pop	{r4, r5, r6, pc}

d0041070 <__sfp_lock_acquire>:
d0041070:	4801      	ldr	r0, [pc, #4]	; (d0041078 <__sfp_lock_acquire+0x8>)
d0041072:	f000 b8b3 	b.w	d00411dc <__retarget_lock_acquire_recursive>
d0041076:	bf00      	nop
d0041078:	d00425e8 	.word	0xd00425e8

d004107c <__sfp_lock_release>:
d004107c:	4801      	ldr	r0, [pc, #4]	; (d0041084 <__sfp_lock_release+0x8>)
d004107e:	f000 b8ae 	b.w	d00411de <__retarget_lock_release_recursive>
d0041082:	bf00      	nop
d0041084:	d00425e8 	.word	0xd00425e8

d0041088 <__sinit_lock_acquire>:
d0041088:	4801      	ldr	r0, [pc, #4]	; (d0041090 <__sinit_lock_acquire+0x8>)
d004108a:	f000 b8a7 	b.w	d00411dc <__retarget_lock_acquire_recursive>
d004108e:	bf00      	nop
d0041090:	d00425e3 	.word	0xd00425e3

d0041094 <__sinit_lock_release>:
d0041094:	4801      	ldr	r0, [pc, #4]	; (d004109c <__sinit_lock_release+0x8>)
d0041096:	f000 b8a2 	b.w	d00411de <__retarget_lock_release_recursive>
d004109a:	bf00      	nop
d004109c:	d00425e3 	.word	0xd00425e3

d00410a0 <__sinit>:
d00410a0:	b510      	push	{r4, lr}
d00410a2:	4604      	mov	r4, r0
d00410a4:	f7ff fff0 	bl	d0041088 <__sinit_lock_acquire>
d00410a8:	69a3      	ldr	r3, [r4, #24]
d00410aa:	b11b      	cbz	r3, d00410b4 <__sinit+0x14>
d00410ac:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00410b0:	f7ff bff0 	b.w	d0041094 <__sinit_lock_release>
d00410b4:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d00410b8:	6523      	str	r3, [r4, #80]	; 0x50
d00410ba:	4b13      	ldr	r3, [pc, #76]	; (d0041108 <__sinit+0x68>)
d00410bc:	4a13      	ldr	r2, [pc, #76]	; (d004110c <__sinit+0x6c>)
d00410be:	681b      	ldr	r3, [r3, #0]
d00410c0:	62a2      	str	r2, [r4, #40]	; 0x28
d00410c2:	42a3      	cmp	r3, r4
d00410c4:	bf04      	itt	eq
d00410c6:	2301      	moveq	r3, #1
d00410c8:	61a3      	streq	r3, [r4, #24]
d00410ca:	4620      	mov	r0, r4
d00410cc:	f000 f820 	bl	d0041110 <__sfp>
d00410d0:	6060      	str	r0, [r4, #4]
d00410d2:	4620      	mov	r0, r4
d00410d4:	f000 f81c 	bl	d0041110 <__sfp>
d00410d8:	60a0      	str	r0, [r4, #8]
d00410da:	4620      	mov	r0, r4
d00410dc:	f000 f818 	bl	d0041110 <__sfp>
d00410e0:	2200      	movs	r2, #0
d00410e2:	60e0      	str	r0, [r4, #12]
d00410e4:	2104      	movs	r1, #4
d00410e6:	6860      	ldr	r0, [r4, #4]
d00410e8:	f7ff ff82 	bl	d0040ff0 <std>
d00410ec:	68a0      	ldr	r0, [r4, #8]
d00410ee:	2201      	movs	r2, #1
d00410f0:	2109      	movs	r1, #9
d00410f2:	f7ff ff7d 	bl	d0040ff0 <std>
d00410f6:	68e0      	ldr	r0, [r4, #12]
d00410f8:	2202      	movs	r2, #2
d00410fa:	2112      	movs	r1, #18
d00410fc:	f7ff ff78 	bl	d0040ff0 <std>
d0041100:	2301      	movs	r3, #1
d0041102:	61a3      	str	r3, [r4, #24]
d0041104:	e7d2      	b.n	d00410ac <__sinit+0xc>
d0041106:	bf00      	nop
d0041108:	d0041354 	.word	0xd0041354
d004110c:	d0041039 	.word	0xd0041039

d0041110 <__sfp>:
d0041110:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0041112:	4607      	mov	r7, r0
d0041114:	f7ff ffac 	bl	d0041070 <__sfp_lock_acquire>
d0041118:	4b1e      	ldr	r3, [pc, #120]	; (d0041194 <__sfp+0x84>)
d004111a:	681e      	ldr	r6, [r3, #0]
d004111c:	69b3      	ldr	r3, [r6, #24]
d004111e:	b913      	cbnz	r3, d0041126 <__sfp+0x16>
d0041120:	4630      	mov	r0, r6
d0041122:	f7ff ffbd 	bl	d00410a0 <__sinit>
d0041126:	3648      	adds	r6, #72	; 0x48
d0041128:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d004112c:	3b01      	subs	r3, #1
d004112e:	d503      	bpl.n	d0041138 <__sfp+0x28>
d0041130:	6833      	ldr	r3, [r6, #0]
d0041132:	b30b      	cbz	r3, d0041178 <__sfp+0x68>
d0041134:	6836      	ldr	r6, [r6, #0]
d0041136:	e7f7      	b.n	d0041128 <__sfp+0x18>
d0041138:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d004113c:	b9d5      	cbnz	r5, d0041174 <__sfp+0x64>
d004113e:	4b16      	ldr	r3, [pc, #88]	; (d0041198 <__sfp+0x88>)
d0041140:	60e3      	str	r3, [r4, #12]
d0041142:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0041146:	6665      	str	r5, [r4, #100]	; 0x64
d0041148:	f000 f847 	bl	d00411da <__retarget_lock_init_recursive>
d004114c:	f7ff ff96 	bl	d004107c <__sfp_lock_release>
d0041150:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0041154:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0041158:	6025      	str	r5, [r4, #0]
d004115a:	61a5      	str	r5, [r4, #24]
d004115c:	2208      	movs	r2, #8
d004115e:	4629      	mov	r1, r5
d0041160:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0041164:	f7fe ff6a 	bl	d004003c <memset>
d0041168:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d004116c:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0041170:	4620      	mov	r0, r4
d0041172:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0041174:	3468      	adds	r4, #104	; 0x68
d0041176:	e7d9      	b.n	d004112c <__sfp+0x1c>
d0041178:	2104      	movs	r1, #4
d004117a:	4638      	mov	r0, r7
d004117c:	f7ff ff62 	bl	d0041044 <__sfmoreglue>
d0041180:	4604      	mov	r4, r0
d0041182:	6030      	str	r0, [r6, #0]
d0041184:	2800      	cmp	r0, #0
d0041186:	d1d5      	bne.n	d0041134 <__sfp+0x24>
d0041188:	f7ff ff78 	bl	d004107c <__sfp_lock_release>
d004118c:	230c      	movs	r3, #12
d004118e:	603b      	str	r3, [r7, #0]
d0041190:	e7ee      	b.n	d0041170 <__sfp+0x60>
d0041192:	bf00      	nop
d0041194:	d0041354 	.word	0xd0041354
d0041198:	ffff0001 	.word	0xffff0001

d004119c <_fwalk_reent>:
d004119c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d00411a0:	4606      	mov	r6, r0
d00411a2:	4688      	mov	r8, r1
d00411a4:	f100 0448 	add.w	r4, r0, #72	; 0x48
d00411a8:	2700      	movs	r7, #0
d00411aa:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d00411ae:	f1b9 0901 	subs.w	r9, r9, #1
d00411b2:	d505      	bpl.n	d00411c0 <_fwalk_reent+0x24>
d00411b4:	6824      	ldr	r4, [r4, #0]
d00411b6:	2c00      	cmp	r4, #0
d00411b8:	d1f7      	bne.n	d00411aa <_fwalk_reent+0xe>
d00411ba:	4638      	mov	r0, r7
d00411bc:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d00411c0:	89ab      	ldrh	r3, [r5, #12]
d00411c2:	2b01      	cmp	r3, #1
d00411c4:	d907      	bls.n	d00411d6 <_fwalk_reent+0x3a>
d00411c6:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d00411ca:	3301      	adds	r3, #1
d00411cc:	d003      	beq.n	d00411d6 <_fwalk_reent+0x3a>
d00411ce:	4629      	mov	r1, r5
d00411d0:	4630      	mov	r0, r6
d00411d2:	47c0      	blx	r8
d00411d4:	4307      	orrs	r7, r0
d00411d6:	3568      	adds	r5, #104	; 0x68
d00411d8:	e7e9      	b.n	d00411ae <_fwalk_reent+0x12>

d00411da <__retarget_lock_init_recursive>:
d00411da:	4770      	bx	lr

d00411dc <__retarget_lock_acquire_recursive>:
d00411dc:	4770      	bx	lr

d00411de <__retarget_lock_release_recursive>:
d00411de:	4770      	bx	lr

d00411e0 <__swhatbuf_r>:
d00411e0:	b570      	push	{r4, r5, r6, lr}
d00411e2:	460e      	mov	r6, r1
d00411e4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00411e8:	2900      	cmp	r1, #0
d00411ea:	b096      	sub	sp, #88	; 0x58
d00411ec:	4614      	mov	r4, r2
d00411ee:	461d      	mov	r5, r3
d00411f0:	da07      	bge.n	d0041202 <__swhatbuf_r+0x22>
d00411f2:	2300      	movs	r3, #0
d00411f4:	602b      	str	r3, [r5, #0]
d00411f6:	89b3      	ldrh	r3, [r6, #12]
d00411f8:	061a      	lsls	r2, r3, #24
d00411fa:	d410      	bmi.n	d004121e <__swhatbuf_r+0x3e>
d00411fc:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0041200:	e00e      	b.n	d0041220 <__swhatbuf_r+0x40>
d0041202:	466a      	mov	r2, sp
d0041204:	f000 f870 	bl	d00412e8 <_fstat_r>
d0041208:	2800      	cmp	r0, #0
d004120a:	dbf2      	blt.n	d00411f2 <__swhatbuf_r+0x12>
d004120c:	9a01      	ldr	r2, [sp, #4]
d004120e:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0041212:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0041216:	425a      	negs	r2, r3
d0041218:	415a      	adcs	r2, r3
d004121a:	602a      	str	r2, [r5, #0]
d004121c:	e7ee      	b.n	d00411fc <__swhatbuf_r+0x1c>
d004121e:	2340      	movs	r3, #64	; 0x40
d0041220:	2000      	movs	r0, #0
d0041222:	6023      	str	r3, [r4, #0]
d0041224:	b016      	add	sp, #88	; 0x58
d0041226:	bd70      	pop	{r4, r5, r6, pc}

d0041228 <__malloc_lock>:
d0041228:	4801      	ldr	r0, [pc, #4]	; (d0041230 <__malloc_lock+0x8>)
d004122a:	f7ff bfd7 	b.w	d00411dc <__retarget_lock_acquire_recursive>
d004122e:	bf00      	nop
d0041230:	d00425e4 	.word	0xd00425e4

d0041234 <__malloc_unlock>:
d0041234:	4801      	ldr	r0, [pc, #4]	; (d004123c <__malloc_unlock+0x8>)
d0041236:	f7ff bfd2 	b.w	d00411de <__retarget_lock_release_recursive>
d004123a:	bf00      	nop
d004123c:	d00425e4 	.word	0xd00425e4

d0041240 <__sread>:
d0041240:	b510      	push	{r4, lr}
d0041242:	460c      	mov	r4, r1
d0041244:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0041248:	f000 f872 	bl	d0041330 <_read_r>
d004124c:	2800      	cmp	r0, #0
d004124e:	bfab      	itete	ge
d0041250:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0041252:	89a3      	ldrhlt	r3, [r4, #12]
d0041254:	181b      	addge	r3, r3, r0
d0041256:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d004125a:	bfac      	ite	ge
d004125c:	6563      	strge	r3, [r4, #84]	; 0x54
d004125e:	81a3      	strhlt	r3, [r4, #12]
d0041260:	bd10      	pop	{r4, pc}

d0041262 <__swrite>:
d0041262:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0041266:	461f      	mov	r7, r3
d0041268:	898b      	ldrh	r3, [r1, #12]
d004126a:	05db      	lsls	r3, r3, #23
d004126c:	4605      	mov	r5, r0
d004126e:	460c      	mov	r4, r1
d0041270:	4616      	mov	r6, r2
d0041272:	d505      	bpl.n	d0041280 <__swrite+0x1e>
d0041274:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0041278:	2302      	movs	r3, #2
d004127a:	2200      	movs	r2, #0
d004127c:	f000 f846 	bl	d004130c <_lseek_r>
d0041280:	89a3      	ldrh	r3, [r4, #12]
d0041282:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0041286:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d004128a:	81a3      	strh	r3, [r4, #12]
d004128c:	4632      	mov	r2, r6
d004128e:	463b      	mov	r3, r7
d0041290:	4628      	mov	r0, r5
d0041292:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0041296:	f7fe bf39 	b.w	d004010c <_write_r>

d004129a <__sseek>:
d004129a:	b510      	push	{r4, lr}
d004129c:	460c      	mov	r4, r1
d004129e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00412a2:	f000 f833 	bl	d004130c <_lseek_r>
d00412a6:	1c43      	adds	r3, r0, #1
d00412a8:	89a3      	ldrh	r3, [r4, #12]
d00412aa:	bf15      	itete	ne
d00412ac:	6560      	strne	r0, [r4, #84]	; 0x54
d00412ae:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d00412b2:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d00412b6:	81a3      	strheq	r3, [r4, #12]
d00412b8:	bf18      	it	ne
d00412ba:	81a3      	strhne	r3, [r4, #12]
d00412bc:	bd10      	pop	{r4, pc}

d00412be <__sclose>:
d00412be:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00412c2:	f000 b801 	b.w	d00412c8 <_close_r>
	...

d00412c8 <_close_r>:
d00412c8:	b538      	push	{r3, r4, r5, lr}
d00412ca:	4d06      	ldr	r5, [pc, #24]	; (d00412e4 <_close_r+0x1c>)
d00412cc:	2300      	movs	r3, #0
d00412ce:	4604      	mov	r4, r0
d00412d0:	4608      	mov	r0, r1
d00412d2:	602b      	str	r3, [r5, #0]
d00412d4:	f7fe ff54 	bl	d0040180 <_close>
d00412d8:	1c43      	adds	r3, r0, #1
d00412da:	d102      	bne.n	d00412e2 <_close_r+0x1a>
d00412dc:	682b      	ldr	r3, [r5, #0]
d00412de:	b103      	cbz	r3, d00412e2 <_close_r+0x1a>
d00412e0:	6023      	str	r3, [r4, #0]
d00412e2:	bd38      	pop	{r3, r4, r5, pc}
d00412e4:	d00425ec 	.word	0xd00425ec

d00412e8 <_fstat_r>:
d00412e8:	b538      	push	{r3, r4, r5, lr}
d00412ea:	4d07      	ldr	r5, [pc, #28]	; (d0041308 <_fstat_r+0x20>)
d00412ec:	2300      	movs	r3, #0
d00412ee:	4604      	mov	r4, r0
d00412f0:	4608      	mov	r0, r1
d00412f2:	4611      	mov	r1, r2
d00412f4:	602b      	str	r3, [r5, #0]
d00412f6:	f7fe ff47 	bl	d0040188 <_fstat>
d00412fa:	1c43      	adds	r3, r0, #1
d00412fc:	d102      	bne.n	d0041304 <_fstat_r+0x1c>
d00412fe:	682b      	ldr	r3, [r5, #0]
d0041300:	b103      	cbz	r3, d0041304 <_fstat_r+0x1c>
d0041302:	6023      	str	r3, [r4, #0]
d0041304:	bd38      	pop	{r3, r4, r5, pc}
d0041306:	bf00      	nop
d0041308:	d00425ec 	.word	0xd00425ec

d004130c <_lseek_r>:
d004130c:	b538      	push	{r3, r4, r5, lr}
d004130e:	4d07      	ldr	r5, [pc, #28]	; (d004132c <_lseek_r+0x20>)
d0041310:	4604      	mov	r4, r0
d0041312:	4608      	mov	r0, r1
d0041314:	4611      	mov	r1, r2
d0041316:	2200      	movs	r2, #0
d0041318:	602a      	str	r2, [r5, #0]
d004131a:	461a      	mov	r2, r3
d004131c:	f7fe ff3a 	bl	d0040194 <_lseek>
d0041320:	1c43      	adds	r3, r0, #1
d0041322:	d102      	bne.n	d004132a <_lseek_r+0x1e>
d0041324:	682b      	ldr	r3, [r5, #0]
d0041326:	b103      	cbz	r3, d004132a <_lseek_r+0x1e>
d0041328:	6023      	str	r3, [r4, #0]
d004132a:	bd38      	pop	{r3, r4, r5, pc}
d004132c:	d00425ec 	.word	0xd00425ec

d0041330 <_read_r>:
d0041330:	b538      	push	{r3, r4, r5, lr}
d0041332:	4d07      	ldr	r5, [pc, #28]	; (d0041350 <_read_r+0x20>)
d0041334:	4604      	mov	r4, r0
d0041336:	4608      	mov	r0, r1
d0041338:	4611      	mov	r1, r2
d004133a:	2200      	movs	r2, #0
d004133c:	602a      	str	r2, [r5, #0]
d004133e:	461a      	mov	r2, r3
d0041340:	f7fe ff14 	bl	d004016c <_read>
d0041344:	1c43      	adds	r3, r0, #1
d0041346:	d102      	bne.n	d004134e <_read_r+0x1e>
d0041348:	682b      	ldr	r3, [r5, #0]
d004134a:	b103      	cbz	r3, d004134e <_read_r+0x1e>
d004134c:	6023      	str	r3, [r4, #0]
d004134e:	bd38      	pop	{r3, r4, r5, pc}
d0041350:	d00425ec 	.word	0xd00425ec

d0041354 <_global_impure_ptr>:
d0041354:	d0041420 46464952 00000000 45564157      ...RIFF....WAVE
d0041364:	00000000 2f736572 72747865 66696c61     ....res/extralif
d0041374:	61772e65 00000076 2f736572 62747361     e.wav...res/astb
d0041384:	736b6361 6270702e 00000000 2f736572     acks.ppb....res/
d0041394:	72617473 74737564 646f6d2e 00000000     stardust.mod....
d00413a4:	2f736572 31747361 6270702e 00000000     res/ast1.ppb....

d00413b4 <__sf_fake_stderr>:
	...

d00413d4 <__sf_fake_stdin>:
	...

d00413f4 <__sf_fake_stdout>:
	...

Disassembly of section .init:

d0041414 <_init>:
d0041414:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0041416:	bf00      	nop

Disassembly of section .fini:

d0041418 <_fini>:
d0041418:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d004141a:	bf00      	nop
