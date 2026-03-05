
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
d004001e:	f001 fd1b 	bl	d0041a58 <setbuf>
d0040022:	6833      	ldr	r3, [r6, #0]
d0040024:	2100      	movs	r1, #0
d0040026:	68d8      	ldr	r0, [r3, #12]
d0040028:	f001 fd16 	bl	d0041a58 <setbuf>
d004002c:	4629      	mov	r1, r5
d004002e:	4620      	mov	r0, r4
d0040030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0040034:	f001 b93e 	b.w	d00412b4 <main>
d0040038:	d0042b60 	.word	0xd0042b60

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
d0040100:	d0046290 	.word	0xd0046290
d0040104:	d0600000 	.word	0xd0600000
d0040108:	d004341c 	.word	0xd004341c

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
d0040154:	f001 fbba 	bl	d00418cc <__errno>
d0040158:	2209      	movs	r2, #9
d004015a:	4603      	mov	r3, r0
d004015c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0040160:	601a      	str	r2, [r3, #0]
d0040162:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0040164:	d0043404 	.word	0xd0043404
d0040168:	2001f000 	.word	0x2001f000

d004016c <_read>:
d004016c:	b508      	push	{r3, lr}
d004016e:	f001 fbad 	bl	d00418cc <__errno>
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
d00401ba:	f001 fb87 	bl	d00418cc <__errno>
d00401be:	220c      	movs	r2, #12
d00401c0:	4603      	mov	r3, r0
d00401c2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00401c6:	601a      	str	r2, [r3, #0]
d00401c8:	bd10      	pop	{r4, pc}
d00401ca:	bf00      	nop
d00401cc:	d0043400 	.word	0xd0043400
d00401d0:	d0046290 	.word	0xd0046290
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
d0040228:	f001 fb5e 	bl	d00418e8 <memcmp>
d004022c:	b950      	cbnz	r0, d0040244 <LoadSFX+0x6c>
d004022e:	2204      	movs	r2, #4
d0040230:	492c      	ldr	r1, [pc, #176]	; (d00402e4 <LoadSFX+0x10c>)
d0040232:	a805      	add	r0, sp, #20
d0040234:	f001 fb58 	bl	d00418e8 <memcmp>
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
d004026c:	f001 fb34 	bl	d00418d8 <malloc>
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
d00402e0:	d0042854 	.word	0xd0042854
d00402e4:	d004285c 	.word	0xd004285c

d00402e8 <loadSounds>:
d00402e8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00402ec:	4fa1      	ldr	r7, [pc, #644]	; (d0040574 <loadSounds+0x28c>)
d00402ee:	4ca2      	ldr	r4, [pc, #648]	; (d0040578 <loadSounds+0x290>)
d00402f0:	4639      	mov	r1, r7
d00402f2:	48a2      	ldr	r0, [pc, #648]	; (d004057c <loadSounds+0x294>)
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
d0040314:	4e9a      	ldr	r6, [pc, #616]	; (d0040580 <loadSounds+0x298>)
d0040316:	4f9b      	ldr	r7, [pc, #620]	; (d0040584 <loadSounds+0x29c>)
d0040318:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d004031c:	68ad      	ldr	r5, [r5, #8]
d004031e:	68ed      	ldr	r5, [r5, #12]
d0040320:	47a8      	blx	r5
d0040322:	7c23      	ldrb	r3, [r4, #16]
d0040324:	7c62      	ldrb	r2, [r4, #17]
d0040326:	f64a 4144 	movw	r1, #44100	; 0xac44
d004032a:	7ca5      	ldrb	r5, [r4, #18]
d004032c:	2000      	movs	r0, #0
d004032e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040332:	7ce2      	ldrb	r2, [r4, #19]
d0040334:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040338:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004033c:	689b      	ldr	r3, [r3, #8]
d004033e:	691b      	ldr	r3, [r3, #16]
d0040340:	4798      	blx	r3
d0040342:	7c23      	ldrb	r3, [r4, #16]
d0040344:	7c62      	ldrb	r2, [r4, #17]
d0040346:	2000      	movs	r0, #0
d0040348:	7ca1      	ldrb	r1, [r4, #18]
d004034a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004034e:	7ce2      	ldrb	r2, [r4, #19]
d0040350:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040354:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040358:	689b      	ldr	r3, [r3, #8]
d004035a:	685b      	ldr	r3, [r3, #4]
d004035c:	4798      	blx	r3
d004035e:	7c23      	ldrb	r3, [r4, #16]
d0040360:	7c62      	ldrb	r2, [r4, #17]
d0040362:	21f0      	movs	r1, #240	; 0xf0
d0040364:	7ca5      	ldrb	r5, [r4, #18]
d0040366:	2000      	movs	r0, #0
d0040368:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004036c:	7ce2      	ldrb	r2, [r4, #19]
d004036e:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040372:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040376:	689b      	ldr	r3, [r3, #8]
d0040378:	695b      	ldr	r3, [r3, #20]
d004037a:	4798      	blx	r3
d004037c:	7c23      	ldrb	r3, [r4, #16]
d004037e:	7c62      	ldrb	r2, [r4, #17]
d0040380:	2100      	movs	r1, #0
d0040382:	7ca5      	ldrb	r5, [r4, #18]
d0040384:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040388:	7ce2      	ldrb	r2, [r4, #19]
d004038a:	4608      	mov	r0, r1
d004038c:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040390:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040394:	689b      	ldr	r3, [r3, #8]
d0040396:	699b      	ldr	r3, [r3, #24]
d0040398:	4798      	blx	r3
d004039a:	7c23      	ldrb	r3, [r4, #16]
d004039c:	7c65      	ldrb	r5, [r4, #17]
d004039e:	f241 1251 	movw	r2, #4433	; 0x1151
d00403a2:	7ca0      	ldrb	r0, [r4, #18]
d00403a4:	21c8      	movs	r1, #200	; 0xc8
d00403a6:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d00403aa:	7ce5      	ldrb	r5, [r4, #19]
d00403ac:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00403b0:	2000      	movs	r0, #0
d00403b2:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d00403b6:	689b      	ldr	r3, [r3, #8]
d00403b8:	69db      	ldr	r3, [r3, #28]
d00403ba:	4798      	blx	r3
d00403bc:	7c23      	ldrb	r3, [r4, #16]
d00403be:	7c62      	ldrb	r2, [r4, #17]
d00403c0:	2100      	movs	r1, #0
d00403c2:	7ca5      	ldrb	r5, [r4, #18]
d00403c4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00403c8:	7ce2      	ldrb	r2, [r4, #19]
d00403ca:	4608      	mov	r0, r1
d00403cc:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00403d0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00403d4:	689b      	ldr	r3, [r3, #8]
d00403d6:	6a1b      	ldr	r3, [r3, #32]
d00403d8:	4798      	blx	r3
d00403da:	4631      	mov	r1, r6
d00403dc:	486a      	ldr	r0, [pc, #424]	; (d0040588 <loadSounds+0x2a0>)
d00403de:	f7ff fefb 	bl	d00401d8 <LoadSFX>
d00403e2:	7c25      	ldrb	r5, [r4, #16]
d00403e4:	7c61      	ldrb	r1, [r4, #17]
d00403e6:	4602      	mov	r2, r0
d00403e8:	7ca0      	ldrb	r0, [r4, #18]
d00403ea:	2300      	movs	r3, #0
d00403ec:	ea45 2501 	orr.w	r5, r5, r1, lsl #8
d00403f0:	f894 c013 	ldrb.w	ip, [r4, #19]
d00403f4:	6831      	ldr	r1, [r6, #0]
d00403f6:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d00403fa:	2001      	movs	r0, #1
d00403fc:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d0040400:	68ad      	ldr	r5, [r5, #8]
d0040402:	68ed      	ldr	r5, [r5, #12]
d0040404:	47a8      	blx	r5
d0040406:	7c23      	ldrb	r3, [r4, #16]
d0040408:	7c62      	ldrb	r2, [r4, #17]
d004040a:	f64a 4144 	movw	r1, #44100	; 0xac44
d004040e:	7ca5      	ldrb	r5, [r4, #18]
d0040410:	2001      	movs	r0, #1
d0040412:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040416:	7ce2      	ldrb	r2, [r4, #19]
d0040418:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004041c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040420:	689b      	ldr	r3, [r3, #8]
d0040422:	691b      	ldr	r3, [r3, #16]
d0040424:	4798      	blx	r3
d0040426:	7c23      	ldrb	r3, [r4, #16]
d0040428:	7c62      	ldrb	r2, [r4, #17]
d004042a:	21ff      	movs	r1, #255	; 0xff
d004042c:	7ca5      	ldrb	r5, [r4, #18]
d004042e:	2001      	movs	r0, #1
d0040430:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040434:	7ce2      	ldrb	r2, [r4, #19]
d0040436:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004043a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004043e:	689b      	ldr	r3, [r3, #8]
d0040440:	695b      	ldr	r3, [r3, #20]
d0040442:	4798      	blx	r3
d0040444:	7c23      	ldrb	r3, [r4, #16]
d0040446:	7c62      	ldrb	r2, [r4, #17]
d0040448:	2100      	movs	r1, #0
d004044a:	7ca5      	ldrb	r5, [r4, #18]
d004044c:	2001      	movs	r0, #1
d004044e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040452:	7ce2      	ldrb	r2, [r4, #19]
d0040454:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040458:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004045c:	689b      	ldr	r3, [r3, #8]
d004045e:	699b      	ldr	r3, [r3, #24]
d0040460:	4798      	blx	r3
d0040462:	7c23      	ldrb	r3, [r4, #16]
d0040464:	7c60      	ldrb	r0, [r4, #17]
d0040466:	f241 1251 	movw	r2, #4433	; 0x1151
d004046a:	7ca6      	ldrb	r6, [r4, #18]
d004046c:	21c8      	movs	r1, #200	; 0xc8
d004046e:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d0040472:	7ce5      	ldrb	r5, [r4, #19]
d0040474:	2001      	movs	r0, #1
d0040476:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d004047a:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d004047e:	689b      	ldr	r3, [r3, #8]
d0040480:	69db      	ldr	r3, [r3, #28]
d0040482:	4798      	blx	r3
d0040484:	7c23      	ldrb	r3, [r4, #16]
d0040486:	7c62      	ldrb	r2, [r4, #17]
d0040488:	2100      	movs	r1, #0
d004048a:	7ca5      	ldrb	r5, [r4, #18]
d004048c:	2001      	movs	r0, #1
d004048e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040492:	7ce2      	ldrb	r2, [r4, #19]
d0040494:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040498:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004049c:	689b      	ldr	r3, [r3, #8]
d004049e:	6a1b      	ldr	r3, [r3, #32]
d00404a0:	4798      	blx	r3
d00404a2:	4639      	mov	r1, r7
d00404a4:	4839      	ldr	r0, [pc, #228]	; (d004058c <loadSounds+0x2a4>)
d00404a6:	f7ff fe97 	bl	d00401d8 <LoadSFX>
d00404aa:	7c26      	ldrb	r6, [r4, #16]
d00404ac:	7c61      	ldrb	r1, [r4, #17]
d00404ae:	4605      	mov	r5, r0
d00404b0:	7ca2      	ldrb	r2, [r4, #18]
d00404b2:	2300      	movs	r3, #0
d00404b4:	ea46 2601 	orr.w	r6, r6, r1, lsl #8
d00404b8:	f894 c013 	ldrb.w	ip, [r4, #19]
d00404bc:	6839      	ldr	r1, [r7, #0]
d00404be:	2002      	movs	r0, #2
d00404c0:	ea46 4602 	orr.w	r6, r6, r2, lsl #16
d00404c4:	462a      	mov	r2, r5
d00404c6:	ea46 660c 	orr.w	r6, r6, ip, lsl #24
d00404ca:	68b6      	ldr	r6, [r6, #8]
d00404cc:	68f6      	ldr	r6, [r6, #12]
d00404ce:	47b0      	blx	r6
d00404d0:	7c23      	ldrb	r3, [r4, #16]
d00404d2:	7c62      	ldrb	r2, [r4, #17]
d00404d4:	f64a 4144 	movw	r1, #44100	; 0xac44
d00404d8:	7ca6      	ldrb	r6, [r4, #18]
d00404da:	2002      	movs	r0, #2
d00404dc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00404e0:	7ce2      	ldrb	r2, [r4, #19]
d00404e2:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d00404e6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00404ea:	689b      	ldr	r3, [r3, #8]
d00404ec:	691b      	ldr	r3, [r3, #16]
d00404ee:	4798      	blx	r3
d00404f0:	7c23      	ldrb	r3, [r4, #16]
d00404f2:	7c62      	ldrb	r2, [r4, #17]
d00404f4:	f44f 71be 	mov.w	r1, #380	; 0x17c
d00404f8:	7ca6      	ldrb	r6, [r4, #18]
d00404fa:	2002      	movs	r0, #2
d00404fc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040500:	7ce2      	ldrb	r2, [r4, #19]
d0040502:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0040506:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004050a:	689b      	ldr	r3, [r3, #8]
d004050c:	695b      	ldr	r3, [r3, #20]
d004050e:	4798      	blx	r3
d0040510:	7c23      	ldrb	r3, [r4, #16]
d0040512:	7c62      	ldrb	r2, [r4, #17]
d0040514:	2100      	movs	r1, #0
d0040516:	7ca6      	ldrb	r6, [r4, #18]
d0040518:	2002      	movs	r0, #2
d004051a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004051e:	7ce2      	ldrb	r2, [r4, #19]
d0040520:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0040524:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040528:	689b      	ldr	r3, [r3, #8]
d004052a:	699b      	ldr	r3, [r3, #24]
d004052c:	4798      	blx	r3
d004052e:	7c23      	ldrb	r3, [r4, #16]
d0040530:	7c60      	ldrb	r0, [r4, #17]
d0040532:	f1a5 022c 	sub.w	r2, r5, #44	; 0x2c
d0040536:	7ca6      	ldrb	r6, [r4, #18]
d0040538:	21c8      	movs	r1, #200	; 0xc8
d004053a:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d004053e:	7ce5      	ldrb	r5, [r4, #19]
d0040540:	2002      	movs	r0, #2
d0040542:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0040546:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d004054a:	689b      	ldr	r3, [r3, #8]
d004054c:	69db      	ldr	r3, [r3, #28]
d004054e:	4798      	blx	r3
d0040550:	7c23      	ldrb	r3, [r4, #16]
d0040552:	7c62      	ldrb	r2, [r4, #17]
d0040554:	2101      	movs	r1, #1
d0040556:	7ca5      	ldrb	r5, [r4, #18]
d0040558:	2002      	movs	r0, #2
d004055a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004055e:	7ce2      	ldrb	r2, [r4, #19]
d0040560:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040564:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040568:	689b      	ldr	r3, [r3, #8]
d004056a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d004056e:	6a1b      	ldr	r3, [r3, #32]
d0040570:	4718      	bx	r3
d0040572:	bf00      	nop
d0040574:	d0043460 	.word	0xd0043460
d0040578:	2001f000 	.word	0x2001f000
d004057c:	d0042984 	.word	0xd0042984
d0040580:	d0043420 	.word	0xd0043420
d0040584:	d0043440 	.word	0xd0043440
d0040588:	d0042998 	.word	0xd0042998
d004058c:	d00429a8 	.word	0xd00429a8

d0040590 <MusicPlay>:
d0040590:	4a08      	ldr	r2, [pc, #32]	; (d00405b4 <MusicPlay+0x24>)
d0040592:	2100      	movs	r1, #0
d0040594:	4808      	ldr	r0, [pc, #32]	; (d00405b8 <MusicPlay+0x28>)
d0040596:	7c13      	ldrb	r3, [r2, #16]
d0040598:	b430      	push	{r4, r5}
d004059a:	7c55      	ldrb	r5, [r2, #17]
d004059c:	7c94      	ldrb	r4, [r2, #18]
d004059e:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d00405a2:	7cd2      	ldrb	r2, [r2, #19]
d00405a4:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d00405a8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00405ac:	685b      	ldr	r3, [r3, #4]
d00405ae:	bc30      	pop	{r4, r5}
d00405b0:	681b      	ldr	r3, [r3, #0]
d00405b2:	4718      	bx	r3
d00405b4:	2001f000 	.word	0x2001f000
d00405b8:	d00429b8 	.word	0xd00429b8

d00405bc <initShip>:
d00405bc:	b430      	push	{r4, r5}
d00405be:	4a09      	ldr	r2, [pc, #36]	; (d00405e4 <initShip+0x28>)
d00405c0:	f04f 4086 	mov.w	r0, #1124073472	; 0x43000000
d00405c4:	4c08      	ldr	r4, [pc, #32]	; (d00405e8 <initShip+0x2c>)
d00405c6:	2300      	movs	r3, #0
d00405c8:	4908      	ldr	r1, [pc, #32]	; (d00405ec <initShip+0x30>)
d00405ca:	4d09      	ldr	r5, [pc, #36]	; (d00405f0 <initShip+0x34>)
d00405cc:	6008      	str	r0, [r1, #0]
d00405ce:	6014      	str	r4, [r2, #0]
d00405d0:	2200      	movs	r2, #0
d00405d2:	4c08      	ldr	r4, [pc, #32]	; (d00405f4 <initShip+0x38>)
d00405d4:	4808      	ldr	r0, [pc, #32]	; (d00405f8 <initShip+0x3c>)
d00405d6:	4909      	ldr	r1, [pc, #36]	; (d00405fc <initShip+0x40>)
d00405d8:	602a      	str	r2, [r5, #0]
d00405da:	6022      	str	r2, [r4, #0]
d00405dc:	700b      	strb	r3, [r1, #0]
d00405de:	6003      	str	r3, [r0, #0]
d00405e0:	bc30      	pop	{r4, r5}
d00405e2:	4770      	bx	lr
d00405e4:	d0043868 	.word	0xd0043868
d00405e8:	43500000 	.word	0x43500000
d00405ec:	d004386c 	.word	0xd004386c
d00405f0:	d0043820 	.word	0xd0043820
d00405f4:	d0043860 	.word	0xd0043860
d00405f8:	d0043864 	.word	0xd0043864
d00405fc:	d0043408 	.word	0xd0043408

d0040600 <ShipUpdate>:
d0040600:	4a49      	ldr	r2, [pc, #292]	; (d0040728 <ShipUpdate+0x128>)
d0040602:	7813      	ldrb	r3, [r2, #0]
d0040604:	3301      	adds	r3, #1
d0040606:	b25b      	sxtb	r3, r3
d0040608:	2b01      	cmp	r3, #1
d004060a:	7013      	strb	r3, [r2, #0]
d004060c:	f340 8089 	ble.w	d0040722 <ShipUpdate+0x122>
d0040610:	2300      	movs	r3, #0
d0040612:	06c1      	lsls	r1, r0, #27
d0040614:	7013      	strb	r3, [r2, #0]
d0040616:	4a45      	ldr	r2, [pc, #276]	; (d004072c <ShipUpdate+0x12c>)
d0040618:	6813      	ldr	r3, [r2, #0]
d004061a:	bf44      	itt	mi
d004061c:	f103 33ff 	addmi.w	r3, r3, #4294967295	; 0xffffffff
d0040620:	6013      	strmi	r3, [r2, #0]
d0040622:	0681      	lsls	r1, r0, #26
d0040624:	d501      	bpl.n	d004062a <ShipUpdate+0x2a>
d0040626:	3301      	adds	r3, #1
d0040628:	6013      	str	r3, [r2, #0]
d004062a:	2b23      	cmp	r3, #35	; 0x23
d004062c:	dc5d      	bgt.n	d00406ea <ShipUpdate+0xea>
d004062e:	2b00      	cmp	r3, #0
d0040630:	da02      	bge.n	d0040638 <ShipUpdate+0x38>
d0040632:	2123      	movs	r1, #35	; 0x23
d0040634:	460b      	mov	r3, r1
d0040636:	6011      	str	r1, [r2, #0]
d0040638:	4a3d      	ldr	r2, [pc, #244]	; (d0040730 <ShipUpdate+0x130>)
d004063a:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
d004063e:	edd3 7a00 	vldr	s15, [r3]
d0040642:	ed93 7a01 	vldr	s14, [r3, #4]
d0040646:	0743      	lsls	r3, r0, #29
d0040648:	d552      	bpl.n	d00406f0 <ShipUpdate+0xf0>
d004064a:	eef5 6a00 	vmov.f32	s13, #80	; 0x3e800000  0.250
d004064e:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0040652:	ee67 6a26 	vmul.f32	s13, s14, s13
d0040656:	4937      	ldr	r1, [pc, #220]	; (d0040734 <ShipUpdate+0x134>)
d0040658:	eeb3 6a00 	vmov.f32	s12, #48	; 0x41800000  16.0
d004065c:	4836      	ldr	r0, [pc, #216]	; (d0040738 <ShipUpdate+0x138>)
d004065e:	ed91 7a00 	vldr	s14, [r1]
d0040662:	edd0 5a00 	vldr	s11, [r0]
d0040666:	ee37 7a66 	vsub.f32	s14, s14, s13
d004066a:	ee77 7aa5 	vadd.f32	s15, s15, s11
d004066e:	ee67 6a07 	vmul.f32	s13, s14, s14
d0040672:	eee7 6aa7 	vfma.f32	s13, s15, s15
d0040676:	eef4 6ac6 	vcmpe.f32	s13, s12
d004067a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004067e:	dd09      	ble.n	d0040694 <ShipUpdate+0x94>
d0040680:	eeb1 6ae6 	vsqrt.f32	s12, s13
d0040684:	eef1 5a00 	vmov.f32	s11, #16	; 0x40800000  4.0
d0040688:	eec5 6a86 	vdiv.f32	s13, s11, s12
d004068c:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0040690:	ee27 7a26 	vmul.f32	s14, s14, s13
d0040694:	4a29      	ldr	r2, [pc, #164]	; (d004073c <ShipUpdate+0x13c>)
d0040696:	ed9f 5a2a 	vldr	s10, [pc, #168]	; d0040740 <ShipUpdate+0x140>
d004069a:	ed92 6a00 	vldr	s12, [r2]
d004069e:	4b29      	ldr	r3, [pc, #164]	; (d0040744 <ShipUpdate+0x144>)
d00406a0:	ee37 6a86 	vadd.f32	s12, s15, s12
d00406a4:	eddf 5a28 	vldr	s11, [pc, #160]	; d0040748 <ShipUpdate+0x148>
d00406a8:	edd3 6a00 	vldr	s13, [r3]
d00406ac:	ee67 7aa5 	vmul.f32	s15, s15, s11
d00406b0:	eeb4 6ac5 	vcmpe.f32	s12, s10
d00406b4:	ed82 6a00 	vstr	s12, [r2]
d00406b8:	ee77 6a26 	vadd.f32	s13, s14, s13
d00406bc:	ee27 7a25 	vmul.f32	s14, s14, s11
d00406c0:	edc0 7a00 	vstr	s15, [r0]
d00406c4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00406c8:	edc3 6a00 	vstr	s13, [r3]
d00406cc:	ed81 7a00 	vstr	s14, [r1]
d00406d0:	d51d      	bpl.n	d004070e <ShipUpdate+0x10e>
d00406d2:	491e      	ldr	r1, [pc, #120]	; (d004074c <ShipUpdate+0x14c>)
d00406d4:	6011      	str	r1, [r2, #0]
d00406d6:	eddf 7a1a 	vldr	s15, [pc, #104]	; d0040740 <ShipUpdate+0x140>
d00406da:	eef4 6ae7 	vcmpe.f32	s13, s15
d00406de:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00406e2:	d50a      	bpl.n	d00406fa <ShipUpdate+0xfa>
d00406e4:	4a1a      	ldr	r2, [pc, #104]	; (d0040750 <ShipUpdate+0x150>)
d00406e6:	601a      	str	r2, [r3, #0]
d00406e8:	4770      	bx	lr
d00406ea:	2300      	movs	r3, #0
d00406ec:	6013      	str	r3, [r2, #0]
d00406ee:	e7a3      	b.n	d0040638 <ShipUpdate+0x38>
d00406f0:	eddf 6a18 	vldr	s13, [pc, #96]	; d0040754 <ShipUpdate+0x154>
d00406f4:	eef0 7a66 	vmov.f32	s15, s13
d00406f8:	e7ad      	b.n	d0040656 <ShipUpdate+0x56>
d00406fa:	ed9f 7a17 	vldr	s14, [pc, #92]	; d0040758 <ShipUpdate+0x158>
d00406fe:	eef4 6ac7 	vcmpe.f32	s13, s14
d0040702:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040706:	bfc8      	it	gt
d0040708:	edc3 7a00 	vstrgt	s15, [r3]
d004070c:	4770      	bx	lr
d004070e:	eddf 7a13 	vldr	s15, [pc, #76]	; d004075c <ShipUpdate+0x15c>
d0040712:	eeb4 6ae7 	vcmpe.f32	s12, s15
d0040716:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004071a:	bfc8      	it	gt
d004071c:	ed82 5a00 	vstrgt	s10, [r2]
d0040720:	e7d9      	b.n	d00406d6 <ShipUpdate+0xd6>
d0040722:	4b02      	ldr	r3, [pc, #8]	; (d004072c <ShipUpdate+0x12c>)
d0040724:	681b      	ldr	r3, [r3, #0]
d0040726:	e787      	b.n	d0040638 <ShipUpdate+0x38>
d0040728:	d0043408 	.word	0xd0043408
d004072c:	d0043864 	.word	0xd0043864
d0040730:	d0042864 	.word	0xd0042864
d0040734:	d0043860 	.word	0xd0043860
d0040738:	d0043820 	.word	0xd0043820
d004073c:	d0043868 	.word	0xd0043868
d0040740:	c2800000 	.word	0xc2800000
d0040744:	d004386c 	.word	0xd004386c
d0040748:	3f7d70a4 	.word	0x3f7d70a4
d004074c:	43f00000 	.word	0x43f00000
d0040750:	43a00000 	.word	0x43a00000
d0040754:	00000000 	.word	0x00000000
d0040758:	43a00000 	.word	0x43a00000
d004075c:	43f00000 	.word	0x43f00000

d0040760 <initBullets>:
d0040760:	4b0a      	ldr	r3, [pc, #40]	; (d004078c <initBullets+0x2c>)
d0040762:	2200      	movs	r2, #0
d0040764:	f503 7160 	add.w	r1, r3, #896	; 0x380
d0040768:	601a      	str	r2, [r3, #0]
d004076a:	331c      	adds	r3, #28
d004076c:	f843 2c18 	str.w	r2, [r3, #-24]
d0040770:	f843 2c14 	str.w	r2, [r3, #-20]
d0040774:	f843 2c10 	str.w	r2, [r3, #-16]
d0040778:	f843 2c0c 	str.w	r2, [r3, #-12]
d004077c:	f843 2c08 	str.w	r2, [r3, #-8]
d0040780:	f843 2c04 	str.w	r2, [r3, #-4]
d0040784:	428b      	cmp	r3, r1
d0040786:	d1ef      	bne.n	d0040768 <initBullets+0x8>
d0040788:	4770      	bx	lr
d004078a:	bf00      	nop
d004078c:	d0043480 	.word	0xd0043480

d0040790 <fireBullet>:
d0040790:	4b55      	ldr	r3, [pc, #340]	; (d00408e8 <fireBullet+0x158>)
d0040792:	681b      	ldr	r3, [r3, #0]
d0040794:	1e59      	subs	r1, r3, #1
d0040796:	1c5a      	adds	r2, r3, #1
d0040798:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d004079c:	2900      	cmp	r1, #0
d004079e:	b084      	sub	sp, #16
d00407a0:	9302      	str	r3, [sp, #8]
d00407a2:	9101      	str	r1, [sp, #4]
d00407a4:	9203      	str	r2, [sp, #12]
d00407a6:	da01      	bge.n	d00407ac <fireBullet+0x1c>
d00407a8:	2323      	movs	r3, #35	; 0x23
d00407aa:	9301      	str	r3, [sp, #4]
d00407ac:	2a23      	cmp	r2, #35	; 0x23
d00407ae:	dd01      	ble.n	d00407b4 <fireBullet+0x24>
d00407b0:	2300      	movs	r3, #0
d00407b2:	9303      	str	r3, [sp, #12]
d00407b4:	eef2 5a00 	vmov.f32	s11, #32	; 0x41000000  8.0
d00407b8:	ae01      	add	r6, sp, #4
d00407ba:	eeb3 6a06 	vmov.f32	s12, #54	; 0x41b00000  22.0
d00407be:	f10d 0c10 	add.w	ip, sp, #16
d00407c2:	2700      	movs	r7, #0
d00407c4:	4d49      	ldr	r5, [pc, #292]	; (d00408ec <fireBullet+0x15c>)
d00407c6:	f04f 0811 	mov.w	r8, #17
d00407ca:	4849      	ldr	r0, [pc, #292]	; (d00408f0 <fireBullet+0x160>)
d00407cc:	f8df e12c 	ldr.w	lr, [pc, #300]	; d00408fc <fireBullet+0x16c>
d00407d0:	2200      	movs	r2, #0
d00407d2:	e001      	b.n	d00407d8 <fireBullet+0x48>
d00407d4:	2a20      	cmp	r2, #32
d00407d6:	d039      	beq.n	d004084c <fireBullet+0xbc>
d00407d8:	ebc2 03c2 	rsb	r3, r2, r2, lsl #3
d00407dc:	3201      	adds	r2, #1
d00407de:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d00407e2:	7d99      	ldrb	r1, [r3, #22]
d00407e4:	2900      	cmp	r1, #0
d00407e6:	d1f5      	bne.n	d00407d4 <fireBullet+0x44>
d00407e8:	f883 8016 	strb.w	r8, [r3, #22]
d00407ec:	2701      	movs	r7, #1
d00407ee:	8a82      	ldrh	r2, [r0, #20]
d00407f0:	6831      	ldr	r1, [r6, #0]
d00407f2:	b212      	sxth	r2, r2
d00407f4:	eb0e 04c1 	add.w	r4, lr, r1, lsl #3
d00407f8:	3218      	adds	r2, #24
d00407fa:	b249      	sxtb	r1, r1
d00407fc:	edd4 6a00 	vldr	s13, [r4]
d0040800:	ee07 2a90 	vmov	s15, r2
d0040804:	ed94 7a01 	vldr	s14, [r4, #4]
d0040808:	ee66 4aa5 	vmul.f32	s9, s13, s11
d004080c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040810:	ee27 5a25 	vmul.f32	s10, s14, s11
d0040814:	edc3 7a02 	vstr	s15, [r3, #8]
d0040818:	8ac2      	ldrh	r2, [r0, #22]
d004081a:	b212      	sxth	r2, r2
d004081c:	3218      	adds	r2, #24
d004081e:	ee07 2a90 	vmov	s15, r2
d0040822:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040826:	edc3 7a03 	vstr	s15, [r3, #12]
d004082a:	7519      	strb	r1, [r3, #20]
d004082c:	edc3 4a00 	vstr	s9, [r3]
d0040830:	ed83 5a01 	vstr	s10, [r3, #4]
d0040834:	edd3 7a02 	vldr	s15, [r3, #8]
d0040838:	eee6 7a86 	vfma.f32	s15, s13, s12
d004083c:	edc3 7a02 	vstr	s15, [r3, #8]
d0040840:	edd3 7a03 	vldr	s15, [r3, #12]
d0040844:	eee7 7a46 	vfms.f32	s15, s14, s12
d0040848:	edc3 7a03 	vstr	s15, [r3, #12]
d004084c:	3604      	adds	r6, #4
d004084e:	4566      	cmp	r6, ip
d0040850:	d1be      	bne.n	d00407d0 <fireBullet+0x40>
d0040852:	b917      	cbnz	r7, d004085a <fireBullet+0xca>
d0040854:	b004      	add	sp, #16
d0040856:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d004085a:	4c26      	ldr	r4, [pc, #152]	; (d00408f4 <fireBullet+0x164>)
d004085c:	4638      	mov	r0, r7
d004085e:	4e26      	ldr	r6, [pc, #152]	; (d00408f8 <fireBullet+0x168>)
d0040860:	f06f 057e 	mvn.w	r5, #126	; 0x7e
d0040864:	7c23      	ldrb	r3, [r4, #16]
d0040866:	7c62      	ldrb	r2, [r4, #17]
d0040868:	7ca1      	ldrb	r1, [r4, #18]
d004086a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004086e:	7ce2      	ldrb	r2, [r4, #19]
d0040870:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040874:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040878:	689b      	ldr	r3, [r3, #8]
d004087a:	689b      	ldr	r3, [r3, #8]
d004087c:	4798      	blx	r3
d004087e:	4b1c      	ldr	r3, [pc, #112]	; (d00408f0 <fireBullet+0x160>)
d0040880:	4638      	mov	r0, r7
d0040882:	8a9b      	ldrh	r3, [r3, #20]
d0040884:	7c21      	ldrb	r1, [r4, #16]
d0040886:	3320      	adds	r3, #32
d0040888:	b21b      	sxth	r3, r3
d004088a:	3bf0      	subs	r3, #240	; 0xf0
d004088c:	ebc3 13c3 	rsb	r3, r3, r3, lsl #7
d0040890:	fb86 2603 	smull	r2, r6, r6, r3
d0040894:	17da      	asrs	r2, r3, #31
d0040896:	4433      	add	r3, r6
d0040898:	7c66      	ldrb	r6, [r4, #17]
d004089a:	ebc2 13e3 	rsb	r3, r2, r3, asr #7
d004089e:	ea41 2206 	orr.w	r2, r1, r6, lsl #8
d00408a2:	7ca6      	ldrb	r6, [r4, #18]
d00408a4:	b219      	sxth	r1, r3
d00408a6:	ea42 4306 	orr.w	r3, r2, r6, lsl #16
d00408aa:	7ce2      	ldrb	r2, [r4, #19]
d00408ac:	297f      	cmp	r1, #127	; 0x7f
d00408ae:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00408b2:	bfa8      	it	ge
d00408b4:	217f      	movge	r1, #127	; 0x7f
d00408b6:	689b      	ldr	r3, [r3, #8]
d00408b8:	42a9      	cmp	r1, r5
d00408ba:	699b      	ldr	r3, [r3, #24]
d00408bc:	bfb8      	it	lt
d00408be:	4629      	movlt	r1, r5
d00408c0:	b249      	sxtb	r1, r1
d00408c2:	4798      	blx	r3
d00408c4:	7c23      	ldrb	r3, [r4, #16]
d00408c6:	7c62      	ldrb	r2, [r4, #17]
d00408c8:	4638      	mov	r0, r7
d00408ca:	7ca1      	ldrb	r1, [r4, #18]
d00408cc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00408d0:	7ce2      	ldrb	r2, [r4, #19]
d00408d2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00408d6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00408da:	689b      	ldr	r3, [r3, #8]
d00408dc:	685b      	ldr	r3, [r3, #4]
d00408de:	b004      	add	sp, #16
d00408e0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d00408e4:	4718      	bx	r3
d00408e6:	bf00      	nop
d00408e8:	d0043864 	.word	0xd0043864
d00408ec:	d0043480 	.word	0xd0043480
d00408f0:	d0043840 	.word	0xd0043840
d00408f4:	2001f000 	.word	0x2001f000
d00408f8:	88888889 	.word	0x88888889
d00408fc:	d0042864 	.word	0xd0042864

d0040900 <doBullets>:
d0040900:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0040902:	2400      	movs	r4, #0
d0040904:	4d41      	ldr	r5, [pc, #260]	; (d0040a0c <doBullets+0x10c>)
d0040906:	4e42      	ldr	r6, [pc, #264]	; (d0040a10 <doBullets+0x110>)
d0040908:	ed2d 8b02 	vpush	{d8}
d004090c:	eddf 8a41 	vldr	s17, [pc, #260]	; d0040a14 <doBullets+0x114>
d0040910:	ed9f 8a41 	vldr	s16, [pc, #260]	; d0040a18 <doBullets+0x118>
d0040914:	ebc4 03c4 	rsb	r3, r4, r4, lsl #3
d0040918:	00e2      	lsls	r2, r4, #3
d004091a:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d004091e:	7d99      	ldrb	r1, [r3, #22]
d0040920:	2900      	cmp	r1, #0
d0040922:	d06c      	beq.n	d00409fe <doBullets+0xfe>
d0040924:	7d99      	ldrb	r1, [r3, #22]
d0040926:	eebb 7a00 	vmov.f32	s14, #176	; 0xc1800000 -16.0
d004092a:	3901      	subs	r1, #1
d004092c:	b2c9      	uxtb	r1, r1
d004092e:	7599      	strb	r1, [r3, #22]
d0040930:	edd3 6a00 	vldr	s13, [r3]
d0040934:	edd3 7a02 	vldr	s15, [r3, #8]
d0040938:	ee77 7aa6 	vadd.f32	s15, s15, s13
d004093c:	edc3 7a02 	vstr	s15, [r3, #8]
d0040940:	edd3 6a01 	vldr	s13, [r3, #4]
d0040944:	edd3 7a03 	vldr	s15, [r3, #12]
d0040948:	ee77 7ae6 	vsub.f32	s15, s15, s13
d004094c:	edc3 7a03 	vstr	s15, [r3, #12]
d0040950:	edd3 7a02 	vldr	s15, [r3, #8]
d0040954:	eef4 7ac7 	vcmpe.f32	s15, s14
d0040958:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004095c:	d501      	bpl.n	d0040962 <doBullets+0x62>
d004095e:	edc3 8a02 	vstr	s17, [r3, #8]
d0040962:	1b13      	subs	r3, r2, r4
d0040964:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0040968:	edd3 7a02 	vldr	s15, [r3, #8]
d004096c:	eef4 7ae8 	vcmpe.f32	s15, s17
d0040970:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040974:	dd01      	ble.n	d004097a <doBullets+0x7a>
d0040976:	4929      	ldr	r1, [pc, #164]	; (d0040a1c <doBullets+0x11c>)
d0040978:	6099      	str	r1, [r3, #8]
d004097a:	1b13      	subs	r3, r2, r4
d004097c:	eefb 7a00 	vmov.f32	s15, #176	; 0xc1800000 -16.0
d0040980:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0040984:	ed93 7a03 	vldr	s14, [r3, #12]
d0040988:	eeb4 7ae7 	vcmpe.f32	s14, s15
d004098c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040990:	d501      	bpl.n	d0040996 <doBullets+0x96>
d0040992:	ed83 8a03 	vstr	s16, [r3, #12]
d0040996:	1b13      	subs	r3, r2, r4
d0040998:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d004099c:	edd3 7a03 	vldr	s15, [r3, #12]
d00409a0:	eef4 7ac8 	vcmpe.f32	s15, s16
d00409a4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00409a8:	dd01      	ble.n	d00409ae <doBullets+0xae>
d00409aa:	491c      	ldr	r1, [pc, #112]	; (d0040a1c <doBullets+0x11c>)
d00409ac:	60d9      	str	r1, [r3, #12]
d00409ae:	1b13      	subs	r3, r2, r4
d00409b0:	491b      	ldr	r1, [pc, #108]	; (d0040a20 <doBullets+0x120>)
d00409b2:	4817      	ldr	r0, [pc, #92]	; (d0040a10 <doBullets+0x110>)
d00409b4:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d00409b8:	edd3 7a02 	vldr	s15, [r3, #8]
d00409bc:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00409c0:	ee17 2a90 	vmov	r2, s15
d00409c4:	b212      	sxth	r2, r2
d00409c6:	821a      	strh	r2, [r3, #16]
d00409c8:	edd3 7a03 	vldr	s15, [r3, #12]
d00409cc:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00409d0:	ee17 2a90 	vmov	r2, s15
d00409d4:	b212      	sxth	r2, r2
d00409d6:	825a      	strh	r2, [r3, #18]
d00409d8:	7d1a      	ldrb	r2, [r3, #20]
d00409da:	7632      	strb	r2, [r6, #24]
d00409dc:	8a1a      	ldrh	r2, [r3, #16]
d00409de:	82b2      	strh	r2, [r6, #20]
d00409e0:	8a5b      	ldrh	r3, [r3, #18]
d00409e2:	82f3      	strh	r3, [r6, #22]
d00409e4:	7b0b      	ldrb	r3, [r1, #12]
d00409e6:	7b4a      	ldrb	r2, [r1, #13]
d00409e8:	7b8f      	ldrb	r7, [r1, #14]
d00409ea:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00409ee:	7bca      	ldrb	r2, [r1, #15]
d00409f0:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d00409f4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00409f8:	685b      	ldr	r3, [r3, #4]
d00409fa:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00409fc:	4798      	blx	r3
d00409fe:	3401      	adds	r4, #1
d0040a00:	2c20      	cmp	r4, #32
d0040a02:	d187      	bne.n	d0040914 <doBullets+0x14>
d0040a04:	ecbd 8b02 	vpop	{d8}
d0040a08:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0040a0a:	bf00      	nop
d0040a0c:	d0043480 	.word	0xd0043480
d0040a10:	d0043800 	.word	0xd0043800
d0040a14:	43f00000 	.word	0x43f00000
d0040a18:	43a00000 	.word	0x43a00000
d0040a1c:	c1800000 	.word	0xc1800000
d0040a20:	2001f000 	.word	0x2001f000

d0040a24 <initAstroids>:
d0040a24:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0040a28:	4f4d      	ldr	r7, [pc, #308]	; (d0040b60 <initAstroids+0x13c>)
d0040a2a:	2500      	movs	r5, #0
d0040a2c:	463e      	mov	r6, r7
d0040a2e:	46a8      	mov	r8, r5
d0040a30:	f44f 71ee 	mov.w	r1, #476	; 0x1dc
d0040a34:	f06f 003b 	mvn.w	r0, #59	; 0x3b
d0040a38:	f8c6 8000 	str.w	r8, [r6]
d0040a3c:	006c      	lsls	r4, r5, #1
d0040a3e:	f8c6 8004 	str.w	r8, [r6, #4]
d0040a42:	f8c6 8008 	str.w	r8, [r6, #8]
d0040a46:	f8c6 800c 	str.w	r8, [r6, #12]
d0040a4a:	f8c6 8010 	str.w	r8, [r6, #16]
d0040a4e:	f8c6 8014 	str.w	r8, [r6, #20]
d0040a52:	f000 fc17 	bl	d0041284 <sbx_rng_range>
d0040a56:	4602      	mov	r2, r0
d0040a58:	eb05 0345 	add.w	r3, r5, r5, lsl #1
d0040a5c:	f44f 719e 	mov.w	r1, #316	; 0x13c
d0040a60:	b212      	sxth	r2, r2
d0040a62:	f06f 003b 	mvn.w	r0, #59	; 0x3b
d0040a66:	eb07 0ac3 	add.w	sl, r7, r3, lsl #3
d0040a6a:	f827 2033 	strh.w	r2, [r7, r3, lsl #3]
d0040a6e:	f000 fc09 	bl	d0041284 <sbx_rng_range>
d0040a72:	46d1      	mov	r9, sl
d0040a74:	b200      	sxth	r0, r0
d0040a76:	f8aa 0002 	strh.w	r0, [sl, #2]
d0040a7a:	2103      	movs	r1, #3
d0040a7c:	f06f 0002 	mvn.w	r0, #2
d0040a80:	f000 fc00 	bl	d0041284 <sbx_rng_range>
d0040a84:	b200      	sxth	r0, r0
d0040a86:	f8a9 0004 	strh.w	r0, [r9, #4]
d0040a8a:	f8b9 3004 	ldrh.w	r3, [r9, #4]
d0040a8e:	b21b      	sxth	r3, r3
d0040a90:	2b00      	cmp	r3, #0
d0040a92:	d0f2      	beq.n	d0040a7a <initAstroids+0x56>
d0040a94:	eb04 0905 	add.w	r9, r4, r5
d0040a98:	eb07 09c9 	add.w	r9, r7, r9, lsl #3
d0040a9c:	2103      	movs	r1, #3
d0040a9e:	f06f 0002 	mvn.w	r0, #2
d0040aa2:	f000 fbef 	bl	d0041284 <sbx_rng_range>
d0040aa6:	b200      	sxth	r0, r0
d0040aa8:	f8a9 0006 	strh.w	r0, [r9, #6]
d0040aac:	f8b9 3006 	ldrh.w	r3, [r9, #6]
d0040ab0:	b21b      	sxth	r3, r3
d0040ab2:	2b00      	cmp	r3, #0
d0040ab4:	d0f2      	beq.n	d0040a9c <initAstroids+0x78>
d0040ab6:	2103      	movs	r1, #3
d0040ab8:	2000      	movs	r0, #0
d0040aba:	f000 fbe3 	bl	d0041284 <sbx_rng_range>
d0040abe:	b2c0      	uxtb	r0, r0
d0040ac0:	f889 000c 	strb.w	r0, [r9, #12]
d0040ac4:	f899 300c 	ldrb.w	r3, [r9, #12]
d0040ac8:	b93b      	cbnz	r3, d0040ada <initAstroids+0xb6>
d0040aca:	2360      	movs	r3, #96	; 0x60
d0040acc:	2218      	movs	r2, #24
d0040ace:	f8a9 300a 	strh.w	r3, [r9, #10]
d0040ad2:	f8a9 3008 	strh.w	r3, [r9, #8]
d0040ad6:	f889 2010 	strb.w	r2, [r9, #16]
d0040ada:	1963      	adds	r3, r4, r5
d0040adc:	eb07 03c3 	add.w	r3, r7, r3, lsl #3
d0040ae0:	7b1a      	ldrb	r2, [r3, #12]
d0040ae2:	2a01      	cmp	r2, #1
d0040ae4:	d104      	bne.n	d0040af0 <initAstroids+0xcc>
d0040ae6:	2240      	movs	r2, #64	; 0x40
d0040ae8:	2118      	movs	r1, #24
d0040aea:	815a      	strh	r2, [r3, #10]
d0040aec:	811a      	strh	r2, [r3, #8]
d0040aee:	7419      	strb	r1, [r3, #16]
d0040af0:	1963      	adds	r3, r4, r5
d0040af2:	eb07 03c3 	add.w	r3, r7, r3, lsl #3
d0040af6:	7b1a      	ldrb	r2, [r3, #12]
d0040af8:	2a02      	cmp	r2, #2
d0040afa:	d104      	bne.n	d0040b06 <initAstroids+0xe2>
d0040afc:	2240      	movs	r2, #64	; 0x40
d0040afe:	2118      	movs	r1, #24
d0040b00:	815a      	strh	r2, [r3, #10]
d0040b02:	811a      	strh	r2, [r3, #8]
d0040b04:	7419      	strb	r1, [r3, #16]
d0040b06:	1963      	adds	r3, r4, r5
d0040b08:	eb07 03c3 	add.w	r3, r7, r3, lsl #3
d0040b0c:	7b1a      	ldrb	r2, [r3, #12]
d0040b0e:	2a03      	cmp	r2, #3
d0040b10:	d104      	bne.n	d0040b1c <initAstroids+0xf8>
d0040b12:	2220      	movs	r2, #32
d0040b14:	2110      	movs	r1, #16
d0040b16:	815a      	strh	r2, [r3, #10]
d0040b18:	811a      	strh	r2, [r3, #8]
d0040b1a:	7419      	strb	r1, [r3, #16]
d0040b1c:	442c      	add	r4, r5
d0040b1e:	2000      	movs	r0, #0
d0040b20:	3501      	adds	r5, #1
d0040b22:	3618      	adds	r6, #24
d0040b24:	eb07 04c4 	add.w	r4, r7, r4, lsl #3
d0040b28:	7c21      	ldrb	r1, [r4, #16]
d0040b2a:	3901      	subs	r1, #1
d0040b2c:	f000 fbaa 	bl	d0041284 <sbx_rng_range>
d0040b30:	4603      	mov	r3, r0
d0040b32:	2103      	movs	r1, #3
d0040b34:	2001      	movs	r0, #1
d0040b36:	b25b      	sxtb	r3, r3
d0040b38:	7363      	strb	r3, [r4, #13]
d0040b3a:	f000 fba3 	bl	d0041284 <sbx_rng_range>
d0040b3e:	4603      	mov	r3, r0
d0040b40:	2104      	movs	r1, #4
d0040b42:	2001      	movs	r0, #1
d0040b44:	b2db      	uxtb	r3, r3
d0040b46:	73a3      	strb	r3, [r4, #14]
d0040b48:	f000 fb9c 	bl	d0041284 <sbx_rng_range>
d0040b4c:	07c3      	lsls	r3, r0, #31
d0040b4e:	bf4c      	ite	mi
d0040b50:	23ff      	movmi	r3, #255	; 0xff
d0040b52:	2301      	movpl	r3, #1
d0040b54:	2d08      	cmp	r5, #8
d0040b56:	7463      	strb	r3, [r4, #17]
d0040b58:	f47f af6a 	bne.w	d0040a30 <initAstroids+0xc>
d0040b5c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0040b60:	d0043900 	.word	0xd0043900

d0040b64 <proc_astroids>:
d0040b64:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040b68:	2300      	movs	r3, #0
d0040b6a:	b083      	sub	sp, #12
d0040b6c:	4f6f      	ldr	r7, [pc, #444]	; (d0040d2c <proc_astroids+0x1c8>)
d0040b6e:	4e70      	ldr	r6, [pc, #448]	; (d0040d30 <proc_astroids+0x1cc>)
d0040b70:	f8df b1cc 	ldr.w	fp, [pc, #460]	; d0040d40 <proc_astroids+0x1dc>
d0040b74:	4d6f      	ldr	r5, [pc, #444]	; (d0040d34 <proc_astroids+0x1d0>)
d0040b76:	9300      	str	r3, [sp, #0]
d0040b78:	9a00      	ldr	r2, [sp, #0]
d0040b7a:	eb02 0342 	add.w	r3, r2, r2, lsl #1
d0040b7e:	0051      	lsls	r1, r2, #1
d0040b80:	eb07 03c3 	add.w	r3, r7, r3, lsl #3
d0040b84:	7b1a      	ldrb	r2, [r3, #12]
d0040b86:	7bd8      	ldrb	r0, [r3, #15]
d0040b88:	b2d2      	uxtb	r2, r2
d0040b8a:	3001      	adds	r0, #1
d0040b8c:	b2c0      	uxtb	r0, r0
d0040b8e:	73d8      	strb	r0, [r3, #15]
d0040b90:	7bdc      	ldrb	r4, [r3, #15]
d0040b92:	7b98      	ldrb	r0, [r3, #14]
d0040b94:	4284      	cmp	r4, r0
d0040b96:	d91a      	bls.n	d0040bce <proc_astroids+0x6a>
d0040b98:	f04f 0000 	mov.w	r0, #0
d0040b9c:	73d8      	strb	r0, [r3, #15]
d0040b9e:	7c5c      	ldrb	r4, [r3, #17]
d0040ba0:	7b58      	ldrb	r0, [r3, #13]
d0040ba2:	4420      	add	r0, r4
d0040ba4:	b240      	sxtb	r0, r0
d0040ba6:	7358      	strb	r0, [r3, #13]
d0040ba8:	7b58      	ldrb	r0, [r3, #13]
d0040baa:	0600      	lsls	r0, r0, #24
d0040bac:	d503      	bpl.n	d0040bb6 <proc_astroids+0x52>
d0040bae:	7c18      	ldrb	r0, [r3, #16]
d0040bb0:	3801      	subs	r0, #1
d0040bb2:	b240      	sxtb	r0, r0
d0040bb4:	7358      	strb	r0, [r3, #13]
d0040bb6:	9b00      	ldr	r3, [sp, #0]
d0040bb8:	18cb      	adds	r3, r1, r3
d0040bba:	eb07 03c3 	add.w	r3, r7, r3, lsl #3
d0040bbe:	7c1c      	ldrb	r4, [r3, #16]
d0040bc0:	7b58      	ldrb	r0, [r3, #13]
d0040bc2:	b240      	sxtb	r0, r0
d0040bc4:	4284      	cmp	r4, r0
d0040bc6:	dc02      	bgt.n	d0040bce <proc_astroids+0x6a>
d0040bc8:	f04f 0000 	mov.w	r0, #0
d0040bcc:	7358      	strb	r0, [r3, #13]
d0040bce:	9b00      	ldr	r3, [sp, #0]
d0040bd0:	18c8      	adds	r0, r1, r3
d0040bd2:	eb07 04c0 	add.w	r4, r7, r0, lsl #3
d0040bd6:	f8b4 c004 	ldrh.w	ip, [r4, #4]
d0040bda:	f837 3030 	ldrh.w	r3, [r7, r0, lsl #3]
d0040bde:	4463      	add	r3, ip
d0040be0:	b21b      	sxth	r3, r3
d0040be2:	f827 3030 	strh.w	r3, [r7, r0, lsl #3]
d0040be6:	f8b4 c006 	ldrh.w	ip, [r4, #6]
d0040bea:	8863      	ldrh	r3, [r4, #2]
d0040bec:	4463      	add	r3, ip
d0040bee:	b21b      	sxth	r3, r3
d0040bf0:	8063      	strh	r3, [r4, #2]
d0040bf2:	f837 3030 	ldrh.w	r3, [r7, r0, lsl #3]
d0040bf6:	b21b      	sxth	r3, r3
d0040bf8:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0040bfc:	dd04      	ble.n	d0040c08 <proc_astroids+0xa4>
d0040bfe:	8923      	ldrh	r3, [r4, #8]
d0040c00:	425b      	negs	r3, r3
d0040c02:	b21b      	sxth	r3, r3
d0040c04:	f827 3030 	strh.w	r3, [r7, r0, lsl #3]
d0040c08:	9b00      	ldr	r3, [sp, #0]
d0040c0a:	18cb      	adds	r3, r1, r3
d0040c0c:	eb07 03c3 	add.w	r3, r7, r3, lsl #3
d0040c10:	8858      	ldrh	r0, [r3, #2]
d0040c12:	b200      	sxth	r0, r0
d0040c14:	f5b0 7fa0 	cmp.w	r0, #320	; 0x140
d0040c18:	dd03      	ble.n	d0040c22 <proc_astroids+0xbe>
d0040c1a:	8958      	ldrh	r0, [r3, #10]
d0040c1c:	4240      	negs	r0, r0
d0040c1e:	b200      	sxth	r0, r0
d0040c20:	8058      	strh	r0, [r3, #2]
d0040c22:	9b00      	ldr	r3, [sp, #0]
d0040c24:	18cc      	adds	r4, r1, r3
d0040c26:	eb07 03c4 	add.w	r3, r7, r4, lsl #3
d0040c2a:	f837 0034 	ldrh.w	r0, [r7, r4, lsl #3]
d0040c2e:	891b      	ldrh	r3, [r3, #8]
d0040c30:	b200      	sxth	r0, r0
d0040c32:	b21b      	sxth	r3, r3
d0040c34:	425b      	negs	r3, r3
d0040c36:	4298      	cmp	r0, r3
d0040c38:	da03      	bge.n	d0040c42 <proc_astroids+0xde>
d0040c3a:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d0040c3e:	f827 3034 	strh.w	r3, [r7, r4, lsl #3]
d0040c42:	9b00      	ldr	r3, [sp, #0]
d0040c44:	18c8      	adds	r0, r1, r3
d0040c46:	eb07 00c0 	add.w	r0, r7, r0, lsl #3
d0040c4a:	8844      	ldrh	r4, [r0, #2]
d0040c4c:	8943      	ldrh	r3, [r0, #10]
d0040c4e:	b224      	sxth	r4, r4
d0040c50:	b21b      	sxth	r3, r3
d0040c52:	425b      	negs	r3, r3
d0040c54:	429c      	cmp	r4, r3
d0040c56:	da02      	bge.n	d0040c5e <proc_astroids+0xfa>
d0040c58:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0040c5c:	8043      	strh	r3, [r0, #2]
d0040c5e:	9b00      	ldr	r3, [sp, #0]
d0040c60:	0150      	lsls	r0, r2, #5
d0040c62:	4c35      	ldr	r4, [pc, #212]	; (d0040d38 <proc_astroids+0x1d4>)
d0040c64:	f04f 0801 	mov.w	r8, #1
d0040c68:	4419      	add	r1, r3
d0040c6a:	9001      	str	r0, [sp, #4]
d0040c6c:	eb04 1342 	add.w	r3, r4, r2, lsl #5
d0040c70:	eb07 00c1 	add.w	r0, r7, r1, lsl #3
d0040c74:	469a      	mov	sl, r3
d0040c76:	4699      	mov	r9, r3
d0040c78:	7b44      	ldrb	r4, [r0, #13]
d0040c7a:	761c      	strb	r4, [r3, #24]
d0040c7c:	f837 1031 	ldrh.w	r1, [r7, r1, lsl #3]
d0040c80:	4c2e      	ldr	r4, [pc, #184]	; (d0040d3c <proc_astroids+0x1d8>)
d0040c82:	8299      	strh	r1, [r3, #20]
d0040c84:	8841      	ldrh	r1, [r0, #2]
d0040c86:	82d9      	strh	r1, [r3, #22]
d0040c88:	7c81      	ldrb	r1, [r0, #18]
d0040c8a:	b2c9      	uxtb	r1, r1
d0040c8c:	7119      	strb	r1, [r3, #4]
d0040c8e:	7d01      	ldrb	r1, [r0, #20]
d0040c90:	b2c9      	uxtb	r1, r1
d0040c92:	7199      	strb	r1, [r3, #6]
d0040c94:	7da3      	ldrb	r3, [r4, #22]
d0040c96:	4629      	mov	r1, r5
d0040c98:	4650      	mov	r0, sl
d0040c9a:	b313      	cbz	r3, d0040ce2 <proc_astroids+0x17e>
d0040c9c:	f9b4 c010 	ldrsh.w	ip, [r4, #16]
d0040ca0:	f9b4 2012 	ldrsh.w	r2, [r4, #18]
d0040ca4:	7d23      	ldrb	r3, [r4, #20]
d0040ca6:	f8a5 c014 	strh.w	ip, [r5, #20]
d0040caa:	82ea      	strh	r2, [r5, #22]
d0040cac:	762b      	strb	r3, [r5, #24]
d0040cae:	f89b e00c 	ldrb.w	lr, [fp, #12]
d0040cb2:	f89b c00d 	ldrb.w	ip, [fp, #13]
d0040cb6:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0040cba:	ea4e 2c0c 	orr.w	ip, lr, ip, lsl #8
d0040cbe:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0040cc2:	ea4c 4202 	orr.w	r2, ip, r2, lsl #16
d0040cc6:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040cca:	685b      	ldr	r3, [r3, #4]
d0040ccc:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d0040cce:	4798      	blx	r3
d0040cd0:	2802      	cmp	r0, #2
d0040cd2:	d106      	bne.n	d0040ce2 <proc_astroids+0x17e>
d0040cd4:	23a8      	movs	r3, #168	; 0xa8
d0040cd6:	f889 8004 	strb.w	r8, [r9, #4]
d0040cda:	f884 8016 	strb.w	r8, [r4, #22]
d0040cde:	f889 3005 	strb.w	r3, [r9, #5]
d0040ce2:	341c      	adds	r4, #28
d0040ce4:	42b4      	cmp	r4, r6
d0040ce6:	d1d5      	bne.n	d0040c94 <proc_astroids+0x130>
d0040ce8:	9a00      	ldr	r2, [sp, #0]
d0040cea:	4650      	mov	r0, sl
d0040cec:	f89b 100c 	ldrb.w	r1, [fp, #12]
d0040cf0:	3201      	adds	r2, #1
d0040cf2:	f89b 300d 	ldrb.w	r3, [fp, #13]
d0040cf6:	9200      	str	r2, [sp, #0]
d0040cf8:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0040cfc:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0040d00:	f89b 300f 	ldrb.w	r3, [fp, #15]
d0040d04:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0040d08:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040d0c:	685b      	ldr	r3, [r3, #4]
d0040d0e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0040d10:	4798      	blx	r3
d0040d12:	4909      	ldr	r1, [pc, #36]	; (d0040d38 <proc_astroids+0x1d4>)
d0040d14:	9b01      	ldr	r3, [sp, #4]
d0040d16:	9a00      	ldr	r2, [sp, #0]
d0040d18:	440b      	add	r3, r1
d0040d1a:	f04f 0100 	mov.w	r1, #0
d0040d1e:	2a08      	cmp	r2, #8
d0040d20:	7119      	strb	r1, [r3, #4]
d0040d22:	f47f af29 	bne.w	d0040b78 <proc_astroids+0x14>
d0040d26:	b003      	add	sp, #12
d0040d28:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040d2c:	d0043900 	.word	0xd0043900
d0040d30:	d0043800 	.word	0xd0043800
d0040d34:	d0043800 	.word	0xd0043800
d0040d38:	d0043880 	.word	0xd0043880
d0040d3c:	d0043480 	.word	0xd0043480
d0040d40:	2001f000 	.word	0x2001f000

d0040d44 <drawText>:
d0040d44:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040d48:	b083      	sub	sp, #12
d0040d4a:	7804      	ldrb	r4, [r0, #0]
d0040d4c:	9101      	str	r1, [sp, #4]
d0040d4e:	b35c      	cbz	r4, d0040da8 <drawText+0x64>
d0040d50:	4690      	mov	r8, r2
d0040d52:	4683      	mov	fp, r0
d0040d54:	460f      	mov	r7, r1
d0040d56:	f8df 9070 	ldr.w	r9, [pc, #112]	; d0040dc8 <drawText+0x84>
d0040d5a:	f8df a070 	ldr.w	sl, [pc, #112]	; d0040dcc <drawText+0x88>
d0040d5e:	f1a4 0320 	sub.w	r3, r4, #32
d0040d62:	2c0a      	cmp	r4, #10
d0040d64:	4818      	ldr	r0, [pc, #96]	; (d0040dc8 <drawText+0x84>)
d0040d66:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0040d6a:	d020      	beq.n	d0040dae <drawText+0x6a>
d0040d6c:	b2db      	uxtb	r3, r3
d0040d6e:	f8a9 7014 	strh.w	r7, [r9, #20]
d0040d72:	f8a9 8016 	strh.w	r8, [r9, #22]
d0040d76:	3710      	adds	r7, #16
d0040d78:	f889 3018 	strb.w	r3, [r9, #24]
d0040d7c:	f89a 600c 	ldrb.w	r6, [sl, #12]
d0040d80:	b23f      	sxth	r7, r7
d0040d82:	f89a 500d 	ldrb.w	r5, [sl, #13]
d0040d86:	f89a 400e 	ldrb.w	r4, [sl, #14]
d0040d8a:	ea46 2505 	orr.w	r5, r6, r5, lsl #8
d0040d8e:	f89a 300f 	ldrb.w	r3, [sl, #15]
d0040d92:	ea45 4404 	orr.w	r4, r5, r4, lsl #16
d0040d96:	ea44 6303 	orr.w	r3, r4, r3, lsl #24
d0040d9a:	685b      	ldr	r3, [r3, #4]
d0040d9c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0040d9e:	4798      	blx	r3
d0040da0:	f81b 4f01 	ldrb.w	r4, [fp, #1]!
d0040da4:	2c00      	cmp	r4, #0
d0040da6:	d1da      	bne.n	d0040d5e <drawText+0x1a>
d0040da8:	b003      	add	sp, #12
d0040daa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040dae:	f108 0810 	add.w	r8, r8, #16
d0040db2:	f81b 4f01 	ldrb.w	r4, [fp, #1]!
d0040db6:	9f01      	ldr	r7, [sp, #4]
d0040db8:	fa0f f888 	sxth.w	r8, r8
d0040dbc:	2c00      	cmp	r4, #0
d0040dbe:	d1ce      	bne.n	d0040d5e <drawText+0x1a>
d0040dc0:	b003      	add	sp, #12
d0040dc2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040dc6:	bf00      	nop
d0040dc8:	d0043de0 	.word	0xd0043de0
d0040dcc:	2001f000 	.word	0x2001f000

d0040dd0 <initFlames>:
d0040dd0:	b538      	push	{r3, r4, r5, lr}
d0040dd2:	4c06      	ldr	r4, [pc, #24]	; (d0040dec <initFlames+0x1c>)
d0040dd4:	f504 6580 	add.w	r5, r4, #1024	; 0x400
d0040dd8:	4620      	mov	r0, r4
d0040dda:	3420      	adds	r4, #32
d0040ddc:	2220      	movs	r2, #32
d0040dde:	2100      	movs	r1, #0
d0040de0:	f7ff f92c 	bl	d004003c <memset>
d0040de4:	42ac      	cmp	r4, r5
d0040de6:	d1f7      	bne.n	d0040dd8 <initFlames+0x8>
d0040de8:	bd38      	pop	{r3, r4, r5, pc}
d0040dea:	bf00      	nop
d0040dec:	d0043e20 	.word	0xd0043e20

d0040df0 <initExplodes>:
d0040df0:	b538      	push	{r3, r4, r5, lr}
d0040df2:	4c06      	ldr	r4, [pc, #24]	; (d0040e0c <initExplodes+0x1c>)
d0040df4:	f504 6580 	add.w	r5, r4, #1024	; 0x400
d0040df8:	4620      	mov	r0, r4
d0040dfa:	3420      	adds	r4, #32
d0040dfc:	2220      	movs	r2, #32
d0040dfe:	2100      	movs	r1, #0
d0040e00:	f7ff f91c 	bl	d004003c <memset>
d0040e04:	42ac      	cmp	r4, r5
d0040e06:	d1f7      	bne.n	d0040df8 <initExplodes+0x8>
d0040e08:	bd38      	pop	{r3, r4, r5, pc}
d0040e0a:	bf00      	nop
d0040e0c:	d00439c0 	.word	0xd00439c0

d0040e10 <spawnFlame>:
d0040e10:	4b35      	ldr	r3, [pc, #212]	; (d0040ee8 <spawnFlame+0xd8>)
d0040e12:	681b      	ldr	r3, [r3, #0]
d0040e14:	1e5a      	subs	r2, r3, #1
d0040e16:	1c59      	adds	r1, r3, #1
d0040e18:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0040e1c:	2a00      	cmp	r2, #0
d0040e1e:	ed2d 8b02 	vpush	{d8}
d0040e22:	b084      	sub	sp, #16
d0040e24:	9303      	str	r3, [sp, #12]
d0040e26:	9201      	str	r2, [sp, #4]
d0040e28:	9102      	str	r1, [sp, #8]
d0040e2a:	da01      	bge.n	d0040e30 <spawnFlame+0x20>
d0040e2c:	2223      	movs	r2, #35	; 0x23
d0040e2e:	9201      	str	r2, [sp, #4]
d0040e30:	2b23      	cmp	r3, #35	; 0x23
d0040e32:	dd01      	ble.n	d0040e38 <spawnFlame+0x28>
d0040e34:	2300      	movs	r3, #0
d0040e36:	9303      	str	r3, [sp, #12]
d0040e38:	ae01      	add	r6, sp, #4
d0040e3a:	f10d 0a10 	add.w	sl, sp, #16
d0040e3e:	4d2b      	ldr	r5, [pc, #172]	; (d0040eec <spawnFlame+0xdc>)
d0040e40:	f04f 0811 	mov.w	r8, #17
d0040e44:	f8df 90ac 	ldr.w	r9, [pc, #172]	; d0040ef4 <spawnFlame+0xe4>
d0040e48:	4f29      	ldr	r7, [pc, #164]	; (d0040ef0 <spawnFlame+0xe0>)
d0040e4a:	2300      	movs	r3, #0
d0040e4c:	e001      	b.n	d0040e52 <spawnFlame+0x42>
d0040e4e:	2b20      	cmp	r3, #32
d0040e50:	d042      	beq.n	d0040ed8 <spawnFlame+0xc8>
d0040e52:	eb05 1443 	add.w	r4, r5, r3, lsl #5
d0040e56:	3301      	adds	r3, #1
d0040e58:	7da2      	ldrb	r2, [r4, #22]
d0040e5a:	f002 00ff 	and.w	r0, r2, #255	; 0xff
d0040e5e:	2a00      	cmp	r2, #0
d0040e60:	d1f5      	bne.n	d0040e4e <spawnFlame+0x3e>
d0040e62:	f884 8016 	strb.w	r8, [r4, #22]
d0040e66:	210f      	movs	r1, #15
d0040e68:	7620      	strb	r0, [r4, #24]
d0040e6a:	f8b9 3014 	ldrh.w	r3, [r9, #20]
d0040e6e:	6832      	ldr	r2, [r6, #0]
d0040e70:	b21b      	sxth	r3, r3
d0040e72:	eb07 0cc2 	add.w	ip, r7, r2, lsl #3
d0040e76:	3318      	adds	r3, #24
d0040e78:	b252      	sxtb	r2, r2
d0040e7a:	eddc 8a00 	vldr	s17, [ip]
d0040e7e:	ee07 3a90 	vmov	s15, r3
d0040e82:	ed9c 8a01 	vldr	s16, [ip, #4]
d0040e86:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040e8a:	edc4 7a02 	vstr	s15, [r4, #8]
d0040e8e:	f8b9 3016 	ldrh.w	r3, [r9, #22]
d0040e92:	b21b      	sxth	r3, r3
d0040e94:	3318      	adds	r3, #24
d0040e96:	ee07 3a90 	vmov	s15, r3
d0040e9a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040e9e:	edc4 7a03 	vstr	s15, [r4, #12]
d0040ea2:	7522      	strb	r2, [r4, #20]
d0040ea4:	f000 f9ee 	bl	d0041284 <sbx_rng_range>
d0040ea8:	ee78 7a08 	vadd.f32	s15, s16, s16
d0040eac:	ee78 6aa8 	vadd.f32	s13, s17, s17
d0040eb0:	b240      	sxtb	r0, r0
d0040eb2:	eeb3 7a06 	vmov.f32	s14, #54	; 0x41b00000  22.0
d0040eb6:	7520      	strb	r0, [r4, #20]
d0040eb8:	edc4 6a00 	vstr	s13, [r4]
d0040ebc:	edc4 7a01 	vstr	s15, [r4, #4]
d0040ec0:	edd4 7a02 	vldr	s15, [r4, #8]
d0040ec4:	eee8 7ac7 	vfms.f32	s15, s17, s14
d0040ec8:	edc4 7a02 	vstr	s15, [r4, #8]
d0040ecc:	edd4 7a03 	vldr	s15, [r4, #12]
d0040ed0:	eee8 7a07 	vfma.f32	s15, s16, s14
d0040ed4:	edc4 7a03 	vstr	s15, [r4, #12]
d0040ed8:	3604      	adds	r6, #4
d0040eda:	4556      	cmp	r6, sl
d0040edc:	d1b5      	bne.n	d0040e4a <spawnFlame+0x3a>
d0040ede:	b004      	add	sp, #16
d0040ee0:	ecbd 8b02 	vpop	{d8}
d0040ee4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0040ee8:	d0043864 	.word	0xd0043864
d0040eec:	d0043e20 	.word	0xd0043e20
d0040ef0:	d0042864 	.word	0xd0042864
d0040ef4:	d0043840 	.word	0xd0043840

d0040ef8 <doFlames>:
d0040ef8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0040efa:	2400      	movs	r4, #0
d0040efc:	4d42      	ldr	r5, [pc, #264]	; (d0041008 <doFlames+0x110>)
d0040efe:	4e43      	ldr	r6, [pc, #268]	; (d004100c <doFlames+0x114>)
d0040f00:	ed2d 8b02 	vpush	{d8}
d0040f04:	eddf 8a42 	vldr	s17, [pc, #264]	; d0041010 <doFlames+0x118>
d0040f08:	ed9f 8a42 	vldr	s16, [pc, #264]	; d0041014 <doFlames+0x11c>
d0040f0c:	eb05 1244 	add.w	r2, r5, r4, lsl #5
d0040f10:	0163      	lsls	r3, r4, #5
d0040f12:	7d91      	ldrb	r1, [r2, #22]
d0040f14:	2900      	cmp	r1, #0
d0040f16:	d070      	beq.n	d0040ffa <doFlames+0x102>
d0040f18:	7d91      	ldrb	r1, [r2, #22]
d0040f1a:	eebb 7a04 	vmov.f32	s14, #180	; 0xc1a00000 -20.0
d0040f1e:	3901      	subs	r1, #1
d0040f20:	b2c9      	uxtb	r1, r1
d0040f22:	7591      	strb	r1, [r2, #22]
d0040f24:	edd2 6a00 	vldr	s13, [r2]
d0040f28:	edd2 7a02 	vldr	s15, [r2, #8]
d0040f2c:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0040f30:	edc2 7a02 	vstr	s15, [r2, #8]
d0040f34:	edd2 6a01 	vldr	s13, [r2, #4]
d0040f38:	edd2 7a03 	vldr	s15, [r2, #12]
d0040f3c:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0040f40:	edc2 7a03 	vstr	s15, [r2, #12]
d0040f44:	edd2 7a02 	vldr	s15, [r2, #8]
d0040f48:	eef4 7ac7 	vcmpe.f32	s15, s14
d0040f4c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040f50:	d501      	bpl.n	d0040f56 <doFlames+0x5e>
d0040f52:	edc2 8a02 	vstr	s17, [r2, #8]
d0040f56:	18ea      	adds	r2, r5, r3
d0040f58:	edd2 7a02 	vldr	s15, [r2, #8]
d0040f5c:	eef4 7ae8 	vcmpe.f32	s15, s17
d0040f60:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040f64:	dd01      	ble.n	d0040f6a <doFlames+0x72>
d0040f66:	492c      	ldr	r1, [pc, #176]	; (d0041018 <doFlames+0x120>)
d0040f68:	6091      	str	r1, [r2, #8]
d0040f6a:	18ea      	adds	r2, r5, r3
d0040f6c:	eefb 7a04 	vmov.f32	s15, #180	; 0xc1a00000 -20.0
d0040f70:	ed92 7a03 	vldr	s14, [r2, #12]
d0040f74:	eeb4 7ae7 	vcmpe.f32	s14, s15
d0040f78:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040f7c:	d501      	bpl.n	d0040f82 <doFlames+0x8a>
d0040f7e:	ed82 8a03 	vstr	s16, [r2, #12]
d0040f82:	18ea      	adds	r2, r5, r3
d0040f84:	edd2 7a03 	vldr	s15, [r2, #12]
d0040f88:	eef4 7ac8 	vcmpe.f32	s15, s16
d0040f8c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040f90:	dd01      	ble.n	d0040f96 <doFlames+0x9e>
d0040f92:	4921      	ldr	r1, [pc, #132]	; (d0041018 <doFlames+0x120>)
d0040f94:	60d1      	str	r1, [r2, #12]
d0040f96:	442b      	add	r3, r5
d0040f98:	2102      	movs	r1, #2
d0040f9a:	edd3 7a02 	vldr	s15, [r3, #8]
d0040f9e:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0040fa2:	ee17 2a90 	vmov	r2, s15
d0040fa6:	b212      	sxth	r2, r2
d0040fa8:	821a      	strh	r2, [r3, #16]
d0040faa:	edd3 7a03 	vldr	s15, [r3, #12]
d0040fae:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0040fb2:	ee17 2a90 	vmov	r2, s15
d0040fb6:	b212      	sxth	r2, r2
d0040fb8:	825a      	strh	r2, [r3, #18]
d0040fba:	8a1a      	ldrh	r2, [r3, #16]
d0040fbc:	82b2      	strh	r2, [r6, #20]
d0040fbe:	8a5a      	ldrh	r2, [r3, #18]
d0040fc0:	82f2      	strh	r2, [r6, #22]
d0040fc2:	7131      	strb	r1, [r6, #4]
d0040fc4:	7e1a      	ldrb	r2, [r3, #24]
d0040fc6:	b2d2      	uxtb	r2, r2
d0040fc8:	71b2      	strb	r2, [r6, #6]
d0040fca:	7e1a      	ldrb	r2, [r3, #24]
d0040fcc:	3205      	adds	r2, #5
d0040fce:	b2d2      	uxtb	r2, r2
d0040fd0:	761a      	strb	r2, [r3, #24]
d0040fd2:	7e1a      	ldrb	r2, [r3, #24]
d0040fd4:	2a64      	cmp	r2, #100	; 0x64
d0040fd6:	d901      	bls.n	d0040fdc <doFlames+0xe4>
d0040fd8:	2264      	movs	r2, #100	; 0x64
d0040fda:	761a      	strb	r2, [r3, #24]
d0040fdc:	4a0f      	ldr	r2, [pc, #60]	; (d004101c <doFlames+0x124>)
d0040fde:	4630      	mov	r0, r6
d0040fe0:	7b13      	ldrb	r3, [r2, #12]
d0040fe2:	7b57      	ldrb	r7, [r2, #13]
d0040fe4:	7b91      	ldrb	r1, [r2, #14]
d0040fe6:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
d0040fea:	7bd2      	ldrb	r2, [r2, #15]
d0040fec:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040ff0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040ff4:	685b      	ldr	r3, [r3, #4]
d0040ff6:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0040ff8:	4798      	blx	r3
d0040ffa:	3401      	adds	r4, #1
d0040ffc:	2c20      	cmp	r4, #32
d0040ffe:	d185      	bne.n	d0040f0c <doFlames+0x14>
d0041000:	ecbd 8b02 	vpop	{d8}
d0041004:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0041006:	bf00      	nop
d0041008:	d0043e20 	.word	0xd0043e20
d004100c:	d0043dc0 	.word	0xd0043dc0
d0041010:	43f00000 	.word	0x43f00000
d0041014:	43a00000 	.word	0x43a00000
d0041018:	c1a00000 	.word	0xc1a00000
d004101c:	2001f000 	.word	0x2001f000

d0041020 <spawnExplode>:
d0041020:	b4f0      	push	{r4, r5, r6, r7}
d0041022:	2300      	movs	r3, #0
d0041024:	4e0a      	ldr	r6, [pc, #40]	; (d0041050 <spawnExplode+0x30>)
d0041026:	e001      	b.n	d004102c <spawnExplode+0xc>
d0041028:	2b20      	cmp	r3, #32
d004102a:	d00e      	beq.n	d004104a <spawnExplode+0x2a>
d004102c:	eb06 1243 	add.w	r2, r6, r3, lsl #5
d0041030:	3301      	adds	r3, #1
d0041032:	7d94      	ldrb	r4, [r2, #22]
d0041034:	f004 05ff 	and.w	r5, r4, #255	; 0xff
d0041038:	2c00      	cmp	r4, #0
d004103a:	d1f5      	bne.n	d0041028 <spawnExplode+0x8>
d004103c:	2314      	movs	r3, #20
d004103e:	7593      	strb	r3, [r2, #22]
d0041040:	7515      	strb	r5, [r2, #20]
d0041042:	7615      	strb	r5, [r2, #24]
d0041044:	8210      	strh	r0, [r2, #16]
d0041046:	8251      	strh	r1, [r2, #18]
d0041048:	7515      	strb	r5, [r2, #20]
d004104a:	bcf0      	pop	{r4, r5, r6, r7}
d004104c:	4770      	bx	lr
d004104e:	bf00      	nop
d0041050:	d00439c0 	.word	0xd00439c0

d0041054 <doExplodes>:
d0041054:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0041058:	2500      	movs	r5, #0
d004105a:	f8df 8060 	ldr.w	r8, [pc, #96]	; d00410bc <doExplodes+0x68>
d004105e:	4f15      	ldr	r7, [pc, #84]	; (d00410b4 <doExplodes+0x60>)
d0041060:	4e15      	ldr	r6, [pc, #84]	; (d00410b8 <doExplodes+0x64>)
d0041062:	eb08 1345 	add.w	r3, r8, r5, lsl #5
d0041066:	4813      	ldr	r0, [pc, #76]	; (d00410b4 <doExplodes+0x60>)
d0041068:	3501      	adds	r5, #1
d004106a:	7d9a      	ldrb	r2, [r3, #22]
d004106c:	b1ea      	cbz	r2, d00410aa <doExplodes+0x56>
d004106e:	8a1a      	ldrh	r2, [r3, #16]
d0041070:	82ba      	strh	r2, [r7, #20]
d0041072:	8a5a      	ldrh	r2, [r3, #18]
d0041074:	82fa      	strh	r2, [r7, #22]
d0041076:	7d9a      	ldrb	r2, [r3, #22]
d0041078:	f1c2 0214 	rsb	r2, r2, #20
d004107c:	f3c2 0247 	ubfx	r2, r2, #1, #8
d0041080:	2a09      	cmp	r2, #9
d0041082:	bf28      	it	cs
d0041084:	2209      	movcs	r2, #9
d0041086:	763a      	strb	r2, [r7, #24]
d0041088:	7d9a      	ldrb	r2, [r3, #22]
d004108a:	3a01      	subs	r2, #1
d004108c:	b2d2      	uxtb	r2, r2
d004108e:	759a      	strb	r2, [r3, #22]
d0041090:	7b34      	ldrb	r4, [r6, #12]
d0041092:	7b71      	ldrb	r1, [r6, #13]
d0041094:	7bb2      	ldrb	r2, [r6, #14]
d0041096:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d004109a:	7bf3      	ldrb	r3, [r6, #15]
d004109c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00410a0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00410a4:	685b      	ldr	r3, [r3, #4]
d00410a6:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00410a8:	4798      	blx	r3
d00410aa:	2d20      	cmp	r5, #32
d00410ac:	d1d9      	bne.n	d0041062 <doExplodes+0xe>
d00410ae:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00410b2:	bf00      	nop
d00410b4:	d0043e00 	.word	0xd0043e00
d00410b8:	2001f000 	.word	0x2001f000
d00410bc:	d00439c0 	.word	0xd00439c0

d00410c0 <LoadGraphics>:
d00410c0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00410c4:	f44f 3061 	mov.w	r0, #230400	; 0x38400
d00410c8:	4c2c      	ldr	r4, [pc, #176]	; (d004117c <LoadGraphics+0xbc>)
d00410ca:	f000 fc05 	bl	d00418d8 <malloc>
d00410ce:	2500      	movs	r5, #0
d00410d0:	2260      	movs	r2, #96	; 0x60
d00410d2:	4603      	mov	r3, r0
d00410d4:	f44f 71f0 	mov.w	r1, #480	; 0x1e0
d00410d8:	4829      	ldr	r0, [pc, #164]	; (d0041180 <LoadGraphics+0xc0>)
d00410da:	6023      	str	r3, [r4, #0]
d00410dc:	2640      	movs	r6, #64	; 0x40
d00410de:	81a1      	strh	r1, [r4, #12]
d00410e0:	f44f 7800 	mov.w	r8, #512	; 0x200
d00410e4:	81e1      	strh	r1, [r4, #14]
d00410e6:	27c0      	movs	r7, #192	; 0xc0
d00410e8:	8222      	strh	r2, [r4, #16]
d00410ea:	8262      	strh	r2, [r4, #18]
d00410ec:	82a5      	strh	r5, [r4, #20]
d00410ee:	82e5      	strh	r5, [r4, #22]
d00410f0:	6821      	ldr	r1, [r4, #0]
d00410f2:	f7fe ffab 	bl	d004004c <LoadPPB>
d00410f6:	f44f 30c0 	mov.w	r0, #98304	; 0x18000
d00410fa:	f000 fbed 	bl	d00418d8 <malloc>
d00410fe:	4603      	mov	r3, r0
d0041100:	4820      	ldr	r0, [pc, #128]	; (d0041184 <LoadGraphics+0xc4>)
d0041102:	6223      	str	r3, [r4, #32]
d0041104:	f8a4 802c 	strh.w	r8, [r4, #44]	; 0x2c
d0041108:	85e7      	strh	r7, [r4, #46]	; 0x2e
d004110a:	8626      	strh	r6, [r4, #48]	; 0x30
d004110c:	8666      	strh	r6, [r4, #50]	; 0x32
d004110e:	86a5      	strh	r5, [r4, #52]	; 0x34
d0041110:	86e5      	strh	r5, [r4, #54]	; 0x36
d0041112:	6a21      	ldr	r1, [r4, #32]
d0041114:	f7fe ff9a 	bl	d004004c <LoadPPB>
d0041118:	f44f 30c0 	mov.w	r0, #98304	; 0x18000
d004111c:	f000 fbdc 	bl	d00418d8 <malloc>
d0041120:	4603      	mov	r3, r0
d0041122:	4819      	ldr	r0, [pc, #100]	; (d0041188 <LoadGraphics+0xc8>)
d0041124:	6423      	str	r3, [r4, #64]	; 0x40
d0041126:	f8a4 804c 	strh.w	r8, [r4, #76]	; 0x4c
d004112a:	f8a4 704e 	strh.w	r7, [r4, #78]	; 0x4e
d004112e:	f8a4 6050 	strh.w	r6, [r4, #80]	; 0x50
d0041132:	f8a4 6052 	strh.w	r6, [r4, #82]	; 0x52
d0041136:	f8a4 5054 	strh.w	r5, [r4, #84]	; 0x54
d004113a:	f8a4 5056 	strh.w	r5, [r4, #86]	; 0x56
d004113e:	6c21      	ldr	r1, [r4, #64]	; 0x40
d0041140:	f7fe ff84 	bl	d004004c <LoadPPB>
d0041144:	f44f 4080 	mov.w	r0, #16384	; 0x4000
d0041148:	f000 fbc6 	bl	d00418d8 <malloc>
d004114c:	f44f 7180 	mov.w	r1, #256	; 0x100
d0041150:	2220      	movs	r2, #32
d0041152:	4603      	mov	r3, r0
d0041154:	480d      	ldr	r0, [pc, #52]	; (d004118c <LoadGraphics+0xcc>)
d0041156:	6623      	str	r3, [r4, #96]	; 0x60
d0041158:	f8a4 106c 	strh.w	r1, [r4, #108]	; 0x6c
d004115c:	f8a4 606e 	strh.w	r6, [r4, #110]	; 0x6e
d0041160:	f8a4 2070 	strh.w	r2, [r4, #112]	; 0x70
d0041164:	f8a4 2072 	strh.w	r2, [r4, #114]	; 0x72
d0041168:	f8a4 5074 	strh.w	r5, [r4, #116]	; 0x74
d004116c:	f8a4 5076 	strh.w	r5, [r4, #118]	; 0x76
d0041170:	6e21      	ldr	r1, [r4, #96]	; 0x60
d0041172:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0041176:	f7fe bf69 	b.w	d004004c <LoadPPB>
d004117a:	bf00      	nop
d004117c:	d0043880 	.word	0xd0043880
d0041180:	d00429c8 	.word	0xd00429c8
d0041184:	d00429e0 	.word	0xd00429e0
d0041188:	d00429fc 	.word	0xd00429fc
d004118c:	d0042a18 	.word	0xd0042a18

d0041190 <LoadShipGfx>:
d0041190:	b538      	push	{r3, r4, r5, lr}
d0041192:	f44f 3010 	mov.w	r0, #147456	; 0x24000
d0041196:	2400      	movs	r4, #0
d0041198:	f000 fb9e 	bl	d00418d8 <malloc>
d004119c:	f44f 75c0 	mov.w	r5, #384	; 0x180
d00411a0:	4b1a      	ldr	r3, [pc, #104]	; (d004120c <LoadShipGfx+0x7c>)
d00411a2:	220a      	movs	r2, #10
d00411a4:	2140      	movs	r1, #64	; 0x40
d00411a6:	6018      	str	r0, [r3, #0]
d00411a8:	81dd      	strh	r5, [r3, #14]
d00411aa:	4819      	ldr	r0, [pc, #100]	; (d0041210 <LoadShipGfx+0x80>)
d00411ac:	819d      	strh	r5, [r3, #12]
d00411ae:	2560      	movs	r5, #96	; 0x60
d00411b0:	8259      	strh	r1, [r3, #18]
d00411b2:	8219      	strh	r1, [r3, #16]
d00411b4:	761c      	strb	r4, [r3, #24]
d00411b6:	829a      	strh	r2, [r3, #20]
d00411b8:	82da      	strh	r2, [r3, #22]
d00411ba:	6819      	ldr	r1, [r3, #0]
d00411bc:	f7fe ff46 	bl	d004004c <LoadPPB>
d00411c0:	f44f 5010 	mov.w	r0, #9216	; 0x2400
d00411c4:	f000 fb88 	bl	d00418d8 <malloc>
d00411c8:	4b12      	ldr	r3, [pc, #72]	; (d0041214 <LoadShipGfx+0x84>)
d00411ca:	4602      	mov	r2, r0
d00411cc:	2110      	movs	r1, #16
d00411ce:	4812      	ldr	r0, [pc, #72]	; (d0041218 <LoadShipGfx+0x88>)
d00411d0:	601a      	str	r2, [r3, #0]
d00411d2:	81dd      	strh	r5, [r3, #14]
d00411d4:	819d      	strh	r5, [r3, #12]
d00411d6:	25a0      	movs	r5, #160	; 0xa0
d00411d8:	8259      	strh	r1, [r3, #18]
d00411da:	8219      	strh	r1, [r3, #16]
d00411dc:	761c      	strb	r4, [r3, #24]
d00411de:	6819      	ldr	r1, [r3, #0]
d00411e0:	f7fe ff34 	bl	d004004c <LoadPPB>
d00411e4:	f44f 6048 	mov.w	r0, #3200	; 0xc80
d00411e8:	f000 fb76 	bl	d00418d8 <malloc>
d00411ec:	4b0b      	ldr	r3, [pc, #44]	; (d004121c <LoadShipGfx+0x8c>)
d00411ee:	2214      	movs	r2, #20
d00411f0:	4601      	mov	r1, r0
d00411f2:	480b      	ldr	r0, [pc, #44]	; (d0041220 <LoadShipGfx+0x90>)
d00411f4:	6019      	str	r1, [r3, #0]
d00411f6:	81da      	strh	r2, [r3, #14]
d00411f8:	819d      	strh	r5, [r3, #12]
d00411fa:	825a      	strh	r2, [r3, #18]
d00411fc:	821a      	strh	r2, [r3, #16]
d00411fe:	761c      	strb	r4, [r3, #24]
d0041200:	6819      	ldr	r1, [r3, #0]
d0041202:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d0041206:	f7fe bf21 	b.w	d004004c <LoadPPB>
d004120a:	bf00      	nop
d004120c:	d0043840 	.word	0xd0043840
d0041210:	d0042a30 	.word	0xd0042a30
d0041214:	d0043800 	.word	0xd0043800
d0041218:	d0042a40 	.word	0xd0042a40
d004121c:	d0043dc0 	.word	0xd0043dc0
d0041220:	d0042a58 	.word	0xd0042a58

d0041224 <LoadCommonGameGraphics>:
d0041224:	b538      	push	{r3, r4, r5, lr}
d0041226:	f44f 4020 	mov.w	r0, #40960	; 0xa000
d004122a:	2580      	movs	r5, #128	; 0x80
d004122c:	f000 fb54 	bl	d00418d8 <malloc>
d0041230:	2400      	movs	r4, #0
d0041232:	4b10      	ldr	r3, [pc, #64]	; (d0041274 <LoadCommonGameGraphics+0x50>)
d0041234:	2240      	movs	r2, #64	; 0x40
d0041236:	f44f 71a0 	mov.w	r1, #320	; 0x140
d004123a:	6018      	str	r0, [r3, #0]
d004123c:	81dd      	strh	r5, [r3, #14]
d004123e:	480e      	ldr	r0, [pc, #56]	; (d0041278 <LoadCommonGameGraphics+0x54>)
d0041240:	8199      	strh	r1, [r3, #12]
d0041242:	825a      	strh	r2, [r3, #18]
d0041244:	821a      	strh	r2, [r3, #16]
d0041246:	761c      	strb	r4, [r3, #24]
d0041248:	6819      	ldr	r1, [r3, #0]
d004124a:	f7fe feff 	bl	d004004c <LoadPPB>
d004124e:	f44f 40c0 	mov.w	r0, #24576	; 0x6000
d0041252:	f000 fb41 	bl	d00418d8 <malloc>
d0041256:	4b09      	ldr	r3, [pc, #36]	; (d004127c <LoadCommonGameGraphics+0x58>)
d0041258:	21c0      	movs	r1, #192	; 0xc0
d004125a:	2210      	movs	r2, #16
d004125c:	6018      	str	r0, [r3, #0]
d004125e:	81d9      	strh	r1, [r3, #14]
d0041260:	4807      	ldr	r0, [pc, #28]	; (d0041280 <LoadCommonGameGraphics+0x5c>)
d0041262:	819d      	strh	r5, [r3, #12]
d0041264:	821a      	strh	r2, [r3, #16]
d0041266:	825a      	strh	r2, [r3, #18]
d0041268:	761c      	strb	r4, [r3, #24]
d004126a:	6819      	ldr	r1, [r3, #0]
d004126c:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d0041270:	f7fe beec 	b.w	d004004c <LoadPPB>
d0041274:	d0043e00 	.word	0xd0043e00
d0041278:	d0042a68 	.word	0xd0042a68
d004127c:	d0043de0 	.word	0xd0043de0
d0041280:	d0042a78 	.word	0xd0042a78

d0041284 <sbx_rng_range>:
d0041284:	b410      	push	{r4}
d0041286:	4c0a      	ldr	r4, [pc, #40]	; (d00412b0 <sbx_rng_range+0x2c>)
d0041288:	1a09      	subs	r1, r1, r0
d004128a:	6823      	ldr	r3, [r4, #0]
d004128c:	3101      	adds	r1, #1
d004128e:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d0041292:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0041296:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d004129a:	fbb3 f2f1 	udiv	r2, r3, r1
d004129e:	fb01 3112 	mls	r1, r1, r2, r3
d00412a2:	6023      	str	r3, [r4, #0]
d00412a4:	4408      	add	r0, r1
d00412a6:	f85d 4b04 	ldr.w	r4, [sp], #4
d00412aa:	b200      	sxth	r0, r0
d00412ac:	4770      	bx	lr
d00412ae:	bf00      	nop
d00412b0:	d00433e0 	.word	0xd00433e0

d00412b4 <main>:
d00412b4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00412b8:	4c91      	ldr	r4, [pc, #580]	; (d0041500 <main+0x24c>)
d00412ba:	2700      	movs	r7, #0
d00412bc:	f44f 3000 	mov.w	r0, #131072	; 0x20000
d00412c0:	4e90      	ldr	r6, [pc, #576]	; (d0041504 <main+0x250>)
d00412c2:	7823      	ldrb	r3, [r4, #0]
d00412c4:	46bb      	mov	fp, r7
d00412c6:	7862      	ldrb	r2, [r4, #1]
d00412c8:	78a1      	ldrb	r1, [r4, #2]
d00412ca:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00412ce:	78e2      	ldrb	r2, [r4, #3]
d00412d0:	f8df a260 	ldr.w	sl, [pc, #608]	; d0041534 <main+0x280>
d00412d4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00412d8:	f8df 925c 	ldr.w	r9, [pc, #604]	; d0041538 <main+0x284>
d00412dc:	f8df 825c 	ldr.w	r8, [pc, #604]	; d004153c <main+0x288>
d00412e0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00412e4:	ed2d 8b02 	vpush	{d8}
d00412e8:	b089      	sub	sp, #36	; 0x24
d00412ea:	681b      	ldr	r3, [r3, #0]
d00412ec:	ed9f 8a86 	vldr	s16, [pc, #536]	; d0041508 <main+0x254>
d00412f0:	9707      	str	r7, [sp, #28]
d00412f2:	9706      	str	r7, [sp, #24]
d00412f4:	9704      	str	r7, [sp, #16]
d00412f6:	9705      	str	r7, [sp, #20]
d00412f8:	4798      	blx	r3
d00412fa:	f7fe fefb 	bl	d00400f4 <initMalloc>
d00412fe:	7b23      	ldrb	r3, [r4, #12]
d0041300:	7b62      	ldrb	r2, [r4, #13]
d0041302:	2190      	movs	r1, #144	; 0x90
d0041304:	7ba5      	ldrb	r5, [r4, #14]
d0041306:	20dc      	movs	r0, #220	; 0xdc
d0041308:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004130c:	7be2      	ldrb	r2, [r4, #15]
d004130e:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0041312:	2506      	movs	r5, #6
d0041314:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041318:	681b      	ldr	r3, [r3, #0]
d004131a:	691b      	ldr	r3, [r3, #16]
d004131c:	4798      	blx	r3
d004131e:	7b23      	ldrb	r3, [r4, #12]
d0041320:	7b62      	ldrb	r2, [r4, #13]
d0041322:	4638      	mov	r0, r7
d0041324:	7ba1      	ldrb	r1, [r4, #14]
d0041326:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004132a:	7be2      	ldrb	r2, [r4, #15]
d004132c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0041330:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041334:	681b      	ldr	r3, [r3, #0]
d0041336:	689b      	ldr	r3, [r3, #8]
d0041338:	4798      	blx	r3
d004133a:	7b21      	ldrb	r1, [r4, #12]
d004133c:	7b62      	ldrb	r2, [r4, #13]
d004133e:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d0041342:	7ba0      	ldrb	r0, [r4, #14]
d0041344:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
d0041348:	7be2      	ldrb	r2, [r4, #15]
d004134a:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
d004134e:	4618      	mov	r0, r3
d0041350:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
d0041354:	f44f 7220 	mov.w	r2, #640	; 0x280
d0041358:	f8d1 c000 	ldr.w	ip, [r1]
d004135c:	f44f 71a0 	mov.w	r1, #320	; 0x140
d0041360:	9500      	str	r5, [sp, #0]
d0041362:	f8dc 5014 	ldr.w	r5, [ip, #20]
d0041366:	47a8      	blx	r5
d0041368:	7c23      	ldrb	r3, [r4, #16]
d004136a:	7c62      	ldrb	r2, [r4, #17]
d004136c:	f44f 7000 	mov.w	r0, #512	; 0x200
d0041370:	7ca1      	ldrb	r1, [r4, #18]
d0041372:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041376:	7ce2      	ldrb	r2, [r4, #19]
d0041378:	4d64      	ldr	r5, [pc, #400]	; (d004150c <main+0x258>)
d004137a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004137e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041382:	681b      	ldr	r3, [r3, #0]
d0041384:	681b      	ldr	r3, [r3, #0]
d0041386:	4798      	blx	r3
d0041388:	7c22      	ldrb	r2, [r4, #16]
d004138a:	7c61      	ldrb	r1, [r4, #17]
d004138c:	7ca3      	ldrb	r3, [r4, #18]
d004138e:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d0041392:	7ce0      	ldrb	r0, [r4, #19]
d0041394:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
d0041398:	7b23      	ldrb	r3, [r4, #12]
d004139a:	7b61      	ldrb	r1, [r4, #13]
d004139c:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d00413a0:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d00413a4:	7ba1      	ldrb	r1, [r4, #14]
d00413a6:	6812      	ldr	r2, [r2, #0]
d00413a8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00413ac:	7be1      	ldrb	r1, [r4, #15]
d00413ae:	6852      	ldr	r2, [r2, #4]
d00413b0:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d00413b4:	f04f 0101 	mov.w	r1, #1
d00413b8:	7011      	strb	r1, [r2, #0]
d00413ba:	681b      	ldr	r3, [r3, #0]
d00413bc:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d00413be:	4798      	blx	r3
d00413c0:	7b23      	ldrb	r3, [r4, #12]
d00413c2:	7b62      	ldrb	r2, [r4, #13]
d00413c4:	7ba1      	ldrb	r1, [r4, #14]
d00413c6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00413ca:	7be2      	ldrb	r2, [r4, #15]
d00413cc:	6028      	str	r0, [r5, #0]
d00413ce:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00413d2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00413d6:	681b      	ldr	r3, [r3, #0]
d00413d8:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d00413da:	4798      	blx	r3
d00413dc:	f894 c00c 	ldrb.w	ip, [r4, #12]
d00413e0:	4601      	mov	r1, r0
d00413e2:	7b62      	ldrb	r2, [r4, #13]
d00413e4:	4b4a      	ldr	r3, [pc, #296]	; (d0041510 <main+0x25c>)
d00413e6:	2064      	movs	r0, #100	; 0x64
d00413e8:	6019      	str	r1, [r3, #0]
d00413ea:	ea4c 2302 	orr.w	r3, ip, r2, lsl #8
d00413ee:	7ba2      	ldrb	r2, [r4, #14]
d00413f0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00413f4:	7be2      	ldrb	r2, [r4, #15]
d00413f6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00413fa:	681b      	ldr	r3, [r3, #0]
d00413fc:	689b      	ldr	r3, [r3, #8]
d00413fe:	4798      	blx	r3
d0041400:	f7fe ff72 	bl	d00402e8 <loadSounds>
d0041404:	4638      	mov	r0, r7
d0041406:	f7ff f8c3 	bl	d0040590 <MusicPlay>
d004140a:	f7ff fe59 	bl	d00410c0 <LoadGraphics>
d004140e:	f7ff febf 	bl	d0041190 <LoadShipGfx>
d0041412:	f7ff ff07 	bl	d0041224 <LoadCommonGameGraphics>
d0041416:	f44f 7220 	mov.w	r2, #640	; 0x280
d004141a:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d004141e:	f44f 2096 	mov.w	r0, #307200	; 0x4b000
d0041422:	60f0      	str	r0, [r6, #12]
d0041424:	80b2      	strh	r2, [r6, #4]
d0041426:	80f3      	strh	r3, [r6, #6]
d0041428:	8133      	strh	r3, [r6, #8]
d004142a:	f000 fa55 	bl	d00418d8 <malloc>
d004142e:	4603      	mov	r3, r0
d0041430:	4838      	ldr	r0, [pc, #224]	; (d0041514 <main+0x260>)
d0041432:	6033      	str	r3, [r6, #0]
d0041434:	6831      	ldr	r1, [r6, #0]
d0041436:	f7fe fe09 	bl	d004004c <LoadPPB>
d004143a:	f7ff faf3 	bl	d0040a24 <initAstroids>
d004143e:	f7ff fcc7 	bl	d0040dd0 <initFlames>
d0041442:	f7ff fcd5 	bl	d0040df0 <initExplodes>
d0041446:	f7ff f8b9 	bl	d00405bc <initShip>
d004144a:	f7ff f989 	bl	d0040760 <initBullets>
d004144e:	4832      	ldr	r0, [pc, #200]	; (d0041518 <main+0x264>)
d0041450:	6007      	str	r7, [r0, #0]
d0041452:	7b23      	ldrb	r3, [r4, #12]
d0041454:	7b62      	ldrb	r2, [r4, #13]
d0041456:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004145a:	7ba2      	ldrb	r2, [r4, #14]
d004145c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041460:	7be2      	ldrb	r2, [r4, #15]
d0041462:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041466:	681b      	ldr	r3, [r3, #0]
d0041468:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d004146a:	4798      	blx	r3
d004146c:	7b23      	ldrb	r3, [r4, #12]
d004146e:	7b62      	ldrb	r2, [r4, #13]
d0041470:	482a      	ldr	r0, [pc, #168]	; (d004151c <main+0x268>)
d0041472:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041476:	7ba2      	ldrb	r2, [r4, #14]
d0041478:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004147c:	7be2      	ldrb	r2, [r4, #15]
d004147e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041482:	681b      	ldr	r3, [r3, #0]
d0041484:	6d1b      	ldr	r3, [r3, #80]	; 0x50
d0041486:	4798      	blx	r3
d0041488:	7b23      	ldrb	r3, [r4, #12]
d004148a:	7b62      	ldrb	r2, [r4, #13]
d004148c:	4630      	mov	r0, r6
d004148e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041492:	7ba2      	ldrb	r2, [r4, #14]
d0041494:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041498:	7be2      	ldrb	r2, [r4, #15]
d004149a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004149e:	681b      	ldr	r3, [r3, #0]
d00414a0:	6a1b      	ldr	r3, [r3, #32]
d00414a2:	4798      	blx	r3
d00414a4:	7b23      	ldrb	r3, [r4, #12]
d00414a6:	7b62      	ldrb	r2, [r4, #13]
d00414a8:	6828      	ldr	r0, [r5, #0]
d00414aa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00414ae:	7ba2      	ldrb	r2, [r4, #14]
d00414b0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00414b4:	7be2      	ldrb	r2, [r4, #15]
d00414b6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00414ba:	681b      	ldr	r3, [r3, #0]
d00414bc:	69db      	ldr	r3, [r3, #28]
d00414be:	4798      	blx	r3
d00414c0:	7b23      	ldrb	r3, [r4, #12]
d00414c2:	7b62      	ldrb	r2, [r4, #13]
d00414c4:	6828      	ldr	r0, [r5, #0]
d00414c6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00414ca:	7ba2      	ldrb	r2, [r4, #14]
d00414cc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00414d0:	7be2      	ldrb	r2, [r4, #15]
d00414d2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00414d6:	681b      	ldr	r3, [r3, #0]
d00414d8:	699b      	ldr	r3, [r3, #24]
d00414da:	4798      	blx	r3
d00414dc:	4a10      	ldr	r2, [pc, #64]	; (d0041520 <main+0x26c>)
d00414de:	f04f 0101 	mov.w	r1, #1
d00414e2:	2300      	movs	r3, #0
d00414e4:	7011      	strb	r1, [r2, #0]
d00414e6:	ee08 3a90 	vmov	s17, r3
d00414ea:	490e      	ldr	r1, [pc, #56]	; (d0041524 <main+0x270>)
d00414ec:	2203      	movs	r2, #3
d00414ee:	f8ca 3000 	str.w	r3, [sl]
d00414f2:	600f      	str	r7, [r1, #0]
d00414f4:	490c      	ldr	r1, [pc, #48]	; (d0041528 <main+0x274>)
d00414f6:	4f0d      	ldr	r7, [pc, #52]	; (d004152c <main+0x278>)
d00414f8:	600b      	str	r3, [r1, #0]
d00414fa:	4b0d      	ldr	r3, [pc, #52]	; (d0041530 <main+0x27c>)
d00414fc:	701a      	strb	r2, [r3, #0]
d00414fe:	e0c1      	b.n	d0041684 <main+0x3d0>
d0041500:	2001f000 	.word	0x2001f000
d0041504:	d0044220 	.word	0xd0044220
d0041508:	43200000 	.word	0x43200000
d004150c:	d004427c 	.word	0xd004427c
d0041510:	d0044278 	.word	0xd0044278
d0041514:	d0042a8c 	.word	0xd0042a8c
d0041518:	d0042fe0 	.word	0xd0042fe0
d004151c:	d0042be0 	.word	0xd0042be0
d0041520:	d0043410 	.word	0xd0043410
d0041524:	d004340c 	.word	0xd004340c
d0041528:	d0044230 	.word	0xd0044230
d004152c:	d0044234 	.word	0xd0044234
d0041530:	d0043409 	.word	0xd0043409
d0041534:	d0044274 	.word	0xd0044274
d0041538:	d0043411 	.word	0xd0043411
d004153c:	d0043840 	.word	0xd0043840
d0041540:	25a0      	movs	r5, #160	; 0xa0
d0041542:	ed83 8a00 	vstr	s16, [r3]
d0041546:	eef4 7ac8 	vcmpe.f32	s15, s16
d004154a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004154e:	f340 8127 	ble.w	d00417a0 <main+0x4ec>
d0041552:	26a0      	movs	r6, #160	; 0xa0
d0041554:	ed8a 8a00 	vstr	s16, [sl]
d0041558:	7b20      	ldrb	r0, [r4, #12]
d004155a:	7b61      	ldrb	r1, [r4, #13]
d004155c:	7ba2      	ldrb	r2, [r4, #14]
d004155e:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0041562:	7be3      	ldrb	r3, [r4, #15]
d0041564:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0041568:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004156c:	681b      	ldr	r3, [r3, #0]
d004156e:	68db      	ldr	r3, [r3, #12]
d0041570:	4798      	blx	r3
d0041572:	f899 3000 	ldrb.w	r3, [r9]
d0041576:	f1c3 0301 	rsb	r3, r3, #1
d004157a:	b2db      	uxtb	r3, r3
d004157c:	f889 3000 	strb.w	r3, [r9]
d0041580:	f899 3000 	ldrb.w	r3, [r9]
d0041584:	7b21      	ldrb	r1, [r4, #12]
d0041586:	7b60      	ldrb	r0, [r4, #13]
d0041588:	7ba2      	ldrb	r2, [r4, #14]
d004158a:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d004158e:	2b00      	cmp	r3, #0
d0041590:	f000 812b 	beq.w	d00417ea <main+0x536>
d0041594:	49b8      	ldr	r1, [pc, #736]	; (d0041878 <main+0x5c4>)
d0041596:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d004159a:	7be3      	ldrb	r3, [r4, #15]
d004159c:	6809      	ldr	r1, [r1, #0]
d004159e:	48b7      	ldr	r0, [pc, #732]	; (d004187c <main+0x5c8>)
d00415a0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00415a4:	6800      	ldr	r0, [r0, #0]
d00415a6:	681b      	ldr	r3, [r3, #0]
d00415a8:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00415aa:	4798      	blx	r3
d00415ac:	7b20      	ldrb	r0, [r4, #12]
d00415ae:	7b61      	ldrb	r1, [r4, #13]
d00415b0:	7ba2      	ldrb	r2, [r4, #14]
d00415b2:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00415b6:	7be3      	ldrb	r3, [r4, #15]
d00415b8:	f8cd b010 	str.w	fp, [sp, #16]
d00415bc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00415c0:	f8dd b00c 	ldr.w	fp, [sp, #12]
d00415c4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00415c8:	685b      	ldr	r3, [r3, #4]
d00415ca:	681b      	ldr	r3, [r3, #0]
d00415cc:	4798      	blx	r3
d00415ce:	f7ff fac9 	bl	d0040b64 <proc_astroids>
d00415d2:	f7ff f995 	bl	d0040900 <doBullets>
d00415d6:	f7ff fc8f 	bl	d0040ef8 <doFlames>
d00415da:	f7ff fd3b 	bl	d0041054 <doExplodes>
d00415de:	7b20      	ldrb	r0, [r4, #12]
d00415e0:	7b61      	ldrb	r1, [r4, #13]
d00415e2:	7ba2      	ldrb	r2, [r4, #14]
d00415e4:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00415e8:	7be3      	ldrb	r3, [r4, #15]
d00415ea:	48a5      	ldr	r0, [pc, #660]	; (d0041880 <main+0x5cc>)
d00415ec:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00415f0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00415f4:	685b      	ldr	r3, [r3, #4]
d00415f6:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00415f8:	4798      	blx	r3
d00415fa:	4ba2      	ldr	r3, [pc, #648]	; (d0041884 <main+0x5d0>)
d00415fc:	49a2      	ldr	r1, [pc, #648]	; (d0041888 <main+0x5d4>)
d00415fe:	4638      	mov	r0, r7
d0041600:	681a      	ldr	r2, [r3, #0]
d0041602:	f000 faf7 	bl	d0041bf4 <siprintf>
d0041606:	220a      	movs	r2, #10
d0041608:	4638      	mov	r0, r7
d004160a:	4611      	mov	r1, r2
d004160c:	f7ff fb9a 	bl	d0040d44 <drawText>
d0041610:	4b9e      	ldr	r3, [pc, #632]	; (d004188c <main+0x5d8>)
d0041612:	499f      	ldr	r1, [pc, #636]	; (d0041890 <main+0x5dc>)
d0041614:	4638      	mov	r0, r7
d0041616:	781a      	ldrb	r2, [r3, #0]
d0041618:	f000 faec 	bl	d0041bf4 <siprintf>
d004161c:	220a      	movs	r2, #10
d004161e:	f44f 71aa 	mov.w	r1, #340	; 0x154
d0041622:	4638      	mov	r0, r7
d0041624:	f7ff fb8e 	bl	d0040d44 <drawText>
d0041628:	4b9a      	ldr	r3, [pc, #616]	; (d0041894 <main+0x5e0>)
d004162a:	499b      	ldr	r1, [pc, #620]	; (d0041898 <main+0x5e4>)
d004162c:	4638      	mov	r0, r7
d004162e:	781a      	ldrb	r2, [r3, #0]
d0041630:	f000 fae0 	bl	d0041bf4 <siprintf>
d0041634:	f44f 7293 	mov.w	r2, #294	; 0x126
d0041638:	210a      	movs	r1, #10
d004163a:	4638      	mov	r0, r7
d004163c:	f7ff fb82 	bl	d0040d44 <drawText>
d0041640:	f04f 0300 	mov.w	r3, #0
d0041644:	4628      	mov	r0, r5
d0041646:	4631      	mov	r1, r6
d0041648:	f888 3004 	strb.w	r3, [r8, #4]
d004164c:	f894 c00c 	ldrb.w	ip, [r4, #12]
d0041650:	7b62      	ldrb	r2, [r4, #13]
d0041652:	f894 e00e 	ldrb.w	lr, [r4, #14]
d0041656:	ea4c 2502 	orr.w	r5, ip, r2, lsl #8
d004165a:	7be3      	ldrb	r3, [r4, #15]
d004165c:	ea45 420e 	orr.w	r2, r5, lr, lsl #16
d0041660:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0041664:	681b      	ldr	r3, [r3, #0]
d0041666:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d0041668:	4798      	blx	r3
d004166a:	7b20      	ldrb	r0, [r4, #12]
d004166c:	7b61      	ldrb	r1, [r4, #13]
d004166e:	7ba2      	ldrb	r2, [r4, #14]
d0041670:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0041674:	7be3      	ldrb	r3, [r4, #15]
d0041676:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004167a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004167e:	681b      	ldr	r3, [r3, #0]
d0041680:	681b      	ldr	r3, [r3, #0]
d0041682:	4798      	blx	r3
d0041684:	7820      	ldrb	r0, [r4, #0]
d0041686:	7861      	ldrb	r1, [r4, #1]
d0041688:	78a2      	ldrb	r2, [r4, #2]
d004168a:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004168e:	78e3      	ldrb	r3, [r4, #3]
d0041690:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0041694:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0041698:	691b      	ldr	r3, [r3, #16]
d004169a:	4798      	blx	r3
d004169c:	4605      	mov	r5, r0
d004169e:	f7fe ffaf 	bl	d0040600 <ShipUpdate>
d00416a2:	f005 0301 	and.w	r3, r5, #1
d00416a6:	ea8b 0b03 	eor.w	fp, fp, r3
d00416aa:	9303      	str	r3, [sp, #12]
d00416ac:	ea15 0f0b 	tst.w	r5, fp
d00416b0:	f040 80a2 	bne.w	d00417f8 <main+0x544>
d00416b4:	07aa      	lsls	r2, r5, #30
d00416b6:	f005 0b02 	and.w	fp, r5, #2
d00416ba:	d57b      	bpl.n	d00417b4 <main+0x500>
d00416bc:	9b04      	ldr	r3, [sp, #16]
d00416be:	455b      	cmp	r3, fp
d00416c0:	d078      	beq.n	d00417b4 <main+0x500>
d00416c2:	231f      	movs	r3, #31
d00416c4:	9306      	str	r3, [sp, #24]
d00416c6:	f899 3000 	ldrb.w	r3, [r9]
d00416ca:	b9a3      	cbnz	r3, d00416f6 <main+0x442>
d00416cc:	f015 0504 	ands.w	r5, r5, #4
d00416d0:	f040 8095 	bne.w	d00417fe <main+0x54a>
d00416d4:	9b07      	ldr	r3, [sp, #28]
d00416d6:	b173      	cbz	r3, d00416f6 <main+0x442>
d00416d8:	7c23      	ldrb	r3, [r4, #16]
d00416da:	2002      	movs	r0, #2
d00416dc:	7c61      	ldrb	r1, [r4, #17]
d00416de:	7ca2      	ldrb	r2, [r4, #18]
d00416e0:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d00416e4:	9507      	str	r5, [sp, #28]
d00416e6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00416ea:	7ce2      	ldrb	r2, [r4, #19]
d00416ec:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00416f0:	689b      	ldr	r3, [r3, #8]
d00416f2:	689b      	ldr	r3, [r3, #8]
d00416f4:	4798      	blx	r3
d00416f6:	4b69      	ldr	r3, [pc, #420]	; (d004189c <main+0x5e8>)
d00416f8:	ed93 7a00 	vldr	s14, [r3]
d00416fc:	4b68      	ldr	r3, [pc, #416]	; (d00418a0 <main+0x5ec>)
d00416fe:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0041702:	edd3 7a00 	vldr	s15, [r3]
d0041706:	4b67      	ldr	r3, [pc, #412]	; (d00418a4 <main+0x5f0>)
d0041708:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004170c:	781b      	ldrb	r3, [r3, #0]
d004170e:	f888 3018 	strb.w	r3, [r8, #24]
d0041712:	ee17 3a10 	vmov	r3, s14
d0041716:	b21a      	sxth	r2, r3
d0041718:	ee17 3a90 	vmov	r3, s15
d004171c:	b21b      	sxth	r3, r3
d004171e:	f8a8 2014 	strh.w	r2, [r8, #20]
d0041722:	f8a8 3016 	strh.w	r3, [r8, #22]
d0041726:	9b05      	ldr	r3, [sp, #20]
d0041728:	2b63      	cmp	r3, #99	; 0x63
d004172a:	d810      	bhi.n	d004174e <main+0x49a>
d004172c:	7b20      	ldrb	r0, [r4, #12]
d004172e:	3301      	adds	r3, #1
d0041730:	7b61      	ldrb	r1, [r4, #13]
d0041732:	7ba2      	ldrb	r2, [r4, #14]
d0041734:	b2dd      	uxtb	r5, r3
d0041736:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004173a:	7be3      	ldrb	r3, [r4, #15]
d004173c:	4628      	mov	r0, r5
d004173e:	9505      	str	r5, [sp, #20]
d0041740:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0041744:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0041748:	681b      	ldr	r3, [r3, #0]
d004174a:	689b      	ldr	r3, [r3, #8]
d004174c:	4798      	blx	r3
d004174e:	4b56      	ldr	r3, [pc, #344]	; (d00418a8 <main+0x5f4>)
d0041750:	4a56      	ldr	r2, [pc, #344]	; (d00418ac <main+0x5f8>)
d0041752:	ed93 7a00 	vldr	s14, [r3]
d0041756:	ed92 6a00 	vldr	s12, [r2]
d004175a:	4a55      	ldr	r2, [pc, #340]	; (d00418b0 <main+0x5fc>)
d004175c:	ee37 7a06 	vadd.f32	s14, s14, s12
d0041760:	edda 7a00 	vldr	s15, [sl]
d0041764:	edd2 6a00 	vldr	s13, [r2]
d0041768:	eeb4 7ac8 	vcmpe.f32	s14, s16
d004176c:	ed83 7a00 	vstr	s14, [r3]
d0041770:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0041774:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041778:	edca 7a00 	vstr	s15, [sl]
d004177c:	f73f aee0 	bgt.w	d0041540 <main+0x28c>
d0041780:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d0041784:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041788:	f140 8096 	bpl.w	d00418b8 <main+0x604>
d004178c:	eef4 7ac8 	vcmpe.f32	s15, s16
d0041790:	4b45      	ldr	r3, [pc, #276]	; (d00418a8 <main+0x5f4>)
d0041792:	2500      	movs	r5, #0
d0041794:	edc3 8a00 	vstr	s17, [r3]
d0041798:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004179c:	f73f aed9 	bgt.w	d0041552 <main+0x29e>
d00417a0:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d00417a4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00417a8:	f140 808b 	bpl.w	d00418c2 <main+0x60e>
d00417ac:	2600      	movs	r6, #0
d00417ae:	edca 8a00 	vstr	s17, [sl]
d00417b2:	e6d1      	b.n	d0041558 <main+0x2a4>
d00417b4:	9b06      	ldr	r3, [sp, #24]
d00417b6:	2b00      	cmp	r3, #0
d00417b8:	d085      	beq.n	d00416c6 <main+0x412>
d00417ba:	3b01      	subs	r3, #1
d00417bc:	b2da      	uxtb	r2, r3
d00417be:	079b      	lsls	r3, r3, #30
d00417c0:	9206      	str	r2, [sp, #24]
d00417c2:	d180      	bne.n	d00416c6 <main+0x412>
d00417c4:	f44f 71e0 	mov.w	r1, #448	; 0x1c0
d00417c8:	f06f 001f 	mvn.w	r0, #31
d00417cc:	f7ff fd5a 	bl	d0041284 <sbx_rng_range>
d00417d0:	f44f 7190 	mov.w	r1, #288	; 0x120
d00417d4:	4606      	mov	r6, r0
d00417d6:	f06f 001f 	mvn.w	r0, #31
d00417da:	f7ff fd53 	bl	d0041284 <sbx_rng_range>
d00417de:	4601      	mov	r1, r0
d00417e0:	b230      	sxth	r0, r6
d00417e2:	b209      	sxth	r1, r1
d00417e4:	f7ff fc1c 	bl	d0041020 <spawnExplode>
d00417e8:	e76d      	b.n	d00416c6 <main+0x412>
d00417ea:	4924      	ldr	r1, [pc, #144]	; (d004187c <main+0x5c8>)
d00417ec:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d00417f0:	7be3      	ldrb	r3, [r4, #15]
d00417f2:	6809      	ldr	r1, [r1, #0]
d00417f4:	4820      	ldr	r0, [pc, #128]	; (d0041878 <main+0x5c4>)
d00417f6:	e6d3      	b.n	d00415a0 <main+0x2ec>
d00417f8:	f7fe ffca 	bl	d0040790 <fireBullet>
d00417fc:	e75a      	b.n	d00416b4 <main+0x400>
d00417fe:	f7ff fb07 	bl	d0040e10 <spawnFlame>
d0041802:	9b07      	ldr	r3, [sp, #28]
d0041804:	b96b      	cbnz	r3, d0041822 <main+0x56e>
d0041806:	7c23      	ldrb	r3, [r4, #16]
d0041808:	2002      	movs	r0, #2
d004180a:	7c62      	ldrb	r2, [r4, #17]
d004180c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041810:	7ca2      	ldrb	r2, [r4, #18]
d0041812:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041816:	7ce2      	ldrb	r2, [r4, #19]
d0041818:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004181c:	689b      	ldr	r3, [r3, #8]
d004181e:	685b      	ldr	r3, [r3, #4]
d0041820:	4798      	blx	r3
d0041822:	f8b8 3014 	ldrh.w	r3, [r8, #20]
d0041826:	f06f 057e 	mvn.w	r5, #126	; 0x7e
d004182a:	7c21      	ldrb	r1, [r4, #16]
d004182c:	3320      	adds	r3, #32
d004182e:	7c62      	ldrb	r2, [r4, #17]
d0041830:	7ca0      	ldrb	r0, [r4, #18]
d0041832:	b21b      	sxth	r3, r3
d0041834:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
d0041838:	3bf0      	subs	r3, #240	; 0xf0
d004183a:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
d004183e:	4a1d      	ldr	r2, [pc, #116]	; (d00418b4 <main+0x600>)
d0041840:	ebc3 13c3 	rsb	r3, r3, r3, lsl #7
d0041844:	fb82 1203 	smull	r1, r2, r2, r3
d0041848:	17d9      	asrs	r1, r3, #31
d004184a:	4413      	add	r3, r2
d004184c:	7ce2      	ldrb	r2, [r4, #19]
d004184e:	ebc1 11e3 	rsb	r1, r1, r3, asr #7
d0041852:	ea40 6202 	orr.w	r2, r0, r2, lsl #24
d0041856:	2002      	movs	r0, #2
d0041858:	b209      	sxth	r1, r1
d004185a:	6893      	ldr	r3, [r2, #8]
d004185c:	297f      	cmp	r1, #127	; 0x7f
d004185e:	699a      	ldr	r2, [r3, #24]
d0041860:	f04f 0301 	mov.w	r3, #1
d0041864:	bfa8      	it	ge
d0041866:	217f      	movge	r1, #127	; 0x7f
d0041868:	9307      	str	r3, [sp, #28]
d004186a:	42a9      	cmp	r1, r5
d004186c:	bfb8      	it	lt
d004186e:	4629      	movlt	r1, r5
d0041870:	b249      	sxtb	r1, r1
d0041872:	4790      	blx	r2
d0041874:	e73f      	b.n	d00416f6 <main+0x442>
d0041876:	bf00      	nop
d0041878:	d0044278 	.word	0xd0044278
d004187c:	d004427c 	.word	0xd004427c
d0041880:	d0043840 	.word	0xd0043840
d0041884:	d004340c 	.word	0xd004340c
d0041888:	d0042a9c 	.word	0xd0042a9c
d004188c:	d0043409 	.word	0xd0043409
d0041890:	d0042aac 	.word	0xd0042aac
d0041894:	d0043410 	.word	0xd0043410
d0041898:	d0042ab8 	.word	0xd0042ab8
d004189c:	d0043868 	.word	0xd0043868
d00418a0:	d004386c 	.word	0xd004386c
d00418a4:	d0043864 	.word	0xd0043864
d00418a8:	d0044230 	.word	0xd0044230
d00418ac:	d0043820 	.word	0xd0043820
d00418b0:	d0043860 	.word	0xd0043860
d00418b4:	88888889 	.word	0x88888889
d00418b8:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d00418bc:	ee17 5a10 	vmov	r5, s14
d00418c0:	e641      	b.n	d0041546 <main+0x292>
d00418c2:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00418c6:	ee17 6a90 	vmov	r6, s15
d00418ca:	e645      	b.n	d0041558 <main+0x2a4>

d00418cc <__errno>:
d00418cc:	4b01      	ldr	r3, [pc, #4]	; (d00418d4 <__errno+0x8>)
d00418ce:	6818      	ldr	r0, [r3, #0]
d00418d0:	4770      	bx	lr
d00418d2:	bf00      	nop
d00418d4:	d0042b60 	.word	0xd0042b60

d00418d8 <malloc>:
d00418d8:	4b02      	ldr	r3, [pc, #8]	; (d00418e4 <malloc+0xc>)
d00418da:	4601      	mov	r1, r0
d00418dc:	6818      	ldr	r0, [r3, #0]
d00418de:	f000 b861 	b.w	d00419a4 <_malloc_r>
d00418e2:	bf00      	nop
d00418e4:	d0042b60 	.word	0xd0042b60

d00418e8 <memcmp>:
d00418e8:	b530      	push	{r4, r5, lr}
d00418ea:	3901      	subs	r1, #1
d00418ec:	2400      	movs	r4, #0
d00418ee:	42a2      	cmp	r2, r4
d00418f0:	d101      	bne.n	d00418f6 <memcmp+0xe>
d00418f2:	2000      	movs	r0, #0
d00418f4:	e005      	b.n	d0041902 <memcmp+0x1a>
d00418f6:	5d03      	ldrb	r3, [r0, r4]
d00418f8:	3401      	adds	r4, #1
d00418fa:	5d0d      	ldrb	r5, [r1, r4]
d00418fc:	42ab      	cmp	r3, r5
d00418fe:	d0f6      	beq.n	d00418ee <memcmp+0x6>
d0041900:	1b58      	subs	r0, r3, r5
d0041902:	bd30      	pop	{r4, r5, pc}

d0041904 <_free_r>:
d0041904:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0041906:	2900      	cmp	r1, #0
d0041908:	d048      	beq.n	d004199c <_free_r+0x98>
d004190a:	f851 3c04 	ldr.w	r3, [r1, #-4]
d004190e:	9001      	str	r0, [sp, #4]
d0041910:	2b00      	cmp	r3, #0
d0041912:	f1a1 0404 	sub.w	r4, r1, #4
d0041916:	bfb8      	it	lt
d0041918:	18e4      	addlt	r4, r4, r3
d004191a:	f000 fb69 	bl	d0041ff0 <__malloc_lock>
d004191e:	4a20      	ldr	r2, [pc, #128]	; (d00419a0 <_free_r+0x9c>)
d0041920:	9801      	ldr	r0, [sp, #4]
d0041922:	6813      	ldr	r3, [r2, #0]
d0041924:	4615      	mov	r5, r2
d0041926:	b933      	cbnz	r3, d0041936 <_free_r+0x32>
d0041928:	6063      	str	r3, [r4, #4]
d004192a:	6014      	str	r4, [r2, #0]
d004192c:	b003      	add	sp, #12
d004192e:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0041932:	f000 bb63 	b.w	d0041ffc <__malloc_unlock>
d0041936:	42a3      	cmp	r3, r4
d0041938:	d90b      	bls.n	d0041952 <_free_r+0x4e>
d004193a:	6821      	ldr	r1, [r4, #0]
d004193c:	1862      	adds	r2, r4, r1
d004193e:	4293      	cmp	r3, r2
d0041940:	bf04      	itt	eq
d0041942:	681a      	ldreq	r2, [r3, #0]
d0041944:	685b      	ldreq	r3, [r3, #4]
d0041946:	6063      	str	r3, [r4, #4]
d0041948:	bf04      	itt	eq
d004194a:	1852      	addeq	r2, r2, r1
d004194c:	6022      	streq	r2, [r4, #0]
d004194e:	602c      	str	r4, [r5, #0]
d0041950:	e7ec      	b.n	d004192c <_free_r+0x28>
d0041952:	461a      	mov	r2, r3
d0041954:	685b      	ldr	r3, [r3, #4]
d0041956:	b10b      	cbz	r3, d004195c <_free_r+0x58>
d0041958:	42a3      	cmp	r3, r4
d004195a:	d9fa      	bls.n	d0041952 <_free_r+0x4e>
d004195c:	6811      	ldr	r1, [r2, #0]
d004195e:	1855      	adds	r5, r2, r1
d0041960:	42a5      	cmp	r5, r4
d0041962:	d10b      	bne.n	d004197c <_free_r+0x78>
d0041964:	6824      	ldr	r4, [r4, #0]
d0041966:	4421      	add	r1, r4
d0041968:	1854      	adds	r4, r2, r1
d004196a:	42a3      	cmp	r3, r4
d004196c:	6011      	str	r1, [r2, #0]
d004196e:	d1dd      	bne.n	d004192c <_free_r+0x28>
d0041970:	681c      	ldr	r4, [r3, #0]
d0041972:	685b      	ldr	r3, [r3, #4]
d0041974:	6053      	str	r3, [r2, #4]
d0041976:	4421      	add	r1, r4
d0041978:	6011      	str	r1, [r2, #0]
d004197a:	e7d7      	b.n	d004192c <_free_r+0x28>
d004197c:	d902      	bls.n	d0041984 <_free_r+0x80>
d004197e:	230c      	movs	r3, #12
d0041980:	6003      	str	r3, [r0, #0]
d0041982:	e7d3      	b.n	d004192c <_free_r+0x28>
d0041984:	6825      	ldr	r5, [r4, #0]
d0041986:	1961      	adds	r1, r4, r5
d0041988:	428b      	cmp	r3, r1
d004198a:	bf04      	itt	eq
d004198c:	6819      	ldreq	r1, [r3, #0]
d004198e:	685b      	ldreq	r3, [r3, #4]
d0041990:	6063      	str	r3, [r4, #4]
d0041992:	bf04      	itt	eq
d0041994:	1949      	addeq	r1, r1, r5
d0041996:	6021      	streq	r1, [r4, #0]
d0041998:	6054      	str	r4, [r2, #4]
d004199a:	e7c7      	b.n	d004192c <_free_r+0x28>
d004199c:	b003      	add	sp, #12
d004199e:	bd30      	pop	{r4, r5, pc}
d00419a0:	d0043414 	.word	0xd0043414

d00419a4 <_malloc_r>:
d00419a4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00419a6:	1ccd      	adds	r5, r1, #3
d00419a8:	f025 0503 	bic.w	r5, r5, #3
d00419ac:	3508      	adds	r5, #8
d00419ae:	2d0c      	cmp	r5, #12
d00419b0:	bf38      	it	cc
d00419b2:	250c      	movcc	r5, #12
d00419b4:	2d00      	cmp	r5, #0
d00419b6:	4606      	mov	r6, r0
d00419b8:	db01      	blt.n	d00419be <_malloc_r+0x1a>
d00419ba:	42a9      	cmp	r1, r5
d00419bc:	d903      	bls.n	d00419c6 <_malloc_r+0x22>
d00419be:	230c      	movs	r3, #12
d00419c0:	6033      	str	r3, [r6, #0]
d00419c2:	2000      	movs	r0, #0
d00419c4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00419c6:	f000 fb13 	bl	d0041ff0 <__malloc_lock>
d00419ca:	4921      	ldr	r1, [pc, #132]	; (d0041a50 <_malloc_r+0xac>)
d00419cc:	680a      	ldr	r2, [r1, #0]
d00419ce:	4614      	mov	r4, r2
d00419d0:	b99c      	cbnz	r4, d00419fa <_malloc_r+0x56>
d00419d2:	4f20      	ldr	r7, [pc, #128]	; (d0041a54 <_malloc_r+0xb0>)
d00419d4:	683b      	ldr	r3, [r7, #0]
d00419d6:	b923      	cbnz	r3, d00419e2 <_malloc_r+0x3e>
d00419d8:	4621      	mov	r1, r4
d00419da:	4630      	mov	r0, r6
d00419dc:	f7fe fbdc 	bl	d0040198 <_sbrk_r>
d00419e0:	6038      	str	r0, [r7, #0]
d00419e2:	4629      	mov	r1, r5
d00419e4:	4630      	mov	r0, r6
d00419e6:	f7fe fbd7 	bl	d0040198 <_sbrk_r>
d00419ea:	1c43      	adds	r3, r0, #1
d00419ec:	d123      	bne.n	d0041a36 <_malloc_r+0x92>
d00419ee:	230c      	movs	r3, #12
d00419f0:	6033      	str	r3, [r6, #0]
d00419f2:	4630      	mov	r0, r6
d00419f4:	f000 fb02 	bl	d0041ffc <__malloc_unlock>
d00419f8:	e7e3      	b.n	d00419c2 <_malloc_r+0x1e>
d00419fa:	6823      	ldr	r3, [r4, #0]
d00419fc:	1b5b      	subs	r3, r3, r5
d00419fe:	d417      	bmi.n	d0041a30 <_malloc_r+0x8c>
d0041a00:	2b0b      	cmp	r3, #11
d0041a02:	d903      	bls.n	d0041a0c <_malloc_r+0x68>
d0041a04:	6023      	str	r3, [r4, #0]
d0041a06:	441c      	add	r4, r3
d0041a08:	6025      	str	r5, [r4, #0]
d0041a0a:	e004      	b.n	d0041a16 <_malloc_r+0x72>
d0041a0c:	6863      	ldr	r3, [r4, #4]
d0041a0e:	42a2      	cmp	r2, r4
d0041a10:	bf0c      	ite	eq
d0041a12:	600b      	streq	r3, [r1, #0]
d0041a14:	6053      	strne	r3, [r2, #4]
d0041a16:	4630      	mov	r0, r6
d0041a18:	f000 faf0 	bl	d0041ffc <__malloc_unlock>
d0041a1c:	f104 000b 	add.w	r0, r4, #11
d0041a20:	1d23      	adds	r3, r4, #4
d0041a22:	f020 0007 	bic.w	r0, r0, #7
d0041a26:	1ac2      	subs	r2, r0, r3
d0041a28:	d0cc      	beq.n	d00419c4 <_malloc_r+0x20>
d0041a2a:	1a1b      	subs	r3, r3, r0
d0041a2c:	50a3      	str	r3, [r4, r2]
d0041a2e:	e7c9      	b.n	d00419c4 <_malloc_r+0x20>
d0041a30:	4622      	mov	r2, r4
d0041a32:	6864      	ldr	r4, [r4, #4]
d0041a34:	e7cc      	b.n	d00419d0 <_malloc_r+0x2c>
d0041a36:	1cc4      	adds	r4, r0, #3
d0041a38:	f024 0403 	bic.w	r4, r4, #3
d0041a3c:	42a0      	cmp	r0, r4
d0041a3e:	d0e3      	beq.n	d0041a08 <_malloc_r+0x64>
d0041a40:	1a21      	subs	r1, r4, r0
d0041a42:	4630      	mov	r0, r6
d0041a44:	f7fe fba8 	bl	d0040198 <_sbrk_r>
d0041a48:	3001      	adds	r0, #1
d0041a4a:	d1dd      	bne.n	d0041a08 <_malloc_r+0x64>
d0041a4c:	e7cf      	b.n	d00419ee <_malloc_r+0x4a>
d0041a4e:	bf00      	nop
d0041a50:	d0043414 	.word	0xd0043414
d0041a54:	d0043418 	.word	0xd0043418

d0041a58 <setbuf>:
d0041a58:	2900      	cmp	r1, #0
d0041a5a:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0041a5e:	bf0c      	ite	eq
d0041a60:	2202      	moveq	r2, #2
d0041a62:	2200      	movne	r2, #0
d0041a64:	f000 b800 	b.w	d0041a68 <setvbuf>

d0041a68 <setvbuf>:
d0041a68:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0041a6c:	461d      	mov	r5, r3
d0041a6e:	4b5d      	ldr	r3, [pc, #372]	; (d0041be4 <setvbuf+0x17c>)
d0041a70:	681f      	ldr	r7, [r3, #0]
d0041a72:	4604      	mov	r4, r0
d0041a74:	460e      	mov	r6, r1
d0041a76:	4690      	mov	r8, r2
d0041a78:	b127      	cbz	r7, d0041a84 <setvbuf+0x1c>
d0041a7a:	69bb      	ldr	r3, [r7, #24]
d0041a7c:	b913      	cbnz	r3, d0041a84 <setvbuf+0x1c>
d0041a7e:	4638      	mov	r0, r7
d0041a80:	f000 f9f2 	bl	d0041e68 <__sinit>
d0041a84:	4b58      	ldr	r3, [pc, #352]	; (d0041be8 <setvbuf+0x180>)
d0041a86:	429c      	cmp	r4, r3
d0041a88:	d167      	bne.n	d0041b5a <setvbuf+0xf2>
d0041a8a:	687c      	ldr	r4, [r7, #4]
d0041a8c:	f1b8 0f02 	cmp.w	r8, #2
d0041a90:	d006      	beq.n	d0041aa0 <setvbuf+0x38>
d0041a92:	f1b8 0f01 	cmp.w	r8, #1
d0041a96:	f200 809f 	bhi.w	d0041bd8 <setvbuf+0x170>
d0041a9a:	2d00      	cmp	r5, #0
d0041a9c:	f2c0 809c 	blt.w	d0041bd8 <setvbuf+0x170>
d0041aa0:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0041aa2:	07db      	lsls	r3, r3, #31
d0041aa4:	d405      	bmi.n	d0041ab2 <setvbuf+0x4a>
d0041aa6:	89a3      	ldrh	r3, [r4, #12]
d0041aa8:	0598      	lsls	r0, r3, #22
d0041aaa:	d402      	bmi.n	d0041ab2 <setvbuf+0x4a>
d0041aac:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0041aae:	f000 fa79 	bl	d0041fa4 <__retarget_lock_acquire_recursive>
d0041ab2:	4621      	mov	r1, r4
d0041ab4:	4638      	mov	r0, r7
d0041ab6:	f000 f943 	bl	d0041d40 <_fflush_r>
d0041aba:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0041abc:	b141      	cbz	r1, d0041ad0 <setvbuf+0x68>
d0041abe:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0041ac2:	4299      	cmp	r1, r3
d0041ac4:	d002      	beq.n	d0041acc <setvbuf+0x64>
d0041ac6:	4638      	mov	r0, r7
d0041ac8:	f7ff ff1c 	bl	d0041904 <_free_r>
d0041acc:	2300      	movs	r3, #0
d0041ace:	6363      	str	r3, [r4, #52]	; 0x34
d0041ad0:	2300      	movs	r3, #0
d0041ad2:	61a3      	str	r3, [r4, #24]
d0041ad4:	6063      	str	r3, [r4, #4]
d0041ad6:	89a3      	ldrh	r3, [r4, #12]
d0041ad8:	0619      	lsls	r1, r3, #24
d0041ada:	d503      	bpl.n	d0041ae4 <setvbuf+0x7c>
d0041adc:	6921      	ldr	r1, [r4, #16]
d0041ade:	4638      	mov	r0, r7
d0041ae0:	f7ff ff10 	bl	d0041904 <_free_r>
d0041ae4:	89a3      	ldrh	r3, [r4, #12]
d0041ae6:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d0041aea:	f023 0303 	bic.w	r3, r3, #3
d0041aee:	f1b8 0f02 	cmp.w	r8, #2
d0041af2:	81a3      	strh	r3, [r4, #12]
d0041af4:	d06c      	beq.n	d0041bd0 <setvbuf+0x168>
d0041af6:	ab01      	add	r3, sp, #4
d0041af8:	466a      	mov	r2, sp
d0041afa:	4621      	mov	r1, r4
d0041afc:	4638      	mov	r0, r7
d0041afe:	f000 fa53 	bl	d0041fa8 <__swhatbuf_r>
d0041b02:	89a3      	ldrh	r3, [r4, #12]
d0041b04:	4318      	orrs	r0, r3
d0041b06:	81a0      	strh	r0, [r4, #12]
d0041b08:	2d00      	cmp	r5, #0
d0041b0a:	d130      	bne.n	d0041b6e <setvbuf+0x106>
d0041b0c:	9d00      	ldr	r5, [sp, #0]
d0041b0e:	4628      	mov	r0, r5
d0041b10:	f7ff fee2 	bl	d00418d8 <malloc>
d0041b14:	4606      	mov	r6, r0
d0041b16:	2800      	cmp	r0, #0
d0041b18:	d155      	bne.n	d0041bc6 <setvbuf+0x15e>
d0041b1a:	f8dd 9000 	ldr.w	r9, [sp]
d0041b1e:	45a9      	cmp	r9, r5
d0041b20:	d14a      	bne.n	d0041bb8 <setvbuf+0x150>
d0041b22:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0041b26:	2200      	movs	r2, #0
d0041b28:	60a2      	str	r2, [r4, #8]
d0041b2a:	f104 0247 	add.w	r2, r4, #71	; 0x47
d0041b2e:	6022      	str	r2, [r4, #0]
d0041b30:	6122      	str	r2, [r4, #16]
d0041b32:	2201      	movs	r2, #1
d0041b34:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0041b38:	6162      	str	r2, [r4, #20]
d0041b3a:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0041b3c:	f043 0302 	orr.w	r3, r3, #2
d0041b40:	07d2      	lsls	r2, r2, #31
d0041b42:	81a3      	strh	r3, [r4, #12]
d0041b44:	d405      	bmi.n	d0041b52 <setvbuf+0xea>
d0041b46:	f413 7f00 	tst.w	r3, #512	; 0x200
d0041b4a:	d102      	bne.n	d0041b52 <setvbuf+0xea>
d0041b4c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0041b4e:	f000 fa2a 	bl	d0041fa6 <__retarget_lock_release_recursive>
d0041b52:	4628      	mov	r0, r5
d0041b54:	b003      	add	sp, #12
d0041b56:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0041b5a:	4b24      	ldr	r3, [pc, #144]	; (d0041bec <setvbuf+0x184>)
d0041b5c:	429c      	cmp	r4, r3
d0041b5e:	d101      	bne.n	d0041b64 <setvbuf+0xfc>
d0041b60:	68bc      	ldr	r4, [r7, #8]
d0041b62:	e793      	b.n	d0041a8c <setvbuf+0x24>
d0041b64:	4b22      	ldr	r3, [pc, #136]	; (d0041bf0 <setvbuf+0x188>)
d0041b66:	429c      	cmp	r4, r3
d0041b68:	bf08      	it	eq
d0041b6a:	68fc      	ldreq	r4, [r7, #12]
d0041b6c:	e78e      	b.n	d0041a8c <setvbuf+0x24>
d0041b6e:	2e00      	cmp	r6, #0
d0041b70:	d0cd      	beq.n	d0041b0e <setvbuf+0xa6>
d0041b72:	69bb      	ldr	r3, [r7, #24]
d0041b74:	b913      	cbnz	r3, d0041b7c <setvbuf+0x114>
d0041b76:	4638      	mov	r0, r7
d0041b78:	f000 f976 	bl	d0041e68 <__sinit>
d0041b7c:	f1b8 0f01 	cmp.w	r8, #1
d0041b80:	bf08      	it	eq
d0041b82:	89a3      	ldrheq	r3, [r4, #12]
d0041b84:	6026      	str	r6, [r4, #0]
d0041b86:	bf04      	itt	eq
d0041b88:	f043 0301 	orreq.w	r3, r3, #1
d0041b8c:	81a3      	strheq	r3, [r4, #12]
d0041b8e:	89a2      	ldrh	r2, [r4, #12]
d0041b90:	f012 0308 	ands.w	r3, r2, #8
d0041b94:	e9c4 6504 	strd	r6, r5, [r4, #16]
d0041b98:	d01c      	beq.n	d0041bd4 <setvbuf+0x16c>
d0041b9a:	07d3      	lsls	r3, r2, #31
d0041b9c:	bf41      	itttt	mi
d0041b9e:	2300      	movmi	r3, #0
d0041ba0:	426d      	negmi	r5, r5
d0041ba2:	60a3      	strmi	r3, [r4, #8]
d0041ba4:	61a5      	strmi	r5, [r4, #24]
d0041ba6:	bf58      	it	pl
d0041ba8:	60a5      	strpl	r5, [r4, #8]
d0041baa:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0041bac:	f015 0501 	ands.w	r5, r5, #1
d0041bb0:	d115      	bne.n	d0041bde <setvbuf+0x176>
d0041bb2:	f412 7f00 	tst.w	r2, #512	; 0x200
d0041bb6:	e7c8      	b.n	d0041b4a <setvbuf+0xe2>
d0041bb8:	4648      	mov	r0, r9
d0041bba:	f7ff fe8d 	bl	d00418d8 <malloc>
d0041bbe:	4606      	mov	r6, r0
d0041bc0:	2800      	cmp	r0, #0
d0041bc2:	d0ae      	beq.n	d0041b22 <setvbuf+0xba>
d0041bc4:	464d      	mov	r5, r9
d0041bc6:	89a3      	ldrh	r3, [r4, #12]
d0041bc8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0041bcc:	81a3      	strh	r3, [r4, #12]
d0041bce:	e7d0      	b.n	d0041b72 <setvbuf+0x10a>
d0041bd0:	2500      	movs	r5, #0
d0041bd2:	e7a8      	b.n	d0041b26 <setvbuf+0xbe>
d0041bd4:	60a3      	str	r3, [r4, #8]
d0041bd6:	e7e8      	b.n	d0041baa <setvbuf+0x142>
d0041bd8:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0041bdc:	e7b9      	b.n	d0041b52 <setvbuf+0xea>
d0041bde:	2500      	movs	r5, #0
d0041be0:	e7b7      	b.n	d0041b52 <setvbuf+0xea>
d0041be2:	bf00      	nop
d0041be4:	d0042b60 	.word	0xd0042b60
d0041be8:	d0042ae4 	.word	0xd0042ae4
d0041bec:	d0042b04 	.word	0xd0042b04
d0041bf0:	d0042ac4 	.word	0xd0042ac4

d0041bf4 <siprintf>:
d0041bf4:	b40e      	push	{r1, r2, r3}
d0041bf6:	b500      	push	{lr}
d0041bf8:	b09c      	sub	sp, #112	; 0x70
d0041bfa:	ab1d      	add	r3, sp, #116	; 0x74
d0041bfc:	9002      	str	r0, [sp, #8]
d0041bfe:	9006      	str	r0, [sp, #24]
d0041c00:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d0041c04:	4809      	ldr	r0, [pc, #36]	; (d0041c2c <siprintf+0x38>)
d0041c06:	9107      	str	r1, [sp, #28]
d0041c08:	9104      	str	r1, [sp, #16]
d0041c0a:	4909      	ldr	r1, [pc, #36]	; (d0041c30 <siprintf+0x3c>)
d0041c0c:	f853 2b04 	ldr.w	r2, [r3], #4
d0041c10:	9105      	str	r1, [sp, #20]
d0041c12:	6800      	ldr	r0, [r0, #0]
d0041c14:	9301      	str	r3, [sp, #4]
d0041c16:	a902      	add	r1, sp, #8
d0041c18:	f000 fa52 	bl	d00420c0 <_svfiprintf_r>
d0041c1c:	9b02      	ldr	r3, [sp, #8]
d0041c1e:	2200      	movs	r2, #0
d0041c20:	701a      	strb	r2, [r3, #0]
d0041c22:	b01c      	add	sp, #112	; 0x70
d0041c24:	f85d eb04 	ldr.w	lr, [sp], #4
d0041c28:	b003      	add	sp, #12
d0041c2a:	4770      	bx	lr
d0041c2c:	d0042b60 	.word	0xd0042b60
d0041c30:	ffff0208 	.word	0xffff0208

d0041c34 <__sflush_r>:
d0041c34:	898a      	ldrh	r2, [r1, #12]
d0041c36:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0041c3a:	4605      	mov	r5, r0
d0041c3c:	0710      	lsls	r0, r2, #28
d0041c3e:	460c      	mov	r4, r1
d0041c40:	d458      	bmi.n	d0041cf4 <__sflush_r+0xc0>
d0041c42:	684b      	ldr	r3, [r1, #4]
d0041c44:	2b00      	cmp	r3, #0
d0041c46:	dc05      	bgt.n	d0041c54 <__sflush_r+0x20>
d0041c48:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0041c4a:	2b00      	cmp	r3, #0
d0041c4c:	dc02      	bgt.n	d0041c54 <__sflush_r+0x20>
d0041c4e:	2000      	movs	r0, #0
d0041c50:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0041c54:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0041c56:	2e00      	cmp	r6, #0
d0041c58:	d0f9      	beq.n	d0041c4e <__sflush_r+0x1a>
d0041c5a:	2300      	movs	r3, #0
d0041c5c:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0041c60:	682f      	ldr	r7, [r5, #0]
d0041c62:	602b      	str	r3, [r5, #0]
d0041c64:	d032      	beq.n	d0041ccc <__sflush_r+0x98>
d0041c66:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0041c68:	89a3      	ldrh	r3, [r4, #12]
d0041c6a:	075a      	lsls	r2, r3, #29
d0041c6c:	d505      	bpl.n	d0041c7a <__sflush_r+0x46>
d0041c6e:	6863      	ldr	r3, [r4, #4]
d0041c70:	1ac0      	subs	r0, r0, r3
d0041c72:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0041c74:	b10b      	cbz	r3, d0041c7a <__sflush_r+0x46>
d0041c76:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0041c78:	1ac0      	subs	r0, r0, r3
d0041c7a:	2300      	movs	r3, #0
d0041c7c:	4602      	mov	r2, r0
d0041c7e:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0041c80:	6a21      	ldr	r1, [r4, #32]
d0041c82:	4628      	mov	r0, r5
d0041c84:	47b0      	blx	r6
d0041c86:	1c43      	adds	r3, r0, #1
d0041c88:	89a3      	ldrh	r3, [r4, #12]
d0041c8a:	d106      	bne.n	d0041c9a <__sflush_r+0x66>
d0041c8c:	6829      	ldr	r1, [r5, #0]
d0041c8e:	291d      	cmp	r1, #29
d0041c90:	d82c      	bhi.n	d0041cec <__sflush_r+0xb8>
d0041c92:	4a2a      	ldr	r2, [pc, #168]	; (d0041d3c <__sflush_r+0x108>)
d0041c94:	40ca      	lsrs	r2, r1
d0041c96:	07d6      	lsls	r6, r2, #31
d0041c98:	d528      	bpl.n	d0041cec <__sflush_r+0xb8>
d0041c9a:	2200      	movs	r2, #0
d0041c9c:	6062      	str	r2, [r4, #4]
d0041c9e:	04d9      	lsls	r1, r3, #19
d0041ca0:	6922      	ldr	r2, [r4, #16]
d0041ca2:	6022      	str	r2, [r4, #0]
d0041ca4:	d504      	bpl.n	d0041cb0 <__sflush_r+0x7c>
d0041ca6:	1c42      	adds	r2, r0, #1
d0041ca8:	d101      	bne.n	d0041cae <__sflush_r+0x7a>
d0041caa:	682b      	ldr	r3, [r5, #0]
d0041cac:	b903      	cbnz	r3, d0041cb0 <__sflush_r+0x7c>
d0041cae:	6560      	str	r0, [r4, #84]	; 0x54
d0041cb0:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0041cb2:	602f      	str	r7, [r5, #0]
d0041cb4:	2900      	cmp	r1, #0
d0041cb6:	d0ca      	beq.n	d0041c4e <__sflush_r+0x1a>
d0041cb8:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0041cbc:	4299      	cmp	r1, r3
d0041cbe:	d002      	beq.n	d0041cc6 <__sflush_r+0x92>
d0041cc0:	4628      	mov	r0, r5
d0041cc2:	f7ff fe1f 	bl	d0041904 <_free_r>
d0041cc6:	2000      	movs	r0, #0
d0041cc8:	6360      	str	r0, [r4, #52]	; 0x34
d0041cca:	e7c1      	b.n	d0041c50 <__sflush_r+0x1c>
d0041ccc:	6a21      	ldr	r1, [r4, #32]
d0041cce:	2301      	movs	r3, #1
d0041cd0:	4628      	mov	r0, r5
d0041cd2:	47b0      	blx	r6
d0041cd4:	1c41      	adds	r1, r0, #1
d0041cd6:	d1c7      	bne.n	d0041c68 <__sflush_r+0x34>
d0041cd8:	682b      	ldr	r3, [r5, #0]
d0041cda:	2b00      	cmp	r3, #0
d0041cdc:	d0c4      	beq.n	d0041c68 <__sflush_r+0x34>
d0041cde:	2b1d      	cmp	r3, #29
d0041ce0:	d001      	beq.n	d0041ce6 <__sflush_r+0xb2>
d0041ce2:	2b16      	cmp	r3, #22
d0041ce4:	d101      	bne.n	d0041cea <__sflush_r+0xb6>
d0041ce6:	602f      	str	r7, [r5, #0]
d0041ce8:	e7b1      	b.n	d0041c4e <__sflush_r+0x1a>
d0041cea:	89a3      	ldrh	r3, [r4, #12]
d0041cec:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0041cf0:	81a3      	strh	r3, [r4, #12]
d0041cf2:	e7ad      	b.n	d0041c50 <__sflush_r+0x1c>
d0041cf4:	690f      	ldr	r7, [r1, #16]
d0041cf6:	2f00      	cmp	r7, #0
d0041cf8:	d0a9      	beq.n	d0041c4e <__sflush_r+0x1a>
d0041cfa:	0793      	lsls	r3, r2, #30
d0041cfc:	680e      	ldr	r6, [r1, #0]
d0041cfe:	bf08      	it	eq
d0041d00:	694b      	ldreq	r3, [r1, #20]
d0041d02:	600f      	str	r7, [r1, #0]
d0041d04:	bf18      	it	ne
d0041d06:	2300      	movne	r3, #0
d0041d08:	eba6 0807 	sub.w	r8, r6, r7
d0041d0c:	608b      	str	r3, [r1, #8]
d0041d0e:	f1b8 0f00 	cmp.w	r8, #0
d0041d12:	dd9c      	ble.n	d0041c4e <__sflush_r+0x1a>
d0041d14:	6a21      	ldr	r1, [r4, #32]
d0041d16:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0041d18:	4643      	mov	r3, r8
d0041d1a:	463a      	mov	r2, r7
d0041d1c:	4628      	mov	r0, r5
d0041d1e:	47b0      	blx	r6
d0041d20:	2800      	cmp	r0, #0
d0041d22:	dc06      	bgt.n	d0041d32 <__sflush_r+0xfe>
d0041d24:	89a3      	ldrh	r3, [r4, #12]
d0041d26:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0041d2a:	81a3      	strh	r3, [r4, #12]
d0041d2c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0041d30:	e78e      	b.n	d0041c50 <__sflush_r+0x1c>
d0041d32:	4407      	add	r7, r0
d0041d34:	eba8 0800 	sub.w	r8, r8, r0
d0041d38:	e7e9      	b.n	d0041d0e <__sflush_r+0xda>
d0041d3a:	bf00      	nop
d0041d3c:	20400001 	.word	0x20400001

d0041d40 <_fflush_r>:
d0041d40:	b538      	push	{r3, r4, r5, lr}
d0041d42:	690b      	ldr	r3, [r1, #16]
d0041d44:	4605      	mov	r5, r0
d0041d46:	460c      	mov	r4, r1
d0041d48:	b913      	cbnz	r3, d0041d50 <_fflush_r+0x10>
d0041d4a:	2500      	movs	r5, #0
d0041d4c:	4628      	mov	r0, r5
d0041d4e:	bd38      	pop	{r3, r4, r5, pc}
d0041d50:	b118      	cbz	r0, d0041d5a <_fflush_r+0x1a>
d0041d52:	6983      	ldr	r3, [r0, #24]
d0041d54:	b90b      	cbnz	r3, d0041d5a <_fflush_r+0x1a>
d0041d56:	f000 f887 	bl	d0041e68 <__sinit>
d0041d5a:	4b14      	ldr	r3, [pc, #80]	; (d0041dac <_fflush_r+0x6c>)
d0041d5c:	429c      	cmp	r4, r3
d0041d5e:	d11b      	bne.n	d0041d98 <_fflush_r+0x58>
d0041d60:	686c      	ldr	r4, [r5, #4]
d0041d62:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0041d66:	2b00      	cmp	r3, #0
d0041d68:	d0ef      	beq.n	d0041d4a <_fflush_r+0xa>
d0041d6a:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0041d6c:	07d0      	lsls	r0, r2, #31
d0041d6e:	d404      	bmi.n	d0041d7a <_fflush_r+0x3a>
d0041d70:	0599      	lsls	r1, r3, #22
d0041d72:	d402      	bmi.n	d0041d7a <_fflush_r+0x3a>
d0041d74:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0041d76:	f000 f915 	bl	d0041fa4 <__retarget_lock_acquire_recursive>
d0041d7a:	4628      	mov	r0, r5
d0041d7c:	4621      	mov	r1, r4
d0041d7e:	f7ff ff59 	bl	d0041c34 <__sflush_r>
d0041d82:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0041d84:	07da      	lsls	r2, r3, #31
d0041d86:	4605      	mov	r5, r0
d0041d88:	d4e0      	bmi.n	d0041d4c <_fflush_r+0xc>
d0041d8a:	89a3      	ldrh	r3, [r4, #12]
d0041d8c:	059b      	lsls	r3, r3, #22
d0041d8e:	d4dd      	bmi.n	d0041d4c <_fflush_r+0xc>
d0041d90:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0041d92:	f000 f908 	bl	d0041fa6 <__retarget_lock_release_recursive>
d0041d96:	e7d9      	b.n	d0041d4c <_fflush_r+0xc>
d0041d98:	4b05      	ldr	r3, [pc, #20]	; (d0041db0 <_fflush_r+0x70>)
d0041d9a:	429c      	cmp	r4, r3
d0041d9c:	d101      	bne.n	d0041da2 <_fflush_r+0x62>
d0041d9e:	68ac      	ldr	r4, [r5, #8]
d0041da0:	e7df      	b.n	d0041d62 <_fflush_r+0x22>
d0041da2:	4b04      	ldr	r3, [pc, #16]	; (d0041db4 <_fflush_r+0x74>)
d0041da4:	429c      	cmp	r4, r3
d0041da6:	bf08      	it	eq
d0041da8:	68ec      	ldreq	r4, [r5, #12]
d0041daa:	e7da      	b.n	d0041d62 <_fflush_r+0x22>
d0041dac:	d0042ae4 	.word	0xd0042ae4
d0041db0:	d0042b04 	.word	0xd0042b04
d0041db4:	d0042ac4 	.word	0xd0042ac4

d0041db8 <std>:
d0041db8:	2300      	movs	r3, #0
d0041dba:	b510      	push	{r4, lr}
d0041dbc:	4604      	mov	r4, r0
d0041dbe:	e9c0 3300 	strd	r3, r3, [r0]
d0041dc2:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0041dc6:	6083      	str	r3, [r0, #8]
d0041dc8:	8181      	strh	r1, [r0, #12]
d0041dca:	6643      	str	r3, [r0, #100]	; 0x64
d0041dcc:	81c2      	strh	r2, [r0, #14]
d0041dce:	6183      	str	r3, [r0, #24]
d0041dd0:	4619      	mov	r1, r3
d0041dd2:	2208      	movs	r2, #8
d0041dd4:	305c      	adds	r0, #92	; 0x5c
d0041dd6:	f7fe f931 	bl	d004003c <memset>
d0041dda:	4b05      	ldr	r3, [pc, #20]	; (d0041df0 <std+0x38>)
d0041ddc:	6263      	str	r3, [r4, #36]	; 0x24
d0041dde:	4b05      	ldr	r3, [pc, #20]	; (d0041df4 <std+0x3c>)
d0041de0:	62a3      	str	r3, [r4, #40]	; 0x28
d0041de2:	4b05      	ldr	r3, [pc, #20]	; (d0041df8 <std+0x40>)
d0041de4:	62e3      	str	r3, [r4, #44]	; 0x2c
d0041de6:	4b05      	ldr	r3, [pc, #20]	; (d0041dfc <std+0x44>)
d0041de8:	6224      	str	r4, [r4, #32]
d0041dea:	6323      	str	r3, [r4, #48]	; 0x30
d0041dec:	bd10      	pop	{r4, pc}
d0041dee:	bf00      	nop
d0041df0:	d00425e9 	.word	0xd00425e9
d0041df4:	d004260b 	.word	0xd004260b
d0041df8:	d0042643 	.word	0xd0042643
d0041dfc:	d0042667 	.word	0xd0042667

d0041e00 <_cleanup_r>:
d0041e00:	4901      	ldr	r1, [pc, #4]	; (d0041e08 <_cleanup_r+0x8>)
d0041e02:	f000 b8af 	b.w	d0041f64 <_fwalk_reent>
d0041e06:	bf00      	nop
d0041e08:	d0041d41 	.word	0xd0041d41

d0041e0c <__sfmoreglue>:
d0041e0c:	b570      	push	{r4, r5, r6, lr}
d0041e0e:	1e4a      	subs	r2, r1, #1
d0041e10:	2568      	movs	r5, #104	; 0x68
d0041e12:	4355      	muls	r5, r2
d0041e14:	460e      	mov	r6, r1
d0041e16:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0041e1a:	f7ff fdc3 	bl	d00419a4 <_malloc_r>
d0041e1e:	4604      	mov	r4, r0
d0041e20:	b140      	cbz	r0, d0041e34 <__sfmoreglue+0x28>
d0041e22:	2100      	movs	r1, #0
d0041e24:	e9c0 1600 	strd	r1, r6, [r0]
d0041e28:	300c      	adds	r0, #12
d0041e2a:	60a0      	str	r0, [r4, #8]
d0041e2c:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0041e30:	f7fe f904 	bl	d004003c <memset>
d0041e34:	4620      	mov	r0, r4
d0041e36:	bd70      	pop	{r4, r5, r6, pc}

d0041e38 <__sfp_lock_acquire>:
d0041e38:	4801      	ldr	r0, [pc, #4]	; (d0041e40 <__sfp_lock_acquire+0x8>)
d0041e3a:	f000 b8b3 	b.w	d0041fa4 <__retarget_lock_acquire_recursive>
d0041e3e:	bf00      	nop
d0041e40:	d0044288 	.word	0xd0044288

d0041e44 <__sfp_lock_release>:
d0041e44:	4801      	ldr	r0, [pc, #4]	; (d0041e4c <__sfp_lock_release+0x8>)
d0041e46:	f000 b8ae 	b.w	d0041fa6 <__retarget_lock_release_recursive>
d0041e4a:	bf00      	nop
d0041e4c:	d0044288 	.word	0xd0044288

d0041e50 <__sinit_lock_acquire>:
d0041e50:	4801      	ldr	r0, [pc, #4]	; (d0041e58 <__sinit_lock_acquire+0x8>)
d0041e52:	f000 b8a7 	b.w	d0041fa4 <__retarget_lock_acquire_recursive>
d0041e56:	bf00      	nop
d0041e58:	d0044283 	.word	0xd0044283

d0041e5c <__sinit_lock_release>:
d0041e5c:	4801      	ldr	r0, [pc, #4]	; (d0041e64 <__sinit_lock_release+0x8>)
d0041e5e:	f000 b8a2 	b.w	d0041fa6 <__retarget_lock_release_recursive>
d0041e62:	bf00      	nop
d0041e64:	d0044283 	.word	0xd0044283

d0041e68 <__sinit>:
d0041e68:	b510      	push	{r4, lr}
d0041e6a:	4604      	mov	r4, r0
d0041e6c:	f7ff fff0 	bl	d0041e50 <__sinit_lock_acquire>
d0041e70:	69a3      	ldr	r3, [r4, #24]
d0041e72:	b11b      	cbz	r3, d0041e7c <__sinit+0x14>
d0041e74:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0041e78:	f7ff bff0 	b.w	d0041e5c <__sinit_lock_release>
d0041e7c:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0041e80:	6523      	str	r3, [r4, #80]	; 0x50
d0041e82:	4b13      	ldr	r3, [pc, #76]	; (d0041ed0 <__sinit+0x68>)
d0041e84:	4a13      	ldr	r2, [pc, #76]	; (d0041ed4 <__sinit+0x6c>)
d0041e86:	681b      	ldr	r3, [r3, #0]
d0041e88:	62a2      	str	r2, [r4, #40]	; 0x28
d0041e8a:	42a3      	cmp	r3, r4
d0041e8c:	bf04      	itt	eq
d0041e8e:	2301      	moveq	r3, #1
d0041e90:	61a3      	streq	r3, [r4, #24]
d0041e92:	4620      	mov	r0, r4
d0041e94:	f000 f820 	bl	d0041ed8 <__sfp>
d0041e98:	6060      	str	r0, [r4, #4]
d0041e9a:	4620      	mov	r0, r4
d0041e9c:	f000 f81c 	bl	d0041ed8 <__sfp>
d0041ea0:	60a0      	str	r0, [r4, #8]
d0041ea2:	4620      	mov	r0, r4
d0041ea4:	f000 f818 	bl	d0041ed8 <__sfp>
d0041ea8:	2200      	movs	r2, #0
d0041eaa:	60e0      	str	r0, [r4, #12]
d0041eac:	2104      	movs	r1, #4
d0041eae:	6860      	ldr	r0, [r4, #4]
d0041eb0:	f7ff ff82 	bl	d0041db8 <std>
d0041eb4:	68a0      	ldr	r0, [r4, #8]
d0041eb6:	2201      	movs	r2, #1
d0041eb8:	2109      	movs	r1, #9
d0041eba:	f7ff ff7d 	bl	d0041db8 <std>
d0041ebe:	68e0      	ldr	r0, [r4, #12]
d0041ec0:	2202      	movs	r2, #2
d0041ec2:	2112      	movs	r1, #18
d0041ec4:	f7ff ff78 	bl	d0041db8 <std>
d0041ec8:	2301      	movs	r3, #1
d0041eca:	61a3      	str	r3, [r4, #24]
d0041ecc:	e7d2      	b.n	d0041e74 <__sinit+0xc>
d0041ece:	bf00      	nop
d0041ed0:	d0042850 	.word	0xd0042850
d0041ed4:	d0041e01 	.word	0xd0041e01

d0041ed8 <__sfp>:
d0041ed8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0041eda:	4607      	mov	r7, r0
d0041edc:	f7ff ffac 	bl	d0041e38 <__sfp_lock_acquire>
d0041ee0:	4b1e      	ldr	r3, [pc, #120]	; (d0041f5c <__sfp+0x84>)
d0041ee2:	681e      	ldr	r6, [r3, #0]
d0041ee4:	69b3      	ldr	r3, [r6, #24]
d0041ee6:	b913      	cbnz	r3, d0041eee <__sfp+0x16>
d0041ee8:	4630      	mov	r0, r6
d0041eea:	f7ff ffbd 	bl	d0041e68 <__sinit>
d0041eee:	3648      	adds	r6, #72	; 0x48
d0041ef0:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0041ef4:	3b01      	subs	r3, #1
d0041ef6:	d503      	bpl.n	d0041f00 <__sfp+0x28>
d0041ef8:	6833      	ldr	r3, [r6, #0]
d0041efa:	b30b      	cbz	r3, d0041f40 <__sfp+0x68>
d0041efc:	6836      	ldr	r6, [r6, #0]
d0041efe:	e7f7      	b.n	d0041ef0 <__sfp+0x18>
d0041f00:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0041f04:	b9d5      	cbnz	r5, d0041f3c <__sfp+0x64>
d0041f06:	4b16      	ldr	r3, [pc, #88]	; (d0041f60 <__sfp+0x88>)
d0041f08:	60e3      	str	r3, [r4, #12]
d0041f0a:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0041f0e:	6665      	str	r5, [r4, #100]	; 0x64
d0041f10:	f000 f847 	bl	d0041fa2 <__retarget_lock_init_recursive>
d0041f14:	f7ff ff96 	bl	d0041e44 <__sfp_lock_release>
d0041f18:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0041f1c:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0041f20:	6025      	str	r5, [r4, #0]
d0041f22:	61a5      	str	r5, [r4, #24]
d0041f24:	2208      	movs	r2, #8
d0041f26:	4629      	mov	r1, r5
d0041f28:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0041f2c:	f7fe f886 	bl	d004003c <memset>
d0041f30:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0041f34:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0041f38:	4620      	mov	r0, r4
d0041f3a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0041f3c:	3468      	adds	r4, #104	; 0x68
d0041f3e:	e7d9      	b.n	d0041ef4 <__sfp+0x1c>
d0041f40:	2104      	movs	r1, #4
d0041f42:	4638      	mov	r0, r7
d0041f44:	f7ff ff62 	bl	d0041e0c <__sfmoreglue>
d0041f48:	4604      	mov	r4, r0
d0041f4a:	6030      	str	r0, [r6, #0]
d0041f4c:	2800      	cmp	r0, #0
d0041f4e:	d1d5      	bne.n	d0041efc <__sfp+0x24>
d0041f50:	f7ff ff78 	bl	d0041e44 <__sfp_lock_release>
d0041f54:	230c      	movs	r3, #12
d0041f56:	603b      	str	r3, [r7, #0]
d0041f58:	e7ee      	b.n	d0041f38 <__sfp+0x60>
d0041f5a:	bf00      	nop
d0041f5c:	d0042850 	.word	0xd0042850
d0041f60:	ffff0001 	.word	0xffff0001

d0041f64 <_fwalk_reent>:
d0041f64:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0041f68:	4606      	mov	r6, r0
d0041f6a:	4688      	mov	r8, r1
d0041f6c:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0041f70:	2700      	movs	r7, #0
d0041f72:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0041f76:	f1b9 0901 	subs.w	r9, r9, #1
d0041f7a:	d505      	bpl.n	d0041f88 <_fwalk_reent+0x24>
d0041f7c:	6824      	ldr	r4, [r4, #0]
d0041f7e:	2c00      	cmp	r4, #0
d0041f80:	d1f7      	bne.n	d0041f72 <_fwalk_reent+0xe>
d0041f82:	4638      	mov	r0, r7
d0041f84:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0041f88:	89ab      	ldrh	r3, [r5, #12]
d0041f8a:	2b01      	cmp	r3, #1
d0041f8c:	d907      	bls.n	d0041f9e <_fwalk_reent+0x3a>
d0041f8e:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0041f92:	3301      	adds	r3, #1
d0041f94:	d003      	beq.n	d0041f9e <_fwalk_reent+0x3a>
d0041f96:	4629      	mov	r1, r5
d0041f98:	4630      	mov	r0, r6
d0041f9a:	47c0      	blx	r8
d0041f9c:	4307      	orrs	r7, r0
d0041f9e:	3568      	adds	r5, #104	; 0x68
d0041fa0:	e7e9      	b.n	d0041f76 <_fwalk_reent+0x12>

d0041fa2 <__retarget_lock_init_recursive>:
d0041fa2:	4770      	bx	lr

d0041fa4 <__retarget_lock_acquire_recursive>:
d0041fa4:	4770      	bx	lr

d0041fa6 <__retarget_lock_release_recursive>:
d0041fa6:	4770      	bx	lr

d0041fa8 <__swhatbuf_r>:
d0041fa8:	b570      	push	{r4, r5, r6, lr}
d0041faa:	460e      	mov	r6, r1
d0041fac:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0041fb0:	2900      	cmp	r1, #0
d0041fb2:	b096      	sub	sp, #88	; 0x58
d0041fb4:	4614      	mov	r4, r2
d0041fb6:	461d      	mov	r5, r3
d0041fb8:	da07      	bge.n	d0041fca <__swhatbuf_r+0x22>
d0041fba:	2300      	movs	r3, #0
d0041fbc:	602b      	str	r3, [r5, #0]
d0041fbe:	89b3      	ldrh	r3, [r6, #12]
d0041fc0:	061a      	lsls	r2, r3, #24
d0041fc2:	d410      	bmi.n	d0041fe6 <__swhatbuf_r+0x3e>
d0041fc4:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0041fc8:	e00e      	b.n	d0041fe8 <__swhatbuf_r+0x40>
d0041fca:	466a      	mov	r2, sp
d0041fcc:	f000 fb60 	bl	d0042690 <_fstat_r>
d0041fd0:	2800      	cmp	r0, #0
d0041fd2:	dbf2      	blt.n	d0041fba <__swhatbuf_r+0x12>
d0041fd4:	9a01      	ldr	r2, [sp, #4]
d0041fd6:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0041fda:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0041fde:	425a      	negs	r2, r3
d0041fe0:	415a      	adcs	r2, r3
d0041fe2:	602a      	str	r2, [r5, #0]
d0041fe4:	e7ee      	b.n	d0041fc4 <__swhatbuf_r+0x1c>
d0041fe6:	2340      	movs	r3, #64	; 0x40
d0041fe8:	2000      	movs	r0, #0
d0041fea:	6023      	str	r3, [r4, #0]
d0041fec:	b016      	add	sp, #88	; 0x58
d0041fee:	bd70      	pop	{r4, r5, r6, pc}

d0041ff0 <__malloc_lock>:
d0041ff0:	4801      	ldr	r0, [pc, #4]	; (d0041ff8 <__malloc_lock+0x8>)
d0041ff2:	f7ff bfd7 	b.w	d0041fa4 <__retarget_lock_acquire_recursive>
d0041ff6:	bf00      	nop
d0041ff8:	d0044284 	.word	0xd0044284

d0041ffc <__malloc_unlock>:
d0041ffc:	4801      	ldr	r0, [pc, #4]	; (d0042004 <__malloc_unlock+0x8>)
d0041ffe:	f7ff bfd2 	b.w	d0041fa6 <__retarget_lock_release_recursive>
d0042002:	bf00      	nop
d0042004:	d0044284 	.word	0xd0044284

d0042008 <__ssputs_r>:
d0042008:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d004200c:	688e      	ldr	r6, [r1, #8]
d004200e:	429e      	cmp	r6, r3
d0042010:	4682      	mov	sl, r0
d0042012:	460c      	mov	r4, r1
d0042014:	4690      	mov	r8, r2
d0042016:	461f      	mov	r7, r3
d0042018:	d838      	bhi.n	d004208c <__ssputs_r+0x84>
d004201a:	898a      	ldrh	r2, [r1, #12]
d004201c:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0042020:	d032      	beq.n	d0042088 <__ssputs_r+0x80>
d0042022:	6825      	ldr	r5, [r4, #0]
d0042024:	6909      	ldr	r1, [r1, #16]
d0042026:	eba5 0901 	sub.w	r9, r5, r1
d004202a:	6965      	ldr	r5, [r4, #20]
d004202c:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0042030:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d0042034:	3301      	adds	r3, #1
d0042036:	444b      	add	r3, r9
d0042038:	106d      	asrs	r5, r5, #1
d004203a:	429d      	cmp	r5, r3
d004203c:	bf38      	it	cc
d004203e:	461d      	movcc	r5, r3
d0042040:	0553      	lsls	r3, r2, #21
d0042042:	d531      	bpl.n	d00420a8 <__ssputs_r+0xa0>
d0042044:	4629      	mov	r1, r5
d0042046:	f7ff fcad 	bl	d00419a4 <_malloc_r>
d004204a:	4606      	mov	r6, r0
d004204c:	b950      	cbnz	r0, d0042064 <__ssputs_r+0x5c>
d004204e:	230c      	movs	r3, #12
d0042050:	f8ca 3000 	str.w	r3, [sl]
d0042054:	89a3      	ldrh	r3, [r4, #12]
d0042056:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d004205a:	81a3      	strh	r3, [r4, #12]
d004205c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0042060:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0042064:	6921      	ldr	r1, [r4, #16]
d0042066:	464a      	mov	r2, r9
d0042068:	f000 fb8a 	bl	d0042780 <memcpy>
d004206c:	89a3      	ldrh	r3, [r4, #12]
d004206e:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d0042072:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0042076:	81a3      	strh	r3, [r4, #12]
d0042078:	6126      	str	r6, [r4, #16]
d004207a:	6165      	str	r5, [r4, #20]
d004207c:	444e      	add	r6, r9
d004207e:	eba5 0509 	sub.w	r5, r5, r9
d0042082:	6026      	str	r6, [r4, #0]
d0042084:	60a5      	str	r5, [r4, #8]
d0042086:	463e      	mov	r6, r7
d0042088:	42be      	cmp	r6, r7
d004208a:	d900      	bls.n	d004208e <__ssputs_r+0x86>
d004208c:	463e      	mov	r6, r7
d004208e:	4632      	mov	r2, r6
d0042090:	6820      	ldr	r0, [r4, #0]
d0042092:	4641      	mov	r1, r8
d0042094:	f000 fb82 	bl	d004279c <memmove>
d0042098:	68a3      	ldr	r3, [r4, #8]
d004209a:	6822      	ldr	r2, [r4, #0]
d004209c:	1b9b      	subs	r3, r3, r6
d004209e:	4432      	add	r2, r6
d00420a0:	60a3      	str	r3, [r4, #8]
d00420a2:	6022      	str	r2, [r4, #0]
d00420a4:	2000      	movs	r0, #0
d00420a6:	e7db      	b.n	d0042060 <__ssputs_r+0x58>
d00420a8:	462a      	mov	r2, r5
d00420aa:	f000 fb91 	bl	d00427d0 <_realloc_r>
d00420ae:	4606      	mov	r6, r0
d00420b0:	2800      	cmp	r0, #0
d00420b2:	d1e1      	bne.n	d0042078 <__ssputs_r+0x70>
d00420b4:	6921      	ldr	r1, [r4, #16]
d00420b6:	4650      	mov	r0, sl
d00420b8:	f7ff fc24 	bl	d0041904 <_free_r>
d00420bc:	e7c7      	b.n	d004204e <__ssputs_r+0x46>
	...

d00420c0 <_svfiprintf_r>:
d00420c0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00420c4:	4698      	mov	r8, r3
d00420c6:	898b      	ldrh	r3, [r1, #12]
d00420c8:	061b      	lsls	r3, r3, #24
d00420ca:	b09d      	sub	sp, #116	; 0x74
d00420cc:	4607      	mov	r7, r0
d00420ce:	460d      	mov	r5, r1
d00420d0:	4614      	mov	r4, r2
d00420d2:	d50e      	bpl.n	d00420f2 <_svfiprintf_r+0x32>
d00420d4:	690b      	ldr	r3, [r1, #16]
d00420d6:	b963      	cbnz	r3, d00420f2 <_svfiprintf_r+0x32>
d00420d8:	2140      	movs	r1, #64	; 0x40
d00420da:	f7ff fc63 	bl	d00419a4 <_malloc_r>
d00420de:	6028      	str	r0, [r5, #0]
d00420e0:	6128      	str	r0, [r5, #16]
d00420e2:	b920      	cbnz	r0, d00420ee <_svfiprintf_r+0x2e>
d00420e4:	230c      	movs	r3, #12
d00420e6:	603b      	str	r3, [r7, #0]
d00420e8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00420ec:	e0d1      	b.n	d0042292 <_svfiprintf_r+0x1d2>
d00420ee:	2340      	movs	r3, #64	; 0x40
d00420f0:	616b      	str	r3, [r5, #20]
d00420f2:	2300      	movs	r3, #0
d00420f4:	9309      	str	r3, [sp, #36]	; 0x24
d00420f6:	2320      	movs	r3, #32
d00420f8:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d00420fc:	f8cd 800c 	str.w	r8, [sp, #12]
d0042100:	2330      	movs	r3, #48	; 0x30
d0042102:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d00422ac <_svfiprintf_r+0x1ec>
d0042106:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d004210a:	f04f 0901 	mov.w	r9, #1
d004210e:	4623      	mov	r3, r4
d0042110:	469a      	mov	sl, r3
d0042112:	f813 2b01 	ldrb.w	r2, [r3], #1
d0042116:	b10a      	cbz	r2, d004211c <_svfiprintf_r+0x5c>
d0042118:	2a25      	cmp	r2, #37	; 0x25
d004211a:	d1f9      	bne.n	d0042110 <_svfiprintf_r+0x50>
d004211c:	ebba 0b04 	subs.w	fp, sl, r4
d0042120:	d00b      	beq.n	d004213a <_svfiprintf_r+0x7a>
d0042122:	465b      	mov	r3, fp
d0042124:	4622      	mov	r2, r4
d0042126:	4629      	mov	r1, r5
d0042128:	4638      	mov	r0, r7
d004212a:	f7ff ff6d 	bl	d0042008 <__ssputs_r>
d004212e:	3001      	adds	r0, #1
d0042130:	f000 80aa 	beq.w	d0042288 <_svfiprintf_r+0x1c8>
d0042134:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0042136:	445a      	add	r2, fp
d0042138:	9209      	str	r2, [sp, #36]	; 0x24
d004213a:	f89a 3000 	ldrb.w	r3, [sl]
d004213e:	2b00      	cmp	r3, #0
d0042140:	f000 80a2 	beq.w	d0042288 <_svfiprintf_r+0x1c8>
d0042144:	2300      	movs	r3, #0
d0042146:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d004214a:	e9cd 2305 	strd	r2, r3, [sp, #20]
d004214e:	f10a 0a01 	add.w	sl, sl, #1
d0042152:	9304      	str	r3, [sp, #16]
d0042154:	9307      	str	r3, [sp, #28]
d0042156:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d004215a:	931a      	str	r3, [sp, #104]	; 0x68
d004215c:	4654      	mov	r4, sl
d004215e:	2205      	movs	r2, #5
d0042160:	f814 1b01 	ldrb.w	r1, [r4], #1
d0042164:	4851      	ldr	r0, [pc, #324]	; (d00422ac <_svfiprintf_r+0x1ec>)
d0042166:	f000 fabb 	bl	d00426e0 <memchr>
d004216a:	9a04      	ldr	r2, [sp, #16]
d004216c:	b9d8      	cbnz	r0, d00421a6 <_svfiprintf_r+0xe6>
d004216e:	06d0      	lsls	r0, r2, #27
d0042170:	bf44      	itt	mi
d0042172:	2320      	movmi	r3, #32
d0042174:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0042178:	0711      	lsls	r1, r2, #28
d004217a:	bf44      	itt	mi
d004217c:	232b      	movmi	r3, #43	; 0x2b
d004217e:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0042182:	f89a 3000 	ldrb.w	r3, [sl]
d0042186:	2b2a      	cmp	r3, #42	; 0x2a
d0042188:	d015      	beq.n	d00421b6 <_svfiprintf_r+0xf6>
d004218a:	9a07      	ldr	r2, [sp, #28]
d004218c:	4654      	mov	r4, sl
d004218e:	2000      	movs	r0, #0
d0042190:	f04f 0c0a 	mov.w	ip, #10
d0042194:	4621      	mov	r1, r4
d0042196:	f811 3b01 	ldrb.w	r3, [r1], #1
d004219a:	3b30      	subs	r3, #48	; 0x30
d004219c:	2b09      	cmp	r3, #9
d004219e:	d94e      	bls.n	d004223e <_svfiprintf_r+0x17e>
d00421a0:	b1b0      	cbz	r0, d00421d0 <_svfiprintf_r+0x110>
d00421a2:	9207      	str	r2, [sp, #28]
d00421a4:	e014      	b.n	d00421d0 <_svfiprintf_r+0x110>
d00421a6:	eba0 0308 	sub.w	r3, r0, r8
d00421aa:	fa09 f303 	lsl.w	r3, r9, r3
d00421ae:	4313      	orrs	r3, r2
d00421b0:	9304      	str	r3, [sp, #16]
d00421b2:	46a2      	mov	sl, r4
d00421b4:	e7d2      	b.n	d004215c <_svfiprintf_r+0x9c>
d00421b6:	9b03      	ldr	r3, [sp, #12]
d00421b8:	1d19      	adds	r1, r3, #4
d00421ba:	681b      	ldr	r3, [r3, #0]
d00421bc:	9103      	str	r1, [sp, #12]
d00421be:	2b00      	cmp	r3, #0
d00421c0:	bfbb      	ittet	lt
d00421c2:	425b      	neglt	r3, r3
d00421c4:	f042 0202 	orrlt.w	r2, r2, #2
d00421c8:	9307      	strge	r3, [sp, #28]
d00421ca:	9307      	strlt	r3, [sp, #28]
d00421cc:	bfb8      	it	lt
d00421ce:	9204      	strlt	r2, [sp, #16]
d00421d0:	7823      	ldrb	r3, [r4, #0]
d00421d2:	2b2e      	cmp	r3, #46	; 0x2e
d00421d4:	d10c      	bne.n	d00421f0 <_svfiprintf_r+0x130>
d00421d6:	7863      	ldrb	r3, [r4, #1]
d00421d8:	2b2a      	cmp	r3, #42	; 0x2a
d00421da:	d135      	bne.n	d0042248 <_svfiprintf_r+0x188>
d00421dc:	9b03      	ldr	r3, [sp, #12]
d00421de:	1d1a      	adds	r2, r3, #4
d00421e0:	681b      	ldr	r3, [r3, #0]
d00421e2:	9203      	str	r2, [sp, #12]
d00421e4:	2b00      	cmp	r3, #0
d00421e6:	bfb8      	it	lt
d00421e8:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d00421ec:	3402      	adds	r4, #2
d00421ee:	9305      	str	r3, [sp, #20]
d00421f0:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d00422bc <_svfiprintf_r+0x1fc>
d00421f4:	7821      	ldrb	r1, [r4, #0]
d00421f6:	2203      	movs	r2, #3
d00421f8:	4650      	mov	r0, sl
d00421fa:	f000 fa71 	bl	d00426e0 <memchr>
d00421fe:	b140      	cbz	r0, d0042212 <_svfiprintf_r+0x152>
d0042200:	2340      	movs	r3, #64	; 0x40
d0042202:	eba0 000a 	sub.w	r0, r0, sl
d0042206:	fa03 f000 	lsl.w	r0, r3, r0
d004220a:	9b04      	ldr	r3, [sp, #16]
d004220c:	4303      	orrs	r3, r0
d004220e:	3401      	adds	r4, #1
d0042210:	9304      	str	r3, [sp, #16]
d0042212:	f814 1b01 	ldrb.w	r1, [r4], #1
d0042216:	4826      	ldr	r0, [pc, #152]	; (d00422b0 <_svfiprintf_r+0x1f0>)
d0042218:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d004221c:	2206      	movs	r2, #6
d004221e:	f000 fa5f 	bl	d00426e0 <memchr>
d0042222:	2800      	cmp	r0, #0
d0042224:	d038      	beq.n	d0042298 <_svfiprintf_r+0x1d8>
d0042226:	4b23      	ldr	r3, [pc, #140]	; (d00422b4 <_svfiprintf_r+0x1f4>)
d0042228:	bb1b      	cbnz	r3, d0042272 <_svfiprintf_r+0x1b2>
d004222a:	9b03      	ldr	r3, [sp, #12]
d004222c:	3307      	adds	r3, #7
d004222e:	f023 0307 	bic.w	r3, r3, #7
d0042232:	3308      	adds	r3, #8
d0042234:	9303      	str	r3, [sp, #12]
d0042236:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0042238:	4433      	add	r3, r6
d004223a:	9309      	str	r3, [sp, #36]	; 0x24
d004223c:	e767      	b.n	d004210e <_svfiprintf_r+0x4e>
d004223e:	fb0c 3202 	mla	r2, ip, r2, r3
d0042242:	460c      	mov	r4, r1
d0042244:	2001      	movs	r0, #1
d0042246:	e7a5      	b.n	d0042194 <_svfiprintf_r+0xd4>
d0042248:	2300      	movs	r3, #0
d004224a:	3401      	adds	r4, #1
d004224c:	9305      	str	r3, [sp, #20]
d004224e:	4619      	mov	r1, r3
d0042250:	f04f 0c0a 	mov.w	ip, #10
d0042254:	4620      	mov	r0, r4
d0042256:	f810 2b01 	ldrb.w	r2, [r0], #1
d004225a:	3a30      	subs	r2, #48	; 0x30
d004225c:	2a09      	cmp	r2, #9
d004225e:	d903      	bls.n	d0042268 <_svfiprintf_r+0x1a8>
d0042260:	2b00      	cmp	r3, #0
d0042262:	d0c5      	beq.n	d00421f0 <_svfiprintf_r+0x130>
d0042264:	9105      	str	r1, [sp, #20]
d0042266:	e7c3      	b.n	d00421f0 <_svfiprintf_r+0x130>
d0042268:	fb0c 2101 	mla	r1, ip, r1, r2
d004226c:	4604      	mov	r4, r0
d004226e:	2301      	movs	r3, #1
d0042270:	e7f0      	b.n	d0042254 <_svfiprintf_r+0x194>
d0042272:	ab03      	add	r3, sp, #12
d0042274:	9300      	str	r3, [sp, #0]
d0042276:	462a      	mov	r2, r5
d0042278:	4b0f      	ldr	r3, [pc, #60]	; (d00422b8 <_svfiprintf_r+0x1f8>)
d004227a:	a904      	add	r1, sp, #16
d004227c:	4638      	mov	r0, r7
d004227e:	f3af 8000 	nop.w
d0042282:	1c42      	adds	r2, r0, #1
d0042284:	4606      	mov	r6, r0
d0042286:	d1d6      	bne.n	d0042236 <_svfiprintf_r+0x176>
d0042288:	89ab      	ldrh	r3, [r5, #12]
d004228a:	065b      	lsls	r3, r3, #25
d004228c:	f53f af2c 	bmi.w	d00420e8 <_svfiprintf_r+0x28>
d0042290:	9809      	ldr	r0, [sp, #36]	; 0x24
d0042292:	b01d      	add	sp, #116	; 0x74
d0042294:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0042298:	ab03      	add	r3, sp, #12
d004229a:	9300      	str	r3, [sp, #0]
d004229c:	462a      	mov	r2, r5
d004229e:	4b06      	ldr	r3, [pc, #24]	; (d00422b8 <_svfiprintf_r+0x1f8>)
d00422a0:	a904      	add	r1, sp, #16
d00422a2:	4638      	mov	r0, r7
d00422a4:	f000 f87a 	bl	d004239c <_printf_i>
d00422a8:	e7eb      	b.n	d0042282 <_svfiprintf_r+0x1c2>
d00422aa:	bf00      	nop
d00422ac:	d0042b24 	.word	0xd0042b24
d00422b0:	d0042b2e 	.word	0xd0042b2e
d00422b4:	00000000 	.word	0x00000000
d00422b8:	d0042009 	.word	0xd0042009
d00422bc:	d0042b2a 	.word	0xd0042b2a

d00422c0 <_printf_common>:
d00422c0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00422c4:	4616      	mov	r6, r2
d00422c6:	4699      	mov	r9, r3
d00422c8:	688a      	ldr	r2, [r1, #8]
d00422ca:	690b      	ldr	r3, [r1, #16]
d00422cc:	f8dd 8020 	ldr.w	r8, [sp, #32]
d00422d0:	4293      	cmp	r3, r2
d00422d2:	bfb8      	it	lt
d00422d4:	4613      	movlt	r3, r2
d00422d6:	6033      	str	r3, [r6, #0]
d00422d8:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d00422dc:	4607      	mov	r7, r0
d00422de:	460c      	mov	r4, r1
d00422e0:	b10a      	cbz	r2, d00422e6 <_printf_common+0x26>
d00422e2:	3301      	adds	r3, #1
d00422e4:	6033      	str	r3, [r6, #0]
d00422e6:	6823      	ldr	r3, [r4, #0]
d00422e8:	0699      	lsls	r1, r3, #26
d00422ea:	bf42      	ittt	mi
d00422ec:	6833      	ldrmi	r3, [r6, #0]
d00422ee:	3302      	addmi	r3, #2
d00422f0:	6033      	strmi	r3, [r6, #0]
d00422f2:	6825      	ldr	r5, [r4, #0]
d00422f4:	f015 0506 	ands.w	r5, r5, #6
d00422f8:	d106      	bne.n	d0042308 <_printf_common+0x48>
d00422fa:	f104 0a19 	add.w	sl, r4, #25
d00422fe:	68e3      	ldr	r3, [r4, #12]
d0042300:	6832      	ldr	r2, [r6, #0]
d0042302:	1a9b      	subs	r3, r3, r2
d0042304:	42ab      	cmp	r3, r5
d0042306:	dc26      	bgt.n	d0042356 <_printf_common+0x96>
d0042308:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d004230c:	1e13      	subs	r3, r2, #0
d004230e:	6822      	ldr	r2, [r4, #0]
d0042310:	bf18      	it	ne
d0042312:	2301      	movne	r3, #1
d0042314:	0692      	lsls	r2, r2, #26
d0042316:	d42b      	bmi.n	d0042370 <_printf_common+0xb0>
d0042318:	f104 0243 	add.w	r2, r4, #67	; 0x43
d004231c:	4649      	mov	r1, r9
d004231e:	4638      	mov	r0, r7
d0042320:	47c0      	blx	r8
d0042322:	3001      	adds	r0, #1
d0042324:	d01e      	beq.n	d0042364 <_printf_common+0xa4>
d0042326:	6823      	ldr	r3, [r4, #0]
d0042328:	68e5      	ldr	r5, [r4, #12]
d004232a:	6832      	ldr	r2, [r6, #0]
d004232c:	f003 0306 	and.w	r3, r3, #6
d0042330:	2b04      	cmp	r3, #4
d0042332:	bf08      	it	eq
d0042334:	1aad      	subeq	r5, r5, r2
d0042336:	68a3      	ldr	r3, [r4, #8]
d0042338:	6922      	ldr	r2, [r4, #16]
d004233a:	bf0c      	ite	eq
d004233c:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d0042340:	2500      	movne	r5, #0
d0042342:	4293      	cmp	r3, r2
d0042344:	bfc4      	itt	gt
d0042346:	1a9b      	subgt	r3, r3, r2
d0042348:	18ed      	addgt	r5, r5, r3
d004234a:	2600      	movs	r6, #0
d004234c:	341a      	adds	r4, #26
d004234e:	42b5      	cmp	r5, r6
d0042350:	d11a      	bne.n	d0042388 <_printf_common+0xc8>
d0042352:	2000      	movs	r0, #0
d0042354:	e008      	b.n	d0042368 <_printf_common+0xa8>
d0042356:	2301      	movs	r3, #1
d0042358:	4652      	mov	r2, sl
d004235a:	4649      	mov	r1, r9
d004235c:	4638      	mov	r0, r7
d004235e:	47c0      	blx	r8
d0042360:	3001      	adds	r0, #1
d0042362:	d103      	bne.n	d004236c <_printf_common+0xac>
d0042364:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0042368:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d004236c:	3501      	adds	r5, #1
d004236e:	e7c6      	b.n	d00422fe <_printf_common+0x3e>
d0042370:	18e1      	adds	r1, r4, r3
d0042372:	1c5a      	adds	r2, r3, #1
d0042374:	2030      	movs	r0, #48	; 0x30
d0042376:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d004237a:	4422      	add	r2, r4
d004237c:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d0042380:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d0042384:	3302      	adds	r3, #2
d0042386:	e7c7      	b.n	d0042318 <_printf_common+0x58>
d0042388:	2301      	movs	r3, #1
d004238a:	4622      	mov	r2, r4
d004238c:	4649      	mov	r1, r9
d004238e:	4638      	mov	r0, r7
d0042390:	47c0      	blx	r8
d0042392:	3001      	adds	r0, #1
d0042394:	d0e6      	beq.n	d0042364 <_printf_common+0xa4>
d0042396:	3601      	adds	r6, #1
d0042398:	e7d9      	b.n	d004234e <_printf_common+0x8e>
	...

d004239c <_printf_i>:
d004239c:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d00423a0:	460c      	mov	r4, r1
d00423a2:	4691      	mov	r9, r2
d00423a4:	7e27      	ldrb	r7, [r4, #24]
d00423a6:	990c      	ldr	r1, [sp, #48]	; 0x30
d00423a8:	2f78      	cmp	r7, #120	; 0x78
d00423aa:	4680      	mov	r8, r0
d00423ac:	469a      	mov	sl, r3
d00423ae:	f104 0243 	add.w	r2, r4, #67	; 0x43
d00423b2:	d807      	bhi.n	d00423c4 <_printf_i+0x28>
d00423b4:	2f62      	cmp	r7, #98	; 0x62
d00423b6:	d80a      	bhi.n	d00423ce <_printf_i+0x32>
d00423b8:	2f00      	cmp	r7, #0
d00423ba:	f000 80d8 	beq.w	d004256e <_printf_i+0x1d2>
d00423be:	2f58      	cmp	r7, #88	; 0x58
d00423c0:	f000 80a3 	beq.w	d004250a <_printf_i+0x16e>
d00423c4:	f104 0642 	add.w	r6, r4, #66	; 0x42
d00423c8:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d00423cc:	e03a      	b.n	d0042444 <_printf_i+0xa8>
d00423ce:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d00423d2:	2b15      	cmp	r3, #21
d00423d4:	d8f6      	bhi.n	d00423c4 <_printf_i+0x28>
d00423d6:	a001      	add	r0, pc, #4	; (adr r0, d00423dc <_printf_i+0x40>)
d00423d8:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d00423dc:	d0042435 	.word	0xd0042435
d00423e0:	d0042449 	.word	0xd0042449
d00423e4:	d00423c5 	.word	0xd00423c5
d00423e8:	d00423c5 	.word	0xd00423c5
d00423ec:	d00423c5 	.word	0xd00423c5
d00423f0:	d00423c5 	.word	0xd00423c5
d00423f4:	d0042449 	.word	0xd0042449
d00423f8:	d00423c5 	.word	0xd00423c5
d00423fc:	d00423c5 	.word	0xd00423c5
d0042400:	d00423c5 	.word	0xd00423c5
d0042404:	d00423c5 	.word	0xd00423c5
d0042408:	d0042555 	.word	0xd0042555
d004240c:	d0042479 	.word	0xd0042479
d0042410:	d0042537 	.word	0xd0042537
d0042414:	d00423c5 	.word	0xd00423c5
d0042418:	d00423c5 	.word	0xd00423c5
d004241c:	d0042577 	.word	0xd0042577
d0042420:	d00423c5 	.word	0xd00423c5
d0042424:	d0042479 	.word	0xd0042479
d0042428:	d00423c5 	.word	0xd00423c5
d004242c:	d00423c5 	.word	0xd00423c5
d0042430:	d004253f 	.word	0xd004253f
d0042434:	680b      	ldr	r3, [r1, #0]
d0042436:	1d1a      	adds	r2, r3, #4
d0042438:	681b      	ldr	r3, [r3, #0]
d004243a:	600a      	str	r2, [r1, #0]
d004243c:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0042440:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d0042444:	2301      	movs	r3, #1
d0042446:	e0a3      	b.n	d0042590 <_printf_i+0x1f4>
d0042448:	6825      	ldr	r5, [r4, #0]
d004244a:	6808      	ldr	r0, [r1, #0]
d004244c:	062e      	lsls	r6, r5, #24
d004244e:	f100 0304 	add.w	r3, r0, #4
d0042452:	d50a      	bpl.n	d004246a <_printf_i+0xce>
d0042454:	6805      	ldr	r5, [r0, #0]
d0042456:	600b      	str	r3, [r1, #0]
d0042458:	2d00      	cmp	r5, #0
d004245a:	da03      	bge.n	d0042464 <_printf_i+0xc8>
d004245c:	232d      	movs	r3, #45	; 0x2d
d004245e:	426d      	negs	r5, r5
d0042460:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0042464:	485e      	ldr	r0, [pc, #376]	; (d00425e0 <_printf_i+0x244>)
d0042466:	230a      	movs	r3, #10
d0042468:	e019      	b.n	d004249e <_printf_i+0x102>
d004246a:	f015 0f40 	tst.w	r5, #64	; 0x40
d004246e:	6805      	ldr	r5, [r0, #0]
d0042470:	600b      	str	r3, [r1, #0]
d0042472:	bf18      	it	ne
d0042474:	b22d      	sxthne	r5, r5
d0042476:	e7ef      	b.n	d0042458 <_printf_i+0xbc>
d0042478:	680b      	ldr	r3, [r1, #0]
d004247a:	6825      	ldr	r5, [r4, #0]
d004247c:	1d18      	adds	r0, r3, #4
d004247e:	6008      	str	r0, [r1, #0]
d0042480:	0628      	lsls	r0, r5, #24
d0042482:	d501      	bpl.n	d0042488 <_printf_i+0xec>
d0042484:	681d      	ldr	r5, [r3, #0]
d0042486:	e002      	b.n	d004248e <_printf_i+0xf2>
d0042488:	0669      	lsls	r1, r5, #25
d004248a:	d5fb      	bpl.n	d0042484 <_printf_i+0xe8>
d004248c:	881d      	ldrh	r5, [r3, #0]
d004248e:	4854      	ldr	r0, [pc, #336]	; (d00425e0 <_printf_i+0x244>)
d0042490:	2f6f      	cmp	r7, #111	; 0x6f
d0042492:	bf0c      	ite	eq
d0042494:	2308      	moveq	r3, #8
d0042496:	230a      	movne	r3, #10
d0042498:	2100      	movs	r1, #0
d004249a:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d004249e:	6866      	ldr	r6, [r4, #4]
d00424a0:	60a6      	str	r6, [r4, #8]
d00424a2:	2e00      	cmp	r6, #0
d00424a4:	bfa2      	ittt	ge
d00424a6:	6821      	ldrge	r1, [r4, #0]
d00424a8:	f021 0104 	bicge.w	r1, r1, #4
d00424ac:	6021      	strge	r1, [r4, #0]
d00424ae:	b90d      	cbnz	r5, d00424b4 <_printf_i+0x118>
d00424b0:	2e00      	cmp	r6, #0
d00424b2:	d04d      	beq.n	d0042550 <_printf_i+0x1b4>
d00424b4:	4616      	mov	r6, r2
d00424b6:	fbb5 f1f3 	udiv	r1, r5, r3
d00424ba:	fb03 5711 	mls	r7, r3, r1, r5
d00424be:	5dc7      	ldrb	r7, [r0, r7]
d00424c0:	f806 7d01 	strb.w	r7, [r6, #-1]!
d00424c4:	462f      	mov	r7, r5
d00424c6:	42bb      	cmp	r3, r7
d00424c8:	460d      	mov	r5, r1
d00424ca:	d9f4      	bls.n	d00424b6 <_printf_i+0x11a>
d00424cc:	2b08      	cmp	r3, #8
d00424ce:	d10b      	bne.n	d00424e8 <_printf_i+0x14c>
d00424d0:	6823      	ldr	r3, [r4, #0]
d00424d2:	07df      	lsls	r7, r3, #31
d00424d4:	d508      	bpl.n	d00424e8 <_printf_i+0x14c>
d00424d6:	6923      	ldr	r3, [r4, #16]
d00424d8:	6861      	ldr	r1, [r4, #4]
d00424da:	4299      	cmp	r1, r3
d00424dc:	bfde      	ittt	le
d00424de:	2330      	movle	r3, #48	; 0x30
d00424e0:	f806 3c01 	strble.w	r3, [r6, #-1]
d00424e4:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d00424e8:	1b92      	subs	r2, r2, r6
d00424ea:	6122      	str	r2, [r4, #16]
d00424ec:	f8cd a000 	str.w	sl, [sp]
d00424f0:	464b      	mov	r3, r9
d00424f2:	aa03      	add	r2, sp, #12
d00424f4:	4621      	mov	r1, r4
d00424f6:	4640      	mov	r0, r8
d00424f8:	f7ff fee2 	bl	d00422c0 <_printf_common>
d00424fc:	3001      	adds	r0, #1
d00424fe:	d14c      	bne.n	d004259a <_printf_i+0x1fe>
d0042500:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0042504:	b004      	add	sp, #16
d0042506:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d004250a:	4835      	ldr	r0, [pc, #212]	; (d00425e0 <_printf_i+0x244>)
d004250c:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d0042510:	6823      	ldr	r3, [r4, #0]
d0042512:	680e      	ldr	r6, [r1, #0]
d0042514:	061f      	lsls	r7, r3, #24
d0042516:	f856 5b04 	ldr.w	r5, [r6], #4
d004251a:	600e      	str	r6, [r1, #0]
d004251c:	d514      	bpl.n	d0042548 <_printf_i+0x1ac>
d004251e:	07d9      	lsls	r1, r3, #31
d0042520:	bf44      	itt	mi
d0042522:	f043 0320 	orrmi.w	r3, r3, #32
d0042526:	6023      	strmi	r3, [r4, #0]
d0042528:	b91d      	cbnz	r5, d0042532 <_printf_i+0x196>
d004252a:	6823      	ldr	r3, [r4, #0]
d004252c:	f023 0320 	bic.w	r3, r3, #32
d0042530:	6023      	str	r3, [r4, #0]
d0042532:	2310      	movs	r3, #16
d0042534:	e7b0      	b.n	d0042498 <_printf_i+0xfc>
d0042536:	6823      	ldr	r3, [r4, #0]
d0042538:	f043 0320 	orr.w	r3, r3, #32
d004253c:	6023      	str	r3, [r4, #0]
d004253e:	2378      	movs	r3, #120	; 0x78
d0042540:	4828      	ldr	r0, [pc, #160]	; (d00425e4 <_printf_i+0x248>)
d0042542:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d0042546:	e7e3      	b.n	d0042510 <_printf_i+0x174>
d0042548:	065e      	lsls	r6, r3, #25
d004254a:	bf48      	it	mi
d004254c:	b2ad      	uxthmi	r5, r5
d004254e:	e7e6      	b.n	d004251e <_printf_i+0x182>
d0042550:	4616      	mov	r6, r2
d0042552:	e7bb      	b.n	d00424cc <_printf_i+0x130>
d0042554:	680b      	ldr	r3, [r1, #0]
d0042556:	6826      	ldr	r6, [r4, #0]
d0042558:	6960      	ldr	r0, [r4, #20]
d004255a:	1d1d      	adds	r5, r3, #4
d004255c:	600d      	str	r5, [r1, #0]
d004255e:	0635      	lsls	r5, r6, #24
d0042560:	681b      	ldr	r3, [r3, #0]
d0042562:	d501      	bpl.n	d0042568 <_printf_i+0x1cc>
d0042564:	6018      	str	r0, [r3, #0]
d0042566:	e002      	b.n	d004256e <_printf_i+0x1d2>
d0042568:	0671      	lsls	r1, r6, #25
d004256a:	d5fb      	bpl.n	d0042564 <_printf_i+0x1c8>
d004256c:	8018      	strh	r0, [r3, #0]
d004256e:	2300      	movs	r3, #0
d0042570:	6123      	str	r3, [r4, #16]
d0042572:	4616      	mov	r6, r2
d0042574:	e7ba      	b.n	d00424ec <_printf_i+0x150>
d0042576:	680b      	ldr	r3, [r1, #0]
d0042578:	1d1a      	adds	r2, r3, #4
d004257a:	600a      	str	r2, [r1, #0]
d004257c:	681e      	ldr	r6, [r3, #0]
d004257e:	6862      	ldr	r2, [r4, #4]
d0042580:	2100      	movs	r1, #0
d0042582:	4630      	mov	r0, r6
d0042584:	f000 f8ac 	bl	d00426e0 <memchr>
d0042588:	b108      	cbz	r0, d004258e <_printf_i+0x1f2>
d004258a:	1b80      	subs	r0, r0, r6
d004258c:	6060      	str	r0, [r4, #4]
d004258e:	6863      	ldr	r3, [r4, #4]
d0042590:	6123      	str	r3, [r4, #16]
d0042592:	2300      	movs	r3, #0
d0042594:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0042598:	e7a8      	b.n	d00424ec <_printf_i+0x150>
d004259a:	6923      	ldr	r3, [r4, #16]
d004259c:	4632      	mov	r2, r6
d004259e:	4649      	mov	r1, r9
d00425a0:	4640      	mov	r0, r8
d00425a2:	47d0      	blx	sl
d00425a4:	3001      	adds	r0, #1
d00425a6:	d0ab      	beq.n	d0042500 <_printf_i+0x164>
d00425a8:	6823      	ldr	r3, [r4, #0]
d00425aa:	079b      	lsls	r3, r3, #30
d00425ac:	d413      	bmi.n	d00425d6 <_printf_i+0x23a>
d00425ae:	68e0      	ldr	r0, [r4, #12]
d00425b0:	9b03      	ldr	r3, [sp, #12]
d00425b2:	4298      	cmp	r0, r3
d00425b4:	bfb8      	it	lt
d00425b6:	4618      	movlt	r0, r3
d00425b8:	e7a4      	b.n	d0042504 <_printf_i+0x168>
d00425ba:	2301      	movs	r3, #1
d00425bc:	4632      	mov	r2, r6
d00425be:	4649      	mov	r1, r9
d00425c0:	4640      	mov	r0, r8
d00425c2:	47d0      	blx	sl
d00425c4:	3001      	adds	r0, #1
d00425c6:	d09b      	beq.n	d0042500 <_printf_i+0x164>
d00425c8:	3501      	adds	r5, #1
d00425ca:	68e3      	ldr	r3, [r4, #12]
d00425cc:	9903      	ldr	r1, [sp, #12]
d00425ce:	1a5b      	subs	r3, r3, r1
d00425d0:	42ab      	cmp	r3, r5
d00425d2:	dcf2      	bgt.n	d00425ba <_printf_i+0x21e>
d00425d4:	e7eb      	b.n	d00425ae <_printf_i+0x212>
d00425d6:	2500      	movs	r5, #0
d00425d8:	f104 0619 	add.w	r6, r4, #25
d00425dc:	e7f5      	b.n	d00425ca <_printf_i+0x22e>
d00425de:	bf00      	nop
d00425e0:	d0042b35 	.word	0xd0042b35
d00425e4:	d0042b46 	.word	0xd0042b46

d00425e8 <__sread>:
d00425e8:	b510      	push	{r4, lr}
d00425ea:	460c      	mov	r4, r1
d00425ec:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00425f0:	f000 f914 	bl	d004281c <_read_r>
d00425f4:	2800      	cmp	r0, #0
d00425f6:	bfab      	itete	ge
d00425f8:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d00425fa:	89a3      	ldrhlt	r3, [r4, #12]
d00425fc:	181b      	addge	r3, r3, r0
d00425fe:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d0042602:	bfac      	ite	ge
d0042604:	6563      	strge	r3, [r4, #84]	; 0x54
d0042606:	81a3      	strhlt	r3, [r4, #12]
d0042608:	bd10      	pop	{r4, pc}

d004260a <__swrite>:
d004260a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d004260e:	461f      	mov	r7, r3
d0042610:	898b      	ldrh	r3, [r1, #12]
d0042612:	05db      	lsls	r3, r3, #23
d0042614:	4605      	mov	r5, r0
d0042616:	460c      	mov	r4, r1
d0042618:	4616      	mov	r6, r2
d004261a:	d505      	bpl.n	d0042628 <__swrite+0x1e>
d004261c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0042620:	2302      	movs	r3, #2
d0042622:	2200      	movs	r2, #0
d0042624:	f000 f846 	bl	d00426b4 <_lseek_r>
d0042628:	89a3      	ldrh	r3, [r4, #12]
d004262a:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d004262e:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0042632:	81a3      	strh	r3, [r4, #12]
d0042634:	4632      	mov	r2, r6
d0042636:	463b      	mov	r3, r7
d0042638:	4628      	mov	r0, r5
d004263a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d004263e:	f7fd bd65 	b.w	d004010c <_write_r>

d0042642 <__sseek>:
d0042642:	b510      	push	{r4, lr}
d0042644:	460c      	mov	r4, r1
d0042646:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d004264a:	f000 f833 	bl	d00426b4 <_lseek_r>
d004264e:	1c43      	adds	r3, r0, #1
d0042650:	89a3      	ldrh	r3, [r4, #12]
d0042652:	bf15      	itete	ne
d0042654:	6560      	strne	r0, [r4, #84]	; 0x54
d0042656:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d004265a:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d004265e:	81a3      	strheq	r3, [r4, #12]
d0042660:	bf18      	it	ne
d0042662:	81a3      	strhne	r3, [r4, #12]
d0042664:	bd10      	pop	{r4, pc}

d0042666 <__sclose>:
d0042666:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d004266a:	f000 b801 	b.w	d0042670 <_close_r>
	...

d0042670 <_close_r>:
d0042670:	b538      	push	{r3, r4, r5, lr}
d0042672:	4d06      	ldr	r5, [pc, #24]	; (d004268c <_close_r+0x1c>)
d0042674:	2300      	movs	r3, #0
d0042676:	4604      	mov	r4, r0
d0042678:	4608      	mov	r0, r1
d004267a:	602b      	str	r3, [r5, #0]
d004267c:	f7fd fd80 	bl	d0040180 <_close>
d0042680:	1c43      	adds	r3, r0, #1
d0042682:	d102      	bne.n	d004268a <_close_r+0x1a>
d0042684:	682b      	ldr	r3, [r5, #0]
d0042686:	b103      	cbz	r3, d004268a <_close_r+0x1a>
d0042688:	6023      	str	r3, [r4, #0]
d004268a:	bd38      	pop	{r3, r4, r5, pc}
d004268c:	d004428c 	.word	0xd004428c

d0042690 <_fstat_r>:
d0042690:	b538      	push	{r3, r4, r5, lr}
d0042692:	4d07      	ldr	r5, [pc, #28]	; (d00426b0 <_fstat_r+0x20>)
d0042694:	2300      	movs	r3, #0
d0042696:	4604      	mov	r4, r0
d0042698:	4608      	mov	r0, r1
d004269a:	4611      	mov	r1, r2
d004269c:	602b      	str	r3, [r5, #0]
d004269e:	f7fd fd73 	bl	d0040188 <_fstat>
d00426a2:	1c43      	adds	r3, r0, #1
d00426a4:	d102      	bne.n	d00426ac <_fstat_r+0x1c>
d00426a6:	682b      	ldr	r3, [r5, #0]
d00426a8:	b103      	cbz	r3, d00426ac <_fstat_r+0x1c>
d00426aa:	6023      	str	r3, [r4, #0]
d00426ac:	bd38      	pop	{r3, r4, r5, pc}
d00426ae:	bf00      	nop
d00426b0:	d004428c 	.word	0xd004428c

d00426b4 <_lseek_r>:
d00426b4:	b538      	push	{r3, r4, r5, lr}
d00426b6:	4d07      	ldr	r5, [pc, #28]	; (d00426d4 <_lseek_r+0x20>)
d00426b8:	4604      	mov	r4, r0
d00426ba:	4608      	mov	r0, r1
d00426bc:	4611      	mov	r1, r2
d00426be:	2200      	movs	r2, #0
d00426c0:	602a      	str	r2, [r5, #0]
d00426c2:	461a      	mov	r2, r3
d00426c4:	f7fd fd66 	bl	d0040194 <_lseek>
d00426c8:	1c43      	adds	r3, r0, #1
d00426ca:	d102      	bne.n	d00426d2 <_lseek_r+0x1e>
d00426cc:	682b      	ldr	r3, [r5, #0]
d00426ce:	b103      	cbz	r3, d00426d2 <_lseek_r+0x1e>
d00426d0:	6023      	str	r3, [r4, #0]
d00426d2:	bd38      	pop	{r3, r4, r5, pc}
d00426d4:	d004428c 	.word	0xd004428c
	...

d00426e0 <memchr>:
d00426e0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d00426e4:	2a10      	cmp	r2, #16
d00426e6:	db2b      	blt.n	d0042740 <memchr+0x60>
d00426e8:	f010 0f07 	tst.w	r0, #7
d00426ec:	d008      	beq.n	d0042700 <memchr+0x20>
d00426ee:	f810 3b01 	ldrb.w	r3, [r0], #1
d00426f2:	3a01      	subs	r2, #1
d00426f4:	428b      	cmp	r3, r1
d00426f6:	d02d      	beq.n	d0042754 <memchr+0x74>
d00426f8:	f010 0f07 	tst.w	r0, #7
d00426fc:	b342      	cbz	r2, d0042750 <memchr+0x70>
d00426fe:	d1f6      	bne.n	d00426ee <memchr+0xe>
d0042700:	b4f0      	push	{r4, r5, r6, r7}
d0042702:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0042706:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d004270a:	f022 0407 	bic.w	r4, r2, #7
d004270e:	f07f 0700 	mvns.w	r7, #0
d0042712:	2300      	movs	r3, #0
d0042714:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0042718:	3c08      	subs	r4, #8
d004271a:	ea85 0501 	eor.w	r5, r5, r1
d004271e:	ea86 0601 	eor.w	r6, r6, r1
d0042722:	fa85 f547 	uadd8	r5, r5, r7
d0042726:	faa3 f587 	sel	r5, r3, r7
d004272a:	fa86 f647 	uadd8	r6, r6, r7
d004272e:	faa5 f687 	sel	r6, r5, r7
d0042732:	b98e      	cbnz	r6, d0042758 <memchr+0x78>
d0042734:	d1ee      	bne.n	d0042714 <memchr+0x34>
d0042736:	bcf0      	pop	{r4, r5, r6, r7}
d0042738:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d004273c:	f002 0207 	and.w	r2, r2, #7
d0042740:	b132      	cbz	r2, d0042750 <memchr+0x70>
d0042742:	f810 3b01 	ldrb.w	r3, [r0], #1
d0042746:	3a01      	subs	r2, #1
d0042748:	ea83 0301 	eor.w	r3, r3, r1
d004274c:	b113      	cbz	r3, d0042754 <memchr+0x74>
d004274e:	d1f8      	bne.n	d0042742 <memchr+0x62>
d0042750:	2000      	movs	r0, #0
d0042752:	4770      	bx	lr
d0042754:	3801      	subs	r0, #1
d0042756:	4770      	bx	lr
d0042758:	2d00      	cmp	r5, #0
d004275a:	bf06      	itte	eq
d004275c:	4635      	moveq	r5, r6
d004275e:	3803      	subeq	r0, #3
d0042760:	3807      	subne	r0, #7
d0042762:	f015 0f01 	tst.w	r5, #1
d0042766:	d107      	bne.n	d0042778 <memchr+0x98>
d0042768:	3001      	adds	r0, #1
d004276a:	f415 7f80 	tst.w	r5, #256	; 0x100
d004276e:	bf02      	ittt	eq
d0042770:	3001      	addeq	r0, #1
d0042772:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0042776:	3001      	addeq	r0, #1
d0042778:	bcf0      	pop	{r4, r5, r6, r7}
d004277a:	3801      	subs	r0, #1
d004277c:	4770      	bx	lr
d004277e:	bf00      	nop

d0042780 <memcpy>:
d0042780:	440a      	add	r2, r1
d0042782:	4291      	cmp	r1, r2
d0042784:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0042788:	d100      	bne.n	d004278c <memcpy+0xc>
d004278a:	4770      	bx	lr
d004278c:	b510      	push	{r4, lr}
d004278e:	f811 4b01 	ldrb.w	r4, [r1], #1
d0042792:	f803 4f01 	strb.w	r4, [r3, #1]!
d0042796:	4291      	cmp	r1, r2
d0042798:	d1f9      	bne.n	d004278e <memcpy+0xe>
d004279a:	bd10      	pop	{r4, pc}

d004279c <memmove>:
d004279c:	4288      	cmp	r0, r1
d004279e:	b510      	push	{r4, lr}
d00427a0:	eb01 0402 	add.w	r4, r1, r2
d00427a4:	d902      	bls.n	d00427ac <memmove+0x10>
d00427a6:	4284      	cmp	r4, r0
d00427a8:	4623      	mov	r3, r4
d00427aa:	d807      	bhi.n	d00427bc <memmove+0x20>
d00427ac:	1e43      	subs	r3, r0, #1
d00427ae:	42a1      	cmp	r1, r4
d00427b0:	d008      	beq.n	d00427c4 <memmove+0x28>
d00427b2:	f811 2b01 	ldrb.w	r2, [r1], #1
d00427b6:	f803 2f01 	strb.w	r2, [r3, #1]!
d00427ba:	e7f8      	b.n	d00427ae <memmove+0x12>
d00427bc:	4402      	add	r2, r0
d00427be:	4601      	mov	r1, r0
d00427c0:	428a      	cmp	r2, r1
d00427c2:	d100      	bne.n	d00427c6 <memmove+0x2a>
d00427c4:	bd10      	pop	{r4, pc}
d00427c6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d00427ca:	f802 4d01 	strb.w	r4, [r2, #-1]!
d00427ce:	e7f7      	b.n	d00427c0 <memmove+0x24>

d00427d0 <_realloc_r>:
d00427d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00427d2:	4607      	mov	r7, r0
d00427d4:	4614      	mov	r4, r2
d00427d6:	460e      	mov	r6, r1
d00427d8:	b921      	cbnz	r1, d00427e4 <_realloc_r+0x14>
d00427da:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d00427de:	4611      	mov	r1, r2
d00427e0:	f7ff b8e0 	b.w	d00419a4 <_malloc_r>
d00427e4:	b922      	cbnz	r2, d00427f0 <_realloc_r+0x20>
d00427e6:	f7ff f88d 	bl	d0041904 <_free_r>
d00427ea:	4625      	mov	r5, r4
d00427ec:	4628      	mov	r0, r5
d00427ee:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00427f0:	f000 f826 	bl	d0042840 <_malloc_usable_size_r>
d00427f4:	42a0      	cmp	r0, r4
d00427f6:	d20f      	bcs.n	d0042818 <_realloc_r+0x48>
d00427f8:	4621      	mov	r1, r4
d00427fa:	4638      	mov	r0, r7
d00427fc:	f7ff f8d2 	bl	d00419a4 <_malloc_r>
d0042800:	4605      	mov	r5, r0
d0042802:	2800      	cmp	r0, #0
d0042804:	d0f2      	beq.n	d00427ec <_realloc_r+0x1c>
d0042806:	4631      	mov	r1, r6
d0042808:	4622      	mov	r2, r4
d004280a:	f7ff ffb9 	bl	d0042780 <memcpy>
d004280e:	4631      	mov	r1, r6
d0042810:	4638      	mov	r0, r7
d0042812:	f7ff f877 	bl	d0041904 <_free_r>
d0042816:	e7e9      	b.n	d00427ec <_realloc_r+0x1c>
d0042818:	4635      	mov	r5, r6
d004281a:	e7e7      	b.n	d00427ec <_realloc_r+0x1c>

d004281c <_read_r>:
d004281c:	b538      	push	{r3, r4, r5, lr}
d004281e:	4d07      	ldr	r5, [pc, #28]	; (d004283c <_read_r+0x20>)
d0042820:	4604      	mov	r4, r0
d0042822:	4608      	mov	r0, r1
d0042824:	4611      	mov	r1, r2
d0042826:	2200      	movs	r2, #0
d0042828:	602a      	str	r2, [r5, #0]
d004282a:	461a      	mov	r2, r3
d004282c:	f7fd fc9e 	bl	d004016c <_read>
d0042830:	1c43      	adds	r3, r0, #1
d0042832:	d102      	bne.n	d004283a <_read_r+0x1e>
d0042834:	682b      	ldr	r3, [r5, #0]
d0042836:	b103      	cbz	r3, d004283a <_read_r+0x1e>
d0042838:	6023      	str	r3, [r4, #0]
d004283a:	bd38      	pop	{r3, r4, r5, pc}
d004283c:	d004428c 	.word	0xd004428c

d0042840 <_malloc_usable_size_r>:
d0042840:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0042844:	1f18      	subs	r0, r3, #4
d0042846:	2b00      	cmp	r3, #0
d0042848:	bfbc      	itt	lt
d004284a:	580b      	ldrlt	r3, [r1, r0]
d004284c:	18c0      	addlt	r0, r0, r3
d004284e:	4770      	bx	lr

d0042850 <_global_impure_ptr>:
d0042850:	2b64 d004 4952 4646 0000 0000 4157 4556     d+..RIFF....WAVE
d0042860:	0000 0000                                   ....

d0042864 <dirTable>:
d0042864:	0000 0000 0000 3f80 c433 3e31 1bda 3f7c     .......?3.1>..|?
d0042874:	1aa0 3eaf 902e 3f70 0000 3f00 b22d 3f5d     ...>..p?...?-.]?
d0042884:	8e8a 3f24 1893 3f44 1893 3f44 8e8a 3f24     ..$?..D?..D?..$?
d0042894:	b22d 3f5d 0000 3f00 902e 3f70 1aa0 3eaf     -.]?...?..p?...>
d00428a4:	1bda 3f7c c433 3e31 0000 3f80 0000 0000     ..|?3.1>...?....
d00428b4:	1bda 3f7c c433 be31 902e 3f70 1aa0 beaf     ..|?3.1...p?....
d00428c4:	b22d 3f5d 0000 bf00 1893 3f44 8e8a bf24     -.]?......D?..$.
d00428d4:	8e8a 3f24 1893 bf44 0000 3f00 b22d bf5d     ..$?..D....?-.].
d00428e4:	1aa0 3eaf 902e bf70 c433 3e31 1bda bf7c     ...>..p.3.1>..|.
d00428f4:	0000 0000 0000 bf80 c433 be31 1bda bf7c     ........3.1...|.
d0042904:	1aa0 beaf 902e bf70 0000 bf00 b22d bf5d     ......p.....-.].
d0042914:	8e8a bf24 1893 bf44 1893 bf44 8e8a bf24     ..$...D...D...$.
d0042924:	b22d bf5d 0000 bf00 902e bf70 1aa0 beaf     -.].......p.....
d0042934:	1bda bf7c c433 be31 0000 bf80 0000 0000     ..|.3.1.........
d0042944:	1bda bf7c c433 3e31 902e bf70 1aa0 3eaf     ..|.3.1>..p....>
d0042954:	b22d bf5d 0000 3f00 1893 bf44 8e8a 3f24     -.]....?..D...$?
d0042964:	8e8a bf24 1893 3f44 0000 bf00 b22d 3f5d     ..$...D?....-.]?
d0042974:	1aa0 beaf 902e 3f70 c433 be31 1bda 3f7c     ......p?3.1...|?
d0042984:	6572 2f73 7865 7274 6c61 6669 2e65 6177     res/extralife.wa
d0042994:	0076 0000 6572 2f73 6966 6572 2e6d 6177     v...res/firem.wa
d00429a4:	0076 0000 6572 2f73 6874 7572 7473 2e32     v...res/thrust2.
d00429b4:	6177 0076 6572 2f73 6473 656c 3176 6d2e     wav.res/sdlev1.m
d00429c4:	646f 0000 6572 2f73 7361 7274 696f 5f64     od..res/astroid_
d00429d4:	616c 6772 5f65 2e31 7070 0062 6572 2f73     large_1.ppb.res/
d00429e4:	7361 7274 696f 5f64 656d 6964 6d75 315f     astroid_medium_1
d00429f4:	702e 6270 0000 0000 6572 2f73 7361 7274     .ppb....res/astr
d0042a04:	696f 5f64 656d 6964 6d75 325f 702e 6270     oid_medium_2.ppb
d0042a14:	0000 0000 6572 2f73 7361 7274 696f 5f64     ....res/astroid_
d0042a24:	6d73 6c61 5f6c 2e32 7070 0062 6572 2f73     small_2.ppb.res/
d0042a34:	6873 7069 7372 702e 6270 0000 6572 2f73     shiprs.ppb..res/
d0042a44:	7562 6c6c 7465 5f73 7974 6570 2e31 7070     bullets_type1.pp
d0042a54:	0062 0000 6572 2f73 6c66 6d61 7365 702e     b...res/flames.p
d0042a64:	6270 0000 6572 2f73 7865 6c70 646f 2e65     pb..res/explode.
d0042a74:	7070 0062 6572 2f73 6f66 746e 3631 3631     ppb.res/font1616
d0042a84:	702e 6270 0000 0000 6572 2f73 6162 6b63     .ppb....res/back
d0042a94:	702e 6270 0000 0000 4353 524f 3a45 2520     .ppb....SCORE: %
d0042aa4:	3630 756c 0000 0000 494c 4556 3a53 2520     06lu....LIVES: %
d0042ab4:	756c 0000 4157 4556 3a53 2520 756c 0000     lu..WAVES: %lu..

d0042ac4 <__sf_fake_stderr>:
	...

d0042ae4 <__sf_fake_stdin>:
	...

d0042b04 <__sf_fake_stdout>:
	...
d0042b24:	2d23 2b30 0020 6c68 004c 6665 4567 4746     #-0+ .hlL.efgEFG
d0042b34:	3000 3231 3433 3635 3837 4139 4342 4544     .0123456789ABCDE
d0042b44:	0046 3130 3332 3534 3736 3938 6261 6463     F.0123456789abcd
d0042b54:	6665                                         ef.

Disassembly of section .init:

d0042b58 <_init>:
d0042b58:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0042b5a:	bf00      	nop

Disassembly of section .fini:

d0042b5c <_fini>:
d0042b5c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0042b5e:	bf00      	nop
