
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
d004001e:	f001 fc0b 	bl	d0041838 <setbuf>
d0040022:	6833      	ldr	r3, [r6, #0]
d0040024:	2100      	movs	r1, #0
d0040026:	68d8      	ldr	r0, [r3, #12]
d0040028:	f001 fc06 	bl	d0041838 <setbuf>
d004002c:	4629      	mov	r1, r5
d004002e:	4620      	mov	r0, r4
d0040030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0040034:	f000 bdd8 	b.w	d0040be8 <main>
d0040038:	d0042204 	.word	0xd0042204

d004003c <initMalloc>:
d004003c:	4902      	ldr	r1, [pc, #8]	; (d0040048 <initMalloc+0xc>)
d004003e:	4b03      	ldr	r3, [pc, #12]	; (d004004c <initMalloc+0x10>)
d0040040:	4a03      	ldr	r2, [pc, #12]	; (d0040050 <initMalloc+0x14>)
d0040042:	1a5b      	subs	r3, r3, r1
d0040044:	6013      	str	r3, [r2, #0]
d0040046:	4770      	bx	lr
d0040048:	d00442e0 	.word	0xd00442e0
d004004c:	d0600000 	.word	0xd0600000
d0040050:	d0042294 	.word	0xd0042294

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
d004009c:	f001 f8b8 	bl	d0041210 <__errno>
d00400a0:	2209      	movs	r2, #9
d00400a2:	4603      	mov	r3, r0
d00400a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00400a8:	601a      	str	r2, [r3, #0]
d00400aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00400ac:	d0042284 	.word	0xd0042284
d00400b0:	2001f000 	.word	0x2001f000

d00400b4 <_read>:
d00400b4:	b508      	push	{r3, lr}
d00400b6:	f001 f8ab 	bl	d0041210 <__errno>
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
d0040102:	f001 f885 	bl	d0041210 <__errno>
d0040106:	220c      	movs	r2, #12
d0040108:	4603      	mov	r3, r0
d004010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d004010e:	601a      	str	r2, [r3, #0]
d0040110:	bd10      	pop	{r4, pc}
d0040112:	bf00      	nop
d0040114:	d0042280 	.word	0xd0042280
d0040118:	d00442e0 	.word	0xd00442e0
d004011c:	d0600000 	.word	0xd0600000

d0040120 <createBox>:
d0040120:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0040124:	2300      	movs	r3, #0
d0040126:	2208      	movs	r2, #8
d0040128:	4606      	mov	r6, r0
d004012a:	2060      	movs	r0, #96	; 0x60
d004012c:	250c      	movs	r5, #12
d004012e:	4f52      	ldr	r7, [pc, #328]	; (d0040278 <createBox+0x158>)
d0040130:	f04f 08c0 	mov.w	r8, #192	; 0xc0
d0040134:	ed2d 8b04 	vpush	{d8-d9}
d0040138:	b0d4      	sub	sp, #336	; 0x150
d004013a:	eeb0 8a41 	vmov.f32	s16, s2
d004013e:	eeb0 9a40 	vmov.f32	s18, s0
d0040142:	9201      	str	r2, [sp, #4]
d0040144:	eef0 8a60 	vmov.f32	s17, s1
d0040148:	9306      	str	r3, [sp, #24]
d004014a:	9307      	str	r3, [sp, #28]
d004014c:	e9cd 3308 	strd	r3, r3, [sp, #32]
d0040150:	e9cd 330a 	strd	r3, r3, [sp, #40]	; 0x28
d0040154:	f001 fa92 	bl	d004167c <malloc>
d0040158:	eeb6 1a00 	vmov.f32	s2, #96	; 0x3f000000  0.5
d004015c:	4603      	mov	r3, r0
d004015e:	2060      	movs	r0, #96	; 0x60
d0040160:	9503      	str	r5, [sp, #12]
d0040162:	ee68 0a81 	vmul.f32	s1, s17, s2
d0040166:	9300      	str	r3, [sp, #0]
d0040168:	ee29 0a01 	vmul.f32	s0, s18, s2
d004016c:	ee28 1a01 	vmul.f32	s2, s16, s2
d0040170:	eeb1 7a60 	vneg.f32	s14, s1
d0040174:	edc3 0a0d 	vstr	s1, [r3, #52]	; 0x34
d0040178:	eef1 6a40 	vneg.f32	s13, s0
d004017c:	edc3 0a10 	vstr	s1, [r3, #64]	; 0x40
d0040180:	eef1 7a41 	vneg.f32	s15, s2
d0040184:	ed83 1a08 	vstr	s2, [r3, #32]
d0040188:	ed83 1a0b 	vstr	s2, [r3, #44]	; 0x2c
d004018c:	edc3 6a00 	vstr	s13, [r3]
d0040190:	edc3 6a09 	vstr	s13, [r3, #36]	; 0x24
d0040194:	edc3 6a0c 	vstr	s13, [r3, #48]	; 0x30
d0040198:	edc3 6a15 	vstr	s13, [r3, #84]	; 0x54
d004019c:	edc3 0a13 	vstr	s1, [r3, #76]	; 0x4c
d00401a0:	ed83 1a14 	vstr	s2, [r3, #80]	; 0x50
d00401a4:	edc3 0a16 	vstr	s1, [r3, #88]	; 0x58
d00401a8:	ed83 7a01 	vstr	s14, [r3, #4]
d00401ac:	ed83 7a04 	vstr	s14, [r3, #16]
d00401b0:	ed83 7a07 	vstr	s14, [r3, #28]
d00401b4:	ed83 7a0a 	vstr	s14, [r3, #40]	; 0x28
d00401b8:	ed83 1a17 	vstr	s2, [r3, #92]	; 0x5c
d00401bc:	edc3 7a02 	vstr	s15, [r3, #8]
d00401c0:	edc3 7a05 	vstr	s15, [r3, #20]
d00401c4:	edc3 7a0e 	vstr	s15, [r3, #56]	; 0x38
d00401c8:	edc3 7a11 	vstr	s15, [r3, #68]	; 0x44
d00401cc:	ed83 0a03 	vstr	s0, [r3, #12]
d00401d0:	ed83 0a06 	vstr	s0, [r3, #24]
d00401d4:	ed83 0a0f 	vstr	s0, [r3, #60]	; 0x3c
d00401d8:	ed83 0a12 	vstr	s0, [r3, #72]	; 0x48
d00401dc:	f001 fa4e 	bl	d004167c <malloc>
d00401e0:	4604      	mov	r4, r0
d00401e2:	4639      	mov	r1, r7
d00401e4:	a80c      	add	r0, sp, #48	; 0x30
d00401e6:	2260      	movs	r2, #96	; 0x60
d00401e8:	9402      	str	r4, [sp, #8]
d00401ea:	f001 fa65 	bl	d00416b8 <memcpy>
d00401ee:	a90c      	add	r1, sp, #48	; 0x30
d00401f0:	2260      	movs	r2, #96	; 0x60
d00401f2:	4620      	mov	r0, r4
d00401f4:	f001 fa60 	bl	d00416b8 <memcpy>
d00401f8:	4640      	mov	r0, r8
d00401fa:	9505      	str	r5, [sp, #20]
d00401fc:	f001 fa3e 	bl	d004167c <malloc>
d0040200:	4605      	mov	r5, r0
d0040202:	4c1e      	ldr	r4, [pc, #120]	; (d004027c <createBox+0x15c>)
d0040204:	f107 0160 	add.w	r1, r7, #96	; 0x60
d0040208:	4642      	mov	r2, r8
d004020a:	a824      	add	r0, sp, #144	; 0x90
d004020c:	9504      	str	r5, [sp, #16]
d004020e:	f001 fa53 	bl	d00416b8 <memcpy>
d0040212:	4642      	mov	r2, r8
d0040214:	a924      	add	r1, sp, #144	; 0x90
d0040216:	4628      	mov	r0, r5
d0040218:	f001 fa4e 	bl	d00416b8 <memcpy>
d004021c:	7c23      	ldrb	r3, [r4, #16]
d004021e:	7c62      	ldrb	r2, [r4, #17]
d0040220:	4668      	mov	r0, sp
d0040222:	7ca1      	ldrb	r1, [r4, #18]
d0040224:	4635      	mov	r5, r6
d0040226:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004022a:	7ce2      	ldrb	r2, [r4, #19]
d004022c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040230:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040234:	691b      	ldr	r3, [r3, #16]
d0040236:	685b      	ldr	r3, [r3, #4]
d0040238:	4798      	blx	r3
d004023a:	7c23      	ldrb	r3, [r4, #16]
d004023c:	7c62      	ldrb	r2, [r4, #17]
d004023e:	4668      	mov	r0, sp
d0040240:	7ca1      	ldrb	r1, [r4, #18]
d0040242:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040246:	7ce2      	ldrb	r2, [r4, #19]
d0040248:	466c      	mov	r4, sp
d004024a:	ed8d 0a06 	vstr	s0, [sp, #24]
d004024e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040252:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040256:	695b      	ldr	r3, [r3, #20]
d0040258:	681b      	ldr	r3, [r3, #0]
d004025a:	4798      	blx	r3
d004025c:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d004025e:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0040260:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d0040262:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0040264:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
d0040268:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d004026c:	4630      	mov	r0, r6
d004026e:	b054      	add	sp, #336	; 0x150
d0040270:	ecbd 8b04 	vpop	{d8-d9}
d0040274:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0040278:	d0041b50 	.word	0xd0041b50
d004027c:	2001f000 	.word	0x2001f000

d0040280 <loadMeshSB3D>:
d0040280:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
d0040284:	ed2d 8b02 	vpush	{d8}
d0040288:	b08d      	sub	sp, #52	; 0x34
d004028a:	2800      	cmp	r0, #0
d004028c:	d07c      	beq.n	d0040388 <loadMeshSB3D+0x108>
d004028e:	460d      	mov	r5, r1
d0040290:	4601      	mov	r1, r0
d0040292:	fab5 f085 	clz	r0, r5
d0040296:	0940      	lsrs	r0, r0, #5
d0040298:	2d00      	cmp	r5, #0
d004029a:	d075      	beq.n	d0040388 <loadMeshSB3D+0x108>
d004029c:	4c72      	ldr	r4, [pc, #456]	; (d0040468 <loadMeshSB3D+0x1e8>)
d004029e:	2201      	movs	r2, #1
d00402a0:	eeb0 8a40 	vmov.f32	s16, s0
d00402a4:	7923      	ldrb	r3, [r4, #4]
d00402a6:	7966      	ldrb	r6, [r4, #5]
d00402a8:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d00402ac:	79a6      	ldrb	r6, [r4, #6]
d00402ae:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d00402b2:	79e6      	ldrb	r6, [r4, #7]
d00402b4:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d00402b8:	681b      	ldr	r3, [r3, #0]
d00402ba:	681b      	ldr	r3, [r3, #0]
d00402bc:	4798      	blx	r3
d00402be:	2800      	cmp	r0, #0
d00402c0:	d162      	bne.n	d0040388 <loadMeshSB3D+0x108>
d00402c2:	7921      	ldrb	r1, [r4, #4]
d00402c4:	ab02      	add	r3, sp, #8
d00402c6:	7962      	ldrb	r2, [r4, #5]
d00402c8:	79a7      	ldrb	r7, [r4, #6]
d00402ca:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
d00402ce:	79e6      	ldrb	r6, [r4, #7]
d00402d0:	a903      	add	r1, sp, #12
d00402d2:	ea42 4707 	orr.w	r7, r2, r7, lsl #16
d00402d6:	2204      	movs	r2, #4
d00402d8:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d00402dc:	6836      	ldr	r6, [r6, #0]
d00402de:	68b6      	ldr	r6, [r6, #8]
d00402e0:	47b0      	blx	r6
d00402e2:	2800      	cmp	r0, #0
d00402e4:	d146      	bne.n	d0040374 <loadMeshSB3D+0xf4>
d00402e6:	a803      	add	r0, sp, #12
d00402e8:	2204      	movs	r2, #4
d00402ea:	4960      	ldr	r1, [pc, #384]	; (d004046c <loadMeshSB3D+0x1ec>)
d00402ec:	f001 f9d6 	bl	d004169c <memcmp>
d00402f0:	4606      	mov	r6, r0
d00402f2:	2800      	cmp	r0, #0
d00402f4:	d13e      	bne.n	d0040374 <loadMeshSB3D+0xf4>
d00402f6:	f894 e004 	ldrb.w	lr, [r4, #4]
d00402fa:	ab02      	add	r3, sp, #8
d00402fc:	7961      	ldrb	r1, [r4, #5]
d00402fe:	2204      	movs	r2, #4
d0040300:	f894 c006 	ldrb.w	ip, [r4, #6]
d0040304:	ea4e 2101 	orr.w	r1, lr, r1, lsl #8
d0040308:	79e7      	ldrb	r7, [r4, #7]
d004030a:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
d004030e:	a904      	add	r1, sp, #16
d0040310:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0040314:	683f      	ldr	r7, [r7, #0]
d0040316:	68bf      	ldr	r7, [r7, #8]
d0040318:	47b8      	blx	r7
d004031a:	bb58      	cbnz	r0, d0040374 <loadMeshSB3D+0xf4>
d004031c:	9b04      	ldr	r3, [sp, #16]
d004031e:	2b02      	cmp	r3, #2
d0040320:	d128      	bne.n	d0040374 <loadMeshSB3D+0xf4>
d0040322:	f894 e004 	ldrb.w	lr, [r4, #4]
d0040326:	ab02      	add	r3, sp, #8
d0040328:	7961      	ldrb	r1, [r4, #5]
d004032a:	2204      	movs	r2, #4
d004032c:	f894 c006 	ldrb.w	ip, [r4, #6]
d0040330:	ea4e 2101 	orr.w	r1, lr, r1, lsl #8
d0040334:	79e7      	ldrb	r7, [r4, #7]
d0040336:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
d004033a:	a905      	add	r1, sp, #20
d004033c:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0040340:	683f      	ldr	r7, [r7, #0]
d0040342:	68bf      	ldr	r7, [r7, #8]
d0040344:	47b8      	blx	r7
d0040346:	b9a8      	cbnz	r0, d0040374 <loadMeshSB3D+0xf4>
d0040348:	7921      	ldrb	r1, [r4, #4]
d004034a:	ab02      	add	r3, sp, #8
d004034c:	7967      	ldrb	r7, [r4, #5]
d004034e:	2204      	movs	r2, #4
d0040350:	f894 c006 	ldrb.w	ip, [r4, #6]
d0040354:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
d0040358:	79e7      	ldrb	r7, [r4, #7]
d004035a:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
d004035e:	a906      	add	r1, sp, #24
d0040360:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0040364:	683f      	ldr	r7, [r7, #0]
d0040366:	68bf      	ldr	r7, [r7, #8]
d0040368:	47b8      	blx	r7
d004036a:	b918      	cbnz	r0, d0040374 <loadMeshSB3D+0xf4>
d004036c:	9b05      	ldr	r3, [sp, #20]
d004036e:	b10b      	cbz	r3, d0040374 <loadMeshSB3D+0xf4>
d0040370:	9f06      	ldr	r7, [sp, #24]
d0040372:	b987      	cbnz	r7, d0040396 <loadMeshSB3D+0x116>
d0040374:	2000      	movs	r0, #0
d0040376:	4606      	mov	r6, r0
d0040378:	f000 ffbc 	bl	d00412f4 <fclose>
d004037c:	4630      	mov	r0, r6
d004037e:	b00d      	add	sp, #52	; 0x34
d0040380:	ecbd 8b02 	vpop	{d8}
d0040384:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0040388:	2600      	movs	r6, #0
d004038a:	4630      	mov	r0, r6
d004038c:	b00d      	add	sp, #52	; 0x34
d004038e:	ecbd 8b02 	vpop	{d8}
d0040392:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0040396:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d004039a:	f04f 0800 	mov.w	r8, #0
d004039e:	606b      	str	r3, [r5, #4]
d00403a0:	616f      	str	r7, [r5, #20]
d00403a2:	0080      	lsls	r0, r0, #2
d00403a4:	f8c5 800c 	str.w	r8, [r5, #12]
d00403a8:	f001 f968 	bl	d004167c <malloc>
d00403ac:	4603      	mov	r3, r0
d00403ae:	0138      	lsls	r0, r7, #4
d00403b0:	461f      	mov	r7, r3
d00403b2:	602b      	str	r3, [r5, #0]
d00403b4:	f001 f962 	bl	d004167c <malloc>
d00403b8:	f8c5 8008 	str.w	r8, [r5, #8]
d00403bc:	6128      	str	r0, [r5, #16]
d00403be:	2f00      	cmp	r7, #0
d00403c0:	f000 8127 	beq.w	d0040612 <loadMeshSB3D+0x392>
d00403c4:	b9c0      	cbnz	r0, d00403f8 <loadMeshSB3D+0x178>
d00403c6:	e119      	b.n	d00405fc <loadMeshSB3D+0x37c>
d00403c8:	eddd 6a09 	vldr	s13, [sp, #36]	; 0x24
d00403cc:	ed9d 7a0a 	vldr	s14, [sp, #40]	; 0x28
d00403d0:	eddd 7a0b 	vldr	s15, [sp, #44]	; 0x2c
d00403d4:	ee66 6a88 	vmul.f32	s13, s13, s16
d00403d8:	682b      	ldr	r3, [r5, #0]
d00403da:	ee27 7a08 	vmul.f32	s14, s14, s16
d00403de:	9905      	ldr	r1, [sp, #20]
d00403e0:	ee67 7a88 	vmul.f32	s15, s15, s16
d00403e4:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d00403e8:	4541      	cmp	r1, r8
d00403ea:	edc3 6a00 	vstr	s13, [r3]
d00403ee:	ed83 7a01 	vstr	s14, [r3, #4]
d00403f2:	edc3 7a02 	vstr	s15, [r3, #8]
d00403f6:	d930      	bls.n	d004045a <loadMeshSB3D+0x1da>
d00403f8:	f894 e004 	ldrb.w	lr, [r4, #4]
d00403fc:	220c      	movs	r2, #12
d00403fe:	7960      	ldrb	r0, [r4, #5]
d0040400:	ab02      	add	r3, sp, #8
d0040402:	f894 c006 	ldrb.w	ip, [r4, #6]
d0040406:	a909      	add	r1, sp, #36	; 0x24
d0040408:	ea4e 2000 	orr.w	r0, lr, r0, lsl #8
d004040c:	79e7      	ldrb	r7, [r4, #7]
d004040e:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d0040412:	2000      	movs	r0, #0
d0040414:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0040418:	683f      	ldr	r7, [r7, #0]
d004041a:	68bf      	ldr	r7, [r7, #8]
d004041c:	47b8      	blx	r7
d004041e:	eb08 0248 	add.w	r2, r8, r8, lsl #1
d0040422:	f108 0801 	add.w	r8, r8, #1
d0040426:	2800      	cmp	r0, #0
d0040428:	d0ce      	beq.n	d00403c8 <loadMeshSB3D+0x148>
d004042a:	6828      	ldr	r0, [r5, #0]
d004042c:	b108      	cbz	r0, d0040432 <loadMeshSB3D+0x1b2>
d004042e:	f001 f92d 	bl	d004168c <free>
d0040432:	6928      	ldr	r0, [r5, #16]
d0040434:	b108      	cbz	r0, d004043a <loadMeshSB3D+0x1ba>
d0040436:	f001 f929 	bl	d004168c <free>
d004043a:	68a8      	ldr	r0, [r5, #8]
d004043c:	b108      	cbz	r0, d0040442 <loadMeshSB3D+0x1c2>
d004043e:	f001 f925 	bl	d004168c <free>
d0040442:	2000      	movs	r0, #0
d0040444:	2300      	movs	r3, #0
d0040446:	6028      	str	r0, [r5, #0]
d0040448:	6128      	str	r0, [r5, #16]
d004044a:	60a8      	str	r0, [r5, #8]
d004044c:	6068      	str	r0, [r5, #4]
d004044e:	6168      	str	r0, [r5, #20]
d0040450:	60e8      	str	r0, [r5, #12]
d0040452:	61ab      	str	r3, [r5, #24]
d0040454:	f000 ff4e 	bl	d00412f4 <fclose>
d0040458:	e797      	b.n	d004038a <loadMeshSB3D+0x10a>
d004045a:	9b06      	ldr	r3, [sp, #24]
d004045c:	2b00      	cmp	r3, #0
d004045e:	f000 80a6 	beq.w	d00405ae <loadMeshSB3D+0x32e>
d0040462:	4607      	mov	r7, r0
d0040464:	e086      	b.n	d0040574 <loadMeshSB3D+0x2f4>
d0040466:	bf00      	nop
d0040468:	2001f000 	.word	0x2001f000
d004046c:	d0041b48 	.word	0xd0041b48
d0040470:	f894 8004 	ldrb.w	r8, [r4, #4]
d0040474:	f894 c005 	ldrb.w	ip, [r4, #5]
d0040478:	f894 e006 	ldrb.w	lr, [r4, #6]
d004047c:	ea48 280c 	orr.w	r8, r8, ip, lsl #8
d0040480:	f894 c007 	ldrb.w	ip, [r4, #7]
d0040484:	ea48 4e0e 	orr.w	lr, r8, lr, lsl #16
d0040488:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d004048c:	f8dc c000 	ldr.w	ip, [ip]
d0040490:	f8dc 8008 	ldr.w	r8, [ip, #8]
d0040494:	47c0      	blx	r8
d0040496:	ab02      	add	r3, sp, #8
d0040498:	2204      	movs	r2, #4
d004049a:	a909      	add	r1, sp, #36	; 0x24
d004049c:	2800      	cmp	r0, #0
d004049e:	d1c4      	bne.n	d004042a <loadMeshSB3D+0x1aa>
d00404a0:	f894 8004 	ldrb.w	r8, [r4, #4]
d00404a4:	f894 c005 	ldrb.w	ip, [r4, #5]
d00404a8:	f894 e006 	ldrb.w	lr, [r4, #6]
d00404ac:	ea48 280c 	orr.w	r8, r8, ip, lsl #8
d00404b0:	f894 c007 	ldrb.w	ip, [r4, #7]
d00404b4:	ea48 4e0e 	orr.w	lr, r8, lr, lsl #16
d00404b8:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d00404bc:	f8dc c000 	ldr.w	ip, [ip]
d00404c0:	f8dc 8008 	ldr.w	r8, [ip, #8]
d00404c4:	47c0      	blx	r8
d00404c6:	ab02      	add	r3, sp, #8
d00404c8:	2201      	movs	r2, #1
d00404ca:	f10d 0106 	add.w	r1, sp, #6
d00404ce:	2800      	cmp	r0, #0
d00404d0:	d1ab      	bne.n	d004042a <loadMeshSB3D+0x1aa>
d00404d2:	f894 8004 	ldrb.w	r8, [r4, #4]
d00404d6:	f894 c005 	ldrb.w	ip, [r4, #5]
d00404da:	f894 e006 	ldrb.w	lr, [r4, #6]
d00404de:	ea48 280c 	orr.w	r8, r8, ip, lsl #8
d00404e2:	f894 c007 	ldrb.w	ip, [r4, #7]
d00404e6:	ea48 4e0e 	orr.w	lr, r8, lr, lsl #16
d00404ea:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d00404ee:	f8dc c000 	ldr.w	ip, [ip]
d00404f2:	f8dc 8008 	ldr.w	r8, [ip, #8]
d00404f6:	47c0      	blx	r8
d00404f8:	ab02      	add	r3, sp, #8
d00404fa:	2201      	movs	r2, #1
d00404fc:	f10d 0107 	add.w	r1, sp, #7
d0040500:	2800      	cmp	r0, #0
d0040502:	d192      	bne.n	d004042a <loadMeshSB3D+0x1aa>
d0040504:	f894 8004 	ldrb.w	r8, [r4, #4]
d0040508:	f894 c005 	ldrb.w	ip, [r4, #5]
d004050c:	f894 e006 	ldrb.w	lr, [r4, #6]
d0040510:	ea48 280c 	orr.w	r8, r8, ip, lsl #8
d0040514:	f894 c007 	ldrb.w	ip, [r4, #7]
d0040518:	ea48 4e0e 	orr.w	lr, r8, lr, lsl #16
d004051c:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d0040520:	f8dc c000 	ldr.w	ip, [ip]
d0040524:	f8dc 8008 	ldr.w	r8, [ip, #8]
d0040528:	47c0      	blx	r8
d004052a:	ea4f 1c07 	mov.w	ip, r7, lsl #4
d004052e:	2800      	cmp	r0, #0
d0040530:	f47f af7b 	bne.w	d004042a <loadMeshSB3D+0x1aa>
d0040534:	9a07      	ldr	r2, [sp, #28]
d0040536:	9b05      	ldr	r3, [sp, #20]
d0040538:	429a      	cmp	r2, r3
d004053a:	f4bf af76 	bcs.w	d004042a <loadMeshSB3D+0x1aa>
d004053e:	9908      	ldr	r1, [sp, #32]
d0040540:	428b      	cmp	r3, r1
d0040542:	f67f af72 	bls.w	d004042a <loadMeshSB3D+0x1aa>
d0040546:	9809      	ldr	r0, [sp, #36]	; 0x24
d0040548:	4283      	cmp	r3, r0
d004054a:	f67f af6e 	bls.w	d004042a <loadMeshSB3D+0x1aa>
d004054e:	692b      	ldr	r3, [r5, #16]
d0040550:	f8dd e018 	ldr.w	lr, [sp, #24]
d0040554:	f843 200c 	str.w	r2, [r3, ip]
d0040558:	eb03 1307 	add.w	r3, r3, r7, lsl #4
d004055c:	3701      	adds	r7, #1
d004055e:	f89d c006 	ldrb.w	ip, [sp, #6]
d0040562:	f89d 2007 	ldrb.w	r2, [sp, #7]
d0040566:	45be      	cmp	lr, r7
d0040568:	6059      	str	r1, [r3, #4]
d004056a:	6098      	str	r0, [r3, #8]
d004056c:	f883 c00c 	strb.w	ip, [r3, #12]
d0040570:	735a      	strb	r2, [r3, #13]
d0040572:	d91c      	bls.n	d00405ae <loadMeshSB3D+0x32e>
d0040574:	7920      	ldrb	r0, [r4, #4]
d0040576:	ab02      	add	r3, sp, #8
d0040578:	f894 c005 	ldrb.w	ip, [r4, #5]
d004057c:	2204      	movs	r2, #4
d004057e:	f894 e006 	ldrb.w	lr, [r4, #6]
d0040582:	a907      	add	r1, sp, #28
d0040584:	ea40 200c 	orr.w	r0, r0, ip, lsl #8
d0040588:	f894 c007 	ldrb.w	ip, [r4, #7]
d004058c:	ea40 4e0e 	orr.w	lr, r0, lr, lsl #16
d0040590:	2000      	movs	r0, #0
d0040592:	ea4e 6c0c 	orr.w	ip, lr, ip, lsl #24
d0040596:	f8dc c000 	ldr.w	ip, [ip]
d004059a:	f8dc 8008 	ldr.w	r8, [ip, #8]
d004059e:	47c0      	blx	r8
d00405a0:	ab02      	add	r3, sp, #8
d00405a2:	2204      	movs	r2, #4
d00405a4:	a908      	add	r1, sp, #32
d00405a6:	2800      	cmp	r0, #0
d00405a8:	f43f af62 	beq.w	d0040470 <loadMeshSB3D+0x1f0>
d00405ac:	e73d      	b.n	d004042a <loadMeshSB3D+0x1aa>
d00405ae:	2000      	movs	r0, #0
d00405b0:	2601      	movs	r6, #1
d00405b2:	f000 fe9f 	bl	d00412f4 <fclose>
d00405b6:	7c23      	ldrb	r3, [r4, #16]
d00405b8:	7c62      	ldrb	r2, [r4, #17]
d00405ba:	4628      	mov	r0, r5
d00405bc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00405c0:	7ca2      	ldrb	r2, [r4, #18]
d00405c2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d00405c6:	7ce2      	ldrb	r2, [r4, #19]
d00405c8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00405cc:	691b      	ldr	r3, [r3, #16]
d00405ce:	685b      	ldr	r3, [r3, #4]
d00405d0:	4798      	blx	r3
d00405d2:	7c23      	ldrb	r3, [r4, #16]
d00405d4:	7c62      	ldrb	r2, [r4, #17]
d00405d6:	eef1 7a00 	vmov.f32	s15, #16	; 0x40800000  4.0
d00405da:	7ca1      	ldrb	r1, [r4, #18]
d00405dc:	4628      	mov	r0, r5
d00405de:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00405e2:	7ce2      	ldrb	r2, [r4, #19]
d00405e4:	ee20 0a27 	vmul.f32	s0, s0, s15
d00405e8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00405ec:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00405f0:	ed85 0a06 	vstr	s0, [r5, #24]
d00405f4:	695b      	ldr	r3, [r3, #20]
d00405f6:	681b      	ldr	r3, [r3, #0]
d00405f8:	4798      	blx	r3
d00405fa:	e6c6      	b.n	d004038a <loadMeshSB3D+0x10a>
d00405fc:	4638      	mov	r0, r7
d00405fe:	f001 f845 	bl	d004168c <free>
d0040602:	2000      	movs	r0, #0
d0040604:	6028      	str	r0, [r5, #0]
d0040606:	6128      	str	r0, [r5, #16]
d0040608:	6068      	str	r0, [r5, #4]
d004060a:	6168      	str	r0, [r5, #20]
d004060c:	f000 fe72 	bl	d00412f4 <fclose>
d0040610:	e6bb      	b.n	d004038a <loadMeshSB3D+0x10a>
d0040612:	2800      	cmp	r0, #0
d0040614:	d0f5      	beq.n	d0040602 <loadMeshSB3D+0x382>
d0040616:	f001 f839 	bl	d004168c <free>
d004061a:	e7f2      	b.n	d0040602 <loadMeshSB3D+0x382>

d004061c <drawRect>:
d004061c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0040620:	4c15      	ldr	r4, [pc, #84]	; (d0040678 <drawRect+0x5c>)
d0040622:	4606      	mov	r6, r0
d0040624:	460f      	mov	r7, r1
d0040626:	4699      	mov	r9, r3
d0040628:	7b25      	ldrb	r5, [r4, #12]
d004062a:	4690      	mov	r8, r2
d004062c:	f894 c00d 	ldrb.w	ip, [r4, #13]
d0040630:	7ba0      	ldrb	r0, [r4, #14]
d0040632:	ea45 250c 	orr.w	r5, r5, ip, lsl #8
d0040636:	7be1      	ldrb	r1, [r4, #15]
d0040638:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
d004063c:	f89d 0020 	ldrb.w	r0, [sp, #32]
d0040640:	ea45 6501 	orr.w	r5, r5, r1, lsl #24
d0040644:	686b      	ldr	r3, [r5, #4]
d0040646:	68db      	ldr	r3, [r3, #12]
d0040648:	4798      	blx	r3
d004064a:	7b25      	ldrb	r5, [r4, #12]
d004064c:	7b61      	ldrb	r1, [r4, #13]
d004064e:	fa0f f389 	sxth.w	r3, r9
d0040652:	7ba0      	ldrb	r0, [r4, #14]
d0040654:	fa0f f288 	sxth.w	r2, r8
d0040658:	ea45 2501 	orr.w	r5, r5, r1, lsl #8
d004065c:	f894 c00f 	ldrb.w	ip, [r4, #15]
d0040660:	b239      	sxth	r1, r7
d0040662:	ea45 4400 	orr.w	r4, r5, r0, lsl #16
d0040666:	b230      	sxth	r0, r6
d0040668:	ea44 640c 	orr.w	r4, r4, ip, lsl #24
d004066c:	6864      	ldr	r4, [r4, #4]
d004066e:	6864      	ldr	r4, [r4, #4]
d0040670:	46a4      	mov	ip, r4
d0040672:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0040676:	4760      	bx	ip
d0040678:	2001f000 	.word	0x2001f000

d004067c <initSystem>:
d004067c:	b570      	push	{r4, r5, r6, lr}
d004067e:	4c48      	ldr	r4, [pc, #288]	; (d00407a0 <initSystem+0x124>)
d0040680:	b082      	sub	sp, #8
d0040682:	f44f 3000 	mov.w	r0, #131072	; 0x20000
d0040686:	2600      	movs	r6, #0
d0040688:	7823      	ldrb	r3, [r4, #0]
d004068a:	7862      	ldrb	r2, [r4, #1]
d004068c:	78a1      	ldrb	r1, [r4, #2]
d004068e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040692:	78e2      	ldrb	r2, [r4, #3]
d0040694:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040698:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004069c:	681b      	ldr	r3, [r3, #0]
d004069e:	4798      	blx	r3
d00406a0:	f7ff fccc 	bl	d004003c <initMalloc>
d00406a4:	7b23      	ldrb	r3, [r4, #12]
d00406a6:	7b62      	ldrb	r2, [r4, #13]
d00406a8:	2190      	movs	r1, #144	; 0x90
d00406aa:	7ba5      	ldrb	r5, [r4, #14]
d00406ac:	20dc      	movs	r0, #220	; 0xdc
d00406ae:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00406b2:	7be2      	ldrb	r2, [r4, #15]
d00406b4:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00406b8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00406bc:	681b      	ldr	r3, [r3, #0]
d00406be:	691b      	ldr	r3, [r3, #16]
d00406c0:	4798      	blx	r3
d00406c2:	7b23      	ldrb	r3, [r4, #12]
d00406c4:	7b62      	ldrb	r2, [r4, #13]
d00406c6:	2000      	movs	r0, #0
d00406c8:	7ba1      	ldrb	r1, [r4, #14]
d00406ca:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00406ce:	7be2      	ldrb	r2, [r4, #15]
d00406d0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00406d4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00406d8:	681b      	ldr	r3, [r3, #0]
d00406da:	689b      	ldr	r3, [r3, #8]
d00406dc:	4798      	blx	r3
d00406de:	7b25      	ldrb	r5, [r4, #12]
d00406e0:	7b62      	ldrb	r2, [r4, #13]
d00406e2:	f44f 73a0 	mov.w	r3, #320	; 0x140
d00406e6:	7ba1      	ldrb	r1, [r4, #14]
d00406e8:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d00406ec:	7be0      	ldrb	r0, [r4, #15]
d00406ee:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d00406f2:	ea45 4501 	orr.w	r5, r5, r1, lsl #16
d00406f6:	4619      	mov	r1, r3
d00406f8:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d00406fc:	4610      	mov	r0, r2
d00406fe:	682d      	ldr	r5, [r5, #0]
d0040700:	9600      	str	r6, [sp, #0]
d0040702:	696d      	ldr	r5, [r5, #20]
d0040704:	47a8      	blx	r5
d0040706:	7d23      	ldrb	r3, [r4, #20]
d0040708:	7d62      	ldrb	r2, [r4, #21]
d004070a:	f44f 7000 	mov.w	r0, #512	; 0x200
d004070e:	7da1      	ldrb	r1, [r4, #22]
d0040710:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040714:	7de2      	ldrb	r2, [r4, #23]
d0040716:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004071a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004071e:	681b      	ldr	r3, [r3, #0]
d0040720:	681b      	ldr	r3, [r3, #0]
d0040722:	4798      	blx	r3
d0040724:	7d22      	ldrb	r2, [r4, #20]
d0040726:	7d63      	ldrb	r3, [r4, #21]
d0040728:	2101      	movs	r1, #1
d004072a:	7da5      	ldrb	r5, [r4, #22]
d004072c:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
d0040730:	7de0      	ldrb	r0, [r4, #23]
d0040732:	7b23      	ldrb	r3, [r4, #12]
d0040734:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
d0040738:	7b66      	ldrb	r6, [r4, #13]
d004073a:	7ba5      	ldrb	r5, [r4, #14]
d004073c:	ea42 6200 	orr.w	r2, r2, r0, lsl #24
d0040740:	7be0      	ldrb	r0, [r4, #15]
d0040742:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d0040746:	6812      	ldr	r2, [r2, #0]
d0040748:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004074c:	6852      	ldr	r2, [r2, #4]
d004074e:	ea43 6300 	orr.w	r3, r3, r0, lsl #24
d0040752:	7011      	strb	r1, [r2, #0]
d0040754:	681b      	ldr	r3, [r3, #0]
d0040756:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d0040758:	4798      	blx	r3
d004075a:	7b23      	ldrb	r3, [r4, #12]
d004075c:	7b62      	ldrb	r2, [r4, #13]
d004075e:	7ba5      	ldrb	r5, [r4, #14]
d0040760:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040764:	7be2      	ldrb	r2, [r4, #15]
d0040766:	490f      	ldr	r1, [pc, #60]	; (d00407a4 <initSystem+0x128>)
d0040768:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d004076c:	6008      	str	r0, [r1, #0]
d004076e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040772:	681b      	ldr	r3, [r3, #0]
d0040774:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d0040776:	4798      	blx	r3
d0040778:	7b23      	ldrb	r3, [r4, #12]
d004077a:	7b62      	ldrb	r2, [r4, #13]
d004077c:	4605      	mov	r5, r0
d004077e:	7ba6      	ldrb	r6, [r4, #14]
d0040780:	2064      	movs	r0, #100	; 0x64
d0040782:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040786:	7be2      	ldrb	r2, [r4, #15]
d0040788:	4907      	ldr	r1, [pc, #28]	; (d00407a8 <initSystem+0x12c>)
d004078a:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d004078e:	600d      	str	r5, [r1, #0]
d0040790:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040794:	681b      	ldr	r3, [r3, #0]
d0040796:	689b      	ldr	r3, [r3, #8]
d0040798:	b002      	add	sp, #8
d004079a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d004079e:	4718      	bx	r3
d00407a0:	2001f000 	.word	0x2001f000
d00407a4:	d00422cc 	.word	0xd00422cc
d00407a8:	d00422c4 	.word	0xd00422c4

d00407ac <buildLightingCLUT>:
d00407ac:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00407b0:	f1b2 0900 	subs.w	r9, r2, #0
d00407b4:	b085      	sub	sp, #20
d00407b6:	9c0e      	ldr	r4, [sp, #56]	; 0x38
d00407b8:	f340 8212 	ble.w	d0040be0 <buildLightingCLUT+0x434>
d00407bc:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00407c0:	4f24      	ldr	r7, [pc, #144]	; (d0040854 <buildLightingCLUT+0xa8>)
d00407c2:	eb09 0c49 	add.w	ip, r9, r9, lsl #1
d00407c6:	edd4 4a00 	vldr	s9, [r4]
d00407ca:	ed94 5a01 	vldr	s10, [r4, #4]
d00407ce:	eb09 0807 	add.w	r8, r9, r7
d00407d2:	edd4 5a02 	vldr	s11, [r4, #8]
d00407d6:	eb07 0e49 	add.w	lr, r7, r9, lsl #1
d00407da:	ed94 6a03 	vldr	s12, [r4, #12]
d00407de:	44bc      	add	ip, r7
d00407e0:	edd4 6a04 	vldr	s13, [r4, #16]
d00407e4:	eb07 0789 	add.w	r7, r7, r9, lsl #2
d00407e8:	3904      	subs	r1, #4
d00407ea:	ee77 4ae4 	vsub.f32	s9, s15, s9
d00407ee:	ee37 5ac5 	vsub.f32	s10, s15, s10
d00407f2:	ed9f 7a19 	vldr	s14, [pc, #100]	; d0040858 <buildLightingCLUT+0xac>
d00407f6:	ee77 5ae5 	vsub.f32	s11, s15, s11
d00407fa:	f100 067c 	add.w	r6, r0, #124	; 0x7c
d00407fe:	ee37 6ac6 	vsub.f32	s12, s15, s12
d0040802:	eb00 0888 	add.w	r8, r0, r8, lsl #2
d0040806:	ee77 6ae6 	vsub.f32	s13, s15, s13
d004080a:	eb00 0e8e 	add.w	lr, r0, lr, lsl #2
d004080e:	eb00 0c8c 	add.w	ip, r0, ip, lsl #2
d0040812:	f3c3 4507 	ubfx	r5, r3, #16, #8
d0040816:	eb00 0787 	add.w	r7, r0, r7, lsl #2
d004081a:	f3c3 2007 	ubfx	r0, r3, #8, #8
d004081e:	eb01 0989 	add.w	r9, r1, r9, lsl #2
d0040822:	fec4 4a87 	vmaxnm.f32	s9, s9, s14
d0040826:	0e1c      	lsrs	r4, r3, #24
d0040828:	fe85 5a07 	vmaxnm.f32	s10, s10, s14
d004082c:	b2da      	uxtb	r2, r3
d004082e:	fec5 5a87 	vmaxnm.f32	s11, s11, s14
d0040832:	fe86 6a07 	vmaxnm.f32	s12, s12, s14
d0040836:	fec6 6a87 	vmaxnm.f32	s13, s13, s14
d004083a:	fec4 4ae7 	vminnm.f32	s9, s9, s15
d004083e:	fe85 5a67 	vminnm.f32	s10, s10, s15
d0040842:	fec5 5ae7 	vminnm.f32	s11, s11, s15
d0040846:	fe86 6a67 	vminnm.f32	s12, s12, s15
d004084a:	fec6 6ae7 	vminnm.f32	s13, s13, s15
d004084e:	9601      	str	r6, [sp, #4]
d0040850:	e004      	b.n	d004085c <buildLightingCLUT+0xb0>
d0040852:	bf00      	nop
d0040854:	4000001f 	.word	0x4000001f
d0040858:	00000000 	.word	0x00000000
d004085c:	f851 3f04 	ldr.w	r3, [r1, #4]!
d0040860:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0040864:	0e1e      	lsrs	r6, r3, #24
d0040866:	fa5f fa83 	uxtb.w	sl, r3
d004086a:	4549      	cmp	r1, r9
d004086c:	ee07 6a10 	vmov	s14, r6
d0040870:	eba5 060b 	sub.w	r6, r5, fp
d0040874:	ee04 ba10 	vmov	s8, fp
d0040878:	ee07 6a90 	vmov	s15, r6
d004087c:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0040880:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0040884:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0040888:	ee02 6a10 	vmov	s4, r6
d004088c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040890:	eba2 060a 	sub.w	r6, r2, sl
d0040894:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0040898:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d004089c:	ee04 aa10 	vmov	s8, sl
d00408a0:	ee02 6a90 	vmov	s5, r6
d00408a4:	eba0 0603 	sub.w	r6, r0, r3
d00408a8:	eee4 3aa7 	vfma.f32	s7, s9, s15
d00408ac:	ee07 3a90 	vmov	s15, r3
d00408b0:	eea4 7a82 	vfma.f32	s14, s9, s4
d00408b4:	ee03 6a10 	vmov	s6, r6
d00408b8:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d00408bc:	9e01      	ldr	r6, [sp, #4]
d00408be:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00408c2:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d00408c6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00408ca:	eea4 4aa2 	vfma.f32	s8, s9, s5
d00408ce:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d00408d2:	eee4 7a83 	vfma.f32	s15, s9, s6
d00408d6:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00408da:	edcd 3a02 	vstr	s7, [sp, #8]
d00408de:	f89d a008 	ldrb.w	sl, [sp, #8]
d00408e2:	ee17 3a10 	vmov	r3, s14
d00408e6:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d00408ea:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d00408ee:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00408f2:	ed8d 7a02 	vstr	s14, [sp, #8]
d00408f6:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d00408fa:	f89d b008 	ldrb.w	fp, [sp, #8]
d00408fe:	edcd 7a03 	vstr	s15, [sp, #12]
d0040902:	ea43 030b 	orr.w	r3, r3, fp
d0040906:	f89d a00c 	ldrb.w	sl, [sp, #12]
d004090a:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d004090e:	f846 3f04 	str.w	r3, [r6, #4]!
d0040912:	680b      	ldr	r3, [r1, #0]
d0040914:	9601      	str	r6, [sp, #4]
d0040916:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d004091a:	ea4f 6613 	mov.w	r6, r3, lsr #24
d004091e:	fa5f fa83 	uxtb.w	sl, r3
d0040922:	ee07 6a10 	vmov	s14, r6
d0040926:	eba5 060b 	sub.w	r6, r5, fp
d004092a:	ee04 ba10 	vmov	s8, fp
d004092e:	ee07 6a90 	vmov	s15, r6
d0040932:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0040936:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d004093a:	f3c3 2307 	ubfx	r3, r3, #8, #8
d004093e:	ee02 6a10 	vmov	s4, r6
d0040942:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040946:	eba2 060a 	sub.w	r6, r2, sl
d004094a:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d004094e:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0040952:	ee04 aa10 	vmov	s8, sl
d0040956:	ee02 6a90 	vmov	s5, r6
d004095a:	eba0 0603 	sub.w	r6, r0, r3
d004095e:	eee5 3a27 	vfma.f32	s7, s10, s15
d0040962:	ee07 3a90 	vmov	s15, r3
d0040966:	eea5 7a02 	vfma.f32	s14, s10, s4
d004096a:	ee03 6a10 	vmov	s6, r6
d004096e:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0040972:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0040976:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d004097a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d004097e:	eea5 4a22 	vfma.f32	s8, s10, s5
d0040982:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0040986:	eee5 7a03 	vfma.f32	s15, s10, s6
d004098a:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d004098e:	edcd 3a02 	vstr	s7, [sp, #8]
d0040992:	f89d a008 	ldrb.w	sl, [sp, #8]
d0040996:	ee17 3a10 	vmov	r3, s14
d004099a:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d004099e:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d00409a2:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00409a6:	ed8d 7a02 	vstr	s14, [sp, #8]
d00409aa:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d00409ae:	f89d b008 	ldrb.w	fp, [sp, #8]
d00409b2:	edcd 7a03 	vstr	s15, [sp, #12]
d00409b6:	ea43 030b 	orr.w	r3, r3, fp
d00409ba:	f89d a00c 	ldrb.w	sl, [sp, #12]
d00409be:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d00409c2:	f848 3f04 	str.w	r3, [r8, #4]!
d00409c6:	680b      	ldr	r3, [r1, #0]
d00409c8:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d00409cc:	ea4f 6613 	mov.w	r6, r3, lsr #24
d00409d0:	fa5f fa83 	uxtb.w	sl, r3
d00409d4:	ee07 6a10 	vmov	s14, r6
d00409d8:	eba5 060b 	sub.w	r6, r5, fp
d00409dc:	ee04 ba10 	vmov	s8, fp
d00409e0:	ee07 6a90 	vmov	s15, r6
d00409e4:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d00409e8:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d00409ec:	f3c3 2307 	ubfx	r3, r3, #8, #8
d00409f0:	ee02 6a10 	vmov	s4, r6
d00409f4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00409f8:	eba2 060a 	sub.w	r6, r2, sl
d00409fc:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0040a00:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0040a04:	ee04 aa10 	vmov	s8, sl
d0040a08:	ee02 6a90 	vmov	s5, r6
d0040a0c:	eba0 0603 	sub.w	r6, r0, r3
d0040a10:	eee5 3aa7 	vfma.f32	s7, s11, s15
d0040a14:	ee07 3a90 	vmov	s15, r3
d0040a18:	eea5 7a82 	vfma.f32	s14, s11, s4
d0040a1c:	ee03 6a10 	vmov	s6, r6
d0040a20:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0040a24:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0040a28:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0040a2c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040a30:	eea5 4aa2 	vfma.f32	s8, s11, s5
d0040a34:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0040a38:	eee5 7a83 	vfma.f32	s15, s11, s6
d0040a3c:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0040a40:	edcd 3a02 	vstr	s7, [sp, #8]
d0040a44:	f89d a008 	ldrb.w	sl, [sp, #8]
d0040a48:	ee17 3a10 	vmov	r3, s14
d0040a4c:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0040a50:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0040a54:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0040a58:	ed8d 7a02 	vstr	s14, [sp, #8]
d0040a5c:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0040a60:	f89d b008 	ldrb.w	fp, [sp, #8]
d0040a64:	edcd 7a03 	vstr	s15, [sp, #12]
d0040a68:	ea43 030b 	orr.w	r3, r3, fp
d0040a6c:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0040a70:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0040a74:	f84e 3f04 	str.w	r3, [lr, #4]!
d0040a78:	680b      	ldr	r3, [r1, #0]
d0040a7a:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0040a7e:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0040a82:	fa5f fa83 	uxtb.w	sl, r3
d0040a86:	ee07 6a10 	vmov	s14, r6
d0040a8a:	eba5 060b 	sub.w	r6, r5, fp
d0040a8e:	ee04 ba10 	vmov	s8, fp
d0040a92:	ee07 6a90 	vmov	s15, r6
d0040a96:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0040a9a:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0040a9e:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0040aa2:	ee02 6a10 	vmov	s4, r6
d0040aa6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040aaa:	eba2 060a 	sub.w	r6, r2, sl
d0040aae:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0040ab2:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0040ab6:	ee04 aa10 	vmov	s8, sl
d0040aba:	ee02 6a90 	vmov	s5, r6
d0040abe:	eba0 0603 	sub.w	r6, r0, r3
d0040ac2:	eee6 3a27 	vfma.f32	s7, s12, s15
d0040ac6:	ee07 3a90 	vmov	s15, r3
d0040aca:	eea6 7a02 	vfma.f32	s14, s12, s4
d0040ace:	ee03 6a10 	vmov	s6, r6
d0040ad2:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0040ad6:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0040ada:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0040ade:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040ae2:	eea6 4a22 	vfma.f32	s8, s12, s5
d0040ae6:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0040aea:	eee6 7a03 	vfma.f32	s15, s12, s6
d0040aee:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0040af2:	edcd 3a02 	vstr	s7, [sp, #8]
d0040af6:	f89d a008 	ldrb.w	sl, [sp, #8]
d0040afa:	ee17 3a10 	vmov	r3, s14
d0040afe:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0040b02:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0040b06:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0040b0a:	ed8d 7a02 	vstr	s14, [sp, #8]
d0040b0e:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0040b12:	f89d b008 	ldrb.w	fp, [sp, #8]
d0040b16:	edcd 7a03 	vstr	s15, [sp, #12]
d0040b1a:	ea43 030b 	orr.w	r3, r3, fp
d0040b1e:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0040b22:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0040b26:	f84c 3f04 	str.w	r3, [ip, #4]!
d0040b2a:	680b      	ldr	r3, [r1, #0]
d0040b2c:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0040b30:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0040b34:	fa5f fa83 	uxtb.w	sl, r3
d0040b38:	ee07 6a10 	vmov	s14, r6
d0040b3c:	eba5 060b 	sub.w	r6, r5, fp
d0040b40:	ee04 ba10 	vmov	s8, fp
d0040b44:	ee07 6a90 	vmov	s15, r6
d0040b48:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0040b4c:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0040b50:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0040b54:	ee02 6a10 	vmov	s4, r6
d0040b58:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040b5c:	eba2 060a 	sub.w	r6, r2, sl
d0040b60:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0040b64:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0040b68:	ee04 aa10 	vmov	s8, sl
d0040b6c:	ee02 6a90 	vmov	s5, r6
d0040b70:	eba0 0603 	sub.w	r6, r0, r3
d0040b74:	eee6 3aa7 	vfma.f32	s7, s13, s15
d0040b78:	ee07 3a90 	vmov	s15, r3
d0040b7c:	eea6 7a82 	vfma.f32	s14, s13, s4
d0040b80:	ee03 6a10 	vmov	s6, r6
d0040b84:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0040b88:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0040b8c:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0040b90:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0040b94:	eea6 4aa2 	vfma.f32	s8, s13, s5
d0040b98:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0040b9c:	eee6 7a83 	vfma.f32	s15, s13, s6
d0040ba0:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0040ba4:	edcd 3a02 	vstr	s7, [sp, #8]
d0040ba8:	f89d a008 	ldrb.w	sl, [sp, #8]
d0040bac:	ee17 3a10 	vmov	r3, s14
d0040bb0:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0040bb4:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0040bb8:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0040bbc:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0040bc0:	ed8d 7a02 	vstr	s14, [sp, #8]
d0040bc4:	f89d b008 	ldrb.w	fp, [sp, #8]
d0040bc8:	edcd 7a03 	vstr	s15, [sp, #12]
d0040bcc:	ea43 030b 	orr.w	r3, r3, fp
d0040bd0:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0040bd4:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0040bd8:	f847 3f04 	str.w	r3, [r7, #4]!
d0040bdc:	f47f ae3e 	bne.w	d004085c <buildLightingCLUT+0xb0>
d0040be0:	b005      	add	sp, #20
d0040be2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0040be6:	bf00      	nop

d0040be8 <main>:
d0040be8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0040bec:	4cb4      	ldr	r4, [pc, #720]	; (d0040ec0 <main+0x2d8>)
d0040bee:	f8df 82f8 	ldr.w	r8, [pc, #760]	; d0040ee8 <main+0x300>
d0040bf2:	4eb4      	ldr	r6, [pc, #720]	; (d0040ec4 <main+0x2dc>)
d0040bf4:	ed2d 8b06 	vpush	{d8-d10}
d0040bf8:	b0d0      	sub	sp, #320	; 0x140
d0040bfa:	eef2 8a04 	vmov.f32	s17, #36	; 0x41200000  10.0
d0040bfe:	f7ff fd3d 	bl	d004067c <initSystem>
d0040c02:	f04f 4c7f 	mov.w	ip, #4278190080	; 0xff000000
d0040c06:	ad2f      	add	r5, sp, #188	; 0xbc
d0040c08:	af12      	add	r7, sp, #72	; 0x48
d0040c0a:	ed9f 8aaf 	vldr	s16, [pc, #700]	; d0040ec8 <main+0x2e0>
d0040c0e:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d0040c10:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0040c12:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d0040c14:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0040c16:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d0040c18:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0040c1a:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
d0040c1e:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d0040c22:	f104 0510 	add.w	r5, r4, #16
d0040c26:	f8c8 c000 	str.w	ip, [r8]
d0040c2a:	9700      	str	r7, [sp, #0]
d0040c2c:	3424      	adds	r4, #36	; 0x24
d0040c2e:	f8c8 c040 	str.w	ip, [r8, #64]	; 0x40
d0040c32:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0040c34:	682d      	ldr	r5, [r5, #0]
d0040c36:	c70f      	stmia	r7!, {r0, r1, r2, r3}
d0040c38:	4663      	mov	r3, ip
d0040c3a:	603d      	str	r5, [r7, #0]
d0040c3c:	4640      	mov	r0, r8
d0040c3e:	2210      	movs	r2, #16
d0040c40:	a92f      	add	r1, sp, #188	; 0xbc
d0040c42:	ad09      	add	r5, sp, #36	; 0x24
d0040c44:	f7ff fdb2 	bl	d00407ac <buildLightingCLUT>
d0040c48:	7b33      	ldrb	r3, [r6, #12]
d0040c4a:	7b72      	ldrb	r2, [r6, #13]
d0040c4c:	4640      	mov	r0, r8
d0040c4e:	7bb1      	ldrb	r1, [r6, #14]
d0040c50:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040c54:	7bf2      	ldrb	r2, [r6, #15]
d0040c56:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040c5a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040c5e:	681b      	ldr	r3, [r3, #0]
d0040c60:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d0040c62:	4798      	blx	r3
d0040c64:	7c33      	ldrb	r3, [r6, #16]
d0040c66:	7c72      	ldrb	r2, [r6, #17]
d0040c68:	2001      	movs	r0, #1
d0040c6a:	7cb1      	ldrb	r1, [r6, #18]
d0040c6c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040c70:	7cf2      	ldrb	r2, [r6, #19]
d0040c72:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040c76:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040c7a:	699b      	ldr	r3, [r3, #24]
d0040c7c:	685b      	ldr	r3, [r3, #4]
d0040c7e:	4798      	blx	r3
d0040c80:	7c33      	ldrb	r3, [r6, #16]
d0040c82:	7c72      	ldrb	r2, [r6, #17]
d0040c84:	2001      	movs	r0, #1
d0040c86:	7cb1      	ldrb	r1, [r6, #18]
d0040c88:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040c8c:	7cf2      	ldrb	r2, [r6, #19]
d0040c8e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040c92:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040c96:	699b      	ldr	r3, [r3, #24]
d0040c98:	689b      	ldr	r3, [r3, #8]
d0040c9a:	4798      	blx	r3
d0040c9c:	7c33      	ldrb	r3, [r6, #16]
d0040c9e:	7c72      	ldrb	r2, [r6, #17]
d0040ca0:	2000      	movs	r0, #0
d0040ca2:	7cb1      	ldrb	r1, [r6, #18]
d0040ca4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040ca8:	7cf2      	ldrb	r2, [r6, #19]
d0040caa:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040cae:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040cb2:	699b      	ldr	r3, [r3, #24]
d0040cb4:	68db      	ldr	r3, [r3, #12]
d0040cb6:	4798      	blx	r3
d0040cb8:	7c33      	ldrb	r3, [r6, #16]
d0040cba:	7c72      	ldrb	r2, [r6, #17]
d0040cbc:	2000      	movs	r0, #0
d0040cbe:	7cb1      	ldrb	r1, [r6, #18]
d0040cc0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040cc4:	7cf2      	ldrb	r2, [r6, #19]
d0040cc6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040cca:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040cce:	699b      	ldr	r3, [r3, #24]
d0040cd0:	691b      	ldr	r3, [r3, #16]
d0040cd2:	4798      	blx	r3
d0040cd4:	7c33      	ldrb	r3, [r6, #16]
d0040cd6:	7c72      	ldrb	r2, [r6, #17]
d0040cd8:	7cb1      	ldrb	r1, [r6, #18]
d0040cda:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040cde:	7cf2      	ldrb	r2, [r6, #19]
d0040ce0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040ce4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040ce8:	685b      	ldr	r3, [r3, #4]
d0040cea:	681b      	ldr	r3, [r3, #0]
d0040cec:	4798      	blx	r3
d0040cee:	7c33      	ldrb	r3, [r6, #16]
d0040cf0:	7c72      	ldrb	r2, [r6, #17]
d0040cf2:	7cb1      	ldrb	r1, [r6, #18]
d0040cf4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040cf8:	7cf2      	ldrb	r2, [r6, #19]
d0040cfa:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040cfe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040d02:	689b      	ldr	r3, [r3, #8]
d0040d04:	681b      	ldr	r3, [r3, #0]
d0040d06:	4798      	blx	r3
d0040d08:	7c33      	ldrb	r3, [r6, #16]
d0040d0a:	7c72      	ldrb	r2, [r6, #17]
d0040d0c:	a83f      	add	r0, sp, #252	; 0xfc
d0040d0e:	7cb1      	ldrb	r1, [r6, #18]
d0040d10:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040d14:	7cf2      	ldrb	r2, [r6, #19]
d0040d16:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040d1a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040d1e:	681b      	ldr	r3, [r3, #0]
d0040d20:	681b      	ldr	r3, [r3, #0]
d0040d22:	4798      	blx	r3
d0040d24:	7c33      	ldrb	r3, [r6, #16]
d0040d26:	7c72      	ldrb	r2, [r6, #17]
d0040d28:	a83f      	add	r0, sp, #252	; 0xfc
d0040d2a:	7cb1      	ldrb	r1, [r6, #18]
d0040d2c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040d30:	7cf2      	ldrb	r2, [r6, #19]
d0040d32:	eddf 0a66 	vldr	s1, [pc, #408]	; d0040ecc <main+0x2e4>
d0040d36:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040d3a:	ed9f 0a65 	vldr	s0, [pc, #404]	; d0040ed0 <main+0x2e8>
d0040d3e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040d42:	681b      	ldr	r3, [r3, #0]
d0040d44:	685b      	ldr	r3, [r3, #4]
d0040d46:	4798      	blx	r3
d0040d48:	7c33      	ldrb	r3, [r6, #16]
d0040d4a:	7c72      	ldrb	r2, [r6, #17]
d0040d4c:	a83f      	add	r0, sp, #252	; 0xfc
d0040d4e:	7cb1      	ldrb	r1, [r6, #18]
d0040d50:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040d54:	7cf2      	ldrb	r2, [r6, #19]
d0040d56:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040d5a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040d5e:	681b      	ldr	r3, [r3, #0]
d0040d60:	695b      	ldr	r3, [r3, #20]
d0040d62:	4798      	blx	r3
d0040d64:	7c33      	ldrb	r3, [r6, #16]
d0040d66:	7c72      	ldrb	r2, [r6, #17]
d0040d68:	eef0 0a68 	vmov.f32	s1, s17
d0040d6c:	7cb1      	ldrb	r1, [r6, #18]
d0040d6e:	eeb0 0a48 	vmov.f32	s0, s16
d0040d72:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040d76:	7cf2      	ldrb	r2, [r6, #19]
d0040d78:	eeb0 1a48 	vmov.f32	s2, s16
d0040d7c:	a83f      	add	r0, sp, #252	; 0xfc
d0040d7e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040d82:	edcd 8a07 	vstr	s17, [sp, #28]
d0040d86:	ed8d 8a06 	vstr	s16, [sp, #24]
d0040d8a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040d8e:	ed8d 8a08 	vstr	s16, [sp, #32]
d0040d92:	681b      	ldr	r3, [r3, #0]
d0040d94:	689b      	ldr	r3, [r3, #8]
d0040d96:	4798      	blx	r3
d0040d98:	7c33      	ldrb	r3, [r6, #16]
d0040d9a:	7c72      	ldrb	r2, [r6, #17]
d0040d9c:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d0040da0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040da4:	7cb2      	ldrb	r2, [r6, #18]
d0040da6:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040daa:	7cf2      	ldrb	r2, [r6, #19]
d0040dac:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040db0:	e894 0007 	ldmia.w	r4, {r0, r1, r2}
d0040db4:	689b      	ldr	r3, [r3, #8]
d0040db6:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d0040dba:	685b      	ldr	r3, [r3, #4]
d0040dbc:	2001      	movs	r0, #1
d0040dbe:	ed95 0a00 	vldr	s0, [r5]
d0040dc2:	edd5 0a01 	vldr	s1, [r5, #4]
d0040dc6:	ed95 1a02 	vldr	s2, [r5, #8]
d0040dca:	4798      	blx	r3
d0040dcc:	eeb0 1a68 	vmov.f32	s2, s17
d0040dd0:	eef0 0a68 	vmov.f32	s1, s17
d0040dd4:	a817      	add	r0, sp, #92	; 0x5c
d0040dd6:	eeb0 0a68 	vmov.f32	s0, s17
d0040dda:	f7ff f9a1 	bl	d0040120 <createBox>
d0040dde:	7c33      	ldrb	r3, [r6, #16]
d0040de0:	7c72      	ldrb	r2, [r6, #17]
d0040de2:	eeb0 0a48 	vmov.f32	s0, s16
d0040de6:	7cb1      	ldrb	r1, [r6, #18]
d0040de8:	eef0 0a48 	vmov.f32	s1, s16
d0040dec:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040df0:	7cf2      	ldrb	r2, [r6, #19]
d0040df2:	ed9f 1a38 	vldr	s2, [pc, #224]	; d0040ed4 <main+0x2ec>
d0040df6:	a817      	add	r0, sp, #92	; 0x5c
d0040df8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040dfc:	ed8d 8a0c 	vstr	s16, [sp, #48]	; 0x30
d0040e00:	ed8d 1a0e 	vstr	s2, [sp, #56]	; 0x38
d0040e04:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040e08:	ed8d 8a0d 	vstr	s16, [sp, #52]	; 0x34
d0040e0c:	68db      	ldr	r3, [r3, #12]
d0040e0e:	681b      	ldr	r3, [r3, #0]
d0040e10:	4798      	blx	r3
d0040e12:	a923      	add	r1, sp, #140	; 0x8c
d0040e14:	4830      	ldr	r0, [pc, #192]	; (d0040ed8 <main+0x2f0>)
d0040e16:	ed9f 0b28 	vldr	d0, [pc, #160]	; d0040eb8 <main+0x2d0>
d0040e1a:	f7ff fa31 	bl	d0040280 <loadMeshSB3D>
d0040e1e:	7c33      	ldrb	r3, [r6, #16]
d0040e20:	7c72      	ldrb	r2, [r6, #17]
d0040e22:	eefa 0a04 	vmov.f32	s1, #164	; 0xc1200000 -10.0
d0040e26:	7cb1      	ldrb	r1, [r6, #18]
d0040e28:	eeb0 0a48 	vmov.f32	s0, s16
d0040e2c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040e30:	7cf2      	ldrb	r2, [r6, #19]
d0040e32:	eeb0 1a48 	vmov.f32	s2, s16
d0040e36:	4604      	mov	r4, r0
d0040e38:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040e3c:	a823      	add	r0, sp, #140	; 0x8c
d0040e3e:	edcd 0a10 	vstr	s1, [sp, #64]	; 0x40
d0040e42:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040e46:	ed8d 8a0f 	vstr	s16, [sp, #60]	; 0x3c
d0040e4a:	ed8d 8a11 	vstr	s16, [sp, #68]	; 0x44
d0040e4e:	68db      	ldr	r3, [r3, #12]
d0040e50:	681b      	ldr	r3, [r3, #0]
d0040e52:	4798      	blx	r3
d0040e54:	7833      	ldrb	r3, [r6, #0]
d0040e56:	7872      	ldrb	r2, [r6, #1]
d0040e58:	78b1      	ldrb	r1, [r6, #2]
d0040e5a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040e5e:	78f2      	ldrb	r2, [r6, #3]
d0040e60:	481e      	ldr	r0, [pc, #120]	; (d0040edc <main+0x2f4>)
d0040e62:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040e66:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040e6a:	689b      	ldr	r3, [r3, #8]
d0040e6c:	4798      	blx	r3
d0040e6e:	7833      	ldrb	r3, [r6, #0]
d0040e70:	7872      	ldrb	r2, [r6, #1]
d0040e72:	78b1      	ldrb	r1, [r6, #2]
d0040e74:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040e78:	78f2      	ldrb	r2, [r6, #3]
d0040e7a:	2c00      	cmp	r4, #0
d0040e7c:	f040 81be 	bne.w	d00411fc <main+0x614>
d0040e80:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040e84:	4816      	ldr	r0, [pc, #88]	; (d0040ee0 <main+0x2f8>)
d0040e86:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040e8a:	689b      	ldr	r3, [r3, #8]
d0040e8c:	4798      	blx	r3
d0040e8e:	7b33      	ldrb	r3, [r6, #12]
d0040e90:	202b      	movs	r0, #43	; 0x2b
d0040e92:	7b72      	ldrb	r2, [r6, #13]
d0040e94:	2702      	movs	r7, #2
d0040e96:	7bb1      	ldrb	r1, [r6, #14]
d0040e98:	2509      	movs	r5, #9
d0040e9a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040e9e:	7bf2      	ldrb	r2, [r6, #15]
d0040ea0:	f8df c048 	ldr.w	ip, [pc, #72]	; d0040eec <main+0x304>
d0040ea4:	243b      	movs	r4, #59	; 0x3b
d0040ea6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040eaa:	f8df e044 	ldr.w	lr, [pc, #68]	; d0040ef0 <main+0x308>
d0040eae:	490d      	ldr	r1, [pc, #52]	; (d0040ee4 <main+0x2fc>)
d0040eb0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040eb4:	e01e      	b.n	d0040ef4 <main+0x30c>
d0040eb6:	bf00      	nop
d0040eb8:	00000000 	.word	0x00000000
d0040ebc:	40690000 	.word	0x40690000
d0040ec0:	d0041d38 	.word	0xd0041d38
d0040ec4:	2001f000 	.word	0x2001f000
d0040ec8:	00000000 	.word	0x00000000
d0040ecc:	459c4000 	.word	0x459c4000
d0040ed0:	3c23d70a 	.word	0x3c23d70a
d0040ed4:	42c80000 	.word	0x42c80000
d0040ed8:	d0041cf8 	.word	0xd0041cf8
d0040edc:	d0041d08 	.word	0xd0041d08
d0040ee0:	d0041d18 	.word	0xd0041d18
d0040ee4:	d00422c0 	.word	0xd00422c0
d0040ee8:	d0041e04 	.word	0xd0041e04
d0040eec:	d00422c8 	.word	0xd00422c8
d0040ef0:	d00422c9 	.word	0xd00422c9
d0040ef4:	4aae      	ldr	r2, [pc, #696]	; (d00411b0 <main+0x5c8>)
d0040ef6:	f88c 5000 	strb.w	r5, [ip]
d0040efa:	f88e 4000 	strb.w	r4, [lr]
d0040efe:	7008      	strb	r0, [r1, #0]
d0040f00:	7017      	strb	r7, [r2, #0]
d0040f02:	f8df 82cc 	ldr.w	r8, [pc, #716]	; d00411d0 <main+0x5e8>
d0040f06:	681b      	ldr	r3, [r3, #0]
d0040f08:	f8d8 0000 	ldr.w	r0, [r8]
d0040f0c:	69db      	ldr	r3, [r3, #28]
d0040f0e:	4798      	blx	r3
d0040f10:	7b33      	ldrb	r3, [r6, #12]
d0040f12:	7b72      	ldrb	r2, [r6, #13]
d0040f14:	7bb1      	ldrb	r1, [r6, #14]
d0040f16:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040f1a:	7bf2      	ldrb	r2, [r6, #15]
d0040f1c:	f8d8 0000 	ldr.w	r0, [r8]
d0040f20:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040f24:	4fa3      	ldr	r7, [pc, #652]	; (d00411b4 <main+0x5cc>)
d0040f26:	f8df 92ac 	ldr.w	r9, [pc, #684]	; d00411d4 <main+0x5ec>
d0040f2a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040f2e:	eddf 9aa2 	vldr	s19, [pc, #648]	; d00411b8 <main+0x5d0>
d0040f32:	ed9f 9aa2 	vldr	s18, [pc, #648]	; d00411bc <main+0x5d4>
d0040f36:	681b      	ldr	r3, [r3, #0]
d0040f38:	eddf 8aa1 	vldr	s17, [pc, #644]	; d00411c0 <main+0x5d8>
d0040f3c:	699b      	ldr	r3, [r3, #24]
d0040f3e:	4798      	blx	r3
d0040f40:	7b33      	ldrb	r3, [r6, #12]
d0040f42:	7b72      	ldrb	r2, [r6, #13]
d0040f44:	2001      	movs	r0, #1
d0040f46:	7bb1      	ldrb	r1, [r6, #14]
d0040f48:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040f4c:	7bf2      	ldrb	r2, [r6, #15]
d0040f4e:	ed9f 8a9d 	vldr	s16, [pc, #628]	; d00411c4 <main+0x5dc>
d0040f52:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040f56:	eddf aa9c 	vldr	s21, [pc, #624]	; d00411c8 <main+0x5e0>
d0040f5a:	ed9f aa9c 	vldr	s20, [pc, #624]	; d00411cc <main+0x5e4>
d0040f5e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040f62:	685b      	ldr	r3, [r3, #4]
d0040f64:	68db      	ldr	r3, [r3, #12]
d0040f66:	4798      	blx	r3
d0040f68:	7b33      	ldrb	r3, [r6, #12]
d0040f6a:	7b72      	ldrb	r2, [r6, #13]
d0040f6c:	211e      	movs	r1, #30
d0040f6e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040f72:	7bb2      	ldrb	r2, [r6, #14]
d0040f74:	4608      	mov	r0, r1
d0040f76:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040f7a:	7bf2      	ldrb	r2, [r6, #15]
d0040f7c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040f80:	685b      	ldr	r3, [r3, #4]
d0040f82:	689b      	ldr	r3, [r3, #8]
d0040f84:	4798      	blx	r3
d0040f86:	7833      	ldrb	r3, [r6, #0]
d0040f88:	7872      	ldrb	r2, [r6, #1]
d0040f8a:	a903      	add	r1, sp, #12
d0040f8c:	a802      	add	r0, sp, #8
d0040f8e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040f92:	78b2      	ldrb	r2, [r6, #2]
d0040f94:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040f98:	78f2      	ldrb	r2, [r6, #3]
d0040f9a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040f9e:	68db      	ldr	r3, [r3, #12]
d0040fa0:	4798      	blx	r3
d0040fa2:	7833      	ldrb	r3, [r6, #0]
d0040fa4:	7872      	ldrb	r2, [r6, #1]
d0040fa6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040faa:	78b2      	ldrb	r2, [r6, #2]
d0040fac:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0040fb0:	78f2      	ldrb	r2, [r6, #3]
d0040fb2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040fb6:	699b      	ldr	r3, [r3, #24]
d0040fb8:	4798      	blx	r3
d0040fba:	7833      	ldrb	r3, [r6, #0]
d0040fbc:	7872      	ldrb	r2, [r6, #1]
d0040fbe:	78b1      	ldrb	r1, [r6, #2]
d0040fc0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0040fc4:	78f2      	ldrb	r2, [r6, #3]
d0040fc6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0040fca:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040fce:	69db      	ldr	r3, [r3, #28]
d0040fd0:	4798      	blx	r3
d0040fd2:	7832      	ldrb	r2, [r6, #0]
d0040fd4:	7873      	ldrb	r3, [r6, #1]
d0040fd6:	4604      	mov	r4, r0
d0040fd8:	78b0      	ldrb	r0, [r6, #2]
d0040fda:	a905      	add	r1, sp, #20
d0040fdc:	ea42 2303 	orr.w	r3, r2, r3, lsl #8
d0040fe0:	78f2      	ldrb	r2, [r6, #3]
d0040fe2:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0040fe6:	a804      	add	r0, sp, #16
d0040fe8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0040fec:	695b      	ldr	r3, [r3, #20]
d0040fee:	4798      	blx	r3
d0040ff0:	7c33      	ldrb	r3, [r6, #16]
d0040ff2:	7c72      	ldrb	r2, [r6, #17]
d0040ff4:	eef0 0a48 	vmov.f32	s1, s16
d0040ff8:	7cb5      	ldrb	r5, [r6, #18]
d0040ffa:	2100      	movs	r1, #0
d0040ffc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041000:	e9dd 0204 	ldrd	r0, r2, [sp, #16]
d0041004:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0041008:	7cf5      	ldrb	r5, [r6, #19]
d004100a:	4240      	negs	r0, r0
d004100c:	4252      	negs	r2, r2
d004100e:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d0041012:	ee07 0a90 	vmov	s15, r0
d0041016:	a83f      	add	r0, sp, #252	; 0xfc
d0041018:	681b      	ldr	r3, [r3, #0]
d004101a:	eeb8 1ae7 	vcvt.f32.s32	s2, s15
d004101e:	ee07 2a90 	vmov	s15, r2
d0041022:	691b      	ldr	r3, [r3, #16]
d0041024:	eeb8 0ae7 	vcvt.f32.s32	s0, s15
d0041028:	ee21 1a29 	vmul.f32	s2, s2, s19
d004102c:	ee20 0a09 	vmul.f32	s0, s0, s18
d0041030:	4798      	blx	r3
d0041032:	eddd 0a46 	vldr	s1, [sp, #280]	; 0x118
d0041036:	ee60 0aa8 	vmul.f32	s1, s1, s17
d004103a:	eef5 0a40 	vcmp.f32	s1, #0.0
d004103e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0041042:	d014      	beq.n	d004106e <main+0x486>
d0041044:	7c33      	ldrb	r3, [r6, #16]
d0041046:	eef1 0a60 	vneg.f32	s1, s1
d004104a:	7c72      	ldrb	r2, [r6, #17]
d004104c:	eeb0 1a48 	vmov.f32	s2, s16
d0041050:	7cb0      	ldrb	r0, [r6, #18]
d0041052:	2101      	movs	r1, #1
d0041054:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041058:	7cf2      	ldrb	r2, [r6, #19]
d004105a:	ed9f 0a5a 	vldr	s0, [pc, #360]	; d00411c4 <main+0x5dc>
d004105e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0041062:	a83f      	add	r0, sp, #252	; 0xfc
d0041064:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041068:	681b      	ldr	r3, [r3, #0]
d004106a:	691b      	ldr	r3, [r3, #16]
d004106c:	4798      	blx	r3
d004106e:	7833      	ldrb	r3, [r6, #0]
d0041070:	7872      	ldrb	r2, [r6, #1]
d0041072:	78b1      	ldrb	r1, [r6, #2]
d0041074:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041078:	78f2      	ldrb	r2, [r6, #3]
d004107a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004107e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041082:	699b      	ldr	r3, [r3, #24]
d0041084:	4798      	blx	r3
d0041086:	07e2      	lsls	r2, r4, #31
d0041088:	d513      	bpl.n	d00410b2 <main+0x4ca>
d004108a:	7c33      	ldrb	r3, [r6, #16]
d004108c:	eeb0 1a6a 	vmov.f32	s2, s21
d0041090:	7c72      	ldrb	r2, [r6, #17]
d0041092:	eef0 0a48 	vmov.f32	s1, s16
d0041096:	7cb1      	ldrb	r1, [r6, #18]
d0041098:	a83f      	add	r0, sp, #252	; 0xfc
d004109a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004109e:	7cf2      	ldrb	r2, [r6, #19]
d00410a0:	ed9f 0a48 	vldr	s0, [pc, #288]	; d00411c4 <main+0x5dc>
d00410a4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00410a8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00410ac:	681b      	ldr	r3, [r3, #0]
d00410ae:	68db      	ldr	r3, [r3, #12]
d00410b0:	4798      	blx	r3
d00410b2:	07a3      	lsls	r3, r4, #30
d00410b4:	d513      	bpl.n	d00410de <main+0x4f6>
d00410b6:	7c33      	ldrb	r3, [r6, #16]
d00410b8:	eeb0 1a4a 	vmov.f32	s2, s20
d00410bc:	7c72      	ldrb	r2, [r6, #17]
d00410be:	eef0 0a48 	vmov.f32	s1, s16
d00410c2:	7cb1      	ldrb	r1, [r6, #18]
d00410c4:	a83f      	add	r0, sp, #252	; 0xfc
d00410c6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00410ca:	7cf2      	ldrb	r2, [r6, #19]
d00410cc:	ed9f 0a3d 	vldr	s0, [pc, #244]	; d00411c4 <main+0x5dc>
d00410d0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00410d4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00410d8:	681b      	ldr	r3, [r3, #0]
d00410da:	68db      	ldr	r3, [r3, #12]
d00410dc:	4798      	blx	r3
d00410de:	7b33      	ldrb	r3, [r6, #12]
d00410e0:	7b72      	ldrb	r2, [r6, #13]
d00410e2:	7bb1      	ldrb	r1, [r6, #14]
d00410e4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00410e8:	7bf2      	ldrb	r2, [r6, #15]
d00410ea:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00410ee:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00410f2:	681b      	ldr	r3, [r3, #0]
d00410f4:	68db      	ldr	r3, [r3, #12]
d00410f6:	4798      	blx	r3
d00410f8:	783b      	ldrb	r3, [r7, #0]
d00410fa:	f1c3 0301 	rsb	r3, r3, #1
d00410fe:	b2db      	uxtb	r3, r3
d0041100:	703b      	strb	r3, [r7, #0]
d0041102:	783b      	ldrb	r3, [r7, #0]
d0041104:	2b00      	cmp	r3, #0
d0041106:	d067      	beq.n	d00411d8 <main+0x5f0>
d0041108:	7b33      	ldrb	r3, [r6, #12]
d004110a:	7b72      	ldrb	r2, [r6, #13]
d004110c:	7bb0      	ldrb	r0, [r6, #14]
d004110e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041112:	7bf2      	ldrb	r2, [r6, #15]
d0041114:	f8d9 1000 	ldr.w	r1, [r9]
d0041118:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d004111c:	f8d8 0000 	ldr.w	r0, [r8]
d0041120:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041124:	681b      	ldr	r3, [r3, #0]
d0041126:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0041128:	4798      	blx	r3
d004112a:	7b33      	ldrb	r3, [r6, #12]
d004112c:	f04f 0a00 	mov.w	sl, #0
d0041130:	7b72      	ldrb	r2, [r6, #13]
d0041132:	7bb1      	ldrb	r1, [r6, #14]
d0041134:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041138:	7bf2      	ldrb	r2, [r6, #15]
d004113a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d004113e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041142:	685b      	ldr	r3, [r3, #4]
d0041144:	681b      	ldr	r3, [r3, #0]
d0041146:	4798      	blx	r3
d0041148:	7c33      	ldrb	r3, [r6, #16]
d004114a:	7c72      	ldrb	r2, [r6, #17]
d004114c:	a83f      	add	r0, sp, #252	; 0xfc
d004114e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0041152:	7cb2      	ldrb	r2, [r6, #18]
d0041154:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0041158:	7cf2      	ldrb	r2, [r6, #19]
d004115a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d004115e:	699b      	ldr	r3, [r3, #24]
d0041160:	681b      	ldr	r3, [r3, #0]
d0041162:	4798      	blx	r3
d0041164:	ea4f 048a 	mov.w	r4, sl, lsl #2
d0041168:	f44f 75d0 	mov.w	r5, #416	; 0x1a0
d004116c:	b2e4      	uxtb	r4, r4
d004116e:	2304      	movs	r3, #4
d0041170:	4628      	mov	r0, r5
d0041172:	9400      	str	r4, [sp, #0]
d0041174:	4651      	mov	r1, sl
d0041176:	441d      	add	r5, r3
d0041178:	461a      	mov	r2, r3
d004117a:	3401      	adds	r4, #1
d004117c:	f7ff fa4e 	bl	d004061c <drawRect>
d0041180:	f5b5 7ff0 	cmp.w	r5, #480	; 0x1e0
d0041184:	b2e4      	uxtb	r4, r4
d0041186:	d1f2      	bne.n	d004116e <main+0x586>
d0041188:	f10a 0a04 	add.w	sl, sl, #4
d004118c:	f1ba 0f40 	cmp.w	sl, #64	; 0x40
d0041190:	d1e8      	bne.n	d0041164 <main+0x57c>
d0041192:	7b33      	ldrb	r3, [r6, #12]
d0041194:	7b72      	ldrb	r2, [r6, #13]
d0041196:	7bb1      	ldrb	r1, [r6, #14]
d0041198:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d004119c:	7bf2      	ldrb	r2, [r6, #15]
d004119e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00411a2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00411a6:	681b      	ldr	r3, [r3, #0]
d00411a8:	681b      	ldr	r3, [r3, #0]
d00411aa:	4798      	blx	r3
d00411ac:	e705      	b.n	d0040fba <main+0x3d2>
d00411ae:	bf00      	nop
d00411b0:	d00422c1 	.word	0xd00422c1
d00411b4:	d0042288 	.word	0xd0042288
d00411b8:	3ba3d70a 	.word	0x3ba3d70a
d00411bc:	3c088889 	.word	0x3c088889
d00411c0:	3d75c28f 	.word	0x3d75c28f
d00411c4:	00000000 	.word	0x00000000
d00411c8:	408ccccd 	.word	0x408ccccd
d00411cc:	c08ccccd 	.word	0xc08ccccd
d00411d0:	d00422cc 	.word	0xd00422cc
d00411d4:	d00422c4 	.word	0xd00422c4
d00411d8:	7b33      	ldrb	r3, [r6, #12]
d00411da:	7b72      	ldrb	r2, [r6, #13]
d00411dc:	7bb0      	ldrb	r0, [r6, #14]
d00411de:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00411e2:	7bf2      	ldrb	r2, [r6, #15]
d00411e4:	f8d8 1000 	ldr.w	r1, [r8]
d00411e8:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d00411ec:	f8d9 0000 	ldr.w	r0, [r9]
d00411f0:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00411f4:	681b      	ldr	r3, [r3, #0]
d00411f6:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00411f8:	4798      	blx	r3
d00411fa:	e796      	b.n	d004112a <main+0x542>
d00411fc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0041200:	4802      	ldr	r0, [pc, #8]	; (d004120c <main+0x624>)
d0041202:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0041206:	689b      	ldr	r3, [r3, #8]
d0041208:	4798      	blx	r3
d004120a:	e640      	b.n	d0040e8e <main+0x2a6>
d004120c:	d0041d30 	.word	0xd0041d30

d0041210 <__errno>:
d0041210:	4b01      	ldr	r3, [pc, #4]	; (d0041218 <__errno+0x8>)
d0041212:	6818      	ldr	r0, [r3, #0]
d0041214:	4770      	bx	lr
d0041216:	bf00      	nop
d0041218:	d0042204 	.word	0xd0042204

d004121c <_fclose_r>:
d004121c:	b570      	push	{r4, r5, r6, lr}
d004121e:	4605      	mov	r5, r0
d0041220:	460c      	mov	r4, r1
d0041222:	b911      	cbnz	r1, d004122a <_fclose_r+0xe>
d0041224:	2600      	movs	r6, #0
d0041226:	4630      	mov	r0, r6
d0041228:	bd70      	pop	{r4, r5, r6, pc}
d004122a:	b118      	cbz	r0, d0041234 <_fclose_r+0x18>
d004122c:	6983      	ldr	r3, [r0, #24]
d004122e:	b90b      	cbnz	r3, d0041234 <_fclose_r+0x18>
d0041230:	f000 f982 	bl	d0041538 <__sinit>
d0041234:	4b2c      	ldr	r3, [pc, #176]	; (d00412e8 <_fclose_r+0xcc>)
d0041236:	429c      	cmp	r4, r3
d0041238:	d114      	bne.n	d0041264 <_fclose_r+0x48>
d004123a:	686c      	ldr	r4, [r5, #4]
d004123c:	6e63      	ldr	r3, [r4, #100]	; 0x64
d004123e:	07d8      	lsls	r0, r3, #31
d0041240:	d405      	bmi.n	d004124e <_fclose_r+0x32>
d0041242:	89a3      	ldrh	r3, [r4, #12]
d0041244:	0599      	lsls	r1, r3, #22
d0041246:	d402      	bmi.n	d004124e <_fclose_r+0x32>
d0041248:	6da0      	ldr	r0, [r4, #88]	; 0x58
d004124a:	f000 fa14 	bl	d0041676 <__retarget_lock_acquire_recursive>
d004124e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0041252:	b98b      	cbnz	r3, d0041278 <_fclose_r+0x5c>
d0041254:	6e66      	ldr	r6, [r4, #100]	; 0x64
d0041256:	f016 0601 	ands.w	r6, r6, #1
d004125a:	d1e3      	bne.n	d0041224 <_fclose_r+0x8>
d004125c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d004125e:	f000 fa0b 	bl	d0041678 <__retarget_lock_release_recursive>
d0041262:	e7e0      	b.n	d0041226 <_fclose_r+0xa>
d0041264:	4b21      	ldr	r3, [pc, #132]	; (d00412ec <_fclose_r+0xd0>)
d0041266:	429c      	cmp	r4, r3
d0041268:	d101      	bne.n	d004126e <_fclose_r+0x52>
d004126a:	68ac      	ldr	r4, [r5, #8]
d004126c:	e7e6      	b.n	d004123c <_fclose_r+0x20>
d004126e:	4b20      	ldr	r3, [pc, #128]	; (d00412f0 <_fclose_r+0xd4>)
d0041270:	429c      	cmp	r4, r3
d0041272:	bf08      	it	eq
d0041274:	68ec      	ldreq	r4, [r5, #12]
d0041276:	e7e1      	b.n	d004123c <_fclose_r+0x20>
d0041278:	4621      	mov	r1, r4
d004127a:	4628      	mov	r0, r5
d004127c:	f000 f842 	bl	d0041304 <__sflush_r>
d0041280:	6b23      	ldr	r3, [r4, #48]	; 0x30
d0041282:	4606      	mov	r6, r0
d0041284:	b133      	cbz	r3, d0041294 <_fclose_r+0x78>
d0041286:	6a21      	ldr	r1, [r4, #32]
d0041288:	4628      	mov	r0, r5
d004128a:	4798      	blx	r3
d004128c:	2800      	cmp	r0, #0
d004128e:	bfb8      	it	lt
d0041290:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
d0041294:	89a3      	ldrh	r3, [r4, #12]
d0041296:	061a      	lsls	r2, r3, #24
d0041298:	d503      	bpl.n	d00412a2 <_fclose_r+0x86>
d004129a:	6921      	ldr	r1, [r4, #16]
d004129c:	4628      	mov	r0, r5
d004129e:	f000 fa21 	bl	d00416e4 <_free_r>
d00412a2:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00412a4:	b141      	cbz	r1, d00412b8 <_fclose_r+0x9c>
d00412a6:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00412aa:	4299      	cmp	r1, r3
d00412ac:	d002      	beq.n	d00412b4 <_fclose_r+0x98>
d00412ae:	4628      	mov	r0, r5
d00412b0:	f000 fa18 	bl	d00416e4 <_free_r>
d00412b4:	2300      	movs	r3, #0
d00412b6:	6363      	str	r3, [r4, #52]	; 0x34
d00412b8:	6ca1      	ldr	r1, [r4, #72]	; 0x48
d00412ba:	b121      	cbz	r1, d00412c6 <_fclose_r+0xaa>
d00412bc:	4628      	mov	r0, r5
d00412be:	f000 fa11 	bl	d00416e4 <_free_r>
d00412c2:	2300      	movs	r3, #0
d00412c4:	64a3      	str	r3, [r4, #72]	; 0x48
d00412c6:	f000 f91f 	bl	d0041508 <__sfp_lock_acquire>
d00412ca:	2300      	movs	r3, #0
d00412cc:	81a3      	strh	r3, [r4, #12]
d00412ce:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00412d0:	07db      	lsls	r3, r3, #31
d00412d2:	d402      	bmi.n	d00412da <_fclose_r+0xbe>
d00412d4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00412d6:	f000 f9cf 	bl	d0041678 <__retarget_lock_release_recursive>
d00412da:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00412dc:	f000 f9ca 	bl	d0041674 <__retarget_lock_close_recursive>
d00412e0:	f000 f918 	bl	d0041514 <__sfp_lock_release>
d00412e4:	e79f      	b.n	d0041226 <_fclose_r+0xa>
d00412e6:	bf00      	nop
d00412e8:	d0041db8 	.word	0xd0041db8
d00412ec:	d0041dd8 	.word	0xd0041dd8
d00412f0:	d0041d98 	.word	0xd0041d98

d00412f4 <fclose>:
d00412f4:	4b02      	ldr	r3, [pc, #8]	; (d0041300 <fclose+0xc>)
d00412f6:	4601      	mov	r1, r0
d00412f8:	6818      	ldr	r0, [r3, #0]
d00412fa:	f7ff bf8f 	b.w	d004121c <_fclose_r>
d00412fe:	bf00      	nop
d0041300:	d0042204 	.word	0xd0042204

d0041304 <__sflush_r>:
d0041304:	898a      	ldrh	r2, [r1, #12]
d0041306:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d004130a:	4605      	mov	r5, r0
d004130c:	0710      	lsls	r0, r2, #28
d004130e:	460c      	mov	r4, r1
d0041310:	d458      	bmi.n	d00413c4 <__sflush_r+0xc0>
d0041312:	684b      	ldr	r3, [r1, #4]
d0041314:	2b00      	cmp	r3, #0
d0041316:	dc05      	bgt.n	d0041324 <__sflush_r+0x20>
d0041318:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d004131a:	2b00      	cmp	r3, #0
d004131c:	dc02      	bgt.n	d0041324 <__sflush_r+0x20>
d004131e:	2000      	movs	r0, #0
d0041320:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0041324:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0041326:	2e00      	cmp	r6, #0
d0041328:	d0f9      	beq.n	d004131e <__sflush_r+0x1a>
d004132a:	2300      	movs	r3, #0
d004132c:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0041330:	682f      	ldr	r7, [r5, #0]
d0041332:	602b      	str	r3, [r5, #0]
d0041334:	d032      	beq.n	d004139c <__sflush_r+0x98>
d0041336:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0041338:	89a3      	ldrh	r3, [r4, #12]
d004133a:	075a      	lsls	r2, r3, #29
d004133c:	d505      	bpl.n	d004134a <__sflush_r+0x46>
d004133e:	6863      	ldr	r3, [r4, #4]
d0041340:	1ac0      	subs	r0, r0, r3
d0041342:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0041344:	b10b      	cbz	r3, d004134a <__sflush_r+0x46>
d0041346:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0041348:	1ac0      	subs	r0, r0, r3
d004134a:	2300      	movs	r3, #0
d004134c:	4602      	mov	r2, r0
d004134e:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0041350:	6a21      	ldr	r1, [r4, #32]
d0041352:	4628      	mov	r0, r5
d0041354:	47b0      	blx	r6
d0041356:	1c43      	adds	r3, r0, #1
d0041358:	89a3      	ldrh	r3, [r4, #12]
d004135a:	d106      	bne.n	d004136a <__sflush_r+0x66>
d004135c:	6829      	ldr	r1, [r5, #0]
d004135e:	291d      	cmp	r1, #29
d0041360:	d82c      	bhi.n	d00413bc <__sflush_r+0xb8>
d0041362:	4a2a      	ldr	r2, [pc, #168]	; (d004140c <__sflush_r+0x108>)
d0041364:	40ca      	lsrs	r2, r1
d0041366:	07d6      	lsls	r6, r2, #31
d0041368:	d528      	bpl.n	d00413bc <__sflush_r+0xb8>
d004136a:	2200      	movs	r2, #0
d004136c:	6062      	str	r2, [r4, #4]
d004136e:	04d9      	lsls	r1, r3, #19
d0041370:	6922      	ldr	r2, [r4, #16]
d0041372:	6022      	str	r2, [r4, #0]
d0041374:	d504      	bpl.n	d0041380 <__sflush_r+0x7c>
d0041376:	1c42      	adds	r2, r0, #1
d0041378:	d101      	bne.n	d004137e <__sflush_r+0x7a>
d004137a:	682b      	ldr	r3, [r5, #0]
d004137c:	b903      	cbnz	r3, d0041380 <__sflush_r+0x7c>
d004137e:	6560      	str	r0, [r4, #84]	; 0x54
d0041380:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0041382:	602f      	str	r7, [r5, #0]
d0041384:	2900      	cmp	r1, #0
d0041386:	d0ca      	beq.n	d004131e <__sflush_r+0x1a>
d0041388:	f104 0344 	add.w	r3, r4, #68	; 0x44
d004138c:	4299      	cmp	r1, r3
d004138e:	d002      	beq.n	d0041396 <__sflush_r+0x92>
d0041390:	4628      	mov	r0, r5
d0041392:	f000 f9a7 	bl	d00416e4 <_free_r>
d0041396:	2000      	movs	r0, #0
d0041398:	6360      	str	r0, [r4, #52]	; 0x34
d004139a:	e7c1      	b.n	d0041320 <__sflush_r+0x1c>
d004139c:	6a21      	ldr	r1, [r4, #32]
d004139e:	2301      	movs	r3, #1
d00413a0:	4628      	mov	r0, r5
d00413a2:	47b0      	blx	r6
d00413a4:	1c41      	adds	r1, r0, #1
d00413a6:	d1c7      	bne.n	d0041338 <__sflush_r+0x34>
d00413a8:	682b      	ldr	r3, [r5, #0]
d00413aa:	2b00      	cmp	r3, #0
d00413ac:	d0c4      	beq.n	d0041338 <__sflush_r+0x34>
d00413ae:	2b1d      	cmp	r3, #29
d00413b0:	d001      	beq.n	d00413b6 <__sflush_r+0xb2>
d00413b2:	2b16      	cmp	r3, #22
d00413b4:	d101      	bne.n	d00413ba <__sflush_r+0xb6>
d00413b6:	602f      	str	r7, [r5, #0]
d00413b8:	e7b1      	b.n	d004131e <__sflush_r+0x1a>
d00413ba:	89a3      	ldrh	r3, [r4, #12]
d00413bc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00413c0:	81a3      	strh	r3, [r4, #12]
d00413c2:	e7ad      	b.n	d0041320 <__sflush_r+0x1c>
d00413c4:	690f      	ldr	r7, [r1, #16]
d00413c6:	2f00      	cmp	r7, #0
d00413c8:	d0a9      	beq.n	d004131e <__sflush_r+0x1a>
d00413ca:	0793      	lsls	r3, r2, #30
d00413cc:	680e      	ldr	r6, [r1, #0]
d00413ce:	bf08      	it	eq
d00413d0:	694b      	ldreq	r3, [r1, #20]
d00413d2:	600f      	str	r7, [r1, #0]
d00413d4:	bf18      	it	ne
d00413d6:	2300      	movne	r3, #0
d00413d8:	eba6 0807 	sub.w	r8, r6, r7
d00413dc:	608b      	str	r3, [r1, #8]
d00413de:	f1b8 0f00 	cmp.w	r8, #0
d00413e2:	dd9c      	ble.n	d004131e <__sflush_r+0x1a>
d00413e4:	6a21      	ldr	r1, [r4, #32]
d00413e6:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d00413e8:	4643      	mov	r3, r8
d00413ea:	463a      	mov	r2, r7
d00413ec:	4628      	mov	r0, r5
d00413ee:	47b0      	blx	r6
d00413f0:	2800      	cmp	r0, #0
d00413f2:	dc06      	bgt.n	d0041402 <__sflush_r+0xfe>
d00413f4:	89a3      	ldrh	r3, [r4, #12]
d00413f6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00413fa:	81a3      	strh	r3, [r4, #12]
d00413fc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0041400:	e78e      	b.n	d0041320 <__sflush_r+0x1c>
d0041402:	4407      	add	r7, r0
d0041404:	eba8 0800 	sub.w	r8, r8, r0
d0041408:	e7e9      	b.n	d00413de <__sflush_r+0xda>
d004140a:	bf00      	nop
d004140c:	20400001 	.word	0x20400001

d0041410 <_fflush_r>:
d0041410:	b538      	push	{r3, r4, r5, lr}
d0041412:	690b      	ldr	r3, [r1, #16]
d0041414:	4605      	mov	r5, r0
d0041416:	460c      	mov	r4, r1
d0041418:	b913      	cbnz	r3, d0041420 <_fflush_r+0x10>
d004141a:	2500      	movs	r5, #0
d004141c:	4628      	mov	r0, r5
d004141e:	bd38      	pop	{r3, r4, r5, pc}
d0041420:	b118      	cbz	r0, d004142a <_fflush_r+0x1a>
d0041422:	6983      	ldr	r3, [r0, #24]
d0041424:	b90b      	cbnz	r3, d004142a <_fflush_r+0x1a>
d0041426:	f000 f887 	bl	d0041538 <__sinit>
d004142a:	4b14      	ldr	r3, [pc, #80]	; (d004147c <_fflush_r+0x6c>)
d004142c:	429c      	cmp	r4, r3
d004142e:	d11b      	bne.n	d0041468 <_fflush_r+0x58>
d0041430:	686c      	ldr	r4, [r5, #4]
d0041432:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0041436:	2b00      	cmp	r3, #0
d0041438:	d0ef      	beq.n	d004141a <_fflush_r+0xa>
d004143a:	6e62      	ldr	r2, [r4, #100]	; 0x64
d004143c:	07d0      	lsls	r0, r2, #31
d004143e:	d404      	bmi.n	d004144a <_fflush_r+0x3a>
d0041440:	0599      	lsls	r1, r3, #22
d0041442:	d402      	bmi.n	d004144a <_fflush_r+0x3a>
d0041444:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0041446:	f000 f916 	bl	d0041676 <__retarget_lock_acquire_recursive>
d004144a:	4628      	mov	r0, r5
d004144c:	4621      	mov	r1, r4
d004144e:	f7ff ff59 	bl	d0041304 <__sflush_r>
d0041452:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0041454:	07da      	lsls	r2, r3, #31
d0041456:	4605      	mov	r5, r0
d0041458:	d4e0      	bmi.n	d004141c <_fflush_r+0xc>
d004145a:	89a3      	ldrh	r3, [r4, #12]
d004145c:	059b      	lsls	r3, r3, #22
d004145e:	d4dd      	bmi.n	d004141c <_fflush_r+0xc>
d0041460:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0041462:	f000 f909 	bl	d0041678 <__retarget_lock_release_recursive>
d0041466:	e7d9      	b.n	d004141c <_fflush_r+0xc>
d0041468:	4b05      	ldr	r3, [pc, #20]	; (d0041480 <_fflush_r+0x70>)
d004146a:	429c      	cmp	r4, r3
d004146c:	d101      	bne.n	d0041472 <_fflush_r+0x62>
d004146e:	68ac      	ldr	r4, [r5, #8]
d0041470:	e7df      	b.n	d0041432 <_fflush_r+0x22>
d0041472:	4b04      	ldr	r3, [pc, #16]	; (d0041484 <_fflush_r+0x74>)
d0041474:	429c      	cmp	r4, r3
d0041476:	bf08      	it	eq
d0041478:	68ec      	ldreq	r4, [r5, #12]
d004147a:	e7da      	b.n	d0041432 <_fflush_r+0x22>
d004147c:	d0041db8 	.word	0xd0041db8
d0041480:	d0041dd8 	.word	0xd0041dd8
d0041484:	d0041d98 	.word	0xd0041d98

d0041488 <std>:
d0041488:	2300      	movs	r3, #0
d004148a:	b510      	push	{r4, lr}
d004148c:	4604      	mov	r4, r0
d004148e:	e9c0 3300 	strd	r3, r3, [r0]
d0041492:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0041496:	6083      	str	r3, [r0, #8]
d0041498:	8181      	strh	r1, [r0, #12]
d004149a:	6643      	str	r3, [r0, #100]	; 0x64
d004149c:	81c2      	strh	r2, [r0, #14]
d004149e:	6183      	str	r3, [r0, #24]
d00414a0:	4619      	mov	r1, r3
d00414a2:	2208      	movs	r2, #8
d00414a4:	305c      	adds	r0, #92	; 0x5c
d00414a6:	f000 f915 	bl	d00416d4 <memset>
d00414aa:	4b05      	ldr	r3, [pc, #20]	; (d00414c0 <std+0x38>)
d00414ac:	6263      	str	r3, [r4, #36]	; 0x24
d00414ae:	4b05      	ldr	r3, [pc, #20]	; (d00414c4 <std+0x3c>)
d00414b0:	62a3      	str	r3, [r4, #40]	; 0x28
d00414b2:	4b05      	ldr	r3, [pc, #20]	; (d00414c8 <std+0x40>)
d00414b4:	62e3      	str	r3, [r4, #44]	; 0x2c
d00414b6:	4b05      	ldr	r3, [pc, #20]	; (d00414cc <std+0x44>)
d00414b8:	6224      	str	r4, [r4, #32]
d00414ba:	6323      	str	r3, [r4, #48]	; 0x30
d00414bc:	bd10      	pop	{r4, pc}
d00414be:	bf00      	nop
d00414c0:	d00419d5 	.word	0xd00419d5
d00414c4:	d00419f7 	.word	0xd00419f7
d00414c8:	d0041a2f 	.word	0xd0041a2f
d00414cc:	d0041a53 	.word	0xd0041a53

d00414d0 <_cleanup_r>:
d00414d0:	4901      	ldr	r1, [pc, #4]	; (d00414d8 <_cleanup_r+0x8>)
d00414d2:	f000 b8af 	b.w	d0041634 <_fwalk_reent>
d00414d6:	bf00      	nop
d00414d8:	d0041411 	.word	0xd0041411

d00414dc <__sfmoreglue>:
d00414dc:	b570      	push	{r4, r5, r6, lr}
d00414de:	1e4a      	subs	r2, r1, #1
d00414e0:	2568      	movs	r5, #104	; 0x68
d00414e2:	4355      	muls	r5, r2
d00414e4:	460e      	mov	r6, r1
d00414e6:	f105 0174 	add.w	r1, r5, #116	; 0x74
d00414ea:	f000 f94b 	bl	d0041784 <_malloc_r>
d00414ee:	4604      	mov	r4, r0
d00414f0:	b140      	cbz	r0, d0041504 <__sfmoreglue+0x28>
d00414f2:	2100      	movs	r1, #0
d00414f4:	e9c0 1600 	strd	r1, r6, [r0]
d00414f8:	300c      	adds	r0, #12
d00414fa:	60a0      	str	r0, [r4, #8]
d00414fc:	f105 0268 	add.w	r2, r5, #104	; 0x68
d0041500:	f000 f8e8 	bl	d00416d4 <memset>
d0041504:	4620      	mov	r0, r4
d0041506:	bd70      	pop	{r4, r5, r6, pc}

d0041508 <__sfp_lock_acquire>:
d0041508:	4801      	ldr	r0, [pc, #4]	; (d0041510 <__sfp_lock_acquire+0x8>)
d004150a:	f000 b8b4 	b.w	d0041676 <__retarget_lock_acquire_recursive>
d004150e:	bf00      	nop
d0041510:	d00422d8 	.word	0xd00422d8

d0041514 <__sfp_lock_release>:
d0041514:	4801      	ldr	r0, [pc, #4]	; (d004151c <__sfp_lock_release+0x8>)
d0041516:	f000 b8af 	b.w	d0041678 <__retarget_lock_release_recursive>
d004151a:	bf00      	nop
d004151c:	d00422d8 	.word	0xd00422d8

d0041520 <__sinit_lock_acquire>:
d0041520:	4801      	ldr	r0, [pc, #4]	; (d0041528 <__sinit_lock_acquire+0x8>)
d0041522:	f000 b8a8 	b.w	d0041676 <__retarget_lock_acquire_recursive>
d0041526:	bf00      	nop
d0041528:	d00422d3 	.word	0xd00422d3

d004152c <__sinit_lock_release>:
d004152c:	4801      	ldr	r0, [pc, #4]	; (d0041534 <__sinit_lock_release+0x8>)
d004152e:	f000 b8a3 	b.w	d0041678 <__retarget_lock_release_recursive>
d0041532:	bf00      	nop
d0041534:	d00422d3 	.word	0xd00422d3

d0041538 <__sinit>:
d0041538:	b510      	push	{r4, lr}
d004153a:	4604      	mov	r4, r0
d004153c:	f7ff fff0 	bl	d0041520 <__sinit_lock_acquire>
d0041540:	69a3      	ldr	r3, [r4, #24]
d0041542:	b11b      	cbz	r3, d004154c <__sinit+0x14>
d0041544:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0041548:	f7ff bff0 	b.w	d004152c <__sinit_lock_release>
d004154c:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0041550:	6523      	str	r3, [r4, #80]	; 0x50
d0041552:	4b13      	ldr	r3, [pc, #76]	; (d00415a0 <__sinit+0x68>)
d0041554:	4a13      	ldr	r2, [pc, #76]	; (d00415a4 <__sinit+0x6c>)
d0041556:	681b      	ldr	r3, [r3, #0]
d0041558:	62a2      	str	r2, [r4, #40]	; 0x28
d004155a:	42a3      	cmp	r3, r4
d004155c:	bf04      	itt	eq
d004155e:	2301      	moveq	r3, #1
d0041560:	61a3      	streq	r3, [r4, #24]
d0041562:	4620      	mov	r0, r4
d0041564:	f000 f820 	bl	d00415a8 <__sfp>
d0041568:	6060      	str	r0, [r4, #4]
d004156a:	4620      	mov	r0, r4
d004156c:	f000 f81c 	bl	d00415a8 <__sfp>
d0041570:	60a0      	str	r0, [r4, #8]
d0041572:	4620      	mov	r0, r4
d0041574:	f000 f818 	bl	d00415a8 <__sfp>
d0041578:	2200      	movs	r2, #0
d004157a:	60e0      	str	r0, [r4, #12]
d004157c:	2104      	movs	r1, #4
d004157e:	6860      	ldr	r0, [r4, #4]
d0041580:	f7ff ff82 	bl	d0041488 <std>
d0041584:	68a0      	ldr	r0, [r4, #8]
d0041586:	2201      	movs	r2, #1
d0041588:	2109      	movs	r1, #9
d004158a:	f7ff ff7d 	bl	d0041488 <std>
d004158e:	68e0      	ldr	r0, [r4, #12]
d0041590:	2202      	movs	r2, #2
d0041592:	2112      	movs	r1, #18
d0041594:	f7ff ff78 	bl	d0041488 <std>
d0041598:	2301      	movs	r3, #1
d004159a:	61a3      	str	r3, [r4, #24]
d004159c:	e7d2      	b.n	d0041544 <__sinit+0xc>
d004159e:	bf00      	nop
d00415a0:	d0041df8 	.word	0xd0041df8
d00415a4:	d00414d1 	.word	0xd00414d1

d00415a8 <__sfp>:
d00415a8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00415aa:	4607      	mov	r7, r0
d00415ac:	f7ff ffac 	bl	d0041508 <__sfp_lock_acquire>
d00415b0:	4b1e      	ldr	r3, [pc, #120]	; (d004162c <__sfp+0x84>)
d00415b2:	681e      	ldr	r6, [r3, #0]
d00415b4:	69b3      	ldr	r3, [r6, #24]
d00415b6:	b913      	cbnz	r3, d00415be <__sfp+0x16>
d00415b8:	4630      	mov	r0, r6
d00415ba:	f7ff ffbd 	bl	d0041538 <__sinit>
d00415be:	3648      	adds	r6, #72	; 0x48
d00415c0:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d00415c4:	3b01      	subs	r3, #1
d00415c6:	d503      	bpl.n	d00415d0 <__sfp+0x28>
d00415c8:	6833      	ldr	r3, [r6, #0]
d00415ca:	b30b      	cbz	r3, d0041610 <__sfp+0x68>
d00415cc:	6836      	ldr	r6, [r6, #0]
d00415ce:	e7f7      	b.n	d00415c0 <__sfp+0x18>
d00415d0:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d00415d4:	b9d5      	cbnz	r5, d004160c <__sfp+0x64>
d00415d6:	4b16      	ldr	r3, [pc, #88]	; (d0041630 <__sfp+0x88>)
d00415d8:	60e3      	str	r3, [r4, #12]
d00415da:	f104 0058 	add.w	r0, r4, #88	; 0x58
d00415de:	6665      	str	r5, [r4, #100]	; 0x64
d00415e0:	f000 f847 	bl	d0041672 <__retarget_lock_init_recursive>
d00415e4:	f7ff ff96 	bl	d0041514 <__sfp_lock_release>
d00415e8:	e9c4 5501 	strd	r5, r5, [r4, #4]
d00415ec:	e9c4 5504 	strd	r5, r5, [r4, #16]
d00415f0:	6025      	str	r5, [r4, #0]
d00415f2:	61a5      	str	r5, [r4, #24]
d00415f4:	2208      	movs	r2, #8
d00415f6:	4629      	mov	r1, r5
d00415f8:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d00415fc:	f000 f86a 	bl	d00416d4 <memset>
d0041600:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0041604:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0041608:	4620      	mov	r0, r4
d004160a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d004160c:	3468      	adds	r4, #104	; 0x68
d004160e:	e7d9      	b.n	d00415c4 <__sfp+0x1c>
d0041610:	2104      	movs	r1, #4
d0041612:	4638      	mov	r0, r7
d0041614:	f7ff ff62 	bl	d00414dc <__sfmoreglue>
d0041618:	4604      	mov	r4, r0
d004161a:	6030      	str	r0, [r6, #0]
d004161c:	2800      	cmp	r0, #0
d004161e:	d1d5      	bne.n	d00415cc <__sfp+0x24>
d0041620:	f7ff ff78 	bl	d0041514 <__sfp_lock_release>
d0041624:	230c      	movs	r3, #12
d0041626:	603b      	str	r3, [r7, #0]
d0041628:	e7ee      	b.n	d0041608 <__sfp+0x60>
d004162a:	bf00      	nop
d004162c:	d0041df8 	.word	0xd0041df8
d0041630:	ffff0001 	.word	0xffff0001

d0041634 <_fwalk_reent>:
d0041634:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0041638:	4606      	mov	r6, r0
d004163a:	4688      	mov	r8, r1
d004163c:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0041640:	2700      	movs	r7, #0
d0041642:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0041646:	f1b9 0901 	subs.w	r9, r9, #1
d004164a:	d505      	bpl.n	d0041658 <_fwalk_reent+0x24>
d004164c:	6824      	ldr	r4, [r4, #0]
d004164e:	2c00      	cmp	r4, #0
d0041650:	d1f7      	bne.n	d0041642 <_fwalk_reent+0xe>
d0041652:	4638      	mov	r0, r7
d0041654:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0041658:	89ab      	ldrh	r3, [r5, #12]
d004165a:	2b01      	cmp	r3, #1
d004165c:	d907      	bls.n	d004166e <_fwalk_reent+0x3a>
d004165e:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0041662:	3301      	adds	r3, #1
d0041664:	d003      	beq.n	d004166e <_fwalk_reent+0x3a>
d0041666:	4629      	mov	r1, r5
d0041668:	4630      	mov	r0, r6
d004166a:	47c0      	blx	r8
d004166c:	4307      	orrs	r7, r0
d004166e:	3568      	adds	r5, #104	; 0x68
d0041670:	e7e9      	b.n	d0041646 <_fwalk_reent+0x12>

d0041672 <__retarget_lock_init_recursive>:
d0041672:	4770      	bx	lr

d0041674 <__retarget_lock_close_recursive>:
d0041674:	4770      	bx	lr

d0041676 <__retarget_lock_acquire_recursive>:
d0041676:	4770      	bx	lr

d0041678 <__retarget_lock_release_recursive>:
d0041678:	4770      	bx	lr
	...

d004167c <malloc>:
d004167c:	4b02      	ldr	r3, [pc, #8]	; (d0041688 <malloc+0xc>)
d004167e:	4601      	mov	r1, r0
d0041680:	6818      	ldr	r0, [r3, #0]
d0041682:	f000 b87f 	b.w	d0041784 <_malloc_r>
d0041686:	bf00      	nop
d0041688:	d0042204 	.word	0xd0042204

d004168c <free>:
d004168c:	4b02      	ldr	r3, [pc, #8]	; (d0041698 <free+0xc>)
d004168e:	4601      	mov	r1, r0
d0041690:	6818      	ldr	r0, [r3, #0]
d0041692:	f000 b827 	b.w	d00416e4 <_free_r>
d0041696:	bf00      	nop
d0041698:	d0042204 	.word	0xd0042204

d004169c <memcmp>:
d004169c:	b530      	push	{r4, r5, lr}
d004169e:	3901      	subs	r1, #1
d00416a0:	2400      	movs	r4, #0
d00416a2:	42a2      	cmp	r2, r4
d00416a4:	d101      	bne.n	d00416aa <memcmp+0xe>
d00416a6:	2000      	movs	r0, #0
d00416a8:	e005      	b.n	d00416b6 <memcmp+0x1a>
d00416aa:	5d03      	ldrb	r3, [r0, r4]
d00416ac:	3401      	adds	r4, #1
d00416ae:	5d0d      	ldrb	r5, [r1, r4]
d00416b0:	42ab      	cmp	r3, r5
d00416b2:	d0f6      	beq.n	d00416a2 <memcmp+0x6>
d00416b4:	1b58      	subs	r0, r3, r5
d00416b6:	bd30      	pop	{r4, r5, pc}

d00416b8 <memcpy>:
d00416b8:	440a      	add	r2, r1
d00416ba:	4291      	cmp	r1, r2
d00416bc:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d00416c0:	d100      	bne.n	d00416c4 <memcpy+0xc>
d00416c2:	4770      	bx	lr
d00416c4:	b510      	push	{r4, lr}
d00416c6:	f811 4b01 	ldrb.w	r4, [r1], #1
d00416ca:	f803 4f01 	strb.w	r4, [r3, #1]!
d00416ce:	4291      	cmp	r1, r2
d00416d0:	d1f9      	bne.n	d00416c6 <memcpy+0xe>
d00416d2:	bd10      	pop	{r4, pc}

d00416d4 <memset>:
d00416d4:	4402      	add	r2, r0
d00416d6:	4603      	mov	r3, r0
d00416d8:	4293      	cmp	r3, r2
d00416da:	d100      	bne.n	d00416de <memset+0xa>
d00416dc:	4770      	bx	lr
d00416de:	f803 1b01 	strb.w	r1, [r3], #1
d00416e2:	e7f9      	b.n	d00416d8 <memset+0x4>

d00416e4 <_free_r>:
d00416e4:	b537      	push	{r0, r1, r2, r4, r5, lr}
d00416e6:	2900      	cmp	r1, #0
d00416e8:	d048      	beq.n	d004177c <_free_r+0x98>
d00416ea:	f851 3c04 	ldr.w	r3, [r1, #-4]
d00416ee:	9001      	str	r0, [sp, #4]
d00416f0:	2b00      	cmp	r3, #0
d00416f2:	f1a1 0404 	sub.w	r4, r1, #4
d00416f6:	bfb8      	it	lt
d00416f8:	18e4      	addlt	r4, r4, r3
d00416fa:	f000 f9f5 	bl	d0041ae8 <__malloc_lock>
d00416fe:	4a20      	ldr	r2, [pc, #128]	; (d0041780 <_free_r+0x9c>)
d0041700:	9801      	ldr	r0, [sp, #4]
d0041702:	6813      	ldr	r3, [r2, #0]
d0041704:	4615      	mov	r5, r2
d0041706:	b933      	cbnz	r3, d0041716 <_free_r+0x32>
d0041708:	6063      	str	r3, [r4, #4]
d004170a:	6014      	str	r4, [r2, #0]
d004170c:	b003      	add	sp, #12
d004170e:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0041712:	f000 b9ef 	b.w	d0041af4 <__malloc_unlock>
d0041716:	42a3      	cmp	r3, r4
d0041718:	d90b      	bls.n	d0041732 <_free_r+0x4e>
d004171a:	6821      	ldr	r1, [r4, #0]
d004171c:	1862      	adds	r2, r4, r1
d004171e:	4293      	cmp	r3, r2
d0041720:	bf04      	itt	eq
d0041722:	681a      	ldreq	r2, [r3, #0]
d0041724:	685b      	ldreq	r3, [r3, #4]
d0041726:	6063      	str	r3, [r4, #4]
d0041728:	bf04      	itt	eq
d004172a:	1852      	addeq	r2, r2, r1
d004172c:	6022      	streq	r2, [r4, #0]
d004172e:	602c      	str	r4, [r5, #0]
d0041730:	e7ec      	b.n	d004170c <_free_r+0x28>
d0041732:	461a      	mov	r2, r3
d0041734:	685b      	ldr	r3, [r3, #4]
d0041736:	b10b      	cbz	r3, d004173c <_free_r+0x58>
d0041738:	42a3      	cmp	r3, r4
d004173a:	d9fa      	bls.n	d0041732 <_free_r+0x4e>
d004173c:	6811      	ldr	r1, [r2, #0]
d004173e:	1855      	adds	r5, r2, r1
d0041740:	42a5      	cmp	r5, r4
d0041742:	d10b      	bne.n	d004175c <_free_r+0x78>
d0041744:	6824      	ldr	r4, [r4, #0]
d0041746:	4421      	add	r1, r4
d0041748:	1854      	adds	r4, r2, r1
d004174a:	42a3      	cmp	r3, r4
d004174c:	6011      	str	r1, [r2, #0]
d004174e:	d1dd      	bne.n	d004170c <_free_r+0x28>
d0041750:	681c      	ldr	r4, [r3, #0]
d0041752:	685b      	ldr	r3, [r3, #4]
d0041754:	6053      	str	r3, [r2, #4]
d0041756:	4421      	add	r1, r4
d0041758:	6011      	str	r1, [r2, #0]
d004175a:	e7d7      	b.n	d004170c <_free_r+0x28>
d004175c:	d902      	bls.n	d0041764 <_free_r+0x80>
d004175e:	230c      	movs	r3, #12
d0041760:	6003      	str	r3, [r0, #0]
d0041762:	e7d3      	b.n	d004170c <_free_r+0x28>
d0041764:	6825      	ldr	r5, [r4, #0]
d0041766:	1961      	adds	r1, r4, r5
d0041768:	428b      	cmp	r3, r1
d004176a:	bf04      	itt	eq
d004176c:	6819      	ldreq	r1, [r3, #0]
d004176e:	685b      	ldreq	r3, [r3, #4]
d0041770:	6063      	str	r3, [r4, #4]
d0041772:	bf04      	itt	eq
d0041774:	1949      	addeq	r1, r1, r5
d0041776:	6021      	streq	r1, [r4, #0]
d0041778:	6054      	str	r4, [r2, #4]
d004177a:	e7c7      	b.n	d004170c <_free_r+0x28>
d004177c:	b003      	add	sp, #12
d004177e:	bd30      	pop	{r4, r5, pc}
d0041780:	d004228c 	.word	0xd004228c

d0041784 <_malloc_r>:
d0041784:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0041786:	1ccd      	adds	r5, r1, #3
d0041788:	f025 0503 	bic.w	r5, r5, #3
d004178c:	3508      	adds	r5, #8
d004178e:	2d0c      	cmp	r5, #12
d0041790:	bf38      	it	cc
d0041792:	250c      	movcc	r5, #12
d0041794:	2d00      	cmp	r5, #0
d0041796:	4606      	mov	r6, r0
d0041798:	db01      	blt.n	d004179e <_malloc_r+0x1a>
d004179a:	42a9      	cmp	r1, r5
d004179c:	d903      	bls.n	d00417a6 <_malloc_r+0x22>
d004179e:	230c      	movs	r3, #12
d00417a0:	6033      	str	r3, [r6, #0]
d00417a2:	2000      	movs	r0, #0
d00417a4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00417a6:	f000 f99f 	bl	d0041ae8 <__malloc_lock>
d00417aa:	4921      	ldr	r1, [pc, #132]	; (d0041830 <_malloc_r+0xac>)
d00417ac:	680a      	ldr	r2, [r1, #0]
d00417ae:	4614      	mov	r4, r2
d00417b0:	b99c      	cbnz	r4, d00417da <_malloc_r+0x56>
d00417b2:	4f20      	ldr	r7, [pc, #128]	; (d0041834 <_malloc_r+0xb0>)
d00417b4:	683b      	ldr	r3, [r7, #0]
d00417b6:	b923      	cbnz	r3, d00417c2 <_malloc_r+0x3e>
d00417b8:	4621      	mov	r1, r4
d00417ba:	4630      	mov	r0, r6
d00417bc:	f7fe fc90 	bl	d00400e0 <_sbrk_r>
d00417c0:	6038      	str	r0, [r7, #0]
d00417c2:	4629      	mov	r1, r5
d00417c4:	4630      	mov	r0, r6
d00417c6:	f7fe fc8b 	bl	d00400e0 <_sbrk_r>
d00417ca:	1c43      	adds	r3, r0, #1
d00417cc:	d123      	bne.n	d0041816 <_malloc_r+0x92>
d00417ce:	230c      	movs	r3, #12
d00417d0:	6033      	str	r3, [r6, #0]
d00417d2:	4630      	mov	r0, r6
d00417d4:	f000 f98e 	bl	d0041af4 <__malloc_unlock>
d00417d8:	e7e3      	b.n	d00417a2 <_malloc_r+0x1e>
d00417da:	6823      	ldr	r3, [r4, #0]
d00417dc:	1b5b      	subs	r3, r3, r5
d00417de:	d417      	bmi.n	d0041810 <_malloc_r+0x8c>
d00417e0:	2b0b      	cmp	r3, #11
d00417e2:	d903      	bls.n	d00417ec <_malloc_r+0x68>
d00417e4:	6023      	str	r3, [r4, #0]
d00417e6:	441c      	add	r4, r3
d00417e8:	6025      	str	r5, [r4, #0]
d00417ea:	e004      	b.n	d00417f6 <_malloc_r+0x72>
d00417ec:	6863      	ldr	r3, [r4, #4]
d00417ee:	42a2      	cmp	r2, r4
d00417f0:	bf0c      	ite	eq
d00417f2:	600b      	streq	r3, [r1, #0]
d00417f4:	6053      	strne	r3, [r2, #4]
d00417f6:	4630      	mov	r0, r6
d00417f8:	f000 f97c 	bl	d0041af4 <__malloc_unlock>
d00417fc:	f104 000b 	add.w	r0, r4, #11
d0041800:	1d23      	adds	r3, r4, #4
d0041802:	f020 0007 	bic.w	r0, r0, #7
d0041806:	1ac2      	subs	r2, r0, r3
d0041808:	d0cc      	beq.n	d00417a4 <_malloc_r+0x20>
d004180a:	1a1b      	subs	r3, r3, r0
d004180c:	50a3      	str	r3, [r4, r2]
d004180e:	e7c9      	b.n	d00417a4 <_malloc_r+0x20>
d0041810:	4622      	mov	r2, r4
d0041812:	6864      	ldr	r4, [r4, #4]
d0041814:	e7cc      	b.n	d00417b0 <_malloc_r+0x2c>
d0041816:	1cc4      	adds	r4, r0, #3
d0041818:	f024 0403 	bic.w	r4, r4, #3
d004181c:	42a0      	cmp	r0, r4
d004181e:	d0e3      	beq.n	d00417e8 <_malloc_r+0x64>
d0041820:	1a21      	subs	r1, r4, r0
d0041822:	4630      	mov	r0, r6
d0041824:	f7fe fc5c 	bl	d00400e0 <_sbrk_r>
d0041828:	3001      	adds	r0, #1
d004182a:	d1dd      	bne.n	d00417e8 <_malloc_r+0x64>
d004182c:	e7cf      	b.n	d00417ce <_malloc_r+0x4a>
d004182e:	bf00      	nop
d0041830:	d004228c 	.word	0xd004228c
d0041834:	d0042290 	.word	0xd0042290

d0041838 <setbuf>:
d0041838:	2900      	cmp	r1, #0
d004183a:	f44f 6380 	mov.w	r3, #1024	; 0x400
d004183e:	bf0c      	ite	eq
d0041840:	2202      	moveq	r2, #2
d0041842:	2200      	movne	r2, #0
d0041844:	f000 b800 	b.w	d0041848 <setvbuf>

d0041848 <setvbuf>:
d0041848:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d004184c:	461d      	mov	r5, r3
d004184e:	4b5d      	ldr	r3, [pc, #372]	; (d00419c4 <setvbuf+0x17c>)
d0041850:	681f      	ldr	r7, [r3, #0]
d0041852:	4604      	mov	r4, r0
d0041854:	460e      	mov	r6, r1
d0041856:	4690      	mov	r8, r2
d0041858:	b127      	cbz	r7, d0041864 <setvbuf+0x1c>
d004185a:	69bb      	ldr	r3, [r7, #24]
d004185c:	b913      	cbnz	r3, d0041864 <setvbuf+0x1c>
d004185e:	4638      	mov	r0, r7
d0041860:	f7ff fe6a 	bl	d0041538 <__sinit>
d0041864:	4b58      	ldr	r3, [pc, #352]	; (d00419c8 <setvbuf+0x180>)
d0041866:	429c      	cmp	r4, r3
d0041868:	d167      	bne.n	d004193a <setvbuf+0xf2>
d004186a:	687c      	ldr	r4, [r7, #4]
d004186c:	f1b8 0f02 	cmp.w	r8, #2
d0041870:	d006      	beq.n	d0041880 <setvbuf+0x38>
d0041872:	f1b8 0f01 	cmp.w	r8, #1
d0041876:	f200 809f 	bhi.w	d00419b8 <setvbuf+0x170>
d004187a:	2d00      	cmp	r5, #0
d004187c:	f2c0 809c 	blt.w	d00419b8 <setvbuf+0x170>
d0041880:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0041882:	07db      	lsls	r3, r3, #31
d0041884:	d405      	bmi.n	d0041892 <setvbuf+0x4a>
d0041886:	89a3      	ldrh	r3, [r4, #12]
d0041888:	0598      	lsls	r0, r3, #22
d004188a:	d402      	bmi.n	d0041892 <setvbuf+0x4a>
d004188c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d004188e:	f7ff fef2 	bl	d0041676 <__retarget_lock_acquire_recursive>
d0041892:	4621      	mov	r1, r4
d0041894:	4638      	mov	r0, r7
d0041896:	f7ff fdbb 	bl	d0041410 <_fflush_r>
d004189a:	6b61      	ldr	r1, [r4, #52]	; 0x34
d004189c:	b141      	cbz	r1, d00418b0 <setvbuf+0x68>
d004189e:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00418a2:	4299      	cmp	r1, r3
d00418a4:	d002      	beq.n	d00418ac <setvbuf+0x64>
d00418a6:	4638      	mov	r0, r7
d00418a8:	f7ff ff1c 	bl	d00416e4 <_free_r>
d00418ac:	2300      	movs	r3, #0
d00418ae:	6363      	str	r3, [r4, #52]	; 0x34
d00418b0:	2300      	movs	r3, #0
d00418b2:	61a3      	str	r3, [r4, #24]
d00418b4:	6063      	str	r3, [r4, #4]
d00418b6:	89a3      	ldrh	r3, [r4, #12]
d00418b8:	0619      	lsls	r1, r3, #24
d00418ba:	d503      	bpl.n	d00418c4 <setvbuf+0x7c>
d00418bc:	6921      	ldr	r1, [r4, #16]
d00418be:	4638      	mov	r0, r7
d00418c0:	f7ff ff10 	bl	d00416e4 <_free_r>
d00418c4:	89a3      	ldrh	r3, [r4, #12]
d00418c6:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d00418ca:	f023 0303 	bic.w	r3, r3, #3
d00418ce:	f1b8 0f02 	cmp.w	r8, #2
d00418d2:	81a3      	strh	r3, [r4, #12]
d00418d4:	d06c      	beq.n	d00419b0 <setvbuf+0x168>
d00418d6:	ab01      	add	r3, sp, #4
d00418d8:	466a      	mov	r2, sp
d00418da:	4621      	mov	r1, r4
d00418dc:	4638      	mov	r0, r7
d00418de:	f000 f8df 	bl	d0041aa0 <__swhatbuf_r>
d00418e2:	89a3      	ldrh	r3, [r4, #12]
d00418e4:	4318      	orrs	r0, r3
d00418e6:	81a0      	strh	r0, [r4, #12]
d00418e8:	2d00      	cmp	r5, #0
d00418ea:	d130      	bne.n	d004194e <setvbuf+0x106>
d00418ec:	9d00      	ldr	r5, [sp, #0]
d00418ee:	4628      	mov	r0, r5
d00418f0:	f7ff fec4 	bl	d004167c <malloc>
d00418f4:	4606      	mov	r6, r0
d00418f6:	2800      	cmp	r0, #0
d00418f8:	d155      	bne.n	d00419a6 <setvbuf+0x15e>
d00418fa:	f8dd 9000 	ldr.w	r9, [sp]
d00418fe:	45a9      	cmp	r9, r5
d0041900:	d14a      	bne.n	d0041998 <setvbuf+0x150>
d0041902:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0041906:	2200      	movs	r2, #0
d0041908:	60a2      	str	r2, [r4, #8]
d004190a:	f104 0247 	add.w	r2, r4, #71	; 0x47
d004190e:	6022      	str	r2, [r4, #0]
d0041910:	6122      	str	r2, [r4, #16]
d0041912:	2201      	movs	r2, #1
d0041914:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0041918:	6162      	str	r2, [r4, #20]
d004191a:	6e62      	ldr	r2, [r4, #100]	; 0x64
d004191c:	f043 0302 	orr.w	r3, r3, #2
d0041920:	07d2      	lsls	r2, r2, #31
d0041922:	81a3      	strh	r3, [r4, #12]
d0041924:	d405      	bmi.n	d0041932 <setvbuf+0xea>
d0041926:	f413 7f00 	tst.w	r3, #512	; 0x200
d004192a:	d102      	bne.n	d0041932 <setvbuf+0xea>
d004192c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d004192e:	f7ff fea3 	bl	d0041678 <__retarget_lock_release_recursive>
d0041932:	4628      	mov	r0, r5
d0041934:	b003      	add	sp, #12
d0041936:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d004193a:	4b24      	ldr	r3, [pc, #144]	; (d00419cc <setvbuf+0x184>)
d004193c:	429c      	cmp	r4, r3
d004193e:	d101      	bne.n	d0041944 <setvbuf+0xfc>
d0041940:	68bc      	ldr	r4, [r7, #8]
d0041942:	e793      	b.n	d004186c <setvbuf+0x24>
d0041944:	4b22      	ldr	r3, [pc, #136]	; (d00419d0 <setvbuf+0x188>)
d0041946:	429c      	cmp	r4, r3
d0041948:	bf08      	it	eq
d004194a:	68fc      	ldreq	r4, [r7, #12]
d004194c:	e78e      	b.n	d004186c <setvbuf+0x24>
d004194e:	2e00      	cmp	r6, #0
d0041950:	d0cd      	beq.n	d00418ee <setvbuf+0xa6>
d0041952:	69bb      	ldr	r3, [r7, #24]
d0041954:	b913      	cbnz	r3, d004195c <setvbuf+0x114>
d0041956:	4638      	mov	r0, r7
d0041958:	f7ff fdee 	bl	d0041538 <__sinit>
d004195c:	f1b8 0f01 	cmp.w	r8, #1
d0041960:	bf08      	it	eq
d0041962:	89a3      	ldrheq	r3, [r4, #12]
d0041964:	6026      	str	r6, [r4, #0]
d0041966:	bf04      	itt	eq
d0041968:	f043 0301 	orreq.w	r3, r3, #1
d004196c:	81a3      	strheq	r3, [r4, #12]
d004196e:	89a2      	ldrh	r2, [r4, #12]
d0041970:	f012 0308 	ands.w	r3, r2, #8
d0041974:	e9c4 6504 	strd	r6, r5, [r4, #16]
d0041978:	d01c      	beq.n	d00419b4 <setvbuf+0x16c>
d004197a:	07d3      	lsls	r3, r2, #31
d004197c:	bf41      	itttt	mi
d004197e:	2300      	movmi	r3, #0
d0041980:	426d      	negmi	r5, r5
d0041982:	60a3      	strmi	r3, [r4, #8]
d0041984:	61a5      	strmi	r5, [r4, #24]
d0041986:	bf58      	it	pl
d0041988:	60a5      	strpl	r5, [r4, #8]
d004198a:	6e65      	ldr	r5, [r4, #100]	; 0x64
d004198c:	f015 0501 	ands.w	r5, r5, #1
d0041990:	d115      	bne.n	d00419be <setvbuf+0x176>
d0041992:	f412 7f00 	tst.w	r2, #512	; 0x200
d0041996:	e7c8      	b.n	d004192a <setvbuf+0xe2>
d0041998:	4648      	mov	r0, r9
d004199a:	f7ff fe6f 	bl	d004167c <malloc>
d004199e:	4606      	mov	r6, r0
d00419a0:	2800      	cmp	r0, #0
d00419a2:	d0ae      	beq.n	d0041902 <setvbuf+0xba>
d00419a4:	464d      	mov	r5, r9
d00419a6:	89a3      	ldrh	r3, [r4, #12]
d00419a8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00419ac:	81a3      	strh	r3, [r4, #12]
d00419ae:	e7d0      	b.n	d0041952 <setvbuf+0x10a>
d00419b0:	2500      	movs	r5, #0
d00419b2:	e7a8      	b.n	d0041906 <setvbuf+0xbe>
d00419b4:	60a3      	str	r3, [r4, #8]
d00419b6:	e7e8      	b.n	d004198a <setvbuf+0x142>
d00419b8:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00419bc:	e7b9      	b.n	d0041932 <setvbuf+0xea>
d00419be:	2500      	movs	r5, #0
d00419c0:	e7b7      	b.n	d0041932 <setvbuf+0xea>
d00419c2:	bf00      	nop
d00419c4:	d0042204 	.word	0xd0042204
d00419c8:	d0041db8 	.word	0xd0041db8
d00419cc:	d0041dd8 	.word	0xd0041dd8
d00419d0:	d0041d98 	.word	0xd0041d98

d00419d4 <__sread>:
d00419d4:	b510      	push	{r4, lr}
d00419d6:	460c      	mov	r4, r1
d00419d8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00419dc:	f000 f890 	bl	d0041b00 <_read_r>
d00419e0:	2800      	cmp	r0, #0
d00419e2:	bfab      	itete	ge
d00419e4:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d00419e6:	89a3      	ldrhlt	r3, [r4, #12]
d00419e8:	181b      	addge	r3, r3, r0
d00419ea:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d00419ee:	bfac      	ite	ge
d00419f0:	6563      	strge	r3, [r4, #84]	; 0x54
d00419f2:	81a3      	strhlt	r3, [r4, #12]
d00419f4:	bd10      	pop	{r4, pc}

d00419f6 <__swrite>:
d00419f6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00419fa:	461f      	mov	r7, r3
d00419fc:	898b      	ldrh	r3, [r1, #12]
d00419fe:	05db      	lsls	r3, r3, #23
d0041a00:	4605      	mov	r5, r0
d0041a02:	460c      	mov	r4, r1
d0041a04:	4616      	mov	r6, r2
d0041a06:	d505      	bpl.n	d0041a14 <__swrite+0x1e>
d0041a08:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0041a0c:	2302      	movs	r3, #2
d0041a0e:	2200      	movs	r2, #0
d0041a10:	f000 f834 	bl	d0041a7c <_lseek_r>
d0041a14:	89a3      	ldrh	r3, [r4, #12]
d0041a16:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0041a1a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0041a1e:	81a3      	strh	r3, [r4, #12]
d0041a20:	4632      	mov	r2, r6
d0041a22:	463b      	mov	r3, r7
d0041a24:	4628      	mov	r0, r5
d0041a26:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0041a2a:	f7fe bb13 	b.w	d0040054 <_write_r>

d0041a2e <__sseek>:
d0041a2e:	b510      	push	{r4, lr}
d0041a30:	460c      	mov	r4, r1
d0041a32:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0041a36:	f000 f821 	bl	d0041a7c <_lseek_r>
d0041a3a:	1c43      	adds	r3, r0, #1
d0041a3c:	89a3      	ldrh	r3, [r4, #12]
d0041a3e:	bf15      	itete	ne
d0041a40:	6560      	strne	r0, [r4, #84]	; 0x54
d0041a42:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0041a46:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d0041a4a:	81a3      	strheq	r3, [r4, #12]
d0041a4c:	bf18      	it	ne
d0041a4e:	81a3      	strhne	r3, [r4, #12]
d0041a50:	bd10      	pop	{r4, pc}

d0041a52 <__sclose>:
d0041a52:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0041a56:	f000 b801 	b.w	d0041a5c <_close_r>
	...

d0041a5c <_close_r>:
d0041a5c:	b538      	push	{r3, r4, r5, lr}
d0041a5e:	4d06      	ldr	r5, [pc, #24]	; (d0041a78 <_close_r+0x1c>)
d0041a60:	2300      	movs	r3, #0
d0041a62:	4604      	mov	r4, r0
d0041a64:	4608      	mov	r0, r1
d0041a66:	602b      	str	r3, [r5, #0]
d0041a68:	f7fe fb2e 	bl	d00400c8 <_close>
d0041a6c:	1c43      	adds	r3, r0, #1
d0041a6e:	d102      	bne.n	d0041a76 <_close_r+0x1a>
d0041a70:	682b      	ldr	r3, [r5, #0]
d0041a72:	b103      	cbz	r3, d0041a76 <_close_r+0x1a>
d0041a74:	6023      	str	r3, [r4, #0]
d0041a76:	bd38      	pop	{r3, r4, r5, pc}
d0041a78:	d00422dc 	.word	0xd00422dc

d0041a7c <_lseek_r>:
d0041a7c:	b538      	push	{r3, r4, r5, lr}
d0041a7e:	4d07      	ldr	r5, [pc, #28]	; (d0041a9c <_lseek_r+0x20>)
d0041a80:	4604      	mov	r4, r0
d0041a82:	4608      	mov	r0, r1
d0041a84:	4611      	mov	r1, r2
d0041a86:	2200      	movs	r2, #0
d0041a88:	602a      	str	r2, [r5, #0]
d0041a8a:	461a      	mov	r2, r3
d0041a8c:	f7fe fb26 	bl	d00400dc <_lseek>
d0041a90:	1c43      	adds	r3, r0, #1
d0041a92:	d102      	bne.n	d0041a9a <_lseek_r+0x1e>
d0041a94:	682b      	ldr	r3, [r5, #0]
d0041a96:	b103      	cbz	r3, d0041a9a <_lseek_r+0x1e>
d0041a98:	6023      	str	r3, [r4, #0]
d0041a9a:	bd38      	pop	{r3, r4, r5, pc}
d0041a9c:	d00422dc 	.word	0xd00422dc

d0041aa0 <__swhatbuf_r>:
d0041aa0:	b570      	push	{r4, r5, r6, lr}
d0041aa2:	460e      	mov	r6, r1
d0041aa4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0041aa8:	2900      	cmp	r1, #0
d0041aaa:	b096      	sub	sp, #88	; 0x58
d0041aac:	4614      	mov	r4, r2
d0041aae:	461d      	mov	r5, r3
d0041ab0:	da07      	bge.n	d0041ac2 <__swhatbuf_r+0x22>
d0041ab2:	2300      	movs	r3, #0
d0041ab4:	602b      	str	r3, [r5, #0]
d0041ab6:	89b3      	ldrh	r3, [r6, #12]
d0041ab8:	061a      	lsls	r2, r3, #24
d0041aba:	d410      	bmi.n	d0041ade <__swhatbuf_r+0x3e>
d0041abc:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0041ac0:	e00e      	b.n	d0041ae0 <__swhatbuf_r+0x40>
d0041ac2:	466a      	mov	r2, sp
d0041ac4:	f000 f82e 	bl	d0041b24 <_fstat_r>
d0041ac8:	2800      	cmp	r0, #0
d0041aca:	dbf2      	blt.n	d0041ab2 <__swhatbuf_r+0x12>
d0041acc:	9a01      	ldr	r2, [sp, #4]
d0041ace:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0041ad2:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0041ad6:	425a      	negs	r2, r3
d0041ad8:	415a      	adcs	r2, r3
d0041ada:	602a      	str	r2, [r5, #0]
d0041adc:	e7ee      	b.n	d0041abc <__swhatbuf_r+0x1c>
d0041ade:	2340      	movs	r3, #64	; 0x40
d0041ae0:	2000      	movs	r0, #0
d0041ae2:	6023      	str	r3, [r4, #0]
d0041ae4:	b016      	add	sp, #88	; 0x58
d0041ae6:	bd70      	pop	{r4, r5, r6, pc}

d0041ae8 <__malloc_lock>:
d0041ae8:	4801      	ldr	r0, [pc, #4]	; (d0041af0 <__malloc_lock+0x8>)
d0041aea:	f7ff bdc4 	b.w	d0041676 <__retarget_lock_acquire_recursive>
d0041aee:	bf00      	nop
d0041af0:	d00422d4 	.word	0xd00422d4

d0041af4 <__malloc_unlock>:
d0041af4:	4801      	ldr	r0, [pc, #4]	; (d0041afc <__malloc_unlock+0x8>)
d0041af6:	f7ff bdbf 	b.w	d0041678 <__retarget_lock_release_recursive>
d0041afa:	bf00      	nop
d0041afc:	d00422d4 	.word	0xd00422d4

d0041b00 <_read_r>:
d0041b00:	b538      	push	{r3, r4, r5, lr}
d0041b02:	4d07      	ldr	r5, [pc, #28]	; (d0041b20 <_read_r+0x20>)
d0041b04:	4604      	mov	r4, r0
d0041b06:	4608      	mov	r0, r1
d0041b08:	4611      	mov	r1, r2
d0041b0a:	2200      	movs	r2, #0
d0041b0c:	602a      	str	r2, [r5, #0]
d0041b0e:	461a      	mov	r2, r3
d0041b10:	f7fe fad0 	bl	d00400b4 <_read>
d0041b14:	1c43      	adds	r3, r0, #1
d0041b16:	d102      	bne.n	d0041b1e <_read_r+0x1e>
d0041b18:	682b      	ldr	r3, [r5, #0]
d0041b1a:	b103      	cbz	r3, d0041b1e <_read_r+0x1e>
d0041b1c:	6023      	str	r3, [r4, #0]
d0041b1e:	bd38      	pop	{r3, r4, r5, pc}
d0041b20:	d00422dc 	.word	0xd00422dc

d0041b24 <_fstat_r>:
d0041b24:	b538      	push	{r3, r4, r5, lr}
d0041b26:	4d07      	ldr	r5, [pc, #28]	; (d0041b44 <_fstat_r+0x20>)
d0041b28:	2300      	movs	r3, #0
d0041b2a:	4604      	mov	r4, r0
d0041b2c:	4608      	mov	r0, r1
d0041b2e:	4611      	mov	r1, r2
d0041b30:	602b      	str	r3, [r5, #0]
d0041b32:	f7fe facd 	bl	d00400d0 <_fstat>
d0041b36:	1c43      	adds	r3, r0, #1
d0041b38:	d102      	bne.n	d0041b40 <_fstat_r+0x1c>
d0041b3a:	682b      	ldr	r3, [r5, #0]
d0041b3c:	b103      	cbz	r3, d0041b40 <_fstat_r+0x1c>
d0041b3e:	6023      	str	r3, [r4, #0]
d0041b40:	bd38      	pop	{r3, r4, r5, pc}
d0041b42:	bf00      	nop
d0041b44:	d00422dc 	.word	0xd00422dc
d0041b48:	44334253 	.word	0x44334253
	...
d0041b54:	00000001 	.word	0x00000001
d0041b58:	00000001 	.word	0x00000001
d0041b5c:	00000002 	.word	0x00000002
d0041b60:	00000002 	.word	0x00000002
d0041b64:	00000003 	.word	0x00000003
d0041b68:	00000003 	.word	0x00000003
d0041b6c:	00000000 	.word	0x00000000
d0041b70:	00000004 	.word	0x00000004
d0041b74:	00000005 	.word	0x00000005
d0041b78:	00000005 	.word	0x00000005
d0041b7c:	00000006 	.word	0x00000006
d0041b80:	00000006 	.word	0x00000006
d0041b84:	00000007 	.word	0x00000007
d0041b88:	00000007 	.word	0x00000007
d0041b8c:	00000004 	.word	0x00000004
d0041b90:	00000000 	.word	0x00000000
d0041b94:	00000004 	.word	0x00000004
d0041b98:	00000001 	.word	0x00000001
d0041b9c:	00000005 	.word	0x00000005
d0041ba0:	00000002 	.word	0x00000002
d0041ba4:	00000006 	.word	0x00000006
d0041ba8:	00000003 	.word	0x00000003
d0041bac:	00000007 	.word	0x00000007
d0041bb0:	00000000 	.word	0x00000000
d0041bb4:	00000001 	.word	0x00000001
d0041bb8:	00000002 	.word	0x00000002
d0041bbc:	00000022 	.word	0x00000022
d0041bc0:	00000000 	.word	0x00000000
d0041bc4:	00000002 	.word	0x00000002
d0041bc8:	00000003 	.word	0x00000003
d0041bcc:	00000022 	.word	0x00000022
d0041bd0:	00000004 	.word	0x00000004
d0041bd4:	00000006 	.word	0x00000006
d0041bd8:	00000005 	.word	0x00000005
d0041bdc:	00000023 	.word	0x00000023
d0041be0:	00000004 	.word	0x00000004
d0041be4:	00000007 	.word	0x00000007
d0041be8:	00000006 	.word	0x00000006
d0041bec:	00000023 	.word	0x00000023
d0041bf0:	00000000 	.word	0x00000000
d0041bf4:	00000004 	.word	0x00000004
d0041bf8:	00000005 	.word	0x00000005
d0041bfc:	00000024 	.word	0x00000024
d0041c00:	00000000 	.word	0x00000000
d0041c04:	00000005 	.word	0x00000005
d0041c08:	00000001 	.word	0x00000001
d0041c0c:	00000024 	.word	0x00000024
d0041c10:	00000001 	.word	0x00000001
d0041c14:	00000005 	.word	0x00000005
d0041c18:	00000006 	.word	0x00000006
d0041c1c:	00000025 	.word	0x00000025
d0041c20:	00000001 	.word	0x00000001
d0041c24:	00000006 	.word	0x00000006
d0041c28:	00000002 	.word	0x00000002
d0041c2c:	00000025 	.word	0x00000025
d0041c30:	00000002 	.word	0x00000002
d0041c34:	00000006 	.word	0x00000006
d0041c38:	00000007 	.word	0x00000007
d0041c3c:	00000022 	.word	0x00000022
d0041c40:	00000002 	.word	0x00000002
d0041c44:	00000007 	.word	0x00000007
d0041c48:	00000003 	.word	0x00000003
d0041c4c:	00000022 	.word	0x00000022
d0041c50:	00000003 	.word	0x00000003
d0041c54:	00000007 	.word	0x00000007
d0041c58:	00000004 	.word	0x00000004
d0041c5c:	00000023 	.word	0x00000023
d0041c60:	00000003 	.word	0x00000003
d0041c64:	00000004 	.word	0x00000004
d0041c68:	00000000 	.word	0x00000000
d0041c6c:	00000023 	.word	0x00000023
d0041c70:	00000000 	.word	0x00000000
d0041c74:	00000001 	.word	0x00000001
d0041c78:	00000002 	.word	0x00000002
d0041c7c:	00000021 	.word	0x00000021
d0041c80:	00000000 	.word	0x00000000
d0041c84:	00000002 	.word	0x00000002
d0041c88:	00000003 	.word	0x00000003
d0041c8c:	00000021 	.word	0x00000021
d0041c90:	00000000 	.word	0x00000000
d0041c94:	00000004 	.word	0x00000004
d0041c98:	00000001 	.word	0x00000001
d0041c9c:	00000021 	.word	0x00000021
d0041ca0:	00000001 	.word	0x00000001
d0041ca4:	00000004 	.word	0x00000004
d0041ca8:	00000002 	.word	0x00000002
d0041cac:	00000021 	.word	0x00000021
d0041cb0:	00000002 	.word	0x00000002
d0041cb4:	00000004 	.word	0x00000004
d0041cb8:	00000003 	.word	0x00000003
d0041cbc:	00000021 	.word	0x00000021
d0041cc0:	00000003 	.word	0x00000003
d0041cc4:	00000004 	.word	0x00000004
d0041cc8:	00000000 	.word	0x00000000
d0041ccc:	00000021 	.word	0x00000021
d0041cd0:	00000001 	.word	0x00000001
d0041cd4:	00000002 	.word	0x00000002
d0041cd8:	00000002 	.word	0x00000002
d0041cdc:	00000003 	.word	0x00000003
d0041ce0:	00000001 	.word	0x00000001
d0041ce4:	00000004 	.word	0x00000004
d0041ce8:	00000002 	.word	0x00000002
d0041cec:	00000004 	.word	0x00000004
d0041cf0:	00000003 	.word	0x00000003
d0041cf4:	00000004 	.word	0x00000004
d0041cf8:	616c7369 	.word	0x616c7369
d0041cfc:	2e78646e 	.word	0x2e78646e
d0041d00:	64336273 	.word	0x64336273
d0041d04:	00000000 	.word	0x00000000
d0041d08:	64616f6c 	.word	0x64616f6c
d0041d0c:	20676e69 	.word	0x20676e69
d0041d10:	6873656d 	.word	0x6873656d
d0041d14:	0000003a 	.word	0x0000003a
d0041d18:	6c696146 	.word	0x6c696146
d0041d1c:	74206465 	.word	0x74206465
d0041d20:	6f6c206f 	.word	0x6f6c206f
d0041d24:	6d206461 	.word	0x6d206461
d0041d28:	21687365 	.word	0x21687365
d0041d2c:	0000000a 	.word	0x0000000a
d0041d30:	656e6f44 	.word	0x656e6f44
d0041d34:	0000000a 	.word	0x0000000a
d0041d38:	ff5516e3 	.word	0xff5516e3
d0041d3c:	ffffffff 	.word	0xffffffff
d0041d40:	ffff0000 	.word	0xffff0000
d0041d44:	ff00ff00 	.word	0xff00ff00
d0041d48:	ff0000ff 	.word	0xff0000ff
d0041d4c:	ffffff00 	.word	0xffffff00
d0041d50:	ffff00ff 	.word	0xffff00ff
d0041d54:	ff00ffff 	.word	0xff00ffff
d0041d58:	ff808080 	.word	0xff808080
d0041d5c:	ffff8000 	.word	0xffff8000
d0041d60:	ff8000ff 	.word	0xff8000ff
d0041d64:	ff0080ff 	.word	0xff0080ff
d0041d68:	ff80ff00 	.word	0xff80ff00
d0041d6c:	ffff0080 	.word	0xffff0080
d0041d70:	ff00ff80 	.word	0xff00ff80
d0041d74:	ffc0c0c0 	.word	0xffc0c0c0
d0041d78:	3f800000 	.word	0x3f800000
d0041d7c:	3f400000 	.word	0x3f400000
d0041d80:	3f0ccccd 	.word	0x3f0ccccd
d0041d84:	3eb33333 	.word	0x3eb33333
d0041d88:	3e4ccccd 	.word	0x3e4ccccd
d0041d8c:	bf800000 	.word	0xbf800000
d0041d90:	bf000000 	.word	0xbf000000
d0041d94:	3e99999a 	.word	0x3e99999a

d0041d98 <__sf_fake_stderr>:
	...

d0041db8 <__sf_fake_stdin>:
	...

d0041dd8 <__sf_fake_stdout>:
	...

d0041df8 <_global_impure_ptr>:
d0041df8:	d0042208                                ."..

Disassembly of section .init:

d0041dfc <_init>:
d0041dfc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0041dfe:	bf00      	nop

Disassembly of section .fini:

d0041e00 <_fini>:
d0041e00:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0041e02:	bf00      	nop
