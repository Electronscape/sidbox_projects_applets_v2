
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
d004001e:	f003 f8e9 	bl	d00431f4 <setbuf>
d0040022:	6833      	ldr	r3, [r6, #0]
d0040024:	2100      	movs	r1, #0
d0040026:	68d8      	ldr	r0, [r3, #12]
d0040028:	f003 f8e4 	bl	d00431f4 <setbuf>
d004002c:	4629      	mov	r1, r5
d004002e:	4620      	mov	r0, r4
d0040030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0040034:	f002 bbc2 	b.w	d00427bc <main>
d0040038:	d0044afc 	.word	0xd0044afc

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
d004006e:	4630      	mov	r0, r6
d0040070:	79a2      	ldrb	r2, [r4, #6]
d0040072:	ab01      	add	r3, sp, #4
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
d00400f0:	d0048fb8 	.word	0xd0048fb8
d00400f4:	d0600000 	.word	0xd0600000
d00400f8:	d0044b80 	.word	0xd0044b80

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
d0040144:	f002 ff72 	bl	d004302c <__errno>
d0040148:	2209      	movs	r2, #9
d004014a:	4603      	mov	r3, r0
d004014c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0040150:	601a      	str	r2, [r3, #0]
d0040152:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0040154:	d0044b64 	.word	0xd0044b64
d0040158:	2001f000 	.word	0x2001f000

d004015c <_read>:
d004015c:	b508      	push	{r3, lr}
d004015e:	f002 ff65 	bl	d004302c <__errno>
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
d00401aa:	f002 ff3f 	bl	d004302c <__errno>
d00401ae:	220c      	movs	r2, #12
d00401b0:	4603      	mov	r3, r0
d00401b2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00401b6:	601a      	str	r2, [r3, #0]
d00401b8:	bd10      	pop	{r4, pc}
d00401ba:	bf00      	nop
d00401bc:	d0044b60 	.word	0xd0044b60
d00401c0:	d0048fb8 	.word	0xd0048fb8
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
d0040218:	f002 ff1e 	bl	d0043058 <memcmp>
d004021c:	b950      	cbnz	r0, d0040234 <LoadSFX+0x6c>
d004021e:	2204      	movs	r2, #4
d0040220:	492c      	ldr	r1, [pc, #176]	; (d00402d4 <LoadSFX+0x10c>)
d0040222:	a805      	add	r0, sp, #20
d0040224:	f002 ff18 	bl	d0043058 <memcmp>
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
d004025c:	f002 feec 	bl	d0043038 <malloc>
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
d00402d0:	d0043fd4 	.word	0xd0043fd4
d00402d4:	d0043fdc 	.word	0xd0043fdc

d00402d8 <freeSFX>:
d00402d8:	6800      	ldr	r0, [r0, #0]
d00402da:	f002 beb5 	b.w	d0043048 <free>
d00402de:	bf00      	nop

d00402e0 <loadSounds>:
d00402e0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00402e4:	4fb1      	ldr	r7, [pc, #708]	; (d00405ac <loadSounds+0x2cc>)
d00402e6:	4cb2      	ldr	r4, [pc, #712]	; (d00405b0 <loadSounds+0x2d0>)
d00402e8:	4639      	mov	r1, r7
d00402ea:	48b2      	ldr	r0, [pc, #712]	; (d00405b4 <loadSounds+0x2d4>)
d00402ec:	f7ff ff6c 	bl	d00401c8 <LoadSFX>
d00402f0:	7c26      	ldrb	r6, [r4, #16]
d00402f2:	7c65      	ldrb	r5, [r4, #17]
d00402f4:	2300      	movs	r3, #0
d00402f6:	f894 e012 	ldrb.w	lr, [r4, #18]
d00402fa:	4602      	mov	r2, r0
d00402fc:	ea46 2505 	orr.w	r5, r6, r5, lsl #8
d0040300:	f894 c013 	ldrb.w	ip, [r4, #19]
d0040304:	4618      	mov	r0, r3
d0040306:	6839      	ldr	r1, [r7, #0]
d0040308:	ea45 450e 	orr.w	r5, r5, lr, lsl #16
d004030c:	4eaa      	ldr	r6, [pc, #680]	; (d00405b8 <loadSounds+0x2d8>)
d004030e:	4fab      	ldr	r7, [pc, #684]	; (d00405bc <loadSounds+0x2dc>)
d0040310:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d0040314:	f8df 92bc 	ldr.w	r9, [pc, #700]	; d00405d4 <loadSounds+0x2f4>
d0040318:	f8df 82bc 	ldr.w	r8, [pc, #700]	; d00405d8 <loadSounds+0x2f8>
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
d0040346:	21f0      	movs	r1, #240	; 0xf0
d0040348:	7ca0      	ldrb	r0, [r4, #18]
d004034a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004034e:	7ce2      	ldrb	r2, [r4, #19]
d0040350:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0040354:	2000      	movs	r0, #0
d0040356:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004035a:	689b      	ldr	r3, [r3, #8]
d004035c:	695b      	ldr	r3, [r3, #20]
d004035e:	4798      	blx	r3
d0040360:	7c23      	ldrb	r3, [r4, #16]
d0040362:	7c62      	ldrb	r2, [r4, #17]
d0040364:	2100      	movs	r1, #0
d0040366:	7ca0      	ldrb	r0, [r4, #18]
d0040368:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004036c:	7ce2      	ldrb	r2, [r4, #19]
d004036e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0040372:	4608      	mov	r0, r1
d0040374:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040378:	689b      	ldr	r3, [r3, #8]
d004037a:	699b      	ldr	r3, [r3, #24]
d004037c:	4798      	blx	r3
d004037e:	7c23      	ldrb	r3, [r4, #16]
d0040380:	7c60      	ldrb	r0, [r4, #17]
d0040382:	f241 1251 	movw	r2, #4433	; 0x1151
d0040386:	7ca1      	ldrb	r1, [r4, #18]
d0040388:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d004038c:	7ce0      	ldrb	r0, [r4, #19]
d004038e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040392:	21c8      	movs	r1, #200	; 0xc8
d0040394:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d0040398:	2000      	movs	r0, #0
d004039a:	689b      	ldr	r3, [r3, #8]
d004039c:	69db      	ldr	r3, [r3, #28]
d004039e:	4798      	blx	r3
d00403a0:	7c23      	ldrb	r3, [r4, #16]
d00403a2:	7c62      	ldrb	r2, [r4, #17]
d00403a4:	2100      	movs	r1, #0
d00403a6:	7ca0      	ldrb	r0, [r4, #18]
d00403a8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00403ac:	7ce2      	ldrb	r2, [r4, #19]
d00403ae:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00403b2:	4608      	mov	r0, r1
d00403b4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00403b8:	689b      	ldr	r3, [r3, #8]
d00403ba:	6a1b      	ldr	r3, [r3, #32]
d00403bc:	4798      	blx	r3
d00403be:	4631      	mov	r1, r6
d00403c0:	487f      	ldr	r0, [pc, #508]	; (d00405c0 <loadSounds+0x2e0>)
d00403c2:	f7ff ff01 	bl	d00401c8 <LoadSFX>
d00403c6:	7c25      	ldrb	r5, [r4, #16]
d00403c8:	f894 c011 	ldrb.w	ip, [r4, #17]
d00403cc:	4602      	mov	r2, r0
d00403ce:	7ca0      	ldrb	r0, [r4, #18]
d00403d0:	2300      	movs	r3, #0
d00403d2:	ea45 250c 	orr.w	r5, r5, ip, lsl #8
d00403d6:	6831      	ldr	r1, [r6, #0]
d00403d8:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d00403dc:	7ce0      	ldrb	r0, [r4, #19]
d00403de:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d00403e2:	2001      	movs	r0, #1
d00403e4:	68ad      	ldr	r5, [r5, #8]
d00403e6:	68ed      	ldr	r5, [r5, #12]
d00403e8:	47a8      	blx	r5
d00403ea:	7c23      	ldrb	r3, [r4, #16]
d00403ec:	7c62      	ldrb	r2, [r4, #17]
d00403ee:	f64a 4144 	movw	r1, #44100	; 0xac44
d00403f2:	7ca5      	ldrb	r5, [r4, #18]
d00403f4:	2001      	movs	r0, #1
d00403f6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00403fa:	7ce2      	ldrb	r2, [r4, #19]
d00403fc:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040400:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040404:	689b      	ldr	r3, [r3, #8]
d0040406:	691b      	ldr	r3, [r3, #16]
d0040408:	4798      	blx	r3
d004040a:	7c23      	ldrb	r3, [r4, #16]
d004040c:	7c62      	ldrb	r2, [r4, #17]
d004040e:	21ff      	movs	r1, #255	; 0xff
d0040410:	7ca5      	ldrb	r5, [r4, #18]
d0040412:	2001      	movs	r0, #1
d0040414:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040418:	7ce2      	ldrb	r2, [r4, #19]
d004041a:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004041e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040422:	689b      	ldr	r3, [r3, #8]
d0040424:	695b      	ldr	r3, [r3, #20]
d0040426:	4798      	blx	r3
d0040428:	7c23      	ldrb	r3, [r4, #16]
d004042a:	7c62      	ldrb	r2, [r4, #17]
d004042c:	2100      	movs	r1, #0
d004042e:	7ca5      	ldrb	r5, [r4, #18]
d0040430:	2001      	movs	r0, #1
d0040432:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040436:	7ce2      	ldrb	r2, [r4, #19]
d0040438:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004043c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040440:	689b      	ldr	r3, [r3, #8]
d0040442:	699b      	ldr	r3, [r3, #24]
d0040444:	4798      	blx	r3
d0040446:	7c23      	ldrb	r3, [r4, #16]
d0040448:	7c65      	ldrb	r5, [r4, #17]
d004044a:	f241 1251 	movw	r2, #4433	; 0x1151
d004044e:	7ca0      	ldrb	r0, [r4, #18]
d0040450:	21c8      	movs	r1, #200	; 0xc8
d0040452:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d0040456:	7ce5      	ldrb	r5, [r4, #19]
d0040458:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004045c:	2001      	movs	r0, #1
d004045e:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d0040462:	689b      	ldr	r3, [r3, #8]
d0040464:	69db      	ldr	r3, [r3, #28]
d0040466:	4798      	blx	r3
d0040468:	7c23      	ldrb	r3, [r4, #16]
d004046a:	7c62      	ldrb	r2, [r4, #17]
d004046c:	2100      	movs	r1, #0
d004046e:	7ca5      	ldrb	r5, [r4, #18]
d0040470:	2001      	movs	r0, #1
d0040472:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040476:	7ce2      	ldrb	r2, [r4, #19]
d0040478:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004047c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040480:	689b      	ldr	r3, [r3, #8]
d0040482:	6a1b      	ldr	r3, [r3, #32]
d0040484:	4798      	blx	r3
d0040486:	4639      	mov	r1, r7
d0040488:	484e      	ldr	r0, [pc, #312]	; (d00405c4 <loadSounds+0x2e4>)
d004048a:	f7ff fe9d 	bl	d00401c8 <LoadSFX>
d004048e:	7c26      	ldrb	r6, [r4, #16]
d0040490:	7c61      	ldrb	r1, [r4, #17]
d0040492:	4605      	mov	r5, r0
d0040494:	7ca2      	ldrb	r2, [r4, #18]
d0040496:	2300      	movs	r3, #0
d0040498:	ea46 2601 	orr.w	r6, r6, r1, lsl #8
d004049c:	7ce0      	ldrb	r0, [r4, #19]
d004049e:	6839      	ldr	r1, [r7, #0]
d00404a0:	ea46 4602 	orr.w	r6, r6, r2, lsl #16
d00404a4:	462a      	mov	r2, r5
d00404a6:	4f48      	ldr	r7, [pc, #288]	; (d00405c8 <loadSounds+0x2e8>)
d00404a8:	ea46 6600 	orr.w	r6, r6, r0, lsl #24
d00404ac:	2002      	movs	r0, #2
d00404ae:	68b6      	ldr	r6, [r6, #8]
d00404b0:	68f6      	ldr	r6, [r6, #12]
d00404b2:	47b0      	blx	r6
d00404b4:	7c23      	ldrb	r3, [r4, #16]
d00404b6:	7c62      	ldrb	r2, [r4, #17]
d00404b8:	f64a 4144 	movw	r1, #44100	; 0xac44
d00404bc:	7ca0      	ldrb	r0, [r4, #18]
d00404be:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00404c2:	7ce2      	ldrb	r2, [r4, #19]
d00404c4:	4e41      	ldr	r6, [pc, #260]	; (d00405cc <loadSounds+0x2ec>)
d00404c6:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00404ca:	2002      	movs	r0, #2
d00404cc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00404d0:	689b      	ldr	r3, [r3, #8]
d00404d2:	691b      	ldr	r3, [r3, #16]
d00404d4:	4798      	blx	r3
d00404d6:	7c23      	ldrb	r3, [r4, #16]
d00404d8:	7c62      	ldrb	r2, [r4, #17]
d00404da:	f44f 71be 	mov.w	r1, #380	; 0x17c
d00404de:	2002      	movs	r0, #2
d00404e0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00404e4:	7ca2      	ldrb	r2, [r4, #18]
d00404e6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00404ea:	7ce2      	ldrb	r2, [r4, #19]
d00404ec:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00404f0:	689b      	ldr	r3, [r3, #8]
d00404f2:	695b      	ldr	r3, [r3, #20]
d00404f4:	4798      	blx	r3
d00404f6:	7c23      	ldrb	r3, [r4, #16]
d00404f8:	7c62      	ldrb	r2, [r4, #17]
d00404fa:	2100      	movs	r1, #0
d00404fc:	2002      	movs	r0, #2
d00404fe:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040502:	7ca2      	ldrb	r2, [r4, #18]
d0040504:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040508:	7ce2      	ldrb	r2, [r4, #19]
d004050a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004050e:	689b      	ldr	r3, [r3, #8]
d0040510:	699b      	ldr	r3, [r3, #24]
d0040512:	4798      	blx	r3
d0040514:	7c21      	ldrb	r1, [r4, #16]
d0040516:	7c63      	ldrb	r3, [r4, #17]
d0040518:	f1a5 022c 	sub.w	r2, r5, #44	; 0x2c
d004051c:	7ca5      	ldrb	r5, [r4, #18]
d004051e:	ea41 2303 	orr.w	r3, r1, r3, lsl #8
d0040522:	7ce0      	ldrb	r0, [r4, #19]
d0040524:	21c8      	movs	r1, #200	; 0xc8
d0040526:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004052a:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d004052e:	2002      	movs	r0, #2
d0040530:	689b      	ldr	r3, [r3, #8]
d0040532:	69db      	ldr	r3, [r3, #28]
d0040534:	4798      	blx	r3
d0040536:	7c23      	ldrb	r3, [r4, #16]
d0040538:	7c62      	ldrb	r2, [r4, #17]
d004053a:	2101      	movs	r1, #1
d004053c:	7ca0      	ldrb	r0, [r4, #18]
d004053e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040542:	7ce2      	ldrb	r2, [r4, #19]
d0040544:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0040548:	2002      	movs	r0, #2
d004054a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004054e:	689b      	ldr	r3, [r3, #8]
d0040550:	6a1b      	ldr	r3, [r3, #32]
d0040552:	4798      	blx	r3
d0040554:	4649      	mov	r1, r9
d0040556:	481e      	ldr	r0, [pc, #120]	; (d00405d0 <loadSounds+0x2f0>)
d0040558:	f7ff fe36 	bl	d00401c8 <LoadSFX>
d004055c:	7c25      	ldrb	r5, [r4, #16]
d004055e:	f894 c011 	ldrb.w	ip, [r4, #17]
d0040562:	4602      	mov	r2, r0
d0040564:	7ca0      	ldrb	r0, [r4, #18]
d0040566:	2300      	movs	r3, #0
d0040568:	ea45 250c 	orr.w	r5, r5, ip, lsl #8
d004056c:	f8d9 1000 	ldr.w	r1, [r9]
d0040570:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d0040574:	7ce0      	ldrb	r0, [r4, #19]
d0040576:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d004057a:	2003      	movs	r0, #3
d004057c:	68ad      	ldr	r5, [r5, #8]
d004057e:	68ed      	ldr	r5, [r5, #12]
d0040580:	47a8      	blx	r5
d0040582:	7c23      	ldrb	r3, [r4, #16]
d0040584:	7c62      	ldrb	r2, [r4, #17]
d0040586:	f646 5160 	movw	r1, #28000	; 0x6d60
d004058a:	7ca0      	ldrb	r0, [r4, #18]
d004058c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040590:	7ce2      	ldrb	r2, [r4, #19]
d0040592:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0040596:	2003      	movs	r0, #3
d0040598:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004059c:	689b      	ldr	r3, [r3, #8]
d004059e:	691b      	ldr	r3, [r3, #16]
d00405a0:	4798      	blx	r3
d00405a2:	7c23      	ldrb	r3, [r4, #16]
d00405a4:	7c62      	ldrb	r2, [r4, #17]
d00405a6:	218c      	movs	r1, #140	; 0x8c
d00405a8:	7ca0      	ldrb	r0, [r4, #18]
d00405aa:	e017      	b.n	d00405dc <loadSounds+0x2fc>
d00405ac:	d0044c00 	.word	0xd0044c00
d00405b0:	2001f000 	.word	0x2001f000
d00405b4:	d0043fe4 	.word	0xd0043fe4
d00405b8:	d0044ba0 	.word	0xd0044ba0
d00405bc:	d0044be0 	.word	0xd0044be0
d00405c0:	d0043ff8 	.word	0xd0043ff8
d00405c4:	d0044008 	.word	0xd0044008
d00405c8:	d0044bc0 	.word	0xd0044bc0
d00405cc:	d0044c20 	.word	0xd0044c20
d00405d0:	d0044018 	.word	0xd0044018
d00405d4:	d0044c40 	.word	0xd0044c40
d00405d8:	d0044c60 	.word	0xd0044c60
d00405dc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00405e0:	7ce2      	ldrb	r2, [r4, #19]
d00405e2:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00405e6:	2003      	movs	r0, #3
d00405e8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00405ec:	689b      	ldr	r3, [r3, #8]
d00405ee:	695b      	ldr	r3, [r3, #20]
d00405f0:	4798      	blx	r3
d00405f2:	7c23      	ldrb	r3, [r4, #16]
d00405f4:	7c62      	ldrb	r2, [r4, #17]
d00405f6:	2100      	movs	r1, #0
d00405f8:	7ca0      	ldrb	r0, [r4, #18]
d00405fa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00405fe:	7ce2      	ldrb	r2, [r4, #19]
d0040600:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0040604:	2003      	movs	r0, #3
d0040606:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004060a:	689b      	ldr	r3, [r3, #8]
d004060c:	699b      	ldr	r3, [r3, #24]
d004060e:	4798      	blx	r3
d0040610:	7c23      	ldrb	r3, [r4, #16]
d0040612:	7c60      	ldrb	r0, [r4, #17]
d0040614:	f642 52ef 	movw	r2, #11759	; 0x2def
d0040618:	7ca1      	ldrb	r1, [r4, #18]
d004061a:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d004061e:	7ce0      	ldrb	r0, [r4, #19]
d0040620:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040624:	f44f 71de 	mov.w	r1, #444	; 0x1bc
d0040628:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d004062c:	2003      	movs	r0, #3
d004062e:	689b      	ldr	r3, [r3, #8]
d0040630:	69db      	ldr	r3, [r3, #28]
d0040632:	4798      	blx	r3
d0040634:	7c23      	ldrb	r3, [r4, #16]
d0040636:	7c62      	ldrb	r2, [r4, #17]
d0040638:	2101      	movs	r1, #1
d004063a:	7ca0      	ldrb	r0, [r4, #18]
d004063c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040640:	7ce2      	ldrb	r2, [r4, #19]
d0040642:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0040646:	2003      	movs	r0, #3
d0040648:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004064c:	689b      	ldr	r3, [r3, #8]
d004064e:	6a1b      	ldr	r3, [r3, #32]
d0040650:	4798      	blx	r3
d0040652:	4641      	mov	r1, r8
d0040654:	487e      	ldr	r0, [pc, #504]	; (d0040850 <loadSounds+0x570>)
d0040656:	f7ff fdb7 	bl	d00401c8 <LoadSFX>
d004065a:	7c25      	ldrb	r5, [r4, #16]
d004065c:	f894 c011 	ldrb.w	ip, [r4, #17]
d0040660:	4602      	mov	r2, r0
d0040662:	7ca0      	ldrb	r0, [r4, #18]
d0040664:	2300      	movs	r3, #0
d0040666:	ea45 250c 	orr.w	r5, r5, ip, lsl #8
d004066a:	f8d8 1000 	ldr.w	r1, [r8]
d004066e:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d0040672:	7ce0      	ldrb	r0, [r4, #19]
d0040674:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d0040678:	2004      	movs	r0, #4
d004067a:	68ad      	ldr	r5, [r5, #8]
d004067c:	68ed      	ldr	r5, [r5, #12]
d004067e:	47a8      	blx	r5
d0040680:	7c23      	ldrb	r3, [r4, #16]
d0040682:	7c62      	ldrb	r2, [r4, #17]
d0040684:	f646 5160 	movw	r1, #28000	; 0x6d60
d0040688:	7ca5      	ldrb	r5, [r4, #18]
d004068a:	2004      	movs	r0, #4
d004068c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040690:	7ce2      	ldrb	r2, [r4, #19]
d0040692:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040696:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004069a:	689b      	ldr	r3, [r3, #8]
d004069c:	691b      	ldr	r3, [r3, #16]
d004069e:	4798      	blx	r3
d00406a0:	7c23      	ldrb	r3, [r4, #16]
d00406a2:	7c62      	ldrb	r2, [r4, #17]
d00406a4:	f44f 71af 	mov.w	r1, #350	; 0x15e
d00406a8:	7ca5      	ldrb	r5, [r4, #18]
d00406aa:	2004      	movs	r0, #4
d00406ac:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00406b0:	7ce2      	ldrb	r2, [r4, #19]
d00406b2:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00406b6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00406ba:	689b      	ldr	r3, [r3, #8]
d00406bc:	695b      	ldr	r3, [r3, #20]
d00406be:	4798      	blx	r3
d00406c0:	7c23      	ldrb	r3, [r4, #16]
d00406c2:	7c62      	ldrb	r2, [r4, #17]
d00406c4:	2100      	movs	r1, #0
d00406c6:	7ca5      	ldrb	r5, [r4, #18]
d00406c8:	2004      	movs	r0, #4
d00406ca:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00406ce:	7ce2      	ldrb	r2, [r4, #19]
d00406d0:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00406d4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00406d8:	689b      	ldr	r3, [r3, #8]
d00406da:	699b      	ldr	r3, [r3, #24]
d00406dc:	4798      	blx	r3
d00406de:	7c23      	ldrb	r3, [r4, #16]
d00406e0:	7c62      	ldrb	r2, [r4, #17]
d00406e2:	2100      	movs	r1, #0
d00406e4:	7ca5      	ldrb	r5, [r4, #18]
d00406e6:	2004      	movs	r0, #4
d00406e8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00406ec:	7ce2      	ldrb	r2, [r4, #19]
d00406ee:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00406f2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00406f6:	689b      	ldr	r3, [r3, #8]
d00406f8:	6a1b      	ldr	r3, [r3, #32]
d00406fa:	4798      	blx	r3
d00406fc:	4639      	mov	r1, r7
d00406fe:	4855      	ldr	r0, [pc, #340]	; (d0040854 <loadSounds+0x574>)
d0040700:	f7ff fd62 	bl	d00401c8 <LoadSFX>
d0040704:	7c25      	ldrb	r5, [r4, #16]
d0040706:	7c61      	ldrb	r1, [r4, #17]
d0040708:	4602      	mov	r2, r0
d004070a:	7ca0      	ldrb	r0, [r4, #18]
d004070c:	2300      	movs	r3, #0
d004070e:	ea45 2501 	orr.w	r5, r5, r1, lsl #8
d0040712:	f894 c013 	ldrb.w	ip, [r4, #19]
d0040716:	6839      	ldr	r1, [r7, #0]
d0040718:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d004071c:	2005      	movs	r0, #5
d004071e:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d0040722:	68ad      	ldr	r5, [r5, #8]
d0040724:	68ed      	ldr	r5, [r5, #12]
d0040726:	47a8      	blx	r5
d0040728:	7c23      	ldrb	r3, [r4, #16]
d004072a:	7c62      	ldrb	r2, [r4, #17]
d004072c:	f44f 41fa 	mov.w	r1, #32000	; 0x7d00
d0040730:	7ca5      	ldrb	r5, [r4, #18]
d0040732:	2005      	movs	r0, #5
d0040734:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040738:	7ce2      	ldrb	r2, [r4, #19]
d004073a:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004073e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040742:	689b      	ldr	r3, [r3, #8]
d0040744:	691b      	ldr	r3, [r3, #16]
d0040746:	4798      	blx	r3
d0040748:	7c23      	ldrb	r3, [r4, #16]
d004074a:	7c62      	ldrb	r2, [r4, #17]
d004074c:	f44f 71e1 	mov.w	r1, #450	; 0x1c2
d0040750:	7ca5      	ldrb	r5, [r4, #18]
d0040752:	2005      	movs	r0, #5
d0040754:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040758:	7ce2      	ldrb	r2, [r4, #19]
d004075a:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004075e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040762:	689b      	ldr	r3, [r3, #8]
d0040764:	695b      	ldr	r3, [r3, #20]
d0040766:	4798      	blx	r3
d0040768:	7c23      	ldrb	r3, [r4, #16]
d004076a:	7c62      	ldrb	r2, [r4, #17]
d004076c:	2100      	movs	r1, #0
d004076e:	7ca5      	ldrb	r5, [r4, #18]
d0040770:	2005      	movs	r0, #5
d0040772:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040776:	7ce2      	ldrb	r2, [r4, #19]
d0040778:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004077c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040780:	689b      	ldr	r3, [r3, #8]
d0040782:	699b      	ldr	r3, [r3, #24]
d0040784:	4798      	blx	r3
d0040786:	7c23      	ldrb	r3, [r4, #16]
d0040788:	7c62      	ldrb	r2, [r4, #17]
d004078a:	2100      	movs	r1, #0
d004078c:	7ca5      	ldrb	r5, [r4, #18]
d004078e:	2005      	movs	r0, #5
d0040790:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040794:	7ce2      	ldrb	r2, [r4, #19]
d0040796:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004079a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004079e:	689b      	ldr	r3, [r3, #8]
d00407a0:	6a1b      	ldr	r3, [r3, #32]
d00407a2:	4798      	blx	r3
d00407a4:	4631      	mov	r1, r6
d00407a6:	482c      	ldr	r0, [pc, #176]	; (d0040858 <loadSounds+0x578>)
d00407a8:	f7ff fd0e 	bl	d00401c8 <LoadSFX>
d00407ac:	7c25      	ldrb	r5, [r4, #16]
d00407ae:	7c61      	ldrb	r1, [r4, #17]
d00407b0:	4602      	mov	r2, r0
d00407b2:	f894 c012 	ldrb.w	ip, [r4, #18]
d00407b6:	2300      	movs	r3, #0
d00407b8:	ea45 2501 	orr.w	r5, r5, r1, lsl #8
d00407bc:	7ce7      	ldrb	r7, [r4, #19]
d00407be:	6831      	ldr	r1, [r6, #0]
d00407c0:	2006      	movs	r0, #6
d00407c2:	ea45 450c 	orr.w	r5, r5, ip, lsl #16
d00407c6:	ea45 6507 	orr.w	r5, r5, r7, lsl #24
d00407ca:	68ad      	ldr	r5, [r5, #8]
d00407cc:	68ed      	ldr	r5, [r5, #12]
d00407ce:	47a8      	blx	r5
d00407d0:	7c23      	ldrb	r3, [r4, #16]
d00407d2:	7c62      	ldrb	r2, [r4, #17]
d00407d4:	f646 5160 	movw	r1, #28000	; 0x6d60
d00407d8:	7ca5      	ldrb	r5, [r4, #18]
d00407da:	2006      	movs	r0, #6
d00407dc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00407e0:	7ce2      	ldrb	r2, [r4, #19]
d00407e2:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00407e6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00407ea:	689b      	ldr	r3, [r3, #8]
d00407ec:	691b      	ldr	r3, [r3, #16]
d00407ee:	4798      	blx	r3
d00407f0:	7c23      	ldrb	r3, [r4, #16]
d00407f2:	7c62      	ldrb	r2, [r4, #17]
d00407f4:	f44f 71e1 	mov.w	r1, #450	; 0x1c2
d00407f8:	7ca5      	ldrb	r5, [r4, #18]
d00407fa:	2006      	movs	r0, #6
d00407fc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040800:	7ce2      	ldrb	r2, [r4, #19]
d0040802:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040806:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004080a:	689b      	ldr	r3, [r3, #8]
d004080c:	695b      	ldr	r3, [r3, #20]
d004080e:	4798      	blx	r3
d0040810:	7c23      	ldrb	r3, [r4, #16]
d0040812:	7c62      	ldrb	r2, [r4, #17]
d0040814:	2100      	movs	r1, #0
d0040816:	7ca5      	ldrb	r5, [r4, #18]
d0040818:	2006      	movs	r0, #6
d004081a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004081e:	7ce2      	ldrb	r2, [r4, #19]
d0040820:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040824:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040828:	689b      	ldr	r3, [r3, #8]
d004082a:	699b      	ldr	r3, [r3, #24]
d004082c:	4798      	blx	r3
d004082e:	7c23      	ldrb	r3, [r4, #16]
d0040830:	7c62      	ldrb	r2, [r4, #17]
d0040832:	2100      	movs	r1, #0
d0040834:	7ca5      	ldrb	r5, [r4, #18]
d0040836:	2006      	movs	r0, #6
d0040838:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004083c:	7ce2      	ldrb	r2, [r4, #19]
d004083e:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040842:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040846:	689b      	ldr	r3, [r3, #8]
d0040848:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d004084c:	6a1b      	ldr	r3, [r3, #32]
d004084e:	4718      	bx	r3
d0040850:	d004402c 	.word	0xd004402c
d0040854:	d0044040 	.word	0xd0044040
d0040858:	d0044058 	.word	0xd0044058

d004085c <MusicPlay>:
d004085c:	b430      	push	{r4, r5}
d004085e:	b980      	cbnz	r0, d0040882 <MusicPlay+0x26>
d0040860:	4601      	mov	r1, r0
d0040862:	4a0c      	ldr	r2, [pc, #48]	; (d0040894 <MusicPlay+0x38>)
d0040864:	480c      	ldr	r0, [pc, #48]	; (d0040898 <MusicPlay+0x3c>)
d0040866:	7c13      	ldrb	r3, [r2, #16]
d0040868:	7c55      	ldrb	r5, [r2, #17]
d004086a:	7c94      	ldrb	r4, [r2, #18]
d004086c:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d0040870:	7cd2      	ldrb	r2, [r2, #19]
d0040872:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d0040876:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004087a:	685b      	ldr	r3, [r3, #4]
d004087c:	bc30      	pop	{r4, r5}
d004087e:	681b      	ldr	r3, [r3, #0]
d0040880:	4718      	bx	r3
d0040882:	2801      	cmp	r0, #1
d0040884:	d103      	bne.n	d004088e <MusicPlay+0x32>
d0040886:	4a03      	ldr	r2, [pc, #12]	; (d0040894 <MusicPlay+0x38>)
d0040888:	2100      	movs	r1, #0
d004088a:	4804      	ldr	r0, [pc, #16]	; (d004089c <MusicPlay+0x40>)
d004088c:	e7eb      	b.n	d0040866 <MusicPlay+0xa>
d004088e:	bc30      	pop	{r4, r5}
d0040890:	4770      	bx	lr
d0040892:	bf00      	nop
d0040894:	2001f000 	.word	0x2001f000
d0040898:	d0044068 	.word	0xd0044068
d004089c:	d0044078 	.word	0xd0044078

d00408a0 <spawnTorpedo>:
d00408a0:	b5f0      	push	{r4, r5, r6, r7, lr}
d00408a2:	b083      	sub	sp, #12
d00408a4:	2300      	movs	r3, #0
d00408a6:	4e5b      	ldr	r6, [pc, #364]	; (d0040a14 <spawnTorpedo+0x174>)
d00408a8:	e9cd 0100 	strd	r0, r1, [sp]
d00408ac:	e002      	b.n	d00408b4 <spawnTorpedo+0x14>
d00408ae:	2b20      	cmp	r3, #32
d00408b0:	f000 80ad 	beq.w	d0040a0e <spawnTorpedo+0x16e>
d00408b4:	eb03 0443 	add.w	r4, r3, r3, lsl #1
d00408b8:	3301      	adds	r3, #1
d00408ba:	eb06 1404 	add.w	r4, r6, r4, lsl #4
d00408be:	f894 2025 	ldrb.w	r2, [r4, #37]	; 0x25
d00408c2:	f002 05ff 	and.w	r5, r2, #255	; 0xff
d00408c6:	2a00      	cmp	r2, #0
d00408c8:	d1f1      	bne.n	d00408ae <spawnTorpedo+0xe>
d00408ca:	4629      	mov	r1, r5
d00408cc:	2230      	movs	r2, #48	; 0x30
d00408ce:	4620      	mov	r0, r4
d00408d0:	2601      	movs	r6, #1
d00408d2:	f002 fbdd 	bl	d0043090 <memset>
d00408d6:	eddd 7a00 	vldr	s15, [sp]
d00408da:	ed9d 7a01 	vldr	s14, [sp, #4]
d00408de:	2740      	movs	r7, #64	; 0x40
d00408e0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00408e4:	4a4c      	ldr	r2, [pc, #304]	; (d0040a18 <spawnTorpedo+0x178>)
d00408e6:	eef8 6ac7 	vcvt.f32.s32	s13, s14
d00408ea:	ed9f 7a4c 	vldr	s14, [pc, #304]	; d0040a1c <spawnTorpedo+0x17c>
d00408ee:	f884 6025 	strb.w	r6, [r4, #37]	; 0x25
d00408f2:	f04f 4c83 	mov.w	ip, #1098907648	; 0x41800000
d00408f6:	ee77 7aa7 	vadd.f32	s15, s15, s15
d00408fa:	f884 5024 	strb.w	r5, [r4, #36]	; 0x24
d00408fe:	ee66 6a87 	vmul.f32	s13, s13, s14
d0040902:	60a2      	str	r2, [r4, #8]
d0040904:	ed9f 6a46 	vldr	s12, [pc, #280]	; d0040a20 <spawnTorpedo+0x180>
d0040908:	2104      	movs	r1, #4
d004090a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004090e:	4630      	mov	r0, r6
d0040910:	eefd 6ae6 	vcvt.s32.f32	s13, s13
d0040914:	ee17 3a90 	vmov	r3, s15
d0040918:	ee16 2a90 	vmov	r2, s13
d004091c:	b21b      	sxth	r3, r3
d004091e:	b212      	sxth	r2, r2
d0040920:	f5a3 73a0 	sub.w	r3, r3, #320	; 0x140
d0040924:	ee07 3a90 	vmov	s15, r3
d0040928:	f1a2 03f0 	sub.w	r3, r2, #240	; 0xf0
d004092c:	ee07 3a10 	vmov	s14, r3
d0040930:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040934:	2300      	movs	r3, #0
d0040936:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004093a:	ee67 7a86 	vmul.f32	s15, s15, s12
d004093e:	ee27 7a06 	vmul.f32	s14, s14, s12
d0040942:	edc4 7a00 	vstr	s15, [r4]
d0040946:	ed84 7a01 	vstr	s14, [r4, #4]
d004094a:	60e3      	str	r3, [r4, #12]
d004094c:	6123      	str	r3, [r4, #16]
d004094e:	f8c4 c014 	str.w	ip, [r4, #20]
d0040952:	8427      	strh	r7, [r4, #32]
d0040954:	8467      	strh	r7, [r4, #34]	; 0x22
d0040956:	f884 5028 	strb.w	r5, [r4, #40]	; 0x28
d004095a:	f884 102a 	strb.w	r1, [r4, #42]	; 0x2a
d004095e:	f001 ff15 	bl	d004278c <sbx_rng_range>
d0040962:	f010 0f01 	tst.w	r0, #1
d0040966:	4d2f      	ldr	r5, [pc, #188]	; (d0040a24 <spawnTorpedo+0x184>)
d0040968:	f04f 0112 	mov.w	r1, #18
d004096c:	bf0c      	ite	eq
d004096e:	4637      	moveq	r7, r6
d0040970:	f04f 37ff 	movne.w	r7, #4294967295	; 0xffffffff
d0040974:	2264      	movs	r2, #100	; 0x64
d0040976:	2306      	movs	r3, #6
d0040978:	f884 7029 	strb.w	r7, [r4, #41]	; 0x29
d004097c:	4630      	mov	r0, r6
d004097e:	f884 102b 	strb.w	r1, [r4, #43]	; 0x2b
d0040982:	83e2      	strh	r2, [r4, #30]
d0040984:	83a3      	strh	r3, [r4, #28]
d0040986:	f06f 047e 	mvn.w	r4, #126	; 0x7e
d004098a:	7c2b      	ldrb	r3, [r5, #16]
d004098c:	7c6a      	ldrb	r2, [r5, #17]
d004098e:	7ca9      	ldrb	r1, [r5, #18]
d0040990:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040994:	7cea      	ldrb	r2, [r5, #19]
d0040996:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004099a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004099e:	689b      	ldr	r3, [r3, #8]
d00409a0:	689b      	ldr	r3, [r3, #8]
d00409a2:	4798      	blx	r3
d00409a4:	4b20      	ldr	r3, [pc, #128]	; (d0040a28 <spawnTorpedo+0x188>)
d00409a6:	4921      	ldr	r1, [pc, #132]	; (d0040a2c <spawnTorpedo+0x18c>)
d00409a8:	4630      	mov	r0, r6
d00409aa:	8a9b      	ldrh	r3, [r3, #20]
d00409ac:	7c2a      	ldrb	r2, [r5, #16]
d00409ae:	3320      	adds	r3, #32
d00409b0:	7c6f      	ldrb	r7, [r5, #17]
d00409b2:	b21b      	sxth	r3, r3
d00409b4:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
d00409b8:	7caf      	ldrb	r7, [r5, #18]
d00409ba:	3bf0      	subs	r3, #240	; 0xf0
d00409bc:	ea42 4707 	orr.w	r7, r2, r7, lsl #16
d00409c0:	ebc3 13c3 	rsb	r3, r3, r3, lsl #7
d00409c4:	fb81 2103 	smull	r2, r1, r1, r3
d00409c8:	17da      	asrs	r2, r3, #31
d00409ca:	440b      	add	r3, r1
d00409cc:	7ce9      	ldrb	r1, [r5, #19]
d00409ce:	ebc2 13e3 	rsb	r3, r2, r3, asr #7
d00409d2:	ea47 6201 	orr.w	r2, r7, r1, lsl #24
d00409d6:	b219      	sxth	r1, r3
d00409d8:	6893      	ldr	r3, [r2, #8]
d00409da:	297f      	cmp	r1, #127	; 0x7f
d00409dc:	699b      	ldr	r3, [r3, #24]
d00409de:	bfa8      	it	ge
d00409e0:	217f      	movge	r1, #127	; 0x7f
d00409e2:	42a1      	cmp	r1, r4
d00409e4:	bfb8      	it	lt
d00409e6:	4621      	movlt	r1, r4
d00409e8:	b249      	sxtb	r1, r1
d00409ea:	4798      	blx	r3
d00409ec:	7c2b      	ldrb	r3, [r5, #16]
d00409ee:	7c6a      	ldrb	r2, [r5, #17]
d00409f0:	4630      	mov	r0, r6
d00409f2:	7ca9      	ldrb	r1, [r5, #18]
d00409f4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00409f8:	7cea      	ldrb	r2, [r5, #19]
d00409fa:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00409fe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040a02:	689b      	ldr	r3, [r3, #8]
d0040a04:	685b      	ldr	r3, [r3, #4]
d0040a06:	b003      	add	sp, #12
d0040a08:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0040a0c:	4718      	bx	r3
d0040a0e:	b003      	add	sp, #12
d0040a10:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0040a12:	bf00      	nop
d0040a14:	d0045024 	.word	0xd0045024
d0040a18:	42a00000 	.word	0x42a00000
d0040a1c:	400ccccd 	.word	0x400ccccd
d0040a20:	3e9d89d9 	.word	0x3e9d89d9
d0040a24:	2001f000 	.word	0x2001f000
d0040a28:	d00457e0 	.word	0xd00457e0
d0040a2c:	88888889 	.word	0x88888889

d0040a30 <initTorpedos3D>:
d0040a30:	f44f 62c0 	mov.w	r2, #1536	; 0x600
d0040a34:	2100      	movs	r1, #0
d0040a36:	4801      	ldr	r0, [pc, #4]	; (d0040a3c <initTorpedos3D+0xc>)
d0040a38:	f002 bb2a 	b.w	d0043090 <memset>
d0040a3c:	d0045024 	.word	0xd0045024

d0040a40 <initPills3D>:
d0040a40:	f44f 72c0 	mov.w	r2, #384	; 0x180
d0040a44:	2100      	movs	r1, #0
d0040a46:	4801      	ldr	r0, [pc, #4]	; (d0040a4c <initPills3D+0xc>)
d0040a48:	f002 bb22 	b.w	d0043090 <memset>
d0040a4c:	d0045660 	.word	0xd0045660

d0040a50 <proc_photo_torps>:
d0040a50:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040a54:	ed2d 8b04 	vpush	{d8-d9}
d0040a58:	b085      	sub	sp, #20
d0040a5a:	f04f 0800 	mov.w	r8, #0
d0040a5e:	f8df b2ac 	ldr.w	fp, [pc, #684]	; d0040d0c <proc_photo_torps+0x2bc>
d0040a62:	eddf 8aa2 	vldr	s17, [pc, #648]	; d0040cec <proc_photo_torps+0x29c>
d0040a66:	ed9f 8aa2 	vldr	s16, [pc, #648]	; d0040cf0 <proc_photo_torps+0x2a0>
d0040a6a:	eddf 9aa2 	vldr	s19, [pc, #648]	; d0040cf4 <proc_photo_torps+0x2a4>
d0040a6e:	ed9f 9aa2 	vldr	s18, [pc, #648]	; d0040cf8 <proc_photo_torps+0x2a8>
d0040a72:	e9cd 0100 	strd	r0, r1, [sp]
d0040a76:	e07c      	b.n	d0040b72 <proc_photo_torps+0x122>
d0040a78:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0040a7c:	ed91 7a02 	vldr	s14, [r1, #8]
d0040a80:	edd1 5a00 	vldr	s11, [r1]
d0040a84:	ed91 6a01 	vldr	s12, [r1, #4]
d0040a88:	eec6 7a87 	vdiv.f32	s15, s13, s14
d0040a8c:	ed9f 5a9b 	vldr	s10, [pc, #620]	; d0040cfc <proc_photo_torps+0x2ac>
d0040a90:	eddf 6a9b 	vldr	s13, [pc, #620]	; d0040d00 <proc_photo_torps+0x2b0>
d0040a94:	ed9f 7a9b 	vldr	s14, [pc, #620]	; d0040d04 <proc_photo_torps+0x2b4>
d0040a98:	9e00      	ldr	r6, [sp, #0]
d0040a9a:	4c9b      	ldr	r4, [pc, #620]	; (d0040d08 <proc_photo_torps+0x2b8>)
d0040a9c:	ee65 5a88 	vmul.f32	s11, s11, s16
d0040aa0:	ee26 6a08 	vmul.f32	s12, s12, s16
d0040aa4:	eee5 6aa7 	vfma.f32	s13, s11, s15
d0040aa8:	eea6 7a27 	vfma.f32	s14, s12, s15
d0040aac:	ee67 7a85 	vmul.f32	s15, s15, s10
d0040ab0:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0040ab4:	eefd 6ae6 	vcvt.s32.f32	s13, s13
d0040ab8:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0040abc:	ee17 2a90 	vmov	r2, s15
d0040ac0:	ee16 3a90 	vmov	r3, s13
d0040ac4:	b292      	uxth	r2, r2
d0040ac6:	ee17 0a10 	vmov	r0, s14
d0040aca:	1b9b      	subs	r3, r3, r6
d0040acc:	9e01      	ldr	r6, [sp, #4]
d0040ace:	2a50      	cmp	r2, #80	; 0x50
d0040ad0:	eba0 0006 	sub.w	r0, r0, r6
d0040ad4:	b21b      	sxth	r3, r3
d0040ad6:	bf28      	it	cs
d0040ad8:	2250      	movcs	r2, #80	; 0x50
d0040ada:	b200      	sxth	r0, r0
d0040adc:	830b      	strh	r3, [r1, #24]
d0040ade:	2a08      	cmp	r2, #8
d0040ae0:	8348      	strh	r0, [r1, #26]
d0040ae2:	bf38      	it	cc
d0040ae4:	2208      	movcc	r2, #8
d0040ae6:	83ca      	strh	r2, [r1, #30]
d0040ae8:	8c0b      	ldrh	r3, [r1, #32]
d0040aea:	b21b      	sxth	r3, r3
d0040aec:	fb02 f303 	mul.w	r3, r2, r3
d0040af0:	fba4 0303 	umull	r0, r3, r4, r3
d0040af4:	f343 138f 	sbfx	r3, r3, #6, #16
d0040af8:	838b      	strh	r3, [r1, #28]
d0040afa:	8b8b      	ldrh	r3, [r1, #28]
d0040afc:	b21b      	sxth	r3, r3
d0040afe:	2b01      	cmp	r3, #1
d0040b00:	dc01      	bgt.n	d0040b06 <proc_photo_torps+0xb6>
d0040b02:	2302      	movs	r3, #2
d0040b04:	838b      	strh	r3, [r1, #28]
d0040b06:	eb05 0308 	add.w	r3, r5, r8
d0040b0a:	487f      	ldr	r0, [pc, #508]	; (d0040d08 <proc_photo_torps+0x2b8>)
d0040b0c:	eb0b 1303 	add.w	r3, fp, r3, lsl #4
d0040b10:	8c19      	ldrh	r1, [r3, #32]
d0040b12:	8c5c      	ldrh	r4, [r3, #34]	; 0x22
d0040b14:	b209      	sxth	r1, r1
d0040b16:	8b1e      	ldrh	r6, [r3, #24]
d0040b18:	b224      	sxth	r4, r4
d0040b1a:	fb02 f101 	mul.w	r1, r2, r1
d0040b1e:	b236      	sxth	r6, r6
d0040b20:	fba0 7101 	umull	r7, r1, r0, r1
d0040b24:	f341 114f 	sbfx	r1, r1, #5, #16
d0040b28:	424f      	negs	r7, r1
d0040b2a:	42be      	cmp	r6, r7
d0040b2c:	db16      	blt.n	d0040b5c <proc_photo_torps+0x10c>
d0040b2e:	8b1e      	ldrh	r6, [r3, #24]
d0040b30:	f501 7120 	add.w	r1, r1, #640	; 0x280
d0040b34:	b236      	sxth	r6, r6
d0040b36:	428e      	cmp	r6, r1
d0040b38:	dc10      	bgt.n	d0040b5c <proc_photo_torps+0x10c>
d0040b3a:	fb02 f204 	mul.w	r2, r2, r4
d0040b3e:	8b59      	ldrh	r1, [r3, #26]
d0040b40:	fba0 0202 	umull	r0, r2, r0, r2
d0040b44:	b209      	sxth	r1, r1
d0040b46:	f342 124f 	sbfx	r2, r2, #5, #16
d0040b4a:	4250      	negs	r0, r2
d0040b4c:	4281      	cmp	r1, r0
d0040b4e:	db05      	blt.n	d0040b5c <proc_photo_torps+0x10c>
d0040b50:	8b59      	ldrh	r1, [r3, #26]
d0040b52:	f502 72f0 	add.w	r2, r2, #480	; 0x1e0
d0040b56:	b209      	sxth	r1, r1
d0040b58:	4291      	cmp	r1, r2
d0040b5a:	dd6c      	ble.n	d0040c36 <proc_photo_torps+0x1e6>
d0040b5c:	4445      	add	r5, r8
d0040b5e:	2300      	movs	r3, #0
d0040b60:	eb0b 1505 	add.w	r5, fp, r5, lsl #4
d0040b64:	f885 3025 	strb.w	r3, [r5, #37]	; 0x25
d0040b68:	f108 0801 	add.w	r8, r8, #1
d0040b6c:	f1b8 0f20 	cmp.w	r8, #32
d0040b70:	d05a      	beq.n	d0040c28 <proc_photo_torps+0x1d8>
d0040b72:	eb08 0348 	add.w	r3, r8, r8, lsl #1
d0040b76:	ea4f 0548 	mov.w	r5, r8, lsl #1
d0040b7a:	eb0b 1303 	add.w	r3, fp, r3, lsl #4
d0040b7e:	f893 2025 	ldrb.w	r2, [r3, #37]	; 0x25
d0040b82:	2a00      	cmp	r2, #0
d0040b84:	d0f0      	beq.n	d0040b68 <proc_photo_torps+0x118>
d0040b86:	ed93 7a03 	vldr	s14, [r3, #12]
d0040b8a:	edd3 7a00 	vldr	s15, [r3]
d0040b8e:	ee77 7a87 	vadd.f32	s15, s15, s14
d0040b92:	edc3 7a00 	vstr	s15, [r3]
d0040b96:	ed93 7a04 	vldr	s14, [r3, #16]
d0040b9a:	edd3 7a01 	vldr	s15, [r3, #4]
d0040b9e:	ee77 7a87 	vadd.f32	s15, s15, s14
d0040ba2:	edc3 7a01 	vstr	s15, [r3, #4]
d0040ba6:	ed93 7a05 	vldr	s14, [r3, #20]
d0040baa:	edd3 7a02 	vldr	s15, [r3, #8]
d0040bae:	ee77 7a87 	vadd.f32	s15, s15, s14
d0040bb2:	edc3 7a02 	vstr	s15, [r3, #8]
d0040bb6:	f893 2028 	ldrb.w	r2, [r3, #40]	; 0x28
d0040bba:	3201      	adds	r2, #1
d0040bbc:	b2d2      	uxtb	r2, r2
d0040bbe:	f883 2028 	strb.w	r2, [r3, #40]	; 0x28
d0040bc2:	f893 2028 	ldrb.w	r2, [r3, #40]	; 0x28
d0040bc6:	2a02      	cmp	r2, #2
d0040bc8:	d91a      	bls.n	d0040c00 <proc_photo_torps+0x1b0>
d0040bca:	2100      	movs	r1, #0
d0040bcc:	f883 1028 	strb.w	r1, [r3, #40]	; 0x28
d0040bd0:	f893 002a 	ldrb.w	r0, [r3, #42]	; 0x2a
d0040bd4:	f893 2029 	ldrb.w	r2, [r3, #41]	; 0x29
d0040bd8:	f893 402b 	ldrb.w	r4, [r3, #43]	; 0x2b
d0040bdc:	fa40 f282 	sxtab	r2, r0, r2
d0040be0:	b250      	sxtb	r0, r2
d0040be2:	b2d2      	uxtb	r2, r2
d0040be4:	42a0      	cmp	r0, r4
d0040be6:	da24      	bge.n	d0040c32 <proc_photo_torps+0x1e2>
d0040be8:	4288      	cmp	r0, r1
d0040bea:	da03      	bge.n	d0040bf4 <proc_photo_torps+0x1a4>
d0040bec:	f893 202b 	ldrb.w	r2, [r3, #43]	; 0x2b
d0040bf0:	3a01      	subs	r2, #1
d0040bf2:	b2d2      	uxtb	r2, r2
d0040bf4:	eb05 0308 	add.w	r3, r5, r8
d0040bf8:	eb0b 1303 	add.w	r3, fp, r3, lsl #4
d0040bfc:	f883 202a 	strb.w	r2, [r3, #42]	; 0x2a
d0040c00:	eb05 0108 	add.w	r1, r5, r8
d0040c04:	eb0b 1101 	add.w	r1, fp, r1, lsl #4
d0040c08:	edd1 7a02 	vldr	s15, [r1, #8]
d0040c0c:	eef4 7ae8 	vcmpe.f32	s15, s17
d0040c10:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040c14:	f6ff af30 	blt.w	d0040a78 <proc_photo_torps+0x28>
d0040c18:	f108 0801 	add.w	r8, r8, #1
d0040c1c:	2300      	movs	r3, #0
d0040c1e:	f1b8 0f20 	cmp.w	r8, #32
d0040c22:	f881 3025 	strb.w	r3, [r1, #37]	; 0x25
d0040c26:	d1a4      	bne.n	d0040b72 <proc_photo_torps+0x122>
d0040c28:	b005      	add	sp, #20
d0040c2a:	ecbd 8b04 	vpop	{d8-d9}
d0040c2e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040c32:	460a      	mov	r2, r1
d0040c34:	e7de      	b.n	d0040bf4 <proc_photo_torps+0x1a4>
d0040c36:	2600      	movs	r6, #0
d0040c38:	f8df a0d4 	ldr.w	sl, [pc, #212]	; d0040d10 <proc_photo_torps+0x2c0>
d0040c3c:	4618      	mov	r0, r3
d0040c3e:	f8cd 8008 	str.w	r8, [sp, #8]
d0040c42:	9303      	str	r3, [sp, #12]
d0040c44:	eb06 0446 	add.w	r4, r6, r6, lsl #1
d0040c48:	ea4f 0946 	mov.w	r9, r6, lsl #1
d0040c4c:	eb0a 1404 	add.w	r4, sl, r4, lsl #4
d0040c50:	f894 3025 	ldrb.w	r3, [r4, #37]	; 0x25
d0040c54:	f104 0c18 	add.w	ip, r4, #24
d0040c58:	f104 0e25 	add.w	lr, r4, #37	; 0x25
d0040c5c:	2b00      	cmp	r3, #0
d0040c5e:	d03a      	beq.n	d0040cd6 <proc_photo_torps+0x286>
d0040c60:	edd4 7a02 	vldr	s15, [r4, #8]
d0040c64:	ed90 7a02 	vldr	s14, [r0, #8]
d0040c68:	ee77 7ac7 	vsub.f32	s15, s15, s14
d0040c6c:	eef4 7ae9 	vcmpe.f32	s15, s19
d0040c70:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040c74:	eef4 7ac9 	vcmpe.f32	s15, s18
d0040c78:	d42d      	bmi.n	d0040cd6 <proc_photo_torps+0x286>
d0040c7a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040c7e:	bfcc      	ite	gt
d0040c80:	f04f 0801 	movgt.w	r8, #1
d0040c84:	f04f 0800 	movle.w	r8, #0
d0040c88:	dc25      	bgt.n	d0040cd6 <proc_photo_torps+0x286>
d0040c8a:	8b22      	ldrh	r2, [r4, #24]
d0040c8c:	8b07      	ldrh	r7, [r0, #24]
d0040c8e:	8b63      	ldrh	r3, [r4, #26]
d0040c90:	b212      	sxth	r2, r2
d0040c92:	8b41      	ldrh	r1, [r0, #26]
d0040c94:	b23f      	sxth	r7, r7
d0040c96:	b21b      	sxth	r3, r3
d0040c98:	b209      	sxth	r1, r1
d0040c9a:	1bd2      	subs	r2, r2, r7
d0040c9c:	8ba7      	ldrh	r7, [r4, #28]
d0040c9e:	1a5b      	subs	r3, r3, r1
d0040ca0:	8b81      	ldrh	r1, [r0, #28]
d0040ca2:	ee07 2a10 	vmov	s14, r2
d0040ca6:	ee07 3a90 	vmov	s15, r3
d0040caa:	b20b      	sxth	r3, r1
d0040cac:	eef8 6ac7 	vcvt.f32.s32	s13, s14
d0040cb0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040cb4:	fa03 f387 	sxtah	r3, r3, r7
d0040cb8:	ee07 3a10 	vmov	s14, r3
d0040cbc:	ee67 7aa7 	vmul.f32	s15, s15, s15
d0040cc0:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0040cc4:	eee6 7aa6 	vfma.f32	s15, s13, s13
d0040cc8:	ee27 7a07 	vmul.f32	s14, s14, s14
d0040ccc:	eef4 7ac7 	vcmpe.f32	s15, s14
d0040cd0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040cd4:	d91e      	bls.n	d0040d14 <proc_photo_torps+0x2c4>
d0040cd6:	3601      	adds	r6, #1
d0040cd8:	2e0e      	cmp	r6, #14
d0040cda:	d1b3      	bne.n	d0040c44 <proc_photo_torps+0x1f4>
d0040cdc:	f8dd 8008 	ldr.w	r8, [sp, #8]
d0040ce0:	4445      	add	r5, r8
d0040ce2:	eb0b 1505 	add.w	r5, fp, r5, lsl #4
d0040ce6:	f895 3025 	ldrb.w	r3, [r5, #37]	; 0x25
d0040cea:	e73d      	b.n	d0040b68 <proc_photo_torps+0x118>
d0040cec:	44fc8000 	.word	0x44fc8000
d0040cf0:	43820000 	.word	0x43820000
d0040cf4:	c2f00000 	.word	0xc2f00000
d0040cf8:	42f00000 	.word	0x42f00000
d0040cfc:	46abe000 	.word	0x46abe000
d0040d00:	43a00000 	.word	0x43a00000
d0040d04:	43700000 	.word	0x43700000
d0040d08:	51eb851f 	.word	0x51eb851f
d0040d0c:	d0045024 	.word	0xd0045024
d0040d10:	d00458e0 	.word	0xd00458e0
d0040d14:	f894 2025 	ldrb.w	r2, [r4, #37]	; 0x25
d0040d18:	4641      	mov	r1, r8
d0040d1a:	9b03      	ldr	r3, [sp, #12]
d0040d1c:	3a01      	subs	r2, #1
d0040d1e:	f8dd 8008 	ldr.w	r8, [sp, #8]
d0040d22:	f8cd c00c 	str.w	ip, [sp, #12]
d0040d26:	b2d2      	uxtb	r2, r2
d0040d28:	f884 2025 	strb.w	r2, [r4, #37]	; 0x25
d0040d2c:	f883 1025 	strb.w	r1, [r3, #37]	; 0x25
d0040d30:	f894 3025 	ldrb.w	r3, [r4, #37]	; 0x25
d0040d34:	f003 02ff 	and.w	r2, r3, #255	; 0xff
d0040d38:	9202      	str	r2, [sp, #8]
d0040d3a:	2b00      	cmp	r3, #0
d0040d3c:	d1d0      	bne.n	d0040ce0 <proc_photo_torps+0x290>
d0040d3e:	4f6d      	ldr	r7, [pc, #436]	; (d0040ef4 <proc_photo_torps+0x4a4>)
d0040d40:	2005      	movs	r0, #5
d0040d42:	7c3b      	ldrb	r3, [r7, #16]
d0040d44:	7c7a      	ldrb	r2, [r7, #17]
d0040d46:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040d4a:	7cba      	ldrb	r2, [r7, #18]
d0040d4c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040d50:	7cfa      	ldrb	r2, [r7, #19]
d0040d52:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040d56:	689b      	ldr	r3, [r3, #8]
d0040d58:	689b      	ldr	r3, [r3, #8]
d0040d5a:	4798      	blx	r3
d0040d5c:	7c3b      	ldrb	r3, [r7, #16]
d0040d5e:	7c7a      	ldrb	r2, [r7, #17]
d0040d60:	2005      	movs	r0, #5
d0040d62:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040d66:	7cba      	ldrb	r2, [r7, #18]
d0040d68:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040d6c:	7cfa      	ldrb	r2, [r7, #19]
d0040d6e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040d72:	689b      	ldr	r3, [r3, #8]
d0040d74:	685b      	ldr	r3, [r3, #4]
d0040d76:	4798      	blx	r3
d0040d78:	9b03      	ldr	r3, [sp, #12]
d0040d7a:	f06f 0e7e 	mvn.w	lr, #126	; 0x7e
d0040d7e:	881a      	ldrh	r2, [r3, #0]
d0040d80:	7c38      	ldrb	r0, [r7, #16]
d0040d82:	3220      	adds	r2, #32
d0040d84:	7c79      	ldrb	r1, [r7, #17]
d0040d86:	4b5c      	ldr	r3, [pc, #368]	; (d0040ef8 <proc_photo_torps+0x4a8>)
d0040d88:	b212      	sxth	r2, r2
d0040d8a:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
d0040d8e:	7cb9      	ldrb	r1, [r7, #18]
d0040d90:	3af0      	subs	r2, #240	; 0xf0
d0040d92:	7cff      	ldrb	r7, [r7, #19]
d0040d94:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
d0040d98:	2005      	movs	r0, #5
d0040d9a:	ebc2 12c2 	rsb	r2, r2, r2, lsl #7
d0040d9e:	ea41 6107 	orr.w	r1, r1, r7, lsl #24
d0040da2:	fb83 c302 	smull	ip, r3, r3, r2
d0040da6:	ea4f 7ce2 	mov.w	ip, r2, asr #31
d0040daa:	4413      	add	r3, r2
d0040dac:	688a      	ldr	r2, [r1, #8]
d0040dae:	ebcc 13e3 	rsb	r3, ip, r3, asr #7
d0040db2:	b219      	sxth	r1, r3
d0040db4:	6993      	ldr	r3, [r2, #24]
d0040db6:	297f      	cmp	r1, #127	; 0x7f
d0040db8:	bfa8      	it	ge
d0040dba:	217f      	movge	r1, #127	; 0x7f
d0040dbc:	4571      	cmp	r1, lr
d0040dbe:	bfb8      	it	lt
d0040dc0:	4671      	movlt	r1, lr
d0040dc2:	b249      	sxtb	r1, r1
d0040dc4:	4798      	blx	r3
d0040dc6:	4a4d      	ldr	r2, [pc, #308]	; (d0040efc <proc_photo_torps+0x4ac>)
d0040dc8:	f894 4027 	ldrb.w	r4, [r4, #39]	; 0x27
d0040dcc:	2104      	movs	r1, #4
d0040dce:	6813      	ldr	r3, [r2, #0]
d0040dd0:	9802      	ldr	r0, [sp, #8]
d0040dd2:	4423      	add	r3, r4
d0040dd4:	6013      	str	r3, [r2, #0]
d0040dd6:	f001 fcd9 	bl	d004278c <sbx_rng_range>
d0040dda:	2801      	cmp	r0, #1
d0040ddc:	4604      	mov	r4, r0
d0040dde:	d00e      	beq.n	d0040dfe <proc_photo_torps+0x3ae>
d0040de0:	eb09 0006 	add.w	r0, r9, r6
d0040de4:	eb0a 1000 	add.w	r0, sl, r0, lsl #4
d0040de8:	f000 fc08 	bl	d00415fc <spawnExplode3d>
d0040dec:	2103      	movs	r1, #3
d0040dee:	2000      	movs	r0, #0
d0040df0:	f001 fccc 	bl	d004278c <sbx_rng_range>
d0040df4:	4601      	mov	r1, r0
d0040df6:	4630      	mov	r0, r6
d0040df8:	f000 faa0 	bl	d004133c <SpawnAstroid3D>
d0040dfc:	e770      	b.n	d0040ce0 <proc_photo_torps+0x290>
d0040dfe:	4f40      	ldr	r7, [pc, #256]	; (d0040f00 <proc_photo_torps+0x4b0>)
d0040e00:	f897 3025 	ldrb.w	r3, [r7, #37]	; 0x25
d0040e04:	f003 02ff 	and.w	r2, r3, #255	; 0xff
d0040e08:	2b00      	cmp	r3, #0
d0040e0a:	d05c      	beq.n	d0040ec6 <proc_photo_torps+0x476>
d0040e0c:	f897 3055 	ldrb.w	r3, [r7, #85]	; 0x55
d0040e10:	2b00      	cmp	r3, #0
d0040e12:	d06b      	beq.n	d0040eec <proc_photo_torps+0x49c>
d0040e14:	f897 3085 	ldrb.w	r3, [r7, #133]	; 0x85
d0040e18:	2b00      	cmp	r3, #0
d0040e1a:	d063      	beq.n	d0040ee4 <proc_photo_torps+0x494>
d0040e1c:	f897 30b5 	ldrb.w	r3, [r7, #181]	; 0xb5
d0040e20:	2b00      	cmp	r3, #0
d0040e22:	d05c      	beq.n	d0040ede <proc_photo_torps+0x48e>
d0040e24:	f897 30e5 	ldrb.w	r3, [r7, #229]	; 0xe5
d0040e28:	2b00      	cmp	r3, #0
d0040e2a:	d055      	beq.n	d0040ed8 <proc_photo_torps+0x488>
d0040e2c:	f897 3115 	ldrb.w	r3, [r7, #277]	; 0x115
d0040e30:	2b00      	cmp	r3, #0
d0040e32:	d04e      	beq.n	d0040ed2 <proc_photo_torps+0x482>
d0040e34:	f897 3145 	ldrb.w	r3, [r7, #325]	; 0x145
d0040e38:	2b00      	cmp	r3, #0
d0040e3a:	d047      	beq.n	d0040ecc <proc_photo_torps+0x47c>
d0040e3c:	f897 3175 	ldrb.w	r3, [r7, #373]	; 0x175
d0040e40:	2b00      	cmp	r3, #0
d0040e42:	d1cd      	bne.n	d0040de0 <proc_photo_torps+0x390>
d0040e44:	f507 70a8 	add.w	r0, r7, #336	; 0x150
d0040e48:	2407      	movs	r4, #7
d0040e4a:	2230      	movs	r2, #48	; 0x30
d0040e4c:	2100      	movs	r1, #0
d0040e4e:	f002 f91f 	bl	d0043090 <memset>
d0040e52:	eb09 0306 	add.w	r3, r9, r6
d0040e56:	eb04 0444 	add.w	r4, r4, r4, lsl #1
d0040e5a:	2200      	movs	r2, #0
d0040e5c:	eb0a 1303 	add.w	r3, sl, r3, lsl #4
d0040e60:	2001      	movs	r0, #1
d0040e62:	eb07 1704 	add.w	r7, r7, r4, lsl #4
d0040e66:	2104      	movs	r1, #4
d0040e68:	f04f 4c83 	mov.w	ip, #1098907648	; 0x41800000
d0040e6c:	f887 0025 	strb.w	r0, [r7, #37]	; 0x25
d0040e70:	f887 2024 	strb.w	r2, [r7, #36]	; 0x24
d0040e74:	689c      	ldr	r4, [r3, #8]
d0040e76:	60bc      	str	r4, [r7, #8]
d0040e78:	2440      	movs	r4, #64	; 0x40
d0040e7a:	f8d3 e000 	ldr.w	lr, [r3]
d0040e7e:	f8c7 e000 	str.w	lr, [r7]
d0040e82:	685b      	ldr	r3, [r3, #4]
d0040e84:	607b      	str	r3, [r7, #4]
d0040e86:	2300      	movs	r3, #0
d0040e88:	60fb      	str	r3, [r7, #12]
d0040e8a:	613b      	str	r3, [r7, #16]
d0040e8c:	f8c7 c014 	str.w	ip, [r7, #20]
d0040e90:	843c      	strh	r4, [r7, #32]
d0040e92:	847c      	strh	r4, [r7, #34]	; 0x22
d0040e94:	f887 2028 	strb.w	r2, [r7, #40]	; 0x28
d0040e98:	f887 102a 	strb.w	r1, [r7, #42]	; 0x2a
d0040e9c:	f001 fc76 	bl	d004278c <sbx_rng_range>
d0040ea0:	f010 0f01 	tst.w	r0, #1
d0040ea4:	f04f 0124 	mov.w	r1, #36	; 0x24
d0040ea8:	f04f 0264 	mov.w	r2, #100	; 0x64
d0040eac:	f04f 0306 	mov.w	r3, #6
d0040eb0:	bf14      	ite	ne
d0040eb2:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
d0040eb6:	2001      	moveq	r0, #1
d0040eb8:	f887 0029 	strb.w	r0, [r7, #41]	; 0x29
d0040ebc:	f887 102b 	strb.w	r1, [r7, #43]	; 0x2b
d0040ec0:	83fa      	strh	r2, [r7, #30]
d0040ec2:	83bb      	strh	r3, [r7, #28]
d0040ec4:	e78c      	b.n	d0040de0 <proc_photo_torps+0x390>
d0040ec6:	4614      	mov	r4, r2
d0040ec8:	4638      	mov	r0, r7
d0040eca:	e7be      	b.n	d0040e4a <proc_photo_torps+0x3fa>
d0040ecc:	480d      	ldr	r0, [pc, #52]	; (d0040f04 <proc_photo_torps+0x4b4>)
d0040ece:	2406      	movs	r4, #6
d0040ed0:	e7bb      	b.n	d0040e4a <proc_photo_torps+0x3fa>
d0040ed2:	480d      	ldr	r0, [pc, #52]	; (d0040f08 <proc_photo_torps+0x4b8>)
d0040ed4:	2405      	movs	r4, #5
d0040ed6:	e7b8      	b.n	d0040e4a <proc_photo_torps+0x3fa>
d0040ed8:	480c      	ldr	r0, [pc, #48]	; (d0040f0c <proc_photo_torps+0x4bc>)
d0040eda:	2404      	movs	r4, #4
d0040edc:	e7b5      	b.n	d0040e4a <proc_photo_torps+0x3fa>
d0040ede:	480c      	ldr	r0, [pc, #48]	; (d0040f10 <proc_photo_torps+0x4c0>)
d0040ee0:	2403      	movs	r4, #3
d0040ee2:	e7b2      	b.n	d0040e4a <proc_photo_torps+0x3fa>
d0040ee4:	f107 0060 	add.w	r0, r7, #96	; 0x60
d0040ee8:	2402      	movs	r4, #2
d0040eea:	e7ae      	b.n	d0040e4a <proc_photo_torps+0x3fa>
d0040eec:	f107 0030 	add.w	r0, r7, #48	; 0x30
d0040ef0:	e7ab      	b.n	d0040e4a <proc_photo_torps+0x3fa>
d0040ef2:	bf00      	nop
d0040ef4:	2001f000 	.word	0x2001f000
d0040ef8:	88888889 	.word	0x88888889
d0040efc:	d0044b6c 	.word	0xd0044b6c
d0040f00:	d0045660 	.word	0xd0045660
d0040f04:	d0045780 	.word	0xd0045780
d0040f08:	d0045750 	.word	0xd0045750
d0040f0c:	d0045720 	.word	0xd0045720
d0040f10:	d00456f0 	.word	0xd00456f0

d0040f14 <procPills3D>:
d0040f14:	2200      	movs	r2, #0
d0040f16:	eeb7 3a00 	vmov.f32	s6, #112	; 0x3f800000  1.0
d0040f1a:	eddf 4a93 	vldr	s9, [pc, #588]	; d0041168 <procPills3D+0x254>
d0040f1e:	ed9f 5a93 	vldr	s10, [pc, #588]	; d004116c <procPills3D+0x258>
d0040f22:	eddf 5a93 	vldr	s11, [pc, #588]	; d0041170 <procPills3D+0x25c>
d0040f26:	eddf 3a93 	vldr	s7, [pc, #588]	; d0041174 <procPills3D+0x260>
d0040f2a:	ed9f 4a93 	vldr	s8, [pc, #588]	; d0041178 <procPills3D+0x264>
d0040f2e:	f8df c250 	ldr.w	ip, [pc, #592]	; d0041180 <procPills3D+0x26c>
d0040f32:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040f36:	4617      	mov	r7, r2
d0040f38:	4e90      	ldr	r6, [pc, #576]	; (d004117c <procPills3D+0x268>)
d0040f3a:	f8df e248 	ldr.w	lr, [pc, #584]	; d0041184 <procPills3D+0x270>
d0040f3e:	e0a8      	b.n	d0041092 <procPills3D+0x17e>
d0040f40:	18ab      	adds	r3, r5, r2
d0040f42:	eb06 1303 	add.w	r3, r6, r3, lsl #4
d0040f46:	edd3 7a02 	vldr	s15, [r3, #8]
d0040f4a:	eef4 7ae4 	vcmpe.f32	s15, s9
d0040f4e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040f52:	f240 8105 	bls.w	d0041160 <procPills3D+0x24c>
d0040f56:	edd3 7a02 	vldr	s15, [r3, #8]
d0040f5a:	eef0 2a65 	vmov.f32	s5, s11
d0040f5e:	edd3 6a00 	vldr	s13, [r3]
d0040f62:	ee83 7a27 	vdiv.f32	s14, s6, s15
d0040f66:	ed93 6a01 	vldr	s12, [r3, #4]
d0040f6a:	ee66 6a85 	vmul.f32	s13, s13, s10
d0040f6e:	ee26 6a05 	vmul.f32	s12, s12, s10
d0040f72:	ee67 7a04 	vmul.f32	s15, s14, s8
d0040f76:	eee6 2a87 	vfma.f32	s5, s13, s14
d0040f7a:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0040f7e:	ee17 3a90 	vmov	r3, s15
d0040f82:	eef0 6a62 	vmov.f32	s13, s5
d0040f86:	b29b      	uxth	r3, r3
d0040f88:	eef0 2a63 	vmov.f32	s5, s7
d0040f8c:	2b04      	cmp	r3, #4
d0040f8e:	eee6 2a07 	vfma.f32	s5, s12, s14
d0040f92:	bf38      	it	cc
d0040f94:	2304      	movcc	r3, #4
d0040f96:	ee07 3a90 	vmov	s15, r3
d0040f9a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040f9e:	eeb0 7a62 	vmov.f32	s14, s5
d0040fa2:	eef4 7ae5 	vcmpe.f32	s15, s11
d0040fa6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040faa:	f300 80d4 	bgt.w	d0041156 <procPills3D+0x242>
d0040fae:	eeb0 6a04 	vmov.f32	s12, #4	; 0x40200000  2.5
d0040fb2:	ee67 7a86 	vmul.f32	s15, s15, s12
d0040fb6:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0040fba:	ee17 4a90 	vmov	r4, s15
d0040fbe:	fa1f f984 	uxth.w	r9, r4
d0040fc2:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0040fc6:	18ac      	adds	r4, r5, r2
d0040fc8:	eb06 1404 	add.w	r4, r6, r4, lsl #4
d0040fcc:	ee17 aa90 	vmov	sl, s15
d0040fd0:	eefd 7ac7 	vcvt.s32.f32	s15, s14
d0040fd4:	ebaa 0a00 	sub.w	sl, sl, r0
d0040fd8:	ee17 8a90 	vmov	r8, s15
d0040fdc:	fa0f fa8a 	sxth.w	sl, sl
d0040fe0:	eba8 0801 	sub.w	r8, r8, r1
d0040fe4:	f8a4 a018 	strh.w	sl, [r4, #24]
d0040fe8:	fa0f f888 	sxth.w	r8, r8
d0040fec:	f8a4 801a 	strh.w	r8, [r4, #26]
d0040ff0:	f8a4 901e 	strh.w	r9, [r4, #30]
d0040ff4:	f8b4 8020 	ldrh.w	r8, [r4, #32]
d0040ff8:	fa0f f888 	sxth.w	r8, r8
d0040ffc:	fb03 f808 	mul.w	r8, r3, r8
d0041000:	fbae 9808 	umull	r9, r8, lr, r8
d0041004:	f348 184f 	sbfx	r8, r8, #5, #16
d0041008:	f8a4 801c 	strh.w	r8, [r4, #28]
d004100c:	f8b4 801c 	ldrh.w	r8, [r4, #28]
d0041010:	fa0f f888 	sxth.w	r8, r8
d0041014:	f1b8 0f03 	cmp.w	r8, #3
d0041018:	dc03      	bgt.n	d0041022 <procPills3D+0x10e>
d004101a:	f04f 0804 	mov.w	r8, #4
d004101e:	f8a4 801c 	strh.w	r8, [r4, #28]
d0041022:	eb05 0802 	add.w	r8, r5, r2
d0041026:	eb06 1808 	add.w	r8, r6, r8, lsl #4
d004102a:	f8b8 4020 	ldrh.w	r4, [r8, #32]
d004102e:	f8b8 a022 	ldrh.w	sl, [r8, #34]	; 0x22
d0041032:	b224      	sxth	r4, r4
d0041034:	f8b8 9018 	ldrh.w	r9, [r8, #24]
d0041038:	fa0f fa8a 	sxth.w	sl, sl
d004103c:	fb03 f404 	mul.w	r4, r3, r4
d0041040:	fa0f f989 	sxth.w	r9, r9
d0041044:	fbac b404 	umull	fp, r4, ip, r4
d0041048:	f344 144f 	sbfx	r4, r4, #5, #16
d004104c:	f1c4 0b00 	rsb	fp, r4, #0
d0041050:	45d9      	cmp	r9, fp
d0041052:	db76      	blt.n	d0041142 <procPills3D+0x22e>
d0041054:	f8b8 9018 	ldrh.w	r9, [r8, #24]
d0041058:	f504 7420 	add.w	r4, r4, #640	; 0x280
d004105c:	fa0f f989 	sxth.w	r9, r9
d0041060:	45a1      	cmp	r9, r4
d0041062:	dc6e      	bgt.n	d0041142 <procPills3D+0x22e>
d0041064:	fb03 f30a 	mul.w	r3, r3, sl
d0041068:	f8b8 401a 	ldrh.w	r4, [r8, #26]
d004106c:	fbac 9303 	umull	r9, r3, ip, r3
d0041070:	b224      	sxth	r4, r4
d0041072:	f343 134f 	sbfx	r3, r3, #5, #16
d0041076:	f1c3 0900 	rsb	r9, r3, #0
d004107a:	454c      	cmp	r4, r9
d004107c:	db61      	blt.n	d0041142 <procPills3D+0x22e>
d004107e:	f8b8 401a 	ldrh.w	r4, [r8, #26]
d0041082:	f503 73f0 	add.w	r3, r3, #480	; 0x1e0
d0041086:	b224      	sxth	r4, r4
d0041088:	429c      	cmp	r4, r3
d004108a:	dc5a      	bgt.n	d0041142 <procPills3D+0x22e>
d004108c:	3201      	adds	r2, #1
d004108e:	2a08      	cmp	r2, #8
d0041090:	d05f      	beq.n	d0041152 <procPills3D+0x23e>
d0041092:	eb02 0342 	add.w	r3, r2, r2, lsl #1
d0041096:	0055      	lsls	r5, r2, #1
d0041098:	eb06 1303 	add.w	r3, r6, r3, lsl #4
d004109c:	f893 4025 	ldrb.w	r4, [r3, #37]	; 0x25
d00410a0:	2c00      	cmp	r4, #0
d00410a2:	d0f3      	beq.n	d004108c <procPills3D+0x178>
d00410a4:	ed93 7a03 	vldr	s14, [r3, #12]
d00410a8:	edd3 7a00 	vldr	s15, [r3]
d00410ac:	ee77 7a87 	vadd.f32	s15, s15, s14
d00410b0:	edc3 7a00 	vstr	s15, [r3]
d00410b4:	ed93 7a04 	vldr	s14, [r3, #16]
d00410b8:	edd3 7a01 	vldr	s15, [r3, #4]
d00410bc:	ee77 7a87 	vadd.f32	s15, s15, s14
d00410c0:	edc3 7a01 	vstr	s15, [r3, #4]
d00410c4:	ed93 7a05 	vldr	s14, [r3, #20]
d00410c8:	edd3 7a02 	vldr	s15, [r3, #8]
d00410cc:	ee77 7ac7 	vsub.f32	s15, s15, s14
d00410d0:	edc3 7a02 	vstr	s15, [r3, #8]
d00410d4:	f893 4028 	ldrb.w	r4, [r3, #40]	; 0x28
d00410d8:	3401      	adds	r4, #1
d00410da:	b2e4      	uxtb	r4, r4
d00410dc:	f883 4028 	strb.w	r4, [r3, #40]	; 0x28
d00410e0:	f893 4028 	ldrb.w	r4, [r3, #40]	; 0x28
d00410e4:	2c01      	cmp	r4, #1
d00410e6:	f67f af2b 	bls.w	d0040f40 <procPills3D+0x2c>
d00410ea:	f883 7028 	strb.w	r7, [r3, #40]	; 0x28
d00410ee:	f893 402a 	ldrb.w	r4, [r3, #42]	; 0x2a
d00410f2:	f893 8029 	ldrb.w	r8, [r3, #41]	; 0x29
d00410f6:	f893 902b 	ldrb.w	r9, [r3, #43]	; 0x2b
d00410fa:	fa44 f888 	sxtab	r8, r4, r8
d00410fe:	45c8      	cmp	r8, r9
d0041100:	db09      	blt.n	d0041116 <procPills3D+0x202>
d0041102:	f893 402b 	ldrb.w	r4, [r3, #43]	; 0x2b
d0041106:	f893 902b 	ldrb.w	r9, [r3, #43]	; 0x2b
d004110a:	eba8 0404 	sub.w	r4, r8, r4
d004110e:	fa0f f884 	sxth.w	r8, r4
d0041112:	45c8      	cmp	r8, r9
d0041114:	daf5      	bge.n	d0041102 <procPills3D+0x1ee>
d0041116:	f1b8 0f00 	cmp.w	r8, #0
d004111a:	da0a      	bge.n	d0041132 <procPills3D+0x21e>
d004111c:	18ac      	adds	r4, r5, r2
d004111e:	eb06 1404 	add.w	r4, r6, r4, lsl #4
d0041122:	f894 302b 	ldrb.w	r3, [r4, #43]	; 0x2b
d0041126:	4443      	add	r3, r8
d0041128:	fa0f f883 	sxth.w	r8, r3
d004112c:	f1b8 0f00 	cmp.w	r8, #0
d0041130:	dbf7      	blt.n	d0041122 <procPills3D+0x20e>
d0041132:	18ac      	adds	r4, r5, r2
d0041134:	fa5f f388 	uxtb.w	r3, r8
d0041138:	eb06 1404 	add.w	r4, r6, r4, lsl #4
d004113c:	f884 302a 	strb.w	r3, [r4, #42]	; 0x2a
d0041140:	e6fe      	b.n	d0040f40 <procPills3D+0x2c>
d0041142:	4415      	add	r5, r2
d0041144:	3201      	adds	r2, #1
d0041146:	eb06 1505 	add.w	r5, r6, r5, lsl #4
d004114a:	2a08      	cmp	r2, #8
d004114c:	f885 7025 	strb.w	r7, [r5, #37]	; 0x25
d0041150:	d19f      	bne.n	d0041092 <procPills3D+0x17e>
d0041152:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0041156:	f44f 73a0 	mov.w	r3, #320	; 0x140
d004115a:	f44f 7948 	mov.w	r9, #800	; 0x320
d004115e:	e730      	b.n	d0040fc2 <procPills3D+0xae>
d0041160:	f883 7025 	strb.w	r7, [r3, #37]	; 0x25
d0041164:	e792      	b.n	d004108c <procPills3D+0x178>
d0041166:	bf00      	nop
d0041168:	42b40000 	.word	0x42b40000
d004116c:	43820000 	.word	0x43820000
d0041170:	43a00000 	.word	0x43a00000
d0041174:	43700000 	.word	0x43700000
d0041178:	46fa0000 	.word	0x46fa0000
d004117c:	d0045660 	.word	0xd0045660
d0041180:	51eb851f 	.word	0x51eb851f
d0041184:	1b4e81b5 	.word	0x1b4e81b5

d0041188 <UpdateHealth>:
d0041188:	4a08      	ldr	r2, [pc, #32]	; (d00411ac <UpdateHealth+0x24>)
d004118a:	7813      	ldrb	r3, [r2, #0]
d004118c:	4418      	add	r0, r3
d004118e:	b240      	sxtb	r0, r0
d0041190:	2800      	cmp	r0, #0
d0041192:	db08      	blt.n	d00411a6 <UpdateHealth+0x1e>
d0041194:	2864      	cmp	r0, #100	; 0x64
d0041196:	dd03      	ble.n	d00411a0 <UpdateHealth+0x18>
d0041198:	2364      	movs	r3, #100	; 0x64
d004119a:	2001      	movs	r0, #1
d004119c:	7013      	strb	r3, [r2, #0]
d004119e:	4770      	bx	lr
d00411a0:	7010      	strb	r0, [r2, #0]
d00411a2:	2001      	movs	r0, #1
d00411a4:	4770      	bx	lr
d00411a6:	2000      	movs	r0, #0
d00411a8:	7010      	strb	r0, [r2, #0]
d00411aa:	4770      	bx	lr
d00411ac:	d0044ae0 	.word	0xd0044ae0

d00411b0 <SetPlayerLives>:
d00411b0:	4b01      	ldr	r3, [pc, #4]	; (d00411b8 <SetPlayerLives+0x8>)
d00411b2:	7018      	strb	r0, [r3, #0]
d00411b4:	4770      	bx	lr
d00411b6:	bf00      	nop
d00411b8:	d0044b68 	.word	0xd0044b68

d00411bc <AddScore>:
d00411bc:	4a02      	ldr	r2, [pc, #8]	; (d00411c8 <AddScore+0xc>)
d00411be:	6813      	ldr	r3, [r2, #0]
d00411c0:	4418      	add	r0, r3
d00411c2:	6010      	str	r0, [r2, #0]
d00411c4:	4770      	bx	lr
d00411c6:	bf00      	nop
d00411c8:	d0044b6c 	.word	0xd0044b6c

d00411cc <SpawnAstroid3D.part.0>:
d00411cc:	2903      	cmp	r1, #3
d00411ce:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00411d2:	4607      	mov	r7, r0
d00411d4:	ed2d 8b02 	vpush	{d8}
d00411d8:	f200 808f 	bhi.w	d00412fa <SpawnAstroid3D.part.0+0x12e>
d00411dc:	4688      	mov	r8, r1
d00411de:	004d      	lsls	r5, r1, #1
d00411e0:	4e51      	ldr	r6, [pc, #324]	; (d0041328 <SpawnAstroid3D.part.0+0x15c>)
d00411e2:	eb07 0047 	add.w	r0, r7, r7, lsl #1
d00411e6:	2230      	movs	r2, #48	; 0x30
d00411e8:	2100      	movs	r1, #0
d00411ea:	eb06 1000 	add.w	r0, r6, r0, lsl #4
d00411ee:	ed9f 8a4f 	vldr	s16, [pc, #316]	; d004132c <SpawnAstroid3D.part.0+0x160>
d00411f2:	f001 ff4d 	bl	d0043090 <memset>
d00411f6:	4b4e      	ldr	r3, [pc, #312]	; (d0041330 <SpawnAstroid3D.part.0+0x164>)
d00411f8:	eb07 0447 	add.w	r4, r7, r7, lsl #1
d00411fc:	f04f 0c02 	mov.w	ip, #2
d0041200:	5d5a      	ldrb	r2, [r3, r5]
d0041202:	21f0      	movs	r1, #240	; 0xf0
d0041204:	eb06 1404 	add.w	r4, r6, r4, lsl #4
d0041208:	f06f 00ef 	mvn.w	r0, #239	; 0xef
d004120c:	007d      	lsls	r5, r7, #1
d004120e:	f884 8024 	strb.w	r8, [r4, #36]	; 0x24
d0041212:	f884 c025 	strb.w	ip, [r4, #37]	; 0x25
d0041216:	f884 2027 	strb.w	r2, [r4, #39]	; 0x27
d004121a:	f001 fab7 	bl	d004278c <sbx_rng_range>
d004121e:	ee07 0a90 	vmov	s15, r0
d0041222:	21dc      	movs	r1, #220	; 0xdc
d0041224:	f06f 00db 	mvn.w	r0, #219	; 0xdb
d0041228:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004122c:	edc4 7a00 	vstr	s15, [r4]
d0041230:	f001 faac 	bl	d004278c <sbx_rng_range>
d0041234:	ee07 0a90 	vmov	s15, r0
d0041238:	4b3e      	ldr	r3, [pc, #248]	; (d0041334 <SpawnAstroid3D.part.0+0x168>)
d004123a:	210a      	movs	r1, #10
d004123c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041240:	f06f 0009 	mvn.w	r0, #9
d0041244:	edc4 7a01 	vstr	s15, [r4, #4]
d0041248:	60a3      	str	r3, [r4, #8]
d004124a:	f001 fa9f 	bl	d004278c <sbx_rng_range>
d004124e:	ee07 0a90 	vmov	s15, r0
d0041252:	210a      	movs	r1, #10
d0041254:	f06f 0009 	mvn.w	r0, #9
d0041258:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004125c:	ee67 7a88 	vmul.f32	s15, s15, s16
d0041260:	edc4 7a03 	vstr	s15, [r4, #12]
d0041264:	f001 fa92 	bl	d004278c <sbx_rng_range>
d0041268:	ee07 0a90 	vmov	s15, r0
d004126c:	211c      	movs	r1, #28
d004126e:	2014      	movs	r0, #20
d0041270:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041274:	ee67 7a88 	vmul.f32	s15, s15, s16
d0041278:	edc4 7a04 	vstr	s15, [r4, #16]
d004127c:	f001 fa86 	bl	d004278c <sbx_rng_range>
d0041280:	ee07 0a90 	vmov	s15, r0
d0041284:	ed9f 7a2c 	vldr	s14, [pc, #176]	; d0041338 <SpawnAstroid3D.part.0+0x16c>
d0041288:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004128c:	ee67 7a87 	vmul.f32	s15, s15, s14
d0041290:	edc4 7a05 	vstr	s15, [r4, #20]
d0041294:	f884 8024 	strb.w	r8, [r4, #36]	; 0x24
d0041298:	f1b8 0f00 	cmp.w	r8, #0
d004129c:	d130      	bne.n	d0041300 <SpawnAstroid3D.part.0+0x134>
d004129e:	2360      	movs	r3, #96	; 0x60
d00412a0:	2218      	movs	r2, #24
d00412a2:	8463      	strh	r3, [r4, #34]	; 0x22
d00412a4:	8423      	strh	r3, [r4, #32]
d00412a6:	f884 202b 	strb.w	r2, [r4, #43]	; 0x2b
d00412aa:	443d      	add	r5, r7
d00412ac:	2000      	movs	r0, #0
d00412ae:	eb06 1505 	add.w	r5, r6, r5, lsl #4
d00412b2:	f895 102b 	ldrb.w	r1, [r5, #43]	; 0x2b
d00412b6:	3901      	subs	r1, #1
d00412b8:	f001 fa68 	bl	d004278c <sbx_rng_range>
d00412bc:	4603      	mov	r3, r0
d00412be:	2103      	movs	r1, #3
d00412c0:	2001      	movs	r0, #1
d00412c2:	b25b      	sxtb	r3, r3
d00412c4:	f885 3028 	strb.w	r3, [r5, #40]	; 0x28
d00412c8:	f001 fa60 	bl	d004278c <sbx_rng_range>
d00412cc:	4603      	mov	r3, r0
d00412ce:	2104      	movs	r1, #4
d00412d0:	2001      	movs	r0, #1
d00412d2:	b2db      	uxtb	r3, r3
d00412d4:	f885 3029 	strb.w	r3, [r5, #41]	; 0x29
d00412d8:	f001 fa58 	bl	d004278c <sbx_rng_range>
d00412dc:	f010 0f01 	tst.w	r0, #1
d00412e0:	f04f 0364 	mov.w	r3, #100	; 0x64
d00412e4:	bf14      	ite	ne
d00412e6:	f04f 32ff 	movne.w	r2, #4294967295	; 0xffffffff
d00412ea:	2201      	moveq	r2, #1
d00412ec:	f885 2026 	strb.w	r2, [r5, #38]	; 0x26
d00412f0:	83eb      	strh	r3, [r5, #30]
d00412f2:	ecbd 8b02 	vpop	{d8}
d00412f6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00412fa:	2500      	movs	r5, #0
d00412fc:	46a8      	mov	r8, r5
d00412fe:	e76f      	b.n	d00411e0 <SpawnAstroid3D.part.0+0x14>
d0041300:	f1b8 0f01 	cmp.w	r8, #1
d0041304:	d106      	bne.n	d0041314 <SpawnAstroid3D.part.0+0x148>
d0041306:	2340      	movs	r3, #64	; 0x40
d0041308:	2218      	movs	r2, #24
d004130a:	8463      	strh	r3, [r4, #34]	; 0x22
d004130c:	8423      	strh	r3, [r4, #32]
d004130e:	f884 202b 	strb.w	r2, [r4, #43]	; 0x2b
d0041312:	e7ca      	b.n	d00412aa <SpawnAstroid3D.part.0+0xde>
d0041314:	f1b8 0f02 	cmp.w	r8, #2
d0041318:	d0f5      	beq.n	d0041306 <SpawnAstroid3D.part.0+0x13a>
d004131a:	2320      	movs	r3, #32
d004131c:	2210      	movs	r2, #16
d004131e:	8463      	strh	r3, [r4, #34]	; 0x22
d0041320:	8423      	strh	r3, [r4, #32]
d0041322:	f884 202b 	strb.w	r2, [r4, #43]	; 0x2b
d0041326:	e7c0      	b.n	d00412aa <SpawnAstroid3D.part.0+0xde>
d0041328:	d00458e0 	.word	0xd00458e0
d004132c:	3d4ccccd 	.word	0x3d4ccccd
d0041330:	d0044ae4 	.word	0xd0044ae4
d0041334:	44fc8000 	.word	0x44fc8000
d0041338:	3f8ccccd 	.word	0x3f8ccccd

d004133c <SpawnAstroid3D>:
d004133c:	280d      	cmp	r0, #13
d004133e:	d801      	bhi.n	d0041344 <SpawnAstroid3D+0x8>
d0041340:	f7ff bf44 	b.w	d00411cc <SpawnAstroid3D.part.0>
d0041344:	4770      	bx	lr
d0041346:	bf00      	nop

d0041348 <initAstroids3D>:
d0041348:	b510      	push	{r4, lr}
d004134a:	2400      	movs	r4, #0
d004134c:	2103      	movs	r1, #3
d004134e:	2000      	movs	r0, #0
d0041350:	f001 fa1c 	bl	d004278c <sbx_rng_range>
d0041354:	4601      	mov	r1, r0
d0041356:	b2e0      	uxtb	r0, r4
d0041358:	3401      	adds	r4, #1
d004135a:	b2c9      	uxtb	r1, r1
d004135c:	f7ff ff36 	bl	d00411cc <SpawnAstroid3D.part.0>
d0041360:	2c0e      	cmp	r4, #14
d0041362:	d1f3      	bne.n	d004134c <initAstroids3D+0x4>
d0041364:	bd10      	pop	{r4, pc}
d0041366:	bf00      	nop

d0041368 <proc_astroids3D>:
d0041368:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d004136c:	2400      	movs	r4, #0
d004136e:	4f98      	ldr	r7, [pc, #608]	; (d00415d0 <proc_astroids3D+0x268>)
d0041370:	4606      	mov	r6, r0
d0041372:	460d      	mov	r5, r1
d0041374:	ed2d 8b06 	vpush	{d8-d10}
d0041378:	ed9f 8a96 	vldr	s16, [pc, #600]	; d00415d4 <proc_astroids3D+0x26c>
d004137c:	b083      	sub	sp, #12
d004137e:	ed9f aa96 	vldr	s20, [pc, #600]	; d00415d8 <proc_astroids3D+0x270>
d0041382:	eddf aa96 	vldr	s21, [pc, #600]	; d00415dc <proc_astroids3D+0x274>
d0041386:	eddf 9a96 	vldr	s19, [pc, #600]	; d00415e0 <proc_astroids3D+0x278>
d004138a:	ed9f 9a96 	vldr	s18, [pc, #600]	; d00415e4 <proc_astroids3D+0x27c>
d004138e:	eddf 8a96 	vldr	s17, [pc, #600]	; d00415e8 <proc_astroids3D+0x280>
d0041392:	e09b      	b.n	d00414cc <proc_astroids3D+0x164>
d0041394:	edd3 7a02 	vldr	s15, [r3, #8]
d0041398:	ed9f 7a94 	vldr	s14, [pc, #592]	; d00415ec <proc_astroids3D+0x284>
d004139c:	eef4 7ac7 	vcmpe.f32	s15, s14
d00413a0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00413a4:	f240 8111 	bls.w	d00415ca <proc_astroids3D+0x262>
d00413a8:	edd3 7a02 	vldr	s15, [r3, #8]
d00413ac:	ed9f 6a90 	vldr	s12, [pc, #576]	; d00415f0 <proc_astroids3D+0x288>
d00413b0:	ee77 7ac7 	vsub.f32	s15, s15, s14
d00413b4:	ee67 7a86 	vmul.f32	s15, s15, s12
d00413b8:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00413bc:	edcd 7a01 	vstr	s15, [sp, #4]
d00413c0:	f89d 0004 	ldrb.w	r0, [sp, #4]
d00413c4:	ee66 7aa8 	vmul.f32	s15, s13, s17
d00413c8:	1911      	adds	r1, r2, r4
d00413ca:	2302      	movs	r3, #2
d00413cc:	f240 2e26 	movw	lr, #550	; 0x226
d00413d0:	eb07 1101 	add.w	r1, r7, r1, lsl #4
d00413d4:	eeb0 6a69 	vmov.f32	s12, s19
d00413d8:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00413dc:	f8df c218 	ldr.w	ip, [pc, #536]	; d00415f8 <proc_astroids3D+0x290>
d00413e0:	f881 302c 	strb.w	r3, [r1, #44]	; 0x2c
d00413e4:	f881 002e 	strb.w	r0, [r1, #46]	; 0x2e
d00413e8:	ee17 3a90 	vmov	r3, s15
d00413ec:	ed91 7a00 	vldr	s14, [r1]
d00413f0:	edd1 7a01 	vldr	s15, [r1, #4]
d00413f4:	b29b      	uxth	r3, r3
d00413f6:	ee27 7a2a 	vmul.f32	s14, s14, s21
d00413fa:	8c08      	ldrh	r0, [r1, #32]
d00413fc:	ee67 7aaa 	vmul.f32	s15, s15, s21
d0041400:	4573      	cmp	r3, lr
d0041402:	eea7 6a26 	vfma.f32	s12, s14, s13
d0041406:	b200      	sxth	r0, r0
d0041408:	bf28      	it	cs
d004140a:	4673      	movcs	r3, lr
d004140c:	2b08      	cmp	r3, #8
d004140e:	bf38      	it	cc
d0041410:	2308      	movcc	r3, #8
d0041412:	eeb0 7a46 	vmov.f32	s14, s12
d0041416:	fb03 f000 	mul.w	r0, r3, r0
d004141a:	eeb0 6a49 	vmov.f32	s12, s18
d004141e:	fbac c000 	umull	ip, r0, ip, r0
d0041422:	eea7 6aa6 	vfma.f32	s12, s15, s13
d0041426:	f340 104f 	sbfx	r0, r0, #5, #16
d004142a:	8388      	strh	r0, [r1, #28]
d004142c:	8b88      	ldrh	r0, [r1, #28]
d004142e:	b200      	sxth	r0, r0
d0041430:	eef0 7a46 	vmov.f32	s15, s12
d0041434:	2803      	cmp	r0, #3
d0041436:	dc01      	bgt.n	d004143c <proc_astroids3D+0xd4>
d0041438:	2004      	movs	r0, #4
d004143a:	8388      	strh	r0, [r1, #28]
d004143c:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0041440:	4422      	add	r2, r4
d0041442:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041446:	486b      	ldr	r0, [pc, #428]	; (d00415f4 <proc_astroids3D+0x28c>)
d0041448:	eb07 1202 	add.w	r2, r7, r2, lsl #4
d004144c:	ee17 ca10 	vmov	ip, s14
d0041450:	ee17 1a90 	vmov	r1, s15
d0041454:	ebac 0c06 	sub.w	ip, ip, r6
d0041458:	1b49      	subs	r1, r1, r5
d004145a:	fa0f fc8c 	sxth.w	ip, ip
d004145e:	b209      	sxth	r1, r1
d0041460:	f8a2 c018 	strh.w	ip, [r2, #24]
d0041464:	8351      	strh	r1, [r2, #26]
d0041466:	83d3      	strh	r3, [r2, #30]
d0041468:	8c11      	ldrh	r1, [r2, #32]
d004146a:	f8b2 c022 	ldrh.w	ip, [r2, #34]	; 0x22
d004146e:	b209      	sxth	r1, r1
d0041470:	f8b2 e018 	ldrh.w	lr, [r2, #24]
d0041474:	fa0f fc8c 	sxth.w	ip, ip
d0041478:	fb03 f101 	mul.w	r1, r3, r1
d004147c:	fa0f fe8e 	sxth.w	lr, lr
d0041480:	fba0 9101 	umull	r9, r1, r0, r1
d0041484:	f341 114f 	sbfx	r1, r1, #5, #16
d0041488:	f1c1 0900 	rsb	r9, r1, #0
d004148c:	45ce      	cmp	lr, r9
d004148e:	f2c0 808b 	blt.w	d00415a8 <proc_astroids3D+0x240>
d0041492:	f8b2 e018 	ldrh.w	lr, [r2, #24]
d0041496:	f501 7120 	add.w	r1, r1, #640	; 0x280
d004149a:	fa0f fe8e 	sxth.w	lr, lr
d004149e:	458e      	cmp	lr, r1
d00414a0:	f300 8082 	bgt.w	d00415a8 <proc_astroids3D+0x240>
d00414a4:	fb03 f30c 	mul.w	r3, r3, ip
d00414a8:	8b51      	ldrh	r1, [r2, #26]
d00414aa:	fba0 0303 	umull	r0, r3, r0, r3
d00414ae:	b209      	sxth	r1, r1
d00414b0:	f343 134f 	sbfx	r3, r3, #5, #16
d00414b4:	4258      	negs	r0, r3
d00414b6:	4281      	cmp	r1, r0
d00414b8:	db76      	blt.n	d00415a8 <proc_astroids3D+0x240>
d00414ba:	8b52      	ldrh	r2, [r2, #26]
d00414bc:	f503 73f0 	add.w	r3, r3, #480	; 0x1e0
d00414c0:	b212      	sxth	r2, r2
d00414c2:	429a      	cmp	r2, r3
d00414c4:	dc70      	bgt.n	d00415a8 <proc_astroids3D+0x240>
d00414c6:	3401      	adds	r4, #1
d00414c8:	2c0e      	cmp	r4, #14
d00414ca:	d079      	beq.n	d00415c0 <proc_astroids3D+0x258>
d00414cc:	eb04 0344 	add.w	r3, r4, r4, lsl #1
d00414d0:	fa5f f884 	uxtb.w	r8, r4
d00414d4:	eb07 1303 	add.w	r3, r7, r3, lsl #4
d00414d8:	0062      	lsls	r2, r4, #1
d00414da:	f893 1025 	ldrb.w	r1, [r3, #37]	; 0x25
d00414de:	2900      	cmp	r1, #0
d00414e0:	d0f1      	beq.n	d00414c6 <proc_astroids3D+0x15e>
d00414e2:	f893 102a 	ldrb.w	r1, [r3, #42]	; 0x2a
d00414e6:	3101      	adds	r1, #1
d00414e8:	b2c9      	uxtb	r1, r1
d00414ea:	f883 102a 	strb.w	r1, [r3, #42]	; 0x2a
d00414ee:	f893 002a 	ldrb.w	r0, [r3, #42]	; 0x2a
d00414f2:	f893 1029 	ldrb.w	r1, [r3, #41]	; 0x29
d00414f6:	4288      	cmp	r0, r1
d00414f8:	d921      	bls.n	d004153e <proc_astroids3D+0x1d6>
d00414fa:	2100      	movs	r1, #0
d00414fc:	f883 102a 	strb.w	r1, [r3, #42]	; 0x2a
d0041500:	f893 0026 	ldrb.w	r0, [r3, #38]	; 0x26
d0041504:	f893 1028 	ldrb.w	r1, [r3, #40]	; 0x28
d0041508:	4401      	add	r1, r0
d004150a:	b249      	sxtb	r1, r1
d004150c:	f883 1028 	strb.w	r1, [r3, #40]	; 0x28
d0041510:	f893 1028 	ldrb.w	r1, [r3, #40]	; 0x28
d0041514:	0609      	lsls	r1, r1, #24
d0041516:	d505      	bpl.n	d0041524 <proc_astroids3D+0x1bc>
d0041518:	f893 102b 	ldrb.w	r1, [r3, #43]	; 0x2b
d004151c:	3901      	subs	r1, #1
d004151e:	b249      	sxtb	r1, r1
d0041520:	f883 1028 	strb.w	r1, [r3, #40]	; 0x28
d0041524:	1913      	adds	r3, r2, r4
d0041526:	eb07 1303 	add.w	r3, r7, r3, lsl #4
d004152a:	f893 1028 	ldrb.w	r1, [r3, #40]	; 0x28
d004152e:	f893 002b 	ldrb.w	r0, [r3, #43]	; 0x2b
d0041532:	b249      	sxtb	r1, r1
d0041534:	4281      	cmp	r1, r0
d0041536:	db02      	blt.n	d004153e <proc_astroids3D+0x1d6>
d0041538:	2100      	movs	r1, #0
d004153a:	f883 1028 	strb.w	r1, [r3, #40]	; 0x28
d004153e:	1913      	adds	r3, r2, r4
d0041540:	eb07 1303 	add.w	r3, r7, r3, lsl #4
d0041544:	ed93 7a03 	vldr	s14, [r3, #12]
d0041548:	edd3 7a00 	vldr	s15, [r3]
d004154c:	ee77 7a87 	vadd.f32	s15, s15, s14
d0041550:	edc3 7a00 	vstr	s15, [r3]
d0041554:	ed93 7a04 	vldr	s14, [r3, #16]
d0041558:	edd3 7a01 	vldr	s15, [r3, #4]
d004155c:	ee77 7a87 	vadd.f32	s15, s15, s14
d0041560:	edc3 7a01 	vstr	s15, [r3, #4]
d0041564:	ed93 7a05 	vldr	s14, [r3, #20]
d0041568:	edd3 7a02 	vldr	s15, [r3, #8]
d004156c:	ee77 7ac7 	vsub.f32	s15, s15, s14
d0041570:	edc3 7a02 	vstr	s15, [r3, #8]
d0041574:	edd3 7a02 	vldr	s15, [r3, #8]
d0041578:	eef4 7ac8 	vcmpe.f32	s15, s16
d004157c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041580:	d912      	bls.n	d00415a8 <proc_astroids3D+0x240>
d0041582:	2102      	movs	r1, #2
d0041584:	ed93 7a02 	vldr	s14, [r3, #8]
d0041588:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d004158c:	f883 102c 	strb.w	r1, [r3, #44]	; 0x2c
d0041590:	edd3 7a02 	vldr	s15, [r3, #8]
d0041594:	eec6 6a07 	vdiv.f32	s13, s12, s14
d0041598:	eef4 7aca 	vcmpe.f32	s15, s20
d004159c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00415a0:	f6ff aef8 	blt.w	d0041394 <proc_astroids3D+0x2c>
d00415a4:	205f      	movs	r0, #95	; 0x5f
d00415a6:	e70d      	b.n	d00413c4 <proc_astroids3D+0x5c>
d00415a8:	2103      	movs	r1, #3
d00415aa:	2000      	movs	r0, #0
d00415ac:	f001 f8ee 	bl	d004278c <sbx_rng_range>
d00415b0:	4601      	mov	r1, r0
d00415b2:	3401      	adds	r4, #1
d00415b4:	4640      	mov	r0, r8
d00415b6:	b2c9      	uxtb	r1, r1
d00415b8:	f7ff fe08 	bl	d00411cc <SpawnAstroid3D.part.0>
d00415bc:	2c0e      	cmp	r4, #14
d00415be:	d185      	bne.n	d00414cc <proc_astroids3D+0x164>
d00415c0:	b003      	add	sp, #12
d00415c2:	ecbd 8b06 	vpop	{d8-d10}
d00415c6:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d00415ca:	2000      	movs	r0, #0
d00415cc:	e6fa      	b.n	d00413c4 <proc_astroids3D+0x5c>
d00415ce:	bf00      	nop
d00415d0:	d00458e0 	.word	0xd00458e0
d00415d4:	42b40000 	.word	0x42b40000
d00415d8:	44fc8000 	.word	0x44fc8000
d00415dc:	43820000 	.word	0x43820000
d00415e0:	43a00000 	.word	0x43a00000
d00415e4:	43700000 	.word	0x43700000
d00415e8:	47a02800 	.word	0x47a02800
d00415ec:	44610000 	.word	0x44610000
d00415f0:	3dadb6db 	.word	0x3dadb6db
d00415f4:	51eb851f 	.word	0x51eb851f
d00415f8:	1b4e81b5 	.word	0x1b4e81b5

d00415fc <spawnExplode3d>:
d00415fc:	b368      	cbz	r0, d004165a <spawnExplode3d+0x5e>
d00415fe:	2300      	movs	r3, #0
d0041600:	212c      	movs	r1, #44	; 0x2c
d0041602:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0041606:	4680      	mov	r8, r0
d0041608:	4e14      	ldr	r6, [pc, #80]	; (d004165c <spawnExplode3d+0x60>)
d004160a:	e001      	b.n	d0041610 <spawnExplode3d+0x14>
d004160c:	2b20      	cmp	r3, #32
d004160e:	d022      	beq.n	d0041656 <spawnExplode3d+0x5a>
d0041610:	fb01 6403 	mla	r4, r1, r3, r6
d0041614:	3301      	adds	r3, #1
d0041616:	f894 2022 	ldrb.w	r2, [r4, #34]	; 0x22
d004161a:	f002 05ff 	and.w	r5, r2, #255	; 0xff
d004161e:	2a00      	cmp	r2, #0
d0041620:	d1f4      	bne.n	d004160c <spawnExplode3d+0x10>
d0041622:	222c      	movs	r2, #44	; 0x2c
d0041624:	4629      	mov	r1, r5
d0041626:	4620      	mov	r0, r4
d0041628:	f001 fd32 	bl	d0043090 <memset>
d004162c:	2214      	movs	r2, #20
d004162e:	2364      	movs	r3, #100	; 0x64
d0041630:	f884 2022 	strb.w	r2, [r4, #34]	; 0x22
d0041634:	f884 5020 	strb.w	r5, [r4, #32]
d0041638:	f884 5024 	strb.w	r5, [r4, #36]	; 0x24
d004163c:	f8d8 0000 	ldr.w	r0, [r8]
d0041640:	f8d8 1004 	ldr.w	r1, [r8, #4]
d0041644:	f8d8 2008 	ldr.w	r2, [r8, #8]
d0041648:	60e0      	str	r0, [r4, #12]
d004164a:	6121      	str	r1, [r4, #16]
d004164c:	6162      	str	r2, [r4, #20]
d004164e:	8325      	strh	r5, [r4, #24]
d0041650:	8365      	strh	r5, [r4, #26]
d0041652:	83a5      	strh	r5, [r4, #28]
d0041654:	83e3      	strh	r3, [r4, #30]
d0041656:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d004165a:	4770      	bx	lr
d004165c:	d0045ea0 	.word	0xd0045ea0

d0041660 <procExplodes3d>:
d0041660:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d0041664:	2400      	movs	r4, #0
d0041666:	eef7 5a00 	vmov.f32	s11, #112	; 0x3f800000  1.0
d004166a:	4e69      	ldr	r6, [pc, #420]	; (d0041810 <procExplodes3d+0x1b0>)
d004166c:	252c      	movs	r5, #44	; 0x2c
d004166e:	4627      	mov	r7, r4
d0041670:	eddf 4a68 	vldr	s9, [pc, #416]	; d0041814 <procExplodes3d+0x1b4>
d0041674:	ed9f 5a68 	vldr	s10, [pc, #416]	; d0041818 <procExplodes3d+0x1b8>
d0041678:	ed9f 3a68 	vldr	s6, [pc, #416]	; d004181c <procExplodes3d+0x1bc>
d004167c:	eddf 3a68 	vldr	s7, [pc, #416]	; d0041820 <procExplodes3d+0x1c0>
d0041680:	ed9f 4a68 	vldr	s8, [pc, #416]	; d0041824 <procExplodes3d+0x1c4>
d0041684:	f8df c1a0 	ldr.w	ip, [pc, #416]	; d0041828 <procExplodes3d+0x1c8>
d0041688:	e0a0      	b.n	d00417cc <procExplodes3d+0x16c>
d004168a:	edd3 7a05 	vldr	s15, [r3, #20]
d004168e:	eef4 7ae4 	vcmpe.f32	s15, s9
d0041692:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041696:	f280 80ad 	bge.w	d00417f4 <procExplodes3d+0x194>
d004169a:	f893 3022 	ldrb.w	r3, [r3, #34]	; 0x22
d004169e:	fb05 6204 	mla	r2, r5, r4, r6
d00416a2:	f1d3 0314 	rsbs	r3, r3, #20
d00416a6:	bf48      	it	mi
d00416a8:	3301      	addmi	r3, #1
d00416aa:	f343 0347 	sbfx	r3, r3, #1, #8
d00416ae:	f882 3020 	strb.w	r3, [r2, #32]
d00416b2:	f892 3020 	ldrb.w	r3, [r2, #32]
d00416b6:	b25b      	sxtb	r3, r3
d00416b8:	2b09      	cmp	r3, #9
d00416ba:	dd02      	ble.n	d00416c2 <procExplodes3d+0x62>
d00416bc:	2309      	movs	r3, #9
d00416be:	f882 3020 	strb.w	r3, [r2, #32]
d00416c2:	fb05 6204 	mla	r2, r5, r4, r6
d00416c6:	eeb3 7a0e 	vmov.f32	s14, #62	; 0x41f00000  30.0
d00416ca:	eef0 2a43 	vmov.f32	s5, s6
d00416ce:	edd2 7a05 	vldr	s15, [r2, #20]
d00416d2:	ee77 7ac7 	vsub.f32	s15, s15, s14
d00416d6:	edc2 7a05 	vstr	s15, [r2, #20]
d00416da:	edd2 7a05 	vldr	s15, [r2, #20]
d00416de:	ed92 7a03 	vldr	s14, [r2, #12]
d00416e2:	ee85 6aa7 	vdiv.f32	s12, s11, s15
d00416e6:	edd2 7a04 	vldr	s15, [r2, #16]
d00416ea:	ee27 7a05 	vmul.f32	s14, s14, s10
d00416ee:	ee67 7a85 	vmul.f32	s15, s15, s10
d00416f2:	eee7 2a06 	vfma.f32	s5, s14, s12
d00416f6:	ee66 6a04 	vmul.f32	s13, s12, s8
d00416fa:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d00416fe:	eeb0 7a62 	vmov.f32	s14, s5
d0041702:	eef0 2a63 	vmov.f32	s5, s7
d0041706:	ee16 3a90 	vmov	r3, s13
d004170a:	b29b      	uxth	r3, r3
d004170c:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0041710:	eee6 2a27 	vfma.f32	s5, s12, s15
d0041714:	f5b3 7fc8 	cmp.w	r3, #400	; 0x190
d0041718:	ee17 8a10 	vmov	r8, s14
d004171c:	bf28      	it	cs
d004171e:	f44f 73c8 	movcs.w	r3, #400	; 0x190
d0041722:	eba8 0800 	sub.w	r8, r8, r0
d0041726:	2b10      	cmp	r3, #16
d0041728:	eefd 7ae2 	vcvt.s32.f32	s15, s5
d004172c:	fa0f f888 	sxth.w	r8, r8
d0041730:	bf38      	it	cc
d0041732:	2310      	movcc	r3, #16
d0041734:	f8a2 8018 	strh.w	r8, [r2, #24]
d0041738:	ee17 ea90 	vmov	lr, s15
d004173c:	fa0f f983 	sxth.w	r9, r3
d0041740:	ebae 0e01 	sub.w	lr, lr, r1
d0041744:	fa0f fe8e 	sxth.w	lr, lr
d0041748:	f8a2 e01a 	strh.w	lr, [r2, #26]
d004174c:	f8a2 901e 	strh.w	r9, [r2, #30]
d0041750:	f892 e022 	ldrb.w	lr, [r2, #34]	; 0x22
d0041754:	f1be 0f07 	cmp.w	lr, #7
d0041758:	d855      	bhi.n	d0041806 <procExplodes3d+0x1a6>
d004175a:	f892 e022 	ldrb.w	lr, [r2, #34]	; 0x22
d004175e:	f04f 0802 	mov.w	r8, #2
d0041762:	f1ce 0e08 	rsb	lr, lr, #8
d0041766:	f882 8025 	strb.w	r8, [r2, #37]	; 0x25
d004176a:	eb0e 0e4e 	add.w	lr, lr, lr, lsl #1
d004176e:	fa0e fe08 	lsl.w	lr, lr, r8
d0041772:	fa5f fe8e 	uxtb.w	lr, lr
d0041776:	f1be 0f5f 	cmp.w	lr, #95	; 0x5f
d004177a:	bf28      	it	cs
d004177c:	f04f 0e5f 	movcs.w	lr, #95	; 0x5f
d0041780:	f882 e027 	strb.w	lr, [r2, #39]	; 0x27
d0041784:	019b      	lsls	r3, r3, #6
d0041786:	fb05 6e04 	mla	lr, r5, r4, r6
d004178a:	fbac 2303 	umull	r2, r3, ip, r3
d004178e:	f8be 2018 	ldrh.w	r2, [lr, #24]
d0041792:	095b      	lsrs	r3, r3, #5
d0041794:	b212      	sxth	r2, r2
d0041796:	f1c3 0900 	rsb	r9, r3, #0
d004179a:	454a      	cmp	r2, r9
d004179c:	db2a      	blt.n	d00417f4 <procExplodes3d+0x194>
d004179e:	f8be 8018 	ldrh.w	r8, [lr, #24]
d00417a2:	f503 7220 	add.w	r2, r3, #640	; 0x280
d00417a6:	fa0f f888 	sxth.w	r8, r8
d00417aa:	4590      	cmp	r8, r2
d00417ac:	dc22      	bgt.n	d00417f4 <procExplodes3d+0x194>
d00417ae:	f8be 201a 	ldrh.w	r2, [lr, #26]
d00417b2:	b212      	sxth	r2, r2
d00417b4:	4591      	cmp	r9, r2
d00417b6:	dc1d      	bgt.n	d00417f4 <procExplodes3d+0x194>
d00417b8:	f8be 201a 	ldrh.w	r2, [lr, #26]
d00417bc:	f503 73f0 	add.w	r3, r3, #480	; 0x1e0
d00417c0:	b212      	sxth	r2, r2
d00417c2:	429a      	cmp	r2, r3
d00417c4:	dc16      	bgt.n	d00417f4 <procExplodes3d+0x194>
d00417c6:	3401      	adds	r4, #1
d00417c8:	2c20      	cmp	r4, #32
d00417ca:	d01a      	beq.n	d0041802 <procExplodes3d+0x1a2>
d00417cc:	fb05 6304 	mla	r3, r5, r4, r6
d00417d0:	f893 2022 	ldrb.w	r2, [r3, #34]	; 0x22
d00417d4:	2a00      	cmp	r2, #0
d00417d6:	d0f6      	beq.n	d00417c6 <procExplodes3d+0x166>
d00417d8:	f893 2022 	ldrb.w	r2, [r3, #34]	; 0x22
d00417dc:	3a01      	subs	r2, #1
d00417de:	b2d2      	uxtb	r2, r2
d00417e0:	f883 2022 	strb.w	r2, [r3, #34]	; 0x22
d00417e4:	edd3 7a05 	vldr	s15, [r3, #20]
d00417e8:	eef4 7ae5 	vcmpe.f32	s15, s11
d00417ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00417f0:	f63f af4b 	bhi.w	d004168a <procExplodes3d+0x2a>
d00417f4:	fb05 6304 	mla	r3, r5, r4, r6
d00417f8:	3401      	adds	r4, #1
d00417fa:	2c20      	cmp	r4, #32
d00417fc:	f883 7022 	strb.w	r7, [r3, #34]	; 0x22
d0041800:	d1e4      	bne.n	d00417cc <procExplodes3d+0x16c>
d0041802:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0041806:	f882 7025 	strb.w	r7, [r2, #37]	; 0x25
d004180a:	f882 7027 	strb.w	r7, [r2, #39]	; 0x27
d004180e:	e7b9      	b.n	d0041784 <procExplodes3d+0x124>
d0041810:	d0045ea0 	.word	0xd0045ea0
d0041814:	44fc8000 	.word	0x44fc8000
d0041818:	43820000 	.word	0x43820000
d004181c:	43a00000 	.word	0x43a00000
d0041820:	43700000 	.word	0x43700000
d0041824:	47a41000 	.word	0x47a41000
d0041828:	51eb851f 	.word	0x51eb851f

d004182c <LoadGraphics>:
d004182c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0041830:	f44f 3061 	mov.w	r0, #230400	; 0x38400
d0041834:	b082      	sub	sp, #8
d0041836:	4c2e      	ldr	r4, [pc, #184]	; (d00418f0 <LoadGraphics+0xc4>)
d0041838:	f001 fbfe 	bl	d0043038 <malloc>
d004183c:	2500      	movs	r5, #0
d004183e:	2260      	movs	r2, #96	; 0x60
d0041840:	4603      	mov	r3, r0
d0041842:	f44f 71f0 	mov.w	r1, #480	; 0x1e0
d0041846:	9001      	str	r0, [sp, #4]
d0041848:	2640      	movs	r6, #64	; 0x40
d004184a:	6023      	str	r3, [r4, #0]
d004184c:	f44f 7800 	mov.w	r8, #512	; 0x200
d0041850:	81a1      	strh	r1, [r4, #12]
d0041852:	27c0      	movs	r7, #192	; 0xc0
d0041854:	81e1      	strh	r1, [r4, #14]
d0041856:	4827      	ldr	r0, [pc, #156]	; (d00418f4 <LoadGraphics+0xc8>)
d0041858:	8222      	strh	r2, [r4, #16]
d004185a:	8262      	strh	r2, [r4, #18]
d004185c:	82a5      	strh	r5, [r4, #20]
d004185e:	82e5      	strh	r5, [r4, #22]
d0041860:	6821      	ldr	r1, [r4, #0]
d0041862:	f7fe fbeb 	bl	d004003c <LoadPPB>
d0041866:	f44f 30c0 	mov.w	r0, #98304	; 0x18000
d004186a:	f001 fbe5 	bl	d0043038 <malloc>
d004186e:	9001      	str	r0, [sp, #4]
d0041870:	9b01      	ldr	r3, [sp, #4]
d0041872:	4821      	ldr	r0, [pc, #132]	; (d00418f8 <LoadGraphics+0xcc>)
d0041874:	6223      	str	r3, [r4, #32]
d0041876:	f8a4 802c 	strh.w	r8, [r4, #44]	; 0x2c
d004187a:	85e7      	strh	r7, [r4, #46]	; 0x2e
d004187c:	8626      	strh	r6, [r4, #48]	; 0x30
d004187e:	8666      	strh	r6, [r4, #50]	; 0x32
d0041880:	86a5      	strh	r5, [r4, #52]	; 0x34
d0041882:	86e5      	strh	r5, [r4, #54]	; 0x36
d0041884:	6a21      	ldr	r1, [r4, #32]
d0041886:	f7fe fbd9 	bl	d004003c <LoadPPB>
d004188a:	f44f 30c0 	mov.w	r0, #98304	; 0x18000
d004188e:	f001 fbd3 	bl	d0043038 <malloc>
d0041892:	9001      	str	r0, [sp, #4]
d0041894:	9b01      	ldr	r3, [sp, #4]
d0041896:	4819      	ldr	r0, [pc, #100]	; (d00418fc <LoadGraphics+0xd0>)
d0041898:	6423      	str	r3, [r4, #64]	; 0x40
d004189a:	f8a4 804c 	strh.w	r8, [r4, #76]	; 0x4c
d004189e:	f8a4 704e 	strh.w	r7, [r4, #78]	; 0x4e
d00418a2:	f8a4 6050 	strh.w	r6, [r4, #80]	; 0x50
d00418a6:	f8a4 6052 	strh.w	r6, [r4, #82]	; 0x52
d00418aa:	f8a4 5054 	strh.w	r5, [r4, #84]	; 0x54
d00418ae:	f8a4 5056 	strh.w	r5, [r4, #86]	; 0x56
d00418b2:	6c21      	ldr	r1, [r4, #64]	; 0x40
d00418b4:	f7fe fbc2 	bl	d004003c <LoadPPB>
d00418b8:	f44f 4080 	mov.w	r0, #16384	; 0x4000
d00418bc:	f001 fbbc 	bl	d0043038 <malloc>
d00418c0:	2220      	movs	r2, #32
d00418c2:	4603      	mov	r3, r0
d00418c4:	f44f 7180 	mov.w	r1, #256	; 0x100
d00418c8:	480d      	ldr	r0, [pc, #52]	; (d0041900 <LoadGraphics+0xd4>)
d00418ca:	6623      	str	r3, [r4, #96]	; 0x60
d00418cc:	f8a4 106c 	strh.w	r1, [r4, #108]	; 0x6c
d00418d0:	f8a4 606e 	strh.w	r6, [r4, #110]	; 0x6e
d00418d4:	f8a4 2070 	strh.w	r2, [r4, #112]	; 0x70
d00418d8:	f8a4 2072 	strh.w	r2, [r4, #114]	; 0x72
d00418dc:	f8a4 5074 	strh.w	r5, [r4, #116]	; 0x74
d00418e0:	f8a4 5076 	strh.w	r5, [r4, #118]	; 0x76
d00418e4:	6e21      	ldr	r1, [r4, #96]	; 0x60
d00418e6:	b002      	add	sp, #8
d00418e8:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d00418ec:	f7fe bba6 	b.w	d004003c <LoadPPB>
d00418f0:	d0045860 	.word	0xd0045860
d00418f4:	d00440a4 	.word	0xd00440a4
d00418f8:	d00440bc 	.word	0xd00440bc
d00418fc:	d00440d8 	.word	0xd00440d8
d0041900:	d00440f4 	.word	0xd00440f4

d0041904 <LoadShipGfx>:
d0041904:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0041908:	f44f 3010 	mov.w	r0, #147456	; 0x24000
d004190c:	2400      	movs	r4, #0
d004190e:	f001 fb93 	bl	d0043038 <malloc>
d0041912:	2540      	movs	r5, #64	; 0x40
d0041914:	4b3c      	ldr	r3, [pc, #240]	; (d0041a08 <LoadShipGfx+0x104>)
d0041916:	4602      	mov	r2, r0
d0041918:	f04f 090a 	mov.w	r9, #10
d004191c:	f44f 77c0 	mov.w	r7, #384	; 0x180
d0041920:	601a      	str	r2, [r3, #0]
d0041922:	f04f 0860 	mov.w	r8, #96	; 0x60
d0041926:	81df      	strh	r7, [r3, #14]
d0041928:	26a0      	movs	r6, #160	; 0xa0
d004192a:	819f      	strh	r7, [r3, #12]
d004192c:	4837      	ldr	r0, [pc, #220]	; (d0041a0c <LoadShipGfx+0x108>)
d004192e:	825d      	strh	r5, [r3, #18]
d0041930:	821d      	strh	r5, [r3, #16]
d0041932:	76dc      	strb	r4, [r3, #27]
d0041934:	f8a3 9014 	strh.w	r9, [r3, #20]
d0041938:	f8a3 9016 	strh.w	r9, [r3, #22]
d004193c:	6819      	ldr	r1, [r3, #0]
d004193e:	f7fe fb7d 	bl	d004003c <LoadPPB>
d0041942:	f44f 3061 	mov.w	r0, #230400	; 0x38400
d0041946:	f001 fb77 	bl	d0043038 <malloc>
d004194a:	4b31      	ldr	r3, [pc, #196]	; (d0041a10 <LoadShipGfx+0x10c>)
d004194c:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0041950:	210c      	movs	r1, #12
d0041952:	6018      	str	r0, [r3, #0]
d0041954:	81da      	strh	r2, [r3, #14]
d0041956:	482f      	ldr	r0, [pc, #188]	; (d0041a14 <LoadShipGfx+0x110>)
d0041958:	819a      	strh	r2, [r3, #12]
d004195a:	f8a3 8012 	strh.w	r8, [r3, #18]
d004195e:	f8a3 8010 	strh.w	r8, [r3, #16]
d0041962:	76d9      	strb	r1, [r3, #27]
d0041964:	f8a3 9014 	strh.w	r9, [r3, #20]
d0041968:	f8a3 9016 	strh.w	r9, [r3, #22]
d004196c:	6819      	ldr	r1, [r3, #0]
d004196e:	f7fe fb65 	bl	d004003c <LoadPPB>
d0041972:	f44f 5010 	mov.w	r0, #9216	; 0x2400
d0041976:	f001 fb5f 	bl	d0043038 <malloc>
d004197a:	4b27      	ldr	r3, [pc, #156]	; (d0041a18 <LoadShipGfx+0x114>)
d004197c:	4602      	mov	r2, r0
d004197e:	2110      	movs	r1, #16
d0041980:	4826      	ldr	r0, [pc, #152]	; (d0041a1c <LoadShipGfx+0x118>)
d0041982:	601a      	str	r2, [r3, #0]
d0041984:	f8a3 800e 	strh.w	r8, [r3, #14]
d0041988:	f8a3 800c 	strh.w	r8, [r3, #12]
d004198c:	8259      	strh	r1, [r3, #18]
d004198e:	8219      	strh	r1, [r3, #16]
d0041990:	76dc      	strb	r4, [r3, #27]
d0041992:	6819      	ldr	r1, [r3, #0]
d0041994:	f7fe fb52 	bl	d004003c <LoadPPB>
d0041998:	f44f 6048 	mov.w	r0, #3200	; 0xc80
d004199c:	f001 fb4c 	bl	d0043038 <malloc>
d00419a0:	4b1f      	ldr	r3, [pc, #124]	; (d0041a20 <LoadShipGfx+0x11c>)
d00419a2:	2214      	movs	r2, #20
d00419a4:	4601      	mov	r1, r0
d00419a6:	481f      	ldr	r0, [pc, #124]	; (d0041a24 <LoadShipGfx+0x120>)
d00419a8:	6019      	str	r1, [r3, #0]
d00419aa:	81da      	strh	r2, [r3, #14]
d00419ac:	819e      	strh	r6, [r3, #12]
d00419ae:	825a      	strh	r2, [r3, #18]
d00419b0:	821a      	strh	r2, [r3, #16]
d00419b2:	76dc      	strb	r4, [r3, #27]
d00419b4:	6819      	ldr	r1, [r3, #0]
d00419b6:	f7fe fb41 	bl	d004003c <LoadPPB>
d00419ba:	f44f 4048 	mov.w	r0, #51200	; 0xc800
d00419be:	f001 fb3b 	bl	d0043038 <malloc>
d00419c2:	4b19      	ldr	r3, [pc, #100]	; (d0041a28 <LoadShipGfx+0x124>)
d00419c4:	2250      	movs	r2, #80	; 0x50
d00419c6:	f44f 71a0 	mov.w	r1, #320	; 0x140
d00419ca:	6018      	str	r0, [r3, #0]
d00419cc:	81de      	strh	r6, [r3, #14]
d00419ce:	26c0      	movs	r6, #192	; 0xc0
d00419d0:	8199      	strh	r1, [r3, #12]
d00419d2:	4816      	ldr	r0, [pc, #88]	; (d0041a2c <LoadShipGfx+0x128>)
d00419d4:	821a      	strh	r2, [r3, #16]
d00419d6:	825a      	strh	r2, [r3, #18]
d00419d8:	76dc      	strb	r4, [r3, #27]
d00419da:	6819      	ldr	r1, [r3, #0]
d00419dc:	f7fe fb2e 	bl	d004003c <LoadPPB>
d00419e0:	f44f 3090 	mov.w	r0, #73728	; 0x12000
d00419e4:	f001 fb28 	bl	d0043038 <malloc>
d00419e8:	4b11      	ldr	r3, [pc, #68]	; (d0041a30 <LoadShipGfx+0x12c>)
d00419ea:	4602      	mov	r2, r0
d00419ec:	2104      	movs	r1, #4
d00419ee:	4811      	ldr	r0, [pc, #68]	; (d0041a34 <LoadShipGfx+0x130>)
d00419f0:	601a      	str	r2, [r3, #0]
d00419f2:	81de      	strh	r6, [r3, #14]
d00419f4:	819f      	strh	r7, [r3, #12]
d00419f6:	7699      	strb	r1, [r3, #26]
d00419f8:	821d      	strh	r5, [r3, #16]
d00419fa:	825d      	strh	r5, [r3, #18]
d00419fc:	76dc      	strb	r4, [r3, #27]
d00419fe:	6819      	ldr	r1, [r3, #0]
d0041a00:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0041a04:	f7fe bb1a 	b.w	d004003c <LoadPPB>
d0041a08:	d0045820 	.word	0xd0045820
d0041a0c:	d004410c 	.word	0xd004410c
d0041a10:	d00457e0 	.word	0xd00457e0
d0041a14:	d004411c 	.word	0xd004411c
d0041a18:	d0045640 	.word	0xd0045640
d0041a1c:	d0044130 	.word	0xd0044130
d0041a20:	d0046720 	.word	0xd0046720
d0041a24:	d0044148 	.word	0xd0044148
d0041a28:	d0044c80 	.word	0xd0044c80
d0041a2c:	d0044158 	.word	0xd0044158
d0041a30:	d0046440 	.word	0xd0046440
d0041a34:	d0044168 	.word	0xd0044168

d0041a38 <LoadCommonGameGraphics>:
d0041a38:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0041a3a:	f44f 4020 	mov.w	r0, #40960	; 0xa000
d0041a3e:	2680      	movs	r6, #128	; 0x80
d0041a40:	f001 fafa 	bl	d0043038 <malloc>
d0041a44:	2700      	movs	r7, #0
d0041a46:	4b21      	ldr	r3, [pc, #132]	; (d0041acc <LoadCommonGameGraphics+0x94>)
d0041a48:	2240      	movs	r2, #64	; 0x40
d0041a4a:	f44f 71a0 	mov.w	r1, #320	; 0x140
d0041a4e:	2410      	movs	r4, #16
d0041a50:	6018      	str	r0, [r3, #0]
d0041a52:	25c0      	movs	r5, #192	; 0xc0
d0041a54:	81de      	strh	r6, [r3, #14]
d0041a56:	481e      	ldr	r0, [pc, #120]	; (d0041ad0 <LoadCommonGameGraphics+0x98>)
d0041a58:	8199      	strh	r1, [r3, #12]
d0041a5a:	825a      	strh	r2, [r3, #18]
d0041a5c:	821a      	strh	r2, [r3, #16]
d0041a5e:	76df      	strb	r7, [r3, #27]
d0041a60:	6819      	ldr	r1, [r3, #0]
d0041a62:	f7fe faeb 	bl	d004003c <LoadPPB>
d0041a66:	f44f 40c0 	mov.w	r0, #24576	; 0x6000
d0041a6a:	f001 fae5 	bl	d0043038 <malloc>
d0041a6e:	4b19      	ldr	r3, [pc, #100]	; (d0041ad4 <LoadCommonGameGraphics+0x9c>)
d0041a70:	4602      	mov	r2, r0
d0041a72:	4819      	ldr	r0, [pc, #100]	; (d0041ad8 <LoadCommonGameGraphics+0xa0>)
d0041a74:	601a      	str	r2, [r3, #0]
d0041a76:	81dd      	strh	r5, [r3, #14]
d0041a78:	819e      	strh	r6, [r3, #12]
d0041a7a:	821c      	strh	r4, [r3, #16]
d0041a7c:	825c      	strh	r4, [r3, #18]
d0041a7e:	76df      	strb	r7, [r3, #27]
d0041a80:	6819      	ldr	r1, [r3, #0]
d0041a82:	f7fe fadb 	bl	d004003c <LoadPPB>
d0041a86:	f44f 4010 	mov.w	r0, #36864	; 0x9000
d0041a8a:	f001 fad5 	bl	d0043038 <malloc>
d0041a8e:	4b13      	ldr	r3, [pc, #76]	; (d0041adc <LoadCommonGameGraphics+0xa4>)
d0041a90:	4602      	mov	r2, r0
d0041a92:	2120      	movs	r1, #32
d0041a94:	4812      	ldr	r0, [pc, #72]	; (d0041ae0 <LoadCommonGameGraphics+0xa8>)
d0041a96:	601a      	str	r2, [r3, #0]
d0041a98:	819d      	strh	r5, [r3, #12]
d0041a9a:	81dd      	strh	r5, [r3, #14]
d0041a9c:	2530      	movs	r5, #48	; 0x30
d0041a9e:	8259      	strh	r1, [r3, #18]
d0041aa0:	8219      	strh	r1, [r3, #16]
d0041aa2:	6819      	ldr	r1, [r3, #0]
d0041aa4:	f7fe faca 	bl	d004003c <LoadPPB>
d0041aa8:	f44f 7040 	mov.w	r0, #768	; 0x300
d0041aac:	f001 fac4 	bl	d0043038 <malloc>
d0041ab0:	4b0c      	ldr	r3, [pc, #48]	; (d0041ae4 <LoadCommonGameGraphics+0xac>)
d0041ab2:	4602      	mov	r2, r0
d0041ab4:	2108      	movs	r1, #8
d0041ab6:	480c      	ldr	r0, [pc, #48]	; (d0041ae8 <LoadCommonGameGraphics+0xb0>)
d0041ab8:	601a      	str	r2, [r3, #0]
d0041aba:	81dc      	strh	r4, [r3, #14]
d0041abc:	819d      	strh	r5, [r3, #12]
d0041abe:	825c      	strh	r4, [r3, #18]
d0041ac0:	8219      	strh	r1, [r3, #16]
d0041ac2:	6819      	ldr	r1, [r3, #0]
d0041ac4:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0041ac8:	f7fe bab8 	b.w	d004003c <LoadPPB>
d0041acc:	d00467c0 	.word	0xd00467c0
d0041ad0:	d0044178 	.word	0xd0044178
d0041ad4:	d0046760 	.word	0xd0046760
d0041ad8:	d0044188 	.word	0xd0044188
d0041adc:	d0045e80 	.word	0xd0045e80
d0041ae0:	d004419c 	.word	0xd004419c
d0041ae4:	d0046420 	.word	0xd0046420
d0041ae8:	d00441b0 	.word	0xd00441b0

d0041aec <render3Dstuff>:
d0041aec:	48a6      	ldr	r0, [pc, #664]	; (d0041d88 <render3Dstuff+0x29c>)
d0041aee:	2100      	movs	r1, #0
d0041af0:	4aa6      	ldr	r2, [pc, #664]	; (d0041d8c <render3Dstuff+0x2a0>)
d0041af2:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041af6:	ed2d 8b02 	vpush	{d8}
d0041afa:	f890 3025 	ldrb.w	r3, [r0, #37]	; 0x25
d0041afe:	b087      	sub	sp, #28
d0041b00:	7011      	strb	r1, [r2, #0]
d0041b02:	2b00      	cmp	r3, #0
d0041b04:	f000 8334 	beq.w	d0042170 <render3Dstuff+0x684>
d0041b08:	4ca1      	ldr	r4, [pc, #644]	; (d0041d90 <render3Dstuff+0x2a4>)
d0041b0a:	2201      	movs	r2, #1
d0041b0c:	6883      	ldr	r3, [r0, #8]
d0041b0e:	80a1      	strh	r1, [r4, #4]
d0041b10:	6023      	str	r3, [r4, #0]
d0041b12:	499d      	ldr	r1, [pc, #628]	; (d0041d88 <render3Dstuff+0x29c>)
d0041b14:	f891 3055 	ldrb.w	r3, [r1, #85]	; 0x55
d0041b18:	b14b      	cbz	r3, d0041b2e <render3Dstuff+0x42>
d0041b1a:	4c9d      	ldr	r4, [pc, #628]	; (d0041d90 <render3Dstuff+0x2a4>)
d0041b1c:	1c50      	adds	r0, r2, #1
d0041b1e:	6b89      	ldr	r1, [r1, #56]	; 0x38
d0041b20:	f44f 7380 	mov.w	r3, #256	; 0x100
d0041b24:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041b28:	b2c2      	uxtb	r2, r0
d0041b2a:	6021      	str	r1, [r4, #0]
d0041b2c:	80a3      	strh	r3, [r4, #4]
d0041b2e:	4996      	ldr	r1, [pc, #600]	; (d0041d88 <render3Dstuff+0x29c>)
d0041b30:	f891 3085 	ldrb.w	r3, [r1, #133]	; 0x85
d0041b34:	b14b      	cbz	r3, d0041b4a <render3Dstuff+0x5e>
d0041b36:	4c96      	ldr	r4, [pc, #600]	; (d0041d90 <render3Dstuff+0x2a4>)
d0041b38:	1c50      	adds	r0, r2, #1
d0041b3a:	6e89      	ldr	r1, [r1, #104]	; 0x68
d0041b3c:	f44f 7300 	mov.w	r3, #512	; 0x200
d0041b40:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041b44:	b2c2      	uxtb	r2, r0
d0041b46:	6021      	str	r1, [r4, #0]
d0041b48:	80a3      	strh	r3, [r4, #4]
d0041b4a:	498f      	ldr	r1, [pc, #572]	; (d0041d88 <render3Dstuff+0x29c>)
d0041b4c:	f891 30b5 	ldrb.w	r3, [r1, #181]	; 0xb5
d0041b50:	b153      	cbz	r3, d0041b68 <render3Dstuff+0x7c>
d0041b52:	4c8f      	ldr	r4, [pc, #572]	; (d0041d90 <render3Dstuff+0x2a4>)
d0041b54:	1c50      	adds	r0, r2, #1
d0041b56:	f8d1 1098 	ldr.w	r1, [r1, #152]	; 0x98
d0041b5a:	f44f 7340 	mov.w	r3, #768	; 0x300
d0041b5e:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041b62:	b2c2      	uxtb	r2, r0
d0041b64:	6021      	str	r1, [r4, #0]
d0041b66:	80a3      	strh	r3, [r4, #4]
d0041b68:	4987      	ldr	r1, [pc, #540]	; (d0041d88 <render3Dstuff+0x29c>)
d0041b6a:	f891 30e5 	ldrb.w	r3, [r1, #229]	; 0xe5
d0041b6e:	b153      	cbz	r3, d0041b86 <render3Dstuff+0x9a>
d0041b70:	4c87      	ldr	r4, [pc, #540]	; (d0041d90 <render3Dstuff+0x2a4>)
d0041b72:	1c50      	adds	r0, r2, #1
d0041b74:	f8d1 10c8 	ldr.w	r1, [r1, #200]	; 0xc8
d0041b78:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0041b7c:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041b80:	b2c2      	uxtb	r2, r0
d0041b82:	6021      	str	r1, [r4, #0]
d0041b84:	80a3      	strh	r3, [r4, #4]
d0041b86:	4980      	ldr	r1, [pc, #512]	; (d0041d88 <render3Dstuff+0x29c>)
d0041b88:	f891 3115 	ldrb.w	r3, [r1, #277]	; 0x115
d0041b8c:	b153      	cbz	r3, d0041ba4 <render3Dstuff+0xb8>
d0041b8e:	4c80      	ldr	r4, [pc, #512]	; (d0041d90 <render3Dstuff+0x2a4>)
d0041b90:	1c50      	adds	r0, r2, #1
d0041b92:	f8d1 10f8 	ldr.w	r1, [r1, #248]	; 0xf8
d0041b96:	f44f 63a0 	mov.w	r3, #1280	; 0x500
d0041b9a:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041b9e:	b2c2      	uxtb	r2, r0
d0041ba0:	6021      	str	r1, [r4, #0]
d0041ba2:	80a3      	strh	r3, [r4, #4]
d0041ba4:	4978      	ldr	r1, [pc, #480]	; (d0041d88 <render3Dstuff+0x29c>)
d0041ba6:	f891 3145 	ldrb.w	r3, [r1, #325]	; 0x145
d0041baa:	b153      	cbz	r3, d0041bc2 <render3Dstuff+0xd6>
d0041bac:	4c78      	ldr	r4, [pc, #480]	; (d0041d90 <render3Dstuff+0x2a4>)
d0041bae:	1c50      	adds	r0, r2, #1
d0041bb0:	f8d1 1128 	ldr.w	r1, [r1, #296]	; 0x128
d0041bb4:	f44f 63c0 	mov.w	r3, #1536	; 0x600
d0041bb8:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041bbc:	b2c2      	uxtb	r2, r0
d0041bbe:	6021      	str	r1, [r4, #0]
d0041bc0:	80a3      	strh	r3, [r4, #4]
d0041bc2:	4971      	ldr	r1, [pc, #452]	; (d0041d88 <render3Dstuff+0x29c>)
d0041bc4:	f891 3175 	ldrb.w	r3, [r1, #373]	; 0x175
d0041bc8:	b153      	cbz	r3, d0041be0 <render3Dstuff+0xf4>
d0041bca:	4c71      	ldr	r4, [pc, #452]	; (d0041d90 <render3Dstuff+0x2a4>)
d0041bcc:	1c50      	adds	r0, r2, #1
d0041bce:	f8d1 1158 	ldr.w	r1, [r1, #344]	; 0x158
d0041bd2:	f44f 63e0 	mov.w	r3, #1792	; 0x700
d0041bd6:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041bda:	b2c2      	uxtb	r2, r0
d0041bdc:	6021      	str	r1, [r4, #0]
d0041bde:	80a3      	strh	r3, [r4, #4]
d0041be0:	4969      	ldr	r1, [pc, #420]	; (d0041d88 <render3Dstuff+0x29c>)
d0041be2:	f891 31a5 	ldrb.w	r3, [r1, #421]	; 0x1a5
d0041be6:	b153      	cbz	r3, d0041bfe <render3Dstuff+0x112>
d0041be8:	4c69      	ldr	r4, [pc, #420]	; (d0041d90 <render3Dstuff+0x2a4>)
d0041bea:	1c50      	adds	r0, r2, #1
d0041bec:	f8d1 1188 	ldr.w	r1, [r1, #392]	; 0x188
d0041bf0:	f44f 6300 	mov.w	r3, #2048	; 0x800
d0041bf4:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041bf8:	b2c2      	uxtb	r2, r0
d0041bfa:	6021      	str	r1, [r4, #0]
d0041bfc:	80a3      	strh	r3, [r4, #4]
d0041bfe:	4962      	ldr	r1, [pc, #392]	; (d0041d88 <render3Dstuff+0x29c>)
d0041c00:	f891 31d5 	ldrb.w	r3, [r1, #469]	; 0x1d5
d0041c04:	b153      	cbz	r3, d0041c1c <render3Dstuff+0x130>
d0041c06:	4c62      	ldr	r4, [pc, #392]	; (d0041d90 <render3Dstuff+0x2a4>)
d0041c08:	1c50      	adds	r0, r2, #1
d0041c0a:	f8d1 11b8 	ldr.w	r1, [r1, #440]	; 0x1b8
d0041c0e:	f44f 6310 	mov.w	r3, #2304	; 0x900
d0041c12:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041c16:	b2c2      	uxtb	r2, r0
d0041c18:	6021      	str	r1, [r4, #0]
d0041c1a:	80a3      	strh	r3, [r4, #4]
d0041c1c:	495a      	ldr	r1, [pc, #360]	; (d0041d88 <render3Dstuff+0x29c>)
d0041c1e:	f891 3205 	ldrb.w	r3, [r1, #517]	; 0x205
d0041c22:	b153      	cbz	r3, d0041c3a <render3Dstuff+0x14e>
d0041c24:	4c5a      	ldr	r4, [pc, #360]	; (d0041d90 <render3Dstuff+0x2a4>)
d0041c26:	1c50      	adds	r0, r2, #1
d0041c28:	f8d1 11e8 	ldr.w	r1, [r1, #488]	; 0x1e8
d0041c2c:	f44f 6320 	mov.w	r3, #2560	; 0xa00
d0041c30:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041c34:	b2c2      	uxtb	r2, r0
d0041c36:	6021      	str	r1, [r4, #0]
d0041c38:	80a3      	strh	r3, [r4, #4]
d0041c3a:	4953      	ldr	r1, [pc, #332]	; (d0041d88 <render3Dstuff+0x29c>)
d0041c3c:	f891 3235 	ldrb.w	r3, [r1, #565]	; 0x235
d0041c40:	b153      	cbz	r3, d0041c58 <render3Dstuff+0x16c>
d0041c42:	4c53      	ldr	r4, [pc, #332]	; (d0041d90 <render3Dstuff+0x2a4>)
d0041c44:	1c50      	adds	r0, r2, #1
d0041c46:	f8d1 1218 	ldr.w	r1, [r1, #536]	; 0x218
d0041c4a:	f44f 6330 	mov.w	r3, #2816	; 0xb00
d0041c4e:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041c52:	b2c2      	uxtb	r2, r0
d0041c54:	6021      	str	r1, [r4, #0]
d0041c56:	80a3      	strh	r3, [r4, #4]
d0041c58:	494b      	ldr	r1, [pc, #300]	; (d0041d88 <render3Dstuff+0x29c>)
d0041c5a:	f891 3265 	ldrb.w	r3, [r1, #613]	; 0x265
d0041c5e:	b153      	cbz	r3, d0041c76 <render3Dstuff+0x18a>
d0041c60:	4c4b      	ldr	r4, [pc, #300]	; (d0041d90 <render3Dstuff+0x2a4>)
d0041c62:	1c50      	adds	r0, r2, #1
d0041c64:	f8d1 1248 	ldr.w	r1, [r1, #584]	; 0x248
d0041c68:	f44f 6340 	mov.w	r3, #3072	; 0xc00
d0041c6c:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041c70:	b2c2      	uxtb	r2, r0
d0041c72:	6021      	str	r1, [r4, #0]
d0041c74:	80a3      	strh	r3, [r4, #4]
d0041c76:	4944      	ldr	r1, [pc, #272]	; (d0041d88 <render3Dstuff+0x29c>)
d0041c78:	f891 3295 	ldrb.w	r3, [r1, #661]	; 0x295
d0041c7c:	b153      	cbz	r3, d0041c94 <render3Dstuff+0x1a8>
d0041c7e:	4c44      	ldr	r4, [pc, #272]	; (d0041d90 <render3Dstuff+0x2a4>)
d0041c80:	1c50      	adds	r0, r2, #1
d0041c82:	f8d1 1278 	ldr.w	r1, [r1, #632]	; 0x278
d0041c86:	f44f 6350 	mov.w	r3, #3328	; 0xd00
d0041c8a:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041c8e:	b2c2      	uxtb	r2, r0
d0041c90:	6021      	str	r1, [r4, #0]
d0041c92:	80a3      	strh	r3, [r4, #4]
d0041c94:	493d      	ldr	r1, [pc, #244]	; (d0041d8c <render3Dstuff+0x2a0>)
d0041c96:	2300      	movs	r3, #0
d0041c98:	f8df a0fc 	ldr.w	sl, [pc, #252]	; d0041d98 <render3Dstuff+0x2ac>
d0041c9c:	f04f 0c01 	mov.w	ip, #1
d0041ca0:	4f3b      	ldr	r7, [pc, #236]	; (d0041d90 <render3Dstuff+0x2a4>)
d0041ca2:	700a      	strb	r2, [r1, #0]
d0041ca4:	eb03 0143 	add.w	r1, r3, r3, lsl #1
d0041ca8:	1c56      	adds	r6, r2, #1
d0041caa:	b2dd      	uxtb	r5, r3
d0041cac:	3301      	adds	r3, #1
d0041cae:	eb0a 1101 	add.w	r1, sl, r1, lsl #4
d0041cb2:	eb07 00c2 	add.w	r0, r7, r2, lsl #3
d0041cb6:	f891 4025 	ldrb.w	r4, [r1, #37]	; 0x25
d0041cba:	b12c      	cbz	r4, d0041cc8 <render3Dstuff+0x1dc>
d0041cbc:	6889      	ldr	r1, [r1, #8]
d0041cbe:	b2f2      	uxtb	r2, r6
d0041cc0:	f880 c004 	strb.w	ip, [r0, #4]
d0041cc4:	6001      	str	r1, [r0, #0]
d0041cc6:	7145      	strb	r5, [r0, #5]
d0041cc8:	2b20      	cmp	r3, #32
d0041cca:	d1eb      	bne.n	d0041ca4 <render3Dstuff+0x1b8>
d0041ccc:	492f      	ldr	r1, [pc, #188]	; (d0041d8c <render3Dstuff+0x2a0>)
d0041cce:	2300      	movs	r3, #0
d0041cd0:	f8df b0c8 	ldr.w	fp, [pc, #200]	; d0041d9c <render3Dstuff+0x2b0>
d0041cd4:	f04f 0c2c 	mov.w	ip, #44	; 0x2c
d0041cd8:	4f2d      	ldr	r7, [pc, #180]	; (d0041d90 <render3Dstuff+0x2a4>)
d0041cda:	f04f 0e02 	mov.w	lr, #2
d0041cde:	700a      	strb	r2, [r1, #0]
d0041ce0:	fb0c b003 	mla	r0, ip, r3, fp
d0041ce4:	b2dd      	uxtb	r5, r3
d0041ce6:	1c56      	adds	r6, r2, #1
d0041ce8:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
d0041cec:	f890 4022 	ldrb.w	r4, [r0, #34]	; 0x22
d0041cf0:	3301      	adds	r3, #1
d0041cf2:	b12c      	cbz	r4, d0041d00 <render3Dstuff+0x214>
d0041cf4:	6940      	ldr	r0, [r0, #20]
d0041cf6:	b2f2      	uxtb	r2, r6
d0041cf8:	f881 e004 	strb.w	lr, [r1, #4]
d0041cfc:	6008      	str	r0, [r1, #0]
d0041cfe:	714d      	strb	r5, [r1, #5]
d0041d00:	2b20      	cmp	r3, #32
d0041d02:	d1ed      	bne.n	d0041ce0 <render3Dstuff+0x1f4>
d0041d04:	4b21      	ldr	r3, [pc, #132]	; (d0041d8c <render3Dstuff+0x2a0>)
d0041d06:	4923      	ldr	r1, [pc, #140]	; (d0041d94 <render3Dstuff+0x2a8>)
d0041d08:	701a      	strb	r2, [r3, #0]
d0041d0a:	f891 3025 	ldrb.w	r3, [r1, #37]	; 0x25
d0041d0e:	b143      	cbz	r3, d0041d22 <render3Dstuff+0x236>
d0041d10:	4c1f      	ldr	r4, [pc, #124]	; (d0041d90 <render3Dstuff+0x2a4>)
d0041d12:	1c50      	adds	r0, r2, #1
d0041d14:	6889      	ldr	r1, [r1, #8]
d0041d16:	2303      	movs	r3, #3
d0041d18:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041d1c:	b2c2      	uxtb	r2, r0
d0041d1e:	6021      	str	r1, [r4, #0]
d0041d20:	80a3      	strh	r3, [r4, #4]
d0041d22:	491c      	ldr	r1, [pc, #112]	; (d0041d94 <render3Dstuff+0x2a8>)
d0041d24:	f891 3055 	ldrb.w	r3, [r1, #85]	; 0x55
d0041d28:	b14b      	cbz	r3, d0041d3e <render3Dstuff+0x252>
d0041d2a:	4c19      	ldr	r4, [pc, #100]	; (d0041d90 <render3Dstuff+0x2a4>)
d0041d2c:	1c50      	adds	r0, r2, #1
d0041d2e:	6b89      	ldr	r1, [r1, #56]	; 0x38
d0041d30:	f240 1303 	movw	r3, #259	; 0x103
d0041d34:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041d38:	b2c2      	uxtb	r2, r0
d0041d3a:	6021      	str	r1, [r4, #0]
d0041d3c:	80a3      	strh	r3, [r4, #4]
d0041d3e:	4915      	ldr	r1, [pc, #84]	; (d0041d94 <render3Dstuff+0x2a8>)
d0041d40:	f891 3085 	ldrb.w	r3, [r1, #133]	; 0x85
d0041d44:	b14b      	cbz	r3, d0041d5a <render3Dstuff+0x26e>
d0041d46:	4c12      	ldr	r4, [pc, #72]	; (d0041d90 <render3Dstuff+0x2a4>)
d0041d48:	1c50      	adds	r0, r2, #1
d0041d4a:	6e89      	ldr	r1, [r1, #104]	; 0x68
d0041d4c:	f240 2303 	movw	r3, #515	; 0x203
d0041d50:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041d54:	b2c2      	uxtb	r2, r0
d0041d56:	6021      	str	r1, [r4, #0]
d0041d58:	80a3      	strh	r3, [r4, #4]
d0041d5a:	490e      	ldr	r1, [pc, #56]	; (d0041d94 <render3Dstuff+0x2a8>)
d0041d5c:	f891 30b5 	ldrb.w	r3, [r1, #181]	; 0xb5
d0041d60:	b153      	cbz	r3, d0041d78 <render3Dstuff+0x28c>
d0041d62:	4c0b      	ldr	r4, [pc, #44]	; (d0041d90 <render3Dstuff+0x2a4>)
d0041d64:	1c50      	adds	r0, r2, #1
d0041d66:	f8d1 1098 	ldr.w	r1, [r1, #152]	; 0x98
d0041d6a:	f240 3303 	movw	r3, #771	; 0x303
d0041d6e:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041d72:	b2c2      	uxtb	r2, r0
d0041d74:	6021      	str	r1, [r4, #0]
d0041d76:	80a3      	strh	r3, [r4, #4]
d0041d78:	4906      	ldr	r1, [pc, #24]	; (d0041d94 <render3Dstuff+0x2a8>)
d0041d7a:	f891 30e5 	ldrb.w	r3, [r1, #229]	; 0xe5
d0041d7e:	b1c3      	cbz	r3, d0041db2 <render3Dstuff+0x2c6>
d0041d80:	4c03      	ldr	r4, [pc, #12]	; (d0041d90 <render3Dstuff+0x2a4>)
d0041d82:	1c50      	adds	r0, r2, #1
d0041d84:	e00c      	b.n	d0041da0 <render3Dstuff+0x2b4>
d0041d86:	bf00      	nop
d0041d88:	d00458e0 	.word	0xd00458e0
d0041d8c:	d0044b71 	.word	0xd0044b71
d0041d90:	d0046464 	.word	0xd0046464
d0041d94:	d0045660 	.word	0xd0045660
d0041d98:	d0045024 	.word	0xd0045024
d0041d9c:	d0045ea0 	.word	0xd0045ea0
d0041da0:	f8d1 10c8 	ldr.w	r1, [r1, #200]	; 0xc8
d0041da4:	f240 4303 	movw	r3, #1027	; 0x403
d0041da8:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041dac:	b2c2      	uxtb	r2, r0
d0041dae:	6021      	str	r1, [r4, #0]
d0041db0:	80a3      	strh	r3, [r4, #4]
d0041db2:	498d      	ldr	r1, [pc, #564]	; (d0041fe8 <render3Dstuff+0x4fc>)
d0041db4:	f891 3115 	ldrb.w	r3, [r1, #277]	; 0x115
d0041db8:	b153      	cbz	r3, d0041dd0 <render3Dstuff+0x2e4>
d0041dba:	4c8c      	ldr	r4, [pc, #560]	; (d0041fec <render3Dstuff+0x500>)
d0041dbc:	1c50      	adds	r0, r2, #1
d0041dbe:	f8d1 10f8 	ldr.w	r1, [r1, #248]	; 0xf8
d0041dc2:	f240 5303 	movw	r3, #1283	; 0x503
d0041dc6:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041dca:	b2c2      	uxtb	r2, r0
d0041dcc:	6021      	str	r1, [r4, #0]
d0041dce:	80a3      	strh	r3, [r4, #4]
d0041dd0:	4985      	ldr	r1, [pc, #532]	; (d0041fe8 <render3Dstuff+0x4fc>)
d0041dd2:	f891 3145 	ldrb.w	r3, [r1, #325]	; 0x145
d0041dd6:	b153      	cbz	r3, d0041dee <render3Dstuff+0x302>
d0041dd8:	4c84      	ldr	r4, [pc, #528]	; (d0041fec <render3Dstuff+0x500>)
d0041dda:	1c50      	adds	r0, r2, #1
d0041ddc:	f8d1 1128 	ldr.w	r1, [r1, #296]	; 0x128
d0041de0:	f240 6303 	movw	r3, #1539	; 0x603
d0041de4:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041de8:	b2c2      	uxtb	r2, r0
d0041dea:	6021      	str	r1, [r4, #0]
d0041dec:	80a3      	strh	r3, [r4, #4]
d0041dee:	497e      	ldr	r1, [pc, #504]	; (d0041fe8 <render3Dstuff+0x4fc>)
d0041df0:	f891 3175 	ldrb.w	r3, [r1, #373]	; 0x175
d0041df4:	b153      	cbz	r3, d0041e0c <render3Dstuff+0x320>
d0041df6:	4c7d      	ldr	r4, [pc, #500]	; (d0041fec <render3Dstuff+0x500>)
d0041df8:	1c50      	adds	r0, r2, #1
d0041dfa:	f8d1 1158 	ldr.w	r1, [r1, #344]	; 0x158
d0041dfe:	f240 7303 	movw	r3, #1795	; 0x703
d0041e02:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041e06:	b2c2      	uxtb	r2, r0
d0041e08:	6021      	str	r1, [r4, #0]
d0041e0a:	80a3      	strh	r3, [r4, #4]
d0041e0c:	4b78      	ldr	r3, [pc, #480]	; (d0041ff0 <render3Dstuff+0x504>)
d0041e0e:	701a      	strb	r2, [r3, #0]
d0041e10:	2a00      	cmp	r2, #0
d0041e12:	f000 80e3 	beq.w	d0041fdc <render3Dstuff+0x4f0>
d0041e16:	f102 3eff 	add.w	lr, r2, #4294967295	; 0xffffffff
d0041e1a:	f8df 91f0 	ldr.w	r9, [pc, #496]	; d004200c <render3Dstuff+0x520>
d0041e1e:	f04f 0c01 	mov.w	ip, #1
d0041e22:	ad04      	add	r5, sp, #16
d0041e24:	fa5f fe8e 	uxtb.w	lr, lr
d0041e28:	464f      	mov	r7, r9
d0041e2a:	f10e 0802 	add.w	r8, lr, #2
d0041e2e:	fa5f f68c 	uxtb.w	r6, ip
d0041e32:	42b2      	cmp	r2, r6
d0041e34:	d920      	bls.n	d0041e78 <render3Dstuff+0x38c>
d0041e36:	ebae 0606 	sub.w	r6, lr, r6
d0041e3a:	463b      	mov	r3, r7
d0041e3c:	f1a7 0408 	sub.w	r4, r7, #8
d0041e40:	fa5c f686 	uxtab	r6, ip, r6
d0041e44:	eb09 06c6 	add.w	r6, r9, r6, lsl #3
d0041e48:	ed17 7a02 	vldr	s14, [r7, #-8]
d0041e4c:	edd3 7a00 	vldr	s15, [r3]
d0041e50:	eeb4 7ae7 	vcmpe.f32	s14, s15
d0041e54:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041e58:	d50b      	bpl.n	d0041e72 <render3Dstuff+0x386>
d0041e5a:	e894 0003 	ldmia.w	r4, {r0, r1}
d0041e5e:	e885 0003 	stmia.w	r5, {r0, r1}
d0041e62:	e893 0003 	ldmia.w	r3, {r0, r1}
d0041e66:	e884 0003 	stmia.w	r4, {r0, r1}
d0041e6a:	e895 0003 	ldmia.w	r5, {r0, r1}
d0041e6e:	e883 0003 	stmia.w	r3, {r0, r1}
d0041e72:	3308      	adds	r3, #8
d0041e74:	429e      	cmp	r6, r3
d0041e76:	d1e7      	bne.n	d0041e48 <render3Dstuff+0x35c>
d0041e78:	f10c 0c01 	add.w	ip, ip, #1
d0041e7c:	3708      	adds	r7, #8
d0041e7e:	45e0      	cmp	r8, ip
d0041e80:	d1d5      	bne.n	d0041e2e <render3Dstuff+0x342>
d0041e82:	2300      	movs	r3, #0
d0041e84:	4c59      	ldr	r4, [pc, #356]	; (d0041fec <render3Dstuff+0x500>)
d0041e86:	ed9f 8a5b 	vldr	s16, [pc, #364]	; d0041ff4 <render3Dstuff+0x508>
d0041e8a:	4699      	mov	r9, r3
d0041e8c:	4e5a      	ldr	r6, [pc, #360]	; (d0041ff8 <render3Dstuff+0x50c>)
d0041e8e:	9401      	str	r4, [sp, #4]
d0041e90:	e04a      	b.n	d0041f28 <render3Dstuff+0x43c>
d0041e92:	4b5a      	ldr	r3, [pc, #360]	; (d0041ffc <render3Dstuff+0x510>)
d0041e94:	eb07 0447 	add.w	r4, r7, r7, lsl #1
d0041e98:	2104      	movs	r1, #4
d0041e9a:	eb03 1404 	add.w	r4, r3, r4, lsl #4
d0041e9e:	4b58      	ldr	r3, [pc, #352]	; (d0042000 <render3Dstuff+0x514>)
d0041ea0:	f894 0024 	ldrb.w	r0, [r4, #36]	; 0x24
d0041ea4:	f894 2028 	ldrb.w	r2, [r4, #40]	; 0x28
d0041ea8:	eb03 1540 	add.w	r5, r3, r0, lsl #5
d0041eac:	b2c3      	uxtb	r3, r0
d0041eae:	76ea      	strb	r2, [r5, #27]
d0041eb0:	0140      	lsls	r0, r0, #5
d0041eb2:	8b22      	ldrh	r2, [r4, #24]
d0041eb4:	9002      	str	r0, [sp, #8]
d0041eb6:	82aa      	strh	r2, [r5, #20]
d0041eb8:	8b62      	ldrh	r2, [r4, #26]
d0041eba:	82ea      	strh	r2, [r5, #22]
d0041ebc:	8be2      	ldrh	r2, [r4, #30]
d0041ebe:	b292      	uxth	r2, r2
d0041ec0:	832a      	strh	r2, [r5, #24]
d0041ec2:	76a9      	strb	r1, [r5, #26]
d0041ec4:	f894 202c 	ldrb.w	r2, [r4, #44]	; 0x2c
d0041ec8:	b2d2      	uxtb	r2, r2
d0041eca:	712a      	strb	r2, [r5, #4]
d0041ecc:	f894 202d 	ldrb.w	r2, [r4, #45]	; 0x2d
d0041ed0:	b2d2      	uxtb	r2, r2
d0041ed2:	716a      	strb	r2, [r5, #5]
d0041ed4:	f894 202e 	ldrb.w	r2, [r4, #46]	; 0x2e
d0041ed8:	b2d2      	uxtb	r2, r2
d0041eda:	71aa      	strb	r2, [r5, #6]
d0041edc:	edd4 7a02 	vldr	s15, [r4, #8]
d0041ee0:	eef4 7ac8 	vcmpe.f32	s15, s16
d0041ee4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041ee8:	f100 8092 	bmi.w	d0042010 <render3Dstuff+0x524>
d0041eec:	4a44      	ldr	r2, [pc, #272]	; (d0042000 <render3Dstuff+0x514>)
d0041eee:	eb02 1343 	add.w	r3, r2, r3, lsl #5
d0041ef2:	7b31      	ldrb	r1, [r6, #12]
d0041ef4:	4618      	mov	r0, r3
d0041ef6:	7b73      	ldrb	r3, [r6, #13]
d0041ef8:	7bb2      	ldrb	r2, [r6, #14]
d0041efa:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0041efe:	7bf3      	ldrb	r3, [r6, #15]
d0041f00:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0041f04:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0041f08:	685b      	ldr	r3, [r3, #4]
d0041f0a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0041f0c:	4798      	blx	r3
d0041f0e:	4a3c      	ldr	r2, [pc, #240]	; (d0042000 <render3Dstuff+0x514>)
d0041f10:	9b02      	ldr	r3, [sp, #8]
d0041f12:	2100      	movs	r1, #0
d0041f14:	4413      	add	r3, r2
d0041f16:	4a36      	ldr	r2, [pc, #216]	; (d0041ff0 <render3Dstuff+0x504>)
d0041f18:	7812      	ldrb	r2, [r2, #0]
d0041f1a:	7119      	strb	r1, [r3, #4]
d0041f1c:	f109 0901 	add.w	r9, r9, #1
d0041f20:	fa5f f389 	uxtb.w	r3, r9
d0041f24:	4293      	cmp	r3, r2
d0041f26:	d259      	bcs.n	d0041fdc <render3Dstuff+0x4f0>
d0041f28:	9901      	ldr	r1, [sp, #4]
d0041f2a:	eb01 03c3 	add.w	r3, r1, r3, lsl #3
d0041f2e:	f893 8004 	ldrb.w	r8, [r3, #4]
d0041f32:	795f      	ldrb	r7, [r3, #5]
d0041f34:	f1b8 0f00 	cmp.w	r8, #0
d0041f38:	d0ab      	beq.n	d0041e92 <render3Dstuff+0x3a6>
d0041f3a:	f1b8 0f01 	cmp.w	r8, #1
d0041f3e:	f000 80dd 	beq.w	d00420fc <render3Dstuff+0x610>
d0041f42:	f1b8 0f02 	cmp.w	r8, #2
d0041f46:	f000 80fd 	beq.w	d0042144 <render3Dstuff+0x658>
d0041f4a:	f1b8 0f03 	cmp.w	r8, #3
d0041f4e:	d1e5      	bne.n	d0041f1c <render3Dstuff+0x430>
d0041f50:	4b25      	ldr	r3, [pc, #148]	; (d0041fe8 <render3Dstuff+0x4fc>)
d0041f52:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d0041f56:	492b      	ldr	r1, [pc, #172]	; (d0042004 <render3Dstuff+0x518>)
d0041f58:	2204      	movs	r2, #4
d0041f5a:	eb03 1407 	add.w	r4, r3, r7, lsl #4
d0041f5e:	f894 302a 	ldrb.w	r3, [r4, #42]	; 0x2a
d0041f62:	b2db      	uxtb	r3, r3
d0041f64:	76cb      	strb	r3, [r1, #27]
d0041f66:	8b23      	ldrh	r3, [r4, #24]
d0041f68:	828b      	strh	r3, [r1, #20]
d0041f6a:	8b63      	ldrh	r3, [r4, #26]
d0041f6c:	82cb      	strh	r3, [r1, #22]
d0041f6e:	768a      	strb	r2, [r1, #26]
d0041f70:	8be3      	ldrh	r3, [r4, #30]
d0041f72:	b29b      	uxth	r3, r3
d0041f74:	830b      	strh	r3, [r1, #24]
d0041f76:	edd4 7a02 	vldr	s15, [r4, #8]
d0041f7a:	eef4 7ac8 	vcmpe.f32	s15, s16
d0041f7e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041f82:	d512      	bpl.n	d0041faa <render3Dstuff+0x4be>
d0041f84:	7b32      	ldrb	r2, [r6, #12]
d0041f86:	4608      	mov	r0, r1
d0041f88:	7b71      	ldrb	r1, [r6, #13]
d0041f8a:	7bb3      	ldrb	r3, [r6, #14]
d0041f8c:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d0041f90:	7bf7      	ldrb	r7, [r6, #15]
d0041f92:	4d1d      	ldr	r5, [pc, #116]	; (d0042008 <render3Dstuff+0x51c>)
d0041f94:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d0041f98:	4629      	mov	r1, r5
d0041f9a:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d0041f9e:	685b      	ldr	r3, [r3, #4]
d0041fa0:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d0041fa2:	4798      	blx	r3
d0041fa4:	2802      	cmp	r0, #2
d0041fa6:	f000 80e6 	beq.w	d0042176 <render3Dstuff+0x68a>
d0041faa:	7b33      	ldrb	r3, [r6, #12]
d0041fac:	f109 0901 	add.w	r9, r9, #1
d0041fb0:	7b72      	ldrb	r2, [r6, #13]
d0041fb2:	4814      	ldr	r0, [pc, #80]	; (d0042004 <render3Dstuff+0x518>)
d0041fb4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041fb8:	7bb2      	ldrb	r2, [r6, #14]
d0041fba:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041fbe:	7bf2      	ldrb	r2, [r6, #15]
d0041fc0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041fc4:	685b      	ldr	r3, [r3, #4]
d0041fc6:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0041fc8:	4798      	blx	r3
d0041fca:	2300      	movs	r3, #0
d0041fcc:	4a08      	ldr	r2, [pc, #32]	; (d0041ff0 <render3Dstuff+0x504>)
d0041fce:	490d      	ldr	r1, [pc, #52]	; (d0042004 <render3Dstuff+0x518>)
d0041fd0:	7812      	ldrb	r2, [r2, #0]
d0041fd2:	710b      	strb	r3, [r1, #4]
d0041fd4:	fa5f f389 	uxtb.w	r3, r9
d0041fd8:	4293      	cmp	r3, r2
d0041fda:	d3a5      	bcc.n	d0041f28 <render3Dstuff+0x43c>
d0041fdc:	b007      	add	sp, #28
d0041fde:	ecbd 8b02 	vpop	{d8}
d0041fe2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0041fe6:	bf00      	nop
d0041fe8:	d0045660 	.word	0xd0045660
d0041fec:	d0046464 	.word	0xd0046464
d0041ff0:	d0044b71 	.word	0xd0044b71
d0041ff4:	43520000 	.word	0x43520000
d0041ff8:	2001f000 	.word	0x2001f000
d0041ffc:	d00458e0 	.word	0xd00458e0
d0042000:	d0045860 	.word	0xd0045860
d0042004:	d0045e80 	.word	0xd0045e80
d0042008:	d00457e0 	.word	0xd00457e0
d004200c:	d004646c 	.word	0xd004646c
d0042010:	7b31      	ldrb	r1, [r6, #12]
d0042012:	4a81      	ldr	r2, [pc, #516]	; (d0042218 <render3Dstuff+0x72c>)
d0042014:	f896 c00d 	ldrb.w	ip, [r6, #13]
d0042018:	eb02 1343 	add.w	r3, r2, r3, lsl #5
d004201c:	7bb2      	ldrb	r2, [r6, #14]
d004201e:	ea41 2e0c 	orr.w	lr, r1, ip, lsl #8
d0042022:	f896 c00f 	ldrb.w	ip, [r6, #15]
d0042026:	4618      	mov	r0, r3
d0042028:	497c      	ldr	r1, [pc, #496]	; (d004221c <render3Dstuff+0x730>)
d004202a:	ea4e 4202 	orr.w	r2, lr, r2, lsl #16
d004202e:	9303      	str	r3, [sp, #12]
d0042030:	ea42 620c 	orr.w	r2, r2, ip, lsl #24
d0042034:	6852      	ldr	r2, [r2, #4]
d0042036:	6a92      	ldr	r2, [r2, #40]	; 0x28
d0042038:	4790      	blx	r2
d004203a:	2802      	cmp	r0, #2
d004203c:	9b03      	ldr	r3, [sp, #12]
d004203e:	f47f af58 	bne.w	d0041ef2 <render3Dstuff+0x406>
d0042042:	7c32      	ldrb	r2, [r6, #16]
d0042044:	2006      	movs	r0, #6
d0042046:	f896 c011 	ldrb.w	ip, [r6, #17]
d004204a:	ea42 220c 	orr.w	r2, r2, ip, lsl #8
d004204e:	f896 c012 	ldrb.w	ip, [r6, #18]
d0042052:	ea42 420c 	orr.w	r2, r2, ip, lsl #16
d0042056:	f896 c013 	ldrb.w	ip, [r6, #19]
d004205a:	ea42 620c 	orr.w	r2, r2, ip, lsl #24
d004205e:	6892      	ldr	r2, [r2, #8]
d0042060:	6892      	ldr	r2, [r2, #8]
d0042062:	4790      	blx	r2
d0042064:	496d      	ldr	r1, [pc, #436]	; (d004221c <render3Dstuff+0x730>)
d0042066:	4a6e      	ldr	r2, [pc, #440]	; (d0042220 <render3Dstuff+0x734>)
d0042068:	8a88      	ldrh	r0, [r1, #20]
d004206a:	7c31      	ldrb	r1, [r6, #16]
d004206c:	3020      	adds	r0, #32
d004206e:	f896 e011 	ldrb.w	lr, [r6, #17]
d0042072:	b200      	sxth	r0, r0
d0042074:	ea41 2c0e 	orr.w	ip, r1, lr, lsl #8
d0042078:	7cb1      	ldrb	r1, [r6, #18]
d004207a:	38f0      	subs	r0, #240	; 0xf0
d004207c:	ea4c 4101 	orr.w	r1, ip, r1, lsl #16
d0042080:	ebc0 10c0 	rsb	r0, r0, r0, lsl #7
d0042084:	fb82 3200 	smull	r3, r2, r2, r0
d0042088:	ea4f 7ce0 	mov.w	ip, r0, asr #31
d004208c:	f06f 037e 	mvn.w	r3, #126	; 0x7e
d0042090:	4402      	add	r2, r0
d0042092:	7cf0      	ldrb	r0, [r6, #19]
d0042094:	ebcc 12e2 	rsb	r2, ip, r2, asr #7
d0042098:	ea41 6c00 	orr.w	ip, r1, r0, lsl #24
d004209c:	2006      	movs	r0, #6
d004209e:	b211      	sxth	r1, r2
d00420a0:	f8dc 2008 	ldr.w	r2, [ip, #8]
d00420a4:	297f      	cmp	r1, #127	; 0x7f
d00420a6:	6992      	ldr	r2, [r2, #24]
d00420a8:	bfa8      	it	ge
d00420aa:	217f      	movge	r1, #127	; 0x7f
d00420ac:	4299      	cmp	r1, r3
d00420ae:	bfb8      	it	lt
d00420b0:	4619      	movlt	r1, r3
d00420b2:	b249      	sxtb	r1, r1
d00420b4:	4790      	blx	r2
d00420b6:	f896 c010 	ldrb.w	ip, [r6, #16]
d00420ba:	7c72      	ldrb	r2, [r6, #17]
d00420bc:	2006      	movs	r0, #6
d00420be:	7cb1      	ldrb	r1, [r6, #18]
d00420c0:	ea4c 2c02 	orr.w	ip, ip, r2, lsl #8
d00420c4:	7cf2      	ldrb	r2, [r6, #19]
d00420c6:	ea4c 4101 	orr.w	r1, ip, r1, lsl #16
d00420ca:	ea41 6202 	orr.w	r2, r1, r2, lsl #24
d00420ce:	6892      	ldr	r2, [r2, #8]
d00420d0:	6852      	ldr	r2, [r2, #4]
d00420d2:	4790      	blx	r2
d00420d4:	f06f 0004 	mvn.w	r0, #4
d00420d8:	f7ff f856 	bl	d0041188 <UpdateHealth>
d00420dc:	2103      	movs	r1, #3
d00420de:	4640      	mov	r0, r8
d00420e0:	f884 8025 	strb.w	r8, [r4, #37]	; 0x25
d00420e4:	f000 fb52 	bl	d004278c <sbx_rng_range>
d00420e8:	4601      	mov	r1, r0
d00420ea:	4638      	mov	r0, r7
d00420ec:	f7ff f926 	bl	d004133c <SpawnAstroid3D>
d00420f0:	2101      	movs	r1, #1
d00420f2:	2207      	movs	r2, #7
d00420f4:	9b03      	ldr	r3, [sp, #12]
d00420f6:	7129      	strb	r1, [r5, #4]
d00420f8:	716a      	strb	r2, [r5, #5]
d00420fa:	e6fa      	b.n	d0041ef2 <render3Dstuff+0x406>
d00420fc:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d0042100:	4848      	ldr	r0, [pc, #288]	; (d0042224 <render3Dstuff+0x738>)
d0042102:	2204      	movs	r2, #4
d0042104:	2100      	movs	r1, #0
d0042106:	eb0a 1707 	add.w	r7, sl, r7, lsl #4
d004210a:	f897 302a 	ldrb.w	r3, [r7, #42]	; 0x2a
d004210e:	b2db      	uxtb	r3, r3
d0042110:	76c3      	strb	r3, [r0, #27]
d0042112:	8b3b      	ldrh	r3, [r7, #24]
d0042114:	8283      	strh	r3, [r0, #20]
d0042116:	8b7b      	ldrh	r3, [r7, #26]
d0042118:	82c3      	strh	r3, [r0, #22]
d004211a:	8bfb      	ldrh	r3, [r7, #30]
d004211c:	b29b      	uxth	r3, r3
d004211e:	8303      	strh	r3, [r0, #24]
d0042120:	7682      	strb	r2, [r0, #26]
d0042122:	7101      	strb	r1, [r0, #4]
d0042124:	7b31      	ldrb	r1, [r6, #12]
d0042126:	7b73      	ldrb	r3, [r6, #13]
d0042128:	7bb2      	ldrb	r2, [r6, #14]
d004212a:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d004212e:	7bf3      	ldrb	r3, [r6, #15]
d0042130:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0042134:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0042138:	685b      	ldr	r3, [r3, #4]
d004213a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d004213c:	4798      	blx	r3
d004213e:	4b3a      	ldr	r3, [pc, #232]	; (d0042228 <render3Dstuff+0x73c>)
d0042140:	781a      	ldrb	r2, [r3, #0]
d0042142:	e6eb      	b.n	d0041f1c <render3Dstuff+0x430>
d0042144:	232c      	movs	r3, #44	; 0x2c
d0042146:	fb03 b707 	mla	r7, r3, r7, fp
d004214a:	f897 3022 	ldrb.w	r3, [r7, #34]	; 0x22
d004214e:	2b00      	cmp	r3, #0
d0042150:	f43f aee4 	beq.w	d0041f1c <render3Dstuff+0x430>
d0042154:	8b3a      	ldrh	r2, [r7, #24]
d0042156:	2304      	movs	r3, #4
d0042158:	4834      	ldr	r0, [pc, #208]	; (d004222c <render3Dstuff+0x740>)
d004215a:	8282      	strh	r2, [r0, #20]
d004215c:	8b7a      	ldrh	r2, [r7, #26]
d004215e:	82c2      	strh	r2, [r0, #22]
d0042160:	7683      	strb	r3, [r0, #26]
d0042162:	8bfb      	ldrh	r3, [r7, #30]
d0042164:	b29b      	uxth	r3, r3
d0042166:	8303      	strh	r3, [r0, #24]
d0042168:	f897 3020 	ldrb.w	r3, [r7, #32]
d004216c:	76c3      	strb	r3, [r0, #27]
d004216e:	e7d9      	b.n	d0042124 <render3Dstuff+0x638>
d0042170:	f003 02ff 	and.w	r2, r3, #255	; 0xff
d0042174:	e4cd      	b.n	d0041b12 <render3Dstuff+0x26>
d0042176:	7c33      	ldrb	r3, [r6, #16]
d0042178:	2006      	movs	r0, #6
d004217a:	7c72      	ldrb	r2, [r6, #17]
d004217c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042180:	7cb2      	ldrb	r2, [r6, #18]
d0042182:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0042186:	7cf2      	ldrb	r2, [r6, #19]
d0042188:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004218c:	689b      	ldr	r3, [r3, #8]
d004218e:	689b      	ldr	r3, [r3, #8]
d0042190:	4798      	blx	r3
d0042192:	8aab      	ldrh	r3, [r5, #20]
d0042194:	4822      	ldr	r0, [pc, #136]	; (d0042220 <render3Dstuff+0x734>)
d0042196:	f06f 027e 	mvn.w	r2, #126	; 0x7e
d004219a:	3320      	adds	r3, #32
d004219c:	7c31      	ldrb	r1, [r6, #16]
d004219e:	7c75      	ldrb	r5, [r6, #17]
d00421a0:	b21b      	sxth	r3, r3
d00421a2:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
d00421a6:	7cb5      	ldrb	r5, [r6, #18]
d00421a8:	3bf0      	subs	r3, #240	; 0xf0
d00421aa:	ea41 4505 	orr.w	r5, r1, r5, lsl #16
d00421ae:	ebc3 13c3 	rsb	r3, r3, r3, lsl #7
d00421b2:	fb80 7003 	smull	r7, r0, r0, r3
d00421b6:	17d9      	asrs	r1, r3, #31
d00421b8:	4403      	add	r3, r0
d00421ba:	7cf0      	ldrb	r0, [r6, #19]
d00421bc:	ebc1 11e3 	rsb	r1, r1, r3, asr #7
d00421c0:	ea45 6300 	orr.w	r3, r5, r0, lsl #24
d00421c4:	2006      	movs	r0, #6
d00421c6:	b209      	sxth	r1, r1
d00421c8:	689b      	ldr	r3, [r3, #8]
d00421ca:	297f      	cmp	r1, #127	; 0x7f
d00421cc:	699b      	ldr	r3, [r3, #24]
d00421ce:	bfa8      	it	ge
d00421d0:	217f      	movge	r1, #127	; 0x7f
d00421d2:	4291      	cmp	r1, r2
d00421d4:	bfb8      	it	lt
d00421d6:	4611      	movlt	r1, r2
d00421d8:	b249      	sxtb	r1, r1
d00421da:	4798      	blx	r3
d00421dc:	7c33      	ldrb	r3, [r6, #16]
d00421de:	7c72      	ldrb	r2, [r6, #17]
d00421e0:	2006      	movs	r0, #6
d00421e2:	7cb1      	ldrb	r1, [r6, #18]
d00421e4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00421e8:	7cf2      	ldrb	r2, [r6, #19]
d00421ea:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00421ee:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00421f2:	689b      	ldr	r3, [r3, #8]
d00421f4:	685b      	ldr	r3, [r3, #4]
d00421f6:	4798      	blx	r3
d00421f8:	2307      	movs	r3, #7
d00421fa:	490d      	ldr	r1, [pc, #52]	; (d0042230 <render3Dstuff+0x744>)
d00421fc:	2201      	movs	r2, #1
d00421fe:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
d0042202:	710a      	strb	r2, [r1, #4]
d0042204:	714b      	strb	r3, [r1, #5]
d0042206:	f7fe ffd9 	bl	d00411bc <AddScore>
d004220a:	200f      	movs	r0, #15
d004220c:	f7fe ffbc 	bl	d0041188 <UpdateHealth>
d0042210:	2300      	movs	r3, #0
d0042212:	f884 3025 	strb.w	r3, [r4, #37]	; 0x25
d0042216:	e6c8      	b.n	d0041faa <render3Dstuff+0x4be>
d0042218:	d0045860 	.word	0xd0045860
d004221c:	d00457e0 	.word	0xd00457e0
d0042220:	88888889 	.word	0x88888889
d0042224:	d0046440 	.word	0xd0046440
d0042228:	d0044b71 	.word	0xd0044b71
d004222c:	d00467c0 	.word	0xd00467c0
d0042230:	d0045e80 	.word	0xd0045e80

d0042234 <drawPowerHealthBar>:
d0042234:	4b4b      	ldr	r3, [pc, #300]	; (d0042364 <drawPowerHealthBar+0x130>)
d0042236:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004223a:	781b      	ldrb	r3, [r3, #0]
d004223c:	b083      	sub	sp, #12
d004223e:	2b00      	cmp	r3, #0
d0042240:	d07c      	beq.n	d004233c <drawPowerHealthBar+0x108>
d0042242:	4b49      	ldr	r3, [pc, #292]	; (d0042368 <drawPowerHealthBar+0x134>)
d0042244:	f993 3000 	ldrsb.w	r3, [r3]
d0042248:	b29a      	uxth	r2, r3
d004224a:	2358      	movs	r3, #88	; 0x58
d004224c:	4847      	ldr	r0, [pc, #284]	; (d004236c <drawPowerHealthBar+0x138>)
d004224e:	2101      	movs	r1, #1
d0042250:	fb03 f302 	mul.w	r3, r3, r2
d0042254:	f8df b118 	ldr.w	fp, [pc, #280]	; d0042370 <drawPowerHealthBar+0x13c>
d0042258:	fba0 2303 	umull	r2, r3, r0, r3
d004225c:	f88b 101b 	strb.w	r1, [fp, #27]
d0042260:	f3c3 2207 	ubfx	r2, r3, #8, #8
d0042264:	f413 4f7f 	tst.w	r3, #65280	; 0xff00
d0042268:	f3c3 1542 	ubfx	r5, r3, #5, #3
d004226c:	9201      	str	r2, [sp, #4]
d004226e:	d074      	beq.n	d004235a <drawPowerHealthBar+0x126>
d0042270:	1e53      	subs	r3, r2, #1
d0042272:	f105 07d4 	add.w	r7, r5, #212	; 0xd4
d0042276:	f8df a0fc 	ldr.w	sl, [pc, #252]	; d0042374 <drawPowerHealthBar+0x140>
d004227a:	f44f 7693 	mov.w	r6, #294	; 0x126
d004227e:	b2db      	uxtb	r3, r3
d0042280:	46b9      	mov	r9, r7
d0042282:	46d8      	mov	r8, fp
d0042284:	eb05 05c3 	add.w	r5, r5, r3, lsl #3
d0042288:	35dc      	adds	r5, #220	; 0xdc
d004228a:	fa0f f389 	sxth.w	r3, r9
d004228e:	f109 0908 	add.w	r9, r9, #8
d0042292:	4640      	mov	r0, r8
d0042294:	f8ab 3014 	strh.w	r3, [fp, #20]
d0042298:	fa1f f989 	uxth.w	r9, r9
d004229c:	f8ab 6016 	strh.w	r6, [fp, #22]
d00422a0:	f89a 400c 	ldrb.w	r4, [sl, #12]
d00422a4:	f89a 100d 	ldrb.w	r1, [sl, #13]
d00422a8:	f89a 200e 	ldrb.w	r2, [sl, #14]
d00422ac:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d00422b0:	f89a 300f 	ldrb.w	r3, [sl, #15]
d00422b4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00422b8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00422bc:	685b      	ldr	r3, [r3, #4]
d00422be:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00422c0:	4798      	blx	r3
d00422c2:	454d      	cmp	r5, r9
d00422c4:	d1e1      	bne.n	d004228a <drawPowerHealthBar+0x56>
d00422c6:	f44f 7493 	mov.w	r4, #294	; 0x126
d00422ca:	2200      	movs	r2, #0
d00422cc:	23d4      	movs	r3, #212	; 0xd4
d00422ce:	4828      	ldr	r0, [pc, #160]	; (d0042370 <drawPowerHealthBar+0x13c>)
d00422d0:	f88b 201b 	strb.w	r2, [fp, #27]
d00422d4:	f8ab 3014 	strh.w	r3, [fp, #20]
d00422d8:	f8ab 4016 	strh.w	r4, [fp, #22]
d00422dc:	f89a 300c 	ldrb.w	r3, [sl, #12]
d00422e0:	f89a 200d 	ldrb.w	r2, [sl, #13]
d00422e4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00422e8:	f89a 200e 	ldrb.w	r2, [sl, #14]
d00422ec:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00422f0:	f89a 200f 	ldrb.w	r2, [sl, #15]
d00422f4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00422f8:	685b      	ldr	r3, [r3, #4]
d00422fa:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00422fc:	4798      	blx	r3
d00422fe:	9a01      	ldr	r2, [sp, #4]
d0042300:	2302      	movs	r3, #2
d0042302:	481b      	ldr	r0, [pc, #108]	; (d0042370 <drawPowerHealthBar+0x13c>)
d0042304:	eb07 07c2 	add.w	r7, r7, r2, lsl #3
d0042308:	f88b 301b 	strb.w	r3, [fp, #27]
d004230c:	f8ab 7014 	strh.w	r7, [fp, #20]
d0042310:	f8ab 4016 	strh.w	r4, [fp, #22]
d0042314:	f89a 300c 	ldrb.w	r3, [sl, #12]
d0042318:	f89a 200d 	ldrb.w	r2, [sl, #13]
d004231c:	f89a 100e 	ldrb.w	r1, [sl, #14]
d0042320:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042324:	f89a 200f 	ldrb.w	r2, [sl, #15]
d0042328:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004232c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042330:	685b      	ldr	r3, [r3, #4]
d0042332:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0042334:	b003      	add	sp, #12
d0042336:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004233a:	4718      	bx	r3
d004233c:	4a0a      	ldr	r2, [pc, #40]	; (d0042368 <drawPowerHealthBar+0x134>)
d004233e:	f992 3000 	ldrsb.w	r3, [r2]
d0042342:	4283      	cmp	r3, r0
d0042344:	da03      	bge.n	d004234e <drawPowerHealthBar+0x11a>
d0042346:	3301      	adds	r3, #1
d0042348:	b25b      	sxtb	r3, r3
d004234a:	7013      	strb	r3, [r2, #0]
d004234c:	e77c      	b.n	d0042248 <drawPowerHealthBar+0x14>
d004234e:	f77f af7b 	ble.w	d0042248 <drawPowerHealthBar+0x14>
d0042352:	3b01      	subs	r3, #1
d0042354:	b25b      	sxtb	r3, r3
d0042356:	7013      	strb	r3, [r2, #0]
d0042358:	e776      	b.n	d0042248 <drawPowerHealthBar+0x14>
d004235a:	f105 07d4 	add.w	r7, r5, #212	; 0xd4
d004235e:	f8df a014 	ldr.w	sl, [pc, #20]	; d0042374 <drawPowerHealthBar+0x140>
d0042362:	e7b0      	b.n	d00422c6 <drawPowerHealthBar+0x92>
d0042364:	d0044b72 	.word	0xd0044b72
d0042368:	d0046740 	.word	0xd0046740
d004236c:	51eb851f 	.word	0x51eb851f
d0042370:	d0046420 	.word	0xd0046420
d0042374:	2001f000 	.word	0x2001f000

d0042378 <drawPowerShieldBar>:
d0042378:	4b4c      	ldr	r3, [pc, #304]	; (d00424ac <drawPowerShieldBar+0x134>)
d004237a:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004237e:	781b      	ldrb	r3, [r3, #0]
d0042380:	b083      	sub	sp, #12
d0042382:	2b00      	cmp	r3, #0
d0042384:	d07e      	beq.n	d0042484 <drawPowerShieldBar+0x10c>
d0042386:	4b4a      	ldr	r3, [pc, #296]	; (d00424b0 <drawPowerShieldBar+0x138>)
d0042388:	f993 3000 	ldrsb.w	r3, [r3]
d004238c:	b29a      	uxth	r2, r3
d004238e:	2358      	movs	r3, #88	; 0x58
d0042390:	4848      	ldr	r0, [pc, #288]	; (d00424b4 <drawPowerShieldBar+0x13c>)
d0042392:	2104      	movs	r1, #4
d0042394:	fb03 f302 	mul.w	r3, r3, r2
d0042398:	f8df b11c 	ldr.w	fp, [pc, #284]	; d00424b8 <drawPowerShieldBar+0x140>
d004239c:	fba0 2303 	umull	r2, r3, r0, r3
d00423a0:	f88b 101b 	strb.w	r1, [fp, #27]
d00423a4:	f3c3 2207 	ubfx	r2, r3, #8, #8
d00423a8:	f413 4f7f 	tst.w	r3, #65280	; 0xff00
d00423ac:	f3c3 1542 	ubfx	r5, r3, #5, #3
d00423b0:	9201      	str	r2, [sp, #4]
d00423b2:	d076      	beq.n	d00424a2 <drawPowerShieldBar+0x12a>
d00423b4:	1e53      	subs	r3, r2, #1
d00423b6:	f505 77b7 	add.w	r7, r5, #366	; 0x16e
d00423ba:	f8df a100 	ldr.w	sl, [pc, #256]	; d00424bc <drawPowerShieldBar+0x144>
d00423be:	f44f 7693 	mov.w	r6, #294	; 0x126
d00423c2:	b2db      	uxtb	r3, r3
d00423c4:	46b9      	mov	r9, r7
d00423c6:	46d8      	mov	r8, fp
d00423c8:	eb05 05c3 	add.w	r5, r5, r3, lsl #3
d00423cc:	f505 75bb 	add.w	r5, r5, #374	; 0x176
d00423d0:	fa0f f389 	sxth.w	r3, r9
d00423d4:	f109 0908 	add.w	r9, r9, #8
d00423d8:	4640      	mov	r0, r8
d00423da:	f8ab 3014 	strh.w	r3, [fp, #20]
d00423de:	fa1f f989 	uxth.w	r9, r9
d00423e2:	f8ab 6016 	strh.w	r6, [fp, #22]
d00423e6:	f89a 400c 	ldrb.w	r4, [sl, #12]
d00423ea:	f89a 100d 	ldrb.w	r1, [sl, #13]
d00423ee:	f89a 200e 	ldrb.w	r2, [sl, #14]
d00423f2:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d00423f6:	f89a 300f 	ldrb.w	r3, [sl, #15]
d00423fa:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00423fe:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0042402:	685b      	ldr	r3, [r3, #4]
d0042404:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0042406:	4798      	blx	r3
d0042408:	454d      	cmp	r5, r9
d004240a:	d1e1      	bne.n	d00423d0 <drawPowerShieldBar+0x58>
d004240c:	f44f 7493 	mov.w	r4, #294	; 0x126
d0042410:	2203      	movs	r2, #3
d0042412:	f44f 73b7 	mov.w	r3, #366	; 0x16e
d0042416:	4828      	ldr	r0, [pc, #160]	; (d00424b8 <drawPowerShieldBar+0x140>)
d0042418:	f88b 201b 	strb.w	r2, [fp, #27]
d004241c:	f8ab 3014 	strh.w	r3, [fp, #20]
d0042420:	f8ab 4016 	strh.w	r4, [fp, #22]
d0042424:	f89a 300c 	ldrb.w	r3, [sl, #12]
d0042428:	f89a 200d 	ldrb.w	r2, [sl, #13]
d004242c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042430:	f89a 200e 	ldrb.w	r2, [sl, #14]
d0042434:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0042438:	f89a 200f 	ldrb.w	r2, [sl, #15]
d004243c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042440:	685b      	ldr	r3, [r3, #4]
d0042442:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0042444:	4798      	blx	r3
d0042446:	9a01      	ldr	r2, [sp, #4]
d0042448:	2305      	movs	r3, #5
d004244a:	481b      	ldr	r0, [pc, #108]	; (d00424b8 <drawPowerShieldBar+0x140>)
d004244c:	eb07 07c2 	add.w	r7, r7, r2, lsl #3
d0042450:	f88b 301b 	strb.w	r3, [fp, #27]
d0042454:	f8ab 7014 	strh.w	r7, [fp, #20]
d0042458:	f8ab 4016 	strh.w	r4, [fp, #22]
d004245c:	f89a 300c 	ldrb.w	r3, [sl, #12]
d0042460:	f89a 200d 	ldrb.w	r2, [sl, #13]
d0042464:	f89a 100e 	ldrb.w	r1, [sl, #14]
d0042468:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004246c:	f89a 200f 	ldrb.w	r2, [sl, #15]
d0042470:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042474:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042478:	685b      	ldr	r3, [r3, #4]
d004247a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d004247c:	b003      	add	sp, #12
d004247e:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0042482:	4718      	bx	r3
d0042484:	4a0a      	ldr	r2, [pc, #40]	; (d00424b0 <drawPowerShieldBar+0x138>)
d0042486:	f992 3000 	ldrsb.w	r3, [r2]
d004248a:	4283      	cmp	r3, r0
d004248c:	da03      	bge.n	d0042496 <drawPowerShieldBar+0x11e>
d004248e:	3301      	adds	r3, #1
d0042490:	b25b      	sxtb	r3, r3
d0042492:	7013      	strb	r3, [r2, #0]
d0042494:	e77a      	b.n	d004238c <drawPowerShieldBar+0x14>
d0042496:	f77f af79 	ble.w	d004238c <drawPowerShieldBar+0x14>
d004249a:	3b01      	subs	r3, #1
d004249c:	b25b      	sxtb	r3, r3
d004249e:	7013      	strb	r3, [r2, #0]
d00424a0:	e774      	b.n	d004238c <drawPowerShieldBar+0x14>
d00424a2:	f505 77b7 	add.w	r7, r5, #366	; 0x16e
d00424a6:	f8df a014 	ldr.w	sl, [pc, #20]	; d00424bc <drawPowerShieldBar+0x144>
d00424aa:	e7af      	b.n	d004240c <drawPowerShieldBar+0x94>
d00424ac:	d0044b72 	.word	0xd0044b72
d00424b0:	d0046460 	.word	0xd0046460
d00424b4:	51eb851f 	.word	0x51eb851f
d00424b8:	d0046420 	.word	0xd0046420
d00424bc:	2001f000 	.word	0x2001f000

d00424c0 <DrawHUD>:
d00424c0:	4ba4      	ldr	r3, [pc, #656]	; (d0042754 <DrawHUD+0x294>)
d00424c2:	49a5      	ldr	r1, [pc, #660]	; (d0042758 <DrawHUD+0x298>)
d00424c4:	681a      	ldr	r2, [r3, #0]
d00424c6:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00424ca:	4da4      	ldr	r5, [pc, #656]	; (d004275c <DrawHUD+0x29c>)
d00424cc:	4628      	mov	r0, r5
d00424ce:	f000 ff5f 	bl	d0043390 <siprintf>
d00424d2:	782b      	ldrb	r3, [r5, #0]
d00424d4:	b363      	cbz	r3, d0042530 <DrawHUD+0x70>
d00424d6:	260a      	movs	r6, #10
d00424d8:	46a9      	mov	r9, r5
d00424da:	f8df a284 	ldr.w	sl, [pc, #644]	; d0042760 <DrawHUD+0x2a0>
d00424de:	4637      	mov	r7, r6
d00424e0:	f8df 8298 	ldr.w	r8, [pc, #664]	; d004277c <DrawHUD+0x2bc>
d00424e4:	f1a3 0220 	sub.w	r2, r3, #32
d00424e8:	2b0a      	cmp	r3, #10
d00424ea:	489d      	ldr	r0, [pc, #628]	; (d0042760 <DrawHUD+0x2a0>)
d00424ec:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
d00424f0:	f000 811c 	beq.w	d004272c <DrawHUD+0x26c>
d00424f4:	b2db      	uxtb	r3, r3
d00424f6:	f8aa 6014 	strh.w	r6, [sl, #20]
d00424fa:	f8aa 7016 	strh.w	r7, [sl, #22]
d00424fe:	3610      	adds	r6, #16
d0042500:	f88a 301b 	strb.w	r3, [sl, #27]
d0042504:	f898 400c 	ldrb.w	r4, [r8, #12]
d0042508:	b236      	sxth	r6, r6
d004250a:	f898 100d 	ldrb.w	r1, [r8, #13]
d004250e:	f898 200e 	ldrb.w	r2, [r8, #14]
d0042512:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d0042516:	f898 300f 	ldrb.w	r3, [r8, #15]
d004251a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004251e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0042522:	685b      	ldr	r3, [r3, #4]
d0042524:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0042526:	4798      	blx	r3
d0042528:	f819 3f01 	ldrb.w	r3, [r9, #1]!
d004252c:	2b00      	cmp	r3, #0
d004252e:	d1d9      	bne.n	d00424e4 <DrawHUD+0x24>
d0042530:	4b8c      	ldr	r3, [pc, #560]	; (d0042764 <DrawHUD+0x2a4>)
d0042532:	498d      	ldr	r1, [pc, #564]	; (d0042768 <DrawHUD+0x2a8>)
d0042534:	781a      	ldrb	r2, [r3, #0]
d0042536:	4889      	ldr	r0, [pc, #548]	; (d004275c <DrawHUD+0x29c>)
d0042538:	f000 ff2a 	bl	d0043390 <siprintf>
d004253c:	782b      	ldrb	r3, [r5, #0]
d004253e:	b373      	cbz	r3, d004259e <DrawHUD+0xde>
d0042540:	f8df 9218 	ldr.w	r9, [pc, #536]	; d004275c <DrawHUD+0x29c>
d0042544:	f44f 76aa 	mov.w	r6, #340	; 0x154
d0042548:	270a      	movs	r7, #10
d004254a:	f8df a214 	ldr.w	sl, [pc, #532]	; d0042760 <DrawHUD+0x2a0>
d004254e:	f8df 822c 	ldr.w	r8, [pc, #556]	; d004277c <DrawHUD+0x2bc>
d0042552:	f1a3 0220 	sub.w	r2, r3, #32
d0042556:	2b0a      	cmp	r3, #10
d0042558:	4881      	ldr	r0, [pc, #516]	; (d0042760 <DrawHUD+0x2a0>)
d004255a:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
d004255e:	f000 80ee 	beq.w	d004273e <DrawHUD+0x27e>
d0042562:	b2db      	uxtb	r3, r3
d0042564:	f8aa 6014 	strh.w	r6, [sl, #20]
d0042568:	f8aa 7016 	strh.w	r7, [sl, #22]
d004256c:	3610      	adds	r6, #16
d004256e:	f88a 301b 	strb.w	r3, [sl, #27]
d0042572:	f898 400c 	ldrb.w	r4, [r8, #12]
d0042576:	b236      	sxth	r6, r6
d0042578:	f898 100d 	ldrb.w	r1, [r8, #13]
d004257c:	f898 200e 	ldrb.w	r2, [r8, #14]
d0042580:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d0042584:	f898 300f 	ldrb.w	r3, [r8, #15]
d0042588:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004258c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0042590:	685b      	ldr	r3, [r3, #4]
d0042592:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0042594:	4798      	blx	r3
d0042596:	f819 3f01 	ldrb.w	r3, [r9, #1]!
d004259a:	2b00      	cmp	r3, #0
d004259c:	d1d9      	bne.n	d0042552 <DrawHUD+0x92>
d004259e:	4b73      	ldr	r3, [pc, #460]	; (d004276c <DrawHUD+0x2ac>)
d00425a0:	4973      	ldr	r1, [pc, #460]	; (d0042770 <DrawHUD+0x2b0>)
d00425a2:	781a      	ldrb	r2, [r3, #0]
d00425a4:	486d      	ldr	r0, [pc, #436]	; (d004275c <DrawHUD+0x29c>)
d00425a6:	f000 fef3 	bl	d0043390 <siprintf>
d00425aa:	782b      	ldrb	r3, [r5, #0]
d00425ac:	b373      	cbz	r3, d004260c <DrawHUD+0x14c>
d00425ae:	f8df 91ac 	ldr.w	r9, [pc, #428]	; d004275c <DrawHUD+0x29c>
d00425b2:	260a      	movs	r6, #10
d00425b4:	f44f 7793 	mov.w	r7, #294	; 0x126
d00425b8:	f8df a1a4 	ldr.w	sl, [pc, #420]	; d0042760 <DrawHUD+0x2a0>
d00425bc:	f8df 81bc 	ldr.w	r8, [pc, #444]	; d004277c <DrawHUD+0x2bc>
d00425c0:	f1a3 0220 	sub.w	r2, r3, #32
d00425c4:	2b0a      	cmp	r3, #10
d00425c6:	4866      	ldr	r0, [pc, #408]	; (d0042760 <DrawHUD+0x2a0>)
d00425c8:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
d00425cc:	f000 80a5 	beq.w	d004271a <DrawHUD+0x25a>
d00425d0:	b2db      	uxtb	r3, r3
d00425d2:	f8aa 6014 	strh.w	r6, [sl, #20]
d00425d6:	f8aa 7016 	strh.w	r7, [sl, #22]
d00425da:	3610      	adds	r6, #16
d00425dc:	f88a 301b 	strb.w	r3, [sl, #27]
d00425e0:	f898 400c 	ldrb.w	r4, [r8, #12]
d00425e4:	b236      	sxth	r6, r6
d00425e6:	f898 100d 	ldrb.w	r1, [r8, #13]
d00425ea:	f898 200e 	ldrb.w	r2, [r8, #14]
d00425ee:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d00425f2:	f898 300f 	ldrb.w	r3, [r8, #15]
d00425f6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00425fa:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00425fe:	685b      	ldr	r3, [r3, #4]
d0042600:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0042602:	4798      	blx	r3
d0042604:	f819 3f01 	ldrb.w	r3, [r9, #1]!
d0042608:	2b00      	cmp	r3, #0
d004260a:	d1d9      	bne.n	d00425c0 <DrawHUD+0x100>
d004260c:	2203      	movs	r2, #3
d004260e:	4959      	ldr	r1, [pc, #356]	; (d0042774 <DrawHUD+0x2b4>)
d0042610:	4852      	ldr	r0, [pc, #328]	; (d004275c <DrawHUD+0x29c>)
d0042612:	26b4      	movs	r6, #180	; 0xb4
d0042614:	f000 fd2e 	bl	d0043074 <memcpy>
d0042618:	782b      	ldrb	r3, [r5, #0]
d004261a:	4d50      	ldr	r5, [pc, #320]	; (d004275c <DrawHUD+0x29c>)
d004261c:	f44f 7793 	mov.w	r7, #294	; 0x126
d0042620:	f8df a13c 	ldr.w	sl, [pc, #316]	; d0042760 <DrawHUD+0x2a0>
d0042624:	46a9      	mov	r9, r5
d0042626:	f8df 8154 	ldr.w	r8, [pc, #340]	; d004277c <DrawHUD+0x2bc>
d004262a:	f1a3 0220 	sub.w	r2, r3, #32
d004262e:	2b0a      	cmp	r3, #10
d0042630:	484b      	ldr	r0, [pc, #300]	; (d0042760 <DrawHUD+0x2a0>)
d0042632:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
d0042636:	d068      	beq.n	d004270a <DrawHUD+0x24a>
d0042638:	b2db      	uxtb	r3, r3
d004263a:	f8aa 6014 	strh.w	r6, [sl, #20]
d004263e:	f8aa 7016 	strh.w	r7, [sl, #22]
d0042642:	3610      	adds	r6, #16
d0042644:	f88a 301b 	strb.w	r3, [sl, #27]
d0042648:	f898 400c 	ldrb.w	r4, [r8, #12]
d004264c:	b236      	sxth	r6, r6
d004264e:	f898 100d 	ldrb.w	r1, [r8, #13]
d0042652:	f898 200e 	ldrb.w	r2, [r8, #14]
d0042656:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d004265a:	f898 300f 	ldrb.w	r3, [r8, #15]
d004265e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0042662:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0042666:	685b      	ldr	r3, [r3, #4]
d0042668:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d004266a:	4798      	blx	r3
d004266c:	f819 3f01 	ldrb.w	r3, [r9, #1]!
d0042670:	2b00      	cmp	r3, #0
d0042672:	d1da      	bne.n	d004262a <DrawHUD+0x16a>
d0042674:	2203      	movs	r2, #3
d0042676:	4940      	ldr	r1, [pc, #256]	; (d0042778 <DrawHUD+0x2b8>)
d0042678:	4838      	ldr	r0, [pc, #224]	; (d004275c <DrawHUD+0x29c>)
d004267a:	f44f 76a7 	mov.w	r6, #334	; 0x14e
d004267e:	f000 fcf9 	bl	d0043074 <memcpy>
d0042682:	f8df 80d8 	ldr.w	r8, [pc, #216]	; d004275c <DrawHUD+0x29c>
d0042686:	782b      	ldrb	r3, [r5, #0]
d0042688:	f44f 7593 	mov.w	r5, #294	; 0x126
d004268c:	f8df 90d0 	ldr.w	r9, [pc, #208]	; d0042760 <DrawHUD+0x2a0>
d0042690:	4f3a      	ldr	r7, [pc, #232]	; (d004277c <DrawHUD+0x2bc>)
d0042692:	f1a3 0220 	sub.w	r2, r3, #32
d0042696:	2b0a      	cmp	r3, #10
d0042698:	4831      	ldr	r0, [pc, #196]	; (d0042760 <DrawHUD+0x2a0>)
d004269a:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
d004269e:	d02b      	beq.n	d00426f8 <DrawHUD+0x238>
d00426a0:	b2db      	uxtb	r3, r3
d00426a2:	f8a9 6014 	strh.w	r6, [r9, #20]
d00426a6:	f8a9 5016 	strh.w	r5, [r9, #22]
d00426aa:	3610      	adds	r6, #16
d00426ac:	f889 301b 	strb.w	r3, [r9, #27]
d00426b0:	7b3c      	ldrb	r4, [r7, #12]
d00426b2:	b236      	sxth	r6, r6
d00426b4:	7b79      	ldrb	r1, [r7, #13]
d00426b6:	7bba      	ldrb	r2, [r7, #14]
d00426b8:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d00426bc:	7bfb      	ldrb	r3, [r7, #15]
d00426be:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00426c2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00426c6:	685b      	ldr	r3, [r3, #4]
d00426c8:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00426ca:	4798      	blx	r3
d00426cc:	f818 3f01 	ldrb.w	r3, [r8, #1]!
d00426d0:	2b00      	cmp	r3, #0
d00426d2:	d1de      	bne.n	d0042692 <DrawHUD+0x1d2>
d00426d4:	4a2a      	ldr	r2, [pc, #168]	; (d0042780 <DrawHUD+0x2c0>)
d00426d6:	7813      	ldrb	r3, [r2, #0]
d00426d8:	3301      	adds	r3, #1
d00426da:	b2db      	uxtb	r3, r3
d00426dc:	2b01      	cmp	r3, #1
d00426de:	bf88      	it	hi
d00426e0:	2300      	movhi	r3, #0
d00426e2:	7013      	strb	r3, [r2, #0]
d00426e4:	4b27      	ldr	r3, [pc, #156]	; (d0042784 <DrawHUD+0x2c4>)
d00426e6:	7818      	ldrb	r0, [r3, #0]
d00426e8:	f7ff fda4 	bl	d0042234 <drawPowerHealthBar>
d00426ec:	4b26      	ldr	r3, [pc, #152]	; (d0042788 <DrawHUD+0x2c8>)
d00426ee:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00426f2:	7818      	ldrb	r0, [r3, #0]
d00426f4:	f7ff be40 	b.w	d0042378 <drawPowerShieldBar>
d00426f8:	3510      	adds	r5, #16
d00426fa:	f818 3f01 	ldrb.w	r3, [r8, #1]!
d00426fe:	f44f 76a7 	mov.w	r6, #334	; 0x14e
d0042702:	b22d      	sxth	r5, r5
d0042704:	2b00      	cmp	r3, #0
d0042706:	d1c4      	bne.n	d0042692 <DrawHUD+0x1d2>
d0042708:	e7e4      	b.n	d00426d4 <DrawHUD+0x214>
d004270a:	3710      	adds	r7, #16
d004270c:	f819 3f01 	ldrb.w	r3, [r9, #1]!
d0042710:	26b4      	movs	r6, #180	; 0xb4
d0042712:	b23f      	sxth	r7, r7
d0042714:	2b00      	cmp	r3, #0
d0042716:	d188      	bne.n	d004262a <DrawHUD+0x16a>
d0042718:	e7ac      	b.n	d0042674 <DrawHUD+0x1b4>
d004271a:	3710      	adds	r7, #16
d004271c:	f819 3f01 	ldrb.w	r3, [r9, #1]!
d0042720:	260a      	movs	r6, #10
d0042722:	b23f      	sxth	r7, r7
d0042724:	2b00      	cmp	r3, #0
d0042726:	f47f af4b 	bne.w	d00425c0 <DrawHUD+0x100>
d004272a:	e76f      	b.n	d004260c <DrawHUD+0x14c>
d004272c:	3710      	adds	r7, #16
d004272e:	f819 3f01 	ldrb.w	r3, [r9, #1]!
d0042732:	260a      	movs	r6, #10
d0042734:	b23f      	sxth	r7, r7
d0042736:	2b00      	cmp	r3, #0
d0042738:	f47f aed4 	bne.w	d00424e4 <DrawHUD+0x24>
d004273c:	e6f8      	b.n	d0042530 <DrawHUD+0x70>
d004273e:	3710      	adds	r7, #16
d0042740:	f819 3f01 	ldrb.w	r3, [r9, #1]!
d0042744:	f44f 76aa 	mov.w	r6, #340	; 0x154
d0042748:	b23f      	sxth	r7, r7
d004274a:	2b00      	cmp	r3, #0
d004274c:	f47f af01 	bne.w	d0042552 <DrawHUD+0x92>
d0042750:	e725      	b.n	d004259e <DrawHUD+0xde>
d0042752:	bf00      	nop
d0042754:	d0044b6c 	.word	0xd0044b6c
d0042758:	d00441c4 	.word	0xd00441c4
d004275c:	d0046780 	.word	0xd0046780
d0042760:	d0046760 	.word	0xd0046760
d0042764:	d0044b68 	.word	0xd0044b68
d0042768:	d00441d4 	.word	0xd00441d4
d004276c:	d0044b70 	.word	0xd0044b70
d0042770:	d00441e0 	.word	0xd00441e0
d0042774:	d00441f0 	.word	0xd00441f0
d0042778:	d00441ec 	.word	0xd00441ec
d004277c:	2001f000 	.word	0x2001f000
d0042780:	d0044b72 	.word	0xd0044b72
d0042784:	d0044ae0 	.word	0xd0044ae0
d0042788:	d0044ae1 	.word	0xd0044ae1

d004278c <sbx_rng_range>:
d004278c:	b410      	push	{r4}
d004278e:	4c0a      	ldr	r4, [pc, #40]	; (d00427b8 <sbx_rng_range+0x2c>)
d0042790:	1a09      	subs	r1, r1, r0
d0042792:	6823      	ldr	r3, [r4, #0]
d0042794:	3101      	adds	r1, #1
d0042796:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d004279a:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d004279e:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d00427a2:	fbb3 f2f1 	udiv	r2, r3, r1
d00427a6:	fb01 3112 	mls	r1, r1, r2, r3
d00427aa:	6023      	str	r3, [r4, #0]
d00427ac:	4408      	add	r0, r1
d00427ae:	f85d 4b04 	ldr.w	r4, [sp], #4
d00427b2:	b200      	sxth	r0, r0
d00427b4:	4770      	bx	lr
d00427b6:	bf00      	nop
d00427b8:	d0044af8 	.word	0xd0044af8

d00427bc <main>:
d00427bc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00427c0:	4cb3      	ldr	r4, [pc, #716]	; (d0042a90 <main+0x2d4>)
d00427c2:	f44f 3000 	mov.w	r0, #131072	; 0x20000
d00427c6:	2600      	movs	r6, #0
d00427c8:	2501      	movs	r5, #1
d00427ca:	7823      	ldrb	r3, [r4, #0]
d00427cc:	7862      	ldrb	r2, [r4, #1]
d00427ce:	78a1      	ldrb	r1, [r4, #2]
d00427d0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00427d4:	78e2      	ldrb	r2, [r4, #3]
d00427d6:	4faf      	ldr	r7, [pc, #700]	; (d0042a94 <main+0x2d8>)
d00427d8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00427dc:	f8df a2d0 	ldr.w	sl, [pc, #720]	; d0042ab0 <main+0x2f4>
d00427e0:	f8df b2d0 	ldr.w	fp, [pc, #720]	; d0042ab4 <main+0x2f8>
d00427e4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00427e8:	f8df 92cc 	ldr.w	r9, [pc, #716]	; d0042ab8 <main+0x2fc>
d00427ec:	681b      	ldr	r3, [r3, #0]
d00427ee:	ed2d 8b02 	vpush	{d8}
d00427f2:	b095      	sub	sp, #84	; 0x54
d00427f4:	4798      	blx	r3
d00427f6:	f7fd fc75 	bl	d00400e4 <initMalloc>
d00427fa:	7b23      	ldrb	r3, [r4, #12]
d00427fc:	7b62      	ldrb	r2, [r4, #13]
d00427fe:	2190      	movs	r1, #144	; 0x90
d0042800:	f894 c00e 	ldrb.w	ip, [r4, #14]
d0042804:	20dc      	movs	r0, #220	; 0xdc
d0042806:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004280a:	7be2      	ldrb	r2, [r4, #15]
d004280c:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0042810:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042814:	681b      	ldr	r3, [r3, #0]
d0042816:	691b      	ldr	r3, [r3, #16]
d0042818:	4798      	blx	r3
d004281a:	7b23      	ldrb	r3, [r4, #12]
d004281c:	7b62      	ldrb	r2, [r4, #13]
d004281e:	4630      	mov	r0, r6
d0042820:	7ba1      	ldrb	r1, [r4, #14]
d0042822:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042826:	7be2      	ldrb	r2, [r4, #15]
d0042828:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004282c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042830:	681b      	ldr	r3, [r3, #0]
d0042832:	689b      	ldr	r3, [r3, #8]
d0042834:	4798      	blx	r3
d0042836:	7b21      	ldrb	r1, [r4, #12]
d0042838:	7b62      	ldrb	r2, [r4, #13]
d004283a:	f04f 0c06 	mov.w	ip, #6
d004283e:	7ba0      	ldrb	r0, [r4, #14]
d0042840:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d0042844:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
d0042848:	7be2      	ldrb	r2, [r4, #15]
d004284a:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
d004284e:	4618      	mov	r0, r3
d0042850:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
d0042854:	f44f 7220 	mov.w	r2, #640	; 0x280
d0042858:	f8d1 e000 	ldr.w	lr, [r1]
d004285c:	f44f 71a0 	mov.w	r1, #320	; 0x140
d0042860:	f8cd c000 	str.w	ip, [sp]
d0042864:	f8de 8014 	ldr.w	r8, [lr, #20]
d0042868:	47c0      	blx	r8
d004286a:	7c23      	ldrb	r3, [r4, #16]
d004286c:	7c62      	ldrb	r2, [r4, #17]
d004286e:	f44f 7000 	mov.w	r0, #512	; 0x200
d0042872:	7ca1      	ldrb	r1, [r4, #18]
d0042874:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042878:	7ce2      	ldrb	r2, [r4, #19]
d004287a:	f8df 8240 	ldr.w	r8, [pc, #576]	; d0042abc <main+0x300>
d004287e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042882:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042886:	681b      	ldr	r3, [r3, #0]
d0042888:	681b      	ldr	r3, [r3, #0]
d004288a:	4798      	blx	r3
d004288c:	7c22      	ldrb	r2, [r4, #16]
d004288e:	7c61      	ldrb	r1, [r4, #17]
d0042890:	7ca3      	ldrb	r3, [r4, #18]
d0042892:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d0042896:	7ce0      	ldrb	r0, [r4, #19]
d0042898:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
d004289c:	7b23      	ldrb	r3, [r4, #12]
d004289e:	7b61      	ldrb	r1, [r4, #13]
d00428a0:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d00428a4:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d00428a8:	7ba1      	ldrb	r1, [r4, #14]
d00428aa:	6812      	ldr	r2, [r2, #0]
d00428ac:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00428b0:	7be1      	ldrb	r1, [r4, #15]
d00428b2:	6852      	ldr	r2, [r2, #4]
d00428b4:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d00428b8:	7015      	strb	r5, [r2, #0]
d00428ba:	681b      	ldr	r3, [r3, #0]
d00428bc:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d00428be:	4798      	blx	r3
d00428c0:	7b23      	ldrb	r3, [r4, #12]
d00428c2:	4975      	ldr	r1, [pc, #468]	; (d0042a98 <main+0x2dc>)
d00428c4:	7b62      	ldrb	r2, [r4, #13]
d00428c6:	6008      	str	r0, [r1, #0]
d00428c8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00428cc:	7ba1      	ldrb	r1, [r4, #14]
d00428ce:	7be2      	ldrb	r2, [r4, #15]
d00428d0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00428d4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00428d8:	681b      	ldr	r3, [r3, #0]
d00428da:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d00428dc:	4798      	blx	r3
d00428de:	f894 c00c 	ldrb.w	ip, [r4, #12]
d00428e2:	4601      	mov	r1, r0
d00428e4:	7b62      	ldrb	r2, [r4, #13]
d00428e6:	4b6d      	ldr	r3, [pc, #436]	; (d0042a9c <main+0x2e0>)
d00428e8:	2064      	movs	r0, #100	; 0x64
d00428ea:	6019      	str	r1, [r3, #0]
d00428ec:	ea4c 2302 	orr.w	r3, ip, r2, lsl #8
d00428f0:	7ba2      	ldrb	r2, [r4, #14]
d00428f2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00428f6:	7be2      	ldrb	r2, [r4, #15]
d00428f8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00428fc:	681b      	ldr	r3, [r3, #0]
d00428fe:	689b      	ldr	r3, [r3, #8]
d0042900:	4798      	blx	r3
d0042902:	f7fd fced 	bl	d00402e0 <loadSounds>
d0042906:	2003      	movs	r0, #3
d0042908:	f7fe fc52 	bl	d00411b0 <SetPlayerLives>
d004290c:	603e      	str	r6, [r7, #0]
d004290e:	f7fe ff8d 	bl	d004182c <LoadGraphics>
d0042912:	f7ff f891 	bl	d0041a38 <LoadCommonGameGraphics>
d0042916:	f7fe fff5 	bl	d0041904 <LoadShipGfx>
d004291a:	7823      	ldrb	r3, [r4, #0]
d004291c:	7862      	ldrb	r2, [r4, #1]
d004291e:	78a1      	ldrb	r1, [r4, #2]
d0042920:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042924:	78e2      	ldrb	r2, [r4, #3]
d0042926:	485e      	ldr	r0, [pc, #376]	; (d0042aa0 <main+0x2e4>)
d0042928:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004292c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042930:	689b      	ldr	r3, [r3, #8]
d0042932:	4798      	blx	r3
d0042934:	7b23      	ldrb	r3, [r4, #12]
d0042936:	7b62      	ldrb	r2, [r4, #13]
d0042938:	7ba1      	ldrb	r1, [r4, #14]
d004293a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004293e:	7be2      	ldrb	r2, [r4, #15]
d0042940:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042944:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042948:	681b      	ldr	r3, [r3, #0]
d004294a:	68db      	ldr	r3, [r3, #12]
d004294c:	4798      	blx	r3
d004294e:	7b23      	ldrb	r3, [r4, #12]
d0042950:	7b62      	ldrb	r2, [r4, #13]
d0042952:	4638      	mov	r0, r7
d0042954:	7ba1      	ldrb	r1, [r4, #14]
d0042956:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004295a:	7be2      	ldrb	r2, [r4, #15]
d004295c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042960:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042964:	681b      	ldr	r3, [r3, #0]
d0042966:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d0042968:	4798      	blx	r3
d004296a:	7b23      	ldrb	r3, [r4, #12]
d004296c:	7b62      	ldrb	r2, [r4, #13]
d004296e:	7ba1      	ldrb	r1, [r4, #14]
d0042970:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042974:	7be2      	ldrb	r2, [r4, #15]
d0042976:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004297a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004297e:	681b      	ldr	r3, [r3, #0]
d0042980:	68db      	ldr	r3, [r3, #12]
d0042982:	4798      	blx	r3
d0042984:	7b23      	ldrb	r3, [r4, #12]
d0042986:	7b62      	ldrb	r2, [r4, #13]
d0042988:	7ba1      	ldrb	r1, [r4, #14]
d004298a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004298e:	7be2      	ldrb	r2, [r4, #15]
d0042990:	4844      	ldr	r0, [pc, #272]	; (d0042aa4 <main+0x2e8>)
d0042992:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042996:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004299a:	681b      	ldr	r3, [r3, #0]
d004299c:	6d1b      	ldr	r3, [r3, #80]	; 0x50
d004299e:	4798      	blx	r3
d00429a0:	7b23      	ldrb	r3, [r4, #12]
d00429a2:	7b62      	ldrb	r2, [r4, #13]
d00429a4:	7ba1      	ldrb	r1, [r4, #14]
d00429a6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00429aa:	7be2      	ldrb	r2, [r4, #15]
d00429ac:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00429b0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00429b4:	681b      	ldr	r3, [r3, #0]
d00429b6:	68db      	ldr	r3, [r3, #12]
d00429b8:	4798      	blx	r3
d00429ba:	4640      	mov	r0, r8
d00429bc:	f7fd fc8c 	bl	d00402d8 <freeSFX>
d00429c0:	4641      	mov	r1, r8
d00429c2:	4839      	ldr	r0, [pc, #228]	; (d0042aa8 <main+0x2ec>)
d00429c4:	f7fd fc00 	bl	d00401c8 <LoadSFX>
d00429c8:	7c27      	ldrb	r7, [r4, #16]
d00429ca:	f894 c011 	ldrb.w	ip, [r4, #17]
d00429ce:	4602      	mov	r2, r0
d00429d0:	7ca0      	ldrb	r0, [r4, #18]
d00429d2:	4633      	mov	r3, r6
d00429d4:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d00429d8:	f8d8 1000 	ldr.w	r1, [r8]
d00429dc:	46b0      	mov	r8, r6
d00429de:	ea47 4700 	orr.w	r7, r7, r0, lsl #16
d00429e2:	7ce0      	ldrb	r0, [r4, #19]
d00429e4:	ea47 6700 	orr.w	r7, r7, r0, lsl #24
d00429e8:	4628      	mov	r0, r5
d00429ea:	68bf      	ldr	r7, [r7, #8]
d00429ec:	68ff      	ldr	r7, [r7, #12]
d00429ee:	47b8      	blx	r7
d00429f0:	7c23      	ldrb	r3, [r4, #16]
d00429f2:	7c62      	ldrb	r2, [r4, #17]
d00429f4:	4628      	mov	r0, r5
d00429f6:	7ca1      	ldrb	r1, [r4, #18]
d00429f8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00429fc:	7ce2      	ldrb	r2, [r4, #19]
d00429fe:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042a02:	f245 51f0 	movw	r1, #22000	; 0x55f0
d0042a06:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042a0a:	689b      	ldr	r3, [r3, #8]
d0042a0c:	691b      	ldr	r3, [r3, #16]
d0042a0e:	4798      	blx	r3
d0042a10:	7c23      	ldrb	r3, [r4, #16]
d0042a12:	7c62      	ldrb	r2, [r4, #17]
d0042a14:	4628      	mov	r0, r5
d0042a16:	7ca1      	ldrb	r1, [r4, #18]
d0042a18:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042a1c:	7ce2      	ldrb	r2, [r4, #19]
d0042a1e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042a22:	f240 1163 	movw	r1, #355	; 0x163
d0042a26:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042a2a:	689b      	ldr	r3, [r3, #8]
d0042a2c:	695b      	ldr	r3, [r3, #20]
d0042a2e:	4798      	blx	r3
d0042a30:	7c23      	ldrb	r3, [r4, #16]
d0042a32:	7c62      	ldrb	r2, [r4, #17]
d0042a34:	4631      	mov	r1, r6
d0042a36:	7ca0      	ldrb	r0, [r4, #18]
d0042a38:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042a3c:	7ce2      	ldrb	r2, [r4, #19]
d0042a3e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0042a42:	4628      	mov	r0, r5
d0042a44:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042a48:	689b      	ldr	r3, [r3, #8]
d0042a4a:	699b      	ldr	r3, [r3, #24]
d0042a4c:	4798      	blx	r3
d0042a4e:	7c23      	ldrb	r3, [r4, #16]
d0042a50:	7c61      	ldrb	r1, [r4, #17]
d0042a52:	4628      	mov	r0, r5
d0042a54:	7ca2      	ldrb	r2, [r4, #18]
d0042a56:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d0042a5a:	7ce1      	ldrb	r1, [r4, #19]
d0042a5c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0042a60:	f241 1251 	movw	r2, #4433	; 0x1151
d0042a64:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d0042a68:	21c8      	movs	r1, #200	; 0xc8
d0042a6a:	689b      	ldr	r3, [r3, #8]
d0042a6c:	69db      	ldr	r3, [r3, #28]
d0042a6e:	4798      	blx	r3
d0042a70:	7c23      	ldrb	r3, [r4, #16]
d0042a72:	7c62      	ldrb	r2, [r4, #17]
d0042a74:	4628      	mov	r0, r5
d0042a76:	7ca5      	ldrb	r5, [r4, #18]
d0042a78:	4631      	mov	r1, r6
d0042a7a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042a7e:	7ce2      	ldrb	r2, [r4, #19]
d0042a80:	4e0a      	ldr	r6, [pc, #40]	; (d0042aac <main+0x2f0>)
d0042a82:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0042a86:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042a8a:	689b      	ldr	r3, [r3, #8]
d0042a8c:	e018      	b.n	d0042ac0 <main+0x304>
d0042a8e:	bf00      	nop
d0042a90:	2001f000 	.word	0x2001f000
d0042a94:	d00442e0 	.word	0xd00442e0
d0042a98:	d0046fa0 	.word	0xd0046fa0
d0042a9c:	d0046e88 	.word	0xd0046e88
d0042aa0:	d00441f4 	.word	0xd00441f4
d0042aa4:	d00446e0 	.word	0xd00446e0
d0042aa8:	d0044210 	.word	0xd0044210
d0042aac:	d0046d60 	.word	0xd0046d60
d0042ab0:	d0046ea0 	.word	0xd0046ea0
d0042ab4:	00f00140 	.word	0x00f00140
d0042ab8:	d0044220 	.word	0xd0044220
d0042abc:	d0044ba0 	.word	0xd0044ba0
d0042ac0:	6a1b      	ldr	r3, [r3, #32]
d0042ac2:	4798      	blx	r3
d0042ac4:	f44f 3096 	mov.w	r0, #76800	; 0x12c00
d0042ac8:	4647      	mov	r7, r8
d0042aca:	f000 fab5 	bl	d0043038 <malloc>
d0042ace:	4603      	mov	r3, r0
d0042ad0:	2500      	movs	r5, #0
d0042ad2:	f108 0801 	add.w	r8, r8, #1
d0042ad6:	6033      	str	r3, [r6, #0]
d0042ad8:	017b      	lsls	r3, r7, #5
d0042ada:	4642      	mov	r2, r8
d0042adc:	4649      	mov	r1, r9
d0042ade:	f8c6 b00c 	str.w	fp, [r6, #12]
d0042ae2:	a804      	add	r0, sp, #16
d0042ae4:	f8c6 b010 	str.w	fp, [r6, #16]
d0042ae8:	6175      	str	r5, [r6, #20]
d0042aea:	9302      	str	r3, [sp, #8]
d0042aec:	f000 fc50 	bl	d0043390 <siprintf>
d0042af0:	6831      	ldr	r1, [r6, #0]
d0042af2:	a804      	add	r0, sp, #16
d0042af4:	f7fd faa2 	bl	d004003c <LoadPPB>
d0042af8:	7822      	ldrb	r2, [r4, #0]
d0042afa:	7861      	ldrb	r1, [r4, #1]
d0042afc:	a804      	add	r0, sp, #16
d0042afe:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d0042b02:	78a1      	ldrb	r1, [r4, #2]
d0042b04:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
d0042b08:	78e1      	ldrb	r1, [r4, #3]
d0042b0a:	ea42 6201 	orr.w	r2, r2, r1, lsl #24
d0042b0e:	6892      	ldr	r2, [r2, #8]
d0042b10:	4790      	blx	r2
d0042b12:	4972      	ldr	r1, [pc, #456]	; (d0042cdc <main+0x520>)
d0042b14:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0042b18:	f44f 2096 	mov.w	r0, #307200	; 0x4b000
d0042b1c:	eb01 1747 	add.w	r7, r1, r7, lsl #5
d0042b20:	f44f 7120 	mov.w	r1, #640	; 0x280
d0042b24:	60f8      	str	r0, [r7, #12]
d0042b26:	80b9      	strh	r1, [r7, #4]
d0042b28:	80fa      	strh	r2, [r7, #6]
d0042b2a:	813a      	strh	r2, [r7, #8]
d0042b2c:	f000 fa84 	bl	d0043038 <malloc>
d0042b30:	9b02      	ldr	r3, [sp, #8]
d0042b32:	4602      	mov	r2, r0
d0042b34:	4969      	ldr	r1, [pc, #420]	; (d0042cdc <main+0x520>)
d0042b36:	4650      	mov	r0, sl
d0042b38:	f10a 0a20 	add.w	sl, sl, #32
d0042b3c:	50ca      	str	r2, [r1, r3]
d0042b3e:	7b23      	ldrb	r3, [r4, #12]
d0042b40:	7b62      	ldrb	r2, [r4, #13]
d0042b42:	7ba1      	ldrb	r1, [r4, #14]
d0042b44:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042b48:	7be2      	ldrb	r2, [r4, #15]
d0042b4a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042b4e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042b52:	681b      	ldr	r3, [r3, #0]
d0042b54:	699b      	ldr	r3, [r3, #24]
d0042b56:	4798      	blx	r3
d0042b58:	7b23      	ldrb	r3, [r4, #12]
d0042b5a:	7b62      	ldrb	r2, [r4, #13]
d0042b5c:	7ba1      	ldrb	r1, [r4, #14]
d0042b5e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042b62:	7be2      	ldrb	r2, [r4, #15]
d0042b64:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042b68:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042b6c:	685b      	ldr	r3, [r3, #4]
d0042b6e:	681b      	ldr	r3, [r3, #0]
d0042b70:	4798      	blx	r3
d0042b72:	7b23      	ldrb	r3, [r4, #12]
d0042b74:	7b62      	ldrb	r2, [r4, #13]
d0042b76:	4630      	mov	r0, r6
d0042b78:	7ba1      	ldrb	r1, [r4, #14]
d0042b7a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042b7e:	7be2      	ldrb	r2, [r4, #15]
d0042b80:	7135      	strb	r5, [r6, #4]
d0042b82:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042b86:	6175      	str	r5, [r6, #20]
d0042b88:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042b8c:	685b      	ldr	r3, [r3, #4]
d0042b8e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0042b90:	4798      	blx	r3
d0042b92:	7b23      	ldrb	r3, [r4, #12]
d0042b94:	7b62      	ldrb	r2, [r4, #13]
d0042b96:	2004      	movs	r0, #4
d0042b98:	7ba7      	ldrb	r7, [r4, #14]
d0042b9a:	f44f 71a0 	mov.w	r1, #320	; 0x140
d0042b9e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042ba2:	7be2      	ldrb	r2, [r4, #15]
d0042ba4:	7130      	strb	r0, [r6, #4]
d0042ba6:	4630      	mov	r0, r6
d0042ba8:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d0042bac:	6171      	str	r1, [r6, #20]
d0042bae:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042bb2:	685b      	ldr	r3, [r3, #4]
d0042bb4:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0042bb6:	4798      	blx	r3
d0042bb8:	7b23      	ldrb	r3, [r4, #12]
d0042bba:	7b62      	ldrb	r2, [r4, #13]
d0042bbc:	2008      	movs	r0, #8
d0042bbe:	7ba7      	ldrb	r7, [r4, #14]
d0042bc0:	f44f 0170 	mov.w	r1, #15728640	; 0xf00000
d0042bc4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042bc8:	7be2      	ldrb	r2, [r4, #15]
d0042bca:	7130      	strb	r0, [r6, #4]
d0042bcc:	4630      	mov	r0, r6
d0042bce:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d0042bd2:	6171      	str	r1, [r6, #20]
d0042bd4:	270c      	movs	r7, #12
d0042bd6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042bda:	685b      	ldr	r3, [r3, #4]
d0042bdc:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0042bde:	4798      	blx	r3
d0042be0:	7b23      	ldrb	r3, [r4, #12]
d0042be2:	7b62      	ldrb	r2, [r4, #13]
d0042be4:	4630      	mov	r0, r6
d0042be6:	7ba1      	ldrb	r1, [r4, #14]
d0042be8:	3620      	adds	r6, #32
d0042bea:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042bee:	7be2      	ldrb	r2, [r4, #15]
d0042bf0:	f806 7c1c 	strb.w	r7, [r6, #-28]
d0042bf4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042bf8:	f846 bc0c 	str.w	fp, [r6, #-12]
d0042bfc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042c00:	685b      	ldr	r3, [r3, #4]
d0042c02:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0042c04:	4798      	blx	r3
d0042c06:	f1b8 0f08 	cmp.w	r8, #8
d0042c0a:	f47f af5b 	bne.w	d0042ac4 <main+0x308>
d0042c0e:	2001      	movs	r0, #1
d0042c10:	4e33      	ldr	r6, [pc, #204]	; (d0042ce0 <main+0x524>)
d0042c12:	f7fd fe23 	bl	d004085c <MusicPlay>
d0042c16:	7b23      	ldrb	r3, [r4, #12]
d0042c18:	7b62      	ldrb	r2, [r4, #13]
d0042c1a:	46a9      	mov	r9, r5
d0042c1c:	7ba1      	ldrb	r1, [r4, #14]
d0042c1e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042c22:	7be2      	ldrb	r2, [r4, #15]
d0042c24:	482d      	ldr	r0, [pc, #180]	; (d0042cdc <main+0x520>)
d0042c26:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042c2a:	9502      	str	r5, [sp, #8]
d0042c2c:	9503      	str	r5, [sp, #12]
d0042c2e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042c32:	f8df 80b4 	ldr.w	r8, [pc, #180]	; d0042ce8 <main+0x52c>
d0042c36:	f8df a0b4 	ldr.w	sl, [pc, #180]	; d0042cec <main+0x530>
d0042c3a:	681b      	ldr	r3, [r3, #0]
d0042c3c:	6a1b      	ldr	r3, [r3, #32]
d0042c3e:	4798      	blx	r3
d0042c40:	7b23      	ldrb	r3, [r4, #12]
d0042c42:	7b62      	ldrb	r2, [r4, #13]
d0042c44:	7ba1      	ldrb	r1, [r4, #14]
d0042c46:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042c4a:	7be2      	ldrb	r2, [r4, #15]
d0042c4c:	6830      	ldr	r0, [r6, #0]
d0042c4e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042c52:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042c56:	681b      	ldr	r3, [r3, #0]
d0042c58:	69db      	ldr	r3, [r3, #28]
d0042c5a:	4798      	blx	r3
d0042c5c:	7b23      	ldrb	r3, [r4, #12]
d0042c5e:	7b62      	ldrb	r2, [r4, #13]
d0042c60:	7ba1      	ldrb	r1, [r4, #14]
d0042c62:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042c66:	7be2      	ldrb	r2, [r4, #15]
d0042c68:	6830      	ldr	r0, [r6, #0]
d0042c6a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042c6e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042c72:	681b      	ldr	r3, [r3, #0]
d0042c74:	699b      	ldr	r3, [r3, #24]
d0042c76:	4798      	blx	r3
d0042c78:	f88a 5000 	strb.w	r5, [sl]
d0042c7c:	f8b8 6010 	ldrh.w	r6, [r8, #16]
d0042c80:	f8b8 5012 	ldrh.w	r5, [r8, #18]
d0042c84:	b2b6      	uxth	r6, r6
d0042c86:	f8b8 7010 	ldrh.w	r7, [r8, #16]
d0042c8a:	f8b8 3012 	ldrh.w	r3, [r8, #18]
d0042c8e:	b2ad      	uxth	r5, r5
d0042c90:	f5c6 76f0 	rsb	r6, r6, #480	; 0x1e0
d0042c94:	f3c7 074e 	ubfx	r7, r7, #1, #15
d0042c98:	f3c3 034e 	ubfx	r3, r3, #1, #15
d0042c9c:	f5c5 75b0 	rsb	r5, r5, #352	; 0x160
d0042ca0:	b236      	sxth	r6, r6
d0042ca2:	f1c7 07f0 	rsb	r7, r7, #240	; 0xf0
d0042ca6:	f1c3 03a0 	rsb	r3, r3, #160	; 0xa0
d0042caa:	b22d      	sxth	r5, r5
d0042cac:	b23f      	sxth	r7, r7
d0042cae:	fa0f fb83 	sxth.w	fp, r3
d0042cb2:	f7fd febd 	bl	d0040a30 <initTorpedos3D>
d0042cb6:	f7fe fb47 	bl	d0041348 <initAstroids3D>
d0042cba:	f7fd fec1 	bl	d0040a40 <initPills3D>
d0042cbe:	ee07 6a90 	vmov	s15, r6
d0042cc2:	eddf 6a08 	vldr	s13, [pc, #32]	; d0042ce4 <main+0x528>
d0042cc6:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d0042cca:	ee07 5a90 	vmov	s15, r5
d0042cce:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0042cd2:	eec6 8a87 	vdiv.f32	s17, s13, s14
d0042cd6:	ee86 8aa7 	vdiv.f32	s16, s13, s15
d0042cda:	e111      	b.n	d0042f00 <main+0x744>
d0042cdc:	d0046ea0 	.word	0xd0046ea0
d0042ce0:	d0046fa0 	.word	0xd0046fa0
d0042ce4:	43200000 	.word	0x43200000
d0042ce8:	d00457e0 	.word	0xd00457e0
d0042cec:	d0044b74 	.word	0xd0044b74
d0042cf0:	9b02      	ldr	r3, [sp, #8]
d0042cf2:	3301      	adds	r3, #1
d0042cf4:	b2db      	uxtb	r3, r3
d0042cf6:	2b07      	cmp	r3, #7
d0042cf8:	9302      	str	r3, [sp, #8]
d0042cfa:	d913      	bls.n	d0042d24 <main+0x568>
d0042cfc:	9b03      	ldr	r3, [sp, #12]
d0042cfe:	f8b8 0014 	ldrh.w	r0, [r8, #20]
d0042d02:	f1c3 0201 	rsb	r2, r3, #1
d0042d06:	f012 03ff 	ands.w	r3, r2, #255	; 0xff
d0042d0a:	9303      	str	r3, [sp, #12]
d0042d0c:	f000 8172 	beq.w	d0042ff4 <main+0x838>
d0042d10:	f8b8 1016 	ldrh.w	r1, [r8, #22]
d0042d14:	b200      	sxth	r0, r0
d0042d16:	2300      	movs	r3, #0
d0042d18:	b209      	sxth	r1, r1
d0042d1a:	3834      	subs	r0, #52	; 0x34
d0042d1c:	9302      	str	r3, [sp, #8]
d0042d1e:	390c      	subs	r1, #12
d0042d20:	f7fd fdbe 	bl	d00408a0 <spawnTorpedo>
d0042d24:	0768      	lsls	r0, r5, #29
d0042d26:	d503      	bpl.n	d0042d30 <main+0x574>
d0042d28:	f1ab 0308 	sub.w	r3, fp, #8
d0042d2c:	fa0f fb83 	sxth.w	fp, r3
d0042d30:	0729      	lsls	r1, r5, #28
d0042d32:	d503      	bpl.n	d0042d3c <main+0x580>
d0042d34:	f10b 0308 	add.w	r3, fp, #8
d0042d38:	fa0f fb83 	sxth.w	fp, r3
d0042d3c:	06ea      	lsls	r2, r5, #27
d0042d3e:	d501      	bpl.n	d0042d44 <main+0x588>
d0042d40:	3f08      	subs	r7, #8
d0042d42:	b23f      	sxth	r7, r7
d0042d44:	06ab      	lsls	r3, r5, #26
d0042d46:	d501      	bpl.n	d0042d4c <main+0x590>
d0042d48:	3708      	adds	r7, #8
d0042d4a:	b23f      	sxth	r7, r7
d0042d4c:	f8b8 2010 	ldrh.w	r2, [r8, #16]
d0042d50:	ea27 77e7 	bic.w	r7, r7, r7, asr #31
d0042d54:	b292      	uxth	r2, r2
d0042d56:	f5c2 72f0 	rsb	r2, r2, #480	; 0x1e0
d0042d5a:	4297      	cmp	r7, r2
d0042d5c:	f340 80ff 	ble.w	d0042f5e <main+0x7a2>
d0042d60:	f8b8 7010 	ldrh.w	r7, [r8, #16]
d0042d64:	f06f 0117 	mvn.w	r1, #23
d0042d68:	f8b8 2012 	ldrh.w	r2, [r8, #18]
d0042d6c:	458b      	cmp	fp, r1
d0042d6e:	f5c7 77f0 	rsb	r7, r7, #480	; 0x1e0
d0042d72:	b292      	uxth	r2, r2
d0042d74:	bfb8      	it	lt
d0042d76:	468b      	movlt	fp, r1
d0042d78:	b23f      	sxth	r7, r7
d0042d7a:	f5c2 72ac 	rsb	r2, r2, #344	; 0x158
d0042d7e:	4593      	cmp	fp, r2
d0042d80:	f300 8117 	bgt.w	d0042fb2 <main+0x7f6>
d0042d84:	4ba0      	ldr	r3, [pc, #640]	; (d0043008 <main+0x84c>)
d0042d86:	ea4f 71eb 	mov.w	r1, fp, asr #31
d0042d8a:	f117 0f4f 	cmn.w	r7, #79	; 0x4f
d0042d8e:	fb83 320b 	smull	r3, r2, r3, fp
d0042d92:	ebc1 02e2 	rsb	r2, r1, r2, asr #3
d0042d96:	b212      	sxth	r2, r2
d0042d98:	f280 80fb 	bge.w	d0042f92 <main+0x7d6>
d0042d9c:	2100      	movs	r1, #0
d0042d9e:	2a04      	cmp	r2, #4
d0042da0:	bfa8      	it	ge
d0042da2:	2204      	movge	r2, #4
d0042da4:	4b99      	ldr	r3, [pc, #612]	; (d004300c <main+0x850>)
d0042da6:	eb02 0282 	add.w	r2, r2, r2, lsl #2
d0042daa:	ee07 7a90 	vmov	s15, r7
d0042dae:	f8a8 7014 	strh.w	r7, [r8, #20]
d0042db2:	441a      	add	r2, r3
d0042db4:	f8a8 b016 	strh.w	fp, [r8, #22]
d0042db8:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d0042dbc:	ee07 ba90 	vmov	s15, fp
d0042dc0:	5c52      	ldrb	r2, [r2, r1]
d0042dc2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0042dc6:	f888 201b 	strb.w	r2, [r8, #27]
d0042dca:	ee27 7a28 	vmul.f32	s14, s14, s17
d0042dce:	7b25      	ldrb	r5, [r4, #12]
d0042dd0:	7b60      	ldrb	r0, [r4, #13]
d0042dd2:	ee67 7a88 	vmul.f32	s15, s15, s16
d0042dd6:	7ba1      	ldrb	r1, [r4, #14]
d0042dd8:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0042ddc:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
d0042de0:	7be2      	ldrb	r2, [r4, #15]
d0042de2:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0042de6:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
d0042dea:	ee17 3a10 	vmov	r3, s14
d0042dee:	ea41 6202 	orr.w	r2, r1, r2, lsl #24
d0042df2:	b21d      	sxth	r5, r3
d0042df4:	ee17 3a90 	vmov	r3, s15
d0042df8:	6812      	ldr	r2, [r2, #0]
d0042dfa:	b21e      	sxth	r6, r3
d0042dfc:	68d2      	ldr	r2, [r2, #12]
d0042dfe:	4790      	blx	r2
d0042e00:	7b22      	ldrb	r2, [r4, #12]
d0042e02:	f894 c00d 	ldrb.w	ip, [r4, #13]
d0042e06:	7ba1      	ldrb	r1, [r4, #14]
d0042e08:	ea42 220c 	orr.w	r2, r2, ip, lsl #8
d0042e0c:	4b80      	ldr	r3, [pc, #512]	; (d0043010 <main+0x854>)
d0042e0e:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
d0042e12:	7be1      	ldrb	r1, [r4, #15]
d0042e14:	eb03 1049 	add.w	r0, r3, r9, lsl #5
d0042e18:	ea42 6201 	orr.w	r2, r2, r1, lsl #24
d0042e1c:	6812      	ldr	r2, [r2, #0]
d0042e1e:	6a12      	ldr	r2, [r2, #32]
d0042e20:	4790      	blx	r2
d0042e22:	f89a 2000 	ldrb.w	r2, [sl]
d0042e26:	f1c2 0201 	rsb	r2, r2, #1
d0042e2a:	b2d2      	uxtb	r2, r2
d0042e2c:	f88a 2000 	strb.w	r2, [sl]
d0042e30:	f89a 2000 	ldrb.w	r2, [sl]
d0042e34:	7b21      	ldrb	r1, [r4, #12]
d0042e36:	f894 c00d 	ldrb.w	ip, [r4, #13]
d0042e3a:	2a00      	cmp	r2, #0
d0042e3c:	f000 8084 	beq.w	d0042f48 <main+0x78c>
d0042e40:	7ba2      	ldrb	r2, [r4, #14]
d0042e42:	ea41 200c 	orr.w	r0, r1, ip, lsl #8
d0042e46:	4b73      	ldr	r3, [pc, #460]	; (d0043014 <main+0x858>)
d0042e48:	f894 e00f 	ldrb.w	lr, [r4, #15]
d0042e4c:	ea40 4c02 	orr.w	ip, r0, r2, lsl #16
d0042e50:	6819      	ldr	r1, [r3, #0]
d0042e52:	4b71      	ldr	r3, [pc, #452]	; (d0043018 <main+0x85c>)
d0042e54:	ea4c 620e 	orr.w	r2, ip, lr, lsl #24
d0042e58:	6818      	ldr	r0, [r3, #0]
d0042e5a:	6812      	ldr	r2, [r2, #0]
d0042e5c:	6a52      	ldr	r2, [r2, #36]	; 0x24
d0042e5e:	4790      	blx	r2
d0042e60:	f894 c00c 	ldrb.w	ip, [r4, #12]
d0042e64:	7b60      	ldrb	r0, [r4, #13]
d0042e66:	7ba1      	ldrb	r1, [r4, #14]
d0042e68:	ea4c 2000 	orr.w	r0, ip, r0, lsl #8
d0042e6c:	7be2      	ldrb	r2, [r4, #15]
d0042e6e:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
d0042e72:	ea41 6202 	orr.w	r2, r1, r2, lsl #24
d0042e76:	6852      	ldr	r2, [r2, #4]
d0042e78:	6812      	ldr	r2, [r2, #0]
d0042e7a:	4790      	blx	r2
d0042e7c:	4631      	mov	r1, r6
d0042e7e:	4628      	mov	r0, r5
d0042e80:	f7fe fa72 	bl	d0041368 <proc_astroids3D>
d0042e84:	4631      	mov	r1, r6
d0042e86:	4628      	mov	r0, r5
d0042e88:	f7fd fde2 	bl	d0040a50 <proc_photo_torps>
d0042e8c:	4631      	mov	r1, r6
d0042e8e:	4628      	mov	r0, r5
d0042e90:	f7fe fbe6 	bl	d0041660 <procExplodes3d>
d0042e94:	4631      	mov	r1, r6
d0042e96:	4628      	mov	r0, r5
d0042e98:	f7fe f83c 	bl	d0040f14 <procPills3D>
d0042e9c:	f7fe fe26 	bl	d0041aec <render3Dstuff>
d0042ea0:	f894 c00c 	ldrb.w	ip, [r4, #12]
d0042ea4:	7b60      	ldrb	r0, [r4, #13]
d0042ea6:	7ba1      	ldrb	r1, [r4, #14]
d0042ea8:	ea4c 2000 	orr.w	r0, ip, r0, lsl #8
d0042eac:	7be2      	ldrb	r2, [r4, #15]
d0042eae:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
d0042eb2:	485a      	ldr	r0, [pc, #360]	; (d004301c <main+0x860>)
d0042eb4:	ea41 6202 	orr.w	r2, r1, r2, lsl #24
d0042eb8:	6852      	ldr	r2, [r2, #4]
d0042eba:	6a52      	ldr	r2, [r2, #36]	; 0x24
d0042ebc:	4790      	blx	r2
d0042ebe:	f894 c00c 	ldrb.w	ip, [r4, #12]
d0042ec2:	7b62      	ldrb	r2, [r4, #13]
d0042ec4:	f106 0110 	add.w	r1, r6, #16
d0042ec8:	f894 e00e 	ldrb.w	lr, [r4, #14]
d0042ecc:	4628      	mov	r0, r5
d0042ece:	ea4c 2602 	orr.w	r6, ip, r2, lsl #8
d0042ed2:	7be2      	ldrb	r2, [r4, #15]
d0042ed4:	ea46 450e 	orr.w	r5, r6, lr, lsl #16
d0042ed8:	ea45 6202 	orr.w	r2, r5, r2, lsl #24
d0042edc:	6812      	ldr	r2, [r2, #0]
d0042ede:	6b12      	ldr	r2, [r2, #48]	; 0x30
d0042ee0:	4790      	blx	r2
d0042ee2:	f7ff faed 	bl	d00424c0 <DrawHUD>
d0042ee6:	7b25      	ldrb	r5, [r4, #12]
d0042ee8:	7b60      	ldrb	r0, [r4, #13]
d0042eea:	7ba1      	ldrb	r1, [r4, #14]
d0042eec:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
d0042ef0:	7be2      	ldrb	r2, [r4, #15]
d0042ef2:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
d0042ef6:	ea41 6202 	orr.w	r2, r1, r2, lsl #24
d0042efa:	6812      	ldr	r2, [r2, #0]
d0042efc:	6812      	ldr	r2, [r2, #0]
d0042efe:	4790      	blx	r2
d0042f00:	f89a 2000 	ldrb.w	r2, [sl]
d0042f04:	b142      	cbz	r2, d0042f18 <main+0x75c>
d0042f06:	f109 0901 	add.w	r9, r9, #1
d0042f0a:	fa5f f989 	uxtb.w	r9, r9
d0042f0e:	f1b9 0f08 	cmp.w	r9, #8
d0042f12:	bf28      	it	cs
d0042f14:	f04f 0900 	movcs.w	r9, #0
d0042f18:	7825      	ldrb	r5, [r4, #0]
d0042f1a:	7860      	ldrb	r0, [r4, #1]
d0042f1c:	78a1      	ldrb	r1, [r4, #2]
d0042f1e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
d0042f22:	78e2      	ldrb	r2, [r4, #3]
d0042f24:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
d0042f28:	ea41 6202 	orr.w	r2, r1, r2, lsl #24
d0042f2c:	69d2      	ldr	r2, [r2, #28]
d0042f2e:	4790      	blx	r2
d0042f30:	4b3b      	ldr	r3, [pc, #236]	; (d0043020 <main+0x864>)
d0042f32:	f000 0201 	and.w	r2, r0, #1
d0042f36:	4605      	mov	r5, r0
d0042f38:	701a      	strb	r2, [r3, #0]
d0042f3a:	2a00      	cmp	r2, #0
d0042f3c:	f47f aed8 	bne.w	d0042cf0 <main+0x534>
d0042f40:	2210      	movs	r2, #16
d0042f42:	4b37      	ldr	r3, [pc, #220]	; (d0043020 <main+0x864>)
d0042f44:	701a      	strb	r2, [r3, #0]
d0042f46:	e6ed      	b.n	d0042d24 <main+0x568>
d0042f48:	7ba2      	ldrb	r2, [r4, #14]
d0042f4a:	ea41 200c 	orr.w	r0, r1, ip, lsl #8
d0042f4e:	4b32      	ldr	r3, [pc, #200]	; (d0043018 <main+0x85c>)
d0042f50:	f894 e00f 	ldrb.w	lr, [r4, #15]
d0042f54:	ea40 4c02 	orr.w	ip, r0, r2, lsl #16
d0042f58:	6819      	ldr	r1, [r3, #0]
d0042f5a:	4b2e      	ldr	r3, [pc, #184]	; (d0043014 <main+0x858>)
d0042f5c:	e77a      	b.n	d0042e54 <main+0x698>
d0042f5e:	f06f 0117 	mvn.w	r1, #23
d0042f62:	f8b8 2012 	ldrh.w	r2, [r8, #18]
d0042f66:	458b      	cmp	fp, r1
d0042f68:	b292      	uxth	r2, r2
d0042f6a:	bfb8      	it	lt
d0042f6c:	468b      	movlt	fp, r1
d0042f6e:	f5c2 72ac 	rsb	r2, r2, #344	; 0x158
d0042f72:	4593      	cmp	fp, r2
d0042f74:	dd30      	ble.n	d0042fd8 <main+0x81c>
d0042f76:	f8b8 3012 	ldrh.w	r3, [r8, #18]
d0042f7a:	f5c3 73ac 	rsb	r3, r3, #344	; 0x158
d0042f7e:	fa0f fb83 	sxth.w	fp, r3
d0042f82:	4b21      	ldr	r3, [pc, #132]	; (d0043008 <main+0x84c>)
d0042f84:	ea4f 72eb 	mov.w	r2, fp, asr #31
d0042f88:	fb83 310b 	smull	r3, r1, r3, fp
d0042f8c:	ebc2 02e1 	rsb	r2, r2, r1, asr #3
d0042f90:	b212      	sxth	r2, r2
d0042f92:	4b24      	ldr	r3, [pc, #144]	; (d0043024 <main+0x868>)
d0042f94:	17f8      	asrs	r0, r7, #31
d0042f96:	fb83 3107 	smull	r3, r1, r3, r7
d0042f9a:	ebc0 1161 	rsb	r1, r0, r1, asr #5
d0042f9e:	b209      	sxth	r1, r1
d0042fa0:	2904      	cmp	r1, #4
d0042fa2:	bfa8      	it	ge
d0042fa4:	2104      	movge	r1, #4
d0042fa6:	f11b 0f2f 	cmn.w	fp, #47	; 0x2f
d0042faa:	f6bf aef8 	bge.w	d0042d9e <main+0x5e2>
d0042fae:	2200      	movs	r2, #0
d0042fb0:	e6f8      	b.n	d0042da4 <main+0x5e8>
d0042fb2:	f8b8 3012 	ldrh.w	r3, [r8, #18]
d0042fb6:	f117 0f4f 	cmn.w	r7, #79	; 0x4f
d0042fba:	f5c3 73ac 	rsb	r3, r3, #344	; 0x158
d0042fbe:	fa0f fb83 	sxth.w	fp, r3
d0042fc2:	4b11      	ldr	r3, [pc, #68]	; (d0043008 <main+0x84c>)
d0042fc4:	ea4f 72eb 	mov.w	r2, fp, asr #31
d0042fc8:	fb83 310b 	smull	r3, r1, r3, fp
d0042fcc:	ebc2 02e1 	rsb	r2, r2, r1, asr #3
d0042fd0:	b212      	sxth	r2, r2
d0042fd2:	dade      	bge.n	d0042f92 <main+0x7d6>
d0042fd4:	2100      	movs	r1, #0
d0042fd6:	e7e6      	b.n	d0042fa6 <main+0x7ea>
d0042fd8:	4b0b      	ldr	r3, [pc, #44]	; (d0043008 <main+0x84c>)
d0042fda:	b2b9      	uxth	r1, r7
d0042fdc:	ea4f 72eb 	mov.w	r2, fp, asr #31
d0042fe0:	fb83 300b 	smull	r3, r0, r3, fp
d0042fe4:	4b10      	ldr	r3, [pc, #64]	; (d0043028 <main+0x86c>)
d0042fe6:	ebc2 02e0 	rsb	r2, r2, r0, asr #3
d0042fea:	fba3 3101 	umull	r3, r1, r3, r1
d0042fee:	b212      	sxth	r2, r2
d0042ff0:	0989      	lsrs	r1, r1, #6
d0042ff2:	e7d5      	b.n	d0042fa0 <main+0x7e4>
d0042ff4:	f8b8 1016 	ldrh.w	r1, [r8, #22]
d0042ff8:	b200      	sxth	r0, r0
d0042ffa:	9302      	str	r3, [sp, #8]
d0042ffc:	b209      	sxth	r1, r1
d0042ffe:	380c      	subs	r0, #12
d0043000:	390c      	subs	r1, #12
d0043002:	f7fd fc4d 	bl	d00408a0 <spawnTorpedo>
d0043006:	e68d      	b.n	d0042d24 <main+0x568>
d0043008:	2aaaaaab 	.word	0x2aaaaaab
d004300c:	d0044088 	.word	0xd0044088
d0043010:	d0046ea0 	.word	0xd0046ea0
d0043014:	d0046e88 	.word	0xd0046e88
d0043018:	d0046fa0 	.word	0xd0046fa0
d004301c:	d00457e0 	.word	0xd00457e0
d0043020:	d0044b73 	.word	0xd0044b73
d0043024:	66666667 	.word	0x66666667
d0043028:	cccccccd 	.word	0xcccccccd

d004302c <__errno>:
d004302c:	4b01      	ldr	r3, [pc, #4]	; (d0043034 <__errno+0x8>)
d004302e:	6818      	ldr	r0, [r3, #0]
d0043030:	4770      	bx	lr
d0043032:	bf00      	nop
d0043034:	d0044afc 	.word	0xd0044afc

d0043038 <malloc>:
d0043038:	4b02      	ldr	r3, [pc, #8]	; (d0043044 <malloc+0xc>)
d004303a:	4601      	mov	r1, r0
d004303c:	6818      	ldr	r0, [r3, #0]
d004303e:	f000 b87f 	b.w	d0043140 <_malloc_r>
d0043042:	bf00      	nop
d0043044:	d0044afc 	.word	0xd0044afc

d0043048 <free>:
d0043048:	4b02      	ldr	r3, [pc, #8]	; (d0043054 <free+0xc>)
d004304a:	4601      	mov	r1, r0
d004304c:	6818      	ldr	r0, [r3, #0]
d004304e:	f000 b827 	b.w	d00430a0 <_free_r>
d0043052:	bf00      	nop
d0043054:	d0044afc 	.word	0xd0044afc

d0043058 <memcmp>:
d0043058:	b530      	push	{r4, r5, lr}
d004305a:	3901      	subs	r1, #1
d004305c:	2400      	movs	r4, #0
d004305e:	42a2      	cmp	r2, r4
d0043060:	d101      	bne.n	d0043066 <memcmp+0xe>
d0043062:	2000      	movs	r0, #0
d0043064:	e005      	b.n	d0043072 <memcmp+0x1a>
d0043066:	5d03      	ldrb	r3, [r0, r4]
d0043068:	3401      	adds	r4, #1
d004306a:	5d0d      	ldrb	r5, [r1, r4]
d004306c:	42ab      	cmp	r3, r5
d004306e:	d0f6      	beq.n	d004305e <memcmp+0x6>
d0043070:	1b58      	subs	r0, r3, r5
d0043072:	bd30      	pop	{r4, r5, pc}

d0043074 <memcpy>:
d0043074:	440a      	add	r2, r1
d0043076:	4291      	cmp	r1, r2
d0043078:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d004307c:	d100      	bne.n	d0043080 <memcpy+0xc>
d004307e:	4770      	bx	lr
d0043080:	b510      	push	{r4, lr}
d0043082:	f811 4b01 	ldrb.w	r4, [r1], #1
d0043086:	f803 4f01 	strb.w	r4, [r3, #1]!
d004308a:	4291      	cmp	r1, r2
d004308c:	d1f9      	bne.n	d0043082 <memcpy+0xe>
d004308e:	bd10      	pop	{r4, pc}

d0043090 <memset>:
d0043090:	4402      	add	r2, r0
d0043092:	4603      	mov	r3, r0
d0043094:	4293      	cmp	r3, r2
d0043096:	d100      	bne.n	d004309a <memset+0xa>
d0043098:	4770      	bx	lr
d004309a:	f803 1b01 	strb.w	r1, [r3], #1
d004309e:	e7f9      	b.n	d0043094 <memset+0x4>

d00430a0 <_free_r>:
d00430a0:	b537      	push	{r0, r1, r2, r4, r5, lr}
d00430a2:	2900      	cmp	r1, #0
d00430a4:	d048      	beq.n	d0043138 <_free_r+0x98>
d00430a6:	f851 3c04 	ldr.w	r3, [r1, #-4]
d00430aa:	9001      	str	r0, [sp, #4]
d00430ac:	2b00      	cmp	r3, #0
d00430ae:	f1a1 0404 	sub.w	r4, r1, #4
d00430b2:	bfb8      	it	lt
d00430b4:	18e4      	addlt	r4, r4, r3
d00430b6:	f000 fb69 	bl	d004378c <__malloc_lock>
d00430ba:	4a20      	ldr	r2, [pc, #128]	; (d004313c <_free_r+0x9c>)
d00430bc:	9801      	ldr	r0, [sp, #4]
d00430be:	6813      	ldr	r3, [r2, #0]
d00430c0:	4615      	mov	r5, r2
d00430c2:	b933      	cbnz	r3, d00430d2 <_free_r+0x32>
d00430c4:	6063      	str	r3, [r4, #4]
d00430c6:	6014      	str	r4, [r2, #0]
d00430c8:	b003      	add	sp, #12
d00430ca:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d00430ce:	f000 bb63 	b.w	d0043798 <__malloc_unlock>
d00430d2:	42a3      	cmp	r3, r4
d00430d4:	d90b      	bls.n	d00430ee <_free_r+0x4e>
d00430d6:	6821      	ldr	r1, [r4, #0]
d00430d8:	1862      	adds	r2, r4, r1
d00430da:	4293      	cmp	r3, r2
d00430dc:	bf04      	itt	eq
d00430de:	681a      	ldreq	r2, [r3, #0]
d00430e0:	685b      	ldreq	r3, [r3, #4]
d00430e2:	6063      	str	r3, [r4, #4]
d00430e4:	bf04      	itt	eq
d00430e6:	1852      	addeq	r2, r2, r1
d00430e8:	6022      	streq	r2, [r4, #0]
d00430ea:	602c      	str	r4, [r5, #0]
d00430ec:	e7ec      	b.n	d00430c8 <_free_r+0x28>
d00430ee:	461a      	mov	r2, r3
d00430f0:	685b      	ldr	r3, [r3, #4]
d00430f2:	b10b      	cbz	r3, d00430f8 <_free_r+0x58>
d00430f4:	42a3      	cmp	r3, r4
d00430f6:	d9fa      	bls.n	d00430ee <_free_r+0x4e>
d00430f8:	6811      	ldr	r1, [r2, #0]
d00430fa:	1855      	adds	r5, r2, r1
d00430fc:	42a5      	cmp	r5, r4
d00430fe:	d10b      	bne.n	d0043118 <_free_r+0x78>
d0043100:	6824      	ldr	r4, [r4, #0]
d0043102:	4421      	add	r1, r4
d0043104:	1854      	adds	r4, r2, r1
d0043106:	42a3      	cmp	r3, r4
d0043108:	6011      	str	r1, [r2, #0]
d004310a:	d1dd      	bne.n	d00430c8 <_free_r+0x28>
d004310c:	681c      	ldr	r4, [r3, #0]
d004310e:	685b      	ldr	r3, [r3, #4]
d0043110:	6053      	str	r3, [r2, #4]
d0043112:	4421      	add	r1, r4
d0043114:	6011      	str	r1, [r2, #0]
d0043116:	e7d7      	b.n	d00430c8 <_free_r+0x28>
d0043118:	d902      	bls.n	d0043120 <_free_r+0x80>
d004311a:	230c      	movs	r3, #12
d004311c:	6003      	str	r3, [r0, #0]
d004311e:	e7d3      	b.n	d00430c8 <_free_r+0x28>
d0043120:	6825      	ldr	r5, [r4, #0]
d0043122:	1961      	adds	r1, r4, r5
d0043124:	428b      	cmp	r3, r1
d0043126:	bf04      	itt	eq
d0043128:	6819      	ldreq	r1, [r3, #0]
d004312a:	685b      	ldreq	r3, [r3, #4]
d004312c:	6063      	str	r3, [r4, #4]
d004312e:	bf04      	itt	eq
d0043130:	1949      	addeq	r1, r1, r5
d0043132:	6021      	streq	r1, [r4, #0]
d0043134:	6054      	str	r4, [r2, #4]
d0043136:	e7c7      	b.n	d00430c8 <_free_r+0x28>
d0043138:	b003      	add	sp, #12
d004313a:	bd30      	pop	{r4, r5, pc}
d004313c:	d0044b78 	.word	0xd0044b78

d0043140 <_malloc_r>:
d0043140:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0043142:	1ccd      	adds	r5, r1, #3
d0043144:	f025 0503 	bic.w	r5, r5, #3
d0043148:	3508      	adds	r5, #8
d004314a:	2d0c      	cmp	r5, #12
d004314c:	bf38      	it	cc
d004314e:	250c      	movcc	r5, #12
d0043150:	2d00      	cmp	r5, #0
d0043152:	4606      	mov	r6, r0
d0043154:	db01      	blt.n	d004315a <_malloc_r+0x1a>
d0043156:	42a9      	cmp	r1, r5
d0043158:	d903      	bls.n	d0043162 <_malloc_r+0x22>
d004315a:	230c      	movs	r3, #12
d004315c:	6033      	str	r3, [r6, #0]
d004315e:	2000      	movs	r0, #0
d0043160:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0043162:	f000 fb13 	bl	d004378c <__malloc_lock>
d0043166:	4921      	ldr	r1, [pc, #132]	; (d00431ec <_malloc_r+0xac>)
d0043168:	680a      	ldr	r2, [r1, #0]
d004316a:	4614      	mov	r4, r2
d004316c:	b99c      	cbnz	r4, d0043196 <_malloc_r+0x56>
d004316e:	4f20      	ldr	r7, [pc, #128]	; (d00431f0 <_malloc_r+0xb0>)
d0043170:	683b      	ldr	r3, [r7, #0]
d0043172:	b923      	cbnz	r3, d004317e <_malloc_r+0x3e>
d0043174:	4621      	mov	r1, r4
d0043176:	4630      	mov	r0, r6
d0043178:	f7fd f806 	bl	d0040188 <_sbrk_r>
d004317c:	6038      	str	r0, [r7, #0]
d004317e:	4629      	mov	r1, r5
d0043180:	4630      	mov	r0, r6
d0043182:	f7fd f801 	bl	d0040188 <_sbrk_r>
d0043186:	1c43      	adds	r3, r0, #1
d0043188:	d123      	bne.n	d00431d2 <_malloc_r+0x92>
d004318a:	230c      	movs	r3, #12
d004318c:	6033      	str	r3, [r6, #0]
d004318e:	4630      	mov	r0, r6
d0043190:	f000 fb02 	bl	d0043798 <__malloc_unlock>
d0043194:	e7e3      	b.n	d004315e <_malloc_r+0x1e>
d0043196:	6823      	ldr	r3, [r4, #0]
d0043198:	1b5b      	subs	r3, r3, r5
d004319a:	d417      	bmi.n	d00431cc <_malloc_r+0x8c>
d004319c:	2b0b      	cmp	r3, #11
d004319e:	d903      	bls.n	d00431a8 <_malloc_r+0x68>
d00431a0:	6023      	str	r3, [r4, #0]
d00431a2:	441c      	add	r4, r3
d00431a4:	6025      	str	r5, [r4, #0]
d00431a6:	e004      	b.n	d00431b2 <_malloc_r+0x72>
d00431a8:	6863      	ldr	r3, [r4, #4]
d00431aa:	42a2      	cmp	r2, r4
d00431ac:	bf0c      	ite	eq
d00431ae:	600b      	streq	r3, [r1, #0]
d00431b0:	6053      	strne	r3, [r2, #4]
d00431b2:	4630      	mov	r0, r6
d00431b4:	f000 faf0 	bl	d0043798 <__malloc_unlock>
d00431b8:	f104 000b 	add.w	r0, r4, #11
d00431bc:	1d23      	adds	r3, r4, #4
d00431be:	f020 0007 	bic.w	r0, r0, #7
d00431c2:	1ac2      	subs	r2, r0, r3
d00431c4:	d0cc      	beq.n	d0043160 <_malloc_r+0x20>
d00431c6:	1a1b      	subs	r3, r3, r0
d00431c8:	50a3      	str	r3, [r4, r2]
d00431ca:	e7c9      	b.n	d0043160 <_malloc_r+0x20>
d00431cc:	4622      	mov	r2, r4
d00431ce:	6864      	ldr	r4, [r4, #4]
d00431d0:	e7cc      	b.n	d004316c <_malloc_r+0x2c>
d00431d2:	1cc4      	adds	r4, r0, #3
d00431d4:	f024 0403 	bic.w	r4, r4, #3
d00431d8:	42a0      	cmp	r0, r4
d00431da:	d0e3      	beq.n	d00431a4 <_malloc_r+0x64>
d00431dc:	1a21      	subs	r1, r4, r0
d00431de:	4630      	mov	r0, r6
d00431e0:	f7fc ffd2 	bl	d0040188 <_sbrk_r>
d00431e4:	3001      	adds	r0, #1
d00431e6:	d1dd      	bne.n	d00431a4 <_malloc_r+0x64>
d00431e8:	e7cf      	b.n	d004318a <_malloc_r+0x4a>
d00431ea:	bf00      	nop
d00431ec:	d0044b78 	.word	0xd0044b78
d00431f0:	d0044b7c 	.word	0xd0044b7c

d00431f4 <setbuf>:
d00431f4:	2900      	cmp	r1, #0
d00431f6:	f44f 6380 	mov.w	r3, #1024	; 0x400
d00431fa:	bf0c      	ite	eq
d00431fc:	2202      	moveq	r2, #2
d00431fe:	2200      	movne	r2, #0
d0043200:	f000 b800 	b.w	d0043204 <setvbuf>

d0043204 <setvbuf>:
d0043204:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0043208:	461d      	mov	r5, r3
d004320a:	4b5d      	ldr	r3, [pc, #372]	; (d0043380 <setvbuf+0x17c>)
d004320c:	681f      	ldr	r7, [r3, #0]
d004320e:	4604      	mov	r4, r0
d0043210:	460e      	mov	r6, r1
d0043212:	4690      	mov	r8, r2
d0043214:	b127      	cbz	r7, d0043220 <setvbuf+0x1c>
d0043216:	69bb      	ldr	r3, [r7, #24]
d0043218:	b913      	cbnz	r3, d0043220 <setvbuf+0x1c>
d004321a:	4638      	mov	r0, r7
d004321c:	f000 f9f2 	bl	d0043604 <__sinit>
d0043220:	4b58      	ldr	r3, [pc, #352]	; (d0043384 <setvbuf+0x180>)
d0043222:	429c      	cmp	r4, r3
d0043224:	d167      	bne.n	d00432f6 <setvbuf+0xf2>
d0043226:	687c      	ldr	r4, [r7, #4]
d0043228:	f1b8 0f02 	cmp.w	r8, #2
d004322c:	d006      	beq.n	d004323c <setvbuf+0x38>
d004322e:	f1b8 0f01 	cmp.w	r8, #1
d0043232:	f200 809f 	bhi.w	d0043374 <setvbuf+0x170>
d0043236:	2d00      	cmp	r5, #0
d0043238:	f2c0 809c 	blt.w	d0043374 <setvbuf+0x170>
d004323c:	6e63      	ldr	r3, [r4, #100]	; 0x64
d004323e:	07db      	lsls	r3, r3, #31
d0043240:	d405      	bmi.n	d004324e <setvbuf+0x4a>
d0043242:	89a3      	ldrh	r3, [r4, #12]
d0043244:	0598      	lsls	r0, r3, #22
d0043246:	d402      	bmi.n	d004324e <setvbuf+0x4a>
d0043248:	6da0      	ldr	r0, [r4, #88]	; 0x58
d004324a:	f000 fa79 	bl	d0043740 <__retarget_lock_acquire_recursive>
d004324e:	4621      	mov	r1, r4
d0043250:	4638      	mov	r0, r7
d0043252:	f000 f943 	bl	d00434dc <_fflush_r>
d0043256:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0043258:	b141      	cbz	r1, d004326c <setvbuf+0x68>
d004325a:	f104 0344 	add.w	r3, r4, #68	; 0x44
d004325e:	4299      	cmp	r1, r3
d0043260:	d002      	beq.n	d0043268 <setvbuf+0x64>
d0043262:	4638      	mov	r0, r7
d0043264:	f7ff ff1c 	bl	d00430a0 <_free_r>
d0043268:	2300      	movs	r3, #0
d004326a:	6363      	str	r3, [r4, #52]	; 0x34
d004326c:	2300      	movs	r3, #0
d004326e:	61a3      	str	r3, [r4, #24]
d0043270:	6063      	str	r3, [r4, #4]
d0043272:	89a3      	ldrh	r3, [r4, #12]
d0043274:	0619      	lsls	r1, r3, #24
d0043276:	d503      	bpl.n	d0043280 <setvbuf+0x7c>
d0043278:	6921      	ldr	r1, [r4, #16]
d004327a:	4638      	mov	r0, r7
d004327c:	f7ff ff10 	bl	d00430a0 <_free_r>
d0043280:	89a3      	ldrh	r3, [r4, #12]
d0043282:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d0043286:	f023 0303 	bic.w	r3, r3, #3
d004328a:	f1b8 0f02 	cmp.w	r8, #2
d004328e:	81a3      	strh	r3, [r4, #12]
d0043290:	d06c      	beq.n	d004336c <setvbuf+0x168>
d0043292:	ab01      	add	r3, sp, #4
d0043294:	466a      	mov	r2, sp
d0043296:	4621      	mov	r1, r4
d0043298:	4638      	mov	r0, r7
d004329a:	f000 fa53 	bl	d0043744 <__swhatbuf_r>
d004329e:	89a3      	ldrh	r3, [r4, #12]
d00432a0:	4318      	orrs	r0, r3
d00432a2:	81a0      	strh	r0, [r4, #12]
d00432a4:	2d00      	cmp	r5, #0
d00432a6:	d130      	bne.n	d004330a <setvbuf+0x106>
d00432a8:	9d00      	ldr	r5, [sp, #0]
d00432aa:	4628      	mov	r0, r5
d00432ac:	f7ff fec4 	bl	d0043038 <malloc>
d00432b0:	4606      	mov	r6, r0
d00432b2:	2800      	cmp	r0, #0
d00432b4:	d155      	bne.n	d0043362 <setvbuf+0x15e>
d00432b6:	f8dd 9000 	ldr.w	r9, [sp]
d00432ba:	45a9      	cmp	r9, r5
d00432bc:	d14a      	bne.n	d0043354 <setvbuf+0x150>
d00432be:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00432c2:	2200      	movs	r2, #0
d00432c4:	60a2      	str	r2, [r4, #8]
d00432c6:	f104 0247 	add.w	r2, r4, #71	; 0x47
d00432ca:	6022      	str	r2, [r4, #0]
d00432cc:	6122      	str	r2, [r4, #16]
d00432ce:	2201      	movs	r2, #1
d00432d0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d00432d4:	6162      	str	r2, [r4, #20]
d00432d6:	6e62      	ldr	r2, [r4, #100]	; 0x64
d00432d8:	f043 0302 	orr.w	r3, r3, #2
d00432dc:	07d2      	lsls	r2, r2, #31
d00432de:	81a3      	strh	r3, [r4, #12]
d00432e0:	d405      	bmi.n	d00432ee <setvbuf+0xea>
d00432e2:	f413 7f00 	tst.w	r3, #512	; 0x200
d00432e6:	d102      	bne.n	d00432ee <setvbuf+0xea>
d00432e8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00432ea:	f000 fa2a 	bl	d0043742 <__retarget_lock_release_recursive>
d00432ee:	4628      	mov	r0, r5
d00432f0:	b003      	add	sp, #12
d00432f2:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d00432f6:	4b24      	ldr	r3, [pc, #144]	; (d0043388 <setvbuf+0x184>)
d00432f8:	429c      	cmp	r4, r3
d00432fa:	d101      	bne.n	d0043300 <setvbuf+0xfc>
d00432fc:	68bc      	ldr	r4, [r7, #8]
d00432fe:	e793      	b.n	d0043228 <setvbuf+0x24>
d0043300:	4b22      	ldr	r3, [pc, #136]	; (d004338c <setvbuf+0x188>)
d0043302:	429c      	cmp	r4, r3
d0043304:	bf08      	it	eq
d0043306:	68fc      	ldreq	r4, [r7, #12]
d0043308:	e78e      	b.n	d0043228 <setvbuf+0x24>
d004330a:	2e00      	cmp	r6, #0
d004330c:	d0cd      	beq.n	d00432aa <setvbuf+0xa6>
d004330e:	69bb      	ldr	r3, [r7, #24]
d0043310:	b913      	cbnz	r3, d0043318 <setvbuf+0x114>
d0043312:	4638      	mov	r0, r7
d0043314:	f000 f976 	bl	d0043604 <__sinit>
d0043318:	f1b8 0f01 	cmp.w	r8, #1
d004331c:	bf08      	it	eq
d004331e:	89a3      	ldrheq	r3, [r4, #12]
d0043320:	6026      	str	r6, [r4, #0]
d0043322:	bf04      	itt	eq
d0043324:	f043 0301 	orreq.w	r3, r3, #1
d0043328:	81a3      	strheq	r3, [r4, #12]
d004332a:	89a2      	ldrh	r2, [r4, #12]
d004332c:	f012 0308 	ands.w	r3, r2, #8
d0043330:	e9c4 6504 	strd	r6, r5, [r4, #16]
d0043334:	d01c      	beq.n	d0043370 <setvbuf+0x16c>
d0043336:	07d3      	lsls	r3, r2, #31
d0043338:	bf41      	itttt	mi
d004333a:	2300      	movmi	r3, #0
d004333c:	426d      	negmi	r5, r5
d004333e:	60a3      	strmi	r3, [r4, #8]
d0043340:	61a5      	strmi	r5, [r4, #24]
d0043342:	bf58      	it	pl
d0043344:	60a5      	strpl	r5, [r4, #8]
d0043346:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0043348:	f015 0501 	ands.w	r5, r5, #1
d004334c:	d115      	bne.n	d004337a <setvbuf+0x176>
d004334e:	f412 7f00 	tst.w	r2, #512	; 0x200
d0043352:	e7c8      	b.n	d00432e6 <setvbuf+0xe2>
d0043354:	4648      	mov	r0, r9
d0043356:	f7ff fe6f 	bl	d0043038 <malloc>
d004335a:	4606      	mov	r6, r0
d004335c:	2800      	cmp	r0, #0
d004335e:	d0ae      	beq.n	d00432be <setvbuf+0xba>
d0043360:	464d      	mov	r5, r9
d0043362:	89a3      	ldrh	r3, [r4, #12]
d0043364:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0043368:	81a3      	strh	r3, [r4, #12]
d004336a:	e7d0      	b.n	d004330e <setvbuf+0x10a>
d004336c:	2500      	movs	r5, #0
d004336e:	e7a8      	b.n	d00432c2 <setvbuf+0xbe>
d0043370:	60a3      	str	r3, [r4, #8]
d0043372:	e7e8      	b.n	d0043346 <setvbuf+0x142>
d0043374:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0043378:	e7b9      	b.n	d00432ee <setvbuf+0xea>
d004337a:	2500      	movs	r5, #0
d004337c:	e7b7      	b.n	d00432ee <setvbuf+0xea>
d004337e:	bf00      	nop
d0043380:	d0044afc 	.word	0xd0044afc
d0043384:	d0044254 	.word	0xd0044254
d0043388:	d0044274 	.word	0xd0044274
d004338c:	d0044234 	.word	0xd0044234

d0043390 <siprintf>:
d0043390:	b40e      	push	{r1, r2, r3}
d0043392:	b500      	push	{lr}
d0043394:	b09c      	sub	sp, #112	; 0x70
d0043396:	ab1d      	add	r3, sp, #116	; 0x74
d0043398:	9002      	str	r0, [sp, #8]
d004339a:	9006      	str	r0, [sp, #24]
d004339c:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d00433a0:	4809      	ldr	r0, [pc, #36]	; (d00433c8 <siprintf+0x38>)
d00433a2:	9107      	str	r1, [sp, #28]
d00433a4:	9104      	str	r1, [sp, #16]
d00433a6:	4909      	ldr	r1, [pc, #36]	; (d00433cc <siprintf+0x3c>)
d00433a8:	f853 2b04 	ldr.w	r2, [r3], #4
d00433ac:	9105      	str	r1, [sp, #20]
d00433ae:	6800      	ldr	r0, [r0, #0]
d00433b0:	9301      	str	r3, [sp, #4]
d00433b2:	a902      	add	r1, sp, #8
d00433b4:	f000 fa52 	bl	d004385c <_svfiprintf_r>
d00433b8:	9b02      	ldr	r3, [sp, #8]
d00433ba:	2200      	movs	r2, #0
d00433bc:	701a      	strb	r2, [r3, #0]
d00433be:	b01c      	add	sp, #112	; 0x70
d00433c0:	f85d eb04 	ldr.w	lr, [sp], #4
d00433c4:	b003      	add	sp, #12
d00433c6:	4770      	bx	lr
d00433c8:	d0044afc 	.word	0xd0044afc
d00433cc:	ffff0208 	.word	0xffff0208

d00433d0 <__sflush_r>:
d00433d0:	898a      	ldrh	r2, [r1, #12]
d00433d2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00433d6:	4605      	mov	r5, r0
d00433d8:	0710      	lsls	r0, r2, #28
d00433da:	460c      	mov	r4, r1
d00433dc:	d458      	bmi.n	d0043490 <__sflush_r+0xc0>
d00433de:	684b      	ldr	r3, [r1, #4]
d00433e0:	2b00      	cmp	r3, #0
d00433e2:	dc05      	bgt.n	d00433f0 <__sflush_r+0x20>
d00433e4:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d00433e6:	2b00      	cmp	r3, #0
d00433e8:	dc02      	bgt.n	d00433f0 <__sflush_r+0x20>
d00433ea:	2000      	movs	r0, #0
d00433ec:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00433f0:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d00433f2:	2e00      	cmp	r6, #0
d00433f4:	d0f9      	beq.n	d00433ea <__sflush_r+0x1a>
d00433f6:	2300      	movs	r3, #0
d00433f8:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d00433fc:	682f      	ldr	r7, [r5, #0]
d00433fe:	602b      	str	r3, [r5, #0]
d0043400:	d032      	beq.n	d0043468 <__sflush_r+0x98>
d0043402:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0043404:	89a3      	ldrh	r3, [r4, #12]
d0043406:	075a      	lsls	r2, r3, #29
d0043408:	d505      	bpl.n	d0043416 <__sflush_r+0x46>
d004340a:	6863      	ldr	r3, [r4, #4]
d004340c:	1ac0      	subs	r0, r0, r3
d004340e:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0043410:	b10b      	cbz	r3, d0043416 <__sflush_r+0x46>
d0043412:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0043414:	1ac0      	subs	r0, r0, r3
d0043416:	2300      	movs	r3, #0
d0043418:	4602      	mov	r2, r0
d004341a:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d004341c:	6a21      	ldr	r1, [r4, #32]
d004341e:	4628      	mov	r0, r5
d0043420:	47b0      	blx	r6
d0043422:	1c43      	adds	r3, r0, #1
d0043424:	89a3      	ldrh	r3, [r4, #12]
d0043426:	d106      	bne.n	d0043436 <__sflush_r+0x66>
d0043428:	6829      	ldr	r1, [r5, #0]
d004342a:	291d      	cmp	r1, #29
d004342c:	d82c      	bhi.n	d0043488 <__sflush_r+0xb8>
d004342e:	4a2a      	ldr	r2, [pc, #168]	; (d00434d8 <__sflush_r+0x108>)
d0043430:	40ca      	lsrs	r2, r1
d0043432:	07d6      	lsls	r6, r2, #31
d0043434:	d528      	bpl.n	d0043488 <__sflush_r+0xb8>
d0043436:	2200      	movs	r2, #0
d0043438:	6062      	str	r2, [r4, #4]
d004343a:	04d9      	lsls	r1, r3, #19
d004343c:	6922      	ldr	r2, [r4, #16]
d004343e:	6022      	str	r2, [r4, #0]
d0043440:	d504      	bpl.n	d004344c <__sflush_r+0x7c>
d0043442:	1c42      	adds	r2, r0, #1
d0043444:	d101      	bne.n	d004344a <__sflush_r+0x7a>
d0043446:	682b      	ldr	r3, [r5, #0]
d0043448:	b903      	cbnz	r3, d004344c <__sflush_r+0x7c>
d004344a:	6560      	str	r0, [r4, #84]	; 0x54
d004344c:	6b61      	ldr	r1, [r4, #52]	; 0x34
d004344e:	602f      	str	r7, [r5, #0]
d0043450:	2900      	cmp	r1, #0
d0043452:	d0ca      	beq.n	d00433ea <__sflush_r+0x1a>
d0043454:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0043458:	4299      	cmp	r1, r3
d004345a:	d002      	beq.n	d0043462 <__sflush_r+0x92>
d004345c:	4628      	mov	r0, r5
d004345e:	f7ff fe1f 	bl	d00430a0 <_free_r>
d0043462:	2000      	movs	r0, #0
d0043464:	6360      	str	r0, [r4, #52]	; 0x34
d0043466:	e7c1      	b.n	d00433ec <__sflush_r+0x1c>
d0043468:	6a21      	ldr	r1, [r4, #32]
d004346a:	2301      	movs	r3, #1
d004346c:	4628      	mov	r0, r5
d004346e:	47b0      	blx	r6
d0043470:	1c41      	adds	r1, r0, #1
d0043472:	d1c7      	bne.n	d0043404 <__sflush_r+0x34>
d0043474:	682b      	ldr	r3, [r5, #0]
d0043476:	2b00      	cmp	r3, #0
d0043478:	d0c4      	beq.n	d0043404 <__sflush_r+0x34>
d004347a:	2b1d      	cmp	r3, #29
d004347c:	d001      	beq.n	d0043482 <__sflush_r+0xb2>
d004347e:	2b16      	cmp	r3, #22
d0043480:	d101      	bne.n	d0043486 <__sflush_r+0xb6>
d0043482:	602f      	str	r7, [r5, #0]
d0043484:	e7b1      	b.n	d00433ea <__sflush_r+0x1a>
d0043486:	89a3      	ldrh	r3, [r4, #12]
d0043488:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d004348c:	81a3      	strh	r3, [r4, #12]
d004348e:	e7ad      	b.n	d00433ec <__sflush_r+0x1c>
d0043490:	690f      	ldr	r7, [r1, #16]
d0043492:	2f00      	cmp	r7, #0
d0043494:	d0a9      	beq.n	d00433ea <__sflush_r+0x1a>
d0043496:	0793      	lsls	r3, r2, #30
d0043498:	680e      	ldr	r6, [r1, #0]
d004349a:	bf08      	it	eq
d004349c:	694b      	ldreq	r3, [r1, #20]
d004349e:	600f      	str	r7, [r1, #0]
d00434a0:	bf18      	it	ne
d00434a2:	2300      	movne	r3, #0
d00434a4:	eba6 0807 	sub.w	r8, r6, r7
d00434a8:	608b      	str	r3, [r1, #8]
d00434aa:	f1b8 0f00 	cmp.w	r8, #0
d00434ae:	dd9c      	ble.n	d00433ea <__sflush_r+0x1a>
d00434b0:	6a21      	ldr	r1, [r4, #32]
d00434b2:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d00434b4:	4643      	mov	r3, r8
d00434b6:	463a      	mov	r2, r7
d00434b8:	4628      	mov	r0, r5
d00434ba:	47b0      	blx	r6
d00434bc:	2800      	cmp	r0, #0
d00434be:	dc06      	bgt.n	d00434ce <__sflush_r+0xfe>
d00434c0:	89a3      	ldrh	r3, [r4, #12]
d00434c2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00434c6:	81a3      	strh	r3, [r4, #12]
d00434c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00434cc:	e78e      	b.n	d00433ec <__sflush_r+0x1c>
d00434ce:	4407      	add	r7, r0
d00434d0:	eba8 0800 	sub.w	r8, r8, r0
d00434d4:	e7e9      	b.n	d00434aa <__sflush_r+0xda>
d00434d6:	bf00      	nop
d00434d8:	20400001 	.word	0x20400001

d00434dc <_fflush_r>:
d00434dc:	b538      	push	{r3, r4, r5, lr}
d00434de:	690b      	ldr	r3, [r1, #16]
d00434e0:	4605      	mov	r5, r0
d00434e2:	460c      	mov	r4, r1
d00434e4:	b913      	cbnz	r3, d00434ec <_fflush_r+0x10>
d00434e6:	2500      	movs	r5, #0
d00434e8:	4628      	mov	r0, r5
d00434ea:	bd38      	pop	{r3, r4, r5, pc}
d00434ec:	b118      	cbz	r0, d00434f6 <_fflush_r+0x1a>
d00434ee:	6983      	ldr	r3, [r0, #24]
d00434f0:	b90b      	cbnz	r3, d00434f6 <_fflush_r+0x1a>
d00434f2:	f000 f887 	bl	d0043604 <__sinit>
d00434f6:	4b14      	ldr	r3, [pc, #80]	; (d0043548 <_fflush_r+0x6c>)
d00434f8:	429c      	cmp	r4, r3
d00434fa:	d11b      	bne.n	d0043534 <_fflush_r+0x58>
d00434fc:	686c      	ldr	r4, [r5, #4]
d00434fe:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0043502:	2b00      	cmp	r3, #0
d0043504:	d0ef      	beq.n	d00434e6 <_fflush_r+0xa>
d0043506:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0043508:	07d0      	lsls	r0, r2, #31
d004350a:	d404      	bmi.n	d0043516 <_fflush_r+0x3a>
d004350c:	0599      	lsls	r1, r3, #22
d004350e:	d402      	bmi.n	d0043516 <_fflush_r+0x3a>
d0043510:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0043512:	f000 f915 	bl	d0043740 <__retarget_lock_acquire_recursive>
d0043516:	4628      	mov	r0, r5
d0043518:	4621      	mov	r1, r4
d004351a:	f7ff ff59 	bl	d00433d0 <__sflush_r>
d004351e:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0043520:	07da      	lsls	r2, r3, #31
d0043522:	4605      	mov	r5, r0
d0043524:	d4e0      	bmi.n	d00434e8 <_fflush_r+0xc>
d0043526:	89a3      	ldrh	r3, [r4, #12]
d0043528:	059b      	lsls	r3, r3, #22
d004352a:	d4dd      	bmi.n	d00434e8 <_fflush_r+0xc>
d004352c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d004352e:	f000 f908 	bl	d0043742 <__retarget_lock_release_recursive>
d0043532:	e7d9      	b.n	d00434e8 <_fflush_r+0xc>
d0043534:	4b05      	ldr	r3, [pc, #20]	; (d004354c <_fflush_r+0x70>)
d0043536:	429c      	cmp	r4, r3
d0043538:	d101      	bne.n	d004353e <_fflush_r+0x62>
d004353a:	68ac      	ldr	r4, [r5, #8]
d004353c:	e7df      	b.n	d00434fe <_fflush_r+0x22>
d004353e:	4b04      	ldr	r3, [pc, #16]	; (d0043550 <_fflush_r+0x74>)
d0043540:	429c      	cmp	r4, r3
d0043542:	bf08      	it	eq
d0043544:	68ec      	ldreq	r4, [r5, #12]
d0043546:	e7da      	b.n	d00434fe <_fflush_r+0x22>
d0043548:	d0044254 	.word	0xd0044254
d004354c:	d0044274 	.word	0xd0044274
d0043550:	d0044234 	.word	0xd0044234

d0043554 <std>:
d0043554:	2300      	movs	r3, #0
d0043556:	b510      	push	{r4, lr}
d0043558:	4604      	mov	r4, r0
d004355a:	e9c0 3300 	strd	r3, r3, [r0]
d004355e:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0043562:	6083      	str	r3, [r0, #8]
d0043564:	8181      	strh	r1, [r0, #12]
d0043566:	6643      	str	r3, [r0, #100]	; 0x64
d0043568:	81c2      	strh	r2, [r0, #14]
d004356a:	6183      	str	r3, [r0, #24]
d004356c:	4619      	mov	r1, r3
d004356e:	2208      	movs	r2, #8
d0043570:	305c      	adds	r0, #92	; 0x5c
d0043572:	f7ff fd8d 	bl	d0043090 <memset>
d0043576:	4b05      	ldr	r3, [pc, #20]	; (d004358c <std+0x38>)
d0043578:	6263      	str	r3, [r4, #36]	; 0x24
d004357a:	4b05      	ldr	r3, [pc, #20]	; (d0043590 <std+0x3c>)
d004357c:	62a3      	str	r3, [r4, #40]	; 0x28
d004357e:	4b05      	ldr	r3, [pc, #20]	; (d0043594 <std+0x40>)
d0043580:	62e3      	str	r3, [r4, #44]	; 0x2c
d0043582:	4b05      	ldr	r3, [pc, #20]	; (d0043598 <std+0x44>)
d0043584:	6224      	str	r4, [r4, #32]
d0043586:	6323      	str	r3, [r4, #48]	; 0x30
d0043588:	bd10      	pop	{r4, pc}
d004358a:	bf00      	nop
d004358c:	d0043d85 	.word	0xd0043d85
d0043590:	d0043da7 	.word	0xd0043da7
d0043594:	d0043ddf 	.word	0xd0043ddf
d0043598:	d0043e03 	.word	0xd0043e03

d004359c <_cleanup_r>:
d004359c:	4901      	ldr	r1, [pc, #4]	; (d00435a4 <_cleanup_r+0x8>)
d004359e:	f000 b8af 	b.w	d0043700 <_fwalk_reent>
d00435a2:	bf00      	nop
d00435a4:	d00434dd 	.word	0xd00434dd

d00435a8 <__sfmoreglue>:
d00435a8:	b570      	push	{r4, r5, r6, lr}
d00435aa:	1e4a      	subs	r2, r1, #1
d00435ac:	2568      	movs	r5, #104	; 0x68
d00435ae:	4355      	muls	r5, r2
d00435b0:	460e      	mov	r6, r1
d00435b2:	f105 0174 	add.w	r1, r5, #116	; 0x74
d00435b6:	f7ff fdc3 	bl	d0043140 <_malloc_r>
d00435ba:	4604      	mov	r4, r0
d00435bc:	b140      	cbz	r0, d00435d0 <__sfmoreglue+0x28>
d00435be:	2100      	movs	r1, #0
d00435c0:	e9c0 1600 	strd	r1, r6, [r0]
d00435c4:	300c      	adds	r0, #12
d00435c6:	60a0      	str	r0, [r4, #8]
d00435c8:	f105 0268 	add.w	r2, r5, #104	; 0x68
d00435cc:	f7ff fd60 	bl	d0043090 <memset>
d00435d0:	4620      	mov	r0, r4
d00435d2:	bd70      	pop	{r4, r5, r6, pc}

d00435d4 <__sfp_lock_acquire>:
d00435d4:	4801      	ldr	r0, [pc, #4]	; (d00435dc <__sfp_lock_acquire+0x8>)
d00435d6:	f000 b8b3 	b.w	d0043740 <__retarget_lock_acquire_recursive>
d00435da:	bf00      	nop
d00435dc:	d0046fac 	.word	0xd0046fac

d00435e0 <__sfp_lock_release>:
d00435e0:	4801      	ldr	r0, [pc, #4]	; (d00435e8 <__sfp_lock_release+0x8>)
d00435e2:	f000 b8ae 	b.w	d0043742 <__retarget_lock_release_recursive>
d00435e6:	bf00      	nop
d00435e8:	d0046fac 	.word	0xd0046fac

d00435ec <__sinit_lock_acquire>:
d00435ec:	4801      	ldr	r0, [pc, #4]	; (d00435f4 <__sinit_lock_acquire+0x8>)
d00435ee:	f000 b8a7 	b.w	d0043740 <__retarget_lock_acquire_recursive>
d00435f2:	bf00      	nop
d00435f4:	d0046fa7 	.word	0xd0046fa7

d00435f8 <__sinit_lock_release>:
d00435f8:	4801      	ldr	r0, [pc, #4]	; (d0043600 <__sinit_lock_release+0x8>)
d00435fa:	f000 b8a2 	b.w	d0043742 <__retarget_lock_release_recursive>
d00435fe:	bf00      	nop
d0043600:	d0046fa7 	.word	0xd0046fa7

d0043604 <__sinit>:
d0043604:	b510      	push	{r4, lr}
d0043606:	4604      	mov	r4, r0
d0043608:	f7ff fff0 	bl	d00435ec <__sinit_lock_acquire>
d004360c:	69a3      	ldr	r3, [r4, #24]
d004360e:	b11b      	cbz	r3, d0043618 <__sinit+0x14>
d0043610:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0043614:	f7ff bff0 	b.w	d00435f8 <__sinit_lock_release>
d0043618:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d004361c:	6523      	str	r3, [r4, #80]	; 0x50
d004361e:	4b13      	ldr	r3, [pc, #76]	; (d004366c <__sinit+0x68>)
d0043620:	4a13      	ldr	r2, [pc, #76]	; (d0043670 <__sinit+0x6c>)
d0043622:	681b      	ldr	r3, [r3, #0]
d0043624:	62a2      	str	r2, [r4, #40]	; 0x28
d0043626:	42a3      	cmp	r3, r4
d0043628:	bf04      	itt	eq
d004362a:	2301      	moveq	r3, #1
d004362c:	61a3      	streq	r3, [r4, #24]
d004362e:	4620      	mov	r0, r4
d0043630:	f000 f820 	bl	d0043674 <__sfp>
d0043634:	6060      	str	r0, [r4, #4]
d0043636:	4620      	mov	r0, r4
d0043638:	f000 f81c 	bl	d0043674 <__sfp>
d004363c:	60a0      	str	r0, [r4, #8]
d004363e:	4620      	mov	r0, r4
d0043640:	f000 f818 	bl	d0043674 <__sfp>
d0043644:	2200      	movs	r2, #0
d0043646:	60e0      	str	r0, [r4, #12]
d0043648:	2104      	movs	r1, #4
d004364a:	6860      	ldr	r0, [r4, #4]
d004364c:	f7ff ff82 	bl	d0043554 <std>
d0043650:	68a0      	ldr	r0, [r4, #8]
d0043652:	2201      	movs	r2, #1
d0043654:	2109      	movs	r1, #9
d0043656:	f7ff ff7d 	bl	d0043554 <std>
d004365a:	68e0      	ldr	r0, [r4, #12]
d004365c:	2202      	movs	r2, #2
d004365e:	2112      	movs	r1, #18
d0043660:	f7ff ff78 	bl	d0043554 <std>
d0043664:	2301      	movs	r3, #1
d0043666:	61a3      	str	r3, [r4, #24]
d0043668:	e7d2      	b.n	d0043610 <__sinit+0xc>
d004366a:	bf00      	nop
d004366c:	d0044230 	.word	0xd0044230
d0043670:	d004359d 	.word	0xd004359d

d0043674 <__sfp>:
d0043674:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0043676:	4607      	mov	r7, r0
d0043678:	f7ff ffac 	bl	d00435d4 <__sfp_lock_acquire>
d004367c:	4b1e      	ldr	r3, [pc, #120]	; (d00436f8 <__sfp+0x84>)
d004367e:	681e      	ldr	r6, [r3, #0]
d0043680:	69b3      	ldr	r3, [r6, #24]
d0043682:	b913      	cbnz	r3, d004368a <__sfp+0x16>
d0043684:	4630      	mov	r0, r6
d0043686:	f7ff ffbd 	bl	d0043604 <__sinit>
d004368a:	3648      	adds	r6, #72	; 0x48
d004368c:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0043690:	3b01      	subs	r3, #1
d0043692:	d503      	bpl.n	d004369c <__sfp+0x28>
d0043694:	6833      	ldr	r3, [r6, #0]
d0043696:	b30b      	cbz	r3, d00436dc <__sfp+0x68>
d0043698:	6836      	ldr	r6, [r6, #0]
d004369a:	e7f7      	b.n	d004368c <__sfp+0x18>
d004369c:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d00436a0:	b9d5      	cbnz	r5, d00436d8 <__sfp+0x64>
d00436a2:	4b16      	ldr	r3, [pc, #88]	; (d00436fc <__sfp+0x88>)
d00436a4:	60e3      	str	r3, [r4, #12]
d00436a6:	f104 0058 	add.w	r0, r4, #88	; 0x58
d00436aa:	6665      	str	r5, [r4, #100]	; 0x64
d00436ac:	f000 f847 	bl	d004373e <__retarget_lock_init_recursive>
d00436b0:	f7ff ff96 	bl	d00435e0 <__sfp_lock_release>
d00436b4:	e9c4 5501 	strd	r5, r5, [r4, #4]
d00436b8:	e9c4 5504 	strd	r5, r5, [r4, #16]
d00436bc:	6025      	str	r5, [r4, #0]
d00436be:	61a5      	str	r5, [r4, #24]
d00436c0:	2208      	movs	r2, #8
d00436c2:	4629      	mov	r1, r5
d00436c4:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d00436c8:	f7ff fce2 	bl	d0043090 <memset>
d00436cc:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d00436d0:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d00436d4:	4620      	mov	r0, r4
d00436d6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00436d8:	3468      	adds	r4, #104	; 0x68
d00436da:	e7d9      	b.n	d0043690 <__sfp+0x1c>
d00436dc:	2104      	movs	r1, #4
d00436de:	4638      	mov	r0, r7
d00436e0:	f7ff ff62 	bl	d00435a8 <__sfmoreglue>
d00436e4:	4604      	mov	r4, r0
d00436e6:	6030      	str	r0, [r6, #0]
d00436e8:	2800      	cmp	r0, #0
d00436ea:	d1d5      	bne.n	d0043698 <__sfp+0x24>
d00436ec:	f7ff ff78 	bl	d00435e0 <__sfp_lock_release>
d00436f0:	230c      	movs	r3, #12
d00436f2:	603b      	str	r3, [r7, #0]
d00436f4:	e7ee      	b.n	d00436d4 <__sfp+0x60>
d00436f6:	bf00      	nop
d00436f8:	d0044230 	.word	0xd0044230
d00436fc:	ffff0001 	.word	0xffff0001

d0043700 <_fwalk_reent>:
d0043700:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0043704:	4606      	mov	r6, r0
d0043706:	4688      	mov	r8, r1
d0043708:	f100 0448 	add.w	r4, r0, #72	; 0x48
d004370c:	2700      	movs	r7, #0
d004370e:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0043712:	f1b9 0901 	subs.w	r9, r9, #1
d0043716:	d505      	bpl.n	d0043724 <_fwalk_reent+0x24>
d0043718:	6824      	ldr	r4, [r4, #0]
d004371a:	2c00      	cmp	r4, #0
d004371c:	d1f7      	bne.n	d004370e <_fwalk_reent+0xe>
d004371e:	4638      	mov	r0, r7
d0043720:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0043724:	89ab      	ldrh	r3, [r5, #12]
d0043726:	2b01      	cmp	r3, #1
d0043728:	d907      	bls.n	d004373a <_fwalk_reent+0x3a>
d004372a:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d004372e:	3301      	adds	r3, #1
d0043730:	d003      	beq.n	d004373a <_fwalk_reent+0x3a>
d0043732:	4629      	mov	r1, r5
d0043734:	4630      	mov	r0, r6
d0043736:	47c0      	blx	r8
d0043738:	4307      	orrs	r7, r0
d004373a:	3568      	adds	r5, #104	; 0x68
d004373c:	e7e9      	b.n	d0043712 <_fwalk_reent+0x12>

d004373e <__retarget_lock_init_recursive>:
d004373e:	4770      	bx	lr

d0043740 <__retarget_lock_acquire_recursive>:
d0043740:	4770      	bx	lr

d0043742 <__retarget_lock_release_recursive>:
d0043742:	4770      	bx	lr

d0043744 <__swhatbuf_r>:
d0043744:	b570      	push	{r4, r5, r6, lr}
d0043746:	460e      	mov	r6, r1
d0043748:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d004374c:	2900      	cmp	r1, #0
d004374e:	b096      	sub	sp, #88	; 0x58
d0043750:	4614      	mov	r4, r2
d0043752:	461d      	mov	r5, r3
d0043754:	da07      	bge.n	d0043766 <__swhatbuf_r+0x22>
d0043756:	2300      	movs	r3, #0
d0043758:	602b      	str	r3, [r5, #0]
d004375a:	89b3      	ldrh	r3, [r6, #12]
d004375c:	061a      	lsls	r2, r3, #24
d004375e:	d410      	bmi.n	d0043782 <__swhatbuf_r+0x3e>
d0043760:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0043764:	e00e      	b.n	d0043784 <__swhatbuf_r+0x40>
d0043766:	466a      	mov	r2, sp
d0043768:	f000 fb60 	bl	d0043e2c <_fstat_r>
d004376c:	2800      	cmp	r0, #0
d004376e:	dbf2      	blt.n	d0043756 <__swhatbuf_r+0x12>
d0043770:	9a01      	ldr	r2, [sp, #4]
d0043772:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0043776:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d004377a:	425a      	negs	r2, r3
d004377c:	415a      	adcs	r2, r3
d004377e:	602a      	str	r2, [r5, #0]
d0043780:	e7ee      	b.n	d0043760 <__swhatbuf_r+0x1c>
d0043782:	2340      	movs	r3, #64	; 0x40
d0043784:	2000      	movs	r0, #0
d0043786:	6023      	str	r3, [r4, #0]
d0043788:	b016      	add	sp, #88	; 0x58
d004378a:	bd70      	pop	{r4, r5, r6, pc}

d004378c <__malloc_lock>:
d004378c:	4801      	ldr	r0, [pc, #4]	; (d0043794 <__malloc_lock+0x8>)
d004378e:	f7ff bfd7 	b.w	d0043740 <__retarget_lock_acquire_recursive>
d0043792:	bf00      	nop
d0043794:	d0046fa8 	.word	0xd0046fa8

d0043798 <__malloc_unlock>:
d0043798:	4801      	ldr	r0, [pc, #4]	; (d00437a0 <__malloc_unlock+0x8>)
d004379a:	f7ff bfd2 	b.w	d0043742 <__retarget_lock_release_recursive>
d004379e:	bf00      	nop
d00437a0:	d0046fa8 	.word	0xd0046fa8

d00437a4 <__ssputs_r>:
d00437a4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00437a8:	688e      	ldr	r6, [r1, #8]
d00437aa:	429e      	cmp	r6, r3
d00437ac:	4682      	mov	sl, r0
d00437ae:	460c      	mov	r4, r1
d00437b0:	4690      	mov	r8, r2
d00437b2:	461f      	mov	r7, r3
d00437b4:	d838      	bhi.n	d0043828 <__ssputs_r+0x84>
d00437b6:	898a      	ldrh	r2, [r1, #12]
d00437b8:	f412 6f90 	tst.w	r2, #1152	; 0x480
d00437bc:	d032      	beq.n	d0043824 <__ssputs_r+0x80>
d00437be:	6825      	ldr	r5, [r4, #0]
d00437c0:	6909      	ldr	r1, [r1, #16]
d00437c2:	eba5 0901 	sub.w	r9, r5, r1
d00437c6:	6965      	ldr	r5, [r4, #20]
d00437c8:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d00437cc:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d00437d0:	3301      	adds	r3, #1
d00437d2:	444b      	add	r3, r9
d00437d4:	106d      	asrs	r5, r5, #1
d00437d6:	429d      	cmp	r5, r3
d00437d8:	bf38      	it	cc
d00437da:	461d      	movcc	r5, r3
d00437dc:	0553      	lsls	r3, r2, #21
d00437de:	d531      	bpl.n	d0043844 <__ssputs_r+0xa0>
d00437e0:	4629      	mov	r1, r5
d00437e2:	f7ff fcad 	bl	d0043140 <_malloc_r>
d00437e6:	4606      	mov	r6, r0
d00437e8:	b950      	cbnz	r0, d0043800 <__ssputs_r+0x5c>
d00437ea:	230c      	movs	r3, #12
d00437ec:	f8ca 3000 	str.w	r3, [sl]
d00437f0:	89a3      	ldrh	r3, [r4, #12]
d00437f2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00437f6:	81a3      	strh	r3, [r4, #12]
d00437f8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00437fc:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0043800:	6921      	ldr	r1, [r4, #16]
d0043802:	464a      	mov	r2, r9
d0043804:	f7ff fc36 	bl	d0043074 <memcpy>
d0043808:	89a3      	ldrh	r3, [r4, #12]
d004380a:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d004380e:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0043812:	81a3      	strh	r3, [r4, #12]
d0043814:	6126      	str	r6, [r4, #16]
d0043816:	6165      	str	r5, [r4, #20]
d0043818:	444e      	add	r6, r9
d004381a:	eba5 0509 	sub.w	r5, r5, r9
d004381e:	6026      	str	r6, [r4, #0]
d0043820:	60a5      	str	r5, [r4, #8]
d0043822:	463e      	mov	r6, r7
d0043824:	42be      	cmp	r6, r7
d0043826:	d900      	bls.n	d004382a <__ssputs_r+0x86>
d0043828:	463e      	mov	r6, r7
d004382a:	4632      	mov	r2, r6
d004382c:	6820      	ldr	r0, [r4, #0]
d004382e:	4641      	mov	r1, r8
d0043830:	f000 fb76 	bl	d0043f20 <memmove>
d0043834:	68a3      	ldr	r3, [r4, #8]
d0043836:	6822      	ldr	r2, [r4, #0]
d0043838:	1b9b      	subs	r3, r3, r6
d004383a:	4432      	add	r2, r6
d004383c:	60a3      	str	r3, [r4, #8]
d004383e:	6022      	str	r2, [r4, #0]
d0043840:	2000      	movs	r0, #0
d0043842:	e7db      	b.n	d00437fc <__ssputs_r+0x58>
d0043844:	462a      	mov	r2, r5
d0043846:	f000 fb85 	bl	d0043f54 <_realloc_r>
d004384a:	4606      	mov	r6, r0
d004384c:	2800      	cmp	r0, #0
d004384e:	d1e1      	bne.n	d0043814 <__ssputs_r+0x70>
d0043850:	6921      	ldr	r1, [r4, #16]
d0043852:	4650      	mov	r0, sl
d0043854:	f7ff fc24 	bl	d00430a0 <_free_r>
d0043858:	e7c7      	b.n	d00437ea <__ssputs_r+0x46>
	...

d004385c <_svfiprintf_r>:
d004385c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0043860:	4698      	mov	r8, r3
d0043862:	898b      	ldrh	r3, [r1, #12]
d0043864:	061b      	lsls	r3, r3, #24
d0043866:	b09d      	sub	sp, #116	; 0x74
d0043868:	4607      	mov	r7, r0
d004386a:	460d      	mov	r5, r1
d004386c:	4614      	mov	r4, r2
d004386e:	d50e      	bpl.n	d004388e <_svfiprintf_r+0x32>
d0043870:	690b      	ldr	r3, [r1, #16]
d0043872:	b963      	cbnz	r3, d004388e <_svfiprintf_r+0x32>
d0043874:	2140      	movs	r1, #64	; 0x40
d0043876:	f7ff fc63 	bl	d0043140 <_malloc_r>
d004387a:	6028      	str	r0, [r5, #0]
d004387c:	6128      	str	r0, [r5, #16]
d004387e:	b920      	cbnz	r0, d004388a <_svfiprintf_r+0x2e>
d0043880:	230c      	movs	r3, #12
d0043882:	603b      	str	r3, [r7, #0]
d0043884:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0043888:	e0d1      	b.n	d0043a2e <_svfiprintf_r+0x1d2>
d004388a:	2340      	movs	r3, #64	; 0x40
d004388c:	616b      	str	r3, [r5, #20]
d004388e:	2300      	movs	r3, #0
d0043890:	9309      	str	r3, [sp, #36]	; 0x24
d0043892:	2320      	movs	r3, #32
d0043894:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0043898:	f8cd 800c 	str.w	r8, [sp, #12]
d004389c:	2330      	movs	r3, #48	; 0x30
d004389e:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d0043a48 <_svfiprintf_r+0x1ec>
d00438a2:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d00438a6:	f04f 0901 	mov.w	r9, #1
d00438aa:	4623      	mov	r3, r4
d00438ac:	469a      	mov	sl, r3
d00438ae:	f813 2b01 	ldrb.w	r2, [r3], #1
d00438b2:	b10a      	cbz	r2, d00438b8 <_svfiprintf_r+0x5c>
d00438b4:	2a25      	cmp	r2, #37	; 0x25
d00438b6:	d1f9      	bne.n	d00438ac <_svfiprintf_r+0x50>
d00438b8:	ebba 0b04 	subs.w	fp, sl, r4
d00438bc:	d00b      	beq.n	d00438d6 <_svfiprintf_r+0x7a>
d00438be:	465b      	mov	r3, fp
d00438c0:	4622      	mov	r2, r4
d00438c2:	4629      	mov	r1, r5
d00438c4:	4638      	mov	r0, r7
d00438c6:	f7ff ff6d 	bl	d00437a4 <__ssputs_r>
d00438ca:	3001      	adds	r0, #1
d00438cc:	f000 80aa 	beq.w	d0043a24 <_svfiprintf_r+0x1c8>
d00438d0:	9a09      	ldr	r2, [sp, #36]	; 0x24
d00438d2:	445a      	add	r2, fp
d00438d4:	9209      	str	r2, [sp, #36]	; 0x24
d00438d6:	f89a 3000 	ldrb.w	r3, [sl]
d00438da:	2b00      	cmp	r3, #0
d00438dc:	f000 80a2 	beq.w	d0043a24 <_svfiprintf_r+0x1c8>
d00438e0:	2300      	movs	r3, #0
d00438e2:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d00438e6:	e9cd 2305 	strd	r2, r3, [sp, #20]
d00438ea:	f10a 0a01 	add.w	sl, sl, #1
d00438ee:	9304      	str	r3, [sp, #16]
d00438f0:	9307      	str	r3, [sp, #28]
d00438f2:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d00438f6:	931a      	str	r3, [sp, #104]	; 0x68
d00438f8:	4654      	mov	r4, sl
d00438fa:	2205      	movs	r2, #5
d00438fc:	f814 1b01 	ldrb.w	r1, [r4], #1
d0043900:	4851      	ldr	r0, [pc, #324]	; (d0043a48 <_svfiprintf_r+0x1ec>)
d0043902:	f000 fabd 	bl	d0043e80 <memchr>
d0043906:	9a04      	ldr	r2, [sp, #16]
d0043908:	b9d8      	cbnz	r0, d0043942 <_svfiprintf_r+0xe6>
d004390a:	06d0      	lsls	r0, r2, #27
d004390c:	bf44      	itt	mi
d004390e:	2320      	movmi	r3, #32
d0043910:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0043914:	0711      	lsls	r1, r2, #28
d0043916:	bf44      	itt	mi
d0043918:	232b      	movmi	r3, #43	; 0x2b
d004391a:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d004391e:	f89a 3000 	ldrb.w	r3, [sl]
d0043922:	2b2a      	cmp	r3, #42	; 0x2a
d0043924:	d015      	beq.n	d0043952 <_svfiprintf_r+0xf6>
d0043926:	9a07      	ldr	r2, [sp, #28]
d0043928:	4654      	mov	r4, sl
d004392a:	2000      	movs	r0, #0
d004392c:	f04f 0c0a 	mov.w	ip, #10
d0043930:	4621      	mov	r1, r4
d0043932:	f811 3b01 	ldrb.w	r3, [r1], #1
d0043936:	3b30      	subs	r3, #48	; 0x30
d0043938:	2b09      	cmp	r3, #9
d004393a:	d94e      	bls.n	d00439da <_svfiprintf_r+0x17e>
d004393c:	b1b0      	cbz	r0, d004396c <_svfiprintf_r+0x110>
d004393e:	9207      	str	r2, [sp, #28]
d0043940:	e014      	b.n	d004396c <_svfiprintf_r+0x110>
d0043942:	eba0 0308 	sub.w	r3, r0, r8
d0043946:	fa09 f303 	lsl.w	r3, r9, r3
d004394a:	4313      	orrs	r3, r2
d004394c:	9304      	str	r3, [sp, #16]
d004394e:	46a2      	mov	sl, r4
d0043950:	e7d2      	b.n	d00438f8 <_svfiprintf_r+0x9c>
d0043952:	9b03      	ldr	r3, [sp, #12]
d0043954:	1d19      	adds	r1, r3, #4
d0043956:	681b      	ldr	r3, [r3, #0]
d0043958:	9103      	str	r1, [sp, #12]
d004395a:	2b00      	cmp	r3, #0
d004395c:	bfbb      	ittet	lt
d004395e:	425b      	neglt	r3, r3
d0043960:	f042 0202 	orrlt.w	r2, r2, #2
d0043964:	9307      	strge	r3, [sp, #28]
d0043966:	9307      	strlt	r3, [sp, #28]
d0043968:	bfb8      	it	lt
d004396a:	9204      	strlt	r2, [sp, #16]
d004396c:	7823      	ldrb	r3, [r4, #0]
d004396e:	2b2e      	cmp	r3, #46	; 0x2e
d0043970:	d10c      	bne.n	d004398c <_svfiprintf_r+0x130>
d0043972:	7863      	ldrb	r3, [r4, #1]
d0043974:	2b2a      	cmp	r3, #42	; 0x2a
d0043976:	d135      	bne.n	d00439e4 <_svfiprintf_r+0x188>
d0043978:	9b03      	ldr	r3, [sp, #12]
d004397a:	1d1a      	adds	r2, r3, #4
d004397c:	681b      	ldr	r3, [r3, #0]
d004397e:	9203      	str	r2, [sp, #12]
d0043980:	2b00      	cmp	r3, #0
d0043982:	bfb8      	it	lt
d0043984:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0043988:	3402      	adds	r4, #2
d004398a:	9305      	str	r3, [sp, #20]
d004398c:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d0043a58 <_svfiprintf_r+0x1fc>
d0043990:	7821      	ldrb	r1, [r4, #0]
d0043992:	2203      	movs	r2, #3
d0043994:	4650      	mov	r0, sl
d0043996:	f000 fa73 	bl	d0043e80 <memchr>
d004399a:	b140      	cbz	r0, d00439ae <_svfiprintf_r+0x152>
d004399c:	2340      	movs	r3, #64	; 0x40
d004399e:	eba0 000a 	sub.w	r0, r0, sl
d00439a2:	fa03 f000 	lsl.w	r0, r3, r0
d00439a6:	9b04      	ldr	r3, [sp, #16]
d00439a8:	4303      	orrs	r3, r0
d00439aa:	3401      	adds	r4, #1
d00439ac:	9304      	str	r3, [sp, #16]
d00439ae:	f814 1b01 	ldrb.w	r1, [r4], #1
d00439b2:	4826      	ldr	r0, [pc, #152]	; (d0043a4c <_svfiprintf_r+0x1f0>)
d00439b4:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d00439b8:	2206      	movs	r2, #6
d00439ba:	f000 fa61 	bl	d0043e80 <memchr>
d00439be:	2800      	cmp	r0, #0
d00439c0:	d038      	beq.n	d0043a34 <_svfiprintf_r+0x1d8>
d00439c2:	4b23      	ldr	r3, [pc, #140]	; (d0043a50 <_svfiprintf_r+0x1f4>)
d00439c4:	bb1b      	cbnz	r3, d0043a0e <_svfiprintf_r+0x1b2>
d00439c6:	9b03      	ldr	r3, [sp, #12]
d00439c8:	3307      	adds	r3, #7
d00439ca:	f023 0307 	bic.w	r3, r3, #7
d00439ce:	3308      	adds	r3, #8
d00439d0:	9303      	str	r3, [sp, #12]
d00439d2:	9b09      	ldr	r3, [sp, #36]	; 0x24
d00439d4:	4433      	add	r3, r6
d00439d6:	9309      	str	r3, [sp, #36]	; 0x24
d00439d8:	e767      	b.n	d00438aa <_svfiprintf_r+0x4e>
d00439da:	fb0c 3202 	mla	r2, ip, r2, r3
d00439de:	460c      	mov	r4, r1
d00439e0:	2001      	movs	r0, #1
d00439e2:	e7a5      	b.n	d0043930 <_svfiprintf_r+0xd4>
d00439e4:	2300      	movs	r3, #0
d00439e6:	3401      	adds	r4, #1
d00439e8:	9305      	str	r3, [sp, #20]
d00439ea:	4619      	mov	r1, r3
d00439ec:	f04f 0c0a 	mov.w	ip, #10
d00439f0:	4620      	mov	r0, r4
d00439f2:	f810 2b01 	ldrb.w	r2, [r0], #1
d00439f6:	3a30      	subs	r2, #48	; 0x30
d00439f8:	2a09      	cmp	r2, #9
d00439fa:	d903      	bls.n	d0043a04 <_svfiprintf_r+0x1a8>
d00439fc:	2b00      	cmp	r3, #0
d00439fe:	d0c5      	beq.n	d004398c <_svfiprintf_r+0x130>
d0043a00:	9105      	str	r1, [sp, #20]
d0043a02:	e7c3      	b.n	d004398c <_svfiprintf_r+0x130>
d0043a04:	fb0c 2101 	mla	r1, ip, r1, r2
d0043a08:	4604      	mov	r4, r0
d0043a0a:	2301      	movs	r3, #1
d0043a0c:	e7f0      	b.n	d00439f0 <_svfiprintf_r+0x194>
d0043a0e:	ab03      	add	r3, sp, #12
d0043a10:	9300      	str	r3, [sp, #0]
d0043a12:	462a      	mov	r2, r5
d0043a14:	4b0f      	ldr	r3, [pc, #60]	; (d0043a54 <_svfiprintf_r+0x1f8>)
d0043a16:	a904      	add	r1, sp, #16
d0043a18:	4638      	mov	r0, r7
d0043a1a:	f3af 8000 	nop.w
d0043a1e:	1c42      	adds	r2, r0, #1
d0043a20:	4606      	mov	r6, r0
d0043a22:	d1d6      	bne.n	d00439d2 <_svfiprintf_r+0x176>
d0043a24:	89ab      	ldrh	r3, [r5, #12]
d0043a26:	065b      	lsls	r3, r3, #25
d0043a28:	f53f af2c 	bmi.w	d0043884 <_svfiprintf_r+0x28>
d0043a2c:	9809      	ldr	r0, [sp, #36]	; 0x24
d0043a2e:	b01d      	add	sp, #116	; 0x74
d0043a30:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0043a34:	ab03      	add	r3, sp, #12
d0043a36:	9300      	str	r3, [sp, #0]
d0043a38:	462a      	mov	r2, r5
d0043a3a:	4b06      	ldr	r3, [pc, #24]	; (d0043a54 <_svfiprintf_r+0x1f8>)
d0043a3c:	a904      	add	r1, sp, #16
d0043a3e:	4638      	mov	r0, r7
d0043a40:	f000 f87a 	bl	d0043b38 <_printf_i>
d0043a44:	e7eb      	b.n	d0043a1e <_svfiprintf_r+0x1c2>
d0043a46:	bf00      	nop
d0043a48:	d0044294 	.word	0xd0044294
d0043a4c:	d004429e 	.word	0xd004429e
d0043a50:	00000000 	.word	0x00000000
d0043a54:	d00437a5 	.word	0xd00437a5
d0043a58:	d004429a 	.word	0xd004429a

d0043a5c <_printf_common>:
d0043a5c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0043a60:	4616      	mov	r6, r2
d0043a62:	4699      	mov	r9, r3
d0043a64:	688a      	ldr	r2, [r1, #8]
d0043a66:	690b      	ldr	r3, [r1, #16]
d0043a68:	f8dd 8020 	ldr.w	r8, [sp, #32]
d0043a6c:	4293      	cmp	r3, r2
d0043a6e:	bfb8      	it	lt
d0043a70:	4613      	movlt	r3, r2
d0043a72:	6033      	str	r3, [r6, #0]
d0043a74:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d0043a78:	4607      	mov	r7, r0
d0043a7a:	460c      	mov	r4, r1
d0043a7c:	b10a      	cbz	r2, d0043a82 <_printf_common+0x26>
d0043a7e:	3301      	adds	r3, #1
d0043a80:	6033      	str	r3, [r6, #0]
d0043a82:	6823      	ldr	r3, [r4, #0]
d0043a84:	0699      	lsls	r1, r3, #26
d0043a86:	bf42      	ittt	mi
d0043a88:	6833      	ldrmi	r3, [r6, #0]
d0043a8a:	3302      	addmi	r3, #2
d0043a8c:	6033      	strmi	r3, [r6, #0]
d0043a8e:	6825      	ldr	r5, [r4, #0]
d0043a90:	f015 0506 	ands.w	r5, r5, #6
d0043a94:	d106      	bne.n	d0043aa4 <_printf_common+0x48>
d0043a96:	f104 0a19 	add.w	sl, r4, #25
d0043a9a:	68e3      	ldr	r3, [r4, #12]
d0043a9c:	6832      	ldr	r2, [r6, #0]
d0043a9e:	1a9b      	subs	r3, r3, r2
d0043aa0:	42ab      	cmp	r3, r5
d0043aa2:	dc26      	bgt.n	d0043af2 <_printf_common+0x96>
d0043aa4:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0043aa8:	1e13      	subs	r3, r2, #0
d0043aaa:	6822      	ldr	r2, [r4, #0]
d0043aac:	bf18      	it	ne
d0043aae:	2301      	movne	r3, #1
d0043ab0:	0692      	lsls	r2, r2, #26
d0043ab2:	d42b      	bmi.n	d0043b0c <_printf_common+0xb0>
d0043ab4:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0043ab8:	4649      	mov	r1, r9
d0043aba:	4638      	mov	r0, r7
d0043abc:	47c0      	blx	r8
d0043abe:	3001      	adds	r0, #1
d0043ac0:	d01e      	beq.n	d0043b00 <_printf_common+0xa4>
d0043ac2:	6823      	ldr	r3, [r4, #0]
d0043ac4:	68e5      	ldr	r5, [r4, #12]
d0043ac6:	6832      	ldr	r2, [r6, #0]
d0043ac8:	f003 0306 	and.w	r3, r3, #6
d0043acc:	2b04      	cmp	r3, #4
d0043ace:	bf08      	it	eq
d0043ad0:	1aad      	subeq	r5, r5, r2
d0043ad2:	68a3      	ldr	r3, [r4, #8]
d0043ad4:	6922      	ldr	r2, [r4, #16]
d0043ad6:	bf0c      	ite	eq
d0043ad8:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d0043adc:	2500      	movne	r5, #0
d0043ade:	4293      	cmp	r3, r2
d0043ae0:	bfc4      	itt	gt
d0043ae2:	1a9b      	subgt	r3, r3, r2
d0043ae4:	18ed      	addgt	r5, r5, r3
d0043ae6:	2600      	movs	r6, #0
d0043ae8:	341a      	adds	r4, #26
d0043aea:	42b5      	cmp	r5, r6
d0043aec:	d11a      	bne.n	d0043b24 <_printf_common+0xc8>
d0043aee:	2000      	movs	r0, #0
d0043af0:	e008      	b.n	d0043b04 <_printf_common+0xa8>
d0043af2:	2301      	movs	r3, #1
d0043af4:	4652      	mov	r2, sl
d0043af6:	4649      	mov	r1, r9
d0043af8:	4638      	mov	r0, r7
d0043afa:	47c0      	blx	r8
d0043afc:	3001      	adds	r0, #1
d0043afe:	d103      	bne.n	d0043b08 <_printf_common+0xac>
d0043b00:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0043b04:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0043b08:	3501      	adds	r5, #1
d0043b0a:	e7c6      	b.n	d0043a9a <_printf_common+0x3e>
d0043b0c:	18e1      	adds	r1, r4, r3
d0043b0e:	1c5a      	adds	r2, r3, #1
d0043b10:	2030      	movs	r0, #48	; 0x30
d0043b12:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d0043b16:	4422      	add	r2, r4
d0043b18:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d0043b1c:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d0043b20:	3302      	adds	r3, #2
d0043b22:	e7c7      	b.n	d0043ab4 <_printf_common+0x58>
d0043b24:	2301      	movs	r3, #1
d0043b26:	4622      	mov	r2, r4
d0043b28:	4649      	mov	r1, r9
d0043b2a:	4638      	mov	r0, r7
d0043b2c:	47c0      	blx	r8
d0043b2e:	3001      	adds	r0, #1
d0043b30:	d0e6      	beq.n	d0043b00 <_printf_common+0xa4>
d0043b32:	3601      	adds	r6, #1
d0043b34:	e7d9      	b.n	d0043aea <_printf_common+0x8e>
	...

d0043b38 <_printf_i>:
d0043b38:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0043b3c:	460c      	mov	r4, r1
d0043b3e:	4691      	mov	r9, r2
d0043b40:	7e27      	ldrb	r7, [r4, #24]
d0043b42:	990c      	ldr	r1, [sp, #48]	; 0x30
d0043b44:	2f78      	cmp	r7, #120	; 0x78
d0043b46:	4680      	mov	r8, r0
d0043b48:	469a      	mov	sl, r3
d0043b4a:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0043b4e:	d807      	bhi.n	d0043b60 <_printf_i+0x28>
d0043b50:	2f62      	cmp	r7, #98	; 0x62
d0043b52:	d80a      	bhi.n	d0043b6a <_printf_i+0x32>
d0043b54:	2f00      	cmp	r7, #0
d0043b56:	f000 80d8 	beq.w	d0043d0a <_printf_i+0x1d2>
d0043b5a:	2f58      	cmp	r7, #88	; 0x58
d0043b5c:	f000 80a3 	beq.w	d0043ca6 <_printf_i+0x16e>
d0043b60:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0043b64:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d0043b68:	e03a      	b.n	d0043be0 <_printf_i+0xa8>
d0043b6a:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d0043b6e:	2b15      	cmp	r3, #21
d0043b70:	d8f6      	bhi.n	d0043b60 <_printf_i+0x28>
d0043b72:	a001      	add	r0, pc, #4	; (adr r0, d0043b78 <_printf_i+0x40>)
d0043b74:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d0043b78:	d0043bd1 	.word	0xd0043bd1
d0043b7c:	d0043be5 	.word	0xd0043be5
d0043b80:	d0043b61 	.word	0xd0043b61
d0043b84:	d0043b61 	.word	0xd0043b61
d0043b88:	d0043b61 	.word	0xd0043b61
d0043b8c:	d0043b61 	.word	0xd0043b61
d0043b90:	d0043be5 	.word	0xd0043be5
d0043b94:	d0043b61 	.word	0xd0043b61
d0043b98:	d0043b61 	.word	0xd0043b61
d0043b9c:	d0043b61 	.word	0xd0043b61
d0043ba0:	d0043b61 	.word	0xd0043b61
d0043ba4:	d0043cf1 	.word	0xd0043cf1
d0043ba8:	d0043c15 	.word	0xd0043c15
d0043bac:	d0043cd3 	.word	0xd0043cd3
d0043bb0:	d0043b61 	.word	0xd0043b61
d0043bb4:	d0043b61 	.word	0xd0043b61
d0043bb8:	d0043d13 	.word	0xd0043d13
d0043bbc:	d0043b61 	.word	0xd0043b61
d0043bc0:	d0043c15 	.word	0xd0043c15
d0043bc4:	d0043b61 	.word	0xd0043b61
d0043bc8:	d0043b61 	.word	0xd0043b61
d0043bcc:	d0043cdb 	.word	0xd0043cdb
d0043bd0:	680b      	ldr	r3, [r1, #0]
d0043bd2:	1d1a      	adds	r2, r3, #4
d0043bd4:	681b      	ldr	r3, [r3, #0]
d0043bd6:	600a      	str	r2, [r1, #0]
d0043bd8:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0043bdc:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d0043be0:	2301      	movs	r3, #1
d0043be2:	e0a3      	b.n	d0043d2c <_printf_i+0x1f4>
d0043be4:	6825      	ldr	r5, [r4, #0]
d0043be6:	6808      	ldr	r0, [r1, #0]
d0043be8:	062e      	lsls	r6, r5, #24
d0043bea:	f100 0304 	add.w	r3, r0, #4
d0043bee:	d50a      	bpl.n	d0043c06 <_printf_i+0xce>
d0043bf0:	6805      	ldr	r5, [r0, #0]
d0043bf2:	600b      	str	r3, [r1, #0]
d0043bf4:	2d00      	cmp	r5, #0
d0043bf6:	da03      	bge.n	d0043c00 <_printf_i+0xc8>
d0043bf8:	232d      	movs	r3, #45	; 0x2d
d0043bfa:	426d      	negs	r5, r5
d0043bfc:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0043c00:	485e      	ldr	r0, [pc, #376]	; (d0043d7c <_printf_i+0x244>)
d0043c02:	230a      	movs	r3, #10
d0043c04:	e019      	b.n	d0043c3a <_printf_i+0x102>
d0043c06:	f015 0f40 	tst.w	r5, #64	; 0x40
d0043c0a:	6805      	ldr	r5, [r0, #0]
d0043c0c:	600b      	str	r3, [r1, #0]
d0043c0e:	bf18      	it	ne
d0043c10:	b22d      	sxthne	r5, r5
d0043c12:	e7ef      	b.n	d0043bf4 <_printf_i+0xbc>
d0043c14:	680b      	ldr	r3, [r1, #0]
d0043c16:	6825      	ldr	r5, [r4, #0]
d0043c18:	1d18      	adds	r0, r3, #4
d0043c1a:	6008      	str	r0, [r1, #0]
d0043c1c:	0628      	lsls	r0, r5, #24
d0043c1e:	d501      	bpl.n	d0043c24 <_printf_i+0xec>
d0043c20:	681d      	ldr	r5, [r3, #0]
d0043c22:	e002      	b.n	d0043c2a <_printf_i+0xf2>
d0043c24:	0669      	lsls	r1, r5, #25
d0043c26:	d5fb      	bpl.n	d0043c20 <_printf_i+0xe8>
d0043c28:	881d      	ldrh	r5, [r3, #0]
d0043c2a:	4854      	ldr	r0, [pc, #336]	; (d0043d7c <_printf_i+0x244>)
d0043c2c:	2f6f      	cmp	r7, #111	; 0x6f
d0043c2e:	bf0c      	ite	eq
d0043c30:	2308      	moveq	r3, #8
d0043c32:	230a      	movne	r3, #10
d0043c34:	2100      	movs	r1, #0
d0043c36:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d0043c3a:	6866      	ldr	r6, [r4, #4]
d0043c3c:	60a6      	str	r6, [r4, #8]
d0043c3e:	2e00      	cmp	r6, #0
d0043c40:	bfa2      	ittt	ge
d0043c42:	6821      	ldrge	r1, [r4, #0]
d0043c44:	f021 0104 	bicge.w	r1, r1, #4
d0043c48:	6021      	strge	r1, [r4, #0]
d0043c4a:	b90d      	cbnz	r5, d0043c50 <_printf_i+0x118>
d0043c4c:	2e00      	cmp	r6, #0
d0043c4e:	d04d      	beq.n	d0043cec <_printf_i+0x1b4>
d0043c50:	4616      	mov	r6, r2
d0043c52:	fbb5 f1f3 	udiv	r1, r5, r3
d0043c56:	fb03 5711 	mls	r7, r3, r1, r5
d0043c5a:	5dc7      	ldrb	r7, [r0, r7]
d0043c5c:	f806 7d01 	strb.w	r7, [r6, #-1]!
d0043c60:	462f      	mov	r7, r5
d0043c62:	42bb      	cmp	r3, r7
d0043c64:	460d      	mov	r5, r1
d0043c66:	d9f4      	bls.n	d0043c52 <_printf_i+0x11a>
d0043c68:	2b08      	cmp	r3, #8
d0043c6a:	d10b      	bne.n	d0043c84 <_printf_i+0x14c>
d0043c6c:	6823      	ldr	r3, [r4, #0]
d0043c6e:	07df      	lsls	r7, r3, #31
d0043c70:	d508      	bpl.n	d0043c84 <_printf_i+0x14c>
d0043c72:	6923      	ldr	r3, [r4, #16]
d0043c74:	6861      	ldr	r1, [r4, #4]
d0043c76:	4299      	cmp	r1, r3
d0043c78:	bfde      	ittt	le
d0043c7a:	2330      	movle	r3, #48	; 0x30
d0043c7c:	f806 3c01 	strble.w	r3, [r6, #-1]
d0043c80:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d0043c84:	1b92      	subs	r2, r2, r6
d0043c86:	6122      	str	r2, [r4, #16]
d0043c88:	f8cd a000 	str.w	sl, [sp]
d0043c8c:	464b      	mov	r3, r9
d0043c8e:	aa03      	add	r2, sp, #12
d0043c90:	4621      	mov	r1, r4
d0043c92:	4640      	mov	r0, r8
d0043c94:	f7ff fee2 	bl	d0043a5c <_printf_common>
d0043c98:	3001      	adds	r0, #1
d0043c9a:	d14c      	bne.n	d0043d36 <_printf_i+0x1fe>
d0043c9c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0043ca0:	b004      	add	sp, #16
d0043ca2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0043ca6:	4835      	ldr	r0, [pc, #212]	; (d0043d7c <_printf_i+0x244>)
d0043ca8:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d0043cac:	6823      	ldr	r3, [r4, #0]
d0043cae:	680e      	ldr	r6, [r1, #0]
d0043cb0:	061f      	lsls	r7, r3, #24
d0043cb2:	f856 5b04 	ldr.w	r5, [r6], #4
d0043cb6:	600e      	str	r6, [r1, #0]
d0043cb8:	d514      	bpl.n	d0043ce4 <_printf_i+0x1ac>
d0043cba:	07d9      	lsls	r1, r3, #31
d0043cbc:	bf44      	itt	mi
d0043cbe:	f043 0320 	orrmi.w	r3, r3, #32
d0043cc2:	6023      	strmi	r3, [r4, #0]
d0043cc4:	b91d      	cbnz	r5, d0043cce <_printf_i+0x196>
d0043cc6:	6823      	ldr	r3, [r4, #0]
d0043cc8:	f023 0320 	bic.w	r3, r3, #32
d0043ccc:	6023      	str	r3, [r4, #0]
d0043cce:	2310      	movs	r3, #16
d0043cd0:	e7b0      	b.n	d0043c34 <_printf_i+0xfc>
d0043cd2:	6823      	ldr	r3, [r4, #0]
d0043cd4:	f043 0320 	orr.w	r3, r3, #32
d0043cd8:	6023      	str	r3, [r4, #0]
d0043cda:	2378      	movs	r3, #120	; 0x78
d0043cdc:	4828      	ldr	r0, [pc, #160]	; (d0043d80 <_printf_i+0x248>)
d0043cde:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d0043ce2:	e7e3      	b.n	d0043cac <_printf_i+0x174>
d0043ce4:	065e      	lsls	r6, r3, #25
d0043ce6:	bf48      	it	mi
d0043ce8:	b2ad      	uxthmi	r5, r5
d0043cea:	e7e6      	b.n	d0043cba <_printf_i+0x182>
d0043cec:	4616      	mov	r6, r2
d0043cee:	e7bb      	b.n	d0043c68 <_printf_i+0x130>
d0043cf0:	680b      	ldr	r3, [r1, #0]
d0043cf2:	6826      	ldr	r6, [r4, #0]
d0043cf4:	6960      	ldr	r0, [r4, #20]
d0043cf6:	1d1d      	adds	r5, r3, #4
d0043cf8:	600d      	str	r5, [r1, #0]
d0043cfa:	0635      	lsls	r5, r6, #24
d0043cfc:	681b      	ldr	r3, [r3, #0]
d0043cfe:	d501      	bpl.n	d0043d04 <_printf_i+0x1cc>
d0043d00:	6018      	str	r0, [r3, #0]
d0043d02:	e002      	b.n	d0043d0a <_printf_i+0x1d2>
d0043d04:	0671      	lsls	r1, r6, #25
d0043d06:	d5fb      	bpl.n	d0043d00 <_printf_i+0x1c8>
d0043d08:	8018      	strh	r0, [r3, #0]
d0043d0a:	2300      	movs	r3, #0
d0043d0c:	6123      	str	r3, [r4, #16]
d0043d0e:	4616      	mov	r6, r2
d0043d10:	e7ba      	b.n	d0043c88 <_printf_i+0x150>
d0043d12:	680b      	ldr	r3, [r1, #0]
d0043d14:	1d1a      	adds	r2, r3, #4
d0043d16:	600a      	str	r2, [r1, #0]
d0043d18:	681e      	ldr	r6, [r3, #0]
d0043d1a:	6862      	ldr	r2, [r4, #4]
d0043d1c:	2100      	movs	r1, #0
d0043d1e:	4630      	mov	r0, r6
d0043d20:	f000 f8ae 	bl	d0043e80 <memchr>
d0043d24:	b108      	cbz	r0, d0043d2a <_printf_i+0x1f2>
d0043d26:	1b80      	subs	r0, r0, r6
d0043d28:	6060      	str	r0, [r4, #4]
d0043d2a:	6863      	ldr	r3, [r4, #4]
d0043d2c:	6123      	str	r3, [r4, #16]
d0043d2e:	2300      	movs	r3, #0
d0043d30:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0043d34:	e7a8      	b.n	d0043c88 <_printf_i+0x150>
d0043d36:	6923      	ldr	r3, [r4, #16]
d0043d38:	4632      	mov	r2, r6
d0043d3a:	4649      	mov	r1, r9
d0043d3c:	4640      	mov	r0, r8
d0043d3e:	47d0      	blx	sl
d0043d40:	3001      	adds	r0, #1
d0043d42:	d0ab      	beq.n	d0043c9c <_printf_i+0x164>
d0043d44:	6823      	ldr	r3, [r4, #0]
d0043d46:	079b      	lsls	r3, r3, #30
d0043d48:	d413      	bmi.n	d0043d72 <_printf_i+0x23a>
d0043d4a:	68e0      	ldr	r0, [r4, #12]
d0043d4c:	9b03      	ldr	r3, [sp, #12]
d0043d4e:	4298      	cmp	r0, r3
d0043d50:	bfb8      	it	lt
d0043d52:	4618      	movlt	r0, r3
d0043d54:	e7a4      	b.n	d0043ca0 <_printf_i+0x168>
d0043d56:	2301      	movs	r3, #1
d0043d58:	4632      	mov	r2, r6
d0043d5a:	4649      	mov	r1, r9
d0043d5c:	4640      	mov	r0, r8
d0043d5e:	47d0      	blx	sl
d0043d60:	3001      	adds	r0, #1
d0043d62:	d09b      	beq.n	d0043c9c <_printf_i+0x164>
d0043d64:	3501      	adds	r5, #1
d0043d66:	68e3      	ldr	r3, [r4, #12]
d0043d68:	9903      	ldr	r1, [sp, #12]
d0043d6a:	1a5b      	subs	r3, r3, r1
d0043d6c:	42ab      	cmp	r3, r5
d0043d6e:	dcf2      	bgt.n	d0043d56 <_printf_i+0x21e>
d0043d70:	e7eb      	b.n	d0043d4a <_printf_i+0x212>
d0043d72:	2500      	movs	r5, #0
d0043d74:	f104 0619 	add.w	r6, r4, #25
d0043d78:	e7f5      	b.n	d0043d66 <_printf_i+0x22e>
d0043d7a:	bf00      	nop
d0043d7c:	d00442a5 	.word	0xd00442a5
d0043d80:	d00442b6 	.word	0xd00442b6

d0043d84 <__sread>:
d0043d84:	b510      	push	{r4, lr}
d0043d86:	460c      	mov	r4, r1
d0043d88:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0043d8c:	f000 f908 	bl	d0043fa0 <_read_r>
d0043d90:	2800      	cmp	r0, #0
d0043d92:	bfab      	itete	ge
d0043d94:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0043d96:	89a3      	ldrhlt	r3, [r4, #12]
d0043d98:	181b      	addge	r3, r3, r0
d0043d9a:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d0043d9e:	bfac      	ite	ge
d0043da0:	6563      	strge	r3, [r4, #84]	; 0x54
d0043da2:	81a3      	strhlt	r3, [r4, #12]
d0043da4:	bd10      	pop	{r4, pc}

d0043da6 <__swrite>:
d0043da6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0043daa:	461f      	mov	r7, r3
d0043dac:	898b      	ldrh	r3, [r1, #12]
d0043dae:	05db      	lsls	r3, r3, #23
d0043db0:	4605      	mov	r5, r0
d0043db2:	460c      	mov	r4, r1
d0043db4:	4616      	mov	r6, r2
d0043db6:	d505      	bpl.n	d0043dc4 <__swrite+0x1e>
d0043db8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0043dbc:	2302      	movs	r3, #2
d0043dbe:	2200      	movs	r2, #0
d0043dc0:	f000 f846 	bl	d0043e50 <_lseek_r>
d0043dc4:	89a3      	ldrh	r3, [r4, #12]
d0043dc6:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0043dca:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0043dce:	81a3      	strh	r3, [r4, #12]
d0043dd0:	4632      	mov	r2, r6
d0043dd2:	463b      	mov	r3, r7
d0043dd4:	4628      	mov	r0, r5
d0043dd6:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0043dda:	f7fc b98f 	b.w	d00400fc <_write_r>

d0043dde <__sseek>:
d0043dde:	b510      	push	{r4, lr}
d0043de0:	460c      	mov	r4, r1
d0043de2:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0043de6:	f000 f833 	bl	d0043e50 <_lseek_r>
d0043dea:	1c43      	adds	r3, r0, #1
d0043dec:	89a3      	ldrh	r3, [r4, #12]
d0043dee:	bf15      	itete	ne
d0043df0:	6560      	strne	r0, [r4, #84]	; 0x54
d0043df2:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0043df6:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d0043dfa:	81a3      	strheq	r3, [r4, #12]
d0043dfc:	bf18      	it	ne
d0043dfe:	81a3      	strhne	r3, [r4, #12]
d0043e00:	bd10      	pop	{r4, pc}

d0043e02 <__sclose>:
d0043e02:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0043e06:	f000 b801 	b.w	d0043e0c <_close_r>
	...

d0043e0c <_close_r>:
d0043e0c:	b538      	push	{r3, r4, r5, lr}
d0043e0e:	4d06      	ldr	r5, [pc, #24]	; (d0043e28 <_close_r+0x1c>)
d0043e10:	2300      	movs	r3, #0
d0043e12:	4604      	mov	r4, r0
d0043e14:	4608      	mov	r0, r1
d0043e16:	602b      	str	r3, [r5, #0]
d0043e18:	f7fc f9aa 	bl	d0040170 <_close>
d0043e1c:	1c43      	adds	r3, r0, #1
d0043e1e:	d102      	bne.n	d0043e26 <_close_r+0x1a>
d0043e20:	682b      	ldr	r3, [r5, #0]
d0043e22:	b103      	cbz	r3, d0043e26 <_close_r+0x1a>
d0043e24:	6023      	str	r3, [r4, #0]
d0043e26:	bd38      	pop	{r3, r4, r5, pc}
d0043e28:	d0046fb0 	.word	0xd0046fb0

d0043e2c <_fstat_r>:
d0043e2c:	b538      	push	{r3, r4, r5, lr}
d0043e2e:	4d07      	ldr	r5, [pc, #28]	; (d0043e4c <_fstat_r+0x20>)
d0043e30:	2300      	movs	r3, #0
d0043e32:	4604      	mov	r4, r0
d0043e34:	4608      	mov	r0, r1
d0043e36:	4611      	mov	r1, r2
d0043e38:	602b      	str	r3, [r5, #0]
d0043e3a:	f7fc f99d 	bl	d0040178 <_fstat>
d0043e3e:	1c43      	adds	r3, r0, #1
d0043e40:	d102      	bne.n	d0043e48 <_fstat_r+0x1c>
d0043e42:	682b      	ldr	r3, [r5, #0]
d0043e44:	b103      	cbz	r3, d0043e48 <_fstat_r+0x1c>
d0043e46:	6023      	str	r3, [r4, #0]
d0043e48:	bd38      	pop	{r3, r4, r5, pc}
d0043e4a:	bf00      	nop
d0043e4c:	d0046fb0 	.word	0xd0046fb0

d0043e50 <_lseek_r>:
d0043e50:	b538      	push	{r3, r4, r5, lr}
d0043e52:	4d07      	ldr	r5, [pc, #28]	; (d0043e70 <_lseek_r+0x20>)
d0043e54:	4604      	mov	r4, r0
d0043e56:	4608      	mov	r0, r1
d0043e58:	4611      	mov	r1, r2
d0043e5a:	2200      	movs	r2, #0
d0043e5c:	602a      	str	r2, [r5, #0]
d0043e5e:	461a      	mov	r2, r3
d0043e60:	f7fc f990 	bl	d0040184 <_lseek>
d0043e64:	1c43      	adds	r3, r0, #1
d0043e66:	d102      	bne.n	d0043e6e <_lseek_r+0x1e>
d0043e68:	682b      	ldr	r3, [r5, #0]
d0043e6a:	b103      	cbz	r3, d0043e6e <_lseek_r+0x1e>
d0043e6c:	6023      	str	r3, [r4, #0]
d0043e6e:	bd38      	pop	{r3, r4, r5, pc}
d0043e70:	d0046fb0 	.word	0xd0046fb0
	...

d0043e80 <memchr>:
d0043e80:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0043e84:	2a10      	cmp	r2, #16
d0043e86:	db2b      	blt.n	d0043ee0 <memchr+0x60>
d0043e88:	f010 0f07 	tst.w	r0, #7
d0043e8c:	d008      	beq.n	d0043ea0 <memchr+0x20>
d0043e8e:	f810 3b01 	ldrb.w	r3, [r0], #1
d0043e92:	3a01      	subs	r2, #1
d0043e94:	428b      	cmp	r3, r1
d0043e96:	d02d      	beq.n	d0043ef4 <memchr+0x74>
d0043e98:	f010 0f07 	tst.w	r0, #7
d0043e9c:	b342      	cbz	r2, d0043ef0 <memchr+0x70>
d0043e9e:	d1f6      	bne.n	d0043e8e <memchr+0xe>
d0043ea0:	b4f0      	push	{r4, r5, r6, r7}
d0043ea2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0043ea6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d0043eaa:	f022 0407 	bic.w	r4, r2, #7
d0043eae:	f07f 0700 	mvns.w	r7, #0
d0043eb2:	2300      	movs	r3, #0
d0043eb4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0043eb8:	3c08      	subs	r4, #8
d0043eba:	ea85 0501 	eor.w	r5, r5, r1
d0043ebe:	ea86 0601 	eor.w	r6, r6, r1
d0043ec2:	fa85 f547 	uadd8	r5, r5, r7
d0043ec6:	faa3 f587 	sel	r5, r3, r7
d0043eca:	fa86 f647 	uadd8	r6, r6, r7
d0043ece:	faa5 f687 	sel	r6, r5, r7
d0043ed2:	b98e      	cbnz	r6, d0043ef8 <memchr+0x78>
d0043ed4:	d1ee      	bne.n	d0043eb4 <memchr+0x34>
d0043ed6:	bcf0      	pop	{r4, r5, r6, r7}
d0043ed8:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0043edc:	f002 0207 	and.w	r2, r2, #7
d0043ee0:	b132      	cbz	r2, d0043ef0 <memchr+0x70>
d0043ee2:	f810 3b01 	ldrb.w	r3, [r0], #1
d0043ee6:	3a01      	subs	r2, #1
d0043ee8:	ea83 0301 	eor.w	r3, r3, r1
d0043eec:	b113      	cbz	r3, d0043ef4 <memchr+0x74>
d0043eee:	d1f8      	bne.n	d0043ee2 <memchr+0x62>
d0043ef0:	2000      	movs	r0, #0
d0043ef2:	4770      	bx	lr
d0043ef4:	3801      	subs	r0, #1
d0043ef6:	4770      	bx	lr
d0043ef8:	2d00      	cmp	r5, #0
d0043efa:	bf06      	itte	eq
d0043efc:	4635      	moveq	r5, r6
d0043efe:	3803      	subeq	r0, #3
d0043f00:	3807      	subne	r0, #7
d0043f02:	f015 0f01 	tst.w	r5, #1
d0043f06:	d107      	bne.n	d0043f18 <memchr+0x98>
d0043f08:	3001      	adds	r0, #1
d0043f0a:	f415 7f80 	tst.w	r5, #256	; 0x100
d0043f0e:	bf02      	ittt	eq
d0043f10:	3001      	addeq	r0, #1
d0043f12:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0043f16:	3001      	addeq	r0, #1
d0043f18:	bcf0      	pop	{r4, r5, r6, r7}
d0043f1a:	3801      	subs	r0, #1
d0043f1c:	4770      	bx	lr
d0043f1e:	bf00      	nop

d0043f20 <memmove>:
d0043f20:	4288      	cmp	r0, r1
d0043f22:	b510      	push	{r4, lr}
d0043f24:	eb01 0402 	add.w	r4, r1, r2
d0043f28:	d902      	bls.n	d0043f30 <memmove+0x10>
d0043f2a:	4284      	cmp	r4, r0
d0043f2c:	4623      	mov	r3, r4
d0043f2e:	d807      	bhi.n	d0043f40 <memmove+0x20>
d0043f30:	1e43      	subs	r3, r0, #1
d0043f32:	42a1      	cmp	r1, r4
d0043f34:	d008      	beq.n	d0043f48 <memmove+0x28>
d0043f36:	f811 2b01 	ldrb.w	r2, [r1], #1
d0043f3a:	f803 2f01 	strb.w	r2, [r3, #1]!
d0043f3e:	e7f8      	b.n	d0043f32 <memmove+0x12>
d0043f40:	4402      	add	r2, r0
d0043f42:	4601      	mov	r1, r0
d0043f44:	428a      	cmp	r2, r1
d0043f46:	d100      	bne.n	d0043f4a <memmove+0x2a>
d0043f48:	bd10      	pop	{r4, pc}
d0043f4a:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d0043f4e:	f802 4d01 	strb.w	r4, [r2, #-1]!
d0043f52:	e7f7      	b.n	d0043f44 <memmove+0x24>

d0043f54 <_realloc_r>:
d0043f54:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0043f56:	4607      	mov	r7, r0
d0043f58:	4614      	mov	r4, r2
d0043f5a:	460e      	mov	r6, r1
d0043f5c:	b921      	cbnz	r1, d0043f68 <_realloc_r+0x14>
d0043f5e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0043f62:	4611      	mov	r1, r2
d0043f64:	f7ff b8ec 	b.w	d0043140 <_malloc_r>
d0043f68:	b922      	cbnz	r2, d0043f74 <_realloc_r+0x20>
d0043f6a:	f7ff f899 	bl	d00430a0 <_free_r>
d0043f6e:	4625      	mov	r5, r4
d0043f70:	4628      	mov	r0, r5
d0043f72:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0043f74:	f000 f826 	bl	d0043fc4 <_malloc_usable_size_r>
d0043f78:	42a0      	cmp	r0, r4
d0043f7a:	d20f      	bcs.n	d0043f9c <_realloc_r+0x48>
d0043f7c:	4621      	mov	r1, r4
d0043f7e:	4638      	mov	r0, r7
d0043f80:	f7ff f8de 	bl	d0043140 <_malloc_r>
d0043f84:	4605      	mov	r5, r0
d0043f86:	2800      	cmp	r0, #0
d0043f88:	d0f2      	beq.n	d0043f70 <_realloc_r+0x1c>
d0043f8a:	4631      	mov	r1, r6
d0043f8c:	4622      	mov	r2, r4
d0043f8e:	f7ff f871 	bl	d0043074 <memcpy>
d0043f92:	4631      	mov	r1, r6
d0043f94:	4638      	mov	r0, r7
d0043f96:	f7ff f883 	bl	d00430a0 <_free_r>
d0043f9a:	e7e9      	b.n	d0043f70 <_realloc_r+0x1c>
d0043f9c:	4635      	mov	r5, r6
d0043f9e:	e7e7      	b.n	d0043f70 <_realloc_r+0x1c>

d0043fa0 <_read_r>:
d0043fa0:	b538      	push	{r3, r4, r5, lr}
d0043fa2:	4d07      	ldr	r5, [pc, #28]	; (d0043fc0 <_read_r+0x20>)
d0043fa4:	4604      	mov	r4, r0
d0043fa6:	4608      	mov	r0, r1
d0043fa8:	4611      	mov	r1, r2
d0043faa:	2200      	movs	r2, #0
d0043fac:	602a      	str	r2, [r5, #0]
d0043fae:	461a      	mov	r2, r3
d0043fb0:	f7fc f8d4 	bl	d004015c <_read>
d0043fb4:	1c43      	adds	r3, r0, #1
d0043fb6:	d102      	bne.n	d0043fbe <_read_r+0x1e>
d0043fb8:	682b      	ldr	r3, [r5, #0]
d0043fba:	b103      	cbz	r3, d0043fbe <_read_r+0x1e>
d0043fbc:	6023      	str	r3, [r4, #0]
d0043fbe:	bd38      	pop	{r3, r4, r5, pc}
d0043fc0:	d0046fb0 	.word	0xd0046fb0

d0043fc4 <_malloc_usable_size_r>:
d0043fc4:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0043fc8:	1f18      	subs	r0, r3, #4
d0043fca:	2b00      	cmp	r3, #0
d0043fcc:	bfbc      	itt	lt
d0043fce:	580b      	ldrlt	r3, [r1, r0]
d0043fd0:	18c0      	addlt	r0, r0, r3
d0043fd2:	4770      	bx	lr
d0043fd4:	46464952 	.word	0x46464952
d0043fd8:	00000000 	.word	0x00000000
d0043fdc:	45564157 	.word	0x45564157
d0043fe0:	00000000 	.word	0x00000000
d0043fe4:	2f736572 	.word	0x2f736572
d0043fe8:	72747865 	.word	0x72747865
d0043fec:	66696c61 	.word	0x66696c61
d0043ff0:	61772e65 	.word	0x61772e65
d0043ff4:	00000076 	.word	0x00000076
d0043ff8:	2f736572 	.word	0x2f736572
d0043ffc:	65726966 	.word	0x65726966
d0044000:	61772e6d 	.word	0x61772e6d
d0044004:	00000076 	.word	0x00000076
d0044008:	2f736572 	.word	0x2f736572
d004400c:	75726874 	.word	0x75726874
d0044010:	2e327473 	.word	0x2e327473
d0044014:	00766177 	.word	0x00766177
d0044018:	2f736572 	.word	0x2f736572
d004401c:	65696873 	.word	0x65696873
d0044020:	3273646c 	.word	0x3273646c
d0044024:	7661772e 	.word	0x7661772e
d0044028:	00000000 	.word	0x00000000
d004402c:	2f736572 	.word	0x2f736572
d0044030:	6c707865 	.word	0x6c707865
d0044034:	5f65646f 	.word	0x5f65646f
d0044038:	2e676962 	.word	0x2e676962
d004403c:	00766177 	.word	0x00766177
d0044040:	2f736572 	.word	0x2f736572
d0044044:	6c707865 	.word	0x6c707865
d0044048:	5f65646f 	.word	0x5f65646f
d004404c:	6c616d73 	.word	0x6c616d73
d0044050:	61772e6c 	.word	0x61772e6c
d0044054:	00000076 	.word	0x00000076
d0044058:	2f736572 	.word	0x2f736572
d004405c:	6c6c6f63 	.word	0x6c6c6f63
d0044060:	2e656469 	.word	0x2e656469
d0044064:	00766177 	.word	0x00766177
d0044068:	2f736572 	.word	0x2f736572
d004406c:	656c6473 	.word	0x656c6473
d0044070:	6d2e3176 	.word	0x6d2e3176
d0044074:	0000646f 	.word	0x0000646f
d0044078:	2f736572 	.word	0x2f736572
d004407c:	6e6e7574 	.word	0x6e6e7574
d0044080:	2e316c65 	.word	0x2e316c65
d0044084:	00646f6d 	.word	0x00646f6d

d0044088 <shipframetunnel>:
d0044088:	03020100 07060504 0b0a0908 0f0e0d0c     ................
d0044098:	13121110 17161514 00000018 2f736572     ............res/
d00440a8:	72747361 5f64696f 6772616c 2e315f65     astroid_large_1.
d00440b8:	00627070 2f736572 72747361 5f64696f     ppb.res/astroid_
d00440c8:	6964656d 315f6d75 6270702e 00000000     medium_1.ppb....
d00440d8:	2f736572 72747361 5f64696f 6964656d     res/astroid_medi
d00440e8:	325f6d75 6270702e 00000000 2f736572     um_2.ppb....res/
d00440f8:	72747361 5f64696f 6c616d73 2e325f6c     astroid_small_2.
d0044108:	00627070 2f736572 70696873 702e7372     ppb.res/shiprs.p
d0044118:	00006270 2f736572 6e6e7574 68736c65     pb..res/tunnelsh
d0044128:	702e7069 00006270 2f736572 6c6c7562     ip.ppb..res/bull
d0044138:	5f737465 65707974 70702e31 00000062     ets_type1.ppb...
d0044148:	2f736572 6d616c66 702e7365 00006270     res/flames.ppb..
d0044158:	2f736572 65696873 702e646c 00006270     res/shield.ppb..
d0044168:	2f736572 746f6870 2e746e6f 00627070     res/photont.ppb.
d0044178:	2f736572 6c707865 2e65646f 00627070     res/explode.ppb.
d0044188:	2f736572 746e6f66 36313631 6270702e     res/font1616.ppb
d0044198:	00000000 2f736572 6c6c6970 6165685f     ....res/pill_hea
d00441a8:	2e68746c 00627070 2f736572 65776f70     lth.ppb.res/powe
d00441b8:	61656872 2e68746c 00627070 524f4353     rhealth.ppb.SCOR
d00441c8:	25203a45 756c3730 00000000 4556494c     E: %07lu....LIVE
d00441d8:	25203a53 0000756c 45564157 25203a53     S: %lu..WAVES: %
d00441e8:	0000756c 00003a53 00003a48 616f4c0a     lu..S:..H:...Loa
d00441f8:	676e6964 6e755420 206c656e 61746164     ding Tunnel data
d0044208:	0a2e2e2e 00000000 2f736572 746f6870     ........res/phot
d0044218:	772e6e6f 00007661 2f736572 2e752574     on.wav..res/t%u.
d0044228:	0a627070 00000000                       ppb.....

d0044230 <_global_impure_ptr>:
d0044230:	d0044b00                                .K..

d0044234 <__sf_fake_stderr>:
	...

d0044254 <__sf_fake_stdin>:
	...

d0044274 <__sf_fake_stdout>:
	...
d0044294:	2b302d23 6c680020 6665004c 47464567     #-0+ .hlL.efgEFG
d00442a4:	32313000 36353433 41393837 45444342     .0123456789ABCDE
d00442b4:	31300046 35343332 39383736 64636261     F.0123456789abcd
d00442c4:	                                         ef.

Disassembly of section .init:

d00442c8 <_init>:
d00442c8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00442ca:	bf00      	nop

Disassembly of section .fini:

d00442cc <_fini>:
d00442cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00442ce:	bf00      	nop
