
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
d004001e:	f001 fc29 	bl	d0041874 <setbuf>
d0040022:	6833      	ldr	r3, [r6, #0]
d0040024:	2100      	movs	r1, #0
d0040026:	68d8      	ldr	r0, [r3, #12]
d0040028:	f001 fc24 	bl	d0041874 <setbuf>
d004002c:	4629      	mov	r1, r5
d004002e:	4620      	mov	r0, r4
d0040030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0040034:	f000 be3c 	b.w	d0040cb0 <main>
d0040038:	d00421a0 	.word	0xd00421a0

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
d0040100:	d0045858 	.word	0xd0045858
d0040104:	d0600000 	.word	0xd0600000
d0040108:	d0042a6c 	.word	0xd0042a6c

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
d0040154:	f001 fac8 	bl	d00416e8 <__errno>
d0040158:	2209      	movs	r2, #9
d004015a:	4603      	mov	r3, r0
d004015c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0040160:	601a      	str	r2, [r3, #0]
d0040162:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0040164:	d0042a44 	.word	0xd0042a44
d0040168:	2001f000 	.word	0x2001f000

d004016c <_read>:
d004016c:	b508      	push	{r3, lr}
d004016e:	f001 fabb 	bl	d00416e8 <__errno>
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
d00401ba:	f001 fa95 	bl	d00416e8 <__errno>
d00401be:	220c      	movs	r2, #12
d00401c0:	4603      	mov	r3, r0
d00401c2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00401c6:	601a      	str	r2, [r3, #0]
d00401c8:	bd10      	pop	{r4, pc}
d00401ca:	bf00      	nop
d00401cc:	d0042a40 	.word	0xd0042a40
d00401d0:	d0045858 	.word	0xd0045858
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
d0040228:	f001 fa6c 	bl	d0041704 <memcmp>
d004022c:	b950      	cbnz	r0, d0040244 <LoadSFX+0x6c>
d004022e:	2204      	movs	r2, #4
d0040230:	492c      	ldr	r1, [pc, #176]	; (d00402e4 <LoadSFX+0x10c>)
d0040232:	a805      	add	r0, sp, #20
d0040234:	f001 fa66 	bl	d0041704 <memcmp>
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
d004026c:	f001 fa42 	bl	d00416f4 <malloc>
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
d00402e0:	d0041efc 	.word	0xd0041efc
d00402e4:	d0041f04 	.word	0xd0041f04

d00402e8 <spawnFlame>:
d00402e8:	4b39      	ldr	r3, [pc, #228]	; (d00403d0 <spawnFlame+0xe8>)
d00402ea:	681b      	ldr	r3, [r3, #0]
d00402ec:	1e5a      	subs	r2, r3, #1
d00402ee:	1c59      	adds	r1, r3, #1
d00402f0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00402f4:	2a00      	cmp	r2, #0
d00402f6:	b084      	sub	sp, #16
d00402f8:	9303      	str	r3, [sp, #12]
d00402fa:	9201      	str	r2, [sp, #4]
d00402fc:	9102      	str	r1, [sp, #8]
d00402fe:	da01      	bge.n	d0040304 <spawnFlame+0x1c>
d0040300:	2223      	movs	r2, #35	; 0x23
d0040302:	9201      	str	r2, [sp, #4]
d0040304:	2b23      	cmp	r3, #35	; 0x23
d0040306:	dd01      	ble.n	d004030c <spawnFlame+0x24>
d0040308:	2300      	movs	r3, #0
d004030a:	9303      	str	r3, [sp, #12]
d004030c:	f8df 80c8 	ldr.w	r8, [pc, #200]	; d00403d8 <spawnFlame+0xf0>
d0040310:	eeb3 6a06 	vmov.f32	s12, #54	; 0x41b00000  22.0
d0040314:	af01      	add	r7, sp, #4
d0040316:	f10d 0e10 	add.w	lr, sp, #16
d004031a:	f8d8 6000 	ldr.w	r6, [r8]
d004031e:	f04f 0a11 	mov.w	sl, #17
d0040322:	4d2c      	ldr	r5, [pc, #176]	; (d00403d4 <spawnFlame+0xec>)
d0040324:	f8df c0b4 	ldr.w	ip, [pc, #180]	; d00403dc <spawnFlame+0xf4>
d0040328:	f8df 90b4 	ldr.w	r9, [pc, #180]	; d00403e0 <spawnFlame+0xf8>
d004032c:	2300      	movs	r3, #0
d004032e:	e001      	b.n	d0040334 <spawnFlame+0x4c>
d0040330:	2b20      	cmp	r3, #32
d0040332:	d044      	beq.n	d00403be <spawnFlame+0xd6>
d0040334:	eb05 1243 	add.w	r2, r5, r3, lsl #5
d0040338:	3301      	adds	r3, #1
d004033a:	7d91      	ldrb	r1, [r2, #22]
d004033c:	f001 00ff 	and.w	r0, r1, #255	; 0xff
d0040340:	2900      	cmp	r1, #0
d0040342:	d1f5      	bne.n	d0040330 <spawnFlame+0x48>
d0040344:	f882 a016 	strb.w	sl, [r2, #22]
d0040348:	ea86 3646 	eor.w	r6, r6, r6, lsl #13
d004034c:	7610      	strb	r0, [r2, #24]
d004034e:	f8bc 3014 	ldrh.w	r3, [ip, #20]
d0040352:	ea86 4656 	eor.w	r6, r6, r6, lsr #17
d0040356:	6838      	ldr	r0, [r7, #0]
d0040358:	b21b      	sxth	r3, r3
d004035a:	f006 010f 	and.w	r1, r6, #15
d004035e:	eb09 04c0 	add.w	r4, r9, r0, lsl #3
d0040362:	3318      	adds	r3, #24
d0040364:	b240      	sxtb	r0, r0
d0040366:	edd4 6a00 	vldr	s13, [r4]
d004036a:	ea86 1646 	eor.w	r6, r6, r6, lsl #5
d004036e:	ee07 3a90 	vmov	s15, r3
d0040372:	ed94 7a01 	vldr	s14, [r4, #4]
d0040376:	ee36 5aa6 	vadd.f32	s10, s13, s13
d004037a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004037e:	ee77 5a07 	vadd.f32	s11, s14, s14
d0040382:	edc2 7a02 	vstr	s15, [r2, #8]
d0040386:	f8bc 3016 	ldrh.w	r3, [ip, #22]
d004038a:	b21b      	sxth	r3, r3
d004038c:	3318      	adds	r3, #24
d004038e:	ee07 3a90 	vmov	s15, r3
d0040392:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040396:	edc2 7a03 	vstr	s15, [r2, #12]
d004039a:	7510      	strb	r0, [r2, #20]
d004039c:	7511      	strb	r1, [r2, #20]
d004039e:	ed82 5a00 	vstr	s10, [r2]
d00403a2:	edc2 5a01 	vstr	s11, [r2, #4]
d00403a6:	edd2 7a02 	vldr	s15, [r2, #8]
d00403aa:	eee6 7ac6 	vfms.f32	s15, s13, s12
d00403ae:	edc2 7a02 	vstr	s15, [r2, #8]
d00403b2:	edd2 7a03 	vldr	s15, [r2, #12]
d00403b6:	eee7 7a06 	vfma.f32	s15, s14, s12
d00403ba:	edc2 7a03 	vstr	s15, [r2, #12]
d00403be:	3704      	adds	r7, #4
d00403c0:	45be      	cmp	lr, r7
d00403c2:	d1b3      	bne.n	d004032c <spawnFlame+0x44>
d00403c4:	f8c8 6000 	str.w	r6, [r8]
d00403c8:	b004      	add	sp, #16
d00403ca:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00403ce:	bf00      	nop
d00403d0:	d0042a4c 	.word	0xd0042a4c
d00403d4:	d0043444 	.word	0xd0043444
d00403d8:	d0042a20 	.word	0xd0042a20
d00403dc:	d00433e0 	.word	0xd00433e0
d00403e0:	d0042000 	.word	0xd0042000

d00403e4 <doFlames>:
d00403e4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00403e6:	2400      	movs	r4, #0
d00403e8:	4d42      	ldr	r5, [pc, #264]	; (d00404f4 <doFlames+0x110>)
d00403ea:	4e43      	ldr	r6, [pc, #268]	; (d00404f8 <doFlames+0x114>)
d00403ec:	ed2d 8b02 	vpush	{d8}
d00403f0:	eddf 8a42 	vldr	s17, [pc, #264]	; d00404fc <doFlames+0x118>
d00403f4:	ed9f 8a42 	vldr	s16, [pc, #264]	; d0040500 <doFlames+0x11c>
d00403f8:	eb05 1244 	add.w	r2, r5, r4, lsl #5
d00403fc:	0163      	lsls	r3, r4, #5
d00403fe:	7d91      	ldrb	r1, [r2, #22]
d0040400:	2900      	cmp	r1, #0
d0040402:	d070      	beq.n	d00404e6 <doFlames+0x102>
d0040404:	7d91      	ldrb	r1, [r2, #22]
d0040406:	eebb 7a04 	vmov.f32	s14, #180	; 0xc1a00000 -20.0
d004040a:	3901      	subs	r1, #1
d004040c:	b2c9      	uxtb	r1, r1
d004040e:	7591      	strb	r1, [r2, #22]
d0040410:	edd2 6a00 	vldr	s13, [r2]
d0040414:	edd2 7a02 	vldr	s15, [r2, #8]
d0040418:	ee77 7ae6 	vsub.f32	s15, s15, s13
d004041c:	edc2 7a02 	vstr	s15, [r2, #8]
d0040420:	edd2 6a01 	vldr	s13, [r2, #4]
d0040424:	edd2 7a03 	vldr	s15, [r2, #12]
d0040428:	ee77 7aa6 	vadd.f32	s15, s15, s13
d004042c:	edc2 7a03 	vstr	s15, [r2, #12]
d0040430:	edd2 7a02 	vldr	s15, [r2, #8]
d0040434:	eef4 7ac7 	vcmpe.f32	s15, s14
d0040438:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004043c:	d501      	bpl.n	d0040442 <doFlames+0x5e>
d004043e:	edc2 8a02 	vstr	s17, [r2, #8]
d0040442:	18ea      	adds	r2, r5, r3
d0040444:	edd2 7a02 	vldr	s15, [r2, #8]
d0040448:	eef4 7ae8 	vcmpe.f32	s15, s17
d004044c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040450:	dd01      	ble.n	d0040456 <doFlames+0x72>
d0040452:	492c      	ldr	r1, [pc, #176]	; (d0040504 <doFlames+0x120>)
d0040454:	6091      	str	r1, [r2, #8]
d0040456:	18ea      	adds	r2, r5, r3
d0040458:	eefb 7a04 	vmov.f32	s15, #180	; 0xc1a00000 -20.0
d004045c:	ed92 7a03 	vldr	s14, [r2, #12]
d0040460:	eeb4 7ae7 	vcmpe.f32	s14, s15
d0040464:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040468:	d501      	bpl.n	d004046e <doFlames+0x8a>
d004046a:	ed82 8a03 	vstr	s16, [r2, #12]
d004046e:	18ea      	adds	r2, r5, r3
d0040470:	edd2 7a03 	vldr	s15, [r2, #12]
d0040474:	eef4 7ac8 	vcmpe.f32	s15, s16
d0040478:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004047c:	dd01      	ble.n	d0040482 <doFlames+0x9e>
d004047e:	4921      	ldr	r1, [pc, #132]	; (d0040504 <doFlames+0x120>)
d0040480:	60d1      	str	r1, [r2, #12]
d0040482:	442b      	add	r3, r5
d0040484:	2102      	movs	r1, #2
d0040486:	edd3 7a02 	vldr	s15, [r3, #8]
d004048a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004048e:	ee17 2a90 	vmov	r2, s15
d0040492:	b212      	sxth	r2, r2
d0040494:	821a      	strh	r2, [r3, #16]
d0040496:	edd3 7a03 	vldr	s15, [r3, #12]
d004049a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d004049e:	ee17 2a90 	vmov	r2, s15
d00404a2:	b212      	sxth	r2, r2
d00404a4:	825a      	strh	r2, [r3, #18]
d00404a6:	8a1a      	ldrh	r2, [r3, #16]
d00404a8:	82b2      	strh	r2, [r6, #20]
d00404aa:	8a5a      	ldrh	r2, [r3, #18]
d00404ac:	82f2      	strh	r2, [r6, #22]
d00404ae:	7131      	strb	r1, [r6, #4]
d00404b0:	7e1a      	ldrb	r2, [r3, #24]
d00404b2:	b2d2      	uxtb	r2, r2
d00404b4:	71b2      	strb	r2, [r6, #6]
d00404b6:	7e1a      	ldrb	r2, [r3, #24]
d00404b8:	3205      	adds	r2, #5
d00404ba:	b2d2      	uxtb	r2, r2
d00404bc:	761a      	strb	r2, [r3, #24]
d00404be:	7e1a      	ldrb	r2, [r3, #24]
d00404c0:	2a64      	cmp	r2, #100	; 0x64
d00404c2:	d901      	bls.n	d00404c8 <doFlames+0xe4>
d00404c4:	2264      	movs	r2, #100	; 0x64
d00404c6:	761a      	strb	r2, [r3, #24]
d00404c8:	4a0f      	ldr	r2, [pc, #60]	; (d0040508 <doFlames+0x124>)
d00404ca:	4630      	mov	r0, r6
d00404cc:	7b13      	ldrb	r3, [r2, #12]
d00404ce:	7b57      	ldrb	r7, [r2, #13]
d00404d0:	7b91      	ldrb	r1, [r2, #14]
d00404d2:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
d00404d6:	7bd2      	ldrb	r2, [r2, #15]
d00404d8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00404dc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00404e0:	685b      	ldr	r3, [r3, #4]
d00404e2:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00404e4:	4798      	blx	r3
d00404e6:	3401      	adds	r4, #1
d00404e8:	2c20      	cmp	r4, #32
d00404ea:	d185      	bne.n	d00403f8 <doFlames+0x14>
d00404ec:	ecbd 8b02 	vpop	{d8}
d00404f0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00404f2:	bf00      	nop
d00404f4:	d0043444 	.word	0xd0043444
d00404f8:	d0043300 	.word	0xd0043300
d00404fc:	43f00000 	.word	0x43f00000
d0040500:	43a00000 	.word	0x43a00000
d0040504:	c1a00000 	.word	0xc1a00000
d0040508:	2001f000 	.word	0x2001f000

d004050c <initAstroids>:
d004050c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040510:	2000      	movs	r0, #0
d0040512:	f8df a1e4 	ldr.w	sl, [pc, #484]	; d00406f8 <initAstroids+0x1ec>
d0040516:	4f73      	ldr	r7, [pc, #460]	; (d00406e4 <initAstroids+0x1d8>)
d0040518:	b083      	sub	sp, #12
d004051a:	f8da 3000 	ldr.w	r3, [sl]
d004051e:	4684      	mov	ip, r0
d0040520:	463e      	mov	r6, r7
d0040522:	4a71      	ldr	r2, [pc, #452]	; (d00406e8 <initAstroids+0x1dc>)
d0040524:	f04f 0b18 	mov.w	fp, #24
d0040528:	ea83 3143 	eor.w	r1, r3, r3, lsl #13
d004052c:	4c6f      	ldr	r4, [pc, #444]	; (d00406ec <initAstroids+0x1e0>)
d004052e:	f240 1879 	movw	r8, #377	; 0x179
d0040532:	eb00 0e40 	add.w	lr, r0, r0, lsl #1
d0040536:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d004053a:	f8c6 c000 	str.w	ip, [r6]
d004053e:	f8c6 c004 	str.w	ip, [r6, #4]
d0040542:	ea81 1141 	eor.w	r1, r1, r1, lsl #5
d0040546:	f8c6 c008 	str.w	ip, [r6, #8]
d004054a:	f8c6 c00c 	str.w	ip, [r6, #12]
d004054e:	fba4 4501 	umull	r4, r5, r4, r1
d0040552:	ea81 3341 	eor.w	r3, r1, r1, lsl #13
d0040556:	f240 2419 	movw	r4, #537	; 0x219
d004055a:	f8c6 c010 	str.w	ip, [r6, #16]
d004055e:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0040562:	f8c6 c014 	str.w	ip, [r6, #20]
d0040566:	0a2d      	lsrs	r5, r5, #8
d0040568:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d004056c:	fb04 1515 	mls	r5, r4, r5, r1
d0040570:	495f      	ldr	r1, [pc, #380]	; (d00406f0 <initAstroids+0x1e4>)
d0040572:	fba1 1403 	umull	r1, r4, r1, r3
d0040576:	3d3c      	subs	r5, #60	; 0x3c
d0040578:	1b19      	subs	r1, r3, r4
d004057a:	b22d      	sxth	r5, r5
d004057c:	eb04 0151 	add.w	r1, r4, r1, lsr #1
d0040580:	f827 503e 	strh.w	r5, [r7, lr, lsl #3]
d0040584:	eb07 0ece 	add.w	lr, r7, lr, lsl #3
d0040588:	0a09      	lsrs	r1, r1, #8
d004058a:	4674      	mov	r4, lr
d004058c:	0045      	lsls	r5, r0, #1
d004058e:	fb08 3111 	mls	r1, r8, r1, r3
d0040592:	393c      	subs	r1, #60	; 0x3c
d0040594:	b209      	sxth	r1, r1
d0040596:	f8ae 1002 	strh.w	r1, [lr, #2]
d004059a:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d004059e:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d00405a2:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d00405a6:	fba2 e103 	umull	lr, r1, r2, r3
d00405aa:	eba3 0e01 	sub.w	lr, r3, r1
d00405ae:	eb01 015e 	add.w	r1, r1, lr, lsr #1
d00405b2:	0889      	lsrs	r1, r1, #2
d00405b4:	ebc1 01c1 	rsb	r1, r1, r1, lsl #3
d00405b8:	1a59      	subs	r1, r3, r1
d00405ba:	3903      	subs	r1, #3
d00405bc:	b209      	sxth	r1, r1
d00405be:	80a1      	strh	r1, [r4, #4]
d00405c0:	88a1      	ldrh	r1, [r4, #4]
d00405c2:	b209      	sxth	r1, r1
d00405c4:	2900      	cmp	r1, #0
d00405c6:	d0e8      	beq.n	d004059a <initAstroids+0x8e>
d00405c8:	182c      	adds	r4, r5, r0
d00405ca:	eb07 04c4 	add.w	r4, r7, r4, lsl #3
d00405ce:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d00405d2:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d00405d6:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d00405da:	fba2 e103 	umull	lr, r1, r2, r3
d00405de:	eba3 0e01 	sub.w	lr, r3, r1
d00405e2:	eb01 015e 	add.w	r1, r1, lr, lsr #1
d00405e6:	0889      	lsrs	r1, r1, #2
d00405e8:	ebc1 01c1 	rsb	r1, r1, r1, lsl #3
d00405ec:	1a59      	subs	r1, r3, r1
d00405ee:	3903      	subs	r1, #3
d00405f0:	b209      	sxth	r1, r1
d00405f2:	80e1      	strh	r1, [r4, #6]
d00405f4:	88e1      	ldrh	r1, [r4, #6]
d00405f6:	b209      	sxth	r1, r1
d00405f8:	2900      	cmp	r1, #0
d00405fa:	d0e8      	beq.n	d00405ce <initAstroids+0xc2>
d00405fc:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d0040600:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0040604:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0040608:	f003 0103 	and.w	r1, r3, #3
d004060c:	f8ca 3000 	str.w	r3, [sl]
d0040610:	7321      	strb	r1, [r4, #12]
d0040612:	7b21      	ldrb	r1, [r4, #12]
d0040614:	b929      	cbnz	r1, d0040622 <initAstroids+0x116>
d0040616:	f04f 0160 	mov.w	r1, #96	; 0x60
d004061a:	8161      	strh	r1, [r4, #10]
d004061c:	8121      	strh	r1, [r4, #8]
d004061e:	f884 b010 	strb.w	fp, [r4, #16]
d0040622:	1829      	adds	r1, r5, r0
d0040624:	eb07 01c1 	add.w	r1, r7, r1, lsl #3
d0040628:	7b0c      	ldrb	r4, [r1, #12]
d004062a:	2c01      	cmp	r4, #1
d004062c:	d104      	bne.n	d0040638 <initAstroids+0x12c>
d004062e:	2440      	movs	r4, #64	; 0x40
d0040630:	814c      	strh	r4, [r1, #10]
d0040632:	810c      	strh	r4, [r1, #8]
d0040634:	f881 b010 	strb.w	fp, [r1, #16]
d0040638:	1829      	adds	r1, r5, r0
d004063a:	eb07 01c1 	add.w	r1, r7, r1, lsl #3
d004063e:	7b0c      	ldrb	r4, [r1, #12]
d0040640:	2c02      	cmp	r4, #2
d0040642:	d104      	bne.n	d004064e <initAstroids+0x142>
d0040644:	2440      	movs	r4, #64	; 0x40
d0040646:	814c      	strh	r4, [r1, #10]
d0040648:	810c      	strh	r4, [r1, #8]
d004064a:	f881 b010 	strb.w	fp, [r1, #16]
d004064e:	1829      	adds	r1, r5, r0
d0040650:	eb07 01c1 	add.w	r1, r7, r1, lsl #3
d0040654:	7b0c      	ldrb	r4, [r1, #12]
d0040656:	2c03      	cmp	r4, #3
d0040658:	d106      	bne.n	d0040668 <initAstroids+0x15c>
d004065a:	2420      	movs	r4, #32
d004065c:	f04f 0e10 	mov.w	lr, #16
d0040660:	814c      	strh	r4, [r1, #10]
d0040662:	810c      	strh	r4, [r1, #8]
d0040664:	f881 e010 	strb.w	lr, [r1, #16]
d0040668:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d004066c:	4405      	add	r5, r0
d004066e:	3001      	adds	r0, #1
d0040670:	3618      	adds	r6, #24
d0040672:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0040676:	eb07 05c5 	add.w	r5, r7, r5, lsl #3
d004067a:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d004067e:	7c2c      	ldrb	r4, [r5, #16]
d0040680:	9300      	str	r3, [sp, #0]
d0040682:	9900      	ldr	r1, [sp, #0]
d0040684:	4623      	mov	r3, r4
d0040686:	4c1b      	ldr	r4, [pc, #108]	; (d00406f4 <initAstroids+0x1e8>)
d0040688:	ea81 3141 	eor.w	r1, r1, r1, lsl #13
d004068c:	9301      	str	r3, [sp, #4]
d004068e:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d0040692:	ea81 1141 	eor.w	r1, r1, r1, lsl #5
d0040696:	fba4 4801 	umull	r4, r8, r4, r1
d004069a:	9c00      	ldr	r4, [sp, #0]
d004069c:	f028 0e01 	bic.w	lr, r8, #1
d00406a0:	fbb4 f9f3 	udiv	r9, r4, r3
d00406a4:	eb0e 0e58 	add.w	lr, lr, r8, lsr #1
d00406a8:	461c      	mov	r4, r3
d00406aa:	9b00      	ldr	r3, [sp, #0]
d00406ac:	fb09 3414 	mls	r4, r9, r4, r3
d00406b0:	ea81 3341 	eor.w	r3, r1, r1, lsl #13
d00406b4:	eba1 010e 	sub.w	r1, r1, lr
d00406b8:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d00406bc:	3101      	adds	r1, #1
d00406be:	b264      	sxtb	r4, r4
d00406c0:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d00406c4:	b2c9      	uxtb	r1, r1
d00406c6:	736c      	strb	r4, [r5, #13]
d00406c8:	f8ca 3000 	str.w	r3, [sl]
d00406cc:	73a9      	strb	r1, [r5, #14]
d00406ce:	07d9      	lsls	r1, r3, #31
d00406d0:	bf54      	ite	pl
d00406d2:	21ff      	movpl	r1, #255	; 0xff
d00406d4:	2101      	movmi	r1, #1
d00406d6:	2808      	cmp	r0, #8
d00406d8:	7469      	strb	r1, [r5, #17]
d00406da:	f47f af25 	bne.w	d0040528 <initAstroids+0x1c>
d00406de:	b003      	add	sp, #12
d00406e0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00406e4:	d0043320 	.word	0xd0043320
d00406e8:	24924925 	.word	0x24924925
d00406ec:	7a0a7ce7 	.word	0x7a0a7ce7
d00406f0:	5babcc65 	.word	0x5babcc65
d00406f4:	aaaaaaab 	.word	0xaaaaaaab
d00406f8:	d0042a20 	.word	0xd0042a20

d00406fc <proc_astroids>:
d00406fc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040700:	2300      	movs	r3, #0
d0040702:	b083      	sub	sp, #12
d0040704:	4f6f      	ldr	r7, [pc, #444]	; (d00408c4 <proc_astroids+0x1c8>)
d0040706:	4e70      	ldr	r6, [pc, #448]	; (d00408c8 <proc_astroids+0x1cc>)
d0040708:	f8df b1cc 	ldr.w	fp, [pc, #460]	; d00408d8 <proc_astroids+0x1dc>
d004070c:	4d6f      	ldr	r5, [pc, #444]	; (d00408cc <proc_astroids+0x1d0>)
d004070e:	9300      	str	r3, [sp, #0]
d0040710:	9a00      	ldr	r2, [sp, #0]
d0040712:	eb02 0342 	add.w	r3, r2, r2, lsl #1
d0040716:	0051      	lsls	r1, r2, #1
d0040718:	eb07 03c3 	add.w	r3, r7, r3, lsl #3
d004071c:	7b1a      	ldrb	r2, [r3, #12]
d004071e:	7bd8      	ldrb	r0, [r3, #15]
d0040720:	b2d2      	uxtb	r2, r2
d0040722:	3001      	adds	r0, #1
d0040724:	b2c0      	uxtb	r0, r0
d0040726:	73d8      	strb	r0, [r3, #15]
d0040728:	7bdc      	ldrb	r4, [r3, #15]
d004072a:	7b98      	ldrb	r0, [r3, #14]
d004072c:	4284      	cmp	r4, r0
d004072e:	d91a      	bls.n	d0040766 <proc_astroids+0x6a>
d0040730:	f04f 0000 	mov.w	r0, #0
d0040734:	73d8      	strb	r0, [r3, #15]
d0040736:	7c5c      	ldrb	r4, [r3, #17]
d0040738:	7b58      	ldrb	r0, [r3, #13]
d004073a:	4420      	add	r0, r4
d004073c:	b240      	sxtb	r0, r0
d004073e:	7358      	strb	r0, [r3, #13]
d0040740:	7b58      	ldrb	r0, [r3, #13]
d0040742:	0600      	lsls	r0, r0, #24
d0040744:	d503      	bpl.n	d004074e <proc_astroids+0x52>
d0040746:	7c18      	ldrb	r0, [r3, #16]
d0040748:	3801      	subs	r0, #1
d004074a:	b240      	sxtb	r0, r0
d004074c:	7358      	strb	r0, [r3, #13]
d004074e:	9b00      	ldr	r3, [sp, #0]
d0040750:	18cb      	adds	r3, r1, r3
d0040752:	eb07 03c3 	add.w	r3, r7, r3, lsl #3
d0040756:	7c1c      	ldrb	r4, [r3, #16]
d0040758:	7b58      	ldrb	r0, [r3, #13]
d004075a:	b240      	sxtb	r0, r0
d004075c:	4284      	cmp	r4, r0
d004075e:	dc02      	bgt.n	d0040766 <proc_astroids+0x6a>
d0040760:	f04f 0000 	mov.w	r0, #0
d0040764:	7358      	strb	r0, [r3, #13]
d0040766:	9b00      	ldr	r3, [sp, #0]
d0040768:	18c8      	adds	r0, r1, r3
d004076a:	eb07 04c0 	add.w	r4, r7, r0, lsl #3
d004076e:	f8b4 c004 	ldrh.w	ip, [r4, #4]
d0040772:	f837 3030 	ldrh.w	r3, [r7, r0, lsl #3]
d0040776:	4463      	add	r3, ip
d0040778:	b21b      	sxth	r3, r3
d004077a:	f827 3030 	strh.w	r3, [r7, r0, lsl #3]
d004077e:	f8b4 c006 	ldrh.w	ip, [r4, #6]
d0040782:	8863      	ldrh	r3, [r4, #2]
d0040784:	4463      	add	r3, ip
d0040786:	b21b      	sxth	r3, r3
d0040788:	8063      	strh	r3, [r4, #2]
d004078a:	f837 3030 	ldrh.w	r3, [r7, r0, lsl #3]
d004078e:	b21b      	sxth	r3, r3
d0040790:	f5b3 7ff0 	cmp.w	r3, #480	; 0x1e0
d0040794:	dd04      	ble.n	d00407a0 <proc_astroids+0xa4>
d0040796:	8923      	ldrh	r3, [r4, #8]
d0040798:	425b      	negs	r3, r3
d004079a:	b21b      	sxth	r3, r3
d004079c:	f827 3030 	strh.w	r3, [r7, r0, lsl #3]
d00407a0:	9b00      	ldr	r3, [sp, #0]
d00407a2:	18cb      	adds	r3, r1, r3
d00407a4:	eb07 03c3 	add.w	r3, r7, r3, lsl #3
d00407a8:	8858      	ldrh	r0, [r3, #2]
d00407aa:	b200      	sxth	r0, r0
d00407ac:	f5b0 7fa0 	cmp.w	r0, #320	; 0x140
d00407b0:	dd03      	ble.n	d00407ba <proc_astroids+0xbe>
d00407b2:	8958      	ldrh	r0, [r3, #10]
d00407b4:	4240      	negs	r0, r0
d00407b6:	b200      	sxth	r0, r0
d00407b8:	8058      	strh	r0, [r3, #2]
d00407ba:	9b00      	ldr	r3, [sp, #0]
d00407bc:	18cc      	adds	r4, r1, r3
d00407be:	eb07 03c4 	add.w	r3, r7, r4, lsl #3
d00407c2:	f837 0034 	ldrh.w	r0, [r7, r4, lsl #3]
d00407c6:	891b      	ldrh	r3, [r3, #8]
d00407c8:	b200      	sxth	r0, r0
d00407ca:	b21b      	sxth	r3, r3
d00407cc:	425b      	negs	r3, r3
d00407ce:	4298      	cmp	r0, r3
d00407d0:	da03      	bge.n	d00407da <proc_astroids+0xde>
d00407d2:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d00407d6:	f827 3034 	strh.w	r3, [r7, r4, lsl #3]
d00407da:	9b00      	ldr	r3, [sp, #0]
d00407dc:	18c8      	adds	r0, r1, r3
d00407de:	eb07 00c0 	add.w	r0, r7, r0, lsl #3
d00407e2:	8844      	ldrh	r4, [r0, #2]
d00407e4:	8943      	ldrh	r3, [r0, #10]
d00407e6:	b224      	sxth	r4, r4
d00407e8:	b21b      	sxth	r3, r3
d00407ea:	425b      	negs	r3, r3
d00407ec:	429c      	cmp	r4, r3
d00407ee:	da02      	bge.n	d00407f6 <proc_astroids+0xfa>
d00407f0:	f44f 73a0 	mov.w	r3, #320	; 0x140
d00407f4:	8043      	strh	r3, [r0, #2]
d00407f6:	9b00      	ldr	r3, [sp, #0]
d00407f8:	0150      	lsls	r0, r2, #5
d00407fa:	4c35      	ldr	r4, [pc, #212]	; (d00408d0 <proc_astroids+0x1d4>)
d00407fc:	f04f 0801 	mov.w	r8, #1
d0040800:	4419      	add	r1, r3
d0040802:	9001      	str	r0, [sp, #4]
d0040804:	eb04 1342 	add.w	r3, r4, r2, lsl #5
d0040808:	eb07 00c1 	add.w	r0, r7, r1, lsl #3
d004080c:	469a      	mov	sl, r3
d004080e:	4699      	mov	r9, r3
d0040810:	7b44      	ldrb	r4, [r0, #13]
d0040812:	761c      	strb	r4, [r3, #24]
d0040814:	f837 1031 	ldrh.w	r1, [r7, r1, lsl #3]
d0040818:	4c2e      	ldr	r4, [pc, #184]	; (d00408d4 <proc_astroids+0x1d8>)
d004081a:	8299      	strh	r1, [r3, #20]
d004081c:	8841      	ldrh	r1, [r0, #2]
d004081e:	82d9      	strh	r1, [r3, #22]
d0040820:	7c81      	ldrb	r1, [r0, #18]
d0040822:	b2c9      	uxtb	r1, r1
d0040824:	7119      	strb	r1, [r3, #4]
d0040826:	7d01      	ldrb	r1, [r0, #20]
d0040828:	b2c9      	uxtb	r1, r1
d004082a:	7199      	strb	r1, [r3, #6]
d004082c:	7da3      	ldrb	r3, [r4, #22]
d004082e:	4629      	mov	r1, r5
d0040830:	4650      	mov	r0, sl
d0040832:	b313      	cbz	r3, d004087a <proc_astroids+0x17e>
d0040834:	f9b4 c010 	ldrsh.w	ip, [r4, #16]
d0040838:	f9b4 2012 	ldrsh.w	r2, [r4, #18]
d004083c:	7d23      	ldrb	r3, [r4, #20]
d004083e:	f8a5 c014 	strh.w	ip, [r5, #20]
d0040842:	82ea      	strh	r2, [r5, #22]
d0040844:	762b      	strb	r3, [r5, #24]
d0040846:	f89b e00c 	ldrb.w	lr, [fp, #12]
d004084a:	f89b c00d 	ldrb.w	ip, [fp, #13]
d004084e:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0040852:	ea4e 2c0c 	orr.w	ip, lr, ip, lsl #8
d0040856:	f89b 300f 	ldrb.w	r3, [fp, #15]
d004085a:	ea4c 4202 	orr.w	r2, ip, r2, lsl #16
d004085e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0040862:	685b      	ldr	r3, [r3, #4]
d0040864:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d0040866:	4798      	blx	r3
d0040868:	2802      	cmp	r0, #2
d004086a:	d106      	bne.n	d004087a <proc_astroids+0x17e>
d004086c:	23a8      	movs	r3, #168	; 0xa8
d004086e:	f889 8004 	strb.w	r8, [r9, #4]
d0040872:	f884 8016 	strb.w	r8, [r4, #22]
d0040876:	f889 3005 	strb.w	r3, [r9, #5]
d004087a:	341c      	adds	r4, #28
d004087c:	42b4      	cmp	r4, r6
d004087e:	d1d5      	bne.n	d004082c <proc_astroids+0x130>
d0040880:	9a00      	ldr	r2, [sp, #0]
d0040882:	4650      	mov	r0, sl
d0040884:	f89b 100c 	ldrb.w	r1, [fp, #12]
d0040888:	3201      	adds	r2, #1
d004088a:	f89b 300d 	ldrb.w	r3, [fp, #13]
d004088e:	9200      	str	r2, [sp, #0]
d0040890:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0040894:	f89b 200e 	ldrb.w	r2, [fp, #14]
d0040898:	f89b 300f 	ldrb.w	r3, [fp, #15]
d004089c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00408a0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00408a4:	685b      	ldr	r3, [r3, #4]
d00408a6:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00408a8:	4798      	blx	r3
d00408aa:	4909      	ldr	r1, [pc, #36]	; (d00408d0 <proc_astroids+0x1d4>)
d00408ac:	9b01      	ldr	r3, [sp, #4]
d00408ae:	9a00      	ldr	r2, [sp, #0]
d00408b0:	440b      	add	r3, r1
d00408b2:	f04f 0100 	mov.w	r1, #0
d00408b6:	2a08      	cmp	r2, #8
d00408b8:	7119      	strb	r1, [r3, #4]
d00408ba:	f47f af29 	bne.w	d0040710 <proc_astroids+0x14>
d00408be:	b003      	add	sp, #12
d00408c0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00408c4:	d0043320 	.word	0xd0043320
d00408c8:	d0042eb0 	.word	0xd0042eb0
d00408cc:	d00432c0 	.word	0xd00432c0
d00408d0:	d0042a80 	.word	0xd0042a80
d00408d4:	d0042b30 	.word	0xd0042b30
d00408d8:	2001f000 	.word	0x2001f000

d00408dc <ShipUpdate>:
d00408dc:	4a52      	ldr	r2, [pc, #328]	; (d0040a28 <ShipUpdate+0x14c>)
d00408de:	7813      	ldrb	r3, [r2, #0]
d00408e0:	3301      	adds	r3, #1
d00408e2:	b25b      	sxtb	r3, r3
d00408e4:	2b01      	cmp	r3, #1
d00408e6:	7013      	strb	r3, [r2, #0]
d00408e8:	f340 808b 	ble.w	d0040a02 <ShipUpdate+0x126>
d00408ec:	2300      	movs	r3, #0
d00408ee:	06c1      	lsls	r1, r0, #27
d00408f0:	7013      	strb	r3, [r2, #0]
d00408f2:	4a4e      	ldr	r2, [pc, #312]	; (d0040a2c <ShipUpdate+0x150>)
d00408f4:	6813      	ldr	r3, [r2, #0]
d00408f6:	bf44      	itt	mi
d00408f8:	f103 33ff 	addmi.w	r3, r3, #4294967295	; 0xffffffff
d00408fc:	6013      	strmi	r3, [r2, #0]
d00408fe:	0681      	lsls	r1, r0, #26
d0040900:	d501      	bpl.n	d0040906 <ShipUpdate+0x2a>
d0040902:	3301      	adds	r3, #1
d0040904:	6013      	str	r3, [r2, #0]
d0040906:	2b23      	cmp	r3, #35	; 0x23
d0040908:	dc5a      	bgt.n	d00409c0 <ShipUpdate+0xe4>
d004090a:	2b00      	cmp	r3, #0
d004090c:	f280 8083 	bge.w	d0040a16 <ShipUpdate+0x13a>
d0040910:	2323      	movs	r3, #35	; 0x23
d0040912:	ed9f 7a47 	vldr	s14, [pc, #284]	; d0040a30 <ShipUpdate+0x154>
d0040916:	eddf 7a47 	vldr	s15, [pc, #284]	; d0040a34 <ShipUpdate+0x158>
d004091a:	6013      	str	r3, [r2, #0]
d004091c:	0743      	lsls	r3, r0, #29
d004091e:	d557      	bpl.n	d00409d0 <ShipUpdate+0xf4>
d0040920:	eef5 6a00 	vmov.f32	s13, #80	; 0x3e800000  0.250
d0040924:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0040928:	ee67 6a26 	vmul.f32	s13, s14, s13
d004092c:	4942      	ldr	r1, [pc, #264]	; (d0040a38 <ShipUpdate+0x15c>)
d004092e:	eeb3 6a00 	vmov.f32	s12, #48	; 0x41800000  16.0
d0040932:	4842      	ldr	r0, [pc, #264]	; (d0040a3c <ShipUpdate+0x160>)
d0040934:	ed91 7a00 	vldr	s14, [r1]
d0040938:	edd0 5a00 	vldr	s11, [r0]
d004093c:	ee37 7a66 	vsub.f32	s14, s14, s13
d0040940:	ee77 7aa5 	vadd.f32	s15, s15, s11
d0040944:	ee67 6a07 	vmul.f32	s13, s14, s14
d0040948:	eee7 6aa7 	vfma.f32	s13, s15, s15
d004094c:	eef4 6ac6 	vcmpe.f32	s13, s12
d0040950:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040954:	dd09      	ble.n	d004096a <ShipUpdate+0x8e>
d0040956:	eeb1 6ae6 	vsqrt.f32	s12, s13
d004095a:	eef1 5a00 	vmov.f32	s11, #16	; 0x40800000  4.0
d004095e:	eec5 6a86 	vdiv.f32	s13, s11, s12
d0040962:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0040966:	ee27 7a26 	vmul.f32	s14, s14, s13
d004096a:	4a35      	ldr	r2, [pc, #212]	; (d0040a40 <ShipUpdate+0x164>)
d004096c:	ed9f 5a35 	vldr	s10, [pc, #212]	; d0040a44 <ShipUpdate+0x168>
d0040970:	ed92 6a00 	vldr	s12, [r2]
d0040974:	4b34      	ldr	r3, [pc, #208]	; (d0040a48 <ShipUpdate+0x16c>)
d0040976:	ee37 6a86 	vadd.f32	s12, s15, s12
d004097a:	eddf 5a34 	vldr	s11, [pc, #208]	; d0040a4c <ShipUpdate+0x170>
d004097e:	edd3 6a00 	vldr	s13, [r3]
d0040982:	ee67 7aa5 	vmul.f32	s15, s15, s11
d0040986:	eeb4 6ac5 	vcmpe.f32	s12, s10
d004098a:	ed82 6a00 	vstr	s12, [r2]
d004098e:	ee77 6a26 	vadd.f32	s13, s14, s13
d0040992:	ee27 7a25 	vmul.f32	s14, s14, s11
d0040996:	edc0 7a00 	vstr	s15, [r0]
d004099a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004099e:	edc3 6a00 	vstr	s13, [r3]
d00409a2:	ed81 7a00 	vstr	s14, [r1]
d00409a6:	d522      	bpl.n	d00409ee <ShipUpdate+0x112>
d00409a8:	4929      	ldr	r1, [pc, #164]	; (d0040a50 <ShipUpdate+0x174>)
d00409aa:	6011      	str	r1, [r2, #0]
d00409ac:	eddf 7a25 	vldr	s15, [pc, #148]	; d0040a44 <ShipUpdate+0x168>
d00409b0:	eef4 6ae7 	vcmpe.f32	s13, s15
d00409b4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00409b8:	d50f      	bpl.n	d00409da <ShipUpdate+0xfe>
d00409ba:	4a26      	ldr	r2, [pc, #152]	; (d0040a54 <ShipUpdate+0x178>)
d00409bc:	601a      	str	r2, [r3, #0]
d00409be:	4770      	bx	lr
d00409c0:	2300      	movs	r3, #0
d00409c2:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d00409c6:	eddf 7a24 	vldr	s15, [pc, #144]	; d0040a58 <ShipUpdate+0x17c>
d00409ca:	6013      	str	r3, [r2, #0]
d00409cc:	0743      	lsls	r3, r0, #29
d00409ce:	d4a7      	bmi.n	d0040920 <ShipUpdate+0x44>
d00409d0:	eddf 6a21 	vldr	s13, [pc, #132]	; d0040a58 <ShipUpdate+0x17c>
d00409d4:	eef0 7a66 	vmov.f32	s15, s13
d00409d8:	e7a8      	b.n	d004092c <ShipUpdate+0x50>
d00409da:	ed9f 7a20 	vldr	s14, [pc, #128]	; d0040a5c <ShipUpdate+0x180>
d00409de:	eef4 6ac7 	vcmpe.f32	s13, s14
d00409e2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00409e6:	bfc8      	it	gt
d00409e8:	edc3 7a00 	vstrgt	s15, [r3]
d00409ec:	4770      	bx	lr
d00409ee:	eddf 7a1c 	vldr	s15, [pc, #112]	; d0040a60 <ShipUpdate+0x184>
d00409f2:	eeb4 6ae7 	vcmpe.f32	s12, s15
d00409f6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00409fa:	bfc8      	it	gt
d00409fc:	ed82 5a00 	vstrgt	s10, [r2]
d0040a00:	e7d4      	b.n	d00409ac <ShipUpdate+0xd0>
d0040a02:	4a0a      	ldr	r2, [pc, #40]	; (d0040a2c <ShipUpdate+0x150>)
d0040a04:	4b17      	ldr	r3, [pc, #92]	; (d0040a64 <ShipUpdate+0x188>)
d0040a06:	6812      	ldr	r2, [r2, #0]
d0040a08:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
d0040a0c:	edd3 7a00 	vldr	s15, [r3]
d0040a10:	ed93 7a01 	vldr	s14, [r3, #4]
d0040a14:	e782      	b.n	d004091c <ShipUpdate+0x40>
d0040a16:	4a13      	ldr	r2, [pc, #76]	; (d0040a64 <ShipUpdate+0x188>)
d0040a18:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
d0040a1c:	edd3 7a00 	vldr	s15, [r3]
d0040a20:	ed93 7a01 	vldr	s14, [r3, #4]
d0040a24:	e77a      	b.n	d004091c <ShipUpdate+0x40>
d0040a26:	bf00      	nop
d0040a28:	d0042a50 	.word	0xd0042a50
d0040a2c:	d0042a4c 	.word	0xd0042a4c
d0040a30:	3f7c1bda 	.word	0x3f7c1bda
d0040a34:	be31c433 	.word	0xbe31c433
d0040a38:	d0042a58 	.word	0xd0042a58
d0040a3c:	d0042a54 	.word	0xd0042a54
d0040a40:	d0042a5c 	.word	0xd0042a5c
d0040a44:	c2800000 	.word	0xc2800000
d0040a48:	d0042a60 	.word	0xd0042a60
d0040a4c:	3f7d70a4 	.word	0x3f7d70a4
d0040a50:	43f00000 	.word	0x43f00000
d0040a54:	43a00000 	.word	0x43a00000
d0040a58:	00000000 	.word	0x00000000
d0040a5c:	43a00000 	.word	0x43a00000
d0040a60:	43f00000 	.word	0x43f00000
d0040a64:	d0042000 	.word	0xd0042000

d0040a68 <fireBullet>:
d0040a68:	4b43      	ldr	r3, [pc, #268]	; (d0040b78 <fireBullet+0x110>)
d0040a6a:	681b      	ldr	r3, [r3, #0]
d0040a6c:	1e59      	subs	r1, r3, #1
d0040a6e:	1c5a      	adds	r2, r3, #1
d0040a70:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0040a74:	2900      	cmp	r1, #0
d0040a76:	b084      	sub	sp, #16
d0040a78:	9302      	str	r3, [sp, #8]
d0040a7a:	9101      	str	r1, [sp, #4]
d0040a7c:	9203      	str	r2, [sp, #12]
d0040a7e:	da01      	bge.n	d0040a84 <fireBullet+0x1c>
d0040a80:	2323      	movs	r3, #35	; 0x23
d0040a82:	9301      	str	r3, [sp, #4]
d0040a84:	2a23      	cmp	r2, #35	; 0x23
d0040a86:	dd01      	ble.n	d0040a8c <fireBullet+0x24>
d0040a88:	2300      	movs	r3, #0
d0040a8a:	9303      	str	r3, [sp, #12]
d0040a8c:	eef2 5a00 	vmov.f32	s11, #32	; 0x41000000  8.0
d0040a90:	ae01      	add	r6, sp, #4
d0040a92:	eeb3 6a06 	vmov.f32	s12, #54	; 0x41b00000  22.0
d0040a96:	a804      	add	r0, sp, #16
d0040a98:	f04f 0800 	mov.w	r8, #0
d0040a9c:	4d37      	ldr	r5, [pc, #220]	; (d0040b7c <fireBullet+0x114>)
d0040a9e:	f04f 0e11 	mov.w	lr, #17
d0040aa2:	4f37      	ldr	r7, [pc, #220]	; (d0040b80 <fireBullet+0x118>)
d0040aa4:	f8df c0e0 	ldr.w	ip, [pc, #224]	; d0040b88 <fireBullet+0x120>
d0040aa8:	2200      	movs	r2, #0
d0040aaa:	e001      	b.n	d0040ab0 <fireBullet+0x48>
d0040aac:	2a20      	cmp	r2, #32
d0040aae:	d03a      	beq.n	d0040b26 <fireBullet+0xbe>
d0040ab0:	ebc2 03c2 	rsb	r3, r2, r2, lsl #3
d0040ab4:	3201      	adds	r2, #1
d0040ab6:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0040aba:	7d99      	ldrb	r1, [r3, #22]
d0040abc:	2900      	cmp	r1, #0
d0040abe:	d1f5      	bne.n	d0040aac <fireBullet+0x44>
d0040ac0:	f883 e016 	strb.w	lr, [r3, #22]
d0040ac4:	f04f 0801 	mov.w	r8, #1
d0040ac8:	8aba      	ldrh	r2, [r7, #20]
d0040aca:	6831      	ldr	r1, [r6, #0]
d0040acc:	b212      	sxth	r2, r2
d0040ace:	eb0c 04c1 	add.w	r4, ip, r1, lsl #3
d0040ad2:	3218      	adds	r2, #24
d0040ad4:	b249      	sxtb	r1, r1
d0040ad6:	edd4 6a00 	vldr	s13, [r4]
d0040ada:	ee07 2a90 	vmov	s15, r2
d0040ade:	ed94 7a01 	vldr	s14, [r4, #4]
d0040ae2:	ee66 4aa5 	vmul.f32	s9, s13, s11
d0040ae6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040aea:	ee27 5a25 	vmul.f32	s10, s14, s11
d0040aee:	edc3 7a02 	vstr	s15, [r3, #8]
d0040af2:	8afa      	ldrh	r2, [r7, #22]
d0040af4:	b212      	sxth	r2, r2
d0040af6:	3218      	adds	r2, #24
d0040af8:	ee07 2a90 	vmov	s15, r2
d0040afc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040b00:	edc3 7a03 	vstr	s15, [r3, #12]
d0040b04:	7519      	strb	r1, [r3, #20]
d0040b06:	edc3 4a00 	vstr	s9, [r3]
d0040b0a:	ed83 5a01 	vstr	s10, [r3, #4]
d0040b0e:	edd3 7a02 	vldr	s15, [r3, #8]
d0040b12:	eee6 7a86 	vfma.f32	s15, s13, s12
d0040b16:	edc3 7a02 	vstr	s15, [r3, #8]
d0040b1a:	edd3 7a03 	vldr	s15, [r3, #12]
d0040b1e:	eee7 7a46 	vfms.f32	s15, s14, s12
d0040b22:	edc3 7a03 	vstr	s15, [r3, #12]
d0040b26:	3604      	adds	r6, #4
d0040b28:	42b0      	cmp	r0, r6
d0040b2a:	d1bd      	bne.n	d0040aa8 <fireBullet+0x40>
d0040b2c:	f1b8 0f00 	cmp.w	r8, #0
d0040b30:	d102      	bne.n	d0040b38 <fireBullet+0xd0>
d0040b32:	b004      	add	sp, #16
d0040b34:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0040b38:	4c12      	ldr	r4, [pc, #72]	; (d0040b84 <fireBullet+0x11c>)
d0040b3a:	4640      	mov	r0, r8
d0040b3c:	7c23      	ldrb	r3, [r4, #16]
d0040b3e:	7c62      	ldrb	r2, [r4, #17]
d0040b40:	7ca1      	ldrb	r1, [r4, #18]
d0040b42:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040b46:	7ce2      	ldrb	r2, [r4, #19]
d0040b48:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040b4c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040b50:	689b      	ldr	r3, [r3, #8]
d0040b52:	689b      	ldr	r3, [r3, #8]
d0040b54:	4798      	blx	r3
d0040b56:	7c23      	ldrb	r3, [r4, #16]
d0040b58:	7c62      	ldrb	r2, [r4, #17]
d0040b5a:	4640      	mov	r0, r8
d0040b5c:	7ca1      	ldrb	r1, [r4, #18]
d0040b5e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040b62:	7ce2      	ldrb	r2, [r4, #19]
d0040b64:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040b68:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040b6c:	689b      	ldr	r3, [r3, #8]
d0040b6e:	685b      	ldr	r3, [r3, #4]
d0040b70:	b004      	add	sp, #16
d0040b72:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0040b76:	4718      	bx	r3
d0040b78:	d0042a4c 	.word	0xd0042a4c
d0040b7c:	d0042b30 	.word	0xd0042b30
d0040b80:	d00433e0 	.word	0xd00433e0
d0040b84:	2001f000 	.word	0x2001f000
d0040b88:	d0042000 	.word	0xd0042000

d0040b8c <doBullets>:
d0040b8c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0040b8e:	2400      	movs	r4, #0
d0040b90:	4d41      	ldr	r5, [pc, #260]	; (d0040c98 <doBullets+0x10c>)
d0040b92:	4e42      	ldr	r6, [pc, #264]	; (d0040c9c <doBullets+0x110>)
d0040b94:	ed2d 8b02 	vpush	{d8}
d0040b98:	eddf 8a41 	vldr	s17, [pc, #260]	; d0040ca0 <doBullets+0x114>
d0040b9c:	ed9f 8a41 	vldr	s16, [pc, #260]	; d0040ca4 <doBullets+0x118>
d0040ba0:	ebc4 03c4 	rsb	r3, r4, r4, lsl #3
d0040ba4:	00e2      	lsls	r2, r4, #3
d0040ba6:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0040baa:	7d99      	ldrb	r1, [r3, #22]
d0040bac:	2900      	cmp	r1, #0
d0040bae:	d06c      	beq.n	d0040c8a <doBullets+0xfe>
d0040bb0:	7d99      	ldrb	r1, [r3, #22]
d0040bb2:	eebb 7a00 	vmov.f32	s14, #176	; 0xc1800000 -16.0
d0040bb6:	3901      	subs	r1, #1
d0040bb8:	b2c9      	uxtb	r1, r1
d0040bba:	7599      	strb	r1, [r3, #22]
d0040bbc:	edd3 6a00 	vldr	s13, [r3]
d0040bc0:	edd3 7a02 	vldr	s15, [r3, #8]
d0040bc4:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0040bc8:	edc3 7a02 	vstr	s15, [r3, #8]
d0040bcc:	edd3 6a01 	vldr	s13, [r3, #4]
d0040bd0:	edd3 7a03 	vldr	s15, [r3, #12]
d0040bd4:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0040bd8:	edc3 7a03 	vstr	s15, [r3, #12]
d0040bdc:	edd3 7a02 	vldr	s15, [r3, #8]
d0040be0:	eef4 7ac7 	vcmpe.f32	s15, s14
d0040be4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040be8:	d501      	bpl.n	d0040bee <doBullets+0x62>
d0040bea:	edc3 8a02 	vstr	s17, [r3, #8]
d0040bee:	1b13      	subs	r3, r2, r4
d0040bf0:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0040bf4:	edd3 7a02 	vldr	s15, [r3, #8]
d0040bf8:	eef4 7ae8 	vcmpe.f32	s15, s17
d0040bfc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040c00:	dd01      	ble.n	d0040c06 <doBullets+0x7a>
d0040c02:	4929      	ldr	r1, [pc, #164]	; (d0040ca8 <doBullets+0x11c>)
d0040c04:	6099      	str	r1, [r3, #8]
d0040c06:	1b13      	subs	r3, r2, r4
d0040c08:	eefb 7a00 	vmov.f32	s15, #176	; 0xc1800000 -16.0
d0040c0c:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0040c10:	ed93 7a03 	vldr	s14, [r3, #12]
d0040c14:	eeb4 7ae7 	vcmpe.f32	s14, s15
d0040c18:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040c1c:	d501      	bpl.n	d0040c22 <doBullets+0x96>
d0040c1e:	ed83 8a03 	vstr	s16, [r3, #12]
d0040c22:	1b13      	subs	r3, r2, r4
d0040c24:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0040c28:	edd3 7a03 	vldr	s15, [r3, #12]
d0040c2c:	eef4 7ac8 	vcmpe.f32	s15, s16
d0040c30:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0040c34:	dd01      	ble.n	d0040c3a <doBullets+0xae>
d0040c36:	491c      	ldr	r1, [pc, #112]	; (d0040ca8 <doBullets+0x11c>)
d0040c38:	60d9      	str	r1, [r3, #12]
d0040c3a:	1b13      	subs	r3, r2, r4
d0040c3c:	491b      	ldr	r1, [pc, #108]	; (d0040cac <doBullets+0x120>)
d0040c3e:	4817      	ldr	r0, [pc, #92]	; (d0040c9c <doBullets+0x110>)
d0040c40:	eb05 0383 	add.w	r3, r5, r3, lsl #2
d0040c44:	edd3 7a02 	vldr	s15, [r3, #8]
d0040c48:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0040c4c:	ee17 2a90 	vmov	r2, s15
d0040c50:	b212      	sxth	r2, r2
d0040c52:	821a      	strh	r2, [r3, #16]
d0040c54:	edd3 7a03 	vldr	s15, [r3, #12]
d0040c58:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0040c5c:	ee17 2a90 	vmov	r2, s15
d0040c60:	b212      	sxth	r2, r2
d0040c62:	825a      	strh	r2, [r3, #18]
d0040c64:	7d1a      	ldrb	r2, [r3, #20]
d0040c66:	7632      	strb	r2, [r6, #24]
d0040c68:	8a1a      	ldrh	r2, [r3, #16]
d0040c6a:	82b2      	strh	r2, [r6, #20]
d0040c6c:	8a5b      	ldrh	r3, [r3, #18]
d0040c6e:	82f3      	strh	r3, [r6, #22]
d0040c70:	7b0b      	ldrb	r3, [r1, #12]
d0040c72:	7b4a      	ldrb	r2, [r1, #13]
d0040c74:	7b8f      	ldrb	r7, [r1, #14]
d0040c76:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040c7a:	7bca      	ldrb	r2, [r1, #15]
d0040c7c:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
d0040c80:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040c84:	685b      	ldr	r3, [r3, #4]
d0040c86:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0040c88:	4798      	blx	r3
d0040c8a:	3401      	adds	r4, #1
d0040c8c:	2c20      	cmp	r4, #32
d0040c8e:	d187      	bne.n	d0040ba0 <doBullets+0x14>
d0040c90:	ecbd 8b02 	vpop	{d8}
d0040c94:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0040c96:	bf00      	nop
d0040c98:	d0042b30 	.word	0xd0042b30
d0040c9c:	d00432c0 	.word	0xd00432c0
d0040ca0:	43f00000 	.word	0x43f00000
d0040ca4:	43a00000 	.word	0x43a00000
d0040ca8:	c1800000 	.word	0xc1800000
d0040cac:	2001f000 	.word	0x2001f000

d0040cb0 <main>:
d0040cb0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0040cb4:	4cb6      	ldr	r4, [pc, #728]	; (d0040f90 <main+0x2e0>)
d0040cb6:	f44f 3000 	mov.w	r0, #131072	; 0x20000
d0040cba:	2700      	movs	r7, #0
d0040cbc:	f44f 7a00 	mov.w	sl, #512	; 0x200
d0040cc0:	7823      	ldrb	r3, [r4, #0]
d0040cc2:	2601      	movs	r6, #1
d0040cc4:	7862      	ldrb	r2, [r4, #1]
d0040cc6:	f04f 0b60 	mov.w	fp, #96	; 0x60
d0040cca:	78a1      	ldrb	r1, [r4, #2]
d0040ccc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040cd0:	78e2      	ldrb	r2, [r4, #3]
d0040cd2:	4db0      	ldr	r5, [pc, #704]	; (d0040f94 <main+0x2e4>)
d0040cd4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040cd8:	f8df 92cc 	ldr.w	r9, [pc, #716]	; d0040fa8 <main+0x2f8>
d0040cdc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040ce0:	ed2d 8b02 	vpush	{d8}
d0040ce4:	681b      	ldr	r3, [r3, #0]
d0040ce6:	b089      	sub	sp, #36	; 0x24
d0040ce8:	4798      	blx	r3
d0040cea:	f7ff fa03 	bl	d00400f4 <initMalloc>
d0040cee:	7b23      	ldrb	r3, [r4, #12]
d0040cf0:	7b62      	ldrb	r2, [r4, #13]
d0040cf2:	2190      	movs	r1, #144	; 0x90
d0040cf4:	f894 c00e 	ldrb.w	ip, [r4, #14]
d0040cf8:	20dc      	movs	r0, #220	; 0xdc
d0040cfa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040cfe:	7be2      	ldrb	r2, [r4, #15]
d0040d00:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0040d04:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040d08:	681b      	ldr	r3, [r3, #0]
d0040d0a:	691b      	ldr	r3, [r3, #16]
d0040d0c:	4798      	blx	r3
d0040d0e:	7b23      	ldrb	r3, [r4, #12]
d0040d10:	7b62      	ldrb	r2, [r4, #13]
d0040d12:	4638      	mov	r0, r7
d0040d14:	7ba1      	ldrb	r1, [r4, #14]
d0040d16:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040d1a:	7be2      	ldrb	r2, [r4, #15]
d0040d1c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040d20:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040d24:	681b      	ldr	r3, [r3, #0]
d0040d26:	689b      	ldr	r3, [r3, #8]
d0040d28:	4798      	blx	r3
d0040d2a:	7b21      	ldrb	r1, [r4, #12]
d0040d2c:	7b62      	ldrb	r2, [r4, #13]
d0040d2e:	f04f 0c06 	mov.w	ip, #6
d0040d32:	7ba0      	ldrb	r0, [r4, #14]
d0040d34:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d0040d38:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
d0040d3c:	7be2      	ldrb	r2, [r4, #15]
d0040d3e:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
d0040d42:	4618      	mov	r0, r3
d0040d44:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
d0040d48:	f44f 7220 	mov.w	r2, #640	; 0x280
d0040d4c:	f8d1 e000 	ldr.w	lr, [r1]
d0040d50:	f44f 71a0 	mov.w	r1, #320	; 0x140
d0040d54:	f8cd c000 	str.w	ip, [sp]
d0040d58:	f8de 8014 	ldr.w	r8, [lr, #20]
d0040d5c:	47c0      	blx	r8
d0040d5e:	7c23      	ldrb	r3, [r4, #16]
d0040d60:	7c62      	ldrb	r2, [r4, #17]
d0040d62:	4650      	mov	r0, sl
d0040d64:	7ca1      	ldrb	r1, [r4, #18]
d0040d66:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040d6a:	7ce2      	ldrb	r2, [r4, #19]
d0040d6c:	f8df 823c 	ldr.w	r8, [pc, #572]	; d0040fac <main+0x2fc>
d0040d70:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040d74:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040d78:	681b      	ldr	r3, [r3, #0]
d0040d7a:	681b      	ldr	r3, [r3, #0]
d0040d7c:	4798      	blx	r3
d0040d7e:	7c22      	ldrb	r2, [r4, #16]
d0040d80:	7c63      	ldrb	r3, [r4, #17]
d0040d82:	7ca1      	ldrb	r1, [r4, #18]
d0040d84:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d0040d88:	7ce0      	ldrb	r0, [r4, #19]
d0040d8a:	7b23      	ldrb	r3, [r4, #12]
d0040d8c:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
d0040d90:	7b61      	ldrb	r1, [r4, #13]
d0040d92:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d0040d96:	7ba0      	ldrb	r0, [r4, #14]
d0040d98:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d0040d9c:	7be1      	ldrb	r1, [r4, #15]
d0040d9e:	6812      	ldr	r2, [r2, #0]
d0040da0:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0040da4:	6852      	ldr	r2, [r2, #4]
d0040da6:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d0040daa:	7016      	strb	r6, [r2, #0]
d0040dac:	681b      	ldr	r3, [r3, #0]
d0040dae:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d0040db0:	4798      	blx	r3
d0040db2:	7b23      	ldrb	r3, [r4, #12]
d0040db4:	7b62      	ldrb	r2, [r4, #13]
d0040db6:	7ba1      	ldrb	r1, [r4, #14]
d0040db8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040dbc:	7be2      	ldrb	r2, [r4, #15]
d0040dbe:	6028      	str	r0, [r5, #0]
d0040dc0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040dc4:	4d74      	ldr	r5, [pc, #464]	; (d0040f98 <main+0x2e8>)
d0040dc6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040dca:	681b      	ldr	r3, [r3, #0]
d0040dcc:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d0040dce:	4798      	blx	r3
d0040dd0:	7b23      	ldrb	r3, [r4, #12]
d0040dd2:	4601      	mov	r1, r0
d0040dd4:	7b62      	ldrb	r2, [r4, #13]
d0040dd6:	2064      	movs	r0, #100	; 0x64
d0040dd8:	6029      	str	r1, [r5, #0]
d0040dda:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040dde:	7ba1      	ldrb	r1, [r4, #14]
d0040de0:	7be2      	ldrb	r2, [r4, #15]
d0040de2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040de6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040dea:	681b      	ldr	r3, [r3, #0]
d0040dec:	689b      	ldr	r3, [r3, #8]
d0040dee:	4798      	blx	r3
d0040df0:	4649      	mov	r1, r9
d0040df2:	486a      	ldr	r0, [pc, #424]	; (d0040f9c <main+0x2ec>)
d0040df4:	f7ff f9f0 	bl	d00401d8 <LoadSFX>
d0040df8:	f894 c010 	ldrb.w	ip, [r4, #16]
d0040dfc:	f894 e011 	ldrb.w	lr, [r4, #17]
d0040e00:	4602      	mov	r2, r0
d0040e02:	7ca0      	ldrb	r0, [r4, #18]
d0040e04:	463b      	mov	r3, r7
d0040e06:	ea4c 250e 	orr.w	r5, ip, lr, lsl #8
d0040e0a:	f8d9 1000 	ldr.w	r1, [r9]
d0040e0e:	f04f 09c0 	mov.w	r9, #192	; 0xc0
d0040e12:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d0040e16:	7ce0      	ldrb	r0, [r4, #19]
d0040e18:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d0040e1c:	4638      	mov	r0, r7
d0040e1e:	68ad      	ldr	r5, [r5, #8]
d0040e20:	68ed      	ldr	r5, [r5, #12]
d0040e22:	47a8      	blx	r5
d0040e24:	7c23      	ldrb	r3, [r4, #16]
d0040e26:	7c62      	ldrb	r2, [r4, #17]
d0040e28:	f64a 4144 	movw	r1, #44100	; 0xac44
d0040e2c:	7ca0      	ldrb	r0, [r4, #18]
d0040e2e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040e32:	7ce2      	ldrb	r2, [r4, #19]
d0040e34:	4d5a      	ldr	r5, [pc, #360]	; (d0040fa0 <main+0x2f0>)
d0040e36:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0040e3a:	4638      	mov	r0, r7
d0040e3c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040e40:	689b      	ldr	r3, [r3, #8]
d0040e42:	691b      	ldr	r3, [r3, #16]
d0040e44:	4798      	blx	r3
d0040e46:	7c23      	ldrb	r3, [r4, #16]
d0040e48:	7c62      	ldrb	r2, [r4, #17]
d0040e4a:	4638      	mov	r0, r7
d0040e4c:	7ca1      	ldrb	r1, [r4, #18]
d0040e4e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040e52:	7ce2      	ldrb	r2, [r4, #19]
d0040e54:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040e58:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040e5c:	689b      	ldr	r3, [r3, #8]
d0040e5e:	685b      	ldr	r3, [r3, #4]
d0040e60:	4798      	blx	r3
d0040e62:	7c23      	ldrb	r3, [r4, #16]
d0040e64:	7c62      	ldrb	r2, [r4, #17]
d0040e66:	21f0      	movs	r1, #240	; 0xf0
d0040e68:	7ca0      	ldrb	r0, [r4, #18]
d0040e6a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040e6e:	7ce2      	ldrb	r2, [r4, #19]
d0040e70:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0040e74:	4638      	mov	r0, r7
d0040e76:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040e7a:	689b      	ldr	r3, [r3, #8]
d0040e7c:	695b      	ldr	r3, [r3, #20]
d0040e7e:	4798      	blx	r3
d0040e80:	7c23      	ldrb	r3, [r4, #16]
d0040e82:	7c62      	ldrb	r2, [r4, #17]
d0040e84:	4639      	mov	r1, r7
d0040e86:	7ca0      	ldrb	r0, [r4, #18]
d0040e88:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040e8c:	7ce2      	ldrb	r2, [r4, #19]
d0040e8e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0040e92:	4638      	mov	r0, r7
d0040e94:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040e98:	689b      	ldr	r3, [r3, #8]
d0040e9a:	699b      	ldr	r3, [r3, #24]
d0040e9c:	4798      	blx	r3
d0040e9e:	7c23      	ldrb	r3, [r4, #16]
d0040ea0:	7c60      	ldrb	r0, [r4, #17]
d0040ea2:	f241 1251 	movw	r2, #4433	; 0x1151
d0040ea6:	7ca1      	ldrb	r1, [r4, #18]
d0040ea8:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d0040eac:	7ce0      	ldrb	r0, [r4, #19]
d0040eae:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040eb2:	21c8      	movs	r1, #200	; 0xc8
d0040eb4:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d0040eb8:	4638      	mov	r0, r7
d0040eba:	689b      	ldr	r3, [r3, #8]
d0040ebc:	69db      	ldr	r3, [r3, #28]
d0040ebe:	4798      	blx	r3
d0040ec0:	7c23      	ldrb	r3, [r4, #16]
d0040ec2:	7c62      	ldrb	r2, [r4, #17]
d0040ec4:	4639      	mov	r1, r7
d0040ec6:	7ca0      	ldrb	r0, [r4, #18]
d0040ec8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040ecc:	7ce2      	ldrb	r2, [r4, #19]
d0040ece:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0040ed2:	4638      	mov	r0, r7
d0040ed4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040ed8:	689b      	ldr	r3, [r3, #8]
d0040eda:	6a1b      	ldr	r3, [r3, #32]
d0040edc:	4798      	blx	r3
d0040ede:	4641      	mov	r1, r8
d0040ee0:	4830      	ldr	r0, [pc, #192]	; (d0040fa4 <main+0x2f4>)
d0040ee2:	f7ff f979 	bl	d00401d8 <LoadSFX>
d0040ee6:	7c23      	ldrb	r3, [r4, #16]
d0040ee8:	f894 c011 	ldrb.w	ip, [r4, #17]
d0040eec:	4602      	mov	r2, r0
d0040eee:	f8d8 1000 	ldr.w	r1, [r8]
d0040ef2:	4630      	mov	r0, r6
d0040ef4:	ea43 2c0c 	orr.w	ip, r3, ip, lsl #8
d0040ef8:	7ca3      	ldrb	r3, [r4, #18]
d0040efa:	ea4c 4c03 	orr.w	ip, ip, r3, lsl #16
d0040efe:	7ce3      	ldrb	r3, [r4, #19]
d0040f00:	ea4c 6c03 	orr.w	ip, ip, r3, lsl #24
d0040f04:	463b      	mov	r3, r7
d0040f06:	f8dc c008 	ldr.w	ip, [ip, #8]
d0040f0a:	f8dc 800c 	ldr.w	r8, [ip, #12]
d0040f0e:	47c0      	blx	r8
d0040f10:	7c23      	ldrb	r3, [r4, #16]
d0040f12:	7c62      	ldrb	r2, [r4, #17]
d0040f14:	4630      	mov	r0, r6
d0040f16:	7ca1      	ldrb	r1, [r4, #18]
d0040f18:	f04f 0840 	mov.w	r8, #64	; 0x40
d0040f1c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040f20:	7ce2      	ldrb	r2, [r4, #19]
d0040f22:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040f26:	f64a 4144 	movw	r1, #44100	; 0xac44
d0040f2a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040f2e:	689b      	ldr	r3, [r3, #8]
d0040f30:	691b      	ldr	r3, [r3, #16]
d0040f32:	4798      	blx	r3
d0040f34:	7c23      	ldrb	r3, [r4, #16]
d0040f36:	7c62      	ldrb	r2, [r4, #17]
d0040f38:	4630      	mov	r0, r6
d0040f3a:	7ca1      	ldrb	r1, [r4, #18]
d0040f3c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040f40:	7ce2      	ldrb	r2, [r4, #19]
d0040f42:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040f46:	21ff      	movs	r1, #255	; 0xff
d0040f48:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040f4c:	689b      	ldr	r3, [r3, #8]
d0040f4e:	695b      	ldr	r3, [r3, #20]
d0040f50:	4798      	blx	r3
d0040f52:	7c23      	ldrb	r3, [r4, #16]
d0040f54:	7c62      	ldrb	r2, [r4, #17]
d0040f56:	4630      	mov	r0, r6
d0040f58:	7ca1      	ldrb	r1, [r4, #18]
d0040f5a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040f5e:	7ce2      	ldrb	r2, [r4, #19]
d0040f60:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040f64:	4639      	mov	r1, r7
d0040f66:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040f6a:	689b      	ldr	r3, [r3, #8]
d0040f6c:	699b      	ldr	r3, [r3, #24]
d0040f6e:	4798      	blx	r3
d0040f70:	7c23      	ldrb	r3, [r4, #16]
d0040f72:	7c61      	ldrb	r1, [r4, #17]
d0040f74:	4630      	mov	r0, r6
d0040f76:	7ca2      	ldrb	r2, [r4, #18]
d0040f78:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d0040f7c:	7ce1      	ldrb	r1, [r4, #19]
d0040f7e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040f82:	f241 1251 	movw	r2, #4433	; 0x1151
d0040f86:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d0040f8a:	21c8      	movs	r1, #200	; 0xc8
d0040f8c:	e010      	b.n	d0040fb0 <main+0x300>
d0040f8e:	bf00      	nop
d0040f90:	2001f000 	.word	0x2001f000
d0040f94:	d0043440 	.word	0xd0043440
d0040f98:	d0043404 	.word	0xd0043404
d0040f9c:	d0041f0c 	.word	0xd0041f0c
d0040fa0:	d0042a80 	.word	0xd0042a80
d0040fa4:	d0041f20 	.word	0xd0041f20
d0040fa8:	d00432e4 	.word	0xd00432e4
d0040fac:	d0042b00 	.word	0xd0042b00
d0040fb0:	689b      	ldr	r3, [r3, #8]
d0040fb2:	69db      	ldr	r3, [r3, #28]
d0040fb4:	4798      	blx	r3
d0040fb6:	7c23      	ldrb	r3, [r4, #16]
d0040fb8:	7c62      	ldrb	r2, [r4, #17]
d0040fba:	4630      	mov	r0, r6
d0040fbc:	7ca1      	ldrb	r1, [r4, #18]
d0040fbe:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040fc2:	7ce2      	ldrb	r2, [r4, #19]
d0040fc4:	4ebb      	ldr	r6, [pc, #748]	; (d00412b4 <main+0x604>)
d0040fc6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040fca:	4639      	mov	r1, r7
d0040fcc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040fd0:	689b      	ldr	r3, [r3, #8]
d0040fd2:	6a1b      	ldr	r3, [r3, #32]
d0040fd4:	4798      	blx	r3
d0040fd6:	4bb8      	ldr	r3, [pc, #736]	; (d00412b8 <main+0x608>)
d0040fd8:	4639      	mov	r1, r7
d0040fda:	48b8      	ldr	r0, [pc, #736]	; (d00412bc <main+0x60c>)
d0040fdc:	601f      	str	r7, [r3, #0]
d0040fde:	7c23      	ldrb	r3, [r4, #16]
d0040fe0:	7c62      	ldrb	r2, [r4, #17]
d0040fe2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040fe6:	7ca2      	ldrb	r2, [r4, #18]
d0040fe8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040fec:	7ce2      	ldrb	r2, [r4, #19]
d0040fee:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040ff2:	685b      	ldr	r3, [r3, #4]
d0040ff4:	681b      	ldr	r3, [r3, #0]
d0040ff6:	4798      	blx	r3
d0040ff8:	f44f 3061 	mov.w	r0, #230400	; 0x38400
d0040ffc:	f000 fb7a 	bl	d00416f4 <malloc>
d0041000:	4603      	mov	r3, r0
d0041002:	48af      	ldr	r0, [pc, #700]	; (d00412c0 <main+0x610>)
d0041004:	602b      	str	r3, [r5, #0]
d0041006:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d004100a:	81ab      	strh	r3, [r5, #12]
d004100c:	81eb      	strh	r3, [r5, #14]
d004100e:	f8a5 b010 	strh.w	fp, [r5, #16]
d0041012:	f8a5 b012 	strh.w	fp, [r5, #18]
d0041016:	82af      	strh	r7, [r5, #20]
d0041018:	82ef      	strh	r7, [r5, #22]
d004101a:	6829      	ldr	r1, [r5, #0]
d004101c:	f7ff f816 	bl	d004004c <LoadPPB>
d0041020:	f44f 30c0 	mov.w	r0, #98304	; 0x18000
d0041024:	f000 fb66 	bl	d00416f4 <malloc>
d0041028:	4603      	mov	r3, r0
d004102a:	48a6      	ldr	r0, [pc, #664]	; (d00412c4 <main+0x614>)
d004102c:	622b      	str	r3, [r5, #32]
d004102e:	f8a5 a02c 	strh.w	sl, [r5, #44]	; 0x2c
d0041032:	f8a5 902e 	strh.w	r9, [r5, #46]	; 0x2e
d0041036:	f8a5 8030 	strh.w	r8, [r5, #48]	; 0x30
d004103a:	f8a5 8032 	strh.w	r8, [r5, #50]	; 0x32
d004103e:	86af      	strh	r7, [r5, #52]	; 0x34
d0041040:	86ef      	strh	r7, [r5, #54]	; 0x36
d0041042:	6a29      	ldr	r1, [r5, #32]
d0041044:	f7ff f802 	bl	d004004c <LoadPPB>
d0041048:	f44f 30c0 	mov.w	r0, #98304	; 0x18000
d004104c:	f000 fb52 	bl	d00416f4 <malloc>
d0041050:	4603      	mov	r3, r0
d0041052:	489d      	ldr	r0, [pc, #628]	; (d00412c8 <main+0x618>)
d0041054:	642b      	str	r3, [r5, #64]	; 0x40
d0041056:	f8a5 a04c 	strh.w	sl, [r5, #76]	; 0x4c
d004105a:	f8a5 904e 	strh.w	r9, [r5, #78]	; 0x4e
d004105e:	f8a5 8050 	strh.w	r8, [r5, #80]	; 0x50
d0041062:	f8a5 8052 	strh.w	r8, [r5, #82]	; 0x52
d0041066:	f8a5 7054 	strh.w	r7, [r5, #84]	; 0x54
d004106a:	f8a5 7056 	strh.w	r7, [r5, #86]	; 0x56
d004106e:	6c29      	ldr	r1, [r5, #64]	; 0x40
d0041070:	f7fe ffec 	bl	d004004c <LoadPPB>
d0041074:	f44f 4080 	mov.w	r0, #16384	; 0x4000
d0041078:	f000 fb3c 	bl	d00416f4 <malloc>
d004107c:	2320      	movs	r3, #32
d004107e:	f44f 7280 	mov.w	r2, #256	; 0x100
d0041082:	6628      	str	r0, [r5, #96]	; 0x60
d0041084:	4891      	ldr	r0, [pc, #580]	; (d00412cc <main+0x61c>)
d0041086:	f8a5 206c 	strh.w	r2, [r5, #108]	; 0x6c
d004108a:	f8a5 806e 	strh.w	r8, [r5, #110]	; 0x6e
d004108e:	f8a5 3070 	strh.w	r3, [r5, #112]	; 0x70
d0041092:	f8a5 3072 	strh.w	r3, [r5, #114]	; 0x72
d0041096:	f8a5 7074 	strh.w	r7, [r5, #116]	; 0x74
d004109a:	f8a5 7076 	strh.w	r7, [r5, #118]	; 0x76
d004109e:	6e29      	ldr	r1, [r5, #96]	; 0x60
d00410a0:	f7fe ffd4 	bl	d004004c <LoadPPB>
d00410a4:	f44f 3010 	mov.w	r0, #147456	; 0x24000
d00410a8:	f000 fb24 	bl	d00416f4 <malloc>
d00410ac:	4988      	ldr	r1, [pc, #544]	; (d00412d0 <main+0x620>)
d00410ae:	f44f 72c0 	mov.w	r2, #384	; 0x180
d00410b2:	230a      	movs	r3, #10
d00410b4:	6008      	str	r0, [r1, #0]
d00410b6:	81ca      	strh	r2, [r1, #14]
d00410b8:	4886      	ldr	r0, [pc, #536]	; (d00412d4 <main+0x624>)
d00410ba:	818a      	strh	r2, [r1, #12]
d00410bc:	f8a1 8012 	strh.w	r8, [r1, #18]
d00410c0:	f8a1 8010 	strh.w	r8, [r1, #16]
d00410c4:	760f      	strb	r7, [r1, #24]
d00410c6:	828b      	strh	r3, [r1, #20]
d00410c8:	82cb      	strh	r3, [r1, #22]
d00410ca:	6809      	ldr	r1, [r1, #0]
d00410cc:	f7fe ffbe 	bl	d004004c <LoadPPB>
d00410d0:	f44f 5010 	mov.w	r0, #9216	; 0x2400
d00410d4:	f000 fb0e 	bl	d00416f4 <malloc>
d00410d8:	4b7f      	ldr	r3, [pc, #508]	; (d00412d8 <main+0x628>)
d00410da:	2210      	movs	r2, #16
d00410dc:	f8df 9238 	ldr.w	r9, [pc, #568]	; d0041318 <main+0x668>
d00410e0:	6018      	str	r0, [r3, #0]
d00410e2:	f8a3 b00e 	strh.w	fp, [r3, #14]
d00410e6:	487d      	ldr	r0, [pc, #500]	; (d00412dc <main+0x62c>)
d00410e8:	f8a3 b00c 	strh.w	fp, [r3, #12]
d00410ec:	825a      	strh	r2, [r3, #18]
d00410ee:	821a      	strh	r2, [r3, #16]
d00410f0:	761f      	strb	r7, [r3, #24]
d00410f2:	6819      	ldr	r1, [r3, #0]
d00410f4:	f7fe ffaa 	bl	d004004c <LoadPPB>
d00410f8:	f44f 6048 	mov.w	r0, #3200	; 0xc80
d00410fc:	f000 fafa 	bl	d00416f4 <malloc>
d0041100:	4b77      	ldr	r3, [pc, #476]	; (d00412e0 <main+0x630>)
d0041102:	2214      	movs	r2, #20
d0041104:	21a0      	movs	r1, #160	; 0xa0
d0041106:	6018      	str	r0, [r3, #0]
d0041108:	81da      	strh	r2, [r3, #14]
d004110a:	4876      	ldr	r0, [pc, #472]	; (d00412e4 <main+0x634>)
d004110c:	8199      	strh	r1, [r3, #12]
d004110e:	825a      	strh	r2, [r3, #18]
d0041110:	821a      	strh	r2, [r3, #16]
d0041112:	761f      	strb	r7, [r3, #24]
d0041114:	6819      	ldr	r1, [r3, #0]
d0041116:	f7fe ff99 	bl	d004004c <LoadPPB>
d004111a:	f44f 4020 	mov.w	r0, #40960	; 0xa000
d004111e:	f000 fae9 	bl	d00416f4 <malloc>
d0041122:	2280      	movs	r2, #128	; 0x80
d0041124:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0041128:	6030      	str	r0, [r6, #0]
d004112a:	81f2      	strh	r2, [r6, #14]
d004112c:	486e      	ldr	r0, [pc, #440]	; (d00412e8 <main+0x638>)
d004112e:	81b3      	strh	r3, [r6, #12]
d0041130:	f8a6 8012 	strh.w	r8, [r6, #18]
d0041134:	f8a6 8010 	strh.w	r8, [r6, #16]
d0041138:	7637      	strb	r7, [r6, #24]
d004113a:	6831      	ldr	r1, [r6, #0]
d004113c:	f7fe ff86 	bl	d004004c <LoadPPB>
d0041140:	f44f 2096 	mov.w	r0, #307200	; 0x4b000
d0041144:	f44f 7320 	mov.w	r3, #640	; 0x280
d0041148:	f8df a1d8 	ldr.w	sl, [pc, #472]	; d0041324 <main+0x674>
d004114c:	f8c9 000c 	str.w	r0, [r9, #12]
d0041150:	f8a9 3004 	strh.w	r3, [r9, #4]
d0041154:	f44f 73f0 	mov.w	r3, #480	; 0x1e0
d0041158:	f50a 6580 	add.w	r5, sl, #1024	; 0x400
d004115c:	f8a9 3006 	strh.w	r3, [r9, #6]
d0041160:	f8a9 3008 	strh.w	r3, [r9, #8]
d0041164:	f000 fac6 	bl	d00416f4 <malloc>
d0041168:	4603      	mov	r3, r0
d004116a:	4860      	ldr	r0, [pc, #384]	; (d00412ec <main+0x63c>)
d004116c:	f8c9 3000 	str.w	r3, [r9]
d0041170:	f8d9 1000 	ldr.w	r1, [r9]
d0041174:	f7fe ff6a 	bl	d004004c <LoadPPB>
d0041178:	f7ff f9c8 	bl	d004050c <initAstroids>
d004117c:	4650      	mov	r0, sl
d004117e:	f10a 0a20 	add.w	sl, sl, #32
d0041182:	2220      	movs	r2, #32
d0041184:	2100      	movs	r1, #0
d0041186:	f7fe ff59 	bl	d004003c <memset>
d004118a:	4555      	cmp	r5, sl
d004118c:	d1f6      	bne.n	d004117c <main+0x4cc>
d004118e:	4f58      	ldr	r7, [pc, #352]	; (d00412f0 <main+0x640>)
d0041190:	463d      	mov	r5, r7
d0041192:	f507 6880 	add.w	r8, r7, #1024	; 0x400
d0041196:	4628      	mov	r0, r5
d0041198:	3520      	adds	r5, #32
d004119a:	2220      	movs	r2, #32
d004119c:	2100      	movs	r1, #0
d004119e:	f7fe ff4d 	bl	d004003c <memset>
d00411a2:	45a8      	cmp	r8, r5
d00411a4:	d1f7      	bne.n	d0041196 <main+0x4e6>
d00411a6:	2100      	movs	r1, #0
d00411a8:	4852      	ldr	r0, [pc, #328]	; (d00412f4 <main+0x644>)
d00411aa:	f8df e17c 	ldr.w	lr, [pc, #380]	; d0041328 <main+0x678>
d00411ae:	f04f 4886 	mov.w	r8, #1124073472	; 0x43000000
d00411b2:	6001      	str	r1, [r0, #0]
d00411b4:	460a      	mov	r2, r1
d00411b6:	4850      	ldr	r0, [pc, #320]	; (d00412f8 <main+0x648>)
d00411b8:	f8df c170 	ldr.w	ip, [pc, #368]	; d004132c <main+0x67c>
d00411bc:	f8c0 e000 	str.w	lr, [r0]
d00411c0:	484e      	ldr	r0, [pc, #312]	; (d00412fc <main+0x64c>)
d00411c2:	4b4f      	ldr	r3, [pc, #316]	; (d0041300 <main+0x650>)
d00411c4:	f8c0 8000 	str.w	r8, [r0]
d00411c8:	f88c 1000 	strb.w	r1, [ip]
d00411cc:	2100      	movs	r1, #0
d00411ce:	484d      	ldr	r0, [pc, #308]	; (d0041304 <main+0x654>)
d00411d0:	f503 7560 	add.w	r5, r3, #896	; 0x380
d00411d4:	6001      	str	r1, [r0, #0]
d00411d6:	484c      	ldr	r0, [pc, #304]	; (d0041308 <main+0x658>)
d00411d8:	6001      	str	r1, [r0, #0]
d00411da:	601a      	str	r2, [r3, #0]
d00411dc:	331c      	adds	r3, #28
d00411de:	f843 2c18 	str.w	r2, [r3, #-24]
d00411e2:	f843 2c14 	str.w	r2, [r3, #-20]
d00411e6:	f843 2c10 	str.w	r2, [r3, #-16]
d00411ea:	f843 2c0c 	str.w	r2, [r3, #-12]
d00411ee:	f843 2c08 	str.w	r2, [r3, #-8]
d00411f2:	f843 2c04 	str.w	r2, [r3, #-4]
d00411f6:	429d      	cmp	r5, r3
d00411f8:	d1ef      	bne.n	d00411da <main+0x52a>
d00411fa:	7b23      	ldrb	r3, [r4, #12]
d00411fc:	2101      	movs	r1, #1
d00411fe:	7b62      	ldrb	r2, [r4, #13]
d0041200:	2000      	movs	r0, #0
d0041202:	9103      	str	r1, [sp, #12]
d0041204:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041208:	7ba1      	ldrb	r1, [r4, #14]
d004120a:	7be2      	ldrb	r2, [r4, #15]
d004120c:	4605      	mov	r5, r0
d004120e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0041212:	9006      	str	r0, [sp, #24]
d0041214:	4682      	mov	sl, r0
d0041216:	4828      	ldr	r0, [pc, #160]	; (d00412b8 <main+0x608>)
d0041218:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004121c:	9505      	str	r5, [sp, #20]
d004121e:	46a9      	mov	r9, r5
d0041220:	4d3a      	ldr	r5, [pc, #232]	; (d004130c <main+0x65c>)
d0041222:	681b      	ldr	r3, [r3, #0]
d0041224:	f8df 8108 	ldr.w	r8, [pc, #264]	; d0041330 <main+0x680>
d0041228:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d004122a:	4798      	blx	r3
d004122c:	7b23      	ldrb	r3, [r4, #12]
d004122e:	7b62      	ldrb	r2, [r4, #13]
d0041230:	7ba1      	ldrb	r1, [r4, #14]
d0041232:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041236:	7be2      	ldrb	r2, [r4, #15]
d0041238:	4835      	ldr	r0, [pc, #212]	; (d0041310 <main+0x660>)
d004123a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004123e:	ed9f 8a35 	vldr	s16, [pc, #212]	; d0041314 <main+0x664>
d0041242:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041246:	681b      	ldr	r3, [r3, #0]
d0041248:	6d1b      	ldr	r3, [r3, #80]	; 0x50
d004124a:	4798      	blx	r3
d004124c:	7b23      	ldrb	r3, [r4, #12]
d004124e:	7b62      	ldrb	r2, [r4, #13]
d0041250:	4831      	ldr	r0, [pc, #196]	; (d0041318 <main+0x668>)
d0041252:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041256:	7ba2      	ldrb	r2, [r4, #14]
d0041258:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d004125c:	7be2      	ldrb	r2, [r4, #15]
d004125e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041262:	681b      	ldr	r3, [r3, #0]
d0041264:	6a1b      	ldr	r3, [r3, #32]
d0041266:	4798      	blx	r3
d0041268:	7b23      	ldrb	r3, [r4, #12]
d004126a:	7b62      	ldrb	r2, [r4, #13]
d004126c:	6828      	ldr	r0, [r5, #0]
d004126e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041272:	7ba2      	ldrb	r2, [r4, #14]
d0041274:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041278:	7be2      	ldrb	r2, [r4, #15]
d004127a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004127e:	681b      	ldr	r3, [r3, #0]
d0041280:	69db      	ldr	r3, [r3, #28]
d0041282:	4798      	blx	r3
d0041284:	7b23      	ldrb	r3, [r4, #12]
d0041286:	7b62      	ldrb	r2, [r4, #13]
d0041288:	6828      	ldr	r0, [r5, #0]
d004128a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004128e:	7ba2      	ldrb	r2, [r4, #14]
d0041290:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041294:	7be2      	ldrb	r2, [r4, #15]
d0041296:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004129a:	681b      	ldr	r3, [r3, #0]
d004129c:	699b      	ldr	r3, [r3, #24]
d004129e:	4798      	blx	r3
d00412a0:	2300      	movs	r3, #0
d00412a2:	4a1e      	ldr	r2, [pc, #120]	; (d004131c <main+0x66c>)
d00412a4:	ee08 3a90 	vmov	s17, r3
d00412a8:	f8dd b00c 	ldr.w	fp, [sp, #12]
d00412ac:	6013      	str	r3, [r2, #0]
d00412ae:	4a1c      	ldr	r2, [pc, #112]	; (d0041320 <main+0x670>)
d00412b0:	6013      	str	r3, [r2, #0]
d00412b2:	e03f      	b.n	d0041334 <main+0x684>
d00412b4:	d0043420 	.word	0xd0043420
d00412b8:	d0042620 	.word	0xd0042620
d00412bc:	d0041f30 	.word	0xd0041f30
d00412c0:	d0041f40 	.word	0xd0041f40
d00412c4:	d0041f58 	.word	0xd0041f58
d00412c8:	d0041f74 	.word	0xd0041f74
d00412cc:	d0041f90 	.word	0xd0041f90
d00412d0:	d00433e0 	.word	0xd00433e0
d00412d4:	d0041fa8 	.word	0xd0041fa8
d00412d8:	d00432c0 	.word	0xd00432c0
d00412dc:	d0041fb8 	.word	0xd0041fb8
d00412e0:	d0043300 	.word	0xd0043300
d00412e4:	d0041fd0 	.word	0xd0041fd0
d00412e8:	d0041fe0 	.word	0xd0041fe0
d00412ec:	d0041ff0 	.word	0xd0041ff0
d00412f0:	d0042eb4 	.word	0xd0042eb4
d00412f4:	d0042a4c 	.word	0xd0042a4c
d00412f8:	d0042a5c 	.word	0xd0042a5c
d00412fc:	d0042a60 	.word	0xd0042a60
d0041300:	d0042b30 	.word	0xd0042b30
d0041304:	d0042a54 	.word	0xd0042a54
d0041308:	d0042a58 	.word	0xd0042a58
d004130c:	d0043440 	.word	0xd0043440
d0041310:	d0042220 	.word	0xd0042220
d0041314:	43200000 	.word	0x43200000
d0041318:	d0042b20 	.word	0xd0042b20
d004131c:	d0042eb0 	.word	0xd0042eb0
d0041320:	d0043400 	.word	0xd0043400
d0041324:	d0043444 	.word	0xd0043444
d0041328:	43500000 	.word	0x43500000
d004132c:	d0042a50 	.word	0xd0042a50
d0041330:	d0042a48 	.word	0xd0042a48
d0041334:	7820      	ldrb	r0, [r4, #0]
d0041336:	7861      	ldrb	r1, [r4, #1]
d0041338:	78a2      	ldrb	r2, [r4, #2]
d004133a:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d004133e:	78e3      	ldrb	r3, [r4, #3]
d0041340:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0041344:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0041348:	691b      	ldr	r3, [r3, #16]
d004134a:	4798      	blx	r3
d004134c:	4605      	mov	r5, r0
d004134e:	f7ff fac5 	bl	d00408dc <ShipUpdate>
d0041352:	f005 0301 	and.w	r3, r5, #1
d0041356:	ea83 0909 	eor.w	r9, r3, r9
d004135a:	9303      	str	r3, [sp, #12]
d004135c:	ea05 0909 	and.w	r9, r5, r9
d0041360:	f019 0f01 	tst.w	r9, #1
d0041364:	f040 81ab 	bne.w	d00416be <main+0xa0e>
d0041368:	f005 0302 	and.w	r3, r5, #2
d004136c:	07aa      	lsls	r2, r5, #30
d004136e:	9304      	str	r3, [sp, #16]
d0041370:	f140 8111 	bpl.w	d0041596 <main+0x8e6>
d0041374:	4553      	cmp	r3, sl
d0041376:	f000 810e 	beq.w	d0041596 <main+0x8e6>
d004137a:	231f      	movs	r3, #31
d004137c:	9306      	str	r3, [sp, #24]
d004137e:	f898 3000 	ldrb.w	r3, [r8]
d0041382:	b913      	cbnz	r3, d004138a <main+0x6da>
d0041384:	076b      	lsls	r3, r5, #29
d0041386:	f100 819d 	bmi.w	d00416c4 <main+0xa14>
d004138a:	4bbb      	ldr	r3, [pc, #748]	; (d0041678 <main+0x9c8>)
d004138c:	49bb      	ldr	r1, [pc, #748]	; (d004167c <main+0x9cc>)
d004138e:	ed93 7a00 	vldr	s14, [r3]
d0041392:	4bbb      	ldr	r3, [pc, #748]	; (d0041680 <main+0x9d0>)
d0041394:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0041398:	edd3 7a00 	vldr	s15, [r3]
d004139c:	4bb9      	ldr	r3, [pc, #740]	; (d0041684 <main+0x9d4>)
d004139e:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00413a2:	781b      	ldrb	r3, [r3, #0]
d00413a4:	760b      	strb	r3, [r1, #24]
d00413a6:	ee17 3a10 	vmov	r3, s14
d00413aa:	b21a      	sxth	r2, r3
d00413ac:	ee17 3a90 	vmov	r3, s15
d00413b0:	b21b      	sxth	r3, r3
d00413b2:	828a      	strh	r2, [r1, #20]
d00413b4:	82cb      	strh	r3, [r1, #22]
d00413b6:	9b05      	ldr	r3, [sp, #20]
d00413b8:	2b63      	cmp	r3, #99	; 0x63
d00413ba:	d810      	bhi.n	d00413de <main+0x72e>
d00413bc:	7b20      	ldrb	r0, [r4, #12]
d00413be:	3301      	adds	r3, #1
d00413c0:	7b61      	ldrb	r1, [r4, #13]
d00413c2:	7ba2      	ldrb	r2, [r4, #14]
d00413c4:	b2dd      	uxtb	r5, r3
d00413c6:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00413ca:	7be3      	ldrb	r3, [r4, #15]
d00413cc:	4628      	mov	r0, r5
d00413ce:	9505      	str	r5, [sp, #20]
d00413d0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00413d4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00413d8:	681b      	ldr	r3, [r3, #0]
d00413da:	689b      	ldr	r3, [r3, #8]
d00413dc:	4798      	blx	r3
d00413de:	4baa      	ldr	r3, [pc, #680]	; (d0041688 <main+0x9d8>)
d00413e0:	4aaa      	ldr	r2, [pc, #680]	; (d004168c <main+0x9dc>)
d00413e2:	ed93 7a00 	vldr	s14, [r3]
d00413e6:	ed92 6a00 	vldr	s12, [r2]
d00413ea:	49a9      	ldr	r1, [pc, #676]	; (d0041690 <main+0x9e0>)
d00413ec:	ee37 7a06 	vadd.f32	s14, s14, s12
d00413f0:	4aa8      	ldr	r2, [pc, #672]	; (d0041694 <main+0x9e4>)
d00413f2:	edd1 6a00 	vldr	s13, [r1]
d00413f6:	edd2 7a00 	vldr	s15, [r2]
d00413fa:	eeb4 7ac8 	vcmpe.f32	s14, s16
d00413fe:	ed83 7a00 	vstr	s14, [r3]
d0041402:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0041406:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004140a:	edc2 7a00 	vstr	s15, [r2]
d004140e:	f340 8119 	ble.w	d0041644 <main+0x994>
d0041412:	25a0      	movs	r5, #160	; 0xa0
d0041414:	ed83 8a00 	vstr	s16, [r3]
d0041418:	eef4 7ac8 	vcmpe.f32	s15, s16
d004141c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041420:	f340 811f 	ble.w	d0041662 <main+0x9b2>
d0041424:	4b9b      	ldr	r3, [pc, #620]	; (d0041694 <main+0x9e4>)
d0041426:	f04f 09a0 	mov.w	r9, #160	; 0xa0
d004142a:	ed83 8a00 	vstr	s16, [r3]
d004142e:	7b20      	ldrb	r0, [r4, #12]
d0041430:	7b61      	ldrb	r1, [r4, #13]
d0041432:	7ba2      	ldrb	r2, [r4, #14]
d0041434:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0041438:	7be3      	ldrb	r3, [r4, #15]
d004143a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004143e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0041442:	681b      	ldr	r3, [r3, #0]
d0041444:	68db      	ldr	r3, [r3, #12]
d0041446:	4798      	blx	r3
d0041448:	f898 3000 	ldrb.w	r3, [r8]
d004144c:	f1c3 0301 	rsb	r3, r3, #1
d0041450:	b2db      	uxtb	r3, r3
d0041452:	f888 3000 	strb.w	r3, [r8]
d0041456:	f898 3000 	ldrb.w	r3, [r8]
d004145a:	7b21      	ldrb	r1, [r4, #12]
d004145c:	7b60      	ldrb	r0, [r4, #13]
d004145e:	7ba2      	ldrb	r2, [r4, #14]
d0041460:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0041464:	2b00      	cmp	r3, #0
d0041466:	f000 8123 	beq.w	d00416b0 <main+0xa00>
d004146a:	498b      	ldr	r1, [pc, #556]	; (d0041698 <main+0x9e8>)
d004146c:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0041470:	7be3      	ldrb	r3, [r4, #15]
d0041472:	6809      	ldr	r1, [r1, #0]
d0041474:	4889      	ldr	r0, [pc, #548]	; (d004169c <main+0x9ec>)
d0041476:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004147a:	6800      	ldr	r0, [r0, #0]
d004147c:	f04f 0a00 	mov.w	sl, #0
d0041480:	681b      	ldr	r3, [r3, #0]
d0041482:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0041484:	4798      	blx	r3
d0041486:	7b23      	ldrb	r3, [r4, #12]
d0041488:	7b62      	ldrb	r2, [r4, #13]
d004148a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004148e:	7ba2      	ldrb	r2, [r4, #14]
d0041490:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041494:	7be2      	ldrb	r2, [r4, #15]
d0041496:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004149a:	685b      	ldr	r3, [r3, #4]
d004149c:	681b      	ldr	r3, [r3, #0]
d004149e:	4798      	blx	r3
d00414a0:	f7ff f92c 	bl	d00406fc <proc_astroids>
d00414a4:	f7ff fb72 	bl	d0040b8c <doBullets>
d00414a8:	f7fe ff9c 	bl	d00403e4 <doFlames>
d00414ac:	eb07 124a 	add.w	r2, r7, sl, lsl #5
d00414b0:	487b      	ldr	r0, [pc, #492]	; (d00416a0 <main+0x9f0>)
d00414b2:	f10a 0a01 	add.w	sl, sl, #1
d00414b6:	7d93      	ldrb	r3, [r2, #22]
d00414b8:	b1f3      	cbz	r3, d00414f8 <main+0x848>
d00414ba:	8a13      	ldrh	r3, [r2, #16]
d00414bc:	82b3      	strh	r3, [r6, #20]
d00414be:	8a53      	ldrh	r3, [r2, #18]
d00414c0:	82f3      	strh	r3, [r6, #22]
d00414c2:	7d93      	ldrb	r3, [r2, #22]
d00414c4:	f1c3 0314 	rsb	r3, r3, #20
d00414c8:	f3c3 0347 	ubfx	r3, r3, #1, #8
d00414cc:	2b09      	cmp	r3, #9
d00414ce:	bf28      	it	cs
d00414d0:	2309      	movcs	r3, #9
d00414d2:	7633      	strb	r3, [r6, #24]
d00414d4:	7d93      	ldrb	r3, [r2, #22]
d00414d6:	3b01      	subs	r3, #1
d00414d8:	b2db      	uxtb	r3, r3
d00414da:	7593      	strb	r3, [r2, #22]
d00414dc:	f894 c00c 	ldrb.w	ip, [r4, #12]
d00414e0:	7b61      	ldrb	r1, [r4, #13]
d00414e2:	7ba2      	ldrb	r2, [r4, #14]
d00414e4:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d00414e8:	7be3      	ldrb	r3, [r4, #15]
d00414ea:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00414ee:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00414f2:	685b      	ldr	r3, [r3, #4]
d00414f4:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00414f6:	4798      	blx	r3
d00414f8:	f1ba 0f20 	cmp.w	sl, #32
d00414fc:	d1d6      	bne.n	d00414ac <main+0x7fc>
d00414fe:	7b20      	ldrb	r0, [r4, #12]
d0041500:	f10b 0b01 	add.w	fp, fp, #1
d0041504:	7b61      	ldrb	r1, [r4, #13]
d0041506:	7ba2      	ldrb	r2, [r4, #14]
d0041508:	fa5f fb8b 	uxtb.w	fp, fp
d004150c:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0041510:	7be3      	ldrb	r3, [r4, #15]
d0041512:	485a      	ldr	r0, [pc, #360]	; (d004167c <main+0x9cc>)
d0041514:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0041518:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d004151c:	685b      	ldr	r3, [r3, #4]
d004151e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0041520:	4798      	blx	r3
d0041522:	4b56      	ldr	r3, [pc, #344]	; (d004167c <main+0x9cc>)
d0041524:	f04f 0200 	mov.w	r2, #0
d0041528:	4628      	mov	r0, r5
d004152a:	4649      	mov	r1, r9
d004152c:	711a      	strb	r2, [r3, #4]
d004152e:	f894 c00c 	ldrb.w	ip, [r4, #12]
d0041532:	7b62      	ldrb	r2, [r4, #13]
d0041534:	f894 e00e 	ldrb.w	lr, [r4, #14]
d0041538:	ea4c 2502 	orr.w	r5, ip, r2, lsl #8
d004153c:	7be3      	ldrb	r3, [r4, #15]
d004153e:	ea45 420e 	orr.w	r2, r5, lr, lsl #16
d0041542:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0041546:	681b      	ldr	r3, [r3, #0]
d0041548:	6b1b      	ldr	r3, [r3, #48]	; 0x30
d004154a:	4798      	blx	r3
d004154c:	7b20      	ldrb	r0, [r4, #12]
d004154e:	7b61      	ldrb	r1, [r4, #13]
d0041550:	7ba2      	ldrb	r2, [r4, #14]
d0041552:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0041556:	7be3      	ldrb	r3, [r4, #15]
d0041558:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d004155c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0041560:	681b      	ldr	r3, [r3, #0]
d0041562:	681b      	ldr	r3, [r3, #0]
d0041564:	4798      	blx	r3
d0041566:	f1bb 0f65 	cmp.w	fp, #101	; 0x65
d004156a:	d10f      	bne.n	d004158c <main+0x8dc>
d004156c:	7c23      	ldrb	r3, [r4, #16]
d004156e:	f04f 0b00 	mov.w	fp, #0
d0041572:	7c61      	ldrb	r1, [r4, #17]
d0041574:	7ca2      	ldrb	r2, [r4, #18]
d0041576:	4658      	mov	r0, fp
d0041578:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d004157c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041580:	7ce2      	ldrb	r2, [r4, #19]
d0041582:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041586:	689b      	ldr	r3, [r3, #8]
d0041588:	689b      	ldr	r3, [r3, #8]
d004158a:	4798      	blx	r3
d004158c:	f8dd a010 	ldr.w	sl, [sp, #16]
d0041590:	f8dd 900c 	ldr.w	r9, [sp, #12]
d0041594:	e6ce      	b.n	d0041334 <main+0x684>
d0041596:	9b06      	ldr	r3, [sp, #24]
d0041598:	2b00      	cmp	r3, #0
d004159a:	f43f aef0 	beq.w	d004137e <main+0x6ce>
d004159e:	f103 3eff 	add.w	lr, r3, #4294967295	; 0xffffffff
d00415a2:	fa5f f38e 	uxtb.w	r3, lr
d00415a6:	f01e 0e03 	ands.w	lr, lr, #3
d00415aa:	9306      	str	r3, [sp, #24]
d00415ac:	f47f aee7 	bne.w	d004137e <main+0x6ce>
d00415b0:	4b3c      	ldr	r3, [pc, #240]	; (d00416a4 <main+0x9f4>)
d00415b2:	681a      	ldr	r2, [r3, #0]
d00415b4:	ea82 3242 	eor.w	r2, r2, r2, lsl #13
d00415b8:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d00415bc:	ea82 1242 	eor.w	r2, r2, r2, lsl #5
d00415c0:	ea82 3c42 	eor.w	ip, r2, r2, lsl #13
d00415c4:	ea8c 4c5c 	eor.w	ip, ip, ip, lsr #17
d00415c8:	ea8c 1c4c 	eor.w	ip, ip, ip, lsl #5
d00415cc:	f8c3 c000 	str.w	ip, [r3]
d00415d0:	e003      	b.n	d00415da <main+0x92a>
d00415d2:	f1be 0f20 	cmp.w	lr, #32
d00415d6:	f43f aed2 	beq.w	d004137e <main+0x6ce>
d00415da:	eb07 134e 	add.w	r3, r7, lr, lsl #5
d00415de:	f10e 0e01 	add.w	lr, lr, #1
d00415e2:	7d99      	ldrb	r1, [r3, #22]
d00415e4:	f103 0016 	add.w	r0, r3, #22
d00415e8:	f001 09ff 	and.w	r9, r1, #255	; 0xff
d00415ec:	2900      	cmp	r1, #0
d00415ee:	d1f0      	bne.n	d00415d2 <main+0x922>
d00415f0:	9007      	str	r0, [sp, #28]
d00415f2:	f04f 0a14 	mov.w	sl, #20
d00415f6:	482c      	ldr	r0, [pc, #176]	; (d00416a8 <main+0x9f8>)
d00415f8:	4649      	mov	r1, r9
d00415fa:	fba0 0e02 	umull	r0, lr, r0, r2
d00415fe:	9807      	ldr	r0, [sp, #28]
d0041600:	eba2 090e 	sub.w	r9, r2, lr
d0041604:	f880 a000 	strb.w	sl, [r0]
d0041608:	4828      	ldr	r0, [pc, #160]	; (d00416ac <main+0x9fc>)
d004160a:	eb0e 0e59 	add.w	lr, lr, r9, lsr #1
d004160e:	7519      	strb	r1, [r3, #20]
d0041610:	fba0 a00c 	umull	sl, r0, r0, ip
d0041614:	ea4f 2e1e 	mov.w	lr, lr, lsr #8
d0041618:	7619      	strb	r1, [r3, #24]
d004161a:	0a00      	lsrs	r0, r0, #8
d004161c:	ebce 190e 	rsb	r9, lr, lr, lsl #4
d0041620:	eb00 0a80 	add.w	sl, r0, r0, lsl #2
d0041624:	eb0e 1e49 	add.w	lr, lr, r9, lsl #5
d0041628:	eb00 108a 	add.w	r0, r0, sl, lsl #6
d004162c:	eba2 020e 	sub.w	r2, r2, lr
d0041630:	ebac 0000 	sub.w	r0, ip, r0
d0041634:	3a20      	subs	r2, #32
d0041636:	3820      	subs	r0, #32
d0041638:	b212      	sxth	r2, r2
d004163a:	b200      	sxth	r0, r0
d004163c:	821a      	strh	r2, [r3, #16]
d004163e:	8258      	strh	r0, [r3, #18]
d0041640:	7519      	strb	r1, [r3, #20]
d0041642:	e69c      	b.n	d004137e <main+0x6ce>
d0041644:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d0041648:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004164c:	d53d      	bpl.n	d00416ca <main+0xa1a>
d004164e:	eef4 7ac8 	vcmpe.f32	s15, s16
d0041652:	4b0d      	ldr	r3, [pc, #52]	; (d0041688 <main+0x9d8>)
d0041654:	2500      	movs	r5, #0
d0041656:	edc3 8a00 	vstr	s17, [r3]
d004165a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004165e:	f73f aee1 	bgt.w	d0041424 <main+0x774>
d0041662:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0041666:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d004166a:	d533      	bpl.n	d00416d4 <main+0xa24>
d004166c:	4b09      	ldr	r3, [pc, #36]	; (d0041694 <main+0x9e4>)
d004166e:	f04f 0900 	mov.w	r9, #0
d0041672:	edc3 8a00 	vstr	s17, [r3]
d0041676:	e6da      	b.n	d004142e <main+0x77e>
d0041678:	d0042a5c 	.word	0xd0042a5c
d004167c:	d00433e0 	.word	0xd00433e0
d0041680:	d0042a60 	.word	0xd0042a60
d0041684:	d0042a4c 	.word	0xd0042a4c
d0041688:	d0042eb0 	.word	0xd0042eb0
d004168c:	d0042a54 	.word	0xd0042a54
d0041690:	d0042a58 	.word	0xd0042a58
d0041694:	d0043400 	.word	0xd0043400
d0041698:	d0043404 	.word	0xd0043404
d004169c:	d0043440 	.word	0xd0043440
d00416a0:	d0043420 	.word	0xd0043420
d00416a4:	d0042a20 	.word	0xd0042a20
d00416a8:	107fbbe1 	.word	0x107fbbe1
d00416ac:	cc29786d 	.word	0xcc29786d
d00416b0:	490b      	ldr	r1, [pc, #44]	; (d00416e0 <main+0xa30>)
d00416b2:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d00416b6:	7be3      	ldrb	r3, [r4, #15]
d00416b8:	6809      	ldr	r1, [r1, #0]
d00416ba:	480a      	ldr	r0, [pc, #40]	; (d00416e4 <main+0xa34>)
d00416bc:	e6db      	b.n	d0041476 <main+0x7c6>
d00416be:	f7ff f9d3 	bl	d0040a68 <fireBullet>
d00416c2:	e651      	b.n	d0041368 <main+0x6b8>
d00416c4:	f7fe fe10 	bl	d00402e8 <spawnFlame>
d00416c8:	e65f      	b.n	d004138a <main+0x6da>
d00416ca:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d00416ce:	ee17 5a10 	vmov	r5, s14
d00416d2:	e6a1      	b.n	d0041418 <main+0x768>
d00416d4:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00416d8:	ee17 9a90 	vmov	r9, s15
d00416dc:	e6a7      	b.n	d004142e <main+0x77e>
d00416de:	bf00      	nop
d00416e0:	d0043440 	.word	0xd0043440
d00416e4:	d0043404 	.word	0xd0043404

d00416e8 <__errno>:
d00416e8:	4b01      	ldr	r3, [pc, #4]	; (d00416f0 <__errno+0x8>)
d00416ea:	6818      	ldr	r0, [r3, #0]
d00416ec:	4770      	bx	lr
d00416ee:	bf00      	nop
d00416f0:	d00421a0 	.word	0xd00421a0

d00416f4 <malloc>:
d00416f4:	4b02      	ldr	r3, [pc, #8]	; (d0041700 <malloc+0xc>)
d00416f6:	4601      	mov	r1, r0
d00416f8:	6818      	ldr	r0, [r3, #0]
d00416fa:	f000 b861 	b.w	d00417c0 <_malloc_r>
d00416fe:	bf00      	nop
d0041700:	d00421a0 	.word	0xd00421a0

d0041704 <memcmp>:
d0041704:	b530      	push	{r4, r5, lr}
d0041706:	3901      	subs	r1, #1
d0041708:	2400      	movs	r4, #0
d004170a:	42a2      	cmp	r2, r4
d004170c:	d101      	bne.n	d0041712 <memcmp+0xe>
d004170e:	2000      	movs	r0, #0
d0041710:	e005      	b.n	d004171e <memcmp+0x1a>
d0041712:	5d03      	ldrb	r3, [r0, r4]
d0041714:	3401      	adds	r4, #1
d0041716:	5d0d      	ldrb	r5, [r1, r4]
d0041718:	42ab      	cmp	r3, r5
d004171a:	d0f6      	beq.n	d004170a <memcmp+0x6>
d004171c:	1b58      	subs	r0, r3, r5
d004171e:	bd30      	pop	{r4, r5, pc}

d0041720 <_free_r>:
d0041720:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0041722:	2900      	cmp	r1, #0
d0041724:	d048      	beq.n	d00417b8 <_free_r+0x98>
d0041726:	f851 3c04 	ldr.w	r3, [r1, #-4]
d004172a:	9001      	str	r0, [sp, #4]
d004172c:	2b00      	cmp	r3, #0
d004172e:	f1a1 0404 	sub.w	r4, r1, #4
d0041732:	bfb8      	it	lt
d0041734:	18e4      	addlt	r4, r4, r3
d0041736:	f000 fb49 	bl	d0041dcc <__malloc_lock>
d004173a:	4a20      	ldr	r2, [pc, #128]	; (d00417bc <_free_r+0x9c>)
d004173c:	9801      	ldr	r0, [sp, #4]
d004173e:	6813      	ldr	r3, [r2, #0]
d0041740:	4615      	mov	r5, r2
d0041742:	b933      	cbnz	r3, d0041752 <_free_r+0x32>
d0041744:	6063      	str	r3, [r4, #4]
d0041746:	6014      	str	r4, [r2, #0]
d0041748:	b003      	add	sp, #12
d004174a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d004174e:	f000 bb43 	b.w	d0041dd8 <__malloc_unlock>
d0041752:	42a3      	cmp	r3, r4
d0041754:	d90b      	bls.n	d004176e <_free_r+0x4e>
d0041756:	6821      	ldr	r1, [r4, #0]
d0041758:	1862      	adds	r2, r4, r1
d004175a:	4293      	cmp	r3, r2
d004175c:	bf04      	itt	eq
d004175e:	681a      	ldreq	r2, [r3, #0]
d0041760:	685b      	ldreq	r3, [r3, #4]
d0041762:	6063      	str	r3, [r4, #4]
d0041764:	bf04      	itt	eq
d0041766:	1852      	addeq	r2, r2, r1
d0041768:	6022      	streq	r2, [r4, #0]
d004176a:	602c      	str	r4, [r5, #0]
d004176c:	e7ec      	b.n	d0041748 <_free_r+0x28>
d004176e:	461a      	mov	r2, r3
d0041770:	685b      	ldr	r3, [r3, #4]
d0041772:	b10b      	cbz	r3, d0041778 <_free_r+0x58>
d0041774:	42a3      	cmp	r3, r4
d0041776:	d9fa      	bls.n	d004176e <_free_r+0x4e>
d0041778:	6811      	ldr	r1, [r2, #0]
d004177a:	1855      	adds	r5, r2, r1
d004177c:	42a5      	cmp	r5, r4
d004177e:	d10b      	bne.n	d0041798 <_free_r+0x78>
d0041780:	6824      	ldr	r4, [r4, #0]
d0041782:	4421      	add	r1, r4
d0041784:	1854      	adds	r4, r2, r1
d0041786:	42a3      	cmp	r3, r4
d0041788:	6011      	str	r1, [r2, #0]
d004178a:	d1dd      	bne.n	d0041748 <_free_r+0x28>
d004178c:	681c      	ldr	r4, [r3, #0]
d004178e:	685b      	ldr	r3, [r3, #4]
d0041790:	6053      	str	r3, [r2, #4]
d0041792:	4421      	add	r1, r4
d0041794:	6011      	str	r1, [r2, #0]
d0041796:	e7d7      	b.n	d0041748 <_free_r+0x28>
d0041798:	d902      	bls.n	d00417a0 <_free_r+0x80>
d004179a:	230c      	movs	r3, #12
d004179c:	6003      	str	r3, [r0, #0]
d004179e:	e7d3      	b.n	d0041748 <_free_r+0x28>
d00417a0:	6825      	ldr	r5, [r4, #0]
d00417a2:	1961      	adds	r1, r4, r5
d00417a4:	428b      	cmp	r3, r1
d00417a6:	bf04      	itt	eq
d00417a8:	6819      	ldreq	r1, [r3, #0]
d00417aa:	685b      	ldreq	r3, [r3, #4]
d00417ac:	6063      	str	r3, [r4, #4]
d00417ae:	bf04      	itt	eq
d00417b0:	1949      	addeq	r1, r1, r5
d00417b2:	6021      	streq	r1, [r4, #0]
d00417b4:	6054      	str	r4, [r2, #4]
d00417b6:	e7c7      	b.n	d0041748 <_free_r+0x28>
d00417b8:	b003      	add	sp, #12
d00417ba:	bd30      	pop	{r4, r5, pc}
d00417bc:	d0042a64 	.word	0xd0042a64

d00417c0 <_malloc_r>:
d00417c0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00417c2:	1ccd      	adds	r5, r1, #3
d00417c4:	f025 0503 	bic.w	r5, r5, #3
d00417c8:	3508      	adds	r5, #8
d00417ca:	2d0c      	cmp	r5, #12
d00417cc:	bf38      	it	cc
d00417ce:	250c      	movcc	r5, #12
d00417d0:	2d00      	cmp	r5, #0
d00417d2:	4606      	mov	r6, r0
d00417d4:	db01      	blt.n	d00417da <_malloc_r+0x1a>
d00417d6:	42a9      	cmp	r1, r5
d00417d8:	d903      	bls.n	d00417e2 <_malloc_r+0x22>
d00417da:	230c      	movs	r3, #12
d00417dc:	6033      	str	r3, [r6, #0]
d00417de:	2000      	movs	r0, #0
d00417e0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00417e2:	f000 faf3 	bl	d0041dcc <__malloc_lock>
d00417e6:	4921      	ldr	r1, [pc, #132]	; (d004186c <_malloc_r+0xac>)
d00417e8:	680a      	ldr	r2, [r1, #0]
d00417ea:	4614      	mov	r4, r2
d00417ec:	b99c      	cbnz	r4, d0041816 <_malloc_r+0x56>
d00417ee:	4f20      	ldr	r7, [pc, #128]	; (d0041870 <_malloc_r+0xb0>)
d00417f0:	683b      	ldr	r3, [r7, #0]
d00417f2:	b923      	cbnz	r3, d00417fe <_malloc_r+0x3e>
d00417f4:	4621      	mov	r1, r4
d00417f6:	4630      	mov	r0, r6
d00417f8:	f7fe fcce 	bl	d0040198 <_sbrk_r>
d00417fc:	6038      	str	r0, [r7, #0]
d00417fe:	4629      	mov	r1, r5
d0041800:	4630      	mov	r0, r6
d0041802:	f7fe fcc9 	bl	d0040198 <_sbrk_r>
d0041806:	1c43      	adds	r3, r0, #1
d0041808:	d123      	bne.n	d0041852 <_malloc_r+0x92>
d004180a:	230c      	movs	r3, #12
d004180c:	6033      	str	r3, [r6, #0]
d004180e:	4630      	mov	r0, r6
d0041810:	f000 fae2 	bl	d0041dd8 <__malloc_unlock>
d0041814:	e7e3      	b.n	d00417de <_malloc_r+0x1e>
d0041816:	6823      	ldr	r3, [r4, #0]
d0041818:	1b5b      	subs	r3, r3, r5
d004181a:	d417      	bmi.n	d004184c <_malloc_r+0x8c>
d004181c:	2b0b      	cmp	r3, #11
d004181e:	d903      	bls.n	d0041828 <_malloc_r+0x68>
d0041820:	6023      	str	r3, [r4, #0]
d0041822:	441c      	add	r4, r3
d0041824:	6025      	str	r5, [r4, #0]
d0041826:	e004      	b.n	d0041832 <_malloc_r+0x72>
d0041828:	6863      	ldr	r3, [r4, #4]
d004182a:	42a2      	cmp	r2, r4
d004182c:	bf0c      	ite	eq
d004182e:	600b      	streq	r3, [r1, #0]
d0041830:	6053      	strne	r3, [r2, #4]
d0041832:	4630      	mov	r0, r6
d0041834:	f000 fad0 	bl	d0041dd8 <__malloc_unlock>
d0041838:	f104 000b 	add.w	r0, r4, #11
d004183c:	1d23      	adds	r3, r4, #4
d004183e:	f020 0007 	bic.w	r0, r0, #7
d0041842:	1ac2      	subs	r2, r0, r3
d0041844:	d0cc      	beq.n	d00417e0 <_malloc_r+0x20>
d0041846:	1a1b      	subs	r3, r3, r0
d0041848:	50a3      	str	r3, [r4, r2]
d004184a:	e7c9      	b.n	d00417e0 <_malloc_r+0x20>
d004184c:	4622      	mov	r2, r4
d004184e:	6864      	ldr	r4, [r4, #4]
d0041850:	e7cc      	b.n	d00417ec <_malloc_r+0x2c>
d0041852:	1cc4      	adds	r4, r0, #3
d0041854:	f024 0403 	bic.w	r4, r4, #3
d0041858:	42a0      	cmp	r0, r4
d004185a:	d0e3      	beq.n	d0041824 <_malloc_r+0x64>
d004185c:	1a21      	subs	r1, r4, r0
d004185e:	4630      	mov	r0, r6
d0041860:	f7fe fc9a 	bl	d0040198 <_sbrk_r>
d0041864:	3001      	adds	r0, #1
d0041866:	d1dd      	bne.n	d0041824 <_malloc_r+0x64>
d0041868:	e7cf      	b.n	d004180a <_malloc_r+0x4a>
d004186a:	bf00      	nop
d004186c:	d0042a64 	.word	0xd0042a64
d0041870:	d0042a68 	.word	0xd0042a68

d0041874 <setbuf>:
d0041874:	2900      	cmp	r1, #0
d0041876:	f44f 6380 	mov.w	r3, #1024	; 0x400
d004187a:	bf0c      	ite	eq
d004187c:	2202      	moveq	r2, #2
d004187e:	2200      	movne	r2, #0
d0041880:	f000 b800 	b.w	d0041884 <setvbuf>

d0041884 <setvbuf>:
d0041884:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0041888:	461d      	mov	r5, r3
d004188a:	4b5d      	ldr	r3, [pc, #372]	; (d0041a00 <setvbuf+0x17c>)
d004188c:	681f      	ldr	r7, [r3, #0]
d004188e:	4604      	mov	r4, r0
d0041890:	460e      	mov	r6, r1
d0041892:	4690      	mov	r8, r2
d0041894:	b127      	cbz	r7, d00418a0 <setvbuf+0x1c>
d0041896:	69bb      	ldr	r3, [r7, #24]
d0041898:	b913      	cbnz	r3, d00418a0 <setvbuf+0x1c>
d004189a:	4638      	mov	r0, r7
d004189c:	f000 f9d2 	bl	d0041c44 <__sinit>
d00418a0:	4b58      	ldr	r3, [pc, #352]	; (d0041a04 <setvbuf+0x180>)
d00418a2:	429c      	cmp	r4, r3
d00418a4:	d167      	bne.n	d0041976 <setvbuf+0xf2>
d00418a6:	687c      	ldr	r4, [r7, #4]
d00418a8:	f1b8 0f02 	cmp.w	r8, #2
d00418ac:	d006      	beq.n	d00418bc <setvbuf+0x38>
d00418ae:	f1b8 0f01 	cmp.w	r8, #1
d00418b2:	f200 809f 	bhi.w	d00419f4 <setvbuf+0x170>
d00418b6:	2d00      	cmp	r5, #0
d00418b8:	f2c0 809c 	blt.w	d00419f4 <setvbuf+0x170>
d00418bc:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00418be:	07db      	lsls	r3, r3, #31
d00418c0:	d405      	bmi.n	d00418ce <setvbuf+0x4a>
d00418c2:	89a3      	ldrh	r3, [r4, #12]
d00418c4:	0598      	lsls	r0, r3, #22
d00418c6:	d402      	bmi.n	d00418ce <setvbuf+0x4a>
d00418c8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00418ca:	f000 fa59 	bl	d0041d80 <__retarget_lock_acquire_recursive>
d00418ce:	4621      	mov	r1, r4
d00418d0:	4638      	mov	r0, r7
d00418d2:	f000 f923 	bl	d0041b1c <_fflush_r>
d00418d6:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00418d8:	b141      	cbz	r1, d00418ec <setvbuf+0x68>
d00418da:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00418de:	4299      	cmp	r1, r3
d00418e0:	d002      	beq.n	d00418e8 <setvbuf+0x64>
d00418e2:	4638      	mov	r0, r7
d00418e4:	f7ff ff1c 	bl	d0041720 <_free_r>
d00418e8:	2300      	movs	r3, #0
d00418ea:	6363      	str	r3, [r4, #52]	; 0x34
d00418ec:	2300      	movs	r3, #0
d00418ee:	61a3      	str	r3, [r4, #24]
d00418f0:	6063      	str	r3, [r4, #4]
d00418f2:	89a3      	ldrh	r3, [r4, #12]
d00418f4:	0619      	lsls	r1, r3, #24
d00418f6:	d503      	bpl.n	d0041900 <setvbuf+0x7c>
d00418f8:	6921      	ldr	r1, [r4, #16]
d00418fa:	4638      	mov	r0, r7
d00418fc:	f7ff ff10 	bl	d0041720 <_free_r>
d0041900:	89a3      	ldrh	r3, [r4, #12]
d0041902:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d0041906:	f023 0303 	bic.w	r3, r3, #3
d004190a:	f1b8 0f02 	cmp.w	r8, #2
d004190e:	81a3      	strh	r3, [r4, #12]
d0041910:	d06c      	beq.n	d00419ec <setvbuf+0x168>
d0041912:	ab01      	add	r3, sp, #4
d0041914:	466a      	mov	r2, sp
d0041916:	4621      	mov	r1, r4
d0041918:	4638      	mov	r0, r7
d004191a:	f000 fa33 	bl	d0041d84 <__swhatbuf_r>
d004191e:	89a3      	ldrh	r3, [r4, #12]
d0041920:	4318      	orrs	r0, r3
d0041922:	81a0      	strh	r0, [r4, #12]
d0041924:	2d00      	cmp	r5, #0
d0041926:	d130      	bne.n	d004198a <setvbuf+0x106>
d0041928:	9d00      	ldr	r5, [sp, #0]
d004192a:	4628      	mov	r0, r5
d004192c:	f7ff fee2 	bl	d00416f4 <malloc>
d0041930:	4606      	mov	r6, r0
d0041932:	2800      	cmp	r0, #0
d0041934:	d155      	bne.n	d00419e2 <setvbuf+0x15e>
d0041936:	f8dd 9000 	ldr.w	r9, [sp]
d004193a:	45a9      	cmp	r9, r5
d004193c:	d14a      	bne.n	d00419d4 <setvbuf+0x150>
d004193e:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0041942:	2200      	movs	r2, #0
d0041944:	60a2      	str	r2, [r4, #8]
d0041946:	f104 0247 	add.w	r2, r4, #71	; 0x47
d004194a:	6022      	str	r2, [r4, #0]
d004194c:	6122      	str	r2, [r4, #16]
d004194e:	2201      	movs	r2, #1
d0041950:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0041954:	6162      	str	r2, [r4, #20]
d0041956:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0041958:	f043 0302 	orr.w	r3, r3, #2
d004195c:	07d2      	lsls	r2, r2, #31
d004195e:	81a3      	strh	r3, [r4, #12]
d0041960:	d405      	bmi.n	d004196e <setvbuf+0xea>
d0041962:	f413 7f00 	tst.w	r3, #512	; 0x200
d0041966:	d102      	bne.n	d004196e <setvbuf+0xea>
d0041968:	6da0      	ldr	r0, [r4, #88]	; 0x58
d004196a:	f000 fa0a 	bl	d0041d82 <__retarget_lock_release_recursive>
d004196e:	4628      	mov	r0, r5
d0041970:	b003      	add	sp, #12
d0041972:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0041976:	4b24      	ldr	r3, [pc, #144]	; (d0041a08 <setvbuf+0x184>)
d0041978:	429c      	cmp	r4, r3
d004197a:	d101      	bne.n	d0041980 <setvbuf+0xfc>
d004197c:	68bc      	ldr	r4, [r7, #8]
d004197e:	e793      	b.n	d00418a8 <setvbuf+0x24>
d0041980:	4b22      	ldr	r3, [pc, #136]	; (d0041a0c <setvbuf+0x188>)
d0041982:	429c      	cmp	r4, r3
d0041984:	bf08      	it	eq
d0041986:	68fc      	ldreq	r4, [r7, #12]
d0041988:	e78e      	b.n	d00418a8 <setvbuf+0x24>
d004198a:	2e00      	cmp	r6, #0
d004198c:	d0cd      	beq.n	d004192a <setvbuf+0xa6>
d004198e:	69bb      	ldr	r3, [r7, #24]
d0041990:	b913      	cbnz	r3, d0041998 <setvbuf+0x114>
d0041992:	4638      	mov	r0, r7
d0041994:	f000 f956 	bl	d0041c44 <__sinit>
d0041998:	f1b8 0f01 	cmp.w	r8, #1
d004199c:	bf08      	it	eq
d004199e:	89a3      	ldrheq	r3, [r4, #12]
d00419a0:	6026      	str	r6, [r4, #0]
d00419a2:	bf04      	itt	eq
d00419a4:	f043 0301 	orreq.w	r3, r3, #1
d00419a8:	81a3      	strheq	r3, [r4, #12]
d00419aa:	89a2      	ldrh	r2, [r4, #12]
d00419ac:	f012 0308 	ands.w	r3, r2, #8
d00419b0:	e9c4 6504 	strd	r6, r5, [r4, #16]
d00419b4:	d01c      	beq.n	d00419f0 <setvbuf+0x16c>
d00419b6:	07d3      	lsls	r3, r2, #31
d00419b8:	bf41      	itttt	mi
d00419ba:	2300      	movmi	r3, #0
d00419bc:	426d      	negmi	r5, r5
d00419be:	60a3      	strmi	r3, [r4, #8]
d00419c0:	61a5      	strmi	r5, [r4, #24]
d00419c2:	bf58      	it	pl
d00419c4:	60a5      	strpl	r5, [r4, #8]
d00419c6:	6e65      	ldr	r5, [r4, #100]	; 0x64
d00419c8:	f015 0501 	ands.w	r5, r5, #1
d00419cc:	d115      	bne.n	d00419fa <setvbuf+0x176>
d00419ce:	f412 7f00 	tst.w	r2, #512	; 0x200
d00419d2:	e7c8      	b.n	d0041966 <setvbuf+0xe2>
d00419d4:	4648      	mov	r0, r9
d00419d6:	f7ff fe8d 	bl	d00416f4 <malloc>
d00419da:	4606      	mov	r6, r0
d00419dc:	2800      	cmp	r0, #0
d00419de:	d0ae      	beq.n	d004193e <setvbuf+0xba>
d00419e0:	464d      	mov	r5, r9
d00419e2:	89a3      	ldrh	r3, [r4, #12]
d00419e4:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00419e8:	81a3      	strh	r3, [r4, #12]
d00419ea:	e7d0      	b.n	d004198e <setvbuf+0x10a>
d00419ec:	2500      	movs	r5, #0
d00419ee:	e7a8      	b.n	d0041942 <setvbuf+0xbe>
d00419f0:	60a3      	str	r3, [r4, #8]
d00419f2:	e7e8      	b.n	d00419c6 <setvbuf+0x142>
d00419f4:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00419f8:	e7b9      	b.n	d004196e <setvbuf+0xea>
d00419fa:	2500      	movs	r5, #0
d00419fc:	e7b7      	b.n	d004196e <setvbuf+0xea>
d00419fe:	bf00      	nop
d0041a00:	d00421a0 	.word	0xd00421a0
d0041a04:	d0042140 	.word	0xd0042140
d0041a08:	d0042160 	.word	0xd0042160
d0041a0c:	d0042120 	.word	0xd0042120

d0041a10 <__sflush_r>:
d0041a10:	898a      	ldrh	r2, [r1, #12]
d0041a12:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0041a16:	4605      	mov	r5, r0
d0041a18:	0710      	lsls	r0, r2, #28
d0041a1a:	460c      	mov	r4, r1
d0041a1c:	d458      	bmi.n	d0041ad0 <__sflush_r+0xc0>
d0041a1e:	684b      	ldr	r3, [r1, #4]
d0041a20:	2b00      	cmp	r3, #0
d0041a22:	dc05      	bgt.n	d0041a30 <__sflush_r+0x20>
d0041a24:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0041a26:	2b00      	cmp	r3, #0
d0041a28:	dc02      	bgt.n	d0041a30 <__sflush_r+0x20>
d0041a2a:	2000      	movs	r0, #0
d0041a2c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0041a30:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0041a32:	2e00      	cmp	r6, #0
d0041a34:	d0f9      	beq.n	d0041a2a <__sflush_r+0x1a>
d0041a36:	2300      	movs	r3, #0
d0041a38:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0041a3c:	682f      	ldr	r7, [r5, #0]
d0041a3e:	602b      	str	r3, [r5, #0]
d0041a40:	d032      	beq.n	d0041aa8 <__sflush_r+0x98>
d0041a42:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0041a44:	89a3      	ldrh	r3, [r4, #12]
d0041a46:	075a      	lsls	r2, r3, #29
d0041a48:	d505      	bpl.n	d0041a56 <__sflush_r+0x46>
d0041a4a:	6863      	ldr	r3, [r4, #4]
d0041a4c:	1ac0      	subs	r0, r0, r3
d0041a4e:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0041a50:	b10b      	cbz	r3, d0041a56 <__sflush_r+0x46>
d0041a52:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0041a54:	1ac0      	subs	r0, r0, r3
d0041a56:	2300      	movs	r3, #0
d0041a58:	4602      	mov	r2, r0
d0041a5a:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0041a5c:	6a21      	ldr	r1, [r4, #32]
d0041a5e:	4628      	mov	r0, r5
d0041a60:	47b0      	blx	r6
d0041a62:	1c43      	adds	r3, r0, #1
d0041a64:	89a3      	ldrh	r3, [r4, #12]
d0041a66:	d106      	bne.n	d0041a76 <__sflush_r+0x66>
d0041a68:	6829      	ldr	r1, [r5, #0]
d0041a6a:	291d      	cmp	r1, #29
d0041a6c:	d82c      	bhi.n	d0041ac8 <__sflush_r+0xb8>
d0041a6e:	4a2a      	ldr	r2, [pc, #168]	; (d0041b18 <__sflush_r+0x108>)
d0041a70:	40ca      	lsrs	r2, r1
d0041a72:	07d6      	lsls	r6, r2, #31
d0041a74:	d528      	bpl.n	d0041ac8 <__sflush_r+0xb8>
d0041a76:	2200      	movs	r2, #0
d0041a78:	6062      	str	r2, [r4, #4]
d0041a7a:	04d9      	lsls	r1, r3, #19
d0041a7c:	6922      	ldr	r2, [r4, #16]
d0041a7e:	6022      	str	r2, [r4, #0]
d0041a80:	d504      	bpl.n	d0041a8c <__sflush_r+0x7c>
d0041a82:	1c42      	adds	r2, r0, #1
d0041a84:	d101      	bne.n	d0041a8a <__sflush_r+0x7a>
d0041a86:	682b      	ldr	r3, [r5, #0]
d0041a88:	b903      	cbnz	r3, d0041a8c <__sflush_r+0x7c>
d0041a8a:	6560      	str	r0, [r4, #84]	; 0x54
d0041a8c:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0041a8e:	602f      	str	r7, [r5, #0]
d0041a90:	2900      	cmp	r1, #0
d0041a92:	d0ca      	beq.n	d0041a2a <__sflush_r+0x1a>
d0041a94:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0041a98:	4299      	cmp	r1, r3
d0041a9a:	d002      	beq.n	d0041aa2 <__sflush_r+0x92>
d0041a9c:	4628      	mov	r0, r5
d0041a9e:	f7ff fe3f 	bl	d0041720 <_free_r>
d0041aa2:	2000      	movs	r0, #0
d0041aa4:	6360      	str	r0, [r4, #52]	; 0x34
d0041aa6:	e7c1      	b.n	d0041a2c <__sflush_r+0x1c>
d0041aa8:	6a21      	ldr	r1, [r4, #32]
d0041aaa:	2301      	movs	r3, #1
d0041aac:	4628      	mov	r0, r5
d0041aae:	47b0      	blx	r6
d0041ab0:	1c41      	adds	r1, r0, #1
d0041ab2:	d1c7      	bne.n	d0041a44 <__sflush_r+0x34>
d0041ab4:	682b      	ldr	r3, [r5, #0]
d0041ab6:	2b00      	cmp	r3, #0
d0041ab8:	d0c4      	beq.n	d0041a44 <__sflush_r+0x34>
d0041aba:	2b1d      	cmp	r3, #29
d0041abc:	d001      	beq.n	d0041ac2 <__sflush_r+0xb2>
d0041abe:	2b16      	cmp	r3, #22
d0041ac0:	d101      	bne.n	d0041ac6 <__sflush_r+0xb6>
d0041ac2:	602f      	str	r7, [r5, #0]
d0041ac4:	e7b1      	b.n	d0041a2a <__sflush_r+0x1a>
d0041ac6:	89a3      	ldrh	r3, [r4, #12]
d0041ac8:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0041acc:	81a3      	strh	r3, [r4, #12]
d0041ace:	e7ad      	b.n	d0041a2c <__sflush_r+0x1c>
d0041ad0:	690f      	ldr	r7, [r1, #16]
d0041ad2:	2f00      	cmp	r7, #0
d0041ad4:	d0a9      	beq.n	d0041a2a <__sflush_r+0x1a>
d0041ad6:	0793      	lsls	r3, r2, #30
d0041ad8:	680e      	ldr	r6, [r1, #0]
d0041ada:	bf08      	it	eq
d0041adc:	694b      	ldreq	r3, [r1, #20]
d0041ade:	600f      	str	r7, [r1, #0]
d0041ae0:	bf18      	it	ne
d0041ae2:	2300      	movne	r3, #0
d0041ae4:	eba6 0807 	sub.w	r8, r6, r7
d0041ae8:	608b      	str	r3, [r1, #8]
d0041aea:	f1b8 0f00 	cmp.w	r8, #0
d0041aee:	dd9c      	ble.n	d0041a2a <__sflush_r+0x1a>
d0041af0:	6a21      	ldr	r1, [r4, #32]
d0041af2:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0041af4:	4643      	mov	r3, r8
d0041af6:	463a      	mov	r2, r7
d0041af8:	4628      	mov	r0, r5
d0041afa:	47b0      	blx	r6
d0041afc:	2800      	cmp	r0, #0
d0041afe:	dc06      	bgt.n	d0041b0e <__sflush_r+0xfe>
d0041b00:	89a3      	ldrh	r3, [r4, #12]
d0041b02:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0041b06:	81a3      	strh	r3, [r4, #12]
d0041b08:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0041b0c:	e78e      	b.n	d0041a2c <__sflush_r+0x1c>
d0041b0e:	4407      	add	r7, r0
d0041b10:	eba8 0800 	sub.w	r8, r8, r0
d0041b14:	e7e9      	b.n	d0041aea <__sflush_r+0xda>
d0041b16:	bf00      	nop
d0041b18:	20400001 	.word	0x20400001

d0041b1c <_fflush_r>:
d0041b1c:	b538      	push	{r3, r4, r5, lr}
d0041b1e:	690b      	ldr	r3, [r1, #16]
d0041b20:	4605      	mov	r5, r0
d0041b22:	460c      	mov	r4, r1
d0041b24:	b913      	cbnz	r3, d0041b2c <_fflush_r+0x10>
d0041b26:	2500      	movs	r5, #0
d0041b28:	4628      	mov	r0, r5
d0041b2a:	bd38      	pop	{r3, r4, r5, pc}
d0041b2c:	b118      	cbz	r0, d0041b36 <_fflush_r+0x1a>
d0041b2e:	6983      	ldr	r3, [r0, #24]
d0041b30:	b90b      	cbnz	r3, d0041b36 <_fflush_r+0x1a>
d0041b32:	f000 f887 	bl	d0041c44 <__sinit>
d0041b36:	4b14      	ldr	r3, [pc, #80]	; (d0041b88 <_fflush_r+0x6c>)
d0041b38:	429c      	cmp	r4, r3
d0041b3a:	d11b      	bne.n	d0041b74 <_fflush_r+0x58>
d0041b3c:	686c      	ldr	r4, [r5, #4]
d0041b3e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0041b42:	2b00      	cmp	r3, #0
d0041b44:	d0ef      	beq.n	d0041b26 <_fflush_r+0xa>
d0041b46:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0041b48:	07d0      	lsls	r0, r2, #31
d0041b4a:	d404      	bmi.n	d0041b56 <_fflush_r+0x3a>
d0041b4c:	0599      	lsls	r1, r3, #22
d0041b4e:	d402      	bmi.n	d0041b56 <_fflush_r+0x3a>
d0041b50:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0041b52:	f000 f915 	bl	d0041d80 <__retarget_lock_acquire_recursive>
d0041b56:	4628      	mov	r0, r5
d0041b58:	4621      	mov	r1, r4
d0041b5a:	f7ff ff59 	bl	d0041a10 <__sflush_r>
d0041b5e:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0041b60:	07da      	lsls	r2, r3, #31
d0041b62:	4605      	mov	r5, r0
d0041b64:	d4e0      	bmi.n	d0041b28 <_fflush_r+0xc>
d0041b66:	89a3      	ldrh	r3, [r4, #12]
d0041b68:	059b      	lsls	r3, r3, #22
d0041b6a:	d4dd      	bmi.n	d0041b28 <_fflush_r+0xc>
d0041b6c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0041b6e:	f000 f908 	bl	d0041d82 <__retarget_lock_release_recursive>
d0041b72:	e7d9      	b.n	d0041b28 <_fflush_r+0xc>
d0041b74:	4b05      	ldr	r3, [pc, #20]	; (d0041b8c <_fflush_r+0x70>)
d0041b76:	429c      	cmp	r4, r3
d0041b78:	d101      	bne.n	d0041b7e <_fflush_r+0x62>
d0041b7a:	68ac      	ldr	r4, [r5, #8]
d0041b7c:	e7df      	b.n	d0041b3e <_fflush_r+0x22>
d0041b7e:	4b04      	ldr	r3, [pc, #16]	; (d0041b90 <_fflush_r+0x74>)
d0041b80:	429c      	cmp	r4, r3
d0041b82:	bf08      	it	eq
d0041b84:	68ec      	ldreq	r4, [r5, #12]
d0041b86:	e7da      	b.n	d0041b3e <_fflush_r+0x22>
d0041b88:	d0042140 	.word	0xd0042140
d0041b8c:	d0042160 	.word	0xd0042160
d0041b90:	d0042120 	.word	0xd0042120

d0041b94 <std>:
d0041b94:	2300      	movs	r3, #0
d0041b96:	b510      	push	{r4, lr}
d0041b98:	4604      	mov	r4, r0
d0041b9a:	e9c0 3300 	strd	r3, r3, [r0]
d0041b9e:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0041ba2:	6083      	str	r3, [r0, #8]
d0041ba4:	8181      	strh	r1, [r0, #12]
d0041ba6:	6643      	str	r3, [r0, #100]	; 0x64
d0041ba8:	81c2      	strh	r2, [r0, #14]
d0041baa:	6183      	str	r3, [r0, #24]
d0041bac:	4619      	mov	r1, r3
d0041bae:	2208      	movs	r2, #8
d0041bb0:	305c      	adds	r0, #92	; 0x5c
d0041bb2:	f7fe fa43 	bl	d004003c <memset>
d0041bb6:	4b05      	ldr	r3, [pc, #20]	; (d0041bcc <std+0x38>)
d0041bb8:	6263      	str	r3, [r4, #36]	; 0x24
d0041bba:	4b05      	ldr	r3, [pc, #20]	; (d0041bd0 <std+0x3c>)
d0041bbc:	62a3      	str	r3, [r4, #40]	; 0x28
d0041bbe:	4b05      	ldr	r3, [pc, #20]	; (d0041bd4 <std+0x40>)
d0041bc0:	62e3      	str	r3, [r4, #44]	; 0x2c
d0041bc2:	4b05      	ldr	r3, [pc, #20]	; (d0041bd8 <std+0x44>)
d0041bc4:	6224      	str	r4, [r4, #32]
d0041bc6:	6323      	str	r3, [r4, #48]	; 0x30
d0041bc8:	bd10      	pop	{r4, pc}
d0041bca:	bf00      	nop
d0041bcc:	d0041de5 	.word	0xd0041de5
d0041bd0:	d0041e07 	.word	0xd0041e07
d0041bd4:	d0041e3f 	.word	0xd0041e3f
d0041bd8:	d0041e63 	.word	0xd0041e63

d0041bdc <_cleanup_r>:
d0041bdc:	4901      	ldr	r1, [pc, #4]	; (d0041be4 <_cleanup_r+0x8>)
d0041bde:	f000 b8af 	b.w	d0041d40 <_fwalk_reent>
d0041be2:	bf00      	nop
d0041be4:	d0041b1d 	.word	0xd0041b1d

d0041be8 <__sfmoreglue>:
d0041be8:	b570      	push	{r4, r5, r6, lr}
d0041bea:	1e4a      	subs	r2, r1, #1
d0041bec:	2568      	movs	r5, #104	; 0x68
d0041bee:	4355      	muls	r5, r2
d0041bf0:	460e      	mov	r6, r1
d0041bf2:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0041bf6:	f7ff fde3 	bl	d00417c0 <_malloc_r>
d0041bfa:	4604      	mov	r4, r0
d0041bfc:	b140      	cbz	r0, d0041c10 <__sfmoreglue+0x28>
d0041bfe:	2100      	movs	r1, #0
d0041c00:	e9c0 1600 	strd	r1, r6, [r0]
d0041c04:	300c      	adds	r0, #12
d0041c06:	60a0      	str	r0, [r4, #8]
d0041c08:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0041c0c:	f7fe fa16 	bl	d004003c <memset>
d0041c10:	4620      	mov	r0, r4
d0041c12:	bd70      	pop	{r4, r5, r6, pc}

d0041c14 <__sfp_lock_acquire>:
d0041c14:	4801      	ldr	r0, [pc, #4]	; (d0041c1c <__sfp_lock_acquire+0x8>)
d0041c16:	f000 b8b3 	b.w	d0041d80 <__retarget_lock_acquire_recursive>
d0041c1a:	bf00      	nop
d0041c1c:	d004384c 	.word	0xd004384c

d0041c20 <__sfp_lock_release>:
d0041c20:	4801      	ldr	r0, [pc, #4]	; (d0041c28 <__sfp_lock_release+0x8>)
d0041c22:	f000 b8ae 	b.w	d0041d82 <__retarget_lock_release_recursive>
d0041c26:	bf00      	nop
d0041c28:	d004384c 	.word	0xd004384c

d0041c2c <__sinit_lock_acquire>:
d0041c2c:	4801      	ldr	r0, [pc, #4]	; (d0041c34 <__sinit_lock_acquire+0x8>)
d0041c2e:	f000 b8a7 	b.w	d0041d80 <__retarget_lock_acquire_recursive>
d0041c32:	bf00      	nop
d0041c34:	d0043847 	.word	0xd0043847

d0041c38 <__sinit_lock_release>:
d0041c38:	4801      	ldr	r0, [pc, #4]	; (d0041c40 <__sinit_lock_release+0x8>)
d0041c3a:	f000 b8a2 	b.w	d0041d82 <__retarget_lock_release_recursive>
d0041c3e:	bf00      	nop
d0041c40:	d0043847 	.word	0xd0043847

d0041c44 <__sinit>:
d0041c44:	b510      	push	{r4, lr}
d0041c46:	4604      	mov	r4, r0
d0041c48:	f7ff fff0 	bl	d0041c2c <__sinit_lock_acquire>
d0041c4c:	69a3      	ldr	r3, [r4, #24]
d0041c4e:	b11b      	cbz	r3, d0041c58 <__sinit+0x14>
d0041c50:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0041c54:	f7ff bff0 	b.w	d0041c38 <__sinit_lock_release>
d0041c58:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0041c5c:	6523      	str	r3, [r4, #80]	; 0x50
d0041c5e:	4b13      	ldr	r3, [pc, #76]	; (d0041cac <__sinit+0x68>)
d0041c60:	4a13      	ldr	r2, [pc, #76]	; (d0041cb0 <__sinit+0x6c>)
d0041c62:	681b      	ldr	r3, [r3, #0]
d0041c64:	62a2      	str	r2, [r4, #40]	; 0x28
d0041c66:	42a3      	cmp	r3, r4
d0041c68:	bf04      	itt	eq
d0041c6a:	2301      	moveq	r3, #1
d0041c6c:	61a3      	streq	r3, [r4, #24]
d0041c6e:	4620      	mov	r0, r4
d0041c70:	f000 f820 	bl	d0041cb4 <__sfp>
d0041c74:	6060      	str	r0, [r4, #4]
d0041c76:	4620      	mov	r0, r4
d0041c78:	f000 f81c 	bl	d0041cb4 <__sfp>
d0041c7c:	60a0      	str	r0, [r4, #8]
d0041c7e:	4620      	mov	r0, r4
d0041c80:	f000 f818 	bl	d0041cb4 <__sfp>
d0041c84:	2200      	movs	r2, #0
d0041c86:	60e0      	str	r0, [r4, #12]
d0041c88:	2104      	movs	r1, #4
d0041c8a:	6860      	ldr	r0, [r4, #4]
d0041c8c:	f7ff ff82 	bl	d0041b94 <std>
d0041c90:	68a0      	ldr	r0, [r4, #8]
d0041c92:	2201      	movs	r2, #1
d0041c94:	2109      	movs	r1, #9
d0041c96:	f7ff ff7d 	bl	d0041b94 <std>
d0041c9a:	68e0      	ldr	r0, [r4, #12]
d0041c9c:	2202      	movs	r2, #2
d0041c9e:	2112      	movs	r1, #18
d0041ca0:	f7ff ff78 	bl	d0041b94 <std>
d0041ca4:	2301      	movs	r3, #1
d0041ca6:	61a3      	str	r3, [r4, #24]
d0041ca8:	e7d2      	b.n	d0041c50 <__sinit+0xc>
d0041caa:	bf00      	nop
d0041cac:	d0041ef8 	.word	0xd0041ef8
d0041cb0:	d0041bdd 	.word	0xd0041bdd

d0041cb4 <__sfp>:
d0041cb4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0041cb6:	4607      	mov	r7, r0
d0041cb8:	f7ff ffac 	bl	d0041c14 <__sfp_lock_acquire>
d0041cbc:	4b1e      	ldr	r3, [pc, #120]	; (d0041d38 <__sfp+0x84>)
d0041cbe:	681e      	ldr	r6, [r3, #0]
d0041cc0:	69b3      	ldr	r3, [r6, #24]
d0041cc2:	b913      	cbnz	r3, d0041cca <__sfp+0x16>
d0041cc4:	4630      	mov	r0, r6
d0041cc6:	f7ff ffbd 	bl	d0041c44 <__sinit>
d0041cca:	3648      	adds	r6, #72	; 0x48
d0041ccc:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0041cd0:	3b01      	subs	r3, #1
d0041cd2:	d503      	bpl.n	d0041cdc <__sfp+0x28>
d0041cd4:	6833      	ldr	r3, [r6, #0]
d0041cd6:	b30b      	cbz	r3, d0041d1c <__sfp+0x68>
d0041cd8:	6836      	ldr	r6, [r6, #0]
d0041cda:	e7f7      	b.n	d0041ccc <__sfp+0x18>
d0041cdc:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0041ce0:	b9d5      	cbnz	r5, d0041d18 <__sfp+0x64>
d0041ce2:	4b16      	ldr	r3, [pc, #88]	; (d0041d3c <__sfp+0x88>)
d0041ce4:	60e3      	str	r3, [r4, #12]
d0041ce6:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0041cea:	6665      	str	r5, [r4, #100]	; 0x64
d0041cec:	f000 f847 	bl	d0041d7e <__retarget_lock_init_recursive>
d0041cf0:	f7ff ff96 	bl	d0041c20 <__sfp_lock_release>
d0041cf4:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0041cf8:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0041cfc:	6025      	str	r5, [r4, #0]
d0041cfe:	61a5      	str	r5, [r4, #24]
d0041d00:	2208      	movs	r2, #8
d0041d02:	4629      	mov	r1, r5
d0041d04:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0041d08:	f7fe f998 	bl	d004003c <memset>
d0041d0c:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0041d10:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0041d14:	4620      	mov	r0, r4
d0041d16:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0041d18:	3468      	adds	r4, #104	; 0x68
d0041d1a:	e7d9      	b.n	d0041cd0 <__sfp+0x1c>
d0041d1c:	2104      	movs	r1, #4
d0041d1e:	4638      	mov	r0, r7
d0041d20:	f7ff ff62 	bl	d0041be8 <__sfmoreglue>
d0041d24:	4604      	mov	r4, r0
d0041d26:	6030      	str	r0, [r6, #0]
d0041d28:	2800      	cmp	r0, #0
d0041d2a:	d1d5      	bne.n	d0041cd8 <__sfp+0x24>
d0041d2c:	f7ff ff78 	bl	d0041c20 <__sfp_lock_release>
d0041d30:	230c      	movs	r3, #12
d0041d32:	603b      	str	r3, [r7, #0]
d0041d34:	e7ee      	b.n	d0041d14 <__sfp+0x60>
d0041d36:	bf00      	nop
d0041d38:	d0041ef8 	.word	0xd0041ef8
d0041d3c:	ffff0001 	.word	0xffff0001

d0041d40 <_fwalk_reent>:
d0041d40:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0041d44:	4606      	mov	r6, r0
d0041d46:	4688      	mov	r8, r1
d0041d48:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0041d4c:	2700      	movs	r7, #0
d0041d4e:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0041d52:	f1b9 0901 	subs.w	r9, r9, #1
d0041d56:	d505      	bpl.n	d0041d64 <_fwalk_reent+0x24>
d0041d58:	6824      	ldr	r4, [r4, #0]
d0041d5a:	2c00      	cmp	r4, #0
d0041d5c:	d1f7      	bne.n	d0041d4e <_fwalk_reent+0xe>
d0041d5e:	4638      	mov	r0, r7
d0041d60:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0041d64:	89ab      	ldrh	r3, [r5, #12]
d0041d66:	2b01      	cmp	r3, #1
d0041d68:	d907      	bls.n	d0041d7a <_fwalk_reent+0x3a>
d0041d6a:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0041d6e:	3301      	adds	r3, #1
d0041d70:	d003      	beq.n	d0041d7a <_fwalk_reent+0x3a>
d0041d72:	4629      	mov	r1, r5
d0041d74:	4630      	mov	r0, r6
d0041d76:	47c0      	blx	r8
d0041d78:	4307      	orrs	r7, r0
d0041d7a:	3568      	adds	r5, #104	; 0x68
d0041d7c:	e7e9      	b.n	d0041d52 <_fwalk_reent+0x12>

d0041d7e <__retarget_lock_init_recursive>:
d0041d7e:	4770      	bx	lr

d0041d80 <__retarget_lock_acquire_recursive>:
d0041d80:	4770      	bx	lr

d0041d82 <__retarget_lock_release_recursive>:
d0041d82:	4770      	bx	lr

d0041d84 <__swhatbuf_r>:
d0041d84:	b570      	push	{r4, r5, r6, lr}
d0041d86:	460e      	mov	r6, r1
d0041d88:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0041d8c:	2900      	cmp	r1, #0
d0041d8e:	b096      	sub	sp, #88	; 0x58
d0041d90:	4614      	mov	r4, r2
d0041d92:	461d      	mov	r5, r3
d0041d94:	da07      	bge.n	d0041da6 <__swhatbuf_r+0x22>
d0041d96:	2300      	movs	r3, #0
d0041d98:	602b      	str	r3, [r5, #0]
d0041d9a:	89b3      	ldrh	r3, [r6, #12]
d0041d9c:	061a      	lsls	r2, r3, #24
d0041d9e:	d410      	bmi.n	d0041dc2 <__swhatbuf_r+0x3e>
d0041da0:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0041da4:	e00e      	b.n	d0041dc4 <__swhatbuf_r+0x40>
d0041da6:	466a      	mov	r2, sp
d0041da8:	f000 f870 	bl	d0041e8c <_fstat_r>
d0041dac:	2800      	cmp	r0, #0
d0041dae:	dbf2      	blt.n	d0041d96 <__swhatbuf_r+0x12>
d0041db0:	9a01      	ldr	r2, [sp, #4]
d0041db2:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0041db6:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0041dba:	425a      	negs	r2, r3
d0041dbc:	415a      	adcs	r2, r3
d0041dbe:	602a      	str	r2, [r5, #0]
d0041dc0:	e7ee      	b.n	d0041da0 <__swhatbuf_r+0x1c>
d0041dc2:	2340      	movs	r3, #64	; 0x40
d0041dc4:	2000      	movs	r0, #0
d0041dc6:	6023      	str	r3, [r4, #0]
d0041dc8:	b016      	add	sp, #88	; 0x58
d0041dca:	bd70      	pop	{r4, r5, r6, pc}

d0041dcc <__malloc_lock>:
d0041dcc:	4801      	ldr	r0, [pc, #4]	; (d0041dd4 <__malloc_lock+0x8>)
d0041dce:	f7ff bfd7 	b.w	d0041d80 <__retarget_lock_acquire_recursive>
d0041dd2:	bf00      	nop
d0041dd4:	d0043848 	.word	0xd0043848

d0041dd8 <__malloc_unlock>:
d0041dd8:	4801      	ldr	r0, [pc, #4]	; (d0041de0 <__malloc_unlock+0x8>)
d0041dda:	f7ff bfd2 	b.w	d0041d82 <__retarget_lock_release_recursive>
d0041dde:	bf00      	nop
d0041de0:	d0043848 	.word	0xd0043848

d0041de4 <__sread>:
d0041de4:	b510      	push	{r4, lr}
d0041de6:	460c      	mov	r4, r1
d0041de8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0041dec:	f000 f872 	bl	d0041ed4 <_read_r>
d0041df0:	2800      	cmp	r0, #0
d0041df2:	bfab      	itete	ge
d0041df4:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0041df6:	89a3      	ldrhlt	r3, [r4, #12]
d0041df8:	181b      	addge	r3, r3, r0
d0041dfa:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d0041dfe:	bfac      	ite	ge
d0041e00:	6563      	strge	r3, [r4, #84]	; 0x54
d0041e02:	81a3      	strhlt	r3, [r4, #12]
d0041e04:	bd10      	pop	{r4, pc}

d0041e06 <__swrite>:
d0041e06:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0041e0a:	461f      	mov	r7, r3
d0041e0c:	898b      	ldrh	r3, [r1, #12]
d0041e0e:	05db      	lsls	r3, r3, #23
d0041e10:	4605      	mov	r5, r0
d0041e12:	460c      	mov	r4, r1
d0041e14:	4616      	mov	r6, r2
d0041e16:	d505      	bpl.n	d0041e24 <__swrite+0x1e>
d0041e18:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0041e1c:	2302      	movs	r3, #2
d0041e1e:	2200      	movs	r2, #0
d0041e20:	f000 f846 	bl	d0041eb0 <_lseek_r>
d0041e24:	89a3      	ldrh	r3, [r4, #12]
d0041e26:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0041e2a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0041e2e:	81a3      	strh	r3, [r4, #12]
d0041e30:	4632      	mov	r2, r6
d0041e32:	463b      	mov	r3, r7
d0041e34:	4628      	mov	r0, r5
d0041e36:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0041e3a:	f7fe b967 	b.w	d004010c <_write_r>

d0041e3e <__sseek>:
d0041e3e:	b510      	push	{r4, lr}
d0041e40:	460c      	mov	r4, r1
d0041e42:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0041e46:	f000 f833 	bl	d0041eb0 <_lseek_r>
d0041e4a:	1c43      	adds	r3, r0, #1
d0041e4c:	89a3      	ldrh	r3, [r4, #12]
d0041e4e:	bf15      	itete	ne
d0041e50:	6560      	strne	r0, [r4, #84]	; 0x54
d0041e52:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0041e56:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d0041e5a:	81a3      	strheq	r3, [r4, #12]
d0041e5c:	bf18      	it	ne
d0041e5e:	81a3      	strhne	r3, [r4, #12]
d0041e60:	bd10      	pop	{r4, pc}

d0041e62 <__sclose>:
d0041e62:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0041e66:	f000 b801 	b.w	d0041e6c <_close_r>
	...

d0041e6c <_close_r>:
d0041e6c:	b538      	push	{r3, r4, r5, lr}
d0041e6e:	4d06      	ldr	r5, [pc, #24]	; (d0041e88 <_close_r+0x1c>)
d0041e70:	2300      	movs	r3, #0
d0041e72:	4604      	mov	r4, r0
d0041e74:	4608      	mov	r0, r1
d0041e76:	602b      	str	r3, [r5, #0]
d0041e78:	f7fe f982 	bl	d0040180 <_close>
d0041e7c:	1c43      	adds	r3, r0, #1
d0041e7e:	d102      	bne.n	d0041e86 <_close_r+0x1a>
d0041e80:	682b      	ldr	r3, [r5, #0]
d0041e82:	b103      	cbz	r3, d0041e86 <_close_r+0x1a>
d0041e84:	6023      	str	r3, [r4, #0]
d0041e86:	bd38      	pop	{r3, r4, r5, pc}
d0041e88:	d0043850 	.word	0xd0043850

d0041e8c <_fstat_r>:
d0041e8c:	b538      	push	{r3, r4, r5, lr}
d0041e8e:	4d07      	ldr	r5, [pc, #28]	; (d0041eac <_fstat_r+0x20>)
d0041e90:	2300      	movs	r3, #0
d0041e92:	4604      	mov	r4, r0
d0041e94:	4608      	mov	r0, r1
d0041e96:	4611      	mov	r1, r2
d0041e98:	602b      	str	r3, [r5, #0]
d0041e9a:	f7fe f975 	bl	d0040188 <_fstat>
d0041e9e:	1c43      	adds	r3, r0, #1
d0041ea0:	d102      	bne.n	d0041ea8 <_fstat_r+0x1c>
d0041ea2:	682b      	ldr	r3, [r5, #0]
d0041ea4:	b103      	cbz	r3, d0041ea8 <_fstat_r+0x1c>
d0041ea6:	6023      	str	r3, [r4, #0]
d0041ea8:	bd38      	pop	{r3, r4, r5, pc}
d0041eaa:	bf00      	nop
d0041eac:	d0043850 	.word	0xd0043850

d0041eb0 <_lseek_r>:
d0041eb0:	b538      	push	{r3, r4, r5, lr}
d0041eb2:	4d07      	ldr	r5, [pc, #28]	; (d0041ed0 <_lseek_r+0x20>)
d0041eb4:	4604      	mov	r4, r0
d0041eb6:	4608      	mov	r0, r1
d0041eb8:	4611      	mov	r1, r2
d0041eba:	2200      	movs	r2, #0
d0041ebc:	602a      	str	r2, [r5, #0]
d0041ebe:	461a      	mov	r2, r3
d0041ec0:	f7fe f968 	bl	d0040194 <_lseek>
d0041ec4:	1c43      	adds	r3, r0, #1
d0041ec6:	d102      	bne.n	d0041ece <_lseek_r+0x1e>
d0041ec8:	682b      	ldr	r3, [r5, #0]
d0041eca:	b103      	cbz	r3, d0041ece <_lseek_r+0x1e>
d0041ecc:	6023      	str	r3, [r4, #0]
d0041ece:	bd38      	pop	{r3, r4, r5, pc}
d0041ed0:	d0043850 	.word	0xd0043850

d0041ed4 <_read_r>:
d0041ed4:	b538      	push	{r3, r4, r5, lr}
d0041ed6:	4d07      	ldr	r5, [pc, #28]	; (d0041ef4 <_read_r+0x20>)
d0041ed8:	4604      	mov	r4, r0
d0041eda:	4608      	mov	r0, r1
d0041edc:	4611      	mov	r1, r2
d0041ede:	2200      	movs	r2, #0
d0041ee0:	602a      	str	r2, [r5, #0]
d0041ee2:	461a      	mov	r2, r3
d0041ee4:	f7fe f942 	bl	d004016c <_read>
d0041ee8:	1c43      	adds	r3, r0, #1
d0041eea:	d102      	bne.n	d0041ef2 <_read_r+0x1e>
d0041eec:	682b      	ldr	r3, [r5, #0]
d0041eee:	b103      	cbz	r3, d0041ef2 <_read_r+0x1e>
d0041ef0:	6023      	str	r3, [r4, #0]
d0041ef2:	bd38      	pop	{r3, r4, r5, pc}
d0041ef4:	d0043850 	.word	0xd0043850

d0041ef8 <_global_impure_ptr>:
d0041ef8:	d00421a4 46464952 00000000 45564157     .!..RIFF....WAVE
d0041f08:	00000000 2f736572 72747865 66696c61     ....res/extralif
d0041f18:	61772e65 00000076 2f736572 65726966     e.wav...res/fire
d0041f28:	61772e6d 00000076 2f736572 656c6473     m.wav...res/sdle
d0041f38:	6d2e3176 0000646f 2f736572 72747361     v1.mod..res/astr
d0041f48:	5f64696f 6772616c 2e315f65 00627070     oid_large_1.ppb.
d0041f58:	2f736572 72747361 5f64696f 6964656d     res/astroid_medi
d0041f68:	315f6d75 6270702e 00000000 2f736572     um_1.ppb....res/
d0041f78:	72747361 5f64696f 6964656d 325f6d75     astroid_medium_2
d0041f88:	6270702e 00000000 2f736572 72747361     .ppb....res/astr
d0041f98:	5f64696f 6c616d73 2e325f6c 00627070     oid_small_2.ppb.
d0041fa8:	2f736572 70696873 702e7372 00006270     res/shiprs.ppb..
d0041fb8:	2f736572 6c6c7562 5f737465 65707974     res/bullets_type
d0041fc8:	70702e31 00000062 2f736572 6d616c66     1.ppb...res/flam
d0041fd8:	702e7365 00006270 2f736572 6c707865     es.ppb..res/expl
d0041fe8:	2e65646f 00627070 2f736572 6b636162     ode.ppb.res/back
d0041ff8:	6270702e 00000000                       .ppb....

d0042000 <dirTable>:
d0042000:	00000000 3f800000 3e31c433 3f7c1bda     .......?3.1>..|?
d0042010:	3eaf1aa0 3f70902e 3f000000 3f5db22d     ...>..p?...?-.]?
d0042020:	3f248e8a 3f441893 3f441893 3f248e8a     ..$?..D?..D?..$?
d0042030:	3f5db22d 3f000000 3f70902e 3eaf1aa0     -.]?...?..p?...>
d0042040:	3f7c1bda 3e31c433 3f800000 00000000     ..|?3.1>...?....
d0042050:	3f7c1bda be31c433 3f70902e beaf1aa0     ..|?3.1...p?....
d0042060:	3f5db22d bf000000 3f441893 bf248e8a     -.]?......D?..$.
d0042070:	3f248e8a bf441893 3f000000 bf5db22d     ..$?..D....?-.].
d0042080:	3eaf1aa0 bf70902e 3e31c433 bf7c1bda     ...>..p.3.1>..|.
d0042090:	00000000 bf800000 be31c433 bf7c1bda     ........3.1...|.
d00420a0:	beaf1aa0 bf70902e bf000000 bf5db22d     ......p.....-.].
d00420b0:	bf248e8a bf441893 bf441893 bf248e8a     ..$...D...D...$.
d00420c0:	bf5db22d bf000000 bf70902e beaf1aa0     -.].......p.....
d00420d0:	bf7c1bda be31c433 bf800000 00000000     ..|.3.1.........
d00420e0:	bf7c1bda 3e31c433 bf70902e 3eaf1aa0     ..|.3.1>..p....>
d00420f0:	bf5db22d 3f000000 bf441893 3f248e8a     -.]....?..D...$?
d0042100:	bf248e8a 3f441893 bf000000 3f5db22d     ..$...D?....-.]?
d0042110:	beaf1aa0 3f70902e be31c433 3f7c1bda     ......p?3.1...|?

d0042120 <__sf_fake_stderr>:
	...

d0042140 <__sf_fake_stdin>:
	...

d0042160 <__sf_fake_stdout>:
	...

Disassembly of section .init:

d0042180 <_init>:
d0042180:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0042182:	bf00      	nop

Disassembly of section .fini:

d0042184 <_fini>:
d0042184:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0042186:	bf00      	nop
