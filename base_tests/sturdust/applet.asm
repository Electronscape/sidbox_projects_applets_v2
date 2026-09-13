
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
d004001e:	f002 fcd7 	bl	d00429d0 <setbuf>
d0040022:	6833      	ldr	r3, [r6, #0]
d0040024:	2100      	movs	r1, #0
d0040026:	68d8      	ldr	r0, [r3, #12]
d0040028:	f002 fcd2 	bl	d00429d0 <setbuf>
d004002c:	4629      	mov	r1, r5
d004002e:	4620      	mov	r0, r4
d0040030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0040034:	f002 b8e6 	b.w	d0042204 <main>
d0040038:	d004439c 	.word	0xd004439c

d004003c <LoadPPB>:
d004003c:	b5f0      	push	{r4, r5, r6, r7, lr}
d004003e:	4c28      	ldr	r4, [pc, #160]	; (d00400e0 <LoadPPB+0xa4>)
d0040040:	2600      	movs	r6, #0
d0040042:	f2ad 4d1c 	subw	sp, sp, #1052	; 0x41c
d0040046:	460f      	mov	r7, r1
d0040048:	7923      	ldrb	r3, [r4, #4]
d004004a:	4601      	mov	r1, r0
d004004c:	7965      	ldrb	r5, [r4, #5]
d004004e:	4630      	mov	r0, r6
d0040050:	f894 c006 	ldrb.w	ip, [r4, #6]
d0040054:	2201      	movs	r2, #1
d0040056:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d004005a:	79e5      	ldrb	r5, [r4, #7]
d004005c:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0040060:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d0040064:	681b      	ldr	r3, [r3, #0]
d0040066:	681b      	ldr	r3, [r3, #0]
d0040068:	4798      	blx	r3
d004006a:	7925      	ldrb	r5, [r4, #4]
d004006c:	7961      	ldrb	r1, [r4, #5]
d004006e:	ab01      	add	r3, sp, #4
d0040070:	79a2      	ldrb	r2, [r4, #6]
d0040072:	4630      	mov	r0, r6
d0040074:	ea45 2501 	orr.w	r5, r5, r1, lsl #8
d0040078:	f894 c007 	ldrb.w	ip, [r4, #7]
d004007c:	a902      	add	r1, sp, #8
d004007e:	ea45 4502 	orr.w	r5, r5, r2, lsl #16
d0040082:	f44f 6282 	mov.w	r2, #1040	; 0x410
d0040086:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d004008a:	682d      	ldr	r5, [r5, #0]
d004008c:	68ad      	ldr	r5, [r5, #8]
d004008e:	47a8      	blx	r5
d0040090:	7925      	ldrb	r5, [r4, #4]
d0040092:	7962      	ldrb	r2, [r4, #5]
d0040094:	4639      	mov	r1, r7
d0040096:	79a7      	ldrb	r7, [r4, #6]
d0040098:	ab01      	add	r3, sp, #4
d004009a:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d004009e:	f894 c007 	ldrb.w	ip, [r4, #7]
d00400a2:	f89d 2010 	ldrb.w	r2, [sp, #16]
d00400a6:	4630      	mov	r0, r6
d00400a8:	ea45 4507 	orr.w	r5, r5, r7, lsl #16
d00400ac:	9f03      	ldr	r7, [sp, #12]
d00400ae:	0612      	lsls	r2, r2, #24
d00400b0:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d00400b4:	ea42 2217 	orr.w	r2, r2, r7, lsr #8
d00400b8:	682d      	ldr	r5, [r5, #0]
d00400ba:	68ad      	ldr	r5, [r5, #8]
d00400bc:	47a8      	blx	r5
d00400be:	7923      	ldrb	r3, [r4, #4]
d00400c0:	7962      	ldrb	r2, [r4, #5]
d00400c2:	4630      	mov	r0, r6
d00400c4:	79a1      	ldrb	r1, [r4, #6]
d00400c6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00400ca:	79e2      	ldrb	r2, [r4, #7]
d00400cc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00400d0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00400d4:	681b      	ldr	r3, [r3, #0]
d00400d6:	68db      	ldr	r3, [r3, #12]
d00400d8:	4798      	blx	r3
d00400da:	f20d 4d1c 	addw	sp, sp, #1052	; 0x41c
d00400de:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00400e0:	2001f000 	.word	0x2001f000

d00400e4 <initMalloc>:
d00400e4:	4902      	ldr	r1, [pc, #8]	; (d00400f0 <initMalloc+0xc>)
d00400e6:	4b03      	ldr	r3, [pc, #12]	; (d00400f4 <initMalloc+0x10>)
d00400e8:	4a03      	ldr	r2, [pc, #12]	; (d00400f8 <initMalloc+0x14>)
d00400ea:	1a5b      	subs	r3, r3, r1
d00400ec:	6013      	str	r3, [r2, #0]
d00400ee:	4770      	bx	lr
d00400f0:	d0048858 	.word	0xd0048858
d00400f4:	d0600000 	.word	0xd0600000
d00400f8:	d0044420 	.word	0xd0044420

d00400fc <_write_r>:
d00400fc:	3901      	subs	r1, #1
d00400fe:	2901      	cmp	r1, #1
d0040100:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0040102:	d81f      	bhi.n	d0040144 <_write_r+0x48>
d0040104:	b1e2      	cbz	r2, d0040140 <_write_r+0x44>
d0040106:	461c      	mov	r4, r3
d0040108:	b1d3      	cbz	r3, d0040140 <_write_r+0x44>
d004010a:	4d12      	ldr	r5, [pc, #72]	; (d0040154 <_write_r+0x58>)
d004010c:	682e      	ldr	r6, [r5, #0]
d004010e:	b9ae      	cbnz	r6, d004013c <_write_r+0x40>
d0040110:	4f11      	ldr	r7, [pc, #68]	; (d0040158 <_write_r+0x5c>)
d0040112:	2301      	movs	r3, #1
d0040114:	4611      	mov	r1, r2
d0040116:	4630      	mov	r0, r6
d0040118:	602b      	str	r3, [r5, #0]
d004011a:	4622      	mov	r2, r4
d004011c:	7a3b      	ldrb	r3, [r7, #8]
d004011e:	f897 c009 	ldrb.w	ip, [r7, #9]
d0040122:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d0040126:	f897 c00a 	ldrb.w	ip, [r7, #10]
d004012a:	7aff      	ldrb	r7, [r7, #11]
d004012c:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0040130:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d0040134:	681b      	ldr	r3, [r3, #0]
d0040136:	685b      	ldr	r3, [r3, #4]
d0040138:	4798      	blx	r3
d004013a:	602e      	str	r6, [r5, #0]
d004013c:	4620      	mov	r0, r4
d004013e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0040140:	2000      	movs	r0, #0
d0040142:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0040144:	f002 fb68 	bl	d0042818 <__errno>
d0040148:	2209      	movs	r2, #9
d004014a:	4603      	mov	r3, r0
d004014c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0040150:	601a      	str	r2, [r3, #0]
d0040152:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0040154:	d0044404 	.word	0xd0044404
d0040158:	2001f000 	.word	0x2001f000

d004015c <_read>:
d004015c:	b508      	push	{r3, lr}
d004015e:	f002 fb5b 	bl	d0042818 <__errno>
d0040162:	2258      	movs	r2, #88	; 0x58
d0040164:	4603      	mov	r3, r0
d0040166:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004016a:	601a      	str	r2, [r3, #0]
d004016c:	bd08      	pop	{r3, pc}
d004016e:	bf00      	nop

d0040170 <_close>:
d0040170:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0040174:	4770      	bx	lr
d0040176:	bf00      	nop

d0040178 <_fstat>:
d0040178:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d004017c:	2000      	movs	r0, #0
d004017e:	604b      	str	r3, [r1, #4]
d0040180:	4770      	bx	lr
d0040182:	bf00      	nop

d0040184 <_lseek>:
d0040184:	2000      	movs	r0, #0
d0040186:	4770      	bx	lr

d0040188 <_sbrk_r>:
d0040188:	4b0c      	ldr	r3, [pc, #48]	; (d00401bc <_sbrk_r+0x34>)
d004018a:	4a0d      	ldr	r2, [pc, #52]	; (d00401c0 <_sbrk_r+0x38>)
d004018c:	6818      	ldr	r0, [r3, #0]
d004018e:	b510      	push	{r4, lr}
d0040190:	b918      	cbnz	r0, d004019a <_sbrk_r+0x12>
d0040192:	1dd0      	adds	r0, r2, #7
d0040194:	f020 0007 	bic.w	r0, r0, #7
d0040198:	6018      	str	r0, [r3, #0]
d004019a:	4401      	add	r1, r0
d004019c:	4c09      	ldr	r4, [pc, #36]	; (d00401c4 <_sbrk_r+0x3c>)
d004019e:	42a1      	cmp	r1, r4
d00401a0:	d803      	bhi.n	d00401aa <_sbrk_r+0x22>
d00401a2:	4291      	cmp	r1, r2
d00401a4:	d301      	bcc.n	d00401aa <_sbrk_r+0x22>
d00401a6:	6019      	str	r1, [r3, #0]
d00401a8:	bd10      	pop	{r4, pc}
d00401aa:	f002 fb35 	bl	d0042818 <__errno>
d00401ae:	220c      	movs	r2, #12
d00401b0:	4603      	mov	r3, r0
d00401b2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00401b6:	601a      	str	r2, [r3, #0]
d00401b8:	bd10      	pop	{r4, pc}
d00401ba:	bf00      	nop
d00401bc:	d0044400 	.word	0xd0044400
d00401c0:	d0048858 	.word	0xd0048858
d00401c4:	d0600000 	.word	0xd0600000

d00401c8 <LoadSFX>:
d00401c8:	b5f0      	push	{r4, r5, r6, r7, lr}
d00401ca:	4c40      	ldr	r4, [pc, #256]	; (d00402cc <LoadSFX+0x104>)
d00401cc:	460f      	mov	r7, r1
d00401ce:	4601      	mov	r1, r0
d00401d0:	b08f      	sub	sp, #60	; 0x3c
d00401d2:	7925      	ldrb	r5, [r4, #4]
d00401d4:	2201      	movs	r2, #1
d00401d6:	7963      	ldrb	r3, [r4, #5]
d00401d8:	79a0      	ldrb	r0, [r4, #6]
d00401da:	ea45 2303 	orr.w	r3, r5, r3, lsl #8
d00401de:	79e5      	ldrb	r5, [r4, #7]
d00401e0:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00401e4:	2000      	movs	r0, #0
d00401e6:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d00401ea:	681b      	ldr	r3, [r3, #0]
d00401ec:	681b      	ldr	r3, [r3, #0]
d00401ee:	4798      	blx	r3
d00401f0:	bb00      	cbnz	r0, d0040234 <LoadSFX+0x6c>
d00401f2:	7921      	ldrb	r1, [r4, #4]
d00401f4:	ab02      	add	r3, sp, #8
d00401f6:	7962      	ldrb	r2, [r4, #5]
d00401f8:	79a6      	ldrb	r6, [r4, #6]
d00401fa:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
d00401fe:	79e5      	ldrb	r5, [r4, #7]
d0040200:	a903      	add	r1, sp, #12
d0040202:	ea42 4606 	orr.w	r6, r2, r6, lsl #16
d0040206:	222c      	movs	r2, #44	; 0x2c
d0040208:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d004020c:	682d      	ldr	r5, [r5, #0]
d004020e:	68ad      	ldr	r5, [r5, #8]
d0040210:	47a8      	blx	r5
d0040212:	a803      	add	r0, sp, #12
d0040214:	2204      	movs	r2, #4
d0040216:	492e      	ldr	r1, [pc, #184]	; (d00402d0 <LoadSFX+0x108>)
d0040218:	f002 fb0c 	bl	d0042834 <memcmp>
d004021c:	b950      	cbnz	r0, d0040234 <LoadSFX+0x6c>
d004021e:	2204      	movs	r2, #4
d0040220:	492c      	ldr	r1, [pc, #176]	; (d00402d4 <LoadSFX+0x10c>)
d0040222:	a805      	add	r0, sp, #20
d0040224:	f002 fb06 	bl	d0042834 <memcmp>
d0040228:	4605      	mov	r5, r0
d004022a:	b918      	cbnz	r0, d0040234 <LoadSFX+0x6c>
d004022c:	f8bd 3020 	ldrh.w	r3, [sp, #32]
d0040230:	2b01      	cmp	r3, #1
d0040232:	d010      	beq.n	d0040256 <LoadSFX+0x8e>
d0040234:	7923      	ldrb	r3, [r4, #4]
d0040236:	2000      	movs	r0, #0
d0040238:	7962      	ldrb	r2, [r4, #5]
d004023a:	79a1      	ldrb	r1, [r4, #6]
d004023c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040240:	79e2      	ldrb	r2, [r4, #7]
d0040242:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040246:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004024a:	681b      	ldr	r3, [r3, #0]
d004024c:	68db      	ldr	r3, [r3, #12]
d004024e:	4798      	blx	r3
d0040250:	2000      	movs	r0, #0
d0040252:	b00f      	add	sp, #60	; 0x3c
d0040254:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0040256:	9a0d      	ldr	r2, [sp, #52]	; 0x34
d0040258:	4610      	mov	r0, r2
d004025a:	9201      	str	r2, [sp, #4]
d004025c:	f002 fae2 	bl	d0042824 <malloc>
d0040260:	9a01      	ldr	r2, [sp, #4]
d0040262:	4601      	mov	r1, r0
d0040264:	6038      	str	r0, [r7, #0]
d0040266:	b1f8      	cbz	r0, d00402a8 <LoadSFX+0xe0>
d0040268:	7920      	ldrb	r0, [r4, #4]
d004026a:	ab02      	add	r3, sp, #8
d004026c:	7966      	ldrb	r6, [r4, #5]
d004026e:	f894 c006 	ldrb.w	ip, [r4, #6]
d0040272:	ea40 2606 	orr.w	r6, r0, r6, lsl #8
d0040276:	79e7      	ldrb	r7, [r4, #7]
d0040278:	4628      	mov	r0, r5
d004027a:	ea46 460c 	orr.w	r6, r6, ip, lsl #16
d004027e:	ea46 6607 	orr.w	r6, r6, r7, lsl #24
d0040282:	6836      	ldr	r6, [r6, #0]
d0040284:	68b6      	ldr	r6, [r6, #8]
d0040286:	47b0      	blx	r6
d0040288:	7923      	ldrb	r3, [r4, #4]
d004028a:	7962      	ldrb	r2, [r4, #5]
d004028c:	4628      	mov	r0, r5
d004028e:	79a1      	ldrb	r1, [r4, #6]
d0040290:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040294:	79e2      	ldrb	r2, [r4, #7]
d0040296:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004029a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004029e:	681b      	ldr	r3, [r3, #0]
d00402a0:	68db      	ldr	r3, [r3, #12]
d00402a2:	4798      	blx	r3
d00402a4:	980d      	ldr	r0, [sp, #52]	; 0x34
d00402a6:	e7d4      	b.n	d0040252 <LoadSFX+0x8a>
d00402a8:	7923      	ldrb	r3, [r4, #4]
d00402aa:	7962      	ldrb	r2, [r4, #5]
d00402ac:	79a5      	ldrb	r5, [r4, #6]
d00402ae:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00402b2:	79e2      	ldrb	r2, [r4, #7]
d00402b4:	9001      	str	r0, [sp, #4]
d00402b6:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00402ba:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00402be:	681b      	ldr	r3, [r3, #0]
d00402c0:	68db      	ldr	r3, [r3, #12]
d00402c2:	4798      	blx	r3
d00402c4:	9901      	ldr	r1, [sp, #4]
d00402c6:	4608      	mov	r0, r1
d00402c8:	e7c3      	b.n	d0040252 <LoadSFX+0x8a>
d00402ca:	bf00      	nop
d00402cc:	2001f000 	.word	0x2001f000
d00402d0:	d00437a4 	.word	0xd00437a4
d00402d4:	d00437ac 	.word	0xd00437ac

d00402d8 <loadSounds>:
d00402d8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00402dc:	4fb1      	ldr	r7, [pc, #708]	; (d00405a4 <loadSounds+0x2cc>)
d00402de:	4cb2      	ldr	r4, [pc, #712]	; (d00405a8 <loadSounds+0x2d0>)
d00402e0:	4639      	mov	r1, r7
d00402e2:	48b2      	ldr	r0, [pc, #712]	; (d00405ac <loadSounds+0x2d4>)
d00402e4:	f7ff ff70 	bl	d00401c8 <LoadSFX>
d00402e8:	7d26      	ldrb	r6, [r4, #20]
d00402ea:	7d65      	ldrb	r5, [r4, #21]
d00402ec:	2300      	movs	r3, #0
d00402ee:	f894 e016 	ldrb.w	lr, [r4, #22]
d00402f2:	4602      	mov	r2, r0
d00402f4:	ea46 2505 	orr.w	r5, r6, r5, lsl #8
d00402f8:	f894 c017 	ldrb.w	ip, [r4, #23]
d00402fc:	4618      	mov	r0, r3
d00402fe:	6839      	ldr	r1, [r7, #0]
d0040300:	ea45 450e 	orr.w	r5, r5, lr, lsl #16
d0040304:	4eaa      	ldr	r6, [pc, #680]	; (d00405b0 <loadSounds+0x2d8>)
d0040306:	4fab      	ldr	r7, [pc, #684]	; (d00405b4 <loadSounds+0x2dc>)
d0040308:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d004030c:	f8df 92bc 	ldr.w	r9, [pc, #700]	; d00405cc <loadSounds+0x2f4>
d0040310:	f8df 82bc 	ldr.w	r8, [pc, #700]	; d00405d0 <loadSounds+0x2f8>
d0040314:	68ad      	ldr	r5, [r5, #8]
d0040316:	68ed      	ldr	r5, [r5, #12]
d0040318:	47a8      	blx	r5
d004031a:	7d23      	ldrb	r3, [r4, #20]
d004031c:	7d62      	ldrb	r2, [r4, #21]
d004031e:	f64a 4144 	movw	r1, #44100	; 0xac44
d0040322:	7da5      	ldrb	r5, [r4, #22]
d0040324:	2000      	movs	r0, #0
d0040326:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004032a:	7de2      	ldrb	r2, [r4, #23]
d004032c:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040330:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040334:	689b      	ldr	r3, [r3, #8]
d0040336:	691b      	ldr	r3, [r3, #16]
d0040338:	4798      	blx	r3
d004033a:	7d23      	ldrb	r3, [r4, #20]
d004033c:	7d62      	ldrb	r2, [r4, #21]
d004033e:	21f0      	movs	r1, #240	; 0xf0
d0040340:	7da0      	ldrb	r0, [r4, #22]
d0040342:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040346:	7de2      	ldrb	r2, [r4, #23]
d0040348:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004034c:	2000      	movs	r0, #0
d004034e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040352:	689b      	ldr	r3, [r3, #8]
d0040354:	695b      	ldr	r3, [r3, #20]
d0040356:	4798      	blx	r3
d0040358:	7d23      	ldrb	r3, [r4, #20]
d004035a:	7d62      	ldrb	r2, [r4, #21]
d004035c:	2100      	movs	r1, #0
d004035e:	7da0      	ldrb	r0, [r4, #22]
d0040360:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040364:	7de2      	ldrb	r2, [r4, #23]
d0040366:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004036a:	4608      	mov	r0, r1
d004036c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040370:	689b      	ldr	r3, [r3, #8]
d0040372:	699b      	ldr	r3, [r3, #24]
d0040374:	4798      	blx	r3
d0040376:	7d23      	ldrb	r3, [r4, #20]
d0040378:	7d60      	ldrb	r0, [r4, #21]
d004037a:	f241 1251 	movw	r2, #4433	; 0x1151
d004037e:	7da1      	ldrb	r1, [r4, #22]
d0040380:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d0040384:	7de0      	ldrb	r0, [r4, #23]
d0040386:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004038a:	21c8      	movs	r1, #200	; 0xc8
d004038c:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d0040390:	2000      	movs	r0, #0
d0040392:	689b      	ldr	r3, [r3, #8]
d0040394:	69db      	ldr	r3, [r3, #28]
d0040396:	4798      	blx	r3
d0040398:	7d23      	ldrb	r3, [r4, #20]
d004039a:	7d62      	ldrb	r2, [r4, #21]
d004039c:	2100      	movs	r1, #0
d004039e:	7da0      	ldrb	r0, [r4, #22]
d00403a0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00403a4:	7de2      	ldrb	r2, [r4, #23]
d00403a6:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00403aa:	4608      	mov	r0, r1
d00403ac:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00403b0:	689b      	ldr	r3, [r3, #8]
d00403b2:	6a1b      	ldr	r3, [r3, #32]
d00403b4:	4798      	blx	r3
d00403b6:	4631      	mov	r1, r6
d00403b8:	487f      	ldr	r0, [pc, #508]	; (d00405b8 <loadSounds+0x2e0>)
d00403ba:	f7ff ff05 	bl	d00401c8 <LoadSFX>
d00403be:	7d25      	ldrb	r5, [r4, #20]
d00403c0:	f894 c015 	ldrb.w	ip, [r4, #21]
d00403c4:	4602      	mov	r2, r0
d00403c6:	7da0      	ldrb	r0, [r4, #22]
d00403c8:	2300      	movs	r3, #0
d00403ca:	ea45 250c 	orr.w	r5, r5, ip, lsl #8
d00403ce:	6831      	ldr	r1, [r6, #0]
d00403d0:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d00403d4:	7de0      	ldrb	r0, [r4, #23]
d00403d6:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d00403da:	2001      	movs	r0, #1
d00403dc:	68ad      	ldr	r5, [r5, #8]
d00403de:	68ed      	ldr	r5, [r5, #12]
d00403e0:	47a8      	blx	r5
d00403e2:	7d23      	ldrb	r3, [r4, #20]
d00403e4:	7d62      	ldrb	r2, [r4, #21]
d00403e6:	f64a 4144 	movw	r1, #44100	; 0xac44
d00403ea:	7da5      	ldrb	r5, [r4, #22]
d00403ec:	2001      	movs	r0, #1
d00403ee:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00403f2:	7de2      	ldrb	r2, [r4, #23]
d00403f4:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00403f8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00403fc:	689b      	ldr	r3, [r3, #8]
d00403fe:	691b      	ldr	r3, [r3, #16]
d0040400:	4798      	blx	r3
d0040402:	7d23      	ldrb	r3, [r4, #20]
d0040404:	7d62      	ldrb	r2, [r4, #21]
d0040406:	21ff      	movs	r1, #255	; 0xff
d0040408:	7da5      	ldrb	r5, [r4, #22]
d004040a:	2001      	movs	r0, #1
d004040c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040410:	7de2      	ldrb	r2, [r4, #23]
d0040412:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040416:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004041a:	689b      	ldr	r3, [r3, #8]
d004041c:	695b      	ldr	r3, [r3, #20]
d004041e:	4798      	blx	r3
d0040420:	7d23      	ldrb	r3, [r4, #20]
d0040422:	7d62      	ldrb	r2, [r4, #21]
d0040424:	2100      	movs	r1, #0
d0040426:	7da5      	ldrb	r5, [r4, #22]
d0040428:	2001      	movs	r0, #1
d004042a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004042e:	7de2      	ldrb	r2, [r4, #23]
d0040430:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040434:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040438:	689b      	ldr	r3, [r3, #8]
d004043a:	699b      	ldr	r3, [r3, #24]
d004043c:	4798      	blx	r3
d004043e:	7d23      	ldrb	r3, [r4, #20]
d0040440:	7d65      	ldrb	r5, [r4, #21]
d0040442:	f241 1251 	movw	r2, #4433	; 0x1151
d0040446:	7da0      	ldrb	r0, [r4, #22]
d0040448:	21c8      	movs	r1, #200	; 0xc8
d004044a:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d004044e:	7de5      	ldrb	r5, [r4, #23]
d0040450:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0040454:	2001      	movs	r0, #1
d0040456:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d004045a:	689b      	ldr	r3, [r3, #8]
d004045c:	69db      	ldr	r3, [r3, #28]
d004045e:	4798      	blx	r3
d0040460:	7d23      	ldrb	r3, [r4, #20]
d0040462:	7d62      	ldrb	r2, [r4, #21]
d0040464:	2100      	movs	r1, #0
d0040466:	7da5      	ldrb	r5, [r4, #22]
d0040468:	2001      	movs	r0, #1
d004046a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004046e:	7de2      	ldrb	r2, [r4, #23]
d0040470:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040474:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040478:	689b      	ldr	r3, [r3, #8]
d004047a:	6a1b      	ldr	r3, [r3, #32]
d004047c:	4798      	blx	r3
d004047e:	4639      	mov	r1, r7
d0040480:	484e      	ldr	r0, [pc, #312]	; (d00405bc <loadSounds+0x2e4>)
d0040482:	f7ff fea1 	bl	d00401c8 <LoadSFX>
d0040486:	7d26      	ldrb	r6, [r4, #20]
d0040488:	7d61      	ldrb	r1, [r4, #21]
d004048a:	4605      	mov	r5, r0
d004048c:	7da2      	ldrb	r2, [r4, #22]
d004048e:	2300      	movs	r3, #0
d0040490:	ea46 2601 	orr.w	r6, r6, r1, lsl #8
d0040494:	7de0      	ldrb	r0, [r4, #23]
d0040496:	6839      	ldr	r1, [r7, #0]
d0040498:	ea46 4602 	orr.w	r6, r6, r2, lsl #16
d004049c:	462a      	mov	r2, r5
d004049e:	4f48      	ldr	r7, [pc, #288]	; (d00405c0 <loadSounds+0x2e8>)
d00404a0:	ea46 6600 	orr.w	r6, r6, r0, lsl #24
d00404a4:	2002      	movs	r0, #2
d00404a6:	68b6      	ldr	r6, [r6, #8]
d00404a8:	68f6      	ldr	r6, [r6, #12]
d00404aa:	47b0      	blx	r6
d00404ac:	7d23      	ldrb	r3, [r4, #20]
d00404ae:	7d62      	ldrb	r2, [r4, #21]
d00404b0:	f64a 4144 	movw	r1, #44100	; 0xac44
d00404b4:	7da0      	ldrb	r0, [r4, #22]
d00404b6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00404ba:	7de2      	ldrb	r2, [r4, #23]
d00404bc:	4e41      	ldr	r6, [pc, #260]	; (d00405c4 <loadSounds+0x2ec>)
d00404be:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00404c2:	2002      	movs	r0, #2
d00404c4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00404c8:	689b      	ldr	r3, [r3, #8]
d00404ca:	691b      	ldr	r3, [r3, #16]
d00404cc:	4798      	blx	r3
d00404ce:	7d23      	ldrb	r3, [r4, #20]
d00404d0:	7d62      	ldrb	r2, [r4, #21]
d00404d2:	f44f 71be 	mov.w	r1, #380	; 0x17c
d00404d6:	2002      	movs	r0, #2
d00404d8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00404dc:	7da2      	ldrb	r2, [r4, #22]
d00404de:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00404e2:	7de2      	ldrb	r2, [r4, #23]
d00404e4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00404e8:	689b      	ldr	r3, [r3, #8]
d00404ea:	695b      	ldr	r3, [r3, #20]
d00404ec:	4798      	blx	r3
d00404ee:	7d23      	ldrb	r3, [r4, #20]
d00404f0:	7d62      	ldrb	r2, [r4, #21]
d00404f2:	2100      	movs	r1, #0
d00404f4:	2002      	movs	r0, #2
d00404f6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00404fa:	7da2      	ldrb	r2, [r4, #22]
d00404fc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040500:	7de2      	ldrb	r2, [r4, #23]
d0040502:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040506:	689b      	ldr	r3, [r3, #8]
d0040508:	699b      	ldr	r3, [r3, #24]
d004050a:	4798      	blx	r3
d004050c:	7d21      	ldrb	r1, [r4, #20]
d004050e:	7d63      	ldrb	r3, [r4, #21]
d0040510:	f1a5 022c 	sub.w	r2, r5, #44	; 0x2c
d0040514:	7da5      	ldrb	r5, [r4, #22]
d0040516:	ea41 2303 	orr.w	r3, r1, r3, lsl #8
d004051a:	7de0      	ldrb	r0, [r4, #23]
d004051c:	21c8      	movs	r1, #200	; 0xc8
d004051e:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040522:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d0040526:	2002      	movs	r0, #2
d0040528:	689b      	ldr	r3, [r3, #8]
d004052a:	69db      	ldr	r3, [r3, #28]
d004052c:	4798      	blx	r3
d004052e:	7d23      	ldrb	r3, [r4, #20]
d0040530:	7d62      	ldrb	r2, [r4, #21]
d0040532:	2101      	movs	r1, #1
d0040534:	7da0      	ldrb	r0, [r4, #22]
d0040536:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004053a:	7de2      	ldrb	r2, [r4, #23]
d004053c:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0040540:	2002      	movs	r0, #2
d0040542:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040546:	689b      	ldr	r3, [r3, #8]
d0040548:	6a1b      	ldr	r3, [r3, #32]
d004054a:	4798      	blx	r3
d004054c:	4649      	mov	r1, r9
d004054e:	481e      	ldr	r0, [pc, #120]	; (d00405c8 <loadSounds+0x2f0>)
d0040550:	f7ff fe3a 	bl	d00401c8 <LoadSFX>
d0040554:	7d25      	ldrb	r5, [r4, #20]
d0040556:	f894 c015 	ldrb.w	ip, [r4, #21]
d004055a:	4602      	mov	r2, r0
d004055c:	7da0      	ldrb	r0, [r4, #22]
d004055e:	2300      	movs	r3, #0
d0040560:	ea45 250c 	orr.w	r5, r5, ip, lsl #8
d0040564:	f8d9 1000 	ldr.w	r1, [r9]
d0040568:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d004056c:	7de0      	ldrb	r0, [r4, #23]
d004056e:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d0040572:	2003      	movs	r0, #3
d0040574:	68ad      	ldr	r5, [r5, #8]
d0040576:	68ed      	ldr	r5, [r5, #12]
d0040578:	47a8      	blx	r5
d004057a:	7d23      	ldrb	r3, [r4, #20]
d004057c:	7d62      	ldrb	r2, [r4, #21]
d004057e:	f646 5160 	movw	r1, #28000	; 0x6d60
d0040582:	7da0      	ldrb	r0, [r4, #22]
d0040584:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040588:	7de2      	ldrb	r2, [r4, #23]
d004058a:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004058e:	2003      	movs	r0, #3
d0040590:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040594:	689b      	ldr	r3, [r3, #8]
d0040596:	691b      	ldr	r3, [r3, #16]
d0040598:	4798      	blx	r3
d004059a:	7d23      	ldrb	r3, [r4, #20]
d004059c:	7d62      	ldrb	r2, [r4, #21]
d004059e:	218c      	movs	r1, #140	; 0x8c
d00405a0:	7da0      	ldrb	r0, [r4, #22]
d00405a2:	e017      	b.n	d00405d4 <loadSounds+0x2fc>
d00405a4:	d00444a0 	.word	0xd00444a0
d00405a8:	2001f000 	.word	0x2001f000
d00405ac:	d00438d4 	.word	0xd00438d4
d00405b0:	d0044440 	.word	0xd0044440
d00405b4:	d0044480 	.word	0xd0044480
d00405b8:	d00438e8 	.word	0xd00438e8
d00405bc:	d00438f8 	.word	0xd00438f8
d00405c0:	d0044460 	.word	0xd0044460
d00405c4:	d00444c0 	.word	0xd00444c0
d00405c8:	d0043908 	.word	0xd0043908
d00405cc:	d00444e0 	.word	0xd00444e0
d00405d0:	d0044500 	.word	0xd0044500
d00405d4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00405d8:	7de2      	ldrb	r2, [r4, #23]
d00405da:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00405de:	2003      	movs	r0, #3
d00405e0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00405e4:	689b      	ldr	r3, [r3, #8]
d00405e6:	695b      	ldr	r3, [r3, #20]
d00405e8:	4798      	blx	r3
d00405ea:	7d23      	ldrb	r3, [r4, #20]
d00405ec:	7d62      	ldrb	r2, [r4, #21]
d00405ee:	2100      	movs	r1, #0
d00405f0:	7da0      	ldrb	r0, [r4, #22]
d00405f2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00405f6:	7de2      	ldrb	r2, [r4, #23]
d00405f8:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00405fc:	2003      	movs	r0, #3
d00405fe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040602:	689b      	ldr	r3, [r3, #8]
d0040604:	699b      	ldr	r3, [r3, #24]
d0040606:	4798      	blx	r3
d0040608:	7d23      	ldrb	r3, [r4, #20]
d004060a:	7d60      	ldrb	r0, [r4, #21]
d004060c:	f642 52ef 	movw	r2, #11759	; 0x2def
d0040610:	7da1      	ldrb	r1, [r4, #22]
d0040612:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d0040616:	7de0      	ldrb	r0, [r4, #23]
d0040618:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004061c:	f44f 71de 	mov.w	r1, #444	; 0x1bc
d0040620:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d0040624:	2003      	movs	r0, #3
d0040626:	689b      	ldr	r3, [r3, #8]
d0040628:	69db      	ldr	r3, [r3, #28]
d004062a:	4798      	blx	r3
d004062c:	7d23      	ldrb	r3, [r4, #20]
d004062e:	7d62      	ldrb	r2, [r4, #21]
d0040630:	2101      	movs	r1, #1
d0040632:	7da0      	ldrb	r0, [r4, #22]
d0040634:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040638:	7de2      	ldrb	r2, [r4, #23]
d004063a:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004063e:	2003      	movs	r0, #3
d0040640:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040644:	689b      	ldr	r3, [r3, #8]
d0040646:	6a1b      	ldr	r3, [r3, #32]
d0040648:	4798      	blx	r3
d004064a:	4641      	mov	r1, r8
d004064c:	487e      	ldr	r0, [pc, #504]	; (d0040848 <loadSounds+0x570>)
d004064e:	f7ff fdbb 	bl	d00401c8 <LoadSFX>
d0040652:	7d25      	ldrb	r5, [r4, #20]
d0040654:	f894 c015 	ldrb.w	ip, [r4, #21]
d0040658:	4602      	mov	r2, r0
d004065a:	7da0      	ldrb	r0, [r4, #22]
d004065c:	2300      	movs	r3, #0
d004065e:	ea45 250c 	orr.w	r5, r5, ip, lsl #8
d0040662:	f8d8 1000 	ldr.w	r1, [r8]
d0040666:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d004066a:	7de0      	ldrb	r0, [r4, #23]
d004066c:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d0040670:	2004      	movs	r0, #4
d0040672:	68ad      	ldr	r5, [r5, #8]
d0040674:	68ed      	ldr	r5, [r5, #12]
d0040676:	47a8      	blx	r5
d0040678:	7d23      	ldrb	r3, [r4, #20]
d004067a:	7d62      	ldrb	r2, [r4, #21]
d004067c:	f646 5160 	movw	r1, #28000	; 0x6d60
d0040680:	7da5      	ldrb	r5, [r4, #22]
d0040682:	2004      	movs	r0, #4
d0040684:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040688:	7de2      	ldrb	r2, [r4, #23]
d004068a:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004068e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040692:	689b      	ldr	r3, [r3, #8]
d0040694:	691b      	ldr	r3, [r3, #16]
d0040696:	4798      	blx	r3
d0040698:	7d23      	ldrb	r3, [r4, #20]
d004069a:	7d62      	ldrb	r2, [r4, #21]
d004069c:	f44f 71af 	mov.w	r1, #350	; 0x15e
d00406a0:	7da5      	ldrb	r5, [r4, #22]
d00406a2:	2004      	movs	r0, #4
d00406a4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00406a8:	7de2      	ldrb	r2, [r4, #23]
d00406aa:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00406ae:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00406b2:	689b      	ldr	r3, [r3, #8]
d00406b4:	695b      	ldr	r3, [r3, #20]
d00406b6:	4798      	blx	r3
d00406b8:	7d23      	ldrb	r3, [r4, #20]
d00406ba:	7d62      	ldrb	r2, [r4, #21]
d00406bc:	2100      	movs	r1, #0
d00406be:	7da5      	ldrb	r5, [r4, #22]
d00406c0:	2004      	movs	r0, #4
d00406c2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00406c6:	7de2      	ldrb	r2, [r4, #23]
d00406c8:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00406cc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00406d0:	689b      	ldr	r3, [r3, #8]
d00406d2:	699b      	ldr	r3, [r3, #24]
d00406d4:	4798      	blx	r3
d00406d6:	7d23      	ldrb	r3, [r4, #20]
d00406d8:	7d62      	ldrb	r2, [r4, #21]
d00406da:	2100      	movs	r1, #0
d00406dc:	7da5      	ldrb	r5, [r4, #22]
d00406de:	2004      	movs	r0, #4
d00406e0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00406e4:	7de2      	ldrb	r2, [r4, #23]
d00406e6:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00406ea:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00406ee:	689b      	ldr	r3, [r3, #8]
d00406f0:	6a1b      	ldr	r3, [r3, #32]
d00406f2:	4798      	blx	r3
d00406f4:	4639      	mov	r1, r7
d00406f6:	4855      	ldr	r0, [pc, #340]	; (d004084c <loadSounds+0x574>)
d00406f8:	f7ff fd66 	bl	d00401c8 <LoadSFX>
d00406fc:	7d25      	ldrb	r5, [r4, #20]
d00406fe:	7d61      	ldrb	r1, [r4, #21]
d0040700:	4602      	mov	r2, r0
d0040702:	7da0      	ldrb	r0, [r4, #22]
d0040704:	2300      	movs	r3, #0
d0040706:	ea45 2501 	orr.w	r5, r5, r1, lsl #8
d004070a:	f894 c017 	ldrb.w	ip, [r4, #23]
d004070e:	6839      	ldr	r1, [r7, #0]
d0040710:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d0040714:	2005      	movs	r0, #5
d0040716:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d004071a:	68ad      	ldr	r5, [r5, #8]
d004071c:	68ed      	ldr	r5, [r5, #12]
d004071e:	47a8      	blx	r5
d0040720:	7d23      	ldrb	r3, [r4, #20]
d0040722:	7d62      	ldrb	r2, [r4, #21]
d0040724:	f44f 41fa 	mov.w	r1, #32000	; 0x7d00
d0040728:	7da5      	ldrb	r5, [r4, #22]
d004072a:	2005      	movs	r0, #5
d004072c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040730:	7de2      	ldrb	r2, [r4, #23]
d0040732:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040736:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004073a:	689b      	ldr	r3, [r3, #8]
d004073c:	691b      	ldr	r3, [r3, #16]
d004073e:	4798      	blx	r3
d0040740:	7d23      	ldrb	r3, [r4, #20]
d0040742:	7d62      	ldrb	r2, [r4, #21]
d0040744:	f44f 71e1 	mov.w	r1, #450	; 0x1c2
d0040748:	7da5      	ldrb	r5, [r4, #22]
d004074a:	2005      	movs	r0, #5
d004074c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040750:	7de2      	ldrb	r2, [r4, #23]
d0040752:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040756:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004075a:	689b      	ldr	r3, [r3, #8]
d004075c:	695b      	ldr	r3, [r3, #20]
d004075e:	4798      	blx	r3
d0040760:	7d23      	ldrb	r3, [r4, #20]
d0040762:	7d62      	ldrb	r2, [r4, #21]
d0040764:	2100      	movs	r1, #0
d0040766:	7da5      	ldrb	r5, [r4, #22]
d0040768:	2005      	movs	r0, #5
d004076a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004076e:	7de2      	ldrb	r2, [r4, #23]
d0040770:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040774:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040778:	689b      	ldr	r3, [r3, #8]
d004077a:	699b      	ldr	r3, [r3, #24]
d004077c:	4798      	blx	r3
d004077e:	7d23      	ldrb	r3, [r4, #20]
d0040780:	7d62      	ldrb	r2, [r4, #21]
d0040782:	2100      	movs	r1, #0
d0040784:	7da5      	ldrb	r5, [r4, #22]
d0040786:	2005      	movs	r0, #5
d0040788:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004078c:	7de2      	ldrb	r2, [r4, #23]
d004078e:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040792:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040796:	689b      	ldr	r3, [r3, #8]
d0040798:	6a1b      	ldr	r3, [r3, #32]
d004079a:	4798      	blx	r3
d004079c:	4631      	mov	r1, r6
d004079e:	482c      	ldr	r0, [pc, #176]	; (d0040850 <loadSounds+0x578>)
d00407a0:	f7ff fd12 	bl	d00401c8 <LoadSFX>
d00407a4:	7d25      	ldrb	r5, [r4, #20]
d00407a6:	7d61      	ldrb	r1, [r4, #21]
d00407a8:	4602      	mov	r2, r0
d00407aa:	f894 c016 	ldrb.w	ip, [r4, #22]
d00407ae:	2300      	movs	r3, #0
d00407b0:	ea45 2501 	orr.w	r5, r5, r1, lsl #8
d00407b4:	7de7      	ldrb	r7, [r4, #23]
d00407b6:	6831      	ldr	r1, [r6, #0]
d00407b8:	2006      	movs	r0, #6
d00407ba:	ea45 450c 	orr.w	r5, r5, ip, lsl #16
d00407be:	ea45 6507 	orr.w	r5, r5, r7, lsl #24
d00407c2:	68ad      	ldr	r5, [r5, #8]
d00407c4:	68ed      	ldr	r5, [r5, #12]
d00407c6:	47a8      	blx	r5
d00407c8:	7d23      	ldrb	r3, [r4, #20]
d00407ca:	7d62      	ldrb	r2, [r4, #21]
d00407cc:	f646 5160 	movw	r1, #28000	; 0x6d60
d00407d0:	7da5      	ldrb	r5, [r4, #22]
d00407d2:	2006      	movs	r0, #6
d00407d4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00407d8:	7de2      	ldrb	r2, [r4, #23]
d00407da:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00407de:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00407e2:	689b      	ldr	r3, [r3, #8]
d00407e4:	691b      	ldr	r3, [r3, #16]
d00407e6:	4798      	blx	r3
d00407e8:	7d23      	ldrb	r3, [r4, #20]
d00407ea:	7d62      	ldrb	r2, [r4, #21]
d00407ec:	f44f 71e1 	mov.w	r1, #450	; 0x1c2
d00407f0:	7da5      	ldrb	r5, [r4, #22]
d00407f2:	2006      	movs	r0, #6
d00407f4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00407f8:	7de2      	ldrb	r2, [r4, #23]
d00407fa:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00407fe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040802:	689b      	ldr	r3, [r3, #8]
d0040804:	695b      	ldr	r3, [r3, #20]
d0040806:	4798      	blx	r3
d0040808:	7d23      	ldrb	r3, [r4, #20]
d004080a:	7d62      	ldrb	r2, [r4, #21]
d004080c:	2100      	movs	r1, #0
d004080e:	7da5      	ldrb	r5, [r4, #22]
d0040810:	2006      	movs	r0, #6
d0040812:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040816:	7de2      	ldrb	r2, [r4, #23]
d0040818:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004081c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040820:	689b      	ldr	r3, [r3, #8]
d0040822:	699b      	ldr	r3, [r3, #24]
d0040824:	4798      	blx	r3
d0040826:	7d23      	ldrb	r3, [r4, #20]
d0040828:	7d62      	ldrb	r2, [r4, #21]
d004082a:	2100      	movs	r1, #0
d004082c:	7da5      	ldrb	r5, [r4, #22]
d004082e:	2006      	movs	r0, #6
d0040830:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040834:	7de2      	ldrb	r2, [r4, #23]
d0040836:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004083a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004083e:	689b      	ldr	r3, [r3, #8]
d0040840:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0040844:	6a1b      	ldr	r3, [r3, #32]
d0040846:	4718      	bx	r3
d0040848:	d004391c 	.word	0xd004391c
d004084c:	d0043930 	.word	0xd0043930
d0040850:	d0043948 	.word	0xd0043948

d0040854 <MusicPlay>:
d0040854:	b430      	push	{r4, r5}
d0040856:	b980      	cbnz	r0, d004087a <MusicPlay+0x26>
d0040858:	4601      	mov	r1, r0
d004085a:	4a0c      	ldr	r2, [pc, #48]	; (d004088c <MusicPlay+0x38>)
d004085c:	480c      	ldr	r0, [pc, #48]	; (d0040890 <MusicPlay+0x3c>)
d004085e:	7d13      	ldrb	r3, [r2, #20]
d0040860:	7d55      	ldrb	r5, [r2, #21]
d0040862:	7d94      	ldrb	r4, [r2, #22]
d0040864:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d0040868:	7dd2      	ldrb	r2, [r2, #23]
d004086a:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d004086e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040872:	685b      	ldr	r3, [r3, #4]
d0040874:	bc30      	pop	{r4, r5}
d0040876:	681b      	ldr	r3, [r3, #0]
d0040878:	4718      	bx	r3
d004087a:	2801      	cmp	r0, #1
d004087c:	d103      	bne.n	d0040886 <MusicPlay+0x32>
d004087e:	4a03      	ldr	r2, [pc, #12]	; (d004088c <MusicPlay+0x38>)
d0040880:	2100      	movs	r1, #0
d0040882:	4804      	ldr	r0, [pc, #16]	; (d0040894 <MusicPlay+0x40>)
d0040884:	e7eb      	b.n	d004085e <MusicPlay+0xa>
d0040886:	bc30      	pop	{r4, r5}
d0040888:	4770      	bx	lr
d004088a:	bf00      	nop
d004088c:	2001f000 	.word	0x2001f000
d0040890:	d0043958 	.word	0xd0043958
d0040894:	d0043968 	.word	0xd0043968

d0040898 <ShieldBounceAsteroid>:
d0040898:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d004089a:	4b9a      	ldr	r3, [pc, #616]	; (d0040b04 <ShieldBounceAsteroid+0x26c>)
d004089c:	ed2d 8b06 	vpush	{d8-d10}
d00408a0:	781b      	ldrb	r3, [r3, #0]
d00408a2:	2b00      	cmp	r3, #0
d00408a4:	f000 8100 	beq.w	d0040aa8 <ShieldBounceAsteroid+0x210>
d00408a8:	f9b0 3002 	ldrsh.w	r3, [r0, #2]
d00408ac:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d00408b0:	4f95      	ldr	r7, [pc, #596]	; (d0040b08 <ShieldBounceAsteroid+0x270>)
d00408b2:	4604      	mov	r4, r0
d00408b4:	ee08 3a90 	vmov	s17, r3
d00408b8:	f9b0 300a 	ldrsh.w	r3, [r0, #10]
d00408bc:	eddf 5a93 	vldr	s11, [pc, #588]	; d0040b0c <ShieldBounceAsteroid+0x274>
d00408c0:	ed97 7a00 	vldr	s14, [r7]
d00408c4:	ee06 3a90 	vmov	s13, r3
d00408c8:	4e91      	ldr	r6, [pc, #580]	; (d0040b10 <ShieldBounceAsteroid+0x278>)
d00408ca:	eef8 8ae8 	vcvt.f32.s32	s17, s17
d00408ce:	f9b0 3000 	ldrsh.w	r3, [r0]
d00408d2:	ee37 7a25 	vadd.f32	s14, s14, s11
d00408d6:	edd6 7a00 	vldr	s15, [r6]
d00408da:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d00408de:	ee08 3a10 	vmov	s16, r3
d00408e2:	f9b0 3008 	ldrsh.w	r3, [r0, #8]
d00408e6:	ee77 8a68 	vsub.f32	s17, s14, s17
d00408ea:	eddf 9a8a 	vldr	s19, [pc, #552]	; d0040b14 <ShieldBounceAsteroid+0x27c>
d00408ee:	ee77 7aa5 	vadd.f32	s15, s15, s11
d00408f2:	ee07 3a10 	vmov	s14, r3
d00408f6:	eeb8 8ac8 	vcvt.f32.s32	s16, s16
d00408fa:	ed9f 9a87 	vldr	s18, [pc, #540]	; d0040b18 <ShieldBounceAsteroid+0x280>
d00408fe:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0040902:	eee6 8ac6 	vfms.f32	s17, s13, s12
d0040906:	ee37 8ac8 	vsub.f32	s16, s15, s16
d004090a:	ee67 9a29 	vmul.f32	s19, s14, s19
d004090e:	eea7 8a46 	vfms.f32	s16, s14, s12
d0040912:	ee39 9a89 	vadd.f32	s18, s19, s18
d0040916:	ee28 aaa8 	vmul.f32	s20, s17, s17
d004091a:	ee69 7a09 	vmul.f32	s15, s18, s18
d004091e:	eea8 aa08 	vfma.f32	s20, s16, s16
d0040922:	eef4 7aca 	vcmpe.f32	s15, s20
d0040926:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004092a:	f240 80bd 	bls.w	d0040aa8 <ShieldBounceAsteroid+0x210>
d004092e:	4d7b      	ldr	r5, [pc, #492]	; (d0040b1c <ShieldBounceAsteroid+0x284>)
d0040930:	2006      	movs	r0, #6
d0040932:	7d2b      	ldrb	r3, [r5, #20]
d0040934:	7d6a      	ldrb	r2, [r5, #21]
d0040936:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004093a:	7daa      	ldrb	r2, [r5, #22]
d004093c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040940:	7dea      	ldrb	r2, [r5, #23]
d0040942:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040946:	689b      	ldr	r3, [r3, #8]
d0040948:	689b      	ldr	r3, [r3, #8]
d004094a:	4798      	blx	r3
d004094c:	7d2b      	ldrb	r3, [r5, #20]
d004094e:	7d6a      	ldrb	r2, [r5, #21]
d0040950:	2006      	movs	r0, #6
d0040952:	7da9      	ldrb	r1, [r5, #22]
d0040954:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040958:	7dea      	ldrb	r2, [r5, #23]
d004095a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004095e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040962:	689b      	ldr	r3, [r3, #8]
d0040964:	685b      	ldr	r3, [r3, #4]
d0040966:	4798      	blx	r3
d0040968:	eddf 7a6d 	vldr	s15, [pc, #436]	; d0040b20 <ShieldBounceAsteroid+0x288>
d004096c:	eeb4 aae7 	vcmpe.f32	s20, s15
d0040970:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040974:	f100 809b 	bmi.w	d0040aae <ShieldBounceAsteroid+0x216>
d0040978:	eef1 7aca 	vsqrt.f32	s15, s20
d004097c:	eddf 3a69 	vldr	s7, [pc, #420]	; d0040b24 <ShieldBounceAsteroid+0x28c>
d0040980:	eec8 4aa7 	vdiv.f32	s9, s17, s15
d0040984:	ee39 9a67 	vsub.f32	s18, s18, s15
d0040988:	ee88 5a27 	vdiv.f32	s10, s16, s15
d004098c:	ee69 3a23 	vmul.f32	s7, s18, s7
d0040990:	ee39 9a63 	vsub.f32	s18, s18, s7
d0040994:	ee63 2aa4 	vmul.f32	s5, s7, s9
d0040998:	ee64 7a89 	vmul.f32	s15, s9, s18
d004099c:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00409a0:	ee29 9a05 	vmul.f32	s18, s18, s10
d00409a4:	ee17 3a90 	vmov	r3, s15
d00409a8:	b299      	uxth	r1, r3
d00409aa:	f9b4 0006 	ldrsh.w	r0, [r4, #6]
d00409ae:	4a5e      	ldr	r2, [pc, #376]	; (d0040b28 <ShieldBounceAsteroid+0x290>)
d00409b0:	ee07 0a90 	vmov	s15, r0
d00409b4:	f9b4 5004 	ldrsh.w	r5, [r4, #4]
d00409b8:	edd2 5a00 	vldr	s11, [r2]
d00409bc:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d00409c0:	ee07 5a90 	vmov	s15, r5
d00409c4:	4b59      	ldr	r3, [pc, #356]	; (d0040b2c <ShieldBounceAsteroid+0x294>)
d00409c6:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d00409ca:	ee75 7ac7 	vsub.f32	s15, s11, s14
d00409ce:	ed93 6a00 	vldr	s12, [r3]
d00409d2:	ee36 4a66 	vsub.f32	s8, s12, s13
d00409d6:	ee67 7aa4 	vmul.f32	s15, s15, s9
d00409da:	eee4 7a05 	vfma.f32	s15, s8, s10
d00409de:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d00409e2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00409e6:	da74      	bge.n	d0040ad2 <ShieldBounceAsteroid+0x23a>
d00409e8:	f894 c00c 	ldrb.w	ip, [r4, #12]
d00409ec:	eef0 1a08 	vmov.f32	s3, #8	; 0x40400000  3.0
d00409f0:	eeb7 3a00 	vmov.f32	s6, #112	; 0x3f800000  1.0
d00409f4:	ee04 ca10 	vmov	s8, ip
d00409f8:	eeb8 2a00 	vmov.f32	s4, #128	; 0xc0000000 -2.0
d00409fc:	eeb1 1a00 	vmov.f32	s2, #16	; 0x40800000  4.0
d0040a00:	eeb8 4a44 	vcvt.f32.u32	s8, s8
d0040a04:	ee67 7a82 	vmul.f32	s15, s15, s4
d0040a08:	ee34 4a21 	vadd.f32	s8, s8, s3
d0040a0c:	eef9 1a00 	vmov.f32	s3, #144	; 0xc0800000 -4.0
d0040a10:	ee83 2a04 	vdiv.f32	s4, s6, s8
d0040a14:	ee32 3a03 	vadd.f32	s6, s4, s6
d0040a18:	ee87 4a83 	vdiv.f32	s8, s15, s6
d0040a1c:	ee64 7a05 	vmul.f32	s15, s8, s10
d0040a20:	ee64 4a24 	vmul.f32	s9, s8, s9
d0040a24:	eee2 6a67 	vfms.f32	s13, s4, s15
d0040a28:	eea2 7a64 	vfms.f32	s14, s4, s9
d0040a2c:	ee75 5aa4 	vadd.f32	s11, s11, s9
d0040a30:	ee36 6a27 	vadd.f32	s12, s12, s15
d0040a34:	fec5 5ac1 	vminnm.f32	s11, s11, s2
d0040a38:	fec5 5aa1 	vmaxnm.f32	s11, s11, s3
d0040a3c:	fefc 6ae6 	vcvta.s32.f32	s13, s13
d0040a40:	edc2 5a00 	vstr	s11, [r2]
d0040a44:	febc 7ac7 	vcvta.s32.f32	s14, s14
d0040a48:	fe86 6a41 	vminnm.f32	s12, s12, s2
d0040a4c:	fe86 6a21 	vmaxnm.f32	s12, s12, s3
d0040a50:	ed83 6a00 	vstr	s12, [r3]
d0040a54:	ee16 2a90 	vmov	r2, s13
d0040a58:	ee17 3a10 	vmov	r3, s14
d0040a5c:	b212      	sxth	r2, r2
d0040a5e:	b21b      	sxth	r3, r3
d0040a60:	b922      	cbnz	r2, d0040a6c <ShieldBounceAsteroid+0x1d4>
d0040a62:	2d00      	cmp	r5, #0
d0040a64:	bfac      	ite	ge
d0040a66:	2201      	movge	r2, #1
d0040a68:	f04f 32ff 	movlt.w	r2, #4294967295	; 0xffffffff
d0040a6c:	b923      	cbnz	r3, d0040a78 <ShieldBounceAsteroid+0x1e0>
d0040a6e:	2800      	cmp	r0, #0
d0040a70:	bfac      	ite	ge
d0040a72:	2301      	movge	r3, #1
d0040a74:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0040a78:	eebd 9ac9 	vcvt.s32.f32	s18, s18
d0040a7c:	edd6 7a00 	vldr	s15, [r6]
d0040a80:	8820      	ldrh	r0, [r4, #0]
d0040a82:	eee5 7a23 	vfma.f32	s15, s10, s7
d0040a86:	80a2      	strh	r2, [r4, #4]
d0040a88:	ee19 2a10 	vmov	r2, s18
d0040a8c:	ed97 7a00 	vldr	s14, [r7]
d0040a90:	80e3      	strh	r3, [r4, #6]
d0040a92:	1a80      	subs	r0, r0, r2
d0040a94:	8862      	ldrh	r2, [r4, #2]
d0040a96:	ee77 2a22 	vadd.f32	s5, s14, s5
d0040a9a:	1a51      	subs	r1, r2, r1
d0040a9c:	edc6 7a00 	vstr	s15, [r6]
d0040aa0:	edc7 2a00 	vstr	s5, [r7]
d0040aa4:	8020      	strh	r0, [r4, #0]
d0040aa6:	8061      	strh	r1, [r4, #2]
d0040aa8:	ecbd 8b06 	vpop	{d8-d10}
d0040aac:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0040aae:	ed9f 9a20 	vldr	s18, [pc, #128]	; d0040b30 <ShieldBounceAsteroid+0x298>
d0040ab2:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0040ab6:	eddf 3a1b 	vldr	s7, [pc, #108]	; d0040b24 <ShieldBounceAsteroid+0x28c>
d0040aba:	2100      	movs	r1, #0
d0040abc:	ee39 9a89 	vadd.f32	s18, s19, s18
d0040ac0:	eddf 4a1c 	vldr	s9, [pc, #112]	; d0040b34 <ShieldBounceAsteroid+0x29c>
d0040ac4:	eef0 2a64 	vmov.f32	s5, s9
d0040ac8:	ee69 3a23 	vmul.f32	s7, s18, s7
d0040acc:	ee39 9a63 	vsub.f32	s18, s18, s7
d0040ad0:	e76b      	b.n	d00409aa <ShieldBounceAsteroid+0x112>
d0040ad2:	edd6 7a00 	vldr	s15, [r6]
d0040ad6:	eebd 9ac9 	vcvt.s32.f32	s18, s18
d0040ada:	ed97 7a00 	vldr	s14, [r7]
d0040ade:	eee5 7a23 	vfma.f32	s15, s10, s7
d0040ae2:	8820      	ldrh	r0, [r4, #0]
d0040ae4:	8863      	ldrh	r3, [r4, #2]
d0040ae6:	ee19 2a10 	vmov	r2, s18
d0040aea:	ee77 2a22 	vadd.f32	s5, s14, s5
d0040aee:	1a82      	subs	r2, r0, r2
d0040af0:	1a59      	subs	r1, r3, r1
d0040af2:	ecbd 8b06 	vpop	{d8-d10}
d0040af6:	edc7 2a00 	vstr	s5, [r7]
d0040afa:	edc6 7a00 	vstr	s15, [r6]
d0040afe:	8022      	strh	r2, [r4, #0]
d0040b00:	8061      	strh	r1, [r4, #2]
d0040b02:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0040b04:	d0044411 	.word	0xd0044411
d0040b08:	d00450ec 	.word	0xd00450ec
d0040b0c:	42000000 	.word	0x42000000
d0040b10:	d00450e8 	.word	0xd00450e8
d0040b14:	3ee66666 	.word	0x3ee66666
d0040b18:	41e66666 	.word	0x41e66666
d0040b1c:	2001f000 	.word	0x2001f000
d0040b20:	358637bd 	.word	0x358637bd
d0040b24:	3f19999a 	.word	0x3f19999a
d0040b28:	d00450e0 	.word	0xd00450e0
d0040b2c:	d00450a0 	.word	0xd00450a0
d0040b30:	41de6666 	.word	0x41de6666
d0040b34:	00000000 	.word	0x00000000

d0040b38 <ShowShield>:
d0040b38:	4a1e      	ldr	r2, [pc, #120]	; (d0040bb4 <ShowShield+0x7c>)
d0040b3a:	eef2 6a00 	vmov.f32	s13, #32	; 0x41000000  8.0
d0040b3e:	4b1e      	ldr	r3, [pc, #120]	; (d0040bb8 <ShowShield+0x80>)
d0040b40:	ed92 7a00 	vldr	s14, [r2]
d0040b44:	edd3 7a00 	vldr	s15, [r3]
d0040b48:	ee37 7a66 	vsub.f32	s14, s14, s13
d0040b4c:	481b      	ldr	r0, [pc, #108]	; (d0040bbc <ShowShield+0x84>)
d0040b4e:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0040b52:	491b      	ldr	r1, [pc, #108]	; (d0040bc0 <ShowShield+0x88>)
d0040b54:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0040b58:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0040b5c:	ee17 3a10 	vmov	r3, s14
d0040b60:	b21a      	sxth	r2, r3
d0040b62:	ee17 3a90 	vmov	r3, s15
d0040b66:	b21b      	sxth	r3, r3
d0040b68:	828a      	strh	r2, [r1, #20]
d0040b6a:	82cb      	strh	r3, [r1, #22]
d0040b6c:	7803      	ldrb	r3, [r0, #0]
d0040b6e:	3301      	adds	r3, #1
d0040b70:	b2db      	uxtb	r3, r3
d0040b72:	7003      	strb	r3, [r0, #0]
d0040b74:	7803      	ldrb	r3, [r0, #0]
d0040b76:	2b01      	cmp	r3, #1
d0040b78:	d909      	bls.n	d0040b8e <ShowShield+0x56>
d0040b7a:	2200      	movs	r2, #0
d0040b7c:	7002      	strb	r2, [r0, #0]
d0040b7e:	7ecb      	ldrb	r3, [r1, #27]
d0040b80:	3301      	adds	r3, #1
d0040b82:	b2db      	uxtb	r3, r3
d0040b84:	76cb      	strb	r3, [r1, #27]
d0040b86:	7ecb      	ldrb	r3, [r1, #27]
d0040b88:	2b07      	cmp	r3, #7
d0040b8a:	d900      	bls.n	d0040b8e <ShowShield+0x56>
d0040b8c:	76ca      	strb	r2, [r1, #27]
d0040b8e:	4a0d      	ldr	r2, [pc, #52]	; (d0040bc4 <ShowShield+0x8c>)
d0040b90:	2002      	movs	r0, #2
d0040b92:	2332      	movs	r3, #50	; 0x32
d0040b94:	7108      	strb	r0, [r1, #4]
d0040b96:	718b      	strb	r3, [r1, #6]
d0040b98:	7b13      	ldrb	r3, [r2, #12]
d0040b9a:	7b50      	ldrb	r0, [r2, #13]
d0040b9c:	7b91      	ldrb	r1, [r2, #14]
d0040b9e:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d0040ba2:	7bd2      	ldrb	r2, [r2, #15]
d0040ba4:	4806      	ldr	r0, [pc, #24]	; (d0040bc0 <ShowShield+0x88>)
d0040ba6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040baa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040bae:	685b      	ldr	r3, [r3, #4]
d0040bb0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0040bb2:	4718      	bx	r3
d0040bb4:	d00450e8 	.word	0xd00450e8
d0040bb8:	d00450ec 	.word	0xd00450ec
d0040bbc:	d0044412 	.word	0xd0044412
d0040bc0:	d0044520 	.word	0xd0044520
d0040bc4:	2001f000 	.word	0x2001f000

d0040bc8 <ShieldON>:
d0040bc8:	b570      	push	{r4, r5, r6, lr}
d0040bca:	4c1f      	ldr	r4, [pc, #124]	; (d0040c48 <ShieldON+0x80>)
d0040bcc:	4e1f      	ldr	r6, [pc, #124]	; (d0040c4c <ShieldON+0x84>)
d0040bce:	7823      	ldrb	r3, [r4, #0]
d0040bd0:	b96b      	cbnz	r3, d0040bee <ShieldON+0x26>
d0040bd2:	7d33      	ldrb	r3, [r6, #20]
d0040bd4:	2003      	movs	r0, #3
d0040bd6:	7d72      	ldrb	r2, [r6, #21]
d0040bd8:	7db1      	ldrb	r1, [r6, #22]
d0040bda:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040bde:	7df2      	ldrb	r2, [r6, #23]
d0040be0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040be4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040be8:	689b      	ldr	r3, [r3, #8]
d0040bea:	685b      	ldr	r3, [r3, #4]
d0040bec:	4798      	blx	r3
d0040bee:	4b18      	ldr	r3, [pc, #96]	; (d0040c50 <ShieldON+0x88>)
d0040bf0:	2201      	movs	r2, #1
d0040bf2:	4918      	ldr	r1, [pc, #96]	; (d0040c54 <ShieldON+0x8c>)
d0040bf4:	f06f 057e 	mvn.w	r5, #126	; 0x7e
d0040bf8:	8a9b      	ldrh	r3, [r3, #20]
d0040bfa:	2003      	movs	r0, #3
d0040bfc:	7022      	strb	r2, [r4, #0]
d0040bfe:	3320      	adds	r3, #32
d0040c00:	7d34      	ldrb	r4, [r6, #20]
d0040c02:	7d72      	ldrb	r2, [r6, #21]
d0040c04:	b21b      	sxth	r3, r3
d0040c06:	ea44 2402 	orr.w	r4, r4, r2, lsl #8
d0040c0a:	7db2      	ldrb	r2, [r6, #22]
d0040c0c:	3bf0      	subs	r3, #240	; 0xf0
d0040c0e:	7df6      	ldrb	r6, [r6, #23]
d0040c10:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
d0040c14:	ebc3 13c3 	rsb	r3, r3, r3, lsl #7
d0040c18:	ea44 6406 	orr.w	r4, r4, r6, lsl #24
d0040c1c:	fb81 c103 	smull	ip, r1, r1, r3
d0040c20:	17da      	asrs	r2, r3, #31
d0040c22:	4419      	add	r1, r3
d0040c24:	68a3      	ldr	r3, [r4, #8]
d0040c26:	ebc2 11e1 	rsb	r1, r2, r1, asr #7
d0040c2a:	699b      	ldr	r3, [r3, #24]
d0040c2c:	b209      	sxth	r1, r1
d0040c2e:	297f      	cmp	r1, #127	; 0x7f
d0040c30:	bfa8      	it	ge
d0040c32:	217f      	movge	r1, #127	; 0x7f
d0040c34:	42a9      	cmp	r1, r5
d0040c36:	bfb8      	it	lt
d0040c38:	4629      	movlt	r1, r5
d0040c3a:	b249      	sxtb	r1, r1
d0040c3c:	4798      	blx	r3
d0040c3e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0040c42:	f7ff bf79 	b.w	d0040b38 <ShowShield>
d0040c46:	bf00      	nop
d0040c48:	d0044411 	.word	0xd0044411
d0040c4c:	2001f000 	.word	0x2001f000
d0040c50:	d00450c0 	.word	0xd00450c0
d0040c54:	88888889 	.word	0x88888889

d0040c58 <ShieldOFF>:
d0040c58:	b538      	push	{r3, r4, r5, lr}
d0040c5a:	4c0b      	ldr	r4, [pc, #44]	; (d0040c88 <ShieldOFF+0x30>)
d0040c5c:	7823      	ldrb	r3, [r4, #0]
d0040c5e:	2b01      	cmp	r3, #1
d0040c60:	d10e      	bne.n	d0040c80 <ShieldOFF+0x28>
d0040c62:	4a0a      	ldr	r2, [pc, #40]	; (d0040c8c <ShieldOFF+0x34>)
d0040c64:	2003      	movs	r0, #3
d0040c66:	7d13      	ldrb	r3, [r2, #20]
d0040c68:	7d55      	ldrb	r5, [r2, #21]
d0040c6a:	7d91      	ldrb	r1, [r2, #22]
d0040c6c:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d0040c70:	7dd2      	ldrb	r2, [r2, #23]
d0040c72:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040c76:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040c7a:	689b      	ldr	r3, [r3, #8]
d0040c7c:	689b      	ldr	r3, [r3, #8]
d0040c7e:	4798      	blx	r3
d0040c80:	2300      	movs	r3, #0
d0040c82:	7023      	strb	r3, [r4, #0]
d0040c84:	bd38      	pop	{r3, r4, r5, pc}
d0040c86:	bf00      	nop
d0040c88:	d0044411 	.word	0xd0044411
d0040c8c:	2001f000 	.word	0x2001f000

d0040c90 <initShip>:
d0040c90:	b430      	push	{r4, r5}
d0040c92:	4a09      	ldr	r2, [pc, #36]	; (d0040cb8 <initShip+0x28>)
d0040c94:	f04f 4086 	mov.w	r0, #1124073472	; 0x43000000
d0040c98:	4c08      	ldr	r4, [pc, #32]	; (d0040cbc <initShip+0x2c>)
d0040c9a:	2300      	movs	r3, #0
d0040c9c:	4908      	ldr	r1, [pc, #32]	; (d0040cc0 <initShip+0x30>)
d0040c9e:	4d09      	ldr	r5, [pc, #36]	; (d0040cc4 <initShip+0x34>)
d0040ca0:	6008      	str	r0, [r1, #0]
d0040ca2:	6014      	str	r4, [r2, #0]
d0040ca4:	2200      	movs	r2, #0
d0040ca6:	4c08      	ldr	r4, [pc, #32]	; (d0040cc8 <initShip+0x38>)
d0040ca8:	4808      	ldr	r0, [pc, #32]	; (d0040ccc <initShip+0x3c>)
d0040caa:	4909      	ldr	r1, [pc, #36]	; (d0040cd0 <initShip+0x40>)
d0040cac:	602a      	str	r2, [r5, #0]
d0040cae:	6022      	str	r2, [r4, #0]
d0040cb0:	700b      	strb	r3, [r1, #0]
d0040cb2:	6003      	str	r3, [r0, #0]
d0040cb4:	bc30      	pop	{r4, r5}
d0040cb6:	4770      	bx	lr
d0040cb8:	d00450e8 	.word	0xd00450e8
d0040cbc:	43500000 	.word	0x43500000
d0040cc0:	d00450ec 	.word	0xd00450ec
d0040cc4:	d00450a0 	.word	0xd00450a0
d0040cc8:	d00450e0 	.word	0xd00450e0
d0040ccc:	d00450e4 	.word	0xd00450e4
d0040cd0:	d0044413 	.word	0xd0044413

d0040cd4 <ShipUpdate>:
d0040cd4:	4a49      	ldr	r2, [pc, #292]	; (d0040dfc <ShipUpdate+0x128>)
d0040cd6:	7813      	ldrb	r3, [r2, #0]
d0040cd8:	3301      	adds	r3, #1
d0040cda:	b25b      	sxtb	r3, r3
d0040cdc:	2b01      	cmp	r3, #1
d0040cde:	7013      	strb	r3, [r2, #0]
d0040ce0:	f340 8089 	ble.w	d0040df6 <ShipUpdate+0x122>
d0040ce4:	2300      	movs	r3, #0
d0040ce6:	06c1      	lsls	r1, r0, #27
d0040ce8:	7013      	strb	r3, [r2, #0]
d0040cea:	4a45      	ldr	r2, [pc, #276]	; (d0040e00 <ShipUpdate+0x12c>)
d0040cec:	6813      	ldr	r3, [r2, #0]
d0040cee:	bf44      	itt	mi
d0040cf0:	f103 33ff 	addmi.w	r3, r3, #4294967295	; 0xffffffff
d0040cf4:	6013      	strmi	r3, [r2, #0]
d0040cf6:	0681      	lsls	r1, r0, #26
d0040cf8:	d501      	bpl.n	d0040cfe <ShipUpdate+0x2a>
d0040cfa:	3301      	adds	r3, #1
d0040cfc:	6013      	str	r3, [r2, #0]
d0040cfe:	2b23      	cmp	r3, #35	; 0x23
d0040d00:	dc5d      	bgt.n	d0040dbe <ShipUpdate+0xea>
d0040d02:	2b00      	cmp	r3, #0
d0040d04:	da02      	bge.n	d0040d0c <ShipUpdate+0x38>
d0040d06:	2123      	movs	r1, #35	; 0x23
d0040d08:	460b      	mov	r3, r1
d0040d0a:	6011      	str	r1, [r2, #0]
d0040d0c:	4a3d      	ldr	r2, [pc, #244]	; (d0040e04 <ShipUpdate+0x130>)
d0040d0e:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
d0040d12:	edd3 7a00 	vldr	s15, [r3]
d0040d16:	ed93 7a01 	vldr	s14, [r3, #4]
d0040d1a:	0743      	lsls	r3, r0, #29
d0040d1c:	d552      	bpl.n	d0040dc4 <ShipUpdate+0xf0>
d0040d1e:	eef5 6a00 	vmov.f32	s13, #80	; 0x3e800000  0.250
d0040d22:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0040d26:	ee67 6a26 	vmul.f32	s13, s14, s13
d0040d2a:	4937      	ldr	r1, [pc, #220]	; (d0040e08 <ShipUpdate+0x134>)
d0040d2c:	eeb3 6a00 	vmov.f32	s12, #48	; 0x41800000  16.0
d0040d30:	4836      	ldr	r0, [pc, #216]	; (d0040e0c <ShipUpdate+0x138>)
d0040d32:	ed91 7a00 	vldr	s14, [r1]
d0040d36:	edd0 5a00 	vldr	s11, [r0]
d0040d3a:	ee37 7a66 	vsub.f32	s14, s14, s13
d0040d3e:	ee77 7aa5 	vadd.f32	s15, s15, s11
d0040d42:	ee67 6a07 	vmul.f32	s13, s14, s14
d0040d46:	eee7 6aa7 	vfma.f32	s13, s15, s15
d0040d4a:	eef4 6ac6 	vcmpe.f32	s13, s12
d0040d4e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040d52:	dd09      	ble.n	d0040d68 <ShipUpdate+0x94>
d0040d54:	eeb1 6ae6 	vsqrt.f32	s12, s13
d0040d58:	eef1 5a00 	vmov.f32	s11, #16	; 0x40800000  4.0
d0040d5c:	eec5 6a86 	vdiv.f32	s13, s11, s12
d0040d60:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0040d64:	ee27 7a26 	vmul.f32	s14, s14, s13
d0040d68:	4a29      	ldr	r2, [pc, #164]	; (d0040e10 <ShipUpdate+0x13c>)
d0040d6a:	ed9f 5a2a 	vldr	s10, [pc, #168]	; d0040e14 <ShipUpdate+0x140>
d0040d6e:	ed92 6a00 	vldr	s12, [r2]
d0040d72:	4b29      	ldr	r3, [pc, #164]	; (d0040e18 <ShipUpdate+0x144>)
d0040d74:	ee37 6a86 	vadd.f32	s12, s15, s12
d0040d78:	eddf 5a28 	vldr	s11, [pc, #160]	; d0040e1c <ShipUpdate+0x148>
d0040d7c:	edd3 6a00 	vldr	s13, [r3]
d0040d80:	ee67 7aa5 	vmul.f32	s15, s15, s11
d0040d84:	eeb4 6ac5 	vcmpe.f32	s12, s10
d0040d88:	ed82 6a00 	vstr	s12, [r2]
d0040d8c:	ee77 6a26 	vadd.f32	s13, s14, s13
d0040d90:	ee27 7a25 	vmul.f32	s14, s14, s11
d0040d94:	edc0 7a00 	vstr	s15, [r0]
d0040d98:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040d9c:	edc3 6a00 	vstr	s13, [r3]
d0040da0:	ed81 7a00 	vstr	s14, [r1]
d0040da4:	d51d      	bpl.n	d0040de2 <ShipUpdate+0x10e>
d0040da6:	491e      	ldr	r1, [pc, #120]	; (d0040e20 <ShipUpdate+0x14c>)
d0040da8:	6011      	str	r1, [r2, #0]
d0040daa:	eddf 7a1a 	vldr	s15, [pc, #104]	; d0040e14 <ShipUpdate+0x140>
d0040dae:	eef4 6ae7 	vcmpe.f32	s13, s15
d0040db2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040db6:	d50a      	bpl.n	d0040dce <ShipUpdate+0xfa>
d0040db8:	4a1a      	ldr	r2, [pc, #104]	; (d0040e24 <ShipUpdate+0x150>)
d0040dba:	601a      	str	r2, [r3, #0]
d0040dbc:	4770      	bx	lr
d0040dbe:	2300      	movs	r3, #0
d0040dc0:	6013      	str	r3, [r2, #0]
d0040dc2:	e7a3      	b.n	d0040d0c <ShipUpdate+0x38>
d0040dc4:	eddf 6a18 	vldr	s13, [pc, #96]	; d0040e28 <ShipUpdate+0x154>
d0040dc8:	eef0 7a66 	vmov.f32	s15, s13
d0040dcc:	e7ad      	b.n	d0040d2a <ShipUpdate+0x56>
d0040dce:	ed9f 7a17 	vldr	s14, [pc, #92]	; d0040e2c <ShipUpdate+0x158>
d0040dd2:	eef4 6ac7 	vcmpe.f32	s13, s14
d0040dd6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040dda:	bfc8      	it	gt
d0040ddc:	edc3 7a00 	vstrgt	s15, [r3]
d0040de0:	4770      	bx	lr
d0040de2:	eddf 7a13 	vldr	s15, [pc, #76]	; d0040e30 <ShipUpdate+0x15c>
d0040de6:	eeb4 6ae7 	vcmpe.f32	s12, s15
d0040dea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040dee:	bfc8      	it	gt
d0040df0:	ed82 5a00 	vstrgt	s10, [r2]
d0040df4:	e7d9      	b.n	d0040daa <ShipUpdate+0xd6>
d0040df6:	4b02      	ldr	r3, [pc, #8]	; (d0040e00 <ShipUpdate+0x12c>)
d0040df8:	681b      	ldr	r3, [r3, #0]
d0040dfa:	e787      	b.n	d0040d0c <ShipUpdate+0x38>
d0040dfc:	d0044413 	.word	0xd0044413
d0040e00:	d00450e4 	.word	0xd00450e4
d0040e04:	d00437b4 	.word	0xd00437b4
d0040e08:	d00450e0 	.word	0xd00450e0
d0040e0c:	d00450a0 	.word	0xd00450a0
d0040e10:	d00450e8 	.word	0xd00450e8
d0040e14:	c2800000 	.word	0xc2800000
d0040e18:	d00450ec 	.word	0xd00450ec
d0040e1c:	3f7d70a4 	.word	0x3f7d70a4
d0040e20:	43f00000 	.word	0x43f00000
d0040e24:	43a00000 	.word	0x43a00000
d0040e28:	00000000 	.word	0x00000000
d0040e2c:	43a00000 	.word	0x43a00000
d0040e30:	43f00000 	.word	0x43f00000

d0040e34 <initBullets>:
d0040e34:	4b0a      	ldr	r3, [pc, #40]	; (d0040e60 <initBullets+0x2c>)
d0040e36:	2200      	movs	r2, #0
d0040e38:	f503 7160 	add.w	r1, r3, #896	; 0x380
d0040e3c:	601a      	str	r2, [r3, #0]
d0040e3e:	331c      	adds	r3, #28
d0040e40:	f843 2c18 	str.w	r2, [r3, #-24]
d0040e44:	f843 2c14 	str.w	r2, [r3, #-20]
d0040e48:	f843 2c10 	str.w	r2, [r3, #-16]
d0040e4c:	f843 2c0c 	str.w	r2, [r3, #-12]
d0040e50:	f843 2c08 	str.w	r2, [r3, #-8]
d0040e54:	f843 2c04 	str.w	r2, [r3, #-4]
d0040e58:	428b      	cmp	r3, r1
d0040e5a:	d1ef      	bne.n	d0040e3c <initBullets+0x8>
d0040e5c:	4770      	bx	lr
d0040e5e:	bf00      	nop
d0040e60:	d0044544 	.word	0xd0044544

d0040e64 <fireBullet>:
d0040e64:	4b55      	ldr	r3, [pc, #340]	; (d0040fbc <fireBullet+0x158>)
d0040e66:	681b      	ldr	r3, [r3, #0]
d0040e68:	1e59      	subs	r1, r3, #1
d0040e6a:	1c5a      	adds	r2, r3, #1
d0040e6c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0040e70:	2900      	cmp	r1, #0
d0040e72:	b084      	sub	sp, #16
d0040e74:	9302      	str	r3, [sp, #8]
d0040e76:	9101      	str	r1, [sp, #4]
d0040e78:	9203      	str	r2, [sp, #12]
d0040e7a:	da01      	bge.n	d0040e80 <fireBullet+0x1c>
d0040e7c:	2323      	movs	r3, #35	; 0x23
d0040e7e:	9301      	str	r3, [sp, #4]
d0040e80:	2a23      	cmp	r2, #35	; 0x23
d0040e82:	dd01      	ble.n	d0040e88 <fireBullet+0x24>
d0040e84:	2300      	movs	r3, #0
d0040e86:	9303      	str	r3, [sp, #12]
d0040e88:	eef2 5a00 	vmov.f32	s11, #32	; 0x41000000  8.0
d0040e8c:	ae01      	add	r6, sp, #4
d0040e8e:	eeb3 6a06 	vmov.f32	s12, #54	; 0x41b00000  22.0
d0040e92:	f10d 0c10 	add.w	ip, sp, #16
d0040e96:	2700      	movs	r7, #0
d0040e98:	4d49      	ldr	r5, [pc, #292]	; (d0040fc0 <fireBullet+0x15c>)
d0040e9a:	f04f 0811 	mov.w	r8, #17
d0040e9e:	4849      	ldr	r0, [pc, #292]	; (d0040fc4 <fireBullet+0x160>)
d0040ea0:	f8df e12c 	ldr.w	lr, [pc, #300]	; d0040fd0 <fireBullet+0x16c>
d0040ea4:	2200      	movs	r2, #0
d0040ea6:	e001      	b.n	d0040eac <fireBullet+0x48>
d0040ea8:	2a20      	cmp	r2, #32
d0040eaa:	d039      	beq.n	d0040f20 <fireBullet+0xbc>
d0040eac:	ebc2 03c2 	rsb	r3, r2, r2, lsl #3
d0040eb0:	3201      	adds	r2, #1
d0040eb2:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0040eb6:	7d99      	ldrb	r1, [r3, #22]
d0040eb8:	2900      	cmp	r1, #0
d0040eba:	d1f5      	bne.n	d0040ea8 <fireBullet+0x44>
d0040ebc:	f883 8016 	strb.w	r8, [r3, #22]
d0040ec0:	2701      	movs	r7, #1
d0040ec2:	8a82      	ldrh	r2, [r0, #20]
d0040ec4:	6831      	ldr	r1, [r6, #0]
d0040ec6:	b212      	sxth	r2, r2
d0040ec8:	eb0e 04c1 	add.w	r4, lr, r1, lsl #3
d0040ecc:	3218      	adds	r2, #24
d0040ece:	b249      	sxtb	r1, r1
d0040ed0:	edd4 6a00 	vldr	s13, [r4]
d0040ed4:	ee07 2a90 	vmov	s15, r2
d0040ed8:	ed94 7a01 	vldr	s14, [r4, #4]
d0040edc:	ee66 4aa5 	vmul.f32	s9, s13, s11
d0040ee0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040ee4:	ee27 5a25 	vmul.f32	s10, s14, s11
d0040ee8:	edc3 7a02 	vstr	s15, [r3, #8]
d0040eec:	8ac2      	ldrh	r2, [r0, #22]
d0040eee:	b212      	sxth	r2, r2
d0040ef0:	3218      	adds	r2, #24
d0040ef2:	ee07 2a90 	vmov	s15, r2
d0040ef6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040efa:	edc3 7a03 	vstr	s15, [r3, #12]
d0040efe:	7519      	strb	r1, [r3, #20]
d0040f00:	edc3 4a00 	vstr	s9, [r3]
d0040f04:	ed83 5a01 	vstr	s10, [r3, #4]
d0040f08:	edd3 7a02 	vldr	s15, [r3, #8]
d0040f0c:	eee6 7a86 	vfma.f32	s15, s13, s12
d0040f10:	edc3 7a02 	vstr	s15, [r3, #8]
d0040f14:	edd3 7a03 	vldr	s15, [r3, #12]
d0040f18:	eee7 7a46 	vfms.f32	s15, s14, s12
d0040f1c:	edc3 7a03 	vstr	s15, [r3, #12]
d0040f20:	3604      	adds	r6, #4
d0040f22:	4566      	cmp	r6, ip
d0040f24:	d1be      	bne.n	d0040ea4 <fireBullet+0x40>
d0040f26:	b917      	cbnz	r7, d0040f2e <fireBullet+0xca>
d0040f28:	b004      	add	sp, #16
d0040f2a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0040f2e:	4c26      	ldr	r4, [pc, #152]	; (d0040fc8 <fireBullet+0x164>)
d0040f30:	4638      	mov	r0, r7
d0040f32:	4e26      	ldr	r6, [pc, #152]	; (d0040fcc <fireBullet+0x168>)
d0040f34:	f06f 057e 	mvn.w	r5, #126	; 0x7e
d0040f38:	7d23      	ldrb	r3, [r4, #20]
d0040f3a:	7d62      	ldrb	r2, [r4, #21]
d0040f3c:	7da1      	ldrb	r1, [r4, #22]
d0040f3e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040f42:	7de2      	ldrb	r2, [r4, #23]
d0040f44:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040f48:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040f4c:	689b      	ldr	r3, [r3, #8]
d0040f4e:	689b      	ldr	r3, [r3, #8]
d0040f50:	4798      	blx	r3
d0040f52:	4b1c      	ldr	r3, [pc, #112]	; (d0040fc4 <fireBullet+0x160>)
d0040f54:	4638      	mov	r0, r7
d0040f56:	8a9b      	ldrh	r3, [r3, #20]
d0040f58:	7d21      	ldrb	r1, [r4, #20]
d0040f5a:	3320      	adds	r3, #32
d0040f5c:	b21b      	sxth	r3, r3
d0040f5e:	3bf0      	subs	r3, #240	; 0xf0
d0040f60:	ebc3 13c3 	rsb	r3, r3, r3, lsl #7
d0040f64:	fb86 2603 	smull	r2, r6, r6, r3
d0040f68:	17da      	asrs	r2, r3, #31
d0040f6a:	4433      	add	r3, r6
d0040f6c:	7d66      	ldrb	r6, [r4, #21]
d0040f6e:	ebc2 13e3 	rsb	r3, r2, r3, asr #7
d0040f72:	ea41 2206 	orr.w	r2, r1, r6, lsl #8
d0040f76:	7da6      	ldrb	r6, [r4, #22]
d0040f78:	b219      	sxth	r1, r3
d0040f7a:	ea42 4306 	orr.w	r3, r2, r6, lsl #16
d0040f7e:	7de2      	ldrb	r2, [r4, #23]
d0040f80:	297f      	cmp	r1, #127	; 0x7f
d0040f82:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040f86:	bfa8      	it	ge
d0040f88:	217f      	movge	r1, #127	; 0x7f
d0040f8a:	689b      	ldr	r3, [r3, #8]
d0040f8c:	42a9      	cmp	r1, r5
d0040f8e:	699b      	ldr	r3, [r3, #24]
d0040f90:	bfb8      	it	lt
d0040f92:	4629      	movlt	r1, r5
d0040f94:	b249      	sxtb	r1, r1
d0040f96:	4798      	blx	r3
d0040f98:	7d23      	ldrb	r3, [r4, #20]
d0040f9a:	7d62      	ldrb	r2, [r4, #21]
d0040f9c:	4638      	mov	r0, r7
d0040f9e:	7da1      	ldrb	r1, [r4, #22]
d0040fa0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040fa4:	7de2      	ldrb	r2, [r4, #23]
d0040fa6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040faa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040fae:	689b      	ldr	r3, [r3, #8]
d0040fb0:	685b      	ldr	r3, [r3, #4]
d0040fb2:	b004      	add	sp, #16
d0040fb4:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0040fb8:	4718      	bx	r3
d0040fba:	bf00      	nop
d0040fbc:	d00450e4 	.word	0xd00450e4
d0040fc0:	d0044544 	.word	0xd0044544
d0040fc4:	d00450c0 	.word	0xd00450c0
d0040fc8:	2001f000 	.word	0x2001f000
d0040fcc:	88888889 	.word	0x88888889
d0040fd0:	d00437b4 	.word	0xd00437b4

d0040fd4 <doBullets>:
d0040fd4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0040fd6:	2400      	movs	r4, #0
d0040fd8:	4d41      	ldr	r5, [pc, #260]	; (d00410e0 <doBullets+0x10c>)
d0040fda:	4e42      	ldr	r6, [pc, #264]	; (d00410e4 <doBullets+0x110>)
d0040fdc:	ed2d 8b02 	vpush	{d8}
d0040fe0:	eddf 8a41 	vldr	s17, [pc, #260]	; d00410e8 <doBullets+0x114>
d0040fe4:	ed9f 8a41 	vldr	s16, [pc, #260]	; d00410ec <doBullets+0x118>
d0040fe8:	ebc4 03c4 	rsb	r3, r4, r4, lsl #3
d0040fec:	00e2      	lsls	r2, r4, #3
d0040fee:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0040ff2:	7d99      	ldrb	r1, [r3, #22]
d0040ff4:	2900      	cmp	r1, #0
d0040ff6:	d06c      	beq.n	d00410d2 <doBullets+0xfe>
d0040ff8:	7d99      	ldrb	r1, [r3, #22]
d0040ffa:	eebb 7a00 	vmov.f32	s14, #176	; 0xc1800000 -16.0
d0040ffe:	3901      	subs	r1, #1
d0041000:	b2c9      	uxtb	r1, r1
d0041002:	7599      	strb	r1, [r3, #22]
d0041004:	edd3 6a00 	vldr	s13, [r3]
d0041008:	edd3 7a02 	vldr	s15, [r3, #8]
d004100c:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0041010:	edc3 7a02 	vstr	s15, [r3, #8]
d0041014:	edd3 6a01 	vldr	s13, [r3, #4]
d0041018:	edd3 7a03 	vldr	s15, [r3, #12]
d004101c:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0041020:	edc3 7a03 	vstr	s15, [r3, #12]
d0041024:	edd3 7a02 	vldr	s15, [r3, #8]
d0041028:	eef4 7ac7 	vcmpe.f32	s15, s14
d004102c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041030:	d501      	bpl.n	d0041036 <doBullets+0x62>
d0041032:	edc3 8a02 	vstr	s17, [r3, #8]
d0041036:	1b13      	subs	r3, r2, r4
d0041038:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d004103c:	edd3 7a02 	vldr	s15, [r3, #8]
d0041040:	eef4 7ae8 	vcmpe.f32	s15, s17
d0041044:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041048:	dd01      	ble.n	d004104e <doBullets+0x7a>
d004104a:	4929      	ldr	r1, [pc, #164]	; (d00410f0 <doBullets+0x11c>)
d004104c:	6099      	str	r1, [r3, #8]
d004104e:	1b13      	subs	r3, r2, r4
d0041050:	eefb 7a00 	vmov.f32	s15, #176	; 0xc1800000 -16.0
d0041054:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0041058:	ed93 7a03 	vldr	s14, [r3, #12]
d004105c:	eeb4 7ae7 	vcmpe.f32	s14, s15
d0041060:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041064:	d501      	bpl.n	d004106a <doBullets+0x96>
d0041066:	ed83 8a03 	vstr	s16, [r3, #12]
d004106a:	1b13      	subs	r3, r2, r4
d004106c:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0041070:	edd3 7a03 	vldr	s15, [r3, #12]
d0041074:	eef4 7ac8 	vcmpe.f32	s15, s16
d0041078:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004107c:	dd01      	ble.n	d0041082 <doBullets+0xae>
d004107e:	491c      	ldr	r1, [pc, #112]	; (d00410f0 <doBullets+0x11c>)
d0041080:	60d9      	str	r1, [r3, #12]
d0041082:	1b13      	subs	r3, r2, r4
d0041084:	491b      	ldr	r1, [pc, #108]	; (d00410f4 <doBullets+0x120>)
d0041086:	4817      	ldr	r0, [pc, #92]	; (d00410e4 <doBullets+0x110>)
d0041088:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d004108c:	edd3 7a02 	vldr	s15, [r3, #8]
d0041090:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041094:	ee17 2a90 	vmov	r2, s15
d0041098:	b212      	sxth	r2, r2
d004109a:	821a      	strh	r2, [r3, #16]
d004109c:	edd3 7a03 	vldr	s15, [r3, #12]
d00410a0:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00410a4:	ee17 2a90 	vmov	r2, s15
d00410a8:	b212      	sxth	r2, r2
d00410aa:	825a      	strh	r2, [r3, #18]
d00410ac:	7d1a      	ldrb	r2, [r3, #20]
d00410ae:	76f2      	strb	r2, [r6, #27]
d00410b0:	8a1a      	ldrh	r2, [r3, #16]
d00410b2:	82b2      	strh	r2, [r6, #20]
d00410b4:	8a5b      	ldrh	r3, [r3, #18]
d00410b6:	82f3      	strh	r3, [r6, #22]
d00410b8:	7b0b      	ldrb	r3, [r1, #12]
d00410ba:	7b4a      	ldrb	r2, [r1, #13]
d00410bc:	7b8f      	ldrb	r7, [r1, #14]
d00410be:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00410c2:	7bca      	ldrb	r2, [r1, #15]
d00410c4:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d00410c8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00410cc:	685b      	ldr	r3, [r3, #4]
d00410ce:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00410d0:	4798      	blx	r3
d00410d2:	3401      	adds	r4, #1
d00410d4:	2c20      	cmp	r4, #32
d00410d6:	d187      	bne.n	d0040fe8 <doBullets+0x14>
d00410d8:	ecbd 8b02 	vpop	{d8}
d00410dc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00410de:	bf00      	nop
d00410e0:	d0044544 	.word	0xd0044544
d00410e4:	d0044ee0 	.word	0xd0044ee0
d00410e8:	43f00000 	.word	0x43f00000
d00410ec:	43a00000 	.word	0x43a00000
d00410f0:	c1800000 	.word	0xc1800000
d00410f4:	2001f000 	.word	0x2001f000

d00410f8 <SetPlayerLives>:
d00410f8:	4b01      	ldr	r3, [pc, #4]	; (d0041100 <SetPlayerLives+0x8>)
d00410fa:	7018      	strb	r0, [r3, #0]
d00410fc:	4770      	bx	lr
d00410fe:	bf00      	nop
d0041100:	d0044408 	.word	0xd0044408

d0041104 <SpawnAstroid.part.0>:
d0041104:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0041108:	2400      	movs	r4, #0
d004110a:	4690      	mov	r8, r2
d004110c:	4e40      	ldr	r6, [pc, #256]	; (d0041210 <SpawnAstroid.part.0+0x10c>)
d004110e:	e002      	b.n	d0041116 <SpawnAstroid.part.0+0x12>
d0041110:	3401      	adds	r4, #1
d0041112:	2c20      	cmp	r4, #32
d0041114:	d068      	beq.n	d00411e8 <SpawnAstroid.part.0+0xe4>
d0041116:	eb04 0344 	add.w	r3, r4, r4, lsl #1
d004111a:	0067      	lsls	r7, r4, #1
d004111c:	eb06 05c3 	add.w	r5, r6, r3, lsl #3
d0041120:	00db      	lsls	r3, r3, #3
d0041122:	7b6a      	ldrb	r2, [r5, #13]
d0041124:	f105 0e0d 	add.w	lr, r5, #13
d0041128:	f002 0cff 	and.w	ip, r2, #255	; 0xff
d004112c:	2a00      	cmp	r2, #0
d004112e:	d1ef      	bne.n	d0041110 <SpawnAstroid.part.0+0xc>
d0041130:	4a38      	ldr	r2, [pc, #224]	; (d0041214 <SpawnAstroid.part.0+0x110>)
d0041132:	46a9      	mov	r9, r5
d0041134:	f846 c003 	str.w	ip, [r6, r3]
d0041138:	eb02 0348 	add.w	r3, r2, r8, lsl #1
d004113c:	f812 2018 	ldrb.w	r2, [r2, r8, lsl #1]
d0041140:	f8c5 c00c 	str.w	ip, [r5, #12]
d0041144:	785b      	ldrb	r3, [r3, #1]
d0041146:	73ea      	strb	r2, [r5, #15]
d0041148:	f8c5 c004 	str.w	ip, [r5, #4]
d004114c:	736b      	strb	r3, [r5, #13]
d004114e:	f8c5 c008 	str.w	ip, [r5, #8]
d0041152:	8028      	strh	r0, [r5, #0]
d0041154:	f8c5 c010 	str.w	ip, [r5, #16]
d0041158:	f8c5 c014 	str.w	ip, [r5, #20]
d004115c:	8069      	strh	r1, [r5, #2]
d004115e:	2103      	movs	r1, #3
d0041160:	f06f 0002 	mvn.w	r0, #2
d0041164:	f001 f836 	bl	d00421d4 <sbx_rng_range>
d0041168:	b200      	sxth	r0, r0
d004116a:	f8a9 0004 	strh.w	r0, [r9, #4]
d004116e:	f8b9 3004 	ldrh.w	r3, [r9, #4]
d0041172:	b21b      	sxth	r3, r3
d0041174:	2b00      	cmp	r3, #0
d0041176:	d0f2      	beq.n	d004115e <SpawnAstroid.part.0+0x5a>
d0041178:	193d      	adds	r5, r7, r4
d004117a:	eb06 05c5 	add.w	r5, r6, r5, lsl #3
d004117e:	2103      	movs	r1, #3
d0041180:	f06f 0002 	mvn.w	r0, #2
d0041184:	f001 f826 	bl	d00421d4 <sbx_rng_range>
d0041188:	b200      	sxth	r0, r0
d004118a:	80e8      	strh	r0, [r5, #6]
d004118c:	88eb      	ldrh	r3, [r5, #6]
d004118e:	b21b      	sxth	r3, r3
d0041190:	2b00      	cmp	r3, #0
d0041192:	d0f4      	beq.n	d004117e <SpawnAstroid.part.0+0x7a>
d0041194:	f885 800c 	strb.w	r8, [r5, #12]
d0041198:	f1b8 0f00 	cmp.w	r8, #0
d004119c:	d026      	beq.n	d00411ec <SpawnAstroid.part.0+0xe8>
d004119e:	f1b8 0f01 	cmp.w	r8, #1
d00411a2:	d129      	bne.n	d00411f8 <SpawnAstroid.part.0+0xf4>
d00411a4:	2340      	movs	r3, #64	; 0x40
d00411a6:	2218      	movs	r2, #24
d00411a8:	816b      	strh	r3, [r5, #10]
d00411aa:	812b      	strh	r3, [r5, #8]
d00411ac:	74ea      	strb	r2, [r5, #19]
d00411ae:	443c      	add	r4, r7
d00411b0:	2000      	movs	r0, #0
d00411b2:	eb06 06c4 	add.w	r6, r6, r4, lsl #3
d00411b6:	7cf1      	ldrb	r1, [r6, #19]
d00411b8:	3901      	subs	r1, #1
d00411ba:	f001 f80b 	bl	d00421d4 <sbx_rng_range>
d00411be:	4603      	mov	r3, r0
d00411c0:	2103      	movs	r1, #3
d00411c2:	2001      	movs	r0, #1
d00411c4:	b25b      	sxtb	r3, r3
d00411c6:	7433      	strb	r3, [r6, #16]
d00411c8:	f001 f804 	bl	d00421d4 <sbx_rng_range>
d00411cc:	4603      	mov	r3, r0
d00411ce:	2104      	movs	r1, #4
d00411d0:	2001      	movs	r0, #1
d00411d2:	b2db      	uxtb	r3, r3
d00411d4:	7473      	strb	r3, [r6, #17]
d00411d6:	f000 fffd 	bl	d00421d4 <sbx_rng_range>
d00411da:	f010 0f01 	tst.w	r0, #1
d00411de:	bf14      	ite	ne
d00411e0:	f04f 33ff 	movne.w	r3, #4294967295	; 0xffffffff
d00411e4:	2301      	moveq	r3, #1
d00411e6:	73b3      	strb	r3, [r6, #14]
d00411e8:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d00411ec:	2360      	movs	r3, #96	; 0x60
d00411ee:	2218      	movs	r2, #24
d00411f0:	816b      	strh	r3, [r5, #10]
d00411f2:	812b      	strh	r3, [r5, #8]
d00411f4:	74ea      	strb	r2, [r5, #19]
d00411f6:	e7da      	b.n	d00411ae <SpawnAstroid.part.0+0xaa>
d00411f8:	f1b8 0f02 	cmp.w	r8, #2
d00411fc:	d0d2      	beq.n	d00411a4 <SpawnAstroid.part.0+0xa0>
d00411fe:	f1b8 0f03 	cmp.w	r8, #3
d0041202:	d1d4      	bne.n	d00411ae <SpawnAstroid.part.0+0xaa>
d0041204:	2320      	movs	r3, #32
d0041206:	2210      	movs	r2, #16
d0041208:	816b      	strh	r3, [r5, #10]
d004120a:	812b      	strh	r3, [r5, #8]
d004120c:	74ea      	strb	r2, [r5, #19]
d004120e:	e7ce      	b.n	d00411ae <SpawnAstroid.part.0+0xaa>
d0041210:	d0045420 	.word	0xd0045420
d0041214:	d0044384 	.word	0xd0044384

d0041218 <SpawnAstroid>:
d0041218:	2a03      	cmp	r2, #3
d004121a:	d801      	bhi.n	d0041220 <SpawnAstroid+0x8>
d004121c:	f7ff bf72 	b.w	d0041104 <SpawnAstroid.part.0>
d0041220:	4770      	bx	lr
d0041222:	bf00      	nop

d0041224 <initAstroids>:
d0041224:	4b09      	ldr	r3, [pc, #36]	; (d004124c <initAstroids+0x28>)
d0041226:	2200      	movs	r2, #0
d0041228:	f503 7140 	add.w	r1, r3, #768	; 0x300
d004122c:	601a      	str	r2, [r3, #0]
d004122e:	3318      	adds	r3, #24
d0041230:	f843 2c14 	str.w	r2, [r3, #-20]
d0041234:	f843 2c10 	str.w	r2, [r3, #-16]
d0041238:	f843 2c0c 	str.w	r2, [r3, #-12]
d004123c:	f843 2c08 	str.w	r2, [r3, #-8]
d0041240:	f843 2c04 	str.w	r2, [r3, #-4]
d0041244:	428b      	cmp	r3, r1
d0041246:	d1f1      	bne.n	d004122c <initAstroids+0x8>
d0041248:	4770      	bx	lr
d004124a:	bf00      	nop
d004124c:	d0045420 	.word	0xd0045420

d0041250 <proc_astroids>:
d0041250:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041254:	f8df b014 	ldr.w	fp, [pc, #20]	; d004126c <proc_astroids+0x1c>
d0041258:	2600      	movs	r6, #0
d004125a:	4f03      	ldr	r7, [pc, #12]	; (d0041268 <proc_astroids+0x18>)
d004125c:	ed2d 8b02 	vpush	{d8}
d0041260:	b089      	sub	sp, #36	; 0x24
d0041262:	f8cd b004 	str.w	fp, [sp, #4]
d0041266:	e00a      	b.n	d004127e <proc_astroids+0x2e>
d0041268:	d0044ee0 	.word	0xd0044ee0
d004126c:	d0045420 	.word	0xd0045420
d0041270:	9b01      	ldr	r3, [sp, #4]
d0041272:	3601      	adds	r6, #1
d0041274:	3318      	adds	r3, #24
d0041276:	2e20      	cmp	r6, #32
d0041278:	9301      	str	r3, [sp, #4]
d004127a:	f000 822a 	beq.w	d00416d2 <proc_astroids+0x482>
d004127e:	eb06 0346 	add.w	r3, r6, r6, lsl #1
d0041282:	ea4f 0846 	mov.w	r8, r6, lsl #1
d0041286:	eb0b 03c3 	add.w	r3, fp, r3, lsl #3
d004128a:	7b5a      	ldrb	r2, [r3, #13]
d004128c:	2a00      	cmp	r2, #0
d004128e:	d0ef      	beq.n	d0041270 <proc_astroids+0x20>
d0041290:	7b1a      	ldrb	r2, [r3, #12]
d0041292:	7c99      	ldrb	r1, [r3, #18]
d0041294:	b2d2      	uxtb	r2, r2
d0041296:	3101      	adds	r1, #1
d0041298:	b2c9      	uxtb	r1, r1
d004129a:	7499      	strb	r1, [r3, #18]
d004129c:	7c98      	ldrb	r0, [r3, #18]
d004129e:	7c59      	ldrb	r1, [r3, #17]
d00412a0:	4288      	cmp	r0, r1
d00412a2:	d918      	bls.n	d00412d6 <proc_astroids+0x86>
d00412a4:	2100      	movs	r1, #0
d00412a6:	7499      	strb	r1, [r3, #18]
d00412a8:	7b98      	ldrb	r0, [r3, #14]
d00412aa:	7c19      	ldrb	r1, [r3, #16]
d00412ac:	4401      	add	r1, r0
d00412ae:	b249      	sxtb	r1, r1
d00412b0:	7419      	strb	r1, [r3, #16]
d00412b2:	7c19      	ldrb	r1, [r3, #16]
d00412b4:	0609      	lsls	r1, r1, #24
d00412b6:	d503      	bpl.n	d00412c0 <proc_astroids+0x70>
d00412b8:	7cd9      	ldrb	r1, [r3, #19]
d00412ba:	3901      	subs	r1, #1
d00412bc:	b249      	sxtb	r1, r1
d00412be:	7419      	strb	r1, [r3, #16]
d00412c0:	eb08 0306 	add.w	r3, r8, r6
d00412c4:	eb0b 03c3 	add.w	r3, fp, r3, lsl #3
d00412c8:	7cd8      	ldrb	r0, [r3, #19]
d00412ca:	7c19      	ldrb	r1, [r3, #16]
d00412cc:	b249      	sxtb	r1, r1
d00412ce:	4288      	cmp	r0, r1
d00412d0:	dc01      	bgt.n	d00412d6 <proc_astroids+0x86>
d00412d2:	2100      	movs	r1, #0
d00412d4:	7419      	strb	r1, [r3, #16]
d00412d6:	eb08 0106 	add.w	r1, r8, r6
d00412da:	eb0b 00c1 	add.w	r0, fp, r1, lsl #3
d00412de:	8884      	ldrh	r4, [r0, #4]
d00412e0:	f83b 3031 	ldrh.w	r3, [fp, r1, lsl #3]
d00412e4:	4423      	add	r3, r4
d00412e6:	b21b      	sxth	r3, r3
d00412e8:	f82b 3031 	strh.w	r3, [fp, r1, lsl #3]
d00412ec:	88c4      	ldrh	r4, [r0, #6]
d00412ee:	8843      	ldrh	r3, [r0, #2]
d00412f0:	4423      	add	r3, r4
d00412f2:	b21b      	sxth	r3, r3
d00412f4:	8043      	strh	r3, [r0, #2]
d00412f6:	f83b 3031 	ldrh.w	r3, [fp, r1, lsl #3]
d00412fa:	b21b      	sxth	r3, r3
d00412fc:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0041300:	dd04      	ble.n	d004130c <proc_astroids+0xbc>
d0041302:	8903      	ldrh	r3, [r0, #8]
d0041304:	425b      	negs	r3, r3
d0041306:	b21b      	sxth	r3, r3
d0041308:	f82b 3031 	strh.w	r3, [fp, r1, lsl #3]
d004130c:	eb08 0306 	add.w	r3, r8, r6
d0041310:	eb0b 03c3 	add.w	r3, fp, r3, lsl #3
d0041314:	8859      	ldrh	r1, [r3, #2]
d0041316:	b209      	sxth	r1, r1
d0041318:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d004131c:	dd03      	ble.n	d0041326 <proc_astroids+0xd6>
d004131e:	8959      	ldrh	r1, [r3, #10]
d0041320:	4249      	negs	r1, r1
d0041322:	b209      	sxth	r1, r1
d0041324:	8059      	strh	r1, [r3, #2]
d0041326:	eb08 0006 	add.w	r0, r8, r6
d004132a:	eb0b 03c0 	add.w	r3, fp, r0, lsl #3
d004132e:	f83b 1030 	ldrh.w	r1, [fp, r0, lsl #3]
d0041332:	891b      	ldrh	r3, [r3, #8]
d0041334:	b209      	sxth	r1, r1
d0041336:	b21b      	sxth	r3, r3
d0041338:	425b      	negs	r3, r3
d004133a:	4299      	cmp	r1, r3
d004133c:	da03      	bge.n	d0041346 <proc_astroids+0xf6>
d004133e:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d0041342:	f82b 3030 	strh.w	r3, [fp, r0, lsl #3]
d0041346:	eb08 0106 	add.w	r1, r8, r6
d004134a:	eb0b 01c1 	add.w	r1, fp, r1, lsl #3
d004134e:	8848      	ldrh	r0, [r1, #2]
d0041350:	894b      	ldrh	r3, [r1, #10]
d0041352:	b200      	sxth	r0, r0
d0041354:	b21b      	sxth	r3, r3
d0041356:	425b      	negs	r3, r3
d0041358:	4298      	cmp	r0, r3
d004135a:	da02      	bge.n	d0041362 <proc_astroids+0x112>
d004135c:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0041360:	804b      	strh	r3, [r1, #2]
d0041362:	eb08 0406 	add.w	r4, r8, r6
d0041366:	4bb9      	ldr	r3, [pc, #740]	; (d004164c <proc_astroids+0x3fc>)
d0041368:	2100      	movs	r1, #0
d004136a:	f8df a2f0 	ldr.w	sl, [pc, #752]	; d004165c <proc_astroids+0x40c>
d004136e:	eb0b 00c4 	add.w	r0, fp, r4, lsl #3
d0041372:	eb03 1342 	add.w	r3, r3, r2, lsl #5
d0041376:	460d      	mov	r5, r1
d0041378:	f890 c010 	ldrb.w	ip, [r0, #16]
d004137c:	4699      	mov	r9, r3
d004137e:	f883 c01b 	strb.w	ip, [r3, #27]
d0041382:	f83b c034 	ldrh.w	ip, [fp, r4, lsl #3]
d0041386:	4cb2      	ldr	r4, [pc, #712]	; (d0041650 <proc_astroids+0x400>)
d0041388:	f8a3 c014 	strh.w	ip, [r3, #20]
d004138c:	f8b0 c002 	ldrh.w	ip, [r0, #2]
d0041390:	f8a3 c016 	strh.w	ip, [r3, #22]
d0041394:	f890 c014 	ldrb.w	ip, [r0, #20]
d0041398:	fa5f fc8c 	uxtb.w	ip, ip
d004139c:	f883 c004 	strb.w	ip, [r3, #4]
d00413a0:	f890 c016 	ldrb.w	ip, [r0, #22]
d00413a4:	0150      	lsls	r0, r2, #5
d00413a6:	fa5f fc8c 	uxtb.w	ip, ip
d00413aa:	9002      	str	r0, [sp, #8]
d00413ac:	9801      	ldr	r0, [sp, #4]
d00413ae:	f883 c006 	strb.w	ip, [r3, #6]
d00413b2:	7699      	strb	r1, [r3, #26]
d00413b4:	f7ff fa70 	bl	d0040898 <ShieldBounceAsteroid>
d00413b8:	7da3      	ldrb	r3, [r4, #22]
d00413ba:	4639      	mov	r1, r7
d00413bc:	4648      	mov	r0, r9
d00413be:	b1e3      	cbz	r3, d00413fa <proc_astroids+0x1aa>
d00413c0:	f9b4 c010 	ldrsh.w	ip, [r4, #16]
d00413c4:	f9b4 2012 	ldrsh.w	r2, [r4, #18]
d00413c8:	7d23      	ldrb	r3, [r4, #20]
d00413ca:	f8a7 c014 	strh.w	ip, [r7, #20]
d00413ce:	82fa      	strh	r2, [r7, #22]
d00413d0:	76fb      	strb	r3, [r7, #27]
d00413d2:	f89a e00c 	ldrb.w	lr, [sl, #12]
d00413d6:	f89a c00d 	ldrb.w	ip, [sl, #13]
d00413da:	f89a 200e 	ldrb.w	r2, [sl, #14]
d00413de:	ea4e 2c0c 	orr.w	ip, lr, ip, lsl #8
d00413e2:	f89a 300f 	ldrb.w	r3, [sl, #15]
d00413e6:	ea4c 4202 	orr.w	r2, ip, r2, lsl #16
d00413ea:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00413ee:	685b      	ldr	r3, [r3, #4]
d00413f0:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d00413f2:	4798      	blx	r3
d00413f4:	2802      	cmp	r0, #2
d00413f6:	f000 80f9 	beq.w	d00415ec <proc_astroids+0x39c>
d00413fa:	3501      	adds	r5, #1
d00413fc:	341c      	adds	r4, #28
d00413fe:	2d20      	cmp	r5, #32
d0041400:	d1da      	bne.n	d00413b8 <proc_astroids+0x168>
d0041402:	f89a 100c 	ldrb.w	r1, [sl, #12]
d0041406:	4648      	mov	r0, r9
d0041408:	f89a 300d 	ldrb.w	r3, [sl, #13]
d004140c:	f89a 200e 	ldrb.w	r2, [sl, #14]
d0041410:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0041414:	f89a 300f 	ldrb.w	r3, [sl, #15]
d0041418:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004141c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0041420:	685b      	ldr	r3, [r3, #4]
d0041422:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0041424:	4798      	blx	r3
d0041426:	9a02      	ldr	r2, [sp, #8]
d0041428:	eb08 0306 	add.w	r3, r8, r6
d004142c:	2100      	movs	r1, #0
d004142e:	4691      	mov	r9, r2
d0041430:	4a86      	ldr	r2, [pc, #536]	; (d004164c <proc_astroids+0x3fc>)
d0041432:	4491      	add	r9, r2
d0041434:	eb0b 02c3 	add.w	r2, fp, r3, lsl #3
d0041438:	f889 1004 	strb.w	r1, [r9, #4]
d004143c:	7b51      	ldrb	r1, [r2, #13]
d004143e:	2900      	cmp	r1, #0
d0041440:	f47f af16 	bne.w	d0041270 <proc_astroids+0x20>
d0041444:	7b14      	ldrb	r4, [r2, #12]
d0041446:	f04f 0c00 	mov.w	ip, #0
d004144a:	f83b 3033 	ldrh.w	r3, [fp, r3, lsl #3]
d004144e:	8851      	ldrh	r1, [r2, #2]
d0041450:	b2e4      	uxtb	r4, r4
d0041452:	8912      	ldrh	r2, [r2, #8]
d0041454:	b218      	sxth	r0, r3
d0041456:	b209      	sxth	r1, r1
d0041458:	b212      	sxth	r2, r2
d004145a:	9005      	str	r0, [sp, #20]
d004145c:	9106      	str	r1, [sp, #24]
d004145e:	eb08 0006 	add.w	r0, r8, r6
d0041462:	f1b2 0140 	subs.w	r1, r2, #64	; 0x40
d0041466:	eb0b 00c0 	add.w	r0, fp, r0, lsl #3
d004146a:	bf48      	it	mi
d004146c:	f1a2 013f 	submi.w	r1, r2, #63	; 0x3f
d0041470:	eb08 0206 	add.w	r2, r8, r6
d0041474:	1049      	asrs	r1, r1, #1
d0041476:	eb0b 02c2 	add.w	r2, fp, r2, lsl #3
d004147a:	9102      	str	r1, [sp, #8]
d004147c:	8951      	ldrh	r1, [r2, #10]
d004147e:	7bc5      	ldrb	r5, [r0, #15]
d0041480:	f880 c00d 	strb.w	ip, [r0, #13]
d0041484:	b209      	sxth	r1, r1
d0041486:	8900      	ldrh	r0, [r0, #8]
d0041488:	f06f 0c7e 	mvn.w	ip, #126	; 0x7e
d004148c:	f1b1 0240 	subs.w	r2, r1, #64	; 0x40
d0041490:	f340 004e 	sbfx	r0, r0, #1, #15
d0041494:	bf48      	it	mi
d0041496:	f1a1 023f 	submi.w	r2, r1, #63	; 0x3f
d004149a:	496e      	ldr	r1, [pc, #440]	; (d0041654 <proc_astroids+0x404>)
d004149c:	4403      	add	r3, r0
d004149e:	1052      	asrs	r2, r2, #1
d00414a0:	6808      	ldr	r0, [r1, #0]
d00414a2:	b21b      	sxth	r3, r3
d00414a4:	4428      	add	r0, r5
d00414a6:	9203      	str	r2, [sp, #12]
d00414a8:	3bf0      	subs	r3, #240	; 0xf0
d00414aa:	4a6b      	ldr	r2, [pc, #428]	; (d0041658 <proc_astroids+0x408>)
d00414ac:	6008      	str	r0, [r1, #0]
d00414ae:	ebc3 13c3 	rsb	r3, r3, r3, lsl #7
d00414b2:	fb82 1203 	smull	r1, r2, r2, r3
d00414b6:	17d9      	asrs	r1, r3, #31
d00414b8:	4413      	add	r3, r2
d00414ba:	ebc1 11e3 	rsb	r1, r1, r3, asr #7
d00414be:	f89a 3014 	ldrb.w	r3, [sl, #20]
d00414c2:	b209      	sxth	r1, r1
d00414c4:	297f      	cmp	r1, #127	; 0x7f
d00414c6:	bfa8      	it	ge
d00414c8:	217f      	movge	r1, #127	; 0x7f
d00414ca:	4561      	cmp	r1, ip
d00414cc:	bfb8      	it	lt
d00414ce:	4661      	movlt	r1, ip
d00414d0:	460d      	mov	r5, r1
d00414d2:	2c00      	cmp	r4, #0
d00414d4:	f040 80c4 	bne.w	d0041660 <proc_astroids+0x410>
d00414d8:	f89a 2015 	ldrb.w	r2, [sl, #21]
d00414dc:	2101      	movs	r1, #1
d00414de:	2004      	movs	r0, #4
d00414e0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00414e4:	f89a 2016 	ldrb.w	r2, [sl, #22]
d00414e8:	ee08 1a10 	vmov	s16, r1
d00414ec:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00414f0:	f89a 2017 	ldrb.w	r2, [sl, #23]
d00414f4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00414f8:	2202      	movs	r2, #2
d00414fa:	9204      	str	r2, [sp, #16]
d00414fc:	689b      	ldr	r3, [r3, #8]
d00414fe:	689b      	ldr	r3, [r3, #8]
d0041500:	4798      	blx	r3
d0041502:	f89a 3014 	ldrb.w	r3, [sl, #20]
d0041506:	f89a 2015 	ldrb.w	r2, [sl, #21]
d004150a:	b269      	sxtb	r1, r5
d004150c:	2004      	movs	r0, #4
d004150e:	2500      	movs	r5, #0
d0041510:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041514:	f89a 2016 	ldrb.w	r2, [sl, #22]
d0041518:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004151c:	f89a 2017 	ldrb.w	r2, [sl, #23]
d0041520:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041524:	689b      	ldr	r3, [r3, #8]
d0041526:	699b      	ldr	r3, [r3, #24]
d0041528:	4798      	blx	r3
d004152a:	f89a 3014 	ldrb.w	r3, [sl, #20]
d004152e:	f89a 2015 	ldrb.w	r2, [sl, #21]
d0041532:	2004      	movs	r0, #4
d0041534:	f89a 1016 	ldrb.w	r1, [sl, #22]
d0041538:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004153c:	f89a 2017 	ldrb.w	r2, [sl, #23]
d0041540:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0041544:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041548:	689b      	ldr	r3, [r3, #8]
d004154a:	685b      	ldr	r3, [r3, #4]
d004154c:	4798      	blx	r3
d004154e:	9a05      	ldr	r2, [sp, #20]
d0041550:	9607      	str	r6, [sp, #28]
d0041552:	f102 0a20 	add.w	sl, r2, #32
d0041556:	f1a2 0320 	sub.w	r3, r2, #32
d004155a:	9a06      	ldr	r2, [sp, #24]
d004155c:	4656      	mov	r6, sl
d004155e:	f102 0820 	add.w	r8, r2, #32
d0041562:	f1a2 0920 	sub.w	r9, r2, #32
d0041566:	46c2      	mov	sl, r8
d0041568:	4698      	mov	r8, r3
d004156a:	4631      	mov	r1, r6
d004156c:	4640      	mov	r0, r8
d004156e:	f000 fe31 	bl	d00421d4 <sbx_rng_range>
d0041572:	4651      	mov	r1, sl
d0041574:	4604      	mov	r4, r0
d0041576:	4648      	mov	r0, r9
d0041578:	f000 fe2c 	bl	d00421d4 <sbx_rng_range>
d004157c:	4601      	mov	r1, r0
d004157e:	3501      	adds	r5, #1
d0041580:	ee18 2a10 	vmov	r2, s16
d0041584:	b220      	sxth	r0, r4
d0041586:	b209      	sxth	r1, r1
d0041588:	f7ff fdbc 	bl	d0041104 <SpawnAstroid.part.0>
d004158c:	9b04      	ldr	r3, [sp, #16]
d004158e:	b2ea      	uxtb	r2, r5
d0041590:	4293      	cmp	r3, r2
d0041592:	d8ea      	bhi.n	d004156a <proc_astroids+0x31a>
d0041594:	9e07      	ldr	r6, [sp, #28]
d0041596:	2403      	movs	r4, #3
d0041598:	9b05      	ldr	r3, [sp, #20]
d004159a:	f04f 0a00 	mov.w	sl, #0
d004159e:	f103 0920 	add.w	r9, r3, #32
d00415a2:	f1a3 0820 	sub.w	r8, r3, #32
d00415a6:	9b06      	ldr	r3, [sp, #24]
d00415a8:	9606      	str	r6, [sp, #24]
d00415aa:	4656      	mov	r6, sl
d00415ac:	f103 0520 	add.w	r5, r3, #32
d00415b0:	46a2      	mov	sl, r4
d00415b2:	461c      	mov	r4, r3
d00415b4:	b38e      	cbz	r6, d004161a <proc_astroids+0x3ca>
d00415b6:	4649      	mov	r1, r9
d00415b8:	4640      	mov	r0, r8
d00415ba:	f000 fe0b 	bl	d00421d4 <sbx_rng_range>
d00415be:	4602      	mov	r2, r0
d00415c0:	4629      	mov	r1, r5
d00415c2:	f1a4 0020 	sub.w	r0, r4, #32
d00415c6:	9204      	str	r2, [sp, #16]
d00415c8:	f000 fe04 	bl	d00421d4 <sbx_rng_range>
d00415cc:	9b02      	ldr	r3, [sp, #8]
d00415ce:	4601      	mov	r1, r0
d00415d0:	9a04      	ldr	r2, [sp, #16]
d00415d2:	3601      	adds	r6, #1
d00415d4:	fa03 f082 	sxtah	r0, r3, r2
d00415d8:	9b03      	ldr	r3, [sp, #12]
d00415da:	fa03 f181 	sxtah	r1, r3, r1
d00415de:	f000 f9cd 	bl	d004197c <spawnExplode>
d00415e2:	b2f2      	uxtb	r2, r6
d00415e4:	4552      	cmp	r2, sl
d00415e6:	d3e5      	bcc.n	d00415b4 <proc_astroids+0x364>
d00415e8:	9e06      	ldr	r6, [sp, #24]
d00415ea:	e641      	b.n	d0041270 <proc_astroids+0x20>
d00415ec:	4a17      	ldr	r2, [pc, #92]	; (d004164c <proc_astroids+0x3fc>)
d00415ee:	eb08 0306 	add.w	r3, r8, r6
d00415f2:	9902      	ldr	r1, [sp, #8]
d00415f4:	20a8      	movs	r0, #168	; 0xa8
d00415f6:	eb0b 03c3 	add.w	r3, fp, r3, lsl #3
d00415fa:	2401      	movs	r4, #1
d00415fc:	1851      	adds	r1, r2, r1
d00415fe:	ebc5 05c5 	rsb	r5, r5, r5, lsl #3
d0041602:	4a13      	ldr	r2, [pc, #76]	; (d0041650 <proc_astroids+0x400>)
d0041604:	710c      	strb	r4, [r1, #4]
d0041606:	7148      	strb	r0, [r1, #5]
d0041608:	eb02 0585 	add.w	r5, r2, r5, lsl #2
d004160c:	7b59      	ldrb	r1, [r3, #13]
d004160e:	2000      	movs	r0, #0
d0041610:	3901      	subs	r1, #1
d0041612:	b2c9      	uxtb	r1, r1
d0041614:	7359      	strb	r1, [r3, #13]
d0041616:	75a8      	strb	r0, [r5, #22]
d0041618:	e6f3      	b.n	d0041402 <proc_astroids+0x1b2>
d004161a:	9905      	ldr	r1, [sp, #20]
d004161c:	2601      	movs	r6, #1
d004161e:	4608      	mov	r0, r1
d0041620:	f000 fdd8 	bl	d00421d4 <sbx_rng_range>
d0041624:	4602      	mov	r2, r0
d0041626:	4621      	mov	r1, r4
d0041628:	4620      	mov	r0, r4
d004162a:	9204      	str	r2, [sp, #16]
d004162c:	f000 fdd2 	bl	d00421d4 <sbx_rng_range>
d0041630:	9b02      	ldr	r3, [sp, #8]
d0041632:	4601      	mov	r1, r0
d0041634:	9a04      	ldr	r2, [sp, #16]
d0041636:	fa03 f082 	sxtah	r0, r3, r2
d004163a:	9b03      	ldr	r3, [sp, #12]
d004163c:	fa03 f181 	sxtah	r1, r3, r1
d0041640:	f000 f99c 	bl	d004197c <spawnExplode>
d0041644:	4556      	cmp	r6, sl
d0041646:	d3b6      	bcc.n	d00415b6 <proc_astroids+0x366>
d0041648:	9e06      	ldr	r6, [sp, #24]
d004164a:	e611      	b.n	d0041270 <proc_astroids+0x20>
d004164c:	d0045100 	.word	0xd0045100
d0041650:	d0044544 	.word	0xd0044544
d0041654:	d004440c 	.word	0xd004440c
d0041658:	88888889 	.word	0x88888889
d004165c:	2001f000 	.word	0x2001f000
d0041660:	2c01      	cmp	r4, #1
d0041662:	d03b      	beq.n	d00416dc <proc_astroids+0x48c>
d0041664:	f89a 2015 	ldrb.w	r2, [sl, #21]
d0041668:	2005      	movs	r0, #5
d004166a:	2401      	movs	r4, #1
d004166c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041670:	f89a 2016 	ldrb.w	r2, [sl, #22]
d0041674:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041678:	f89a 2017 	ldrb.w	r2, [sl, #23]
d004167c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041680:	689b      	ldr	r3, [r3, #8]
d0041682:	689b      	ldr	r3, [r3, #8]
d0041684:	4798      	blx	r3
d0041686:	f89a 3014 	ldrb.w	r3, [sl, #20]
d004168a:	f89a 2015 	ldrb.w	r2, [sl, #21]
d004168e:	b269      	sxtb	r1, r5
d0041690:	2005      	movs	r0, #5
d0041692:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041696:	f89a 2016 	ldrb.w	r2, [sl, #22]
d004169a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004169e:	f89a 2017 	ldrb.w	r2, [sl, #23]
d00416a2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00416a6:	689b      	ldr	r3, [r3, #8]
d00416a8:	699b      	ldr	r3, [r3, #24]
d00416aa:	4798      	blx	r3
d00416ac:	f89a 3014 	ldrb.w	r3, [sl, #20]
d00416b0:	f89a 2015 	ldrb.w	r2, [sl, #21]
d00416b4:	2005      	movs	r0, #5
d00416b6:	f89a 1016 	ldrb.w	r1, [sl, #22]
d00416ba:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00416be:	f89a 2017 	ldrb.w	r2, [sl, #23]
d00416c2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00416c6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00416ca:	689b      	ldr	r3, [r3, #8]
d00416cc:	685b      	ldr	r3, [r3, #4]
d00416ce:	4798      	blx	r3
d00416d0:	e762      	b.n	d0041598 <proc_astroids+0x348>
d00416d2:	b009      	add	sp, #36	; 0x24
d00416d4:	ecbd 8b02 	vpop	{d8}
d00416d8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00416dc:	f89a 2015 	ldrb.w	r2, [sl, #21]
d00416e0:	2103      	movs	r1, #3
d00416e2:	2004      	movs	r0, #4
d00416e4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00416e8:	f89a 2016 	ldrb.w	r2, [sl, #22]
d00416ec:	ee08 1a10 	vmov	s16, r1
d00416f0:	9104      	str	r1, [sp, #16]
d00416f2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00416f6:	f89a 2017 	ldrb.w	r2, [sl, #23]
d00416fa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00416fe:	e6fd      	b.n	d00414fc <proc_astroids+0x2ac>

d0041700 <initFlames>:
d0041700:	b538      	push	{r3, r4, r5, lr}
d0041702:	4c06      	ldr	r4, [pc, #24]	; (d004171c <initFlames+0x1c>)
d0041704:	f504 65b0 	add.w	r5, r4, #1408	; 0x580
d0041708:	4620      	mov	r0, r4
d004170a:	342c      	adds	r4, #44	; 0x2c
d004170c:	222c      	movs	r2, #44	; 0x2c
d004170e:	2100      	movs	r1, #0
d0041710:	f001 f8ac 	bl	d004286c <memset>
d0041714:	42ac      	cmp	r4, r5
d0041716:	d1f7      	bne.n	d0041708 <initFlames+0x8>
d0041718:	bd38      	pop	{r3, r4, r5, pc}
d004171a:	bf00      	nop
d004171c:	d0046080 	.word	0xd0046080

d0041720 <initExplodes>:
d0041720:	b538      	push	{r3, r4, r5, lr}
d0041722:	4c06      	ldr	r4, [pc, #24]	; (d004173c <initExplodes+0x1c>)
d0041724:	f504 65b0 	add.w	r5, r4, #1408	; 0x580
d0041728:	4620      	mov	r0, r4
d004172a:	342c      	adds	r4, #44	; 0x2c
d004172c:	222c      	movs	r2, #44	; 0x2c
d004172e:	2100      	movs	r1, #0
d0041730:	f001 f89c 	bl	d004286c <memset>
d0041734:	42ac      	cmp	r4, r5
d0041736:	d1f7      	bne.n	d0041728 <initExplodes+0x8>
d0041738:	bd38      	pop	{r3, r4, r5, pc}
d004173a:	bf00      	nop
d004173c:	d0045740 	.word	0xd0045740

d0041740 <spawnFlame>:
d0041740:	4b38      	ldr	r3, [pc, #224]	; (d0041824 <spawnFlame+0xe4>)
d0041742:	681b      	ldr	r3, [r3, #0]
d0041744:	1e5a      	subs	r2, r3, #1
d0041746:	1c59      	adds	r1, r3, #1
d0041748:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d004174c:	2a00      	cmp	r2, #0
d004174e:	ed2d 8b02 	vpush	{d8}
d0041752:	b084      	sub	sp, #16
d0041754:	9303      	str	r3, [sp, #12]
d0041756:	9201      	str	r2, [sp, #4]
d0041758:	9102      	str	r1, [sp, #8]
d004175a:	da01      	bge.n	d0041760 <spawnFlame+0x20>
d004175c:	2223      	movs	r2, #35	; 0x23
d004175e:	9201      	str	r2, [sp, #4]
d0041760:	2b23      	cmp	r3, #35	; 0x23
d0041762:	dd01      	ble.n	d0041768 <spawnFlame+0x28>
d0041764:	2300      	movs	r3, #0
d0041766:	9303      	str	r3, [sp, #12]
d0041768:	af01      	add	r7, sp, #4
d004176a:	f10d 0a10 	add.w	sl, sp, #16
d004176e:	4e2e      	ldr	r6, [pc, #184]	; (d0041828 <spawnFlame+0xe8>)
d0041770:	252c      	movs	r5, #44	; 0x2c
d0041772:	f8df 90b8 	ldr.w	r9, [pc, #184]	; d004182c <spawnFlame+0xec>
d0041776:	f8df 80b8 	ldr.w	r8, [pc, #184]	; d0041830 <spawnFlame+0xf0>
d004177a:	2300      	movs	r3, #0
d004177c:	e001      	b.n	d0041782 <spawnFlame+0x42>
d004177e:	2b20      	cmp	r3, #32
d0041780:	d047      	beq.n	d0041812 <spawnFlame+0xd2>
d0041782:	fb05 6403 	mla	r4, r5, r3, r6
d0041786:	3301      	adds	r3, #1
d0041788:	f894 2022 	ldrb.w	r2, [r4, #34]	; 0x22
d004178c:	f002 00ff 	and.w	r0, r2, #255	; 0xff
d0041790:	2a00      	cmp	r2, #0
d0041792:	d1f4      	bne.n	d004177e <spawnFlame+0x3e>
d0041794:	2311      	movs	r3, #17
d0041796:	683a      	ldr	r2, [r7, #0]
d0041798:	f884 3022 	strb.w	r3, [r4, #34]	; 0x22
d004179c:	eb08 01c2 	add.w	r1, r8, r2, lsl #3
d00417a0:	f884 0024 	strb.w	r0, [r4, #36]	; 0x24
d00417a4:	b252      	sxtb	r2, r2
d00417a6:	f8b9 3014 	ldrh.w	r3, [r9, #20]
d00417aa:	edd1 8a00 	vldr	s17, [r1]
d00417ae:	b21b      	sxth	r3, r3
d00417b0:	ed91 8a01 	vldr	s16, [r1, #4]
d00417b4:	210f      	movs	r1, #15
d00417b6:	3318      	adds	r3, #24
d00417b8:	ee07 3a90 	vmov	s15, r3
d00417bc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00417c0:	edc4 7a03 	vstr	s15, [r4, #12]
d00417c4:	f8b9 3016 	ldrh.w	r3, [r9, #22]
d00417c8:	b21b      	sxth	r3, r3
d00417ca:	3318      	adds	r3, #24
d00417cc:	ee07 3a90 	vmov	s15, r3
d00417d0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00417d4:	edc4 7a04 	vstr	s15, [r4, #16]
d00417d8:	f884 2020 	strb.w	r2, [r4, #32]
d00417dc:	f000 fcfa 	bl	d00421d4 <sbx_rng_range>
d00417e0:	ee78 7a08 	vadd.f32	s15, s16, s16
d00417e4:	ee78 6aa8 	vadd.f32	s13, s17, s17
d00417e8:	b240      	sxtb	r0, r0
d00417ea:	eeb3 7a06 	vmov.f32	s14, #54	; 0x41b00000  22.0
d00417ee:	f884 0020 	strb.w	r0, [r4, #32]
d00417f2:	edc4 6a00 	vstr	s13, [r4]
d00417f6:	edc4 7a01 	vstr	s15, [r4, #4]
d00417fa:	edd4 7a03 	vldr	s15, [r4, #12]
d00417fe:	eee8 7ac7 	vfms.f32	s15, s17, s14
d0041802:	edc4 7a03 	vstr	s15, [r4, #12]
d0041806:	edd4 7a04 	vldr	s15, [r4, #16]
d004180a:	eee8 7a07 	vfma.f32	s15, s16, s14
d004180e:	edc4 7a04 	vstr	s15, [r4, #16]
d0041812:	3704      	adds	r7, #4
d0041814:	4557      	cmp	r7, sl
d0041816:	d1b0      	bne.n	d004177a <spawnFlame+0x3a>
d0041818:	b004      	add	sp, #16
d004181a:	ecbd 8b02 	vpop	{d8}
d004181e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0041822:	bf00      	nop
d0041824:	d00450e4 	.word	0xd00450e4
d0041828:	d0046080 	.word	0xd0046080
d004182c:	d00450c0 	.word	0xd00450c0
d0041830:	d00437b4 	.word	0xd00437b4

d0041834 <doFlames>:
d0041834:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0041836:	2400      	movs	r4, #0
d0041838:	4d4a      	ldr	r5, [pc, #296]	; (d0041964 <doFlames+0x130>)
d004183a:	4e4b      	ldr	r6, [pc, #300]	; (d0041968 <doFlames+0x134>)
d004183c:	ed2d 8b02 	vpush	{d8}
d0041840:	eddf 8a4a 	vldr	s17, [pc, #296]	; d004196c <doFlames+0x138>
d0041844:	ed9f 8a4a 	vldr	s16, [pc, #296]	; d0041970 <doFlames+0x13c>
d0041848:	232c      	movs	r3, #44	; 0x2c
d004184a:	fb03 5304 	mla	r3, r3, r4, r5
d004184e:	f893 2022 	ldrb.w	r2, [r3, #34]	; 0x22
d0041852:	2a00      	cmp	r2, #0
d0041854:	d07f      	beq.n	d0041956 <doFlames+0x122>
d0041856:	f893 2022 	ldrb.w	r2, [r3, #34]	; 0x22
d004185a:	eebb 7a04 	vmov.f32	s14, #180	; 0xc1a00000 -20.0
d004185e:	3a01      	subs	r2, #1
d0041860:	b2d2      	uxtb	r2, r2
d0041862:	f883 2022 	strb.w	r2, [r3, #34]	; 0x22
d0041866:	edd3 6a00 	vldr	s13, [r3]
d004186a:	edd3 7a03 	vldr	s15, [r3, #12]
d004186e:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0041872:	edc3 7a03 	vstr	s15, [r3, #12]
d0041876:	edd3 6a01 	vldr	s13, [r3, #4]
d004187a:	edd3 7a04 	vldr	s15, [r3, #16]
d004187e:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0041882:	edc3 7a04 	vstr	s15, [r3, #16]
d0041886:	edd3 7a03 	vldr	s15, [r3, #12]
d004188a:	eef4 7ac7 	vcmpe.f32	s15, s14
d004188e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041892:	d501      	bpl.n	d0041898 <doFlames+0x64>
d0041894:	edc3 8a03 	vstr	s17, [r3, #12]
d0041898:	232c      	movs	r3, #44	; 0x2c
d004189a:	fb03 5304 	mla	r3, r3, r4, r5
d004189e:	edd3 7a03 	vldr	s15, [r3, #12]
d00418a2:	eef4 7ae8 	vcmpe.f32	s15, s17
d00418a6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00418aa:	dd01      	ble.n	d00418b0 <doFlames+0x7c>
d00418ac:	4a31      	ldr	r2, [pc, #196]	; (d0041974 <doFlames+0x140>)
d00418ae:	60da      	str	r2, [r3, #12]
d00418b0:	232c      	movs	r3, #44	; 0x2c
d00418b2:	eefb 7a04 	vmov.f32	s15, #180	; 0xc1a00000 -20.0
d00418b6:	fb03 5304 	mla	r3, r3, r4, r5
d00418ba:	ed93 7a04 	vldr	s14, [r3, #16]
d00418be:	eeb4 7ae7 	vcmpe.f32	s14, s15
d00418c2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00418c6:	d501      	bpl.n	d00418cc <doFlames+0x98>
d00418c8:	ed83 8a04 	vstr	s16, [r3, #16]
d00418cc:	232c      	movs	r3, #44	; 0x2c
d00418ce:	fb03 5304 	mla	r3, r3, r4, r5
d00418d2:	edd3 7a04 	vldr	s15, [r3, #16]
d00418d6:	eef4 7ac8 	vcmpe.f32	s15, s16
d00418da:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00418de:	dd01      	ble.n	d00418e4 <doFlames+0xb0>
d00418e0:	4a24      	ldr	r2, [pc, #144]	; (d0041974 <doFlames+0x140>)
d00418e2:	611a      	str	r2, [r3, #16]
d00418e4:	232c      	movs	r3, #44	; 0x2c
d00418e6:	2102      	movs	r1, #2
d00418e8:	fb03 5304 	mla	r3, r3, r4, r5
d00418ec:	edd3 7a03 	vldr	s15, [r3, #12]
d00418f0:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00418f4:	ee17 2a90 	vmov	r2, s15
d00418f8:	b212      	sxth	r2, r2
d00418fa:	831a      	strh	r2, [r3, #24]
d00418fc:	edd3 7a04 	vldr	s15, [r3, #16]
d0041900:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041904:	ee17 2a90 	vmov	r2, s15
d0041908:	b212      	sxth	r2, r2
d004190a:	835a      	strh	r2, [r3, #26]
d004190c:	8b1a      	ldrh	r2, [r3, #24]
d004190e:	82b2      	strh	r2, [r6, #20]
d0041910:	8b5a      	ldrh	r2, [r3, #26]
d0041912:	82f2      	strh	r2, [r6, #22]
d0041914:	7131      	strb	r1, [r6, #4]
d0041916:	f893 2024 	ldrb.w	r2, [r3, #36]	; 0x24
d004191a:	b2d2      	uxtb	r2, r2
d004191c:	71b2      	strb	r2, [r6, #6]
d004191e:	f893 2024 	ldrb.w	r2, [r3, #36]	; 0x24
d0041922:	3205      	adds	r2, #5
d0041924:	b2d2      	uxtb	r2, r2
d0041926:	f883 2024 	strb.w	r2, [r3, #36]	; 0x24
d004192a:	f893 2024 	ldrb.w	r2, [r3, #36]	; 0x24
d004192e:	2a64      	cmp	r2, #100	; 0x64
d0041930:	d902      	bls.n	d0041938 <doFlames+0x104>
d0041932:	2264      	movs	r2, #100	; 0x64
d0041934:	f883 2024 	strb.w	r2, [r3, #36]	; 0x24
d0041938:	4a0f      	ldr	r2, [pc, #60]	; (d0041978 <doFlames+0x144>)
d004193a:	4630      	mov	r0, r6
d004193c:	7b13      	ldrb	r3, [r2, #12]
d004193e:	7b57      	ldrb	r7, [r2, #13]
d0041940:	7b91      	ldrb	r1, [r2, #14]
d0041942:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
d0041946:	7bd2      	ldrb	r2, [r2, #15]
d0041948:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004194c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041950:	685b      	ldr	r3, [r3, #4]
d0041952:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0041954:	4798      	blx	r3
d0041956:	3401      	adds	r4, #1
d0041958:	2c20      	cmp	r4, #32
d004195a:	f47f af75 	bne.w	d0041848 <doFlames+0x14>
d004195e:	ecbd 8b02 	vpop	{d8}
d0041962:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0041964:	d0046080 	.word	0xd0046080
d0041968:	d0045fc0 	.word	0xd0045fc0
d004196c:	43f00000 	.word	0x43f00000
d0041970:	43a00000 	.word	0x43a00000
d0041974:	c1a00000 	.word	0xc1a00000
d0041978:	2001f000 	.word	0x2001f000

d004197c <spawnExplode>:
d004197c:	b4f0      	push	{r4, r5, r6, r7}
d004197e:	2300      	movs	r3, #0
d0041980:	4f0d      	ldr	r7, [pc, #52]	; (d00419b8 <spawnExplode+0x3c>)
d0041982:	262c      	movs	r6, #44	; 0x2c
d0041984:	e001      	b.n	d004198a <spawnExplode+0xe>
d0041986:	2b20      	cmp	r3, #32
d0041988:	d013      	beq.n	d00419b2 <spawnExplode+0x36>
d004198a:	fb06 7203 	mla	r2, r6, r3, r7
d004198e:	3301      	adds	r3, #1
d0041990:	f892 4022 	ldrb.w	r4, [r2, #34]	; 0x22
d0041994:	f004 05ff 	and.w	r5, r4, #255	; 0xff
d0041998:	2c00      	cmp	r4, #0
d004199a:	d1f4      	bne.n	d0041986 <spawnExplode+0xa>
d004199c:	2314      	movs	r3, #20
d004199e:	f882 3022 	strb.w	r3, [r2, #34]	; 0x22
d00419a2:	f882 5020 	strb.w	r5, [r2, #32]
d00419a6:	f882 5024 	strb.w	r5, [r2, #36]	; 0x24
d00419aa:	8310      	strh	r0, [r2, #24]
d00419ac:	8351      	strh	r1, [r2, #26]
d00419ae:	f882 5020 	strb.w	r5, [r2, #32]
d00419b2:	bcf0      	pop	{r4, r5, r6, r7}
d00419b4:	4770      	bx	lr
d00419b6:	bf00      	nop
d00419b8:	d0045740 	.word	0xd0045740

d00419bc <LoadGraphics>:
d00419bc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00419c0:	f44f 3061 	mov.w	r0, #230400	; 0x38400
d00419c4:	b082      	sub	sp, #8
d00419c6:	4c2e      	ldr	r4, [pc, #184]	; (d0041a80 <LoadGraphics+0xc4>)
d00419c8:	f000 ff2c 	bl	d0042824 <malloc>
d00419cc:	2500      	movs	r5, #0
d00419ce:	2260      	movs	r2, #96	; 0x60
d00419d0:	4603      	mov	r3, r0
d00419d2:	f44f 71f0 	mov.w	r1, #480	; 0x1e0
d00419d6:	9001      	str	r0, [sp, #4]
d00419d8:	2640      	movs	r6, #64	; 0x40
d00419da:	6023      	str	r3, [r4, #0]
d00419dc:	f44f 7800 	mov.w	r8, #512	; 0x200
d00419e0:	81a1      	strh	r1, [r4, #12]
d00419e2:	27c0      	movs	r7, #192	; 0xc0
d00419e4:	81e1      	strh	r1, [r4, #14]
d00419e6:	4827      	ldr	r0, [pc, #156]	; (d0041a84 <LoadGraphics+0xc8>)
d00419e8:	8222      	strh	r2, [r4, #16]
d00419ea:	8262      	strh	r2, [r4, #18]
d00419ec:	82a5      	strh	r5, [r4, #20]
d00419ee:	82e5      	strh	r5, [r4, #22]
d00419f0:	6821      	ldr	r1, [r4, #0]
d00419f2:	f7fe fb23 	bl	d004003c <LoadPPB>
d00419f6:	f44f 30c0 	mov.w	r0, #98304	; 0x18000
d00419fa:	f000 ff13 	bl	d0042824 <malloc>
d00419fe:	9001      	str	r0, [sp, #4]
d0041a00:	9b01      	ldr	r3, [sp, #4]
d0041a02:	4821      	ldr	r0, [pc, #132]	; (d0041a88 <LoadGraphics+0xcc>)
d0041a04:	6223      	str	r3, [r4, #32]
d0041a06:	f8a4 802c 	strh.w	r8, [r4, #44]	; 0x2c
d0041a0a:	85e7      	strh	r7, [r4, #46]	; 0x2e
d0041a0c:	8626      	strh	r6, [r4, #48]	; 0x30
d0041a0e:	8666      	strh	r6, [r4, #50]	; 0x32
d0041a10:	86a5      	strh	r5, [r4, #52]	; 0x34
d0041a12:	86e5      	strh	r5, [r4, #54]	; 0x36
d0041a14:	6a21      	ldr	r1, [r4, #32]
d0041a16:	f7fe fb11 	bl	d004003c <LoadPPB>
d0041a1a:	f44f 30c0 	mov.w	r0, #98304	; 0x18000
d0041a1e:	f000 ff01 	bl	d0042824 <malloc>
d0041a22:	9001      	str	r0, [sp, #4]
d0041a24:	9b01      	ldr	r3, [sp, #4]
d0041a26:	4819      	ldr	r0, [pc, #100]	; (d0041a8c <LoadGraphics+0xd0>)
d0041a28:	6423      	str	r3, [r4, #64]	; 0x40
d0041a2a:	f8a4 804c 	strh.w	r8, [r4, #76]	; 0x4c
d0041a2e:	f8a4 704e 	strh.w	r7, [r4, #78]	; 0x4e
d0041a32:	f8a4 6050 	strh.w	r6, [r4, #80]	; 0x50
d0041a36:	f8a4 6052 	strh.w	r6, [r4, #82]	; 0x52
d0041a3a:	f8a4 5054 	strh.w	r5, [r4, #84]	; 0x54
d0041a3e:	f8a4 5056 	strh.w	r5, [r4, #86]	; 0x56
d0041a42:	6c21      	ldr	r1, [r4, #64]	; 0x40
d0041a44:	f7fe fafa 	bl	d004003c <LoadPPB>
d0041a48:	f44f 4080 	mov.w	r0, #16384	; 0x4000
d0041a4c:	f000 feea 	bl	d0042824 <malloc>
d0041a50:	2220      	movs	r2, #32
d0041a52:	4603      	mov	r3, r0
d0041a54:	f44f 7180 	mov.w	r1, #256	; 0x100
d0041a58:	480d      	ldr	r0, [pc, #52]	; (d0041a90 <LoadGraphics+0xd4>)
d0041a5a:	6623      	str	r3, [r4, #96]	; 0x60
d0041a5c:	f8a4 106c 	strh.w	r1, [r4, #108]	; 0x6c
d0041a60:	f8a4 606e 	strh.w	r6, [r4, #110]	; 0x6e
d0041a64:	f8a4 2070 	strh.w	r2, [r4, #112]	; 0x70
d0041a68:	f8a4 2072 	strh.w	r2, [r4, #114]	; 0x72
d0041a6c:	f8a4 5074 	strh.w	r5, [r4, #116]	; 0x74
d0041a70:	f8a4 5076 	strh.w	r5, [r4, #118]	; 0x76
d0041a74:	6e21      	ldr	r1, [r4, #96]	; 0x60
d0041a76:	b002      	add	sp, #8
d0041a78:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0041a7c:	f7fe bade 	b.w	d004003c <LoadPPB>
d0041a80:	d0045100 	.word	0xd0045100
d0041a84:	d0043978 	.word	0xd0043978
d0041a88:	d0043990 	.word	0xd0043990
d0041a8c:	d00439ac 	.word	0xd00439ac
d0041a90:	d00439c8 	.word	0xd00439c8

d0041a94 <LoadShipGfx>:
d0041a94:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0041a98:	f44f 3010 	mov.w	r0, #147456	; 0x24000
d0041a9c:	2400      	movs	r4, #0
d0041a9e:	f000 fec1 	bl	d0042824 <malloc>
d0041aa2:	2540      	movs	r5, #64	; 0x40
d0041aa4:	4b3c      	ldr	r3, [pc, #240]	; (d0041b98 <LoadShipGfx+0x104>)
d0041aa6:	4602      	mov	r2, r0
d0041aa8:	f04f 090a 	mov.w	r9, #10
d0041aac:	f44f 77c0 	mov.w	r7, #384	; 0x180
d0041ab0:	601a      	str	r2, [r3, #0]
d0041ab2:	f04f 0860 	mov.w	r8, #96	; 0x60
d0041ab6:	81df      	strh	r7, [r3, #14]
d0041ab8:	26a0      	movs	r6, #160	; 0xa0
d0041aba:	819f      	strh	r7, [r3, #12]
d0041abc:	4837      	ldr	r0, [pc, #220]	; (d0041b9c <LoadShipGfx+0x108>)
d0041abe:	825d      	strh	r5, [r3, #18]
d0041ac0:	821d      	strh	r5, [r3, #16]
d0041ac2:	76dc      	strb	r4, [r3, #27]
d0041ac4:	f8a3 9014 	strh.w	r9, [r3, #20]
d0041ac8:	f8a3 9016 	strh.w	r9, [r3, #22]
d0041acc:	6819      	ldr	r1, [r3, #0]
d0041ace:	f7fe fab5 	bl	d004003c <LoadPPB>
d0041ad2:	f44f 3061 	mov.w	r0, #230400	; 0x38400
d0041ad6:	f000 fea5 	bl	d0042824 <malloc>
d0041ada:	4b31      	ldr	r3, [pc, #196]	; (d0041ba0 <LoadShipGfx+0x10c>)
d0041adc:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0041ae0:	210c      	movs	r1, #12
d0041ae2:	6018      	str	r0, [r3, #0]
d0041ae4:	81da      	strh	r2, [r3, #14]
d0041ae6:	482f      	ldr	r0, [pc, #188]	; (d0041ba4 <LoadShipGfx+0x110>)
d0041ae8:	819a      	strh	r2, [r3, #12]
d0041aea:	f8a3 8012 	strh.w	r8, [r3, #18]
d0041aee:	f8a3 8010 	strh.w	r8, [r3, #16]
d0041af2:	76d9      	strb	r1, [r3, #27]
d0041af4:	f8a3 9014 	strh.w	r9, [r3, #20]
d0041af8:	f8a3 9016 	strh.w	r9, [r3, #22]
d0041afc:	6819      	ldr	r1, [r3, #0]
d0041afe:	f7fe fa9d 	bl	d004003c <LoadPPB>
d0041b02:	f44f 5010 	mov.w	r0, #9216	; 0x2400
d0041b06:	f000 fe8d 	bl	d0042824 <malloc>
d0041b0a:	4b27      	ldr	r3, [pc, #156]	; (d0041ba8 <LoadShipGfx+0x114>)
d0041b0c:	4602      	mov	r2, r0
d0041b0e:	2110      	movs	r1, #16
d0041b10:	4826      	ldr	r0, [pc, #152]	; (d0041bac <LoadShipGfx+0x118>)
d0041b12:	601a      	str	r2, [r3, #0]
d0041b14:	f8a3 800e 	strh.w	r8, [r3, #14]
d0041b18:	f8a3 800c 	strh.w	r8, [r3, #12]
d0041b1c:	8259      	strh	r1, [r3, #18]
d0041b1e:	8219      	strh	r1, [r3, #16]
d0041b20:	76dc      	strb	r4, [r3, #27]
d0041b22:	6819      	ldr	r1, [r3, #0]
d0041b24:	f7fe fa8a 	bl	d004003c <LoadPPB>
d0041b28:	f44f 6048 	mov.w	r0, #3200	; 0xc80
d0041b2c:	f000 fe7a 	bl	d0042824 <malloc>
d0041b30:	4b1f      	ldr	r3, [pc, #124]	; (d0041bb0 <LoadShipGfx+0x11c>)
d0041b32:	2214      	movs	r2, #20
d0041b34:	4601      	mov	r1, r0
d0041b36:	481f      	ldr	r0, [pc, #124]	; (d0041bb4 <LoadShipGfx+0x120>)
d0041b38:	6019      	str	r1, [r3, #0]
d0041b3a:	81da      	strh	r2, [r3, #14]
d0041b3c:	819e      	strh	r6, [r3, #12]
d0041b3e:	825a      	strh	r2, [r3, #18]
d0041b40:	821a      	strh	r2, [r3, #16]
d0041b42:	76dc      	strb	r4, [r3, #27]
d0041b44:	6819      	ldr	r1, [r3, #0]
d0041b46:	f7fe fa79 	bl	d004003c <LoadPPB>
d0041b4a:	f44f 4048 	mov.w	r0, #51200	; 0xc800
d0041b4e:	f000 fe69 	bl	d0042824 <malloc>
d0041b52:	4b19      	ldr	r3, [pc, #100]	; (d0041bb8 <LoadShipGfx+0x124>)
d0041b54:	2250      	movs	r2, #80	; 0x50
d0041b56:	f44f 71a0 	mov.w	r1, #320	; 0x140
d0041b5a:	6018      	str	r0, [r3, #0]
d0041b5c:	81de      	strh	r6, [r3, #14]
d0041b5e:	26c0      	movs	r6, #192	; 0xc0
d0041b60:	8199      	strh	r1, [r3, #12]
d0041b62:	4816      	ldr	r0, [pc, #88]	; (d0041bbc <LoadShipGfx+0x128>)
d0041b64:	821a      	strh	r2, [r3, #16]
d0041b66:	825a      	strh	r2, [r3, #18]
d0041b68:	76dc      	strb	r4, [r3, #27]
d0041b6a:	6819      	ldr	r1, [r3, #0]
d0041b6c:	f7fe fa66 	bl	d004003c <LoadPPB>
d0041b70:	f44f 3090 	mov.w	r0, #73728	; 0x12000
d0041b74:	f000 fe56 	bl	d0042824 <malloc>
d0041b78:	4b11      	ldr	r3, [pc, #68]	; (d0041bc0 <LoadShipGfx+0x12c>)
d0041b7a:	4602      	mov	r2, r0
d0041b7c:	2104      	movs	r1, #4
d0041b7e:	4811      	ldr	r0, [pc, #68]	; (d0041bc4 <LoadShipGfx+0x130>)
d0041b80:	601a      	str	r2, [r3, #0]
d0041b82:	81de      	strh	r6, [r3, #14]
d0041b84:	819f      	strh	r7, [r3, #12]
d0041b86:	7699      	strb	r1, [r3, #26]
d0041b88:	821d      	strh	r5, [r3, #16]
d0041b8a:	825d      	strh	r5, [r3, #18]
d0041b8c:	76dc      	strb	r4, [r3, #27]
d0041b8e:	6819      	ldr	r1, [r3, #0]
d0041b90:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0041b94:	f7fe ba52 	b.w	d004003c <LoadPPB>
d0041b98:	d00450c0 	.word	0xd00450c0
d0041b9c:	d00439e0 	.word	0xd00439e0
d0041ba0:	d0045080 	.word	0xd0045080
d0041ba4:	d00439f0 	.word	0xd00439f0
d0041ba8:	d0044ee0 	.word	0xd0044ee0
d0041bac:	d0043a04 	.word	0xd0043a04
d0041bb0:	d0045fc0 	.word	0xd0045fc0
d0041bb4:	d0043a1c 	.word	0xd0043a1c
d0041bb8:	d0044520 	.word	0xd0044520
d0041bbc:	d0043a2c 	.word	0xd0043a2c
d0041bc0:	d0045ce0 	.word	0xd0045ce0
d0041bc4:	d0043a3c 	.word	0xd0043a3c

d0041bc8 <LoadCommonGameGraphics>:
d0041bc8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0041bca:	f44f 4020 	mov.w	r0, #40960	; 0xa000
d0041bce:	2680      	movs	r6, #128	; 0x80
d0041bd0:	f000 fe28 	bl	d0042824 <malloc>
d0041bd4:	2700      	movs	r7, #0
d0041bd6:	4b21      	ldr	r3, [pc, #132]	; (d0041c5c <LoadCommonGameGraphics+0x94>)
d0041bd8:	2240      	movs	r2, #64	; 0x40
d0041bda:	f44f 71a0 	mov.w	r1, #320	; 0x140
d0041bde:	2410      	movs	r4, #16
d0041be0:	6018      	str	r0, [r3, #0]
d0041be2:	25c0      	movs	r5, #192	; 0xc0
d0041be4:	81de      	strh	r6, [r3, #14]
d0041be6:	481e      	ldr	r0, [pc, #120]	; (d0041c60 <LoadCommonGameGraphics+0x98>)
d0041be8:	8199      	strh	r1, [r3, #12]
d0041bea:	825a      	strh	r2, [r3, #18]
d0041bec:	821a      	strh	r2, [r3, #16]
d0041bee:	76df      	strb	r7, [r3, #27]
d0041bf0:	6819      	ldr	r1, [r3, #0]
d0041bf2:	f7fe fa23 	bl	d004003c <LoadPPB>
d0041bf6:	f44f 40c0 	mov.w	r0, #24576	; 0x6000
d0041bfa:	f000 fe13 	bl	d0042824 <malloc>
d0041bfe:	4b19      	ldr	r3, [pc, #100]	; (d0041c64 <LoadCommonGameGraphics+0x9c>)
d0041c00:	4602      	mov	r2, r0
d0041c02:	4819      	ldr	r0, [pc, #100]	; (d0041c68 <LoadCommonGameGraphics+0xa0>)
d0041c04:	601a      	str	r2, [r3, #0]
d0041c06:	81dd      	strh	r5, [r3, #14]
d0041c08:	819e      	strh	r6, [r3, #12]
d0041c0a:	821c      	strh	r4, [r3, #16]
d0041c0c:	825c      	strh	r4, [r3, #18]
d0041c0e:	76df      	strb	r7, [r3, #27]
d0041c10:	6819      	ldr	r1, [r3, #0]
d0041c12:	f7fe fa13 	bl	d004003c <LoadPPB>
d0041c16:	f44f 4010 	mov.w	r0, #36864	; 0x9000
d0041c1a:	f000 fe03 	bl	d0042824 <malloc>
d0041c1e:	4b13      	ldr	r3, [pc, #76]	; (d0041c6c <LoadCommonGameGraphics+0xa4>)
d0041c20:	4602      	mov	r2, r0
d0041c22:	2120      	movs	r1, #32
d0041c24:	4812      	ldr	r0, [pc, #72]	; (d0041c70 <LoadCommonGameGraphics+0xa8>)
d0041c26:	601a      	str	r2, [r3, #0]
d0041c28:	819d      	strh	r5, [r3, #12]
d0041c2a:	81dd      	strh	r5, [r3, #14]
d0041c2c:	2530      	movs	r5, #48	; 0x30
d0041c2e:	8259      	strh	r1, [r3, #18]
d0041c30:	8219      	strh	r1, [r3, #16]
d0041c32:	6819      	ldr	r1, [r3, #0]
d0041c34:	f7fe fa02 	bl	d004003c <LoadPPB>
d0041c38:	f44f 7040 	mov.w	r0, #768	; 0x300
d0041c3c:	f000 fdf2 	bl	d0042824 <malloc>
d0041c40:	4b0c      	ldr	r3, [pc, #48]	; (d0041c74 <LoadCommonGameGraphics+0xac>)
d0041c42:	4602      	mov	r2, r0
d0041c44:	2108      	movs	r1, #8
d0041c46:	480c      	ldr	r0, [pc, #48]	; (d0041c78 <LoadCommonGameGraphics+0xb0>)
d0041c48:	601a      	str	r2, [r3, #0]
d0041c4a:	81dc      	strh	r4, [r3, #14]
d0041c4c:	819d      	strh	r5, [r3, #12]
d0041c4e:	825c      	strh	r4, [r3, #18]
d0041c50:	8219      	strh	r1, [r3, #16]
d0041c52:	6819      	ldr	r1, [r3, #0]
d0041c54:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0041c58:	f7fe b9f0 	b.w	d004003c <LoadPPB>
d0041c5c:	d0046060 	.word	0xd0046060
d0041c60:	d0043a4c 	.word	0xd0043a4c
d0041c64:	d0046000 	.word	0xd0046000
d0041c68:	d0043a5c 	.word	0xd0043a5c
d0041c6c:	d0045720 	.word	0xd0045720
d0041c70:	d0043a70 	.word	0xd0043a70
d0041c74:	d0045cc0 	.word	0xd0045cc0
d0041c78:	d0043a84 	.word	0xd0043a84

d0041c7c <drawPowerHealthBar>:
d0041c7c:	4b4b      	ldr	r3, [pc, #300]	; (d0041dac <drawPowerHealthBar+0x130>)
d0041c7e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041c82:	781b      	ldrb	r3, [r3, #0]
d0041c84:	b083      	sub	sp, #12
d0041c86:	2b00      	cmp	r3, #0
d0041c88:	d07c      	beq.n	d0041d84 <drawPowerHealthBar+0x108>
d0041c8a:	4b49      	ldr	r3, [pc, #292]	; (d0041db0 <drawPowerHealthBar+0x134>)
d0041c8c:	f993 3000 	ldrsb.w	r3, [r3]
d0041c90:	b29a      	uxth	r2, r3
d0041c92:	2358      	movs	r3, #88	; 0x58
d0041c94:	4847      	ldr	r0, [pc, #284]	; (d0041db4 <drawPowerHealthBar+0x138>)
d0041c96:	2101      	movs	r1, #1
d0041c98:	fb03 f302 	mul.w	r3, r3, r2
d0041c9c:	f8df b118 	ldr.w	fp, [pc, #280]	; d0041db8 <drawPowerHealthBar+0x13c>
d0041ca0:	fba0 2303 	umull	r2, r3, r0, r3
d0041ca4:	f88b 101b 	strb.w	r1, [fp, #27]
d0041ca8:	f3c3 2207 	ubfx	r2, r3, #8, #8
d0041cac:	f413 4f7f 	tst.w	r3, #65280	; 0xff00
d0041cb0:	f3c3 1542 	ubfx	r5, r3, #5, #3
d0041cb4:	9201      	str	r2, [sp, #4]
d0041cb6:	d074      	beq.n	d0041da2 <drawPowerHealthBar+0x126>
d0041cb8:	1e53      	subs	r3, r2, #1
d0041cba:	f105 07d4 	add.w	r7, r5, #212	; 0xd4
d0041cbe:	f8df a0fc 	ldr.w	sl, [pc, #252]	; d0041dbc <drawPowerHealthBar+0x140>
d0041cc2:	f44f 7693 	mov.w	r6, #294	; 0x126
d0041cc6:	b2db      	uxtb	r3, r3
d0041cc8:	46b9      	mov	r9, r7
d0041cca:	46d8      	mov	r8, fp
d0041ccc:	eb05 05c3 	add.w	r5, r5, r3, lsl #3
d0041cd0:	35dc      	adds	r5, #220	; 0xdc
d0041cd2:	fa0f f389 	sxth.w	r3, r9
d0041cd6:	f109 0908 	add.w	r9, r9, #8
d0041cda:	4640      	mov	r0, r8
d0041cdc:	f8ab 3014 	strh.w	r3, [fp, #20]
d0041ce0:	fa1f f989 	uxth.w	r9, r9
d0041ce4:	f8ab 6016 	strh.w	r6, [fp, #22]
d0041ce8:	f89a 400c 	ldrb.w	r4, [sl, #12]
d0041cec:	f89a 100d 	ldrb.w	r1, [sl, #13]
d0041cf0:	f89a 200e 	ldrb.w	r2, [sl, #14]
d0041cf4:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d0041cf8:	f89a 300f 	ldrb.w	r3, [sl, #15]
d0041cfc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0041d00:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0041d04:	685b      	ldr	r3, [r3, #4]
d0041d06:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0041d08:	4798      	blx	r3
d0041d0a:	454d      	cmp	r5, r9
d0041d0c:	d1e1      	bne.n	d0041cd2 <drawPowerHealthBar+0x56>
d0041d0e:	f44f 7493 	mov.w	r4, #294	; 0x126
d0041d12:	2200      	movs	r2, #0
d0041d14:	23d4      	movs	r3, #212	; 0xd4
d0041d16:	4828      	ldr	r0, [pc, #160]	; (d0041db8 <drawPowerHealthBar+0x13c>)
d0041d18:	f88b 201b 	strb.w	r2, [fp, #27]
d0041d1c:	f8ab 3014 	strh.w	r3, [fp, #20]
d0041d20:	f8ab 4016 	strh.w	r4, [fp, #22]
d0041d24:	f89a 300c 	ldrb.w	r3, [sl, #12]
d0041d28:	f89a 200d 	ldrb.w	r2, [sl, #13]
d0041d2c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041d30:	f89a 200e 	ldrb.w	r2, [sl, #14]
d0041d34:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041d38:	f89a 200f 	ldrb.w	r2, [sl, #15]
d0041d3c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041d40:	685b      	ldr	r3, [r3, #4]
d0041d42:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0041d44:	4798      	blx	r3
d0041d46:	9a01      	ldr	r2, [sp, #4]
d0041d48:	2302      	movs	r3, #2
d0041d4a:	481b      	ldr	r0, [pc, #108]	; (d0041db8 <drawPowerHealthBar+0x13c>)
d0041d4c:	eb07 07c2 	add.w	r7, r7, r2, lsl #3
d0041d50:	f88b 301b 	strb.w	r3, [fp, #27]
d0041d54:	f8ab 7014 	strh.w	r7, [fp, #20]
d0041d58:	f8ab 4016 	strh.w	r4, [fp, #22]
d0041d5c:	f89a 300c 	ldrb.w	r3, [sl, #12]
d0041d60:	f89a 200d 	ldrb.w	r2, [sl, #13]
d0041d64:	f89a 100e 	ldrb.w	r1, [sl, #14]
d0041d68:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041d6c:	f89a 200f 	ldrb.w	r2, [sl, #15]
d0041d70:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0041d74:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041d78:	685b      	ldr	r3, [r3, #4]
d0041d7a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0041d7c:	b003      	add	sp, #12
d0041d7e:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041d82:	4718      	bx	r3
d0041d84:	4a0a      	ldr	r2, [pc, #40]	; (d0041db0 <drawPowerHealthBar+0x134>)
d0041d86:	f992 3000 	ldrsb.w	r3, [r2]
d0041d8a:	4283      	cmp	r3, r0
d0041d8c:	da03      	bge.n	d0041d96 <drawPowerHealthBar+0x11a>
d0041d8e:	3301      	adds	r3, #1
d0041d90:	b25b      	sxtb	r3, r3
d0041d92:	7013      	strb	r3, [r2, #0]
d0041d94:	e77c      	b.n	d0041c90 <drawPowerHealthBar+0x14>
d0041d96:	f77f af7b 	ble.w	d0041c90 <drawPowerHealthBar+0x14>
d0041d9a:	3b01      	subs	r3, #1
d0041d9c:	b25b      	sxtb	r3, r3
d0041d9e:	7013      	strb	r3, [r2, #0]
d0041da0:	e776      	b.n	d0041c90 <drawPowerHealthBar+0x14>
d0041da2:	f105 07d4 	add.w	r7, r5, #212	; 0xd4
d0041da6:	f8df a014 	ldr.w	sl, [pc, #20]	; d0041dbc <drawPowerHealthBar+0x140>
d0041daa:	e7b0      	b.n	d0041d0e <drawPowerHealthBar+0x92>
d0041dac:	d0044414 	.word	0xd0044414
d0041db0:	d0045fe0 	.word	0xd0045fe0
d0041db4:	51eb851f 	.word	0x51eb851f
d0041db8:	d0045cc0 	.word	0xd0045cc0
d0041dbc:	2001f000 	.word	0x2001f000

d0041dc0 <drawPowerShieldBar>:
d0041dc0:	4b4c      	ldr	r3, [pc, #304]	; (d0041ef4 <drawPowerShieldBar+0x134>)
d0041dc2:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041dc6:	781b      	ldrb	r3, [r3, #0]
d0041dc8:	b083      	sub	sp, #12
d0041dca:	2b00      	cmp	r3, #0
d0041dcc:	d07e      	beq.n	d0041ecc <drawPowerShieldBar+0x10c>
d0041dce:	4b4a      	ldr	r3, [pc, #296]	; (d0041ef8 <drawPowerShieldBar+0x138>)
d0041dd0:	f993 3000 	ldrsb.w	r3, [r3]
d0041dd4:	b29a      	uxth	r2, r3
d0041dd6:	2358      	movs	r3, #88	; 0x58
d0041dd8:	4848      	ldr	r0, [pc, #288]	; (d0041efc <drawPowerShieldBar+0x13c>)
d0041dda:	2104      	movs	r1, #4
d0041ddc:	fb03 f302 	mul.w	r3, r3, r2
d0041de0:	f8df b11c 	ldr.w	fp, [pc, #284]	; d0041f00 <drawPowerShieldBar+0x140>
d0041de4:	fba0 2303 	umull	r2, r3, r0, r3
d0041de8:	f88b 101b 	strb.w	r1, [fp, #27]
d0041dec:	f3c3 2207 	ubfx	r2, r3, #8, #8
d0041df0:	f413 4f7f 	tst.w	r3, #65280	; 0xff00
d0041df4:	f3c3 1542 	ubfx	r5, r3, #5, #3
d0041df8:	9201      	str	r2, [sp, #4]
d0041dfa:	d076      	beq.n	d0041eea <drawPowerShieldBar+0x12a>
d0041dfc:	1e53      	subs	r3, r2, #1
d0041dfe:	f505 77b7 	add.w	r7, r5, #366	; 0x16e
d0041e02:	f8df a100 	ldr.w	sl, [pc, #256]	; d0041f04 <drawPowerShieldBar+0x144>
d0041e06:	f44f 7693 	mov.w	r6, #294	; 0x126
d0041e0a:	b2db      	uxtb	r3, r3
d0041e0c:	46b9      	mov	r9, r7
d0041e0e:	46d8      	mov	r8, fp
d0041e10:	eb05 05c3 	add.w	r5, r5, r3, lsl #3
d0041e14:	f505 75bb 	add.w	r5, r5, #374	; 0x176
d0041e18:	fa0f f389 	sxth.w	r3, r9
d0041e1c:	f109 0908 	add.w	r9, r9, #8
d0041e20:	4640      	mov	r0, r8
d0041e22:	f8ab 3014 	strh.w	r3, [fp, #20]
d0041e26:	fa1f f989 	uxth.w	r9, r9
d0041e2a:	f8ab 6016 	strh.w	r6, [fp, #22]
d0041e2e:	f89a 400c 	ldrb.w	r4, [sl, #12]
d0041e32:	f89a 100d 	ldrb.w	r1, [sl, #13]
d0041e36:	f89a 200e 	ldrb.w	r2, [sl, #14]
d0041e3a:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d0041e3e:	f89a 300f 	ldrb.w	r3, [sl, #15]
d0041e42:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0041e46:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0041e4a:	685b      	ldr	r3, [r3, #4]
d0041e4c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0041e4e:	4798      	blx	r3
d0041e50:	454d      	cmp	r5, r9
d0041e52:	d1e1      	bne.n	d0041e18 <drawPowerShieldBar+0x58>
d0041e54:	f44f 7493 	mov.w	r4, #294	; 0x126
d0041e58:	2203      	movs	r2, #3
d0041e5a:	f44f 73b7 	mov.w	r3, #366	; 0x16e
d0041e5e:	4828      	ldr	r0, [pc, #160]	; (d0041f00 <drawPowerShieldBar+0x140>)
d0041e60:	f88b 201b 	strb.w	r2, [fp, #27]
d0041e64:	f8ab 3014 	strh.w	r3, [fp, #20]
d0041e68:	f8ab 4016 	strh.w	r4, [fp, #22]
d0041e6c:	f89a 300c 	ldrb.w	r3, [sl, #12]
d0041e70:	f89a 200d 	ldrb.w	r2, [sl, #13]
d0041e74:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041e78:	f89a 200e 	ldrb.w	r2, [sl, #14]
d0041e7c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041e80:	f89a 200f 	ldrb.w	r2, [sl, #15]
d0041e84:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041e88:	685b      	ldr	r3, [r3, #4]
d0041e8a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0041e8c:	4798      	blx	r3
d0041e8e:	9a01      	ldr	r2, [sp, #4]
d0041e90:	2305      	movs	r3, #5
d0041e92:	481b      	ldr	r0, [pc, #108]	; (d0041f00 <drawPowerShieldBar+0x140>)
d0041e94:	eb07 07c2 	add.w	r7, r7, r2, lsl #3
d0041e98:	f88b 301b 	strb.w	r3, [fp, #27]
d0041e9c:	f8ab 7014 	strh.w	r7, [fp, #20]
d0041ea0:	f8ab 4016 	strh.w	r4, [fp, #22]
d0041ea4:	f89a 300c 	ldrb.w	r3, [sl, #12]
d0041ea8:	f89a 200d 	ldrb.w	r2, [sl, #13]
d0041eac:	f89a 100e 	ldrb.w	r1, [sl, #14]
d0041eb0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041eb4:	f89a 200f 	ldrb.w	r2, [sl, #15]
d0041eb8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0041ebc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041ec0:	685b      	ldr	r3, [r3, #4]
d0041ec2:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0041ec4:	b003      	add	sp, #12
d0041ec6:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041eca:	4718      	bx	r3
d0041ecc:	4a0a      	ldr	r2, [pc, #40]	; (d0041ef8 <drawPowerShieldBar+0x138>)
d0041ece:	f992 3000 	ldrsb.w	r3, [r2]
d0041ed2:	4283      	cmp	r3, r0
d0041ed4:	da03      	bge.n	d0041ede <drawPowerShieldBar+0x11e>
d0041ed6:	3301      	adds	r3, #1
d0041ed8:	b25b      	sxtb	r3, r3
d0041eda:	7013      	strb	r3, [r2, #0]
d0041edc:	e77a      	b.n	d0041dd4 <drawPowerShieldBar+0x14>
d0041ede:	f77f af79 	ble.w	d0041dd4 <drawPowerShieldBar+0x14>
d0041ee2:	3b01      	subs	r3, #1
d0041ee4:	b25b      	sxtb	r3, r3
d0041ee6:	7013      	strb	r3, [r2, #0]
d0041ee8:	e774      	b.n	d0041dd4 <drawPowerShieldBar+0x14>
d0041eea:	f505 77b7 	add.w	r7, r5, #366	; 0x16e
d0041eee:	f8df a014 	ldr.w	sl, [pc, #20]	; d0041f04 <drawPowerShieldBar+0x144>
d0041ef2:	e7af      	b.n	d0041e54 <drawPowerShieldBar+0x94>
d0041ef4:	d0044414 	.word	0xd0044414
d0041ef8:	d0045d00 	.word	0xd0045d00
d0041efc:	51eb851f 	.word	0x51eb851f
d0041f00:	d0045cc0 	.word	0xd0045cc0
d0041f04:	2001f000 	.word	0x2001f000

d0041f08 <DrawHUD>:
d0041f08:	4ba4      	ldr	r3, [pc, #656]	; (d004219c <DrawHUD+0x294>)
d0041f0a:	49a5      	ldr	r1, [pc, #660]	; (d00421a0 <DrawHUD+0x298>)
d0041f0c:	681a      	ldr	r2, [r3, #0]
d0041f0e:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0041f12:	4da4      	ldr	r5, [pc, #656]	; (d00421a4 <DrawHUD+0x29c>)
d0041f14:	4628      	mov	r0, r5
d0041f16:	f000 fe29 	bl	d0042b6c <siprintf>
d0041f1a:	782b      	ldrb	r3, [r5, #0]
d0041f1c:	b363      	cbz	r3, d0041f78 <DrawHUD+0x70>
d0041f1e:	260a      	movs	r6, #10
d0041f20:	46a9      	mov	r9, r5
d0041f22:	f8df a284 	ldr.w	sl, [pc, #644]	; d00421a8 <DrawHUD+0x2a0>
d0041f26:	4637      	mov	r7, r6
d0041f28:	f8df 8298 	ldr.w	r8, [pc, #664]	; d00421c4 <DrawHUD+0x2bc>
d0041f2c:	f1a3 0220 	sub.w	r2, r3, #32
d0041f30:	2b0a      	cmp	r3, #10
d0041f32:	489d      	ldr	r0, [pc, #628]	; (d00421a8 <DrawHUD+0x2a0>)
d0041f34:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
d0041f38:	f000 811c 	beq.w	d0042174 <DrawHUD+0x26c>
d0041f3c:	b2db      	uxtb	r3, r3
d0041f3e:	f8aa 6014 	strh.w	r6, [sl, #20]
d0041f42:	f8aa 7016 	strh.w	r7, [sl, #22]
d0041f46:	3610      	adds	r6, #16
d0041f48:	f88a 301b 	strb.w	r3, [sl, #27]
d0041f4c:	f898 400c 	ldrb.w	r4, [r8, #12]
d0041f50:	b236      	sxth	r6, r6
d0041f52:	f898 100d 	ldrb.w	r1, [r8, #13]
d0041f56:	f898 200e 	ldrb.w	r2, [r8, #14]
d0041f5a:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d0041f5e:	f898 300f 	ldrb.w	r3, [r8, #15]
d0041f62:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0041f66:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0041f6a:	685b      	ldr	r3, [r3, #4]
d0041f6c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0041f6e:	4798      	blx	r3
d0041f70:	f819 3f01 	ldrb.w	r3, [r9, #1]!
d0041f74:	2b00      	cmp	r3, #0
d0041f76:	d1d9      	bne.n	d0041f2c <DrawHUD+0x24>
d0041f78:	4b8c      	ldr	r3, [pc, #560]	; (d00421ac <DrawHUD+0x2a4>)
d0041f7a:	498d      	ldr	r1, [pc, #564]	; (d00421b0 <DrawHUD+0x2a8>)
d0041f7c:	781a      	ldrb	r2, [r3, #0]
d0041f7e:	4889      	ldr	r0, [pc, #548]	; (d00421a4 <DrawHUD+0x29c>)
d0041f80:	f000 fdf4 	bl	d0042b6c <siprintf>
d0041f84:	782b      	ldrb	r3, [r5, #0]
d0041f86:	b373      	cbz	r3, d0041fe6 <DrawHUD+0xde>
d0041f88:	f8df 9218 	ldr.w	r9, [pc, #536]	; d00421a4 <DrawHUD+0x29c>
d0041f8c:	f44f 76aa 	mov.w	r6, #340	; 0x154
d0041f90:	270a      	movs	r7, #10
d0041f92:	f8df a214 	ldr.w	sl, [pc, #532]	; d00421a8 <DrawHUD+0x2a0>
d0041f96:	f8df 822c 	ldr.w	r8, [pc, #556]	; d00421c4 <DrawHUD+0x2bc>
d0041f9a:	f1a3 0220 	sub.w	r2, r3, #32
d0041f9e:	2b0a      	cmp	r3, #10
d0041fa0:	4881      	ldr	r0, [pc, #516]	; (d00421a8 <DrawHUD+0x2a0>)
d0041fa2:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
d0041fa6:	f000 80ee 	beq.w	d0042186 <DrawHUD+0x27e>
d0041faa:	b2db      	uxtb	r3, r3
d0041fac:	f8aa 6014 	strh.w	r6, [sl, #20]
d0041fb0:	f8aa 7016 	strh.w	r7, [sl, #22]
d0041fb4:	3610      	adds	r6, #16
d0041fb6:	f88a 301b 	strb.w	r3, [sl, #27]
d0041fba:	f898 400c 	ldrb.w	r4, [r8, #12]
d0041fbe:	b236      	sxth	r6, r6
d0041fc0:	f898 100d 	ldrb.w	r1, [r8, #13]
d0041fc4:	f898 200e 	ldrb.w	r2, [r8, #14]
d0041fc8:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d0041fcc:	f898 300f 	ldrb.w	r3, [r8, #15]
d0041fd0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0041fd4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0041fd8:	685b      	ldr	r3, [r3, #4]
d0041fda:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0041fdc:	4798      	blx	r3
d0041fde:	f819 3f01 	ldrb.w	r3, [r9, #1]!
d0041fe2:	2b00      	cmp	r3, #0
d0041fe4:	d1d9      	bne.n	d0041f9a <DrawHUD+0x92>
d0041fe6:	4b73      	ldr	r3, [pc, #460]	; (d00421b4 <DrawHUD+0x2ac>)
d0041fe8:	4973      	ldr	r1, [pc, #460]	; (d00421b8 <DrawHUD+0x2b0>)
d0041fea:	781a      	ldrb	r2, [r3, #0]
d0041fec:	486d      	ldr	r0, [pc, #436]	; (d00421a4 <DrawHUD+0x29c>)
d0041fee:	f000 fdbd 	bl	d0042b6c <siprintf>
d0041ff2:	782b      	ldrb	r3, [r5, #0]
d0041ff4:	b373      	cbz	r3, d0042054 <DrawHUD+0x14c>
d0041ff6:	f8df 91ac 	ldr.w	r9, [pc, #428]	; d00421a4 <DrawHUD+0x29c>
d0041ffa:	260a      	movs	r6, #10
d0041ffc:	f44f 7793 	mov.w	r7, #294	; 0x126
d0042000:	f8df a1a4 	ldr.w	sl, [pc, #420]	; d00421a8 <DrawHUD+0x2a0>
d0042004:	f8df 81bc 	ldr.w	r8, [pc, #444]	; d00421c4 <DrawHUD+0x2bc>
d0042008:	f1a3 0220 	sub.w	r2, r3, #32
d004200c:	2b0a      	cmp	r3, #10
d004200e:	4866      	ldr	r0, [pc, #408]	; (d00421a8 <DrawHUD+0x2a0>)
d0042010:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
d0042014:	f000 80a5 	beq.w	d0042162 <DrawHUD+0x25a>
d0042018:	b2db      	uxtb	r3, r3
d004201a:	f8aa 6014 	strh.w	r6, [sl, #20]
d004201e:	f8aa 7016 	strh.w	r7, [sl, #22]
d0042022:	3610      	adds	r6, #16
d0042024:	f88a 301b 	strb.w	r3, [sl, #27]
d0042028:	f898 400c 	ldrb.w	r4, [r8, #12]
d004202c:	b236      	sxth	r6, r6
d004202e:	f898 100d 	ldrb.w	r1, [r8, #13]
d0042032:	f898 200e 	ldrb.w	r2, [r8, #14]
d0042036:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d004203a:	f898 300f 	ldrb.w	r3, [r8, #15]
d004203e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0042042:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0042046:	685b      	ldr	r3, [r3, #4]
d0042048:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d004204a:	4798      	blx	r3
d004204c:	f819 3f01 	ldrb.w	r3, [r9, #1]!
d0042050:	2b00      	cmp	r3, #0
d0042052:	d1d9      	bne.n	d0042008 <DrawHUD+0x100>
d0042054:	2203      	movs	r2, #3
d0042056:	4959      	ldr	r1, [pc, #356]	; (d00421bc <DrawHUD+0x2b4>)
d0042058:	4852      	ldr	r0, [pc, #328]	; (d00421a4 <DrawHUD+0x29c>)
d004205a:	26b4      	movs	r6, #180	; 0xb4
d004205c:	f000 fbf8 	bl	d0042850 <memcpy>
d0042060:	782b      	ldrb	r3, [r5, #0]
d0042062:	4d50      	ldr	r5, [pc, #320]	; (d00421a4 <DrawHUD+0x29c>)
d0042064:	f44f 7793 	mov.w	r7, #294	; 0x126
d0042068:	f8df a13c 	ldr.w	sl, [pc, #316]	; d00421a8 <DrawHUD+0x2a0>
d004206c:	46a9      	mov	r9, r5
d004206e:	f8df 8154 	ldr.w	r8, [pc, #340]	; d00421c4 <DrawHUD+0x2bc>
d0042072:	f1a3 0220 	sub.w	r2, r3, #32
d0042076:	2b0a      	cmp	r3, #10
d0042078:	484b      	ldr	r0, [pc, #300]	; (d00421a8 <DrawHUD+0x2a0>)
d004207a:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
d004207e:	d068      	beq.n	d0042152 <DrawHUD+0x24a>
d0042080:	b2db      	uxtb	r3, r3
d0042082:	f8aa 6014 	strh.w	r6, [sl, #20]
d0042086:	f8aa 7016 	strh.w	r7, [sl, #22]
d004208a:	3610      	adds	r6, #16
d004208c:	f88a 301b 	strb.w	r3, [sl, #27]
d0042090:	f898 400c 	ldrb.w	r4, [r8, #12]
d0042094:	b236      	sxth	r6, r6
d0042096:	f898 100d 	ldrb.w	r1, [r8, #13]
d004209a:	f898 200e 	ldrb.w	r2, [r8, #14]
d004209e:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d00420a2:	f898 300f 	ldrb.w	r3, [r8, #15]
d00420a6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00420aa:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00420ae:	685b      	ldr	r3, [r3, #4]
d00420b0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00420b2:	4798      	blx	r3
d00420b4:	f819 3f01 	ldrb.w	r3, [r9, #1]!
d00420b8:	2b00      	cmp	r3, #0
d00420ba:	d1da      	bne.n	d0042072 <DrawHUD+0x16a>
d00420bc:	2203      	movs	r2, #3
d00420be:	4940      	ldr	r1, [pc, #256]	; (d00421c0 <DrawHUD+0x2b8>)
d00420c0:	4838      	ldr	r0, [pc, #224]	; (d00421a4 <DrawHUD+0x29c>)
d00420c2:	f44f 76a7 	mov.w	r6, #334	; 0x14e
d00420c6:	f000 fbc3 	bl	d0042850 <memcpy>
d00420ca:	f8df 80d8 	ldr.w	r8, [pc, #216]	; d00421a4 <DrawHUD+0x29c>
d00420ce:	782b      	ldrb	r3, [r5, #0]
d00420d0:	f44f 7593 	mov.w	r5, #294	; 0x126
d00420d4:	f8df 90d0 	ldr.w	r9, [pc, #208]	; d00421a8 <DrawHUD+0x2a0>
d00420d8:	4f3a      	ldr	r7, [pc, #232]	; (d00421c4 <DrawHUD+0x2bc>)
d00420da:	f1a3 0220 	sub.w	r2, r3, #32
d00420de:	2b0a      	cmp	r3, #10
d00420e0:	4831      	ldr	r0, [pc, #196]	; (d00421a8 <DrawHUD+0x2a0>)
d00420e2:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
d00420e6:	d02b      	beq.n	d0042140 <DrawHUD+0x238>
d00420e8:	b2db      	uxtb	r3, r3
d00420ea:	f8a9 6014 	strh.w	r6, [r9, #20]
d00420ee:	f8a9 5016 	strh.w	r5, [r9, #22]
d00420f2:	3610      	adds	r6, #16
d00420f4:	f889 301b 	strb.w	r3, [r9, #27]
d00420f8:	7b3c      	ldrb	r4, [r7, #12]
d00420fa:	b236      	sxth	r6, r6
d00420fc:	7b79      	ldrb	r1, [r7, #13]
d00420fe:	7bba      	ldrb	r2, [r7, #14]
d0042100:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d0042104:	7bfb      	ldrb	r3, [r7, #15]
d0042106:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004210a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004210e:	685b      	ldr	r3, [r3, #4]
d0042110:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0042112:	4798      	blx	r3
d0042114:	f818 3f01 	ldrb.w	r3, [r8, #1]!
d0042118:	2b00      	cmp	r3, #0
d004211a:	d1de      	bne.n	d00420da <DrawHUD+0x1d2>
d004211c:	4a2a      	ldr	r2, [pc, #168]	; (d00421c8 <DrawHUD+0x2c0>)
d004211e:	7813      	ldrb	r3, [r2, #0]
d0042120:	3301      	adds	r3, #1
d0042122:	b2db      	uxtb	r3, r3
d0042124:	2b01      	cmp	r3, #1
d0042126:	bf88      	it	hi
d0042128:	2300      	movhi	r3, #0
d004212a:	7013      	strb	r3, [r2, #0]
d004212c:	4b27      	ldr	r3, [pc, #156]	; (d00421cc <DrawHUD+0x2c4>)
d004212e:	7818      	ldrb	r0, [r3, #0]
d0042130:	f7ff fda4 	bl	d0041c7c <drawPowerHealthBar>
d0042134:	4b26      	ldr	r3, [pc, #152]	; (d00421d0 <DrawHUD+0x2c8>)
d0042136:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d004213a:	7818      	ldrb	r0, [r3, #0]
d004213c:	f7ff be40 	b.w	d0041dc0 <drawPowerShieldBar>
d0042140:	3510      	adds	r5, #16
d0042142:	f818 3f01 	ldrb.w	r3, [r8, #1]!
d0042146:	f44f 76a7 	mov.w	r6, #334	; 0x14e
d004214a:	b22d      	sxth	r5, r5
d004214c:	2b00      	cmp	r3, #0
d004214e:	d1c4      	bne.n	d00420da <DrawHUD+0x1d2>
d0042150:	e7e4      	b.n	d004211c <DrawHUD+0x214>
d0042152:	3710      	adds	r7, #16
d0042154:	f819 3f01 	ldrb.w	r3, [r9, #1]!
d0042158:	26b4      	movs	r6, #180	; 0xb4
d004215a:	b23f      	sxth	r7, r7
d004215c:	2b00      	cmp	r3, #0
d004215e:	d188      	bne.n	d0042072 <DrawHUD+0x16a>
d0042160:	e7ac      	b.n	d00420bc <DrawHUD+0x1b4>
d0042162:	3710      	adds	r7, #16
d0042164:	f819 3f01 	ldrb.w	r3, [r9, #1]!
d0042168:	260a      	movs	r6, #10
d004216a:	b23f      	sxth	r7, r7
d004216c:	2b00      	cmp	r3, #0
d004216e:	f47f af4b 	bne.w	d0042008 <DrawHUD+0x100>
d0042172:	e76f      	b.n	d0042054 <DrawHUD+0x14c>
d0042174:	3710      	adds	r7, #16
d0042176:	f819 3f01 	ldrb.w	r3, [r9, #1]!
d004217a:	260a      	movs	r6, #10
d004217c:	b23f      	sxth	r7, r7
d004217e:	2b00      	cmp	r3, #0
d0042180:	f47f aed4 	bne.w	d0041f2c <DrawHUD+0x24>
d0042184:	e6f8      	b.n	d0041f78 <DrawHUD+0x70>
d0042186:	3710      	adds	r7, #16
d0042188:	f819 3f01 	ldrb.w	r3, [r9, #1]!
d004218c:	f44f 76aa 	mov.w	r6, #340	; 0x154
d0042190:	b23f      	sxth	r7, r7
d0042192:	2b00      	cmp	r3, #0
d0042194:	f47f af01 	bne.w	d0041f9a <DrawHUD+0x92>
d0042198:	e725      	b.n	d0041fe6 <DrawHUD+0xde>
d004219a:	bf00      	nop
d004219c:	d004440c 	.word	0xd004440c
d00421a0:	d0043a98 	.word	0xd0043a98
d00421a4:	d0046020 	.word	0xd0046020
d00421a8:	d0046000 	.word	0xd0046000
d00421ac:	d0044408 	.word	0xd0044408
d00421b0:	d0043aa8 	.word	0xd0043aa8
d00421b4:	d0044410 	.word	0xd0044410
d00421b8:	d0043ab4 	.word	0xd0043ab4
d00421bc:	d0043ac4 	.word	0xd0043ac4
d00421c0:	d0043ac0 	.word	0xd0043ac0
d00421c4:	2001f000 	.word	0x2001f000
d00421c8:	d0044414 	.word	0xd0044414
d00421cc:	d0044380 	.word	0xd0044380
d00421d0:	d0044381 	.word	0xd0044381

d00421d4 <sbx_rng_range>:
d00421d4:	b410      	push	{r4}
d00421d6:	4c0a      	ldr	r4, [pc, #40]	; (d0042200 <sbx_rng_range+0x2c>)
d00421d8:	1a09      	subs	r1, r1, r0
d00421da:	6823      	ldr	r3, [r4, #0]
d00421dc:	3101      	adds	r1, #1
d00421de:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d00421e2:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d00421e6:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d00421ea:	fbb3 f2f1 	udiv	r2, r3, r1
d00421ee:	fb01 3112 	mls	r1, r1, r2, r3
d00421f2:	6023      	str	r3, [r4, #0]
d00421f4:	4408      	add	r0, r1
d00421f6:	f85d 4b04 	ldr.w	r4, [sp], #4
d00421fa:	b200      	sxth	r0, r0
d00421fc:	4770      	bx	lr
d00421fe:	bf00      	nop
d0042200:	d0044398 	.word	0xd0044398

d0042204 <main>:
d0042204:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0042208:	4c9c      	ldr	r4, [pc, #624]	; (d004247c <main+0x278>)
d004220a:	2500      	movs	r5, #0
d004220c:	f44f 2000 	mov.w	r0, #524288	; 0x80000
d0042210:	f04f 0601 	mov.w	r6, #1
d0042214:	7823      	ldrb	r3, [r4, #0]
d0042216:	7862      	ldrb	r2, [r4, #1]
d0042218:	78a1      	ldrb	r1, [r4, #2]
d004221a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004221e:	78e2      	ldrb	r2, [r4, #3]
d0042220:	f8df 928c 	ldr.w	r9, [pc, #652]	; d00424b0 <main+0x2ac>
d0042224:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042228:	f8df b288 	ldr.w	fp, [pc, #648]	; d00424b4 <main+0x2b0>
d004222c:	f8df a288 	ldr.w	sl, [pc, #648]	; d00424b8 <main+0x2b4>
d0042230:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042234:	f8df 8284 	ldr.w	r8, [pc, #644]	; d00424bc <main+0x2b8>
d0042238:	4f91      	ldr	r7, [pc, #580]	; (d0042480 <main+0x27c>)
d004223a:	681b      	ldr	r3, [r3, #0]
d004223c:	ed2d 8b04 	vpush	{d8-d9}
d0042240:	b087      	sub	sp, #28
d0042242:	ed9f 9a90 	vldr	s18, [pc, #576]	; d0042484 <main+0x280>
d0042246:	ed9f 8a90 	vldr	s16, [pc, #576]	; d0042488 <main+0x284>
d004224a:	9504      	str	r5, [sp, #16]
d004224c:	eef0 8a49 	vmov.f32	s17, s18
d0042250:	9503      	str	r5, [sp, #12]
d0042252:	9505      	str	r5, [sp, #20]
d0042254:	9502      	str	r5, [sp, #8]
d0042256:	4798      	blx	r3
d0042258:	f7fd ff44 	bl	d00400e4 <initMalloc>
d004225c:	7b23      	ldrb	r3, [r4, #12]
d004225e:	7b62      	ldrb	r2, [r4, #13]
d0042260:	2190      	movs	r1, #144	; 0x90
d0042262:	7ba5      	ldrb	r5, [r4, #14]
d0042264:	20dc      	movs	r0, #220	; 0xdc
d0042266:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004226a:	7be2      	ldrb	r2, [r4, #15]
d004226c:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0042270:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042274:	681b      	ldr	r3, [r3, #0]
d0042276:	691b      	ldr	r3, [r3, #16]
d0042278:	4798      	blx	r3
d004227a:	7b23      	ldrb	r3, [r4, #12]
d004227c:	7b62      	ldrb	r2, [r4, #13]
d004227e:	2000      	movs	r0, #0
d0042280:	7ba1      	ldrb	r1, [r4, #14]
d0042282:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042286:	7be2      	ldrb	r2, [r4, #15]
d0042288:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004228c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042290:	681b      	ldr	r3, [r3, #0]
d0042292:	689b      	ldr	r3, [r3, #8]
d0042294:	4798      	blx	r3
d0042296:	7b25      	ldrb	r5, [r4, #12]
d0042298:	7b62      	ldrb	r2, [r4, #13]
d004229a:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d004229e:	7ba0      	ldrb	r0, [r4, #14]
d00422a0:	2106      	movs	r1, #6
d00422a2:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d00422a6:	7be2      	ldrb	r2, [r4, #15]
d00422a8:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d00422ac:	4618      	mov	r0, r3
d00422ae:	ea45 6502 	orr.w	r5, r5, r2, lsl #24
d00422b2:	f44f 7220 	mov.w	r2, #640	; 0x280
d00422b6:	682d      	ldr	r5, [r5, #0]
d00422b8:	9100      	str	r1, [sp, #0]
d00422ba:	f44f 71a0 	mov.w	r1, #320	; 0x140
d00422be:	696d      	ldr	r5, [r5, #20]
d00422c0:	47a8      	blx	r5
d00422c2:	7d23      	ldrb	r3, [r4, #20]
d00422c4:	7d62      	ldrb	r2, [r4, #21]
d00422c6:	f44f 7000 	mov.w	r0, #512	; 0x200
d00422ca:	7da1      	ldrb	r1, [r4, #22]
d00422cc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00422d0:	7de2      	ldrb	r2, [r4, #23]
d00422d2:	4d6e      	ldr	r5, [pc, #440]	; (d004248c <main+0x288>)
d00422d4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00422d8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00422dc:	681b      	ldr	r3, [r3, #0]
d00422de:	681b      	ldr	r3, [r3, #0]
d00422e0:	4798      	blx	r3
d00422e2:	7d22      	ldrb	r2, [r4, #20]
d00422e4:	7d63      	ldrb	r3, [r4, #21]
d00422e6:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d00422ea:	7da3      	ldrb	r3, [r4, #22]
d00422ec:	7de1      	ldrb	r1, [r4, #23]
d00422ee:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
d00422f2:	7b23      	ldrb	r3, [r4, #12]
d00422f4:	ea42 6201 	orr.w	r2, r2, r1, lsl #24
d00422f8:	7b61      	ldrb	r1, [r4, #13]
d00422fa:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d00422fe:	7ba1      	ldrb	r1, [r4, #14]
d0042300:	6812      	ldr	r2, [r2, #0]
d0042302:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042306:	7be1      	ldrb	r1, [r4, #15]
d0042308:	6852      	ldr	r2, [r2, #4]
d004230a:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d004230e:	7016      	strb	r6, [r2, #0]
d0042310:	681b      	ldr	r3, [r3, #0]
d0042312:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d0042314:	4798      	blx	r3
d0042316:	7b23      	ldrb	r3, [r4, #12]
d0042318:	7b62      	ldrb	r2, [r4, #13]
d004231a:	6028      	str	r0, [r5, #0]
d004231c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042320:	7ba2      	ldrb	r2, [r4, #14]
d0042322:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0042326:	7be2      	ldrb	r2, [r4, #15]
d0042328:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004232c:	681b      	ldr	r3, [r3, #0]
d004232e:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d0042330:	4798      	blx	r3
d0042332:	7b23      	ldrb	r3, [r4, #12]
d0042334:	7b62      	ldrb	r2, [r4, #13]
d0042336:	4956      	ldr	r1, [pc, #344]	; (d0042490 <main+0x28c>)
d0042338:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004233c:	7ba2      	ldrb	r2, [r4, #14]
d004233e:	6008      	str	r0, [r1, #0]
d0042340:	2064      	movs	r0, #100	; 0x64
d0042342:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0042346:	7be2      	ldrb	r2, [r4, #15]
d0042348:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004234c:	681b      	ldr	r3, [r3, #0]
d004234e:	689b      	ldr	r3, [r3, #8]
d0042350:	4798      	blx	r3
d0042352:	f7fd ffc1 	bl	d00402d8 <loadSounds>
d0042356:	2003      	movs	r0, #3
d0042358:	f7fe fece 	bl	d00410f8 <SetPlayerLives>
d004235c:	4b4d      	ldr	r3, [pc, #308]	; (d0042494 <main+0x290>)
d004235e:	2200      	movs	r2, #0
d0042360:	601a      	str	r2, [r3, #0]
d0042362:	f7ff fb2b 	bl	d00419bc <LoadGraphics>
d0042366:	f7ff fc2f 	bl	d0041bc8 <LoadCommonGameGraphics>
d004236a:	f7ff fb93 	bl	d0041a94 <LoadShipGfx>
d004236e:	2000      	movs	r0, #0
d0042370:	f7fe fa70 	bl	d0040854 <MusicPlay>
d0042374:	f44f 7220 	mov.w	r2, #640	; 0x280
d0042378:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d004237c:	f44f 2096 	mov.w	r0, #307200	; 0x4b000
d0042380:	f8c9 000c 	str.w	r0, [r9, #12]
d0042384:	f8a9 2004 	strh.w	r2, [r9, #4]
d0042388:	f8a9 3006 	strh.w	r3, [r9, #6]
d004238c:	f8a9 3008 	strh.w	r3, [r9, #8]
d0042390:	f000 fa48 	bl	d0042824 <malloc>
d0042394:	4603      	mov	r3, r0
d0042396:	4840      	ldr	r0, [pc, #256]	; (d0042498 <main+0x294>)
d0042398:	f8c9 3000 	str.w	r3, [r9]
d004239c:	f8d9 1000 	ldr.w	r1, [r9]
d00423a0:	f7fd fe4c 	bl	d004003c <LoadPPB>
d00423a4:	f7fe ff3e 	bl	d0041224 <initAstroids>
d00423a8:	f7ff f9aa 	bl	d0041700 <initFlames>
d00423ac:	f7ff f9b8 	bl	d0041720 <initExplodes>
d00423b0:	f7fe fc6e 	bl	d0040c90 <initShip>
d00423b4:	f7fe fd3e 	bl	d0040e34 <initBullets>
d00423b8:	4b36      	ldr	r3, [pc, #216]	; (d0042494 <main+0x290>)
d00423ba:	2200      	movs	r2, #0
d00423bc:	4835      	ldr	r0, [pc, #212]	; (d0042494 <main+0x290>)
d00423be:	601a      	str	r2, [r3, #0]
d00423c0:	7b23      	ldrb	r3, [r4, #12]
d00423c2:	7b62      	ldrb	r2, [r4, #13]
d00423c4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00423c8:	7ba2      	ldrb	r2, [r4, #14]
d00423ca:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00423ce:	7be2      	ldrb	r2, [r4, #15]
d00423d0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00423d4:	681b      	ldr	r3, [r3, #0]
d00423d6:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d00423d8:	4798      	blx	r3
d00423da:	7b23      	ldrb	r3, [r4, #12]
d00423dc:	7b62      	ldrb	r2, [r4, #13]
d00423de:	482f      	ldr	r0, [pc, #188]	; (d004249c <main+0x298>)
d00423e0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00423e4:	7ba2      	ldrb	r2, [r4, #14]
d00423e6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00423ea:	7be2      	ldrb	r2, [r4, #15]
d00423ec:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00423f0:	681b      	ldr	r3, [r3, #0]
d00423f2:	6d1b      	ldr	r3, [r3, #80]	; 0x50
d00423f4:	4798      	blx	r3
d00423f6:	7b23      	ldrb	r3, [r4, #12]
d00423f8:	7b62      	ldrb	r2, [r4, #13]
d00423fa:	4648      	mov	r0, r9
d00423fc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042400:	7ba2      	ldrb	r2, [r4, #14]
d0042402:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0042406:	7be2      	ldrb	r2, [r4, #15]
d0042408:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004240c:	681b      	ldr	r3, [r3, #0]
d004240e:	6a1b      	ldr	r3, [r3, #32]
d0042410:	4798      	blx	r3
d0042412:	7b23      	ldrb	r3, [r4, #12]
d0042414:	7b62      	ldrb	r2, [r4, #13]
d0042416:	6828      	ldr	r0, [r5, #0]
d0042418:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004241c:	7ba2      	ldrb	r2, [r4, #14]
d004241e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0042422:	7be2      	ldrb	r2, [r4, #15]
d0042424:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042428:	681b      	ldr	r3, [r3, #0]
d004242a:	69db      	ldr	r3, [r3, #28]
d004242c:	4798      	blx	r3
d004242e:	7b23      	ldrb	r3, [r4, #12]
d0042430:	7b62      	ldrb	r2, [r4, #13]
d0042432:	6828      	ldr	r0, [r5, #0]
d0042434:	2503      	movs	r5, #3
d0042436:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004243a:	7ba2      	ldrb	r2, [r4, #14]
d004243c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0042440:	7be2      	ldrb	r2, [r4, #15]
d0042442:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042446:	681b      	ldr	r3, [r3, #0]
d0042448:	699b      	ldr	r3, [r3, #24]
d004244a:	4798      	blx	r3
d004244c:	4b14      	ldr	r3, [pc, #80]	; (d00424a0 <main+0x29c>)
d004244e:	2200      	movs	r2, #0
d0042450:	21c8      	movs	r1, #200	; 0xc8
d0042452:	701e      	strb	r6, [r3, #0]
d0042454:	f04f 0c64 	mov.w	ip, #100	; 0x64
d0042458:	4b12      	ldr	r3, [pc, #72]	; (d00424a4 <main+0x2a0>)
d004245a:	4608      	mov	r0, r1
d004245c:	4e12      	ldr	r6, [pc, #72]	; (d00424a8 <main+0x2a4>)
d004245e:	601a      	str	r2, [r3, #0]
d0042460:	4b12      	ldr	r3, [pc, #72]	; (d00424ac <main+0x2a8>)
d0042462:	ed8b 9a00 	vstr	s18, [fp]
d0042466:	ed8a 9a00 	vstr	s18, [sl]
d004246a:	f886 c000 	strb.w	ip, [r6]
d004246e:	701d      	strb	r5, [r3, #0]
d0042470:	f7fe fed2 	bl	d0041218 <SpawnAstroid>
d0042474:	f8dd 9014 	ldr.w	r9, [sp, #20]
d0042478:	e059      	b.n	d004252e <main+0x32a>
d004247a:	bf00      	nop
d004247c:	2001f000 	.word	0x2001f000
d0042480:	d00450c0 	.word	0xd00450c0
d0042484:	00000000 	.word	0x00000000
d0042488:	43200000 	.word	0x43200000
d004248c:	d0046840 	.word	0xd0046840
d0042490:	d0046728 	.word	0xd0046728
d0042494:	d0043f80 	.word	0xd0043f80
d0042498:	d0043ac8 	.word	0xd0043ac8
d004249c:	d0043b80 	.word	0xd0043b80
d00424a0:	d0044410 	.word	0xd0044410
d00424a4:	d004440c 	.word	0xd004440c
d00424a8:	d0044540 	.word	0xd0044540
d00424ac:	d0044408 	.word	0xd0044408
d00424b0:	d0046700 	.word	0xd0046700
d00424b4:	d0046720 	.word	0xd0046720
d00424b8:	d0046724 	.word	0xd0046724
d00424bc:	d0044416 	.word	0xd0044416
d00424c0:	7b20      	ldrb	r0, [r4, #12]
d00424c2:	7b61      	ldrb	r1, [r4, #13]
d00424c4:	7ba2      	ldrb	r2, [r4, #14]
d00424c6:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00424ca:	7be3      	ldrb	r3, [r4, #15]
d00424cc:	48a0      	ldr	r0, [pc, #640]	; (d0042750 <main+0x54c>)
d00424ce:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00424d2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00424d6:	685b      	ldr	r3, [r3, #4]
d00424d8:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00424da:	4798      	blx	r3
d00424dc:	4b9d      	ldr	r3, [pc, #628]	; (d0042754 <main+0x550>)
d00424de:	781b      	ldrb	r3, [r3, #0]
d00424e0:	2b00      	cmp	r3, #0
d00424e2:	f040 810c 	bne.w	d00426fe <main+0x4fa>
d00424e6:	f7ff fd0f 	bl	d0041f08 <DrawHUD>
d00424ea:	f04f 0300 	mov.w	r3, #0
d00424ee:	4628      	mov	r0, r5
d00424f0:	4649      	mov	r1, r9
d00424f2:	713b      	strb	r3, [r7, #4]
d00424f4:	46b1      	mov	r9, r6
d00424f6:	f894 c00c 	ldrb.w	ip, [r4, #12]
d00424fa:	7b62      	ldrb	r2, [r4, #13]
d00424fc:	f894 e00e 	ldrb.w	lr, [r4, #14]
d0042500:	ea4c 2502 	orr.w	r5, ip, r2, lsl #8
d0042504:	7be3      	ldrb	r3, [r4, #15]
d0042506:	ea45 420e 	orr.w	r2, r5, lr, lsl #16
d004250a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004250e:	681b      	ldr	r3, [r3, #0]
d0042510:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d0042512:	4798      	blx	r3
d0042514:	7b20      	ldrb	r0, [r4, #12]
d0042516:	7b61      	ldrb	r1, [r4, #13]
d0042518:	7ba2      	ldrb	r2, [r4, #14]
d004251a:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004251e:	7be3      	ldrb	r3, [r4, #15]
d0042520:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0042524:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0042528:	681b      	ldr	r3, [r3, #0]
d004252a:	681b      	ldr	r3, [r3, #0]
d004252c:	4798      	blx	r3
d004252e:	7820      	ldrb	r0, [r4, #0]
d0042530:	7861      	ldrb	r1, [r4, #1]
d0042532:	78a2      	ldrb	r2, [r4, #2]
d0042534:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0042538:	78e3      	ldrb	r3, [r4, #3]
d004253a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004253e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0042542:	6a1b      	ldr	r3, [r3, #32]
d0042544:	4798      	blx	r3
d0042546:	4605      	mov	r5, r0
d0042548:	f7fe fbc4 	bl	d0040cd4 <ShipUpdate>
d004254c:	4b82      	ldr	r3, [pc, #520]	; (d0042758 <main+0x554>)
d004254e:	4983      	ldr	r1, [pc, #524]	; (d004275c <main+0x558>)
d0042550:	781a      	ldrb	r2, [r3, #0]
d0042552:	f005 0301 	and.w	r3, r5, #1
d0042556:	429a      	cmp	r2, r3
d0042558:	700b      	strb	r3, [r1, #0]
d004255a:	d004      	beq.n	d0042566 <main+0x362>
d004255c:	b11b      	cbz	r3, d0042566 <main+0x362>
d004255e:	f7fe fc81 	bl	d0040e64 <fireBullet>
d0042562:	4b7e      	ldr	r3, [pc, #504]	; (d004275c <main+0x558>)
d0042564:	781b      	ldrb	r3, [r3, #0]
d0042566:	f005 0602 	and.w	r6, r5, #2
d004256a:	4a7b      	ldr	r2, [pc, #492]	; (d0042758 <main+0x554>)
d004256c:	45b1      	cmp	r9, r6
d004256e:	7013      	strb	r3, [r2, #0]
d0042570:	d002      	beq.n	d0042578 <main+0x374>
d0042572:	2e00      	cmp	r6, #0
d0042574:	f040 80e4 	bne.w	d0042740 <main+0x53c>
d0042578:	9b03      	ldr	r3, [sp, #12]
d004257a:	b1bb      	cbz	r3, d00425ac <main+0x3a8>
d004257c:	3b01      	subs	r3, #1
d004257e:	b2da      	uxtb	r2, r3
d0042580:	0798      	lsls	r0, r3, #30
d0042582:	9203      	str	r2, [sp, #12]
d0042584:	d112      	bne.n	d00425ac <main+0x3a8>
d0042586:	f44f 71e0 	mov.w	r1, #448	; 0x1c0
d004258a:	f06f 001f 	mvn.w	r0, #31
d004258e:	f7ff fe21 	bl	d00421d4 <sbx_rng_range>
d0042592:	f44f 7190 	mov.w	r1, #288	; 0x120
d0042596:	4681      	mov	r9, r0
d0042598:	f06f 001f 	mvn.w	r0, #31
d004259c:	f7ff fe1a 	bl	d00421d4 <sbx_rng_range>
d00425a0:	4601      	mov	r1, r0
d00425a2:	fa0f f089 	sxth.w	r0, r9
d00425a6:	b209      	sxth	r1, r1
d00425a8:	f7ff f9e8 	bl	d004197c <spawnExplode>
d00425ac:	f898 3000 	ldrb.w	r3, [r8]
d00425b0:	b9cb      	cbnz	r3, d00425e6 <main+0x3e2>
d00425b2:	f015 0204 	ands.w	r2, r5, #4
d00425b6:	f040 80e1 	bne.w	d004277c <main+0x578>
d00425ba:	9b04      	ldr	r3, [sp, #16]
d00425bc:	b173      	cbz	r3, d00425dc <main+0x3d8>
d00425be:	7d23      	ldrb	r3, [r4, #20]
d00425c0:	2002      	movs	r0, #2
d00425c2:	7d61      	ldrb	r1, [r4, #21]
d00425c4:	9204      	str	r2, [sp, #16]
d00425c6:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d00425ca:	7da2      	ldrb	r2, [r4, #22]
d00425cc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00425d0:	7de2      	ldrb	r2, [r4, #23]
d00425d2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00425d6:	689b      	ldr	r3, [r3, #8]
d00425d8:	689b      	ldr	r3, [r3, #8]
d00425da:	4798      	blx	r3
d00425dc:	0729      	lsls	r1, r5, #28
d00425de:	f140 80ac 	bpl.w	d004273a <main+0x536>
d00425e2:	f7fe faf1 	bl	d0040bc8 <ShieldON>
d00425e6:	4b5e      	ldr	r3, [pc, #376]	; (d0042760 <main+0x55c>)
d00425e8:	ed93 7a00 	vldr	s14, [r3]
d00425ec:	4b5d      	ldr	r3, [pc, #372]	; (d0042764 <main+0x560>)
d00425ee:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d00425f2:	edd3 7a00 	vldr	s15, [r3]
d00425f6:	4b5c      	ldr	r3, [pc, #368]	; (d0042768 <main+0x564>)
d00425f8:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00425fc:	781b      	ldrb	r3, [r3, #0]
d00425fe:	76fb      	strb	r3, [r7, #27]
d0042600:	ee17 3a10 	vmov	r3, s14
d0042604:	b21a      	sxth	r2, r3
d0042606:	ee17 3a90 	vmov	r3, s15
d004260a:	b21b      	sxth	r3, r3
d004260c:	82ba      	strh	r2, [r7, #20]
d004260e:	82fb      	strh	r3, [r7, #22]
d0042610:	9b02      	ldr	r3, [sp, #8]
d0042612:	2b63      	cmp	r3, #99	; 0x63
d0042614:	d810      	bhi.n	d0042638 <main+0x434>
d0042616:	7b20      	ldrb	r0, [r4, #12]
d0042618:	3301      	adds	r3, #1
d004261a:	7b61      	ldrb	r1, [r4, #13]
d004261c:	7ba2      	ldrb	r2, [r4, #14]
d004261e:	b2dd      	uxtb	r5, r3
d0042620:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0042624:	7be3      	ldrb	r3, [r4, #15]
d0042626:	4628      	mov	r0, r5
d0042628:	9502      	str	r5, [sp, #8]
d004262a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004262e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0042632:	681b      	ldr	r3, [r3, #0]
d0042634:	689b      	ldr	r3, [r3, #8]
d0042636:	4798      	blx	r3
d0042638:	4b4c      	ldr	r3, [pc, #304]	; (d004276c <main+0x568>)
d004263a:	ed9b 7a00 	vldr	s14, [fp]
d004263e:	ed93 6a00 	vldr	s12, [r3]
d0042642:	4b4b      	ldr	r3, [pc, #300]	; (d0042770 <main+0x56c>)
d0042644:	ee37 7a06 	vadd.f32	s14, s14, s12
d0042648:	edda 7a00 	vldr	s15, [sl]
d004264c:	edd3 6a00 	vldr	s13, [r3]
d0042650:	eeb4 7ac8 	vcmpe.f32	s14, s16
d0042654:	ed8b 7a00 	vstr	s14, [fp]
d0042658:	ee77 7aa6 	vadd.f32	s15, s15, s13
d004265c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042660:	edca 7a00 	vstr	s15, [sl]
d0042664:	dd60      	ble.n	d0042728 <main+0x524>
d0042666:	25a0      	movs	r5, #160	; 0xa0
d0042668:	ed8b 8a00 	vstr	s16, [fp]
d004266c:	eef4 7ac8 	vcmpe.f32	s15, s16
d0042670:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042674:	dd4e      	ble.n	d0042714 <main+0x510>
d0042676:	f04f 09a0 	mov.w	r9, #160	; 0xa0
d004267a:	ed8a 8a00 	vstr	s16, [sl]
d004267e:	7b20      	ldrb	r0, [r4, #12]
d0042680:	7b61      	ldrb	r1, [r4, #13]
d0042682:	7ba2      	ldrb	r2, [r4, #14]
d0042684:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0042688:	7be3      	ldrb	r3, [r4, #15]
d004268a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004268e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0042692:	681b      	ldr	r3, [r3, #0]
d0042694:	68db      	ldr	r3, [r3, #12]
d0042696:	4798      	blx	r3
d0042698:	f898 3000 	ldrb.w	r3, [r8]
d004269c:	f1c3 0301 	rsb	r3, r3, #1
d00426a0:	b2db      	uxtb	r3, r3
d00426a2:	f888 3000 	strb.w	r3, [r8]
d00426a6:	f898 3000 	ldrb.w	r3, [r8]
d00426aa:	7b21      	ldrb	r1, [r4, #12]
d00426ac:	7b60      	ldrb	r0, [r4, #13]
d00426ae:	7ba2      	ldrb	r2, [r4, #14]
d00426b0:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d00426b4:	b33b      	cbz	r3, d0042706 <main+0x502>
d00426b6:	492f      	ldr	r1, [pc, #188]	; (d0042774 <main+0x570>)
d00426b8:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d00426bc:	7be3      	ldrb	r3, [r4, #15]
d00426be:	6809      	ldr	r1, [r1, #0]
d00426c0:	482d      	ldr	r0, [pc, #180]	; (d0042778 <main+0x574>)
d00426c2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00426c6:	6800      	ldr	r0, [r0, #0]
d00426c8:	681b      	ldr	r3, [r3, #0]
d00426ca:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00426cc:	4798      	blx	r3
d00426ce:	7b20      	ldrb	r0, [r4, #12]
d00426d0:	7b61      	ldrb	r1, [r4, #13]
d00426d2:	7ba2      	ldrb	r2, [r4, #14]
d00426d4:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00426d8:	7be3      	ldrb	r3, [r4, #15]
d00426da:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00426de:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00426e2:	685b      	ldr	r3, [r3, #4]
d00426e4:	681b      	ldr	r3, [r3, #0]
d00426e6:	4798      	blx	r3
d00426e8:	f7fe fdb2 	bl	d0041250 <proc_astroids>
d00426ec:	f7fe fc72 	bl	d0040fd4 <doBullets>
d00426f0:	f7ff f8a0 	bl	d0041834 <doFlames>
d00426f4:	4b17      	ldr	r3, [pc, #92]	; (d0042754 <main+0x550>)
d00426f6:	781b      	ldrb	r3, [r3, #0]
d00426f8:	07da      	lsls	r2, r3, #31
d00426fa:	f57f aee1 	bpl.w	d00424c0 <main+0x2bc>
d00426fe:	3b01      	subs	r3, #1
d0042700:	4a14      	ldr	r2, [pc, #80]	; (d0042754 <main+0x550>)
d0042702:	7013      	strb	r3, [r2, #0]
d0042704:	e6ef      	b.n	d00424e6 <main+0x2e2>
d0042706:	491c      	ldr	r1, [pc, #112]	; (d0042778 <main+0x574>)
d0042708:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d004270c:	7be3      	ldrb	r3, [r4, #15]
d004270e:	6809      	ldr	r1, [r1, #0]
d0042710:	4818      	ldr	r0, [pc, #96]	; (d0042774 <main+0x570>)
d0042712:	e7d6      	b.n	d00426c2 <main+0x4be>
d0042714:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0042718:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004271c:	d575      	bpl.n	d004280a <main+0x606>
d004271e:	f04f 0900 	mov.w	r9, #0
d0042722:	edca 8a00 	vstr	s17, [sl]
d0042726:	e7aa      	b.n	d004267e <main+0x47a>
d0042728:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d004272c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042730:	d566      	bpl.n	d0042800 <main+0x5fc>
d0042732:	2500      	movs	r5, #0
d0042734:	edcb 8a00 	vstr	s17, [fp]
d0042738:	e798      	b.n	d004266c <main+0x468>
d004273a:	f7fe fa8d 	bl	d0040c58 <ShieldOFF>
d004273e:	e752      	b.n	d00425e6 <main+0x3e2>
d0042740:	21c8      	movs	r1, #200	; 0xc8
d0042742:	231f      	movs	r3, #31
d0042744:	2200      	movs	r2, #0
d0042746:	4608      	mov	r0, r1
d0042748:	9303      	str	r3, [sp, #12]
d004274a:	f7fe fd65 	bl	d0041218 <SpawnAstroid>
d004274e:	e72d      	b.n	d00425ac <main+0x3a8>
d0042750:	d00450c0 	.word	0xd00450c0
d0042754:	d0044540 	.word	0xd0044540
d0042758:	d0044417 	.word	0xd0044417
d004275c:	d0044415 	.word	0xd0044415
d0042760:	d00450e8 	.word	0xd00450e8
d0042764:	d00450ec 	.word	0xd00450ec
d0042768:	d00450e4 	.word	0xd00450e4
d004276c:	d00450a0 	.word	0xd00450a0
d0042770:	d00450e0 	.word	0xd00450e0
d0042774:	d0046728 	.word	0xd0046728
d0042778:	d0046840 	.word	0xd0046840
d004277c:	f7fe ffe0 	bl	d0041740 <spawnFlame>
d0042780:	9b04      	ldr	r3, [sp, #16]
d0042782:	b96b      	cbnz	r3, d00427a0 <main+0x59c>
d0042784:	7d23      	ldrb	r3, [r4, #20]
d0042786:	2002      	movs	r0, #2
d0042788:	7d62      	ldrb	r2, [r4, #21]
d004278a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004278e:	7da2      	ldrb	r2, [r4, #22]
d0042790:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0042794:	7de2      	ldrb	r2, [r4, #23]
d0042796:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004279a:	689b      	ldr	r3, [r3, #8]
d004279c:	685b      	ldr	r3, [r3, #4]
d004279e:	4798      	blx	r3
d00427a0:	f8b7 c014 	ldrh.w	ip, [r7, #20]
d00427a4:	f06f 017e 	mvn.w	r1, #126	; 0x7e
d00427a8:	4b1a      	ldr	r3, [pc, #104]	; (d0042814 <main+0x610>)
d00427aa:	2002      	movs	r0, #2
d00427ac:	f10c 0c20 	add.w	ip, ip, #32
d00427b0:	f894 e014 	ldrb.w	lr, [r4, #20]
d00427b4:	fa0f fc8c 	sxth.w	ip, ip
d00427b8:	f1ac 0cf0 	sub.w	ip, ip, #240	; 0xf0
d00427bc:	ebcc 1ccc 	rsb	ip, ip, ip, lsl #7
d00427c0:	fb83 230c 	smull	r2, r3, r3, ip
d00427c4:	ea4f 79ec 	mov.w	r9, ip, asr #31
d00427c8:	7d62      	ldrb	r2, [r4, #21]
d00427ca:	4463      	add	r3, ip
d00427cc:	ea4e 2e02 	orr.w	lr, lr, r2, lsl #8
d00427d0:	7da2      	ldrb	r2, [r4, #22]
d00427d2:	ebc9 13e3 	rsb	r3, r9, r3, asr #7
d00427d6:	ea4e 4202 	orr.w	r2, lr, r2, lsl #16
d00427da:	f894 e017 	ldrb.w	lr, [r4, #23]
d00427de:	b21b      	sxth	r3, r3
d00427e0:	ea42 6e0e 	orr.w	lr, r2, lr, lsl #24
d00427e4:	2b7f      	cmp	r3, #127	; 0x7f
d00427e6:	bfa8      	it	ge
d00427e8:	237f      	movge	r3, #127	; 0x7f
d00427ea:	4299      	cmp	r1, r3
d00427ec:	bfb8      	it	lt
d00427ee:	4619      	movlt	r1, r3
d00427f0:	2301      	movs	r3, #1
d00427f2:	9304      	str	r3, [sp, #16]
d00427f4:	b249      	sxtb	r1, r1
d00427f6:	f8de 3008 	ldr.w	r3, [lr, #8]
d00427fa:	699b      	ldr	r3, [r3, #24]
d00427fc:	4798      	blx	r3
d00427fe:	e6ed      	b.n	d00425dc <main+0x3d8>
d0042800:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0042804:	ee17 5a10 	vmov	r5, s14
d0042808:	e730      	b.n	d004266c <main+0x468>
d004280a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004280e:	ee17 9a90 	vmov	r9, s15
d0042812:	e734      	b.n	d004267e <main+0x47a>
d0042814:	88888889 	.word	0x88888889

d0042818 <__errno>:
d0042818:	4b01      	ldr	r3, [pc, #4]	; (d0042820 <__errno+0x8>)
d004281a:	6818      	ldr	r0, [r3, #0]
d004281c:	4770      	bx	lr
d004281e:	bf00      	nop
d0042820:	d004439c 	.word	0xd004439c

d0042824 <malloc>:
d0042824:	4b02      	ldr	r3, [pc, #8]	; (d0042830 <malloc+0xc>)
d0042826:	4601      	mov	r1, r0
d0042828:	6818      	ldr	r0, [r3, #0]
d004282a:	f000 b877 	b.w	d004291c <_malloc_r>
d004282e:	bf00      	nop
d0042830:	d004439c 	.word	0xd004439c

d0042834 <memcmp>:
d0042834:	b530      	push	{r4, r5, lr}
d0042836:	3901      	subs	r1, #1
d0042838:	2400      	movs	r4, #0
d004283a:	42a2      	cmp	r2, r4
d004283c:	d101      	bne.n	d0042842 <memcmp+0xe>
d004283e:	2000      	movs	r0, #0
d0042840:	e005      	b.n	d004284e <memcmp+0x1a>
d0042842:	5d03      	ldrb	r3, [r0, r4]
d0042844:	3401      	adds	r4, #1
d0042846:	5d0d      	ldrb	r5, [r1, r4]
d0042848:	42ab      	cmp	r3, r5
d004284a:	d0f6      	beq.n	d004283a <memcmp+0x6>
d004284c:	1b58      	subs	r0, r3, r5
d004284e:	bd30      	pop	{r4, r5, pc}

d0042850 <memcpy>:
d0042850:	440a      	add	r2, r1
d0042852:	4291      	cmp	r1, r2
d0042854:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0042858:	d100      	bne.n	d004285c <memcpy+0xc>
d004285a:	4770      	bx	lr
d004285c:	b510      	push	{r4, lr}
d004285e:	f811 4b01 	ldrb.w	r4, [r1], #1
d0042862:	f803 4f01 	strb.w	r4, [r3, #1]!
d0042866:	4291      	cmp	r1, r2
d0042868:	d1f9      	bne.n	d004285e <memcpy+0xe>
d004286a:	bd10      	pop	{r4, pc}

d004286c <memset>:
d004286c:	4402      	add	r2, r0
d004286e:	4603      	mov	r3, r0
d0042870:	4293      	cmp	r3, r2
d0042872:	d100      	bne.n	d0042876 <memset+0xa>
d0042874:	4770      	bx	lr
d0042876:	f803 1b01 	strb.w	r1, [r3], #1
d004287a:	e7f9      	b.n	d0042870 <memset+0x4>

d004287c <_free_r>:
d004287c:	b537      	push	{r0, r1, r2, r4, r5, lr}
d004287e:	2900      	cmp	r1, #0
d0042880:	d048      	beq.n	d0042914 <_free_r+0x98>
d0042882:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0042886:	9001      	str	r0, [sp, #4]
d0042888:	2b00      	cmp	r3, #0
d004288a:	f1a1 0404 	sub.w	r4, r1, #4
d004288e:	bfb8      	it	lt
d0042890:	18e4      	addlt	r4, r4, r3
d0042892:	f000 fb69 	bl	d0042f68 <__malloc_lock>
d0042896:	4a20      	ldr	r2, [pc, #128]	; (d0042918 <_free_r+0x9c>)
d0042898:	9801      	ldr	r0, [sp, #4]
d004289a:	6813      	ldr	r3, [r2, #0]
d004289c:	4615      	mov	r5, r2
d004289e:	b933      	cbnz	r3, d00428ae <_free_r+0x32>
d00428a0:	6063      	str	r3, [r4, #4]
d00428a2:	6014      	str	r4, [r2, #0]
d00428a4:	b003      	add	sp, #12
d00428a6:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d00428aa:	f000 bb63 	b.w	d0042f74 <__malloc_unlock>
d00428ae:	42a3      	cmp	r3, r4
d00428b0:	d90b      	bls.n	d00428ca <_free_r+0x4e>
d00428b2:	6821      	ldr	r1, [r4, #0]
d00428b4:	1862      	adds	r2, r4, r1
d00428b6:	4293      	cmp	r3, r2
d00428b8:	bf04      	itt	eq
d00428ba:	681a      	ldreq	r2, [r3, #0]
d00428bc:	685b      	ldreq	r3, [r3, #4]
d00428be:	6063      	str	r3, [r4, #4]
d00428c0:	bf04      	itt	eq
d00428c2:	1852      	addeq	r2, r2, r1
d00428c4:	6022      	streq	r2, [r4, #0]
d00428c6:	602c      	str	r4, [r5, #0]
d00428c8:	e7ec      	b.n	d00428a4 <_free_r+0x28>
d00428ca:	461a      	mov	r2, r3
d00428cc:	685b      	ldr	r3, [r3, #4]
d00428ce:	b10b      	cbz	r3, d00428d4 <_free_r+0x58>
d00428d0:	42a3      	cmp	r3, r4
d00428d2:	d9fa      	bls.n	d00428ca <_free_r+0x4e>
d00428d4:	6811      	ldr	r1, [r2, #0]
d00428d6:	1855      	adds	r5, r2, r1
d00428d8:	42a5      	cmp	r5, r4
d00428da:	d10b      	bne.n	d00428f4 <_free_r+0x78>
d00428dc:	6824      	ldr	r4, [r4, #0]
d00428de:	4421      	add	r1, r4
d00428e0:	1854      	adds	r4, r2, r1
d00428e2:	42a3      	cmp	r3, r4
d00428e4:	6011      	str	r1, [r2, #0]
d00428e6:	d1dd      	bne.n	d00428a4 <_free_r+0x28>
d00428e8:	681c      	ldr	r4, [r3, #0]
d00428ea:	685b      	ldr	r3, [r3, #4]
d00428ec:	6053      	str	r3, [r2, #4]
d00428ee:	4421      	add	r1, r4
d00428f0:	6011      	str	r1, [r2, #0]
d00428f2:	e7d7      	b.n	d00428a4 <_free_r+0x28>
d00428f4:	d902      	bls.n	d00428fc <_free_r+0x80>
d00428f6:	230c      	movs	r3, #12
d00428f8:	6003      	str	r3, [r0, #0]
d00428fa:	e7d3      	b.n	d00428a4 <_free_r+0x28>
d00428fc:	6825      	ldr	r5, [r4, #0]
d00428fe:	1961      	adds	r1, r4, r5
d0042900:	428b      	cmp	r3, r1
d0042902:	bf04      	itt	eq
d0042904:	6819      	ldreq	r1, [r3, #0]
d0042906:	685b      	ldreq	r3, [r3, #4]
d0042908:	6063      	str	r3, [r4, #4]
d004290a:	bf04      	itt	eq
d004290c:	1949      	addeq	r1, r1, r5
d004290e:	6021      	streq	r1, [r4, #0]
d0042910:	6054      	str	r4, [r2, #4]
d0042912:	e7c7      	b.n	d00428a4 <_free_r+0x28>
d0042914:	b003      	add	sp, #12
d0042916:	bd30      	pop	{r4, r5, pc}
d0042918:	d0044418 	.word	0xd0044418

d004291c <_malloc_r>:
d004291c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d004291e:	1ccd      	adds	r5, r1, #3
d0042920:	f025 0503 	bic.w	r5, r5, #3
d0042924:	3508      	adds	r5, #8
d0042926:	2d0c      	cmp	r5, #12
d0042928:	bf38      	it	cc
d004292a:	250c      	movcc	r5, #12
d004292c:	2d00      	cmp	r5, #0
d004292e:	4606      	mov	r6, r0
d0042930:	db01      	blt.n	d0042936 <_malloc_r+0x1a>
d0042932:	42a9      	cmp	r1, r5
d0042934:	d903      	bls.n	d004293e <_malloc_r+0x22>
d0042936:	230c      	movs	r3, #12
d0042938:	6033      	str	r3, [r6, #0]
d004293a:	2000      	movs	r0, #0
d004293c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d004293e:	f000 fb13 	bl	d0042f68 <__malloc_lock>
d0042942:	4921      	ldr	r1, [pc, #132]	; (d00429c8 <_malloc_r+0xac>)
d0042944:	680a      	ldr	r2, [r1, #0]
d0042946:	4614      	mov	r4, r2
d0042948:	b99c      	cbnz	r4, d0042972 <_malloc_r+0x56>
d004294a:	4f20      	ldr	r7, [pc, #128]	; (d00429cc <_malloc_r+0xb0>)
d004294c:	683b      	ldr	r3, [r7, #0]
d004294e:	b923      	cbnz	r3, d004295a <_malloc_r+0x3e>
d0042950:	4621      	mov	r1, r4
d0042952:	4630      	mov	r0, r6
d0042954:	f7fd fc18 	bl	d0040188 <_sbrk_r>
d0042958:	6038      	str	r0, [r7, #0]
d004295a:	4629      	mov	r1, r5
d004295c:	4630      	mov	r0, r6
d004295e:	f7fd fc13 	bl	d0040188 <_sbrk_r>
d0042962:	1c43      	adds	r3, r0, #1
d0042964:	d123      	bne.n	d00429ae <_malloc_r+0x92>
d0042966:	230c      	movs	r3, #12
d0042968:	6033      	str	r3, [r6, #0]
d004296a:	4630      	mov	r0, r6
d004296c:	f000 fb02 	bl	d0042f74 <__malloc_unlock>
d0042970:	e7e3      	b.n	d004293a <_malloc_r+0x1e>
d0042972:	6823      	ldr	r3, [r4, #0]
d0042974:	1b5b      	subs	r3, r3, r5
d0042976:	d417      	bmi.n	d00429a8 <_malloc_r+0x8c>
d0042978:	2b0b      	cmp	r3, #11
d004297a:	d903      	bls.n	d0042984 <_malloc_r+0x68>
d004297c:	6023      	str	r3, [r4, #0]
d004297e:	441c      	add	r4, r3
d0042980:	6025      	str	r5, [r4, #0]
d0042982:	e004      	b.n	d004298e <_malloc_r+0x72>
d0042984:	6863      	ldr	r3, [r4, #4]
d0042986:	42a2      	cmp	r2, r4
d0042988:	bf0c      	ite	eq
d004298a:	600b      	streq	r3, [r1, #0]
d004298c:	6053      	strne	r3, [r2, #4]
d004298e:	4630      	mov	r0, r6
d0042990:	f000 faf0 	bl	d0042f74 <__malloc_unlock>
d0042994:	f104 000b 	add.w	r0, r4, #11
d0042998:	1d23      	adds	r3, r4, #4
d004299a:	f020 0007 	bic.w	r0, r0, #7
d004299e:	1ac2      	subs	r2, r0, r3
d00429a0:	d0cc      	beq.n	d004293c <_malloc_r+0x20>
d00429a2:	1a1b      	subs	r3, r3, r0
d00429a4:	50a3      	str	r3, [r4, r2]
d00429a6:	e7c9      	b.n	d004293c <_malloc_r+0x20>
d00429a8:	4622      	mov	r2, r4
d00429aa:	6864      	ldr	r4, [r4, #4]
d00429ac:	e7cc      	b.n	d0042948 <_malloc_r+0x2c>
d00429ae:	1cc4      	adds	r4, r0, #3
d00429b0:	f024 0403 	bic.w	r4, r4, #3
d00429b4:	42a0      	cmp	r0, r4
d00429b6:	d0e3      	beq.n	d0042980 <_malloc_r+0x64>
d00429b8:	1a21      	subs	r1, r4, r0
d00429ba:	4630      	mov	r0, r6
d00429bc:	f7fd fbe4 	bl	d0040188 <_sbrk_r>
d00429c0:	3001      	adds	r0, #1
d00429c2:	d1dd      	bne.n	d0042980 <_malloc_r+0x64>
d00429c4:	e7cf      	b.n	d0042966 <_malloc_r+0x4a>
d00429c6:	bf00      	nop
d00429c8:	d0044418 	.word	0xd0044418
d00429cc:	d004441c 	.word	0xd004441c

d00429d0 <setbuf>:
d00429d0:	2900      	cmp	r1, #0
d00429d2:	f44f 6380 	mov.w	r3, #1024	; 0x400
d00429d6:	bf0c      	ite	eq
d00429d8:	2202      	moveq	r2, #2
d00429da:	2200      	movne	r2, #0
d00429dc:	f000 b800 	b.w	d00429e0 <setvbuf>

d00429e0 <setvbuf>:
d00429e0:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d00429e4:	461d      	mov	r5, r3
d00429e6:	4b5d      	ldr	r3, [pc, #372]	; (d0042b5c <setvbuf+0x17c>)
d00429e8:	681f      	ldr	r7, [r3, #0]
d00429ea:	4604      	mov	r4, r0
d00429ec:	460e      	mov	r6, r1
d00429ee:	4690      	mov	r8, r2
d00429f0:	b127      	cbz	r7, d00429fc <setvbuf+0x1c>
d00429f2:	69bb      	ldr	r3, [r7, #24]
d00429f4:	b913      	cbnz	r3, d00429fc <setvbuf+0x1c>
d00429f6:	4638      	mov	r0, r7
d00429f8:	f000 f9f2 	bl	d0042de0 <__sinit>
d00429fc:	4b58      	ldr	r3, [pc, #352]	; (d0042b60 <setvbuf+0x180>)
d00429fe:	429c      	cmp	r4, r3
d0042a00:	d167      	bne.n	d0042ad2 <setvbuf+0xf2>
d0042a02:	687c      	ldr	r4, [r7, #4]
d0042a04:	f1b8 0f02 	cmp.w	r8, #2
d0042a08:	d006      	beq.n	d0042a18 <setvbuf+0x38>
d0042a0a:	f1b8 0f01 	cmp.w	r8, #1
d0042a0e:	f200 809f 	bhi.w	d0042b50 <setvbuf+0x170>
d0042a12:	2d00      	cmp	r5, #0
d0042a14:	f2c0 809c 	blt.w	d0042b50 <setvbuf+0x170>
d0042a18:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0042a1a:	07db      	lsls	r3, r3, #31
d0042a1c:	d405      	bmi.n	d0042a2a <setvbuf+0x4a>
d0042a1e:	89a3      	ldrh	r3, [r4, #12]
d0042a20:	0598      	lsls	r0, r3, #22
d0042a22:	d402      	bmi.n	d0042a2a <setvbuf+0x4a>
d0042a24:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0042a26:	f000 fa79 	bl	d0042f1c <__retarget_lock_acquire_recursive>
d0042a2a:	4621      	mov	r1, r4
d0042a2c:	4638      	mov	r0, r7
d0042a2e:	f000 f943 	bl	d0042cb8 <_fflush_r>
d0042a32:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0042a34:	b141      	cbz	r1, d0042a48 <setvbuf+0x68>
d0042a36:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0042a3a:	4299      	cmp	r1, r3
d0042a3c:	d002      	beq.n	d0042a44 <setvbuf+0x64>
d0042a3e:	4638      	mov	r0, r7
d0042a40:	f7ff ff1c 	bl	d004287c <_free_r>
d0042a44:	2300      	movs	r3, #0
d0042a46:	6363      	str	r3, [r4, #52]	; 0x34
d0042a48:	2300      	movs	r3, #0
d0042a4a:	61a3      	str	r3, [r4, #24]
d0042a4c:	6063      	str	r3, [r4, #4]
d0042a4e:	89a3      	ldrh	r3, [r4, #12]
d0042a50:	0619      	lsls	r1, r3, #24
d0042a52:	d503      	bpl.n	d0042a5c <setvbuf+0x7c>
d0042a54:	6921      	ldr	r1, [r4, #16]
d0042a56:	4638      	mov	r0, r7
d0042a58:	f7ff ff10 	bl	d004287c <_free_r>
d0042a5c:	89a3      	ldrh	r3, [r4, #12]
d0042a5e:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d0042a62:	f023 0303 	bic.w	r3, r3, #3
d0042a66:	f1b8 0f02 	cmp.w	r8, #2
d0042a6a:	81a3      	strh	r3, [r4, #12]
d0042a6c:	d06c      	beq.n	d0042b48 <setvbuf+0x168>
d0042a6e:	ab01      	add	r3, sp, #4
d0042a70:	466a      	mov	r2, sp
d0042a72:	4621      	mov	r1, r4
d0042a74:	4638      	mov	r0, r7
d0042a76:	f000 fa53 	bl	d0042f20 <__swhatbuf_r>
d0042a7a:	89a3      	ldrh	r3, [r4, #12]
d0042a7c:	4318      	orrs	r0, r3
d0042a7e:	81a0      	strh	r0, [r4, #12]
d0042a80:	2d00      	cmp	r5, #0
d0042a82:	d130      	bne.n	d0042ae6 <setvbuf+0x106>
d0042a84:	9d00      	ldr	r5, [sp, #0]
d0042a86:	4628      	mov	r0, r5
d0042a88:	f7ff fecc 	bl	d0042824 <malloc>
d0042a8c:	4606      	mov	r6, r0
d0042a8e:	2800      	cmp	r0, #0
d0042a90:	d155      	bne.n	d0042b3e <setvbuf+0x15e>
d0042a92:	f8dd 9000 	ldr.w	r9, [sp]
d0042a96:	45a9      	cmp	r9, r5
d0042a98:	d14a      	bne.n	d0042b30 <setvbuf+0x150>
d0042a9a:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0042a9e:	2200      	movs	r2, #0
d0042aa0:	60a2      	str	r2, [r4, #8]
d0042aa2:	f104 0247 	add.w	r2, r4, #71	; 0x47
d0042aa6:	6022      	str	r2, [r4, #0]
d0042aa8:	6122      	str	r2, [r4, #16]
d0042aaa:	2201      	movs	r2, #1
d0042aac:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0042ab0:	6162      	str	r2, [r4, #20]
d0042ab2:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0042ab4:	f043 0302 	orr.w	r3, r3, #2
d0042ab8:	07d2      	lsls	r2, r2, #31
d0042aba:	81a3      	strh	r3, [r4, #12]
d0042abc:	d405      	bmi.n	d0042aca <setvbuf+0xea>
d0042abe:	f413 7f00 	tst.w	r3, #512	; 0x200
d0042ac2:	d102      	bne.n	d0042aca <setvbuf+0xea>
d0042ac4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0042ac6:	f000 fa2a 	bl	d0042f1e <__retarget_lock_release_recursive>
d0042aca:	4628      	mov	r0, r5
d0042acc:	b003      	add	sp, #12
d0042ace:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0042ad2:	4b24      	ldr	r3, [pc, #144]	; (d0042b64 <setvbuf+0x184>)
d0042ad4:	429c      	cmp	r4, r3
d0042ad6:	d101      	bne.n	d0042adc <setvbuf+0xfc>
d0042ad8:	68bc      	ldr	r4, [r7, #8]
d0042ada:	e793      	b.n	d0042a04 <setvbuf+0x24>
d0042adc:	4b22      	ldr	r3, [pc, #136]	; (d0042b68 <setvbuf+0x188>)
d0042ade:	429c      	cmp	r4, r3
d0042ae0:	bf08      	it	eq
d0042ae2:	68fc      	ldreq	r4, [r7, #12]
d0042ae4:	e78e      	b.n	d0042a04 <setvbuf+0x24>
d0042ae6:	2e00      	cmp	r6, #0
d0042ae8:	d0cd      	beq.n	d0042a86 <setvbuf+0xa6>
d0042aea:	69bb      	ldr	r3, [r7, #24]
d0042aec:	b913      	cbnz	r3, d0042af4 <setvbuf+0x114>
d0042aee:	4638      	mov	r0, r7
d0042af0:	f000 f976 	bl	d0042de0 <__sinit>
d0042af4:	f1b8 0f01 	cmp.w	r8, #1
d0042af8:	bf08      	it	eq
d0042afa:	89a3      	ldrheq	r3, [r4, #12]
d0042afc:	6026      	str	r6, [r4, #0]
d0042afe:	bf04      	itt	eq
d0042b00:	f043 0301 	orreq.w	r3, r3, #1
d0042b04:	81a3      	strheq	r3, [r4, #12]
d0042b06:	89a2      	ldrh	r2, [r4, #12]
d0042b08:	f012 0308 	ands.w	r3, r2, #8
d0042b0c:	e9c4 6504 	strd	r6, r5, [r4, #16]
d0042b10:	d01c      	beq.n	d0042b4c <setvbuf+0x16c>
d0042b12:	07d3      	lsls	r3, r2, #31
d0042b14:	bf41      	itttt	mi
d0042b16:	2300      	movmi	r3, #0
d0042b18:	426d      	negmi	r5, r5
d0042b1a:	60a3      	strmi	r3, [r4, #8]
d0042b1c:	61a5      	strmi	r5, [r4, #24]
d0042b1e:	bf58      	it	pl
d0042b20:	60a5      	strpl	r5, [r4, #8]
d0042b22:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0042b24:	f015 0501 	ands.w	r5, r5, #1
d0042b28:	d115      	bne.n	d0042b56 <setvbuf+0x176>
d0042b2a:	f412 7f00 	tst.w	r2, #512	; 0x200
d0042b2e:	e7c8      	b.n	d0042ac2 <setvbuf+0xe2>
d0042b30:	4648      	mov	r0, r9
d0042b32:	f7ff fe77 	bl	d0042824 <malloc>
d0042b36:	4606      	mov	r6, r0
d0042b38:	2800      	cmp	r0, #0
d0042b3a:	d0ae      	beq.n	d0042a9a <setvbuf+0xba>
d0042b3c:	464d      	mov	r5, r9
d0042b3e:	89a3      	ldrh	r3, [r4, #12]
d0042b40:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0042b44:	81a3      	strh	r3, [r4, #12]
d0042b46:	e7d0      	b.n	d0042aea <setvbuf+0x10a>
d0042b48:	2500      	movs	r5, #0
d0042b4a:	e7a8      	b.n	d0042a9e <setvbuf+0xbe>
d0042b4c:	60a3      	str	r3, [r4, #8]
d0042b4e:	e7e8      	b.n	d0042b22 <setvbuf+0x142>
d0042b50:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0042b54:	e7b9      	b.n	d0042aca <setvbuf+0xea>
d0042b56:	2500      	movs	r5, #0
d0042b58:	e7b7      	b.n	d0042aca <setvbuf+0xea>
d0042b5a:	bf00      	nop
d0042b5c:	d004439c 	.word	0xd004439c
d0042b60:	d0043afc 	.word	0xd0043afc
d0042b64:	d0043b1c 	.word	0xd0043b1c
d0042b68:	d0043adc 	.word	0xd0043adc

d0042b6c <siprintf>:
d0042b6c:	b40e      	push	{r1, r2, r3}
d0042b6e:	b500      	push	{lr}
d0042b70:	b09c      	sub	sp, #112	; 0x70
d0042b72:	ab1d      	add	r3, sp, #116	; 0x74
d0042b74:	9002      	str	r0, [sp, #8]
d0042b76:	9006      	str	r0, [sp, #24]
d0042b78:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d0042b7c:	4809      	ldr	r0, [pc, #36]	; (d0042ba4 <siprintf+0x38>)
d0042b7e:	9107      	str	r1, [sp, #28]
d0042b80:	9104      	str	r1, [sp, #16]
d0042b82:	4909      	ldr	r1, [pc, #36]	; (d0042ba8 <siprintf+0x3c>)
d0042b84:	f853 2b04 	ldr.w	r2, [r3], #4
d0042b88:	9105      	str	r1, [sp, #20]
d0042b8a:	6800      	ldr	r0, [r0, #0]
d0042b8c:	9301      	str	r3, [sp, #4]
d0042b8e:	a902      	add	r1, sp, #8
d0042b90:	f000 fa52 	bl	d0043038 <_svfiprintf_r>
d0042b94:	9b02      	ldr	r3, [sp, #8]
d0042b96:	2200      	movs	r2, #0
d0042b98:	701a      	strb	r2, [r3, #0]
d0042b9a:	b01c      	add	sp, #112	; 0x70
d0042b9c:	f85d eb04 	ldr.w	lr, [sp], #4
d0042ba0:	b003      	add	sp, #12
d0042ba2:	4770      	bx	lr
d0042ba4:	d004439c 	.word	0xd004439c
d0042ba8:	ffff0208 	.word	0xffff0208

d0042bac <__sflush_r>:
d0042bac:	898a      	ldrh	r2, [r1, #12]
d0042bae:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0042bb2:	4605      	mov	r5, r0
d0042bb4:	0710      	lsls	r0, r2, #28
d0042bb6:	460c      	mov	r4, r1
d0042bb8:	d458      	bmi.n	d0042c6c <__sflush_r+0xc0>
d0042bba:	684b      	ldr	r3, [r1, #4]
d0042bbc:	2b00      	cmp	r3, #0
d0042bbe:	dc05      	bgt.n	d0042bcc <__sflush_r+0x20>
d0042bc0:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0042bc2:	2b00      	cmp	r3, #0
d0042bc4:	dc02      	bgt.n	d0042bcc <__sflush_r+0x20>
d0042bc6:	2000      	movs	r0, #0
d0042bc8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0042bcc:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0042bce:	2e00      	cmp	r6, #0
d0042bd0:	d0f9      	beq.n	d0042bc6 <__sflush_r+0x1a>
d0042bd2:	2300      	movs	r3, #0
d0042bd4:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0042bd8:	682f      	ldr	r7, [r5, #0]
d0042bda:	602b      	str	r3, [r5, #0]
d0042bdc:	d032      	beq.n	d0042c44 <__sflush_r+0x98>
d0042bde:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0042be0:	89a3      	ldrh	r3, [r4, #12]
d0042be2:	075a      	lsls	r2, r3, #29
d0042be4:	d505      	bpl.n	d0042bf2 <__sflush_r+0x46>
d0042be6:	6863      	ldr	r3, [r4, #4]
d0042be8:	1ac0      	subs	r0, r0, r3
d0042bea:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0042bec:	b10b      	cbz	r3, d0042bf2 <__sflush_r+0x46>
d0042bee:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0042bf0:	1ac0      	subs	r0, r0, r3
d0042bf2:	2300      	movs	r3, #0
d0042bf4:	4602      	mov	r2, r0
d0042bf6:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0042bf8:	6a21      	ldr	r1, [r4, #32]
d0042bfa:	4628      	mov	r0, r5
d0042bfc:	47b0      	blx	r6
d0042bfe:	1c43      	adds	r3, r0, #1
d0042c00:	89a3      	ldrh	r3, [r4, #12]
d0042c02:	d106      	bne.n	d0042c12 <__sflush_r+0x66>
d0042c04:	6829      	ldr	r1, [r5, #0]
d0042c06:	291d      	cmp	r1, #29
d0042c08:	d82c      	bhi.n	d0042c64 <__sflush_r+0xb8>
d0042c0a:	4a2a      	ldr	r2, [pc, #168]	; (d0042cb4 <__sflush_r+0x108>)
d0042c0c:	40ca      	lsrs	r2, r1
d0042c0e:	07d6      	lsls	r6, r2, #31
d0042c10:	d528      	bpl.n	d0042c64 <__sflush_r+0xb8>
d0042c12:	2200      	movs	r2, #0
d0042c14:	6062      	str	r2, [r4, #4]
d0042c16:	04d9      	lsls	r1, r3, #19
d0042c18:	6922      	ldr	r2, [r4, #16]
d0042c1a:	6022      	str	r2, [r4, #0]
d0042c1c:	d504      	bpl.n	d0042c28 <__sflush_r+0x7c>
d0042c1e:	1c42      	adds	r2, r0, #1
d0042c20:	d101      	bne.n	d0042c26 <__sflush_r+0x7a>
d0042c22:	682b      	ldr	r3, [r5, #0]
d0042c24:	b903      	cbnz	r3, d0042c28 <__sflush_r+0x7c>
d0042c26:	6560      	str	r0, [r4, #84]	; 0x54
d0042c28:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0042c2a:	602f      	str	r7, [r5, #0]
d0042c2c:	2900      	cmp	r1, #0
d0042c2e:	d0ca      	beq.n	d0042bc6 <__sflush_r+0x1a>
d0042c30:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0042c34:	4299      	cmp	r1, r3
d0042c36:	d002      	beq.n	d0042c3e <__sflush_r+0x92>
d0042c38:	4628      	mov	r0, r5
d0042c3a:	f7ff fe1f 	bl	d004287c <_free_r>
d0042c3e:	2000      	movs	r0, #0
d0042c40:	6360      	str	r0, [r4, #52]	; 0x34
d0042c42:	e7c1      	b.n	d0042bc8 <__sflush_r+0x1c>
d0042c44:	6a21      	ldr	r1, [r4, #32]
d0042c46:	2301      	movs	r3, #1
d0042c48:	4628      	mov	r0, r5
d0042c4a:	47b0      	blx	r6
d0042c4c:	1c41      	adds	r1, r0, #1
d0042c4e:	d1c7      	bne.n	d0042be0 <__sflush_r+0x34>
d0042c50:	682b      	ldr	r3, [r5, #0]
d0042c52:	2b00      	cmp	r3, #0
d0042c54:	d0c4      	beq.n	d0042be0 <__sflush_r+0x34>
d0042c56:	2b1d      	cmp	r3, #29
d0042c58:	d001      	beq.n	d0042c5e <__sflush_r+0xb2>
d0042c5a:	2b16      	cmp	r3, #22
d0042c5c:	d101      	bne.n	d0042c62 <__sflush_r+0xb6>
d0042c5e:	602f      	str	r7, [r5, #0]
d0042c60:	e7b1      	b.n	d0042bc6 <__sflush_r+0x1a>
d0042c62:	89a3      	ldrh	r3, [r4, #12]
d0042c64:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0042c68:	81a3      	strh	r3, [r4, #12]
d0042c6a:	e7ad      	b.n	d0042bc8 <__sflush_r+0x1c>
d0042c6c:	690f      	ldr	r7, [r1, #16]
d0042c6e:	2f00      	cmp	r7, #0
d0042c70:	d0a9      	beq.n	d0042bc6 <__sflush_r+0x1a>
d0042c72:	0793      	lsls	r3, r2, #30
d0042c74:	680e      	ldr	r6, [r1, #0]
d0042c76:	bf08      	it	eq
d0042c78:	694b      	ldreq	r3, [r1, #20]
d0042c7a:	600f      	str	r7, [r1, #0]
d0042c7c:	bf18      	it	ne
d0042c7e:	2300      	movne	r3, #0
d0042c80:	eba6 0807 	sub.w	r8, r6, r7
d0042c84:	608b      	str	r3, [r1, #8]
d0042c86:	f1b8 0f00 	cmp.w	r8, #0
d0042c8a:	dd9c      	ble.n	d0042bc6 <__sflush_r+0x1a>
d0042c8c:	6a21      	ldr	r1, [r4, #32]
d0042c8e:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0042c90:	4643      	mov	r3, r8
d0042c92:	463a      	mov	r2, r7
d0042c94:	4628      	mov	r0, r5
d0042c96:	47b0      	blx	r6
d0042c98:	2800      	cmp	r0, #0
d0042c9a:	dc06      	bgt.n	d0042caa <__sflush_r+0xfe>
d0042c9c:	89a3      	ldrh	r3, [r4, #12]
d0042c9e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0042ca2:	81a3      	strh	r3, [r4, #12]
d0042ca4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0042ca8:	e78e      	b.n	d0042bc8 <__sflush_r+0x1c>
d0042caa:	4407      	add	r7, r0
d0042cac:	eba8 0800 	sub.w	r8, r8, r0
d0042cb0:	e7e9      	b.n	d0042c86 <__sflush_r+0xda>
d0042cb2:	bf00      	nop
d0042cb4:	20400001 	.word	0x20400001

d0042cb8 <_fflush_r>:
d0042cb8:	b538      	push	{r3, r4, r5, lr}
d0042cba:	690b      	ldr	r3, [r1, #16]
d0042cbc:	4605      	mov	r5, r0
d0042cbe:	460c      	mov	r4, r1
d0042cc0:	b913      	cbnz	r3, d0042cc8 <_fflush_r+0x10>
d0042cc2:	2500      	movs	r5, #0
d0042cc4:	4628      	mov	r0, r5
d0042cc6:	bd38      	pop	{r3, r4, r5, pc}
d0042cc8:	b118      	cbz	r0, d0042cd2 <_fflush_r+0x1a>
d0042cca:	6983      	ldr	r3, [r0, #24]
d0042ccc:	b90b      	cbnz	r3, d0042cd2 <_fflush_r+0x1a>
d0042cce:	f000 f887 	bl	d0042de0 <__sinit>
d0042cd2:	4b14      	ldr	r3, [pc, #80]	; (d0042d24 <_fflush_r+0x6c>)
d0042cd4:	429c      	cmp	r4, r3
d0042cd6:	d11b      	bne.n	d0042d10 <_fflush_r+0x58>
d0042cd8:	686c      	ldr	r4, [r5, #4]
d0042cda:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0042cde:	2b00      	cmp	r3, #0
d0042ce0:	d0ef      	beq.n	d0042cc2 <_fflush_r+0xa>
d0042ce2:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0042ce4:	07d0      	lsls	r0, r2, #31
d0042ce6:	d404      	bmi.n	d0042cf2 <_fflush_r+0x3a>
d0042ce8:	0599      	lsls	r1, r3, #22
d0042cea:	d402      	bmi.n	d0042cf2 <_fflush_r+0x3a>
d0042cec:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0042cee:	f000 f915 	bl	d0042f1c <__retarget_lock_acquire_recursive>
d0042cf2:	4628      	mov	r0, r5
d0042cf4:	4621      	mov	r1, r4
d0042cf6:	f7ff ff59 	bl	d0042bac <__sflush_r>
d0042cfa:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0042cfc:	07da      	lsls	r2, r3, #31
d0042cfe:	4605      	mov	r5, r0
d0042d00:	d4e0      	bmi.n	d0042cc4 <_fflush_r+0xc>
d0042d02:	89a3      	ldrh	r3, [r4, #12]
d0042d04:	059b      	lsls	r3, r3, #22
d0042d06:	d4dd      	bmi.n	d0042cc4 <_fflush_r+0xc>
d0042d08:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0042d0a:	f000 f908 	bl	d0042f1e <__retarget_lock_release_recursive>
d0042d0e:	e7d9      	b.n	d0042cc4 <_fflush_r+0xc>
d0042d10:	4b05      	ldr	r3, [pc, #20]	; (d0042d28 <_fflush_r+0x70>)
d0042d12:	429c      	cmp	r4, r3
d0042d14:	d101      	bne.n	d0042d1a <_fflush_r+0x62>
d0042d16:	68ac      	ldr	r4, [r5, #8]
d0042d18:	e7df      	b.n	d0042cda <_fflush_r+0x22>
d0042d1a:	4b04      	ldr	r3, [pc, #16]	; (d0042d2c <_fflush_r+0x74>)
d0042d1c:	429c      	cmp	r4, r3
d0042d1e:	bf08      	it	eq
d0042d20:	68ec      	ldreq	r4, [r5, #12]
d0042d22:	e7da      	b.n	d0042cda <_fflush_r+0x22>
d0042d24:	d0043afc 	.word	0xd0043afc
d0042d28:	d0043b1c 	.word	0xd0043b1c
d0042d2c:	d0043adc 	.word	0xd0043adc

d0042d30 <std>:
d0042d30:	2300      	movs	r3, #0
d0042d32:	b510      	push	{r4, lr}
d0042d34:	4604      	mov	r4, r0
d0042d36:	e9c0 3300 	strd	r3, r3, [r0]
d0042d3a:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0042d3e:	6083      	str	r3, [r0, #8]
d0042d40:	8181      	strh	r1, [r0, #12]
d0042d42:	6643      	str	r3, [r0, #100]	; 0x64
d0042d44:	81c2      	strh	r2, [r0, #14]
d0042d46:	6183      	str	r3, [r0, #24]
d0042d48:	4619      	mov	r1, r3
d0042d4a:	2208      	movs	r2, #8
d0042d4c:	305c      	adds	r0, #92	; 0x5c
d0042d4e:	f7ff fd8d 	bl	d004286c <memset>
d0042d52:	4b05      	ldr	r3, [pc, #20]	; (d0042d68 <std+0x38>)
d0042d54:	6263      	str	r3, [r4, #36]	; 0x24
d0042d56:	4b05      	ldr	r3, [pc, #20]	; (d0042d6c <std+0x3c>)
d0042d58:	62a3      	str	r3, [r4, #40]	; 0x28
d0042d5a:	4b05      	ldr	r3, [pc, #20]	; (d0042d70 <std+0x40>)
d0042d5c:	62e3      	str	r3, [r4, #44]	; 0x2c
d0042d5e:	4b05      	ldr	r3, [pc, #20]	; (d0042d74 <std+0x44>)
d0042d60:	6224      	str	r4, [r4, #32]
d0042d62:	6323      	str	r3, [r4, #48]	; 0x30
d0042d64:	bd10      	pop	{r4, pc}
d0042d66:	bf00      	nop
d0042d68:	d0043561 	.word	0xd0043561
d0042d6c:	d0043583 	.word	0xd0043583
d0042d70:	d00435bb 	.word	0xd00435bb
d0042d74:	d00435df 	.word	0xd00435df

d0042d78 <_cleanup_r>:
d0042d78:	4901      	ldr	r1, [pc, #4]	; (d0042d80 <_cleanup_r+0x8>)
d0042d7a:	f000 b8af 	b.w	d0042edc <_fwalk_reent>
d0042d7e:	bf00      	nop
d0042d80:	d0042cb9 	.word	0xd0042cb9

d0042d84 <__sfmoreglue>:
d0042d84:	b570      	push	{r4, r5, r6, lr}
d0042d86:	1e4a      	subs	r2, r1, #1
d0042d88:	2568      	movs	r5, #104	; 0x68
d0042d8a:	4355      	muls	r5, r2
d0042d8c:	460e      	mov	r6, r1
d0042d8e:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0042d92:	f7ff fdc3 	bl	d004291c <_malloc_r>
d0042d96:	4604      	mov	r4, r0
d0042d98:	b140      	cbz	r0, d0042dac <__sfmoreglue+0x28>
d0042d9a:	2100      	movs	r1, #0
d0042d9c:	e9c0 1600 	strd	r1, r6, [r0]
d0042da0:	300c      	adds	r0, #12
d0042da2:	60a0      	str	r0, [r4, #8]
d0042da4:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0042da8:	f7ff fd60 	bl	d004286c <memset>
d0042dac:	4620      	mov	r0, r4
d0042dae:	bd70      	pop	{r4, r5, r6, pc}

d0042db0 <__sfp_lock_acquire>:
d0042db0:	4801      	ldr	r0, [pc, #4]	; (d0042db8 <__sfp_lock_acquire+0x8>)
d0042db2:	f000 b8b3 	b.w	d0042f1c <__retarget_lock_acquire_recursive>
d0042db6:	bf00      	nop
d0042db8:	d004684c 	.word	0xd004684c

d0042dbc <__sfp_lock_release>:
d0042dbc:	4801      	ldr	r0, [pc, #4]	; (d0042dc4 <__sfp_lock_release+0x8>)
d0042dbe:	f000 b8ae 	b.w	d0042f1e <__retarget_lock_release_recursive>
d0042dc2:	bf00      	nop
d0042dc4:	d004684c 	.word	0xd004684c

d0042dc8 <__sinit_lock_acquire>:
d0042dc8:	4801      	ldr	r0, [pc, #4]	; (d0042dd0 <__sinit_lock_acquire+0x8>)
d0042dca:	f000 b8a7 	b.w	d0042f1c <__retarget_lock_acquire_recursive>
d0042dce:	bf00      	nop
d0042dd0:	d0046847 	.word	0xd0046847

d0042dd4 <__sinit_lock_release>:
d0042dd4:	4801      	ldr	r0, [pc, #4]	; (d0042ddc <__sinit_lock_release+0x8>)
d0042dd6:	f000 b8a2 	b.w	d0042f1e <__retarget_lock_release_recursive>
d0042dda:	bf00      	nop
d0042ddc:	d0046847 	.word	0xd0046847

d0042de0 <__sinit>:
d0042de0:	b510      	push	{r4, lr}
d0042de2:	4604      	mov	r4, r0
d0042de4:	f7ff fff0 	bl	d0042dc8 <__sinit_lock_acquire>
d0042de8:	69a3      	ldr	r3, [r4, #24]
d0042dea:	b11b      	cbz	r3, d0042df4 <__sinit+0x14>
d0042dec:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0042df0:	f7ff bff0 	b.w	d0042dd4 <__sinit_lock_release>
d0042df4:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0042df8:	6523      	str	r3, [r4, #80]	; 0x50
d0042dfa:	4b13      	ldr	r3, [pc, #76]	; (d0042e48 <__sinit+0x68>)
d0042dfc:	4a13      	ldr	r2, [pc, #76]	; (d0042e4c <__sinit+0x6c>)
d0042dfe:	681b      	ldr	r3, [r3, #0]
d0042e00:	62a2      	str	r2, [r4, #40]	; 0x28
d0042e02:	42a3      	cmp	r3, r4
d0042e04:	bf04      	itt	eq
d0042e06:	2301      	moveq	r3, #1
d0042e08:	61a3      	streq	r3, [r4, #24]
d0042e0a:	4620      	mov	r0, r4
d0042e0c:	f000 f820 	bl	d0042e50 <__sfp>
d0042e10:	6060      	str	r0, [r4, #4]
d0042e12:	4620      	mov	r0, r4
d0042e14:	f000 f81c 	bl	d0042e50 <__sfp>
d0042e18:	60a0      	str	r0, [r4, #8]
d0042e1a:	4620      	mov	r0, r4
d0042e1c:	f000 f818 	bl	d0042e50 <__sfp>
d0042e20:	2200      	movs	r2, #0
d0042e22:	60e0      	str	r0, [r4, #12]
d0042e24:	2104      	movs	r1, #4
d0042e26:	6860      	ldr	r0, [r4, #4]
d0042e28:	f7ff ff82 	bl	d0042d30 <std>
d0042e2c:	68a0      	ldr	r0, [r4, #8]
d0042e2e:	2201      	movs	r2, #1
d0042e30:	2109      	movs	r1, #9
d0042e32:	f7ff ff7d 	bl	d0042d30 <std>
d0042e36:	68e0      	ldr	r0, [r4, #12]
d0042e38:	2202      	movs	r2, #2
d0042e3a:	2112      	movs	r1, #18
d0042e3c:	f7ff ff78 	bl	d0042d30 <std>
d0042e40:	2301      	movs	r3, #1
d0042e42:	61a3      	str	r3, [r4, #24]
d0042e44:	e7d2      	b.n	d0042dec <__sinit+0xc>
d0042e46:	bf00      	nop
d0042e48:	d0043ad8 	.word	0xd0043ad8
d0042e4c:	d0042d79 	.word	0xd0042d79

d0042e50 <__sfp>:
d0042e50:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0042e52:	4607      	mov	r7, r0
d0042e54:	f7ff ffac 	bl	d0042db0 <__sfp_lock_acquire>
d0042e58:	4b1e      	ldr	r3, [pc, #120]	; (d0042ed4 <__sfp+0x84>)
d0042e5a:	681e      	ldr	r6, [r3, #0]
d0042e5c:	69b3      	ldr	r3, [r6, #24]
d0042e5e:	b913      	cbnz	r3, d0042e66 <__sfp+0x16>
d0042e60:	4630      	mov	r0, r6
d0042e62:	f7ff ffbd 	bl	d0042de0 <__sinit>
d0042e66:	3648      	adds	r6, #72	; 0x48
d0042e68:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0042e6c:	3b01      	subs	r3, #1
d0042e6e:	d503      	bpl.n	d0042e78 <__sfp+0x28>
d0042e70:	6833      	ldr	r3, [r6, #0]
d0042e72:	b30b      	cbz	r3, d0042eb8 <__sfp+0x68>
d0042e74:	6836      	ldr	r6, [r6, #0]
d0042e76:	e7f7      	b.n	d0042e68 <__sfp+0x18>
d0042e78:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0042e7c:	b9d5      	cbnz	r5, d0042eb4 <__sfp+0x64>
d0042e7e:	4b16      	ldr	r3, [pc, #88]	; (d0042ed8 <__sfp+0x88>)
d0042e80:	60e3      	str	r3, [r4, #12]
d0042e82:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0042e86:	6665      	str	r5, [r4, #100]	; 0x64
d0042e88:	f000 f847 	bl	d0042f1a <__retarget_lock_init_recursive>
d0042e8c:	f7ff ff96 	bl	d0042dbc <__sfp_lock_release>
d0042e90:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0042e94:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0042e98:	6025      	str	r5, [r4, #0]
d0042e9a:	61a5      	str	r5, [r4, #24]
d0042e9c:	2208      	movs	r2, #8
d0042e9e:	4629      	mov	r1, r5
d0042ea0:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0042ea4:	f7ff fce2 	bl	d004286c <memset>
d0042ea8:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0042eac:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0042eb0:	4620      	mov	r0, r4
d0042eb2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0042eb4:	3468      	adds	r4, #104	; 0x68
d0042eb6:	e7d9      	b.n	d0042e6c <__sfp+0x1c>
d0042eb8:	2104      	movs	r1, #4
d0042eba:	4638      	mov	r0, r7
d0042ebc:	f7ff ff62 	bl	d0042d84 <__sfmoreglue>
d0042ec0:	4604      	mov	r4, r0
d0042ec2:	6030      	str	r0, [r6, #0]
d0042ec4:	2800      	cmp	r0, #0
d0042ec6:	d1d5      	bne.n	d0042e74 <__sfp+0x24>
d0042ec8:	f7ff ff78 	bl	d0042dbc <__sfp_lock_release>
d0042ecc:	230c      	movs	r3, #12
d0042ece:	603b      	str	r3, [r7, #0]
d0042ed0:	e7ee      	b.n	d0042eb0 <__sfp+0x60>
d0042ed2:	bf00      	nop
d0042ed4:	d0043ad8 	.word	0xd0043ad8
d0042ed8:	ffff0001 	.word	0xffff0001

d0042edc <_fwalk_reent>:
d0042edc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0042ee0:	4606      	mov	r6, r0
d0042ee2:	4688      	mov	r8, r1
d0042ee4:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0042ee8:	2700      	movs	r7, #0
d0042eea:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0042eee:	f1b9 0901 	subs.w	r9, r9, #1
d0042ef2:	d505      	bpl.n	d0042f00 <_fwalk_reent+0x24>
d0042ef4:	6824      	ldr	r4, [r4, #0]
d0042ef6:	2c00      	cmp	r4, #0
d0042ef8:	d1f7      	bne.n	d0042eea <_fwalk_reent+0xe>
d0042efa:	4638      	mov	r0, r7
d0042efc:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0042f00:	89ab      	ldrh	r3, [r5, #12]
d0042f02:	2b01      	cmp	r3, #1
d0042f04:	d907      	bls.n	d0042f16 <_fwalk_reent+0x3a>
d0042f06:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0042f0a:	3301      	adds	r3, #1
d0042f0c:	d003      	beq.n	d0042f16 <_fwalk_reent+0x3a>
d0042f0e:	4629      	mov	r1, r5
d0042f10:	4630      	mov	r0, r6
d0042f12:	47c0      	blx	r8
d0042f14:	4307      	orrs	r7, r0
d0042f16:	3568      	adds	r5, #104	; 0x68
d0042f18:	e7e9      	b.n	d0042eee <_fwalk_reent+0x12>

d0042f1a <__retarget_lock_init_recursive>:
d0042f1a:	4770      	bx	lr

d0042f1c <__retarget_lock_acquire_recursive>:
d0042f1c:	4770      	bx	lr

d0042f1e <__retarget_lock_release_recursive>:
d0042f1e:	4770      	bx	lr

d0042f20 <__swhatbuf_r>:
d0042f20:	b570      	push	{r4, r5, r6, lr}
d0042f22:	460e      	mov	r6, r1
d0042f24:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0042f28:	2900      	cmp	r1, #0
d0042f2a:	b096      	sub	sp, #88	; 0x58
d0042f2c:	4614      	mov	r4, r2
d0042f2e:	461d      	mov	r5, r3
d0042f30:	da07      	bge.n	d0042f42 <__swhatbuf_r+0x22>
d0042f32:	2300      	movs	r3, #0
d0042f34:	602b      	str	r3, [r5, #0]
d0042f36:	89b3      	ldrh	r3, [r6, #12]
d0042f38:	061a      	lsls	r2, r3, #24
d0042f3a:	d410      	bmi.n	d0042f5e <__swhatbuf_r+0x3e>
d0042f3c:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0042f40:	e00e      	b.n	d0042f60 <__swhatbuf_r+0x40>
d0042f42:	466a      	mov	r2, sp
d0042f44:	f000 fb60 	bl	d0043608 <_fstat_r>
d0042f48:	2800      	cmp	r0, #0
d0042f4a:	dbf2      	blt.n	d0042f32 <__swhatbuf_r+0x12>
d0042f4c:	9a01      	ldr	r2, [sp, #4]
d0042f4e:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0042f52:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0042f56:	425a      	negs	r2, r3
d0042f58:	415a      	adcs	r2, r3
d0042f5a:	602a      	str	r2, [r5, #0]
d0042f5c:	e7ee      	b.n	d0042f3c <__swhatbuf_r+0x1c>
d0042f5e:	2340      	movs	r3, #64	; 0x40
d0042f60:	2000      	movs	r0, #0
d0042f62:	6023      	str	r3, [r4, #0]
d0042f64:	b016      	add	sp, #88	; 0x58
d0042f66:	bd70      	pop	{r4, r5, r6, pc}

d0042f68 <__malloc_lock>:
d0042f68:	4801      	ldr	r0, [pc, #4]	; (d0042f70 <__malloc_lock+0x8>)
d0042f6a:	f7ff bfd7 	b.w	d0042f1c <__retarget_lock_acquire_recursive>
d0042f6e:	bf00      	nop
d0042f70:	d0046848 	.word	0xd0046848

d0042f74 <__malloc_unlock>:
d0042f74:	4801      	ldr	r0, [pc, #4]	; (d0042f7c <__malloc_unlock+0x8>)
d0042f76:	f7ff bfd2 	b.w	d0042f1e <__retarget_lock_release_recursive>
d0042f7a:	bf00      	nop
d0042f7c:	d0046848 	.word	0xd0046848

d0042f80 <__ssputs_r>:
d0042f80:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0042f84:	688e      	ldr	r6, [r1, #8]
d0042f86:	429e      	cmp	r6, r3
d0042f88:	4682      	mov	sl, r0
d0042f8a:	460c      	mov	r4, r1
d0042f8c:	4690      	mov	r8, r2
d0042f8e:	461f      	mov	r7, r3
d0042f90:	d838      	bhi.n	d0043004 <__ssputs_r+0x84>
d0042f92:	898a      	ldrh	r2, [r1, #12]
d0042f94:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0042f98:	d032      	beq.n	d0043000 <__ssputs_r+0x80>
d0042f9a:	6825      	ldr	r5, [r4, #0]
d0042f9c:	6909      	ldr	r1, [r1, #16]
d0042f9e:	eba5 0901 	sub.w	r9, r5, r1
d0042fa2:	6965      	ldr	r5, [r4, #20]
d0042fa4:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0042fa8:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d0042fac:	3301      	adds	r3, #1
d0042fae:	444b      	add	r3, r9
d0042fb0:	106d      	asrs	r5, r5, #1
d0042fb2:	429d      	cmp	r5, r3
d0042fb4:	bf38      	it	cc
d0042fb6:	461d      	movcc	r5, r3
d0042fb8:	0553      	lsls	r3, r2, #21
d0042fba:	d531      	bpl.n	d0043020 <__ssputs_r+0xa0>
d0042fbc:	4629      	mov	r1, r5
d0042fbe:	f7ff fcad 	bl	d004291c <_malloc_r>
d0042fc2:	4606      	mov	r6, r0
d0042fc4:	b950      	cbnz	r0, d0042fdc <__ssputs_r+0x5c>
d0042fc6:	230c      	movs	r3, #12
d0042fc8:	f8ca 3000 	str.w	r3, [sl]
d0042fcc:	89a3      	ldrh	r3, [r4, #12]
d0042fce:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0042fd2:	81a3      	strh	r3, [r4, #12]
d0042fd4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0042fd8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0042fdc:	6921      	ldr	r1, [r4, #16]
d0042fde:	464a      	mov	r2, r9
d0042fe0:	f7ff fc36 	bl	d0042850 <memcpy>
d0042fe4:	89a3      	ldrh	r3, [r4, #12]
d0042fe6:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d0042fea:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0042fee:	81a3      	strh	r3, [r4, #12]
d0042ff0:	6126      	str	r6, [r4, #16]
d0042ff2:	6165      	str	r5, [r4, #20]
d0042ff4:	444e      	add	r6, r9
d0042ff6:	eba5 0509 	sub.w	r5, r5, r9
d0042ffa:	6026      	str	r6, [r4, #0]
d0042ffc:	60a5      	str	r5, [r4, #8]
d0042ffe:	463e      	mov	r6, r7
d0043000:	42be      	cmp	r6, r7
d0043002:	d900      	bls.n	d0043006 <__ssputs_r+0x86>
d0043004:	463e      	mov	r6, r7
d0043006:	4632      	mov	r2, r6
d0043008:	6820      	ldr	r0, [r4, #0]
d004300a:	4641      	mov	r1, r8
d004300c:	f000 fb70 	bl	d00436f0 <memmove>
d0043010:	68a3      	ldr	r3, [r4, #8]
d0043012:	6822      	ldr	r2, [r4, #0]
d0043014:	1b9b      	subs	r3, r3, r6
d0043016:	4432      	add	r2, r6
d0043018:	60a3      	str	r3, [r4, #8]
d004301a:	6022      	str	r2, [r4, #0]
d004301c:	2000      	movs	r0, #0
d004301e:	e7db      	b.n	d0042fd8 <__ssputs_r+0x58>
d0043020:	462a      	mov	r2, r5
d0043022:	f000 fb7f 	bl	d0043724 <_realloc_r>
d0043026:	4606      	mov	r6, r0
d0043028:	2800      	cmp	r0, #0
d004302a:	d1e1      	bne.n	d0042ff0 <__ssputs_r+0x70>
d004302c:	6921      	ldr	r1, [r4, #16]
d004302e:	4650      	mov	r0, sl
d0043030:	f7ff fc24 	bl	d004287c <_free_r>
d0043034:	e7c7      	b.n	d0042fc6 <__ssputs_r+0x46>
	...

d0043038 <_svfiprintf_r>:
d0043038:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004303c:	4698      	mov	r8, r3
d004303e:	898b      	ldrh	r3, [r1, #12]
d0043040:	061b      	lsls	r3, r3, #24
d0043042:	b09d      	sub	sp, #116	; 0x74
d0043044:	4607      	mov	r7, r0
d0043046:	460d      	mov	r5, r1
d0043048:	4614      	mov	r4, r2
d004304a:	d50e      	bpl.n	d004306a <_svfiprintf_r+0x32>
d004304c:	690b      	ldr	r3, [r1, #16]
d004304e:	b963      	cbnz	r3, d004306a <_svfiprintf_r+0x32>
d0043050:	2140      	movs	r1, #64	; 0x40
d0043052:	f7ff fc63 	bl	d004291c <_malloc_r>
d0043056:	6028      	str	r0, [r5, #0]
d0043058:	6128      	str	r0, [r5, #16]
d004305a:	b920      	cbnz	r0, d0043066 <_svfiprintf_r+0x2e>
d004305c:	230c      	movs	r3, #12
d004305e:	603b      	str	r3, [r7, #0]
d0043060:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0043064:	e0d1      	b.n	d004320a <_svfiprintf_r+0x1d2>
d0043066:	2340      	movs	r3, #64	; 0x40
d0043068:	616b      	str	r3, [r5, #20]
d004306a:	2300      	movs	r3, #0
d004306c:	9309      	str	r3, [sp, #36]	; 0x24
d004306e:	2320      	movs	r3, #32
d0043070:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0043074:	f8cd 800c 	str.w	r8, [sp, #12]
d0043078:	2330      	movs	r3, #48	; 0x30
d004307a:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d0043224 <_svfiprintf_r+0x1ec>
d004307e:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0043082:	f04f 0901 	mov.w	r9, #1
d0043086:	4623      	mov	r3, r4
d0043088:	469a      	mov	sl, r3
d004308a:	f813 2b01 	ldrb.w	r2, [r3], #1
d004308e:	b10a      	cbz	r2, d0043094 <_svfiprintf_r+0x5c>
d0043090:	2a25      	cmp	r2, #37	; 0x25
d0043092:	d1f9      	bne.n	d0043088 <_svfiprintf_r+0x50>
d0043094:	ebba 0b04 	subs.w	fp, sl, r4
d0043098:	d00b      	beq.n	d00430b2 <_svfiprintf_r+0x7a>
d004309a:	465b      	mov	r3, fp
d004309c:	4622      	mov	r2, r4
d004309e:	4629      	mov	r1, r5
d00430a0:	4638      	mov	r0, r7
d00430a2:	f7ff ff6d 	bl	d0042f80 <__ssputs_r>
d00430a6:	3001      	adds	r0, #1
d00430a8:	f000 80aa 	beq.w	d0043200 <_svfiprintf_r+0x1c8>
d00430ac:	9a09      	ldr	r2, [sp, #36]	; 0x24
d00430ae:	445a      	add	r2, fp
d00430b0:	9209      	str	r2, [sp, #36]	; 0x24
d00430b2:	f89a 3000 	ldrb.w	r3, [sl]
d00430b6:	2b00      	cmp	r3, #0
d00430b8:	f000 80a2 	beq.w	d0043200 <_svfiprintf_r+0x1c8>
d00430bc:	2300      	movs	r3, #0
d00430be:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d00430c2:	e9cd 2305 	strd	r2, r3, [sp, #20]
d00430c6:	f10a 0a01 	add.w	sl, sl, #1
d00430ca:	9304      	str	r3, [sp, #16]
d00430cc:	9307      	str	r3, [sp, #28]
d00430ce:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d00430d2:	931a      	str	r3, [sp, #104]	; 0x68
d00430d4:	4654      	mov	r4, sl
d00430d6:	2205      	movs	r2, #5
d00430d8:	f814 1b01 	ldrb.w	r1, [r4], #1
d00430dc:	4851      	ldr	r0, [pc, #324]	; (d0043224 <_svfiprintf_r+0x1ec>)
d00430de:	f000 fab7 	bl	d0043650 <memchr>
d00430e2:	9a04      	ldr	r2, [sp, #16]
d00430e4:	b9d8      	cbnz	r0, d004311e <_svfiprintf_r+0xe6>
d00430e6:	06d0      	lsls	r0, r2, #27
d00430e8:	bf44      	itt	mi
d00430ea:	2320      	movmi	r3, #32
d00430ec:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d00430f0:	0711      	lsls	r1, r2, #28
d00430f2:	bf44      	itt	mi
d00430f4:	232b      	movmi	r3, #43	; 0x2b
d00430f6:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d00430fa:	f89a 3000 	ldrb.w	r3, [sl]
d00430fe:	2b2a      	cmp	r3, #42	; 0x2a
d0043100:	d015      	beq.n	d004312e <_svfiprintf_r+0xf6>
d0043102:	9a07      	ldr	r2, [sp, #28]
d0043104:	4654      	mov	r4, sl
d0043106:	2000      	movs	r0, #0
d0043108:	f04f 0c0a 	mov.w	ip, #10
d004310c:	4621      	mov	r1, r4
d004310e:	f811 3b01 	ldrb.w	r3, [r1], #1
d0043112:	3b30      	subs	r3, #48	; 0x30
d0043114:	2b09      	cmp	r3, #9
d0043116:	d94e      	bls.n	d00431b6 <_svfiprintf_r+0x17e>
d0043118:	b1b0      	cbz	r0, d0043148 <_svfiprintf_r+0x110>
d004311a:	9207      	str	r2, [sp, #28]
d004311c:	e014      	b.n	d0043148 <_svfiprintf_r+0x110>
d004311e:	eba0 0308 	sub.w	r3, r0, r8
d0043122:	fa09 f303 	lsl.w	r3, r9, r3
d0043126:	4313      	orrs	r3, r2
d0043128:	9304      	str	r3, [sp, #16]
d004312a:	46a2      	mov	sl, r4
d004312c:	e7d2      	b.n	d00430d4 <_svfiprintf_r+0x9c>
d004312e:	9b03      	ldr	r3, [sp, #12]
d0043130:	1d19      	adds	r1, r3, #4
d0043132:	681b      	ldr	r3, [r3, #0]
d0043134:	9103      	str	r1, [sp, #12]
d0043136:	2b00      	cmp	r3, #0
d0043138:	bfbb      	ittet	lt
d004313a:	425b      	neglt	r3, r3
d004313c:	f042 0202 	orrlt.w	r2, r2, #2
d0043140:	9307      	strge	r3, [sp, #28]
d0043142:	9307      	strlt	r3, [sp, #28]
d0043144:	bfb8      	it	lt
d0043146:	9204      	strlt	r2, [sp, #16]
d0043148:	7823      	ldrb	r3, [r4, #0]
d004314a:	2b2e      	cmp	r3, #46	; 0x2e
d004314c:	d10c      	bne.n	d0043168 <_svfiprintf_r+0x130>
d004314e:	7863      	ldrb	r3, [r4, #1]
d0043150:	2b2a      	cmp	r3, #42	; 0x2a
d0043152:	d135      	bne.n	d00431c0 <_svfiprintf_r+0x188>
d0043154:	9b03      	ldr	r3, [sp, #12]
d0043156:	1d1a      	adds	r2, r3, #4
d0043158:	681b      	ldr	r3, [r3, #0]
d004315a:	9203      	str	r2, [sp, #12]
d004315c:	2b00      	cmp	r3, #0
d004315e:	bfb8      	it	lt
d0043160:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0043164:	3402      	adds	r4, #2
d0043166:	9305      	str	r3, [sp, #20]
d0043168:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d0043234 <_svfiprintf_r+0x1fc>
d004316c:	7821      	ldrb	r1, [r4, #0]
d004316e:	2203      	movs	r2, #3
d0043170:	4650      	mov	r0, sl
d0043172:	f000 fa6d 	bl	d0043650 <memchr>
d0043176:	b140      	cbz	r0, d004318a <_svfiprintf_r+0x152>
d0043178:	2340      	movs	r3, #64	; 0x40
d004317a:	eba0 000a 	sub.w	r0, r0, sl
d004317e:	fa03 f000 	lsl.w	r0, r3, r0
d0043182:	9b04      	ldr	r3, [sp, #16]
d0043184:	4303      	orrs	r3, r0
d0043186:	3401      	adds	r4, #1
d0043188:	9304      	str	r3, [sp, #16]
d004318a:	f814 1b01 	ldrb.w	r1, [r4], #1
d004318e:	4826      	ldr	r0, [pc, #152]	; (d0043228 <_svfiprintf_r+0x1f0>)
d0043190:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0043194:	2206      	movs	r2, #6
d0043196:	f000 fa5b 	bl	d0043650 <memchr>
d004319a:	2800      	cmp	r0, #0
d004319c:	d038      	beq.n	d0043210 <_svfiprintf_r+0x1d8>
d004319e:	4b23      	ldr	r3, [pc, #140]	; (d004322c <_svfiprintf_r+0x1f4>)
d00431a0:	bb1b      	cbnz	r3, d00431ea <_svfiprintf_r+0x1b2>
d00431a2:	9b03      	ldr	r3, [sp, #12]
d00431a4:	3307      	adds	r3, #7
d00431a6:	f023 0307 	bic.w	r3, r3, #7
d00431aa:	3308      	adds	r3, #8
d00431ac:	9303      	str	r3, [sp, #12]
d00431ae:	9b09      	ldr	r3, [sp, #36]	; 0x24
d00431b0:	4433      	add	r3, r6
d00431b2:	9309      	str	r3, [sp, #36]	; 0x24
d00431b4:	e767      	b.n	d0043086 <_svfiprintf_r+0x4e>
d00431b6:	fb0c 3202 	mla	r2, ip, r2, r3
d00431ba:	460c      	mov	r4, r1
d00431bc:	2001      	movs	r0, #1
d00431be:	e7a5      	b.n	d004310c <_svfiprintf_r+0xd4>
d00431c0:	2300      	movs	r3, #0
d00431c2:	3401      	adds	r4, #1
d00431c4:	9305      	str	r3, [sp, #20]
d00431c6:	4619      	mov	r1, r3
d00431c8:	f04f 0c0a 	mov.w	ip, #10
d00431cc:	4620      	mov	r0, r4
d00431ce:	f810 2b01 	ldrb.w	r2, [r0], #1
d00431d2:	3a30      	subs	r2, #48	; 0x30
d00431d4:	2a09      	cmp	r2, #9
d00431d6:	d903      	bls.n	d00431e0 <_svfiprintf_r+0x1a8>
d00431d8:	2b00      	cmp	r3, #0
d00431da:	d0c5      	beq.n	d0043168 <_svfiprintf_r+0x130>
d00431dc:	9105      	str	r1, [sp, #20]
d00431de:	e7c3      	b.n	d0043168 <_svfiprintf_r+0x130>
d00431e0:	fb0c 2101 	mla	r1, ip, r1, r2
d00431e4:	4604      	mov	r4, r0
d00431e6:	2301      	movs	r3, #1
d00431e8:	e7f0      	b.n	d00431cc <_svfiprintf_r+0x194>
d00431ea:	ab03      	add	r3, sp, #12
d00431ec:	9300      	str	r3, [sp, #0]
d00431ee:	462a      	mov	r2, r5
d00431f0:	4b0f      	ldr	r3, [pc, #60]	; (d0043230 <_svfiprintf_r+0x1f8>)
d00431f2:	a904      	add	r1, sp, #16
d00431f4:	4638      	mov	r0, r7
d00431f6:	f3af 8000 	nop.w
d00431fa:	1c42      	adds	r2, r0, #1
d00431fc:	4606      	mov	r6, r0
d00431fe:	d1d6      	bne.n	d00431ae <_svfiprintf_r+0x176>
d0043200:	89ab      	ldrh	r3, [r5, #12]
d0043202:	065b      	lsls	r3, r3, #25
d0043204:	f53f af2c 	bmi.w	d0043060 <_svfiprintf_r+0x28>
d0043208:	9809      	ldr	r0, [sp, #36]	; 0x24
d004320a:	b01d      	add	sp, #116	; 0x74
d004320c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0043210:	ab03      	add	r3, sp, #12
d0043212:	9300      	str	r3, [sp, #0]
d0043214:	462a      	mov	r2, r5
d0043216:	4b06      	ldr	r3, [pc, #24]	; (d0043230 <_svfiprintf_r+0x1f8>)
d0043218:	a904      	add	r1, sp, #16
d004321a:	4638      	mov	r0, r7
d004321c:	f000 f87a 	bl	d0043314 <_printf_i>
d0043220:	e7eb      	b.n	d00431fa <_svfiprintf_r+0x1c2>
d0043222:	bf00      	nop
d0043224:	d0043b3c 	.word	0xd0043b3c
d0043228:	d0043b46 	.word	0xd0043b46
d004322c:	00000000 	.word	0x00000000
d0043230:	d0042f81 	.word	0xd0042f81
d0043234:	d0043b42 	.word	0xd0043b42

d0043238 <_printf_common>:
d0043238:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d004323c:	4616      	mov	r6, r2
d004323e:	4699      	mov	r9, r3
d0043240:	688a      	ldr	r2, [r1, #8]
d0043242:	690b      	ldr	r3, [r1, #16]
d0043244:	f8dd 8020 	ldr.w	r8, [sp, #32]
d0043248:	4293      	cmp	r3, r2
d004324a:	bfb8      	it	lt
d004324c:	4613      	movlt	r3, r2
d004324e:	6033      	str	r3, [r6, #0]
d0043250:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d0043254:	4607      	mov	r7, r0
d0043256:	460c      	mov	r4, r1
d0043258:	b10a      	cbz	r2, d004325e <_printf_common+0x26>
d004325a:	3301      	adds	r3, #1
d004325c:	6033      	str	r3, [r6, #0]
d004325e:	6823      	ldr	r3, [r4, #0]
d0043260:	0699      	lsls	r1, r3, #26
d0043262:	bf42      	ittt	mi
d0043264:	6833      	ldrmi	r3, [r6, #0]
d0043266:	3302      	addmi	r3, #2
d0043268:	6033      	strmi	r3, [r6, #0]
d004326a:	6825      	ldr	r5, [r4, #0]
d004326c:	f015 0506 	ands.w	r5, r5, #6
d0043270:	d106      	bne.n	d0043280 <_printf_common+0x48>
d0043272:	f104 0a19 	add.w	sl, r4, #25
d0043276:	68e3      	ldr	r3, [r4, #12]
d0043278:	6832      	ldr	r2, [r6, #0]
d004327a:	1a9b      	subs	r3, r3, r2
d004327c:	42ab      	cmp	r3, r5
d004327e:	dc26      	bgt.n	d00432ce <_printf_common+0x96>
d0043280:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0043284:	1e13      	subs	r3, r2, #0
d0043286:	6822      	ldr	r2, [r4, #0]
d0043288:	bf18      	it	ne
d004328a:	2301      	movne	r3, #1
d004328c:	0692      	lsls	r2, r2, #26
d004328e:	d42b      	bmi.n	d00432e8 <_printf_common+0xb0>
d0043290:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0043294:	4649      	mov	r1, r9
d0043296:	4638      	mov	r0, r7
d0043298:	47c0      	blx	r8
d004329a:	3001      	adds	r0, #1
d004329c:	d01e      	beq.n	d00432dc <_printf_common+0xa4>
d004329e:	6823      	ldr	r3, [r4, #0]
d00432a0:	68e5      	ldr	r5, [r4, #12]
d00432a2:	6832      	ldr	r2, [r6, #0]
d00432a4:	f003 0306 	and.w	r3, r3, #6
d00432a8:	2b04      	cmp	r3, #4
d00432aa:	bf08      	it	eq
d00432ac:	1aad      	subeq	r5, r5, r2
d00432ae:	68a3      	ldr	r3, [r4, #8]
d00432b0:	6922      	ldr	r2, [r4, #16]
d00432b2:	bf0c      	ite	eq
d00432b4:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d00432b8:	2500      	movne	r5, #0
d00432ba:	4293      	cmp	r3, r2
d00432bc:	bfc4      	itt	gt
d00432be:	1a9b      	subgt	r3, r3, r2
d00432c0:	18ed      	addgt	r5, r5, r3
d00432c2:	2600      	movs	r6, #0
d00432c4:	341a      	adds	r4, #26
d00432c6:	42b5      	cmp	r5, r6
d00432c8:	d11a      	bne.n	d0043300 <_printf_common+0xc8>
d00432ca:	2000      	movs	r0, #0
d00432cc:	e008      	b.n	d00432e0 <_printf_common+0xa8>
d00432ce:	2301      	movs	r3, #1
d00432d0:	4652      	mov	r2, sl
d00432d2:	4649      	mov	r1, r9
d00432d4:	4638      	mov	r0, r7
d00432d6:	47c0      	blx	r8
d00432d8:	3001      	adds	r0, #1
d00432da:	d103      	bne.n	d00432e4 <_printf_common+0xac>
d00432dc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00432e0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00432e4:	3501      	adds	r5, #1
d00432e6:	e7c6      	b.n	d0043276 <_printf_common+0x3e>
d00432e8:	18e1      	adds	r1, r4, r3
d00432ea:	1c5a      	adds	r2, r3, #1
d00432ec:	2030      	movs	r0, #48	; 0x30
d00432ee:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d00432f2:	4422      	add	r2, r4
d00432f4:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d00432f8:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d00432fc:	3302      	adds	r3, #2
d00432fe:	e7c7      	b.n	d0043290 <_printf_common+0x58>
d0043300:	2301      	movs	r3, #1
d0043302:	4622      	mov	r2, r4
d0043304:	4649      	mov	r1, r9
d0043306:	4638      	mov	r0, r7
d0043308:	47c0      	blx	r8
d004330a:	3001      	adds	r0, #1
d004330c:	d0e6      	beq.n	d00432dc <_printf_common+0xa4>
d004330e:	3601      	adds	r6, #1
d0043310:	e7d9      	b.n	d00432c6 <_printf_common+0x8e>
	...

d0043314 <_printf_i>:
d0043314:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0043318:	460c      	mov	r4, r1
d004331a:	4691      	mov	r9, r2
d004331c:	7e27      	ldrb	r7, [r4, #24]
d004331e:	990c      	ldr	r1, [sp, #48]	; 0x30
d0043320:	2f78      	cmp	r7, #120	; 0x78
d0043322:	4680      	mov	r8, r0
d0043324:	469a      	mov	sl, r3
d0043326:	f104 0243 	add.w	r2, r4, #67	; 0x43
d004332a:	d807      	bhi.n	d004333c <_printf_i+0x28>
d004332c:	2f62      	cmp	r7, #98	; 0x62
d004332e:	d80a      	bhi.n	d0043346 <_printf_i+0x32>
d0043330:	2f00      	cmp	r7, #0
d0043332:	f000 80d8 	beq.w	d00434e6 <_printf_i+0x1d2>
d0043336:	2f58      	cmp	r7, #88	; 0x58
d0043338:	f000 80a3 	beq.w	d0043482 <_printf_i+0x16e>
d004333c:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0043340:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d0043344:	e03a      	b.n	d00433bc <_printf_i+0xa8>
d0043346:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d004334a:	2b15      	cmp	r3, #21
d004334c:	d8f6      	bhi.n	d004333c <_printf_i+0x28>
d004334e:	a001      	add	r0, pc, #4	; (adr r0, d0043354 <_printf_i+0x40>)
d0043350:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d0043354:	d00433ad 	.word	0xd00433ad
d0043358:	d00433c1 	.word	0xd00433c1
d004335c:	d004333d 	.word	0xd004333d
d0043360:	d004333d 	.word	0xd004333d
d0043364:	d004333d 	.word	0xd004333d
d0043368:	d004333d 	.word	0xd004333d
d004336c:	d00433c1 	.word	0xd00433c1
d0043370:	d004333d 	.word	0xd004333d
d0043374:	d004333d 	.word	0xd004333d
d0043378:	d004333d 	.word	0xd004333d
d004337c:	d004333d 	.word	0xd004333d
d0043380:	d00434cd 	.word	0xd00434cd
d0043384:	d00433f1 	.word	0xd00433f1
d0043388:	d00434af 	.word	0xd00434af
d004338c:	d004333d 	.word	0xd004333d
d0043390:	d004333d 	.word	0xd004333d
d0043394:	d00434ef 	.word	0xd00434ef
d0043398:	d004333d 	.word	0xd004333d
d004339c:	d00433f1 	.word	0xd00433f1
d00433a0:	d004333d 	.word	0xd004333d
d00433a4:	d004333d 	.word	0xd004333d
d00433a8:	d00434b7 	.word	0xd00434b7
d00433ac:	680b      	ldr	r3, [r1, #0]
d00433ae:	1d1a      	adds	r2, r3, #4
d00433b0:	681b      	ldr	r3, [r3, #0]
d00433b2:	600a      	str	r2, [r1, #0]
d00433b4:	f104 0642 	add.w	r6, r4, #66	; 0x42
d00433b8:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d00433bc:	2301      	movs	r3, #1
d00433be:	e0a3      	b.n	d0043508 <_printf_i+0x1f4>
d00433c0:	6825      	ldr	r5, [r4, #0]
d00433c2:	6808      	ldr	r0, [r1, #0]
d00433c4:	062e      	lsls	r6, r5, #24
d00433c6:	f100 0304 	add.w	r3, r0, #4
d00433ca:	d50a      	bpl.n	d00433e2 <_printf_i+0xce>
d00433cc:	6805      	ldr	r5, [r0, #0]
d00433ce:	600b      	str	r3, [r1, #0]
d00433d0:	2d00      	cmp	r5, #0
d00433d2:	da03      	bge.n	d00433dc <_printf_i+0xc8>
d00433d4:	232d      	movs	r3, #45	; 0x2d
d00433d6:	426d      	negs	r5, r5
d00433d8:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d00433dc:	485e      	ldr	r0, [pc, #376]	; (d0043558 <_printf_i+0x244>)
d00433de:	230a      	movs	r3, #10
d00433e0:	e019      	b.n	d0043416 <_printf_i+0x102>
d00433e2:	f015 0f40 	tst.w	r5, #64	; 0x40
d00433e6:	6805      	ldr	r5, [r0, #0]
d00433e8:	600b      	str	r3, [r1, #0]
d00433ea:	bf18      	it	ne
d00433ec:	b22d      	sxthne	r5, r5
d00433ee:	e7ef      	b.n	d00433d0 <_printf_i+0xbc>
d00433f0:	680b      	ldr	r3, [r1, #0]
d00433f2:	6825      	ldr	r5, [r4, #0]
d00433f4:	1d18      	adds	r0, r3, #4
d00433f6:	6008      	str	r0, [r1, #0]
d00433f8:	0628      	lsls	r0, r5, #24
d00433fa:	d501      	bpl.n	d0043400 <_printf_i+0xec>
d00433fc:	681d      	ldr	r5, [r3, #0]
d00433fe:	e002      	b.n	d0043406 <_printf_i+0xf2>
d0043400:	0669      	lsls	r1, r5, #25
d0043402:	d5fb      	bpl.n	d00433fc <_printf_i+0xe8>
d0043404:	881d      	ldrh	r5, [r3, #0]
d0043406:	4854      	ldr	r0, [pc, #336]	; (d0043558 <_printf_i+0x244>)
d0043408:	2f6f      	cmp	r7, #111	; 0x6f
d004340a:	bf0c      	ite	eq
d004340c:	2308      	moveq	r3, #8
d004340e:	230a      	movne	r3, #10
d0043410:	2100      	movs	r1, #0
d0043412:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d0043416:	6866      	ldr	r6, [r4, #4]
d0043418:	60a6      	str	r6, [r4, #8]
d004341a:	2e00      	cmp	r6, #0
d004341c:	bfa2      	ittt	ge
d004341e:	6821      	ldrge	r1, [r4, #0]
d0043420:	f021 0104 	bicge.w	r1, r1, #4
d0043424:	6021      	strge	r1, [r4, #0]
d0043426:	b90d      	cbnz	r5, d004342c <_printf_i+0x118>
d0043428:	2e00      	cmp	r6, #0
d004342a:	d04d      	beq.n	d00434c8 <_printf_i+0x1b4>
d004342c:	4616      	mov	r6, r2
d004342e:	fbb5 f1f3 	udiv	r1, r5, r3
d0043432:	fb03 5711 	mls	r7, r3, r1, r5
d0043436:	5dc7      	ldrb	r7, [r0, r7]
d0043438:	f806 7d01 	strb.w	r7, [r6, #-1]!
d004343c:	462f      	mov	r7, r5
d004343e:	42bb      	cmp	r3, r7
d0043440:	460d      	mov	r5, r1
d0043442:	d9f4      	bls.n	d004342e <_printf_i+0x11a>
d0043444:	2b08      	cmp	r3, #8
d0043446:	d10b      	bne.n	d0043460 <_printf_i+0x14c>
d0043448:	6823      	ldr	r3, [r4, #0]
d004344a:	07df      	lsls	r7, r3, #31
d004344c:	d508      	bpl.n	d0043460 <_printf_i+0x14c>
d004344e:	6923      	ldr	r3, [r4, #16]
d0043450:	6861      	ldr	r1, [r4, #4]
d0043452:	4299      	cmp	r1, r3
d0043454:	bfde      	ittt	le
d0043456:	2330      	movle	r3, #48	; 0x30
d0043458:	f806 3c01 	strble.w	r3, [r6, #-1]
d004345c:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d0043460:	1b92      	subs	r2, r2, r6
d0043462:	6122      	str	r2, [r4, #16]
d0043464:	f8cd a000 	str.w	sl, [sp]
d0043468:	464b      	mov	r3, r9
d004346a:	aa03      	add	r2, sp, #12
d004346c:	4621      	mov	r1, r4
d004346e:	4640      	mov	r0, r8
d0043470:	f7ff fee2 	bl	d0043238 <_printf_common>
d0043474:	3001      	adds	r0, #1
d0043476:	d14c      	bne.n	d0043512 <_printf_i+0x1fe>
d0043478:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004347c:	b004      	add	sp, #16
d004347e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0043482:	4835      	ldr	r0, [pc, #212]	; (d0043558 <_printf_i+0x244>)
d0043484:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d0043488:	6823      	ldr	r3, [r4, #0]
d004348a:	680e      	ldr	r6, [r1, #0]
d004348c:	061f      	lsls	r7, r3, #24
d004348e:	f856 5b04 	ldr.w	r5, [r6], #4
d0043492:	600e      	str	r6, [r1, #0]
d0043494:	d514      	bpl.n	d00434c0 <_printf_i+0x1ac>
d0043496:	07d9      	lsls	r1, r3, #31
d0043498:	bf44      	itt	mi
d004349a:	f043 0320 	orrmi.w	r3, r3, #32
d004349e:	6023      	strmi	r3, [r4, #0]
d00434a0:	b91d      	cbnz	r5, d00434aa <_printf_i+0x196>
d00434a2:	6823      	ldr	r3, [r4, #0]
d00434a4:	f023 0320 	bic.w	r3, r3, #32
d00434a8:	6023      	str	r3, [r4, #0]
d00434aa:	2310      	movs	r3, #16
d00434ac:	e7b0      	b.n	d0043410 <_printf_i+0xfc>
d00434ae:	6823      	ldr	r3, [r4, #0]
d00434b0:	f043 0320 	orr.w	r3, r3, #32
d00434b4:	6023      	str	r3, [r4, #0]
d00434b6:	2378      	movs	r3, #120	; 0x78
d00434b8:	4828      	ldr	r0, [pc, #160]	; (d004355c <_printf_i+0x248>)
d00434ba:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d00434be:	e7e3      	b.n	d0043488 <_printf_i+0x174>
d00434c0:	065e      	lsls	r6, r3, #25
d00434c2:	bf48      	it	mi
d00434c4:	b2ad      	uxthmi	r5, r5
d00434c6:	e7e6      	b.n	d0043496 <_printf_i+0x182>
d00434c8:	4616      	mov	r6, r2
d00434ca:	e7bb      	b.n	d0043444 <_printf_i+0x130>
d00434cc:	680b      	ldr	r3, [r1, #0]
d00434ce:	6826      	ldr	r6, [r4, #0]
d00434d0:	6960      	ldr	r0, [r4, #20]
d00434d2:	1d1d      	adds	r5, r3, #4
d00434d4:	600d      	str	r5, [r1, #0]
d00434d6:	0635      	lsls	r5, r6, #24
d00434d8:	681b      	ldr	r3, [r3, #0]
d00434da:	d501      	bpl.n	d00434e0 <_printf_i+0x1cc>
d00434dc:	6018      	str	r0, [r3, #0]
d00434de:	e002      	b.n	d00434e6 <_printf_i+0x1d2>
d00434e0:	0671      	lsls	r1, r6, #25
d00434e2:	d5fb      	bpl.n	d00434dc <_printf_i+0x1c8>
d00434e4:	8018      	strh	r0, [r3, #0]
d00434e6:	2300      	movs	r3, #0
d00434e8:	6123      	str	r3, [r4, #16]
d00434ea:	4616      	mov	r6, r2
d00434ec:	e7ba      	b.n	d0043464 <_printf_i+0x150>
d00434ee:	680b      	ldr	r3, [r1, #0]
d00434f0:	1d1a      	adds	r2, r3, #4
d00434f2:	600a      	str	r2, [r1, #0]
d00434f4:	681e      	ldr	r6, [r3, #0]
d00434f6:	6862      	ldr	r2, [r4, #4]
d00434f8:	2100      	movs	r1, #0
d00434fa:	4630      	mov	r0, r6
d00434fc:	f000 f8a8 	bl	d0043650 <memchr>
d0043500:	b108      	cbz	r0, d0043506 <_printf_i+0x1f2>
d0043502:	1b80      	subs	r0, r0, r6
d0043504:	6060      	str	r0, [r4, #4]
d0043506:	6863      	ldr	r3, [r4, #4]
d0043508:	6123      	str	r3, [r4, #16]
d004350a:	2300      	movs	r3, #0
d004350c:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0043510:	e7a8      	b.n	d0043464 <_printf_i+0x150>
d0043512:	6923      	ldr	r3, [r4, #16]
d0043514:	4632      	mov	r2, r6
d0043516:	4649      	mov	r1, r9
d0043518:	4640      	mov	r0, r8
d004351a:	47d0      	blx	sl
d004351c:	3001      	adds	r0, #1
d004351e:	d0ab      	beq.n	d0043478 <_printf_i+0x164>
d0043520:	6823      	ldr	r3, [r4, #0]
d0043522:	079b      	lsls	r3, r3, #30
d0043524:	d413      	bmi.n	d004354e <_printf_i+0x23a>
d0043526:	68e0      	ldr	r0, [r4, #12]
d0043528:	9b03      	ldr	r3, [sp, #12]
d004352a:	4298      	cmp	r0, r3
d004352c:	bfb8      	it	lt
d004352e:	4618      	movlt	r0, r3
d0043530:	e7a4      	b.n	d004347c <_printf_i+0x168>
d0043532:	2301      	movs	r3, #1
d0043534:	4632      	mov	r2, r6
d0043536:	4649      	mov	r1, r9
d0043538:	4640      	mov	r0, r8
d004353a:	47d0      	blx	sl
d004353c:	3001      	adds	r0, #1
d004353e:	d09b      	beq.n	d0043478 <_printf_i+0x164>
d0043540:	3501      	adds	r5, #1
d0043542:	68e3      	ldr	r3, [r4, #12]
d0043544:	9903      	ldr	r1, [sp, #12]
d0043546:	1a5b      	subs	r3, r3, r1
d0043548:	42ab      	cmp	r3, r5
d004354a:	dcf2      	bgt.n	d0043532 <_printf_i+0x21e>
d004354c:	e7eb      	b.n	d0043526 <_printf_i+0x212>
d004354e:	2500      	movs	r5, #0
d0043550:	f104 0619 	add.w	r6, r4, #25
d0043554:	e7f5      	b.n	d0043542 <_printf_i+0x22e>
d0043556:	bf00      	nop
d0043558:	d0043b4d 	.word	0xd0043b4d
d004355c:	d0043b5e 	.word	0xd0043b5e

d0043560 <__sread>:
d0043560:	b510      	push	{r4, lr}
d0043562:	460c      	mov	r4, r1
d0043564:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0043568:	f000 f902 	bl	d0043770 <_read_r>
d004356c:	2800      	cmp	r0, #0
d004356e:	bfab      	itete	ge
d0043570:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0043572:	89a3      	ldrhlt	r3, [r4, #12]
d0043574:	181b      	addge	r3, r3, r0
d0043576:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d004357a:	bfac      	ite	ge
d004357c:	6563      	strge	r3, [r4, #84]	; 0x54
d004357e:	81a3      	strhlt	r3, [r4, #12]
d0043580:	bd10      	pop	{r4, pc}

d0043582 <__swrite>:
d0043582:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0043586:	461f      	mov	r7, r3
d0043588:	898b      	ldrh	r3, [r1, #12]
d004358a:	05db      	lsls	r3, r3, #23
d004358c:	4605      	mov	r5, r0
d004358e:	460c      	mov	r4, r1
d0043590:	4616      	mov	r6, r2
d0043592:	d505      	bpl.n	d00435a0 <__swrite+0x1e>
d0043594:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0043598:	2302      	movs	r3, #2
d004359a:	2200      	movs	r2, #0
d004359c:	f000 f846 	bl	d004362c <_lseek_r>
d00435a0:	89a3      	ldrh	r3, [r4, #12]
d00435a2:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d00435a6:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d00435aa:	81a3      	strh	r3, [r4, #12]
d00435ac:	4632      	mov	r2, r6
d00435ae:	463b      	mov	r3, r7
d00435b0:	4628      	mov	r0, r5
d00435b2:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d00435b6:	f7fc bda1 	b.w	d00400fc <_write_r>

d00435ba <__sseek>:
d00435ba:	b510      	push	{r4, lr}
d00435bc:	460c      	mov	r4, r1
d00435be:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00435c2:	f000 f833 	bl	d004362c <_lseek_r>
d00435c6:	1c43      	adds	r3, r0, #1
d00435c8:	89a3      	ldrh	r3, [r4, #12]
d00435ca:	bf15      	itete	ne
d00435cc:	6560      	strne	r0, [r4, #84]	; 0x54
d00435ce:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d00435d2:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d00435d6:	81a3      	strheq	r3, [r4, #12]
d00435d8:	bf18      	it	ne
d00435da:	81a3      	strhne	r3, [r4, #12]
d00435dc:	bd10      	pop	{r4, pc}

d00435de <__sclose>:
d00435de:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00435e2:	f000 b801 	b.w	d00435e8 <_close_r>
	...

d00435e8 <_close_r>:
d00435e8:	b538      	push	{r3, r4, r5, lr}
d00435ea:	4d06      	ldr	r5, [pc, #24]	; (d0043604 <_close_r+0x1c>)
d00435ec:	2300      	movs	r3, #0
d00435ee:	4604      	mov	r4, r0
d00435f0:	4608      	mov	r0, r1
d00435f2:	602b      	str	r3, [r5, #0]
d00435f4:	f7fc fdbc 	bl	d0040170 <_close>
d00435f8:	1c43      	adds	r3, r0, #1
d00435fa:	d102      	bne.n	d0043602 <_close_r+0x1a>
d00435fc:	682b      	ldr	r3, [r5, #0]
d00435fe:	b103      	cbz	r3, d0043602 <_close_r+0x1a>
d0043600:	6023      	str	r3, [r4, #0]
d0043602:	bd38      	pop	{r3, r4, r5, pc}
d0043604:	d0046850 	.word	0xd0046850

d0043608 <_fstat_r>:
d0043608:	b538      	push	{r3, r4, r5, lr}
d004360a:	4d07      	ldr	r5, [pc, #28]	; (d0043628 <_fstat_r+0x20>)
d004360c:	2300      	movs	r3, #0
d004360e:	4604      	mov	r4, r0
d0043610:	4608      	mov	r0, r1
d0043612:	4611      	mov	r1, r2
d0043614:	602b      	str	r3, [r5, #0]
d0043616:	f7fc fdaf 	bl	d0040178 <_fstat>
d004361a:	1c43      	adds	r3, r0, #1
d004361c:	d102      	bne.n	d0043624 <_fstat_r+0x1c>
d004361e:	682b      	ldr	r3, [r5, #0]
d0043620:	b103      	cbz	r3, d0043624 <_fstat_r+0x1c>
d0043622:	6023      	str	r3, [r4, #0]
d0043624:	bd38      	pop	{r3, r4, r5, pc}
d0043626:	bf00      	nop
d0043628:	d0046850 	.word	0xd0046850

d004362c <_lseek_r>:
d004362c:	b538      	push	{r3, r4, r5, lr}
d004362e:	4d07      	ldr	r5, [pc, #28]	; (d004364c <_lseek_r+0x20>)
d0043630:	4604      	mov	r4, r0
d0043632:	4608      	mov	r0, r1
d0043634:	4611      	mov	r1, r2
d0043636:	2200      	movs	r2, #0
d0043638:	602a      	str	r2, [r5, #0]
d004363a:	461a      	mov	r2, r3
d004363c:	f7fc fda2 	bl	d0040184 <_lseek>
d0043640:	1c43      	adds	r3, r0, #1
d0043642:	d102      	bne.n	d004364a <_lseek_r+0x1e>
d0043644:	682b      	ldr	r3, [r5, #0]
d0043646:	b103      	cbz	r3, d004364a <_lseek_r+0x1e>
d0043648:	6023      	str	r3, [r4, #0]
d004364a:	bd38      	pop	{r3, r4, r5, pc}
d004364c:	d0046850 	.word	0xd0046850

d0043650 <memchr>:
d0043650:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0043654:	2a10      	cmp	r2, #16
d0043656:	db2b      	blt.n	d00436b0 <memchr+0x60>
d0043658:	f010 0f07 	tst.w	r0, #7
d004365c:	d008      	beq.n	d0043670 <memchr+0x20>
d004365e:	f810 3b01 	ldrb.w	r3, [r0], #1
d0043662:	3a01      	subs	r2, #1
d0043664:	428b      	cmp	r3, r1
d0043666:	d02d      	beq.n	d00436c4 <memchr+0x74>
d0043668:	f010 0f07 	tst.w	r0, #7
d004366c:	b342      	cbz	r2, d00436c0 <memchr+0x70>
d004366e:	d1f6      	bne.n	d004365e <memchr+0xe>
d0043670:	b4f0      	push	{r4, r5, r6, r7}
d0043672:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0043676:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d004367a:	f022 0407 	bic.w	r4, r2, #7
d004367e:	f07f 0700 	mvns.w	r7, #0
d0043682:	2300      	movs	r3, #0
d0043684:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0043688:	3c08      	subs	r4, #8
d004368a:	ea85 0501 	eor.w	r5, r5, r1
d004368e:	ea86 0601 	eor.w	r6, r6, r1
d0043692:	fa85 f547 	uadd8	r5, r5, r7
d0043696:	faa3 f587 	sel	r5, r3, r7
d004369a:	fa86 f647 	uadd8	r6, r6, r7
d004369e:	faa5 f687 	sel	r6, r5, r7
d00436a2:	b98e      	cbnz	r6, d00436c8 <memchr+0x78>
d00436a4:	d1ee      	bne.n	d0043684 <memchr+0x34>
d00436a6:	bcf0      	pop	{r4, r5, r6, r7}
d00436a8:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d00436ac:	f002 0207 	and.w	r2, r2, #7
d00436b0:	b132      	cbz	r2, d00436c0 <memchr+0x70>
d00436b2:	f810 3b01 	ldrb.w	r3, [r0], #1
d00436b6:	3a01      	subs	r2, #1
d00436b8:	ea83 0301 	eor.w	r3, r3, r1
d00436bc:	b113      	cbz	r3, d00436c4 <memchr+0x74>
d00436be:	d1f8      	bne.n	d00436b2 <memchr+0x62>
d00436c0:	2000      	movs	r0, #0
d00436c2:	4770      	bx	lr
d00436c4:	3801      	subs	r0, #1
d00436c6:	4770      	bx	lr
d00436c8:	2d00      	cmp	r5, #0
d00436ca:	bf06      	itte	eq
d00436cc:	4635      	moveq	r5, r6
d00436ce:	3803      	subeq	r0, #3
d00436d0:	3807      	subne	r0, #7
d00436d2:	f015 0f01 	tst.w	r5, #1
d00436d6:	d107      	bne.n	d00436e8 <memchr+0x98>
d00436d8:	3001      	adds	r0, #1
d00436da:	f415 7f80 	tst.w	r5, #256	; 0x100
d00436de:	bf02      	ittt	eq
d00436e0:	3001      	addeq	r0, #1
d00436e2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d00436e6:	3001      	addeq	r0, #1
d00436e8:	bcf0      	pop	{r4, r5, r6, r7}
d00436ea:	3801      	subs	r0, #1
d00436ec:	4770      	bx	lr
d00436ee:	bf00      	nop

d00436f0 <memmove>:
d00436f0:	4288      	cmp	r0, r1
d00436f2:	b510      	push	{r4, lr}
d00436f4:	eb01 0402 	add.w	r4, r1, r2
d00436f8:	d902      	bls.n	d0043700 <memmove+0x10>
d00436fa:	4284      	cmp	r4, r0
d00436fc:	4623      	mov	r3, r4
d00436fe:	d807      	bhi.n	d0043710 <memmove+0x20>
d0043700:	1e43      	subs	r3, r0, #1
d0043702:	42a1      	cmp	r1, r4
d0043704:	d008      	beq.n	d0043718 <memmove+0x28>
d0043706:	f811 2b01 	ldrb.w	r2, [r1], #1
d004370a:	f803 2f01 	strb.w	r2, [r3, #1]!
d004370e:	e7f8      	b.n	d0043702 <memmove+0x12>
d0043710:	4402      	add	r2, r0
d0043712:	4601      	mov	r1, r0
d0043714:	428a      	cmp	r2, r1
d0043716:	d100      	bne.n	d004371a <memmove+0x2a>
d0043718:	bd10      	pop	{r4, pc}
d004371a:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d004371e:	f802 4d01 	strb.w	r4, [r2, #-1]!
d0043722:	e7f7      	b.n	d0043714 <memmove+0x24>

d0043724 <_realloc_r>:
d0043724:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0043726:	4607      	mov	r7, r0
d0043728:	4614      	mov	r4, r2
d004372a:	460e      	mov	r6, r1
d004372c:	b921      	cbnz	r1, d0043738 <_realloc_r+0x14>
d004372e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0043732:	4611      	mov	r1, r2
d0043734:	f7ff b8f2 	b.w	d004291c <_malloc_r>
d0043738:	b922      	cbnz	r2, d0043744 <_realloc_r+0x20>
d004373a:	f7ff f89f 	bl	d004287c <_free_r>
d004373e:	4625      	mov	r5, r4
d0043740:	4628      	mov	r0, r5
d0043742:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0043744:	f000 f826 	bl	d0043794 <_malloc_usable_size_r>
d0043748:	42a0      	cmp	r0, r4
d004374a:	d20f      	bcs.n	d004376c <_realloc_r+0x48>
d004374c:	4621      	mov	r1, r4
d004374e:	4638      	mov	r0, r7
d0043750:	f7ff f8e4 	bl	d004291c <_malloc_r>
d0043754:	4605      	mov	r5, r0
d0043756:	2800      	cmp	r0, #0
d0043758:	d0f2      	beq.n	d0043740 <_realloc_r+0x1c>
d004375a:	4631      	mov	r1, r6
d004375c:	4622      	mov	r2, r4
d004375e:	f7ff f877 	bl	d0042850 <memcpy>
d0043762:	4631      	mov	r1, r6
d0043764:	4638      	mov	r0, r7
d0043766:	f7ff f889 	bl	d004287c <_free_r>
d004376a:	e7e9      	b.n	d0043740 <_realloc_r+0x1c>
d004376c:	4635      	mov	r5, r6
d004376e:	e7e7      	b.n	d0043740 <_realloc_r+0x1c>

d0043770 <_read_r>:
d0043770:	b538      	push	{r3, r4, r5, lr}
d0043772:	4d07      	ldr	r5, [pc, #28]	; (d0043790 <_read_r+0x20>)
d0043774:	4604      	mov	r4, r0
d0043776:	4608      	mov	r0, r1
d0043778:	4611      	mov	r1, r2
d004377a:	2200      	movs	r2, #0
d004377c:	602a      	str	r2, [r5, #0]
d004377e:	461a      	mov	r2, r3
d0043780:	f7fc fcec 	bl	d004015c <_read>
d0043784:	1c43      	adds	r3, r0, #1
d0043786:	d102      	bne.n	d004378e <_read_r+0x1e>
d0043788:	682b      	ldr	r3, [r5, #0]
d004378a:	b103      	cbz	r3, d004378e <_read_r+0x1e>
d004378c:	6023      	str	r3, [r4, #0]
d004378e:	bd38      	pop	{r3, r4, r5, pc}
d0043790:	d0046850 	.word	0xd0046850

d0043794 <_malloc_usable_size_r>:
d0043794:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0043798:	1f18      	subs	r0, r3, #4
d004379a:	2b00      	cmp	r3, #0
d004379c:	bfbc      	itt	lt
d004379e:	580b      	ldrlt	r3, [r1, r0]
d00437a0:	18c0      	addlt	r0, r0, r3
d00437a2:	4770      	bx	lr
d00437a4:	46464952 	.word	0x46464952
d00437a8:	00000000 	.word	0x00000000
d00437ac:	45564157 	.word	0x45564157
d00437b0:	00000000 	.word	0x00000000

d00437b4 <dirTable>:
d00437b4:	00000000 3f800000 3e31c433 3f7c1bda     .......?3.1>..|?
d00437c4:	3eaf1aa0 3f70902e 3f000000 3f5db22d     ...>..p?...?-.]?
d00437d4:	3f248e8a 3f441893 3f441893 3f248e8a     ..$?..D?..D?..$?
d00437e4:	3f5db22d 3f000000 3f70902e 3eaf1aa0     -.]?...?..p?...>
d00437f4:	3f7c1bda 3e31c433 3f800000 00000000     ..|?3.1>...?....
d0043804:	3f7c1bda be31c433 3f70902e beaf1aa0     ..|?3.1...p?....
d0043814:	3f5db22d bf000000 3f441893 bf248e8a     -.]?......D?..$.
d0043824:	3f248e8a bf441893 3f000000 bf5db22d     ..$?..D....?-.].
d0043834:	3eaf1aa0 bf70902e 3e31c433 bf7c1bda     ...>..p.3.1>..|.
d0043844:	00000000 bf800000 be31c433 bf7c1bda     ........3.1...|.
d0043854:	beaf1aa0 bf70902e bf000000 bf5db22d     ......p.....-.].
d0043864:	bf248e8a bf441893 bf441893 bf248e8a     ..$...D...D...$.
d0043874:	bf5db22d bf000000 bf70902e beaf1aa0     -.].......p.....
d0043884:	bf7c1bda be31c433 bf800000 00000000     ..|.3.1.........
d0043894:	bf7c1bda 3e31c433 bf70902e 3eaf1aa0     ..|.3.1>..p....>
d00438a4:	bf5db22d 3f000000 bf441893 3f248e8a     -.]....?..D...$?
d00438b4:	bf248e8a 3f441893 bf000000 3f5db22d     ..$...D?....-.]?
d00438c4:	beaf1aa0 3f70902e be31c433 3f7c1bda     ......p?3.1...|?
d00438d4:	2f736572 72747865 66696c61 61772e65     res/extralife.wa
d00438e4:	00000076 2f736572 65726966 61772e6d     v...res/firem.wa
d00438f4:	00000076 2f736572 75726874 2e327473     v...res/thrust2.
d0043904:	00766177 2f736572 65696873 3273646c     wav.res/shields2
d0043914:	7661772e 00000000 2f736572 6c707865     .wav....res/expl
d0043924:	5f65646f 2e676962 00766177 2f736572     ode_big.wav.res/
d0043934:	6c707865 5f65646f 6c616d73 61772e6c     explode_small.wa
d0043944:	00000076 2f736572 6c6c6f63 2e656469     v...res/collide.
d0043954:	00766177 2f736572 656c6473 6d2e3176     wav.res/sdlev1.m
d0043964:	0000646f 2f736572 6e6e7574 2e316c65     od..res/tunnel1.
d0043974:	00646f6d 2f736572 72747361 5f64696f     mod.res/astroid_
d0043984:	6772616c 2e315f65 00627070 2f736572     large_1.ppb.res/
d0043994:	72747361 5f64696f 6964656d 315f6d75     astroid_medium_1
d00439a4:	6270702e 00000000 2f736572 72747361     .ppb....res/astr
d00439b4:	5f64696f 6964656d 325f6d75 6270702e     oid_medium_2.ppb
d00439c4:	00000000 2f736572 72747361 5f64696f     ....res/astroid_
d00439d4:	6c616d73 2e325f6c 00627070 2f736572     small_2.ppb.res/
d00439e4:	70696873 702e7372 00006270 2f736572     shiprs.ppb..res/
d00439f4:	6e6e7574 68736c65 702e7069 00006270     tunnelship.ppb..
d0043a04:	2f736572 6c6c7562 5f737465 65707974     res/bullets_type
d0043a14:	70702e31 00000062 2f736572 6d616c66     1.ppb...res/flam
d0043a24:	702e7365 00006270 2f736572 65696873     es.ppb..res/shie
d0043a34:	702e646c 00006270 2f736572 746f6870     ld.ppb..res/phot
d0043a44:	2e746e6f 00627070 2f736572 6c707865     ont.ppb.res/expl
d0043a54:	2e65646f 00627070 2f736572 746e6f66     ode.ppb.res/font
d0043a64:	36313631 6270702e 00000000 2f736572     1616.ppb....res/
d0043a74:	6c6c6970 6165685f 2e68746c 00627070     pill_health.ppb.
d0043a84:	2f736572 65776f70 61656872 2e68746c     res/powerhealth.
d0043a94:	00627070 524f4353 25203a45 756c3730     ppb.SCORE: %07lu
d0043aa4:	00000000 4556494c 25203a53 0000756c     ....LIVES: %lu..
d0043ab4:	45564157 25203a53 0000756c 00003a53     WAVES: %lu..S:..
d0043ac4:	00003a48 2f736572 6b636162 6270702e     H:..res/back.ppb
d0043ad4:	00000000                                ....

d0043ad8 <_global_impure_ptr>:
d0043ad8:	d00443a0                                .C..

d0043adc <__sf_fake_stderr>:
	...

d0043afc <__sf_fake_stdin>:
	...

d0043b1c <__sf_fake_stdout>:
	...
d0043b3c:	2b302d23 6c680020 6665004c 47464567     #-0+ .hlL.efgEFG
d0043b4c:	32313000 36353433 41393837 45444342     .0123456789ABCDE
d0043b5c:	31300046 35343332 39383736 64636261     F.0123456789abcd
d0043b6c:	                                         ef.

Disassembly of section .init:

d0043b70 <_init>:
d0043b70:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0043b72:	bf00      	nop

Disassembly of section .fini:

d0043b74 <_fini>:
d0043b74:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0043b76:	bf00      	nop
