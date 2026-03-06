
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
d004001e:	f002 fa2b 	bl	d0042478 <setbuf>
d0040022:	6833      	ldr	r3, [r6, #0]
d0040024:	2100      	movs	r1, #0
d0040026:	68d8      	ldr	r0, [r3, #12]
d0040028:	f002 fa26 	bl	d0042478 <setbuf>
d004002c:	4629      	mov	r1, r5
d004002e:	4620      	mov	r0, r4
d0040030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0040034:	f001 be30 	b.w	d0041c98 <main>
d0040038:	d00435e0 	.word	0xd00435e0

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
d0040100:	d0047010 	.word	0xd0047010
d0040104:	d0600000 	.word	0xd0600000
d0040108:	d0043e9c 	.word	0xd0043e9c

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
d0040154:	f002 f8ca 	bl	d00422ec <__errno>
d0040158:	2209      	movs	r2, #9
d004015a:	4603      	mov	r3, r0
d004015c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0040160:	601a      	str	r2, [r3, #0]
d0040162:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0040164:	d0043e84 	.word	0xd0043e84
d0040168:	2001f000 	.word	0x2001f000

d004016c <_read>:
d004016c:	b508      	push	{r3, lr}
d004016e:	f002 f8bd 	bl	d00422ec <__errno>
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
d00401ba:	f002 f897 	bl	d00422ec <__errno>
d00401be:	220c      	movs	r2, #12
d00401c0:	4603      	mov	r3, r0
d00401c2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00401c6:	601a      	str	r2, [r3, #0]
d00401c8:	bd10      	pop	{r4, pc}
d00401ca:	bf00      	nop
d00401cc:	d0043e80 	.word	0xd0043e80
d00401d0:	d0047010 	.word	0xd0047010
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
d0040228:	f002 f86e 	bl	d0042308 <memcmp>
d004022c:	b950      	cbnz	r0, d0040244 <LoadSFX+0x6c>
d004022e:	2204      	movs	r2, #4
d0040230:	492c      	ldr	r1, [pc, #176]	; (d00402e4 <LoadSFX+0x10c>)
d0040232:	a805      	add	r0, sp, #20
d0040234:	f002 f868 	bl	d0042308 <memcmp>
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
d004026c:	f002 f844 	bl	d00422f8 <malloc>
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
d00402e0:	d0043274 	.word	0xd0043274
d00402e4:	d004327c 	.word	0xd004327c

d00402e8 <loadSounds>:
d00402e8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00402ec:	4fb2      	ldr	r7, [pc, #712]	; (d00405b8 <loadSounds+0x2d0>)
d00402ee:	4cb3      	ldr	r4, [pc, #716]	; (d00405bc <loadSounds+0x2d4>)
d00402f0:	4639      	mov	r1, r7
d00402f2:	48b3      	ldr	r0, [pc, #716]	; (d00405c0 <loadSounds+0x2d8>)
d00402f4:	f7ff ff70 	bl	d00401d8 <LoadSFX>
d00402f8:	7c26      	ldrb	r6, [r4, #16]
d00402fa:	7c65      	ldrb	r5, [r4, #17]
d00402fc:	2300      	movs	r3, #0
d00402fe:	f894 e012 	ldrb.w	lr, [r4, #18]
d0040302:	4602      	mov	r2, r0
d0040304:	ea46 2505 	orr.w	r5, r6, r5, lsl #8
d0040308:	f894 c013 	ldrb.w	ip, [r4, #19]
d004030c:	4618      	mov	r0, r3
d004030e:	6839      	ldr	r1, [r7, #0]
d0040310:	ea45 450e 	orr.w	r5, r5, lr, lsl #16
d0040314:	4eab      	ldr	r6, [pc, #684]	; (d00405c4 <loadSounds+0x2dc>)
d0040316:	4fac      	ldr	r7, [pc, #688]	; (d00405c8 <loadSounds+0x2e0>)
d0040318:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d004031c:	f8df 92c0 	ldr.w	r9, [pc, #704]	; d00405e0 <loadSounds+0x2f8>
d0040320:	f8df 82c0 	ldr.w	r8, [pc, #704]	; d00405e4 <loadSounds+0x2fc>
d0040324:	68ad      	ldr	r5, [r5, #8]
d0040326:	68ed      	ldr	r5, [r5, #12]
d0040328:	47a8      	blx	r5
d004032a:	7c23      	ldrb	r3, [r4, #16]
d004032c:	7c62      	ldrb	r2, [r4, #17]
d004032e:	f64a 4144 	movw	r1, #44100	; 0xac44
d0040332:	7ca5      	ldrb	r5, [r4, #18]
d0040334:	2000      	movs	r0, #0
d0040336:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004033a:	7ce2      	ldrb	r2, [r4, #19]
d004033c:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040340:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040344:	689b      	ldr	r3, [r3, #8]
d0040346:	691b      	ldr	r3, [r3, #16]
d0040348:	4798      	blx	r3
d004034a:	7c23      	ldrb	r3, [r4, #16]
d004034c:	7c62      	ldrb	r2, [r4, #17]
d004034e:	2000      	movs	r0, #0
d0040350:	7ca1      	ldrb	r1, [r4, #18]
d0040352:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040356:	7ce2      	ldrb	r2, [r4, #19]
d0040358:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004035c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040360:	689b      	ldr	r3, [r3, #8]
d0040362:	685b      	ldr	r3, [r3, #4]
d0040364:	4798      	blx	r3
d0040366:	7c23      	ldrb	r3, [r4, #16]
d0040368:	7c62      	ldrb	r2, [r4, #17]
d004036a:	21f0      	movs	r1, #240	; 0xf0
d004036c:	7ca0      	ldrb	r0, [r4, #18]
d004036e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040372:	7ce2      	ldrb	r2, [r4, #19]
d0040374:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0040378:	2000      	movs	r0, #0
d004037a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004037e:	689b      	ldr	r3, [r3, #8]
d0040380:	695b      	ldr	r3, [r3, #20]
d0040382:	4798      	blx	r3
d0040384:	7c23      	ldrb	r3, [r4, #16]
d0040386:	7c62      	ldrb	r2, [r4, #17]
d0040388:	2100      	movs	r1, #0
d004038a:	7ca0      	ldrb	r0, [r4, #18]
d004038c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040390:	7ce2      	ldrb	r2, [r4, #19]
d0040392:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0040396:	4608      	mov	r0, r1
d0040398:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004039c:	689b      	ldr	r3, [r3, #8]
d004039e:	699b      	ldr	r3, [r3, #24]
d00403a0:	4798      	blx	r3
d00403a2:	7c23      	ldrb	r3, [r4, #16]
d00403a4:	7c60      	ldrb	r0, [r4, #17]
d00403a6:	f241 1251 	movw	r2, #4433	; 0x1151
d00403aa:	7ca1      	ldrb	r1, [r4, #18]
d00403ac:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d00403b0:	7ce0      	ldrb	r0, [r4, #19]
d00403b2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00403b6:	21c8      	movs	r1, #200	; 0xc8
d00403b8:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d00403bc:	2000      	movs	r0, #0
d00403be:	689b      	ldr	r3, [r3, #8]
d00403c0:	69db      	ldr	r3, [r3, #28]
d00403c2:	4798      	blx	r3
d00403c4:	7c23      	ldrb	r3, [r4, #16]
d00403c6:	7c62      	ldrb	r2, [r4, #17]
d00403c8:	2100      	movs	r1, #0
d00403ca:	7ca0      	ldrb	r0, [r4, #18]
d00403cc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00403d0:	7ce2      	ldrb	r2, [r4, #19]
d00403d2:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00403d6:	4608      	mov	r0, r1
d00403d8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00403dc:	689b      	ldr	r3, [r3, #8]
d00403de:	6a1b      	ldr	r3, [r3, #32]
d00403e0:	4798      	blx	r3
d00403e2:	4631      	mov	r1, r6
d00403e4:	4879      	ldr	r0, [pc, #484]	; (d00405cc <loadSounds+0x2e4>)
d00403e6:	f7ff fef7 	bl	d00401d8 <LoadSFX>
d00403ea:	7c25      	ldrb	r5, [r4, #16]
d00403ec:	f894 c011 	ldrb.w	ip, [r4, #17]
d00403f0:	4602      	mov	r2, r0
d00403f2:	7ca0      	ldrb	r0, [r4, #18]
d00403f4:	2300      	movs	r3, #0
d00403f6:	ea45 250c 	orr.w	r5, r5, ip, lsl #8
d00403fa:	6831      	ldr	r1, [r6, #0]
d00403fc:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d0040400:	7ce0      	ldrb	r0, [r4, #19]
d0040402:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d0040406:	2001      	movs	r0, #1
d0040408:	68ad      	ldr	r5, [r5, #8]
d004040a:	68ed      	ldr	r5, [r5, #12]
d004040c:	47a8      	blx	r5
d004040e:	7c23      	ldrb	r3, [r4, #16]
d0040410:	7c62      	ldrb	r2, [r4, #17]
d0040412:	f64a 4144 	movw	r1, #44100	; 0xac44
d0040416:	7ca5      	ldrb	r5, [r4, #18]
d0040418:	2001      	movs	r0, #1
d004041a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004041e:	7ce2      	ldrb	r2, [r4, #19]
d0040420:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040424:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040428:	689b      	ldr	r3, [r3, #8]
d004042a:	691b      	ldr	r3, [r3, #16]
d004042c:	4798      	blx	r3
d004042e:	7c23      	ldrb	r3, [r4, #16]
d0040430:	7c62      	ldrb	r2, [r4, #17]
d0040432:	21ff      	movs	r1, #255	; 0xff
d0040434:	7ca5      	ldrb	r5, [r4, #18]
d0040436:	2001      	movs	r0, #1
d0040438:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004043c:	7ce2      	ldrb	r2, [r4, #19]
d004043e:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040442:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040446:	689b      	ldr	r3, [r3, #8]
d0040448:	695b      	ldr	r3, [r3, #20]
d004044a:	4798      	blx	r3
d004044c:	7c23      	ldrb	r3, [r4, #16]
d004044e:	7c62      	ldrb	r2, [r4, #17]
d0040450:	2100      	movs	r1, #0
d0040452:	7ca5      	ldrb	r5, [r4, #18]
d0040454:	2001      	movs	r0, #1
d0040456:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004045a:	7ce2      	ldrb	r2, [r4, #19]
d004045c:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040460:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040464:	689b      	ldr	r3, [r3, #8]
d0040466:	699b      	ldr	r3, [r3, #24]
d0040468:	4798      	blx	r3
d004046a:	7c23      	ldrb	r3, [r4, #16]
d004046c:	7c65      	ldrb	r5, [r4, #17]
d004046e:	f241 1251 	movw	r2, #4433	; 0x1151
d0040472:	7ca0      	ldrb	r0, [r4, #18]
d0040474:	21c8      	movs	r1, #200	; 0xc8
d0040476:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d004047a:	7ce5      	ldrb	r5, [r4, #19]
d004047c:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0040480:	2001      	movs	r0, #1
d0040482:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d0040486:	689b      	ldr	r3, [r3, #8]
d0040488:	69db      	ldr	r3, [r3, #28]
d004048a:	4798      	blx	r3
d004048c:	7c23      	ldrb	r3, [r4, #16]
d004048e:	7c62      	ldrb	r2, [r4, #17]
d0040490:	2100      	movs	r1, #0
d0040492:	7ca5      	ldrb	r5, [r4, #18]
d0040494:	2001      	movs	r0, #1
d0040496:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004049a:	7ce2      	ldrb	r2, [r4, #19]
d004049c:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00404a0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00404a4:	689b      	ldr	r3, [r3, #8]
d00404a6:	6a1b      	ldr	r3, [r3, #32]
d00404a8:	4798      	blx	r3
d00404aa:	4639      	mov	r1, r7
d00404ac:	4848      	ldr	r0, [pc, #288]	; (d00405d0 <loadSounds+0x2e8>)
d00404ae:	f7ff fe93 	bl	d00401d8 <LoadSFX>
d00404b2:	7c26      	ldrb	r6, [r4, #16]
d00404b4:	7c61      	ldrb	r1, [r4, #17]
d00404b6:	4605      	mov	r5, r0
d00404b8:	7ca2      	ldrb	r2, [r4, #18]
d00404ba:	2300      	movs	r3, #0
d00404bc:	ea46 2601 	orr.w	r6, r6, r1, lsl #8
d00404c0:	7ce0      	ldrb	r0, [r4, #19]
d00404c2:	6839      	ldr	r1, [r7, #0]
d00404c4:	ea46 4602 	orr.w	r6, r6, r2, lsl #16
d00404c8:	462a      	mov	r2, r5
d00404ca:	4f42      	ldr	r7, [pc, #264]	; (d00405d4 <loadSounds+0x2ec>)
d00404cc:	ea46 6600 	orr.w	r6, r6, r0, lsl #24
d00404d0:	2002      	movs	r0, #2
d00404d2:	68b6      	ldr	r6, [r6, #8]
d00404d4:	68f6      	ldr	r6, [r6, #12]
d00404d6:	47b0      	blx	r6
d00404d8:	7c23      	ldrb	r3, [r4, #16]
d00404da:	7c62      	ldrb	r2, [r4, #17]
d00404dc:	f64a 4144 	movw	r1, #44100	; 0xac44
d00404e0:	7ca0      	ldrb	r0, [r4, #18]
d00404e2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00404e6:	7ce2      	ldrb	r2, [r4, #19]
d00404e8:	4e3b      	ldr	r6, [pc, #236]	; (d00405d8 <loadSounds+0x2f0>)
d00404ea:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00404ee:	2002      	movs	r0, #2
d00404f0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00404f4:	689b      	ldr	r3, [r3, #8]
d00404f6:	691b      	ldr	r3, [r3, #16]
d00404f8:	4798      	blx	r3
d00404fa:	7c23      	ldrb	r3, [r4, #16]
d00404fc:	7c62      	ldrb	r2, [r4, #17]
d00404fe:	f44f 71be 	mov.w	r1, #380	; 0x17c
d0040502:	2002      	movs	r0, #2
d0040504:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040508:	7ca2      	ldrb	r2, [r4, #18]
d004050a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004050e:	7ce2      	ldrb	r2, [r4, #19]
d0040510:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040514:	689b      	ldr	r3, [r3, #8]
d0040516:	695b      	ldr	r3, [r3, #20]
d0040518:	4798      	blx	r3
d004051a:	7c23      	ldrb	r3, [r4, #16]
d004051c:	7c62      	ldrb	r2, [r4, #17]
d004051e:	2100      	movs	r1, #0
d0040520:	2002      	movs	r0, #2
d0040522:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040526:	7ca2      	ldrb	r2, [r4, #18]
d0040528:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004052c:	7ce2      	ldrb	r2, [r4, #19]
d004052e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040532:	689b      	ldr	r3, [r3, #8]
d0040534:	699b      	ldr	r3, [r3, #24]
d0040536:	4798      	blx	r3
d0040538:	7c21      	ldrb	r1, [r4, #16]
d004053a:	7c63      	ldrb	r3, [r4, #17]
d004053c:	f1a5 022c 	sub.w	r2, r5, #44	; 0x2c
d0040540:	7ca5      	ldrb	r5, [r4, #18]
d0040542:	ea41 2303 	orr.w	r3, r1, r3, lsl #8
d0040546:	7ce0      	ldrb	r0, [r4, #19]
d0040548:	21c8      	movs	r1, #200	; 0xc8
d004054a:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004054e:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d0040552:	2002      	movs	r0, #2
d0040554:	689b      	ldr	r3, [r3, #8]
d0040556:	69db      	ldr	r3, [r3, #28]
d0040558:	4798      	blx	r3
d004055a:	7c23      	ldrb	r3, [r4, #16]
d004055c:	7c62      	ldrb	r2, [r4, #17]
d004055e:	2101      	movs	r1, #1
d0040560:	7ca0      	ldrb	r0, [r4, #18]
d0040562:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040566:	7ce2      	ldrb	r2, [r4, #19]
d0040568:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004056c:	2002      	movs	r0, #2
d004056e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040572:	689b      	ldr	r3, [r3, #8]
d0040574:	6a1b      	ldr	r3, [r3, #32]
d0040576:	4798      	blx	r3
d0040578:	4649      	mov	r1, r9
d004057a:	4818      	ldr	r0, [pc, #96]	; (d00405dc <loadSounds+0x2f4>)
d004057c:	f7ff fe2c 	bl	d00401d8 <LoadSFX>
d0040580:	7c25      	ldrb	r5, [r4, #16]
d0040582:	f894 c011 	ldrb.w	ip, [r4, #17]
d0040586:	4602      	mov	r2, r0
d0040588:	7ca0      	ldrb	r0, [r4, #18]
d004058a:	2300      	movs	r3, #0
d004058c:	ea45 250c 	orr.w	r5, r5, ip, lsl #8
d0040590:	f8d9 1000 	ldr.w	r1, [r9]
d0040594:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d0040598:	7ce0      	ldrb	r0, [r4, #19]
d004059a:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d004059e:	2003      	movs	r0, #3
d00405a0:	68ad      	ldr	r5, [r5, #8]
d00405a2:	68ed      	ldr	r5, [r5, #12]
d00405a4:	47a8      	blx	r5
d00405a6:	7c23      	ldrb	r3, [r4, #16]
d00405a8:	7c62      	ldrb	r2, [r4, #17]
d00405aa:	f646 5160 	movw	r1, #28000	; 0x6d60
d00405ae:	7ca0      	ldrb	r0, [r4, #18]
d00405b0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00405b4:	e018      	b.n	d00405e8 <loadSounds+0x300>
d00405b6:	bf00      	nop
d00405b8:	d0043f00 	.word	0xd0043f00
d00405bc:	2001f000 	.word	0x2001f000
d00405c0:	d00433a4 	.word	0xd00433a4
d00405c4:	d0043ea0 	.word	0xd0043ea0
d00405c8:	d0043ee0 	.word	0xd0043ee0
d00405cc:	d00433b8 	.word	0xd00433b8
d00405d0:	d00433c8 	.word	0xd00433c8
d00405d4:	d0043ec0 	.word	0xd0043ec0
d00405d8:	d0043f20 	.word	0xd0043f20
d00405dc:	d00433d8 	.word	0xd00433d8
d00405e0:	d0043f40 	.word	0xd0043f40
d00405e4:	d0043f60 	.word	0xd0043f60
d00405e8:	7ce2      	ldrb	r2, [r4, #19]
d00405ea:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00405ee:	2003      	movs	r0, #3
d00405f0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00405f4:	689b      	ldr	r3, [r3, #8]
d00405f6:	691b      	ldr	r3, [r3, #16]
d00405f8:	4798      	blx	r3
d00405fa:	7c23      	ldrb	r3, [r4, #16]
d00405fc:	7c62      	ldrb	r2, [r4, #17]
d00405fe:	218c      	movs	r1, #140	; 0x8c
d0040600:	7ca0      	ldrb	r0, [r4, #18]
d0040602:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040606:	7ce2      	ldrb	r2, [r4, #19]
d0040608:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004060c:	2003      	movs	r0, #3
d004060e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040612:	689b      	ldr	r3, [r3, #8]
d0040614:	695b      	ldr	r3, [r3, #20]
d0040616:	4798      	blx	r3
d0040618:	7c23      	ldrb	r3, [r4, #16]
d004061a:	7c62      	ldrb	r2, [r4, #17]
d004061c:	2100      	movs	r1, #0
d004061e:	7ca0      	ldrb	r0, [r4, #18]
d0040620:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040624:	7ce2      	ldrb	r2, [r4, #19]
d0040626:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004062a:	2003      	movs	r0, #3
d004062c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040630:	689b      	ldr	r3, [r3, #8]
d0040632:	699b      	ldr	r3, [r3, #24]
d0040634:	4798      	blx	r3
d0040636:	7c23      	ldrb	r3, [r4, #16]
d0040638:	7c60      	ldrb	r0, [r4, #17]
d004063a:	f642 52ef 	movw	r2, #11759	; 0x2def
d004063e:	7ca1      	ldrb	r1, [r4, #18]
d0040640:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d0040644:	7ce0      	ldrb	r0, [r4, #19]
d0040646:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004064a:	f44f 71de 	mov.w	r1, #444	; 0x1bc
d004064e:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d0040652:	2003      	movs	r0, #3
d0040654:	689b      	ldr	r3, [r3, #8]
d0040656:	69db      	ldr	r3, [r3, #28]
d0040658:	4798      	blx	r3
d004065a:	7c23      	ldrb	r3, [r4, #16]
d004065c:	7c62      	ldrb	r2, [r4, #17]
d004065e:	2101      	movs	r1, #1
d0040660:	7ca0      	ldrb	r0, [r4, #18]
d0040662:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040666:	7ce2      	ldrb	r2, [r4, #19]
d0040668:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004066c:	2003      	movs	r0, #3
d004066e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040672:	689b      	ldr	r3, [r3, #8]
d0040674:	6a1b      	ldr	r3, [r3, #32]
d0040676:	4798      	blx	r3
d0040678:	4641      	mov	r1, r8
d004067a:	487f      	ldr	r0, [pc, #508]	; (d0040878 <loadSounds+0x590>)
d004067c:	f7ff fdac 	bl	d00401d8 <LoadSFX>
d0040680:	7c25      	ldrb	r5, [r4, #16]
d0040682:	f894 c011 	ldrb.w	ip, [r4, #17]
d0040686:	4602      	mov	r2, r0
d0040688:	7ca0      	ldrb	r0, [r4, #18]
d004068a:	2300      	movs	r3, #0
d004068c:	ea45 250c 	orr.w	r5, r5, ip, lsl #8
d0040690:	f8d8 1000 	ldr.w	r1, [r8]
d0040694:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d0040698:	7ce0      	ldrb	r0, [r4, #19]
d004069a:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d004069e:	2004      	movs	r0, #4
d00406a0:	68ad      	ldr	r5, [r5, #8]
d00406a2:	68ed      	ldr	r5, [r5, #12]
d00406a4:	47a8      	blx	r5
d00406a6:	7c23      	ldrb	r3, [r4, #16]
d00406a8:	7c62      	ldrb	r2, [r4, #17]
d00406aa:	f646 5160 	movw	r1, #28000	; 0x6d60
d00406ae:	7ca5      	ldrb	r5, [r4, #18]
d00406b0:	2004      	movs	r0, #4
d00406b2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00406b6:	7ce2      	ldrb	r2, [r4, #19]
d00406b8:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00406bc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00406c0:	689b      	ldr	r3, [r3, #8]
d00406c2:	691b      	ldr	r3, [r3, #16]
d00406c4:	4798      	blx	r3
d00406c6:	7c23      	ldrb	r3, [r4, #16]
d00406c8:	7c62      	ldrb	r2, [r4, #17]
d00406ca:	f44f 71af 	mov.w	r1, #350	; 0x15e
d00406ce:	7ca5      	ldrb	r5, [r4, #18]
d00406d0:	2004      	movs	r0, #4
d00406d2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00406d6:	7ce2      	ldrb	r2, [r4, #19]
d00406d8:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00406dc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00406e0:	689b      	ldr	r3, [r3, #8]
d00406e2:	695b      	ldr	r3, [r3, #20]
d00406e4:	4798      	blx	r3
d00406e6:	7c23      	ldrb	r3, [r4, #16]
d00406e8:	7c62      	ldrb	r2, [r4, #17]
d00406ea:	2100      	movs	r1, #0
d00406ec:	7ca5      	ldrb	r5, [r4, #18]
d00406ee:	2004      	movs	r0, #4
d00406f0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00406f4:	7ce2      	ldrb	r2, [r4, #19]
d00406f6:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00406fa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00406fe:	689b      	ldr	r3, [r3, #8]
d0040700:	699b      	ldr	r3, [r3, #24]
d0040702:	4798      	blx	r3
d0040704:	7c23      	ldrb	r3, [r4, #16]
d0040706:	7c62      	ldrb	r2, [r4, #17]
d0040708:	2100      	movs	r1, #0
d004070a:	7ca5      	ldrb	r5, [r4, #18]
d004070c:	2004      	movs	r0, #4
d004070e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040712:	7ce2      	ldrb	r2, [r4, #19]
d0040714:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040718:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004071c:	689b      	ldr	r3, [r3, #8]
d004071e:	6a1b      	ldr	r3, [r3, #32]
d0040720:	4798      	blx	r3
d0040722:	4639      	mov	r1, r7
d0040724:	4855      	ldr	r0, [pc, #340]	; (d004087c <loadSounds+0x594>)
d0040726:	f7ff fd57 	bl	d00401d8 <LoadSFX>
d004072a:	7c25      	ldrb	r5, [r4, #16]
d004072c:	7c61      	ldrb	r1, [r4, #17]
d004072e:	4602      	mov	r2, r0
d0040730:	7ca0      	ldrb	r0, [r4, #18]
d0040732:	2300      	movs	r3, #0
d0040734:	ea45 2501 	orr.w	r5, r5, r1, lsl #8
d0040738:	f894 c013 	ldrb.w	ip, [r4, #19]
d004073c:	6839      	ldr	r1, [r7, #0]
d004073e:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d0040742:	2005      	movs	r0, #5
d0040744:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d0040748:	68ad      	ldr	r5, [r5, #8]
d004074a:	68ed      	ldr	r5, [r5, #12]
d004074c:	47a8      	blx	r5
d004074e:	7c23      	ldrb	r3, [r4, #16]
d0040750:	7c62      	ldrb	r2, [r4, #17]
d0040752:	f44f 41fa 	mov.w	r1, #32000	; 0x7d00
d0040756:	7ca5      	ldrb	r5, [r4, #18]
d0040758:	2005      	movs	r0, #5
d004075a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004075e:	7ce2      	ldrb	r2, [r4, #19]
d0040760:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040764:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040768:	689b      	ldr	r3, [r3, #8]
d004076a:	691b      	ldr	r3, [r3, #16]
d004076c:	4798      	blx	r3
d004076e:	7c23      	ldrb	r3, [r4, #16]
d0040770:	7c62      	ldrb	r2, [r4, #17]
d0040772:	f44f 71e1 	mov.w	r1, #450	; 0x1c2
d0040776:	7ca5      	ldrb	r5, [r4, #18]
d0040778:	2005      	movs	r0, #5
d004077a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004077e:	7ce2      	ldrb	r2, [r4, #19]
d0040780:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040784:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040788:	689b      	ldr	r3, [r3, #8]
d004078a:	695b      	ldr	r3, [r3, #20]
d004078c:	4798      	blx	r3
d004078e:	7c23      	ldrb	r3, [r4, #16]
d0040790:	7c62      	ldrb	r2, [r4, #17]
d0040792:	2100      	movs	r1, #0
d0040794:	7ca5      	ldrb	r5, [r4, #18]
d0040796:	2005      	movs	r0, #5
d0040798:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004079c:	7ce2      	ldrb	r2, [r4, #19]
d004079e:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00407a2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00407a6:	689b      	ldr	r3, [r3, #8]
d00407a8:	699b      	ldr	r3, [r3, #24]
d00407aa:	4798      	blx	r3
d00407ac:	7c23      	ldrb	r3, [r4, #16]
d00407ae:	7c62      	ldrb	r2, [r4, #17]
d00407b0:	2100      	movs	r1, #0
d00407b2:	7ca5      	ldrb	r5, [r4, #18]
d00407b4:	2005      	movs	r0, #5
d00407b6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00407ba:	7ce2      	ldrb	r2, [r4, #19]
d00407bc:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00407c0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00407c4:	689b      	ldr	r3, [r3, #8]
d00407c6:	6a1b      	ldr	r3, [r3, #32]
d00407c8:	4798      	blx	r3
d00407ca:	4631      	mov	r1, r6
d00407cc:	482c      	ldr	r0, [pc, #176]	; (d0040880 <loadSounds+0x598>)
d00407ce:	f7ff fd03 	bl	d00401d8 <LoadSFX>
d00407d2:	7c25      	ldrb	r5, [r4, #16]
d00407d4:	7c61      	ldrb	r1, [r4, #17]
d00407d6:	4602      	mov	r2, r0
d00407d8:	f894 c012 	ldrb.w	ip, [r4, #18]
d00407dc:	2300      	movs	r3, #0
d00407de:	ea45 2501 	orr.w	r5, r5, r1, lsl #8
d00407e2:	7ce7      	ldrb	r7, [r4, #19]
d00407e4:	6831      	ldr	r1, [r6, #0]
d00407e6:	2006      	movs	r0, #6
d00407e8:	ea45 450c 	orr.w	r5, r5, ip, lsl #16
d00407ec:	ea45 6507 	orr.w	r5, r5, r7, lsl #24
d00407f0:	68ad      	ldr	r5, [r5, #8]
d00407f2:	68ed      	ldr	r5, [r5, #12]
d00407f4:	47a8      	blx	r5
d00407f6:	7c23      	ldrb	r3, [r4, #16]
d00407f8:	7c62      	ldrb	r2, [r4, #17]
d00407fa:	f646 5160 	movw	r1, #28000	; 0x6d60
d00407fe:	7ca5      	ldrb	r5, [r4, #18]
d0040800:	2006      	movs	r0, #6
d0040802:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040806:	7ce2      	ldrb	r2, [r4, #19]
d0040808:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004080c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040810:	689b      	ldr	r3, [r3, #8]
d0040812:	691b      	ldr	r3, [r3, #16]
d0040814:	4798      	blx	r3
d0040816:	7c23      	ldrb	r3, [r4, #16]
d0040818:	7c62      	ldrb	r2, [r4, #17]
d004081a:	f44f 71e1 	mov.w	r1, #450	; 0x1c2
d004081e:	7ca5      	ldrb	r5, [r4, #18]
d0040820:	2006      	movs	r0, #6
d0040822:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040826:	7ce2      	ldrb	r2, [r4, #19]
d0040828:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004082c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040830:	689b      	ldr	r3, [r3, #8]
d0040832:	695b      	ldr	r3, [r3, #20]
d0040834:	4798      	blx	r3
d0040836:	7c23      	ldrb	r3, [r4, #16]
d0040838:	7c62      	ldrb	r2, [r4, #17]
d004083a:	2100      	movs	r1, #0
d004083c:	7ca5      	ldrb	r5, [r4, #18]
d004083e:	2006      	movs	r0, #6
d0040840:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040844:	7ce2      	ldrb	r2, [r4, #19]
d0040846:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004084a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004084e:	689b      	ldr	r3, [r3, #8]
d0040850:	699b      	ldr	r3, [r3, #24]
d0040852:	4798      	blx	r3
d0040854:	7c23      	ldrb	r3, [r4, #16]
d0040856:	7c62      	ldrb	r2, [r4, #17]
d0040858:	2100      	movs	r1, #0
d004085a:	7ca5      	ldrb	r5, [r4, #18]
d004085c:	2006      	movs	r0, #6
d004085e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040862:	7ce2      	ldrb	r2, [r4, #19]
d0040864:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040868:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004086c:	689b      	ldr	r3, [r3, #8]
d004086e:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0040872:	6a1b      	ldr	r3, [r3, #32]
d0040874:	4718      	bx	r3
d0040876:	bf00      	nop
d0040878:	d00433ec 	.word	0xd00433ec
d004087c:	d0043400 	.word	0xd0043400
d0040880:	d0043418 	.word	0xd0043418

d0040884 <MusicPlay>:
d0040884:	4a08      	ldr	r2, [pc, #32]	; (d00408a8 <MusicPlay+0x24>)
d0040886:	2100      	movs	r1, #0
d0040888:	4808      	ldr	r0, [pc, #32]	; (d00408ac <MusicPlay+0x28>)
d004088a:	7c13      	ldrb	r3, [r2, #16]
d004088c:	b430      	push	{r4, r5}
d004088e:	7c55      	ldrb	r5, [r2, #17]
d0040890:	7c94      	ldrb	r4, [r2, #18]
d0040892:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d0040896:	7cd2      	ldrb	r2, [r2, #19]
d0040898:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d004089c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00408a0:	685b      	ldr	r3, [r3, #4]
d00408a2:	bc30      	pop	{r4, r5}
d00408a4:	681b      	ldr	r3, [r3, #0]
d00408a6:	4718      	bx	r3
d00408a8:	2001f000 	.word	0x2001f000
d00408ac:	d0043428 	.word	0xd0043428

d00408b0 <ShieldBounceAsteroid>:
d00408b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00408b2:	4b9a      	ldr	r3, [pc, #616]	; (d0040b1c <ShieldBounceAsteroid+0x26c>)
d00408b4:	ed2d 8b06 	vpush	{d8-d10}
d00408b8:	781b      	ldrb	r3, [r3, #0]
d00408ba:	2b00      	cmp	r3, #0
d00408bc:	f000 8100 	beq.w	d0040ac0 <ShieldBounceAsteroid+0x210>
d00408c0:	f9b0 3002 	ldrsh.w	r3, [r0, #2]
d00408c4:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d00408c8:	4f95      	ldr	r7, [pc, #596]	; (d0040b20 <ShieldBounceAsteroid+0x270>)
d00408ca:	4604      	mov	r4, r0
d00408cc:	ee08 3a90 	vmov	s17, r3
d00408d0:	f9b0 300a 	ldrsh.w	r3, [r0, #10]
d00408d4:	eddf 5a93 	vldr	s11, [pc, #588]	; d0040b24 <ShieldBounceAsteroid+0x274>
d00408d8:	ed97 7a00 	vldr	s14, [r7]
d00408dc:	ee06 3a90 	vmov	s13, r3
d00408e0:	4e91      	ldr	r6, [pc, #580]	; (d0040b28 <ShieldBounceAsteroid+0x278>)
d00408e2:	eef8 8ae8 	vcvt.f32.s32	s17, s17
d00408e6:	f9b0 3000 	ldrsh.w	r3, [r0]
d00408ea:	ee37 7a25 	vadd.f32	s14, s14, s11
d00408ee:	edd6 7a00 	vldr	s15, [r6]
d00408f2:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d00408f6:	ee08 3a10 	vmov	s16, r3
d00408fa:	f9b0 3008 	ldrsh.w	r3, [r0, #8]
d00408fe:	ee77 8a68 	vsub.f32	s17, s14, s17
d0040902:	eddf 9a8a 	vldr	s19, [pc, #552]	; d0040b2c <ShieldBounceAsteroid+0x27c>
d0040906:	ee77 7aa5 	vadd.f32	s15, s15, s11
d004090a:	ee07 3a10 	vmov	s14, r3
d004090e:	eeb8 8ac8 	vcvt.f32.s32	s16, s16
d0040912:	ed9f 9a87 	vldr	s18, [pc, #540]	; d0040b30 <ShieldBounceAsteroid+0x280>
d0040916:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004091a:	eee6 8ac6 	vfms.f32	s17, s13, s12
d004091e:	ee37 8ac8 	vsub.f32	s16, s15, s16
d0040922:	ee67 9a29 	vmul.f32	s19, s14, s19
d0040926:	eea7 8a46 	vfms.f32	s16, s14, s12
d004092a:	ee39 9a89 	vadd.f32	s18, s19, s18
d004092e:	ee28 aaa8 	vmul.f32	s20, s17, s17
d0040932:	ee69 7a09 	vmul.f32	s15, s18, s18
d0040936:	eea8 aa08 	vfma.f32	s20, s16, s16
d004093a:	eef4 7aca 	vcmpe.f32	s15, s20
d004093e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040942:	f240 80bd 	bls.w	d0040ac0 <ShieldBounceAsteroid+0x210>
d0040946:	4d7b      	ldr	r5, [pc, #492]	; (d0040b34 <ShieldBounceAsteroid+0x284>)
d0040948:	2006      	movs	r0, #6
d004094a:	7c2b      	ldrb	r3, [r5, #16]
d004094c:	7c6a      	ldrb	r2, [r5, #17]
d004094e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040952:	7caa      	ldrb	r2, [r5, #18]
d0040954:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040958:	7cea      	ldrb	r2, [r5, #19]
d004095a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004095e:	689b      	ldr	r3, [r3, #8]
d0040960:	689b      	ldr	r3, [r3, #8]
d0040962:	4798      	blx	r3
d0040964:	7c2b      	ldrb	r3, [r5, #16]
d0040966:	7c6a      	ldrb	r2, [r5, #17]
d0040968:	2006      	movs	r0, #6
d004096a:	7ca9      	ldrb	r1, [r5, #18]
d004096c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040970:	7cea      	ldrb	r2, [r5, #19]
d0040972:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040976:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004097a:	689b      	ldr	r3, [r3, #8]
d004097c:	685b      	ldr	r3, [r3, #4]
d004097e:	4798      	blx	r3
d0040980:	eddf 7a6d 	vldr	s15, [pc, #436]	; d0040b38 <ShieldBounceAsteroid+0x288>
d0040984:	eeb4 aae7 	vcmpe.f32	s20, s15
d0040988:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004098c:	f100 809b 	bmi.w	d0040ac6 <ShieldBounceAsteroid+0x216>
d0040990:	eef1 7aca 	vsqrt.f32	s15, s20
d0040994:	eddf 3a69 	vldr	s7, [pc, #420]	; d0040b3c <ShieldBounceAsteroid+0x28c>
d0040998:	eec8 4aa7 	vdiv.f32	s9, s17, s15
d004099c:	ee39 9a67 	vsub.f32	s18, s18, s15
d00409a0:	ee88 5a27 	vdiv.f32	s10, s16, s15
d00409a4:	ee69 3a23 	vmul.f32	s7, s18, s7
d00409a8:	ee39 9a63 	vsub.f32	s18, s18, s7
d00409ac:	ee63 2aa4 	vmul.f32	s5, s7, s9
d00409b0:	ee64 7a89 	vmul.f32	s15, s9, s18
d00409b4:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00409b8:	ee29 9a05 	vmul.f32	s18, s18, s10
d00409bc:	ee17 3a90 	vmov	r3, s15
d00409c0:	b299      	uxth	r1, r3
d00409c2:	f9b4 0006 	ldrsh.w	r0, [r4, #6]
d00409c6:	4a5e      	ldr	r2, [pc, #376]	; (d0040b40 <ShieldBounceAsteroid+0x290>)
d00409c8:	ee07 0a90 	vmov	s15, r0
d00409cc:	f9b4 5004 	ldrsh.w	r5, [r4, #4]
d00409d0:	edd2 5a00 	vldr	s11, [r2]
d00409d4:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d00409d8:	ee07 5a90 	vmov	s15, r5
d00409dc:	4b59      	ldr	r3, [pc, #356]	; (d0040b44 <ShieldBounceAsteroid+0x294>)
d00409de:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d00409e2:	ee75 7ac7 	vsub.f32	s15, s11, s14
d00409e6:	ed93 6a00 	vldr	s12, [r3]
d00409ea:	ee36 4a66 	vsub.f32	s8, s12, s13
d00409ee:	ee67 7aa4 	vmul.f32	s15, s15, s9
d00409f2:	eee4 7a05 	vfma.f32	s15, s8, s10
d00409f6:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d00409fa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00409fe:	da74      	bge.n	d0040aea <ShieldBounceAsteroid+0x23a>
d0040a00:	f894 c00c 	ldrb.w	ip, [r4, #12]
d0040a04:	eef0 1a08 	vmov.f32	s3, #8	; 0x40400000  3.0
d0040a08:	eeb7 3a00 	vmov.f32	s6, #112	; 0x3f800000  1.0
d0040a0c:	ee04 ca10 	vmov	s8, ip
d0040a10:	eeb8 2a00 	vmov.f32	s4, #128	; 0xc0000000 -2.0
d0040a14:	eeb1 1a00 	vmov.f32	s2, #16	; 0x40800000  4.0
d0040a18:	eeb8 4a44 	vcvt.f32.u32	s8, s8
d0040a1c:	ee67 7a82 	vmul.f32	s15, s15, s4
d0040a20:	ee34 4a21 	vadd.f32	s8, s8, s3
d0040a24:	eef9 1a00 	vmov.f32	s3, #144	; 0xc0800000 -4.0
d0040a28:	ee83 2a04 	vdiv.f32	s4, s6, s8
d0040a2c:	ee32 3a03 	vadd.f32	s6, s4, s6
d0040a30:	ee87 4a83 	vdiv.f32	s8, s15, s6
d0040a34:	ee64 7a05 	vmul.f32	s15, s8, s10
d0040a38:	ee64 4a24 	vmul.f32	s9, s8, s9
d0040a3c:	eee2 6a67 	vfms.f32	s13, s4, s15
d0040a40:	eea2 7a64 	vfms.f32	s14, s4, s9
d0040a44:	ee75 5aa4 	vadd.f32	s11, s11, s9
d0040a48:	ee36 6a27 	vadd.f32	s12, s12, s15
d0040a4c:	fec5 5ac1 	vminnm.f32	s11, s11, s2
d0040a50:	fec5 5aa1 	vmaxnm.f32	s11, s11, s3
d0040a54:	fefc 6ae6 	vcvta.s32.f32	s13, s13
d0040a58:	edc2 5a00 	vstr	s11, [r2]
d0040a5c:	febc 7ac7 	vcvta.s32.f32	s14, s14
d0040a60:	fe86 6a41 	vminnm.f32	s12, s12, s2
d0040a64:	fe86 6a21 	vmaxnm.f32	s12, s12, s3
d0040a68:	ed83 6a00 	vstr	s12, [r3]
d0040a6c:	ee16 2a90 	vmov	r2, s13
d0040a70:	ee17 3a10 	vmov	r3, s14
d0040a74:	b212      	sxth	r2, r2
d0040a76:	b21b      	sxth	r3, r3
d0040a78:	b922      	cbnz	r2, d0040a84 <ShieldBounceAsteroid+0x1d4>
d0040a7a:	2d00      	cmp	r5, #0
d0040a7c:	bfac      	ite	ge
d0040a7e:	2201      	movge	r2, #1
d0040a80:	f04f 32ff 	movlt.w	r2, #4294967295	; 0xffffffff
d0040a84:	b923      	cbnz	r3, d0040a90 <ShieldBounceAsteroid+0x1e0>
d0040a86:	2800      	cmp	r0, #0
d0040a88:	bfac      	ite	ge
d0040a8a:	2301      	movge	r3, #1
d0040a8c:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0040a90:	eebd 9ac9 	vcvt.s32.f32	s18, s18
d0040a94:	edd6 7a00 	vldr	s15, [r6]
d0040a98:	8820      	ldrh	r0, [r4, #0]
d0040a9a:	eee5 7a23 	vfma.f32	s15, s10, s7
d0040a9e:	80a2      	strh	r2, [r4, #4]
d0040aa0:	ee19 2a10 	vmov	r2, s18
d0040aa4:	ed97 7a00 	vldr	s14, [r7]
d0040aa8:	80e3      	strh	r3, [r4, #6]
d0040aaa:	1a80      	subs	r0, r0, r2
d0040aac:	8862      	ldrh	r2, [r4, #2]
d0040aae:	ee77 2a22 	vadd.f32	s5, s14, s5
d0040ab2:	1a51      	subs	r1, r2, r1
d0040ab4:	edc6 7a00 	vstr	s15, [r6]
d0040ab8:	edc7 2a00 	vstr	s5, [r7]
d0040abc:	8020      	strh	r0, [r4, #0]
d0040abe:	8061      	strh	r1, [r4, #2]
d0040ac0:	ecbd 8b06 	vpop	{d8-d10}
d0040ac4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0040ac6:	ed9f 9a20 	vldr	s18, [pc, #128]	; d0040b48 <ShieldBounceAsteroid+0x298>
d0040aca:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0040ace:	eddf 3a1b 	vldr	s7, [pc, #108]	; d0040b3c <ShieldBounceAsteroid+0x28c>
d0040ad2:	2100      	movs	r1, #0
d0040ad4:	ee39 9a89 	vadd.f32	s18, s19, s18
d0040ad8:	eddf 4a1c 	vldr	s9, [pc, #112]	; d0040b4c <ShieldBounceAsteroid+0x29c>
d0040adc:	eef0 2a64 	vmov.f32	s5, s9
d0040ae0:	ee69 3a23 	vmul.f32	s7, s18, s7
d0040ae4:	ee39 9a63 	vsub.f32	s18, s18, s7
d0040ae8:	e76b      	b.n	d00409c2 <ShieldBounceAsteroid+0x112>
d0040aea:	edd6 7a00 	vldr	s15, [r6]
d0040aee:	eebd 9ac9 	vcvt.s32.f32	s18, s18
d0040af2:	ed97 7a00 	vldr	s14, [r7]
d0040af6:	eee5 7a23 	vfma.f32	s15, s10, s7
d0040afa:	8820      	ldrh	r0, [r4, #0]
d0040afc:	8863      	ldrh	r3, [r4, #2]
d0040afe:	ee19 2a10 	vmov	r2, s18
d0040b02:	ee77 2a22 	vadd.f32	s5, s14, s5
d0040b06:	1a82      	subs	r2, r0, r2
d0040b08:	1a59      	subs	r1, r3, r1
d0040b0a:	ecbd 8b06 	vpop	{d8-d10}
d0040b0e:	edc7 2a00 	vstr	s5, [r7]
d0040b12:	edc6 7a00 	vstr	s15, [r6]
d0040b16:	8022      	strh	r2, [r4, #0]
d0040b18:	8061      	strh	r1, [r4, #2]
d0040b1a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0040b1c:	d0043e88 	.word	0xd0043e88
d0040b20:	d00443ac 	.word	0xd00443ac
d0040b24:	42000000 	.word	0x42000000
d0040b28:	d00443a8 	.word	0xd00443a8
d0040b2c:	3ee66666 	.word	0x3ee66666
d0040b30:	41e66666 	.word	0x41e66666
d0040b34:	2001f000 	.word	0x2001f000
d0040b38:	358637bd 	.word	0x358637bd
d0040b3c:	3f19999a 	.word	0x3f19999a
d0040b40:	d00443a0 	.word	0xd00443a0
d0040b44:	d0044360 	.word	0xd0044360
d0040b48:	41de6666 	.word	0x41de6666
d0040b4c:	00000000 	.word	0x00000000

d0040b50 <ShowShield>:
d0040b50:	4a1e      	ldr	r2, [pc, #120]	; (d0040bcc <ShowShield+0x7c>)
d0040b52:	eef2 6a00 	vmov.f32	s13, #32	; 0x41000000  8.0
d0040b56:	4b1e      	ldr	r3, [pc, #120]	; (d0040bd0 <ShowShield+0x80>)
d0040b58:	ed92 7a00 	vldr	s14, [r2]
d0040b5c:	edd3 7a00 	vldr	s15, [r3]
d0040b60:	ee37 7a66 	vsub.f32	s14, s14, s13
d0040b64:	481b      	ldr	r0, [pc, #108]	; (d0040bd4 <ShowShield+0x84>)
d0040b66:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0040b6a:	491b      	ldr	r1, [pc, #108]	; (d0040bd8 <ShowShield+0x88>)
d0040b6c:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0040b70:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0040b74:	ee17 3a10 	vmov	r3, s14
d0040b78:	b21a      	sxth	r2, r3
d0040b7a:	ee17 3a90 	vmov	r3, s15
d0040b7e:	b21b      	sxth	r3, r3
d0040b80:	828a      	strh	r2, [r1, #20]
d0040b82:	82cb      	strh	r3, [r1, #22]
d0040b84:	7803      	ldrb	r3, [r0, #0]
d0040b86:	3301      	adds	r3, #1
d0040b88:	b2db      	uxtb	r3, r3
d0040b8a:	7003      	strb	r3, [r0, #0]
d0040b8c:	7803      	ldrb	r3, [r0, #0]
d0040b8e:	2b01      	cmp	r3, #1
d0040b90:	d909      	bls.n	d0040ba6 <ShowShield+0x56>
d0040b92:	2200      	movs	r2, #0
d0040b94:	7002      	strb	r2, [r0, #0]
d0040b96:	7e0b      	ldrb	r3, [r1, #24]
d0040b98:	3301      	adds	r3, #1
d0040b9a:	b2db      	uxtb	r3, r3
d0040b9c:	760b      	strb	r3, [r1, #24]
d0040b9e:	7e0b      	ldrb	r3, [r1, #24]
d0040ba0:	2b07      	cmp	r3, #7
d0040ba2:	d900      	bls.n	d0040ba6 <ShowShield+0x56>
d0040ba4:	760a      	strb	r2, [r1, #24]
d0040ba6:	4a0d      	ldr	r2, [pc, #52]	; (d0040bdc <ShowShield+0x8c>)
d0040ba8:	2002      	movs	r0, #2
d0040baa:	2332      	movs	r3, #50	; 0x32
d0040bac:	7108      	strb	r0, [r1, #4]
d0040bae:	718b      	strb	r3, [r1, #6]
d0040bb0:	7b13      	ldrb	r3, [r2, #12]
d0040bb2:	7b50      	ldrb	r0, [r2, #13]
d0040bb4:	7b91      	ldrb	r1, [r2, #14]
d0040bb6:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d0040bba:	7bd2      	ldrb	r2, [r2, #15]
d0040bbc:	4806      	ldr	r0, [pc, #24]	; (d0040bd8 <ShowShield+0x88>)
d0040bbe:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040bc2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040bc6:	685b      	ldr	r3, [r3, #4]
d0040bc8:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0040bca:	4718      	bx	r3
d0040bcc:	d00443a8 	.word	0xd00443a8
d0040bd0:	d00443ac 	.word	0xd00443ac
d0040bd4:	d0043e89 	.word	0xd0043e89
d0040bd8:	d0043f80 	.word	0xd0043f80
d0040bdc:	2001f000 	.word	0x2001f000

d0040be0 <ShieldON>:
d0040be0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0040be2:	4d1f      	ldr	r5, [pc, #124]	; (d0040c60 <ShieldON+0x80>)
d0040be4:	782b      	ldrb	r3, [r5, #0]
d0040be6:	2b00      	cmp	r3, #0
d0040be8:	d134      	bne.n	d0040c54 <ShieldON+0x74>
d0040bea:	4b1e      	ldr	r3, [pc, #120]	; (d0040c64 <ShieldON+0x84>)
d0040bec:	f06f 067e 	mvn.w	r6, #126	; 0x7e
d0040bf0:	491d      	ldr	r1, [pc, #116]	; (d0040c68 <ShieldON+0x88>)
d0040bf2:	2003      	movs	r0, #3
d0040bf4:	8a9b      	ldrh	r3, [r3, #20]
d0040bf6:	4c1d      	ldr	r4, [pc, #116]	; (d0040c6c <ShieldON+0x8c>)
d0040bf8:	3320      	adds	r3, #32
d0040bfa:	7c27      	ldrb	r7, [r4, #16]
d0040bfc:	b21b      	sxth	r3, r3
d0040bfe:	3bf0      	subs	r3, #240	; 0xf0
d0040c00:	ebc3 13c3 	rsb	r3, r3, r3, lsl #7
d0040c04:	fb81 2103 	smull	r2, r1, r1, r3
d0040c08:	17da      	asrs	r2, r3, #31
d0040c0a:	4419      	add	r1, r3
d0040c0c:	7c63      	ldrb	r3, [r4, #17]
d0040c0e:	ebc2 11e1 	rsb	r1, r2, r1, asr #7
d0040c12:	7ca2      	ldrb	r2, [r4, #18]
d0040c14:	ea47 2303 	orr.w	r3, r7, r3, lsl #8
d0040c18:	b209      	sxth	r1, r1
d0040c1a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040c1e:	7ce2      	ldrb	r2, [r4, #19]
d0040c20:	297f      	cmp	r1, #127	; 0x7f
d0040c22:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040c26:	bfa8      	it	ge
d0040c28:	217f      	movge	r1, #127	; 0x7f
d0040c2a:	689b      	ldr	r3, [r3, #8]
d0040c2c:	42b1      	cmp	r1, r6
d0040c2e:	699b      	ldr	r3, [r3, #24]
d0040c30:	bfb8      	it	lt
d0040c32:	4631      	movlt	r1, r6
d0040c34:	b249      	sxtb	r1, r1
d0040c36:	4798      	blx	r3
d0040c38:	7c23      	ldrb	r3, [r4, #16]
d0040c3a:	7c62      	ldrb	r2, [r4, #17]
d0040c3c:	2003      	movs	r0, #3
d0040c3e:	7ca1      	ldrb	r1, [r4, #18]
d0040c40:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040c44:	7ce2      	ldrb	r2, [r4, #19]
d0040c46:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040c4a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040c4e:	689b      	ldr	r3, [r3, #8]
d0040c50:	685b      	ldr	r3, [r3, #4]
d0040c52:	4798      	blx	r3
d0040c54:	2301      	movs	r3, #1
d0040c56:	702b      	strb	r3, [r5, #0]
d0040c58:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0040c5c:	f7ff bf78 	b.w	d0040b50 <ShowShield>
d0040c60:	d0043e88 	.word	0xd0043e88
d0040c64:	d0044380 	.word	0xd0044380
d0040c68:	88888889 	.word	0x88888889
d0040c6c:	2001f000 	.word	0x2001f000

d0040c70 <ShieldOFF>:
d0040c70:	b538      	push	{r3, r4, r5, lr}
d0040c72:	4c0b      	ldr	r4, [pc, #44]	; (d0040ca0 <ShieldOFF+0x30>)
d0040c74:	7823      	ldrb	r3, [r4, #0]
d0040c76:	2b01      	cmp	r3, #1
d0040c78:	d10e      	bne.n	d0040c98 <ShieldOFF+0x28>
d0040c7a:	4a0a      	ldr	r2, [pc, #40]	; (d0040ca4 <ShieldOFF+0x34>)
d0040c7c:	2003      	movs	r0, #3
d0040c7e:	7c13      	ldrb	r3, [r2, #16]
d0040c80:	7c55      	ldrb	r5, [r2, #17]
d0040c82:	7c91      	ldrb	r1, [r2, #18]
d0040c84:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d0040c88:	7cd2      	ldrb	r2, [r2, #19]
d0040c8a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040c8e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040c92:	689b      	ldr	r3, [r3, #8]
d0040c94:	689b      	ldr	r3, [r3, #8]
d0040c96:	4798      	blx	r3
d0040c98:	2300      	movs	r3, #0
d0040c9a:	7023      	strb	r3, [r4, #0]
d0040c9c:	bd38      	pop	{r3, r4, r5, pc}
d0040c9e:	bf00      	nop
d0040ca0:	d0043e88 	.word	0xd0043e88
d0040ca4:	2001f000 	.word	0x2001f000

d0040ca8 <initShip>:
d0040ca8:	b430      	push	{r4, r5}
d0040caa:	4a09      	ldr	r2, [pc, #36]	; (d0040cd0 <initShip+0x28>)
d0040cac:	f04f 4086 	mov.w	r0, #1124073472	; 0x43000000
d0040cb0:	4c08      	ldr	r4, [pc, #32]	; (d0040cd4 <initShip+0x2c>)
d0040cb2:	2300      	movs	r3, #0
d0040cb4:	4908      	ldr	r1, [pc, #32]	; (d0040cd8 <initShip+0x30>)
d0040cb6:	4d09      	ldr	r5, [pc, #36]	; (d0040cdc <initShip+0x34>)
d0040cb8:	6008      	str	r0, [r1, #0]
d0040cba:	6014      	str	r4, [r2, #0]
d0040cbc:	2200      	movs	r2, #0
d0040cbe:	4c08      	ldr	r4, [pc, #32]	; (d0040ce0 <initShip+0x38>)
d0040cc0:	4808      	ldr	r0, [pc, #32]	; (d0040ce4 <initShip+0x3c>)
d0040cc2:	4909      	ldr	r1, [pc, #36]	; (d0040ce8 <initShip+0x40>)
d0040cc4:	602a      	str	r2, [r5, #0]
d0040cc6:	6022      	str	r2, [r4, #0]
d0040cc8:	700b      	strb	r3, [r1, #0]
d0040cca:	6003      	str	r3, [r0, #0]
d0040ccc:	bc30      	pop	{r4, r5}
d0040cce:	4770      	bx	lr
d0040cd0:	d00443a8 	.word	0xd00443a8
d0040cd4:	43500000 	.word	0x43500000
d0040cd8:	d00443ac 	.word	0xd00443ac
d0040cdc:	d0044360 	.word	0xd0044360
d0040ce0:	d00443a0 	.word	0xd00443a0
d0040ce4:	d00443a4 	.word	0xd00443a4
d0040ce8:	d0043e8a 	.word	0xd0043e8a

d0040cec <ShipUpdate>:
d0040cec:	4a49      	ldr	r2, [pc, #292]	; (d0040e14 <ShipUpdate+0x128>)
d0040cee:	7813      	ldrb	r3, [r2, #0]
d0040cf0:	3301      	adds	r3, #1
d0040cf2:	b25b      	sxtb	r3, r3
d0040cf4:	2b01      	cmp	r3, #1
d0040cf6:	7013      	strb	r3, [r2, #0]
d0040cf8:	f340 8089 	ble.w	d0040e0e <ShipUpdate+0x122>
d0040cfc:	2300      	movs	r3, #0
d0040cfe:	06c1      	lsls	r1, r0, #27
d0040d00:	7013      	strb	r3, [r2, #0]
d0040d02:	4a45      	ldr	r2, [pc, #276]	; (d0040e18 <ShipUpdate+0x12c>)
d0040d04:	6813      	ldr	r3, [r2, #0]
d0040d06:	bf44      	itt	mi
d0040d08:	f103 33ff 	addmi.w	r3, r3, #4294967295	; 0xffffffff
d0040d0c:	6013      	strmi	r3, [r2, #0]
d0040d0e:	0681      	lsls	r1, r0, #26
d0040d10:	d501      	bpl.n	d0040d16 <ShipUpdate+0x2a>
d0040d12:	3301      	adds	r3, #1
d0040d14:	6013      	str	r3, [r2, #0]
d0040d16:	2b23      	cmp	r3, #35	; 0x23
d0040d18:	dc5d      	bgt.n	d0040dd6 <ShipUpdate+0xea>
d0040d1a:	2b00      	cmp	r3, #0
d0040d1c:	da02      	bge.n	d0040d24 <ShipUpdate+0x38>
d0040d1e:	2123      	movs	r1, #35	; 0x23
d0040d20:	460b      	mov	r3, r1
d0040d22:	6011      	str	r1, [r2, #0]
d0040d24:	4a3d      	ldr	r2, [pc, #244]	; (d0040e1c <ShipUpdate+0x130>)
d0040d26:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
d0040d2a:	edd3 7a00 	vldr	s15, [r3]
d0040d2e:	ed93 7a01 	vldr	s14, [r3, #4]
d0040d32:	0743      	lsls	r3, r0, #29
d0040d34:	d552      	bpl.n	d0040ddc <ShipUpdate+0xf0>
d0040d36:	eef5 6a00 	vmov.f32	s13, #80	; 0x3e800000  0.250
d0040d3a:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0040d3e:	ee67 6a26 	vmul.f32	s13, s14, s13
d0040d42:	4937      	ldr	r1, [pc, #220]	; (d0040e20 <ShipUpdate+0x134>)
d0040d44:	eeb3 6a00 	vmov.f32	s12, #48	; 0x41800000  16.0
d0040d48:	4836      	ldr	r0, [pc, #216]	; (d0040e24 <ShipUpdate+0x138>)
d0040d4a:	ed91 7a00 	vldr	s14, [r1]
d0040d4e:	edd0 5a00 	vldr	s11, [r0]
d0040d52:	ee37 7a66 	vsub.f32	s14, s14, s13
d0040d56:	ee77 7aa5 	vadd.f32	s15, s15, s11
d0040d5a:	ee67 6a07 	vmul.f32	s13, s14, s14
d0040d5e:	eee7 6aa7 	vfma.f32	s13, s15, s15
d0040d62:	eef4 6ac6 	vcmpe.f32	s13, s12
d0040d66:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040d6a:	dd09      	ble.n	d0040d80 <ShipUpdate+0x94>
d0040d6c:	eeb1 6ae6 	vsqrt.f32	s12, s13
d0040d70:	eef1 5a00 	vmov.f32	s11, #16	; 0x40800000  4.0
d0040d74:	eec5 6a86 	vdiv.f32	s13, s11, s12
d0040d78:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0040d7c:	ee27 7a26 	vmul.f32	s14, s14, s13
d0040d80:	4a29      	ldr	r2, [pc, #164]	; (d0040e28 <ShipUpdate+0x13c>)
d0040d82:	ed9f 5a2a 	vldr	s10, [pc, #168]	; d0040e2c <ShipUpdate+0x140>
d0040d86:	ed92 6a00 	vldr	s12, [r2]
d0040d8a:	4b29      	ldr	r3, [pc, #164]	; (d0040e30 <ShipUpdate+0x144>)
d0040d8c:	ee37 6a86 	vadd.f32	s12, s15, s12
d0040d90:	eddf 5a28 	vldr	s11, [pc, #160]	; d0040e34 <ShipUpdate+0x148>
d0040d94:	edd3 6a00 	vldr	s13, [r3]
d0040d98:	ee67 7aa5 	vmul.f32	s15, s15, s11
d0040d9c:	eeb4 6ac5 	vcmpe.f32	s12, s10
d0040da0:	ed82 6a00 	vstr	s12, [r2]
d0040da4:	ee77 6a26 	vadd.f32	s13, s14, s13
d0040da8:	ee27 7a25 	vmul.f32	s14, s14, s11
d0040dac:	edc0 7a00 	vstr	s15, [r0]
d0040db0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040db4:	edc3 6a00 	vstr	s13, [r3]
d0040db8:	ed81 7a00 	vstr	s14, [r1]
d0040dbc:	d51d      	bpl.n	d0040dfa <ShipUpdate+0x10e>
d0040dbe:	491e      	ldr	r1, [pc, #120]	; (d0040e38 <ShipUpdate+0x14c>)
d0040dc0:	6011      	str	r1, [r2, #0]
d0040dc2:	eddf 7a1a 	vldr	s15, [pc, #104]	; d0040e2c <ShipUpdate+0x140>
d0040dc6:	eef4 6ae7 	vcmpe.f32	s13, s15
d0040dca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040dce:	d50a      	bpl.n	d0040de6 <ShipUpdate+0xfa>
d0040dd0:	4a1a      	ldr	r2, [pc, #104]	; (d0040e3c <ShipUpdate+0x150>)
d0040dd2:	601a      	str	r2, [r3, #0]
d0040dd4:	4770      	bx	lr
d0040dd6:	2300      	movs	r3, #0
d0040dd8:	6013      	str	r3, [r2, #0]
d0040dda:	e7a3      	b.n	d0040d24 <ShipUpdate+0x38>
d0040ddc:	eddf 6a18 	vldr	s13, [pc, #96]	; d0040e40 <ShipUpdate+0x154>
d0040de0:	eef0 7a66 	vmov.f32	s15, s13
d0040de4:	e7ad      	b.n	d0040d42 <ShipUpdate+0x56>
d0040de6:	ed9f 7a17 	vldr	s14, [pc, #92]	; d0040e44 <ShipUpdate+0x158>
d0040dea:	eef4 6ac7 	vcmpe.f32	s13, s14
d0040dee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040df2:	bfc8      	it	gt
d0040df4:	edc3 7a00 	vstrgt	s15, [r3]
d0040df8:	4770      	bx	lr
d0040dfa:	eddf 7a13 	vldr	s15, [pc, #76]	; d0040e48 <ShipUpdate+0x15c>
d0040dfe:	eeb4 6ae7 	vcmpe.f32	s12, s15
d0040e02:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040e06:	bfc8      	it	gt
d0040e08:	ed82 5a00 	vstrgt	s10, [r2]
d0040e0c:	e7d9      	b.n	d0040dc2 <ShipUpdate+0xd6>
d0040e0e:	4b02      	ldr	r3, [pc, #8]	; (d0040e18 <ShipUpdate+0x12c>)
d0040e10:	681b      	ldr	r3, [r3, #0]
d0040e12:	e787      	b.n	d0040d24 <ShipUpdate+0x38>
d0040e14:	d0043e8a 	.word	0xd0043e8a
d0040e18:	d00443a4 	.word	0xd00443a4
d0040e1c:	d0043284 	.word	0xd0043284
d0040e20:	d00443a0 	.word	0xd00443a0
d0040e24:	d0044360 	.word	0xd0044360
d0040e28:	d00443a8 	.word	0xd00443a8
d0040e2c:	c2800000 	.word	0xc2800000
d0040e30:	d00443ac 	.word	0xd00443ac
d0040e34:	3f7d70a4 	.word	0x3f7d70a4
d0040e38:	43f00000 	.word	0x43f00000
d0040e3c:	43a00000 	.word	0x43a00000
d0040e40:	00000000 	.word	0x00000000
d0040e44:	43a00000 	.word	0x43a00000
d0040e48:	43f00000 	.word	0x43f00000

d0040e4c <initBullets>:
d0040e4c:	4b0a      	ldr	r3, [pc, #40]	; (d0040e78 <initBullets+0x2c>)
d0040e4e:	2200      	movs	r2, #0
d0040e50:	f503 7160 	add.w	r1, r3, #896	; 0x380
d0040e54:	601a      	str	r2, [r3, #0]
d0040e56:	331c      	adds	r3, #28
d0040e58:	f843 2c18 	str.w	r2, [r3, #-24]
d0040e5c:	f843 2c14 	str.w	r2, [r3, #-20]
d0040e60:	f843 2c10 	str.w	r2, [r3, #-16]
d0040e64:	f843 2c0c 	str.w	r2, [r3, #-12]
d0040e68:	f843 2c08 	str.w	r2, [r3, #-8]
d0040e6c:	f843 2c04 	str.w	r2, [r3, #-4]
d0040e70:	428b      	cmp	r3, r1
d0040e72:	d1ef      	bne.n	d0040e54 <initBullets+0x8>
d0040e74:	4770      	bx	lr
d0040e76:	bf00      	nop
d0040e78:	d0043fa4 	.word	0xd0043fa4

d0040e7c <fireBullet>:
d0040e7c:	4b55      	ldr	r3, [pc, #340]	; (d0040fd4 <fireBullet+0x158>)
d0040e7e:	681b      	ldr	r3, [r3, #0]
d0040e80:	1e59      	subs	r1, r3, #1
d0040e82:	1c5a      	adds	r2, r3, #1
d0040e84:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0040e88:	2900      	cmp	r1, #0
d0040e8a:	b084      	sub	sp, #16
d0040e8c:	9302      	str	r3, [sp, #8]
d0040e8e:	9101      	str	r1, [sp, #4]
d0040e90:	9203      	str	r2, [sp, #12]
d0040e92:	da01      	bge.n	d0040e98 <fireBullet+0x1c>
d0040e94:	2323      	movs	r3, #35	; 0x23
d0040e96:	9301      	str	r3, [sp, #4]
d0040e98:	2a23      	cmp	r2, #35	; 0x23
d0040e9a:	dd01      	ble.n	d0040ea0 <fireBullet+0x24>
d0040e9c:	2300      	movs	r3, #0
d0040e9e:	9303      	str	r3, [sp, #12]
d0040ea0:	eef2 5a00 	vmov.f32	s11, #32	; 0x41000000  8.0
d0040ea4:	ae01      	add	r6, sp, #4
d0040ea6:	eeb3 6a06 	vmov.f32	s12, #54	; 0x41b00000  22.0
d0040eaa:	f10d 0c10 	add.w	ip, sp, #16
d0040eae:	2700      	movs	r7, #0
d0040eb0:	4d49      	ldr	r5, [pc, #292]	; (d0040fd8 <fireBullet+0x15c>)
d0040eb2:	f04f 0811 	mov.w	r8, #17
d0040eb6:	4849      	ldr	r0, [pc, #292]	; (d0040fdc <fireBullet+0x160>)
d0040eb8:	f8df e12c 	ldr.w	lr, [pc, #300]	; d0040fe8 <fireBullet+0x16c>
d0040ebc:	2200      	movs	r2, #0
d0040ebe:	e001      	b.n	d0040ec4 <fireBullet+0x48>
d0040ec0:	2a20      	cmp	r2, #32
d0040ec2:	d039      	beq.n	d0040f38 <fireBullet+0xbc>
d0040ec4:	ebc2 03c2 	rsb	r3, r2, r2, lsl #3
d0040ec8:	3201      	adds	r2, #1
d0040eca:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0040ece:	7d99      	ldrb	r1, [r3, #22]
d0040ed0:	2900      	cmp	r1, #0
d0040ed2:	d1f5      	bne.n	d0040ec0 <fireBullet+0x44>
d0040ed4:	f883 8016 	strb.w	r8, [r3, #22]
d0040ed8:	2701      	movs	r7, #1
d0040eda:	8a82      	ldrh	r2, [r0, #20]
d0040edc:	6831      	ldr	r1, [r6, #0]
d0040ede:	b212      	sxth	r2, r2
d0040ee0:	eb0e 04c1 	add.w	r4, lr, r1, lsl #3
d0040ee4:	3218      	adds	r2, #24
d0040ee6:	b249      	sxtb	r1, r1
d0040ee8:	edd4 6a00 	vldr	s13, [r4]
d0040eec:	ee07 2a90 	vmov	s15, r2
d0040ef0:	ed94 7a01 	vldr	s14, [r4, #4]
d0040ef4:	ee66 4aa5 	vmul.f32	s9, s13, s11
d0040ef8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040efc:	ee27 5a25 	vmul.f32	s10, s14, s11
d0040f00:	edc3 7a02 	vstr	s15, [r3, #8]
d0040f04:	8ac2      	ldrh	r2, [r0, #22]
d0040f06:	b212      	sxth	r2, r2
d0040f08:	3218      	adds	r2, #24
d0040f0a:	ee07 2a90 	vmov	s15, r2
d0040f0e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040f12:	edc3 7a03 	vstr	s15, [r3, #12]
d0040f16:	7519      	strb	r1, [r3, #20]
d0040f18:	edc3 4a00 	vstr	s9, [r3]
d0040f1c:	ed83 5a01 	vstr	s10, [r3, #4]
d0040f20:	edd3 7a02 	vldr	s15, [r3, #8]
d0040f24:	eee6 7a86 	vfma.f32	s15, s13, s12
d0040f28:	edc3 7a02 	vstr	s15, [r3, #8]
d0040f2c:	edd3 7a03 	vldr	s15, [r3, #12]
d0040f30:	eee7 7a46 	vfms.f32	s15, s14, s12
d0040f34:	edc3 7a03 	vstr	s15, [r3, #12]
d0040f38:	3604      	adds	r6, #4
d0040f3a:	4566      	cmp	r6, ip
d0040f3c:	d1be      	bne.n	d0040ebc <fireBullet+0x40>
d0040f3e:	b917      	cbnz	r7, d0040f46 <fireBullet+0xca>
d0040f40:	b004      	add	sp, #16
d0040f42:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0040f46:	4c26      	ldr	r4, [pc, #152]	; (d0040fe0 <fireBullet+0x164>)
d0040f48:	4638      	mov	r0, r7
d0040f4a:	4e26      	ldr	r6, [pc, #152]	; (d0040fe4 <fireBullet+0x168>)
d0040f4c:	f06f 057e 	mvn.w	r5, #126	; 0x7e
d0040f50:	7c23      	ldrb	r3, [r4, #16]
d0040f52:	7c62      	ldrb	r2, [r4, #17]
d0040f54:	7ca1      	ldrb	r1, [r4, #18]
d0040f56:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040f5a:	7ce2      	ldrb	r2, [r4, #19]
d0040f5c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040f60:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040f64:	689b      	ldr	r3, [r3, #8]
d0040f66:	689b      	ldr	r3, [r3, #8]
d0040f68:	4798      	blx	r3
d0040f6a:	4b1c      	ldr	r3, [pc, #112]	; (d0040fdc <fireBullet+0x160>)
d0040f6c:	4638      	mov	r0, r7
d0040f6e:	8a9b      	ldrh	r3, [r3, #20]
d0040f70:	7c21      	ldrb	r1, [r4, #16]
d0040f72:	3320      	adds	r3, #32
d0040f74:	b21b      	sxth	r3, r3
d0040f76:	3bf0      	subs	r3, #240	; 0xf0
d0040f78:	ebc3 13c3 	rsb	r3, r3, r3, lsl #7
d0040f7c:	fb86 2603 	smull	r2, r6, r6, r3
d0040f80:	17da      	asrs	r2, r3, #31
d0040f82:	4433      	add	r3, r6
d0040f84:	7c66      	ldrb	r6, [r4, #17]
d0040f86:	ebc2 13e3 	rsb	r3, r2, r3, asr #7
d0040f8a:	ea41 2206 	orr.w	r2, r1, r6, lsl #8
d0040f8e:	7ca6      	ldrb	r6, [r4, #18]
d0040f90:	b219      	sxth	r1, r3
d0040f92:	ea42 4306 	orr.w	r3, r2, r6, lsl #16
d0040f96:	7ce2      	ldrb	r2, [r4, #19]
d0040f98:	297f      	cmp	r1, #127	; 0x7f
d0040f9a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040f9e:	bfa8      	it	ge
d0040fa0:	217f      	movge	r1, #127	; 0x7f
d0040fa2:	689b      	ldr	r3, [r3, #8]
d0040fa4:	42a9      	cmp	r1, r5
d0040fa6:	699b      	ldr	r3, [r3, #24]
d0040fa8:	bfb8      	it	lt
d0040faa:	4629      	movlt	r1, r5
d0040fac:	b249      	sxtb	r1, r1
d0040fae:	4798      	blx	r3
d0040fb0:	7c23      	ldrb	r3, [r4, #16]
d0040fb2:	7c62      	ldrb	r2, [r4, #17]
d0040fb4:	4638      	mov	r0, r7
d0040fb6:	7ca1      	ldrb	r1, [r4, #18]
d0040fb8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040fbc:	7ce2      	ldrb	r2, [r4, #19]
d0040fbe:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040fc2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040fc6:	689b      	ldr	r3, [r3, #8]
d0040fc8:	685b      	ldr	r3, [r3, #4]
d0040fca:	b004      	add	sp, #16
d0040fcc:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0040fd0:	4718      	bx	r3
d0040fd2:	bf00      	nop
d0040fd4:	d00443a4 	.word	0xd00443a4
d0040fd8:	d0043fa4 	.word	0xd0043fa4
d0040fdc:	d0044380 	.word	0xd0044380
d0040fe0:	2001f000 	.word	0x2001f000
d0040fe4:	88888889 	.word	0x88888889
d0040fe8:	d0043284 	.word	0xd0043284

d0040fec <doBullets>:
d0040fec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0040fee:	2400      	movs	r4, #0
d0040ff0:	4d41      	ldr	r5, [pc, #260]	; (d00410f8 <doBullets+0x10c>)
d0040ff2:	4e42      	ldr	r6, [pc, #264]	; (d00410fc <doBullets+0x110>)
d0040ff4:	ed2d 8b02 	vpush	{d8}
d0040ff8:	eddf 8a41 	vldr	s17, [pc, #260]	; d0041100 <doBullets+0x114>
d0040ffc:	ed9f 8a41 	vldr	s16, [pc, #260]	; d0041104 <doBullets+0x118>
d0041000:	ebc4 03c4 	rsb	r3, r4, r4, lsl #3
d0041004:	00e2      	lsls	r2, r4, #3
d0041006:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d004100a:	7d99      	ldrb	r1, [r3, #22]
d004100c:	2900      	cmp	r1, #0
d004100e:	d06c      	beq.n	d00410ea <doBullets+0xfe>
d0041010:	7d99      	ldrb	r1, [r3, #22]
d0041012:	eebb 7a00 	vmov.f32	s14, #176	; 0xc1800000 -16.0
d0041016:	3901      	subs	r1, #1
d0041018:	b2c9      	uxtb	r1, r1
d004101a:	7599      	strb	r1, [r3, #22]
d004101c:	edd3 6a00 	vldr	s13, [r3]
d0041020:	edd3 7a02 	vldr	s15, [r3, #8]
d0041024:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0041028:	edc3 7a02 	vstr	s15, [r3, #8]
d004102c:	edd3 6a01 	vldr	s13, [r3, #4]
d0041030:	edd3 7a03 	vldr	s15, [r3, #12]
d0041034:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0041038:	edc3 7a03 	vstr	s15, [r3, #12]
d004103c:	edd3 7a02 	vldr	s15, [r3, #8]
d0041040:	eef4 7ac7 	vcmpe.f32	s15, s14
d0041044:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041048:	d501      	bpl.n	d004104e <doBullets+0x62>
d004104a:	edc3 8a02 	vstr	s17, [r3, #8]
d004104e:	1b13      	subs	r3, r2, r4
d0041050:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0041054:	edd3 7a02 	vldr	s15, [r3, #8]
d0041058:	eef4 7ae8 	vcmpe.f32	s15, s17
d004105c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041060:	dd01      	ble.n	d0041066 <doBullets+0x7a>
d0041062:	4929      	ldr	r1, [pc, #164]	; (d0041108 <doBullets+0x11c>)
d0041064:	6099      	str	r1, [r3, #8]
d0041066:	1b13      	subs	r3, r2, r4
d0041068:	eefb 7a00 	vmov.f32	s15, #176	; 0xc1800000 -16.0
d004106c:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0041070:	ed93 7a03 	vldr	s14, [r3, #12]
d0041074:	eeb4 7ae7 	vcmpe.f32	s14, s15
d0041078:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004107c:	d501      	bpl.n	d0041082 <doBullets+0x96>
d004107e:	ed83 8a03 	vstr	s16, [r3, #12]
d0041082:	1b13      	subs	r3, r2, r4
d0041084:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0041088:	edd3 7a03 	vldr	s15, [r3, #12]
d004108c:	eef4 7ac8 	vcmpe.f32	s15, s16
d0041090:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041094:	dd01      	ble.n	d004109a <doBullets+0xae>
d0041096:	491c      	ldr	r1, [pc, #112]	; (d0041108 <doBullets+0x11c>)
d0041098:	60d9      	str	r1, [r3, #12]
d004109a:	1b13      	subs	r3, r2, r4
d004109c:	491b      	ldr	r1, [pc, #108]	; (d004110c <doBullets+0x120>)
d004109e:	4817      	ldr	r0, [pc, #92]	; (d00410fc <doBullets+0x110>)
d00410a0:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d00410a4:	edd3 7a02 	vldr	s15, [r3, #8]
d00410a8:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00410ac:	ee17 2a90 	vmov	r2, s15
d00410b0:	b212      	sxth	r2, r2
d00410b2:	821a      	strh	r2, [r3, #16]
d00410b4:	edd3 7a03 	vldr	s15, [r3, #12]
d00410b8:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00410bc:	ee17 2a90 	vmov	r2, s15
d00410c0:	b212      	sxth	r2, r2
d00410c2:	825a      	strh	r2, [r3, #18]
d00410c4:	7d1a      	ldrb	r2, [r3, #20]
d00410c6:	7632      	strb	r2, [r6, #24]
d00410c8:	8a1a      	ldrh	r2, [r3, #16]
d00410ca:	82b2      	strh	r2, [r6, #20]
d00410cc:	8a5b      	ldrh	r3, [r3, #18]
d00410ce:	82f3      	strh	r3, [r6, #22]
d00410d0:	7b0b      	ldrb	r3, [r1, #12]
d00410d2:	7b4a      	ldrb	r2, [r1, #13]
d00410d4:	7b8f      	ldrb	r7, [r1, #14]
d00410d6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00410da:	7bca      	ldrb	r2, [r1, #15]
d00410dc:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d00410e0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00410e4:	685b      	ldr	r3, [r3, #4]
d00410e6:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00410e8:	4798      	blx	r3
d00410ea:	3401      	adds	r4, #1
d00410ec:	2c20      	cmp	r4, #32
d00410ee:	d187      	bne.n	d0041000 <doBullets+0x14>
d00410f0:	ecbd 8b02 	vpop	{d8}
d00410f4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00410f6:	bf00      	nop
d00410f8:	d0043fa4 	.word	0xd0043fa4
d00410fc:	d0044340 	.word	0xd0044340
d0041100:	43f00000 	.word	0x43f00000
d0041104:	43a00000 	.word	0x43a00000
d0041108:	c1800000 	.word	0xc1800000
d004110c:	2001f000 	.word	0x2001f000

d0041110 <SpawnAstroid.part.0>:
d0041110:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0041114:	2400      	movs	r4, #0
d0041116:	4690      	mov	r8, r2
d0041118:	4e40      	ldr	r6, [pc, #256]	; (d004121c <SpawnAstroid.part.0+0x10c>)
d004111a:	e002      	b.n	d0041122 <SpawnAstroid.part.0+0x12>
d004111c:	3401      	adds	r4, #1
d004111e:	2c20      	cmp	r4, #32
d0041120:	d068      	beq.n	d00411f4 <SpawnAstroid.part.0+0xe4>
d0041122:	eb04 0344 	add.w	r3, r4, r4, lsl #1
d0041126:	0067      	lsls	r7, r4, #1
d0041128:	eb06 05c3 	add.w	r5, r6, r3, lsl #3
d004112c:	00db      	lsls	r3, r3, #3
d004112e:	7b6a      	ldrb	r2, [r5, #13]
d0041130:	f105 0e0d 	add.w	lr, r5, #13
d0041134:	f002 0cff 	and.w	ip, r2, #255	; 0xff
d0041138:	2a00      	cmp	r2, #0
d004113a:	d1ef      	bne.n	d004111c <SpawnAstroid.part.0+0xc>
d004113c:	4a38      	ldr	r2, [pc, #224]	; (d0041220 <SpawnAstroid.part.0+0x110>)
d004113e:	46a9      	mov	r9, r5
d0041140:	f846 c003 	str.w	ip, [r6, r3]
d0041144:	eb02 0348 	add.w	r3, r2, r8, lsl #1
d0041148:	f812 2018 	ldrb.w	r2, [r2, r8, lsl #1]
d004114c:	f8c5 c00c 	str.w	ip, [r5, #12]
d0041150:	785b      	ldrb	r3, [r3, #1]
d0041152:	73ea      	strb	r2, [r5, #15]
d0041154:	f8c5 c004 	str.w	ip, [r5, #4]
d0041158:	736b      	strb	r3, [r5, #13]
d004115a:	f8c5 c008 	str.w	ip, [r5, #8]
d004115e:	8028      	strh	r0, [r5, #0]
d0041160:	f8c5 c010 	str.w	ip, [r5, #16]
d0041164:	f8c5 c014 	str.w	ip, [r5, #20]
d0041168:	8069      	strh	r1, [r5, #2]
d004116a:	2103      	movs	r1, #3
d004116c:	f06f 0002 	mvn.w	r0, #2
d0041170:	f000 fd7a 	bl	d0041c68 <sbx_rng_range>
d0041174:	b200      	sxth	r0, r0
d0041176:	f8a9 0004 	strh.w	r0, [r9, #4]
d004117a:	f8b9 3004 	ldrh.w	r3, [r9, #4]
d004117e:	b21b      	sxth	r3, r3
d0041180:	2b00      	cmp	r3, #0
d0041182:	d0f2      	beq.n	d004116a <SpawnAstroid.part.0+0x5a>
d0041184:	193d      	adds	r5, r7, r4
d0041186:	eb06 05c5 	add.w	r5, r6, r5, lsl #3
d004118a:	2103      	movs	r1, #3
d004118c:	f06f 0002 	mvn.w	r0, #2
d0041190:	f000 fd6a 	bl	d0041c68 <sbx_rng_range>
d0041194:	b200      	sxth	r0, r0
d0041196:	80e8      	strh	r0, [r5, #6]
d0041198:	88eb      	ldrh	r3, [r5, #6]
d004119a:	b21b      	sxth	r3, r3
d004119c:	2b00      	cmp	r3, #0
d004119e:	d0f4      	beq.n	d004118a <SpawnAstroid.part.0+0x7a>
d00411a0:	f885 800c 	strb.w	r8, [r5, #12]
d00411a4:	f1b8 0f00 	cmp.w	r8, #0
d00411a8:	d026      	beq.n	d00411f8 <SpawnAstroid.part.0+0xe8>
d00411aa:	f1b8 0f01 	cmp.w	r8, #1
d00411ae:	d129      	bne.n	d0041204 <SpawnAstroid.part.0+0xf4>
d00411b0:	2340      	movs	r3, #64	; 0x40
d00411b2:	2218      	movs	r2, #24
d00411b4:	816b      	strh	r3, [r5, #10]
d00411b6:	812b      	strh	r3, [r5, #8]
d00411b8:	74ea      	strb	r2, [r5, #19]
d00411ba:	443c      	add	r4, r7
d00411bc:	2000      	movs	r0, #0
d00411be:	eb06 06c4 	add.w	r6, r6, r4, lsl #3
d00411c2:	7cf1      	ldrb	r1, [r6, #19]
d00411c4:	3901      	subs	r1, #1
d00411c6:	f000 fd4f 	bl	d0041c68 <sbx_rng_range>
d00411ca:	4603      	mov	r3, r0
d00411cc:	2103      	movs	r1, #3
d00411ce:	2001      	movs	r0, #1
d00411d0:	b25b      	sxtb	r3, r3
d00411d2:	7433      	strb	r3, [r6, #16]
d00411d4:	f000 fd48 	bl	d0041c68 <sbx_rng_range>
d00411d8:	4603      	mov	r3, r0
d00411da:	2104      	movs	r1, #4
d00411dc:	2001      	movs	r0, #1
d00411de:	b2db      	uxtb	r3, r3
d00411e0:	7473      	strb	r3, [r6, #17]
d00411e2:	f000 fd41 	bl	d0041c68 <sbx_rng_range>
d00411e6:	f010 0f01 	tst.w	r0, #1
d00411ea:	bf14      	ite	ne
d00411ec:	f04f 33ff 	movne.w	r3, #4294967295	; 0xffffffff
d00411f0:	2301      	moveq	r3, #1
d00411f2:	73b3      	strb	r3, [r6, #14]
d00411f4:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d00411f8:	2360      	movs	r3, #96	; 0x60
d00411fa:	2218      	movs	r2, #24
d00411fc:	816b      	strh	r3, [r5, #10]
d00411fe:	812b      	strh	r3, [r5, #8]
d0041200:	74ea      	strb	r2, [r5, #19]
d0041202:	e7da      	b.n	d00411ba <SpawnAstroid.part.0+0xaa>
d0041204:	f1b8 0f02 	cmp.w	r8, #2
d0041208:	d0d2      	beq.n	d00411b0 <SpawnAstroid.part.0+0xa0>
d004120a:	f1b8 0f03 	cmp.w	r8, #3
d004120e:	d1d4      	bne.n	d00411ba <SpawnAstroid.part.0+0xaa>
d0041210:	2320      	movs	r3, #32
d0041212:	2210      	movs	r2, #16
d0041214:	816b      	strh	r3, [r5, #10]
d0041216:	812b      	strh	r3, [r5, #8]
d0041218:	74ea      	strb	r2, [r5, #19]
d004121a:	e7ce      	b.n	d00411ba <SpawnAstroid.part.0+0xaa>
d004121c:	d0044440 	.word	0xd0044440
d0041220:	d0043e60 	.word	0xd0043e60

d0041224 <SpawnAstroid>:
d0041224:	2a03      	cmp	r2, #3
d0041226:	d801      	bhi.n	d004122c <SpawnAstroid+0x8>
d0041228:	f7ff bf72 	b.w	d0041110 <SpawnAstroid.part.0>
d004122c:	4770      	bx	lr
d004122e:	bf00      	nop

d0041230 <initAstroids>:
d0041230:	4b09      	ldr	r3, [pc, #36]	; (d0041258 <initAstroids+0x28>)
d0041232:	2200      	movs	r2, #0
d0041234:	f503 7140 	add.w	r1, r3, #768	; 0x300
d0041238:	601a      	str	r2, [r3, #0]
d004123a:	3318      	adds	r3, #24
d004123c:	f843 2c14 	str.w	r2, [r3, #-20]
d0041240:	f843 2c10 	str.w	r2, [r3, #-16]
d0041244:	f843 2c0c 	str.w	r2, [r3, #-12]
d0041248:	f843 2c08 	str.w	r2, [r3, #-8]
d004124c:	f843 2c04 	str.w	r2, [r3, #-4]
d0041250:	428b      	cmp	r3, r1
d0041252:	d1f1      	bne.n	d0041238 <initAstroids+0x8>
d0041254:	4770      	bx	lr
d0041256:	bf00      	nop
d0041258:	d0044440 	.word	0xd0044440

d004125c <proc_astroids>:
d004125c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041260:	f8df b014 	ldr.w	fp, [pc, #20]	; d0041278 <proc_astroids+0x1c>
d0041264:	2600      	movs	r6, #0
d0041266:	4f03      	ldr	r7, [pc, #12]	; (d0041274 <proc_astroids+0x18>)
d0041268:	ed2d 8b02 	vpush	{d8}
d004126c:	b089      	sub	sp, #36	; 0x24
d004126e:	f8cd b004 	str.w	fp, [sp, #4]
d0041272:	e00a      	b.n	d004128a <proc_astroids+0x2e>
d0041274:	d0044340 	.word	0xd0044340
d0041278:	d0044440 	.word	0xd0044440
d004127c:	9b01      	ldr	r3, [sp, #4]
d004127e:	3601      	adds	r6, #1
d0041280:	3318      	adds	r3, #24
d0041282:	2e20      	cmp	r6, #32
d0041284:	9301      	str	r3, [sp, #4]
d0041286:	f000 8223 	beq.w	d00416d0 <proc_astroids+0x474>
d004128a:	eb06 0346 	add.w	r3, r6, r6, lsl #1
d004128e:	ea4f 0846 	mov.w	r8, r6, lsl #1
d0041292:	eb0b 03c3 	add.w	r3, fp, r3, lsl #3
d0041296:	7b5a      	ldrb	r2, [r3, #13]
d0041298:	2a00      	cmp	r2, #0
d004129a:	d0ef      	beq.n	d004127c <proc_astroids+0x20>
d004129c:	7b1a      	ldrb	r2, [r3, #12]
d004129e:	7c99      	ldrb	r1, [r3, #18]
d00412a0:	b2d2      	uxtb	r2, r2
d00412a2:	3101      	adds	r1, #1
d00412a4:	b2c9      	uxtb	r1, r1
d00412a6:	7499      	strb	r1, [r3, #18]
d00412a8:	7c98      	ldrb	r0, [r3, #18]
d00412aa:	7c59      	ldrb	r1, [r3, #17]
d00412ac:	4288      	cmp	r0, r1
d00412ae:	d918      	bls.n	d00412e2 <proc_astroids+0x86>
d00412b0:	2100      	movs	r1, #0
d00412b2:	7499      	strb	r1, [r3, #18]
d00412b4:	7b98      	ldrb	r0, [r3, #14]
d00412b6:	7c19      	ldrb	r1, [r3, #16]
d00412b8:	4401      	add	r1, r0
d00412ba:	b249      	sxtb	r1, r1
d00412bc:	7419      	strb	r1, [r3, #16]
d00412be:	7c19      	ldrb	r1, [r3, #16]
d00412c0:	0609      	lsls	r1, r1, #24
d00412c2:	d503      	bpl.n	d00412cc <proc_astroids+0x70>
d00412c4:	7cd9      	ldrb	r1, [r3, #19]
d00412c6:	3901      	subs	r1, #1
d00412c8:	b249      	sxtb	r1, r1
d00412ca:	7419      	strb	r1, [r3, #16]
d00412cc:	eb08 0306 	add.w	r3, r8, r6
d00412d0:	eb0b 03c3 	add.w	r3, fp, r3, lsl #3
d00412d4:	7cd8      	ldrb	r0, [r3, #19]
d00412d6:	7c19      	ldrb	r1, [r3, #16]
d00412d8:	b249      	sxtb	r1, r1
d00412da:	4288      	cmp	r0, r1
d00412dc:	dc01      	bgt.n	d00412e2 <proc_astroids+0x86>
d00412de:	2100      	movs	r1, #0
d00412e0:	7419      	strb	r1, [r3, #16]
d00412e2:	eb08 0106 	add.w	r1, r8, r6
d00412e6:	eb0b 00c1 	add.w	r0, fp, r1, lsl #3
d00412ea:	8884      	ldrh	r4, [r0, #4]
d00412ec:	f83b 3031 	ldrh.w	r3, [fp, r1, lsl #3]
d00412f0:	4423      	add	r3, r4
d00412f2:	b21b      	sxth	r3, r3
d00412f4:	f82b 3031 	strh.w	r3, [fp, r1, lsl #3]
d00412f8:	88c4      	ldrh	r4, [r0, #6]
d00412fa:	8843      	ldrh	r3, [r0, #2]
d00412fc:	4423      	add	r3, r4
d00412fe:	b21b      	sxth	r3, r3
d0041300:	8043      	strh	r3, [r0, #2]
d0041302:	f83b 3031 	ldrh.w	r3, [fp, r1, lsl #3]
d0041306:	b21b      	sxth	r3, r3
d0041308:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d004130c:	dd04      	ble.n	d0041318 <proc_astroids+0xbc>
d004130e:	8903      	ldrh	r3, [r0, #8]
d0041310:	425b      	negs	r3, r3
d0041312:	b21b      	sxth	r3, r3
d0041314:	f82b 3031 	strh.w	r3, [fp, r1, lsl #3]
d0041318:	eb08 0306 	add.w	r3, r8, r6
d004131c:	eb0b 03c3 	add.w	r3, fp, r3, lsl #3
d0041320:	8859      	ldrh	r1, [r3, #2]
d0041322:	b209      	sxth	r1, r1
d0041324:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d0041328:	dd03      	ble.n	d0041332 <proc_astroids+0xd6>
d004132a:	8959      	ldrh	r1, [r3, #10]
d004132c:	4249      	negs	r1, r1
d004132e:	b209      	sxth	r1, r1
d0041330:	8059      	strh	r1, [r3, #2]
d0041332:	eb08 0006 	add.w	r0, r8, r6
d0041336:	eb0b 03c0 	add.w	r3, fp, r0, lsl #3
d004133a:	f83b 1030 	ldrh.w	r1, [fp, r0, lsl #3]
d004133e:	891b      	ldrh	r3, [r3, #8]
d0041340:	b209      	sxth	r1, r1
d0041342:	b21b      	sxth	r3, r3
d0041344:	425b      	negs	r3, r3
d0041346:	4299      	cmp	r1, r3
d0041348:	da03      	bge.n	d0041352 <proc_astroids+0xf6>
d004134a:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d004134e:	f82b 3030 	strh.w	r3, [fp, r0, lsl #3]
d0041352:	eb08 0106 	add.w	r1, r8, r6
d0041356:	eb0b 01c1 	add.w	r1, fp, r1, lsl #3
d004135a:	8848      	ldrh	r0, [r1, #2]
d004135c:	894b      	ldrh	r3, [r1, #10]
d004135e:	b200      	sxth	r0, r0
d0041360:	b21b      	sxth	r3, r3
d0041362:	425b      	negs	r3, r3
d0041364:	4298      	cmp	r0, r3
d0041366:	da02      	bge.n	d004136e <proc_astroids+0x112>
d0041368:	f44f 73a0 	mov.w	r3, #320	; 0x140
d004136c:	804b      	strh	r3, [r1, #2]
d004136e:	eb08 0006 	add.w	r0, r8, r6
d0041372:	0151      	lsls	r1, r2, #5
d0041374:	4cb4      	ldr	r4, [pc, #720]	; (d0041648 <proc_astroids+0x3ec>)
d0041376:	2500      	movs	r5, #0
d0041378:	9102      	str	r1, [sp, #8]
d004137a:	eb0b 01c0 	add.w	r1, fp, r0, lsl #3
d004137e:	eb04 1342 	add.w	r3, r4, r2, lsl #5
d0041382:	f8df a2d4 	ldr.w	sl, [pc, #724]	; d0041658 <proc_astroids+0x3fc>
d0041386:	f891 c010 	ldrb.w	ip, [r1, #16]
d004138a:	4699      	mov	r9, r3
d004138c:	4caf      	ldr	r4, [pc, #700]	; (d004164c <proc_astroids+0x3f0>)
d004138e:	f883 c018 	strb.w	ip, [r3, #24]
d0041392:	f83b c030 	ldrh.w	ip, [fp, r0, lsl #3]
d0041396:	9801      	ldr	r0, [sp, #4]
d0041398:	f8a3 c014 	strh.w	ip, [r3, #20]
d004139c:	f8b1 c002 	ldrh.w	ip, [r1, #2]
d00413a0:	f8a3 c016 	strh.w	ip, [r3, #22]
d00413a4:	f891 c014 	ldrb.w	ip, [r1, #20]
d00413a8:	fa5f fc8c 	uxtb.w	ip, ip
d00413ac:	f883 c004 	strb.w	ip, [r3, #4]
d00413b0:	7d89      	ldrb	r1, [r1, #22]
d00413b2:	b2c9      	uxtb	r1, r1
d00413b4:	7199      	strb	r1, [r3, #6]
d00413b6:	f7ff fa7b 	bl	d00408b0 <ShieldBounceAsteroid>
d00413ba:	7da3      	ldrb	r3, [r4, #22]
d00413bc:	4639      	mov	r1, r7
d00413be:	4648      	mov	r0, r9
d00413c0:	b1e3      	cbz	r3, d00413fc <proc_astroids+0x1a0>
d00413c2:	f9b4 c010 	ldrsh.w	ip, [r4, #16]
d00413c6:	f9b4 2012 	ldrsh.w	r2, [r4, #18]
d00413ca:	7d23      	ldrb	r3, [r4, #20]
d00413cc:	f8a7 c014 	strh.w	ip, [r7, #20]
d00413d0:	82fa      	strh	r2, [r7, #22]
d00413d2:	763b      	strb	r3, [r7, #24]
d00413d4:	f89a e00c 	ldrb.w	lr, [sl, #12]
d00413d8:	f89a c00d 	ldrb.w	ip, [sl, #13]
d00413dc:	f89a 200e 	ldrb.w	r2, [sl, #14]
d00413e0:	ea4e 2c0c 	orr.w	ip, lr, ip, lsl #8
d00413e4:	f89a 300f 	ldrb.w	r3, [sl, #15]
d00413e8:	ea4c 4202 	orr.w	r2, ip, r2, lsl #16
d00413ec:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00413f0:	685b      	ldr	r3, [r3, #4]
d00413f2:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d00413f4:	4798      	blx	r3
d00413f6:	2802      	cmp	r0, #2
d00413f8:	f000 80f6 	beq.w	d00415e8 <proc_astroids+0x38c>
d00413fc:	3501      	adds	r5, #1
d00413fe:	341c      	adds	r4, #28
d0041400:	2d20      	cmp	r5, #32
d0041402:	d1da      	bne.n	d00413ba <proc_astroids+0x15e>
d0041404:	f89a 100c 	ldrb.w	r1, [sl, #12]
d0041408:	4648      	mov	r0, r9
d004140a:	f89a 300d 	ldrb.w	r3, [sl, #13]
d004140e:	f89a 200e 	ldrb.w	r2, [sl, #14]
d0041412:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0041416:	f89a 300f 	ldrb.w	r3, [sl, #15]
d004141a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004141e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0041422:	685b      	ldr	r3, [r3, #4]
d0041424:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0041426:	4798      	blx	r3
d0041428:	4a87      	ldr	r2, [pc, #540]	; (d0041648 <proc_astroids+0x3ec>)
d004142a:	eb08 0106 	add.w	r1, r8, r6
d004142e:	9b02      	ldr	r3, [sp, #8]
d0041430:	2000      	movs	r0, #0
d0041432:	4413      	add	r3, r2
d0041434:	eb0b 02c1 	add.w	r2, fp, r1, lsl #3
d0041438:	7118      	strb	r0, [r3, #4]
d004143a:	7b53      	ldrb	r3, [r2, #13]
d004143c:	2b00      	cmp	r3, #0
d004143e:	f47f af1d 	bne.w	d004127c <proc_astroids+0x20>
d0041442:	7b14      	ldrb	r4, [r2, #12]
d0041444:	f04f 0c00 	mov.w	ip, #0
d0041448:	f83b 3031 	ldrh.w	r3, [fp, r1, lsl #3]
d004144c:	8851      	ldrh	r1, [r2, #2]
d004144e:	b2e4      	uxtb	r4, r4
d0041450:	8912      	ldrh	r2, [r2, #8]
d0041452:	b218      	sxth	r0, r3
d0041454:	b209      	sxth	r1, r1
d0041456:	b212      	sxth	r2, r2
d0041458:	9005      	str	r0, [sp, #20]
d004145a:	9106      	str	r1, [sp, #24]
d004145c:	eb08 0006 	add.w	r0, r8, r6
d0041460:	f1b2 0140 	subs.w	r1, r2, #64	; 0x40
d0041464:	eb0b 00c0 	add.w	r0, fp, r0, lsl #3
d0041468:	bf48      	it	mi
d004146a:	f1a2 013f 	submi.w	r1, r2, #63	; 0x3f
d004146e:	eb08 0206 	add.w	r2, r8, r6
d0041472:	1049      	asrs	r1, r1, #1
d0041474:	eb0b 02c2 	add.w	r2, fp, r2, lsl #3
d0041478:	9103      	str	r1, [sp, #12]
d004147a:	8951      	ldrh	r1, [r2, #10]
d004147c:	7bc5      	ldrb	r5, [r0, #15]
d004147e:	f880 c00d 	strb.w	ip, [r0, #13]
d0041482:	b209      	sxth	r1, r1
d0041484:	8900      	ldrh	r0, [r0, #8]
d0041486:	f06f 0c7e 	mvn.w	ip, #126	; 0x7e
d004148a:	f1b1 0240 	subs.w	r2, r1, #64	; 0x40
d004148e:	f340 004e 	sbfx	r0, r0, #1, #15
d0041492:	bf48      	it	mi
d0041494:	f1a1 023f 	submi.w	r2, r1, #63	; 0x3f
d0041498:	496d      	ldr	r1, [pc, #436]	; (d0041650 <proc_astroids+0x3f4>)
d004149a:	4403      	add	r3, r0
d004149c:	1052      	asrs	r2, r2, #1
d004149e:	6808      	ldr	r0, [r1, #0]
d00414a0:	b21b      	sxth	r3, r3
d00414a2:	4428      	add	r0, r5
d00414a4:	9204      	str	r2, [sp, #16]
d00414a6:	3bf0      	subs	r3, #240	; 0xf0
d00414a8:	4a6a      	ldr	r2, [pc, #424]	; (d0041654 <proc_astroids+0x3f8>)
d00414aa:	6008      	str	r0, [r1, #0]
d00414ac:	ebc3 13c3 	rsb	r3, r3, r3, lsl #7
d00414b0:	fb82 1203 	smull	r1, r2, r2, r3
d00414b4:	17d9      	asrs	r1, r3, #31
d00414b6:	4413      	add	r3, r2
d00414b8:	ebc1 11e3 	rsb	r1, r1, r3, asr #7
d00414bc:	f89a 3010 	ldrb.w	r3, [sl, #16]
d00414c0:	b209      	sxth	r1, r1
d00414c2:	297f      	cmp	r1, #127	; 0x7f
d00414c4:	bfa8      	it	ge
d00414c6:	217f      	movge	r1, #127	; 0x7f
d00414c8:	4561      	cmp	r1, ip
d00414ca:	bfb8      	it	lt
d00414cc:	4661      	movlt	r1, ip
d00414ce:	460d      	mov	r5, r1
d00414d0:	2c00      	cmp	r4, #0
d00414d2:	f040 80c3 	bne.w	d004165c <proc_astroids+0x400>
d00414d6:	f89a 2011 	ldrb.w	r2, [sl, #17]
d00414da:	2101      	movs	r1, #1
d00414dc:	2004      	movs	r0, #4
d00414de:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00414e2:	f89a 2012 	ldrb.w	r2, [sl, #18]
d00414e6:	ee08 1a10 	vmov	s16, r1
d00414ea:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00414ee:	f89a 2013 	ldrb.w	r2, [sl, #19]
d00414f2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00414f6:	2202      	movs	r2, #2
d00414f8:	9202      	str	r2, [sp, #8]
d00414fa:	689b      	ldr	r3, [r3, #8]
d00414fc:	689b      	ldr	r3, [r3, #8]
d00414fe:	4798      	blx	r3
d0041500:	f89a 3010 	ldrb.w	r3, [sl, #16]
d0041504:	f89a 2011 	ldrb.w	r2, [sl, #17]
d0041508:	b269      	sxtb	r1, r5
d004150a:	2004      	movs	r0, #4
d004150c:	2500      	movs	r5, #0
d004150e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041512:	f89a 2012 	ldrb.w	r2, [sl, #18]
d0041516:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004151a:	f89a 2013 	ldrb.w	r2, [sl, #19]
d004151e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041522:	689b      	ldr	r3, [r3, #8]
d0041524:	699b      	ldr	r3, [r3, #24]
d0041526:	4798      	blx	r3
d0041528:	f89a 3010 	ldrb.w	r3, [sl, #16]
d004152c:	f89a 2011 	ldrb.w	r2, [sl, #17]
d0041530:	2004      	movs	r0, #4
d0041532:	f89a 1012 	ldrb.w	r1, [sl, #18]
d0041536:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004153a:	f89a 2013 	ldrb.w	r2, [sl, #19]
d004153e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0041542:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041546:	689b      	ldr	r3, [r3, #8]
d0041548:	685b      	ldr	r3, [r3, #4]
d004154a:	4798      	blx	r3
d004154c:	9a05      	ldr	r2, [sp, #20]
d004154e:	9607      	str	r6, [sp, #28]
d0041550:	f102 0a20 	add.w	sl, r2, #32
d0041554:	f1a2 0320 	sub.w	r3, r2, #32
d0041558:	9a06      	ldr	r2, [sp, #24]
d004155a:	4656      	mov	r6, sl
d004155c:	f102 0820 	add.w	r8, r2, #32
d0041560:	f1a2 0920 	sub.w	r9, r2, #32
d0041564:	46c2      	mov	sl, r8
d0041566:	4698      	mov	r8, r3
d0041568:	4631      	mov	r1, r6
d004156a:	4640      	mov	r0, r8
d004156c:	f000 fb7c 	bl	d0041c68 <sbx_rng_range>
d0041570:	4651      	mov	r1, sl
d0041572:	4604      	mov	r4, r0
d0041574:	4648      	mov	r0, r9
d0041576:	f000 fb77 	bl	d0041c68 <sbx_rng_range>
d004157a:	4601      	mov	r1, r0
d004157c:	3501      	adds	r5, #1
d004157e:	ee18 2a10 	vmov	r2, s16
d0041582:	b220      	sxth	r0, r4
d0041584:	b209      	sxth	r1, r1
d0041586:	f7ff fdc3 	bl	d0041110 <SpawnAstroid.part.0>
d004158a:	9b02      	ldr	r3, [sp, #8]
d004158c:	b2ea      	uxtb	r2, r5
d004158e:	4293      	cmp	r3, r2
d0041590:	d8ea      	bhi.n	d0041568 <proc_astroids+0x30c>
d0041592:	2303      	movs	r3, #3
d0041594:	9e07      	ldr	r6, [sp, #28]
d0041596:	9302      	str	r3, [sp, #8]
d0041598:	9b05      	ldr	r3, [sp, #20]
d004159a:	f04f 0a00 	mov.w	sl, #0
d004159e:	f103 0420 	add.w	r4, r3, #32
d00415a2:	f1a3 0820 	sub.w	r8, r3, #32
d00415a6:	9b06      	ldr	r3, [sp, #24]
d00415a8:	9606      	str	r6, [sp, #24]
d00415aa:	4656      	mov	r6, sl
d00415ac:	f103 0520 	add.w	r5, r3, #32
d00415b0:	4699      	mov	r9, r3
d00415b2:	b386      	cbz	r6, d0041616 <proc_astroids+0x3ba>
d00415b4:	4621      	mov	r1, r4
d00415b6:	4640      	mov	r0, r8
d00415b8:	f000 fb56 	bl	d0041c68 <sbx_rng_range>
d00415bc:	4629      	mov	r1, r5
d00415be:	4682      	mov	sl, r0
d00415c0:	f1a9 0020 	sub.w	r0, r9, #32
d00415c4:	f000 fb50 	bl	d0041c68 <sbx_rng_range>
d00415c8:	9b03      	ldr	r3, [sp, #12]
d00415ca:	4601      	mov	r1, r0
d00415cc:	3601      	adds	r6, #1
d00415ce:	fa03 f08a 	sxtah	r0, r3, sl
d00415d2:	9b04      	ldr	r3, [sp, #16]
d00415d4:	fa03 f181 	sxtah	r1, r3, r1
d00415d8:	f000 fa00 	bl	d00419dc <spawnExplode>
d00415dc:	9b02      	ldr	r3, [sp, #8]
d00415de:	b2f2      	uxtb	r2, r6
d00415e0:	429a      	cmp	r2, r3
d00415e2:	d3e6      	bcc.n	d00415b2 <proc_astroids+0x356>
d00415e4:	9e06      	ldr	r6, [sp, #24]
d00415e6:	e649      	b.n	d004127c <proc_astroids+0x20>
d00415e8:	4a17      	ldr	r2, [pc, #92]	; (d0041648 <proc_astroids+0x3ec>)
d00415ea:	eb08 0306 	add.w	r3, r8, r6
d00415ee:	9902      	ldr	r1, [sp, #8]
d00415f0:	20a8      	movs	r0, #168	; 0xa8
d00415f2:	eb0b 03c3 	add.w	r3, fp, r3, lsl #3
d00415f6:	2401      	movs	r4, #1
d00415f8:	1851      	adds	r1, r2, r1
d00415fa:	ebc5 05c5 	rsb	r5, r5, r5, lsl #3
d00415fe:	4a13      	ldr	r2, [pc, #76]	; (d004164c <proc_astroids+0x3f0>)
d0041600:	710c      	strb	r4, [r1, #4]
d0041602:	7148      	strb	r0, [r1, #5]
d0041604:	eb02 0585 	add.w	r5, r2, r5, lsl #2
d0041608:	7b59      	ldrb	r1, [r3, #13]
d004160a:	2000      	movs	r0, #0
d004160c:	3901      	subs	r1, #1
d004160e:	b2c9      	uxtb	r1, r1
d0041610:	7359      	strb	r1, [r3, #13]
d0041612:	75a8      	strb	r0, [r5, #22]
d0041614:	e6f6      	b.n	d0041404 <proc_astroids+0x1a8>
d0041616:	9905      	ldr	r1, [sp, #20]
d0041618:	2601      	movs	r6, #1
d004161a:	4608      	mov	r0, r1
d004161c:	f000 fb24 	bl	d0041c68 <sbx_rng_range>
d0041620:	4649      	mov	r1, r9
d0041622:	4682      	mov	sl, r0
d0041624:	4648      	mov	r0, r9
d0041626:	f000 fb1f 	bl	d0041c68 <sbx_rng_range>
d004162a:	9b03      	ldr	r3, [sp, #12]
d004162c:	4601      	mov	r1, r0
d004162e:	fa03 f08a 	sxtah	r0, r3, sl
d0041632:	9b04      	ldr	r3, [sp, #16]
d0041634:	fa03 f181 	sxtah	r1, r3, r1
d0041638:	f000 f9d0 	bl	d00419dc <spawnExplode>
d004163c:	9b02      	ldr	r3, [sp, #8]
d004163e:	429e      	cmp	r6, r3
d0041640:	d3b8      	bcc.n	d00415b4 <proc_astroids+0x358>
d0041642:	9e06      	ldr	r6, [sp, #24]
d0041644:	e61a      	b.n	d004127c <proc_astroids+0x20>
d0041646:	bf00      	nop
d0041648:	d00443c0 	.word	0xd00443c0
d004164c:	d0043fa4 	.word	0xd0043fa4
d0041650:	d0043e8c 	.word	0xd0043e8c
d0041654:	88888889 	.word	0x88888889
d0041658:	2001f000 	.word	0x2001f000
d004165c:	2c01      	cmp	r4, #1
d004165e:	d03c      	beq.n	d00416da <proc_astroids+0x47e>
d0041660:	f89a 2011 	ldrb.w	r2, [sl, #17]
d0041664:	2101      	movs	r1, #1
d0041666:	2005      	movs	r0, #5
d0041668:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004166c:	f89a 2012 	ldrb.w	r2, [sl, #18]
d0041670:	9102      	str	r1, [sp, #8]
d0041672:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041676:	f89a 2013 	ldrb.w	r2, [sl, #19]
d004167a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004167e:	689b      	ldr	r3, [r3, #8]
d0041680:	689b      	ldr	r3, [r3, #8]
d0041682:	4798      	blx	r3
d0041684:	f89a 3010 	ldrb.w	r3, [sl, #16]
d0041688:	f89a 2011 	ldrb.w	r2, [sl, #17]
d004168c:	b269      	sxtb	r1, r5
d004168e:	2005      	movs	r0, #5
d0041690:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041694:	f89a 2012 	ldrb.w	r2, [sl, #18]
d0041698:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004169c:	f89a 2013 	ldrb.w	r2, [sl, #19]
d00416a0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00416a4:	689b      	ldr	r3, [r3, #8]
d00416a6:	699b      	ldr	r3, [r3, #24]
d00416a8:	4798      	blx	r3
d00416aa:	f89a 3010 	ldrb.w	r3, [sl, #16]
d00416ae:	f89a 2011 	ldrb.w	r2, [sl, #17]
d00416b2:	2005      	movs	r0, #5
d00416b4:	f89a 1012 	ldrb.w	r1, [sl, #18]
d00416b8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00416bc:	f89a 2013 	ldrb.w	r2, [sl, #19]
d00416c0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00416c4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00416c8:	689b      	ldr	r3, [r3, #8]
d00416ca:	685b      	ldr	r3, [r3, #4]
d00416cc:	4798      	blx	r3
d00416ce:	e763      	b.n	d0041598 <proc_astroids+0x33c>
d00416d0:	b009      	add	sp, #36	; 0x24
d00416d2:	ecbd 8b02 	vpop	{d8}
d00416d6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00416da:	f89a 2011 	ldrb.w	r2, [sl, #17]
d00416de:	2103      	movs	r1, #3
d00416e0:	2004      	movs	r0, #4
d00416e2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00416e6:	f89a 2012 	ldrb.w	r2, [sl, #18]
d00416ea:	ee08 1a10 	vmov	s16, r1
d00416ee:	9102      	str	r1, [sp, #8]
d00416f0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00416f4:	f89a 2013 	ldrb.w	r2, [sl, #19]
d00416f8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00416fc:	e6fd      	b.n	d00414fa <proc_astroids+0x29e>
d00416fe:	bf00      	nop

d0041700 <drawText>:
d0041700:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041704:	b083      	sub	sp, #12
d0041706:	7804      	ldrb	r4, [r0, #0]
d0041708:	9101      	str	r1, [sp, #4]
d004170a:	b35c      	cbz	r4, d0041764 <drawText+0x64>
d004170c:	4690      	mov	r8, r2
d004170e:	4683      	mov	fp, r0
d0041710:	460f      	mov	r7, r1
d0041712:	f8df 9070 	ldr.w	r9, [pc, #112]	; d0041784 <drawText+0x84>
d0041716:	f8df a070 	ldr.w	sl, [pc, #112]	; d0041788 <drawText+0x88>
d004171a:	f1a4 0320 	sub.w	r3, r4, #32
d004171e:	2c0a      	cmp	r4, #10
d0041720:	4818      	ldr	r0, [pc, #96]	; (d0041784 <drawText+0x84>)
d0041722:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0041726:	d020      	beq.n	d004176a <drawText+0x6a>
d0041728:	b2db      	uxtb	r3, r3
d004172a:	f8a9 7014 	strh.w	r7, [r9, #20]
d004172e:	f8a9 8016 	strh.w	r8, [r9, #22]
d0041732:	3710      	adds	r7, #16
d0041734:	f889 3018 	strb.w	r3, [r9, #24]
d0041738:	f89a 600c 	ldrb.w	r6, [sl, #12]
d004173c:	b23f      	sxth	r7, r7
d004173e:	f89a 500d 	ldrb.w	r5, [sl, #13]
d0041742:	f89a 400e 	ldrb.w	r4, [sl, #14]
d0041746:	ea46 2505 	orr.w	r5, r6, r5, lsl #8
d004174a:	f89a 300f 	ldrb.w	r3, [sl, #15]
d004174e:	ea45 4404 	orr.w	r4, r5, r4, lsl #16
d0041752:	ea44 6303 	orr.w	r3, r4, r3, lsl #24
d0041756:	685b      	ldr	r3, [r3, #4]
d0041758:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d004175a:	4798      	blx	r3
d004175c:	f81b 4f01 	ldrb.w	r4, [fp, #1]!
d0041760:	2c00      	cmp	r4, #0
d0041762:	d1da      	bne.n	d004171a <drawText+0x1a>
d0041764:	b003      	add	sp, #12
d0041766:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d004176a:	f108 0810 	add.w	r8, r8, #16
d004176e:	f81b 4f01 	ldrb.w	r4, [fp, #1]!
d0041772:	9f01      	ldr	r7, [sp, #4]
d0041774:	fa0f f888 	sxth.w	r8, r8
d0041778:	2c00      	cmp	r4, #0
d004177a:	d1ce      	bne.n	d004171a <drawText+0x1a>
d004177c:	b003      	add	sp, #12
d004177e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0041782:	bf00      	nop
d0041784:	d0044b60 	.word	0xd0044b60
d0041788:	2001f000 	.word	0x2001f000

d004178c <initFlames>:
d004178c:	b538      	push	{r3, r4, r5, lr}
d004178e:	4c06      	ldr	r4, [pc, #24]	; (d00417a8 <initFlames+0x1c>)
d0041790:	f504 6580 	add.w	r5, r4, #1024	; 0x400
d0041794:	4620      	mov	r0, r4
d0041796:	3420      	adds	r4, #32
d0041798:	2220      	movs	r2, #32
d004179a:	2100      	movs	r1, #0
d004179c:	f7fe fc4e 	bl	d004003c <memset>
d00417a0:	42ac      	cmp	r4, r5
d00417a2:	d1f7      	bne.n	d0041794 <initFlames+0x8>
d00417a4:	bd38      	pop	{r3, r4, r5, pc}
d00417a6:	bf00      	nop
d00417a8:	d0044ba0 	.word	0xd0044ba0

d00417ac <initExplodes>:
d00417ac:	b538      	push	{r3, r4, r5, lr}
d00417ae:	4c06      	ldr	r4, [pc, #24]	; (d00417c8 <initExplodes+0x1c>)
d00417b0:	f504 6580 	add.w	r5, r4, #1024	; 0x400
d00417b4:	4620      	mov	r0, r4
d00417b6:	3420      	adds	r4, #32
d00417b8:	2220      	movs	r2, #32
d00417ba:	2100      	movs	r1, #0
d00417bc:	f7fe fc3e 	bl	d004003c <memset>
d00417c0:	42ac      	cmp	r4, r5
d00417c2:	d1f7      	bne.n	d00417b4 <initExplodes+0x8>
d00417c4:	bd38      	pop	{r3, r4, r5, pc}
d00417c6:	bf00      	nop
d00417c8:	d0044740 	.word	0xd0044740

d00417cc <spawnFlame>:
d00417cc:	4b35      	ldr	r3, [pc, #212]	; (d00418a4 <spawnFlame+0xd8>)
d00417ce:	681b      	ldr	r3, [r3, #0]
d00417d0:	1e5a      	subs	r2, r3, #1
d00417d2:	1c59      	adds	r1, r3, #1
d00417d4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00417d8:	2a00      	cmp	r2, #0
d00417da:	ed2d 8b02 	vpush	{d8}
d00417de:	b084      	sub	sp, #16
d00417e0:	9303      	str	r3, [sp, #12]
d00417e2:	9201      	str	r2, [sp, #4]
d00417e4:	9102      	str	r1, [sp, #8]
d00417e6:	da01      	bge.n	d00417ec <spawnFlame+0x20>
d00417e8:	2223      	movs	r2, #35	; 0x23
d00417ea:	9201      	str	r2, [sp, #4]
d00417ec:	2b23      	cmp	r3, #35	; 0x23
d00417ee:	dd01      	ble.n	d00417f4 <spawnFlame+0x28>
d00417f0:	2300      	movs	r3, #0
d00417f2:	9303      	str	r3, [sp, #12]
d00417f4:	ae01      	add	r6, sp, #4
d00417f6:	f10d 0a10 	add.w	sl, sp, #16
d00417fa:	4d2b      	ldr	r5, [pc, #172]	; (d00418a8 <spawnFlame+0xdc>)
d00417fc:	f04f 0811 	mov.w	r8, #17
d0041800:	f8df 90ac 	ldr.w	r9, [pc, #172]	; d00418b0 <spawnFlame+0xe4>
d0041804:	4f29      	ldr	r7, [pc, #164]	; (d00418ac <spawnFlame+0xe0>)
d0041806:	2300      	movs	r3, #0
d0041808:	e001      	b.n	d004180e <spawnFlame+0x42>
d004180a:	2b20      	cmp	r3, #32
d004180c:	d042      	beq.n	d0041894 <spawnFlame+0xc8>
d004180e:	eb05 1443 	add.w	r4, r5, r3, lsl #5
d0041812:	3301      	adds	r3, #1
d0041814:	7da2      	ldrb	r2, [r4, #22]
d0041816:	f002 00ff 	and.w	r0, r2, #255	; 0xff
d004181a:	2a00      	cmp	r2, #0
d004181c:	d1f5      	bne.n	d004180a <spawnFlame+0x3e>
d004181e:	f884 8016 	strb.w	r8, [r4, #22]
d0041822:	210f      	movs	r1, #15
d0041824:	7620      	strb	r0, [r4, #24]
d0041826:	f8b9 3014 	ldrh.w	r3, [r9, #20]
d004182a:	6832      	ldr	r2, [r6, #0]
d004182c:	b21b      	sxth	r3, r3
d004182e:	eb07 0cc2 	add.w	ip, r7, r2, lsl #3
d0041832:	3318      	adds	r3, #24
d0041834:	b252      	sxtb	r2, r2
d0041836:	eddc 8a00 	vldr	s17, [ip]
d004183a:	ee07 3a90 	vmov	s15, r3
d004183e:	ed9c 8a01 	vldr	s16, [ip, #4]
d0041842:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041846:	edc4 7a02 	vstr	s15, [r4, #8]
d004184a:	f8b9 3016 	ldrh.w	r3, [r9, #22]
d004184e:	b21b      	sxth	r3, r3
d0041850:	3318      	adds	r3, #24
d0041852:	ee07 3a90 	vmov	s15, r3
d0041856:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004185a:	edc4 7a03 	vstr	s15, [r4, #12]
d004185e:	7522      	strb	r2, [r4, #20]
d0041860:	f000 fa02 	bl	d0041c68 <sbx_rng_range>
d0041864:	ee78 7a08 	vadd.f32	s15, s16, s16
d0041868:	ee78 6aa8 	vadd.f32	s13, s17, s17
d004186c:	b240      	sxtb	r0, r0
d004186e:	eeb3 7a06 	vmov.f32	s14, #54	; 0x41b00000  22.0
d0041872:	7520      	strb	r0, [r4, #20]
d0041874:	edc4 6a00 	vstr	s13, [r4]
d0041878:	edc4 7a01 	vstr	s15, [r4, #4]
d004187c:	edd4 7a02 	vldr	s15, [r4, #8]
d0041880:	eee8 7ac7 	vfms.f32	s15, s17, s14
d0041884:	edc4 7a02 	vstr	s15, [r4, #8]
d0041888:	edd4 7a03 	vldr	s15, [r4, #12]
d004188c:	eee8 7a07 	vfma.f32	s15, s16, s14
d0041890:	edc4 7a03 	vstr	s15, [r4, #12]
d0041894:	3604      	adds	r6, #4
d0041896:	4556      	cmp	r6, sl
d0041898:	d1b5      	bne.n	d0041806 <spawnFlame+0x3a>
d004189a:	b004      	add	sp, #16
d004189c:	ecbd 8b02 	vpop	{d8}
d00418a0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00418a4:	d00443a4 	.word	0xd00443a4
d00418a8:	d0044ba0 	.word	0xd0044ba0
d00418ac:	d0043284 	.word	0xd0043284
d00418b0:	d0044380 	.word	0xd0044380

d00418b4 <doFlames>:
d00418b4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00418b6:	2400      	movs	r4, #0
d00418b8:	4d42      	ldr	r5, [pc, #264]	; (d00419c4 <doFlames+0x110>)
d00418ba:	4e43      	ldr	r6, [pc, #268]	; (d00419c8 <doFlames+0x114>)
d00418bc:	ed2d 8b02 	vpush	{d8}
d00418c0:	eddf 8a42 	vldr	s17, [pc, #264]	; d00419cc <doFlames+0x118>
d00418c4:	ed9f 8a42 	vldr	s16, [pc, #264]	; d00419d0 <doFlames+0x11c>
d00418c8:	eb05 1244 	add.w	r2, r5, r4, lsl #5
d00418cc:	0163      	lsls	r3, r4, #5
d00418ce:	7d91      	ldrb	r1, [r2, #22]
d00418d0:	2900      	cmp	r1, #0
d00418d2:	d070      	beq.n	d00419b6 <doFlames+0x102>
d00418d4:	7d91      	ldrb	r1, [r2, #22]
d00418d6:	eebb 7a04 	vmov.f32	s14, #180	; 0xc1a00000 -20.0
d00418da:	3901      	subs	r1, #1
d00418dc:	b2c9      	uxtb	r1, r1
d00418de:	7591      	strb	r1, [r2, #22]
d00418e0:	edd2 6a00 	vldr	s13, [r2]
d00418e4:	edd2 7a02 	vldr	s15, [r2, #8]
d00418e8:	ee77 7ae6 	vsub.f32	s15, s15, s13
d00418ec:	edc2 7a02 	vstr	s15, [r2, #8]
d00418f0:	edd2 6a01 	vldr	s13, [r2, #4]
d00418f4:	edd2 7a03 	vldr	s15, [r2, #12]
d00418f8:	ee77 7aa6 	vadd.f32	s15, s15, s13
d00418fc:	edc2 7a03 	vstr	s15, [r2, #12]
d0041900:	edd2 7a02 	vldr	s15, [r2, #8]
d0041904:	eef4 7ac7 	vcmpe.f32	s15, s14
d0041908:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004190c:	d501      	bpl.n	d0041912 <doFlames+0x5e>
d004190e:	edc2 8a02 	vstr	s17, [r2, #8]
d0041912:	18ea      	adds	r2, r5, r3
d0041914:	edd2 7a02 	vldr	s15, [r2, #8]
d0041918:	eef4 7ae8 	vcmpe.f32	s15, s17
d004191c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041920:	dd01      	ble.n	d0041926 <doFlames+0x72>
d0041922:	492c      	ldr	r1, [pc, #176]	; (d00419d4 <doFlames+0x120>)
d0041924:	6091      	str	r1, [r2, #8]
d0041926:	18ea      	adds	r2, r5, r3
d0041928:	eefb 7a04 	vmov.f32	s15, #180	; 0xc1a00000 -20.0
d004192c:	ed92 7a03 	vldr	s14, [r2, #12]
d0041930:	eeb4 7ae7 	vcmpe.f32	s14, s15
d0041934:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041938:	d501      	bpl.n	d004193e <doFlames+0x8a>
d004193a:	ed82 8a03 	vstr	s16, [r2, #12]
d004193e:	18ea      	adds	r2, r5, r3
d0041940:	edd2 7a03 	vldr	s15, [r2, #12]
d0041944:	eef4 7ac8 	vcmpe.f32	s15, s16
d0041948:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004194c:	dd01      	ble.n	d0041952 <doFlames+0x9e>
d004194e:	4921      	ldr	r1, [pc, #132]	; (d00419d4 <doFlames+0x120>)
d0041950:	60d1      	str	r1, [r2, #12]
d0041952:	442b      	add	r3, r5
d0041954:	2102      	movs	r1, #2
d0041956:	edd3 7a02 	vldr	s15, [r3, #8]
d004195a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004195e:	ee17 2a90 	vmov	r2, s15
d0041962:	b212      	sxth	r2, r2
d0041964:	821a      	strh	r2, [r3, #16]
d0041966:	edd3 7a03 	vldr	s15, [r3, #12]
d004196a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004196e:	ee17 2a90 	vmov	r2, s15
d0041972:	b212      	sxth	r2, r2
d0041974:	825a      	strh	r2, [r3, #18]
d0041976:	8a1a      	ldrh	r2, [r3, #16]
d0041978:	82b2      	strh	r2, [r6, #20]
d004197a:	8a5a      	ldrh	r2, [r3, #18]
d004197c:	82f2      	strh	r2, [r6, #22]
d004197e:	7131      	strb	r1, [r6, #4]
d0041980:	7e1a      	ldrb	r2, [r3, #24]
d0041982:	b2d2      	uxtb	r2, r2
d0041984:	71b2      	strb	r2, [r6, #6]
d0041986:	7e1a      	ldrb	r2, [r3, #24]
d0041988:	3205      	adds	r2, #5
d004198a:	b2d2      	uxtb	r2, r2
d004198c:	761a      	strb	r2, [r3, #24]
d004198e:	7e1a      	ldrb	r2, [r3, #24]
d0041990:	2a64      	cmp	r2, #100	; 0x64
d0041992:	d901      	bls.n	d0041998 <doFlames+0xe4>
d0041994:	2264      	movs	r2, #100	; 0x64
d0041996:	761a      	strb	r2, [r3, #24]
d0041998:	4a0f      	ldr	r2, [pc, #60]	; (d00419d8 <doFlames+0x124>)
d004199a:	4630      	mov	r0, r6
d004199c:	7b13      	ldrb	r3, [r2, #12]
d004199e:	7b57      	ldrb	r7, [r2, #13]
d00419a0:	7b91      	ldrb	r1, [r2, #14]
d00419a2:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
d00419a6:	7bd2      	ldrb	r2, [r2, #15]
d00419a8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00419ac:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00419b0:	685b      	ldr	r3, [r3, #4]
d00419b2:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00419b4:	4798      	blx	r3
d00419b6:	3401      	adds	r4, #1
d00419b8:	2c20      	cmp	r4, #32
d00419ba:	d185      	bne.n	d00418c8 <doFlames+0x14>
d00419bc:	ecbd 8b02 	vpop	{d8}
d00419c0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00419c2:	bf00      	nop
d00419c4:	d0044ba0 	.word	0xd0044ba0
d00419c8:	d0044b40 	.word	0xd0044b40
d00419cc:	43f00000 	.word	0x43f00000
d00419d0:	43a00000 	.word	0x43a00000
d00419d4:	c1a00000 	.word	0xc1a00000
d00419d8:	2001f000 	.word	0x2001f000

d00419dc <spawnExplode>:
d00419dc:	b4f0      	push	{r4, r5, r6, r7}
d00419de:	2300      	movs	r3, #0
d00419e0:	4e0a      	ldr	r6, [pc, #40]	; (d0041a0c <spawnExplode+0x30>)
d00419e2:	e001      	b.n	d00419e8 <spawnExplode+0xc>
d00419e4:	2b20      	cmp	r3, #32
d00419e6:	d00e      	beq.n	d0041a06 <spawnExplode+0x2a>
d00419e8:	eb06 1243 	add.w	r2, r6, r3, lsl #5
d00419ec:	3301      	adds	r3, #1
d00419ee:	7d94      	ldrb	r4, [r2, #22]
d00419f0:	f004 05ff 	and.w	r5, r4, #255	; 0xff
d00419f4:	2c00      	cmp	r4, #0
d00419f6:	d1f5      	bne.n	d00419e4 <spawnExplode+0x8>
d00419f8:	2314      	movs	r3, #20
d00419fa:	7593      	strb	r3, [r2, #22]
d00419fc:	7515      	strb	r5, [r2, #20]
d00419fe:	7615      	strb	r5, [r2, #24]
d0041a00:	8210      	strh	r0, [r2, #16]
d0041a02:	8251      	strh	r1, [r2, #18]
d0041a04:	7515      	strb	r5, [r2, #20]
d0041a06:	bcf0      	pop	{r4, r5, r6, r7}
d0041a08:	4770      	bx	lr
d0041a0a:	bf00      	nop
d0041a0c:	d0044740 	.word	0xd0044740

d0041a10 <doExplodes>:
d0041a10:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0041a14:	2500      	movs	r5, #0
d0041a16:	f8df 8060 	ldr.w	r8, [pc, #96]	; d0041a78 <doExplodes+0x68>
d0041a1a:	4f15      	ldr	r7, [pc, #84]	; (d0041a70 <doExplodes+0x60>)
d0041a1c:	4e15      	ldr	r6, [pc, #84]	; (d0041a74 <doExplodes+0x64>)
d0041a1e:	eb08 1345 	add.w	r3, r8, r5, lsl #5
d0041a22:	4813      	ldr	r0, [pc, #76]	; (d0041a70 <doExplodes+0x60>)
d0041a24:	3501      	adds	r5, #1
d0041a26:	7d9a      	ldrb	r2, [r3, #22]
d0041a28:	b1ea      	cbz	r2, d0041a66 <doExplodes+0x56>
d0041a2a:	8a1a      	ldrh	r2, [r3, #16]
d0041a2c:	82ba      	strh	r2, [r7, #20]
d0041a2e:	8a5a      	ldrh	r2, [r3, #18]
d0041a30:	82fa      	strh	r2, [r7, #22]
d0041a32:	7d9a      	ldrb	r2, [r3, #22]
d0041a34:	f1c2 0214 	rsb	r2, r2, #20
d0041a38:	f3c2 0247 	ubfx	r2, r2, #1, #8
d0041a3c:	2a09      	cmp	r2, #9
d0041a3e:	bf28      	it	cs
d0041a40:	2209      	movcs	r2, #9
d0041a42:	763a      	strb	r2, [r7, #24]
d0041a44:	7d9a      	ldrb	r2, [r3, #22]
d0041a46:	3a01      	subs	r2, #1
d0041a48:	b2d2      	uxtb	r2, r2
d0041a4a:	759a      	strb	r2, [r3, #22]
d0041a4c:	7b34      	ldrb	r4, [r6, #12]
d0041a4e:	7b71      	ldrb	r1, [r6, #13]
d0041a50:	7bb2      	ldrb	r2, [r6, #14]
d0041a52:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d0041a56:	7bf3      	ldrb	r3, [r6, #15]
d0041a58:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0041a5c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0041a60:	685b      	ldr	r3, [r3, #4]
d0041a62:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0041a64:	4798      	blx	r3
d0041a66:	2d20      	cmp	r5, #32
d0041a68:	d1d9      	bne.n	d0041a1e <doExplodes+0xe>
d0041a6a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0041a6e:	bf00      	nop
d0041a70:	d0044b80 	.word	0xd0044b80
d0041a74:	2001f000 	.word	0x2001f000
d0041a78:	d0044740 	.word	0xd0044740

d0041a7c <LoadGraphics>:
d0041a7c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0041a80:	f44f 3061 	mov.w	r0, #230400	; 0x38400
d0041a84:	4c2c      	ldr	r4, [pc, #176]	; (d0041b38 <LoadGraphics+0xbc>)
d0041a86:	f000 fc37 	bl	d00422f8 <malloc>
d0041a8a:	2500      	movs	r5, #0
d0041a8c:	2260      	movs	r2, #96	; 0x60
d0041a8e:	4603      	mov	r3, r0
d0041a90:	f44f 71f0 	mov.w	r1, #480	; 0x1e0
d0041a94:	4829      	ldr	r0, [pc, #164]	; (d0041b3c <LoadGraphics+0xc0>)
d0041a96:	6023      	str	r3, [r4, #0]
d0041a98:	2640      	movs	r6, #64	; 0x40
d0041a9a:	81a1      	strh	r1, [r4, #12]
d0041a9c:	f44f 7800 	mov.w	r8, #512	; 0x200
d0041aa0:	81e1      	strh	r1, [r4, #14]
d0041aa2:	27c0      	movs	r7, #192	; 0xc0
d0041aa4:	8222      	strh	r2, [r4, #16]
d0041aa6:	8262      	strh	r2, [r4, #18]
d0041aa8:	82a5      	strh	r5, [r4, #20]
d0041aaa:	82e5      	strh	r5, [r4, #22]
d0041aac:	6821      	ldr	r1, [r4, #0]
d0041aae:	f7fe facd 	bl	d004004c <LoadPPB>
d0041ab2:	f44f 30c0 	mov.w	r0, #98304	; 0x18000
d0041ab6:	f000 fc1f 	bl	d00422f8 <malloc>
d0041aba:	4603      	mov	r3, r0
d0041abc:	4820      	ldr	r0, [pc, #128]	; (d0041b40 <LoadGraphics+0xc4>)
d0041abe:	6223      	str	r3, [r4, #32]
d0041ac0:	f8a4 802c 	strh.w	r8, [r4, #44]	; 0x2c
d0041ac4:	85e7      	strh	r7, [r4, #46]	; 0x2e
d0041ac6:	8626      	strh	r6, [r4, #48]	; 0x30
d0041ac8:	8666      	strh	r6, [r4, #50]	; 0x32
d0041aca:	86a5      	strh	r5, [r4, #52]	; 0x34
d0041acc:	86e5      	strh	r5, [r4, #54]	; 0x36
d0041ace:	6a21      	ldr	r1, [r4, #32]
d0041ad0:	f7fe fabc 	bl	d004004c <LoadPPB>
d0041ad4:	f44f 30c0 	mov.w	r0, #98304	; 0x18000
d0041ad8:	f000 fc0e 	bl	d00422f8 <malloc>
d0041adc:	4603      	mov	r3, r0
d0041ade:	4819      	ldr	r0, [pc, #100]	; (d0041b44 <LoadGraphics+0xc8>)
d0041ae0:	6423      	str	r3, [r4, #64]	; 0x40
d0041ae2:	f8a4 804c 	strh.w	r8, [r4, #76]	; 0x4c
d0041ae6:	f8a4 704e 	strh.w	r7, [r4, #78]	; 0x4e
d0041aea:	f8a4 6050 	strh.w	r6, [r4, #80]	; 0x50
d0041aee:	f8a4 6052 	strh.w	r6, [r4, #82]	; 0x52
d0041af2:	f8a4 5054 	strh.w	r5, [r4, #84]	; 0x54
d0041af6:	f8a4 5056 	strh.w	r5, [r4, #86]	; 0x56
d0041afa:	6c21      	ldr	r1, [r4, #64]	; 0x40
d0041afc:	f7fe faa6 	bl	d004004c <LoadPPB>
d0041b00:	f44f 4080 	mov.w	r0, #16384	; 0x4000
d0041b04:	f000 fbf8 	bl	d00422f8 <malloc>
d0041b08:	f44f 7180 	mov.w	r1, #256	; 0x100
d0041b0c:	2220      	movs	r2, #32
d0041b0e:	4603      	mov	r3, r0
d0041b10:	480d      	ldr	r0, [pc, #52]	; (d0041b48 <LoadGraphics+0xcc>)
d0041b12:	6623      	str	r3, [r4, #96]	; 0x60
d0041b14:	f8a4 106c 	strh.w	r1, [r4, #108]	; 0x6c
d0041b18:	f8a4 606e 	strh.w	r6, [r4, #110]	; 0x6e
d0041b1c:	f8a4 2070 	strh.w	r2, [r4, #112]	; 0x70
d0041b20:	f8a4 2072 	strh.w	r2, [r4, #114]	; 0x72
d0041b24:	f8a4 5074 	strh.w	r5, [r4, #116]	; 0x74
d0041b28:	f8a4 5076 	strh.w	r5, [r4, #118]	; 0x76
d0041b2c:	6e21      	ldr	r1, [r4, #96]	; 0x60
d0041b2e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0041b32:	f7fe ba8b 	b.w	d004004c <LoadPPB>
d0041b36:	bf00      	nop
d0041b38:	d00443c0 	.word	0xd00443c0
d0041b3c:	d0043438 	.word	0xd0043438
d0041b40:	d0043450 	.word	0xd0043450
d0041b44:	d004346c 	.word	0xd004346c
d0041b48:	d0043488 	.word	0xd0043488

d0041b4c <LoadShipGfx>:
d0041b4c:	b570      	push	{r4, r5, r6, lr}
d0041b4e:	f44f 3010 	mov.w	r0, #147456	; 0x24000
d0041b52:	2400      	movs	r4, #0
d0041b54:	f000 fbd0 	bl	d00422f8 <malloc>
d0041b58:	f44f 76c0 	mov.w	r6, #384	; 0x180
d0041b5c:	4b22      	ldr	r3, [pc, #136]	; (d0041be8 <LoadShipGfx+0x9c>)
d0041b5e:	220a      	movs	r2, #10
d0041b60:	2140      	movs	r1, #64	; 0x40
d0041b62:	25a0      	movs	r5, #160	; 0xa0
d0041b64:	6018      	str	r0, [r3, #0]
d0041b66:	81de      	strh	r6, [r3, #14]
d0041b68:	4820      	ldr	r0, [pc, #128]	; (d0041bec <LoadShipGfx+0xa0>)
d0041b6a:	819e      	strh	r6, [r3, #12]
d0041b6c:	8259      	strh	r1, [r3, #18]
d0041b6e:	8219      	strh	r1, [r3, #16]
d0041b70:	761c      	strb	r4, [r3, #24]
d0041b72:	829a      	strh	r2, [r3, #20]
d0041b74:	82da      	strh	r2, [r3, #22]
d0041b76:	6819      	ldr	r1, [r3, #0]
d0041b78:	f7fe fa68 	bl	d004004c <LoadPPB>
d0041b7c:	f44f 5010 	mov.w	r0, #9216	; 0x2400
d0041b80:	f000 fbba 	bl	d00422f8 <malloc>
d0041b84:	4b1a      	ldr	r3, [pc, #104]	; (d0041bf0 <LoadShipGfx+0xa4>)
d0041b86:	2210      	movs	r2, #16
d0041b88:	2160      	movs	r1, #96	; 0x60
d0041b8a:	6018      	str	r0, [r3, #0]
d0041b8c:	81d9      	strh	r1, [r3, #14]
d0041b8e:	4819      	ldr	r0, [pc, #100]	; (d0041bf4 <LoadShipGfx+0xa8>)
d0041b90:	8199      	strh	r1, [r3, #12]
d0041b92:	825a      	strh	r2, [r3, #18]
d0041b94:	821a      	strh	r2, [r3, #16]
d0041b96:	761c      	strb	r4, [r3, #24]
d0041b98:	6819      	ldr	r1, [r3, #0]
d0041b9a:	f7fe fa57 	bl	d004004c <LoadPPB>
d0041b9e:	f44f 6048 	mov.w	r0, #3200	; 0xc80
d0041ba2:	f000 fba9 	bl	d00422f8 <malloc>
d0041ba6:	4b14      	ldr	r3, [pc, #80]	; (d0041bf8 <LoadShipGfx+0xac>)
d0041ba8:	2214      	movs	r2, #20
d0041baa:	4601      	mov	r1, r0
d0041bac:	4813      	ldr	r0, [pc, #76]	; (d0041bfc <LoadShipGfx+0xb0>)
d0041bae:	6019      	str	r1, [r3, #0]
d0041bb0:	81da      	strh	r2, [r3, #14]
d0041bb2:	819d      	strh	r5, [r3, #12]
d0041bb4:	825a      	strh	r2, [r3, #18]
d0041bb6:	821a      	strh	r2, [r3, #16]
d0041bb8:	761c      	strb	r4, [r3, #24]
d0041bba:	6819      	ldr	r1, [r3, #0]
d0041bbc:	f7fe fa46 	bl	d004004c <LoadPPB>
d0041bc0:	f44f 4048 	mov.w	r0, #51200	; 0xc800
d0041bc4:	f000 fb98 	bl	d00422f8 <malloc>
d0041bc8:	4b0d      	ldr	r3, [pc, #52]	; (d0041c00 <LoadShipGfx+0xb4>)
d0041bca:	f44f 71a0 	mov.w	r1, #320	; 0x140
d0041bce:	2250      	movs	r2, #80	; 0x50
d0041bd0:	6018      	str	r0, [r3, #0]
d0041bd2:	81dd      	strh	r5, [r3, #14]
d0041bd4:	480b      	ldr	r0, [pc, #44]	; (d0041c04 <LoadShipGfx+0xb8>)
d0041bd6:	8199      	strh	r1, [r3, #12]
d0041bd8:	821a      	strh	r2, [r3, #16]
d0041bda:	825a      	strh	r2, [r3, #18]
d0041bdc:	761c      	strb	r4, [r3, #24]
d0041bde:	6819      	ldr	r1, [r3, #0]
d0041be0:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0041be4:	f7fe ba32 	b.w	d004004c <LoadPPB>
d0041be8:	d0044380 	.word	0xd0044380
d0041bec:	d00434a0 	.word	0xd00434a0
d0041bf0:	d0044340 	.word	0xd0044340
d0041bf4:	d00434b0 	.word	0xd00434b0
d0041bf8:	d0044b40 	.word	0xd0044b40
d0041bfc:	d00434c8 	.word	0xd00434c8
d0041c00:	d0043f80 	.word	0xd0043f80
d0041c04:	d00434d8 	.word	0xd00434d8

d0041c08 <LoadCommonGameGraphics>:
d0041c08:	b538      	push	{r3, r4, r5, lr}
d0041c0a:	f44f 4020 	mov.w	r0, #40960	; 0xa000
d0041c0e:	2580      	movs	r5, #128	; 0x80
d0041c10:	f000 fb72 	bl	d00422f8 <malloc>
d0041c14:	2400      	movs	r4, #0
d0041c16:	4b10      	ldr	r3, [pc, #64]	; (d0041c58 <LoadCommonGameGraphics+0x50>)
d0041c18:	2240      	movs	r2, #64	; 0x40
d0041c1a:	f44f 71a0 	mov.w	r1, #320	; 0x140
d0041c1e:	6018      	str	r0, [r3, #0]
d0041c20:	81dd      	strh	r5, [r3, #14]
d0041c22:	480e      	ldr	r0, [pc, #56]	; (d0041c5c <LoadCommonGameGraphics+0x54>)
d0041c24:	8199      	strh	r1, [r3, #12]
d0041c26:	825a      	strh	r2, [r3, #18]
d0041c28:	821a      	strh	r2, [r3, #16]
d0041c2a:	761c      	strb	r4, [r3, #24]
d0041c2c:	6819      	ldr	r1, [r3, #0]
d0041c2e:	f7fe fa0d 	bl	d004004c <LoadPPB>
d0041c32:	f44f 40c0 	mov.w	r0, #24576	; 0x6000
d0041c36:	f000 fb5f 	bl	d00422f8 <malloc>
d0041c3a:	4b09      	ldr	r3, [pc, #36]	; (d0041c60 <LoadCommonGameGraphics+0x58>)
d0041c3c:	21c0      	movs	r1, #192	; 0xc0
d0041c3e:	2210      	movs	r2, #16
d0041c40:	6018      	str	r0, [r3, #0]
d0041c42:	81d9      	strh	r1, [r3, #14]
d0041c44:	4807      	ldr	r0, [pc, #28]	; (d0041c64 <LoadCommonGameGraphics+0x5c>)
d0041c46:	819d      	strh	r5, [r3, #12]
d0041c48:	821a      	strh	r2, [r3, #16]
d0041c4a:	825a      	strh	r2, [r3, #18]
d0041c4c:	761c      	strb	r4, [r3, #24]
d0041c4e:	6819      	ldr	r1, [r3, #0]
d0041c50:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d0041c54:	f7fe b9fa 	b.w	d004004c <LoadPPB>
d0041c58:	d0044b80 	.word	0xd0044b80
d0041c5c:	d00434e8 	.word	0xd00434e8
d0041c60:	d0044b60 	.word	0xd0044b60
d0041c64:	d00434f8 	.word	0xd00434f8

d0041c68 <sbx_rng_range>:
d0041c68:	b410      	push	{r4}
d0041c6a:	4c0a      	ldr	r4, [pc, #40]	; (d0041c94 <sbx_rng_range+0x2c>)
d0041c6c:	1a09      	subs	r1, r1, r0
d0041c6e:	6823      	ldr	r3, [r4, #0]
d0041c70:	3101      	adds	r1, #1
d0041c72:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d0041c76:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0041c7a:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0041c7e:	fbb3 f2f1 	udiv	r2, r3, r1
d0041c82:	fb01 3112 	mls	r1, r1, r2, r3
d0041c86:	6023      	str	r3, [r4, #0]
d0041c88:	4408      	add	r0, r1
d0041c8a:	f85d 4b04 	ldr.w	r4, [sp], #4
d0041c8e:	b200      	sxth	r0, r0
d0041c90:	4770      	bx	lr
d0041c92:	bf00      	nop
d0041c94:	d0043e74 	.word	0xd0043e74

d0041c98 <main>:
d0041c98:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041c9c:	4c95      	ldr	r4, [pc, #596]	; (d0041ef4 <main+0x25c>)
d0041c9e:	2700      	movs	r7, #0
d0041ca0:	f44f 3000 	mov.w	r0, #131072	; 0x20000
d0041ca4:	4e94      	ldr	r6, [pc, #592]	; (d0041ef8 <main+0x260>)
d0041ca6:	7823      	ldrb	r3, [r4, #0]
d0041ca8:	46ba      	mov	sl, r7
d0041caa:	7862      	ldrb	r2, [r4, #1]
d0041cac:	78a1      	ldrb	r1, [r4, #2]
d0041cae:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041cb2:	78e2      	ldrb	r2, [r4, #3]
d0041cb4:	f8df b27c 	ldr.w	fp, [pc, #636]	; d0041f34 <main+0x29c>
d0041cb8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0041cbc:	f8df 9278 	ldr.w	r9, [pc, #632]	; d0041f38 <main+0x2a0>
d0041cc0:	f8df 826c 	ldr.w	r8, [pc, #620]	; d0041f30 <main+0x298>
d0041cc4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041cc8:	ed2d 8b04 	vpush	{d8-d9}
d0041ccc:	b089      	sub	sp, #36	; 0x24
d0041cce:	681b      	ldr	r3, [r3, #0]
d0041cd0:	ed9f 9a8a 	vldr	s18, [pc, #552]	; d0041efc <main+0x264>
d0041cd4:	9707      	str	r7, [sp, #28]
d0041cd6:	9706      	str	r7, [sp, #24]
d0041cd8:	eef0 8a49 	vmov.f32	s17, s18
d0041cdc:	9703      	str	r7, [sp, #12]
d0041cde:	9705      	str	r7, [sp, #20]
d0041ce0:	4798      	blx	r3
d0041ce2:	f7fe fa07 	bl	d00400f4 <initMalloc>
d0041ce6:	7b23      	ldrb	r3, [r4, #12]
d0041ce8:	7b62      	ldrb	r2, [r4, #13]
d0041cea:	2190      	movs	r1, #144	; 0x90
d0041cec:	7ba5      	ldrb	r5, [r4, #14]
d0041cee:	20dc      	movs	r0, #220	; 0xdc
d0041cf0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041cf4:	7be2      	ldrb	r2, [r4, #15]
d0041cf6:	ed9f 8a82 	vldr	s16, [pc, #520]	; d0041f00 <main+0x268>
d0041cfa:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0041cfe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041d02:	681b      	ldr	r3, [r3, #0]
d0041d04:	691b      	ldr	r3, [r3, #16]
d0041d06:	4798      	blx	r3
d0041d08:	7b23      	ldrb	r3, [r4, #12]
d0041d0a:	7b62      	ldrb	r2, [r4, #13]
d0041d0c:	4638      	mov	r0, r7
d0041d0e:	7ba1      	ldrb	r1, [r4, #14]
d0041d10:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041d14:	7be2      	ldrb	r2, [r4, #15]
d0041d16:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0041d1a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041d1e:	681b      	ldr	r3, [r3, #0]
d0041d20:	689b      	ldr	r3, [r3, #8]
d0041d22:	4798      	blx	r3
d0041d24:	7b25      	ldrb	r5, [r4, #12]
d0041d26:	7b62      	ldrb	r2, [r4, #13]
d0041d28:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d0041d2c:	7ba0      	ldrb	r0, [r4, #14]
d0041d2e:	2106      	movs	r1, #6
d0041d30:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d0041d34:	7be2      	ldrb	r2, [r4, #15]
d0041d36:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d0041d3a:	4618      	mov	r0, r3
d0041d3c:	ea45 6502 	orr.w	r5, r5, r2, lsl #24
d0041d40:	f44f 7220 	mov.w	r2, #640	; 0x280
d0041d44:	682d      	ldr	r5, [r5, #0]
d0041d46:	9100      	str	r1, [sp, #0]
d0041d48:	f44f 71a0 	mov.w	r1, #320	; 0x140
d0041d4c:	696d      	ldr	r5, [r5, #20]
d0041d4e:	47a8      	blx	r5
d0041d50:	7c23      	ldrb	r3, [r4, #16]
d0041d52:	7c62      	ldrb	r2, [r4, #17]
d0041d54:	f44f 7000 	mov.w	r0, #512	; 0x200
d0041d58:	7ca1      	ldrb	r1, [r4, #18]
d0041d5a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041d5e:	7ce2      	ldrb	r2, [r4, #19]
d0041d60:	4d68      	ldr	r5, [pc, #416]	; (d0041f04 <main+0x26c>)
d0041d62:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0041d66:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041d6a:	681b      	ldr	r3, [r3, #0]
d0041d6c:	681b      	ldr	r3, [r3, #0]
d0041d6e:	4798      	blx	r3
d0041d70:	7c22      	ldrb	r2, [r4, #16]
d0041d72:	7c61      	ldrb	r1, [r4, #17]
d0041d74:	7ca3      	ldrb	r3, [r4, #18]
d0041d76:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d0041d7a:	7ce0      	ldrb	r0, [r4, #19]
d0041d7c:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
d0041d80:	7b23      	ldrb	r3, [r4, #12]
d0041d82:	7b61      	ldrb	r1, [r4, #13]
d0041d84:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d0041d88:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d0041d8c:	7ba1      	ldrb	r1, [r4, #14]
d0041d8e:	6812      	ldr	r2, [r2, #0]
d0041d90:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0041d94:	7be1      	ldrb	r1, [r4, #15]
d0041d96:	6852      	ldr	r2, [r2, #4]
d0041d98:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d0041d9c:	f04f 0101 	mov.w	r1, #1
d0041da0:	7011      	strb	r1, [r2, #0]
d0041da2:	681b      	ldr	r3, [r3, #0]
d0041da4:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d0041da6:	4798      	blx	r3
d0041da8:	7b23      	ldrb	r3, [r4, #12]
d0041daa:	7b62      	ldrb	r2, [r4, #13]
d0041dac:	7ba1      	ldrb	r1, [r4, #14]
d0041dae:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041db2:	7be2      	ldrb	r2, [r4, #15]
d0041db4:	6028      	str	r0, [r5, #0]
d0041db6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0041dba:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041dbe:	681b      	ldr	r3, [r3, #0]
d0041dc0:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d0041dc2:	4798      	blx	r3
d0041dc4:	f894 c00c 	ldrb.w	ip, [r4, #12]
d0041dc8:	4601      	mov	r1, r0
d0041dca:	7b62      	ldrb	r2, [r4, #13]
d0041dcc:	4b4e      	ldr	r3, [pc, #312]	; (d0041f08 <main+0x270>)
d0041dce:	2064      	movs	r0, #100	; 0x64
d0041dd0:	6019      	str	r1, [r3, #0]
d0041dd2:	ea4c 2302 	orr.w	r3, ip, r2, lsl #8
d0041dd6:	7ba2      	ldrb	r2, [r4, #14]
d0041dd8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041ddc:	7be2      	ldrb	r2, [r4, #15]
d0041dde:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041de2:	681b      	ldr	r3, [r3, #0]
d0041de4:	689b      	ldr	r3, [r3, #8]
d0041de6:	4798      	blx	r3
d0041de8:	f7fe fa7e 	bl	d00402e8 <loadSounds>
d0041dec:	4638      	mov	r0, r7
d0041dee:	f7fe fd49 	bl	d0040884 <MusicPlay>
d0041df2:	f7ff fe43 	bl	d0041a7c <LoadGraphics>
d0041df6:	f7ff fea9 	bl	d0041b4c <LoadShipGfx>
d0041dfa:	f7ff ff05 	bl	d0041c08 <LoadCommonGameGraphics>
d0041dfe:	f44f 7220 	mov.w	r2, #640	; 0x280
d0041e02:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d0041e06:	f44f 2096 	mov.w	r0, #307200	; 0x4b000
d0041e0a:	60f0      	str	r0, [r6, #12]
d0041e0c:	80b2      	strh	r2, [r6, #4]
d0041e0e:	80f3      	strh	r3, [r6, #6]
d0041e10:	8133      	strh	r3, [r6, #8]
d0041e12:	f000 fa71 	bl	d00422f8 <malloc>
d0041e16:	4603      	mov	r3, r0
d0041e18:	483c      	ldr	r0, [pc, #240]	; (d0041f0c <main+0x274>)
d0041e1a:	6033      	str	r3, [r6, #0]
d0041e1c:	6831      	ldr	r1, [r6, #0]
d0041e1e:	f7fe f915 	bl	d004004c <LoadPPB>
d0041e22:	f7ff fa05 	bl	d0041230 <initAstroids>
d0041e26:	f7ff fcb1 	bl	d004178c <initFlames>
d0041e2a:	f7ff fcbf 	bl	d00417ac <initExplodes>
d0041e2e:	f7fe ff3b 	bl	d0040ca8 <initShip>
d0041e32:	f7ff f80b 	bl	d0040e4c <initBullets>
d0041e36:	4836      	ldr	r0, [pc, #216]	; (d0041f10 <main+0x278>)
d0041e38:	6007      	str	r7, [r0, #0]
d0041e3a:	7b23      	ldrb	r3, [r4, #12]
d0041e3c:	7b62      	ldrb	r2, [r4, #13]
d0041e3e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041e42:	7ba2      	ldrb	r2, [r4, #14]
d0041e44:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041e48:	7be2      	ldrb	r2, [r4, #15]
d0041e4a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041e4e:	681b      	ldr	r3, [r3, #0]
d0041e50:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d0041e52:	4798      	blx	r3
d0041e54:	7b23      	ldrb	r3, [r4, #12]
d0041e56:	7b62      	ldrb	r2, [r4, #13]
d0041e58:	482e      	ldr	r0, [pc, #184]	; (d0041f14 <main+0x27c>)
d0041e5a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041e5e:	7ba2      	ldrb	r2, [r4, #14]
d0041e60:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041e64:	7be2      	ldrb	r2, [r4, #15]
d0041e66:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041e6a:	681b      	ldr	r3, [r3, #0]
d0041e6c:	6d1b      	ldr	r3, [r3, #80]	; 0x50
d0041e6e:	4798      	blx	r3
d0041e70:	7b23      	ldrb	r3, [r4, #12]
d0041e72:	7b62      	ldrb	r2, [r4, #13]
d0041e74:	4630      	mov	r0, r6
d0041e76:	4e28      	ldr	r6, [pc, #160]	; (d0041f18 <main+0x280>)
d0041e78:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041e7c:	7ba2      	ldrb	r2, [r4, #14]
d0041e7e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041e82:	7be2      	ldrb	r2, [r4, #15]
d0041e84:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041e88:	681b      	ldr	r3, [r3, #0]
d0041e8a:	6a1b      	ldr	r3, [r3, #32]
d0041e8c:	4798      	blx	r3
d0041e8e:	7b23      	ldrb	r3, [r4, #12]
d0041e90:	7b62      	ldrb	r2, [r4, #13]
d0041e92:	6828      	ldr	r0, [r5, #0]
d0041e94:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041e98:	7ba2      	ldrb	r2, [r4, #14]
d0041e9a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041e9e:	7be2      	ldrb	r2, [r4, #15]
d0041ea0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041ea4:	681b      	ldr	r3, [r3, #0]
d0041ea6:	69db      	ldr	r3, [r3, #28]
d0041ea8:	4798      	blx	r3
d0041eaa:	7b23      	ldrb	r3, [r4, #12]
d0041eac:	7b62      	ldrb	r2, [r4, #13]
d0041eae:	6828      	ldr	r0, [r5, #0]
d0041eb0:	2503      	movs	r5, #3
d0041eb2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041eb6:	7ba2      	ldrb	r2, [r4, #14]
d0041eb8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041ebc:	7be2      	ldrb	r2, [r4, #15]
d0041ebe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041ec2:	681b      	ldr	r3, [r3, #0]
d0041ec4:	699b      	ldr	r3, [r3, #24]
d0041ec6:	4798      	blx	r3
d0041ec8:	4b14      	ldr	r3, [pc, #80]	; (d0041f1c <main+0x284>)
d0041eca:	f04f 0201 	mov.w	r2, #1
d0041ece:	21c8      	movs	r1, #200	; 0xc8
d0041ed0:	4813      	ldr	r0, [pc, #76]	; (d0041f20 <main+0x288>)
d0041ed2:	701a      	strb	r2, [r3, #0]
d0041ed4:	463a      	mov	r2, r7
d0041ed6:	4b13      	ldr	r3, [pc, #76]	; (d0041f24 <main+0x28c>)
d0041ed8:	7035      	strb	r5, [r6, #0]
d0041eda:	601f      	str	r7, [r3, #0]
d0041edc:	2364      	movs	r3, #100	; 0x64
d0041ede:	4d12      	ldr	r5, [pc, #72]	; (d0041f28 <main+0x290>)
d0041ee0:	ed80 9a00 	vstr	s18, [r0]
d0041ee4:	4608      	mov	r0, r1
d0041ee6:	ed8b 9a00 	vstr	s18, [fp]
d0041eea:	702b      	strb	r3, [r5, #0]
d0041eec:	f7ff f99a 	bl	d0041224 <SpawnAstroid>
d0041ef0:	4f0e      	ldr	r7, [pc, #56]	; (d0041f2c <main+0x294>)
d0041ef2:	e07f      	b.n	d0041ff4 <main+0x35c>
d0041ef4:	2001f000 	.word	0x2001f000
d0041ef8:	d0044fa0 	.word	0xd0044fa0
d0041efc:	00000000 	.word	0x00000000
d0041f00:	43200000 	.word	0x43200000
d0041f04:	d0044ffc 	.word	0xd0044ffc
d0041f08:	d0044ff8 	.word	0xd0044ff8
d0041f0c:	d004350c 	.word	0xd004350c
d0041f10:	d0043a60 	.word	0xd0043a60
d0041f14:	d0043660 	.word	0xd0043660
d0041f18:	d0043e8b 	.word	0xd0043e8b
d0041f1c:	d0043e90 	.word	0xd0043e90
d0041f20:	d0044fb0 	.word	0xd0044fb0
d0041f24:	d0043e8c 	.word	0xd0043e8c
d0041f28:	d0043fa0 	.word	0xd0043fa0
d0041f2c:	d0044fb4 	.word	0xd0044fb4
d0041f30:	d0044380 	.word	0xd0044380
d0041f34:	d0044ff4 	.word	0xd0044ff4
d0041f38:	d0043e91 	.word	0xd0043e91
d0041f3c:	7b20      	ldrb	r0, [r4, #12]
d0041f3e:	7b61      	ldrb	r1, [r4, #13]
d0041f40:	7ba2      	ldrb	r2, [r4, #14]
d0041f42:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0041f46:	7be3      	ldrb	r3, [r4, #15]
d0041f48:	48b4      	ldr	r0, [pc, #720]	; (d004221c <main+0x584>)
d0041f4a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0041f4e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0041f52:	685b      	ldr	r3, [r3, #4]
d0041f54:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0041f56:	4798      	blx	r3
d0041f58:	4bb1      	ldr	r3, [pc, #708]	; (d0042220 <main+0x588>)
d0041f5a:	781b      	ldrb	r3, [r3, #0]
d0041f5c:	2b00      	cmp	r3, #0
d0041f5e:	f040 8131 	bne.w	d00421c4 <main+0x52c>
d0041f62:	4bb0      	ldr	r3, [pc, #704]	; (d0042224 <main+0x58c>)
d0041f64:	4638      	mov	r0, r7
d0041f66:	49b0      	ldr	r1, [pc, #704]	; (d0042228 <main+0x590>)
d0041f68:	681a      	ldr	r2, [r3, #0]
d0041f6a:	f8cd a00c 	str.w	sl, [sp, #12]
d0041f6e:	f000 fb51 	bl	d0042614 <siprintf>
d0041f72:	220a      	movs	r2, #10
d0041f74:	4638      	mov	r0, r7
d0041f76:	f8dd a010 	ldr.w	sl, [sp, #16]
d0041f7a:	4611      	mov	r1, r2
d0041f7c:	f7ff fbc0 	bl	d0041700 <drawText>
d0041f80:	4baa      	ldr	r3, [pc, #680]	; (d004222c <main+0x594>)
d0041f82:	49ab      	ldr	r1, [pc, #684]	; (d0042230 <main+0x598>)
d0041f84:	4638      	mov	r0, r7
d0041f86:	781a      	ldrb	r2, [r3, #0]
d0041f88:	f000 fb44 	bl	d0042614 <siprintf>
d0041f8c:	220a      	movs	r2, #10
d0041f8e:	f44f 71aa 	mov.w	r1, #340	; 0x154
d0041f92:	4638      	mov	r0, r7
d0041f94:	f7ff fbb4 	bl	d0041700 <drawText>
d0041f98:	4ba6      	ldr	r3, [pc, #664]	; (d0042234 <main+0x59c>)
d0041f9a:	49a7      	ldr	r1, [pc, #668]	; (d0042238 <main+0x5a0>)
d0041f9c:	4638      	mov	r0, r7
d0041f9e:	781a      	ldrb	r2, [r3, #0]
d0041fa0:	f000 fb38 	bl	d0042614 <siprintf>
d0041fa4:	f44f 7293 	mov.w	r2, #294	; 0x126
d0041fa8:	210a      	movs	r1, #10
d0041faa:	4638      	mov	r0, r7
d0041fac:	f7ff fba8 	bl	d0041700 <drawText>
d0041fb0:	f04f 0300 	mov.w	r3, #0
d0041fb4:	4628      	mov	r0, r5
d0041fb6:	4631      	mov	r1, r6
d0041fb8:	f888 3004 	strb.w	r3, [r8, #4]
d0041fbc:	f894 c00c 	ldrb.w	ip, [r4, #12]
d0041fc0:	7b62      	ldrb	r2, [r4, #13]
d0041fc2:	f894 e00e 	ldrb.w	lr, [r4, #14]
d0041fc6:	ea4c 2502 	orr.w	r5, ip, r2, lsl #8
d0041fca:	7be3      	ldrb	r3, [r4, #15]
d0041fcc:	ea45 420e 	orr.w	r2, r5, lr, lsl #16
d0041fd0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0041fd4:	681b      	ldr	r3, [r3, #0]
d0041fd6:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d0041fd8:	4798      	blx	r3
d0041fda:	7b20      	ldrb	r0, [r4, #12]
d0041fdc:	7b61      	ldrb	r1, [r4, #13]
d0041fde:	7ba2      	ldrb	r2, [r4, #14]
d0041fe0:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0041fe4:	7be3      	ldrb	r3, [r4, #15]
d0041fe6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0041fea:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0041fee:	681b      	ldr	r3, [r3, #0]
d0041ff0:	681b      	ldr	r3, [r3, #0]
d0041ff2:	4798      	blx	r3
d0041ff4:	7820      	ldrb	r0, [r4, #0]
d0041ff6:	7861      	ldrb	r1, [r4, #1]
d0041ff8:	78a2      	ldrb	r2, [r4, #2]
d0041ffa:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0041ffe:	78e3      	ldrb	r3, [r4, #3]
d0042000:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0042004:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0042008:	691b      	ldr	r3, [r3, #16]
d004200a:	4798      	blx	r3
d004200c:	4605      	mov	r5, r0
d004200e:	f7fe fe6d 	bl	d0040cec <ShipUpdate>
d0042012:	f005 0301 	and.w	r3, r5, #1
d0042016:	ea8a 0a03 	eor.w	sl, sl, r3
d004201a:	9304      	str	r3, [sp, #16]
d004201c:	ea15 0f0a 	tst.w	r5, sl
d0042020:	f040 80f1 	bne.w	d0042206 <main+0x56e>
d0042024:	f005 0a02 	and.w	sl, r5, #2
d0042028:	9b03      	ldr	r3, [sp, #12]
d004202a:	4553      	cmp	r3, sl
d004202c:	d003      	beq.n	d0042036 <main+0x39e>
d004202e:	f1ba 0f00 	cmp.w	sl, #0
d0042032:	f040 80eb 	bne.w	d004220c <main+0x574>
d0042036:	9b06      	ldr	r3, [sp, #24]
d0042038:	b1b3      	cbz	r3, d0042068 <main+0x3d0>
d004203a:	3b01      	subs	r3, #1
d004203c:	b2da      	uxtb	r2, r3
d004203e:	0798      	lsls	r0, r3, #30
d0042040:	9206      	str	r2, [sp, #24]
d0042042:	d111      	bne.n	d0042068 <main+0x3d0>
d0042044:	f44f 71e0 	mov.w	r1, #448	; 0x1c0
d0042048:	f06f 001f 	mvn.w	r0, #31
d004204c:	f7ff fe0c 	bl	d0041c68 <sbx_rng_range>
d0042050:	f44f 7190 	mov.w	r1, #288	; 0x120
d0042054:	4606      	mov	r6, r0
d0042056:	f06f 001f 	mvn.w	r0, #31
d004205a:	f7ff fe05 	bl	d0041c68 <sbx_rng_range>
d004205e:	4601      	mov	r1, r0
d0042060:	b230      	sxth	r0, r6
d0042062:	b209      	sxth	r1, r1
d0042064:	f7ff fcba 	bl	d00419dc <spawnExplode>
d0042068:	f899 3000 	ldrb.w	r3, [r9]
d004206c:	b9cb      	cbnz	r3, d00420a2 <main+0x40a>
d004206e:	f015 0204 	ands.w	r2, r5, #4
d0042072:	f040 80f3 	bne.w	d004225c <main+0x5c4>
d0042076:	9b07      	ldr	r3, [sp, #28]
d0042078:	b173      	cbz	r3, d0042098 <main+0x400>
d004207a:	7c23      	ldrb	r3, [r4, #16]
d004207c:	2002      	movs	r0, #2
d004207e:	7c61      	ldrb	r1, [r4, #17]
d0042080:	9207      	str	r2, [sp, #28]
d0042082:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d0042086:	7ca2      	ldrb	r2, [r4, #18]
d0042088:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004208c:	7ce2      	ldrb	r2, [r4, #19]
d004208e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042092:	689b      	ldr	r3, [r3, #8]
d0042094:	689b      	ldr	r3, [r3, #8]
d0042096:	4798      	blx	r3
d0042098:	0729      	lsls	r1, r5, #28
d004209a:	f140 80b1 	bpl.w	d0042200 <main+0x568>
d004209e:	f7fe fd9f 	bl	d0040be0 <ShieldON>
d00420a2:	4b66      	ldr	r3, [pc, #408]	; (d004223c <main+0x5a4>)
d00420a4:	ed93 7a00 	vldr	s14, [r3]
d00420a8:	4b65      	ldr	r3, [pc, #404]	; (d0042240 <main+0x5a8>)
d00420aa:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d00420ae:	edd3 7a00 	vldr	s15, [r3]
d00420b2:	4b64      	ldr	r3, [pc, #400]	; (d0042244 <main+0x5ac>)
d00420b4:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00420b8:	781b      	ldrb	r3, [r3, #0]
d00420ba:	f888 3018 	strb.w	r3, [r8, #24]
d00420be:	ee17 3a10 	vmov	r3, s14
d00420c2:	b21a      	sxth	r2, r3
d00420c4:	ee17 3a90 	vmov	r3, s15
d00420c8:	b21b      	sxth	r3, r3
d00420ca:	f8a8 2014 	strh.w	r2, [r8, #20]
d00420ce:	f8a8 3016 	strh.w	r3, [r8, #22]
d00420d2:	9b05      	ldr	r3, [sp, #20]
d00420d4:	2b63      	cmp	r3, #99	; 0x63
d00420d6:	d810      	bhi.n	d00420fa <main+0x462>
d00420d8:	7b20      	ldrb	r0, [r4, #12]
d00420da:	3301      	adds	r3, #1
d00420dc:	7b61      	ldrb	r1, [r4, #13]
d00420de:	7ba2      	ldrb	r2, [r4, #14]
d00420e0:	b2dd      	uxtb	r5, r3
d00420e2:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00420e6:	7be3      	ldrb	r3, [r4, #15]
d00420e8:	4628      	mov	r0, r5
d00420ea:	9505      	str	r5, [sp, #20]
d00420ec:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00420f0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00420f4:	681b      	ldr	r3, [r3, #0]
d00420f6:	689b      	ldr	r3, [r3, #8]
d00420f8:	4798      	blx	r3
d00420fa:	4b53      	ldr	r3, [pc, #332]	; (d0042248 <main+0x5b0>)
d00420fc:	4a53      	ldr	r2, [pc, #332]	; (d004224c <main+0x5b4>)
d00420fe:	ed93 7a00 	vldr	s14, [r3]
d0042102:	ed92 6a00 	vldr	s12, [r2]
d0042106:	4a52      	ldr	r2, [pc, #328]	; (d0042250 <main+0x5b8>)
d0042108:	ee37 7a06 	vadd.f32	s14, s14, s12
d004210c:	eddb 7a00 	vldr	s15, [fp]
d0042110:	edd2 6a00 	vldr	s13, [r2]
d0042114:	eeb4 7ac8 	vcmpe.f32	s14, s16
d0042118:	ed83 7a00 	vstr	s14, [r3]
d004211c:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0042120:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042124:	edcb 7a00 	vstr	s15, [fp]
d0042128:	dd60      	ble.n	d00421ec <main+0x554>
d004212a:	25a0      	movs	r5, #160	; 0xa0
d004212c:	ed83 8a00 	vstr	s16, [r3]
d0042130:	eef4 7ac8 	vcmpe.f32	s15, s16
d0042134:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042138:	dd4f      	ble.n	d00421da <main+0x542>
d004213a:	26a0      	movs	r6, #160	; 0xa0
d004213c:	ed8b 8a00 	vstr	s16, [fp]
d0042140:	7b20      	ldrb	r0, [r4, #12]
d0042142:	7b61      	ldrb	r1, [r4, #13]
d0042144:	7ba2      	ldrb	r2, [r4, #14]
d0042146:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004214a:	7be3      	ldrb	r3, [r4, #15]
d004214c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0042150:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0042154:	681b      	ldr	r3, [r3, #0]
d0042156:	68db      	ldr	r3, [r3, #12]
d0042158:	4798      	blx	r3
d004215a:	f899 3000 	ldrb.w	r3, [r9]
d004215e:	f1c3 0301 	rsb	r3, r3, #1
d0042162:	b2db      	uxtb	r3, r3
d0042164:	f889 3000 	strb.w	r3, [r9]
d0042168:	f899 3000 	ldrb.w	r3, [r9]
d004216c:	7b21      	ldrb	r1, [r4, #12]
d004216e:	7b60      	ldrb	r0, [r4, #13]
d0042170:	7ba2      	ldrb	r2, [r4, #14]
d0042172:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0042176:	b34b      	cbz	r3, d00421cc <main+0x534>
d0042178:	4936      	ldr	r1, [pc, #216]	; (d0042254 <main+0x5bc>)
d004217a:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d004217e:	7be3      	ldrb	r3, [r4, #15]
d0042180:	6809      	ldr	r1, [r1, #0]
d0042182:	4835      	ldr	r0, [pc, #212]	; (d0042258 <main+0x5c0>)
d0042184:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0042188:	6800      	ldr	r0, [r0, #0]
d004218a:	681b      	ldr	r3, [r3, #0]
d004218c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d004218e:	4798      	blx	r3
d0042190:	7b20      	ldrb	r0, [r4, #12]
d0042192:	7b61      	ldrb	r1, [r4, #13]
d0042194:	7ba2      	ldrb	r2, [r4, #14]
d0042196:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004219a:	7be3      	ldrb	r3, [r4, #15]
d004219c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00421a0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00421a4:	685b      	ldr	r3, [r3, #4]
d00421a6:	681b      	ldr	r3, [r3, #0]
d00421a8:	4798      	blx	r3
d00421aa:	f7ff f857 	bl	d004125c <proc_astroids>
d00421ae:	f7fe ff1d 	bl	d0040fec <doBullets>
d00421b2:	f7ff fb7f 	bl	d00418b4 <doFlames>
d00421b6:	f7ff fc2b 	bl	d0041a10 <doExplodes>
d00421ba:	4b19      	ldr	r3, [pc, #100]	; (d0042220 <main+0x588>)
d00421bc:	781b      	ldrb	r3, [r3, #0]
d00421be:	07da      	lsls	r2, r3, #31
d00421c0:	f57f aebc 	bpl.w	d0041f3c <main+0x2a4>
d00421c4:	3b01      	subs	r3, #1
d00421c6:	4a16      	ldr	r2, [pc, #88]	; (d0042220 <main+0x588>)
d00421c8:	7013      	strb	r3, [r2, #0]
d00421ca:	e6ca      	b.n	d0041f62 <main+0x2ca>
d00421cc:	4922      	ldr	r1, [pc, #136]	; (d0042258 <main+0x5c0>)
d00421ce:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d00421d2:	7be3      	ldrb	r3, [r4, #15]
d00421d4:	6809      	ldr	r1, [r1, #0]
d00421d6:	481f      	ldr	r0, [pc, #124]	; (d0042254 <main+0x5bc>)
d00421d8:	e7d4      	b.n	d0042184 <main+0x4ec>
d00421da:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d00421de:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00421e2:	d577      	bpl.n	d00422d4 <main+0x63c>
d00421e4:	2600      	movs	r6, #0
d00421e6:	edcb 8a00 	vstr	s17, [fp]
d00421ea:	e7a9      	b.n	d0042140 <main+0x4a8>
d00421ec:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d00421f0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00421f4:	d573      	bpl.n	d00422de <main+0x646>
d00421f6:	4b14      	ldr	r3, [pc, #80]	; (d0042248 <main+0x5b0>)
d00421f8:	2500      	movs	r5, #0
d00421fa:	edc3 8a00 	vstr	s17, [r3]
d00421fe:	e797      	b.n	d0042130 <main+0x498>
d0042200:	f7fe fd36 	bl	d0040c70 <ShieldOFF>
d0042204:	e74d      	b.n	d00420a2 <main+0x40a>
d0042206:	f7fe fe39 	bl	d0040e7c <fireBullet>
d004220a:	e70b      	b.n	d0042024 <main+0x38c>
d004220c:	21c8      	movs	r1, #200	; 0xc8
d004220e:	231f      	movs	r3, #31
d0042210:	2200      	movs	r2, #0
d0042212:	4608      	mov	r0, r1
d0042214:	9306      	str	r3, [sp, #24]
d0042216:	f7ff f805 	bl	d0041224 <SpawnAstroid>
d004221a:	e725      	b.n	d0042068 <main+0x3d0>
d004221c:	d0044380 	.word	0xd0044380
d0042220:	d0043fa0 	.word	0xd0043fa0
d0042224:	d0043e8c 	.word	0xd0043e8c
d0042228:	d004351c 	.word	0xd004351c
d004222c:	d0043e8b 	.word	0xd0043e8b
d0042230:	d004352c 	.word	0xd004352c
d0042234:	d0043e90 	.word	0xd0043e90
d0042238:	d0043538 	.word	0xd0043538
d004223c:	d00443a8 	.word	0xd00443a8
d0042240:	d00443ac 	.word	0xd00443ac
d0042244:	d00443a4 	.word	0xd00443a4
d0042248:	d0044fb0 	.word	0xd0044fb0
d004224c:	d0044360 	.word	0xd0044360
d0042250:	d00443a0 	.word	0xd00443a0
d0042254:	d0044ff8 	.word	0xd0044ff8
d0042258:	d0044ffc 	.word	0xd0044ffc
d004225c:	f7ff fab6 	bl	d00417cc <spawnFlame>
d0042260:	9b07      	ldr	r3, [sp, #28]
d0042262:	b96b      	cbnz	r3, d0042280 <main+0x5e8>
d0042264:	7c23      	ldrb	r3, [r4, #16]
d0042266:	2002      	movs	r0, #2
d0042268:	7c62      	ldrb	r2, [r4, #17]
d004226a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004226e:	7ca2      	ldrb	r2, [r4, #18]
d0042270:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0042274:	7ce2      	ldrb	r2, [r4, #19]
d0042276:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004227a:	689b      	ldr	r3, [r3, #8]
d004227c:	685b      	ldr	r3, [r3, #4]
d004227e:	4798      	blx	r3
d0042280:	f8b8 3014 	ldrh.w	r3, [r8, #20]
d0042284:	f06f 067e 	mvn.w	r6, #126	; 0x7e
d0042288:	7c21      	ldrb	r1, [r4, #16]
d004228a:	3320      	adds	r3, #32
d004228c:	7c62      	ldrb	r2, [r4, #17]
d004228e:	7ca0      	ldrb	r0, [r4, #18]
d0042290:	b21b      	sxth	r3, r3
d0042292:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
d0042296:	3bf0      	subs	r3, #240	; 0xf0
d0042298:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d004229c:	4a12      	ldr	r2, [pc, #72]	; (d00422e8 <main+0x650>)
d004229e:	ebc3 13c3 	rsb	r3, r3, r3, lsl #7
d00422a2:	fb82 1203 	smull	r1, r2, r2, r3
d00422a6:	17d9      	asrs	r1, r3, #31
d00422a8:	4413      	add	r3, r2
d00422aa:	7ce2      	ldrb	r2, [r4, #19]
d00422ac:	ebc1 11e3 	rsb	r1, r1, r3, asr #7
d00422b0:	ea40 6202 	orr.w	r2, r0, r2, lsl #24
d00422b4:	2002      	movs	r0, #2
d00422b6:	b209      	sxth	r1, r1
d00422b8:	6893      	ldr	r3, [r2, #8]
d00422ba:	297f      	cmp	r1, #127	; 0x7f
d00422bc:	699a      	ldr	r2, [r3, #24]
d00422be:	f04f 0301 	mov.w	r3, #1
d00422c2:	bfa8      	it	ge
d00422c4:	217f      	movge	r1, #127	; 0x7f
d00422c6:	9307      	str	r3, [sp, #28]
d00422c8:	42b1      	cmp	r1, r6
d00422ca:	bfb8      	it	lt
d00422cc:	4631      	movlt	r1, r6
d00422ce:	b249      	sxtb	r1, r1
d00422d0:	4790      	blx	r2
d00422d2:	e6e1      	b.n	d0042098 <main+0x400>
d00422d4:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00422d8:	ee17 6a90 	vmov	r6, s15
d00422dc:	e730      	b.n	d0042140 <main+0x4a8>
d00422de:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d00422e2:	ee17 5a10 	vmov	r5, s14
d00422e6:	e723      	b.n	d0042130 <main+0x498>
d00422e8:	88888889 	.word	0x88888889

d00422ec <__errno>:
d00422ec:	4b01      	ldr	r3, [pc, #4]	; (d00422f4 <__errno+0x8>)
d00422ee:	6818      	ldr	r0, [r3, #0]
d00422f0:	4770      	bx	lr
d00422f2:	bf00      	nop
d00422f4:	d00435e0 	.word	0xd00435e0

d00422f8 <malloc>:
d00422f8:	4b02      	ldr	r3, [pc, #8]	; (d0042304 <malloc+0xc>)
d00422fa:	4601      	mov	r1, r0
d00422fc:	6818      	ldr	r0, [r3, #0]
d00422fe:	f000 b861 	b.w	d00423c4 <_malloc_r>
d0042302:	bf00      	nop
d0042304:	d00435e0 	.word	0xd00435e0

d0042308 <memcmp>:
d0042308:	b530      	push	{r4, r5, lr}
d004230a:	3901      	subs	r1, #1
d004230c:	2400      	movs	r4, #0
d004230e:	42a2      	cmp	r2, r4
d0042310:	d101      	bne.n	d0042316 <memcmp+0xe>
d0042312:	2000      	movs	r0, #0
d0042314:	e005      	b.n	d0042322 <memcmp+0x1a>
d0042316:	5d03      	ldrb	r3, [r0, r4]
d0042318:	3401      	adds	r4, #1
d004231a:	5d0d      	ldrb	r5, [r1, r4]
d004231c:	42ab      	cmp	r3, r5
d004231e:	d0f6      	beq.n	d004230e <memcmp+0x6>
d0042320:	1b58      	subs	r0, r3, r5
d0042322:	bd30      	pop	{r4, r5, pc}

d0042324 <_free_r>:
d0042324:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0042326:	2900      	cmp	r1, #0
d0042328:	d048      	beq.n	d00423bc <_free_r+0x98>
d004232a:	f851 3c04 	ldr.w	r3, [r1, #-4]
d004232e:	9001      	str	r0, [sp, #4]
d0042330:	2b00      	cmp	r3, #0
d0042332:	f1a1 0404 	sub.w	r4, r1, #4
d0042336:	bfb8      	it	lt
d0042338:	18e4      	addlt	r4, r4, r3
d004233a:	f000 fb69 	bl	d0042a10 <__malloc_lock>
d004233e:	4a20      	ldr	r2, [pc, #128]	; (d00423c0 <_free_r+0x9c>)
d0042340:	9801      	ldr	r0, [sp, #4]
d0042342:	6813      	ldr	r3, [r2, #0]
d0042344:	4615      	mov	r5, r2
d0042346:	b933      	cbnz	r3, d0042356 <_free_r+0x32>
d0042348:	6063      	str	r3, [r4, #4]
d004234a:	6014      	str	r4, [r2, #0]
d004234c:	b003      	add	sp, #12
d004234e:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0042352:	f000 bb63 	b.w	d0042a1c <__malloc_unlock>
d0042356:	42a3      	cmp	r3, r4
d0042358:	d90b      	bls.n	d0042372 <_free_r+0x4e>
d004235a:	6821      	ldr	r1, [r4, #0]
d004235c:	1862      	adds	r2, r4, r1
d004235e:	4293      	cmp	r3, r2
d0042360:	bf04      	itt	eq
d0042362:	681a      	ldreq	r2, [r3, #0]
d0042364:	685b      	ldreq	r3, [r3, #4]
d0042366:	6063      	str	r3, [r4, #4]
d0042368:	bf04      	itt	eq
d004236a:	1852      	addeq	r2, r2, r1
d004236c:	6022      	streq	r2, [r4, #0]
d004236e:	602c      	str	r4, [r5, #0]
d0042370:	e7ec      	b.n	d004234c <_free_r+0x28>
d0042372:	461a      	mov	r2, r3
d0042374:	685b      	ldr	r3, [r3, #4]
d0042376:	b10b      	cbz	r3, d004237c <_free_r+0x58>
d0042378:	42a3      	cmp	r3, r4
d004237a:	d9fa      	bls.n	d0042372 <_free_r+0x4e>
d004237c:	6811      	ldr	r1, [r2, #0]
d004237e:	1855      	adds	r5, r2, r1
d0042380:	42a5      	cmp	r5, r4
d0042382:	d10b      	bne.n	d004239c <_free_r+0x78>
d0042384:	6824      	ldr	r4, [r4, #0]
d0042386:	4421      	add	r1, r4
d0042388:	1854      	adds	r4, r2, r1
d004238a:	42a3      	cmp	r3, r4
d004238c:	6011      	str	r1, [r2, #0]
d004238e:	d1dd      	bne.n	d004234c <_free_r+0x28>
d0042390:	681c      	ldr	r4, [r3, #0]
d0042392:	685b      	ldr	r3, [r3, #4]
d0042394:	6053      	str	r3, [r2, #4]
d0042396:	4421      	add	r1, r4
d0042398:	6011      	str	r1, [r2, #0]
d004239a:	e7d7      	b.n	d004234c <_free_r+0x28>
d004239c:	d902      	bls.n	d00423a4 <_free_r+0x80>
d004239e:	230c      	movs	r3, #12
d00423a0:	6003      	str	r3, [r0, #0]
d00423a2:	e7d3      	b.n	d004234c <_free_r+0x28>
d00423a4:	6825      	ldr	r5, [r4, #0]
d00423a6:	1961      	adds	r1, r4, r5
d00423a8:	428b      	cmp	r3, r1
d00423aa:	bf04      	itt	eq
d00423ac:	6819      	ldreq	r1, [r3, #0]
d00423ae:	685b      	ldreq	r3, [r3, #4]
d00423b0:	6063      	str	r3, [r4, #4]
d00423b2:	bf04      	itt	eq
d00423b4:	1949      	addeq	r1, r1, r5
d00423b6:	6021      	streq	r1, [r4, #0]
d00423b8:	6054      	str	r4, [r2, #4]
d00423ba:	e7c7      	b.n	d004234c <_free_r+0x28>
d00423bc:	b003      	add	sp, #12
d00423be:	bd30      	pop	{r4, r5, pc}
d00423c0:	d0043e94 	.word	0xd0043e94

d00423c4 <_malloc_r>:
d00423c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00423c6:	1ccd      	adds	r5, r1, #3
d00423c8:	f025 0503 	bic.w	r5, r5, #3
d00423cc:	3508      	adds	r5, #8
d00423ce:	2d0c      	cmp	r5, #12
d00423d0:	bf38      	it	cc
d00423d2:	250c      	movcc	r5, #12
d00423d4:	2d00      	cmp	r5, #0
d00423d6:	4606      	mov	r6, r0
d00423d8:	db01      	blt.n	d00423de <_malloc_r+0x1a>
d00423da:	42a9      	cmp	r1, r5
d00423dc:	d903      	bls.n	d00423e6 <_malloc_r+0x22>
d00423de:	230c      	movs	r3, #12
d00423e0:	6033      	str	r3, [r6, #0]
d00423e2:	2000      	movs	r0, #0
d00423e4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00423e6:	f000 fb13 	bl	d0042a10 <__malloc_lock>
d00423ea:	4921      	ldr	r1, [pc, #132]	; (d0042470 <_malloc_r+0xac>)
d00423ec:	680a      	ldr	r2, [r1, #0]
d00423ee:	4614      	mov	r4, r2
d00423f0:	b99c      	cbnz	r4, d004241a <_malloc_r+0x56>
d00423f2:	4f20      	ldr	r7, [pc, #128]	; (d0042474 <_malloc_r+0xb0>)
d00423f4:	683b      	ldr	r3, [r7, #0]
d00423f6:	b923      	cbnz	r3, d0042402 <_malloc_r+0x3e>
d00423f8:	4621      	mov	r1, r4
d00423fa:	4630      	mov	r0, r6
d00423fc:	f7fd fecc 	bl	d0040198 <_sbrk_r>
d0042400:	6038      	str	r0, [r7, #0]
d0042402:	4629      	mov	r1, r5
d0042404:	4630      	mov	r0, r6
d0042406:	f7fd fec7 	bl	d0040198 <_sbrk_r>
d004240a:	1c43      	adds	r3, r0, #1
d004240c:	d123      	bne.n	d0042456 <_malloc_r+0x92>
d004240e:	230c      	movs	r3, #12
d0042410:	6033      	str	r3, [r6, #0]
d0042412:	4630      	mov	r0, r6
d0042414:	f000 fb02 	bl	d0042a1c <__malloc_unlock>
d0042418:	e7e3      	b.n	d00423e2 <_malloc_r+0x1e>
d004241a:	6823      	ldr	r3, [r4, #0]
d004241c:	1b5b      	subs	r3, r3, r5
d004241e:	d417      	bmi.n	d0042450 <_malloc_r+0x8c>
d0042420:	2b0b      	cmp	r3, #11
d0042422:	d903      	bls.n	d004242c <_malloc_r+0x68>
d0042424:	6023      	str	r3, [r4, #0]
d0042426:	441c      	add	r4, r3
d0042428:	6025      	str	r5, [r4, #0]
d004242a:	e004      	b.n	d0042436 <_malloc_r+0x72>
d004242c:	6863      	ldr	r3, [r4, #4]
d004242e:	42a2      	cmp	r2, r4
d0042430:	bf0c      	ite	eq
d0042432:	600b      	streq	r3, [r1, #0]
d0042434:	6053      	strne	r3, [r2, #4]
d0042436:	4630      	mov	r0, r6
d0042438:	f000 faf0 	bl	d0042a1c <__malloc_unlock>
d004243c:	f104 000b 	add.w	r0, r4, #11
d0042440:	1d23      	adds	r3, r4, #4
d0042442:	f020 0007 	bic.w	r0, r0, #7
d0042446:	1ac2      	subs	r2, r0, r3
d0042448:	d0cc      	beq.n	d00423e4 <_malloc_r+0x20>
d004244a:	1a1b      	subs	r3, r3, r0
d004244c:	50a3      	str	r3, [r4, r2]
d004244e:	e7c9      	b.n	d00423e4 <_malloc_r+0x20>
d0042450:	4622      	mov	r2, r4
d0042452:	6864      	ldr	r4, [r4, #4]
d0042454:	e7cc      	b.n	d00423f0 <_malloc_r+0x2c>
d0042456:	1cc4      	adds	r4, r0, #3
d0042458:	f024 0403 	bic.w	r4, r4, #3
d004245c:	42a0      	cmp	r0, r4
d004245e:	d0e3      	beq.n	d0042428 <_malloc_r+0x64>
d0042460:	1a21      	subs	r1, r4, r0
d0042462:	4630      	mov	r0, r6
d0042464:	f7fd fe98 	bl	d0040198 <_sbrk_r>
d0042468:	3001      	adds	r0, #1
d004246a:	d1dd      	bne.n	d0042428 <_malloc_r+0x64>
d004246c:	e7cf      	b.n	d004240e <_malloc_r+0x4a>
d004246e:	bf00      	nop
d0042470:	d0043e94 	.word	0xd0043e94
d0042474:	d0043e98 	.word	0xd0043e98

d0042478 <setbuf>:
d0042478:	2900      	cmp	r1, #0
d004247a:	f44f 6380 	mov.w	r3, #1024	; 0x400
d004247e:	bf0c      	ite	eq
d0042480:	2202      	moveq	r2, #2
d0042482:	2200      	movne	r2, #0
d0042484:	f000 b800 	b.w	d0042488 <setvbuf>

d0042488 <setvbuf>:
d0042488:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d004248c:	461d      	mov	r5, r3
d004248e:	4b5d      	ldr	r3, [pc, #372]	; (d0042604 <setvbuf+0x17c>)
d0042490:	681f      	ldr	r7, [r3, #0]
d0042492:	4604      	mov	r4, r0
d0042494:	460e      	mov	r6, r1
d0042496:	4690      	mov	r8, r2
d0042498:	b127      	cbz	r7, d00424a4 <setvbuf+0x1c>
d004249a:	69bb      	ldr	r3, [r7, #24]
d004249c:	b913      	cbnz	r3, d00424a4 <setvbuf+0x1c>
d004249e:	4638      	mov	r0, r7
d00424a0:	f000 f9f2 	bl	d0042888 <__sinit>
d00424a4:	4b58      	ldr	r3, [pc, #352]	; (d0042608 <setvbuf+0x180>)
d00424a6:	429c      	cmp	r4, r3
d00424a8:	d167      	bne.n	d004257a <setvbuf+0xf2>
d00424aa:	687c      	ldr	r4, [r7, #4]
d00424ac:	f1b8 0f02 	cmp.w	r8, #2
d00424b0:	d006      	beq.n	d00424c0 <setvbuf+0x38>
d00424b2:	f1b8 0f01 	cmp.w	r8, #1
d00424b6:	f200 809f 	bhi.w	d00425f8 <setvbuf+0x170>
d00424ba:	2d00      	cmp	r5, #0
d00424bc:	f2c0 809c 	blt.w	d00425f8 <setvbuf+0x170>
d00424c0:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00424c2:	07db      	lsls	r3, r3, #31
d00424c4:	d405      	bmi.n	d00424d2 <setvbuf+0x4a>
d00424c6:	89a3      	ldrh	r3, [r4, #12]
d00424c8:	0598      	lsls	r0, r3, #22
d00424ca:	d402      	bmi.n	d00424d2 <setvbuf+0x4a>
d00424cc:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00424ce:	f000 fa79 	bl	d00429c4 <__retarget_lock_acquire_recursive>
d00424d2:	4621      	mov	r1, r4
d00424d4:	4638      	mov	r0, r7
d00424d6:	f000 f943 	bl	d0042760 <_fflush_r>
d00424da:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00424dc:	b141      	cbz	r1, d00424f0 <setvbuf+0x68>
d00424de:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00424e2:	4299      	cmp	r1, r3
d00424e4:	d002      	beq.n	d00424ec <setvbuf+0x64>
d00424e6:	4638      	mov	r0, r7
d00424e8:	f7ff ff1c 	bl	d0042324 <_free_r>
d00424ec:	2300      	movs	r3, #0
d00424ee:	6363      	str	r3, [r4, #52]	; 0x34
d00424f0:	2300      	movs	r3, #0
d00424f2:	61a3      	str	r3, [r4, #24]
d00424f4:	6063      	str	r3, [r4, #4]
d00424f6:	89a3      	ldrh	r3, [r4, #12]
d00424f8:	0619      	lsls	r1, r3, #24
d00424fa:	d503      	bpl.n	d0042504 <setvbuf+0x7c>
d00424fc:	6921      	ldr	r1, [r4, #16]
d00424fe:	4638      	mov	r0, r7
d0042500:	f7ff ff10 	bl	d0042324 <_free_r>
d0042504:	89a3      	ldrh	r3, [r4, #12]
d0042506:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d004250a:	f023 0303 	bic.w	r3, r3, #3
d004250e:	f1b8 0f02 	cmp.w	r8, #2
d0042512:	81a3      	strh	r3, [r4, #12]
d0042514:	d06c      	beq.n	d00425f0 <setvbuf+0x168>
d0042516:	ab01      	add	r3, sp, #4
d0042518:	466a      	mov	r2, sp
d004251a:	4621      	mov	r1, r4
d004251c:	4638      	mov	r0, r7
d004251e:	f000 fa53 	bl	d00429c8 <__swhatbuf_r>
d0042522:	89a3      	ldrh	r3, [r4, #12]
d0042524:	4318      	orrs	r0, r3
d0042526:	81a0      	strh	r0, [r4, #12]
d0042528:	2d00      	cmp	r5, #0
d004252a:	d130      	bne.n	d004258e <setvbuf+0x106>
d004252c:	9d00      	ldr	r5, [sp, #0]
d004252e:	4628      	mov	r0, r5
d0042530:	f7ff fee2 	bl	d00422f8 <malloc>
d0042534:	4606      	mov	r6, r0
d0042536:	2800      	cmp	r0, #0
d0042538:	d155      	bne.n	d00425e6 <setvbuf+0x15e>
d004253a:	f8dd 9000 	ldr.w	r9, [sp]
d004253e:	45a9      	cmp	r9, r5
d0042540:	d14a      	bne.n	d00425d8 <setvbuf+0x150>
d0042542:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0042546:	2200      	movs	r2, #0
d0042548:	60a2      	str	r2, [r4, #8]
d004254a:	f104 0247 	add.w	r2, r4, #71	; 0x47
d004254e:	6022      	str	r2, [r4, #0]
d0042550:	6122      	str	r2, [r4, #16]
d0042552:	2201      	movs	r2, #1
d0042554:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0042558:	6162      	str	r2, [r4, #20]
d004255a:	6e62      	ldr	r2, [r4, #100]	; 0x64
d004255c:	f043 0302 	orr.w	r3, r3, #2
d0042560:	07d2      	lsls	r2, r2, #31
d0042562:	81a3      	strh	r3, [r4, #12]
d0042564:	d405      	bmi.n	d0042572 <setvbuf+0xea>
d0042566:	f413 7f00 	tst.w	r3, #512	; 0x200
d004256a:	d102      	bne.n	d0042572 <setvbuf+0xea>
d004256c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d004256e:	f000 fa2a 	bl	d00429c6 <__retarget_lock_release_recursive>
d0042572:	4628      	mov	r0, r5
d0042574:	b003      	add	sp, #12
d0042576:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d004257a:	4b24      	ldr	r3, [pc, #144]	; (d004260c <setvbuf+0x184>)
d004257c:	429c      	cmp	r4, r3
d004257e:	d101      	bne.n	d0042584 <setvbuf+0xfc>
d0042580:	68bc      	ldr	r4, [r7, #8]
d0042582:	e793      	b.n	d00424ac <setvbuf+0x24>
d0042584:	4b22      	ldr	r3, [pc, #136]	; (d0042610 <setvbuf+0x188>)
d0042586:	429c      	cmp	r4, r3
d0042588:	bf08      	it	eq
d004258a:	68fc      	ldreq	r4, [r7, #12]
d004258c:	e78e      	b.n	d00424ac <setvbuf+0x24>
d004258e:	2e00      	cmp	r6, #0
d0042590:	d0cd      	beq.n	d004252e <setvbuf+0xa6>
d0042592:	69bb      	ldr	r3, [r7, #24]
d0042594:	b913      	cbnz	r3, d004259c <setvbuf+0x114>
d0042596:	4638      	mov	r0, r7
d0042598:	f000 f976 	bl	d0042888 <__sinit>
d004259c:	f1b8 0f01 	cmp.w	r8, #1
d00425a0:	bf08      	it	eq
d00425a2:	89a3      	ldrheq	r3, [r4, #12]
d00425a4:	6026      	str	r6, [r4, #0]
d00425a6:	bf04      	itt	eq
d00425a8:	f043 0301 	orreq.w	r3, r3, #1
d00425ac:	81a3      	strheq	r3, [r4, #12]
d00425ae:	89a2      	ldrh	r2, [r4, #12]
d00425b0:	f012 0308 	ands.w	r3, r2, #8
d00425b4:	e9c4 6504 	strd	r6, r5, [r4, #16]
d00425b8:	d01c      	beq.n	d00425f4 <setvbuf+0x16c>
d00425ba:	07d3      	lsls	r3, r2, #31
d00425bc:	bf41      	itttt	mi
d00425be:	2300      	movmi	r3, #0
d00425c0:	426d      	negmi	r5, r5
d00425c2:	60a3      	strmi	r3, [r4, #8]
d00425c4:	61a5      	strmi	r5, [r4, #24]
d00425c6:	bf58      	it	pl
d00425c8:	60a5      	strpl	r5, [r4, #8]
d00425ca:	6e65      	ldr	r5, [r4, #100]	; 0x64
d00425cc:	f015 0501 	ands.w	r5, r5, #1
d00425d0:	d115      	bne.n	d00425fe <setvbuf+0x176>
d00425d2:	f412 7f00 	tst.w	r2, #512	; 0x200
d00425d6:	e7c8      	b.n	d004256a <setvbuf+0xe2>
d00425d8:	4648      	mov	r0, r9
d00425da:	f7ff fe8d 	bl	d00422f8 <malloc>
d00425de:	4606      	mov	r6, r0
d00425e0:	2800      	cmp	r0, #0
d00425e2:	d0ae      	beq.n	d0042542 <setvbuf+0xba>
d00425e4:	464d      	mov	r5, r9
d00425e6:	89a3      	ldrh	r3, [r4, #12]
d00425e8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00425ec:	81a3      	strh	r3, [r4, #12]
d00425ee:	e7d0      	b.n	d0042592 <setvbuf+0x10a>
d00425f0:	2500      	movs	r5, #0
d00425f2:	e7a8      	b.n	d0042546 <setvbuf+0xbe>
d00425f4:	60a3      	str	r3, [r4, #8]
d00425f6:	e7e8      	b.n	d00425ca <setvbuf+0x142>
d00425f8:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00425fc:	e7b9      	b.n	d0042572 <setvbuf+0xea>
d00425fe:	2500      	movs	r5, #0
d0042600:	e7b7      	b.n	d0042572 <setvbuf+0xea>
d0042602:	bf00      	nop
d0042604:	d00435e0 	.word	0xd00435e0
d0042608:	d0043564 	.word	0xd0043564
d004260c:	d0043584 	.word	0xd0043584
d0042610:	d0043544 	.word	0xd0043544

d0042614 <siprintf>:
d0042614:	b40e      	push	{r1, r2, r3}
d0042616:	b500      	push	{lr}
d0042618:	b09c      	sub	sp, #112	; 0x70
d004261a:	ab1d      	add	r3, sp, #116	; 0x74
d004261c:	9002      	str	r0, [sp, #8]
d004261e:	9006      	str	r0, [sp, #24]
d0042620:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d0042624:	4809      	ldr	r0, [pc, #36]	; (d004264c <siprintf+0x38>)
d0042626:	9107      	str	r1, [sp, #28]
d0042628:	9104      	str	r1, [sp, #16]
d004262a:	4909      	ldr	r1, [pc, #36]	; (d0042650 <siprintf+0x3c>)
d004262c:	f853 2b04 	ldr.w	r2, [r3], #4
d0042630:	9105      	str	r1, [sp, #20]
d0042632:	6800      	ldr	r0, [r0, #0]
d0042634:	9301      	str	r3, [sp, #4]
d0042636:	a902      	add	r1, sp, #8
d0042638:	f000 fa52 	bl	d0042ae0 <_svfiprintf_r>
d004263c:	9b02      	ldr	r3, [sp, #8]
d004263e:	2200      	movs	r2, #0
d0042640:	701a      	strb	r2, [r3, #0]
d0042642:	b01c      	add	sp, #112	; 0x70
d0042644:	f85d eb04 	ldr.w	lr, [sp], #4
d0042648:	b003      	add	sp, #12
d004264a:	4770      	bx	lr
d004264c:	d00435e0 	.word	0xd00435e0
d0042650:	ffff0208 	.word	0xffff0208

d0042654 <__sflush_r>:
d0042654:	898a      	ldrh	r2, [r1, #12]
d0042656:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d004265a:	4605      	mov	r5, r0
d004265c:	0710      	lsls	r0, r2, #28
d004265e:	460c      	mov	r4, r1
d0042660:	d458      	bmi.n	d0042714 <__sflush_r+0xc0>
d0042662:	684b      	ldr	r3, [r1, #4]
d0042664:	2b00      	cmp	r3, #0
d0042666:	dc05      	bgt.n	d0042674 <__sflush_r+0x20>
d0042668:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d004266a:	2b00      	cmp	r3, #0
d004266c:	dc02      	bgt.n	d0042674 <__sflush_r+0x20>
d004266e:	2000      	movs	r0, #0
d0042670:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0042674:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0042676:	2e00      	cmp	r6, #0
d0042678:	d0f9      	beq.n	d004266e <__sflush_r+0x1a>
d004267a:	2300      	movs	r3, #0
d004267c:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0042680:	682f      	ldr	r7, [r5, #0]
d0042682:	602b      	str	r3, [r5, #0]
d0042684:	d032      	beq.n	d00426ec <__sflush_r+0x98>
d0042686:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0042688:	89a3      	ldrh	r3, [r4, #12]
d004268a:	075a      	lsls	r2, r3, #29
d004268c:	d505      	bpl.n	d004269a <__sflush_r+0x46>
d004268e:	6863      	ldr	r3, [r4, #4]
d0042690:	1ac0      	subs	r0, r0, r3
d0042692:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0042694:	b10b      	cbz	r3, d004269a <__sflush_r+0x46>
d0042696:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0042698:	1ac0      	subs	r0, r0, r3
d004269a:	2300      	movs	r3, #0
d004269c:	4602      	mov	r2, r0
d004269e:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d00426a0:	6a21      	ldr	r1, [r4, #32]
d00426a2:	4628      	mov	r0, r5
d00426a4:	47b0      	blx	r6
d00426a6:	1c43      	adds	r3, r0, #1
d00426a8:	89a3      	ldrh	r3, [r4, #12]
d00426aa:	d106      	bne.n	d00426ba <__sflush_r+0x66>
d00426ac:	6829      	ldr	r1, [r5, #0]
d00426ae:	291d      	cmp	r1, #29
d00426b0:	d82c      	bhi.n	d004270c <__sflush_r+0xb8>
d00426b2:	4a2a      	ldr	r2, [pc, #168]	; (d004275c <__sflush_r+0x108>)
d00426b4:	40ca      	lsrs	r2, r1
d00426b6:	07d6      	lsls	r6, r2, #31
d00426b8:	d528      	bpl.n	d004270c <__sflush_r+0xb8>
d00426ba:	2200      	movs	r2, #0
d00426bc:	6062      	str	r2, [r4, #4]
d00426be:	04d9      	lsls	r1, r3, #19
d00426c0:	6922      	ldr	r2, [r4, #16]
d00426c2:	6022      	str	r2, [r4, #0]
d00426c4:	d504      	bpl.n	d00426d0 <__sflush_r+0x7c>
d00426c6:	1c42      	adds	r2, r0, #1
d00426c8:	d101      	bne.n	d00426ce <__sflush_r+0x7a>
d00426ca:	682b      	ldr	r3, [r5, #0]
d00426cc:	b903      	cbnz	r3, d00426d0 <__sflush_r+0x7c>
d00426ce:	6560      	str	r0, [r4, #84]	; 0x54
d00426d0:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00426d2:	602f      	str	r7, [r5, #0]
d00426d4:	2900      	cmp	r1, #0
d00426d6:	d0ca      	beq.n	d004266e <__sflush_r+0x1a>
d00426d8:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00426dc:	4299      	cmp	r1, r3
d00426de:	d002      	beq.n	d00426e6 <__sflush_r+0x92>
d00426e0:	4628      	mov	r0, r5
d00426e2:	f7ff fe1f 	bl	d0042324 <_free_r>
d00426e6:	2000      	movs	r0, #0
d00426e8:	6360      	str	r0, [r4, #52]	; 0x34
d00426ea:	e7c1      	b.n	d0042670 <__sflush_r+0x1c>
d00426ec:	6a21      	ldr	r1, [r4, #32]
d00426ee:	2301      	movs	r3, #1
d00426f0:	4628      	mov	r0, r5
d00426f2:	47b0      	blx	r6
d00426f4:	1c41      	adds	r1, r0, #1
d00426f6:	d1c7      	bne.n	d0042688 <__sflush_r+0x34>
d00426f8:	682b      	ldr	r3, [r5, #0]
d00426fa:	2b00      	cmp	r3, #0
d00426fc:	d0c4      	beq.n	d0042688 <__sflush_r+0x34>
d00426fe:	2b1d      	cmp	r3, #29
d0042700:	d001      	beq.n	d0042706 <__sflush_r+0xb2>
d0042702:	2b16      	cmp	r3, #22
d0042704:	d101      	bne.n	d004270a <__sflush_r+0xb6>
d0042706:	602f      	str	r7, [r5, #0]
d0042708:	e7b1      	b.n	d004266e <__sflush_r+0x1a>
d004270a:	89a3      	ldrh	r3, [r4, #12]
d004270c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0042710:	81a3      	strh	r3, [r4, #12]
d0042712:	e7ad      	b.n	d0042670 <__sflush_r+0x1c>
d0042714:	690f      	ldr	r7, [r1, #16]
d0042716:	2f00      	cmp	r7, #0
d0042718:	d0a9      	beq.n	d004266e <__sflush_r+0x1a>
d004271a:	0793      	lsls	r3, r2, #30
d004271c:	680e      	ldr	r6, [r1, #0]
d004271e:	bf08      	it	eq
d0042720:	694b      	ldreq	r3, [r1, #20]
d0042722:	600f      	str	r7, [r1, #0]
d0042724:	bf18      	it	ne
d0042726:	2300      	movne	r3, #0
d0042728:	eba6 0807 	sub.w	r8, r6, r7
d004272c:	608b      	str	r3, [r1, #8]
d004272e:	f1b8 0f00 	cmp.w	r8, #0
d0042732:	dd9c      	ble.n	d004266e <__sflush_r+0x1a>
d0042734:	6a21      	ldr	r1, [r4, #32]
d0042736:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0042738:	4643      	mov	r3, r8
d004273a:	463a      	mov	r2, r7
d004273c:	4628      	mov	r0, r5
d004273e:	47b0      	blx	r6
d0042740:	2800      	cmp	r0, #0
d0042742:	dc06      	bgt.n	d0042752 <__sflush_r+0xfe>
d0042744:	89a3      	ldrh	r3, [r4, #12]
d0042746:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d004274a:	81a3      	strh	r3, [r4, #12]
d004274c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0042750:	e78e      	b.n	d0042670 <__sflush_r+0x1c>
d0042752:	4407      	add	r7, r0
d0042754:	eba8 0800 	sub.w	r8, r8, r0
d0042758:	e7e9      	b.n	d004272e <__sflush_r+0xda>
d004275a:	bf00      	nop
d004275c:	20400001 	.word	0x20400001

d0042760 <_fflush_r>:
d0042760:	b538      	push	{r3, r4, r5, lr}
d0042762:	690b      	ldr	r3, [r1, #16]
d0042764:	4605      	mov	r5, r0
d0042766:	460c      	mov	r4, r1
d0042768:	b913      	cbnz	r3, d0042770 <_fflush_r+0x10>
d004276a:	2500      	movs	r5, #0
d004276c:	4628      	mov	r0, r5
d004276e:	bd38      	pop	{r3, r4, r5, pc}
d0042770:	b118      	cbz	r0, d004277a <_fflush_r+0x1a>
d0042772:	6983      	ldr	r3, [r0, #24]
d0042774:	b90b      	cbnz	r3, d004277a <_fflush_r+0x1a>
d0042776:	f000 f887 	bl	d0042888 <__sinit>
d004277a:	4b14      	ldr	r3, [pc, #80]	; (d00427cc <_fflush_r+0x6c>)
d004277c:	429c      	cmp	r4, r3
d004277e:	d11b      	bne.n	d00427b8 <_fflush_r+0x58>
d0042780:	686c      	ldr	r4, [r5, #4]
d0042782:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0042786:	2b00      	cmp	r3, #0
d0042788:	d0ef      	beq.n	d004276a <_fflush_r+0xa>
d004278a:	6e62      	ldr	r2, [r4, #100]	; 0x64
d004278c:	07d0      	lsls	r0, r2, #31
d004278e:	d404      	bmi.n	d004279a <_fflush_r+0x3a>
d0042790:	0599      	lsls	r1, r3, #22
d0042792:	d402      	bmi.n	d004279a <_fflush_r+0x3a>
d0042794:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0042796:	f000 f915 	bl	d00429c4 <__retarget_lock_acquire_recursive>
d004279a:	4628      	mov	r0, r5
d004279c:	4621      	mov	r1, r4
d004279e:	f7ff ff59 	bl	d0042654 <__sflush_r>
d00427a2:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00427a4:	07da      	lsls	r2, r3, #31
d00427a6:	4605      	mov	r5, r0
d00427a8:	d4e0      	bmi.n	d004276c <_fflush_r+0xc>
d00427aa:	89a3      	ldrh	r3, [r4, #12]
d00427ac:	059b      	lsls	r3, r3, #22
d00427ae:	d4dd      	bmi.n	d004276c <_fflush_r+0xc>
d00427b0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00427b2:	f000 f908 	bl	d00429c6 <__retarget_lock_release_recursive>
d00427b6:	e7d9      	b.n	d004276c <_fflush_r+0xc>
d00427b8:	4b05      	ldr	r3, [pc, #20]	; (d00427d0 <_fflush_r+0x70>)
d00427ba:	429c      	cmp	r4, r3
d00427bc:	d101      	bne.n	d00427c2 <_fflush_r+0x62>
d00427be:	68ac      	ldr	r4, [r5, #8]
d00427c0:	e7df      	b.n	d0042782 <_fflush_r+0x22>
d00427c2:	4b04      	ldr	r3, [pc, #16]	; (d00427d4 <_fflush_r+0x74>)
d00427c4:	429c      	cmp	r4, r3
d00427c6:	bf08      	it	eq
d00427c8:	68ec      	ldreq	r4, [r5, #12]
d00427ca:	e7da      	b.n	d0042782 <_fflush_r+0x22>
d00427cc:	d0043564 	.word	0xd0043564
d00427d0:	d0043584 	.word	0xd0043584
d00427d4:	d0043544 	.word	0xd0043544

d00427d8 <std>:
d00427d8:	2300      	movs	r3, #0
d00427da:	b510      	push	{r4, lr}
d00427dc:	4604      	mov	r4, r0
d00427de:	e9c0 3300 	strd	r3, r3, [r0]
d00427e2:	e9c0 3304 	strd	r3, r3, [r0, #16]
d00427e6:	6083      	str	r3, [r0, #8]
d00427e8:	8181      	strh	r1, [r0, #12]
d00427ea:	6643      	str	r3, [r0, #100]	; 0x64
d00427ec:	81c2      	strh	r2, [r0, #14]
d00427ee:	6183      	str	r3, [r0, #24]
d00427f0:	4619      	mov	r1, r3
d00427f2:	2208      	movs	r2, #8
d00427f4:	305c      	adds	r0, #92	; 0x5c
d00427f6:	f7fd fc21 	bl	d004003c <memset>
d00427fa:	4b05      	ldr	r3, [pc, #20]	; (d0042810 <std+0x38>)
d00427fc:	6263      	str	r3, [r4, #36]	; 0x24
d00427fe:	4b05      	ldr	r3, [pc, #20]	; (d0042814 <std+0x3c>)
d0042800:	62a3      	str	r3, [r4, #40]	; 0x28
d0042802:	4b05      	ldr	r3, [pc, #20]	; (d0042818 <std+0x40>)
d0042804:	62e3      	str	r3, [r4, #44]	; 0x2c
d0042806:	4b05      	ldr	r3, [pc, #20]	; (d004281c <std+0x44>)
d0042808:	6224      	str	r4, [r4, #32]
d004280a:	6323      	str	r3, [r4, #48]	; 0x30
d004280c:	bd10      	pop	{r4, pc}
d004280e:	bf00      	nop
d0042810:	d0043009 	.word	0xd0043009
d0042814:	d004302b 	.word	0xd004302b
d0042818:	d0043063 	.word	0xd0043063
d004281c:	d0043087 	.word	0xd0043087

d0042820 <_cleanup_r>:
d0042820:	4901      	ldr	r1, [pc, #4]	; (d0042828 <_cleanup_r+0x8>)
d0042822:	f000 b8af 	b.w	d0042984 <_fwalk_reent>
d0042826:	bf00      	nop
d0042828:	d0042761 	.word	0xd0042761

d004282c <__sfmoreglue>:
d004282c:	b570      	push	{r4, r5, r6, lr}
d004282e:	1e4a      	subs	r2, r1, #1
d0042830:	2568      	movs	r5, #104	; 0x68
d0042832:	4355      	muls	r5, r2
d0042834:	460e      	mov	r6, r1
d0042836:	f105 0174 	add.w	r1, r5, #116	; 0x74
d004283a:	f7ff fdc3 	bl	d00423c4 <_malloc_r>
d004283e:	4604      	mov	r4, r0
d0042840:	b140      	cbz	r0, d0042854 <__sfmoreglue+0x28>
d0042842:	2100      	movs	r1, #0
d0042844:	e9c0 1600 	strd	r1, r6, [r0]
d0042848:	300c      	adds	r0, #12
d004284a:	60a0      	str	r0, [r4, #8]
d004284c:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0042850:	f7fd fbf4 	bl	d004003c <memset>
d0042854:	4620      	mov	r0, r4
d0042856:	bd70      	pop	{r4, r5, r6, pc}

d0042858 <__sfp_lock_acquire>:
d0042858:	4801      	ldr	r0, [pc, #4]	; (d0042860 <__sfp_lock_acquire+0x8>)
d004285a:	f000 b8b3 	b.w	d00429c4 <__retarget_lock_acquire_recursive>
d004285e:	bf00      	nop
d0042860:	d0045008 	.word	0xd0045008

d0042864 <__sfp_lock_release>:
d0042864:	4801      	ldr	r0, [pc, #4]	; (d004286c <__sfp_lock_release+0x8>)
d0042866:	f000 b8ae 	b.w	d00429c6 <__retarget_lock_release_recursive>
d004286a:	bf00      	nop
d004286c:	d0045008 	.word	0xd0045008

d0042870 <__sinit_lock_acquire>:
d0042870:	4801      	ldr	r0, [pc, #4]	; (d0042878 <__sinit_lock_acquire+0x8>)
d0042872:	f000 b8a7 	b.w	d00429c4 <__retarget_lock_acquire_recursive>
d0042876:	bf00      	nop
d0042878:	d0045003 	.word	0xd0045003

d004287c <__sinit_lock_release>:
d004287c:	4801      	ldr	r0, [pc, #4]	; (d0042884 <__sinit_lock_release+0x8>)
d004287e:	f000 b8a2 	b.w	d00429c6 <__retarget_lock_release_recursive>
d0042882:	bf00      	nop
d0042884:	d0045003 	.word	0xd0045003

d0042888 <__sinit>:
d0042888:	b510      	push	{r4, lr}
d004288a:	4604      	mov	r4, r0
d004288c:	f7ff fff0 	bl	d0042870 <__sinit_lock_acquire>
d0042890:	69a3      	ldr	r3, [r4, #24]
d0042892:	b11b      	cbz	r3, d004289c <__sinit+0x14>
d0042894:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0042898:	f7ff bff0 	b.w	d004287c <__sinit_lock_release>
d004289c:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d00428a0:	6523      	str	r3, [r4, #80]	; 0x50
d00428a2:	4b13      	ldr	r3, [pc, #76]	; (d00428f0 <__sinit+0x68>)
d00428a4:	4a13      	ldr	r2, [pc, #76]	; (d00428f4 <__sinit+0x6c>)
d00428a6:	681b      	ldr	r3, [r3, #0]
d00428a8:	62a2      	str	r2, [r4, #40]	; 0x28
d00428aa:	42a3      	cmp	r3, r4
d00428ac:	bf04      	itt	eq
d00428ae:	2301      	moveq	r3, #1
d00428b0:	61a3      	streq	r3, [r4, #24]
d00428b2:	4620      	mov	r0, r4
d00428b4:	f000 f820 	bl	d00428f8 <__sfp>
d00428b8:	6060      	str	r0, [r4, #4]
d00428ba:	4620      	mov	r0, r4
d00428bc:	f000 f81c 	bl	d00428f8 <__sfp>
d00428c0:	60a0      	str	r0, [r4, #8]
d00428c2:	4620      	mov	r0, r4
d00428c4:	f000 f818 	bl	d00428f8 <__sfp>
d00428c8:	2200      	movs	r2, #0
d00428ca:	60e0      	str	r0, [r4, #12]
d00428cc:	2104      	movs	r1, #4
d00428ce:	6860      	ldr	r0, [r4, #4]
d00428d0:	f7ff ff82 	bl	d00427d8 <std>
d00428d4:	68a0      	ldr	r0, [r4, #8]
d00428d6:	2201      	movs	r2, #1
d00428d8:	2109      	movs	r1, #9
d00428da:	f7ff ff7d 	bl	d00427d8 <std>
d00428de:	68e0      	ldr	r0, [r4, #12]
d00428e0:	2202      	movs	r2, #2
d00428e2:	2112      	movs	r1, #18
d00428e4:	f7ff ff78 	bl	d00427d8 <std>
d00428e8:	2301      	movs	r3, #1
d00428ea:	61a3      	str	r3, [r4, #24]
d00428ec:	e7d2      	b.n	d0042894 <__sinit+0xc>
d00428ee:	bf00      	nop
d00428f0:	d0043270 	.word	0xd0043270
d00428f4:	d0042821 	.word	0xd0042821

d00428f8 <__sfp>:
d00428f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00428fa:	4607      	mov	r7, r0
d00428fc:	f7ff ffac 	bl	d0042858 <__sfp_lock_acquire>
d0042900:	4b1e      	ldr	r3, [pc, #120]	; (d004297c <__sfp+0x84>)
d0042902:	681e      	ldr	r6, [r3, #0]
d0042904:	69b3      	ldr	r3, [r6, #24]
d0042906:	b913      	cbnz	r3, d004290e <__sfp+0x16>
d0042908:	4630      	mov	r0, r6
d004290a:	f7ff ffbd 	bl	d0042888 <__sinit>
d004290e:	3648      	adds	r6, #72	; 0x48
d0042910:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0042914:	3b01      	subs	r3, #1
d0042916:	d503      	bpl.n	d0042920 <__sfp+0x28>
d0042918:	6833      	ldr	r3, [r6, #0]
d004291a:	b30b      	cbz	r3, d0042960 <__sfp+0x68>
d004291c:	6836      	ldr	r6, [r6, #0]
d004291e:	e7f7      	b.n	d0042910 <__sfp+0x18>
d0042920:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0042924:	b9d5      	cbnz	r5, d004295c <__sfp+0x64>
d0042926:	4b16      	ldr	r3, [pc, #88]	; (d0042980 <__sfp+0x88>)
d0042928:	60e3      	str	r3, [r4, #12]
d004292a:	f104 0058 	add.w	r0, r4, #88	; 0x58
d004292e:	6665      	str	r5, [r4, #100]	; 0x64
d0042930:	f000 f847 	bl	d00429c2 <__retarget_lock_init_recursive>
d0042934:	f7ff ff96 	bl	d0042864 <__sfp_lock_release>
d0042938:	e9c4 5501 	strd	r5, r5, [r4, #4]
d004293c:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0042940:	6025      	str	r5, [r4, #0]
d0042942:	61a5      	str	r5, [r4, #24]
d0042944:	2208      	movs	r2, #8
d0042946:	4629      	mov	r1, r5
d0042948:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d004294c:	f7fd fb76 	bl	d004003c <memset>
d0042950:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0042954:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0042958:	4620      	mov	r0, r4
d004295a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d004295c:	3468      	adds	r4, #104	; 0x68
d004295e:	e7d9      	b.n	d0042914 <__sfp+0x1c>
d0042960:	2104      	movs	r1, #4
d0042962:	4638      	mov	r0, r7
d0042964:	f7ff ff62 	bl	d004282c <__sfmoreglue>
d0042968:	4604      	mov	r4, r0
d004296a:	6030      	str	r0, [r6, #0]
d004296c:	2800      	cmp	r0, #0
d004296e:	d1d5      	bne.n	d004291c <__sfp+0x24>
d0042970:	f7ff ff78 	bl	d0042864 <__sfp_lock_release>
d0042974:	230c      	movs	r3, #12
d0042976:	603b      	str	r3, [r7, #0]
d0042978:	e7ee      	b.n	d0042958 <__sfp+0x60>
d004297a:	bf00      	nop
d004297c:	d0043270 	.word	0xd0043270
d0042980:	ffff0001 	.word	0xffff0001

d0042984 <_fwalk_reent>:
d0042984:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0042988:	4606      	mov	r6, r0
d004298a:	4688      	mov	r8, r1
d004298c:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0042990:	2700      	movs	r7, #0
d0042992:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0042996:	f1b9 0901 	subs.w	r9, r9, #1
d004299a:	d505      	bpl.n	d00429a8 <_fwalk_reent+0x24>
d004299c:	6824      	ldr	r4, [r4, #0]
d004299e:	2c00      	cmp	r4, #0
d00429a0:	d1f7      	bne.n	d0042992 <_fwalk_reent+0xe>
d00429a2:	4638      	mov	r0, r7
d00429a4:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d00429a8:	89ab      	ldrh	r3, [r5, #12]
d00429aa:	2b01      	cmp	r3, #1
d00429ac:	d907      	bls.n	d00429be <_fwalk_reent+0x3a>
d00429ae:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d00429b2:	3301      	adds	r3, #1
d00429b4:	d003      	beq.n	d00429be <_fwalk_reent+0x3a>
d00429b6:	4629      	mov	r1, r5
d00429b8:	4630      	mov	r0, r6
d00429ba:	47c0      	blx	r8
d00429bc:	4307      	orrs	r7, r0
d00429be:	3568      	adds	r5, #104	; 0x68
d00429c0:	e7e9      	b.n	d0042996 <_fwalk_reent+0x12>

d00429c2 <__retarget_lock_init_recursive>:
d00429c2:	4770      	bx	lr

d00429c4 <__retarget_lock_acquire_recursive>:
d00429c4:	4770      	bx	lr

d00429c6 <__retarget_lock_release_recursive>:
d00429c6:	4770      	bx	lr

d00429c8 <__swhatbuf_r>:
d00429c8:	b570      	push	{r4, r5, r6, lr}
d00429ca:	460e      	mov	r6, r1
d00429cc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00429d0:	2900      	cmp	r1, #0
d00429d2:	b096      	sub	sp, #88	; 0x58
d00429d4:	4614      	mov	r4, r2
d00429d6:	461d      	mov	r5, r3
d00429d8:	da07      	bge.n	d00429ea <__swhatbuf_r+0x22>
d00429da:	2300      	movs	r3, #0
d00429dc:	602b      	str	r3, [r5, #0]
d00429de:	89b3      	ldrh	r3, [r6, #12]
d00429e0:	061a      	lsls	r2, r3, #24
d00429e2:	d410      	bmi.n	d0042a06 <__swhatbuf_r+0x3e>
d00429e4:	f44f 6380 	mov.w	r3, #1024	; 0x400
d00429e8:	e00e      	b.n	d0042a08 <__swhatbuf_r+0x40>
d00429ea:	466a      	mov	r2, sp
d00429ec:	f000 fb60 	bl	d00430b0 <_fstat_r>
d00429f0:	2800      	cmp	r0, #0
d00429f2:	dbf2      	blt.n	d00429da <__swhatbuf_r+0x12>
d00429f4:	9a01      	ldr	r2, [sp, #4]
d00429f6:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d00429fa:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d00429fe:	425a      	negs	r2, r3
d0042a00:	415a      	adcs	r2, r3
d0042a02:	602a      	str	r2, [r5, #0]
d0042a04:	e7ee      	b.n	d00429e4 <__swhatbuf_r+0x1c>
d0042a06:	2340      	movs	r3, #64	; 0x40
d0042a08:	2000      	movs	r0, #0
d0042a0a:	6023      	str	r3, [r4, #0]
d0042a0c:	b016      	add	sp, #88	; 0x58
d0042a0e:	bd70      	pop	{r4, r5, r6, pc}

d0042a10 <__malloc_lock>:
d0042a10:	4801      	ldr	r0, [pc, #4]	; (d0042a18 <__malloc_lock+0x8>)
d0042a12:	f7ff bfd7 	b.w	d00429c4 <__retarget_lock_acquire_recursive>
d0042a16:	bf00      	nop
d0042a18:	d0045004 	.word	0xd0045004

d0042a1c <__malloc_unlock>:
d0042a1c:	4801      	ldr	r0, [pc, #4]	; (d0042a24 <__malloc_unlock+0x8>)
d0042a1e:	f7ff bfd2 	b.w	d00429c6 <__retarget_lock_release_recursive>
d0042a22:	bf00      	nop
d0042a24:	d0045004 	.word	0xd0045004

d0042a28 <__ssputs_r>:
d0042a28:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0042a2c:	688e      	ldr	r6, [r1, #8]
d0042a2e:	429e      	cmp	r6, r3
d0042a30:	4682      	mov	sl, r0
d0042a32:	460c      	mov	r4, r1
d0042a34:	4690      	mov	r8, r2
d0042a36:	461f      	mov	r7, r3
d0042a38:	d838      	bhi.n	d0042aac <__ssputs_r+0x84>
d0042a3a:	898a      	ldrh	r2, [r1, #12]
d0042a3c:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0042a40:	d032      	beq.n	d0042aa8 <__ssputs_r+0x80>
d0042a42:	6825      	ldr	r5, [r4, #0]
d0042a44:	6909      	ldr	r1, [r1, #16]
d0042a46:	eba5 0901 	sub.w	r9, r5, r1
d0042a4a:	6965      	ldr	r5, [r4, #20]
d0042a4c:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0042a50:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d0042a54:	3301      	adds	r3, #1
d0042a56:	444b      	add	r3, r9
d0042a58:	106d      	asrs	r5, r5, #1
d0042a5a:	429d      	cmp	r5, r3
d0042a5c:	bf38      	it	cc
d0042a5e:	461d      	movcc	r5, r3
d0042a60:	0553      	lsls	r3, r2, #21
d0042a62:	d531      	bpl.n	d0042ac8 <__ssputs_r+0xa0>
d0042a64:	4629      	mov	r1, r5
d0042a66:	f7ff fcad 	bl	d00423c4 <_malloc_r>
d0042a6a:	4606      	mov	r6, r0
d0042a6c:	b950      	cbnz	r0, d0042a84 <__ssputs_r+0x5c>
d0042a6e:	230c      	movs	r3, #12
d0042a70:	f8ca 3000 	str.w	r3, [sl]
d0042a74:	89a3      	ldrh	r3, [r4, #12]
d0042a76:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0042a7a:	81a3      	strh	r3, [r4, #12]
d0042a7c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0042a80:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0042a84:	6921      	ldr	r1, [r4, #16]
d0042a86:	464a      	mov	r2, r9
d0042a88:	f000 fb8a 	bl	d00431a0 <memcpy>
d0042a8c:	89a3      	ldrh	r3, [r4, #12]
d0042a8e:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d0042a92:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0042a96:	81a3      	strh	r3, [r4, #12]
d0042a98:	6126      	str	r6, [r4, #16]
d0042a9a:	6165      	str	r5, [r4, #20]
d0042a9c:	444e      	add	r6, r9
d0042a9e:	eba5 0509 	sub.w	r5, r5, r9
d0042aa2:	6026      	str	r6, [r4, #0]
d0042aa4:	60a5      	str	r5, [r4, #8]
d0042aa6:	463e      	mov	r6, r7
d0042aa8:	42be      	cmp	r6, r7
d0042aaa:	d900      	bls.n	d0042aae <__ssputs_r+0x86>
d0042aac:	463e      	mov	r6, r7
d0042aae:	4632      	mov	r2, r6
d0042ab0:	6820      	ldr	r0, [r4, #0]
d0042ab2:	4641      	mov	r1, r8
d0042ab4:	f000 fb82 	bl	d00431bc <memmove>
d0042ab8:	68a3      	ldr	r3, [r4, #8]
d0042aba:	6822      	ldr	r2, [r4, #0]
d0042abc:	1b9b      	subs	r3, r3, r6
d0042abe:	4432      	add	r2, r6
d0042ac0:	60a3      	str	r3, [r4, #8]
d0042ac2:	6022      	str	r2, [r4, #0]
d0042ac4:	2000      	movs	r0, #0
d0042ac6:	e7db      	b.n	d0042a80 <__ssputs_r+0x58>
d0042ac8:	462a      	mov	r2, r5
d0042aca:	f000 fb91 	bl	d00431f0 <_realloc_r>
d0042ace:	4606      	mov	r6, r0
d0042ad0:	2800      	cmp	r0, #0
d0042ad2:	d1e1      	bne.n	d0042a98 <__ssputs_r+0x70>
d0042ad4:	6921      	ldr	r1, [r4, #16]
d0042ad6:	4650      	mov	r0, sl
d0042ad8:	f7ff fc24 	bl	d0042324 <_free_r>
d0042adc:	e7c7      	b.n	d0042a6e <__ssputs_r+0x46>
	...

d0042ae0 <_svfiprintf_r>:
d0042ae0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0042ae4:	4698      	mov	r8, r3
d0042ae6:	898b      	ldrh	r3, [r1, #12]
d0042ae8:	061b      	lsls	r3, r3, #24
d0042aea:	b09d      	sub	sp, #116	; 0x74
d0042aec:	4607      	mov	r7, r0
d0042aee:	460d      	mov	r5, r1
d0042af0:	4614      	mov	r4, r2
d0042af2:	d50e      	bpl.n	d0042b12 <_svfiprintf_r+0x32>
d0042af4:	690b      	ldr	r3, [r1, #16]
d0042af6:	b963      	cbnz	r3, d0042b12 <_svfiprintf_r+0x32>
d0042af8:	2140      	movs	r1, #64	; 0x40
d0042afa:	f7ff fc63 	bl	d00423c4 <_malloc_r>
d0042afe:	6028      	str	r0, [r5, #0]
d0042b00:	6128      	str	r0, [r5, #16]
d0042b02:	b920      	cbnz	r0, d0042b0e <_svfiprintf_r+0x2e>
d0042b04:	230c      	movs	r3, #12
d0042b06:	603b      	str	r3, [r7, #0]
d0042b08:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0042b0c:	e0d1      	b.n	d0042cb2 <_svfiprintf_r+0x1d2>
d0042b0e:	2340      	movs	r3, #64	; 0x40
d0042b10:	616b      	str	r3, [r5, #20]
d0042b12:	2300      	movs	r3, #0
d0042b14:	9309      	str	r3, [sp, #36]	; 0x24
d0042b16:	2320      	movs	r3, #32
d0042b18:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0042b1c:	f8cd 800c 	str.w	r8, [sp, #12]
d0042b20:	2330      	movs	r3, #48	; 0x30
d0042b22:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d0042ccc <_svfiprintf_r+0x1ec>
d0042b26:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0042b2a:	f04f 0901 	mov.w	r9, #1
d0042b2e:	4623      	mov	r3, r4
d0042b30:	469a      	mov	sl, r3
d0042b32:	f813 2b01 	ldrb.w	r2, [r3], #1
d0042b36:	b10a      	cbz	r2, d0042b3c <_svfiprintf_r+0x5c>
d0042b38:	2a25      	cmp	r2, #37	; 0x25
d0042b3a:	d1f9      	bne.n	d0042b30 <_svfiprintf_r+0x50>
d0042b3c:	ebba 0b04 	subs.w	fp, sl, r4
d0042b40:	d00b      	beq.n	d0042b5a <_svfiprintf_r+0x7a>
d0042b42:	465b      	mov	r3, fp
d0042b44:	4622      	mov	r2, r4
d0042b46:	4629      	mov	r1, r5
d0042b48:	4638      	mov	r0, r7
d0042b4a:	f7ff ff6d 	bl	d0042a28 <__ssputs_r>
d0042b4e:	3001      	adds	r0, #1
d0042b50:	f000 80aa 	beq.w	d0042ca8 <_svfiprintf_r+0x1c8>
d0042b54:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0042b56:	445a      	add	r2, fp
d0042b58:	9209      	str	r2, [sp, #36]	; 0x24
d0042b5a:	f89a 3000 	ldrb.w	r3, [sl]
d0042b5e:	2b00      	cmp	r3, #0
d0042b60:	f000 80a2 	beq.w	d0042ca8 <_svfiprintf_r+0x1c8>
d0042b64:	2300      	movs	r3, #0
d0042b66:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0042b6a:	e9cd 2305 	strd	r2, r3, [sp, #20]
d0042b6e:	f10a 0a01 	add.w	sl, sl, #1
d0042b72:	9304      	str	r3, [sp, #16]
d0042b74:	9307      	str	r3, [sp, #28]
d0042b76:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0042b7a:	931a      	str	r3, [sp, #104]	; 0x68
d0042b7c:	4654      	mov	r4, sl
d0042b7e:	2205      	movs	r2, #5
d0042b80:	f814 1b01 	ldrb.w	r1, [r4], #1
d0042b84:	4851      	ldr	r0, [pc, #324]	; (d0042ccc <_svfiprintf_r+0x1ec>)
d0042b86:	f000 fabb 	bl	d0043100 <memchr>
d0042b8a:	9a04      	ldr	r2, [sp, #16]
d0042b8c:	b9d8      	cbnz	r0, d0042bc6 <_svfiprintf_r+0xe6>
d0042b8e:	06d0      	lsls	r0, r2, #27
d0042b90:	bf44      	itt	mi
d0042b92:	2320      	movmi	r3, #32
d0042b94:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0042b98:	0711      	lsls	r1, r2, #28
d0042b9a:	bf44      	itt	mi
d0042b9c:	232b      	movmi	r3, #43	; 0x2b
d0042b9e:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0042ba2:	f89a 3000 	ldrb.w	r3, [sl]
d0042ba6:	2b2a      	cmp	r3, #42	; 0x2a
d0042ba8:	d015      	beq.n	d0042bd6 <_svfiprintf_r+0xf6>
d0042baa:	9a07      	ldr	r2, [sp, #28]
d0042bac:	4654      	mov	r4, sl
d0042bae:	2000      	movs	r0, #0
d0042bb0:	f04f 0c0a 	mov.w	ip, #10
d0042bb4:	4621      	mov	r1, r4
d0042bb6:	f811 3b01 	ldrb.w	r3, [r1], #1
d0042bba:	3b30      	subs	r3, #48	; 0x30
d0042bbc:	2b09      	cmp	r3, #9
d0042bbe:	d94e      	bls.n	d0042c5e <_svfiprintf_r+0x17e>
d0042bc0:	b1b0      	cbz	r0, d0042bf0 <_svfiprintf_r+0x110>
d0042bc2:	9207      	str	r2, [sp, #28]
d0042bc4:	e014      	b.n	d0042bf0 <_svfiprintf_r+0x110>
d0042bc6:	eba0 0308 	sub.w	r3, r0, r8
d0042bca:	fa09 f303 	lsl.w	r3, r9, r3
d0042bce:	4313      	orrs	r3, r2
d0042bd0:	9304      	str	r3, [sp, #16]
d0042bd2:	46a2      	mov	sl, r4
d0042bd4:	e7d2      	b.n	d0042b7c <_svfiprintf_r+0x9c>
d0042bd6:	9b03      	ldr	r3, [sp, #12]
d0042bd8:	1d19      	adds	r1, r3, #4
d0042bda:	681b      	ldr	r3, [r3, #0]
d0042bdc:	9103      	str	r1, [sp, #12]
d0042bde:	2b00      	cmp	r3, #0
d0042be0:	bfbb      	ittet	lt
d0042be2:	425b      	neglt	r3, r3
d0042be4:	f042 0202 	orrlt.w	r2, r2, #2
d0042be8:	9307      	strge	r3, [sp, #28]
d0042bea:	9307      	strlt	r3, [sp, #28]
d0042bec:	bfb8      	it	lt
d0042bee:	9204      	strlt	r2, [sp, #16]
d0042bf0:	7823      	ldrb	r3, [r4, #0]
d0042bf2:	2b2e      	cmp	r3, #46	; 0x2e
d0042bf4:	d10c      	bne.n	d0042c10 <_svfiprintf_r+0x130>
d0042bf6:	7863      	ldrb	r3, [r4, #1]
d0042bf8:	2b2a      	cmp	r3, #42	; 0x2a
d0042bfa:	d135      	bne.n	d0042c68 <_svfiprintf_r+0x188>
d0042bfc:	9b03      	ldr	r3, [sp, #12]
d0042bfe:	1d1a      	adds	r2, r3, #4
d0042c00:	681b      	ldr	r3, [r3, #0]
d0042c02:	9203      	str	r2, [sp, #12]
d0042c04:	2b00      	cmp	r3, #0
d0042c06:	bfb8      	it	lt
d0042c08:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0042c0c:	3402      	adds	r4, #2
d0042c0e:	9305      	str	r3, [sp, #20]
d0042c10:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d0042cdc <_svfiprintf_r+0x1fc>
d0042c14:	7821      	ldrb	r1, [r4, #0]
d0042c16:	2203      	movs	r2, #3
d0042c18:	4650      	mov	r0, sl
d0042c1a:	f000 fa71 	bl	d0043100 <memchr>
d0042c1e:	b140      	cbz	r0, d0042c32 <_svfiprintf_r+0x152>
d0042c20:	2340      	movs	r3, #64	; 0x40
d0042c22:	eba0 000a 	sub.w	r0, r0, sl
d0042c26:	fa03 f000 	lsl.w	r0, r3, r0
d0042c2a:	9b04      	ldr	r3, [sp, #16]
d0042c2c:	4303      	orrs	r3, r0
d0042c2e:	3401      	adds	r4, #1
d0042c30:	9304      	str	r3, [sp, #16]
d0042c32:	f814 1b01 	ldrb.w	r1, [r4], #1
d0042c36:	4826      	ldr	r0, [pc, #152]	; (d0042cd0 <_svfiprintf_r+0x1f0>)
d0042c38:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0042c3c:	2206      	movs	r2, #6
d0042c3e:	f000 fa5f 	bl	d0043100 <memchr>
d0042c42:	2800      	cmp	r0, #0
d0042c44:	d038      	beq.n	d0042cb8 <_svfiprintf_r+0x1d8>
d0042c46:	4b23      	ldr	r3, [pc, #140]	; (d0042cd4 <_svfiprintf_r+0x1f4>)
d0042c48:	bb1b      	cbnz	r3, d0042c92 <_svfiprintf_r+0x1b2>
d0042c4a:	9b03      	ldr	r3, [sp, #12]
d0042c4c:	3307      	adds	r3, #7
d0042c4e:	f023 0307 	bic.w	r3, r3, #7
d0042c52:	3308      	adds	r3, #8
d0042c54:	9303      	str	r3, [sp, #12]
d0042c56:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0042c58:	4433      	add	r3, r6
d0042c5a:	9309      	str	r3, [sp, #36]	; 0x24
d0042c5c:	e767      	b.n	d0042b2e <_svfiprintf_r+0x4e>
d0042c5e:	fb0c 3202 	mla	r2, ip, r2, r3
d0042c62:	460c      	mov	r4, r1
d0042c64:	2001      	movs	r0, #1
d0042c66:	e7a5      	b.n	d0042bb4 <_svfiprintf_r+0xd4>
d0042c68:	2300      	movs	r3, #0
d0042c6a:	3401      	adds	r4, #1
d0042c6c:	9305      	str	r3, [sp, #20]
d0042c6e:	4619      	mov	r1, r3
d0042c70:	f04f 0c0a 	mov.w	ip, #10
d0042c74:	4620      	mov	r0, r4
d0042c76:	f810 2b01 	ldrb.w	r2, [r0], #1
d0042c7a:	3a30      	subs	r2, #48	; 0x30
d0042c7c:	2a09      	cmp	r2, #9
d0042c7e:	d903      	bls.n	d0042c88 <_svfiprintf_r+0x1a8>
d0042c80:	2b00      	cmp	r3, #0
d0042c82:	d0c5      	beq.n	d0042c10 <_svfiprintf_r+0x130>
d0042c84:	9105      	str	r1, [sp, #20]
d0042c86:	e7c3      	b.n	d0042c10 <_svfiprintf_r+0x130>
d0042c88:	fb0c 2101 	mla	r1, ip, r1, r2
d0042c8c:	4604      	mov	r4, r0
d0042c8e:	2301      	movs	r3, #1
d0042c90:	e7f0      	b.n	d0042c74 <_svfiprintf_r+0x194>
d0042c92:	ab03      	add	r3, sp, #12
d0042c94:	9300      	str	r3, [sp, #0]
d0042c96:	462a      	mov	r2, r5
d0042c98:	4b0f      	ldr	r3, [pc, #60]	; (d0042cd8 <_svfiprintf_r+0x1f8>)
d0042c9a:	a904      	add	r1, sp, #16
d0042c9c:	4638      	mov	r0, r7
d0042c9e:	f3af 8000 	nop.w
d0042ca2:	1c42      	adds	r2, r0, #1
d0042ca4:	4606      	mov	r6, r0
d0042ca6:	d1d6      	bne.n	d0042c56 <_svfiprintf_r+0x176>
d0042ca8:	89ab      	ldrh	r3, [r5, #12]
d0042caa:	065b      	lsls	r3, r3, #25
d0042cac:	f53f af2c 	bmi.w	d0042b08 <_svfiprintf_r+0x28>
d0042cb0:	9809      	ldr	r0, [sp, #36]	; 0x24
d0042cb2:	b01d      	add	sp, #116	; 0x74
d0042cb4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0042cb8:	ab03      	add	r3, sp, #12
d0042cba:	9300      	str	r3, [sp, #0]
d0042cbc:	462a      	mov	r2, r5
d0042cbe:	4b06      	ldr	r3, [pc, #24]	; (d0042cd8 <_svfiprintf_r+0x1f8>)
d0042cc0:	a904      	add	r1, sp, #16
d0042cc2:	4638      	mov	r0, r7
d0042cc4:	f000 f87a 	bl	d0042dbc <_printf_i>
d0042cc8:	e7eb      	b.n	d0042ca2 <_svfiprintf_r+0x1c2>
d0042cca:	bf00      	nop
d0042ccc:	d00435a4 	.word	0xd00435a4
d0042cd0:	d00435ae 	.word	0xd00435ae
d0042cd4:	00000000 	.word	0x00000000
d0042cd8:	d0042a29 	.word	0xd0042a29
d0042cdc:	d00435aa 	.word	0xd00435aa

d0042ce0 <_printf_common>:
d0042ce0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0042ce4:	4616      	mov	r6, r2
d0042ce6:	4699      	mov	r9, r3
d0042ce8:	688a      	ldr	r2, [r1, #8]
d0042cea:	690b      	ldr	r3, [r1, #16]
d0042cec:	f8dd 8020 	ldr.w	r8, [sp, #32]
d0042cf0:	4293      	cmp	r3, r2
d0042cf2:	bfb8      	it	lt
d0042cf4:	4613      	movlt	r3, r2
d0042cf6:	6033      	str	r3, [r6, #0]
d0042cf8:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d0042cfc:	4607      	mov	r7, r0
d0042cfe:	460c      	mov	r4, r1
d0042d00:	b10a      	cbz	r2, d0042d06 <_printf_common+0x26>
d0042d02:	3301      	adds	r3, #1
d0042d04:	6033      	str	r3, [r6, #0]
d0042d06:	6823      	ldr	r3, [r4, #0]
d0042d08:	0699      	lsls	r1, r3, #26
d0042d0a:	bf42      	ittt	mi
d0042d0c:	6833      	ldrmi	r3, [r6, #0]
d0042d0e:	3302      	addmi	r3, #2
d0042d10:	6033      	strmi	r3, [r6, #0]
d0042d12:	6825      	ldr	r5, [r4, #0]
d0042d14:	f015 0506 	ands.w	r5, r5, #6
d0042d18:	d106      	bne.n	d0042d28 <_printf_common+0x48>
d0042d1a:	f104 0a19 	add.w	sl, r4, #25
d0042d1e:	68e3      	ldr	r3, [r4, #12]
d0042d20:	6832      	ldr	r2, [r6, #0]
d0042d22:	1a9b      	subs	r3, r3, r2
d0042d24:	42ab      	cmp	r3, r5
d0042d26:	dc26      	bgt.n	d0042d76 <_printf_common+0x96>
d0042d28:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0042d2c:	1e13      	subs	r3, r2, #0
d0042d2e:	6822      	ldr	r2, [r4, #0]
d0042d30:	bf18      	it	ne
d0042d32:	2301      	movne	r3, #1
d0042d34:	0692      	lsls	r2, r2, #26
d0042d36:	d42b      	bmi.n	d0042d90 <_printf_common+0xb0>
d0042d38:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0042d3c:	4649      	mov	r1, r9
d0042d3e:	4638      	mov	r0, r7
d0042d40:	47c0      	blx	r8
d0042d42:	3001      	adds	r0, #1
d0042d44:	d01e      	beq.n	d0042d84 <_printf_common+0xa4>
d0042d46:	6823      	ldr	r3, [r4, #0]
d0042d48:	68e5      	ldr	r5, [r4, #12]
d0042d4a:	6832      	ldr	r2, [r6, #0]
d0042d4c:	f003 0306 	and.w	r3, r3, #6
d0042d50:	2b04      	cmp	r3, #4
d0042d52:	bf08      	it	eq
d0042d54:	1aad      	subeq	r5, r5, r2
d0042d56:	68a3      	ldr	r3, [r4, #8]
d0042d58:	6922      	ldr	r2, [r4, #16]
d0042d5a:	bf0c      	ite	eq
d0042d5c:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d0042d60:	2500      	movne	r5, #0
d0042d62:	4293      	cmp	r3, r2
d0042d64:	bfc4      	itt	gt
d0042d66:	1a9b      	subgt	r3, r3, r2
d0042d68:	18ed      	addgt	r5, r5, r3
d0042d6a:	2600      	movs	r6, #0
d0042d6c:	341a      	adds	r4, #26
d0042d6e:	42b5      	cmp	r5, r6
d0042d70:	d11a      	bne.n	d0042da8 <_printf_common+0xc8>
d0042d72:	2000      	movs	r0, #0
d0042d74:	e008      	b.n	d0042d88 <_printf_common+0xa8>
d0042d76:	2301      	movs	r3, #1
d0042d78:	4652      	mov	r2, sl
d0042d7a:	4649      	mov	r1, r9
d0042d7c:	4638      	mov	r0, r7
d0042d7e:	47c0      	blx	r8
d0042d80:	3001      	adds	r0, #1
d0042d82:	d103      	bne.n	d0042d8c <_printf_common+0xac>
d0042d84:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0042d88:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0042d8c:	3501      	adds	r5, #1
d0042d8e:	e7c6      	b.n	d0042d1e <_printf_common+0x3e>
d0042d90:	18e1      	adds	r1, r4, r3
d0042d92:	1c5a      	adds	r2, r3, #1
d0042d94:	2030      	movs	r0, #48	; 0x30
d0042d96:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d0042d9a:	4422      	add	r2, r4
d0042d9c:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d0042da0:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d0042da4:	3302      	adds	r3, #2
d0042da6:	e7c7      	b.n	d0042d38 <_printf_common+0x58>
d0042da8:	2301      	movs	r3, #1
d0042daa:	4622      	mov	r2, r4
d0042dac:	4649      	mov	r1, r9
d0042dae:	4638      	mov	r0, r7
d0042db0:	47c0      	blx	r8
d0042db2:	3001      	adds	r0, #1
d0042db4:	d0e6      	beq.n	d0042d84 <_printf_common+0xa4>
d0042db6:	3601      	adds	r6, #1
d0042db8:	e7d9      	b.n	d0042d6e <_printf_common+0x8e>
	...

d0042dbc <_printf_i>:
d0042dbc:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0042dc0:	460c      	mov	r4, r1
d0042dc2:	4691      	mov	r9, r2
d0042dc4:	7e27      	ldrb	r7, [r4, #24]
d0042dc6:	990c      	ldr	r1, [sp, #48]	; 0x30
d0042dc8:	2f78      	cmp	r7, #120	; 0x78
d0042dca:	4680      	mov	r8, r0
d0042dcc:	469a      	mov	sl, r3
d0042dce:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0042dd2:	d807      	bhi.n	d0042de4 <_printf_i+0x28>
d0042dd4:	2f62      	cmp	r7, #98	; 0x62
d0042dd6:	d80a      	bhi.n	d0042dee <_printf_i+0x32>
d0042dd8:	2f00      	cmp	r7, #0
d0042dda:	f000 80d8 	beq.w	d0042f8e <_printf_i+0x1d2>
d0042dde:	2f58      	cmp	r7, #88	; 0x58
d0042de0:	f000 80a3 	beq.w	d0042f2a <_printf_i+0x16e>
d0042de4:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0042de8:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d0042dec:	e03a      	b.n	d0042e64 <_printf_i+0xa8>
d0042dee:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d0042df2:	2b15      	cmp	r3, #21
d0042df4:	d8f6      	bhi.n	d0042de4 <_printf_i+0x28>
d0042df6:	a001      	add	r0, pc, #4	; (adr r0, d0042dfc <_printf_i+0x40>)
d0042df8:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d0042dfc:	d0042e55 	.word	0xd0042e55
d0042e00:	d0042e69 	.word	0xd0042e69
d0042e04:	d0042de5 	.word	0xd0042de5
d0042e08:	d0042de5 	.word	0xd0042de5
d0042e0c:	d0042de5 	.word	0xd0042de5
d0042e10:	d0042de5 	.word	0xd0042de5
d0042e14:	d0042e69 	.word	0xd0042e69
d0042e18:	d0042de5 	.word	0xd0042de5
d0042e1c:	d0042de5 	.word	0xd0042de5
d0042e20:	d0042de5 	.word	0xd0042de5
d0042e24:	d0042de5 	.word	0xd0042de5
d0042e28:	d0042f75 	.word	0xd0042f75
d0042e2c:	d0042e99 	.word	0xd0042e99
d0042e30:	d0042f57 	.word	0xd0042f57
d0042e34:	d0042de5 	.word	0xd0042de5
d0042e38:	d0042de5 	.word	0xd0042de5
d0042e3c:	d0042f97 	.word	0xd0042f97
d0042e40:	d0042de5 	.word	0xd0042de5
d0042e44:	d0042e99 	.word	0xd0042e99
d0042e48:	d0042de5 	.word	0xd0042de5
d0042e4c:	d0042de5 	.word	0xd0042de5
d0042e50:	d0042f5f 	.word	0xd0042f5f
d0042e54:	680b      	ldr	r3, [r1, #0]
d0042e56:	1d1a      	adds	r2, r3, #4
d0042e58:	681b      	ldr	r3, [r3, #0]
d0042e5a:	600a      	str	r2, [r1, #0]
d0042e5c:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0042e60:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d0042e64:	2301      	movs	r3, #1
d0042e66:	e0a3      	b.n	d0042fb0 <_printf_i+0x1f4>
d0042e68:	6825      	ldr	r5, [r4, #0]
d0042e6a:	6808      	ldr	r0, [r1, #0]
d0042e6c:	062e      	lsls	r6, r5, #24
d0042e6e:	f100 0304 	add.w	r3, r0, #4
d0042e72:	d50a      	bpl.n	d0042e8a <_printf_i+0xce>
d0042e74:	6805      	ldr	r5, [r0, #0]
d0042e76:	600b      	str	r3, [r1, #0]
d0042e78:	2d00      	cmp	r5, #0
d0042e7a:	da03      	bge.n	d0042e84 <_printf_i+0xc8>
d0042e7c:	232d      	movs	r3, #45	; 0x2d
d0042e7e:	426d      	negs	r5, r5
d0042e80:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0042e84:	485e      	ldr	r0, [pc, #376]	; (d0043000 <_printf_i+0x244>)
d0042e86:	230a      	movs	r3, #10
d0042e88:	e019      	b.n	d0042ebe <_printf_i+0x102>
d0042e8a:	f015 0f40 	tst.w	r5, #64	; 0x40
d0042e8e:	6805      	ldr	r5, [r0, #0]
d0042e90:	600b      	str	r3, [r1, #0]
d0042e92:	bf18      	it	ne
d0042e94:	b22d      	sxthne	r5, r5
d0042e96:	e7ef      	b.n	d0042e78 <_printf_i+0xbc>
d0042e98:	680b      	ldr	r3, [r1, #0]
d0042e9a:	6825      	ldr	r5, [r4, #0]
d0042e9c:	1d18      	adds	r0, r3, #4
d0042e9e:	6008      	str	r0, [r1, #0]
d0042ea0:	0628      	lsls	r0, r5, #24
d0042ea2:	d501      	bpl.n	d0042ea8 <_printf_i+0xec>
d0042ea4:	681d      	ldr	r5, [r3, #0]
d0042ea6:	e002      	b.n	d0042eae <_printf_i+0xf2>
d0042ea8:	0669      	lsls	r1, r5, #25
d0042eaa:	d5fb      	bpl.n	d0042ea4 <_printf_i+0xe8>
d0042eac:	881d      	ldrh	r5, [r3, #0]
d0042eae:	4854      	ldr	r0, [pc, #336]	; (d0043000 <_printf_i+0x244>)
d0042eb0:	2f6f      	cmp	r7, #111	; 0x6f
d0042eb2:	bf0c      	ite	eq
d0042eb4:	2308      	moveq	r3, #8
d0042eb6:	230a      	movne	r3, #10
d0042eb8:	2100      	movs	r1, #0
d0042eba:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d0042ebe:	6866      	ldr	r6, [r4, #4]
d0042ec0:	60a6      	str	r6, [r4, #8]
d0042ec2:	2e00      	cmp	r6, #0
d0042ec4:	bfa2      	ittt	ge
d0042ec6:	6821      	ldrge	r1, [r4, #0]
d0042ec8:	f021 0104 	bicge.w	r1, r1, #4
d0042ecc:	6021      	strge	r1, [r4, #0]
d0042ece:	b90d      	cbnz	r5, d0042ed4 <_printf_i+0x118>
d0042ed0:	2e00      	cmp	r6, #0
d0042ed2:	d04d      	beq.n	d0042f70 <_printf_i+0x1b4>
d0042ed4:	4616      	mov	r6, r2
d0042ed6:	fbb5 f1f3 	udiv	r1, r5, r3
d0042eda:	fb03 5711 	mls	r7, r3, r1, r5
d0042ede:	5dc7      	ldrb	r7, [r0, r7]
d0042ee0:	f806 7d01 	strb.w	r7, [r6, #-1]!
d0042ee4:	462f      	mov	r7, r5
d0042ee6:	42bb      	cmp	r3, r7
d0042ee8:	460d      	mov	r5, r1
d0042eea:	d9f4      	bls.n	d0042ed6 <_printf_i+0x11a>
d0042eec:	2b08      	cmp	r3, #8
d0042eee:	d10b      	bne.n	d0042f08 <_printf_i+0x14c>
d0042ef0:	6823      	ldr	r3, [r4, #0]
d0042ef2:	07df      	lsls	r7, r3, #31
d0042ef4:	d508      	bpl.n	d0042f08 <_printf_i+0x14c>
d0042ef6:	6923      	ldr	r3, [r4, #16]
d0042ef8:	6861      	ldr	r1, [r4, #4]
d0042efa:	4299      	cmp	r1, r3
d0042efc:	bfde      	ittt	le
d0042efe:	2330      	movle	r3, #48	; 0x30
d0042f00:	f806 3c01 	strble.w	r3, [r6, #-1]
d0042f04:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d0042f08:	1b92      	subs	r2, r2, r6
d0042f0a:	6122      	str	r2, [r4, #16]
d0042f0c:	f8cd a000 	str.w	sl, [sp]
d0042f10:	464b      	mov	r3, r9
d0042f12:	aa03      	add	r2, sp, #12
d0042f14:	4621      	mov	r1, r4
d0042f16:	4640      	mov	r0, r8
d0042f18:	f7ff fee2 	bl	d0042ce0 <_printf_common>
d0042f1c:	3001      	adds	r0, #1
d0042f1e:	d14c      	bne.n	d0042fba <_printf_i+0x1fe>
d0042f20:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0042f24:	b004      	add	sp, #16
d0042f26:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0042f2a:	4835      	ldr	r0, [pc, #212]	; (d0043000 <_printf_i+0x244>)
d0042f2c:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d0042f30:	6823      	ldr	r3, [r4, #0]
d0042f32:	680e      	ldr	r6, [r1, #0]
d0042f34:	061f      	lsls	r7, r3, #24
d0042f36:	f856 5b04 	ldr.w	r5, [r6], #4
d0042f3a:	600e      	str	r6, [r1, #0]
d0042f3c:	d514      	bpl.n	d0042f68 <_printf_i+0x1ac>
d0042f3e:	07d9      	lsls	r1, r3, #31
d0042f40:	bf44      	itt	mi
d0042f42:	f043 0320 	orrmi.w	r3, r3, #32
d0042f46:	6023      	strmi	r3, [r4, #0]
d0042f48:	b91d      	cbnz	r5, d0042f52 <_printf_i+0x196>
d0042f4a:	6823      	ldr	r3, [r4, #0]
d0042f4c:	f023 0320 	bic.w	r3, r3, #32
d0042f50:	6023      	str	r3, [r4, #0]
d0042f52:	2310      	movs	r3, #16
d0042f54:	e7b0      	b.n	d0042eb8 <_printf_i+0xfc>
d0042f56:	6823      	ldr	r3, [r4, #0]
d0042f58:	f043 0320 	orr.w	r3, r3, #32
d0042f5c:	6023      	str	r3, [r4, #0]
d0042f5e:	2378      	movs	r3, #120	; 0x78
d0042f60:	4828      	ldr	r0, [pc, #160]	; (d0043004 <_printf_i+0x248>)
d0042f62:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d0042f66:	e7e3      	b.n	d0042f30 <_printf_i+0x174>
d0042f68:	065e      	lsls	r6, r3, #25
d0042f6a:	bf48      	it	mi
d0042f6c:	b2ad      	uxthmi	r5, r5
d0042f6e:	e7e6      	b.n	d0042f3e <_printf_i+0x182>
d0042f70:	4616      	mov	r6, r2
d0042f72:	e7bb      	b.n	d0042eec <_printf_i+0x130>
d0042f74:	680b      	ldr	r3, [r1, #0]
d0042f76:	6826      	ldr	r6, [r4, #0]
d0042f78:	6960      	ldr	r0, [r4, #20]
d0042f7a:	1d1d      	adds	r5, r3, #4
d0042f7c:	600d      	str	r5, [r1, #0]
d0042f7e:	0635      	lsls	r5, r6, #24
d0042f80:	681b      	ldr	r3, [r3, #0]
d0042f82:	d501      	bpl.n	d0042f88 <_printf_i+0x1cc>
d0042f84:	6018      	str	r0, [r3, #0]
d0042f86:	e002      	b.n	d0042f8e <_printf_i+0x1d2>
d0042f88:	0671      	lsls	r1, r6, #25
d0042f8a:	d5fb      	bpl.n	d0042f84 <_printf_i+0x1c8>
d0042f8c:	8018      	strh	r0, [r3, #0]
d0042f8e:	2300      	movs	r3, #0
d0042f90:	6123      	str	r3, [r4, #16]
d0042f92:	4616      	mov	r6, r2
d0042f94:	e7ba      	b.n	d0042f0c <_printf_i+0x150>
d0042f96:	680b      	ldr	r3, [r1, #0]
d0042f98:	1d1a      	adds	r2, r3, #4
d0042f9a:	600a      	str	r2, [r1, #0]
d0042f9c:	681e      	ldr	r6, [r3, #0]
d0042f9e:	6862      	ldr	r2, [r4, #4]
d0042fa0:	2100      	movs	r1, #0
d0042fa2:	4630      	mov	r0, r6
d0042fa4:	f000 f8ac 	bl	d0043100 <memchr>
d0042fa8:	b108      	cbz	r0, d0042fae <_printf_i+0x1f2>
d0042faa:	1b80      	subs	r0, r0, r6
d0042fac:	6060      	str	r0, [r4, #4]
d0042fae:	6863      	ldr	r3, [r4, #4]
d0042fb0:	6123      	str	r3, [r4, #16]
d0042fb2:	2300      	movs	r3, #0
d0042fb4:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0042fb8:	e7a8      	b.n	d0042f0c <_printf_i+0x150>
d0042fba:	6923      	ldr	r3, [r4, #16]
d0042fbc:	4632      	mov	r2, r6
d0042fbe:	4649      	mov	r1, r9
d0042fc0:	4640      	mov	r0, r8
d0042fc2:	47d0      	blx	sl
d0042fc4:	3001      	adds	r0, #1
d0042fc6:	d0ab      	beq.n	d0042f20 <_printf_i+0x164>
d0042fc8:	6823      	ldr	r3, [r4, #0]
d0042fca:	079b      	lsls	r3, r3, #30
d0042fcc:	d413      	bmi.n	d0042ff6 <_printf_i+0x23a>
d0042fce:	68e0      	ldr	r0, [r4, #12]
d0042fd0:	9b03      	ldr	r3, [sp, #12]
d0042fd2:	4298      	cmp	r0, r3
d0042fd4:	bfb8      	it	lt
d0042fd6:	4618      	movlt	r0, r3
d0042fd8:	e7a4      	b.n	d0042f24 <_printf_i+0x168>
d0042fda:	2301      	movs	r3, #1
d0042fdc:	4632      	mov	r2, r6
d0042fde:	4649      	mov	r1, r9
d0042fe0:	4640      	mov	r0, r8
d0042fe2:	47d0      	blx	sl
d0042fe4:	3001      	adds	r0, #1
d0042fe6:	d09b      	beq.n	d0042f20 <_printf_i+0x164>
d0042fe8:	3501      	adds	r5, #1
d0042fea:	68e3      	ldr	r3, [r4, #12]
d0042fec:	9903      	ldr	r1, [sp, #12]
d0042fee:	1a5b      	subs	r3, r3, r1
d0042ff0:	42ab      	cmp	r3, r5
d0042ff2:	dcf2      	bgt.n	d0042fda <_printf_i+0x21e>
d0042ff4:	e7eb      	b.n	d0042fce <_printf_i+0x212>
d0042ff6:	2500      	movs	r5, #0
d0042ff8:	f104 0619 	add.w	r6, r4, #25
d0042ffc:	e7f5      	b.n	d0042fea <_printf_i+0x22e>
d0042ffe:	bf00      	nop
d0043000:	d00435b5 	.word	0xd00435b5
d0043004:	d00435c6 	.word	0xd00435c6

d0043008 <__sread>:
d0043008:	b510      	push	{r4, lr}
d004300a:	460c      	mov	r4, r1
d004300c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0043010:	f000 f914 	bl	d004323c <_read_r>
d0043014:	2800      	cmp	r0, #0
d0043016:	bfab      	itete	ge
d0043018:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d004301a:	89a3      	ldrhlt	r3, [r4, #12]
d004301c:	181b      	addge	r3, r3, r0
d004301e:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d0043022:	bfac      	ite	ge
d0043024:	6563      	strge	r3, [r4, #84]	; 0x54
d0043026:	81a3      	strhlt	r3, [r4, #12]
d0043028:	bd10      	pop	{r4, pc}

d004302a <__swrite>:
d004302a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d004302e:	461f      	mov	r7, r3
d0043030:	898b      	ldrh	r3, [r1, #12]
d0043032:	05db      	lsls	r3, r3, #23
d0043034:	4605      	mov	r5, r0
d0043036:	460c      	mov	r4, r1
d0043038:	4616      	mov	r6, r2
d004303a:	d505      	bpl.n	d0043048 <__swrite+0x1e>
d004303c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0043040:	2302      	movs	r3, #2
d0043042:	2200      	movs	r2, #0
d0043044:	f000 f846 	bl	d00430d4 <_lseek_r>
d0043048:	89a3      	ldrh	r3, [r4, #12]
d004304a:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d004304e:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0043052:	81a3      	strh	r3, [r4, #12]
d0043054:	4632      	mov	r2, r6
d0043056:	463b      	mov	r3, r7
d0043058:	4628      	mov	r0, r5
d004305a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d004305e:	f7fd b855 	b.w	d004010c <_write_r>

d0043062 <__sseek>:
d0043062:	b510      	push	{r4, lr}
d0043064:	460c      	mov	r4, r1
d0043066:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d004306a:	f000 f833 	bl	d00430d4 <_lseek_r>
d004306e:	1c43      	adds	r3, r0, #1
d0043070:	89a3      	ldrh	r3, [r4, #12]
d0043072:	bf15      	itete	ne
d0043074:	6560      	strne	r0, [r4, #84]	; 0x54
d0043076:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d004307a:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d004307e:	81a3      	strheq	r3, [r4, #12]
d0043080:	bf18      	it	ne
d0043082:	81a3      	strhne	r3, [r4, #12]
d0043084:	bd10      	pop	{r4, pc}

d0043086 <__sclose>:
d0043086:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d004308a:	f000 b801 	b.w	d0043090 <_close_r>
	...

d0043090 <_close_r>:
d0043090:	b538      	push	{r3, r4, r5, lr}
d0043092:	4d06      	ldr	r5, [pc, #24]	; (d00430ac <_close_r+0x1c>)
d0043094:	2300      	movs	r3, #0
d0043096:	4604      	mov	r4, r0
d0043098:	4608      	mov	r0, r1
d004309a:	602b      	str	r3, [r5, #0]
d004309c:	f7fd f870 	bl	d0040180 <_close>
d00430a0:	1c43      	adds	r3, r0, #1
d00430a2:	d102      	bne.n	d00430aa <_close_r+0x1a>
d00430a4:	682b      	ldr	r3, [r5, #0]
d00430a6:	b103      	cbz	r3, d00430aa <_close_r+0x1a>
d00430a8:	6023      	str	r3, [r4, #0]
d00430aa:	bd38      	pop	{r3, r4, r5, pc}
d00430ac:	d004500c 	.word	0xd004500c

d00430b0 <_fstat_r>:
d00430b0:	b538      	push	{r3, r4, r5, lr}
d00430b2:	4d07      	ldr	r5, [pc, #28]	; (d00430d0 <_fstat_r+0x20>)
d00430b4:	2300      	movs	r3, #0
d00430b6:	4604      	mov	r4, r0
d00430b8:	4608      	mov	r0, r1
d00430ba:	4611      	mov	r1, r2
d00430bc:	602b      	str	r3, [r5, #0]
d00430be:	f7fd f863 	bl	d0040188 <_fstat>
d00430c2:	1c43      	adds	r3, r0, #1
d00430c4:	d102      	bne.n	d00430cc <_fstat_r+0x1c>
d00430c6:	682b      	ldr	r3, [r5, #0]
d00430c8:	b103      	cbz	r3, d00430cc <_fstat_r+0x1c>
d00430ca:	6023      	str	r3, [r4, #0]
d00430cc:	bd38      	pop	{r3, r4, r5, pc}
d00430ce:	bf00      	nop
d00430d0:	d004500c 	.word	0xd004500c

d00430d4 <_lseek_r>:
d00430d4:	b538      	push	{r3, r4, r5, lr}
d00430d6:	4d07      	ldr	r5, [pc, #28]	; (d00430f4 <_lseek_r+0x20>)
d00430d8:	4604      	mov	r4, r0
d00430da:	4608      	mov	r0, r1
d00430dc:	4611      	mov	r1, r2
d00430de:	2200      	movs	r2, #0
d00430e0:	602a      	str	r2, [r5, #0]
d00430e2:	461a      	mov	r2, r3
d00430e4:	f7fd f856 	bl	d0040194 <_lseek>
d00430e8:	1c43      	adds	r3, r0, #1
d00430ea:	d102      	bne.n	d00430f2 <_lseek_r+0x1e>
d00430ec:	682b      	ldr	r3, [r5, #0]
d00430ee:	b103      	cbz	r3, d00430f2 <_lseek_r+0x1e>
d00430f0:	6023      	str	r3, [r4, #0]
d00430f2:	bd38      	pop	{r3, r4, r5, pc}
d00430f4:	d004500c 	.word	0xd004500c
	...

d0043100 <memchr>:
d0043100:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0043104:	2a10      	cmp	r2, #16
d0043106:	db2b      	blt.n	d0043160 <memchr+0x60>
d0043108:	f010 0f07 	tst.w	r0, #7
d004310c:	d008      	beq.n	d0043120 <memchr+0x20>
d004310e:	f810 3b01 	ldrb.w	r3, [r0], #1
d0043112:	3a01      	subs	r2, #1
d0043114:	428b      	cmp	r3, r1
d0043116:	d02d      	beq.n	d0043174 <memchr+0x74>
d0043118:	f010 0f07 	tst.w	r0, #7
d004311c:	b342      	cbz	r2, d0043170 <memchr+0x70>
d004311e:	d1f6      	bne.n	d004310e <memchr+0xe>
d0043120:	b4f0      	push	{r4, r5, r6, r7}
d0043122:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0043126:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d004312a:	f022 0407 	bic.w	r4, r2, #7
d004312e:	f07f 0700 	mvns.w	r7, #0
d0043132:	2300      	movs	r3, #0
d0043134:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0043138:	3c08      	subs	r4, #8
d004313a:	ea85 0501 	eor.w	r5, r5, r1
d004313e:	ea86 0601 	eor.w	r6, r6, r1
d0043142:	fa85 f547 	uadd8	r5, r5, r7
d0043146:	faa3 f587 	sel	r5, r3, r7
d004314a:	fa86 f647 	uadd8	r6, r6, r7
d004314e:	faa5 f687 	sel	r6, r5, r7
d0043152:	b98e      	cbnz	r6, d0043178 <memchr+0x78>
d0043154:	d1ee      	bne.n	d0043134 <memchr+0x34>
d0043156:	bcf0      	pop	{r4, r5, r6, r7}
d0043158:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d004315c:	f002 0207 	and.w	r2, r2, #7
d0043160:	b132      	cbz	r2, d0043170 <memchr+0x70>
d0043162:	f810 3b01 	ldrb.w	r3, [r0], #1
d0043166:	3a01      	subs	r2, #1
d0043168:	ea83 0301 	eor.w	r3, r3, r1
d004316c:	b113      	cbz	r3, d0043174 <memchr+0x74>
d004316e:	d1f8      	bne.n	d0043162 <memchr+0x62>
d0043170:	2000      	movs	r0, #0
d0043172:	4770      	bx	lr
d0043174:	3801      	subs	r0, #1
d0043176:	4770      	bx	lr
d0043178:	2d00      	cmp	r5, #0
d004317a:	bf06      	itte	eq
d004317c:	4635      	moveq	r5, r6
d004317e:	3803      	subeq	r0, #3
d0043180:	3807      	subne	r0, #7
d0043182:	f015 0f01 	tst.w	r5, #1
d0043186:	d107      	bne.n	d0043198 <memchr+0x98>
d0043188:	3001      	adds	r0, #1
d004318a:	f415 7f80 	tst.w	r5, #256	; 0x100
d004318e:	bf02      	ittt	eq
d0043190:	3001      	addeq	r0, #1
d0043192:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0043196:	3001      	addeq	r0, #1
d0043198:	bcf0      	pop	{r4, r5, r6, r7}
d004319a:	3801      	subs	r0, #1
d004319c:	4770      	bx	lr
d004319e:	bf00      	nop

d00431a0 <memcpy>:
d00431a0:	440a      	add	r2, r1
d00431a2:	4291      	cmp	r1, r2
d00431a4:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d00431a8:	d100      	bne.n	d00431ac <memcpy+0xc>
d00431aa:	4770      	bx	lr
d00431ac:	b510      	push	{r4, lr}
d00431ae:	f811 4b01 	ldrb.w	r4, [r1], #1
d00431b2:	f803 4f01 	strb.w	r4, [r3, #1]!
d00431b6:	4291      	cmp	r1, r2
d00431b8:	d1f9      	bne.n	d00431ae <memcpy+0xe>
d00431ba:	bd10      	pop	{r4, pc}

d00431bc <memmove>:
d00431bc:	4288      	cmp	r0, r1
d00431be:	b510      	push	{r4, lr}
d00431c0:	eb01 0402 	add.w	r4, r1, r2
d00431c4:	d902      	bls.n	d00431cc <memmove+0x10>
d00431c6:	4284      	cmp	r4, r0
d00431c8:	4623      	mov	r3, r4
d00431ca:	d807      	bhi.n	d00431dc <memmove+0x20>
d00431cc:	1e43      	subs	r3, r0, #1
d00431ce:	42a1      	cmp	r1, r4
d00431d0:	d008      	beq.n	d00431e4 <memmove+0x28>
d00431d2:	f811 2b01 	ldrb.w	r2, [r1], #1
d00431d6:	f803 2f01 	strb.w	r2, [r3, #1]!
d00431da:	e7f8      	b.n	d00431ce <memmove+0x12>
d00431dc:	4402      	add	r2, r0
d00431de:	4601      	mov	r1, r0
d00431e0:	428a      	cmp	r2, r1
d00431e2:	d100      	bne.n	d00431e6 <memmove+0x2a>
d00431e4:	bd10      	pop	{r4, pc}
d00431e6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d00431ea:	f802 4d01 	strb.w	r4, [r2, #-1]!
d00431ee:	e7f7      	b.n	d00431e0 <memmove+0x24>

d00431f0 <_realloc_r>:
d00431f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00431f2:	4607      	mov	r7, r0
d00431f4:	4614      	mov	r4, r2
d00431f6:	460e      	mov	r6, r1
d00431f8:	b921      	cbnz	r1, d0043204 <_realloc_r+0x14>
d00431fa:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d00431fe:	4611      	mov	r1, r2
d0043200:	f7ff b8e0 	b.w	d00423c4 <_malloc_r>
d0043204:	b922      	cbnz	r2, d0043210 <_realloc_r+0x20>
d0043206:	f7ff f88d 	bl	d0042324 <_free_r>
d004320a:	4625      	mov	r5, r4
d004320c:	4628      	mov	r0, r5
d004320e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0043210:	f000 f826 	bl	d0043260 <_malloc_usable_size_r>
d0043214:	42a0      	cmp	r0, r4
d0043216:	d20f      	bcs.n	d0043238 <_realloc_r+0x48>
d0043218:	4621      	mov	r1, r4
d004321a:	4638      	mov	r0, r7
d004321c:	f7ff f8d2 	bl	d00423c4 <_malloc_r>
d0043220:	4605      	mov	r5, r0
d0043222:	2800      	cmp	r0, #0
d0043224:	d0f2      	beq.n	d004320c <_realloc_r+0x1c>
d0043226:	4631      	mov	r1, r6
d0043228:	4622      	mov	r2, r4
d004322a:	f7ff ffb9 	bl	d00431a0 <memcpy>
d004322e:	4631      	mov	r1, r6
d0043230:	4638      	mov	r0, r7
d0043232:	f7ff f877 	bl	d0042324 <_free_r>
d0043236:	e7e9      	b.n	d004320c <_realloc_r+0x1c>
d0043238:	4635      	mov	r5, r6
d004323a:	e7e7      	b.n	d004320c <_realloc_r+0x1c>

d004323c <_read_r>:
d004323c:	b538      	push	{r3, r4, r5, lr}
d004323e:	4d07      	ldr	r5, [pc, #28]	; (d004325c <_read_r+0x20>)
d0043240:	4604      	mov	r4, r0
d0043242:	4608      	mov	r0, r1
d0043244:	4611      	mov	r1, r2
d0043246:	2200      	movs	r2, #0
d0043248:	602a      	str	r2, [r5, #0]
d004324a:	461a      	mov	r2, r3
d004324c:	f7fc ff8e 	bl	d004016c <_read>
d0043250:	1c43      	adds	r3, r0, #1
d0043252:	d102      	bne.n	d004325a <_read_r+0x1e>
d0043254:	682b      	ldr	r3, [r5, #0]
d0043256:	b103      	cbz	r3, d004325a <_read_r+0x1e>
d0043258:	6023      	str	r3, [r4, #0]
d004325a:	bd38      	pop	{r3, r4, r5, pc}
d004325c:	d004500c 	.word	0xd004500c

d0043260 <_malloc_usable_size_r>:
d0043260:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0043264:	1f18      	subs	r0, r3, #4
d0043266:	2b00      	cmp	r3, #0
d0043268:	bfbc      	itt	lt
d004326a:	580b      	ldrlt	r3, [r1, r0]
d004326c:	18c0      	addlt	r0, r0, r3
d004326e:	4770      	bx	lr

d0043270 <_global_impure_ptr>:
d0043270:	35e4 d004 4952 4646 0000 0000 4157 4556     .5..RIFF....WAVE
d0043280:	0000 0000                                   ....

d0043284 <dirTable>:
d0043284:	0000 0000 0000 3f80 c433 3e31 1bda 3f7c     .......?3.1>..|?
d0043294:	1aa0 3eaf 902e 3f70 0000 3f00 b22d 3f5d     ...>..p?...?-.]?
d00432a4:	8e8a 3f24 1893 3f44 1893 3f44 8e8a 3f24     ..$?..D?..D?..$?
d00432b4:	b22d 3f5d 0000 3f00 902e 3f70 1aa0 3eaf     -.]?...?..p?...>
d00432c4:	1bda 3f7c c433 3e31 0000 3f80 0000 0000     ..|?3.1>...?....
d00432d4:	1bda 3f7c c433 be31 902e 3f70 1aa0 beaf     ..|?3.1...p?....
d00432e4:	b22d 3f5d 0000 bf00 1893 3f44 8e8a bf24     -.]?......D?..$.
d00432f4:	8e8a 3f24 1893 bf44 0000 3f00 b22d bf5d     ..$?..D....?-.].
d0043304:	1aa0 3eaf 902e bf70 c433 3e31 1bda bf7c     ...>..p.3.1>..|.
d0043314:	0000 0000 0000 bf80 c433 be31 1bda bf7c     ........3.1...|.
d0043324:	1aa0 beaf 902e bf70 0000 bf00 b22d bf5d     ......p.....-.].
d0043334:	8e8a bf24 1893 bf44 1893 bf44 8e8a bf24     ..$...D...D...$.
d0043344:	b22d bf5d 0000 bf00 902e bf70 1aa0 beaf     -.].......p.....
d0043354:	1bda bf7c c433 be31 0000 bf80 0000 0000     ..|.3.1.........
d0043364:	1bda bf7c c433 3e31 902e bf70 1aa0 3eaf     ..|.3.1>..p....>
d0043374:	b22d bf5d 0000 3f00 1893 bf44 8e8a 3f24     -.]....?..D...$?
d0043384:	8e8a bf24 1893 3f44 0000 bf00 b22d 3f5d     ..$...D?....-.]?
d0043394:	1aa0 beaf 902e 3f70 c433 be31 1bda 3f7c     ......p?3.1...|?
d00433a4:	6572 2f73 7865 7274 6c61 6669 2e65 6177     res/extralife.wa
d00433b4:	0076 0000 6572 2f73 6966 6572 2e6d 6177     v...res/firem.wa
d00433c4:	0076 0000 6572 2f73 6874 7572 7473 2e32     v...res/thrust2.
d00433d4:	6177 0076 6572 2f73 6873 6569 646c 3273     wav.res/shields2
d00433e4:	772e 7661 0000 0000 6572 2f73 7865 6c70     .wav....res/expl
d00433f4:	646f 5f65 6962 2e67 6177 0076 6572 2f73     ode_big.wav.res/
d0043404:	7865 6c70 646f 5f65 6d73 6c61 2e6c 6177     explode_small.wa
d0043414:	0076 0000 6572 2f73 6f63 6c6c 6469 2e65     v...res/collide.
d0043424:	6177 0076 6572 2f73 6473 656c 3176 6d2e     wav.res/sdlev1.m
d0043434:	646f 0000 6572 2f73 7361 7274 696f 5f64     od..res/astroid_
d0043444:	616c 6772 5f65 2e31 7070 0062 6572 2f73     large_1.ppb.res/
d0043454:	7361 7274 696f 5f64 656d 6964 6d75 315f     astroid_medium_1
d0043464:	702e 6270 0000 0000 6572 2f73 7361 7274     .ppb....res/astr
d0043474:	696f 5f64 656d 6964 6d75 325f 702e 6270     oid_medium_2.ppb
d0043484:	0000 0000 6572 2f73 7361 7274 696f 5f64     ....res/astroid_
d0043494:	6d73 6c61 5f6c 2e32 7070 0062 6572 2f73     small_2.ppb.res/
d00434a4:	6873 7069 7372 702e 6270 0000 6572 2f73     shiprs.ppb..res/
d00434b4:	7562 6c6c 7465 5f73 7974 6570 2e31 7070     bullets_type1.pp
d00434c4:	0062 0000 6572 2f73 6c66 6d61 7365 702e     b...res/flames.p
d00434d4:	6270 0000 6572 2f73 6873 6569 646c 702e     pb..res/shield.p
d00434e4:	6270 0000 6572 2f73 7865 6c70 646f 2e65     pb..res/explode.
d00434f4:	7070 0062 6572 2f73 6f66 746e 3631 3631     ppb.res/font1616
d0043504:	702e 6270 0000 0000 6572 2f73 6162 6b63     .ppb....res/back
d0043514:	702e 6270 0000 0000 4353 524f 3a45 2520     .ppb....SCORE: %
d0043524:	3630 756c 0000 0000 494c 4556 3a53 2520     06lu....LIVES: %
d0043534:	756c 0000 4157 4556 3a53 2520 756c 0000     lu..WAVES: %lu..

d0043544 <__sf_fake_stderr>:
	...

d0043564 <__sf_fake_stdin>:
	...

d0043584 <__sf_fake_stdout>:
	...
d00435a4:	2d23 2b30 0020 6c68 004c 6665 4567 4746     #-0+ .hlL.efgEFG
d00435b4:	3000 3231 3433 3635 3837 4139 4342 4544     .0123456789ABCDE
d00435c4:	0046 3130 3332 3534 3736 3938 6261 6463     F.0123456789abcd
d00435d4:	6665                                         ef.

Disassembly of section .init:

d00435d8 <_init>:
d00435d8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00435da:	bf00      	nop

Disassembly of section .fini:

d00435dc <_fini>:
d00435dc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00435de:	bf00      	nop
