
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
d004001e:	f000 fe59 	bl	d0040cd4 <setbuf>
d0040022:	6833      	ldr	r3, [r6, #0]
d0040024:	2100      	movs	r1, #0
d0040026:	68d8      	ldr	r0, [r3, #12]
d0040028:	f000 fe54 	bl	d0040cd4 <setbuf>
d004002c:	4629      	mov	r1, r5
d004002e:	4620      	mov	r0, r4
d0040030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0040034:	f000 baf6 	b.w	d0040624 <main>
d0040038:	d0041d48 	.word	0xd0041d48

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
d0040100:	d0044b10 	.word	0xd0044b10
d0040104:	d0600000 	.word	0xd0600000
d0040108:	d0042968 	.word	0xd0042968

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
d0040154:	f000 fc6a 	bl	d0040a2c <__errno>
d0040158:	2209      	movs	r2, #9
d004015a:	4603      	mov	r3, r0
d004015c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0040160:	601a      	str	r2, [r3, #0]
d0040162:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0040164:	d00421c4 	.word	0xd00421c4
d0040168:	2001f000 	.word	0x2001f000

d004016c <_read>:
d004016c:	b508      	push	{r3, lr}
d004016e:	f000 fc5d 	bl	d0040a2c <__errno>
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
d00401ba:	f000 fc37 	bl	d0040a2c <__errno>
d00401be:	220c      	movs	r2, #12
d00401c0:	4603      	mov	r3, r0
d00401c2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00401c6:	601a      	str	r2, [r3, #0]
d00401c8:	bd10      	pop	{r4, pc}
d00401ca:	bf00      	nop
d00401cc:	d00421c0 	.word	0xd00421c0
d00401d0:	d0044b10 	.word	0xd0044b10
d00401d4:	d0600000 	.word	0xd0600000

d00401d8 <_isatty>:
d00401d8:	2001      	movs	r0, #1
d00401da:	4770      	bx	lr

d00401dc <LoadSFX>:
d00401dc:	b5f0      	push	{r4, r5, r6, r7, lr}
d00401de:	4c40      	ldr	r4, [pc, #256]	; (d00402e0 <LoadSFX+0x104>)
d00401e0:	460f      	mov	r7, r1
d00401e2:	4601      	mov	r1, r0
d00401e4:	b08f      	sub	sp, #60	; 0x3c
d00401e6:	7925      	ldrb	r5, [r4, #4]
d00401e8:	2201      	movs	r2, #1
d00401ea:	7963      	ldrb	r3, [r4, #5]
d00401ec:	79a0      	ldrb	r0, [r4, #6]
d00401ee:	ea45 2303 	orr.w	r3, r5, r3, lsl #8
d00401f2:	79e5      	ldrb	r5, [r4, #7]
d00401f4:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00401f8:	2000      	movs	r0, #0
d00401fa:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d00401fe:	681b      	ldr	r3, [r3, #0]
d0040200:	681b      	ldr	r3, [r3, #0]
d0040202:	4798      	blx	r3
d0040204:	bb00      	cbnz	r0, d0040248 <LoadSFX+0x6c>
d0040206:	7921      	ldrb	r1, [r4, #4]
d0040208:	ab02      	add	r3, sp, #8
d004020a:	7962      	ldrb	r2, [r4, #5]
d004020c:	79a6      	ldrb	r6, [r4, #6]
d004020e:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
d0040212:	79e5      	ldrb	r5, [r4, #7]
d0040214:	a903      	add	r1, sp, #12
d0040216:	ea42 4606 	orr.w	r6, r2, r6, lsl #16
d004021a:	222c      	movs	r2, #44	; 0x2c
d004021c:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d0040220:	682d      	ldr	r5, [r5, #0]
d0040222:	68ad      	ldr	r5, [r5, #8]
d0040224:	47a8      	blx	r5
d0040226:	a803      	add	r0, sp, #12
d0040228:	2204      	movs	r2, #4
d004022a:	492e      	ldr	r1, [pc, #184]	; (d00402e4 <LoadSFX+0x108>)
d004022c:	f000 fc0c 	bl	d0040a48 <memcmp>
d0040230:	b950      	cbnz	r0, d0040248 <LoadSFX+0x6c>
d0040232:	2204      	movs	r2, #4
d0040234:	492c      	ldr	r1, [pc, #176]	; (d00402e8 <LoadSFX+0x10c>)
d0040236:	a805      	add	r0, sp, #20
d0040238:	f000 fc06 	bl	d0040a48 <memcmp>
d004023c:	4605      	mov	r5, r0
d004023e:	b918      	cbnz	r0, d0040248 <LoadSFX+0x6c>
d0040240:	f8bd 3020 	ldrh.w	r3, [sp, #32]
d0040244:	2b01      	cmp	r3, #1
d0040246:	d010      	beq.n	d004026a <LoadSFX+0x8e>
d0040248:	7923      	ldrb	r3, [r4, #4]
d004024a:	2000      	movs	r0, #0
d004024c:	7962      	ldrb	r2, [r4, #5]
d004024e:	79a1      	ldrb	r1, [r4, #6]
d0040250:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040254:	79e2      	ldrb	r2, [r4, #7]
d0040256:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004025a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004025e:	681b      	ldr	r3, [r3, #0]
d0040260:	68db      	ldr	r3, [r3, #12]
d0040262:	4798      	blx	r3
d0040264:	2000      	movs	r0, #0
d0040266:	b00f      	add	sp, #60	; 0x3c
d0040268:	bdf0      	pop	{r4, r5, r6, r7, pc}
d004026a:	9a0d      	ldr	r2, [sp, #52]	; 0x34
d004026c:	4610      	mov	r0, r2
d004026e:	9201      	str	r2, [sp, #4]
d0040270:	f000 fbe2 	bl	d0040a38 <malloc>
d0040274:	9a01      	ldr	r2, [sp, #4]
d0040276:	4601      	mov	r1, r0
d0040278:	6038      	str	r0, [r7, #0]
d004027a:	b1f8      	cbz	r0, d00402bc <LoadSFX+0xe0>
d004027c:	7920      	ldrb	r0, [r4, #4]
d004027e:	ab02      	add	r3, sp, #8
d0040280:	7966      	ldrb	r6, [r4, #5]
d0040282:	f894 c006 	ldrb.w	ip, [r4, #6]
d0040286:	ea40 2606 	orr.w	r6, r0, r6, lsl #8
d004028a:	79e7      	ldrb	r7, [r4, #7]
d004028c:	4628      	mov	r0, r5
d004028e:	ea46 460c 	orr.w	r6, r6, ip, lsl #16
d0040292:	ea46 6607 	orr.w	r6, r6, r7, lsl #24
d0040296:	6836      	ldr	r6, [r6, #0]
d0040298:	68b6      	ldr	r6, [r6, #8]
d004029a:	47b0      	blx	r6
d004029c:	7923      	ldrb	r3, [r4, #4]
d004029e:	7962      	ldrb	r2, [r4, #5]
d00402a0:	4628      	mov	r0, r5
d00402a2:	79a1      	ldrb	r1, [r4, #6]
d00402a4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00402a8:	79e2      	ldrb	r2, [r4, #7]
d00402aa:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00402ae:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00402b2:	681b      	ldr	r3, [r3, #0]
d00402b4:	68db      	ldr	r3, [r3, #12]
d00402b6:	4798      	blx	r3
d00402b8:	980d      	ldr	r0, [sp, #52]	; 0x34
d00402ba:	e7d4      	b.n	d0040266 <LoadSFX+0x8a>
d00402bc:	7923      	ldrb	r3, [r4, #4]
d00402be:	7962      	ldrb	r2, [r4, #5]
d00402c0:	79a5      	ldrb	r5, [r4, #6]
d00402c2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00402c6:	79e2      	ldrb	r2, [r4, #7]
d00402c8:	9001      	str	r0, [sp, #4]
d00402ca:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00402ce:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00402d2:	681b      	ldr	r3, [r3, #0]
d00402d4:	68db      	ldr	r3, [r3, #12]
d00402d6:	4798      	blx	r3
d00402d8:	9901      	ldr	r1, [sp, #4]
d00402da:	4608      	mov	r0, r1
d00402dc:	e7c3      	b.n	d0040266 <LoadSFX+0x8a>
d00402de:	bf00      	nop
d00402e0:	2001f000 	.word	0x2001f000
d00402e4:	d0041bf8 	.word	0xd0041bf8
d00402e8:	d0041c00 	.word	0xd0041c00

d00402ec <initAstroids>:
d00402ec:	4848      	ldr	r0, [pc, #288]	; (d0040410 <initAstroids+0x124>)
d00402ee:	4b49      	ldr	r3, [pc, #292]	; (d0040414 <initAstroids+0x128>)
d00402f0:	f8df c12c 	ldr.w	ip, [pc, #300]	; d0040420 <initAstroids+0x134>
d00402f4:	6819      	ldr	r1, [r3, #0]
d00402f6:	4a48      	ldr	r2, [pc, #288]	; (d0040418 <initAstroids+0x12c>)
d00402f8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00402fc:	f240 2a19 	movw	sl, #537	; 0x219
d0040300:	f240 1979 	movw	r9, #377	; 0x179
d0040304:	f04f 0bff 	mov.w	fp, #255	; 0xff
d0040308:	f500 78c0 	add.w	r8, r0, #384	; 0x180
d004030c:	f8df e114 	ldr.w	lr, [pc, #276]	; d0040424 <initAstroids+0x138>
d0040310:	4f42      	ldr	r7, [pc, #264]	; (d004041c <initAstroids+0x130>)
d0040312:	ea81 3141 	eor.w	r1, r1, r1, lsl #13
d0040316:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d004031a:	ea81 1141 	eor.w	r1, r1, r1, lsl #5
d004031e:	ea81 3341 	eor.w	r3, r1, r1, lsl #13
d0040322:	fbae 4501 	umull	r4, r5, lr, r1
d0040326:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d004032a:	0a2d      	lsrs	r5, r5, #8
d004032c:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0040330:	fb0a 1115 	mls	r1, sl, r5, r1
d0040334:	fbac 5403 	umull	r5, r4, ip, r3
d0040338:	f1a1 053c 	sub.w	r5, r1, #60	; 0x3c
d004033c:	1b19      	subs	r1, r3, r4
d004033e:	8005      	strh	r5, [r0, #0]
d0040340:	eb04 0151 	add.w	r1, r4, r1, lsr #1
d0040344:	0a09      	lsrs	r1, r1, #8
d0040346:	fb09 3111 	mls	r1, r9, r1, r3
d004034a:	393c      	subs	r1, #60	; 0x3c
d004034c:	8041      	strh	r1, [r0, #2]
d004034e:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d0040352:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0040356:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d004035a:	fba2 4103 	umull	r4, r1, r2, r3
d004035e:	1a5c      	subs	r4, r3, r1
d0040360:	eb01 0154 	add.w	r1, r1, r4, lsr #1
d0040364:	0889      	lsrs	r1, r1, #2
d0040366:	ebc1 01c1 	rsb	r1, r1, r1, lsl #3
d004036a:	1a59      	subs	r1, r3, r1
d004036c:	3903      	subs	r1, #3
d004036e:	b209      	sxth	r1, r1
d0040370:	2900      	cmp	r1, #0
d0040372:	d0ec      	beq.n	d004034e <initAstroids+0x62>
d0040374:	8081      	strh	r1, [r0, #4]
d0040376:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d004037a:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d004037e:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0040382:	fba2 4103 	umull	r4, r1, r2, r3
d0040386:	1a5c      	subs	r4, r3, r1
d0040388:	eb01 0154 	add.w	r1, r1, r4, lsr #1
d004038c:	0889      	lsrs	r1, r1, #2
d004038e:	ebc1 01c1 	rsb	r1, r1, r1, lsl #3
d0040392:	1a59      	subs	r1, r3, r1
d0040394:	3903      	subs	r1, #3
d0040396:	b209      	sxth	r1, r1
d0040398:	2900      	cmp	r1, #0
d004039a:	d0ec      	beq.n	d0040376 <initAstroids+0x8a>
d004039c:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d00403a0:	80c1      	strh	r1, [r0, #6]
d00403a2:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d00403a6:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d00403aa:	ea83 3543 	eor.w	r5, r3, r3, lsl #13
d00403ae:	fba7 4103 	umull	r4, r1, r7, r3
d00403b2:	ea85 4555 	eor.w	r5, r5, r5, lsr #17
d00403b6:	0909      	lsrs	r1, r1, #4
d00403b8:	ea85 1545 	eor.w	r5, r5, r5, lsl #5
d00403bc:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d00403c0:	fba7 4605 	umull	r4, r6, r7, r5
d00403c4:	ea85 3445 	eor.w	r4, r5, r5, lsl #13
d00403c8:	eba3 01c1 	sub.w	r1, r3, r1, lsl #3
d00403cc:	f026 0301 	bic.w	r3, r6, #1
d00403d0:	ea84 4454 	eor.w	r4, r4, r4, lsr #17
d00403d4:	7201      	strb	r1, [r0, #8]
d00403d6:	eb03 0356 	add.w	r3, r3, r6, lsr #1
d00403da:	ea84 1144 	eor.w	r1, r4, r4, lsl #5
d00403de:	1aeb      	subs	r3, r5, r3
d00403e0:	3301      	adds	r3, #1
d00403e2:	7243      	strb	r3, [r0, #9]
d00403e4:	07e3      	lsls	r3, r4, #31
d00403e6:	d40a      	bmi.n	d00403fe <initAstroids+0x112>
d00403e8:	f04f 0301 	mov.w	r3, #1
d00403ec:	300c      	adds	r0, #12
d00403ee:	f800 3c01 	strb.w	r3, [r0, #-1]
d00403f2:	4540      	cmp	r0, r8
d00403f4:	d18d      	bne.n	d0040312 <initAstroids+0x26>
d00403f6:	4b07      	ldr	r3, [pc, #28]	; (d0040414 <initAstroids+0x128>)
d00403f8:	6019      	str	r1, [r3, #0]
d00403fa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00403fe:	f880 b00b 	strb.w	fp, [r0, #11]
d0040402:	300c      	adds	r0, #12
d0040404:	4580      	cmp	r8, r0
d0040406:	d184      	bne.n	d0040312 <initAstroids+0x26>
d0040408:	4b02      	ldr	r3, [pc, #8]	; (d0040414 <initAstroids+0x128>)
d004040a:	6019      	str	r1, [r3, #0]
d004040c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040410:	d0042970 	.word	0xd0042970
d0040414:	d00421ac 	.word	0xd00421ac
d0040418:	24924925 	.word	0x24924925
d004041c:	aaaaaaab 	.word	0xaaaaaaab
d0040420:	5babcc65 	.word	0x5babcc65
d0040424:	7a0a7ce7 	.word	0x7a0a7ce7

d0040428 <proc_astroids>:
d0040428:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004042c:	4c3e      	ldr	r4, [pc, #248]	; (d0040528 <proc_astroids+0x100>)
d004042e:	b085      	sub	sp, #20
d0040430:	f04f 0800 	mov.w	r8, #0
d0040434:	4d3d      	ldr	r5, [pc, #244]	; (d004052c <proc_astroids+0x104>)
d0040436:	f44f 79a0 	mov.w	r9, #320	; 0x140
d004043a:	f504 77c0 	add.w	r7, r4, #384	; 0x180
d004043e:	4e3c      	ldr	r6, [pc, #240]	; (d0040530 <proc_astroids+0x108>)
d0040440:	e034      	b.n	d00404ac <proc_astroids+0x84>
d0040442:	f64f 73c0 	movw	r3, #65472	; 0xffc0
d0040446:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d004044a:	8023      	strh	r3, [r4, #0]
d004044c:	dd57      	ble.n	d00404fe <proc_astroids+0xd6>
d004044e:	f9b4 1000 	ldrsh.w	r1, [r4]
d0040452:	f64f 73c0 	movw	r3, #65472	; 0xffc0
d0040456:	f111 0f40 	cmn.w	r1, #64	; 0x40
d004045a:	8063      	strh	r3, [r4, #2]
d004045c:	db4c      	blt.n	d00404f8 <proc_astroids+0xd0>
d004045e:	f06f 023f 	mvn.w	r2, #63	; 0x3f
d0040462:	7b2b      	ldrb	r3, [r5, #12]
d0040464:	f04f 0c40 	mov.w	ip, #64	; 0x40
d0040468:	f895 a00d 	ldrb.w	sl, [r5, #13]
d004046c:	f04f 0ec0 	mov.w	lr, #192	; 0xc0
d0040470:	7ba8      	ldrb	r0, [r5, #14]
d0040472:	340c      	adds	r4, #12
d0040474:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0040478:	f895 b00f 	ldrb.w	fp, [r5, #15]
d004047c:	f814 ac04 	ldrb.w	sl, [r4, #-4]
d0040480:	ea43 4000 	orr.w	r0, r3, r0, lsl #16
d0040484:	f44f 7300 	mov.w	r3, #512	; 0x200
d0040488:	ea40 6b0b 	orr.w	fp, r0, fp, lsl #24
d004048c:	6830      	ldr	r0, [r6, #0]
d004048e:	f8db b004 	ldr.w	fp, [fp, #4]
d0040492:	f8cd a00c 	str.w	sl, [sp, #12]
d0040496:	f8cd c008 	str.w	ip, [sp, #8]
d004049a:	f8cd c004 	str.w	ip, [sp, #4]
d004049e:	f8cd e000 	str.w	lr, [sp]
d00404a2:	f8db a010 	ldr.w	sl, [fp, #16]
d00404a6:	47d0      	blx	sl
d00404a8:	42bc      	cmp	r4, r7
d00404aa:	d03a      	beq.n	d0040522 <proc_astroids+0xfa>
d00404ac:	7aa3      	ldrb	r3, [r4, #10]
d00404ae:	7a62      	ldrb	r2, [r4, #9]
d00404b0:	3301      	adds	r3, #1
d00404b2:	b2db      	uxtb	r3, r3
d00404b4:	429a      	cmp	r2, r3
d00404b6:	72a3      	strb	r3, [r4, #10]
d00404b8:	d20c      	bcs.n	d00404d4 <proc_astroids+0xac>
d00404ba:	7a23      	ldrb	r3, [r4, #8]
d00404bc:	7ae2      	ldrb	r2, [r4, #11]
d00404be:	f884 800a 	strb.w	r8, [r4, #10]
d00404c2:	4413      	add	r3, r2
d00404c4:	b25b      	sxtb	r3, r3
d00404c6:	2b00      	cmp	r3, #0
d00404c8:	db28      	blt.n	d004051c <proc_astroids+0xf4>
d00404ca:	2b17      	cmp	r3, #23
d00404cc:	bfd4      	ite	le
d00404ce:	7223      	strble	r3, [r4, #8]
d00404d0:	f884 8008 	strbgt.w	r8, [r4, #8]
d00404d4:	8823      	ldrh	r3, [r4, #0]
d00404d6:	88a0      	ldrh	r0, [r4, #4]
d00404d8:	8862      	ldrh	r2, [r4, #2]
d00404da:	88e1      	ldrh	r1, [r4, #6]
d00404dc:	4403      	add	r3, r0
d00404de:	440a      	add	r2, r1
d00404e0:	b21b      	sxth	r3, r3
d00404e2:	b212      	sxth	r2, r2
d00404e4:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d00404e8:	8023      	strh	r3, [r4, #0]
d00404ea:	8062      	strh	r2, [r4, #2]
d00404ec:	dca9      	bgt.n	d0040442 <proc_astroids+0x1a>
d00404ee:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d00404f2:	dcac      	bgt.n	d004044e <proc_astroids+0x26>
d00404f4:	3340      	adds	r3, #64	; 0x40
d00404f6:	da02      	bge.n	d00404fe <proc_astroids+0xd6>
d00404f8:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d00404fc:	8023      	strh	r3, [r4, #0]
d00404fe:	f9b4 2002 	ldrsh.w	r2, [r4, #2]
d0040502:	f112 0f40 	cmn.w	r2, #64	; 0x40
d0040506:	da06      	bge.n	d0040516 <proc_astroids+0xee>
d0040508:	f44f 72a0 	mov.w	r2, #320	; 0x140
d004050c:	f9b4 1000 	ldrsh.w	r1, [r4]
d0040510:	f8a4 9002 	strh.w	r9, [r4, #2]
d0040514:	e7a5      	b.n	d0040462 <proc_astroids+0x3a>
d0040516:	f9b4 1000 	ldrsh.w	r1, [r4]
d004051a:	e7a2      	b.n	d0040462 <proc_astroids+0x3a>
d004051c:	2317      	movs	r3, #23
d004051e:	7223      	strb	r3, [r4, #8]
d0040520:	e7d8      	b.n	d00404d4 <proc_astroids+0xac>
d0040522:	b005      	add	sp, #20
d0040524:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040528:	d0042970 	.word	0xd0042970
d004052c:	2001f000 	.word	0x2001f000
d0040530:	d0042af4 	.word	0xd0042af4

d0040534 <sbx_init_worms>:
d0040534:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040538:	2800      	cmp	r0, #0
d004053a:	4c36      	ldr	r4, [pc, #216]	; (d0040614 <sbx_init_worms+0xe0>)
d004053c:	f04f 0900 	mov.w	r9, #0
d0040540:	f504 68f0 	add.w	r8, r4, #1920	; 0x780
d0040544:	bf08      	it	eq
d0040546:	f04f 30a5 	moveq.w	r0, #2779096485	; 0xa5a5a5a5
d004054a:	ea80 3040 	eor.w	r0, r0, r0, lsl #13
d004054e:	2600      	movs	r6, #0
d0040550:	4623      	mov	r3, r4
d0040552:	f1a4 02a4 	sub.w	r2, r4, #164	; 0xa4
d0040556:	ea80 4050 	eor.w	r0, r0, r0, lsr #17
d004055a:	4635      	mov	r5, r6
d004055c:	ea80 1c40 	eor.w	ip, r0, r0, lsl #5
d0040560:	482d      	ldr	r0, [pc, #180]	; (d0040618 <sbx_init_worms+0xe4>)
d0040562:	ea8c 374c 	eor.w	r7, ip, ip, lsl #13
d0040566:	fba0 0a0c 	umull	r0, sl, r0, ip
d004056a:	482c      	ldr	r0, [pc, #176]	; (d004061c <sbx_init_worms+0xe8>)
d004056c:	ea87 4757 	eor.w	r7, r7, r7, lsr #17
d0040570:	ea4f 2a1a 	mov.w	sl, sl, lsr #8
d0040574:	ea87 1747 	eor.w	r7, r7, r7, lsl #5
d0040578:	ea87 3b47 	eor.w	fp, r7, r7, lsl #13
d004057c:	fba0 e007 	umull	lr, r0, r0, r7
d0040580:	ea8b 4b5b 	eor.w	fp, fp, fp, lsr #17
d0040584:	0a00      	lsrs	r0, r0, #8
d0040586:	ea8b 1b4b 	eor.w	fp, fp, fp, lsl #5
d004058a:	eb00 1000 	add.w	r0, r0, r0, lsl #4
d004058e:	ea8b 3e4b 	eor.w	lr, fp, fp, lsl #13
d0040592:	f804 bca4 	strb.w	fp, [r4, #-164]
d0040596:	ebca 0bca 	rsb	fp, sl, sl, lsl #3
d004059a:	eb00 1000 	add.w	r0, r0, r0, lsl #4
d004059e:	ea8e 4e5e 	eor.w	lr, lr, lr, lsr #17
d00405a2:	eb0a 1a8b 	add.w	sl, sl, fp, lsl #6
d00405a6:	1a3f      	subs	r7, r7, r0
d00405a8:	ea8e 104e 	eor.w	r0, lr, lr, lsl #5
d00405ac:	f00e 0e03 	and.w	lr, lr, #3
d00405b0:	ebac 0c0a 	sub.w	ip, ip, sl
d00405b4:	3708      	adds	r7, #8
d00405b6:	ea80 3040 	eor.w	r0, r0, r0, lsl #13
d00405ba:	f10e 0e02 	add.w	lr, lr, #2
d00405be:	f10c 0c08 	add.w	ip, ip, #8
d00405c2:	b23f      	sxth	r7, r7
d00405c4:	ea80 4050 	eor.w	r0, r0, r0, lsr #17
d00405c8:	f804 eca3 	strb.w	lr, [r4, #-163]
d00405cc:	fa0f fc8c 	sxth.w	ip, ip
d00405d0:	f367 060f 	bfi	r6, r7, #0, #16
d00405d4:	f000 0e0f 	and.w	lr, r0, #15
d00405d8:	ea80 1040 	eor.w	r0, r0, r0, lsl #5
d00405dc:	f36c 050f 	bfi	r5, ip, #0, #16
d00405e0:	f367 461f 	bfi	r6, r7, #16, #16
d00405e4:	448e      	add	lr, r1
d00405e6:	f824 7ca6 	strh.w	r7, [r4, #-166]
d00405ea:	f36c 451f 	bfi	r5, ip, #16, #16
d00405ee:	f824 cca8 	strh.w	ip, [r4, #-168]
d00405f2:	f804 eca2 	strb.w	lr, [r4, #-162]
d00405f6:	f803 9950 	strb.w	r9, [r3], #-80
d00405fa:	f842 5f04 	str.w	r5, [r2, #4]!
d00405fe:	f843 6b04 	str.w	r6, [r3], #4
d0040602:	429c      	cmp	r4, r3
d0040604:	d1f9      	bne.n	d00405fa <sbx_init_worms+0xc6>
d0040606:	34c0      	adds	r4, #192	; 0xc0
d0040608:	4544      	cmp	r4, r8
d004060a:	d19e      	bne.n	d004054a <sbx_init_worms+0x16>
d004060c:	4b04      	ldr	r3, [pc, #16]	; (d0040620 <sbx_init_worms+0xec>)
d004060e:	6018      	str	r0, [r3, #0]
d0040610:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040614:	d0042288 	.word	0xd0042288
d0040618:	91f5bcb9 	.word	0x91f5bcb9
d004061c:	e2c4a689 	.word	0xe2c4a689
d0040620:	d00421ac 	.word	0xd00421ac

d0040624 <main>:
d0040624:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040628:	4ca5      	ldr	r4, [pc, #660]	; (d00408c0 <main+0x29c>)
d004062a:	b083      	sub	sp, #12
d004062c:	f44f 3000 	mov.w	r0, #131072	; 0x20000
d0040630:	f04f 0b00 	mov.w	fp, #0
d0040634:	7823      	ldrb	r3, [r4, #0]
d0040636:	2501      	movs	r5, #1
d0040638:	7862      	ldrb	r2, [r4, #1]
d004063a:	f06f 067e 	mvn.w	r6, #126	; 0x7e
d004063e:	78a1      	ldrb	r1, [r4, #2]
d0040640:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040644:	78e2      	ldrb	r2, [r4, #3]
d0040646:	f8df 82a4 	ldr.w	r8, [pc, #676]	; d00408ec <main+0x2c8>
d004064a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004064e:	f8df 92a0 	ldr.w	r9, [pc, #672]	; d00408f0 <main+0x2cc>
d0040652:	f8df a2a0 	ldr.w	sl, [pc, #672]	; d00408f4 <main+0x2d0>
d0040656:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004065a:	681b      	ldr	r3, [r3, #0]
d004065c:	4798      	blx	r3
d004065e:	4899      	ldr	r0, [pc, #612]	; (d00408c4 <main+0x2a0>)
d0040660:	f000 fb30 	bl	d0040cc4 <puts>
d0040664:	4898      	ldr	r0, [pc, #608]	; (d00408c8 <main+0x2a4>)
d0040666:	f000 fb2d 	bl	d0040cc4 <puts>
d004066a:	2164      	movs	r1, #100	; 0x64
d004066c:	4897      	ldr	r0, [pc, #604]	; (d00408cc <main+0x2a8>)
d004066e:	f000 faa3 	bl	d0040bb8 <iprintf>
d0040672:	4897      	ldr	r0, [pc, #604]	; (d00408d0 <main+0x2ac>)
d0040674:	f000 fb26 	bl	d0040cc4 <puts>
d0040678:	f7ff fd3c 	bl	d00400f4 <initMalloc>
d004067c:	7b23      	ldrb	r3, [r4, #12]
d004067e:	7b62      	ldrb	r2, [r4, #13]
d0040680:	2190      	movs	r1, #144	; 0x90
d0040682:	7ba7      	ldrb	r7, [r4, #14]
d0040684:	20dc      	movs	r0, #220	; 0xdc
d0040686:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004068a:	7be2      	ldrb	r2, [r4, #15]
d004068c:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d0040690:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040694:	681b      	ldr	r3, [r3, #0]
d0040696:	68db      	ldr	r3, [r3, #12]
d0040698:	4798      	blx	r3
d004069a:	7b27      	ldrb	r7, [r4, #12]
d004069c:	7b60      	ldrb	r0, [r4, #13]
d004069e:	f44f 73a0 	mov.w	r3, #320	; 0x140
d00406a2:	7ba1      	ldrb	r1, [r4, #14]
d00406a4:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00406a8:	ea47 2700 	orr.w	r7, r7, r0, lsl #8
d00406ac:	7be0      	ldrb	r0, [r4, #15]
d00406ae:	ea47 4701 	orr.w	r7, r7, r1, lsl #16
d00406b2:	4619      	mov	r1, r3
d00406b4:	ea47 6700 	orr.w	r7, r7, r0, lsl #24
d00406b8:	4610      	mov	r0, r2
d00406ba:	683f      	ldr	r7, [r7, #0]
d00406bc:	f8cd b000 	str.w	fp, [sp]
d00406c0:	693f      	ldr	r7, [r7, #16]
d00406c2:	47b8      	blx	r7
d00406c4:	7c23      	ldrb	r3, [r4, #16]
d00406c6:	7c62      	ldrb	r2, [r4, #17]
d00406c8:	f44f 7000 	mov.w	r0, #512	; 0x200
d00406cc:	7ca1      	ldrb	r1, [r4, #18]
d00406ce:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00406d2:	7ce2      	ldrb	r2, [r4, #19]
d00406d4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00406d8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00406dc:	681b      	ldr	r3, [r3, #0]
d00406de:	681b      	ldr	r3, [r3, #0]
d00406e0:	4798      	blx	r3
d00406e2:	7c23      	ldrb	r3, [r4, #16]
d00406e4:	7c62      	ldrb	r2, [r4, #17]
d00406e6:	4641      	mov	r1, r8
d00406e8:	7ca0      	ldrb	r0, [r4, #18]
d00406ea:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00406ee:	7ce2      	ldrb	r2, [r4, #19]
d00406f0:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00406f4:	4877      	ldr	r0, [pc, #476]	; (d00408d4 <main+0x2b0>)
d00406f6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00406fa:	681b      	ldr	r3, [r3, #0]
d00406fc:	685b      	ldr	r3, [r3, #4]
d00406fe:	701d      	strb	r5, [r3, #0]
d0040700:	f7ff fd6c 	bl	d00401dc <LoadSFX>
d0040704:	7c27      	ldrb	r7, [r4, #16]
d0040706:	f894 c011 	ldrb.w	ip, [r4, #17]
d004070a:	4602      	mov	r2, r0
d004070c:	7ca0      	ldrb	r0, [r4, #18]
d004070e:	465b      	mov	r3, fp
d0040710:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d0040714:	f8d8 1000 	ldr.w	r1, [r8]
d0040718:	46d8      	mov	r8, fp
d004071a:	ea47 4700 	orr.w	r7, r7, r0, lsl #16
d004071e:	7ce0      	ldrb	r0, [r4, #19]
d0040720:	ea47 6700 	orr.w	r7, r7, r0, lsl #24
d0040724:	4658      	mov	r0, fp
d0040726:	68bf      	ldr	r7, [r7, #8]
d0040728:	68ff      	ldr	r7, [r7, #12]
d004072a:	47b8      	blx	r7
d004072c:	7c23      	ldrb	r3, [r4, #16]
d004072e:	7c62      	ldrb	r2, [r4, #17]
d0040730:	4658      	mov	r0, fp
d0040732:	7ca1      	ldrb	r1, [r4, #18]
d0040734:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040738:	7ce2      	ldrb	r2, [r4, #19]
d004073a:	4f67      	ldr	r7, [pc, #412]	; (d00408d8 <main+0x2b4>)
d004073c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040740:	f64a 4144 	movw	r1, #44100	; 0xac44
d0040744:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040748:	689b      	ldr	r3, [r3, #8]
d004074a:	691b      	ldr	r3, [r3, #16]
d004074c:	4798      	blx	r3
d004074e:	7c23      	ldrb	r3, [r4, #16]
d0040750:	7c62      	ldrb	r2, [r4, #17]
d0040752:	4658      	mov	r0, fp
d0040754:	7ca1      	ldrb	r1, [r4, #18]
d0040756:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004075a:	7ce2      	ldrb	r2, [r4, #19]
d004075c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040760:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040764:	689b      	ldr	r3, [r3, #8]
d0040766:	685b      	ldr	r3, [r3, #4]
d0040768:	4798      	blx	r3
d004076a:	7c23      	ldrb	r3, [r4, #16]
d004076c:	7c62      	ldrb	r2, [r4, #17]
d004076e:	4658      	mov	r0, fp
d0040770:	7ca1      	ldrb	r1, [r4, #18]
d0040772:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040776:	7ce2      	ldrb	r2, [r4, #19]
d0040778:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004077c:	21f0      	movs	r1, #240	; 0xf0
d004077e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040782:	689b      	ldr	r3, [r3, #8]
d0040784:	695b      	ldr	r3, [r3, #20]
d0040786:	4798      	blx	r3
d0040788:	7c23      	ldrb	r3, [r4, #16]
d004078a:	7c62      	ldrb	r2, [r4, #17]
d004078c:	4659      	mov	r1, fp
d004078e:	7ca0      	ldrb	r0, [r4, #18]
d0040790:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040794:	7ce2      	ldrb	r2, [r4, #19]
d0040796:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004079a:	4658      	mov	r0, fp
d004079c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00407a0:	689b      	ldr	r3, [r3, #8]
d00407a2:	699b      	ldr	r3, [r3, #24]
d00407a4:	4798      	blx	r3
d00407a6:	7c23      	ldrb	r3, [r4, #16]
d00407a8:	7c61      	ldrb	r1, [r4, #17]
d00407aa:	4658      	mov	r0, fp
d00407ac:	7ca2      	ldrb	r2, [r4, #18]
d00407ae:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d00407b2:	7ce1      	ldrb	r1, [r4, #19]
d00407b4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00407b8:	f241 1251 	movw	r2, #4433	; 0x1151
d00407bc:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d00407c0:	21c8      	movs	r1, #200	; 0xc8
d00407c2:	689b      	ldr	r3, [r3, #8]
d00407c4:	69db      	ldr	r3, [r3, #28]
d00407c6:	4798      	blx	r3
d00407c8:	7c23      	ldrb	r3, [r4, #16]
d00407ca:	7c62      	ldrb	r2, [r4, #17]
d00407cc:	4629      	mov	r1, r5
d00407ce:	7ca0      	ldrb	r0, [r4, #18]
d00407d0:	465d      	mov	r5, fp
d00407d2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00407d6:	7ce2      	ldrb	r2, [r4, #19]
d00407d8:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00407dc:	4658      	mov	r0, fp
d00407de:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00407e2:	689b      	ldr	r3, [r3, #8]
d00407e4:	6a1b      	ldr	r3, [r3, #32]
d00407e6:	4798      	blx	r3
d00407e8:	7b23      	ldrb	r3, [r4, #12]
d00407ea:	7b62      	ldrb	r2, [r4, #13]
d00407ec:	483b      	ldr	r0, [pc, #236]	; (d00408dc <main+0x2b8>)
d00407ee:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00407f2:	7ba2      	ldrb	r2, [r4, #14]
d00407f4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00407f8:	7be2      	ldrb	r2, [r4, #15]
d00407fa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00407fe:	681b      	ldr	r3, [r3, #0]
d0040800:	f8c0 b000 	str.w	fp, [r0]
d0040804:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d0040806:	4798      	blx	r3
d0040808:	7b23      	ldrb	r3, [r4, #12]
d004080a:	7b62      	ldrb	r2, [r4, #13]
d004080c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040810:	7ba2      	ldrb	r2, [r4, #14]
d0040812:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040816:	7be2      	ldrb	r2, [r4, #15]
d0040818:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004081c:	681b      	ldr	r3, [r3, #0]
d004081e:	6a1b      	ldr	r3, [r3, #32]
d0040820:	4798      	blx	r3
d0040822:	7b23      	ldrb	r3, [r4, #12]
d0040824:	7b62      	ldrb	r2, [r4, #13]
d0040826:	f8c9 0000 	str.w	r0, [r9]
d004082a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004082e:	7ba2      	ldrb	r2, [r4, #14]
d0040830:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040834:	7be2      	ldrb	r2, [r4, #15]
d0040836:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004083a:	681b      	ldr	r3, [r3, #0]
d004083c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d004083e:	4798      	blx	r3
d0040840:	2150      	movs	r1, #80	; 0x50
d0040842:	f8ca 0000 	str.w	r0, [sl]
d0040846:	2090      	movs	r0, #144	; 0x90
d0040848:	f7ff fe74 	bl	d0040534 <sbx_init_worms>
d004084c:	f7ff fd4e 	bl	d00402ec <initAstroids>
d0040850:	7c23      	ldrb	r3, [r4, #16]
d0040852:	7c62      	ldrb	r2, [r4, #17]
d0040854:	4659      	mov	r1, fp
d0040856:	4822      	ldr	r0, [pc, #136]	; (d00408e0 <main+0x2bc>)
d0040858:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004085c:	7ca2      	ldrb	r2, [r4, #18]
d004085e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040862:	7ce2      	ldrb	r2, [r4, #19]
d0040864:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040868:	685b      	ldr	r3, [r3, #4]
d004086a:	681b      	ldr	r3, [r3, #0]
d004086c:	4798      	blx	r3
d004086e:	f44f 30c0 	mov.w	r0, #98304	; 0x18000
d0040872:	f000 f8e1 	bl	d0040a38 <malloc>
d0040876:	4b1b      	ldr	r3, [pc, #108]	; (d00408e4 <main+0x2c0>)
d0040878:	4601      	mov	r1, r0
d004087a:	481b      	ldr	r0, [pc, #108]	; (d00408e8 <main+0x2c4>)
d004087c:	6019      	str	r1, [r3, #0]
d004087e:	f7ff fbe5 	bl	d004004c <LoadPPB>
d0040882:	7b23      	ldrb	r3, [r4, #12]
d0040884:	7b62      	ldrb	r2, [r4, #13]
d0040886:	f8d9 0000 	ldr.w	r0, [r9]
d004088a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004088e:	7ba2      	ldrb	r2, [r4, #14]
d0040890:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040894:	7be2      	ldrb	r2, [r4, #15]
d0040896:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004089a:	681b      	ldr	r3, [r3, #0]
d004089c:	699b      	ldr	r3, [r3, #24]
d004089e:	4798      	blx	r3
d00408a0:	7b23      	ldrb	r3, [r4, #12]
d00408a2:	7b62      	ldrb	r2, [r4, #13]
d00408a4:	f8d9 0000 	ldr.w	r0, [r9]
d00408a8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00408ac:	7ba2      	ldrb	r2, [r4, #14]
d00408ae:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00408b2:	7be2      	ldrb	r2, [r4, #15]
d00408b4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00408b8:	681b      	ldr	r3, [r3, #0]
d00408ba:	695b      	ldr	r3, [r3, #20]
d00408bc:	4798      	blx	r3
d00408be:	e08c      	b.n	d00409da <main+0x3b6>
d00408c0:	2001f000 	.word	0x2001f000
d00408c4:	d0041c08 	.word	0xd0041c08
d00408c8:	d0041c30 	.word	0xd0041c30
d00408cc:	d0041c58 	.word	0xd0041c58
d00408d0:	d0041c74 	.word	0xd0041c74
d00408d4:	d0041c84 	.word	0xd0041c84
d00408d8:	d00421c8 	.word	0xd00421c8
d00408dc:	d0041dac 	.word	0xd0041dac
d00408e0:	d0041c94 	.word	0xd0041c94
d00408e4:	d0042af4 	.word	0xd0042af4
d00408e8:	d0041ca0 	.word	0xd0041ca0
d00408ec:	d004296c 	.word	0xd004296c
d00408f0:	d0042af8 	.word	0xd0042af8
d00408f4:	d0042af0 	.word	0xd0042af0
d00408f8:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d00408fc:	7be3      	ldrb	r3, [r4, #15]
d00408fe:	f8da 1000 	ldr.w	r1, [sl]
d0040902:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040906:	f8d9 0000 	ldr.w	r0, [r9]
d004090a:	681b      	ldr	r3, [r3, #0]
d004090c:	69db      	ldr	r3, [r3, #28]
d004090e:	4798      	blx	r3
d0040910:	7b20      	ldrb	r0, [r4, #12]
d0040912:	3501      	adds	r5, #1
d0040914:	7b61      	ldrb	r1, [r4, #13]
d0040916:	7ba2      	ldrb	r2, [r4, #14]
d0040918:	b2ed      	uxtb	r5, r5
d004091a:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004091e:	7be3      	ldrb	r3, [r4, #15]
d0040920:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040924:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040928:	685b      	ldr	r3, [r3, #4]
d004092a:	681b      	ldr	r3, [r3, #0]
d004092c:	4798      	blx	r3
d004092e:	f7ff fd7b 	bl	d0040428 <proc_astroids>
d0040932:	2d64      	cmp	r5, #100	; 0x64
d0040934:	d932      	bls.n	d004099c <main+0x378>
d0040936:	f894 c010 	ldrb.w	ip, [r4, #16]
d004093a:	2000      	movs	r0, #0
d004093c:	7c61      	ldrb	r1, [r4, #17]
d004093e:	f1c8 0801 	rsb	r8, r8, #1
d0040942:	7ca2      	ldrb	r2, [r4, #18]
d0040944:	4605      	mov	r5, r0
d0040946:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d004094a:	7ce3      	ldrb	r3, [r4, #19]
d004094c:	fa5f f888 	uxtb.w	r8, r8
d0040950:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040954:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040958:	689b      	ldr	r3, [r3, #8]
d004095a:	689b      	ldr	r3, [r3, #8]
d004095c:	4798      	blx	r3
d004095e:	f894 c010 	ldrb.w	ip, [r4, #16]
d0040962:	7c61      	ldrb	r1, [r4, #17]
d0040964:	4628      	mov	r0, r5
d0040966:	7ca2      	ldrb	r2, [r4, #18]
d0040968:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d004096c:	7ce3      	ldrb	r3, [r4, #19]
d004096e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040972:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040976:	689b      	ldr	r3, [r3, #8]
d0040978:	685b      	ldr	r3, [r3, #4]
d004097a:	4798      	blx	r3
d004097c:	f894 c010 	ldrb.w	ip, [r4, #16]
d0040980:	7c61      	ldrb	r1, [r4, #17]
d0040982:	4628      	mov	r0, r5
d0040984:	7ca2      	ldrb	r2, [r4, #18]
d0040986:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d004098a:	7ce3      	ldrb	r3, [r4, #19]
d004098c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040990:	4641      	mov	r1, r8
d0040992:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040996:	689b      	ldr	r3, [r3, #8]
d0040998:	6a1b      	ldr	r3, [r3, #32]
d004099a:	4798      	blx	r3
d004099c:	7c21      	ldrb	r1, [r4, #16]
d004099e:	3601      	adds	r6, #1
d00409a0:	f894 c011 	ldrb.w	ip, [r4, #17]
d00409a4:	2000      	movs	r0, #0
d00409a6:	7ca2      	ldrb	r2, [r4, #18]
d00409a8:	b276      	sxtb	r6, r6
d00409aa:	ea41 2c0c 	orr.w	ip, r1, ip, lsl #8
d00409ae:	7ce3      	ldrb	r3, [r4, #19]
d00409b0:	4631      	mov	r1, r6
d00409b2:	ea4c 4202 	orr.w	r2, ip, r2, lsl #16
d00409b6:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00409ba:	689b      	ldr	r3, [r3, #8]
d00409bc:	699b      	ldr	r3, [r3, #24]
d00409be:	4798      	blx	r3
d00409c0:	7b20      	ldrb	r0, [r4, #12]
d00409c2:	7b61      	ldrb	r1, [r4, #13]
d00409c4:	7ba2      	ldrb	r2, [r4, #14]
d00409c6:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00409ca:	7be3      	ldrb	r3, [r4, #15]
d00409cc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00409d0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00409d4:	681b      	ldr	r3, [r3, #0]
d00409d6:	681b      	ldr	r3, [r3, #0]
d00409d8:	4798      	blx	r3
d00409da:	7b20      	ldrb	r0, [r4, #12]
d00409dc:	7b61      	ldrb	r1, [r4, #13]
d00409de:	7ba2      	ldrb	r2, [r4, #14]
d00409e0:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00409e4:	7be3      	ldrb	r3, [r4, #15]
d00409e6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00409ea:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00409ee:	681b      	ldr	r3, [r3, #0]
d00409f0:	689b      	ldr	r3, [r3, #8]
d00409f2:	4798      	blx	r3
d00409f4:	783b      	ldrb	r3, [r7, #0]
d00409f6:	f1c3 0301 	rsb	r3, r3, #1
d00409fa:	b2db      	uxtb	r3, r3
d00409fc:	703b      	strb	r3, [r7, #0]
d00409fe:	783b      	ldrb	r3, [r7, #0]
d0040a00:	7b21      	ldrb	r1, [r4, #12]
d0040a02:	7b60      	ldrb	r0, [r4, #13]
d0040a04:	7ba2      	ldrb	r2, [r4, #14]
d0040a06:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0040a0a:	2b00      	cmp	r3, #0
d0040a0c:	f47f af74 	bne.w	d00408f8 <main+0x2d4>
d0040a10:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0040a14:	7be3      	ldrb	r3, [r4, #15]
d0040a16:	f8d9 1000 	ldr.w	r1, [r9]
d0040a1a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040a1e:	f8da 0000 	ldr.w	r0, [sl]
d0040a22:	681b      	ldr	r3, [r3, #0]
d0040a24:	69db      	ldr	r3, [r3, #28]
d0040a26:	4798      	blx	r3
d0040a28:	e772      	b.n	d0040910 <main+0x2ec>
d0040a2a:	bf00      	nop

d0040a2c <__errno>:
d0040a2c:	4b01      	ldr	r3, [pc, #4]	; (d0040a34 <__errno+0x8>)
d0040a2e:	6818      	ldr	r0, [r3, #0]
d0040a30:	4770      	bx	lr
d0040a32:	bf00      	nop
d0040a34:	d0041d48 	.word	0xd0041d48

d0040a38 <malloc>:
d0040a38:	4b02      	ldr	r3, [pc, #8]	; (d0040a44 <malloc+0xc>)
d0040a3a:	4601      	mov	r1, r0
d0040a3c:	6818      	ldr	r0, [r3, #0]
d0040a3e:	f000 b861 	b.w	d0040b04 <_malloc_r>
d0040a42:	bf00      	nop
d0040a44:	d0041d48 	.word	0xd0041d48

d0040a48 <memcmp>:
d0040a48:	b530      	push	{r4, r5, lr}
d0040a4a:	3901      	subs	r1, #1
d0040a4c:	2400      	movs	r4, #0
d0040a4e:	42a2      	cmp	r2, r4
d0040a50:	d101      	bne.n	d0040a56 <memcmp+0xe>
d0040a52:	2000      	movs	r0, #0
d0040a54:	e005      	b.n	d0040a62 <memcmp+0x1a>
d0040a56:	5d03      	ldrb	r3, [r0, r4]
d0040a58:	3401      	adds	r4, #1
d0040a5a:	5d0d      	ldrb	r5, [r1, r4]
d0040a5c:	42ab      	cmp	r3, r5
d0040a5e:	d0f6      	beq.n	d0040a4e <memcmp+0x6>
d0040a60:	1b58      	subs	r0, r3, r5
d0040a62:	bd30      	pop	{r4, r5, pc}

d0040a64 <_free_r>:
d0040a64:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0040a66:	2900      	cmp	r1, #0
d0040a68:	d048      	beq.n	d0040afc <_free_r+0x98>
d0040a6a:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0040a6e:	9001      	str	r0, [sp, #4]
d0040a70:	2b00      	cmp	r3, #0
d0040a72:	f1a1 0404 	sub.w	r4, r1, #4
d0040a76:	bfb8      	it	lt
d0040a78:	18e4      	addlt	r4, r4, r3
d0040a7a:	f000 fcd7 	bl	d004142c <__malloc_lock>
d0040a7e:	4a20      	ldr	r2, [pc, #128]	; (d0040b00 <_free_r+0x9c>)
d0040a80:	9801      	ldr	r0, [sp, #4]
d0040a82:	6813      	ldr	r3, [r2, #0]
d0040a84:	4615      	mov	r5, r2
d0040a86:	b933      	cbnz	r3, d0040a96 <_free_r+0x32>
d0040a88:	6063      	str	r3, [r4, #4]
d0040a8a:	6014      	str	r4, [r2, #0]
d0040a8c:	b003      	add	sp, #12
d0040a8e:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0040a92:	f000 bcd1 	b.w	d0041438 <__malloc_unlock>
d0040a96:	42a3      	cmp	r3, r4
d0040a98:	d90b      	bls.n	d0040ab2 <_free_r+0x4e>
d0040a9a:	6821      	ldr	r1, [r4, #0]
d0040a9c:	1862      	adds	r2, r4, r1
d0040a9e:	4293      	cmp	r3, r2
d0040aa0:	bf04      	itt	eq
d0040aa2:	681a      	ldreq	r2, [r3, #0]
d0040aa4:	685b      	ldreq	r3, [r3, #4]
d0040aa6:	6063      	str	r3, [r4, #4]
d0040aa8:	bf04      	itt	eq
d0040aaa:	1852      	addeq	r2, r2, r1
d0040aac:	6022      	streq	r2, [r4, #0]
d0040aae:	602c      	str	r4, [r5, #0]
d0040ab0:	e7ec      	b.n	d0040a8c <_free_r+0x28>
d0040ab2:	461a      	mov	r2, r3
d0040ab4:	685b      	ldr	r3, [r3, #4]
d0040ab6:	b10b      	cbz	r3, d0040abc <_free_r+0x58>
d0040ab8:	42a3      	cmp	r3, r4
d0040aba:	d9fa      	bls.n	d0040ab2 <_free_r+0x4e>
d0040abc:	6811      	ldr	r1, [r2, #0]
d0040abe:	1855      	adds	r5, r2, r1
d0040ac0:	42a5      	cmp	r5, r4
d0040ac2:	d10b      	bne.n	d0040adc <_free_r+0x78>
d0040ac4:	6824      	ldr	r4, [r4, #0]
d0040ac6:	4421      	add	r1, r4
d0040ac8:	1854      	adds	r4, r2, r1
d0040aca:	42a3      	cmp	r3, r4
d0040acc:	6011      	str	r1, [r2, #0]
d0040ace:	d1dd      	bne.n	d0040a8c <_free_r+0x28>
d0040ad0:	681c      	ldr	r4, [r3, #0]
d0040ad2:	685b      	ldr	r3, [r3, #4]
d0040ad4:	6053      	str	r3, [r2, #4]
d0040ad6:	4421      	add	r1, r4
d0040ad8:	6011      	str	r1, [r2, #0]
d0040ada:	e7d7      	b.n	d0040a8c <_free_r+0x28>
d0040adc:	d902      	bls.n	d0040ae4 <_free_r+0x80>
d0040ade:	230c      	movs	r3, #12
d0040ae0:	6003      	str	r3, [r0, #0]
d0040ae2:	e7d3      	b.n	d0040a8c <_free_r+0x28>
d0040ae4:	6825      	ldr	r5, [r4, #0]
d0040ae6:	1961      	adds	r1, r4, r5
d0040ae8:	428b      	cmp	r3, r1
d0040aea:	bf04      	itt	eq
d0040aec:	6819      	ldreq	r1, [r3, #0]
d0040aee:	685b      	ldreq	r3, [r3, #4]
d0040af0:	6063      	str	r3, [r4, #4]
d0040af2:	bf04      	itt	eq
d0040af4:	1949      	addeq	r1, r1, r5
d0040af6:	6021      	streq	r1, [r4, #0]
d0040af8:	6054      	str	r4, [r2, #4]
d0040afa:	e7c7      	b.n	d0040a8c <_free_r+0x28>
d0040afc:	b003      	add	sp, #12
d0040afe:	bd30      	pop	{r4, r5, pc}
d0040b00:	d0042960 	.word	0xd0042960

d0040b04 <_malloc_r>:
d0040b04:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0040b06:	1ccd      	adds	r5, r1, #3
d0040b08:	f025 0503 	bic.w	r5, r5, #3
d0040b0c:	3508      	adds	r5, #8
d0040b0e:	2d0c      	cmp	r5, #12
d0040b10:	bf38      	it	cc
d0040b12:	250c      	movcc	r5, #12
d0040b14:	2d00      	cmp	r5, #0
d0040b16:	4606      	mov	r6, r0
d0040b18:	db01      	blt.n	d0040b1e <_malloc_r+0x1a>
d0040b1a:	42a9      	cmp	r1, r5
d0040b1c:	d903      	bls.n	d0040b26 <_malloc_r+0x22>
d0040b1e:	230c      	movs	r3, #12
d0040b20:	6033      	str	r3, [r6, #0]
d0040b22:	2000      	movs	r0, #0
d0040b24:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0040b26:	f000 fc81 	bl	d004142c <__malloc_lock>
d0040b2a:	4921      	ldr	r1, [pc, #132]	; (d0040bb0 <_malloc_r+0xac>)
d0040b2c:	680a      	ldr	r2, [r1, #0]
d0040b2e:	4614      	mov	r4, r2
d0040b30:	b99c      	cbnz	r4, d0040b5a <_malloc_r+0x56>
d0040b32:	4f20      	ldr	r7, [pc, #128]	; (d0040bb4 <_malloc_r+0xb0>)
d0040b34:	683b      	ldr	r3, [r7, #0]
d0040b36:	b923      	cbnz	r3, d0040b42 <_malloc_r+0x3e>
d0040b38:	4621      	mov	r1, r4
d0040b3a:	4630      	mov	r0, r6
d0040b3c:	f7ff fb2c 	bl	d0040198 <_sbrk_r>
d0040b40:	6038      	str	r0, [r7, #0]
d0040b42:	4629      	mov	r1, r5
d0040b44:	4630      	mov	r0, r6
d0040b46:	f7ff fb27 	bl	d0040198 <_sbrk_r>
d0040b4a:	1c43      	adds	r3, r0, #1
d0040b4c:	d123      	bne.n	d0040b96 <_malloc_r+0x92>
d0040b4e:	230c      	movs	r3, #12
d0040b50:	6033      	str	r3, [r6, #0]
d0040b52:	4630      	mov	r0, r6
d0040b54:	f000 fc70 	bl	d0041438 <__malloc_unlock>
d0040b58:	e7e3      	b.n	d0040b22 <_malloc_r+0x1e>
d0040b5a:	6823      	ldr	r3, [r4, #0]
d0040b5c:	1b5b      	subs	r3, r3, r5
d0040b5e:	d417      	bmi.n	d0040b90 <_malloc_r+0x8c>
d0040b60:	2b0b      	cmp	r3, #11
d0040b62:	d903      	bls.n	d0040b6c <_malloc_r+0x68>
d0040b64:	6023      	str	r3, [r4, #0]
d0040b66:	441c      	add	r4, r3
d0040b68:	6025      	str	r5, [r4, #0]
d0040b6a:	e004      	b.n	d0040b76 <_malloc_r+0x72>
d0040b6c:	6863      	ldr	r3, [r4, #4]
d0040b6e:	42a2      	cmp	r2, r4
d0040b70:	bf0c      	ite	eq
d0040b72:	600b      	streq	r3, [r1, #0]
d0040b74:	6053      	strne	r3, [r2, #4]
d0040b76:	4630      	mov	r0, r6
d0040b78:	f000 fc5e 	bl	d0041438 <__malloc_unlock>
d0040b7c:	f104 000b 	add.w	r0, r4, #11
d0040b80:	1d23      	adds	r3, r4, #4
d0040b82:	f020 0007 	bic.w	r0, r0, #7
d0040b86:	1ac2      	subs	r2, r0, r3
d0040b88:	d0cc      	beq.n	d0040b24 <_malloc_r+0x20>
d0040b8a:	1a1b      	subs	r3, r3, r0
d0040b8c:	50a3      	str	r3, [r4, r2]
d0040b8e:	e7c9      	b.n	d0040b24 <_malloc_r+0x20>
d0040b90:	4622      	mov	r2, r4
d0040b92:	6864      	ldr	r4, [r4, #4]
d0040b94:	e7cc      	b.n	d0040b30 <_malloc_r+0x2c>
d0040b96:	1cc4      	adds	r4, r0, #3
d0040b98:	f024 0403 	bic.w	r4, r4, #3
d0040b9c:	42a0      	cmp	r0, r4
d0040b9e:	d0e3      	beq.n	d0040b68 <_malloc_r+0x64>
d0040ba0:	1a21      	subs	r1, r4, r0
d0040ba2:	4630      	mov	r0, r6
d0040ba4:	f7ff faf8 	bl	d0040198 <_sbrk_r>
d0040ba8:	3001      	adds	r0, #1
d0040baa:	d1dd      	bne.n	d0040b68 <_malloc_r+0x64>
d0040bac:	e7cf      	b.n	d0040b4e <_malloc_r+0x4a>
d0040bae:	bf00      	nop
d0040bb0:	d0042960 	.word	0xd0042960
d0040bb4:	d0042964 	.word	0xd0042964

d0040bb8 <iprintf>:
d0040bb8:	b40f      	push	{r0, r1, r2, r3}
d0040bba:	4b0a      	ldr	r3, [pc, #40]	; (d0040be4 <iprintf+0x2c>)
d0040bbc:	b513      	push	{r0, r1, r4, lr}
d0040bbe:	681c      	ldr	r4, [r3, #0]
d0040bc0:	b124      	cbz	r4, d0040bcc <iprintf+0x14>
d0040bc2:	69a3      	ldr	r3, [r4, #24]
d0040bc4:	b913      	cbnz	r3, d0040bcc <iprintf+0x14>
d0040bc6:	4620      	mov	r0, r4
d0040bc8:	f000 fb2c 	bl	d0041224 <__sinit>
d0040bcc:	ab05      	add	r3, sp, #20
d0040bce:	9a04      	ldr	r2, [sp, #16]
d0040bd0:	68a1      	ldr	r1, [r4, #8]
d0040bd2:	9301      	str	r3, [sp, #4]
d0040bd4:	4620      	mov	r0, r4
d0040bd6:	f000 fc5f 	bl	d0041498 <_vfiprintf_r>
d0040bda:	b002      	add	sp, #8
d0040bdc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0040be0:	b004      	add	sp, #16
d0040be2:	4770      	bx	lr
d0040be4:	d0041d48 	.word	0xd0041d48

d0040be8 <_puts_r>:
d0040be8:	b570      	push	{r4, r5, r6, lr}
d0040bea:	460e      	mov	r6, r1
d0040bec:	4605      	mov	r5, r0
d0040bee:	b118      	cbz	r0, d0040bf8 <_puts_r+0x10>
d0040bf0:	6983      	ldr	r3, [r0, #24]
d0040bf2:	b90b      	cbnz	r3, d0040bf8 <_puts_r+0x10>
d0040bf4:	f000 fb16 	bl	d0041224 <__sinit>
d0040bf8:	69ab      	ldr	r3, [r5, #24]
d0040bfa:	68ac      	ldr	r4, [r5, #8]
d0040bfc:	b913      	cbnz	r3, d0040c04 <_puts_r+0x1c>
d0040bfe:	4628      	mov	r0, r5
d0040c00:	f000 fb10 	bl	d0041224 <__sinit>
d0040c04:	4b2c      	ldr	r3, [pc, #176]	; (d0040cb8 <_puts_r+0xd0>)
d0040c06:	429c      	cmp	r4, r3
d0040c08:	d120      	bne.n	d0040c4c <_puts_r+0x64>
d0040c0a:	686c      	ldr	r4, [r5, #4]
d0040c0c:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0040c0e:	07db      	lsls	r3, r3, #31
d0040c10:	d405      	bmi.n	d0040c1e <_puts_r+0x36>
d0040c12:	89a3      	ldrh	r3, [r4, #12]
d0040c14:	0598      	lsls	r0, r3, #22
d0040c16:	d402      	bmi.n	d0040c1e <_puts_r+0x36>
d0040c18:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0040c1a:	f000 fba1 	bl	d0041360 <__retarget_lock_acquire_recursive>
d0040c1e:	89a3      	ldrh	r3, [r4, #12]
d0040c20:	0719      	lsls	r1, r3, #28
d0040c22:	d51d      	bpl.n	d0040c60 <_puts_r+0x78>
d0040c24:	6923      	ldr	r3, [r4, #16]
d0040c26:	b1db      	cbz	r3, d0040c60 <_puts_r+0x78>
d0040c28:	3e01      	subs	r6, #1
d0040c2a:	68a3      	ldr	r3, [r4, #8]
d0040c2c:	f816 1f01 	ldrb.w	r1, [r6, #1]!
d0040c30:	3b01      	subs	r3, #1
d0040c32:	60a3      	str	r3, [r4, #8]
d0040c34:	bb39      	cbnz	r1, d0040c86 <_puts_r+0x9e>
d0040c36:	2b00      	cmp	r3, #0
d0040c38:	da38      	bge.n	d0040cac <_puts_r+0xc4>
d0040c3a:	4622      	mov	r2, r4
d0040c3c:	210a      	movs	r1, #10
d0040c3e:	4628      	mov	r0, r5
d0040c40:	f000 f916 	bl	d0040e70 <__swbuf_r>
d0040c44:	3001      	adds	r0, #1
d0040c46:	d011      	beq.n	d0040c6c <_puts_r+0x84>
d0040c48:	250a      	movs	r5, #10
d0040c4a:	e011      	b.n	d0040c70 <_puts_r+0x88>
d0040c4c:	4b1b      	ldr	r3, [pc, #108]	; (d0040cbc <_puts_r+0xd4>)
d0040c4e:	429c      	cmp	r4, r3
d0040c50:	d101      	bne.n	d0040c56 <_puts_r+0x6e>
d0040c52:	68ac      	ldr	r4, [r5, #8]
d0040c54:	e7da      	b.n	d0040c0c <_puts_r+0x24>
d0040c56:	4b1a      	ldr	r3, [pc, #104]	; (d0040cc0 <_puts_r+0xd8>)
d0040c58:	429c      	cmp	r4, r3
d0040c5a:	bf08      	it	eq
d0040c5c:	68ec      	ldreq	r4, [r5, #12]
d0040c5e:	e7d5      	b.n	d0040c0c <_puts_r+0x24>
d0040c60:	4621      	mov	r1, r4
d0040c62:	4628      	mov	r0, r5
d0040c64:	f000 f956 	bl	d0040f14 <__swsetup_r>
d0040c68:	2800      	cmp	r0, #0
d0040c6a:	d0dd      	beq.n	d0040c28 <_puts_r+0x40>
d0040c6c:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0040c70:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0040c72:	07da      	lsls	r2, r3, #31
d0040c74:	d405      	bmi.n	d0040c82 <_puts_r+0x9a>
d0040c76:	89a3      	ldrh	r3, [r4, #12]
d0040c78:	059b      	lsls	r3, r3, #22
d0040c7a:	d402      	bmi.n	d0040c82 <_puts_r+0x9a>
d0040c7c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0040c7e:	f000 fb70 	bl	d0041362 <__retarget_lock_release_recursive>
d0040c82:	4628      	mov	r0, r5
d0040c84:	bd70      	pop	{r4, r5, r6, pc}
d0040c86:	2b00      	cmp	r3, #0
d0040c88:	da04      	bge.n	d0040c94 <_puts_r+0xac>
d0040c8a:	69a2      	ldr	r2, [r4, #24]
d0040c8c:	429a      	cmp	r2, r3
d0040c8e:	dc06      	bgt.n	d0040c9e <_puts_r+0xb6>
d0040c90:	290a      	cmp	r1, #10
d0040c92:	d004      	beq.n	d0040c9e <_puts_r+0xb6>
d0040c94:	6823      	ldr	r3, [r4, #0]
d0040c96:	1c5a      	adds	r2, r3, #1
d0040c98:	6022      	str	r2, [r4, #0]
d0040c9a:	7019      	strb	r1, [r3, #0]
d0040c9c:	e7c5      	b.n	d0040c2a <_puts_r+0x42>
d0040c9e:	4622      	mov	r2, r4
d0040ca0:	4628      	mov	r0, r5
d0040ca2:	f000 f8e5 	bl	d0040e70 <__swbuf_r>
d0040ca6:	3001      	adds	r0, #1
d0040ca8:	d1bf      	bne.n	d0040c2a <_puts_r+0x42>
d0040caa:	e7df      	b.n	d0040c6c <_puts_r+0x84>
d0040cac:	6823      	ldr	r3, [r4, #0]
d0040cae:	250a      	movs	r5, #10
d0040cb0:	1c5a      	adds	r2, r3, #1
d0040cb2:	6022      	str	r2, [r4, #0]
d0040cb4:	701d      	strb	r5, [r3, #0]
d0040cb6:	e7db      	b.n	d0040c70 <_puts_r+0x88>
d0040cb8:	d0041ccc 	.word	0xd0041ccc
d0040cbc:	d0041cec 	.word	0xd0041cec
d0040cc0:	d0041cac 	.word	0xd0041cac

d0040cc4 <puts>:
d0040cc4:	4b02      	ldr	r3, [pc, #8]	; (d0040cd0 <puts+0xc>)
d0040cc6:	4601      	mov	r1, r0
d0040cc8:	6818      	ldr	r0, [r3, #0]
d0040cca:	f7ff bf8d 	b.w	d0040be8 <_puts_r>
d0040cce:	bf00      	nop
d0040cd0:	d0041d48 	.word	0xd0041d48

d0040cd4 <setbuf>:
d0040cd4:	2900      	cmp	r1, #0
d0040cd6:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0040cda:	bf0c      	ite	eq
d0040cdc:	2202      	moveq	r2, #2
d0040cde:	2200      	movne	r2, #0
d0040ce0:	f000 b800 	b.w	d0040ce4 <setvbuf>

d0040ce4 <setvbuf>:
d0040ce4:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0040ce8:	461d      	mov	r5, r3
d0040cea:	4b5d      	ldr	r3, [pc, #372]	; (d0040e60 <setvbuf+0x17c>)
d0040cec:	681f      	ldr	r7, [r3, #0]
d0040cee:	4604      	mov	r4, r0
d0040cf0:	460e      	mov	r6, r1
d0040cf2:	4690      	mov	r8, r2
d0040cf4:	b127      	cbz	r7, d0040d00 <setvbuf+0x1c>
d0040cf6:	69bb      	ldr	r3, [r7, #24]
d0040cf8:	b913      	cbnz	r3, d0040d00 <setvbuf+0x1c>
d0040cfa:	4638      	mov	r0, r7
d0040cfc:	f000 fa92 	bl	d0041224 <__sinit>
d0040d00:	4b58      	ldr	r3, [pc, #352]	; (d0040e64 <setvbuf+0x180>)
d0040d02:	429c      	cmp	r4, r3
d0040d04:	d167      	bne.n	d0040dd6 <setvbuf+0xf2>
d0040d06:	687c      	ldr	r4, [r7, #4]
d0040d08:	f1b8 0f02 	cmp.w	r8, #2
d0040d0c:	d006      	beq.n	d0040d1c <setvbuf+0x38>
d0040d0e:	f1b8 0f01 	cmp.w	r8, #1
d0040d12:	f200 809f 	bhi.w	d0040e54 <setvbuf+0x170>
d0040d16:	2d00      	cmp	r5, #0
d0040d18:	f2c0 809c 	blt.w	d0040e54 <setvbuf+0x170>
d0040d1c:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0040d1e:	07db      	lsls	r3, r3, #31
d0040d20:	d405      	bmi.n	d0040d2e <setvbuf+0x4a>
d0040d22:	89a3      	ldrh	r3, [r4, #12]
d0040d24:	0598      	lsls	r0, r3, #22
d0040d26:	d402      	bmi.n	d0040d2e <setvbuf+0x4a>
d0040d28:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0040d2a:	f000 fb19 	bl	d0041360 <__retarget_lock_acquire_recursive>
d0040d2e:	4621      	mov	r1, r4
d0040d30:	4638      	mov	r0, r7
d0040d32:	f000 f9e3 	bl	d00410fc <_fflush_r>
d0040d36:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0040d38:	b141      	cbz	r1, d0040d4c <setvbuf+0x68>
d0040d3a:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0040d3e:	4299      	cmp	r1, r3
d0040d40:	d002      	beq.n	d0040d48 <setvbuf+0x64>
d0040d42:	4638      	mov	r0, r7
d0040d44:	f7ff fe8e 	bl	d0040a64 <_free_r>
d0040d48:	2300      	movs	r3, #0
d0040d4a:	6363      	str	r3, [r4, #52]	; 0x34
d0040d4c:	2300      	movs	r3, #0
d0040d4e:	61a3      	str	r3, [r4, #24]
d0040d50:	6063      	str	r3, [r4, #4]
d0040d52:	89a3      	ldrh	r3, [r4, #12]
d0040d54:	0619      	lsls	r1, r3, #24
d0040d56:	d503      	bpl.n	d0040d60 <setvbuf+0x7c>
d0040d58:	6921      	ldr	r1, [r4, #16]
d0040d5a:	4638      	mov	r0, r7
d0040d5c:	f7ff fe82 	bl	d0040a64 <_free_r>
d0040d60:	89a3      	ldrh	r3, [r4, #12]
d0040d62:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d0040d66:	f023 0303 	bic.w	r3, r3, #3
d0040d6a:	f1b8 0f02 	cmp.w	r8, #2
d0040d6e:	81a3      	strh	r3, [r4, #12]
d0040d70:	d06c      	beq.n	d0040e4c <setvbuf+0x168>
d0040d72:	ab01      	add	r3, sp, #4
d0040d74:	466a      	mov	r2, sp
d0040d76:	4621      	mov	r1, r4
d0040d78:	4638      	mov	r0, r7
d0040d7a:	f000 faf3 	bl	d0041364 <__swhatbuf_r>
d0040d7e:	89a3      	ldrh	r3, [r4, #12]
d0040d80:	4318      	orrs	r0, r3
d0040d82:	81a0      	strh	r0, [r4, #12]
d0040d84:	2d00      	cmp	r5, #0
d0040d86:	d130      	bne.n	d0040dea <setvbuf+0x106>
d0040d88:	9d00      	ldr	r5, [sp, #0]
d0040d8a:	4628      	mov	r0, r5
d0040d8c:	f7ff fe54 	bl	d0040a38 <malloc>
d0040d90:	4606      	mov	r6, r0
d0040d92:	2800      	cmp	r0, #0
d0040d94:	d155      	bne.n	d0040e42 <setvbuf+0x15e>
d0040d96:	f8dd 9000 	ldr.w	r9, [sp]
d0040d9a:	45a9      	cmp	r9, r5
d0040d9c:	d14a      	bne.n	d0040e34 <setvbuf+0x150>
d0040d9e:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0040da2:	2200      	movs	r2, #0
d0040da4:	60a2      	str	r2, [r4, #8]
d0040da6:	f104 0247 	add.w	r2, r4, #71	; 0x47
d0040daa:	6022      	str	r2, [r4, #0]
d0040dac:	6122      	str	r2, [r4, #16]
d0040dae:	2201      	movs	r2, #1
d0040db0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0040db4:	6162      	str	r2, [r4, #20]
d0040db6:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0040db8:	f043 0302 	orr.w	r3, r3, #2
d0040dbc:	07d2      	lsls	r2, r2, #31
d0040dbe:	81a3      	strh	r3, [r4, #12]
d0040dc0:	d405      	bmi.n	d0040dce <setvbuf+0xea>
d0040dc2:	f413 7f00 	tst.w	r3, #512	; 0x200
d0040dc6:	d102      	bne.n	d0040dce <setvbuf+0xea>
d0040dc8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0040dca:	f000 faca 	bl	d0041362 <__retarget_lock_release_recursive>
d0040dce:	4628      	mov	r0, r5
d0040dd0:	b003      	add	sp, #12
d0040dd2:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0040dd6:	4b24      	ldr	r3, [pc, #144]	; (d0040e68 <setvbuf+0x184>)
d0040dd8:	429c      	cmp	r4, r3
d0040dda:	d101      	bne.n	d0040de0 <setvbuf+0xfc>
d0040ddc:	68bc      	ldr	r4, [r7, #8]
d0040dde:	e793      	b.n	d0040d08 <setvbuf+0x24>
d0040de0:	4b22      	ldr	r3, [pc, #136]	; (d0040e6c <setvbuf+0x188>)
d0040de2:	429c      	cmp	r4, r3
d0040de4:	bf08      	it	eq
d0040de6:	68fc      	ldreq	r4, [r7, #12]
d0040de8:	e78e      	b.n	d0040d08 <setvbuf+0x24>
d0040dea:	2e00      	cmp	r6, #0
d0040dec:	d0cd      	beq.n	d0040d8a <setvbuf+0xa6>
d0040dee:	69bb      	ldr	r3, [r7, #24]
d0040df0:	b913      	cbnz	r3, d0040df8 <setvbuf+0x114>
d0040df2:	4638      	mov	r0, r7
d0040df4:	f000 fa16 	bl	d0041224 <__sinit>
d0040df8:	f1b8 0f01 	cmp.w	r8, #1
d0040dfc:	bf08      	it	eq
d0040dfe:	89a3      	ldrheq	r3, [r4, #12]
d0040e00:	6026      	str	r6, [r4, #0]
d0040e02:	bf04      	itt	eq
d0040e04:	f043 0301 	orreq.w	r3, r3, #1
d0040e08:	81a3      	strheq	r3, [r4, #12]
d0040e0a:	89a2      	ldrh	r2, [r4, #12]
d0040e0c:	f012 0308 	ands.w	r3, r2, #8
d0040e10:	e9c4 6504 	strd	r6, r5, [r4, #16]
d0040e14:	d01c      	beq.n	d0040e50 <setvbuf+0x16c>
d0040e16:	07d3      	lsls	r3, r2, #31
d0040e18:	bf41      	itttt	mi
d0040e1a:	2300      	movmi	r3, #0
d0040e1c:	426d      	negmi	r5, r5
d0040e1e:	60a3      	strmi	r3, [r4, #8]
d0040e20:	61a5      	strmi	r5, [r4, #24]
d0040e22:	bf58      	it	pl
d0040e24:	60a5      	strpl	r5, [r4, #8]
d0040e26:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0040e28:	f015 0501 	ands.w	r5, r5, #1
d0040e2c:	d115      	bne.n	d0040e5a <setvbuf+0x176>
d0040e2e:	f412 7f00 	tst.w	r2, #512	; 0x200
d0040e32:	e7c8      	b.n	d0040dc6 <setvbuf+0xe2>
d0040e34:	4648      	mov	r0, r9
d0040e36:	f7ff fdff 	bl	d0040a38 <malloc>
d0040e3a:	4606      	mov	r6, r0
d0040e3c:	2800      	cmp	r0, #0
d0040e3e:	d0ae      	beq.n	d0040d9e <setvbuf+0xba>
d0040e40:	464d      	mov	r5, r9
d0040e42:	89a3      	ldrh	r3, [r4, #12]
d0040e44:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0040e48:	81a3      	strh	r3, [r4, #12]
d0040e4a:	e7d0      	b.n	d0040dee <setvbuf+0x10a>
d0040e4c:	2500      	movs	r5, #0
d0040e4e:	e7a8      	b.n	d0040da2 <setvbuf+0xbe>
d0040e50:	60a3      	str	r3, [r4, #8]
d0040e52:	e7e8      	b.n	d0040e26 <setvbuf+0x142>
d0040e54:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0040e58:	e7b9      	b.n	d0040dce <setvbuf+0xea>
d0040e5a:	2500      	movs	r5, #0
d0040e5c:	e7b7      	b.n	d0040dce <setvbuf+0xea>
d0040e5e:	bf00      	nop
d0040e60:	d0041d48 	.word	0xd0041d48
d0040e64:	d0041ccc 	.word	0xd0041ccc
d0040e68:	d0041cec 	.word	0xd0041cec
d0040e6c:	d0041cac 	.word	0xd0041cac

d0040e70 <__swbuf_r>:
d0040e70:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0040e72:	460e      	mov	r6, r1
d0040e74:	4614      	mov	r4, r2
d0040e76:	4605      	mov	r5, r0
d0040e78:	b118      	cbz	r0, d0040e82 <__swbuf_r+0x12>
d0040e7a:	6983      	ldr	r3, [r0, #24]
d0040e7c:	b90b      	cbnz	r3, d0040e82 <__swbuf_r+0x12>
d0040e7e:	f000 f9d1 	bl	d0041224 <__sinit>
d0040e82:	4b21      	ldr	r3, [pc, #132]	; (d0040f08 <__swbuf_r+0x98>)
d0040e84:	429c      	cmp	r4, r3
d0040e86:	d12b      	bne.n	d0040ee0 <__swbuf_r+0x70>
d0040e88:	686c      	ldr	r4, [r5, #4]
d0040e8a:	69a3      	ldr	r3, [r4, #24]
d0040e8c:	60a3      	str	r3, [r4, #8]
d0040e8e:	89a3      	ldrh	r3, [r4, #12]
d0040e90:	071a      	lsls	r2, r3, #28
d0040e92:	d52f      	bpl.n	d0040ef4 <__swbuf_r+0x84>
d0040e94:	6923      	ldr	r3, [r4, #16]
d0040e96:	b36b      	cbz	r3, d0040ef4 <__swbuf_r+0x84>
d0040e98:	6923      	ldr	r3, [r4, #16]
d0040e9a:	6820      	ldr	r0, [r4, #0]
d0040e9c:	1ac0      	subs	r0, r0, r3
d0040e9e:	6963      	ldr	r3, [r4, #20]
d0040ea0:	b2f6      	uxtb	r6, r6
d0040ea2:	4283      	cmp	r3, r0
d0040ea4:	4637      	mov	r7, r6
d0040ea6:	dc04      	bgt.n	d0040eb2 <__swbuf_r+0x42>
d0040ea8:	4621      	mov	r1, r4
d0040eaa:	4628      	mov	r0, r5
d0040eac:	f000 f926 	bl	d00410fc <_fflush_r>
d0040eb0:	bb30      	cbnz	r0, d0040f00 <__swbuf_r+0x90>
d0040eb2:	68a3      	ldr	r3, [r4, #8]
d0040eb4:	3b01      	subs	r3, #1
d0040eb6:	60a3      	str	r3, [r4, #8]
d0040eb8:	6823      	ldr	r3, [r4, #0]
d0040eba:	1c5a      	adds	r2, r3, #1
d0040ebc:	6022      	str	r2, [r4, #0]
d0040ebe:	701e      	strb	r6, [r3, #0]
d0040ec0:	6963      	ldr	r3, [r4, #20]
d0040ec2:	3001      	adds	r0, #1
d0040ec4:	4283      	cmp	r3, r0
d0040ec6:	d004      	beq.n	d0040ed2 <__swbuf_r+0x62>
d0040ec8:	89a3      	ldrh	r3, [r4, #12]
d0040eca:	07db      	lsls	r3, r3, #31
d0040ecc:	d506      	bpl.n	d0040edc <__swbuf_r+0x6c>
d0040ece:	2e0a      	cmp	r6, #10
d0040ed0:	d104      	bne.n	d0040edc <__swbuf_r+0x6c>
d0040ed2:	4621      	mov	r1, r4
d0040ed4:	4628      	mov	r0, r5
d0040ed6:	f000 f911 	bl	d00410fc <_fflush_r>
d0040eda:	b988      	cbnz	r0, d0040f00 <__swbuf_r+0x90>
d0040edc:	4638      	mov	r0, r7
d0040ede:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0040ee0:	4b0a      	ldr	r3, [pc, #40]	; (d0040f0c <__swbuf_r+0x9c>)
d0040ee2:	429c      	cmp	r4, r3
d0040ee4:	d101      	bne.n	d0040eea <__swbuf_r+0x7a>
d0040ee6:	68ac      	ldr	r4, [r5, #8]
d0040ee8:	e7cf      	b.n	d0040e8a <__swbuf_r+0x1a>
d0040eea:	4b09      	ldr	r3, [pc, #36]	; (d0040f10 <__swbuf_r+0xa0>)
d0040eec:	429c      	cmp	r4, r3
d0040eee:	bf08      	it	eq
d0040ef0:	68ec      	ldreq	r4, [r5, #12]
d0040ef2:	e7ca      	b.n	d0040e8a <__swbuf_r+0x1a>
d0040ef4:	4621      	mov	r1, r4
d0040ef6:	4628      	mov	r0, r5
d0040ef8:	f000 f80c 	bl	d0040f14 <__swsetup_r>
d0040efc:	2800      	cmp	r0, #0
d0040efe:	d0cb      	beq.n	d0040e98 <__swbuf_r+0x28>
d0040f00:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d0040f04:	e7ea      	b.n	d0040edc <__swbuf_r+0x6c>
d0040f06:	bf00      	nop
d0040f08:	d0041ccc 	.word	0xd0041ccc
d0040f0c:	d0041cec 	.word	0xd0041cec
d0040f10:	d0041cac 	.word	0xd0041cac

d0040f14 <__swsetup_r>:
d0040f14:	4b32      	ldr	r3, [pc, #200]	; (d0040fe0 <__swsetup_r+0xcc>)
d0040f16:	b570      	push	{r4, r5, r6, lr}
d0040f18:	681d      	ldr	r5, [r3, #0]
d0040f1a:	4606      	mov	r6, r0
d0040f1c:	460c      	mov	r4, r1
d0040f1e:	b125      	cbz	r5, d0040f2a <__swsetup_r+0x16>
d0040f20:	69ab      	ldr	r3, [r5, #24]
d0040f22:	b913      	cbnz	r3, d0040f2a <__swsetup_r+0x16>
d0040f24:	4628      	mov	r0, r5
d0040f26:	f000 f97d 	bl	d0041224 <__sinit>
d0040f2a:	4b2e      	ldr	r3, [pc, #184]	; (d0040fe4 <__swsetup_r+0xd0>)
d0040f2c:	429c      	cmp	r4, r3
d0040f2e:	d10f      	bne.n	d0040f50 <__swsetup_r+0x3c>
d0040f30:	686c      	ldr	r4, [r5, #4]
d0040f32:	89a3      	ldrh	r3, [r4, #12]
d0040f34:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d0040f38:	0719      	lsls	r1, r3, #28
d0040f3a:	d42c      	bmi.n	d0040f96 <__swsetup_r+0x82>
d0040f3c:	06dd      	lsls	r5, r3, #27
d0040f3e:	d411      	bmi.n	d0040f64 <__swsetup_r+0x50>
d0040f40:	2309      	movs	r3, #9
d0040f42:	6033      	str	r3, [r6, #0]
d0040f44:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d0040f48:	81a3      	strh	r3, [r4, #12]
d0040f4a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0040f4e:	e03e      	b.n	d0040fce <__swsetup_r+0xba>
d0040f50:	4b25      	ldr	r3, [pc, #148]	; (d0040fe8 <__swsetup_r+0xd4>)
d0040f52:	429c      	cmp	r4, r3
d0040f54:	d101      	bne.n	d0040f5a <__swsetup_r+0x46>
d0040f56:	68ac      	ldr	r4, [r5, #8]
d0040f58:	e7eb      	b.n	d0040f32 <__swsetup_r+0x1e>
d0040f5a:	4b24      	ldr	r3, [pc, #144]	; (d0040fec <__swsetup_r+0xd8>)
d0040f5c:	429c      	cmp	r4, r3
d0040f5e:	bf08      	it	eq
d0040f60:	68ec      	ldreq	r4, [r5, #12]
d0040f62:	e7e6      	b.n	d0040f32 <__swsetup_r+0x1e>
d0040f64:	0758      	lsls	r0, r3, #29
d0040f66:	d512      	bpl.n	d0040f8e <__swsetup_r+0x7a>
d0040f68:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0040f6a:	b141      	cbz	r1, d0040f7e <__swsetup_r+0x6a>
d0040f6c:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0040f70:	4299      	cmp	r1, r3
d0040f72:	d002      	beq.n	d0040f7a <__swsetup_r+0x66>
d0040f74:	4630      	mov	r0, r6
d0040f76:	f7ff fd75 	bl	d0040a64 <_free_r>
d0040f7a:	2300      	movs	r3, #0
d0040f7c:	6363      	str	r3, [r4, #52]	; 0x34
d0040f7e:	89a3      	ldrh	r3, [r4, #12]
d0040f80:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d0040f84:	81a3      	strh	r3, [r4, #12]
d0040f86:	2300      	movs	r3, #0
d0040f88:	6063      	str	r3, [r4, #4]
d0040f8a:	6923      	ldr	r3, [r4, #16]
d0040f8c:	6023      	str	r3, [r4, #0]
d0040f8e:	89a3      	ldrh	r3, [r4, #12]
d0040f90:	f043 0308 	orr.w	r3, r3, #8
d0040f94:	81a3      	strh	r3, [r4, #12]
d0040f96:	6923      	ldr	r3, [r4, #16]
d0040f98:	b94b      	cbnz	r3, d0040fae <__swsetup_r+0x9a>
d0040f9a:	89a3      	ldrh	r3, [r4, #12]
d0040f9c:	f403 7320 	and.w	r3, r3, #640	; 0x280
d0040fa0:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d0040fa4:	d003      	beq.n	d0040fae <__swsetup_r+0x9a>
d0040fa6:	4621      	mov	r1, r4
d0040fa8:	4630      	mov	r0, r6
d0040faa:	f000 f9ff 	bl	d00413ac <__smakebuf_r>
d0040fae:	89a0      	ldrh	r0, [r4, #12]
d0040fb0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d0040fb4:	f010 0301 	ands.w	r3, r0, #1
d0040fb8:	d00a      	beq.n	d0040fd0 <__swsetup_r+0xbc>
d0040fba:	2300      	movs	r3, #0
d0040fbc:	60a3      	str	r3, [r4, #8]
d0040fbe:	6963      	ldr	r3, [r4, #20]
d0040fc0:	425b      	negs	r3, r3
d0040fc2:	61a3      	str	r3, [r4, #24]
d0040fc4:	6923      	ldr	r3, [r4, #16]
d0040fc6:	b943      	cbnz	r3, d0040fda <__swsetup_r+0xc6>
d0040fc8:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d0040fcc:	d1ba      	bne.n	d0040f44 <__swsetup_r+0x30>
d0040fce:	bd70      	pop	{r4, r5, r6, pc}
d0040fd0:	0781      	lsls	r1, r0, #30
d0040fd2:	bf58      	it	pl
d0040fd4:	6963      	ldrpl	r3, [r4, #20]
d0040fd6:	60a3      	str	r3, [r4, #8]
d0040fd8:	e7f4      	b.n	d0040fc4 <__swsetup_r+0xb0>
d0040fda:	2000      	movs	r0, #0
d0040fdc:	e7f7      	b.n	d0040fce <__swsetup_r+0xba>
d0040fde:	bf00      	nop
d0040fe0:	d0041d48 	.word	0xd0041d48
d0040fe4:	d0041ccc 	.word	0xd0041ccc
d0040fe8:	d0041cec 	.word	0xd0041cec
d0040fec:	d0041cac 	.word	0xd0041cac

d0040ff0 <__sflush_r>:
d0040ff0:	898a      	ldrh	r2, [r1, #12]
d0040ff2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0040ff6:	4605      	mov	r5, r0
d0040ff8:	0710      	lsls	r0, r2, #28
d0040ffa:	460c      	mov	r4, r1
d0040ffc:	d458      	bmi.n	d00410b0 <__sflush_r+0xc0>
d0040ffe:	684b      	ldr	r3, [r1, #4]
d0041000:	2b00      	cmp	r3, #0
d0041002:	dc05      	bgt.n	d0041010 <__sflush_r+0x20>
d0041004:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0041006:	2b00      	cmp	r3, #0
d0041008:	dc02      	bgt.n	d0041010 <__sflush_r+0x20>
d004100a:	2000      	movs	r0, #0
d004100c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0041010:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0041012:	2e00      	cmp	r6, #0
d0041014:	d0f9      	beq.n	d004100a <__sflush_r+0x1a>
d0041016:	2300      	movs	r3, #0
d0041018:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d004101c:	682f      	ldr	r7, [r5, #0]
d004101e:	602b      	str	r3, [r5, #0]
d0041020:	d032      	beq.n	d0041088 <__sflush_r+0x98>
d0041022:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0041024:	89a3      	ldrh	r3, [r4, #12]
d0041026:	075a      	lsls	r2, r3, #29
d0041028:	d505      	bpl.n	d0041036 <__sflush_r+0x46>
d004102a:	6863      	ldr	r3, [r4, #4]
d004102c:	1ac0      	subs	r0, r0, r3
d004102e:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0041030:	b10b      	cbz	r3, d0041036 <__sflush_r+0x46>
d0041032:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0041034:	1ac0      	subs	r0, r0, r3
d0041036:	2300      	movs	r3, #0
d0041038:	4602      	mov	r2, r0
d004103a:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d004103c:	6a21      	ldr	r1, [r4, #32]
d004103e:	4628      	mov	r0, r5
d0041040:	47b0      	blx	r6
d0041042:	1c43      	adds	r3, r0, #1
d0041044:	89a3      	ldrh	r3, [r4, #12]
d0041046:	d106      	bne.n	d0041056 <__sflush_r+0x66>
d0041048:	6829      	ldr	r1, [r5, #0]
d004104a:	291d      	cmp	r1, #29
d004104c:	d82c      	bhi.n	d00410a8 <__sflush_r+0xb8>
d004104e:	4a2a      	ldr	r2, [pc, #168]	; (d00410f8 <__sflush_r+0x108>)
d0041050:	40ca      	lsrs	r2, r1
d0041052:	07d6      	lsls	r6, r2, #31
d0041054:	d528      	bpl.n	d00410a8 <__sflush_r+0xb8>
d0041056:	2200      	movs	r2, #0
d0041058:	6062      	str	r2, [r4, #4]
d004105a:	04d9      	lsls	r1, r3, #19
d004105c:	6922      	ldr	r2, [r4, #16]
d004105e:	6022      	str	r2, [r4, #0]
d0041060:	d504      	bpl.n	d004106c <__sflush_r+0x7c>
d0041062:	1c42      	adds	r2, r0, #1
d0041064:	d101      	bne.n	d004106a <__sflush_r+0x7a>
d0041066:	682b      	ldr	r3, [r5, #0]
d0041068:	b903      	cbnz	r3, d004106c <__sflush_r+0x7c>
d004106a:	6560      	str	r0, [r4, #84]	; 0x54
d004106c:	6b61      	ldr	r1, [r4, #52]	; 0x34
d004106e:	602f      	str	r7, [r5, #0]
d0041070:	2900      	cmp	r1, #0
d0041072:	d0ca      	beq.n	d004100a <__sflush_r+0x1a>
d0041074:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0041078:	4299      	cmp	r1, r3
d004107a:	d002      	beq.n	d0041082 <__sflush_r+0x92>
d004107c:	4628      	mov	r0, r5
d004107e:	f7ff fcf1 	bl	d0040a64 <_free_r>
d0041082:	2000      	movs	r0, #0
d0041084:	6360      	str	r0, [r4, #52]	; 0x34
d0041086:	e7c1      	b.n	d004100c <__sflush_r+0x1c>
d0041088:	6a21      	ldr	r1, [r4, #32]
d004108a:	2301      	movs	r3, #1
d004108c:	4628      	mov	r0, r5
d004108e:	47b0      	blx	r6
d0041090:	1c41      	adds	r1, r0, #1
d0041092:	d1c7      	bne.n	d0041024 <__sflush_r+0x34>
d0041094:	682b      	ldr	r3, [r5, #0]
d0041096:	2b00      	cmp	r3, #0
d0041098:	d0c4      	beq.n	d0041024 <__sflush_r+0x34>
d004109a:	2b1d      	cmp	r3, #29
d004109c:	d001      	beq.n	d00410a2 <__sflush_r+0xb2>
d004109e:	2b16      	cmp	r3, #22
d00410a0:	d101      	bne.n	d00410a6 <__sflush_r+0xb6>
d00410a2:	602f      	str	r7, [r5, #0]
d00410a4:	e7b1      	b.n	d004100a <__sflush_r+0x1a>
d00410a6:	89a3      	ldrh	r3, [r4, #12]
d00410a8:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00410ac:	81a3      	strh	r3, [r4, #12]
d00410ae:	e7ad      	b.n	d004100c <__sflush_r+0x1c>
d00410b0:	690f      	ldr	r7, [r1, #16]
d00410b2:	2f00      	cmp	r7, #0
d00410b4:	d0a9      	beq.n	d004100a <__sflush_r+0x1a>
d00410b6:	0793      	lsls	r3, r2, #30
d00410b8:	680e      	ldr	r6, [r1, #0]
d00410ba:	bf08      	it	eq
d00410bc:	694b      	ldreq	r3, [r1, #20]
d00410be:	600f      	str	r7, [r1, #0]
d00410c0:	bf18      	it	ne
d00410c2:	2300      	movne	r3, #0
d00410c4:	eba6 0807 	sub.w	r8, r6, r7
d00410c8:	608b      	str	r3, [r1, #8]
d00410ca:	f1b8 0f00 	cmp.w	r8, #0
d00410ce:	dd9c      	ble.n	d004100a <__sflush_r+0x1a>
d00410d0:	6a21      	ldr	r1, [r4, #32]
d00410d2:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d00410d4:	4643      	mov	r3, r8
d00410d6:	463a      	mov	r2, r7
d00410d8:	4628      	mov	r0, r5
d00410da:	47b0      	blx	r6
d00410dc:	2800      	cmp	r0, #0
d00410de:	dc06      	bgt.n	d00410ee <__sflush_r+0xfe>
d00410e0:	89a3      	ldrh	r3, [r4, #12]
d00410e2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00410e6:	81a3      	strh	r3, [r4, #12]
d00410e8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00410ec:	e78e      	b.n	d004100c <__sflush_r+0x1c>
d00410ee:	4407      	add	r7, r0
d00410f0:	eba8 0800 	sub.w	r8, r8, r0
d00410f4:	e7e9      	b.n	d00410ca <__sflush_r+0xda>
d00410f6:	bf00      	nop
d00410f8:	20400001 	.word	0x20400001

d00410fc <_fflush_r>:
d00410fc:	b538      	push	{r3, r4, r5, lr}
d00410fe:	690b      	ldr	r3, [r1, #16]
d0041100:	4605      	mov	r5, r0
d0041102:	460c      	mov	r4, r1
d0041104:	b913      	cbnz	r3, d004110c <_fflush_r+0x10>
d0041106:	2500      	movs	r5, #0
d0041108:	4628      	mov	r0, r5
d004110a:	bd38      	pop	{r3, r4, r5, pc}
d004110c:	b118      	cbz	r0, d0041116 <_fflush_r+0x1a>
d004110e:	6983      	ldr	r3, [r0, #24]
d0041110:	b90b      	cbnz	r3, d0041116 <_fflush_r+0x1a>
d0041112:	f000 f887 	bl	d0041224 <__sinit>
d0041116:	4b14      	ldr	r3, [pc, #80]	; (d0041168 <_fflush_r+0x6c>)
d0041118:	429c      	cmp	r4, r3
d004111a:	d11b      	bne.n	d0041154 <_fflush_r+0x58>
d004111c:	686c      	ldr	r4, [r5, #4]
d004111e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0041122:	2b00      	cmp	r3, #0
d0041124:	d0ef      	beq.n	d0041106 <_fflush_r+0xa>
d0041126:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0041128:	07d0      	lsls	r0, r2, #31
d004112a:	d404      	bmi.n	d0041136 <_fflush_r+0x3a>
d004112c:	0599      	lsls	r1, r3, #22
d004112e:	d402      	bmi.n	d0041136 <_fflush_r+0x3a>
d0041130:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0041132:	f000 f915 	bl	d0041360 <__retarget_lock_acquire_recursive>
d0041136:	4628      	mov	r0, r5
d0041138:	4621      	mov	r1, r4
d004113a:	f7ff ff59 	bl	d0040ff0 <__sflush_r>
d004113e:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0041140:	07da      	lsls	r2, r3, #31
d0041142:	4605      	mov	r5, r0
d0041144:	d4e0      	bmi.n	d0041108 <_fflush_r+0xc>
d0041146:	89a3      	ldrh	r3, [r4, #12]
d0041148:	059b      	lsls	r3, r3, #22
d004114a:	d4dd      	bmi.n	d0041108 <_fflush_r+0xc>
d004114c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d004114e:	f000 f908 	bl	d0041362 <__retarget_lock_release_recursive>
d0041152:	e7d9      	b.n	d0041108 <_fflush_r+0xc>
d0041154:	4b05      	ldr	r3, [pc, #20]	; (d004116c <_fflush_r+0x70>)
d0041156:	429c      	cmp	r4, r3
d0041158:	d101      	bne.n	d004115e <_fflush_r+0x62>
d004115a:	68ac      	ldr	r4, [r5, #8]
d004115c:	e7df      	b.n	d004111e <_fflush_r+0x22>
d004115e:	4b04      	ldr	r3, [pc, #16]	; (d0041170 <_fflush_r+0x74>)
d0041160:	429c      	cmp	r4, r3
d0041162:	bf08      	it	eq
d0041164:	68ec      	ldreq	r4, [r5, #12]
d0041166:	e7da      	b.n	d004111e <_fflush_r+0x22>
d0041168:	d0041ccc 	.word	0xd0041ccc
d004116c:	d0041cec 	.word	0xd0041cec
d0041170:	d0041cac 	.word	0xd0041cac

d0041174 <std>:
d0041174:	2300      	movs	r3, #0
d0041176:	b510      	push	{r4, lr}
d0041178:	4604      	mov	r4, r0
d004117a:	e9c0 3300 	strd	r3, r3, [r0]
d004117e:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0041182:	6083      	str	r3, [r0, #8]
d0041184:	8181      	strh	r1, [r0, #12]
d0041186:	6643      	str	r3, [r0, #100]	; 0x64
d0041188:	81c2      	strh	r2, [r0, #14]
d004118a:	6183      	str	r3, [r0, #24]
d004118c:	4619      	mov	r1, r3
d004118e:	2208      	movs	r2, #8
d0041190:	305c      	adds	r0, #92	; 0x5c
d0041192:	f7fe ff53 	bl	d004003c <memset>
d0041196:	4b05      	ldr	r3, [pc, #20]	; (d00411ac <std+0x38>)
d0041198:	6263      	str	r3, [r4, #36]	; 0x24
d004119a:	4b05      	ldr	r3, [pc, #20]	; (d00411b0 <std+0x3c>)
d004119c:	62a3      	str	r3, [r4, #40]	; 0x28
d004119e:	4b05      	ldr	r3, [pc, #20]	; (d00411b4 <std+0x40>)
d00411a0:	62e3      	str	r3, [r4, #44]	; 0x2c
d00411a2:	4b05      	ldr	r3, [pc, #20]	; (d00411b8 <std+0x44>)
d00411a4:	6224      	str	r4, [r4, #32]
d00411a6:	6323      	str	r3, [r4, #48]	; 0x30
d00411a8:	bd10      	pop	{r4, pc}
d00411aa:	bf00      	nop
d00411ac:	d0041a21 	.word	0xd0041a21
d00411b0:	d0041a43 	.word	0xd0041a43
d00411b4:	d0041a7b 	.word	0xd0041a7b
d00411b8:	d0041a9f 	.word	0xd0041a9f

d00411bc <_cleanup_r>:
d00411bc:	4901      	ldr	r1, [pc, #4]	; (d00411c4 <_cleanup_r+0x8>)
d00411be:	f000 b8af 	b.w	d0041320 <_fwalk_reent>
d00411c2:	bf00      	nop
d00411c4:	d00410fd 	.word	0xd00410fd

d00411c8 <__sfmoreglue>:
d00411c8:	b570      	push	{r4, r5, r6, lr}
d00411ca:	1e4a      	subs	r2, r1, #1
d00411cc:	2568      	movs	r5, #104	; 0x68
d00411ce:	4355      	muls	r5, r2
d00411d0:	460e      	mov	r6, r1
d00411d2:	f105 0174 	add.w	r1, r5, #116	; 0x74
d00411d6:	f7ff fc95 	bl	d0040b04 <_malloc_r>
d00411da:	4604      	mov	r4, r0
d00411dc:	b140      	cbz	r0, d00411f0 <__sfmoreglue+0x28>
d00411de:	2100      	movs	r1, #0
d00411e0:	e9c0 1600 	strd	r1, r6, [r0]
d00411e4:	300c      	adds	r0, #12
d00411e6:	60a0      	str	r0, [r4, #8]
d00411e8:	f105 0268 	add.w	r2, r5, #104	; 0x68
d00411ec:	f7fe ff26 	bl	d004003c <memset>
d00411f0:	4620      	mov	r0, r4
d00411f2:	bd70      	pop	{r4, r5, r6, pc}

d00411f4 <__sfp_lock_acquire>:
d00411f4:	4801      	ldr	r0, [pc, #4]	; (d00411fc <__sfp_lock_acquire+0x8>)
d00411f6:	f000 b8b3 	b.w	d0041360 <__retarget_lock_acquire_recursive>
d00411fa:	bf00      	nop
d00411fc:	d0042b04 	.word	0xd0042b04

d0041200 <__sfp_lock_release>:
d0041200:	4801      	ldr	r0, [pc, #4]	; (d0041208 <__sfp_lock_release+0x8>)
d0041202:	f000 b8ae 	b.w	d0041362 <__retarget_lock_release_recursive>
d0041206:	bf00      	nop
d0041208:	d0042b04 	.word	0xd0042b04

d004120c <__sinit_lock_acquire>:
d004120c:	4801      	ldr	r0, [pc, #4]	; (d0041214 <__sinit_lock_acquire+0x8>)
d004120e:	f000 b8a7 	b.w	d0041360 <__retarget_lock_acquire_recursive>
d0041212:	bf00      	nop
d0041214:	d0042aff 	.word	0xd0042aff

d0041218 <__sinit_lock_release>:
d0041218:	4801      	ldr	r0, [pc, #4]	; (d0041220 <__sinit_lock_release+0x8>)
d004121a:	f000 b8a2 	b.w	d0041362 <__retarget_lock_release_recursive>
d004121e:	bf00      	nop
d0041220:	d0042aff 	.word	0xd0042aff

d0041224 <__sinit>:
d0041224:	b510      	push	{r4, lr}
d0041226:	4604      	mov	r4, r0
d0041228:	f7ff fff0 	bl	d004120c <__sinit_lock_acquire>
d004122c:	69a3      	ldr	r3, [r4, #24]
d004122e:	b11b      	cbz	r3, d0041238 <__sinit+0x14>
d0041230:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0041234:	f7ff bff0 	b.w	d0041218 <__sinit_lock_release>
d0041238:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d004123c:	6523      	str	r3, [r4, #80]	; 0x50
d004123e:	4b13      	ldr	r3, [pc, #76]	; (d004128c <__sinit+0x68>)
d0041240:	4a13      	ldr	r2, [pc, #76]	; (d0041290 <__sinit+0x6c>)
d0041242:	681b      	ldr	r3, [r3, #0]
d0041244:	62a2      	str	r2, [r4, #40]	; 0x28
d0041246:	42a3      	cmp	r3, r4
d0041248:	bf04      	itt	eq
d004124a:	2301      	moveq	r3, #1
d004124c:	61a3      	streq	r3, [r4, #24]
d004124e:	4620      	mov	r0, r4
d0041250:	f000 f820 	bl	d0041294 <__sfp>
d0041254:	6060      	str	r0, [r4, #4]
d0041256:	4620      	mov	r0, r4
d0041258:	f000 f81c 	bl	d0041294 <__sfp>
d004125c:	60a0      	str	r0, [r4, #8]
d004125e:	4620      	mov	r0, r4
d0041260:	f000 f818 	bl	d0041294 <__sfp>
d0041264:	2200      	movs	r2, #0
d0041266:	60e0      	str	r0, [r4, #12]
d0041268:	2104      	movs	r1, #4
d004126a:	6860      	ldr	r0, [r4, #4]
d004126c:	f7ff ff82 	bl	d0041174 <std>
d0041270:	68a0      	ldr	r0, [r4, #8]
d0041272:	2201      	movs	r2, #1
d0041274:	2109      	movs	r1, #9
d0041276:	f7ff ff7d 	bl	d0041174 <std>
d004127a:	68e0      	ldr	r0, [r4, #12]
d004127c:	2202      	movs	r2, #2
d004127e:	2112      	movs	r1, #18
d0041280:	f7ff ff78 	bl	d0041174 <std>
d0041284:	2301      	movs	r3, #1
d0041286:	61a3      	str	r3, [r4, #24]
d0041288:	e7d2      	b.n	d0041230 <__sinit+0xc>
d004128a:	bf00      	nop
d004128c:	d0041bf4 	.word	0xd0041bf4
d0041290:	d00411bd 	.word	0xd00411bd

d0041294 <__sfp>:
d0041294:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0041296:	4607      	mov	r7, r0
d0041298:	f7ff ffac 	bl	d00411f4 <__sfp_lock_acquire>
d004129c:	4b1e      	ldr	r3, [pc, #120]	; (d0041318 <__sfp+0x84>)
d004129e:	681e      	ldr	r6, [r3, #0]
d00412a0:	69b3      	ldr	r3, [r6, #24]
d00412a2:	b913      	cbnz	r3, d00412aa <__sfp+0x16>
d00412a4:	4630      	mov	r0, r6
d00412a6:	f7ff ffbd 	bl	d0041224 <__sinit>
d00412aa:	3648      	adds	r6, #72	; 0x48
d00412ac:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d00412b0:	3b01      	subs	r3, #1
d00412b2:	d503      	bpl.n	d00412bc <__sfp+0x28>
d00412b4:	6833      	ldr	r3, [r6, #0]
d00412b6:	b30b      	cbz	r3, d00412fc <__sfp+0x68>
d00412b8:	6836      	ldr	r6, [r6, #0]
d00412ba:	e7f7      	b.n	d00412ac <__sfp+0x18>
d00412bc:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d00412c0:	b9d5      	cbnz	r5, d00412f8 <__sfp+0x64>
d00412c2:	4b16      	ldr	r3, [pc, #88]	; (d004131c <__sfp+0x88>)
d00412c4:	60e3      	str	r3, [r4, #12]
d00412c6:	f104 0058 	add.w	r0, r4, #88	; 0x58
d00412ca:	6665      	str	r5, [r4, #100]	; 0x64
d00412cc:	f000 f847 	bl	d004135e <__retarget_lock_init_recursive>
d00412d0:	f7ff ff96 	bl	d0041200 <__sfp_lock_release>
d00412d4:	e9c4 5501 	strd	r5, r5, [r4, #4]
d00412d8:	e9c4 5504 	strd	r5, r5, [r4, #16]
d00412dc:	6025      	str	r5, [r4, #0]
d00412de:	61a5      	str	r5, [r4, #24]
d00412e0:	2208      	movs	r2, #8
d00412e2:	4629      	mov	r1, r5
d00412e4:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d00412e8:	f7fe fea8 	bl	d004003c <memset>
d00412ec:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d00412f0:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d00412f4:	4620      	mov	r0, r4
d00412f6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00412f8:	3468      	adds	r4, #104	; 0x68
d00412fa:	e7d9      	b.n	d00412b0 <__sfp+0x1c>
d00412fc:	2104      	movs	r1, #4
d00412fe:	4638      	mov	r0, r7
d0041300:	f7ff ff62 	bl	d00411c8 <__sfmoreglue>
d0041304:	4604      	mov	r4, r0
d0041306:	6030      	str	r0, [r6, #0]
d0041308:	2800      	cmp	r0, #0
d004130a:	d1d5      	bne.n	d00412b8 <__sfp+0x24>
d004130c:	f7ff ff78 	bl	d0041200 <__sfp_lock_release>
d0041310:	230c      	movs	r3, #12
d0041312:	603b      	str	r3, [r7, #0]
d0041314:	e7ee      	b.n	d00412f4 <__sfp+0x60>
d0041316:	bf00      	nop
d0041318:	d0041bf4 	.word	0xd0041bf4
d004131c:	ffff0001 	.word	0xffff0001

d0041320 <_fwalk_reent>:
d0041320:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0041324:	4606      	mov	r6, r0
d0041326:	4688      	mov	r8, r1
d0041328:	f100 0448 	add.w	r4, r0, #72	; 0x48
d004132c:	2700      	movs	r7, #0
d004132e:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0041332:	f1b9 0901 	subs.w	r9, r9, #1
d0041336:	d505      	bpl.n	d0041344 <_fwalk_reent+0x24>
d0041338:	6824      	ldr	r4, [r4, #0]
d004133a:	2c00      	cmp	r4, #0
d004133c:	d1f7      	bne.n	d004132e <_fwalk_reent+0xe>
d004133e:	4638      	mov	r0, r7
d0041340:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0041344:	89ab      	ldrh	r3, [r5, #12]
d0041346:	2b01      	cmp	r3, #1
d0041348:	d907      	bls.n	d004135a <_fwalk_reent+0x3a>
d004134a:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d004134e:	3301      	adds	r3, #1
d0041350:	d003      	beq.n	d004135a <_fwalk_reent+0x3a>
d0041352:	4629      	mov	r1, r5
d0041354:	4630      	mov	r0, r6
d0041356:	47c0      	blx	r8
d0041358:	4307      	orrs	r7, r0
d004135a:	3568      	adds	r5, #104	; 0x68
d004135c:	e7e9      	b.n	d0041332 <_fwalk_reent+0x12>

d004135e <__retarget_lock_init_recursive>:
d004135e:	4770      	bx	lr

d0041360 <__retarget_lock_acquire_recursive>:
d0041360:	4770      	bx	lr

d0041362 <__retarget_lock_release_recursive>:
d0041362:	4770      	bx	lr

d0041364 <__swhatbuf_r>:
d0041364:	b570      	push	{r4, r5, r6, lr}
d0041366:	460e      	mov	r6, r1
d0041368:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d004136c:	2900      	cmp	r1, #0
d004136e:	b096      	sub	sp, #88	; 0x58
d0041370:	4614      	mov	r4, r2
d0041372:	461d      	mov	r5, r3
d0041374:	da07      	bge.n	d0041386 <__swhatbuf_r+0x22>
d0041376:	2300      	movs	r3, #0
d0041378:	602b      	str	r3, [r5, #0]
d004137a:	89b3      	ldrh	r3, [r6, #12]
d004137c:	061a      	lsls	r2, r3, #24
d004137e:	d410      	bmi.n	d00413a2 <__swhatbuf_r+0x3e>
d0041380:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0041384:	e00e      	b.n	d00413a4 <__swhatbuf_r+0x40>
d0041386:	466a      	mov	r2, sp
d0041388:	f000 fb9e 	bl	d0041ac8 <_fstat_r>
d004138c:	2800      	cmp	r0, #0
d004138e:	dbf2      	blt.n	d0041376 <__swhatbuf_r+0x12>
d0041390:	9a01      	ldr	r2, [sp, #4]
d0041392:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0041396:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d004139a:	425a      	negs	r2, r3
d004139c:	415a      	adcs	r2, r3
d004139e:	602a      	str	r2, [r5, #0]
d00413a0:	e7ee      	b.n	d0041380 <__swhatbuf_r+0x1c>
d00413a2:	2340      	movs	r3, #64	; 0x40
d00413a4:	2000      	movs	r0, #0
d00413a6:	6023      	str	r3, [r4, #0]
d00413a8:	b016      	add	sp, #88	; 0x58
d00413aa:	bd70      	pop	{r4, r5, r6, pc}

d00413ac <__smakebuf_r>:
d00413ac:	898b      	ldrh	r3, [r1, #12]
d00413ae:	b573      	push	{r0, r1, r4, r5, r6, lr}
d00413b0:	079d      	lsls	r5, r3, #30
d00413b2:	4606      	mov	r6, r0
d00413b4:	460c      	mov	r4, r1
d00413b6:	d507      	bpl.n	d00413c8 <__smakebuf_r+0x1c>
d00413b8:	f104 0347 	add.w	r3, r4, #71	; 0x47
d00413bc:	6023      	str	r3, [r4, #0]
d00413be:	6123      	str	r3, [r4, #16]
d00413c0:	2301      	movs	r3, #1
d00413c2:	6163      	str	r3, [r4, #20]
d00413c4:	b002      	add	sp, #8
d00413c6:	bd70      	pop	{r4, r5, r6, pc}
d00413c8:	ab01      	add	r3, sp, #4
d00413ca:	466a      	mov	r2, sp
d00413cc:	f7ff ffca 	bl	d0041364 <__swhatbuf_r>
d00413d0:	9900      	ldr	r1, [sp, #0]
d00413d2:	4605      	mov	r5, r0
d00413d4:	4630      	mov	r0, r6
d00413d6:	f7ff fb95 	bl	d0040b04 <_malloc_r>
d00413da:	b948      	cbnz	r0, d00413f0 <__smakebuf_r+0x44>
d00413dc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d00413e0:	059a      	lsls	r2, r3, #22
d00413e2:	d4ef      	bmi.n	d00413c4 <__smakebuf_r+0x18>
d00413e4:	f023 0303 	bic.w	r3, r3, #3
d00413e8:	f043 0302 	orr.w	r3, r3, #2
d00413ec:	81a3      	strh	r3, [r4, #12]
d00413ee:	e7e3      	b.n	d00413b8 <__smakebuf_r+0xc>
d00413f0:	4b0d      	ldr	r3, [pc, #52]	; (d0041428 <__smakebuf_r+0x7c>)
d00413f2:	62b3      	str	r3, [r6, #40]	; 0x28
d00413f4:	89a3      	ldrh	r3, [r4, #12]
d00413f6:	6020      	str	r0, [r4, #0]
d00413f8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00413fc:	81a3      	strh	r3, [r4, #12]
d00413fe:	9b00      	ldr	r3, [sp, #0]
d0041400:	6163      	str	r3, [r4, #20]
d0041402:	9b01      	ldr	r3, [sp, #4]
d0041404:	6120      	str	r0, [r4, #16]
d0041406:	b15b      	cbz	r3, d0041420 <__smakebuf_r+0x74>
d0041408:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d004140c:	4630      	mov	r0, r6
d004140e:	f000 fb6d 	bl	d0041aec <_isatty_r>
d0041412:	b128      	cbz	r0, d0041420 <__smakebuf_r+0x74>
d0041414:	89a3      	ldrh	r3, [r4, #12]
d0041416:	f023 0303 	bic.w	r3, r3, #3
d004141a:	f043 0301 	orr.w	r3, r3, #1
d004141e:	81a3      	strh	r3, [r4, #12]
d0041420:	89a0      	ldrh	r0, [r4, #12]
d0041422:	4305      	orrs	r5, r0
d0041424:	81a5      	strh	r5, [r4, #12]
d0041426:	e7cd      	b.n	d00413c4 <__smakebuf_r+0x18>
d0041428:	d00411bd 	.word	0xd00411bd

d004142c <__malloc_lock>:
d004142c:	4801      	ldr	r0, [pc, #4]	; (d0041434 <__malloc_lock+0x8>)
d004142e:	f7ff bf97 	b.w	d0041360 <__retarget_lock_acquire_recursive>
d0041432:	bf00      	nop
d0041434:	d0042b00 	.word	0xd0042b00

d0041438 <__malloc_unlock>:
d0041438:	4801      	ldr	r0, [pc, #4]	; (d0041440 <__malloc_unlock+0x8>)
d004143a:	f7ff bf92 	b.w	d0041362 <__retarget_lock_release_recursive>
d004143e:	bf00      	nop
d0041440:	d0042b00 	.word	0xd0042b00

d0041444 <__sfputc_r>:
d0041444:	6893      	ldr	r3, [r2, #8]
d0041446:	3b01      	subs	r3, #1
d0041448:	2b00      	cmp	r3, #0
d004144a:	b410      	push	{r4}
d004144c:	6093      	str	r3, [r2, #8]
d004144e:	da08      	bge.n	d0041462 <__sfputc_r+0x1e>
d0041450:	6994      	ldr	r4, [r2, #24]
d0041452:	42a3      	cmp	r3, r4
d0041454:	db01      	blt.n	d004145a <__sfputc_r+0x16>
d0041456:	290a      	cmp	r1, #10
d0041458:	d103      	bne.n	d0041462 <__sfputc_r+0x1e>
d004145a:	f85d 4b04 	ldr.w	r4, [sp], #4
d004145e:	f7ff bd07 	b.w	d0040e70 <__swbuf_r>
d0041462:	6813      	ldr	r3, [r2, #0]
d0041464:	1c58      	adds	r0, r3, #1
d0041466:	6010      	str	r0, [r2, #0]
d0041468:	7019      	strb	r1, [r3, #0]
d004146a:	4608      	mov	r0, r1
d004146c:	f85d 4b04 	ldr.w	r4, [sp], #4
d0041470:	4770      	bx	lr

d0041472 <__sfputs_r>:
d0041472:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0041474:	4606      	mov	r6, r0
d0041476:	460f      	mov	r7, r1
d0041478:	4614      	mov	r4, r2
d004147a:	18d5      	adds	r5, r2, r3
d004147c:	42ac      	cmp	r4, r5
d004147e:	d101      	bne.n	d0041484 <__sfputs_r+0x12>
d0041480:	2000      	movs	r0, #0
d0041482:	e007      	b.n	d0041494 <__sfputs_r+0x22>
d0041484:	f814 1b01 	ldrb.w	r1, [r4], #1
d0041488:	463a      	mov	r2, r7
d004148a:	4630      	mov	r0, r6
d004148c:	f7ff ffda 	bl	d0041444 <__sfputc_r>
d0041490:	1c43      	adds	r3, r0, #1
d0041492:	d1f3      	bne.n	d004147c <__sfputs_r+0xa>
d0041494:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

d0041498 <_vfiprintf_r>:
d0041498:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004149c:	460d      	mov	r5, r1
d004149e:	b09d      	sub	sp, #116	; 0x74
d00414a0:	4614      	mov	r4, r2
d00414a2:	4698      	mov	r8, r3
d00414a4:	4606      	mov	r6, r0
d00414a6:	b118      	cbz	r0, d00414b0 <_vfiprintf_r+0x18>
d00414a8:	6983      	ldr	r3, [r0, #24]
d00414aa:	b90b      	cbnz	r3, d00414b0 <_vfiprintf_r+0x18>
d00414ac:	f7ff feba 	bl	d0041224 <__sinit>
d00414b0:	4b89      	ldr	r3, [pc, #548]	; (d00416d8 <_vfiprintf_r+0x240>)
d00414b2:	429d      	cmp	r5, r3
d00414b4:	d11b      	bne.n	d00414ee <_vfiprintf_r+0x56>
d00414b6:	6875      	ldr	r5, [r6, #4]
d00414b8:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d00414ba:	07d9      	lsls	r1, r3, #31
d00414bc:	d405      	bmi.n	d00414ca <_vfiprintf_r+0x32>
d00414be:	89ab      	ldrh	r3, [r5, #12]
d00414c0:	059a      	lsls	r2, r3, #22
d00414c2:	d402      	bmi.n	d00414ca <_vfiprintf_r+0x32>
d00414c4:	6da8      	ldr	r0, [r5, #88]	; 0x58
d00414c6:	f7ff ff4b 	bl	d0041360 <__retarget_lock_acquire_recursive>
d00414ca:	89ab      	ldrh	r3, [r5, #12]
d00414cc:	071b      	lsls	r3, r3, #28
d00414ce:	d501      	bpl.n	d00414d4 <_vfiprintf_r+0x3c>
d00414d0:	692b      	ldr	r3, [r5, #16]
d00414d2:	b9eb      	cbnz	r3, d0041510 <_vfiprintf_r+0x78>
d00414d4:	4629      	mov	r1, r5
d00414d6:	4630      	mov	r0, r6
d00414d8:	f7ff fd1c 	bl	d0040f14 <__swsetup_r>
d00414dc:	b1c0      	cbz	r0, d0041510 <_vfiprintf_r+0x78>
d00414de:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d00414e0:	07dc      	lsls	r4, r3, #31
d00414e2:	d50e      	bpl.n	d0041502 <_vfiprintf_r+0x6a>
d00414e4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00414e8:	b01d      	add	sp, #116	; 0x74
d00414ea:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00414ee:	4b7b      	ldr	r3, [pc, #492]	; (d00416dc <_vfiprintf_r+0x244>)
d00414f0:	429d      	cmp	r5, r3
d00414f2:	d101      	bne.n	d00414f8 <_vfiprintf_r+0x60>
d00414f4:	68b5      	ldr	r5, [r6, #8]
d00414f6:	e7df      	b.n	d00414b8 <_vfiprintf_r+0x20>
d00414f8:	4b79      	ldr	r3, [pc, #484]	; (d00416e0 <_vfiprintf_r+0x248>)
d00414fa:	429d      	cmp	r5, r3
d00414fc:	bf08      	it	eq
d00414fe:	68f5      	ldreq	r5, [r6, #12]
d0041500:	e7da      	b.n	d00414b8 <_vfiprintf_r+0x20>
d0041502:	89ab      	ldrh	r3, [r5, #12]
d0041504:	0598      	lsls	r0, r3, #22
d0041506:	d4ed      	bmi.n	d00414e4 <_vfiprintf_r+0x4c>
d0041508:	6da8      	ldr	r0, [r5, #88]	; 0x58
d004150a:	f7ff ff2a 	bl	d0041362 <__retarget_lock_release_recursive>
d004150e:	e7e9      	b.n	d00414e4 <_vfiprintf_r+0x4c>
d0041510:	2300      	movs	r3, #0
d0041512:	9309      	str	r3, [sp, #36]	; 0x24
d0041514:	2320      	movs	r3, #32
d0041516:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d004151a:	f8cd 800c 	str.w	r8, [sp, #12]
d004151e:	2330      	movs	r3, #48	; 0x30
d0041520:	f8df 81c0 	ldr.w	r8, [pc, #448]	; d00416e4 <_vfiprintf_r+0x24c>
d0041524:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0041528:	f04f 0901 	mov.w	r9, #1
d004152c:	4623      	mov	r3, r4
d004152e:	469a      	mov	sl, r3
d0041530:	f813 2b01 	ldrb.w	r2, [r3], #1
d0041534:	b10a      	cbz	r2, d004153a <_vfiprintf_r+0xa2>
d0041536:	2a25      	cmp	r2, #37	; 0x25
d0041538:	d1f9      	bne.n	d004152e <_vfiprintf_r+0x96>
d004153a:	ebba 0b04 	subs.w	fp, sl, r4
d004153e:	d00b      	beq.n	d0041558 <_vfiprintf_r+0xc0>
d0041540:	465b      	mov	r3, fp
d0041542:	4622      	mov	r2, r4
d0041544:	4629      	mov	r1, r5
d0041546:	4630      	mov	r0, r6
d0041548:	f7ff ff93 	bl	d0041472 <__sfputs_r>
d004154c:	3001      	adds	r0, #1
d004154e:	f000 80aa 	beq.w	d00416a6 <_vfiprintf_r+0x20e>
d0041552:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0041554:	445a      	add	r2, fp
d0041556:	9209      	str	r2, [sp, #36]	; 0x24
d0041558:	f89a 3000 	ldrb.w	r3, [sl]
d004155c:	2b00      	cmp	r3, #0
d004155e:	f000 80a2 	beq.w	d00416a6 <_vfiprintf_r+0x20e>
d0041562:	2300      	movs	r3, #0
d0041564:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0041568:	e9cd 2305 	strd	r2, r3, [sp, #20]
d004156c:	f10a 0a01 	add.w	sl, sl, #1
d0041570:	9304      	str	r3, [sp, #16]
d0041572:	9307      	str	r3, [sp, #28]
d0041574:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0041578:	931a      	str	r3, [sp, #104]	; 0x68
d004157a:	4654      	mov	r4, sl
d004157c:	2205      	movs	r2, #5
d004157e:	f814 1b01 	ldrb.w	r1, [r4], #1
d0041582:	4858      	ldr	r0, [pc, #352]	; (d00416e4 <_vfiprintf_r+0x24c>)
d0041584:	f000 fad4 	bl	d0041b30 <memchr>
d0041588:	9a04      	ldr	r2, [sp, #16]
d004158a:	b9d8      	cbnz	r0, d00415c4 <_vfiprintf_r+0x12c>
d004158c:	06d1      	lsls	r1, r2, #27
d004158e:	bf44      	itt	mi
d0041590:	2320      	movmi	r3, #32
d0041592:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0041596:	0713      	lsls	r3, r2, #28
d0041598:	bf44      	itt	mi
d004159a:	232b      	movmi	r3, #43	; 0x2b
d004159c:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d00415a0:	f89a 3000 	ldrb.w	r3, [sl]
d00415a4:	2b2a      	cmp	r3, #42	; 0x2a
d00415a6:	d015      	beq.n	d00415d4 <_vfiprintf_r+0x13c>
d00415a8:	9a07      	ldr	r2, [sp, #28]
d00415aa:	4654      	mov	r4, sl
d00415ac:	2000      	movs	r0, #0
d00415ae:	f04f 0c0a 	mov.w	ip, #10
d00415b2:	4621      	mov	r1, r4
d00415b4:	f811 3b01 	ldrb.w	r3, [r1], #1
d00415b8:	3b30      	subs	r3, #48	; 0x30
d00415ba:	2b09      	cmp	r3, #9
d00415bc:	d94e      	bls.n	d004165c <_vfiprintf_r+0x1c4>
d00415be:	b1b0      	cbz	r0, d00415ee <_vfiprintf_r+0x156>
d00415c0:	9207      	str	r2, [sp, #28]
d00415c2:	e014      	b.n	d00415ee <_vfiprintf_r+0x156>
d00415c4:	eba0 0308 	sub.w	r3, r0, r8
d00415c8:	fa09 f303 	lsl.w	r3, r9, r3
d00415cc:	4313      	orrs	r3, r2
d00415ce:	9304      	str	r3, [sp, #16]
d00415d0:	46a2      	mov	sl, r4
d00415d2:	e7d2      	b.n	d004157a <_vfiprintf_r+0xe2>
d00415d4:	9b03      	ldr	r3, [sp, #12]
d00415d6:	1d19      	adds	r1, r3, #4
d00415d8:	681b      	ldr	r3, [r3, #0]
d00415da:	9103      	str	r1, [sp, #12]
d00415dc:	2b00      	cmp	r3, #0
d00415de:	bfbb      	ittet	lt
d00415e0:	425b      	neglt	r3, r3
d00415e2:	f042 0202 	orrlt.w	r2, r2, #2
d00415e6:	9307      	strge	r3, [sp, #28]
d00415e8:	9307      	strlt	r3, [sp, #28]
d00415ea:	bfb8      	it	lt
d00415ec:	9204      	strlt	r2, [sp, #16]
d00415ee:	7823      	ldrb	r3, [r4, #0]
d00415f0:	2b2e      	cmp	r3, #46	; 0x2e
d00415f2:	d10c      	bne.n	d004160e <_vfiprintf_r+0x176>
d00415f4:	7863      	ldrb	r3, [r4, #1]
d00415f6:	2b2a      	cmp	r3, #42	; 0x2a
d00415f8:	d135      	bne.n	d0041666 <_vfiprintf_r+0x1ce>
d00415fa:	9b03      	ldr	r3, [sp, #12]
d00415fc:	1d1a      	adds	r2, r3, #4
d00415fe:	681b      	ldr	r3, [r3, #0]
d0041600:	9203      	str	r2, [sp, #12]
d0041602:	2b00      	cmp	r3, #0
d0041604:	bfb8      	it	lt
d0041606:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d004160a:	3402      	adds	r4, #2
d004160c:	9305      	str	r3, [sp, #20]
d004160e:	f8df a0e4 	ldr.w	sl, [pc, #228]	; d00416f4 <_vfiprintf_r+0x25c>
d0041612:	7821      	ldrb	r1, [r4, #0]
d0041614:	2203      	movs	r2, #3
d0041616:	4650      	mov	r0, sl
d0041618:	f000 fa8a 	bl	d0041b30 <memchr>
d004161c:	b140      	cbz	r0, d0041630 <_vfiprintf_r+0x198>
d004161e:	2340      	movs	r3, #64	; 0x40
d0041620:	eba0 000a 	sub.w	r0, r0, sl
d0041624:	fa03 f000 	lsl.w	r0, r3, r0
d0041628:	9b04      	ldr	r3, [sp, #16]
d004162a:	4303      	orrs	r3, r0
d004162c:	3401      	adds	r4, #1
d004162e:	9304      	str	r3, [sp, #16]
d0041630:	f814 1b01 	ldrb.w	r1, [r4], #1
d0041634:	482c      	ldr	r0, [pc, #176]	; (d00416e8 <_vfiprintf_r+0x250>)
d0041636:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d004163a:	2206      	movs	r2, #6
d004163c:	f000 fa78 	bl	d0041b30 <memchr>
d0041640:	2800      	cmp	r0, #0
d0041642:	d03f      	beq.n	d00416c4 <_vfiprintf_r+0x22c>
d0041644:	4b29      	ldr	r3, [pc, #164]	; (d00416ec <_vfiprintf_r+0x254>)
d0041646:	bb1b      	cbnz	r3, d0041690 <_vfiprintf_r+0x1f8>
d0041648:	9b03      	ldr	r3, [sp, #12]
d004164a:	3307      	adds	r3, #7
d004164c:	f023 0307 	bic.w	r3, r3, #7
d0041650:	3308      	adds	r3, #8
d0041652:	9303      	str	r3, [sp, #12]
d0041654:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0041656:	443b      	add	r3, r7
d0041658:	9309      	str	r3, [sp, #36]	; 0x24
d004165a:	e767      	b.n	d004152c <_vfiprintf_r+0x94>
d004165c:	fb0c 3202 	mla	r2, ip, r2, r3
d0041660:	460c      	mov	r4, r1
d0041662:	2001      	movs	r0, #1
d0041664:	e7a5      	b.n	d00415b2 <_vfiprintf_r+0x11a>
d0041666:	2300      	movs	r3, #0
d0041668:	3401      	adds	r4, #1
d004166a:	9305      	str	r3, [sp, #20]
d004166c:	4619      	mov	r1, r3
d004166e:	f04f 0c0a 	mov.w	ip, #10
d0041672:	4620      	mov	r0, r4
d0041674:	f810 2b01 	ldrb.w	r2, [r0], #1
d0041678:	3a30      	subs	r2, #48	; 0x30
d004167a:	2a09      	cmp	r2, #9
d004167c:	d903      	bls.n	d0041686 <_vfiprintf_r+0x1ee>
d004167e:	2b00      	cmp	r3, #0
d0041680:	d0c5      	beq.n	d004160e <_vfiprintf_r+0x176>
d0041682:	9105      	str	r1, [sp, #20]
d0041684:	e7c3      	b.n	d004160e <_vfiprintf_r+0x176>
d0041686:	fb0c 2101 	mla	r1, ip, r1, r2
d004168a:	4604      	mov	r4, r0
d004168c:	2301      	movs	r3, #1
d004168e:	e7f0      	b.n	d0041672 <_vfiprintf_r+0x1da>
d0041690:	ab03      	add	r3, sp, #12
d0041692:	9300      	str	r3, [sp, #0]
d0041694:	462a      	mov	r2, r5
d0041696:	4b16      	ldr	r3, [pc, #88]	; (d00416f0 <_vfiprintf_r+0x258>)
d0041698:	a904      	add	r1, sp, #16
d004169a:	4630      	mov	r0, r6
d004169c:	f3af 8000 	nop.w
d00416a0:	4607      	mov	r7, r0
d00416a2:	1c78      	adds	r0, r7, #1
d00416a4:	d1d6      	bne.n	d0041654 <_vfiprintf_r+0x1bc>
d00416a6:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d00416a8:	07d9      	lsls	r1, r3, #31
d00416aa:	d405      	bmi.n	d00416b8 <_vfiprintf_r+0x220>
d00416ac:	89ab      	ldrh	r3, [r5, #12]
d00416ae:	059a      	lsls	r2, r3, #22
d00416b0:	d402      	bmi.n	d00416b8 <_vfiprintf_r+0x220>
d00416b2:	6da8      	ldr	r0, [r5, #88]	; 0x58
d00416b4:	f7ff fe55 	bl	d0041362 <__retarget_lock_release_recursive>
d00416b8:	89ab      	ldrh	r3, [r5, #12]
d00416ba:	065b      	lsls	r3, r3, #25
d00416bc:	f53f af12 	bmi.w	d00414e4 <_vfiprintf_r+0x4c>
d00416c0:	9809      	ldr	r0, [sp, #36]	; 0x24
d00416c2:	e711      	b.n	d00414e8 <_vfiprintf_r+0x50>
d00416c4:	ab03      	add	r3, sp, #12
d00416c6:	9300      	str	r3, [sp, #0]
d00416c8:	462a      	mov	r2, r5
d00416ca:	4b09      	ldr	r3, [pc, #36]	; (d00416f0 <_vfiprintf_r+0x258>)
d00416cc:	a904      	add	r1, sp, #16
d00416ce:	4630      	mov	r0, r6
d00416d0:	f000 f880 	bl	d00417d4 <_printf_i>
d00416d4:	e7e4      	b.n	d00416a0 <_vfiprintf_r+0x208>
d00416d6:	bf00      	nop
d00416d8:	d0041ccc 	.word	0xd0041ccc
d00416dc:	d0041cec 	.word	0xd0041cec
d00416e0:	d0041cac 	.word	0xd0041cac
d00416e4:	d0041d0c 	.word	0xd0041d0c
d00416e8:	d0041d16 	.word	0xd0041d16
d00416ec:	00000000 	.word	0x00000000
d00416f0:	d0041473 	.word	0xd0041473
d00416f4:	d0041d12 	.word	0xd0041d12

d00416f8 <_printf_common>:
d00416f8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00416fc:	4616      	mov	r6, r2
d00416fe:	4699      	mov	r9, r3
d0041700:	688a      	ldr	r2, [r1, #8]
d0041702:	690b      	ldr	r3, [r1, #16]
d0041704:	f8dd 8020 	ldr.w	r8, [sp, #32]
d0041708:	4293      	cmp	r3, r2
d004170a:	bfb8      	it	lt
d004170c:	4613      	movlt	r3, r2
d004170e:	6033      	str	r3, [r6, #0]
d0041710:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d0041714:	4607      	mov	r7, r0
d0041716:	460c      	mov	r4, r1
d0041718:	b10a      	cbz	r2, d004171e <_printf_common+0x26>
d004171a:	3301      	adds	r3, #1
d004171c:	6033      	str	r3, [r6, #0]
d004171e:	6823      	ldr	r3, [r4, #0]
d0041720:	0699      	lsls	r1, r3, #26
d0041722:	bf42      	ittt	mi
d0041724:	6833      	ldrmi	r3, [r6, #0]
d0041726:	3302      	addmi	r3, #2
d0041728:	6033      	strmi	r3, [r6, #0]
d004172a:	6825      	ldr	r5, [r4, #0]
d004172c:	f015 0506 	ands.w	r5, r5, #6
d0041730:	d106      	bne.n	d0041740 <_printf_common+0x48>
d0041732:	f104 0a19 	add.w	sl, r4, #25
d0041736:	68e3      	ldr	r3, [r4, #12]
d0041738:	6832      	ldr	r2, [r6, #0]
d004173a:	1a9b      	subs	r3, r3, r2
d004173c:	42ab      	cmp	r3, r5
d004173e:	dc26      	bgt.n	d004178e <_printf_common+0x96>
d0041740:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0041744:	1e13      	subs	r3, r2, #0
d0041746:	6822      	ldr	r2, [r4, #0]
d0041748:	bf18      	it	ne
d004174a:	2301      	movne	r3, #1
d004174c:	0692      	lsls	r2, r2, #26
d004174e:	d42b      	bmi.n	d00417a8 <_printf_common+0xb0>
d0041750:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0041754:	4649      	mov	r1, r9
d0041756:	4638      	mov	r0, r7
d0041758:	47c0      	blx	r8
d004175a:	3001      	adds	r0, #1
d004175c:	d01e      	beq.n	d004179c <_printf_common+0xa4>
d004175e:	6823      	ldr	r3, [r4, #0]
d0041760:	68e5      	ldr	r5, [r4, #12]
d0041762:	6832      	ldr	r2, [r6, #0]
d0041764:	f003 0306 	and.w	r3, r3, #6
d0041768:	2b04      	cmp	r3, #4
d004176a:	bf08      	it	eq
d004176c:	1aad      	subeq	r5, r5, r2
d004176e:	68a3      	ldr	r3, [r4, #8]
d0041770:	6922      	ldr	r2, [r4, #16]
d0041772:	bf0c      	ite	eq
d0041774:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d0041778:	2500      	movne	r5, #0
d004177a:	4293      	cmp	r3, r2
d004177c:	bfc4      	itt	gt
d004177e:	1a9b      	subgt	r3, r3, r2
d0041780:	18ed      	addgt	r5, r5, r3
d0041782:	2600      	movs	r6, #0
d0041784:	341a      	adds	r4, #26
d0041786:	42b5      	cmp	r5, r6
d0041788:	d11a      	bne.n	d00417c0 <_printf_common+0xc8>
d004178a:	2000      	movs	r0, #0
d004178c:	e008      	b.n	d00417a0 <_printf_common+0xa8>
d004178e:	2301      	movs	r3, #1
d0041790:	4652      	mov	r2, sl
d0041792:	4649      	mov	r1, r9
d0041794:	4638      	mov	r0, r7
d0041796:	47c0      	blx	r8
d0041798:	3001      	adds	r0, #1
d004179a:	d103      	bne.n	d00417a4 <_printf_common+0xac>
d004179c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00417a0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00417a4:	3501      	adds	r5, #1
d00417a6:	e7c6      	b.n	d0041736 <_printf_common+0x3e>
d00417a8:	18e1      	adds	r1, r4, r3
d00417aa:	1c5a      	adds	r2, r3, #1
d00417ac:	2030      	movs	r0, #48	; 0x30
d00417ae:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d00417b2:	4422      	add	r2, r4
d00417b4:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d00417b8:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d00417bc:	3302      	adds	r3, #2
d00417be:	e7c7      	b.n	d0041750 <_printf_common+0x58>
d00417c0:	2301      	movs	r3, #1
d00417c2:	4622      	mov	r2, r4
d00417c4:	4649      	mov	r1, r9
d00417c6:	4638      	mov	r0, r7
d00417c8:	47c0      	blx	r8
d00417ca:	3001      	adds	r0, #1
d00417cc:	d0e6      	beq.n	d004179c <_printf_common+0xa4>
d00417ce:	3601      	adds	r6, #1
d00417d0:	e7d9      	b.n	d0041786 <_printf_common+0x8e>
	...

d00417d4 <_printf_i>:
d00417d4:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d00417d8:	460c      	mov	r4, r1
d00417da:	4691      	mov	r9, r2
d00417dc:	7e27      	ldrb	r7, [r4, #24]
d00417de:	990c      	ldr	r1, [sp, #48]	; 0x30
d00417e0:	2f78      	cmp	r7, #120	; 0x78
d00417e2:	4680      	mov	r8, r0
d00417e4:	469a      	mov	sl, r3
d00417e6:	f104 0243 	add.w	r2, r4, #67	; 0x43
d00417ea:	d807      	bhi.n	d00417fc <_printf_i+0x28>
d00417ec:	2f62      	cmp	r7, #98	; 0x62
d00417ee:	d80a      	bhi.n	d0041806 <_printf_i+0x32>
d00417f0:	2f00      	cmp	r7, #0
d00417f2:	f000 80d8 	beq.w	d00419a6 <_printf_i+0x1d2>
d00417f6:	2f58      	cmp	r7, #88	; 0x58
d00417f8:	f000 80a3 	beq.w	d0041942 <_printf_i+0x16e>
d00417fc:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0041800:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d0041804:	e03a      	b.n	d004187c <_printf_i+0xa8>
d0041806:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d004180a:	2b15      	cmp	r3, #21
d004180c:	d8f6      	bhi.n	d00417fc <_printf_i+0x28>
d004180e:	a001      	add	r0, pc, #4	; (adr r0, d0041814 <_printf_i+0x40>)
d0041810:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d0041814:	d004186d 	.word	0xd004186d
d0041818:	d0041881 	.word	0xd0041881
d004181c:	d00417fd 	.word	0xd00417fd
d0041820:	d00417fd 	.word	0xd00417fd
d0041824:	d00417fd 	.word	0xd00417fd
d0041828:	d00417fd 	.word	0xd00417fd
d004182c:	d0041881 	.word	0xd0041881
d0041830:	d00417fd 	.word	0xd00417fd
d0041834:	d00417fd 	.word	0xd00417fd
d0041838:	d00417fd 	.word	0xd00417fd
d004183c:	d00417fd 	.word	0xd00417fd
d0041840:	d004198d 	.word	0xd004198d
d0041844:	d00418b1 	.word	0xd00418b1
d0041848:	d004196f 	.word	0xd004196f
d004184c:	d00417fd 	.word	0xd00417fd
d0041850:	d00417fd 	.word	0xd00417fd
d0041854:	d00419af 	.word	0xd00419af
d0041858:	d00417fd 	.word	0xd00417fd
d004185c:	d00418b1 	.word	0xd00418b1
d0041860:	d00417fd 	.word	0xd00417fd
d0041864:	d00417fd 	.word	0xd00417fd
d0041868:	d0041977 	.word	0xd0041977
d004186c:	680b      	ldr	r3, [r1, #0]
d004186e:	1d1a      	adds	r2, r3, #4
d0041870:	681b      	ldr	r3, [r3, #0]
d0041872:	600a      	str	r2, [r1, #0]
d0041874:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0041878:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d004187c:	2301      	movs	r3, #1
d004187e:	e0a3      	b.n	d00419c8 <_printf_i+0x1f4>
d0041880:	6825      	ldr	r5, [r4, #0]
d0041882:	6808      	ldr	r0, [r1, #0]
d0041884:	062e      	lsls	r6, r5, #24
d0041886:	f100 0304 	add.w	r3, r0, #4
d004188a:	d50a      	bpl.n	d00418a2 <_printf_i+0xce>
d004188c:	6805      	ldr	r5, [r0, #0]
d004188e:	600b      	str	r3, [r1, #0]
d0041890:	2d00      	cmp	r5, #0
d0041892:	da03      	bge.n	d004189c <_printf_i+0xc8>
d0041894:	232d      	movs	r3, #45	; 0x2d
d0041896:	426d      	negs	r5, r5
d0041898:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d004189c:	485e      	ldr	r0, [pc, #376]	; (d0041a18 <_printf_i+0x244>)
d004189e:	230a      	movs	r3, #10
d00418a0:	e019      	b.n	d00418d6 <_printf_i+0x102>
d00418a2:	f015 0f40 	tst.w	r5, #64	; 0x40
d00418a6:	6805      	ldr	r5, [r0, #0]
d00418a8:	600b      	str	r3, [r1, #0]
d00418aa:	bf18      	it	ne
d00418ac:	b22d      	sxthne	r5, r5
d00418ae:	e7ef      	b.n	d0041890 <_printf_i+0xbc>
d00418b0:	680b      	ldr	r3, [r1, #0]
d00418b2:	6825      	ldr	r5, [r4, #0]
d00418b4:	1d18      	adds	r0, r3, #4
d00418b6:	6008      	str	r0, [r1, #0]
d00418b8:	0628      	lsls	r0, r5, #24
d00418ba:	d501      	bpl.n	d00418c0 <_printf_i+0xec>
d00418bc:	681d      	ldr	r5, [r3, #0]
d00418be:	e002      	b.n	d00418c6 <_printf_i+0xf2>
d00418c0:	0669      	lsls	r1, r5, #25
d00418c2:	d5fb      	bpl.n	d00418bc <_printf_i+0xe8>
d00418c4:	881d      	ldrh	r5, [r3, #0]
d00418c6:	4854      	ldr	r0, [pc, #336]	; (d0041a18 <_printf_i+0x244>)
d00418c8:	2f6f      	cmp	r7, #111	; 0x6f
d00418ca:	bf0c      	ite	eq
d00418cc:	2308      	moveq	r3, #8
d00418ce:	230a      	movne	r3, #10
d00418d0:	2100      	movs	r1, #0
d00418d2:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d00418d6:	6866      	ldr	r6, [r4, #4]
d00418d8:	60a6      	str	r6, [r4, #8]
d00418da:	2e00      	cmp	r6, #0
d00418dc:	bfa2      	ittt	ge
d00418de:	6821      	ldrge	r1, [r4, #0]
d00418e0:	f021 0104 	bicge.w	r1, r1, #4
d00418e4:	6021      	strge	r1, [r4, #0]
d00418e6:	b90d      	cbnz	r5, d00418ec <_printf_i+0x118>
d00418e8:	2e00      	cmp	r6, #0
d00418ea:	d04d      	beq.n	d0041988 <_printf_i+0x1b4>
d00418ec:	4616      	mov	r6, r2
d00418ee:	fbb5 f1f3 	udiv	r1, r5, r3
d00418f2:	fb03 5711 	mls	r7, r3, r1, r5
d00418f6:	5dc7      	ldrb	r7, [r0, r7]
d00418f8:	f806 7d01 	strb.w	r7, [r6, #-1]!
d00418fc:	462f      	mov	r7, r5
d00418fe:	42bb      	cmp	r3, r7
d0041900:	460d      	mov	r5, r1
d0041902:	d9f4      	bls.n	d00418ee <_printf_i+0x11a>
d0041904:	2b08      	cmp	r3, #8
d0041906:	d10b      	bne.n	d0041920 <_printf_i+0x14c>
d0041908:	6823      	ldr	r3, [r4, #0]
d004190a:	07df      	lsls	r7, r3, #31
d004190c:	d508      	bpl.n	d0041920 <_printf_i+0x14c>
d004190e:	6923      	ldr	r3, [r4, #16]
d0041910:	6861      	ldr	r1, [r4, #4]
d0041912:	4299      	cmp	r1, r3
d0041914:	bfde      	ittt	le
d0041916:	2330      	movle	r3, #48	; 0x30
d0041918:	f806 3c01 	strble.w	r3, [r6, #-1]
d004191c:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d0041920:	1b92      	subs	r2, r2, r6
d0041922:	6122      	str	r2, [r4, #16]
d0041924:	f8cd a000 	str.w	sl, [sp]
d0041928:	464b      	mov	r3, r9
d004192a:	aa03      	add	r2, sp, #12
d004192c:	4621      	mov	r1, r4
d004192e:	4640      	mov	r0, r8
d0041930:	f7ff fee2 	bl	d00416f8 <_printf_common>
d0041934:	3001      	adds	r0, #1
d0041936:	d14c      	bne.n	d00419d2 <_printf_i+0x1fe>
d0041938:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004193c:	b004      	add	sp, #16
d004193e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0041942:	4835      	ldr	r0, [pc, #212]	; (d0041a18 <_printf_i+0x244>)
d0041944:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d0041948:	6823      	ldr	r3, [r4, #0]
d004194a:	680e      	ldr	r6, [r1, #0]
d004194c:	061f      	lsls	r7, r3, #24
d004194e:	f856 5b04 	ldr.w	r5, [r6], #4
d0041952:	600e      	str	r6, [r1, #0]
d0041954:	d514      	bpl.n	d0041980 <_printf_i+0x1ac>
d0041956:	07d9      	lsls	r1, r3, #31
d0041958:	bf44      	itt	mi
d004195a:	f043 0320 	orrmi.w	r3, r3, #32
d004195e:	6023      	strmi	r3, [r4, #0]
d0041960:	b91d      	cbnz	r5, d004196a <_printf_i+0x196>
d0041962:	6823      	ldr	r3, [r4, #0]
d0041964:	f023 0320 	bic.w	r3, r3, #32
d0041968:	6023      	str	r3, [r4, #0]
d004196a:	2310      	movs	r3, #16
d004196c:	e7b0      	b.n	d00418d0 <_printf_i+0xfc>
d004196e:	6823      	ldr	r3, [r4, #0]
d0041970:	f043 0320 	orr.w	r3, r3, #32
d0041974:	6023      	str	r3, [r4, #0]
d0041976:	2378      	movs	r3, #120	; 0x78
d0041978:	4828      	ldr	r0, [pc, #160]	; (d0041a1c <_printf_i+0x248>)
d004197a:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d004197e:	e7e3      	b.n	d0041948 <_printf_i+0x174>
d0041980:	065e      	lsls	r6, r3, #25
d0041982:	bf48      	it	mi
d0041984:	b2ad      	uxthmi	r5, r5
d0041986:	e7e6      	b.n	d0041956 <_printf_i+0x182>
d0041988:	4616      	mov	r6, r2
d004198a:	e7bb      	b.n	d0041904 <_printf_i+0x130>
d004198c:	680b      	ldr	r3, [r1, #0]
d004198e:	6826      	ldr	r6, [r4, #0]
d0041990:	6960      	ldr	r0, [r4, #20]
d0041992:	1d1d      	adds	r5, r3, #4
d0041994:	600d      	str	r5, [r1, #0]
d0041996:	0635      	lsls	r5, r6, #24
d0041998:	681b      	ldr	r3, [r3, #0]
d004199a:	d501      	bpl.n	d00419a0 <_printf_i+0x1cc>
d004199c:	6018      	str	r0, [r3, #0]
d004199e:	e002      	b.n	d00419a6 <_printf_i+0x1d2>
d00419a0:	0671      	lsls	r1, r6, #25
d00419a2:	d5fb      	bpl.n	d004199c <_printf_i+0x1c8>
d00419a4:	8018      	strh	r0, [r3, #0]
d00419a6:	2300      	movs	r3, #0
d00419a8:	6123      	str	r3, [r4, #16]
d00419aa:	4616      	mov	r6, r2
d00419ac:	e7ba      	b.n	d0041924 <_printf_i+0x150>
d00419ae:	680b      	ldr	r3, [r1, #0]
d00419b0:	1d1a      	adds	r2, r3, #4
d00419b2:	600a      	str	r2, [r1, #0]
d00419b4:	681e      	ldr	r6, [r3, #0]
d00419b6:	6862      	ldr	r2, [r4, #4]
d00419b8:	2100      	movs	r1, #0
d00419ba:	4630      	mov	r0, r6
d00419bc:	f000 f8b8 	bl	d0041b30 <memchr>
d00419c0:	b108      	cbz	r0, d00419c6 <_printf_i+0x1f2>
d00419c2:	1b80      	subs	r0, r0, r6
d00419c4:	6060      	str	r0, [r4, #4]
d00419c6:	6863      	ldr	r3, [r4, #4]
d00419c8:	6123      	str	r3, [r4, #16]
d00419ca:	2300      	movs	r3, #0
d00419cc:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d00419d0:	e7a8      	b.n	d0041924 <_printf_i+0x150>
d00419d2:	6923      	ldr	r3, [r4, #16]
d00419d4:	4632      	mov	r2, r6
d00419d6:	4649      	mov	r1, r9
d00419d8:	4640      	mov	r0, r8
d00419da:	47d0      	blx	sl
d00419dc:	3001      	adds	r0, #1
d00419de:	d0ab      	beq.n	d0041938 <_printf_i+0x164>
d00419e0:	6823      	ldr	r3, [r4, #0]
d00419e2:	079b      	lsls	r3, r3, #30
d00419e4:	d413      	bmi.n	d0041a0e <_printf_i+0x23a>
d00419e6:	68e0      	ldr	r0, [r4, #12]
d00419e8:	9b03      	ldr	r3, [sp, #12]
d00419ea:	4298      	cmp	r0, r3
d00419ec:	bfb8      	it	lt
d00419ee:	4618      	movlt	r0, r3
d00419f0:	e7a4      	b.n	d004193c <_printf_i+0x168>
d00419f2:	2301      	movs	r3, #1
d00419f4:	4632      	mov	r2, r6
d00419f6:	4649      	mov	r1, r9
d00419f8:	4640      	mov	r0, r8
d00419fa:	47d0      	blx	sl
d00419fc:	3001      	adds	r0, #1
d00419fe:	d09b      	beq.n	d0041938 <_printf_i+0x164>
d0041a00:	3501      	adds	r5, #1
d0041a02:	68e3      	ldr	r3, [r4, #12]
d0041a04:	9903      	ldr	r1, [sp, #12]
d0041a06:	1a5b      	subs	r3, r3, r1
d0041a08:	42ab      	cmp	r3, r5
d0041a0a:	dcf2      	bgt.n	d00419f2 <_printf_i+0x21e>
d0041a0c:	e7eb      	b.n	d00419e6 <_printf_i+0x212>
d0041a0e:	2500      	movs	r5, #0
d0041a10:	f104 0619 	add.w	r6, r4, #25
d0041a14:	e7f5      	b.n	d0041a02 <_printf_i+0x22e>
d0041a16:	bf00      	nop
d0041a18:	d0041d1d 	.word	0xd0041d1d
d0041a1c:	d0041d2e 	.word	0xd0041d2e

d0041a20 <__sread>:
d0041a20:	b510      	push	{r4, lr}
d0041a22:	460c      	mov	r4, r1
d0041a24:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0041a28:	f000 f8d2 	bl	d0041bd0 <_read_r>
d0041a2c:	2800      	cmp	r0, #0
d0041a2e:	bfab      	itete	ge
d0041a30:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0041a32:	89a3      	ldrhlt	r3, [r4, #12]
d0041a34:	181b      	addge	r3, r3, r0
d0041a36:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d0041a3a:	bfac      	ite	ge
d0041a3c:	6563      	strge	r3, [r4, #84]	; 0x54
d0041a3e:	81a3      	strhlt	r3, [r4, #12]
d0041a40:	bd10      	pop	{r4, pc}

d0041a42 <__swrite>:
d0041a42:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0041a46:	461f      	mov	r7, r3
d0041a48:	898b      	ldrh	r3, [r1, #12]
d0041a4a:	05db      	lsls	r3, r3, #23
d0041a4c:	4605      	mov	r5, r0
d0041a4e:	460c      	mov	r4, r1
d0041a50:	4616      	mov	r6, r2
d0041a52:	d505      	bpl.n	d0041a60 <__swrite+0x1e>
d0041a54:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0041a58:	2302      	movs	r3, #2
d0041a5a:	2200      	movs	r2, #0
d0041a5c:	f000 f856 	bl	d0041b0c <_lseek_r>
d0041a60:	89a3      	ldrh	r3, [r4, #12]
d0041a62:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0041a66:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0041a6a:	81a3      	strh	r3, [r4, #12]
d0041a6c:	4632      	mov	r2, r6
d0041a6e:	463b      	mov	r3, r7
d0041a70:	4628      	mov	r0, r5
d0041a72:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0041a76:	f7fe bb49 	b.w	d004010c <_write_r>

d0041a7a <__sseek>:
d0041a7a:	b510      	push	{r4, lr}
d0041a7c:	460c      	mov	r4, r1
d0041a7e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0041a82:	f000 f843 	bl	d0041b0c <_lseek_r>
d0041a86:	1c43      	adds	r3, r0, #1
d0041a88:	89a3      	ldrh	r3, [r4, #12]
d0041a8a:	bf15      	itete	ne
d0041a8c:	6560      	strne	r0, [r4, #84]	; 0x54
d0041a8e:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0041a92:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d0041a96:	81a3      	strheq	r3, [r4, #12]
d0041a98:	bf18      	it	ne
d0041a9a:	81a3      	strhne	r3, [r4, #12]
d0041a9c:	bd10      	pop	{r4, pc}

d0041a9e <__sclose>:
d0041a9e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0041aa2:	f000 b801 	b.w	d0041aa8 <_close_r>
	...

d0041aa8 <_close_r>:
d0041aa8:	b538      	push	{r3, r4, r5, lr}
d0041aaa:	4d06      	ldr	r5, [pc, #24]	; (d0041ac4 <_close_r+0x1c>)
d0041aac:	2300      	movs	r3, #0
d0041aae:	4604      	mov	r4, r0
d0041ab0:	4608      	mov	r0, r1
d0041ab2:	602b      	str	r3, [r5, #0]
d0041ab4:	f7fe fb64 	bl	d0040180 <_close>
d0041ab8:	1c43      	adds	r3, r0, #1
d0041aba:	d102      	bne.n	d0041ac2 <_close_r+0x1a>
d0041abc:	682b      	ldr	r3, [r5, #0]
d0041abe:	b103      	cbz	r3, d0041ac2 <_close_r+0x1a>
d0041ac0:	6023      	str	r3, [r4, #0]
d0041ac2:	bd38      	pop	{r3, r4, r5, pc}
d0041ac4:	d0042b08 	.word	0xd0042b08

d0041ac8 <_fstat_r>:
d0041ac8:	b538      	push	{r3, r4, r5, lr}
d0041aca:	4d07      	ldr	r5, [pc, #28]	; (d0041ae8 <_fstat_r+0x20>)
d0041acc:	2300      	movs	r3, #0
d0041ace:	4604      	mov	r4, r0
d0041ad0:	4608      	mov	r0, r1
d0041ad2:	4611      	mov	r1, r2
d0041ad4:	602b      	str	r3, [r5, #0]
d0041ad6:	f7fe fb57 	bl	d0040188 <_fstat>
d0041ada:	1c43      	adds	r3, r0, #1
d0041adc:	d102      	bne.n	d0041ae4 <_fstat_r+0x1c>
d0041ade:	682b      	ldr	r3, [r5, #0]
d0041ae0:	b103      	cbz	r3, d0041ae4 <_fstat_r+0x1c>
d0041ae2:	6023      	str	r3, [r4, #0]
d0041ae4:	bd38      	pop	{r3, r4, r5, pc}
d0041ae6:	bf00      	nop
d0041ae8:	d0042b08 	.word	0xd0042b08

d0041aec <_isatty_r>:
d0041aec:	b538      	push	{r3, r4, r5, lr}
d0041aee:	4d06      	ldr	r5, [pc, #24]	; (d0041b08 <_isatty_r+0x1c>)
d0041af0:	2300      	movs	r3, #0
d0041af2:	4604      	mov	r4, r0
d0041af4:	4608      	mov	r0, r1
d0041af6:	602b      	str	r3, [r5, #0]
d0041af8:	f7fe fb6e 	bl	d00401d8 <_isatty>
d0041afc:	1c43      	adds	r3, r0, #1
d0041afe:	d102      	bne.n	d0041b06 <_isatty_r+0x1a>
d0041b00:	682b      	ldr	r3, [r5, #0]
d0041b02:	b103      	cbz	r3, d0041b06 <_isatty_r+0x1a>
d0041b04:	6023      	str	r3, [r4, #0]
d0041b06:	bd38      	pop	{r3, r4, r5, pc}
d0041b08:	d0042b08 	.word	0xd0042b08

d0041b0c <_lseek_r>:
d0041b0c:	b538      	push	{r3, r4, r5, lr}
d0041b0e:	4d07      	ldr	r5, [pc, #28]	; (d0041b2c <_lseek_r+0x20>)
d0041b10:	4604      	mov	r4, r0
d0041b12:	4608      	mov	r0, r1
d0041b14:	4611      	mov	r1, r2
d0041b16:	2200      	movs	r2, #0
d0041b18:	602a      	str	r2, [r5, #0]
d0041b1a:	461a      	mov	r2, r3
d0041b1c:	f7fe fb3a 	bl	d0040194 <_lseek>
d0041b20:	1c43      	adds	r3, r0, #1
d0041b22:	d102      	bne.n	d0041b2a <_lseek_r+0x1e>
d0041b24:	682b      	ldr	r3, [r5, #0]
d0041b26:	b103      	cbz	r3, d0041b2a <_lseek_r+0x1e>
d0041b28:	6023      	str	r3, [r4, #0]
d0041b2a:	bd38      	pop	{r3, r4, r5, pc}
d0041b2c:	d0042b08 	.word	0xd0042b08

d0041b30 <memchr>:
d0041b30:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0041b34:	2a10      	cmp	r2, #16
d0041b36:	db2b      	blt.n	d0041b90 <memchr+0x60>
d0041b38:	f010 0f07 	tst.w	r0, #7
d0041b3c:	d008      	beq.n	d0041b50 <memchr+0x20>
d0041b3e:	f810 3b01 	ldrb.w	r3, [r0], #1
d0041b42:	3a01      	subs	r2, #1
d0041b44:	428b      	cmp	r3, r1
d0041b46:	d02d      	beq.n	d0041ba4 <memchr+0x74>
d0041b48:	f010 0f07 	tst.w	r0, #7
d0041b4c:	b342      	cbz	r2, d0041ba0 <memchr+0x70>
d0041b4e:	d1f6      	bne.n	d0041b3e <memchr+0xe>
d0041b50:	b4f0      	push	{r4, r5, r6, r7}
d0041b52:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0041b56:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d0041b5a:	f022 0407 	bic.w	r4, r2, #7
d0041b5e:	f07f 0700 	mvns.w	r7, #0
d0041b62:	2300      	movs	r3, #0
d0041b64:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0041b68:	3c08      	subs	r4, #8
d0041b6a:	ea85 0501 	eor.w	r5, r5, r1
d0041b6e:	ea86 0601 	eor.w	r6, r6, r1
d0041b72:	fa85 f547 	uadd8	r5, r5, r7
d0041b76:	faa3 f587 	sel	r5, r3, r7
d0041b7a:	fa86 f647 	uadd8	r6, r6, r7
d0041b7e:	faa5 f687 	sel	r6, r5, r7
d0041b82:	b98e      	cbnz	r6, d0041ba8 <memchr+0x78>
d0041b84:	d1ee      	bne.n	d0041b64 <memchr+0x34>
d0041b86:	bcf0      	pop	{r4, r5, r6, r7}
d0041b88:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0041b8c:	f002 0207 	and.w	r2, r2, #7
d0041b90:	b132      	cbz	r2, d0041ba0 <memchr+0x70>
d0041b92:	f810 3b01 	ldrb.w	r3, [r0], #1
d0041b96:	3a01      	subs	r2, #1
d0041b98:	ea83 0301 	eor.w	r3, r3, r1
d0041b9c:	b113      	cbz	r3, d0041ba4 <memchr+0x74>
d0041b9e:	d1f8      	bne.n	d0041b92 <memchr+0x62>
d0041ba0:	2000      	movs	r0, #0
d0041ba2:	4770      	bx	lr
d0041ba4:	3801      	subs	r0, #1
d0041ba6:	4770      	bx	lr
d0041ba8:	2d00      	cmp	r5, #0
d0041baa:	bf06      	itte	eq
d0041bac:	4635      	moveq	r5, r6
d0041bae:	3803      	subeq	r0, #3
d0041bb0:	3807      	subne	r0, #7
d0041bb2:	f015 0f01 	tst.w	r5, #1
d0041bb6:	d107      	bne.n	d0041bc8 <memchr+0x98>
d0041bb8:	3001      	adds	r0, #1
d0041bba:	f415 7f80 	tst.w	r5, #256	; 0x100
d0041bbe:	bf02      	ittt	eq
d0041bc0:	3001      	addeq	r0, #1
d0041bc2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0041bc6:	3001      	addeq	r0, #1
d0041bc8:	bcf0      	pop	{r4, r5, r6, r7}
d0041bca:	3801      	subs	r0, #1
d0041bcc:	4770      	bx	lr
d0041bce:	bf00      	nop

d0041bd0 <_read_r>:
d0041bd0:	b538      	push	{r3, r4, r5, lr}
d0041bd2:	4d07      	ldr	r5, [pc, #28]	; (d0041bf0 <_read_r+0x20>)
d0041bd4:	4604      	mov	r4, r0
d0041bd6:	4608      	mov	r0, r1
d0041bd8:	4611      	mov	r1, r2
d0041bda:	2200      	movs	r2, #0
d0041bdc:	602a      	str	r2, [r5, #0]
d0041bde:	461a      	mov	r2, r3
d0041be0:	f7fe fac4 	bl	d004016c <_read>
d0041be4:	1c43      	adds	r3, r0, #1
d0041be6:	d102      	bne.n	d0041bee <_read_r+0x1e>
d0041be8:	682b      	ldr	r3, [r5, #0]
d0041bea:	b103      	cbz	r3, d0041bee <_read_r+0x1e>
d0041bec:	6023      	str	r3, [r4, #0]
d0041bee:	bd38      	pop	{r3, r4, r5, pc}
d0041bf0:	d0042b08 	.word	0xd0042b08

d0041bf4 <_global_impure_ptr>:
d0041bf4:	d0041d4c 46464952 00000000 45564157     L...RIFF....WAVE
d0041c04:	00000000 20444f47 20535449 454b494c     ....GOD ITS LIKE
d0041c14:	54415720 4e494843 20412047 4c4c5542      WATCHING A BULL
d0041c24:	47494620 21215448 00000000 2d2d2d2d      FIGHT!!....----
d0041c34:	2d2d2d2d 2d2d2d2d 2d2d2d2d 2d2d2d2d     ----------------
d0041c44:	2d2d2d2d 2d2d2d2d 2d2d2d2d 2d2d2d2d     ----------------
d0041c54:	00000000 70617247 73636968 49504120     ....Graphics API
d0041c64:	72655620 6e6f6973 7525203a 0000000a      Version: %u....
d0041c74:	2057454e 20495041 74737973 00006d65     NEW API system..
d0041c84:	72747865 66696c61 61772e65 00000076     extralife.wav...
d0041c94:	6576656c 6d2e316c 0000646f 31747361     level1.mod..ast1
d0041ca4:	6270702e 00000000                       .ppb....

d0041cac <__sf_fake_stderr>:
	...

d0041ccc <__sf_fake_stdin>:
	...

d0041cec <__sf_fake_stdout>:
	...
d0041d0c:	2b302d23 6c680020 6665004c 47464567     #-0+ .hlL.efgEFG
d0041d1c:	32313000 36353433 41393837 45444342     .0123456789ABCDE
d0041d2c:	31300046 35343332 39383736 64636261     F.0123456789abcd
d0041d3c:	                                         ef.

Disassembly of section .init:

d0041d40 <_init>:
d0041d40:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0041d42:	bf00      	nop

Disassembly of section .fini:

d0041d44 <_fini>:
d0041d44:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0041d46:	bf00      	nop
