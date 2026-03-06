
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
d004001e:	f002 fb7f 	bl	d0042720 <setbuf>
d0040022:	6833      	ldr	r3, [r6, #0]
d0040024:	2100      	movs	r1, #0
d0040026:	68d8      	ldr	r0, [r3, #12]
d0040028:	f002 fb7a 	bl	d0042720 <setbuf>
d004002c:	4629      	mov	r1, r5
d004002e:	4620      	mov	r0, r4
d0040030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0040034:	f001 be30 	b.w	d0041c98 <main>
d0040038:	d00438c0 	.word	0xd00438c0

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
d0040100:	d0047918 	.word	0xd0047918
d0040104:	d0600000 	.word	0xd0600000
d0040108:	d004457c 	.word	0xd004457c

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
d0040154:	f002 fa1e 	bl	d0042594 <__errno>
d0040158:	2209      	movs	r2, #9
d004015a:	4603      	mov	r3, r0
d004015c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0040160:	601a      	str	r2, [r3, #0]
d0040162:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0040164:	d0044564 	.word	0xd0044564
d0040168:	2001f000 	.word	0x2001f000

d004016c <_read>:
d004016c:	b508      	push	{r3, lr}
d004016e:	f002 fa11 	bl	d0042594 <__errno>
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
d00401ba:	f002 f9eb 	bl	d0042594 <__errno>
d00401be:	220c      	movs	r2, #12
d00401c0:	4603      	mov	r3, r0
d00401c2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00401c6:	601a      	str	r2, [r3, #0]
d00401c8:	bd10      	pop	{r4, pc}
d00401ca:	bf00      	nop
d00401cc:	d0044560 	.word	0xd0044560
d00401d0:	d0047918 	.word	0xd0047918
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
d0040228:	f002 f9c2 	bl	d00425b0 <memcmp>
d004022c:	b950      	cbnz	r0, d0040244 <LoadSFX+0x6c>
d004022e:	2204      	movs	r2, #4
d0040230:	492c      	ldr	r1, [pc, #176]	; (d00402e4 <LoadSFX+0x10c>)
d0040232:	a805      	add	r0, sp, #20
d0040234:	f002 f9bc 	bl	d00425b0 <memcmp>
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
d004026c:	f002 f998 	bl	d00425a0 <malloc>
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
d00402e0:	d0043514 	.word	0xd0043514
d00402e4:	d004351c 	.word	0xd004351c

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
d00405b8:	d00445e0 	.word	0xd00445e0
d00405bc:	2001f000 	.word	0x2001f000
d00405c0:	d0043644 	.word	0xd0043644
d00405c4:	d0044580 	.word	0xd0044580
d00405c8:	d00445c0 	.word	0xd00445c0
d00405cc:	d0043658 	.word	0xd0043658
d00405d0:	d0043668 	.word	0xd0043668
d00405d4:	d00445a0 	.word	0xd00445a0
d00405d8:	d0044600 	.word	0xd0044600
d00405dc:	d0043678 	.word	0xd0043678
d00405e0:	d0044620 	.word	0xd0044620
d00405e4:	d0044640 	.word	0xd0044640
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
d0040878:	d004368c 	.word	0xd004368c
d004087c:	d00436a0 	.word	0xd00436a0
d0040880:	d00436b8 	.word	0xd00436b8

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
d00408ac:	d00436c8 	.word	0xd00436c8

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
d0040b1c:	d0044568 	.word	0xd0044568
d0040b20:	d0044a8c 	.word	0xd0044a8c
d0040b24:	42000000 	.word	0x42000000
d0040b28:	d0044a88 	.word	0xd0044a88
d0040b2c:	3ee66666 	.word	0x3ee66666
d0040b30:	41e66666 	.word	0x41e66666
d0040b34:	2001f000 	.word	0x2001f000
d0040b38:	358637bd 	.word	0x358637bd
d0040b3c:	3f19999a 	.word	0x3f19999a
d0040b40:	d0044a80 	.word	0xd0044a80
d0040b44:	d0044a40 	.word	0xd0044a40
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
d0040bcc:	d0044a88 	.word	0xd0044a88
d0040bd0:	d0044a8c 	.word	0xd0044a8c
d0040bd4:	d0044569 	.word	0xd0044569
d0040bd8:	d0044660 	.word	0xd0044660
d0040bdc:	2001f000 	.word	0x2001f000

d0040be0 <ShieldON>:
d0040be0:	b570      	push	{r4, r5, r6, lr}
d0040be2:	4c1f      	ldr	r4, [pc, #124]	; (d0040c60 <ShieldON+0x80>)
d0040be4:	4e1f      	ldr	r6, [pc, #124]	; (d0040c64 <ShieldON+0x84>)
d0040be6:	7823      	ldrb	r3, [r4, #0]
d0040be8:	b96b      	cbnz	r3, d0040c06 <ShieldON+0x26>
d0040bea:	7c33      	ldrb	r3, [r6, #16]
d0040bec:	2003      	movs	r0, #3
d0040bee:	7c72      	ldrb	r2, [r6, #17]
d0040bf0:	7cb1      	ldrb	r1, [r6, #18]
d0040bf2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040bf6:	7cf2      	ldrb	r2, [r6, #19]
d0040bf8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040bfc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040c00:	689b      	ldr	r3, [r3, #8]
d0040c02:	685b      	ldr	r3, [r3, #4]
d0040c04:	4798      	blx	r3
d0040c06:	4b18      	ldr	r3, [pc, #96]	; (d0040c68 <ShieldON+0x88>)
d0040c08:	2201      	movs	r2, #1
d0040c0a:	4918      	ldr	r1, [pc, #96]	; (d0040c6c <ShieldON+0x8c>)
d0040c0c:	f06f 057e 	mvn.w	r5, #126	; 0x7e
d0040c10:	8a9b      	ldrh	r3, [r3, #20]
d0040c12:	2003      	movs	r0, #3
d0040c14:	7022      	strb	r2, [r4, #0]
d0040c16:	3320      	adds	r3, #32
d0040c18:	7c34      	ldrb	r4, [r6, #16]
d0040c1a:	7c72      	ldrb	r2, [r6, #17]
d0040c1c:	b21b      	sxth	r3, r3
d0040c1e:	ea44 2402 	orr.w	r4, r4, r2, lsl #8
d0040c22:	7cb2      	ldrb	r2, [r6, #18]
d0040c24:	3bf0      	subs	r3, #240	; 0xf0
d0040c26:	7cf6      	ldrb	r6, [r6, #19]
d0040c28:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
d0040c2c:	ebc3 13c3 	rsb	r3, r3, r3, lsl #7
d0040c30:	ea44 6406 	orr.w	r4, r4, r6, lsl #24
d0040c34:	fb81 c103 	smull	ip, r1, r1, r3
d0040c38:	17da      	asrs	r2, r3, #31
d0040c3a:	4419      	add	r1, r3
d0040c3c:	68a3      	ldr	r3, [r4, #8]
d0040c3e:	ebc2 11e1 	rsb	r1, r2, r1, asr #7
d0040c42:	699b      	ldr	r3, [r3, #24]
d0040c44:	b209      	sxth	r1, r1
d0040c46:	297f      	cmp	r1, #127	; 0x7f
d0040c48:	bfa8      	it	ge
d0040c4a:	217f      	movge	r1, #127	; 0x7f
d0040c4c:	42a9      	cmp	r1, r5
d0040c4e:	bfb8      	it	lt
d0040c50:	4629      	movlt	r1, r5
d0040c52:	b249      	sxtb	r1, r1
d0040c54:	4798      	blx	r3
d0040c56:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0040c5a:	f7ff bf79 	b.w	d0040b50 <ShowShield>
d0040c5e:	bf00      	nop
d0040c60:	d0044568 	.word	0xd0044568
d0040c64:	2001f000 	.word	0x2001f000
d0040c68:	d0044a60 	.word	0xd0044a60
d0040c6c:	88888889 	.word	0x88888889

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
d0040ca0:	d0044568 	.word	0xd0044568
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
d0040cd0:	d0044a88 	.word	0xd0044a88
d0040cd4:	43500000 	.word	0x43500000
d0040cd8:	d0044a8c 	.word	0xd0044a8c
d0040cdc:	d0044a40 	.word	0xd0044a40
d0040ce0:	d0044a80 	.word	0xd0044a80
d0040ce4:	d0044a84 	.word	0xd0044a84
d0040ce8:	d004456a 	.word	0xd004456a

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
d0040e14:	d004456a 	.word	0xd004456a
d0040e18:	d0044a84 	.word	0xd0044a84
d0040e1c:	d0043524 	.word	0xd0043524
d0040e20:	d0044a80 	.word	0xd0044a80
d0040e24:	d0044a40 	.word	0xd0044a40
d0040e28:	d0044a88 	.word	0xd0044a88
d0040e2c:	c2800000 	.word	0xc2800000
d0040e30:	d0044a8c 	.word	0xd0044a8c
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
d0040e78:	d0044684 	.word	0xd0044684

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
d0040fd4:	d0044a84 	.word	0xd0044a84
d0040fd8:	d0044684 	.word	0xd0044684
d0040fdc:	d0044a60 	.word	0xd0044a60
d0040fe0:	2001f000 	.word	0x2001f000
d0040fe4:	88888889 	.word	0x88888889
d0040fe8:	d0043524 	.word	0xd0043524

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
d00410f8:	d0044684 	.word	0xd0044684
d00410fc:	d0044a20 	.word	0xd0044a20
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
d004121c:	d0044b20 	.word	0xd0044b20
d0041220:	d0044540 	.word	0xd0044540

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
d0041258:	d0044b20 	.word	0xd0044b20

d004125c <proc_astroids>:
d004125c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041260:	f8df b014 	ldr.w	fp, [pc, #20]	; d0041278 <proc_astroids+0x1c>
d0041264:	2600      	movs	r6, #0
d0041266:	4f03      	ldr	r7, [pc, #12]	; (d0041274 <proc_astroids+0x18>)
d0041268:	ed2d 8b02 	vpush	{d8}
d004126c:	b089      	sub	sp, #36	; 0x24
d004126e:	f8cd b004 	str.w	fp, [sp, #4]
d0041272:	e00a      	b.n	d004128a <proc_astroids+0x2e>
d0041274:	d0044a20 	.word	0xd0044a20
d0041278:	d0044b20 	.word	0xd0044b20
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
d0041648:	d0044aa0 	.word	0xd0044aa0
d004164c:	d0044684 	.word	0xd0044684
d0041650:	d004456c 	.word	0xd004456c
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
d0041784:	d0045240 	.word	0xd0045240
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
d00417a8:	d0045280 	.word	0xd0045280

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
d00417c8:	d0044e20 	.word	0xd0044e20

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
d00418a4:	d0044a84 	.word	0xd0044a84
d00418a8:	d0045280 	.word	0xd0045280
d00418ac:	d0043524 	.word	0xd0043524
d00418b0:	d0044a60 	.word	0xd0044a60

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
d00419c4:	d0045280 	.word	0xd0045280
d00419c8:	d0045220 	.word	0xd0045220
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
d0041a0c:	d0044e20 	.word	0xd0044e20

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
d0041a70:	d0045260 	.word	0xd0045260
d0041a74:	2001f000 	.word	0x2001f000
d0041a78:	d0044e20 	.word	0xd0044e20

d0041a7c <LoadGraphics>:
d0041a7c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0041a80:	f44f 3061 	mov.w	r0, #230400	; 0x38400
d0041a84:	4c2c      	ldr	r4, [pc, #176]	; (d0041b38 <LoadGraphics+0xbc>)
d0041a86:	f000 fd8b 	bl	d00425a0 <malloc>
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
d0041ab6:	f000 fd73 	bl	d00425a0 <malloc>
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
d0041ad8:	f000 fd62 	bl	d00425a0 <malloc>
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
d0041b04:	f000 fd4c 	bl	d00425a0 <malloc>
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
d0041b38:	d0044aa0 	.word	0xd0044aa0
d0041b3c:	d00436d8 	.word	0xd00436d8
d0041b40:	d00436f0 	.word	0xd00436f0
d0041b44:	d004370c 	.word	0xd004370c
d0041b48:	d0043728 	.word	0xd0043728

d0041b4c <LoadShipGfx>:
d0041b4c:	b570      	push	{r4, r5, r6, lr}
d0041b4e:	f44f 3010 	mov.w	r0, #147456	; 0x24000
d0041b52:	2400      	movs	r4, #0
d0041b54:	f000 fd24 	bl	d00425a0 <malloc>
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
d0041b80:	f000 fd0e 	bl	d00425a0 <malloc>
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
d0041ba2:	f000 fcfd 	bl	d00425a0 <malloc>
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
d0041bc4:	f000 fcec 	bl	d00425a0 <malloc>
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
d0041be8:	d0044a60 	.word	0xd0044a60
d0041bec:	d0043740 	.word	0xd0043740
d0041bf0:	d0044a20 	.word	0xd0044a20
d0041bf4:	d0043750 	.word	0xd0043750
d0041bf8:	d0045220 	.word	0xd0045220
d0041bfc:	d0043768 	.word	0xd0043768
d0041c00:	d0044660 	.word	0xd0044660
d0041c04:	d0043778 	.word	0xd0043778

d0041c08 <LoadCommonGameGraphics>:
d0041c08:	b538      	push	{r3, r4, r5, lr}
d0041c0a:	f44f 4020 	mov.w	r0, #40960	; 0xa000
d0041c0e:	2580      	movs	r5, #128	; 0x80
d0041c10:	f000 fcc6 	bl	d00425a0 <malloc>
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
d0041c36:	f000 fcb3 	bl	d00425a0 <malloc>
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
d0041c58:	d0045260 	.word	0xd0045260
d0041c5c:	d0043788 	.word	0xd0043788
d0041c60:	d0045240 	.word	0xd0045240
d0041c64:	d0043798 	.word	0xd0043798

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
d0041c94:	d0044554 	.word	0xd0044554

d0041c98 <main>:
d0041c98:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041c9c:	4cb2      	ldr	r4, [pc, #712]	; (d0041f68 <main+0x2d0>)
d0041c9e:	f44f 3000 	mov.w	r0, #131072	; 0x20000
d0041ca2:	2500      	movs	r5, #0
d0041ca4:	f8df a2e0 	ldr.w	sl, [pc, #736]	; d0041f88 <main+0x2f0>
d0041ca8:	7823      	ldrb	r3, [r4, #0]
d0041caa:	7862      	ldrb	r2, [r4, #1]
d0041cac:	46a8      	mov	r8, r5
d0041cae:	78a1      	ldrb	r1, [r4, #2]
d0041cb0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041cb4:	78e2      	ldrb	r2, [r4, #3]
d0041cb6:	f8df b2d8 	ldr.w	fp, [pc, #728]	; d0041f90 <main+0x2f8>
d0041cba:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0041cbe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041cc2:	ed2d 8b04 	vpush	{d8-d9}
d0041cc6:	681b      	ldr	r3, [r3, #0]
d0041cc8:	b099      	sub	sp, #100	; 0x64
d0041cca:	4798      	blx	r3
d0041ccc:	f7fe fa12 	bl	d00400f4 <initMalloc>
d0041cd0:	7b23      	ldrb	r3, [r4, #12]
d0041cd2:	7b62      	ldrb	r2, [r4, #13]
d0041cd4:	2190      	movs	r1, #144	; 0x90
d0041cd6:	7ba6      	ldrb	r6, [r4, #14]
d0041cd8:	20dc      	movs	r0, #220	; 0xdc
d0041cda:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041cde:	7be2      	ldrb	r2, [r4, #15]
d0041ce0:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0041ce4:	2606      	movs	r6, #6
d0041ce6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041cea:	681b      	ldr	r3, [r3, #0]
d0041cec:	691b      	ldr	r3, [r3, #16]
d0041cee:	4798      	blx	r3
d0041cf0:	7b23      	ldrb	r3, [r4, #12]
d0041cf2:	7b62      	ldrb	r2, [r4, #13]
d0041cf4:	4628      	mov	r0, r5
d0041cf6:	7ba1      	ldrb	r1, [r4, #14]
d0041cf8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041cfc:	7be2      	ldrb	r2, [r4, #15]
d0041cfe:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0041d02:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041d06:	681b      	ldr	r3, [r3, #0]
d0041d08:	689b      	ldr	r3, [r3, #8]
d0041d0a:	4798      	blx	r3
d0041d0c:	7b21      	ldrb	r1, [r4, #12]
d0041d0e:	7b62      	ldrb	r2, [r4, #13]
d0041d10:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d0041d14:	7ba0      	ldrb	r0, [r4, #14]
d0041d16:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
d0041d1a:	7be2      	ldrb	r2, [r4, #15]
d0041d1c:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
d0041d20:	4618      	mov	r0, r3
d0041d22:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
d0041d26:	f44f 7220 	mov.w	r2, #640	; 0x280
d0041d2a:	680f      	ldr	r7, [r1, #0]
d0041d2c:	f44f 71a0 	mov.w	r1, #320	; 0x140
d0041d30:	9600      	str	r6, [sp, #0]
d0041d32:	697e      	ldr	r6, [r7, #20]
d0041d34:	47b0      	blx	r6
d0041d36:	7c23      	ldrb	r3, [r4, #16]
d0041d38:	7c62      	ldrb	r2, [r4, #17]
d0041d3a:	f44f 7000 	mov.w	r0, #512	; 0x200
d0041d3e:	7ca1      	ldrb	r1, [r4, #18]
d0041d40:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041d44:	7ce2      	ldrb	r2, [r4, #19]
d0041d46:	4f89      	ldr	r7, [pc, #548]	; (d0041f6c <main+0x2d4>)
d0041d48:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0041d4c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041d50:	681b      	ldr	r3, [r3, #0]
d0041d52:	681b      	ldr	r3, [r3, #0]
d0041d54:	4798      	blx	r3
d0041d56:	7c22      	ldrb	r2, [r4, #16]
d0041d58:	7c63      	ldrb	r3, [r4, #17]
d0041d5a:	2101      	movs	r1, #1
d0041d5c:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d0041d60:	7ca3      	ldrb	r3, [r4, #18]
d0041d62:	7ce0      	ldrb	r0, [r4, #19]
d0041d64:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
d0041d68:	7b23      	ldrb	r3, [r4, #12]
d0041d6a:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d0041d6e:	7b60      	ldrb	r0, [r4, #13]
d0041d70:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d0041d74:	6810      	ldr	r0, [r2, #0]
d0041d76:	7ba2      	ldrb	r2, [r4, #14]
d0041d78:	6840      	ldr	r0, [r0, #4]
d0041d7a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041d7e:	7be2      	ldrb	r2, [r4, #15]
d0041d80:	7001      	strb	r1, [r0, #0]
d0041d82:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041d86:	681b      	ldr	r3, [r3, #0]
d0041d88:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d0041d8a:	4798      	blx	r3
d0041d8c:	7b23      	ldrb	r3, [r4, #12]
d0041d8e:	7b62      	ldrb	r2, [r4, #13]
d0041d90:	4977      	ldr	r1, [pc, #476]	; (d0041f70 <main+0x2d8>)
d0041d92:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041d96:	7ba2      	ldrb	r2, [r4, #14]
d0041d98:	6008      	str	r0, [r1, #0]
d0041d9a:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041d9e:	7be2      	ldrb	r2, [r4, #15]
d0041da0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041da4:	681b      	ldr	r3, [r3, #0]
d0041da6:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d0041da8:	4798      	blx	r3
d0041daa:	7b23      	ldrb	r3, [r4, #12]
d0041dac:	7b62      	ldrb	r2, [r4, #13]
d0041dae:	4971      	ldr	r1, [pc, #452]	; (d0041f74 <main+0x2dc>)
d0041db0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041db4:	7ba2      	ldrb	r2, [r4, #14]
d0041db6:	6008      	str	r0, [r1, #0]
d0041db8:	2064      	movs	r0, #100	; 0x64
d0041dba:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041dbe:	7be2      	ldrb	r2, [r4, #15]
d0041dc0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041dc4:	681b      	ldr	r3, [r3, #0]
d0041dc6:	689b      	ldr	r3, [r3, #8]
d0041dc8:	4798      	blx	r3
d0041dca:	f7fe fa8d 	bl	d00402e8 <loadSounds>
d0041dce:	4628      	mov	r0, r5
d0041dd0:	f7fe fd58 	bl	d0040884 <MusicPlay>
d0041dd4:	f44f 3061 	mov.w	r0, #230400	; 0x38400
d0041dd8:	f000 fbe2 	bl	d00425a0 <malloc>
d0041ddc:	4b66      	ldr	r3, [pc, #408]	; (d0041f78 <main+0x2e0>)
d0041dde:	2260      	movs	r2, #96	; 0x60
d0041de0:	f44f 71f0 	mov.w	r1, #480	; 0x1e0
d0041de4:	6018      	str	r0, [r3, #0]
d0041de6:	8199      	strh	r1, [r3, #12]
d0041de8:	4864      	ldr	r0, [pc, #400]	; (d0041f7c <main+0x2e4>)
d0041dea:	81d9      	strh	r1, [r3, #14]
d0041dec:	821a      	strh	r2, [r3, #16]
d0041dee:	825a      	strh	r2, [r3, #18]
d0041df0:	829d      	strh	r5, [r3, #20]
d0041df2:	82dd      	strh	r5, [r3, #22]
d0041df4:	6819      	ldr	r1, [r3, #0]
d0041df6:	f7fe f929 	bl	d004004c <LoadPPB>
d0041dfa:	7823      	ldrb	r3, [r4, #0]
d0041dfc:	7862      	ldrb	r2, [r4, #1]
d0041dfe:	4860      	ldr	r0, [pc, #384]	; (d0041f80 <main+0x2e8>)
d0041e00:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041e04:	78a2      	ldrb	r2, [r4, #2]
d0041e06:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041e0a:	78e2      	ldrb	r2, [r4, #3]
d0041e0c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041e10:	689b      	ldr	r3, [r3, #8]
d0041e12:	4798      	blx	r3
d0041e14:	f44f 3096 	mov.w	r0, #76800	; 0x12c00
d0041e18:	46c1      	mov	r9, r8
d0041e1a:	f000 fbc1 	bl	d00425a0 <malloc>
d0041e1e:	2500      	movs	r5, #0
d0041e20:	4603      	mov	r3, r0
d0041e22:	f108 0801 	add.w	r8, r8, #1
d0041e26:	4957      	ldr	r1, [pc, #348]	; (d0041f84 <main+0x2ec>)
d0041e28:	a808      	add	r0, sp, #32
d0041e2a:	603b      	str	r3, [r7, #0]
d0041e2c:	4642      	mov	r2, r8
d0041e2e:	f8c7 b00c 	str.w	fp, [r7, #12]
d0041e32:	f8c7 b010 	str.w	fp, [r7, #16]
d0041e36:	617d      	str	r5, [r7, #20]
d0041e38:	f000 fd40 	bl	d00428bc <siprintf>
d0041e3c:	6839      	ldr	r1, [r7, #0]
d0041e3e:	a808      	add	r0, sp, #32
d0041e40:	f7fe f904 	bl	d004004c <LoadPPB>
d0041e44:	7823      	ldrb	r3, [r4, #0]
d0041e46:	7862      	ldrb	r2, [r4, #1]
d0041e48:	a808      	add	r0, sp, #32
d0041e4a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041e4e:	78a2      	ldrb	r2, [r4, #2]
d0041e50:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041e54:	78e2      	ldrb	r2, [r4, #3]
d0041e56:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041e5a:	689b      	ldr	r3, [r3, #8]
d0041e5c:	4798      	blx	r3
d0041e5e:	4b4a      	ldr	r3, [pc, #296]	; (d0041f88 <main+0x2f0>)
d0041e60:	f44f 2096 	mov.w	r0, #307200	; 0x4b000
d0041e64:	f44f 7120 	mov.w	r1, #640	; 0x280
d0041e68:	461e      	mov	r6, r3
d0041e6a:	eb03 1349 	add.w	r3, r3, r9, lsl #5
d0041e6e:	ea4f 1949 	mov.w	r9, r9, lsl #5
d0041e72:	60d8      	str	r0, [r3, #12]
d0041e74:	8099      	strh	r1, [r3, #4]
d0041e76:	f44f 71f0 	mov.w	r1, #480	; 0x1e0
d0041e7a:	80d9      	strh	r1, [r3, #6]
d0041e7c:	8119      	strh	r1, [r3, #8]
d0041e7e:	f000 fb8f 	bl	d00425a0 <malloc>
d0041e82:	4603      	mov	r3, r0
d0041e84:	4650      	mov	r0, sl
d0041e86:	f10a 0a20 	add.w	sl, sl, #32
d0041e8a:	f846 3009 	str.w	r3, [r6, r9]
d0041e8e:	7b23      	ldrb	r3, [r4, #12]
d0041e90:	7b62      	ldrb	r2, [r4, #13]
d0041e92:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041e96:	7ba2      	ldrb	r2, [r4, #14]
d0041e98:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041e9c:	7be2      	ldrb	r2, [r4, #15]
d0041e9e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041ea2:	681b      	ldr	r3, [r3, #0]
d0041ea4:	699b      	ldr	r3, [r3, #24]
d0041ea6:	4798      	blx	r3
d0041ea8:	7b23      	ldrb	r3, [r4, #12]
d0041eaa:	7b62      	ldrb	r2, [r4, #13]
d0041eac:	7ba1      	ldrb	r1, [r4, #14]
d0041eae:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041eb2:	7be2      	ldrb	r2, [r4, #15]
d0041eb4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0041eb8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041ebc:	685b      	ldr	r3, [r3, #4]
d0041ebe:	681b      	ldr	r3, [r3, #0]
d0041ec0:	4798      	blx	r3
d0041ec2:	7b23      	ldrb	r3, [r4, #12]
d0041ec4:	7b62      	ldrb	r2, [r4, #13]
d0041ec6:	4638      	mov	r0, r7
d0041ec8:	713d      	strb	r5, [r7, #4]
d0041eca:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041ece:	7ba2      	ldrb	r2, [r4, #14]
d0041ed0:	617d      	str	r5, [r7, #20]
d0041ed2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041ed6:	7be2      	ldrb	r2, [r4, #15]
d0041ed8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041edc:	685b      	ldr	r3, [r3, #4]
d0041ede:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0041ee0:	4798      	blx	r3
d0041ee2:	7b23      	ldrb	r3, [r4, #12]
d0041ee4:	7b62      	ldrb	r2, [r4, #13]
d0041ee6:	2104      	movs	r1, #4
d0041ee8:	4638      	mov	r0, r7
d0041eea:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041eee:	7ba2      	ldrb	r2, [r4, #14]
d0041ef0:	7139      	strb	r1, [r7, #4]
d0041ef2:	f44f 71a0 	mov.w	r1, #320	; 0x140
d0041ef6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041efa:	7be2      	ldrb	r2, [r4, #15]
d0041efc:	6179      	str	r1, [r7, #20]
d0041efe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041f02:	685b      	ldr	r3, [r3, #4]
d0041f04:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0041f06:	4798      	blx	r3
d0041f08:	7b23      	ldrb	r3, [r4, #12]
d0041f0a:	7b62      	ldrb	r2, [r4, #13]
d0041f0c:	2108      	movs	r1, #8
d0041f0e:	4638      	mov	r0, r7
d0041f10:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041f14:	7ba2      	ldrb	r2, [r4, #14]
d0041f16:	7139      	strb	r1, [r7, #4]
d0041f18:	f44f 0170 	mov.w	r1, #15728640	; 0xf00000
d0041f1c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041f20:	7be2      	ldrb	r2, [r4, #15]
d0041f22:	6179      	str	r1, [r7, #20]
d0041f24:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041f28:	685b      	ldr	r3, [r3, #4]
d0041f2a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0041f2c:	4798      	blx	r3
d0041f2e:	7b23      	ldrb	r3, [r4, #12]
d0041f30:	7b62      	ldrb	r2, [r4, #13]
d0041f32:	210c      	movs	r1, #12
d0041f34:	4638      	mov	r0, r7
d0041f36:	f8c7 b014 	str.w	fp, [r7, #20]
d0041f3a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041f3e:	7ba2      	ldrb	r2, [r4, #14]
d0041f40:	7139      	strb	r1, [r7, #4]
d0041f42:	3720      	adds	r7, #32
d0041f44:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041f48:	7be2      	ldrb	r2, [r4, #15]
d0041f4a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041f4e:	685b      	ldr	r3, [r3, #4]
d0041f50:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0041f52:	4798      	blx	r3
d0041f54:	f1b8 0f08 	cmp.w	r8, #8
d0041f58:	f47f af5c 	bne.w	d0041e14 <main+0x17c>
d0041f5c:	4b0b      	ldr	r3, [pc, #44]	; (d0041f8c <main+0x2f4>)
d0041f5e:	46a9      	mov	r9, r5
d0041f60:	9507      	str	r5, [sp, #28]
d0041f62:	601d      	str	r5, [r3, #0]
d0041f64:	e016      	b.n	d0041f94 <main+0x2fc>
d0041f66:	bf00      	nop
d0041f68:	2001f000 	.word	0x2001f000
d0041f6c:	d0045680 	.word	0xd0045680
d0041f70:	d0045900 	.word	0xd0045900
d0041f74:	d00457e8 	.word	0xd00457e8
d0041f78:	d0044aa0 	.word	0xd0044aa0
d0041f7c:	d00436d8 	.word	0xd00436d8
d0041f80:	d00437ac 	.word	0xd00437ac
d0041f84:	d00437c8 	.word	0xd00437c8
d0041f88:	d0045800 	.word	0xd0045800
d0041f8c:	d0043940 	.word	0xd0043940
d0041f90:	00f00140 	.word	0x00f00140
d0041f94:	4618      	mov	r0, r3
d0041f96:	7b23      	ldrb	r3, [r4, #12]
d0041f98:	7b62      	ldrb	r2, [r4, #13]
d0041f9a:	7ba1      	ldrb	r1, [r4, #14]
d0041f9c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041fa0:	7be2      	ldrb	r2, [r4, #15]
d0041fa2:	9505      	str	r5, [sp, #20]
d0041fa4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0041fa8:	9502      	str	r5, [sp, #8]
d0041faa:	9506      	str	r5, [sp, #24]
d0041fac:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041fb0:	9504      	str	r5, [sp, #16]
d0041fb2:	f8df a1dc 	ldr.w	sl, [pc, #476]	; d0042190 <main+0x4f8>
d0041fb6:	681b      	ldr	r3, [r3, #0]
d0041fb8:	4f65      	ldr	r7, [pc, #404]	; (d0042150 <main+0x4b8>)
d0041fba:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d0041fbc:	4798      	blx	r3
d0041fbe:	7b23      	ldrb	r3, [r4, #12]
d0041fc0:	7b62      	ldrb	r2, [r4, #13]
d0041fc2:	7ba1      	ldrb	r1, [r4, #14]
d0041fc4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041fc8:	7be2      	ldrb	r2, [r4, #15]
d0041fca:	4862      	ldr	r0, [pc, #392]	; (d0042154 <main+0x4bc>)
d0041fcc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0041fd0:	ed9f 9a61 	vldr	s18, [pc, #388]	; d0042158 <main+0x4c0>
d0041fd4:	f8df b1bc 	ldr.w	fp, [pc, #444]	; d0042194 <main+0x4fc>
d0041fd8:	ea43 6202 	orr.w	r2, r3, r2, lsl #24
d0041fdc:	eef0 8a49 	vmov.f32	s17, s18
d0041fe0:	ed9f 8a5e 	vldr	s16, [pc, #376]	; d004215c <main+0x4c4>
d0041fe4:	6813      	ldr	r3, [r2, #0]
d0041fe6:	f8df 81a4 	ldr.w	r8, [pc, #420]	; d004218c <main+0x4f4>
d0041fea:	6d1b      	ldr	r3, [r3, #80]	; 0x50
d0041fec:	4798      	blx	r3
d0041fee:	7b23      	ldrb	r3, [r4, #12]
d0041ff0:	7b62      	ldrb	r2, [r4, #13]
d0041ff2:	485b      	ldr	r0, [pc, #364]	; (d0042160 <main+0x4c8>)
d0041ff4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041ff8:	7ba2      	ldrb	r2, [r4, #14]
d0041ffa:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041ffe:	7be2      	ldrb	r2, [r4, #15]
d0042000:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042004:	681b      	ldr	r3, [r3, #0]
d0042006:	6a1b      	ldr	r3, [r3, #32]
d0042008:	4798      	blx	r3
d004200a:	7b23      	ldrb	r3, [r4, #12]
d004200c:	7b62      	ldrb	r2, [r4, #13]
d004200e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042012:	7ba2      	ldrb	r2, [r4, #14]
d0042014:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0042018:	7be2      	ldrb	r2, [r4, #15]
d004201a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004201e:	4a51      	ldr	r2, [pc, #324]	; (d0042164 <main+0x4cc>)
d0042020:	681b      	ldr	r3, [r3, #0]
d0042022:	4616      	mov	r6, r2
d0042024:	6810      	ldr	r0, [r2, #0]
d0042026:	69db      	ldr	r3, [r3, #28]
d0042028:	4798      	blx	r3
d004202a:	7b23      	ldrb	r3, [r4, #12]
d004202c:	7b62      	ldrb	r2, [r4, #13]
d004202e:	6830      	ldr	r0, [r6, #0]
d0042030:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042034:	7ba2      	ldrb	r2, [r4, #14]
d0042036:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004203a:	7be2      	ldrb	r2, [r4, #15]
d004203c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042040:	681b      	ldr	r3, [r3, #0]
d0042042:	699b      	ldr	r3, [r3, #24]
d0042044:	4798      	blx	r3
d0042046:	f88a 5000 	strb.w	r5, [sl]
d004204a:	f7ff fd17 	bl	d0041a7c <LoadGraphics>
d004204e:	f7ff fd7d 	bl	d0041b4c <LoadShipGfx>
d0042052:	f7ff fdd9 	bl	d0041c08 <LoadCommonGameGraphics>
d0042056:	f44f 2396 	mov.w	r3, #307200	; 0x4b000
d004205a:	f44f 7120 	mov.w	r1, #640	; 0x280
d004205e:	60fb      	str	r3, [r7, #12]
d0042060:	4618      	mov	r0, r3
d0042062:	80b9      	strh	r1, [r7, #4]
d0042064:	f44f 71f0 	mov.w	r1, #480	; 0x1e0
d0042068:	80f9      	strh	r1, [r7, #6]
d004206a:	8139      	strh	r1, [r7, #8]
d004206c:	f000 fa98 	bl	d00425a0 <malloc>
d0042070:	4603      	mov	r3, r0
d0042072:	483d      	ldr	r0, [pc, #244]	; (d0042168 <main+0x4d0>)
d0042074:	603b      	str	r3, [r7, #0]
d0042076:	6839      	ldr	r1, [r7, #0]
d0042078:	f7fd ffe8 	bl	d004004c <LoadPPB>
d004207c:	f7ff f8d8 	bl	d0041230 <initAstroids>
d0042080:	f7ff fb84 	bl	d004178c <initFlames>
d0042084:	f7ff fb92 	bl	d00417ac <initExplodes>
d0042088:	f7fe fe0e 	bl	d0040ca8 <initShip>
d004208c:	f7fe fede 	bl	d0040e4c <initBullets>
d0042090:	4b36      	ldr	r3, [pc, #216]	; (d004216c <main+0x4d4>)
d0042092:	4836      	ldr	r0, [pc, #216]	; (d004216c <main+0x4d4>)
d0042094:	601d      	str	r5, [r3, #0]
d0042096:	7b23      	ldrb	r3, [r4, #12]
d0042098:	7b62      	ldrb	r2, [r4, #13]
d004209a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004209e:	7ba2      	ldrb	r2, [r4, #14]
d00420a0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00420a4:	7be2      	ldrb	r2, [r4, #15]
d00420a6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00420aa:	681b      	ldr	r3, [r3, #0]
d00420ac:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d00420ae:	4798      	blx	r3
d00420b0:	7b23      	ldrb	r3, [r4, #12]
d00420b2:	7b62      	ldrb	r2, [r4, #13]
d00420b4:	482e      	ldr	r0, [pc, #184]	; (d0042170 <main+0x4d8>)
d00420b6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00420ba:	7ba2      	ldrb	r2, [r4, #14]
d00420bc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00420c0:	7be2      	ldrb	r2, [r4, #15]
d00420c2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00420c6:	681b      	ldr	r3, [r3, #0]
d00420c8:	6d1b      	ldr	r3, [r3, #80]	; 0x50
d00420ca:	4798      	blx	r3
d00420cc:	7b23      	ldrb	r3, [r4, #12]
d00420ce:	7b62      	ldrb	r2, [r4, #13]
d00420d0:	4638      	mov	r0, r7
d00420d2:	4f28      	ldr	r7, [pc, #160]	; (d0042174 <main+0x4dc>)
d00420d4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00420d8:	7ba2      	ldrb	r2, [r4, #14]
d00420da:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00420de:	7be2      	ldrb	r2, [r4, #15]
d00420e0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00420e4:	681b      	ldr	r3, [r3, #0]
d00420e6:	6a1b      	ldr	r3, [r3, #32]
d00420e8:	4798      	blx	r3
d00420ea:	7b23      	ldrb	r3, [r4, #12]
d00420ec:	7b62      	ldrb	r2, [r4, #13]
d00420ee:	6830      	ldr	r0, [r6, #0]
d00420f0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00420f4:	7ba2      	ldrb	r2, [r4, #14]
d00420f6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00420fa:	7be2      	ldrb	r2, [r4, #15]
d00420fc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042100:	681b      	ldr	r3, [r3, #0]
d0042102:	69db      	ldr	r3, [r3, #28]
d0042104:	4798      	blx	r3
d0042106:	7b23      	ldrb	r3, [r4, #12]
d0042108:	7b62      	ldrb	r2, [r4, #13]
d004210a:	6830      	ldr	r0, [r6, #0]
d004210c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042110:	7ba2      	ldrb	r2, [r4, #14]
d0042112:	4e19      	ldr	r6, [pc, #100]	; (d0042178 <main+0x4e0>)
d0042114:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0042118:	7be2      	ldrb	r2, [r4, #15]
d004211a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004211e:	681b      	ldr	r3, [r3, #0]
d0042120:	699b      	ldr	r3, [r3, #24]
d0042122:	4798      	blx	r3
d0042124:	4a15      	ldr	r2, [pc, #84]	; (d004217c <main+0x4e4>)
d0042126:	2303      	movs	r3, #3
d0042128:	21c8      	movs	r1, #200	; 0xc8
d004212a:	ed82 9a00 	vstr	s18, [r2]
d004212e:	4a14      	ldr	r2, [pc, #80]	; (d0042180 <main+0x4e8>)
d0042130:	4608      	mov	r0, r1
d0042132:	ed8b 9a00 	vstr	s18, [fp]
d0042136:	6015      	str	r5, [r2, #0]
d0042138:	462a      	mov	r2, r5
d004213a:	4d12      	ldr	r5, [pc, #72]	; (d0042184 <main+0x4ec>)
d004213c:	702b      	strb	r3, [r5, #0]
d004213e:	2501      	movs	r5, #1
d0042140:	2364      	movs	r3, #100	; 0x64
d0042142:	7035      	strb	r5, [r6, #0]
d0042144:	4d10      	ldr	r5, [pc, #64]	; (d0042188 <main+0x4f0>)
d0042146:	702b      	strb	r3, [r5, #0]
d0042148:	f7ff f86c 	bl	d0041224 <SpawnAstroid>
d004214c:	e080      	b.n	d0042250 <main+0x5b8>
d004214e:	bf00      	nop
d0042150:	d0045780 	.word	0xd0045780
d0042154:	d0043d40 	.word	0xd0043d40
d0042158:	00000000 	.word	0x00000000
d004215c:	43200000 	.word	0x43200000
d0042160:	d0045800 	.word	0xd0045800
d0042164:	d0045900 	.word	0xd0045900
d0042168:	d00437d8 	.word	0xd00437d8
d004216c:	d0043940 	.word	0xd0043940
d0042170:	d0044140 	.word	0xd0044140
d0042174:	d00457a4 	.word	0xd00457a4
d0042178:	d0044570 	.word	0xd0044570
d004217c:	d00457a0 	.word	0xd00457a0
d0042180:	d004456c 	.word	0xd004456c
d0042184:	d004456b 	.word	0xd004456b
d0042188:	d0044680 	.word	0xd0044680
d004218c:	d0044a60 	.word	0xd0044a60
d0042190:	d0044571 	.word	0xd0044571
d0042194:	d00457e4 	.word	0xd00457e4
d0042198:	7b20      	ldrb	r0, [r4, #12]
d004219a:	7b61      	ldrb	r1, [r4, #13]
d004219c:	7ba2      	ldrb	r2, [r4, #14]
d004219e:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00421a2:	7be3      	ldrb	r3, [r4, #15]
d00421a4:	48b6      	ldr	r0, [pc, #728]	; (d0042480 <main+0x7e8>)
d00421a6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00421aa:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00421ae:	685b      	ldr	r3, [r3, #4]
d00421b0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00421b2:	4798      	blx	r3
d00421b4:	4bb3      	ldr	r3, [pc, #716]	; (d0042484 <main+0x7ec>)
d00421b6:	781b      	ldrb	r3, [r3, #0]
d00421b8:	2b00      	cmp	r3, #0
d00421ba:	f040 814c 	bne.w	d0042456 <main+0x7be>
d00421be:	4bb2      	ldr	r3, [pc, #712]	; (d0042488 <main+0x7f0>)
d00421c0:	4638      	mov	r0, r7
d00421c2:	49b2      	ldr	r1, [pc, #712]	; (d004248c <main+0x7f4>)
d00421c4:	681a      	ldr	r2, [r3, #0]
d00421c6:	f8cd 9008 	str.w	r9, [sp, #8]
d00421ca:	f000 fb77 	bl	d00428bc <siprintf>
d00421ce:	220a      	movs	r2, #10
d00421d0:	4638      	mov	r0, r7
d00421d2:	f8dd 900c 	ldr.w	r9, [sp, #12]
d00421d6:	4611      	mov	r1, r2
d00421d8:	f7ff fa92 	bl	d0041700 <drawText>
d00421dc:	4bac      	ldr	r3, [pc, #688]	; (d0042490 <main+0x7f8>)
d00421de:	49ad      	ldr	r1, [pc, #692]	; (d0042494 <main+0x7fc>)
d00421e0:	4638      	mov	r0, r7
d00421e2:	781a      	ldrb	r2, [r3, #0]
d00421e4:	f000 fb6a 	bl	d00428bc <siprintf>
d00421e8:	220a      	movs	r2, #10
d00421ea:	f44f 71aa 	mov.w	r1, #340	; 0x154
d00421ee:	4638      	mov	r0, r7
d00421f0:	f7ff fa86 	bl	d0041700 <drawText>
d00421f4:	4ba8      	ldr	r3, [pc, #672]	; (d0042498 <main+0x800>)
d00421f6:	49a9      	ldr	r1, [pc, #676]	; (d004249c <main+0x804>)
d00421f8:	4638      	mov	r0, r7
d00421fa:	781a      	ldrb	r2, [r3, #0]
d00421fc:	f000 fb5e 	bl	d00428bc <siprintf>
d0042200:	f44f 7293 	mov.w	r2, #294	; 0x126
d0042204:	210a      	movs	r1, #10
d0042206:	4638      	mov	r0, r7
d0042208:	f7ff fa7a 	bl	d0041700 <drawText>
d004220c:	f04f 0300 	mov.w	r3, #0
d0042210:	4628      	mov	r0, r5
d0042212:	4631      	mov	r1, r6
d0042214:	f888 3004 	strb.w	r3, [r8, #4]
d0042218:	f894 c00c 	ldrb.w	ip, [r4, #12]
d004221c:	7b62      	ldrb	r2, [r4, #13]
d004221e:	f894 e00e 	ldrb.w	lr, [r4, #14]
d0042222:	ea4c 2502 	orr.w	r5, ip, r2, lsl #8
d0042226:	7be3      	ldrb	r3, [r4, #15]
d0042228:	ea45 420e 	orr.w	r2, r5, lr, lsl #16
d004222c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0042230:	681b      	ldr	r3, [r3, #0]
d0042232:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d0042234:	4798      	blx	r3
d0042236:	7b20      	ldrb	r0, [r4, #12]
d0042238:	7b61      	ldrb	r1, [r4, #13]
d004223a:	7ba2      	ldrb	r2, [r4, #14]
d004223c:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0042240:	7be3      	ldrb	r3, [r4, #15]
d0042242:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0042246:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004224a:	681b      	ldr	r3, [r3, #0]
d004224c:	681b      	ldr	r3, [r3, #0]
d004224e:	4798      	blx	r3
d0042250:	7820      	ldrb	r0, [r4, #0]
d0042252:	7861      	ldrb	r1, [r4, #1]
d0042254:	78a2      	ldrb	r2, [r4, #2]
d0042256:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004225a:	78e3      	ldrb	r3, [r4, #3]
d004225c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0042260:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0042264:	691b      	ldr	r3, [r3, #16]
d0042266:	4798      	blx	r3
d0042268:	4605      	mov	r5, r0
d004226a:	f7fe fd3f 	bl	d0040cec <ShipUpdate>
d004226e:	f005 0301 	and.w	r3, r5, #1
d0042272:	ea89 0903 	eor.w	r9, r9, r3
d0042276:	9303      	str	r3, [sp, #12]
d0042278:	ea15 0f09 	tst.w	r5, r9
d004227c:	f040 8132 	bne.w	d00424e4 <main+0x84c>
d0042280:	f005 0902 	and.w	r9, r5, #2
d0042284:	9b02      	ldr	r3, [sp, #8]
d0042286:	454b      	cmp	r3, r9
d0042288:	d003      	beq.n	d0042292 <main+0x5fa>
d004228a:	f1b9 0f00 	cmp.w	r9, #0
d004228e:	f040 812c 	bne.w	d00424ea <main+0x852>
d0042292:	9b05      	ldr	r3, [sp, #20]
d0042294:	b1b3      	cbz	r3, d00422c4 <main+0x62c>
d0042296:	3b01      	subs	r3, #1
d0042298:	b2da      	uxtb	r2, r3
d004229a:	0798      	lsls	r0, r3, #30
d004229c:	9205      	str	r2, [sp, #20]
d004229e:	d111      	bne.n	d00422c4 <main+0x62c>
d00422a0:	f44f 71e0 	mov.w	r1, #448	; 0x1c0
d00422a4:	f06f 001f 	mvn.w	r0, #31
d00422a8:	f7ff fcde 	bl	d0041c68 <sbx_rng_range>
d00422ac:	f44f 7190 	mov.w	r1, #288	; 0x120
d00422b0:	4606      	mov	r6, r0
d00422b2:	f06f 001f 	mvn.w	r0, #31
d00422b6:	f7ff fcd7 	bl	d0041c68 <sbx_rng_range>
d00422ba:	4601      	mov	r1, r0
d00422bc:	b230      	sxth	r0, r6
d00422be:	b209      	sxth	r1, r1
d00422c0:	f7ff fb8c 	bl	d00419dc <spawnExplode>
d00422c4:	f89a 3000 	ldrb.w	r3, [sl]
d00422c8:	f003 02ff 	and.w	r2, r3, #255	; 0xff
d00422cc:	2b00      	cmp	r3, #0
d00422ce:	d130      	bne.n	d0042332 <main+0x69a>
d00422d0:	9b06      	ldr	r3, [sp, #24]
d00422d2:	3301      	adds	r3, #1
d00422d4:	b2db      	uxtb	r3, r3
d00422d6:	2b07      	cmp	r3, #7
d00422d8:	9306      	str	r3, [sp, #24]
d00422da:	f200 80fd 	bhi.w	d00424d8 <main+0x840>
d00422de:	4a70      	ldr	r2, [pc, #448]	; (d00424a0 <main+0x808>)
d00422e0:	eb02 1043 	add.w	r0, r2, r3, lsl #5
d00422e4:	7b23      	ldrb	r3, [r4, #12]
d00422e6:	7b61      	ldrb	r1, [r4, #13]
d00422e8:	7ba2      	ldrb	r2, [r4, #14]
d00422ea:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
d00422ee:	7be3      	ldrb	r3, [r4, #15]
d00422f0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00422f4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00422f8:	681b      	ldr	r3, [r3, #0]
d00422fa:	6a1b      	ldr	r3, [r3, #32]
d00422fc:	4798      	blx	r3
d00422fe:	f015 0204 	ands.w	r2, r5, #4
d0042302:	f040 80fa 	bne.w	d00424fa <main+0x862>
d0042306:	9b07      	ldr	r3, [sp, #28]
d0042308:	b173      	cbz	r3, d0042328 <main+0x690>
d004230a:	7c23      	ldrb	r3, [r4, #16]
d004230c:	2002      	movs	r0, #2
d004230e:	7c61      	ldrb	r1, [r4, #17]
d0042310:	9207      	str	r2, [sp, #28]
d0042312:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d0042316:	7ca2      	ldrb	r2, [r4, #18]
d0042318:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004231c:	7ce2      	ldrb	r2, [r4, #19]
d004231e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042322:	689b      	ldr	r3, [r3, #8]
d0042324:	689b      	ldr	r3, [r3, #8]
d0042326:	4798      	blx	r3
d0042328:	0729      	lsls	r1, r5, #28
d004232a:	f140 80d8 	bpl.w	d00424de <main+0x846>
d004232e:	f7fe fc57 	bl	d0040be0 <ShieldON>
d0042332:	4b5c      	ldr	r3, [pc, #368]	; (d00424a4 <main+0x80c>)
d0042334:	ed93 7a00 	vldr	s14, [r3]
d0042338:	4b5b      	ldr	r3, [pc, #364]	; (d00424a8 <main+0x810>)
d004233a:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d004233e:	edd3 7a00 	vldr	s15, [r3]
d0042342:	4b5a      	ldr	r3, [pc, #360]	; (d00424ac <main+0x814>)
d0042344:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0042348:	781b      	ldrb	r3, [r3, #0]
d004234a:	f888 3018 	strb.w	r3, [r8, #24]
d004234e:	ee17 3a10 	vmov	r3, s14
d0042352:	b21a      	sxth	r2, r3
d0042354:	ee17 3a90 	vmov	r3, s15
d0042358:	b21b      	sxth	r3, r3
d004235a:	f8a8 2014 	strh.w	r2, [r8, #20]
d004235e:	f8a8 3016 	strh.w	r3, [r8, #22]
d0042362:	9b04      	ldr	r3, [sp, #16]
d0042364:	2b63      	cmp	r3, #99	; 0x63
d0042366:	d810      	bhi.n	d004238a <main+0x6f2>
d0042368:	7b20      	ldrb	r0, [r4, #12]
d004236a:	3301      	adds	r3, #1
d004236c:	7b61      	ldrb	r1, [r4, #13]
d004236e:	7ba2      	ldrb	r2, [r4, #14]
d0042370:	b2dd      	uxtb	r5, r3
d0042372:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0042376:	7be3      	ldrb	r3, [r4, #15]
d0042378:	4628      	mov	r0, r5
d004237a:	9504      	str	r5, [sp, #16]
d004237c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0042380:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0042384:	681b      	ldr	r3, [r3, #0]
d0042386:	689b      	ldr	r3, [r3, #8]
d0042388:	4798      	blx	r3
d004238a:	4b49      	ldr	r3, [pc, #292]	; (d00424b0 <main+0x818>)
d004238c:	4a49      	ldr	r2, [pc, #292]	; (d00424b4 <main+0x81c>)
d004238e:	ed93 7a00 	vldr	s14, [r3]
d0042392:	ed92 6a00 	vldr	s12, [r2]
d0042396:	4a48      	ldr	r2, [pc, #288]	; (d00424b8 <main+0x820>)
d0042398:	ee37 7a06 	vadd.f32	s14, s14, s12
d004239c:	eddb 7a00 	vldr	s15, [fp]
d00423a0:	edd2 6a00 	vldr	s13, [r2]
d00423a4:	eeb4 7ac8 	vcmpe.f32	s14, s16
d00423a8:	ed83 7a00 	vstr	s14, [r3]
d00423ac:	ee77 7aa6 	vadd.f32	s15, s15, s13
d00423b0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00423b4:	edcb 7a00 	vstr	s15, [fp]
d00423b8:	f340 8084 	ble.w	d00424c4 <main+0x82c>
d00423bc:	25a0      	movs	r5, #160	; 0xa0
d00423be:	ed83 8a00 	vstr	s16, [r3]
d00423c2:	eef4 7ac8 	vcmpe.f32	s15, s16
d00423c6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00423ca:	dd4f      	ble.n	d004246c <main+0x7d4>
d00423cc:	26a0      	movs	r6, #160	; 0xa0
d00423ce:	ed8b 8a00 	vstr	s16, [fp]
d00423d2:	7b20      	ldrb	r0, [r4, #12]
d00423d4:	7b61      	ldrb	r1, [r4, #13]
d00423d6:	7ba2      	ldrb	r2, [r4, #14]
d00423d8:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00423dc:	7be3      	ldrb	r3, [r4, #15]
d00423de:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00423e2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00423e6:	681b      	ldr	r3, [r3, #0]
d00423e8:	68db      	ldr	r3, [r3, #12]
d00423ea:	4798      	blx	r3
d00423ec:	f89a 3000 	ldrb.w	r3, [sl]
d00423f0:	f1c3 0301 	rsb	r3, r3, #1
d00423f4:	b2db      	uxtb	r3, r3
d00423f6:	f88a 3000 	strb.w	r3, [sl]
d00423fa:	f89a 3000 	ldrb.w	r3, [sl]
d00423fe:	7b21      	ldrb	r1, [r4, #12]
d0042400:	7b60      	ldrb	r0, [r4, #13]
d0042402:	7ba2      	ldrb	r2, [r4, #14]
d0042404:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0042408:	b34b      	cbz	r3, d004245e <main+0x7c6>
d004240a:	492c      	ldr	r1, [pc, #176]	; (d00424bc <main+0x824>)
d004240c:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0042410:	7be3      	ldrb	r3, [r4, #15]
d0042412:	6809      	ldr	r1, [r1, #0]
d0042414:	482a      	ldr	r0, [pc, #168]	; (d00424c0 <main+0x828>)
d0042416:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004241a:	6800      	ldr	r0, [r0, #0]
d004241c:	681b      	ldr	r3, [r3, #0]
d004241e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0042420:	4798      	blx	r3
d0042422:	7b20      	ldrb	r0, [r4, #12]
d0042424:	7b61      	ldrb	r1, [r4, #13]
d0042426:	7ba2      	ldrb	r2, [r4, #14]
d0042428:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004242c:	7be3      	ldrb	r3, [r4, #15]
d004242e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0042432:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0042436:	685b      	ldr	r3, [r3, #4]
d0042438:	681b      	ldr	r3, [r3, #0]
d004243a:	4798      	blx	r3
d004243c:	f7fe ff0e 	bl	d004125c <proc_astroids>
d0042440:	f7fe fdd4 	bl	d0040fec <doBullets>
d0042444:	f7ff fa36 	bl	d00418b4 <doFlames>
d0042448:	f7ff fae2 	bl	d0041a10 <doExplodes>
d004244c:	4b0d      	ldr	r3, [pc, #52]	; (d0042484 <main+0x7ec>)
d004244e:	781b      	ldrb	r3, [r3, #0]
d0042450:	07da      	lsls	r2, r3, #31
d0042452:	f57f aea1 	bpl.w	d0042198 <main+0x500>
d0042456:	3b01      	subs	r3, #1
d0042458:	4a0a      	ldr	r2, [pc, #40]	; (d0042484 <main+0x7ec>)
d004245a:	7013      	strb	r3, [r2, #0]
d004245c:	e6af      	b.n	d00421be <main+0x526>
d004245e:	4918      	ldr	r1, [pc, #96]	; (d00424c0 <main+0x828>)
d0042460:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0042464:	7be3      	ldrb	r3, [r4, #15]
d0042466:	6809      	ldr	r1, [r1, #0]
d0042468:	4814      	ldr	r0, [pc, #80]	; (d00424bc <main+0x824>)
d004246a:	e7d4      	b.n	d0042416 <main+0x77e>
d004246c:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0042470:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0042474:	f140 8082 	bpl.w	d004257c <main+0x8e4>
d0042478:	2600      	movs	r6, #0
d004247a:	edcb 8a00 	vstr	s17, [fp]
d004247e:	e7a8      	b.n	d00423d2 <main+0x73a>
d0042480:	d0044a60 	.word	0xd0044a60
d0042484:	d0044680 	.word	0xd0044680
d0042488:	d004456c 	.word	0xd004456c
d004248c:	d00437e8 	.word	0xd00437e8
d0042490:	d004456b 	.word	0xd004456b
d0042494:	d00437f8 	.word	0xd00437f8
d0042498:	d0044570 	.word	0xd0044570
d004249c:	d0043804 	.word	0xd0043804
d00424a0:	d0045800 	.word	0xd0045800
d00424a4:	d0044a88 	.word	0xd0044a88
d00424a8:	d0044a8c 	.word	0xd0044a8c
d00424ac:	d0044a84 	.word	0xd0044a84
d00424b0:	d00457a0 	.word	0xd00457a0
d00424b4:	d0044a40 	.word	0xd0044a40
d00424b8:	d0044a80 	.word	0xd0044a80
d00424bc:	d00457e8 	.word	0xd00457e8
d00424c0:	d0045900 	.word	0xd0045900
d00424c4:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d00424c8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00424cc:	d551      	bpl.n	d0042572 <main+0x8da>
d00424ce:	4b2e      	ldr	r3, [pc, #184]	; (d0042588 <main+0x8f0>)
d00424d0:	2500      	movs	r5, #0
d00424d2:	edc3 8a00 	vstr	s17, [r3]
d00424d6:	e774      	b.n	d00423c2 <main+0x72a>
d00424d8:	482c      	ldr	r0, [pc, #176]	; (d004258c <main+0x8f4>)
d00424da:	9206      	str	r2, [sp, #24]
d00424dc:	e702      	b.n	d00422e4 <main+0x64c>
d00424de:	f7fe fbc7 	bl	d0040c70 <ShieldOFF>
d00424e2:	e726      	b.n	d0042332 <main+0x69a>
d00424e4:	f7fe fcca 	bl	d0040e7c <fireBullet>
d00424e8:	e6ca      	b.n	d0042280 <main+0x5e8>
d00424ea:	21c8      	movs	r1, #200	; 0xc8
d00424ec:	231f      	movs	r3, #31
d00424ee:	2200      	movs	r2, #0
d00424f0:	4608      	mov	r0, r1
d00424f2:	9305      	str	r3, [sp, #20]
d00424f4:	f7fe fe96 	bl	d0041224 <SpawnAstroid>
d00424f8:	e6e4      	b.n	d00422c4 <main+0x62c>
d00424fa:	f7ff f967 	bl	d00417cc <spawnFlame>
d00424fe:	9b07      	ldr	r3, [sp, #28]
d0042500:	b96b      	cbnz	r3, d004251e <main+0x886>
d0042502:	7c23      	ldrb	r3, [r4, #16]
d0042504:	2002      	movs	r0, #2
d0042506:	7c62      	ldrb	r2, [r4, #17]
d0042508:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004250c:	7ca2      	ldrb	r2, [r4, #18]
d004250e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0042512:	7ce2      	ldrb	r2, [r4, #19]
d0042514:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042518:	689b      	ldr	r3, [r3, #8]
d004251a:	685b      	ldr	r3, [r3, #4]
d004251c:	4798      	blx	r3
d004251e:	f8b8 3014 	ldrh.w	r3, [r8, #20]
d0042522:	f06f 067e 	mvn.w	r6, #126	; 0x7e
d0042526:	7c21      	ldrb	r1, [r4, #16]
d0042528:	3320      	adds	r3, #32
d004252a:	7c62      	ldrb	r2, [r4, #17]
d004252c:	7ca0      	ldrb	r0, [r4, #18]
d004252e:	b21b      	sxth	r3, r3
d0042530:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
d0042534:	3bf0      	subs	r3, #240	; 0xf0
d0042536:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d004253a:	4a15      	ldr	r2, [pc, #84]	; (d0042590 <main+0x8f8>)
d004253c:	ebc3 13c3 	rsb	r3, r3, r3, lsl #7
d0042540:	fb82 1203 	smull	r1, r2, r2, r3
d0042544:	17d9      	asrs	r1, r3, #31
d0042546:	4413      	add	r3, r2
d0042548:	7ce2      	ldrb	r2, [r4, #19]
d004254a:	ebc1 11e3 	rsb	r1, r1, r3, asr #7
d004254e:	ea40 6202 	orr.w	r2, r0, r2, lsl #24
d0042552:	2002      	movs	r0, #2
d0042554:	b209      	sxth	r1, r1
d0042556:	6893      	ldr	r3, [r2, #8]
d0042558:	297f      	cmp	r1, #127	; 0x7f
d004255a:	699a      	ldr	r2, [r3, #24]
d004255c:	f04f 0301 	mov.w	r3, #1
d0042560:	bfa8      	it	ge
d0042562:	217f      	movge	r1, #127	; 0x7f
d0042564:	9307      	str	r3, [sp, #28]
d0042566:	42b1      	cmp	r1, r6
d0042568:	bfb8      	it	lt
d004256a:	4631      	movlt	r1, r6
d004256c:	b249      	sxtb	r1, r1
d004256e:	4790      	blx	r2
d0042570:	e6da      	b.n	d0042328 <main+0x690>
d0042572:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0042576:	ee17 5a10 	vmov	r5, s14
d004257a:	e722      	b.n	d00423c2 <main+0x72a>
d004257c:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0042580:	ee17 6a90 	vmov	r6, s15
d0042584:	e725      	b.n	d00423d2 <main+0x73a>
d0042586:	bf00      	nop
d0042588:	d00457a0 	.word	0xd00457a0
d004258c:	d0045800 	.word	0xd0045800
d0042590:	88888889 	.word	0x88888889

d0042594 <__errno>:
d0042594:	4b01      	ldr	r3, [pc, #4]	; (d004259c <__errno+0x8>)
d0042596:	6818      	ldr	r0, [r3, #0]
d0042598:	4770      	bx	lr
d004259a:	bf00      	nop
d004259c:	d00438c0 	.word	0xd00438c0

d00425a0 <malloc>:
d00425a0:	4b02      	ldr	r3, [pc, #8]	; (d00425ac <malloc+0xc>)
d00425a2:	4601      	mov	r1, r0
d00425a4:	6818      	ldr	r0, [r3, #0]
d00425a6:	f000 b861 	b.w	d004266c <_malloc_r>
d00425aa:	bf00      	nop
d00425ac:	d00438c0 	.word	0xd00438c0

d00425b0 <memcmp>:
d00425b0:	b530      	push	{r4, r5, lr}
d00425b2:	3901      	subs	r1, #1
d00425b4:	2400      	movs	r4, #0
d00425b6:	42a2      	cmp	r2, r4
d00425b8:	d101      	bne.n	d00425be <memcmp+0xe>
d00425ba:	2000      	movs	r0, #0
d00425bc:	e005      	b.n	d00425ca <memcmp+0x1a>
d00425be:	5d03      	ldrb	r3, [r0, r4]
d00425c0:	3401      	adds	r4, #1
d00425c2:	5d0d      	ldrb	r5, [r1, r4]
d00425c4:	42ab      	cmp	r3, r5
d00425c6:	d0f6      	beq.n	d00425b6 <memcmp+0x6>
d00425c8:	1b58      	subs	r0, r3, r5
d00425ca:	bd30      	pop	{r4, r5, pc}

d00425cc <_free_r>:
d00425cc:	b537      	push	{r0, r1, r2, r4, r5, lr}
d00425ce:	2900      	cmp	r1, #0
d00425d0:	d048      	beq.n	d0042664 <_free_r+0x98>
d00425d2:	f851 3c04 	ldr.w	r3, [r1, #-4]
d00425d6:	9001      	str	r0, [sp, #4]
d00425d8:	2b00      	cmp	r3, #0
d00425da:	f1a1 0404 	sub.w	r4, r1, #4
d00425de:	bfb8      	it	lt
d00425e0:	18e4      	addlt	r4, r4, r3
d00425e2:	f000 fb69 	bl	d0042cb8 <__malloc_lock>
d00425e6:	4a20      	ldr	r2, [pc, #128]	; (d0042668 <_free_r+0x9c>)
d00425e8:	9801      	ldr	r0, [sp, #4]
d00425ea:	6813      	ldr	r3, [r2, #0]
d00425ec:	4615      	mov	r5, r2
d00425ee:	b933      	cbnz	r3, d00425fe <_free_r+0x32>
d00425f0:	6063      	str	r3, [r4, #4]
d00425f2:	6014      	str	r4, [r2, #0]
d00425f4:	b003      	add	sp, #12
d00425f6:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d00425fa:	f000 bb63 	b.w	d0042cc4 <__malloc_unlock>
d00425fe:	42a3      	cmp	r3, r4
d0042600:	d90b      	bls.n	d004261a <_free_r+0x4e>
d0042602:	6821      	ldr	r1, [r4, #0]
d0042604:	1862      	adds	r2, r4, r1
d0042606:	4293      	cmp	r3, r2
d0042608:	bf04      	itt	eq
d004260a:	681a      	ldreq	r2, [r3, #0]
d004260c:	685b      	ldreq	r3, [r3, #4]
d004260e:	6063      	str	r3, [r4, #4]
d0042610:	bf04      	itt	eq
d0042612:	1852      	addeq	r2, r2, r1
d0042614:	6022      	streq	r2, [r4, #0]
d0042616:	602c      	str	r4, [r5, #0]
d0042618:	e7ec      	b.n	d00425f4 <_free_r+0x28>
d004261a:	461a      	mov	r2, r3
d004261c:	685b      	ldr	r3, [r3, #4]
d004261e:	b10b      	cbz	r3, d0042624 <_free_r+0x58>
d0042620:	42a3      	cmp	r3, r4
d0042622:	d9fa      	bls.n	d004261a <_free_r+0x4e>
d0042624:	6811      	ldr	r1, [r2, #0]
d0042626:	1855      	adds	r5, r2, r1
d0042628:	42a5      	cmp	r5, r4
d004262a:	d10b      	bne.n	d0042644 <_free_r+0x78>
d004262c:	6824      	ldr	r4, [r4, #0]
d004262e:	4421      	add	r1, r4
d0042630:	1854      	adds	r4, r2, r1
d0042632:	42a3      	cmp	r3, r4
d0042634:	6011      	str	r1, [r2, #0]
d0042636:	d1dd      	bne.n	d00425f4 <_free_r+0x28>
d0042638:	681c      	ldr	r4, [r3, #0]
d004263a:	685b      	ldr	r3, [r3, #4]
d004263c:	6053      	str	r3, [r2, #4]
d004263e:	4421      	add	r1, r4
d0042640:	6011      	str	r1, [r2, #0]
d0042642:	e7d7      	b.n	d00425f4 <_free_r+0x28>
d0042644:	d902      	bls.n	d004264c <_free_r+0x80>
d0042646:	230c      	movs	r3, #12
d0042648:	6003      	str	r3, [r0, #0]
d004264a:	e7d3      	b.n	d00425f4 <_free_r+0x28>
d004264c:	6825      	ldr	r5, [r4, #0]
d004264e:	1961      	adds	r1, r4, r5
d0042650:	428b      	cmp	r3, r1
d0042652:	bf04      	itt	eq
d0042654:	6819      	ldreq	r1, [r3, #0]
d0042656:	685b      	ldreq	r3, [r3, #4]
d0042658:	6063      	str	r3, [r4, #4]
d004265a:	bf04      	itt	eq
d004265c:	1949      	addeq	r1, r1, r5
d004265e:	6021      	streq	r1, [r4, #0]
d0042660:	6054      	str	r4, [r2, #4]
d0042662:	e7c7      	b.n	d00425f4 <_free_r+0x28>
d0042664:	b003      	add	sp, #12
d0042666:	bd30      	pop	{r4, r5, pc}
d0042668:	d0044574 	.word	0xd0044574

d004266c <_malloc_r>:
d004266c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d004266e:	1ccd      	adds	r5, r1, #3
d0042670:	f025 0503 	bic.w	r5, r5, #3
d0042674:	3508      	adds	r5, #8
d0042676:	2d0c      	cmp	r5, #12
d0042678:	bf38      	it	cc
d004267a:	250c      	movcc	r5, #12
d004267c:	2d00      	cmp	r5, #0
d004267e:	4606      	mov	r6, r0
d0042680:	db01      	blt.n	d0042686 <_malloc_r+0x1a>
d0042682:	42a9      	cmp	r1, r5
d0042684:	d903      	bls.n	d004268e <_malloc_r+0x22>
d0042686:	230c      	movs	r3, #12
d0042688:	6033      	str	r3, [r6, #0]
d004268a:	2000      	movs	r0, #0
d004268c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d004268e:	f000 fb13 	bl	d0042cb8 <__malloc_lock>
d0042692:	4921      	ldr	r1, [pc, #132]	; (d0042718 <_malloc_r+0xac>)
d0042694:	680a      	ldr	r2, [r1, #0]
d0042696:	4614      	mov	r4, r2
d0042698:	b99c      	cbnz	r4, d00426c2 <_malloc_r+0x56>
d004269a:	4f20      	ldr	r7, [pc, #128]	; (d004271c <_malloc_r+0xb0>)
d004269c:	683b      	ldr	r3, [r7, #0]
d004269e:	b923      	cbnz	r3, d00426aa <_malloc_r+0x3e>
d00426a0:	4621      	mov	r1, r4
d00426a2:	4630      	mov	r0, r6
d00426a4:	f7fd fd78 	bl	d0040198 <_sbrk_r>
d00426a8:	6038      	str	r0, [r7, #0]
d00426aa:	4629      	mov	r1, r5
d00426ac:	4630      	mov	r0, r6
d00426ae:	f7fd fd73 	bl	d0040198 <_sbrk_r>
d00426b2:	1c43      	adds	r3, r0, #1
d00426b4:	d123      	bne.n	d00426fe <_malloc_r+0x92>
d00426b6:	230c      	movs	r3, #12
d00426b8:	6033      	str	r3, [r6, #0]
d00426ba:	4630      	mov	r0, r6
d00426bc:	f000 fb02 	bl	d0042cc4 <__malloc_unlock>
d00426c0:	e7e3      	b.n	d004268a <_malloc_r+0x1e>
d00426c2:	6823      	ldr	r3, [r4, #0]
d00426c4:	1b5b      	subs	r3, r3, r5
d00426c6:	d417      	bmi.n	d00426f8 <_malloc_r+0x8c>
d00426c8:	2b0b      	cmp	r3, #11
d00426ca:	d903      	bls.n	d00426d4 <_malloc_r+0x68>
d00426cc:	6023      	str	r3, [r4, #0]
d00426ce:	441c      	add	r4, r3
d00426d0:	6025      	str	r5, [r4, #0]
d00426d2:	e004      	b.n	d00426de <_malloc_r+0x72>
d00426d4:	6863      	ldr	r3, [r4, #4]
d00426d6:	42a2      	cmp	r2, r4
d00426d8:	bf0c      	ite	eq
d00426da:	600b      	streq	r3, [r1, #0]
d00426dc:	6053      	strne	r3, [r2, #4]
d00426de:	4630      	mov	r0, r6
d00426e0:	f000 faf0 	bl	d0042cc4 <__malloc_unlock>
d00426e4:	f104 000b 	add.w	r0, r4, #11
d00426e8:	1d23      	adds	r3, r4, #4
d00426ea:	f020 0007 	bic.w	r0, r0, #7
d00426ee:	1ac2      	subs	r2, r0, r3
d00426f0:	d0cc      	beq.n	d004268c <_malloc_r+0x20>
d00426f2:	1a1b      	subs	r3, r3, r0
d00426f4:	50a3      	str	r3, [r4, r2]
d00426f6:	e7c9      	b.n	d004268c <_malloc_r+0x20>
d00426f8:	4622      	mov	r2, r4
d00426fa:	6864      	ldr	r4, [r4, #4]
d00426fc:	e7cc      	b.n	d0042698 <_malloc_r+0x2c>
d00426fe:	1cc4      	adds	r4, r0, #3
d0042700:	f024 0403 	bic.w	r4, r4, #3
d0042704:	42a0      	cmp	r0, r4
d0042706:	d0e3      	beq.n	d00426d0 <_malloc_r+0x64>
d0042708:	1a21      	subs	r1, r4, r0
d004270a:	4630      	mov	r0, r6
d004270c:	f7fd fd44 	bl	d0040198 <_sbrk_r>
d0042710:	3001      	adds	r0, #1
d0042712:	d1dd      	bne.n	d00426d0 <_malloc_r+0x64>
d0042714:	e7cf      	b.n	d00426b6 <_malloc_r+0x4a>
d0042716:	bf00      	nop
d0042718:	d0044574 	.word	0xd0044574
d004271c:	d0044578 	.word	0xd0044578

d0042720 <setbuf>:
d0042720:	2900      	cmp	r1, #0
d0042722:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0042726:	bf0c      	ite	eq
d0042728:	2202      	moveq	r2, #2
d004272a:	2200      	movne	r2, #0
d004272c:	f000 b800 	b.w	d0042730 <setvbuf>

d0042730 <setvbuf>:
d0042730:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0042734:	461d      	mov	r5, r3
d0042736:	4b5d      	ldr	r3, [pc, #372]	; (d00428ac <setvbuf+0x17c>)
d0042738:	681f      	ldr	r7, [r3, #0]
d004273a:	4604      	mov	r4, r0
d004273c:	460e      	mov	r6, r1
d004273e:	4690      	mov	r8, r2
d0042740:	b127      	cbz	r7, d004274c <setvbuf+0x1c>
d0042742:	69bb      	ldr	r3, [r7, #24]
d0042744:	b913      	cbnz	r3, d004274c <setvbuf+0x1c>
d0042746:	4638      	mov	r0, r7
d0042748:	f000 f9f2 	bl	d0042b30 <__sinit>
d004274c:	4b58      	ldr	r3, [pc, #352]	; (d00428b0 <setvbuf+0x180>)
d004274e:	429c      	cmp	r4, r3
d0042750:	d167      	bne.n	d0042822 <setvbuf+0xf2>
d0042752:	687c      	ldr	r4, [r7, #4]
d0042754:	f1b8 0f02 	cmp.w	r8, #2
d0042758:	d006      	beq.n	d0042768 <setvbuf+0x38>
d004275a:	f1b8 0f01 	cmp.w	r8, #1
d004275e:	f200 809f 	bhi.w	d00428a0 <setvbuf+0x170>
d0042762:	2d00      	cmp	r5, #0
d0042764:	f2c0 809c 	blt.w	d00428a0 <setvbuf+0x170>
d0042768:	6e63      	ldr	r3, [r4, #100]	; 0x64
d004276a:	07db      	lsls	r3, r3, #31
d004276c:	d405      	bmi.n	d004277a <setvbuf+0x4a>
d004276e:	89a3      	ldrh	r3, [r4, #12]
d0042770:	0598      	lsls	r0, r3, #22
d0042772:	d402      	bmi.n	d004277a <setvbuf+0x4a>
d0042774:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0042776:	f000 fa79 	bl	d0042c6c <__retarget_lock_acquire_recursive>
d004277a:	4621      	mov	r1, r4
d004277c:	4638      	mov	r0, r7
d004277e:	f000 f943 	bl	d0042a08 <_fflush_r>
d0042782:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0042784:	b141      	cbz	r1, d0042798 <setvbuf+0x68>
d0042786:	f104 0344 	add.w	r3, r4, #68	; 0x44
d004278a:	4299      	cmp	r1, r3
d004278c:	d002      	beq.n	d0042794 <setvbuf+0x64>
d004278e:	4638      	mov	r0, r7
d0042790:	f7ff ff1c 	bl	d00425cc <_free_r>
d0042794:	2300      	movs	r3, #0
d0042796:	6363      	str	r3, [r4, #52]	; 0x34
d0042798:	2300      	movs	r3, #0
d004279a:	61a3      	str	r3, [r4, #24]
d004279c:	6063      	str	r3, [r4, #4]
d004279e:	89a3      	ldrh	r3, [r4, #12]
d00427a0:	0619      	lsls	r1, r3, #24
d00427a2:	d503      	bpl.n	d00427ac <setvbuf+0x7c>
d00427a4:	6921      	ldr	r1, [r4, #16]
d00427a6:	4638      	mov	r0, r7
d00427a8:	f7ff ff10 	bl	d00425cc <_free_r>
d00427ac:	89a3      	ldrh	r3, [r4, #12]
d00427ae:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d00427b2:	f023 0303 	bic.w	r3, r3, #3
d00427b6:	f1b8 0f02 	cmp.w	r8, #2
d00427ba:	81a3      	strh	r3, [r4, #12]
d00427bc:	d06c      	beq.n	d0042898 <setvbuf+0x168>
d00427be:	ab01      	add	r3, sp, #4
d00427c0:	466a      	mov	r2, sp
d00427c2:	4621      	mov	r1, r4
d00427c4:	4638      	mov	r0, r7
d00427c6:	f000 fa53 	bl	d0042c70 <__swhatbuf_r>
d00427ca:	89a3      	ldrh	r3, [r4, #12]
d00427cc:	4318      	orrs	r0, r3
d00427ce:	81a0      	strh	r0, [r4, #12]
d00427d0:	2d00      	cmp	r5, #0
d00427d2:	d130      	bne.n	d0042836 <setvbuf+0x106>
d00427d4:	9d00      	ldr	r5, [sp, #0]
d00427d6:	4628      	mov	r0, r5
d00427d8:	f7ff fee2 	bl	d00425a0 <malloc>
d00427dc:	4606      	mov	r6, r0
d00427de:	2800      	cmp	r0, #0
d00427e0:	d155      	bne.n	d004288e <setvbuf+0x15e>
d00427e2:	f8dd 9000 	ldr.w	r9, [sp]
d00427e6:	45a9      	cmp	r9, r5
d00427e8:	d14a      	bne.n	d0042880 <setvbuf+0x150>
d00427ea:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00427ee:	2200      	movs	r2, #0
d00427f0:	60a2      	str	r2, [r4, #8]
d00427f2:	f104 0247 	add.w	r2, r4, #71	; 0x47
d00427f6:	6022      	str	r2, [r4, #0]
d00427f8:	6122      	str	r2, [r4, #16]
d00427fa:	2201      	movs	r2, #1
d00427fc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0042800:	6162      	str	r2, [r4, #20]
d0042802:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0042804:	f043 0302 	orr.w	r3, r3, #2
d0042808:	07d2      	lsls	r2, r2, #31
d004280a:	81a3      	strh	r3, [r4, #12]
d004280c:	d405      	bmi.n	d004281a <setvbuf+0xea>
d004280e:	f413 7f00 	tst.w	r3, #512	; 0x200
d0042812:	d102      	bne.n	d004281a <setvbuf+0xea>
d0042814:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0042816:	f000 fa2a 	bl	d0042c6e <__retarget_lock_release_recursive>
d004281a:	4628      	mov	r0, r5
d004281c:	b003      	add	sp, #12
d004281e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0042822:	4b24      	ldr	r3, [pc, #144]	; (d00428b4 <setvbuf+0x184>)
d0042824:	429c      	cmp	r4, r3
d0042826:	d101      	bne.n	d004282c <setvbuf+0xfc>
d0042828:	68bc      	ldr	r4, [r7, #8]
d004282a:	e793      	b.n	d0042754 <setvbuf+0x24>
d004282c:	4b22      	ldr	r3, [pc, #136]	; (d00428b8 <setvbuf+0x188>)
d004282e:	429c      	cmp	r4, r3
d0042830:	bf08      	it	eq
d0042832:	68fc      	ldreq	r4, [r7, #12]
d0042834:	e78e      	b.n	d0042754 <setvbuf+0x24>
d0042836:	2e00      	cmp	r6, #0
d0042838:	d0cd      	beq.n	d00427d6 <setvbuf+0xa6>
d004283a:	69bb      	ldr	r3, [r7, #24]
d004283c:	b913      	cbnz	r3, d0042844 <setvbuf+0x114>
d004283e:	4638      	mov	r0, r7
d0042840:	f000 f976 	bl	d0042b30 <__sinit>
d0042844:	f1b8 0f01 	cmp.w	r8, #1
d0042848:	bf08      	it	eq
d004284a:	89a3      	ldrheq	r3, [r4, #12]
d004284c:	6026      	str	r6, [r4, #0]
d004284e:	bf04      	itt	eq
d0042850:	f043 0301 	orreq.w	r3, r3, #1
d0042854:	81a3      	strheq	r3, [r4, #12]
d0042856:	89a2      	ldrh	r2, [r4, #12]
d0042858:	f012 0308 	ands.w	r3, r2, #8
d004285c:	e9c4 6504 	strd	r6, r5, [r4, #16]
d0042860:	d01c      	beq.n	d004289c <setvbuf+0x16c>
d0042862:	07d3      	lsls	r3, r2, #31
d0042864:	bf41      	itttt	mi
d0042866:	2300      	movmi	r3, #0
d0042868:	426d      	negmi	r5, r5
d004286a:	60a3      	strmi	r3, [r4, #8]
d004286c:	61a5      	strmi	r5, [r4, #24]
d004286e:	bf58      	it	pl
d0042870:	60a5      	strpl	r5, [r4, #8]
d0042872:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0042874:	f015 0501 	ands.w	r5, r5, #1
d0042878:	d115      	bne.n	d00428a6 <setvbuf+0x176>
d004287a:	f412 7f00 	tst.w	r2, #512	; 0x200
d004287e:	e7c8      	b.n	d0042812 <setvbuf+0xe2>
d0042880:	4648      	mov	r0, r9
d0042882:	f7ff fe8d 	bl	d00425a0 <malloc>
d0042886:	4606      	mov	r6, r0
d0042888:	2800      	cmp	r0, #0
d004288a:	d0ae      	beq.n	d00427ea <setvbuf+0xba>
d004288c:	464d      	mov	r5, r9
d004288e:	89a3      	ldrh	r3, [r4, #12]
d0042890:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0042894:	81a3      	strh	r3, [r4, #12]
d0042896:	e7d0      	b.n	d004283a <setvbuf+0x10a>
d0042898:	2500      	movs	r5, #0
d004289a:	e7a8      	b.n	d00427ee <setvbuf+0xbe>
d004289c:	60a3      	str	r3, [r4, #8]
d004289e:	e7e8      	b.n	d0042872 <setvbuf+0x142>
d00428a0:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00428a4:	e7b9      	b.n	d004281a <setvbuf+0xea>
d00428a6:	2500      	movs	r5, #0
d00428a8:	e7b7      	b.n	d004281a <setvbuf+0xea>
d00428aa:	bf00      	nop
d00428ac:	d00438c0 	.word	0xd00438c0
d00428b0:	d0043830 	.word	0xd0043830
d00428b4:	d0043850 	.word	0xd0043850
d00428b8:	d0043810 	.word	0xd0043810

d00428bc <siprintf>:
d00428bc:	b40e      	push	{r1, r2, r3}
d00428be:	b500      	push	{lr}
d00428c0:	b09c      	sub	sp, #112	; 0x70
d00428c2:	ab1d      	add	r3, sp, #116	; 0x74
d00428c4:	9002      	str	r0, [sp, #8]
d00428c6:	9006      	str	r0, [sp, #24]
d00428c8:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d00428cc:	4809      	ldr	r0, [pc, #36]	; (d00428f4 <siprintf+0x38>)
d00428ce:	9107      	str	r1, [sp, #28]
d00428d0:	9104      	str	r1, [sp, #16]
d00428d2:	4909      	ldr	r1, [pc, #36]	; (d00428f8 <siprintf+0x3c>)
d00428d4:	f853 2b04 	ldr.w	r2, [r3], #4
d00428d8:	9105      	str	r1, [sp, #20]
d00428da:	6800      	ldr	r0, [r0, #0]
d00428dc:	9301      	str	r3, [sp, #4]
d00428de:	a902      	add	r1, sp, #8
d00428e0:	f000 fa52 	bl	d0042d88 <_svfiprintf_r>
d00428e4:	9b02      	ldr	r3, [sp, #8]
d00428e6:	2200      	movs	r2, #0
d00428e8:	701a      	strb	r2, [r3, #0]
d00428ea:	b01c      	add	sp, #112	; 0x70
d00428ec:	f85d eb04 	ldr.w	lr, [sp], #4
d00428f0:	b003      	add	sp, #12
d00428f2:	4770      	bx	lr
d00428f4:	d00438c0 	.word	0xd00438c0
d00428f8:	ffff0208 	.word	0xffff0208

d00428fc <__sflush_r>:
d00428fc:	898a      	ldrh	r2, [r1, #12]
d00428fe:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0042902:	4605      	mov	r5, r0
d0042904:	0710      	lsls	r0, r2, #28
d0042906:	460c      	mov	r4, r1
d0042908:	d458      	bmi.n	d00429bc <__sflush_r+0xc0>
d004290a:	684b      	ldr	r3, [r1, #4]
d004290c:	2b00      	cmp	r3, #0
d004290e:	dc05      	bgt.n	d004291c <__sflush_r+0x20>
d0042910:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0042912:	2b00      	cmp	r3, #0
d0042914:	dc02      	bgt.n	d004291c <__sflush_r+0x20>
d0042916:	2000      	movs	r0, #0
d0042918:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d004291c:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d004291e:	2e00      	cmp	r6, #0
d0042920:	d0f9      	beq.n	d0042916 <__sflush_r+0x1a>
d0042922:	2300      	movs	r3, #0
d0042924:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0042928:	682f      	ldr	r7, [r5, #0]
d004292a:	602b      	str	r3, [r5, #0]
d004292c:	d032      	beq.n	d0042994 <__sflush_r+0x98>
d004292e:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0042930:	89a3      	ldrh	r3, [r4, #12]
d0042932:	075a      	lsls	r2, r3, #29
d0042934:	d505      	bpl.n	d0042942 <__sflush_r+0x46>
d0042936:	6863      	ldr	r3, [r4, #4]
d0042938:	1ac0      	subs	r0, r0, r3
d004293a:	6b63      	ldr	r3, [r4, #52]	; 0x34
d004293c:	b10b      	cbz	r3, d0042942 <__sflush_r+0x46>
d004293e:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0042940:	1ac0      	subs	r0, r0, r3
d0042942:	2300      	movs	r3, #0
d0042944:	4602      	mov	r2, r0
d0042946:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0042948:	6a21      	ldr	r1, [r4, #32]
d004294a:	4628      	mov	r0, r5
d004294c:	47b0      	blx	r6
d004294e:	1c43      	adds	r3, r0, #1
d0042950:	89a3      	ldrh	r3, [r4, #12]
d0042952:	d106      	bne.n	d0042962 <__sflush_r+0x66>
d0042954:	6829      	ldr	r1, [r5, #0]
d0042956:	291d      	cmp	r1, #29
d0042958:	d82c      	bhi.n	d00429b4 <__sflush_r+0xb8>
d004295a:	4a2a      	ldr	r2, [pc, #168]	; (d0042a04 <__sflush_r+0x108>)
d004295c:	40ca      	lsrs	r2, r1
d004295e:	07d6      	lsls	r6, r2, #31
d0042960:	d528      	bpl.n	d00429b4 <__sflush_r+0xb8>
d0042962:	2200      	movs	r2, #0
d0042964:	6062      	str	r2, [r4, #4]
d0042966:	04d9      	lsls	r1, r3, #19
d0042968:	6922      	ldr	r2, [r4, #16]
d004296a:	6022      	str	r2, [r4, #0]
d004296c:	d504      	bpl.n	d0042978 <__sflush_r+0x7c>
d004296e:	1c42      	adds	r2, r0, #1
d0042970:	d101      	bne.n	d0042976 <__sflush_r+0x7a>
d0042972:	682b      	ldr	r3, [r5, #0]
d0042974:	b903      	cbnz	r3, d0042978 <__sflush_r+0x7c>
d0042976:	6560      	str	r0, [r4, #84]	; 0x54
d0042978:	6b61      	ldr	r1, [r4, #52]	; 0x34
d004297a:	602f      	str	r7, [r5, #0]
d004297c:	2900      	cmp	r1, #0
d004297e:	d0ca      	beq.n	d0042916 <__sflush_r+0x1a>
d0042980:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0042984:	4299      	cmp	r1, r3
d0042986:	d002      	beq.n	d004298e <__sflush_r+0x92>
d0042988:	4628      	mov	r0, r5
d004298a:	f7ff fe1f 	bl	d00425cc <_free_r>
d004298e:	2000      	movs	r0, #0
d0042990:	6360      	str	r0, [r4, #52]	; 0x34
d0042992:	e7c1      	b.n	d0042918 <__sflush_r+0x1c>
d0042994:	6a21      	ldr	r1, [r4, #32]
d0042996:	2301      	movs	r3, #1
d0042998:	4628      	mov	r0, r5
d004299a:	47b0      	blx	r6
d004299c:	1c41      	adds	r1, r0, #1
d004299e:	d1c7      	bne.n	d0042930 <__sflush_r+0x34>
d00429a0:	682b      	ldr	r3, [r5, #0]
d00429a2:	2b00      	cmp	r3, #0
d00429a4:	d0c4      	beq.n	d0042930 <__sflush_r+0x34>
d00429a6:	2b1d      	cmp	r3, #29
d00429a8:	d001      	beq.n	d00429ae <__sflush_r+0xb2>
d00429aa:	2b16      	cmp	r3, #22
d00429ac:	d101      	bne.n	d00429b2 <__sflush_r+0xb6>
d00429ae:	602f      	str	r7, [r5, #0]
d00429b0:	e7b1      	b.n	d0042916 <__sflush_r+0x1a>
d00429b2:	89a3      	ldrh	r3, [r4, #12]
d00429b4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00429b8:	81a3      	strh	r3, [r4, #12]
d00429ba:	e7ad      	b.n	d0042918 <__sflush_r+0x1c>
d00429bc:	690f      	ldr	r7, [r1, #16]
d00429be:	2f00      	cmp	r7, #0
d00429c0:	d0a9      	beq.n	d0042916 <__sflush_r+0x1a>
d00429c2:	0793      	lsls	r3, r2, #30
d00429c4:	680e      	ldr	r6, [r1, #0]
d00429c6:	bf08      	it	eq
d00429c8:	694b      	ldreq	r3, [r1, #20]
d00429ca:	600f      	str	r7, [r1, #0]
d00429cc:	bf18      	it	ne
d00429ce:	2300      	movne	r3, #0
d00429d0:	eba6 0807 	sub.w	r8, r6, r7
d00429d4:	608b      	str	r3, [r1, #8]
d00429d6:	f1b8 0f00 	cmp.w	r8, #0
d00429da:	dd9c      	ble.n	d0042916 <__sflush_r+0x1a>
d00429dc:	6a21      	ldr	r1, [r4, #32]
d00429de:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d00429e0:	4643      	mov	r3, r8
d00429e2:	463a      	mov	r2, r7
d00429e4:	4628      	mov	r0, r5
d00429e6:	47b0      	blx	r6
d00429e8:	2800      	cmp	r0, #0
d00429ea:	dc06      	bgt.n	d00429fa <__sflush_r+0xfe>
d00429ec:	89a3      	ldrh	r3, [r4, #12]
d00429ee:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00429f2:	81a3      	strh	r3, [r4, #12]
d00429f4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00429f8:	e78e      	b.n	d0042918 <__sflush_r+0x1c>
d00429fa:	4407      	add	r7, r0
d00429fc:	eba8 0800 	sub.w	r8, r8, r0
d0042a00:	e7e9      	b.n	d00429d6 <__sflush_r+0xda>
d0042a02:	bf00      	nop
d0042a04:	20400001 	.word	0x20400001

d0042a08 <_fflush_r>:
d0042a08:	b538      	push	{r3, r4, r5, lr}
d0042a0a:	690b      	ldr	r3, [r1, #16]
d0042a0c:	4605      	mov	r5, r0
d0042a0e:	460c      	mov	r4, r1
d0042a10:	b913      	cbnz	r3, d0042a18 <_fflush_r+0x10>
d0042a12:	2500      	movs	r5, #0
d0042a14:	4628      	mov	r0, r5
d0042a16:	bd38      	pop	{r3, r4, r5, pc}
d0042a18:	b118      	cbz	r0, d0042a22 <_fflush_r+0x1a>
d0042a1a:	6983      	ldr	r3, [r0, #24]
d0042a1c:	b90b      	cbnz	r3, d0042a22 <_fflush_r+0x1a>
d0042a1e:	f000 f887 	bl	d0042b30 <__sinit>
d0042a22:	4b14      	ldr	r3, [pc, #80]	; (d0042a74 <_fflush_r+0x6c>)
d0042a24:	429c      	cmp	r4, r3
d0042a26:	d11b      	bne.n	d0042a60 <_fflush_r+0x58>
d0042a28:	686c      	ldr	r4, [r5, #4]
d0042a2a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0042a2e:	2b00      	cmp	r3, #0
d0042a30:	d0ef      	beq.n	d0042a12 <_fflush_r+0xa>
d0042a32:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0042a34:	07d0      	lsls	r0, r2, #31
d0042a36:	d404      	bmi.n	d0042a42 <_fflush_r+0x3a>
d0042a38:	0599      	lsls	r1, r3, #22
d0042a3a:	d402      	bmi.n	d0042a42 <_fflush_r+0x3a>
d0042a3c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0042a3e:	f000 f915 	bl	d0042c6c <__retarget_lock_acquire_recursive>
d0042a42:	4628      	mov	r0, r5
d0042a44:	4621      	mov	r1, r4
d0042a46:	f7ff ff59 	bl	d00428fc <__sflush_r>
d0042a4a:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0042a4c:	07da      	lsls	r2, r3, #31
d0042a4e:	4605      	mov	r5, r0
d0042a50:	d4e0      	bmi.n	d0042a14 <_fflush_r+0xc>
d0042a52:	89a3      	ldrh	r3, [r4, #12]
d0042a54:	059b      	lsls	r3, r3, #22
d0042a56:	d4dd      	bmi.n	d0042a14 <_fflush_r+0xc>
d0042a58:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0042a5a:	f000 f908 	bl	d0042c6e <__retarget_lock_release_recursive>
d0042a5e:	e7d9      	b.n	d0042a14 <_fflush_r+0xc>
d0042a60:	4b05      	ldr	r3, [pc, #20]	; (d0042a78 <_fflush_r+0x70>)
d0042a62:	429c      	cmp	r4, r3
d0042a64:	d101      	bne.n	d0042a6a <_fflush_r+0x62>
d0042a66:	68ac      	ldr	r4, [r5, #8]
d0042a68:	e7df      	b.n	d0042a2a <_fflush_r+0x22>
d0042a6a:	4b04      	ldr	r3, [pc, #16]	; (d0042a7c <_fflush_r+0x74>)
d0042a6c:	429c      	cmp	r4, r3
d0042a6e:	bf08      	it	eq
d0042a70:	68ec      	ldreq	r4, [r5, #12]
d0042a72:	e7da      	b.n	d0042a2a <_fflush_r+0x22>
d0042a74:	d0043830 	.word	0xd0043830
d0042a78:	d0043850 	.word	0xd0043850
d0042a7c:	d0043810 	.word	0xd0043810

d0042a80 <std>:
d0042a80:	2300      	movs	r3, #0
d0042a82:	b510      	push	{r4, lr}
d0042a84:	4604      	mov	r4, r0
d0042a86:	e9c0 3300 	strd	r3, r3, [r0]
d0042a8a:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0042a8e:	6083      	str	r3, [r0, #8]
d0042a90:	8181      	strh	r1, [r0, #12]
d0042a92:	6643      	str	r3, [r0, #100]	; 0x64
d0042a94:	81c2      	strh	r2, [r0, #14]
d0042a96:	6183      	str	r3, [r0, #24]
d0042a98:	4619      	mov	r1, r3
d0042a9a:	2208      	movs	r2, #8
d0042a9c:	305c      	adds	r0, #92	; 0x5c
d0042a9e:	f7fd facd 	bl	d004003c <memset>
d0042aa2:	4b05      	ldr	r3, [pc, #20]	; (d0042ab8 <std+0x38>)
d0042aa4:	6263      	str	r3, [r4, #36]	; 0x24
d0042aa6:	4b05      	ldr	r3, [pc, #20]	; (d0042abc <std+0x3c>)
d0042aa8:	62a3      	str	r3, [r4, #40]	; 0x28
d0042aaa:	4b05      	ldr	r3, [pc, #20]	; (d0042ac0 <std+0x40>)
d0042aac:	62e3      	str	r3, [r4, #44]	; 0x2c
d0042aae:	4b05      	ldr	r3, [pc, #20]	; (d0042ac4 <std+0x44>)
d0042ab0:	6224      	str	r4, [r4, #32]
d0042ab2:	6323      	str	r3, [r4, #48]	; 0x30
d0042ab4:	bd10      	pop	{r4, pc}
d0042ab6:	bf00      	nop
d0042ab8:	d00432b1 	.word	0xd00432b1
d0042abc:	d00432d3 	.word	0xd00432d3
d0042ac0:	d004330b 	.word	0xd004330b
d0042ac4:	d004332f 	.word	0xd004332f

d0042ac8 <_cleanup_r>:
d0042ac8:	4901      	ldr	r1, [pc, #4]	; (d0042ad0 <_cleanup_r+0x8>)
d0042aca:	f000 b8af 	b.w	d0042c2c <_fwalk_reent>
d0042ace:	bf00      	nop
d0042ad0:	d0042a09 	.word	0xd0042a09

d0042ad4 <__sfmoreglue>:
d0042ad4:	b570      	push	{r4, r5, r6, lr}
d0042ad6:	1e4a      	subs	r2, r1, #1
d0042ad8:	2568      	movs	r5, #104	; 0x68
d0042ada:	4355      	muls	r5, r2
d0042adc:	460e      	mov	r6, r1
d0042ade:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0042ae2:	f7ff fdc3 	bl	d004266c <_malloc_r>
d0042ae6:	4604      	mov	r4, r0
d0042ae8:	b140      	cbz	r0, d0042afc <__sfmoreglue+0x28>
d0042aea:	2100      	movs	r1, #0
d0042aec:	e9c0 1600 	strd	r1, r6, [r0]
d0042af0:	300c      	adds	r0, #12
d0042af2:	60a0      	str	r0, [r4, #8]
d0042af4:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0042af8:	f7fd faa0 	bl	d004003c <memset>
d0042afc:	4620      	mov	r0, r4
d0042afe:	bd70      	pop	{r4, r5, r6, pc}

d0042b00 <__sfp_lock_acquire>:
d0042b00:	4801      	ldr	r0, [pc, #4]	; (d0042b08 <__sfp_lock_acquire+0x8>)
d0042b02:	f000 b8b3 	b.w	d0042c6c <__retarget_lock_acquire_recursive>
d0042b06:	bf00      	nop
d0042b08:	d004590c 	.word	0xd004590c

d0042b0c <__sfp_lock_release>:
d0042b0c:	4801      	ldr	r0, [pc, #4]	; (d0042b14 <__sfp_lock_release+0x8>)
d0042b0e:	f000 b8ae 	b.w	d0042c6e <__retarget_lock_release_recursive>
d0042b12:	bf00      	nop
d0042b14:	d004590c 	.word	0xd004590c

d0042b18 <__sinit_lock_acquire>:
d0042b18:	4801      	ldr	r0, [pc, #4]	; (d0042b20 <__sinit_lock_acquire+0x8>)
d0042b1a:	f000 b8a7 	b.w	d0042c6c <__retarget_lock_acquire_recursive>
d0042b1e:	bf00      	nop
d0042b20:	d0045907 	.word	0xd0045907

d0042b24 <__sinit_lock_release>:
d0042b24:	4801      	ldr	r0, [pc, #4]	; (d0042b2c <__sinit_lock_release+0x8>)
d0042b26:	f000 b8a2 	b.w	d0042c6e <__retarget_lock_release_recursive>
d0042b2a:	bf00      	nop
d0042b2c:	d0045907 	.word	0xd0045907

d0042b30 <__sinit>:
d0042b30:	b510      	push	{r4, lr}
d0042b32:	4604      	mov	r4, r0
d0042b34:	f7ff fff0 	bl	d0042b18 <__sinit_lock_acquire>
d0042b38:	69a3      	ldr	r3, [r4, #24]
d0042b3a:	b11b      	cbz	r3, d0042b44 <__sinit+0x14>
d0042b3c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0042b40:	f7ff bff0 	b.w	d0042b24 <__sinit_lock_release>
d0042b44:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0042b48:	6523      	str	r3, [r4, #80]	; 0x50
d0042b4a:	4b13      	ldr	r3, [pc, #76]	; (d0042b98 <__sinit+0x68>)
d0042b4c:	4a13      	ldr	r2, [pc, #76]	; (d0042b9c <__sinit+0x6c>)
d0042b4e:	681b      	ldr	r3, [r3, #0]
d0042b50:	62a2      	str	r2, [r4, #40]	; 0x28
d0042b52:	42a3      	cmp	r3, r4
d0042b54:	bf04      	itt	eq
d0042b56:	2301      	moveq	r3, #1
d0042b58:	61a3      	streq	r3, [r4, #24]
d0042b5a:	4620      	mov	r0, r4
d0042b5c:	f000 f820 	bl	d0042ba0 <__sfp>
d0042b60:	6060      	str	r0, [r4, #4]
d0042b62:	4620      	mov	r0, r4
d0042b64:	f000 f81c 	bl	d0042ba0 <__sfp>
d0042b68:	60a0      	str	r0, [r4, #8]
d0042b6a:	4620      	mov	r0, r4
d0042b6c:	f000 f818 	bl	d0042ba0 <__sfp>
d0042b70:	2200      	movs	r2, #0
d0042b72:	60e0      	str	r0, [r4, #12]
d0042b74:	2104      	movs	r1, #4
d0042b76:	6860      	ldr	r0, [r4, #4]
d0042b78:	f7ff ff82 	bl	d0042a80 <std>
d0042b7c:	68a0      	ldr	r0, [r4, #8]
d0042b7e:	2201      	movs	r2, #1
d0042b80:	2109      	movs	r1, #9
d0042b82:	f7ff ff7d 	bl	d0042a80 <std>
d0042b86:	68e0      	ldr	r0, [r4, #12]
d0042b88:	2202      	movs	r2, #2
d0042b8a:	2112      	movs	r1, #18
d0042b8c:	f7ff ff78 	bl	d0042a80 <std>
d0042b90:	2301      	movs	r3, #1
d0042b92:	61a3      	str	r3, [r4, #24]
d0042b94:	e7d2      	b.n	d0042b3c <__sinit+0xc>
d0042b96:	bf00      	nop
d0042b98:	d0043510 	.word	0xd0043510
d0042b9c:	d0042ac9 	.word	0xd0042ac9

d0042ba0 <__sfp>:
d0042ba0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0042ba2:	4607      	mov	r7, r0
d0042ba4:	f7ff ffac 	bl	d0042b00 <__sfp_lock_acquire>
d0042ba8:	4b1e      	ldr	r3, [pc, #120]	; (d0042c24 <__sfp+0x84>)
d0042baa:	681e      	ldr	r6, [r3, #0]
d0042bac:	69b3      	ldr	r3, [r6, #24]
d0042bae:	b913      	cbnz	r3, d0042bb6 <__sfp+0x16>
d0042bb0:	4630      	mov	r0, r6
d0042bb2:	f7ff ffbd 	bl	d0042b30 <__sinit>
d0042bb6:	3648      	adds	r6, #72	; 0x48
d0042bb8:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0042bbc:	3b01      	subs	r3, #1
d0042bbe:	d503      	bpl.n	d0042bc8 <__sfp+0x28>
d0042bc0:	6833      	ldr	r3, [r6, #0]
d0042bc2:	b30b      	cbz	r3, d0042c08 <__sfp+0x68>
d0042bc4:	6836      	ldr	r6, [r6, #0]
d0042bc6:	e7f7      	b.n	d0042bb8 <__sfp+0x18>
d0042bc8:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0042bcc:	b9d5      	cbnz	r5, d0042c04 <__sfp+0x64>
d0042bce:	4b16      	ldr	r3, [pc, #88]	; (d0042c28 <__sfp+0x88>)
d0042bd0:	60e3      	str	r3, [r4, #12]
d0042bd2:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0042bd6:	6665      	str	r5, [r4, #100]	; 0x64
d0042bd8:	f000 f847 	bl	d0042c6a <__retarget_lock_init_recursive>
d0042bdc:	f7ff ff96 	bl	d0042b0c <__sfp_lock_release>
d0042be0:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0042be4:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0042be8:	6025      	str	r5, [r4, #0]
d0042bea:	61a5      	str	r5, [r4, #24]
d0042bec:	2208      	movs	r2, #8
d0042bee:	4629      	mov	r1, r5
d0042bf0:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0042bf4:	f7fd fa22 	bl	d004003c <memset>
d0042bf8:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0042bfc:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0042c00:	4620      	mov	r0, r4
d0042c02:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0042c04:	3468      	adds	r4, #104	; 0x68
d0042c06:	e7d9      	b.n	d0042bbc <__sfp+0x1c>
d0042c08:	2104      	movs	r1, #4
d0042c0a:	4638      	mov	r0, r7
d0042c0c:	f7ff ff62 	bl	d0042ad4 <__sfmoreglue>
d0042c10:	4604      	mov	r4, r0
d0042c12:	6030      	str	r0, [r6, #0]
d0042c14:	2800      	cmp	r0, #0
d0042c16:	d1d5      	bne.n	d0042bc4 <__sfp+0x24>
d0042c18:	f7ff ff78 	bl	d0042b0c <__sfp_lock_release>
d0042c1c:	230c      	movs	r3, #12
d0042c1e:	603b      	str	r3, [r7, #0]
d0042c20:	e7ee      	b.n	d0042c00 <__sfp+0x60>
d0042c22:	bf00      	nop
d0042c24:	d0043510 	.word	0xd0043510
d0042c28:	ffff0001 	.word	0xffff0001

d0042c2c <_fwalk_reent>:
d0042c2c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0042c30:	4606      	mov	r6, r0
d0042c32:	4688      	mov	r8, r1
d0042c34:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0042c38:	2700      	movs	r7, #0
d0042c3a:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0042c3e:	f1b9 0901 	subs.w	r9, r9, #1
d0042c42:	d505      	bpl.n	d0042c50 <_fwalk_reent+0x24>
d0042c44:	6824      	ldr	r4, [r4, #0]
d0042c46:	2c00      	cmp	r4, #0
d0042c48:	d1f7      	bne.n	d0042c3a <_fwalk_reent+0xe>
d0042c4a:	4638      	mov	r0, r7
d0042c4c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0042c50:	89ab      	ldrh	r3, [r5, #12]
d0042c52:	2b01      	cmp	r3, #1
d0042c54:	d907      	bls.n	d0042c66 <_fwalk_reent+0x3a>
d0042c56:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0042c5a:	3301      	adds	r3, #1
d0042c5c:	d003      	beq.n	d0042c66 <_fwalk_reent+0x3a>
d0042c5e:	4629      	mov	r1, r5
d0042c60:	4630      	mov	r0, r6
d0042c62:	47c0      	blx	r8
d0042c64:	4307      	orrs	r7, r0
d0042c66:	3568      	adds	r5, #104	; 0x68
d0042c68:	e7e9      	b.n	d0042c3e <_fwalk_reent+0x12>

d0042c6a <__retarget_lock_init_recursive>:
d0042c6a:	4770      	bx	lr

d0042c6c <__retarget_lock_acquire_recursive>:
d0042c6c:	4770      	bx	lr

d0042c6e <__retarget_lock_release_recursive>:
d0042c6e:	4770      	bx	lr

d0042c70 <__swhatbuf_r>:
d0042c70:	b570      	push	{r4, r5, r6, lr}
d0042c72:	460e      	mov	r6, r1
d0042c74:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0042c78:	2900      	cmp	r1, #0
d0042c7a:	b096      	sub	sp, #88	; 0x58
d0042c7c:	4614      	mov	r4, r2
d0042c7e:	461d      	mov	r5, r3
d0042c80:	da07      	bge.n	d0042c92 <__swhatbuf_r+0x22>
d0042c82:	2300      	movs	r3, #0
d0042c84:	602b      	str	r3, [r5, #0]
d0042c86:	89b3      	ldrh	r3, [r6, #12]
d0042c88:	061a      	lsls	r2, r3, #24
d0042c8a:	d410      	bmi.n	d0042cae <__swhatbuf_r+0x3e>
d0042c8c:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0042c90:	e00e      	b.n	d0042cb0 <__swhatbuf_r+0x40>
d0042c92:	466a      	mov	r2, sp
d0042c94:	f000 fb60 	bl	d0043358 <_fstat_r>
d0042c98:	2800      	cmp	r0, #0
d0042c9a:	dbf2      	blt.n	d0042c82 <__swhatbuf_r+0x12>
d0042c9c:	9a01      	ldr	r2, [sp, #4]
d0042c9e:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0042ca2:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0042ca6:	425a      	negs	r2, r3
d0042ca8:	415a      	adcs	r2, r3
d0042caa:	602a      	str	r2, [r5, #0]
d0042cac:	e7ee      	b.n	d0042c8c <__swhatbuf_r+0x1c>
d0042cae:	2340      	movs	r3, #64	; 0x40
d0042cb0:	2000      	movs	r0, #0
d0042cb2:	6023      	str	r3, [r4, #0]
d0042cb4:	b016      	add	sp, #88	; 0x58
d0042cb6:	bd70      	pop	{r4, r5, r6, pc}

d0042cb8 <__malloc_lock>:
d0042cb8:	4801      	ldr	r0, [pc, #4]	; (d0042cc0 <__malloc_lock+0x8>)
d0042cba:	f7ff bfd7 	b.w	d0042c6c <__retarget_lock_acquire_recursive>
d0042cbe:	bf00      	nop
d0042cc0:	d0045908 	.word	0xd0045908

d0042cc4 <__malloc_unlock>:
d0042cc4:	4801      	ldr	r0, [pc, #4]	; (d0042ccc <__malloc_unlock+0x8>)
d0042cc6:	f7ff bfd2 	b.w	d0042c6e <__retarget_lock_release_recursive>
d0042cca:	bf00      	nop
d0042ccc:	d0045908 	.word	0xd0045908

d0042cd0 <__ssputs_r>:
d0042cd0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0042cd4:	688e      	ldr	r6, [r1, #8]
d0042cd6:	429e      	cmp	r6, r3
d0042cd8:	4682      	mov	sl, r0
d0042cda:	460c      	mov	r4, r1
d0042cdc:	4690      	mov	r8, r2
d0042cde:	461f      	mov	r7, r3
d0042ce0:	d838      	bhi.n	d0042d54 <__ssputs_r+0x84>
d0042ce2:	898a      	ldrh	r2, [r1, #12]
d0042ce4:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0042ce8:	d032      	beq.n	d0042d50 <__ssputs_r+0x80>
d0042cea:	6825      	ldr	r5, [r4, #0]
d0042cec:	6909      	ldr	r1, [r1, #16]
d0042cee:	eba5 0901 	sub.w	r9, r5, r1
d0042cf2:	6965      	ldr	r5, [r4, #20]
d0042cf4:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0042cf8:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d0042cfc:	3301      	adds	r3, #1
d0042cfe:	444b      	add	r3, r9
d0042d00:	106d      	asrs	r5, r5, #1
d0042d02:	429d      	cmp	r5, r3
d0042d04:	bf38      	it	cc
d0042d06:	461d      	movcc	r5, r3
d0042d08:	0553      	lsls	r3, r2, #21
d0042d0a:	d531      	bpl.n	d0042d70 <__ssputs_r+0xa0>
d0042d0c:	4629      	mov	r1, r5
d0042d0e:	f7ff fcad 	bl	d004266c <_malloc_r>
d0042d12:	4606      	mov	r6, r0
d0042d14:	b950      	cbnz	r0, d0042d2c <__ssputs_r+0x5c>
d0042d16:	230c      	movs	r3, #12
d0042d18:	f8ca 3000 	str.w	r3, [sl]
d0042d1c:	89a3      	ldrh	r3, [r4, #12]
d0042d1e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0042d22:	81a3      	strh	r3, [r4, #12]
d0042d24:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0042d28:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0042d2c:	6921      	ldr	r1, [r4, #16]
d0042d2e:	464a      	mov	r2, r9
d0042d30:	f000 fb86 	bl	d0043440 <memcpy>
d0042d34:	89a3      	ldrh	r3, [r4, #12]
d0042d36:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d0042d3a:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0042d3e:	81a3      	strh	r3, [r4, #12]
d0042d40:	6126      	str	r6, [r4, #16]
d0042d42:	6165      	str	r5, [r4, #20]
d0042d44:	444e      	add	r6, r9
d0042d46:	eba5 0509 	sub.w	r5, r5, r9
d0042d4a:	6026      	str	r6, [r4, #0]
d0042d4c:	60a5      	str	r5, [r4, #8]
d0042d4e:	463e      	mov	r6, r7
d0042d50:	42be      	cmp	r6, r7
d0042d52:	d900      	bls.n	d0042d56 <__ssputs_r+0x86>
d0042d54:	463e      	mov	r6, r7
d0042d56:	4632      	mov	r2, r6
d0042d58:	6820      	ldr	r0, [r4, #0]
d0042d5a:	4641      	mov	r1, r8
d0042d5c:	f000 fb7e 	bl	d004345c <memmove>
d0042d60:	68a3      	ldr	r3, [r4, #8]
d0042d62:	6822      	ldr	r2, [r4, #0]
d0042d64:	1b9b      	subs	r3, r3, r6
d0042d66:	4432      	add	r2, r6
d0042d68:	60a3      	str	r3, [r4, #8]
d0042d6a:	6022      	str	r2, [r4, #0]
d0042d6c:	2000      	movs	r0, #0
d0042d6e:	e7db      	b.n	d0042d28 <__ssputs_r+0x58>
d0042d70:	462a      	mov	r2, r5
d0042d72:	f000 fb8d 	bl	d0043490 <_realloc_r>
d0042d76:	4606      	mov	r6, r0
d0042d78:	2800      	cmp	r0, #0
d0042d7a:	d1e1      	bne.n	d0042d40 <__ssputs_r+0x70>
d0042d7c:	6921      	ldr	r1, [r4, #16]
d0042d7e:	4650      	mov	r0, sl
d0042d80:	f7ff fc24 	bl	d00425cc <_free_r>
d0042d84:	e7c7      	b.n	d0042d16 <__ssputs_r+0x46>
	...

d0042d88 <_svfiprintf_r>:
d0042d88:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0042d8c:	4698      	mov	r8, r3
d0042d8e:	898b      	ldrh	r3, [r1, #12]
d0042d90:	061b      	lsls	r3, r3, #24
d0042d92:	b09d      	sub	sp, #116	; 0x74
d0042d94:	4607      	mov	r7, r0
d0042d96:	460d      	mov	r5, r1
d0042d98:	4614      	mov	r4, r2
d0042d9a:	d50e      	bpl.n	d0042dba <_svfiprintf_r+0x32>
d0042d9c:	690b      	ldr	r3, [r1, #16]
d0042d9e:	b963      	cbnz	r3, d0042dba <_svfiprintf_r+0x32>
d0042da0:	2140      	movs	r1, #64	; 0x40
d0042da2:	f7ff fc63 	bl	d004266c <_malloc_r>
d0042da6:	6028      	str	r0, [r5, #0]
d0042da8:	6128      	str	r0, [r5, #16]
d0042daa:	b920      	cbnz	r0, d0042db6 <_svfiprintf_r+0x2e>
d0042dac:	230c      	movs	r3, #12
d0042dae:	603b      	str	r3, [r7, #0]
d0042db0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0042db4:	e0d1      	b.n	d0042f5a <_svfiprintf_r+0x1d2>
d0042db6:	2340      	movs	r3, #64	; 0x40
d0042db8:	616b      	str	r3, [r5, #20]
d0042dba:	2300      	movs	r3, #0
d0042dbc:	9309      	str	r3, [sp, #36]	; 0x24
d0042dbe:	2320      	movs	r3, #32
d0042dc0:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0042dc4:	f8cd 800c 	str.w	r8, [sp, #12]
d0042dc8:	2330      	movs	r3, #48	; 0x30
d0042dca:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d0042f74 <_svfiprintf_r+0x1ec>
d0042dce:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0042dd2:	f04f 0901 	mov.w	r9, #1
d0042dd6:	4623      	mov	r3, r4
d0042dd8:	469a      	mov	sl, r3
d0042dda:	f813 2b01 	ldrb.w	r2, [r3], #1
d0042dde:	b10a      	cbz	r2, d0042de4 <_svfiprintf_r+0x5c>
d0042de0:	2a25      	cmp	r2, #37	; 0x25
d0042de2:	d1f9      	bne.n	d0042dd8 <_svfiprintf_r+0x50>
d0042de4:	ebba 0b04 	subs.w	fp, sl, r4
d0042de8:	d00b      	beq.n	d0042e02 <_svfiprintf_r+0x7a>
d0042dea:	465b      	mov	r3, fp
d0042dec:	4622      	mov	r2, r4
d0042dee:	4629      	mov	r1, r5
d0042df0:	4638      	mov	r0, r7
d0042df2:	f7ff ff6d 	bl	d0042cd0 <__ssputs_r>
d0042df6:	3001      	adds	r0, #1
d0042df8:	f000 80aa 	beq.w	d0042f50 <_svfiprintf_r+0x1c8>
d0042dfc:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0042dfe:	445a      	add	r2, fp
d0042e00:	9209      	str	r2, [sp, #36]	; 0x24
d0042e02:	f89a 3000 	ldrb.w	r3, [sl]
d0042e06:	2b00      	cmp	r3, #0
d0042e08:	f000 80a2 	beq.w	d0042f50 <_svfiprintf_r+0x1c8>
d0042e0c:	2300      	movs	r3, #0
d0042e0e:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d0042e12:	e9cd 2305 	strd	r2, r3, [sp, #20]
d0042e16:	f10a 0a01 	add.w	sl, sl, #1
d0042e1a:	9304      	str	r3, [sp, #16]
d0042e1c:	9307      	str	r3, [sp, #28]
d0042e1e:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d0042e22:	931a      	str	r3, [sp, #104]	; 0x68
d0042e24:	4654      	mov	r4, sl
d0042e26:	2205      	movs	r2, #5
d0042e28:	f814 1b01 	ldrb.w	r1, [r4], #1
d0042e2c:	4851      	ldr	r0, [pc, #324]	; (d0042f74 <_svfiprintf_r+0x1ec>)
d0042e2e:	f000 fab7 	bl	d00433a0 <memchr>
d0042e32:	9a04      	ldr	r2, [sp, #16]
d0042e34:	b9d8      	cbnz	r0, d0042e6e <_svfiprintf_r+0xe6>
d0042e36:	06d0      	lsls	r0, r2, #27
d0042e38:	bf44      	itt	mi
d0042e3a:	2320      	movmi	r3, #32
d0042e3c:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0042e40:	0711      	lsls	r1, r2, #28
d0042e42:	bf44      	itt	mi
d0042e44:	232b      	movmi	r3, #43	; 0x2b
d0042e46:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0042e4a:	f89a 3000 	ldrb.w	r3, [sl]
d0042e4e:	2b2a      	cmp	r3, #42	; 0x2a
d0042e50:	d015      	beq.n	d0042e7e <_svfiprintf_r+0xf6>
d0042e52:	9a07      	ldr	r2, [sp, #28]
d0042e54:	4654      	mov	r4, sl
d0042e56:	2000      	movs	r0, #0
d0042e58:	f04f 0c0a 	mov.w	ip, #10
d0042e5c:	4621      	mov	r1, r4
d0042e5e:	f811 3b01 	ldrb.w	r3, [r1], #1
d0042e62:	3b30      	subs	r3, #48	; 0x30
d0042e64:	2b09      	cmp	r3, #9
d0042e66:	d94e      	bls.n	d0042f06 <_svfiprintf_r+0x17e>
d0042e68:	b1b0      	cbz	r0, d0042e98 <_svfiprintf_r+0x110>
d0042e6a:	9207      	str	r2, [sp, #28]
d0042e6c:	e014      	b.n	d0042e98 <_svfiprintf_r+0x110>
d0042e6e:	eba0 0308 	sub.w	r3, r0, r8
d0042e72:	fa09 f303 	lsl.w	r3, r9, r3
d0042e76:	4313      	orrs	r3, r2
d0042e78:	9304      	str	r3, [sp, #16]
d0042e7a:	46a2      	mov	sl, r4
d0042e7c:	e7d2      	b.n	d0042e24 <_svfiprintf_r+0x9c>
d0042e7e:	9b03      	ldr	r3, [sp, #12]
d0042e80:	1d19      	adds	r1, r3, #4
d0042e82:	681b      	ldr	r3, [r3, #0]
d0042e84:	9103      	str	r1, [sp, #12]
d0042e86:	2b00      	cmp	r3, #0
d0042e88:	bfbb      	ittet	lt
d0042e8a:	425b      	neglt	r3, r3
d0042e8c:	f042 0202 	orrlt.w	r2, r2, #2
d0042e90:	9307      	strge	r3, [sp, #28]
d0042e92:	9307      	strlt	r3, [sp, #28]
d0042e94:	bfb8      	it	lt
d0042e96:	9204      	strlt	r2, [sp, #16]
d0042e98:	7823      	ldrb	r3, [r4, #0]
d0042e9a:	2b2e      	cmp	r3, #46	; 0x2e
d0042e9c:	d10c      	bne.n	d0042eb8 <_svfiprintf_r+0x130>
d0042e9e:	7863      	ldrb	r3, [r4, #1]
d0042ea0:	2b2a      	cmp	r3, #42	; 0x2a
d0042ea2:	d135      	bne.n	d0042f10 <_svfiprintf_r+0x188>
d0042ea4:	9b03      	ldr	r3, [sp, #12]
d0042ea6:	1d1a      	adds	r2, r3, #4
d0042ea8:	681b      	ldr	r3, [r3, #0]
d0042eaa:	9203      	str	r2, [sp, #12]
d0042eac:	2b00      	cmp	r3, #0
d0042eae:	bfb8      	it	lt
d0042eb0:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0042eb4:	3402      	adds	r4, #2
d0042eb6:	9305      	str	r3, [sp, #20]
d0042eb8:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d0042f84 <_svfiprintf_r+0x1fc>
d0042ebc:	7821      	ldrb	r1, [r4, #0]
d0042ebe:	2203      	movs	r2, #3
d0042ec0:	4650      	mov	r0, sl
d0042ec2:	f000 fa6d 	bl	d00433a0 <memchr>
d0042ec6:	b140      	cbz	r0, d0042eda <_svfiprintf_r+0x152>
d0042ec8:	2340      	movs	r3, #64	; 0x40
d0042eca:	eba0 000a 	sub.w	r0, r0, sl
d0042ece:	fa03 f000 	lsl.w	r0, r3, r0
d0042ed2:	9b04      	ldr	r3, [sp, #16]
d0042ed4:	4303      	orrs	r3, r0
d0042ed6:	3401      	adds	r4, #1
d0042ed8:	9304      	str	r3, [sp, #16]
d0042eda:	f814 1b01 	ldrb.w	r1, [r4], #1
d0042ede:	4826      	ldr	r0, [pc, #152]	; (d0042f78 <_svfiprintf_r+0x1f0>)
d0042ee0:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0042ee4:	2206      	movs	r2, #6
d0042ee6:	f000 fa5b 	bl	d00433a0 <memchr>
d0042eea:	2800      	cmp	r0, #0
d0042eec:	d038      	beq.n	d0042f60 <_svfiprintf_r+0x1d8>
d0042eee:	4b23      	ldr	r3, [pc, #140]	; (d0042f7c <_svfiprintf_r+0x1f4>)
d0042ef0:	bb1b      	cbnz	r3, d0042f3a <_svfiprintf_r+0x1b2>
d0042ef2:	9b03      	ldr	r3, [sp, #12]
d0042ef4:	3307      	adds	r3, #7
d0042ef6:	f023 0307 	bic.w	r3, r3, #7
d0042efa:	3308      	adds	r3, #8
d0042efc:	9303      	str	r3, [sp, #12]
d0042efe:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0042f00:	4433      	add	r3, r6
d0042f02:	9309      	str	r3, [sp, #36]	; 0x24
d0042f04:	e767      	b.n	d0042dd6 <_svfiprintf_r+0x4e>
d0042f06:	fb0c 3202 	mla	r2, ip, r2, r3
d0042f0a:	460c      	mov	r4, r1
d0042f0c:	2001      	movs	r0, #1
d0042f0e:	e7a5      	b.n	d0042e5c <_svfiprintf_r+0xd4>
d0042f10:	2300      	movs	r3, #0
d0042f12:	3401      	adds	r4, #1
d0042f14:	9305      	str	r3, [sp, #20]
d0042f16:	4619      	mov	r1, r3
d0042f18:	f04f 0c0a 	mov.w	ip, #10
d0042f1c:	4620      	mov	r0, r4
d0042f1e:	f810 2b01 	ldrb.w	r2, [r0], #1
d0042f22:	3a30      	subs	r2, #48	; 0x30
d0042f24:	2a09      	cmp	r2, #9
d0042f26:	d903      	bls.n	d0042f30 <_svfiprintf_r+0x1a8>
d0042f28:	2b00      	cmp	r3, #0
d0042f2a:	d0c5      	beq.n	d0042eb8 <_svfiprintf_r+0x130>
d0042f2c:	9105      	str	r1, [sp, #20]
d0042f2e:	e7c3      	b.n	d0042eb8 <_svfiprintf_r+0x130>
d0042f30:	fb0c 2101 	mla	r1, ip, r1, r2
d0042f34:	4604      	mov	r4, r0
d0042f36:	2301      	movs	r3, #1
d0042f38:	e7f0      	b.n	d0042f1c <_svfiprintf_r+0x194>
d0042f3a:	ab03      	add	r3, sp, #12
d0042f3c:	9300      	str	r3, [sp, #0]
d0042f3e:	462a      	mov	r2, r5
d0042f40:	4b0f      	ldr	r3, [pc, #60]	; (d0042f80 <_svfiprintf_r+0x1f8>)
d0042f42:	a904      	add	r1, sp, #16
d0042f44:	4638      	mov	r0, r7
d0042f46:	f3af 8000 	nop.w
d0042f4a:	1c42      	adds	r2, r0, #1
d0042f4c:	4606      	mov	r6, r0
d0042f4e:	d1d6      	bne.n	d0042efe <_svfiprintf_r+0x176>
d0042f50:	89ab      	ldrh	r3, [r5, #12]
d0042f52:	065b      	lsls	r3, r3, #25
d0042f54:	f53f af2c 	bmi.w	d0042db0 <_svfiprintf_r+0x28>
d0042f58:	9809      	ldr	r0, [sp, #36]	; 0x24
d0042f5a:	b01d      	add	sp, #116	; 0x74
d0042f5c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0042f60:	ab03      	add	r3, sp, #12
d0042f62:	9300      	str	r3, [sp, #0]
d0042f64:	462a      	mov	r2, r5
d0042f66:	4b06      	ldr	r3, [pc, #24]	; (d0042f80 <_svfiprintf_r+0x1f8>)
d0042f68:	a904      	add	r1, sp, #16
d0042f6a:	4638      	mov	r0, r7
d0042f6c:	f000 f87a 	bl	d0043064 <_printf_i>
d0042f70:	e7eb      	b.n	d0042f4a <_svfiprintf_r+0x1c2>
d0042f72:	bf00      	nop
d0042f74:	d0043870 	.word	0xd0043870
d0042f78:	d004387a 	.word	0xd004387a
d0042f7c:	00000000 	.word	0x00000000
d0042f80:	d0042cd1 	.word	0xd0042cd1
d0042f84:	d0043876 	.word	0xd0043876

d0042f88 <_printf_common>:
d0042f88:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0042f8c:	4616      	mov	r6, r2
d0042f8e:	4699      	mov	r9, r3
d0042f90:	688a      	ldr	r2, [r1, #8]
d0042f92:	690b      	ldr	r3, [r1, #16]
d0042f94:	f8dd 8020 	ldr.w	r8, [sp, #32]
d0042f98:	4293      	cmp	r3, r2
d0042f9a:	bfb8      	it	lt
d0042f9c:	4613      	movlt	r3, r2
d0042f9e:	6033      	str	r3, [r6, #0]
d0042fa0:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d0042fa4:	4607      	mov	r7, r0
d0042fa6:	460c      	mov	r4, r1
d0042fa8:	b10a      	cbz	r2, d0042fae <_printf_common+0x26>
d0042faa:	3301      	adds	r3, #1
d0042fac:	6033      	str	r3, [r6, #0]
d0042fae:	6823      	ldr	r3, [r4, #0]
d0042fb0:	0699      	lsls	r1, r3, #26
d0042fb2:	bf42      	ittt	mi
d0042fb4:	6833      	ldrmi	r3, [r6, #0]
d0042fb6:	3302      	addmi	r3, #2
d0042fb8:	6033      	strmi	r3, [r6, #0]
d0042fba:	6825      	ldr	r5, [r4, #0]
d0042fbc:	f015 0506 	ands.w	r5, r5, #6
d0042fc0:	d106      	bne.n	d0042fd0 <_printf_common+0x48>
d0042fc2:	f104 0a19 	add.w	sl, r4, #25
d0042fc6:	68e3      	ldr	r3, [r4, #12]
d0042fc8:	6832      	ldr	r2, [r6, #0]
d0042fca:	1a9b      	subs	r3, r3, r2
d0042fcc:	42ab      	cmp	r3, r5
d0042fce:	dc26      	bgt.n	d004301e <_printf_common+0x96>
d0042fd0:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0042fd4:	1e13      	subs	r3, r2, #0
d0042fd6:	6822      	ldr	r2, [r4, #0]
d0042fd8:	bf18      	it	ne
d0042fda:	2301      	movne	r3, #1
d0042fdc:	0692      	lsls	r2, r2, #26
d0042fde:	d42b      	bmi.n	d0043038 <_printf_common+0xb0>
d0042fe0:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0042fe4:	4649      	mov	r1, r9
d0042fe6:	4638      	mov	r0, r7
d0042fe8:	47c0      	blx	r8
d0042fea:	3001      	adds	r0, #1
d0042fec:	d01e      	beq.n	d004302c <_printf_common+0xa4>
d0042fee:	6823      	ldr	r3, [r4, #0]
d0042ff0:	68e5      	ldr	r5, [r4, #12]
d0042ff2:	6832      	ldr	r2, [r6, #0]
d0042ff4:	f003 0306 	and.w	r3, r3, #6
d0042ff8:	2b04      	cmp	r3, #4
d0042ffa:	bf08      	it	eq
d0042ffc:	1aad      	subeq	r5, r5, r2
d0042ffe:	68a3      	ldr	r3, [r4, #8]
d0043000:	6922      	ldr	r2, [r4, #16]
d0043002:	bf0c      	ite	eq
d0043004:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d0043008:	2500      	movne	r5, #0
d004300a:	4293      	cmp	r3, r2
d004300c:	bfc4      	itt	gt
d004300e:	1a9b      	subgt	r3, r3, r2
d0043010:	18ed      	addgt	r5, r5, r3
d0043012:	2600      	movs	r6, #0
d0043014:	341a      	adds	r4, #26
d0043016:	42b5      	cmp	r5, r6
d0043018:	d11a      	bne.n	d0043050 <_printf_common+0xc8>
d004301a:	2000      	movs	r0, #0
d004301c:	e008      	b.n	d0043030 <_printf_common+0xa8>
d004301e:	2301      	movs	r3, #1
d0043020:	4652      	mov	r2, sl
d0043022:	4649      	mov	r1, r9
d0043024:	4638      	mov	r0, r7
d0043026:	47c0      	blx	r8
d0043028:	3001      	adds	r0, #1
d004302a:	d103      	bne.n	d0043034 <_printf_common+0xac>
d004302c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0043030:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0043034:	3501      	adds	r5, #1
d0043036:	e7c6      	b.n	d0042fc6 <_printf_common+0x3e>
d0043038:	18e1      	adds	r1, r4, r3
d004303a:	1c5a      	adds	r2, r3, #1
d004303c:	2030      	movs	r0, #48	; 0x30
d004303e:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d0043042:	4422      	add	r2, r4
d0043044:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d0043048:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d004304c:	3302      	adds	r3, #2
d004304e:	e7c7      	b.n	d0042fe0 <_printf_common+0x58>
d0043050:	2301      	movs	r3, #1
d0043052:	4622      	mov	r2, r4
d0043054:	4649      	mov	r1, r9
d0043056:	4638      	mov	r0, r7
d0043058:	47c0      	blx	r8
d004305a:	3001      	adds	r0, #1
d004305c:	d0e6      	beq.n	d004302c <_printf_common+0xa4>
d004305e:	3601      	adds	r6, #1
d0043060:	e7d9      	b.n	d0043016 <_printf_common+0x8e>
	...

d0043064 <_printf_i>:
d0043064:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0043068:	460c      	mov	r4, r1
d004306a:	4691      	mov	r9, r2
d004306c:	7e27      	ldrb	r7, [r4, #24]
d004306e:	990c      	ldr	r1, [sp, #48]	; 0x30
d0043070:	2f78      	cmp	r7, #120	; 0x78
d0043072:	4680      	mov	r8, r0
d0043074:	469a      	mov	sl, r3
d0043076:	f104 0243 	add.w	r2, r4, #67	; 0x43
d004307a:	d807      	bhi.n	d004308c <_printf_i+0x28>
d004307c:	2f62      	cmp	r7, #98	; 0x62
d004307e:	d80a      	bhi.n	d0043096 <_printf_i+0x32>
d0043080:	2f00      	cmp	r7, #0
d0043082:	f000 80d8 	beq.w	d0043236 <_printf_i+0x1d2>
d0043086:	2f58      	cmp	r7, #88	; 0x58
d0043088:	f000 80a3 	beq.w	d00431d2 <_printf_i+0x16e>
d004308c:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0043090:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d0043094:	e03a      	b.n	d004310c <_printf_i+0xa8>
d0043096:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d004309a:	2b15      	cmp	r3, #21
d004309c:	d8f6      	bhi.n	d004308c <_printf_i+0x28>
d004309e:	a001      	add	r0, pc, #4	; (adr r0, d00430a4 <_printf_i+0x40>)
d00430a0:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d00430a4:	d00430fd 	.word	0xd00430fd
d00430a8:	d0043111 	.word	0xd0043111
d00430ac:	d004308d 	.word	0xd004308d
d00430b0:	d004308d 	.word	0xd004308d
d00430b4:	d004308d 	.word	0xd004308d
d00430b8:	d004308d 	.word	0xd004308d
d00430bc:	d0043111 	.word	0xd0043111
d00430c0:	d004308d 	.word	0xd004308d
d00430c4:	d004308d 	.word	0xd004308d
d00430c8:	d004308d 	.word	0xd004308d
d00430cc:	d004308d 	.word	0xd004308d
d00430d0:	d004321d 	.word	0xd004321d
d00430d4:	d0043141 	.word	0xd0043141
d00430d8:	d00431ff 	.word	0xd00431ff
d00430dc:	d004308d 	.word	0xd004308d
d00430e0:	d004308d 	.word	0xd004308d
d00430e4:	d004323f 	.word	0xd004323f
d00430e8:	d004308d 	.word	0xd004308d
d00430ec:	d0043141 	.word	0xd0043141
d00430f0:	d004308d 	.word	0xd004308d
d00430f4:	d004308d 	.word	0xd004308d
d00430f8:	d0043207 	.word	0xd0043207
d00430fc:	680b      	ldr	r3, [r1, #0]
d00430fe:	1d1a      	adds	r2, r3, #4
d0043100:	681b      	ldr	r3, [r3, #0]
d0043102:	600a      	str	r2, [r1, #0]
d0043104:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0043108:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d004310c:	2301      	movs	r3, #1
d004310e:	e0a3      	b.n	d0043258 <_printf_i+0x1f4>
d0043110:	6825      	ldr	r5, [r4, #0]
d0043112:	6808      	ldr	r0, [r1, #0]
d0043114:	062e      	lsls	r6, r5, #24
d0043116:	f100 0304 	add.w	r3, r0, #4
d004311a:	d50a      	bpl.n	d0043132 <_printf_i+0xce>
d004311c:	6805      	ldr	r5, [r0, #0]
d004311e:	600b      	str	r3, [r1, #0]
d0043120:	2d00      	cmp	r5, #0
d0043122:	da03      	bge.n	d004312c <_printf_i+0xc8>
d0043124:	232d      	movs	r3, #45	; 0x2d
d0043126:	426d      	negs	r5, r5
d0043128:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d004312c:	485e      	ldr	r0, [pc, #376]	; (d00432a8 <_printf_i+0x244>)
d004312e:	230a      	movs	r3, #10
d0043130:	e019      	b.n	d0043166 <_printf_i+0x102>
d0043132:	f015 0f40 	tst.w	r5, #64	; 0x40
d0043136:	6805      	ldr	r5, [r0, #0]
d0043138:	600b      	str	r3, [r1, #0]
d004313a:	bf18      	it	ne
d004313c:	b22d      	sxthne	r5, r5
d004313e:	e7ef      	b.n	d0043120 <_printf_i+0xbc>
d0043140:	680b      	ldr	r3, [r1, #0]
d0043142:	6825      	ldr	r5, [r4, #0]
d0043144:	1d18      	adds	r0, r3, #4
d0043146:	6008      	str	r0, [r1, #0]
d0043148:	0628      	lsls	r0, r5, #24
d004314a:	d501      	bpl.n	d0043150 <_printf_i+0xec>
d004314c:	681d      	ldr	r5, [r3, #0]
d004314e:	e002      	b.n	d0043156 <_printf_i+0xf2>
d0043150:	0669      	lsls	r1, r5, #25
d0043152:	d5fb      	bpl.n	d004314c <_printf_i+0xe8>
d0043154:	881d      	ldrh	r5, [r3, #0]
d0043156:	4854      	ldr	r0, [pc, #336]	; (d00432a8 <_printf_i+0x244>)
d0043158:	2f6f      	cmp	r7, #111	; 0x6f
d004315a:	bf0c      	ite	eq
d004315c:	2308      	moveq	r3, #8
d004315e:	230a      	movne	r3, #10
d0043160:	2100      	movs	r1, #0
d0043162:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d0043166:	6866      	ldr	r6, [r4, #4]
d0043168:	60a6      	str	r6, [r4, #8]
d004316a:	2e00      	cmp	r6, #0
d004316c:	bfa2      	ittt	ge
d004316e:	6821      	ldrge	r1, [r4, #0]
d0043170:	f021 0104 	bicge.w	r1, r1, #4
d0043174:	6021      	strge	r1, [r4, #0]
d0043176:	b90d      	cbnz	r5, d004317c <_printf_i+0x118>
d0043178:	2e00      	cmp	r6, #0
d004317a:	d04d      	beq.n	d0043218 <_printf_i+0x1b4>
d004317c:	4616      	mov	r6, r2
d004317e:	fbb5 f1f3 	udiv	r1, r5, r3
d0043182:	fb03 5711 	mls	r7, r3, r1, r5
d0043186:	5dc7      	ldrb	r7, [r0, r7]
d0043188:	f806 7d01 	strb.w	r7, [r6, #-1]!
d004318c:	462f      	mov	r7, r5
d004318e:	42bb      	cmp	r3, r7
d0043190:	460d      	mov	r5, r1
d0043192:	d9f4      	bls.n	d004317e <_printf_i+0x11a>
d0043194:	2b08      	cmp	r3, #8
d0043196:	d10b      	bne.n	d00431b0 <_printf_i+0x14c>
d0043198:	6823      	ldr	r3, [r4, #0]
d004319a:	07df      	lsls	r7, r3, #31
d004319c:	d508      	bpl.n	d00431b0 <_printf_i+0x14c>
d004319e:	6923      	ldr	r3, [r4, #16]
d00431a0:	6861      	ldr	r1, [r4, #4]
d00431a2:	4299      	cmp	r1, r3
d00431a4:	bfde      	ittt	le
d00431a6:	2330      	movle	r3, #48	; 0x30
d00431a8:	f806 3c01 	strble.w	r3, [r6, #-1]
d00431ac:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d00431b0:	1b92      	subs	r2, r2, r6
d00431b2:	6122      	str	r2, [r4, #16]
d00431b4:	f8cd a000 	str.w	sl, [sp]
d00431b8:	464b      	mov	r3, r9
d00431ba:	aa03      	add	r2, sp, #12
d00431bc:	4621      	mov	r1, r4
d00431be:	4640      	mov	r0, r8
d00431c0:	f7ff fee2 	bl	d0042f88 <_printf_common>
d00431c4:	3001      	adds	r0, #1
d00431c6:	d14c      	bne.n	d0043262 <_printf_i+0x1fe>
d00431c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00431cc:	b004      	add	sp, #16
d00431ce:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00431d2:	4835      	ldr	r0, [pc, #212]	; (d00432a8 <_printf_i+0x244>)
d00431d4:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d00431d8:	6823      	ldr	r3, [r4, #0]
d00431da:	680e      	ldr	r6, [r1, #0]
d00431dc:	061f      	lsls	r7, r3, #24
d00431de:	f856 5b04 	ldr.w	r5, [r6], #4
d00431e2:	600e      	str	r6, [r1, #0]
d00431e4:	d514      	bpl.n	d0043210 <_printf_i+0x1ac>
d00431e6:	07d9      	lsls	r1, r3, #31
d00431e8:	bf44      	itt	mi
d00431ea:	f043 0320 	orrmi.w	r3, r3, #32
d00431ee:	6023      	strmi	r3, [r4, #0]
d00431f0:	b91d      	cbnz	r5, d00431fa <_printf_i+0x196>
d00431f2:	6823      	ldr	r3, [r4, #0]
d00431f4:	f023 0320 	bic.w	r3, r3, #32
d00431f8:	6023      	str	r3, [r4, #0]
d00431fa:	2310      	movs	r3, #16
d00431fc:	e7b0      	b.n	d0043160 <_printf_i+0xfc>
d00431fe:	6823      	ldr	r3, [r4, #0]
d0043200:	f043 0320 	orr.w	r3, r3, #32
d0043204:	6023      	str	r3, [r4, #0]
d0043206:	2378      	movs	r3, #120	; 0x78
d0043208:	4828      	ldr	r0, [pc, #160]	; (d00432ac <_printf_i+0x248>)
d004320a:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d004320e:	e7e3      	b.n	d00431d8 <_printf_i+0x174>
d0043210:	065e      	lsls	r6, r3, #25
d0043212:	bf48      	it	mi
d0043214:	b2ad      	uxthmi	r5, r5
d0043216:	e7e6      	b.n	d00431e6 <_printf_i+0x182>
d0043218:	4616      	mov	r6, r2
d004321a:	e7bb      	b.n	d0043194 <_printf_i+0x130>
d004321c:	680b      	ldr	r3, [r1, #0]
d004321e:	6826      	ldr	r6, [r4, #0]
d0043220:	6960      	ldr	r0, [r4, #20]
d0043222:	1d1d      	adds	r5, r3, #4
d0043224:	600d      	str	r5, [r1, #0]
d0043226:	0635      	lsls	r5, r6, #24
d0043228:	681b      	ldr	r3, [r3, #0]
d004322a:	d501      	bpl.n	d0043230 <_printf_i+0x1cc>
d004322c:	6018      	str	r0, [r3, #0]
d004322e:	e002      	b.n	d0043236 <_printf_i+0x1d2>
d0043230:	0671      	lsls	r1, r6, #25
d0043232:	d5fb      	bpl.n	d004322c <_printf_i+0x1c8>
d0043234:	8018      	strh	r0, [r3, #0]
d0043236:	2300      	movs	r3, #0
d0043238:	6123      	str	r3, [r4, #16]
d004323a:	4616      	mov	r6, r2
d004323c:	e7ba      	b.n	d00431b4 <_printf_i+0x150>
d004323e:	680b      	ldr	r3, [r1, #0]
d0043240:	1d1a      	adds	r2, r3, #4
d0043242:	600a      	str	r2, [r1, #0]
d0043244:	681e      	ldr	r6, [r3, #0]
d0043246:	6862      	ldr	r2, [r4, #4]
d0043248:	2100      	movs	r1, #0
d004324a:	4630      	mov	r0, r6
d004324c:	f000 f8a8 	bl	d00433a0 <memchr>
d0043250:	b108      	cbz	r0, d0043256 <_printf_i+0x1f2>
d0043252:	1b80      	subs	r0, r0, r6
d0043254:	6060      	str	r0, [r4, #4]
d0043256:	6863      	ldr	r3, [r4, #4]
d0043258:	6123      	str	r3, [r4, #16]
d004325a:	2300      	movs	r3, #0
d004325c:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0043260:	e7a8      	b.n	d00431b4 <_printf_i+0x150>
d0043262:	6923      	ldr	r3, [r4, #16]
d0043264:	4632      	mov	r2, r6
d0043266:	4649      	mov	r1, r9
d0043268:	4640      	mov	r0, r8
d004326a:	47d0      	blx	sl
d004326c:	3001      	adds	r0, #1
d004326e:	d0ab      	beq.n	d00431c8 <_printf_i+0x164>
d0043270:	6823      	ldr	r3, [r4, #0]
d0043272:	079b      	lsls	r3, r3, #30
d0043274:	d413      	bmi.n	d004329e <_printf_i+0x23a>
d0043276:	68e0      	ldr	r0, [r4, #12]
d0043278:	9b03      	ldr	r3, [sp, #12]
d004327a:	4298      	cmp	r0, r3
d004327c:	bfb8      	it	lt
d004327e:	4618      	movlt	r0, r3
d0043280:	e7a4      	b.n	d00431cc <_printf_i+0x168>
d0043282:	2301      	movs	r3, #1
d0043284:	4632      	mov	r2, r6
d0043286:	4649      	mov	r1, r9
d0043288:	4640      	mov	r0, r8
d004328a:	47d0      	blx	sl
d004328c:	3001      	adds	r0, #1
d004328e:	d09b      	beq.n	d00431c8 <_printf_i+0x164>
d0043290:	3501      	adds	r5, #1
d0043292:	68e3      	ldr	r3, [r4, #12]
d0043294:	9903      	ldr	r1, [sp, #12]
d0043296:	1a5b      	subs	r3, r3, r1
d0043298:	42ab      	cmp	r3, r5
d004329a:	dcf2      	bgt.n	d0043282 <_printf_i+0x21e>
d004329c:	e7eb      	b.n	d0043276 <_printf_i+0x212>
d004329e:	2500      	movs	r5, #0
d00432a0:	f104 0619 	add.w	r6, r4, #25
d00432a4:	e7f5      	b.n	d0043292 <_printf_i+0x22e>
d00432a6:	bf00      	nop
d00432a8:	d0043881 	.word	0xd0043881
d00432ac:	d0043892 	.word	0xd0043892

d00432b0 <__sread>:
d00432b0:	b510      	push	{r4, lr}
d00432b2:	460c      	mov	r4, r1
d00432b4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00432b8:	f000 f910 	bl	d00434dc <_read_r>
d00432bc:	2800      	cmp	r0, #0
d00432be:	bfab      	itete	ge
d00432c0:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d00432c2:	89a3      	ldrhlt	r3, [r4, #12]
d00432c4:	181b      	addge	r3, r3, r0
d00432c6:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d00432ca:	bfac      	ite	ge
d00432cc:	6563      	strge	r3, [r4, #84]	; 0x54
d00432ce:	81a3      	strhlt	r3, [r4, #12]
d00432d0:	bd10      	pop	{r4, pc}

d00432d2 <__swrite>:
d00432d2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00432d6:	461f      	mov	r7, r3
d00432d8:	898b      	ldrh	r3, [r1, #12]
d00432da:	05db      	lsls	r3, r3, #23
d00432dc:	4605      	mov	r5, r0
d00432de:	460c      	mov	r4, r1
d00432e0:	4616      	mov	r6, r2
d00432e2:	d505      	bpl.n	d00432f0 <__swrite+0x1e>
d00432e4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00432e8:	2302      	movs	r3, #2
d00432ea:	2200      	movs	r2, #0
d00432ec:	f000 f846 	bl	d004337c <_lseek_r>
d00432f0:	89a3      	ldrh	r3, [r4, #12]
d00432f2:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d00432f6:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d00432fa:	81a3      	strh	r3, [r4, #12]
d00432fc:	4632      	mov	r2, r6
d00432fe:	463b      	mov	r3, r7
d0043300:	4628      	mov	r0, r5
d0043302:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0043306:	f7fc bf01 	b.w	d004010c <_write_r>

d004330a <__sseek>:
d004330a:	b510      	push	{r4, lr}
d004330c:	460c      	mov	r4, r1
d004330e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0043312:	f000 f833 	bl	d004337c <_lseek_r>
d0043316:	1c43      	adds	r3, r0, #1
d0043318:	89a3      	ldrh	r3, [r4, #12]
d004331a:	bf15      	itete	ne
d004331c:	6560      	strne	r0, [r4, #84]	; 0x54
d004331e:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0043322:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d0043326:	81a3      	strheq	r3, [r4, #12]
d0043328:	bf18      	it	ne
d004332a:	81a3      	strhne	r3, [r4, #12]
d004332c:	bd10      	pop	{r4, pc}

d004332e <__sclose>:
d004332e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0043332:	f000 b801 	b.w	d0043338 <_close_r>
	...

d0043338 <_close_r>:
d0043338:	b538      	push	{r3, r4, r5, lr}
d004333a:	4d06      	ldr	r5, [pc, #24]	; (d0043354 <_close_r+0x1c>)
d004333c:	2300      	movs	r3, #0
d004333e:	4604      	mov	r4, r0
d0043340:	4608      	mov	r0, r1
d0043342:	602b      	str	r3, [r5, #0]
d0043344:	f7fc ff1c 	bl	d0040180 <_close>
d0043348:	1c43      	adds	r3, r0, #1
d004334a:	d102      	bne.n	d0043352 <_close_r+0x1a>
d004334c:	682b      	ldr	r3, [r5, #0]
d004334e:	b103      	cbz	r3, d0043352 <_close_r+0x1a>
d0043350:	6023      	str	r3, [r4, #0]
d0043352:	bd38      	pop	{r3, r4, r5, pc}
d0043354:	d0045910 	.word	0xd0045910

d0043358 <_fstat_r>:
d0043358:	b538      	push	{r3, r4, r5, lr}
d004335a:	4d07      	ldr	r5, [pc, #28]	; (d0043378 <_fstat_r+0x20>)
d004335c:	2300      	movs	r3, #0
d004335e:	4604      	mov	r4, r0
d0043360:	4608      	mov	r0, r1
d0043362:	4611      	mov	r1, r2
d0043364:	602b      	str	r3, [r5, #0]
d0043366:	f7fc ff0f 	bl	d0040188 <_fstat>
d004336a:	1c43      	adds	r3, r0, #1
d004336c:	d102      	bne.n	d0043374 <_fstat_r+0x1c>
d004336e:	682b      	ldr	r3, [r5, #0]
d0043370:	b103      	cbz	r3, d0043374 <_fstat_r+0x1c>
d0043372:	6023      	str	r3, [r4, #0]
d0043374:	bd38      	pop	{r3, r4, r5, pc}
d0043376:	bf00      	nop
d0043378:	d0045910 	.word	0xd0045910

d004337c <_lseek_r>:
d004337c:	b538      	push	{r3, r4, r5, lr}
d004337e:	4d07      	ldr	r5, [pc, #28]	; (d004339c <_lseek_r+0x20>)
d0043380:	4604      	mov	r4, r0
d0043382:	4608      	mov	r0, r1
d0043384:	4611      	mov	r1, r2
d0043386:	2200      	movs	r2, #0
d0043388:	602a      	str	r2, [r5, #0]
d004338a:	461a      	mov	r2, r3
d004338c:	f7fc ff02 	bl	d0040194 <_lseek>
d0043390:	1c43      	adds	r3, r0, #1
d0043392:	d102      	bne.n	d004339a <_lseek_r+0x1e>
d0043394:	682b      	ldr	r3, [r5, #0]
d0043396:	b103      	cbz	r3, d004339a <_lseek_r+0x1e>
d0043398:	6023      	str	r3, [r4, #0]
d004339a:	bd38      	pop	{r3, r4, r5, pc}
d004339c:	d0045910 	.word	0xd0045910

d00433a0 <memchr>:
d00433a0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d00433a4:	2a10      	cmp	r2, #16
d00433a6:	db2b      	blt.n	d0043400 <memchr+0x60>
d00433a8:	f010 0f07 	tst.w	r0, #7
d00433ac:	d008      	beq.n	d00433c0 <memchr+0x20>
d00433ae:	f810 3b01 	ldrb.w	r3, [r0], #1
d00433b2:	3a01      	subs	r2, #1
d00433b4:	428b      	cmp	r3, r1
d00433b6:	d02d      	beq.n	d0043414 <memchr+0x74>
d00433b8:	f010 0f07 	tst.w	r0, #7
d00433bc:	b342      	cbz	r2, d0043410 <memchr+0x70>
d00433be:	d1f6      	bne.n	d00433ae <memchr+0xe>
d00433c0:	b4f0      	push	{r4, r5, r6, r7}
d00433c2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d00433c6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d00433ca:	f022 0407 	bic.w	r4, r2, #7
d00433ce:	f07f 0700 	mvns.w	r7, #0
d00433d2:	2300      	movs	r3, #0
d00433d4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d00433d8:	3c08      	subs	r4, #8
d00433da:	ea85 0501 	eor.w	r5, r5, r1
d00433de:	ea86 0601 	eor.w	r6, r6, r1
d00433e2:	fa85 f547 	uadd8	r5, r5, r7
d00433e6:	faa3 f587 	sel	r5, r3, r7
d00433ea:	fa86 f647 	uadd8	r6, r6, r7
d00433ee:	faa5 f687 	sel	r6, r5, r7
d00433f2:	b98e      	cbnz	r6, d0043418 <memchr+0x78>
d00433f4:	d1ee      	bne.n	d00433d4 <memchr+0x34>
d00433f6:	bcf0      	pop	{r4, r5, r6, r7}
d00433f8:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d00433fc:	f002 0207 	and.w	r2, r2, #7
d0043400:	b132      	cbz	r2, d0043410 <memchr+0x70>
d0043402:	f810 3b01 	ldrb.w	r3, [r0], #1
d0043406:	3a01      	subs	r2, #1
d0043408:	ea83 0301 	eor.w	r3, r3, r1
d004340c:	b113      	cbz	r3, d0043414 <memchr+0x74>
d004340e:	d1f8      	bne.n	d0043402 <memchr+0x62>
d0043410:	2000      	movs	r0, #0
d0043412:	4770      	bx	lr
d0043414:	3801      	subs	r0, #1
d0043416:	4770      	bx	lr
d0043418:	2d00      	cmp	r5, #0
d004341a:	bf06      	itte	eq
d004341c:	4635      	moveq	r5, r6
d004341e:	3803      	subeq	r0, #3
d0043420:	3807      	subne	r0, #7
d0043422:	f015 0f01 	tst.w	r5, #1
d0043426:	d107      	bne.n	d0043438 <memchr+0x98>
d0043428:	3001      	adds	r0, #1
d004342a:	f415 7f80 	tst.w	r5, #256	; 0x100
d004342e:	bf02      	ittt	eq
d0043430:	3001      	addeq	r0, #1
d0043432:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0043436:	3001      	addeq	r0, #1
d0043438:	bcf0      	pop	{r4, r5, r6, r7}
d004343a:	3801      	subs	r0, #1
d004343c:	4770      	bx	lr
d004343e:	bf00      	nop

d0043440 <memcpy>:
d0043440:	440a      	add	r2, r1
d0043442:	4291      	cmp	r1, r2
d0043444:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0043448:	d100      	bne.n	d004344c <memcpy+0xc>
d004344a:	4770      	bx	lr
d004344c:	b510      	push	{r4, lr}
d004344e:	f811 4b01 	ldrb.w	r4, [r1], #1
d0043452:	f803 4f01 	strb.w	r4, [r3, #1]!
d0043456:	4291      	cmp	r1, r2
d0043458:	d1f9      	bne.n	d004344e <memcpy+0xe>
d004345a:	bd10      	pop	{r4, pc}

d004345c <memmove>:
d004345c:	4288      	cmp	r0, r1
d004345e:	b510      	push	{r4, lr}
d0043460:	eb01 0402 	add.w	r4, r1, r2
d0043464:	d902      	bls.n	d004346c <memmove+0x10>
d0043466:	4284      	cmp	r4, r0
d0043468:	4623      	mov	r3, r4
d004346a:	d807      	bhi.n	d004347c <memmove+0x20>
d004346c:	1e43      	subs	r3, r0, #1
d004346e:	42a1      	cmp	r1, r4
d0043470:	d008      	beq.n	d0043484 <memmove+0x28>
d0043472:	f811 2b01 	ldrb.w	r2, [r1], #1
d0043476:	f803 2f01 	strb.w	r2, [r3, #1]!
d004347a:	e7f8      	b.n	d004346e <memmove+0x12>
d004347c:	4402      	add	r2, r0
d004347e:	4601      	mov	r1, r0
d0043480:	428a      	cmp	r2, r1
d0043482:	d100      	bne.n	d0043486 <memmove+0x2a>
d0043484:	bd10      	pop	{r4, pc}
d0043486:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d004348a:	f802 4d01 	strb.w	r4, [r2, #-1]!
d004348e:	e7f7      	b.n	d0043480 <memmove+0x24>

d0043490 <_realloc_r>:
d0043490:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0043492:	4607      	mov	r7, r0
d0043494:	4614      	mov	r4, r2
d0043496:	460e      	mov	r6, r1
d0043498:	b921      	cbnz	r1, d00434a4 <_realloc_r+0x14>
d004349a:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d004349e:	4611      	mov	r1, r2
d00434a0:	f7ff b8e4 	b.w	d004266c <_malloc_r>
d00434a4:	b922      	cbnz	r2, d00434b0 <_realloc_r+0x20>
d00434a6:	f7ff f891 	bl	d00425cc <_free_r>
d00434aa:	4625      	mov	r5, r4
d00434ac:	4628      	mov	r0, r5
d00434ae:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00434b0:	f000 f826 	bl	d0043500 <_malloc_usable_size_r>
d00434b4:	42a0      	cmp	r0, r4
d00434b6:	d20f      	bcs.n	d00434d8 <_realloc_r+0x48>
d00434b8:	4621      	mov	r1, r4
d00434ba:	4638      	mov	r0, r7
d00434bc:	f7ff f8d6 	bl	d004266c <_malloc_r>
d00434c0:	4605      	mov	r5, r0
d00434c2:	2800      	cmp	r0, #0
d00434c4:	d0f2      	beq.n	d00434ac <_realloc_r+0x1c>
d00434c6:	4631      	mov	r1, r6
d00434c8:	4622      	mov	r2, r4
d00434ca:	f7ff ffb9 	bl	d0043440 <memcpy>
d00434ce:	4631      	mov	r1, r6
d00434d0:	4638      	mov	r0, r7
d00434d2:	f7ff f87b 	bl	d00425cc <_free_r>
d00434d6:	e7e9      	b.n	d00434ac <_realloc_r+0x1c>
d00434d8:	4635      	mov	r5, r6
d00434da:	e7e7      	b.n	d00434ac <_realloc_r+0x1c>

d00434dc <_read_r>:
d00434dc:	b538      	push	{r3, r4, r5, lr}
d00434de:	4d07      	ldr	r5, [pc, #28]	; (d00434fc <_read_r+0x20>)
d00434e0:	4604      	mov	r4, r0
d00434e2:	4608      	mov	r0, r1
d00434e4:	4611      	mov	r1, r2
d00434e6:	2200      	movs	r2, #0
d00434e8:	602a      	str	r2, [r5, #0]
d00434ea:	461a      	mov	r2, r3
d00434ec:	f7fc fe3e 	bl	d004016c <_read>
d00434f0:	1c43      	adds	r3, r0, #1
d00434f2:	d102      	bne.n	d00434fa <_read_r+0x1e>
d00434f4:	682b      	ldr	r3, [r5, #0]
d00434f6:	b103      	cbz	r3, d00434fa <_read_r+0x1e>
d00434f8:	6023      	str	r3, [r4, #0]
d00434fa:	bd38      	pop	{r3, r4, r5, pc}
d00434fc:	d0045910 	.word	0xd0045910

d0043500 <_malloc_usable_size_r>:
d0043500:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0043504:	1f18      	subs	r0, r3, #4
d0043506:	2b00      	cmp	r3, #0
d0043508:	bfbc      	itt	lt
d004350a:	580b      	ldrlt	r3, [r1, r0]
d004350c:	18c0      	addlt	r0, r0, r3
d004350e:	4770      	bx	lr

d0043510 <_global_impure_ptr>:
d0043510:	38c4 d004 4952 4646 0000 0000 4157 4556     .8..RIFF....WAVE
d0043520:	0000 0000                                   ....

d0043524 <dirTable>:
d0043524:	0000 0000 0000 3f80 c433 3e31 1bda 3f7c     .......?3.1>..|?
d0043534:	1aa0 3eaf 902e 3f70 0000 3f00 b22d 3f5d     ...>..p?...?-.]?
d0043544:	8e8a 3f24 1893 3f44 1893 3f44 8e8a 3f24     ..$?..D?..D?..$?
d0043554:	b22d 3f5d 0000 3f00 902e 3f70 1aa0 3eaf     -.]?...?..p?...>
d0043564:	1bda 3f7c c433 3e31 0000 3f80 0000 0000     ..|?3.1>...?....
d0043574:	1bda 3f7c c433 be31 902e 3f70 1aa0 beaf     ..|?3.1...p?....
d0043584:	b22d 3f5d 0000 bf00 1893 3f44 8e8a bf24     -.]?......D?..$.
d0043594:	8e8a 3f24 1893 bf44 0000 3f00 b22d bf5d     ..$?..D....?-.].
d00435a4:	1aa0 3eaf 902e bf70 c433 3e31 1bda bf7c     ...>..p.3.1>..|.
d00435b4:	0000 0000 0000 bf80 c433 be31 1bda bf7c     ........3.1...|.
d00435c4:	1aa0 beaf 902e bf70 0000 bf00 b22d bf5d     ......p.....-.].
d00435d4:	8e8a bf24 1893 bf44 1893 bf44 8e8a bf24     ..$...D...D...$.
d00435e4:	b22d bf5d 0000 bf00 902e bf70 1aa0 beaf     -.].......p.....
d00435f4:	1bda bf7c c433 be31 0000 bf80 0000 0000     ..|.3.1.........
d0043604:	1bda bf7c c433 3e31 902e bf70 1aa0 3eaf     ..|.3.1>..p....>
d0043614:	b22d bf5d 0000 3f00 1893 bf44 8e8a 3f24     -.]....?..D...$?
d0043624:	8e8a bf24 1893 3f44 0000 bf00 b22d 3f5d     ..$...D?....-.]?
d0043634:	1aa0 beaf 902e 3f70 c433 be31 1bda 3f7c     ......p?3.1...|?
d0043644:	6572 2f73 7865 7274 6c61 6669 2e65 6177     res/extralife.wa
d0043654:	0076 0000 6572 2f73 6966 6572 2e6d 6177     v...res/firem.wa
d0043664:	0076 0000 6572 2f73 6874 7572 7473 2e32     v...res/thrust2.
d0043674:	6177 0076 6572 2f73 6873 6569 646c 3273     wav.res/shields2
d0043684:	772e 7661 0000 0000 6572 2f73 7865 6c70     .wav....res/expl
d0043694:	646f 5f65 6962 2e67 6177 0076 6572 2f73     ode_big.wav.res/
d00436a4:	7865 6c70 646f 5f65 6d73 6c61 2e6c 6177     explode_small.wa
d00436b4:	0076 0000 6572 2f73 6f63 6c6c 6469 2e65     v...res/collide.
d00436c4:	6177 0076 6572 2f73 6473 656c 3176 6d2e     wav.res/sdlev1.m
d00436d4:	646f 0000 6572 2f73 7361 7274 696f 5f64     od..res/astroid_
d00436e4:	616c 6772 5f65 2e31 7070 0062 6572 2f73     large_1.ppb.res/
d00436f4:	7361 7274 696f 5f64 656d 6964 6d75 315f     astroid_medium_1
d0043704:	702e 6270 0000 0000 6572 2f73 7361 7274     .ppb....res/astr
d0043714:	696f 5f64 656d 6964 6d75 325f 702e 6270     oid_medium_2.ppb
d0043724:	0000 0000 6572 2f73 7361 7274 696f 5f64     ....res/astroid_
d0043734:	6d73 6c61 5f6c 2e32 7070 0062 6572 2f73     small_2.ppb.res/
d0043744:	6873 7069 7372 702e 6270 0000 6572 2f73     shiprs.ppb..res/
d0043754:	7562 6c6c 7465 5f73 7974 6570 2e31 7070     bullets_type1.pp
d0043764:	0062 0000 6572 2f73 6c66 6d61 7365 702e     b...res/flames.p
d0043774:	6270 0000 6572 2f73 6873 6569 646c 702e     pb..res/shield.p
d0043784:	6270 0000 6572 2f73 7865 6c70 646f 2e65     pb..res/explode.
d0043794:	7070 0062 6572 2f73 6f66 746e 3631 3631     ppb.res/font1616
d00437a4:	702e 6270 0000 0000 4c0a 616f 6964 676e     .ppb.....Loading
d00437b4:	5420 6e75 656e 206c 6164 6174 2e2e 0a2e      Tunnel data....
d00437c4:	0000 0000 6572 2f73 2574 2e75 7070 0a62     ....res/t%u.ppb.
d00437d4:	0000 0000 6572 2f73 6162 6b63 702e 6270     ....res/back.ppb
d00437e4:	0000 0000 4353 524f 3a45 2520 3630 756c     ....SCORE: %06lu
d00437f4:	0000 0000 494c 4556 3a53 2520 756c 0000     ....LIVES: %lu..
d0043804:	4157 4556 3a53 2520 756c 0000               WAVES: %lu..

d0043810 <__sf_fake_stderr>:
	...

d0043830 <__sf_fake_stdin>:
	...

d0043850 <__sf_fake_stdout>:
	...
d0043870:	2d23 2b30 0020 6c68 004c 6665 4567 4746     #-0+ .hlL.efgEFG
d0043880:	3000 3231 3433 3635 3837 4139 4342 4544     .0123456789ABCDE
d0043890:	0046 3130 3332 3534 3736 3938 6261 6463     F.0123456789abcd
d00438a0:	6665                                         ef.

Disassembly of section .init:

d00438a4 <_init>:
d00438a4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00438a6:	bf00      	nop

Disassembly of section .fini:

d00438a8 <_fini>:
d00438a8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00438aa:	bf00      	nop
