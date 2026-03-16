
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
d0040034:	f002 bbca 	b.w	d00427cc <main>
d0040038:	d00442e0 	.word	0xd00442e0

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
d0040100:	d0048fd8 	.word	0xd0048fd8
d0040104:	d0600000 	.word	0xd0600000
d0040108:	d0044ba0 	.word	0xd0044ba0

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
d0040154:	f002 ff72 	bl	d004303c <__errno>
d0040158:	2209      	movs	r2, #9
d004015a:	4603      	mov	r3, r0
d004015c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0040160:	601a      	str	r2, [r3, #0]
d0040162:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0040164:	d0044b84 	.word	0xd0044b84
d0040168:	2001f000 	.word	0x2001f000

d004016c <_read>:
d004016c:	b508      	push	{r3, lr}
d004016e:	f002 ff65 	bl	d004303c <__errno>
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
d00401ba:	f002 ff3f 	bl	d004303c <__errno>
d00401be:	220c      	movs	r2, #12
d00401c0:	4603      	mov	r3, r0
d00401c2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00401c6:	601a      	str	r2, [r3, #0]
d00401c8:	bd10      	pop	{r4, pc}
d00401ca:	bf00      	nop
d00401cc:	d0044b80 	.word	0xd0044b80
d00401d0:	d0048fd8 	.word	0xd0048fd8
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
d0040228:	f002 ff1e 	bl	d0043068 <memcmp>
d004022c:	b950      	cbnz	r0, d0040244 <LoadSFX+0x6c>
d004022e:	2204      	movs	r2, #4
d0040230:	492c      	ldr	r1, [pc, #176]	; (d00402e4 <LoadSFX+0x10c>)
d0040232:	a805      	add	r0, sp, #20
d0040234:	f002 ff18 	bl	d0043068 <memcmp>
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
d004026c:	f002 feec 	bl	d0043048 <malloc>
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
d00402e0:	d0043fd8 	.word	0xd0043fd8
d00402e4:	d0043fe0 	.word	0xd0043fe0

d00402e8 <freeSFX>:
d00402e8:	6800      	ldr	r0, [r0, #0]
d00402ea:	f002 beb5 	b.w	d0043058 <free>
d00402ee:	bf00      	nop

d00402f0 <loadSounds>:
d00402f0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00402f4:	4fb1      	ldr	r7, [pc, #708]	; (d00405bc <loadSounds+0x2cc>)
d00402f6:	4cb2      	ldr	r4, [pc, #712]	; (d00405c0 <loadSounds+0x2d0>)
d00402f8:	4639      	mov	r1, r7
d00402fa:	48b2      	ldr	r0, [pc, #712]	; (d00405c4 <loadSounds+0x2d4>)
d00402fc:	f7ff ff6c 	bl	d00401d8 <LoadSFX>
d0040300:	7c26      	ldrb	r6, [r4, #16]
d0040302:	7c65      	ldrb	r5, [r4, #17]
d0040304:	2300      	movs	r3, #0
d0040306:	f894 e012 	ldrb.w	lr, [r4, #18]
d004030a:	4602      	mov	r2, r0
d004030c:	ea46 2505 	orr.w	r5, r6, r5, lsl #8
d0040310:	f894 c013 	ldrb.w	ip, [r4, #19]
d0040314:	4618      	mov	r0, r3
d0040316:	6839      	ldr	r1, [r7, #0]
d0040318:	ea45 450e 	orr.w	r5, r5, lr, lsl #16
d004031c:	4eaa      	ldr	r6, [pc, #680]	; (d00405c8 <loadSounds+0x2d8>)
d004031e:	4fab      	ldr	r7, [pc, #684]	; (d00405cc <loadSounds+0x2dc>)
d0040320:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d0040324:	f8df 92bc 	ldr.w	r9, [pc, #700]	; d00405e4 <loadSounds+0x2f4>
d0040328:	f8df 82bc 	ldr.w	r8, [pc, #700]	; d00405e8 <loadSounds+0x2f8>
d004032c:	68ad      	ldr	r5, [r5, #8]
d004032e:	68ed      	ldr	r5, [r5, #12]
d0040330:	47a8      	blx	r5
d0040332:	7c23      	ldrb	r3, [r4, #16]
d0040334:	7c62      	ldrb	r2, [r4, #17]
d0040336:	f64a 4144 	movw	r1, #44100	; 0xac44
d004033a:	7ca5      	ldrb	r5, [r4, #18]
d004033c:	2000      	movs	r0, #0
d004033e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040342:	7ce2      	ldrb	r2, [r4, #19]
d0040344:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040348:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004034c:	689b      	ldr	r3, [r3, #8]
d004034e:	691b      	ldr	r3, [r3, #16]
d0040350:	4798      	blx	r3
d0040352:	7c23      	ldrb	r3, [r4, #16]
d0040354:	7c62      	ldrb	r2, [r4, #17]
d0040356:	21f0      	movs	r1, #240	; 0xf0
d0040358:	7ca0      	ldrb	r0, [r4, #18]
d004035a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004035e:	7ce2      	ldrb	r2, [r4, #19]
d0040360:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0040364:	2000      	movs	r0, #0
d0040366:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004036a:	689b      	ldr	r3, [r3, #8]
d004036c:	695b      	ldr	r3, [r3, #20]
d004036e:	4798      	blx	r3
d0040370:	7c23      	ldrb	r3, [r4, #16]
d0040372:	7c62      	ldrb	r2, [r4, #17]
d0040374:	2100      	movs	r1, #0
d0040376:	7ca0      	ldrb	r0, [r4, #18]
d0040378:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004037c:	7ce2      	ldrb	r2, [r4, #19]
d004037e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0040382:	4608      	mov	r0, r1
d0040384:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040388:	689b      	ldr	r3, [r3, #8]
d004038a:	699b      	ldr	r3, [r3, #24]
d004038c:	4798      	blx	r3
d004038e:	7c23      	ldrb	r3, [r4, #16]
d0040390:	7c60      	ldrb	r0, [r4, #17]
d0040392:	f241 1251 	movw	r2, #4433	; 0x1151
d0040396:	7ca1      	ldrb	r1, [r4, #18]
d0040398:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d004039c:	7ce0      	ldrb	r0, [r4, #19]
d004039e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00403a2:	21c8      	movs	r1, #200	; 0xc8
d00403a4:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d00403a8:	2000      	movs	r0, #0
d00403aa:	689b      	ldr	r3, [r3, #8]
d00403ac:	69db      	ldr	r3, [r3, #28]
d00403ae:	4798      	blx	r3
d00403b0:	7c23      	ldrb	r3, [r4, #16]
d00403b2:	7c62      	ldrb	r2, [r4, #17]
d00403b4:	2100      	movs	r1, #0
d00403b6:	7ca0      	ldrb	r0, [r4, #18]
d00403b8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00403bc:	7ce2      	ldrb	r2, [r4, #19]
d00403be:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00403c2:	4608      	mov	r0, r1
d00403c4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00403c8:	689b      	ldr	r3, [r3, #8]
d00403ca:	6a1b      	ldr	r3, [r3, #32]
d00403cc:	4798      	blx	r3
d00403ce:	4631      	mov	r1, r6
d00403d0:	487f      	ldr	r0, [pc, #508]	; (d00405d0 <loadSounds+0x2e0>)
d00403d2:	f7ff ff01 	bl	d00401d8 <LoadSFX>
d00403d6:	7c25      	ldrb	r5, [r4, #16]
d00403d8:	f894 c011 	ldrb.w	ip, [r4, #17]
d00403dc:	4602      	mov	r2, r0
d00403de:	7ca0      	ldrb	r0, [r4, #18]
d00403e0:	2300      	movs	r3, #0
d00403e2:	ea45 250c 	orr.w	r5, r5, ip, lsl #8
d00403e6:	6831      	ldr	r1, [r6, #0]
d00403e8:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d00403ec:	7ce0      	ldrb	r0, [r4, #19]
d00403ee:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d00403f2:	2001      	movs	r0, #1
d00403f4:	68ad      	ldr	r5, [r5, #8]
d00403f6:	68ed      	ldr	r5, [r5, #12]
d00403f8:	47a8      	blx	r5
d00403fa:	7c23      	ldrb	r3, [r4, #16]
d00403fc:	7c62      	ldrb	r2, [r4, #17]
d00403fe:	f64a 4144 	movw	r1, #44100	; 0xac44
d0040402:	7ca5      	ldrb	r5, [r4, #18]
d0040404:	2001      	movs	r0, #1
d0040406:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004040a:	7ce2      	ldrb	r2, [r4, #19]
d004040c:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040410:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040414:	689b      	ldr	r3, [r3, #8]
d0040416:	691b      	ldr	r3, [r3, #16]
d0040418:	4798      	blx	r3
d004041a:	7c23      	ldrb	r3, [r4, #16]
d004041c:	7c62      	ldrb	r2, [r4, #17]
d004041e:	21ff      	movs	r1, #255	; 0xff
d0040420:	7ca5      	ldrb	r5, [r4, #18]
d0040422:	2001      	movs	r0, #1
d0040424:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040428:	7ce2      	ldrb	r2, [r4, #19]
d004042a:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004042e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040432:	689b      	ldr	r3, [r3, #8]
d0040434:	695b      	ldr	r3, [r3, #20]
d0040436:	4798      	blx	r3
d0040438:	7c23      	ldrb	r3, [r4, #16]
d004043a:	7c62      	ldrb	r2, [r4, #17]
d004043c:	2100      	movs	r1, #0
d004043e:	7ca5      	ldrb	r5, [r4, #18]
d0040440:	2001      	movs	r0, #1
d0040442:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040446:	7ce2      	ldrb	r2, [r4, #19]
d0040448:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004044c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040450:	689b      	ldr	r3, [r3, #8]
d0040452:	699b      	ldr	r3, [r3, #24]
d0040454:	4798      	blx	r3
d0040456:	7c23      	ldrb	r3, [r4, #16]
d0040458:	7c65      	ldrb	r5, [r4, #17]
d004045a:	f241 1251 	movw	r2, #4433	; 0x1151
d004045e:	7ca0      	ldrb	r0, [r4, #18]
d0040460:	21c8      	movs	r1, #200	; 0xc8
d0040462:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d0040466:	7ce5      	ldrb	r5, [r4, #19]
d0040468:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004046c:	2001      	movs	r0, #1
d004046e:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d0040472:	689b      	ldr	r3, [r3, #8]
d0040474:	69db      	ldr	r3, [r3, #28]
d0040476:	4798      	blx	r3
d0040478:	7c23      	ldrb	r3, [r4, #16]
d004047a:	7c62      	ldrb	r2, [r4, #17]
d004047c:	2100      	movs	r1, #0
d004047e:	7ca5      	ldrb	r5, [r4, #18]
d0040480:	2001      	movs	r0, #1
d0040482:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040486:	7ce2      	ldrb	r2, [r4, #19]
d0040488:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004048c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040490:	689b      	ldr	r3, [r3, #8]
d0040492:	6a1b      	ldr	r3, [r3, #32]
d0040494:	4798      	blx	r3
d0040496:	4639      	mov	r1, r7
d0040498:	484e      	ldr	r0, [pc, #312]	; (d00405d4 <loadSounds+0x2e4>)
d004049a:	f7ff fe9d 	bl	d00401d8 <LoadSFX>
d004049e:	7c26      	ldrb	r6, [r4, #16]
d00404a0:	7c61      	ldrb	r1, [r4, #17]
d00404a2:	4605      	mov	r5, r0
d00404a4:	7ca2      	ldrb	r2, [r4, #18]
d00404a6:	2300      	movs	r3, #0
d00404a8:	ea46 2601 	orr.w	r6, r6, r1, lsl #8
d00404ac:	7ce0      	ldrb	r0, [r4, #19]
d00404ae:	6839      	ldr	r1, [r7, #0]
d00404b0:	ea46 4602 	orr.w	r6, r6, r2, lsl #16
d00404b4:	462a      	mov	r2, r5
d00404b6:	4f48      	ldr	r7, [pc, #288]	; (d00405d8 <loadSounds+0x2e8>)
d00404b8:	ea46 6600 	orr.w	r6, r6, r0, lsl #24
d00404bc:	2002      	movs	r0, #2
d00404be:	68b6      	ldr	r6, [r6, #8]
d00404c0:	68f6      	ldr	r6, [r6, #12]
d00404c2:	47b0      	blx	r6
d00404c4:	7c23      	ldrb	r3, [r4, #16]
d00404c6:	7c62      	ldrb	r2, [r4, #17]
d00404c8:	f64a 4144 	movw	r1, #44100	; 0xac44
d00404cc:	7ca0      	ldrb	r0, [r4, #18]
d00404ce:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00404d2:	7ce2      	ldrb	r2, [r4, #19]
d00404d4:	4e41      	ldr	r6, [pc, #260]	; (d00405dc <loadSounds+0x2ec>)
d00404d6:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00404da:	2002      	movs	r0, #2
d00404dc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00404e0:	689b      	ldr	r3, [r3, #8]
d00404e2:	691b      	ldr	r3, [r3, #16]
d00404e4:	4798      	blx	r3
d00404e6:	7c23      	ldrb	r3, [r4, #16]
d00404e8:	7c62      	ldrb	r2, [r4, #17]
d00404ea:	f44f 71be 	mov.w	r1, #380	; 0x17c
d00404ee:	2002      	movs	r0, #2
d00404f0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00404f4:	7ca2      	ldrb	r2, [r4, #18]
d00404f6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00404fa:	7ce2      	ldrb	r2, [r4, #19]
d00404fc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040500:	689b      	ldr	r3, [r3, #8]
d0040502:	695b      	ldr	r3, [r3, #20]
d0040504:	4798      	blx	r3
d0040506:	7c23      	ldrb	r3, [r4, #16]
d0040508:	7c62      	ldrb	r2, [r4, #17]
d004050a:	2100      	movs	r1, #0
d004050c:	2002      	movs	r0, #2
d004050e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040512:	7ca2      	ldrb	r2, [r4, #18]
d0040514:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040518:	7ce2      	ldrb	r2, [r4, #19]
d004051a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004051e:	689b      	ldr	r3, [r3, #8]
d0040520:	699b      	ldr	r3, [r3, #24]
d0040522:	4798      	blx	r3
d0040524:	7c21      	ldrb	r1, [r4, #16]
d0040526:	7c63      	ldrb	r3, [r4, #17]
d0040528:	f1a5 022c 	sub.w	r2, r5, #44	; 0x2c
d004052c:	7ca5      	ldrb	r5, [r4, #18]
d004052e:	ea41 2303 	orr.w	r3, r1, r3, lsl #8
d0040532:	7ce0      	ldrb	r0, [r4, #19]
d0040534:	21c8      	movs	r1, #200	; 0xc8
d0040536:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004053a:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d004053e:	2002      	movs	r0, #2
d0040540:	689b      	ldr	r3, [r3, #8]
d0040542:	69db      	ldr	r3, [r3, #28]
d0040544:	4798      	blx	r3
d0040546:	7c23      	ldrb	r3, [r4, #16]
d0040548:	7c62      	ldrb	r2, [r4, #17]
d004054a:	2101      	movs	r1, #1
d004054c:	7ca0      	ldrb	r0, [r4, #18]
d004054e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040552:	7ce2      	ldrb	r2, [r4, #19]
d0040554:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0040558:	2002      	movs	r0, #2
d004055a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004055e:	689b      	ldr	r3, [r3, #8]
d0040560:	6a1b      	ldr	r3, [r3, #32]
d0040562:	4798      	blx	r3
d0040564:	4649      	mov	r1, r9
d0040566:	481e      	ldr	r0, [pc, #120]	; (d00405e0 <loadSounds+0x2f0>)
d0040568:	f7ff fe36 	bl	d00401d8 <LoadSFX>
d004056c:	7c25      	ldrb	r5, [r4, #16]
d004056e:	f894 c011 	ldrb.w	ip, [r4, #17]
d0040572:	4602      	mov	r2, r0
d0040574:	7ca0      	ldrb	r0, [r4, #18]
d0040576:	2300      	movs	r3, #0
d0040578:	ea45 250c 	orr.w	r5, r5, ip, lsl #8
d004057c:	f8d9 1000 	ldr.w	r1, [r9]
d0040580:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d0040584:	7ce0      	ldrb	r0, [r4, #19]
d0040586:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d004058a:	2003      	movs	r0, #3
d004058c:	68ad      	ldr	r5, [r5, #8]
d004058e:	68ed      	ldr	r5, [r5, #12]
d0040590:	47a8      	blx	r5
d0040592:	7c23      	ldrb	r3, [r4, #16]
d0040594:	7c62      	ldrb	r2, [r4, #17]
d0040596:	f646 5160 	movw	r1, #28000	; 0x6d60
d004059a:	7ca0      	ldrb	r0, [r4, #18]
d004059c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00405a0:	7ce2      	ldrb	r2, [r4, #19]
d00405a2:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00405a6:	2003      	movs	r0, #3
d00405a8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00405ac:	689b      	ldr	r3, [r3, #8]
d00405ae:	691b      	ldr	r3, [r3, #16]
d00405b0:	4798      	blx	r3
d00405b2:	7c23      	ldrb	r3, [r4, #16]
d00405b4:	7c62      	ldrb	r2, [r4, #17]
d00405b6:	218c      	movs	r1, #140	; 0x8c
d00405b8:	7ca0      	ldrb	r0, [r4, #18]
d00405ba:	e017      	b.n	d00405ec <loadSounds+0x2fc>
d00405bc:	d0044c20 	.word	0xd0044c20
d00405c0:	2001f000 	.word	0x2001f000
d00405c4:	d0043fe8 	.word	0xd0043fe8
d00405c8:	d0044bc0 	.word	0xd0044bc0
d00405cc:	d0044c00 	.word	0xd0044c00
d00405d0:	d0043ffc 	.word	0xd0043ffc
d00405d4:	d004400c 	.word	0xd004400c
d00405d8:	d0044be0 	.word	0xd0044be0
d00405dc:	d0044c40 	.word	0xd0044c40
d00405e0:	d004401c 	.word	0xd004401c
d00405e4:	d0044c60 	.word	0xd0044c60
d00405e8:	d0044c80 	.word	0xd0044c80
d00405ec:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00405f0:	7ce2      	ldrb	r2, [r4, #19]
d00405f2:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00405f6:	2003      	movs	r0, #3
d00405f8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00405fc:	689b      	ldr	r3, [r3, #8]
d00405fe:	695b      	ldr	r3, [r3, #20]
d0040600:	4798      	blx	r3
d0040602:	7c23      	ldrb	r3, [r4, #16]
d0040604:	7c62      	ldrb	r2, [r4, #17]
d0040606:	2100      	movs	r1, #0
d0040608:	7ca0      	ldrb	r0, [r4, #18]
d004060a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004060e:	7ce2      	ldrb	r2, [r4, #19]
d0040610:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0040614:	2003      	movs	r0, #3
d0040616:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004061a:	689b      	ldr	r3, [r3, #8]
d004061c:	699b      	ldr	r3, [r3, #24]
d004061e:	4798      	blx	r3
d0040620:	7c23      	ldrb	r3, [r4, #16]
d0040622:	7c60      	ldrb	r0, [r4, #17]
d0040624:	f642 52ef 	movw	r2, #11759	; 0x2def
d0040628:	7ca1      	ldrb	r1, [r4, #18]
d004062a:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d004062e:	7ce0      	ldrb	r0, [r4, #19]
d0040630:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040634:	f44f 71de 	mov.w	r1, #444	; 0x1bc
d0040638:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d004063c:	2003      	movs	r0, #3
d004063e:	689b      	ldr	r3, [r3, #8]
d0040640:	69db      	ldr	r3, [r3, #28]
d0040642:	4798      	blx	r3
d0040644:	7c23      	ldrb	r3, [r4, #16]
d0040646:	7c62      	ldrb	r2, [r4, #17]
d0040648:	2101      	movs	r1, #1
d004064a:	7ca0      	ldrb	r0, [r4, #18]
d004064c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040650:	7ce2      	ldrb	r2, [r4, #19]
d0040652:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0040656:	2003      	movs	r0, #3
d0040658:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004065c:	689b      	ldr	r3, [r3, #8]
d004065e:	6a1b      	ldr	r3, [r3, #32]
d0040660:	4798      	blx	r3
d0040662:	4641      	mov	r1, r8
d0040664:	487e      	ldr	r0, [pc, #504]	; (d0040860 <loadSounds+0x570>)
d0040666:	f7ff fdb7 	bl	d00401d8 <LoadSFX>
d004066a:	7c25      	ldrb	r5, [r4, #16]
d004066c:	f894 c011 	ldrb.w	ip, [r4, #17]
d0040670:	4602      	mov	r2, r0
d0040672:	7ca0      	ldrb	r0, [r4, #18]
d0040674:	2300      	movs	r3, #0
d0040676:	ea45 250c 	orr.w	r5, r5, ip, lsl #8
d004067a:	f8d8 1000 	ldr.w	r1, [r8]
d004067e:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d0040682:	7ce0      	ldrb	r0, [r4, #19]
d0040684:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d0040688:	2004      	movs	r0, #4
d004068a:	68ad      	ldr	r5, [r5, #8]
d004068c:	68ed      	ldr	r5, [r5, #12]
d004068e:	47a8      	blx	r5
d0040690:	7c23      	ldrb	r3, [r4, #16]
d0040692:	7c62      	ldrb	r2, [r4, #17]
d0040694:	f646 5160 	movw	r1, #28000	; 0x6d60
d0040698:	7ca5      	ldrb	r5, [r4, #18]
d004069a:	2004      	movs	r0, #4
d004069c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00406a0:	7ce2      	ldrb	r2, [r4, #19]
d00406a2:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00406a6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00406aa:	689b      	ldr	r3, [r3, #8]
d00406ac:	691b      	ldr	r3, [r3, #16]
d00406ae:	4798      	blx	r3
d00406b0:	7c23      	ldrb	r3, [r4, #16]
d00406b2:	7c62      	ldrb	r2, [r4, #17]
d00406b4:	f44f 71af 	mov.w	r1, #350	; 0x15e
d00406b8:	7ca5      	ldrb	r5, [r4, #18]
d00406ba:	2004      	movs	r0, #4
d00406bc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00406c0:	7ce2      	ldrb	r2, [r4, #19]
d00406c2:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00406c6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00406ca:	689b      	ldr	r3, [r3, #8]
d00406cc:	695b      	ldr	r3, [r3, #20]
d00406ce:	4798      	blx	r3
d00406d0:	7c23      	ldrb	r3, [r4, #16]
d00406d2:	7c62      	ldrb	r2, [r4, #17]
d00406d4:	2100      	movs	r1, #0
d00406d6:	7ca5      	ldrb	r5, [r4, #18]
d00406d8:	2004      	movs	r0, #4
d00406da:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00406de:	7ce2      	ldrb	r2, [r4, #19]
d00406e0:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00406e4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00406e8:	689b      	ldr	r3, [r3, #8]
d00406ea:	699b      	ldr	r3, [r3, #24]
d00406ec:	4798      	blx	r3
d00406ee:	7c23      	ldrb	r3, [r4, #16]
d00406f0:	7c62      	ldrb	r2, [r4, #17]
d00406f2:	2100      	movs	r1, #0
d00406f4:	7ca5      	ldrb	r5, [r4, #18]
d00406f6:	2004      	movs	r0, #4
d00406f8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00406fc:	7ce2      	ldrb	r2, [r4, #19]
d00406fe:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040702:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040706:	689b      	ldr	r3, [r3, #8]
d0040708:	6a1b      	ldr	r3, [r3, #32]
d004070a:	4798      	blx	r3
d004070c:	4639      	mov	r1, r7
d004070e:	4855      	ldr	r0, [pc, #340]	; (d0040864 <loadSounds+0x574>)
d0040710:	f7ff fd62 	bl	d00401d8 <LoadSFX>
d0040714:	7c25      	ldrb	r5, [r4, #16]
d0040716:	7c61      	ldrb	r1, [r4, #17]
d0040718:	4602      	mov	r2, r0
d004071a:	7ca0      	ldrb	r0, [r4, #18]
d004071c:	2300      	movs	r3, #0
d004071e:	ea45 2501 	orr.w	r5, r5, r1, lsl #8
d0040722:	f894 c013 	ldrb.w	ip, [r4, #19]
d0040726:	6839      	ldr	r1, [r7, #0]
d0040728:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d004072c:	2005      	movs	r0, #5
d004072e:	ea45 650c 	orr.w	r5, r5, ip, lsl #24
d0040732:	68ad      	ldr	r5, [r5, #8]
d0040734:	68ed      	ldr	r5, [r5, #12]
d0040736:	47a8      	blx	r5
d0040738:	7c23      	ldrb	r3, [r4, #16]
d004073a:	7c62      	ldrb	r2, [r4, #17]
d004073c:	f44f 41fa 	mov.w	r1, #32000	; 0x7d00
d0040740:	7ca5      	ldrb	r5, [r4, #18]
d0040742:	2005      	movs	r0, #5
d0040744:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040748:	7ce2      	ldrb	r2, [r4, #19]
d004074a:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004074e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040752:	689b      	ldr	r3, [r3, #8]
d0040754:	691b      	ldr	r3, [r3, #16]
d0040756:	4798      	blx	r3
d0040758:	7c23      	ldrb	r3, [r4, #16]
d004075a:	7c62      	ldrb	r2, [r4, #17]
d004075c:	f44f 71e1 	mov.w	r1, #450	; 0x1c2
d0040760:	7ca5      	ldrb	r5, [r4, #18]
d0040762:	2005      	movs	r0, #5
d0040764:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040768:	7ce2      	ldrb	r2, [r4, #19]
d004076a:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004076e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040772:	689b      	ldr	r3, [r3, #8]
d0040774:	695b      	ldr	r3, [r3, #20]
d0040776:	4798      	blx	r3
d0040778:	7c23      	ldrb	r3, [r4, #16]
d004077a:	7c62      	ldrb	r2, [r4, #17]
d004077c:	2100      	movs	r1, #0
d004077e:	7ca5      	ldrb	r5, [r4, #18]
d0040780:	2005      	movs	r0, #5
d0040782:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040786:	7ce2      	ldrb	r2, [r4, #19]
d0040788:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004078c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040790:	689b      	ldr	r3, [r3, #8]
d0040792:	699b      	ldr	r3, [r3, #24]
d0040794:	4798      	blx	r3
d0040796:	7c23      	ldrb	r3, [r4, #16]
d0040798:	7c62      	ldrb	r2, [r4, #17]
d004079a:	2100      	movs	r1, #0
d004079c:	7ca5      	ldrb	r5, [r4, #18]
d004079e:	2005      	movs	r0, #5
d00407a0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00407a4:	7ce2      	ldrb	r2, [r4, #19]
d00407a6:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00407aa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00407ae:	689b      	ldr	r3, [r3, #8]
d00407b0:	6a1b      	ldr	r3, [r3, #32]
d00407b2:	4798      	blx	r3
d00407b4:	4631      	mov	r1, r6
d00407b6:	482c      	ldr	r0, [pc, #176]	; (d0040868 <loadSounds+0x578>)
d00407b8:	f7ff fd0e 	bl	d00401d8 <LoadSFX>
d00407bc:	7c25      	ldrb	r5, [r4, #16]
d00407be:	7c61      	ldrb	r1, [r4, #17]
d00407c0:	4602      	mov	r2, r0
d00407c2:	f894 c012 	ldrb.w	ip, [r4, #18]
d00407c6:	2300      	movs	r3, #0
d00407c8:	ea45 2501 	orr.w	r5, r5, r1, lsl #8
d00407cc:	7ce7      	ldrb	r7, [r4, #19]
d00407ce:	6831      	ldr	r1, [r6, #0]
d00407d0:	2006      	movs	r0, #6
d00407d2:	ea45 450c 	orr.w	r5, r5, ip, lsl #16
d00407d6:	ea45 6507 	orr.w	r5, r5, r7, lsl #24
d00407da:	68ad      	ldr	r5, [r5, #8]
d00407dc:	68ed      	ldr	r5, [r5, #12]
d00407de:	47a8      	blx	r5
d00407e0:	7c23      	ldrb	r3, [r4, #16]
d00407e2:	7c62      	ldrb	r2, [r4, #17]
d00407e4:	f646 5160 	movw	r1, #28000	; 0x6d60
d00407e8:	7ca5      	ldrb	r5, [r4, #18]
d00407ea:	2006      	movs	r0, #6
d00407ec:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00407f0:	7ce2      	ldrb	r2, [r4, #19]
d00407f2:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00407f6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00407fa:	689b      	ldr	r3, [r3, #8]
d00407fc:	691b      	ldr	r3, [r3, #16]
d00407fe:	4798      	blx	r3
d0040800:	7c23      	ldrb	r3, [r4, #16]
d0040802:	7c62      	ldrb	r2, [r4, #17]
d0040804:	f44f 71e1 	mov.w	r1, #450	; 0x1c2
d0040808:	7ca5      	ldrb	r5, [r4, #18]
d004080a:	2006      	movs	r0, #6
d004080c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040810:	7ce2      	ldrb	r2, [r4, #19]
d0040812:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040816:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004081a:	689b      	ldr	r3, [r3, #8]
d004081c:	695b      	ldr	r3, [r3, #20]
d004081e:	4798      	blx	r3
d0040820:	7c23      	ldrb	r3, [r4, #16]
d0040822:	7c62      	ldrb	r2, [r4, #17]
d0040824:	2100      	movs	r1, #0
d0040826:	7ca5      	ldrb	r5, [r4, #18]
d0040828:	2006      	movs	r0, #6
d004082a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004082e:	7ce2      	ldrb	r2, [r4, #19]
d0040830:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040834:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040838:	689b      	ldr	r3, [r3, #8]
d004083a:	699b      	ldr	r3, [r3, #24]
d004083c:	4798      	blx	r3
d004083e:	7c23      	ldrb	r3, [r4, #16]
d0040840:	7c62      	ldrb	r2, [r4, #17]
d0040842:	2100      	movs	r1, #0
d0040844:	7ca5      	ldrb	r5, [r4, #18]
d0040846:	2006      	movs	r0, #6
d0040848:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004084c:	7ce2      	ldrb	r2, [r4, #19]
d004084e:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0040852:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040856:	689b      	ldr	r3, [r3, #8]
d0040858:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d004085c:	6a1b      	ldr	r3, [r3, #32]
d004085e:	4718      	bx	r3
d0040860:	d0044030 	.word	0xd0044030
d0040864:	d0044044 	.word	0xd0044044
d0040868:	d004405c 	.word	0xd004405c

d004086c <MusicPlay>:
d004086c:	b430      	push	{r4, r5}
d004086e:	b980      	cbnz	r0, d0040892 <MusicPlay+0x26>
d0040870:	4601      	mov	r1, r0
d0040872:	4a0c      	ldr	r2, [pc, #48]	; (d00408a4 <MusicPlay+0x38>)
d0040874:	480c      	ldr	r0, [pc, #48]	; (d00408a8 <MusicPlay+0x3c>)
d0040876:	7c13      	ldrb	r3, [r2, #16]
d0040878:	7c55      	ldrb	r5, [r2, #17]
d004087a:	7c94      	ldrb	r4, [r2, #18]
d004087c:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
d0040880:	7cd2      	ldrb	r2, [r2, #19]
d0040882:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
d0040886:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004088a:	685b      	ldr	r3, [r3, #4]
d004088c:	bc30      	pop	{r4, r5}
d004088e:	681b      	ldr	r3, [r3, #0]
d0040890:	4718      	bx	r3
d0040892:	2801      	cmp	r0, #1
d0040894:	d103      	bne.n	d004089e <MusicPlay+0x32>
d0040896:	4a03      	ldr	r2, [pc, #12]	; (d00408a4 <MusicPlay+0x38>)
d0040898:	2100      	movs	r1, #0
d004089a:	4804      	ldr	r0, [pc, #16]	; (d00408ac <MusicPlay+0x40>)
d004089c:	e7eb      	b.n	d0040876 <MusicPlay+0xa>
d004089e:	bc30      	pop	{r4, r5}
d00408a0:	4770      	bx	lr
d00408a2:	bf00      	nop
d00408a4:	2001f000 	.word	0x2001f000
d00408a8:	d004406c 	.word	0xd004406c
d00408ac:	d004407c 	.word	0xd004407c

d00408b0 <spawnTorpedo>:
d00408b0:	b5f0      	push	{r4, r5, r6, r7, lr}
d00408b2:	b083      	sub	sp, #12
d00408b4:	2300      	movs	r3, #0
d00408b6:	4e5b      	ldr	r6, [pc, #364]	; (d0040a24 <spawnTorpedo+0x174>)
d00408b8:	e9cd 0100 	strd	r0, r1, [sp]
d00408bc:	e002      	b.n	d00408c4 <spawnTorpedo+0x14>
d00408be:	2b20      	cmp	r3, #32
d00408c0:	f000 80ad 	beq.w	d0040a1e <spawnTorpedo+0x16e>
d00408c4:	eb03 0443 	add.w	r4, r3, r3, lsl #1
d00408c8:	3301      	adds	r3, #1
d00408ca:	eb06 1404 	add.w	r4, r6, r4, lsl #4
d00408ce:	f894 2025 	ldrb.w	r2, [r4, #37]	; 0x25
d00408d2:	f002 05ff 	and.w	r5, r2, #255	; 0xff
d00408d6:	2a00      	cmp	r2, #0
d00408d8:	d1f1      	bne.n	d00408be <spawnTorpedo+0xe>
d00408da:	4629      	mov	r1, r5
d00408dc:	2230      	movs	r2, #48	; 0x30
d00408de:	4620      	mov	r0, r4
d00408e0:	2601      	movs	r6, #1
d00408e2:	f7ff fbab 	bl	d004003c <memset>
d00408e6:	eddd 7a00 	vldr	s15, [sp]
d00408ea:	ed9d 7a01 	vldr	s14, [sp, #4]
d00408ee:	2740      	movs	r7, #64	; 0x40
d00408f0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00408f4:	4a4c      	ldr	r2, [pc, #304]	; (d0040a28 <spawnTorpedo+0x178>)
d00408f6:	eef8 6ac7 	vcvt.f32.s32	s13, s14
d00408fa:	ed9f 7a4c 	vldr	s14, [pc, #304]	; d0040a2c <spawnTorpedo+0x17c>
d00408fe:	f884 6025 	strb.w	r6, [r4, #37]	; 0x25
d0040902:	f04f 4c83 	mov.w	ip, #1098907648	; 0x41800000
d0040906:	ee77 7aa7 	vadd.f32	s15, s15, s15
d004090a:	f884 5024 	strb.w	r5, [r4, #36]	; 0x24
d004090e:	ee66 6a87 	vmul.f32	s13, s13, s14
d0040912:	60a2      	str	r2, [r4, #8]
d0040914:	ed9f 6a46 	vldr	s12, [pc, #280]	; d0040a30 <spawnTorpedo+0x180>
d0040918:	2104      	movs	r1, #4
d004091a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004091e:	4630      	mov	r0, r6
d0040920:	eefd 6ae6 	vcvt.s32.f32	s13, s13
d0040924:	ee17 3a90 	vmov	r3, s15
d0040928:	ee16 2a90 	vmov	r2, s13
d004092c:	b21b      	sxth	r3, r3
d004092e:	b212      	sxth	r2, r2
d0040930:	f5a3 73a0 	sub.w	r3, r3, #320	; 0x140
d0040934:	ee07 3a90 	vmov	s15, r3
d0040938:	f1a2 03f0 	sub.w	r3, r2, #240	; 0xf0
d004093c:	ee07 3a10 	vmov	s14, r3
d0040940:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040944:	2300      	movs	r3, #0
d0040946:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004094a:	ee67 7a86 	vmul.f32	s15, s15, s12
d004094e:	ee27 7a06 	vmul.f32	s14, s14, s12
d0040952:	edc4 7a00 	vstr	s15, [r4]
d0040956:	ed84 7a01 	vstr	s14, [r4, #4]
d004095a:	60e3      	str	r3, [r4, #12]
d004095c:	6123      	str	r3, [r4, #16]
d004095e:	f8c4 c014 	str.w	ip, [r4, #20]
d0040962:	8427      	strh	r7, [r4, #32]
d0040964:	8467      	strh	r7, [r4, #34]	; 0x22
d0040966:	f884 5028 	strb.w	r5, [r4, #40]	; 0x28
d004096a:	f884 102a 	strb.w	r1, [r4, #42]	; 0x2a
d004096e:	f001 ff15 	bl	d004279c <sbx_rng_range>
d0040972:	f010 0f01 	tst.w	r0, #1
d0040976:	4d2f      	ldr	r5, [pc, #188]	; (d0040a34 <spawnTorpedo+0x184>)
d0040978:	f04f 0112 	mov.w	r1, #18
d004097c:	bf0c      	ite	eq
d004097e:	4637      	moveq	r7, r6
d0040980:	f04f 37ff 	movne.w	r7, #4294967295	; 0xffffffff
d0040984:	2264      	movs	r2, #100	; 0x64
d0040986:	2306      	movs	r3, #6
d0040988:	f884 7029 	strb.w	r7, [r4, #41]	; 0x29
d004098c:	4630      	mov	r0, r6
d004098e:	f884 102b 	strb.w	r1, [r4, #43]	; 0x2b
d0040992:	83e2      	strh	r2, [r4, #30]
d0040994:	83a3      	strh	r3, [r4, #28]
d0040996:	f06f 047e 	mvn.w	r4, #126	; 0x7e
d004099a:	7c2b      	ldrb	r3, [r5, #16]
d004099c:	7c6a      	ldrb	r2, [r5, #17]
d004099e:	7ca9      	ldrb	r1, [r5, #18]
d00409a0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00409a4:	7cea      	ldrb	r2, [r5, #19]
d00409a6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00409aa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00409ae:	689b      	ldr	r3, [r3, #8]
d00409b0:	689b      	ldr	r3, [r3, #8]
d00409b2:	4798      	blx	r3
d00409b4:	4b20      	ldr	r3, [pc, #128]	; (d0040a38 <spawnTorpedo+0x188>)
d00409b6:	4921      	ldr	r1, [pc, #132]	; (d0040a3c <spawnTorpedo+0x18c>)
d00409b8:	4630      	mov	r0, r6
d00409ba:	8a9b      	ldrh	r3, [r3, #20]
d00409bc:	7c2a      	ldrb	r2, [r5, #16]
d00409be:	3320      	adds	r3, #32
d00409c0:	7c6f      	ldrb	r7, [r5, #17]
d00409c2:	b21b      	sxth	r3, r3
d00409c4:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
d00409c8:	7caf      	ldrb	r7, [r5, #18]
d00409ca:	3bf0      	subs	r3, #240	; 0xf0
d00409cc:	ea42 4707 	orr.w	r7, r2, r7, lsl #16
d00409d0:	ebc3 13c3 	rsb	r3, r3, r3, lsl #7
d00409d4:	fb81 2103 	smull	r2, r1, r1, r3
d00409d8:	17da      	asrs	r2, r3, #31
d00409da:	440b      	add	r3, r1
d00409dc:	7ce9      	ldrb	r1, [r5, #19]
d00409de:	ebc2 13e3 	rsb	r3, r2, r3, asr #7
d00409e2:	ea47 6201 	orr.w	r2, r7, r1, lsl #24
d00409e6:	b219      	sxth	r1, r3
d00409e8:	6893      	ldr	r3, [r2, #8]
d00409ea:	297f      	cmp	r1, #127	; 0x7f
d00409ec:	699b      	ldr	r3, [r3, #24]
d00409ee:	bfa8      	it	ge
d00409f0:	217f      	movge	r1, #127	; 0x7f
d00409f2:	42a1      	cmp	r1, r4
d00409f4:	bfb8      	it	lt
d00409f6:	4621      	movlt	r1, r4
d00409f8:	b249      	sxtb	r1, r1
d00409fa:	4798      	blx	r3
d00409fc:	7c2b      	ldrb	r3, [r5, #16]
d00409fe:	7c6a      	ldrb	r2, [r5, #17]
d0040a00:	4630      	mov	r0, r6
d0040a02:	7ca9      	ldrb	r1, [r5, #18]
d0040a04:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040a08:	7cea      	ldrb	r2, [r5, #19]
d0040a0a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040a0e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040a12:	689b      	ldr	r3, [r3, #8]
d0040a14:	685b      	ldr	r3, [r3, #4]
d0040a16:	b003      	add	sp, #12
d0040a18:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0040a1c:	4718      	bx	r3
d0040a1e:	b003      	add	sp, #12
d0040a20:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0040a22:	bf00      	nop
d0040a24:	d0045044 	.word	0xd0045044
d0040a28:	42a00000 	.word	0x42a00000
d0040a2c:	400ccccd 	.word	0x400ccccd
d0040a30:	3e9d89d9 	.word	0x3e9d89d9
d0040a34:	2001f000 	.word	0x2001f000
d0040a38:	d0045800 	.word	0xd0045800
d0040a3c:	88888889 	.word	0x88888889

d0040a40 <initTorpedos3D>:
d0040a40:	f44f 62c0 	mov.w	r2, #1536	; 0x600
d0040a44:	2100      	movs	r1, #0
d0040a46:	4801      	ldr	r0, [pc, #4]	; (d0040a4c <initTorpedos3D+0xc>)
d0040a48:	f7ff baf8 	b.w	d004003c <memset>
d0040a4c:	d0045044 	.word	0xd0045044

d0040a50 <initPills3D>:
d0040a50:	f44f 72c0 	mov.w	r2, #384	; 0x180
d0040a54:	2100      	movs	r1, #0
d0040a56:	4801      	ldr	r0, [pc, #4]	; (d0040a5c <initPills3D+0xc>)
d0040a58:	f7ff baf0 	b.w	d004003c <memset>
d0040a5c:	d0045680 	.word	0xd0045680

d0040a60 <proc_photo_torps>:
d0040a60:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040a64:	ed2d 8b04 	vpush	{d8-d9}
d0040a68:	b085      	sub	sp, #20
d0040a6a:	f04f 0800 	mov.w	r8, #0
d0040a6e:	f8df b2ac 	ldr.w	fp, [pc, #684]	; d0040d1c <proc_photo_torps+0x2bc>
d0040a72:	eddf 8aa2 	vldr	s17, [pc, #648]	; d0040cfc <proc_photo_torps+0x29c>
d0040a76:	ed9f 8aa2 	vldr	s16, [pc, #648]	; d0040d00 <proc_photo_torps+0x2a0>
d0040a7a:	eddf 9aa2 	vldr	s19, [pc, #648]	; d0040d04 <proc_photo_torps+0x2a4>
d0040a7e:	ed9f 9aa2 	vldr	s18, [pc, #648]	; d0040d08 <proc_photo_torps+0x2a8>
d0040a82:	e9cd 0100 	strd	r0, r1, [sp]
d0040a86:	e07c      	b.n	d0040b82 <proc_photo_torps+0x122>
d0040a88:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0040a8c:	ed91 7a02 	vldr	s14, [r1, #8]
d0040a90:	edd1 5a00 	vldr	s11, [r1]
d0040a94:	ed91 6a01 	vldr	s12, [r1, #4]
d0040a98:	eec6 7a87 	vdiv.f32	s15, s13, s14
d0040a9c:	ed9f 5a9b 	vldr	s10, [pc, #620]	; d0040d0c <proc_photo_torps+0x2ac>
d0040aa0:	eddf 6a9b 	vldr	s13, [pc, #620]	; d0040d10 <proc_photo_torps+0x2b0>
d0040aa4:	ed9f 7a9b 	vldr	s14, [pc, #620]	; d0040d14 <proc_photo_torps+0x2b4>
d0040aa8:	9e00      	ldr	r6, [sp, #0]
d0040aaa:	4c9b      	ldr	r4, [pc, #620]	; (d0040d18 <proc_photo_torps+0x2b8>)
d0040aac:	ee65 5a88 	vmul.f32	s11, s11, s16
d0040ab0:	ee26 6a08 	vmul.f32	s12, s12, s16
d0040ab4:	eee5 6aa7 	vfma.f32	s13, s11, s15
d0040ab8:	eea6 7a27 	vfma.f32	s14, s12, s15
d0040abc:	ee67 7a85 	vmul.f32	s15, s15, s10
d0040ac0:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0040ac4:	eefd 6ae6 	vcvt.s32.f32	s13, s13
d0040ac8:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0040acc:	ee17 2a90 	vmov	r2, s15
d0040ad0:	ee16 3a90 	vmov	r3, s13
d0040ad4:	b292      	uxth	r2, r2
d0040ad6:	ee17 0a10 	vmov	r0, s14
d0040ada:	1b9b      	subs	r3, r3, r6
d0040adc:	9e01      	ldr	r6, [sp, #4]
d0040ade:	2a50      	cmp	r2, #80	; 0x50
d0040ae0:	eba0 0006 	sub.w	r0, r0, r6
d0040ae4:	b21b      	sxth	r3, r3
d0040ae6:	bf28      	it	cs
d0040ae8:	2250      	movcs	r2, #80	; 0x50
d0040aea:	b200      	sxth	r0, r0
d0040aec:	830b      	strh	r3, [r1, #24]
d0040aee:	2a08      	cmp	r2, #8
d0040af0:	8348      	strh	r0, [r1, #26]
d0040af2:	bf38      	it	cc
d0040af4:	2208      	movcc	r2, #8
d0040af6:	83ca      	strh	r2, [r1, #30]
d0040af8:	8c0b      	ldrh	r3, [r1, #32]
d0040afa:	b21b      	sxth	r3, r3
d0040afc:	fb02 f303 	mul.w	r3, r2, r3
d0040b00:	fba4 0303 	umull	r0, r3, r4, r3
d0040b04:	f343 138f 	sbfx	r3, r3, #6, #16
d0040b08:	838b      	strh	r3, [r1, #28]
d0040b0a:	8b8b      	ldrh	r3, [r1, #28]
d0040b0c:	b21b      	sxth	r3, r3
d0040b0e:	2b01      	cmp	r3, #1
d0040b10:	dc01      	bgt.n	d0040b16 <proc_photo_torps+0xb6>
d0040b12:	2302      	movs	r3, #2
d0040b14:	838b      	strh	r3, [r1, #28]
d0040b16:	eb05 0308 	add.w	r3, r5, r8
d0040b1a:	487f      	ldr	r0, [pc, #508]	; (d0040d18 <proc_photo_torps+0x2b8>)
d0040b1c:	eb0b 1303 	add.w	r3, fp, r3, lsl #4
d0040b20:	8c19      	ldrh	r1, [r3, #32]
d0040b22:	8c5c      	ldrh	r4, [r3, #34]	; 0x22
d0040b24:	b209      	sxth	r1, r1
d0040b26:	8b1e      	ldrh	r6, [r3, #24]
d0040b28:	b224      	sxth	r4, r4
d0040b2a:	fb02 f101 	mul.w	r1, r2, r1
d0040b2e:	b236      	sxth	r6, r6
d0040b30:	fba0 7101 	umull	r7, r1, r0, r1
d0040b34:	f341 114f 	sbfx	r1, r1, #5, #16
d0040b38:	424f      	negs	r7, r1
d0040b3a:	42be      	cmp	r6, r7
d0040b3c:	db16      	blt.n	d0040b6c <proc_photo_torps+0x10c>
d0040b3e:	8b1e      	ldrh	r6, [r3, #24]
d0040b40:	f501 7120 	add.w	r1, r1, #640	; 0x280
d0040b44:	b236      	sxth	r6, r6
d0040b46:	428e      	cmp	r6, r1
d0040b48:	dc10      	bgt.n	d0040b6c <proc_photo_torps+0x10c>
d0040b4a:	fb02 f204 	mul.w	r2, r2, r4
d0040b4e:	8b59      	ldrh	r1, [r3, #26]
d0040b50:	fba0 0202 	umull	r0, r2, r0, r2
d0040b54:	b209      	sxth	r1, r1
d0040b56:	f342 124f 	sbfx	r2, r2, #5, #16
d0040b5a:	4250      	negs	r0, r2
d0040b5c:	4281      	cmp	r1, r0
d0040b5e:	db05      	blt.n	d0040b6c <proc_photo_torps+0x10c>
d0040b60:	8b59      	ldrh	r1, [r3, #26]
d0040b62:	f502 72f0 	add.w	r2, r2, #480	; 0x1e0
d0040b66:	b209      	sxth	r1, r1
d0040b68:	4291      	cmp	r1, r2
d0040b6a:	dd6c      	ble.n	d0040c46 <proc_photo_torps+0x1e6>
d0040b6c:	4445      	add	r5, r8
d0040b6e:	2300      	movs	r3, #0
d0040b70:	eb0b 1505 	add.w	r5, fp, r5, lsl #4
d0040b74:	f885 3025 	strb.w	r3, [r5, #37]	; 0x25
d0040b78:	f108 0801 	add.w	r8, r8, #1
d0040b7c:	f1b8 0f20 	cmp.w	r8, #32
d0040b80:	d05a      	beq.n	d0040c38 <proc_photo_torps+0x1d8>
d0040b82:	eb08 0348 	add.w	r3, r8, r8, lsl #1
d0040b86:	ea4f 0548 	mov.w	r5, r8, lsl #1
d0040b8a:	eb0b 1303 	add.w	r3, fp, r3, lsl #4
d0040b8e:	f893 2025 	ldrb.w	r2, [r3, #37]	; 0x25
d0040b92:	2a00      	cmp	r2, #0
d0040b94:	d0f0      	beq.n	d0040b78 <proc_photo_torps+0x118>
d0040b96:	ed93 7a03 	vldr	s14, [r3, #12]
d0040b9a:	edd3 7a00 	vldr	s15, [r3]
d0040b9e:	ee77 7a87 	vadd.f32	s15, s15, s14
d0040ba2:	edc3 7a00 	vstr	s15, [r3]
d0040ba6:	ed93 7a04 	vldr	s14, [r3, #16]
d0040baa:	edd3 7a01 	vldr	s15, [r3, #4]
d0040bae:	ee77 7a87 	vadd.f32	s15, s15, s14
d0040bb2:	edc3 7a01 	vstr	s15, [r3, #4]
d0040bb6:	ed93 7a05 	vldr	s14, [r3, #20]
d0040bba:	edd3 7a02 	vldr	s15, [r3, #8]
d0040bbe:	ee77 7a87 	vadd.f32	s15, s15, s14
d0040bc2:	edc3 7a02 	vstr	s15, [r3, #8]
d0040bc6:	f893 2028 	ldrb.w	r2, [r3, #40]	; 0x28
d0040bca:	3201      	adds	r2, #1
d0040bcc:	b2d2      	uxtb	r2, r2
d0040bce:	f883 2028 	strb.w	r2, [r3, #40]	; 0x28
d0040bd2:	f893 2028 	ldrb.w	r2, [r3, #40]	; 0x28
d0040bd6:	2a02      	cmp	r2, #2
d0040bd8:	d91a      	bls.n	d0040c10 <proc_photo_torps+0x1b0>
d0040bda:	2100      	movs	r1, #0
d0040bdc:	f883 1028 	strb.w	r1, [r3, #40]	; 0x28
d0040be0:	f893 002a 	ldrb.w	r0, [r3, #42]	; 0x2a
d0040be4:	f893 2029 	ldrb.w	r2, [r3, #41]	; 0x29
d0040be8:	f893 402b 	ldrb.w	r4, [r3, #43]	; 0x2b
d0040bec:	fa40 f282 	sxtab	r2, r0, r2
d0040bf0:	b250      	sxtb	r0, r2
d0040bf2:	b2d2      	uxtb	r2, r2
d0040bf4:	42a0      	cmp	r0, r4
d0040bf6:	da24      	bge.n	d0040c42 <proc_photo_torps+0x1e2>
d0040bf8:	4288      	cmp	r0, r1
d0040bfa:	da03      	bge.n	d0040c04 <proc_photo_torps+0x1a4>
d0040bfc:	f893 202b 	ldrb.w	r2, [r3, #43]	; 0x2b
d0040c00:	3a01      	subs	r2, #1
d0040c02:	b2d2      	uxtb	r2, r2
d0040c04:	eb05 0308 	add.w	r3, r5, r8
d0040c08:	eb0b 1303 	add.w	r3, fp, r3, lsl #4
d0040c0c:	f883 202a 	strb.w	r2, [r3, #42]	; 0x2a
d0040c10:	eb05 0108 	add.w	r1, r5, r8
d0040c14:	eb0b 1101 	add.w	r1, fp, r1, lsl #4
d0040c18:	edd1 7a02 	vldr	s15, [r1, #8]
d0040c1c:	eef4 7ae8 	vcmpe.f32	s15, s17
d0040c20:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040c24:	f6ff af30 	blt.w	d0040a88 <proc_photo_torps+0x28>
d0040c28:	f108 0801 	add.w	r8, r8, #1
d0040c2c:	2300      	movs	r3, #0
d0040c2e:	f1b8 0f20 	cmp.w	r8, #32
d0040c32:	f881 3025 	strb.w	r3, [r1, #37]	; 0x25
d0040c36:	d1a4      	bne.n	d0040b82 <proc_photo_torps+0x122>
d0040c38:	b005      	add	sp, #20
d0040c3a:	ecbd 8b04 	vpop	{d8-d9}
d0040c3e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040c42:	460a      	mov	r2, r1
d0040c44:	e7de      	b.n	d0040c04 <proc_photo_torps+0x1a4>
d0040c46:	2600      	movs	r6, #0
d0040c48:	f8df a0d4 	ldr.w	sl, [pc, #212]	; d0040d20 <proc_photo_torps+0x2c0>
d0040c4c:	4618      	mov	r0, r3
d0040c4e:	f8cd 8008 	str.w	r8, [sp, #8]
d0040c52:	9303      	str	r3, [sp, #12]
d0040c54:	eb06 0446 	add.w	r4, r6, r6, lsl #1
d0040c58:	ea4f 0946 	mov.w	r9, r6, lsl #1
d0040c5c:	eb0a 1404 	add.w	r4, sl, r4, lsl #4
d0040c60:	f894 3025 	ldrb.w	r3, [r4, #37]	; 0x25
d0040c64:	f104 0c18 	add.w	ip, r4, #24
d0040c68:	f104 0e25 	add.w	lr, r4, #37	; 0x25
d0040c6c:	2b00      	cmp	r3, #0
d0040c6e:	d03a      	beq.n	d0040ce6 <proc_photo_torps+0x286>
d0040c70:	edd4 7a02 	vldr	s15, [r4, #8]
d0040c74:	ed90 7a02 	vldr	s14, [r0, #8]
d0040c78:	ee77 7ac7 	vsub.f32	s15, s15, s14
d0040c7c:	eef4 7ae9 	vcmpe.f32	s15, s19
d0040c80:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040c84:	eef4 7ac9 	vcmpe.f32	s15, s18
d0040c88:	d42d      	bmi.n	d0040ce6 <proc_photo_torps+0x286>
d0040c8a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040c8e:	bfcc      	ite	gt
d0040c90:	f04f 0801 	movgt.w	r8, #1
d0040c94:	f04f 0800 	movle.w	r8, #0
d0040c98:	dc25      	bgt.n	d0040ce6 <proc_photo_torps+0x286>
d0040c9a:	8b22      	ldrh	r2, [r4, #24]
d0040c9c:	8b07      	ldrh	r7, [r0, #24]
d0040c9e:	8b63      	ldrh	r3, [r4, #26]
d0040ca0:	b212      	sxth	r2, r2
d0040ca2:	8b41      	ldrh	r1, [r0, #26]
d0040ca4:	b23f      	sxth	r7, r7
d0040ca6:	b21b      	sxth	r3, r3
d0040ca8:	b209      	sxth	r1, r1
d0040caa:	1bd2      	subs	r2, r2, r7
d0040cac:	8ba7      	ldrh	r7, [r4, #28]
d0040cae:	1a5b      	subs	r3, r3, r1
d0040cb0:	8b81      	ldrh	r1, [r0, #28]
d0040cb2:	ee07 2a10 	vmov	s14, r2
d0040cb6:	ee07 3a90 	vmov	s15, r3
d0040cba:	b20b      	sxth	r3, r1
d0040cbc:	eef8 6ac7 	vcvt.f32.s32	s13, s14
d0040cc0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040cc4:	fa03 f387 	sxtah	r3, r3, r7
d0040cc8:	ee07 3a10 	vmov	s14, r3
d0040ccc:	ee67 7aa7 	vmul.f32	s15, s15, s15
d0040cd0:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0040cd4:	eee6 7aa6 	vfma.f32	s15, s13, s13
d0040cd8:	ee27 7a07 	vmul.f32	s14, s14, s14
d0040cdc:	eef4 7ac7 	vcmpe.f32	s15, s14
d0040ce0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040ce4:	d91e      	bls.n	d0040d24 <proc_photo_torps+0x2c4>
d0040ce6:	3601      	adds	r6, #1
d0040ce8:	2e0e      	cmp	r6, #14
d0040cea:	d1b3      	bne.n	d0040c54 <proc_photo_torps+0x1f4>
d0040cec:	f8dd 8008 	ldr.w	r8, [sp, #8]
d0040cf0:	4445      	add	r5, r8
d0040cf2:	eb0b 1505 	add.w	r5, fp, r5, lsl #4
d0040cf6:	f895 3025 	ldrb.w	r3, [r5, #37]	; 0x25
d0040cfa:	e73d      	b.n	d0040b78 <proc_photo_torps+0x118>
d0040cfc:	44fc8000 	.word	0x44fc8000
d0040d00:	43820000 	.word	0x43820000
d0040d04:	c2f00000 	.word	0xc2f00000
d0040d08:	42f00000 	.word	0x42f00000
d0040d0c:	46abe000 	.word	0x46abe000
d0040d10:	43a00000 	.word	0x43a00000
d0040d14:	43700000 	.word	0x43700000
d0040d18:	51eb851f 	.word	0x51eb851f
d0040d1c:	d0045044 	.word	0xd0045044
d0040d20:	d0045900 	.word	0xd0045900
d0040d24:	f894 2025 	ldrb.w	r2, [r4, #37]	; 0x25
d0040d28:	4641      	mov	r1, r8
d0040d2a:	9b03      	ldr	r3, [sp, #12]
d0040d2c:	3a01      	subs	r2, #1
d0040d2e:	f8dd 8008 	ldr.w	r8, [sp, #8]
d0040d32:	f8cd c00c 	str.w	ip, [sp, #12]
d0040d36:	b2d2      	uxtb	r2, r2
d0040d38:	f884 2025 	strb.w	r2, [r4, #37]	; 0x25
d0040d3c:	f883 1025 	strb.w	r1, [r3, #37]	; 0x25
d0040d40:	f894 3025 	ldrb.w	r3, [r4, #37]	; 0x25
d0040d44:	f003 02ff 	and.w	r2, r3, #255	; 0xff
d0040d48:	9202      	str	r2, [sp, #8]
d0040d4a:	2b00      	cmp	r3, #0
d0040d4c:	d1d0      	bne.n	d0040cf0 <proc_photo_torps+0x290>
d0040d4e:	4f6d      	ldr	r7, [pc, #436]	; (d0040f04 <proc_photo_torps+0x4a4>)
d0040d50:	2005      	movs	r0, #5
d0040d52:	7c3b      	ldrb	r3, [r7, #16]
d0040d54:	7c7a      	ldrb	r2, [r7, #17]
d0040d56:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040d5a:	7cba      	ldrb	r2, [r7, #18]
d0040d5c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040d60:	7cfa      	ldrb	r2, [r7, #19]
d0040d62:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040d66:	689b      	ldr	r3, [r3, #8]
d0040d68:	689b      	ldr	r3, [r3, #8]
d0040d6a:	4798      	blx	r3
d0040d6c:	7c3b      	ldrb	r3, [r7, #16]
d0040d6e:	7c7a      	ldrb	r2, [r7, #17]
d0040d70:	2005      	movs	r0, #5
d0040d72:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040d76:	7cba      	ldrb	r2, [r7, #18]
d0040d78:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040d7c:	7cfa      	ldrb	r2, [r7, #19]
d0040d7e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040d82:	689b      	ldr	r3, [r3, #8]
d0040d84:	685b      	ldr	r3, [r3, #4]
d0040d86:	4798      	blx	r3
d0040d88:	9b03      	ldr	r3, [sp, #12]
d0040d8a:	f06f 0e7e 	mvn.w	lr, #126	; 0x7e
d0040d8e:	881a      	ldrh	r2, [r3, #0]
d0040d90:	7c38      	ldrb	r0, [r7, #16]
d0040d92:	3220      	adds	r2, #32
d0040d94:	7c79      	ldrb	r1, [r7, #17]
d0040d96:	4b5c      	ldr	r3, [pc, #368]	; (d0040f08 <proc_photo_torps+0x4a8>)
d0040d98:	b212      	sxth	r2, r2
d0040d9a:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
d0040d9e:	7cb9      	ldrb	r1, [r7, #18]
d0040da0:	3af0      	subs	r2, #240	; 0xf0
d0040da2:	7cff      	ldrb	r7, [r7, #19]
d0040da4:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
d0040da8:	2005      	movs	r0, #5
d0040daa:	ebc2 12c2 	rsb	r2, r2, r2, lsl #7
d0040dae:	ea41 6107 	orr.w	r1, r1, r7, lsl #24
d0040db2:	fb83 c302 	smull	ip, r3, r3, r2
d0040db6:	ea4f 7ce2 	mov.w	ip, r2, asr #31
d0040dba:	4413      	add	r3, r2
d0040dbc:	688a      	ldr	r2, [r1, #8]
d0040dbe:	ebcc 13e3 	rsb	r3, ip, r3, asr #7
d0040dc2:	b219      	sxth	r1, r3
d0040dc4:	6993      	ldr	r3, [r2, #24]
d0040dc6:	297f      	cmp	r1, #127	; 0x7f
d0040dc8:	bfa8      	it	ge
d0040dca:	217f      	movge	r1, #127	; 0x7f
d0040dcc:	4571      	cmp	r1, lr
d0040dce:	bfb8      	it	lt
d0040dd0:	4671      	movlt	r1, lr
d0040dd2:	b249      	sxtb	r1, r1
d0040dd4:	4798      	blx	r3
d0040dd6:	4a4d      	ldr	r2, [pc, #308]	; (d0040f0c <proc_photo_torps+0x4ac>)
d0040dd8:	f894 4027 	ldrb.w	r4, [r4, #39]	; 0x27
d0040ddc:	2104      	movs	r1, #4
d0040dde:	6813      	ldr	r3, [r2, #0]
d0040de0:	9802      	ldr	r0, [sp, #8]
d0040de2:	4423      	add	r3, r4
d0040de4:	6013      	str	r3, [r2, #0]
d0040de6:	f001 fcd9 	bl	d004279c <sbx_rng_range>
d0040dea:	2801      	cmp	r0, #1
d0040dec:	4604      	mov	r4, r0
d0040dee:	d00e      	beq.n	d0040e0e <proc_photo_torps+0x3ae>
d0040df0:	eb09 0006 	add.w	r0, r9, r6
d0040df4:	eb0a 1000 	add.w	r0, sl, r0, lsl #4
d0040df8:	f000 fc08 	bl	d004160c <spawnExplode3d>
d0040dfc:	2103      	movs	r1, #3
d0040dfe:	2000      	movs	r0, #0
d0040e00:	f001 fccc 	bl	d004279c <sbx_rng_range>
d0040e04:	4601      	mov	r1, r0
d0040e06:	4630      	mov	r0, r6
d0040e08:	f000 faa0 	bl	d004134c <SpawnAstroid3D>
d0040e0c:	e770      	b.n	d0040cf0 <proc_photo_torps+0x290>
d0040e0e:	4f40      	ldr	r7, [pc, #256]	; (d0040f10 <proc_photo_torps+0x4b0>)
d0040e10:	f897 3025 	ldrb.w	r3, [r7, #37]	; 0x25
d0040e14:	f003 02ff 	and.w	r2, r3, #255	; 0xff
d0040e18:	2b00      	cmp	r3, #0
d0040e1a:	d05c      	beq.n	d0040ed6 <proc_photo_torps+0x476>
d0040e1c:	f897 3055 	ldrb.w	r3, [r7, #85]	; 0x55
d0040e20:	2b00      	cmp	r3, #0
d0040e22:	d06b      	beq.n	d0040efc <proc_photo_torps+0x49c>
d0040e24:	f897 3085 	ldrb.w	r3, [r7, #133]	; 0x85
d0040e28:	2b00      	cmp	r3, #0
d0040e2a:	d063      	beq.n	d0040ef4 <proc_photo_torps+0x494>
d0040e2c:	f897 30b5 	ldrb.w	r3, [r7, #181]	; 0xb5
d0040e30:	2b00      	cmp	r3, #0
d0040e32:	d05c      	beq.n	d0040eee <proc_photo_torps+0x48e>
d0040e34:	f897 30e5 	ldrb.w	r3, [r7, #229]	; 0xe5
d0040e38:	2b00      	cmp	r3, #0
d0040e3a:	d055      	beq.n	d0040ee8 <proc_photo_torps+0x488>
d0040e3c:	f897 3115 	ldrb.w	r3, [r7, #277]	; 0x115
d0040e40:	2b00      	cmp	r3, #0
d0040e42:	d04e      	beq.n	d0040ee2 <proc_photo_torps+0x482>
d0040e44:	f897 3145 	ldrb.w	r3, [r7, #325]	; 0x145
d0040e48:	2b00      	cmp	r3, #0
d0040e4a:	d047      	beq.n	d0040edc <proc_photo_torps+0x47c>
d0040e4c:	f897 3175 	ldrb.w	r3, [r7, #373]	; 0x175
d0040e50:	2b00      	cmp	r3, #0
d0040e52:	d1cd      	bne.n	d0040df0 <proc_photo_torps+0x390>
d0040e54:	f507 70a8 	add.w	r0, r7, #336	; 0x150
d0040e58:	2407      	movs	r4, #7
d0040e5a:	2230      	movs	r2, #48	; 0x30
d0040e5c:	2100      	movs	r1, #0
d0040e5e:	f7ff f8ed 	bl	d004003c <memset>
d0040e62:	eb09 0306 	add.w	r3, r9, r6
d0040e66:	eb04 0444 	add.w	r4, r4, r4, lsl #1
d0040e6a:	2200      	movs	r2, #0
d0040e6c:	eb0a 1303 	add.w	r3, sl, r3, lsl #4
d0040e70:	2001      	movs	r0, #1
d0040e72:	eb07 1704 	add.w	r7, r7, r4, lsl #4
d0040e76:	2104      	movs	r1, #4
d0040e78:	f04f 4c83 	mov.w	ip, #1098907648	; 0x41800000
d0040e7c:	f887 0025 	strb.w	r0, [r7, #37]	; 0x25
d0040e80:	f887 2024 	strb.w	r2, [r7, #36]	; 0x24
d0040e84:	689c      	ldr	r4, [r3, #8]
d0040e86:	60bc      	str	r4, [r7, #8]
d0040e88:	2440      	movs	r4, #64	; 0x40
d0040e8a:	f8d3 e000 	ldr.w	lr, [r3]
d0040e8e:	f8c7 e000 	str.w	lr, [r7]
d0040e92:	685b      	ldr	r3, [r3, #4]
d0040e94:	607b      	str	r3, [r7, #4]
d0040e96:	2300      	movs	r3, #0
d0040e98:	60fb      	str	r3, [r7, #12]
d0040e9a:	613b      	str	r3, [r7, #16]
d0040e9c:	f8c7 c014 	str.w	ip, [r7, #20]
d0040ea0:	843c      	strh	r4, [r7, #32]
d0040ea2:	847c      	strh	r4, [r7, #34]	; 0x22
d0040ea4:	f887 2028 	strb.w	r2, [r7, #40]	; 0x28
d0040ea8:	f887 102a 	strb.w	r1, [r7, #42]	; 0x2a
d0040eac:	f001 fc76 	bl	d004279c <sbx_rng_range>
d0040eb0:	f010 0f01 	tst.w	r0, #1
d0040eb4:	f04f 0124 	mov.w	r1, #36	; 0x24
d0040eb8:	f04f 0264 	mov.w	r2, #100	; 0x64
d0040ebc:	f04f 0306 	mov.w	r3, #6
d0040ec0:	bf14      	ite	ne
d0040ec2:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
d0040ec6:	2001      	moveq	r0, #1
d0040ec8:	f887 0029 	strb.w	r0, [r7, #41]	; 0x29
d0040ecc:	f887 102b 	strb.w	r1, [r7, #43]	; 0x2b
d0040ed0:	83fa      	strh	r2, [r7, #30]
d0040ed2:	83bb      	strh	r3, [r7, #28]
d0040ed4:	e78c      	b.n	d0040df0 <proc_photo_torps+0x390>
d0040ed6:	4614      	mov	r4, r2
d0040ed8:	4638      	mov	r0, r7
d0040eda:	e7be      	b.n	d0040e5a <proc_photo_torps+0x3fa>
d0040edc:	480d      	ldr	r0, [pc, #52]	; (d0040f14 <proc_photo_torps+0x4b4>)
d0040ede:	2406      	movs	r4, #6
d0040ee0:	e7bb      	b.n	d0040e5a <proc_photo_torps+0x3fa>
d0040ee2:	480d      	ldr	r0, [pc, #52]	; (d0040f18 <proc_photo_torps+0x4b8>)
d0040ee4:	2405      	movs	r4, #5
d0040ee6:	e7b8      	b.n	d0040e5a <proc_photo_torps+0x3fa>
d0040ee8:	480c      	ldr	r0, [pc, #48]	; (d0040f1c <proc_photo_torps+0x4bc>)
d0040eea:	2404      	movs	r4, #4
d0040eec:	e7b5      	b.n	d0040e5a <proc_photo_torps+0x3fa>
d0040eee:	480c      	ldr	r0, [pc, #48]	; (d0040f20 <proc_photo_torps+0x4c0>)
d0040ef0:	2403      	movs	r4, #3
d0040ef2:	e7b2      	b.n	d0040e5a <proc_photo_torps+0x3fa>
d0040ef4:	f107 0060 	add.w	r0, r7, #96	; 0x60
d0040ef8:	2402      	movs	r4, #2
d0040efa:	e7ae      	b.n	d0040e5a <proc_photo_torps+0x3fa>
d0040efc:	f107 0030 	add.w	r0, r7, #48	; 0x30
d0040f00:	e7ab      	b.n	d0040e5a <proc_photo_torps+0x3fa>
d0040f02:	bf00      	nop
d0040f04:	2001f000 	.word	0x2001f000
d0040f08:	88888889 	.word	0x88888889
d0040f0c:	d0044b8c 	.word	0xd0044b8c
d0040f10:	d0045680 	.word	0xd0045680
d0040f14:	d00457a0 	.word	0xd00457a0
d0040f18:	d0045770 	.word	0xd0045770
d0040f1c:	d0045740 	.word	0xd0045740
d0040f20:	d0045710 	.word	0xd0045710

d0040f24 <procPills3D>:
d0040f24:	2200      	movs	r2, #0
d0040f26:	eeb7 3a00 	vmov.f32	s6, #112	; 0x3f800000  1.0
d0040f2a:	eddf 4a93 	vldr	s9, [pc, #588]	; d0041178 <procPills3D+0x254>
d0040f2e:	ed9f 5a93 	vldr	s10, [pc, #588]	; d004117c <procPills3D+0x258>
d0040f32:	eddf 5a93 	vldr	s11, [pc, #588]	; d0041180 <procPills3D+0x25c>
d0040f36:	eddf 3a93 	vldr	s7, [pc, #588]	; d0041184 <procPills3D+0x260>
d0040f3a:	ed9f 4a93 	vldr	s8, [pc, #588]	; d0041188 <procPills3D+0x264>
d0040f3e:	f8df c250 	ldr.w	ip, [pc, #592]	; d0041190 <procPills3D+0x26c>
d0040f42:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040f46:	4617      	mov	r7, r2
d0040f48:	4e90      	ldr	r6, [pc, #576]	; (d004118c <procPills3D+0x268>)
d0040f4a:	f8df e248 	ldr.w	lr, [pc, #584]	; d0041194 <procPills3D+0x270>
d0040f4e:	e0a8      	b.n	d00410a2 <procPills3D+0x17e>
d0040f50:	18ab      	adds	r3, r5, r2
d0040f52:	eb06 1303 	add.w	r3, r6, r3, lsl #4
d0040f56:	edd3 7a02 	vldr	s15, [r3, #8]
d0040f5a:	eef4 7ae4 	vcmpe.f32	s15, s9
d0040f5e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040f62:	f240 8105 	bls.w	d0041170 <procPills3D+0x24c>
d0040f66:	edd3 7a02 	vldr	s15, [r3, #8]
d0040f6a:	eef0 2a65 	vmov.f32	s5, s11
d0040f6e:	edd3 6a00 	vldr	s13, [r3]
d0040f72:	ee83 7a27 	vdiv.f32	s14, s6, s15
d0040f76:	ed93 6a01 	vldr	s12, [r3, #4]
d0040f7a:	ee66 6a85 	vmul.f32	s13, s13, s10
d0040f7e:	ee26 6a05 	vmul.f32	s12, s12, s10
d0040f82:	ee67 7a04 	vmul.f32	s15, s14, s8
d0040f86:	eee6 2a87 	vfma.f32	s5, s13, s14
d0040f8a:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0040f8e:	ee17 3a90 	vmov	r3, s15
d0040f92:	eef0 6a62 	vmov.f32	s13, s5
d0040f96:	b29b      	uxth	r3, r3
d0040f98:	eef0 2a63 	vmov.f32	s5, s7
d0040f9c:	2b04      	cmp	r3, #4
d0040f9e:	eee6 2a07 	vfma.f32	s5, s12, s14
d0040fa2:	bf38      	it	cc
d0040fa4:	2304      	movcc	r3, #4
d0040fa6:	ee07 3a90 	vmov	s15, r3
d0040faa:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040fae:	eeb0 7a62 	vmov.f32	s14, s5
d0040fb2:	eef4 7ae5 	vcmpe.f32	s15, s11
d0040fb6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040fba:	f300 80d4 	bgt.w	d0041166 <procPills3D+0x242>
d0040fbe:	eeb0 6a04 	vmov.f32	s12, #4	; 0x40200000  2.5
d0040fc2:	ee67 7a86 	vmul.f32	s15, s15, s12
d0040fc6:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0040fca:	ee17 4a90 	vmov	r4, s15
d0040fce:	fa1f f984 	uxth.w	r9, r4
d0040fd2:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0040fd6:	18ac      	adds	r4, r5, r2
d0040fd8:	eb06 1404 	add.w	r4, r6, r4, lsl #4
d0040fdc:	ee17 aa90 	vmov	sl, s15
d0040fe0:	eefd 7ac7 	vcvt.s32.f32	s15, s14
d0040fe4:	ebaa 0a00 	sub.w	sl, sl, r0
d0040fe8:	ee17 8a90 	vmov	r8, s15
d0040fec:	fa0f fa8a 	sxth.w	sl, sl
d0040ff0:	eba8 0801 	sub.w	r8, r8, r1
d0040ff4:	f8a4 a018 	strh.w	sl, [r4, #24]
d0040ff8:	fa0f f888 	sxth.w	r8, r8
d0040ffc:	f8a4 801a 	strh.w	r8, [r4, #26]
d0041000:	f8a4 901e 	strh.w	r9, [r4, #30]
d0041004:	f8b4 8020 	ldrh.w	r8, [r4, #32]
d0041008:	fa0f f888 	sxth.w	r8, r8
d004100c:	fb03 f808 	mul.w	r8, r3, r8
d0041010:	fbae 9808 	umull	r9, r8, lr, r8
d0041014:	f348 184f 	sbfx	r8, r8, #5, #16
d0041018:	f8a4 801c 	strh.w	r8, [r4, #28]
d004101c:	f8b4 801c 	ldrh.w	r8, [r4, #28]
d0041020:	fa0f f888 	sxth.w	r8, r8
d0041024:	f1b8 0f03 	cmp.w	r8, #3
d0041028:	dc03      	bgt.n	d0041032 <procPills3D+0x10e>
d004102a:	f04f 0804 	mov.w	r8, #4
d004102e:	f8a4 801c 	strh.w	r8, [r4, #28]
d0041032:	eb05 0802 	add.w	r8, r5, r2
d0041036:	eb06 1808 	add.w	r8, r6, r8, lsl #4
d004103a:	f8b8 4020 	ldrh.w	r4, [r8, #32]
d004103e:	f8b8 a022 	ldrh.w	sl, [r8, #34]	; 0x22
d0041042:	b224      	sxth	r4, r4
d0041044:	f8b8 9018 	ldrh.w	r9, [r8, #24]
d0041048:	fa0f fa8a 	sxth.w	sl, sl
d004104c:	fb03 f404 	mul.w	r4, r3, r4
d0041050:	fa0f f989 	sxth.w	r9, r9
d0041054:	fbac b404 	umull	fp, r4, ip, r4
d0041058:	f344 144f 	sbfx	r4, r4, #5, #16
d004105c:	f1c4 0b00 	rsb	fp, r4, #0
d0041060:	45d9      	cmp	r9, fp
d0041062:	db76      	blt.n	d0041152 <procPills3D+0x22e>
d0041064:	f8b8 9018 	ldrh.w	r9, [r8, #24]
d0041068:	f504 7420 	add.w	r4, r4, #640	; 0x280
d004106c:	fa0f f989 	sxth.w	r9, r9
d0041070:	45a1      	cmp	r9, r4
d0041072:	dc6e      	bgt.n	d0041152 <procPills3D+0x22e>
d0041074:	fb03 f30a 	mul.w	r3, r3, sl
d0041078:	f8b8 401a 	ldrh.w	r4, [r8, #26]
d004107c:	fbac 9303 	umull	r9, r3, ip, r3
d0041080:	b224      	sxth	r4, r4
d0041082:	f343 134f 	sbfx	r3, r3, #5, #16
d0041086:	f1c3 0900 	rsb	r9, r3, #0
d004108a:	454c      	cmp	r4, r9
d004108c:	db61      	blt.n	d0041152 <procPills3D+0x22e>
d004108e:	f8b8 401a 	ldrh.w	r4, [r8, #26]
d0041092:	f503 73f0 	add.w	r3, r3, #480	; 0x1e0
d0041096:	b224      	sxth	r4, r4
d0041098:	429c      	cmp	r4, r3
d004109a:	dc5a      	bgt.n	d0041152 <procPills3D+0x22e>
d004109c:	3201      	adds	r2, #1
d004109e:	2a08      	cmp	r2, #8
d00410a0:	d05f      	beq.n	d0041162 <procPills3D+0x23e>
d00410a2:	eb02 0342 	add.w	r3, r2, r2, lsl #1
d00410a6:	0055      	lsls	r5, r2, #1
d00410a8:	eb06 1303 	add.w	r3, r6, r3, lsl #4
d00410ac:	f893 4025 	ldrb.w	r4, [r3, #37]	; 0x25
d00410b0:	2c00      	cmp	r4, #0
d00410b2:	d0f3      	beq.n	d004109c <procPills3D+0x178>
d00410b4:	ed93 7a03 	vldr	s14, [r3, #12]
d00410b8:	edd3 7a00 	vldr	s15, [r3]
d00410bc:	ee77 7a87 	vadd.f32	s15, s15, s14
d00410c0:	edc3 7a00 	vstr	s15, [r3]
d00410c4:	ed93 7a04 	vldr	s14, [r3, #16]
d00410c8:	edd3 7a01 	vldr	s15, [r3, #4]
d00410cc:	ee77 7a87 	vadd.f32	s15, s15, s14
d00410d0:	edc3 7a01 	vstr	s15, [r3, #4]
d00410d4:	ed93 7a05 	vldr	s14, [r3, #20]
d00410d8:	edd3 7a02 	vldr	s15, [r3, #8]
d00410dc:	ee77 7ac7 	vsub.f32	s15, s15, s14
d00410e0:	edc3 7a02 	vstr	s15, [r3, #8]
d00410e4:	f893 4028 	ldrb.w	r4, [r3, #40]	; 0x28
d00410e8:	3401      	adds	r4, #1
d00410ea:	b2e4      	uxtb	r4, r4
d00410ec:	f883 4028 	strb.w	r4, [r3, #40]	; 0x28
d00410f0:	f893 4028 	ldrb.w	r4, [r3, #40]	; 0x28
d00410f4:	2c01      	cmp	r4, #1
d00410f6:	f67f af2b 	bls.w	d0040f50 <procPills3D+0x2c>
d00410fa:	f883 7028 	strb.w	r7, [r3, #40]	; 0x28
d00410fe:	f893 402a 	ldrb.w	r4, [r3, #42]	; 0x2a
d0041102:	f893 8029 	ldrb.w	r8, [r3, #41]	; 0x29
d0041106:	f893 902b 	ldrb.w	r9, [r3, #43]	; 0x2b
d004110a:	fa44 f888 	sxtab	r8, r4, r8
d004110e:	45c8      	cmp	r8, r9
d0041110:	db09      	blt.n	d0041126 <procPills3D+0x202>
d0041112:	f893 402b 	ldrb.w	r4, [r3, #43]	; 0x2b
d0041116:	f893 902b 	ldrb.w	r9, [r3, #43]	; 0x2b
d004111a:	eba8 0404 	sub.w	r4, r8, r4
d004111e:	fa0f f884 	sxth.w	r8, r4
d0041122:	45c8      	cmp	r8, r9
d0041124:	daf5      	bge.n	d0041112 <procPills3D+0x1ee>
d0041126:	f1b8 0f00 	cmp.w	r8, #0
d004112a:	da0a      	bge.n	d0041142 <procPills3D+0x21e>
d004112c:	18ac      	adds	r4, r5, r2
d004112e:	eb06 1404 	add.w	r4, r6, r4, lsl #4
d0041132:	f894 302b 	ldrb.w	r3, [r4, #43]	; 0x2b
d0041136:	4443      	add	r3, r8
d0041138:	fa0f f883 	sxth.w	r8, r3
d004113c:	f1b8 0f00 	cmp.w	r8, #0
d0041140:	dbf7      	blt.n	d0041132 <procPills3D+0x20e>
d0041142:	18ac      	adds	r4, r5, r2
d0041144:	fa5f f388 	uxtb.w	r3, r8
d0041148:	eb06 1404 	add.w	r4, r6, r4, lsl #4
d004114c:	f884 302a 	strb.w	r3, [r4, #42]	; 0x2a
d0041150:	e6fe      	b.n	d0040f50 <procPills3D+0x2c>
d0041152:	4415      	add	r5, r2
d0041154:	3201      	adds	r2, #1
d0041156:	eb06 1505 	add.w	r5, r6, r5, lsl #4
d004115a:	2a08      	cmp	r2, #8
d004115c:	f885 7025 	strb.w	r7, [r5, #37]	; 0x25
d0041160:	d19f      	bne.n	d00410a2 <procPills3D+0x17e>
d0041162:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0041166:	f44f 73a0 	mov.w	r3, #320	; 0x140
d004116a:	f44f 7948 	mov.w	r9, #800	; 0x320
d004116e:	e730      	b.n	d0040fd2 <procPills3D+0xae>
d0041170:	f883 7025 	strb.w	r7, [r3, #37]	; 0x25
d0041174:	e792      	b.n	d004109c <procPills3D+0x178>
d0041176:	bf00      	nop
d0041178:	42b40000 	.word	0x42b40000
d004117c:	43820000 	.word	0x43820000
d0041180:	43a00000 	.word	0x43a00000
d0041184:	43700000 	.word	0x43700000
d0041188:	46fa0000 	.word	0x46fa0000
d004118c:	d0045680 	.word	0xd0045680
d0041190:	51eb851f 	.word	0x51eb851f
d0041194:	1b4e81b5 	.word	0x1b4e81b5

d0041198 <UpdateHealth>:
d0041198:	4a08      	ldr	r2, [pc, #32]	; (d00411bc <UpdateHealth+0x24>)
d004119a:	7813      	ldrb	r3, [r2, #0]
d004119c:	4418      	add	r0, r3
d004119e:	b240      	sxtb	r0, r0
d00411a0:	2800      	cmp	r0, #0
d00411a2:	db08      	blt.n	d00411b6 <UpdateHealth+0x1e>
d00411a4:	2864      	cmp	r0, #100	; 0x64
d00411a6:	dd03      	ble.n	d00411b0 <UpdateHealth+0x18>
d00411a8:	2364      	movs	r3, #100	; 0x64
d00411aa:	2001      	movs	r0, #1
d00411ac:	7013      	strb	r3, [r2, #0]
d00411ae:	4770      	bx	lr
d00411b0:	7010      	strb	r0, [r2, #0]
d00411b2:	2001      	movs	r0, #1
d00411b4:	4770      	bx	lr
d00411b6:	2000      	movs	r0, #0
d00411b8:	7010      	strb	r0, [r2, #0]
d00411ba:	4770      	bx	lr
d00411bc:	d0044b60 	.word	0xd0044b60

d00411c0 <SetPlayerLives>:
d00411c0:	4b01      	ldr	r3, [pc, #4]	; (d00411c8 <SetPlayerLives+0x8>)
d00411c2:	7018      	strb	r0, [r3, #0]
d00411c4:	4770      	bx	lr
d00411c6:	bf00      	nop
d00411c8:	d0044b88 	.word	0xd0044b88

d00411cc <AddScore>:
d00411cc:	4a02      	ldr	r2, [pc, #8]	; (d00411d8 <AddScore+0xc>)
d00411ce:	6813      	ldr	r3, [r2, #0]
d00411d0:	4418      	add	r0, r3
d00411d2:	6010      	str	r0, [r2, #0]
d00411d4:	4770      	bx	lr
d00411d6:	bf00      	nop
d00411d8:	d0044b8c 	.word	0xd0044b8c

d00411dc <SpawnAstroid3D.part.0>:
d00411dc:	2903      	cmp	r1, #3
d00411de:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00411e2:	4607      	mov	r7, r0
d00411e4:	ed2d 8b02 	vpush	{d8}
d00411e8:	f200 808f 	bhi.w	d004130a <SpawnAstroid3D.part.0+0x12e>
d00411ec:	4688      	mov	r8, r1
d00411ee:	004d      	lsls	r5, r1, #1
d00411f0:	4e51      	ldr	r6, [pc, #324]	; (d0041338 <SpawnAstroid3D.part.0+0x15c>)
d00411f2:	eb07 0047 	add.w	r0, r7, r7, lsl #1
d00411f6:	2230      	movs	r2, #48	; 0x30
d00411f8:	2100      	movs	r1, #0
d00411fa:	eb06 1000 	add.w	r0, r6, r0, lsl #4
d00411fe:	ed9f 8a4f 	vldr	s16, [pc, #316]	; d004133c <SpawnAstroid3D.part.0+0x160>
d0041202:	f7fe ff1b 	bl	d004003c <memset>
d0041206:	4b4e      	ldr	r3, [pc, #312]	; (d0041340 <SpawnAstroid3D.part.0+0x164>)
d0041208:	eb07 0447 	add.w	r4, r7, r7, lsl #1
d004120c:	f04f 0c02 	mov.w	ip, #2
d0041210:	5d5a      	ldrb	r2, [r3, r5]
d0041212:	21f0      	movs	r1, #240	; 0xf0
d0041214:	eb06 1404 	add.w	r4, r6, r4, lsl #4
d0041218:	f06f 00ef 	mvn.w	r0, #239	; 0xef
d004121c:	007d      	lsls	r5, r7, #1
d004121e:	f884 8024 	strb.w	r8, [r4, #36]	; 0x24
d0041222:	f884 c025 	strb.w	ip, [r4, #37]	; 0x25
d0041226:	f884 2027 	strb.w	r2, [r4, #39]	; 0x27
d004122a:	f001 fab7 	bl	d004279c <sbx_rng_range>
d004122e:	ee07 0a90 	vmov	s15, r0
d0041232:	21dc      	movs	r1, #220	; 0xdc
d0041234:	f06f 00db 	mvn.w	r0, #219	; 0xdb
d0041238:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004123c:	edc4 7a00 	vstr	s15, [r4]
d0041240:	f001 faac 	bl	d004279c <sbx_rng_range>
d0041244:	ee07 0a90 	vmov	s15, r0
d0041248:	4b3e      	ldr	r3, [pc, #248]	; (d0041344 <SpawnAstroid3D.part.0+0x168>)
d004124a:	210a      	movs	r1, #10
d004124c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041250:	f06f 0009 	mvn.w	r0, #9
d0041254:	edc4 7a01 	vstr	s15, [r4, #4]
d0041258:	60a3      	str	r3, [r4, #8]
d004125a:	f001 fa9f 	bl	d004279c <sbx_rng_range>
d004125e:	ee07 0a90 	vmov	s15, r0
d0041262:	210a      	movs	r1, #10
d0041264:	f06f 0009 	mvn.w	r0, #9
d0041268:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004126c:	ee67 7a88 	vmul.f32	s15, s15, s16
d0041270:	edc4 7a03 	vstr	s15, [r4, #12]
d0041274:	f001 fa92 	bl	d004279c <sbx_rng_range>
d0041278:	ee07 0a90 	vmov	s15, r0
d004127c:	211c      	movs	r1, #28
d004127e:	2014      	movs	r0, #20
d0041280:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0041284:	ee67 7a88 	vmul.f32	s15, s15, s16
d0041288:	edc4 7a04 	vstr	s15, [r4, #16]
d004128c:	f001 fa86 	bl	d004279c <sbx_rng_range>
d0041290:	ee07 0a90 	vmov	s15, r0
d0041294:	ed9f 7a2c 	vldr	s14, [pc, #176]	; d0041348 <SpawnAstroid3D.part.0+0x16c>
d0041298:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004129c:	ee67 7a87 	vmul.f32	s15, s15, s14
d00412a0:	edc4 7a05 	vstr	s15, [r4, #20]
d00412a4:	f884 8024 	strb.w	r8, [r4, #36]	; 0x24
d00412a8:	f1b8 0f00 	cmp.w	r8, #0
d00412ac:	d130      	bne.n	d0041310 <SpawnAstroid3D.part.0+0x134>
d00412ae:	2360      	movs	r3, #96	; 0x60
d00412b0:	2218      	movs	r2, #24
d00412b2:	8463      	strh	r3, [r4, #34]	; 0x22
d00412b4:	8423      	strh	r3, [r4, #32]
d00412b6:	f884 202b 	strb.w	r2, [r4, #43]	; 0x2b
d00412ba:	443d      	add	r5, r7
d00412bc:	2000      	movs	r0, #0
d00412be:	eb06 1505 	add.w	r5, r6, r5, lsl #4
d00412c2:	f895 102b 	ldrb.w	r1, [r5, #43]	; 0x2b
d00412c6:	3901      	subs	r1, #1
d00412c8:	f001 fa68 	bl	d004279c <sbx_rng_range>
d00412cc:	4603      	mov	r3, r0
d00412ce:	2103      	movs	r1, #3
d00412d0:	2001      	movs	r0, #1
d00412d2:	b25b      	sxtb	r3, r3
d00412d4:	f885 3028 	strb.w	r3, [r5, #40]	; 0x28
d00412d8:	f001 fa60 	bl	d004279c <sbx_rng_range>
d00412dc:	4603      	mov	r3, r0
d00412de:	2104      	movs	r1, #4
d00412e0:	2001      	movs	r0, #1
d00412e2:	b2db      	uxtb	r3, r3
d00412e4:	f885 3029 	strb.w	r3, [r5, #41]	; 0x29
d00412e8:	f001 fa58 	bl	d004279c <sbx_rng_range>
d00412ec:	f010 0f01 	tst.w	r0, #1
d00412f0:	f04f 0364 	mov.w	r3, #100	; 0x64
d00412f4:	bf14      	ite	ne
d00412f6:	f04f 32ff 	movne.w	r2, #4294967295	; 0xffffffff
d00412fa:	2201      	moveq	r2, #1
d00412fc:	f885 2026 	strb.w	r2, [r5, #38]	; 0x26
d0041300:	83eb      	strh	r3, [r5, #30]
d0041302:	ecbd 8b02 	vpop	{d8}
d0041306:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d004130a:	2500      	movs	r5, #0
d004130c:	46a8      	mov	r8, r5
d004130e:	e76f      	b.n	d00411f0 <SpawnAstroid3D.part.0+0x14>
d0041310:	f1b8 0f01 	cmp.w	r8, #1
d0041314:	d106      	bne.n	d0041324 <SpawnAstroid3D.part.0+0x148>
d0041316:	2340      	movs	r3, #64	; 0x40
d0041318:	2218      	movs	r2, #24
d004131a:	8463      	strh	r3, [r4, #34]	; 0x22
d004131c:	8423      	strh	r3, [r4, #32]
d004131e:	f884 202b 	strb.w	r2, [r4, #43]	; 0x2b
d0041322:	e7ca      	b.n	d00412ba <SpawnAstroid3D.part.0+0xde>
d0041324:	f1b8 0f02 	cmp.w	r8, #2
d0041328:	d0f5      	beq.n	d0041316 <SpawnAstroid3D.part.0+0x13a>
d004132a:	2320      	movs	r3, #32
d004132c:	2210      	movs	r2, #16
d004132e:	8463      	strh	r3, [r4, #34]	; 0x22
d0041330:	8423      	strh	r3, [r4, #32]
d0041332:	f884 202b 	strb.w	r2, [r4, #43]	; 0x2b
d0041336:	e7c0      	b.n	d00412ba <SpawnAstroid3D.part.0+0xde>
d0041338:	d0045900 	.word	0xd0045900
d004133c:	3d4ccccd 	.word	0x3d4ccccd
d0041340:	d0044b64 	.word	0xd0044b64
d0041344:	44fc8000 	.word	0x44fc8000
d0041348:	3f8ccccd 	.word	0x3f8ccccd

d004134c <SpawnAstroid3D>:
d004134c:	280d      	cmp	r0, #13
d004134e:	d801      	bhi.n	d0041354 <SpawnAstroid3D+0x8>
d0041350:	f7ff bf44 	b.w	d00411dc <SpawnAstroid3D.part.0>
d0041354:	4770      	bx	lr
d0041356:	bf00      	nop

d0041358 <initAstroids3D>:
d0041358:	b510      	push	{r4, lr}
d004135a:	2400      	movs	r4, #0
d004135c:	2103      	movs	r1, #3
d004135e:	2000      	movs	r0, #0
d0041360:	f001 fa1c 	bl	d004279c <sbx_rng_range>
d0041364:	4601      	mov	r1, r0
d0041366:	b2e0      	uxtb	r0, r4
d0041368:	3401      	adds	r4, #1
d004136a:	b2c9      	uxtb	r1, r1
d004136c:	f7ff ff36 	bl	d00411dc <SpawnAstroid3D.part.0>
d0041370:	2c0e      	cmp	r4, #14
d0041372:	d1f3      	bne.n	d004135c <initAstroids3D+0x4>
d0041374:	bd10      	pop	{r4, pc}
d0041376:	bf00      	nop

d0041378 <proc_astroids3D>:
d0041378:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d004137c:	2400      	movs	r4, #0
d004137e:	4f98      	ldr	r7, [pc, #608]	; (d00415e0 <proc_astroids3D+0x268>)
d0041380:	4606      	mov	r6, r0
d0041382:	460d      	mov	r5, r1
d0041384:	ed2d 8b06 	vpush	{d8-d10}
d0041388:	ed9f 8a96 	vldr	s16, [pc, #600]	; d00415e4 <proc_astroids3D+0x26c>
d004138c:	b083      	sub	sp, #12
d004138e:	ed9f aa96 	vldr	s20, [pc, #600]	; d00415e8 <proc_astroids3D+0x270>
d0041392:	eddf aa96 	vldr	s21, [pc, #600]	; d00415ec <proc_astroids3D+0x274>
d0041396:	eddf 9a96 	vldr	s19, [pc, #600]	; d00415f0 <proc_astroids3D+0x278>
d004139a:	ed9f 9a96 	vldr	s18, [pc, #600]	; d00415f4 <proc_astroids3D+0x27c>
d004139e:	eddf 8a96 	vldr	s17, [pc, #600]	; d00415f8 <proc_astroids3D+0x280>
d00413a2:	e09b      	b.n	d00414dc <proc_astroids3D+0x164>
d00413a4:	edd3 7a02 	vldr	s15, [r3, #8]
d00413a8:	ed9f 7a94 	vldr	s14, [pc, #592]	; d00415fc <proc_astroids3D+0x284>
d00413ac:	eef4 7ac7 	vcmpe.f32	s15, s14
d00413b0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00413b4:	f240 8111 	bls.w	d00415da <proc_astroids3D+0x262>
d00413b8:	edd3 7a02 	vldr	s15, [r3, #8]
d00413bc:	ed9f 6a90 	vldr	s12, [pc, #576]	; d0041600 <proc_astroids3D+0x288>
d00413c0:	ee77 7ac7 	vsub.f32	s15, s15, s14
d00413c4:	ee67 7a86 	vmul.f32	s15, s15, s12
d00413c8:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00413cc:	edcd 7a01 	vstr	s15, [sp, #4]
d00413d0:	f89d 0004 	ldrb.w	r0, [sp, #4]
d00413d4:	ee66 7aa8 	vmul.f32	s15, s13, s17
d00413d8:	1911      	adds	r1, r2, r4
d00413da:	2302      	movs	r3, #2
d00413dc:	f240 2e26 	movw	lr, #550	; 0x226
d00413e0:	eb07 1101 	add.w	r1, r7, r1, lsl #4
d00413e4:	eeb0 6a69 	vmov.f32	s12, s19
d00413e8:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00413ec:	f8df c218 	ldr.w	ip, [pc, #536]	; d0041608 <proc_astroids3D+0x290>
d00413f0:	f881 302c 	strb.w	r3, [r1, #44]	; 0x2c
d00413f4:	f881 002e 	strb.w	r0, [r1, #46]	; 0x2e
d00413f8:	ee17 3a90 	vmov	r3, s15
d00413fc:	ed91 7a00 	vldr	s14, [r1]
d0041400:	edd1 7a01 	vldr	s15, [r1, #4]
d0041404:	b29b      	uxth	r3, r3
d0041406:	ee27 7a2a 	vmul.f32	s14, s14, s21
d004140a:	8c08      	ldrh	r0, [r1, #32]
d004140c:	ee67 7aaa 	vmul.f32	s15, s15, s21
d0041410:	4573      	cmp	r3, lr
d0041412:	eea7 6a26 	vfma.f32	s12, s14, s13
d0041416:	b200      	sxth	r0, r0
d0041418:	bf28      	it	cs
d004141a:	4673      	movcs	r3, lr
d004141c:	2b08      	cmp	r3, #8
d004141e:	bf38      	it	cc
d0041420:	2308      	movcc	r3, #8
d0041422:	eeb0 7a46 	vmov.f32	s14, s12
d0041426:	fb03 f000 	mul.w	r0, r3, r0
d004142a:	eeb0 6a49 	vmov.f32	s12, s18
d004142e:	fbac c000 	umull	ip, r0, ip, r0
d0041432:	eea7 6aa6 	vfma.f32	s12, s15, s13
d0041436:	f340 104f 	sbfx	r0, r0, #5, #16
d004143a:	8388      	strh	r0, [r1, #28]
d004143c:	8b88      	ldrh	r0, [r1, #28]
d004143e:	b200      	sxth	r0, r0
d0041440:	eef0 7a46 	vmov.f32	s15, s12
d0041444:	2803      	cmp	r0, #3
d0041446:	dc01      	bgt.n	d004144c <proc_astroids3D+0xd4>
d0041448:	2004      	movs	r0, #4
d004144a:	8388      	strh	r0, [r1, #28]
d004144c:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0041450:	4422      	add	r2, r4
d0041452:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0041456:	486b      	ldr	r0, [pc, #428]	; (d0041604 <proc_astroids3D+0x28c>)
d0041458:	eb07 1202 	add.w	r2, r7, r2, lsl #4
d004145c:	ee17 ca10 	vmov	ip, s14
d0041460:	ee17 1a90 	vmov	r1, s15
d0041464:	ebac 0c06 	sub.w	ip, ip, r6
d0041468:	1b49      	subs	r1, r1, r5
d004146a:	fa0f fc8c 	sxth.w	ip, ip
d004146e:	b209      	sxth	r1, r1
d0041470:	f8a2 c018 	strh.w	ip, [r2, #24]
d0041474:	8351      	strh	r1, [r2, #26]
d0041476:	83d3      	strh	r3, [r2, #30]
d0041478:	8c11      	ldrh	r1, [r2, #32]
d004147a:	f8b2 c022 	ldrh.w	ip, [r2, #34]	; 0x22
d004147e:	b209      	sxth	r1, r1
d0041480:	f8b2 e018 	ldrh.w	lr, [r2, #24]
d0041484:	fa0f fc8c 	sxth.w	ip, ip
d0041488:	fb03 f101 	mul.w	r1, r3, r1
d004148c:	fa0f fe8e 	sxth.w	lr, lr
d0041490:	fba0 9101 	umull	r9, r1, r0, r1
d0041494:	f341 114f 	sbfx	r1, r1, #5, #16
d0041498:	f1c1 0900 	rsb	r9, r1, #0
d004149c:	45ce      	cmp	lr, r9
d004149e:	f2c0 808b 	blt.w	d00415b8 <proc_astroids3D+0x240>
d00414a2:	f8b2 e018 	ldrh.w	lr, [r2, #24]
d00414a6:	f501 7120 	add.w	r1, r1, #640	; 0x280
d00414aa:	fa0f fe8e 	sxth.w	lr, lr
d00414ae:	458e      	cmp	lr, r1
d00414b0:	f300 8082 	bgt.w	d00415b8 <proc_astroids3D+0x240>
d00414b4:	fb03 f30c 	mul.w	r3, r3, ip
d00414b8:	8b51      	ldrh	r1, [r2, #26]
d00414ba:	fba0 0303 	umull	r0, r3, r0, r3
d00414be:	b209      	sxth	r1, r1
d00414c0:	f343 134f 	sbfx	r3, r3, #5, #16
d00414c4:	4258      	negs	r0, r3
d00414c6:	4281      	cmp	r1, r0
d00414c8:	db76      	blt.n	d00415b8 <proc_astroids3D+0x240>
d00414ca:	8b52      	ldrh	r2, [r2, #26]
d00414cc:	f503 73f0 	add.w	r3, r3, #480	; 0x1e0
d00414d0:	b212      	sxth	r2, r2
d00414d2:	429a      	cmp	r2, r3
d00414d4:	dc70      	bgt.n	d00415b8 <proc_astroids3D+0x240>
d00414d6:	3401      	adds	r4, #1
d00414d8:	2c0e      	cmp	r4, #14
d00414da:	d079      	beq.n	d00415d0 <proc_astroids3D+0x258>
d00414dc:	eb04 0344 	add.w	r3, r4, r4, lsl #1
d00414e0:	fa5f f884 	uxtb.w	r8, r4
d00414e4:	eb07 1303 	add.w	r3, r7, r3, lsl #4
d00414e8:	0062      	lsls	r2, r4, #1
d00414ea:	f893 1025 	ldrb.w	r1, [r3, #37]	; 0x25
d00414ee:	2900      	cmp	r1, #0
d00414f0:	d0f1      	beq.n	d00414d6 <proc_astroids3D+0x15e>
d00414f2:	f893 102a 	ldrb.w	r1, [r3, #42]	; 0x2a
d00414f6:	3101      	adds	r1, #1
d00414f8:	b2c9      	uxtb	r1, r1
d00414fa:	f883 102a 	strb.w	r1, [r3, #42]	; 0x2a
d00414fe:	f893 002a 	ldrb.w	r0, [r3, #42]	; 0x2a
d0041502:	f893 1029 	ldrb.w	r1, [r3, #41]	; 0x29
d0041506:	4288      	cmp	r0, r1
d0041508:	d921      	bls.n	d004154e <proc_astroids3D+0x1d6>
d004150a:	2100      	movs	r1, #0
d004150c:	f883 102a 	strb.w	r1, [r3, #42]	; 0x2a
d0041510:	f893 0026 	ldrb.w	r0, [r3, #38]	; 0x26
d0041514:	f893 1028 	ldrb.w	r1, [r3, #40]	; 0x28
d0041518:	4401      	add	r1, r0
d004151a:	b249      	sxtb	r1, r1
d004151c:	f883 1028 	strb.w	r1, [r3, #40]	; 0x28
d0041520:	f893 1028 	ldrb.w	r1, [r3, #40]	; 0x28
d0041524:	0609      	lsls	r1, r1, #24
d0041526:	d505      	bpl.n	d0041534 <proc_astroids3D+0x1bc>
d0041528:	f893 102b 	ldrb.w	r1, [r3, #43]	; 0x2b
d004152c:	3901      	subs	r1, #1
d004152e:	b249      	sxtb	r1, r1
d0041530:	f883 1028 	strb.w	r1, [r3, #40]	; 0x28
d0041534:	1913      	adds	r3, r2, r4
d0041536:	eb07 1303 	add.w	r3, r7, r3, lsl #4
d004153a:	f893 1028 	ldrb.w	r1, [r3, #40]	; 0x28
d004153e:	f893 002b 	ldrb.w	r0, [r3, #43]	; 0x2b
d0041542:	b249      	sxtb	r1, r1
d0041544:	4281      	cmp	r1, r0
d0041546:	db02      	blt.n	d004154e <proc_astroids3D+0x1d6>
d0041548:	2100      	movs	r1, #0
d004154a:	f883 1028 	strb.w	r1, [r3, #40]	; 0x28
d004154e:	1913      	adds	r3, r2, r4
d0041550:	eb07 1303 	add.w	r3, r7, r3, lsl #4
d0041554:	ed93 7a03 	vldr	s14, [r3, #12]
d0041558:	edd3 7a00 	vldr	s15, [r3]
d004155c:	ee77 7a87 	vadd.f32	s15, s15, s14
d0041560:	edc3 7a00 	vstr	s15, [r3]
d0041564:	ed93 7a04 	vldr	s14, [r3, #16]
d0041568:	edd3 7a01 	vldr	s15, [r3, #4]
d004156c:	ee77 7a87 	vadd.f32	s15, s15, s14
d0041570:	edc3 7a01 	vstr	s15, [r3, #4]
d0041574:	ed93 7a05 	vldr	s14, [r3, #20]
d0041578:	edd3 7a02 	vldr	s15, [r3, #8]
d004157c:	ee77 7ac7 	vsub.f32	s15, s15, s14
d0041580:	edc3 7a02 	vstr	s15, [r3, #8]
d0041584:	edd3 7a02 	vldr	s15, [r3, #8]
d0041588:	eef4 7ac8 	vcmpe.f32	s15, s16
d004158c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041590:	d912      	bls.n	d00415b8 <proc_astroids3D+0x240>
d0041592:	2102      	movs	r1, #2
d0041594:	ed93 7a02 	vldr	s14, [r3, #8]
d0041598:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d004159c:	f883 102c 	strb.w	r1, [r3, #44]	; 0x2c
d00415a0:	edd3 7a02 	vldr	s15, [r3, #8]
d00415a4:	eec6 6a07 	vdiv.f32	s13, s12, s14
d00415a8:	eef4 7aca 	vcmpe.f32	s15, s20
d00415ac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00415b0:	f6ff aef8 	blt.w	d00413a4 <proc_astroids3D+0x2c>
d00415b4:	205f      	movs	r0, #95	; 0x5f
d00415b6:	e70d      	b.n	d00413d4 <proc_astroids3D+0x5c>
d00415b8:	2103      	movs	r1, #3
d00415ba:	2000      	movs	r0, #0
d00415bc:	f001 f8ee 	bl	d004279c <sbx_rng_range>
d00415c0:	4601      	mov	r1, r0
d00415c2:	3401      	adds	r4, #1
d00415c4:	4640      	mov	r0, r8
d00415c6:	b2c9      	uxtb	r1, r1
d00415c8:	f7ff fe08 	bl	d00411dc <SpawnAstroid3D.part.0>
d00415cc:	2c0e      	cmp	r4, #14
d00415ce:	d185      	bne.n	d00414dc <proc_astroids3D+0x164>
d00415d0:	b003      	add	sp, #12
d00415d2:	ecbd 8b06 	vpop	{d8-d10}
d00415d6:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d00415da:	2000      	movs	r0, #0
d00415dc:	e6fa      	b.n	d00413d4 <proc_astroids3D+0x5c>
d00415de:	bf00      	nop
d00415e0:	d0045900 	.word	0xd0045900
d00415e4:	42b40000 	.word	0x42b40000
d00415e8:	44fc8000 	.word	0x44fc8000
d00415ec:	43820000 	.word	0x43820000
d00415f0:	43a00000 	.word	0x43a00000
d00415f4:	43700000 	.word	0x43700000
d00415f8:	47a02800 	.word	0x47a02800
d00415fc:	44610000 	.word	0x44610000
d0041600:	3dadb6db 	.word	0x3dadb6db
d0041604:	51eb851f 	.word	0x51eb851f
d0041608:	1b4e81b5 	.word	0x1b4e81b5

d004160c <spawnExplode3d>:
d004160c:	b368      	cbz	r0, d004166a <spawnExplode3d+0x5e>
d004160e:	2300      	movs	r3, #0
d0041610:	212c      	movs	r1, #44	; 0x2c
d0041612:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0041616:	4680      	mov	r8, r0
d0041618:	4e14      	ldr	r6, [pc, #80]	; (d004166c <spawnExplode3d+0x60>)
d004161a:	e001      	b.n	d0041620 <spawnExplode3d+0x14>
d004161c:	2b20      	cmp	r3, #32
d004161e:	d022      	beq.n	d0041666 <spawnExplode3d+0x5a>
d0041620:	fb01 6403 	mla	r4, r1, r3, r6
d0041624:	3301      	adds	r3, #1
d0041626:	f894 2022 	ldrb.w	r2, [r4, #34]	; 0x22
d004162a:	f002 05ff 	and.w	r5, r2, #255	; 0xff
d004162e:	2a00      	cmp	r2, #0
d0041630:	d1f4      	bne.n	d004161c <spawnExplode3d+0x10>
d0041632:	222c      	movs	r2, #44	; 0x2c
d0041634:	4629      	mov	r1, r5
d0041636:	4620      	mov	r0, r4
d0041638:	f7fe fd00 	bl	d004003c <memset>
d004163c:	2214      	movs	r2, #20
d004163e:	2364      	movs	r3, #100	; 0x64
d0041640:	f884 2022 	strb.w	r2, [r4, #34]	; 0x22
d0041644:	f884 5020 	strb.w	r5, [r4, #32]
d0041648:	f884 5024 	strb.w	r5, [r4, #36]	; 0x24
d004164c:	f8d8 0000 	ldr.w	r0, [r8]
d0041650:	f8d8 1004 	ldr.w	r1, [r8, #4]
d0041654:	f8d8 2008 	ldr.w	r2, [r8, #8]
d0041658:	60e0      	str	r0, [r4, #12]
d004165a:	6121      	str	r1, [r4, #16]
d004165c:	6162      	str	r2, [r4, #20]
d004165e:	8325      	strh	r5, [r4, #24]
d0041660:	8365      	strh	r5, [r4, #26]
d0041662:	83a5      	strh	r5, [r4, #28]
d0041664:	83e3      	strh	r3, [r4, #30]
d0041666:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d004166a:	4770      	bx	lr
d004166c:	d0045ec0 	.word	0xd0045ec0

d0041670 <procExplodes3d>:
d0041670:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d0041674:	2400      	movs	r4, #0
d0041676:	eef7 5a00 	vmov.f32	s11, #112	; 0x3f800000  1.0
d004167a:	4e69      	ldr	r6, [pc, #420]	; (d0041820 <procExplodes3d+0x1b0>)
d004167c:	252c      	movs	r5, #44	; 0x2c
d004167e:	4627      	mov	r7, r4
d0041680:	eddf 4a68 	vldr	s9, [pc, #416]	; d0041824 <procExplodes3d+0x1b4>
d0041684:	ed9f 5a68 	vldr	s10, [pc, #416]	; d0041828 <procExplodes3d+0x1b8>
d0041688:	ed9f 3a68 	vldr	s6, [pc, #416]	; d004182c <procExplodes3d+0x1bc>
d004168c:	eddf 3a68 	vldr	s7, [pc, #416]	; d0041830 <procExplodes3d+0x1c0>
d0041690:	ed9f 4a68 	vldr	s8, [pc, #416]	; d0041834 <procExplodes3d+0x1c4>
d0041694:	f8df c1a0 	ldr.w	ip, [pc, #416]	; d0041838 <procExplodes3d+0x1c8>
d0041698:	e0a0      	b.n	d00417dc <procExplodes3d+0x16c>
d004169a:	edd3 7a05 	vldr	s15, [r3, #20]
d004169e:	eef4 7ae4 	vcmpe.f32	s15, s9
d00416a2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00416a6:	f280 80ad 	bge.w	d0041804 <procExplodes3d+0x194>
d00416aa:	f893 3022 	ldrb.w	r3, [r3, #34]	; 0x22
d00416ae:	fb05 6204 	mla	r2, r5, r4, r6
d00416b2:	f1d3 0314 	rsbs	r3, r3, #20
d00416b6:	bf48      	it	mi
d00416b8:	3301      	addmi	r3, #1
d00416ba:	f343 0347 	sbfx	r3, r3, #1, #8
d00416be:	f882 3020 	strb.w	r3, [r2, #32]
d00416c2:	f892 3020 	ldrb.w	r3, [r2, #32]
d00416c6:	b25b      	sxtb	r3, r3
d00416c8:	2b09      	cmp	r3, #9
d00416ca:	dd02      	ble.n	d00416d2 <procExplodes3d+0x62>
d00416cc:	2309      	movs	r3, #9
d00416ce:	f882 3020 	strb.w	r3, [r2, #32]
d00416d2:	fb05 6204 	mla	r2, r5, r4, r6
d00416d6:	eeb3 7a0e 	vmov.f32	s14, #62	; 0x41f00000  30.0
d00416da:	eef0 2a43 	vmov.f32	s5, s6
d00416de:	edd2 7a05 	vldr	s15, [r2, #20]
d00416e2:	ee77 7ac7 	vsub.f32	s15, s15, s14
d00416e6:	edc2 7a05 	vstr	s15, [r2, #20]
d00416ea:	edd2 7a05 	vldr	s15, [r2, #20]
d00416ee:	ed92 7a03 	vldr	s14, [r2, #12]
d00416f2:	ee85 6aa7 	vdiv.f32	s12, s11, s15
d00416f6:	edd2 7a04 	vldr	s15, [r2, #16]
d00416fa:	ee27 7a05 	vmul.f32	s14, s14, s10
d00416fe:	ee67 7a85 	vmul.f32	s15, s15, s10
d0041702:	eee7 2a06 	vfma.f32	s5, s14, s12
d0041706:	ee66 6a04 	vmul.f32	s13, s12, s8
d004170a:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d004170e:	eeb0 7a62 	vmov.f32	s14, s5
d0041712:	eef0 2a63 	vmov.f32	s5, s7
d0041716:	ee16 3a90 	vmov	r3, s13
d004171a:	b29b      	uxth	r3, r3
d004171c:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0041720:	eee6 2a27 	vfma.f32	s5, s12, s15
d0041724:	f5b3 7fc8 	cmp.w	r3, #400	; 0x190
d0041728:	ee17 8a10 	vmov	r8, s14
d004172c:	bf28      	it	cs
d004172e:	f44f 73c8 	movcs.w	r3, #400	; 0x190
d0041732:	eba8 0800 	sub.w	r8, r8, r0
d0041736:	2b10      	cmp	r3, #16
d0041738:	eefd 7ae2 	vcvt.s32.f32	s15, s5
d004173c:	fa0f f888 	sxth.w	r8, r8
d0041740:	bf38      	it	cc
d0041742:	2310      	movcc	r3, #16
d0041744:	f8a2 8018 	strh.w	r8, [r2, #24]
d0041748:	ee17 ea90 	vmov	lr, s15
d004174c:	fa0f f983 	sxth.w	r9, r3
d0041750:	ebae 0e01 	sub.w	lr, lr, r1
d0041754:	fa0f fe8e 	sxth.w	lr, lr
d0041758:	f8a2 e01a 	strh.w	lr, [r2, #26]
d004175c:	f8a2 901e 	strh.w	r9, [r2, #30]
d0041760:	f892 e022 	ldrb.w	lr, [r2, #34]	; 0x22
d0041764:	f1be 0f07 	cmp.w	lr, #7
d0041768:	d855      	bhi.n	d0041816 <procExplodes3d+0x1a6>
d004176a:	f892 e022 	ldrb.w	lr, [r2, #34]	; 0x22
d004176e:	f04f 0802 	mov.w	r8, #2
d0041772:	f1ce 0e08 	rsb	lr, lr, #8
d0041776:	f882 8025 	strb.w	r8, [r2, #37]	; 0x25
d004177a:	eb0e 0e4e 	add.w	lr, lr, lr, lsl #1
d004177e:	fa0e fe08 	lsl.w	lr, lr, r8
d0041782:	fa5f fe8e 	uxtb.w	lr, lr
d0041786:	f1be 0f5f 	cmp.w	lr, #95	; 0x5f
d004178a:	bf28      	it	cs
d004178c:	f04f 0e5f 	movcs.w	lr, #95	; 0x5f
d0041790:	f882 e027 	strb.w	lr, [r2, #39]	; 0x27
d0041794:	019b      	lsls	r3, r3, #6
d0041796:	fb05 6e04 	mla	lr, r5, r4, r6
d004179a:	fbac 2303 	umull	r2, r3, ip, r3
d004179e:	f8be 2018 	ldrh.w	r2, [lr, #24]
d00417a2:	095b      	lsrs	r3, r3, #5
d00417a4:	b212      	sxth	r2, r2
d00417a6:	f1c3 0900 	rsb	r9, r3, #0
d00417aa:	454a      	cmp	r2, r9
d00417ac:	db2a      	blt.n	d0041804 <procExplodes3d+0x194>
d00417ae:	f8be 8018 	ldrh.w	r8, [lr, #24]
d00417b2:	f503 7220 	add.w	r2, r3, #640	; 0x280
d00417b6:	fa0f f888 	sxth.w	r8, r8
d00417ba:	4590      	cmp	r8, r2
d00417bc:	dc22      	bgt.n	d0041804 <procExplodes3d+0x194>
d00417be:	f8be 201a 	ldrh.w	r2, [lr, #26]
d00417c2:	b212      	sxth	r2, r2
d00417c4:	4591      	cmp	r9, r2
d00417c6:	dc1d      	bgt.n	d0041804 <procExplodes3d+0x194>
d00417c8:	f8be 201a 	ldrh.w	r2, [lr, #26]
d00417cc:	f503 73f0 	add.w	r3, r3, #480	; 0x1e0
d00417d0:	b212      	sxth	r2, r2
d00417d2:	429a      	cmp	r2, r3
d00417d4:	dc16      	bgt.n	d0041804 <procExplodes3d+0x194>
d00417d6:	3401      	adds	r4, #1
d00417d8:	2c20      	cmp	r4, #32
d00417da:	d01a      	beq.n	d0041812 <procExplodes3d+0x1a2>
d00417dc:	fb05 6304 	mla	r3, r5, r4, r6
d00417e0:	f893 2022 	ldrb.w	r2, [r3, #34]	; 0x22
d00417e4:	2a00      	cmp	r2, #0
d00417e6:	d0f6      	beq.n	d00417d6 <procExplodes3d+0x166>
d00417e8:	f893 2022 	ldrb.w	r2, [r3, #34]	; 0x22
d00417ec:	3a01      	subs	r2, #1
d00417ee:	b2d2      	uxtb	r2, r2
d00417f0:	f883 2022 	strb.w	r2, [r3, #34]	; 0x22
d00417f4:	edd3 7a05 	vldr	s15, [r3, #20]
d00417f8:	eef4 7ae5 	vcmpe.f32	s15, s11
d00417fc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041800:	f63f af4b 	bhi.w	d004169a <procExplodes3d+0x2a>
d0041804:	fb05 6304 	mla	r3, r5, r4, r6
d0041808:	3401      	adds	r4, #1
d004180a:	2c20      	cmp	r4, #32
d004180c:	f883 7022 	strb.w	r7, [r3, #34]	; 0x22
d0041810:	d1e4      	bne.n	d00417dc <procExplodes3d+0x16c>
d0041812:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0041816:	f882 7025 	strb.w	r7, [r2, #37]	; 0x25
d004181a:	f882 7027 	strb.w	r7, [r2, #39]	; 0x27
d004181e:	e7b9      	b.n	d0041794 <procExplodes3d+0x124>
d0041820:	d0045ec0 	.word	0xd0045ec0
d0041824:	44fc8000 	.word	0x44fc8000
d0041828:	43820000 	.word	0x43820000
d004182c:	43a00000 	.word	0x43a00000
d0041830:	43700000 	.word	0x43700000
d0041834:	47a41000 	.word	0x47a41000
d0041838:	51eb851f 	.word	0x51eb851f

d004183c <LoadGraphics>:
d004183c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0041840:	f44f 3061 	mov.w	r0, #230400	; 0x38400
d0041844:	b082      	sub	sp, #8
d0041846:	4c2e      	ldr	r4, [pc, #184]	; (d0041900 <LoadGraphics+0xc4>)
d0041848:	f001 fbfe 	bl	d0043048 <malloc>
d004184c:	2500      	movs	r5, #0
d004184e:	2260      	movs	r2, #96	; 0x60
d0041850:	4603      	mov	r3, r0
d0041852:	f44f 71f0 	mov.w	r1, #480	; 0x1e0
d0041856:	9001      	str	r0, [sp, #4]
d0041858:	2640      	movs	r6, #64	; 0x40
d004185a:	6023      	str	r3, [r4, #0]
d004185c:	f44f 7800 	mov.w	r8, #512	; 0x200
d0041860:	81a1      	strh	r1, [r4, #12]
d0041862:	27c0      	movs	r7, #192	; 0xc0
d0041864:	81e1      	strh	r1, [r4, #14]
d0041866:	4827      	ldr	r0, [pc, #156]	; (d0041904 <LoadGraphics+0xc8>)
d0041868:	8222      	strh	r2, [r4, #16]
d004186a:	8262      	strh	r2, [r4, #18]
d004186c:	82a5      	strh	r5, [r4, #20]
d004186e:	82e5      	strh	r5, [r4, #22]
d0041870:	6821      	ldr	r1, [r4, #0]
d0041872:	f7fe fbeb 	bl	d004004c <LoadPPB>
d0041876:	f44f 30c0 	mov.w	r0, #98304	; 0x18000
d004187a:	f001 fbe5 	bl	d0043048 <malloc>
d004187e:	9001      	str	r0, [sp, #4]
d0041880:	9b01      	ldr	r3, [sp, #4]
d0041882:	4821      	ldr	r0, [pc, #132]	; (d0041908 <LoadGraphics+0xcc>)
d0041884:	6223      	str	r3, [r4, #32]
d0041886:	f8a4 802c 	strh.w	r8, [r4, #44]	; 0x2c
d004188a:	85e7      	strh	r7, [r4, #46]	; 0x2e
d004188c:	8626      	strh	r6, [r4, #48]	; 0x30
d004188e:	8666      	strh	r6, [r4, #50]	; 0x32
d0041890:	86a5      	strh	r5, [r4, #52]	; 0x34
d0041892:	86e5      	strh	r5, [r4, #54]	; 0x36
d0041894:	6a21      	ldr	r1, [r4, #32]
d0041896:	f7fe fbd9 	bl	d004004c <LoadPPB>
d004189a:	f44f 30c0 	mov.w	r0, #98304	; 0x18000
d004189e:	f001 fbd3 	bl	d0043048 <malloc>
d00418a2:	9001      	str	r0, [sp, #4]
d00418a4:	9b01      	ldr	r3, [sp, #4]
d00418a6:	4819      	ldr	r0, [pc, #100]	; (d004190c <LoadGraphics+0xd0>)
d00418a8:	6423      	str	r3, [r4, #64]	; 0x40
d00418aa:	f8a4 804c 	strh.w	r8, [r4, #76]	; 0x4c
d00418ae:	f8a4 704e 	strh.w	r7, [r4, #78]	; 0x4e
d00418b2:	f8a4 6050 	strh.w	r6, [r4, #80]	; 0x50
d00418b6:	f8a4 6052 	strh.w	r6, [r4, #82]	; 0x52
d00418ba:	f8a4 5054 	strh.w	r5, [r4, #84]	; 0x54
d00418be:	f8a4 5056 	strh.w	r5, [r4, #86]	; 0x56
d00418c2:	6c21      	ldr	r1, [r4, #64]	; 0x40
d00418c4:	f7fe fbc2 	bl	d004004c <LoadPPB>
d00418c8:	f44f 4080 	mov.w	r0, #16384	; 0x4000
d00418cc:	f001 fbbc 	bl	d0043048 <malloc>
d00418d0:	2220      	movs	r2, #32
d00418d2:	4603      	mov	r3, r0
d00418d4:	f44f 7180 	mov.w	r1, #256	; 0x100
d00418d8:	480d      	ldr	r0, [pc, #52]	; (d0041910 <LoadGraphics+0xd4>)
d00418da:	6623      	str	r3, [r4, #96]	; 0x60
d00418dc:	f8a4 106c 	strh.w	r1, [r4, #108]	; 0x6c
d00418e0:	f8a4 606e 	strh.w	r6, [r4, #110]	; 0x6e
d00418e4:	f8a4 2070 	strh.w	r2, [r4, #112]	; 0x70
d00418e8:	f8a4 2072 	strh.w	r2, [r4, #114]	; 0x72
d00418ec:	f8a4 5074 	strh.w	r5, [r4, #116]	; 0x74
d00418f0:	f8a4 5076 	strh.w	r5, [r4, #118]	; 0x76
d00418f4:	6e21      	ldr	r1, [r4, #96]	; 0x60
d00418f6:	b002      	add	sp, #8
d00418f8:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d00418fc:	f7fe bba6 	b.w	d004004c <LoadPPB>
d0041900:	d0045880 	.word	0xd0045880
d0041904:	d00440a8 	.word	0xd00440a8
d0041908:	d00440c0 	.word	0xd00440c0
d004190c:	d00440dc 	.word	0xd00440dc
d0041910:	d00440f8 	.word	0xd00440f8

d0041914 <LoadShipGfx>:
d0041914:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0041918:	f44f 3010 	mov.w	r0, #147456	; 0x24000
d004191c:	2400      	movs	r4, #0
d004191e:	f001 fb93 	bl	d0043048 <malloc>
d0041922:	2540      	movs	r5, #64	; 0x40
d0041924:	4b3c      	ldr	r3, [pc, #240]	; (d0041a18 <LoadShipGfx+0x104>)
d0041926:	4602      	mov	r2, r0
d0041928:	f04f 090a 	mov.w	r9, #10
d004192c:	f44f 77c0 	mov.w	r7, #384	; 0x180
d0041930:	601a      	str	r2, [r3, #0]
d0041932:	f04f 0860 	mov.w	r8, #96	; 0x60
d0041936:	81df      	strh	r7, [r3, #14]
d0041938:	26a0      	movs	r6, #160	; 0xa0
d004193a:	819f      	strh	r7, [r3, #12]
d004193c:	4837      	ldr	r0, [pc, #220]	; (d0041a1c <LoadShipGfx+0x108>)
d004193e:	825d      	strh	r5, [r3, #18]
d0041940:	821d      	strh	r5, [r3, #16]
d0041942:	76dc      	strb	r4, [r3, #27]
d0041944:	f8a3 9014 	strh.w	r9, [r3, #20]
d0041948:	f8a3 9016 	strh.w	r9, [r3, #22]
d004194c:	6819      	ldr	r1, [r3, #0]
d004194e:	f7fe fb7d 	bl	d004004c <LoadPPB>
d0041952:	f44f 3061 	mov.w	r0, #230400	; 0x38400
d0041956:	f001 fb77 	bl	d0043048 <malloc>
d004195a:	4b31      	ldr	r3, [pc, #196]	; (d0041a20 <LoadShipGfx+0x10c>)
d004195c:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0041960:	210c      	movs	r1, #12
d0041962:	6018      	str	r0, [r3, #0]
d0041964:	81da      	strh	r2, [r3, #14]
d0041966:	482f      	ldr	r0, [pc, #188]	; (d0041a24 <LoadShipGfx+0x110>)
d0041968:	819a      	strh	r2, [r3, #12]
d004196a:	f8a3 8012 	strh.w	r8, [r3, #18]
d004196e:	f8a3 8010 	strh.w	r8, [r3, #16]
d0041972:	76d9      	strb	r1, [r3, #27]
d0041974:	f8a3 9014 	strh.w	r9, [r3, #20]
d0041978:	f8a3 9016 	strh.w	r9, [r3, #22]
d004197c:	6819      	ldr	r1, [r3, #0]
d004197e:	f7fe fb65 	bl	d004004c <LoadPPB>
d0041982:	f44f 5010 	mov.w	r0, #9216	; 0x2400
d0041986:	f001 fb5f 	bl	d0043048 <malloc>
d004198a:	4b27      	ldr	r3, [pc, #156]	; (d0041a28 <LoadShipGfx+0x114>)
d004198c:	4602      	mov	r2, r0
d004198e:	2110      	movs	r1, #16
d0041990:	4826      	ldr	r0, [pc, #152]	; (d0041a2c <LoadShipGfx+0x118>)
d0041992:	601a      	str	r2, [r3, #0]
d0041994:	f8a3 800e 	strh.w	r8, [r3, #14]
d0041998:	f8a3 800c 	strh.w	r8, [r3, #12]
d004199c:	8259      	strh	r1, [r3, #18]
d004199e:	8219      	strh	r1, [r3, #16]
d00419a0:	76dc      	strb	r4, [r3, #27]
d00419a2:	6819      	ldr	r1, [r3, #0]
d00419a4:	f7fe fb52 	bl	d004004c <LoadPPB>
d00419a8:	f44f 6048 	mov.w	r0, #3200	; 0xc80
d00419ac:	f001 fb4c 	bl	d0043048 <malloc>
d00419b0:	4b1f      	ldr	r3, [pc, #124]	; (d0041a30 <LoadShipGfx+0x11c>)
d00419b2:	2214      	movs	r2, #20
d00419b4:	4601      	mov	r1, r0
d00419b6:	481f      	ldr	r0, [pc, #124]	; (d0041a34 <LoadShipGfx+0x120>)
d00419b8:	6019      	str	r1, [r3, #0]
d00419ba:	81da      	strh	r2, [r3, #14]
d00419bc:	819e      	strh	r6, [r3, #12]
d00419be:	825a      	strh	r2, [r3, #18]
d00419c0:	821a      	strh	r2, [r3, #16]
d00419c2:	76dc      	strb	r4, [r3, #27]
d00419c4:	6819      	ldr	r1, [r3, #0]
d00419c6:	f7fe fb41 	bl	d004004c <LoadPPB>
d00419ca:	f44f 4048 	mov.w	r0, #51200	; 0xc800
d00419ce:	f001 fb3b 	bl	d0043048 <malloc>
d00419d2:	4b19      	ldr	r3, [pc, #100]	; (d0041a38 <LoadShipGfx+0x124>)
d00419d4:	2250      	movs	r2, #80	; 0x50
d00419d6:	f44f 71a0 	mov.w	r1, #320	; 0x140
d00419da:	6018      	str	r0, [r3, #0]
d00419dc:	81de      	strh	r6, [r3, #14]
d00419de:	26c0      	movs	r6, #192	; 0xc0
d00419e0:	8199      	strh	r1, [r3, #12]
d00419e2:	4816      	ldr	r0, [pc, #88]	; (d0041a3c <LoadShipGfx+0x128>)
d00419e4:	821a      	strh	r2, [r3, #16]
d00419e6:	825a      	strh	r2, [r3, #18]
d00419e8:	76dc      	strb	r4, [r3, #27]
d00419ea:	6819      	ldr	r1, [r3, #0]
d00419ec:	f7fe fb2e 	bl	d004004c <LoadPPB>
d00419f0:	f44f 3090 	mov.w	r0, #73728	; 0x12000
d00419f4:	f001 fb28 	bl	d0043048 <malloc>
d00419f8:	4b11      	ldr	r3, [pc, #68]	; (d0041a40 <LoadShipGfx+0x12c>)
d00419fa:	4602      	mov	r2, r0
d00419fc:	2104      	movs	r1, #4
d00419fe:	4811      	ldr	r0, [pc, #68]	; (d0041a44 <LoadShipGfx+0x130>)
d0041a00:	601a      	str	r2, [r3, #0]
d0041a02:	81de      	strh	r6, [r3, #14]
d0041a04:	819f      	strh	r7, [r3, #12]
d0041a06:	7699      	strb	r1, [r3, #26]
d0041a08:	821d      	strh	r5, [r3, #16]
d0041a0a:	825d      	strh	r5, [r3, #18]
d0041a0c:	76dc      	strb	r4, [r3, #27]
d0041a0e:	6819      	ldr	r1, [r3, #0]
d0041a10:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0041a14:	f7fe bb1a 	b.w	d004004c <LoadPPB>
d0041a18:	d0045840 	.word	0xd0045840
d0041a1c:	d0044110 	.word	0xd0044110
d0041a20:	d0045800 	.word	0xd0045800
d0041a24:	d0044120 	.word	0xd0044120
d0041a28:	d0045660 	.word	0xd0045660
d0041a2c:	d0044134 	.word	0xd0044134
d0041a30:	d0046740 	.word	0xd0046740
d0041a34:	d004414c 	.word	0xd004414c
d0041a38:	d0044ca0 	.word	0xd0044ca0
d0041a3c:	d004415c 	.word	0xd004415c
d0041a40:	d0046460 	.word	0xd0046460
d0041a44:	d004416c 	.word	0xd004416c

d0041a48 <LoadCommonGameGraphics>:
d0041a48:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0041a4a:	f44f 4020 	mov.w	r0, #40960	; 0xa000
d0041a4e:	2680      	movs	r6, #128	; 0x80
d0041a50:	f001 fafa 	bl	d0043048 <malloc>
d0041a54:	2700      	movs	r7, #0
d0041a56:	4b21      	ldr	r3, [pc, #132]	; (d0041adc <LoadCommonGameGraphics+0x94>)
d0041a58:	2240      	movs	r2, #64	; 0x40
d0041a5a:	f44f 71a0 	mov.w	r1, #320	; 0x140
d0041a5e:	2410      	movs	r4, #16
d0041a60:	6018      	str	r0, [r3, #0]
d0041a62:	25c0      	movs	r5, #192	; 0xc0
d0041a64:	81de      	strh	r6, [r3, #14]
d0041a66:	481e      	ldr	r0, [pc, #120]	; (d0041ae0 <LoadCommonGameGraphics+0x98>)
d0041a68:	8199      	strh	r1, [r3, #12]
d0041a6a:	825a      	strh	r2, [r3, #18]
d0041a6c:	821a      	strh	r2, [r3, #16]
d0041a6e:	76df      	strb	r7, [r3, #27]
d0041a70:	6819      	ldr	r1, [r3, #0]
d0041a72:	f7fe faeb 	bl	d004004c <LoadPPB>
d0041a76:	f44f 40c0 	mov.w	r0, #24576	; 0x6000
d0041a7a:	f001 fae5 	bl	d0043048 <malloc>
d0041a7e:	4b19      	ldr	r3, [pc, #100]	; (d0041ae4 <LoadCommonGameGraphics+0x9c>)
d0041a80:	4602      	mov	r2, r0
d0041a82:	4819      	ldr	r0, [pc, #100]	; (d0041ae8 <LoadCommonGameGraphics+0xa0>)
d0041a84:	601a      	str	r2, [r3, #0]
d0041a86:	81dd      	strh	r5, [r3, #14]
d0041a88:	819e      	strh	r6, [r3, #12]
d0041a8a:	821c      	strh	r4, [r3, #16]
d0041a8c:	825c      	strh	r4, [r3, #18]
d0041a8e:	76df      	strb	r7, [r3, #27]
d0041a90:	6819      	ldr	r1, [r3, #0]
d0041a92:	f7fe fadb 	bl	d004004c <LoadPPB>
d0041a96:	f44f 4010 	mov.w	r0, #36864	; 0x9000
d0041a9a:	f001 fad5 	bl	d0043048 <malloc>
d0041a9e:	4b13      	ldr	r3, [pc, #76]	; (d0041aec <LoadCommonGameGraphics+0xa4>)
d0041aa0:	4602      	mov	r2, r0
d0041aa2:	2120      	movs	r1, #32
d0041aa4:	4812      	ldr	r0, [pc, #72]	; (d0041af0 <LoadCommonGameGraphics+0xa8>)
d0041aa6:	601a      	str	r2, [r3, #0]
d0041aa8:	819d      	strh	r5, [r3, #12]
d0041aaa:	81dd      	strh	r5, [r3, #14]
d0041aac:	2530      	movs	r5, #48	; 0x30
d0041aae:	8259      	strh	r1, [r3, #18]
d0041ab0:	8219      	strh	r1, [r3, #16]
d0041ab2:	6819      	ldr	r1, [r3, #0]
d0041ab4:	f7fe faca 	bl	d004004c <LoadPPB>
d0041ab8:	f44f 7040 	mov.w	r0, #768	; 0x300
d0041abc:	f001 fac4 	bl	d0043048 <malloc>
d0041ac0:	4b0c      	ldr	r3, [pc, #48]	; (d0041af4 <LoadCommonGameGraphics+0xac>)
d0041ac2:	4602      	mov	r2, r0
d0041ac4:	2108      	movs	r1, #8
d0041ac6:	480c      	ldr	r0, [pc, #48]	; (d0041af8 <LoadCommonGameGraphics+0xb0>)
d0041ac8:	601a      	str	r2, [r3, #0]
d0041aca:	81dc      	strh	r4, [r3, #14]
d0041acc:	819d      	strh	r5, [r3, #12]
d0041ace:	825c      	strh	r4, [r3, #18]
d0041ad0:	8219      	strh	r1, [r3, #16]
d0041ad2:	6819      	ldr	r1, [r3, #0]
d0041ad4:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0041ad8:	f7fe bab8 	b.w	d004004c <LoadPPB>
d0041adc:	d00467e0 	.word	0xd00467e0
d0041ae0:	d004417c 	.word	0xd004417c
d0041ae4:	d0046780 	.word	0xd0046780
d0041ae8:	d004418c 	.word	0xd004418c
d0041aec:	d0045ea0 	.word	0xd0045ea0
d0041af0:	d00441a0 	.word	0xd00441a0
d0041af4:	d0046440 	.word	0xd0046440
d0041af8:	d00441b4 	.word	0xd00441b4

d0041afc <render3Dstuff>:
d0041afc:	48a6      	ldr	r0, [pc, #664]	; (d0041d98 <render3Dstuff+0x29c>)
d0041afe:	2100      	movs	r1, #0
d0041b00:	4aa6      	ldr	r2, [pc, #664]	; (d0041d9c <render3Dstuff+0x2a0>)
d0041b02:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0041b06:	ed2d 8b02 	vpush	{d8}
d0041b0a:	f890 3025 	ldrb.w	r3, [r0, #37]	; 0x25
d0041b0e:	b087      	sub	sp, #28
d0041b10:	7011      	strb	r1, [r2, #0]
d0041b12:	2b00      	cmp	r3, #0
d0041b14:	f000 8334 	beq.w	d0042180 <render3Dstuff+0x684>
d0041b18:	4ca1      	ldr	r4, [pc, #644]	; (d0041da0 <render3Dstuff+0x2a4>)
d0041b1a:	2201      	movs	r2, #1
d0041b1c:	6883      	ldr	r3, [r0, #8]
d0041b1e:	80a1      	strh	r1, [r4, #4]
d0041b20:	6023      	str	r3, [r4, #0]
d0041b22:	499d      	ldr	r1, [pc, #628]	; (d0041d98 <render3Dstuff+0x29c>)
d0041b24:	f891 3055 	ldrb.w	r3, [r1, #85]	; 0x55
d0041b28:	b14b      	cbz	r3, d0041b3e <render3Dstuff+0x42>
d0041b2a:	4c9d      	ldr	r4, [pc, #628]	; (d0041da0 <render3Dstuff+0x2a4>)
d0041b2c:	1c50      	adds	r0, r2, #1
d0041b2e:	6b89      	ldr	r1, [r1, #56]	; 0x38
d0041b30:	f44f 7380 	mov.w	r3, #256	; 0x100
d0041b34:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041b38:	b2c2      	uxtb	r2, r0
d0041b3a:	6021      	str	r1, [r4, #0]
d0041b3c:	80a3      	strh	r3, [r4, #4]
d0041b3e:	4996      	ldr	r1, [pc, #600]	; (d0041d98 <render3Dstuff+0x29c>)
d0041b40:	f891 3085 	ldrb.w	r3, [r1, #133]	; 0x85
d0041b44:	b14b      	cbz	r3, d0041b5a <render3Dstuff+0x5e>
d0041b46:	4c96      	ldr	r4, [pc, #600]	; (d0041da0 <render3Dstuff+0x2a4>)
d0041b48:	1c50      	adds	r0, r2, #1
d0041b4a:	6e89      	ldr	r1, [r1, #104]	; 0x68
d0041b4c:	f44f 7300 	mov.w	r3, #512	; 0x200
d0041b50:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041b54:	b2c2      	uxtb	r2, r0
d0041b56:	6021      	str	r1, [r4, #0]
d0041b58:	80a3      	strh	r3, [r4, #4]
d0041b5a:	498f      	ldr	r1, [pc, #572]	; (d0041d98 <render3Dstuff+0x29c>)
d0041b5c:	f891 30b5 	ldrb.w	r3, [r1, #181]	; 0xb5
d0041b60:	b153      	cbz	r3, d0041b78 <render3Dstuff+0x7c>
d0041b62:	4c8f      	ldr	r4, [pc, #572]	; (d0041da0 <render3Dstuff+0x2a4>)
d0041b64:	1c50      	adds	r0, r2, #1
d0041b66:	f8d1 1098 	ldr.w	r1, [r1, #152]	; 0x98
d0041b6a:	f44f 7340 	mov.w	r3, #768	; 0x300
d0041b6e:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041b72:	b2c2      	uxtb	r2, r0
d0041b74:	6021      	str	r1, [r4, #0]
d0041b76:	80a3      	strh	r3, [r4, #4]
d0041b78:	4987      	ldr	r1, [pc, #540]	; (d0041d98 <render3Dstuff+0x29c>)
d0041b7a:	f891 30e5 	ldrb.w	r3, [r1, #229]	; 0xe5
d0041b7e:	b153      	cbz	r3, d0041b96 <render3Dstuff+0x9a>
d0041b80:	4c87      	ldr	r4, [pc, #540]	; (d0041da0 <render3Dstuff+0x2a4>)
d0041b82:	1c50      	adds	r0, r2, #1
d0041b84:	f8d1 10c8 	ldr.w	r1, [r1, #200]	; 0xc8
d0041b88:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0041b8c:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041b90:	b2c2      	uxtb	r2, r0
d0041b92:	6021      	str	r1, [r4, #0]
d0041b94:	80a3      	strh	r3, [r4, #4]
d0041b96:	4980      	ldr	r1, [pc, #512]	; (d0041d98 <render3Dstuff+0x29c>)
d0041b98:	f891 3115 	ldrb.w	r3, [r1, #277]	; 0x115
d0041b9c:	b153      	cbz	r3, d0041bb4 <render3Dstuff+0xb8>
d0041b9e:	4c80      	ldr	r4, [pc, #512]	; (d0041da0 <render3Dstuff+0x2a4>)
d0041ba0:	1c50      	adds	r0, r2, #1
d0041ba2:	f8d1 10f8 	ldr.w	r1, [r1, #248]	; 0xf8
d0041ba6:	f44f 63a0 	mov.w	r3, #1280	; 0x500
d0041baa:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041bae:	b2c2      	uxtb	r2, r0
d0041bb0:	6021      	str	r1, [r4, #0]
d0041bb2:	80a3      	strh	r3, [r4, #4]
d0041bb4:	4978      	ldr	r1, [pc, #480]	; (d0041d98 <render3Dstuff+0x29c>)
d0041bb6:	f891 3145 	ldrb.w	r3, [r1, #325]	; 0x145
d0041bba:	b153      	cbz	r3, d0041bd2 <render3Dstuff+0xd6>
d0041bbc:	4c78      	ldr	r4, [pc, #480]	; (d0041da0 <render3Dstuff+0x2a4>)
d0041bbe:	1c50      	adds	r0, r2, #1
d0041bc0:	f8d1 1128 	ldr.w	r1, [r1, #296]	; 0x128
d0041bc4:	f44f 63c0 	mov.w	r3, #1536	; 0x600
d0041bc8:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041bcc:	b2c2      	uxtb	r2, r0
d0041bce:	6021      	str	r1, [r4, #0]
d0041bd0:	80a3      	strh	r3, [r4, #4]
d0041bd2:	4971      	ldr	r1, [pc, #452]	; (d0041d98 <render3Dstuff+0x29c>)
d0041bd4:	f891 3175 	ldrb.w	r3, [r1, #373]	; 0x175
d0041bd8:	b153      	cbz	r3, d0041bf0 <render3Dstuff+0xf4>
d0041bda:	4c71      	ldr	r4, [pc, #452]	; (d0041da0 <render3Dstuff+0x2a4>)
d0041bdc:	1c50      	adds	r0, r2, #1
d0041bde:	f8d1 1158 	ldr.w	r1, [r1, #344]	; 0x158
d0041be2:	f44f 63e0 	mov.w	r3, #1792	; 0x700
d0041be6:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041bea:	b2c2      	uxtb	r2, r0
d0041bec:	6021      	str	r1, [r4, #0]
d0041bee:	80a3      	strh	r3, [r4, #4]
d0041bf0:	4969      	ldr	r1, [pc, #420]	; (d0041d98 <render3Dstuff+0x29c>)
d0041bf2:	f891 31a5 	ldrb.w	r3, [r1, #421]	; 0x1a5
d0041bf6:	b153      	cbz	r3, d0041c0e <render3Dstuff+0x112>
d0041bf8:	4c69      	ldr	r4, [pc, #420]	; (d0041da0 <render3Dstuff+0x2a4>)
d0041bfa:	1c50      	adds	r0, r2, #1
d0041bfc:	f8d1 1188 	ldr.w	r1, [r1, #392]	; 0x188
d0041c00:	f44f 6300 	mov.w	r3, #2048	; 0x800
d0041c04:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041c08:	b2c2      	uxtb	r2, r0
d0041c0a:	6021      	str	r1, [r4, #0]
d0041c0c:	80a3      	strh	r3, [r4, #4]
d0041c0e:	4962      	ldr	r1, [pc, #392]	; (d0041d98 <render3Dstuff+0x29c>)
d0041c10:	f891 31d5 	ldrb.w	r3, [r1, #469]	; 0x1d5
d0041c14:	b153      	cbz	r3, d0041c2c <render3Dstuff+0x130>
d0041c16:	4c62      	ldr	r4, [pc, #392]	; (d0041da0 <render3Dstuff+0x2a4>)
d0041c18:	1c50      	adds	r0, r2, #1
d0041c1a:	f8d1 11b8 	ldr.w	r1, [r1, #440]	; 0x1b8
d0041c1e:	f44f 6310 	mov.w	r3, #2304	; 0x900
d0041c22:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041c26:	b2c2      	uxtb	r2, r0
d0041c28:	6021      	str	r1, [r4, #0]
d0041c2a:	80a3      	strh	r3, [r4, #4]
d0041c2c:	495a      	ldr	r1, [pc, #360]	; (d0041d98 <render3Dstuff+0x29c>)
d0041c2e:	f891 3205 	ldrb.w	r3, [r1, #517]	; 0x205
d0041c32:	b153      	cbz	r3, d0041c4a <render3Dstuff+0x14e>
d0041c34:	4c5a      	ldr	r4, [pc, #360]	; (d0041da0 <render3Dstuff+0x2a4>)
d0041c36:	1c50      	adds	r0, r2, #1
d0041c38:	f8d1 11e8 	ldr.w	r1, [r1, #488]	; 0x1e8
d0041c3c:	f44f 6320 	mov.w	r3, #2560	; 0xa00
d0041c40:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041c44:	b2c2      	uxtb	r2, r0
d0041c46:	6021      	str	r1, [r4, #0]
d0041c48:	80a3      	strh	r3, [r4, #4]
d0041c4a:	4953      	ldr	r1, [pc, #332]	; (d0041d98 <render3Dstuff+0x29c>)
d0041c4c:	f891 3235 	ldrb.w	r3, [r1, #565]	; 0x235
d0041c50:	b153      	cbz	r3, d0041c68 <render3Dstuff+0x16c>
d0041c52:	4c53      	ldr	r4, [pc, #332]	; (d0041da0 <render3Dstuff+0x2a4>)
d0041c54:	1c50      	adds	r0, r2, #1
d0041c56:	f8d1 1218 	ldr.w	r1, [r1, #536]	; 0x218
d0041c5a:	f44f 6330 	mov.w	r3, #2816	; 0xb00
d0041c5e:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041c62:	b2c2      	uxtb	r2, r0
d0041c64:	6021      	str	r1, [r4, #0]
d0041c66:	80a3      	strh	r3, [r4, #4]
d0041c68:	494b      	ldr	r1, [pc, #300]	; (d0041d98 <render3Dstuff+0x29c>)
d0041c6a:	f891 3265 	ldrb.w	r3, [r1, #613]	; 0x265
d0041c6e:	b153      	cbz	r3, d0041c86 <render3Dstuff+0x18a>
d0041c70:	4c4b      	ldr	r4, [pc, #300]	; (d0041da0 <render3Dstuff+0x2a4>)
d0041c72:	1c50      	adds	r0, r2, #1
d0041c74:	f8d1 1248 	ldr.w	r1, [r1, #584]	; 0x248
d0041c78:	f44f 6340 	mov.w	r3, #3072	; 0xc00
d0041c7c:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041c80:	b2c2      	uxtb	r2, r0
d0041c82:	6021      	str	r1, [r4, #0]
d0041c84:	80a3      	strh	r3, [r4, #4]
d0041c86:	4944      	ldr	r1, [pc, #272]	; (d0041d98 <render3Dstuff+0x29c>)
d0041c88:	f891 3295 	ldrb.w	r3, [r1, #661]	; 0x295
d0041c8c:	b153      	cbz	r3, d0041ca4 <render3Dstuff+0x1a8>
d0041c8e:	4c44      	ldr	r4, [pc, #272]	; (d0041da0 <render3Dstuff+0x2a4>)
d0041c90:	1c50      	adds	r0, r2, #1
d0041c92:	f8d1 1278 	ldr.w	r1, [r1, #632]	; 0x278
d0041c96:	f44f 6350 	mov.w	r3, #3328	; 0xd00
d0041c9a:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041c9e:	b2c2      	uxtb	r2, r0
d0041ca0:	6021      	str	r1, [r4, #0]
d0041ca2:	80a3      	strh	r3, [r4, #4]
d0041ca4:	493d      	ldr	r1, [pc, #244]	; (d0041d9c <render3Dstuff+0x2a0>)
d0041ca6:	2300      	movs	r3, #0
d0041ca8:	f8df a0fc 	ldr.w	sl, [pc, #252]	; d0041da8 <render3Dstuff+0x2ac>
d0041cac:	f04f 0c01 	mov.w	ip, #1
d0041cb0:	4f3b      	ldr	r7, [pc, #236]	; (d0041da0 <render3Dstuff+0x2a4>)
d0041cb2:	700a      	strb	r2, [r1, #0]
d0041cb4:	eb03 0143 	add.w	r1, r3, r3, lsl #1
d0041cb8:	1c56      	adds	r6, r2, #1
d0041cba:	b2dd      	uxtb	r5, r3
d0041cbc:	3301      	adds	r3, #1
d0041cbe:	eb0a 1101 	add.w	r1, sl, r1, lsl #4
d0041cc2:	eb07 00c2 	add.w	r0, r7, r2, lsl #3
d0041cc6:	f891 4025 	ldrb.w	r4, [r1, #37]	; 0x25
d0041cca:	b12c      	cbz	r4, d0041cd8 <render3Dstuff+0x1dc>
d0041ccc:	6889      	ldr	r1, [r1, #8]
d0041cce:	b2f2      	uxtb	r2, r6
d0041cd0:	f880 c004 	strb.w	ip, [r0, #4]
d0041cd4:	6001      	str	r1, [r0, #0]
d0041cd6:	7145      	strb	r5, [r0, #5]
d0041cd8:	2b20      	cmp	r3, #32
d0041cda:	d1eb      	bne.n	d0041cb4 <render3Dstuff+0x1b8>
d0041cdc:	492f      	ldr	r1, [pc, #188]	; (d0041d9c <render3Dstuff+0x2a0>)
d0041cde:	2300      	movs	r3, #0
d0041ce0:	f8df b0c8 	ldr.w	fp, [pc, #200]	; d0041dac <render3Dstuff+0x2b0>
d0041ce4:	f04f 0c2c 	mov.w	ip, #44	; 0x2c
d0041ce8:	4f2d      	ldr	r7, [pc, #180]	; (d0041da0 <render3Dstuff+0x2a4>)
d0041cea:	f04f 0e02 	mov.w	lr, #2
d0041cee:	700a      	strb	r2, [r1, #0]
d0041cf0:	fb0c b003 	mla	r0, ip, r3, fp
d0041cf4:	b2dd      	uxtb	r5, r3
d0041cf6:	1c56      	adds	r6, r2, #1
d0041cf8:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
d0041cfc:	f890 4022 	ldrb.w	r4, [r0, #34]	; 0x22
d0041d00:	3301      	adds	r3, #1
d0041d02:	b12c      	cbz	r4, d0041d10 <render3Dstuff+0x214>
d0041d04:	6940      	ldr	r0, [r0, #20]
d0041d06:	b2f2      	uxtb	r2, r6
d0041d08:	f881 e004 	strb.w	lr, [r1, #4]
d0041d0c:	6008      	str	r0, [r1, #0]
d0041d0e:	714d      	strb	r5, [r1, #5]
d0041d10:	2b20      	cmp	r3, #32
d0041d12:	d1ed      	bne.n	d0041cf0 <render3Dstuff+0x1f4>
d0041d14:	4b21      	ldr	r3, [pc, #132]	; (d0041d9c <render3Dstuff+0x2a0>)
d0041d16:	4923      	ldr	r1, [pc, #140]	; (d0041da4 <render3Dstuff+0x2a8>)
d0041d18:	701a      	strb	r2, [r3, #0]
d0041d1a:	f891 3025 	ldrb.w	r3, [r1, #37]	; 0x25
d0041d1e:	b143      	cbz	r3, d0041d32 <render3Dstuff+0x236>
d0041d20:	4c1f      	ldr	r4, [pc, #124]	; (d0041da0 <render3Dstuff+0x2a4>)
d0041d22:	1c50      	adds	r0, r2, #1
d0041d24:	6889      	ldr	r1, [r1, #8]
d0041d26:	2303      	movs	r3, #3
d0041d28:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041d2c:	b2c2      	uxtb	r2, r0
d0041d2e:	6021      	str	r1, [r4, #0]
d0041d30:	80a3      	strh	r3, [r4, #4]
d0041d32:	491c      	ldr	r1, [pc, #112]	; (d0041da4 <render3Dstuff+0x2a8>)
d0041d34:	f891 3055 	ldrb.w	r3, [r1, #85]	; 0x55
d0041d38:	b14b      	cbz	r3, d0041d4e <render3Dstuff+0x252>
d0041d3a:	4c19      	ldr	r4, [pc, #100]	; (d0041da0 <render3Dstuff+0x2a4>)
d0041d3c:	1c50      	adds	r0, r2, #1
d0041d3e:	6b89      	ldr	r1, [r1, #56]	; 0x38
d0041d40:	f240 1303 	movw	r3, #259	; 0x103
d0041d44:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041d48:	b2c2      	uxtb	r2, r0
d0041d4a:	6021      	str	r1, [r4, #0]
d0041d4c:	80a3      	strh	r3, [r4, #4]
d0041d4e:	4915      	ldr	r1, [pc, #84]	; (d0041da4 <render3Dstuff+0x2a8>)
d0041d50:	f891 3085 	ldrb.w	r3, [r1, #133]	; 0x85
d0041d54:	b14b      	cbz	r3, d0041d6a <render3Dstuff+0x26e>
d0041d56:	4c12      	ldr	r4, [pc, #72]	; (d0041da0 <render3Dstuff+0x2a4>)
d0041d58:	1c50      	adds	r0, r2, #1
d0041d5a:	6e89      	ldr	r1, [r1, #104]	; 0x68
d0041d5c:	f240 2303 	movw	r3, #515	; 0x203
d0041d60:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041d64:	b2c2      	uxtb	r2, r0
d0041d66:	6021      	str	r1, [r4, #0]
d0041d68:	80a3      	strh	r3, [r4, #4]
d0041d6a:	490e      	ldr	r1, [pc, #56]	; (d0041da4 <render3Dstuff+0x2a8>)
d0041d6c:	f891 30b5 	ldrb.w	r3, [r1, #181]	; 0xb5
d0041d70:	b153      	cbz	r3, d0041d88 <render3Dstuff+0x28c>
d0041d72:	4c0b      	ldr	r4, [pc, #44]	; (d0041da0 <render3Dstuff+0x2a4>)
d0041d74:	1c50      	adds	r0, r2, #1
d0041d76:	f8d1 1098 	ldr.w	r1, [r1, #152]	; 0x98
d0041d7a:	f240 3303 	movw	r3, #771	; 0x303
d0041d7e:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041d82:	b2c2      	uxtb	r2, r0
d0041d84:	6021      	str	r1, [r4, #0]
d0041d86:	80a3      	strh	r3, [r4, #4]
d0041d88:	4906      	ldr	r1, [pc, #24]	; (d0041da4 <render3Dstuff+0x2a8>)
d0041d8a:	f891 30e5 	ldrb.w	r3, [r1, #229]	; 0xe5
d0041d8e:	b1c3      	cbz	r3, d0041dc2 <render3Dstuff+0x2c6>
d0041d90:	4c03      	ldr	r4, [pc, #12]	; (d0041da0 <render3Dstuff+0x2a4>)
d0041d92:	1c50      	adds	r0, r2, #1
d0041d94:	e00c      	b.n	d0041db0 <render3Dstuff+0x2b4>
d0041d96:	bf00      	nop
d0041d98:	d0045900 	.word	0xd0045900
d0041d9c:	d0044b91 	.word	0xd0044b91
d0041da0:	d0046484 	.word	0xd0046484
d0041da4:	d0045680 	.word	0xd0045680
d0041da8:	d0045044 	.word	0xd0045044
d0041dac:	d0045ec0 	.word	0xd0045ec0
d0041db0:	f8d1 10c8 	ldr.w	r1, [r1, #200]	; 0xc8
d0041db4:	f240 4303 	movw	r3, #1027	; 0x403
d0041db8:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041dbc:	b2c2      	uxtb	r2, r0
d0041dbe:	6021      	str	r1, [r4, #0]
d0041dc0:	80a3      	strh	r3, [r4, #4]
d0041dc2:	498d      	ldr	r1, [pc, #564]	; (d0041ff8 <render3Dstuff+0x4fc>)
d0041dc4:	f891 3115 	ldrb.w	r3, [r1, #277]	; 0x115
d0041dc8:	b153      	cbz	r3, d0041de0 <render3Dstuff+0x2e4>
d0041dca:	4c8c      	ldr	r4, [pc, #560]	; (d0041ffc <render3Dstuff+0x500>)
d0041dcc:	1c50      	adds	r0, r2, #1
d0041dce:	f8d1 10f8 	ldr.w	r1, [r1, #248]	; 0xf8
d0041dd2:	f240 5303 	movw	r3, #1283	; 0x503
d0041dd6:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041dda:	b2c2      	uxtb	r2, r0
d0041ddc:	6021      	str	r1, [r4, #0]
d0041dde:	80a3      	strh	r3, [r4, #4]
d0041de0:	4985      	ldr	r1, [pc, #532]	; (d0041ff8 <render3Dstuff+0x4fc>)
d0041de2:	f891 3145 	ldrb.w	r3, [r1, #325]	; 0x145
d0041de6:	b153      	cbz	r3, d0041dfe <render3Dstuff+0x302>
d0041de8:	4c84      	ldr	r4, [pc, #528]	; (d0041ffc <render3Dstuff+0x500>)
d0041dea:	1c50      	adds	r0, r2, #1
d0041dec:	f8d1 1128 	ldr.w	r1, [r1, #296]	; 0x128
d0041df0:	f240 6303 	movw	r3, #1539	; 0x603
d0041df4:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041df8:	b2c2      	uxtb	r2, r0
d0041dfa:	6021      	str	r1, [r4, #0]
d0041dfc:	80a3      	strh	r3, [r4, #4]
d0041dfe:	497e      	ldr	r1, [pc, #504]	; (d0041ff8 <render3Dstuff+0x4fc>)
d0041e00:	f891 3175 	ldrb.w	r3, [r1, #373]	; 0x175
d0041e04:	b153      	cbz	r3, d0041e1c <render3Dstuff+0x320>
d0041e06:	4c7d      	ldr	r4, [pc, #500]	; (d0041ffc <render3Dstuff+0x500>)
d0041e08:	1c50      	adds	r0, r2, #1
d0041e0a:	f8d1 1158 	ldr.w	r1, [r1, #344]	; 0x158
d0041e0e:	f240 7303 	movw	r3, #1795	; 0x703
d0041e12:	eb04 04c2 	add.w	r4, r4, r2, lsl #3
d0041e16:	b2c2      	uxtb	r2, r0
d0041e18:	6021      	str	r1, [r4, #0]
d0041e1a:	80a3      	strh	r3, [r4, #4]
d0041e1c:	4b78      	ldr	r3, [pc, #480]	; (d0042000 <render3Dstuff+0x504>)
d0041e1e:	701a      	strb	r2, [r3, #0]
d0041e20:	2a00      	cmp	r2, #0
d0041e22:	f000 80e3 	beq.w	d0041fec <render3Dstuff+0x4f0>
d0041e26:	f102 3eff 	add.w	lr, r2, #4294967295	; 0xffffffff
d0041e2a:	f8df 91f0 	ldr.w	r9, [pc, #496]	; d004201c <render3Dstuff+0x520>
d0041e2e:	f04f 0c01 	mov.w	ip, #1
d0041e32:	ad04      	add	r5, sp, #16
d0041e34:	fa5f fe8e 	uxtb.w	lr, lr
d0041e38:	464f      	mov	r7, r9
d0041e3a:	f10e 0802 	add.w	r8, lr, #2
d0041e3e:	fa5f f68c 	uxtb.w	r6, ip
d0041e42:	42b2      	cmp	r2, r6
d0041e44:	d920      	bls.n	d0041e88 <render3Dstuff+0x38c>
d0041e46:	ebae 0606 	sub.w	r6, lr, r6
d0041e4a:	463b      	mov	r3, r7
d0041e4c:	f1a7 0408 	sub.w	r4, r7, #8
d0041e50:	fa5c f686 	uxtab	r6, ip, r6
d0041e54:	eb09 06c6 	add.w	r6, r9, r6, lsl #3
d0041e58:	ed17 7a02 	vldr	s14, [r7, #-8]
d0041e5c:	edd3 7a00 	vldr	s15, [r3]
d0041e60:	eeb4 7ae7 	vcmpe.f32	s14, s15
d0041e64:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041e68:	d50b      	bpl.n	d0041e82 <render3Dstuff+0x386>
d0041e6a:	e894 0003 	ldmia.w	r4, {r0, r1}
d0041e6e:	e885 0003 	stmia.w	r5, {r0, r1}
d0041e72:	e893 0003 	ldmia.w	r3, {r0, r1}
d0041e76:	e884 0003 	stmia.w	r4, {r0, r1}
d0041e7a:	e895 0003 	ldmia.w	r5, {r0, r1}
d0041e7e:	e883 0003 	stmia.w	r3, {r0, r1}
d0041e82:	3308      	adds	r3, #8
d0041e84:	429e      	cmp	r6, r3
d0041e86:	d1e7      	bne.n	d0041e58 <render3Dstuff+0x35c>
d0041e88:	f10c 0c01 	add.w	ip, ip, #1
d0041e8c:	3708      	adds	r7, #8
d0041e8e:	45e0      	cmp	r8, ip
d0041e90:	d1d5      	bne.n	d0041e3e <render3Dstuff+0x342>
d0041e92:	2300      	movs	r3, #0
d0041e94:	4c59      	ldr	r4, [pc, #356]	; (d0041ffc <render3Dstuff+0x500>)
d0041e96:	ed9f 8a5b 	vldr	s16, [pc, #364]	; d0042004 <render3Dstuff+0x508>
d0041e9a:	4699      	mov	r9, r3
d0041e9c:	4e5a      	ldr	r6, [pc, #360]	; (d0042008 <render3Dstuff+0x50c>)
d0041e9e:	9401      	str	r4, [sp, #4]
d0041ea0:	e04a      	b.n	d0041f38 <render3Dstuff+0x43c>
d0041ea2:	4b5a      	ldr	r3, [pc, #360]	; (d004200c <render3Dstuff+0x510>)
d0041ea4:	eb07 0447 	add.w	r4, r7, r7, lsl #1
d0041ea8:	2104      	movs	r1, #4
d0041eaa:	eb03 1404 	add.w	r4, r3, r4, lsl #4
d0041eae:	4b58      	ldr	r3, [pc, #352]	; (d0042010 <render3Dstuff+0x514>)
d0041eb0:	f894 0024 	ldrb.w	r0, [r4, #36]	; 0x24
d0041eb4:	f894 2028 	ldrb.w	r2, [r4, #40]	; 0x28
d0041eb8:	eb03 1540 	add.w	r5, r3, r0, lsl #5
d0041ebc:	b2c3      	uxtb	r3, r0
d0041ebe:	76ea      	strb	r2, [r5, #27]
d0041ec0:	0140      	lsls	r0, r0, #5
d0041ec2:	8b22      	ldrh	r2, [r4, #24]
d0041ec4:	9002      	str	r0, [sp, #8]
d0041ec6:	82aa      	strh	r2, [r5, #20]
d0041ec8:	8b62      	ldrh	r2, [r4, #26]
d0041eca:	82ea      	strh	r2, [r5, #22]
d0041ecc:	8be2      	ldrh	r2, [r4, #30]
d0041ece:	b292      	uxth	r2, r2
d0041ed0:	832a      	strh	r2, [r5, #24]
d0041ed2:	76a9      	strb	r1, [r5, #26]
d0041ed4:	f894 202c 	ldrb.w	r2, [r4, #44]	; 0x2c
d0041ed8:	b2d2      	uxtb	r2, r2
d0041eda:	712a      	strb	r2, [r5, #4]
d0041edc:	f894 202d 	ldrb.w	r2, [r4, #45]	; 0x2d
d0041ee0:	b2d2      	uxtb	r2, r2
d0041ee2:	716a      	strb	r2, [r5, #5]
d0041ee4:	f894 202e 	ldrb.w	r2, [r4, #46]	; 0x2e
d0041ee8:	b2d2      	uxtb	r2, r2
d0041eea:	71aa      	strb	r2, [r5, #6]
d0041eec:	edd4 7a02 	vldr	s15, [r4, #8]
d0041ef0:	eef4 7ac8 	vcmpe.f32	s15, s16
d0041ef4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041ef8:	f100 8092 	bmi.w	d0042020 <render3Dstuff+0x524>
d0041efc:	4a44      	ldr	r2, [pc, #272]	; (d0042010 <render3Dstuff+0x514>)
d0041efe:	eb02 1343 	add.w	r3, r2, r3, lsl #5
d0041f02:	7b31      	ldrb	r1, [r6, #12]
d0041f04:	4618      	mov	r0, r3
d0041f06:	7b73      	ldrb	r3, [r6, #13]
d0041f08:	7bb2      	ldrb	r2, [r6, #14]
d0041f0a:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0041f0e:	7bf3      	ldrb	r3, [r6, #15]
d0041f10:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0041f14:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0041f18:	685b      	ldr	r3, [r3, #4]
d0041f1a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0041f1c:	4798      	blx	r3
d0041f1e:	4a3c      	ldr	r2, [pc, #240]	; (d0042010 <render3Dstuff+0x514>)
d0041f20:	9b02      	ldr	r3, [sp, #8]
d0041f22:	2100      	movs	r1, #0
d0041f24:	4413      	add	r3, r2
d0041f26:	4a36      	ldr	r2, [pc, #216]	; (d0042000 <render3Dstuff+0x504>)
d0041f28:	7812      	ldrb	r2, [r2, #0]
d0041f2a:	7119      	strb	r1, [r3, #4]
d0041f2c:	f109 0901 	add.w	r9, r9, #1
d0041f30:	fa5f f389 	uxtb.w	r3, r9
d0041f34:	4293      	cmp	r3, r2
d0041f36:	d259      	bcs.n	d0041fec <render3Dstuff+0x4f0>
d0041f38:	9901      	ldr	r1, [sp, #4]
d0041f3a:	eb01 03c3 	add.w	r3, r1, r3, lsl #3
d0041f3e:	f893 8004 	ldrb.w	r8, [r3, #4]
d0041f42:	795f      	ldrb	r7, [r3, #5]
d0041f44:	f1b8 0f00 	cmp.w	r8, #0
d0041f48:	d0ab      	beq.n	d0041ea2 <render3Dstuff+0x3a6>
d0041f4a:	f1b8 0f01 	cmp.w	r8, #1
d0041f4e:	f000 80dd 	beq.w	d004210c <render3Dstuff+0x610>
d0041f52:	f1b8 0f02 	cmp.w	r8, #2
d0041f56:	f000 80fd 	beq.w	d0042154 <render3Dstuff+0x658>
d0041f5a:	f1b8 0f03 	cmp.w	r8, #3
d0041f5e:	d1e5      	bne.n	d0041f2c <render3Dstuff+0x430>
d0041f60:	4b25      	ldr	r3, [pc, #148]	; (d0041ff8 <render3Dstuff+0x4fc>)
d0041f62:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d0041f66:	492b      	ldr	r1, [pc, #172]	; (d0042014 <render3Dstuff+0x518>)
d0041f68:	2204      	movs	r2, #4
d0041f6a:	eb03 1407 	add.w	r4, r3, r7, lsl #4
d0041f6e:	f894 302a 	ldrb.w	r3, [r4, #42]	; 0x2a
d0041f72:	b2db      	uxtb	r3, r3
d0041f74:	76cb      	strb	r3, [r1, #27]
d0041f76:	8b23      	ldrh	r3, [r4, #24]
d0041f78:	828b      	strh	r3, [r1, #20]
d0041f7a:	8b63      	ldrh	r3, [r4, #26]
d0041f7c:	82cb      	strh	r3, [r1, #22]
d0041f7e:	768a      	strb	r2, [r1, #26]
d0041f80:	8be3      	ldrh	r3, [r4, #30]
d0041f82:	b29b      	uxth	r3, r3
d0041f84:	830b      	strh	r3, [r1, #24]
d0041f86:	edd4 7a02 	vldr	s15, [r4, #8]
d0041f8a:	eef4 7ac8 	vcmpe.f32	s15, s16
d0041f8e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041f92:	d512      	bpl.n	d0041fba <render3Dstuff+0x4be>
d0041f94:	7b32      	ldrb	r2, [r6, #12]
d0041f96:	4608      	mov	r0, r1
d0041f98:	7b71      	ldrb	r1, [r6, #13]
d0041f9a:	7bb3      	ldrb	r3, [r6, #14]
d0041f9c:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d0041fa0:	7bf7      	ldrb	r7, [r6, #15]
d0041fa2:	4d1d      	ldr	r5, [pc, #116]	; (d0042018 <render3Dstuff+0x51c>)
d0041fa4:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d0041fa8:	4629      	mov	r1, r5
d0041faa:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d0041fae:	685b      	ldr	r3, [r3, #4]
d0041fb0:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d0041fb2:	4798      	blx	r3
d0041fb4:	2802      	cmp	r0, #2
d0041fb6:	f000 80e6 	beq.w	d0042186 <render3Dstuff+0x68a>
d0041fba:	7b33      	ldrb	r3, [r6, #12]
d0041fbc:	f109 0901 	add.w	r9, r9, #1
d0041fc0:	7b72      	ldrb	r2, [r6, #13]
d0041fc2:	4814      	ldr	r0, [pc, #80]	; (d0042014 <render3Dstuff+0x518>)
d0041fc4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041fc8:	7bb2      	ldrb	r2, [r6, #14]
d0041fca:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041fce:	7bf2      	ldrb	r2, [r6, #15]
d0041fd0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041fd4:	685b      	ldr	r3, [r3, #4]
d0041fd6:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0041fd8:	4798      	blx	r3
d0041fda:	2300      	movs	r3, #0
d0041fdc:	4a08      	ldr	r2, [pc, #32]	; (d0042000 <render3Dstuff+0x504>)
d0041fde:	490d      	ldr	r1, [pc, #52]	; (d0042014 <render3Dstuff+0x518>)
d0041fe0:	7812      	ldrb	r2, [r2, #0]
d0041fe2:	710b      	strb	r3, [r1, #4]
d0041fe4:	fa5f f389 	uxtb.w	r3, r9
d0041fe8:	4293      	cmp	r3, r2
d0041fea:	d3a5      	bcc.n	d0041f38 <render3Dstuff+0x43c>
d0041fec:	b007      	add	sp, #28
d0041fee:	ecbd 8b02 	vpop	{d8}
d0041ff2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0041ff6:	bf00      	nop
d0041ff8:	d0045680 	.word	0xd0045680
d0041ffc:	d0046484 	.word	0xd0046484
d0042000:	d0044b91 	.word	0xd0044b91
d0042004:	43520000 	.word	0x43520000
d0042008:	2001f000 	.word	0x2001f000
d004200c:	d0045900 	.word	0xd0045900
d0042010:	d0045880 	.word	0xd0045880
d0042014:	d0045ea0 	.word	0xd0045ea0
d0042018:	d0045800 	.word	0xd0045800
d004201c:	d004648c 	.word	0xd004648c
d0042020:	7b31      	ldrb	r1, [r6, #12]
d0042022:	4a81      	ldr	r2, [pc, #516]	; (d0042228 <render3Dstuff+0x72c>)
d0042024:	f896 c00d 	ldrb.w	ip, [r6, #13]
d0042028:	eb02 1343 	add.w	r3, r2, r3, lsl #5
d004202c:	7bb2      	ldrb	r2, [r6, #14]
d004202e:	ea41 2e0c 	orr.w	lr, r1, ip, lsl #8
d0042032:	f896 c00f 	ldrb.w	ip, [r6, #15]
d0042036:	4618      	mov	r0, r3
d0042038:	497c      	ldr	r1, [pc, #496]	; (d004222c <render3Dstuff+0x730>)
d004203a:	ea4e 4202 	orr.w	r2, lr, r2, lsl #16
d004203e:	9303      	str	r3, [sp, #12]
d0042040:	ea42 620c 	orr.w	r2, r2, ip, lsl #24
d0042044:	6852      	ldr	r2, [r2, #4]
d0042046:	6a92      	ldr	r2, [r2, #40]	; 0x28
d0042048:	4790      	blx	r2
d004204a:	2802      	cmp	r0, #2
d004204c:	9b03      	ldr	r3, [sp, #12]
d004204e:	f47f af58 	bne.w	d0041f02 <render3Dstuff+0x406>
d0042052:	7c32      	ldrb	r2, [r6, #16]
d0042054:	2006      	movs	r0, #6
d0042056:	f896 c011 	ldrb.w	ip, [r6, #17]
d004205a:	ea42 220c 	orr.w	r2, r2, ip, lsl #8
d004205e:	f896 c012 	ldrb.w	ip, [r6, #18]
d0042062:	ea42 420c 	orr.w	r2, r2, ip, lsl #16
d0042066:	f896 c013 	ldrb.w	ip, [r6, #19]
d004206a:	ea42 620c 	orr.w	r2, r2, ip, lsl #24
d004206e:	6892      	ldr	r2, [r2, #8]
d0042070:	6892      	ldr	r2, [r2, #8]
d0042072:	4790      	blx	r2
d0042074:	496d      	ldr	r1, [pc, #436]	; (d004222c <render3Dstuff+0x730>)
d0042076:	4a6e      	ldr	r2, [pc, #440]	; (d0042230 <render3Dstuff+0x734>)
d0042078:	8a88      	ldrh	r0, [r1, #20]
d004207a:	7c31      	ldrb	r1, [r6, #16]
d004207c:	3020      	adds	r0, #32
d004207e:	f896 e011 	ldrb.w	lr, [r6, #17]
d0042082:	b200      	sxth	r0, r0
d0042084:	ea41 2c0e 	orr.w	ip, r1, lr, lsl #8
d0042088:	7cb1      	ldrb	r1, [r6, #18]
d004208a:	38f0      	subs	r0, #240	; 0xf0
d004208c:	ea4c 4101 	orr.w	r1, ip, r1, lsl #16
d0042090:	ebc0 10c0 	rsb	r0, r0, r0, lsl #7
d0042094:	fb82 3200 	smull	r3, r2, r2, r0
d0042098:	ea4f 7ce0 	mov.w	ip, r0, asr #31
d004209c:	f06f 037e 	mvn.w	r3, #126	; 0x7e
d00420a0:	4402      	add	r2, r0
d00420a2:	7cf0      	ldrb	r0, [r6, #19]
d00420a4:	ebcc 12e2 	rsb	r2, ip, r2, asr #7
d00420a8:	ea41 6c00 	orr.w	ip, r1, r0, lsl #24
d00420ac:	2006      	movs	r0, #6
d00420ae:	b211      	sxth	r1, r2
d00420b0:	f8dc 2008 	ldr.w	r2, [ip, #8]
d00420b4:	297f      	cmp	r1, #127	; 0x7f
d00420b6:	6992      	ldr	r2, [r2, #24]
d00420b8:	bfa8      	it	ge
d00420ba:	217f      	movge	r1, #127	; 0x7f
d00420bc:	4299      	cmp	r1, r3
d00420be:	bfb8      	it	lt
d00420c0:	4619      	movlt	r1, r3
d00420c2:	b249      	sxtb	r1, r1
d00420c4:	4790      	blx	r2
d00420c6:	f896 c010 	ldrb.w	ip, [r6, #16]
d00420ca:	7c72      	ldrb	r2, [r6, #17]
d00420cc:	2006      	movs	r0, #6
d00420ce:	7cb1      	ldrb	r1, [r6, #18]
d00420d0:	ea4c 2c02 	orr.w	ip, ip, r2, lsl #8
d00420d4:	7cf2      	ldrb	r2, [r6, #19]
d00420d6:	ea4c 4101 	orr.w	r1, ip, r1, lsl #16
d00420da:	ea41 6202 	orr.w	r2, r1, r2, lsl #24
d00420de:	6892      	ldr	r2, [r2, #8]
d00420e0:	6852      	ldr	r2, [r2, #4]
d00420e2:	4790      	blx	r2
d00420e4:	f06f 0004 	mvn.w	r0, #4
d00420e8:	f7ff f856 	bl	d0041198 <UpdateHealth>
d00420ec:	2103      	movs	r1, #3
d00420ee:	4640      	mov	r0, r8
d00420f0:	f884 8025 	strb.w	r8, [r4, #37]	; 0x25
d00420f4:	f000 fb52 	bl	d004279c <sbx_rng_range>
d00420f8:	4601      	mov	r1, r0
d00420fa:	4638      	mov	r0, r7
d00420fc:	f7ff f926 	bl	d004134c <SpawnAstroid3D>
d0042100:	2101      	movs	r1, #1
d0042102:	2207      	movs	r2, #7
d0042104:	9b03      	ldr	r3, [sp, #12]
d0042106:	7129      	strb	r1, [r5, #4]
d0042108:	716a      	strb	r2, [r5, #5]
d004210a:	e6fa      	b.n	d0041f02 <render3Dstuff+0x406>
d004210c:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d0042110:	4848      	ldr	r0, [pc, #288]	; (d0042234 <render3Dstuff+0x738>)
d0042112:	2204      	movs	r2, #4
d0042114:	2100      	movs	r1, #0
d0042116:	eb0a 1707 	add.w	r7, sl, r7, lsl #4
d004211a:	f897 302a 	ldrb.w	r3, [r7, #42]	; 0x2a
d004211e:	b2db      	uxtb	r3, r3
d0042120:	76c3      	strb	r3, [r0, #27]
d0042122:	8b3b      	ldrh	r3, [r7, #24]
d0042124:	8283      	strh	r3, [r0, #20]
d0042126:	8b7b      	ldrh	r3, [r7, #26]
d0042128:	82c3      	strh	r3, [r0, #22]
d004212a:	8bfb      	ldrh	r3, [r7, #30]
d004212c:	b29b      	uxth	r3, r3
d004212e:	8303      	strh	r3, [r0, #24]
d0042130:	7682      	strb	r2, [r0, #26]
d0042132:	7101      	strb	r1, [r0, #4]
d0042134:	7b31      	ldrb	r1, [r6, #12]
d0042136:	7b73      	ldrb	r3, [r6, #13]
d0042138:	7bb2      	ldrb	r2, [r6, #14]
d004213a:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d004213e:	7bf3      	ldrb	r3, [r6, #15]
d0042140:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0042144:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0042148:	685b      	ldr	r3, [r3, #4]
d004214a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d004214c:	4798      	blx	r3
d004214e:	4b3a      	ldr	r3, [pc, #232]	; (d0042238 <render3Dstuff+0x73c>)
d0042150:	781a      	ldrb	r2, [r3, #0]
d0042152:	e6eb      	b.n	d0041f2c <render3Dstuff+0x430>
d0042154:	232c      	movs	r3, #44	; 0x2c
d0042156:	fb03 b707 	mla	r7, r3, r7, fp
d004215a:	f897 3022 	ldrb.w	r3, [r7, #34]	; 0x22
d004215e:	2b00      	cmp	r3, #0
d0042160:	f43f aee4 	beq.w	d0041f2c <render3Dstuff+0x430>
d0042164:	8b3a      	ldrh	r2, [r7, #24]
d0042166:	2304      	movs	r3, #4
d0042168:	4834      	ldr	r0, [pc, #208]	; (d004223c <render3Dstuff+0x740>)
d004216a:	8282      	strh	r2, [r0, #20]
d004216c:	8b7a      	ldrh	r2, [r7, #26]
d004216e:	82c2      	strh	r2, [r0, #22]
d0042170:	7683      	strb	r3, [r0, #26]
d0042172:	8bfb      	ldrh	r3, [r7, #30]
d0042174:	b29b      	uxth	r3, r3
d0042176:	8303      	strh	r3, [r0, #24]
d0042178:	f897 3020 	ldrb.w	r3, [r7, #32]
d004217c:	76c3      	strb	r3, [r0, #27]
d004217e:	e7d9      	b.n	d0042134 <render3Dstuff+0x638>
d0042180:	f003 02ff 	and.w	r2, r3, #255	; 0xff
d0042184:	e4cd      	b.n	d0041b22 <render3Dstuff+0x26>
d0042186:	7c33      	ldrb	r3, [r6, #16]
d0042188:	2006      	movs	r0, #6
d004218a:	7c72      	ldrb	r2, [r6, #17]
d004218c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042190:	7cb2      	ldrb	r2, [r6, #18]
d0042192:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0042196:	7cf2      	ldrb	r2, [r6, #19]
d0042198:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004219c:	689b      	ldr	r3, [r3, #8]
d004219e:	689b      	ldr	r3, [r3, #8]
d00421a0:	4798      	blx	r3
d00421a2:	8aab      	ldrh	r3, [r5, #20]
d00421a4:	4822      	ldr	r0, [pc, #136]	; (d0042230 <render3Dstuff+0x734>)
d00421a6:	f06f 027e 	mvn.w	r2, #126	; 0x7e
d00421aa:	3320      	adds	r3, #32
d00421ac:	7c31      	ldrb	r1, [r6, #16]
d00421ae:	7c75      	ldrb	r5, [r6, #17]
d00421b0:	b21b      	sxth	r3, r3
d00421b2:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
d00421b6:	7cb5      	ldrb	r5, [r6, #18]
d00421b8:	3bf0      	subs	r3, #240	; 0xf0
d00421ba:	ea41 4505 	orr.w	r5, r1, r5, lsl #16
d00421be:	ebc3 13c3 	rsb	r3, r3, r3, lsl #7
d00421c2:	fb80 7003 	smull	r7, r0, r0, r3
d00421c6:	17d9      	asrs	r1, r3, #31
d00421c8:	4403      	add	r3, r0
d00421ca:	7cf0      	ldrb	r0, [r6, #19]
d00421cc:	ebc1 11e3 	rsb	r1, r1, r3, asr #7
d00421d0:	ea45 6300 	orr.w	r3, r5, r0, lsl #24
d00421d4:	2006      	movs	r0, #6
d00421d6:	b209      	sxth	r1, r1
d00421d8:	689b      	ldr	r3, [r3, #8]
d00421da:	297f      	cmp	r1, #127	; 0x7f
d00421dc:	699b      	ldr	r3, [r3, #24]
d00421de:	bfa8      	it	ge
d00421e0:	217f      	movge	r1, #127	; 0x7f
d00421e2:	4291      	cmp	r1, r2
d00421e4:	bfb8      	it	lt
d00421e6:	4611      	movlt	r1, r2
d00421e8:	b249      	sxtb	r1, r1
d00421ea:	4798      	blx	r3
d00421ec:	7c33      	ldrb	r3, [r6, #16]
d00421ee:	7c72      	ldrb	r2, [r6, #17]
d00421f0:	2006      	movs	r0, #6
d00421f2:	7cb1      	ldrb	r1, [r6, #18]
d00421f4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00421f8:	7cf2      	ldrb	r2, [r6, #19]
d00421fa:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00421fe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042202:	689b      	ldr	r3, [r3, #8]
d0042204:	685b      	ldr	r3, [r3, #4]
d0042206:	4798      	blx	r3
d0042208:	2307      	movs	r3, #7
d004220a:	490d      	ldr	r1, [pc, #52]	; (d0042240 <render3Dstuff+0x744>)
d004220c:	2201      	movs	r2, #1
d004220e:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
d0042212:	710a      	strb	r2, [r1, #4]
d0042214:	714b      	strb	r3, [r1, #5]
d0042216:	f7fe ffd9 	bl	d00411cc <AddScore>
d004221a:	200f      	movs	r0, #15
d004221c:	f7fe ffbc 	bl	d0041198 <UpdateHealth>
d0042220:	2300      	movs	r3, #0
d0042222:	f884 3025 	strb.w	r3, [r4, #37]	; 0x25
d0042226:	e6c8      	b.n	d0041fba <render3Dstuff+0x4be>
d0042228:	d0045880 	.word	0xd0045880
d004222c:	d0045800 	.word	0xd0045800
d0042230:	88888889 	.word	0x88888889
d0042234:	d0046460 	.word	0xd0046460
d0042238:	d0044b91 	.word	0xd0044b91
d004223c:	d00467e0 	.word	0xd00467e0
d0042240:	d0045ea0 	.word	0xd0045ea0

d0042244 <drawPowerHealthBar>:
d0042244:	4b4b      	ldr	r3, [pc, #300]	; (d0042374 <drawPowerHealthBar+0x130>)
d0042246:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004224a:	781b      	ldrb	r3, [r3, #0]
d004224c:	b083      	sub	sp, #12
d004224e:	2b00      	cmp	r3, #0
d0042250:	d07c      	beq.n	d004234c <drawPowerHealthBar+0x108>
d0042252:	4b49      	ldr	r3, [pc, #292]	; (d0042378 <drawPowerHealthBar+0x134>)
d0042254:	f993 3000 	ldrsb.w	r3, [r3]
d0042258:	b29a      	uxth	r2, r3
d004225a:	2358      	movs	r3, #88	; 0x58
d004225c:	4847      	ldr	r0, [pc, #284]	; (d004237c <drawPowerHealthBar+0x138>)
d004225e:	2101      	movs	r1, #1
d0042260:	fb03 f302 	mul.w	r3, r3, r2
d0042264:	f8df b118 	ldr.w	fp, [pc, #280]	; d0042380 <drawPowerHealthBar+0x13c>
d0042268:	fba0 2303 	umull	r2, r3, r0, r3
d004226c:	f88b 101b 	strb.w	r1, [fp, #27]
d0042270:	f3c3 2207 	ubfx	r2, r3, #8, #8
d0042274:	f413 4f7f 	tst.w	r3, #65280	; 0xff00
d0042278:	f3c3 1542 	ubfx	r5, r3, #5, #3
d004227c:	9201      	str	r2, [sp, #4]
d004227e:	d074      	beq.n	d004236a <drawPowerHealthBar+0x126>
d0042280:	1e53      	subs	r3, r2, #1
d0042282:	f105 07d4 	add.w	r7, r5, #212	; 0xd4
d0042286:	f8df a0fc 	ldr.w	sl, [pc, #252]	; d0042384 <drawPowerHealthBar+0x140>
d004228a:	f44f 7693 	mov.w	r6, #294	; 0x126
d004228e:	b2db      	uxtb	r3, r3
d0042290:	46b9      	mov	r9, r7
d0042292:	46d8      	mov	r8, fp
d0042294:	eb05 05c3 	add.w	r5, r5, r3, lsl #3
d0042298:	35dc      	adds	r5, #220	; 0xdc
d004229a:	fa0f f389 	sxth.w	r3, r9
d004229e:	f109 0908 	add.w	r9, r9, #8
d00422a2:	4640      	mov	r0, r8
d00422a4:	f8ab 3014 	strh.w	r3, [fp, #20]
d00422a8:	fa1f f989 	uxth.w	r9, r9
d00422ac:	f8ab 6016 	strh.w	r6, [fp, #22]
d00422b0:	f89a 400c 	ldrb.w	r4, [sl, #12]
d00422b4:	f89a 100d 	ldrb.w	r1, [sl, #13]
d00422b8:	f89a 200e 	ldrb.w	r2, [sl, #14]
d00422bc:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d00422c0:	f89a 300f 	ldrb.w	r3, [sl, #15]
d00422c4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00422c8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00422cc:	685b      	ldr	r3, [r3, #4]
d00422ce:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00422d0:	4798      	blx	r3
d00422d2:	454d      	cmp	r5, r9
d00422d4:	d1e1      	bne.n	d004229a <drawPowerHealthBar+0x56>
d00422d6:	f44f 7493 	mov.w	r4, #294	; 0x126
d00422da:	2200      	movs	r2, #0
d00422dc:	23d4      	movs	r3, #212	; 0xd4
d00422de:	4828      	ldr	r0, [pc, #160]	; (d0042380 <drawPowerHealthBar+0x13c>)
d00422e0:	f88b 201b 	strb.w	r2, [fp, #27]
d00422e4:	f8ab 3014 	strh.w	r3, [fp, #20]
d00422e8:	f8ab 4016 	strh.w	r4, [fp, #22]
d00422ec:	f89a 300c 	ldrb.w	r3, [sl, #12]
d00422f0:	f89a 200d 	ldrb.w	r2, [sl, #13]
d00422f4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00422f8:	f89a 200e 	ldrb.w	r2, [sl, #14]
d00422fc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0042300:	f89a 200f 	ldrb.w	r2, [sl, #15]
d0042304:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042308:	685b      	ldr	r3, [r3, #4]
d004230a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d004230c:	4798      	blx	r3
d004230e:	9a01      	ldr	r2, [sp, #4]
d0042310:	2302      	movs	r3, #2
d0042312:	481b      	ldr	r0, [pc, #108]	; (d0042380 <drawPowerHealthBar+0x13c>)
d0042314:	eb07 07c2 	add.w	r7, r7, r2, lsl #3
d0042318:	f88b 301b 	strb.w	r3, [fp, #27]
d004231c:	f8ab 7014 	strh.w	r7, [fp, #20]
d0042320:	f8ab 4016 	strh.w	r4, [fp, #22]
d0042324:	f89a 300c 	ldrb.w	r3, [sl, #12]
d0042328:	f89a 200d 	ldrb.w	r2, [sl, #13]
d004232c:	f89a 100e 	ldrb.w	r1, [sl, #14]
d0042330:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042334:	f89a 200f 	ldrb.w	r2, [sl, #15]
d0042338:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004233c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042340:	685b      	ldr	r3, [r3, #4]
d0042342:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0042344:	b003      	add	sp, #12
d0042346:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004234a:	4718      	bx	r3
d004234c:	4a0a      	ldr	r2, [pc, #40]	; (d0042378 <drawPowerHealthBar+0x134>)
d004234e:	f992 3000 	ldrsb.w	r3, [r2]
d0042352:	4283      	cmp	r3, r0
d0042354:	da03      	bge.n	d004235e <drawPowerHealthBar+0x11a>
d0042356:	3301      	adds	r3, #1
d0042358:	b25b      	sxtb	r3, r3
d004235a:	7013      	strb	r3, [r2, #0]
d004235c:	e77c      	b.n	d0042258 <drawPowerHealthBar+0x14>
d004235e:	f77f af7b 	ble.w	d0042258 <drawPowerHealthBar+0x14>
d0042362:	3b01      	subs	r3, #1
d0042364:	b25b      	sxtb	r3, r3
d0042366:	7013      	strb	r3, [r2, #0]
d0042368:	e776      	b.n	d0042258 <drawPowerHealthBar+0x14>
d004236a:	f105 07d4 	add.w	r7, r5, #212	; 0xd4
d004236e:	f8df a014 	ldr.w	sl, [pc, #20]	; d0042384 <drawPowerHealthBar+0x140>
d0042372:	e7b0      	b.n	d00422d6 <drawPowerHealthBar+0x92>
d0042374:	d0044b92 	.word	0xd0044b92
d0042378:	d0046760 	.word	0xd0046760
d004237c:	51eb851f 	.word	0x51eb851f
d0042380:	d0046440 	.word	0xd0046440
d0042384:	2001f000 	.word	0x2001f000

d0042388 <drawPowerShieldBar>:
d0042388:	4b4c      	ldr	r3, [pc, #304]	; (d00424bc <drawPowerShieldBar+0x134>)
d004238a:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d004238e:	781b      	ldrb	r3, [r3, #0]
d0042390:	b083      	sub	sp, #12
d0042392:	2b00      	cmp	r3, #0
d0042394:	d07e      	beq.n	d0042494 <drawPowerShieldBar+0x10c>
d0042396:	4b4a      	ldr	r3, [pc, #296]	; (d00424c0 <drawPowerShieldBar+0x138>)
d0042398:	f993 3000 	ldrsb.w	r3, [r3]
d004239c:	b29a      	uxth	r2, r3
d004239e:	2358      	movs	r3, #88	; 0x58
d00423a0:	4848      	ldr	r0, [pc, #288]	; (d00424c4 <drawPowerShieldBar+0x13c>)
d00423a2:	2104      	movs	r1, #4
d00423a4:	fb03 f302 	mul.w	r3, r3, r2
d00423a8:	f8df b11c 	ldr.w	fp, [pc, #284]	; d00424c8 <drawPowerShieldBar+0x140>
d00423ac:	fba0 2303 	umull	r2, r3, r0, r3
d00423b0:	f88b 101b 	strb.w	r1, [fp, #27]
d00423b4:	f3c3 2207 	ubfx	r2, r3, #8, #8
d00423b8:	f413 4f7f 	tst.w	r3, #65280	; 0xff00
d00423bc:	f3c3 1542 	ubfx	r5, r3, #5, #3
d00423c0:	9201      	str	r2, [sp, #4]
d00423c2:	d076      	beq.n	d00424b2 <drawPowerShieldBar+0x12a>
d00423c4:	1e53      	subs	r3, r2, #1
d00423c6:	f505 77b7 	add.w	r7, r5, #366	; 0x16e
d00423ca:	f8df a100 	ldr.w	sl, [pc, #256]	; d00424cc <drawPowerShieldBar+0x144>
d00423ce:	f44f 7693 	mov.w	r6, #294	; 0x126
d00423d2:	b2db      	uxtb	r3, r3
d00423d4:	46b9      	mov	r9, r7
d00423d6:	46d8      	mov	r8, fp
d00423d8:	eb05 05c3 	add.w	r5, r5, r3, lsl #3
d00423dc:	f505 75bb 	add.w	r5, r5, #374	; 0x176
d00423e0:	fa0f f389 	sxth.w	r3, r9
d00423e4:	f109 0908 	add.w	r9, r9, #8
d00423e8:	4640      	mov	r0, r8
d00423ea:	f8ab 3014 	strh.w	r3, [fp, #20]
d00423ee:	fa1f f989 	uxth.w	r9, r9
d00423f2:	f8ab 6016 	strh.w	r6, [fp, #22]
d00423f6:	f89a 400c 	ldrb.w	r4, [sl, #12]
d00423fa:	f89a 100d 	ldrb.w	r1, [sl, #13]
d00423fe:	f89a 200e 	ldrb.w	r2, [sl, #14]
d0042402:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d0042406:	f89a 300f 	ldrb.w	r3, [sl, #15]
d004240a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004240e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0042412:	685b      	ldr	r3, [r3, #4]
d0042414:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0042416:	4798      	blx	r3
d0042418:	454d      	cmp	r5, r9
d004241a:	d1e1      	bne.n	d00423e0 <drawPowerShieldBar+0x58>
d004241c:	f44f 7493 	mov.w	r4, #294	; 0x126
d0042420:	2203      	movs	r2, #3
d0042422:	f44f 73b7 	mov.w	r3, #366	; 0x16e
d0042426:	4828      	ldr	r0, [pc, #160]	; (d00424c8 <drawPowerShieldBar+0x140>)
d0042428:	f88b 201b 	strb.w	r2, [fp, #27]
d004242c:	f8ab 3014 	strh.w	r3, [fp, #20]
d0042430:	f8ab 4016 	strh.w	r4, [fp, #22]
d0042434:	f89a 300c 	ldrb.w	r3, [sl, #12]
d0042438:	f89a 200d 	ldrb.w	r2, [sl, #13]
d004243c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042440:	f89a 200e 	ldrb.w	r2, [sl, #14]
d0042444:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0042448:	f89a 200f 	ldrb.w	r2, [sl, #15]
d004244c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042450:	685b      	ldr	r3, [r3, #4]
d0042452:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0042454:	4798      	blx	r3
d0042456:	9a01      	ldr	r2, [sp, #4]
d0042458:	2305      	movs	r3, #5
d004245a:	481b      	ldr	r0, [pc, #108]	; (d00424c8 <drawPowerShieldBar+0x140>)
d004245c:	eb07 07c2 	add.w	r7, r7, r2, lsl #3
d0042460:	f88b 301b 	strb.w	r3, [fp, #27]
d0042464:	f8ab 7014 	strh.w	r7, [fp, #20]
d0042468:	f8ab 4016 	strh.w	r4, [fp, #22]
d004246c:	f89a 300c 	ldrb.w	r3, [sl, #12]
d0042470:	f89a 200d 	ldrb.w	r2, [sl, #13]
d0042474:	f89a 100e 	ldrb.w	r1, [sl, #14]
d0042478:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004247c:	f89a 200f 	ldrb.w	r2, [sl, #15]
d0042480:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042484:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042488:	685b      	ldr	r3, [r3, #4]
d004248a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d004248c:	b003      	add	sp, #12
d004248e:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0042492:	4718      	bx	r3
d0042494:	4a0a      	ldr	r2, [pc, #40]	; (d00424c0 <drawPowerShieldBar+0x138>)
d0042496:	f992 3000 	ldrsb.w	r3, [r2]
d004249a:	4283      	cmp	r3, r0
d004249c:	da03      	bge.n	d00424a6 <drawPowerShieldBar+0x11e>
d004249e:	3301      	adds	r3, #1
d00424a0:	b25b      	sxtb	r3, r3
d00424a2:	7013      	strb	r3, [r2, #0]
d00424a4:	e77a      	b.n	d004239c <drawPowerShieldBar+0x14>
d00424a6:	f77f af79 	ble.w	d004239c <drawPowerShieldBar+0x14>
d00424aa:	3b01      	subs	r3, #1
d00424ac:	b25b      	sxtb	r3, r3
d00424ae:	7013      	strb	r3, [r2, #0]
d00424b0:	e774      	b.n	d004239c <drawPowerShieldBar+0x14>
d00424b2:	f505 77b7 	add.w	r7, r5, #366	; 0x16e
d00424b6:	f8df a014 	ldr.w	sl, [pc, #20]	; d00424cc <drawPowerShieldBar+0x144>
d00424ba:	e7af      	b.n	d004241c <drawPowerShieldBar+0x94>
d00424bc:	d0044b92 	.word	0xd0044b92
d00424c0:	d0046480 	.word	0xd0046480
d00424c4:	51eb851f 	.word	0x51eb851f
d00424c8:	d0046440 	.word	0xd0046440
d00424cc:	2001f000 	.word	0x2001f000

d00424d0 <DrawHUD>:
d00424d0:	4ba4      	ldr	r3, [pc, #656]	; (d0042764 <DrawHUD+0x294>)
d00424d2:	49a5      	ldr	r1, [pc, #660]	; (d0042768 <DrawHUD+0x298>)
d00424d4:	681a      	ldr	r2, [r3, #0]
d00424d6:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00424da:	4da4      	ldr	r5, [pc, #656]	; (d004276c <DrawHUD+0x29c>)
d00424dc:	4628      	mov	r0, r5
d00424de:	f000 ff57 	bl	d0043390 <siprintf>
d00424e2:	782b      	ldrb	r3, [r5, #0]
d00424e4:	b363      	cbz	r3, d0042540 <DrawHUD+0x70>
d00424e6:	260a      	movs	r6, #10
d00424e8:	46a9      	mov	r9, r5
d00424ea:	f8df a284 	ldr.w	sl, [pc, #644]	; d0042770 <DrawHUD+0x2a0>
d00424ee:	4637      	mov	r7, r6
d00424f0:	f8df 8298 	ldr.w	r8, [pc, #664]	; d004278c <DrawHUD+0x2bc>
d00424f4:	f1a3 0220 	sub.w	r2, r3, #32
d00424f8:	2b0a      	cmp	r3, #10
d00424fa:	489d      	ldr	r0, [pc, #628]	; (d0042770 <DrawHUD+0x2a0>)
d00424fc:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
d0042500:	f000 811c 	beq.w	d004273c <DrawHUD+0x26c>
d0042504:	b2db      	uxtb	r3, r3
d0042506:	f8aa 6014 	strh.w	r6, [sl, #20]
d004250a:	f8aa 7016 	strh.w	r7, [sl, #22]
d004250e:	3610      	adds	r6, #16
d0042510:	f88a 301b 	strb.w	r3, [sl, #27]
d0042514:	f898 400c 	ldrb.w	r4, [r8, #12]
d0042518:	b236      	sxth	r6, r6
d004251a:	f898 100d 	ldrb.w	r1, [r8, #13]
d004251e:	f898 200e 	ldrb.w	r2, [r8, #14]
d0042522:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d0042526:	f898 300f 	ldrb.w	r3, [r8, #15]
d004252a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004252e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0042532:	685b      	ldr	r3, [r3, #4]
d0042534:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0042536:	4798      	blx	r3
d0042538:	f819 3f01 	ldrb.w	r3, [r9, #1]!
d004253c:	2b00      	cmp	r3, #0
d004253e:	d1d9      	bne.n	d00424f4 <DrawHUD+0x24>
d0042540:	4b8c      	ldr	r3, [pc, #560]	; (d0042774 <DrawHUD+0x2a4>)
d0042542:	498d      	ldr	r1, [pc, #564]	; (d0042778 <DrawHUD+0x2a8>)
d0042544:	781a      	ldrb	r2, [r3, #0]
d0042546:	4889      	ldr	r0, [pc, #548]	; (d004276c <DrawHUD+0x29c>)
d0042548:	f000 ff22 	bl	d0043390 <siprintf>
d004254c:	782b      	ldrb	r3, [r5, #0]
d004254e:	b373      	cbz	r3, d00425ae <DrawHUD+0xde>
d0042550:	f8df 9218 	ldr.w	r9, [pc, #536]	; d004276c <DrawHUD+0x29c>
d0042554:	f44f 76aa 	mov.w	r6, #340	; 0x154
d0042558:	270a      	movs	r7, #10
d004255a:	f8df a214 	ldr.w	sl, [pc, #532]	; d0042770 <DrawHUD+0x2a0>
d004255e:	f8df 822c 	ldr.w	r8, [pc, #556]	; d004278c <DrawHUD+0x2bc>
d0042562:	f1a3 0220 	sub.w	r2, r3, #32
d0042566:	2b0a      	cmp	r3, #10
d0042568:	4881      	ldr	r0, [pc, #516]	; (d0042770 <DrawHUD+0x2a0>)
d004256a:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
d004256e:	f000 80ee 	beq.w	d004274e <DrawHUD+0x27e>
d0042572:	b2db      	uxtb	r3, r3
d0042574:	f8aa 6014 	strh.w	r6, [sl, #20]
d0042578:	f8aa 7016 	strh.w	r7, [sl, #22]
d004257c:	3610      	adds	r6, #16
d004257e:	f88a 301b 	strb.w	r3, [sl, #27]
d0042582:	f898 400c 	ldrb.w	r4, [r8, #12]
d0042586:	b236      	sxth	r6, r6
d0042588:	f898 100d 	ldrb.w	r1, [r8, #13]
d004258c:	f898 200e 	ldrb.w	r2, [r8, #14]
d0042590:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d0042594:	f898 300f 	ldrb.w	r3, [r8, #15]
d0042598:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004259c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00425a0:	685b      	ldr	r3, [r3, #4]
d00425a2:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00425a4:	4798      	blx	r3
d00425a6:	f819 3f01 	ldrb.w	r3, [r9, #1]!
d00425aa:	2b00      	cmp	r3, #0
d00425ac:	d1d9      	bne.n	d0042562 <DrawHUD+0x92>
d00425ae:	4b73      	ldr	r3, [pc, #460]	; (d004277c <DrawHUD+0x2ac>)
d00425b0:	4973      	ldr	r1, [pc, #460]	; (d0042780 <DrawHUD+0x2b0>)
d00425b2:	781a      	ldrb	r2, [r3, #0]
d00425b4:	486d      	ldr	r0, [pc, #436]	; (d004276c <DrawHUD+0x29c>)
d00425b6:	f000 feeb 	bl	d0043390 <siprintf>
d00425ba:	782b      	ldrb	r3, [r5, #0]
d00425bc:	b373      	cbz	r3, d004261c <DrawHUD+0x14c>
d00425be:	f8df 91ac 	ldr.w	r9, [pc, #428]	; d004276c <DrawHUD+0x29c>
d00425c2:	260a      	movs	r6, #10
d00425c4:	f44f 7793 	mov.w	r7, #294	; 0x126
d00425c8:	f8df a1a4 	ldr.w	sl, [pc, #420]	; d0042770 <DrawHUD+0x2a0>
d00425cc:	f8df 81bc 	ldr.w	r8, [pc, #444]	; d004278c <DrawHUD+0x2bc>
d00425d0:	f1a3 0220 	sub.w	r2, r3, #32
d00425d4:	2b0a      	cmp	r3, #10
d00425d6:	4866      	ldr	r0, [pc, #408]	; (d0042770 <DrawHUD+0x2a0>)
d00425d8:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
d00425dc:	f000 80a5 	beq.w	d004272a <DrawHUD+0x25a>
d00425e0:	b2db      	uxtb	r3, r3
d00425e2:	f8aa 6014 	strh.w	r6, [sl, #20]
d00425e6:	f8aa 7016 	strh.w	r7, [sl, #22]
d00425ea:	3610      	adds	r6, #16
d00425ec:	f88a 301b 	strb.w	r3, [sl, #27]
d00425f0:	f898 400c 	ldrb.w	r4, [r8, #12]
d00425f4:	b236      	sxth	r6, r6
d00425f6:	f898 100d 	ldrb.w	r1, [r8, #13]
d00425fa:	f898 200e 	ldrb.w	r2, [r8, #14]
d00425fe:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d0042602:	f898 300f 	ldrb.w	r3, [r8, #15]
d0042606:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004260a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004260e:	685b      	ldr	r3, [r3, #4]
d0042610:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0042612:	4798      	blx	r3
d0042614:	f819 3f01 	ldrb.w	r3, [r9, #1]!
d0042618:	2b00      	cmp	r3, #0
d004261a:	d1d9      	bne.n	d00425d0 <DrawHUD+0x100>
d004261c:	2203      	movs	r2, #3
d004261e:	4959      	ldr	r1, [pc, #356]	; (d0042784 <DrawHUD+0x2b4>)
d0042620:	4852      	ldr	r0, [pc, #328]	; (d004276c <DrawHUD+0x29c>)
d0042622:	26b4      	movs	r6, #180	; 0xb4
d0042624:	f000 fd2e 	bl	d0043084 <memcpy>
d0042628:	782b      	ldrb	r3, [r5, #0]
d004262a:	4d50      	ldr	r5, [pc, #320]	; (d004276c <DrawHUD+0x29c>)
d004262c:	f44f 7793 	mov.w	r7, #294	; 0x126
d0042630:	f8df a13c 	ldr.w	sl, [pc, #316]	; d0042770 <DrawHUD+0x2a0>
d0042634:	46a9      	mov	r9, r5
d0042636:	f8df 8154 	ldr.w	r8, [pc, #340]	; d004278c <DrawHUD+0x2bc>
d004263a:	f1a3 0220 	sub.w	r2, r3, #32
d004263e:	2b0a      	cmp	r3, #10
d0042640:	484b      	ldr	r0, [pc, #300]	; (d0042770 <DrawHUD+0x2a0>)
d0042642:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
d0042646:	d068      	beq.n	d004271a <DrawHUD+0x24a>
d0042648:	b2db      	uxtb	r3, r3
d004264a:	f8aa 6014 	strh.w	r6, [sl, #20]
d004264e:	f8aa 7016 	strh.w	r7, [sl, #22]
d0042652:	3610      	adds	r6, #16
d0042654:	f88a 301b 	strb.w	r3, [sl, #27]
d0042658:	f898 400c 	ldrb.w	r4, [r8, #12]
d004265c:	b236      	sxth	r6, r6
d004265e:	f898 100d 	ldrb.w	r1, [r8, #13]
d0042662:	f898 200e 	ldrb.w	r2, [r8, #14]
d0042666:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d004266a:	f898 300f 	ldrb.w	r3, [r8, #15]
d004266e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0042672:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0042676:	685b      	ldr	r3, [r3, #4]
d0042678:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d004267a:	4798      	blx	r3
d004267c:	f819 3f01 	ldrb.w	r3, [r9, #1]!
d0042680:	2b00      	cmp	r3, #0
d0042682:	d1da      	bne.n	d004263a <DrawHUD+0x16a>
d0042684:	2203      	movs	r2, #3
d0042686:	4940      	ldr	r1, [pc, #256]	; (d0042788 <DrawHUD+0x2b8>)
d0042688:	4838      	ldr	r0, [pc, #224]	; (d004276c <DrawHUD+0x29c>)
d004268a:	f44f 76a7 	mov.w	r6, #334	; 0x14e
d004268e:	f000 fcf9 	bl	d0043084 <memcpy>
d0042692:	f8df 80d8 	ldr.w	r8, [pc, #216]	; d004276c <DrawHUD+0x29c>
d0042696:	782b      	ldrb	r3, [r5, #0]
d0042698:	f44f 7593 	mov.w	r5, #294	; 0x126
d004269c:	f8df 90d0 	ldr.w	r9, [pc, #208]	; d0042770 <DrawHUD+0x2a0>
d00426a0:	4f3a      	ldr	r7, [pc, #232]	; (d004278c <DrawHUD+0x2bc>)
d00426a2:	f1a3 0220 	sub.w	r2, r3, #32
d00426a6:	2b0a      	cmp	r3, #10
d00426a8:	4831      	ldr	r0, [pc, #196]	; (d0042770 <DrawHUD+0x2a0>)
d00426aa:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
d00426ae:	d02b      	beq.n	d0042708 <DrawHUD+0x238>
d00426b0:	b2db      	uxtb	r3, r3
d00426b2:	f8a9 6014 	strh.w	r6, [r9, #20]
d00426b6:	f8a9 5016 	strh.w	r5, [r9, #22]
d00426ba:	3610      	adds	r6, #16
d00426bc:	f889 301b 	strb.w	r3, [r9, #27]
d00426c0:	7b3c      	ldrb	r4, [r7, #12]
d00426c2:	b236      	sxth	r6, r6
d00426c4:	7b79      	ldrb	r1, [r7, #13]
d00426c6:	7bba      	ldrb	r2, [r7, #14]
d00426c8:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
d00426cc:	7bfb      	ldrb	r3, [r7, #15]
d00426ce:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00426d2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00426d6:	685b      	ldr	r3, [r3, #4]
d00426d8:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00426da:	4798      	blx	r3
d00426dc:	f818 3f01 	ldrb.w	r3, [r8, #1]!
d00426e0:	2b00      	cmp	r3, #0
d00426e2:	d1de      	bne.n	d00426a2 <DrawHUD+0x1d2>
d00426e4:	4a2a      	ldr	r2, [pc, #168]	; (d0042790 <DrawHUD+0x2c0>)
d00426e6:	7813      	ldrb	r3, [r2, #0]
d00426e8:	3301      	adds	r3, #1
d00426ea:	b2db      	uxtb	r3, r3
d00426ec:	2b01      	cmp	r3, #1
d00426ee:	bf88      	it	hi
d00426f0:	2300      	movhi	r3, #0
d00426f2:	7013      	strb	r3, [r2, #0]
d00426f4:	4b27      	ldr	r3, [pc, #156]	; (d0042794 <DrawHUD+0x2c4>)
d00426f6:	7818      	ldrb	r0, [r3, #0]
d00426f8:	f7ff fda4 	bl	d0042244 <drawPowerHealthBar>
d00426fc:	4b26      	ldr	r3, [pc, #152]	; (d0042798 <DrawHUD+0x2c8>)
d00426fe:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0042702:	7818      	ldrb	r0, [r3, #0]
d0042704:	f7ff be40 	b.w	d0042388 <drawPowerShieldBar>
d0042708:	3510      	adds	r5, #16
d004270a:	f818 3f01 	ldrb.w	r3, [r8, #1]!
d004270e:	f44f 76a7 	mov.w	r6, #334	; 0x14e
d0042712:	b22d      	sxth	r5, r5
d0042714:	2b00      	cmp	r3, #0
d0042716:	d1c4      	bne.n	d00426a2 <DrawHUD+0x1d2>
d0042718:	e7e4      	b.n	d00426e4 <DrawHUD+0x214>
d004271a:	3710      	adds	r7, #16
d004271c:	f819 3f01 	ldrb.w	r3, [r9, #1]!
d0042720:	26b4      	movs	r6, #180	; 0xb4
d0042722:	b23f      	sxth	r7, r7
d0042724:	2b00      	cmp	r3, #0
d0042726:	d188      	bne.n	d004263a <DrawHUD+0x16a>
d0042728:	e7ac      	b.n	d0042684 <DrawHUD+0x1b4>
d004272a:	3710      	adds	r7, #16
d004272c:	f819 3f01 	ldrb.w	r3, [r9, #1]!
d0042730:	260a      	movs	r6, #10
d0042732:	b23f      	sxth	r7, r7
d0042734:	2b00      	cmp	r3, #0
d0042736:	f47f af4b 	bne.w	d00425d0 <DrawHUD+0x100>
d004273a:	e76f      	b.n	d004261c <DrawHUD+0x14c>
d004273c:	3710      	adds	r7, #16
d004273e:	f819 3f01 	ldrb.w	r3, [r9, #1]!
d0042742:	260a      	movs	r6, #10
d0042744:	b23f      	sxth	r7, r7
d0042746:	2b00      	cmp	r3, #0
d0042748:	f47f aed4 	bne.w	d00424f4 <DrawHUD+0x24>
d004274c:	e6f8      	b.n	d0042540 <DrawHUD+0x70>
d004274e:	3710      	adds	r7, #16
d0042750:	f819 3f01 	ldrb.w	r3, [r9, #1]!
d0042754:	f44f 76aa 	mov.w	r6, #340	; 0x154
d0042758:	b23f      	sxth	r7, r7
d004275a:	2b00      	cmp	r3, #0
d004275c:	f47f af01 	bne.w	d0042562 <DrawHUD+0x92>
d0042760:	e725      	b.n	d00425ae <DrawHUD+0xde>
d0042762:	bf00      	nop
d0042764:	d0044b8c 	.word	0xd0044b8c
d0042768:	d00441c8 	.word	0xd00441c8
d004276c:	d00467a0 	.word	0xd00467a0
d0042770:	d0046780 	.word	0xd0046780
d0042774:	d0044b88 	.word	0xd0044b88
d0042778:	d00441d8 	.word	0xd00441d8
d004277c:	d0044b90 	.word	0xd0044b90
d0042780:	d00441e4 	.word	0xd00441e4
d0042784:	d00441f4 	.word	0xd00441f4
d0042788:	d00441f0 	.word	0xd00441f0
d004278c:	2001f000 	.word	0x2001f000
d0042790:	d0044b92 	.word	0xd0044b92
d0042794:	d0044b60 	.word	0xd0044b60
d0042798:	d0044b61 	.word	0xd0044b61

d004279c <sbx_rng_range>:
d004279c:	b410      	push	{r4}
d004279e:	4c0a      	ldr	r4, [pc, #40]	; (d00427c8 <sbx_rng_range+0x2c>)
d00427a0:	1a09      	subs	r1, r1, r0
d00427a2:	6823      	ldr	r3, [r4, #0]
d00427a4:	3101      	adds	r1, #1
d00427a6:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d00427aa:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d00427ae:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d00427b2:	fbb3 f2f1 	udiv	r2, r3, r1
d00427b6:	fb01 3112 	mls	r1, r1, r2, r3
d00427ba:	6023      	str	r3, [r4, #0]
d00427bc:	4408      	add	r0, r1
d00427be:	f85d 4b04 	ldr.w	r4, [sp], #4
d00427c2:	b200      	sxth	r0, r0
d00427c4:	4770      	bx	lr
d00427c6:	bf00      	nop
d00427c8:	d0044b78 	.word	0xd0044b78

d00427cc <main>:
d00427cc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00427d0:	4cb3      	ldr	r4, [pc, #716]	; (d0042aa0 <main+0x2d4>)
d00427d2:	f44f 3000 	mov.w	r0, #131072	; 0x20000
d00427d6:	2600      	movs	r6, #0
d00427d8:	2501      	movs	r5, #1
d00427da:	7823      	ldrb	r3, [r4, #0]
d00427dc:	7862      	ldrb	r2, [r4, #1]
d00427de:	78a1      	ldrb	r1, [r4, #2]
d00427e0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00427e4:	78e2      	ldrb	r2, [r4, #3]
d00427e6:	4faf      	ldr	r7, [pc, #700]	; (d0042aa4 <main+0x2d8>)
d00427e8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00427ec:	f8df a2d0 	ldr.w	sl, [pc, #720]	; d0042ac0 <main+0x2f4>
d00427f0:	f8df b2d0 	ldr.w	fp, [pc, #720]	; d0042ac4 <main+0x2f8>
d00427f4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00427f8:	f8df 92cc 	ldr.w	r9, [pc, #716]	; d0042ac8 <main+0x2fc>
d00427fc:	681b      	ldr	r3, [r3, #0]
d00427fe:	ed2d 8b02 	vpush	{d8}
d0042802:	b095      	sub	sp, #84	; 0x54
d0042804:	4798      	blx	r3
d0042806:	f7fd fc75 	bl	d00400f4 <initMalloc>
d004280a:	7b23      	ldrb	r3, [r4, #12]
d004280c:	7b62      	ldrb	r2, [r4, #13]
d004280e:	2190      	movs	r1, #144	; 0x90
d0042810:	f894 c00e 	ldrb.w	ip, [r4, #14]
d0042814:	20dc      	movs	r0, #220	; 0xdc
d0042816:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004281a:	7be2      	ldrb	r2, [r4, #15]
d004281c:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0042820:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042824:	681b      	ldr	r3, [r3, #0]
d0042826:	691b      	ldr	r3, [r3, #16]
d0042828:	4798      	blx	r3
d004282a:	7b23      	ldrb	r3, [r4, #12]
d004282c:	7b62      	ldrb	r2, [r4, #13]
d004282e:	4630      	mov	r0, r6
d0042830:	7ba1      	ldrb	r1, [r4, #14]
d0042832:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042836:	7be2      	ldrb	r2, [r4, #15]
d0042838:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004283c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042840:	681b      	ldr	r3, [r3, #0]
d0042842:	689b      	ldr	r3, [r3, #8]
d0042844:	4798      	blx	r3
d0042846:	7b21      	ldrb	r1, [r4, #12]
d0042848:	7b62      	ldrb	r2, [r4, #13]
d004284a:	f04f 0c06 	mov.w	ip, #6
d004284e:	7ba0      	ldrb	r0, [r4, #14]
d0042850:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d0042854:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
d0042858:	7be2      	ldrb	r2, [r4, #15]
d004285a:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
d004285e:	4618      	mov	r0, r3
d0042860:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
d0042864:	f44f 7220 	mov.w	r2, #640	; 0x280
d0042868:	f8d1 e000 	ldr.w	lr, [r1]
d004286c:	f44f 71a0 	mov.w	r1, #320	; 0x140
d0042870:	f8cd c000 	str.w	ip, [sp]
d0042874:	f8de 8014 	ldr.w	r8, [lr, #20]
d0042878:	47c0      	blx	r8
d004287a:	7c23      	ldrb	r3, [r4, #16]
d004287c:	7c62      	ldrb	r2, [r4, #17]
d004287e:	f44f 7000 	mov.w	r0, #512	; 0x200
d0042882:	7ca1      	ldrb	r1, [r4, #18]
d0042884:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042888:	7ce2      	ldrb	r2, [r4, #19]
d004288a:	f8df 8240 	ldr.w	r8, [pc, #576]	; d0042acc <main+0x300>
d004288e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042892:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042896:	681b      	ldr	r3, [r3, #0]
d0042898:	681b      	ldr	r3, [r3, #0]
d004289a:	4798      	blx	r3
d004289c:	7c22      	ldrb	r2, [r4, #16]
d004289e:	7c61      	ldrb	r1, [r4, #17]
d00428a0:	7ca3      	ldrb	r3, [r4, #18]
d00428a2:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d00428a6:	7ce0      	ldrb	r0, [r4, #19]
d00428a8:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
d00428ac:	7b23      	ldrb	r3, [r4, #12]
d00428ae:	7b61      	ldrb	r1, [r4, #13]
d00428b0:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d00428b4:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d00428b8:	7ba1      	ldrb	r1, [r4, #14]
d00428ba:	6812      	ldr	r2, [r2, #0]
d00428bc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00428c0:	7be1      	ldrb	r1, [r4, #15]
d00428c2:	6852      	ldr	r2, [r2, #4]
d00428c4:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d00428c8:	7015      	strb	r5, [r2, #0]
d00428ca:	681b      	ldr	r3, [r3, #0]
d00428cc:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d00428ce:	4798      	blx	r3
d00428d0:	7b23      	ldrb	r3, [r4, #12]
d00428d2:	4975      	ldr	r1, [pc, #468]	; (d0042aa8 <main+0x2dc>)
d00428d4:	7b62      	ldrb	r2, [r4, #13]
d00428d6:	6008      	str	r0, [r1, #0]
d00428d8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00428dc:	7ba1      	ldrb	r1, [r4, #14]
d00428de:	7be2      	ldrb	r2, [r4, #15]
d00428e0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00428e4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00428e8:	681b      	ldr	r3, [r3, #0]
d00428ea:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d00428ec:	4798      	blx	r3
d00428ee:	f894 c00c 	ldrb.w	ip, [r4, #12]
d00428f2:	4601      	mov	r1, r0
d00428f4:	7b62      	ldrb	r2, [r4, #13]
d00428f6:	4b6d      	ldr	r3, [pc, #436]	; (d0042aac <main+0x2e0>)
d00428f8:	2064      	movs	r0, #100	; 0x64
d00428fa:	6019      	str	r1, [r3, #0]
d00428fc:	ea4c 2302 	orr.w	r3, ip, r2, lsl #8
d0042900:	7ba2      	ldrb	r2, [r4, #14]
d0042902:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0042906:	7be2      	ldrb	r2, [r4, #15]
d0042908:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004290c:	681b      	ldr	r3, [r3, #0]
d004290e:	689b      	ldr	r3, [r3, #8]
d0042910:	4798      	blx	r3
d0042912:	f7fd fced 	bl	d00402f0 <loadSounds>
d0042916:	2003      	movs	r0, #3
d0042918:	f7fe fc52 	bl	d00411c0 <SetPlayerLives>
d004291c:	603e      	str	r6, [r7, #0]
d004291e:	f7fe ff8d 	bl	d004183c <LoadGraphics>
d0042922:	f7ff f891 	bl	d0041a48 <LoadCommonGameGraphics>
d0042926:	f7fe fff5 	bl	d0041914 <LoadShipGfx>
d004292a:	7823      	ldrb	r3, [r4, #0]
d004292c:	7862      	ldrb	r2, [r4, #1]
d004292e:	78a1      	ldrb	r1, [r4, #2]
d0042930:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042934:	78e2      	ldrb	r2, [r4, #3]
d0042936:	485e      	ldr	r0, [pc, #376]	; (d0042ab0 <main+0x2e4>)
d0042938:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004293c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042940:	689b      	ldr	r3, [r3, #8]
d0042942:	4798      	blx	r3
d0042944:	7b23      	ldrb	r3, [r4, #12]
d0042946:	7b62      	ldrb	r2, [r4, #13]
d0042948:	7ba1      	ldrb	r1, [r4, #14]
d004294a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004294e:	7be2      	ldrb	r2, [r4, #15]
d0042950:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042954:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042958:	681b      	ldr	r3, [r3, #0]
d004295a:	68db      	ldr	r3, [r3, #12]
d004295c:	4798      	blx	r3
d004295e:	7b23      	ldrb	r3, [r4, #12]
d0042960:	7b62      	ldrb	r2, [r4, #13]
d0042962:	4638      	mov	r0, r7
d0042964:	7ba1      	ldrb	r1, [r4, #14]
d0042966:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004296a:	7be2      	ldrb	r2, [r4, #15]
d004296c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042970:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042974:	681b      	ldr	r3, [r3, #0]
d0042976:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d0042978:	4798      	blx	r3
d004297a:	7b23      	ldrb	r3, [r4, #12]
d004297c:	7b62      	ldrb	r2, [r4, #13]
d004297e:	7ba1      	ldrb	r1, [r4, #14]
d0042980:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042984:	7be2      	ldrb	r2, [r4, #15]
d0042986:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004298a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004298e:	681b      	ldr	r3, [r3, #0]
d0042990:	68db      	ldr	r3, [r3, #12]
d0042992:	4798      	blx	r3
d0042994:	7b23      	ldrb	r3, [r4, #12]
d0042996:	7b62      	ldrb	r2, [r4, #13]
d0042998:	7ba1      	ldrb	r1, [r4, #14]
d004299a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004299e:	7be2      	ldrb	r2, [r4, #15]
d00429a0:	4844      	ldr	r0, [pc, #272]	; (d0042ab4 <main+0x2e8>)
d00429a2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00429a6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00429aa:	681b      	ldr	r3, [r3, #0]
d00429ac:	6d1b      	ldr	r3, [r3, #80]	; 0x50
d00429ae:	4798      	blx	r3
d00429b0:	7b23      	ldrb	r3, [r4, #12]
d00429b2:	7b62      	ldrb	r2, [r4, #13]
d00429b4:	7ba1      	ldrb	r1, [r4, #14]
d00429b6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00429ba:	7be2      	ldrb	r2, [r4, #15]
d00429bc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00429c0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00429c4:	681b      	ldr	r3, [r3, #0]
d00429c6:	68db      	ldr	r3, [r3, #12]
d00429c8:	4798      	blx	r3
d00429ca:	4640      	mov	r0, r8
d00429cc:	f7fd fc8c 	bl	d00402e8 <freeSFX>
d00429d0:	4641      	mov	r1, r8
d00429d2:	4839      	ldr	r0, [pc, #228]	; (d0042ab8 <main+0x2ec>)
d00429d4:	f7fd fc00 	bl	d00401d8 <LoadSFX>
d00429d8:	7c27      	ldrb	r7, [r4, #16]
d00429da:	f894 c011 	ldrb.w	ip, [r4, #17]
d00429de:	4602      	mov	r2, r0
d00429e0:	7ca0      	ldrb	r0, [r4, #18]
d00429e2:	4633      	mov	r3, r6
d00429e4:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d00429e8:	f8d8 1000 	ldr.w	r1, [r8]
d00429ec:	46b0      	mov	r8, r6
d00429ee:	ea47 4700 	orr.w	r7, r7, r0, lsl #16
d00429f2:	7ce0      	ldrb	r0, [r4, #19]
d00429f4:	ea47 6700 	orr.w	r7, r7, r0, lsl #24
d00429f8:	4628      	mov	r0, r5
d00429fa:	68bf      	ldr	r7, [r7, #8]
d00429fc:	68ff      	ldr	r7, [r7, #12]
d00429fe:	47b8      	blx	r7
d0042a00:	7c23      	ldrb	r3, [r4, #16]
d0042a02:	7c62      	ldrb	r2, [r4, #17]
d0042a04:	4628      	mov	r0, r5
d0042a06:	7ca1      	ldrb	r1, [r4, #18]
d0042a08:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042a0c:	7ce2      	ldrb	r2, [r4, #19]
d0042a0e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042a12:	f245 51f0 	movw	r1, #22000	; 0x55f0
d0042a16:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042a1a:	689b      	ldr	r3, [r3, #8]
d0042a1c:	691b      	ldr	r3, [r3, #16]
d0042a1e:	4798      	blx	r3
d0042a20:	7c23      	ldrb	r3, [r4, #16]
d0042a22:	7c62      	ldrb	r2, [r4, #17]
d0042a24:	4628      	mov	r0, r5
d0042a26:	7ca1      	ldrb	r1, [r4, #18]
d0042a28:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042a2c:	7ce2      	ldrb	r2, [r4, #19]
d0042a2e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042a32:	f240 1163 	movw	r1, #355	; 0x163
d0042a36:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042a3a:	689b      	ldr	r3, [r3, #8]
d0042a3c:	695b      	ldr	r3, [r3, #20]
d0042a3e:	4798      	blx	r3
d0042a40:	7c23      	ldrb	r3, [r4, #16]
d0042a42:	7c62      	ldrb	r2, [r4, #17]
d0042a44:	4631      	mov	r1, r6
d0042a46:	7ca0      	ldrb	r0, [r4, #18]
d0042a48:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042a4c:	7ce2      	ldrb	r2, [r4, #19]
d0042a4e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0042a52:	4628      	mov	r0, r5
d0042a54:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042a58:	689b      	ldr	r3, [r3, #8]
d0042a5a:	699b      	ldr	r3, [r3, #24]
d0042a5c:	4798      	blx	r3
d0042a5e:	7c23      	ldrb	r3, [r4, #16]
d0042a60:	7c61      	ldrb	r1, [r4, #17]
d0042a62:	4628      	mov	r0, r5
d0042a64:	7ca2      	ldrb	r2, [r4, #18]
d0042a66:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d0042a6a:	7ce1      	ldrb	r1, [r4, #19]
d0042a6c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0042a70:	f241 1251 	movw	r2, #4433	; 0x1151
d0042a74:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d0042a78:	21c8      	movs	r1, #200	; 0xc8
d0042a7a:	689b      	ldr	r3, [r3, #8]
d0042a7c:	69db      	ldr	r3, [r3, #28]
d0042a7e:	4798      	blx	r3
d0042a80:	7c23      	ldrb	r3, [r4, #16]
d0042a82:	7c62      	ldrb	r2, [r4, #17]
d0042a84:	4628      	mov	r0, r5
d0042a86:	7ca5      	ldrb	r5, [r4, #18]
d0042a88:	4631      	mov	r1, r6
d0042a8a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042a8e:	7ce2      	ldrb	r2, [r4, #19]
d0042a90:	4e0a      	ldr	r6, [pc, #40]	; (d0042abc <main+0x2f0>)
d0042a92:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0042a96:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042a9a:	689b      	ldr	r3, [r3, #8]
d0042a9c:	e018      	b.n	d0042ad0 <main+0x304>
d0042a9e:	bf00      	nop
d0042aa0:	2001f000 	.word	0x2001f000
d0042aa4:	d0044360 	.word	0xd0044360
d0042aa8:	d0046fc0 	.word	0xd0046fc0
d0042aac:	d0046ea8 	.word	0xd0046ea8
d0042ab0:	d00441f8 	.word	0xd00441f8
d0042ab4:	d0044760 	.word	0xd0044760
d0042ab8:	d0044214 	.word	0xd0044214
d0042abc:	d0046d80 	.word	0xd0046d80
d0042ac0:	d0046ec0 	.word	0xd0046ec0
d0042ac4:	00f00140 	.word	0x00f00140
d0042ac8:	d0044224 	.word	0xd0044224
d0042acc:	d0044bc0 	.word	0xd0044bc0
d0042ad0:	6a1b      	ldr	r3, [r3, #32]
d0042ad2:	4798      	blx	r3
d0042ad4:	f44f 3096 	mov.w	r0, #76800	; 0x12c00
d0042ad8:	4647      	mov	r7, r8
d0042ada:	f000 fab5 	bl	d0043048 <malloc>
d0042ade:	4603      	mov	r3, r0
d0042ae0:	2500      	movs	r5, #0
d0042ae2:	f108 0801 	add.w	r8, r8, #1
d0042ae6:	6033      	str	r3, [r6, #0]
d0042ae8:	017b      	lsls	r3, r7, #5
d0042aea:	4642      	mov	r2, r8
d0042aec:	4649      	mov	r1, r9
d0042aee:	f8c6 b00c 	str.w	fp, [r6, #12]
d0042af2:	a804      	add	r0, sp, #16
d0042af4:	f8c6 b010 	str.w	fp, [r6, #16]
d0042af8:	6175      	str	r5, [r6, #20]
d0042afa:	9302      	str	r3, [sp, #8]
d0042afc:	f000 fc48 	bl	d0043390 <siprintf>
d0042b00:	6831      	ldr	r1, [r6, #0]
d0042b02:	a804      	add	r0, sp, #16
d0042b04:	f7fd faa2 	bl	d004004c <LoadPPB>
d0042b08:	7822      	ldrb	r2, [r4, #0]
d0042b0a:	7861      	ldrb	r1, [r4, #1]
d0042b0c:	a804      	add	r0, sp, #16
d0042b0e:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d0042b12:	78a1      	ldrb	r1, [r4, #2]
d0042b14:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
d0042b18:	78e1      	ldrb	r1, [r4, #3]
d0042b1a:	ea42 6201 	orr.w	r2, r2, r1, lsl #24
d0042b1e:	6892      	ldr	r2, [r2, #8]
d0042b20:	4790      	blx	r2
d0042b22:	4972      	ldr	r1, [pc, #456]	; (d0042cec <main+0x520>)
d0042b24:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0042b28:	f44f 2096 	mov.w	r0, #307200	; 0x4b000
d0042b2c:	eb01 1747 	add.w	r7, r1, r7, lsl #5
d0042b30:	f44f 7120 	mov.w	r1, #640	; 0x280
d0042b34:	60f8      	str	r0, [r7, #12]
d0042b36:	80b9      	strh	r1, [r7, #4]
d0042b38:	80fa      	strh	r2, [r7, #6]
d0042b3a:	813a      	strh	r2, [r7, #8]
d0042b3c:	f000 fa84 	bl	d0043048 <malloc>
d0042b40:	9b02      	ldr	r3, [sp, #8]
d0042b42:	4602      	mov	r2, r0
d0042b44:	4969      	ldr	r1, [pc, #420]	; (d0042cec <main+0x520>)
d0042b46:	4650      	mov	r0, sl
d0042b48:	f10a 0a20 	add.w	sl, sl, #32
d0042b4c:	50ca      	str	r2, [r1, r3]
d0042b4e:	7b23      	ldrb	r3, [r4, #12]
d0042b50:	7b62      	ldrb	r2, [r4, #13]
d0042b52:	7ba1      	ldrb	r1, [r4, #14]
d0042b54:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042b58:	7be2      	ldrb	r2, [r4, #15]
d0042b5a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042b5e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042b62:	681b      	ldr	r3, [r3, #0]
d0042b64:	699b      	ldr	r3, [r3, #24]
d0042b66:	4798      	blx	r3
d0042b68:	7b23      	ldrb	r3, [r4, #12]
d0042b6a:	7b62      	ldrb	r2, [r4, #13]
d0042b6c:	7ba1      	ldrb	r1, [r4, #14]
d0042b6e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042b72:	7be2      	ldrb	r2, [r4, #15]
d0042b74:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042b78:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042b7c:	685b      	ldr	r3, [r3, #4]
d0042b7e:	681b      	ldr	r3, [r3, #0]
d0042b80:	4798      	blx	r3
d0042b82:	7b23      	ldrb	r3, [r4, #12]
d0042b84:	7b62      	ldrb	r2, [r4, #13]
d0042b86:	4630      	mov	r0, r6
d0042b88:	7ba1      	ldrb	r1, [r4, #14]
d0042b8a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042b8e:	7be2      	ldrb	r2, [r4, #15]
d0042b90:	7135      	strb	r5, [r6, #4]
d0042b92:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042b96:	6175      	str	r5, [r6, #20]
d0042b98:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042b9c:	685b      	ldr	r3, [r3, #4]
d0042b9e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0042ba0:	4798      	blx	r3
d0042ba2:	7b23      	ldrb	r3, [r4, #12]
d0042ba4:	7b62      	ldrb	r2, [r4, #13]
d0042ba6:	2004      	movs	r0, #4
d0042ba8:	7ba7      	ldrb	r7, [r4, #14]
d0042baa:	f44f 71a0 	mov.w	r1, #320	; 0x140
d0042bae:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042bb2:	7be2      	ldrb	r2, [r4, #15]
d0042bb4:	7130      	strb	r0, [r6, #4]
d0042bb6:	4630      	mov	r0, r6
d0042bb8:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d0042bbc:	6171      	str	r1, [r6, #20]
d0042bbe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042bc2:	685b      	ldr	r3, [r3, #4]
d0042bc4:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0042bc6:	4798      	blx	r3
d0042bc8:	7b23      	ldrb	r3, [r4, #12]
d0042bca:	7b62      	ldrb	r2, [r4, #13]
d0042bcc:	2008      	movs	r0, #8
d0042bce:	7ba7      	ldrb	r7, [r4, #14]
d0042bd0:	f44f 0170 	mov.w	r1, #15728640	; 0xf00000
d0042bd4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042bd8:	7be2      	ldrb	r2, [r4, #15]
d0042bda:	7130      	strb	r0, [r6, #4]
d0042bdc:	4630      	mov	r0, r6
d0042bde:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d0042be2:	6171      	str	r1, [r6, #20]
d0042be4:	270c      	movs	r7, #12
d0042be6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042bea:	685b      	ldr	r3, [r3, #4]
d0042bec:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0042bee:	4798      	blx	r3
d0042bf0:	7b23      	ldrb	r3, [r4, #12]
d0042bf2:	7b62      	ldrb	r2, [r4, #13]
d0042bf4:	4630      	mov	r0, r6
d0042bf6:	7ba1      	ldrb	r1, [r4, #14]
d0042bf8:	3620      	adds	r6, #32
d0042bfa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042bfe:	7be2      	ldrb	r2, [r4, #15]
d0042c00:	f806 7c1c 	strb.w	r7, [r6, #-28]
d0042c04:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042c08:	f846 bc0c 	str.w	fp, [r6, #-12]
d0042c0c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042c10:	685b      	ldr	r3, [r3, #4]
d0042c12:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0042c14:	4798      	blx	r3
d0042c16:	f1b8 0f08 	cmp.w	r8, #8
d0042c1a:	f47f af5b 	bne.w	d0042ad4 <main+0x308>
d0042c1e:	2001      	movs	r0, #1
d0042c20:	4e33      	ldr	r6, [pc, #204]	; (d0042cf0 <main+0x524>)
d0042c22:	f7fd fe23 	bl	d004086c <MusicPlay>
d0042c26:	7b23      	ldrb	r3, [r4, #12]
d0042c28:	7b62      	ldrb	r2, [r4, #13]
d0042c2a:	46a9      	mov	r9, r5
d0042c2c:	7ba1      	ldrb	r1, [r4, #14]
d0042c2e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042c32:	7be2      	ldrb	r2, [r4, #15]
d0042c34:	482d      	ldr	r0, [pc, #180]	; (d0042cec <main+0x520>)
d0042c36:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042c3a:	9502      	str	r5, [sp, #8]
d0042c3c:	9503      	str	r5, [sp, #12]
d0042c3e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042c42:	f8df 80b4 	ldr.w	r8, [pc, #180]	; d0042cf8 <main+0x52c>
d0042c46:	f8df a0b4 	ldr.w	sl, [pc, #180]	; d0042cfc <main+0x530>
d0042c4a:	681b      	ldr	r3, [r3, #0]
d0042c4c:	6a1b      	ldr	r3, [r3, #32]
d0042c4e:	4798      	blx	r3
d0042c50:	7b23      	ldrb	r3, [r4, #12]
d0042c52:	7b62      	ldrb	r2, [r4, #13]
d0042c54:	7ba1      	ldrb	r1, [r4, #14]
d0042c56:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042c5a:	7be2      	ldrb	r2, [r4, #15]
d0042c5c:	6830      	ldr	r0, [r6, #0]
d0042c5e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042c62:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042c66:	681b      	ldr	r3, [r3, #0]
d0042c68:	69db      	ldr	r3, [r3, #28]
d0042c6a:	4798      	blx	r3
d0042c6c:	7b23      	ldrb	r3, [r4, #12]
d0042c6e:	7b62      	ldrb	r2, [r4, #13]
d0042c70:	7ba1      	ldrb	r1, [r4, #14]
d0042c72:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0042c76:	7be2      	ldrb	r2, [r4, #15]
d0042c78:	6830      	ldr	r0, [r6, #0]
d0042c7a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0042c7e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0042c82:	681b      	ldr	r3, [r3, #0]
d0042c84:	699b      	ldr	r3, [r3, #24]
d0042c86:	4798      	blx	r3
d0042c88:	f88a 5000 	strb.w	r5, [sl]
d0042c8c:	f8b8 6010 	ldrh.w	r6, [r8, #16]
d0042c90:	f8b8 5012 	ldrh.w	r5, [r8, #18]
d0042c94:	b2b6      	uxth	r6, r6
d0042c96:	f8b8 7010 	ldrh.w	r7, [r8, #16]
d0042c9a:	f8b8 3012 	ldrh.w	r3, [r8, #18]
d0042c9e:	b2ad      	uxth	r5, r5
d0042ca0:	f5c6 76f0 	rsb	r6, r6, #480	; 0x1e0
d0042ca4:	f3c7 074e 	ubfx	r7, r7, #1, #15
d0042ca8:	f3c3 034e 	ubfx	r3, r3, #1, #15
d0042cac:	f5c5 75b0 	rsb	r5, r5, #352	; 0x160
d0042cb0:	b236      	sxth	r6, r6
d0042cb2:	f1c7 07f0 	rsb	r7, r7, #240	; 0xf0
d0042cb6:	f1c3 03a0 	rsb	r3, r3, #160	; 0xa0
d0042cba:	b22d      	sxth	r5, r5
d0042cbc:	b23f      	sxth	r7, r7
d0042cbe:	fa0f fb83 	sxth.w	fp, r3
d0042cc2:	f7fd febd 	bl	d0040a40 <initTorpedos3D>
d0042cc6:	f7fe fb47 	bl	d0041358 <initAstroids3D>
d0042cca:	f7fd fec1 	bl	d0040a50 <initPills3D>
d0042cce:	ee07 6a90 	vmov	s15, r6
d0042cd2:	eddf 6a08 	vldr	s13, [pc, #32]	; d0042cf4 <main+0x528>
d0042cd6:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d0042cda:	ee07 5a90 	vmov	s15, r5
d0042cde:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0042ce2:	eec6 8a87 	vdiv.f32	s17, s13, s14
d0042ce6:	ee86 8aa7 	vdiv.f32	s16, s13, s15
d0042cea:	e111      	b.n	d0042f10 <main+0x744>
d0042cec:	d0046ec0 	.word	0xd0046ec0
d0042cf0:	d0046fc0 	.word	0xd0046fc0
d0042cf4:	43200000 	.word	0x43200000
d0042cf8:	d0045800 	.word	0xd0045800
d0042cfc:	d0044b94 	.word	0xd0044b94
d0042d00:	9b02      	ldr	r3, [sp, #8]
d0042d02:	3301      	adds	r3, #1
d0042d04:	b2db      	uxtb	r3, r3
d0042d06:	2b07      	cmp	r3, #7
d0042d08:	9302      	str	r3, [sp, #8]
d0042d0a:	d913      	bls.n	d0042d34 <main+0x568>
d0042d0c:	9b03      	ldr	r3, [sp, #12]
d0042d0e:	f8b8 0014 	ldrh.w	r0, [r8, #20]
d0042d12:	f1c3 0201 	rsb	r2, r3, #1
d0042d16:	f012 03ff 	ands.w	r3, r2, #255	; 0xff
d0042d1a:	9303      	str	r3, [sp, #12]
d0042d1c:	f000 8172 	beq.w	d0043004 <main+0x838>
d0042d20:	f8b8 1016 	ldrh.w	r1, [r8, #22]
d0042d24:	b200      	sxth	r0, r0
d0042d26:	2300      	movs	r3, #0
d0042d28:	b209      	sxth	r1, r1
d0042d2a:	3834      	subs	r0, #52	; 0x34
d0042d2c:	9302      	str	r3, [sp, #8]
d0042d2e:	390c      	subs	r1, #12
d0042d30:	f7fd fdbe 	bl	d00408b0 <spawnTorpedo>
d0042d34:	0768      	lsls	r0, r5, #29
d0042d36:	d503      	bpl.n	d0042d40 <main+0x574>
d0042d38:	f1ab 0308 	sub.w	r3, fp, #8
d0042d3c:	fa0f fb83 	sxth.w	fp, r3
d0042d40:	0729      	lsls	r1, r5, #28
d0042d42:	d503      	bpl.n	d0042d4c <main+0x580>
d0042d44:	f10b 0308 	add.w	r3, fp, #8
d0042d48:	fa0f fb83 	sxth.w	fp, r3
d0042d4c:	06ea      	lsls	r2, r5, #27
d0042d4e:	d501      	bpl.n	d0042d54 <main+0x588>
d0042d50:	3f08      	subs	r7, #8
d0042d52:	b23f      	sxth	r7, r7
d0042d54:	06ab      	lsls	r3, r5, #26
d0042d56:	d501      	bpl.n	d0042d5c <main+0x590>
d0042d58:	3708      	adds	r7, #8
d0042d5a:	b23f      	sxth	r7, r7
d0042d5c:	f8b8 2010 	ldrh.w	r2, [r8, #16]
d0042d60:	ea27 77e7 	bic.w	r7, r7, r7, asr #31
d0042d64:	b292      	uxth	r2, r2
d0042d66:	f5c2 72f0 	rsb	r2, r2, #480	; 0x1e0
d0042d6a:	4297      	cmp	r7, r2
d0042d6c:	f340 80ff 	ble.w	d0042f6e <main+0x7a2>
d0042d70:	f8b8 7010 	ldrh.w	r7, [r8, #16]
d0042d74:	f06f 0117 	mvn.w	r1, #23
d0042d78:	f8b8 2012 	ldrh.w	r2, [r8, #18]
d0042d7c:	458b      	cmp	fp, r1
d0042d7e:	f5c7 77f0 	rsb	r7, r7, #480	; 0x1e0
d0042d82:	b292      	uxth	r2, r2
d0042d84:	bfb8      	it	lt
d0042d86:	468b      	movlt	fp, r1
d0042d88:	b23f      	sxth	r7, r7
d0042d8a:	f5c2 72ac 	rsb	r2, r2, #344	; 0x158
d0042d8e:	4593      	cmp	fp, r2
d0042d90:	f300 8117 	bgt.w	d0042fc2 <main+0x7f6>
d0042d94:	4ba0      	ldr	r3, [pc, #640]	; (d0043018 <main+0x84c>)
d0042d96:	ea4f 71eb 	mov.w	r1, fp, asr #31
d0042d9a:	f117 0f4f 	cmn.w	r7, #79	; 0x4f
d0042d9e:	fb83 320b 	smull	r3, r2, r3, fp
d0042da2:	ebc1 02e2 	rsb	r2, r1, r2, asr #3
d0042da6:	b212      	sxth	r2, r2
d0042da8:	f280 80fb 	bge.w	d0042fa2 <main+0x7d6>
d0042dac:	2100      	movs	r1, #0
d0042dae:	2a04      	cmp	r2, #4
d0042db0:	bfa8      	it	ge
d0042db2:	2204      	movge	r2, #4
d0042db4:	4b99      	ldr	r3, [pc, #612]	; (d004301c <main+0x850>)
d0042db6:	eb02 0282 	add.w	r2, r2, r2, lsl #2
d0042dba:	ee07 7a90 	vmov	s15, r7
d0042dbe:	f8a8 7014 	strh.w	r7, [r8, #20]
d0042dc2:	441a      	add	r2, r3
d0042dc4:	f8a8 b016 	strh.w	fp, [r8, #22]
d0042dc8:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d0042dcc:	ee07 ba90 	vmov	s15, fp
d0042dd0:	5c52      	ldrb	r2, [r2, r1]
d0042dd2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0042dd6:	f888 201b 	strb.w	r2, [r8, #27]
d0042dda:	ee27 7a28 	vmul.f32	s14, s14, s17
d0042dde:	7b25      	ldrb	r5, [r4, #12]
d0042de0:	7b60      	ldrb	r0, [r4, #13]
d0042de2:	ee67 7a88 	vmul.f32	s15, s15, s16
d0042de6:	7ba1      	ldrb	r1, [r4, #14]
d0042de8:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0042dec:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
d0042df0:	7be2      	ldrb	r2, [r4, #15]
d0042df2:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0042df6:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
d0042dfa:	ee17 3a10 	vmov	r3, s14
d0042dfe:	ea41 6202 	orr.w	r2, r1, r2, lsl #24
d0042e02:	b21d      	sxth	r5, r3
d0042e04:	ee17 3a90 	vmov	r3, s15
d0042e08:	6812      	ldr	r2, [r2, #0]
d0042e0a:	b21e      	sxth	r6, r3
d0042e0c:	68d2      	ldr	r2, [r2, #12]
d0042e0e:	4790      	blx	r2
d0042e10:	7b22      	ldrb	r2, [r4, #12]
d0042e12:	f894 c00d 	ldrb.w	ip, [r4, #13]
d0042e16:	7ba1      	ldrb	r1, [r4, #14]
d0042e18:	ea42 220c 	orr.w	r2, r2, ip, lsl #8
d0042e1c:	4b80      	ldr	r3, [pc, #512]	; (d0043020 <main+0x854>)
d0042e1e:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
d0042e22:	7be1      	ldrb	r1, [r4, #15]
d0042e24:	eb03 1049 	add.w	r0, r3, r9, lsl #5
d0042e28:	ea42 6201 	orr.w	r2, r2, r1, lsl #24
d0042e2c:	6812      	ldr	r2, [r2, #0]
d0042e2e:	6a12      	ldr	r2, [r2, #32]
d0042e30:	4790      	blx	r2
d0042e32:	f89a 2000 	ldrb.w	r2, [sl]
d0042e36:	f1c2 0201 	rsb	r2, r2, #1
d0042e3a:	b2d2      	uxtb	r2, r2
d0042e3c:	f88a 2000 	strb.w	r2, [sl]
d0042e40:	f89a 2000 	ldrb.w	r2, [sl]
d0042e44:	7b21      	ldrb	r1, [r4, #12]
d0042e46:	f894 c00d 	ldrb.w	ip, [r4, #13]
d0042e4a:	2a00      	cmp	r2, #0
d0042e4c:	f000 8084 	beq.w	d0042f58 <main+0x78c>
d0042e50:	7ba2      	ldrb	r2, [r4, #14]
d0042e52:	ea41 200c 	orr.w	r0, r1, ip, lsl #8
d0042e56:	4b73      	ldr	r3, [pc, #460]	; (d0043024 <main+0x858>)
d0042e58:	f894 e00f 	ldrb.w	lr, [r4, #15]
d0042e5c:	ea40 4c02 	orr.w	ip, r0, r2, lsl #16
d0042e60:	6819      	ldr	r1, [r3, #0]
d0042e62:	4b71      	ldr	r3, [pc, #452]	; (d0043028 <main+0x85c>)
d0042e64:	ea4c 620e 	orr.w	r2, ip, lr, lsl #24
d0042e68:	6818      	ldr	r0, [r3, #0]
d0042e6a:	6812      	ldr	r2, [r2, #0]
d0042e6c:	6a52      	ldr	r2, [r2, #36]	; 0x24
d0042e6e:	4790      	blx	r2
d0042e70:	f894 c00c 	ldrb.w	ip, [r4, #12]
d0042e74:	7b60      	ldrb	r0, [r4, #13]
d0042e76:	7ba1      	ldrb	r1, [r4, #14]
d0042e78:	ea4c 2000 	orr.w	r0, ip, r0, lsl #8
d0042e7c:	7be2      	ldrb	r2, [r4, #15]
d0042e7e:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
d0042e82:	ea41 6202 	orr.w	r2, r1, r2, lsl #24
d0042e86:	6852      	ldr	r2, [r2, #4]
d0042e88:	6812      	ldr	r2, [r2, #0]
d0042e8a:	4790      	blx	r2
d0042e8c:	4631      	mov	r1, r6
d0042e8e:	4628      	mov	r0, r5
d0042e90:	f7fe fa72 	bl	d0041378 <proc_astroids3D>
d0042e94:	4631      	mov	r1, r6
d0042e96:	4628      	mov	r0, r5
d0042e98:	f7fd fde2 	bl	d0040a60 <proc_photo_torps>
d0042e9c:	4631      	mov	r1, r6
d0042e9e:	4628      	mov	r0, r5
d0042ea0:	f7fe fbe6 	bl	d0041670 <procExplodes3d>
d0042ea4:	4631      	mov	r1, r6
d0042ea6:	4628      	mov	r0, r5
d0042ea8:	f7fe f83c 	bl	d0040f24 <procPills3D>
d0042eac:	f7fe fe26 	bl	d0041afc <render3Dstuff>
d0042eb0:	f894 c00c 	ldrb.w	ip, [r4, #12]
d0042eb4:	7b60      	ldrb	r0, [r4, #13]
d0042eb6:	7ba1      	ldrb	r1, [r4, #14]
d0042eb8:	ea4c 2000 	orr.w	r0, ip, r0, lsl #8
d0042ebc:	7be2      	ldrb	r2, [r4, #15]
d0042ebe:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
d0042ec2:	485a      	ldr	r0, [pc, #360]	; (d004302c <main+0x860>)
d0042ec4:	ea41 6202 	orr.w	r2, r1, r2, lsl #24
d0042ec8:	6852      	ldr	r2, [r2, #4]
d0042eca:	6a52      	ldr	r2, [r2, #36]	; 0x24
d0042ecc:	4790      	blx	r2
d0042ece:	f894 c00c 	ldrb.w	ip, [r4, #12]
d0042ed2:	7b62      	ldrb	r2, [r4, #13]
d0042ed4:	f106 0110 	add.w	r1, r6, #16
d0042ed8:	f894 e00e 	ldrb.w	lr, [r4, #14]
d0042edc:	4628      	mov	r0, r5
d0042ede:	ea4c 2602 	orr.w	r6, ip, r2, lsl #8
d0042ee2:	7be2      	ldrb	r2, [r4, #15]
d0042ee4:	ea46 450e 	orr.w	r5, r6, lr, lsl #16
d0042ee8:	ea45 6202 	orr.w	r2, r5, r2, lsl #24
d0042eec:	6812      	ldr	r2, [r2, #0]
d0042eee:	6b12      	ldr	r2, [r2, #48]	; 0x30
d0042ef0:	4790      	blx	r2
d0042ef2:	f7ff faed 	bl	d00424d0 <DrawHUD>
d0042ef6:	7b25      	ldrb	r5, [r4, #12]
d0042ef8:	7b60      	ldrb	r0, [r4, #13]
d0042efa:	7ba1      	ldrb	r1, [r4, #14]
d0042efc:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
d0042f00:	7be2      	ldrb	r2, [r4, #15]
d0042f02:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
d0042f06:	ea41 6202 	orr.w	r2, r1, r2, lsl #24
d0042f0a:	6812      	ldr	r2, [r2, #0]
d0042f0c:	6812      	ldr	r2, [r2, #0]
d0042f0e:	4790      	blx	r2
d0042f10:	f89a 2000 	ldrb.w	r2, [sl]
d0042f14:	b142      	cbz	r2, d0042f28 <main+0x75c>
d0042f16:	f109 0901 	add.w	r9, r9, #1
d0042f1a:	fa5f f989 	uxtb.w	r9, r9
d0042f1e:	f1b9 0f08 	cmp.w	r9, #8
d0042f22:	bf28      	it	cs
d0042f24:	f04f 0900 	movcs.w	r9, #0
d0042f28:	7825      	ldrb	r5, [r4, #0]
d0042f2a:	7860      	ldrb	r0, [r4, #1]
d0042f2c:	78a1      	ldrb	r1, [r4, #2]
d0042f2e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
d0042f32:	78e2      	ldrb	r2, [r4, #3]
d0042f34:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
d0042f38:	ea41 6202 	orr.w	r2, r1, r2, lsl #24
d0042f3c:	6912      	ldr	r2, [r2, #16]
d0042f3e:	4790      	blx	r2
d0042f40:	4b3b      	ldr	r3, [pc, #236]	; (d0043030 <main+0x864>)
d0042f42:	f000 0201 	and.w	r2, r0, #1
d0042f46:	4605      	mov	r5, r0
d0042f48:	701a      	strb	r2, [r3, #0]
d0042f4a:	2a00      	cmp	r2, #0
d0042f4c:	f47f aed8 	bne.w	d0042d00 <main+0x534>
d0042f50:	2210      	movs	r2, #16
d0042f52:	4b37      	ldr	r3, [pc, #220]	; (d0043030 <main+0x864>)
d0042f54:	701a      	strb	r2, [r3, #0]
d0042f56:	e6ed      	b.n	d0042d34 <main+0x568>
d0042f58:	7ba2      	ldrb	r2, [r4, #14]
d0042f5a:	ea41 200c 	orr.w	r0, r1, ip, lsl #8
d0042f5e:	4b32      	ldr	r3, [pc, #200]	; (d0043028 <main+0x85c>)
d0042f60:	f894 e00f 	ldrb.w	lr, [r4, #15]
d0042f64:	ea40 4c02 	orr.w	ip, r0, r2, lsl #16
d0042f68:	6819      	ldr	r1, [r3, #0]
d0042f6a:	4b2e      	ldr	r3, [pc, #184]	; (d0043024 <main+0x858>)
d0042f6c:	e77a      	b.n	d0042e64 <main+0x698>
d0042f6e:	f06f 0117 	mvn.w	r1, #23
d0042f72:	f8b8 2012 	ldrh.w	r2, [r8, #18]
d0042f76:	458b      	cmp	fp, r1
d0042f78:	b292      	uxth	r2, r2
d0042f7a:	bfb8      	it	lt
d0042f7c:	468b      	movlt	fp, r1
d0042f7e:	f5c2 72ac 	rsb	r2, r2, #344	; 0x158
d0042f82:	4593      	cmp	fp, r2
d0042f84:	dd30      	ble.n	d0042fe8 <main+0x81c>
d0042f86:	f8b8 3012 	ldrh.w	r3, [r8, #18]
d0042f8a:	f5c3 73ac 	rsb	r3, r3, #344	; 0x158
d0042f8e:	fa0f fb83 	sxth.w	fp, r3
d0042f92:	4b21      	ldr	r3, [pc, #132]	; (d0043018 <main+0x84c>)
d0042f94:	ea4f 72eb 	mov.w	r2, fp, asr #31
d0042f98:	fb83 310b 	smull	r3, r1, r3, fp
d0042f9c:	ebc2 02e1 	rsb	r2, r2, r1, asr #3
d0042fa0:	b212      	sxth	r2, r2
d0042fa2:	4b24      	ldr	r3, [pc, #144]	; (d0043034 <main+0x868>)
d0042fa4:	17f8      	asrs	r0, r7, #31
d0042fa6:	fb83 3107 	smull	r3, r1, r3, r7
d0042faa:	ebc0 1161 	rsb	r1, r0, r1, asr #5
d0042fae:	b209      	sxth	r1, r1
d0042fb0:	2904      	cmp	r1, #4
d0042fb2:	bfa8      	it	ge
d0042fb4:	2104      	movge	r1, #4
d0042fb6:	f11b 0f2f 	cmn.w	fp, #47	; 0x2f
d0042fba:	f6bf aef8 	bge.w	d0042dae <main+0x5e2>
d0042fbe:	2200      	movs	r2, #0
d0042fc0:	e6f8      	b.n	d0042db4 <main+0x5e8>
d0042fc2:	f8b8 3012 	ldrh.w	r3, [r8, #18]
d0042fc6:	f117 0f4f 	cmn.w	r7, #79	; 0x4f
d0042fca:	f5c3 73ac 	rsb	r3, r3, #344	; 0x158
d0042fce:	fa0f fb83 	sxth.w	fp, r3
d0042fd2:	4b11      	ldr	r3, [pc, #68]	; (d0043018 <main+0x84c>)
d0042fd4:	ea4f 72eb 	mov.w	r2, fp, asr #31
d0042fd8:	fb83 310b 	smull	r3, r1, r3, fp
d0042fdc:	ebc2 02e1 	rsb	r2, r2, r1, asr #3
d0042fe0:	b212      	sxth	r2, r2
d0042fe2:	dade      	bge.n	d0042fa2 <main+0x7d6>
d0042fe4:	2100      	movs	r1, #0
d0042fe6:	e7e6      	b.n	d0042fb6 <main+0x7ea>
d0042fe8:	4b0b      	ldr	r3, [pc, #44]	; (d0043018 <main+0x84c>)
d0042fea:	b2b9      	uxth	r1, r7
d0042fec:	ea4f 72eb 	mov.w	r2, fp, asr #31
d0042ff0:	fb83 300b 	smull	r3, r0, r3, fp
d0042ff4:	4b10      	ldr	r3, [pc, #64]	; (d0043038 <main+0x86c>)
d0042ff6:	ebc2 02e0 	rsb	r2, r2, r0, asr #3
d0042ffa:	fba3 3101 	umull	r3, r1, r3, r1
d0042ffe:	b212      	sxth	r2, r2
d0043000:	0989      	lsrs	r1, r1, #6
d0043002:	e7d5      	b.n	d0042fb0 <main+0x7e4>
d0043004:	f8b8 1016 	ldrh.w	r1, [r8, #22]
d0043008:	b200      	sxth	r0, r0
d004300a:	9302      	str	r3, [sp, #8]
d004300c:	b209      	sxth	r1, r1
d004300e:	380c      	subs	r0, #12
d0043010:	390c      	subs	r1, #12
d0043012:	f7fd fc4d 	bl	d00408b0 <spawnTorpedo>
d0043016:	e68d      	b.n	d0042d34 <main+0x568>
d0043018:	2aaaaaab 	.word	0x2aaaaaab
d004301c:	d004408c 	.word	0xd004408c
d0043020:	d0046ec0 	.word	0xd0046ec0
d0043024:	d0046ea8 	.word	0xd0046ea8
d0043028:	d0046fc0 	.word	0xd0046fc0
d004302c:	d0045800 	.word	0xd0045800
d0043030:	d0044b93 	.word	0xd0044b93
d0043034:	66666667 	.word	0x66666667
d0043038:	cccccccd 	.word	0xcccccccd

d004303c <__errno>:
d004303c:	4b01      	ldr	r3, [pc, #4]	; (d0043044 <__errno+0x8>)
d004303e:	6818      	ldr	r0, [r3, #0]
d0043040:	4770      	bx	lr
d0043042:	bf00      	nop
d0043044:	d00442e0 	.word	0xd00442e0

d0043048 <malloc>:
d0043048:	4b02      	ldr	r3, [pc, #8]	; (d0043054 <malloc+0xc>)
d004304a:	4601      	mov	r1, r0
d004304c:	6818      	ldr	r0, [r3, #0]
d004304e:	f000 b877 	b.w	d0043140 <_malloc_r>
d0043052:	bf00      	nop
d0043054:	d00442e0 	.word	0xd00442e0

d0043058 <free>:
d0043058:	4b02      	ldr	r3, [pc, #8]	; (d0043064 <free+0xc>)
d004305a:	4601      	mov	r1, r0
d004305c:	6818      	ldr	r0, [r3, #0]
d004305e:	f000 b81f 	b.w	d00430a0 <_free_r>
d0043062:	bf00      	nop
d0043064:	d00442e0 	.word	0xd00442e0

d0043068 <memcmp>:
d0043068:	b530      	push	{r4, r5, lr}
d004306a:	3901      	subs	r1, #1
d004306c:	2400      	movs	r4, #0
d004306e:	42a2      	cmp	r2, r4
d0043070:	d101      	bne.n	d0043076 <memcmp+0xe>
d0043072:	2000      	movs	r0, #0
d0043074:	e005      	b.n	d0043082 <memcmp+0x1a>
d0043076:	5d03      	ldrb	r3, [r0, r4]
d0043078:	3401      	adds	r4, #1
d004307a:	5d0d      	ldrb	r5, [r1, r4]
d004307c:	42ab      	cmp	r3, r5
d004307e:	d0f6      	beq.n	d004306e <memcmp+0x6>
d0043080:	1b58      	subs	r0, r3, r5
d0043082:	bd30      	pop	{r4, r5, pc}

d0043084 <memcpy>:
d0043084:	440a      	add	r2, r1
d0043086:	4291      	cmp	r1, r2
d0043088:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d004308c:	d100      	bne.n	d0043090 <memcpy+0xc>
d004308e:	4770      	bx	lr
d0043090:	b510      	push	{r4, lr}
d0043092:	f811 4b01 	ldrb.w	r4, [r1], #1
d0043096:	f803 4f01 	strb.w	r4, [r3, #1]!
d004309a:	4291      	cmp	r1, r2
d004309c:	d1f9      	bne.n	d0043092 <memcpy+0xe>
d004309e:	bd10      	pop	{r4, pc}

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
d004313c:	d0044b98 	.word	0xd0044b98

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
d0043178:	f7fd f80e 	bl	d0040198 <_sbrk_r>
d004317c:	6038      	str	r0, [r7, #0]
d004317e:	4629      	mov	r1, r5
d0043180:	4630      	mov	r0, r6
d0043182:	f7fd f809 	bl	d0040198 <_sbrk_r>
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
d00431e0:	f7fc ffda 	bl	d0040198 <_sbrk_r>
d00431e4:	3001      	adds	r0, #1
d00431e6:	d1dd      	bne.n	d00431a4 <_malloc_r+0x64>
d00431e8:	e7cf      	b.n	d004318a <_malloc_r+0x4a>
d00431ea:	bf00      	nop
d00431ec:	d0044b98 	.word	0xd0044b98
d00431f0:	d0044b9c 	.word	0xd0044b9c

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
d00432ac:	f7ff fecc 	bl	d0043048 <malloc>
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
d0043356:	f7ff fe77 	bl	d0043048 <malloc>
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
d0043380:	d00442e0 	.word	0xd00442e0
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
d00433c8:	d00442e0 	.word	0xd00442e0
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
d0043572:	f7fc fd63 	bl	d004003c <memset>
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
d00435cc:	f7fc fd36 	bl	d004003c <memset>
d00435d0:	4620      	mov	r0, r4
d00435d2:	bd70      	pop	{r4, r5, r6, pc}

d00435d4 <__sfp_lock_acquire>:
d00435d4:	4801      	ldr	r0, [pc, #4]	; (d00435dc <__sfp_lock_acquire+0x8>)
d00435d6:	f000 b8b3 	b.w	d0043740 <__retarget_lock_acquire_recursive>
d00435da:	bf00      	nop
d00435dc:	d0046fcc 	.word	0xd0046fcc

d00435e0 <__sfp_lock_release>:
d00435e0:	4801      	ldr	r0, [pc, #4]	; (d00435e8 <__sfp_lock_release+0x8>)
d00435e2:	f000 b8ae 	b.w	d0043742 <__retarget_lock_release_recursive>
d00435e6:	bf00      	nop
d00435e8:	d0046fcc 	.word	0xd0046fcc

d00435ec <__sinit_lock_acquire>:
d00435ec:	4801      	ldr	r0, [pc, #4]	; (d00435f4 <__sinit_lock_acquire+0x8>)
d00435ee:	f000 b8a7 	b.w	d0043740 <__retarget_lock_acquire_recursive>
d00435f2:	bf00      	nop
d00435f4:	d0046fc7 	.word	0xd0046fc7

d00435f8 <__sinit_lock_release>:
d00435f8:	4801      	ldr	r0, [pc, #4]	; (d0043600 <__sinit_lock_release+0x8>)
d00435fa:	f000 b8a2 	b.w	d0043742 <__retarget_lock_release_recursive>
d00435fe:	bf00      	nop
d0043600:	d0046fc7 	.word	0xd0046fc7

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
d004366c:	d0043fd4 	.word	0xd0043fd4
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
d00436c8:	f7fc fcb8 	bl	d004003c <memset>
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
d00436f8:	d0043fd4 	.word	0xd0043fd4
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
d0043794:	d0046fc8 	.word	0xd0046fc8

d0043798 <__malloc_unlock>:
d0043798:	4801      	ldr	r0, [pc, #4]	; (d00437a0 <__malloc_unlock+0x8>)
d004379a:	f7ff bfd2 	b.w	d0043742 <__retarget_lock_release_recursive>
d004379e:	bf00      	nop
d00437a0:	d0046fc8 	.word	0xd0046fc8

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
d0043804:	f7ff fc3e 	bl	d0043084 <memcpy>
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
d0043dda:	f7fc b997 	b.w	d004010c <_write_r>

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
d0043e18:	f7fc f9b2 	bl	d0040180 <_close>
d0043e1c:	1c43      	adds	r3, r0, #1
d0043e1e:	d102      	bne.n	d0043e26 <_close_r+0x1a>
d0043e20:	682b      	ldr	r3, [r5, #0]
d0043e22:	b103      	cbz	r3, d0043e26 <_close_r+0x1a>
d0043e24:	6023      	str	r3, [r4, #0]
d0043e26:	bd38      	pop	{r3, r4, r5, pc}
d0043e28:	d0046fd0 	.word	0xd0046fd0

d0043e2c <_fstat_r>:
d0043e2c:	b538      	push	{r3, r4, r5, lr}
d0043e2e:	4d07      	ldr	r5, [pc, #28]	; (d0043e4c <_fstat_r+0x20>)
d0043e30:	2300      	movs	r3, #0
d0043e32:	4604      	mov	r4, r0
d0043e34:	4608      	mov	r0, r1
d0043e36:	4611      	mov	r1, r2
d0043e38:	602b      	str	r3, [r5, #0]
d0043e3a:	f7fc f9a5 	bl	d0040188 <_fstat>
d0043e3e:	1c43      	adds	r3, r0, #1
d0043e40:	d102      	bne.n	d0043e48 <_fstat_r+0x1c>
d0043e42:	682b      	ldr	r3, [r5, #0]
d0043e44:	b103      	cbz	r3, d0043e48 <_fstat_r+0x1c>
d0043e46:	6023      	str	r3, [r4, #0]
d0043e48:	bd38      	pop	{r3, r4, r5, pc}
d0043e4a:	bf00      	nop
d0043e4c:	d0046fd0 	.word	0xd0046fd0

d0043e50 <_lseek_r>:
d0043e50:	b538      	push	{r3, r4, r5, lr}
d0043e52:	4d07      	ldr	r5, [pc, #28]	; (d0043e70 <_lseek_r+0x20>)
d0043e54:	4604      	mov	r4, r0
d0043e56:	4608      	mov	r0, r1
d0043e58:	4611      	mov	r1, r2
d0043e5a:	2200      	movs	r2, #0
d0043e5c:	602a      	str	r2, [r5, #0]
d0043e5e:	461a      	mov	r2, r3
d0043e60:	f7fc f998 	bl	d0040194 <_lseek>
d0043e64:	1c43      	adds	r3, r0, #1
d0043e66:	d102      	bne.n	d0043e6e <_lseek_r+0x1e>
d0043e68:	682b      	ldr	r3, [r5, #0]
d0043e6a:	b103      	cbz	r3, d0043e6e <_lseek_r+0x1e>
d0043e6c:	6023      	str	r3, [r4, #0]
d0043e6e:	bd38      	pop	{r3, r4, r5, pc}
d0043e70:	d0046fd0 	.word	0xd0046fd0
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
d0043f8e:	f7ff f879 	bl	d0043084 <memcpy>
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
d0043fb0:	f7fc f8dc 	bl	d004016c <_read>
d0043fb4:	1c43      	adds	r3, r0, #1
d0043fb6:	d102      	bne.n	d0043fbe <_read_r+0x1e>
d0043fb8:	682b      	ldr	r3, [r5, #0]
d0043fba:	b103      	cbz	r3, d0043fbe <_read_r+0x1e>
d0043fbc:	6023      	str	r3, [r4, #0]
d0043fbe:	bd38      	pop	{r3, r4, r5, pc}
d0043fc0:	d0046fd0 	.word	0xd0046fd0

d0043fc4 <_malloc_usable_size_r>:
d0043fc4:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0043fc8:	1f18      	subs	r0, r3, #4
d0043fca:	2b00      	cmp	r3, #0
d0043fcc:	bfbc      	itt	lt
d0043fce:	580b      	ldrlt	r3, [r1, r0]
d0043fd0:	18c0      	addlt	r0, r0, r3
d0043fd2:	4770      	bx	lr

d0043fd4 <_global_impure_ptr>:
d0043fd4:	42e4 d004 4952 4646 0000 0000 4157 4556     .B..RIFF....WAVE
d0043fe4:	0000 0000 6572 2f73 7865 7274 6c61 6669     ....res/extralif
d0043ff4:	2e65 6177 0076 0000 6572 2f73 6966 6572     e.wav...res/fire
d0044004:	2e6d 6177 0076 0000 6572 2f73 6874 7572     m.wav...res/thru
d0044014:	7473 2e32 6177 0076 6572 2f73 6873 6569     st2.wav.res/shie
d0044024:	646c 3273 772e 7661 0000 0000 6572 2f73     lds2.wav....res/
d0044034:	7865 6c70 646f 5f65 6962 2e67 6177 0076     explode_big.wav.
d0044044:	6572 2f73 7865 6c70 646f 5f65 6d73 6c61     res/explode_smal
d0044054:	2e6c 6177 0076 0000 6572 2f73 6f63 6c6c     l.wav...res/coll
d0044064:	6469 2e65 6177 0076 6572 2f73 6473 656c     ide.wav.res/sdle
d0044074:	3176 6d2e 646f 0000 6572 2f73 7574 6e6e     v1.mod..res/tunn
d0044084:	6c65 2e31 6f6d 0064                         el1.mod.

d004408c <shipframetunnel>:
d004408c:	0100 0302 0504 0706 0908 0b0a 0d0c 0f0e     ................
d004409c:	1110 1312 1514 1716 0018 0000 6572 2f73     ............res/
d00440ac:	7361 7274 696f 5f64 616c 6772 5f65 2e31     astroid_large_1.
d00440bc:	7070 0062 6572 2f73 7361 7274 696f 5f64     ppb.res/astroid_
d00440cc:	656d 6964 6d75 315f 702e 6270 0000 0000     medium_1.ppb....
d00440dc:	6572 2f73 7361 7274 696f 5f64 656d 6964     res/astroid_medi
d00440ec:	6d75 325f 702e 6270 0000 0000 6572 2f73     um_2.ppb....res/
d00440fc:	7361 7274 696f 5f64 6d73 6c61 5f6c 2e32     astroid_small_2.
d004410c:	7070 0062 6572 2f73 6873 7069 7372 702e     ppb.res/shiprs.p
d004411c:	6270 0000 6572 2f73 7574 6e6e 6c65 6873     pb..res/tunnelsh
d004412c:	7069 702e 6270 0000 6572 2f73 7562 6c6c     ip.ppb..res/bull
d004413c:	7465 5f73 7974 6570 2e31 7070 0062 0000     ets_type1.ppb...
d004414c:	6572 2f73 6c66 6d61 7365 702e 6270 0000     res/flames.ppb..
d004415c:	6572 2f73 6873 6569 646c 702e 6270 0000     res/shield.ppb..
d004416c:	6572 2f73 6870 746f 6e6f 2e74 7070 0062     res/photont.ppb.
d004417c:	6572 2f73 7865 6c70 646f 2e65 7070 0062     res/explode.ppb.
d004418c:	6572 2f73 6f66 746e 3631 3631 702e 6270     res/font1616.ppb
d004419c:	0000 0000 6572 2f73 6970 6c6c 685f 6165     ....res/pill_hea
d00441ac:	746c 2e68 7070 0062 6572 2f73 6f70 6577     lth.ppb.res/powe
d00441bc:	6872 6165 746c 2e68 7070 0062 4353 524f     rhealth.ppb.SCOR
d00441cc:	3a45 2520 3730 756c 0000 0000 494c 4556     E: %07lu....LIVE
d00441dc:	3a53 2520 756c 0000 4157 4556 3a53 2520     S: %lu..WAVES: %
d00441ec:	756c 0000 3a53 0000 3a48 0000 4c0a 616f     lu..S:..H:...Loa
d00441fc:	6964 676e 5420 6e75 656e 206c 6164 6174     ding Tunnel data
d004420c:	2e2e 0a2e 0000 0000 6572 2f73 6870 746f     ........res/phot
d004421c:	6e6f 772e 7661 0000 6572 2f73 2574 2e75     on.wav..res/t%u.
d004422c:	7070 0a62 0000 0000                         ppb.....

d0044234 <__sf_fake_stderr>:
	...

d0044254 <__sf_fake_stdin>:
	...

d0044274 <__sf_fake_stdout>:
	...
d0044294:	2d23 2b30 0020 6c68 004c 6665 4567 4746     #-0+ .hlL.efgEFG
d00442a4:	3000 3231 3433 3635 3837 4139 4342 4544     .0123456789ABCDE
d00442b4:	0046 3130 3332 3534 3736 3938 6261 6463     F.0123456789abcd
d00442c4:	6665                                         ef.

Disassembly of section .init:

d00442c8 <_init>:
d00442c8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00442ca:	bf00      	nop

Disassembly of section .fini:

d00442cc <_fini>:
d00442cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00442ce:	bf00      	nop
