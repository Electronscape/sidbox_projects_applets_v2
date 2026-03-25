
compiled/applet.elf:     file format elf32-littlearm


Disassembly of section .text:

d0050010 <applet_entry>:
d0050010:	b570      	push	{r4, r5, r6, lr}
d0050012:	4e09      	ldr	r6, [pc, #36]	; (d0050038 <applet_entry+0x28>)
d0050014:	460d      	mov	r5, r1
d0050016:	4604      	mov	r4, r0
d0050018:	2100      	movs	r1, #0
d005001a:	6833      	ldr	r3, [r6, #0]
d005001c:	6898      	ldr	r0, [r3, #8]
d005001e:	f009 f9b9 	bl	d0059394 <setbuf>
d0050022:	6833      	ldr	r3, [r6, #0]
d0050024:	2100      	movs	r1, #0
d0050026:	68d8      	ldr	r0, [r3, #12]
d0050028:	f009 f9b4 	bl	d0059394 <setbuf>
d005002c:	4629      	mov	r1, r5
d005002e:	4620      	mov	r0, r4
d0050030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0050034:	f000 bbde 	b.w	d00507f4 <main>
d0050038:	d005b654 	.word	0xd005b654

d005003c <initMalloc>:
d005003c:	4902      	ldr	r1, [pc, #8]	; (d0050048 <initMalloc+0xc>)
d005003e:	4b03      	ldr	r3, [pc, #12]	; (d005004c <initMalloc+0x10>)
d0050040:	4a03      	ldr	r2, [pc, #12]	; (d0050050 <initMalloc+0x14>)
d0050042:	1a5b      	subs	r3, r3, r1
d0050044:	6013      	str	r3, [r2, #0]
d0050046:	4770      	bx	lr
d0050048:	d00fdad0 	.word	0xd00fdad0
d005004c:	d0600000 	.word	0xd0600000
d0050050:	d00f5a08 	.word	0xd00f5a08

d0050054 <_write_r>:
d0050054:	3901      	subs	r1, #1
d0050056:	2901      	cmp	r1, #1
d0050058:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005005a:	d81f      	bhi.n	d005009c <_write_r+0x48>
d005005c:	b1e2      	cbz	r2, d0050098 <_write_r+0x44>
d005005e:	461c      	mov	r4, r3
d0050060:	b1d3      	cbz	r3, d0050098 <_write_r+0x44>
d0050062:	4d12      	ldr	r5, [pc, #72]	; (d00500ac <_write_r+0x58>)
d0050064:	682e      	ldr	r6, [r5, #0]
d0050066:	b9ae      	cbnz	r6, d0050094 <_write_r+0x40>
d0050068:	4f11      	ldr	r7, [pc, #68]	; (d00500b0 <_write_r+0x5c>)
d005006a:	2301      	movs	r3, #1
d005006c:	4611      	mov	r1, r2
d005006e:	4630      	mov	r0, r6
d0050070:	602b      	str	r3, [r5, #0]
d0050072:	4622      	mov	r2, r4
d0050074:	7a3b      	ldrb	r3, [r7, #8]
d0050076:	f897 c009 	ldrb.w	ip, [r7, #9]
d005007a:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d005007e:	f897 c00a 	ldrb.w	ip, [r7, #10]
d0050082:	7aff      	ldrb	r7, [r7, #11]
d0050084:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
d0050088:	ea43 6307 	orr.w	r3, r3, r7, lsl #24
d005008c:	681b      	ldr	r3, [r3, #0]
d005008e:	685b      	ldr	r3, [r3, #4]
d0050090:	4798      	blx	r3
d0050092:	602e      	str	r6, [r5, #0]
d0050094:	4620      	mov	r0, r4
d0050096:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0050098:	2000      	movs	r0, #0
d005009a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d005009c:	f008 fe66 	bl	d0058d6c <__errno>
d00500a0:	2209      	movs	r2, #9
d00500a2:	4603      	mov	r3, r0
d00500a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00500a8:	601a      	str	r2, [r3, #0]
d00500aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00500ac:	d005b6c4 	.word	0xd005b6c4
d00500b0:	2001f000 	.word	0x2001f000

d00500b4 <_read>:
d00500b4:	b508      	push	{r3, lr}
d00500b6:	f008 fe59 	bl	d0058d6c <__errno>
d00500ba:	2258      	movs	r2, #88	; 0x58
d00500bc:	4603      	mov	r3, r0
d00500be:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00500c2:	601a      	str	r2, [r3, #0]
d00500c4:	bd08      	pop	{r3, pc}
d00500c6:	bf00      	nop

d00500c8 <_close>:
d00500c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00500cc:	4770      	bx	lr
d00500ce:	bf00      	nop

d00500d0 <_fstat>:
d00500d0:	f44f 5300 	mov.w	r3, #8192	; 0x2000
d00500d4:	2000      	movs	r0, #0
d00500d6:	604b      	str	r3, [r1, #4]
d00500d8:	4770      	bx	lr
d00500da:	bf00      	nop

d00500dc <_lseek>:
d00500dc:	2000      	movs	r0, #0
d00500de:	4770      	bx	lr

d00500e0 <_sbrk_r>:
d00500e0:	4b0c      	ldr	r3, [pc, #48]	; (d0050114 <_sbrk_r+0x34>)
d00500e2:	4a0d      	ldr	r2, [pc, #52]	; (d0050118 <_sbrk_r+0x38>)
d00500e4:	6818      	ldr	r0, [r3, #0]
d00500e6:	b510      	push	{r4, lr}
d00500e8:	b918      	cbnz	r0, d00500f2 <_sbrk_r+0x12>
d00500ea:	1dd0      	adds	r0, r2, #7
d00500ec:	f020 0007 	bic.w	r0, r0, #7
d00500f0:	6018      	str	r0, [r3, #0]
d00500f2:	4401      	add	r1, r0
d00500f4:	4c09      	ldr	r4, [pc, #36]	; (d005011c <_sbrk_r+0x3c>)
d00500f6:	42a1      	cmp	r1, r4
d00500f8:	d803      	bhi.n	d0050102 <_sbrk_r+0x22>
d00500fa:	4291      	cmp	r1, r2
d00500fc:	d301      	bcc.n	d0050102 <_sbrk_r+0x22>
d00500fe:	6019      	str	r1, [r3, #0]
d0050100:	bd10      	pop	{r4, pc}
d0050102:	f008 fe33 	bl	d0058d6c <__errno>
d0050106:	220c      	movs	r2, #12
d0050108:	4603      	mov	r3, r0
d005010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d005010e:	601a      	str	r2, [r3, #0]
d0050110:	bd10      	pop	{r4, pc}
d0050112:	bf00      	nop
d0050114:	d005b6c0 	.word	0xd005b6c0
d0050118:	d00fdad0 	.word	0xd00fdad0
d005011c:	d0600000 	.word	0xd0600000

d0050120 <LoadSFX>:
d0050120:	b5f0      	push	{r4, r5, r6, r7, lr}
d0050122:	4c40      	ldr	r4, [pc, #256]	; (d0050224 <LoadSFX+0x104>)
d0050124:	460f      	mov	r7, r1
d0050126:	4601      	mov	r1, r0
d0050128:	b08f      	sub	sp, #60	; 0x3c
d005012a:	7925      	ldrb	r5, [r4, #4]
d005012c:	2201      	movs	r2, #1
d005012e:	7963      	ldrb	r3, [r4, #5]
d0050130:	79a0      	ldrb	r0, [r4, #6]
d0050132:	ea45 2303 	orr.w	r3, r5, r3, lsl #8
d0050136:	79e5      	ldrb	r5, [r4, #7]
d0050138:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d005013c:	2000      	movs	r0, #0
d005013e:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d0050142:	681b      	ldr	r3, [r3, #0]
d0050144:	681b      	ldr	r3, [r3, #0]
d0050146:	4798      	blx	r3
d0050148:	bb00      	cbnz	r0, d005018c <LoadSFX+0x6c>
d005014a:	7921      	ldrb	r1, [r4, #4]
d005014c:	ab02      	add	r3, sp, #8
d005014e:	7962      	ldrb	r2, [r4, #5]
d0050150:	79a6      	ldrb	r6, [r4, #6]
d0050152:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
d0050156:	79e5      	ldrb	r5, [r4, #7]
d0050158:	a903      	add	r1, sp, #12
d005015a:	ea42 4606 	orr.w	r6, r2, r6, lsl #16
d005015e:	222c      	movs	r2, #44	; 0x2c
d0050160:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d0050164:	682d      	ldr	r5, [r5, #0]
d0050166:	68ad      	ldr	r5, [r5, #8]
d0050168:	47a8      	blx	r5
d005016a:	a803      	add	r0, sp, #12
d005016c:	2204      	movs	r2, #4
d005016e:	492e      	ldr	r1, [pc, #184]	; (d0050228 <LoadSFX+0x108>)
d0050170:	f009 f842 	bl	d00591f8 <memcmp>
d0050174:	b950      	cbnz	r0, d005018c <LoadSFX+0x6c>
d0050176:	2204      	movs	r2, #4
d0050178:	492c      	ldr	r1, [pc, #176]	; (d005022c <LoadSFX+0x10c>)
d005017a:	a805      	add	r0, sp, #20
d005017c:	f009 f83c 	bl	d00591f8 <memcmp>
d0050180:	4605      	mov	r5, r0
d0050182:	b918      	cbnz	r0, d005018c <LoadSFX+0x6c>
d0050184:	f8bd 3020 	ldrh.w	r3, [sp, #32]
d0050188:	2b01      	cmp	r3, #1
d005018a:	d010      	beq.n	d00501ae <LoadSFX+0x8e>
d005018c:	7923      	ldrb	r3, [r4, #4]
d005018e:	2000      	movs	r0, #0
d0050190:	7962      	ldrb	r2, [r4, #5]
d0050192:	79a1      	ldrb	r1, [r4, #6]
d0050194:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050198:	79e2      	ldrb	r2, [r4, #7]
d005019a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d005019e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00501a2:	681b      	ldr	r3, [r3, #0]
d00501a4:	68db      	ldr	r3, [r3, #12]
d00501a6:	4798      	blx	r3
d00501a8:	2000      	movs	r0, #0
d00501aa:	b00f      	add	sp, #60	; 0x3c
d00501ac:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00501ae:	9a0d      	ldr	r2, [sp, #52]	; 0x34
d00501b0:	4610      	mov	r0, r2
d00501b2:	9201      	str	r2, [sp, #4]
d00501b4:	f009 f810 	bl	d00591d8 <malloc>
d00501b8:	9a01      	ldr	r2, [sp, #4]
d00501ba:	4601      	mov	r1, r0
d00501bc:	6038      	str	r0, [r7, #0]
d00501be:	b1f8      	cbz	r0, d0050200 <LoadSFX+0xe0>
d00501c0:	7920      	ldrb	r0, [r4, #4]
d00501c2:	ab02      	add	r3, sp, #8
d00501c4:	7966      	ldrb	r6, [r4, #5]
d00501c6:	f894 c006 	ldrb.w	ip, [r4, #6]
d00501ca:	ea40 2606 	orr.w	r6, r0, r6, lsl #8
d00501ce:	79e7      	ldrb	r7, [r4, #7]
d00501d0:	4628      	mov	r0, r5
d00501d2:	ea46 460c 	orr.w	r6, r6, ip, lsl #16
d00501d6:	ea46 6607 	orr.w	r6, r6, r7, lsl #24
d00501da:	6836      	ldr	r6, [r6, #0]
d00501dc:	68b6      	ldr	r6, [r6, #8]
d00501de:	47b0      	blx	r6
d00501e0:	7923      	ldrb	r3, [r4, #4]
d00501e2:	7962      	ldrb	r2, [r4, #5]
d00501e4:	4628      	mov	r0, r5
d00501e6:	79a1      	ldrb	r1, [r4, #6]
d00501e8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00501ec:	79e2      	ldrb	r2, [r4, #7]
d00501ee:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00501f2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00501f6:	681b      	ldr	r3, [r3, #0]
d00501f8:	68db      	ldr	r3, [r3, #12]
d00501fa:	4798      	blx	r3
d00501fc:	980d      	ldr	r0, [sp, #52]	; 0x34
d00501fe:	e7d4      	b.n	d00501aa <LoadSFX+0x8a>
d0050200:	7923      	ldrb	r3, [r4, #4]
d0050202:	7962      	ldrb	r2, [r4, #5]
d0050204:	79a5      	ldrb	r5, [r4, #6]
d0050206:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d005020a:	79e2      	ldrb	r2, [r4, #7]
d005020c:	9001      	str	r0, [sp, #4]
d005020e:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0050212:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050216:	681b      	ldr	r3, [r3, #0]
d0050218:	68db      	ldr	r3, [r3, #12]
d005021a:	4798      	blx	r3
d005021c:	9901      	ldr	r1, [sp, #4]
d005021e:	4608      	mov	r0, r1
d0050220:	e7c3      	b.n	d00501aa <LoadSFX+0x8a>
d0050222:	bf00      	nop
d0050224:	2001f000 	.word	0x2001f000
d0050228:	d005a9c0 	.word	0xd005a9c0
d005022c:	d005a9c8 	.word	0xd005a9c8

d0050230 <splineRailBuildTable>:
d0050230:	2800      	cmp	r0, #0
d0050232:	d05d      	beq.n	d00502f0 <splineRailBuildTable+0xc0>
d0050234:	b5f0      	push	{r4, r5, r6, r7, lr}
d0050236:	6807      	ldr	r7, [r0, #0]
d0050238:	2f00      	cmp	r7, #0
d005023a:	d054      	beq.n	d00502e6 <splineRailBuildTable+0xb6>
d005023c:	6846      	ldr	r6, [r0, #4]
d005023e:	2e01      	cmp	r6, #1
d0050240:	dd51      	ble.n	d00502e6 <splineRailBuildTable+0xb6>
d0050242:	7c03      	ldrb	r3, [r0, #16]
d0050244:	2b00      	cmp	r3, #0
d0050246:	d04f      	beq.n	d00502e8 <splineRailBuildTable+0xb8>
d0050248:	1c72      	adds	r2, r6, #1
d005024a:	46b6      	mov	lr, r6
d005024c:	f242 0154 	movw	r1, #8276	; 0x2054
d0050250:	eddf 7a28 	vldr	s15, [pc, #160]	; d00502f4 <splineRailBuildTable+0xc4>
d0050254:	f1b3 0c00 	subs.w	ip, r3, #0
d0050258:	f242 0458 	movw	r4, #8280	; 0x2058
d005025c:	4401      	add	r1, r0
d005025e:	6502      	str	r2, [r0, #80]	; 0x50
d0050260:	edc0 7a15 	vstr	s15, [r0, #84]	; 0x54
d0050264:	eef0 5a67 	vmov.f32	s11, s15
d0050268:	bf18      	it	ne
d005026a:	f04f 0c01 	movne.w	ip, #1
d005026e:	4404      	add	r4, r0
d0050270:	f107 0314 	add.w	r3, r7, #20
d0050274:	f100 0558 	add.w	r5, r0, #88	; 0x58
d0050278:	2200      	movs	r2, #0
d005027a:	edc1 7a00 	vstr	s15, [r1]
d005027e:	e02a      	b.n	d00502d6 <splineRailBuildTable+0xa6>
d0050280:	f1bc 0f00 	cmp.w	ip, #0
d0050284:	d02b      	beq.n	d00502de <splineRailBuildTable+0xae>
d0050286:	ed13 7a04 	vldr	s14, [r3, #-16]
d005028a:	4596      	cmp	lr, r2
d005028c:	edd1 7a01 	vldr	s15, [r1, #4]
d0050290:	f103 0314 	add.w	r3, r3, #20
d0050294:	ed13 6a0a 	vldr	s12, [r3, #-40]	; 0xffffffd8
d0050298:	ee77 7ac7 	vsub.f32	s15, s15, s14
d005029c:	edd1 6a00 	vldr	s13, [r1]
d00502a0:	ed91 7a02 	vldr	s14, [r1, #8]
d00502a4:	ee76 6ac6 	vsub.f32	s13, s13, s12
d00502a8:	ed13 6a08 	vldr	s12, [r3, #-32]	; 0xffffffe0
d00502ac:	ee67 7aa7 	vmul.f32	s15, s15, s15
d00502b0:	ee37 7a46 	vsub.f32	s14, s14, s12
d00502b4:	ee06 2a10 	vmov	s12, r2
d00502b8:	eee6 7aa6 	vfma.f32	s15, s13, s13
d00502bc:	eeb8 6ac6 	vcvt.f32.s32	s12, s12
d00502c0:	eca5 6a01 	vstmia	r5!, {s12}
d00502c4:	eee7 7a07 	vfma.f32	s15, s14, s14
d00502c8:	eeb1 7ae7 	vsqrt.f32	s14, s15
d00502cc:	ee75 5a87 	vadd.f32	s11, s11, s14
d00502d0:	ece4 5a01 	vstmia	r4!, {s11}
d00502d4:	d005      	beq.n	d00502e2 <splineRailBuildTable+0xb2>
d00502d6:	3201      	adds	r2, #1
d00502d8:	4639      	mov	r1, r7
d00502da:	4296      	cmp	r6, r2
d00502dc:	ddd0      	ble.n	d0050280 <splineRailBuildTable+0x50>
d00502de:	4619      	mov	r1, r3
d00502e0:	e7d1      	b.n	d0050286 <splineRailBuildTable+0x56>
d00502e2:	edc0 5a13 	vstr	s11, [r0, #76]	; 0x4c
d00502e6:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00502e8:	f106 3eff 	add.w	lr, r6, #4294967295	; 0xffffffff
d00502ec:	4632      	mov	r2, r6
d00502ee:	e7ad      	b.n	d005024c <splineRailBuildTable+0x1c>
d00502f0:	4770      	bx	lr
d00502f2:	bf00      	nop
d00502f4:	00000000 	.word	0x00000000

d00502f8 <splineRailInit>:
d00502f8:	b338      	cbz	r0, d005034a <splineRailInit+0x52>
d00502fa:	3b00      	subs	r3, #0
d00502fc:	6001      	str	r1, [r0, #0]
d00502fe:	f04f 4181 	mov.w	r1, #1082130432	; 0x40800000
d0050302:	6042      	str	r2, [r0, #4]
d0050304:	bf18      	it	ne
d0050306:	2301      	movne	r3, #1
d0050308:	2200      	movs	r2, #0
d005030a:	6381      	str	r1, [r0, #56]	; 0x38
d005030c:	7403      	strb	r3, [r0, #16]
d005030e:	2300      	movs	r3, #0
d0050310:	490e      	ldr	r1, [pc, #56]	; (d005034c <splineRailInit+0x54>)
d0050312:	ed80 0a03 	vstr	s0, [r0, #12]
d0050316:	6083      	str	r3, [r0, #8]
d0050318:	6143      	str	r3, [r0, #20]
d005031a:	6183      	str	r3, [r0, #24]
d005031c:	61c3      	str	r3, [r0, #28]
d005031e:	6243      	str	r3, [r0, #36]	; 0x24
d0050320:	6403      	str	r3, [r0, #64]	; 0x40
d0050322:	6483      	str	r3, [r0, #72]	; 0x48
d0050324:	64c3      	str	r3, [r0, #76]	; 0x4c
d0050326:	f880 2020 	strb.w	r2, [r0, #32]
d005032a:	6502      	str	r2, [r0, #80]	; 0x50
d005032c:	63c1      	str	r1, [r0, #60]	; 0x3c
d005032e:	b4f0      	push	{r4, r5, r6, r7}
d0050330:	4e07      	ldr	r6, [pc, #28]	; (d0050350 <splineRailInit+0x58>)
d0050332:	f04f 4580 	mov.w	r5, #1073741824	; 0x40000000
d0050336:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d005033a:	62c6      	str	r6, [r0, #44]	; 0x2c
d005033c:	6306      	str	r6, [r0, #48]	; 0x30
d005033e:	6345      	str	r5, [r0, #52]	; 0x34
d0050340:	6445      	str	r5, [r0, #68]	; 0x44
d0050342:	6287      	str	r7, [r0, #40]	; 0x28
d0050344:	bcf0      	pop	{r4, r5, r6, r7}
d0050346:	f7ff bf73 	b.w	d0050230 <splineRailBuildTable>
d005034a:	4770      	bx	lr
d005034c:	3f4ccccd 	.word	0x3f4ccccd
d0050350:	40200000 	.word	0x40200000

d0050354 <splineRailSetTuning>:
d0050354:	b128      	cbz	r0, d0050362 <splineRailSetTuning+0xe>
d0050356:	ed80 0a0b 	vstr	s0, [r0, #44]	; 0x2c
d005035a:	edc0 0a0c 	vstr	s1, [r0, #48]	; 0x30
d005035e:	ed80 1a11 	vstr	s2, [r0, #68]	; 0x44
d0050362:	4770      	bx	lr

d0050364 <splineRailSetBanking>:
d0050364:	b128      	cbz	r0, d0050372 <splineRailSetBanking+0xe>
d0050366:	ed80 0a0d 	vstr	s0, [r0, #52]	; 0x34
d005036a:	edc0 0a0e 	vstr	s1, [r0, #56]	; 0x38
d005036e:	ed80 1a0f 	vstr	s2, [r0, #60]	; 0x3c
d0050372:	4770      	bx	lr

d0050374 <splineRailGetCurrentNode>:
d0050374:	b188      	cbz	r0, d005039a <splineRailGetCurrentNode+0x26>
d0050376:	6803      	ldr	r3, [r0, #0]
d0050378:	b173      	cbz	r3, d0050398 <splineRailGetCurrentNode+0x24>
d005037a:	6843      	ldr	r3, [r0, #4]
d005037c:	2b01      	cmp	r3, #1
d005037e:	dd0b      	ble.n	d0050398 <splineRailGetCurrentNode+0x24>
d0050380:	edd0 7a02 	vldr	s15, [r0, #8]
d0050384:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0050388:	ee17 0a90 	vmov	r0, s15
d005038c:	2800      	cmp	r0, #0
d005038e:	db03      	blt.n	d0050398 <splineRailGetCurrentNode+0x24>
d0050390:	4283      	cmp	r3, r0
d0050392:	dc02      	bgt.n	d005039a <splineRailGetCurrentNode+0x26>
d0050394:	1e58      	subs	r0, r3, #1
d0050396:	4770      	bx	lr
d0050398:	2000      	movs	r0, #0
d005039a:	4770      	bx	lr

d005039c <initSystem>:
d005039c:	b570      	push	{r4, r5, r6, lr}
d005039e:	4c41      	ldr	r4, [pc, #260]	; (d00504a4 <initSystem+0x108>)
d00503a0:	b082      	sub	sp, #8
d00503a2:	2000      	movs	r0, #0
d00503a4:	2600      	movs	r6, #0
d00503a6:	7823      	ldrb	r3, [r4, #0]
d00503a8:	7862      	ldrb	r2, [r4, #1]
d00503aa:	78a1      	ldrb	r1, [r4, #2]
d00503ac:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00503b0:	78e2      	ldrb	r2, [r4, #3]
d00503b2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00503b6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00503ba:	681b      	ldr	r3, [r3, #0]
d00503bc:	4798      	blx	r3
d00503be:	f7ff fe3d 	bl	d005003c <initMalloc>
d00503c2:	7b23      	ldrb	r3, [r4, #12]
d00503c4:	7b62      	ldrb	r2, [r4, #13]
d00503c6:	2150      	movs	r1, #80	; 0x50
d00503c8:	7ba5      	ldrb	r5, [r4, #14]
d00503ca:	20dc      	movs	r0, #220	; 0xdc
d00503cc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00503d0:	7be2      	ldrb	r2, [r4, #15]
d00503d2:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00503d6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00503da:	681b      	ldr	r3, [r3, #0]
d00503dc:	691b      	ldr	r3, [r3, #16]
d00503de:	4798      	blx	r3
d00503e0:	7b23      	ldrb	r3, [r4, #12]
d00503e2:	7b62      	ldrb	r2, [r4, #13]
d00503e4:	2000      	movs	r0, #0
d00503e6:	7ba1      	ldrb	r1, [r4, #14]
d00503e8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00503ec:	7be2      	ldrb	r2, [r4, #15]
d00503ee:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00503f2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00503f6:	681b      	ldr	r3, [r3, #0]
d00503f8:	689b      	ldr	r3, [r3, #8]
d00503fa:	4798      	blx	r3
d00503fc:	7b25      	ldrb	r5, [r4, #12]
d00503fe:	7b62      	ldrb	r2, [r4, #13]
d0050400:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0050404:	7ba1      	ldrb	r1, [r4, #14]
d0050406:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d005040a:	7be0      	ldrb	r0, [r4, #15]
d005040c:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0050410:	ea45 4501 	orr.w	r5, r5, r1, lsl #16
d0050414:	4619      	mov	r1, r3
d0050416:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d005041a:	4610      	mov	r0, r2
d005041c:	682d      	ldr	r5, [r5, #0]
d005041e:	9600      	str	r6, [sp, #0]
d0050420:	696d      	ldr	r5, [r5, #20]
d0050422:	47a8      	blx	r5
d0050424:	7c23      	ldrb	r3, [r4, #16]
d0050426:	7c62      	ldrb	r2, [r4, #17]
d0050428:	f44f 7000 	mov.w	r0, #512	; 0x200
d005042c:	7ca1      	ldrb	r1, [r4, #18]
d005042e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050432:	7ce2      	ldrb	r2, [r4, #19]
d0050434:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0050438:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d005043c:	681b      	ldr	r3, [r3, #0]
d005043e:	681b      	ldr	r3, [r3, #0]
d0050440:	4798      	blx	r3
d0050442:	7c23      	ldrb	r3, [r4, #16]
d0050444:	7c61      	ldrb	r1, [r4, #17]
d0050446:	2201      	movs	r2, #1
d0050448:	7ca0      	ldrb	r0, [r4, #18]
d005044a:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d005044e:	7ce1      	ldrb	r1, [r4, #19]
d0050450:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0050454:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d0050458:	681b      	ldr	r3, [r3, #0]
d005045a:	685b      	ldr	r3, [r3, #4]
d005045c:	701a      	strb	r2, [r3, #0]
d005045e:	f001 f92b 	bl	d00516b8 <initDepthBandMem>
d0050462:	7b23      	ldrb	r3, [r4, #12]
d0050464:	7b62      	ldrb	r2, [r4, #13]
d0050466:	7ba1      	ldrb	r1, [r4, #14]
d0050468:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d005046c:	7be2      	ldrb	r2, [r4, #15]
d005046e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0050472:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050476:	681b      	ldr	r3, [r3, #0]
d0050478:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d005047a:	4798      	blx	r3
d005047c:	7b23      	ldrb	r3, [r4, #12]
d005047e:	7b62      	ldrb	r2, [r4, #13]
d0050480:	7ba5      	ldrb	r5, [r4, #14]
d0050482:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050486:	7be2      	ldrb	r2, [r4, #15]
d0050488:	4907      	ldr	r1, [pc, #28]	; (d00504a8 <initSystem+0x10c>)
d005048a:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d005048e:	6008      	str	r0, [r1, #0]
d0050490:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050494:	681b      	ldr	r3, [r3, #0]
d0050496:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d0050498:	4798      	blx	r3
d005049a:	4b04      	ldr	r3, [pc, #16]	; (d00504ac <initSystem+0x110>)
d005049c:	6018      	str	r0, [r3, #0]
d005049e:	b002      	add	sp, #8
d00504a0:	bd70      	pop	{r4, r5, r6, pc}
d00504a2:	bf00      	nop
d00504a4:	2001f000 	.word	0x2001f000
d00504a8:	d00f5aa0 	.word	0xd00f5aa0
d00504ac:	d00f5a80 	.word	0xd00f5a80

d00504b0 <weatherLightning>:
d00504b0:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d00504b4:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00504b8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00504bc:	4605      	mov	r5, r0
d00504be:	d930      	bls.n	d0050522 <weatherLightning+0x72>
d00504c0:	eddf 7ab6 	vldr	s15, [pc, #728]	; d005079c <weatherLightning+0x2ec>
d00504c4:	fe80 0a67 	vminnm.f32	s0, s0, s15
d00504c8:	4eb5      	ldr	r6, [pc, #724]	; (d00507a0 <weatherLightning+0x2f0>)
d00504ca:	4fb6      	ldr	r7, [pc, #728]	; (d00507a4 <weatherLightning+0x2f4>)
d00504cc:	6833      	ldr	r3, [r6, #0]
d00504ce:	683a      	ldr	r2, [r7, #0]
d00504d0:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d00504d4:	2a01      	cmp	r2, #1
d00504d6:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d00504da:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d00504de:	6033      	str	r3, [r6, #0]
d00504e0:	d022      	beq.n	d0050528 <weatherLightning+0x78>
d00504e2:	2a02      	cmp	r2, #2
d00504e4:	f000 8087 	beq.w	d00505f6 <weatherLightning+0x146>
d00504e8:	4caf      	ldr	r4, [pc, #700]	; (d00507a8 <weatherLightning+0x2f8>)
d00504ea:	2100      	movs	r1, #0
d00504ec:	b2e8      	uxtb	r0, r5
d00504ee:	edd4 7a00 	vldr	s15, [r4]
d00504f2:	ee37 0ac0 	vsub.f32	s0, s15, s0
d00504f6:	ed84 0a00 	vstr	s0, [r4]
d00504fa:	f005 fdf5 	bl	d00560e8 <lightEnable>
d00504fe:	4628      	mov	r0, r5
d0050500:	ed9f 0aaa 	vldr	s0, [pc, #680]	; d00507ac <weatherLightning+0x2fc>
d0050504:	f005 fe86 	bl	d0056214 <lightSetIntensity>
d0050508:	edd4 7a00 	vldr	s15, [r4]
d005050c:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0050510:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050514:	f240 80d6 	bls.w	d00506c4 <weatherLightning+0x214>
d0050518:	f04f 0800 	mov.w	r8, #0
d005051c:	4640      	mov	r0, r8
d005051e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0050522:	ed9f 0aa3 	vldr	s0, [pc, #652]	; d00507b0 <weatherLightning+0x300>
d0050526:	e7cf      	b.n	d00504c8 <weatherLightning+0x18>
d0050528:	4aa2      	ldr	r2, [pc, #648]	; (d00507b4 <weatherLightning+0x304>)
d005052a:	eef2 6a04 	vmov.f32	s13, #36	; 0x41200000  10.0
d005052e:	f8df a2b4 	ldr.w	sl, [pc, #692]	; d00507e4 <weatherLightning+0x334>
d0050532:	ed92 7a00 	vldr	s14, [r2]
d0050536:	2200      	movs	r2, #0
d0050538:	edda 7a00 	vldr	s15, [sl]
d005053c:	ee66 6ac7 	vnmul.f32	s13, s13, s14
d0050540:	f8df 9284 	ldr.w	r9, [pc, #644]	; d00507c8 <weatherLightning+0x318>
d0050544:	ed99 7a00 	vldr	s14, [r9]
d0050548:	eee6 7a80 	vfma.f32	s15, s13, s0
d005054c:	ee37 0a40 	vsub.f32	s0, s14, s0
d0050550:	ed89 0a00 	vstr	s0, [r9]
d0050554:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0050558:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005055c:	f100 80ad 	bmi.w	d00506ba <weatherLightning+0x20a>
d0050560:	bfcc      	ite	gt
d0050562:	f04f 0801 	movgt.w	r8, #1
d0050566:	f04f 0800 	movle.w	r8, #0
d005056a:	edca 7a00 	vstr	s15, [sl]
d005056e:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d0050572:	2101      	movs	r1, #1
d0050574:	fa5f fb85 	uxtb.w	fp, r5
d0050578:	ea83 4453 	eor.w	r4, r3, r3, lsr #17
d005057c:	4658      	mov	r0, fp
d005057e:	ea84 1444 	eor.w	r4, r4, r4, lsl #5
d0050582:	6034      	str	r4, [r6, #0]
d0050584:	b2e4      	uxtb	r4, r4
d0050586:	f005 fdaf 	bl	d00560e8 <lightEnable>
d005058a:	ed9f 7a8b 	vldr	s14, [pc, #556]	; d00507b8 <weatherLightning+0x308>
d005058e:	ee07 4a90 	vmov	s15, r4
d0050592:	ed9a 0a00 	vldr	s0, [sl]
d0050596:	4628      	mov	r0, r5
d0050598:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005059c:	eea7 0a87 	vfma.f32	s0, s15, s14
d00505a0:	f005 fe38 	bl	d0056214 <lightSetIntensity>
d00505a4:	edd9 7a00 	vldr	s15, [r9]
d00505a8:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d00505ac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00505b0:	d8b4      	bhi.n	d005051c <weatherLightning+0x6c>
d00505b2:	4a82      	ldr	r2, [pc, #520]	; (d00507bc <weatherLightning+0x30c>)
d00505b4:	6813      	ldr	r3, [r2, #0]
d00505b6:	3b01      	subs	r3, #1
d00505b8:	2b00      	cmp	r3, #0
d00505ba:	6013      	str	r3, [r2, #0]
d00505bc:	6833      	ldr	r3, [r6, #0]
d00505be:	f340 80ca 	ble.w	d0050756 <weatherLightning+0x2a6>
d00505c2:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d00505c6:	2202      	movs	r2, #2
d00505c8:	eddf 6a7d 	vldr	s13, [pc, #500]	; d00507c0 <weatherLightning+0x310>
d00505cc:	4640      	mov	r0, r8
d00505ce:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d00505d2:	603a      	str	r2, [r7, #0]
d00505d4:	eddf 7a7b 	vldr	s15, [pc, #492]	; d00507c4 <weatherLightning+0x314>
d00505d8:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d00505dc:	f3c3 0209 	ubfx	r2, r3, #0, #10
d00505e0:	6033      	str	r3, [r6, #0]
d00505e2:	ee07 2a10 	vmov	s14, r2
d00505e6:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00505ea:	eee7 7a26 	vfma.f32	s15, s14, s13
d00505ee:	edc9 7a00 	vstr	s15, [r9]
d00505f2:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00505f6:	4c74      	ldr	r4, [pc, #464]	; (d00507c8 <weatherLightning+0x318>)
d00505f8:	2100      	movs	r1, #0
d00505fa:	b2e8      	uxtb	r0, r5
d00505fc:	edd4 7a00 	vldr	s15, [r4]
d0050600:	ee37 0ac0 	vsub.f32	s0, s15, s0
d0050604:	ed84 0a00 	vstr	s0, [r4]
d0050608:	f005 fd6e 	bl	d00560e8 <lightEnable>
d005060c:	4628      	mov	r0, r5
d005060e:	ed9f 0a67 	vldr	s0, [pc, #412]	; d00507ac <weatherLightning+0x2fc>
d0050612:	f005 fdff 	bl	d0056214 <lightSetIntensity>
d0050616:	edd4 7a00 	vldr	s15, [r4]
d005061a:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d005061e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050622:	f63f af79 	bhi.w	d0050518 <weatherLightning+0x68>
d0050626:	6833      	ldr	r3, [r6, #0]
d0050628:	2201      	movs	r2, #1
d005062a:	eddf 4a68 	vldr	s9, [pc, #416]	; d00507cc <weatherLightning+0x31c>
d005062e:	f04f 0800 	mov.w	r8, #0
d0050632:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d0050636:	603a      	str	r2, [r7, #0]
d0050638:	ed9f 7a65 	vldr	s14, [pc, #404]	; d00507d0 <weatherLightning+0x320>
d005063c:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0050640:	ed9f 5a64 	vldr	s10, [pc, #400]	; d00507d4 <weatherLightning+0x324>
d0050644:	ed9f 6a64 	vldr	s12, [pc, #400]	; d00507d8 <weatherLightning+0x328>
d0050648:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d005064c:	eddf 5a63 	vldr	s11, [pc, #396]	; d00507dc <weatherLightning+0x32c>
d0050650:	eddf 6a63 	vldr	s13, [pc, #396]	; d00507e0 <weatherLightning+0x330>
d0050654:	ea83 3243 	eor.w	r2, r3, r3, lsl #13
d0050658:	f3c3 0309 	ubfx	r3, r3, #0, #10
d005065c:	4855      	ldr	r0, [pc, #340]	; (d00507b4 <weatherLightning+0x304>)
d005065e:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d0050662:	ee07 3a90 	vmov	s15, r3
d0050666:	495f      	ldr	r1, [pc, #380]	; (d00507e4 <weatherLightning+0x334>)
d0050668:	ea82 1342 	eor.w	r3, r2, r2, lsl #5
d005066c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050670:	ea83 3243 	eor.w	r2, r3, r3, lsl #13
d0050674:	b2db      	uxtb	r3, r3
d0050676:	eea7 7aa4 	vfma.f32	s14, s15, s9
d005067a:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d005067e:	ee07 3a90 	vmov	s15, r3
d0050682:	ea82 1342 	eor.w	r3, r2, r2, lsl #5
d0050686:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005068a:	f3c3 0209 	ubfx	r2, r3, #0, #10
d005068e:	6033      	str	r3, [r6, #0]
d0050690:	eea7 6a85 	vfma.f32	s12, s15, s10
d0050694:	eef0 7a46 	vmov.f32	s15, s12
d0050698:	ee06 2a10 	vmov	s12, r2
d005069c:	eeb8 6ac6 	vcvt.f32.s32	s12, s12
d00506a0:	ee67 7a27 	vmul.f32	s15, s14, s15
d00506a4:	eee6 6a25 	vfma.f32	s13, s12, s11
d00506a8:	edc0 7a00 	vstr	s15, [r0]
d00506ac:	4640      	mov	r0, r8
d00506ae:	edc1 7a00 	vstr	s15, [r1]
d00506b2:	edc4 6a00 	vstr	s13, [r4]
d00506b6:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00506ba:	f04f 0800 	mov.w	r8, #0
d00506be:	f8ca 2000 	str.w	r2, [sl]
d00506c2:	e754      	b.n	d005056e <weatherLightning+0xbe>
d00506c4:	6833      	ldr	r3, [r6, #0]
d00506c6:	2201      	movs	r2, #1
d00506c8:	4947      	ldr	r1, [pc, #284]	; (d00507e8 <weatherLightning+0x338>)
d00506ca:	f04f 0800 	mov.w	r8, #0
d00506ce:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d00506d2:	603a      	str	r2, [r7, #0]
d00506d4:	eddf 5a3d 	vldr	s11, [pc, #244]	; d00507cc <weatherLightning+0x31c>
d00506d8:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d00506dc:	ed9f 7a3c 	vldr	s14, [pc, #240]	; d00507d0 <weatherLightning+0x320>
d00506e0:	ed9f 6a3e 	vldr	s12, [pc, #248]	; d00507dc <weatherLightning+0x32c>
d00506e4:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d00506e8:	eddf 6a3d 	vldr	s13, [pc, #244]	; d00507e0 <weatherLightning+0x330>
d00506ec:	4c31      	ldr	r4, [pc, #196]	; (d00507b4 <weatherLightning+0x304>)
d00506ee:	ea83 3243 	eor.w	r2, r3, r3, lsl #13
d00506f2:	fba1 0103 	umull	r0, r1, r1, r3
d00506f6:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d00506fa:	f021 0003 	bic.w	r0, r1, #3
d00506fe:	ea82 1242 	eor.w	r2, r2, r2, lsl #5
d0050702:	eb00 0091 	add.w	r0, r0, r1, lsr #2
d0050706:	ea82 3142 	eor.w	r1, r2, r2, lsl #13
d005070a:	f3c2 0209 	ubfx	r2, r2, #0, #10
d005070e:	1a1b      	subs	r3, r3, r0
d0050710:	482d      	ldr	r0, [pc, #180]	; (d00507c8 <weatherLightning+0x318>)
d0050712:	ee07 2a90 	vmov	s15, r2
d0050716:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d005071a:	3302      	adds	r3, #2
d005071c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050720:	ea81 1241 	eor.w	r2, r1, r1, lsl #5
d0050724:	492f      	ldr	r1, [pc, #188]	; (d00507e4 <weatherLightning+0x334>)
d0050726:	f3c2 0509 	ubfx	r5, r2, #0, #10
d005072a:	6032      	str	r2, [r6, #0]
d005072c:	eea7 7aa5 	vfma.f32	s14, s15, s11
d0050730:	4a22      	ldr	r2, [pc, #136]	; (d00507bc <weatherLightning+0x30c>)
d0050732:	6013      	str	r3, [r2, #0]
d0050734:	eef0 7a47 	vmov.f32	s15, s14
d0050738:	ee07 5a10 	vmov	s14, r5
d005073c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0050740:	edc4 7a00 	vstr	s15, [r4]
d0050744:	edc1 7a00 	vstr	s15, [r1]
d0050748:	eee7 6a06 	vfma.f32	s13, s14, s12
d005074c:	edc0 6a00 	vstr	s13, [r0]
d0050750:	4640      	mov	r0, r8
d0050752:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0050756:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d005075a:	eddf 6a24 	vldr	s13, [pc, #144]	; d00507ec <weatherLightning+0x33c>
d005075e:	eddf 7a24 	vldr	s15, [pc, #144]	; d00507f0 <weatherLightning+0x340>
d0050762:	4658      	mov	r0, fp
d0050764:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0050768:	4a0f      	ldr	r2, [pc, #60]	; (d00507a8 <weatherLightning+0x2f8>)
d005076a:	2100      	movs	r1, #0
d005076c:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0050770:	f3c3 040a 	ubfx	r4, r3, #0, #11
d0050774:	6033      	str	r3, [r6, #0]
d0050776:	ee07 4a10 	vmov	s14, r4
d005077a:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d005077e:	eee7 7a26 	vfma.f32	s15, s14, s13
d0050782:	edc2 7a00 	vstr	s15, [r2]
d0050786:	f005 fcaf 	bl	d00560e8 <lightEnable>
d005078a:	4628      	mov	r0, r5
d005078c:	ed9f 0a07 	vldr	s0, [pc, #28]	; d00507ac <weatherLightning+0x2fc>
d0050790:	f005 fd40 	bl	d0056214 <lightSetIntensity>
d0050794:	2300      	movs	r3, #0
d0050796:	603b      	str	r3, [r7, #0]
d0050798:	e6c0      	b.n	d005051c <weatherLightning+0x6c>
d005079a:	bf00      	nop
d005079c:	3dcccccd 	.word	0x3dcccccd
d00507a0:	d005b610 	.word	0xd005b610
d00507a4:	d005b764 	.word	0xd005b764
d00507a8:	d005b608 	.word	0xd005b608
d00507ac:	00000000 	.word	0x00000000
d00507b0:	3c83126f 	.word	0x3c83126f
d00507b4:	d005b6d0 	.word	0xd005b6d0
d00507b8:	3ab3e71b 	.word	0x3ab3e71b
d00507bc:	d005b6d4 	.word	0xd005b6d4
d00507c0:	38cd000c 	.word	0x38cd000c
d00507c4:	3ca3d70a 	.word	0x3ca3d70a
d00507c8:	d005b768 	.word	0xd005b768
d00507cc:	3ad9d00e 	.word	0x3ad9d00e
d00507d0:	3e99999a 	.word	0x3e99999a
d00507d4:	3b33e71b 	.word	0x3b33e71b
d00507d8:	3f266666 	.word	0x3f266666
d00507dc:	3776000e 	.word	0x3776000e
d00507e0:	3ccccccd 	.word	0x3ccccccd
d00507e4:	d005b6cc 	.word	0xd005b6cc
d00507e8:	cccccccd 	.word	0xcccccccd
d00507ec:	3aace269 	.word	0x3aace269
d00507f0:	3f4ccccd 	.word	0x3f4ccccd

d00507f4 <main>:
d00507f4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00507f8:	ed2d 8b10 	vpush	{d8-d15}
d00507fc:	f5ad 4d89 	sub.w	sp, sp, #17536	; 0x4480
d0050800:	f244 230f 	movw	r3, #16911	; 0x420f
d0050804:	4cc2      	ldr	r4, [pc, #776]	; (d0050b10 <main+0x31c>)
d0050806:	b095      	sub	sp, #84	; 0x54
d0050808:	ed9f 8ac2 	vldr	s16, [pc, #776]	; d0050b14 <main+0x320>
d005080c:	f8df 8330 	ldr.w	r8, [pc, #816]	; d0050b40 <main+0x34c>
d0050810:	446b      	add	r3, sp
d0050812:	f8df b330 	ldr.w	fp, [pc, #816]	; d0050b44 <main+0x350>
d0050816:	eeb0 aa48 	vmov.f32	s20, s16
d005081a:	eddf 9abf 	vldr	s19, [pc, #764]	; d0050b18 <main+0x324>
d005081e:	f023 091f 	bic.w	r9, r3, #31
d0050822:	f7ff fdbb 	bl	d005039c <initSystem>
d0050826:	7c23      	ldrb	r3, [r4, #16]
d0050828:	2100      	movs	r1, #0
d005082a:	7c62      	ldrb	r2, [r4, #17]
d005082c:	f509 7018 	add.w	r0, r9, #608	; 0x260
d0050830:	7ca5      	ldrb	r5, [r4, #18]
d0050832:	f509 7608 	add.w	r6, r9, #544	; 0x220
d0050836:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d005083a:	7ce2      	ldrb	r2, [r4, #19]
d005083c:	9006      	str	r0, [sp, #24]
d005083e:	f109 07c0 	add.w	r7, r9, #192	; 0xc0
d0050842:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0050846:	f509 75f0 	add.w	r5, r9, #480	; 0x1e0
d005084a:	48b4      	ldr	r0, [pc, #720]	; (d0050b1c <main+0x328>)
d005084c:	f509 7ad0 	add.w	sl, r9, #416	; 0x1a0
d0050850:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050854:	f509 72b0 	add.w	r2, r9, #352	; 0x160
d0050858:	9607      	str	r6, [sp, #28]
d005085a:	ae52      	add	r6, sp, #328	; 0x148
d005085c:	685b      	ldr	r3, [r3, #4]
d005085e:	9508      	str	r5, [sp, #32]
d0050860:	681b      	ldr	r3, [r3, #0]
d0050862:	9209      	str	r2, [sp, #36]	; 0x24
d0050864:	4798      	blx	r3
d0050866:	7b23      	ldrb	r3, [r4, #12]
d0050868:	2064      	movs	r0, #100	; 0x64
d005086a:	7b62      	ldrb	r2, [r4, #13]
d005086c:	7ba1      	ldrb	r1, [r4, #14]
d005086e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050872:	7be2      	ldrb	r2, [r4, #15]
d0050874:	ed9f 9aaa 	vldr	s18, [pc, #680]	; d0050b20 <main+0x32c>
d0050878:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d005087c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050880:	681b      	ldr	r3, [r3, #0]
d0050882:	689b      	ldr	r3, [r3, #8]
d0050884:	4798      	blx	r3
d0050886:	f004 f827 	bl	d00548d8 <worldClear>
d005088a:	f005 fc27 	bl	d00560dc <lightsClear>
d005088e:	f003 fd27 	bl	d00542e0 <sb3dParticlesClear>
d0050892:	f005 fccf 	bl	d0056234 <setDefaultRenderMode>
d0050896:	4638      	mov	r0, r7
d0050898:	f004 f87c 	bl	d0054994 <cameraCreate>
d005089c:	4638      	mov	r0, r7
d005089e:	eddf 0aa1 	vldr	s1, [pc, #644]	; d0050b24 <main+0x330>
d00508a2:	ed9f 0aa1 	vldr	s0, [pc, #644]	; d0050b28 <main+0x334>
d00508a6:	f004 fa3f 	bl	d0054d28 <cameraSetRange>
d00508aa:	eeb0 1a48 	vmov.f32	s2, s16
d00508ae:	eeb0 0a48 	vmov.f32	s0, s16
d00508b2:	eddf 0a9e 	vldr	s1, [pc, #632]	; d0050b2c <main+0x338>
d00508b6:	f003 fc8d 	bl	d00541d4 <vec3>
d00508ba:	4638      	mov	r0, r7
d00508bc:	edcd 0a2f 	vstr	s1, [sp, #188]	; 0xbc
d00508c0:	ed8d 0a2e 	vstr	s0, [sp, #184]	; 0xb8
d00508c4:	ed8d 1a30 	vstr	s2, [sp, #192]	; 0xc0
d00508c8:	f004 f86e 	bl	d00549a8 <cameraSetPosition>
d00508cc:	4638      	mov	r0, r7
d00508ce:	f004 f80b 	bl	d00548e8 <cameraNormalize>
d00508d2:	ab57      	add	r3, sp, #348	; 0x15c
d00508d4:	f04f 4c7f 	mov.w	ip, #4278190080	; 0xff000000
d00508d8:	461d      	mov	r5, r3
d00508da:	e8b8 000f 	ldmia.w	r8!, {r0, r1, r2, r3}
d00508de:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d00508e0:	e8b8 000f 	ldmia.w	r8!, {r0, r1, r2, r3}
d00508e4:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d00508e6:	e8b8 000f 	ldmia.w	r8!, {r0, r1, r2, r3}
d00508ea:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d00508ec:	e898 000f 	ldmia.w	r8, {r0, r1, r2, r3}
d00508f0:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d00508f4:	f108 0510 	add.w	r5, r8, #16
d00508f8:	f8cb c000 	str.w	ip, [fp]
d00508fc:	9600      	str	r6, [sp, #0]
d00508fe:	f8cb c040 	str.w	ip, [fp, #64]	; 0x40
d0050902:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0050904:	682d      	ldr	r5, [r5, #0]
d0050906:	c60f      	stmia	r6!, {r0, r1, r2, r3}
d0050908:	4663      	mov	r3, ip
d005090a:	6035      	str	r5, [r6, #0]
d005090c:	4658      	mov	r0, fp
d005090e:	a957      	add	r1, sp, #348	; 0x15c
d0050910:	2210      	movs	r2, #16
d0050912:	ad1f      	add	r5, sp, #124	; 0x7c
d0050914:	f005 f98e 	bl	d0055c34 <buildLightingCLUT>
d0050918:	7b23      	ldrb	r3, [r4, #12]
d005091a:	a925      	add	r1, sp, #148	; 0x94
d005091c:	7b62      	ldrb	r2, [r4, #13]
d005091e:	4658      	mov	r0, fp
d0050920:	2600      	movs	r6, #0
d0050922:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050926:	9105      	str	r1, [sp, #20]
d0050928:	7ba1      	ldrb	r1, [r4, #14]
d005092a:	46cb      	mov	fp, r9
d005092c:	7be2      	ldrb	r2, [r4, #15]
d005092e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0050932:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050936:	681b      	ldr	r3, [r3, #0]
d0050938:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d005093a:	4798      	blx	r3
d005093c:	eeb0 1a48 	vmov.f32	s2, s16
d0050940:	eef0 0a48 	vmov.f32	s1, s16
d0050944:	eeb0 0a48 	vmov.f32	s0, s16
d0050948:	f003 fc44 	bl	d00541d4 <vec3>
d005094c:	eddf 1a76 	vldr	s3, [pc, #472]	; d0050b28 <main+0x334>
d0050950:	2001      	movs	r0, #1
d0050952:	edcd 0a32 	vstr	s1, [sp, #200]	; 0xc8
d0050956:	ed8d 0a31 	vstr	s0, [sp, #196]	; 0xc4
d005095a:	ed8d 1a33 	vstr	s2, [sp, #204]	; 0xcc
d005095e:	f005 fbd1 	bl	d0056104 <addPointLight>
d0050962:	f108 0324 	add.w	r3, r8, #36	; 0x24
d0050966:	4680      	mov	r8, r0
d0050968:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d005096c:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0050970:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d0050974:	2001      	movs	r0, #1
d0050976:	edd5 0a01 	vldr	s1, [r5, #4]
d005097a:	ed95 1a02 	vldr	s2, [r5, #8]
d005097e:	ed95 0a00 	vldr	s0, [r5]
d0050982:	f005 fbfb 	bl	d005617c <addDirectionalLight>
d0050986:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d005098a:	b2c3      	uxtb	r3, r0
d005098c:	ee0f 3a90 	vmov	s31, r3
d0050990:	4618      	mov	r0, r3
d0050992:	f005 fc3f 	bl	d0056214 <lightSetIntensity>
d0050996:	4631      	mov	r1, r6
d0050998:	ee1f 0a90 	vmov	r0, s31
d005099c:	f005 fba4 	bl	d00560e8 <lightEnable>
d00509a0:	f509 7130 	add.w	r1, r9, #704	; 0x2c0
d00509a4:	4862      	ldr	r0, [pc, #392]	; (d0050b30 <main+0x33c>)
d00509a6:	f7ff fbbb 	bl	d0050120 <LoadSFX>
d00509aa:	7c21      	ldrb	r1, [r4, #16]
d00509ac:	7c65      	ldrb	r5, [r4, #17]
d00509ae:	4602      	mov	r2, r0
d00509b0:	f894 c012 	ldrb.w	ip, [r4, #18]
d00509b4:	4633      	mov	r3, r6
d00509b6:	ea41 2505 	orr.w	r5, r1, r5, lsl #8
d00509ba:	7ce0      	ldrb	r0, [r4, #19]
d00509bc:	f8d9 12c0 	ldr.w	r1, [r9, #704]	; 0x2c0
d00509c0:	ea45 450c 	orr.w	r5, r5, ip, lsl #16
d00509c4:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d00509c8:	4630      	mov	r0, r6
d00509ca:	68ad      	ldr	r5, [r5, #8]
d00509cc:	68ed      	ldr	r5, [r5, #12]
d00509ce:	47a8      	blx	r5
d00509d0:	7c23      	ldrb	r3, [r4, #16]
d00509d2:	7c62      	ldrb	r2, [r4, #17]
d00509d4:	f644 6184 	movw	r1, #20100	; 0x4e84
d00509d8:	7ca5      	ldrb	r5, [r4, #18]
d00509da:	4630      	mov	r0, r6
d00509dc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00509e0:	7ce2      	ldrb	r2, [r4, #19]
d00509e2:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00509e6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00509ea:	689b      	ldr	r3, [r3, #8]
d00509ec:	691b      	ldr	r3, [r3, #16]
d00509ee:	4798      	blx	r3
d00509f0:	7c23      	ldrb	r3, [r4, #16]
d00509f2:	7c62      	ldrb	r2, [r4, #17]
d00509f4:	f44f 71dc 	mov.w	r1, #440	; 0x1b8
d00509f8:	7ca5      	ldrb	r5, [r4, #18]
d00509fa:	4630      	mov	r0, r6
d00509fc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050a00:	7ce2      	ldrb	r2, [r4, #19]
d0050a02:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0050a06:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050a0a:	689b      	ldr	r3, [r3, #8]
d0050a0c:	695b      	ldr	r3, [r3, #20]
d0050a0e:	4798      	blx	r3
d0050a10:	7c23      	ldrb	r3, [r4, #16]
d0050a12:	7c62      	ldrb	r2, [r4, #17]
d0050a14:	f06f 013f 	mvn.w	r1, #63	; 0x3f
d0050a18:	7ca5      	ldrb	r5, [r4, #18]
d0050a1a:	4630      	mov	r0, r6
d0050a1c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050a20:	7ce2      	ldrb	r2, [r4, #19]
d0050a22:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0050a26:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050a2a:	689b      	ldr	r3, [r3, #8]
d0050a2c:	699b      	ldr	r3, [r3, #24]
d0050a2e:	4798      	blx	r3
d0050a30:	7c23      	ldrb	r3, [r4, #16]
d0050a32:	7c62      	ldrb	r2, [r4, #17]
d0050a34:	4631      	mov	r1, r6
d0050a36:	7ca5      	ldrb	r5, [r4, #18]
d0050a38:	4630      	mov	r0, r6
d0050a3a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050a3e:	7ce2      	ldrb	r2, [r4, #19]
d0050a40:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0050a44:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050a48:	689b      	ldr	r3, [r3, #8]
d0050a4a:	6a1b      	ldr	r3, [r3, #32]
d0050a4c:	4798      	blx	r3
d0050a4e:	f509 7128 	add.w	r1, r9, #672	; 0x2a0
d0050a52:	4838      	ldr	r0, [pc, #224]	; (d0050b34 <main+0x340>)
d0050a54:	f7ff fb64 	bl	d0050120 <LoadSFX>
d0050a58:	7c21      	ldrb	r1, [r4, #16]
d0050a5a:	7c65      	ldrb	r5, [r4, #17]
d0050a5c:	4602      	mov	r2, r0
d0050a5e:	f894 c012 	ldrb.w	ip, [r4, #18]
d0050a62:	4633      	mov	r3, r6
d0050a64:	ea41 2505 	orr.w	r5, r1, r5, lsl #8
d0050a68:	7ce0      	ldrb	r0, [r4, #19]
d0050a6a:	f8d9 12a0 	ldr.w	r1, [r9, #672]	; 0x2a0
d0050a6e:	ea45 450c 	orr.w	r5, r5, ip, lsl #16
d0050a72:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d0050a76:	2001      	movs	r0, #1
d0050a78:	68ad      	ldr	r5, [r5, #8]
d0050a7a:	68ed      	ldr	r5, [r5, #12]
d0050a7c:	47a8      	blx	r5
d0050a7e:	7c23      	ldrb	r3, [r4, #16]
d0050a80:	7c62      	ldrb	r2, [r4, #17]
d0050a82:	f244 21cc 	movw	r1, #17100	; 0x42cc
d0050a86:	7ca0      	ldrb	r0, [r4, #18]
d0050a88:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050a8c:	7ce2      	ldrb	r2, [r4, #19]
d0050a8e:	4d2a      	ldr	r5, [pc, #168]	; (d0050b38 <main+0x344>)
d0050a90:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0050a94:	2001      	movs	r0, #1
d0050a96:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050a9a:	689b      	ldr	r3, [r3, #8]
d0050a9c:	691b      	ldr	r3, [r3, #16]
d0050a9e:	4798      	blx	r3
d0050aa0:	7c23      	ldrb	r3, [r4, #16]
d0050aa2:	7c62      	ldrb	r2, [r4, #17]
d0050aa4:	f44f 71dc 	mov.w	r1, #440	; 0x1b8
d0050aa8:	2001      	movs	r0, #1
d0050aaa:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050aae:	7ca2      	ldrb	r2, [r4, #18]
d0050ab0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0050ab4:	7ce2      	ldrb	r2, [r4, #19]
d0050ab6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050aba:	689b      	ldr	r3, [r3, #8]
d0050abc:	695b      	ldr	r3, [r3, #20]
d0050abe:	4798      	blx	r3
d0050ac0:	7c23      	ldrb	r3, [r4, #16]
d0050ac2:	7c62      	ldrb	r2, [r4, #17]
d0050ac4:	2140      	movs	r1, #64	; 0x40
d0050ac6:	2001      	movs	r0, #1
d0050ac8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050acc:	7ca2      	ldrb	r2, [r4, #18]
d0050ace:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0050ad2:	7ce2      	ldrb	r2, [r4, #19]
d0050ad4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050ad8:	689b      	ldr	r3, [r3, #8]
d0050ada:	699b      	ldr	r3, [r3, #24]
d0050adc:	4798      	blx	r3
d0050ade:	7c23      	ldrb	r3, [r4, #16]
d0050ae0:	7c62      	ldrb	r2, [r4, #17]
d0050ae2:	4631      	mov	r1, r6
d0050ae4:	2001      	movs	r0, #1
d0050ae6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050aea:	7ca2      	ldrb	r2, [r4, #18]
d0050aec:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0050af0:	7ce2      	ldrb	r2, [r4, #19]
d0050af2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050af6:	689b      	ldr	r3, [r3, #8]
d0050af8:	6a1b      	ldr	r3, [r3, #32]
d0050afa:	4798      	blx	r3
d0050afc:	2313      	movs	r3, #19
d0050afe:	2012      	movs	r0, #18
d0050b00:	2215      	movs	r2, #21
d0050b02:	702b      	strb	r3, [r5, #0]
d0050b04:	2317      	movs	r3, #23
d0050b06:	4d0d      	ldr	r5, [pc, #52]	; (d0050b3c <main+0x348>)
d0050b08:	eddd 8a06 	vldr	s17, [sp, #24]
d0050b0c:	7028      	strb	r0, [r5, #0]
d0050b0e:	e01b      	b.n	d0050b48 <main+0x354>
d0050b10:	2001f000 	.word	0x2001f000
d0050b14:	00000000 	.word	0x00000000
d0050b18:	42280000 	.word	0x42280000
d0050b1c:	d005a9d0 	.word	0xd005a9d0
d0050b20:	c3750000 	.word	0xc3750000
d0050b24:	459c4000 	.word	0x459c4000
d0050b28:	3c23d70a 	.word	0x3c23d70a
d0050b2c:	42480000 	.word	0x42480000
d0050b30:	d005a9dc 	.word	0xd005a9dc
d0050b34:	d005a9ec 	.word	0xd005a9ec
d0050b38:	d00f5a61 	.word	0xd00f5a61
d0050b3c:	d00f5a20 	.word	0xd00f5a20
d0050b40:	d005aa64 	.word	0xd005aa64
d0050b44:	d005b208 	.word	0xd005b208
d0050b48:	4dd2      	ldr	r5, [pc, #840]	; (d0050e94 <main+0x6a0>)
d0050b4a:	ee18 1a90 	vmov	r1, s17
d0050b4e:	ed9f 0ad2 	vldr	s0, [pc, #840]	; d0050e98 <main+0x6a4>
d0050b52:	702a      	strb	r2, [r5, #0]
d0050b54:	4ad1      	ldr	r2, [pc, #836]	; (d0050e9c <main+0x6a8>)
d0050b56:	48d2      	ldr	r0, [pc, #840]	; (d0050ea0 <main+0x6ac>)
d0050b58:	7013      	strb	r3, [r2, #0]
d0050b5a:	f007 ff53 	bl	d0058a04 <loadMeshSB3D>
d0050b5e:	eeb0 1a48 	vmov.f32	s2, s16
d0050b62:	eef0 0a48 	vmov.f32	s1, s16
d0050b66:	eeb0 0a48 	vmov.f32	s0, s16
d0050b6a:	f003 fb33 	bl	d00541d4 <vec3>
d0050b6e:	ee18 0a90 	vmov	r0, s17
d0050b72:	edcd 0a35 	vstr	s1, [sp, #212]	; 0xd4
d0050b76:	ed8d 0a34 	vstr	s0, [sp, #208]	; 0xd0
d0050b7a:	ed8d 1a36 	vstr	s2, [sp, #216]	; 0xd8
d0050b7e:	f004 fbe3 	bl	d0055348 <entityWorldSpawn>
d0050b82:	2101      	movs	r1, #1
d0050b84:	eddf 8ac7 	vldr	s17, [pc, #796]	; d0050ea4 <main+0x6b0>
d0050b88:	f005 f838 	bl	d0055bfc <entityAllowHit>
d0050b8c:	eeb2 1a04 	vmov.f32	s2, #36	; 0x41200000  10.0
d0050b90:	ed9d ba07 	vldr	s22, [sp, #28]
d0050b94:	eef0 0a41 	vmov.f32	s1, s2
d0050b98:	ee1b 0a10 	vmov	r0, s22
d0050b9c:	eeb0 0a41 	vmov.f32	s0, s2
d0050ba0:	f004 fd6a 	bl	d0055678 <createBox>
d0050ba4:	eef0 0a48 	vmov.f32	s1, s16
d0050ba8:	eeb0 1a48 	vmov.f32	s2, s16
d0050bac:	ee1b 0a10 	vmov	r0, s22
d0050bb0:	eeb0 0a48 	vmov.f32	s0, s16
d0050bb4:	ed8d 8a22 	vstr	s16, [sp, #136]	; 0x88
d0050bb8:	ed8d 8a23 	vstr	s16, [sp, #140]	; 0x8c
d0050bbc:	ed8d 8a24 	vstr	s16, [sp, #144]	; 0x90
d0050bc0:	f004 fbc2 	bl	d0055348 <entityWorldSpawn>
d0050bc4:	eddd aa08 	vldr	s21, [sp, #32]
d0050bc8:	4603      	mov	r3, r0
d0050bca:	ed9f 0ab7 	vldr	s0, [pc, #732]	; d0050ea8 <main+0x6b4>
d0050bce:	ee1a 1a90 	vmov	r1, s21
d0050bd2:	48b6      	ldr	r0, [pc, #728]	; (d0050eac <main+0x6b8>)
d0050bd4:	ee0d 3a10 	vmov	s26, r3
d0050bd8:	f007 ff14 	bl	d0058a04 <loadMeshSB3D>
d0050bdc:	eef0 0a48 	vmov.f32	s1, s16
d0050be0:	ed9f 1ab3 	vldr	s2, [pc, #716]	; d0050eb0 <main+0x6bc>
d0050be4:	ed9f 0ab3 	vldr	s0, [pc, #716]	; d0050eb4 <main+0x6c0>
d0050be8:	f003 faf4 	bl	d00541d4 <vec3>
d0050bec:	ee1a 0a90 	vmov	r0, s21
d0050bf0:	edcd 0a38 	vstr	s1, [sp, #224]	; 0xe0
d0050bf4:	ed8d 1a39 	vstr	s2, [sp, #228]	; 0xe4
d0050bf8:	ed8d 0a37 	vstr	s0, [sp, #220]	; 0xdc
d0050bfc:	f004 fba4 	bl	d0055348 <entityWorldSpawn>
d0050c00:	4603      	mov	r3, r0
d0050c02:	eeb2 0a04 	vmov.f32	s0, #36	; 0x41200000  10.0
d0050c06:	4651      	mov	r1, sl
d0050c08:	48ab      	ldr	r0, [pc, #684]	; (d0050eb8 <main+0x6c4>)
d0050c0a:	ee0e 3a10 	vmov	s28, r3
d0050c0e:	f007 fef9 	bl	d0058a04 <loadMeshSB3D>
d0050c12:	9d09      	ldr	r5, [sp, #36]	; 0x24
d0050c14:	4651      	mov	r1, sl
d0050c16:	4628      	mov	r0, r5
d0050c18:	f004 feae 	bl	d0055978 <copyMesh>
d0050c1c:	ed9f 1aa7 	vldr	s2, [pc, #668]	; d0050ebc <main+0x6c8>
d0050c20:	eddf 0aa1 	vldr	s1, [pc, #644]	; d0050ea8 <main+0x6b4>
d0050c24:	ed9f 0aa6 	vldr	s0, [pc, #664]	; d0050ec0 <main+0x6cc>
d0050c28:	f003 fad4 	bl	d00541d4 <vec3>
d0050c2c:	4628      	mov	r0, r5
d0050c2e:	ed8d 0a3a 	vstr	s0, [sp, #232]	; 0xe8
d0050c32:	edcd 0a3b 	vstr	s1, [sp, #236]	; 0xec
d0050c36:	ed8d 1a3c 	vstr	s2, [sp, #240]	; 0xf0
d0050c3a:	f004 fb85 	bl	d0055348 <entityWorldSpawn>
d0050c3e:	eeb0 1a48 	vmov.f32	s2, s16
d0050c42:	ee0d 0a90 	vmov	s27, r0
d0050c46:	eef0 0a48 	vmov.f32	s1, s16
d0050c4a:	eeb0 0a48 	vmov.f32	s0, s16
d0050c4e:	f003 fac1 	bl	d00541d4 <vec3>
d0050c52:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d0050c56:	2001      	movs	r0, #1
d0050c58:	edcd 0a3e 	vstr	s1, [sp, #248]	; 0xf8
d0050c5c:	ed8d 0a3d 	vstr	s0, [sp, #244]	; 0xf4
d0050c60:	ed8d 1a3f 	vstr	s2, [sp, #252]	; 0xfc
d0050c64:	f005 fa4e 	bl	d0056104 <addPointLight>
d0050c68:	b2c3      	uxtb	r3, r0
d0050c6a:	ed9f 1a96 	vldr	s2, [pc, #600]	; d0050ec4 <main+0x6d0>
d0050c6e:	eddf 0a96 	vldr	s1, [pc, #600]	; d0050ec8 <main+0x6d4>
d0050c72:	ed9f 0a96 	vldr	s0, [pc, #600]	; d0050ecc <main+0x6d8>
d0050c76:	4618      	mov	r0, r3
d0050c78:	ee0f 3a10 	vmov	s30, r3
d0050c7c:	f005 fa10 	bl	d00560a0 <lightSetRanges>
d0050c80:	4651      	mov	r1, sl
d0050c82:	a80a      	add	r0, sp, #40	; 0x28
d0050c84:	f004 fe78 	bl	d0055978 <copyMesh>
d0050c88:	2364      	movs	r3, #100	; 0x64
d0050c8a:	eb09 1586 	add.w	r5, r9, r6, lsl #6
d0050c8e:	3601      	adds	r6, #1
d0050c90:	f10d 0c28 	add.w	ip, sp, #40	; 0x28
d0050c94:	eef0 0a69 	vmov.f32	s1, s19
d0050c98:	fb03 f306 	mul.w	r3, r3, r6
d0050c9c:	eeb0 0a49 	vmov.f32	s0, s18
d0050ca0:	ee01 3a10 	vmov	s2, r3
d0050ca4:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d0050ca8:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0050caa:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d0050cae:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0050cb0:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d0050cb4:	eeb8 1ac1 	vcvt.f32.s32	s2, s2
d0050cb8:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0050cba:	e89c 000f 	ldmia.w	ip, {r0, r1, r2, r3}
d0050cbe:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d0050cc2:	f003 fa87 	bl	d00541d4 <vec3>
d0050cc6:	4658      	mov	r0, fp
d0050cc8:	edcd 0a41 	vstr	s1, [sp, #260]	; 0x104
d0050ccc:	f10b 0b40 	add.w	fp, fp, #64	; 0x40
d0050cd0:	ed8d 1a42 	vstr	s2, [sp, #264]	; 0x108
d0050cd4:	ed8d 0a40 	vstr	s0, [sp, #256]	; 0x100
d0050cd8:	f004 fb36 	bl	d0055348 <entityWorldSpawn>
d0050cdc:	9b05      	ldr	r3, [sp, #20]
d0050cde:	4605      	mov	r5, r0
d0050ce0:	eeb0 0a68 	vmov.f32	s0, s17
d0050ce4:	f843 0b04 	str.w	r0, [r3], #4
d0050ce8:	9305      	str	r3, [sp, #20]
d0050cea:	f003 fa77 	bl	d00541dc <degrees>
d0050cee:	eeb0 1a4a 	vmov.f32	s2, s20
d0050cf2:	4628      	mov	r0, r5
d0050cf4:	2101      	movs	r1, #1
d0050cf6:	eddf 0a76 	vldr	s1, [pc, #472]	; d0050ed0 <main+0x6dc>
d0050cfa:	f004 fcab 	bl	d0055654 <entityRotation>
d0050cfe:	2e03      	cmp	r6, #3
d0050d00:	d1be      	bne.n	d0050c80 <main+0x48c>
d0050d02:	2301      	movs	r3, #1
d0050d04:	f8dd a098 	ldr.w	sl, [sp, #152]	; 0x98
d0050d08:	ed9f 1a63 	vldr	s2, [pc, #396]	; d0050e98 <main+0x6a4>
d0050d0c:	f509 7590 	add.w	r5, r9, #288	; 0x120
d0050d10:	eddf 0a70 	vldr	s1, [pc, #448]	; d0050ed4 <main+0x6e0>
d0050d14:	fa5f f888 	uxtb.w	r8, r8
d0050d18:	ed9f 0a6f 	vldr	s0, [pc, #444]	; d0050ed8 <main+0x6e4>
d0050d1c:	9305      	str	r3, [sp, #20]
d0050d1e:	f003 fa59 	bl	d00541d4 <vec3>
d0050d22:	4650      	mov	r0, sl
d0050d24:	edcd 0a44 	vstr	s1, [sp, #272]	; 0x110
d0050d28:	ed8d 1a45 	vstr	s2, [sp, #276]	; 0x114
d0050d2c:	ed8d 0a43 	vstr	s0, [sp, #268]	; 0x10c
d0050d30:	f004 fb50 	bl	d00553d4 <entitySetPosition>
d0050d34:	4629      	mov	r1, r5
d0050d36:	ed9f 0a5c 	vldr	s0, [pc, #368]	; d0050ea8 <main+0x6b4>
d0050d3a:	4868      	ldr	r0, [pc, #416]	; (d0050edc <main+0x6e8>)
d0050d3c:	f007 fe62 	bl	d0058a04 <loadMeshSB3D>
d0050d40:	ed9f 1a55 	vldr	s2, [pc, #340]	; d0050e98 <main+0x6a4>
d0050d44:	eddf 0a66 	vldr	s1, [pc, #408]	; d0050ee0 <main+0x6ec>
d0050d48:	ed9f 0a66 	vldr	s0, [pc, #408]	; d0050ee4 <main+0x6f0>
d0050d4c:	f003 fa42 	bl	d00541d4 <vec3>
d0050d50:	4628      	mov	r0, r5
d0050d52:	ed8d 0a46 	vstr	s0, [sp, #280]	; 0x118
d0050d56:	edcd 0a47 	vstr	s1, [sp, #284]	; 0x11c
d0050d5a:	ed8d 1a48 	vstr	s2, [sp, #288]	; 0x120
d0050d5e:	f004 faf3 	bl	d0055348 <entityWorldSpawn>
d0050d62:	ed9f 1a5b 	vldr	s2, [pc, #364]	; d0050ed0 <main+0x6dc>
d0050d66:	4603      	mov	r3, r0
d0050d68:	eef7 1a08 	vmov.f32	s3, #120	; 0x3fc00000  1.5
d0050d6c:	ed9f 2a5e 	vldr	s4, [pc, #376]	; d0050ee8 <main+0x6f4>
d0050d70:	eeb0 0a41 	vmov.f32	s0, s2
d0050d74:	4628      	mov	r0, r5
d0050d76:	eddf 0a5d 	vldr	s1, [pc, #372]	; d0050eec <main+0x6f8>
d0050d7a:	ee0e 3a90 	vmov	s29, r3
d0050d7e:	f000 fc8f 	bl	d00516a0 <meshSetMaterial>
d0050d82:	2301      	movs	r3, #1
d0050d84:	2216      	movs	r2, #22
d0050d86:	495a      	ldr	r1, [pc, #360]	; (d0050ef0 <main+0x6fc>)
d0050d88:	a867      	add	r0, sp, #412	; 0x19c
d0050d8a:	ed9f 0a5a 	vldr	s0, [pc, #360]	; d0050ef4 <main+0x700>
d0050d8e:	f7ff fab3 	bl	d00502f8 <splineRailInit>
d0050d92:	a867      	add	r0, sp, #412	; 0x19c
d0050d94:	ed9f 1a58 	vldr	s2, [pc, #352]	; d0050ef8 <main+0x704>
d0050d98:	eddf 0a58 	vldr	s1, [pc, #352]	; d0050efc <main+0x708>
d0050d9c:	ed9f 0a58 	vldr	s0, [pc, #352]	; d0050f00 <main+0x70c>
d0050da0:	f7ff fad8 	bl	d0050354 <splineRailSetTuning>
d0050da4:	eef7 0a08 	vmov.f32	s1, #120	; 0x3fc00000  1.5
d0050da8:	eeb0 0a00 	vmov.f32	s0, #0	; 0x40000000  2.0
d0050dac:	ed9f 1a55 	vldr	s2, [pc, #340]	; d0050f04 <main+0x710>
d0050db0:	a867      	add	r0, sp, #412	; 0x19c
d0050db2:	4d55      	ldr	r5, [pc, #340]	; (d0050f08 <main+0x714>)
d0050db4:	f7ff fad6 	bl	d0050364 <splineRailSetBanking>
d0050db8:	2000      	movs	r0, #0
d0050dba:	f005 fa49 	bl	d0056250 <enableFlatMode>
d0050dbe:	7b23      	ldrb	r3, [r4, #12]
d0050dc0:	7b62      	ldrb	r2, [r4, #13]
d0050dc2:	7ba1      	ldrb	r1, [r4, #14]
d0050dc4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050dc8:	7be2      	ldrb	r2, [r4, #15]
d0050dca:	6828      	ldr	r0, [r5, #0]
d0050dcc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0050dd0:	ed9f 9a4e 	vldr	s18, [pc, #312]	; d0050f0c <main+0x718>
d0050dd4:	eddf 9a3d 	vldr	s19, [pc, #244]	; d0050ecc <main+0x6d8>
d0050dd8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050ddc:	ed9f aa4c 	vldr	s20, [pc, #304]	; d0050f10 <main+0x71c>
d0050de0:	eddf 8a3b 	vldr	s17, [pc, #236]	; d0050ed0 <main+0x6dc>
d0050de4:	681b      	ldr	r3, [r3, #0]
d0050de6:	69db      	ldr	r3, [r3, #28]
d0050de8:	4798      	blx	r3
d0050dea:	7b23      	ldrb	r3, [r4, #12]
d0050dec:	7b62      	ldrb	r2, [r4, #13]
d0050dee:	7ba1      	ldrb	r1, [r4, #14]
d0050df0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050df4:	7be2      	ldrb	r2, [r4, #15]
d0050df6:	6828      	ldr	r0, [r5, #0]
d0050df8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0050dfc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050e00:	681b      	ldr	r3, [r3, #0]
d0050e02:	699b      	ldr	r3, [r3, #24]
d0050e04:	4798      	blx	r3
d0050e06:	7b23      	ldrb	r3, [r4, #12]
d0050e08:	7b62      	ldrb	r2, [r4, #13]
d0050e0a:	2001      	movs	r0, #1
d0050e0c:	7ba1      	ldrb	r1, [r4, #14]
d0050e0e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050e12:	7be2      	ldrb	r2, [r4, #15]
d0050e14:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0050e18:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050e1c:	685b      	ldr	r3, [r3, #4]
d0050e1e:	68db      	ldr	r3, [r3, #12]
d0050e20:	4798      	blx	r3
d0050e22:	7b23      	ldrb	r3, [r4, #12]
d0050e24:	7b62      	ldrb	r2, [r4, #13]
d0050e26:	211e      	movs	r1, #30
d0050e28:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050e2c:	7ba2      	ldrb	r2, [r4, #14]
d0050e2e:	4608      	mov	r0, r1
d0050e30:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0050e34:	7be2      	ldrb	r2, [r4, #15]
d0050e36:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050e3a:	685b      	ldr	r3, [r3, #4]
d0050e3c:	689b      	ldr	r3, [r3, #8]
d0050e3e:	4798      	blx	r3
d0050e40:	7823      	ldrb	r3, [r4, #0]
d0050e42:	7862      	ldrb	r2, [r4, #1]
d0050e44:	a91c      	add	r1, sp, #112	; 0x70
d0050e46:	a81b      	add	r0, sp, #108	; 0x6c
d0050e48:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050e4c:	78a2      	ldrb	r2, [r4, #2]
d0050e4e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0050e52:	78e2      	ldrb	r2, [r4, #3]
d0050e54:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050e58:	691b      	ldr	r3, [r3, #16]
d0050e5a:	4798      	blx	r3
d0050e5c:	7823      	ldrb	r3, [r4, #0]
d0050e5e:	7862      	ldrb	r2, [r4, #1]
d0050e60:	78a1      	ldrb	r1, [r4, #2]
d0050e62:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050e66:	78e2      	ldrb	r2, [r4, #3]
d0050e68:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0050e6c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050e70:	69db      	ldr	r3, [r3, #28]
d0050e72:	4798      	blx	r3
d0050e74:	7823      	ldrb	r3, [r4, #0]
d0050e76:	7862      	ldrb	r2, [r4, #1]
d0050e78:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050e7c:	78a2      	ldrb	r2, [r4, #2]
d0050e7e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0050e82:	78e2      	ldrb	r2, [r4, #3]
d0050e84:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050e88:	689b      	ldr	r3, [r3, #8]
d0050e8a:	4798      	blx	r3
d0050e8c:	f8cd 9018 	str.w	r9, [sp, #24]
d0050e90:	4605      	mov	r5, r0
d0050e92:	e129      	b.n	d00510e8 <main+0x8f4>
d0050e94:	d00f5a62 	.word	0xd00f5a62
d0050e98:	43480000 	.word	0x43480000
d0050e9c:	d00f5a60 	.word	0xd00f5a60
d0050ea0:	d005a9fc 	.word	0xd005a9fc
d0050ea4:	42b40000 	.word	0x42b40000
d0050ea8:	42480000 	.word	0x42480000
d0050eac:	d005aa0c 	.word	0xd005aa0c
d0050eb0:	c2c80000 	.word	0xc2c80000
d0050eb4:	44f3c000 	.word	0x44f3c000
d0050eb8:	d005aa1c 	.word	0xd005aa1c
d0050ebc:	c3480000 	.word	0xc3480000
d0050ec0:	c3070000 	.word	0xc3070000
d0050ec4:	44048000 	.word	0x44048000
d0050ec8:	43a00000 	.word	0x43a00000
d0050ecc:	42c80000 	.word	0x42c80000
d0050ed0:	00000000 	.word	0x00000000
d0050ed4:	42a40000 	.word	0x42a40000
d0050ed8:	c3750000 	.word	0xc3750000
d0050edc:	d005aa28 	.word	0xd005aa28
d0050ee0:	43af0000 	.word	0x43af0000
d0050ee4:	44fa0000 	.word	0x44fa0000
d0050ee8:	42800000 	.word	0x42800000
d0050eec:	3f0ccccd 	.word	0x3f0ccccd
d0050ef0:	d005aac4 	.word	0xd005aac4
d0050ef4:	43340000 	.word	0x43340000
d0050ef8:	402ccccd 	.word	0x402ccccd
d0050efc:	3fe66666 	.word	0x3fe66666
d0050f00:	3fb33333 	.word	0x3fb33333
d0050f04:	3f59999a 	.word	0x3f59999a
d0050f08:	d00f5aa0 	.word	0xd00f5aa0
d0050f0c:	3b83126f 	.word	0x3b83126f
d0050f10:	4d7bc521 	.word	0x4d7bc521
d0050f14:	9b05      	ldr	r3, [sp, #20]
d0050f16:	ee1a 7a90 	vmov	r7, s21
d0050f1a:	2b00      	cmp	r3, #0
d0050f1c:	f040 8331 	bne.w	d0051582 <main+0xd8e>
d0050f20:	9b08      	ldr	r3, [sp, #32]
d0050f22:	eeb0 0a68 	vmov.f32	s0, s17
d0050f26:	2b00      	cmp	r3, #0
d0050f28:	f000 82fa 	beq.w	d0051520 <main+0xd2c>
d0050f2c:	49c5      	ldr	r1, [pc, #788]	; (d0051244 <main+0xa50>)
d0050f2e:	2305      	movs	r3, #5
d0050f30:	2215      	movs	r2, #21
d0050f32:	ee1a 0a90 	vmov	r0, s21
d0050f36:	7809      	ldrb	r1, [r1, #0]
d0050f38:	f006 f852 	bl	d0056fe0 <drawFakeHorizon>
d0050f3c:	49c2      	ldr	r1, [pc, #776]	; (d0051248 <main+0xa54>)
d0050f3e:	780b      	ldrb	r3, [r1, #0]
d0050f40:	2b00      	cmp	r3, #0
d0050f42:	f040 836b 	bne.w	d005161c <main+0xe28>
d0050f46:	48c1      	ldr	r0, [pc, #772]	; (d005124c <main+0xa58>)
d0050f48:	2205      	movs	r2, #5
d0050f4a:	7803      	ldrb	r3, [r0, #0]
d0050f4c:	700a      	strb	r2, [r1, #0]
d0050f4e:	f1c3 0301 	rsb	r3, r3, #1
d0050f52:	49bf      	ldr	r1, [pc, #764]	; (d0051250 <main+0xa5c>)
d0050f54:	b2db      	uxtb	r3, r3
d0050f56:	5cca      	ldrb	r2, [r1, r3]
d0050f58:	7003      	strb	r3, [r0, #0]
d0050f5a:	b922      	cbnz	r2, d0050f66 <main+0x772>
d0050f5c:	2278      	movs	r2, #120	; 0x78
d0050f5e:	54cd      	strb	r5, [r1, r3]
d0050f60:	49bc      	ldr	r1, [pc, #752]	; (d0051254 <main+0xa60>)
d0050f62:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
d0050f66:	49bc      	ldr	r1, [pc, #752]	; (d0051258 <main+0xa64>)
d0050f68:	eeb0 0a68 	vmov.f32	s0, s17
d0050f6c:	236e      	movs	r3, #110	; 0x6e
d0050f6e:	2280      	movs	r2, #128	; 0x80
d0050f70:	7809      	ldrb	r1, [r1, #0]
d0050f72:	4638      	mov	r0, r7
d0050f74:	f005 ff1c 	bl	d0056db0 <drawFakeHorizonDots>
d0050f78:	7820      	ldrb	r0, [r4, #0]
d0050f7a:	7861      	ldrb	r1, [r4, #1]
d0050f7c:	78a2      	ldrb	r2, [r4, #2]
d0050f7e:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0050f82:	78e3      	ldrb	r3, [r4, #3]
d0050f84:	4db5      	ldr	r5, [pc, #724]	; (d005125c <main+0xa68>)
d0050f86:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0050f8a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0050f8e:	689b      	ldr	r3, [r3, #8]
d0050f90:	4798      	blx	r3
d0050f92:	4603      	mov	r3, r0
d0050f94:	4638      	mov	r0, r7
d0050f96:	602b      	str	r3, [r5, #0]
d0050f98:	f006 ffea 	bl	d0057f70 <Render3D>
d0050f9c:	7820      	ldrb	r0, [r4, #0]
d0050f9e:	7861      	ldrb	r1, [r4, #1]
d0050fa0:	78a2      	ldrb	r2, [r4, #2]
d0050fa2:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0050fa6:	78e3      	ldrb	r3, [r4, #3]
d0050fa8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0050fac:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0050fb0:	689b      	ldr	r3, [r3, #8]
d0050fb2:	4798      	blx	r3
d0050fb4:	49aa      	ldr	r1, [pc, #680]	; (d0051260 <main+0xa6c>)
d0050fb6:	eef5 7a00 	vmov.f32	s15, #80	; 0x3e800000  0.250
d0050fba:	682a      	ldr	r2, [r5, #0]
d0050fbc:	ed91 7a00 	vldr	s14, [r1]
d0050fc0:	4da8      	ldr	r5, [pc, #672]	; (d0051264 <main+0xa70>)
d0050fc2:	1a80      	subs	r0, r0, r2
d0050fc4:	ee38 8a07 	vadd.f32	s16, s16, s14
d0050fc8:	4aa7      	ldr	r2, [pc, #668]	; (d0051268 <main+0xa74>)
d0050fca:	682b      	ldr	r3, [r5, #0]
d0050fcc:	6010      	str	r0, [r2, #0]
d0050fce:	eeb4 8ae7 	vcmpe.f32	s16, s15
d0050fd2:	3301      	adds	r3, #1
d0050fd4:	ed81 8a00 	vstr	s16, [r1]
d0050fd8:	602b      	str	r3, [r5, #0]
d0050fda:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050fde:	db24      	blt.n	d005102a <main+0x836>
d0050fe0:	eddf 7aa2 	vldr	s15, [pc, #648]	; d005126c <main+0xa78>
d0050fe4:	eeb4 8ae7 	vcmpe.f32	s16, s15
d0050fe8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050fec:	f340 830b 	ble.w	d0051606 <main+0xe12>
d0050ff0:	ee07 3a90 	vmov	s15, r3
d0050ff4:	4b9e      	ldr	r3, [pc, #632]	; (d0051270 <main+0xa7c>)
d0050ff6:	2164      	movs	r1, #100	; 0x64
d0050ff8:	eef8 7a67 	vcvt.f32.u32	s15, s15
d0050ffc:	ee67 7aa9 	vmul.f32	s15, s15, s19
d0051000:	ee87 7a88 	vdiv.f32	s14, s15, s16
d0051004:	eefc 7ac7 	vcvt.u32.f32	s15, s14
d0051008:	ee17 2a90 	vmov	r2, s15
d005100c:	fba3 0302 	umull	r0, r3, r3, r2
d0051010:	095b      	lsrs	r3, r3, #5
d0051012:	fb01 2213 	mls	r2, r1, r3, r2
d0051016:	4997      	ldr	r1, [pc, #604]	; (d0051274 <main+0xa80>)
d0051018:	600b      	str	r3, [r1, #0]
d005101a:	4b97      	ldr	r3, [pc, #604]	; (d0051278 <main+0xa84>)
d005101c:	601a      	str	r2, [r3, #0]
d005101e:	2200      	movs	r2, #0
d0051020:	4b90      	ldr	r3, [pc, #576]	; (d0051264 <main+0xa70>)
d0051022:	601a      	str	r2, [r3, #0]
d0051024:	4b8e      	ldr	r3, [pc, #568]	; (d0051260 <main+0xa6c>)
d0051026:	edc3 8a00 	vstr	s17, [r3]
d005102a:	a867      	add	r0, sp, #412	; 0x19c
d005102c:	f44f 757a 	mov.w	r5, #1000	; 0x3e8
d0051030:	f7ff f9a0 	bl	d0050374 <splineRailGetCurrentNode>
d0051034:	4b8c      	ldr	r3, [pc, #560]	; (d0051268 <main+0xa74>)
d0051036:	b2c6      	uxtb	r6, r0
d0051038:	f8d3 9000 	ldr.w	r9, [r3]
d005103c:	4b8d      	ldr	r3, [pc, #564]	; (d0051274 <main+0xa80>)
d005103e:	681a      	ldr	r2, [r3, #0]
d0051040:	4b8d      	ldr	r3, [pc, #564]	; (d0051278 <main+0xa84>)
d0051042:	9209      	str	r2, [sp, #36]	; 0x24
d0051044:	681b      	ldr	r3, [r3, #0]
d0051046:	9308      	str	r3, [sp, #32]
d0051048:	f005 feac 	bl	d0056da4 <getRenderTriCount>
d005104c:	f8df e264 	ldr.w	lr, [pc, #612]	; d00512b4 <main+0xac0>
d0051050:	f8df c264 	ldr.w	ip, [pc, #612]	; d00512b8 <main+0xac4>
d0051054:	fbae 3109 	umull	r3, r1, lr, r9
d0051058:	9a09      	ldr	r2, [sp, #36]	; 0x24
d005105a:	9b08      	ldr	r3, [sp, #32]
d005105c:	ea4f 4b51 	mov.w	fp, r1, lsr #17
d0051060:	9003      	str	r0, [sp, #12]
d0051062:	4986      	ldr	r1, [pc, #536]	; (d005127c <main+0xa88>)
d0051064:	fb0c 9c1b 	mls	ip, ip, fp, r9
d0051068:	4885      	ldr	r0, [pc, #532]	; (d0051280 <main+0xa8c>)
d005106a:	9602      	str	r6, [sp, #8]
d005106c:	fb05 f50c 	mul.w	r5, r5, ip
d0051070:	f8cd b000 	str.w	fp, [sp]
d0051074:	fbae c505 	umull	ip, r5, lr, r5
d0051078:	0c6d      	lsrs	r5, r5, #17
d005107a:	9501      	str	r5, [sp, #4]
d005107c:	f008 fa58 	bl	d0059530 <siprintf>
d0051080:	4b80      	ldr	r3, [pc, #512]	; (d0051284 <main+0xa90>)
d0051082:	781b      	ldrb	r3, [r3, #0]
d0051084:	42b3      	cmp	r3, r6
d0051086:	d002      	beq.n	d005108e <main+0x89a>
d0051088:	2e14      	cmp	r6, #20
d005108a:	f000 82bf 	beq.w	d005160c <main+0xe18>
d005108e:	7b23      	ldrb	r3, [r4, #12]
d0051090:	2100      	movs	r1, #0
d0051092:	f894 c00d 	ldrb.w	ip, [r4, #13]
d0051096:	7ba5      	ldrb	r5, [r4, #14]
d0051098:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d005109c:	4879      	ldr	r0, [pc, #484]	; (d0051284 <main+0xa90>)
d005109e:	4a78      	ldr	r2, [pc, #480]	; (d0051280 <main+0xa8c>)
d00510a0:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00510a4:	7be5      	ldrb	r5, [r4, #15]
d00510a6:	7006      	strb	r6, [r0, #0]
d00510a8:	4608      	mov	r0, r1
d00510aa:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d00510ae:	685b      	ldr	r3, [r3, #4]
d00510b0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d00510b2:	4798      	blx	r3
d00510b4:	7b20      	ldrb	r0, [r4, #12]
d00510b6:	7b61      	ldrb	r1, [r4, #13]
d00510b8:	7ba2      	ldrb	r2, [r4, #14]
d00510ba:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00510be:	7be3      	ldrb	r3, [r4, #15]
d00510c0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00510c4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00510c8:	681b      	ldr	r3, [r3, #0]
d00510ca:	681b      	ldr	r3, [r3, #0]
d00510cc:	4798      	blx	r3
d00510ce:	eddf 7a6e 	vldr	s15, [pc, #440]	; d0051288 <main+0xa94>
d00510d2:	eeb4 9ae7 	vcmpe.f32	s18, s15
d00510d6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00510da:	f300 81ea 	bgt.w	d00514b2 <main+0xcbe>
d00510de:	eddf 7a6b 	vldr	s15, [pc, #428]	; d005128c <main+0xa98>
d00510e2:	ee39 9a27 	vadd.f32	s18, s18, s15
d00510e6:	9d07      	ldr	r5, [sp, #28]
d00510e8:	7b20      	ldrb	r0, [r4, #12]
d00510ea:	ee69 7a29 	vmul.f32	s15, s18, s19
d00510ee:	7b61      	ldrb	r1, [r4, #13]
d00510f0:	7ba2      	ldrb	r2, [r4, #14]
d00510f2:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00510f6:	7be3      	ldrb	r3, [r4, #15]
d00510f8:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00510fc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0051100:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051104:	edcd 7a07 	vstr	s15, [sp, #28]
d0051108:	f89d 001c 	ldrb.w	r0, [sp, #28]
d005110c:	681b      	ldr	r3, [r3, #0]
d005110e:	689b      	ldr	r3, [r3, #8]
d0051110:	4798      	blx	r3
d0051112:	7820      	ldrb	r0, [r4, #0]
d0051114:	7861      	ldrb	r1, [r4, #1]
d0051116:	78a2      	ldrb	r2, [r4, #2]
d0051118:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d005111c:	78e3      	ldrb	r3, [r4, #3]
d005111e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0051122:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051126:	689b      	ldr	r3, [r3, #8]
d0051128:	4798      	blx	r3
d005112a:	1b43      	subs	r3, r0, r5
d005112c:	9007      	str	r0, [sp, #28]
d005112e:	ee08 3a10 	vmov	s16, r3
d0051132:	eeb8 8a48 	vcvt.f32.u32	s16, s16
d0051136:	eeb4 8aca 	vcmpe.f32	s16, s20
d005113a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005113e:	f300 81e2 	bgt.w	d0051506 <main+0xd12>
d0051142:	eddf 7a53 	vldr	s15, [pc, #332]	; d0051290 <main+0xa9c>
d0051146:	eef2 aa04 	vmov.f32	s21, #36	; 0x41200000  10.0
d005114a:	eddf ca52 	vldr	s25, [pc, #328]	; d0051294 <main+0xaa0>
d005114e:	ee28 8a27 	vmul.f32	s16, s16, s15
d0051152:	ed9f ca51 	vldr	s24, [pc, #324]	; d0051298 <main+0xaa4>
d0051156:	eddf 7a51 	vldr	s15, [pc, #324]	; d005129c <main+0xaa8>
d005115a:	eddf ba51 	vldr	s23, [pc, #324]	; d00512a0 <main+0xaac>
d005115e:	ee68 aa2a 	vmul.f32	s21, s16, s21
d0051162:	ed9f ba50 	vldr	s22, [pc, #320]	; d00512a4 <main+0xab0>
d0051166:	ee28 ca0c 	vmul.f32	s24, s16, s24
d005116a:	ee68 ba2b 	vmul.f32	s23, s16, s23
d005116e:	ee6a caac 	vmul.f32	s25, s21, s25
d0051172:	ee28 ba0b 	vmul.f32	s22, s16, s22
d0051176:	ee6a aaa7 	vmul.f32	s21, s21, s15
d005117a:	7820      	ldrb	r0, [r4, #0]
d005117c:	7861      	ldrb	r1, [r4, #1]
d005117e:	78a2      	ldrb	r2, [r4, #2]
d0051180:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0051184:	78e3      	ldrb	r3, [r4, #3]
d0051186:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d005118a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d005118e:	6a1b      	ldr	r3, [r3, #32]
d0051190:	4798      	blx	r3
d0051192:	7826      	ldrb	r6, [r4, #0]
d0051194:	7863      	ldrb	r3, [r4, #1]
d0051196:	a91e      	add	r1, sp, #120	; 0x78
d0051198:	78a2      	ldrb	r2, [r4, #2]
d005119a:	4605      	mov	r5, r0
d005119c:	ea46 2603 	orr.w	r6, r6, r3, lsl #8
d00511a0:	78e3      	ldrb	r3, [r4, #3]
d00511a2:	a81d      	add	r0, sp, #116	; 0x74
d00511a4:	ea46 4202 	orr.w	r2, r6, r2, lsl #16
d00511a8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00511ac:	699b      	ldr	r3, [r3, #24]
d00511ae:	4798      	blx	r3
d00511b0:	9a1d      	ldr	r2, [sp, #116]	; 0x74
d00511b2:	9b1e      	ldr	r3, [sp, #120]	; 0x78
d00511b4:	eef0 0a68 	vmov.f32	s1, s17
d00511b8:	4252      	negs	r2, r2
d00511ba:	ed9f 1a3b 	vldr	s2, [pc, #236]	; d00512a8 <main+0xab4>
d00511be:	425b      	negs	r3, r3
d00511c0:	ed9f 0a3a 	vldr	s0, [pc, #232]	; d00512ac <main+0xab8>
d00511c4:	ee07 2a90 	vmov	s15, r2
d00511c8:	2100      	movs	r1, #0
d00511ca:	4638      	mov	r0, r7
d00511cc:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d00511d0:	ee07 3a90 	vmov	s15, r3
d00511d4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00511d8:	ee27 1a01 	vmul.f32	s2, s14, s2
d00511dc:	ee27 0a80 	vmul.f32	s0, s15, s0
d00511e0:	f003 fbf2 	bl	d00549c8 <cameraTurn>
d00511e4:	9b06      	ldr	r3, [sp, #24]
d00511e6:	eef0 7a04 	vmov.f32	s15, #4	; 0x40200000  2.5
d00511ea:	edd3 0a37 	vldr	s1, [r3, #220]	; 0xdc
d00511ee:	ee60 0aa7 	vmul.f32	s1, s1, s15
d00511f2:	ee60 0a88 	vmul.f32	s1, s1, s16
d00511f6:	eef5 0a40 	vcmp.f32	s1, #0.0
d00511fa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00511fe:	f040 81b5 	bne.w	d005156c <main+0xd78>
d0051202:	eeb0 1a68 	vmov.f32	s2, s17
d0051206:	eddf 0a2a 	vldr	s1, [pc, #168]	; d00512b0 <main+0xabc>
d005120a:	eeb0 0a6c 	vmov.f32	s0, s25
d005120e:	ee1e 0a10 	vmov	r0, s28
d0051212:	f004 f94d 	bl	d00554b0 <entityTurnLocal>
d0051216:	eeb0 0a6a 	vmov.f32	s0, s21
d005121a:	ee1e 0a10 	vmov	r0, s28
d005121e:	f004 f915 	bl	d005544c <entityMoveForward>
d0051222:	eeb0 1a68 	vmov.f32	s2, s17
d0051226:	eddf 0a22 	vldr	s1, [pc, #136]	; d00512b0 <main+0xabc>
d005122a:	eeb0 0a4c 	vmov.f32	s0, s24
d005122e:	ee1e 0a90 	vmov	r0, s29
d0051232:	f004 f93d 	bl	d00554b0 <entityTurnLocal>
d0051236:	eeb0 0a6b 	vmov.f32	s0, s23
d005123a:	ee1d 0a90 	vmov	r0, s27
d005123e:	f004 f905 	bl	d005544c <entityMoveForward>
d0051242:	e043      	b.n	d00512cc <main+0xad8>
d0051244:	d00f5a61 	.word	0xd00f5a61
d0051248:	d005b60c 	.word	0xd005b60c
d005124c:	d005b6c8 	.word	0xd005b6c8
d0051250:	d005b76c 	.word	0xd005b76c
d0051254:	d005b770 	.word	0xd005b770
d0051258:	d00f5a60 	.word	0xd00f5a60
d005125c:	d005b778 	.word	0xd005b778
d0051260:	d005b6e0 	.word	0xd005b6e0
d0051264:	d005b6dc 	.word	0xd005b6dc
d0051268:	d005b77c 	.word	0xd005b77c
d005126c:	3727c5ac 	.word	0x3727c5ac
d0051270:	51eb851f 	.word	0x51eb851f
d0051274:	d005b6e4 	.word	0xd005b6e4
d0051278:	d005b6d8 	.word	0xd005b6d8
d005127c:	d005aa34 	.word	0xd005aa34
d0051280:	d005b614 	.word	0xd005b614
d0051284:	d005b760 	.word	0xd005b760
d0051288:	3f7ef9db 	.word	0x3f7ef9db
d005128c:	3b83126f 	.word	0x3b83126f
d0051290:	310f2a63 	.word	0x310f2a63
d0051294:	bb449ba6 	.word	0xbb449ba6
d0051298:	3f99999a 	.word	0x3f99999a
d005129c:	40d9999a 	.word	0x40d9999a
d00512a0:	43264ccd 	.word	0x43264ccd
d00512a4:	435c0000 	.word	0x435c0000
d00512a8:	3ba3d70a 	.word	0x3ba3d70a
d00512ac:	3c088889 	.word	0x3c088889
d00512b0:	00000000 	.word	0x00000000
d00512b4:	45e7b273 	.word	0x45e7b273
d00512b8:	00075300 	.word	0x00075300
d00512bc:	451c4000 	.word	0x451c4000
d00512c0:	44048000 	.word	0x44048000
d00512c4:	43a00000 	.word	0x43a00000
d00512c8:	497423f0 	.word	0x497423f0
d00512cc:	ee1d 0a90 	vmov	r0, s27
d00512d0:	f004 f89c 	bl	d005540c <entityGetPosition>
d00512d4:	ed5f 7a07 	vldr	s15, [pc, #-28]	; d00512bc <main+0xac8>
d00512d8:	ed8d 0a28 	vstr	s0, [sp, #160]	; 0xa0
d00512dc:	eeb4 1ae7 	vcmpe.f32	s2, s15
d00512e0:	edcd 0a29 	vstr	s1, [sp, #164]	; 0xa4
d00512e4:	ed8d 1a2a 	vstr	s2, [sp, #168]	; 0xa8
d00512e8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00512ec:	f300 812b 	bgt.w	d0051546 <main+0xd52>
d00512f0:	ed9d 0a28 	vldr	s0, [sp, #160]	; 0xa0
d00512f4:	ee1f 0a10 	vmov	r0, s30
d00512f8:	eddd 0a29 	vldr	s1, [sp, #164]	; 0xa4
d00512fc:	ed9d 1a2a 	vldr	s2, [sp, #168]	; 0xa8
d0051300:	f004 ff6c 	bl	d00561dc <lightSetPosition>
d0051304:	9b06      	ldr	r3, [sp, #24]
d0051306:	4640      	mov	r0, r8
d0051308:	ed93 0a30 	vldr	s0, [r3, #192]	; 0xc0
d005130c:	edd3 0a31 	vldr	s1, [r3, #196]	; 0xc4
d0051310:	ed93 1a32 	vldr	s2, [r3, #200]	; 0xc8
d0051314:	f004 ff62 	bl	d00561dc <lightSetPosition>
d0051318:	eeb0 0a00 	vmov.f32	s0, #0	; 0x40000000  2.0
d005131c:	4640      	mov	r0, r8
d005131e:	f004 ff79 	bl	d0056214 <lightSetIntensity>
d0051322:	eeb0 0a69 	vmov.f32	s0, s19
d0051326:	ed1f 1a1a 	vldr	s2, [pc, #-104]	; d00512c0 <main+0xacc>
d005132a:	4640      	mov	r0, r8
d005132c:	ed5f 0a1b 	vldr	s1, [pc, #-108]	; d00512c4 <main+0xad0>
d0051330:	f004 feb6 	bl	d00560a0 <lightSetRanges>
d0051334:	9b05      	ldr	r3, [sp, #20]
d0051336:	2b00      	cmp	r3, #0
d0051338:	f000 80fd 	beq.w	d0051536 <main+0xd42>
d005133c:	2300      	movs	r3, #0
d005133e:	9308      	str	r3, [sp, #32]
d0051340:	7820      	ldrb	r0, [r4, #0]
d0051342:	7861      	ldrb	r1, [r4, #1]
d0051344:	78a2      	ldrb	r2, [r4, #2]
d0051346:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d005134a:	78e3      	ldrb	r3, [r4, #3]
d005134c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0051350:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051354:	69db      	ldr	r3, [r3, #28]
d0051356:	4798      	blx	r3
d0051358:	07ea      	lsls	r2, r5, #31
d005135a:	f100 814a 	bmi.w	d00515f2 <main+0xdfe>
d005135e:	07ab      	lsls	r3, r5, #30
d0051360:	f100 813d 	bmi.w	d00515de <main+0xdea>
d0051364:	f005 0503 	and.w	r5, r5, #3
d0051368:	2d03      	cmp	r5, #3
d005136a:	d102      	bne.n	d0051372 <main+0xb7e>
d005136c:	9b06      	ldr	r3, [sp, #24]
d005136e:	edc3 8a37 	vstr	s17, [r3, #220]	; 0xdc
d0051372:	ed1f 1a2b 	vldr	s2, [pc, #-172]	; d00512c8 <main+0xad4>
d0051376:	eeb0 0a41 	vmov.f32	s0, s2
d005137a:	eef0 0a41 	vmov.f32	s1, s2
d005137e:	f002 ff29 	bl	d00541d4 <vec3>
d0051382:	ee1d 0a10 	vmov	r0, s26
d0051386:	ed8d 0a4c 	vstr	s0, [sp, #304]	; 0x130
d005138a:	edcd 0a4d 	vstr	s1, [sp, #308]	; 0x134
d005138e:	ed8d 1a4e 	vstr	s2, [sp, #312]	; 0x138
d0051392:	f004 f81f 	bl	d00553d4 <entitySetPosition>
d0051396:	49a6      	ldr	r1, [pc, #664]	; (d0051630 <main+0xe3c>)
d0051398:	4638      	mov	r0, r7
d005139a:	ed9f 0aa6 	vldr	s0, [pc, #664]	; d0051634 <main+0xe40>
d005139e:	f007 fb1b 	bl	d00589d8 <sb3dRaycastFromCamera>
d00513a2:	2800      	cmp	r0, #0
d00513a4:	f040 8102 	bne.w	d00515ac <main+0xdb8>
d00513a8:	2200      	movs	r2, #0
d00513aa:	ee1d 1a10 	vmov	r1, s26
d00513ae:	4650      	mov	r0, sl
d00513b0:	f004 fb72 	bl	d0055a98 <entityLookAt>
d00513b4:	eef0 7a40 	vmov.f32	s15, s0
d00513b8:	eeb0 7a41 	vmov.f32	s14, s2
d00513bc:	2101      	movs	r1, #1
d00513be:	eeb0 0a60 	vmov.f32	s0, s1
d00513c2:	4650      	mov	r0, sl
d00513c4:	eeb0 1a68 	vmov.f32	s2, s17
d00513c8:	eddf 0a9b 	vldr	s1, [pc, #620]	; d0051638 <main+0xe44>
d00513cc:	ed8d 7a2d 	vstr	s14, [sp, #180]	; 0xb4
d00513d0:	edcd 7a2b 	vstr	s15, [sp, #172]	; 0xac
d00513d4:	ed8d 0a2c 	vstr	s0, [sp, #176]	; 0xb0
d00513d8:	f004 f93c 	bl	d0055654 <entityRotation>
d00513dc:	eeb0 1a68 	vmov.f32	s2, s17
d00513e0:	2100      	movs	r1, #0
d00513e2:	eddd 0a2b 	vldr	s1, [sp, #172]	; 0xac
d00513e6:	4650      	mov	r0, sl
d00513e8:	ed9f 0a93 	vldr	s0, [pc, #588]	; d0051638 <main+0xe44>
d00513ec:	f004 f932 	bl	d0055654 <entityRotation>
d00513f0:	7b20      	ldrb	r0, [r4, #12]
d00513f2:	7b61      	ldrb	r1, [r4, #13]
d00513f4:	7ba2      	ldrb	r2, [r4, #14]
d00513f6:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00513fa:	7be3      	ldrb	r3, [r4, #15]
d00513fc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0051400:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051404:	681b      	ldr	r3, [r3, #0]
d0051406:	68db      	ldr	r3, [r3, #12]
d0051408:	4798      	blx	r3
d005140a:	4a8c      	ldr	r2, [pc, #560]	; (d005163c <main+0xe48>)
d005140c:	7813      	ldrb	r3, [r2, #0]
d005140e:	f1c3 0301 	rsb	r3, r3, #1
d0051412:	b2db      	uxtb	r3, r3
d0051414:	7013      	strb	r3, [r2, #0]
d0051416:	7813      	ldrb	r3, [r2, #0]
d0051418:	7b21      	ldrb	r1, [r4, #12]
d005141a:	7b60      	ldrb	r0, [r4, #13]
d005141c:	7ba2      	ldrb	r2, [r4, #14]
d005141e:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d0051422:	2b00      	cmp	r3, #0
d0051424:	d068      	beq.n	d00514f8 <main+0xd04>
d0051426:	4d86      	ldr	r5, [pc, #536]	; (d0051640 <main+0xe4c>)
d0051428:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d005142c:	7be3      	ldrb	r3, [r4, #15]
d005142e:	6829      	ldr	r1, [r5, #0]
d0051430:	4884      	ldr	r0, [pc, #528]	; (d0051644 <main+0xe50>)
d0051432:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051436:	6800      	ldr	r0, [r0, #0]
d0051438:	f8df 9248 	ldr.w	r9, [pc, #584]	; d0051684 <main+0xe90>
d005143c:	ee0a 7a90 	vmov	s21, r7
d0051440:	681b      	ldr	r3, [r3, #0]
d0051442:	4e81      	ldr	r6, [pc, #516]	; (d0051648 <main+0xe54>)
d0051444:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0051446:	4798      	blx	r3
d0051448:	682b      	ldr	r3, [r5, #0]
d005144a:	2500      	movs	r5, #0
d005144c:	6818      	ldr	r0, [r3, #0]
d005144e:	f000 f96d 	bl	d005172c <set3DRenderBuffer>
d0051452:	f819 3b01 	ldrb.w	r3, [r9], #1
d0051456:	b333      	cbz	r3, d00514a6 <main+0xcb2>
d0051458:	f8d6 b000 	ldr.w	fp, [r6]
d005145c:	4628      	mov	r0, r5
d005145e:	f10b 37ff 	add.w	r7, fp, #4294967295	; 0xffffffff
d0051462:	f1bb 0f00 	cmp.w	fp, #0
d0051466:	d027      	beq.n	d00514b8 <main+0xcc4>
d0051468:	6037      	str	r7, [r6, #0]
d005146a:	b9e7      	cbnz	r7, d00514a6 <main+0xcb2>
d005146c:	7c21      	ldrb	r1, [r4, #16]
d005146e:	7c63      	ldrb	r3, [r4, #17]
d0051470:	7ca2      	ldrb	r2, [r4, #18]
d0051472:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0051476:	7ce3      	ldrb	r3, [r4, #19]
d0051478:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d005147c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051480:	689b      	ldr	r3, [r3, #8]
d0051482:	689b      	ldr	r3, [r3, #8]
d0051484:	4798      	blx	r3
d0051486:	7c21      	ldrb	r1, [r4, #16]
d0051488:	7c63      	ldrb	r3, [r4, #17]
d005148a:	4628      	mov	r0, r5
d005148c:	7ca2      	ldrb	r2, [r4, #18]
d005148e:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0051492:	7ce3      	ldrb	r3, [r4, #19]
d0051494:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0051498:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d005149c:	689b      	ldr	r3, [r3, #8]
d005149e:	685b      	ldr	r3, [r3, #4]
d00514a0:	4798      	blx	r3
d00514a2:	f809 7c01 	strb.w	r7, [r9, #-1]
d00514a6:	3604      	adds	r6, #4
d00514a8:	2d00      	cmp	r5, #0
d00514aa:	f47f ad33 	bne.w	d0050f14 <main+0x720>
d00514ae:	2501      	movs	r5, #1
d00514b0:	e7cf      	b.n	d0051452 <main+0xc5e>
d00514b2:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d00514b6:	e616      	b.n	d00510e6 <main+0x8f2>
d00514b8:	f894 c010 	ldrb.w	ip, [r4, #16]
d00514bc:	7c61      	ldrb	r1, [r4, #17]
d00514be:	7ca2      	ldrb	r2, [r4, #18]
d00514c0:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d00514c4:	7ce3      	ldrb	r3, [r4, #19]
d00514c6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00514ca:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00514ce:	689b      	ldr	r3, [r3, #8]
d00514d0:	689b      	ldr	r3, [r3, #8]
d00514d2:	4798      	blx	r3
d00514d4:	f894 c010 	ldrb.w	ip, [r4, #16]
d00514d8:	7c61      	ldrb	r1, [r4, #17]
d00514da:	4628      	mov	r0, r5
d00514dc:	7ca2      	ldrb	r2, [r4, #18]
d00514de:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d00514e2:	7ce3      	ldrb	r3, [r4, #19]
d00514e4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00514e8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00514ec:	689b      	ldr	r3, [r3, #8]
d00514ee:	685b      	ldr	r3, [r3, #4]
d00514f0:	4798      	blx	r3
d00514f2:	f809 bc01 	strb.w	fp, [r9, #-1]
d00514f6:	e7d6      	b.n	d00514a6 <main+0xcb2>
d00514f8:	4d52      	ldr	r5, [pc, #328]	; (d0051644 <main+0xe50>)
d00514fa:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d00514fe:	7be3      	ldrb	r3, [r4, #15]
d0051500:	6829      	ldr	r1, [r5, #0]
d0051502:	484f      	ldr	r0, [pc, #316]	; (d0051640 <main+0xe4c>)
d0051504:	e795      	b.n	d0051432 <main+0xc3e>
d0051506:	ed9f ba51 	vldr	s22, [pc, #324]	; d005164c <main+0xe58>
d005150a:	eddf ba51 	vldr	s23, [pc, #324]	; d0051650 <main+0xe5c>
d005150e:	ed9f ca51 	vldr	s24, [pc, #324]	; d0051654 <main+0xe60>
d0051512:	eddf aa51 	vldr	s21, [pc, #324]	; d0051658 <main+0xe64>
d0051516:	eddf ca51 	vldr	s25, [pc, #324]	; d005165c <main+0xe68>
d005151a:	ed9f 8a51 	vldr	s16, [pc, #324]	; d0051660 <main+0xe6c>
d005151e:	e62c      	b.n	d005117a <main+0x986>
d0051520:	4b50      	ldr	r3, [pc, #320]	; (d0051664 <main+0xe70>)
d0051522:	ee1a 0a90 	vmov	r0, s21
d0051526:	4a50      	ldr	r2, [pc, #320]	; (d0051668 <main+0xe74>)
d0051528:	4950      	ldr	r1, [pc, #320]	; (d005166c <main+0xe78>)
d005152a:	781b      	ldrb	r3, [r3, #0]
d005152c:	7812      	ldrb	r2, [r2, #0]
d005152e:	7809      	ldrb	r1, [r1, #0]
d0051530:	f005 fd56 	bl	d0056fe0 <drawFakeHorizon>
d0051534:	e517      	b.n	d0050f66 <main+0x772>
d0051536:	eeb0 0a48 	vmov.f32	s0, s16
d005153a:	ee1f 0a90 	vmov	r0, s31
d005153e:	f7fe ffb7 	bl	d00504b0 <weatherLightning>
d0051542:	9008      	str	r0, [sp, #32]
d0051544:	e6fc      	b.n	d0051340 <main+0xb4c>
d0051546:	ed9f 1a4a 	vldr	s2, [pc, #296]	; d0051670 <main+0xe7c>
d005154a:	eddf 0a4a 	vldr	s1, [pc, #296]	; d0051674 <main+0xe80>
d005154e:	ed9f 0a4a 	vldr	s0, [pc, #296]	; d0051678 <main+0xe84>
d0051552:	f002 fe3f 	bl	d00541d4 <vec3>
d0051556:	ee1d 0a90 	vmov	r0, s27
d005155a:	ed8d 0a49 	vstr	s0, [sp, #292]	; 0x124
d005155e:	edcd 0a4a 	vstr	s1, [sp, #296]	; 0x128
d0051562:	ed8d 1a4b 	vstr	s2, [sp, #300]	; 0x12c
d0051566:	f003 ff35 	bl	d00553d4 <entitySetPosition>
d005156a:	e6c1      	b.n	d00512f0 <main+0xafc>
d005156c:	eef1 0a60 	vneg.f32	s1, s1
d0051570:	2101      	movs	r1, #1
d0051572:	eeb0 1a68 	vmov.f32	s2, s17
d0051576:	ed9f 0a30 	vldr	s0, [pc, #192]	; d0051638 <main+0xe44>
d005157a:	4638      	mov	r0, r7
d005157c:	f003 fa24 	bl	d00549c8 <cameraTurn>
d0051580:	e63f      	b.n	d0051202 <main+0xa0e>
d0051582:	4629      	mov	r1, r5
d0051584:	ee1f 0a90 	vmov	r0, s31
d0051588:	f004 fdae 	bl	d00560e8 <lightEnable>
d005158c:	ee1f 0a90 	vmov	r0, s31
d0051590:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0051594:	f004 fe3e 	bl	d0056214 <lightSetIntensity>
d0051598:	eeb0 0a68 	vmov.f32	s0, s17
d005159c:	462b      	mov	r3, r5
d005159e:	2224      	movs	r2, #36	; 0x24
d00515a0:	212b      	movs	r1, #43	; 0x2b
d00515a2:	ee1a 0a90 	vmov	r0, s21
d00515a6:	f005 fd1b 	bl	d0056fe0 <drawFakeHorizon>
d00515aa:	e4dc      	b.n	d0050f66 <main+0x772>
d00515ac:	4b20      	ldr	r3, [pc, #128]	; (d0051630 <main+0xe3c>)
d00515ae:	ed93 1a06 	vldr	s2, [r3, #24]
d00515b2:	edd3 0a05 	vldr	s1, [r3, #20]
d00515b6:	ed93 0a04 	vldr	s0, [r3, #16]
d00515ba:	f002 fe0b 	bl	d00541d4 <vec3>
d00515be:	ee1d 0a10 	vmov	r0, s26
d00515c2:	ed8d 0a4f 	vstr	s0, [sp, #316]	; 0x13c
d00515c6:	edcd 0a50 	vstr	s1, [sp, #320]	; 0x140
d00515ca:	ed8d 1a51 	vstr	s2, [sp, #324]	; 0x144
d00515ce:	f003 ff01 	bl	d00553d4 <entitySetPosition>
d00515d2:	4917      	ldr	r1, [pc, #92]	; (d0051630 <main+0xe3c>)
d00515d4:	ee1d 0a10 	vmov	r0, s26
d00515d8:	f004 fae0 	bl	d0055b9c <entityAlignToHit>
d00515dc:	e6e4      	b.n	d00513a8 <main+0xbb4>
d00515de:	eeb1 1a4b 	vneg.f32	s2, s22
d00515e2:	ed9f 0a15 	vldr	s0, [pc, #84]	; d0051638 <main+0xe44>
d00515e6:	eef0 0a68 	vmov.f32	s1, s17
d00515ea:	4638      	mov	r0, r7
d00515ec:	f003 fbc8 	bl	d0054d80 <cameraMove>
d00515f0:	e6b8      	b.n	d0051364 <main+0xb70>
d00515f2:	eeb0 1a4b 	vmov.f32	s2, s22
d00515f6:	ed9f 0a10 	vldr	s0, [pc, #64]	; d0051638 <main+0xe44>
d00515fa:	eef0 0a68 	vmov.f32	s1, s17
d00515fe:	4638      	mov	r0, r7
d0051600:	f003 fbbe 	bl	d0054d80 <cameraMove>
d0051604:	e6ab      	b.n	d005135e <main+0xb6a>
d0051606:	2200      	movs	r2, #0
d0051608:	4613      	mov	r3, r2
d005160a:	e504      	b.n	d0051016 <main+0x822>
d005160c:	9b05      	ldr	r3, [sp, #20]
d005160e:	b14b      	cbz	r3, d0051624 <main+0xe30>
d0051610:	2200      	movs	r2, #0
d0051612:	2317      	movs	r3, #23
d0051614:	9205      	str	r2, [sp, #20]
d0051616:	4a19      	ldr	r2, [pc, #100]	; (d005167c <main+0xe88>)
d0051618:	7013      	strb	r3, [r2, #0]
d005161a:	e538      	b.n	d005108e <main+0x89a>
d005161c:	3b01      	subs	r3, #1
d005161e:	4a18      	ldr	r2, [pc, #96]	; (d0051680 <main+0xe8c>)
d0051620:	7013      	strb	r3, [r2, #0]
d0051622:	e4a0      	b.n	d0050f66 <main+0x772>
d0051624:	2201      	movs	r2, #1
d0051626:	2302      	movs	r3, #2
d0051628:	9205      	str	r2, [sp, #20]
d005162a:	4a14      	ldr	r2, [pc, #80]	; (d005167c <main+0xe88>)
d005162c:	7013      	strb	r3, [r2, #0]
d005162e:	e52e      	b.n	d005108e <main+0x89a>
d0051630:	d005b700 	.word	0xd005b700
d0051634:	45098000 	.word	0x45098000
d0051638:	00000000 	.word	0x00000000
d005163c:	d005b6e8 	.word	0xd005b6e8
d0051640:	d00f5a80 	.word	0xd00f5a80
d0051644:	d00f5aa0 	.word	0xd00f5aa0
d0051648:	d005b770 	.word	0xd005b770
d005164c:	42f20000 	.word	0x42f20000
d0051650:	42b6ee15 	.word	0x42b6ee15
d0051654:	3f28f5c3 	.word	0x3f28f5c3
d0051658:	4215999a 	.word	0x4215999a
d005165c:	bc872b02 	.word	0xbc872b02
d0051660:	3f0ccccd 	.word	0x3f0ccccd
d0051664:	d00f5a62 	.word	0xd00f5a62
d0051668:	d00f5a20 	.word	0xd00f5a20
d005166c:	d00f5a61 	.word	0xd00f5a61
d0051670:	c3c80000 	.word	0xc3c80000
d0051674:	42480000 	.word	0x42480000
d0051678:	c3070000 	.word	0xc3070000
d005167c:	d00f5a60 	.word	0xd00f5a60
d0051680:	d005b60c 	.word	0xd005b60c
d0051684:	d005b76c 	.word	0xd005b76c

d0051688 <meshSetDefaultMaterial>:
d0051688:	b148      	cbz	r0, d005169e <meshSetDefaultMaterial+0x16>
d005168a:	2300      	movs	r3, #0
d005168c:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d0051690:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
d0051694:	6203      	str	r3, [r0, #32]
d0051696:	6241      	str	r1, [r0, #36]	; 0x24
d0051698:	62c2      	str	r2, [r0, #44]	; 0x2c
d005169a:	6303      	str	r3, [r0, #48]	; 0x30
d005169c:	6283      	str	r3, [r0, #40]	; 0x28
d005169e:	4770      	bx	lr

d00516a0 <meshSetMaterial>:
d00516a0:	b148      	cbz	r0, d00516b6 <meshSetMaterial+0x16>
d00516a2:	ed80 0a08 	vstr	s0, [r0, #32]
d00516a6:	edc0 0a09 	vstr	s1, [r0, #36]	; 0x24
d00516aa:	ed80 1a0c 	vstr	s2, [r0, #48]	; 0x30
d00516ae:	edc0 1a0a 	vstr	s3, [r0, #40]	; 0x28
d00516b2:	ed80 2a0b 	vstr	s4, [r0, #44]	; 0x2c
d00516b6:	4770      	bx	lr

d00516b8 <initDepthBandMem>:
d00516b8:	4a08      	ldr	r2, [pc, #32]	; (d00516dc <initDepthBandMem+0x24>)
d00516ba:	b508      	push	{r3, lr}
d00516bc:	7813      	ldrb	r3, [r2, #0]
d00516be:	7850      	ldrb	r0, [r2, #1]
d00516c0:	7891      	ldrb	r1, [r2, #2]
d00516c2:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d00516c6:	78d2      	ldrb	r2, [r2, #3]
d00516c8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00516cc:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00516d0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00516d2:	4798      	blx	r3
d00516d4:	4b02      	ldr	r3, [pc, #8]	; (d00516e0 <initDepthBandMem+0x28>)
d00516d6:	6018      	str	r0, [r3, #0]
d00516d8:	bd08      	pop	{r3, pc}
d00516da:	bf00      	nop
d00516dc:	2001f000 	.word	0x2001f000
d00516e0:	d005b788 	.word	0xd005b788

d00516e4 <beginDepthBand>:
d00516e4:	f100 031f 	add.w	r3, r0, #31
d00516e8:	4a0d      	ldr	r2, [pc, #52]	; (d0051720 <beginDepthBand+0x3c>)
d00516ea:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d00516ee:	6010      	str	r0, [r2, #0]
d00516f0:	da08      	bge.n	d0051704 <beginDepthBand+0x20>
d00516f2:	490c      	ldr	r1, [pc, #48]	; (d0051724 <beginDepthBand+0x40>)
d00516f4:	f44f 42f0 	mov.w	r2, #30720	; 0x7800
d00516f8:	600b      	str	r3, [r1, #0]
d00516fa:	21ff      	movs	r1, #255	; 0xff
d00516fc:	4b0a      	ldr	r3, [pc, #40]	; (d0051728 <beginDepthBand+0x44>)
d00516fe:	6818      	ldr	r0, [r3, #0]
d0051700:	f007 bd96 	b.w	d0059230 <memset>
d0051704:	4b07      	ldr	r3, [pc, #28]	; (d0051724 <beginDepthBand+0x40>)
d0051706:	f240 123f 	movw	r2, #319	; 0x13f
d005170a:	f5c0 70a0 	rsb	r0, r0, #320	; 0x140
d005170e:	21ff      	movs	r1, #255	; 0xff
d0051710:	601a      	str	r2, [r3, #0]
d0051712:	ebc0 1000 	rsb	r0, r0, r0, lsl #4
d0051716:	4b04      	ldr	r3, [pc, #16]	; (d0051728 <beginDepthBand+0x44>)
d0051718:	0182      	lsls	r2, r0, #6
d005171a:	6818      	ldr	r0, [r3, #0]
d005171c:	f007 bd88 	b.w	d0059230 <memset>
d0051720:	d005b780 	.word	0xd005b780
d0051724:	d005b784 	.word	0xd005b784
d0051728:	d005b788 	.word	0xd005b788

d005172c <set3DRenderBuffer>:
d005172c:	4b01      	ldr	r3, [pc, #4]	; (d0051734 <set3DRenderBuffer+0x8>)
d005172e:	6018      	str	r0, [r3, #0]
d0051730:	4770      	bx	lr
d0051732:	bf00      	nop
d0051734:	d00f5aa4 	.word	0xd00f5aa4

d0051738 <putPixel>:
d0051738:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d005173c:	d209      	bcs.n	d0051752 <putPixel+0x1a>
d005173e:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d0051742:	d206      	bcs.n	d0051752 <putPixel+0x1a>
d0051744:	4b03      	ldr	r3, [pc, #12]	; (d0051754 <putPixel+0x1c>)
d0051746:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d005174a:	681b      	ldr	r3, [r3, #0]
d005174c:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d0051750:	5442      	strb	r2, [r0, r1]
d0051752:	4770      	bx	lr
d0051754:	d00f5aa4 	.word	0xd00f5aa4

d0051758 <drawLine>:
d0051758:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d005175c:	b085      	sub	sp, #20
d005175e:	eba2 0c00 	sub.w	ip, r2, r0
d0051762:	eba3 0901 	sub.w	r9, r3, r1
d0051766:	f240 1edf 	movw	lr, #479	; 0x1df
d005176a:	f89d 4038 	ldrb.w	r4, [sp, #56]	; 0x38
d005176e:	f240 1a3f 	movw	sl, #319	; 0x13f
d0051772:	f8df b07c 	ldr.w	fp, [pc, #124]	; d00517f0 <drawLine+0x98>
d0051776:	9401      	str	r4, [sp, #4]
d0051778:	4282      	cmp	r2, r0
d005177a:	bfcc      	ite	gt
d005177c:	2401      	movgt	r4, #1
d005177e:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d0051782:	9402      	str	r4, [sp, #8]
d0051784:	428b      	cmp	r3, r1
d0051786:	bfcc      	ite	gt
d0051788:	2401      	movgt	r4, #1
d005178a:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d005178e:	f1bc 0f00 	cmp.w	ip, #0
d0051792:	9403      	str	r4, [sp, #12]
d0051794:	bfb8      	it	lt
d0051796:	f1cc 0c00 	rsblt	ip, ip, #0
d005179a:	f1b9 0f00 	cmp.w	r9, #0
d005179e:	bfb8      	it	lt
d00517a0:	f1c9 0900 	rsblt	r9, r9, #0
d00517a4:	ebac 0409 	sub.w	r4, ip, r9
d00517a8:	f1c9 0800 	rsb	r8, r9, #0
d00517ac:	4570      	cmp	r0, lr
d00517ae:	eb00 0780 	add.w	r7, r0, r0, lsl #2
d00517b2:	ea4f 0644 	mov.w	r6, r4, lsl #1
d00517b6:	d807      	bhi.n	d00517c8 <drawLine+0x70>
d00517b8:	4551      	cmp	r1, sl
d00517ba:	d805      	bhi.n	d00517c8 <drawLine+0x70>
d00517bc:	f8db 5000 	ldr.w	r5, [fp]
d00517c0:	eb05 1587 	add.w	r5, r5, r7, lsl #6
d00517c4:	9f01      	ldr	r7, [sp, #4]
d00517c6:	546f      	strb	r7, [r5, r1]
d00517c8:	4290      	cmp	r0, r2
d00517ca:	d101      	bne.n	d00517d0 <drawLine+0x78>
d00517cc:	4299      	cmp	r1, r3
d00517ce:	d00c      	beq.n	d00517ea <drawLine+0x92>
d00517d0:	ebb8 0f44 	cmp.w	r8, r4, lsl #1
d00517d4:	dc05      	bgt.n	d00517e2 <drawLine+0x8a>
d00517d6:	9d02      	ldr	r5, [sp, #8]
d00517d8:	45b4      	cmp	ip, r6
d00517da:	eba4 0409 	sub.w	r4, r4, r9
d00517de:	4428      	add	r0, r5
d00517e0:	dbe4      	blt.n	d00517ac <drawLine+0x54>
d00517e2:	9d03      	ldr	r5, [sp, #12]
d00517e4:	4464      	add	r4, ip
d00517e6:	4429      	add	r1, r5
d00517e8:	e7e0      	b.n	d00517ac <drawLine+0x54>
d00517ea:	b005      	add	sp, #20
d00517ec:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00517f0:	d00f5aa4 	.word	0xd00f5aa4

d00517f4 <shadeColor>:
d00517f4:	2900      	cmp	r1, #0
d00517f6:	db09      	blt.n	d005180c <shadeColor+0x18>
d00517f8:	2904      	cmp	r1, #4
d00517fa:	dc09      	bgt.n	d0051810 <shadeColor+0x1c>
d00517fc:	0109      	lsls	r1, r1, #4
d00517fe:	b2c9      	uxtb	r1, r1
d0051800:	f000 000f 	and.w	r0, r0, #15
d0051804:	3020      	adds	r0, #32
d0051806:	4408      	add	r0, r1
d0051808:	b2c0      	uxtb	r0, r0
d005180a:	4770      	bx	lr
d005180c:	2100      	movs	r1, #0
d005180e:	e7f7      	b.n	d0051800 <shadeColor+0xc>
d0051810:	2010      	movs	r0, #16
d0051812:	4770      	bx	lr

d0051814 <fillTriangleFlat>:
d0051814:	eddf 7adc 	vldr	s15, [pc, #880]	; d0051b88 <fillTriangleFlat+0x374>
d0051818:	eef4 0ae7 	vcmpe.f32	s1, s15
d005181c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0051820:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051824:	eeb4 1ae7 	vcmpe.f32	s2, s15
d0051828:	ed2d 8b10 	vpush	{d8-d15}
d005182c:	b08d      	sub	sp, #52	; 0x34
d005182e:	9304      	str	r3, [sp, #16]
d0051830:	bf94      	ite	ls
d0051832:	2301      	movls	r3, #1
d0051834:	2300      	movhi	r3, #0
d0051836:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005183a:	9001      	str	r0, [sp, #4]
d005183c:	9102      	str	r1, [sp, #8]
d005183e:	bf98      	it	ls
d0051840:	f043 0301 	orrls.w	r3, r3, #1
d0051844:	9203      	str	r2, [sp, #12]
d0051846:	f8bd 40a0 	ldrh.w	r4, [sp, #160]	; 0xa0
d005184a:	f8bd 00a4 	ldrh.w	r0, [sp, #164]	; 0xa4
d005184e:	f8bd 10a8 	ldrh.w	r1, [sp, #168]	; 0xa8
d0051852:	f89d 20ac 	ldrb.w	r2, [sp, #172]	; 0xac
d0051856:	2b00      	cmp	r3, #0
d0051858:	f040 8169 	bne.w	d0051b2e <fillTriangleFlat+0x31a>
d005185c:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0051860:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051864:	bf94      	ite	ls
d0051866:	2701      	movls	r7, #1
d0051868:	2700      	movhi	r7, #0
d005186a:	f240 8160 	bls.w	d0051b2e <fillTriangleFlat+0x31a>
d005186e:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0051872:	ee07 4a10 	vmov	s14, r4
d0051876:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d005187a:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d005187e:	ee87 8a80 	vdiv.f32	s16, s15, s0
d0051882:	eec7 2a81 	vdiv.f32	s5, s15, s2
d0051886:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d005188a:	ee07 0a90 	vmov	s15, r0
d005188e:	ee71 1aa6 	vadd.f32	s3, s3, s13
d0051892:	eef8 5a67 	vcvt.f32.u32	s11, s15
d0051896:	ee07 1a90 	vmov	s15, r1
d005189a:	ee27 7a08 	vmul.f32	s14, s14, s16
d005189e:	eef8 3a67 	vcvt.f32.u32	s7, s15
d00518a2:	eefd 7ae1 	vcvt.s32.f32	s15, s3
d00518a6:	ee63 3aa2 	vmul.f32	s7, s7, s5
d00518aa:	ee17 3a90 	vmov	r3, s15
d00518ae:	2b00      	cmp	r3, #0
d00518b0:	ee65 5a80 	vmul.f32	s11, s11, s0
d00518b4:	f2c0 8142 	blt.w	d0051b3c <fillTriangleFlat+0x328>
d00518b8:	2b04      	cmp	r3, #4
d00518ba:	f340 813d 	ble.w	d0051b38 <fillTriangleFlat+0x324>
d00518be:	2710      	movs	r7, #16
d00518c0:	eddd 7a02 	vldr	s15, [sp, #8]
d00518c4:	eddd 6a27 	vldr	s13, [sp, #156]	; 0x9c
d00518c8:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d00518cc:	eddd 7a04 	vldr	s15, [sp, #16]
d00518d0:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d00518d4:	eeb8 3ae7 	vcvt.f32.s32	s6, s15
d00518d8:	eddd 7a01 	vldr	s15, [sp, #4]
d00518dc:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d00518e0:	eddd 7a03 	vldr	s15, [sp, #12]
d00518e4:	eef4 4ac3 	vcmpe.f32	s9, s6
d00518e8:	eeb8 4ae7 	vcvt.f32.s32	s8, s15
d00518ec:	eddd 7a26 	vldr	s15, [sp, #152]	; 0x98
d00518f0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00518f4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00518f8:	f300 8126 	bgt.w	d0051b48 <fillTriangleFlat+0x334>
d00518fc:	eef4 4ae6 	vcmpe.f32	s9, s13
d0051900:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051904:	f300 8217 	bgt.w	d0051d36 <fillTriangleFlat+0x522>
d0051908:	eeb4 3ae6 	vcmpe.f32	s6, s13
d005190c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051910:	dd17      	ble.n	d0051942 <fillTriangleFlat+0x12e>
d0051912:	eeb0 1a65 	vmov.f32	s2, s11
d0051916:	eef0 1a40 	vmov.f32	s3, s0
d005191a:	eeb0 2a43 	vmov.f32	s4, s6
d005191e:	eeb0 5a44 	vmov.f32	s10, s8
d0051922:	eef0 5a63 	vmov.f32	s11, s7
d0051926:	eeb0 0a62 	vmov.f32	s0, s5
d005192a:	eeb0 3a66 	vmov.f32	s6, s13
d005192e:	eeb0 4a67 	vmov.f32	s8, s15
d0051932:	eef0 3a41 	vmov.f32	s7, s2
d0051936:	eef0 2a61 	vmov.f32	s5, s3
d005193a:	eef0 6a42 	vmov.f32	s13, s4
d005193e:	eef0 7a45 	vmov.f32	s15, s10
d0051942:	eeb6 5a00 	vmov.f32	s10, #96	; 0x3f000000  0.5
d0051946:	ee34 2a85 	vadd.f32	s4, s9, s10
d005194a:	ee36 5a85 	vadd.f32	s10, s13, s10
d005194e:	eebd 2ac2 	vcvt.s32.f32	s4, s4
d0051952:	eebd 5ac5 	vcvt.s32.f32	s10, s10
d0051956:	ee12 3a10 	vmov	r3, s4
d005195a:	ee15 2a10 	vmov	r2, s10
d005195e:	4293      	cmp	r3, r2
d0051960:	f000 80e5 	beq.w	d0051b2e <fillTriangleFlat+0x31a>
d0051964:	ee36 2ae4 	vsub.f32	s4, s13, s9
d0051968:	ed9f 1a87 	vldr	s2, [pc, #540]	; d0051b88 <fillTriangleFlat+0x374>
d005196c:	eeb4 2ac1 	vcmpe.f32	s4, s2
d0051970:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051974:	f240 80db 	bls.w	d0051b2e <fillTriangleFlat+0x31a>
d0051978:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d005197c:	ee77 0ac6 	vsub.f32	s1, s15, s12
d0051980:	ee72 8ac8 	vsub.f32	s17, s5, s16
d0051984:	ee81 5a82 	vdiv.f32	s10, s3, s4
d0051988:	ee33 2a64 	vsub.f32	s4, s6, s9
d005198c:	ee33 9ac7 	vsub.f32	s18, s7, s14
d0051990:	eeb4 2ac1 	vcmpe.f32	s4, s2
d0051994:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051998:	ee60 0a85 	vmul.f32	s1, s1, s10
d005199c:	ee68 8a85 	vmul.f32	s17, s17, s10
d00519a0:	ee29 9a05 	vmul.f32	s18, s18, s10
d00519a4:	f300 80fe 	bgt.w	d0051ba4 <fillTriangleFlat+0x390>
d00519a8:	ee36 5ac3 	vsub.f32	s10, s13, s6
d00519ac:	eeb4 5ac1 	vcmpe.f32	s10, s2
d00519b0:	ed8d 5a01 	vstr	s10, [sp, #4]
d00519b4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00519b8:	f340 80b9 	ble.w	d0051b2e <fillTriangleFlat+0x31a>
d00519bc:	ee81 5a85 	vdiv.f32	s10, s3, s10
d00519c0:	ee77 7ac4 	vsub.f32	s15, s15, s8
d00519c4:	eeb4 2ac1 	vcmpe.f32	s4, s2
d00519c8:	ee72 2ac0 	vsub.f32	s5, s5, s0
d00519cc:	ee73 3ae5 	vsub.f32	s7, s7, s11
d00519d0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00519d4:	ee67 7a85 	vmul.f32	s15, s15, s10
d00519d8:	ee62 fa85 	vmul.f32	s31, s5, s10
d00519dc:	ee23 5a85 	vmul.f32	s10, s7, s10
d00519e0:	edcd 7a04 	vstr	s15, [sp, #16]
d00519e4:	f300 8343 	bgt.w	d005206e <fillTriangleFlat+0x85a>
d00519e8:	4a68      	ldr	r2, [pc, #416]	; (d0051b8c <fillTriangleFlat+0x378>)
d00519ea:	eefd 7ac3 	vcvt.s32.f32	s15, s6
d00519ee:	4b68      	ldr	r3, [pc, #416]	; (d0051b90 <fillTriangleFlat+0x37c>)
d00519f0:	f8d2 a000 	ldr.w	sl, [r2]
d00519f4:	681b      	ldr	r3, [r3, #0]
d00519f6:	edcd 7a02 	vstr	s15, [sp, #8]
d00519fa:	9303      	str	r3, [sp, #12]
d00519fc:	9b02      	ldr	r3, [sp, #8]
d00519fe:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0051a02:	4553      	cmp	r3, sl
d0051a04:	ee17 ea90 	vmov	lr, s15
d0051a08:	bfb8      	it	lt
d0051a0a:	4653      	movlt	r3, sl
d0051a0c:	f10e 3eff 	add.w	lr, lr, #4294967295	; 0xffffffff
d0051a10:	469b      	mov	fp, r3
d0051a12:	9b03      	ldr	r3, [sp, #12]
d0051a14:	459e      	cmp	lr, r3
d0051a16:	bfa8      	it	ge
d0051a18:	469e      	movge	lr, r3
d0051a1a:	45f3      	cmp	fp, lr
d0051a1c:	f300 8087 	bgt.w	d0051b2e <fillTriangleFlat+0x31a>
d0051a20:	ee07 ba90 	vmov	s15, fp
d0051a24:	eef6 1a00 	vmov.f32	s3, #96	; 0x3f000000  0.5
d0051a28:	ebaa 1a0a 	sub.w	sl, sl, sl, lsl #4
d0051a2c:	4b59      	ldr	r3, [pc, #356]	; (d0051b94 <fillTriangleFlat+0x380>)
d0051a2e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051a32:	ed9d ba04 	vldr	s22, [sp, #16]
d0051a36:	ea4f 124a 	mov.w	r2, sl, lsl #5
d0051a3a:	681b      	ldr	r3, [r3, #0]
d0051a3c:	f10e 0e01 	add.w	lr, lr, #1
d0051a40:	eddf 9a51 	vldr	s19, [pc, #324]	; d0051b88 <fillTriangleFlat+0x374>
d0051a44:	ee77 7aa1 	vadd.f32	s15, s15, s3
d0051a48:	ed9f aa53 	vldr	s20, [pc, #332]	; d0051b98 <fillTriangleFlat+0x384>
d0051a4c:	ed9f 2a53 	vldr	s4, [pc, #332]	; d0051b9c <fillTriangleFlat+0x388>
d0051a50:	ed9f 1a53 	vldr	s2, [pc, #332]	; d0051ba0 <fillTriangleFlat+0x38c>
d0051a54:	ee77 4ae4 	vsub.f32	s9, s15, s9
d0051a58:	9202      	str	r2, [sp, #8]
d0051a5a:	ee37 3ac3 	vsub.f32	s6, s15, s6
d0051a5e:	9301      	str	r3, [sp, #4]
d0051a60:	eea0 6aa4 	vfma.f32	s12, s1, s9
d0051a64:	eea8 8aa4 	vfma.f32	s16, s17, s9
d0051a68:	eea9 7a24 	vfma.f32	s14, s18, s9
d0051a6c:	eea3 4a0b 	vfma.f32	s8, s6, s22
d0051a70:	eea3 0a2f 	vfma.f32	s0, s6, s31
d0051a74:	eee5 5a03 	vfma.f32	s11, s10, s6
d0051a78:	e033      	b.n	d0051ae2 <fillTriangleFlat+0x2ce>
d0051a7a:	eef0 aa47 	vmov.f32	s21, s14
d0051a7e:	eef0 2a48 	vmov.f32	s5, s16
d0051a82:	eef0 6a46 	vmov.f32	s13, s12
d0051a86:	eeb0 3a65 	vmov.f32	s6, s11
d0051a8a:	eef0 4a40 	vmov.f32	s9, s0
d0051a8e:	eef0 3a44 	vmov.f32	s7, s8
d0051a92:	fefa 7a66 	vrintp.f32	s15, s13
d0051a96:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0051a9a:	f240 13df 	movw	r3, #479	; 0x1df
d0051a9e:	ee17 ca90 	vmov	ip, s15
d0051aa2:	fefa 7a63 	vrintp.f32	s15, s7
d0051aa6:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0051aaa:	f10c 3cff 	add.w	ip, ip, #4294967295	; 0xffffffff
d0051aae:	ee17 5a90 	vmov	r5, s15
d0051ab2:	459c      	cmp	ip, r3
d0051ab4:	ea25 75e5 	bic.w	r5, r5, r5, asr #31
d0051ab8:	bfa8      	it	ge
d0051aba:	469c      	movge	ip, r3
d0051abc:	45ac      	cmp	ip, r5
d0051abe:	f280 816c 	bge.w	d0051d9a <fillTriangleFlat+0x586>
d0051ac2:	f10b 0b01 	add.w	fp, fp, #1
d0051ac6:	ee36 6a20 	vadd.f32	s12, s12, s1
d0051aca:	ee38 8a28 	vadd.f32	s16, s16, s17
d0051ace:	45f3      	cmp	fp, lr
d0051ad0:	ee37 7a09 	vadd.f32	s14, s14, s18
d0051ad4:	ee34 4a0b 	vadd.f32	s8, s8, s22
d0051ad8:	ee30 0a2f 	vadd.f32	s0, s0, s31
d0051adc:	ee75 5a85 	vadd.f32	s11, s11, s10
d0051ae0:	d025      	beq.n	d0051b2e <fillTriangleFlat+0x31a>
d0051ae2:	eeb4 6ac4 	vcmpe.f32	s12, s8
d0051ae6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051aea:	dcc6      	bgt.n	d0051a7a <fillTriangleFlat+0x266>
d0051aec:	eef0 aa65 	vmov.f32	s21, s11
d0051af0:	eef0 2a40 	vmov.f32	s5, s0
d0051af4:	eef0 6a44 	vmov.f32	s13, s8
d0051af8:	eeb0 3a47 	vmov.f32	s6, s14
d0051afc:	eef0 4a48 	vmov.f32	s9, s16
d0051b00:	eef0 3a46 	vmov.f32	s7, s12
d0051b04:	e7c5      	b.n	d0051a92 <fillTriangleFlat+0x27e>
d0051b06:	eddd 6a07 	vldr	s13, [sp, #28]
d0051b0a:	f8dd a020 	ldr.w	sl, [sp, #32]
d0051b0e:	ed9d 4a09 	vldr	s8, [sp, #36]	; 0x24
d0051b12:	ed9d 7a0a 	vldr	s14, [sp, #40]	; 0x28
d0051b16:	ed9d 8a0b 	vldr	s16, [sp, #44]	; 0x2c
d0051b1a:	eddf 7a1b 	vldr	s15, [pc, #108]	; d0051b88 <fillTriangleFlat+0x374>
d0051b1e:	eddd 3a01 	vldr	s7, [sp, #4]
d0051b22:	eef4 3ae7 	vcmpe.f32	s7, s15
d0051b26:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051b2a:	f73f af67 	bgt.w	d00519fc <fillTriangleFlat+0x1e8>
d0051b2e:	b00d      	add	sp, #52	; 0x34
d0051b30:	ecbd 8b10 	vpop	{d8-d15}
d0051b34:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0051b38:	011b      	lsls	r3, r3, #4
d0051b3a:	b2df      	uxtb	r7, r3
d0051b3c:	f002 020f 	and.w	r2, r2, #15
d0051b40:	3220      	adds	r2, #32
d0051b42:	4417      	add	r7, r2
d0051b44:	b2ff      	uxtb	r7, r7
d0051b46:	e6bb      	b.n	d00518c0 <fillTriangleFlat+0xac>
d0051b48:	eeb4 3ae6 	vcmpe.f32	s6, s13
d0051b4c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051b50:	f340 810a 	ble.w	d0051d68 <fillTriangleFlat+0x554>
d0051b54:	eeb0 1a63 	vmov.f32	s2, s7
d0051b58:	eef0 1a62 	vmov.f32	s3, s5
d0051b5c:	eeb0 2a66 	vmov.f32	s4, s13
d0051b60:	eeb0 5a67 	vmov.f32	s10, s15
d0051b64:	eef0 3a47 	vmov.f32	s7, s14
d0051b68:	eef0 2a48 	vmov.f32	s5, s16
d0051b6c:	eef0 6a64 	vmov.f32	s13, s9
d0051b70:	eef0 7a46 	vmov.f32	s15, s12
d0051b74:	eeb0 7a41 	vmov.f32	s14, s2
d0051b78:	eeb0 8a61 	vmov.f32	s16, s3
d0051b7c:	eef0 4a42 	vmov.f32	s9, s4
d0051b80:	eeb0 6a45 	vmov.f32	s12, s10
d0051b84:	e6dd      	b.n	d0051942 <fillTriangleFlat+0x12e>
d0051b86:	bf00      	nop
d0051b88:	38d1b717 	.word	0x38d1b717
d0051b8c:	d005b780 	.word	0xd005b780
d0051b90:	d005b784 	.word	0xd005b784
d0051b94:	d005b788 	.word	0xd005b788
d0051b98:	33d6bf95 	.word	0x33d6bf95
d0051b9c:	00000000 	.word	0x00000000
d0051ba0:	477fff00 	.word	0x477fff00
d0051ba4:	ee81 5a82 	vdiv.f32	s10, s3, s4
d0051ba8:	ee76 aac3 	vsub.f32	s21, s13, s6
d0051bac:	ee34 aa46 	vsub.f32	s20, s8, s12
d0051bb0:	ee70 9a48 	vsub.f32	s19, s0, s16
d0051bb4:	ee35 2ac7 	vsub.f32	s4, s11, s14
d0051bb8:	edcd aa01 	vstr	s21, [sp, #4]
d0051bbc:	eef4 aac1 	vcmpe.f32	s21, s2
d0051bc0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051bc4:	ee2a aa05 	vmul.f32	s20, s20, s10
d0051bc8:	ee69 9a85 	vmul.f32	s19, s19, s10
d0051bcc:	ee22 5a05 	vmul.f32	s10, s4, s10
d0051bd0:	eef0 ea45 	vmov.f32	s29, s10
d0051bd4:	f340 8244 	ble.w	d0052060 <fillTriangleFlat+0x84c>
d0051bd8:	ee81 2aaa 	vdiv.f32	s4, s3, s21
d0051bdc:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0051be0:	ee72 2ac0 	vsub.f32	s5, s5, s0
d0051be4:	ee33 5ae5 	vsub.f32	s10, s7, s11
d0051be8:	ee67 7a82 	vmul.f32	s15, s15, s4
d0051bec:	ee62 fa82 	vmul.f32	s31, s5, s4
d0051bf0:	ee25 5a02 	vmul.f32	s10, s10, s4
d0051bf4:	edcd 7a04 	vstr	s15, [sp, #16]
d0051bf8:	eefd 7ac3 	vcvt.s32.f32	s15, s6
d0051bfc:	4bd2      	ldr	r3, [pc, #840]	; (d0051f48 <fillTriangleFlat+0x734>)
d0051bfe:	4ad3      	ldr	r2, [pc, #844]	; (d0051f4c <fillTriangleFlat+0x738>)
d0051c00:	6819      	ldr	r1, [r3, #0]
d0051c02:	ee17 3a90 	vmov	r3, s15
d0051c06:	edcd 7a02 	vstr	s15, [sp, #8]
d0051c0a:	eefd 7ae4 	vcvt.s32.f32	s15, s9
d0051c0e:	f8d2 a000 	ldr.w	sl, [r2]
d0051c12:	3b01      	subs	r3, #1
d0051c14:	9103      	str	r1, [sp, #12]
d0051c16:	ee17 ba90 	vmov	fp, s15
d0051c1a:	428b      	cmp	r3, r1
d0051c1c:	bfa8      	it	ge
d0051c1e:	460b      	movge	r3, r1
d0051c20:	45d3      	cmp	fp, sl
d0051c22:	bfb8      	it	lt
d0051c24:	46d3      	movlt	fp, sl
d0051c26:	455b      	cmp	r3, fp
d0051c28:	f6ff af77 	blt.w	d0051b1a <fillTriangleFlat+0x306>
d0051c2c:	eeb6 2a00 	vmov.f32	s4, #96	; 0x3f000000  0.5
d0051c30:	ee07 ba90 	vmov	s15, fp
d0051c34:	49c6      	ldr	r1, [pc, #792]	; (d0051f50 <fillTriangleFlat+0x73c>)
d0051c36:	ebaa 120a 	sub.w	r2, sl, sl, lsl #4
d0051c3a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051c3e:	1c58      	adds	r0, r3, #1
d0051c40:	ee72 3a64 	vsub.f32	s7, s4, s9
d0051c44:	680b      	ldr	r3, [r1, #0]
d0051c46:	eeb0 ba46 	vmov.f32	s22, s12
d0051c4a:	f8cd a020 	str.w	sl, [sp, #32]
d0051c4e:	eeb0 da48 	vmov.f32	s26, s16
d0051c52:	9305      	str	r3, [sp, #20]
d0051c54:	ee77 7aa3 	vadd.f32	s15, s15, s7
d0051c58:	0153      	lsls	r3, r2, #5
d0051c5a:	eef0 ca47 	vmov.f32	s25, s14
d0051c5e:	eddf dabd 	vldr	s27, [pc, #756]	; d0051f54 <fillTriangleFlat+0x740>
d0051c62:	eef0 aa46 	vmov.f32	s21, s12
d0051c66:	eddf 2abf 	vldr	s5, [pc, #764]	; d0051f64 <fillTriangleFlat+0x750>
d0051c6a:	eeb0 ca48 	vmov.f32	s24, s16
d0051c6e:	eddf 1aba 	vldr	s3, [pc, #744]	; d0051f58 <fillTriangleFlat+0x744>
d0051c72:	eef0 ba47 	vmov.f32	s23, s14
d0051c76:	4682      	mov	sl, r0
d0051c78:	eea0 baa7 	vfma.f32	s22, s1, s15
d0051c7c:	9306      	str	r3, [sp, #24]
d0051c7e:	eea8 daa7 	vfma.f32	s26, s17, s15
d0051c82:	edcd 6a07 	vstr	s13, [sp, #28]
d0051c86:	eee9 ca27 	vfma.f32	s25, s18, s15
d0051c8a:	ed8d 4a09 	vstr	s8, [sp, #36]	; 0x24
d0051c8e:	eee7 aa8a 	vfma.f32	s21, s15, s20
d0051c92:	ed8d 7a0a 	vstr	s14, [sp, #40]	; 0x28
d0051c96:	eea7 caa9 	vfma.f32	s24, s15, s19
d0051c9a:	ed8d 8a0b 	vstr	s16, [sp, #44]	; 0x2c
d0051c9e:	eee7 baae 	vfma.f32	s23, s15, s29
d0051ca2:	eeb0 ea69 	vmov.f32	s28, s19
d0051ca6:	e034      	b.n	d0051d12 <fillTriangleFlat+0x4fe>
d0051ca8:	eef0 3a6c 	vmov.f32	s7, s25
d0051cac:	eeb0 4a4d 	vmov.f32	s8, s26
d0051cb0:	eef0 7a4b 	vmov.f32	s15, s22
d0051cb4:	eef0 6a6b 	vmov.f32	s13, s23
d0051cb8:	eeb0 7a4c 	vmov.f32	s14, s24
d0051cbc:	eeb0 1a6a 	vmov.f32	s2, s21
d0051cc0:	feba 8a67 	vrintp.f32	s16, s15
d0051cc4:	eebd 8ac8 	vcvt.s32.f32	s16, s16
d0051cc8:	fefa 9a41 	vrintp.f32	s19, s2
d0051ccc:	f240 13df 	movw	r3, #479	; 0x1df
d0051cd0:	ee18 ca10 	vmov	ip, s16
d0051cd4:	eebd 8ae9 	vcvt.s32.f32	s16, s19
d0051cd8:	f10c 3cff 	add.w	ip, ip, #4294967295	; 0xffffffff
d0051cdc:	ee18 5a10 	vmov	r5, s16
d0051ce0:	459c      	cmp	ip, r3
d0051ce2:	ea25 75e5 	bic.w	r5, r5, r5, asr #31
d0051ce6:	bfa8      	it	ge
d0051ce8:	469c      	movge	ip, r3
d0051cea:	45ac      	cmp	ip, r5
d0051cec:	f280 80f8 	bge.w	d0051ee0 <fillTriangleFlat+0x6cc>
d0051cf0:	f10b 0b01 	add.w	fp, fp, #1
d0051cf4:	ee3b ba20 	vadd.f32	s22, s22, s1
d0051cf8:	ee3d da28 	vadd.f32	s26, s26, s17
d0051cfc:	45d3      	cmp	fp, sl
d0051cfe:	ee7c ca89 	vadd.f32	s25, s25, s18
d0051d02:	ee7a aa8a 	vadd.f32	s21, s21, s20
d0051d06:	ee3c ca0e 	vadd.f32	s24, s24, s28
d0051d0a:	ee7b baae 	vadd.f32	s23, s23, s29
d0051d0e:	f43f aefa 	beq.w	d0051b06 <fillTriangleFlat+0x2f2>
d0051d12:	eeb4 baea 	vcmpe.f32	s22, s21
d0051d16:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051d1a:	dcc5      	bgt.n	d0051ca8 <fillTriangleFlat+0x494>
d0051d1c:	eef0 3a6b 	vmov.f32	s7, s23
d0051d20:	eeb0 4a4c 	vmov.f32	s8, s24
d0051d24:	eef0 7a6a 	vmov.f32	s15, s21
d0051d28:	eef0 6a6c 	vmov.f32	s13, s25
d0051d2c:	eeb0 7a4d 	vmov.f32	s14, s26
d0051d30:	eeb0 1a4b 	vmov.f32	s2, s22
d0051d34:	e7c4      	b.n	d0051cc0 <fillTriangleFlat+0x4ac>
d0051d36:	eeb0 1a47 	vmov.f32	s2, s14
d0051d3a:	eef0 1a48 	vmov.f32	s3, s16
d0051d3e:	eeb0 2a64 	vmov.f32	s4, s9
d0051d42:	eeb0 5a46 	vmov.f32	s10, s12
d0051d46:	eeb0 7a63 	vmov.f32	s14, s7
d0051d4a:	eeb0 8a62 	vmov.f32	s16, s5
d0051d4e:	eef0 4a66 	vmov.f32	s9, s13
d0051d52:	eeb0 6a67 	vmov.f32	s12, s15
d0051d56:	eef0 3a41 	vmov.f32	s7, s2
d0051d5a:	eef0 2a61 	vmov.f32	s5, s3
d0051d5e:	eef0 6a42 	vmov.f32	s13, s4
d0051d62:	eef0 7a45 	vmov.f32	s15, s10
d0051d66:	e5cf      	b.n	d0051908 <fillTriangleFlat+0xf4>
d0051d68:	eeb0 1a47 	vmov.f32	s2, s14
d0051d6c:	eef0 1a48 	vmov.f32	s3, s16
d0051d70:	eeb0 2a64 	vmov.f32	s4, s9
d0051d74:	eeb0 5a46 	vmov.f32	s10, s12
d0051d78:	eeb0 7a65 	vmov.f32	s14, s11
d0051d7c:	eeb0 8a40 	vmov.f32	s16, s0
d0051d80:	eef0 4a43 	vmov.f32	s9, s6
d0051d84:	eeb0 6a44 	vmov.f32	s12, s8
d0051d88:	eef0 5a41 	vmov.f32	s11, s2
d0051d8c:	eeb0 0a61 	vmov.f32	s0, s3
d0051d90:	eeb0 3a42 	vmov.f32	s6, s4
d0051d94:	eeb0 4a45 	vmov.f32	s8, s10
d0051d98:	e5b6      	b.n	d0051908 <fillTriangleFlat+0xf4>
d0051d9a:	ee76 6ae3 	vsub.f32	s13, s13, s7
d0051d9e:	eef4 6ae9 	vcmpe.f32	s13, s19
d0051da2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051da6:	f340 8156 	ble.w	d0052056 <fillTriangleFlat+0x842>
d0051daa:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0051dae:	ee72 2ae4 	vsub.f32	s5, s5, s9
d0051db2:	ee7a aac3 	vsub.f32	s21, s21, s6
d0051db6:	eec7 baa6 	vdiv.f32	s23, s15, s13
d0051dba:	ee07 5a90 	vmov	s15, r5
d0051dbe:	ee71 3ae3 	vsub.f32	s7, s3, s7
d0051dc2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051dc6:	ee77 3aa3 	vadd.f32	s7, s15, s7
d0051dca:	ee62 2aab 	vmul.f32	s5, s5, s23
d0051dce:	ee6a aaab 	vmul.f32	s21, s21, s23
d0051dd2:	eee3 4aa2 	vfma.f32	s9, s7, s5
d0051dd6:	eea3 3aaa 	vfma.f32	s6, s7, s21
d0051dda:	ebcb 190b 	rsb	r9, fp, fp, lsl #4
d0051dde:	4b5f      	ldr	r3, [pc, #380]	; (d0051f5c <fillTriangleFlat+0x748>)
d0051de0:	eb05 0885 	add.w	r8, r5, r5, lsl #2
d0051de4:	9a02      	ldr	r2, [sp, #8]
d0051de6:	681b      	ldr	r3, [r3, #0]
d0051de8:	eb02 1949 	add.w	r9, r2, r9, lsl #5
d0051dec:	eb0b 1888 	add.w	r8, fp, r8, lsl #6
d0051df0:	44a9      	add	r9, r5
d0051df2:	4498      	add	r8, r3
d0051df4:	9b01      	ldr	r3, [sp, #4]
d0051df6:	eb03 0949 	add.w	r9, r3, r9, lsl #1
d0051dfa:	e011      	b.n	d0051e20 <fillTriangleFlat+0x60c>
d0051dfc:	ee07 1a90 	vmov	s15, r1
d0051e00:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0051e04:	eb09 0941 	add.w	r9, r9, r1, lsl #1
d0051e08:	440d      	add	r5, r1
d0051e0a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051e0e:	eb08 1883 	add.w	r8, r8, r3, lsl #6
d0051e12:	eee7 4aa2 	vfma.f32	s9, s15, s5
d0051e16:	eea7 3aaa 	vfma.f32	s6, s15, s21
d0051e1a:	45ac      	cmp	ip, r5
d0051e1c:	f6ff ae51 	blt.w	d0051ac2 <fillTriangleFlat+0x2ae>
d0051e20:	ebac 0605 	sub.w	r6, ip, r5
d0051e24:	eef4 4aca 	vcmpe.f32	s9, s20
d0051e28:	1c71      	adds	r1, r6, #1
d0051e2a:	2930      	cmp	r1, #48	; 0x30
d0051e2c:	bfa8      	it	ge
d0051e2e:	2130      	movge	r1, #48	; 0x30
d0051e30:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051e34:	d9e2      	bls.n	d0051dfc <fillTriangleFlat+0x5e8>
d0051e36:	2e00      	cmp	r6, #0
d0051e38:	eec3 6a24 	vdiv.f32	s13, s6, s9
d0051e3c:	dd4c      	ble.n	d0051ed8 <fillTriangleFlat+0x6c4>
d0051e3e:	1e4b      	subs	r3, r1, #1
d0051e40:	ee07 3a90 	vmov	s15, r3
d0051e44:	eef0 3a64 	vmov.f32	s7, s9
d0051e48:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051e4c:	eee7 3aa2 	vfma.f32	s7, s15, s5
d0051e50:	eef4 3aca 	vcmpe.f32	s7, s20
d0051e54:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051e58:	dd3f      	ble.n	d0051eda <fillTriangleFlat+0x6c6>
d0051e5a:	eeb0 ca43 	vmov.f32	s24, s6
d0051e5e:	eea7 caaa 	vfma.f32	s24, s15, s21
d0051e62:	eecc ba23 	vdiv.f32	s23, s24, s7
d0051e66:	ee7b bae6 	vsub.f32	s23, s23, s13
d0051e6a:	eecb 3aa7 	vdiv.f32	s7, s23, s15
d0051e6e:	f1a9 0002 	sub.w	r0, r9, #2
d0051e72:	2300      	movs	r3, #0
d0051e74:	fec6 7a82 	vmaxnm.f32	s15, s13, s4
d0051e78:	fec7 7ac1 	vminnm.f32	s15, s15, s2
d0051e7c:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0051e80:	f830 4f02 	ldrh.w	r4, [r0, #2]!
d0051e84:	3301      	adds	r3, #1
d0051e86:	ee77 7aa1 	vadd.f32	s15, s15, s3
d0051e8a:	ea4f 1a82 	mov.w	sl, r2, lsl #6
d0051e8e:	ee76 6aa3 	vadd.f32	s13, s13, s7
d0051e92:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0051e96:	ee17 2a90 	vmov	r2, s15
d0051e9a:	b292      	uxth	r2, r2
d0051e9c:	4294      	cmp	r4, r2
d0051e9e:	d902      	bls.n	d0051ea6 <fillTriangleFlat+0x692>
d0051ea0:	8002      	strh	r2, [r0, #0]
d0051ea2:	f808 700a 	strb.w	r7, [r8, sl]
d0051ea6:	4299      	cmp	r1, r3
d0051ea8:	dce4      	bgt.n	d0051e74 <fillTriangleFlat+0x660>
d0051eaa:	2e00      	cmp	r6, #0
d0051eac:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0051eb0:	ea4f 0241 	mov.w	r2, r1, lsl #1
d0051eb4:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0051eb8:	bfbc      	itt	lt
d0051eba:	2202      	movlt	r2, #2
d0051ebc:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0051ec0:	4491      	add	r9, r2
d0051ec2:	4498      	add	r8, r3
d0051ec4:	ee07 1a90 	vmov	s15, r1
d0051ec8:	440d      	add	r5, r1
d0051eca:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051ece:	eee7 4aa2 	vfma.f32	s9, s15, s5
d0051ed2:	eea7 3aaa 	vfma.f32	s6, s15, s21
d0051ed6:	e7a0      	b.n	d0051e1a <fillTriangleFlat+0x606>
d0051ed8:	d1f4      	bne.n	d0051ec4 <fillTriangleFlat+0x6b0>
d0051eda:	eef0 3a42 	vmov.f32	s7, s4
d0051ede:	e7c6      	b.n	d0051e6e <fillTriangleFlat+0x65a>
d0051ee0:	ee77 7ac1 	vsub.f32	s15, s15, s2
d0051ee4:	ed9f 8a1e 	vldr	s16, [pc, #120]	; d0051f60 <fillTriangleFlat+0x74c>
d0051ee8:	eef4 7ac8 	vcmpe.f32	s15, s16
d0051eec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051ef0:	f340 80ac 	ble.w	d005204c <fillTriangleFlat+0x838>
d0051ef4:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0051ef8:	ee34 4a47 	vsub.f32	s8, s8, s14
d0051efc:	ee73 3ae6 	vsub.f32	s7, s7, s13
d0051f00:	ee89 8aa7 	vdiv.f32	s16, s19, s15
d0051f04:	ee07 5a90 	vmov	s15, r5
d0051f08:	ee32 1a41 	vsub.f32	s2, s4, s2
d0051f0c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051f10:	ee37 1a81 	vadd.f32	s2, s15, s2
d0051f14:	ee24 4a08 	vmul.f32	s8, s8, s16
d0051f18:	ee63 3a88 	vmul.f32	s7, s7, s16
d0051f1c:	eea1 7a04 	vfma.f32	s14, s2, s8
d0051f20:	eee1 6a23 	vfma.f32	s13, s2, s7
d0051f24:	ebcb 180b 	rsb	r8, fp, fp, lsl #4
d0051f28:	4b0c      	ldr	r3, [pc, #48]	; (d0051f5c <fillTriangleFlat+0x748>)
d0051f2a:	eb05 0e85 	add.w	lr, r5, r5, lsl #2
d0051f2e:	9a06      	ldr	r2, [sp, #24]
d0051f30:	681b      	ldr	r3, [r3, #0]
d0051f32:	eb02 1848 	add.w	r8, r2, r8, lsl #5
d0051f36:	eb0b 1e8e 	add.w	lr, fp, lr, lsl #6
d0051f3a:	44a8      	add	r8, r5
d0051f3c:	449e      	add	lr, r3
d0051f3e:	9b05      	ldr	r3, [sp, #20]
d0051f40:	eb03 0848 	add.w	r8, r3, r8, lsl #1
d0051f44:	e022      	b.n	d0051f8c <fillTriangleFlat+0x778>
d0051f46:	bf00      	nop
d0051f48:	d005b784 	.word	0xd005b784
d0051f4c:	d005b780 	.word	0xd005b780
d0051f50:	d005b788 	.word	0xd005b788
d0051f54:	33d6bf95 	.word	0x33d6bf95
d0051f58:	477fff00 	.word	0x477fff00
d0051f5c:	d00f5aa4 	.word	0xd00f5aa4
d0051f60:	38d1b717 	.word	0x38d1b717
d0051f64:	00000000 	.word	0x00000000
d0051f68:	ee07 1a90 	vmov	s15, r1
d0051f6c:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0051f70:	eb08 0841 	add.w	r8, r8, r1, lsl #1
d0051f74:	440d      	add	r5, r1
d0051f76:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051f7a:	eb0e 1e83 	add.w	lr, lr, r3, lsl #6
d0051f7e:	eea7 7a84 	vfma.f32	s14, s15, s8
d0051f82:	eee7 6aa3 	vfma.f32	s13, s15, s7
d0051f86:	4565      	cmp	r5, ip
d0051f88:	f73f aeb2 	bgt.w	d0051cf0 <fillTriangleFlat+0x4dc>
d0051f8c:	ebac 0605 	sub.w	r6, ip, r5
d0051f90:	eeb4 7aed 	vcmpe.f32	s14, s27
d0051f94:	1c71      	adds	r1, r6, #1
d0051f96:	2930      	cmp	r1, #48	; 0x30
d0051f98:	bfa8      	it	ge
d0051f9a:	2130      	movge	r1, #48	; 0x30
d0051f9c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051fa0:	d9e2      	bls.n	d0051f68 <fillTriangleFlat+0x754>
d0051fa2:	2e00      	cmp	r6, #0
d0051fa4:	ee86 1a87 	vdiv.f32	s2, s13, s14
d0051fa8:	dd4c      	ble.n	d0052044 <fillTriangleFlat+0x830>
d0051faa:	1e4b      	subs	r3, r1, #1
d0051fac:	ee07 3a90 	vmov	s15, r3
d0051fb0:	eeb0 8a47 	vmov.f32	s16, s14
d0051fb4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051fb8:	eea7 8a84 	vfma.f32	s16, s15, s8
d0051fbc:	eeb4 8aed 	vcmpe.f32	s16, s27
d0051fc0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051fc4:	dd3f      	ble.n	d0052046 <fillTriangleFlat+0x832>
d0051fc6:	eeb0 fa66 	vmov.f32	s30, s13
d0051fca:	eea7 faa3 	vfma.f32	s30, s15, s7
d0051fce:	eecf 9a08 	vdiv.f32	s19, s30, s16
d0051fd2:	ee79 9ac1 	vsub.f32	s19, s19, s2
d0051fd6:	ee89 8aa7 	vdiv.f32	s16, s19, s15
d0051fda:	f1a8 0002 	sub.w	r0, r8, #2
d0051fde:	2200      	movs	r2, #0
d0051fe0:	fec1 7a22 	vmaxnm.f32	s15, s2, s5
d0051fe4:	fec7 7ae1 	vminnm.f32	s15, s15, s3
d0051fe8:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0051fec:	f830 4f02 	ldrh.w	r4, [r0, #2]!
d0051ff0:	3201      	adds	r2, #1
d0051ff2:	ee77 7a82 	vadd.f32	s15, s15, s4
d0051ff6:	ea4f 1983 	mov.w	r9, r3, lsl #6
d0051ffa:	ee31 1a08 	vadd.f32	s2, s2, s16
d0051ffe:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0052002:	ee17 3a90 	vmov	r3, s15
d0052006:	b29b      	uxth	r3, r3
d0052008:	429c      	cmp	r4, r3
d005200a:	d902      	bls.n	d0052012 <fillTriangleFlat+0x7fe>
d005200c:	8003      	strh	r3, [r0, #0]
d005200e:	f80e 7009 	strb.w	r7, [lr, r9]
d0052012:	428a      	cmp	r2, r1
d0052014:	dbe4      	blt.n	d0051fe0 <fillTriangleFlat+0x7cc>
d0052016:	2e00      	cmp	r6, #0
d0052018:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d005201c:	ea4f 0241 	mov.w	r2, r1, lsl #1
d0052020:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0052024:	bfbc      	itt	lt
d0052026:	2202      	movlt	r2, #2
d0052028:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d005202c:	4490      	add	r8, r2
d005202e:	449e      	add	lr, r3
d0052030:	ee07 1a90 	vmov	s15, r1
d0052034:	440d      	add	r5, r1
d0052036:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005203a:	eea7 7a84 	vfma.f32	s14, s15, s8
d005203e:	eee7 6aa3 	vfma.f32	s13, s15, s7
d0052042:	e7a0      	b.n	d0051f86 <fillTriangleFlat+0x772>
d0052044:	d1f4      	bne.n	d0052030 <fillTriangleFlat+0x81c>
d0052046:	eeb0 8a62 	vmov.f32	s16, s5
d005204a:	e7c6      	b.n	d0051fda <fillTriangleFlat+0x7c6>
d005204c:	eef0 3a62 	vmov.f32	s7, s5
d0052050:	eeb0 4a62 	vmov.f32	s8, s5
d0052054:	e766      	b.n	d0051f24 <fillTriangleFlat+0x710>
d0052056:	eef0 aa42 	vmov.f32	s21, s4
d005205a:	eef0 2a42 	vmov.f32	s5, s4
d005205e:	e6bc      	b.n	d0051dda <fillTriangleFlat+0x5c6>
d0052060:	ed1f 5a40 	vldr	s10, [pc, #-256]	; d0051f64 <fillTriangleFlat+0x750>
d0052064:	eef0 fa45 	vmov.f32	s31, s10
d0052068:	ed8d 5a04 	vstr	s10, [sp, #16]
d005206c:	e5c4      	b.n	d0051bf8 <fillTriangleFlat+0x3e4>
d005206e:	ed5f 7a43 	vldr	s15, [pc, #-268]	; d0051f64 <fillTriangleFlat+0x750>
d0052072:	eef0 ea67 	vmov.f32	s29, s15
d0052076:	eef0 9a67 	vmov.f32	s19, s15
d005207a:	eeb0 aa67 	vmov.f32	s20, s15
d005207e:	e5bb      	b.n	d0051bf8 <fillTriangleFlat+0x3e4>

d0052080 <fillTriangleDitherBayer>:
d0052080:	eddf 7ae2 	vldr	s15, [pc, #904]	; d005240c <fillTriangleDitherBayer+0x38c>
d0052084:	eef4 0ae7 	vcmpe.f32	s1, s15
d0052088:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d005208c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052090:	eeb4 1ae7 	vcmpe.f32	s2, s15
d0052094:	ed2d 8b10 	vpush	{d8-d15}
d0052098:	b095      	sub	sp, #84	; 0x54
d005209a:	9202      	str	r2, [sp, #8]
d005209c:	bf94      	ite	ls
d005209e:	2201      	movls	r2, #1
d00520a0:	2200      	movhi	r2, #0
d00520a2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00520a6:	9303      	str	r3, [sp, #12]
d00520a8:	f8bd 40c0 	ldrh.w	r4, [sp, #192]	; 0xc0
d00520ac:	bf98      	it	ls
d00520ae:	f042 0201 	orrls.w	r2, r2, #1
d00520b2:	f89d 30cc 	ldrb.w	r3, [sp, #204]	; 0xcc
d00520b6:	e9cd 0100 	strd	r0, r1, [sp]
d00520ba:	f8bd 00c4 	ldrh.w	r0, [sp, #196]	; 0xc4
d00520be:	f8bd 10c8 	ldrh.w	r1, [sp, #200]	; 0xc8
d00520c2:	2a00      	cmp	r2, #0
d00520c4:	f040 819d 	bne.w	d0052402 <fillTriangleDitherBayer+0x382>
d00520c8:	eeb4 0a67 	vcmp.f32	s0, s15
d00520cc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00520d0:	f240 8197 	bls.w	d0052402 <fillTriangleDitherBayer+0x382>
d00520d4:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00520d8:	eddf 6ad2 	vldr	s13, [pc, #840]	; d0052424 <fillTriangleDitherBayer+0x3a4>
d00520dc:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d00520e0:	fec1 1aa6 	vmaxnm.f32	s3, s3, s13
d00520e4:	ee06 4a90 	vmov	s13, r4
d00520e8:	ee87 8a80 	vdiv.f32	s16, s15, s0
d00520ec:	fec1 1ac7 	vminnm.f32	s3, s3, s14
d00520f0:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d00520f4:	ee87 7a81 	vdiv.f32	s14, s15, s2
d00520f8:	eefd 7ae1 	vcvt.s32.f32	s15, s3
d00520fc:	eef8 5a66 	vcvt.f32.u32	s11, s13
d0052100:	ee17 2a90 	vmov	r2, s15
d0052104:	ee07 0a90 	vmov	s15, r0
d0052108:	ee65 5a88 	vmul.f32	s11, s11, s16
d005210c:	eeb8 4a67 	vcvt.f32.u32	s8, s15
d0052110:	ee07 1a90 	vmov	s15, r1
d0052114:	1c51      	adds	r1, r2, #1
d0052116:	eef8 7a67 	vcvt.f32.u32	s15, s15
d005211a:	2905      	cmp	r1, #5
d005211c:	ee24 4a00 	vmul.f32	s8, s8, s0
d0052120:	bfa8      	it	ge
d0052122:	2105      	movge	r1, #5
d0052124:	2a04      	cmp	r2, #4
d0052126:	ee27 6a87 	vmul.f32	s12, s15, s14
d005212a:	f300 84ad 	bgt.w	d0052a88 <fillTriangleDitherBayer+0xa08>
d005212e:	f003 030f 	and.w	r3, r3, #15
d0052132:	2a03      	cmp	r2, #3
d0052134:	f103 0320 	add.w	r3, r3, #32
d0052138:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d005213c:	fa5f fb80 	uxtb.w	fp, r0
d0052140:	f300 84a4 	bgt.w	d0052a8c <fillTriangleDitherBayer+0xa0c>
d0052144:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d0052148:	b2db      	uxtb	r3, r3
d005214a:	9304      	str	r3, [sp, #16]
d005214c:	eddd 7a01 	vldr	s15, [sp, #4]
d0052150:	eeb8 3ae7 	vcvt.f32.s32	s6, s15
d0052154:	eddd 7a03 	vldr	s15, [sp, #12]
d0052158:	eeb8 2ae7 	vcvt.f32.s32	s4, s15
d005215c:	eddd 7a00 	vldr	s15, [sp]
d0052160:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d0052164:	eddd 7a02 	vldr	s15, [sp, #8]
d0052168:	eeb4 3ac2 	vcmpe.f32	s6, s4
d005216c:	eef8 2ae7 	vcvt.f32.s32	s5, s15
d0052170:	eddd 7a2e 	vldr	s15, [sp, #184]	; 0xb8
d0052174:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052178:	eef8 3ae7 	vcvt.f32.s32	s7, s15
d005217c:	eddd 7a2f 	vldr	s15, [sp, #188]	; 0xbc
d0052180:	eeb8 5ae7 	vcvt.f32.s32	s10, s15
d0052184:	f300 8150 	bgt.w	d0052428 <fillTriangleDitherBayer+0x3a8>
d0052188:	eeb4 3ac5 	vcmpe.f32	s6, s10
d005218c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052190:	f300 825a 	bgt.w	d0052648 <fillTriangleDitherBayer+0x5c8>
d0052194:	eeb4 5ac2 	vcmpe.f32	s10, s4
d0052198:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005219c:	d517      	bpl.n	d00521ce <fillTriangleDitherBayer+0x14e>
d005219e:	eef0 0a44 	vmov.f32	s1, s8
d00521a2:	eeb0 1a40 	vmov.f32	s2, s0
d00521a6:	eef0 6a42 	vmov.f32	s13, s4
d00521aa:	eef0 7a62 	vmov.f32	s15, s5
d00521ae:	eeb0 4a46 	vmov.f32	s8, s12
d00521b2:	eeb0 0a47 	vmov.f32	s0, s14
d00521b6:	eeb0 2a45 	vmov.f32	s4, s10
d00521ba:	eef0 2a63 	vmov.f32	s5, s7
d00521be:	eeb0 6a60 	vmov.f32	s12, s1
d00521c2:	eeb0 7a41 	vmov.f32	s14, s2
d00521c6:	eeb0 5a66 	vmov.f32	s10, s13
d00521ca:	eef0 3a67 	vmov.f32	s7, s15
d00521ce:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00521d2:	ee73 6a27 	vadd.f32	s13, s6, s15
d00521d6:	ee75 7a27 	vadd.f32	s15, s10, s15
d00521da:	eefd 6ae6 	vcvt.s32.f32	s13, s13
d00521de:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00521e2:	ee16 3a90 	vmov	r3, s13
d00521e6:	ee17 1a90 	vmov	r1, s15
d00521ea:	428b      	cmp	r3, r1
d00521ec:	f000 8109 	beq.w	d0052402 <fillTriangleDitherBayer+0x382>
d00521f0:	ee75 7a43 	vsub.f32	s15, s10, s6
d00521f4:	eddf 6a85 	vldr	s13, [pc, #532]	; d005240c <fillTriangleDitherBayer+0x38c>
d00521f8:	eef4 7ae6 	vcmpe.f32	s15, s13
d00521fc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052200:	f240 80ff 	bls.w	d0052402 <fillTriangleDitherBayer+0x382>
d0052204:	eeb7 aa00 	vmov.f32	s20, #112	; 0x3f800000  1.0
d0052208:	ee72 9a43 	vsub.f32	s19, s4, s6
d005220c:	ee73 0ae4 	vsub.f32	s1, s7, s9
d0052210:	ee8a 1a27 	vdiv.f32	s2, s20, s15
d0052214:	eef4 9ae6 	vcmpe.f32	s19, s13
d0052218:	ee77 8a48 	vsub.f32	s17, s14, s16
d005221c:	ee36 9a65 	vsub.f32	s18, s12, s11
d0052220:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052224:	ee60 0a81 	vmul.f32	s1, s1, s2
d0052228:	ee68 8a81 	vmul.f32	s17, s17, s2
d005222c:	ee29 9a01 	vmul.f32	s18, s18, s2
d0052230:	f300 8119 	bgt.w	d0052466 <fillTriangleDitherBayer+0x3e6>
d0052234:	ee07 2a90 	vmov	s15, r2
d0052238:	ee35 1a42 	vsub.f32	s2, s10, s4
d005223c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052240:	eeb4 1ae6 	vcmpe.f32	s2, s13
d0052244:	ed8d 1a08 	vstr	s2, [sp, #32]
d0052248:	ee71 1ae7 	vsub.f32	s3, s3, s15
d005224c:	eef0 7a61 	vmov.f32	s15, s3
d0052250:	eefe 7ace 	vcvt.s32.f32	s15, s15, #4
d0052254:	ee17 3a90 	vmov	r3, s15
d0052258:	f383 0204 	usat	r2, #4, r3
d005225c:	9202      	str	r2, [sp, #8]
d005225e:	9a04      	ldr	r2, [sp, #16]
d0052260:	4593      	cmp	fp, r2
d0052262:	bf18      	it	ne
d0052264:	2b00      	cmpne	r3, #0
d0052266:	bfd4      	ite	le
d0052268:	2301      	movle	r3, #1
d005226a:	2300      	movgt	r3, #0
d005226c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052270:	9300      	str	r3, [sp, #0]
d0052272:	f340 80c6 	ble.w	d0052402 <fillTriangleDitherBayer+0x382>
d0052276:	ed9f ea6b 	vldr	s28, [pc, #428]	; d0052424 <fillTriangleDitherBayer+0x3a4>
d005227a:	eeb0 aa4e 	vmov.f32	s20, s28
d005227e:	eeb0 ca4e 	vmov.f32	s24, s28
d0052282:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0052286:	eddd 6a08 	vldr	s13, [sp, #32]
d005228a:	eddf 1a60 	vldr	s3, [pc, #384]	; d005240c <fillTriangleDitherBayer+0x38c>
d005228e:	ee73 3ae2 	vsub.f32	s7, s7, s5
d0052292:	ee37 7a40 	vsub.f32	s14, s14, s0
d0052296:	eec7 6aa6 	vdiv.f32	s13, s15, s13
d005229a:	eef4 9ae1 	vcmpe.f32	s19, s3
d005229e:	ee76 7a44 	vsub.f32	s15, s12, s8
d00522a2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00522a6:	ee23 6aa6 	vmul.f32	s12, s7, s13
d00522aa:	ee27 7a26 	vmul.f32	s14, s14, s13
d00522ae:	ee67 faa6 	vmul.f32	s31, s15, s13
d00522b2:	ed8d 6a0d 	vstr	s12, [sp, #52]	; 0x34
d00522b6:	ed8d 7a0e 	vstr	s14, [sp, #56]	; 0x38
d00522ba:	f300 810d 	bgt.w	d00524d8 <fillTriangleDitherBayer+0x458>
d00522be:	4a54      	ldr	r2, [pc, #336]	; (d0052410 <fillTriangleDitherBayer+0x390>)
d00522c0:	eefd 7ac2 	vcvt.s32.f32	s15, s4
d00522c4:	4b53      	ldr	r3, [pc, #332]	; (d0052414 <fillTriangleDitherBayer+0x394>)
d00522c6:	6812      	ldr	r2, [r2, #0]
d00522c8:	681b      	ldr	r3, [r3, #0]
d00522ca:	edcd 7a0b 	vstr	s15, [sp, #44]	; 0x2c
d00522ce:	920a      	str	r2, [sp, #40]	; 0x28
d00522d0:	930c      	str	r3, [sp, #48]	; 0x30
d00522d2:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d00522d6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d00522d8:	980a      	ldr	r0, [sp, #40]	; 0x28
d00522da:	990c      	ldr	r1, [sp, #48]	; 0x30
d00522dc:	ee17 3a90 	vmov	r3, s15
d00522e0:	4282      	cmp	r2, r0
d00522e2:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
d00522e6:	bfb8      	it	lt
d00522e8:	4602      	movlt	r2, r0
d00522ea:	428b      	cmp	r3, r1
d00522ec:	9201      	str	r2, [sp, #4]
d00522ee:	bfa8      	it	ge
d00522f0:	460b      	movge	r3, r1
d00522f2:	4293      	cmp	r3, r2
d00522f4:	f2c0 8085 	blt.w	d0052402 <fillTriangleDitherBayer+0x382>
d00522f8:	ee07 2a90 	vmov	s15, r2
d00522fc:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d0052300:	3301      	adds	r3, #1
d0052302:	eba0 1200 	sub.w	r2, r0, r0, lsl #4
d0052306:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005230a:	4943      	ldr	r1, [pc, #268]	; (d0052418 <fillTriangleDitherBayer+0x398>)
d005230c:	0152      	lsls	r2, r2, #5
d005230e:	ed9d aa0d 	vldr	s20, [sp, #52]	; 0x34
d0052312:	eddd aa0e 	vldr	s21, [sp, #56]	; 0x38
d0052316:	ee77 7a87 	vadd.f32	s15, s15, s14
d005231a:	9307      	str	r3, [sp, #28]
d005231c:	680b      	ldr	r3, [r1, #0]
d005231e:	ed9f 1a3b 	vldr	s2, [pc, #236]	; d005240c <fillTriangleDitherBayer+0x38c>
d0052322:	ee37 3ac3 	vsub.f32	s6, s15, s6
d0052326:	eddf 1a3d 	vldr	s3, [pc, #244]	; d005241c <fillTriangleDitherBayer+0x39c>
d005232a:	ee37 2ac2 	vsub.f32	s4, s15, s4
d005232e:	ed9f 6a3d 	vldr	s12, [pc, #244]	; d0052424 <fillTriangleDitherBayer+0x3a4>
d0052332:	eddf 3a3b 	vldr	s7, [pc, #236]	; d0052420 <fillTriangleDitherBayer+0x3a0>
d0052336:	eee0 4a83 	vfma.f32	s9, s1, s6
d005233a:	920a      	str	r2, [sp, #40]	; 0x28
d005233c:	eea8 8a83 	vfma.f32	s16, s17, s6
d0052340:	9309      	str	r3, [sp, #36]	; 0x24
d0052342:	eee9 5a03 	vfma.f32	s11, s18, s6
d0052346:	eee2 2a0a 	vfma.f32	s5, s4, s20
d005234a:	eeaa 0a82 	vfma.f32	s0, s21, s4
d005234e:	eeaf 4a82 	vfma.f32	s8, s31, s4
d0052352:	e034      	b.n	d00523be <fillTriangleDitherBayer+0x33e>
d0052354:	eeb0 ba65 	vmov.f32	s22, s11
d0052358:	eef0 9a48 	vmov.f32	s19, s16
d005235c:	eeb0 7a64 	vmov.f32	s14, s9
d0052360:	eeb0 2a44 	vmov.f32	s4, s8
d0052364:	eeb0 3a40 	vmov.f32	s6, s0
d0052368:	eef0 6a62 	vmov.f32	s13, s5
d005236c:	fefa 7a47 	vrintp.f32	s15, s14
d0052370:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0052374:	f240 13df 	movw	r3, #479	; 0x1df
d0052378:	ee17 7a90 	vmov	r7, s15
d005237c:	fefa 7a66 	vrintp.f32	s15, s13
d0052380:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0052384:	3f01      	subs	r7, #1
d0052386:	ee17 5a90 	vmov	r5, s15
d005238a:	429f      	cmp	r7, r3
d005238c:	ea25 75e5 	bic.w	r5, r5, r5, asr #31
d0052390:	bfa8      	it	ge
d0052392:	461f      	movge	r7, r3
d0052394:	42af      	cmp	r7, r5
d0052396:	f280 8170 	bge.w	d005267a <fillTriangleDitherBayer+0x5fa>
d005239a:	9b01      	ldr	r3, [sp, #4]
d005239c:	ee74 4aa0 	vadd.f32	s9, s9, s1
d00523a0:	9a07      	ldr	r2, [sp, #28]
d00523a2:	ee38 8a28 	vadd.f32	s16, s16, s17
d00523a6:	3301      	adds	r3, #1
d00523a8:	ee75 5a89 	vadd.f32	s11, s11, s18
d00523ac:	ee72 2a8a 	vadd.f32	s5, s5, s20
d00523b0:	4293      	cmp	r3, r2
d00523b2:	ee30 0a2a 	vadd.f32	s0, s0, s21
d00523b6:	ee34 4a2f 	vadd.f32	s8, s8, s31
d00523ba:	9301      	str	r3, [sp, #4]
d00523bc:	d021      	beq.n	d0052402 <fillTriangleDitherBayer+0x382>
d00523be:	eef4 4ae2 	vcmpe.f32	s9, s5
d00523c2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00523c6:	dcc5      	bgt.n	d0052354 <fillTriangleDitherBayer+0x2d4>
d00523c8:	eeb0 ba44 	vmov.f32	s22, s8
d00523cc:	eef0 9a40 	vmov.f32	s19, s0
d00523d0:	eeb0 7a62 	vmov.f32	s14, s5
d00523d4:	eeb0 2a65 	vmov.f32	s4, s11
d00523d8:	eeb0 3a48 	vmov.f32	s6, s16
d00523dc:	eef0 6a64 	vmov.f32	s13, s9
d00523e0:	e7c4      	b.n	d005236c <fillTriangleDitherBayer+0x2ec>
d00523e2:	ed9d 5a11 	vldr	s10, [sp, #68]	; 0x44
d00523e6:	eddd 4a12 	vldr	s9, [sp, #72]	; 0x48
d00523ea:	eddd fa13 	vldr	s31, [sp, #76]	; 0x4c
d00523ee:	eddf 7a07 	vldr	s15, [pc, #28]	; d005240c <fillTriangleDitherBayer+0x38c>
d00523f2:	ed9d 7a08 	vldr	s14, [sp, #32]
d00523f6:	eeb4 7ae7 	vcmpe.f32	s14, s15
d00523fa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00523fe:	f73f af68 	bgt.w	d00522d2 <fillTriangleDitherBayer+0x252>
d0052402:	b015      	add	sp, #84	; 0x54
d0052404:	ecbd 8b10 	vpop	{d8-d15}
d0052408:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005240c:	38d1b717 	.word	0x38d1b717
d0052410:	d005b780 	.word	0xd005b780
d0052414:	d005b784 	.word	0xd005b784
d0052418:	d005b788 	.word	0xd005b788
d005241c:	33d6bf95 	.word	0x33d6bf95
d0052420:	477fff00 	.word	0x477fff00
d0052424:	00000000 	.word	0x00000000
d0052428:	eeb4 2ac5 	vcmpe.f32	s4, s10
d005242c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052430:	f340 80f1 	ble.w	d0052616 <fillTriangleDitherBayer+0x596>
d0052434:	eef0 0a46 	vmov.f32	s1, s12
d0052438:	eeb0 1a47 	vmov.f32	s2, s14
d005243c:	eef0 6a45 	vmov.f32	s13, s10
d0052440:	eef0 7a63 	vmov.f32	s15, s7
d0052444:	eeb0 6a65 	vmov.f32	s12, s11
d0052448:	eeb0 7a48 	vmov.f32	s14, s16
d005244c:	eeb0 5a43 	vmov.f32	s10, s6
d0052450:	eef0 3a64 	vmov.f32	s7, s9
d0052454:	eef0 5a60 	vmov.f32	s11, s1
d0052458:	eeb0 8a41 	vmov.f32	s16, s2
d005245c:	eeb0 3a66 	vmov.f32	s6, s13
d0052460:	eef0 4a67 	vmov.f32	s9, s15
d0052464:	e6b3      	b.n	d00521ce <fillTriangleDitherBayer+0x14e>
d0052466:	ee07 2a90 	vmov	s15, r2
d005246a:	ee8a 1a29 	vdiv.f32	s2, s20, s19
d005246e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052472:	ee72 aae4 	vsub.f32	s21, s5, s9
d0052476:	ee30 aa48 	vsub.f32	s20, s0, s16
d005247a:	ee71 1ae7 	vsub.f32	s3, s3, s15
d005247e:	ee34 ea65 	vsub.f32	s28, s8, s11
d0052482:	eef0 7a61 	vmov.f32	s15, s3
d0052486:	ee75 1a42 	vsub.f32	s3, s10, s4
d005248a:	eefe 7ace 	vcvt.s32.f32	s15, s15, #4
d005248e:	eef4 1ae6 	vcmpe.f32	s3, s13
d0052492:	edcd 1a08 	vstr	s3, [sp, #32]
d0052496:	ee2e ea01 	vmul.f32	s28, s28, s2
d005249a:	ee17 3a90 	vmov	r3, s15
d005249e:	ee6a 7a81 	vmul.f32	s15, s21, s2
d00524a2:	f383 0204 	usat	r2, #4, r3
d00524a6:	eeb0 ca67 	vmov.f32	s24, s15
d00524aa:	9202      	str	r2, [sp, #8]
d00524ac:	ee6a 7a01 	vmul.f32	s15, s20, s2
d00524b0:	9a04      	ldr	r2, [sp, #16]
d00524b2:	4593      	cmp	fp, r2
d00524b4:	bf18      	it	ne
d00524b6:	2b00      	cmpne	r3, #0
d00524b8:	eeb0 aa67 	vmov.f32	s20, s15
d00524bc:	bfd4      	ite	le
d00524be:	2301      	movle	r3, #1
d00524c0:	2300      	movgt	r3, #0
d00524c2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00524c6:	9300      	str	r3, [sp, #0]
d00524c8:	f73f aedb 	bgt.w	d0052282 <fillTriangleDitherBayer+0x202>
d00524cc:	ed5f fa2b 	vldr	s31, [pc, #-172]	; d0052424 <fillTriangleDitherBayer+0x3a4>
d00524d0:	edcd fa0e 	vstr	s31, [sp, #56]	; 0x38
d00524d4:	edcd fa0d 	vstr	s31, [sp, #52]	; 0x34
d00524d8:	eefd 7ac2 	vcvt.s32.f32	s15, s4
d00524dc:	4bde      	ldr	r3, [pc, #888]	; (d0052858 <fillTriangleDitherBayer+0x7d8>)
d00524de:	4adf      	ldr	r2, [pc, #892]	; (d005285c <fillTriangleDitherBayer+0x7dc>)
d00524e0:	6819      	ldr	r1, [r3, #0]
d00524e2:	ee17 3a90 	vmov	r3, s15
d00524e6:	edcd 7a0b 	vstr	s15, [sp, #44]	; 0x2c
d00524ea:	eefd 7ac3 	vcvt.s32.f32	s15, s6
d00524ee:	6810      	ldr	r0, [r2, #0]
d00524f0:	3b01      	subs	r3, #1
d00524f2:	910c      	str	r1, [sp, #48]	; 0x30
d00524f4:	900a      	str	r0, [sp, #40]	; 0x28
d00524f6:	ee17 2a90 	vmov	r2, s15
d00524fa:	428b      	cmp	r3, r1
d00524fc:	bfa8      	it	ge
d00524fe:	460b      	movge	r3, r1
d0052500:	4282      	cmp	r2, r0
d0052502:	bfb8      	it	lt
d0052504:	4602      	movlt	r2, r0
d0052506:	4293      	cmp	r3, r2
d0052508:	9201      	str	r2, [sp, #4]
d005250a:	f6ff af70 	blt.w	d00523ee <fillTriangleDitherBayer+0x36e>
d005250e:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0052512:	3301      	adds	r3, #1
d0052514:	eef0 aa64 	vmov.f32	s21, s9
d0052518:	49d1      	ldr	r1, [pc, #836]	; (d0052860 <fillTriangleDitherBayer+0x7e0>)
d005251a:	eba0 1200 	sub.w	r2, r0, r0, lsl #4
d005251e:	9307      	str	r3, [sp, #28]
d0052520:	ee37 7ac3 	vsub.f32	s14, s15, s6
d0052524:	eddd 7a01 	vldr	s15, [sp, #4]
d0052528:	680b      	ldr	r3, [r1, #0]
d005252a:	eeb0 ba64 	vmov.f32	s22, s9
d005252e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052532:	eddf bacc 	vldr	s23, [pc, #816]	; d0052864 <fillTriangleDitherBayer+0x7e4>
d0052536:	eef0 da48 	vmov.f32	s27, s16
d005253a:	930f      	str	r3, [sp, #60]	; 0x3c
d005253c:	eeb0 da65 	vmov.f32	s26, s11
d0052540:	0153      	lsls	r3, r2, #5
d0052542:	ee77 7a87 	vadd.f32	s15, s15, s14
d0052546:	ed9f 6ac8 	vldr	s12, [pc, #800]	; d0052868 <fillTriangleDitherBayer+0x7e8>
d005254a:	eef0 ea4c 	vmov.f32	s29, s24
d005254e:	ed9f 7ac7 	vldr	s14, [pc, #796]	; d005286c <fillTriangleDitherBayer+0x7ec>
d0052552:	eef0 ca48 	vmov.f32	s25, s16
d0052556:	9310      	str	r3, [sp, #64]	; 0x40
d0052558:	eee7 aa8c 	vfma.f32	s21, s15, s24
d005255c:	ed8d 5a11 	vstr	s10, [sp, #68]	; 0x44
d0052560:	eeb0 ca65 	vmov.f32	s24, s11
d0052564:	edcd 4a12 	vstr	s9, [sp, #72]	; 0x48
d0052568:	eea0 baa7 	vfma.f32	s22, s1, s15
d005256c:	edcd fa13 	vstr	s31, [sp, #76]	; 0x4c
d0052570:	eee8 daa7 	vfma.f32	s27, s17, s15
d0052574:	eea9 da27 	vfma.f32	s26, s18, s15
d0052578:	eee7 ca8a 	vfma.f32	s25, s15, s20
d005257c:	eea7 ca8e 	vfma.f32	s24, s15, s28
d0052580:	eeb0 fa4a 	vmov.f32	s30, s20
d0052584:	e035      	b.n	d00525f2 <fillTriangleDitherBayer+0x572>
d0052586:	eef0 1a4d 	vmov.f32	s3, s26
d005258a:	eef0 3a6d 	vmov.f32	s7, s27
d005258e:	eef0 7a4b 	vmov.f32	s15, s22
d0052592:	eef0 4a4c 	vmov.f32	s9, s24
d0052596:	eeb0 5a6c 	vmov.f32	s10, s25
d005259a:	eef0 6a6a 	vmov.f32	s13, s21
d005259e:	feba 1a67 	vrintp.f32	s2, s15
d00525a2:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d00525a6:	fefa 9a66 	vrintp.f32	s19, s13
d00525aa:	f240 13df 	movw	r3, #479	; 0x1df
d00525ae:	ee11 7a10 	vmov	r7, s2
d00525b2:	eebd 1ae9 	vcvt.s32.f32	s2, s19
d00525b6:	3f01      	subs	r7, #1
d00525b8:	ee11 4a10 	vmov	r4, s2
d00525bc:	429f      	cmp	r7, r3
d00525be:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d00525c2:	bfa8      	it	ge
d00525c4:	461f      	movge	r7, r3
d00525c6:	42a7      	cmp	r7, r4
d00525c8:	f280 8168 	bge.w	d005289c <fillTriangleDitherBayer+0x81c>
d00525cc:	9b01      	ldr	r3, [sp, #4]
d00525ce:	ee3b ba20 	vadd.f32	s22, s22, s1
d00525d2:	9a07      	ldr	r2, [sp, #28]
d00525d4:	ee7d daa8 	vadd.f32	s27, s27, s17
d00525d8:	3301      	adds	r3, #1
d00525da:	ee3d da09 	vadd.f32	s26, s26, s18
d00525de:	ee7a aaae 	vadd.f32	s21, s21, s29
d00525e2:	4293      	cmp	r3, r2
d00525e4:	ee7c ca8f 	vadd.f32	s25, s25, s30
d00525e8:	ee3c ca0e 	vadd.f32	s24, s24, s28
d00525ec:	9301      	str	r3, [sp, #4]
d00525ee:	f43f aef8 	beq.w	d00523e2 <fillTriangleDitherBayer+0x362>
d00525f2:	eeb4 baea 	vcmpe.f32	s22, s21
d00525f6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00525fa:	dcc4      	bgt.n	d0052586 <fillTriangleDitherBayer+0x506>
d00525fc:	eef0 1a4c 	vmov.f32	s3, s24
d0052600:	eef0 3a6c 	vmov.f32	s7, s25
d0052604:	eef0 7a6a 	vmov.f32	s15, s21
d0052608:	eef0 4a4d 	vmov.f32	s9, s26
d005260c:	eeb0 5a6d 	vmov.f32	s10, s27
d0052610:	eef0 6a4b 	vmov.f32	s13, s22
d0052614:	e7c3      	b.n	d005259e <fillTriangleDitherBayer+0x51e>
d0052616:	eef0 0a65 	vmov.f32	s1, s11
d005261a:	eeb0 1a48 	vmov.f32	s2, s16
d005261e:	eef0 6a43 	vmov.f32	s13, s6
d0052622:	eef0 7a64 	vmov.f32	s15, s9
d0052626:	eef0 5a44 	vmov.f32	s11, s8
d005262a:	eeb0 8a40 	vmov.f32	s16, s0
d005262e:	eeb0 3a42 	vmov.f32	s6, s4
d0052632:	eef0 4a62 	vmov.f32	s9, s5
d0052636:	eeb0 4a60 	vmov.f32	s8, s1
d005263a:	eeb0 0a41 	vmov.f32	s0, s2
d005263e:	eeb0 2a66 	vmov.f32	s4, s13
d0052642:	eef0 2a67 	vmov.f32	s5, s15
d0052646:	e5a5      	b.n	d0052194 <fillTriangleDitherBayer+0x114>
d0052648:	eef0 0a65 	vmov.f32	s1, s11
d005264c:	eeb0 1a48 	vmov.f32	s2, s16
d0052650:	eef0 6a43 	vmov.f32	s13, s6
d0052654:	eef0 7a64 	vmov.f32	s15, s9
d0052658:	eef0 5a46 	vmov.f32	s11, s12
d005265c:	eeb0 8a47 	vmov.f32	s16, s14
d0052660:	eeb0 3a45 	vmov.f32	s6, s10
d0052664:	eef0 4a63 	vmov.f32	s9, s7
d0052668:	eeb0 6a60 	vmov.f32	s12, s1
d005266c:	eeb0 7a41 	vmov.f32	s14, s2
d0052670:	eeb0 5a66 	vmov.f32	s10, s13
d0052674:	eef0 3a67 	vmov.f32	s7, s15
d0052678:	e58c      	b.n	d0052194 <fillTriangleDitherBayer+0x114>
d005267a:	ee37 7a66 	vsub.f32	s14, s14, s13
d005267e:	eeb4 7ac1 	vcmpe.f32	s14, s2
d0052682:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052686:	f340 8205 	ble.w	d0052a94 <fillTriangleDitherBayer+0xa14>
d005268a:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d005268e:	ee79 9ac3 	vsub.f32	s19, s19, s6
d0052692:	ee3b ba42 	vsub.f32	s22, s22, s4
d0052696:	ee87 5a87 	vdiv.f32	s10, s15, s14
d005269a:	ee07 5a10 	vmov	s14, r5
d005269e:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00526a2:	ee77 7ae6 	vsub.f32	s15, s15, s13
d00526a6:	eef8 6ac7 	vcvt.f32.s32	s13, s14
d00526aa:	ee76 6aa7 	vadd.f32	s13, s13, s15
d00526ae:	ee69 9a85 	vmul.f32	s19, s19, s10
d00526b2:	ee2b ba05 	vmul.f32	s22, s22, s10
d00526b6:	eea6 3aa9 	vfma.f32	s6, s13, s19
d00526ba:	eea6 2a8b 	vfma.f32	s4, s13, s22
d00526be:	9a01      	ldr	r2, [sp, #4]
d00526c0:	eb05 0e85 	add.w	lr, r5, r5, lsl #2
d00526c4:	4b6a      	ldr	r3, [pc, #424]	; (d0052870 <fillTriangleDitherBayer+0x7f0>)
d00526c6:	eeb6 5a00 	vmov.f32	s10, #96	; 0x3f000000  0.5
d00526ca:	ebc2 1a02 	rsb	sl, r2, r2, lsl #4
d00526ce:	990a      	ldr	r1, [sp, #40]	; 0x28
d00526d0:	eb01 1a4a 	add.w	sl, r1, sl, lsl #5
d00526d4:	6819      	ldr	r1, [r3, #0]
d00526d6:	eb02 138e 	add.w	r3, r2, lr, lsl #6
d00526da:	f002 0203 	and.w	r2, r2, #3
d00526de:	44aa      	add	sl, r5
d00526e0:	eb01 0e03 	add.w	lr, r1, r3
d00526e4:	0093      	lsls	r3, r2, #2
d00526e6:	9308      	str	r3, [sp, #32]
d00526e8:	9b09      	ldr	r3, [sp, #36]	; 0x24
d00526ea:	eb03 0a4a 	add.w	sl, r3, sl, lsl #1
d00526ee:	eba7 0905 	sub.w	r9, r7, r5
d00526f2:	eeb4 3ae1 	vcmpe.f32	s6, s3
d00526f6:	f109 0101 	add.w	r1, r9, #1
d00526fa:	2930      	cmp	r1, #48	; 0x30
d00526fc:	bfa8      	it	ge
d00526fe:	2130      	movge	r1, #48	; 0x30
d0052700:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052704:	d971      	bls.n	d00527ea <fillTriangleDitherBayer+0x76a>
d0052706:	f1b9 0f00 	cmp.w	r9, #0
d005270a:	ee82 7a03 	vdiv.f32	s14, s4, s6
d005270e:	dd7c      	ble.n	d005280a <fillTriangleDitherBayer+0x78a>
d0052710:	1e4b      	subs	r3, r1, #1
d0052712:	ee07 3a90 	vmov	s15, r3
d0052716:	eef0 6a43 	vmov.f32	s13, s6
d005271a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005271e:	eee7 6aa9 	vfma.f32	s13, s15, s19
d0052722:	eef4 6ae1 	vcmpe.f32	s13, s3
d0052726:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005272a:	f340 80a7 	ble.w	d005287c <fillTriangleDitherBayer+0x7fc>
d005272e:	eeb0 ca42 	vmov.f32	s24, s4
d0052732:	9b00      	ldr	r3, [sp, #0]
d0052734:	eea7 ca8b 	vfma.f32	s24, s15, s22
d0052738:	eecc ba26 	vdiv.f32	s23, s24, s13
d005273c:	ee7b bac7 	vsub.f32	s23, s23, s14
d0052740:	eecb 6aa7 	vdiv.f32	s13, s23, s15
d0052744:	2b00      	cmp	r3, #0
d0052746:	d168      	bne.n	d005281a <fillTriangleDitherBayer+0x79a>
d0052748:	f005 0303 	and.w	r3, r5, #3
d005274c:	f8cd 900c 	str.w	r9, [sp, #12]
d0052750:	f1aa 0602 	sub.w	r6, sl, #2
d0052754:	9705      	str	r7, [sp, #20]
d0052756:	2200      	movs	r2, #0
d0052758:	9506      	str	r5, [sp, #24]
d005275a:	9f04      	ldr	r7, [sp, #16]
d005275c:	9d08      	ldr	r5, [sp, #32]
d005275e:	f8dd 9008 	ldr.w	r9, [sp, #8]
d0052762:	fec7 7a06 	vmaxnm.f32	s15, s14, s12
d0052766:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d005276a:	ee77 7a85 	vadd.f32	s15, s15, s10
d005276e:	4841      	ldr	r0, [pc, #260]	; (d0052874 <fillTriangleDitherBayer+0x7f4>)
d0052770:	f836 cf02 	ldrh.w	ip, [r6, #2]!
d0052774:	eb02 0482 	add.w	r4, r2, r2, lsl #2
d0052778:	eb00 0803 	add.w	r8, r0, r3
d005277c:	3301      	adds	r3, #1
d005277e:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0052782:	01a4      	lsls	r4, r4, #6
d0052784:	ee37 7a26 	vadd.f32	s14, s14, s13
d0052788:	f003 0303 	and.w	r3, r3, #3
d005278c:	3201      	adds	r2, #1
d005278e:	ee17 0a90 	vmov	r0, s15
d0052792:	b280      	uxth	r0, r0
d0052794:	4584      	cmp	ip, r0
d0052796:	d908      	bls.n	d00527aa <fillTriangleDitherBayer+0x72a>
d0052798:	8030      	strh	r0, [r6, #0]
d005279a:	f818 0005 	ldrb.w	r0, [r8, r5]
d005279e:	4548      	cmp	r0, r9
d00527a0:	bfb4      	ite	lt
d00527a2:	4638      	movlt	r0, r7
d00527a4:	4658      	movge	r0, fp
d00527a6:	f80e 0004 	strb.w	r0, [lr, r4]
d00527aa:	4291      	cmp	r1, r2
d00527ac:	dcd9      	bgt.n	d0052762 <fillTriangleDitherBayer+0x6e2>
d00527ae:	f8dd 900c 	ldr.w	r9, [sp, #12]
d00527b2:	9f05      	ldr	r7, [sp, #20]
d00527b4:	9d06      	ldr	r5, [sp, #24]
d00527b6:	f1b9 0f00 	cmp.w	r9, #0
d00527ba:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d00527be:	ea4f 0241 	mov.w	r2, r1, lsl #1
d00527c2:	ea4f 1383 	mov.w	r3, r3, lsl #6
d00527c6:	bfbc      	itt	lt
d00527c8:	2202      	movlt	r2, #2
d00527ca:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d00527ce:	4492      	add	sl, r2
d00527d0:	449e      	add	lr, r3
d00527d2:	ee07 1a90 	vmov	s15, r1
d00527d6:	440d      	add	r5, r1
d00527d8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00527dc:	eea7 3aa9 	vfma.f32	s6, s15, s19
d00527e0:	eea7 2a8b 	vfma.f32	s4, s15, s22
d00527e4:	42af      	cmp	r7, r5
d00527e6:	da82      	bge.n	d00526ee <fillTriangleDitherBayer+0x66e>
d00527e8:	e5d7      	b.n	d005239a <fillTriangleDitherBayer+0x31a>
d00527ea:	ee07 1a90 	vmov	s15, r1
d00527ee:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d00527f2:	eb0a 0a41 	add.w	sl, sl, r1, lsl #1
d00527f6:	440d      	add	r5, r1
d00527f8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00527fc:	eb0e 1e83 	add.w	lr, lr, r3, lsl #6
d0052800:	eea7 3aa9 	vfma.f32	s6, s15, s19
d0052804:	eea7 2a8b 	vfma.f32	s4, s15, s22
d0052808:	e7ec      	b.n	d00527e4 <fillTriangleDitherBayer+0x764>
d005280a:	9b00      	ldr	r3, [sp, #0]
d005280c:	2b00      	cmp	r3, #0
d005280e:	d03d      	beq.n	d005288c <fillTriangleDitherBayer+0x80c>
d0052810:	f1b9 0f00 	cmp.w	r9, #0
d0052814:	dbdd      	blt.n	d00527d2 <fillTriangleDitherBayer+0x752>
d0052816:	eef0 6a46 	vmov.f32	s13, s12
d005281a:	f1aa 0402 	sub.w	r4, sl, #2
d005281e:	2300      	movs	r3, #0
d0052820:	fec7 7a06 	vmaxnm.f32	s15, s14, s12
d0052824:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d0052828:	ee77 7a85 	vadd.f32	s15, s15, s10
d005282c:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0052830:	f834 6f02 	ldrh.w	r6, [r4, #2]!
d0052834:	ee37 7a26 	vadd.f32	s14, s14, s13
d0052838:	0190      	lsls	r0, r2, #6
d005283a:	3301      	adds	r3, #1
d005283c:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0052840:	ee17 2a90 	vmov	r2, s15
d0052844:	b292      	uxth	r2, r2
d0052846:	4296      	cmp	r6, r2
d0052848:	d902      	bls.n	d0052850 <fillTriangleDitherBayer+0x7d0>
d005284a:	8022      	strh	r2, [r4, #0]
d005284c:	f80e b000 	strb.w	fp, [lr, r0]
d0052850:	4299      	cmp	r1, r3
d0052852:	dce5      	bgt.n	d0052820 <fillTriangleDitherBayer+0x7a0>
d0052854:	e7af      	b.n	d00527b6 <fillTriangleDitherBayer+0x736>
d0052856:	bf00      	nop
d0052858:	d005b784 	.word	0xd005b784
d005285c:	d005b780 	.word	0xd005b780
d0052860:	d005b788 	.word	0xd005b788
d0052864:	33d6bf95 	.word	0x33d6bf95
d0052868:	477fff00 	.word	0x477fff00
d005286c:	00000000 	.word	0x00000000
d0052870:	d00f5aa4 	.word	0xd00f5aa4
d0052874:	d005ac7c 	.word	0xd005ac7c
d0052878:	38d1b717 	.word	0x38d1b717
d005287c:	9b00      	ldr	r3, [sp, #0]
d005287e:	2b00      	cmp	r3, #0
d0052880:	d1c9      	bne.n	d0052816 <fillTriangleDitherBayer+0x796>
d0052882:	eef0 6a46 	vmov.f32	s13, s12
d0052886:	f005 0303 	and.w	r3, r5, #3
d005288a:	e75f      	b.n	d005274c <fillTriangleDitherBayer+0x6cc>
d005288c:	f1b9 0f00 	cmp.w	r9, #0
d0052890:	f005 0303 	and.w	r3, r5, #3
d0052894:	db9d      	blt.n	d00527d2 <fillTriangleDitherBayer+0x752>
d0052896:	eef0 6a46 	vmov.f32	s13, s12
d005289a:	e757      	b.n	d005274c <fillTriangleDitherBayer+0x6cc>
d005289c:	ee77 7ae6 	vsub.f32	s15, s15, s13
d00528a0:	ed1f 1a0b 	vldr	s2, [pc, #-44]	; d0052878 <fillTriangleDitherBayer+0x7f8>
d00528a4:	eef4 7ac1 	vcmpe.f32	s15, s2
d00528a8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00528ac:	f340 80f7 	ble.w	d0052a9e <fillTriangleDitherBayer+0xa1e>
d00528b0:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d00528b4:	ee73 3ac5 	vsub.f32	s7, s7, s10
d00528b8:	ee71 1ae4 	vsub.f32	s3, s3, s9
d00528bc:	ee89 1aa7 	vdiv.f32	s2, s19, s15
d00528c0:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00528c4:	ee77 6ae6 	vsub.f32	s13, s15, s13
d00528c8:	ee07 4a90 	vmov	s15, r4
d00528cc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00528d0:	ee77 6aa6 	vadd.f32	s13, s15, s13
d00528d4:	ee63 3a81 	vmul.f32	s7, s7, s2
d00528d8:	ee61 1a81 	vmul.f32	s3, s3, s2
d00528dc:	eea6 5aa3 	vfma.f32	s10, s13, s7
d00528e0:	eee6 4aa1 	vfma.f32	s9, s13, s3
d00528e4:	9a01      	ldr	r2, [sp, #4]
d00528e6:	eb04 0884 	add.w	r8, r4, r4, lsl #2
d00528ea:	4b6f      	ldr	r3, [pc, #444]	; (d0052aa8 <fillTriangleDitherBayer+0xa28>)
d00528ec:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d00528f0:	ebc2 1a02 	rsb	sl, r2, r2, lsl #4
d00528f4:	9910      	ldr	r1, [sp, #64]	; 0x40
d00528f6:	46b9      	mov	r9, r7
d00528f8:	eb01 1a4a 	add.w	sl, r1, sl, lsl #5
d00528fc:	6819      	ldr	r1, [r3, #0]
d00528fe:	eb02 1388 	add.w	r3, r2, r8, lsl #6
d0052902:	f002 0203 	and.w	r2, r2, #3
d0052906:	44a2      	add	sl, r4
d0052908:	eb01 0803 	add.w	r8, r1, r3
d005290c:	4b67      	ldr	r3, [pc, #412]	; (d0052aac <fillTriangleDitherBayer+0xa2c>)
d005290e:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d0052912:	9309      	str	r3, [sp, #36]	; 0x24
d0052914:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d0052916:	eb03 0a4a 	add.w	sl, r3, sl, lsl #1
d005291a:	eba9 0704 	sub.w	r7, r9, r4
d005291e:	eeb4 5aeb 	vcmpe.f32	s10, s23
d0052922:	1c79      	adds	r1, r7, #1
d0052924:	2930      	cmp	r1, #48	; 0x30
d0052926:	bfa8      	it	ge
d0052928:	2130      	movge	r1, #48	; 0x30
d005292a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005292e:	d96d      	bls.n	d0052a0c <fillTriangleDitherBayer+0x98c>
d0052930:	2f00      	cmp	r7, #0
d0052932:	ee84 1a85 	vdiv.f32	s2, s9, s10
d0052936:	dd79      	ble.n	d0052a2c <fillTriangleDitherBayer+0x9ac>
d0052938:	1e4b      	subs	r3, r1, #1
d005293a:	ee07 3a90 	vmov	s15, r3
d005293e:	eef0 9a45 	vmov.f32	s19, s10
d0052942:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052946:	eee7 9aa3 	vfma.f32	s19, s15, s7
d005294a:	eef4 9aeb 	vcmpe.f32	s19, s23
d005294e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052952:	f340 808f 	ble.w	d0052a74 <fillTriangleDitherBayer+0x9f4>
d0052956:	eef0 fa64 	vmov.f32	s31, s9
d005295a:	eee7 faa1 	vfma.f32	s31, s15, s3
d005295e:	ee8f aaa9 	vdiv.f32	s20, s31, s19
d0052962:	ee3a aa41 	vsub.f32	s20, s20, s2
d0052966:	eeca 9a27 	vdiv.f32	s19, s20, s15
d005296a:	9b00      	ldr	r3, [sp, #0]
d005296c:	2b00      	cmp	r3, #0
d005296e:	d163      	bne.n	d0052a38 <fillTriangleDitherBayer+0x9b8>
d0052970:	f004 0503 	and.w	r5, r4, #3
d0052974:	9703      	str	r7, [sp, #12]
d0052976:	f1aa 0602 	sub.w	r6, sl, #2
d005297a:	9405      	str	r4, [sp, #20]
d005297c:	2200      	movs	r2, #0
d005297e:	f8cd 9018 	str.w	r9, [sp, #24]
d0052982:	9c04      	ldr	r4, [sp, #16]
d0052984:	9f02      	ldr	r7, [sp, #8]
d0052986:	f8dd 9024 	ldr.w	r9, [sp, #36]	; 0x24
d005298a:	fec1 7a07 	vmaxnm.f32	s15, s2, s14
d005298e:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d0052992:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0052996:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d005299a:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d005299e:	ee31 1a29 	vadd.f32	s2, s2, s19
d00529a2:	f105 0c01 	add.w	ip, r5, #1
d00529a6:	3201      	adds	r2, #1
d00529a8:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00529ac:	0180      	lsls	r0, r0, #6
d00529ae:	ee17 3a90 	vmov	r3, s15
d00529b2:	b29b      	uxth	r3, r3
d00529b4:	459e      	cmp	lr, r3
d00529b6:	d908      	bls.n	d00529ca <fillTriangleDitherBayer+0x94a>
d00529b8:	8033      	strh	r3, [r6, #0]
d00529ba:	f819 3005 	ldrb.w	r3, [r9, r5]
d00529be:	42bb      	cmp	r3, r7
d00529c0:	bfac      	ite	ge
d00529c2:	465b      	movge	r3, fp
d00529c4:	4623      	movlt	r3, r4
d00529c6:	f808 3000 	strb.w	r3, [r8, r0]
d00529ca:	428a      	cmp	r2, r1
d00529cc:	f00c 0503 	and.w	r5, ip, #3
d00529d0:	dbdb      	blt.n	d005298a <fillTriangleDitherBayer+0x90a>
d00529d2:	9f03      	ldr	r7, [sp, #12]
d00529d4:	9c05      	ldr	r4, [sp, #20]
d00529d6:	f8dd 9018 	ldr.w	r9, [sp, #24]
d00529da:	2f00      	cmp	r7, #0
d00529dc:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d00529e0:	ea4f 0241 	mov.w	r2, r1, lsl #1
d00529e4:	ea4f 1383 	mov.w	r3, r3, lsl #6
d00529e8:	bfbc      	itt	lt
d00529ea:	2202      	movlt	r2, #2
d00529ec:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d00529f0:	4492      	add	sl, r2
d00529f2:	4498      	add	r8, r3
d00529f4:	ee07 1a90 	vmov	s15, r1
d00529f8:	440c      	add	r4, r1
d00529fa:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00529fe:	eea7 5aa3 	vfma.f32	s10, s15, s7
d0052a02:	eee7 4aa1 	vfma.f32	s9, s15, s3
d0052a06:	454c      	cmp	r4, r9
d0052a08:	dd87      	ble.n	d005291a <fillTriangleDitherBayer+0x89a>
d0052a0a:	e5df      	b.n	d00525cc <fillTriangleDitherBayer+0x54c>
d0052a0c:	ee07 1a90 	vmov	s15, r1
d0052a10:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0052a14:	eb0a 0a41 	add.w	sl, sl, r1, lsl #1
d0052a18:	440c      	add	r4, r1
d0052a1a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052a1e:	eb08 1883 	add.w	r8, r8, r3, lsl #6
d0052a22:	eea7 5aa3 	vfma.f32	s10, s15, s7
d0052a26:	eee7 4aa1 	vfma.f32	s9, s15, s3
d0052a2a:	e7ec      	b.n	d0052a06 <fillTriangleDitherBayer+0x986>
d0052a2c:	9b00      	ldr	r3, [sp, #0]
d0052a2e:	b323      	cbz	r3, d0052a7a <fillTriangleDitherBayer+0x9fa>
d0052a30:	2f00      	cmp	r7, #0
d0052a32:	d1df      	bne.n	d00529f4 <fillTriangleDitherBayer+0x974>
d0052a34:	eef0 9a47 	vmov.f32	s19, s14
d0052a38:	f1aa 0502 	sub.w	r5, sl, #2
d0052a3c:	2200      	movs	r2, #0
d0052a3e:	fec1 7a07 	vmaxnm.f32	s15, s2, s14
d0052a42:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d0052a46:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0052a4a:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0052a4e:	f835 6f02 	ldrh.w	r6, [r5, #2]!
d0052a52:	ee31 1a29 	vadd.f32	s2, s2, s19
d0052a56:	0198      	lsls	r0, r3, #6
d0052a58:	3201      	adds	r2, #1
d0052a5a:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0052a5e:	ee17 3a90 	vmov	r3, s15
d0052a62:	b29b      	uxth	r3, r3
d0052a64:	429e      	cmp	r6, r3
d0052a66:	d902      	bls.n	d0052a6e <fillTriangleDitherBayer+0x9ee>
d0052a68:	802b      	strh	r3, [r5, #0]
d0052a6a:	f808 b000 	strb.w	fp, [r8, r0]
d0052a6e:	428a      	cmp	r2, r1
d0052a70:	dbe5      	blt.n	d0052a3e <fillTriangleDitherBayer+0x9be>
d0052a72:	e7b2      	b.n	d00529da <fillTriangleDitherBayer+0x95a>
d0052a74:	eef0 9a47 	vmov.f32	s19, s14
d0052a78:	e777      	b.n	d005296a <fillTriangleDitherBayer+0x8ea>
d0052a7a:	2f00      	cmp	r7, #0
d0052a7c:	f004 0503 	and.w	r5, r4, #3
d0052a80:	dbb8      	blt.n	d00529f4 <fillTriangleDitherBayer+0x974>
d0052a82:	eef0 9a47 	vmov.f32	s19, s14
d0052a86:	e775      	b.n	d0052974 <fillTriangleDitherBayer+0x8f4>
d0052a88:	f04f 0b10 	mov.w	fp, #16
d0052a8c:	2310      	movs	r3, #16
d0052a8e:	9304      	str	r3, [sp, #16]
d0052a90:	f7ff bb5c 	b.w	d005214c <fillTriangleDitherBayer+0xcc>
d0052a94:	eeb0 ba46 	vmov.f32	s22, s12
d0052a98:	eef0 9a46 	vmov.f32	s19, s12
d0052a9c:	e60f      	b.n	d00526be <fillTriangleDitherBayer+0x63e>
d0052a9e:	eef0 1a47 	vmov.f32	s3, s14
d0052aa2:	eef0 3a47 	vmov.f32	s7, s14
d0052aa6:	e71d      	b.n	d00528e4 <fillTriangleDitherBayer+0x864>
d0052aa8:	d00f5aa4 	.word	0xd00f5aa4
d0052aac:	d005ac7c 	.word	0xd005ac7c

d0052ab0 <fillTriangleDitherBayerT>:
d0052ab0:	eddf 5ae4 	vldr	s11, [pc, #912]	; d0052e44 <fillTriangleDitherBayerT+0x394>
d0052ab4:	eef4 0ae5 	vcmpe.f32	s1, s11
d0052ab8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0052abc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052ac0:	eeb4 1ae5 	vcmpe.f32	s2, s11
d0052ac4:	ed2d 8b10 	vpush	{d8-d15}
d0052ac8:	b095      	sub	sp, #84	; 0x54
d0052aca:	9204      	str	r2, [sp, #16]
d0052acc:	bf94      	ite	ls
d0052ace:	2201      	movls	r2, #1
d0052ad0:	2200      	movhi	r2, #0
d0052ad2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052ad6:	9002      	str	r0, [sp, #8]
d0052ad8:	9103      	str	r1, [sp, #12]
d0052ada:	bf98      	it	ls
d0052adc:	f042 0201 	orrls.w	r2, r2, #1
d0052ae0:	9305      	str	r3, [sp, #20]
d0052ae2:	f8bd 50c0 	ldrh.w	r5, [sp, #192]	; 0xc0
d0052ae6:	f8bd 00c4 	ldrh.w	r0, [sp, #196]	; 0xc4
d0052aea:	f8bd 10c8 	ldrh.w	r1, [sp, #200]	; 0xc8
d0052aee:	f89d 30cc 	ldrb.w	r3, [sp, #204]	; 0xcc
d0052af2:	f89d 40d0 	ldrb.w	r4, [sp, #208]	; 0xd0
d0052af6:	ed8d 0a00 	vstr	s0, [sp]
d0052afa:	edcd 1a01 	vstr	s3, [sp, #4]
d0052afe:	2a00      	cmp	r2, #0
d0052b00:	f040 81b5 	bne.w	d0052e6e <fillTriangleDitherBayerT+0x3be>
d0052b04:	eeb4 0a65 	vcmp.f32	s0, s11
d0052b08:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052b0c:	f240 81af 	bls.w	d0052e6e <fillTriangleDitherBayerT+0x3be>
d0052b10:	eef0 7a41 	vmov.f32	s15, s2
d0052b14:	eddf 5acc 	vldr	s11, [pc, #816]	; d0052e48 <fillTriangleDitherBayerT+0x398>
d0052b18:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0052b1c:	eeb0 7a60 	vmov.f32	s14, s1
d0052b20:	fec1 6aa5 	vmaxnm.f32	s13, s3, s11
d0052b24:	eef1 4a04 	vmov.f32	s9, #20	; 0x40a00000  5.0
d0052b28:	ee05 5a90 	vmov	s11, r5
d0052b2c:	eec5 1a27 	vdiv.f32	s3, s10, s15
d0052b30:	fec6 6ae4 	vminnm.f32	s13, s13, s9
d0052b34:	eec5 0a07 	vdiv.f32	s1, s10, s14
d0052b38:	ee85 1a00 	vdiv.f32	s2, s10, s0
d0052b3c:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0052b40:	eef8 5a65 	vcvt.f32.u32	s11, s11
d0052b44:	ee17 2a90 	vmov	r2, s15
d0052b48:	ee07 0a90 	vmov	s15, r0
d0052b4c:	eeb8 4a67 	vcvt.f32.u32	s8, s15
d0052b50:	ee07 1a90 	vmov	s15, r1
d0052b54:	1c51      	adds	r1, r2, #1
d0052b56:	eeb8 7a67 	vcvt.f32.u32	s14, s15
d0052b5a:	2905      	cmp	r1, #5
d0052b5c:	ee24 4a20 	vmul.f32	s8, s8, s1
d0052b60:	bfa8      	it	ge
d0052b62:	2105      	movge	r1, #5
d0052b64:	2a04      	cmp	r2, #4
d0052b66:	ee65 5a81 	vmul.f32	s11, s11, s2
d0052b6a:	ee27 7a21 	vmul.f32	s14, s14, s3
d0052b6e:	f300 84d4 	bgt.w	d005351a <fillTriangleDitherBayerT+0xa6a>
d0052b72:	f003 030f 	and.w	r3, r3, #15
d0052b76:	2a03      	cmp	r2, #3
d0052b78:	f103 0320 	add.w	r3, r3, #32
d0052b7c:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d0052b80:	b2c0      	uxtb	r0, r0
d0052b82:	9000      	str	r0, [sp, #0]
d0052b84:	f300 84cb 	bgt.w	d005351e <fillTriangleDitherBayerT+0xa6e>
d0052b88:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d0052b8c:	b2db      	uxtb	r3, r3
d0052b8e:	9301      	str	r3, [sp, #4]
d0052b90:	eddd 7a03 	vldr	s15, [sp, #12]
d0052b94:	eeb8 3ae7 	vcvt.f32.s32	s6, s15
d0052b98:	eddd 7a05 	vldr	s15, [sp, #20]
d0052b9c:	eeb8 2ae7 	vcvt.f32.s32	s4, s15
d0052ba0:	eddd 7a02 	vldr	s15, [sp, #8]
d0052ba4:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d0052ba8:	eddd 7a04 	vldr	s15, [sp, #16]
d0052bac:	eeb4 3ac2 	vcmpe.f32	s6, s4
d0052bb0:	eef8 2ae7 	vcvt.f32.s32	s5, s15
d0052bb4:	eddd 7a2e 	vldr	s15, [sp, #184]	; 0xb8
d0052bb8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052bbc:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d0052bc0:	eddd 7a2f 	vldr	s15, [sp, #188]	; 0xbc
d0052bc4:	eeb8 5ae7 	vcvt.f32.s32	s10, s15
d0052bc8:	f300 8156 	bgt.w	d0052e78 <fillTriangleDitherBayerT+0x3c8>
d0052bcc:	eeb4 3ac5 	vcmpe.f32	s6, s10
d0052bd0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052bd4:	f300 8263 	bgt.w	d005309e <fillTriangleDitherBayerT+0x5ee>
d0052bd8:	eeb4 2ac5 	vcmpe.f32	s4, s10
d0052bdc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052be0:	dd17      	ble.n	d0052c12 <fillTriangleDitherBayerT+0x162>
d0052be2:	eeb0 8a44 	vmov.f32	s16, s8
d0052be6:	eeb0 0a60 	vmov.f32	s0, s1
d0052bea:	eef0 3a42 	vmov.f32	s7, s4
d0052bee:	eef0 7a62 	vmov.f32	s15, s5
d0052bf2:	eeb0 4a47 	vmov.f32	s8, s14
d0052bf6:	eef0 0a61 	vmov.f32	s1, s3
d0052bfa:	eeb0 2a45 	vmov.f32	s4, s10
d0052bfe:	eef0 2a46 	vmov.f32	s5, s12
d0052c02:	eeb0 7a48 	vmov.f32	s14, s16
d0052c06:	eef0 1a40 	vmov.f32	s3, s0
d0052c0a:	eeb0 5a63 	vmov.f32	s10, s7
d0052c0e:	eeb0 6a67 	vmov.f32	s12, s15
d0052c12:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0052c16:	ee73 3a27 	vadd.f32	s7, s6, s15
d0052c1a:	ee75 7a27 	vadd.f32	s15, s10, s15
d0052c1e:	eefd 3ae3 	vcvt.s32.f32	s7, s7
d0052c22:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0052c26:	ee13 3a90 	vmov	r3, s7
d0052c2a:	ee17 1a90 	vmov	r1, s15
d0052c2e:	428b      	cmp	r3, r1
d0052c30:	f000 811d 	beq.w	d0052e6e <fillTriangleDitherBayerT+0x3be>
d0052c34:	ee75 7a43 	vsub.f32	s15, s10, s6
d0052c38:	eddf 3a82 	vldr	s7, [pc, #520]	; d0052e44 <fillTriangleDitherBayerT+0x394>
d0052c3c:	eef4 7ae3 	vcmpe.f32	s15, s7
d0052c40:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052c44:	f240 8113 	bls.w	d0052e6e <fillTriangleDitherBayerT+0x3be>
d0052c48:	eeb7 aa00 	vmov.f32	s20, #112	; 0x3f800000  1.0
d0052c4c:	ee72 9a43 	vsub.f32	s19, s4, s6
d0052c50:	ee36 8a64 	vsub.f32	s16, s12, s9
d0052c54:	ee8a 0a27 	vdiv.f32	s0, s20, s15
d0052c58:	eef4 9ae3 	vcmpe.f32	s19, s7
d0052c5c:	ee71 8ac1 	vsub.f32	s17, s3, s2
d0052c60:	ee37 9a65 	vsub.f32	s18, s14, s11
d0052c64:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052c68:	ee28 8a00 	vmul.f32	s16, s16, s0
d0052c6c:	ee68 8a80 	vmul.f32	s17, s17, s0
d0052c70:	ee29 9a00 	vmul.f32	s18, s18, s0
d0052c74:	f300 811f 	bgt.w	d0052eb6 <fillTriangleDitherBayerT+0x406>
d0052c78:	ee07 2a90 	vmov	s15, r2
d0052c7c:	ee35 0a42 	vsub.f32	s0, s10, s4
d0052c80:	9901      	ldr	r1, [sp, #4]
d0052c82:	eb04 1404 	add.w	r4, r4, r4, lsl #4
d0052c86:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052c8a:	eeb4 0ae3 	vcmpe.f32	s0, s7
d0052c8e:	1224      	asrs	r4, r4, #8
d0052c90:	ed8d 0a09 	vstr	s0, [sp, #36]	; 0x24
d0052c94:	ee76 6ae7 	vsub.f32	s13, s13, s15
d0052c98:	eef0 7a66 	vmov.f32	s15, s13
d0052c9c:	eefe 7ace 	vcvt.s32.f32	s15, s15, #4
d0052ca0:	ee17 3a90 	vmov	r3, s15
d0052ca4:	f383 0204 	usat	r2, #4, r3
d0052ca8:	9202      	str	r2, [sp, #8]
d0052caa:	9a00      	ldr	r2, [sp, #0]
d0052cac:	428a      	cmp	r2, r1
d0052cae:	bf18      	it	ne
d0052cb0:	2b00      	cmpne	r3, #0
d0052cb2:	bfd4      	ite	le
d0052cb4:	2301      	movle	r3, #1
d0052cb6:	2300      	movgt	r3, #0
d0052cb8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052cbc:	9303      	str	r3, [sp, #12]
d0052cbe:	f340 80d6 	ble.w	d0052e6e <fillTriangleDitherBayerT+0x3be>
d0052cc2:	ed9f ea61 	vldr	s28, [pc, #388]	; d0052e48 <fillTriangleDitherBayerT+0x398>
d0052cc6:	eef0 ea4e 	vmov.f32	s29, s28
d0052cca:	eeb0 ca4e 	vmov.f32	s24, s28
d0052cce:	eef7 3a00 	vmov.f32	s7, #112	; 0x3f800000  1.0
d0052cd2:	eddd 7a09 	vldr	s15, [sp, #36]	; 0x24
d0052cd6:	ee36 6a62 	vsub.f32	s12, s12, s5
d0052cda:	eddf 6a5a 	vldr	s13, [pc, #360]	; d0052e44 <fillTriangleDitherBayerT+0x394>
d0052cde:	ee71 1ae0 	vsub.f32	s3, s3, s1
d0052ce2:	eec3 7aa7 	vdiv.f32	s15, s7, s15
d0052ce6:	eef4 9ae6 	vcmpe.f32	s19, s13
d0052cea:	ee37 7a44 	vsub.f32	s14, s14, s8
d0052cee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052cf2:	ee26 6a27 	vmul.f32	s12, s12, s15
d0052cf6:	ee67 fa27 	vmul.f32	s31, s14, s15
d0052cfa:	ed8d 6a0e 	vstr	s12, [sp, #56]	; 0x38
d0052cfe:	ee21 6aa7 	vmul.f32	s12, s3, s15
d0052d02:	ed8d 6a0d 	vstr	s12, [sp, #52]	; 0x34
d0052d06:	f300 8113 	bgt.w	d0052f30 <fillTriangleDitherBayerT+0x480>
d0052d0a:	4a49      	ldr	r2, [pc, #292]	; (d0052e30 <fillTriangleDitherBayerT+0x380>)
d0052d0c:	eefd 7ac2 	vcvt.s32.f32	s15, s4
d0052d10:	4b48      	ldr	r3, [pc, #288]	; (d0052e34 <fillTriangleDitherBayerT+0x384>)
d0052d12:	6812      	ldr	r2, [r2, #0]
d0052d14:	681b      	ldr	r3, [r3, #0]
d0052d16:	edcd 7a0b 	vstr	s15, [sp, #44]	; 0x2c
d0052d1a:	920a      	str	r2, [sp, #40]	; 0x28
d0052d1c:	930c      	str	r3, [sp, #48]	; 0x30
d0052d1e:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d0052d22:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d0052d24:	980a      	ldr	r0, [sp, #40]	; 0x28
d0052d26:	990c      	ldr	r1, [sp, #48]	; 0x30
d0052d28:	ee17 3a90 	vmov	r3, s15
d0052d2c:	4282      	cmp	r2, r0
d0052d2e:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
d0052d32:	bfb8      	it	lt
d0052d34:	4602      	movlt	r2, r0
d0052d36:	428b      	cmp	r3, r1
d0052d38:	9204      	str	r2, [sp, #16]
d0052d3a:	bfa8      	it	ge
d0052d3c:	460b      	movge	r3, r1
d0052d3e:	429a      	cmp	r2, r3
d0052d40:	f300 8095 	bgt.w	d0052e6e <fillTriangleDitherBayerT+0x3be>
d0052d44:	ee07 2a90 	vmov	s15, r2
d0052d48:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d0052d4c:	3301      	adds	r3, #1
d0052d4e:	eba0 1200 	sub.w	r2, r0, r0, lsl #4
d0052d52:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052d56:	4938      	ldr	r1, [pc, #224]	; (d0052e38 <fillTriangleDitherBayerT+0x388>)
d0052d58:	0152      	lsls	r2, r2, #5
d0052d5a:	eddd aa0e 	vldr	s21, [sp, #56]	; 0x38
d0052d5e:	ed9d 0a0d 	vldr	s0, [sp, #52]	; 0x34
d0052d62:	ee77 7a87 	vadd.f32	s15, s15, s14
d0052d66:	9308      	str	r3, [sp, #32]
d0052d68:	680b      	ldr	r3, [r1, #0]
d0052d6a:	eddf 9a36 	vldr	s19, [pc, #216]	; d0052e44 <fillTriangleDitherBayerT+0x394>
d0052d6e:	ee37 3ac3 	vsub.f32	s6, s15, s6
d0052d72:	ed9f aa32 	vldr	s20, [pc, #200]	; d0052e3c <fillTriangleDitherBayerT+0x38c>
d0052d76:	ee37 2ac2 	vsub.f32	s4, s15, s4
d0052d7a:	ed9f 6a33 	vldr	s12, [pc, #204]	; d0052e48 <fillTriangleDitherBayerT+0x398>
d0052d7e:	eddf 3a30 	vldr	s7, [pc, #192]	; d0052e40 <fillTriangleDitherBayerT+0x390>
d0052d82:	eee8 4a03 	vfma.f32	s9, s16, s6
d0052d86:	920a      	str	r2, [sp, #40]	; 0x28
d0052d88:	eea8 1a83 	vfma.f32	s2, s17, s6
d0052d8c:	9309      	str	r3, [sp, #36]	; 0x24
d0052d8e:	eee9 5a03 	vfma.f32	s11, s18, s6
d0052d92:	eeea 2a82 	vfma.f32	s5, s21, s4
d0052d96:	eee0 0a02 	vfma.f32	s1, s0, s4
d0052d9a:	eea2 4a2f 	vfma.f32	s8, s4, s31
d0052d9e:	e034      	b.n	d0052e0a <fillTriangleDitherBayerT+0x35a>
d0052da0:	eeb0 ba65 	vmov.f32	s22, s11
d0052da4:	eef0 1a41 	vmov.f32	s3, s2
d0052da8:	eeb0 7a64 	vmov.f32	s14, s9
d0052dac:	eeb0 2a44 	vmov.f32	s4, s8
d0052db0:	eeb0 3a60 	vmov.f32	s6, s1
d0052db4:	eef0 6a62 	vmov.f32	s13, s5
d0052db8:	fefa 7a47 	vrintp.f32	s15, s14
d0052dbc:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0052dc0:	f240 13df 	movw	r3, #479	; 0x1df
d0052dc4:	ee17 6a90 	vmov	r6, s15
d0052dc8:	fefa 7a66 	vrintp.f32	s15, s13
d0052dcc:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0052dd0:	3e01      	subs	r6, #1
d0052dd2:	ee17 0a90 	vmov	r0, s15
d0052dd6:	429e      	cmp	r6, r3
d0052dd8:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d0052ddc:	bfa8      	it	ge
d0052dde:	461e      	movge	r6, r3
d0052de0:	42b0      	cmp	r0, r6
d0052de2:	f340 8175 	ble.w	d00530d0 <fillTriangleDitherBayerT+0x620>
d0052de6:	9b04      	ldr	r3, [sp, #16]
d0052de8:	ee74 4a88 	vadd.f32	s9, s9, s16
d0052dec:	9a08      	ldr	r2, [sp, #32]
d0052dee:	ee31 1a28 	vadd.f32	s2, s2, s17
d0052df2:	3301      	adds	r3, #1
d0052df4:	ee75 5a89 	vadd.f32	s11, s11, s18
d0052df8:	ee72 2aaa 	vadd.f32	s5, s5, s21
d0052dfc:	4293      	cmp	r3, r2
d0052dfe:	ee70 0a80 	vadd.f32	s1, s1, s0
d0052e02:	ee34 4a2f 	vadd.f32	s8, s8, s31
d0052e06:	9304      	str	r3, [sp, #16]
d0052e08:	d031      	beq.n	d0052e6e <fillTriangleDitherBayerT+0x3be>
d0052e0a:	eef4 4ae2 	vcmpe.f32	s9, s5
d0052e0e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052e12:	dcc5      	bgt.n	d0052da0 <fillTriangleDitherBayerT+0x2f0>
d0052e14:	eeb0 ba44 	vmov.f32	s22, s8
d0052e18:	eef0 1a60 	vmov.f32	s3, s1
d0052e1c:	eeb0 7a62 	vmov.f32	s14, s5
d0052e20:	eeb0 2a65 	vmov.f32	s4, s11
d0052e24:	eeb0 3a41 	vmov.f32	s6, s2
d0052e28:	eef0 6a64 	vmov.f32	s13, s9
d0052e2c:	e7c4      	b.n	d0052db8 <fillTriangleDitherBayerT+0x308>
d0052e2e:	bf00      	nop
d0052e30:	d005b780 	.word	0xd005b780
d0052e34:	d005b784 	.word	0xd005b784
d0052e38:	d005b788 	.word	0xd005b788
d0052e3c:	33d6bf95 	.word	0x33d6bf95
d0052e40:	477fff00 	.word	0x477fff00
d0052e44:	38d1b717 	.word	0x38d1b717
d0052e48:	00000000 	.word	0x00000000
d0052e4c:	eddd 5a11 	vldr	s11, [sp, #68]	; 0x44
d0052e50:	4644      	mov	r4, r8
d0052e52:	ed9d 1a12 	vldr	s2, [sp, #72]	; 0x48
d0052e56:	ed9d 4a13 	vldr	s8, [sp, #76]	; 0x4c
d0052e5a:	ed5f 7a06 	vldr	s15, [pc, #-24]	; d0052e44 <fillTriangleDitherBayerT+0x394>
d0052e5e:	ed9d 7a09 	vldr	s14, [sp, #36]	; 0x24
d0052e62:	eeb4 7ae7 	vcmpe.f32	s14, s15
d0052e66:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052e6a:	f73f af58 	bgt.w	d0052d1e <fillTriangleDitherBayerT+0x26e>
d0052e6e:	b015      	add	sp, #84	; 0x54
d0052e70:	ecbd 8b10 	vpop	{d8-d15}
d0052e74:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0052e78:	eeb4 2ac5 	vcmpe.f32	s4, s10
d0052e7c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052e80:	f340 80f4 	ble.w	d005306c <fillTriangleDitherBayerT+0x5bc>
d0052e84:	eeb0 8a47 	vmov.f32	s16, s14
d0052e88:	eeb0 0a61 	vmov.f32	s0, s3
d0052e8c:	eef0 3a45 	vmov.f32	s7, s10
d0052e90:	eef0 7a46 	vmov.f32	s15, s12
d0052e94:	eeb0 7a65 	vmov.f32	s14, s11
d0052e98:	eef0 1a41 	vmov.f32	s3, s2
d0052e9c:	eeb0 5a43 	vmov.f32	s10, s6
d0052ea0:	eeb0 6a64 	vmov.f32	s12, s9
d0052ea4:	eef0 5a48 	vmov.f32	s11, s16
d0052ea8:	eeb0 1a40 	vmov.f32	s2, s0
d0052eac:	eeb0 3a63 	vmov.f32	s6, s7
d0052eb0:	eef0 4a67 	vmov.f32	s9, s15
d0052eb4:	e6ad      	b.n	d0052c12 <fillTriangleDitherBayerT+0x162>
d0052eb6:	ee07 2a90 	vmov	s15, r2
d0052eba:	ee8a 0a29 	vdiv.f32	s0, s20, s19
d0052ebe:	9901      	ldr	r1, [sp, #4]
d0052ec0:	eb04 1404 	add.w	r4, r4, r4, lsl #4
d0052ec4:	1224      	asrs	r4, r4, #8
d0052ec6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052eca:	ee72 aae4 	vsub.f32	s21, s5, s9
d0052ece:	ee30 aac1 	vsub.f32	s20, s1, s2
d0052ed2:	ee76 6ae7 	vsub.f32	s13, s13, s15
d0052ed6:	ee34 ea65 	vsub.f32	s28, s8, s11
d0052eda:	eef0 7a66 	vmov.f32	s15, s13
d0052ede:	ee75 6a42 	vsub.f32	s13, s10, s4
d0052ee2:	eefe 7ace 	vcvt.s32.f32	s15, s15, #4
d0052ee6:	eef4 6ae3 	vcmpe.f32	s13, s7
d0052eea:	edcd 6a09 	vstr	s13, [sp, #36]	; 0x24
d0052eee:	ee2e ea00 	vmul.f32	s28, s28, s0
d0052ef2:	ee17 3a90 	vmov	r3, s15
d0052ef6:	ee6a 7a80 	vmul.f32	s15, s21, s0
d0052efa:	f383 0204 	usat	r2, #4, r3
d0052efe:	eeb0 ca67 	vmov.f32	s24, s15
d0052f02:	9202      	str	r2, [sp, #8]
d0052f04:	ee6a 7a00 	vmul.f32	s15, s20, s0
d0052f08:	9a00      	ldr	r2, [sp, #0]
d0052f0a:	428a      	cmp	r2, r1
d0052f0c:	bf18      	it	ne
d0052f0e:	2b00      	cmpne	r3, #0
d0052f10:	eef0 ea67 	vmov.f32	s29, s15
d0052f14:	bfd4      	ite	le
d0052f16:	2301      	movle	r3, #1
d0052f18:	2300      	movgt	r3, #0
d0052f1a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052f1e:	9303      	str	r3, [sp, #12]
d0052f20:	f73f aed5 	bgt.w	d0052cce <fillTriangleDitherBayerT+0x21e>
d0052f24:	ed5f fa38 	vldr	s31, [pc, #-224]	; d0052e48 <fillTriangleDitherBayerT+0x398>
d0052f28:	edcd fa0d 	vstr	s31, [sp, #52]	; 0x34
d0052f2c:	edcd fa0e 	vstr	s31, [sp, #56]	; 0x38
d0052f30:	eefd 7ac2 	vcvt.s32.f32	s15, s4
d0052f34:	4bcd      	ldr	r3, [pc, #820]	; (d005326c <fillTriangleDitherBayerT+0x7bc>)
d0052f36:	4ace      	ldr	r2, [pc, #824]	; (d0053270 <fillTriangleDitherBayerT+0x7c0>)
d0052f38:	6819      	ldr	r1, [r3, #0]
d0052f3a:	ee17 3a90 	vmov	r3, s15
d0052f3e:	edcd 7a0b 	vstr	s15, [sp, #44]	; 0x2c
d0052f42:	eefd 7ac3 	vcvt.s32.f32	s15, s6
d0052f46:	6810      	ldr	r0, [r2, #0]
d0052f48:	3b01      	subs	r3, #1
d0052f4a:	910c      	str	r1, [sp, #48]	; 0x30
d0052f4c:	900a      	str	r0, [sp, #40]	; 0x28
d0052f4e:	ee17 2a90 	vmov	r2, s15
d0052f52:	428b      	cmp	r3, r1
d0052f54:	bfa8      	it	ge
d0052f56:	460b      	movge	r3, r1
d0052f58:	4282      	cmp	r2, r0
d0052f5a:	bfb8      	it	lt
d0052f5c:	4602      	movlt	r2, r0
d0052f5e:	4293      	cmp	r3, r2
d0052f60:	9204      	str	r2, [sp, #16]
d0052f62:	f6ff af7a 	blt.w	d0052e5a <fillTriangleDitherBayerT+0x3aa>
d0052f66:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0052f6a:	3301      	adds	r3, #1
d0052f6c:	eef0 aa64 	vmov.f32	s21, s9
d0052f70:	49c0      	ldr	r1, [pc, #768]	; (d0053274 <fillTriangleDitherBayerT+0x7c4>)
d0052f72:	eba0 1200 	sub.w	r2, r0, r0, lsl #4
d0052f76:	9308      	str	r3, [sp, #32]
d0052f78:	ee37 7ac3 	vsub.f32	s14, s15, s6
d0052f7c:	eddd 7a04 	vldr	s15, [sp, #16]
d0052f80:	680b      	ldr	r3, [r1, #0]
d0052f82:	eeb0 ba64 	vmov.f32	s22, s9
d0052f86:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052f8a:	eddf babb 	vldr	s23, [pc, #748]	; d0053278 <fillTriangleDitherBayerT+0x7c8>
d0052f8e:	eef0 da41 	vmov.f32	s27, s2
d0052f92:	930f      	str	r3, [sp, #60]	; 0x3c
d0052f94:	eeb0 da65 	vmov.f32	s26, s11
d0052f98:	0153      	lsls	r3, r2, #5
d0052f9a:	ee77 7a87 	vadd.f32	s15, s15, s14
d0052f9e:	ed9f 6ab7 	vldr	s12, [pc, #732]	; d005327c <fillTriangleDitherBayerT+0x7cc>
d0052fa2:	eeb0 aa4c 	vmov.f32	s20, s24
d0052fa6:	ed9f 7ab6 	vldr	s14, [pc, #728]	; d0053280 <fillTriangleDitherBayerT+0x7d0>
d0052faa:	eef0 ca41 	vmov.f32	s25, s2
d0052fae:	46a0      	mov	r8, r4
d0052fb0:	eee7 aa8c 	vfma.f32	s21, s15, s24
d0052fb4:	9310      	str	r3, [sp, #64]	; 0x40
d0052fb6:	eeb0 ca65 	vmov.f32	s24, s11
d0052fba:	edcd 5a11 	vstr	s11, [sp, #68]	; 0x44
d0052fbe:	eea8 ba27 	vfma.f32	s22, s16, s15
d0052fc2:	ed8d 1a12 	vstr	s2, [sp, #72]	; 0x48
d0052fc6:	eee8 daa7 	vfma.f32	s27, s17, s15
d0052fca:	ed8d 4a13 	vstr	s8, [sp, #76]	; 0x4c
d0052fce:	eea9 da27 	vfma.f32	s26, s18, s15
d0052fd2:	eee7 caae 	vfma.f32	s25, s15, s29
d0052fd6:	eea7 ca8e 	vfma.f32	s24, s15, s28
d0052fda:	e035      	b.n	d0053048 <fillTriangleDitherBayerT+0x598>
d0052fdc:	eef0 1a4d 	vmov.f32	s3, s26
d0052fe0:	eef0 3a6d 	vmov.f32	s7, s27
d0052fe4:	eef0 7a4b 	vmov.f32	s15, s22
d0052fe8:	eeb0 4a4c 	vmov.f32	s8, s24
d0052fec:	eef0 5a6c 	vmov.f32	s11, s25
d0052ff0:	eef0 6a6a 	vmov.f32	s13, s21
d0052ff4:	feba 1a67 	vrintp.f32	s2, s15
d0052ff8:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d0052ffc:	feba 0a66 	vrintp.f32	s0, s13
d0053000:	f240 13df 	movw	r3, #479	; 0x1df
d0053004:	ee11 6a10 	vmov	r6, s2
d0053008:	eebd 1ac0 	vcvt.s32.f32	s2, s0
d005300c:	3e01      	subs	r6, #1
d005300e:	ee11 0a10 	vmov	r0, s2
d0053012:	429e      	cmp	r6, r3
d0053014:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d0053018:	bfa8      	it	ge
d005301a:	461e      	movge	r6, r3
d005301c:	4286      	cmp	r6, r0
d005301e:	f280 8173 	bge.w	d0053308 <fillTriangleDitherBayerT+0x858>
d0053022:	9b04      	ldr	r3, [sp, #16]
d0053024:	ee3b ba08 	vadd.f32	s22, s22, s16
d0053028:	9a08      	ldr	r2, [sp, #32]
d005302a:	ee7d daa8 	vadd.f32	s27, s27, s17
d005302e:	3301      	adds	r3, #1
d0053030:	ee3d da09 	vadd.f32	s26, s26, s18
d0053034:	ee7a aa8a 	vadd.f32	s21, s21, s20
d0053038:	4293      	cmp	r3, r2
d005303a:	ee7c caae 	vadd.f32	s25, s25, s29
d005303e:	ee3c ca0e 	vadd.f32	s24, s24, s28
d0053042:	9304      	str	r3, [sp, #16]
d0053044:	f43f af02 	beq.w	d0052e4c <fillTriangleDitherBayerT+0x39c>
d0053048:	eeb4 baea 	vcmpe.f32	s22, s21
d005304c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053050:	dcc4      	bgt.n	d0052fdc <fillTriangleDitherBayerT+0x52c>
d0053052:	eef0 1a4c 	vmov.f32	s3, s24
d0053056:	eef0 3a6c 	vmov.f32	s7, s25
d005305a:	eef0 7a6a 	vmov.f32	s15, s21
d005305e:	eeb0 4a4d 	vmov.f32	s8, s26
d0053062:	eef0 5a6d 	vmov.f32	s11, s27
d0053066:	eef0 6a4b 	vmov.f32	s13, s22
d005306a:	e7c3      	b.n	d0052ff4 <fillTriangleDitherBayerT+0x544>
d005306c:	eeb0 8a65 	vmov.f32	s16, s11
d0053070:	eeb0 0a41 	vmov.f32	s0, s2
d0053074:	eef0 3a43 	vmov.f32	s7, s6
d0053078:	eef0 7a64 	vmov.f32	s15, s9
d005307c:	eef0 5a44 	vmov.f32	s11, s8
d0053080:	eeb0 1a60 	vmov.f32	s2, s1
d0053084:	eeb0 3a42 	vmov.f32	s6, s4
d0053088:	eef0 4a62 	vmov.f32	s9, s5
d005308c:	eeb0 4a48 	vmov.f32	s8, s16
d0053090:	eef0 0a40 	vmov.f32	s1, s0
d0053094:	eeb0 2a63 	vmov.f32	s4, s7
d0053098:	eef0 2a67 	vmov.f32	s5, s15
d005309c:	e59c      	b.n	d0052bd8 <fillTriangleDitherBayerT+0x128>
d005309e:	eeb0 8a65 	vmov.f32	s16, s11
d00530a2:	eeb0 0a41 	vmov.f32	s0, s2
d00530a6:	eef0 3a43 	vmov.f32	s7, s6
d00530aa:	eef0 7a64 	vmov.f32	s15, s9
d00530ae:	eef0 5a47 	vmov.f32	s11, s14
d00530b2:	eeb0 1a61 	vmov.f32	s2, s3
d00530b6:	eeb0 3a45 	vmov.f32	s6, s10
d00530ba:	eef0 4a46 	vmov.f32	s9, s12
d00530be:	eeb0 7a48 	vmov.f32	s14, s16
d00530c2:	eef0 1a40 	vmov.f32	s3, s0
d00530c6:	eeb0 5a63 	vmov.f32	s10, s7
d00530ca:	eeb0 6a67 	vmov.f32	s12, s15
d00530ce:	e583      	b.n	d0052bd8 <fillTriangleDitherBayerT+0x128>
d00530d0:	ee37 7a66 	vsub.f32	s14, s14, s13
d00530d4:	eeb4 7ae9 	vcmpe.f32	s14, s19
d00530d8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00530dc:	f340 8223 	ble.w	d0053526 <fillTriangleDitherBayerT+0xa76>
d00530e0:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00530e4:	ee71 1ac3 	vsub.f32	s3, s3, s6
d00530e8:	ee3b ba42 	vsub.f32	s22, s22, s4
d00530ec:	ee87 5a87 	vdiv.f32	s10, s15, s14
d00530f0:	ee07 0a10 	vmov	s14, r0
d00530f4:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00530f8:	ee77 7ae6 	vsub.f32	s15, s15, s13
d00530fc:	eef8 6ac7 	vcvt.f32.s32	s13, s14
d0053100:	ee76 6aa7 	vadd.f32	s13, s13, s15
d0053104:	ee61 1a85 	vmul.f32	s3, s3, s10
d0053108:	ee2b ba05 	vmul.f32	s22, s22, s10
d005310c:	eea6 3aa1 	vfma.f32	s6, s13, s3
d0053110:	eea6 2a8b 	vfma.f32	s4, s13, s22
d0053114:	9a04      	ldr	r2, [sp, #16]
d0053116:	eeb6 5a00 	vmov.f32	s10, #96	; 0x3f000000  0.5
d005311a:	4b5a      	ldr	r3, [pc, #360]	; (d0053284 <fillTriangleDitherBayerT+0x7d4>)
d005311c:	ebc2 1e02 	rsb	lr, r2, r2, lsl #4
d0053120:	990a      	ldr	r1, [sp, #40]	; 0x28
d0053122:	681f      	ldr	r7, [r3, #0]
d0053124:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0053128:	eb01 1e4e 	add.w	lr, r1, lr, lsl #5
d005312c:	f002 0803 	and.w	r8, r2, #3
d0053130:	eb02 1383 	add.w	r3, r2, r3, lsl #6
d0053134:	4a54      	ldr	r2, [pc, #336]	; (d0053288 <fillTriangleDitherBayerT+0x7d8>)
d0053136:	4486      	add	lr, r0
d0053138:	441f      	add	r7, r3
d005313a:	9b09      	ldr	r3, [sp, #36]	; 0x24
d005313c:	eb02 0888 	add.w	r8, r2, r8, lsl #2
d0053140:	eb03 0e4e 	add.w	lr, r3, lr, lsl #1
d0053144:	eba6 0c00 	sub.w	ip, r6, r0
d0053148:	eeb4 3aca 	vcmpe.f32	s6, s20
d005314c:	f10c 0301 	add.w	r3, ip, #1
d0053150:	2b30      	cmp	r3, #48	; 0x30
d0053152:	bfa8      	it	ge
d0053154:	2330      	movge	r3, #48	; 0x30
d0053156:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005315a:	d963      	bls.n	d0053224 <fillTriangleDitherBayerT+0x774>
d005315c:	f1bc 0f00 	cmp.w	ip, #0
d0053160:	ee82 7a03 	vdiv.f32	s14, s4, s6
d0053164:	dd6e      	ble.n	d0053244 <fillTriangleDitherBayerT+0x794>
d0053166:	1e5a      	subs	r2, r3, #1
d0053168:	ee07 2a90 	vmov	s15, r2
d005316c:	eef0 6a43 	vmov.f32	s13, s6
d0053170:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053174:	eee7 6aa1 	vfma.f32	s13, s15, s3
d0053178:	eef4 6aca 	vcmpe.f32	s13, s20
d005317c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053180:	dd6a      	ble.n	d0053258 <fillTriangleDitherBayerT+0x7a8>
d0053182:	eeb0 ca42 	vmov.f32	s24, s4
d0053186:	9a03      	ldr	r2, [sp, #12]
d0053188:	eea7 ca8b 	vfma.f32	s24, s15, s22
d005318c:	eecc ba26 	vdiv.f32	s23, s24, s13
d0053190:	ee7b bac7 	vsub.f32	s23, s23, s14
d0053194:	eecb 6aa7 	vdiv.f32	s13, s23, s15
d0053198:	2a00      	cmp	r2, #0
d005319a:	f000 81b6 	beq.w	d005350a <fillTriangleDitherBayerT+0xa5a>
d005319e:	f000 0503 	and.w	r5, r0, #3
d00531a2:	f1ae 0902 	sub.w	r9, lr, #2
d00531a6:	2100      	movs	r1, #0
d00531a8:	fec7 7a06 	vmaxnm.f32	s15, s14, s12
d00531ac:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d00531b0:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d00531b4:	f105 0a01 	add.w	sl, r5, #1
d00531b8:	ee77 7a85 	vadd.f32	s15, s15, s10
d00531bc:	ee37 7a26 	vadd.f32	s14, s14, s13
d00531c0:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00531c4:	ee17 2a90 	vmov	r2, s15
d00531c8:	b292      	uxth	r2, r2
d00531ca:	4593      	cmp	fp, r2
d00531cc:	d90b      	bls.n	d00531e6 <fillTriangleDitherBayerT+0x736>
d00531ce:	f818 b005 	ldrb.w	fp, [r8, r5]
d00531d2:	eb01 0581 	add.w	r5, r1, r1, lsl #2
d00531d6:	45a3      	cmp	fp, r4
d00531d8:	ea4f 1585 	mov.w	r5, r5, lsl #6
d00531dc:	db03      	blt.n	d00531e6 <fillTriangleDitherBayerT+0x736>
d00531de:	f8a9 2000 	strh.w	r2, [r9]
d00531e2:	9a00      	ldr	r2, [sp, #0]
d00531e4:	557a      	strb	r2, [r7, r5]
d00531e6:	3101      	adds	r1, #1
d00531e8:	f00a 0503 	and.w	r5, sl, #3
d00531ec:	428b      	cmp	r3, r1
d00531ee:	dcdb      	bgt.n	d00531a8 <fillTriangleDitherBayerT+0x6f8>
d00531f0:	f1bc 0f00 	cmp.w	ip, #0
d00531f4:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d00531f8:	ea4f 0143 	mov.w	r1, r3, lsl #1
d00531fc:	ea4f 1282 	mov.w	r2, r2, lsl #6
d0053200:	bfbc      	itt	lt
d0053202:	2102      	movlt	r1, #2
d0053204:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d0053208:	448e      	add	lr, r1
d005320a:	4417      	add	r7, r2
d005320c:	ee07 3a90 	vmov	s15, r3
d0053210:	4418      	add	r0, r3
d0053212:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053216:	eea7 3aa1 	vfma.f32	s6, s15, s3
d005321a:	eea7 2a8b 	vfma.f32	s4, s15, s22
d005321e:	4286      	cmp	r6, r0
d0053220:	da90      	bge.n	d0053144 <fillTriangleDitherBayerT+0x694>
d0053222:	e5e0      	b.n	d0052de6 <fillTriangleDitherBayerT+0x336>
d0053224:	ee07 3a90 	vmov	s15, r3
d0053228:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d005322c:	eb0e 0e43 	add.w	lr, lr, r3, lsl #1
d0053230:	4418      	add	r0, r3
d0053232:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053236:	eb07 1782 	add.w	r7, r7, r2, lsl #6
d005323a:	eea7 3aa1 	vfma.f32	s6, s15, s3
d005323e:	eea7 2a8b 	vfma.f32	s4, s15, s22
d0053242:	e7ec      	b.n	d005321e <fillTriangleDitherBayerT+0x76e>
d0053244:	9a03      	ldr	r2, [sp, #12]
d0053246:	f000 0503 	and.w	r5, r0, #3
d005324a:	b30a      	cbz	r2, d0053290 <fillTriangleDitherBayerT+0x7e0>
d005324c:	f1bc 0f00 	cmp.w	ip, #0
d0053250:	dbdc      	blt.n	d005320c <fillTriangleDitherBayerT+0x75c>
d0053252:	eef0 6a46 	vmov.f32	s13, s12
d0053256:	e7a4      	b.n	d00531a2 <fillTriangleDitherBayerT+0x6f2>
d0053258:	9a03      	ldr	r2, [sp, #12]
d005325a:	2a00      	cmp	r2, #0
d005325c:	f000 8158 	beq.w	d0053510 <fillTriangleDitherBayerT+0xa60>
d0053260:	eef0 6a46 	vmov.f32	s13, s12
d0053264:	f000 0503 	and.w	r5, r0, #3
d0053268:	e79b      	b.n	d00531a2 <fillTriangleDitherBayerT+0x6f2>
d005326a:	bf00      	nop
d005326c:	d005b784 	.word	0xd005b784
d0053270:	d005b780 	.word	0xd005b780
d0053274:	d005b788 	.word	0xd005b788
d0053278:	33d6bf95 	.word	0x33d6bf95
d005327c:	477fff00 	.word	0x477fff00
d0053280:	00000000 	.word	0x00000000
d0053284:	d00f5aa4 	.word	0xd00f5aa4
d0053288:	d005ac7c 	.word	0xd005ac7c
d005328c:	38d1b717 	.word	0x38d1b717
d0053290:	f1bc 0f00 	cmp.w	ip, #0
d0053294:	dbba      	blt.n	d005320c <fillTriangleDitherBayerT+0x75c>
d0053296:	eef0 6a46 	vmov.f32	s13, s12
d005329a:	f1ae 0902 	sub.w	r9, lr, #2
d005329e:	2100      	movs	r1, #0
d00532a0:	f8cd c014 	str.w	ip, [sp, #20]
d00532a4:	9606      	str	r6, [sp, #24]
d00532a6:	9007      	str	r0, [sp, #28]
d00532a8:	fec7 7a06 	vmaxnm.f32	s15, s14, s12
d00532ac:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d00532b0:	ee77 7a85 	vadd.f32	s15, s15, s10
d00532b4:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d00532b8:	ee37 7a26 	vadd.f32	s14, s14, s13
d00532bc:	f105 0a01 	add.w	sl, r5, #1
d00532c0:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00532c4:	ee17 2a90 	vmov	r2, s15
d00532c8:	b292      	uxth	r2, r2
d00532ca:	4593      	cmp	fp, r2
d00532cc:	d912      	bls.n	d00532f4 <fillTriangleDitherBayerT+0x844>
d00532ce:	f818 b005 	ldrb.w	fp, [r8, r5]
d00532d2:	eb01 0581 	add.w	r5, r1, r1, lsl #2
d00532d6:	45a3      	cmp	fp, r4
d00532d8:	ea4f 1585 	mov.w	r5, r5, lsl #6
d00532dc:	db0a      	blt.n	d00532f4 <fillTriangleDitherBayerT+0x844>
d00532de:	9801      	ldr	r0, [sp, #4]
d00532e0:	f8a9 2000 	strh.w	r2, [r9]
d00532e4:	4606      	mov	r6, r0
d00532e6:	9800      	ldr	r0, [sp, #0]
d00532e8:	4684      	mov	ip, r0
d00532ea:	9802      	ldr	r0, [sp, #8]
d00532ec:	4583      	cmp	fp, r0
d00532ee:	bfa8      	it	ge
d00532f0:	4666      	movge	r6, ip
d00532f2:	557e      	strb	r6, [r7, r5]
d00532f4:	3101      	adds	r1, #1
d00532f6:	f00a 0503 	and.w	r5, sl, #3
d00532fa:	428b      	cmp	r3, r1
d00532fc:	dcd4      	bgt.n	d00532a8 <fillTriangleDitherBayerT+0x7f8>
d00532fe:	f8dd c014 	ldr.w	ip, [sp, #20]
d0053302:	9e06      	ldr	r6, [sp, #24]
d0053304:	9807      	ldr	r0, [sp, #28]
d0053306:	e773      	b.n	d00531f0 <fillTriangleDitherBayerT+0x740>
d0053308:	ee77 7ae6 	vsub.f32	s15, s15, s13
d005330c:	ed1f 1a21 	vldr	s2, [pc, #-132]	; d005328c <fillTriangleDitherBayerT+0x7dc>
d0053310:	eef4 7ac1 	vcmpe.f32	s15, s2
d0053314:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053318:	f340 810a 	ble.w	d0053530 <fillTriangleDitherBayerT+0xa80>
d005331c:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0053320:	ee73 3ae5 	vsub.f32	s7, s7, s11
d0053324:	ee71 1ac4 	vsub.f32	s3, s3, s8
d0053328:	ee80 1a27 	vdiv.f32	s2, s0, s15
d005332c:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0053330:	ee77 6ae6 	vsub.f32	s13, s15, s13
d0053334:	ee07 0a90 	vmov	s15, r0
d0053338:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005333c:	ee77 6aa6 	vadd.f32	s13, s15, s13
d0053340:	ee63 3a81 	vmul.f32	s7, s7, s2
d0053344:	ee61 1a81 	vmul.f32	s3, s3, s2
d0053348:	eee6 5aa3 	vfma.f32	s11, s13, s7
d005334c:	eea6 4aa1 	vfma.f32	s8, s13, s3
d0053350:	9a04      	ldr	r2, [sp, #16]
d0053352:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0053356:	4b79      	ldr	r3, [pc, #484]	; (d005353c <fillTriangleDitherBayerT+0xa8c>)
d0053358:	ebc2 1c02 	rsb	ip, r2, r2, lsl #4
d005335c:	9910      	ldr	r1, [sp, #64]	; 0x40
d005335e:	681f      	ldr	r7, [r3, #0]
d0053360:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0053364:	eb01 1c4c 	add.w	ip, r1, ip, lsl #5
d0053368:	f002 0e03 	and.w	lr, r2, #3
d005336c:	eb02 1383 	add.w	r3, r2, r3, lsl #6
d0053370:	4a73      	ldr	r2, [pc, #460]	; (d0053540 <fillTriangleDitherBayerT+0xa90>)
d0053372:	4484      	add	ip, r0
d0053374:	441f      	add	r7, r3
d0053376:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d0053378:	eb02 0e8e 	add.w	lr, r2, lr, lsl #2
d005337c:	eb03 0c4c 	add.w	ip, r3, ip, lsl #1
d0053380:	1a35      	subs	r5, r6, r0
d0053382:	eef4 5aeb 	vcmpe.f32	s11, s23
d0053386:	1c6a      	adds	r2, r5, #1
d0053388:	2a30      	cmp	r2, #48	; 0x30
d005338a:	bfa8      	it	ge
d005338c:	2230      	movge	r2, #48	; 0x30
d005338e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053392:	d961      	bls.n	d0053458 <fillTriangleDitherBayerT+0x9a8>
d0053394:	2d00      	cmp	r5, #0
d0053396:	ee84 1a25 	vdiv.f32	s2, s8, s11
d005339a:	dd6d      	ble.n	d0053478 <fillTriangleDitherBayerT+0x9c8>
d005339c:	1e53      	subs	r3, r2, #1
d005339e:	ee07 3a90 	vmov	s15, r3
d00533a2:	eeb0 0a65 	vmov.f32	s0, s11
d00533a6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00533aa:	eea7 0aa3 	vfma.f32	s0, s15, s7
d00533ae:	eeb4 0aeb 	vcmpe.f32	s0, s23
d00533b2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00533b6:	f340 80a0 	ble.w	d00534fa <fillTriangleDitherBayerT+0xa4a>
d00533ba:	eeb0 fa44 	vmov.f32	s30, s8
d00533be:	eea7 faa1 	vfma.f32	s30, s15, s3
d00533c2:	eecf 9a00 	vdiv.f32	s19, s30, s0
d00533c6:	ee79 9ac1 	vsub.f32	s19, s19, s2
d00533ca:	ee89 0aa7 	vdiv.f32	s0, s19, s15
d00533ce:	9b03      	ldr	r3, [sp, #12]
d00533d0:	2b00      	cmp	r3, #0
d00533d2:	d05b      	beq.n	d005348c <fillTriangleDitherBayerT+0x9dc>
d00533d4:	f000 0403 	and.w	r4, r0, #3
d00533d8:	f1ac 0902 	sub.w	r9, ip, #2
d00533dc:	2100      	movs	r1, #0
d00533de:	fec1 7a07 	vmaxnm.f32	s15, s2, s14
d00533e2:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d00533e6:	ee77 7aa6 	vadd.f32	s15, s15, s13
d00533ea:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d00533ee:	ee31 1a00 	vadd.f32	s2, s2, s0
d00533f2:	f104 0a01 	add.w	sl, r4, #1
d00533f6:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00533fa:	ee17 3a90 	vmov	r3, s15
d00533fe:	b29b      	uxth	r3, r3
d0053400:	459b      	cmp	fp, r3
d0053402:	d90b      	bls.n	d005341c <fillTriangleDitherBayerT+0x96c>
d0053404:	f81e b004 	ldrb.w	fp, [lr, r4]
d0053408:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d005340c:	45c3      	cmp	fp, r8
d005340e:	ea4f 1484 	mov.w	r4, r4, lsl #6
d0053412:	db03      	blt.n	d005341c <fillTriangleDitherBayerT+0x96c>
d0053414:	f8a9 3000 	strh.w	r3, [r9]
d0053418:	9b00      	ldr	r3, [sp, #0]
d005341a:	553b      	strb	r3, [r7, r4]
d005341c:	3101      	adds	r1, #1
d005341e:	f00a 0403 	and.w	r4, sl, #3
d0053422:	428a      	cmp	r2, r1
d0053424:	dcdb      	bgt.n	d00533de <fillTriangleDitherBayerT+0x92e>
d0053426:	2d00      	cmp	r5, #0
d0053428:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d005342c:	ea4f 0142 	mov.w	r1, r2, lsl #1
d0053430:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0053434:	bfbc      	itt	lt
d0053436:	2102      	movlt	r1, #2
d0053438:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d005343c:	448c      	add	ip, r1
d005343e:	441f      	add	r7, r3
d0053440:	ee07 2a90 	vmov	s15, r2
d0053444:	4410      	add	r0, r2
d0053446:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005344a:	eee7 5aa3 	vfma.f32	s11, s15, s7
d005344e:	eea7 4aa1 	vfma.f32	s8, s15, s3
d0053452:	4286      	cmp	r6, r0
d0053454:	da94      	bge.n	d0053380 <fillTriangleDitherBayerT+0x8d0>
d0053456:	e5e4      	b.n	d0053022 <fillTriangleDitherBayerT+0x572>
d0053458:	ee07 2a90 	vmov	s15, r2
d005345c:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0053460:	eb0c 0c42 	add.w	ip, ip, r2, lsl #1
d0053464:	4410      	add	r0, r2
d0053466:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005346a:	eb07 1783 	add.w	r7, r7, r3, lsl #6
d005346e:	eee7 5aa3 	vfma.f32	s11, s15, s7
d0053472:	eea7 4aa1 	vfma.f32	s8, s15, s3
d0053476:	e7ec      	b.n	d0053452 <fillTriangleDitherBayerT+0x9a2>
d0053478:	9b03      	ldr	r3, [sp, #12]
d005347a:	f000 0403 	and.w	r4, r0, #3
d005347e:	2b00      	cmp	r3, #0
d0053480:	d03e      	beq.n	d0053500 <fillTriangleDitherBayerT+0xa50>
d0053482:	2d00      	cmp	r5, #0
d0053484:	d1dc      	bne.n	d0053440 <fillTriangleDitherBayerT+0x990>
d0053486:	eeb0 0a47 	vmov.f32	s0, s14
d005348a:	e7a5      	b.n	d00533d8 <fillTriangleDitherBayerT+0x928>
d005348c:	f000 0403 	and.w	r4, r0, #3
d0053490:	f1ac 0902 	sub.w	r9, ip, #2
d0053494:	2100      	movs	r1, #0
d0053496:	9605      	str	r6, [sp, #20]
d0053498:	9506      	str	r5, [sp, #24]
d005349a:	9007      	str	r0, [sp, #28]
d005349c:	fec1 7a07 	vmaxnm.f32	s15, s2, s14
d00534a0:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d00534a4:	ee77 7aa6 	vadd.f32	s15, s15, s13
d00534a8:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d00534ac:	ee31 1a00 	vadd.f32	s2, s2, s0
d00534b0:	f104 0a01 	add.w	sl, r4, #1
d00534b4:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00534b8:	ee17 3a90 	vmov	r3, s15
d00534bc:	b29b      	uxth	r3, r3
d00534be:	459b      	cmp	fp, r3
d00534c0:	d912      	bls.n	d00534e8 <fillTriangleDitherBayerT+0xa38>
d00534c2:	f81e b004 	ldrb.w	fp, [lr, r4]
d00534c6:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d00534ca:	45c3      	cmp	fp, r8
d00534cc:	ea4f 1484 	mov.w	r4, r4, lsl #6
d00534d0:	db0a      	blt.n	d00534e8 <fillTriangleDitherBayerT+0xa38>
d00534d2:	9800      	ldr	r0, [sp, #0]
d00534d4:	f8a9 3000 	strh.w	r3, [r9]
d00534d8:	4605      	mov	r5, r0
d00534da:	9801      	ldr	r0, [sp, #4]
d00534dc:	4606      	mov	r6, r0
d00534de:	9802      	ldr	r0, [sp, #8]
d00534e0:	4583      	cmp	fp, r0
d00534e2:	bfb8      	it	lt
d00534e4:	4635      	movlt	r5, r6
d00534e6:	553d      	strb	r5, [r7, r4]
d00534e8:	3101      	adds	r1, #1
d00534ea:	f00a 0403 	and.w	r4, sl, #3
d00534ee:	428a      	cmp	r2, r1
d00534f0:	dcd4      	bgt.n	d005349c <fillTriangleDitherBayerT+0x9ec>
d00534f2:	9e05      	ldr	r6, [sp, #20]
d00534f4:	9d06      	ldr	r5, [sp, #24]
d00534f6:	9807      	ldr	r0, [sp, #28]
d00534f8:	e795      	b.n	d0053426 <fillTriangleDitherBayerT+0x976>
d00534fa:	eeb0 0a47 	vmov.f32	s0, s14
d00534fe:	e766      	b.n	d00533ce <fillTriangleDitherBayerT+0x91e>
d0053500:	2d00      	cmp	r5, #0
d0053502:	db9d      	blt.n	d0053440 <fillTriangleDitherBayerT+0x990>
d0053504:	eeb0 0a47 	vmov.f32	s0, s14
d0053508:	e7c2      	b.n	d0053490 <fillTriangleDitherBayerT+0x9e0>
d005350a:	f000 0503 	and.w	r5, r0, #3
d005350e:	e6c4      	b.n	d005329a <fillTriangleDitherBayerT+0x7ea>
d0053510:	eef0 6a46 	vmov.f32	s13, s12
d0053514:	f000 0503 	and.w	r5, r0, #3
d0053518:	e6bf      	b.n	d005329a <fillTriangleDitherBayerT+0x7ea>
d005351a:	2310      	movs	r3, #16
d005351c:	9300      	str	r3, [sp, #0]
d005351e:	2310      	movs	r3, #16
d0053520:	9301      	str	r3, [sp, #4]
d0053522:	f7ff bb35 	b.w	d0052b90 <fillTriangleDitherBayerT+0xe0>
d0053526:	eeb0 ba46 	vmov.f32	s22, s12
d005352a:	eef0 1a46 	vmov.f32	s3, s12
d005352e:	e5f1      	b.n	d0053114 <fillTriangleDitherBayerT+0x664>
d0053530:	eef0 1a47 	vmov.f32	s3, s14
d0053534:	eef0 3a47 	vmov.f32	s7, s14
d0053538:	e70a      	b.n	d0053350 <fillTriangleDitherBayerT+0x8a0>
d005353a:	bf00      	nop
d005353c:	d00f5aa4 	.word	0xd00f5aa4
d0053540:	d005ac7c 	.word	0xd005ac7c

d0053544 <fillTriangleDitherBayer2Mode>:
d0053544:	ed9f 7ad6 	vldr	s14, [pc, #856]	; d00538a0 <fillTriangleDitherBayer2Mode+0x35c>
d0053548:	eef4 0ac7 	vcmpe.f32	s1, s14
d005354c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0053550:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053554:	eeb4 1ac7 	vcmpe.f32	s2, s14
d0053558:	ed2d 8b10 	vpush	{d8-d15}
d005355c:	b091      	sub	sp, #68	; 0x44
d005355e:	9305      	str	r3, [sp, #20]
d0053560:	bf94      	ite	ls
d0053562:	2301      	movls	r3, #1
d0053564:	2300      	movhi	r3, #0
d0053566:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005356a:	9002      	str	r0, [sp, #8]
d005356c:	9103      	str	r1, [sp, #12]
d005356e:	bf98      	it	ls
d0053570:	f043 0301 	orrls.w	r3, r3, #1
d0053574:	9204      	str	r2, [sp, #16]
d0053576:	f8bd 00b0 	ldrh.w	r0, [sp, #176]	; 0xb0
d005357a:	f8bd 10b4 	ldrh.w	r1, [sp, #180]	; 0xb4
d005357e:	f8bd 20b8 	ldrh.w	r2, [sp, #184]	; 0xb8
d0053582:	f89d b0bc 	ldrb.w	fp, [sp, #188]	; 0xbc
d0053586:	ed8d 0a00 	vstr	s0, [sp]
d005358a:	edcd 1a01 	vstr	s3, [sp, #4]
d005358e:	2b00      	cmp	r3, #0
d0053590:	f040 8162 	bne.w	d0053858 <fillTriangleDitherBayer2Mode+0x314>
d0053594:	eeb4 0a47 	vcmp.f32	s0, s14
d0053598:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005359c:	f240 815c 	bls.w	d0053858 <fillTriangleDitherBayer2Mode+0x314>
d00535a0:	eef7 4a00 	vmov.f32	s9, #112	; 0x3f800000  1.0
d00535a4:	ee07 0a10 	vmov	s14, r0
d00535a8:	eef0 6a41 	vmov.f32	s13, s2
d00535ac:	ee05 1a90 	vmov	s11, r1
d00535b0:	eef0 7a61 	vmov.f32	s15, s3
d00535b4:	ee84 3a80 	vdiv.f32	s6, s9, s0
d00535b8:	ee84 1aa6 	vdiv.f32	s2, s9, s13
d00535bc:	ee06 2a90 	vmov	s13, r2
d00535c0:	eec4 1aa0 	vdiv.f32	s3, s9, s1
d00535c4:	eef8 2a66 	vcvt.f32.u32	s5, s13
d00535c8:	eddd 6a03 	vldr	s13, [sp, #12]
d00535cc:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d00535d0:	eeb8 5ae6 	vcvt.f32.s32	s10, s13
d00535d4:	eddd 6a05 	vldr	s13, [sp, #20]
d00535d8:	eef8 5a65 	vcvt.f32.u32	s11, s11
d00535dc:	eef8 3ae6 	vcvt.f32.s32	s7, s13
d00535e0:	eddd 6a02 	vldr	s13, [sp, #8]
d00535e4:	ee27 7a03 	vmul.f32	s14, s14, s6
d00535e8:	eeb8 6ae6 	vcvt.f32.s32	s12, s13
d00535ec:	eddd 6a04 	vldr	s13, [sp, #16]
d00535f0:	eeb4 5ae3 	vcmpe.f32	s10, s7
d00535f4:	eef8 4ae6 	vcvt.f32.s32	s9, s13
d00535f8:	eddd 6a2a 	vldr	s13, [sp, #168]	; 0xa8
d00535fc:	ee62 2a81 	vmul.f32	s5, s5, s2
d0053600:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053604:	eeb8 2ae6 	vcvt.f32.s32	s4, s13
d0053608:	eddd 6a2b 	vldr	s13, [sp, #172]	; 0xac
d005360c:	ee65 5aa1 	vmul.f32	s11, s11, s3
d0053610:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0053614:	f300 8125 	bgt.w	d0053862 <fillTriangleDitherBayer2Mode+0x31e>
d0053618:	eeb4 5ae6 	vcmpe.f32	s10, s13
d005361c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053620:	f300 8225 	bgt.w	d0053a6e <fillTriangleDitherBayer2Mode+0x52a>
d0053624:	eef4 3ae6 	vcmpe.f32	s7, s13
d0053628:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005362c:	f300 823d 	bgt.w	d0053aaa <fillTriangleDitherBayer2Mode+0x566>
d0053630:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d0053634:	ee75 0a04 	vadd.f32	s1, s10, s8
d0053638:	ee36 4a84 	vadd.f32	s8, s13, s8
d005363c:	eefd 0ae0 	vcvt.s32.f32	s1, s1
d0053640:	eebd 4ac4 	vcvt.s32.f32	s8, s8
d0053644:	ee10 3a90 	vmov	r3, s1
d0053648:	ee14 2a10 	vmov	r2, s8
d005364c:	4293      	cmp	r3, r2
d005364e:	f000 8103 	beq.w	d0053858 <fillTriangleDitherBayer2Mode+0x314>
d0053652:	ee76 8ac5 	vsub.f32	s17, s13, s10
d0053656:	ed9f 4a92 	vldr	s8, [pc, #584]	; d00538a0 <fillTriangleDitherBayer2Mode+0x35c>
d005365a:	eef4 8ac4 	vcmpe.f32	s17, s8
d005365e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053662:	f240 80f9 	bls.w	d0053858 <fillTriangleDitherBayer2Mode+0x314>
d0053666:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d005366a:	ee33 9ac5 	vsub.f32	s18, s7, s10
d005366e:	ee32 0a46 	vsub.f32	s0, s4, s12
d0053672:	eec9 0aa8 	vdiv.f32	s1, s19, s17
d0053676:	eeb4 9ac4 	vcmpe.f32	s18, s8
d005367a:	ee31 8a43 	vsub.f32	s16, s2, s6
d005367e:	ee72 8ac7 	vsub.f32	s17, s5, s14
d0053682:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053686:	ee20 0a20 	vmul.f32	s0, s0, s1
d005368a:	ee28 8a20 	vmul.f32	s16, s16, s1
d005368e:	ee68 8aa0 	vmul.f32	s17, s17, s1
d0053692:	f300 8115 	bgt.w	d00538c0 <fillTriangleDitherBayer2Mode+0x37c>
d0053696:	eef1 9a04 	vmov.f32	s19, #20	; 0x40a00000  5.0
d005369a:	ed9f ba87 	vldr	s22, [pc, #540]	; d00538b8 <fillTriangleDitherBayer2Mode+0x374>
d005369e:	eddf 0a87 	vldr	s1, [pc, #540]	; d00538bc <fillTriangleDitherBayer2Mode+0x378>
d00536a2:	ee76 fae3 	vsub.f32	s31, s13, s7
d00536a6:	fec7 7a8b 	vmaxnm.f32	s15, s15, s22
d00536aa:	fec7 7ae9 	vminnm.f32	s15, s15, s19
d00536ae:	ee67 7aa0 	vmul.f32	s15, s15, s1
d00536b2:	eef4 fac4 	vcmpe.f32	s31, s8
d00536b6:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00536ba:	ee17 3a90 	vmov	r3, s15
d00536be:	edcd 7a00 	vstr	s15, [sp]
d00536c2:	2b10      	cmp	r3, #16
d00536c4:	bfa8      	it	ge
d00536c6:	2310      	movge	r3, #16
d00536c8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00536cc:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d00536d0:	9302      	str	r3, [sp, #8]
d00536d2:	f340 80c1 	ble.w	d0053858 <fillTriangleDitherBayer2Mode+0x314>
d00536d6:	eef0 9a4b 	vmov.f32	s19, s22
d00536da:	eef0 ba4b 	vmov.f32	s23, s22
d00536de:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d00536e2:	ed9f 4a6f 	vldr	s8, [pc, #444]	; d00538a0 <fillTriangleDitherBayer2Mode+0x35c>
d00536e6:	ee32 2a64 	vsub.f32	s4, s4, s9
d00536ea:	ee31 1a61 	vsub.f32	s2, s2, s3
d00536ee:	eec0 7aaf 	vdiv.f32	s15, s1, s31
d00536f2:	eeb4 9ac4 	vcmpe.f32	s18, s8
d00536f6:	ee72 2ae5 	vsub.f32	s5, s5, s11
d00536fa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00536fe:	ee22 2a27 	vmul.f32	s4, s4, s15
d0053702:	ee22 faa7 	vmul.f32	s30, s5, s15
d0053706:	ed8d 2a08 	vstr	s4, [sp, #32]
d005370a:	ee21 2a27 	vmul.f32	s4, s2, s15
d005370e:	ed8d 2a07 	vstr	s4, [sp, #28]
d0053712:	f300 810d 	bgt.w	d0053930 <fillTriangleDitherBayer2Mode+0x3ec>
d0053716:	4a63      	ldr	r2, [pc, #396]	; (d00538a4 <fillTriangleDitherBayer2Mode+0x360>)
d0053718:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d005371c:	4b62      	ldr	r3, [pc, #392]	; (d00538a8 <fillTriangleDitherBayer2Mode+0x364>)
d005371e:	6812      	ldr	r2, [r2, #0]
d0053720:	681b      	ldr	r3, [r3, #0]
d0053722:	edcd 7a04 	vstr	s15, [sp, #16]
d0053726:	9203      	str	r2, [sp, #12]
d0053728:	9305      	str	r3, [sp, #20]
d005372a:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d005372e:	9a04      	ldr	r2, [sp, #16]
d0053730:	9905      	ldr	r1, [sp, #20]
d0053732:	4691      	mov	r9, r2
d0053734:	9a03      	ldr	r2, [sp, #12]
d0053736:	ee17 3a90 	vmov	r3, s15
d005373a:	4591      	cmp	r9, r2
d005373c:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
d0053740:	bfb8      	it	lt
d0053742:	4691      	movlt	r9, r2
d0053744:	428b      	cmp	r3, r1
d0053746:	bfa8      	it	ge
d0053748:	460b      	movge	r3, r1
d005374a:	454b      	cmp	r3, r9
d005374c:	f2c0 8084 	blt.w	d0053858 <fillTriangleDitherBayer2Mode+0x314>
d0053750:	ee07 9a90 	vmov	s15, r9
d0053754:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0053758:	3301      	adds	r3, #1
d005375a:	eba2 1202 	sub.w	r2, r2, r2, lsl #4
d005375e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053762:	4952      	ldr	r1, [pc, #328]	; (d00538ac <fillTriangleDitherBayer2Mode+0x368>)
d0053764:	0152      	lsls	r2, r2, #5
d0053766:	ed9d ba08 	vldr	s22, [sp, #32]
d005376a:	eddd aa07 	vldr	s21, [sp, #28]
d005376e:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0053772:	9301      	str	r3, [sp, #4]
d0053774:	680b      	ldr	r3, [r1, #0]
d0053776:	ed9f 9a4a 	vldr	s18, [pc, #296]	; d00538a0 <fillTriangleDitherBayer2Mode+0x35c>
d005377a:	ee37 5ac5 	vsub.f32	s10, s15, s10
d005377e:	eddf 0a4c 	vldr	s1, [pc, #304]	; d00538b0 <fillTriangleDitherBayer2Mode+0x36c>
d0053782:	ee77 3ae3 	vsub.f32	s7, s15, s7
d0053786:	ed9f 4a4c 	vldr	s8, [pc, #304]	; d00538b8 <fillTriangleDitherBayer2Mode+0x374>
d005378a:	ed9f 1a4a 	vldr	s2, [pc, #296]	; d00538b4 <fillTriangleDitherBayer2Mode+0x370>
d005378e:	eea0 6a05 	vfma.f32	s12, s0, s10
d0053792:	9206      	str	r2, [sp, #24]
d0053794:	eea8 3a05 	vfma.f32	s6, s16, s10
d0053798:	9305      	str	r3, [sp, #20]
d005379a:	eea8 7a85 	vfma.f32	s14, s17, s10
d005379e:	eeeb 4a23 	vfma.f32	s9, s22, s7
d00537a2:	eeea 1aa3 	vfma.f32	s3, s21, s7
d00537a6:	eeef 5a23 	vfma.f32	s11, s30, s7
d00537aa:	e033      	b.n	d0053814 <fillTriangleDitherBayer2Mode+0x2d0>
d00537ac:	eeb0 2a47 	vmov.f32	s4, s14
d00537b0:	eef0 9a43 	vmov.f32	s19, s6
d00537b4:	eef0 6a46 	vmov.f32	s13, s12
d00537b8:	eef0 3a65 	vmov.f32	s7, s11
d00537bc:	eeb0 5a61 	vmov.f32	s10, s3
d00537c0:	eef0 2a64 	vmov.f32	s5, s9
d00537c4:	fefa 7a66 	vrintp.f32	s15, s13
d00537c8:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00537cc:	f240 13df 	movw	r3, #479	; 0x1df
d00537d0:	ee17 4a90 	vmov	r4, s15
d00537d4:	fefa 7a62 	vrintp.f32	s15, s5
d00537d8:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00537dc:	3c01      	subs	r4, #1
d00537de:	ee17 1a90 	vmov	r1, s15
d00537e2:	429c      	cmp	r4, r3
d00537e4:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d00537e8:	bfa8      	it	ge
d00537ea:	461c      	movge	r4, r3
d00537ec:	42a1      	cmp	r1, r4
d00537ee:	f340 818e 	ble.w	d0053b0e <fillTriangleDitherBayer2Mode+0x5ca>
d00537f2:	f109 0901 	add.w	r9, r9, #1
d00537f6:	9b01      	ldr	r3, [sp, #4]
d00537f8:	ee36 6a00 	vadd.f32	s12, s12, s0
d00537fc:	4599      	cmp	r9, r3
d00537fe:	ee33 3a08 	vadd.f32	s6, s6, s16
d0053802:	ee37 7a28 	vadd.f32	s14, s14, s17
d0053806:	ee74 4a8b 	vadd.f32	s9, s9, s22
d005380a:	ee71 1aaa 	vadd.f32	s3, s3, s21
d005380e:	ee75 5a8f 	vadd.f32	s11, s11, s30
d0053812:	d021      	beq.n	d0053858 <fillTriangleDitherBayer2Mode+0x314>
d0053814:	eeb4 6ae4 	vcmpe.f32	s12, s9
d0053818:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005381c:	dcc6      	bgt.n	d00537ac <fillTriangleDitherBayer2Mode+0x268>
d005381e:	eeb0 2a65 	vmov.f32	s4, s11
d0053822:	eef0 9a61 	vmov.f32	s19, s3
d0053826:	eef0 6a64 	vmov.f32	s13, s9
d005382a:	eef0 3a47 	vmov.f32	s7, s14
d005382e:	eeb0 5a43 	vmov.f32	s10, s6
d0053832:	eef0 2a46 	vmov.f32	s5, s12
d0053836:	e7c5      	b.n	d00537c4 <fillTriangleDitherBayer2Mode+0x280>
d0053838:	eddd 6a0c 	vldr	s13, [sp, #48]	; 0x30
d005383c:	ed9d 6a0d 	vldr	s12, [sp, #52]	; 0x34
d0053840:	ed9d fa0e 	vldr	s30, [sp, #56]	; 0x38
d0053844:	eddd 1a0f 	vldr	s3, [sp, #60]	; 0x3c
d0053848:	eddf 7a15 	vldr	s15, [pc, #84]	; d00538a0 <fillTriangleDitherBayer2Mode+0x35c>
d005384c:	eef4 fae7 	vcmpe.f32	s31, s15
d0053850:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053854:	f73f af69 	bgt.w	d005372a <fillTriangleDitherBayer2Mode+0x1e6>
d0053858:	b011      	add	sp, #68	; 0x44
d005385a:	ecbd 8b10 	vpop	{d8-d15}
d005385e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0053862:	eef4 3ae6 	vcmpe.f32	s7, s13
d0053866:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005386a:	f340 8137 	ble.w	d0053adc <fillTriangleDitherBayer2Mode+0x598>
d005386e:	eeb0 8a62 	vmov.f32	s16, s5
d0053872:	eeb0 0a41 	vmov.f32	s0, s2
d0053876:	eef0 0a66 	vmov.f32	s1, s13
d005387a:	eeb0 4a42 	vmov.f32	s8, s4
d005387e:	eef0 2a47 	vmov.f32	s5, s14
d0053882:	eeb0 1a43 	vmov.f32	s2, s6
d0053886:	eef0 6a45 	vmov.f32	s13, s10
d005388a:	eeb0 2a46 	vmov.f32	s4, s12
d005388e:	eeb0 7a48 	vmov.f32	s14, s16
d0053892:	eeb0 3a40 	vmov.f32	s6, s0
d0053896:	eeb0 5a60 	vmov.f32	s10, s1
d005389a:	eeb0 6a44 	vmov.f32	s12, s8
d005389e:	e6c7      	b.n	d0053630 <fillTriangleDitherBayer2Mode+0xec>
d00538a0:	38d1b717 	.word	0x38d1b717
d00538a4:	d005b780 	.word	0xd005b780
d00538a8:	d005b784 	.word	0xd005b784
d00538ac:	d005b788 	.word	0xd005b788
d00538b0:	33d6bf95 	.word	0x33d6bf95
d00538b4:	477fff00 	.word	0x477fff00
d00538b8:	00000000 	.word	0x00000000
d00538bc:	404ccccd 	.word	0x404ccccd
d00538c0:	eec9 0a89 	vdiv.f32	s1, s19, s18
d00538c4:	ed1f aa04 	vldr	s20, [pc, #-16]	; d00538b8 <fillTriangleDitherBayer2Mode+0x374>
d00538c8:	ed5f 9a04 	vldr	s19, [pc, #-16]	; d00538bc <fillTriangleDitherBayer2Mode+0x378>
d00538cc:	fec7 7a8a 	vmaxnm.f32	s15, s15, s20
d00538d0:	eeb1 ba04 	vmov.f32	s22, #20	; 0x40a00000  5.0
d00538d4:	ee74 aac6 	vsub.f32	s21, s9, s12
d00538d8:	ee76 fae3 	vsub.f32	s31, s13, s7
d00538dc:	fec7 7acb 	vminnm.f32	s15, s15, s22
d00538e0:	ee67 7aa9 	vmul.f32	s15, s15, s19
d00538e4:	ee71 9ac3 	vsub.f32	s19, s3, s6
d00538e8:	eef4 fac4 	vcmpe.f32	s31, s8
d00538ec:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00538f0:	ee35 bac7 	vsub.f32	s22, s11, s14
d00538f4:	ee17 3a90 	vmov	r3, s15
d00538f8:	edcd 7a00 	vstr	s15, [sp]
d00538fc:	2b10      	cmp	r3, #16
d00538fe:	ee6a 7aa0 	vmul.f32	s15, s21, s1
d0053902:	ee2b ba20 	vmul.f32	s22, s22, s1
d0053906:	bfa8      	it	ge
d0053908:	2310      	movge	r3, #16
d005390a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005390e:	eef0 ba67 	vmov.f32	s23, s15
d0053912:	ee69 7aa0 	vmul.f32	s15, s19, s1
d0053916:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d005391a:	9302      	str	r3, [sp, #8]
d005391c:	eef0 9a67 	vmov.f32	s19, s15
d0053920:	f73f aedd 	bgt.w	d00536de <fillTriangleDitherBayer2Mode+0x19a>
d0053924:	eeb0 fa4a 	vmov.f32	s30, s20
d0053928:	ed8d aa07 	vstr	s20, [sp, #28]
d005392c:	ed8d aa08 	vstr	s20, [sp, #32]
d0053930:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0053934:	4bd0      	ldr	r3, [pc, #832]	; (d0053c78 <fillTriangleDitherBayer2Mode+0x734>)
d0053936:	4ad1      	ldr	r2, [pc, #836]	; (d0053c7c <fillTriangleDitherBayer2Mode+0x738>)
d0053938:	6819      	ldr	r1, [r3, #0]
d005393a:	ee17 3a90 	vmov	r3, s15
d005393e:	edcd 7a04 	vstr	s15, [sp, #16]
d0053942:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d0053946:	6812      	ldr	r2, [r2, #0]
d0053948:	3b01      	subs	r3, #1
d005394a:	9105      	str	r1, [sp, #20]
d005394c:	9203      	str	r2, [sp, #12]
d005394e:	ee17 9a90 	vmov	r9, s15
d0053952:	428b      	cmp	r3, r1
d0053954:	bfa8      	it	ge
d0053956:	460b      	movge	r3, r1
d0053958:	4591      	cmp	r9, r2
d005395a:	bfb8      	it	lt
d005395c:	4691      	movlt	r9, r2
d005395e:	454b      	cmp	r3, r9
d0053960:	f6ff af72 	blt.w	d0053848 <fillTriangleDitherBayer2Mode+0x304>
d0053964:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0053968:	3301      	adds	r3, #1
d005396a:	eeb0 aa46 	vmov.f32	s20, s12
d005396e:	49c4      	ldr	r1, [pc, #784]	; (d0053c80 <fillTriangleDitherBayer2Mode+0x73c>)
d0053970:	eba2 1202 	sub.w	r2, r2, r2, lsl #4
d0053974:	9301      	str	r3, [sp, #4]
d0053976:	ee37 4ac5 	vsub.f32	s8, s15, s10
d005397a:	ee07 9a90 	vmov	s15, r9
d005397e:	680b      	ldr	r3, [r1, #0]
d0053980:	eef0 aa46 	vmov.f32	s21, s12
d0053984:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053988:	eddf dabe 	vldr	s27, [pc, #760]	; d0053c84 <fillTriangleDitherBayer2Mode+0x740>
d005398c:	eeb0 da43 	vmov.f32	s26, s6
d0053990:	930a      	str	r3, [sp, #40]	; 0x28
d0053992:	eef0 ca47 	vmov.f32	s25, s14
d0053996:	0153      	lsls	r3, r2, #5
d0053998:	ee77 7a84 	vadd.f32	s15, s15, s8
d005399c:	eddf 2aba 	vldr	s5, [pc, #744]	; d0053c88 <fillTriangleDitherBayer2Mode+0x744>
d00539a0:	eeb0 ea6b 	vmov.f32	s28, s23
d00539a4:	eddf 0ab9 	vldr	s1, [pc, #740]	; d0053c8c <fillTriangleDitherBayer2Mode+0x748>
d00539a8:	eeb0 ca43 	vmov.f32	s24, s6
d00539ac:	930b      	str	r3, [sp, #44]	; 0x2c
d00539ae:	eea7 aaab 	vfma.f32	s20, s15, s23
d00539b2:	edcd 6a0c 	vstr	s13, [sp, #48]	; 0x30
d00539b6:	eef0 ba47 	vmov.f32	s23, s14
d00539ba:	ed8d 6a0d 	vstr	s12, [sp, #52]	; 0x34
d00539be:	eee0 aa27 	vfma.f32	s21, s0, s15
d00539c2:	ed8d fa0e 	vstr	s30, [sp, #56]	; 0x38
d00539c6:	eea8 da27 	vfma.f32	s26, s16, s15
d00539ca:	edcd 1a0f 	vstr	s3, [sp, #60]	; 0x3c
d00539ce:	eee8 caa7 	vfma.f32	s25, s17, s15
d00539d2:	eea7 caa9 	vfma.f32	s24, s15, s19
d00539d6:	eee7 ba8b 	vfma.f32	s23, s15, s22
d00539da:	eef0 ea69 	vmov.f32	s29, s19
d00539de:	e034      	b.n	d0053a4a <fillTriangleDitherBayer2Mode+0x506>
d00539e0:	eef0 1a6c 	vmov.f32	s3, s25
d00539e4:	eeb0 2a4d 	vmov.f32	s4, s26
d00539e8:	eef0 7a6a 	vmov.f32	s15, s21
d00539ec:	eeb0 6a6b 	vmov.f32	s12, s23
d00539f0:	eef0 6a4c 	vmov.f32	s13, s24
d00539f4:	eeb0 4a4a 	vmov.f32	s8, s20
d00539f8:	feba 1a67 	vrintp.f32	s2, s15
d00539fc:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d0053a00:	feba 9a44 	vrintp.f32	s18, s8
d0053a04:	f240 13df 	movw	r3, #479	; 0x1df
d0053a08:	ee11 4a10 	vmov	r4, s2
d0053a0c:	eebd 1ac9 	vcvt.s32.f32	s2, s18
d0053a10:	3c01      	subs	r4, #1
d0053a12:	ee11 1a10 	vmov	r1, s2
d0053a16:	429c      	cmp	r4, r3
d0053a18:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d0053a1c:	bfa8      	it	ge
d0053a1e:	461c      	movge	r4, r3
d0053a20:	428c      	cmp	r4, r1
d0053a22:	f280 816e 	bge.w	d0053d02 <fillTriangleDitherBayer2Mode+0x7be>
d0053a26:	f109 0901 	add.w	r9, r9, #1
d0053a2a:	9b01      	ldr	r3, [sp, #4]
d0053a2c:	ee7a aa80 	vadd.f32	s21, s21, s0
d0053a30:	4599      	cmp	r9, r3
d0053a32:	ee3d da08 	vadd.f32	s26, s26, s16
d0053a36:	ee7c caa8 	vadd.f32	s25, s25, s17
d0053a3a:	ee3a aa0e 	vadd.f32	s20, s20, s28
d0053a3e:	ee3c ca2e 	vadd.f32	s24, s24, s29
d0053a42:	ee7b ba8b 	vadd.f32	s23, s23, s22
d0053a46:	f43f aef7 	beq.w	d0053838 <fillTriangleDitherBayer2Mode+0x2f4>
d0053a4a:	eef4 aaca 	vcmpe.f32	s21, s20
d0053a4e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053a52:	dcc5      	bgt.n	d00539e0 <fillTriangleDitherBayer2Mode+0x49c>
d0053a54:	eef0 1a6b 	vmov.f32	s3, s23
d0053a58:	eeb0 2a4c 	vmov.f32	s4, s24
d0053a5c:	eef0 7a4a 	vmov.f32	s15, s20
d0053a60:	eeb0 6a6c 	vmov.f32	s12, s25
d0053a64:	eef0 6a4d 	vmov.f32	s13, s26
d0053a68:	eeb0 4a6a 	vmov.f32	s8, s21
d0053a6c:	e7c4      	b.n	d00539f8 <fillTriangleDitherBayer2Mode+0x4b4>
d0053a6e:	eef0 0a45 	vmov.f32	s1, s10
d0053a72:	eeb0 5a66 	vmov.f32	s10, s13
d0053a76:	eeb0 8a47 	vmov.f32	s16, s14
d0053a7a:	eef0 6a60 	vmov.f32	s13, s1
d0053a7e:	eeb0 0a43 	vmov.f32	s0, s6
d0053a82:	eeb0 4a46 	vmov.f32	s8, s12
d0053a86:	eef4 3ae6 	vcmpe.f32	s7, s13
d0053a8a:	eeb0 7a62 	vmov.f32	s14, s5
d0053a8e:	eeb0 3a41 	vmov.f32	s6, s2
d0053a92:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053a96:	eeb0 6a42 	vmov.f32	s12, s4
d0053a9a:	eef0 2a48 	vmov.f32	s5, s16
d0053a9e:	eeb0 1a40 	vmov.f32	s2, s0
d0053aa2:	eeb0 2a44 	vmov.f32	s4, s8
d0053aa6:	f77f adc3 	ble.w	d0053630 <fillTriangleDitherBayer2Mode+0xec>
d0053aaa:	eeb0 8a65 	vmov.f32	s16, s11
d0053aae:	eeb0 0a61 	vmov.f32	s0, s3
d0053ab2:	eef0 0a63 	vmov.f32	s1, s7
d0053ab6:	eeb0 4a64 	vmov.f32	s8, s9
d0053aba:	eef0 5a62 	vmov.f32	s11, s5
d0053abe:	eef0 1a41 	vmov.f32	s3, s2
d0053ac2:	eef0 3a66 	vmov.f32	s7, s13
d0053ac6:	eef0 4a42 	vmov.f32	s9, s4
d0053aca:	eef0 2a48 	vmov.f32	s5, s16
d0053ace:	eeb0 1a40 	vmov.f32	s2, s0
d0053ad2:	eef0 6a60 	vmov.f32	s13, s1
d0053ad6:	eeb0 2a44 	vmov.f32	s4, s8
d0053ada:	e5a9      	b.n	d0053630 <fillTriangleDitherBayer2Mode+0xec>
d0053adc:	eeb0 8a47 	vmov.f32	s16, s14
d0053ae0:	eeb0 0a43 	vmov.f32	s0, s6
d0053ae4:	eef0 0a45 	vmov.f32	s1, s10
d0053ae8:	eeb0 4a46 	vmov.f32	s8, s12
d0053aec:	eeb0 7a65 	vmov.f32	s14, s11
d0053af0:	eeb0 3a61 	vmov.f32	s6, s3
d0053af4:	eeb0 5a63 	vmov.f32	s10, s7
d0053af8:	eeb0 6a64 	vmov.f32	s12, s9
d0053afc:	eef0 5a48 	vmov.f32	s11, s16
d0053b00:	eef0 1a40 	vmov.f32	s3, s0
d0053b04:	eef0 3a60 	vmov.f32	s7, s1
d0053b08:	eef0 4a44 	vmov.f32	s9, s8
d0053b0c:	e58a      	b.n	d0053624 <fillTriangleDitherBayer2Mode+0xe0>
d0053b0e:	ee76 6ae2 	vsub.f32	s13, s13, s5
d0053b12:	eef4 6ac9 	vcmpe.f32	s13, s18
d0053b16:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053b1a:	f340 8216 	ble.w	d0053f4a <fillTriangleDitherBayer2Mode+0xa06>
d0053b1e:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0053b22:	ee79 9ac5 	vsub.f32	s19, s19, s10
d0053b26:	ee32 2a63 	vsub.f32	s4, s4, s7
d0053b2a:	ee87 aaa6 	vdiv.f32	s20, s15, s13
d0053b2e:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0053b32:	ee77 2ae2 	vsub.f32	s5, s15, s5
d0053b36:	ee07 1a90 	vmov	s15, r1
d0053b3a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053b3e:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0053b42:	ee69 9a8a 	vmul.f32	s19, s19, s20
d0053b46:	ee22 aa0a 	vmul.f32	s20, s4, s20
d0053b4a:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0053b4e:	eee7 3a8a 	vfma.f32	s7, s15, s20
d0053b52:	ebc9 1c09 	rsb	ip, r9, r9, lsl #4
d0053b56:	4b4e      	ldr	r3, [pc, #312]	; (d0053c90 <fillTriangleDitherBayer2Mode+0x74c>)
d0053b58:	eb01 0781 	add.w	r7, r1, r1, lsl #2
d0053b5c:	9806      	ldr	r0, [sp, #24]
d0053b5e:	f009 0203 	and.w	r2, r9, #3
d0053b62:	681d      	ldr	r5, [r3, #0]
d0053b64:	eb00 1c4c 	add.w	ip, r0, ip, lsl #5
d0053b68:	484a      	ldr	r0, [pc, #296]	; (d0053c94 <fillTriangleDitherBayer2Mode+0x750>)
d0053b6a:	eb09 1387 	add.w	r3, r9, r7, lsl #6
d0053b6e:	f8cd 900c 	str.w	r9, [sp, #12]
d0053b72:	448c      	add	ip, r1
d0053b74:	eeb6 2a00 	vmov.f32	s4, #96	; 0x3f000000  0.5
d0053b78:	18ef      	adds	r7, r5, r3
d0053b7a:	eb00 0382 	add.w	r3, r0, r2, lsl #2
d0053b7e:	9a05      	ldr	r2, [sp, #20]
d0053b80:	4699      	mov	r9, r3
d0053b82:	eb02 0c4c 	add.w	ip, r2, ip, lsl #1
d0053b86:	e010      	b.n	d0053baa <fillTriangleDitherBayer2Mode+0x666>
d0053b88:	ee07 3a90 	vmov	s15, r3
d0053b8c:	4419      	add	r1, r3
d0053b8e:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0053b92:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053b96:	428c      	cmp	r4, r1
d0053b98:	eb0c 0c43 	add.w	ip, ip, r3, lsl #1
d0053b9c:	eb07 1782 	add.w	r7, r7, r2, lsl #6
d0053ba0:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0053ba4:	eee7 3a8a 	vfma.f32	s7, s15, s20
d0053ba8:	db62      	blt.n	d0053c70 <fillTriangleDitherBayer2Mode+0x72c>
d0053baa:	eba4 0e01 	sub.w	lr, r4, r1
d0053bae:	eeb4 5ae0 	vcmpe.f32	s10, s1
d0053bb2:	f10e 0301 	add.w	r3, lr, #1
d0053bb6:	2b30      	cmp	r3, #48	; 0x30
d0053bb8:	bfa8      	it	ge
d0053bba:	2330      	movge	r3, #48	; 0x30
d0053bbc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053bc0:	d9e2      	bls.n	d0053b88 <fillTriangleDitherBayer2Mode+0x644>
d0053bc2:	f1be 0f00 	cmp.w	lr, #0
d0053bc6:	eec3 7a85 	vdiv.f32	s15, s7, s10
d0053bca:	dd67      	ble.n	d0053c9c <fillTriangleDitherBayer2Mode+0x758>
d0053bcc:	1e5a      	subs	r2, r3, #1
d0053bce:	ee06 2a90 	vmov	s13, r2
d0053bd2:	eef0 2a45 	vmov.f32	s5, s10
d0053bd6:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0053bda:	eee6 2aa9 	vfma.f32	s5, s13, s19
d0053bde:	eef4 2ae0 	vcmpe.f32	s5, s1
d0053be2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053be6:	dd5a      	ble.n	d0053c9e <fillTriangleDitherBayer2Mode+0x75a>
d0053be8:	eeb0 ca63 	vmov.f32	s24, s7
d0053bec:	9a00      	ldr	r2, [sp, #0]
d0053bee:	2a0f      	cmp	r2, #15
d0053bf0:	eea6 ca8a 	vfma.f32	s24, s13, s20
d0053bf4:	eecc ba22 	vdiv.f32	s23, s24, s5
d0053bf8:	ee7b bae7 	vsub.f32	s23, s23, s15
d0053bfc:	eecb 2aa6 	vdiv.f32	s5, s23, s13
d0053c00:	dd52      	ble.n	d0053ca8 <fillTriangleDitherBayer2Mode+0x764>
d0053c02:	f1ac 0602 	sub.w	r6, ip, #2
d0053c06:	2200      	movs	r2, #0
d0053c08:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d0053c0c:	fec6 6ac1 	vminnm.f32	s13, s13, s2
d0053c10:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d0053c14:	f836 8f02 	ldrh.w	r8, [r6, #2]!
d0053c18:	3201      	adds	r2, #1
d0053c1a:	ee76 6a82 	vadd.f32	s13, s13, s4
d0053c1e:	0185      	lsls	r5, r0, #6
d0053c20:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0053c24:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d0053c28:	ee16 0a90 	vmov	r0, s13
d0053c2c:	b280      	uxth	r0, r0
d0053c2e:	4580      	cmp	r8, r0
d0053c30:	d903      	bls.n	d0053c3a <fillTriangleDitherBayer2Mode+0x6f6>
d0053c32:	8030      	strh	r0, [r6, #0]
d0053c34:	f04f 0010 	mov.w	r0, #16
d0053c38:	5578      	strb	r0, [r7, r5]
d0053c3a:	4293      	cmp	r3, r2
d0053c3c:	dce4      	bgt.n	d0053c08 <fillTriangleDitherBayer2Mode+0x6c4>
d0053c3e:	f1be 0f00 	cmp.w	lr, #0
d0053c42:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0053c46:	ea4f 0043 	mov.w	r0, r3, lsl #1
d0053c4a:	ea4f 1282 	mov.w	r2, r2, lsl #6
d0053c4e:	bfbc      	itt	lt
d0053c50:	2002      	movlt	r0, #2
d0053c52:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d0053c56:	4484      	add	ip, r0
d0053c58:	4417      	add	r7, r2
d0053c5a:	ee07 3a90 	vmov	s15, r3
d0053c5e:	4419      	add	r1, r3
d0053c60:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053c64:	428c      	cmp	r4, r1
d0053c66:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0053c6a:	eee7 3a8a 	vfma.f32	s7, s15, s20
d0053c6e:	da9c      	bge.n	d0053baa <fillTriangleDitherBayer2Mode+0x666>
d0053c70:	f8dd 900c 	ldr.w	r9, [sp, #12]
d0053c74:	e5bd      	b.n	d00537f2 <fillTriangleDitherBayer2Mode+0x2ae>
d0053c76:	bf00      	nop
d0053c78:	d005b784 	.word	0xd005b784
d0053c7c:	d005b780 	.word	0xd005b780
d0053c80:	d005b788 	.word	0xd005b788
d0053c84:	33d6bf95 	.word	0x33d6bf95
d0053c88:	00000000 	.word	0x00000000
d0053c8c:	477fff00 	.word	0x477fff00
d0053c90:	d00f5aa4 	.word	0xd00f5aa4
d0053c94:	d005ac7c 	.word	0xd005ac7c
d0053c98:	38d1b717 	.word	0x38d1b717
d0053c9c:	d1dd      	bne.n	d0053c5a <fillTriangleDitherBayer2Mode+0x716>
d0053c9e:	9a00      	ldr	r2, [sp, #0]
d0053ca0:	eef0 2a44 	vmov.f32	s5, s8
d0053ca4:	2a0f      	cmp	r2, #15
d0053ca6:	dcac      	bgt.n	d0053c02 <fillTriangleDitherBayer2Mode+0x6be>
d0053ca8:	2a00      	cmp	r2, #0
d0053caa:	f340 8130 	ble.w	d0053f0e <fillTriangleDitherBayer2Mode+0x9ca>
d0053cae:	9404      	str	r4, [sp, #16]
d0053cb0:	f1ac 0802 	sub.w	r8, ip, #2
d0053cb4:	2200      	movs	r2, #0
d0053cb6:	9c02      	ldr	r4, [sp, #8]
d0053cb8:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d0053cbc:	fec6 6ac1 	vminnm.f32	s13, s13, s2
d0053cc0:	ee76 6a82 	vadd.f32	s13, s13, s4
d0053cc4:	f838 af02 	ldrh.w	sl, [r8, #2]!
d0053cc8:	188e      	adds	r6, r1, r2
d0053cca:	eb02 0582 	add.w	r5, r2, r2, lsl #2
d0053cce:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0053cd2:	3201      	adds	r2, #1
d0053cd4:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d0053cd8:	f006 0603 	and.w	r6, r6, #3
d0053cdc:	01ad      	lsls	r5, r5, #6
d0053cde:	ee16 0a90 	vmov	r0, s13
d0053ce2:	b280      	uxth	r0, r0
d0053ce4:	4582      	cmp	sl, r0
d0053ce6:	d908      	bls.n	d0053cfa <fillTriangleDitherBayer2Mode+0x7b6>
d0053ce8:	f8a8 0000 	strh.w	r0, [r8]
d0053cec:	f819 0006 	ldrb.w	r0, [r9, r6]
d0053cf0:	42a0      	cmp	r0, r4
d0053cf2:	bfac      	ite	ge
d0053cf4:	4658      	movge	r0, fp
d0053cf6:	2010      	movlt	r0, #16
d0053cf8:	5578      	strb	r0, [r7, r5]
d0053cfa:	4293      	cmp	r3, r2
d0053cfc:	dcdc      	bgt.n	d0053cb8 <fillTriangleDitherBayer2Mode+0x774>
d0053cfe:	9c04      	ldr	r4, [sp, #16]
d0053d00:	e79d      	b.n	d0053c3e <fillTriangleDitherBayer2Mode+0x6fa>
d0053d02:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0053d06:	ed1f 1a1c 	vldr	s2, [pc, #-112]	; d0053c98 <fillTriangleDitherBayer2Mode+0x754>
d0053d0a:	eef4 7ac1 	vcmpe.f32	s15, s2
d0053d0e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053d12:	f340 811f 	ble.w	d0053f54 <fillTriangleDitherBayer2Mode+0xa10>
d0053d16:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d0053d1a:	ee32 2a66 	vsub.f32	s4, s4, s13
d0053d1e:	ee71 1ac6 	vsub.f32	s3, s3, s12
d0053d22:	ee89 1a27 	vdiv.f32	s2, s18, s15
d0053d26:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0053d2a:	ee37 4ac4 	vsub.f32	s8, s15, s8
d0053d2e:	ee07 1a90 	vmov	s15, r1
d0053d32:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053d36:	ee77 7a84 	vadd.f32	s15, s15, s8
d0053d3a:	ee22 2a01 	vmul.f32	s4, s4, s2
d0053d3e:	ee61 1a81 	vmul.f32	s3, s3, s2
d0053d42:	eee7 6a82 	vfma.f32	s13, s15, s4
d0053d46:	eea7 6aa1 	vfma.f32	s12, s15, s3
d0053d4a:	ebc9 1c09 	rsb	ip, r9, r9, lsl #4
d0053d4e:	4b84      	ldr	r3, [pc, #528]	; (d0053f60 <fillTriangleDitherBayer2Mode+0xa1c>)
d0053d50:	eb01 0781 	add.w	r7, r1, r1, lsl #2
d0053d54:	980b      	ldr	r0, [sp, #44]	; 0x2c
d0053d56:	f009 0203 	and.w	r2, r9, #3
d0053d5a:	681d      	ldr	r5, [r3, #0]
d0053d5c:	eb00 1c4c 	add.w	ip, r0, ip, lsl #5
d0053d60:	4880      	ldr	r0, [pc, #512]	; (d0053f64 <fillTriangleDitherBayer2Mode+0xa20>)
d0053d62:	eb09 1387 	add.w	r3, r9, r7, lsl #6
d0053d66:	f8cd 9018 	str.w	r9, [sp, #24]
d0053d6a:	448c      	add	ip, r1
d0053d6c:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d0053d70:	18ef      	adds	r7, r5, r3
d0053d72:	eb00 0382 	add.w	r3, r0, r2, lsl #2
d0053d76:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d0053d78:	4699      	mov	r9, r3
d0053d7a:	eb02 0c4c 	add.w	ip, r2, ip, lsl #1
d0053d7e:	e010      	b.n	d0053da2 <fillTriangleDitherBayer2Mode+0x85e>
d0053d80:	ee07 2a90 	vmov	s15, r2
d0053d84:	4411      	add	r1, r2
d0053d86:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0053d8a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053d8e:	428c      	cmp	r4, r1
d0053d90:	eb0c 0c42 	add.w	ip, ip, r2, lsl #1
d0053d94:	eb07 1783 	add.w	r7, r7, r3, lsl #6
d0053d98:	eee7 6a82 	vfma.f32	s13, s15, s4
d0053d9c:	eea7 6aa1 	vfma.f32	s12, s15, s3
d0053da0:	db62      	blt.n	d0053e68 <fillTriangleDitherBayer2Mode+0x924>
d0053da2:	eba4 0e01 	sub.w	lr, r4, r1
d0053da6:	eef4 6aed 	vcmpe.f32	s13, s27
d0053daa:	f10e 0201 	add.w	r2, lr, #1
d0053dae:	2a30      	cmp	r2, #48	; 0x30
d0053db0:	bfa8      	it	ge
d0053db2:	2230      	movge	r2, #48	; 0x30
d0053db4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053db8:	d9e2      	bls.n	d0053d80 <fillTriangleDitherBayer2Mode+0x83c>
d0053dba:	f1be 0f00 	cmp.w	lr, #0
d0053dbe:	eec6 7a26 	vdiv.f32	s15, s12, s13
d0053dc2:	dd54      	ble.n	d0053e6e <fillTriangleDitherBayer2Mode+0x92a>
d0053dc4:	1e53      	subs	r3, r2, #1
d0053dc6:	ee01 3a10 	vmov	s2, r3
d0053dca:	eeb0 9a66 	vmov.f32	s18, s13
d0053dce:	eeb8 1ac1 	vcvt.f32.s32	s2, s2
d0053dd2:	eea1 9a02 	vfma.f32	s18, s2, s4
d0053dd6:	eeb4 9aed 	vcmpe.f32	s18, s27
d0053dda:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053dde:	dd47      	ble.n	d0053e70 <fillTriangleDitherBayer2Mode+0x92c>
d0053de0:	eeb0 fa46 	vmov.f32	s30, s12
d0053de4:	9b00      	ldr	r3, [sp, #0]
d0053de6:	2b0f      	cmp	r3, #15
d0053de8:	eea1 fa21 	vfma.f32	s30, s2, s3
d0053dec:	eecf 9a09 	vdiv.f32	s19, s30, s18
d0053df0:	ee79 9ae7 	vsub.f32	s19, s19, s15
d0053df4:	ee89 9a81 	vdiv.f32	s18, s19, s2
d0053df8:	dd3f      	ble.n	d0053e7a <fillTriangleDitherBayer2Mode+0x936>
d0053dfa:	f1ac 0602 	sub.w	r6, ip, #2
d0053dfe:	2000      	movs	r0, #0
d0053e00:	fe87 1aa2 	vmaxnm.f32	s2, s15, s5
d0053e04:	fe81 1a60 	vminnm.f32	s2, s2, s1
d0053e08:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0053e0c:	f836 8f02 	ldrh.w	r8, [r6, #2]!
d0053e10:	3001      	adds	r0, #1
d0053e12:	ee31 1a04 	vadd.f32	s2, s2, s8
d0053e16:	019d      	lsls	r5, r3, #6
d0053e18:	ee77 7a89 	vadd.f32	s15, s15, s18
d0053e1c:	eebc 1ac1 	vcvt.u32.f32	s2, s2
d0053e20:	ee11 3a10 	vmov	r3, s2
d0053e24:	b29b      	uxth	r3, r3
d0053e26:	4598      	cmp	r8, r3
d0053e28:	d903      	bls.n	d0053e32 <fillTriangleDitherBayer2Mode+0x8ee>
d0053e2a:	8033      	strh	r3, [r6, #0]
d0053e2c:	f04f 0310 	mov.w	r3, #16
d0053e30:	557b      	strb	r3, [r7, r5]
d0053e32:	4282      	cmp	r2, r0
d0053e34:	dce4      	bgt.n	d0053e00 <fillTriangleDitherBayer2Mode+0x8bc>
d0053e36:	f1be 0f00 	cmp.w	lr, #0
d0053e3a:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0053e3e:	ea4f 0042 	mov.w	r0, r2, lsl #1
d0053e42:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0053e46:	bfbc      	itt	lt
d0053e48:	2002      	movlt	r0, #2
d0053e4a:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0053e4e:	4484      	add	ip, r0
d0053e50:	441f      	add	r7, r3
d0053e52:	ee07 2a90 	vmov	s15, r2
d0053e56:	4411      	add	r1, r2
d0053e58:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053e5c:	428c      	cmp	r4, r1
d0053e5e:	eee7 6a82 	vfma.f32	s13, s15, s4
d0053e62:	eea7 6aa1 	vfma.f32	s12, s15, s3
d0053e66:	da9c      	bge.n	d0053da2 <fillTriangleDitherBayer2Mode+0x85e>
d0053e68:	f8dd 9018 	ldr.w	r9, [sp, #24]
d0053e6c:	e5db      	b.n	d0053a26 <fillTriangleDitherBayer2Mode+0x4e2>
d0053e6e:	d1f0      	bne.n	d0053e52 <fillTriangleDitherBayer2Mode+0x90e>
d0053e70:	9b00      	ldr	r3, [sp, #0]
d0053e72:	eeb0 9a62 	vmov.f32	s18, s5
d0053e76:	2b0f      	cmp	r3, #15
d0053e78:	dcbf      	bgt.n	d0053dfa <fillTriangleDitherBayer2Mode+0x8b6>
d0053e7a:	2b00      	cmp	r3, #0
d0053e7c:	dd29      	ble.n	d0053ed2 <fillTriangleDitherBayer2Mode+0x98e>
d0053e7e:	9409      	str	r4, [sp, #36]	; 0x24
d0053e80:	f1ac 0802 	sub.w	r8, ip, #2
d0053e84:	2000      	movs	r0, #0
d0053e86:	9c02      	ldr	r4, [sp, #8]
d0053e88:	fe87 1aa2 	vmaxnm.f32	s2, s15, s5
d0053e8c:	fe81 1a60 	vminnm.f32	s2, s2, s1
d0053e90:	ee31 1a04 	vadd.f32	s2, s2, s8
d0053e94:	f838 af02 	ldrh.w	sl, [r8, #2]!
d0053e98:	180e      	adds	r6, r1, r0
d0053e9a:	eb00 0580 	add.w	r5, r0, r0, lsl #2
d0053e9e:	ee77 7a89 	vadd.f32	s15, s15, s18
d0053ea2:	3001      	adds	r0, #1
d0053ea4:	eebc 1ac1 	vcvt.u32.f32	s2, s2
d0053ea8:	f006 0603 	and.w	r6, r6, #3
d0053eac:	01ad      	lsls	r5, r5, #6
d0053eae:	ee11 3a10 	vmov	r3, s2
d0053eb2:	b29b      	uxth	r3, r3
d0053eb4:	459a      	cmp	sl, r3
d0053eb6:	d908      	bls.n	d0053eca <fillTriangleDitherBayer2Mode+0x986>
d0053eb8:	f8a8 3000 	strh.w	r3, [r8]
d0053ebc:	f819 3006 	ldrb.w	r3, [r9, r6]
d0053ec0:	42a3      	cmp	r3, r4
d0053ec2:	bfac      	ite	ge
d0053ec4:	465b      	movge	r3, fp
d0053ec6:	2310      	movlt	r3, #16
d0053ec8:	557b      	strb	r3, [r7, r5]
d0053eca:	4282      	cmp	r2, r0
d0053ecc:	dcdc      	bgt.n	d0053e88 <fillTriangleDitherBayer2Mode+0x944>
d0053ece:	9c09      	ldr	r4, [sp, #36]	; 0x24
d0053ed0:	e7b1      	b.n	d0053e36 <fillTriangleDitherBayer2Mode+0x8f2>
d0053ed2:	f1ac 0602 	sub.w	r6, ip, #2
d0053ed6:	2000      	movs	r0, #0
d0053ed8:	fe87 1aa2 	vmaxnm.f32	s2, s15, s5
d0053edc:	fe81 1a60 	vminnm.f32	s2, s2, s1
d0053ee0:	ee31 1a04 	vadd.f32	s2, s2, s8
d0053ee4:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0053ee8:	f836 8f02 	ldrh.w	r8, [r6, #2]!
d0053eec:	ee77 7a89 	vadd.f32	s15, s15, s18
d0053ef0:	019d      	lsls	r5, r3, #6
d0053ef2:	3001      	adds	r0, #1
d0053ef4:	eebc 1ac1 	vcvt.u32.f32	s2, s2
d0053ef8:	ee11 3a10 	vmov	r3, s2
d0053efc:	b29b      	uxth	r3, r3
d0053efe:	4598      	cmp	r8, r3
d0053f00:	d902      	bls.n	d0053f08 <fillTriangleDitherBayer2Mode+0x9c4>
d0053f02:	8033      	strh	r3, [r6, #0]
d0053f04:	f807 b005 	strb.w	fp, [r7, r5]
d0053f08:	4282      	cmp	r2, r0
d0053f0a:	dce5      	bgt.n	d0053ed8 <fillTriangleDitherBayer2Mode+0x994>
d0053f0c:	e793      	b.n	d0053e36 <fillTriangleDitherBayer2Mode+0x8f2>
d0053f0e:	f1ac 0602 	sub.w	r6, ip, #2
d0053f12:	2200      	movs	r2, #0
d0053f14:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d0053f18:	fec6 6ac1 	vminnm.f32	s13, s13, s2
d0053f1c:	ee76 6a82 	vadd.f32	s13, s13, s4
d0053f20:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d0053f24:	f836 8f02 	ldrh.w	r8, [r6, #2]!
d0053f28:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0053f2c:	0185      	lsls	r5, r0, #6
d0053f2e:	3201      	adds	r2, #1
d0053f30:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d0053f34:	ee16 0a90 	vmov	r0, s13
d0053f38:	b280      	uxth	r0, r0
d0053f3a:	4580      	cmp	r8, r0
d0053f3c:	d902      	bls.n	d0053f44 <fillTriangleDitherBayer2Mode+0xa00>
d0053f3e:	8030      	strh	r0, [r6, #0]
d0053f40:	f807 b005 	strb.w	fp, [r7, r5]
d0053f44:	4293      	cmp	r3, r2
d0053f46:	dce5      	bgt.n	d0053f14 <fillTriangleDitherBayer2Mode+0x9d0>
d0053f48:	e679      	b.n	d0053c3e <fillTriangleDitherBayer2Mode+0x6fa>
d0053f4a:	eeb0 aa44 	vmov.f32	s20, s8
d0053f4e:	eef0 9a44 	vmov.f32	s19, s8
d0053f52:	e5fe      	b.n	d0053b52 <fillTriangleDitherBayer2Mode+0x60e>
d0053f54:	eef0 1a62 	vmov.f32	s3, s5
d0053f58:	eeb0 2a62 	vmov.f32	s4, s5
d0053f5c:	e6f5      	b.n	d0053d4a <fillTriangleDitherBayer2Mode+0x806>
d0053f5e:	bf00      	nop
d0053f60:	d00f5aa4 	.word	0xd00f5aa4
d0053f64:	d005ac7c 	.word	0xd005ac7c

d0053f68 <vec3Add>:
d0053f68:	ee30 0a21 	vadd.f32	s0, s0, s3
d0053f6c:	b08e      	sub	sp, #56	; 0x38
d0053f6e:	ee70 0a82 	vadd.f32	s1, s1, s4
d0053f72:	ee31 1a22 	vadd.f32	s2, s2, s5
d0053f76:	b00e      	add	sp, #56	; 0x38
d0053f78:	4770      	bx	lr
d0053f7a:	bf00      	nop

d0053f7c <vec3Scale>:
d0053f7c:	ee20 0a21 	vmul.f32	s0, s0, s3
d0053f80:	b08c      	sub	sp, #48	; 0x30
d0053f82:	ee61 0aa0 	vmul.f32	s1, s3, s1
d0053f86:	ee21 1a81 	vmul.f32	s2, s3, s2
d0053f8a:	b00c      	add	sp, #48	; 0x30
d0053f8c:	4770      	bx	lr
d0053f8e:	bf00      	nop

d0053f90 <vec3Dot>:
d0053f90:	ee20 2a82 	vmul.f32	s4, s1, s4
d0053f94:	b086      	sub	sp, #24
d0053f96:	eea0 2a21 	vfma.f32	s4, s0, s3
d0053f9a:	eea1 2a22 	vfma.f32	s4, s2, s5
d0053f9e:	eeb0 0a42 	vmov.f32	s0, s4
d0053fa2:	b006      	add	sp, #24
d0053fa4:	4770      	bx	lr
d0053fa6:	bf00      	nop

d0053fa8 <vec3Cross>:
d0053fa8:	eeb0 7a60 	vmov.f32	s14, s1
d0053fac:	b08e      	sub	sp, #56	; 0x38
d0053fae:	eef0 7a40 	vmov.f32	s15, s0
d0053fb2:	ee62 0ac0 	vnmul.f32	s1, s5, s0
d0053fb6:	ee61 6ac7 	vnmul.f32	s13, s3, s14
d0053fba:	ee22 0a41 	vnmul.f32	s0, s4, s2
d0053fbe:	eee1 0a21 	vfma.f32	s1, s2, s3
d0053fc2:	eee7 6a82 	vfma.f32	s13, s15, s4
d0053fc6:	eea7 0a22 	vfma.f32	s0, s14, s5
d0053fca:	eeb0 1a66 	vmov.f32	s2, s13
d0053fce:	b00e      	add	sp, #56	; 0x38
d0053fd0:	4770      	bx	lr
d0053fd2:	bf00      	nop

d0053fd4 <vec3Normalize>:
d0053fd4:	ee60 7aa0 	vmul.f32	s15, s1, s1
d0053fd8:	ed9f 7a22 	vldr	s14, [pc, #136]	; d0054064 <vec3Normalize+0x90>
d0053fdc:	b08c      	sub	sp, #48	; 0x30
d0053fde:	eee0 7a00 	vfma.f32	s15, s0, s0
d0053fe2:	eee1 7a01 	vfma.f32	s15, s2, s2
d0053fe6:	eef4 7ac7 	vcmpe.f32	s15, s14
d0053fea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053fee:	d934      	bls.n	d005405a <vec3Normalize+0x86>
d0053ff0:	ed9f 7a1d 	vldr	s14, [pc, #116]	; d0054068 <vec3Normalize+0x94>
d0053ff4:	eef4 7a47 	vcmp.f32	s15, s14
d0053ff8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053ffc:	dd06      	ble.n	d005400c <vec3Normalize+0x38>
d0053ffe:	ed9f 7a1b 	vldr	s14, [pc, #108]	; d005406c <vec3Normalize+0x98>
d0054002:	eef4 7a47 	vcmp.f32	s15, s14
d0054006:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005400a:	d418      	bmi.n	d005403e <vec3Normalize+0x6a>
d005400c:	ee17 2a90 	vmov	r2, s15
d0054010:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d0054014:	4b16      	ldr	r3, [pc, #88]	; (d0054070 <vec3Normalize+0x9c>)
d0054016:	eeb7 7a08 	vmov.f32	s14, #120	; 0x3fc00000  1.5
d005401a:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d005401e:	ee67 7a86 	vmul.f32	s15, s15, s12
d0054022:	ee06 3a90 	vmov	s13, r3
d0054026:	ee67 7aa6 	vmul.f32	s15, s15, s13
d005402a:	eea6 7ae7 	vfms.f32	s14, s13, s15
d005402e:	ee67 7a26 	vmul.f32	s15, s14, s13
d0054032:	ee27 0a80 	vmul.f32	s0, s15, s0
d0054036:	ee67 0aa0 	vmul.f32	s1, s15, s1
d005403a:	ee27 1a81 	vmul.f32	s2, s15, s2
d005403e:	ed8d 0a09 	vstr	s0, [sp, #36]	; 0x24
d0054042:	edcd 0a0a 	vstr	s1, [sp, #40]	; 0x28
d0054046:	ed8d 1a0b 	vstr	s2, [sp, #44]	; 0x2c
d005404a:	ed9d 0a09 	vldr	s0, [sp, #36]	; 0x24
d005404e:	eddd 0a0a 	vldr	s1, [sp, #40]	; 0x28
d0054052:	ed9d 1a0b 	vldr	s2, [sp, #44]	; 0x2c
d0054056:	b00c      	add	sp, #48	; 0x30
d0054058:	4770      	bx	lr
d005405a:	2300      	movs	r3, #0
d005405c:	9309      	str	r3, [sp, #36]	; 0x24
d005405e:	930a      	str	r3, [sp, #40]	; 0x28
d0054060:	930b      	str	r3, [sp, #44]	; 0x2c
d0054062:	e7f2      	b.n	d005404a <vec3Normalize+0x76>
d0054064:	358637bd 	.word	0x358637bd
d0054068:	3f7fbe77 	.word	0x3f7fbe77
d005406c:	3f8020c5 	.word	0x3f8020c5
d0054070:	5f3759df 	.word	0x5f3759df

d0054074 <rotateAroundAxis>:
d0054074:	ee62 7a02 	vmul.f32	s15, s4, s4
d0054078:	ed9f 7a51 	vldr	s14, [pc, #324]	; d00541c0 <rotateAroundAxis+0x14c>
d005407c:	b500      	push	{lr}
d005407e:	eee1 7aa1 	vfma.f32	s15, s3, s3
d0054082:	ed2d 8b0c 	vpush	{d8-d13}
d0054086:	eef0 ca40 	vmov.f32	s25, s0
d005408a:	b08f      	sub	sp, #60	; 0x3c
d005408c:	eeb0 ca60 	vmov.f32	s24, s1
d0054090:	eef0 ba41 	vmov.f32	s23, s2
d0054094:	eee2 7aa2 	vfma.f32	s15, s5, s5
d0054098:	eeb0 da43 	vmov.f32	s26, s6
d005409c:	eef4 7ac7 	vcmpe.f32	s15, s14
d00540a0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00540a4:	d97c      	bls.n	d00541a0 <rotateAroundAxis+0x12c>
d00540a6:	ed9f 7a47 	vldr	s14, [pc, #284]	; d00541c4 <rotateAroundAxis+0x150>
d00540aa:	eef4 7a47 	vcmp.f32	s15, s14
d00540ae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00540b2:	dd55      	ble.n	d0054160 <rotateAroundAxis+0xec>
d00540b4:	ed9f 7a44 	vldr	s14, [pc, #272]	; d00541c8 <rotateAroundAxis+0x154>
d00540b8:	eef4 7a47 	vcmp.f32	s15, s14
d00540bc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00540c0:	d54e      	bpl.n	d0054160 <rotateAroundAxis+0xec>
d00540c2:	eef0 da42 	vmov.f32	s27, s4
d00540c6:	eeb0 9a61 	vmov.f32	s18, s3
d00540ca:	eeb0 8a62 	vmov.f32	s16, s5
d00540ce:	ee60 8a82 	vmul.f32	s17, s1, s4
d00540d2:	ee62 5ae0 	vnmul.f32	s11, s5, s1
d00540d6:	ee21 6ac1 	vnmul.f32	s12, s3, s2
d00540da:	eeec 8a89 	vfma.f32	s17, s25, s18
d00540de:	ee6d 7aec 	vnmul.f32	s15, s27, s25
d00540e2:	eeeb 5aad 	vfma.f32	s11, s23, s27
d00540e6:	eeac 6a88 	vfma.f32	s12, s25, s16
d00540ea:	eeec 7a09 	vfma.f32	s15, s24, s18
d00540ee:	eeeb 8a88 	vfma.f32	s17, s23, s16
d00540f2:	eeb0 ba65 	vmov.f32	s22, s11
d00540f6:	eeb0 aa46 	vmov.f32	s20, s12
d00540fa:	eef0 aa67 	vmov.f32	s21, s15
d00540fe:	eeb0 0a4d 	vmov.f32	s0, s26
d0054102:	f005 fea1 	bl	d0059e48 <cosf>
d0054106:	eef0 9a40 	vmov.f32	s19, s0
d005410a:	eeb0 0a4d 	vmov.f32	s0, s26
d005410e:	f006 f87f 	bl	d005a210 <sinf>
d0054112:	ee60 5a0b 	vmul.f32	s11, s0, s22
d0054116:	ee20 6a0a 	vmul.f32	s12, s0, s20
d005411a:	ee60 7a2a 	vmul.f32	s15, s0, s21
d005411e:	eee9 5aac 	vfma.f32	s11, s19, s25
d0054122:	eea9 6a8c 	vfma.f32	s12, s19, s24
d0054126:	eee9 7aab 	vfma.f32	s15, s19, s23
d005412a:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d005412e:	ee29 9a28 	vmul.f32	s18, s18, s17
d0054132:	ee2d 7aa8 	vmul.f32	s14, s27, s17
d0054136:	ee76 9ae9 	vsub.f32	s19, s13, s19
d005413a:	ee28 8a28 	vmul.f32	s16, s16, s17
d005413e:	eeb0 0a65 	vmov.f32	s0, s11
d0054142:	eef0 0a46 	vmov.f32	s1, s12
d0054146:	eeb0 1a67 	vmov.f32	s2, s15
d005414a:	eea9 0a89 	vfma.f32	s0, s19, s18
d005414e:	eee9 0a87 	vfma.f32	s1, s19, s14
d0054152:	eea9 1a88 	vfma.f32	s2, s19, s16
d0054156:	b00f      	add	sp, #60	; 0x3c
d0054158:	ecbd 8b0c 	vpop	{d8-d13}
d005415c:	f85d fb04 	ldr.w	pc, [sp], #4
d0054160:	ee17 2a90 	vmov	r2, s15
d0054164:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0054168:	4b18      	ldr	r3, [pc, #96]	; (d00541cc <rotateAroundAxis+0x158>)
d005416a:	eeb7 8a08 	vmov.f32	s16, #120	; 0x3fc00000  1.5
d005416e:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d0054172:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0054176:	ee07 3a10 	vmov	s14, r3
d005417a:	ee67 7a87 	vmul.f32	s15, s15, s14
d005417e:	eea7 8a67 	vfms.f32	s16, s14, s15
d0054182:	ee27 8a08 	vmul.f32	s16, s14, s16
d0054186:	ee62 da08 	vmul.f32	s27, s4, s16
d005418a:	ee21 9a88 	vmul.f32	s18, s3, s16
d005418e:	ee22 8a88 	vmul.f32	s16, s5, s16
d0054192:	ee6c 8a2d 	vmul.f32	s17, s24, s27
d0054196:	ee29 6a6b 	vnmul.f32	s12, s18, s23
d005419a:	ee68 5a4c 	vnmul.f32	s11, s16, s24
d005419e:	e79c      	b.n	d00540da <rotateAroundAxis+0x66>
d00541a0:	eddf 8a0b 	vldr	s17, [pc, #44]	; d00541d0 <rotateAroundAxis+0x15c>
d00541a4:	eef0 aa68 	vmov.f32	s21, s17
d00541a8:	eeb0 aa68 	vmov.f32	s20, s17
d00541ac:	eeb0 ba68 	vmov.f32	s22, s17
d00541b0:	eeb0 8a68 	vmov.f32	s16, s17
d00541b4:	eef0 da68 	vmov.f32	s27, s17
d00541b8:	eeb0 9a68 	vmov.f32	s18, s17
d00541bc:	e79f      	b.n	d00540fe <rotateAroundAxis+0x8a>
d00541be:	bf00      	nop
d00541c0:	358637bd 	.word	0x358637bd
d00541c4:	3f7fbe77 	.word	0x3f7fbe77
d00541c8:	3f8020c5 	.word	0x3f8020c5
d00541cc:	5f3759df 	.word	0x5f3759df
d00541d0:	00000000 	.word	0x00000000

d00541d4 <vec3>:
d00541d4:	b088      	sub	sp, #32
d00541d6:	b008      	add	sp, #32
d00541d8:	4770      	bx	lr
d00541da:	bf00      	nop

d00541dc <degrees>:
d00541dc:	eddf 7a02 	vldr	s15, [pc, #8]	; d00541e8 <degrees+0xc>
d00541e0:	ee20 0a27 	vmul.f32	s0, s0, s15
d00541e4:	4770      	bx	lr
d00541e6:	bf00      	nop
d00541e8:	3c8efa35 	.word	0x3c8efa35

d00541ec <powfxt>:
d00541ec:	eef5 0a40 	vcmp.f32	s1, #0.0
d00541f0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00541f4:	d040      	beq.n	d0054278 <powfxt+0x8c>
d00541f6:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d00541fa:	eef0 7a40 	vmov.f32	s15, s0
d00541fe:	eef4 0a47 	vcmp.f32	s1, s14
d0054202:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054206:	d034      	beq.n	d0054272 <powfxt+0x86>
d0054208:	eeb4 0a47 	vcmp.f32	s0, s14
d005420c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054210:	d02f      	beq.n	d0054272 <powfxt+0x86>
d0054212:	eeb5 0a40 	vcmp.f32	s0, #0.0
d0054216:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005421a:	d030      	beq.n	d005427e <powfxt+0x92>
d005421c:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0054220:	eef4 0a66 	vcmp.f32	s1, s13
d0054224:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054228:	d042      	beq.n	d00542b0 <powfxt+0xc4>
d005422a:	eefe 6a00 	vmov.f32	s13, #224	; 0xbf000000 -0.5
d005422e:	eef4 0a66 	vcmp.f32	s1, s13
d0054232:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054236:	d03e      	beq.n	d00542b6 <powfxt+0xca>
d0054238:	eefd 6ae0 	vcvt.s32.f32	s13, s1
d005423c:	eeb8 6ae6 	vcvt.f32.s32	s12, s13
d0054240:	eeb4 6a60 	vcmp.f32	s12, s1
d0054244:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054248:	d022      	beq.n	d0054290 <powfxt+0xa4>
d005424a:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d005424e:	b500      	push	{lr}
d0054250:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054254:	b083      	sub	sp, #12
d0054256:	edcd 0a01 	vstr	s1, [sp, #4]
d005425a:	d431      	bmi.n	d00542c0 <powfxt+0xd4>
d005425c:	f005 ff46 	bl	d005a0ec <logf>
d0054260:	eddd 0a01 	vldr	s1, [sp, #4]
d0054264:	ee20 0a20 	vmul.f32	s0, s0, s1
d0054268:	b003      	add	sp, #12
d005426a:	f85d eb04 	ldr.w	lr, [sp], #4
d005426e:	f005 bec7 	b.w	d005a000 <expf>
d0054272:	eeb0 0a67 	vmov.f32	s0, s15
d0054276:	4770      	bx	lr
d0054278:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d005427c:	4770      	bx	lr
d005427e:	eef5 0ac0 	vcmpe.f32	s1, #0.0
d0054282:	ed9f 0a15 	vldr	s0, [pc, #84]	; d00542d8 <powfxt+0xec>
d0054286:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005428a:	fe37 0a80 	vselgt.f32	s0, s15, s0
d005428e:	4770      	bx	lr
d0054290:	ee16 3a90 	vmov	r3, s13
d0054294:	2b00      	cmp	r3, #0
d0054296:	db18      	blt.n	d00542ca <powfxt+0xde>
d0054298:	d01b      	beq.n	d00542d2 <powfxt+0xe6>
d005429a:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d005429e:	07da      	lsls	r2, r3, #31
d00542a0:	bf48      	it	mi
d00542a2:	ee20 0a27 	vmulmi.f32	s0, s0, s15
d00542a6:	085b      	lsrs	r3, r3, #1
d00542a8:	ee67 7aa7 	vmul.f32	s15, s15, s15
d00542ac:	d1f7      	bne.n	d005429e <powfxt+0xb2>
d00542ae:	4770      	bx	lr
d00542b0:	eeb1 0ae7 	vsqrt.f32	s0, s15
d00542b4:	4770      	bx	lr
d00542b6:	eef1 6ac0 	vsqrt.f32	s13, s0
d00542ba:	ee87 0a26 	vdiv.f32	s0, s14, s13
d00542be:	4770      	bx	lr
d00542c0:	ed9f 0a06 	vldr	s0, [pc, #24]	; d00542dc <powfxt+0xf0>
d00542c4:	b003      	add	sp, #12
d00542c6:	f85d fb04 	ldr.w	pc, [sp], #4
d00542ca:	eec7 7a00 	vdiv.f32	s15, s14, s0
d00542ce:	425b      	negs	r3, r3
d00542d0:	e7e3      	b.n	d005429a <powfxt+0xae>
d00542d2:	eeb0 0a47 	vmov.f32	s0, s14
d00542d6:	4770      	bx	lr
d00542d8:	7f800000 	.word	0x7f800000
d00542dc:	7fc00000 	.word	0x7fc00000

d00542e0 <sb3dParticlesClear>:
d00542e0:	4b0f      	ldr	r3, [pc, #60]	; (d0054320 <sb3dParticlesClear+0x40>)
d00542e2:	f04f 507e 	mov.w	r0, #1065353216	; 0x3f800000
d00542e6:	2100      	movs	r1, #0
d00542e8:	2200      	movs	r2, #0
d00542ea:	b430      	push	{r4, r5}
d00542ec:	f503 5500 	add.w	r5, r3, #8192	; 0x2000
d00542f0:	2421      	movs	r4, #33	; 0x21
d00542f2:	7699      	strb	r1, [r3, #26]
d00542f4:	3320      	adds	r3, #32
d00542f6:	f843 2c20 	str.w	r2, [r3, #-32]
d00542fa:	f843 2c1c 	str.w	r2, [r3, #-28]
d00542fe:	f843 2c18 	str.w	r2, [r3, #-24]
d0054302:	f843 0c14 	str.w	r0, [r3, #-20]
d0054306:	f843 2c10 	str.w	r2, [r3, #-16]
d005430a:	f843 0c0c 	str.w	r0, [r3, #-12]
d005430e:	f803 4c08 	strb.w	r4, [r3, #-8]
d0054312:	f803 1c07 	strb.w	r1, [r3, #-7]
d0054316:	42ab      	cmp	r3, r5
d0054318:	d1eb      	bne.n	d00542f2 <sb3dParticlesClear+0x12>
d005431a:	bc30      	pop	{r4, r5}
d005431c:	4770      	bx	lr
d005431e:	bf00      	nop
d0054320:	d005b7a0 	.word	0xd005b7a0

d0054324 <sb3dParticlesRender>:
d0054324:	2800      	cmp	r0, #0
d0054326:	f000 82d5 	beq.w	d00548d4 <sb3dParticlesRender+0x5b0>
d005432a:	edd0 7a02 	vldr	s15, [r0, #8]
d005432e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0054332:	ed2d 8b10 	vpush	{d8-d15}
d0054336:	b0c7      	sub	sp, #284	; 0x11c
d0054338:	4605      	mov	r5, r0
d005433a:	ed90 ea00 	vldr	s28, [r0]
d005433e:	edcd 7a15 	vstr	s15, [sp, #84]	; 0x54
d0054342:	edd0 da01 	vldr	s27, [r0, #4]
d0054346:	edd0 ca06 	vldr	s25, [r0, #24]
d005434a:	ed90 ca07 	vldr	s24, [r0, #28]
d005434e:	edd0 ba08 	vldr	s23, [r0, #32]
d0054352:	ed90 9a09 	vldr	s18, [r0, #36]	; 0x24
d0054356:	edd0 8a0a 	vldr	s17, [r0, #40]	; 0x28
d005435a:	ed90 8a0b 	vldr	s16, [r0, #44]	; 0x2c
d005435e:	edd0 aa0c 	vldr	s21, [r0, #48]	; 0x30
d0054362:	ed90 aa0d 	vldr	s20, [r0, #52]	; 0x34
d0054366:	edd0 9a0e 	vldr	s19, [r0, #56]	; 0x38
d005436a:	ed90 ba10 	vldr	s22, [r0, #64]	; 0x40
d005436e:	f001 feab 	bl	d00560c8 <lightsGet>
d0054372:	4cae      	ldr	r4, [pc, #696]	; (d005462c <sb3dParticlesRender+0x308>)
d0054374:	4682      	mov	sl, r0
d0054376:	f001 feab 	bl	d00560d0 <lightsGetCount>
d005437a:	4681      	mov	r9, r0
d005437c:	f504 5700 	add.w	r7, r4, #8192	; 0x2000
d0054380:	eb0a 1880 	add.w	r8, sl, r0, lsl #6
d0054384:	e115      	b.n	d00545b2 <sb3dParticlesRender+0x28e>
d0054386:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d005438a:	edd4 ea04 	vldr	s29, [r4, #16]
d005438e:	ed9f 5aac 	vldr	s10, [pc, #688]	; d0054640 <sb3dParticlesRender+0x31c>
d0054392:	fece ea85 	vmaxnm.f32	s29, s29, s10
d0054396:	fece eac7 	vminnm.f32	s29, s29, s14
d005439a:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d005439e:	f105 0610 	add.w	r6, r5, #16
d00543a2:	eeb0 4a46 	vmov.f32	s8, s12
d00543a6:	2250      	movs	r2, #80	; 0x50
d00543a8:	eef0 4a66 	vmov.f32	s9, s13
d00543ac:	4631      	mov	r1, r6
d00543ae:	ee67 7a87 	vmul.f32	s15, s15, s14
d00543b2:	4668      	mov	r0, sp
d00543b4:	eeb0 5a65 	vmov.f32	s10, s11
d00543b8:	eeb0 7a65 	vmov.f32	s14, s11
d00543bc:	eeac 6aa7 	vfma.f32	s12, s25, s15
d00543c0:	eeac 4ae7 	vfms.f32	s8, s25, s15
d00543c4:	eeec 4a67 	vfms.f32	s9, s24, s15
d00543c8:	eeec 6a27 	vfma.f32	s13, s24, s15
d00543cc:	eeab 5ae7 	vfms.f32	s10, s23, s15
d00543d0:	eeab 7aa7 	vfma.f32	s14, s23, s15
d00543d4:	eef0 3a46 	vmov.f32	s7, s12
d00543d8:	eea9 6a67 	vfms.f32	s12, s18, s15
d00543dc:	eeb0 da44 	vmov.f32	s26, s8
d00543e0:	eef0 fa64 	vmov.f32	s31, s9
d00543e4:	eef0 5a66 	vmov.f32	s11, s13
d00543e8:	eeb0 fa45 	vmov.f32	s30, s10
d00543ec:	eea9 da27 	vfma.f32	s26, s18, s15
d00543f0:	ed8d 6a1c 	vstr	s12, [sp, #112]	; 0x70
d00543f4:	eeb0 6a47 	vmov.f32	s12, s14
d00543f8:	eee8 faa7 	vfma.f32	s31, s17, s15
d00543fc:	eea8 fa27 	vfma.f32	s30, s16, s15
d0054400:	eea9 4a67 	vfms.f32	s8, s18, s15
d0054404:	eee9 3a27 	vfma.f32	s7, s18, s15
d0054408:	eee8 4ae7 	vfms.f32	s9, s17, s15
d005440c:	ed8d da16 	vstr	s26, [sp, #88]	; 0x58
d0054410:	eee8 5aa7 	vfma.f32	s11, s17, s15
d0054414:	eee8 6ae7 	vfms.f32	s13, s17, s15
d0054418:	edcd fa17 	vstr	s31, [sp, #92]	; 0x5c
d005441c:	eea8 5a67 	vfms.f32	s10, s16, s15
d0054420:	ed8d fa18 	vstr	s30, [sp, #96]	; 0x60
d0054424:	eea8 6a27 	vfma.f32	s12, s16, s15
d0054428:	ed8d 4a1f 	vstr	s8, [sp, #124]	; 0x7c
d005442c:	eea8 7a67 	vfms.f32	s14, s16, s15
d0054430:	edcd 3a19 	vstr	s7, [sp, #100]	; 0x64
d0054434:	edcd 4a20 	vstr	s9, [sp, #128]	; 0x80
d0054438:	edcd 5a1a 	vstr	s11, [sp, #104]	; 0x68
d005443c:	edcd 6a1d 	vstr	s13, [sp, #116]	; 0x74
d0054440:	ed8d 5a21 	vstr	s10, [sp, #132]	; 0x84
d0054444:	ed8d 6a1b 	vstr	s12, [sp, #108]	; 0x6c
d0054448:	ed8d 7a1e 	vstr	s14, [sp, #120]	; 0x78
d005444c:	f004 fee2 	bl	d0059214 <memcpy>
d0054450:	eeb0 0a4d 	vmov.f32	s0, s26
d0054454:	eef0 0a6f 	vmov.f32	s1, s31
d0054458:	eeb0 1a4f 	vmov.f32	s2, s30
d005445c:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0054460:	f000 fbfc 	bl	d0054c5c <worldToCamera>
d0054464:	ed9d da19 	vldr	s26, [sp, #100]	; 0x64
d0054468:	eddd fa1a 	vldr	s31, [sp, #104]	; 0x68
d005446c:	4631      	mov	r1, r6
d005446e:	ed9d fa1b 	vldr	s30, [sp, #108]	; 0x6c
d0054472:	2250      	movs	r2, #80	; 0x50
d0054474:	4668      	mov	r0, sp
d0054476:	ed8d 0a22 	vstr	s0, [sp, #136]	; 0x88
d005447a:	edcd 0a23 	vstr	s1, [sp, #140]	; 0x8c
d005447e:	ed8d 1a24 	vstr	s2, [sp, #144]	; 0x90
d0054482:	f004 fec7 	bl	d0059214 <memcpy>
d0054486:	eeb0 0a4d 	vmov.f32	s0, s26
d005448a:	eef0 0a6f 	vmov.f32	s1, s31
d005448e:	eeb0 1a4f 	vmov.f32	s2, s30
d0054492:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0054496:	f000 fbe1 	bl	d0054c5c <worldToCamera>
d005449a:	ed9d da1c 	vldr	s26, [sp, #112]	; 0x70
d005449e:	eddd fa1d 	vldr	s31, [sp, #116]	; 0x74
d00544a2:	4631      	mov	r1, r6
d00544a4:	ed9d fa1e 	vldr	s30, [sp, #120]	; 0x78
d00544a8:	2250      	movs	r2, #80	; 0x50
d00544aa:	4668      	mov	r0, sp
d00544ac:	ed8d 0a25 	vstr	s0, [sp, #148]	; 0x94
d00544b0:	edcd 0a26 	vstr	s1, [sp, #152]	; 0x98
d00544b4:	ed8d 1a27 	vstr	s2, [sp, #156]	; 0x9c
d00544b8:	f004 feac 	bl	d0059214 <memcpy>
d00544bc:	eeb0 0a4d 	vmov.f32	s0, s26
d00544c0:	eef0 0a6f 	vmov.f32	s1, s31
d00544c4:	eeb0 1a4f 	vmov.f32	s2, s30
d00544c8:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d00544cc:	f000 fbc6 	bl	d0054c5c <worldToCamera>
d00544d0:	ed9d da1f 	vldr	s26, [sp, #124]	; 0x7c
d00544d4:	eddd fa20 	vldr	s31, [sp, #128]	; 0x80
d00544d8:	4631      	mov	r1, r6
d00544da:	ed9d fa21 	vldr	s30, [sp, #132]	; 0x84
d00544de:	2250      	movs	r2, #80	; 0x50
d00544e0:	4668      	mov	r0, sp
d00544e2:	ed8d 0a28 	vstr	s0, [sp, #160]	; 0xa0
d00544e6:	edcd 0a29 	vstr	s1, [sp, #164]	; 0xa4
d00544ea:	ed8d 1a2a 	vstr	s2, [sp, #168]	; 0xa8
d00544ee:	f004 fe91 	bl	d0059214 <memcpy>
d00544f2:	eeb0 0a4d 	vmov.f32	s0, s26
d00544f6:	eef0 0a6f 	vmov.f32	s1, s31
d00544fa:	eeb0 1a4f 	vmov.f32	s2, s30
d00544fe:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0054502:	f000 fbab 	bl	d0054c5c <worldToCamera>
d0054506:	eddd 7a24 	vldr	s15, [sp, #144]	; 0x90
d005450a:	ed8d 0a2b 	vstr	s0, [sp, #172]	; 0xac
d005450e:	eef4 7acb 	vcmpe.f32	s15, s22
d0054512:	edcd 0a2c 	vstr	s1, [sp, #176]	; 0xb0
d0054516:	ed8d 1a2d 	vstr	s2, [sp, #180]	; 0xb4
d005451a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005451e:	d812      	bhi.n	d0054546 <sb3dParticlesRender+0x222>
d0054520:	eddd 7a27 	vldr	s15, [sp, #156]	; 0x9c
d0054524:	eef4 7acb 	vcmpe.f32	s15, s22
d0054528:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005452c:	d80b      	bhi.n	d0054546 <sb3dParticlesRender+0x222>
d005452e:	eddd 7a2a 	vldr	s15, [sp, #168]	; 0xa8
d0054532:	eef4 7acb 	vcmpe.f32	s15, s22
d0054536:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005453a:	d804      	bhi.n	d0054546 <sb3dParticlesRender+0x222>
d005453c:	eeb4 1acb 	vcmpe.f32	s2, s22
d0054540:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054544:	d931      	bls.n	d00545aa <sb3dParticlesRender+0x286>
d0054546:	4629      	mov	r1, r5
d0054548:	ed9d 3a28 	vldr	s6, [sp, #160]	; 0xa0
d005454c:	eddd 3a29 	vldr	s7, [sp, #164]	; 0xa4
d0054550:	a82e      	add	r0, sp, #184	; 0xb8
d0054552:	ed9d 4a2a 	vldr	s8, [sp, #168]	; 0xa8
d0054556:	eddd 1a25 	vldr	s3, [sp, #148]	; 0x94
d005455a:	ed9d 2a26 	vldr	s4, [sp, #152]	; 0x98
d005455e:	eddd 2a27 	vldr	s5, [sp, #156]	; 0x9c
d0054562:	ed9d 0a22 	vldr	s0, [sp, #136]	; 0x88
d0054566:	eddd 0a23 	vldr	s1, [sp, #140]	; 0x8c
d005456a:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d005456e:	f001 fe75 	bl	d005625c <clipTriangleToFrustum>
d0054572:	2802      	cmp	r0, #2
d0054574:	f300 8155 	bgt.w	d0054822 <sb3dParticlesRender+0x4fe>
d0054578:	a82e      	add	r0, sp, #184	; 0xb8
d005457a:	4629      	mov	r1, r5
d005457c:	ed9d 3a2b 	vldr	s6, [sp, #172]	; 0xac
d0054580:	eddd 3a2c 	vldr	s7, [sp, #176]	; 0xb0
d0054584:	ed9d 4a2d 	vldr	s8, [sp, #180]	; 0xb4
d0054588:	eddd 1a28 	vldr	s3, [sp, #160]	; 0xa0
d005458c:	ed9d 2a29 	vldr	s4, [sp, #164]	; 0xa4
d0054590:	eddd 2a2a 	vldr	s5, [sp, #168]	; 0xa8
d0054594:	ed9d 0a22 	vldr	s0, [sp, #136]	; 0x88
d0054598:	eddd 0a23 	vldr	s1, [sp, #140]	; 0x8c
d005459c:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d00545a0:	f001 fe5c 	bl	d005625c <clipTriangleToFrustum>
d00545a4:	2802      	cmp	r0, #2
d00545a6:	f300 8105 	bgt.w	d00547b4 <sb3dParticlesRender+0x490>
d00545aa:	3420      	adds	r4, #32
d00545ac:	42a7      	cmp	r7, r4
d00545ae:	f000 8133 	beq.w	d0054818 <sb3dParticlesRender+0x4f4>
d00545b2:	7ea3      	ldrb	r3, [r4, #26]
d00545b4:	2b00      	cmp	r3, #0
d00545b6:	d0f8      	beq.n	d00545aa <sb3dParticlesRender+0x286>
d00545b8:	edd4 7a03 	vldr	s15, [r4, #12]
d00545bc:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d00545c0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00545c4:	d9f1      	bls.n	d00545aa <sb3dParticlesRender+0x286>
d00545c6:	edd4 6a01 	vldr	s13, [r4, #4]
d00545ca:	eeb1 5a67 	vneg.f32	s10, s15
d00545ce:	ed94 6a00 	vldr	s12, [r4]
d00545d2:	ee36 7aed 	vsub.f32	s14, s13, s27
d00545d6:	edd4 5a02 	vldr	s11, [r4, #8]
d00545da:	ee36 4a4e 	vsub.f32	s8, s12, s28
d00545de:	eddd 4a15 	vldr	s9, [sp, #84]	; 0x54
d00545e2:	ee27 7a0a 	vmul.f32	s14, s14, s20
d00545e6:	ee75 4ae4 	vsub.f32	s9, s11, s9
d00545ea:	eeaa 7a84 	vfma.f32	s14, s21, s8
d00545ee:	eea9 7aa4 	vfma.f32	s14, s19, s9
d00545f2:	eeb4 5ac7 	vcmpe.f32	s10, s14
d00545f6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00545fa:	dad6      	bge.n	d00545aa <sb3dParticlesRender+0x286>
d00545fc:	ed94 7a05 	vldr	s14, [r4, #20]
d0054600:	ed9f 5a0b 	vldr	s10, [pc, #44]	; d0054630 <sb3dParticlesRender+0x30c>
d0054604:	eeb4 7ac5 	vcmpe.f32	s14, s10
d0054608:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005460c:	f67f aebb 	bls.w	d0054386 <sb3dParticlesRender+0x62>
d0054610:	f1b9 0f00 	cmp.w	r9, #0
d0054614:	f340 809e 	ble.w	d0054754 <sb3dParticlesRender+0x430>
d0054618:	eeb7 4a00 	vmov.f32	s8, #112	; 0x3f800000  1.0
d005461c:	4653      	mov	r3, sl
d005461e:	eeb5 3a00 	vmov.f32	s6, #80	; 0x3e800000  0.250
d0054622:	ed9f 0a05 	vldr	s0, [pc, #20]	; d0054638 <sb3dParticlesRender+0x314>
d0054626:	eef6 3a08 	vmov.f32	s7, #104	; 0x3f400000  0.750
d005462a:	e07e      	b.n	d005472a <sb3dParticlesRender+0x406>
d005462c:	d005b7a0 	.word	0xd005b7a0
d0054630:	38d1b717 	.word	0x38d1b717
d0054634:	358637bd 	.word	0x358637bd
d0054638:	3dcccccd 	.word	0x3dcccccd
d005463c:	3b808081 	.word	0x3b808081
d0054640:	00000000 	.word	0x00000000
d0054644:	edd3 7a02 	vldr	s15, [r3, #8]
d0054648:	edd3 4a01 	vldr	s9, [r3, #4]
d005464c:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0054650:	ed93 7a03 	vldr	s14, [r3, #12]
d0054654:	ee74 4ac6 	vsub.f32	s9, s9, s12
d0054658:	ed93 2a0a 	vldr	s4, [r3, #40]	; 0x28
d005465c:	ee37 7a65 	vsub.f32	s14, s14, s11
d0054660:	ee27 5aa7 	vmul.f32	s10, s15, s15
d0054664:	ee62 2a02 	vmul.f32	s5, s4, s4
d0054668:	eea4 5aa4 	vfma.f32	s10, s9, s9
d005466c:	eea7 5a07 	vfma.f32	s10, s14, s14
d0054670:	eeb4 5a62 	vcmp.f32	s10, s5
d0054674:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054678:	d554      	bpl.n	d0054724 <sb3dParticlesRender+0x400>
d005467a:	ed5f 2a12 	vldr	s5, [pc, #-72]	; d0054634 <sb3dParticlesRender+0x310>
d005467e:	eeb4 5a62 	vcmp.f32	s10, s5
d0054682:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054686:	dd4d      	ble.n	d0054724 <sb3dParticlesRender+0x400>
d0054688:	eef1 0ac5 	vsqrt.f32	s1, s10
d005468c:	edd3 1a08 	vldr	s3, [r3, #32]
d0054690:	ee21 1aa1 	vmul.f32	s2, s3, s3
d0054694:	eeb4 5ac1 	vcmpe.f32	s10, s2
d0054698:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005469c:	eec4 2a20 	vdiv.f32	s5, s8, s1
d00546a0:	ee64 4aa2 	vmul.f32	s9, s9, s5
d00546a4:	ee67 7aa2 	vmul.f32	s15, s15, s5
d00546a8:	ee27 7a22 	vmul.f32	s14, s14, s5
d00546ac:	f240 80e8 	bls.w	d0054880 <sb3dParticlesRender+0x55c>
d00546b0:	ed93 1a09 	vldr	s2, [r3, #36]	; 0x24
d00546b4:	eef4 1ac1 	vcmpe.f32	s3, s2
d00546b8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00546bc:	da32      	bge.n	d0054724 <sb3dParticlesRender+0x400>
d00546be:	eeb4 2ac1 	vcmpe.f32	s4, s2
d00546c2:	ee25 5a22 	vmul.f32	s10, s10, s5
d00546c6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00546ca:	eeb4 1ac5 	vcmpe.f32	s2, s10
d00546ce:	f200 80da 	bhi.w	d0054886 <sb3dParticlesRender+0x562>
d00546d2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00546d6:	d925      	bls.n	d0054724 <sb3dParticlesRender+0x400>
d00546d8:	ee75 2a61 	vsub.f32	s5, s10, s3
d00546dc:	ee31 2a61 	vsub.f32	s4, s2, s3
d00546e0:	ee82 5a82 	vdiv.f32	s10, s5, s4
d00546e4:	ed5f 2a2a 	vldr	s5, [pc, #-168]	; d0054640 <sb3dParticlesRender+0x31c>
d00546e8:	fe85 5a22 	vmaxnm.f32	s10, s10, s5
d00546ec:	fe85 5a44 	vminnm.f32	s10, s10, s8
d00546f0:	ee34 5a45 	vsub.f32	s10, s8, s10
d00546f4:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d00546f8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00546fc:	d912      	bls.n	d0054724 <sb3dParticlesRender+0x400>
d00546fe:	ee67 7a8a 	vmul.f32	s15, s15, s20
d0054702:	eee4 7aaa 	vfma.f32	s15, s9, s21
d0054706:	eee7 7a29 	vfma.f32	s15, s14, s19
d005470a:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d005470e:	eeb1 7a67 	vneg.f32	s14, s15
d0054712:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054716:	da05      	bge.n	d0054724 <sb3dParticlesRender+0x400>
d0054718:	edd3 7a07 	vldr	s15, [r3, #28]
d005471c:	ee25 5a27 	vmul.f32	s10, s10, s15
d0054720:	eea5 0a07 	vfma.f32	s0, s10, s14
d0054724:	3340      	adds	r3, #64	; 0x40
d0054726:	4598      	cmp	r8, r3
d0054728:	d016      	beq.n	d0054758 <sb3dParticlesRender+0x434>
d005472a:	6ada      	ldr	r2, [r3, #44]	; 0x2c
d005472c:	2a00      	cmp	r2, #0
d005472e:	d0f9      	beq.n	d0054724 <sb3dParticlesRender+0x400>
d0054730:	781a      	ldrb	r2, [r3, #0]
d0054732:	2a00      	cmp	r2, #0
d0054734:	d086      	beq.n	d0054644 <sb3dParticlesRender+0x320>
d0054736:	edd3 4a04 	vldr	s9, [r3, #16]
d005473a:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d005473e:	edd3 7a05 	vldr	s15, [r3, #20]
d0054742:	ed93 7a06 	vldr	s14, [r3, #24]
d0054746:	eef1 4a64 	vneg.f32	s9, s9
d005474a:	eef1 7a67 	vneg.f32	s15, s15
d005474e:	eeb1 7a47 	vneg.f32	s14, s14
d0054752:	e7d4      	b.n	d00546fe <sb3dParticlesRender+0x3da>
d0054754:	ed1f 0a48 	vldr	s0, [pc, #-288]	; d0054638 <sb3dParticlesRender+0x314>
d0054758:	7e63      	ldrb	r3, [r4, #25]
d005475a:	eeb7 fa00 	vmov.f32	s30, #112	; 0x3f800000  1.0
d005475e:	ed1f 7a49 	vldr	s14, [pc, #-292]	; d005463c <sb3dParticlesRender+0x318>
d0054762:	ee07 3a90 	vmov	s15, r3
d0054766:	ed1f da4a 	vldr	s26, [pc, #-296]	; d0054640 <sb3dParticlesRender+0x31c>
d005476a:	eef8 7a67 	vcvt.f32.u32	s15, s15
d005476e:	ee67 7a87 	vmul.f32	s15, s15, s14
d0054772:	fec7 7a8d 	vmaxnm.f32	s15, s15, s26
d0054776:	fe87 0a80 	vmaxnm.f32	s0, s15, s0
d005477a:	fe80 0a4f 	vminnm.f32	s0, s0, s30
d005477e:	f001 fc77 	bl	d0056070 <brightnessToShadeF>
d0054782:	edd4 ea05 	vldr	s29, [r4, #20]
d0054786:	ed94 5a04 	vldr	s10, [r4, #16]
d005478a:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d005478e:	ee3f fa6e 	vsub.f32	s30, s30, s29
d0054792:	edd4 7a03 	vldr	s15, [r4, #12]
d0054796:	ee60 ea2e 	vmul.f32	s29, s0, s29
d005479a:	ed94 6a00 	vldr	s12, [r4]
d005479e:	edd4 6a01 	vldr	s13, [r4, #4]
d00547a2:	edd4 5a02 	vldr	s11, [r4, #8]
d00547a6:	eee5 ea0f 	vfma.f32	s29, s10, s30
d00547aa:	fece ea8d 	vmaxnm.f32	s29, s29, s26
d00547ae:	fece eac7 	vminnm.f32	s29, s29, s14
d00547b2:	e5f2      	b.n	d005439a <sb3dParticlesRender+0x76>
d00547b4:	f100 3bff 	add.w	fp, r0, #4294967295	; 0xffffffff
d00547b8:	2601      	movs	r6, #1
d00547ba:	4631      	mov	r1, r6
d00547bc:	3601      	adds	r6, #1
d00547be:	aa46      	add	r2, sp, #280	; 0x118
d00547c0:	eef0 4a6e 	vmov.f32	s9, s29
d00547c4:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d00547c8:	2380      	movs	r3, #128	; 0x80
d00547ca:	eb06 0046 	add.w	r0, r6, r6, lsl #1
d00547ce:	ed9d 0a2e 	vldr	s0, [sp, #184]	; 0xb8
d00547d2:	eb02 0181 	add.w	r1, r2, r1, lsl #2
d00547d6:	eddd 0a2f 	vldr	s1, [sp, #188]	; 0xbc
d00547da:	eb02 0080 	add.w	r0, r2, r0, lsl #2
d00547de:	ed9d 1a30 	vldr	s2, [sp, #192]	; 0xc0
d00547e2:	f1a1 0c60 	sub.w	ip, r1, #96	; 0x60
d00547e6:	ed51 1a18 	vldr	s3, [r1, #-96]	; 0xffffffa0
d00547ea:	ed10 3a18 	vldr	s6, [r0, #-96]	; 0xffffffa0
d00547ee:	f1a0 0160 	sub.w	r1, r0, #96	; 0x60
d00547f2:	7e62      	ldrb	r2, [r4, #25]
d00547f4:	4628      	mov	r0, r5
d00547f6:	edd1 3a01 	vldr	s7, [r1, #4]
d00547fa:	ed91 4a02 	vldr	s8, [r1, #8]
d00547fe:	ed9c 2a01 	vldr	s4, [ip, #4]
d0054802:	7e21      	ldrb	r1, [r4, #24]
d0054804:	eddc 2a02 	vldr	s5, [ip, #8]
d0054808:	f002 f988 	bl	d0056b1c <submitClippedTri>
d005480c:	455e      	cmp	r6, fp
d005480e:	d1d4      	bne.n	d00547ba <sb3dParticlesRender+0x496>
d0054810:	3420      	adds	r4, #32
d0054812:	42a7      	cmp	r7, r4
d0054814:	f47f aecd 	bne.w	d00545b2 <sb3dParticlesRender+0x28e>
d0054818:	b047      	add	sp, #284	; 0x11c
d005481a:	ecbd 8b10 	vpop	{d8-d15}
d005481e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0054822:	f100 3bff 	add.w	fp, r0, #4294967295	; 0xffffffff
d0054826:	2601      	movs	r6, #1
d0054828:	4631      	mov	r1, r6
d005482a:	3601      	adds	r6, #1
d005482c:	aa46      	add	r2, sp, #280	; 0x118
d005482e:	eef0 4a6e 	vmov.f32	s9, s29
d0054832:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d0054836:	2380      	movs	r3, #128	; 0x80
d0054838:	eb06 0046 	add.w	r0, r6, r6, lsl #1
d005483c:	ed9d 0a2e 	vldr	s0, [sp, #184]	; 0xb8
d0054840:	eb02 0181 	add.w	r1, r2, r1, lsl #2
d0054844:	eddd 0a2f 	vldr	s1, [sp, #188]	; 0xbc
d0054848:	eb02 0080 	add.w	r0, r2, r0, lsl #2
d005484c:	ed9d 1a30 	vldr	s2, [sp, #192]	; 0xc0
d0054850:	f1a1 0c60 	sub.w	ip, r1, #96	; 0x60
d0054854:	ed51 1a18 	vldr	s3, [r1, #-96]	; 0xffffffa0
d0054858:	ed10 3a18 	vldr	s6, [r0, #-96]	; 0xffffffa0
d005485c:	f1a0 0160 	sub.w	r1, r0, #96	; 0x60
d0054860:	7e62      	ldrb	r2, [r4, #25]
d0054862:	4628      	mov	r0, r5
d0054864:	edd1 3a01 	vldr	s7, [r1, #4]
d0054868:	ed91 4a02 	vldr	s8, [r1, #8]
d005486c:	ed9c 2a01 	vldr	s4, [ip, #4]
d0054870:	7e21      	ldrb	r1, [r4, #24]
d0054872:	eddc 2a02 	vldr	s5, [ip, #8]
d0054876:	f002 f951 	bl	d0056b1c <submitClippedTri>
d005487a:	455e      	cmp	r6, fp
d005487c:	d1d4      	bne.n	d0054828 <sb3dParticlesRender+0x504>
d005487e:	e67b      	b.n	d0054578 <sb3dParticlesRender+0x254>
d0054880:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0054884:	e73b      	b.n	d00546fe <sb3dParticlesRender+0x3da>
d0054886:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005488a:	db12      	blt.n	d00548b2 <sb3dParticlesRender+0x58e>
d005488c:	ee35 5a61 	vsub.f32	s10, s10, s3
d0054890:	ee31 2a61 	vsub.f32	s4, s2, s3
d0054894:	eec5 2a02 	vdiv.f32	s5, s10, s4
d0054898:	ed1f 5a97 	vldr	s10, [pc, #-604]	; d0054640 <sb3dParticlesRender+0x31c>
d005489c:	fe82 5a85 	vmaxnm.f32	s10, s5, s10
d00548a0:	eef0 2a44 	vmov.f32	s5, s8
d00548a4:	fe85 5a44 	vminnm.f32	s10, s10, s8
d00548a8:	eee5 2a63 	vfms.f32	s5, s10, s7
d00548ac:	eeb0 5a62 	vmov.f32	s10, s5
d00548b0:	e720      	b.n	d00546f4 <sb3dParticlesRender+0x3d0>
d00548b2:	ee75 2a41 	vsub.f32	s5, s10, s2
d00548b6:	ee32 2a41 	vsub.f32	s4, s4, s2
d00548ba:	ee82 5a82 	vdiv.f32	s10, s5, s4
d00548be:	ed5f 2aa0 	vldr	s5, [pc, #-640]	; d0054640 <sb3dParticlesRender+0x31c>
d00548c2:	fe85 5a22 	vmaxnm.f32	s10, s10, s5
d00548c6:	fe85 5a44 	vminnm.f32	s10, s10, s8
d00548ca:	ee34 5a45 	vsub.f32	s10, s8, s10
d00548ce:	ee25 5a03 	vmul.f32	s10, s10, s6
d00548d2:	e70f      	b.n	d00546f4 <sb3dParticlesRender+0x3d0>
d00548d4:	4770      	bx	lr
d00548d6:	bf00      	nop

d00548d8 <worldClear>:
d00548d8:	f44f 42c0 	mov.w	r2, #24576	; 0x6000
d00548dc:	2100      	movs	r1, #0
d00548de:	4801      	ldr	r0, [pc, #4]	; (d00548e4 <worldClear+0xc>)
d00548e0:	f004 bca6 	b.w	d0059230 <memset>
d00548e4:	d00f5ac0 	.word	0xd00f5ac0

d00548e8 <cameraNormalize>:
d00548e8:	edd0 0a0d 	vldr	s1, [r0, #52]	; 0x34
d00548ec:	ed90 1a0e 	vldr	s2, [r0, #56]	; 0x38
d00548f0:	ed90 0a0c 	vldr	s0, [r0, #48]	; 0x30
d00548f4:	b510      	push	{r4, lr}
d00548f6:	4604      	mov	r4, r0
d00548f8:	f7ff fb6c 	bl	d0053fd4 <vec3Normalize>
d00548fc:	eeb0 7a60 	vmov.f32	s14, s1
d0054900:	eef0 7a41 	vmov.f32	s15, s2
d0054904:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0054908:	ed94 0a06 	vldr	s0, [r4, #24]
d005490c:	ed84 7a0d 	vstr	s14, [r4, #52]	; 0x34
d0054910:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d0054914:	edd4 0a07 	vldr	s1, [r4, #28]
d0054918:	ed94 1a08 	vldr	s2, [r4, #32]
d005491c:	f7ff fb5a 	bl	d0053fd4 <vec3Normalize>
d0054920:	eef0 1a40 	vmov.f32	s3, s0
d0054924:	eeb0 2a60 	vmov.f32	s4, s1
d0054928:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d005492c:	eef0 2a41 	vmov.f32	s5, s2
d0054930:	edc4 0a07 	vstr	s1, [r4, #28]
d0054934:	ed84 1a08 	vstr	s2, [r4, #32]
d0054938:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d005493c:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0054940:	edc4 1a06 	vstr	s3, [r4, #24]
d0054944:	f7ff fb30 	bl	d0053fa8 <vec3Cross>
d0054948:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d005494c:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0054950:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0054954:	f7ff fb3e 	bl	d0053fd4 <vec3Normalize>
d0054958:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d005495c:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0054960:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0054964:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0054968:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d005496c:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0054970:	f7ff fb1a 	bl	d0053fa8 <vec3Cross>
d0054974:	ed84 0a06 	vstr	s0, [r4, #24]
d0054978:	edc4 0a07 	vstr	s1, [r4, #28]
d005497c:	ed84 1a08 	vstr	s2, [r4, #32]
d0054980:	f7ff fb28 	bl	d0053fd4 <vec3Normalize>
d0054984:	ed84 0a06 	vstr	s0, [r4, #24]
d0054988:	edc4 0a07 	vstr	s1, [r4, #28]
d005498c:	ed84 1a08 	vstr	s2, [r4, #32]
d0054990:	bd10      	pop	{r4, pc}
d0054992:	bf00      	nop

d0054994 <cameraCreate>:
d0054994:	b510      	push	{r4, lr}
d0054996:	4604      	mov	r4, r0
d0054998:	2260      	movs	r2, #96	; 0x60
d005499a:	4902      	ldr	r1, [pc, #8]	; (d00549a4 <cameraCreate+0x10>)
d005499c:	f004 fc3a 	bl	d0059214 <memcpy>
d00549a0:	4620      	mov	r0, r4
d00549a2:	bd10      	pop	{r4, pc}
d00549a4:	d005aca0 	.word	0xd005aca0

d00549a8 <cameraSetPosition>:
d00549a8:	b084      	sub	sp, #16
d00549aa:	ed8d 0a01 	vstr	s0, [sp, #4]
d00549ae:	edcd 0a02 	vstr	s1, [sp, #8]
d00549b2:	ed8d 1a03 	vstr	s2, [sp, #12]
d00549b6:	b128      	cbz	r0, d00549c4 <cameraSetPosition+0x1c>
d00549b8:	aa04      	add	r2, sp, #16
d00549ba:	4603      	mov	r3, r0
d00549bc:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d00549c0:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d00549c4:	b004      	add	sp, #16
d00549c6:	4770      	bx	lr

d00549c8 <cameraTurn>:
d00549c8:	2800      	cmp	r0, #0
d00549ca:	f000 8144 	beq.w	d0054c56 <cameraTurn+0x28e>
d00549ce:	b570      	push	{r4, r5, r6, lr}
d00549d0:	4604      	mov	r4, r0
d00549d2:	ed2d 8b04 	vpush	{d8-d9}
d00549d6:	eef0 8a40 	vmov.f32	s17, s0
d00549da:	b08a      	sub	sp, #40	; 0x28
d00549dc:	eeb0 9a60 	vmov.f32	s18, s1
d00549e0:	eeb0 8a41 	vmov.f32	s16, s2
d00549e4:	bb69      	cbnz	r1, d0054a42 <cameraTurn+0x7a>
d00549e6:	f100 0318 	add.w	r3, r0, #24
d00549ea:	ae01      	add	r6, sp, #4
d00549ec:	f100 0524 	add.w	r5, r0, #36	; 0x24
d00549f0:	eeb5 9a40 	vcmp.f32	s18, #0.0
d00549f4:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d00549f8:	f104 0330 	add.w	r3, r4, #48	; 0x30
d00549fc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054a00:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0054a04:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d0054a08:	ae04      	add	r6, sp, #16
d0054a0a:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0054a0e:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0054a12:	ab0a      	add	r3, sp, #40	; 0x28
d0054a14:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0054a18:	d14a      	bne.n	d0054ab0 <cameraTurn+0xe8>
d0054a1a:	eef5 8a40 	vcmp.f32	s17, #0.0
d0054a1e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054a22:	f040 808d 	bne.w	d0054b40 <cameraTurn+0x178>
d0054a26:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0054a2a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054a2e:	f040 80cf 	bne.w	d0054bd0 <cameraTurn+0x208>
d0054a32:	4620      	mov	r0, r4
d0054a34:	b00a      	add	sp, #40	; 0x28
d0054a36:	ecbd 8b04 	vpop	{d8-d9}
d0054a3a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0054a3e:	f7ff bf53 	b.w	d00548e8 <cameraNormalize>
d0054a42:	ed9f 1a85 	vldr	s2, [pc, #532]	; d0054c58 <cameraTurn+0x290>
d0054a46:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0054a4a:	eef0 0a41 	vmov.f32	s1, s2
d0054a4e:	f7ff fbc1 	bl	d00541d4 <vec3>
d0054a52:	eef0 7a41 	vmov.f32	s15, s2
d0054a56:	ed9f 1a80 	vldr	s2, [pc, #512]	; d0054c58 <cameraTurn+0x290>
d0054a5a:	eeb0 7a60 	vmov.f32	s14, s1
d0054a5e:	ed8d 0a01 	vstr	s0, [sp, #4]
d0054a62:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d0054a66:	edcd 7a03 	vstr	s15, [sp, #12]
d0054a6a:	eeb0 0a41 	vmov.f32	s0, s2
d0054a6e:	ed8d 7a02 	vstr	s14, [sp, #8]
d0054a72:	f7ff fbaf 	bl	d00541d4 <vec3>
d0054a76:	eeb0 7a60 	vmov.f32	s14, s1
d0054a7a:	eddf 0a77 	vldr	s1, [pc, #476]	; d0054c58 <cameraTurn+0x290>
d0054a7e:	eef0 7a41 	vmov.f32	s15, s2
d0054a82:	ed8d 0a04 	vstr	s0, [sp, #16]
d0054a86:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d0054a8a:	eeb0 0a60 	vmov.f32	s0, s1
d0054a8e:	ed8d 7a05 	vstr	s14, [sp, #20]
d0054a92:	edcd 7a06 	vstr	s15, [sp, #24]
d0054a96:	f7ff fb9d 	bl	d00541d4 <vec3>
d0054a9a:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0054a9e:	edcd 0a08 	vstr	s1, [sp, #32]
d0054aa2:	ed8d 0a07 	vstr	s0, [sp, #28]
d0054aa6:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d0054aaa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054aae:	d0b4      	beq.n	d0054a1a <cameraTurn+0x52>
d0054ab0:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0054ab4:	eeb0 3a49 	vmov.f32	s6, s18
d0054ab8:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0054abc:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0054ac0:	eddd 1a04 	vldr	s3, [sp, #16]
d0054ac4:	ed9d 2a05 	vldr	s4, [sp, #20]
d0054ac8:	eddd 2a06 	vldr	s5, [sp, #24]
d0054acc:	f7ff fad2 	bl	d0054074 <rotateAroundAxis>
d0054ad0:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0054ad4:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0054ad8:	eeb0 3a49 	vmov.f32	s6, s18
d0054adc:	ed94 0a06 	vldr	s0, [r4, #24]
d0054ae0:	edd4 0a07 	vldr	s1, [r4, #28]
d0054ae4:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0054ae8:	ed94 1a08 	vldr	s2, [r4, #32]
d0054aec:	eddd 1a04 	vldr	s3, [sp, #16]
d0054af0:	ed9d 2a05 	vldr	s4, [sp, #20]
d0054af4:	eddd 2a06 	vldr	s5, [sp, #24]
d0054af8:	f7ff fabc 	bl	d0054074 <rotateAroundAxis>
d0054afc:	eeb0 3a49 	vmov.f32	s6, s18
d0054b00:	ed84 0a06 	vstr	s0, [r4, #24]
d0054b04:	edc4 0a07 	vstr	s1, [r4, #28]
d0054b08:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0054b0c:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0054b10:	ed84 1a08 	vstr	s2, [r4, #32]
d0054b14:	eddd 1a04 	vldr	s3, [sp, #16]
d0054b18:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0054b1c:	ed9d 2a05 	vldr	s4, [sp, #20]
d0054b20:	eddd 2a06 	vldr	s5, [sp, #24]
d0054b24:	f7ff faa6 	bl	d0054074 <rotateAroundAxis>
d0054b28:	eef5 8a40 	vcmp.f32	s17, #0.0
d0054b2c:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0054b30:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0054b34:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054b38:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0054b3c:	f43f af73 	beq.w	d0054a26 <cameraTurn+0x5e>
d0054b40:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0054b44:	eeb0 3a68 	vmov.f32	s6, s17
d0054b48:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0054b4c:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0054b50:	eddd 1a01 	vldr	s3, [sp, #4]
d0054b54:	ed9d 2a02 	vldr	s4, [sp, #8]
d0054b58:	eddd 2a03 	vldr	s5, [sp, #12]
d0054b5c:	f7ff fa8a 	bl	d0054074 <rotateAroundAxis>
d0054b60:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0054b64:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0054b68:	eeb0 3a68 	vmov.f32	s6, s17
d0054b6c:	ed94 0a06 	vldr	s0, [r4, #24]
d0054b70:	edd4 0a07 	vldr	s1, [r4, #28]
d0054b74:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0054b78:	ed94 1a08 	vldr	s2, [r4, #32]
d0054b7c:	eddd 1a01 	vldr	s3, [sp, #4]
d0054b80:	ed9d 2a02 	vldr	s4, [sp, #8]
d0054b84:	eddd 2a03 	vldr	s5, [sp, #12]
d0054b88:	f7ff fa74 	bl	d0054074 <rotateAroundAxis>
d0054b8c:	eeb0 3a68 	vmov.f32	s6, s17
d0054b90:	ed84 0a06 	vstr	s0, [r4, #24]
d0054b94:	edc4 0a07 	vstr	s1, [r4, #28]
d0054b98:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0054b9c:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0054ba0:	ed84 1a08 	vstr	s2, [r4, #32]
d0054ba4:	eddd 1a01 	vldr	s3, [sp, #4]
d0054ba8:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0054bac:	ed9d 2a02 	vldr	s4, [sp, #8]
d0054bb0:	eddd 2a03 	vldr	s5, [sp, #12]
d0054bb4:	f7ff fa5e 	bl	d0054074 <rotateAroundAxis>
d0054bb8:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0054bbc:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0054bc0:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0054bc4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054bc8:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0054bcc:	f43f af31 	beq.w	d0054a32 <cameraTurn+0x6a>
d0054bd0:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0054bd4:	eeb0 3a48 	vmov.f32	s6, s16
d0054bd8:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0054bdc:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0054be0:	eddd 1a07 	vldr	s3, [sp, #28]
d0054be4:	ed9d 2a08 	vldr	s4, [sp, #32]
d0054be8:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0054bec:	f7ff fa42 	bl	d0054074 <rotateAroundAxis>
d0054bf0:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0054bf4:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0054bf8:	eeb0 3a48 	vmov.f32	s6, s16
d0054bfc:	ed94 0a06 	vldr	s0, [r4, #24]
d0054c00:	edd4 0a07 	vldr	s1, [r4, #28]
d0054c04:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0054c08:	ed94 1a08 	vldr	s2, [r4, #32]
d0054c0c:	eddd 1a07 	vldr	s3, [sp, #28]
d0054c10:	ed9d 2a08 	vldr	s4, [sp, #32]
d0054c14:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0054c18:	f7ff fa2c 	bl	d0054074 <rotateAroundAxis>
d0054c1c:	ed84 0a06 	vstr	s0, [r4, #24]
d0054c20:	edc4 0a07 	vstr	s1, [r4, #28]
d0054c24:	eeb0 3a48 	vmov.f32	s6, s16
d0054c28:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0054c2c:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0054c30:	ed84 1a08 	vstr	s2, [r4, #32]
d0054c34:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0054c38:	eddd 1a07 	vldr	s3, [sp, #28]
d0054c3c:	ed9d 2a08 	vldr	s4, [sp, #32]
d0054c40:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0054c44:	f7ff fa16 	bl	d0054074 <rotateAroundAxis>
d0054c48:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0054c4c:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0054c50:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0054c54:	e6ed      	b.n	d0054a32 <cameraTurn+0x6a>
d0054c56:	4770      	bx	lr
d0054c58:	00000000 	.word	0x00000000

d0054c5c <worldToCamera>:
d0054c5c:	b084      	sub	sp, #16
d0054c5e:	b510      	push	{r4, lr}
d0054c60:	ed2d 8b02 	vpush	{d8}
d0054c64:	b0ac      	sub	sp, #176	; 0xb0
d0054c66:	f10d 042f 	add.w	r4, sp, #47	; 0x2f
d0054c6a:	f10d 0cc0 	add.w	ip, sp, #192	; 0xc0
d0054c6e:	ed8d 0a23 	vstr	s0, [sp, #140]	; 0x8c
d0054c72:	f024 041f 	bic.w	r4, r4, #31
d0054c76:	edcd 0a24 	vstr	s1, [sp, #144]	; 0x90
d0054c7a:	ed8d 1a25 	vstr	s2, [sp, #148]	; 0x94
d0054c7e:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d0054c82:	2260      	movs	r2, #96	; 0x60
d0054c84:	4661      	mov	r1, ip
d0054c86:	4620      	mov	r0, r4
d0054c88:	f004 fac4 	bl	d0059214 <memcpy>
d0054c8c:	edd4 7a00 	vldr	s15, [r4]
d0054c90:	ed9d 0a23 	vldr	s0, [sp, #140]	; 0x8c
d0054c94:	ed94 7a01 	vldr	s14, [r4, #4]
d0054c98:	ee30 0a67 	vsub.f32	s0, s0, s15
d0054c9c:	eddd 0a24 	vldr	s1, [sp, #144]	; 0x90
d0054ca0:	edd4 7a02 	vldr	s15, [r4, #8]
d0054ca4:	ed9d 1a25 	vldr	s2, [sp, #148]	; 0x94
d0054ca8:	ee70 0ac7 	vsub.f32	s1, s1, s14
d0054cac:	edd4 1a06 	vldr	s3, [r4, #24]
d0054cb0:	ee31 1a67 	vsub.f32	s2, s2, s15
d0054cb4:	ed94 2a07 	vldr	s4, [r4, #28]
d0054cb8:	edd4 2a08 	vldr	s5, [r4, #32]
d0054cbc:	edcd 0a27 	vstr	s1, [sp, #156]	; 0x9c
d0054cc0:	ed8d 1a28 	vstr	s2, [sp, #160]	; 0xa0
d0054cc4:	ed8d 0a26 	vstr	s0, [sp, #152]	; 0x98
d0054cc8:	f7ff f962 	bl	d0053f90 <vec3Dot>
d0054ccc:	edd4 1a09 	vldr	s3, [r4, #36]	; 0x24
d0054cd0:	eef0 8a40 	vmov.f32	s17, s0
d0054cd4:	ed94 2a0a 	vldr	s4, [r4, #40]	; 0x28
d0054cd8:	edd4 2a0b 	vldr	s5, [r4, #44]	; 0x2c
d0054cdc:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d0054ce0:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d0054ce4:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d0054ce8:	f7ff f952 	bl	d0053f90 <vec3Dot>
d0054cec:	eeb0 8a40 	vmov.f32	s16, s0
d0054cf0:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d0054cf4:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d0054cf8:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0054cfc:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d0054d00:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0054d04:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0054d08:	f7ff f942 	bl	d0053f90 <vec3Dot>
d0054d0c:	eef0 0a48 	vmov.f32	s1, s16
d0054d10:	eeb0 1a40 	vmov.f32	s2, s0
d0054d14:	eeb0 0a68 	vmov.f32	s0, s17
d0054d18:	b02c      	add	sp, #176	; 0xb0
d0054d1a:	ecbd 8b02 	vpop	{d8}
d0054d1e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0054d22:	b004      	add	sp, #16
d0054d24:	4770      	bx	lr
d0054d26:	bf00      	nop

d0054d28 <cameraSetRange>:
d0054d28:	b1d8      	cbz	r0, d0054d62 <cameraSetRange+0x3a>
d0054d2a:	eddf 7a11 	vldr	s15, [pc, #68]	; d0054d70 <cameraSetRange+0x48>
d0054d2e:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d0054d32:	eeb4 0ae0 	vcmpe.f32	s0, s1
d0054d36:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054d3a:	da13      	bge.n	d0054d64 <cameraSetRange+0x3c>
d0054d3c:	ee30 7ac0 	vsub.f32	s14, s1, s0
d0054d40:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0054d44:	eec6 7a87 	vdiv.f32	s15, s13, s14
d0054d48:	4b0a      	ldr	r3, [pc, #40]	; (d0054d74 <cameraSetRange+0x4c>)
d0054d4a:	490b      	ldr	r1, [pc, #44]	; (d0054d78 <cameraSetRange+0x50>)
d0054d4c:	4a0b      	ldr	r2, [pc, #44]	; (d0054d7c <cameraSetRange+0x54>)
d0054d4e:	ed80 0a10 	vstr	s0, [r0, #64]	; 0x40
d0054d52:	edc0 0a11 	vstr	s1, [r0, #68]	; 0x44
d0054d56:	edc0 7a0f 	vstr	s15, [r0, #60]	; 0x3c
d0054d5a:	6483      	str	r3, [r0, #72]	; 0x48
d0054d5c:	64c3      	str	r3, [r0, #76]	; 0x4c
d0054d5e:	6501      	str	r1, [r0, #80]	; 0x50
d0054d60:	6542      	str	r2, [r0, #84]	; 0x54
d0054d62:	4770      	bx	lr
d0054d64:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0054d68:	ee70 0a27 	vadd.f32	s1, s0, s15
d0054d6c:	e7ec      	b.n	d0054d48 <cameraSetRange+0x20>
d0054d6e:	bf00      	nop
d0054d70:	3a83126f 	.word	0x3a83126f
d0054d74:	43700000 	.word	0x43700000
d0054d78:	43200000 	.word	0x43200000
d0054d7c:	3f2aaaab 	.word	0x3f2aaaab

d0054d80 <cameraMove>:
d0054d80:	b3a8      	cbz	r0, d0054dee <cameraMove+0x6e>
d0054d82:	edd0 6a0b 	vldr	s13, [r0, #44]	; 0x2c
d0054d86:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
d0054d8a:	edd0 7a0a 	vldr	s15, [r0, #40]	; 0x28
d0054d8e:	ee20 7a87 	vmul.f32	s14, s1, s14
d0054d92:	edd0 5a06 	vldr	s11, [r0, #24]
d0054d96:	ee60 7aa7 	vmul.f32	s15, s1, s15
d0054d9a:	ed90 6a08 	vldr	s12, [r0, #32]
d0054d9e:	ee60 0aa6 	vmul.f32	s1, s1, s13
d0054da2:	edd0 6a07 	vldr	s13, [r0, #28]
d0054da6:	eea5 7a80 	vfma.f32	s14, s11, s0
d0054daa:	edd0 4a01 	vldr	s9, [r0, #4]
d0054dae:	eee6 7a80 	vfma.f32	s15, s13, s0
d0054db2:	ed90 5a02 	vldr	s10, [r0, #8]
d0054db6:	eee6 0a00 	vfma.f32	s1, s12, s0
d0054dba:	edd0 6a00 	vldr	s13, [r0]
d0054dbe:	edd0 5a0c 	vldr	s11, [r0, #48]	; 0x30
d0054dc2:	ed90 6a0d 	vldr	s12, [r0, #52]	; 0x34
d0054dc6:	ee37 7a26 	vadd.f32	s14, s14, s13
d0054dca:	edd0 6a0e 	vldr	s13, [r0, #56]	; 0x38
d0054dce:	ee77 7aa4 	vadd.f32	s15, s15, s9
d0054dd2:	ee70 0a85 	vadd.f32	s1, s1, s10
d0054dd6:	eea5 7a81 	vfma.f32	s14, s11, s2
d0054dda:	eee6 7a01 	vfma.f32	s15, s12, s2
d0054dde:	eee6 0a81 	vfma.f32	s1, s13, s2
d0054de2:	ed80 7a00 	vstr	s14, [r0]
d0054de6:	edc0 7a01 	vstr	s15, [r0, #4]
d0054dea:	edc0 0a02 	vstr	s1, [r0, #8]
d0054dee:	4770      	bx	lr

d0054df0 <normalizeEntity.part.0>:
d0054df0:	edd0 0a05 	vldr	s1, [r0, #20]
d0054df4:	ed90 1a06 	vldr	s2, [r0, #24]
d0054df8:	ed90 0a04 	vldr	s0, [r0, #16]
d0054dfc:	b510      	push	{r4, lr}
d0054dfe:	4604      	mov	r4, r0
d0054e00:	f7ff f8e8 	bl	d0053fd4 <vec3Normalize>
d0054e04:	eeb0 7a60 	vmov.f32	s14, s1
d0054e08:	eef0 7a41 	vmov.f32	s15, s2
d0054e0c:	ed84 0a04 	vstr	s0, [r4, #16]
d0054e10:	ed94 0a07 	vldr	s0, [r4, #28]
d0054e14:	ed84 7a05 	vstr	s14, [r4, #20]
d0054e18:	edc4 7a06 	vstr	s15, [r4, #24]
d0054e1c:	edd4 0a08 	vldr	s1, [r4, #32]
d0054e20:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0054e24:	f7ff f8d6 	bl	d0053fd4 <vec3Normalize>
d0054e28:	eef0 1a40 	vmov.f32	s3, s0
d0054e2c:	eeb0 2a60 	vmov.f32	s4, s1
d0054e30:	ed94 0a04 	vldr	s0, [r4, #16]
d0054e34:	eef0 2a41 	vmov.f32	s5, s2
d0054e38:	edc4 0a08 	vstr	s1, [r4, #32]
d0054e3c:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d0054e40:	edd4 0a05 	vldr	s1, [r4, #20]
d0054e44:	ed94 1a06 	vldr	s2, [r4, #24]
d0054e48:	edc4 1a07 	vstr	s3, [r4, #28]
d0054e4c:	f7ff f8ac 	bl	d0053fa8 <vec3Cross>
d0054e50:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0054e54:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0054e58:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0054e5c:	f7ff f8ba 	bl	d0053fd4 <vec3Normalize>
d0054e60:	edd4 1a04 	vldr	s3, [r4, #16]
d0054e64:	ed94 2a05 	vldr	s4, [r4, #20]
d0054e68:	edd4 2a06 	vldr	s5, [r4, #24]
d0054e6c:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0054e70:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0054e74:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0054e78:	f7ff f896 	bl	d0053fa8 <vec3Cross>
d0054e7c:	ed84 0a07 	vstr	s0, [r4, #28]
d0054e80:	edc4 0a08 	vstr	s1, [r4, #32]
d0054e84:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d0054e88:	f7ff f8a4 	bl	d0053fd4 <vec3Normalize>
d0054e8c:	ed84 0a07 	vstr	s0, [r4, #28]
d0054e90:	edc4 0a08 	vstr	s1, [r4, #32]
d0054e94:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d0054e98:	bd10      	pop	{r4, pc}
d0054e9a:	bf00      	nop

d0054e9c <entityRotation.part.0>:
d0054e9c:	b5f0      	push	{r4, r5, r6, r7, lr}
d0054e9e:	4eb7      	ldr	r6, [pc, #732]	; (d005517c <entityRotation.part.0+0x2e0>)
d0054ea0:	eb00 0440 	add.w	r4, r0, r0, lsl #1
d0054ea4:	ed2d 8b04 	vpush	{d8-d9}
d0054ea8:	eb06 1444 	add.w	r4, r6, r4, lsl #5
d0054eac:	eeb0 9a40 	vmov.f32	s18, s0
d0054eb0:	eef0 8a60 	vmov.f32	s17, s1
d0054eb4:	b08b      	sub	sp, #44	; 0x2c
d0054eb6:	eeb0 8a41 	vmov.f32	s16, s2
d0054eba:	2900      	cmp	r1, #0
d0054ebc:	d040      	beq.n	d0054f40 <entityRotation.part.0+0xa4>
d0054ebe:	eddf 1ab0 	vldr	s3, [pc, #704]	; d0055180 <entityRotation.part.0+0x2e4>
d0054ec2:	eeb7 2a00 	vmov.f32	s4, #112	; 0x3f800000  1.0
d0054ec6:	eeb4 0a61 	vcmp.f32	s0, s3
d0054eca:	edc4 1a08 	vstr	s3, [r4, #32]
d0054ece:	ed84 2a07 	vstr	s4, [r4, #28]
d0054ed2:	ed84 2a0b 	vstr	s4, [r4, #44]	; 0x2c
d0054ed6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054eda:	ed84 2a06 	vstr	s4, [r4, #24]
d0054ede:	ed8d 2a02 	vstr	s4, [sp, #8]
d0054ee2:	ed8d 2a04 	vstr	s4, [sp, #16]
d0054ee6:	ed8d 2a09 	vstr	s4, [sp, #36]	; 0x24
d0054eea:	edc4 1a09 	vstr	s3, [r4, #36]	; 0x24
d0054eee:	edc4 1a0a 	vstr	s3, [r4, #40]	; 0x28
d0054ef2:	edc4 1a0c 	vstr	s3, [r4, #48]	; 0x30
d0054ef6:	edc4 1a04 	vstr	s3, [r4, #16]
d0054efa:	edc4 1a05 	vstr	s3, [r4, #20]
d0054efe:	edcd 1a01 	vstr	s3, [sp, #4]
d0054f02:	edcd 1a03 	vstr	s3, [sp, #12]
d0054f06:	edcd 1a05 	vstr	s3, [sp, #20]
d0054f0a:	edcd 1a06 	vstr	s3, [sp, #24]
d0054f0e:	edcd 1a07 	vstr	s3, [sp, #28]
d0054f12:	edcd 1a08 	vstr	s3, [sp, #32]
d0054f16:	d17e      	bne.n	d0055016 <entityRotation.part.0+0x17a>
d0054f18:	eef5 8a40 	vcmp.f32	s17, #0.0
d0054f1c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054f20:	f040 80c9 	bne.w	d00550b6 <entityRotation.part.0+0x21a>
d0054f24:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0054f28:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054f2c:	f040 8117 	bne.w	d005515e <entityRotation.part.0+0x2c2>
d0054f30:	4620      	mov	r0, r4
d0054f32:	b00b      	add	sp, #44	; 0x2c
d0054f34:	ecbd 8b04 	vpop	{d8-d9}
d0054f38:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0054f3c:	f7ff bf58 	b.w	d0054df0 <normalizeEntity.part.0>
d0054f40:	eeb5 0a40 	vcmp.f32	s0, #0.0
d0054f44:	4605      	mov	r5, r0
d0054f46:	0047      	lsls	r7, r0, #1
d0054f48:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054f4c:	f040 811a 	bne.w	d0055184 <entityRotation.part.0+0x2e8>
d0054f50:	eef5 8a40 	vcmp.f32	s17, #0.0
d0054f54:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054f58:	f040 8170 	bne.w	d005523c <entityRotation.part.0+0x3a0>
d0054f5c:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0054f60:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054f64:	d0e4      	beq.n	d0054f30 <entityRotation.part.0+0x94>
d0054f66:	443d      	add	r5, r7
d0054f68:	ab0a      	add	r3, sp, #40	; 0x28
d0054f6a:	eeb0 3a48 	vmov.f32	s6, s16
d0054f6e:	ed94 0a04 	vldr	s0, [r4, #16]
d0054f72:	eb06 1545 	add.w	r5, r6, r5, lsl #5
d0054f76:	edd4 0a05 	vldr	s1, [r4, #20]
d0054f7a:	ed94 1a06 	vldr	s2, [r4, #24]
d0054f7e:	3510      	adds	r5, #16
d0054f80:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d0054f84:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0054f88:	eddd 1a07 	vldr	s3, [sp, #28]
d0054f8c:	ed9d 2a08 	vldr	s4, [sp, #32]
d0054f90:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0054f94:	f7ff f86e 	bl	d0054074 <rotateAroundAxis>
d0054f98:	eef0 6a40 	vmov.f32	s13, s0
d0054f9c:	eeb0 7a60 	vmov.f32	s14, s1
d0054fa0:	ed94 0a07 	vldr	s0, [r4, #28]
d0054fa4:	eef0 7a41 	vmov.f32	s15, s2
d0054fa8:	edd4 0a08 	vldr	s1, [r4, #32]
d0054fac:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0054fb0:	eeb0 3a48 	vmov.f32	s6, s16
d0054fb4:	eddd 1a07 	vldr	s3, [sp, #28]
d0054fb8:	ed9d 2a08 	vldr	s4, [sp, #32]
d0054fbc:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0054fc0:	edc4 6a04 	vstr	s13, [r4, #16]
d0054fc4:	ed84 7a05 	vstr	s14, [r4, #20]
d0054fc8:	edc4 7a06 	vstr	s15, [r4, #24]
d0054fcc:	f7ff f852 	bl	d0054074 <rotateAroundAxis>
d0054fd0:	eef0 6a40 	vmov.f32	s13, s0
d0054fd4:	eeb0 7a60 	vmov.f32	s14, s1
d0054fd8:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0054fdc:	eef0 7a41 	vmov.f32	s15, s2
d0054fe0:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0054fe4:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0054fe8:	eeb0 3a48 	vmov.f32	s6, s16
d0054fec:	eddd 1a07 	vldr	s3, [sp, #28]
d0054ff0:	ed9d 2a08 	vldr	s4, [sp, #32]
d0054ff4:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0054ff8:	edc4 6a07 	vstr	s13, [r4, #28]
d0054ffc:	ed84 7a08 	vstr	s14, [r4, #32]
d0055000:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0055004:	f7ff f836 	bl	d0054074 <rotateAroundAxis>
d0055008:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d005500c:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0055010:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0055014:	e78c      	b.n	d0054f30 <entityRotation.part.0+0x94>
d0055016:	eeb0 1a42 	vmov.f32	s2, s4
d005501a:	eef0 0a61 	vmov.f32	s1, s3
d005501e:	eeb0 3a40 	vmov.f32	s6, s0
d0055022:	eeb0 0a61 	vmov.f32	s0, s3
d0055026:	eef0 2a61 	vmov.f32	s5, s3
d005502a:	f7ff f823 	bl	d0054074 <rotateAroundAxis>
d005502e:	eeb0 7a60 	vmov.f32	s14, s1
d0055032:	eef0 6a40 	vmov.f32	s13, s0
d0055036:	edd4 0a08 	vldr	s1, [r4, #32]
d005503a:	eef0 7a41 	vmov.f32	s15, s2
d005503e:	ed94 0a07 	vldr	s0, [r4, #28]
d0055042:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0055046:	eeb0 3a49 	vmov.f32	s6, s18
d005504a:	eddd 1a01 	vldr	s3, [sp, #4]
d005504e:	ed9d 2a02 	vldr	s4, [sp, #8]
d0055052:	eddd 2a03 	vldr	s5, [sp, #12]
d0055056:	edc4 6a04 	vstr	s13, [r4, #16]
d005505a:	ed84 7a05 	vstr	s14, [r4, #20]
d005505e:	edc4 7a06 	vstr	s15, [r4, #24]
d0055062:	f7ff f807 	bl	d0054074 <rotateAroundAxis>
d0055066:	eef0 6a40 	vmov.f32	s13, s0
d005506a:	eeb0 7a60 	vmov.f32	s14, s1
d005506e:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0055072:	eef0 7a41 	vmov.f32	s15, s2
d0055076:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d005507a:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d005507e:	eeb0 3a49 	vmov.f32	s6, s18
d0055082:	eddd 1a01 	vldr	s3, [sp, #4]
d0055086:	ed9d 2a02 	vldr	s4, [sp, #8]
d005508a:	eddd 2a03 	vldr	s5, [sp, #12]
d005508e:	edc4 6a07 	vstr	s13, [r4, #28]
d0055092:	ed84 7a08 	vstr	s14, [r4, #32]
d0055096:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d005509a:	f7fe ffeb 	bl	d0054074 <rotateAroundAxis>
d005509e:	eef5 8a40 	vcmp.f32	s17, #0.0
d00550a2:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d00550a6:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d00550aa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00550ae:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d00550b2:	f43f af37 	beq.w	d0054f24 <entityRotation.part.0+0x88>
d00550b6:	ed94 0a04 	vldr	s0, [r4, #16]
d00550ba:	eeb0 3a68 	vmov.f32	s6, s17
d00550be:	edd4 0a05 	vldr	s1, [r4, #20]
d00550c2:	ed94 1a06 	vldr	s2, [r4, #24]
d00550c6:	eddd 1a04 	vldr	s3, [sp, #16]
d00550ca:	ed9d 2a05 	vldr	s4, [sp, #20]
d00550ce:	eddd 2a06 	vldr	s5, [sp, #24]
d00550d2:	f7fe ffcf 	bl	d0054074 <rotateAroundAxis>
d00550d6:	eef0 6a40 	vmov.f32	s13, s0
d00550da:	eeb0 7a60 	vmov.f32	s14, s1
d00550de:	ed94 0a07 	vldr	s0, [r4, #28]
d00550e2:	eef0 7a41 	vmov.f32	s15, s2
d00550e6:	edd4 0a08 	vldr	s1, [r4, #32]
d00550ea:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00550ee:	eeb0 3a68 	vmov.f32	s6, s17
d00550f2:	eddd 1a04 	vldr	s3, [sp, #16]
d00550f6:	ed9d 2a05 	vldr	s4, [sp, #20]
d00550fa:	eddd 2a06 	vldr	s5, [sp, #24]
d00550fe:	edc4 6a04 	vstr	s13, [r4, #16]
d0055102:	ed84 7a05 	vstr	s14, [r4, #20]
d0055106:	edc4 7a06 	vstr	s15, [r4, #24]
d005510a:	f7fe ffb3 	bl	d0054074 <rotateAroundAxis>
d005510e:	eef0 6a40 	vmov.f32	s13, s0
d0055112:	eeb0 7a60 	vmov.f32	s14, s1
d0055116:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d005511a:	eef0 7a41 	vmov.f32	s15, s2
d005511e:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0055122:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0055126:	eeb0 3a68 	vmov.f32	s6, s17
d005512a:	eddd 1a04 	vldr	s3, [sp, #16]
d005512e:	ed9d 2a05 	vldr	s4, [sp, #20]
d0055132:	eddd 2a06 	vldr	s5, [sp, #24]
d0055136:	edc4 6a07 	vstr	s13, [r4, #28]
d005513a:	ed84 7a08 	vstr	s14, [r4, #32]
d005513e:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0055142:	f7fe ff97 	bl	d0054074 <rotateAroundAxis>
d0055146:	eeb5 8a40 	vcmp.f32	s16, #0.0
d005514a:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d005514e:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0055152:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055156:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d005515a:	f43f aee9 	beq.w	d0054f30 <entityRotation.part.0+0x94>
d005515e:	eeb0 3a48 	vmov.f32	s6, s16
d0055162:	eddd 1a07 	vldr	s3, [sp, #28]
d0055166:	ed9d 2a08 	vldr	s4, [sp, #32]
d005516a:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d005516e:	ed94 0a04 	vldr	s0, [r4, #16]
d0055172:	edd4 0a05 	vldr	s1, [r4, #20]
d0055176:	ed94 1a06 	vldr	s2, [r4, #24]
d005517a:	e70b      	b.n	d0054f94 <entityRotation.part.0+0xf8>
d005517c:	d00f5ac0 	.word	0xd00f5ac0
d0055180:	00000000 	.word	0x00000000
d0055184:	f104 0328 	add.w	r3, r4, #40	; 0x28
d0055188:	f10d 0c04 	add.w	ip, sp, #4
d005518c:	eeb0 3a40 	vmov.f32	s6, s0
d0055190:	edd4 0a05 	vldr	s1, [r4, #20]
d0055194:	ed94 0a04 	vldr	s0, [r4, #16]
d0055198:	ed94 1a06 	vldr	s2, [r4, #24]
d005519c:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d00551a0:	e88c 0007 	stmia.w	ip, {r0, r1, r2}
d00551a4:	eddd 1a01 	vldr	s3, [sp, #4]
d00551a8:	ed9d 2a02 	vldr	s4, [sp, #8]
d00551ac:	eddd 2a03 	vldr	s5, [sp, #12]
d00551b0:	f7fe ff60 	bl	d0054074 <rotateAroundAxis>
d00551b4:	eef0 6a40 	vmov.f32	s13, s0
d00551b8:	eeb0 7a60 	vmov.f32	s14, s1
d00551bc:	ed94 0a07 	vldr	s0, [r4, #28]
d00551c0:	eef0 7a41 	vmov.f32	s15, s2
d00551c4:	edd4 0a08 	vldr	s1, [r4, #32]
d00551c8:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00551cc:	eeb0 3a49 	vmov.f32	s6, s18
d00551d0:	eddd 1a01 	vldr	s3, [sp, #4]
d00551d4:	ed9d 2a02 	vldr	s4, [sp, #8]
d00551d8:	eddd 2a03 	vldr	s5, [sp, #12]
d00551dc:	edc4 6a04 	vstr	s13, [r4, #16]
d00551e0:	ed84 7a05 	vstr	s14, [r4, #20]
d00551e4:	edc4 7a06 	vstr	s15, [r4, #24]
d00551e8:	f7fe ff44 	bl	d0054074 <rotateAroundAxis>
d00551ec:	eef0 6a40 	vmov.f32	s13, s0
d00551f0:	eeb0 7a60 	vmov.f32	s14, s1
d00551f4:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00551f8:	eef0 7a41 	vmov.f32	s15, s2
d00551fc:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0055200:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0055204:	eeb0 3a49 	vmov.f32	s6, s18
d0055208:	eddd 1a01 	vldr	s3, [sp, #4]
d005520c:	ed9d 2a02 	vldr	s4, [sp, #8]
d0055210:	eddd 2a03 	vldr	s5, [sp, #12]
d0055214:	edc4 6a07 	vstr	s13, [r4, #28]
d0055218:	ed84 7a08 	vstr	s14, [r4, #32]
d005521c:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0055220:	f7fe ff28 	bl	d0054074 <rotateAroundAxis>
d0055224:	eef5 8a40 	vcmp.f32	s17, #0.0
d0055228:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d005522c:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0055230:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055234:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0055238:	f43f ae90 	beq.w	d0054f5c <entityRotation.part.0+0xc0>
d005523c:	197b      	adds	r3, r7, r5
d005523e:	f10d 0c10 	add.w	ip, sp, #16
d0055242:	ed94 0a04 	vldr	s0, [r4, #16]
d0055246:	eeb0 3a68 	vmov.f32	s6, s17
d005524a:	eb06 1343 	add.w	r3, r6, r3, lsl #5
d005524e:	edd4 0a05 	vldr	s1, [r4, #20]
d0055252:	ed94 1a06 	vldr	s2, [r4, #24]
d0055256:	331c      	adds	r3, #28
d0055258:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d005525c:	e88c 0007 	stmia.w	ip, {r0, r1, r2}
d0055260:	eddd 1a04 	vldr	s3, [sp, #16]
d0055264:	ed9d 2a05 	vldr	s4, [sp, #20]
d0055268:	eddd 2a06 	vldr	s5, [sp, #24]
d005526c:	f7fe ff02 	bl	d0054074 <rotateAroundAxis>
d0055270:	eef0 6a40 	vmov.f32	s13, s0
d0055274:	eeb0 7a60 	vmov.f32	s14, s1
d0055278:	ed94 0a07 	vldr	s0, [r4, #28]
d005527c:	eef0 7a41 	vmov.f32	s15, s2
d0055280:	edd4 0a08 	vldr	s1, [r4, #32]
d0055284:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0055288:	eeb0 3a68 	vmov.f32	s6, s17
d005528c:	eddd 1a04 	vldr	s3, [sp, #16]
d0055290:	ed9d 2a05 	vldr	s4, [sp, #20]
d0055294:	eddd 2a06 	vldr	s5, [sp, #24]
d0055298:	edc4 6a04 	vstr	s13, [r4, #16]
d005529c:	ed84 7a05 	vstr	s14, [r4, #20]
d00552a0:	edc4 7a06 	vstr	s15, [r4, #24]
d00552a4:	f7fe fee6 	bl	d0054074 <rotateAroundAxis>
d00552a8:	eef0 6a40 	vmov.f32	s13, s0
d00552ac:	eeb0 7a60 	vmov.f32	s14, s1
d00552b0:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00552b4:	eef0 7a41 	vmov.f32	s15, s2
d00552b8:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00552bc:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00552c0:	eeb0 3a68 	vmov.f32	s6, s17
d00552c4:	eddd 1a04 	vldr	s3, [sp, #16]
d00552c8:	ed9d 2a05 	vldr	s4, [sp, #20]
d00552cc:	eddd 2a06 	vldr	s5, [sp, #24]
d00552d0:	edc4 6a07 	vstr	s13, [r4, #28]
d00552d4:	ed84 7a08 	vstr	s14, [r4, #32]
d00552d8:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d00552dc:	f7fe feca 	bl	d0054074 <rotateAroundAxis>
d00552e0:	eeb5 8a40 	vcmp.f32	s16, #0.0
d00552e4:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d00552e8:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d00552ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00552f0:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d00552f4:	f43f ae1c 	beq.w	d0054f30 <entityRotation.part.0+0x94>
d00552f8:	e635      	b.n	d0054f66 <entityRotation.part.0+0xca>
d00552fa:	bf00      	nop

d00552fc <meshComputeBoundsRadius>:
d00552fc:	b1f0      	cbz	r0, d005533c <meshComputeBoundsRadius+0x40>
d00552fe:	6803      	ldr	r3, [r0, #0]
d0055300:	b1e3      	cbz	r3, d005533c <meshComputeBoundsRadius+0x40>
d0055302:	6842      	ldr	r2, [r0, #4]
d0055304:	2a00      	cmp	r2, #0
d0055306:	dd19      	ble.n	d005533c <meshComputeBoundsRadius+0x40>
d0055308:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d005530c:	ed9f 6a0d 	vldr	s12, [pc, #52]	; d0055344 <meshComputeBoundsRadius+0x48>
d0055310:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d0055314:	edd3 7a01 	vldr	s15, [r3, #4]
d0055318:	330c      	adds	r3, #12
d005531a:	ed53 6a03 	vldr	s13, [r3, #-12]
d005531e:	ee67 7aa7 	vmul.f32	s15, s15, s15
d0055322:	ed13 7a01 	vldr	s14, [r3, #-4]
d0055326:	429a      	cmp	r2, r3
d0055328:	eee6 7aa6 	vfma.f32	s15, s13, s13
d005532c:	eee7 7a07 	vfma.f32	s15, s14, s14
d0055330:	fe86 6a27 	vmaxnm.f32	s12, s12, s15
d0055334:	d1ee      	bne.n	d0055314 <meshComputeBoundsRadius+0x18>
d0055336:	eeb1 0ac6 	vsqrt.f32	s0, s12
d005533a:	4770      	bx	lr
d005533c:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0055344 <meshComputeBoundsRadius+0x48>
d0055340:	4770      	bx	lr
d0055342:	bf00      	nop
d0055344:	00000000 	.word	0x00000000

d0055348 <entityWorldSpawn>:
d0055348:	b4f0      	push	{r4, r5, r6, r7}
d005534a:	4d20      	ldr	r5, [pc, #128]	; (d00553cc <entityWorldSpawn+0x84>)
d005534c:	b084      	sub	sp, #16
d005534e:	2300      	movs	r3, #0
d0055350:	462a      	mov	r2, r5
d0055352:	ed8d 0a01 	vstr	s0, [sp, #4]
d0055356:	edcd 0a02 	vstr	s1, [sp, #8]
d005535a:	ed8d 1a03 	vstr	s2, [sp, #12]
d005535e:	e003      	b.n	d0055368 <entityWorldSpawn+0x20>
d0055360:	3301      	adds	r3, #1
d0055362:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d0055366:	d02b      	beq.n	d00553c0 <entityWorldSpawn+0x78>
d0055368:	f892 4034 	ldrb.w	r4, [r2, #52]	; 0x34
d005536c:	3260      	adds	r2, #96	; 0x60
d005536e:	2c00      	cmp	r4, #0
d0055370:	d1f6      	bne.n	d0055360 <entityWorldSpawn+0x18>
d0055372:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d0055376:	4f16      	ldr	r7, [pc, #88]	; (d00553d0 <entityWorldSpawn+0x88>)
d0055378:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d005537c:	2600      	movs	r6, #0
d005537e:	eb05 1542 	add.w	r5, r5, r2, lsl #5
d0055382:	f240 1c01 	movw	ip, #257	; 0x101
d0055386:	eb07 1742 	add.w	r7, r7, r2, lsl #5
d005538a:	aa04      	add	r2, sp, #16
d005538c:	60e8      	str	r0, [r5, #12]
d005538e:	61e9      	str	r1, [r5, #28]
d0055390:	62e9      	str	r1, [r5, #44]	; 0x2c
d0055392:	61a9      	str	r1, [r5, #24]
d0055394:	622e      	str	r6, [r5, #32]
d0055396:	626e      	str	r6, [r5, #36]	; 0x24
d0055398:	62ae      	str	r6, [r5, #40]	; 0x28
d005539a:	632e      	str	r6, [r5, #48]	; 0x30
d005539c:	612e      	str	r6, [r5, #16]
d005539e:	616e      	str	r6, [r5, #20]
d00553a0:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d00553a4:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d00553a8:	4618      	mov	r0, r3
d00553aa:	f8a7 c014 	strh.w	ip, [r7, #20]
d00553ae:	f885 4036 	strb.w	r4, [r5, #54]	; 0x36
d00553b2:	63ee      	str	r6, [r5, #60]	; 0x3c
d00553b4:	642e      	str	r6, [r5, #64]	; 0x40
d00553b6:	646e      	str	r6, [r5, #68]	; 0x44
d00553b8:	63ae      	str	r6, [r5, #56]	; 0x38
d00553ba:	b004      	add	sp, #16
d00553bc:	bcf0      	pop	{r4, r5, r6, r7}
d00553be:	4770      	bx	lr
d00553c0:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d00553c4:	4618      	mov	r0, r3
d00553c6:	b004      	add	sp, #16
d00553c8:	bcf0      	pop	{r4, r5, r6, r7}
d00553ca:	4770      	bx	lr
d00553cc:	d00f5ac0 	.word	0xd00f5ac0
d00553d0:	d00f5ae0 	.word	0xd00f5ae0

d00553d4 <entitySetPosition>:
d00553d4:	b084      	sub	sp, #16
d00553d6:	28ff      	cmp	r0, #255	; 0xff
d00553d8:	ed8d 0a01 	vstr	s0, [sp, #4]
d00553dc:	edcd 0a02 	vstr	s1, [sp, #8]
d00553e0:	ed8d 1a03 	vstr	s2, [sp, #12]
d00553e4:	d80e      	bhi.n	d0055404 <entitySetPosition+0x30>
d00553e6:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d00553ea:	4b07      	ldr	r3, [pc, #28]	; (d0055408 <entitySetPosition+0x34>)
d00553ec:	eb03 1340 	add.w	r3, r3, r0, lsl #5
d00553f0:	f893 2034 	ldrb.w	r2, [r3, #52]	; 0x34
d00553f4:	b132      	cbz	r2, d0055404 <entitySetPosition+0x30>
d00553f6:	68da      	ldr	r2, [r3, #12]
d00553f8:	b122      	cbz	r2, d0055404 <entitySetPosition+0x30>
d00553fa:	aa04      	add	r2, sp, #16
d00553fc:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0055400:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0055404:	b004      	add	sp, #16
d0055406:	4770      	bx	lr
d0055408:	d00f5ac0 	.word	0xd00f5ac0

d005540c <entityGetPosition>:
d005540c:	28ff      	cmp	r0, #255	; 0xff
d005540e:	b088      	sub	sp, #32
d0055410:	d80e      	bhi.n	d0055430 <entityGetPosition+0x24>
d0055412:	4b0d      	ldr	r3, [pc, #52]	; (d0055448 <entityGetPosition+0x3c>)
d0055414:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0055418:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d005541c:	f890 3034 	ldrb.w	r3, [r0, #52]	; 0x34
d0055420:	b133      	cbz	r3, d0055430 <entityGetPosition+0x24>
d0055422:	68c3      	ldr	r3, [r0, #12]
d0055424:	b123      	cbz	r3, d0055430 <entityGetPosition+0x24>
d0055426:	ab08      	add	r3, sp, #32
d0055428:	c807      	ldmia	r0, {r0, r1, r2}
d005542a:	e903 0007 	stmdb	r3, {r0, r1, r2}
d005542e:	e003      	b.n	d0055438 <entityGetPosition+0x2c>
d0055430:	2300      	movs	r3, #0
d0055432:	9305      	str	r3, [sp, #20]
d0055434:	9306      	str	r3, [sp, #24]
d0055436:	9307      	str	r3, [sp, #28]
d0055438:	ed9d 0a05 	vldr	s0, [sp, #20]
d005543c:	eddd 0a06 	vldr	s1, [sp, #24]
d0055440:	ed9d 1a07 	vldr	s2, [sp, #28]
d0055444:	b008      	add	sp, #32
d0055446:	4770      	bx	lr
d0055448:	d00f5ac0 	.word	0xd00f5ac0

d005544c <entityMoveForward>:
d005544c:	28ff      	cmp	r0, #255	; 0xff
d005544e:	d82b      	bhi.n	d00554a8 <entityMoveForward+0x5c>
d0055450:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0055454:	b510      	push	{r4, lr}
d0055456:	4c15      	ldr	r4, [pc, #84]	; (d00554ac <entityMoveForward+0x60>)
d0055458:	b084      	sub	sp, #16
d005545a:	eb04 1440 	add.w	r4, r4, r0, lsl #5
d005545e:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0055462:	b1fb      	cbz	r3, d00554a4 <entityMoveForward+0x58>
d0055464:	68e3      	ldr	r3, [r4, #12]
d0055466:	b1eb      	cbz	r3, d00554a4 <entityMoveForward+0x58>
d0055468:	eef0 1a40 	vmov.f32	s3, s0
d005546c:	edd4 0a05 	vldr	s1, [r4, #20]
d0055470:	ed94 0a04 	vldr	s0, [r4, #16]
d0055474:	ed94 1a06 	vldr	s2, [r4, #24]
d0055478:	f7fe fd80 	bl	d0053f7c <vec3Scale>
d005547c:	eef0 1a40 	vmov.f32	s3, s0
d0055480:	eeb0 2a60 	vmov.f32	s4, s1
d0055484:	ed94 0a00 	vldr	s0, [r4]
d0055488:	eef0 2a41 	vmov.f32	s5, s2
d005548c:	edd4 0a01 	vldr	s1, [r4, #4]
d0055490:	ed94 1a02 	vldr	s2, [r4, #8]
d0055494:	f7fe fd68 	bl	d0053f68 <vec3Add>
d0055498:	ed84 0a00 	vstr	s0, [r4]
d005549c:	edc4 0a01 	vstr	s1, [r4, #4]
d00554a0:	ed84 1a02 	vstr	s2, [r4, #8]
d00554a4:	b004      	add	sp, #16
d00554a6:	bd10      	pop	{r4, pc}
d00554a8:	4770      	bx	lr
d00554aa:	bf00      	nop
d00554ac:	d00f5ac0 	.word	0xd00f5ac0

d00554b0 <entityTurnLocal>:
d00554b0:	28ff      	cmp	r0, #255	; 0xff
d00554b2:	d82c      	bhi.n	d005550e <entityTurnLocal+0x5e>
d00554b4:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d00554b8:	b510      	push	{r4, lr}
d00554ba:	4c65      	ldr	r4, [pc, #404]	; (d0055650 <entityTurnLocal+0x1a0>)
d00554bc:	eb04 1440 	add.w	r4, r4, r0, lsl #5
d00554c0:	ed2d 8b04 	vpush	{d8-d9}
d00554c4:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d00554c8:	b1f3      	cbz	r3, d0055508 <entityTurnLocal+0x58>
d00554ca:	68e3      	ldr	r3, [r4, #12]
d00554cc:	b1e3      	cbz	r3, d0055508 <entityTurnLocal+0x58>
d00554ce:	eeb5 0a40 	vcmp.f32	s0, #0.0
d00554d2:	eeb0 9a40 	vmov.f32	s18, s0
d00554d6:	eef0 8a60 	vmov.f32	s17, s1
d00554da:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00554de:	eeb0 8a41 	vmov.f32	s16, s2
d00554e2:	f040 8081 	bne.w	d00555e8 <entityTurnLocal+0x138>
d00554e6:	eef5 8a40 	vcmp.f32	s17, #0.0
d00554ea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00554ee:	d148      	bne.n	d0055582 <entityTurnLocal+0xd2>
d00554f0:	eeb5 8a40 	vcmp.f32	s16, #0.0
d00554f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00554f8:	d10a      	bne.n	d0055510 <entityTurnLocal+0x60>
d00554fa:	4620      	mov	r0, r4
d00554fc:	ecbd 8b04 	vpop	{d8-d9}
d0055500:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0055504:	f7ff bc74 	b.w	d0054df0 <normalizeEntity.part.0>
d0055508:	ecbd 8b04 	vpop	{d8-d9}
d005550c:	bd10      	pop	{r4, pc}
d005550e:	4770      	bx	lr
d0055510:	ed94 0a07 	vldr	s0, [r4, #28]
d0055514:	eeb0 3a48 	vmov.f32	s6, s16
d0055518:	edd4 0a08 	vldr	s1, [r4, #32]
d005551c:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0055520:	edd4 1a04 	vldr	s3, [r4, #16]
d0055524:	ed94 2a05 	vldr	s4, [r4, #20]
d0055528:	edd4 2a06 	vldr	s5, [r4, #24]
d005552c:	f7fe fda2 	bl	d0054074 <rotateAroundAxis>
d0055530:	eef0 6a40 	vmov.f32	s13, s0
d0055534:	eeb0 7a60 	vmov.f32	s14, s1
d0055538:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d005553c:	eef0 7a41 	vmov.f32	s15, s2
d0055540:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0055544:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0055548:	eeb0 3a48 	vmov.f32	s6, s16
d005554c:	edd4 1a04 	vldr	s3, [r4, #16]
d0055550:	ed94 2a05 	vldr	s4, [r4, #20]
d0055554:	edd4 2a06 	vldr	s5, [r4, #24]
d0055558:	edc4 6a07 	vstr	s13, [r4, #28]
d005555c:	ed84 7a08 	vstr	s14, [r4, #32]
d0055560:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0055564:	f7fe fd86 	bl	d0054074 <rotateAroundAxis>
d0055568:	4620      	mov	r0, r4
d005556a:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d005556e:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0055572:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0055576:	ecbd 8b04 	vpop	{d8-d9}
d005557a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d005557e:	f7ff bc37 	b.w	d0054df0 <normalizeEntity.part.0>
d0055582:	ed94 0a04 	vldr	s0, [r4, #16]
d0055586:	eeb0 3a68 	vmov.f32	s6, s17
d005558a:	edd4 0a05 	vldr	s1, [r4, #20]
d005558e:	ed94 1a06 	vldr	s2, [r4, #24]
d0055592:	edd4 1a07 	vldr	s3, [r4, #28]
d0055596:	ed94 2a08 	vldr	s4, [r4, #32]
d005559a:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d005559e:	f7fe fd69 	bl	d0054074 <rotateAroundAxis>
d00555a2:	eef0 6a40 	vmov.f32	s13, s0
d00555a6:	eeb0 7a60 	vmov.f32	s14, s1
d00555aa:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00555ae:	eef0 7a41 	vmov.f32	s15, s2
d00555b2:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00555b6:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00555ba:	eeb0 3a68 	vmov.f32	s6, s17
d00555be:	edd4 1a07 	vldr	s3, [r4, #28]
d00555c2:	ed94 2a08 	vldr	s4, [r4, #32]
d00555c6:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d00555ca:	edc4 6a04 	vstr	s13, [r4, #16]
d00555ce:	ed84 7a05 	vstr	s14, [r4, #20]
d00555d2:	edc4 7a06 	vstr	s15, [r4, #24]
d00555d6:	f7fe fd4d 	bl	d0054074 <rotateAroundAxis>
d00555da:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d00555de:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d00555e2:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d00555e6:	e783      	b.n	d00554f0 <entityTurnLocal+0x40>
d00555e8:	eeb0 3a40 	vmov.f32	s6, s0
d00555ec:	edd4 0a05 	vldr	s1, [r4, #20]
d00555f0:	ed94 0a04 	vldr	s0, [r4, #16]
d00555f4:	ed94 1a06 	vldr	s2, [r4, #24]
d00555f8:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d00555fc:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d0055600:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d0055604:	f7fe fd36 	bl	d0054074 <rotateAroundAxis>
d0055608:	eef0 6a40 	vmov.f32	s13, s0
d005560c:	eeb0 7a60 	vmov.f32	s14, s1
d0055610:	ed94 0a07 	vldr	s0, [r4, #28]
d0055614:	eef0 7a41 	vmov.f32	s15, s2
d0055618:	edd4 0a08 	vldr	s1, [r4, #32]
d005561c:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0055620:	eeb0 3a49 	vmov.f32	s6, s18
d0055624:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d0055628:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d005562c:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d0055630:	edc4 6a04 	vstr	s13, [r4, #16]
d0055634:	ed84 7a05 	vstr	s14, [r4, #20]
d0055638:	edc4 7a06 	vstr	s15, [r4, #24]
d005563c:	f7fe fd1a 	bl	d0054074 <rotateAroundAxis>
d0055640:	ed84 0a07 	vstr	s0, [r4, #28]
d0055644:	edc4 0a08 	vstr	s1, [r4, #32]
d0055648:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d005564c:	e74b      	b.n	d00554e6 <entityTurnLocal+0x36>
d005564e:	bf00      	nop
d0055650:	d00f5ac0 	.word	0xd00f5ac0

d0055654 <entityRotation>:
d0055654:	28ff      	cmp	r0, #255	; 0xff
d0055656:	d80b      	bhi.n	d0055670 <entityRotation+0x1c>
d0055658:	4a06      	ldr	r2, [pc, #24]	; (d0055674 <entityRotation+0x20>)
d005565a:	eb00 0340 	add.w	r3, r0, r0, lsl #1
d005565e:	eb02 1343 	add.w	r3, r2, r3, lsl #5
d0055662:	f893 2034 	ldrb.w	r2, [r3, #52]	; 0x34
d0055666:	b11a      	cbz	r2, d0055670 <entityRotation+0x1c>
d0055668:	68db      	ldr	r3, [r3, #12]
d005566a:	b10b      	cbz	r3, d0055670 <entityRotation+0x1c>
d005566c:	f7ff bc16 	b.w	d0054e9c <entityRotation.part.0>
d0055670:	4770      	bx	lr
d0055672:	bf00      	nop
d0055674:	d00f5ac0 	.word	0xd00f5ac0

d0055678 <createBox>:
d0055678:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d005567c:	ed2d 8b04 	vpush	{d8-d9}
d0055680:	b0e1      	sub	sp, #388	; 0x184
d0055682:	f04f 0824 	mov.w	r8, #36	; 0x24
d0055686:	4606      	mov	r6, r0
d0055688:	2100      	movs	r1, #0
d005568a:	f20d 1547 	addw	r5, sp, #327	; 0x147
d005568e:	4642      	mov	r2, r8
d0055690:	eeb0 8a41 	vmov.f32	s16, s2
d0055694:	9601      	str	r6, [sp, #4]
d0055696:	f025 051f 	bic.w	r5, r5, #31
d005569a:	eeb0 9a40 	vmov.f32	s18, s0
d005569e:	eef0 8a60 	vmov.f32	s17, s1
d00556a2:	f04f 090c 	mov.w	r9, #12
d00556a6:	f105 001c 	add.w	r0, r5, #28
d00556aa:	f04f 0ac0 	mov.w	sl, #192	; 0xc0
d00556ae:	f003 fdbf 	bl	d0059230 <memset>
d00556b2:	2308      	movs	r3, #8
d00556b4:	2060      	movs	r0, #96	; 0x60
d00556b6:	f04f 0b04 	mov.w	fp, #4
d00556ba:	606b      	str	r3, [r5, #4]
d00556bc:	f003 fd8c 	bl	d00591d8 <malloc>
d00556c0:	eeb6 1a00 	vmov.f32	s2, #96	; 0x3f000000  0.5
d00556c4:	4604      	mov	r4, r0
d00556c6:	2060      	movs	r0, #96	; 0x60
d00556c8:	f8c5 900c 	str.w	r9, [r5, #12]
d00556cc:	602c      	str	r4, [r5, #0]
d00556ce:	2604      	movs	r6, #4
d00556d0:	ee29 0a01 	vmul.f32	s0, s18, s2
d00556d4:	ee68 0a81 	vmul.f32	s1, s17, s2
d00556d8:	ee28 1a01 	vmul.f32	s2, s16, s2
d00556dc:	eef1 6a40 	vneg.f32	s13, s0
d00556e0:	ed84 0a03 	vstr	s0, [r4, #12]
d00556e4:	eeb1 7a60 	vneg.f32	s14, s1
d00556e8:	ed84 0a06 	vstr	s0, [r4, #24]
d00556ec:	eef1 7a41 	vneg.f32	s15, s2
d00556f0:	ed84 1a08 	vstr	s2, [r4, #32]
d00556f4:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d00556f8:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d00556fc:	ed84 0a0f 	vstr	s0, [r4, #60]	; 0x3c
d0055700:	edc4 0a10 	vstr	s1, [r4, #64]	; 0x40
d0055704:	ed84 0a12 	vstr	s0, [r4, #72]	; 0x48
d0055708:	edc4 0a13 	vstr	s1, [r4, #76]	; 0x4c
d005570c:	ed84 1a14 	vstr	s2, [r4, #80]	; 0x50
d0055710:	edc4 0a16 	vstr	s1, [r4, #88]	; 0x58
d0055714:	ed84 1a17 	vstr	s2, [r4, #92]	; 0x5c
d0055718:	edc4 6a00 	vstr	s13, [r4]
d005571c:	edc4 6a09 	vstr	s13, [r4, #36]	; 0x24
d0055720:	edc4 6a0c 	vstr	s13, [r4, #48]	; 0x30
d0055724:	edc4 6a15 	vstr	s13, [r4, #84]	; 0x54
d0055728:	ed84 7a01 	vstr	s14, [r4, #4]
d005572c:	ed84 7a04 	vstr	s14, [r4, #16]
d0055730:	ed84 7a07 	vstr	s14, [r4, #28]
d0055734:	ed84 7a0a 	vstr	s14, [r4, #40]	; 0x28
d0055738:	edc4 7a02 	vstr	s15, [r4, #8]
d005573c:	edc4 7a05 	vstr	s15, [r4, #20]
d0055740:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d0055744:	edc4 7a11 	vstr	s15, [r4, #68]	; 0x44
d0055748:	f003 fd46 	bl	d00591d8 <malloc>
d005574c:	4607      	mov	r7, r0
d005574e:	2260      	movs	r2, #96	; 0x60
d0055750:	a802      	add	r0, sp, #8
d0055752:	4987      	ldr	r1, [pc, #540]	; (d0055970 <createBox+0x2f8>)
d0055754:	60af      	str	r7, [r5, #8]
d0055756:	f003 fd5d 	bl	d0059214 <memcpy>
d005575a:	a902      	add	r1, sp, #8
d005575c:	2260      	movs	r2, #96	; 0x60
d005575e:	4638      	mov	r0, r7
d0055760:	f003 fd58 	bl	d0059214 <memcpy>
d0055764:	4650      	mov	r0, sl
d0055766:	f8c5 9014 	str.w	r9, [r5, #20]
d005576a:	f003 fd35 	bl	d00591d8 <malloc>
d005576e:	4607      	mov	r7, r0
d0055770:	4652      	mov	r2, sl
d0055772:	a81a      	add	r0, sp, #104	; 0x68
d0055774:	2100      	movs	r1, #0
d0055776:	612f      	str	r7, [r5, #16]
d0055778:	f003 fd5a 	bl	d0059230 <memset>
d005577c:	f04f 0c02 	mov.w	ip, #2
d0055780:	4638      	mov	r0, r7
d0055782:	2705      	movs	r7, #5
d0055784:	4652      	mov	r2, sl
d0055786:	f04f 0903 	mov.w	r9, #3
d005578a:	f04f 0a06 	mov.w	sl, #6
d005578e:	f88d 80b4 	strb.w	r8, [sp, #180]	; 0xb4
d0055792:	f04f 0e01 	mov.w	lr, #1
d0055796:	f88d 80c4 	strb.w	r8, [sp, #196]	; 0xc4
d005579a:	f04f 0804 	mov.w	r8, #4
d005579e:	f8cd c070 	str.w	ip, [sp, #112]	; 0x70
d00557a2:	2307      	movs	r3, #7
d00557a4:	f8cd c07c 	str.w	ip, [sp, #124]	; 0x7c
d00557a8:	2122      	movs	r1, #34	; 0x22
d00557aa:	f8cd c0e0 	str.w	ip, [sp, #224]	; 0xe0
d00557ae:	f04f 0c06 	mov.w	ip, #6
d00557b2:	9724      	str	r7, [sp, #144]	; 0x90
d00557b4:	972c      	str	r7, [sp, #176]	; 0xb0
d00557b6:	972f      	str	r7, [sp, #188]	; 0xbc
d00557b8:	2707      	movs	r7, #7
d00557ba:	f8cd 9080 	str.w	r9, [sp, #128]	; 0x80
d00557be:	f8cd 9100 	str.w	r9, [sp, #256]	; 0x100
d00557c2:	f04f 0905 	mov.w	r9, #5
d00557c6:	f8cd a0a0 	str.w	sl, [sp, #160]	; 0xa0
d00557ca:	f8cd a0d0 	str.w	sl, [sp, #208]	; 0xd0
d00557ce:	f04f 0a01 	mov.w	sl, #1
d00557d2:	f8cd 80ac 	str.w	r8, [sp, #172]	; 0xac
d00557d6:	f8cd 8110 	str.w	r8, [sp, #272]	; 0x110
d00557da:	f04f 0801 	mov.w	r8, #1
d00557de:	933c      	str	r3, [sp, #240]	; 0xf0
d00557e0:	2323      	movs	r3, #35	; 0x23
d00557e2:	f8cd e06c 	str.w	lr, [sp, #108]	; 0x6c
d00557e6:	f8cd e0c0 	str.w	lr, [sp, #192]	; 0xc0
d00557ea:	f04f 0e25 	mov.w	lr, #37	; 0x25
d00557ee:	f88d 1074 	strb.w	r1, [sp, #116]	; 0x74
d00557f2:	f88d 1084 	strb.w	r1, [sp, #132]	; 0x84
d00557f6:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
d00557fa:	f88d 1104 	strb.w	r1, [sp, #260]	; 0x104
d00557fe:	a91a      	add	r1, sp, #104	; 0x68
d0055800:	f88d 3094 	strb.w	r3, [sp, #148]	; 0x94
d0055804:	f88d 30a4 	strb.w	r3, [sp, #164]	; 0xa4
d0055808:	f88d e0d4 	strb.w	lr, [sp, #212]	; 0xd4
d005580c:	f88d e0e4 	strb.w	lr, [sp, #228]	; 0xe4
d0055810:	e9cd bc22 	strd	fp, ip, [sp, #136]	; 0x88
d0055814:	e9cd 6726 	strd	r6, r7, [sp, #152]	; 0x98
d0055818:	f04f 0b06 	mov.w	fp, #6
d005581c:	2602      	movs	r6, #2
d005581e:	2706      	movs	r7, #6
d0055820:	e9cd 8932 	strd	r8, r9, [sp, #200]	; 0xc8
d0055824:	e9cd ab36 	strd	sl, fp, [sp, #216]	; 0xd8
d0055828:	e9cd 673a 	strd	r6, r7, [sp, #232]	; 0xe8
d005582c:	f04f 0802 	mov.w	r8, #2
d0055830:	f04f 0907 	mov.w	r9, #7
d0055834:	f04f 0a03 	mov.w	sl, #3
d0055838:	f04f 0b07 	mov.w	fp, #7
d005583c:	2603      	movs	r6, #3
d005583e:	2704      	movs	r7, #4
d0055840:	e9cd 893e 	strd	r8, r9, [sp, #248]	; 0xf8
d0055844:	e9cd ab42 	strd	sl, fp, [sp, #264]	; 0x108
d0055848:	f88d 3114 	strb.w	r3, [sp, #276]	; 0x114
d005584c:	f88d 3124 	strb.w	r3, [sp, #292]	; 0x124
d0055850:	e9cd 6746 	strd	r6, r7, [sp, #280]	; 0x118
d0055854:	f003 fcde 	bl	d0059214 <memcpy>
d0055858:	edd4 7a01 	vldr	s15, [r4, #4]
d005585c:	ed94 6a04 	vldr	s12, [r4, #16]
d0055860:	4628      	mov	r0, r5
d0055862:	edd4 5a0a 	vldr	s11, [r4, #40]	; 0x28
d0055866:	ee67 6aa7 	vmul.f32	s13, s15, s15
d005586a:	ed94 7a07 	vldr	s14, [r4, #28]
d005586e:	ee66 7a06 	vmul.f32	s15, s12, s12
d0055872:	ed94 6a0d 	vldr	s12, [r4, #52]	; 0x34
d0055876:	ee25 4aa5 	vmul.f32	s8, s11, s11
d005587a:	ed94 3a00 	vldr	s6, [r4]
d005587e:	ee27 7a07 	vmul.f32	s14, s14, s14
d0055882:	edd4 3a03 	vldr	s7, [r4, #12]
d0055886:	ee66 4a06 	vmul.f32	s9, s12, s12
d005588a:	ed94 5a10 	vldr	s10, [r4, #64]	; 0x40
d005588e:	eee3 6a03 	vfma.f32	s13, s6, s6
d0055892:	edd4 5a13 	vldr	s11, [r4, #76]	; 0x4c
d0055896:	eee3 7aa3 	vfma.f32	s15, s7, s7
d005589a:	ed94 6a16 	vldr	s12, [r4, #88]	; 0x58
d005589e:	ee25 5a05 	vmul.f32	s10, s10, s10
d00558a2:	edd4 2a06 	vldr	s5, [r4, #24]
d00558a6:	ee65 5aa5 	vmul.f32	s11, s11, s11
d00558aa:	ed94 3a09 	vldr	s6, [r4, #36]	; 0x24
d00558ae:	ee26 6a06 	vmul.f32	s12, s12, s12
d00558b2:	edd4 3a0c 	vldr	s7, [r4, #48]	; 0x30
d00558b6:	eea2 7aa2 	vfma.f32	s14, s5, s5
d00558ba:	eea3 4a03 	vfma.f32	s8, s6, s6
d00558be:	edd4 2a0f 	vldr	s5, [r4, #60]	; 0x3c
d00558c2:	ed94 3a12 	vldr	s6, [r4, #72]	; 0x48
d00558c6:	eee3 4aa3 	vfma.f32	s9, s7, s7
d00558ca:	edd4 3a15 	vldr	s7, [r4, #84]	; 0x54
d00558ce:	eea2 5aa2 	vfma.f32	s10, s5, s5
d00558d2:	eee3 5a03 	vfma.f32	s11, s6, s6
d00558d6:	ed94 3a02 	vldr	s6, [r4, #8]
d00558da:	eea3 6aa3 	vfma.f32	s12, s7, s7
d00558de:	edd4 3a05 	vldr	s7, [r4, #20]
d00558e2:	eee3 6a03 	vfma.f32	s13, s6, s6
d00558e6:	edd4 2a08 	vldr	s5, [r4, #32]
d00558ea:	ed94 3a0b 	vldr	s6, [r4, #44]	; 0x2c
d00558ee:	eee3 7aa3 	vfma.f32	s15, s7, s7
d00558f2:	edd4 3a0e 	vldr	s7, [r4, #56]	; 0x38
d00558f6:	eea2 7aa2 	vfma.f32	s14, s5, s5
d00558fa:	eea3 4a03 	vfma.f32	s8, s6, s6
d00558fe:	edd4 2a11 	vldr	s5, [r4, #68]	; 0x44
d0055902:	eee3 4aa3 	vfma.f32	s9, s7, s7
d0055906:	ed94 3a14 	vldr	s6, [r4, #80]	; 0x50
d005590a:	edd4 3a17 	vldr	s7, [r4, #92]	; 0x5c
d005590e:	eea2 5aa2 	vfma.f32	s10, s5, s5
d0055912:	eee3 5a03 	vfma.f32	s11, s6, s6
d0055916:	ed9f 3a17 	vldr	s6, [pc, #92]	; d0055974 <createBox+0x2fc>
d005591a:	eea3 6aa3 	vfma.f32	s12, s7, s7
d005591e:	fec6 7aa7 	vmaxnm.f32	s15, s13, s15
d0055922:	fec7 7a83 	vmaxnm.f32	s15, s15, s6
d0055926:	fe87 7a87 	vmaxnm.f32	s14, s15, s14
d005592a:	fe87 7a04 	vmaxnm.f32	s14, s14, s8
d005592e:	fec7 7a24 	vmaxnm.f32	s15, s14, s9
d0055932:	fec7 7a85 	vmaxnm.f32	s15, s15, s10
d0055936:	fec7 7aa5 	vmaxnm.f32	s15, s15, s11
d005593a:	fec6 7a27 	vmaxnm.f32	s15, s12, s15
d005593e:	eeb1 7ae7 	vsqrt.f32	s14, s15
d0055942:	ed85 7a06 	vstr	s14, [r5, #24]
d0055946:	f7fb fe9f 	bl	d0051688 <meshSetDefaultMaterial>
d005594a:	9e01      	ldr	r6, [sp, #4]
d005594c:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d005594e:	4634      	mov	r4, r6
d0055950:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0055952:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0055954:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0055956:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0055958:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d005595a:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d005595e:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d0055962:	4630      	mov	r0, r6
d0055964:	b061      	add	sp, #388	; 0x184
d0055966:	ecbd 8b04 	vpop	{d8-d9}
d005596a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005596e:	bf00      	nop
d0055970:	d005ad00 	.word	0xd005ad00
d0055974:	00000000 	.word	0x00000000

d0055978 <copyMesh>:
d0055978:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d005597c:	460f      	mov	r7, r1
d005597e:	b083      	sub	sp, #12
d0055980:	2240      	movs	r2, #64	; 0x40
d0055982:	2100      	movs	r1, #0
d0055984:	4606      	mov	r6, r0
d0055986:	f003 fc53 	bl	d0059230 <memset>
d005598a:	2f00      	cmp	r7, #0
d005598c:	d077      	beq.n	d0055a7e <copyMesh+0x106>
d005598e:	687b      	ldr	r3, [r7, #4]
d0055990:	697a      	ldr	r2, [r7, #20]
d0055992:	2b00      	cmp	r3, #0
d0055994:	f8d7 800c 	ldr.w	r8, [r7, #12]
d0055998:	9301      	str	r3, [sp, #4]
d005599a:	9200      	str	r2, [sp, #0]
d005599c:	dc59      	bgt.n	d0055a52 <copyMesh+0xda>
d005599e:	f1b8 0f00 	cmp.w	r8, #0
d00559a2:	f04f 0900 	mov.w	r9, #0
d00559a6:	dc5d      	bgt.n	d0055a64 <copyMesh+0xec>
d00559a8:	9b00      	ldr	r3, [sp, #0]
d00559aa:	f04f 0a00 	mov.w	sl, #0
d00559ae:	2b00      	cmp	r3, #0
d00559b0:	dc60      	bgt.n	d0055a74 <copyMesh+0xfc>
d00559b2:	f04f 0c00 	mov.w	ip, #0
d00559b6:	9b01      	ldr	r3, [sp, #4]
d00559b8:	2b00      	cmp	r3, #0
d00559ba:	dd0f      	ble.n	d00559dc <copyMesh+0x64>
d00559bc:	eb03 0543 	add.w	r5, r3, r3, lsl #1
d00559c0:	f8d7 e000 	ldr.w	lr, [r7]
d00559c4:	2300      	movs	r3, #0
d00559c6:	00ad      	lsls	r5, r5, #2
d00559c8:	eb0e 0203 	add.w	r2, lr, r3
d00559cc:	eb09 0403 	add.w	r4, r9, r3
d00559d0:	330c      	adds	r3, #12
d00559d2:	ca07      	ldmia	r2, {r0, r1, r2}
d00559d4:	429d      	cmp	r5, r3
d00559d6:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d00559da:	d1f5      	bne.n	d00559c8 <copyMesh+0x50>
d00559dc:	f1b8 0f00 	cmp.w	r8, #0
d00559e0:	dd0b      	ble.n	d00559fa <copyMesh+0x82>
d00559e2:	68bc      	ldr	r4, [r7, #8]
d00559e4:	2300      	movs	r3, #0
d00559e6:	eb04 01c3 	add.w	r1, r4, r3, lsl #3
d00559ea:	eb0a 02c3 	add.w	r2, sl, r3, lsl #3
d00559ee:	3301      	adds	r3, #1
d00559f0:	c903      	ldmia	r1, {r0, r1}
d00559f2:	4598      	cmp	r8, r3
d00559f4:	e882 0003 	stmia.w	r2, {r0, r1}
d00559f8:	d1f5      	bne.n	d00559e6 <copyMesh+0x6e>
d00559fa:	9b00      	ldr	r3, [sp, #0]
d00559fc:	2b00      	cmp	r3, #0
d00559fe:	dd0e      	ble.n	d0055a1e <copyMesh+0xa6>
d0055a00:	f8d7 b010 	ldr.w	fp, [r7, #16]
d0055a04:	ea4f 1e03 	mov.w	lr, r3, lsl #4
d0055a08:	2400      	movs	r4, #0
d0055a0a:	eb0b 0304 	add.w	r3, fp, r4
d0055a0e:	eb0c 0504 	add.w	r5, ip, r4
d0055a12:	3410      	adds	r4, #16
d0055a14:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
d0055a16:	4574      	cmp	r4, lr
d0055a18:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d0055a1c:	d1f5      	bne.n	d0055a0a <copyMesh+0x92>
d0055a1e:	9a01      	ldr	r2, [sp, #4]
d0055a20:	f107 0520 	add.w	r5, r7, #32
d0055a24:	69bb      	ldr	r3, [r7, #24]
d0055a26:	f106 0420 	add.w	r4, r6, #32
d0055a2a:	6072      	str	r2, [r6, #4]
d0055a2c:	9a00      	ldr	r2, [sp, #0]
d0055a2e:	61b3      	str	r3, [r6, #24]
d0055a30:	6172      	str	r2, [r6, #20]
d0055a32:	f8c6 9000 	str.w	r9, [r6]
d0055a36:	f8c6 c010 	str.w	ip, [r6, #16]
d0055a3a:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0055a3c:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0055a3e:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0055a42:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d0055a46:	4630      	mov	r0, r6
d0055a48:	e9c6 a802 	strd	sl, r8, [r6, #8]
d0055a4c:	b003      	add	sp, #12
d0055a4e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0055a52:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0055a56:	0080      	lsls	r0, r0, #2
d0055a58:	f003 fbbe 	bl	d00591d8 <malloc>
d0055a5c:	f1b8 0f00 	cmp.w	r8, #0
d0055a60:	4681      	mov	r9, r0
d0055a62:	dda1      	ble.n	d00559a8 <copyMesh+0x30>
d0055a64:	ea4f 00c8 	mov.w	r0, r8, lsl #3
d0055a68:	f003 fbb6 	bl	d00591d8 <malloc>
d0055a6c:	9b00      	ldr	r3, [sp, #0]
d0055a6e:	4682      	mov	sl, r0
d0055a70:	2b00      	cmp	r3, #0
d0055a72:	dd9e      	ble.n	d00559b2 <copyMesh+0x3a>
d0055a74:	0118      	lsls	r0, r3, #4
d0055a76:	f003 fbaf 	bl	d00591d8 <malloc>
d0055a7a:	4684      	mov	ip, r0
d0055a7c:	e79b      	b.n	d00559b6 <copyMesh+0x3e>
d0055a7e:	2300      	movs	r3, #0
d0055a80:	4630      	mov	r0, r6
d0055a82:	e9c6 7700 	strd	r7, r7, [r6]
d0055a86:	e9c6 7702 	strd	r7, r7, [r6, #8]
d0055a8a:	e9c6 7704 	strd	r7, r7, [r6, #16]
d0055a8e:	61b3      	str	r3, [r6, #24]
d0055a90:	b003      	add	sp, #12
d0055a92:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0055a96:	bf00      	nop

d0055a98 <entityLookAt>:
d0055a98:	28ff      	cmp	r0, #255	; 0xff
d0055a9a:	b570      	push	{r4, r5, r6, lr}
d0055a9c:	ed2d 8b04 	vpush	{d8-d9}
d0055aa0:	b088      	sub	sp, #32
d0055aa2:	d85d      	bhi.n	d0055b60 <entityLookAt+0xc8>
d0055aa4:	4c3b      	ldr	r4, [pc, #236]	; (d0055b94 <entityLookAt+0xfc>)
d0055aa6:	eb00 0340 	add.w	r3, r0, r0, lsl #1
d0055aaa:	4615      	mov	r5, r2
d0055aac:	4606      	mov	r6, r0
d0055aae:	eb04 1343 	add.w	r3, r4, r3, lsl #5
d0055ab2:	f893 2034 	ldrb.w	r2, [r3, #52]	; 0x34
d0055ab6:	2a00      	cmp	r2, #0
d0055ab8:	d052      	beq.n	d0055b60 <entityLookAt+0xc8>
d0055aba:	68da      	ldr	r2, [r3, #12]
d0055abc:	2a00      	cmp	r2, #0
d0055abe:	d04f      	beq.n	d0055b60 <entityLookAt+0xc8>
d0055ac0:	29ff      	cmp	r1, #255	; 0xff
d0055ac2:	d84d      	bhi.n	d0055b60 <entityLookAt+0xc8>
d0055ac4:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d0055ac8:	eb04 1141 	add.w	r1, r4, r1, lsl #5
d0055acc:	f891 2034 	ldrb.w	r2, [r1, #52]	; 0x34
d0055ad0:	2a00      	cmp	r2, #0
d0055ad2:	d045      	beq.n	d0055b60 <entityLookAt+0xc8>
d0055ad4:	68ca      	ldr	r2, [r1, #12]
d0055ad6:	2a00      	cmp	r2, #0
d0055ad8:	d042      	beq.n	d0055b60 <entityLookAt+0xc8>
d0055ada:	edd3 7a00 	vldr	s15, [r3]
d0055ade:	edd1 8a00 	vldr	s17, [r1]
d0055ae2:	ed91 9a01 	vldr	s18, [r1, #4]
d0055ae6:	ee78 8ae7 	vsub.f32	s17, s17, s15
d0055aea:	edd3 7a01 	vldr	s15, [r3, #4]
d0055aee:	edd3 0a02 	vldr	s1, [r3, #8]
d0055af2:	ee39 9a67 	vsub.f32	s18, s18, s15
d0055af6:	ed91 8a02 	vldr	s16, [r1, #8]
d0055afa:	eef5 8a40 	vcmp.f32	s17, #0.0
d0055afe:	ee38 8a60 	vsub.f32	s16, s16, s1
d0055b02:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055b06:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0055b0a:	bf14      	ite	ne
d0055b0c:	2300      	movne	r3, #0
d0055b0e:	2301      	moveq	r3, #1
d0055b10:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055b14:	bf18      	it	ne
d0055b16:	2300      	movne	r3, #0
d0055b18:	b123      	cbz	r3, d0055b24 <entityLookAt+0x8c>
d0055b1a:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0055b1e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055b22:	d01d      	beq.n	d0055b60 <entityLookAt+0xc8>
d0055b24:	eef0 0a48 	vmov.f32	s1, s16
d0055b28:	ee28 8a08 	vmul.f32	s16, s16, s16
d0055b2c:	eeb0 0a68 	vmov.f32	s0, s17
d0055b30:	f004 fc0e 	bl	d005a350 <atan2f>
d0055b34:	eef0 7a40 	vmov.f32	s15, s0
d0055b38:	eea8 8aa8 	vfma.f32	s16, s17, s17
d0055b3c:	eeb0 0a49 	vmov.f32	s0, s18
d0055b40:	eeb0 9a67 	vmov.f32	s18, s15
d0055b44:	eef1 0ac8 	vsqrt.f32	s1, s16
d0055b48:	f004 fc02 	bl	d005a350 <atan2f>
d0055b4c:	eeb1 8a40 	vneg.f32	s16, s0
d0055b50:	b9a5      	cbnz	r5, d0055b7c <entityLookAt+0xe4>
d0055b52:	2300      	movs	r3, #0
d0055b54:	ed8d 8a05 	vstr	s16, [sp, #20]
d0055b58:	ed8d 9a06 	vstr	s18, [sp, #24]
d0055b5c:	9307      	str	r3, [sp, #28]
d0055b5e:	e003      	b.n	d0055b68 <entityLookAt+0xd0>
d0055b60:	2300      	movs	r3, #0
d0055b62:	9305      	str	r3, [sp, #20]
d0055b64:	9306      	str	r3, [sp, #24]
d0055b66:	9307      	str	r3, [sp, #28]
d0055b68:	ed9d 0a05 	vldr	s0, [sp, #20]
d0055b6c:	eddd 0a06 	vldr	s1, [sp, #24]
d0055b70:	ed9d 1a07 	vldr	s2, [sp, #28]
d0055b74:	b008      	add	sp, #32
d0055b76:	ecbd 8b04 	vpop	{d8-d9}
d0055b7a:	bd70      	pop	{r4, r5, r6, pc}
d0055b7c:	eef0 0a48 	vmov.f32	s1, s16
d0055b80:	4630      	mov	r0, r6
d0055b82:	eeb0 0a49 	vmov.f32	s0, s18
d0055b86:	2101      	movs	r1, #1
d0055b88:	ed9f 1a03 	vldr	s2, [pc, #12]	; d0055b98 <entityLookAt+0x100>
d0055b8c:	f7ff f986 	bl	d0054e9c <entityRotation.part.0>
d0055b90:	e7df      	b.n	d0055b52 <entityLookAt+0xba>
d0055b92:	bf00      	nop
d0055b94:	d00f5ac0 	.word	0xd00f5ac0
d0055b98:	00000000 	.word	0x00000000

d0055b9c <entityAlignToHit>:
d0055b9c:	b349      	cbz	r1, d0055bf2 <entityAlignToHit+0x56>
d0055b9e:	780b      	ldrb	r3, [r1, #0]
d0055ba0:	b33b      	cbz	r3, d0055bf2 <entityAlignToHit+0x56>
d0055ba2:	28ff      	cmp	r0, #255	; 0xff
d0055ba4:	d825      	bhi.n	d0055bf2 <entityAlignToHit+0x56>
d0055ba6:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0055baa:	b4f0      	push	{r4, r5, r6, r7}
d0055bac:	4c12      	ldr	r4, [pc, #72]	; (d0055bf8 <entityAlignToHit+0x5c>)
d0055bae:	eb04 1440 	add.w	r4, r4, r0, lsl #5
d0055bb2:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0055bb6:	b1eb      	cbz	r3, d0055bf4 <entityAlignToHit+0x58>
d0055bb8:	68e3      	ldr	r3, [r4, #12]
d0055bba:	b1db      	cbz	r3, d0055bf4 <entityAlignToHit+0x58>
d0055bbc:	f101 0228 	add.w	r2, r1, #40	; 0x28
d0055bc0:	f104 051c 	add.w	r5, r4, #28
d0055bc4:	f101 0734 	add.w	r7, r1, #52	; 0x34
d0055bc8:	f101 0340 	add.w	r3, r1, #64	; 0x40
d0055bcc:	f104 0628 	add.w	r6, r4, #40	; 0x28
d0055bd0:	ca07      	ldmia	r2, {r0, r1, r2}
d0055bd2:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d0055bd6:	e897 0007 	ldmia.w	r7, {r0, r1, r2}
d0055bda:	f104 0510 	add.w	r5, r4, #16
d0055bde:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0055be2:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0055be6:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d0055bea:	4620      	mov	r0, r4
d0055bec:	bcf0      	pop	{r4, r5, r6, r7}
d0055bee:	f7ff b8ff 	b.w	d0054df0 <normalizeEntity.part.0>
d0055bf2:	4770      	bx	lr
d0055bf4:	bcf0      	pop	{r4, r5, r6, r7}
d0055bf6:	4770      	bx	lr
d0055bf8:	d00f5ac0 	.word	0xd00f5ac0

d0055bfc <entityAllowHit>:
d0055bfc:	28ff      	cmp	r0, #255	; 0xff
d0055bfe:	d815      	bhi.n	d0055c2c <entityAllowHit+0x30>
d0055c00:	4b0b      	ldr	r3, [pc, #44]	; (d0055c30 <entityAllowHit+0x34>)
d0055c02:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0055c06:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d0055c0a:	f890 3034 	ldrb.w	r3, [r0, #52]	; 0x34
d0055c0e:	b16b      	cbz	r3, d0055c2c <entityAllowHit+0x30>
d0055c10:	68c3      	ldr	r3, [r0, #12]
d0055c12:	b15b      	cbz	r3, d0055c2c <entityAllowHit+0x30>
d0055c14:	f890 3035 	ldrb.w	r3, [r0, #53]	; 0x35
d0055c18:	b121      	cbz	r1, d0055c24 <entityAllowHit+0x28>
d0055c1a:	f043 0302 	orr.w	r3, r3, #2
d0055c1e:	f880 3035 	strb.w	r3, [r0, #53]	; 0x35
d0055c22:	4770      	bx	lr
d0055c24:	f023 0302 	bic.w	r3, r3, #2
d0055c28:	f880 3035 	strb.w	r3, [r0, #53]	; 0x35
d0055c2c:	4770      	bx	lr
d0055c2e:	bf00      	nop
d0055c30:	d00f5ac0 	.word	0xd00f5ac0

d0055c34 <buildLightingCLUT>:
d0055c34:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0055c38:	f1b2 0900 	subs.w	r9, r2, #0
d0055c3c:	b085      	sub	sp, #20
d0055c3e:	9c0e      	ldr	r4, [sp, #56]	; 0x38
d0055c40:	f340 8212 	ble.w	d0056068 <buildLightingCLUT+0x434>
d0055c44:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0055c48:	4f24      	ldr	r7, [pc, #144]	; (d0055cdc <buildLightingCLUT+0xa8>)
d0055c4a:	eb09 0c49 	add.w	ip, r9, r9, lsl #1
d0055c4e:	edd4 4a00 	vldr	s9, [r4]
d0055c52:	ed94 5a01 	vldr	s10, [r4, #4]
d0055c56:	eb09 0807 	add.w	r8, r9, r7
d0055c5a:	edd4 5a02 	vldr	s11, [r4, #8]
d0055c5e:	eb07 0e49 	add.w	lr, r7, r9, lsl #1
d0055c62:	ed94 6a03 	vldr	s12, [r4, #12]
d0055c66:	44bc      	add	ip, r7
d0055c68:	edd4 6a04 	vldr	s13, [r4, #16]
d0055c6c:	eb07 0789 	add.w	r7, r7, r9, lsl #2
d0055c70:	3904      	subs	r1, #4
d0055c72:	ee77 4ae4 	vsub.f32	s9, s15, s9
d0055c76:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0055c7a:	ed9f 7a19 	vldr	s14, [pc, #100]	; d0055ce0 <buildLightingCLUT+0xac>
d0055c7e:	ee77 5ae5 	vsub.f32	s11, s15, s11
d0055c82:	f100 067c 	add.w	r6, r0, #124	; 0x7c
d0055c86:	ee37 6ac6 	vsub.f32	s12, s15, s12
d0055c8a:	eb00 0888 	add.w	r8, r0, r8, lsl #2
d0055c8e:	ee77 6ae6 	vsub.f32	s13, s15, s13
d0055c92:	eb00 0e8e 	add.w	lr, r0, lr, lsl #2
d0055c96:	eb00 0c8c 	add.w	ip, r0, ip, lsl #2
d0055c9a:	f3c3 4507 	ubfx	r5, r3, #16, #8
d0055c9e:	eb00 0787 	add.w	r7, r0, r7, lsl #2
d0055ca2:	f3c3 2007 	ubfx	r0, r3, #8, #8
d0055ca6:	eb01 0989 	add.w	r9, r1, r9, lsl #2
d0055caa:	fec4 4a87 	vmaxnm.f32	s9, s9, s14
d0055cae:	0e1c      	lsrs	r4, r3, #24
d0055cb0:	fe85 5a07 	vmaxnm.f32	s10, s10, s14
d0055cb4:	b2da      	uxtb	r2, r3
d0055cb6:	fec5 5a87 	vmaxnm.f32	s11, s11, s14
d0055cba:	fe86 6a07 	vmaxnm.f32	s12, s12, s14
d0055cbe:	fec6 6a87 	vmaxnm.f32	s13, s13, s14
d0055cc2:	fec4 4ae7 	vminnm.f32	s9, s9, s15
d0055cc6:	fe85 5a67 	vminnm.f32	s10, s10, s15
d0055cca:	fec5 5ae7 	vminnm.f32	s11, s11, s15
d0055cce:	fe86 6a67 	vminnm.f32	s12, s12, s15
d0055cd2:	fec6 6ae7 	vminnm.f32	s13, s13, s15
d0055cd6:	9601      	str	r6, [sp, #4]
d0055cd8:	e004      	b.n	d0055ce4 <buildLightingCLUT+0xb0>
d0055cda:	bf00      	nop
d0055cdc:	4000001f 	.word	0x4000001f
d0055ce0:	00000000 	.word	0x00000000
d0055ce4:	f851 3f04 	ldr.w	r3, [r1, #4]!
d0055ce8:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0055cec:	0e1e      	lsrs	r6, r3, #24
d0055cee:	fa5f fa83 	uxtb.w	sl, r3
d0055cf2:	4549      	cmp	r1, r9
d0055cf4:	ee07 6a10 	vmov	s14, r6
d0055cf8:	eba5 060b 	sub.w	r6, r5, fp
d0055cfc:	ee04 ba10 	vmov	s8, fp
d0055d00:	ee07 6a90 	vmov	s15, r6
d0055d04:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0055d08:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0055d0c:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0055d10:	ee02 6a10 	vmov	s4, r6
d0055d14:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0055d18:	eba2 060a 	sub.w	r6, r2, sl
d0055d1c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0055d20:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0055d24:	ee04 aa10 	vmov	s8, sl
d0055d28:	ee02 6a90 	vmov	s5, r6
d0055d2c:	eba0 0603 	sub.w	r6, r0, r3
d0055d30:	eee4 3aa7 	vfma.f32	s7, s9, s15
d0055d34:	ee07 3a90 	vmov	s15, r3
d0055d38:	eea4 7a82 	vfma.f32	s14, s9, s4
d0055d3c:	ee03 6a10 	vmov	s6, r6
d0055d40:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0055d44:	9e01      	ldr	r6, [sp, #4]
d0055d46:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0055d4a:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0055d4e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0055d52:	eea4 4aa2 	vfma.f32	s8, s9, s5
d0055d56:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0055d5a:	eee4 7a83 	vfma.f32	s15, s9, s6
d0055d5e:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0055d62:	edcd 3a02 	vstr	s7, [sp, #8]
d0055d66:	f89d a008 	ldrb.w	sl, [sp, #8]
d0055d6a:	ee17 3a10 	vmov	r3, s14
d0055d6e:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0055d72:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0055d76:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0055d7a:	ed8d 7a02 	vstr	s14, [sp, #8]
d0055d7e:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0055d82:	f89d b008 	ldrb.w	fp, [sp, #8]
d0055d86:	edcd 7a03 	vstr	s15, [sp, #12]
d0055d8a:	ea43 030b 	orr.w	r3, r3, fp
d0055d8e:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0055d92:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0055d96:	f846 3f04 	str.w	r3, [r6, #4]!
d0055d9a:	680b      	ldr	r3, [r1, #0]
d0055d9c:	9601      	str	r6, [sp, #4]
d0055d9e:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0055da2:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0055da6:	fa5f fa83 	uxtb.w	sl, r3
d0055daa:	ee07 6a10 	vmov	s14, r6
d0055dae:	eba5 060b 	sub.w	r6, r5, fp
d0055db2:	ee04 ba10 	vmov	s8, fp
d0055db6:	ee07 6a90 	vmov	s15, r6
d0055dba:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0055dbe:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0055dc2:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0055dc6:	ee02 6a10 	vmov	s4, r6
d0055dca:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0055dce:	eba2 060a 	sub.w	r6, r2, sl
d0055dd2:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0055dd6:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0055dda:	ee04 aa10 	vmov	s8, sl
d0055dde:	ee02 6a90 	vmov	s5, r6
d0055de2:	eba0 0603 	sub.w	r6, r0, r3
d0055de6:	eee5 3a27 	vfma.f32	s7, s10, s15
d0055dea:	ee07 3a90 	vmov	s15, r3
d0055dee:	eea5 7a02 	vfma.f32	s14, s10, s4
d0055df2:	ee03 6a10 	vmov	s6, r6
d0055df6:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0055dfa:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0055dfe:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0055e02:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0055e06:	eea5 4a22 	vfma.f32	s8, s10, s5
d0055e0a:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0055e0e:	eee5 7a03 	vfma.f32	s15, s10, s6
d0055e12:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0055e16:	edcd 3a02 	vstr	s7, [sp, #8]
d0055e1a:	f89d a008 	ldrb.w	sl, [sp, #8]
d0055e1e:	ee17 3a10 	vmov	r3, s14
d0055e22:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0055e26:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0055e2a:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0055e2e:	ed8d 7a02 	vstr	s14, [sp, #8]
d0055e32:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0055e36:	f89d b008 	ldrb.w	fp, [sp, #8]
d0055e3a:	edcd 7a03 	vstr	s15, [sp, #12]
d0055e3e:	ea43 030b 	orr.w	r3, r3, fp
d0055e42:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0055e46:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0055e4a:	f848 3f04 	str.w	r3, [r8, #4]!
d0055e4e:	680b      	ldr	r3, [r1, #0]
d0055e50:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0055e54:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0055e58:	fa5f fa83 	uxtb.w	sl, r3
d0055e5c:	ee07 6a10 	vmov	s14, r6
d0055e60:	eba5 060b 	sub.w	r6, r5, fp
d0055e64:	ee04 ba10 	vmov	s8, fp
d0055e68:	ee07 6a90 	vmov	s15, r6
d0055e6c:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0055e70:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0055e74:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0055e78:	ee02 6a10 	vmov	s4, r6
d0055e7c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0055e80:	eba2 060a 	sub.w	r6, r2, sl
d0055e84:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0055e88:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0055e8c:	ee04 aa10 	vmov	s8, sl
d0055e90:	ee02 6a90 	vmov	s5, r6
d0055e94:	eba0 0603 	sub.w	r6, r0, r3
d0055e98:	eee5 3aa7 	vfma.f32	s7, s11, s15
d0055e9c:	ee07 3a90 	vmov	s15, r3
d0055ea0:	eea5 7a82 	vfma.f32	s14, s11, s4
d0055ea4:	ee03 6a10 	vmov	s6, r6
d0055ea8:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0055eac:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0055eb0:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0055eb4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0055eb8:	eea5 4aa2 	vfma.f32	s8, s11, s5
d0055ebc:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0055ec0:	eee5 7a83 	vfma.f32	s15, s11, s6
d0055ec4:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0055ec8:	edcd 3a02 	vstr	s7, [sp, #8]
d0055ecc:	f89d a008 	ldrb.w	sl, [sp, #8]
d0055ed0:	ee17 3a10 	vmov	r3, s14
d0055ed4:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0055ed8:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0055edc:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0055ee0:	ed8d 7a02 	vstr	s14, [sp, #8]
d0055ee4:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0055ee8:	f89d b008 	ldrb.w	fp, [sp, #8]
d0055eec:	edcd 7a03 	vstr	s15, [sp, #12]
d0055ef0:	ea43 030b 	orr.w	r3, r3, fp
d0055ef4:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0055ef8:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0055efc:	f84e 3f04 	str.w	r3, [lr, #4]!
d0055f00:	680b      	ldr	r3, [r1, #0]
d0055f02:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0055f06:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0055f0a:	fa5f fa83 	uxtb.w	sl, r3
d0055f0e:	ee07 6a10 	vmov	s14, r6
d0055f12:	eba5 060b 	sub.w	r6, r5, fp
d0055f16:	ee04 ba10 	vmov	s8, fp
d0055f1a:	ee07 6a90 	vmov	s15, r6
d0055f1e:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0055f22:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0055f26:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0055f2a:	ee02 6a10 	vmov	s4, r6
d0055f2e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0055f32:	eba2 060a 	sub.w	r6, r2, sl
d0055f36:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0055f3a:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0055f3e:	ee04 aa10 	vmov	s8, sl
d0055f42:	ee02 6a90 	vmov	s5, r6
d0055f46:	eba0 0603 	sub.w	r6, r0, r3
d0055f4a:	eee6 3a27 	vfma.f32	s7, s12, s15
d0055f4e:	ee07 3a90 	vmov	s15, r3
d0055f52:	eea6 7a02 	vfma.f32	s14, s12, s4
d0055f56:	ee03 6a10 	vmov	s6, r6
d0055f5a:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0055f5e:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0055f62:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0055f66:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0055f6a:	eea6 4a22 	vfma.f32	s8, s12, s5
d0055f6e:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0055f72:	eee6 7a03 	vfma.f32	s15, s12, s6
d0055f76:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0055f7a:	edcd 3a02 	vstr	s7, [sp, #8]
d0055f7e:	f89d a008 	ldrb.w	sl, [sp, #8]
d0055f82:	ee17 3a10 	vmov	r3, s14
d0055f86:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0055f8a:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0055f8e:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0055f92:	ed8d 7a02 	vstr	s14, [sp, #8]
d0055f96:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0055f9a:	f89d b008 	ldrb.w	fp, [sp, #8]
d0055f9e:	edcd 7a03 	vstr	s15, [sp, #12]
d0055fa2:	ea43 030b 	orr.w	r3, r3, fp
d0055fa6:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0055faa:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0055fae:	f84c 3f04 	str.w	r3, [ip, #4]!
d0055fb2:	680b      	ldr	r3, [r1, #0]
d0055fb4:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0055fb8:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0055fbc:	fa5f fa83 	uxtb.w	sl, r3
d0055fc0:	ee07 6a10 	vmov	s14, r6
d0055fc4:	eba5 060b 	sub.w	r6, r5, fp
d0055fc8:	ee04 ba10 	vmov	s8, fp
d0055fcc:	ee07 6a90 	vmov	s15, r6
d0055fd0:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0055fd4:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0055fd8:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0055fdc:	ee02 6a10 	vmov	s4, r6
d0055fe0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0055fe4:	eba2 060a 	sub.w	r6, r2, sl
d0055fe8:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0055fec:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0055ff0:	ee04 aa10 	vmov	s8, sl
d0055ff4:	ee02 6a90 	vmov	s5, r6
d0055ff8:	eba0 0603 	sub.w	r6, r0, r3
d0055ffc:	eee6 3aa7 	vfma.f32	s7, s13, s15
d0056000:	ee07 3a90 	vmov	s15, r3
d0056004:	eea6 7a82 	vfma.f32	s14, s13, s4
d0056008:	ee03 6a10 	vmov	s6, r6
d005600c:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0056010:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0056014:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0056018:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005601c:	eea6 4aa2 	vfma.f32	s8, s13, s5
d0056020:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0056024:	eee6 7a83 	vfma.f32	s15, s13, s6
d0056028:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d005602c:	edcd 3a02 	vstr	s7, [sp, #8]
d0056030:	f89d a008 	ldrb.w	sl, [sp, #8]
d0056034:	ee17 3a10 	vmov	r3, s14
d0056038:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d005603c:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0056040:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0056044:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0056048:	ed8d 7a02 	vstr	s14, [sp, #8]
d005604c:	f89d b008 	ldrb.w	fp, [sp, #8]
d0056050:	edcd 7a03 	vstr	s15, [sp, #12]
d0056054:	ea43 030b 	orr.w	r3, r3, fp
d0056058:	f89d a00c 	ldrb.w	sl, [sp, #12]
d005605c:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0056060:	f847 3f04 	str.w	r3, [r7, #4]!
d0056064:	f47f ae3e 	bne.w	d0055ce4 <buildLightingCLUT+0xb0>
d0056068:	b005      	add	sp, #20
d005606a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005606e:	bf00      	nop

d0056070 <brightnessToShadeF>:
d0056070:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0056074:	eddf 7a09 	vldr	s15, [pc, #36]	; d005609c <brightnessToShadeF+0x2c>
d0056078:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d005607c:	eef7 6a08 	vmov.f32	s13, #120	; 0x3fc00000  1.5
d0056080:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d0056084:	fec0 7a47 	vminnm.f32	s15, s0, s14
d0056088:	eeb1 0a04 	vmov.f32	s0, #20	; 0x40a00000  5.0
d005608c:	eee7 6ac6 	vfms.f32	s13, s15, s12
d0056090:	eea6 7ae7 	vfms.f32	s14, s13, s15
d0056094:	ee27 0a00 	vmul.f32	s0, s14, s0
d0056098:	4770      	bx	lr
d005609a:	bf00      	nop
d005609c:	00000000 	.word	0x00000000

d00560a0 <lightSetRanges>:
d00560a0:	2800      	cmp	r0, #0
d00560a2:	db0c      	blt.n	d00560be <lightSetRanges+0x1e>
d00560a4:	4b06      	ldr	r3, [pc, #24]	; (d00560c0 <lightSetRanges+0x20>)
d00560a6:	681b      	ldr	r3, [r3, #0]
d00560a8:	4283      	cmp	r3, r0
d00560aa:	dd08      	ble.n	d00560be <lightSetRanges+0x1e>
d00560ac:	4b05      	ldr	r3, [pc, #20]	; (d00560c4 <lightSetRanges+0x24>)
d00560ae:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d00560b2:	ed80 0a08 	vstr	s0, [r0, #32]
d00560b6:	edc0 0a09 	vstr	s1, [r0, #36]	; 0x24
d00560ba:	ed80 1a0a 	vstr	s2, [r0, #40]	; 0x28
d00560be:	4770      	bx	lr
d00560c0:	d005d7a0 	.word	0xd005d7a0
d00560c4:	d005d7c0 	.word	0xd005d7c0

d00560c8 <lightsGet>:
d00560c8:	4800      	ldr	r0, [pc, #0]	; (d00560cc <lightsGet+0x4>)
d00560ca:	4770      	bx	lr
d00560cc:	d005d7c0 	.word	0xd005d7c0

d00560d0 <lightsGetCount>:
d00560d0:	4b01      	ldr	r3, [pc, #4]	; (d00560d8 <lightsGetCount+0x8>)
d00560d2:	6818      	ldr	r0, [r3, #0]
d00560d4:	4770      	bx	lr
d00560d6:	bf00      	nop
d00560d8:	d005d7a0 	.word	0xd005d7a0

d00560dc <lightsClear>:
d00560dc:	4b01      	ldr	r3, [pc, #4]	; (d00560e4 <lightsClear+0x8>)
d00560de:	2200      	movs	r2, #0
d00560e0:	601a      	str	r2, [r3, #0]
d00560e2:	4770      	bx	lr
d00560e4:	d005d7a0 	.word	0xd005d7a0

d00560e8 <lightEnable>:
d00560e8:	4b04      	ldr	r3, [pc, #16]	; (d00560fc <lightEnable+0x14>)
d00560ea:	681b      	ldr	r3, [r3, #0]
d00560ec:	4298      	cmp	r0, r3
d00560ee:	da03      	bge.n	d00560f8 <lightEnable+0x10>
d00560f0:	4b03      	ldr	r3, [pc, #12]	; (d0056100 <lightEnable+0x18>)
d00560f2:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d00560f6:	62c1      	str	r1, [r0, #44]	; 0x2c
d00560f8:	4770      	bx	lr
d00560fa:	bf00      	nop
d00560fc:	d005d7a0 	.word	0xd005d7a0
d0056100:	d005d7c0 	.word	0xd005d7c0

d0056104 <addPointLight>:
d0056104:	4918      	ldr	r1, [pc, #96]	; (d0056168 <addPointLight+0x64>)
d0056106:	b5f0      	push	{r4, r5, r6, r7, lr}
d0056108:	680c      	ldr	r4, [r1, #0]
d005610a:	b085      	sub	sp, #20
d005610c:	2c07      	cmp	r4, #7
d005610e:	ed8d 0a01 	vstr	s0, [sp, #4]
d0056112:	edcd 0a02 	vstr	s1, [sp, #8]
d0056116:	ed8d 1a03 	vstr	s2, [sp, #12]
d005611a:	dc21      	bgt.n	d0056160 <addPointLight+0x5c>
d005611c:	4d13      	ldr	r5, [pc, #76]	; (d005616c <addPointLight+0x68>)
d005611e:	01a2      	lsls	r2, r4, #6
d0056120:	2600      	movs	r6, #0
d0056122:	f8df e050 	ldr.w	lr, [pc, #80]	; d0056174 <addPointLight+0x70>
d0056126:	eb05 1384 	add.w	r3, r5, r4, lsl #6
d005612a:	f8df c04c 	ldr.w	ip, [pc, #76]	; d0056178 <addPointLight+0x74>
d005612e:	54ae      	strb	r6, [r5, r2]
d0056130:	2200      	movs	r2, #0
d0056132:	4f0f      	ldr	r7, [pc, #60]	; (d0056170 <addPointLight+0x6c>)
d0056134:	1d1d      	adds	r5, r3, #4
d0056136:	62d8      	str	r0, [r3, #44]	; 0x2c
d0056138:	1c66      	adds	r6, r4, #1
d005613a:	611a      	str	r2, [r3, #16]
d005613c:	615a      	str	r2, [r3, #20]
d005613e:	619a      	str	r2, [r3, #24]
d0056140:	edc3 1a07 	vstr	s3, [r3, #28]
d0056144:	f8c3 e020 	str.w	lr, [r3, #32]
d0056148:	f8c3 c024 	str.w	ip, [r3, #36]	; 0x24
d005614c:	629f      	str	r7, [r3, #40]	; 0x28
d005614e:	ab04      	add	r3, sp, #16
d0056150:	600e      	str	r6, [r1, #0]
d0056152:	e913 0007 	ldmdb	r3, {r0, r1, r2}
d0056156:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d005615a:	4620      	mov	r0, r4
d005615c:	b005      	add	sp, #20
d005615e:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0056160:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
d0056164:	e7f9      	b.n	d005615a <addPointLight+0x56>
d0056166:	bf00      	nop
d0056168:	d005d7a0 	.word	0xd005d7a0
d005616c:	d005d7c0 	.word	0xd005d7c0
d0056170:	44020000 	.word	0x44020000
d0056174:	42c80000 	.word	0x42c80000
d0056178:	43660000 	.word	0x43660000

d005617c <addDirectionalLight>:
d005617c:	b5f0      	push	{r4, r5, r6, r7, lr}
d005617e:	4f15      	ldr	r7, [pc, #84]	; (d00561d4 <addDirectionalLight+0x58>)
d0056180:	683d      	ldr	r5, [r7, #0]
d0056182:	2d07      	cmp	r5, #7
d0056184:	ed2d 8b02 	vpush	{d8}
d0056188:	b085      	sub	sp, #20
d005618a:	dc1f      	bgt.n	d00561cc <addDirectionalLight+0x50>
d005618c:	4912      	ldr	r1, [pc, #72]	; (d00561d8 <addDirectionalLight+0x5c>)
d005618e:	2300      	movs	r3, #0
d0056190:	4606      	mov	r6, r0
d0056192:	01aa      	lsls	r2, r5, #6
d0056194:	eb01 1485 	add.w	r4, r1, r5, lsl #6
d0056198:	2001      	movs	r0, #1
d005619a:	eeb0 8a61 	vmov.f32	s16, s3
d005619e:	6063      	str	r3, [r4, #4]
d00561a0:	60a3      	str	r3, [r4, #8]
d00561a2:	60e3      	str	r3, [r4, #12]
d00561a4:	5488      	strb	r0, [r1, r2]
d00561a6:	f7fd ff15 	bl	d0053fd4 <vec3Normalize>
d00561aa:	683b      	ldr	r3, [r7, #0]
d00561ac:	ed84 8a07 	vstr	s16, [r4, #28]
d00561b0:	3301      	adds	r3, #1
d00561b2:	62e6      	str	r6, [r4, #44]	; 0x2c
d00561b4:	ed84 0a04 	vstr	s0, [r4, #16]
d00561b8:	edc4 0a05 	vstr	s1, [r4, #20]
d00561bc:	ed84 1a06 	vstr	s2, [r4, #24]
d00561c0:	603b      	str	r3, [r7, #0]
d00561c2:	4628      	mov	r0, r5
d00561c4:	b005      	add	sp, #20
d00561c6:	ecbd 8b02 	vpop	{d8}
d00561ca:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00561cc:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d00561d0:	e7f7      	b.n	d00561c2 <addDirectionalLight+0x46>
d00561d2:	bf00      	nop
d00561d4:	d005d7a0 	.word	0xd005d7a0
d00561d8:	d005d7c0 	.word	0xd005d7c0

d00561dc <lightSetPosition>:
d00561dc:	b084      	sub	sp, #16
d00561de:	2800      	cmp	r0, #0
d00561e0:	ed8d 0a01 	vstr	s0, [sp, #4]
d00561e4:	edcd 0a02 	vstr	s1, [sp, #8]
d00561e8:	ed8d 1a03 	vstr	s2, [sp, #12]
d00561ec:	db0c      	blt.n	d0056208 <lightSetPosition+0x2c>
d00561ee:	4b07      	ldr	r3, [pc, #28]	; (d005620c <lightSetPosition+0x30>)
d00561f0:	681b      	ldr	r3, [r3, #0]
d00561f2:	4283      	cmp	r3, r0
d00561f4:	dd08      	ble.n	d0056208 <lightSetPosition+0x2c>
d00561f6:	4b06      	ldr	r3, [pc, #24]	; (d0056210 <lightSetPosition+0x34>)
d00561f8:	aa04      	add	r2, sp, #16
d00561fa:	eb03 1380 	add.w	r3, r3, r0, lsl #6
d00561fe:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0056202:	3304      	adds	r3, #4
d0056204:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0056208:	b004      	add	sp, #16
d005620a:	4770      	bx	lr
d005620c:	d005d7a0 	.word	0xd005d7a0
d0056210:	d005d7c0 	.word	0xd005d7c0

d0056214 <lightSetIntensity>:
d0056214:	2800      	cmp	r0, #0
d0056216:	db08      	blt.n	d005622a <lightSetIntensity+0x16>
d0056218:	4b04      	ldr	r3, [pc, #16]	; (d005622c <lightSetIntensity+0x18>)
d005621a:	681b      	ldr	r3, [r3, #0]
d005621c:	4283      	cmp	r3, r0
d005621e:	dd04      	ble.n	d005622a <lightSetIntensity+0x16>
d0056220:	4b03      	ldr	r3, [pc, #12]	; (d0056230 <lightSetIntensity+0x1c>)
d0056222:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d0056226:	ed80 0a07 	vstr	s0, [r0, #28]
d005622a:	4770      	bx	lr
d005622c:	d005d7a0 	.word	0xd005d7a0
d0056230:	d005d7c0 	.word	0xd005d7c0

d0056234 <setDefaultRenderMode>:
d0056234:	2300      	movs	r3, #0
d0056236:	4803      	ldr	r0, [pc, #12]	; (d0056244 <setDefaultRenderMode+0x10>)
d0056238:	4903      	ldr	r1, [pc, #12]	; (d0056248 <setDefaultRenderMode+0x14>)
d005623a:	4a04      	ldr	r2, [pc, #16]	; (d005624c <setDefaultRenderMode+0x18>)
d005623c:	6003      	str	r3, [r0, #0]
d005623e:	600b      	str	r3, [r1, #0]
d0056240:	6013      	str	r3, [r2, #0]
d0056242:	4770      	bx	lr
d0056244:	d00699c8 	.word	0xd00699c8
d0056248:	d00e99e0 	.word	0xd00e99e0
d005624c:	d00e99e4 	.word	0xd00e99e4

d0056250 <enableFlatMode>:
d0056250:	4b01      	ldr	r3, [pc, #4]	; (d0056258 <enableFlatMode+0x8>)
d0056252:	6018      	str	r0, [r3, #0]
d0056254:	4770      	bx	lr
d0056256:	bf00      	nop
d0056258:	d00699c8 	.word	0xd00699c8

d005625c <clipTriangleToFrustum>:
d005625c:	4bd1      	ldr	r3, [pc, #836]	; (d00565a4 <clipTriangleToFrustum+0x348>)
d005625e:	4ad2      	ldr	r2, [pc, #840]	; (d00565a8 <clipTriangleToFrustum+0x34c>)
d0056260:	681b      	ldr	r3, [r3, #0]
d0056262:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0056266:	b08a      	sub	sp, #40	; 0x28
d0056268:	6814      	ldr	r4, [r2, #0]
d005626a:	ed8d 0a07 	vstr	s0, [sp, #28]
d005626e:	edcd 0a08 	vstr	s1, [sp, #32]
d0056272:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d0056276:	edcd 1a04 	vstr	s3, [sp, #16]
d005627a:	ed8d 2a05 	vstr	s4, [sp, #20]
d005627e:	edcd 2a06 	vstr	s5, [sp, #24]
d0056282:	ed8d 3a01 	vstr	s6, [sp, #4]
d0056286:	edcd 3a02 	vstr	s7, [sp, #8]
d005628a:	ed8d 4a03 	vstr	s8, [sp, #12]
d005628e:	2b00      	cmp	r3, #0
d0056290:	f000 826b 	beq.w	d005676a <clipTriangleToFrustum+0x50e>
d0056294:	2c00      	cmp	r4, #0
d0056296:	f000 8268 	beq.w	d005676a <clipTriangleToFrustum+0x50e>
d005629a:	aa0a      	add	r2, sp, #40	; 0x28
d005629c:	edd1 7a10 	vldr	s15, [r1, #64]	; 0x40
d00562a0:	ed91 3a15 	vldr	s6, [r1, #84]	; 0x54
d00562a4:	af04      	add	r7, sp, #16
d00562a6:	4605      	mov	r5, r0
d00562a8:	f103 060c 	add.w	r6, r3, #12
d00562ac:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d00562b0:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d00562b4:	e897 0007 	ldmia.w	r7, {r0, r1, r2}
d00562b8:	af01      	add	r7, sp, #4
d00562ba:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d00562be:	e897 0007 	ldmia.w	r7, {r0, r1, r2}
d00562c2:	f103 0618 	add.w	r6, r3, #24
d00562c6:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d00562ca:	edd3 6a08 	vldr	s13, [r3, #32]
d00562ce:	ed93 7a02 	vldr	s14, [r3, #8]
d00562d2:	ee36 6ae7 	vsub.f32	s12, s13, s15
d00562d6:	edd3 3a06 	vldr	s7, [r3, #24]
d00562da:	ee37 4a67 	vsub.f32	s8, s14, s15
d00562de:	edd3 5a07 	vldr	s11, [r3, #28]
d00562e2:	ed93 5a00 	vldr	s10, [r3]
d00562e6:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d00562ea:	edd3 4a01 	vldr	s9, [r3, #4]
d00562ee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00562f2:	eeb5 4ac0 	vcmpe.f32	s8, #0.0
d00562f6:	bfac      	ite	ge
d00562f8:	2201      	movge	r2, #1
d00562fa:	2200      	movlt	r2, #0
d00562fc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056300:	bfac      	ite	ge
d0056302:	2101      	movge	r1, #1
d0056304:	2100      	movlt	r1, #0
d0056306:	2a00      	cmp	r2, #0
d0056308:	f000 8234 	beq.w	d0056774 <clipTriangleToFrustum+0x518>
d005630c:	2900      	cmp	r1, #0
d005630e:	f000 8231 	beq.w	d0056774 <clipTriangleToFrustum+0x518>
d0056312:	2201      	movs	r2, #1
d0056314:	ed84 5a00 	vstr	s10, [r4]
d0056318:	edc4 4a01 	vstr	s9, [r4, #4]
d005631c:	ed84 7a02 	vstr	s14, [r4, #8]
d0056320:	edd3 2a05 	vldr	s5, [r3, #20]
d0056324:	f001 0001 	and.w	r0, r1, #1
d0056328:	edd3 5a03 	vldr	s11, [r3, #12]
d005632c:	ee72 6ae7 	vsub.f32	s13, s5, s15
d0056330:	ed93 6a04 	vldr	s12, [r3, #16]
d0056334:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0056338:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005633c:	bfb6      	itet	lt
d005633e:	2000      	movlt	r0, #0
d0056340:	2601      	movge	r6, #1
d0056342:	2600      	movlt	r6, #0
d0056344:	2800      	cmp	r0, #0
d0056346:	f000 8244 	beq.w	d00567d2 <clipTriangleToFrustum+0x576>
d005634a:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d005634e:	3201      	adds	r2, #1
d0056350:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d0056354:	edc1 5a00 	vstr	s11, [r1]
d0056358:	ed81 6a01 	vstr	s12, [r1, #4]
d005635c:	edc1 2a02 	vstr	s5, [r1, #8]
d0056360:	ed93 7a08 	vldr	s14, [r3, #32]
d0056364:	ed93 4a06 	vldr	s8, [r3, #24]
d0056368:	ee37 5a67 	vsub.f32	s10, s14, s15
d005636c:	edd3 4a07 	vldr	s9, [r3, #28]
d0056370:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d0056374:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056378:	bfac      	ite	ge
d005637a:	2101      	movge	r1, #1
d005637c:	2100      	movlt	r1, #0
d005637e:	f2c0 825c 	blt.w	d005683a <clipTriangleToFrustum+0x5de>
d0056382:	2800      	cmp	r0, #0
d0056384:	f000 8259 	beq.w	d005683a <clipTriangleToFrustum+0x5de>
d0056388:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d005638c:	3201      	adds	r2, #1
d005638e:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d0056392:	ed81 4a00 	vstr	s8, [r1]
d0056396:	edc1 4a01 	vstr	s9, [r1, #4]
d005639a:	ed81 7a02 	vstr	s14, [r1, #8]
d005639e:	2a02      	cmp	r2, #2
d00563a0:	f340 81e3 	ble.w	d005676a <clipTriangleToFrustum+0x50e>
d00563a4:	eb02 0742 	add.w	r7, r2, r2, lsl #1
d00563a8:	4626      	mov	r6, r4
d00563aa:	4620      	mov	r0, r4
d00563ac:	2200      	movs	r2, #0
d00563ae:	00bf      	lsls	r7, r7, #2
d00563b0:	f1a7 010c 	sub.w	r1, r7, #12
d00563b4:	4427      	add	r7, r4
d00563b6:	4421      	add	r1, r4
d00563b8:	ed91 7a00 	vldr	s14, [r1]
d00563bc:	edd1 7a02 	vldr	s15, [r1, #8]
d00563c0:	ed91 6a01 	vldr	s12, [r1, #4]
d00563c4:	ee77 6a27 	vadd.f32	s13, s14, s15
d00563c8:	e009      	b.n	d00563de <clipTriangleToFrustum+0x182>
d00563ca:	3201      	adds	r2, #1
d00563cc:	ed81 7a00 	vstr	s14, [r1]
d00563d0:	ed81 6a01 	vstr	s12, [r1, #4]
d00563d4:	edc1 7a02 	vstr	s15, [r1, #8]
d00563d8:	300c      	adds	r0, #12
d00563da:	4287      	cmp	r7, r0
d00563dc:	d053      	beq.n	d0056486 <clipTriangleToFrustum+0x22a>
d00563de:	eeb0 4a47 	vmov.f32	s8, s14
d00563e2:	ed90 7a00 	vldr	s14, [r0]
d00563e6:	eeb0 5a67 	vmov.f32	s10, s15
d00563ea:	edd0 7a02 	vldr	s15, [r0, #8]
d00563ee:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00563f2:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d00563f6:	eef0 5a66 	vmov.f32	s11, s13
d00563fa:	ee77 6a27 	vadd.f32	s13, s14, s15
d00563fe:	eb03 0181 	add.w	r1, r3, r1, lsl #2
d0056402:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056406:	eef0 4a46 	vmov.f32	s9, s12
d005640a:	ed90 6a01 	vldr	s12, [r0, #4]
d005640e:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0056412:	bfac      	ite	ge
d0056414:	f04f 0c01 	movge.w	ip, #1
d0056418:	f04f 0c00 	movlt.w	ip, #0
d005641c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056420:	bfac      	ite	ge
d0056422:	f04f 0e01 	movge.w	lr, #1
d0056426:	f04f 0e00 	movlt.w	lr, #0
d005642a:	f1bc 0f00 	cmp.w	ip, #0
d005642e:	d002      	beq.n	d0056436 <clipTriangleToFrustum+0x1da>
d0056430:	f1be 0f00 	cmp.w	lr, #0
d0056434:	d1c9      	bne.n	d00563ca <clipTriangleToFrustum+0x16e>
d0056436:	eef5 6a40 	vcmp.f32	s13, #0.0
d005643a:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d005643e:	ee35 1ae6 	vsub.f32	s2, s11, s13
d0056442:	ee77 1a44 	vsub.f32	s3, s14, s8
d0056446:	eb03 0181 	add.w	r1, r3, r1, lsl #2
d005644a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005644e:	ee36 2a64 	vsub.f32	s4, s12, s9
d0056452:	ee77 2ac5 	vsub.f32	s5, s15, s10
d0056456:	f140 8219 	bpl.w	d005688c <clipTriangleToFrustum+0x630>
d005645a:	f1bc 0f00 	cmp.w	ip, #0
d005645e:	f000 8215 	beq.w	d005688c <clipTriangleToFrustum+0x630>
d0056462:	eec5 3a81 	vdiv.f32	s7, s11, s2
d0056466:	300c      	adds	r0, #12
d0056468:	3201      	adds	r2, #1
d005646a:	4287      	cmp	r7, r0
d005646c:	eea1 4aa3 	vfma.f32	s8, s3, s7
d0056470:	eee2 4a23 	vfma.f32	s9, s4, s7
d0056474:	eea2 5aa3 	vfma.f32	s10, s5, s7
d0056478:	ed81 4a00 	vstr	s8, [r1]
d005647c:	edc1 4a01 	vstr	s9, [r1, #4]
d0056480:	ed81 5a02 	vstr	s10, [r1, #8]
d0056484:	d1ab      	bne.n	d00563de <clipTriangleToFrustum+0x182>
d0056486:	2a02      	cmp	r2, #2
d0056488:	f340 816f 	ble.w	d005676a <clipTriangleToFrustum+0x50e>
d005648c:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d0056490:	461f      	mov	r7, r3
d0056492:	469c      	mov	ip, r3
d0056494:	2100      	movs	r1, #0
d0056496:	0092      	lsls	r2, r2, #2
d0056498:	f1a2 000c 	sub.w	r0, r2, #12
d005649c:	441a      	add	r2, r3
d005649e:	4418      	add	r0, r3
d00564a0:	edd0 7a00 	vldr	s15, [r0]
d00564a4:	ed90 7a02 	vldr	s14, [r0, #8]
d00564a8:	ed90 6a01 	vldr	s12, [r0, #4]
d00564ac:	ee77 6a67 	vsub.f32	s13, s14, s15
d00564b0:	e00a      	b.n	d00564c8 <clipTriangleToFrustum+0x26c>
d00564b2:	3101      	adds	r1, #1
d00564b4:	edc0 7a00 	vstr	s15, [r0]
d00564b8:	ed80 6a01 	vstr	s12, [r0, #4]
d00564bc:	ed80 7a02 	vstr	s14, [r0, #8]
d00564c0:	f10c 0c0c 	add.w	ip, ip, #12
d00564c4:	4562      	cmp	r2, ip
d00564c6:	d056      	beq.n	d0056576 <clipTriangleToFrustum+0x31a>
d00564c8:	eeb0 4a67 	vmov.f32	s8, s15
d00564cc:	eddc 7a00 	vldr	s15, [ip]
d00564d0:	eeb0 5a47 	vmov.f32	s10, s14
d00564d4:	ed9c 7a02 	vldr	s14, [ip, #8]
d00564d8:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00564dc:	eb01 0041 	add.w	r0, r1, r1, lsl #1
d00564e0:	eef0 5a66 	vmov.f32	s11, s13
d00564e4:	ee77 6a67 	vsub.f32	s13, s14, s15
d00564e8:	eb04 0080 	add.w	r0, r4, r0, lsl #2
d00564ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00564f0:	eef0 4a46 	vmov.f32	s9, s12
d00564f4:	ed9c 6a01 	vldr	s12, [ip, #4]
d00564f8:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00564fc:	bfac      	ite	ge
d00564fe:	f04f 0e01 	movge.w	lr, #1
d0056502:	f04f 0e00 	movlt.w	lr, #0
d0056506:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005650a:	bfac      	ite	ge
d005650c:	f04f 0801 	movge.w	r8, #1
d0056510:	f04f 0800 	movlt.w	r8, #0
d0056514:	f1be 0f00 	cmp.w	lr, #0
d0056518:	d002      	beq.n	d0056520 <clipTriangleToFrustum+0x2c4>
d005651a:	f1b8 0f00 	cmp.w	r8, #0
d005651e:	d1c8      	bne.n	d00564b2 <clipTriangleToFrustum+0x256>
d0056520:	eef5 6a40 	vcmp.f32	s13, #0.0
d0056524:	eb01 0041 	add.w	r0, r1, r1, lsl #1
d0056528:	ee77 3aa5 	vadd.f32	s7, s15, s11
d005652c:	ee37 1ac4 	vsub.f32	s2, s15, s8
d0056530:	eb04 0080 	add.w	r0, r4, r0, lsl #2
d0056534:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056538:	ee76 1a64 	vsub.f32	s3, s12, s9
d005653c:	ee73 3ac7 	vsub.f32	s7, s7, s14
d0056540:	ee37 2a45 	vsub.f32	s4, s14, s10
d0056544:	f140 81d1 	bpl.w	d00568ea <clipTriangleToFrustum+0x68e>
d0056548:	f1be 0f00 	cmp.w	lr, #0
d005654c:	f000 81cd 	beq.w	d00568ea <clipTriangleToFrustum+0x68e>
d0056550:	eec5 2aa3 	vdiv.f32	s5, s11, s7
d0056554:	f10c 0c0c 	add.w	ip, ip, #12
d0056558:	3101      	adds	r1, #1
d005655a:	4562      	cmp	r2, ip
d005655c:	eea1 4a22 	vfma.f32	s8, s2, s5
d0056560:	eee1 4aa2 	vfma.f32	s9, s3, s5
d0056564:	eea2 5a22 	vfma.f32	s10, s4, s5
d0056568:	ed80 4a00 	vstr	s8, [r0]
d005656c:	edc0 4a01 	vstr	s9, [r0, #4]
d0056570:	ed80 5a02 	vstr	s10, [r0, #8]
d0056574:	d1a8      	bne.n	d00564c8 <clipTriangleToFrustum+0x26c>
d0056576:	2902      	cmp	r1, #2
d0056578:	f340 80f7 	ble.w	d005676a <clipTriangleToFrustum+0x50e>
d005657c:	eb01 0241 	add.w	r2, r1, r1, lsl #1
d0056580:	2100      	movs	r1, #0
d0056582:	0092      	lsls	r2, r2, #2
d0056584:	f1a2 000c 	sub.w	r0, r2, #12
d0056588:	4422      	add	r2, r4
d005658a:	4420      	add	r0, r4
d005658c:	edd0 7a01 	vldr	s15, [r0, #4]
d0056590:	ed90 7a02 	vldr	s14, [r0, #8]
d0056594:	eef0 6a67 	vmov.f32	s13, s15
d0056598:	ed90 6a00 	vldr	s12, [r0]
d005659c:	eed3 6a07 	vfnms.f32	s13, s6, s14
d00565a0:	e011      	b.n	d00565c6 <clipTriangleToFrustum+0x36a>
d00565a2:	bf00      	nop
d00565a4:	d00699c0 	.word	0xd00699c0
d00565a8:	d00699c4 	.word	0xd00699c4
d00565ac:	f1be 0f00 	cmp.w	lr, #0
d00565b0:	d034      	beq.n	d005661c <clipTriangleToFrustum+0x3c0>
d00565b2:	3101      	adds	r1, #1
d00565b4:	ed80 6a00 	vstr	s12, [r0]
d00565b8:	edc0 7a01 	vstr	s15, [r0, #4]
d00565bc:	ed80 7a02 	vstr	s14, [r0, #8]
d00565c0:	360c      	adds	r6, #12
d00565c2:	4296      	cmp	r6, r2
d00565c4:	d054      	beq.n	d0056670 <clipTriangleToFrustum+0x414>
d00565c6:	eeb0 5a47 	vmov.f32	s10, s14
d00565ca:	ed96 7a02 	vldr	s14, [r6, #8]
d00565ce:	eef0 4a67 	vmov.f32	s9, s15
d00565d2:	edd6 7a01 	vldr	s15, [r6, #4]
d00565d6:	ee63 3a07 	vmul.f32	s7, s6, s14
d00565da:	eb01 0041 	add.w	r0, r1, r1, lsl #1
d00565de:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00565e2:	eef0 5a66 	vmov.f32	s11, s13
d00565e6:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d00565ea:	ee73 6ae7 	vsub.f32	s13, s7, s15
d00565ee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00565f2:	eeb0 4a46 	vmov.f32	s8, s12
d00565f6:	ed96 6a00 	vldr	s12, [r6]
d00565fa:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00565fe:	bfac      	ite	ge
d0056600:	f04f 0c01 	movge.w	ip, #1
d0056604:	f04f 0c00 	movlt.w	ip, #0
d0056608:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005660c:	bfac      	ite	ge
d005660e:	f04f 0e01 	movge.w	lr, #1
d0056612:	f04f 0e00 	movlt.w	lr, #0
d0056616:	f1bc 0f00 	cmp.w	ip, #0
d005661a:	d1c7      	bne.n	d00565ac <clipTriangleToFrustum+0x350>
d005661c:	eef5 6a40 	vcmp.f32	s13, #0.0
d0056620:	eb01 0041 	add.w	r0, r1, r1, lsl #1
d0056624:	ee77 2aa5 	vadd.f32	s5, s15, s11
d0056628:	ee36 1a44 	vsub.f32	s2, s12, s8
d005662c:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d0056630:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056634:	ee77 1ae4 	vsub.f32	s3, s15, s9
d0056638:	ee72 2ae3 	vsub.f32	s5, s5, s7
d005663c:	ee37 2a45 	vsub.f32	s4, s14, s10
d0056640:	f140 8209 	bpl.w	d0056a56 <clipTriangleToFrustum+0x7fa>
d0056644:	f1bc 0f00 	cmp.w	ip, #0
d0056648:	f000 8205 	beq.w	d0056a56 <clipTriangleToFrustum+0x7fa>
d005664c:	eec5 3aa2 	vdiv.f32	s7, s11, s5
d0056650:	360c      	adds	r6, #12
d0056652:	3101      	adds	r1, #1
d0056654:	4296      	cmp	r6, r2
d0056656:	eea1 4a23 	vfma.f32	s8, s2, s7
d005665a:	eee1 4aa3 	vfma.f32	s9, s3, s7
d005665e:	eea2 5a23 	vfma.f32	s10, s4, s7
d0056662:	ed80 4a00 	vstr	s8, [r0]
d0056666:	edc0 4a01 	vstr	s9, [r0, #4]
d005666a:	ed80 5a02 	vstr	s10, [r0, #8]
d005666e:	d1aa      	bne.n	d00565c6 <clipTriangleToFrustum+0x36a>
d0056670:	2902      	cmp	r1, #2
d0056672:	dd7a      	ble.n	d005676a <clipTriangleToFrustum+0x50e>
d0056674:	eb01 0241 	add.w	r2, r1, r1, lsl #1
d0056678:	2600      	movs	r6, #0
d005667a:	0092      	lsls	r2, r2, #2
d005667c:	f1a2 010c 	sub.w	r1, r2, #12
d0056680:	441a      	add	r2, r3
d0056682:	440b      	add	r3, r1
d0056684:	edd3 7a01 	vldr	s15, [r3, #4]
d0056688:	ed93 7a02 	vldr	s14, [r3, #8]
d005668c:	eef0 6a67 	vmov.f32	s13, s15
d0056690:	ed93 6a00 	vldr	s12, [r3]
d0056694:	eee3 6a07 	vfma.f32	s13, s6, s14
d0056698:	e00a      	b.n	d00566b0 <clipTriangleToFrustum+0x454>
d005669a:	b378      	cbz	r0, d00566fc <clipTriangleToFrustum+0x4a0>
d005669c:	3601      	adds	r6, #1
d005669e:	ed83 6a00 	vstr	s12, [r3]
d00566a2:	edc3 7a01 	vstr	s15, [r3, #4]
d00566a6:	ed83 7a02 	vstr	s14, [r3, #8]
d00566aa:	370c      	adds	r7, #12
d00566ac:	4297      	cmp	r7, r2
d00566ae:	d04c      	beq.n	d005674a <clipTriangleToFrustum+0x4ee>
d00566b0:	eef0 4a67 	vmov.f32	s9, s15
d00566b4:	edd7 7a01 	vldr	s15, [r7, #4]
d00566b8:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00566bc:	eb06 0346 	add.w	r3, r6, r6, lsl #1
d00566c0:	eef0 5a66 	vmov.f32	s11, s13
d00566c4:	eef0 6a67 	vmov.f32	s13, s15
d00566c8:	eb04 0383 	add.w	r3, r4, r3, lsl #2
d00566cc:	eeb0 5a47 	vmov.f32	s10, s14
d00566d0:	ed97 7a02 	vldr	s14, [r7, #8]
d00566d4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00566d8:	eee3 6a07 	vfma.f32	s13, s6, s14
d00566dc:	eeb0 4a46 	vmov.f32	s8, s12
d00566e0:	ed97 6a00 	vldr	s12, [r7]
d00566e4:	bfac      	ite	ge
d00566e6:	2101      	movge	r1, #1
d00566e8:	2100      	movlt	r1, #0
d00566ea:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00566ee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00566f2:	bfac      	ite	ge
d00566f4:	2001      	movge	r0, #1
d00566f6:	2000      	movlt	r0, #0
d00566f8:	2900      	cmp	r1, #0
d00566fa:	d1ce      	bne.n	d005669a <clipTriangleToFrustum+0x43e>
d00566fc:	eef5 6a40 	vcmp.f32	s13, #0.0
d0056700:	eb06 0346 	add.w	r3, r6, r6, lsl #1
d0056704:	ee35 1ae6 	vsub.f32	s2, s11, s13
d0056708:	ee76 1a44 	vsub.f32	s3, s12, s8
d005670c:	eb04 0383 	add.w	r3, r4, r3, lsl #2
d0056710:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056714:	ee37 2ae4 	vsub.f32	s4, s15, s9
d0056718:	ee77 2a45 	vsub.f32	s5, s14, s10
d005671c:	f140 81cc 	bpl.w	d0056ab8 <clipTriangleToFrustum+0x85c>
d0056720:	2900      	cmp	r1, #0
d0056722:	f000 81c9 	beq.w	d0056ab8 <clipTriangleToFrustum+0x85c>
d0056726:	eec5 3a81 	vdiv.f32	s7, s11, s2
d005672a:	370c      	adds	r7, #12
d005672c:	3601      	adds	r6, #1
d005672e:	4297      	cmp	r7, r2
d0056730:	eea1 4aa3 	vfma.f32	s8, s3, s7
d0056734:	eee2 4a23 	vfma.f32	s9, s4, s7
d0056738:	eea2 5aa3 	vfma.f32	s10, s5, s7
d005673c:	ed83 4a00 	vstr	s8, [r3]
d0056740:	edc3 4a01 	vstr	s9, [r3, #4]
d0056744:	ed83 5a02 	vstr	s10, [r3, #8]
d0056748:	d1b2      	bne.n	d00566b0 <clipTriangleToFrustum+0x454>
d005674a:	2e02      	cmp	r6, #2
d005674c:	dd0d      	ble.n	d005676a <clipTriangleToFrustum+0x50e>
d005674e:	eb06 0c46 	add.w	ip, r6, r6, lsl #1
d0056752:	2300      	movs	r3, #0
d0056754:	ea4f 0c8c 	mov.w	ip, ip, lsl #2
d0056758:	18e2      	adds	r2, r4, r3
d005675a:	18ef      	adds	r7, r5, r3
d005675c:	330c      	adds	r3, #12
d005675e:	ca07      	ldmia	r2, {r0, r1, r2}
d0056760:	459c      	cmp	ip, r3
d0056762:	e887 0007 	stmia.w	r7, {r0, r1, r2}
d0056766:	d1f7      	bne.n	d0056758 <clipTriangleToFrustum+0x4fc>
d0056768:	e000      	b.n	d005676c <clipTriangleToFrustum+0x510>
d005676a:	2600      	movs	r6, #0
d005676c:	4630      	mov	r0, r6
d005676e:	b00a      	add	sp, #40	; 0x28
d0056770:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0056774:	eeb5 4a40 	vcmp.f32	s8, #0.0
d0056778:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005677c:	f140 80e6 	bpl.w	d005694c <clipTriangleToFrustum+0x6f0>
d0056780:	2a00      	cmp	r2, #0
d0056782:	f000 80e3 	beq.w	d005694c <clipTriangleToFrustum+0x6f0>
d0056786:	ee36 1ac7 	vsub.f32	s2, s13, s14
d005678a:	2201      	movs	r2, #1
d005678c:	ee75 1a63 	vsub.f32	s3, s10, s7
d0056790:	ee34 2ae5 	vsub.f32	s4, s9, s11
d0056794:	eec6 2a01 	vdiv.f32	s5, s12, s2
d0056798:	ee37 6a66 	vsub.f32	s12, s14, s13
d005679c:	eee2 5a82 	vfma.f32	s11, s5, s4
d00567a0:	eee2 6a86 	vfma.f32	s13, s5, s12
d00567a4:	eee2 3aa1 	vfma.f32	s7, s5, s3
d00567a8:	edc4 5a01 	vstr	s11, [r4, #4]
d00567ac:	edc4 6a02 	vstr	s13, [r4, #8]
d00567b0:	edc4 3a00 	vstr	s7, [r4]
d00567b4:	edd3 2a05 	vldr	s5, [r3, #20]
d00567b8:	edd3 5a03 	vldr	s11, [r3, #12]
d00567bc:	ee72 6ae7 	vsub.f32	s13, s5, s15
d00567c0:	ed93 6a04 	vldr	s12, [r3, #16]
d00567c4:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00567c8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00567cc:	bfac      	ite	ge
d00567ce:	4616      	movge	r6, r2
d00567d0:	2600      	movlt	r6, #0
d00567d2:	eef5 6a40 	vcmp.f32	s13, #0.0
d00567d6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00567da:	f140 80de 	bpl.w	d005699a <clipTriangleToFrustum+0x73e>
d00567de:	2900      	cmp	r1, #0
d00567e0:	f000 80db 	beq.w	d005699a <clipTriangleToFrustum+0x73e>
d00567e4:	ee37 1a62 	vsub.f32	s2, s14, s5
d00567e8:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d00567ec:	ee75 1ac5 	vsub.f32	s3, s11, s10
d00567f0:	4630      	mov	r0, r6
d00567f2:	ee36 2a64 	vsub.f32	s4, s12, s9
d00567f6:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d00567fa:	eec4 3a01 	vdiv.f32	s7, s8, s2
d00567fe:	3201      	adds	r2, #1
d0056800:	ee32 4ac7 	vsub.f32	s8, s5, s14
d0056804:	eea1 5aa3 	vfma.f32	s10, s3, s7
d0056808:	eea4 7a23 	vfma.f32	s14, s8, s7
d005680c:	eee2 4a23 	vfma.f32	s9, s4, s7
d0056810:	ed81 5a00 	vstr	s10, [r1]
d0056814:	ed81 7a02 	vstr	s14, [r1, #8]
d0056818:	edc1 4a01 	vstr	s9, [r1, #4]
d005681c:	ed93 7a08 	vldr	s14, [r3, #32]
d0056820:	ed93 4a06 	vldr	s8, [r3, #24]
d0056824:	ee37 5a67 	vsub.f32	s10, s14, s15
d0056828:	edd3 4a07 	vldr	s9, [r3, #28]
d005682c:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d0056830:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056834:	bfac      	ite	ge
d0056836:	2101      	movge	r1, #1
d0056838:	2100      	movlt	r1, #0
d005683a:	eeb5 5a40 	vcmp.f32	s10, #0.0
d005683e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056842:	f140 80d9 	bpl.w	d00569f8 <clipTriangleToFrustum+0x79c>
d0056846:	2800      	cmp	r0, #0
d0056848:	f000 80d6 	beq.w	d00569f8 <clipTriangleToFrustum+0x79c>
d005684c:	ee77 3ac7 	vsub.f32	s7, s15, s14
d0056850:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0056854:	ee34 4a65 	vsub.f32	s8, s8, s11
d0056858:	3201      	adds	r2, #1
d005685a:	ee74 4ac6 	vsub.f32	s9, s9, s12
d005685e:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d0056862:	ee73 3aa6 	vadd.f32	s7, s7, s13
d0056866:	ee37 7a62 	vsub.f32	s14, s14, s5
d005686a:	eef0 7a62 	vmov.f32	s15, s5
d005686e:	ee86 5aa3 	vdiv.f32	s10, s13, s7
d0056872:	eee4 5a05 	vfma.f32	s11, s8, s10
d0056876:	eea4 6a85 	vfma.f32	s12, s9, s10
d005687a:	eee7 7a05 	vfma.f32	s15, s14, s10
d005687e:	edc1 5a00 	vstr	s11, [r1]
d0056882:	ed81 6a01 	vstr	s12, [r1, #4]
d0056886:	edc1 7a02 	vstr	s15, [r1, #8]
d005688a:	e588      	b.n	d005639e <clipTriangleToFrustum+0x142>
d005688c:	eef5 5a40 	vcmp.f32	s11, #0.0
d0056890:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0056894:	ee35 1ae6 	vsub.f32	s2, s11, s13
d0056898:	eb03 0c81 	add.w	ip, r3, r1, lsl #2
d005689c:	ee77 1a44 	vsub.f32	s3, s14, s8
d00568a0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00568a4:	4661      	mov	r1, ip
d00568a6:	ee36 2a64 	vsub.f32	s4, s12, s9
d00568aa:	ee77 2ac5 	vsub.f32	s5, s15, s10
d00568ae:	f10c 0c0c 	add.w	ip, ip, #12
d00568b2:	f57f ad91 	bpl.w	d00563d8 <clipTriangleToFrustum+0x17c>
d00568b6:	f1be 0f00 	cmp.w	lr, #0
d00568ba:	f43f ad8d 	beq.w	d00563d8 <clipTriangleToFrustum+0x17c>
d00568be:	eec5 3a81 	vdiv.f32	s7, s11, s2
d00568c2:	3202      	adds	r2, #2
d00568c4:	eea1 4aa3 	vfma.f32	s8, s3, s7
d00568c8:	eee2 4a23 	vfma.f32	s9, s4, s7
d00568cc:	eea2 5aa3 	vfma.f32	s10, s5, s7
d00568d0:	ed81 4a00 	vstr	s8, [r1]
d00568d4:	edc1 4a01 	vstr	s9, [r1, #4]
d00568d8:	ed81 5a02 	vstr	s10, [r1, #8]
d00568dc:	ed8c 7a00 	vstr	s14, [ip]
d00568e0:	ed8c 6a01 	vstr	s12, [ip, #4]
d00568e4:	edcc 7a02 	vstr	s15, [ip, #8]
d00568e8:	e576      	b.n	d00563d8 <clipTriangleToFrustum+0x17c>
d00568ea:	eef5 5a40 	vcmp.f32	s11, #0.0
d00568ee:	eb01 0041 	add.w	r0, r1, r1, lsl #1
d00568f2:	ee77 3aa5 	vadd.f32	s7, s15, s11
d00568f6:	eb04 0e80 	add.w	lr, r4, r0, lsl #2
d00568fa:	ee37 1ac4 	vsub.f32	s2, s15, s8
d00568fe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056902:	4670      	mov	r0, lr
d0056904:	ee76 1a64 	vsub.f32	s3, s12, s9
d0056908:	ee73 3ac7 	vsub.f32	s7, s7, s14
d005690c:	f10e 0e0c 	add.w	lr, lr, #12
d0056910:	ee37 2a45 	vsub.f32	s4, s14, s10
d0056914:	f57f add4 	bpl.w	d00564c0 <clipTriangleToFrustum+0x264>
d0056918:	f1b8 0f00 	cmp.w	r8, #0
d005691c:	f43f add0 	beq.w	d00564c0 <clipTriangleToFrustum+0x264>
d0056920:	eec5 2aa3 	vdiv.f32	s5, s11, s7
d0056924:	3102      	adds	r1, #2
d0056926:	eea1 4a22 	vfma.f32	s8, s2, s5
d005692a:	eee1 4aa2 	vfma.f32	s9, s3, s5
d005692e:	eea2 5a22 	vfma.f32	s10, s4, s5
d0056932:	ed80 4a00 	vstr	s8, [r0]
d0056936:	edc0 4a01 	vstr	s9, [r0, #4]
d005693a:	ed80 5a02 	vstr	s10, [r0, #8]
d005693e:	edce 7a00 	vstr	s15, [lr]
d0056942:	ed8e 6a01 	vstr	s12, [lr, #4]
d0056946:	ed8e 7a02 	vstr	s14, [lr, #8]
d005694a:	e5b9      	b.n	d00564c0 <clipTriangleToFrustum+0x264>
d005694c:	eeb5 6a40 	vcmp.f32	s12, #0.0
d0056950:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056954:	f140 80de 	bpl.w	d0056b14 <clipTriangleToFrustum+0x8b8>
d0056958:	2900      	cmp	r1, #0
d005695a:	f000 80db 	beq.w	d0056b14 <clipTriangleToFrustum+0x8b8>
d005695e:	ee36 1ac7 	vsub.f32	s2, s13, s14
d0056962:	2202      	movs	r2, #2
d0056964:	ee75 1a63 	vsub.f32	s3, s10, s7
d0056968:	ed84 5a03 	vstr	s10, [r4, #12]
d005696c:	ee34 2ae5 	vsub.f32	s4, s9, s11
d0056970:	edc4 4a04 	vstr	s9, [r4, #16]
d0056974:	eec6 2a01 	vdiv.f32	s5, s12, s2
d0056978:	ed84 7a05 	vstr	s14, [r4, #20]
d005697c:	ee37 6a66 	vsub.f32	s12, s14, s13
d0056980:	eee2 3aa1 	vfma.f32	s7, s5, s3
d0056984:	eee2 5a82 	vfma.f32	s11, s5, s4
d0056988:	eee2 6a86 	vfma.f32	s13, s5, s12
d005698c:	edc4 3a00 	vstr	s7, [r4]
d0056990:	edc4 5a01 	vstr	s11, [r4, #4]
d0056994:	edc4 6a02 	vstr	s13, [r4, #8]
d0056998:	e4c2      	b.n	d0056320 <clipTriangleToFrustum+0xc4>
d005699a:	eeb5 4ac0 	vcmpe.f32	s8, #0.0
d005699e:	f006 0001 	and.w	r0, r6, #1
d00569a2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00569a6:	bf58      	it	pl
d00569a8:	2000      	movpl	r0, #0
d00569aa:	2800      	cmp	r0, #0
d00569ac:	f000 80b4 	beq.w	d0056b18 <clipTriangleToFrustum+0x8bc>
d00569b0:	ee37 1a62 	vsub.f32	s2, s14, s5
d00569b4:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d00569b8:	ee75 1ac5 	vsub.f32	s3, s11, s10
d00569bc:	3202      	adds	r2, #2
d00569be:	ee36 2a64 	vsub.f32	s4, s12, s9
d00569c2:	eb04 0681 	add.w	r6, r4, r1, lsl #2
d00569c6:	eec4 3a01 	vdiv.f32	s7, s8, s2
d00569ca:	4631      	mov	r1, r6
d00569cc:	edc6 5a03 	vstr	s11, [r6, #12]
d00569d0:	ed86 6a04 	vstr	s12, [r6, #16]
d00569d4:	310c      	adds	r1, #12
d00569d6:	edc6 2a05 	vstr	s5, [r6, #20]
d00569da:	ee32 4ac7 	vsub.f32	s8, s5, s14
d00569de:	eea1 5aa3 	vfma.f32	s10, s3, s7
d00569e2:	eee2 4a23 	vfma.f32	s9, s4, s7
d00569e6:	eea4 7a23 	vfma.f32	s14, s8, s7
d00569ea:	ed86 5a00 	vstr	s10, [r6]
d00569ee:	edc6 4a01 	vstr	s9, [r6, #4]
d00569f2:	ed86 7a02 	vstr	s14, [r6, #8]
d00569f6:	e4b3      	b.n	d0056360 <clipTriangleToFrustum+0x104>
d00569f8:	eef5 6a40 	vcmp.f32	s13, #0.0
d00569fc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056a00:	f57f accd 	bpl.w	d005639e <clipTriangleToFrustum+0x142>
d0056a04:	2900      	cmp	r1, #0
d0056a06:	f43f acca 	beq.w	d005639e <clipTriangleToFrustum+0x142>
d0056a0a:	ee77 7ac7 	vsub.f32	s15, s15, s14
d0056a0e:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0056a12:	ee74 1a65 	vsub.f32	s3, s8, s11
d0056a16:	3202      	adds	r2, #2
d0056a18:	ee34 2ac6 	vsub.f32	s4, s9, s12
d0056a1c:	eb04 0081 	add.w	r0, r4, r1, lsl #2
d0056a20:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0056a24:	ee77 3a62 	vsub.f32	s7, s14, s5
d0056a28:	ed80 4a03 	vstr	s8, [r0, #12]
d0056a2c:	edc0 4a04 	vstr	s9, [r0, #16]
d0056a30:	ee86 5aa7 	vdiv.f32	s10, s13, s15
d0056a34:	ed80 7a05 	vstr	s14, [r0, #20]
d0056a38:	eef0 7a62 	vmov.f32	s15, s5
d0056a3c:	eee1 5a85 	vfma.f32	s11, s3, s10
d0056a40:	eea2 6a05 	vfma.f32	s12, s4, s10
d0056a44:	eee3 7a85 	vfma.f32	s15, s7, s10
d0056a48:	edc0 5a00 	vstr	s11, [r0]
d0056a4c:	ed80 6a01 	vstr	s12, [r0, #4]
d0056a50:	edc0 7a02 	vstr	s15, [r0, #8]
d0056a54:	e4a3      	b.n	d005639e <clipTriangleToFrustum+0x142>
d0056a56:	eef5 5a40 	vcmp.f32	s11, #0.0
d0056a5a:	eb01 0041 	add.w	r0, r1, r1, lsl #1
d0056a5e:	ee77 2aa5 	vadd.f32	s5, s15, s11
d0056a62:	eb03 0c80 	add.w	ip, r3, r0, lsl #2
d0056a66:	ee36 1a44 	vsub.f32	s2, s12, s8
d0056a6a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056a6e:	4660      	mov	r0, ip
d0056a70:	ee77 1ae4 	vsub.f32	s3, s15, s9
d0056a74:	ee72 3ae3 	vsub.f32	s7, s5, s7
d0056a78:	f10c 0c0c 	add.w	ip, ip, #12
d0056a7c:	ee37 2a45 	vsub.f32	s4, s14, s10
d0056a80:	f57f ad9e 	bpl.w	d00565c0 <clipTriangleToFrustum+0x364>
d0056a84:	f1be 0f00 	cmp.w	lr, #0
d0056a88:	f43f ad9a 	beq.w	d00565c0 <clipTriangleToFrustum+0x364>
d0056a8c:	eec5 2aa3 	vdiv.f32	s5, s11, s7
d0056a90:	3102      	adds	r1, #2
d0056a92:	eea1 4a22 	vfma.f32	s8, s2, s5
d0056a96:	eee1 4aa2 	vfma.f32	s9, s3, s5
d0056a9a:	eea2 5a22 	vfma.f32	s10, s4, s5
d0056a9e:	ed80 4a00 	vstr	s8, [r0]
d0056aa2:	edc0 4a01 	vstr	s9, [r0, #4]
d0056aa6:	ed80 5a02 	vstr	s10, [r0, #8]
d0056aaa:	ed8c 6a00 	vstr	s12, [ip]
d0056aae:	edcc 7a01 	vstr	s15, [ip, #4]
d0056ab2:	ed8c 7a02 	vstr	s14, [ip, #8]
d0056ab6:	e583      	b.n	d00565c0 <clipTriangleToFrustum+0x364>
d0056ab8:	eef5 5a40 	vcmp.f32	s11, #0.0
d0056abc:	eb06 0346 	add.w	r3, r6, r6, lsl #1
d0056ac0:	ee35 1ae6 	vsub.f32	s2, s11, s13
d0056ac4:	eb04 0183 	add.w	r1, r4, r3, lsl #2
d0056ac8:	ee76 1a44 	vsub.f32	s3, s12, s8
d0056acc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056ad0:	460b      	mov	r3, r1
d0056ad2:	ee37 2ae4 	vsub.f32	s4, s15, s9
d0056ad6:	ee77 2a45 	vsub.f32	s5, s14, s10
d0056ada:	f101 010c 	add.w	r1, r1, #12
d0056ade:	f57f ade4 	bpl.w	d00566aa <clipTriangleToFrustum+0x44e>
d0056ae2:	2800      	cmp	r0, #0
d0056ae4:	f43f ade1 	beq.w	d00566aa <clipTriangleToFrustum+0x44e>
d0056ae8:	eec5 3a81 	vdiv.f32	s7, s11, s2
d0056aec:	3602      	adds	r6, #2
d0056aee:	eea1 4aa3 	vfma.f32	s8, s3, s7
d0056af2:	eee2 4a23 	vfma.f32	s9, s4, s7
d0056af6:	eea2 5aa3 	vfma.f32	s10, s5, s7
d0056afa:	ed83 4a00 	vstr	s8, [r3]
d0056afe:	edc3 4a01 	vstr	s9, [r3, #4]
d0056b02:	ed83 5a02 	vstr	s10, [r3, #8]
d0056b06:	ed81 6a00 	vstr	s12, [r1]
d0056b0a:	edc1 7a01 	vstr	s15, [r1, #4]
d0056b0e:	ed81 7a02 	vstr	s14, [r1, #8]
d0056b12:	e5ca      	b.n	d00566aa <clipTriangleToFrustum+0x44e>
d0056b14:	2200      	movs	r2, #0
d0056b16:	e403      	b.n	d0056320 <clipTriangleToFrustum+0xc4>
d0056b18:	4630      	mov	r0, r6
d0056b1a:	e421      	b.n	d0056360 <clipTriangleToFrustum+0x104>

d0056b1c <submitClippedTri>:
d0056b1c:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d0056b20:	eef4 7ac1 	vcmpe.f32	s15, s2
d0056b24:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0056b28:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056b2c:	eef4 7ae2 	vcmpe.f32	s15, s5
d0056b30:	bfac      	ite	ge
d0056b32:	2401      	movge	r4, #1
d0056b34:	2400      	movlt	r4, #0
d0056b36:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056b3a:	ed2d 8b02 	vpush	{d8}
d0056b3e:	bfa8      	it	ge
d0056b40:	f044 0401 	orrge.w	r4, r4, #1
d0056b44:	b08d      	sub	sp, #52	; 0x34
d0056b46:	9301      	str	r3, [sp, #4]
d0056b48:	b924      	cbnz	r4, d0056b54 <submitClippedTri+0x38>
d0056b4a:	eef4 7ac4 	vcmpe.f32	s15, s8
d0056b4e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056b52:	db04      	blt.n	d0056b5e <submitClippedTri+0x42>
d0056b54:	b00d      	add	sp, #52	; 0x34
d0056b56:	ecbd 8b02 	vpop	{d8}
d0056b5a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0056b5e:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0056b62:	ed90 7a14 	vldr	s14, [r0, #80]	; 0x50
d0056b66:	eef6 8a00 	vmov.f32	s17, #96	; 0x3f000000  0.5
d0056b6a:	edd0 6a12 	vldr	s13, [r0, #72]	; 0x48
d0056b6e:	edd0 7a13 	vldr	s15, [r0, #76]	; 0x4c
d0056b72:	ee86 8a01 	vdiv.f32	s16, s12, s2
d0056b76:	ee86 5a22 	vdiv.f32	s10, s12, s5
d0056b7a:	eec6 5a04 	vdiv.f32	s11, s12, s8
d0056b7e:	ee37 7a28 	vadd.f32	s14, s14, s17
d0056b82:	ee68 0a20 	vmul.f32	s1, s16, s1
d0056b86:	ee77 7aa8 	vadd.f32	s15, s15, s17
d0056b8a:	ee28 0a00 	vmul.f32	s0, s16, s0
d0056b8e:	eeb0 8a67 	vmov.f32	s16, s15
d0056b92:	ee65 1a21 	vmul.f32	s3, s10, s3
d0056b96:	ee25 2a02 	vmul.f32	s4, s10, s4
d0056b9a:	eeb0 5a47 	vmov.f32	s10, s14
d0056b9e:	eea6 8a80 	vfma.f32	s16, s13, s0
d0056ba2:	eea6 5ae0 	vfms.f32	s10, s13, s1
d0056ba6:	ee65 3aa3 	vmul.f32	s7, s11, s7
d0056baa:	ee25 3a83 	vmul.f32	s6, s11, s6
d0056bae:	eefd 5ac8 	vcvt.s32.f32	s11, s16
d0056bb2:	eef0 0a45 	vmov.f32	s1, s10
d0056bb6:	eeb0 5a67 	vmov.f32	s10, s15
d0056bba:	ee15 ba90 	vmov	fp, s11
d0056bbe:	eee6 7a83 	vfma.f32	s15, s13, s6
d0056bc2:	eea6 5aa1 	vfma.f32	s10, s13, s3
d0056bc6:	eef0 1a47 	vmov.f32	s3, s14
d0056bca:	eea6 7ae3 	vfms.f32	s14, s13, s7
d0056bce:	eee6 1ac2 	vfms.f32	s3, s13, s4
d0056bd2:	eefd 6ae0 	vcvt.s32.f32	s13, s1
d0056bd6:	eebd 5ac5 	vcvt.s32.f32	s10, s10
d0056bda:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0056bde:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0056be2:	ee16 6a90 	vmov	r6, s13
d0056be6:	ee15 3a10 	vmov	r3, s10
d0056bea:	eefd 6ae1 	vcvt.s32.f32	s13, s3
d0056bee:	ee17 4a10 	vmov	r4, s14
d0056bf2:	eba3 080b 	sub.w	r8, r3, fp
d0056bf6:	ee17 3a90 	vmov	r3, s15
d0056bfa:	ee16 ca90 	vmov	ip, s13
d0056bfe:	1ba7      	subs	r7, r4, r6
d0056c00:	eba3 0e0b 	sub.w	lr, r3, fp
d0056c04:	ebac 0506 	sub.w	r5, ip, r6
d0056c08:	fb07 f708 	mul.w	r7, r7, r8
d0056c0c:	fb0e 7515 	mls	r5, lr, r5, r7
d0056c10:	2d00      	cmp	r5, #0
d0056c12:	dd9f      	ble.n	d0056b54 <submitClippedTri+0x38>
d0056c14:	f8df 9188 	ldr.w	r9, [pc, #392]	; d0056da0 <submitClippedTri+0x284>
d0056c18:	f8d9 5000 	ldr.w	r5, [r9]
d0056c1c:	f5b5 5f00 	cmp.w	r5, #8192	; 0x2000
d0056c20:	da98      	bge.n	d0056b54 <submitClippedTri+0x38>
d0056c22:	4f5c      	ldr	r7, [pc, #368]	; (d0056d94 <submitClippedTri+0x278>)
d0056c24:	ea4f 1e85 	mov.w	lr, r5, lsl #6
d0056c28:	1c6b      	adds	r3, r5, #1
d0056c2a:	eddf 5a5b 	vldr	s11, [pc, #364]	; d0056d98 <submitClippedTri+0x27c>
d0056c2e:	eb07 1585 	add.w	r5, r7, r5, lsl #6
d0056c32:	f10e 0808 	add.w	r8, lr, #8
d0056c36:	9302      	str	r3, [sp, #8]
d0056c38:	ee15 3a10 	vmov	r3, s10
d0056c3c:	f847 b00e 	str.w	fp, [r7, lr]
d0056c40:	f10e 0a10 	add.w	sl, lr, #16
d0056c44:	606e      	str	r6, [r5, #4]
d0056c46:	b236      	sxth	r6, r6
d0056c48:	f847 3008 	str.w	r3, [r7, r8]
d0056c4c:	ee17 3a90 	vmov	r3, s15
d0056c50:	44b8      	add	r8, r7
d0056c52:	eb07 0b0a 	add.w	fp, r7, sl
d0056c56:	eddf 6a51 	vldr	s13, [pc, #324]	; d0056d9c <submitClippedTri+0x280>
d0056c5a:	45b4      	cmp	ip, r6
d0056c5c:	f8c8 c004 	str.w	ip, [r8, #4]
d0056c60:	46b0      	mov	r8, r6
d0056c62:	f847 300a 	str.w	r3, [r7, sl]
d0056c66:	9b01      	ldr	r3, [sp, #4]
d0056c68:	ed8b 7a01 	vstr	s14, [fp, #4]
d0056c6c:	f885 3036 	strb.w	r3, [r5, #54]	; 0x36
d0056c70:	f885 1034 	strb.w	r1, [r5, #52]	; 0x34
d0056c74:	f885 2035 	strb.w	r2, [r5, #53]	; 0x35
d0056c78:	edc5 4a07 	vstr	s9, [r5, #28]
d0056c7c:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0056c80:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0056c84:	ee31 7a47 	vsub.f32	s14, s2, s14
d0056c88:	9b02      	ldr	r3, [sp, #8]
d0056c8a:	f8c9 3000 	str.w	r3, [r9]
d0056c8e:	ee27 7a27 	vmul.f32	s14, s14, s15
d0056c92:	fe87 7a25 	vmaxnm.f32	s14, s14, s11
d0056c96:	fe87 7a46 	vminnm.f32	s14, s14, s12
d0056c9a:	ee27 7a26 	vmul.f32	s14, s14, s13
d0056c9e:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0056ca2:	ee17 3a10 	vmov	r3, s14
d0056ca6:	842b      	strh	r3, [r5, #32]
d0056ca8:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0056cac:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0056cb0:	ee32 7ac7 	vsub.f32	s14, s5, s14
d0056cb4:	ee27 7a27 	vmul.f32	s14, s14, s15
d0056cb8:	fe87 7a25 	vmaxnm.f32	s14, s14, s11
d0056cbc:	fe87 7a46 	vminnm.f32	s14, s14, s12
d0056cc0:	ee27 7a26 	vmul.f32	s14, s14, s13
d0056cc4:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0056cc8:	ee17 3a10 	vmov	r3, s14
d0056ccc:	846b      	strh	r3, [r5, #34]	; 0x22
d0056cce:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d0056cd2:	ed90 7a0f 	vldr	s14, [r0, #60]	; 0x3c
d0056cd6:	ee74 7a67 	vsub.f32	s15, s8, s15
d0056cda:	ed85 1a0a 	vstr	s2, [r5, #40]	; 0x28
d0056cde:	edc5 2a0b 	vstr	s5, [r5, #44]	; 0x2c
d0056ce2:	ed85 4a0c 	vstr	s8, [r5, #48]	; 0x30
d0056ce6:	ee67 7a87 	vmul.f32	s15, s15, s14
d0056cea:	fec7 7aa5 	vmaxnm.f32	s15, s15, s11
d0056cee:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d0056cf2:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0056cf6:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0056cfa:	ee17 3a90 	vmov	r3, s15
d0056cfe:	84ab      	strh	r3, [r5, #36]	; 0x24
d0056d00:	db42      	blt.n	d0056d88 <submitClippedTri+0x26c>
d0056d02:	4633      	mov	r3, r6
d0056d04:	872e      	strh	r6, [r5, #56]	; 0x38
d0056d06:	42a3      	cmp	r3, r4
d0056d08:	dd02      	ble.n	d0056d10 <submitClippedTri+0x1f4>
d0056d0a:	eb07 030e 	add.w	r3, r7, lr
d0056d0e:	871c      	strh	r4, [r3, #56]	; 0x38
d0056d10:	45b4      	cmp	ip, r6
d0056d12:	dc31      	bgt.n	d0056d78 <submitClippedTri+0x25c>
d0056d14:	eb07 030e 	add.w	r3, r7, lr
d0056d18:	875e      	strh	r6, [r3, #58]	; 0x3a
d0056d1a:	45a0      	cmp	r8, r4
d0056d1c:	da02      	bge.n	d0056d24 <submitClippedTri+0x208>
d0056d1e:	eb07 030e 	add.w	r3, r7, lr
d0056d22:	875c      	strh	r4, [r3, #58]	; 0x3a
d0056d24:	eb07 030e 	add.w	r3, r7, lr
d0056d28:	f9b3 2038 	ldrsh.w	r2, [r3, #56]	; 0x38
d0056d2c:	2a00      	cmp	r2, #0
d0056d2e:	da01      	bge.n	d0056d34 <submitClippedTri+0x218>
d0056d30:	2200      	movs	r2, #0
d0056d32:	871a      	strh	r2, [r3, #56]	; 0x38
d0056d34:	eb07 030e 	add.w	r3, r7, lr
d0056d38:	f9b3 203a 	ldrsh.w	r2, [r3, #58]	; 0x3a
d0056d3c:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d0056d40:	db02      	blt.n	d0056d48 <submitClippedTri+0x22c>
d0056d42:	f240 123f 	movw	r2, #319	; 0x13f
d0056d46:	875a      	strh	r2, [r3, #58]	; 0x3a
d0056d48:	eb07 010e 	add.w	r1, r7, lr
d0056d4c:	4477      	add	r7, lr
d0056d4e:	f9b1 3038 	ldrsh.w	r3, [r1, #56]	; 0x38
d0056d52:	2b00      	cmp	r3, #0
d0056d54:	bfb8      	it	lt
d0056d56:	331f      	addlt	r3, #31
d0056d58:	115a      	asrs	r2, r3, #5
d0056d5a:	f9b7 303a 	ldrsh.w	r3, [r7, #58]	; 0x3a
d0056d5e:	2b00      	cmp	r3, #0
d0056d60:	f881 203c 	strb.w	r2, [r1, #60]	; 0x3c
d0056d64:	bfb8      	it	lt
d0056d66:	331f      	addlt	r3, #31
d0056d68:	115b      	asrs	r3, r3, #5
d0056d6a:	f887 303d 	strb.w	r3, [r7, #61]	; 0x3d
d0056d6e:	b00d      	add	sp, #52	; 0x34
d0056d70:	ecbd 8b02 	vpop	{d8}
d0056d74:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0056d78:	fa0f fc8c 	sxth.w	ip, ip
d0056d7c:	eb07 030e 	add.w	r3, r7, lr
d0056d80:	46e0      	mov	r8, ip
d0056d82:	f8a3 c03a 	strh.w	ip, [r3, #58]	; 0x3a
d0056d86:	e7c8      	b.n	d0056d1a <submitClippedTri+0x1fe>
d0056d88:	fa0f f28c 	sxth.w	r2, ip
d0056d8c:	4613      	mov	r3, r2
d0056d8e:	872a      	strh	r2, [r5, #56]	; 0x38
d0056d90:	e7b9      	b.n	d0056d06 <submitClippedTri+0x1ea>
d0056d92:	bf00      	nop
d0056d94:	d00699e0 	.word	0xd00699e0
d0056d98:	00000000 	.word	0x00000000
d0056d9c:	477fff00 	.word	0x477fff00
d0056da0:	d00699cc 	.word	0xd00699cc

d0056da4 <getRenderTriCount>:
d0056da4:	4b01      	ldr	r3, [pc, #4]	; (d0056dac <getRenderTriCount+0x8>)
d0056da6:	6818      	ldr	r0, [r3, #0]
d0056da8:	4770      	bx	lr
d0056daa:	bf00      	nop
d0056dac:	d00699cc 	.word	0xd00699cc

d0056db0 <drawFakeHorizonDots>:
d0056db0:	2800      	cmp	r0, #0
d0056db2:	f000 8107 	beq.w	d0056fc4 <drawFakeHorizonDots+0x214>
d0056db6:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0056dba:	4699      	mov	r9, r3
d0056dbc:	ed2d 8b10 	vpush	{d8-d15}
d0056dc0:	b085      	sub	sp, #20
d0056dc2:	2b00      	cmp	r3, #0
d0056dc4:	f000 80f9 	beq.w	d0056fba <drawFakeHorizonDots+0x20a>
d0056dc8:	4617      	mov	r7, r2
d0056dca:	ed90 9a02 	vldr	s18, [r0, #8]
d0056dce:	edd0 8a00 	vldr	s17, [r0]
d0056dd2:	4606      	mov	r6, r0
d0056dd4:	2f02      	cmp	r7, #2
d0056dd6:	ed90 6a01 	vldr	s12, [r0, #4]
d0056dda:	ed90 da07 	vldr	s26, [r0, #28]
d0056dde:	460a      	mov	r2, r1
d0056de0:	bfb8      	it	lt
d0056de2:	2702      	movlt	r7, #2
d0056de4:	edd0 ca0a 	vldr	s25, [r0, #40]	; 0x28
d0056de8:	edd0 6a0d 	vldr	s13, [r0, #52]	; 0x34
d0056dec:	ee30 ba46 	vsub.f32	s22, s0, s12
d0056df0:	ee07 7a90 	vmov	s15, r7
d0056df4:	ed90 fa06 	vldr	s30, [r0, #24]
d0056df8:	edd0 ea08 	vldr	s29, [r0, #32]
d0056dfc:	f06f 0311 	mvn.w	r3, #17
d0056e00:	eeb8 8ae7 	vcvt.f32.s32	s16, s15
d0056e04:	ed90 ea09 	vldr	s28, [r0, #36]	; 0x24
d0056e08:	edd0 da0b 	vldr	s27, [r0, #44]	; 0x2c
d0056e0c:	ee2b da0d 	vmul.f32	s26, s22, s26
d0056e10:	ed90 ca0c 	vldr	s24, [r0, #48]	; 0x30
d0056e14:	ee6b ca2c 	vmul.f32	s25, s22, s25
d0056e18:	ee89 7a08 	vdiv.f32	s14, s18, s16
d0056e1c:	edd0 ba0e 	vldr	s23, [r0, #56]	; 0x38
d0056e20:	eddf 5a69 	vldr	s11, [pc, #420]	; d0056fc8 <drawFakeHorizonDots+0x218>
d0056e24:	4d69      	ldr	r5, [pc, #420]	; (d0056fcc <drawFakeHorizonDots+0x21c>)
d0056e26:	4c6a      	ldr	r4, [pc, #424]	; (d0056fd0 <drawFakeHorizonDots+0x220>)
d0056e28:	eddf 9a6a 	vldr	s19, [pc, #424]	; d0056fd4 <drawFakeHorizonDots+0x224>
d0056e2c:	eec8 7a88 	vdiv.f32	s15, s17, s16
d0056e30:	9302      	str	r3, [sp, #8]
d0056e32:	f8df b1a8 	ldr.w	fp, [pc, #424]	; d0056fdc <drawFakeHorizonDots+0x22c>
d0056e36:	4623      	mov	r3, r4
d0056e38:	ee28 8a25 	vmul.f32	s16, s16, s11
d0056e3c:	ee2b ba26 	vmul.f32	s22, s22, s13
d0056e40:	ee68 9a29 	vmul.f32	s19, s16, s19
d0056e44:	febb 7a47 	vrintm.f32	s14, s14
d0056e48:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0056e4c:	ee17 0a10 	vmov	r0, s14
d0056e50:	fefb 7a67 	vrintm.f32	s15, s15
d0056e54:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0056e58:	3812      	subs	r0, #18
d0056e5a:	ee17 1a90 	vmov	r1, s15
d0056e5e:	fb05 f500 	mul.w	r5, r5, r0
d0056e62:	fb00 f007 	mul.w	r0, r0, r7
d0056e66:	fb04 5a01 	mla	sl, r4, r1, r5
d0056e6a:	3912      	subs	r1, #18
d0056e6c:	9001      	str	r0, [sp, #4]
d0056e6e:	fb07 f101 	mul.w	r1, r7, r1
d0056e72:	9103      	str	r1, [sp, #12]
d0056e74:	eddd 7a01 	vldr	s15, [sp, #4]
d0056e78:	ee39 aa08 	vadd.f32	s20, s18, s16
d0056e7c:	9902      	ldr	r1, [sp, #8]
d0056e7e:	ee78 aa88 	vadd.f32	s21, s17, s16
d0056e82:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0056e86:	9d03      	ldr	r5, [sp, #12]
d0056e88:	fb01 f801 	mul.w	r8, r1, r1
d0056e8c:	f06f 0411 	mvn.w	r4, #17
d0056e90:	ee37 aaca 	vsub.f32	s20, s15, s20
d0056e94:	e078      	b.n	d0056f88 <drawFakeHorizonDots+0x1d8>
d0056e96:	f5c0 70a2 	rsb	r0, r0, #324	; 0x144
d0056e9a:	fb09 f000 	mul.w	r0, r9, r0
d0056e9e:	2850      	cmp	r0, #80	; 0x50
d0056ea0:	dd6e      	ble.n	d0056f80 <drawFakeHorizonDots+0x1d0>
d0056ea2:	494d      	ldr	r1, [pc, #308]	; (d0056fd8 <drawFakeHorizonDots+0x228>)
d0056ea4:	fba1 1000 	umull	r1, r0, r1, r0
d0056ea8:	f3c0 1087 	ubfx	r0, r0, #6, #8
d0056eac:	fb03 a104 	mla	r1, r3, r4, sl
d0056eb0:	ea81 3151 	eor.w	r1, r1, r1, lsr #13
d0056eb4:	fb0b f101 	mul.w	r1, fp, r1
d0056eb8:	ea81 4111 	eor.w	r1, r1, r1, lsr #16
d0056ebc:	fa5f fc81 	uxtb.w	ip, r1
d0056ec0:	4584      	cmp	ip, r0
d0056ec2:	d85d      	bhi.n	d0056f80 <drawFakeHorizonDots+0x1d0>
d0056ec4:	ee07 5a10 	vmov	s14, r5
d0056ec8:	f3c1 4007 	ubfx	r0, r1, #16, #8
d0056ecc:	f3c1 2107 	ubfx	r1, r1, #8, #8
d0056ed0:	eef0 4a4a 	vmov.f32	s9, s20
d0056ed4:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0056ed8:	ee06 0a90 	vmov	s13, r0
d0056edc:	ee07 1a90 	vmov	s15, r1
d0056ee0:	ed96 6a10 	vldr	s12, [r6, #64]	; 0x40
d0056ee4:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0056ee8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0056eec:	ee37 7a6a 	vsub.f32	s14, s14, s21
d0056ef0:	eee6 4aa9 	vfma.f32	s9, s13, s19
d0056ef4:	eea7 7aa9 	vfma.f32	s14, s15, s19
d0056ef8:	eef0 7a47 	vmov.f32	s15, s14
d0056efc:	ee2b 7aa4 	vmul.f32	s14, s23, s9
d0056f00:	eeac 7a27 	vfma.f32	s14, s24, s15
d0056f04:	ee3b 7a07 	vadd.f32	s14, s22, s14
d0056f08:	eeb4 6ac7 	vcmpe.f32	s12, s14
d0056f0c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056f10:	da36      	bge.n	d0056f80 <drawFakeHorizonDots+0x1d0>
d0056f12:	eef7 3a00 	vmov.f32	s7, #112	; 0x3f800000  1.0
d0056f16:	edd6 6a13 	vldr	s13, [r6, #76]	; 0x4c
d0056f1a:	ee2f 6a27 	vmul.f32	s12, s30, s15
d0056f1e:	ed96 5a12 	vldr	s10, [r6, #72]	; 0x48
d0056f22:	ee6e 7a27 	vmul.f32	s15, s28, s15
d0056f26:	edd6 5a14 	vldr	s11, [r6, #80]	; 0x50
d0056f2a:	ee83 4a87 	vdiv.f32	s8, s7, s14
d0056f2e:	eeae 6aa4 	vfma.f32	s12, s29, s9
d0056f32:	eeed 7aa4 	vfma.f32	s15, s27, s9
d0056f36:	eef6 4a00 	vmov.f32	s9, #96	; 0x3f000000  0.5
d0056f3a:	ee36 7aa4 	vadd.f32	s14, s13, s9
d0056f3e:	ee7d 6a06 	vadd.f32	s13, s26, s12
d0056f42:	ee7c 7aa7 	vadd.f32	s15, s25, s15
d0056f46:	ee35 6aa4 	vadd.f32	s12, s11, s9
d0056f4a:	ee66 6a85 	vmul.f32	s13, s13, s10
d0056f4e:	ee65 7a67 	vnmul.f32	s15, s10, s15
d0056f52:	eea6 7a84 	vfma.f32	s14, s13, s8
d0056f56:	eea7 6a84 	vfma.f32	s12, s15, s8
d0056f5a:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0056f5e:	eefd 7ac6 	vcvt.s32.f32	s15, s12
d0056f62:	ee17 0a10 	vmov	r0, s14
d0056f66:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0056f6a:	d209      	bcs.n	d0056f80 <drawFakeHorizonDots+0x1d0>
d0056f6c:	ee17 1a90 	vmov	r1, s15
d0056f70:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d0056f74:	d204      	bcs.n	d0056f80 <drawFakeHorizonDots+0x1d0>
d0056f76:	9200      	str	r2, [sp, #0]
d0056f78:	f7fa fbde 	bl	d0051738 <putPixel>
d0056f7c:	4b14      	ldr	r3, [pc, #80]	; (d0056fd0 <drawFakeHorizonDots+0x220>)
d0056f7e:	9a00      	ldr	r2, [sp, #0]
d0056f80:	3401      	adds	r4, #1
d0056f82:	443d      	add	r5, r7
d0056f84:	2c13      	cmp	r4, #19
d0056f86:	d009      	beq.n	d0056f9c <drawFakeHorizonDots+0x1ec>
d0056f88:	fb04 8004 	mla	r0, r4, r4, r8
d0056f8c:	f5b0 7fa2 	cmp.w	r0, #324	; 0x144
d0056f90:	dcf6      	bgt.n	d0056f80 <drawFakeHorizonDots+0x1d0>
d0056f92:	28f3      	cmp	r0, #243	; 0xf3
d0056f94:	f73f af7f 	bgt.w	d0056e96 <drawFakeHorizonDots+0xe6>
d0056f98:	4648      	mov	r0, r9
d0056f9a:	e787      	b.n	d0056eac <drawFakeHorizonDots+0xfc>
d0056f9c:	9902      	ldr	r1, [sp, #8]
d0056f9e:	f10a 5a1f 	add.w	sl, sl, #666894336	; 0x27c00000
d0056fa2:	9801      	ldr	r0, [sp, #4]
d0056fa4:	3101      	adds	r1, #1
d0056fa6:	f50a 1aa7 	add.w	sl, sl, #1368064	; 0x14e000
d0056faa:	4438      	add	r0, r7
d0056fac:	2913      	cmp	r1, #19
d0056fae:	f60a 3a2f 	addw	sl, sl, #2863	; 0xb2f
d0056fb2:	9102      	str	r1, [sp, #8]
d0056fb4:	9001      	str	r0, [sp, #4]
d0056fb6:	f47f af5d 	bne.w	d0056e74 <drawFakeHorizonDots+0xc4>
d0056fba:	b005      	add	sp, #20
d0056fbc:	ecbd 8b10 	vpop	{d8-d15}
d0056fc0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0056fc4:	4770      	bx	lr
d0056fc6:	bf00      	nop
d0056fc8:	3eb33333 	.word	0x3eb33333
d0056fcc:	27d4eb2f 	.word	0x27d4eb2f
d0056fd0:	165667b1 	.word	0x165667b1
d0056fd4:	3c008081 	.word	0x3c008081
d0056fd8:	ca4587e7 	.word	0xca4587e7
d0056fdc:	4bf19f61 	.word	0x4bf19f61

d0056fe0 <drawFakeHorizon>:
d0056fe0:	2800      	cmp	r0, #0
d0056fe2:	f000 813e 	beq.w	d0057262 <drawFakeHorizon+0x282>
d0056fe6:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0056fea:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0056fee:	ed2d 8b0e 	vpush	{d8-d14}
d0056ff2:	ed90 da12 	vldr	s26, [r0, #72]	; 0x48
d0056ff6:	b083      	sub	sp, #12
d0056ff8:	edd0 ba14 	vldr	s23, [r0, #80]	; 0x50
d0056ffc:	460f      	mov	r7, r1
d0056ffe:	eec7 8a8d 	vdiv.f32	s17, s15, s26
d0057002:	eddf 7a9c 	vldr	s15, [pc, #624]	; d0057274 <drawFakeHorizon+0x294>
d0057006:	edd0 da0a 	vldr	s27, [r0, #40]	; 0x28
d005700a:	4690      	mov	r8, r2
d005700c:	ed90 ca0d 	vldr	s24, [r0, #52]	; 0x34
d0057010:	4699      	mov	r9, r3
d0057012:	ed90 ea07 	vldr	s28, [r0, #28]
d0057016:	2400      	movs	r4, #0
d0057018:	ed90 9a01 	vldr	s18, [r0, #4]
d005701c:	ee7b 7ae7 	vsub.f32	s15, s23, s15
d0057020:	edd0 9a13 	vldr	s19, [r0, #76]	; 0x4c
d0057024:	ee2b 7aad 	vmul.f32	s14, s23, s27
d0057028:	4e93      	ldr	r6, [pc, #588]	; (d0057278 <drawFakeHorizon+0x298>)
d005702a:	eef0 aa4c 	vmov.f32	s21, s24
d005702e:	ed9f 8a93 	vldr	s16, [pc, #588]	; d005727c <drawFakeHorizon+0x29c>
d0057032:	eeb0 aa4c 	vmov.f32	s20, s24
d0057036:	eecd ca2d 	vdiv.f32	s25, s26, s27
d005703a:	eeb0 baed 	vabs.f32	s22, s27
d005703e:	ee30 9a49 	vsub.f32	s18, s0, s18
d0057042:	ee67 7aa8 	vmul.f32	s15, s15, s17
d0057046:	eee7 aa28 	vfma.f32	s21, s14, s17
d005704a:	ee6e 8a28 	vmul.f32	s17, s28, s17
d005704e:	eea7 aaad 	vfma.f32	s20, s15, s27
d0057052:	e056      	b.n	d0057102 <drawFakeHorizon+0x122>
d0057054:	ee89 6a26 	vdiv.f32	s12, s18, s13
d0057058:	eef0 6ac7 	vabs.f32	s13, s14
d005705c:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d0057060:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057064:	eef4 6ac8 	vcmpe.f32	s13, s16
d0057068:	bfcc      	ite	gt
d005706a:	2201      	movgt	r2, #1
d005706c:	2200      	movle	r2, #0
d005706e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057072:	da61      	bge.n	d0057138 <drawFakeHorizon+0x158>
d0057074:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d0057078:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d005707c:	6833      	ldr	r3, [r6, #0]
d005707e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057082:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d0057086:	f240 80a8 	bls.w	d00571da <drawFakeHorizon+0x1fa>
d005708a:	eeb4 bac8 	vcmpe.f32	s22, s16
d005708e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057092:	f100 809a 	bmi.w	d00571ca <drawFakeHorizon+0x1ea>
d0057096:	ee7c 7a27 	vadd.f32	s15, s24, s15
d005709a:	eeb0 7a6b 	vmov.f32	s14, s23
d005709e:	eeac 7aa7 	vfma.f32	s14, s25, s15
d00570a2:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d00570a6:	ee17 ba90 	vmov	fp, s15
d00570aa:	f1bb 0f00 	cmp.w	fp, #0
d00570ae:	f2c0 80aa 	blt.w	d0057206 <drawFakeHorizon+0x226>
d00570b2:	2201      	movs	r2, #1
d00570b4:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d00570b8:	46da      	mov	sl, fp
d00570ba:	bfa8      	it	ge
d00570bc:	f44f 7aa0 	movge.w	sl, #320	; 0x140
d00570c0:	2a00      	cmp	r2, #0
d00570c2:	f000 8091 	beq.w	d00571e8 <drawFakeHorizon+0x208>
d00570c6:	f1bb 0f00 	cmp.w	fp, #0
d00570ca:	d009      	beq.n	d00570e0 <drawFakeHorizon+0x100>
d00570cc:	f1ba 0f00 	cmp.w	sl, #0
d00570d0:	4628      	mov	r0, r5
d00570d2:	4641      	mov	r1, r8
d00570d4:	bfcc      	ite	gt
d00570d6:	4652      	movgt	r2, sl
d00570d8:	2201      	movle	r2, #1
d00570da:	4415      	add	r5, r2
d00570dc:	f002 f8a8 	bl	d0059230 <memset>
d00570e0:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d00570e4:	d009      	beq.n	d00570fa <drawFakeHorizon+0x11a>
d00570e6:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d00570ea:	f5ca 72a0 	rsb	r2, sl, #320	; 0x140
d00570ee:	4628      	mov	r0, r5
d00570f0:	4639      	mov	r1, r7
d00570f2:	bfa8      	it	ge
d00570f4:	2201      	movge	r2, #1
d00570f6:	f002 f89b 	bl	d0059230 <memset>
d00570fa:	3401      	adds	r4, #1
d00570fc:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d0057100:	d04e      	beq.n	d00571a0 <drawFakeHorizon+0x1c0>
d0057102:	ee07 4a90 	vmov	s15, r4
d0057106:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005710a:	ee77 7ae9 	vsub.f32	s15, s15, s19
d005710e:	ee67 7aa8 	vmul.f32	s15, s15, s17
d0057112:	ee7a 6aa7 	vadd.f32	s13, s21, s15
d0057116:	ee3a 7a27 	vadd.f32	s14, s20, s15
d005711a:	eeb0 6ae6 	vabs.f32	s12, s13
d005711e:	eeb4 6ac8 	vcmpe.f32	s12, s16
d0057122:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057126:	da95      	bge.n	d0057054 <drawFakeHorizon+0x74>
d0057128:	eef0 6ac7 	vabs.f32	s13, s14
d005712c:	eef4 6ac8 	vcmpe.f32	s13, s16
d0057130:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057134:	db4c      	blt.n	d00571d0 <drawFakeHorizon+0x1f0>
d0057136:	2200      	movs	r2, #0
d0057138:	eec9 6a07 	vdiv.f32	s13, s18, s14
d005713c:	6833      	ldr	r3, [r6, #0]
d005713e:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d0057142:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d0057146:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d005714a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005714e:	bfcc      	ite	gt
d0057150:	2301      	movgt	r3, #1
d0057152:	2300      	movle	r3, #0
d0057154:	4293      	cmp	r3, r2
d0057156:	f000 8085 	beq.w	d0057264 <drawFakeHorizon+0x284>
d005715a:	eeb4 bac8 	vcmpe.f32	s22, s16
d005715e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057162:	d429      	bmi.n	d00571b8 <drawFakeHorizon+0x1d8>
d0057164:	ee7c 7a27 	vadd.f32	s15, s24, s15
d0057168:	eeb0 7a6b 	vmov.f32	s14, s23
d005716c:	eeac 7aa7 	vfma.f32	s14, s25, s15
d0057170:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d0057174:	ee17 ba90 	vmov	fp, s15
d0057178:	f1bb 0f00 	cmp.w	fp, #0
d005717c:	da9a      	bge.n	d00570b4 <drawFakeHorizon+0xd4>
d005717e:	2a00      	cmp	r2, #0
d0057180:	d141      	bne.n	d0057206 <drawFakeHorizon+0x226>
d0057182:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d0057186:	f104 0401 	add.w	r4, r4, #1
d005718a:	f5c2 72a0 	rsb	r2, r2, #320	; 0x140
d005718e:	4628      	mov	r0, r5
d0057190:	bfa8      	it	ge
d0057192:	2201      	movge	r2, #1
d0057194:	4641      	mov	r1, r8
d0057196:	f002 f84b 	bl	d0059230 <memset>
d005719a:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d005719e:	d1b0      	bne.n	d0057102 <drawFakeHorizon+0x122>
d00571a0:	eddf 7a36 	vldr	s15, [pc, #216]	; d005727c <drawFakeHorizon+0x29c>
d00571a4:	eeb4 bae7 	vcmpe.f32	s22, s15
d00571a8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00571ac:	da31      	bge.n	d0057212 <drawFakeHorizon+0x232>
d00571ae:	b003      	add	sp, #12
d00571b0:	ecbd 8b0e 	vpop	{d8-d14}
d00571b4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00571b8:	b93a      	cbnz	r2, d00571ca <drawFakeHorizon+0x1ea>
d00571ba:	22a0      	movs	r2, #160	; 0xa0
d00571bc:	4628      	mov	r0, r5
d00571be:	4639      	mov	r1, r7
d00571c0:	4415      	add	r5, r2
d00571c2:	f002 f835 	bl	d0059230 <memset>
d00571c6:	22a0      	movs	r2, #160	; 0xa0
d00571c8:	e7db      	b.n	d0057182 <drawFakeHorizon+0x1a2>
d00571ca:	f04f 0aa0 	mov.w	sl, #160	; 0xa0
d00571ce:	e77d      	b.n	d00570cc <drawFakeHorizon+0xec>
d00571d0:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d00571d4:	6832      	ldr	r2, [r6, #0]
d00571d6:	eb02 1585 	add.w	r5, r2, r5, lsl #6
d00571da:	4639      	mov	r1, r7
d00571dc:	4628      	mov	r0, r5
d00571de:	f44f 72a0 	mov.w	r2, #320	; 0x140
d00571e2:	f002 f825 	bl	d0059230 <memset>
d00571e6:	e788      	b.n	d00570fa <drawFakeHorizon+0x11a>
d00571e8:	f1bb 0f00 	cmp.w	fp, #0
d00571ec:	d00e      	beq.n	d005720c <drawFakeHorizon+0x22c>
d00571ee:	4628      	mov	r0, r5
d00571f0:	4652      	mov	r2, sl
d00571f2:	4639      	mov	r1, r7
d00571f4:	4455      	add	r5, sl
d00571f6:	f002 f81b 	bl	d0059230 <memset>
d00571fa:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d00571fe:	f6bf af7c 	bge.w	d00570fa <drawFakeHorizon+0x11a>
d0057202:	4652      	mov	r2, sl
d0057204:	e7bd      	b.n	d0057182 <drawFakeHorizon+0x1a2>
d0057206:	f04f 0a00 	mov.w	sl, #0
d005720a:	e76c      	b.n	d00570e6 <drawFakeHorizon+0x106>
d005720c:	46da      	mov	sl, fp
d005720e:	4652      	mov	r2, sl
d0057210:	e7b7      	b.n	d0057182 <drawFakeHorizon+0x1a2>
d0057212:	ee2d ca0c 	vmul.f32	s24, s26, s24
d0057216:	eddf 7a1a 	vldr	s15, [pc, #104]	; d0057280 <drawFakeHorizon+0x2a0>
d005721a:	f240 12df 	movw	r2, #479	; 0x1df
d005721e:	2000      	movs	r0, #0
d0057220:	ee77 7ae9 	vsub.f32	s15, s15, s19
d0057224:	f8cd 9000 	str.w	r9, [sp]
d0057228:	eef0 6a4c 	vmov.f32	s13, s24
d005722c:	eea7 ca8e 	vfma.f32	s24, s15, s28
d0057230:	eee9 6ace 	vfms.f32	s13, s19, s28
d0057234:	eecc 7a2d 	vdiv.f32	s15, s24, s27
d0057238:	ee86 7aad 	vdiv.f32	s14, s13, s27
d005723c:	ee37 7a2b 	vadd.f32	s14, s14, s23
d0057240:	ee77 baab 	vadd.f32	s23, s15, s23
d0057244:	febc 7ac7 	vcvta.s32.f32	s14, s14
d0057248:	fefc 7aeb 	vcvta.s32.f32	s15, s23
d005724c:	ee17 1a10 	vmov	r1, s14
d0057250:	ee17 3a90 	vmov	r3, s15
d0057254:	f7fa fa80 	bl	d0051758 <drawLine>
d0057258:	b003      	add	sp, #12
d005725a:	ecbd 8b0e 	vpop	{d8-d14}
d005725e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0057262:	4770      	bx	lr
d0057264:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0057268:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005726c:	ddb5      	ble.n	d00571da <drawFakeHorizon+0x1fa>
d005726e:	4641      	mov	r1, r8
d0057270:	e7b4      	b.n	d00571dc <drawFakeHorizon+0x1fc>
d0057272:	bf00      	nop
d0057274:	439f8000 	.word	0x439f8000
d0057278:	d00f5aa4 	.word	0xd00f5aa4
d005727c:	38d1b717 	.word	0x38d1b717
d0057280:	43ef8000 	.word	0x43ef8000

d0057284 <submitEntitySolid>:
d0057284:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0057288:	ed2d 8b10 	vpush	{d8-d15}
d005728c:	b0bb      	sub	sp, #236	; 0xec
d005728e:	f10d 038f 	add.w	r3, sp, #143	; 0x8f
d0057292:	9102      	str	r1, [sp, #8]
d0057294:	f023 031f 	bic.w	r3, r3, #31
d0057298:	9303      	str	r3, [sp, #12]
d005729a:	2800      	cmp	r0, #0
d005729c:	f000 832e 	beq.w	d00578fc <submitEntitySolid+0x678>
d00572a0:	f8d0 a00c 	ldr.w	sl, [r0, #12]
d00572a4:	4604      	mov	r4, r0
d00572a6:	f1ba 0f00 	cmp.w	sl, #0
d00572aa:	f000 8327 	beq.w	d00578fc <submitEntitySolid+0x678>
d00572ae:	f8da 3000 	ldr.w	r3, [sl]
d00572b2:	2b00      	cmp	r3, #0
d00572b4:	f000 8322 	beq.w	d00578fc <submitEntitySolid+0x678>
d00572b8:	f8da 3010 	ldr.w	r3, [sl, #16]
d00572bc:	2b00      	cmp	r3, #0
d00572be:	f000 831d 	beq.w	d00578fc <submitEntitySolid+0x678>
d00572c2:	f8da 3004 	ldr.w	r3, [sl, #4]
d00572c6:	3b01      	subs	r3, #1
d00572c8:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d00572cc:	f080 8316 	bcs.w	d00578fc <submitEntitySolid+0x678>
d00572d0:	f8da 3014 	ldr.w	r3, [sl, #20]
d00572d4:	2b00      	cmp	r3, #0
d00572d6:	f340 8311 	ble.w	d00578fc <submitEntitySolid+0x678>
d00572da:	460e      	mov	r6, r1
d00572dc:	edd1 fa11 	vldr	s31, [r1, #68]	; 0x44
d00572e0:	ed91 ba10 	vldr	s22, [r1, #64]	; 0x40
d00572e4:	f7fe fef0 	bl	d00560c8 <lightsGet>
d00572e8:	4605      	mov	r5, r0
d00572ea:	f7fe fef1 	bl	d00560d0 <lightsGetCount>
d00572ee:	edda 7a09 	vldr	s15, [sl, #36]	; 0x24
d00572f2:	ed9a 7a0a 	vldr	s14, [sl, #40]	; 0x28
d00572f6:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d00572fa:	edcd 7a0b 	vstr	s15, [sp, #44]	; 0x2c
d00572fe:	edda 7a08 	vldr	s15, [sl, #32]
d0057302:	edd4 3a00 	vldr	s7, [r4]
d0057306:	edcd 7a05 	vstr	s15, [sp, #20]
d005730a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005730e:	edda 7a0c 	vldr	s15, [sl, #48]	; 0x30
d0057312:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d0057316:	edd4 1a02 	vldr	s3, [r4, #8]
d005731a:	edcd 7a0a 	vstr	s15, [sp, #40]	; 0x28
d005731e:	bfc8      	it	gt
d0057320:	2301      	movgt	r3, #1
d0057322:	edda 7a0b 	vldr	s15, [sl, #44]	; 0x2c
d0057326:	bfd8      	it	le
d0057328:	2300      	movle	r3, #0
d005732a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005732e:	ed8d 7a0c 	vstr	s14, [sp, #48]	; 0x30
d0057332:	edcd 7a0d 	vstr	s15, [sp, #52]	; 0x34
d0057336:	edd6 7a00 	vldr	s15, [r6]
d005733a:	bfc8      	it	gt
d005733c:	f043 0301 	orrgt.w	r3, r3, #1
d0057340:	ed94 fa01 	vldr	s30, [r4, #4]
d0057344:	edcd 7a07 	vstr	s15, [sp, #28]
d0057348:	edd6 7a01 	vldr	s15, [r6, #4]
d005734c:	ed94 aa07 	vldr	s20, [r4, #28]
d0057350:	edcd 7a08 	vstr	s15, [sp, #32]
d0057354:	edd6 7a02 	vldr	s15, [r6, #8]
d0057358:	edd4 aa08 	vldr	s21, [r4, #32]
d005735c:	edcd 7a09 	vstr	s15, [sp, #36]	; 0x24
d0057360:	edd4 ea09 	vldr	s29, [r4, #36]	; 0x24
d0057364:	edd4 ba0a 	vldr	s23, [r4, #40]	; 0x28
d0057368:	ed94 ca0b 	vldr	s24, [r4, #44]	; 0x2c
d005736c:	edd4 ca0c 	vldr	s25, [r4, #48]	; 0x30
d0057370:	ed94 da04 	vldr	s26, [r4, #16]
d0057374:	edd4 da05 	vldr	s27, [r4, #20]
d0057378:	ed94 ea06 	vldr	s28, [r4, #24]
d005737c:	ed96 5a06 	vldr	s10, [r6, #24]
d0057380:	ed96 3a07 	vldr	s6, [r6, #28]
d0057384:	edcd 3a01 	vstr	s7, [sp, #4]
d0057388:	edcd 1a06 	vstr	s3, [sp, #24]
d005738c:	edd6 6a08 	vldr	s13, [r6, #32]
d0057390:	edd6 5a09 	vldr	s11, [r6, #36]	; 0x24
d0057394:	edd6 2a0a 	vldr	s5, [r6, #40]	; 0x28
d0057398:	ed96 7a0b 	vldr	s14, [r6, #44]	; 0x2c
d005739c:	ed96 6a0c 	vldr	s12, [r6, #48]	; 0x30
d00573a0:	ed96 2a0d 	vldr	s4, [r6, #52]	; 0x34
d00573a4:	edd6 7a0e 	vldr	s15, [r6, #56]	; 0x38
d00573a8:	b113      	cbz	r3, d00573b0 <submitEntitySolid+0x12c>
d00573aa:	2800      	cmp	r0, #0
d00573ac:	f300 8453 	bgt.w	d0057c56 <submitEntitySolid+0x9d2>
d00573b0:	2300      	movs	r3, #0
d00573b2:	9304      	str	r3, [sp, #16]
d00573b4:	eddd 4a08 	vldr	s9, [sp, #32]
d00573b8:	ee6a 1a83 	vmul.f32	s3, s21, s6
d00573bc:	ed9d 4a07 	vldr	s8, [sp, #28]
d00573c0:	ee2c 1a03 	vmul.f32	s2, s24, s6
d00573c4:	ee7f 3a64 	vsub.f32	s7, s30, s9
d00573c8:	eddd 4a01 	vldr	s9, [sp, #4]
d00573cc:	ee6a 0aa2 	vmul.f32	s1, s21, s5
d00573d0:	f8da 0004 	ldr.w	r0, [sl, #4]
d00573d4:	ee74 4ac4 	vsub.f32	s9, s9, s8
d00573d8:	ee23 9a23 	vmul.f32	s18, s6, s7
d00573dc:	2800      	cmp	r0, #0
d00573de:	ee62 9aa3 	vmul.f32	s19, s5, s7
d00573e2:	ee2c 0a22 	vmul.f32	s0, s24, s5
d00573e6:	ee62 3a23 	vmul.f32	s7, s4, s7
d00573ea:	ee2a 8a82 	vmul.f32	s16, s21, s4
d00573ee:	ee6c 8a02 	vmul.f32	s17, s24, s4
d00573f2:	ee2d 3a83 	vmul.f32	s6, s27, s6
d00573f6:	ee6d 2aa2 	vmul.f32	s5, s27, s5
d00573fa:	ee2d 2a82 	vmul.f32	s4, s27, s4
d00573fe:	eee5 9aa4 	vfma.f32	s19, s11, s9
d0057402:	eee6 3a24 	vfma.f32	s7, s12, s9
d0057406:	eeea 0a25 	vfma.f32	s1, s20, s11
d005740a:	eeab 0aa5 	vfma.f32	s0, s23, s11
d005740e:	eeed 2a25 	vfma.f32	s5, s26, s11
d0057412:	eddd 5a09 	vldr	s11, [sp, #36]	; 0x24
d0057416:	eeaa 8a06 	vfma.f32	s16, s20, s12
d005741a:	eeeb 8a86 	vfma.f32	s17, s23, s12
d005741e:	eead 2a06 	vfma.f32	s4, s26, s12
d0057422:	ed9d 6a06 	vldr	s12, [sp, #24]
d0057426:	eea5 9a24 	vfma.f32	s18, s10, s9
d005742a:	eeea 1a05 	vfma.f32	s3, s20, s10
d005742e:	eeab 1a85 	vfma.f32	s2, s23, s10
d0057432:	eead 3a05 	vfma.f32	s6, s26, s10
d0057436:	ee36 6a65 	vsub.f32	s12, s12, s11
d005743a:	eeee 0a87 	vfma.f32	s1, s29, s14
d005743e:	eeac 0a87 	vfma.f32	s0, s25, s14
d0057442:	eeee 1aa6 	vfma.f32	s3, s29, s13
d0057446:	eeac 1aa6 	vfma.f32	s2, s25, s13
d005744a:	eea6 9a86 	vfma.f32	s18, s13, s12
d005744e:	eee7 9a06 	vfma.f32	s19, s14, s12
d0057452:	eee7 3a86 	vfma.f32	s7, s15, s12
d0057456:	eeae 3a26 	vfma.f32	s6, s28, s13
d005745a:	eeee 2a07 	vfma.f32	s5, s28, s14
d005745e:	eeae 8aa7 	vfma.f32	s16, s29, s15
d0057462:	eeec 8aa7 	vfma.f32	s17, s25, s15
d0057466:	eeae 2a27 	vfma.f32	s4, s28, s15
d005746a:	dd5b      	ble.n	d0057524 <submitEntitySolid+0x2a0>
d005746c:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0057470:	f8da 3000 	ldr.w	r3, [sl]
d0057474:	edcd fa0e 	vstr	s31, [sp, #56]	; 0x38
d0057478:	ed8d ba0f 	vstr	s22, [sp, #60]	; 0x3c
d005747c:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d0057480:	49ef      	ldr	r1, [pc, #956]	; (d0057840 <submitEntitySolid+0x5bc>)
d0057482:	4af0      	ldr	r2, [pc, #960]	; (d0057844 <submitEntitySolid+0x5c0>)
d0057484:	ed9d ba01 	vldr	s22, [sp, #4]
d0057488:	eddd fa06 	vldr	s31, [sp, #24]
d005748c:	edd3 7a01 	vldr	s15, [r3, #4]
d0057490:	330c      	adds	r3, #12
d0057492:	ed13 4a03 	vldr	s8, [r3, #-12]
d0057496:	310c      	adds	r1, #12
d0057498:	ee2b 5aa7 	vmul.f32	s10, s23, s15
d005749c:	ed53 4a01 	vldr	s9, [r3, #-4]
d00574a0:	ee6c 5a27 	vmul.f32	s11, s24, s15
d00574a4:	4298      	cmp	r0, r3
d00574a6:	ee2c 6aa7 	vmul.f32	s12, s25, s15
d00574aa:	f102 020c 	add.w	r2, r2, #12
d00574ae:	ee61 6a27 	vmul.f32	s13, s2, s15
d00574b2:	ee20 7a27 	vmul.f32	s14, s0, s15
d00574b6:	ee68 7aa7 	vmul.f32	s15, s17, s15
d00574ba:	eeaa 5a04 	vfma.f32	s10, s20, s8
d00574be:	eeea 5a84 	vfma.f32	s11, s21, s8
d00574c2:	eeae 6a84 	vfma.f32	s12, s29, s8
d00574c6:	eee1 6a84 	vfma.f32	s13, s3, s8
d00574ca:	eea0 7a84 	vfma.f32	s14, s1, s8
d00574ce:	eee8 7a04 	vfma.f32	s15, s16, s8
d00574d2:	ee3b 5a05 	vadd.f32	s10, s22, s10
d00574d6:	ee7f 5a25 	vadd.f32	s11, s30, s11
d00574da:	ee3f 6a86 	vadd.f32	s12, s31, s12
d00574de:	ee76 6a89 	vadd.f32	s13, s13, s18
d00574e2:	ee37 7a29 	vadd.f32	s14, s14, s19
d00574e6:	ee77 7aa3 	vadd.f32	s15, s15, s7
d00574ea:	eead 5a24 	vfma.f32	s10, s26, s9
d00574ee:	eeed 5aa4 	vfma.f32	s11, s27, s9
d00574f2:	eeae 6a24 	vfma.f32	s12, s28, s9
d00574f6:	eee3 6a24 	vfma.f32	s13, s6, s9
d00574fa:	eea2 7aa4 	vfma.f32	s14, s5, s9
d00574fe:	eee2 7a24 	vfma.f32	s15, s4, s9
d0057502:	ed01 5a03 	vstr	s10, [r1, #-12]
d0057506:	ed41 5a02 	vstr	s11, [r1, #-8]
d005750a:	ed01 6a01 	vstr	s12, [r1, #-4]
d005750e:	ed42 6a03 	vstr	s13, [r2, #-12]
d0057512:	ed02 7a02 	vstr	s14, [r2, #-8]
d0057516:	ed42 7a01 	vstr	s15, [r2, #-4]
d005751a:	d1b7      	bne.n	d005748c <submitEntitySolid+0x208>
d005751c:	eddd fa0e 	vldr	s31, [sp, #56]	; 0x38
d0057520:	ed9d ba0f 	vldr	s22, [sp, #60]	; 0x3c
d0057524:	f8da 3014 	ldr.w	r3, [sl, #20]
d0057528:	2b00      	cmp	r3, #0
d005752a:	9301      	str	r3, [sp, #4]
d005752c:	f340 81e6 	ble.w	d00578fc <submitEntitySolid+0x678>
d0057530:	f04f 0900 	mov.w	r9, #0
d0057534:	f8df 830c 	ldr.w	r8, [pc, #780]	; d0057844 <submitEntitySolid+0x5c0>
d0057538:	ed9f aac3 	vldr	s20, [pc, #780]	; d0057848 <submitEntitySolid+0x5c4>
d005753c:	eddf aac3 	vldr	s21, [pc, #780]	; d005784c <submitEntitySolid+0x5c8>
d0057540:	ed9d da0a 	vldr	s26, [sp, #40]	; 0x28
d0057544:	eddd ba0b 	vldr	s23, [sp, #44]	; 0x2c
d0057548:	ed9d ca0c 	vldr	s24, [sp, #48]	; 0x30
d005754c:	eddd ca0d 	vldr	s25, [sp, #52]	; 0x34
d0057550:	f8da 4010 	ldr.w	r4, [sl, #16]
d0057554:	ea4f 1309 	mov.w	r3, r9, lsl #4
d0057558:	58e3      	ldr	r3, [r4, r3]
d005755a:	eb04 1409 	add.w	r4, r4, r9, lsl #4
d005755e:	eb03 0543 	add.w	r5, r3, r3, lsl #1
d0057562:	6862      	ldr	r2, [r4, #4]
d0057564:	68a1      	ldr	r1, [r4, #8]
d0057566:	ea4f 0b43 	mov.w	fp, r3, lsl #1
d005756a:	eb08 0585 	add.w	r5, r8, r5, lsl #2
d005756e:	eb02 0642 	add.w	r6, r2, r2, lsl #1
d0057572:	edd5 6a02 	vldr	s13, [r5, #8]
d0057576:	eb01 0741 	add.w	r7, r1, r1, lsl #1
d005757a:	eb08 0686 	add.w	r6, r8, r6, lsl #2
d005757e:	eef4 6aef 	vcmpe.f32	s13, s31
d0057582:	eb08 0787 	add.w	r7, r8, r7, lsl #2
d0057586:	ea4f 0c42 	mov.w	ip, r2, lsl #1
d005758a:	ea4f 0e41 	mov.w	lr, r1, lsl #1
d005758e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057592:	dd0e      	ble.n	d00575b2 <submitEntitySolid+0x32e>
d0057594:	edd6 7a02 	vldr	s15, [r6, #8]
d0057598:	eef4 7aef 	vcmpe.f32	s15, s31
d005759c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00575a0:	dd07      	ble.n	d00575b2 <submitEntitySolid+0x32e>
d00575a2:	edd7 7a02 	vldr	s15, [r7, #8]
d00575a6:	eef4 7aef 	vcmpe.f32	s15, s31
d00575aa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00575ae:	f300 819f 	bgt.w	d00578f0 <submitEntitySolid+0x66c>
d00575b2:	eef4 6acb 	vcmpe.f32	s13, s22
d00575b6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00575ba:	d516      	bpl.n	d00575ea <submitEntitySolid+0x366>
d00575bc:	eb0c 0002 	add.w	r0, ip, r2
d00575c0:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d00575c4:	edd0 7a02 	vldr	s15, [r0, #8]
d00575c8:	eef4 7acb 	vcmpe.f32	s15, s22
d00575cc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00575d0:	d50b      	bpl.n	d00575ea <submitEntitySolid+0x366>
d00575d2:	eb0e 0001 	add.w	r0, lr, r1
d00575d6:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d00575da:	edd0 7a02 	vldr	s15, [r0, #8]
d00575de:	eef4 7acb 	vcmpe.f32	s15, s22
d00575e2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00575e6:	f100 8183 	bmi.w	d00578f0 <submitEntitySolid+0x66c>
d00575ea:	ed95 6a00 	vldr	s12, [r5]
d00575ee:	edd5 3a02 	vldr	s7, [r5, #8]
d00575f2:	ed96 2a00 	vldr	s4, [r6]
d00575f6:	ed97 5a02 	vldr	s10, [r7, #8]
d00575fa:	ee72 1a46 	vsub.f32	s3, s4, s12
d00575fe:	edd5 7a01 	vldr	s15, [r5, #4]
d0057602:	ee35 5a63 	vsub.f32	s10, s10, s7
d0057606:	ed96 4a02 	vldr	s8, [r6, #8]
d005760a:	edd7 5a01 	vldr	s11, [r7, #4]
d005760e:	ed97 1a00 	vldr	s2, [r7]
d0057612:	ee34 4a63 	vsub.f32	s8, s8, s7
d0057616:	ee75 5ae7 	vsub.f32	s11, s11, s15
d005761a:	edd6 4a01 	vldr	s9, [r6, #4]
d005761e:	ee31 7a46 	vsub.f32	s14, s2, s12
d0057622:	ee65 2a61 	vnmul.f32	s5, s10, s3
d0057626:	ee74 4ae7 	vsub.f32	s9, s9, s15
d005762a:	ee25 3ac4 	vnmul.f32	s6, s11, s8
d005762e:	eee4 2a07 	vfma.f32	s5, s8, s14
d0057632:	ee27 7a64 	vnmul.f32	s14, s14, s9
d0057636:	eea4 3a85 	vfma.f32	s6, s9, s10
d005763a:	eea1 7aa5 	vfma.f32	s14, s3, s11
d005763e:	ee67 7aa2 	vmul.f32	s15, s15, s5
d0057642:	eee6 7a03 	vfma.f32	s15, s12, s6
d0057646:	eee3 7a87 	vfma.f32	s15, s7, s14
d005764a:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d005764e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057652:	f280 814d 	bge.w	d00578f0 <submitEntitySolid+0x66c>
d0057656:	eef1 5a66 	vneg.f32	s11, s13
d005765a:	eef4 5ac6 	vcmpe.f32	s11, s12
d005765e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057662:	dd1a      	ble.n	d005769a <submitEntitySolid+0x416>
d0057664:	eb0c 0002 	add.w	r0, ip, r2
d0057668:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d005766c:	edd0 7a02 	vldr	s15, [r0, #8]
d0057670:	eef1 7a67 	vneg.f32	s15, s15
d0057674:	eef4 7ac2 	vcmpe.f32	s15, s4
d0057678:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005767c:	dd0d      	ble.n	d005769a <submitEntitySolid+0x416>
d005767e:	eb0e 0001 	add.w	r0, lr, r1
d0057682:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0057686:	edd0 7a02 	vldr	s15, [r0, #8]
d005768a:	eef1 7a67 	vneg.f32	s15, s15
d005768e:	eef4 7ac1 	vcmpe.f32	s15, s2
d0057692:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057696:	f300 812b 	bgt.w	d00578f0 <submitEntitySolid+0x66c>
d005769a:	eef4 6ac6 	vcmpe.f32	s13, s12
d005769e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00576a2:	d516      	bpl.n	d00576d2 <submitEntitySolid+0x44e>
d00576a4:	eb0c 0002 	add.w	r0, ip, r2
d00576a8:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d00576ac:	edd0 7a02 	vldr	s15, [r0, #8]
d00576b0:	eef4 7ac2 	vcmpe.f32	s15, s4
d00576b4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00576b8:	d50b      	bpl.n	d00576d2 <submitEntitySolid+0x44e>
d00576ba:	eb0e 0001 	add.w	r0, lr, r1
d00576be:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d00576c2:	edd0 7a02 	vldr	s15, [r0, #8]
d00576c6:	eef4 7ac1 	vcmpe.f32	s15, s2
d00576ca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00576ce:	f100 810f 	bmi.w	d00578f0 <submitEntitySolid+0x66c>
d00576d2:	ee26 7a8a 	vmul.f32	s14, s13, s20
d00576d6:	eb0b 0003 	add.w	r0, fp, r3
d00576da:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d00576de:	eeb1 5a47 	vneg.f32	s10, s14
d00576e2:	edd0 7a01 	vldr	s15, [r0, #4]
d00576e6:	eef4 7ac5 	vcmpe.f32	s15, s10
d00576ea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00576ee:	d51e      	bpl.n	d005772e <submitEntitySolid+0x4aa>
d00576f0:	eb0c 0002 	add.w	r0, ip, r2
d00576f4:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d00576f8:	edd0 4a02 	vldr	s9, [r0, #8]
d00576fc:	ed90 4a01 	vldr	s8, [r0, #4]
d0057700:	ee6a 4a64 	vnmul.f32	s9, s20, s9
d0057704:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0057708:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005770c:	d50f      	bpl.n	d005772e <submitEntitySolid+0x4aa>
d005770e:	eb0e 0001 	add.w	r0, lr, r1
d0057712:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0057716:	edd0 4a02 	vldr	s9, [r0, #8]
d005771a:	ed90 4a01 	vldr	s8, [r0, #4]
d005771e:	ee6a 4a64 	vnmul.f32	s9, s20, s9
d0057722:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0057726:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005772a:	f100 80e1 	bmi.w	d00578f0 <submitEntitySolid+0x66c>
d005772e:	eef4 7ac7 	vcmpe.f32	s15, s14
d0057732:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057736:	dd1e      	ble.n	d0057776 <submitEntitySolid+0x4f2>
d0057738:	eb0c 0002 	add.w	r0, ip, r2
d005773c:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0057740:	edd0 4a02 	vldr	s9, [r0, #8]
d0057744:	ed90 4a01 	vldr	s8, [r0, #4]
d0057748:	ee64 4a8a 	vmul.f32	s9, s9, s20
d005774c:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0057750:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057754:	dd0f      	ble.n	d0057776 <submitEntitySolid+0x4f2>
d0057756:	eb0e 0001 	add.w	r0, lr, r1
d005775a:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d005775e:	edd0 4a02 	vldr	s9, [r0, #8]
d0057762:	ed90 4a01 	vldr	s8, [r0, #4]
d0057766:	ee64 4a8a 	vmul.f32	s9, s9, s20
d005776a:	eeb4 4ae4 	vcmpe.f32	s8, s9
d005776e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057772:	f300 80bd 	bgt.w	d00578f0 <submitEntitySolid+0x66c>
d0057776:	eef4 6acb 	vcmpe.f32	s13, s22
d005777a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005777e:	db26      	blt.n	d00577ce <submitEntitySolid+0x54a>
d0057780:	eb0c 0002 	add.w	r0, ip, r2
d0057784:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0057788:	edd0 4a02 	vldr	s9, [r0, #8]
d005778c:	eef4 4acb 	vcmpe.f32	s9, s22
d0057790:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057794:	db1b      	blt.n	d00577ce <submitEntitySolid+0x54a>
d0057796:	eb0e 0001 	add.w	r0, lr, r1
d005779a:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d005779e:	ed90 4a02 	vldr	s8, [r0, #8]
d00577a2:	eeb4 4acb 	vcmpe.f32	s8, s22
d00577a6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00577aa:	eef4 5ac6 	vcmpe.f32	s11, s12
d00577ae:	bfac      	ite	ge
d00577b0:	2001      	movge	r0, #1
d00577b2:	2000      	movlt	r0, #0
d00577b4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00577b8:	f000 0001 	and.w	r0, r0, #1
d00577bc:	bf88      	it	hi
d00577be:	2000      	movhi	r0, #0
d00577c0:	b128      	cbz	r0, d00577ce <submitEntitySolid+0x54a>
d00577c2:	eef4 6a46 	vcmp.f32	s13, s12
d00577c6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00577ca:	f280 82ad 	bge.w	d0057d28 <submitEntitySolid+0xaa4>
d00577ce:	2000      	movs	r0, #0
d00577d0:	448e      	add	lr, r1
d00577d2:	4462      	add	r2, ip
d00577d4:	491a      	ldr	r1, [pc, #104]	; (d0057840 <submitEntitySolid+0x5bc>)
d00577d6:	445b      	add	r3, fp
d00577d8:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d00577dc:	eb01 0383 	add.w	r3, r1, r3, lsl #2
d00577e0:	eb01 018e 	add.w	r1, r1, lr, lsl #2
d00577e4:	edd2 4a00 	vldr	s9, [r2]
d00577e8:	ed93 6a00 	vldr	s12, [r3]
d00577ec:	ed93 7a02 	vldr	s14, [r3, #8]
d00577f0:	ed91 4a02 	vldr	s8, [r1, #8]
d00577f4:	ee74 2ac6 	vsub.f32	s5, s9, s12
d00577f8:	edd3 6a01 	vldr	s13, [r3, #4]
d00577fc:	ee34 2a47 	vsub.f32	s4, s8, s14
d0057800:	edd2 5a02 	vldr	s11, [r2, #8]
d0057804:	edd1 3a01 	vldr	s7, [r1, #4]
d0057808:	ed91 3a00 	vldr	s6, [r1]
d005780c:	ee35 1ac7 	vsub.f32	s2, s11, s14
d0057810:	ee73 7ae6 	vsub.f32	s15, s7, s13
d0057814:	ed92 5a01 	vldr	s10, [r2, #4]
d0057818:	ee33 8a46 	vsub.f32	s16, s6, s12
d005781c:	ee62 8a62 	vnmul.f32	s17, s4, s5
d0057820:	ee75 1a66 	vsub.f32	s3, s10, s13
d0057824:	ee27 9ac1 	vnmul.f32	s18, s15, s2
d0057828:	eee1 8a08 	vfma.f32	s17, s2, s16
d005782c:	ee28 8a61 	vnmul.f32	s16, s16, s3
d0057830:	eea1 9a82 	vfma.f32	s18, s3, s4
d0057834:	eea2 8aa7 	vfma.f32	s16, s5, s15
d0057838:	ee68 7aa8 	vmul.f32	s15, s17, s17
d005783c:	e00e      	b.n	d005785c <submitEntitySolid+0x5d8>
d005783e:	bf00      	nop
d0057840:	d00e9a00 	.word	0xd00e9a00
d0057844:	d005d9c0 	.word	0xd005d9c0
d0057848:	3f2aaaab 	.word	0x3f2aaaab
d005784c:	358637bd 	.word	0x358637bd
d0057850:	3b808081 	.word	0x3b808081
d0057854:	3eaaaaab 	.word	0x3eaaaaab
d0057858:	00000000 	.word	0x00000000
d005785c:	eee9 7a09 	vfma.f32	s15, s18, s18
d0057860:	eee8 7a08 	vfma.f32	s15, s16, s16
d0057864:	eef4 7aea 	vcmpe.f32	s15, s21
d0057868:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005786c:	d940      	bls.n	d00578f0 <submitEntitySolid+0x66c>
d005786e:	7b63      	ldrb	r3, [r4, #13]
d0057870:	eddd 2a05 	vldr	s5, [sp, #20]
d0057874:	ee0f 3a10 	vmov	s30, r3
d0057878:	9b04      	ldr	r3, [sp, #16]
d005787a:	ee72 9a8d 	vadd.f32	s19, s5, s26
d005787e:	ed5f 2a0c 	vldr	s5, [pc, #-48]	; d0057850 <submitEntitySolid+0x5cc>
d0057882:	eeb8 fa4f 	vcvt.f32.u32	s30, s30
d0057886:	ee2f fa22 	vmul.f32	s30, s30, s5
d005788a:	2b00      	cmp	r3, #0
d005788c:	d158      	bne.n	d0057940 <submitEntitySolid+0x6bc>
d005788e:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0057892:	fec9 9a8f 	vmaxnm.f32	s19, s19, s30
d0057896:	9001      	str	r0, [sp, #4]
d0057898:	fe89 0ac0 	vminnm.f32	s0, s19, s0
d005789c:	f7fe fbe8 	bl	d0056070 <brightnessToShadeF>
d00578a0:	f894 b00c 	ldrb.w	fp, [r4, #12]
d00578a4:	7ba3      	ldrb	r3, [r4, #14]
d00578a6:	eeb0 8a40 	vmov.f32	s16, s0
d00578aa:	f00b 0b0f 	and.w	fp, fp, #15
d00578ae:	9801      	ldr	r0, [sp, #4]
d00578b0:	b10b      	cbz	r3, d00578b6 <submitEntitySolid+0x632>
d00578b2:	f04b 0b10 	orr.w	fp, fp, #16
d00578b6:	b330      	cbz	r0, d0057906 <submitEntitySolid+0x682>
d00578b8:	eef0 4a48 	vmov.f32	s9, s16
d00578bc:	7b62      	ldrb	r2, [r4, #13]
d00578be:	4659      	mov	r1, fp
d00578c0:	9802      	ldr	r0, [sp, #8]
d00578c2:	ed97 3a00 	vldr	s6, [r7]
d00578c6:	edd7 3a01 	vldr	s7, [r7, #4]
d00578ca:	ed97 4a02 	vldr	s8, [r7, #8]
d00578ce:	edd6 1a00 	vldr	s3, [r6]
d00578d2:	ed96 2a01 	vldr	s4, [r6, #4]
d00578d6:	edd6 2a02 	vldr	s5, [r6, #8]
d00578da:	ed95 0a00 	vldr	s0, [r5]
d00578de:	edd5 0a01 	vldr	s1, [r5, #4]
d00578e2:	ed95 1a02 	vldr	s2, [r5, #8]
d00578e6:	f7ff f919 	bl	d0056b1c <submitClippedTri>
d00578ea:	f8da 3014 	ldr.w	r3, [sl, #20]
d00578ee:	9301      	str	r3, [sp, #4]
d00578f0:	f109 0901 	add.w	r9, r9, #1
d00578f4:	9b01      	ldr	r3, [sp, #4]
d00578f6:	4599      	cmp	r9, r3
d00578f8:	f6ff ae2a 	blt.w	d0057550 <submitEntitySolid+0x2cc>
d00578fc:	b03b      	add	sp, #236	; 0xec
d00578fe:	ecbd 8b10 	vpop	{d8-d15}
d0057902:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0057906:	9902      	ldr	r1, [sp, #8]
d0057908:	9803      	ldr	r0, [sp, #12]
d005790a:	ed97 3a00 	vldr	s6, [r7]
d005790e:	edd7 3a01 	vldr	s7, [r7, #4]
d0057912:	ed97 4a02 	vldr	s8, [r7, #8]
d0057916:	edd6 1a00 	vldr	s3, [r6]
d005791a:	ed96 2a01 	vldr	s4, [r6, #4]
d005791e:	edd6 2a02 	vldr	s5, [r6, #8]
d0057922:	ed95 0a00 	vldr	s0, [r5]
d0057926:	edd5 0a01 	vldr	s1, [r5, #4]
d005792a:	ed95 1a02 	vldr	s2, [r5, #8]
d005792e:	f7fe fc95 	bl	d005625c <clipTriangleToFrustum>
d0057932:	2802      	cmp	r0, #2
d0057934:	f300 815e 	bgt.w	d0057bf4 <submitEntitySolid+0x970>
d0057938:	f8da 3014 	ldr.w	r3, [sl, #20]
d005793c:	9301      	str	r3, [sp, #4]
d005793e:	e7d7      	b.n	d00578f0 <submitEntitySolid+0x66c>
d0057940:	ee74 da86 	vadd.f32	s27, s9, s12
d0057944:	ed1f 6a3d 	vldr	s12, [pc, #-244]	; d0057854 <submitEntitySolid+0x5d0>
d0057948:	ee35 ea26 	vadd.f32	s28, s10, s13
d005794c:	ee75 ea87 	vadd.f32	s29, s11, s14
d0057950:	eeb5 cac0 	vcmpe.f32	s24, #0.0
d0057954:	ee7d da83 	vadd.f32	s27, s27, s6
d0057958:	ee3e ea23 	vadd.f32	s28, s28, s7
d005795c:	ee7e ea84 	vadd.f32	s29, s29, s8
d0057960:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057964:	ee6d da86 	vmul.f32	s27, s27, s12
d0057968:	ee2e ea06 	vmul.f32	s28, s28, s12
d005796c:	ee6e ea86 	vmul.f32	s29, s29, s12
d0057970:	dd17      	ble.n	d00579a2 <submitEntitySolid+0x71e>
d0057972:	ed9d 7a08 	vldr	s14, [sp, #32]
d0057976:	ee77 2a4e 	vsub.f32	s5, s14, s28
d005797a:	ed9d 7a07 	vldr	s14, [sp, #28]
d005797e:	ee37 3a6d 	vsub.f32	s6, s14, s27
d0057982:	ed9d 7a09 	vldr	s14, [sp, #36]	; 0x24
d0057986:	ee37 4a6e 	vsub.f32	s8, s14, s29
d005798a:	ee22 7aa2 	vmul.f32	s14, s5, s5
d005798e:	eea3 7a03 	vfma.f32	s14, s6, s6
d0057992:	eea4 7a04 	vfma.f32	s14, s8, s8
d0057996:	eeb4 7aea 	vcmpe.f32	s14, s21
d005799a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005799e:	f300 81a7 	bgt.w	d0057cf0 <submitEntitySolid+0xa6c>
d00579a2:	ed1f 4a53 	vldr	s8, [pc, #-332]	; d0057858 <submitEntitySolid+0x5d4>
d00579a6:	eef0 2a44 	vmov.f32	s5, s8
d00579aa:	eeb0 3a44 	vmov.f32	s6, s8
d00579ae:	eef1 6ae7 	vsqrt.f32	s13, s15
d00579b2:	aa13      	add	r2, sp, #76	; 0x4c
d00579b4:	4639      	mov	r1, r7
d00579b6:	9501      	str	r5, [sp, #4]
d00579b8:	f04f 0b00 	mov.w	fp, #0
d00579bc:	4615      	mov	r5, r2
d00579be:	4627      	mov	r7, r4
d00579c0:	4632      	mov	r2, r6
d00579c2:	9e04      	ldr	r6, [sp, #16]
d00579c4:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d00579c8:	eef0 0a6c 	vmov.f32	s1, s25
d00579cc:	eeb0 6a4f 	vmov.f32	s12, s30
d00579d0:	eeb0 5a47 	vmov.f32	s10, s14
d00579d4:	eef0 ca43 	vmov.f32	s25, s6
d00579d8:	eeb0 fa44 	vmov.f32	s30, s8
d00579dc:	eec7 7a26 	vdiv.f32	s15, s14, s13
d00579e0:	eeb0 7a4b 	vmov.f32	s14, s22
d00579e4:	eef0 6a4d 	vmov.f32	s13, s26
d00579e8:	eeb0 ba6e 	vmov.f32	s22, s29
d00579ec:	eeb0 da62 	vmov.f32	s26, s5
d00579f0:	eef0 ea4e 	vmov.f32	s29, s28
d00579f4:	eeb0 ea6d 	vmov.f32	s28, s27
d00579f8:	ee28 8a27 	vmul.f32	s16, s16, s15
d00579fc:	ee29 9a27 	vmul.f32	s18, s18, s15
d0057a00:	ee68 8aa7 	vmul.f32	s17, s17, s15
d0057a04:	ee38 2a08 	vadd.f32	s4, s16, s16
d0057a08:	eef0 7a6f 	vmov.f32	s15, s31
d0057a0c:	ee39 1a09 	vadd.f32	s2, s18, s18
d0057a10:	ee78 1aa8 	vadd.f32	s3, s17, s17
d0057a14:	eef0 da48 	vmov.f32	s27, s16
d0057a18:	eef0 fa42 	vmov.f32	s31, s4
d0057a1c:	f855 4f04 	ldr.w	r4, [r5, #4]!
d0057a20:	7823      	ldrb	r3, [r4, #0]
d0057a22:	2b00      	cmp	r3, #0
d0057a24:	d172      	bne.n	d0057b0c <submitEntitySolid+0x888>
d0057a26:	ed94 0a02 	vldr	s0, [r4, #8]
d0057a2a:	ed94 4a01 	vldr	s8, [r4, #4]
d0057a2e:	ee30 0a6e 	vsub.f32	s0, s0, s29
d0057a32:	edd4 4a03 	vldr	s9, [r4, #12]
d0057a36:	ee34 4a4e 	vsub.f32	s8, s8, s28
d0057a3a:	edd4 3a0a 	vldr	s7, [r4, #40]	; 0x28
d0057a3e:	ee74 4acb 	vsub.f32	s9, s9, s22
d0057a42:	ee60 5a00 	vmul.f32	s11, s0, s0
d0057a46:	ee23 3aa3 	vmul.f32	s6, s7, s7
d0057a4a:	eee4 5a04 	vfma.f32	s11, s8, s8
d0057a4e:	eee4 5aa4 	vfma.f32	s11, s9, s9
d0057a52:	eef4 5a6a 	vcmp.f32	s11, s21
d0057a56:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057a5a:	dd44      	ble.n	d0057ae6 <submitEntitySolid+0x862>
d0057a5c:	eeb4 3a65 	vcmp.f32	s6, s11
d0057a60:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057a64:	dd3f      	ble.n	d0057ae6 <submitEntitySolid+0x862>
d0057a66:	eeb1 8ae5 	vsqrt.f32	s16, s11
d0057a6a:	edd4 2a08 	vldr	s5, [r4, #32]
d0057a6e:	ee22 2aa2 	vmul.f32	s4, s5, s5
d0057a72:	eeb4 2ae5 	vcmpe.f32	s4, s11
d0057a76:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057a7a:	ee85 3a08 	vdiv.f32	s6, s10, s16
d0057a7e:	ee24 4a03 	vmul.f32	s8, s8, s6
d0057a82:	ee20 0a03 	vmul.f32	s0, s0, s6
d0057a86:	ee64 4a83 	vmul.f32	s9, s9, s6
d0057a8a:	f140 80b0 	bpl.w	d0057bee <submitEntitySolid+0x96a>
d0057a8e:	ed94 2a09 	vldr	s4, [r4, #36]	; 0x24
d0057a92:	eef4 2ac2 	vcmpe.f32	s5, s4
d0057a96:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057a9a:	da24      	bge.n	d0057ae6 <submitEntitySolid+0x862>
d0057a9c:	eef4 3ac2 	vcmpe.f32	s7, s4
d0057aa0:	ee65 5a83 	vmul.f32	s11, s11, s6
d0057aa4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057aa8:	eeb4 2ae5 	vcmpe.f32	s4, s11
d0057aac:	f240 810d 	bls.w	d0057cca <submitEntitySolid+0xa46>
d0057ab0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057ab4:	f2c0 81c2 	blt.w	d0057e3c <submitEntitySolid+0xbb8>
d0057ab8:	ee75 5ae2 	vsub.f32	s11, s11, s5
d0057abc:	ee72 2a62 	vsub.f32	s5, s4, s5
d0057ac0:	eeb6 3a08 	vmov.f32	s6, #104	; 0x3f400000  0.750
d0057ac4:	eeb0 8a45 	vmov.f32	s16, s10
d0057ac8:	eec5 3aa2 	vdiv.f32	s7, s11, s5
d0057acc:	ed5f 5a9e 	vldr	s11, [pc, #-632]	; d0057858 <submitEntitySolid+0x5d4>
d0057ad0:	fec3 5aa5 	vmaxnm.f32	s11, s7, s11
d0057ad4:	fec5 5ac5 	vminnm.f32	s11, s11, s10
d0057ad8:	eea5 8ac3 	vfms.f32	s16, s11, s6
d0057adc:	eeb5 8ac0 	vcmpe.f32	s16, #0.0
d0057ae0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057ae4:	d820      	bhi.n	d0057b28 <submitEntitySolid+0x8a4>
d0057ae6:	f10b 0b01 	add.w	fp, fp, #1
d0057aea:	455e      	cmp	r6, fp
d0057aec:	d196      	bne.n	d0057a1c <submitEntitySolid+0x798>
d0057aee:	463c      	mov	r4, r7
d0057af0:	eef0 fa67 	vmov.f32	s31, s15
d0057af4:	eeb0 ba47 	vmov.f32	s22, s14
d0057af8:	9d01      	ldr	r5, [sp, #4]
d0057afa:	eeb0 da66 	vmov.f32	s26, s13
d0057afe:	4616      	mov	r6, r2
d0057b00:	eef0 ca60 	vmov.f32	s25, s1
d0057b04:	460f      	mov	r7, r1
d0057b06:	eeb0 fa46 	vmov.f32	s30, s12
d0057b0a:	e6c0      	b.n	d005788e <submitEntitySolid+0x60a>
d0057b0c:	ed94 4a04 	vldr	s8, [r4, #16]
d0057b10:	eeb7 8a00 	vmov.f32	s16, #112	; 0x3f800000  1.0
d0057b14:	ed94 0a05 	vldr	s0, [r4, #20]
d0057b18:	edd4 4a06 	vldr	s9, [r4, #24]
d0057b1c:	eeb1 4a44 	vneg.f32	s8, s8
d0057b20:	eeb1 0a40 	vneg.f32	s0, s0
d0057b24:	eef1 4a64 	vneg.f32	s9, s9
d0057b28:	ee60 5a28 	vmul.f32	s11, s0, s17
d0057b2c:	eee4 5a09 	vfma.f32	s11, s8, s18
d0057b30:	eee4 5aad 	vfma.f32	s11, s9, s27
d0057b34:	eef5 5ac0 	vcmpe.f32	s11, #0.0
d0057b38:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057b3c:	d9d3      	bls.n	d0057ae6 <submitEntitySolid+0x862>
d0057b3e:	eef5 bac0 	vcmpe.f32	s23, #0.0
d0057b42:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057b46:	dd07      	ble.n	d0057b58 <submitEntitySolid+0x8d4>
d0057b48:	edd4 3a07 	vldr	s7, [r4, #28]
d0057b4c:	ee6b 3aa3 	vmul.f32	s7, s23, s7
d0057b50:	ee63 3a88 	vmul.f32	s7, s7, s16
d0057b54:	eee5 9aa3 	vfma.f32	s19, s11, s7
d0057b58:	eeb5 cac0 	vcmpe.f32	s24, #0.0
d0057b5c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057b60:	dd2f      	ble.n	d0057bc2 <submitEntitySolid+0x93e>
d0057b62:	ee95 0aa1 	vfnms.f32	s0, s11, s3
d0057b66:	ee95 4a81 	vfnms.f32	s8, s11, s2
d0057b6a:	eed5 4aaf 	vfnms.f32	s9, s11, s31
d0057b6e:	ee2d 0a00 	vmul.f32	s0, s26, s0
d0057b72:	eeac 0a84 	vfma.f32	s0, s25, s8
d0057b76:	eeaf 0a24 	vfma.f32	s0, s30, s9
d0057b7a:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0057b7e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057b82:	dd1e      	ble.n	d0057bc2 <submitEntitySolid+0x93e>
d0057b84:	eef2 5a00 	vmov.f32	s11, #32	; 0x41000000  8.0
d0057b88:	eef4 0a65 	vcmp.f32	s1, s11
d0057b8c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057b90:	d009      	beq.n	d0057ba6 <submitEntitySolid+0x922>
d0057b92:	eef3 5a00 	vmov.f32	s11, #48	; 0x41800000  16.0
d0057b96:	eef4 0a65 	vcmp.f32	s1, s11
d0057b9a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057b9e:	f040 8124 	bne.w	d0057dea <submitEntitySolid+0xb66>
d0057ba2:	ee20 0a00 	vmul.f32	s0, s0, s0
d0057ba6:	ee20 0a00 	vmul.f32	s0, s0, s0
d0057baa:	ee20 0a00 	vmul.f32	s0, s0, s0
d0057bae:	ee20 0a00 	vmul.f32	s0, s0, s0
d0057bb2:	edd4 5a07 	vldr	s11, [r4, #28]
d0057bb6:	ee6c 5a25 	vmul.f32	s11, s24, s11
d0057bba:	ee25 8a88 	vmul.f32	s16, s11, s16
d0057bbe:	eee0 9a08 	vfma.f32	s19, s0, s16
d0057bc2:	eef4 9ac5 	vcmpe.f32	s19, s10
d0057bc6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057bca:	db8c      	blt.n	d0057ae6 <submitEntitySolid+0x862>
d0057bcc:	463c      	mov	r4, r7
d0057bce:	eef0 fa67 	vmov.f32	s31, s15
d0057bd2:	eeb0 ba47 	vmov.f32	s22, s14
d0057bd6:	9d01      	ldr	r5, [sp, #4]
d0057bd8:	eeb0 da66 	vmov.f32	s26, s13
d0057bdc:	4616      	mov	r6, r2
d0057bde:	eef0 ca60 	vmov.f32	s25, s1
d0057be2:	460f      	mov	r7, r1
d0057be4:	eeb0 fa46 	vmov.f32	s30, s12
d0057be8:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0057bec:	e64f      	b.n	d005788e <submitEntitySolid+0x60a>
d0057bee:	eeb7 8a00 	vmov.f32	s16, #112	; 0x3f800000  1.0
d0057bf2:	e799      	b.n	d0057b28 <submitEntitySolid+0x8a4>
d0057bf4:	1e46      	subs	r6, r0, #1
d0057bf6:	eef0 4a48 	vmov.f32	s9, s16
d0057bfa:	f8cd 9004 	str.w	r9, [sp, #4]
d0057bfe:	2501      	movs	r5, #1
d0057c00:	46d9      	mov	r9, fp
d0057c02:	9802      	ldr	r0, [sp, #8]
d0057c04:	46b3      	mov	fp, r6
d0057c06:	4626      	mov	r6, r4
d0057c08:	9c03      	ldr	r4, [sp, #12]
d0057c0a:	462f      	mov	r7, r5
d0057c0c:	3501      	adds	r5, #1
d0057c0e:	7bb3      	ldrb	r3, [r6, #14]
d0057c10:	4649      	mov	r1, r9
d0057c12:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d0057c16:	7b72      	ldrb	r2, [r6, #13]
d0057c18:	eb05 0c45 	add.w	ip, r5, r5, lsl #1
d0057c1c:	ed94 0a00 	vldr	s0, [r4]
d0057c20:	eb04 0787 	add.w	r7, r4, r7, lsl #2
d0057c24:	edd4 0a01 	vldr	s1, [r4, #4]
d0057c28:	eb04 0c8c 	add.w	ip, r4, ip, lsl #2
d0057c2c:	ed94 1a02 	vldr	s2, [r4, #8]
d0057c30:	edd7 1a00 	vldr	s3, [r7]
d0057c34:	ed97 2a01 	vldr	s4, [r7, #4]
d0057c38:	edd7 2a02 	vldr	s5, [r7, #8]
d0057c3c:	ed9c 3a00 	vldr	s6, [ip]
d0057c40:	eddc 3a01 	vldr	s7, [ip, #4]
d0057c44:	ed9c 4a02 	vldr	s8, [ip, #8]
d0057c48:	f7fe ff68 	bl	d0056b1c <submitClippedTri>
d0057c4c:	455d      	cmp	r5, fp
d0057c4e:	d1dc      	bne.n	d0057c0a <submitEntitySolid+0x986>
d0057c50:	f8dd 9004 	ldr.w	r9, [sp, #4]
d0057c54:	e670      	b.n	d0057938 <submitEntitySolid+0x6b4>
d0057c56:	2200      	movs	r2, #0
d0057c58:	ed9a 1a06 	vldr	s2, [sl, #24]
d0057c5c:	4611      	mov	r1, r2
d0057c5e:	e027      	b.n	d0057cb0 <submitEntitySolid+0xa2c>
d0057c60:	edd5 4a02 	vldr	s9, [r5, #8]
d0057c64:	ab3a      	add	r3, sp, #232	; 0xe8
d0057c66:	ed95 0a01 	vldr	s0, [r5, #4]
d0057c6a:	ee74 4acf 	vsub.f32	s9, s9, s30
d0057c6e:	edd5 0a03 	vldr	s1, [r5, #12]
d0057c72:	ee30 0a63 	vsub.f32	s0, s0, s7
d0057c76:	ed95 4a0a 	vldr	s8, [r5, #40]	; 0x28
d0057c7a:	ee70 0ae1 	vsub.f32	s1, s1, s3
d0057c7e:	eb03 0381 	add.w	r3, r3, r1, lsl #2
d0057c82:	ee64 4aa4 	vmul.f32	s9, s9, s9
d0057c86:	ee31 4a04 	vadd.f32	s8, s2, s8
d0057c8a:	eee0 4a00 	vfma.f32	s9, s0, s0
d0057c8e:	ee24 4a04 	vmul.f32	s8, s8, s8
d0057c92:	eee0 4aa0 	vfma.f32	s9, s1, s1
d0057c96:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0057c9a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057c9e:	db02      	blt.n	d0057ca6 <submitEntitySolid+0xa22>
d0057ca0:	3101      	adds	r1, #1
d0057ca2:	f843 5c98 	str.w	r5, [r3, #-152]
d0057ca6:	3201      	adds	r2, #1
d0057ca8:	3540      	adds	r5, #64	; 0x40
d0057caa:	4290      	cmp	r0, r2
d0057cac:	f340 809a 	ble.w	d0057de4 <submitEntitySolid+0xb60>
d0057cb0:	6aeb      	ldr	r3, [r5, #44]	; 0x2c
d0057cb2:	2b00      	cmp	r3, #0
d0057cb4:	d0f7      	beq.n	d0057ca6 <submitEntitySolid+0xa22>
d0057cb6:	782b      	ldrb	r3, [r5, #0]
d0057cb8:	2b01      	cmp	r3, #1
d0057cba:	d1d1      	bne.n	d0057c60 <submitEntitySolid+0x9dc>
d0057cbc:	ab3a      	add	r3, sp, #232	; 0xe8
d0057cbe:	eb03 0381 	add.w	r3, r3, r1, lsl #2
d0057cc2:	3101      	adds	r1, #1
d0057cc4:	f843 5c98 	str.w	r5, [r3, #-152]
d0057cc8:	e7ed      	b.n	d0057ca6 <submitEntitySolid+0xa22>
d0057cca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057cce:	f67f af0a 	bls.w	d0057ae6 <submitEntitySolid+0x862>
d0057cd2:	ee75 5ae2 	vsub.f32	s11, s11, s5
d0057cd6:	ee72 2a62 	vsub.f32	s5, s4, s5
d0057cda:	ee85 8aa2 	vdiv.f32	s16, s11, s5
d0057cde:	eddf 5a61 	vldr	s11, [pc, #388]	; d0057e64 <submitEntitySolid+0xbe0>
d0057ce2:	fe88 8a25 	vmaxnm.f32	s16, s16, s11
d0057ce6:	fe88 8a45 	vminnm.f32	s16, s16, s10
d0057cea:	ee35 8a48 	vsub.f32	s16, s10, s16
d0057cee:	e6f5      	b.n	d0057adc <submitEntitySolid+0x858>
d0057cf0:	eddf 6a5d 	vldr	s13, [pc, #372]	; d0057e68 <submitEntitySolid+0xbe4>
d0057cf4:	eeb4 7ae6 	vcmpe.f32	s14, s13
d0057cf8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057cfc:	d407      	bmi.n	d0057d0e <submitEntitySolid+0xa8a>
d0057cfe:	eddf 6a5b 	vldr	s13, [pc, #364]	; d0057e6c <submitEntitySolid+0xbe8>
d0057d02:	eeb4 7a66 	vcmp.f32	s14, s13
d0057d06:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057d0a:	f77f ae50 	ble.w	d00579ae <submitEntitySolid+0x72a>
d0057d0e:	eef1 6ac7 	vsqrt.f32	s13, s14
d0057d12:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0057d16:	ee86 7a26 	vdiv.f32	s14, s12, s13
d0057d1a:	ee23 3a07 	vmul.f32	s6, s6, s14
d0057d1e:	ee62 2a87 	vmul.f32	s5, s5, s14
d0057d22:	ee24 4a07 	vmul.f32	s8, s8, s14
d0057d26:	e642      	b.n	d00579ae <submitEntitySolid+0x72a>
d0057d28:	eef1 6a64 	vneg.f32	s13, s9
d0057d2c:	eef4 6a42 	vcmp.f32	s13, s4
d0057d30:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057d34:	f63f ad4b 	bhi.w	d00577ce <submitEntitySolid+0x54a>
d0057d38:	eef4 4a42 	vcmp.f32	s9, s4
d0057d3c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057d40:	f6ff ad45 	blt.w	d00577ce <submitEntitySolid+0x54a>
d0057d44:	eef1 6a44 	vneg.f32	s13, s8
d0057d48:	eef4 6ac1 	vcmpe.f32	s13, s2
d0057d4c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057d50:	eeb4 4ac1 	vcmpe.f32	s8, s2
d0057d54:	bf94      	ite	ls
d0057d56:	2001      	movls	r0, #1
d0057d58:	2000      	movhi	r0, #0
d0057d5a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057d5e:	eef4 7ac5 	vcmpe.f32	s15, s10
d0057d62:	f000 0001 	and.w	r0, r0, #1
d0057d66:	bfb8      	it	lt
d0057d68:	2000      	movlt	r0, #0
d0057d6a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057d6e:	f000 0001 	and.w	r0, r0, #1
d0057d72:	bfb8      	it	lt
d0057d74:	2000      	movlt	r0, #0
d0057d76:	2800      	cmp	r0, #0
d0057d78:	f43f ad29 	beq.w	d00577ce <submitEntitySolid+0x54a>
d0057d7c:	eef4 7a47 	vcmp.f32	s15, s14
d0057d80:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057d84:	f63f ad23 	bhi.w	d00577ce <submitEntitySolid+0x54a>
d0057d88:	ee64 4a8a 	vmul.f32	s9, s9, s20
d0057d8c:	200c      	movs	r0, #12
d0057d8e:	fb00 8002 	mla	r0, r0, r2, r8
d0057d92:	eeb1 7a64 	vneg.f32	s14, s9
d0057d96:	edd0 7a01 	vldr	s15, [r0, #4]
d0057d9a:	eef4 7a47 	vcmp.f32	s15, s14
d0057d9e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057da2:	f6ff ad14 	blt.w	d00577ce <submitEntitySolid+0x54a>
d0057da6:	eef4 7a64 	vcmp.f32	s15, s9
d0057daa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057dae:	f63f ad0e 	bhi.w	d00577ce <submitEntitySolid+0x54a>
d0057db2:	ee24 4a0a 	vmul.f32	s8, s8, s20
d0057db6:	200c      	movs	r0, #12
d0057db8:	fb00 8001 	mla	r0, r0, r1, r8
d0057dbc:	eeb1 7a44 	vneg.f32	s14, s8
d0057dc0:	edd0 7a01 	vldr	s15, [r0, #4]
d0057dc4:	eef4 7ac7 	vcmpe.f32	s15, s14
d0057dc8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057dcc:	eef4 7ac4 	vcmpe.f32	s15, s8
d0057dd0:	bfac      	ite	ge
d0057dd2:	2001      	movge	r0, #1
d0057dd4:	2000      	movlt	r0, #0
d0057dd6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057dda:	f000 0001 	and.w	r0, r0, #1
d0057dde:	bf88      	it	hi
d0057de0:	2000      	movhi	r0, #0
d0057de2:	e4f5      	b.n	d00577d0 <submitEntitySolid+0x54c>
d0057de4:	9104      	str	r1, [sp, #16]
d0057de6:	f7ff bae5 	b.w	d00573b4 <submitEntitySolid+0x130>
d0057dea:	ed8d 1a13 	vstr	s2, [sp, #76]	; 0x4c
d0057dee:	edcd 1a12 	vstr	s3, [sp, #72]	; 0x48
d0057df2:	ed8d 6a11 	vstr	s12, [sp, #68]	; 0x44
d0057df6:	9110      	str	r1, [sp, #64]	; 0x40
d0057df8:	920f      	str	r2, [sp, #60]	; 0x3c
d0057dfa:	edcd 6a0e 	vstr	s13, [sp, #56]	; 0x38
d0057dfe:	ed8d 7a0d 	vstr	s14, [sp, #52]	; 0x34
d0057e02:	edcd 7a0c 	vstr	s15, [sp, #48]	; 0x30
d0057e06:	900b      	str	r0, [sp, #44]	; 0x2c
d0057e08:	ed8d 5a0a 	vstr	s10, [sp, #40]	; 0x28
d0057e0c:	edcd 0a06 	vstr	s1, [sp, #24]
d0057e10:	f7fc f9ec 	bl	d00541ec <powfxt>
d0057e14:	ed9d 1a13 	vldr	s2, [sp, #76]	; 0x4c
d0057e18:	eddd 1a12 	vldr	s3, [sp, #72]	; 0x48
d0057e1c:	ed9d 6a11 	vldr	s12, [sp, #68]	; 0x44
d0057e20:	9910      	ldr	r1, [sp, #64]	; 0x40
d0057e22:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
d0057e24:	eddd 6a0e 	vldr	s13, [sp, #56]	; 0x38
d0057e28:	ed9d 7a0d 	vldr	s14, [sp, #52]	; 0x34
d0057e2c:	eddd 7a0c 	vldr	s15, [sp, #48]	; 0x30
d0057e30:	980b      	ldr	r0, [sp, #44]	; 0x2c
d0057e32:	ed9d 5a0a 	vldr	s10, [sp, #40]	; 0x28
d0057e36:	eddd 0a06 	vldr	s1, [sp, #24]
d0057e3a:	e6ba      	b.n	d0057bb2 <submitEntitySolid+0x92e>
d0057e3c:	ee75 5ac2 	vsub.f32	s11, s11, s4
d0057e40:	ee73 3ac2 	vsub.f32	s7, s7, s4
d0057e44:	eeb5 3a00 	vmov.f32	s6, #80	; 0x3e800000  0.250
d0057e48:	ee85 8aa3 	vdiv.f32	s16, s11, s7
d0057e4c:	eddf 5a05 	vldr	s11, [pc, #20]	; d0057e64 <submitEntitySolid+0xbe0>
d0057e50:	fe88 8a25 	vmaxnm.f32	s16, s16, s11
d0057e54:	fe88 8a45 	vminnm.f32	s16, s16, s10
d0057e58:	ee35 8a48 	vsub.f32	s16, s10, s16
d0057e5c:	ee28 8a03 	vmul.f32	s16, s16, s6
d0057e60:	e63c      	b.n	d0057adc <submitEntitySolid+0x858>
d0057e62:	bf00      	nop
d0057e64:	00000000 	.word	0x00000000
d0057e68:	3f7fbe77 	.word	0x3f7fbe77
d0057e6c:	3f8020c5 	.word	0x3f8020c5

d0057e70 <submitWorldEntities>:
d0057e70:	b570      	push	{r4, r5, r6, lr}
d0057e72:	4c3e      	ldr	r4, [pc, #248]	; (d0057f6c <submitWorldEntities+0xfc>)
d0057e74:	4605      	mov	r5, r0
d0057e76:	f504 46c0 	add.w	r6, r4, #24576	; 0x6000
d0057e7a:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0057e7e:	2b00      	cmp	r3, #0
d0057e80:	d070      	beq.n	d0057f64 <submitWorldEntities+0xf4>
d0057e82:	68e3      	ldr	r3, [r4, #12]
d0057e84:	2b00      	cmp	r3, #0
d0057e86:	d06d      	beq.n	d0057f64 <submitWorldEntities+0xf4>
d0057e88:	f894 2035 	ldrb.w	r2, [r4, #53]	; 0x35
d0057e8c:	07d2      	lsls	r2, r2, #31
d0057e8e:	d569      	bpl.n	d0057f64 <submitWorldEntities+0xf4>
d0057e90:	edd5 6a01 	vldr	s13, [r5, #4]
d0057e94:	ed94 7a01 	vldr	s14, [r4, #4]
d0057e98:	ed95 5a00 	vldr	s10, [r5]
d0057e9c:	ee37 7a66 	vsub.f32	s14, s14, s13
d0057ea0:	edd5 7a0d 	vldr	s15, [r5, #52]	; 0x34
d0057ea4:	edd4 6a00 	vldr	s13, [r4]
d0057ea8:	edd5 5a0c 	vldr	s11, [r5, #48]	; 0x30
d0057eac:	ee76 6ac5 	vsub.f32	s13, s13, s10
d0057eb0:	ed94 6a02 	vldr	s12, [r4, #8]
d0057eb4:	ee67 7a27 	vmul.f32	s15, s14, s15
d0057eb8:	ed95 5a02 	vldr	s10, [r5, #8]
d0057ebc:	edd5 4a0e 	vldr	s9, [r5, #56]	; 0x38
d0057ec0:	ee36 6a45 	vsub.f32	s12, s12, s10
d0057ec4:	ed93 5a06 	vldr	s10, [r3, #24]
d0057ec8:	eee6 7aa5 	vfma.f32	s15, s13, s11
d0057ecc:	edd5 5a11 	vldr	s11, [r5, #68]	; 0x44
d0057ed0:	eee6 7a24 	vfma.f32	s15, s12, s9
d0057ed4:	ee77 4ac5 	vsub.f32	s9, s15, s10
d0057ed8:	eef4 4ae5 	vcmpe.f32	s9, s11
d0057edc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057ee0:	dc40      	bgt.n	d0057f64 <submitWorldEntities+0xf4>
d0057ee2:	ee75 4a27 	vadd.f32	s9, s10, s15
d0057ee6:	edd5 5a10 	vldr	s11, [r5, #64]	; 0x40
d0057eea:	eef4 4ae5 	vcmpe.f32	s9, s11
d0057eee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057ef2:	d437      	bmi.n	d0057f64 <submitWorldEntities+0xf4>
d0057ef4:	edd5 5a07 	vldr	s11, [r5, #28]
d0057ef8:	eeb1 4a64 	vneg.f32	s8, s9
d0057efc:	ed95 3a08 	vldr	s6, [r5, #32]
d0057f00:	ee67 5a25 	vmul.f32	s11, s14, s11
d0057f04:	edd5 3a06 	vldr	s7, [r5, #24]
d0057f08:	eee6 5a03 	vfma.f32	s11, s12, s6
d0057f0c:	eee6 5aa3 	vfma.f32	s11, s13, s7
d0057f10:	eef4 5ac4 	vcmpe.f32	s11, s8
d0057f14:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057f18:	d424      	bmi.n	d0057f64 <submitWorldEntities+0xf4>
d0057f1a:	eef4 5ae4 	vcmpe.f32	s11, s9
d0057f1e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057f22:	dc1f      	bgt.n	d0057f64 <submitWorldEntities+0xf4>
d0057f24:	edd5 5a0a 	vldr	s11, [r5, #40]	; 0x28
d0057f28:	edd5 4a0b 	vldr	s9, [r5, #44]	; 0x2c
d0057f2c:	ee27 7a25 	vmul.f32	s14, s14, s11
d0057f30:	ed95 4a15 	vldr	s8, [r5, #84]	; 0x54
d0057f34:	edd5 5a09 	vldr	s11, [r5, #36]	; 0x24
d0057f38:	eea7 5a84 	vfma.f32	s10, s15, s8
d0057f3c:	eea6 7a24 	vfma.f32	s14, s12, s9
d0057f40:	eef1 7a45 	vneg.f32	s15, s10
d0057f44:	eea6 7aa5 	vfma.f32	s14, s13, s11
d0057f48:	eeb4 7ae7 	vcmpe.f32	s14, s15
d0057f4c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057f50:	d408      	bmi.n	d0057f64 <submitWorldEntities+0xf4>
d0057f52:	eeb4 7ac5 	vcmpe.f32	s14, s10
d0057f56:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057f5a:	dc03      	bgt.n	d0057f64 <submitWorldEntities+0xf4>
d0057f5c:	4629      	mov	r1, r5
d0057f5e:	4620      	mov	r0, r4
d0057f60:	f7ff f990 	bl	d0057284 <submitEntitySolid>
d0057f64:	3460      	adds	r4, #96	; 0x60
d0057f66:	42a6      	cmp	r6, r4
d0057f68:	d187      	bne.n	d0057e7a <submitWorldEntities+0xa>
d0057f6a:	bd70      	pop	{r4, r5, r6, pc}
d0057f6c:	d00f5ac0 	.word	0xd00f5ac0

d0057f70 <Render3D>:
d0057f70:	4aa2      	ldr	r2, [pc, #648]	; (d00581fc <Render3D+0x28c>)
d0057f72:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0057f76:	7813      	ldrb	r3, [r2, #0]
d0057f78:	4604      	mov	r4, r0
d0057f7a:	7850      	ldrb	r0, [r2, #1]
d0057f7c:	7891      	ldrb	r1, [r2, #2]
d0057f7e:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d0057f82:	78d2      	ldrb	r2, [r2, #3]
d0057f84:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0057f88:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0057f8c:	ed2d 8b02 	vpush	{d8}
d0057f90:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d0057f92:	b088      	sub	sp, #32
d0057f94:	4798      	blx	r3
d0057f96:	b128      	cbz	r0, d0057fa4 <Render3D+0x34>
d0057f98:	4999      	ldr	r1, [pc, #612]	; (d0058200 <Render3D+0x290>)
d0057f9a:	f100 0260 	add.w	r2, r0, #96	; 0x60
d0057f9e:	4b99      	ldr	r3, [pc, #612]	; (d0058204 <Render3D+0x294>)
d0057fa0:	6008      	str	r0, [r1, #0]
d0057fa2:	601a      	str	r2, [r3, #0]
d0057fa4:	4f98      	ldr	r7, [pc, #608]	; (d0058208 <Render3D+0x298>)
d0057fa6:	2600      	movs	r6, #0
d0057fa8:	4620      	mov	r0, r4
d0057faa:	603e      	str	r6, [r7, #0]
d0057fac:	f7ff ff60 	bl	d0057e70 <submitWorldEntities>
d0057fb0:	4620      	mov	r0, r4
d0057fb2:	f7fc f9b7 	bl	d0054324 <sb3dParticlesRender>
d0057fb6:	4b95      	ldr	r3, [pc, #596]	; (d005820c <Render3D+0x29c>)
d0057fb8:	681d      	ldr	r5, [r3, #0]
d0057fba:	2d00      	cmp	r5, #0
d0057fbc:	f040 80cf 	bne.w	d005815e <Render3D+0x1ee>
d0057fc0:	f8df 8254 	ldr.w	r8, [pc, #596]	; d0058218 <Render3D+0x2a8>
d0057fc4:	f8df 9254 	ldr.w	r9, [pc, #596]	; d005821c <Render3D+0x2ac>
d0057fc8:	0168      	lsls	r0, r5, #5
d0057fca:	f7f9 fb8b 	bl	d00516e4 <beginDepthBand>
d0057fce:	f8d8 6000 	ldr.w	r6, [r8]
d0057fd2:	2e00      	cmp	r6, #0
d0057fd4:	f040 8090 	bne.w	d00580f8 <Render3D+0x188>
d0057fd8:	f8d9 a000 	ldr.w	sl, [r9]
d0057fdc:	683a      	ldr	r2, [r7, #0]
d0057fde:	f1ba 0f00 	cmp.w	sl, #0
d0057fe2:	d158      	bne.n	d0058096 <Render3D+0x126>
d0057fe4:	2a00      	cmp	r2, #0
d0057fe6:	dd4e      	ble.n	d0058086 <Render3D+0x116>
d0057fe8:	4c89      	ldr	r4, [pc, #548]	; (d0058210 <Render3D+0x2a0>)
d0057fea:	e021      	b.n	d0058030 <Render3D+0xc0>
d0057fec:	f894 1036 	ldrb.w	r1, [r4, #54]	; 0x36
d0057ff0:	8ca2      	ldrh	r2, [r4, #36]	; 0x24
d0057ff2:	8c20      	ldrh	r0, [r4, #32]
d0057ff4:	8c66      	ldrh	r6, [r4, #34]	; 0x22
d0057ff6:	9305      	str	r3, [sp, #20]
d0057ff8:	9106      	str	r1, [sp, #24]
d0057ffa:	9204      	str	r2, [sp, #16]
d0057ffc:	9603      	str	r6, [sp, #12]
d0057ffe:	9002      	str	r0, [sp, #8]
d0058000:	6963      	ldr	r3, [r4, #20]
d0058002:	9301      	str	r3, [sp, #4]
d0058004:	6923      	ldr	r3, [r4, #16]
d0058006:	9300      	str	r3, [sp, #0]
d0058008:	edd4 1a07 	vldr	s3, [r4, #28]
d005800c:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0058010:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0058014:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0058018:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d005801c:	e9d4 0100 	ldrd	r0, r1, [r4]
d0058020:	f7fa fd46 	bl	d0052ab0 <fillTriangleDitherBayerT>
d0058024:	683a      	ldr	r2, [r7, #0]
d0058026:	f10a 0a01 	add.w	sl, sl, #1
d005802a:	3440      	adds	r4, #64	; 0x40
d005802c:	4592      	cmp	sl, r2
d005802e:	da2a      	bge.n	d0058086 <Render3D+0x116>
d0058030:	f894 303c 	ldrb.w	r3, [r4, #60]	; 0x3c
d0058034:	42ab      	cmp	r3, r5
d0058036:	dcf6      	bgt.n	d0058026 <Render3D+0xb6>
d0058038:	f894 303d 	ldrb.w	r3, [r4, #61]	; 0x3d
d005803c:	42ab      	cmp	r3, r5
d005803e:	dbf2      	blt.n	d0058026 <Render3D+0xb6>
d0058040:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0058044:	06da      	lsls	r2, r3, #27
d0058046:	d4d1      	bmi.n	d0057fec <Render3D+0x7c>
d0058048:	8ca2      	ldrh	r2, [r4, #36]	; 0x24
d005804a:	f10a 0a01 	add.w	sl, sl, #1
d005804e:	8c20      	ldrh	r0, [r4, #32]
d0058050:	6961      	ldr	r1, [r4, #20]
d0058052:	8c66      	ldrh	r6, [r4, #34]	; 0x22
d0058054:	9305      	str	r3, [sp, #20]
d0058056:	9204      	str	r2, [sp, #16]
d0058058:	9603      	str	r6, [sp, #12]
d005805a:	9002      	str	r0, [sp, #8]
d005805c:	9101      	str	r1, [sp, #4]
d005805e:	6923      	ldr	r3, [r4, #16]
d0058060:	9300      	str	r3, [sp, #0]
d0058062:	edd4 1a07 	vldr	s3, [r4, #28]
d0058066:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d005806a:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d005806e:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0058072:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d0058076:	e9d4 0100 	ldrd	r0, r1, [r4]
d005807a:	f7fa f801 	bl	d0052080 <fillTriangleDitherBayer>
d005807e:	683a      	ldr	r2, [r7, #0]
d0058080:	3440      	adds	r4, #64	; 0x40
d0058082:	4592      	cmp	sl, r2
d0058084:	dbd4      	blt.n	d0058030 <Render3D+0xc0>
d0058086:	3501      	adds	r5, #1
d0058088:	2d0a      	cmp	r5, #10
d005808a:	d19d      	bne.n	d0057fc8 <Render3D+0x58>
d005808c:	b008      	add	sp, #32
d005808e:	ecbd 8b02 	vpop	{d8}
d0058092:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0058096:	2a00      	cmp	r2, #0
d0058098:	ddf5      	ble.n	d0058086 <Render3D+0x116>
d005809a:	4c5d      	ldr	r4, [pc, #372]	; (d0058210 <Render3D+0x2a0>)
d005809c:	f894 303c 	ldrb.w	r3, [r4, #60]	; 0x3c
d00580a0:	3601      	adds	r6, #1
d00580a2:	42ab      	cmp	r3, r5
d00580a4:	dc1f      	bgt.n	d00580e6 <Render3D+0x176>
d00580a6:	f894 303d 	ldrb.w	r3, [r4, #61]	; 0x3d
d00580aa:	42ab      	cmp	r3, r5
d00580ac:	db1b      	blt.n	d00580e6 <Render3D+0x176>
d00580ae:	f894 2034 	ldrb.w	r2, [r4, #52]	; 0x34
d00580b2:	8ca3      	ldrh	r3, [r4, #36]	; 0x24
d00580b4:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d00580b6:	8c21      	ldrh	r1, [r4, #32]
d00580b8:	9205      	str	r2, [sp, #20]
d00580ba:	9304      	str	r3, [sp, #16]
d00580bc:	9003      	str	r0, [sp, #12]
d00580be:	9102      	str	r1, [sp, #8]
d00580c0:	6963      	ldr	r3, [r4, #20]
d00580c2:	9301      	str	r3, [sp, #4]
d00580c4:	6923      	ldr	r3, [r4, #16]
d00580c6:	9300      	str	r3, [sp, #0]
d00580c8:	edd4 1a07 	vldr	s3, [r4, #28]
d00580cc:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00580d0:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00580d4:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00580d8:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d00580dc:	e9d4 0100 	ldrd	r0, r1, [r4]
d00580e0:	f7fb fa30 	bl	d0053544 <fillTriangleDitherBayer2Mode>
d00580e4:	683a      	ldr	r2, [r7, #0]
d00580e6:	4296      	cmp	r6, r2
d00580e8:	f104 0440 	add.w	r4, r4, #64	; 0x40
d00580ec:	dbd6      	blt.n	d005809c <Render3D+0x12c>
d00580ee:	3501      	adds	r5, #1
d00580f0:	2d0a      	cmp	r5, #10
d00580f2:	f47f af69 	bne.w	d0057fc8 <Render3D+0x58>
d00580f6:	e7c9      	b.n	d005808c <Render3D+0x11c>
d00580f8:	683a      	ldr	r2, [r7, #0]
d00580fa:	2a00      	cmp	r2, #0
d00580fc:	ddc3      	ble.n	d0058086 <Render3D+0x116>
d00580fe:	4c44      	ldr	r4, [pc, #272]	; (d0058210 <Render3D+0x2a0>)
d0058100:	2600      	movs	r6, #0
d0058102:	f894 303c 	ldrb.w	r3, [r4, #60]	; 0x3c
d0058106:	3601      	adds	r6, #1
d0058108:	42ab      	cmp	r3, r5
d005810a:	dc1f      	bgt.n	d005814c <Render3D+0x1dc>
d005810c:	f894 303d 	ldrb.w	r3, [r4, #61]	; 0x3d
d0058110:	42ab      	cmp	r3, r5
d0058112:	db1b      	blt.n	d005814c <Render3D+0x1dc>
d0058114:	f894 2034 	ldrb.w	r2, [r4, #52]	; 0x34
d0058118:	8ca3      	ldrh	r3, [r4, #36]	; 0x24
d005811a:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d005811c:	8c21      	ldrh	r1, [r4, #32]
d005811e:	9205      	str	r2, [sp, #20]
d0058120:	9304      	str	r3, [sp, #16]
d0058122:	9003      	str	r0, [sp, #12]
d0058124:	9102      	str	r1, [sp, #8]
d0058126:	6963      	ldr	r3, [r4, #20]
d0058128:	9301      	str	r3, [sp, #4]
d005812a:	6923      	ldr	r3, [r4, #16]
d005812c:	9300      	str	r3, [sp, #0]
d005812e:	edd4 1a07 	vldr	s3, [r4, #28]
d0058132:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0058136:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d005813a:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d005813e:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d0058142:	e9d4 0100 	ldrd	r0, r1, [r4]
d0058146:	f7f9 fb65 	bl	d0051814 <fillTriangleFlat>
d005814a:	683a      	ldr	r2, [r7, #0]
d005814c:	4296      	cmp	r6, r2
d005814e:	f104 0440 	add.w	r4, r4, #64	; 0x40
d0058152:	dbd6      	blt.n	d0058102 <Render3D+0x192>
d0058154:	3501      	adds	r5, #1
d0058156:	2d0a      	cmp	r5, #10
d0058158:	f47f af36 	bne.w	d0057fc8 <Render3D+0x58>
d005815c:	e796      	b.n	d005808c <Render3D+0x11c>
d005815e:	683b      	ldr	r3, [r7, #0]
d0058160:	42b3      	cmp	r3, r6
d0058162:	dd93      	ble.n	d005808c <Render3D+0x11c>
d0058164:	eeb6 8a00 	vmov.f32	s16, #96	; 0x3f000000  0.5
d0058168:	4c29      	ldr	r4, [pc, #164]	; (d0058210 <Render3D+0x2a0>)
d005816a:	eddf 8a2a 	vldr	s17, [pc, #168]	; d0058214 <Render3D+0x2a4>
d005816e:	edd4 7a07 	vldr	s15, [r4, #28]
d0058172:	3601      	adds	r6, #1
d0058174:	f894 3035 	ldrb.w	r3, [r4, #53]	; 0x35
d0058178:	ee77 7a88 	vadd.f32	s15, s15, s16
d005817c:	ee07 3a10 	vmov	s14, r3
d0058180:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0058184:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0058188:	ee17 1a90 	vmov	r1, s15
d005818c:	eef0 7a48 	vmov.f32	s15, s16
d0058190:	2904      	cmp	r1, #4
d0058192:	eee7 7a28 	vfma.f32	s15, s14, s17
d0058196:	bfa8      	it	ge
d0058198:	2104      	movge	r1, #4
d005819a:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d005819e:	b153      	cbz	r3, d00581b6 <Render3D+0x246>
d00581a0:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00581a4:	ee17 3a90 	vmov	r3, s15
d00581a8:	f1c3 0305 	rsb	r3, r3, #5
d00581ac:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d00581b0:	4299      	cmp	r1, r3
d00581b2:	bfa8      	it	ge
d00581b4:	4619      	movge	r1, r3
d00581b6:	f894 0034 	ldrb.w	r0, [r4, #52]	; 0x34
d00581ba:	f7f9 fb1b 	bl	d00517f4 <shadeColor>
d00581be:	4605      	mov	r5, r0
d00581c0:	68e3      	ldr	r3, [r4, #12]
d00581c2:	68a2      	ldr	r2, [r4, #8]
d00581c4:	6861      	ldr	r1, [r4, #4]
d00581c6:	9000      	str	r0, [sp, #0]
d00581c8:	6820      	ldr	r0, [r4, #0]
d00581ca:	f7f9 fac5 	bl	d0051758 <drawLine>
d00581ce:	9500      	str	r5, [sp, #0]
d00581d0:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
d00581d4:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
d00581d8:	f7f9 fabe 	bl	d0051758 <drawLine>
d00581dc:	9500      	str	r5, [sp, #0]
d00581de:	e9d4 2300 	ldrd	r2, r3, [r4]
d00581e2:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
d00581e6:	f7f9 fab7 	bl	d0051758 <drawLine>
d00581ea:	683b      	ldr	r3, [r7, #0]
d00581ec:	3440      	adds	r4, #64	; 0x40
d00581ee:	42b3      	cmp	r3, r6
d00581f0:	dcbd      	bgt.n	d005816e <Render3D+0x1fe>
d00581f2:	b008      	add	sp, #32
d00581f4:	ecbd 8b02 	vpop	{d8}
d00581f8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00581fc:	2001f000 	.word	0x2001f000
d0058200:	d00699c0 	.word	0xd00699c0
d0058204:	d00699c4 	.word	0xd00699c4
d0058208:	d00699cc 	.word	0xd00699cc
d005820c:	d00e99e4 	.word	0xd00e99e4
d0058210:	d00699e0 	.word	0xd00699e0
d0058214:	3ca0a0a1 	.word	0x3ca0a0a1
d0058218:	d00699c8 	.word	0xd00699c8
d005821c:	d00e99e0 	.word	0xd00e99e0

d0058220 <sb3dRaycastWorld>:
d0058220:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0058224:	ed2d 8b10 	vpush	{d8-d15}
d0058228:	b088      	sub	sp, #32
d005822a:	ed8d 0a05 	vstr	s0, [sp, #20]
d005822e:	edcd 0a06 	vstr	s1, [sp, #24]
d0058232:	ed8d 1a07 	vstr	s2, [sp, #28]
d0058236:	edcd 1a02 	vstr	s3, [sp, #8]
d005823a:	ed8d 2a03 	vstr	s4, [sp, #12]
d005823e:	edcd 2a04 	vstr	s5, [sp, #16]
d0058242:	2800      	cmp	r0, #0
d0058244:	f000 83b6 	beq.w	d00589b4 <sb3dRaycastWorld+0x794>
d0058248:	ee62 7a02 	vmul.f32	s15, s4, s4
d005824c:	ed9f 7a7d 	vldr	s14, [pc, #500]	; d0058444 <sb3dRaycastWorld+0x224>
d0058250:	2300      	movs	r3, #0
d0058252:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
d0058256:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
d005825a:	2400      	movs	r4, #0
d005825c:	eee1 7aa1 	vfma.f32	s15, s3, s3
d0058260:	6282      	str	r2, [r0, #40]	; 0x28
d0058262:	eef0 ca61 	vmov.f32	s25, s3
d0058266:	6382      	str	r2, [r0, #56]	; 0x38
d0058268:	eeb0 da42 	vmov.f32	s26, s4
d005826c:	6482      	str	r2, [r0, #72]	; 0x48
d005826e:	eef0 da62 	vmov.f32	s27, s5
d0058272:	7004      	strb	r4, [r0, #0]
d0058274:	6041      	str	r1, [r0, #4]
d0058276:	6081      	str	r1, [r0, #8]
d0058278:	eee2 7aa2 	vfma.f32	s15, s5, s5
d005827c:	60c3      	str	r3, [r0, #12]
d005827e:	6103      	str	r3, [r0, #16]
d0058280:	6143      	str	r3, [r0, #20]
d0058282:	6183      	str	r3, [r0, #24]
d0058284:	61c3      	str	r3, [r0, #28]
d0058286:	6203      	str	r3, [r0, #32]
d0058288:	eef4 7ac7 	vcmpe.f32	s15, s14
d005828c:	6243      	str	r3, [r0, #36]	; 0x24
d005828e:	62c3      	str	r3, [r0, #44]	; 0x2c
d0058290:	6303      	str	r3, [r0, #48]	; 0x30
d0058292:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058296:	6343      	str	r3, [r0, #52]	; 0x34
d0058298:	63c3      	str	r3, [r0, #60]	; 0x3c
d005829a:	6403      	str	r3, [r0, #64]	; 0x40
d005829c:	6443      	str	r3, [r0, #68]	; 0x44
d005829e:	f240 8389 	bls.w	d00589b4 <sb3dRaycastWorld+0x794>
d00582a2:	ed9f 7a6f 	vldr	s14, [pc, #444]	; d0058460 <sb3dRaycastWorld+0x240>
d00582a6:	eef0 fa40 	vmov.f32	s31, s0
d00582aa:	eeb0 fa60 	vmov.f32	s30, s1
d00582ae:	eef4 7ac7 	vcmpe.f32	s15, s14
d00582b2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00582b6:	f100 82f4 	bmi.w	d00588a2 <sb3dRaycastWorld+0x682>
d00582ba:	ed9f 7a6a 	vldr	s14, [pc, #424]	; d0058464 <sb3dRaycastWorld+0x244>
d00582be:	eef4 7a47 	vcmp.f32	s15, s14
d00582c2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00582c6:	f300 82ec 	bgt.w	d00588a2 <sb3dRaycastWorld+0x682>
d00582ca:	ee6d 7a0d 	vmul.f32	s15, s26, s26
d00582ce:	2500      	movs	r5, #0
d00582d0:	4b5d      	ldr	r3, [pc, #372]	; (d0058448 <sb3dRaycastWorld+0x228>)
d00582d2:	46ae      	mov	lr, r5
d00582d4:	ed9f ea5d 	vldr	s28, [pc, #372]	; d005844c <sb3dRaycastWorld+0x22c>
d00582d8:	eeec 7aac 	vfma.f32	s15, s25, s25
d00582dc:	eddf ea5c 	vldr	s29, [pc, #368]	; d0058450 <sb3dRaycastWorld+0x230>
d00582e0:	eddf ba5c 	vldr	s23, [pc, #368]	; d0058454 <sb3dRaycastWorld+0x234>
d00582e4:	edcd 7a01 	vstr	s15, [sp, #4]
d00582e8:	f893 2034 	ldrb.w	r2, [r3, #52]	; 0x34
d00582ec:	2a00      	cmp	r2, #0
d00582ee:	f000 82e5 	beq.w	d00588bc <sb3dRaycastWorld+0x69c>
d00582f2:	68da      	ldr	r2, [r3, #12]
d00582f4:	2a00      	cmp	r2, #0
d00582f6:	f000 82e1 	beq.w	d00588bc <sb3dRaycastWorld+0x69c>
d00582fa:	f893 1035 	ldrb.w	r1, [r3, #53]	; 0x35
d00582fe:	0789      	lsls	r1, r1, #30
d0058300:	f140 82dc 	bpl.w	d00588bc <sb3dRaycastWorld+0x69c>
d0058304:	edd3 8a01 	vldr	s17, [r3, #4]
d0058308:	edd3 5a00 	vldr	s11, [r3]
d005830c:	ee78 7acf 	vsub.f32	s15, s17, s30
d0058310:	ed93 6a02 	vldr	s12, [r3, #8]
d0058314:	ee75 4aef 	vsub.f32	s9, s11, s31
d0058318:	edd2 6a06 	vldr	s13, [r2, #24]
d005831c:	ee36 5a41 	vsub.f32	s10, s12, s2
d0058320:	ee67 7a8d 	vmul.f32	s15, s15, s26
d0058324:	eeb1 7a66 	vneg.f32	s14, s13
d0058328:	eeec 7aa4 	vfma.f32	s15, s25, s9
d005832c:	eeed 7a85 	vfma.f32	s15, s27, s10
d0058330:	eef4 7ac7 	vcmpe.f32	s15, s14
d0058334:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058338:	f100 82c0 	bmi.w	d00588bc <sb3dRaycastWorld+0x69c>
d005833c:	ee36 7a83 	vadd.f32	s14, s13, s6
d0058340:	eef4 7ac7 	vcmpe.f32	s15, s14
d0058344:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058348:	f300 82b8 	bgt.w	d00588bc <sb3dRaycastWorld+0x69c>
d005834c:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0058350:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058354:	f240 8304 	bls.w	d0058960 <sb3dRaycastWorld+0x740>
d0058358:	eef4 7ac3 	vcmpe.f32	s15, s6
d005835c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058360:	f2c0 830c 	blt.w	d005897c <sb3dRaycastWorld+0x75c>
d0058364:	eef0 4a6f 	vmov.f32	s9, s31
d0058368:	eeb0 7a4f 	vmov.f32	s14, s30
d005836c:	eef0 7a41 	vmov.f32	s15, s2
d0058370:	eeec 4a83 	vfma.f32	s9, s25, s6
d0058374:	eead 7a03 	vfma.f32	s14, s26, s6
d0058378:	eeed 7a83 	vfma.f32	s15, s27, s6
d005837c:	ee74 4ae5 	vsub.f32	s9, s9, s11
d0058380:	ee37 7a68 	vsub.f32	s14, s14, s17
d0058384:	ee77 7ac6 	vsub.f32	s15, s15, s12
d0058388:	ee27 7a07 	vmul.f32	s14, s14, s14
d005838c:	ee66 6aa6 	vmul.f32	s13, s13, s13
d0058390:	eea4 7aa4 	vfma.f32	s14, s9, s9
d0058394:	eea7 7aa7 	vfma.f32	s14, s15, s15
d0058398:	eeb4 7ae6 	vcmpe.f32	s14, s13
d005839c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00583a0:	f300 828c 	bgt.w	d00588bc <sb3dRaycastWorld+0x69c>
d00583a4:	6817      	ldr	r7, [r2, #0]
d00583a6:	e9d2 4c04 	ldrd	r4, ip, [r2, #16]
d00583aa:	2c00      	cmp	r4, #0
d00583ac:	bf18      	it	ne
d00583ae:	2f00      	cmpne	r7, #0
d00583b0:	f000 8284 	beq.w	d00588bc <sb3dRaycastWorld+0x69c>
d00583b4:	f1bc 0f00 	cmp.w	ip, #0
d00583b8:	bfcc      	ite	gt
d00583ba:	2600      	movgt	r6, #0
d00583bc:	2601      	movle	r6, #1
d00583be:	2e00      	cmp	r6, #0
d00583c0:	f040 827c 	bne.w	d00588bc <sb3dRaycastWorld+0x69c>
d00583c4:	ee7f 8a68 	vsub.f32	s17, s30, s17
d00583c8:	ed93 aa08 	vldr	s20, [r3, #32]
d00583cc:	ed93 8a0b 	vldr	s16, [r3, #44]	; 0x2c
d00583d0:	ee7f 5ae5 	vsub.f32	s11, s31, s11
d00583d4:	ed93 0a05 	vldr	s0, [r3, #20]
d00583d8:	ee2a 9a0d 	vmul.f32	s18, s20, s26
d00583dc:	ee28 ca28 	vmul.f32	s24, s16, s17
d00583e0:	edd3 7a04 	vldr	s15, [r3, #16]
d00583e4:	ee2a aa28 	vmul.f32	s20, s20, s17
d00583e8:	ed93 4a07 	vldr	s8, [r3, #28]
d00583ec:	ee60 8a28 	vmul.f32	s17, s0, s17
d00583f0:	edd3 4a0a 	vldr	s9, [r3, #40]	; 0x28
d00583f4:	ee28 8a0d 	vmul.f32	s16, s16, s26
d00583f8:	ed93 5a09 	vldr	s10, [r3, #36]	; 0x24
d00583fc:	ee20 0a0d 	vmul.f32	s0, s0, s26
d0058400:	edd3 6a0c 	vldr	s13, [r3, #48]	; 0x30
d0058404:	eee7 8aa5 	vfma.f32	s17, s15, s11
d0058408:	ed93 7a06 	vldr	s14, [r3, #24]
d005840c:	eea4 aa25 	vfma.f32	s20, s8, s11
d0058410:	ed9f ba0c 	vldr	s22, [pc, #48]	; d0058444 <sb3dRaycastWorld+0x224>
d0058414:	eea7 0aac 	vfma.f32	s0, s15, s25
d0058418:	eea4 9a2c 	vfma.f32	s18, s8, s25
d005841c:	eea4 caa5 	vfma.f32	s24, s9, s11
d0058420:	eea4 8aac 	vfma.f32	s16, s9, s25
d0058424:	ee71 7a46 	vsub.f32	s15, s2, s12
d0058428:	eea7 0a2d 	vfma.f32	s0, s14, s27
d005842c:	eea5 9a2d 	vfma.f32	s18, s10, s27
d0058430:	eea5 aa27 	vfma.f32	s20, s10, s15
d0058434:	eea6 caa7 	vfma.f32	s24, s13, s15
d0058438:	eea6 8aad 	vfma.f32	s16, s13, s27
d005843c:	eee7 8a27 	vfma.f32	s17, s14, s15
d0058440:	e0cc      	b.n	d00585dc <sb3dRaycastWorld+0x3bc>
d0058442:	bf00      	nop
d0058444:	358637bd 	.word	0x358637bd
d0058448:	d00f5ac0 	.word	0xd00f5ac0
d005844c:	b8d1b717 	.word	0xb8d1b717
d0058450:	38d1b717 	.word	0x38d1b717
d0058454:	00000000 	.word	0x00000000
d0058458:	bf666666 	.word	0xbf666666
d005845c:	3f666666 	.word	0x3f666666
d0058460:	3f7fbe77 	.word	0x3f7fbe77
d0058464:	3f8020c5 	.word	0x3f8020c5
d0058468:	ed5f 5a03 	vldr	s11, [pc, #-12]	; d0058460 <sb3dRaycastWorld+0x240>
d005846c:	eef1 4a6d 	vneg.f32	s9, s27
d0058470:	eef4 3ae5 	vcmpe.f32	s7, s11
d0058474:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058478:	f100 8244 	bmi.w	d0058904 <sb3dRaycastWorld+0x6e4>
d005847c:	ed5f 5a07 	vldr	s11, [pc, #-28]	; d0058464 <sb3dRaycastWorld+0x244>
d0058480:	eef4 3ae5 	vcmpe.f32	s7, s11
d0058484:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058488:	f300 823c 	bgt.w	d0058904 <sb3dRaycastWorld+0x6e4>
d005848c:	ee67 5a03 	vmul.f32	s11, s14, s6
d0058490:	eef1 2a46 	vneg.f32	s5, s12
d0058494:	eeb1 4a47 	vneg.f32	s8, s14
d0058498:	eee6 5a26 	vfma.f32	s11, s12, s13
d005849c:	eee7 5aa4 	vfma.f32	s11, s15, s9
d00584a0:	eee7 4ae5 	vfms.f32	s9, s15, s11
d00584a4:	eee6 6a65 	vfms.f32	s13, s12, s11
d00584a8:	eea7 3a65 	vfms.f32	s6, s14, s11
d00584ac:	ee24 5aa4 	vmul.f32	s10, s9, s9
d00584b0:	ee63 5a03 	vmul.f32	s11, s6, s6
d00584b4:	eee6 5aa6 	vfma.f32	s11, s13, s13
d00584b8:	ee75 5a85 	vadd.f32	s11, s11, s10
d00584bc:	eef4 5acb 	vcmpe.f32	s11, s22
d00584c0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00584c4:	f200 81d2 	bhi.w	d005886c <sb3dRaycastWorld+0x64c>
d00584c8:	ed5f 6a1d 	vldr	s13, [pc, #-116]	; d0058458 <sb3dRaycastWorld+0x238>
d00584cc:	eeb4 7a66 	vcmp.f32	s14, s13
d00584d0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00584d4:	dd07      	ble.n	d00584e6 <sb3dRaycastWorld+0x2c6>
d00584d6:	ed5f 6a1f 	vldr	s13, [pc, #-124]	; d005845c <sb3dRaycastWorld+0x23c>
d00584da:	eeb4 7a66 	vcmp.f32	s14, s13
d00584de:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00584e2:	f100 826f 	bmi.w	d00589c4 <sb3dRaycastWorld+0x7a4>
d00584e6:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d00584ea:	eeb0 5a67 	vmov.f32	s10, s15
d00584ee:	ee27 3a46 	vnmul.f32	s6, s14, s12
d00584f2:	eee2 6a86 	vfma.f32	s13, s5, s12
d00584f6:	eef0 3a46 	vmov.f32	s7, s12
d00584fa:	ee67 4ac6 	vnmul.f32	s9, s15, s12
d00584fe:	ee63 5a03 	vmul.f32	s11, s6, s6
d0058502:	eef0 7a45 	vmov.f32	s15, s10
d0058506:	eeb0 6a63 	vmov.f32	s12, s7
d005850a:	eee6 5aa6 	vfma.f32	s11, s13, s13
d005850e:	eee4 5aa4 	vfma.f32	s11, s9, s9
d0058512:	eef4 5acb 	vcmpe.f32	s11, s22
d0058516:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005851a:	f300 81a7 	bgt.w	d005886c <sb3dRaycastWorld+0x64c>
d005851e:	eef0 6a6b 	vmov.f32	s13, s23
d0058522:	eeb0 4a6b 	vmov.f32	s8, s23
d0058526:	eef0 5a6b 	vmov.f32	s11, s23
d005852a:	eee5 5a05 	vfma.f32	s11, s10, s10
d005852e:	ee76 6ae3 	vsub.f32	s13, s13, s7
d0058532:	eee6 5aa6 	vfma.f32	s11, s13, s13
d0058536:	eef4 5acb 	vcmpe.f32	s11, s22
d005853a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005853e:	f340 81c9 	ble.w	d00588d4 <sb3dRaycastWorld+0x6b4>
d0058542:	eef1 4ae5 	vsqrt.f32	s9, s11
d0058546:	eef7 5a00 	vmov.f32	s11, #112	; 0x3f800000  1.0
d005854a:	ee85 3aa4 	vdiv.f32	s6, s11, s9
d005854e:	ee23 4a04 	vmul.f32	s8, s6, s8
d0058552:	ee66 5a83 	vmul.f32	s11, s13, s6
d0058556:	ee23 3a05 	vmul.f32	s6, s6, s10
d005855a:	ee67 3ac4 	vnmul.f32	s7, s15, s8
d005855e:	ee66 4a65 	vnmul.f32	s9, s12, s11
d0058562:	ee64 2a06 	vmul.f32	s5, s8, s12
d0058566:	eee5 3a87 	vfma.f32	s7, s11, s14
d005856a:	eee3 4a27 	vfma.f32	s9, s6, s15
d005856e:	ee63 6a07 	vmul.f32	s13, s6, s14
d0058572:	ee23 5aa3 	vmul.f32	s10, s7, s7
d0058576:	eea4 5aa4 	vfma.f32	s10, s9, s9
d005857a:	ee72 6ae6 	vsub.f32	s13, s5, s13
d005857e:	eea6 5aa6 	vfma.f32	s10, s13, s13
d0058582:	eeb4 5acb 	vcmpe.f32	s10, s22
d0058586:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005858a:	f340 81b4 	ble.w	d00588f6 <sb3dRaycastWorld+0x6d6>
d005858e:	eef1 2ac5 	vsqrt.f32	s5, s10
d0058592:	eeb7 2a00 	vmov.f32	s4, #112	; 0x3f800000  1.0
d0058596:	ee82 5a22 	vdiv.f32	s10, s4, s5
d005859a:	ee65 3a23 	vmul.f32	s7, s10, s7
d005859e:	ee65 4a24 	vmul.f32	s9, s10, s9
d00585a2:	ee66 6a85 	vmul.f32	s13, s13, s10
d00585a6:	ed80 3a0a 	vstr	s6, [r0, #40]	; 0x28
d00585aa:	eeb0 3a61 	vmov.f32	s6, s3
d00585ae:	f04f 0e01 	mov.w	lr, #1
d00585b2:	ed80 4a0b 	vstr	s8, [r0, #44]	; 0x2c
d00585b6:	edc0 5a0c 	vstr	s11, [r0, #48]	; 0x30
d00585ba:	edc0 3a0d 	vstr	s7, [r0, #52]	; 0x34
d00585be:	edc0 4a0e 	vstr	s9, [r0, #56]	; 0x38
d00585c2:	edc0 6a0f 	vstr	s13, [r0, #60]	; 0x3c
d00585c6:	ed80 6a10 	vstr	s12, [r0, #64]	; 0x40
d00585ca:	ed80 7a11 	vstr	s14, [r0, #68]	; 0x44
d00585ce:	edc0 7a12 	vstr	s15, [r0, #72]	; 0x48
d00585d2:	3601      	adds	r6, #1
d00585d4:	3410      	adds	r4, #16
d00585d6:	45b4      	cmp	ip, r6
d00585d8:	f340 8170 	ble.w	d00588bc <sb3dRaycastWorld+0x69c>
d00585dc:	6822      	ldr	r2, [r4, #0]
d00585de:	68a1      	ldr	r1, [r4, #8]
d00585e0:	eb02 0842 	add.w	r8, r2, r2, lsl #1
d00585e4:	6862      	ldr	r2, [r4, #4]
d00585e6:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d00585ea:	eb07 0888 	add.w	r8, r7, r8, lsl #2
d00585ee:	eb07 0181 	add.w	r1, r7, r1, lsl #2
d00585f2:	edd8 5a02 	vldr	s11, [r8, #8]
d00585f6:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d00585fa:	edd1 4a02 	vldr	s9, [r1, #8]
d00585fe:	ed98 6a00 	vldr	s12, [r8]
d0058602:	eb07 0282 	add.w	r2, r7, r2, lsl #2
d0058606:	ee74 4ae5 	vsub.f32	s9, s9, s11
d005860a:	ed98 7a01 	vldr	s14, [r8, #4]
d005860e:	ed91 4a00 	vldr	s8, [r1]
d0058612:	ed91 5a01 	vldr	s10, [r1, #4]
d0058616:	ee34 4a46 	vsub.f32	s8, s8, s12
d005861a:	edd2 2a01 	vldr	s5, [r2, #4]
d005861e:	ee35 5a47 	vsub.f32	s10, s10, s14
d0058622:	edd2 3a00 	vldr	s7, [r2]
d0058626:	ee64 7ac9 	vnmul.f32	s15, s9, s18
d005862a:	ed92 2a02 	vldr	s4, [r2, #8]
d005862e:	ee72 2ac7 	vsub.f32	s5, s5, s14
d0058632:	ee65 0a40 	vnmul.f32	s1, s10, s0
d0058636:	eee0 7a04 	vfma.f32	s15, s0, s8
d005863a:	ee73 3ac6 	vsub.f32	s7, s7, s12
d005863e:	eee8 0a24 	vfma.f32	s1, s16, s9
d0058642:	ee64 1a48 	vnmul.f32	s3, s8, s16
d0058646:	ee32 2a65 	vsub.f32	s4, s4, s11
d005864a:	ee62 6aa7 	vmul.f32	s13, s5, s15
d005864e:	eee9 1a05 	vfma.f32	s3, s18, s10
d0058652:	eee3 6aa0 	vfma.f32	s13, s7, s1
d0058656:	eee2 6a21 	vfma.f32	s13, s4, s3
d005865a:	eef4 6a4e 	vcmp.f32	s13, s28
d005865e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058662:	dd04      	ble.n	d005866e <sb3dRaycastWorld+0x44e>
d0058664:	eef4 6aee 	vcmpe.f32	s13, s29
d0058668:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005866c:	d4b1      	bmi.n	d00585d2 <sb3dRaycastWorld+0x3b2>
d005866e:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0058672:	ee3c 7a47 	vsub.f32	s14, s24, s14
d0058676:	ee3a 6a46 	vsub.f32	s12, s20, s12
d005867a:	eec9 aaa6 	vdiv.f32	s21, s19, s13
d005867e:	ee67 7a87 	vmul.f32	s15, s15, s14
d0058682:	ee78 5ae5 	vsub.f32	s11, s17, s11
d0058686:	eee0 7a86 	vfma.f32	s15, s1, s12
d005868a:	eee1 7aa5 	vfma.f32	s15, s3, s11
d005868e:	ee6a 7aa7 	vmul.f32	s15, s21, s15
d0058692:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0058696:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005869a:	d49a      	bmi.n	d00585d2 <sb3dRaycastWorld+0x3b2>
d005869c:	eef4 7ae9 	vcmpe.f32	s15, s19
d00586a0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00586a4:	dc95      	bgt.n	d00585d2 <sb3dRaycastWorld+0x3b2>
d00586a6:	ee66 6a42 	vnmul.f32	s13, s12, s4
d00586aa:	ee65 1ae2 	vnmul.f32	s3, s11, s5
d00586ae:	eee3 6aa5 	vfma.f32	s13, s7, s11
d00586b2:	eef0 5a61 	vmov.f32	s11, s3
d00586b6:	eee2 5a07 	vfma.f32	s11, s4, s14
d00586ba:	ee27 7a63 	vnmul.f32	s14, s14, s7
d00586be:	eea2 7a86 	vfma.f32	s14, s5, s12
d00586c2:	ee28 6a26 	vmul.f32	s12, s16, s13
d00586c6:	eea9 6a25 	vfma.f32	s12, s18, s11
d00586ca:	eea0 6a07 	vfma.f32	s12, s0, s14
d00586ce:	ee2a 6a86 	vmul.f32	s12, s21, s12
d00586d2:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d00586d6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00586da:	f53f af7a 	bmi.w	d00585d2 <sb3dRaycastWorld+0x3b2>
d00586de:	ee77 7a86 	vadd.f32	s15, s15, s12
d00586e2:	eef4 7ae9 	vcmpe.f32	s15, s19
d00586e6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00586ea:	f73f af72 	bgt.w	d00585d2 <sb3dRaycastWorld+0x3b2>
d00586ee:	ee65 1a26 	vmul.f32	s3, s10, s13
d00586f2:	eee4 1a25 	vfma.f32	s3, s8, s11
d00586f6:	eee4 1a87 	vfma.f32	s3, s9, s14
d00586fa:	ee6a 1aa1 	vmul.f32	s3, s21, s3
d00586fe:	eef4 1aee 	vcmpe.f32	s3, s29
d0058702:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058706:	f67f af64 	bls.w	d00585d2 <sb3dRaycastWorld+0x3b2>
d005870a:	eef4 1ac3 	vcmpe.f32	s3, s6
d005870e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058712:	f73f af5e 	bgt.w	d00585d2 <sb3dRaycastWorld+0x3b2>
d0058716:	ee24 7a62 	vnmul.f32	s14, s8, s5
d005871a:	ee64 7ae3 	vnmul.f32	s15, s9, s7
d005871e:	ee25 3a42 	vnmul.f32	s6, s10, s4
d0058722:	eea3 7a85 	vfma.f32	s14, s7, s10
d0058726:	eee2 7a04 	vfma.f32	s15, s4, s8
d005872a:	eea2 3aa4 	vfma.f32	s6, s5, s9
d005872e:	eef0 2a47 	vmov.f32	s5, s14
d0058732:	ee27 7aa7 	vmul.f32	s14, s15, s15
d0058736:	eea3 7a03 	vfma.f32	s14, s6, s6
d005873a:	eea2 7aa2 	vfma.f32	s14, s5, s5
d005873e:	eeb4 7acb 	vcmpe.f32	s14, s22
d0058742:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058746:	f340 8112 	ble.w	d005896e <sb3dRaycastWorld+0x74e>
d005874a:	ed5f 6abb 	vldr	s13, [pc, #-748]	; d0058460 <sb3dRaycastWorld+0x240>
d005874e:	eeb4 7ae6 	vcmpe.f32	s14, s13
d0058752:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058756:	f100 8120 	bmi.w	d005899a <sb3dRaycastWorld+0x77a>
d005875a:	ed5f 6abe 	vldr	s13, [pc, #-760]	; d0058464 <sb3dRaycastWorld+0x244>
d005875e:	eeb4 7a66 	vcmp.f32	s14, s13
d0058762:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058766:	f300 8118 	bgt.w	d005899a <sb3dRaycastWorld+0x77a>
d005876a:	2201      	movs	r2, #1
d005876c:	eef0 5a4c 	vmov.f32	s11, s24
d0058770:	eef0 3a4a 	vmov.f32	s7, s20
d0058774:	6045      	str	r5, [r0, #4]
d0058776:	7002      	strb	r2, [r0, #0]
d0058778:	eef0 aa68 	vmov.f32	s21, s17
d005877c:	edd3 4a0b 	vldr	s9, [r3, #44]	; 0x2c
d0058780:	eee8 5a21 	vfma.f32	s11, s16, s3
d0058784:	ed93 4a08 	vldr	s8, [r3, #32]
d0058788:	eee9 3a21 	vfma.f32	s7, s18, s3
d005878c:	ee24 7aa7 	vmul.f32	s14, s9, s15
d0058790:	ed93 5a0a 	vldr	s10, [r3, #40]	; 0x28
d0058794:	edd3 0a07 	vldr	s1, [r3, #28]
d0058798:	eee0 aa21 	vfma.f32	s21, s0, s3
d005879c:	ee25 6a27 	vmul.f32	s12, s10, s15
d00587a0:	ed93 2a05 	vldr	s4, [r3, #20]
d00587a4:	eea4 7a03 	vfma.f32	s14, s8, s6
d00587a8:	edd3 9a0c 	vldr	s19, [r3, #48]	; 0x30
d00587ac:	ee25 5a85 	vmul.f32	s10, s11, s10
d00587b0:	6086      	str	r6, [r0, #8]
d00587b2:	eea0 6a83 	vfma.f32	s12, s1, s6
d00587b6:	edc0 1a03 	vstr	s3, [r0, #12]
d00587ba:	ee69 7aa7 	vmul.f32	s15, s19, s15
d00587be:	eea3 5aa0 	vfma.f32	s10, s7, s1
d00587c2:	edd3 0a09 	vldr	s1, [r3, #36]	; 0x24
d00587c6:	ee65 4aa4 	vmul.f32	s9, s11, s9
d00587ca:	eea2 7a22 	vfma.f32	s14, s4, s5
d00587ce:	ee65 5aa9 	vmul.f32	s11, s11, s19
d00587d2:	edd3 9a04 	vldr	s19, [r3, #16]
d00587d6:	eee0 7a83 	vfma.f32	s15, s1, s6
d00587da:	eea9 6aa2 	vfma.f32	s12, s19, s5
d00587de:	eee3 4a84 	vfma.f32	s9, s7, s8
d00587e2:	ed93 4a01 	vldr	s8, [r3, #4]
d00587e6:	eee3 5aa0 	vfma.f32	s11, s7, s1
d00587ea:	edd3 0a06 	vldr	s1, [r3, #24]
d00587ee:	ee67 3a07 	vmul.f32	s7, s14, s14
d00587f2:	eef1 6a6c 	vneg.f32	s13, s25
d00587f6:	eee0 7aa2 	vfma.f32	s15, s1, s5
d00587fa:	eee6 3a06 	vfma.f32	s7, s12, s12
d00587fe:	ee74 4a84 	vadd.f32	s9, s9, s8
d0058802:	ed93 4a00 	vldr	s8, [r3]
d0058806:	eeb1 3a4d 	vneg.f32	s6, s26
d005880a:	ee35 5a04 	vadd.f32	s10, s10, s8
d005880e:	ed93 4a02 	vldr	s8, [r3, #8]
d0058812:	eeea 4a82 	vfma.f32	s9, s21, s4
d0058816:	ed80 6a07 	vstr	s12, [r0, #28]
d005881a:	ee75 5a84 	vadd.f32	s11, s11, s8
d005881e:	ed80 7a08 	vstr	s14, [r0, #32]
d0058822:	eee7 3aa7 	vfma.f32	s7, s15, s15
d0058826:	edc0 7a09 	vstr	s15, [r0, #36]	; 0x24
d005882a:	eeaa 5aa9 	vfma.f32	s10, s21, s19
d005882e:	eeea 5aa0 	vfma.f32	s11, s21, s1
d0058832:	edc0 4a05 	vstr	s9, [r0, #20]
d0058836:	eef4 3acb 	vcmpe.f32	s7, s22
d005883a:	ed80 5a04 	vstr	s10, [r0, #16]
d005883e:	edc0 5a06 	vstr	s11, [r0, #24]
d0058842:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058846:	f73f ae0f 	bgt.w	d0058468 <sb3dRaycastWorld+0x248>
d005884a:	eddd 7a01 	vldr	s15, [sp, #4]
d005884e:	ed9f 7a60 	vldr	s14, [pc, #384]	; d00589d0 <sb3dRaycastWorld+0x7b0>
d0058852:	eef4 7acb 	vcmpe.f32	s15, s22
d0058856:	eef0 5a67 	vmov.f32	s11, s15
d005885a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005885e:	d970      	bls.n	d0058942 <sb3dRaycastWorld+0x722>
d0058860:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0058864:	eeb0 6a47 	vmov.f32	s12, s14
d0058868:	eef0 4a47 	vmov.f32	s9, s14
d005886c:	eeb1 5ae5 	vsqrt.f32	s10, s11
d0058870:	eef7 5a00 	vmov.f32	s11, #112	; 0x3f800000  1.0
d0058874:	eec5 3a85 	vdiv.f32	s7, s11, s10
d0058878:	ee66 6aa3 	vmul.f32	s13, s13, s7
d005887c:	ee64 4aa3 	vmul.f32	s9, s9, s7
d0058880:	ee63 3a83 	vmul.f32	s7, s7, s6
d0058884:	ee27 4ae6 	vnmul.f32	s8, s15, s13
d0058888:	ee27 5a64 	vnmul.f32	s10, s14, s9
d005888c:	ee66 6a87 	vmul.f32	s13, s13, s14
d0058890:	eea4 4a86 	vfma.f32	s8, s9, s12
d0058894:	eea3 5aa7 	vfma.f32	s10, s7, s15
d0058898:	ee63 3a86 	vmul.f32	s7, s7, s12
d005889c:	ee64 5a04 	vmul.f32	s11, s8, s8
d00588a0:	e643      	b.n	d005852a <sb3dRaycastWorld+0x30a>
d00588a2:	eeb1 7ae7 	vsqrt.f32	s14, s15
d00588a6:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00588aa:	eec7 da87 	vdiv.f32	s27, s15, s14
d00588ae:	ee61 caad 	vmul.f32	s25, s3, s27
d00588b2:	ee22 da2d 	vmul.f32	s26, s4, s27
d00588b6:	ee62 daad 	vmul.f32	s27, s5, s27
d00588ba:	e506      	b.n	d00582ca <sb3dRaycastWorld+0xaa>
d00588bc:	3501      	adds	r5, #1
d00588be:	3360      	adds	r3, #96	; 0x60
d00588c0:	f5b5 7f80 	cmp.w	r5, #256	; 0x100
d00588c4:	f47f ad10 	bne.w	d00582e8 <sb3dRaycastWorld+0xc8>
d00588c8:	4670      	mov	r0, lr
d00588ca:	b008      	add	sp, #32
d00588cc:	ecbd 8b10 	vpop	{d8-d15}
d00588d0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00588d4:	eeb7 3a00 	vmov.f32	s6, #112	; 0x3f800000  1.0
d00588d8:	eef0 6a47 	vmov.f32	s13, s14
d00588dc:	eef0 4a67 	vmov.f32	s9, s15
d00588e0:	eef0 3a6b 	vmov.f32	s7, s23
d00588e4:	eef0 2a6b 	vmov.f32	s5, s23
d00588e8:	eeb0 5a6b 	vmov.f32	s10, s23
d00588ec:	eef0 5a6b 	vmov.f32	s11, s23
d00588f0:	eeb0 4a6b 	vmov.f32	s8, s23
d00588f4:	e63f      	b.n	d0058576 <sb3dRaycastWorld+0x356>
d00588f6:	eef7 4a00 	vmov.f32	s9, #112	; 0x3f800000  1.0
d00588fa:	eef0 6a6b 	vmov.f32	s13, s23
d00588fe:	eef0 3a6b 	vmov.f32	s7, s23
d0058902:	e650      	b.n	d00585a6 <sb3dRaycastWorld+0x386>
d0058904:	eeb1 5ae3 	vsqrt.f32	s10, s7
d0058908:	eeb7 4a00 	vmov.f32	s8, #112	; 0x3f800000  1.0
d005890c:	eec4 5a05 	vdiv.f32	s11, s8, s10
d0058910:	ee27 7a25 	vmul.f32	s14, s14, s11
d0058914:	ee26 6a25 	vmul.f32	s12, s12, s11
d0058918:	ee67 7aa5 	vmul.f32	s15, s15, s11
d005891c:	ee63 5a07 	vmul.f32	s11, s6, s14
d0058920:	eef1 2a46 	vneg.f32	s5, s12
d0058924:	eeb1 4a47 	vneg.f32	s8, s14
d0058928:	eee6 5a86 	vfma.f32	s11, s13, s12
d005892c:	eee4 5aa7 	vfma.f32	s11, s9, s15
d0058930:	eee7 4ae5 	vfms.f32	s9, s15, s11
d0058934:	eee6 6a65 	vfms.f32	s13, s12, s11
d0058938:	eea7 3a65 	vfms.f32	s6, s14, s11
d005893c:	ee24 5aa4 	vmul.f32	s10, s9, s9
d0058940:	e5b6      	b.n	d00584b0 <sb3dRaycastWorld+0x290>
d0058942:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0058946:	ed9f 4a23 	vldr	s8, [pc, #140]	; d00589d4 <sb3dRaycastWorld+0x7b4>
d005894a:	eef0 3a47 	vmov.f32	s7, s14
d005894e:	eeb7 3a00 	vmov.f32	s6, #112	; 0x3f800000  1.0
d0058952:	ee63 6ac7 	vnmul.f32	s13, s7, s14
d0058956:	ee67 4a45 	vnmul.f32	s9, s14, s10
d005895a:	eea4 3a07 	vfma.f32	s6, s8, s14
d005895e:	e5ce      	b.n	d00584fe <sb3dRaycastWorld+0x2de>
d0058960:	ee7f 4ae5 	vsub.f32	s9, s31, s11
d0058964:	ee3f 7a68 	vsub.f32	s14, s30, s17
d0058968:	ee71 7a46 	vsub.f32	s15, s2, s12
d005896c:	e50c      	b.n	d0058388 <sb3dRaycastWorld+0x168>
d005896e:	eddf 2a18 	vldr	s5, [pc, #96]	; d00589d0 <sb3dRaycastWorld+0x7b0>
d0058972:	eef0 7a62 	vmov.f32	s15, s5
d0058976:	eeb0 3a62 	vmov.f32	s6, s5
d005897a:	e6f6      	b.n	d005876a <sb3dRaycastWorld+0x54a>
d005897c:	ee31 5a46 	vsub.f32	s10, s2, s12
d0058980:	ee7f 4ae5 	vsub.f32	s9, s31, s11
d0058984:	ee3f 7a68 	vsub.f32	s14, s30, s17
d0058988:	eead 5aa7 	vfma.f32	s10, s27, s15
d005898c:	eeec 4aa7 	vfma.f32	s9, s25, s15
d0058990:	eead 7a27 	vfma.f32	s14, s26, s15
d0058994:	eef0 7a45 	vmov.f32	s15, s10
d0058998:	e4f6      	b.n	d0058388 <sb3dRaycastWorld+0x168>
d005899a:	eef1 6ac7 	vsqrt.f32	s13, s14
d005899e:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d00589a2:	ee86 7a26 	vdiv.f32	s14, s12, s13
d00589a6:	ee23 3a07 	vmul.f32	s6, s6, s14
d00589aa:	ee67 7a87 	vmul.f32	s15, s15, s14
d00589ae:	ee62 2a87 	vmul.f32	s5, s5, s14
d00589b2:	e6da      	b.n	d005876a <sb3dRaycastWorld+0x54a>
d00589b4:	f04f 0e00 	mov.w	lr, #0
d00589b8:	4670      	mov	r0, lr
d00589ba:	b008      	add	sp, #32
d00589bc:	ecbd 8b10 	vpop	{d8-d15}
d00589c0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d00589c4:	eeb0 5a67 	vmov.f32	s10, s15
d00589c8:	eef0 3a46 	vmov.f32	s7, s12
d00589cc:	e7bf      	b.n	d005894e <sb3dRaycastWorld+0x72e>
d00589ce:	bf00      	nop
d00589d0:	00000000 	.word	0x00000000
d00589d4:	80000000 	.word	0x80000000

d00589d8 <sb3dRaycastFromCamera>:
d00589d8:	4603      	mov	r3, r0
d00589da:	b188      	cbz	r0, d0058a00 <sb3dRaycastFromCamera+0x28>
d00589dc:	b181      	cbz	r1, d0058a00 <sb3dRaycastFromCamera+0x28>
d00589de:	eeb0 3a40 	vmov.f32	s6, s0
d00589e2:	4608      	mov	r0, r1
d00589e4:	edd3 1a0c 	vldr	s3, [r3, #48]	; 0x30
d00589e8:	ed93 2a0d 	vldr	s4, [r3, #52]	; 0x34
d00589ec:	edd3 2a0e 	vldr	s5, [r3, #56]	; 0x38
d00589f0:	ed93 0a00 	vldr	s0, [r3]
d00589f4:	edd3 0a01 	vldr	s1, [r3, #4]
d00589f8:	ed93 1a02 	vldr	s2, [r3, #8]
d00589fc:	f7ff bc10 	b.w	d0058220 <sb3dRaycastWorld>
d0058a00:	2000      	movs	r0, #0
d0058a02:	4770      	bx	lr

d0058a04 <loadMeshSB3D>:
d0058a04:	2800      	cmp	r0, #0
d0058a06:	d07c      	beq.n	d0058b02 <loadMeshSB3D+0xfe>
d0058a08:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0058a0c:	460d      	mov	r5, r1
d0058a0e:	4601      	mov	r1, r0
d0058a10:	fab5 f085 	clz	r0, r5
d0058a14:	ed2d 8b02 	vpush	{d8}
d0058a18:	0940      	lsrs	r0, r0, #5
d0058a1a:	b08c      	sub	sp, #48	; 0x30
d0058a1c:	2d00      	cmp	r5, #0
d0058a1e:	d06a      	beq.n	d0058af6 <loadMeshSB3D+0xf2>
d0058a20:	4c6e      	ldr	r4, [pc, #440]	; (d0058bdc <loadMeshSB3D+0x1d8>)
d0058a22:	2201      	movs	r2, #1
d0058a24:	eeb0 8a40 	vmov.f32	s16, s0
d0058a28:	7923      	ldrb	r3, [r4, #4]
d0058a2a:	7966      	ldrb	r6, [r4, #5]
d0058a2c:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
d0058a30:	79a6      	ldrb	r6, [r4, #6]
d0058a32:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0058a36:	79e6      	ldrb	r6, [r4, #7]
d0058a38:	ea43 6306 	orr.w	r3, r3, r6, lsl #24
d0058a3c:	681b      	ldr	r3, [r3, #0]
d0058a3e:	681b      	ldr	r3, [r3, #0]
d0058a40:	4798      	blx	r3
d0058a42:	2800      	cmp	r0, #0
d0058a44:	d157      	bne.n	d0058af6 <loadMeshSB3D+0xf2>
d0058a46:	f894 c004 	ldrb.w	ip, [r4, #4]
d0058a4a:	2204      	movs	r2, #4
d0058a4c:	7961      	ldrb	r1, [r4, #5]
d0058a4e:	ab02      	add	r3, sp, #8
d0058a50:	79a7      	ldrb	r7, [r4, #6]
d0058a52:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0058a56:	79e6      	ldrb	r6, [r4, #7]
d0058a58:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0058a5c:	a903      	add	r1, sp, #12
d0058a5e:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0058a62:	6836      	ldr	r6, [r6, #0]
d0058a64:	68b6      	ldr	r6, [r6, #8]
d0058a66:	47b0      	blx	r6
d0058a68:	2800      	cmp	r0, #0
d0058a6a:	d141      	bne.n	d0058af0 <loadMeshSB3D+0xec>
d0058a6c:	4b5c      	ldr	r3, [pc, #368]	; (d0058be0 <loadMeshSB3D+0x1dc>)
d0058a6e:	9a03      	ldr	r2, [sp, #12]
d0058a70:	429a      	cmp	r2, r3
d0058a72:	d13d      	bne.n	d0058af0 <loadMeshSB3D+0xec>
d0058a74:	f894 c004 	ldrb.w	ip, [r4, #4]
d0058a78:	ab02      	add	r3, sp, #8
d0058a7a:	7961      	ldrb	r1, [r4, #5]
d0058a7c:	2204      	movs	r2, #4
d0058a7e:	79a7      	ldrb	r7, [r4, #6]
d0058a80:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0058a84:	79e6      	ldrb	r6, [r4, #7]
d0058a86:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0058a8a:	a904      	add	r1, sp, #16
d0058a8c:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0058a90:	6836      	ldr	r6, [r6, #0]
d0058a92:	68b6      	ldr	r6, [r6, #8]
d0058a94:	47b0      	blx	r6
d0058a96:	bb58      	cbnz	r0, d0058af0 <loadMeshSB3D+0xec>
d0058a98:	9b04      	ldr	r3, [sp, #16]
d0058a9a:	3b02      	subs	r3, #2
d0058a9c:	2b01      	cmp	r3, #1
d0058a9e:	d827      	bhi.n	d0058af0 <loadMeshSB3D+0xec>
d0058aa0:	f894 c004 	ldrb.w	ip, [r4, #4]
d0058aa4:	ab02      	add	r3, sp, #8
d0058aa6:	7961      	ldrb	r1, [r4, #5]
d0058aa8:	2204      	movs	r2, #4
d0058aaa:	79a7      	ldrb	r7, [r4, #6]
d0058aac:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0058ab0:	79e6      	ldrb	r6, [r4, #7]
d0058ab2:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0058ab6:	a905      	add	r1, sp, #20
d0058ab8:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0058abc:	6836      	ldr	r6, [r6, #0]
d0058abe:	68b6      	ldr	r6, [r6, #8]
d0058ac0:	47b0      	blx	r6
d0058ac2:	b9a8      	cbnz	r0, d0058af0 <loadMeshSB3D+0xec>
d0058ac4:	f894 c004 	ldrb.w	ip, [r4, #4]
d0058ac8:	ab02      	add	r3, sp, #8
d0058aca:	7961      	ldrb	r1, [r4, #5]
d0058acc:	2204      	movs	r2, #4
d0058ace:	79a7      	ldrb	r7, [r4, #6]
d0058ad0:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0058ad4:	79e6      	ldrb	r6, [r4, #7]
d0058ad6:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0058ada:	a906      	add	r1, sp, #24
d0058adc:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0058ae0:	6836      	ldr	r6, [r6, #0]
d0058ae2:	68b6      	ldr	r6, [r6, #8]
d0058ae4:	47b0      	blx	r6
d0058ae6:	b918      	cbnz	r0, d0058af0 <loadMeshSB3D+0xec>
d0058ae8:	9b05      	ldr	r3, [sp, #20]
d0058aea:	b10b      	cbz	r3, d0058af0 <loadMeshSB3D+0xec>
d0058aec:	9e06      	ldr	r6, [sp, #24]
d0058aee:	b956      	cbnz	r6, d0058b06 <loadMeshSB3D+0x102>
d0058af0:	2000      	movs	r0, #0
d0058af2:	f000 f9ad 	bl	d0058e50 <fclose>
d0058af6:	2000      	movs	r0, #0
d0058af8:	b00c      	add	sp, #48	; 0x30
d0058afa:	ecbd 8b02 	vpop	{d8}
d0058afe:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0058b02:	2000      	movs	r0, #0
d0058b04:	4770      	bx	lr
d0058b06:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0058b0a:	2700      	movs	r7, #0
d0058b0c:	606b      	str	r3, [r5, #4]
d0058b0e:	616e      	str	r6, [r5, #20]
d0058b10:	0080      	lsls	r0, r0, #2
d0058b12:	60ef      	str	r7, [r5, #12]
d0058b14:	f000 fb60 	bl	d00591d8 <malloc>
d0058b18:	4603      	mov	r3, r0
d0058b1a:	0130      	lsls	r0, r6, #4
d0058b1c:	461e      	mov	r6, r3
d0058b1e:	602b      	str	r3, [r5, #0]
d0058b20:	f000 fb5a 	bl	d00591d8 <malloc>
d0058b24:	60af      	str	r7, [r5, #8]
d0058b26:	6128      	str	r0, [r5, #16]
d0058b28:	2e00      	cmp	r6, #0
d0058b2a:	f000 8119 	beq.w	d0058d60 <loadMeshSB3D+0x35c>
d0058b2e:	2800      	cmp	r0, #0
d0058b30:	f000 8109 	beq.w	d0058d46 <loadMeshSB3D+0x342>
d0058b34:	46b8      	mov	r8, r7
d0058b36:	e017      	b.n	d0058b68 <loadMeshSB3D+0x164>
d0058b38:	eddd 6a09 	vldr	s13, [sp, #36]	; 0x24
d0058b3c:	ed9d 7a0a 	vldr	s14, [sp, #40]	; 0x28
d0058b40:	eddd 7a0b 	vldr	s15, [sp, #44]	; 0x2c
d0058b44:	ee66 6a88 	vmul.f32	s13, s13, s16
d0058b48:	682b      	ldr	r3, [r5, #0]
d0058b4a:	ee27 7a08 	vmul.f32	s14, s14, s16
d0058b4e:	9905      	ldr	r1, [sp, #20]
d0058b50:	ee67 7a88 	vmul.f32	s15, s15, s16
d0058b54:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d0058b58:	4541      	cmp	r1, r8
d0058b5a:	edc3 6a00 	vstr	s13, [r3]
d0058b5e:	ed83 7a01 	vstr	s14, [r3, #4]
d0058b62:	edc3 7a02 	vstr	s15, [r3, #8]
d0058b66:	d931      	bls.n	d0058bcc <loadMeshSB3D+0x1c8>
d0058b68:	f894 c004 	ldrb.w	ip, [r4, #4]
d0058b6c:	220c      	movs	r2, #12
d0058b6e:	7960      	ldrb	r0, [r4, #5]
d0058b70:	ab02      	add	r3, sp, #8
d0058b72:	79a7      	ldrb	r7, [r4, #6]
d0058b74:	a909      	add	r1, sp, #36	; 0x24
d0058b76:	ea4c 2000 	orr.w	r0, ip, r0, lsl #8
d0058b7a:	79e6      	ldrb	r6, [r4, #7]
d0058b7c:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d0058b80:	2000      	movs	r0, #0
d0058b82:	ea47 6606 	orr.w	r6, r7, r6, lsl #24
d0058b86:	6836      	ldr	r6, [r6, #0]
d0058b88:	68b6      	ldr	r6, [r6, #8]
d0058b8a:	47b0      	blx	r6
d0058b8c:	eb08 0248 	add.w	r2, r8, r8, lsl #1
d0058b90:	f108 0801 	add.w	r8, r8, #1
d0058b94:	2800      	cmp	r0, #0
d0058b96:	d0cf      	beq.n	d0058b38 <loadMeshSB3D+0x134>
d0058b98:	6828      	ldr	r0, [r5, #0]
d0058b9a:	b108      	cbz	r0, d0058ba0 <loadMeshSB3D+0x19c>
d0058b9c:	f000 fb24 	bl	d00591e8 <free>
d0058ba0:	6928      	ldr	r0, [r5, #16]
d0058ba2:	b108      	cbz	r0, d0058ba8 <loadMeshSB3D+0x1a4>
d0058ba4:	f000 fb20 	bl	d00591e8 <free>
d0058ba8:	68a8      	ldr	r0, [r5, #8]
d0058baa:	b108      	cbz	r0, d0058bb0 <loadMeshSB3D+0x1ac>
d0058bac:	f000 fb1c 	bl	d00591e8 <free>
d0058bb0:	2400      	movs	r4, #0
d0058bb2:	2300      	movs	r3, #0
d0058bb4:	4620      	mov	r0, r4
d0058bb6:	602c      	str	r4, [r5, #0]
d0058bb8:	612c      	str	r4, [r5, #16]
d0058bba:	60ac      	str	r4, [r5, #8]
d0058bbc:	606c      	str	r4, [r5, #4]
d0058bbe:	616c      	str	r4, [r5, #20]
d0058bc0:	60ec      	str	r4, [r5, #12]
d0058bc2:	61ab      	str	r3, [r5, #24]
d0058bc4:	f000 f944 	bl	d0058e50 <fclose>
d0058bc8:	4620      	mov	r0, r4
d0058bca:	e795      	b.n	d0058af8 <loadMeshSB3D+0xf4>
d0058bcc:	9b06      	ldr	r3, [sp, #24]
d0058bce:	2b00      	cmp	r3, #0
d0058bd0:	f000 80ac 	beq.w	d0058d2c <loadMeshSB3D+0x328>
d0058bd4:	4606      	mov	r6, r0
d0058bd6:	4680      	mov	r8, r0
d0058bd8:	e090      	b.n	d0058cfc <loadMeshSB3D+0x2f8>
d0058bda:	bf00      	nop
d0058bdc:	2001f000 	.word	0x2001f000
d0058be0:	44334253 	.word	0x44334253
d0058be4:	7921      	ldrb	r1, [r4, #4]
d0058be6:	ab02      	add	r3, sp, #8
d0058be8:	7967      	ldrb	r7, [r4, #5]
d0058bea:	2204      	movs	r2, #4
d0058bec:	f894 c006 	ldrb.w	ip, [r4, #6]
d0058bf0:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
d0058bf4:	79e7      	ldrb	r7, [r4, #7]
d0058bf6:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
d0058bfa:	a908      	add	r1, sp, #32
d0058bfc:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0058c00:	683f      	ldr	r7, [r7, #0]
d0058c02:	68bf      	ldr	r7, [r7, #8]
d0058c04:	47b8      	blx	r7
d0058c06:	2800      	cmp	r0, #0
d0058c08:	d1c6      	bne.n	d0058b98 <loadMeshSB3D+0x194>
d0058c0a:	7921      	ldrb	r1, [r4, #4]
d0058c0c:	ab02      	add	r3, sp, #8
d0058c0e:	7967      	ldrb	r7, [r4, #5]
d0058c10:	2204      	movs	r2, #4
d0058c12:	f894 c006 	ldrb.w	ip, [r4, #6]
d0058c16:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
d0058c1a:	79e7      	ldrb	r7, [r4, #7]
d0058c1c:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
d0058c20:	a909      	add	r1, sp, #36	; 0x24
d0058c22:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0058c26:	683f      	ldr	r7, [r7, #0]
d0058c28:	68bf      	ldr	r7, [r7, #8]
d0058c2a:	47b8      	blx	r7
d0058c2c:	2800      	cmp	r0, #0
d0058c2e:	d1b3      	bne.n	d0058b98 <loadMeshSB3D+0x194>
d0058c30:	7921      	ldrb	r1, [r4, #4]
d0058c32:	ab02      	add	r3, sp, #8
d0058c34:	7967      	ldrb	r7, [r4, #5]
d0058c36:	2201      	movs	r2, #1
d0058c38:	f894 c006 	ldrb.w	ip, [r4, #6]
d0058c3c:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
d0058c40:	79e7      	ldrb	r7, [r4, #7]
d0058c42:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
d0058c46:	f10d 0105 	add.w	r1, sp, #5
d0058c4a:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0058c4e:	683f      	ldr	r7, [r7, #0]
d0058c50:	68bf      	ldr	r7, [r7, #8]
d0058c52:	47b8      	blx	r7
d0058c54:	2800      	cmp	r0, #0
d0058c56:	d19f      	bne.n	d0058b98 <loadMeshSB3D+0x194>
d0058c58:	7921      	ldrb	r1, [r4, #4]
d0058c5a:	ab02      	add	r3, sp, #8
d0058c5c:	7967      	ldrb	r7, [r4, #5]
d0058c5e:	2201      	movs	r2, #1
d0058c60:	f894 c006 	ldrb.w	ip, [r4, #6]
d0058c64:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
d0058c68:	79e7      	ldrb	r7, [r4, #7]
d0058c6a:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
d0058c6e:	f10d 0106 	add.w	r1, sp, #6
d0058c72:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0058c76:	683f      	ldr	r7, [r7, #0]
d0058c78:	68bf      	ldr	r7, [r7, #8]
d0058c7a:	47b8      	blx	r7
d0058c7c:	2800      	cmp	r0, #0
d0058c7e:	d18b      	bne.n	d0058b98 <loadMeshSB3D+0x194>
d0058c80:	9b04      	ldr	r3, [sp, #16]
d0058c82:	2b02      	cmp	r3, #2
d0058c84:	d914      	bls.n	d0058cb0 <loadMeshSB3D+0x2ac>
d0058c86:	7921      	ldrb	r1, [r4, #4]
d0058c88:	ab02      	add	r3, sp, #8
d0058c8a:	7967      	ldrb	r7, [r4, #5]
d0058c8c:	2201      	movs	r2, #1
d0058c8e:	f894 c006 	ldrb.w	ip, [r4, #6]
d0058c92:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
d0058c96:	79e7      	ldrb	r7, [r4, #7]
d0058c98:	ea41 4c0c 	orr.w	ip, r1, ip, lsl #16
d0058c9c:	f10d 0107 	add.w	r1, sp, #7
d0058ca0:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0058ca4:	683f      	ldr	r7, [r7, #0]
d0058ca6:	68bf      	ldr	r7, [r7, #8]
d0058ca8:	47b8      	blx	r7
d0058caa:	2800      	cmp	r0, #0
d0058cac:	f47f af74 	bne.w	d0058b98 <loadMeshSB3D+0x194>
d0058cb0:	9a07      	ldr	r2, [sp, #28]
d0058cb2:	9b05      	ldr	r3, [sp, #20]
d0058cb4:	429a      	cmp	r2, r3
d0058cb6:	f4bf af6f 	bcs.w	d0058b98 <loadMeshSB3D+0x194>
d0058cba:	9908      	ldr	r1, [sp, #32]
d0058cbc:	428b      	cmp	r3, r1
d0058cbe:	f67f af6b 	bls.w	d0058b98 <loadMeshSB3D+0x194>
d0058cc2:	9809      	ldr	r0, [sp, #36]	; 0x24
d0058cc4:	4283      	cmp	r3, r0
d0058cc6:	f67f af67 	bls.w	d0058b98 <loadMeshSB3D+0x194>
d0058cca:	692b      	ldr	r3, [r5, #16]
d0058ccc:	ea4f 1c06 	mov.w	ip, r6, lsl #4
d0058cd0:	9f06      	ldr	r7, [sp, #24]
d0058cd2:	f843 200c 	str.w	r2, [r3, ip]
d0058cd6:	eb03 1306 	add.w	r3, r3, r6, lsl #4
d0058cda:	f89d 2005 	ldrb.w	r2, [sp, #5]
d0058cde:	3601      	adds	r6, #1
d0058ce0:	f89d c006 	ldrb.w	ip, [sp, #6]
d0058ce4:	f002 020f 	and.w	r2, r2, #15
d0058ce8:	6059      	str	r1, [r3, #4]
d0058cea:	42b7      	cmp	r7, r6
d0058cec:	f89d 1007 	ldrb.w	r1, [sp, #7]
d0058cf0:	6098      	str	r0, [r3, #8]
d0058cf2:	731a      	strb	r2, [r3, #12]
d0058cf4:	f883 c00d 	strb.w	ip, [r3, #13]
d0058cf8:	7399      	strb	r1, [r3, #14]
d0058cfa:	d917      	bls.n	d0058d2c <loadMeshSB3D+0x328>
d0058cfc:	7920      	ldrb	r0, [r4, #4]
d0058cfe:	ab02      	add	r3, sp, #8
d0058d00:	7967      	ldrb	r7, [r4, #5]
d0058d02:	2204      	movs	r2, #4
d0058d04:	f894 c006 	ldrb.w	ip, [r4, #6]
d0058d08:	a907      	add	r1, sp, #28
d0058d0a:	ea40 2007 	orr.w	r0, r0, r7, lsl #8
d0058d0e:	79e7      	ldrb	r7, [r4, #7]
d0058d10:	f88d 8007 	strb.w	r8, [sp, #7]
d0058d14:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d0058d18:	2000      	movs	r0, #0
d0058d1a:	ea4c 6707 	orr.w	r7, ip, r7, lsl #24
d0058d1e:	683f      	ldr	r7, [r7, #0]
d0058d20:	68bf      	ldr	r7, [r7, #8]
d0058d22:	47b8      	blx	r7
d0058d24:	2800      	cmp	r0, #0
d0058d26:	f43f af5d 	beq.w	d0058be4 <loadMeshSB3D+0x1e0>
d0058d2a:	e735      	b.n	d0058b98 <loadMeshSB3D+0x194>
d0058d2c:	2000      	movs	r0, #0
d0058d2e:	f000 f88f 	bl	d0058e50 <fclose>
d0058d32:	4628      	mov	r0, r5
d0058d34:	f7fc fae2 	bl	d00552fc <meshComputeBoundsRadius>
d0058d38:	4628      	mov	r0, r5
d0058d3a:	ed85 0a06 	vstr	s0, [r5, #24]
d0058d3e:	f7f8 fca3 	bl	d0051688 <meshSetDefaultMaterial>
d0058d42:	2001      	movs	r0, #1
d0058d44:	e6d8      	b.n	d0058af8 <loadMeshSB3D+0xf4>
d0058d46:	4630      	mov	r0, r6
d0058d48:	f000 fa4e 	bl	d00591e8 <free>
d0058d4c:	2400      	movs	r4, #0
d0058d4e:	4620      	mov	r0, r4
d0058d50:	602c      	str	r4, [r5, #0]
d0058d52:	612c      	str	r4, [r5, #16]
d0058d54:	606c      	str	r4, [r5, #4]
d0058d56:	616c      	str	r4, [r5, #20]
d0058d58:	f000 f87a 	bl	d0058e50 <fclose>
d0058d5c:	4620      	mov	r0, r4
d0058d5e:	e6cb      	b.n	d0058af8 <loadMeshSB3D+0xf4>
d0058d60:	2800      	cmp	r0, #0
d0058d62:	d0f3      	beq.n	d0058d4c <loadMeshSB3D+0x348>
d0058d64:	f000 fa40 	bl	d00591e8 <free>
d0058d68:	e7f0      	b.n	d0058d4c <loadMeshSB3D+0x348>
d0058d6a:	bf00      	nop

d0058d6c <__errno>:
d0058d6c:	4b01      	ldr	r3, [pc, #4]	; (d0058d74 <__errno+0x8>)
d0058d6e:	6818      	ldr	r0, [r3, #0]
d0058d70:	4770      	bx	lr
d0058d72:	bf00      	nop
d0058d74:	d005b654 	.word	0xd005b654

d0058d78 <_fclose_r>:
d0058d78:	b570      	push	{r4, r5, r6, lr}
d0058d7a:	4605      	mov	r5, r0
d0058d7c:	460c      	mov	r4, r1
d0058d7e:	b911      	cbnz	r1, d0058d86 <_fclose_r+0xe>
d0058d80:	2600      	movs	r6, #0
d0058d82:	4630      	mov	r0, r6
d0058d84:	bd70      	pop	{r4, r5, r6, pc}
d0058d86:	b118      	cbz	r0, d0058d90 <_fclose_r+0x18>
d0058d88:	6983      	ldr	r3, [r0, #24]
d0058d8a:	b90b      	cbnz	r3, d0058d90 <_fclose_r+0x18>
d0058d8c:	f000 f982 	bl	d0059094 <__sinit>
d0058d90:	4b2c      	ldr	r3, [pc, #176]	; (d0058e44 <_fclose_r+0xcc>)
d0058d92:	429c      	cmp	r4, r3
d0058d94:	d114      	bne.n	d0058dc0 <_fclose_r+0x48>
d0058d96:	686c      	ldr	r4, [r5, #4]
d0058d98:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0058d9a:	07d8      	lsls	r0, r3, #31
d0058d9c:	d405      	bmi.n	d0058daa <_fclose_r+0x32>
d0058d9e:	89a3      	ldrh	r3, [r4, #12]
d0058da0:	0599      	lsls	r1, r3, #22
d0058da2:	d402      	bmi.n	d0058daa <_fclose_r+0x32>
d0058da4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0058da6:	f000 fa14 	bl	d00591d2 <__retarget_lock_acquire_recursive>
d0058daa:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0058dae:	b98b      	cbnz	r3, d0058dd4 <_fclose_r+0x5c>
d0058db0:	6e66      	ldr	r6, [r4, #100]	; 0x64
d0058db2:	f016 0601 	ands.w	r6, r6, #1
d0058db6:	d1e3      	bne.n	d0058d80 <_fclose_r+0x8>
d0058db8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0058dba:	f000 fa0b 	bl	d00591d4 <__retarget_lock_release_recursive>
d0058dbe:	e7e0      	b.n	d0058d82 <_fclose_r+0xa>
d0058dc0:	4b21      	ldr	r3, [pc, #132]	; (d0058e48 <_fclose_r+0xd0>)
d0058dc2:	429c      	cmp	r4, r3
d0058dc4:	d101      	bne.n	d0058dca <_fclose_r+0x52>
d0058dc6:	68ac      	ldr	r4, [r5, #8]
d0058dc8:	e7e6      	b.n	d0058d98 <_fclose_r+0x20>
d0058dca:	4b20      	ldr	r3, [pc, #128]	; (d0058e4c <_fclose_r+0xd4>)
d0058dcc:	429c      	cmp	r4, r3
d0058dce:	bf08      	it	eq
d0058dd0:	68ec      	ldreq	r4, [r5, #12]
d0058dd2:	e7e1      	b.n	d0058d98 <_fclose_r+0x20>
d0058dd4:	4621      	mov	r1, r4
d0058dd6:	4628      	mov	r0, r5
d0058dd8:	f000 f842 	bl	d0058e60 <__sflush_r>
d0058ddc:	6b23      	ldr	r3, [r4, #48]	; 0x30
d0058dde:	4606      	mov	r6, r0
d0058de0:	b133      	cbz	r3, d0058df0 <_fclose_r+0x78>
d0058de2:	6a21      	ldr	r1, [r4, #32]
d0058de4:	4628      	mov	r0, r5
d0058de6:	4798      	blx	r3
d0058de8:	2800      	cmp	r0, #0
d0058dea:	bfb8      	it	lt
d0058dec:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
d0058df0:	89a3      	ldrh	r3, [r4, #12]
d0058df2:	061a      	lsls	r2, r3, #24
d0058df4:	d503      	bpl.n	d0058dfe <_fclose_r+0x86>
d0058df6:	6921      	ldr	r1, [r4, #16]
d0058df8:	4628      	mov	r0, r5
d0058dfa:	f000 fa21 	bl	d0059240 <_free_r>
d0058dfe:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0058e00:	b141      	cbz	r1, d0058e14 <_fclose_r+0x9c>
d0058e02:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0058e06:	4299      	cmp	r1, r3
d0058e08:	d002      	beq.n	d0058e10 <_fclose_r+0x98>
d0058e0a:	4628      	mov	r0, r5
d0058e0c:	f000 fa18 	bl	d0059240 <_free_r>
d0058e10:	2300      	movs	r3, #0
d0058e12:	6363      	str	r3, [r4, #52]	; 0x34
d0058e14:	6ca1      	ldr	r1, [r4, #72]	; 0x48
d0058e16:	b121      	cbz	r1, d0058e22 <_fclose_r+0xaa>
d0058e18:	4628      	mov	r0, r5
d0058e1a:	f000 fa11 	bl	d0059240 <_free_r>
d0058e1e:	2300      	movs	r3, #0
d0058e20:	64a3      	str	r3, [r4, #72]	; 0x48
d0058e22:	f000 f91f 	bl	d0059064 <__sfp_lock_acquire>
d0058e26:	2300      	movs	r3, #0
d0058e28:	81a3      	strh	r3, [r4, #12]
d0058e2a:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0058e2c:	07db      	lsls	r3, r3, #31
d0058e2e:	d402      	bmi.n	d0058e36 <_fclose_r+0xbe>
d0058e30:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0058e32:	f000 f9cf 	bl	d00591d4 <__retarget_lock_release_recursive>
d0058e36:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0058e38:	f000 f9ca 	bl	d00591d0 <__retarget_lock_close_recursive>
d0058e3c:	f000 f918 	bl	d0059070 <__sfp_lock_release>
d0058e40:	e79f      	b.n	d0058d82 <_fclose_r+0xa>
d0058e42:	bf00      	nop
d0058e44:	d005ada8 	.word	0xd005ada8
d0058e48:	d005adc8 	.word	0xd005adc8
d0058e4c:	d005ad88 	.word	0xd005ad88

d0058e50 <fclose>:
d0058e50:	4b02      	ldr	r3, [pc, #8]	; (d0058e5c <fclose+0xc>)
d0058e52:	4601      	mov	r1, r0
d0058e54:	6818      	ldr	r0, [r3, #0]
d0058e56:	f7ff bf8f 	b.w	d0058d78 <_fclose_r>
d0058e5a:	bf00      	nop
d0058e5c:	d005b654 	.word	0xd005b654

d0058e60 <__sflush_r>:
d0058e60:	898a      	ldrh	r2, [r1, #12]
d0058e62:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0058e66:	4605      	mov	r5, r0
d0058e68:	0710      	lsls	r0, r2, #28
d0058e6a:	460c      	mov	r4, r1
d0058e6c:	d458      	bmi.n	d0058f20 <__sflush_r+0xc0>
d0058e6e:	684b      	ldr	r3, [r1, #4]
d0058e70:	2b00      	cmp	r3, #0
d0058e72:	dc05      	bgt.n	d0058e80 <__sflush_r+0x20>
d0058e74:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0058e76:	2b00      	cmp	r3, #0
d0058e78:	dc02      	bgt.n	d0058e80 <__sflush_r+0x20>
d0058e7a:	2000      	movs	r0, #0
d0058e7c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0058e80:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0058e82:	2e00      	cmp	r6, #0
d0058e84:	d0f9      	beq.n	d0058e7a <__sflush_r+0x1a>
d0058e86:	2300      	movs	r3, #0
d0058e88:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0058e8c:	682f      	ldr	r7, [r5, #0]
d0058e8e:	602b      	str	r3, [r5, #0]
d0058e90:	d032      	beq.n	d0058ef8 <__sflush_r+0x98>
d0058e92:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0058e94:	89a3      	ldrh	r3, [r4, #12]
d0058e96:	075a      	lsls	r2, r3, #29
d0058e98:	d505      	bpl.n	d0058ea6 <__sflush_r+0x46>
d0058e9a:	6863      	ldr	r3, [r4, #4]
d0058e9c:	1ac0      	subs	r0, r0, r3
d0058e9e:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0058ea0:	b10b      	cbz	r3, d0058ea6 <__sflush_r+0x46>
d0058ea2:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0058ea4:	1ac0      	subs	r0, r0, r3
d0058ea6:	2300      	movs	r3, #0
d0058ea8:	4602      	mov	r2, r0
d0058eaa:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0058eac:	6a21      	ldr	r1, [r4, #32]
d0058eae:	4628      	mov	r0, r5
d0058eb0:	47b0      	blx	r6
d0058eb2:	1c43      	adds	r3, r0, #1
d0058eb4:	89a3      	ldrh	r3, [r4, #12]
d0058eb6:	d106      	bne.n	d0058ec6 <__sflush_r+0x66>
d0058eb8:	6829      	ldr	r1, [r5, #0]
d0058eba:	291d      	cmp	r1, #29
d0058ebc:	d82c      	bhi.n	d0058f18 <__sflush_r+0xb8>
d0058ebe:	4a2a      	ldr	r2, [pc, #168]	; (d0058f68 <__sflush_r+0x108>)
d0058ec0:	40ca      	lsrs	r2, r1
d0058ec2:	07d6      	lsls	r6, r2, #31
d0058ec4:	d528      	bpl.n	d0058f18 <__sflush_r+0xb8>
d0058ec6:	2200      	movs	r2, #0
d0058ec8:	6062      	str	r2, [r4, #4]
d0058eca:	04d9      	lsls	r1, r3, #19
d0058ecc:	6922      	ldr	r2, [r4, #16]
d0058ece:	6022      	str	r2, [r4, #0]
d0058ed0:	d504      	bpl.n	d0058edc <__sflush_r+0x7c>
d0058ed2:	1c42      	adds	r2, r0, #1
d0058ed4:	d101      	bne.n	d0058eda <__sflush_r+0x7a>
d0058ed6:	682b      	ldr	r3, [r5, #0]
d0058ed8:	b903      	cbnz	r3, d0058edc <__sflush_r+0x7c>
d0058eda:	6560      	str	r0, [r4, #84]	; 0x54
d0058edc:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0058ede:	602f      	str	r7, [r5, #0]
d0058ee0:	2900      	cmp	r1, #0
d0058ee2:	d0ca      	beq.n	d0058e7a <__sflush_r+0x1a>
d0058ee4:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0058ee8:	4299      	cmp	r1, r3
d0058eea:	d002      	beq.n	d0058ef2 <__sflush_r+0x92>
d0058eec:	4628      	mov	r0, r5
d0058eee:	f000 f9a7 	bl	d0059240 <_free_r>
d0058ef2:	2000      	movs	r0, #0
d0058ef4:	6360      	str	r0, [r4, #52]	; 0x34
d0058ef6:	e7c1      	b.n	d0058e7c <__sflush_r+0x1c>
d0058ef8:	6a21      	ldr	r1, [r4, #32]
d0058efa:	2301      	movs	r3, #1
d0058efc:	4628      	mov	r0, r5
d0058efe:	47b0      	blx	r6
d0058f00:	1c41      	adds	r1, r0, #1
d0058f02:	d1c7      	bne.n	d0058e94 <__sflush_r+0x34>
d0058f04:	682b      	ldr	r3, [r5, #0]
d0058f06:	2b00      	cmp	r3, #0
d0058f08:	d0c4      	beq.n	d0058e94 <__sflush_r+0x34>
d0058f0a:	2b1d      	cmp	r3, #29
d0058f0c:	d001      	beq.n	d0058f12 <__sflush_r+0xb2>
d0058f0e:	2b16      	cmp	r3, #22
d0058f10:	d101      	bne.n	d0058f16 <__sflush_r+0xb6>
d0058f12:	602f      	str	r7, [r5, #0]
d0058f14:	e7b1      	b.n	d0058e7a <__sflush_r+0x1a>
d0058f16:	89a3      	ldrh	r3, [r4, #12]
d0058f18:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0058f1c:	81a3      	strh	r3, [r4, #12]
d0058f1e:	e7ad      	b.n	d0058e7c <__sflush_r+0x1c>
d0058f20:	690f      	ldr	r7, [r1, #16]
d0058f22:	2f00      	cmp	r7, #0
d0058f24:	d0a9      	beq.n	d0058e7a <__sflush_r+0x1a>
d0058f26:	0793      	lsls	r3, r2, #30
d0058f28:	680e      	ldr	r6, [r1, #0]
d0058f2a:	bf08      	it	eq
d0058f2c:	694b      	ldreq	r3, [r1, #20]
d0058f2e:	600f      	str	r7, [r1, #0]
d0058f30:	bf18      	it	ne
d0058f32:	2300      	movne	r3, #0
d0058f34:	eba6 0807 	sub.w	r8, r6, r7
d0058f38:	608b      	str	r3, [r1, #8]
d0058f3a:	f1b8 0f00 	cmp.w	r8, #0
d0058f3e:	dd9c      	ble.n	d0058e7a <__sflush_r+0x1a>
d0058f40:	6a21      	ldr	r1, [r4, #32]
d0058f42:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0058f44:	4643      	mov	r3, r8
d0058f46:	463a      	mov	r2, r7
d0058f48:	4628      	mov	r0, r5
d0058f4a:	47b0      	blx	r6
d0058f4c:	2800      	cmp	r0, #0
d0058f4e:	dc06      	bgt.n	d0058f5e <__sflush_r+0xfe>
d0058f50:	89a3      	ldrh	r3, [r4, #12]
d0058f52:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0058f56:	81a3      	strh	r3, [r4, #12]
d0058f58:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0058f5c:	e78e      	b.n	d0058e7c <__sflush_r+0x1c>
d0058f5e:	4407      	add	r7, r0
d0058f60:	eba8 0800 	sub.w	r8, r8, r0
d0058f64:	e7e9      	b.n	d0058f3a <__sflush_r+0xda>
d0058f66:	bf00      	nop
d0058f68:	20400001 	.word	0x20400001

d0058f6c <_fflush_r>:
d0058f6c:	b538      	push	{r3, r4, r5, lr}
d0058f6e:	690b      	ldr	r3, [r1, #16]
d0058f70:	4605      	mov	r5, r0
d0058f72:	460c      	mov	r4, r1
d0058f74:	b913      	cbnz	r3, d0058f7c <_fflush_r+0x10>
d0058f76:	2500      	movs	r5, #0
d0058f78:	4628      	mov	r0, r5
d0058f7a:	bd38      	pop	{r3, r4, r5, pc}
d0058f7c:	b118      	cbz	r0, d0058f86 <_fflush_r+0x1a>
d0058f7e:	6983      	ldr	r3, [r0, #24]
d0058f80:	b90b      	cbnz	r3, d0058f86 <_fflush_r+0x1a>
d0058f82:	f000 f887 	bl	d0059094 <__sinit>
d0058f86:	4b14      	ldr	r3, [pc, #80]	; (d0058fd8 <_fflush_r+0x6c>)
d0058f88:	429c      	cmp	r4, r3
d0058f8a:	d11b      	bne.n	d0058fc4 <_fflush_r+0x58>
d0058f8c:	686c      	ldr	r4, [r5, #4]
d0058f8e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0058f92:	2b00      	cmp	r3, #0
d0058f94:	d0ef      	beq.n	d0058f76 <_fflush_r+0xa>
d0058f96:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0058f98:	07d0      	lsls	r0, r2, #31
d0058f9a:	d404      	bmi.n	d0058fa6 <_fflush_r+0x3a>
d0058f9c:	0599      	lsls	r1, r3, #22
d0058f9e:	d402      	bmi.n	d0058fa6 <_fflush_r+0x3a>
d0058fa0:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0058fa2:	f000 f916 	bl	d00591d2 <__retarget_lock_acquire_recursive>
d0058fa6:	4628      	mov	r0, r5
d0058fa8:	4621      	mov	r1, r4
d0058faa:	f7ff ff59 	bl	d0058e60 <__sflush_r>
d0058fae:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0058fb0:	07da      	lsls	r2, r3, #31
d0058fb2:	4605      	mov	r5, r0
d0058fb4:	d4e0      	bmi.n	d0058f78 <_fflush_r+0xc>
d0058fb6:	89a3      	ldrh	r3, [r4, #12]
d0058fb8:	059b      	lsls	r3, r3, #22
d0058fba:	d4dd      	bmi.n	d0058f78 <_fflush_r+0xc>
d0058fbc:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0058fbe:	f000 f909 	bl	d00591d4 <__retarget_lock_release_recursive>
d0058fc2:	e7d9      	b.n	d0058f78 <_fflush_r+0xc>
d0058fc4:	4b05      	ldr	r3, [pc, #20]	; (d0058fdc <_fflush_r+0x70>)
d0058fc6:	429c      	cmp	r4, r3
d0058fc8:	d101      	bne.n	d0058fce <_fflush_r+0x62>
d0058fca:	68ac      	ldr	r4, [r5, #8]
d0058fcc:	e7df      	b.n	d0058f8e <_fflush_r+0x22>
d0058fce:	4b04      	ldr	r3, [pc, #16]	; (d0058fe0 <_fflush_r+0x74>)
d0058fd0:	429c      	cmp	r4, r3
d0058fd2:	bf08      	it	eq
d0058fd4:	68ec      	ldreq	r4, [r5, #12]
d0058fd6:	e7da      	b.n	d0058f8e <_fflush_r+0x22>
d0058fd8:	d005ada8 	.word	0xd005ada8
d0058fdc:	d005adc8 	.word	0xd005adc8
d0058fe0:	d005ad88 	.word	0xd005ad88

d0058fe4 <std>:
d0058fe4:	2300      	movs	r3, #0
d0058fe6:	b510      	push	{r4, lr}
d0058fe8:	4604      	mov	r4, r0
d0058fea:	e9c0 3300 	strd	r3, r3, [r0]
d0058fee:	e9c0 3304 	strd	r3, r3, [r0, #16]
d0058ff2:	6083      	str	r3, [r0, #8]
d0058ff4:	8181      	strh	r1, [r0, #12]
d0058ff6:	6643      	str	r3, [r0, #100]	; 0x64
d0058ff8:	81c2      	strh	r2, [r0, #14]
d0058ffa:	6183      	str	r3, [r0, #24]
d0058ffc:	4619      	mov	r1, r3
d0058ffe:	2208      	movs	r2, #8
d0059000:	305c      	adds	r0, #92	; 0x5c
d0059002:	f000 f915 	bl	d0059230 <memset>
d0059006:	4b05      	ldr	r3, [pc, #20]	; (d005901c <std+0x38>)
d0059008:	6263      	str	r3, [r4, #36]	; 0x24
d005900a:	4b05      	ldr	r3, [pc, #20]	; (d0059020 <std+0x3c>)
d005900c:	62a3      	str	r3, [r4, #40]	; 0x28
d005900e:	4b05      	ldr	r3, [pc, #20]	; (d0059024 <std+0x40>)
d0059010:	62e3      	str	r3, [r4, #44]	; 0x2c
d0059012:	4b05      	ldr	r3, [pc, #20]	; (d0059028 <std+0x44>)
d0059014:	6224      	str	r4, [r4, #32]
d0059016:	6323      	str	r3, [r4, #48]	; 0x30
d0059018:	bd10      	pop	{r4, pc}
d005901a:	bf00      	nop
d005901c:	d0059571 	.word	0xd0059571
d0059020:	d0059593 	.word	0xd0059593
d0059024:	d00595cb 	.word	0xd00595cb
d0059028:	d00595ef 	.word	0xd00595ef

d005902c <_cleanup_r>:
d005902c:	4901      	ldr	r1, [pc, #4]	; (d0059034 <_cleanup_r+0x8>)
d005902e:	f000 b8af 	b.w	d0059190 <_fwalk_reent>
d0059032:	bf00      	nop
d0059034:	d0058f6d 	.word	0xd0058f6d

d0059038 <__sfmoreglue>:
d0059038:	b570      	push	{r4, r5, r6, lr}
d005903a:	1e4a      	subs	r2, r1, #1
d005903c:	2568      	movs	r5, #104	; 0x68
d005903e:	4355      	muls	r5, r2
d0059040:	460e      	mov	r6, r1
d0059042:	f105 0174 	add.w	r1, r5, #116	; 0x74
d0059046:	f000 f94b 	bl	d00592e0 <_malloc_r>
d005904a:	4604      	mov	r4, r0
d005904c:	b140      	cbz	r0, d0059060 <__sfmoreglue+0x28>
d005904e:	2100      	movs	r1, #0
d0059050:	e9c0 1600 	strd	r1, r6, [r0]
d0059054:	300c      	adds	r0, #12
d0059056:	60a0      	str	r0, [r4, #8]
d0059058:	f105 0268 	add.w	r2, r5, #104	; 0x68
d005905c:	f000 f8e8 	bl	d0059230 <memset>
d0059060:	4620      	mov	r0, r4
d0059062:	bd70      	pop	{r4, r5, r6, pc}

d0059064 <__sfp_lock_acquire>:
d0059064:	4801      	ldr	r0, [pc, #4]	; (d005906c <__sfp_lock_acquire+0x8>)
d0059066:	f000 b8b4 	b.w	d00591d2 <__retarget_lock_acquire_recursive>
d005906a:	bf00      	nop
d005906c:	d00fbac8 	.word	0xd00fbac8

d0059070 <__sfp_lock_release>:
d0059070:	4801      	ldr	r0, [pc, #4]	; (d0059078 <__sfp_lock_release+0x8>)
d0059072:	f000 b8af 	b.w	d00591d4 <__retarget_lock_release_recursive>
d0059076:	bf00      	nop
d0059078:	d00fbac8 	.word	0xd00fbac8

d005907c <__sinit_lock_acquire>:
d005907c:	4801      	ldr	r0, [pc, #4]	; (d0059084 <__sinit_lock_acquire+0x8>)
d005907e:	f000 b8a8 	b.w	d00591d2 <__retarget_lock_acquire_recursive>
d0059082:	bf00      	nop
d0059084:	d00fbac3 	.word	0xd00fbac3

d0059088 <__sinit_lock_release>:
d0059088:	4801      	ldr	r0, [pc, #4]	; (d0059090 <__sinit_lock_release+0x8>)
d005908a:	f000 b8a3 	b.w	d00591d4 <__retarget_lock_release_recursive>
d005908e:	bf00      	nop
d0059090:	d00fbac3 	.word	0xd00fbac3

d0059094 <__sinit>:
d0059094:	b510      	push	{r4, lr}
d0059096:	4604      	mov	r4, r0
d0059098:	f7ff fff0 	bl	d005907c <__sinit_lock_acquire>
d005909c:	69a3      	ldr	r3, [r4, #24]
d005909e:	b11b      	cbz	r3, d00590a8 <__sinit+0x14>
d00590a0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00590a4:	f7ff bff0 	b.w	d0059088 <__sinit_lock_release>
d00590a8:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d00590ac:	6523      	str	r3, [r4, #80]	; 0x50
d00590ae:	4b13      	ldr	r3, [pc, #76]	; (d00590fc <__sinit+0x68>)
d00590b0:	4a13      	ldr	r2, [pc, #76]	; (d0059100 <__sinit+0x6c>)
d00590b2:	681b      	ldr	r3, [r3, #0]
d00590b4:	62a2      	str	r2, [r4, #40]	; 0x28
d00590b6:	42a3      	cmp	r3, r4
d00590b8:	bf04      	itt	eq
d00590ba:	2301      	moveq	r3, #1
d00590bc:	61a3      	streq	r3, [r4, #24]
d00590be:	4620      	mov	r0, r4
d00590c0:	f000 f820 	bl	d0059104 <__sfp>
d00590c4:	6060      	str	r0, [r4, #4]
d00590c6:	4620      	mov	r0, r4
d00590c8:	f000 f81c 	bl	d0059104 <__sfp>
d00590cc:	60a0      	str	r0, [r4, #8]
d00590ce:	4620      	mov	r0, r4
d00590d0:	f000 f818 	bl	d0059104 <__sfp>
d00590d4:	2200      	movs	r2, #0
d00590d6:	60e0      	str	r0, [r4, #12]
d00590d8:	2104      	movs	r1, #4
d00590da:	6860      	ldr	r0, [r4, #4]
d00590dc:	f7ff ff82 	bl	d0058fe4 <std>
d00590e0:	68a0      	ldr	r0, [r4, #8]
d00590e2:	2201      	movs	r2, #1
d00590e4:	2109      	movs	r1, #9
d00590e6:	f7ff ff7d 	bl	d0058fe4 <std>
d00590ea:	68e0      	ldr	r0, [r4, #12]
d00590ec:	2202      	movs	r2, #2
d00590ee:	2112      	movs	r1, #18
d00590f0:	f7ff ff78 	bl	d0058fe4 <std>
d00590f4:	2301      	movs	r3, #1
d00590f6:	61a3      	str	r3, [r4, #24]
d00590f8:	e7d2      	b.n	d00590a0 <__sinit+0xc>
d00590fa:	bf00      	nop
d00590fc:	d005ade8 	.word	0xd005ade8
d0059100:	d005902d 	.word	0xd005902d

d0059104 <__sfp>:
d0059104:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0059106:	4607      	mov	r7, r0
d0059108:	f7ff ffac 	bl	d0059064 <__sfp_lock_acquire>
d005910c:	4b1e      	ldr	r3, [pc, #120]	; (d0059188 <__sfp+0x84>)
d005910e:	681e      	ldr	r6, [r3, #0]
d0059110:	69b3      	ldr	r3, [r6, #24]
d0059112:	b913      	cbnz	r3, d005911a <__sfp+0x16>
d0059114:	4630      	mov	r0, r6
d0059116:	f7ff ffbd 	bl	d0059094 <__sinit>
d005911a:	3648      	adds	r6, #72	; 0x48
d005911c:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0059120:	3b01      	subs	r3, #1
d0059122:	d503      	bpl.n	d005912c <__sfp+0x28>
d0059124:	6833      	ldr	r3, [r6, #0]
d0059126:	b30b      	cbz	r3, d005916c <__sfp+0x68>
d0059128:	6836      	ldr	r6, [r6, #0]
d005912a:	e7f7      	b.n	d005911c <__sfp+0x18>
d005912c:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0059130:	b9d5      	cbnz	r5, d0059168 <__sfp+0x64>
d0059132:	4b16      	ldr	r3, [pc, #88]	; (d005918c <__sfp+0x88>)
d0059134:	60e3      	str	r3, [r4, #12]
d0059136:	f104 0058 	add.w	r0, r4, #88	; 0x58
d005913a:	6665      	str	r5, [r4, #100]	; 0x64
d005913c:	f000 f847 	bl	d00591ce <__retarget_lock_init_recursive>
d0059140:	f7ff ff96 	bl	d0059070 <__sfp_lock_release>
d0059144:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0059148:	e9c4 5504 	strd	r5, r5, [r4, #16]
d005914c:	6025      	str	r5, [r4, #0]
d005914e:	61a5      	str	r5, [r4, #24]
d0059150:	2208      	movs	r2, #8
d0059152:	4629      	mov	r1, r5
d0059154:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0059158:	f000 f86a 	bl	d0059230 <memset>
d005915c:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0059160:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0059164:	4620      	mov	r0, r4
d0059166:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0059168:	3468      	adds	r4, #104	; 0x68
d005916a:	e7d9      	b.n	d0059120 <__sfp+0x1c>
d005916c:	2104      	movs	r1, #4
d005916e:	4638      	mov	r0, r7
d0059170:	f7ff ff62 	bl	d0059038 <__sfmoreglue>
d0059174:	4604      	mov	r4, r0
d0059176:	6030      	str	r0, [r6, #0]
d0059178:	2800      	cmp	r0, #0
d005917a:	d1d5      	bne.n	d0059128 <__sfp+0x24>
d005917c:	f7ff ff78 	bl	d0059070 <__sfp_lock_release>
d0059180:	230c      	movs	r3, #12
d0059182:	603b      	str	r3, [r7, #0]
d0059184:	e7ee      	b.n	d0059164 <__sfp+0x60>
d0059186:	bf00      	nop
d0059188:	d005ade8 	.word	0xd005ade8
d005918c:	ffff0001 	.word	0xffff0001

d0059190 <_fwalk_reent>:
d0059190:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0059194:	4606      	mov	r6, r0
d0059196:	4688      	mov	r8, r1
d0059198:	f100 0448 	add.w	r4, r0, #72	; 0x48
d005919c:	2700      	movs	r7, #0
d005919e:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d00591a2:	f1b9 0901 	subs.w	r9, r9, #1
d00591a6:	d505      	bpl.n	d00591b4 <_fwalk_reent+0x24>
d00591a8:	6824      	ldr	r4, [r4, #0]
d00591aa:	2c00      	cmp	r4, #0
d00591ac:	d1f7      	bne.n	d005919e <_fwalk_reent+0xe>
d00591ae:	4638      	mov	r0, r7
d00591b0:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d00591b4:	89ab      	ldrh	r3, [r5, #12]
d00591b6:	2b01      	cmp	r3, #1
d00591b8:	d907      	bls.n	d00591ca <_fwalk_reent+0x3a>
d00591ba:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d00591be:	3301      	adds	r3, #1
d00591c0:	d003      	beq.n	d00591ca <_fwalk_reent+0x3a>
d00591c2:	4629      	mov	r1, r5
d00591c4:	4630      	mov	r0, r6
d00591c6:	47c0      	blx	r8
d00591c8:	4307      	orrs	r7, r0
d00591ca:	3568      	adds	r5, #104	; 0x68
d00591cc:	e7e9      	b.n	d00591a2 <_fwalk_reent+0x12>

d00591ce <__retarget_lock_init_recursive>:
d00591ce:	4770      	bx	lr

d00591d0 <__retarget_lock_close_recursive>:
d00591d0:	4770      	bx	lr

d00591d2 <__retarget_lock_acquire_recursive>:
d00591d2:	4770      	bx	lr

d00591d4 <__retarget_lock_release_recursive>:
d00591d4:	4770      	bx	lr
	...

d00591d8 <malloc>:
d00591d8:	4b02      	ldr	r3, [pc, #8]	; (d00591e4 <malloc+0xc>)
d00591da:	4601      	mov	r1, r0
d00591dc:	6818      	ldr	r0, [r3, #0]
d00591de:	f000 b87f 	b.w	d00592e0 <_malloc_r>
d00591e2:	bf00      	nop
d00591e4:	d005b654 	.word	0xd005b654

d00591e8 <free>:
d00591e8:	4b02      	ldr	r3, [pc, #8]	; (d00591f4 <free+0xc>)
d00591ea:	4601      	mov	r1, r0
d00591ec:	6818      	ldr	r0, [r3, #0]
d00591ee:	f000 b827 	b.w	d0059240 <_free_r>
d00591f2:	bf00      	nop
d00591f4:	d005b654 	.word	0xd005b654

d00591f8 <memcmp>:
d00591f8:	b530      	push	{r4, r5, lr}
d00591fa:	3901      	subs	r1, #1
d00591fc:	2400      	movs	r4, #0
d00591fe:	42a2      	cmp	r2, r4
d0059200:	d101      	bne.n	d0059206 <memcmp+0xe>
d0059202:	2000      	movs	r0, #0
d0059204:	e005      	b.n	d0059212 <memcmp+0x1a>
d0059206:	5d03      	ldrb	r3, [r0, r4]
d0059208:	3401      	adds	r4, #1
d005920a:	5d0d      	ldrb	r5, [r1, r4]
d005920c:	42ab      	cmp	r3, r5
d005920e:	d0f6      	beq.n	d00591fe <memcmp+0x6>
d0059210:	1b58      	subs	r0, r3, r5
d0059212:	bd30      	pop	{r4, r5, pc}

d0059214 <memcpy>:
d0059214:	440a      	add	r2, r1
d0059216:	4291      	cmp	r1, r2
d0059218:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d005921c:	d100      	bne.n	d0059220 <memcpy+0xc>
d005921e:	4770      	bx	lr
d0059220:	b510      	push	{r4, lr}
d0059222:	f811 4b01 	ldrb.w	r4, [r1], #1
d0059226:	f803 4f01 	strb.w	r4, [r3, #1]!
d005922a:	4291      	cmp	r1, r2
d005922c:	d1f9      	bne.n	d0059222 <memcpy+0xe>
d005922e:	bd10      	pop	{r4, pc}

d0059230 <memset>:
d0059230:	4402      	add	r2, r0
d0059232:	4603      	mov	r3, r0
d0059234:	4293      	cmp	r3, r2
d0059236:	d100      	bne.n	d005923a <memset+0xa>
d0059238:	4770      	bx	lr
d005923a:	f803 1b01 	strb.w	r1, [r3], #1
d005923e:	e7f9      	b.n	d0059234 <memset+0x4>

d0059240 <_free_r>:
d0059240:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0059242:	2900      	cmp	r1, #0
d0059244:	d048      	beq.n	d00592d8 <_free_r+0x98>
d0059246:	f851 3c04 	ldr.w	r3, [r1, #-4]
d005924a:	9001      	str	r0, [sp, #4]
d005924c:	2b00      	cmp	r3, #0
d005924e:	f1a1 0404 	sub.w	r4, r1, #4
d0059252:	bfb8      	it	lt
d0059254:	18e4      	addlt	r4, r4, r3
d0059256:	f000 fa15 	bl	d0059684 <__malloc_lock>
d005925a:	4a20      	ldr	r2, [pc, #128]	; (d00592dc <_free_r+0x9c>)
d005925c:	9801      	ldr	r0, [sp, #4]
d005925e:	6813      	ldr	r3, [r2, #0]
d0059260:	4615      	mov	r5, r2
d0059262:	b933      	cbnz	r3, d0059272 <_free_r+0x32>
d0059264:	6063      	str	r3, [r4, #4]
d0059266:	6014      	str	r4, [r2, #0]
d0059268:	b003      	add	sp, #12
d005926a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d005926e:	f000 ba0f 	b.w	d0059690 <__malloc_unlock>
d0059272:	42a3      	cmp	r3, r4
d0059274:	d90b      	bls.n	d005928e <_free_r+0x4e>
d0059276:	6821      	ldr	r1, [r4, #0]
d0059278:	1862      	adds	r2, r4, r1
d005927a:	4293      	cmp	r3, r2
d005927c:	bf04      	itt	eq
d005927e:	681a      	ldreq	r2, [r3, #0]
d0059280:	685b      	ldreq	r3, [r3, #4]
d0059282:	6063      	str	r3, [r4, #4]
d0059284:	bf04      	itt	eq
d0059286:	1852      	addeq	r2, r2, r1
d0059288:	6022      	streq	r2, [r4, #0]
d005928a:	602c      	str	r4, [r5, #0]
d005928c:	e7ec      	b.n	d0059268 <_free_r+0x28>
d005928e:	461a      	mov	r2, r3
d0059290:	685b      	ldr	r3, [r3, #4]
d0059292:	b10b      	cbz	r3, d0059298 <_free_r+0x58>
d0059294:	42a3      	cmp	r3, r4
d0059296:	d9fa      	bls.n	d005928e <_free_r+0x4e>
d0059298:	6811      	ldr	r1, [r2, #0]
d005929a:	1855      	adds	r5, r2, r1
d005929c:	42a5      	cmp	r5, r4
d005929e:	d10b      	bne.n	d00592b8 <_free_r+0x78>
d00592a0:	6824      	ldr	r4, [r4, #0]
d00592a2:	4421      	add	r1, r4
d00592a4:	1854      	adds	r4, r2, r1
d00592a6:	42a3      	cmp	r3, r4
d00592a8:	6011      	str	r1, [r2, #0]
d00592aa:	d1dd      	bne.n	d0059268 <_free_r+0x28>
d00592ac:	681c      	ldr	r4, [r3, #0]
d00592ae:	685b      	ldr	r3, [r3, #4]
d00592b0:	6053      	str	r3, [r2, #4]
d00592b2:	4421      	add	r1, r4
d00592b4:	6011      	str	r1, [r2, #0]
d00592b6:	e7d7      	b.n	d0059268 <_free_r+0x28>
d00592b8:	d902      	bls.n	d00592c0 <_free_r+0x80>
d00592ba:	230c      	movs	r3, #12
d00592bc:	6003      	str	r3, [r0, #0]
d00592be:	e7d3      	b.n	d0059268 <_free_r+0x28>
d00592c0:	6825      	ldr	r5, [r4, #0]
d00592c2:	1961      	adds	r1, r4, r5
d00592c4:	428b      	cmp	r3, r1
d00592c6:	bf04      	itt	eq
d00592c8:	6819      	ldreq	r1, [r3, #0]
d00592ca:	685b      	ldreq	r3, [r3, #4]
d00592cc:	6063      	str	r3, [r4, #4]
d00592ce:	bf04      	itt	eq
d00592d0:	1949      	addeq	r1, r1, r5
d00592d2:	6021      	streq	r1, [r4, #0]
d00592d4:	6054      	str	r4, [r2, #4]
d00592d6:	e7c7      	b.n	d0059268 <_free_r+0x28>
d00592d8:	b003      	add	sp, #12
d00592da:	bd30      	pop	{r4, r5, pc}
d00592dc:	d00f5a00 	.word	0xd00f5a00

d00592e0 <_malloc_r>:
d00592e0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00592e2:	1ccd      	adds	r5, r1, #3
d00592e4:	f025 0503 	bic.w	r5, r5, #3
d00592e8:	3508      	adds	r5, #8
d00592ea:	2d0c      	cmp	r5, #12
d00592ec:	bf38      	it	cc
d00592ee:	250c      	movcc	r5, #12
d00592f0:	2d00      	cmp	r5, #0
d00592f2:	4606      	mov	r6, r0
d00592f4:	db01      	blt.n	d00592fa <_malloc_r+0x1a>
d00592f6:	42a9      	cmp	r1, r5
d00592f8:	d903      	bls.n	d0059302 <_malloc_r+0x22>
d00592fa:	230c      	movs	r3, #12
d00592fc:	6033      	str	r3, [r6, #0]
d00592fe:	2000      	movs	r0, #0
d0059300:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0059302:	f000 f9bf 	bl	d0059684 <__malloc_lock>
d0059306:	4921      	ldr	r1, [pc, #132]	; (d005938c <_malloc_r+0xac>)
d0059308:	680a      	ldr	r2, [r1, #0]
d005930a:	4614      	mov	r4, r2
d005930c:	b99c      	cbnz	r4, d0059336 <_malloc_r+0x56>
d005930e:	4f20      	ldr	r7, [pc, #128]	; (d0059390 <_malloc_r+0xb0>)
d0059310:	683b      	ldr	r3, [r7, #0]
d0059312:	b923      	cbnz	r3, d005931e <_malloc_r+0x3e>
d0059314:	4621      	mov	r1, r4
d0059316:	4630      	mov	r0, r6
d0059318:	f7f6 fee2 	bl	d00500e0 <_sbrk_r>
d005931c:	6038      	str	r0, [r7, #0]
d005931e:	4629      	mov	r1, r5
d0059320:	4630      	mov	r0, r6
d0059322:	f7f6 fedd 	bl	d00500e0 <_sbrk_r>
d0059326:	1c43      	adds	r3, r0, #1
d0059328:	d123      	bne.n	d0059372 <_malloc_r+0x92>
d005932a:	230c      	movs	r3, #12
d005932c:	6033      	str	r3, [r6, #0]
d005932e:	4630      	mov	r0, r6
d0059330:	f000 f9ae 	bl	d0059690 <__malloc_unlock>
d0059334:	e7e3      	b.n	d00592fe <_malloc_r+0x1e>
d0059336:	6823      	ldr	r3, [r4, #0]
d0059338:	1b5b      	subs	r3, r3, r5
d005933a:	d417      	bmi.n	d005936c <_malloc_r+0x8c>
d005933c:	2b0b      	cmp	r3, #11
d005933e:	d903      	bls.n	d0059348 <_malloc_r+0x68>
d0059340:	6023      	str	r3, [r4, #0]
d0059342:	441c      	add	r4, r3
d0059344:	6025      	str	r5, [r4, #0]
d0059346:	e004      	b.n	d0059352 <_malloc_r+0x72>
d0059348:	6863      	ldr	r3, [r4, #4]
d005934a:	42a2      	cmp	r2, r4
d005934c:	bf0c      	ite	eq
d005934e:	600b      	streq	r3, [r1, #0]
d0059350:	6053      	strne	r3, [r2, #4]
d0059352:	4630      	mov	r0, r6
d0059354:	f000 f99c 	bl	d0059690 <__malloc_unlock>
d0059358:	f104 000b 	add.w	r0, r4, #11
d005935c:	1d23      	adds	r3, r4, #4
d005935e:	f020 0007 	bic.w	r0, r0, #7
d0059362:	1ac2      	subs	r2, r0, r3
d0059364:	d0cc      	beq.n	d0059300 <_malloc_r+0x20>
d0059366:	1a1b      	subs	r3, r3, r0
d0059368:	50a3      	str	r3, [r4, r2]
d005936a:	e7c9      	b.n	d0059300 <_malloc_r+0x20>
d005936c:	4622      	mov	r2, r4
d005936e:	6864      	ldr	r4, [r4, #4]
d0059370:	e7cc      	b.n	d005930c <_malloc_r+0x2c>
d0059372:	1cc4      	adds	r4, r0, #3
d0059374:	f024 0403 	bic.w	r4, r4, #3
d0059378:	42a0      	cmp	r0, r4
d005937a:	d0e3      	beq.n	d0059344 <_malloc_r+0x64>
d005937c:	1a21      	subs	r1, r4, r0
d005937e:	4630      	mov	r0, r6
d0059380:	f7f6 feae 	bl	d00500e0 <_sbrk_r>
d0059384:	3001      	adds	r0, #1
d0059386:	d1dd      	bne.n	d0059344 <_malloc_r+0x64>
d0059388:	e7cf      	b.n	d005932a <_malloc_r+0x4a>
d005938a:	bf00      	nop
d005938c:	d00f5a00 	.word	0xd00f5a00
d0059390:	d00f5a04 	.word	0xd00f5a04

d0059394 <setbuf>:
d0059394:	2900      	cmp	r1, #0
d0059396:	f44f 6380 	mov.w	r3, #1024	; 0x400
d005939a:	bf0c      	ite	eq
d005939c:	2202      	moveq	r2, #2
d005939e:	2200      	movne	r2, #0
d00593a0:	f000 b800 	b.w	d00593a4 <setvbuf>

d00593a4 <setvbuf>:
d00593a4:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d00593a8:	461d      	mov	r5, r3
d00593aa:	4b5d      	ldr	r3, [pc, #372]	; (d0059520 <setvbuf+0x17c>)
d00593ac:	681f      	ldr	r7, [r3, #0]
d00593ae:	4604      	mov	r4, r0
d00593b0:	460e      	mov	r6, r1
d00593b2:	4690      	mov	r8, r2
d00593b4:	b127      	cbz	r7, d00593c0 <setvbuf+0x1c>
d00593b6:	69bb      	ldr	r3, [r7, #24]
d00593b8:	b913      	cbnz	r3, d00593c0 <setvbuf+0x1c>
d00593ba:	4638      	mov	r0, r7
d00593bc:	f7ff fe6a 	bl	d0059094 <__sinit>
d00593c0:	4b58      	ldr	r3, [pc, #352]	; (d0059524 <setvbuf+0x180>)
d00593c2:	429c      	cmp	r4, r3
d00593c4:	d167      	bne.n	d0059496 <setvbuf+0xf2>
d00593c6:	687c      	ldr	r4, [r7, #4]
d00593c8:	f1b8 0f02 	cmp.w	r8, #2
d00593cc:	d006      	beq.n	d00593dc <setvbuf+0x38>
d00593ce:	f1b8 0f01 	cmp.w	r8, #1
d00593d2:	f200 809f 	bhi.w	d0059514 <setvbuf+0x170>
d00593d6:	2d00      	cmp	r5, #0
d00593d8:	f2c0 809c 	blt.w	d0059514 <setvbuf+0x170>
d00593dc:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00593de:	07db      	lsls	r3, r3, #31
d00593e0:	d405      	bmi.n	d00593ee <setvbuf+0x4a>
d00593e2:	89a3      	ldrh	r3, [r4, #12]
d00593e4:	0598      	lsls	r0, r3, #22
d00593e6:	d402      	bmi.n	d00593ee <setvbuf+0x4a>
d00593e8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00593ea:	f7ff fef2 	bl	d00591d2 <__retarget_lock_acquire_recursive>
d00593ee:	4621      	mov	r1, r4
d00593f0:	4638      	mov	r0, r7
d00593f2:	f7ff fdbb 	bl	d0058f6c <_fflush_r>
d00593f6:	6b61      	ldr	r1, [r4, #52]	; 0x34
d00593f8:	b141      	cbz	r1, d005940c <setvbuf+0x68>
d00593fa:	f104 0344 	add.w	r3, r4, #68	; 0x44
d00593fe:	4299      	cmp	r1, r3
d0059400:	d002      	beq.n	d0059408 <setvbuf+0x64>
d0059402:	4638      	mov	r0, r7
d0059404:	f7ff ff1c 	bl	d0059240 <_free_r>
d0059408:	2300      	movs	r3, #0
d005940a:	6363      	str	r3, [r4, #52]	; 0x34
d005940c:	2300      	movs	r3, #0
d005940e:	61a3      	str	r3, [r4, #24]
d0059410:	6063      	str	r3, [r4, #4]
d0059412:	89a3      	ldrh	r3, [r4, #12]
d0059414:	0619      	lsls	r1, r3, #24
d0059416:	d503      	bpl.n	d0059420 <setvbuf+0x7c>
d0059418:	6921      	ldr	r1, [r4, #16]
d005941a:	4638      	mov	r0, r7
d005941c:	f7ff ff10 	bl	d0059240 <_free_r>
d0059420:	89a3      	ldrh	r3, [r4, #12]
d0059422:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d0059426:	f023 0303 	bic.w	r3, r3, #3
d005942a:	f1b8 0f02 	cmp.w	r8, #2
d005942e:	81a3      	strh	r3, [r4, #12]
d0059430:	d06c      	beq.n	d005950c <setvbuf+0x168>
d0059432:	ab01      	add	r3, sp, #4
d0059434:	466a      	mov	r2, sp
d0059436:	4621      	mov	r1, r4
d0059438:	4638      	mov	r0, r7
d005943a:	f000 f8ff 	bl	d005963c <__swhatbuf_r>
d005943e:	89a3      	ldrh	r3, [r4, #12]
d0059440:	4318      	orrs	r0, r3
d0059442:	81a0      	strh	r0, [r4, #12]
d0059444:	2d00      	cmp	r5, #0
d0059446:	d130      	bne.n	d00594aa <setvbuf+0x106>
d0059448:	9d00      	ldr	r5, [sp, #0]
d005944a:	4628      	mov	r0, r5
d005944c:	f7ff fec4 	bl	d00591d8 <malloc>
d0059450:	4606      	mov	r6, r0
d0059452:	2800      	cmp	r0, #0
d0059454:	d155      	bne.n	d0059502 <setvbuf+0x15e>
d0059456:	f8dd 9000 	ldr.w	r9, [sp]
d005945a:	45a9      	cmp	r9, r5
d005945c:	d14a      	bne.n	d00594f4 <setvbuf+0x150>
d005945e:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0059462:	2200      	movs	r2, #0
d0059464:	60a2      	str	r2, [r4, #8]
d0059466:	f104 0247 	add.w	r2, r4, #71	; 0x47
d005946a:	6022      	str	r2, [r4, #0]
d005946c:	6122      	str	r2, [r4, #16]
d005946e:	2201      	movs	r2, #1
d0059470:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0059474:	6162      	str	r2, [r4, #20]
d0059476:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0059478:	f043 0302 	orr.w	r3, r3, #2
d005947c:	07d2      	lsls	r2, r2, #31
d005947e:	81a3      	strh	r3, [r4, #12]
d0059480:	d405      	bmi.n	d005948e <setvbuf+0xea>
d0059482:	f413 7f00 	tst.w	r3, #512	; 0x200
d0059486:	d102      	bne.n	d005948e <setvbuf+0xea>
d0059488:	6da0      	ldr	r0, [r4, #88]	; 0x58
d005948a:	f7ff fea3 	bl	d00591d4 <__retarget_lock_release_recursive>
d005948e:	4628      	mov	r0, r5
d0059490:	b003      	add	sp, #12
d0059492:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0059496:	4b24      	ldr	r3, [pc, #144]	; (d0059528 <setvbuf+0x184>)
d0059498:	429c      	cmp	r4, r3
d005949a:	d101      	bne.n	d00594a0 <setvbuf+0xfc>
d005949c:	68bc      	ldr	r4, [r7, #8]
d005949e:	e793      	b.n	d00593c8 <setvbuf+0x24>
d00594a0:	4b22      	ldr	r3, [pc, #136]	; (d005952c <setvbuf+0x188>)
d00594a2:	429c      	cmp	r4, r3
d00594a4:	bf08      	it	eq
d00594a6:	68fc      	ldreq	r4, [r7, #12]
d00594a8:	e78e      	b.n	d00593c8 <setvbuf+0x24>
d00594aa:	2e00      	cmp	r6, #0
d00594ac:	d0cd      	beq.n	d005944a <setvbuf+0xa6>
d00594ae:	69bb      	ldr	r3, [r7, #24]
d00594b0:	b913      	cbnz	r3, d00594b8 <setvbuf+0x114>
d00594b2:	4638      	mov	r0, r7
d00594b4:	f7ff fdee 	bl	d0059094 <__sinit>
d00594b8:	f1b8 0f01 	cmp.w	r8, #1
d00594bc:	bf08      	it	eq
d00594be:	89a3      	ldrheq	r3, [r4, #12]
d00594c0:	6026      	str	r6, [r4, #0]
d00594c2:	bf04      	itt	eq
d00594c4:	f043 0301 	orreq.w	r3, r3, #1
d00594c8:	81a3      	strheq	r3, [r4, #12]
d00594ca:	89a2      	ldrh	r2, [r4, #12]
d00594cc:	f012 0308 	ands.w	r3, r2, #8
d00594d0:	e9c4 6504 	strd	r6, r5, [r4, #16]
d00594d4:	d01c      	beq.n	d0059510 <setvbuf+0x16c>
d00594d6:	07d3      	lsls	r3, r2, #31
d00594d8:	bf41      	itttt	mi
d00594da:	2300      	movmi	r3, #0
d00594dc:	426d      	negmi	r5, r5
d00594de:	60a3      	strmi	r3, [r4, #8]
d00594e0:	61a5      	strmi	r5, [r4, #24]
d00594e2:	bf58      	it	pl
d00594e4:	60a5      	strpl	r5, [r4, #8]
d00594e6:	6e65      	ldr	r5, [r4, #100]	; 0x64
d00594e8:	f015 0501 	ands.w	r5, r5, #1
d00594ec:	d115      	bne.n	d005951a <setvbuf+0x176>
d00594ee:	f412 7f00 	tst.w	r2, #512	; 0x200
d00594f2:	e7c8      	b.n	d0059486 <setvbuf+0xe2>
d00594f4:	4648      	mov	r0, r9
d00594f6:	f7ff fe6f 	bl	d00591d8 <malloc>
d00594fa:	4606      	mov	r6, r0
d00594fc:	2800      	cmp	r0, #0
d00594fe:	d0ae      	beq.n	d005945e <setvbuf+0xba>
d0059500:	464d      	mov	r5, r9
d0059502:	89a3      	ldrh	r3, [r4, #12]
d0059504:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0059508:	81a3      	strh	r3, [r4, #12]
d005950a:	e7d0      	b.n	d00594ae <setvbuf+0x10a>
d005950c:	2500      	movs	r5, #0
d005950e:	e7a8      	b.n	d0059462 <setvbuf+0xbe>
d0059510:	60a3      	str	r3, [r4, #8]
d0059512:	e7e8      	b.n	d00594e6 <setvbuf+0x142>
d0059514:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0059518:	e7b9      	b.n	d005948e <setvbuf+0xea>
d005951a:	2500      	movs	r5, #0
d005951c:	e7b7      	b.n	d005948e <setvbuf+0xea>
d005951e:	bf00      	nop
d0059520:	d005b654 	.word	0xd005b654
d0059524:	d005ada8 	.word	0xd005ada8
d0059528:	d005adc8 	.word	0xd005adc8
d005952c:	d005ad88 	.word	0xd005ad88

d0059530 <siprintf>:
d0059530:	b40e      	push	{r1, r2, r3}
d0059532:	b500      	push	{lr}
d0059534:	b09c      	sub	sp, #112	; 0x70
d0059536:	ab1d      	add	r3, sp, #116	; 0x74
d0059538:	9002      	str	r0, [sp, #8]
d005953a:	9006      	str	r0, [sp, #24]
d005953c:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d0059540:	4809      	ldr	r0, [pc, #36]	; (d0059568 <siprintf+0x38>)
d0059542:	9107      	str	r1, [sp, #28]
d0059544:	9104      	str	r1, [sp, #16]
d0059546:	4909      	ldr	r1, [pc, #36]	; (d005956c <siprintf+0x3c>)
d0059548:	f853 2b04 	ldr.w	r2, [r3], #4
d005954c:	9105      	str	r1, [sp, #20]
d005954e:	6800      	ldr	r0, [r0, #0]
d0059550:	9301      	str	r3, [sp, #4]
d0059552:	a902      	add	r1, sp, #8
d0059554:	f000 f924 	bl	d00597a0 <_svfiprintf_r>
d0059558:	9b02      	ldr	r3, [sp, #8]
d005955a:	2200      	movs	r2, #0
d005955c:	701a      	strb	r2, [r3, #0]
d005955e:	b01c      	add	sp, #112	; 0x70
d0059560:	f85d eb04 	ldr.w	lr, [sp], #4
d0059564:	b003      	add	sp, #12
d0059566:	4770      	bx	lr
d0059568:	d005b654 	.word	0xd005b654
d005956c:	ffff0208 	.word	0xffff0208

d0059570 <__sread>:
d0059570:	b510      	push	{r4, lr}
d0059572:	460c      	mov	r4, r1
d0059574:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0059578:	f000 fba6 	bl	d0059cc8 <_read_r>
d005957c:	2800      	cmp	r0, #0
d005957e:	bfab      	itete	ge
d0059580:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0059582:	89a3      	ldrhlt	r3, [r4, #12]
d0059584:	181b      	addge	r3, r3, r0
d0059586:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d005958a:	bfac      	ite	ge
d005958c:	6563      	strge	r3, [r4, #84]	; 0x54
d005958e:	81a3      	strhlt	r3, [r4, #12]
d0059590:	bd10      	pop	{r4, pc}

d0059592 <__swrite>:
d0059592:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0059596:	461f      	mov	r7, r3
d0059598:	898b      	ldrh	r3, [r1, #12]
d005959a:	05db      	lsls	r3, r3, #23
d005959c:	4605      	mov	r5, r0
d005959e:	460c      	mov	r4, r1
d00595a0:	4616      	mov	r6, r2
d00595a2:	d505      	bpl.n	d00595b0 <__swrite+0x1e>
d00595a4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00595a8:	2302      	movs	r3, #2
d00595aa:	2200      	movs	r2, #0
d00595ac:	f000 f834 	bl	d0059618 <_lseek_r>
d00595b0:	89a3      	ldrh	r3, [r4, #12]
d00595b2:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d00595b6:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d00595ba:	81a3      	strh	r3, [r4, #12]
d00595bc:	4632      	mov	r2, r6
d00595be:	463b      	mov	r3, r7
d00595c0:	4628      	mov	r0, r5
d00595c2:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d00595c6:	f7f6 bd45 	b.w	d0050054 <_write_r>

d00595ca <__sseek>:
d00595ca:	b510      	push	{r4, lr}
d00595cc:	460c      	mov	r4, r1
d00595ce:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00595d2:	f000 f821 	bl	d0059618 <_lseek_r>
d00595d6:	1c43      	adds	r3, r0, #1
d00595d8:	89a3      	ldrh	r3, [r4, #12]
d00595da:	bf15      	itete	ne
d00595dc:	6560      	strne	r0, [r4, #84]	; 0x54
d00595de:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d00595e2:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d00595e6:	81a3      	strheq	r3, [r4, #12]
d00595e8:	bf18      	it	ne
d00595ea:	81a3      	strhne	r3, [r4, #12]
d00595ec:	bd10      	pop	{r4, pc}

d00595ee <__sclose>:
d00595ee:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d00595f2:	f000 b801 	b.w	d00595f8 <_close_r>
	...

d00595f8 <_close_r>:
d00595f8:	b538      	push	{r3, r4, r5, lr}
d00595fa:	4d06      	ldr	r5, [pc, #24]	; (d0059614 <_close_r+0x1c>)
d00595fc:	2300      	movs	r3, #0
d00595fe:	4604      	mov	r4, r0
d0059600:	4608      	mov	r0, r1
d0059602:	602b      	str	r3, [r5, #0]
d0059604:	f7f6 fd60 	bl	d00500c8 <_close>
d0059608:	1c43      	adds	r3, r0, #1
d005960a:	d102      	bne.n	d0059612 <_close_r+0x1a>
d005960c:	682b      	ldr	r3, [r5, #0]
d005960e:	b103      	cbz	r3, d0059612 <_close_r+0x1a>
d0059610:	6023      	str	r3, [r4, #0]
d0059612:	bd38      	pop	{r3, r4, r5, pc}
d0059614:	d00fbacc 	.word	0xd00fbacc

d0059618 <_lseek_r>:
d0059618:	b538      	push	{r3, r4, r5, lr}
d005961a:	4d07      	ldr	r5, [pc, #28]	; (d0059638 <_lseek_r+0x20>)
d005961c:	4604      	mov	r4, r0
d005961e:	4608      	mov	r0, r1
d0059620:	4611      	mov	r1, r2
d0059622:	2200      	movs	r2, #0
d0059624:	602a      	str	r2, [r5, #0]
d0059626:	461a      	mov	r2, r3
d0059628:	f7f6 fd58 	bl	d00500dc <_lseek>
d005962c:	1c43      	adds	r3, r0, #1
d005962e:	d102      	bne.n	d0059636 <_lseek_r+0x1e>
d0059630:	682b      	ldr	r3, [r5, #0]
d0059632:	b103      	cbz	r3, d0059636 <_lseek_r+0x1e>
d0059634:	6023      	str	r3, [r4, #0]
d0059636:	bd38      	pop	{r3, r4, r5, pc}
d0059638:	d00fbacc 	.word	0xd00fbacc

d005963c <__swhatbuf_r>:
d005963c:	b570      	push	{r4, r5, r6, lr}
d005963e:	460e      	mov	r6, r1
d0059640:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0059644:	2900      	cmp	r1, #0
d0059646:	b096      	sub	sp, #88	; 0x58
d0059648:	4614      	mov	r4, r2
d005964a:	461d      	mov	r5, r3
d005964c:	da07      	bge.n	d005965e <__swhatbuf_r+0x22>
d005964e:	2300      	movs	r3, #0
d0059650:	602b      	str	r3, [r5, #0]
d0059652:	89b3      	ldrh	r3, [r6, #12]
d0059654:	061a      	lsls	r2, r3, #24
d0059656:	d410      	bmi.n	d005967a <__swhatbuf_r+0x3e>
d0059658:	f44f 6380 	mov.w	r3, #1024	; 0x400
d005965c:	e00e      	b.n	d005967c <__swhatbuf_r+0x40>
d005965e:	466a      	mov	r2, sp
d0059660:	f000 fb44 	bl	d0059cec <_fstat_r>
d0059664:	2800      	cmp	r0, #0
d0059666:	dbf2      	blt.n	d005964e <__swhatbuf_r+0x12>
d0059668:	9a01      	ldr	r2, [sp, #4]
d005966a:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d005966e:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d0059672:	425a      	negs	r2, r3
d0059674:	415a      	adcs	r2, r3
d0059676:	602a      	str	r2, [r5, #0]
d0059678:	e7ee      	b.n	d0059658 <__swhatbuf_r+0x1c>
d005967a:	2340      	movs	r3, #64	; 0x40
d005967c:	2000      	movs	r0, #0
d005967e:	6023      	str	r3, [r4, #0]
d0059680:	b016      	add	sp, #88	; 0x58
d0059682:	bd70      	pop	{r4, r5, r6, pc}

d0059684 <__malloc_lock>:
d0059684:	4801      	ldr	r0, [pc, #4]	; (d005968c <__malloc_lock+0x8>)
d0059686:	f7ff bda4 	b.w	d00591d2 <__retarget_lock_acquire_recursive>
d005968a:	bf00      	nop
d005968c:	d00fbac4 	.word	0xd00fbac4

d0059690 <__malloc_unlock>:
d0059690:	4801      	ldr	r0, [pc, #4]	; (d0059698 <__malloc_unlock+0x8>)
d0059692:	f7ff bd9f 	b.w	d00591d4 <__retarget_lock_release_recursive>
d0059696:	bf00      	nop
d0059698:	d00fbac4 	.word	0xd00fbac4

d005969c <_realloc_r>:
d005969c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005969e:	4607      	mov	r7, r0
d00596a0:	4614      	mov	r4, r2
d00596a2:	460e      	mov	r6, r1
d00596a4:	b921      	cbnz	r1, d00596b0 <_realloc_r+0x14>
d00596a6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d00596aa:	4611      	mov	r1, r2
d00596ac:	f7ff be18 	b.w	d00592e0 <_malloc_r>
d00596b0:	b922      	cbnz	r2, d00596bc <_realloc_r+0x20>
d00596b2:	f7ff fdc5 	bl	d0059240 <_free_r>
d00596b6:	4625      	mov	r5, r4
d00596b8:	4628      	mov	r0, r5
d00596ba:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00596bc:	f000 fb92 	bl	d0059de4 <_malloc_usable_size_r>
d00596c0:	42a0      	cmp	r0, r4
d00596c2:	d20f      	bcs.n	d00596e4 <_realloc_r+0x48>
d00596c4:	4621      	mov	r1, r4
d00596c6:	4638      	mov	r0, r7
d00596c8:	f7ff fe0a 	bl	d00592e0 <_malloc_r>
d00596cc:	4605      	mov	r5, r0
d00596ce:	2800      	cmp	r0, #0
d00596d0:	d0f2      	beq.n	d00596b8 <_realloc_r+0x1c>
d00596d2:	4631      	mov	r1, r6
d00596d4:	4622      	mov	r2, r4
d00596d6:	f7ff fd9d 	bl	d0059214 <memcpy>
d00596da:	4631      	mov	r1, r6
d00596dc:	4638      	mov	r0, r7
d00596de:	f7ff fdaf 	bl	d0059240 <_free_r>
d00596e2:	e7e9      	b.n	d00596b8 <_realloc_r+0x1c>
d00596e4:	4635      	mov	r5, r6
d00596e6:	e7e7      	b.n	d00596b8 <_realloc_r+0x1c>

d00596e8 <__ssputs_r>:
d00596e8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00596ec:	688e      	ldr	r6, [r1, #8]
d00596ee:	429e      	cmp	r6, r3
d00596f0:	4682      	mov	sl, r0
d00596f2:	460c      	mov	r4, r1
d00596f4:	4690      	mov	r8, r2
d00596f6:	461f      	mov	r7, r3
d00596f8:	d838      	bhi.n	d005976c <__ssputs_r+0x84>
d00596fa:	898a      	ldrh	r2, [r1, #12]
d00596fc:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0059700:	d032      	beq.n	d0059768 <__ssputs_r+0x80>
d0059702:	6825      	ldr	r5, [r4, #0]
d0059704:	6909      	ldr	r1, [r1, #16]
d0059706:	eba5 0901 	sub.w	r9, r5, r1
d005970a:	6965      	ldr	r5, [r4, #20]
d005970c:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d0059710:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d0059714:	3301      	adds	r3, #1
d0059716:	444b      	add	r3, r9
d0059718:	106d      	asrs	r5, r5, #1
d005971a:	429d      	cmp	r5, r3
d005971c:	bf38      	it	cc
d005971e:	461d      	movcc	r5, r3
d0059720:	0553      	lsls	r3, r2, #21
d0059722:	d531      	bpl.n	d0059788 <__ssputs_r+0xa0>
d0059724:	4629      	mov	r1, r5
d0059726:	f7ff fddb 	bl	d00592e0 <_malloc_r>
d005972a:	4606      	mov	r6, r0
d005972c:	b950      	cbnz	r0, d0059744 <__ssputs_r+0x5c>
d005972e:	230c      	movs	r3, #12
d0059730:	f8ca 3000 	str.w	r3, [sl]
d0059734:	89a3      	ldrh	r3, [r4, #12]
d0059736:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d005973a:	81a3      	strh	r3, [r4, #12]
d005973c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0059740:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0059744:	6921      	ldr	r1, [r4, #16]
d0059746:	464a      	mov	r2, r9
d0059748:	f7ff fd64 	bl	d0059214 <memcpy>
d005974c:	89a3      	ldrh	r3, [r4, #12]
d005974e:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d0059752:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0059756:	81a3      	strh	r3, [r4, #12]
d0059758:	6126      	str	r6, [r4, #16]
d005975a:	6165      	str	r5, [r4, #20]
d005975c:	444e      	add	r6, r9
d005975e:	eba5 0509 	sub.w	r5, r5, r9
d0059762:	6026      	str	r6, [r4, #0]
d0059764:	60a5      	str	r5, [r4, #8]
d0059766:	463e      	mov	r6, r7
d0059768:	42be      	cmp	r6, r7
d005976a:	d900      	bls.n	d005976e <__ssputs_r+0x86>
d005976c:	463e      	mov	r6, r7
d005976e:	4632      	mov	r2, r6
d0059770:	6820      	ldr	r0, [r4, #0]
d0059772:	4641      	mov	r1, r8
d0059774:	f000 fb1c 	bl	d0059db0 <memmove>
d0059778:	68a3      	ldr	r3, [r4, #8]
d005977a:	6822      	ldr	r2, [r4, #0]
d005977c:	1b9b      	subs	r3, r3, r6
d005977e:	4432      	add	r2, r6
d0059780:	60a3      	str	r3, [r4, #8]
d0059782:	6022      	str	r2, [r4, #0]
d0059784:	2000      	movs	r0, #0
d0059786:	e7db      	b.n	d0059740 <__ssputs_r+0x58>
d0059788:	462a      	mov	r2, r5
d005978a:	f7ff ff87 	bl	d005969c <_realloc_r>
d005978e:	4606      	mov	r6, r0
d0059790:	2800      	cmp	r0, #0
d0059792:	d1e1      	bne.n	d0059758 <__ssputs_r+0x70>
d0059794:	6921      	ldr	r1, [r4, #16]
d0059796:	4650      	mov	r0, sl
d0059798:	f7ff fd52 	bl	d0059240 <_free_r>
d005979c:	e7c7      	b.n	d005972e <__ssputs_r+0x46>
	...

d00597a0 <_svfiprintf_r>:
d00597a0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00597a4:	4698      	mov	r8, r3
d00597a6:	898b      	ldrh	r3, [r1, #12]
d00597a8:	061b      	lsls	r3, r3, #24
d00597aa:	b09d      	sub	sp, #116	; 0x74
d00597ac:	4607      	mov	r7, r0
d00597ae:	460d      	mov	r5, r1
d00597b0:	4614      	mov	r4, r2
d00597b2:	d50e      	bpl.n	d00597d2 <_svfiprintf_r+0x32>
d00597b4:	690b      	ldr	r3, [r1, #16]
d00597b6:	b963      	cbnz	r3, d00597d2 <_svfiprintf_r+0x32>
d00597b8:	2140      	movs	r1, #64	; 0x40
d00597ba:	f7ff fd91 	bl	d00592e0 <_malloc_r>
d00597be:	6028      	str	r0, [r5, #0]
d00597c0:	6128      	str	r0, [r5, #16]
d00597c2:	b920      	cbnz	r0, d00597ce <_svfiprintf_r+0x2e>
d00597c4:	230c      	movs	r3, #12
d00597c6:	603b      	str	r3, [r7, #0]
d00597c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00597cc:	e0d1      	b.n	d0059972 <_svfiprintf_r+0x1d2>
d00597ce:	2340      	movs	r3, #64	; 0x40
d00597d0:	616b      	str	r3, [r5, #20]
d00597d2:	2300      	movs	r3, #0
d00597d4:	9309      	str	r3, [sp, #36]	; 0x24
d00597d6:	2320      	movs	r3, #32
d00597d8:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d00597dc:	f8cd 800c 	str.w	r8, [sp, #12]
d00597e0:	2330      	movs	r3, #48	; 0x30
d00597e2:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d005998c <_svfiprintf_r+0x1ec>
d00597e6:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d00597ea:	f04f 0901 	mov.w	r9, #1
d00597ee:	4623      	mov	r3, r4
d00597f0:	469a      	mov	sl, r3
d00597f2:	f813 2b01 	ldrb.w	r2, [r3], #1
d00597f6:	b10a      	cbz	r2, d00597fc <_svfiprintf_r+0x5c>
d00597f8:	2a25      	cmp	r2, #37	; 0x25
d00597fa:	d1f9      	bne.n	d00597f0 <_svfiprintf_r+0x50>
d00597fc:	ebba 0b04 	subs.w	fp, sl, r4
d0059800:	d00b      	beq.n	d005981a <_svfiprintf_r+0x7a>
d0059802:	465b      	mov	r3, fp
d0059804:	4622      	mov	r2, r4
d0059806:	4629      	mov	r1, r5
d0059808:	4638      	mov	r0, r7
d005980a:	f7ff ff6d 	bl	d00596e8 <__ssputs_r>
d005980e:	3001      	adds	r0, #1
d0059810:	f000 80aa 	beq.w	d0059968 <_svfiprintf_r+0x1c8>
d0059814:	9a09      	ldr	r2, [sp, #36]	; 0x24
d0059816:	445a      	add	r2, fp
d0059818:	9209      	str	r2, [sp, #36]	; 0x24
d005981a:	f89a 3000 	ldrb.w	r3, [sl]
d005981e:	2b00      	cmp	r3, #0
d0059820:	f000 80a2 	beq.w	d0059968 <_svfiprintf_r+0x1c8>
d0059824:	2300      	movs	r3, #0
d0059826:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d005982a:	e9cd 2305 	strd	r2, r3, [sp, #20]
d005982e:	f10a 0a01 	add.w	sl, sl, #1
d0059832:	9304      	str	r3, [sp, #16]
d0059834:	9307      	str	r3, [sp, #28]
d0059836:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d005983a:	931a      	str	r3, [sp, #104]	; 0x68
d005983c:	4654      	mov	r4, sl
d005983e:	2205      	movs	r2, #5
d0059840:	f814 1b01 	ldrb.w	r1, [r4], #1
d0059844:	4851      	ldr	r0, [pc, #324]	; (d005998c <_svfiprintf_r+0x1ec>)
d0059846:	f000 fa63 	bl	d0059d10 <memchr>
d005984a:	9a04      	ldr	r2, [sp, #16]
d005984c:	b9d8      	cbnz	r0, d0059886 <_svfiprintf_r+0xe6>
d005984e:	06d0      	lsls	r0, r2, #27
d0059850:	bf44      	itt	mi
d0059852:	2320      	movmi	r3, #32
d0059854:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0059858:	0711      	lsls	r1, r2, #28
d005985a:	bf44      	itt	mi
d005985c:	232b      	movmi	r3, #43	; 0x2b
d005985e:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d0059862:	f89a 3000 	ldrb.w	r3, [sl]
d0059866:	2b2a      	cmp	r3, #42	; 0x2a
d0059868:	d015      	beq.n	d0059896 <_svfiprintf_r+0xf6>
d005986a:	9a07      	ldr	r2, [sp, #28]
d005986c:	4654      	mov	r4, sl
d005986e:	2000      	movs	r0, #0
d0059870:	f04f 0c0a 	mov.w	ip, #10
d0059874:	4621      	mov	r1, r4
d0059876:	f811 3b01 	ldrb.w	r3, [r1], #1
d005987a:	3b30      	subs	r3, #48	; 0x30
d005987c:	2b09      	cmp	r3, #9
d005987e:	d94e      	bls.n	d005991e <_svfiprintf_r+0x17e>
d0059880:	b1b0      	cbz	r0, d00598b0 <_svfiprintf_r+0x110>
d0059882:	9207      	str	r2, [sp, #28]
d0059884:	e014      	b.n	d00598b0 <_svfiprintf_r+0x110>
d0059886:	eba0 0308 	sub.w	r3, r0, r8
d005988a:	fa09 f303 	lsl.w	r3, r9, r3
d005988e:	4313      	orrs	r3, r2
d0059890:	9304      	str	r3, [sp, #16]
d0059892:	46a2      	mov	sl, r4
d0059894:	e7d2      	b.n	d005983c <_svfiprintf_r+0x9c>
d0059896:	9b03      	ldr	r3, [sp, #12]
d0059898:	1d19      	adds	r1, r3, #4
d005989a:	681b      	ldr	r3, [r3, #0]
d005989c:	9103      	str	r1, [sp, #12]
d005989e:	2b00      	cmp	r3, #0
d00598a0:	bfbb      	ittet	lt
d00598a2:	425b      	neglt	r3, r3
d00598a4:	f042 0202 	orrlt.w	r2, r2, #2
d00598a8:	9307      	strge	r3, [sp, #28]
d00598aa:	9307      	strlt	r3, [sp, #28]
d00598ac:	bfb8      	it	lt
d00598ae:	9204      	strlt	r2, [sp, #16]
d00598b0:	7823      	ldrb	r3, [r4, #0]
d00598b2:	2b2e      	cmp	r3, #46	; 0x2e
d00598b4:	d10c      	bne.n	d00598d0 <_svfiprintf_r+0x130>
d00598b6:	7863      	ldrb	r3, [r4, #1]
d00598b8:	2b2a      	cmp	r3, #42	; 0x2a
d00598ba:	d135      	bne.n	d0059928 <_svfiprintf_r+0x188>
d00598bc:	9b03      	ldr	r3, [sp, #12]
d00598be:	1d1a      	adds	r2, r3, #4
d00598c0:	681b      	ldr	r3, [r3, #0]
d00598c2:	9203      	str	r2, [sp, #12]
d00598c4:	2b00      	cmp	r3, #0
d00598c6:	bfb8      	it	lt
d00598c8:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d00598cc:	3402      	adds	r4, #2
d00598ce:	9305      	str	r3, [sp, #20]
d00598d0:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d005999c <_svfiprintf_r+0x1fc>
d00598d4:	7821      	ldrb	r1, [r4, #0]
d00598d6:	2203      	movs	r2, #3
d00598d8:	4650      	mov	r0, sl
d00598da:	f000 fa19 	bl	d0059d10 <memchr>
d00598de:	b140      	cbz	r0, d00598f2 <_svfiprintf_r+0x152>
d00598e0:	2340      	movs	r3, #64	; 0x40
d00598e2:	eba0 000a 	sub.w	r0, r0, sl
d00598e6:	fa03 f000 	lsl.w	r0, r3, r0
d00598ea:	9b04      	ldr	r3, [sp, #16]
d00598ec:	4303      	orrs	r3, r0
d00598ee:	3401      	adds	r4, #1
d00598f0:	9304      	str	r3, [sp, #16]
d00598f2:	f814 1b01 	ldrb.w	r1, [r4], #1
d00598f6:	4826      	ldr	r0, [pc, #152]	; (d0059990 <_svfiprintf_r+0x1f0>)
d00598f8:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d00598fc:	2206      	movs	r2, #6
d00598fe:	f000 fa07 	bl	d0059d10 <memchr>
d0059902:	2800      	cmp	r0, #0
d0059904:	d038      	beq.n	d0059978 <_svfiprintf_r+0x1d8>
d0059906:	4b23      	ldr	r3, [pc, #140]	; (d0059994 <_svfiprintf_r+0x1f4>)
d0059908:	bb1b      	cbnz	r3, d0059952 <_svfiprintf_r+0x1b2>
d005990a:	9b03      	ldr	r3, [sp, #12]
d005990c:	3307      	adds	r3, #7
d005990e:	f023 0307 	bic.w	r3, r3, #7
d0059912:	3308      	adds	r3, #8
d0059914:	9303      	str	r3, [sp, #12]
d0059916:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0059918:	4433      	add	r3, r6
d005991a:	9309      	str	r3, [sp, #36]	; 0x24
d005991c:	e767      	b.n	d00597ee <_svfiprintf_r+0x4e>
d005991e:	fb0c 3202 	mla	r2, ip, r2, r3
d0059922:	460c      	mov	r4, r1
d0059924:	2001      	movs	r0, #1
d0059926:	e7a5      	b.n	d0059874 <_svfiprintf_r+0xd4>
d0059928:	2300      	movs	r3, #0
d005992a:	3401      	adds	r4, #1
d005992c:	9305      	str	r3, [sp, #20]
d005992e:	4619      	mov	r1, r3
d0059930:	f04f 0c0a 	mov.w	ip, #10
d0059934:	4620      	mov	r0, r4
d0059936:	f810 2b01 	ldrb.w	r2, [r0], #1
d005993a:	3a30      	subs	r2, #48	; 0x30
d005993c:	2a09      	cmp	r2, #9
d005993e:	d903      	bls.n	d0059948 <_svfiprintf_r+0x1a8>
d0059940:	2b00      	cmp	r3, #0
d0059942:	d0c5      	beq.n	d00598d0 <_svfiprintf_r+0x130>
d0059944:	9105      	str	r1, [sp, #20]
d0059946:	e7c3      	b.n	d00598d0 <_svfiprintf_r+0x130>
d0059948:	fb0c 2101 	mla	r1, ip, r1, r2
d005994c:	4604      	mov	r4, r0
d005994e:	2301      	movs	r3, #1
d0059950:	e7f0      	b.n	d0059934 <_svfiprintf_r+0x194>
d0059952:	ab03      	add	r3, sp, #12
d0059954:	9300      	str	r3, [sp, #0]
d0059956:	462a      	mov	r2, r5
d0059958:	4b0f      	ldr	r3, [pc, #60]	; (d0059998 <_svfiprintf_r+0x1f8>)
d005995a:	a904      	add	r1, sp, #16
d005995c:	4638      	mov	r0, r7
d005995e:	f3af 8000 	nop.w
d0059962:	1c42      	adds	r2, r0, #1
d0059964:	4606      	mov	r6, r0
d0059966:	d1d6      	bne.n	d0059916 <_svfiprintf_r+0x176>
d0059968:	89ab      	ldrh	r3, [r5, #12]
d005996a:	065b      	lsls	r3, r3, #25
d005996c:	f53f af2c 	bmi.w	d00597c8 <_svfiprintf_r+0x28>
d0059970:	9809      	ldr	r0, [sp, #36]	; 0x24
d0059972:	b01d      	add	sp, #116	; 0x74
d0059974:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0059978:	ab03      	add	r3, sp, #12
d005997a:	9300      	str	r3, [sp, #0]
d005997c:	462a      	mov	r2, r5
d005997e:	4b06      	ldr	r3, [pc, #24]	; (d0059998 <_svfiprintf_r+0x1f8>)
d0059980:	a904      	add	r1, sp, #16
d0059982:	4638      	mov	r0, r7
d0059984:	f000 f87a 	bl	d0059a7c <_printf_i>
d0059988:	e7eb      	b.n	d0059962 <_svfiprintf_r+0x1c2>
d005998a:	bf00      	nop
d005998c:	d005adec 	.word	0xd005adec
d0059990:	d005adf6 	.word	0xd005adf6
d0059994:	00000000 	.word	0x00000000
d0059998:	d00596e9 	.word	0xd00596e9
d005999c:	d005adf2 	.word	0xd005adf2

d00599a0 <_printf_common>:
d00599a0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00599a4:	4616      	mov	r6, r2
d00599a6:	4699      	mov	r9, r3
d00599a8:	688a      	ldr	r2, [r1, #8]
d00599aa:	690b      	ldr	r3, [r1, #16]
d00599ac:	f8dd 8020 	ldr.w	r8, [sp, #32]
d00599b0:	4293      	cmp	r3, r2
d00599b2:	bfb8      	it	lt
d00599b4:	4613      	movlt	r3, r2
d00599b6:	6033      	str	r3, [r6, #0]
d00599b8:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d00599bc:	4607      	mov	r7, r0
d00599be:	460c      	mov	r4, r1
d00599c0:	b10a      	cbz	r2, d00599c6 <_printf_common+0x26>
d00599c2:	3301      	adds	r3, #1
d00599c4:	6033      	str	r3, [r6, #0]
d00599c6:	6823      	ldr	r3, [r4, #0]
d00599c8:	0699      	lsls	r1, r3, #26
d00599ca:	bf42      	ittt	mi
d00599cc:	6833      	ldrmi	r3, [r6, #0]
d00599ce:	3302      	addmi	r3, #2
d00599d0:	6033      	strmi	r3, [r6, #0]
d00599d2:	6825      	ldr	r5, [r4, #0]
d00599d4:	f015 0506 	ands.w	r5, r5, #6
d00599d8:	d106      	bne.n	d00599e8 <_printf_common+0x48>
d00599da:	f104 0a19 	add.w	sl, r4, #25
d00599de:	68e3      	ldr	r3, [r4, #12]
d00599e0:	6832      	ldr	r2, [r6, #0]
d00599e2:	1a9b      	subs	r3, r3, r2
d00599e4:	42ab      	cmp	r3, r5
d00599e6:	dc26      	bgt.n	d0059a36 <_printf_common+0x96>
d00599e8:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d00599ec:	1e13      	subs	r3, r2, #0
d00599ee:	6822      	ldr	r2, [r4, #0]
d00599f0:	bf18      	it	ne
d00599f2:	2301      	movne	r3, #1
d00599f4:	0692      	lsls	r2, r2, #26
d00599f6:	d42b      	bmi.n	d0059a50 <_printf_common+0xb0>
d00599f8:	f104 0243 	add.w	r2, r4, #67	; 0x43
d00599fc:	4649      	mov	r1, r9
d00599fe:	4638      	mov	r0, r7
d0059a00:	47c0      	blx	r8
d0059a02:	3001      	adds	r0, #1
d0059a04:	d01e      	beq.n	d0059a44 <_printf_common+0xa4>
d0059a06:	6823      	ldr	r3, [r4, #0]
d0059a08:	68e5      	ldr	r5, [r4, #12]
d0059a0a:	6832      	ldr	r2, [r6, #0]
d0059a0c:	f003 0306 	and.w	r3, r3, #6
d0059a10:	2b04      	cmp	r3, #4
d0059a12:	bf08      	it	eq
d0059a14:	1aad      	subeq	r5, r5, r2
d0059a16:	68a3      	ldr	r3, [r4, #8]
d0059a18:	6922      	ldr	r2, [r4, #16]
d0059a1a:	bf0c      	ite	eq
d0059a1c:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d0059a20:	2500      	movne	r5, #0
d0059a22:	4293      	cmp	r3, r2
d0059a24:	bfc4      	itt	gt
d0059a26:	1a9b      	subgt	r3, r3, r2
d0059a28:	18ed      	addgt	r5, r5, r3
d0059a2a:	2600      	movs	r6, #0
d0059a2c:	341a      	adds	r4, #26
d0059a2e:	42b5      	cmp	r5, r6
d0059a30:	d11a      	bne.n	d0059a68 <_printf_common+0xc8>
d0059a32:	2000      	movs	r0, #0
d0059a34:	e008      	b.n	d0059a48 <_printf_common+0xa8>
d0059a36:	2301      	movs	r3, #1
d0059a38:	4652      	mov	r2, sl
d0059a3a:	4649      	mov	r1, r9
d0059a3c:	4638      	mov	r0, r7
d0059a3e:	47c0      	blx	r8
d0059a40:	3001      	adds	r0, #1
d0059a42:	d103      	bne.n	d0059a4c <_printf_common+0xac>
d0059a44:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0059a48:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0059a4c:	3501      	adds	r5, #1
d0059a4e:	e7c6      	b.n	d00599de <_printf_common+0x3e>
d0059a50:	18e1      	adds	r1, r4, r3
d0059a52:	1c5a      	adds	r2, r3, #1
d0059a54:	2030      	movs	r0, #48	; 0x30
d0059a56:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d0059a5a:	4422      	add	r2, r4
d0059a5c:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d0059a60:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d0059a64:	3302      	adds	r3, #2
d0059a66:	e7c7      	b.n	d00599f8 <_printf_common+0x58>
d0059a68:	2301      	movs	r3, #1
d0059a6a:	4622      	mov	r2, r4
d0059a6c:	4649      	mov	r1, r9
d0059a6e:	4638      	mov	r0, r7
d0059a70:	47c0      	blx	r8
d0059a72:	3001      	adds	r0, #1
d0059a74:	d0e6      	beq.n	d0059a44 <_printf_common+0xa4>
d0059a76:	3601      	adds	r6, #1
d0059a78:	e7d9      	b.n	d0059a2e <_printf_common+0x8e>
	...

d0059a7c <_printf_i>:
d0059a7c:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0059a80:	460c      	mov	r4, r1
d0059a82:	4691      	mov	r9, r2
d0059a84:	7e27      	ldrb	r7, [r4, #24]
d0059a86:	990c      	ldr	r1, [sp, #48]	; 0x30
d0059a88:	2f78      	cmp	r7, #120	; 0x78
d0059a8a:	4680      	mov	r8, r0
d0059a8c:	469a      	mov	sl, r3
d0059a8e:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0059a92:	d807      	bhi.n	d0059aa4 <_printf_i+0x28>
d0059a94:	2f62      	cmp	r7, #98	; 0x62
d0059a96:	d80a      	bhi.n	d0059aae <_printf_i+0x32>
d0059a98:	2f00      	cmp	r7, #0
d0059a9a:	f000 80d8 	beq.w	d0059c4e <_printf_i+0x1d2>
d0059a9e:	2f58      	cmp	r7, #88	; 0x58
d0059aa0:	f000 80a3 	beq.w	d0059bea <_printf_i+0x16e>
d0059aa4:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0059aa8:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d0059aac:	e03a      	b.n	d0059b24 <_printf_i+0xa8>
d0059aae:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d0059ab2:	2b15      	cmp	r3, #21
d0059ab4:	d8f6      	bhi.n	d0059aa4 <_printf_i+0x28>
d0059ab6:	a001      	add	r0, pc, #4	; (adr r0, d0059abc <_printf_i+0x40>)
d0059ab8:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d0059abc:	d0059b15 	.word	0xd0059b15
d0059ac0:	d0059b29 	.word	0xd0059b29
d0059ac4:	d0059aa5 	.word	0xd0059aa5
d0059ac8:	d0059aa5 	.word	0xd0059aa5
d0059acc:	d0059aa5 	.word	0xd0059aa5
d0059ad0:	d0059aa5 	.word	0xd0059aa5
d0059ad4:	d0059b29 	.word	0xd0059b29
d0059ad8:	d0059aa5 	.word	0xd0059aa5
d0059adc:	d0059aa5 	.word	0xd0059aa5
d0059ae0:	d0059aa5 	.word	0xd0059aa5
d0059ae4:	d0059aa5 	.word	0xd0059aa5
d0059ae8:	d0059c35 	.word	0xd0059c35
d0059aec:	d0059b59 	.word	0xd0059b59
d0059af0:	d0059c17 	.word	0xd0059c17
d0059af4:	d0059aa5 	.word	0xd0059aa5
d0059af8:	d0059aa5 	.word	0xd0059aa5
d0059afc:	d0059c57 	.word	0xd0059c57
d0059b00:	d0059aa5 	.word	0xd0059aa5
d0059b04:	d0059b59 	.word	0xd0059b59
d0059b08:	d0059aa5 	.word	0xd0059aa5
d0059b0c:	d0059aa5 	.word	0xd0059aa5
d0059b10:	d0059c1f 	.word	0xd0059c1f
d0059b14:	680b      	ldr	r3, [r1, #0]
d0059b16:	1d1a      	adds	r2, r3, #4
d0059b18:	681b      	ldr	r3, [r3, #0]
d0059b1a:	600a      	str	r2, [r1, #0]
d0059b1c:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0059b20:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d0059b24:	2301      	movs	r3, #1
d0059b26:	e0a3      	b.n	d0059c70 <_printf_i+0x1f4>
d0059b28:	6825      	ldr	r5, [r4, #0]
d0059b2a:	6808      	ldr	r0, [r1, #0]
d0059b2c:	062e      	lsls	r6, r5, #24
d0059b2e:	f100 0304 	add.w	r3, r0, #4
d0059b32:	d50a      	bpl.n	d0059b4a <_printf_i+0xce>
d0059b34:	6805      	ldr	r5, [r0, #0]
d0059b36:	600b      	str	r3, [r1, #0]
d0059b38:	2d00      	cmp	r5, #0
d0059b3a:	da03      	bge.n	d0059b44 <_printf_i+0xc8>
d0059b3c:	232d      	movs	r3, #45	; 0x2d
d0059b3e:	426d      	negs	r5, r5
d0059b40:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0059b44:	485e      	ldr	r0, [pc, #376]	; (d0059cc0 <_printf_i+0x244>)
d0059b46:	230a      	movs	r3, #10
d0059b48:	e019      	b.n	d0059b7e <_printf_i+0x102>
d0059b4a:	f015 0f40 	tst.w	r5, #64	; 0x40
d0059b4e:	6805      	ldr	r5, [r0, #0]
d0059b50:	600b      	str	r3, [r1, #0]
d0059b52:	bf18      	it	ne
d0059b54:	b22d      	sxthne	r5, r5
d0059b56:	e7ef      	b.n	d0059b38 <_printf_i+0xbc>
d0059b58:	680b      	ldr	r3, [r1, #0]
d0059b5a:	6825      	ldr	r5, [r4, #0]
d0059b5c:	1d18      	adds	r0, r3, #4
d0059b5e:	6008      	str	r0, [r1, #0]
d0059b60:	0628      	lsls	r0, r5, #24
d0059b62:	d501      	bpl.n	d0059b68 <_printf_i+0xec>
d0059b64:	681d      	ldr	r5, [r3, #0]
d0059b66:	e002      	b.n	d0059b6e <_printf_i+0xf2>
d0059b68:	0669      	lsls	r1, r5, #25
d0059b6a:	d5fb      	bpl.n	d0059b64 <_printf_i+0xe8>
d0059b6c:	881d      	ldrh	r5, [r3, #0]
d0059b6e:	4854      	ldr	r0, [pc, #336]	; (d0059cc0 <_printf_i+0x244>)
d0059b70:	2f6f      	cmp	r7, #111	; 0x6f
d0059b72:	bf0c      	ite	eq
d0059b74:	2308      	moveq	r3, #8
d0059b76:	230a      	movne	r3, #10
d0059b78:	2100      	movs	r1, #0
d0059b7a:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d0059b7e:	6866      	ldr	r6, [r4, #4]
d0059b80:	60a6      	str	r6, [r4, #8]
d0059b82:	2e00      	cmp	r6, #0
d0059b84:	bfa2      	ittt	ge
d0059b86:	6821      	ldrge	r1, [r4, #0]
d0059b88:	f021 0104 	bicge.w	r1, r1, #4
d0059b8c:	6021      	strge	r1, [r4, #0]
d0059b8e:	b90d      	cbnz	r5, d0059b94 <_printf_i+0x118>
d0059b90:	2e00      	cmp	r6, #0
d0059b92:	d04d      	beq.n	d0059c30 <_printf_i+0x1b4>
d0059b94:	4616      	mov	r6, r2
d0059b96:	fbb5 f1f3 	udiv	r1, r5, r3
d0059b9a:	fb03 5711 	mls	r7, r3, r1, r5
d0059b9e:	5dc7      	ldrb	r7, [r0, r7]
d0059ba0:	f806 7d01 	strb.w	r7, [r6, #-1]!
d0059ba4:	462f      	mov	r7, r5
d0059ba6:	42bb      	cmp	r3, r7
d0059ba8:	460d      	mov	r5, r1
d0059baa:	d9f4      	bls.n	d0059b96 <_printf_i+0x11a>
d0059bac:	2b08      	cmp	r3, #8
d0059bae:	d10b      	bne.n	d0059bc8 <_printf_i+0x14c>
d0059bb0:	6823      	ldr	r3, [r4, #0]
d0059bb2:	07df      	lsls	r7, r3, #31
d0059bb4:	d508      	bpl.n	d0059bc8 <_printf_i+0x14c>
d0059bb6:	6923      	ldr	r3, [r4, #16]
d0059bb8:	6861      	ldr	r1, [r4, #4]
d0059bba:	4299      	cmp	r1, r3
d0059bbc:	bfde      	ittt	le
d0059bbe:	2330      	movle	r3, #48	; 0x30
d0059bc0:	f806 3c01 	strble.w	r3, [r6, #-1]
d0059bc4:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d0059bc8:	1b92      	subs	r2, r2, r6
d0059bca:	6122      	str	r2, [r4, #16]
d0059bcc:	f8cd a000 	str.w	sl, [sp]
d0059bd0:	464b      	mov	r3, r9
d0059bd2:	aa03      	add	r2, sp, #12
d0059bd4:	4621      	mov	r1, r4
d0059bd6:	4640      	mov	r0, r8
d0059bd8:	f7ff fee2 	bl	d00599a0 <_printf_common>
d0059bdc:	3001      	adds	r0, #1
d0059bde:	d14c      	bne.n	d0059c7a <_printf_i+0x1fe>
d0059be0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0059be4:	b004      	add	sp, #16
d0059be6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0059bea:	4835      	ldr	r0, [pc, #212]	; (d0059cc0 <_printf_i+0x244>)
d0059bec:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d0059bf0:	6823      	ldr	r3, [r4, #0]
d0059bf2:	680e      	ldr	r6, [r1, #0]
d0059bf4:	061f      	lsls	r7, r3, #24
d0059bf6:	f856 5b04 	ldr.w	r5, [r6], #4
d0059bfa:	600e      	str	r6, [r1, #0]
d0059bfc:	d514      	bpl.n	d0059c28 <_printf_i+0x1ac>
d0059bfe:	07d9      	lsls	r1, r3, #31
d0059c00:	bf44      	itt	mi
d0059c02:	f043 0320 	orrmi.w	r3, r3, #32
d0059c06:	6023      	strmi	r3, [r4, #0]
d0059c08:	b91d      	cbnz	r5, d0059c12 <_printf_i+0x196>
d0059c0a:	6823      	ldr	r3, [r4, #0]
d0059c0c:	f023 0320 	bic.w	r3, r3, #32
d0059c10:	6023      	str	r3, [r4, #0]
d0059c12:	2310      	movs	r3, #16
d0059c14:	e7b0      	b.n	d0059b78 <_printf_i+0xfc>
d0059c16:	6823      	ldr	r3, [r4, #0]
d0059c18:	f043 0320 	orr.w	r3, r3, #32
d0059c1c:	6023      	str	r3, [r4, #0]
d0059c1e:	2378      	movs	r3, #120	; 0x78
d0059c20:	4828      	ldr	r0, [pc, #160]	; (d0059cc4 <_printf_i+0x248>)
d0059c22:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d0059c26:	e7e3      	b.n	d0059bf0 <_printf_i+0x174>
d0059c28:	065e      	lsls	r6, r3, #25
d0059c2a:	bf48      	it	mi
d0059c2c:	b2ad      	uxthmi	r5, r5
d0059c2e:	e7e6      	b.n	d0059bfe <_printf_i+0x182>
d0059c30:	4616      	mov	r6, r2
d0059c32:	e7bb      	b.n	d0059bac <_printf_i+0x130>
d0059c34:	680b      	ldr	r3, [r1, #0]
d0059c36:	6826      	ldr	r6, [r4, #0]
d0059c38:	6960      	ldr	r0, [r4, #20]
d0059c3a:	1d1d      	adds	r5, r3, #4
d0059c3c:	600d      	str	r5, [r1, #0]
d0059c3e:	0635      	lsls	r5, r6, #24
d0059c40:	681b      	ldr	r3, [r3, #0]
d0059c42:	d501      	bpl.n	d0059c48 <_printf_i+0x1cc>
d0059c44:	6018      	str	r0, [r3, #0]
d0059c46:	e002      	b.n	d0059c4e <_printf_i+0x1d2>
d0059c48:	0671      	lsls	r1, r6, #25
d0059c4a:	d5fb      	bpl.n	d0059c44 <_printf_i+0x1c8>
d0059c4c:	8018      	strh	r0, [r3, #0]
d0059c4e:	2300      	movs	r3, #0
d0059c50:	6123      	str	r3, [r4, #16]
d0059c52:	4616      	mov	r6, r2
d0059c54:	e7ba      	b.n	d0059bcc <_printf_i+0x150>
d0059c56:	680b      	ldr	r3, [r1, #0]
d0059c58:	1d1a      	adds	r2, r3, #4
d0059c5a:	600a      	str	r2, [r1, #0]
d0059c5c:	681e      	ldr	r6, [r3, #0]
d0059c5e:	6862      	ldr	r2, [r4, #4]
d0059c60:	2100      	movs	r1, #0
d0059c62:	4630      	mov	r0, r6
d0059c64:	f000 f854 	bl	d0059d10 <memchr>
d0059c68:	b108      	cbz	r0, d0059c6e <_printf_i+0x1f2>
d0059c6a:	1b80      	subs	r0, r0, r6
d0059c6c:	6060      	str	r0, [r4, #4]
d0059c6e:	6863      	ldr	r3, [r4, #4]
d0059c70:	6123      	str	r3, [r4, #16]
d0059c72:	2300      	movs	r3, #0
d0059c74:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0059c78:	e7a8      	b.n	d0059bcc <_printf_i+0x150>
d0059c7a:	6923      	ldr	r3, [r4, #16]
d0059c7c:	4632      	mov	r2, r6
d0059c7e:	4649      	mov	r1, r9
d0059c80:	4640      	mov	r0, r8
d0059c82:	47d0      	blx	sl
d0059c84:	3001      	adds	r0, #1
d0059c86:	d0ab      	beq.n	d0059be0 <_printf_i+0x164>
d0059c88:	6823      	ldr	r3, [r4, #0]
d0059c8a:	079b      	lsls	r3, r3, #30
d0059c8c:	d413      	bmi.n	d0059cb6 <_printf_i+0x23a>
d0059c8e:	68e0      	ldr	r0, [r4, #12]
d0059c90:	9b03      	ldr	r3, [sp, #12]
d0059c92:	4298      	cmp	r0, r3
d0059c94:	bfb8      	it	lt
d0059c96:	4618      	movlt	r0, r3
d0059c98:	e7a4      	b.n	d0059be4 <_printf_i+0x168>
d0059c9a:	2301      	movs	r3, #1
d0059c9c:	4632      	mov	r2, r6
d0059c9e:	4649      	mov	r1, r9
d0059ca0:	4640      	mov	r0, r8
d0059ca2:	47d0      	blx	sl
d0059ca4:	3001      	adds	r0, #1
d0059ca6:	d09b      	beq.n	d0059be0 <_printf_i+0x164>
d0059ca8:	3501      	adds	r5, #1
d0059caa:	68e3      	ldr	r3, [r4, #12]
d0059cac:	9903      	ldr	r1, [sp, #12]
d0059cae:	1a5b      	subs	r3, r3, r1
d0059cb0:	42ab      	cmp	r3, r5
d0059cb2:	dcf2      	bgt.n	d0059c9a <_printf_i+0x21e>
d0059cb4:	e7eb      	b.n	d0059c8e <_printf_i+0x212>
d0059cb6:	2500      	movs	r5, #0
d0059cb8:	f104 0619 	add.w	r6, r4, #25
d0059cbc:	e7f5      	b.n	d0059caa <_printf_i+0x22e>
d0059cbe:	bf00      	nop
d0059cc0:	d005adfd 	.word	0xd005adfd
d0059cc4:	d005ae0e 	.word	0xd005ae0e

d0059cc8 <_read_r>:
d0059cc8:	b538      	push	{r3, r4, r5, lr}
d0059cca:	4d07      	ldr	r5, [pc, #28]	; (d0059ce8 <_read_r+0x20>)
d0059ccc:	4604      	mov	r4, r0
d0059cce:	4608      	mov	r0, r1
d0059cd0:	4611      	mov	r1, r2
d0059cd2:	2200      	movs	r2, #0
d0059cd4:	602a      	str	r2, [r5, #0]
d0059cd6:	461a      	mov	r2, r3
d0059cd8:	f7f6 f9ec 	bl	d00500b4 <_read>
d0059cdc:	1c43      	adds	r3, r0, #1
d0059cde:	d102      	bne.n	d0059ce6 <_read_r+0x1e>
d0059ce0:	682b      	ldr	r3, [r5, #0]
d0059ce2:	b103      	cbz	r3, d0059ce6 <_read_r+0x1e>
d0059ce4:	6023      	str	r3, [r4, #0]
d0059ce6:	bd38      	pop	{r3, r4, r5, pc}
d0059ce8:	d00fbacc 	.word	0xd00fbacc

d0059cec <_fstat_r>:
d0059cec:	b538      	push	{r3, r4, r5, lr}
d0059cee:	4d07      	ldr	r5, [pc, #28]	; (d0059d0c <_fstat_r+0x20>)
d0059cf0:	2300      	movs	r3, #0
d0059cf2:	4604      	mov	r4, r0
d0059cf4:	4608      	mov	r0, r1
d0059cf6:	4611      	mov	r1, r2
d0059cf8:	602b      	str	r3, [r5, #0]
d0059cfa:	f7f6 f9e9 	bl	d00500d0 <_fstat>
d0059cfe:	1c43      	adds	r3, r0, #1
d0059d00:	d102      	bne.n	d0059d08 <_fstat_r+0x1c>
d0059d02:	682b      	ldr	r3, [r5, #0]
d0059d04:	b103      	cbz	r3, d0059d08 <_fstat_r+0x1c>
d0059d06:	6023      	str	r3, [r4, #0]
d0059d08:	bd38      	pop	{r3, r4, r5, pc}
d0059d0a:	bf00      	nop
d0059d0c:	d00fbacc 	.word	0xd00fbacc

d0059d10 <memchr>:
d0059d10:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0059d14:	2a10      	cmp	r2, #16
d0059d16:	db2b      	blt.n	d0059d70 <memchr+0x60>
d0059d18:	f010 0f07 	tst.w	r0, #7
d0059d1c:	d008      	beq.n	d0059d30 <memchr+0x20>
d0059d1e:	f810 3b01 	ldrb.w	r3, [r0], #1
d0059d22:	3a01      	subs	r2, #1
d0059d24:	428b      	cmp	r3, r1
d0059d26:	d02d      	beq.n	d0059d84 <memchr+0x74>
d0059d28:	f010 0f07 	tst.w	r0, #7
d0059d2c:	b342      	cbz	r2, d0059d80 <memchr+0x70>
d0059d2e:	d1f6      	bne.n	d0059d1e <memchr+0xe>
d0059d30:	b4f0      	push	{r4, r5, r6, r7}
d0059d32:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d0059d36:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d0059d3a:	f022 0407 	bic.w	r4, r2, #7
d0059d3e:	f07f 0700 	mvns.w	r7, #0
d0059d42:	2300      	movs	r3, #0
d0059d44:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d0059d48:	3c08      	subs	r4, #8
d0059d4a:	ea85 0501 	eor.w	r5, r5, r1
d0059d4e:	ea86 0601 	eor.w	r6, r6, r1
d0059d52:	fa85 f547 	uadd8	r5, r5, r7
d0059d56:	faa3 f587 	sel	r5, r3, r7
d0059d5a:	fa86 f647 	uadd8	r6, r6, r7
d0059d5e:	faa5 f687 	sel	r6, r5, r7
d0059d62:	b98e      	cbnz	r6, d0059d88 <memchr+0x78>
d0059d64:	d1ee      	bne.n	d0059d44 <memchr+0x34>
d0059d66:	bcf0      	pop	{r4, r5, r6, r7}
d0059d68:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d0059d6c:	f002 0207 	and.w	r2, r2, #7
d0059d70:	b132      	cbz	r2, d0059d80 <memchr+0x70>
d0059d72:	f810 3b01 	ldrb.w	r3, [r0], #1
d0059d76:	3a01      	subs	r2, #1
d0059d78:	ea83 0301 	eor.w	r3, r3, r1
d0059d7c:	b113      	cbz	r3, d0059d84 <memchr+0x74>
d0059d7e:	d1f8      	bne.n	d0059d72 <memchr+0x62>
d0059d80:	2000      	movs	r0, #0
d0059d82:	4770      	bx	lr
d0059d84:	3801      	subs	r0, #1
d0059d86:	4770      	bx	lr
d0059d88:	2d00      	cmp	r5, #0
d0059d8a:	bf06      	itte	eq
d0059d8c:	4635      	moveq	r5, r6
d0059d8e:	3803      	subeq	r0, #3
d0059d90:	3807      	subne	r0, #7
d0059d92:	f015 0f01 	tst.w	r5, #1
d0059d96:	d107      	bne.n	d0059da8 <memchr+0x98>
d0059d98:	3001      	adds	r0, #1
d0059d9a:	f415 7f80 	tst.w	r5, #256	; 0x100
d0059d9e:	bf02      	ittt	eq
d0059da0:	3001      	addeq	r0, #1
d0059da2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0059da6:	3001      	addeq	r0, #1
d0059da8:	bcf0      	pop	{r4, r5, r6, r7}
d0059daa:	3801      	subs	r0, #1
d0059dac:	4770      	bx	lr
d0059dae:	bf00      	nop

d0059db0 <memmove>:
d0059db0:	4288      	cmp	r0, r1
d0059db2:	b510      	push	{r4, lr}
d0059db4:	eb01 0402 	add.w	r4, r1, r2
d0059db8:	d902      	bls.n	d0059dc0 <memmove+0x10>
d0059dba:	4284      	cmp	r4, r0
d0059dbc:	4623      	mov	r3, r4
d0059dbe:	d807      	bhi.n	d0059dd0 <memmove+0x20>
d0059dc0:	1e43      	subs	r3, r0, #1
d0059dc2:	42a1      	cmp	r1, r4
d0059dc4:	d008      	beq.n	d0059dd8 <memmove+0x28>
d0059dc6:	f811 2b01 	ldrb.w	r2, [r1], #1
d0059dca:	f803 2f01 	strb.w	r2, [r3, #1]!
d0059dce:	e7f8      	b.n	d0059dc2 <memmove+0x12>
d0059dd0:	4402      	add	r2, r0
d0059dd2:	4601      	mov	r1, r0
d0059dd4:	428a      	cmp	r2, r1
d0059dd6:	d100      	bne.n	d0059dda <memmove+0x2a>
d0059dd8:	bd10      	pop	{r4, pc}
d0059dda:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d0059dde:	f802 4d01 	strb.w	r4, [r2, #-1]!
d0059de2:	e7f7      	b.n	d0059dd4 <memmove+0x24>

d0059de4 <_malloc_usable_size_r>:
d0059de4:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0059de8:	1f18      	subs	r0, r3, #4
d0059dea:	2b00      	cmp	r3, #0
d0059dec:	bfbc      	itt	lt
d0059dee:	580b      	ldrlt	r3, [r1, r0]
d0059df0:	18c0      	addlt	r0, r0, r3
d0059df2:	4770      	bx	lr

d0059df4 <sinf_poly>:
d0059df4:	07cb      	lsls	r3, r1, #31
d0059df6:	d412      	bmi.n	d0059e1e <sinf_poly+0x2a>
d0059df8:	ee21 6b00 	vmul.f64	d6, d1, d0
d0059dfc:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d0059e00:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d0059e04:	eea5 7b01 	vfma.f64	d7, d5, d1
d0059e08:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d0059e0c:	ee21 1b06 	vmul.f64	d1, d1, d6
d0059e10:	eea5 0b06 	vfma.f64	d0, d5, d6
d0059e14:	eea7 0b01 	vfma.f64	d0, d7, d1
d0059e18:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0059e1c:	4770      	bx	lr
d0059e1e:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d0059e22:	ee21 6b01 	vmul.f64	d6, d1, d1
d0059e26:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d0059e2a:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d0059e2e:	eea1 7b05 	vfma.f64	d7, d1, d5
d0059e32:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d0059e36:	eea1 0b05 	vfma.f64	d0, d1, d5
d0059e3a:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d0059e3e:	ee21 1b06 	vmul.f64	d1, d1, d6
d0059e42:	eea6 0b05 	vfma.f64	d0, d6, d5
d0059e46:	e7e5      	b.n	d0059e14 <sinf_poly+0x20>

d0059e48 <cosf>:
d0059e48:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0059e4a:	ee10 4a10 	vmov	r4, s0
d0059e4e:	f3c4 530a 	ubfx	r3, r4, #20, #11
d0059e52:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d0059e56:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d0059e5a:	d20c      	bcs.n	d0059e76 <cosf+0x2e>
d0059e5c:	ee26 1b06 	vmul.f64	d1, d6, d6
d0059e60:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d0059e64:	d378      	bcc.n	d0059f58 <cosf+0x110>
d0059e66:	eeb0 0b46 	vmov.f64	d0, d6
d0059e6a:	483f      	ldr	r0, [pc, #252]	; (d0059f68 <cosf+0x120>)
d0059e6c:	2101      	movs	r1, #1
d0059e6e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0059e72:	f7ff bfbf 	b.w	d0059df4 <sinf_poly>
d0059e76:	f240 422e 	movw	r2, #1070	; 0x42e
d0059e7a:	4293      	cmp	r3, r2
d0059e7c:	d826      	bhi.n	d0059ecc <cosf+0x84>
d0059e7e:	4b3a      	ldr	r3, [pc, #232]	; (d0059f68 <cosf+0x120>)
d0059e80:	ed93 7b08 	vldr	d7, [r3, #32]
d0059e84:	ee26 7b07 	vmul.f64	d7, d6, d7
d0059e88:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d0059e8c:	f103 0070 	add.w	r0, r3, #112	; 0x70
d0059e90:	ee17 1a90 	vmov	r1, s15
d0059e94:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d0059e98:	1609      	asrs	r1, r1, #24
d0059e9a:	ee07 1a90 	vmov	s15, r1
d0059e9e:	f001 0203 	and.w	r2, r1, #3
d0059ea2:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d0059ea6:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d0059eaa:	ed92 0b00 	vldr	d0, [r2]
d0059eae:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d0059eb2:	f011 0f02 	tst.w	r1, #2
d0059eb6:	eea5 6b47 	vfms.f64	d6, d5, d7
d0059eba:	f081 0101 	eor.w	r1, r1, #1
d0059ebe:	bf08      	it	eq
d0059ec0:	4618      	moveq	r0, r3
d0059ec2:	ee26 1b06 	vmul.f64	d1, d6, d6
d0059ec6:	ee20 0b06 	vmul.f64	d0, d0, d6
d0059eca:	e7d0      	b.n	d0059e6e <cosf+0x26>
d0059ecc:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0059ed0:	d23e      	bcs.n	d0059f50 <cosf+0x108>
d0059ed2:	4b26      	ldr	r3, [pc, #152]	; (d0059f6c <cosf+0x124>)
d0059ed4:	f3c4 6283 	ubfx	r2, r4, #26, #4
d0059ed8:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d0059edc:	f3c4 0116 	ubfx	r1, r4, #0, #23
d0059ee0:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d0059ee4:	6a06      	ldr	r6, [r0, #32]
d0059ee6:	6900      	ldr	r0, [r0, #16]
d0059ee8:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d0059eec:	40a9      	lsls	r1, r5
d0059eee:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d0059ef2:	fba1 6706 	umull	r6, r7, r1, r6
d0059ef6:	fb05 f301 	mul.w	r3, r5, r1
d0059efa:	463a      	mov	r2, r7
d0059efc:	fbe0 2301 	umlal	r2, r3, r0, r1
d0059f00:	1c11      	adds	r1, r2, #0
d0059f02:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d0059f06:	2000      	movs	r0, #0
d0059f08:	1a10      	subs	r0, r2, r0
d0059f0a:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d0059f0e:	eb63 0101 	sbc.w	r1, r3, r1
d0059f12:	f000 fd27 	bl	d005a964 <__aeabi_l2d>
d0059f16:	0fb5      	lsrs	r5, r6, #30
d0059f18:	4b13      	ldr	r3, [pc, #76]	; (d0059f68 <cosf+0x120>)
d0059f1a:	eb05 74d4 	add.w	r4, r5, r4, lsr #31
d0059f1e:	ed9f 0b10 	vldr	d0, [pc, #64]	; d0059f60 <cosf+0x118>
d0059f22:	ec41 0b17 	vmov	d7, r0, r1
d0059f26:	f004 0203 	and.w	r2, r4, #3
d0059f2a:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d0059f2e:	ee27 0b00 	vmul.f64	d0, d7, d0
d0059f32:	ed92 7b00 	vldr	d7, [r2]
d0059f36:	ee20 1b00 	vmul.f64	d1, d0, d0
d0059f3a:	f014 0f02 	tst.w	r4, #2
d0059f3e:	f103 0070 	add.w	r0, r3, #112	; 0x70
d0059f42:	f085 0101 	eor.w	r1, r5, #1
d0059f46:	bf08      	it	eq
d0059f48:	4618      	moveq	r0, r3
d0059f4a:	ee27 0b00 	vmul.f64	d0, d7, d0
d0059f4e:	e78e      	b.n	d0059e6e <cosf+0x26>
d0059f50:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0059f54:	f000 b844 	b.w	d0059fe0 <__math_invalidf>
d0059f58:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0059f5c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0059f5e:	bf00      	nop
d0059f60:	54442d18 	.word	0x54442d18
d0059f64:	3c1921fb 	.word	0x3c1921fb
d0059f68:	d005b0e8 	.word	0xd005b0e8
d0059f6c:	d005b088 	.word	0xd005b088

d0059f70 <with_errnof>:
d0059f70:	b513      	push	{r0, r1, r4, lr}
d0059f72:	4604      	mov	r4, r0
d0059f74:	ed8d 0a01 	vstr	s0, [sp, #4]
d0059f78:	f7fe fef8 	bl	d0058d6c <__errno>
d0059f7c:	ed9d 0a01 	vldr	s0, [sp, #4]
d0059f80:	6004      	str	r4, [r0, #0]
d0059f82:	b002      	add	sp, #8
d0059f84:	bd10      	pop	{r4, pc}

d0059f86 <xflowf>:
d0059f86:	b130      	cbz	r0, d0059f96 <xflowf+0x10>
d0059f88:	eef1 7a40 	vneg.f32	s15, s0
d0059f8c:	ee27 0a80 	vmul.f32	s0, s15, s0
d0059f90:	2022      	movs	r0, #34	; 0x22
d0059f92:	f7ff bfed 	b.w	d0059f70 <with_errnof>
d0059f96:	eef0 7a40 	vmov.f32	s15, s0
d0059f9a:	e7f7      	b.n	d0059f8c <xflowf+0x6>

d0059f9c <__math_uflowf>:
d0059f9c:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0059fa4 <__math_uflowf+0x8>
d0059fa0:	f7ff bff1 	b.w	d0059f86 <xflowf>
d0059fa4:	10000000 	.word	0x10000000

d0059fa8 <__math_may_uflowf>:
d0059fa8:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0059fb0 <__math_may_uflowf+0x8>
d0059fac:	f7ff bfeb 	b.w	d0059f86 <xflowf>
d0059fb0:	1a200000 	.word	0x1a200000

d0059fb4 <__math_oflowf>:
d0059fb4:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0059fbc <__math_oflowf+0x8>
d0059fb8:	f7ff bfe5 	b.w	d0059f86 <xflowf>
d0059fbc:	70000000 	.word	0x70000000

d0059fc0 <__math_divzerof>:
d0059fc0:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0059fc4:	eeff 7a00 	vmov.f32	s15, #240	; 0xbf800000 -1.0
d0059fc8:	2800      	cmp	r0, #0
d0059fca:	fe40 7a27 	vseleq.f32	s15, s0, s15
d0059fce:	ed9f 0a03 	vldr	s0, [pc, #12]	; d0059fdc <__math_divzerof+0x1c>
d0059fd2:	2022      	movs	r0, #34	; 0x22
d0059fd4:	ee87 0a80 	vdiv.f32	s0, s15, s0
d0059fd8:	f7ff bfca 	b.w	d0059f70 <with_errnof>
d0059fdc:	00000000 	.word	0x00000000

d0059fe0 <__math_invalidf>:
d0059fe0:	eef0 7a40 	vmov.f32	s15, s0
d0059fe4:	ee30 7a40 	vsub.f32	s14, s0, s0
d0059fe8:	eef4 7a67 	vcmp.f32	s15, s15
d0059fec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059ff0:	ee87 0a07 	vdiv.f32	s0, s14, s14
d0059ff4:	d602      	bvs.n	d0059ffc <__math_invalidf+0x1c>
d0059ff6:	2021      	movs	r0, #33	; 0x21
d0059ff8:	f7ff bfba 	b.w	d0059f70 <with_errnof>
d0059ffc:	4770      	bx	lr
	...

d005a000 <expf>:
d005a000:	ee10 2a10 	vmov	r2, s0
d005a004:	b470      	push	{r4, r5, r6}
d005a006:	f3c2 530a 	ubfx	r3, r2, #20, #11
d005a00a:	f240 442a 	movw	r4, #1066	; 0x42a
d005a00e:	42a3      	cmp	r3, r4
d005a010:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d005a014:	d92a      	bls.n	d005a06c <expf+0x6c>
d005a016:	f512 0f00 	cmn.w	r2, #8388608	; 0x800000
d005a01a:	d059      	beq.n	d005a0d0 <expf+0xd0>
d005a01c:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d005a020:	d303      	bcc.n	d005a02a <expf+0x2a>
d005a022:	ee30 0a00 	vadd.f32	s0, s0, s0
d005a026:	bc70      	pop	{r4, r5, r6}
d005a028:	4770      	bx	lr
d005a02a:	eddf 7a2b 	vldr	s15, [pc, #172]	; d005a0d8 <expf+0xd8>
d005a02e:	eeb4 0ae7 	vcmpe.f32	s0, s15
d005a032:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005a036:	dd03      	ble.n	d005a040 <expf+0x40>
d005a038:	bc70      	pop	{r4, r5, r6}
d005a03a:	2000      	movs	r0, #0
d005a03c:	f7ff bfba 	b.w	d0059fb4 <__math_oflowf>
d005a040:	eddf 7a26 	vldr	s15, [pc, #152]	; d005a0dc <expf+0xdc>
d005a044:	eeb4 0ae7 	vcmpe.f32	s0, s15
d005a048:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005a04c:	d503      	bpl.n	d005a056 <expf+0x56>
d005a04e:	bc70      	pop	{r4, r5, r6}
d005a050:	2000      	movs	r0, #0
d005a052:	f7ff bfa3 	b.w	d0059f9c <__math_uflowf>
d005a056:	eddf 7a22 	vldr	s15, [pc, #136]	; d005a0e0 <expf+0xe0>
d005a05a:	eeb4 0ae7 	vcmpe.f32	s0, s15
d005a05e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005a062:	d503      	bpl.n	d005a06c <expf+0x6c>
d005a064:	bc70      	pop	{r4, r5, r6}
d005a066:	2000      	movs	r0, #0
d005a068:	f7ff bf9e 	b.w	d0059fa8 <__math_may_uflowf>
d005a06c:	4b1d      	ldr	r3, [pc, #116]	; (d005a0e4 <expf+0xe4>)
d005a06e:	eeb7 0b00 	vmov.f64	d0, #112	; 0x3f800000  1.0
d005a072:	ed93 5b4a 	vldr	d5, [r3, #296]	; 0x128
d005a076:	ed93 4b48 	vldr	d4, [r3, #288]	; 0x120
d005a07a:	eeb0 7b44 	vmov.f64	d7, d4
d005a07e:	eea5 7b06 	vfma.f64	d7, d5, d6
d005a082:	ee17 5a10 	vmov	r5, s14
d005a086:	ee37 7b44 	vsub.f64	d7, d7, d4
d005a08a:	f005 021f 	and.w	r2, r5, #31
d005a08e:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d005a092:	e9d2 4600 	ldrd	r4, r6, [r2]
d005a096:	ee95 7b06 	vfnms.f64	d7, d5, d6
d005a09a:	ed93 4b50 	vldr	d4, [r3, #320]	; 0x140
d005a09e:	ed93 5b4c 	vldr	d5, [r3, #304]	; 0x130
d005a0a2:	eea4 0b07 	vfma.f64	d0, d4, d7
d005a0a6:	ed93 6b4e 	vldr	d6, [r3, #312]	; 0x138
d005a0aa:	2300      	movs	r3, #0
d005a0ac:	1918      	adds	r0, r3, r4
d005a0ae:	ea4f 32c5 	mov.w	r2, r5, lsl #15
d005a0b2:	eb42 0106 	adc.w	r1, r2, r6
d005a0b6:	eea5 6b07 	vfma.f64	d6, d5, d7
d005a0ba:	ee27 5b07 	vmul.f64	d5, d7, d7
d005a0be:	ec41 0b17 	vmov	d7, r0, r1
d005a0c2:	eea6 0b05 	vfma.f64	d0, d6, d5
d005a0c6:	ee20 0b07 	vmul.f64	d0, d0, d7
d005a0ca:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d005a0ce:	e7aa      	b.n	d005a026 <expf+0x26>
d005a0d0:	ed9f 0a05 	vldr	s0, [pc, #20]	; d005a0e8 <expf+0xe8>
d005a0d4:	e7a7      	b.n	d005a026 <expf+0x26>
d005a0d6:	bf00      	nop
d005a0d8:	42b17217 	.word	0x42b17217
d005a0dc:	c2cff1b4 	.word	0xc2cff1b4
d005a0e0:	c2ce8ecf 	.word	0xc2ce8ecf
d005a0e4:	d005ae20 	.word	0xd005ae20
d005a0e8:	00000000 	.word	0x00000000

d005a0ec <logf>:
d005a0ec:	ee10 3a10 	vmov	r3, s0
d005a0f0:	f1b3 5f7e 	cmp.w	r3, #1065353216	; 0x3f800000
d005a0f4:	b410      	push	{r4}
d005a0f6:	d055      	beq.n	d005a1a4 <logf+0xb8>
d005a0f8:	f5a3 0200 	sub.w	r2, r3, #8388608	; 0x800000
d005a0fc:	f1b2 4ffe 	cmp.w	r2, #2130706432	; 0x7f000000
d005a100:	d31a      	bcc.n	d005a138 <logf+0x4c>
d005a102:	005a      	lsls	r2, r3, #1
d005a104:	d104      	bne.n	d005a110 <logf+0x24>
d005a106:	f85d 4b04 	ldr.w	r4, [sp], #4
d005a10a:	2001      	movs	r0, #1
d005a10c:	f7ff bf58 	b.w	d0059fc0 <__math_divzerof>
d005a110:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d005a114:	d043      	beq.n	d005a19e <logf+0xb2>
d005a116:	2b00      	cmp	r3, #0
d005a118:	db02      	blt.n	d005a120 <logf+0x34>
d005a11a:	f1b2 4f7f 	cmp.w	r2, #4278190080	; 0xff000000
d005a11e:	d303      	bcc.n	d005a128 <logf+0x3c>
d005a120:	f85d 4b04 	ldr.w	r4, [sp], #4
d005a124:	f7ff bf5c 	b.w	d0059fe0 <__math_invalidf>
d005a128:	eddf 7a20 	vldr	s15, [pc, #128]	; d005a1ac <logf+0xc0>
d005a12c:	ee20 0a27 	vmul.f32	s0, s0, s15
d005a130:	ee10 3a10 	vmov	r3, s0
d005a134:	f1a3 6338 	sub.w	r3, r3, #192937984	; 0xb800000
d005a138:	f103 4240 	add.w	r2, r3, #3221225472	; 0xc0000000
d005a13c:	491c      	ldr	r1, [pc, #112]	; (d005a1b0 <logf+0xc4>)
d005a13e:	eebf 0b00 	vmov.f64	d0, #240	; 0xbf800000 -1.0
d005a142:	f502 024d 	add.w	r2, r2, #13434880	; 0xcd0000
d005a146:	f3c2 40c3 	ubfx	r0, r2, #19, #4
d005a14a:	0dd4      	lsrs	r4, r2, #23
d005a14c:	eb01 1000 	add.w	r0, r1, r0, lsl #4
d005a150:	05e4      	lsls	r4, r4, #23
d005a152:	ed90 6b00 	vldr	d6, [r0]
d005a156:	1b1b      	subs	r3, r3, r4
d005a158:	ee07 3a90 	vmov	s15, r3
d005a15c:	ed91 5b40 	vldr	d5, [r1, #256]	; 0x100
d005a160:	eeb7 7ae7 	vcvt.f64.f32	d7, s15
d005a164:	15d2      	asrs	r2, r2, #23
d005a166:	eea6 0b07 	vfma.f64	d0, d6, d7
d005a16a:	ed90 6b02 	vldr	d6, [r0, #8]
d005a16e:	ee07 2a90 	vmov	s15, r2
d005a172:	ed91 4b44 	vldr	d4, [r1, #272]	; 0x110
d005a176:	eeb8 7be7 	vcvt.f64.s32	d7, s15
d005a17a:	eea7 6b05 	vfma.f64	d6, d7, d5
d005a17e:	ed91 7b46 	vldr	d7, [r1, #280]	; 0x118
d005a182:	ee20 5b00 	vmul.f64	d5, d0, d0
d005a186:	eea4 7b00 	vfma.f64	d7, d4, d0
d005a18a:	ed91 4b42 	vldr	d4, [r1, #264]	; 0x108
d005a18e:	ee30 0b06 	vadd.f64	d0, d0, d6
d005a192:	eea4 7b05 	vfma.f64	d7, d4, d5
d005a196:	eea5 0b07 	vfma.f64	d0, d5, d7
d005a19a:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d005a19e:	f85d 4b04 	ldr.w	r4, [sp], #4
d005a1a2:	4770      	bx	lr
d005a1a4:	ed9f 0a03 	vldr	s0, [pc, #12]	; d005a1b4 <logf+0xc8>
d005a1a8:	e7f9      	b.n	d005a19e <logf+0xb2>
d005a1aa:	bf00      	nop
d005a1ac:	4b000000 	.word	0x4b000000
d005a1b0:	d005af68 	.word	0xd005af68
d005a1b4:	00000000 	.word	0x00000000

d005a1b8 <sinf_poly>:
d005a1b8:	07cb      	lsls	r3, r1, #31
d005a1ba:	d412      	bmi.n	d005a1e2 <sinf_poly+0x2a>
d005a1bc:	ee21 6b00 	vmul.f64	d6, d1, d0
d005a1c0:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d005a1c4:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d005a1c8:	eea5 7b01 	vfma.f64	d7, d5, d1
d005a1cc:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d005a1d0:	ee21 1b06 	vmul.f64	d1, d1, d6
d005a1d4:	eea5 0b06 	vfma.f64	d0, d5, d6
d005a1d8:	eea7 0b01 	vfma.f64	d0, d7, d1
d005a1dc:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d005a1e0:	4770      	bx	lr
d005a1e2:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d005a1e6:	ee21 6b01 	vmul.f64	d6, d1, d1
d005a1ea:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d005a1ee:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d005a1f2:	eea1 7b05 	vfma.f64	d7, d1, d5
d005a1f6:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d005a1fa:	eea1 0b05 	vfma.f64	d0, d1, d5
d005a1fe:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d005a202:	ee21 1b06 	vmul.f64	d1, d1, d6
d005a206:	eea6 0b05 	vfma.f64	d0, d6, d5
d005a20a:	e7e5      	b.n	d005a1d8 <sinf_poly+0x20>
d005a20c:	0000      	movs	r0, r0
	...

d005a210 <sinf>:
d005a210:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
d005a212:	ee10 4a10 	vmov	r4, s0
d005a216:	f3c4 530a 	ubfx	r3, r4, #20, #11
d005a21a:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d005a21e:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d005a222:	eef0 7a40 	vmov.f32	s15, s0
d005a226:	ea4f 5214 	mov.w	r2, r4, lsr #20
d005a22a:	d218      	bcs.n	d005a25e <sinf+0x4e>
d005a22c:	ee26 1b06 	vmul.f64	d1, d6, d6
d005a230:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d005a234:	d20a      	bcs.n	d005a24c <sinf+0x3c>
d005a236:	f412 6fff 	tst.w	r2, #2040	; 0x7f8
d005a23a:	d103      	bne.n	d005a244 <sinf+0x34>
d005a23c:	eeb7 1bc1 	vcvt.f32.f64	s2, d1
d005a240:	ed8d 1a01 	vstr	s2, [sp, #4]
d005a244:	eeb0 0a67 	vmov.f32	s0, s15
d005a248:	b003      	add	sp, #12
d005a24a:	bdf0      	pop	{r4, r5, r6, r7, pc}
d005a24c:	483e      	ldr	r0, [pc, #248]	; (d005a348 <sinf+0x138>)
d005a24e:	eeb0 0b46 	vmov.f64	d0, d6
d005a252:	2100      	movs	r1, #0
d005a254:	b003      	add	sp, #12
d005a256:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d005a25a:	f7ff bfad 	b.w	d005a1b8 <sinf_poly>
d005a25e:	f240 422e 	movw	r2, #1070	; 0x42e
d005a262:	4293      	cmp	r3, r2
d005a264:	d824      	bhi.n	d005a2b0 <sinf+0xa0>
d005a266:	4b38      	ldr	r3, [pc, #224]	; (d005a348 <sinf+0x138>)
d005a268:	ed93 7b08 	vldr	d7, [r3, #32]
d005a26c:	ee26 7b07 	vmul.f64	d7, d6, d7
d005a270:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d005a274:	f103 0070 	add.w	r0, r3, #112	; 0x70
d005a278:	ee17 1a90 	vmov	r1, s15
d005a27c:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d005a280:	1609      	asrs	r1, r1, #24
d005a282:	ee07 1a90 	vmov	s15, r1
d005a286:	f001 0203 	and.w	r2, r1, #3
d005a28a:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d005a28e:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d005a292:	ed92 0b00 	vldr	d0, [r2]
d005a296:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d005a29a:	f011 0f02 	tst.w	r1, #2
d005a29e:	eea5 6b47 	vfms.f64	d6, d5, d7
d005a2a2:	bf08      	it	eq
d005a2a4:	4618      	moveq	r0, r3
d005a2a6:	ee26 1b06 	vmul.f64	d1, d6, d6
d005a2aa:	ee20 0b06 	vmul.f64	d0, d0, d6
d005a2ae:	e7d1      	b.n	d005a254 <sinf+0x44>
d005a2b0:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d005a2b4:	d23d      	bcs.n	d005a332 <sinf+0x122>
d005a2b6:	4b25      	ldr	r3, [pc, #148]	; (d005a34c <sinf+0x13c>)
d005a2b8:	f3c4 6283 	ubfx	r2, r4, #26, #4
d005a2bc:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d005a2c0:	f3c4 0116 	ubfx	r1, r4, #0, #23
d005a2c4:	6a06      	ldr	r6, [r0, #32]
d005a2c6:	6900      	ldr	r0, [r0, #16]
d005a2c8:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d005a2cc:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d005a2d0:	40a9      	lsls	r1, r5
d005a2d2:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d005a2d6:	fba1 6706 	umull	r6, r7, r1, r6
d005a2da:	fb05 f301 	mul.w	r3, r5, r1
d005a2de:	463a      	mov	r2, r7
d005a2e0:	fbe0 2301 	umlal	r2, r3, r0, r1
d005a2e4:	1c11      	adds	r1, r2, #0
d005a2e6:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d005a2ea:	2000      	movs	r0, #0
d005a2ec:	1a10      	subs	r0, r2, r0
d005a2ee:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d005a2f2:	eb63 0101 	sbc.w	r1, r3, r1
d005a2f6:	f000 fb35 	bl	d005a964 <__aeabi_l2d>
d005a2fa:	0fb5      	lsrs	r5, r6, #30
d005a2fc:	4a12      	ldr	r2, [pc, #72]	; (d005a348 <sinf+0x138>)
d005a2fe:	eb05 73d4 	add.w	r3, r5, r4, lsr #31
d005a302:	ed9f 0b0f 	vldr	d0, [pc, #60]	; d005a340 <sinf+0x130>
d005a306:	ec41 0b17 	vmov	d7, r0, r1
d005a30a:	f003 0103 	and.w	r1, r3, #3
d005a30e:	eb02 01c1 	add.w	r1, r2, r1, lsl #3
d005a312:	ee27 0b00 	vmul.f64	d0, d7, d0
d005a316:	ed91 7b00 	vldr	d7, [r1]
d005a31a:	ee20 1b00 	vmul.f64	d1, d0, d0
d005a31e:	f013 0f02 	tst.w	r3, #2
d005a322:	f102 0070 	add.w	r0, r2, #112	; 0x70
d005a326:	4629      	mov	r1, r5
d005a328:	bf08      	it	eq
d005a32a:	4610      	moveq	r0, r2
d005a32c:	ee27 0b00 	vmul.f64	d0, d7, d0
d005a330:	e790      	b.n	d005a254 <sinf+0x44>
d005a332:	b003      	add	sp, #12
d005a334:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d005a338:	f7ff be52 	b.w	d0059fe0 <__math_invalidf>
d005a33c:	f3af 8000 	nop.w
d005a340:	54442d18 	.word	0x54442d18
d005a344:	3c1921fb 	.word	0x3c1921fb
d005a348:	d005b0e8 	.word	0xd005b0e8
d005a34c:	d005b088 	.word	0xd005b088

d005a350 <atan2f>:
d005a350:	f000 b800 	b.w	d005a354 <__ieee754_atan2f>

d005a354 <__ieee754_atan2f>:
d005a354:	ee10 2a90 	vmov	r2, s1
d005a358:	f022 4100 	bic.w	r1, r2, #2147483648	; 0x80000000
d005a35c:	f1b1 4fff 	cmp.w	r1, #2139095040	; 0x7f800000
d005a360:	b510      	push	{r4, lr}
d005a362:	eef0 7a40 	vmov.f32	s15, s0
d005a366:	dc06      	bgt.n	d005a376 <__ieee754_atan2f+0x22>
d005a368:	ee10 0a10 	vmov	r0, s0
d005a36c:	f020 4300 	bic.w	r3, r0, #2147483648	; 0x80000000
d005a370:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d005a374:	dd04      	ble.n	d005a380 <__ieee754_atan2f+0x2c>
d005a376:	ee77 7aa0 	vadd.f32	s15, s15, s1
d005a37a:	eeb0 0a67 	vmov.f32	s0, s15
d005a37e:	bd10      	pop	{r4, pc}
d005a380:	f1b2 5f7e 	cmp.w	r2, #1065353216	; 0x3f800000
d005a384:	d103      	bne.n	d005a38e <__ieee754_atan2f+0x3a>
d005a386:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d005a38a:	f000 b881 	b.w	d005a490 <atanf>
d005a38e:	1794      	asrs	r4, r2, #30
d005a390:	f004 0402 	and.w	r4, r4, #2
d005a394:	ea44 74d0 	orr.w	r4, r4, r0, lsr #31
d005a398:	b93b      	cbnz	r3, d005a3aa <__ieee754_atan2f+0x56>
d005a39a:	2c02      	cmp	r4, #2
d005a39c:	d05c      	beq.n	d005a458 <__ieee754_atan2f+0x104>
d005a39e:	ed9f 7a33 	vldr	s14, [pc, #204]	; d005a46c <__ieee754_atan2f+0x118>
d005a3a2:	2c03      	cmp	r4, #3
d005a3a4:	fe47 7a00 	vseleq.f32	s15, s14, s0
d005a3a8:	e7e7      	b.n	d005a37a <__ieee754_atan2f+0x26>
d005a3aa:	b939      	cbnz	r1, d005a3bc <__ieee754_atan2f+0x68>
d005a3ac:	eddf 7a30 	vldr	s15, [pc, #192]	; d005a470 <__ieee754_atan2f+0x11c>
d005a3b0:	ed9f 0a30 	vldr	s0, [pc, #192]	; d005a474 <__ieee754_atan2f+0x120>
d005a3b4:	2800      	cmp	r0, #0
d005a3b6:	fe67 7a80 	vselge.f32	s15, s15, s0
d005a3ba:	e7de      	b.n	d005a37a <__ieee754_atan2f+0x26>
d005a3bc:	f1b1 4fff 	cmp.w	r1, #2139095040	; 0x7f800000
d005a3c0:	d110      	bne.n	d005a3e4 <__ieee754_atan2f+0x90>
d005a3c2:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d005a3c6:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
d005a3ca:	d107      	bne.n	d005a3dc <__ieee754_atan2f+0x88>
d005a3cc:	2c02      	cmp	r4, #2
d005a3ce:	d846      	bhi.n	d005a45e <__ieee754_atan2f+0x10a>
d005a3d0:	4b29      	ldr	r3, [pc, #164]	; (d005a478 <__ieee754_atan2f+0x124>)
d005a3d2:	eb03 0484 	add.w	r4, r3, r4, lsl #2
d005a3d6:	edd4 7a00 	vldr	s15, [r4]
d005a3da:	e7ce      	b.n	d005a37a <__ieee754_atan2f+0x26>
d005a3dc:	2c02      	cmp	r4, #2
d005a3de:	d841      	bhi.n	d005a464 <__ieee754_atan2f+0x110>
d005a3e0:	4b26      	ldr	r3, [pc, #152]	; (d005a47c <__ieee754_atan2f+0x128>)
d005a3e2:	e7f6      	b.n	d005a3d2 <__ieee754_atan2f+0x7e>
d005a3e4:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d005a3e8:	d0e0      	beq.n	d005a3ac <__ieee754_atan2f+0x58>
d005a3ea:	1a5b      	subs	r3, r3, r1
d005a3ec:	f1b3 5ff4 	cmp.w	r3, #511705088	; 0x1e800000
d005a3f0:	ea4f 51e3 	mov.w	r1, r3, asr #23
d005a3f4:	da1a      	bge.n	d005a42c <__ieee754_atan2f+0xd8>
d005a3f6:	2a00      	cmp	r2, #0
d005a3f8:	da01      	bge.n	d005a3fe <__ieee754_atan2f+0xaa>
d005a3fa:	313c      	adds	r1, #60	; 0x3c
d005a3fc:	db19      	blt.n	d005a432 <__ieee754_atan2f+0xde>
d005a3fe:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d005a402:	f000 f919 	bl	d005a638 <fabsf>
d005a406:	f000 f843 	bl	d005a490 <atanf>
d005a40a:	eef0 7a40 	vmov.f32	s15, s0
d005a40e:	2c01      	cmp	r4, #1
d005a410:	d012      	beq.n	d005a438 <__ieee754_atan2f+0xe4>
d005a412:	2c02      	cmp	r4, #2
d005a414:	d017      	beq.n	d005a446 <__ieee754_atan2f+0xf2>
d005a416:	2c00      	cmp	r4, #0
d005a418:	d0af      	beq.n	d005a37a <__ieee754_atan2f+0x26>
d005a41a:	ed9f 0a19 	vldr	s0, [pc, #100]	; d005a480 <__ieee754_atan2f+0x12c>
d005a41e:	ee77 7a80 	vadd.f32	s15, s15, s0
d005a422:	ed9f 0a18 	vldr	s0, [pc, #96]	; d005a484 <__ieee754_atan2f+0x130>
d005a426:	ee77 7ac0 	vsub.f32	s15, s15, s0
d005a42a:	e7a6      	b.n	d005a37a <__ieee754_atan2f+0x26>
d005a42c:	eddf 7a10 	vldr	s15, [pc, #64]	; d005a470 <__ieee754_atan2f+0x11c>
d005a430:	e7ed      	b.n	d005a40e <__ieee754_atan2f+0xba>
d005a432:	eddf 7a15 	vldr	s15, [pc, #84]	; d005a488 <__ieee754_atan2f+0x134>
d005a436:	e7ea      	b.n	d005a40e <__ieee754_atan2f+0xba>
d005a438:	ee17 3a90 	vmov	r3, s15
d005a43c:	f103 4300 	add.w	r3, r3, #2147483648	; 0x80000000
d005a440:	ee07 3a90 	vmov	s15, r3
d005a444:	e799      	b.n	d005a37a <__ieee754_atan2f+0x26>
d005a446:	ed9f 0a0e 	vldr	s0, [pc, #56]	; d005a480 <__ieee754_atan2f+0x12c>
d005a44a:	ee77 7a80 	vadd.f32	s15, s15, s0
d005a44e:	ed9f 0a0d 	vldr	s0, [pc, #52]	; d005a484 <__ieee754_atan2f+0x130>
d005a452:	ee70 7a67 	vsub.f32	s15, s0, s15
d005a456:	e790      	b.n	d005a37a <__ieee754_atan2f+0x26>
d005a458:	eddf 7a0a 	vldr	s15, [pc, #40]	; d005a484 <__ieee754_atan2f+0x130>
d005a45c:	e78d      	b.n	d005a37a <__ieee754_atan2f+0x26>
d005a45e:	eddf 7a0b 	vldr	s15, [pc, #44]	; d005a48c <__ieee754_atan2f+0x138>
d005a462:	e78a      	b.n	d005a37a <__ieee754_atan2f+0x26>
d005a464:	eddf 7a08 	vldr	s15, [pc, #32]	; d005a488 <__ieee754_atan2f+0x134>
d005a468:	e787      	b.n	d005a37a <__ieee754_atan2f+0x26>
d005a46a:	bf00      	nop
d005a46c:	c0490fdb 	.word	0xc0490fdb
d005a470:	3fc90fdb 	.word	0x3fc90fdb
d005a474:	bfc90fdb 	.word	0xbfc90fdb
d005a478:	d005b1c8 	.word	0xd005b1c8
d005a47c:	d005b1d4 	.word	0xd005b1d4
d005a480:	33bbbd2e 	.word	0x33bbbd2e
d005a484:	40490fdb 	.word	0x40490fdb
d005a488:	00000000 	.word	0x00000000
d005a48c:	3f490fdb 	.word	0x3f490fdb

d005a490 <atanf>:
d005a490:	b538      	push	{r3, r4, r5, lr}
d005a492:	ee10 5a10 	vmov	r5, s0
d005a496:	f025 4400 	bic.w	r4, r5, #2147483648	; 0x80000000
d005a49a:	f1b4 4fa1 	cmp.w	r4, #1350565888	; 0x50800000
d005a49e:	eef0 7a40 	vmov.f32	s15, s0
d005a4a2:	db0f      	blt.n	d005a4c4 <atanf+0x34>
d005a4a4:	f1b4 4fff 	cmp.w	r4, #2139095040	; 0x7f800000
d005a4a8:	dd04      	ble.n	d005a4b4 <atanf+0x24>
d005a4aa:	ee70 7a00 	vadd.f32	s15, s0, s0
d005a4ae:	eeb0 0a67 	vmov.f32	s0, s15
d005a4b2:	bd38      	pop	{r3, r4, r5, pc}
d005a4b4:	eddf 7a4d 	vldr	s15, [pc, #308]	; d005a5ec <atanf+0x15c>
d005a4b8:	ed9f 0a4d 	vldr	s0, [pc, #308]	; d005a5f0 <atanf+0x160>
d005a4bc:	2d00      	cmp	r5, #0
d005a4be:	fe77 7a80 	vselgt.f32	s15, s15, s0
d005a4c2:	e7f4      	b.n	d005a4ae <atanf+0x1e>
d005a4c4:	4b4b      	ldr	r3, [pc, #300]	; (d005a5f4 <atanf+0x164>)
d005a4c6:	429c      	cmp	r4, r3
d005a4c8:	dc10      	bgt.n	d005a4ec <atanf+0x5c>
d005a4ca:	f1b4 5f44 	cmp.w	r4, #822083584	; 0x31000000
d005a4ce:	da0a      	bge.n	d005a4e6 <atanf+0x56>
d005a4d0:	ed9f 7a49 	vldr	s14, [pc, #292]	; d005a5f8 <atanf+0x168>
d005a4d4:	ee30 7a07 	vadd.f32	s14, s0, s14
d005a4d8:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d005a4dc:	eeb4 7ae6 	vcmpe.f32	s14, s13
d005a4e0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005a4e4:	dce3      	bgt.n	d005a4ae <atanf+0x1e>
d005a4e6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d005a4ea:	e013      	b.n	d005a514 <atanf+0x84>
d005a4ec:	f000 f8a4 	bl	d005a638 <fabsf>
d005a4f0:	4b42      	ldr	r3, [pc, #264]	; (d005a5fc <atanf+0x16c>)
d005a4f2:	429c      	cmp	r4, r3
d005a4f4:	dc4f      	bgt.n	d005a596 <atanf+0x106>
d005a4f6:	f5a3 03d0 	sub.w	r3, r3, #6815744	; 0x680000
d005a4fa:	429c      	cmp	r4, r3
d005a4fc:	dc41      	bgt.n	d005a582 <atanf+0xf2>
d005a4fe:	eef0 7a00 	vmov.f32	s15, #0	; 0x40000000  2.0
d005a502:	eebf 7a00 	vmov.f32	s14, #240	; 0xbf800000 -1.0
d005a506:	eea0 7a27 	vfma.f32	s14, s0, s15
d005a50a:	2300      	movs	r3, #0
d005a50c:	ee30 0a27 	vadd.f32	s0, s0, s15
d005a510:	eec7 7a00 	vdiv.f32	s15, s14, s0
d005a514:	1c5a      	adds	r2, r3, #1
d005a516:	ee67 6aa7 	vmul.f32	s13, s15, s15
d005a51a:	eddf 5a39 	vldr	s11, [pc, #228]	; d005a600 <atanf+0x170>
d005a51e:	ed9f 6a39 	vldr	s12, [pc, #228]	; d005a604 <atanf+0x174>
d005a522:	ed9f 5a39 	vldr	s10, [pc, #228]	; d005a608 <atanf+0x178>
d005a526:	ed9f 0a39 	vldr	s0, [pc, #228]	; d005a60c <atanf+0x17c>
d005a52a:	ee26 7aa6 	vmul.f32	s14, s13, s13
d005a52e:	eea7 6a25 	vfma.f32	s12, s14, s11
d005a532:	eddf 5a37 	vldr	s11, [pc, #220]	; d005a610 <atanf+0x180>
d005a536:	eee6 5a07 	vfma.f32	s11, s12, s14
d005a53a:	ed9f 6a36 	vldr	s12, [pc, #216]	; d005a614 <atanf+0x184>
d005a53e:	eea5 6a87 	vfma.f32	s12, s11, s14
d005a542:	eddf 5a35 	vldr	s11, [pc, #212]	; d005a618 <atanf+0x188>
d005a546:	eee6 5a07 	vfma.f32	s11, s12, s14
d005a54a:	ed9f 6a34 	vldr	s12, [pc, #208]	; d005a61c <atanf+0x18c>
d005a54e:	eea5 6a87 	vfma.f32	s12, s11, s14
d005a552:	eddf 5a33 	vldr	s11, [pc, #204]	; d005a620 <atanf+0x190>
d005a556:	eee7 5a05 	vfma.f32	s11, s14, s10
d005a55a:	ed9f 5a32 	vldr	s10, [pc, #200]	; d005a624 <atanf+0x194>
d005a55e:	eea5 5a87 	vfma.f32	s10, s11, s14
d005a562:	eddf 5a31 	vldr	s11, [pc, #196]	; d005a628 <atanf+0x198>
d005a566:	eee5 5a07 	vfma.f32	s11, s10, s14
d005a56a:	eea5 0a87 	vfma.f32	s0, s11, s14
d005a56e:	ee20 0a07 	vmul.f32	s0, s0, s14
d005a572:	eea6 0a26 	vfma.f32	s0, s12, s13
d005a576:	ee27 0a80 	vmul.f32	s0, s15, s0
d005a57a:	d121      	bne.n	d005a5c0 <atanf+0x130>
d005a57c:	ee77 7ac0 	vsub.f32	s15, s15, s0
d005a580:	e795      	b.n	d005a4ae <atanf+0x1e>
d005a582:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d005a586:	ee30 7a67 	vsub.f32	s14, s0, s15
d005a58a:	ee30 0a27 	vadd.f32	s0, s0, s15
d005a58e:	2301      	movs	r3, #1
d005a590:	eec7 7a00 	vdiv.f32	s15, s14, s0
d005a594:	e7be      	b.n	d005a514 <atanf+0x84>
d005a596:	4b25      	ldr	r3, [pc, #148]	; (d005a62c <atanf+0x19c>)
d005a598:	429c      	cmp	r4, r3
d005a59a:	dc0b      	bgt.n	d005a5b4 <atanf+0x124>
d005a59c:	eef7 7a08 	vmov.f32	s15, #120	; 0x3fc00000  1.5
d005a5a0:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d005a5a4:	eea0 7a27 	vfma.f32	s14, s0, s15
d005a5a8:	2302      	movs	r3, #2
d005a5aa:	ee70 6a67 	vsub.f32	s13, s0, s15
d005a5ae:	eec6 7a87 	vdiv.f32	s15, s13, s14
d005a5b2:	e7af      	b.n	d005a514 <atanf+0x84>
d005a5b4:	eebf 7a00 	vmov.f32	s14, #240	; 0xbf800000 -1.0
d005a5b8:	eec7 7a00 	vdiv.f32	s15, s14, s0
d005a5bc:	2303      	movs	r3, #3
d005a5be:	e7a9      	b.n	d005a514 <atanf+0x84>
d005a5c0:	4a1b      	ldr	r2, [pc, #108]	; (d005a630 <atanf+0x1a0>)
d005a5c2:	491c      	ldr	r1, [pc, #112]	; (d005a634 <atanf+0x1a4>)
d005a5c4:	eb02 0283 	add.w	r2, r2, r3, lsl #2
d005a5c8:	eb01 0383 	add.w	r3, r1, r3, lsl #2
d005a5cc:	ed93 7a00 	vldr	s14, [r3]
d005a5d0:	ee30 0a47 	vsub.f32	s0, s0, s14
d005a5d4:	2d00      	cmp	r5, #0
d005a5d6:	ee70 7a67 	vsub.f32	s15, s0, s15
d005a5da:	ed92 0a00 	vldr	s0, [r2]
d005a5de:	ee70 7a67 	vsub.f32	s15, s0, s15
d005a5e2:	bfb8      	it	lt
d005a5e4:	eef1 7a67 	vneglt.f32	s15, s15
d005a5e8:	e761      	b.n	d005a4ae <atanf+0x1e>
d005a5ea:	bf00      	nop
d005a5ec:	3fc90fdb 	.word	0x3fc90fdb
d005a5f0:	bfc90fdb 	.word	0xbfc90fdb
d005a5f4:	3edfffff 	.word	0x3edfffff
d005a5f8:	7149f2ca 	.word	0x7149f2ca
d005a5fc:	3f97ffff 	.word	0x3f97ffff
d005a600:	3c8569d7 	.word	0x3c8569d7
d005a604:	3d4bda59 	.word	0x3d4bda59
d005a608:	bd15a221 	.word	0xbd15a221
d005a60c:	be4ccccd 	.word	0xbe4ccccd
d005a610:	3d886b35 	.word	0x3d886b35
d005a614:	3dba2e6e 	.word	0x3dba2e6e
d005a618:	3e124925 	.word	0x3e124925
d005a61c:	3eaaaaab 	.word	0x3eaaaaab
d005a620:	bd6ef16b 	.word	0xbd6ef16b
d005a624:	bd9d8795 	.word	0xbd9d8795
d005a628:	bde38e38 	.word	0xbde38e38
d005a62c:	401bffff 	.word	0x401bffff
d005a630:	d005b1e0 	.word	0xd005b1e0
d005a634:	d005b1f0 	.word	0xd005b1f0

d005a638 <fabsf>:
d005a638:	ee10 3a10 	vmov	r3, s0
d005a63c:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
d005a640:	ee00 3a10 	vmov	s0, r3
d005a644:	4770      	bx	lr
	...

d005a648 <__aeabi_drsub>:
d005a648:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
d005a64c:	e002      	b.n	d005a654 <__adddf3>
d005a64e:	bf00      	nop

d005a650 <__aeabi_dsub>:
d005a650:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

d005a654 <__adddf3>:
d005a654:	b530      	push	{r4, r5, lr}
d005a656:	ea4f 0441 	mov.w	r4, r1, lsl #1
d005a65a:	ea4f 0543 	mov.w	r5, r3, lsl #1
d005a65e:	ea94 0f05 	teq	r4, r5
d005a662:	bf08      	it	eq
d005a664:	ea90 0f02 	teqeq	r0, r2
d005a668:	bf1f      	itttt	ne
d005a66a:	ea54 0c00 	orrsne.w	ip, r4, r0
d005a66e:	ea55 0c02 	orrsne.w	ip, r5, r2
d005a672:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
d005a676:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d005a67a:	f000 80e2 	beq.w	d005a842 <__adddf3+0x1ee>
d005a67e:	ea4f 5454 	mov.w	r4, r4, lsr #21
d005a682:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
d005a686:	bfb8      	it	lt
d005a688:	426d      	neglt	r5, r5
d005a68a:	dd0c      	ble.n	d005a6a6 <__adddf3+0x52>
d005a68c:	442c      	add	r4, r5
d005a68e:	ea80 0202 	eor.w	r2, r0, r2
d005a692:	ea81 0303 	eor.w	r3, r1, r3
d005a696:	ea82 0000 	eor.w	r0, r2, r0
d005a69a:	ea83 0101 	eor.w	r1, r3, r1
d005a69e:	ea80 0202 	eor.w	r2, r0, r2
d005a6a2:	ea81 0303 	eor.w	r3, r1, r3
d005a6a6:	2d36      	cmp	r5, #54	; 0x36
d005a6a8:	bf88      	it	hi
d005a6aa:	bd30      	pophi	{r4, r5, pc}
d005a6ac:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
d005a6b0:	ea4f 3101 	mov.w	r1, r1, lsl #12
d005a6b4:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
d005a6b8:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
d005a6bc:	d002      	beq.n	d005a6c4 <__adddf3+0x70>
d005a6be:	4240      	negs	r0, r0
d005a6c0:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d005a6c4:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
d005a6c8:	ea4f 3303 	mov.w	r3, r3, lsl #12
d005a6cc:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
d005a6d0:	d002      	beq.n	d005a6d8 <__adddf3+0x84>
d005a6d2:	4252      	negs	r2, r2
d005a6d4:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
d005a6d8:	ea94 0f05 	teq	r4, r5
d005a6dc:	f000 80a7 	beq.w	d005a82e <__adddf3+0x1da>
d005a6e0:	f1a4 0401 	sub.w	r4, r4, #1
d005a6e4:	f1d5 0e20 	rsbs	lr, r5, #32
d005a6e8:	db0d      	blt.n	d005a706 <__adddf3+0xb2>
d005a6ea:	fa02 fc0e 	lsl.w	ip, r2, lr
d005a6ee:	fa22 f205 	lsr.w	r2, r2, r5
d005a6f2:	1880      	adds	r0, r0, r2
d005a6f4:	f141 0100 	adc.w	r1, r1, #0
d005a6f8:	fa03 f20e 	lsl.w	r2, r3, lr
d005a6fc:	1880      	adds	r0, r0, r2
d005a6fe:	fa43 f305 	asr.w	r3, r3, r5
d005a702:	4159      	adcs	r1, r3
d005a704:	e00e      	b.n	d005a724 <__adddf3+0xd0>
d005a706:	f1a5 0520 	sub.w	r5, r5, #32
d005a70a:	f10e 0e20 	add.w	lr, lr, #32
d005a70e:	2a01      	cmp	r2, #1
d005a710:	fa03 fc0e 	lsl.w	ip, r3, lr
d005a714:	bf28      	it	cs
d005a716:	f04c 0c02 	orrcs.w	ip, ip, #2
d005a71a:	fa43 f305 	asr.w	r3, r3, r5
d005a71e:	18c0      	adds	r0, r0, r3
d005a720:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
d005a724:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d005a728:	d507      	bpl.n	d005a73a <__adddf3+0xe6>
d005a72a:	f04f 0e00 	mov.w	lr, #0
d005a72e:	f1dc 0c00 	rsbs	ip, ip, #0
d005a732:	eb7e 0000 	sbcs.w	r0, lr, r0
d005a736:	eb6e 0101 	sbc.w	r1, lr, r1
d005a73a:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
d005a73e:	d31b      	bcc.n	d005a778 <__adddf3+0x124>
d005a740:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
d005a744:	d30c      	bcc.n	d005a760 <__adddf3+0x10c>
d005a746:	0849      	lsrs	r1, r1, #1
d005a748:	ea5f 0030 	movs.w	r0, r0, rrx
d005a74c:	ea4f 0c3c 	mov.w	ip, ip, rrx
d005a750:	f104 0401 	add.w	r4, r4, #1
d005a754:	ea4f 5244 	mov.w	r2, r4, lsl #21
d005a758:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
d005a75c:	f080 809a 	bcs.w	d005a894 <__adddf3+0x240>
d005a760:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
d005a764:	bf08      	it	eq
d005a766:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
d005a76a:	f150 0000 	adcs.w	r0, r0, #0
d005a76e:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
d005a772:	ea41 0105 	orr.w	r1, r1, r5
d005a776:	bd30      	pop	{r4, r5, pc}
d005a778:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
d005a77c:	4140      	adcs	r0, r0
d005a77e:	eb41 0101 	adc.w	r1, r1, r1
d005a782:	3c01      	subs	r4, #1
d005a784:	bf28      	it	cs
d005a786:	f5b1 1f80 	cmpcs.w	r1, #1048576	; 0x100000
d005a78a:	d2e9      	bcs.n	d005a760 <__adddf3+0x10c>
d005a78c:	f091 0f00 	teq	r1, #0
d005a790:	bf04      	itt	eq
d005a792:	4601      	moveq	r1, r0
d005a794:	2000      	moveq	r0, #0
d005a796:	fab1 f381 	clz	r3, r1
d005a79a:	bf08      	it	eq
d005a79c:	3320      	addeq	r3, #32
d005a79e:	f1a3 030b 	sub.w	r3, r3, #11
d005a7a2:	f1b3 0220 	subs.w	r2, r3, #32
d005a7a6:	da0c      	bge.n	d005a7c2 <__adddf3+0x16e>
d005a7a8:	320c      	adds	r2, #12
d005a7aa:	dd08      	ble.n	d005a7be <__adddf3+0x16a>
d005a7ac:	f102 0c14 	add.w	ip, r2, #20
d005a7b0:	f1c2 020c 	rsb	r2, r2, #12
d005a7b4:	fa01 f00c 	lsl.w	r0, r1, ip
d005a7b8:	fa21 f102 	lsr.w	r1, r1, r2
d005a7bc:	e00c      	b.n	d005a7d8 <__adddf3+0x184>
d005a7be:	f102 0214 	add.w	r2, r2, #20
d005a7c2:	bfd8      	it	le
d005a7c4:	f1c2 0c20 	rsble	ip, r2, #32
d005a7c8:	fa01 f102 	lsl.w	r1, r1, r2
d005a7cc:	fa20 fc0c 	lsr.w	ip, r0, ip
d005a7d0:	bfdc      	itt	le
d005a7d2:	ea41 010c 	orrle.w	r1, r1, ip
d005a7d6:	4090      	lslle	r0, r2
d005a7d8:	1ae4      	subs	r4, r4, r3
d005a7da:	bfa2      	ittt	ge
d005a7dc:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
d005a7e0:	4329      	orrge	r1, r5
d005a7e2:	bd30      	popge	{r4, r5, pc}
d005a7e4:	ea6f 0404 	mvn.w	r4, r4
d005a7e8:	3c1f      	subs	r4, #31
d005a7ea:	da1c      	bge.n	d005a826 <__adddf3+0x1d2>
d005a7ec:	340c      	adds	r4, #12
d005a7ee:	dc0e      	bgt.n	d005a80e <__adddf3+0x1ba>
d005a7f0:	f104 0414 	add.w	r4, r4, #20
d005a7f4:	f1c4 0220 	rsb	r2, r4, #32
d005a7f8:	fa20 f004 	lsr.w	r0, r0, r4
d005a7fc:	fa01 f302 	lsl.w	r3, r1, r2
d005a800:	ea40 0003 	orr.w	r0, r0, r3
d005a804:	fa21 f304 	lsr.w	r3, r1, r4
d005a808:	ea45 0103 	orr.w	r1, r5, r3
d005a80c:	bd30      	pop	{r4, r5, pc}
d005a80e:	f1c4 040c 	rsb	r4, r4, #12
d005a812:	f1c4 0220 	rsb	r2, r4, #32
d005a816:	fa20 f002 	lsr.w	r0, r0, r2
d005a81a:	fa01 f304 	lsl.w	r3, r1, r4
d005a81e:	ea40 0003 	orr.w	r0, r0, r3
d005a822:	4629      	mov	r1, r5
d005a824:	bd30      	pop	{r4, r5, pc}
d005a826:	fa21 f004 	lsr.w	r0, r1, r4
d005a82a:	4629      	mov	r1, r5
d005a82c:	bd30      	pop	{r4, r5, pc}
d005a82e:	f094 0f00 	teq	r4, #0
d005a832:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
d005a836:	bf06      	itte	eq
d005a838:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
d005a83c:	3401      	addeq	r4, #1
d005a83e:	3d01      	subne	r5, #1
d005a840:	e74e      	b.n	d005a6e0 <__adddf3+0x8c>
d005a842:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d005a846:	bf18      	it	ne
d005a848:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d005a84c:	d029      	beq.n	d005a8a2 <__adddf3+0x24e>
d005a84e:	ea94 0f05 	teq	r4, r5
d005a852:	bf08      	it	eq
d005a854:	ea90 0f02 	teqeq	r0, r2
d005a858:	d005      	beq.n	d005a866 <__adddf3+0x212>
d005a85a:	ea54 0c00 	orrs.w	ip, r4, r0
d005a85e:	bf04      	itt	eq
d005a860:	4619      	moveq	r1, r3
d005a862:	4610      	moveq	r0, r2
d005a864:	bd30      	pop	{r4, r5, pc}
d005a866:	ea91 0f03 	teq	r1, r3
d005a86a:	bf1e      	ittt	ne
d005a86c:	2100      	movne	r1, #0
d005a86e:	2000      	movne	r0, #0
d005a870:	bd30      	popne	{r4, r5, pc}
d005a872:	ea5f 5c54 	movs.w	ip, r4, lsr #21
d005a876:	d105      	bne.n	d005a884 <__adddf3+0x230>
d005a878:	0040      	lsls	r0, r0, #1
d005a87a:	4149      	adcs	r1, r1
d005a87c:	bf28      	it	cs
d005a87e:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
d005a882:	bd30      	pop	{r4, r5, pc}
d005a884:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
d005a888:	bf3c      	itt	cc
d005a88a:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
d005a88e:	bd30      	popcc	{r4, r5, pc}
d005a890:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d005a894:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
d005a898:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
d005a89c:	f04f 0000 	mov.w	r0, #0
d005a8a0:	bd30      	pop	{r4, r5, pc}
d005a8a2:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d005a8a6:	bf1a      	itte	ne
d005a8a8:	4619      	movne	r1, r3
d005a8aa:	4610      	movne	r0, r2
d005a8ac:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
d005a8b0:	bf1c      	itt	ne
d005a8b2:	460b      	movne	r3, r1
d005a8b4:	4602      	movne	r2, r0
d005a8b6:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
d005a8ba:	bf06      	itte	eq
d005a8bc:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
d005a8c0:	ea91 0f03 	teqeq	r1, r3
d005a8c4:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
d005a8c8:	bd30      	pop	{r4, r5, pc}
d005a8ca:	bf00      	nop

d005a8cc <__aeabi_ui2d>:
d005a8cc:	f090 0f00 	teq	r0, #0
d005a8d0:	bf04      	itt	eq
d005a8d2:	2100      	moveq	r1, #0
d005a8d4:	4770      	bxeq	lr
d005a8d6:	b530      	push	{r4, r5, lr}
d005a8d8:	f44f 6480 	mov.w	r4, #1024	; 0x400
d005a8dc:	f104 0432 	add.w	r4, r4, #50	; 0x32
d005a8e0:	f04f 0500 	mov.w	r5, #0
d005a8e4:	f04f 0100 	mov.w	r1, #0
d005a8e8:	e750      	b.n	d005a78c <__adddf3+0x138>
d005a8ea:	bf00      	nop

d005a8ec <__aeabi_i2d>:
d005a8ec:	f090 0f00 	teq	r0, #0
d005a8f0:	bf04      	itt	eq
d005a8f2:	2100      	moveq	r1, #0
d005a8f4:	4770      	bxeq	lr
d005a8f6:	b530      	push	{r4, r5, lr}
d005a8f8:	f44f 6480 	mov.w	r4, #1024	; 0x400
d005a8fc:	f104 0432 	add.w	r4, r4, #50	; 0x32
d005a900:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
d005a904:	bf48      	it	mi
d005a906:	4240      	negmi	r0, r0
d005a908:	f04f 0100 	mov.w	r1, #0
d005a90c:	e73e      	b.n	d005a78c <__adddf3+0x138>
d005a90e:	bf00      	nop

d005a910 <__aeabi_f2d>:
d005a910:	0042      	lsls	r2, r0, #1
d005a912:	ea4f 01e2 	mov.w	r1, r2, asr #3
d005a916:	ea4f 0131 	mov.w	r1, r1, rrx
d005a91a:	ea4f 7002 	mov.w	r0, r2, lsl #28
d005a91e:	bf1f      	itttt	ne
d005a920:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
d005a924:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
d005a928:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
d005a92c:	4770      	bxne	lr
d005a92e:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
d005a932:	bf08      	it	eq
d005a934:	4770      	bxeq	lr
d005a936:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
d005a93a:	bf04      	itt	eq
d005a93c:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
d005a940:	4770      	bxeq	lr
d005a942:	b530      	push	{r4, r5, lr}
d005a944:	f44f 7460 	mov.w	r4, #896	; 0x380
d005a948:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d005a94c:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
d005a950:	e71c      	b.n	d005a78c <__adddf3+0x138>
d005a952:	bf00      	nop

d005a954 <__aeabi_ul2d>:
d005a954:	ea50 0201 	orrs.w	r2, r0, r1
d005a958:	bf08      	it	eq
d005a95a:	4770      	bxeq	lr
d005a95c:	b530      	push	{r4, r5, lr}
d005a95e:	f04f 0500 	mov.w	r5, #0
d005a962:	e00a      	b.n	d005a97a <__aeabi_l2d+0x16>

d005a964 <__aeabi_l2d>:
d005a964:	ea50 0201 	orrs.w	r2, r0, r1
d005a968:	bf08      	it	eq
d005a96a:	4770      	bxeq	lr
d005a96c:	b530      	push	{r4, r5, lr}
d005a96e:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
d005a972:	d502      	bpl.n	d005a97a <__aeabi_l2d+0x16>
d005a974:	4240      	negs	r0, r0
d005a976:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d005a97a:	f44f 6480 	mov.w	r4, #1024	; 0x400
d005a97e:	f104 0432 	add.w	r4, r4, #50	; 0x32
d005a982:	ea5f 5c91 	movs.w	ip, r1, lsr #22
d005a986:	f43f aed8 	beq.w	d005a73a <__adddf3+0xe6>
d005a98a:	f04f 0203 	mov.w	r2, #3
d005a98e:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d005a992:	bf18      	it	ne
d005a994:	3203      	addne	r2, #3
d005a996:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d005a99a:	bf18      	it	ne
d005a99c:	3203      	addne	r2, #3
d005a99e:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
d005a9a2:	f1c2 0320 	rsb	r3, r2, #32
d005a9a6:	fa00 fc03 	lsl.w	ip, r0, r3
d005a9aa:	fa20 f002 	lsr.w	r0, r0, r2
d005a9ae:	fa01 fe03 	lsl.w	lr, r1, r3
d005a9b2:	ea40 000e 	orr.w	r0, r0, lr
d005a9b6:	fa21 f102 	lsr.w	r1, r1, r2
d005a9ba:	4414      	add	r4, r2
d005a9bc:	e6bd      	b.n	d005a73a <__adddf3+0xe6>
d005a9be:	bf00      	nop
d005a9c0:	46464952 	.word	0x46464952
d005a9c4:	00000000 	.word	0x00000000
d005a9c8:	45564157 	.word	0x45564157
d005a9cc:	00000000 	.word	0x00000000
d005a9d0:	6d6f6f62 	.word	0x6d6f6f62
d005a9d4:	6f6d2e64 	.word	0x6f6d2e64
d005a9d8:	00000064 	.word	0x00000064
d005a9dc:	6e756874 	.word	0x6e756874
d005a9e0:	31726564 	.word	0x31726564
d005a9e4:	7661772e 	.word	0x7661772e
d005a9e8:	00000000 	.word	0x00000000
d005a9ec:	6e756874 	.word	0x6e756874
d005a9f0:	32726564 	.word	0x32726564
d005a9f4:	7661772e 	.word	0x7661772e
d005a9f8:	00000000 	.word	0x00000000
d005a9fc:	616c7369 	.word	0x616c7369
d005aa00:	2e78646e 	.word	0x2e78646e
d005aa04:	64336273 	.word	0x64336273
d005aa08:	00000000 	.word	0x00000000
d005aa0c:	72726163 	.word	0x72726163
d005aa10:	2e726569 	.word	0x2e726569
d005aa14:	64336273 	.word	0x64336273
d005aa18:	00000000 	.word	0x00000000
d005aa1c:	70696873 	.word	0x70696873
d005aa20:	732e3176 	.word	0x732e3176
d005aa24:	00643362 	.word	0x00643362
d005aa28:	74786574 	.word	0x74786574
d005aa2c:	3362732e 	.word	0x3362732e
d005aa30:	00000064 	.word	0x00000064
d005aa34:	3a535046 	.word	0x3a535046
d005aa38:	2e756c25 	.word	0x2e756c25
d005aa3c:	6c323025 	.word	0x6c323025
d005aa40:	4d202075 	.word	0x4d202075
d005aa44:	33253a53 	.word	0x33253a53
d005aa48:	252e756c 	.word	0x252e756c
d005aa4c:	756c3330 	.word	0x756c3330
d005aa50:	50572020 	.word	0x50572020
d005aa54:	7532253a 	.word	0x7532253a
d005aa58:	52542020 	.word	0x52542020
d005aa5c:	253a5349 	.word	0x253a5349
d005aa60:	0000756c 	.word	0x0000756c
d005aa64:	ff5516e3 	.word	0xff5516e3
d005aa68:	ffffffff 	.word	0xffffffff
d005aa6c:	ffff0000 	.word	0xffff0000
d005aa70:	ff00ff00 	.word	0xff00ff00
d005aa74:	ff0000ff 	.word	0xff0000ff
d005aa78:	ffffff00 	.word	0xffffff00
d005aa7c:	ffff00ff 	.word	0xffff00ff
d005aa80:	ff00ffff 	.word	0xff00ffff
d005aa84:	ff808080 	.word	0xff808080
d005aa88:	ffff8000 	.word	0xffff8000
d005aa8c:	ff8000ff 	.word	0xff8000ff
d005aa90:	ff0080ff 	.word	0xff0080ff
d005aa94:	ff80ff00 	.word	0xff80ff00
d005aa98:	ffff0080 	.word	0xffff0080
d005aa9c:	ff00ff80 	.word	0xff00ff80
d005aaa0:	ffc0c0c0 	.word	0xffc0c0c0
d005aaa4:	3f800000 	.word	0x3f800000
d005aaa8:	3f400000 	.word	0x3f400000
d005aaac:	3f0ccccd 	.word	0x3f0ccccd
d005aab0:	3eb33333 	.word	0x3eb33333
d005aab4:	3e4ccccd 	.word	0x3e4ccccd
d005aab8:	bf800000 	.word	0xbf800000
d005aabc:	bf000000 	.word	0xbf000000
d005aac0:	3e99999a 	.word	0x3e99999a

d005aac4 <museumRail.9291>:
d005aac4:	c2180000 42700000 3f800000 3f800000     ......pB...?...?
d005aad4:	00000000 c2180000 42900000 442f0000     ...........B../D
	...
d005aaec:	c1f00000 43340000 44870000 00000000     ......4C...D....
d005aafc:	3ecccccd 443e0000 433d0000 45014000     ...>..>D..=C.@.E
d005ab0c:	00000000 3ecccccd 44a6a000 42500000     .......>...D..PB
d005ab1c:	4491a000 00000000 3ecccccd 449d2000     ...D.......>. .D
d005ab2c:	43480000 c4208000 00000000 3ecccccd     ..HC.. ........>
d005ab3c:	44460000 438a8000 c4ce4000 00000000     ..FD...C.@......
d005ab4c:	3ecccccd 42100000 43dc0000 c4dac000     ...>...B...C....
d005ab5c:	00000000 3ecccccd 43150000 43dc0000     .......>...C...C
d005ab6c:	c3800000 00000000 3ecccccd c449c000     ...........>..I.
d005ab7c:	43440000 43d18000 00000000 3ecccccd     ..DC...C.......>
d005ab8c:	c487c000 43300000 43320000 00000000     ......0C..2C....
d005ab9c:	3ecccccd c4654000 42f00000 42be0000     ...>.@e....B...B
d005abac:	00000000 3ecccccd c3ab8000 42a60000     .......>.......B
d005abbc:	c1b00000 00000000 3ecccccd c3580000     ...........>..X.
d005abcc:	423c0000 424c0000 00000000 3ecccccd     ..<B..LB.......>
d005abdc:	441fc000 423c0000 c23c0000 00000000     ...D..<B..<.....
d005abec:	3ecccccd 44e12000 43b80000 c2700000     ...>. .D...C..p.
d005abfc:	40000000 3ecccccd 44dba000 43dc0000     ...@...>...D...C
d005ac0c:	44250000 00000000 3ecccccd 44090000     ..%D.......>...D
d005ac1c:	42fc0000 44856000 00000000 3ecccccd     ...B.`.D.......>
d005ac2c:	c2f80000 42a20000 44afe000 00000000     .......B...D....
d005ac3c:	3ecccccd c20c0000 42640000 4487a000     ...>......dB...D
d005ac4c:	00000000 3ecccccd c20c0000 42700000     .......>......pB
d005ac5c:	436b0000 00000000 3ecccccd c32d0000     ..kC.......>..-.
d005ac6c:	42700000 43420000 00000000 3ecccccd     ..pB..BC.......>

d005ac7c <bayer4x4>:
d005ac7c:	0a020800 060e040c 09010b03 050d070f     ................
	...
d005acb8:	3f800000 00000000 00000000 00000000     ...?............
d005acc8:	3f800000 00000000 00000000 00000000     ...?............
d005acd8:	3f800000 3a8312c5 3c23d70a 447a0000     ...?...:..#<..zD
d005ace8:	43700000 43700000 43200000 3f2aaaab     ..pC..pC.. C..*?
	...
d005ad04:	00000001 00000001 00000002 00000002     ................
d005ad14:	00000003 00000003 00000000 00000004     ................
d005ad24:	00000005 00000005 00000006 00000006     ................
d005ad34:	00000007 00000007 00000004 00000000     ................
d005ad44:	00000004 00000001 00000005 00000002     ................
d005ad54:	00000006 00000003 00000007 00000001     ................
d005ad64:	00000002 00000002 00000003 00000001     ................
d005ad74:	00000004 00000002 00000004 00000003     ................
d005ad84:	00000004                                ....

d005ad88 <__sf_fake_stderr>:
	...

d005ada8 <__sf_fake_stdin>:
	...

d005adc8 <__sf_fake_stdout>:
	...

d005ade8 <_global_impure_ptr>:
d005ade8:	d005b658 2b302d23 6c680020 6665004c     X...#-0+ .hlL.ef
d005adf8:	47464567 32313000 36353433 41393837     gEFG.0123456789A
d005ae08:	45444342 31300046 35343332 39383736     BCDEF.0123456789
d005ae18:	64636261 00006665                       abcdef..

d005ae20 <__exp2f_data>:
d005ae20:	00000000 3ff00000 d3158574 3fefd9b0     .......?t......?
d005ae30:	6cf9890f 3fefb558 d0125b51 3fef9301     ...lX..?Q[.....?
d005ae40:	3c7d517b 3fef72b8 3168b9aa 3fef5487     {Q}<.r.?..h1.T.?
d005ae50:	6e756238 3fef387a f51fdee1 3fef1e9d     8bunz8.?.......?
d005ae60:	0a31b715 3fef06fe 373aa9cb 3feef1a7     ..1....?..:7...?
d005ae70:	4c123422 3feedea6 6061892d 3feece08     "4.L...?-.a`...?
d005ae80:	d5362a27 3feebfda 569d4f82 3feeb42b     '*6....?.O.V+..?
d005ae90:	dd485429 3feeab07 b03a5585 3feea47e     )TH....?.U:.~..?
d005aea0:	667f3bcd 3feea09e e8ec5f74 3fee9f75     .;.f...?t_..u..?
d005aeb0:	73eb0187 3feea114 994cce13 3feea589     ...s...?..L....?
d005aec0:	422aa0db 3feeace5 b0cdc5e5 3feeb737     ..*B...?....7..?
d005aed0:	82a3f090 3feec491 b23e255d 3feed503     .......?]%>....?
d005aee0:	995ad3ad 3feee89f f2fb5e47 3feeff76     ..Z....?G^..v..?
d005aef0:	dd85529c 3fef199b dcef9069 3fef3720     .R.....?i... 7.?
d005af00:	dcfba487 3fef5818 337b9b5f 3fef7c97     .....X.?_.{3.|.?
d005af10:	a2a490da 3fefa4af 5b6e4540 3fefd076     .......?@En[v..?
d005af20:	00000000 42e80000 4b912394 3fac6af8     .......B.#.K.j.?
d005af30:	50fac4f3 3fcebfce ff0c52d6 3fe62e42     ...P...?.R..B..?
d005af40:	00000000 43380000 652b82fe 40471547     ......8C..+eG.G@
d005af50:	4b912394 3ebc6af8 50fac4f3 3f2ebfce     .#.K.j.>...P...?
d005af60:	ff0c52d6 3f962e42                       .R..B..?

d005af68 <__logf_data>:
d005af68:	79f8f3be 3ff661ec 808caade bfd57bf7     ...y.a.?.....{..
d005af78:	4aaf883d 3ff571ed a7c06ddb bfd2bef0     =..J.q.?.m......
d005af88:	f0f010b0 3ff49539 7f513a67 bfd01eae     ....9..?g:Q.....
d005af98:	b0b80385 3ff3c995 a68224e9 bfcb31d8     .......?.$...1..
d005afa8:	0c8864a5 3ff30d19 0ac07758 bfc6574f     .d.....?Xw..OW..
d005afb8:	7b0b8ea0 3ff25e22 c79c8100 bfc1aa2b     ...{"^.?....+...
d005afc8:	4a1a343f 3ff1bb4a ce8c0e5e bfba4e76     ?4.JJ..?^...vN..
d005afd8:	f08ae5ba 3ff12358 5a611ccc bfb1973c     ....X#.?..aZ<...
d005afe8:	419900a7 3ff0953f 38e10c1e bfa252f4     ...A?..?...8.R..
d005aff8:	00000000 3ff00000 00000000 00000000     .......?........
d005b008:	fd9a47ac 3fee608c 5df25984 3faaa5aa     .G...`.?.Y.]...?
d005b018:	1f026aa0 3feca4b3 aa362eb4 3fbc5e53     .j.....?..6.S^.?
d005b028:	576afce6 3feb2036 7720db08 3fc526e5     ..jW6 .?.. w.&.?
d005b038:	63a1aa2d 3fe9c2d1 0d224770 3fcbc286     -..c...?pG"....?
d005b048:	037841ed 3fe886e6 c8a07ee1 3fd1058b     .Ax....?.~.....?
d005b058:	f5534862 3fe767dc 57b6ee09 3fd40430     bHS..g.?...W0..?
d005b068:	fefa39ef 3fe62e42 48b88334 bfd00ea3     .9..B..?4..H....
d005b078:	0be00b6a 3fd5575b f20a4123 bfdffffe     j...[W.?#A......

d005b088 <__inv_pio4>:
d005b088:	000000a2 0000a2f9 00a2f983 a2f9836e     ............n...
d005b098:	f9836e4e 836e4e44 6e4e4415 4e441529     Nn..DNn..DNn).DN
d005b0a8:	441529fc 1529fc27 29fc2757 fc2757d1     .).D'.).W'.).W'.
d005b0b8:	2757d1f5 57d1f534 d1f534dd f534ddc0     ..W'4..W.4....4.
d005b0c8:	34ddc0db ddc0db62 c0db6295 db629599     ...4b....b....b.
d005b0d8:	6295993c 95993c43 993c4390 3c439041     <..bC<...C<.A.C<

d005b0e8 <__sincosf_table>:
d005b0e8:	00000000 3ff00000 00000000 bff00000     .......?........
d005b0f8:	00000000 bff00000 00000000 3ff00000     ...............?
d005b108:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d005b118:	00000000 3ff00000 fd0c621c bfdfffff     .......?.b......
d005b128:	e1068f19 3fa55553 e89a359d bf56c087     ....SU.?.5....V.
d005b138:	027bf8c3 3ef99343 5995a603 bfc55554     ..{.C..>...YTU..
d005b148:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).
d005b158:	00000000 3ff00000 00000000 bff00000     .......?........
d005b168:	00000000 bff00000 00000000 3ff00000     ...............?
d005b178:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d005b188:	00000000 bff00000 fd0c621c 3fdfffff     .........b.....?
d005b198:	e1068f19 bfa55553 e89a359d 3f56c087     ....SU...5....V?
d005b1a8:	027bf8c3 bef99343 5995a603 bfc55554     ..{.C......YTU..
d005b1b8:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).

d005b1c8 <CSWTCH.8>:
d005b1c8:	bf490fdb 4016cbe4 c016cbe4              ..I....@....

d005b1d4 <CSWTCH.9>:
d005b1d4:	80000000 40490fdb c0490fdb              ......I@..I.

d005b1e0 <atanhi>:
d005b1e0:	3eed6338 3f490fda 3f7b985e 3fc90fda     8c.>..I?^.{?...?

d005b1f0 <atanlo>:
d005b1f0:	31ac3769 33222168 33140fb4 33a22168     i7.1h!"3...3h!.3

Disassembly of section .init:

d005b200 <_init>:
d005b200:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005b202:	bf00      	nop

Disassembly of section .fini:

d005b204 <_fini>:
d005b204:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005b206:	bf00      	nop
