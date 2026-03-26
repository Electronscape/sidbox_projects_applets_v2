
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
d005001e:	f008 fe85 	bl	d0058d2c <setbuf>
d0050022:	6833      	ldr	r3, [r6, #0]
d0050024:	2100      	movs	r1, #0
d0050026:	68d8      	ldr	r0, [r3, #12]
d0050028:	f008 fe80 	bl	d0058d2c <setbuf>
d005002c:	4629      	mov	r1, r5
d005002e:	4620      	mov	r0, r4
d0050030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0050034:	f000 bbde 	b.w	d00507f4 <main>
d0050038:	d005acbc 	.word	0xd005acbc

d005003c <initMalloc>:
d005003c:	4902      	ldr	r1, [pc, #8]	; (d0050048 <initMalloc+0xc>)
d005003e:	4b03      	ldr	r3, [pc, #12]	; (d005004c <initMalloc+0x10>)
d0050040:	4a03      	ldr	r2, [pc, #12]	; (d0050050 <initMalloc+0x14>)
d0050042:	1a5b      	subs	r3, r3, r1
d0050044:	6013      	str	r3, [r2, #0]
d0050046:	4770      	bx	lr
d0050048:	d00fd0b0 	.word	0xd00fd0b0
d005004c:	d0600000 	.word	0xd0600000
d0050050:	d00f4fe8 	.word	0xd00f4fe8

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
d005009c:	f008 fb32 	bl	d0058704 <__errno>
d00500a0:	2209      	movs	r2, #9
d00500a2:	4603      	mov	r3, r0
d00500a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00500a8:	601a      	str	r2, [r3, #0]
d00500aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00500ac:	d005ad24 	.word	0xd005ad24
d00500b0:	2001f000 	.word	0x2001f000

d00500b4 <_read>:
d00500b4:	b508      	push	{r3, lr}
d00500b6:	f008 fb25 	bl	d0058704 <__errno>
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
d0050102:	f008 faff 	bl	d0058704 <__errno>
d0050106:	220c      	movs	r2, #12
d0050108:	4603      	mov	r3, r0
d005010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d005010e:	601a      	str	r2, [r3, #0]
d0050110:	bd10      	pop	{r4, pc}
d0050112:	bf00      	nop
d0050114:	d005ad20 	.word	0xd005ad20
d0050118:	d00fd0b0 	.word	0xd00fd0b0
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
d0050170:	f008 fd0e 	bl	d0058b90 <memcmp>
d0050174:	b950      	cbnz	r0, d005018c <LoadSFX+0x6c>
d0050176:	2204      	movs	r2, #4
d0050178:	492c      	ldr	r1, [pc, #176]	; (d005022c <LoadSFX+0x10c>)
d005017a:	a805      	add	r0, sp, #20
d005017c:	f008 fd08 	bl	d0058b90 <memcmp>
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
d00501b4:	f008 fcdc 	bl	d0058b70 <malloc>
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
d0050228:	d005a068 	.word	0xd005a068
d005022c:	d005a070 	.word	0xd005a070

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
d005045e:	f001 f93f 	bl	d00516e0 <initDepthBandMem>
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
d00504a8:	d00f5080 	.word	0xd00f5080
d00504ac:	d00f5060 	.word	0xd00f5060

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
d00504fa:	f005 fd57 	bl	d0055fac <lightEnable>
d00504fe:	4628      	mov	r0, r5
d0050500:	ed9f 0aaa 	vldr	s0, [pc, #680]	; d00507ac <weatherLightning+0x2fc>
d0050504:	f005 fde8 	bl	d00560d8 <lightSetIntensity>
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
d0050586:	f005 fd11 	bl	d0055fac <lightEnable>
d005058a:	ed9f 7a8b 	vldr	s14, [pc, #556]	; d00507b8 <weatherLightning+0x308>
d005058e:	ee07 4a90 	vmov	s15, r4
d0050592:	ed9a 0a00 	vldr	s0, [sl]
d0050596:	4628      	mov	r0, r5
d0050598:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005059c:	eea7 0a87 	vfma.f32	s0, s15, s14
d00505a0:	f005 fd9a 	bl	d00560d8 <lightSetIntensity>
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
d0050608:	f005 fcd0 	bl	d0055fac <lightEnable>
d005060c:	4628      	mov	r0, r5
d005060e:	ed9f 0a67 	vldr	s0, [pc, #412]	; d00507ac <weatherLightning+0x2fc>
d0050612:	f005 fd61 	bl	d00560d8 <lightSetIntensity>
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
d0050786:	f005 fc11 	bl	d0055fac <lightEnable>
d005078a:	4628      	mov	r0, r5
d005078c:	ed9f 0a07 	vldr	s0, [pc, #28]	; d00507ac <weatherLightning+0x2fc>
d0050790:	f005 fca2 	bl	d00560d8 <lightSetIntensity>
d0050794:	2300      	movs	r3, #0
d0050796:	603b      	str	r3, [r7, #0]
d0050798:	e6c0      	b.n	d005051c <weatherLightning+0x6c>
d005079a:	bf00      	nop
d005079c:	3dcccccd 	.word	0x3dcccccd
d00507a0:	d005ac78 	.word	0xd005ac78
d00507a4:	d005ad4c 	.word	0xd005ad4c
d00507a8:	d005ac70 	.word	0xd005ac70
d00507ac:	00000000 	.word	0x00000000
d00507b0:	3c83126f 	.word	0x3c83126f
d00507b4:	d005ad30 	.word	0xd005ad30
d00507b8:	3ab3e71b 	.word	0x3ab3e71b
d00507bc:	d005ad34 	.word	0xd005ad34
d00507c0:	38cd000c 	.word	0x38cd000c
d00507c4:	3ca3d70a 	.word	0x3ca3d70a
d00507c8:	d005ad50 	.word	0xd005ad50
d00507cc:	3ad9d00e 	.word	0x3ad9d00e
d00507d0:	3e99999a 	.word	0x3e99999a
d00507d4:	3b33e71b 	.word	0x3b33e71b
d00507d8:	3f266666 	.word	0x3f266666
d00507dc:	3776000e 	.word	0x3776000e
d00507e0:	3ccccccd 	.word	0x3ccccccd
d00507e4:	d005ad2c 	.word	0xd005ad2c
d00507e8:	cccccccd 	.word	0xcccccccd
d00507ec:	3aace269 	.word	0x3aace269
d00507f0:	3f4ccccd 	.word	0x3f4ccccd

d00507f4 <main>:
d00507f4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00507f8:	ed2d 8b10 	vpush	{d8-d15}
d00507fc:	f5ad 4d89 	sub.w	sp, sp, #17536	; 0x4480
d0050800:	f244 13e7 	movw	r3, #16871	; 0x41e7
d0050804:	4cc1      	ldr	r4, [pc, #772]	; (d0050b0c <main+0x318>)
d0050806:	b08b      	sub	sp, #44	; 0x2c
d0050808:	ed9f 8ac1 	vldr	s16, [pc, #772]	; d0050b10 <main+0x31c>
d005080c:	f8df 8330 	ldr.w	r8, [pc, #816]	; d0050b40 <main+0x34c>
d0050810:	446b      	add	r3, sp
d0050812:	eeb0 aa48 	vmov.f32	s20, s16
d0050816:	eddf 9abf 	vldr	s19, [pc, #764]	; d0050b14 <main+0x320>
d005081a:	f023 0b1f 	bic.w	fp, r3, #31
d005081e:	f7ff fdbd 	bl	d005039c <initSystem>
d0050822:	7c23      	ldrb	r3, [r4, #16]
d0050824:	2100      	movs	r1, #0
d0050826:	7c62      	ldrb	r2, [r4, #17]
d0050828:	f50b 7708 	add.w	r7, fp, #544	; 0x220
d005082c:	7ca5      	ldrb	r5, [r4, #18]
d005082e:	f10b 06c0 	add.w	r6, fp, #192	; 0xc0
d0050832:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050836:	7ce2      	ldrb	r2, [r4, #19]
d0050838:	48b7      	ldr	r0, [pc, #732]	; (d0050b18 <main+0x324>)
d005083a:	f50b 7918 	add.w	r9, fp, #608	; 0x260
d005083e:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0050842:	f50b 75f0 	add.w	r5, fp, #480	; 0x1e0
d0050846:	9707      	str	r7, [sp, #28]
d0050848:	af48      	add	r7, sp, #288	; 0x120
d005084a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d005084e:	f50b 72b0 	add.w	r2, fp, #352	; 0x160
d0050852:	9508      	str	r5, [sp, #32]
d0050854:	f50b 7ad0 	add.w	sl, fp, #416	; 0x1a0
d0050858:	685b      	ldr	r3, [r3, #4]
d005085a:	9209      	str	r2, [sp, #36]	; 0x24
d005085c:	681b      	ldr	r3, [r3, #0]
d005085e:	4798      	blx	r3
d0050860:	7b23      	ldrb	r3, [r4, #12]
d0050862:	7b62      	ldrb	r2, [r4, #13]
d0050864:	2064      	movs	r0, #100	; 0x64
d0050866:	7ba1      	ldrb	r1, [r4, #14]
d0050868:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d005086c:	7be2      	ldrb	r2, [r4, #15]
d005086e:	f8cd b014 	str.w	fp, [sp, #20]
d0050872:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0050876:	ed9f 9aa9 	vldr	s18, [pc, #676]	; d0050b1c <main+0x328>
d005087a:	eddf 8aa9 	vldr	s17, [pc, #676]	; d0050b20 <main+0x32c>
d005087e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050882:	681b      	ldr	r3, [r3, #0]
d0050884:	689b      	ldr	r3, [r3, #8]
d0050886:	4798      	blx	r3
d0050888:	f004 f83a 	bl	d0054900 <worldClear>
d005088c:	f005 fb88 	bl	d0055fa0 <lightsClear>
d0050890:	f003 fd3a 	bl	d0054308 <sb3dParticlesClear>
d0050894:	f005 fc30 	bl	d00560f8 <setDefaultRenderMode>
d0050898:	4630      	mov	r0, r6
d005089a:	f004 f88f 	bl	d00549bc <cameraCreate>
d005089e:	4630      	mov	r0, r6
d00508a0:	eddf 0aa0 	vldr	s1, [pc, #640]	; d0050b24 <main+0x330>
d00508a4:	ed9f 0aa0 	vldr	s0, [pc, #640]	; d0050b28 <main+0x334>
d00508a8:	f004 fa52 	bl	d0054d50 <cameraSetRange>
d00508ac:	eeb0 1a48 	vmov.f32	s2, s16
d00508b0:	eeb0 0a48 	vmov.f32	s0, s16
d00508b4:	eddf 0a9d 	vldr	s1, [pc, #628]	; d0050b2c <main+0x338>
d00508b8:	f003 fca0 	bl	d00541fc <vec3>
d00508bc:	4630      	mov	r0, r6
d00508be:	edcd 0a2b 	vstr	s1, [sp, #172]	; 0xac
d00508c2:	ed8d 0a2a 	vstr	s0, [sp, #168]	; 0xa8
d00508c6:	ed8d 1a2c 	vstr	s2, [sp, #176]	; 0xb0
d00508ca:	f004 f881 	bl	d00549d0 <cameraSetPosition>
d00508ce:	4630      	mov	r0, r6
d00508d0:	f004 f81e 	bl	d0054910 <cameraNormalize>
d00508d4:	ab4d      	add	r3, sp, #308	; 0x134
d00508d6:	f04f 4c7f 	mov.w	ip, #4278190080	; 0xff000000
d00508da:	461d      	mov	r5, r3
d00508dc:	e8b8 000f 	ldmia.w	r8!, {r0, r1, r2, r3}
d00508e0:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d00508e2:	e8b8 000f 	ldmia.w	r8!, {r0, r1, r2, r3}
d00508e6:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d00508e8:	e8b8 000f 	ldmia.w	r8!, {r0, r1, r2, r3}
d00508ec:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d00508ee:	e898 000f 	ldmia.w	r8, {r0, r1, r2, r3}
d00508f2:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d00508f6:	4b8e      	ldr	r3, [pc, #568]	; (d0050b30 <main+0x33c>)
d00508f8:	f108 0510 	add.w	r5, r8, #16
d00508fc:	f8c3 c000 	str.w	ip, [r3]
d0050900:	9700      	str	r7, [sp, #0]
d0050902:	f8c3 c040 	str.w	ip, [r3, #64]	; 0x40
d0050906:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0050908:	682d      	ldr	r5, [r5, #0]
d005090a:	c70f      	stmia	r7!, {r0, r1, r2, r3}
d005090c:	4663      	mov	r3, ip
d005090e:	603d      	str	r5, [r7, #0]
d0050910:	a94d      	add	r1, sp, #308	; 0x134
d0050912:	4887      	ldr	r0, [pc, #540]	; (d0050b30 <main+0x33c>)
d0050914:	2210      	movs	r2, #16
d0050916:	2500      	movs	r5, #0
d0050918:	f005 f8ee 	bl	d0055af8 <buildLightingCLUT>
d005091c:	7b23      	ldrb	r3, [r4, #12]
d005091e:	a924      	add	r1, sp, #144	; 0x90
d0050920:	7b62      	ldrb	r2, [r4, #13]
d0050922:	4883      	ldr	r0, [pc, #524]	; (d0050b30 <main+0x33c>)
d0050924:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050928:	9104      	str	r1, [sp, #16]
d005092a:	7ba1      	ldrb	r1, [r4, #14]
d005092c:	7be2      	ldrb	r2, [r4, #15]
d005092e:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0050932:	9506      	str	r5, [sp, #24]
d0050934:	ad1e      	add	r5, sp, #120	; 0x78
d0050936:	4f7f      	ldr	r7, [pc, #508]	; (d0050b34 <main+0x340>)
d0050938:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d005093c:	681b      	ldr	r3, [r3, #0]
d005093e:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d0050940:	4798      	blx	r3
d0050942:	eeb0 1a48 	vmov.f32	s2, s16
d0050946:	eef0 0a48 	vmov.f32	s1, s16
d005094a:	eeb0 0a48 	vmov.f32	s0, s16
d005094e:	f003 fc55 	bl	d00541fc <vec3>
d0050952:	eddf 1a75 	vldr	s3, [pc, #468]	; d0050b28 <main+0x334>
d0050956:	2001      	movs	r0, #1
d0050958:	edcd 0a2e 	vstr	s1, [sp, #184]	; 0xb8
d005095c:	ed8d 0a2d 	vstr	s0, [sp, #180]	; 0xb4
d0050960:	ed8d 1a2f 	vstr	s2, [sp, #188]	; 0xbc
d0050964:	f005 fb30 	bl	d0055fc8 <addPointLight>
d0050968:	f108 0324 	add.w	r3, r8, #36	; 0x24
d005096c:	4680      	mov	r8, r0
d005096e:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d0050972:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0050976:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d005097a:	2001      	movs	r0, #1
d005097c:	edd5 0a01 	vldr	s1, [r5, #4]
d0050980:	ed95 1a02 	vldr	s2, [r5, #8]
d0050984:	ed95 0a00 	vldr	s0, [r5]
d0050988:	f005 fb5a 	bl	d0056040 <addDirectionalLight>
d005098c:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0050990:	b2c3      	uxtb	r3, r0
d0050992:	ee0f 3a10 	vmov	s30, r3
d0050996:	4618      	mov	r0, r3
d0050998:	f005 fb9e 	bl	d00560d8 <lightSetIntensity>
d005099c:	2100      	movs	r1, #0
d005099e:	ee1f 0a10 	vmov	r0, s30
d00509a2:	f005 fb03 	bl	d0055fac <lightEnable>
d00509a6:	f50b 7130 	add.w	r1, fp, #704	; 0x2c0
d00509aa:	4863      	ldr	r0, [pc, #396]	; (d0050b38 <main+0x344>)
d00509ac:	f7ff fbb8 	bl	d0050120 <LoadSFX>
d00509b0:	7c21      	ldrb	r1, [r4, #16]
d00509b2:	7c65      	ldrb	r5, [r4, #17]
d00509b4:	4602      	mov	r2, r0
d00509b6:	f894 c012 	ldrb.w	ip, [r4, #18]
d00509ba:	2300      	movs	r3, #0
d00509bc:	ea41 2505 	orr.w	r5, r1, r5, lsl #8
d00509c0:	7ce0      	ldrb	r0, [r4, #19]
d00509c2:	f8db 12c0 	ldr.w	r1, [fp, #704]	; 0x2c0
d00509c6:	ea45 450c 	orr.w	r5, r5, ip, lsl #16
d00509ca:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d00509ce:	4618      	mov	r0, r3
d00509d0:	68ad      	ldr	r5, [r5, #8]
d00509d2:	68ed      	ldr	r5, [r5, #12]
d00509d4:	47a8      	blx	r5
d00509d6:	7c23      	ldrb	r3, [r4, #16]
d00509d8:	7c62      	ldrb	r2, [r4, #17]
d00509da:	f644 6184 	movw	r1, #20100	; 0x4e84
d00509de:	7ca5      	ldrb	r5, [r4, #18]
d00509e0:	2000      	movs	r0, #0
d00509e2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00509e6:	7ce2      	ldrb	r2, [r4, #19]
d00509e8:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00509ec:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00509f0:	689b      	ldr	r3, [r3, #8]
d00509f2:	691b      	ldr	r3, [r3, #16]
d00509f4:	4798      	blx	r3
d00509f6:	7c23      	ldrb	r3, [r4, #16]
d00509f8:	7c62      	ldrb	r2, [r4, #17]
d00509fa:	f44f 71dc 	mov.w	r1, #440	; 0x1b8
d00509fe:	7ca5      	ldrb	r5, [r4, #18]
d0050a00:	2000      	movs	r0, #0
d0050a02:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050a06:	7ce2      	ldrb	r2, [r4, #19]
d0050a08:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0050a0c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050a10:	689b      	ldr	r3, [r3, #8]
d0050a12:	695b      	ldr	r3, [r3, #20]
d0050a14:	4798      	blx	r3
d0050a16:	7c23      	ldrb	r3, [r4, #16]
d0050a18:	7c62      	ldrb	r2, [r4, #17]
d0050a1a:	f06f 013f 	mvn.w	r1, #63	; 0x3f
d0050a1e:	7ca5      	ldrb	r5, [r4, #18]
d0050a20:	2000      	movs	r0, #0
d0050a22:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050a26:	7ce2      	ldrb	r2, [r4, #19]
d0050a28:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0050a2c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050a30:	689b      	ldr	r3, [r3, #8]
d0050a32:	699b      	ldr	r3, [r3, #24]
d0050a34:	4798      	blx	r3
d0050a36:	7c23      	ldrb	r3, [r4, #16]
d0050a38:	7c62      	ldrb	r2, [r4, #17]
d0050a3a:	2100      	movs	r1, #0
d0050a3c:	7ca5      	ldrb	r5, [r4, #18]
d0050a3e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050a42:	7ce2      	ldrb	r2, [r4, #19]
d0050a44:	4608      	mov	r0, r1
d0050a46:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0050a4a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050a4e:	689b      	ldr	r3, [r3, #8]
d0050a50:	6a1b      	ldr	r3, [r3, #32]
d0050a52:	4798      	blx	r3
d0050a54:	f50b 7128 	add.w	r1, fp, #672	; 0x2a0
d0050a58:	4838      	ldr	r0, [pc, #224]	; (d0050b3c <main+0x348>)
d0050a5a:	f7ff fb61 	bl	d0050120 <LoadSFX>
d0050a5e:	7c21      	ldrb	r1, [r4, #16]
d0050a60:	7c65      	ldrb	r5, [r4, #17]
d0050a62:	4602      	mov	r2, r0
d0050a64:	f894 c012 	ldrb.w	ip, [r4, #18]
d0050a68:	2300      	movs	r3, #0
d0050a6a:	ea41 2505 	orr.w	r5, r1, r5, lsl #8
d0050a6e:	7ce0      	ldrb	r0, [r4, #19]
d0050a70:	f8db 12a0 	ldr.w	r1, [fp, #672]	; 0x2a0
d0050a74:	ea45 450c 	orr.w	r5, r5, ip, lsl #16
d0050a78:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d0050a7c:	2001      	movs	r0, #1
d0050a7e:	68ad      	ldr	r5, [r5, #8]
d0050a80:	68ed      	ldr	r5, [r5, #12]
d0050a82:	47a8      	blx	r5
d0050a84:	7c23      	ldrb	r3, [r4, #16]
d0050a86:	7c62      	ldrb	r2, [r4, #17]
d0050a88:	f244 21cc 	movw	r1, #17100	; 0x42cc
d0050a8c:	7ca0      	ldrb	r0, [r4, #18]
d0050a8e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050a92:	7ce2      	ldrb	r2, [r4, #19]
d0050a94:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0050a98:	2001      	movs	r0, #1
d0050a9a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050a9e:	689b      	ldr	r3, [r3, #8]
d0050aa0:	691b      	ldr	r3, [r3, #16]
d0050aa2:	4798      	blx	r3
d0050aa4:	7c23      	ldrb	r3, [r4, #16]
d0050aa6:	7c62      	ldrb	r2, [r4, #17]
d0050aa8:	f44f 71dc 	mov.w	r1, #440	; 0x1b8
d0050aac:	2001      	movs	r0, #1
d0050aae:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050ab2:	7ca2      	ldrb	r2, [r4, #18]
d0050ab4:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0050ab8:	7ce2      	ldrb	r2, [r4, #19]
d0050aba:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050abe:	689b      	ldr	r3, [r3, #8]
d0050ac0:	695b      	ldr	r3, [r3, #20]
d0050ac2:	4798      	blx	r3
d0050ac4:	7c23      	ldrb	r3, [r4, #16]
d0050ac6:	7c62      	ldrb	r2, [r4, #17]
d0050ac8:	2140      	movs	r1, #64	; 0x40
d0050aca:	2001      	movs	r0, #1
d0050acc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050ad0:	7ca2      	ldrb	r2, [r4, #18]
d0050ad2:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0050ad6:	7ce2      	ldrb	r2, [r4, #19]
d0050ad8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050adc:	689b      	ldr	r3, [r3, #8]
d0050ade:	699b      	ldr	r3, [r3, #24]
d0050ae0:	4798      	blx	r3
d0050ae2:	7c23      	ldrb	r3, [r4, #16]
d0050ae4:	7c62      	ldrb	r2, [r4, #17]
d0050ae6:	2100      	movs	r1, #0
d0050ae8:	2001      	movs	r0, #1
d0050aea:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050aee:	7ca2      	ldrb	r2, [r4, #18]
d0050af0:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0050af4:	7ce2      	ldrb	r2, [r4, #19]
d0050af6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050afa:	689b      	ldr	r3, [r3, #8]
d0050afc:	6a1b      	ldr	r3, [r3, #32]
d0050afe:	4798      	blx	r3
d0050b00:	2309      	movs	r3, #9
d0050b02:	203b      	movs	r0, #59	; 0x3b
d0050b04:	222b      	movs	r2, #43	; 0x2b
d0050b06:	703b      	strb	r3, [r7, #0]
d0050b08:	2302      	movs	r3, #2
d0050b0a:	e01b      	b.n	d0050b44 <main+0x350>
d0050b0c:	2001f000 	.word	0x2001f000
d0050b10:	00000000 	.word	0x00000000
d0050b14:	42280000 	.word	0x42280000
d0050b18:	d005a078 	.word	0xd005a078
d0050b1c:	c3750000 	.word	0xc3750000
d0050b20:	42b40000 	.word	0x42b40000
d0050b24:	459c4000 	.word	0x459c4000
d0050b28:	3c23d70a 	.word	0x3c23d70a
d0050b2c:	42480000 	.word	0x42480000
d0050b30:	d005a870 	.word	0xd005a870
d0050b34:	d00f5041 	.word	0xd00f5041
d0050b38:	d005a084 	.word	0xd005a084
d0050b3c:	d005a094 	.word	0xd005a094
d0050b40:	d005a10c 	.word	0xd005a10c
d0050b44:	4fd7      	ldr	r7, [pc, #860]	; (d0050ea4 <main+0x6b0>)
d0050b46:	4649      	mov	r1, r9
d0050b48:	ed9f 0ad7 	vldr	s0, [pc, #860]	; d0050ea8 <main+0x6b4>
d0050b4c:	7038      	strb	r0, [r7, #0]
d0050b4e:	48d7      	ldr	r0, [pc, #860]	; (d0050eac <main+0x6b8>)
d0050b50:	7002      	strb	r2, [r0, #0]
d0050b52:	4ad7      	ldr	r2, [pc, #860]	; (d0050eb0 <main+0x6bc>)
d0050b54:	48d7      	ldr	r0, [pc, #860]	; (d0050eb4 <main+0x6c0>)
d0050b56:	7013      	strb	r3, [r2, #0]
d0050b58:	f007 fbd4 	bl	d0058304 <loadMeshSB3D>
d0050b5c:	eeb0 1a48 	vmov.f32	s2, s16
d0050b60:	eef0 0a48 	vmov.f32	s1, s16
d0050b64:	eeb0 0a48 	vmov.f32	s0, s16
d0050b68:	f003 fb48 	bl	d00541fc <vec3>
d0050b6c:	4648      	mov	r0, r9
d0050b6e:	edcd 0a31 	vstr	s1, [sp, #196]	; 0xc4
d0050b72:	ed8d 0a30 	vstr	s0, [sp, #192]	; 0xc0
d0050b76:	ed8d 1a32 	vstr	s2, [sp, #200]	; 0xc8
d0050b7a:	f004 fbf9 	bl	d0055370 <entityWorldSpawn>
d0050b7e:	2101      	movs	r1, #1
d0050b80:	f004 ff9e 	bl	d0055ac0 <entityAllowHit>
d0050b84:	eeb0 2a48 	vmov.f32	s4, s16
d0050b88:	eddf 1acb 	vldr	s3, [pc, #812]	; d0050eb8 <main+0x6c4>
d0050b8c:	eeb0 1a48 	vmov.f32	s2, s16
d0050b90:	eeb0 0a48 	vmov.f32	s0, s16
d0050b94:	4648      	mov	r0, r9
d0050b96:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d0050b9a:	f000 fd95 	bl	d00516c8 <meshSetMaterial>
d0050b9e:	eeb2 1a04 	vmov.f32	s2, #36	; 0x41200000  10.0
d0050ba2:	9f07      	ldr	r7, [sp, #28]
d0050ba4:	eef0 0a41 	vmov.f32	s1, s2
d0050ba8:	4638      	mov	r0, r7
d0050baa:	eeb0 0a41 	vmov.f32	s0, s2
d0050bae:	f004 fd77 	bl	d00556a0 <createBox>
d0050bb2:	eef0 0a48 	vmov.f32	s1, s16
d0050bb6:	eeb0 1a48 	vmov.f32	s2, s16
d0050bba:	4638      	mov	r0, r7
d0050bbc:	eeb0 0a48 	vmov.f32	s0, s16
d0050bc0:	ed8d 8a21 	vstr	s16, [sp, #132]	; 0x84
d0050bc4:	ed8d 8a22 	vstr	s16, [sp, #136]	; 0x88
d0050bc8:	ed8d 8a23 	vstr	s16, [sp, #140]	; 0x8c
d0050bcc:	f004 fbd0 	bl	d0055370 <entityWorldSpawn>
d0050bd0:	9f08      	ldr	r7, [sp, #32]
d0050bd2:	ed9f 0aba 	vldr	s0, [pc, #744]	; d0050ebc <main+0x6c8>
d0050bd6:	4639      	mov	r1, r7
d0050bd8:	48b9      	ldr	r0, [pc, #740]	; (d0050ec0 <main+0x6cc>)
d0050bda:	f007 fb93 	bl	d0058304 <loadMeshSB3D>
d0050bde:	eef0 0a48 	vmov.f32	s1, s16
d0050be2:	ed9f 1ab8 	vldr	s2, [pc, #736]	; d0050ec4 <main+0x6d0>
d0050be6:	ed9f 0ab8 	vldr	s0, [pc, #736]	; d0050ec8 <main+0x6d4>
d0050bea:	f003 fb07 	bl	d00541fc <vec3>
d0050bee:	4638      	mov	r0, r7
d0050bf0:	edcd 0a34 	vstr	s1, [sp, #208]	; 0xd0
d0050bf4:	ed8d 1a35 	vstr	s2, [sp, #212]	; 0xd4
d0050bf8:	ed8d 0a33 	vstr	s0, [sp, #204]	; 0xcc
d0050bfc:	f004 fbb8 	bl	d0055370 <entityWorldSpawn>
d0050c00:	eeb2 0a04 	vmov.f32	s0, #36	; 0x41200000  10.0
d0050c04:	4651      	mov	r1, sl
d0050c06:	4607      	mov	r7, r0
d0050c08:	48b0      	ldr	r0, [pc, #704]	; (d0050ecc <main+0x6d8>)
d0050c0a:	f007 fb7b 	bl	d0058304 <loadMeshSB3D>
d0050c0e:	f8dd 9024 	ldr.w	r9, [sp, #36]	; 0x24
d0050c12:	4651      	mov	r1, sl
d0050c14:	4648      	mov	r0, r9
d0050c16:	f004 fec3 	bl	d00559a0 <copyMesh>
d0050c1a:	ed9f 1aad 	vldr	s2, [pc, #692]	; d0050ed0 <main+0x6dc>
d0050c1e:	eddf 0aa7 	vldr	s1, [pc, #668]	; d0050ebc <main+0x6c8>
d0050c22:	ed9f 0aac 	vldr	s0, [pc, #688]	; d0050ed4 <main+0x6e0>
d0050c26:	f003 fae9 	bl	d00541fc <vec3>
d0050c2a:	4648      	mov	r0, r9
d0050c2c:	ed8d 0a36 	vstr	s0, [sp, #216]	; 0xd8
d0050c30:	edcd 0a37 	vstr	s1, [sp, #220]	; 0xdc
d0050c34:	ed8d 1a38 	vstr	s2, [sp, #224]	; 0xe0
d0050c38:	f004 fb9a 	bl	d0055370 <entityWorldSpawn>
d0050c3c:	eeb0 1a48 	vmov.f32	s2, s16
d0050c40:	4681      	mov	r9, r0
d0050c42:	eef0 0a48 	vmov.f32	s1, s16
d0050c46:	eeb0 0a48 	vmov.f32	s0, s16
d0050c4a:	ee08 6a10 	vmov	s16, r6
d0050c4e:	f003 fad5 	bl	d00541fc <vec3>
d0050c52:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d0050c56:	2001      	movs	r0, #1
d0050c58:	edcd 0a3a 	vstr	s1, [sp, #232]	; 0xe8
d0050c5c:	ed8d 0a39 	vstr	s0, [sp, #228]	; 0xe4
d0050c60:	465e      	mov	r6, fp
d0050c62:	ed8d 1a3b 	vstr	s2, [sp, #236]	; 0xec
d0050c66:	f005 f9af 	bl	d0055fc8 <addPointLight>
d0050c6a:	b2c3      	uxtb	r3, r0
d0050c6c:	ed9f 1a9a 	vldr	s2, [pc, #616]	; d0050ed8 <main+0x6e4>
d0050c70:	eddf 0a9a 	vldr	s1, [pc, #616]	; d0050edc <main+0x6e8>
d0050c74:	46c3      	mov	fp, r8
d0050c76:	ed9f 0a9a 	vldr	s0, [pc, #616]	; d0050ee0 <main+0x6ec>
d0050c7a:	4618      	mov	r0, r3
d0050c7c:	ee0e 3a10 	vmov	s28, r3
d0050c80:	f005 f970 	bl	d0055f64 <lightSetRanges>
d0050c84:	f8dd 8018 	ldr.w	r8, [sp, #24]
d0050c88:	4651      	mov	r1, sl
d0050c8a:	a80a      	add	r0, sp, #40	; 0x28
d0050c8c:	f004 fe88 	bl	d00559a0 <copyMesh>
d0050c90:	2364      	movs	r3, #100	; 0x64
d0050c92:	eb06 1588 	add.w	r5, r6, r8, lsl #6
d0050c96:	f108 0801 	add.w	r8, r8, #1
d0050c9a:	f10d 0c28 	add.w	ip, sp, #40	; 0x28
d0050c9e:	eef0 0a69 	vmov.f32	s1, s19
d0050ca2:	fb03 f308 	mul.w	r3, r3, r8
d0050ca6:	eeb0 0a49 	vmov.f32	s0, s18
d0050caa:	ee01 3a10 	vmov	s2, r3
d0050cae:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d0050cb2:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0050cb4:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d0050cb8:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0050cba:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d0050cbe:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0050cc0:	e89c 000f 	ldmia.w	ip, {r0, r1, r2, r3}
d0050cc4:	eeb8 1ac1 	vcvt.f32.s32	s2, s2
d0050cc8:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d0050ccc:	f003 fa96 	bl	d00541fc <vec3>
d0050cd0:	9b05      	ldr	r3, [sp, #20]
d0050cd2:	edcd 0a3d 	vstr	s1, [sp, #244]	; 0xf4
d0050cd6:	4618      	mov	r0, r3
d0050cd8:	3340      	adds	r3, #64	; 0x40
d0050cda:	ed8d 1a3e 	vstr	s2, [sp, #248]	; 0xf8
d0050cde:	ed8d 0a3c 	vstr	s0, [sp, #240]	; 0xf0
d0050ce2:	9305      	str	r3, [sp, #20]
d0050ce4:	f004 fb44 	bl	d0055370 <entityWorldSpawn>
d0050ce8:	9b04      	ldr	r3, [sp, #16]
d0050cea:	4605      	mov	r5, r0
d0050cec:	eeb0 0a68 	vmov.f32	s0, s17
d0050cf0:	f843 0b04 	str.w	r0, [r3], #4
d0050cf4:	9304      	str	r3, [sp, #16]
d0050cf6:	f003 fa85 	bl	d0054204 <degrees>
d0050cfa:	eeb0 1a4a 	vmov.f32	s2, s20
d0050cfe:	4628      	mov	r0, r5
d0050d00:	2101      	movs	r1, #1
d0050d02:	eddf 0a78 	vldr	s1, [pc, #480]	; d0050ee4 <main+0x6f0>
d0050d06:	f004 fcb9 	bl	d005567c <entityRotation>
d0050d0a:	f1b8 0f03 	cmp.w	r8, #3
d0050d0e:	d1bb      	bne.n	d0050c88 <main+0x494>
d0050d10:	46d8      	mov	r8, fp
d0050d12:	46b3      	mov	fp, r6
d0050d14:	2301      	movs	r3, #1
d0050d16:	9825      	ldr	r0, [sp, #148]	; 0x94
d0050d18:	ed9f 1a63 	vldr	s2, [pc, #396]	; d0050ea8 <main+0x6b4>
d0050d1c:	f50b 7590 	add.w	r5, fp, #288	; 0x120
d0050d20:	eddf 0a71 	vldr	s1, [pc, #452]	; d0050ee8 <main+0x6f4>
d0050d24:	ee18 6a10 	vmov	r6, s16
d0050d28:	ed9f 0a70 	vldr	s0, [pc, #448]	; d0050eec <main+0x6f8>
d0050d2c:	fa5f fa88 	uxtb.w	sl, r8
d0050d30:	9304      	str	r3, [sp, #16]
d0050d32:	ee0e 7a90 	vmov	s29, r7
d0050d36:	9005      	str	r0, [sp, #20]
d0050d38:	f003 fa60 	bl	d00541fc <vec3>
d0050d3c:	9805      	ldr	r0, [sp, #20]
d0050d3e:	ee0d 9a10 	vmov	s26, r9
d0050d42:	edcd 0a40 	vstr	s1, [sp, #256]	; 0x100
d0050d46:	ed8d 1a41 	vstr	s2, [sp, #260]	; 0x104
d0050d4a:	ed8d 0a3f 	vstr	s0, [sp, #252]	; 0xfc
d0050d4e:	f004 fb55 	bl	d00553fc <entitySetPosition>
d0050d52:	4629      	mov	r1, r5
d0050d54:	ed9f 0a59 	vldr	s0, [pc, #356]	; d0050ebc <main+0x6c8>
d0050d58:	4865      	ldr	r0, [pc, #404]	; (d0050ef0 <main+0x6fc>)
d0050d5a:	f007 fad3 	bl	d0058304 <loadMeshSB3D>
d0050d5e:	ed9f 1a52 	vldr	s2, [pc, #328]	; d0050ea8 <main+0x6b4>
d0050d62:	eddf 0a64 	vldr	s1, [pc, #400]	; d0050ef4 <main+0x700>
d0050d66:	ed9f 0a64 	vldr	s0, [pc, #400]	; d0050ef8 <main+0x704>
d0050d6a:	f003 fa47 	bl	d00541fc <vec3>
d0050d6e:	4628      	mov	r0, r5
d0050d70:	ed8d 0a42 	vstr	s0, [sp, #264]	; 0x108
d0050d74:	edcd 0a43 	vstr	s1, [sp, #268]	; 0x10c
d0050d78:	ed8d 1a44 	vstr	s2, [sp, #272]	; 0x110
d0050d7c:	f004 faf8 	bl	d0055370 <entityWorldSpawn>
d0050d80:	ed9f 1a58 	vldr	s2, [pc, #352]	; d0050ee4 <main+0x6f0>
d0050d84:	4603      	mov	r3, r0
d0050d86:	eef0 1a00 	vmov.f32	s3, #0	; 0x40000000  2.0
d0050d8a:	ed9f 2a5c 	vldr	s4, [pc, #368]	; d0050efc <main+0x708>
d0050d8e:	eeb0 0a41 	vmov.f32	s0, s2
d0050d92:	4628      	mov	r0, r5
d0050d94:	eddf 0a5a 	vldr	s1, [pc, #360]	; d0050f00 <main+0x70c>
d0050d98:	ee0d 3a90 	vmov	s27, r3
d0050d9c:	f000 fc94 	bl	d00516c8 <meshSetMaterial>
d0050da0:	2301      	movs	r3, #1
d0050da2:	2216      	movs	r2, #22
d0050da4:	4957      	ldr	r1, [pc, #348]	; (d0050f04 <main+0x710>)
d0050da6:	a85d      	add	r0, sp, #372	; 0x174
d0050da8:	ed9f 0a57 	vldr	s0, [pc, #348]	; d0050f08 <main+0x714>
d0050dac:	f7ff faa4 	bl	d00502f8 <splineRailInit>
d0050db0:	a85d      	add	r0, sp, #372	; 0x174
d0050db2:	ed9f 1a56 	vldr	s2, [pc, #344]	; d0050f0c <main+0x718>
d0050db6:	eddf 0a56 	vldr	s1, [pc, #344]	; d0050f10 <main+0x71c>
d0050dba:	ed9f 0a56 	vldr	s0, [pc, #344]	; d0050f14 <main+0x720>
d0050dbe:	f7ff fac9 	bl	d0050354 <splineRailSetTuning>
d0050dc2:	eef7 0a08 	vmov.f32	s1, #120	; 0x3fc00000  1.5
d0050dc6:	eeb0 0a00 	vmov.f32	s0, #0	; 0x40000000  2.0
d0050dca:	ed9f 1a53 	vldr	s2, [pc, #332]	; d0050f18 <main+0x724>
d0050dce:	a85d      	add	r0, sp, #372	; 0x174
d0050dd0:	4d52      	ldr	r5, [pc, #328]	; (d0050f1c <main+0x728>)
d0050dd2:	f7ff fac7 	bl	d0050364 <splineRailSetBanking>
d0050dd6:	2000      	movs	r0, #0
d0050dd8:	f005 f99c 	bl	d0056114 <enableFlatMode>
d0050ddc:	7b23      	ldrb	r3, [r4, #12]
d0050dde:	7b62      	ldrb	r2, [r4, #13]
d0050de0:	7ba1      	ldrb	r1, [r4, #14]
d0050de2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050de6:	7be2      	ldrb	r2, [r4, #15]
d0050de8:	6828      	ldr	r0, [r5, #0]
d0050dea:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0050dee:	ed9f 9a4c 	vldr	s18, [pc, #304]	; d0050f20 <main+0x72c>
d0050df2:	eddf 9a3b 	vldr	s19, [pc, #236]	; d0050ee0 <main+0x6ec>
d0050df6:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050dfa:	ed9f aa4a 	vldr	s20, [pc, #296]	; d0050f24 <main+0x730>
d0050dfe:	eddf 8a39 	vldr	s17, [pc, #228]	; d0050ee4 <main+0x6f0>
d0050e02:	681b      	ldr	r3, [r3, #0]
d0050e04:	69db      	ldr	r3, [r3, #28]
d0050e06:	4798      	blx	r3
d0050e08:	7b23      	ldrb	r3, [r4, #12]
d0050e0a:	7b62      	ldrb	r2, [r4, #13]
d0050e0c:	7ba1      	ldrb	r1, [r4, #14]
d0050e0e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050e12:	7be2      	ldrb	r2, [r4, #15]
d0050e14:	6828      	ldr	r0, [r5, #0]
d0050e16:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0050e1a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050e1e:	681b      	ldr	r3, [r3, #0]
d0050e20:	699b      	ldr	r3, [r3, #24]
d0050e22:	4798      	blx	r3
d0050e24:	7b23      	ldrb	r3, [r4, #12]
d0050e26:	7b62      	ldrb	r2, [r4, #13]
d0050e28:	2001      	movs	r0, #1
d0050e2a:	7ba1      	ldrb	r1, [r4, #14]
d0050e2c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050e30:	7be2      	ldrb	r2, [r4, #15]
d0050e32:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0050e36:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050e3a:	685b      	ldr	r3, [r3, #4]
d0050e3c:	68db      	ldr	r3, [r3, #12]
d0050e3e:	4798      	blx	r3
d0050e40:	7b23      	ldrb	r3, [r4, #12]
d0050e42:	7b62      	ldrb	r2, [r4, #13]
d0050e44:	211e      	movs	r1, #30
d0050e46:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050e4a:	7ba2      	ldrb	r2, [r4, #14]
d0050e4c:	4608      	mov	r0, r1
d0050e4e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0050e52:	7be2      	ldrb	r2, [r4, #15]
d0050e54:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050e58:	685b      	ldr	r3, [r3, #4]
d0050e5a:	689b      	ldr	r3, [r3, #8]
d0050e5c:	4798      	blx	r3
d0050e5e:	7823      	ldrb	r3, [r4, #0]
d0050e60:	7862      	ldrb	r2, [r4, #1]
d0050e62:	a91b      	add	r1, sp, #108	; 0x6c
d0050e64:	a81a      	add	r0, sp, #104	; 0x68
d0050e66:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050e6a:	78a2      	ldrb	r2, [r4, #2]
d0050e6c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0050e70:	78e2      	ldrb	r2, [r4, #3]
d0050e72:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050e76:	691b      	ldr	r3, [r3, #16]
d0050e78:	4798      	blx	r3
d0050e7a:	7823      	ldrb	r3, [r4, #0]
d0050e7c:	7862      	ldrb	r2, [r4, #1]
d0050e7e:	78a1      	ldrb	r1, [r4, #2]
d0050e80:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050e84:	78e2      	ldrb	r2, [r4, #3]
d0050e86:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0050e8a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050e8e:	69db      	ldr	r3, [r3, #28]
d0050e90:	4798      	blx	r3
d0050e92:	7823      	ldrb	r3, [r4, #0]
d0050e94:	7862      	ldrb	r2, [r4, #1]
d0050e96:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050e9a:	78a2      	ldrb	r2, [r4, #2]
d0050e9c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0050ea0:	78e2      	ldrb	r2, [r4, #3]
d0050ea2:	e041      	b.n	d0050f28 <main+0x734>
d0050ea4:	d00f5000 	.word	0xd00f5000
d0050ea8:	43480000 	.word	0x43480000
d0050eac:	d00f5042 	.word	0xd00f5042
d0050eb0:	d00f5040 	.word	0xd00f5040
d0050eb4:	d005a0a4 	.word	0xd005a0a4
d0050eb8:	3e4ccccd 	.word	0x3e4ccccd
d0050ebc:	42480000 	.word	0x42480000
d0050ec0:	d005a0b4 	.word	0xd005a0b4
d0050ec4:	c2c80000 	.word	0xc2c80000
d0050ec8:	44f3c000 	.word	0x44f3c000
d0050ecc:	d005a0c4 	.word	0xd005a0c4
d0050ed0:	c3480000 	.word	0xc3480000
d0050ed4:	c3070000 	.word	0xc3070000
d0050ed8:	44048000 	.word	0x44048000
d0050edc:	43a00000 	.word	0x43a00000
d0050ee0:	42c80000 	.word	0x42c80000
d0050ee4:	00000000 	.word	0x00000000
d0050ee8:	42a40000 	.word	0x42a40000
d0050eec:	c3750000 	.word	0xc3750000
d0050ef0:	d005a0d0 	.word	0xd005a0d0
d0050ef4:	43af0000 	.word	0x43af0000
d0050ef8:	44fa0000 	.word	0x44fa0000
d0050efc:	42c00000 	.word	0x42c00000
d0050f00:	3ee66666 	.word	0x3ee66666
d0050f04:	d005a16c 	.word	0xd005a16c
d0050f08:	43340000 	.word	0x43340000
d0050f0c:	402ccccd 	.word	0x402ccccd
d0050f10:	3fe66666 	.word	0x3fe66666
d0050f14:	3fb33333 	.word	0x3fb33333
d0050f18:	3f59999a 	.word	0x3f59999a
d0050f1c:	d00f5080 	.word	0xd00f5080
d0050f20:	3b83126f 	.word	0x3b83126f
d0050f24:	4d7bc521 	.word	0x4d7bc521
d0050f28:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050f2c:	689b      	ldr	r3, [r3, #8]
d0050f2e:	4798      	blx	r3
d0050f30:	4605      	mov	r5, r0
d0050f32:	e0f7      	b.n	d0051124 <main+0x930>
d0050f34:	9b04      	ldr	r3, [sp, #16]
d0050f36:	46d8      	mov	r8, fp
d0050f38:	ee1a 6a90 	vmov	r6, s21
d0050f3c:	f8dd b018 	ldr.w	fp, [sp, #24]
d0050f40:	2b00      	cmp	r3, #0
d0050f42:	f040 8315 	bne.w	d0051570 <main+0xd7c>
d0050f46:	9b07      	ldr	r3, [sp, #28]
d0050f48:	eeb0 0a68 	vmov.f32	s0, s17
d0050f4c:	2b00      	cmp	r3, #0
d0050f4e:	f000 8304 	beq.w	d005155a <main+0xd66>
d0050f52:	49c7      	ldr	r1, [pc, #796]	; (d0051270 <main+0xa7c>)
d0050f54:	2305      	movs	r3, #5
d0050f56:	2215      	movs	r2, #21
d0050f58:	ee1a 0a90 	vmov	r0, s21
d0050f5c:	7809      	ldrb	r1, [r1, #0]
d0050f5e:	f006 f897 	bl	d0057090 <drawFakeHorizon>
d0050f62:	49c4      	ldr	r1, [pc, #784]	; (d0051274 <main+0xa80>)
d0050f64:	780b      	ldrb	r3, [r1, #0]
d0050f66:	2b00      	cmp	r3, #0
d0050f68:	f040 8356 	bne.w	d0051618 <main+0xe24>
d0050f6c:	48c2      	ldr	r0, [pc, #776]	; (d0051278 <main+0xa84>)
d0050f6e:	2205      	movs	r2, #5
d0050f70:	7803      	ldrb	r3, [r0, #0]
d0050f72:	700a      	strb	r2, [r1, #0]
d0050f74:	f1c3 0301 	rsb	r3, r3, #1
d0050f78:	49c0      	ldr	r1, [pc, #768]	; (d005127c <main+0xa88>)
d0050f7a:	b2db      	uxtb	r3, r3
d0050f7c:	5cca      	ldrb	r2, [r1, r3]
d0050f7e:	7003      	strb	r3, [r0, #0]
d0050f80:	b922      	cbnz	r2, d0050f8c <main+0x798>
d0050f82:	2278      	movs	r2, #120	; 0x78
d0050f84:	54cd      	strb	r5, [r1, r3]
d0050f86:	49be      	ldr	r1, [pc, #760]	; (d0051280 <main+0xa8c>)
d0050f88:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
d0050f8c:	2008      	movs	r0, #8
d0050f8e:	2320      	movs	r3, #32
d0050f90:	2280      	movs	r2, #128	; 0x80
d0050f92:	2105      	movs	r1, #5
d0050f94:	9000      	str	r0, [sp, #0]
d0050f96:	4630      	mov	r0, r6
d0050f98:	f005 ff84 	bl	d0056ea4 <drawFakeSkyDots>
d0050f9c:	49b9      	ldr	r1, [pc, #740]	; (d0051284 <main+0xa90>)
d0050f9e:	eeb0 0a68 	vmov.f32	s0, s17
d0050fa2:	236e      	movs	r3, #110	; 0x6e
d0050fa4:	2280      	movs	r2, #128	; 0x80
d0050fa6:	7809      	ldrb	r1, [r1, #0]
d0050fa8:	4630      	mov	r0, r6
d0050faa:	f005 fe63 	bl	d0056c74 <drawFakeHorizonDots>
d0050fae:	7820      	ldrb	r0, [r4, #0]
d0050fb0:	7861      	ldrb	r1, [r4, #1]
d0050fb2:	78a2      	ldrb	r2, [r4, #2]
d0050fb4:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0050fb8:	78e3      	ldrb	r3, [r4, #3]
d0050fba:	4db3      	ldr	r5, [pc, #716]	; (d0051288 <main+0xa94>)
d0050fbc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0050fc0:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0050fc4:	689b      	ldr	r3, [r3, #8]
d0050fc6:	4798      	blx	r3
d0050fc8:	4603      	mov	r3, r0
d0050fca:	4630      	mov	r0, r6
d0050fcc:	602b      	str	r3, [r5, #0]
d0050fce:	f007 f827 	bl	d0058020 <Render3D>
d0050fd2:	7820      	ldrb	r0, [r4, #0]
d0050fd4:	7861      	ldrb	r1, [r4, #1]
d0050fd6:	78a2      	ldrb	r2, [r4, #2]
d0050fd8:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0050fdc:	78e3      	ldrb	r3, [r4, #3]
d0050fde:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0050fe2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0050fe6:	689b      	ldr	r3, [r3, #8]
d0050fe8:	4798      	blx	r3
d0050fea:	49a8      	ldr	r1, [pc, #672]	; (d005128c <main+0xa98>)
d0050fec:	eeb5 7a00 	vmov.f32	s14, #80	; 0x3e800000  0.250
d0050ff0:	682a      	ldr	r2, [r5, #0]
d0050ff2:	edd1 7a00 	vldr	s15, [r1]
d0050ff6:	4da6      	ldr	r5, [pc, #664]	; (d0051290 <main+0xa9c>)
d0050ff8:	1a80      	subs	r0, r0, r2
d0050ffa:	ee38 8a27 	vadd.f32	s16, s16, s15
d0050ffe:	4aa5      	ldr	r2, [pc, #660]	; (d0051294 <main+0xaa0>)
d0051000:	682b      	ldr	r3, [r5, #0]
d0051002:	6010      	str	r0, [r2, #0]
d0051004:	eeb4 8ac7 	vcmpe.f32	s16, s14
d0051008:	3301      	adds	r3, #1
d005100a:	ed81 8a00 	vstr	s16, [r1]
d005100e:	602b      	str	r3, [r5, #0]
d0051010:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051014:	db24      	blt.n	d0051060 <main+0x86c>
d0051016:	eddf 7aa0 	vldr	s15, [pc, #640]	; d0051298 <main+0xaa4>
d005101a:	eeb4 8ae7 	vcmpe.f32	s16, s15
d005101e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051022:	f340 82f6 	ble.w	d0051612 <main+0xe1e>
d0051026:	ee07 3a90 	vmov	s15, r3
d005102a:	4b9c      	ldr	r3, [pc, #624]	; (d005129c <main+0xaa8>)
d005102c:	2164      	movs	r1, #100	; 0x64
d005102e:	eef8 7a67 	vcvt.f32.u32	s15, s15
d0051032:	ee67 7aa9 	vmul.f32	s15, s15, s19
d0051036:	ee87 7a88 	vdiv.f32	s14, s15, s16
d005103a:	eefc 7ac7 	vcvt.u32.f32	s15, s14
d005103e:	ee17 2a90 	vmov	r2, s15
d0051042:	fba3 0302 	umull	r0, r3, r3, r2
d0051046:	095b      	lsrs	r3, r3, #5
d0051048:	fb01 2213 	mls	r2, r1, r3, r2
d005104c:	4994      	ldr	r1, [pc, #592]	; (d00512a0 <main+0xaac>)
d005104e:	600b      	str	r3, [r1, #0]
d0051050:	4b94      	ldr	r3, [pc, #592]	; (d00512a4 <main+0xab0>)
d0051052:	601a      	str	r2, [r3, #0]
d0051054:	2200      	movs	r2, #0
d0051056:	4b8e      	ldr	r3, [pc, #568]	; (d0051290 <main+0xa9c>)
d0051058:	601a      	str	r2, [r3, #0]
d005105a:	4b8c      	ldr	r3, [pc, #560]	; (d005128c <main+0xa98>)
d005105c:	edc3 8a00 	vstr	s17, [r3]
d0051060:	a85d      	add	r0, sp, #372	; 0x174
d0051062:	f7ff f987 	bl	d0050374 <splineRailGetCurrentNode>
d0051066:	f1b8 0f00 	cmp.w	r8, #0
d005106a:	f040 8232 	bne.w	d00514d2 <main+0xcde>
d005106e:	4b89      	ldr	r3, [pc, #548]	; (d0051294 <main+0xaa0>)
d0051070:	b2c5      	uxtb	r5, r0
d0051072:	f44f 777a 	mov.w	r7, #1000	; 0x3e8
d0051076:	f8d3 8000 	ldr.w	r8, [r3]
d005107a:	4b89      	ldr	r3, [pc, #548]	; (d00512a0 <main+0xaac>)
d005107c:	681a      	ldr	r2, [r3, #0]
d005107e:	4b89      	ldr	r3, [pc, #548]	; (d00512a4 <main+0xab0>)
d0051080:	9207      	str	r2, [sp, #28]
d0051082:	681b      	ldr	r3, [r3, #0]
d0051084:	9306      	str	r3, [sp, #24]
d0051086:	f005 fdef 	bl	d0056c68 <getRenderTriCount>
d005108a:	f8df e254 	ldr.w	lr, [pc, #596]	; d00512e0 <main+0xaec>
d005108e:	f8df c254 	ldr.w	ip, [pc, #596]	; d00512e4 <main+0xaf0>
d0051092:	fbae 3108 	umull	r3, r1, lr, r8
d0051096:	9a07      	ldr	r2, [sp, #28]
d0051098:	9b06      	ldr	r3, [sp, #24]
d005109a:	ea4f 4951 	mov.w	r9, r1, lsr #17
d005109e:	9003      	str	r0, [sp, #12]
d00510a0:	4981      	ldr	r1, [pc, #516]	; (d00512a8 <main+0xab4>)
d00510a2:	fb0c 8c19 	mls	ip, ip, r9, r8
d00510a6:	4881      	ldr	r0, [pc, #516]	; (d00512ac <main+0xab8>)
d00510a8:	9502      	str	r5, [sp, #8]
d00510aa:	fb07 f70c 	mul.w	r7, r7, ip
d00510ae:	f8cd 9000 	str.w	r9, [sp]
d00510b2:	fbae c707 	umull	ip, r7, lr, r7
d00510b6:	0c7f      	lsrs	r7, r7, #17
d00510b8:	9701      	str	r7, [sp, #4]
d00510ba:	f007 ff05 	bl	d0058ec8 <siprintf>
d00510be:	4b7c      	ldr	r3, [pc, #496]	; (d00512b0 <main+0xabc>)
d00510c0:	781b      	ldrb	r3, [r3, #0]
d00510c2:	42ab      	cmp	r3, r5
d00510c4:	d002      	beq.n	d00510cc <main+0x8d8>
d00510c6:	2d14      	cmp	r5, #20
d00510c8:	f000 822d 	beq.w	d0051526 <main+0xd32>
d00510cc:	7b23      	ldrb	r3, [r4, #12]
d00510ce:	2100      	movs	r1, #0
d00510d0:	7b67      	ldrb	r7, [r4, #13]
d00510d2:	4877      	ldr	r0, [pc, #476]	; (d00512b0 <main+0xabc>)
d00510d4:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
d00510d8:	4a74      	ldr	r2, [pc, #464]	; (d00512ac <main+0xab8>)
d00510da:	7005      	strb	r5, [r0, #0]
d00510dc:	4608      	mov	r0, r1
d00510de:	7ba5      	ldrb	r5, [r4, #14]
d00510e0:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d00510e4:	7be5      	ldrb	r5, [r4, #15]
d00510e6:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d00510ea:	685b      	ldr	r3, [r3, #4]
d00510ec:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d00510ee:	4798      	blx	r3
d00510f0:	7b20      	ldrb	r0, [r4, #12]
d00510f2:	7b61      	ldrb	r1, [r4, #13]
d00510f4:	7ba2      	ldrb	r2, [r4, #14]
d00510f6:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00510fa:	7be3      	ldrb	r3, [r4, #15]
d00510fc:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0051100:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051104:	681b      	ldr	r3, [r3, #0]
d0051106:	681b      	ldr	r3, [r3, #0]
d0051108:	4798      	blx	r3
d005110a:	eddf 7a6a 	vldr	s15, [pc, #424]	; d00512b4 <main+0xac0>
d005110e:	eeb4 9ae7 	vcmpe.f32	s18, s15
d0051112:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051116:	f300 81ac 	bgt.w	d0051472 <main+0xc7e>
d005111a:	eddf 7a67 	vldr	s15, [pc, #412]	; d00512b8 <main+0xac4>
d005111e:	ee39 9a27 	vadd.f32	s18, s18, s15
d0051122:	9d05      	ldr	r5, [sp, #20]
d0051124:	7b20      	ldrb	r0, [r4, #12]
d0051126:	ee69 7a29 	vmul.f32	s15, s18, s19
d005112a:	7b61      	ldrb	r1, [r4, #13]
d005112c:	7ba2      	ldrb	r2, [r4, #14]
d005112e:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0051132:	7be3      	ldrb	r3, [r4, #15]
d0051134:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0051138:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d005113c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051140:	edcd 7a05 	vstr	s15, [sp, #20]
d0051144:	f89d 0014 	ldrb.w	r0, [sp, #20]
d0051148:	681b      	ldr	r3, [r3, #0]
d005114a:	689b      	ldr	r3, [r3, #8]
d005114c:	4798      	blx	r3
d005114e:	7820      	ldrb	r0, [r4, #0]
d0051150:	7861      	ldrb	r1, [r4, #1]
d0051152:	78a2      	ldrb	r2, [r4, #2]
d0051154:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0051158:	78e3      	ldrb	r3, [r4, #3]
d005115a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d005115e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051162:	689b      	ldr	r3, [r3, #8]
d0051164:	4798      	blx	r3
d0051166:	1b43      	subs	r3, r0, r5
d0051168:	9005      	str	r0, [sp, #20]
d005116a:	ee08 3a10 	vmov	s16, r3
d005116e:	eeb8 8a48 	vcvt.f32.u32	s16, s16
d0051172:	eeb4 8aca 	vcmpe.f32	s16, s20
d0051176:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005117a:	f300 819d 	bgt.w	d00514b8 <main+0xcc4>
d005117e:	eddf 7a4f 	vldr	s15, [pc, #316]	; d00512bc <main+0xac8>
d0051182:	eef2 aa04 	vmov.f32	s21, #36	; 0x41200000  10.0
d0051186:	eddf ca4e 	vldr	s25, [pc, #312]	; d00512c0 <main+0xacc>
d005118a:	ee28 8a27 	vmul.f32	s16, s16, s15
d005118e:	ed9f ca4d 	vldr	s24, [pc, #308]	; d00512c4 <main+0xad0>
d0051192:	eddf 7a4d 	vldr	s15, [pc, #308]	; d00512c8 <main+0xad4>
d0051196:	eddf ba4d 	vldr	s23, [pc, #308]	; d00512cc <main+0xad8>
d005119a:	ee68 aa2a 	vmul.f32	s21, s16, s21
d005119e:	ed9f ba4c 	vldr	s22, [pc, #304]	; d00512d0 <main+0xadc>
d00511a2:	ee28 ca0c 	vmul.f32	s24, s16, s24
d00511a6:	ee68 ba2b 	vmul.f32	s23, s16, s23
d00511aa:	ee6a caac 	vmul.f32	s25, s21, s25
d00511ae:	ee28 ba0b 	vmul.f32	s22, s16, s22
d00511b2:	ee6a aaa7 	vmul.f32	s21, s21, s15
d00511b6:	7820      	ldrb	r0, [r4, #0]
d00511b8:	7861      	ldrb	r1, [r4, #1]
d00511ba:	78a2      	ldrb	r2, [r4, #2]
d00511bc:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00511c0:	78e3      	ldrb	r3, [r4, #3]
d00511c2:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00511c6:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00511ca:	6a1b      	ldr	r3, [r3, #32]
d00511cc:	4798      	blx	r3
d00511ce:	7827      	ldrb	r7, [r4, #0]
d00511d0:	7863      	ldrb	r3, [r4, #1]
d00511d2:	a91d      	add	r1, sp, #116	; 0x74
d00511d4:	78a2      	ldrb	r2, [r4, #2]
d00511d6:	4605      	mov	r5, r0
d00511d8:	ea47 2703 	orr.w	r7, r7, r3, lsl #8
d00511dc:	78e3      	ldrb	r3, [r4, #3]
d00511de:	a81c      	add	r0, sp, #112	; 0x70
d00511e0:	ea47 4202 	orr.w	r2, r7, r2, lsl #16
d00511e4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00511e8:	699b      	ldr	r3, [r3, #24]
d00511ea:	4798      	blx	r3
d00511ec:	ed9f 1a39 	vldr	s2, [pc, #228]	; d00512d4 <main+0xae0>
d00511f0:	ed9f 0a39 	vldr	s0, [pc, #228]	; d00512d8 <main+0xae4>
d00511f4:	eef0 0a68 	vmov.f32	s1, s17
d00511f8:	2100      	movs	r1, #0
d00511fa:	4630      	mov	r0, r6
d00511fc:	e9dd 231c 	ldrd	r2, r3, [sp, #112]	; 0x70
d0051200:	4252      	negs	r2, r2
d0051202:	425b      	negs	r3, r3
d0051204:	ee07 2a90 	vmov	s15, r2
d0051208:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d005120c:	ee07 3a90 	vmov	s15, r3
d0051210:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051214:	ee27 1a01 	vmul.f32	s2, s14, s2
d0051218:	ee27 0a80 	vmul.f32	s0, s15, s0
d005121c:	f003 fbe8 	bl	d00549f0 <cameraTurn>
d0051220:	eef0 7a04 	vmov.f32	s15, #4	; 0x40200000  2.5
d0051224:	eddb 0a37 	vldr	s1, [fp, #220]	; 0xdc
d0051228:	ee60 0aa7 	vmul.f32	s1, s1, s15
d005122c:	ee60 0a88 	vmul.f32	s1, s1, s16
d0051230:	eef5 0a40 	vcmp.f32	s1, #0.0
d0051234:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051238:	f040 81c2 	bne.w	d00515c0 <main+0xdcc>
d005123c:	eeb0 1a68 	vmov.f32	s2, s17
d0051240:	eddf 0a26 	vldr	s1, [pc, #152]	; d00512dc <main+0xae8>
d0051244:	eeb0 0a6c 	vmov.f32	s0, s25
d0051248:	ee1e 0a90 	vmov	r0, s29
d005124c:	f004 f944 	bl	d00554d8 <entityTurnLocal>
d0051250:	eeb0 0a6a 	vmov.f32	s0, s21
d0051254:	ee1e 0a90 	vmov	r0, s29
d0051258:	f004 f90c 	bl	d0055474 <entityMoveForward>
d005125c:	eeb0 1a68 	vmov.f32	s2, s17
d0051260:	eddf 0a1e 	vldr	s1, [pc, #120]	; d00512dc <main+0xae8>
d0051264:	eeb0 0a4c 	vmov.f32	s0, s24
d0051268:	ee1d 0a90 	vmov	r0, s27
d005126c:	e042      	b.n	d00512f4 <main+0xb00>
d005126e:	bf00      	nop
d0051270:	d00f5041 	.word	0xd00f5041
d0051274:	d005ac74 	.word	0xd005ac74
d0051278:	d005ad28 	.word	0xd005ad28
d005127c:	d005ad54 	.word	0xd005ad54
d0051280:	d005ad58 	.word	0xd005ad58
d0051284:	d00f5040 	.word	0xd00f5040
d0051288:	d005ad60 	.word	0xd005ad60
d005128c:	d005ad40 	.word	0xd005ad40
d0051290:	d005ad3c 	.word	0xd005ad3c
d0051294:	d005ad64 	.word	0xd005ad64
d0051298:	3727c5ac 	.word	0x3727c5ac
d005129c:	51eb851f 	.word	0x51eb851f
d00512a0:	d005ad44 	.word	0xd005ad44
d00512a4:	d005ad38 	.word	0xd005ad38
d00512a8:	d005a0dc 	.word	0xd005a0dc
d00512ac:	d005ac7c 	.word	0xd005ac7c
d00512b0:	d005ad49 	.word	0xd005ad49
d00512b4:	3f7ef9db 	.word	0x3f7ef9db
d00512b8:	3b83126f 	.word	0x3b83126f
d00512bc:	310f2a63 	.word	0x310f2a63
d00512c0:	bb449ba6 	.word	0xbb449ba6
d00512c4:	3f99999a 	.word	0x3f99999a
d00512c8:	40d9999a 	.word	0x40d9999a
d00512cc:	43264ccd 	.word	0x43264ccd
d00512d0:	435c0000 	.word	0x435c0000
d00512d4:	3ba3d70a 	.word	0x3ba3d70a
d00512d8:	3c088889 	.word	0x3c088889
d00512dc:	00000000 	.word	0x00000000
d00512e0:	45e7b273 	.word	0x45e7b273
d00512e4:	00075300 	.word	0x00075300
d00512e8:	451c4000 	.word	0x451c4000
d00512ec:	44048000 	.word	0x44048000
d00512f0:	43a00000 	.word	0x43a00000
d00512f4:	f004 f8f0 	bl	d00554d8 <entityTurnLocal>
d00512f8:	eeb0 0a6b 	vmov.f32	s0, s23
d00512fc:	ee1d 0a10 	vmov	r0, s26
d0051300:	f004 f8b8 	bl	d0055474 <entityMoveForward>
d0051304:	ee1d 0a10 	vmov	r0, s26
d0051308:	f004 f894 	bl	d0055434 <entityGetPosition>
d005130c:	ed5f 7a0a 	vldr	s15, [pc, #-40]	; d00512e8 <main+0xaf4>
d0051310:	ed8d 0a27 	vstr	s0, [sp, #156]	; 0x9c
d0051314:	eeb4 1ae7 	vcmpe.f32	s2, s15
d0051318:	edcd 0a28 	vstr	s1, [sp, #160]	; 0xa0
d005131c:	ed8d 1a29 	vstr	s2, [sp, #164]	; 0xa4
d0051320:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051324:	f300 8139 	bgt.w	d005159a <main+0xda6>
d0051328:	ed9d 0a27 	vldr	s0, [sp, #156]	; 0x9c
d005132c:	ee1e 0a10 	vmov	r0, s28
d0051330:	eddd 0a28 	vldr	s1, [sp, #160]	; 0xa0
d0051334:	ed9d 1a29 	vldr	s2, [sp, #164]	; 0xa4
d0051338:	f004 feb2 	bl	d00560a0 <lightSetPosition>
d005133c:	eddb 0a31 	vldr	s1, [fp, #196]	; 0xc4
d0051340:	ed9b 1a32 	vldr	s2, [fp, #200]	; 0xc8
d0051344:	4650      	mov	r0, sl
d0051346:	ed9b 0a30 	vldr	s0, [fp, #192]	; 0xc0
d005134a:	f004 fea9 	bl	d00560a0 <lightSetPosition>
d005134e:	eeb0 0a00 	vmov.f32	s0, #0	; 0x40000000  2.0
d0051352:	4650      	mov	r0, sl
d0051354:	f004 fec0 	bl	d00560d8 <lightSetIntensity>
d0051358:	eeb0 0a69 	vmov.f32	s0, s19
d005135c:	ed1f 1a1d 	vldr	s2, [pc, #-116]	; d00512ec <main+0xaf8>
d0051360:	4650      	mov	r0, sl
d0051362:	ed5f 0a1d 	vldr	s1, [pc, #-116]	; d00512f0 <main+0xafc>
d0051366:	f004 fdfd 	bl	d0055f64 <lightSetRanges>
d005136a:	9b04      	ldr	r3, [sp, #16]
d005136c:	2b00      	cmp	r3, #0
d005136e:	f000 8148 	beq.w	d0051602 <main+0xe0e>
d0051372:	2300      	movs	r3, #0
d0051374:	9307      	str	r3, [sp, #28]
d0051376:	7820      	ldrb	r0, [r4, #0]
d0051378:	7861      	ldrb	r1, [r4, #1]
d005137a:	78a2      	ldrb	r2, [r4, #2]
d005137c:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0051380:	78e3      	ldrb	r3, [r4, #3]
d0051382:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0051386:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d005138a:	69db      	ldr	r3, [r3, #28]
d005138c:	4798      	blx	r3
d005138e:	f015 0801 	ands.w	r8, r5, #1
d0051392:	f040 8120 	bne.w	d00515d6 <main+0xde2>
d0051396:	07ab      	lsls	r3, r5, #30
d0051398:	f100 8129 	bmi.w	d00515ee <main+0xdfa>
d005139c:	7b20      	ldrb	r0, [r4, #12]
d005139e:	f005 0503 	and.w	r5, r5, #3
d00513a2:	7b61      	ldrb	r1, [r4, #13]
d00513a4:	7ba2      	ldrb	r2, [r4, #14]
d00513a6:	2d03      	cmp	r5, #3
d00513a8:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00513ac:	7be3      	ldrb	r3, [r4, #15]
d00513ae:	bf08      	it	eq
d00513b0:	edcb 8a37 	vstreq	s17, [fp, #220]	; 0xdc
d00513b4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00513b8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00513bc:	681b      	ldr	r3, [r3, #0]
d00513be:	68db      	ldr	r3, [r3, #12]
d00513c0:	4798      	blx	r3
d00513c2:	4a9f      	ldr	r2, [pc, #636]	; (d0051640 <main+0xe4c>)
d00513c4:	7813      	ldrb	r3, [r2, #0]
d00513c6:	f1c3 0301 	rsb	r3, r3, #1
d00513ca:	b2db      	uxtb	r3, r3
d00513cc:	7013      	strb	r3, [r2, #0]
d00513ce:	7813      	ldrb	r3, [r2, #0]
d00513d0:	7b21      	ldrb	r1, [r4, #12]
d00513d2:	7b60      	ldrb	r0, [r4, #13]
d00513d4:	7ba2      	ldrb	r2, [r4, #14]
d00513d6:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d00513da:	2b00      	cmp	r3, #0
d00513dc:	f000 80b6 	beq.w	d005154c <main+0xd58>
d00513e0:	4d98      	ldr	r5, [pc, #608]	; (d0051644 <main+0xe50>)
d00513e2:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d00513e6:	7be3      	ldrb	r3, [r4, #15]
d00513e8:	6829      	ldr	r1, [r5, #0]
d00513ea:	4897      	ldr	r0, [pc, #604]	; (d0051648 <main+0xe54>)
d00513ec:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00513f0:	6800      	ldr	r0, [r0, #0]
d00513f2:	f8df 92b4 	ldr.w	r9, [pc, #692]	; d00516a8 <main+0xeb4>
d00513f6:	ee0a 6a90 	vmov	s21, r6
d00513fa:	681b      	ldr	r3, [r3, #0]
d00513fc:	4f93      	ldr	r7, [pc, #588]	; (d005164c <main+0xe58>)
d00513fe:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0051400:	4798      	blx	r3
d0051402:	682b      	ldr	r3, [r5, #0]
d0051404:	2500      	movs	r5, #0
d0051406:	6818      	ldr	r0, [r3, #0]
d0051408:	f000 f9a4 	bl	d0051754 <set3DRenderBuffer>
d005140c:	f8cd b018 	str.w	fp, [sp, #24]
d0051410:	46c3      	mov	fp, r8
d0051412:	f819 3b01 	ldrb.w	r3, [r9], #1
d0051416:	b333      	cbz	r3, d0051466 <main+0xc72>
d0051418:	f8d7 8000 	ldr.w	r8, [r7]
d005141c:	4628      	mov	r0, r5
d005141e:	f108 36ff 	add.w	r6, r8, #4294967295	; 0xffffffff
d0051422:	f1b8 0f00 	cmp.w	r8, #0
d0051426:	d027      	beq.n	d0051478 <main+0xc84>
d0051428:	603e      	str	r6, [r7, #0]
d005142a:	b9e6      	cbnz	r6, d0051466 <main+0xc72>
d005142c:	7c21      	ldrb	r1, [r4, #16]
d005142e:	7c63      	ldrb	r3, [r4, #17]
d0051430:	7ca2      	ldrb	r2, [r4, #18]
d0051432:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0051436:	7ce3      	ldrb	r3, [r4, #19]
d0051438:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d005143c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051440:	689b      	ldr	r3, [r3, #8]
d0051442:	689b      	ldr	r3, [r3, #8]
d0051444:	4798      	blx	r3
d0051446:	7c21      	ldrb	r1, [r4, #16]
d0051448:	7c63      	ldrb	r3, [r4, #17]
d005144a:	4628      	mov	r0, r5
d005144c:	7ca2      	ldrb	r2, [r4, #18]
d005144e:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0051452:	7ce3      	ldrb	r3, [r4, #19]
d0051454:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0051458:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d005145c:	689b      	ldr	r3, [r3, #8]
d005145e:	685b      	ldr	r3, [r3, #4]
d0051460:	4798      	blx	r3
d0051462:	f809 6c01 	strb.w	r6, [r9, #-1]
d0051466:	3704      	adds	r7, #4
d0051468:	2d00      	cmp	r5, #0
d005146a:	f47f ad63 	bne.w	d0050f34 <main+0x740>
d005146e:	2501      	movs	r5, #1
d0051470:	e7cf      	b.n	d0051412 <main+0xc1e>
d0051472:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d0051476:	e654      	b.n	d0051122 <main+0x92e>
d0051478:	f894 c010 	ldrb.w	ip, [r4, #16]
d005147c:	7c61      	ldrb	r1, [r4, #17]
d005147e:	7ca2      	ldrb	r2, [r4, #18]
d0051480:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0051484:	7ce3      	ldrb	r3, [r4, #19]
d0051486:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d005148a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d005148e:	689b      	ldr	r3, [r3, #8]
d0051490:	689b      	ldr	r3, [r3, #8]
d0051492:	4798      	blx	r3
d0051494:	f894 c010 	ldrb.w	ip, [r4, #16]
d0051498:	7c61      	ldrb	r1, [r4, #17]
d005149a:	4628      	mov	r0, r5
d005149c:	7ca2      	ldrb	r2, [r4, #18]
d005149e:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d00514a2:	7ce3      	ldrb	r3, [r4, #19]
d00514a4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00514a8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00514ac:	689b      	ldr	r3, [r3, #8]
d00514ae:	685b      	ldr	r3, [r3, #4]
d00514b0:	4798      	blx	r3
d00514b2:	f809 8c01 	strb.w	r8, [r9, #-1]
d00514b6:	e7d6      	b.n	d0051466 <main+0xc72>
d00514b8:	ed9f ba65 	vldr	s22, [pc, #404]	; d0051650 <main+0xe5c>
d00514bc:	eddf ba65 	vldr	s23, [pc, #404]	; d0051654 <main+0xe60>
d00514c0:	ed9f ca65 	vldr	s24, [pc, #404]	; d0051658 <main+0xe64>
d00514c4:	eddf aa65 	vldr	s21, [pc, #404]	; d005165c <main+0xe68>
d00514c8:	eddf ca65 	vldr	s25, [pc, #404]	; d0051660 <main+0xe6c>
d00514cc:	ed9f 8a65 	vldr	s16, [pc, #404]	; d0051664 <main+0xe70>
d00514d0:	e671      	b.n	d00511b6 <main+0x9c2>
d00514d2:	4b65      	ldr	r3, [pc, #404]	; (d0051668 <main+0xe74>)
d00514d4:	4f65      	ldr	r7, [pc, #404]	; (d005166c <main+0xe78>)
d00514d6:	f8d3 8000 	ldr.w	r8, [r3]
d00514da:	4b65      	ldr	r3, [pc, #404]	; (d0051670 <main+0xe7c>)
d00514dc:	681a      	ldr	r2, [r3, #0]
d00514de:	4b65      	ldr	r3, [pc, #404]	; (d0051674 <main+0xe80>)
d00514e0:	9207      	str	r2, [sp, #28]
d00514e2:	681b      	ldr	r3, [r3, #0]
d00514e4:	9306      	str	r3, [sp, #24]
d00514e6:	f005 fbbf 	bl	d0056c68 <getRenderTriCount>
d00514ea:	f8df c1c0 	ldr.w	ip, [pc, #448]	; d00516ac <main+0xeb8>
d00514ee:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
d00514f2:	9003      	str	r0, [sp, #12]
d00514f4:	fbac 3508 	umull	r3, r5, ip, r8
d00514f8:	9a07      	ldr	r2, [sp, #28]
d00514fa:	9b06      	ldr	r3, [sp, #24]
d00514fc:	0c68      	lsrs	r0, r5, #17
d00514fe:	2514      	movs	r5, #20
d0051500:	fb07 8710 	mls	r7, r7, r0, r8
d0051504:	9502      	str	r5, [sp, #8]
d0051506:	fb01 f707 	mul.w	r7, r1, r7
d005150a:	495b      	ldr	r1, [pc, #364]	; (d0051678 <main+0xe84>)
d005150c:	9000      	str	r0, [sp, #0]
d005150e:	fbac 5707 	umull	r5, r7, ip, r7
d0051512:	485a      	ldr	r0, [pc, #360]	; (d005167c <main+0xe88>)
d0051514:	0c7f      	lsrs	r7, r7, #17
d0051516:	9701      	str	r7, [sp, #4]
d0051518:	f007 fcd6 	bl	d0058ec8 <siprintf>
d005151c:	4b58      	ldr	r3, [pc, #352]	; (d0051680 <main+0xe8c>)
d005151e:	781d      	ldrb	r5, [r3, #0]
d0051520:	2d14      	cmp	r5, #20
d0051522:	f43f add3 	beq.w	d00510cc <main+0x8d8>
d0051526:	9b04      	ldr	r3, [sp, #16]
d0051528:	2b00      	cmp	r3, #0
d005152a:	d079      	beq.n	d0051620 <main+0xe2c>
d005152c:	2013      	movs	r0, #19
d005152e:	4d55      	ldr	r5, [pc, #340]	; (d0051684 <main+0xe90>)
d0051530:	2112      	movs	r1, #18
d0051532:	2215      	movs	r2, #21
d0051534:	7028      	strb	r0, [r5, #0]
d0051536:	2317      	movs	r3, #23
d0051538:	4853      	ldr	r0, [pc, #332]	; (d0051688 <main+0xe94>)
d005153a:	2514      	movs	r5, #20
d005153c:	7001      	strb	r1, [r0, #0]
d005153e:	2100      	movs	r1, #0
d0051540:	9104      	str	r1, [sp, #16]
d0051542:	4952      	ldr	r1, [pc, #328]	; (d005168c <main+0xe98>)
d0051544:	700a      	strb	r2, [r1, #0]
d0051546:	4a52      	ldr	r2, [pc, #328]	; (d0051690 <main+0xe9c>)
d0051548:	7013      	strb	r3, [r2, #0]
d005154a:	e5bf      	b.n	d00510cc <main+0x8d8>
d005154c:	4d3e      	ldr	r5, [pc, #248]	; (d0051648 <main+0xe54>)
d005154e:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0051552:	7be3      	ldrb	r3, [r4, #15]
d0051554:	6829      	ldr	r1, [r5, #0]
d0051556:	483b      	ldr	r0, [pc, #236]	; (d0051644 <main+0xe50>)
d0051558:	e748      	b.n	d00513ec <main+0xbf8>
d005155a:	4b4c      	ldr	r3, [pc, #304]	; (d005168c <main+0xe98>)
d005155c:	ee1a 0a90 	vmov	r0, s21
d0051560:	4a49      	ldr	r2, [pc, #292]	; (d0051688 <main+0xe94>)
d0051562:	4948      	ldr	r1, [pc, #288]	; (d0051684 <main+0xe90>)
d0051564:	781b      	ldrb	r3, [r3, #0]
d0051566:	7812      	ldrb	r2, [r2, #0]
d0051568:	7809      	ldrb	r1, [r1, #0]
d005156a:	f005 fd91 	bl	d0057090 <drawFakeHorizon>
d005156e:	e50d      	b.n	d0050f8c <main+0x798>
d0051570:	4629      	mov	r1, r5
d0051572:	ee1f 0a10 	vmov	r0, s30
d0051576:	f004 fd19 	bl	d0055fac <lightEnable>
d005157a:	ee1f 0a10 	vmov	r0, s30
d005157e:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0051582:	f004 fda9 	bl	d00560d8 <lightSetIntensity>
d0051586:	eeb0 0a68 	vmov.f32	s0, s17
d005158a:	462b      	mov	r3, r5
d005158c:	2224      	movs	r2, #36	; 0x24
d005158e:	212b      	movs	r1, #43	; 0x2b
d0051590:	ee1a 0a90 	vmov	r0, s21
d0051594:	f005 fd7c 	bl	d0057090 <drawFakeHorizon>
d0051598:	e500      	b.n	d0050f9c <main+0x7a8>
d005159a:	ed9f 1a3e 	vldr	s2, [pc, #248]	; d0051694 <main+0xea0>
d005159e:	eddf 0a3e 	vldr	s1, [pc, #248]	; d0051698 <main+0xea4>
d00515a2:	ed9f 0a3e 	vldr	s0, [pc, #248]	; d005169c <main+0xea8>
d00515a6:	f002 fe29 	bl	d00541fc <vec3>
d00515aa:	ee1d 0a10 	vmov	r0, s26
d00515ae:	ed8d 0a45 	vstr	s0, [sp, #276]	; 0x114
d00515b2:	edcd 0a46 	vstr	s1, [sp, #280]	; 0x118
d00515b6:	ed8d 1a47 	vstr	s2, [sp, #284]	; 0x11c
d00515ba:	f003 ff1f 	bl	d00553fc <entitySetPosition>
d00515be:	e6b3      	b.n	d0051328 <main+0xb34>
d00515c0:	eef1 0a60 	vneg.f32	s1, s1
d00515c4:	2101      	movs	r1, #1
d00515c6:	eeb0 1a68 	vmov.f32	s2, s17
d00515ca:	ed9f 0a35 	vldr	s0, [pc, #212]	; d00516a0 <main+0xeac>
d00515ce:	4630      	mov	r0, r6
d00515d0:	f003 fa0e 	bl	d00549f0 <cameraTurn>
d00515d4:	e632      	b.n	d005123c <main+0xa48>
d00515d6:	eeb0 1a4b 	vmov.f32	s2, s22
d00515da:	ed9f 0a31 	vldr	s0, [pc, #196]	; d00516a0 <main+0xeac>
d00515de:	eef0 0a68 	vmov.f32	s1, s17
d00515e2:	4630      	mov	r0, r6
d00515e4:	f003 fbe0 	bl	d0054da8 <cameraMove>
d00515e8:	07ab      	lsls	r3, r5, #30
d00515ea:	f57f aed7 	bpl.w	d005139c <main+0xba8>
d00515ee:	eeb1 1a4b 	vneg.f32	s2, s22
d00515f2:	ed9f 0a2b 	vldr	s0, [pc, #172]	; d00516a0 <main+0xeac>
d00515f6:	eef0 0a68 	vmov.f32	s1, s17
d00515fa:	4630      	mov	r0, r6
d00515fc:	f003 fbd4 	bl	d0054da8 <cameraMove>
d0051600:	e6cc      	b.n	d005139c <main+0xba8>
d0051602:	eeb0 0a48 	vmov.f32	s0, s16
d0051606:	ee1f 0a10 	vmov	r0, s30
d005160a:	f7fe ff51 	bl	d00504b0 <weatherLightning>
d005160e:	9007      	str	r0, [sp, #28]
d0051610:	e6b1      	b.n	d0051376 <main+0xb82>
d0051612:	2200      	movs	r2, #0
d0051614:	4613      	mov	r3, r2
d0051616:	e519      	b.n	d005104c <main+0x858>
d0051618:	3b01      	subs	r3, #1
d005161a:	4a22      	ldr	r2, [pc, #136]	; (d00516a4 <main+0xeb0>)
d005161c:	7013      	strb	r3, [r2, #0]
d005161e:	e4b5      	b.n	d0050f8c <main+0x798>
d0051620:	2009      	movs	r0, #9
d0051622:	4d18      	ldr	r5, [pc, #96]	; (d0051684 <main+0xe90>)
d0051624:	213b      	movs	r1, #59	; 0x3b
d0051626:	222b      	movs	r2, #43	; 0x2b
d0051628:	7028      	strb	r0, [r5, #0]
d005162a:	2302      	movs	r3, #2
d005162c:	4816      	ldr	r0, [pc, #88]	; (d0051688 <main+0xe94>)
d005162e:	2514      	movs	r5, #20
d0051630:	7001      	strb	r1, [r0, #0]
d0051632:	2101      	movs	r1, #1
d0051634:	9104      	str	r1, [sp, #16]
d0051636:	4915      	ldr	r1, [pc, #84]	; (d005168c <main+0xe98>)
d0051638:	700a      	strb	r2, [r1, #0]
d005163a:	4a15      	ldr	r2, [pc, #84]	; (d0051690 <main+0xe9c>)
d005163c:	7013      	strb	r3, [r2, #0]
d005163e:	e545      	b.n	d00510cc <main+0x8d8>
d0051640:	d005ad48 	.word	0xd005ad48
d0051644:	d00f5060 	.word	0xd00f5060
d0051648:	d00f5080 	.word	0xd00f5080
d005164c:	d005ad58 	.word	0xd005ad58
d0051650:	42f20000 	.word	0x42f20000
d0051654:	42b6ee15 	.word	0x42b6ee15
d0051658:	3f28f5c3 	.word	0x3f28f5c3
d005165c:	4215999a 	.word	0x4215999a
d0051660:	bc872b02 	.word	0xbc872b02
d0051664:	3f0ccccd 	.word	0x3f0ccccd
d0051668:	d005ad64 	.word	0xd005ad64
d005166c:	00075300 	.word	0x00075300
d0051670:	d005ad44 	.word	0xd005ad44
d0051674:	d005ad38 	.word	0xd005ad38
d0051678:	d005a0dc 	.word	0xd005a0dc
d005167c:	d005ac7c 	.word	0xd005ac7c
d0051680:	d005ad49 	.word	0xd005ad49
d0051684:	d00f5041 	.word	0xd00f5041
d0051688:	d00f5000 	.word	0xd00f5000
d005168c:	d00f5042 	.word	0xd00f5042
d0051690:	d00f5040 	.word	0xd00f5040
d0051694:	c3c80000 	.word	0xc3c80000
d0051698:	42480000 	.word	0x42480000
d005169c:	c3070000 	.word	0xc3070000
d00516a0:	00000000 	.word	0x00000000
d00516a4:	d005ac74 	.word	0xd005ac74
d00516a8:	d005ad54 	.word	0xd005ad54
d00516ac:	45e7b273 	.word	0x45e7b273

d00516b0 <meshSetDefaultMaterial>:
d00516b0:	b148      	cbz	r0, d00516c6 <meshSetDefaultMaterial+0x16>
d00516b2:	2300      	movs	r3, #0
d00516b4:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d00516b8:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
d00516bc:	6203      	str	r3, [r0, #32]
d00516be:	6241      	str	r1, [r0, #36]	; 0x24
d00516c0:	62c2      	str	r2, [r0, #44]	; 0x2c
d00516c2:	6303      	str	r3, [r0, #48]	; 0x30
d00516c4:	6283      	str	r3, [r0, #40]	; 0x28
d00516c6:	4770      	bx	lr

d00516c8 <meshSetMaterial>:
d00516c8:	b148      	cbz	r0, d00516de <meshSetMaterial+0x16>
d00516ca:	ed80 0a08 	vstr	s0, [r0, #32]
d00516ce:	edc0 0a09 	vstr	s1, [r0, #36]	; 0x24
d00516d2:	ed80 1a0c 	vstr	s2, [r0, #48]	; 0x30
d00516d6:	edc0 1a0a 	vstr	s3, [r0, #40]	; 0x28
d00516da:	ed80 2a0b 	vstr	s4, [r0, #44]	; 0x2c
d00516de:	4770      	bx	lr

d00516e0 <initDepthBandMem>:
d00516e0:	4a08      	ldr	r2, [pc, #32]	; (d0051704 <initDepthBandMem+0x24>)
d00516e2:	b508      	push	{r3, lr}
d00516e4:	7813      	ldrb	r3, [r2, #0]
d00516e6:	7850      	ldrb	r0, [r2, #1]
d00516e8:	7891      	ldrb	r1, [r2, #2]
d00516ea:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d00516ee:	78d2      	ldrb	r2, [r2, #3]
d00516f0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00516f4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00516f8:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d00516fa:	4798      	blx	r3
d00516fc:	4b02      	ldr	r3, [pc, #8]	; (d0051708 <initDepthBandMem+0x28>)
d00516fe:	6018      	str	r0, [r3, #0]
d0051700:	bd08      	pop	{r3, pc}
d0051702:	bf00      	nop
d0051704:	2001f000 	.word	0x2001f000
d0051708:	d005ad70 	.word	0xd005ad70

d005170c <beginDepthBand>:
d005170c:	f100 031f 	add.w	r3, r0, #31
d0051710:	4a0d      	ldr	r2, [pc, #52]	; (d0051748 <beginDepthBand+0x3c>)
d0051712:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0051716:	6010      	str	r0, [r2, #0]
d0051718:	da08      	bge.n	d005172c <beginDepthBand+0x20>
d005171a:	490c      	ldr	r1, [pc, #48]	; (d005174c <beginDepthBand+0x40>)
d005171c:	f44f 42f0 	mov.w	r2, #30720	; 0x7800
d0051720:	600b      	str	r3, [r1, #0]
d0051722:	21ff      	movs	r1, #255	; 0xff
d0051724:	4b0a      	ldr	r3, [pc, #40]	; (d0051750 <beginDepthBand+0x44>)
d0051726:	6818      	ldr	r0, [r3, #0]
d0051728:	f007 ba4e 	b.w	d0058bc8 <memset>
d005172c:	4b07      	ldr	r3, [pc, #28]	; (d005174c <beginDepthBand+0x40>)
d005172e:	f240 123f 	movw	r2, #319	; 0x13f
d0051732:	f5c0 70a0 	rsb	r0, r0, #320	; 0x140
d0051736:	21ff      	movs	r1, #255	; 0xff
d0051738:	601a      	str	r2, [r3, #0]
d005173a:	ebc0 1000 	rsb	r0, r0, r0, lsl #4
d005173e:	4b04      	ldr	r3, [pc, #16]	; (d0051750 <beginDepthBand+0x44>)
d0051740:	0182      	lsls	r2, r0, #6
d0051742:	6818      	ldr	r0, [r3, #0]
d0051744:	f007 ba40 	b.w	d0058bc8 <memset>
d0051748:	d005ad68 	.word	0xd005ad68
d005174c:	d005ad6c 	.word	0xd005ad6c
d0051750:	d005ad70 	.word	0xd005ad70

d0051754 <set3DRenderBuffer>:
d0051754:	4b01      	ldr	r3, [pc, #4]	; (d005175c <set3DRenderBuffer+0x8>)
d0051756:	6018      	str	r0, [r3, #0]
d0051758:	4770      	bx	lr
d005175a:	bf00      	nop
d005175c:	d00f5084 	.word	0xd00f5084

d0051760 <putPixel>:
d0051760:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0051764:	d209      	bcs.n	d005177a <putPixel+0x1a>
d0051766:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d005176a:	d206      	bcs.n	d005177a <putPixel+0x1a>
d005176c:	4b03      	ldr	r3, [pc, #12]	; (d005177c <putPixel+0x1c>)
d005176e:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d0051772:	681b      	ldr	r3, [r3, #0]
d0051774:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d0051778:	5442      	strb	r2, [r0, r1]
d005177a:	4770      	bx	lr
d005177c:	d00f5084 	.word	0xd00f5084

d0051780 <drawLine>:
d0051780:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0051784:	b085      	sub	sp, #20
d0051786:	eba2 0c00 	sub.w	ip, r2, r0
d005178a:	eba3 0901 	sub.w	r9, r3, r1
d005178e:	f240 1edf 	movw	lr, #479	; 0x1df
d0051792:	f89d 4038 	ldrb.w	r4, [sp, #56]	; 0x38
d0051796:	f240 1a3f 	movw	sl, #319	; 0x13f
d005179a:	f8df b07c 	ldr.w	fp, [pc, #124]	; d0051818 <drawLine+0x98>
d005179e:	9401      	str	r4, [sp, #4]
d00517a0:	4282      	cmp	r2, r0
d00517a2:	bfcc      	ite	gt
d00517a4:	2401      	movgt	r4, #1
d00517a6:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d00517aa:	9402      	str	r4, [sp, #8]
d00517ac:	428b      	cmp	r3, r1
d00517ae:	bfcc      	ite	gt
d00517b0:	2401      	movgt	r4, #1
d00517b2:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d00517b6:	f1bc 0f00 	cmp.w	ip, #0
d00517ba:	9403      	str	r4, [sp, #12]
d00517bc:	bfb8      	it	lt
d00517be:	f1cc 0c00 	rsblt	ip, ip, #0
d00517c2:	f1b9 0f00 	cmp.w	r9, #0
d00517c6:	bfb8      	it	lt
d00517c8:	f1c9 0900 	rsblt	r9, r9, #0
d00517cc:	ebac 0409 	sub.w	r4, ip, r9
d00517d0:	f1c9 0800 	rsb	r8, r9, #0
d00517d4:	4570      	cmp	r0, lr
d00517d6:	eb00 0780 	add.w	r7, r0, r0, lsl #2
d00517da:	ea4f 0644 	mov.w	r6, r4, lsl #1
d00517de:	d807      	bhi.n	d00517f0 <drawLine+0x70>
d00517e0:	4551      	cmp	r1, sl
d00517e2:	d805      	bhi.n	d00517f0 <drawLine+0x70>
d00517e4:	f8db 5000 	ldr.w	r5, [fp]
d00517e8:	eb05 1587 	add.w	r5, r5, r7, lsl #6
d00517ec:	9f01      	ldr	r7, [sp, #4]
d00517ee:	546f      	strb	r7, [r5, r1]
d00517f0:	4290      	cmp	r0, r2
d00517f2:	d101      	bne.n	d00517f8 <drawLine+0x78>
d00517f4:	4299      	cmp	r1, r3
d00517f6:	d00c      	beq.n	d0051812 <drawLine+0x92>
d00517f8:	ebb8 0f44 	cmp.w	r8, r4, lsl #1
d00517fc:	dc05      	bgt.n	d005180a <drawLine+0x8a>
d00517fe:	9d02      	ldr	r5, [sp, #8]
d0051800:	45b4      	cmp	ip, r6
d0051802:	eba4 0409 	sub.w	r4, r4, r9
d0051806:	4428      	add	r0, r5
d0051808:	dbe4      	blt.n	d00517d4 <drawLine+0x54>
d005180a:	9d03      	ldr	r5, [sp, #12]
d005180c:	4464      	add	r4, ip
d005180e:	4429      	add	r1, r5
d0051810:	e7e0      	b.n	d00517d4 <drawLine+0x54>
d0051812:	b005      	add	sp, #20
d0051814:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0051818:	d00f5084 	.word	0xd00f5084

d005181c <shadeColor>:
d005181c:	2900      	cmp	r1, #0
d005181e:	db09      	blt.n	d0051834 <shadeColor+0x18>
d0051820:	2904      	cmp	r1, #4
d0051822:	dc09      	bgt.n	d0051838 <shadeColor+0x1c>
d0051824:	0109      	lsls	r1, r1, #4
d0051826:	b2c9      	uxtb	r1, r1
d0051828:	f000 000f 	and.w	r0, r0, #15
d005182c:	3020      	adds	r0, #32
d005182e:	4408      	add	r0, r1
d0051830:	b2c0      	uxtb	r0, r0
d0051832:	4770      	bx	lr
d0051834:	2100      	movs	r1, #0
d0051836:	e7f7      	b.n	d0051828 <shadeColor+0xc>
d0051838:	2010      	movs	r0, #16
d005183a:	4770      	bx	lr

d005183c <fillTriangleFlat>:
d005183c:	eddf 7adc 	vldr	s15, [pc, #880]	; d0051bb0 <fillTriangleFlat+0x374>
d0051840:	eef4 0ae7 	vcmpe.f32	s1, s15
d0051844:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0051848:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005184c:	eeb4 1ae7 	vcmpe.f32	s2, s15
d0051850:	ed2d 8b10 	vpush	{d8-d15}
d0051854:	b08d      	sub	sp, #52	; 0x34
d0051856:	9304      	str	r3, [sp, #16]
d0051858:	bf94      	ite	ls
d005185a:	2301      	movls	r3, #1
d005185c:	2300      	movhi	r3, #0
d005185e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051862:	9001      	str	r0, [sp, #4]
d0051864:	9102      	str	r1, [sp, #8]
d0051866:	bf98      	it	ls
d0051868:	f043 0301 	orrls.w	r3, r3, #1
d005186c:	9203      	str	r2, [sp, #12]
d005186e:	f8bd 40a0 	ldrh.w	r4, [sp, #160]	; 0xa0
d0051872:	f8bd 00a4 	ldrh.w	r0, [sp, #164]	; 0xa4
d0051876:	f8bd 10a8 	ldrh.w	r1, [sp, #168]	; 0xa8
d005187a:	f89d 20ac 	ldrb.w	r2, [sp, #172]	; 0xac
d005187e:	2b00      	cmp	r3, #0
d0051880:	f040 8169 	bne.w	d0051b56 <fillTriangleFlat+0x31a>
d0051884:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0051888:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005188c:	bf94      	ite	ls
d005188e:	2701      	movls	r7, #1
d0051890:	2700      	movhi	r7, #0
d0051892:	f240 8160 	bls.w	d0051b56 <fillTriangleFlat+0x31a>
d0051896:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d005189a:	ee07 4a10 	vmov	s14, r4
d005189e:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d00518a2:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d00518a6:	ee87 8a80 	vdiv.f32	s16, s15, s0
d00518aa:	eec7 2a81 	vdiv.f32	s5, s15, s2
d00518ae:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d00518b2:	ee07 0a90 	vmov	s15, r0
d00518b6:	ee71 1aa6 	vadd.f32	s3, s3, s13
d00518ba:	eef8 5a67 	vcvt.f32.u32	s11, s15
d00518be:	ee07 1a90 	vmov	s15, r1
d00518c2:	ee27 7a08 	vmul.f32	s14, s14, s16
d00518c6:	eef8 3a67 	vcvt.f32.u32	s7, s15
d00518ca:	eefd 7ae1 	vcvt.s32.f32	s15, s3
d00518ce:	ee63 3aa2 	vmul.f32	s7, s7, s5
d00518d2:	ee17 3a90 	vmov	r3, s15
d00518d6:	2b00      	cmp	r3, #0
d00518d8:	ee65 5a80 	vmul.f32	s11, s11, s0
d00518dc:	f2c0 8142 	blt.w	d0051b64 <fillTriangleFlat+0x328>
d00518e0:	2b04      	cmp	r3, #4
d00518e2:	f340 813d 	ble.w	d0051b60 <fillTriangleFlat+0x324>
d00518e6:	2710      	movs	r7, #16
d00518e8:	eddd 7a02 	vldr	s15, [sp, #8]
d00518ec:	eddd 6a27 	vldr	s13, [sp, #156]	; 0x9c
d00518f0:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d00518f4:	eddd 7a04 	vldr	s15, [sp, #16]
d00518f8:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d00518fc:	eeb8 3ae7 	vcvt.f32.s32	s6, s15
d0051900:	eddd 7a01 	vldr	s15, [sp, #4]
d0051904:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d0051908:	eddd 7a03 	vldr	s15, [sp, #12]
d005190c:	eef4 4ac3 	vcmpe.f32	s9, s6
d0051910:	eeb8 4ae7 	vcvt.f32.s32	s8, s15
d0051914:	eddd 7a26 	vldr	s15, [sp, #152]	; 0x98
d0051918:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005191c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051920:	f300 8126 	bgt.w	d0051b70 <fillTriangleFlat+0x334>
d0051924:	eef4 4ae6 	vcmpe.f32	s9, s13
d0051928:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005192c:	f300 8217 	bgt.w	d0051d5e <fillTriangleFlat+0x522>
d0051930:	eeb4 3ae6 	vcmpe.f32	s6, s13
d0051934:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051938:	dd17      	ble.n	d005196a <fillTriangleFlat+0x12e>
d005193a:	eeb0 1a65 	vmov.f32	s2, s11
d005193e:	eef0 1a40 	vmov.f32	s3, s0
d0051942:	eeb0 2a43 	vmov.f32	s4, s6
d0051946:	eeb0 5a44 	vmov.f32	s10, s8
d005194a:	eef0 5a63 	vmov.f32	s11, s7
d005194e:	eeb0 0a62 	vmov.f32	s0, s5
d0051952:	eeb0 3a66 	vmov.f32	s6, s13
d0051956:	eeb0 4a67 	vmov.f32	s8, s15
d005195a:	eef0 3a41 	vmov.f32	s7, s2
d005195e:	eef0 2a61 	vmov.f32	s5, s3
d0051962:	eef0 6a42 	vmov.f32	s13, s4
d0051966:	eef0 7a45 	vmov.f32	s15, s10
d005196a:	eeb6 5a00 	vmov.f32	s10, #96	; 0x3f000000  0.5
d005196e:	ee34 2a85 	vadd.f32	s4, s9, s10
d0051972:	ee36 5a85 	vadd.f32	s10, s13, s10
d0051976:	eebd 2ac2 	vcvt.s32.f32	s4, s4
d005197a:	eebd 5ac5 	vcvt.s32.f32	s10, s10
d005197e:	ee12 3a10 	vmov	r3, s4
d0051982:	ee15 2a10 	vmov	r2, s10
d0051986:	4293      	cmp	r3, r2
d0051988:	f000 80e5 	beq.w	d0051b56 <fillTriangleFlat+0x31a>
d005198c:	ee36 2ae4 	vsub.f32	s4, s13, s9
d0051990:	ed9f 1a87 	vldr	s2, [pc, #540]	; d0051bb0 <fillTriangleFlat+0x374>
d0051994:	eeb4 2ac1 	vcmpe.f32	s4, s2
d0051998:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005199c:	f240 80db 	bls.w	d0051b56 <fillTriangleFlat+0x31a>
d00519a0:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d00519a4:	ee77 0ac6 	vsub.f32	s1, s15, s12
d00519a8:	ee72 8ac8 	vsub.f32	s17, s5, s16
d00519ac:	ee81 5a82 	vdiv.f32	s10, s3, s4
d00519b0:	ee33 2a64 	vsub.f32	s4, s6, s9
d00519b4:	ee33 9ac7 	vsub.f32	s18, s7, s14
d00519b8:	eeb4 2ac1 	vcmpe.f32	s4, s2
d00519bc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00519c0:	ee60 0a85 	vmul.f32	s1, s1, s10
d00519c4:	ee68 8a85 	vmul.f32	s17, s17, s10
d00519c8:	ee29 9a05 	vmul.f32	s18, s18, s10
d00519cc:	f300 80fe 	bgt.w	d0051bcc <fillTriangleFlat+0x390>
d00519d0:	ee36 5ac3 	vsub.f32	s10, s13, s6
d00519d4:	eeb4 5ac1 	vcmpe.f32	s10, s2
d00519d8:	ed8d 5a01 	vstr	s10, [sp, #4]
d00519dc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00519e0:	f340 80b9 	ble.w	d0051b56 <fillTriangleFlat+0x31a>
d00519e4:	ee81 5a85 	vdiv.f32	s10, s3, s10
d00519e8:	ee77 7ac4 	vsub.f32	s15, s15, s8
d00519ec:	eeb4 2ac1 	vcmpe.f32	s4, s2
d00519f0:	ee72 2ac0 	vsub.f32	s5, s5, s0
d00519f4:	ee73 3ae5 	vsub.f32	s7, s7, s11
d00519f8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00519fc:	ee67 7a85 	vmul.f32	s15, s15, s10
d0051a00:	ee62 fa85 	vmul.f32	s31, s5, s10
d0051a04:	ee23 5a85 	vmul.f32	s10, s7, s10
d0051a08:	edcd 7a04 	vstr	s15, [sp, #16]
d0051a0c:	f300 8343 	bgt.w	d0052096 <fillTriangleFlat+0x85a>
d0051a10:	4a68      	ldr	r2, [pc, #416]	; (d0051bb4 <fillTriangleFlat+0x378>)
d0051a12:	eefd 7ac3 	vcvt.s32.f32	s15, s6
d0051a16:	4b68      	ldr	r3, [pc, #416]	; (d0051bb8 <fillTriangleFlat+0x37c>)
d0051a18:	f8d2 a000 	ldr.w	sl, [r2]
d0051a1c:	681b      	ldr	r3, [r3, #0]
d0051a1e:	edcd 7a02 	vstr	s15, [sp, #8]
d0051a22:	9303      	str	r3, [sp, #12]
d0051a24:	9b02      	ldr	r3, [sp, #8]
d0051a26:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0051a2a:	4553      	cmp	r3, sl
d0051a2c:	ee17 ea90 	vmov	lr, s15
d0051a30:	bfb8      	it	lt
d0051a32:	4653      	movlt	r3, sl
d0051a34:	f10e 3eff 	add.w	lr, lr, #4294967295	; 0xffffffff
d0051a38:	469b      	mov	fp, r3
d0051a3a:	9b03      	ldr	r3, [sp, #12]
d0051a3c:	459e      	cmp	lr, r3
d0051a3e:	bfa8      	it	ge
d0051a40:	469e      	movge	lr, r3
d0051a42:	45f3      	cmp	fp, lr
d0051a44:	f300 8087 	bgt.w	d0051b56 <fillTriangleFlat+0x31a>
d0051a48:	ee07 ba90 	vmov	s15, fp
d0051a4c:	eef6 1a00 	vmov.f32	s3, #96	; 0x3f000000  0.5
d0051a50:	ebaa 1a0a 	sub.w	sl, sl, sl, lsl #4
d0051a54:	4b59      	ldr	r3, [pc, #356]	; (d0051bbc <fillTriangleFlat+0x380>)
d0051a56:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051a5a:	ed9d ba04 	vldr	s22, [sp, #16]
d0051a5e:	ea4f 124a 	mov.w	r2, sl, lsl #5
d0051a62:	681b      	ldr	r3, [r3, #0]
d0051a64:	f10e 0e01 	add.w	lr, lr, #1
d0051a68:	eddf 9a51 	vldr	s19, [pc, #324]	; d0051bb0 <fillTriangleFlat+0x374>
d0051a6c:	ee77 7aa1 	vadd.f32	s15, s15, s3
d0051a70:	ed9f aa53 	vldr	s20, [pc, #332]	; d0051bc0 <fillTriangleFlat+0x384>
d0051a74:	ed9f 2a53 	vldr	s4, [pc, #332]	; d0051bc4 <fillTriangleFlat+0x388>
d0051a78:	ed9f 1a53 	vldr	s2, [pc, #332]	; d0051bc8 <fillTriangleFlat+0x38c>
d0051a7c:	ee77 4ae4 	vsub.f32	s9, s15, s9
d0051a80:	9202      	str	r2, [sp, #8]
d0051a82:	ee37 3ac3 	vsub.f32	s6, s15, s6
d0051a86:	9301      	str	r3, [sp, #4]
d0051a88:	eea0 6aa4 	vfma.f32	s12, s1, s9
d0051a8c:	eea8 8aa4 	vfma.f32	s16, s17, s9
d0051a90:	eea9 7a24 	vfma.f32	s14, s18, s9
d0051a94:	eea3 4a0b 	vfma.f32	s8, s6, s22
d0051a98:	eea3 0a2f 	vfma.f32	s0, s6, s31
d0051a9c:	eee5 5a03 	vfma.f32	s11, s10, s6
d0051aa0:	e033      	b.n	d0051b0a <fillTriangleFlat+0x2ce>
d0051aa2:	eef0 aa47 	vmov.f32	s21, s14
d0051aa6:	eef0 2a48 	vmov.f32	s5, s16
d0051aaa:	eef0 6a46 	vmov.f32	s13, s12
d0051aae:	eeb0 3a65 	vmov.f32	s6, s11
d0051ab2:	eef0 4a40 	vmov.f32	s9, s0
d0051ab6:	eef0 3a44 	vmov.f32	s7, s8
d0051aba:	fefa 7a66 	vrintp.f32	s15, s13
d0051abe:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0051ac2:	f240 13df 	movw	r3, #479	; 0x1df
d0051ac6:	ee17 ca90 	vmov	ip, s15
d0051aca:	fefa 7a63 	vrintp.f32	s15, s7
d0051ace:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0051ad2:	f10c 3cff 	add.w	ip, ip, #4294967295	; 0xffffffff
d0051ad6:	ee17 5a90 	vmov	r5, s15
d0051ada:	459c      	cmp	ip, r3
d0051adc:	ea25 75e5 	bic.w	r5, r5, r5, asr #31
d0051ae0:	bfa8      	it	ge
d0051ae2:	469c      	movge	ip, r3
d0051ae4:	45ac      	cmp	ip, r5
d0051ae6:	f280 816c 	bge.w	d0051dc2 <fillTriangleFlat+0x586>
d0051aea:	f10b 0b01 	add.w	fp, fp, #1
d0051aee:	ee36 6a20 	vadd.f32	s12, s12, s1
d0051af2:	ee38 8a28 	vadd.f32	s16, s16, s17
d0051af6:	45f3      	cmp	fp, lr
d0051af8:	ee37 7a09 	vadd.f32	s14, s14, s18
d0051afc:	ee34 4a0b 	vadd.f32	s8, s8, s22
d0051b00:	ee30 0a2f 	vadd.f32	s0, s0, s31
d0051b04:	ee75 5a85 	vadd.f32	s11, s11, s10
d0051b08:	d025      	beq.n	d0051b56 <fillTriangleFlat+0x31a>
d0051b0a:	eeb4 6ac4 	vcmpe.f32	s12, s8
d0051b0e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051b12:	dcc6      	bgt.n	d0051aa2 <fillTriangleFlat+0x266>
d0051b14:	eef0 aa65 	vmov.f32	s21, s11
d0051b18:	eef0 2a40 	vmov.f32	s5, s0
d0051b1c:	eef0 6a44 	vmov.f32	s13, s8
d0051b20:	eeb0 3a47 	vmov.f32	s6, s14
d0051b24:	eef0 4a48 	vmov.f32	s9, s16
d0051b28:	eef0 3a46 	vmov.f32	s7, s12
d0051b2c:	e7c5      	b.n	d0051aba <fillTriangleFlat+0x27e>
d0051b2e:	eddd 6a07 	vldr	s13, [sp, #28]
d0051b32:	f8dd a020 	ldr.w	sl, [sp, #32]
d0051b36:	ed9d 4a09 	vldr	s8, [sp, #36]	; 0x24
d0051b3a:	ed9d 7a0a 	vldr	s14, [sp, #40]	; 0x28
d0051b3e:	ed9d 8a0b 	vldr	s16, [sp, #44]	; 0x2c
d0051b42:	eddf 7a1b 	vldr	s15, [pc, #108]	; d0051bb0 <fillTriangleFlat+0x374>
d0051b46:	eddd 3a01 	vldr	s7, [sp, #4]
d0051b4a:	eef4 3ae7 	vcmpe.f32	s7, s15
d0051b4e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051b52:	f73f af67 	bgt.w	d0051a24 <fillTriangleFlat+0x1e8>
d0051b56:	b00d      	add	sp, #52	; 0x34
d0051b58:	ecbd 8b10 	vpop	{d8-d15}
d0051b5c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0051b60:	011b      	lsls	r3, r3, #4
d0051b62:	b2df      	uxtb	r7, r3
d0051b64:	f002 020f 	and.w	r2, r2, #15
d0051b68:	3220      	adds	r2, #32
d0051b6a:	4417      	add	r7, r2
d0051b6c:	b2ff      	uxtb	r7, r7
d0051b6e:	e6bb      	b.n	d00518e8 <fillTriangleFlat+0xac>
d0051b70:	eeb4 3ae6 	vcmpe.f32	s6, s13
d0051b74:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051b78:	f340 810a 	ble.w	d0051d90 <fillTriangleFlat+0x554>
d0051b7c:	eeb0 1a63 	vmov.f32	s2, s7
d0051b80:	eef0 1a62 	vmov.f32	s3, s5
d0051b84:	eeb0 2a66 	vmov.f32	s4, s13
d0051b88:	eeb0 5a67 	vmov.f32	s10, s15
d0051b8c:	eef0 3a47 	vmov.f32	s7, s14
d0051b90:	eef0 2a48 	vmov.f32	s5, s16
d0051b94:	eef0 6a64 	vmov.f32	s13, s9
d0051b98:	eef0 7a46 	vmov.f32	s15, s12
d0051b9c:	eeb0 7a41 	vmov.f32	s14, s2
d0051ba0:	eeb0 8a61 	vmov.f32	s16, s3
d0051ba4:	eef0 4a42 	vmov.f32	s9, s4
d0051ba8:	eeb0 6a45 	vmov.f32	s12, s10
d0051bac:	e6dd      	b.n	d005196a <fillTriangleFlat+0x12e>
d0051bae:	bf00      	nop
d0051bb0:	38d1b717 	.word	0x38d1b717
d0051bb4:	d005ad68 	.word	0xd005ad68
d0051bb8:	d005ad6c 	.word	0xd005ad6c
d0051bbc:	d005ad70 	.word	0xd005ad70
d0051bc0:	33d6bf95 	.word	0x33d6bf95
d0051bc4:	00000000 	.word	0x00000000
d0051bc8:	477fff00 	.word	0x477fff00
d0051bcc:	ee81 5a82 	vdiv.f32	s10, s3, s4
d0051bd0:	ee76 aac3 	vsub.f32	s21, s13, s6
d0051bd4:	ee34 aa46 	vsub.f32	s20, s8, s12
d0051bd8:	ee70 9a48 	vsub.f32	s19, s0, s16
d0051bdc:	ee35 2ac7 	vsub.f32	s4, s11, s14
d0051be0:	edcd aa01 	vstr	s21, [sp, #4]
d0051be4:	eef4 aac1 	vcmpe.f32	s21, s2
d0051be8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051bec:	ee2a aa05 	vmul.f32	s20, s20, s10
d0051bf0:	ee69 9a85 	vmul.f32	s19, s19, s10
d0051bf4:	ee22 5a05 	vmul.f32	s10, s4, s10
d0051bf8:	eef0 ea45 	vmov.f32	s29, s10
d0051bfc:	f340 8244 	ble.w	d0052088 <fillTriangleFlat+0x84c>
d0051c00:	ee81 2aaa 	vdiv.f32	s4, s3, s21
d0051c04:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0051c08:	ee72 2ac0 	vsub.f32	s5, s5, s0
d0051c0c:	ee33 5ae5 	vsub.f32	s10, s7, s11
d0051c10:	ee67 7a82 	vmul.f32	s15, s15, s4
d0051c14:	ee62 fa82 	vmul.f32	s31, s5, s4
d0051c18:	ee25 5a02 	vmul.f32	s10, s10, s4
d0051c1c:	edcd 7a04 	vstr	s15, [sp, #16]
d0051c20:	eefd 7ac3 	vcvt.s32.f32	s15, s6
d0051c24:	4bd2      	ldr	r3, [pc, #840]	; (d0051f70 <fillTriangleFlat+0x734>)
d0051c26:	4ad3      	ldr	r2, [pc, #844]	; (d0051f74 <fillTriangleFlat+0x738>)
d0051c28:	6819      	ldr	r1, [r3, #0]
d0051c2a:	ee17 3a90 	vmov	r3, s15
d0051c2e:	edcd 7a02 	vstr	s15, [sp, #8]
d0051c32:	eefd 7ae4 	vcvt.s32.f32	s15, s9
d0051c36:	f8d2 a000 	ldr.w	sl, [r2]
d0051c3a:	3b01      	subs	r3, #1
d0051c3c:	9103      	str	r1, [sp, #12]
d0051c3e:	ee17 ba90 	vmov	fp, s15
d0051c42:	428b      	cmp	r3, r1
d0051c44:	bfa8      	it	ge
d0051c46:	460b      	movge	r3, r1
d0051c48:	45d3      	cmp	fp, sl
d0051c4a:	bfb8      	it	lt
d0051c4c:	46d3      	movlt	fp, sl
d0051c4e:	455b      	cmp	r3, fp
d0051c50:	f6ff af77 	blt.w	d0051b42 <fillTriangleFlat+0x306>
d0051c54:	eeb6 2a00 	vmov.f32	s4, #96	; 0x3f000000  0.5
d0051c58:	ee07 ba90 	vmov	s15, fp
d0051c5c:	49c6      	ldr	r1, [pc, #792]	; (d0051f78 <fillTriangleFlat+0x73c>)
d0051c5e:	ebaa 120a 	sub.w	r2, sl, sl, lsl #4
d0051c62:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051c66:	1c58      	adds	r0, r3, #1
d0051c68:	ee72 3a64 	vsub.f32	s7, s4, s9
d0051c6c:	680b      	ldr	r3, [r1, #0]
d0051c6e:	eeb0 ba46 	vmov.f32	s22, s12
d0051c72:	f8cd a020 	str.w	sl, [sp, #32]
d0051c76:	eeb0 da48 	vmov.f32	s26, s16
d0051c7a:	9305      	str	r3, [sp, #20]
d0051c7c:	ee77 7aa3 	vadd.f32	s15, s15, s7
d0051c80:	0153      	lsls	r3, r2, #5
d0051c82:	eef0 ca47 	vmov.f32	s25, s14
d0051c86:	eddf dabd 	vldr	s27, [pc, #756]	; d0051f7c <fillTriangleFlat+0x740>
d0051c8a:	eef0 aa46 	vmov.f32	s21, s12
d0051c8e:	eddf 2abf 	vldr	s5, [pc, #764]	; d0051f8c <fillTriangleFlat+0x750>
d0051c92:	eeb0 ca48 	vmov.f32	s24, s16
d0051c96:	eddf 1aba 	vldr	s3, [pc, #744]	; d0051f80 <fillTriangleFlat+0x744>
d0051c9a:	eef0 ba47 	vmov.f32	s23, s14
d0051c9e:	4682      	mov	sl, r0
d0051ca0:	eea0 baa7 	vfma.f32	s22, s1, s15
d0051ca4:	9306      	str	r3, [sp, #24]
d0051ca6:	eea8 daa7 	vfma.f32	s26, s17, s15
d0051caa:	edcd 6a07 	vstr	s13, [sp, #28]
d0051cae:	eee9 ca27 	vfma.f32	s25, s18, s15
d0051cb2:	ed8d 4a09 	vstr	s8, [sp, #36]	; 0x24
d0051cb6:	eee7 aa8a 	vfma.f32	s21, s15, s20
d0051cba:	ed8d 7a0a 	vstr	s14, [sp, #40]	; 0x28
d0051cbe:	eea7 caa9 	vfma.f32	s24, s15, s19
d0051cc2:	ed8d 8a0b 	vstr	s16, [sp, #44]	; 0x2c
d0051cc6:	eee7 baae 	vfma.f32	s23, s15, s29
d0051cca:	eeb0 ea69 	vmov.f32	s28, s19
d0051cce:	e034      	b.n	d0051d3a <fillTriangleFlat+0x4fe>
d0051cd0:	eef0 3a6c 	vmov.f32	s7, s25
d0051cd4:	eeb0 4a4d 	vmov.f32	s8, s26
d0051cd8:	eef0 7a4b 	vmov.f32	s15, s22
d0051cdc:	eef0 6a6b 	vmov.f32	s13, s23
d0051ce0:	eeb0 7a4c 	vmov.f32	s14, s24
d0051ce4:	eeb0 1a6a 	vmov.f32	s2, s21
d0051ce8:	feba 8a67 	vrintp.f32	s16, s15
d0051cec:	eebd 8ac8 	vcvt.s32.f32	s16, s16
d0051cf0:	fefa 9a41 	vrintp.f32	s19, s2
d0051cf4:	f240 13df 	movw	r3, #479	; 0x1df
d0051cf8:	ee18 ca10 	vmov	ip, s16
d0051cfc:	eebd 8ae9 	vcvt.s32.f32	s16, s19
d0051d00:	f10c 3cff 	add.w	ip, ip, #4294967295	; 0xffffffff
d0051d04:	ee18 5a10 	vmov	r5, s16
d0051d08:	459c      	cmp	ip, r3
d0051d0a:	ea25 75e5 	bic.w	r5, r5, r5, asr #31
d0051d0e:	bfa8      	it	ge
d0051d10:	469c      	movge	ip, r3
d0051d12:	45ac      	cmp	ip, r5
d0051d14:	f280 80f8 	bge.w	d0051f08 <fillTriangleFlat+0x6cc>
d0051d18:	f10b 0b01 	add.w	fp, fp, #1
d0051d1c:	ee3b ba20 	vadd.f32	s22, s22, s1
d0051d20:	ee3d da28 	vadd.f32	s26, s26, s17
d0051d24:	45d3      	cmp	fp, sl
d0051d26:	ee7c ca89 	vadd.f32	s25, s25, s18
d0051d2a:	ee7a aa8a 	vadd.f32	s21, s21, s20
d0051d2e:	ee3c ca0e 	vadd.f32	s24, s24, s28
d0051d32:	ee7b baae 	vadd.f32	s23, s23, s29
d0051d36:	f43f aefa 	beq.w	d0051b2e <fillTriangleFlat+0x2f2>
d0051d3a:	eeb4 baea 	vcmpe.f32	s22, s21
d0051d3e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051d42:	dcc5      	bgt.n	d0051cd0 <fillTriangleFlat+0x494>
d0051d44:	eef0 3a6b 	vmov.f32	s7, s23
d0051d48:	eeb0 4a4c 	vmov.f32	s8, s24
d0051d4c:	eef0 7a6a 	vmov.f32	s15, s21
d0051d50:	eef0 6a6c 	vmov.f32	s13, s25
d0051d54:	eeb0 7a4d 	vmov.f32	s14, s26
d0051d58:	eeb0 1a4b 	vmov.f32	s2, s22
d0051d5c:	e7c4      	b.n	d0051ce8 <fillTriangleFlat+0x4ac>
d0051d5e:	eeb0 1a47 	vmov.f32	s2, s14
d0051d62:	eef0 1a48 	vmov.f32	s3, s16
d0051d66:	eeb0 2a64 	vmov.f32	s4, s9
d0051d6a:	eeb0 5a46 	vmov.f32	s10, s12
d0051d6e:	eeb0 7a63 	vmov.f32	s14, s7
d0051d72:	eeb0 8a62 	vmov.f32	s16, s5
d0051d76:	eef0 4a66 	vmov.f32	s9, s13
d0051d7a:	eeb0 6a67 	vmov.f32	s12, s15
d0051d7e:	eef0 3a41 	vmov.f32	s7, s2
d0051d82:	eef0 2a61 	vmov.f32	s5, s3
d0051d86:	eef0 6a42 	vmov.f32	s13, s4
d0051d8a:	eef0 7a45 	vmov.f32	s15, s10
d0051d8e:	e5cf      	b.n	d0051930 <fillTriangleFlat+0xf4>
d0051d90:	eeb0 1a47 	vmov.f32	s2, s14
d0051d94:	eef0 1a48 	vmov.f32	s3, s16
d0051d98:	eeb0 2a64 	vmov.f32	s4, s9
d0051d9c:	eeb0 5a46 	vmov.f32	s10, s12
d0051da0:	eeb0 7a65 	vmov.f32	s14, s11
d0051da4:	eeb0 8a40 	vmov.f32	s16, s0
d0051da8:	eef0 4a43 	vmov.f32	s9, s6
d0051dac:	eeb0 6a44 	vmov.f32	s12, s8
d0051db0:	eef0 5a41 	vmov.f32	s11, s2
d0051db4:	eeb0 0a61 	vmov.f32	s0, s3
d0051db8:	eeb0 3a42 	vmov.f32	s6, s4
d0051dbc:	eeb0 4a45 	vmov.f32	s8, s10
d0051dc0:	e5b6      	b.n	d0051930 <fillTriangleFlat+0xf4>
d0051dc2:	ee76 6ae3 	vsub.f32	s13, s13, s7
d0051dc6:	eef4 6ae9 	vcmpe.f32	s13, s19
d0051dca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051dce:	f340 8156 	ble.w	d005207e <fillTriangleFlat+0x842>
d0051dd2:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0051dd6:	ee72 2ae4 	vsub.f32	s5, s5, s9
d0051dda:	ee7a aac3 	vsub.f32	s21, s21, s6
d0051dde:	eec7 baa6 	vdiv.f32	s23, s15, s13
d0051de2:	ee07 5a90 	vmov	s15, r5
d0051de6:	ee71 3ae3 	vsub.f32	s7, s3, s7
d0051dea:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051dee:	ee77 3aa3 	vadd.f32	s7, s15, s7
d0051df2:	ee62 2aab 	vmul.f32	s5, s5, s23
d0051df6:	ee6a aaab 	vmul.f32	s21, s21, s23
d0051dfa:	eee3 4aa2 	vfma.f32	s9, s7, s5
d0051dfe:	eea3 3aaa 	vfma.f32	s6, s7, s21
d0051e02:	ebcb 190b 	rsb	r9, fp, fp, lsl #4
d0051e06:	4b5f      	ldr	r3, [pc, #380]	; (d0051f84 <fillTriangleFlat+0x748>)
d0051e08:	eb05 0885 	add.w	r8, r5, r5, lsl #2
d0051e0c:	9a02      	ldr	r2, [sp, #8]
d0051e0e:	681b      	ldr	r3, [r3, #0]
d0051e10:	eb02 1949 	add.w	r9, r2, r9, lsl #5
d0051e14:	eb0b 1888 	add.w	r8, fp, r8, lsl #6
d0051e18:	44a9      	add	r9, r5
d0051e1a:	4498      	add	r8, r3
d0051e1c:	9b01      	ldr	r3, [sp, #4]
d0051e1e:	eb03 0949 	add.w	r9, r3, r9, lsl #1
d0051e22:	e011      	b.n	d0051e48 <fillTriangleFlat+0x60c>
d0051e24:	ee07 1a90 	vmov	s15, r1
d0051e28:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0051e2c:	eb09 0941 	add.w	r9, r9, r1, lsl #1
d0051e30:	440d      	add	r5, r1
d0051e32:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051e36:	eb08 1883 	add.w	r8, r8, r3, lsl #6
d0051e3a:	eee7 4aa2 	vfma.f32	s9, s15, s5
d0051e3e:	eea7 3aaa 	vfma.f32	s6, s15, s21
d0051e42:	45ac      	cmp	ip, r5
d0051e44:	f6ff ae51 	blt.w	d0051aea <fillTriangleFlat+0x2ae>
d0051e48:	ebac 0605 	sub.w	r6, ip, r5
d0051e4c:	eef4 4aca 	vcmpe.f32	s9, s20
d0051e50:	1c71      	adds	r1, r6, #1
d0051e52:	2930      	cmp	r1, #48	; 0x30
d0051e54:	bfa8      	it	ge
d0051e56:	2130      	movge	r1, #48	; 0x30
d0051e58:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051e5c:	d9e2      	bls.n	d0051e24 <fillTriangleFlat+0x5e8>
d0051e5e:	2e00      	cmp	r6, #0
d0051e60:	eec3 6a24 	vdiv.f32	s13, s6, s9
d0051e64:	dd4c      	ble.n	d0051f00 <fillTriangleFlat+0x6c4>
d0051e66:	1e4b      	subs	r3, r1, #1
d0051e68:	ee07 3a90 	vmov	s15, r3
d0051e6c:	eef0 3a64 	vmov.f32	s7, s9
d0051e70:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051e74:	eee7 3aa2 	vfma.f32	s7, s15, s5
d0051e78:	eef4 3aca 	vcmpe.f32	s7, s20
d0051e7c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051e80:	dd3f      	ble.n	d0051f02 <fillTriangleFlat+0x6c6>
d0051e82:	eeb0 ca43 	vmov.f32	s24, s6
d0051e86:	eea7 caaa 	vfma.f32	s24, s15, s21
d0051e8a:	eecc ba23 	vdiv.f32	s23, s24, s7
d0051e8e:	ee7b bae6 	vsub.f32	s23, s23, s13
d0051e92:	eecb 3aa7 	vdiv.f32	s7, s23, s15
d0051e96:	f1a9 0002 	sub.w	r0, r9, #2
d0051e9a:	2300      	movs	r3, #0
d0051e9c:	fec6 7a82 	vmaxnm.f32	s15, s13, s4
d0051ea0:	fec7 7ac1 	vminnm.f32	s15, s15, s2
d0051ea4:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0051ea8:	f830 4f02 	ldrh.w	r4, [r0, #2]!
d0051eac:	3301      	adds	r3, #1
d0051eae:	ee77 7aa1 	vadd.f32	s15, s15, s3
d0051eb2:	ea4f 1a82 	mov.w	sl, r2, lsl #6
d0051eb6:	ee76 6aa3 	vadd.f32	s13, s13, s7
d0051eba:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0051ebe:	ee17 2a90 	vmov	r2, s15
d0051ec2:	b292      	uxth	r2, r2
d0051ec4:	4294      	cmp	r4, r2
d0051ec6:	d902      	bls.n	d0051ece <fillTriangleFlat+0x692>
d0051ec8:	8002      	strh	r2, [r0, #0]
d0051eca:	f808 700a 	strb.w	r7, [r8, sl]
d0051ece:	4299      	cmp	r1, r3
d0051ed0:	dce4      	bgt.n	d0051e9c <fillTriangleFlat+0x660>
d0051ed2:	2e00      	cmp	r6, #0
d0051ed4:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0051ed8:	ea4f 0241 	mov.w	r2, r1, lsl #1
d0051edc:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0051ee0:	bfbc      	itt	lt
d0051ee2:	2202      	movlt	r2, #2
d0051ee4:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0051ee8:	4491      	add	r9, r2
d0051eea:	4498      	add	r8, r3
d0051eec:	ee07 1a90 	vmov	s15, r1
d0051ef0:	440d      	add	r5, r1
d0051ef2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051ef6:	eee7 4aa2 	vfma.f32	s9, s15, s5
d0051efa:	eea7 3aaa 	vfma.f32	s6, s15, s21
d0051efe:	e7a0      	b.n	d0051e42 <fillTriangleFlat+0x606>
d0051f00:	d1f4      	bne.n	d0051eec <fillTriangleFlat+0x6b0>
d0051f02:	eef0 3a42 	vmov.f32	s7, s4
d0051f06:	e7c6      	b.n	d0051e96 <fillTriangleFlat+0x65a>
d0051f08:	ee77 7ac1 	vsub.f32	s15, s15, s2
d0051f0c:	ed9f 8a1e 	vldr	s16, [pc, #120]	; d0051f88 <fillTriangleFlat+0x74c>
d0051f10:	eef4 7ac8 	vcmpe.f32	s15, s16
d0051f14:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051f18:	f340 80ac 	ble.w	d0052074 <fillTriangleFlat+0x838>
d0051f1c:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0051f20:	ee34 4a47 	vsub.f32	s8, s8, s14
d0051f24:	ee73 3ae6 	vsub.f32	s7, s7, s13
d0051f28:	ee89 8aa7 	vdiv.f32	s16, s19, s15
d0051f2c:	ee07 5a90 	vmov	s15, r5
d0051f30:	ee32 1a41 	vsub.f32	s2, s4, s2
d0051f34:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051f38:	ee37 1a81 	vadd.f32	s2, s15, s2
d0051f3c:	ee24 4a08 	vmul.f32	s8, s8, s16
d0051f40:	ee63 3a88 	vmul.f32	s7, s7, s16
d0051f44:	eea1 7a04 	vfma.f32	s14, s2, s8
d0051f48:	eee1 6a23 	vfma.f32	s13, s2, s7
d0051f4c:	ebcb 180b 	rsb	r8, fp, fp, lsl #4
d0051f50:	4b0c      	ldr	r3, [pc, #48]	; (d0051f84 <fillTriangleFlat+0x748>)
d0051f52:	eb05 0e85 	add.w	lr, r5, r5, lsl #2
d0051f56:	9a06      	ldr	r2, [sp, #24]
d0051f58:	681b      	ldr	r3, [r3, #0]
d0051f5a:	eb02 1848 	add.w	r8, r2, r8, lsl #5
d0051f5e:	eb0b 1e8e 	add.w	lr, fp, lr, lsl #6
d0051f62:	44a8      	add	r8, r5
d0051f64:	449e      	add	lr, r3
d0051f66:	9b05      	ldr	r3, [sp, #20]
d0051f68:	eb03 0848 	add.w	r8, r3, r8, lsl #1
d0051f6c:	e022      	b.n	d0051fb4 <fillTriangleFlat+0x778>
d0051f6e:	bf00      	nop
d0051f70:	d005ad6c 	.word	0xd005ad6c
d0051f74:	d005ad68 	.word	0xd005ad68
d0051f78:	d005ad70 	.word	0xd005ad70
d0051f7c:	33d6bf95 	.word	0x33d6bf95
d0051f80:	477fff00 	.word	0x477fff00
d0051f84:	d00f5084 	.word	0xd00f5084
d0051f88:	38d1b717 	.word	0x38d1b717
d0051f8c:	00000000 	.word	0x00000000
d0051f90:	ee07 1a90 	vmov	s15, r1
d0051f94:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0051f98:	eb08 0841 	add.w	r8, r8, r1, lsl #1
d0051f9c:	440d      	add	r5, r1
d0051f9e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051fa2:	eb0e 1e83 	add.w	lr, lr, r3, lsl #6
d0051fa6:	eea7 7a84 	vfma.f32	s14, s15, s8
d0051faa:	eee7 6aa3 	vfma.f32	s13, s15, s7
d0051fae:	4565      	cmp	r5, ip
d0051fb0:	f73f aeb2 	bgt.w	d0051d18 <fillTriangleFlat+0x4dc>
d0051fb4:	ebac 0605 	sub.w	r6, ip, r5
d0051fb8:	eeb4 7aed 	vcmpe.f32	s14, s27
d0051fbc:	1c71      	adds	r1, r6, #1
d0051fbe:	2930      	cmp	r1, #48	; 0x30
d0051fc0:	bfa8      	it	ge
d0051fc2:	2130      	movge	r1, #48	; 0x30
d0051fc4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051fc8:	d9e2      	bls.n	d0051f90 <fillTriangleFlat+0x754>
d0051fca:	2e00      	cmp	r6, #0
d0051fcc:	ee86 1a87 	vdiv.f32	s2, s13, s14
d0051fd0:	dd4c      	ble.n	d005206c <fillTriangleFlat+0x830>
d0051fd2:	1e4b      	subs	r3, r1, #1
d0051fd4:	ee07 3a90 	vmov	s15, r3
d0051fd8:	eeb0 8a47 	vmov.f32	s16, s14
d0051fdc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051fe0:	eea7 8a84 	vfma.f32	s16, s15, s8
d0051fe4:	eeb4 8aed 	vcmpe.f32	s16, s27
d0051fe8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0051fec:	dd3f      	ble.n	d005206e <fillTriangleFlat+0x832>
d0051fee:	eeb0 fa66 	vmov.f32	s30, s13
d0051ff2:	eea7 faa3 	vfma.f32	s30, s15, s7
d0051ff6:	eecf 9a08 	vdiv.f32	s19, s30, s16
d0051ffa:	ee79 9ac1 	vsub.f32	s19, s19, s2
d0051ffe:	ee89 8aa7 	vdiv.f32	s16, s19, s15
d0052002:	f1a8 0002 	sub.w	r0, r8, #2
d0052006:	2200      	movs	r2, #0
d0052008:	fec1 7a22 	vmaxnm.f32	s15, s2, s5
d005200c:	fec7 7ae1 	vminnm.f32	s15, s15, s3
d0052010:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0052014:	f830 4f02 	ldrh.w	r4, [r0, #2]!
d0052018:	3201      	adds	r2, #1
d005201a:	ee77 7a82 	vadd.f32	s15, s15, s4
d005201e:	ea4f 1983 	mov.w	r9, r3, lsl #6
d0052022:	ee31 1a08 	vadd.f32	s2, s2, s16
d0052026:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d005202a:	ee17 3a90 	vmov	r3, s15
d005202e:	b29b      	uxth	r3, r3
d0052030:	429c      	cmp	r4, r3
d0052032:	d902      	bls.n	d005203a <fillTriangleFlat+0x7fe>
d0052034:	8003      	strh	r3, [r0, #0]
d0052036:	f80e 7009 	strb.w	r7, [lr, r9]
d005203a:	428a      	cmp	r2, r1
d005203c:	dbe4      	blt.n	d0052008 <fillTriangleFlat+0x7cc>
d005203e:	2e00      	cmp	r6, #0
d0052040:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0052044:	ea4f 0241 	mov.w	r2, r1, lsl #1
d0052048:	ea4f 1383 	mov.w	r3, r3, lsl #6
d005204c:	bfbc      	itt	lt
d005204e:	2202      	movlt	r2, #2
d0052050:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0052054:	4490      	add	r8, r2
d0052056:	449e      	add	lr, r3
d0052058:	ee07 1a90 	vmov	s15, r1
d005205c:	440d      	add	r5, r1
d005205e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052062:	eea7 7a84 	vfma.f32	s14, s15, s8
d0052066:	eee7 6aa3 	vfma.f32	s13, s15, s7
d005206a:	e7a0      	b.n	d0051fae <fillTriangleFlat+0x772>
d005206c:	d1f4      	bne.n	d0052058 <fillTriangleFlat+0x81c>
d005206e:	eeb0 8a62 	vmov.f32	s16, s5
d0052072:	e7c6      	b.n	d0052002 <fillTriangleFlat+0x7c6>
d0052074:	eef0 3a62 	vmov.f32	s7, s5
d0052078:	eeb0 4a62 	vmov.f32	s8, s5
d005207c:	e766      	b.n	d0051f4c <fillTriangleFlat+0x710>
d005207e:	eef0 aa42 	vmov.f32	s21, s4
d0052082:	eef0 2a42 	vmov.f32	s5, s4
d0052086:	e6bc      	b.n	d0051e02 <fillTriangleFlat+0x5c6>
d0052088:	ed1f 5a40 	vldr	s10, [pc, #-256]	; d0051f8c <fillTriangleFlat+0x750>
d005208c:	eef0 fa45 	vmov.f32	s31, s10
d0052090:	ed8d 5a04 	vstr	s10, [sp, #16]
d0052094:	e5c4      	b.n	d0051c20 <fillTriangleFlat+0x3e4>
d0052096:	ed5f 7a43 	vldr	s15, [pc, #-268]	; d0051f8c <fillTriangleFlat+0x750>
d005209a:	eef0 ea67 	vmov.f32	s29, s15
d005209e:	eef0 9a67 	vmov.f32	s19, s15
d00520a2:	eeb0 aa67 	vmov.f32	s20, s15
d00520a6:	e5bb      	b.n	d0051c20 <fillTriangleFlat+0x3e4>

d00520a8 <fillTriangleDitherBayer>:
d00520a8:	eddf 7ae2 	vldr	s15, [pc, #904]	; d0052434 <fillTriangleDitherBayer+0x38c>
d00520ac:	eef4 0ae7 	vcmpe.f32	s1, s15
d00520b0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00520b4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00520b8:	eeb4 1ae7 	vcmpe.f32	s2, s15
d00520bc:	ed2d 8b10 	vpush	{d8-d15}
d00520c0:	b095      	sub	sp, #84	; 0x54
d00520c2:	9202      	str	r2, [sp, #8]
d00520c4:	bf94      	ite	ls
d00520c6:	2201      	movls	r2, #1
d00520c8:	2200      	movhi	r2, #0
d00520ca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00520ce:	9303      	str	r3, [sp, #12]
d00520d0:	f8bd 40c0 	ldrh.w	r4, [sp, #192]	; 0xc0
d00520d4:	bf98      	it	ls
d00520d6:	f042 0201 	orrls.w	r2, r2, #1
d00520da:	f89d 30cc 	ldrb.w	r3, [sp, #204]	; 0xcc
d00520de:	e9cd 0100 	strd	r0, r1, [sp]
d00520e2:	f8bd 00c4 	ldrh.w	r0, [sp, #196]	; 0xc4
d00520e6:	f8bd 10c8 	ldrh.w	r1, [sp, #200]	; 0xc8
d00520ea:	2a00      	cmp	r2, #0
d00520ec:	f040 819d 	bne.w	d005242a <fillTriangleDitherBayer+0x382>
d00520f0:	eeb4 0a67 	vcmp.f32	s0, s15
d00520f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00520f8:	f240 8197 	bls.w	d005242a <fillTriangleDitherBayer+0x382>
d00520fc:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0052100:	eddf 6ad2 	vldr	s13, [pc, #840]	; d005244c <fillTriangleDitherBayer+0x3a4>
d0052104:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d0052108:	fec1 1aa6 	vmaxnm.f32	s3, s3, s13
d005210c:	ee06 4a90 	vmov	s13, r4
d0052110:	ee87 8a80 	vdiv.f32	s16, s15, s0
d0052114:	fec1 1ac7 	vminnm.f32	s3, s3, s14
d0052118:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d005211c:	ee87 7a81 	vdiv.f32	s14, s15, s2
d0052120:	eefd 7ae1 	vcvt.s32.f32	s15, s3
d0052124:	eef8 5a66 	vcvt.f32.u32	s11, s13
d0052128:	ee17 2a90 	vmov	r2, s15
d005212c:	ee07 0a90 	vmov	s15, r0
d0052130:	ee65 5a88 	vmul.f32	s11, s11, s16
d0052134:	eeb8 4a67 	vcvt.f32.u32	s8, s15
d0052138:	ee07 1a90 	vmov	s15, r1
d005213c:	1c51      	adds	r1, r2, #1
d005213e:	eef8 7a67 	vcvt.f32.u32	s15, s15
d0052142:	2905      	cmp	r1, #5
d0052144:	ee24 4a00 	vmul.f32	s8, s8, s0
d0052148:	bfa8      	it	ge
d005214a:	2105      	movge	r1, #5
d005214c:	2a04      	cmp	r2, #4
d005214e:	ee27 6a87 	vmul.f32	s12, s15, s14
d0052152:	f300 84ad 	bgt.w	d0052ab0 <fillTriangleDitherBayer+0xa08>
d0052156:	f003 030f 	and.w	r3, r3, #15
d005215a:	2a03      	cmp	r2, #3
d005215c:	f103 0320 	add.w	r3, r3, #32
d0052160:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d0052164:	fa5f fb80 	uxtb.w	fp, r0
d0052168:	f300 84a4 	bgt.w	d0052ab4 <fillTriangleDitherBayer+0xa0c>
d005216c:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d0052170:	b2db      	uxtb	r3, r3
d0052172:	9304      	str	r3, [sp, #16]
d0052174:	eddd 7a01 	vldr	s15, [sp, #4]
d0052178:	eeb8 3ae7 	vcvt.f32.s32	s6, s15
d005217c:	eddd 7a03 	vldr	s15, [sp, #12]
d0052180:	eeb8 2ae7 	vcvt.f32.s32	s4, s15
d0052184:	eddd 7a00 	vldr	s15, [sp]
d0052188:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d005218c:	eddd 7a02 	vldr	s15, [sp, #8]
d0052190:	eeb4 3ac2 	vcmpe.f32	s6, s4
d0052194:	eef8 2ae7 	vcvt.f32.s32	s5, s15
d0052198:	eddd 7a2e 	vldr	s15, [sp, #184]	; 0xb8
d005219c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00521a0:	eef8 3ae7 	vcvt.f32.s32	s7, s15
d00521a4:	eddd 7a2f 	vldr	s15, [sp, #188]	; 0xbc
d00521a8:	eeb8 5ae7 	vcvt.f32.s32	s10, s15
d00521ac:	f300 8150 	bgt.w	d0052450 <fillTriangleDitherBayer+0x3a8>
d00521b0:	eeb4 3ac5 	vcmpe.f32	s6, s10
d00521b4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00521b8:	f300 825a 	bgt.w	d0052670 <fillTriangleDitherBayer+0x5c8>
d00521bc:	eeb4 5ac2 	vcmpe.f32	s10, s4
d00521c0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00521c4:	d517      	bpl.n	d00521f6 <fillTriangleDitherBayer+0x14e>
d00521c6:	eef0 0a44 	vmov.f32	s1, s8
d00521ca:	eeb0 1a40 	vmov.f32	s2, s0
d00521ce:	eef0 6a42 	vmov.f32	s13, s4
d00521d2:	eef0 7a62 	vmov.f32	s15, s5
d00521d6:	eeb0 4a46 	vmov.f32	s8, s12
d00521da:	eeb0 0a47 	vmov.f32	s0, s14
d00521de:	eeb0 2a45 	vmov.f32	s4, s10
d00521e2:	eef0 2a63 	vmov.f32	s5, s7
d00521e6:	eeb0 6a60 	vmov.f32	s12, s1
d00521ea:	eeb0 7a41 	vmov.f32	s14, s2
d00521ee:	eeb0 5a66 	vmov.f32	s10, s13
d00521f2:	eef0 3a67 	vmov.f32	s7, s15
d00521f6:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00521fa:	ee73 6a27 	vadd.f32	s13, s6, s15
d00521fe:	ee75 7a27 	vadd.f32	s15, s10, s15
d0052202:	eefd 6ae6 	vcvt.s32.f32	s13, s13
d0052206:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d005220a:	ee16 3a90 	vmov	r3, s13
d005220e:	ee17 1a90 	vmov	r1, s15
d0052212:	428b      	cmp	r3, r1
d0052214:	f000 8109 	beq.w	d005242a <fillTriangleDitherBayer+0x382>
d0052218:	ee75 7a43 	vsub.f32	s15, s10, s6
d005221c:	eddf 6a85 	vldr	s13, [pc, #532]	; d0052434 <fillTriangleDitherBayer+0x38c>
d0052220:	eef4 7ae6 	vcmpe.f32	s15, s13
d0052224:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052228:	f240 80ff 	bls.w	d005242a <fillTriangleDitherBayer+0x382>
d005222c:	eeb7 aa00 	vmov.f32	s20, #112	; 0x3f800000  1.0
d0052230:	ee72 9a43 	vsub.f32	s19, s4, s6
d0052234:	ee73 0ae4 	vsub.f32	s1, s7, s9
d0052238:	ee8a 1a27 	vdiv.f32	s2, s20, s15
d005223c:	eef4 9ae6 	vcmpe.f32	s19, s13
d0052240:	ee77 8a48 	vsub.f32	s17, s14, s16
d0052244:	ee36 9a65 	vsub.f32	s18, s12, s11
d0052248:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005224c:	ee60 0a81 	vmul.f32	s1, s1, s2
d0052250:	ee68 8a81 	vmul.f32	s17, s17, s2
d0052254:	ee29 9a01 	vmul.f32	s18, s18, s2
d0052258:	f300 8119 	bgt.w	d005248e <fillTriangleDitherBayer+0x3e6>
d005225c:	ee07 2a90 	vmov	s15, r2
d0052260:	ee35 1a42 	vsub.f32	s2, s10, s4
d0052264:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052268:	eeb4 1ae6 	vcmpe.f32	s2, s13
d005226c:	ed8d 1a08 	vstr	s2, [sp, #32]
d0052270:	ee71 1ae7 	vsub.f32	s3, s3, s15
d0052274:	eef0 7a61 	vmov.f32	s15, s3
d0052278:	eefe 7ace 	vcvt.s32.f32	s15, s15, #4
d005227c:	ee17 3a90 	vmov	r3, s15
d0052280:	f383 0204 	usat	r2, #4, r3
d0052284:	9202      	str	r2, [sp, #8]
d0052286:	9a04      	ldr	r2, [sp, #16]
d0052288:	4593      	cmp	fp, r2
d005228a:	bf18      	it	ne
d005228c:	2b00      	cmpne	r3, #0
d005228e:	bfd4      	ite	le
d0052290:	2301      	movle	r3, #1
d0052292:	2300      	movgt	r3, #0
d0052294:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052298:	9300      	str	r3, [sp, #0]
d005229a:	f340 80c6 	ble.w	d005242a <fillTriangleDitherBayer+0x382>
d005229e:	ed9f ea6b 	vldr	s28, [pc, #428]	; d005244c <fillTriangleDitherBayer+0x3a4>
d00522a2:	eeb0 aa4e 	vmov.f32	s20, s28
d00522a6:	eeb0 ca4e 	vmov.f32	s24, s28
d00522aa:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00522ae:	eddd 6a08 	vldr	s13, [sp, #32]
d00522b2:	eddf 1a60 	vldr	s3, [pc, #384]	; d0052434 <fillTriangleDitherBayer+0x38c>
d00522b6:	ee73 3ae2 	vsub.f32	s7, s7, s5
d00522ba:	ee37 7a40 	vsub.f32	s14, s14, s0
d00522be:	eec7 6aa6 	vdiv.f32	s13, s15, s13
d00522c2:	eef4 9ae1 	vcmpe.f32	s19, s3
d00522c6:	ee76 7a44 	vsub.f32	s15, s12, s8
d00522ca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00522ce:	ee23 6aa6 	vmul.f32	s12, s7, s13
d00522d2:	ee27 7a26 	vmul.f32	s14, s14, s13
d00522d6:	ee67 faa6 	vmul.f32	s31, s15, s13
d00522da:	ed8d 6a0d 	vstr	s12, [sp, #52]	; 0x34
d00522de:	ed8d 7a0e 	vstr	s14, [sp, #56]	; 0x38
d00522e2:	f300 810d 	bgt.w	d0052500 <fillTriangleDitherBayer+0x458>
d00522e6:	4a54      	ldr	r2, [pc, #336]	; (d0052438 <fillTriangleDitherBayer+0x390>)
d00522e8:	eefd 7ac2 	vcvt.s32.f32	s15, s4
d00522ec:	4b53      	ldr	r3, [pc, #332]	; (d005243c <fillTriangleDitherBayer+0x394>)
d00522ee:	6812      	ldr	r2, [r2, #0]
d00522f0:	681b      	ldr	r3, [r3, #0]
d00522f2:	edcd 7a0b 	vstr	s15, [sp, #44]	; 0x2c
d00522f6:	920a      	str	r2, [sp, #40]	; 0x28
d00522f8:	930c      	str	r3, [sp, #48]	; 0x30
d00522fa:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d00522fe:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d0052300:	980a      	ldr	r0, [sp, #40]	; 0x28
d0052302:	990c      	ldr	r1, [sp, #48]	; 0x30
d0052304:	ee17 3a90 	vmov	r3, s15
d0052308:	4282      	cmp	r2, r0
d005230a:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
d005230e:	bfb8      	it	lt
d0052310:	4602      	movlt	r2, r0
d0052312:	428b      	cmp	r3, r1
d0052314:	9201      	str	r2, [sp, #4]
d0052316:	bfa8      	it	ge
d0052318:	460b      	movge	r3, r1
d005231a:	4293      	cmp	r3, r2
d005231c:	f2c0 8085 	blt.w	d005242a <fillTriangleDitherBayer+0x382>
d0052320:	ee07 2a90 	vmov	s15, r2
d0052324:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d0052328:	3301      	adds	r3, #1
d005232a:	eba0 1200 	sub.w	r2, r0, r0, lsl #4
d005232e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052332:	4943      	ldr	r1, [pc, #268]	; (d0052440 <fillTriangleDitherBayer+0x398>)
d0052334:	0152      	lsls	r2, r2, #5
d0052336:	ed9d aa0d 	vldr	s20, [sp, #52]	; 0x34
d005233a:	eddd aa0e 	vldr	s21, [sp, #56]	; 0x38
d005233e:	ee77 7a87 	vadd.f32	s15, s15, s14
d0052342:	9307      	str	r3, [sp, #28]
d0052344:	680b      	ldr	r3, [r1, #0]
d0052346:	ed9f 1a3b 	vldr	s2, [pc, #236]	; d0052434 <fillTriangleDitherBayer+0x38c>
d005234a:	ee37 3ac3 	vsub.f32	s6, s15, s6
d005234e:	eddf 1a3d 	vldr	s3, [pc, #244]	; d0052444 <fillTriangleDitherBayer+0x39c>
d0052352:	ee37 2ac2 	vsub.f32	s4, s15, s4
d0052356:	ed9f 6a3d 	vldr	s12, [pc, #244]	; d005244c <fillTriangleDitherBayer+0x3a4>
d005235a:	eddf 3a3b 	vldr	s7, [pc, #236]	; d0052448 <fillTriangleDitherBayer+0x3a0>
d005235e:	eee0 4a83 	vfma.f32	s9, s1, s6
d0052362:	920a      	str	r2, [sp, #40]	; 0x28
d0052364:	eea8 8a83 	vfma.f32	s16, s17, s6
d0052368:	9309      	str	r3, [sp, #36]	; 0x24
d005236a:	eee9 5a03 	vfma.f32	s11, s18, s6
d005236e:	eee2 2a0a 	vfma.f32	s5, s4, s20
d0052372:	eeaa 0a82 	vfma.f32	s0, s21, s4
d0052376:	eeaf 4a82 	vfma.f32	s8, s31, s4
d005237a:	e034      	b.n	d00523e6 <fillTriangleDitherBayer+0x33e>
d005237c:	eeb0 ba65 	vmov.f32	s22, s11
d0052380:	eef0 9a48 	vmov.f32	s19, s16
d0052384:	eeb0 7a64 	vmov.f32	s14, s9
d0052388:	eeb0 2a44 	vmov.f32	s4, s8
d005238c:	eeb0 3a40 	vmov.f32	s6, s0
d0052390:	eef0 6a62 	vmov.f32	s13, s5
d0052394:	fefa 7a47 	vrintp.f32	s15, s14
d0052398:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d005239c:	f240 13df 	movw	r3, #479	; 0x1df
d00523a0:	ee17 7a90 	vmov	r7, s15
d00523a4:	fefa 7a66 	vrintp.f32	s15, s13
d00523a8:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00523ac:	3f01      	subs	r7, #1
d00523ae:	ee17 5a90 	vmov	r5, s15
d00523b2:	429f      	cmp	r7, r3
d00523b4:	ea25 75e5 	bic.w	r5, r5, r5, asr #31
d00523b8:	bfa8      	it	ge
d00523ba:	461f      	movge	r7, r3
d00523bc:	42af      	cmp	r7, r5
d00523be:	f280 8170 	bge.w	d00526a2 <fillTriangleDitherBayer+0x5fa>
d00523c2:	9b01      	ldr	r3, [sp, #4]
d00523c4:	ee74 4aa0 	vadd.f32	s9, s9, s1
d00523c8:	9a07      	ldr	r2, [sp, #28]
d00523ca:	ee38 8a28 	vadd.f32	s16, s16, s17
d00523ce:	3301      	adds	r3, #1
d00523d0:	ee75 5a89 	vadd.f32	s11, s11, s18
d00523d4:	ee72 2a8a 	vadd.f32	s5, s5, s20
d00523d8:	4293      	cmp	r3, r2
d00523da:	ee30 0a2a 	vadd.f32	s0, s0, s21
d00523de:	ee34 4a2f 	vadd.f32	s8, s8, s31
d00523e2:	9301      	str	r3, [sp, #4]
d00523e4:	d021      	beq.n	d005242a <fillTriangleDitherBayer+0x382>
d00523e6:	eef4 4ae2 	vcmpe.f32	s9, s5
d00523ea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00523ee:	dcc5      	bgt.n	d005237c <fillTriangleDitherBayer+0x2d4>
d00523f0:	eeb0 ba44 	vmov.f32	s22, s8
d00523f4:	eef0 9a40 	vmov.f32	s19, s0
d00523f8:	eeb0 7a62 	vmov.f32	s14, s5
d00523fc:	eeb0 2a65 	vmov.f32	s4, s11
d0052400:	eeb0 3a48 	vmov.f32	s6, s16
d0052404:	eef0 6a64 	vmov.f32	s13, s9
d0052408:	e7c4      	b.n	d0052394 <fillTriangleDitherBayer+0x2ec>
d005240a:	ed9d 5a11 	vldr	s10, [sp, #68]	; 0x44
d005240e:	eddd 4a12 	vldr	s9, [sp, #72]	; 0x48
d0052412:	eddd fa13 	vldr	s31, [sp, #76]	; 0x4c
d0052416:	eddf 7a07 	vldr	s15, [pc, #28]	; d0052434 <fillTriangleDitherBayer+0x38c>
d005241a:	ed9d 7a08 	vldr	s14, [sp, #32]
d005241e:	eeb4 7ae7 	vcmpe.f32	s14, s15
d0052422:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052426:	f73f af68 	bgt.w	d00522fa <fillTriangleDitherBayer+0x252>
d005242a:	b015      	add	sp, #84	; 0x54
d005242c:	ecbd 8b10 	vpop	{d8-d15}
d0052430:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0052434:	38d1b717 	.word	0x38d1b717
d0052438:	d005ad68 	.word	0xd005ad68
d005243c:	d005ad6c 	.word	0xd005ad6c
d0052440:	d005ad70 	.word	0xd005ad70
d0052444:	33d6bf95 	.word	0x33d6bf95
d0052448:	477fff00 	.word	0x477fff00
d005244c:	00000000 	.word	0x00000000
d0052450:	eeb4 2ac5 	vcmpe.f32	s4, s10
d0052454:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052458:	f340 80f1 	ble.w	d005263e <fillTriangleDitherBayer+0x596>
d005245c:	eef0 0a46 	vmov.f32	s1, s12
d0052460:	eeb0 1a47 	vmov.f32	s2, s14
d0052464:	eef0 6a45 	vmov.f32	s13, s10
d0052468:	eef0 7a63 	vmov.f32	s15, s7
d005246c:	eeb0 6a65 	vmov.f32	s12, s11
d0052470:	eeb0 7a48 	vmov.f32	s14, s16
d0052474:	eeb0 5a43 	vmov.f32	s10, s6
d0052478:	eef0 3a64 	vmov.f32	s7, s9
d005247c:	eef0 5a60 	vmov.f32	s11, s1
d0052480:	eeb0 8a41 	vmov.f32	s16, s2
d0052484:	eeb0 3a66 	vmov.f32	s6, s13
d0052488:	eef0 4a67 	vmov.f32	s9, s15
d005248c:	e6b3      	b.n	d00521f6 <fillTriangleDitherBayer+0x14e>
d005248e:	ee07 2a90 	vmov	s15, r2
d0052492:	ee8a 1a29 	vdiv.f32	s2, s20, s19
d0052496:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005249a:	ee72 aae4 	vsub.f32	s21, s5, s9
d005249e:	ee30 aa48 	vsub.f32	s20, s0, s16
d00524a2:	ee71 1ae7 	vsub.f32	s3, s3, s15
d00524a6:	ee34 ea65 	vsub.f32	s28, s8, s11
d00524aa:	eef0 7a61 	vmov.f32	s15, s3
d00524ae:	ee75 1a42 	vsub.f32	s3, s10, s4
d00524b2:	eefe 7ace 	vcvt.s32.f32	s15, s15, #4
d00524b6:	eef4 1ae6 	vcmpe.f32	s3, s13
d00524ba:	edcd 1a08 	vstr	s3, [sp, #32]
d00524be:	ee2e ea01 	vmul.f32	s28, s28, s2
d00524c2:	ee17 3a90 	vmov	r3, s15
d00524c6:	ee6a 7a81 	vmul.f32	s15, s21, s2
d00524ca:	f383 0204 	usat	r2, #4, r3
d00524ce:	eeb0 ca67 	vmov.f32	s24, s15
d00524d2:	9202      	str	r2, [sp, #8]
d00524d4:	ee6a 7a01 	vmul.f32	s15, s20, s2
d00524d8:	9a04      	ldr	r2, [sp, #16]
d00524da:	4593      	cmp	fp, r2
d00524dc:	bf18      	it	ne
d00524de:	2b00      	cmpne	r3, #0
d00524e0:	eeb0 aa67 	vmov.f32	s20, s15
d00524e4:	bfd4      	ite	le
d00524e6:	2301      	movle	r3, #1
d00524e8:	2300      	movgt	r3, #0
d00524ea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00524ee:	9300      	str	r3, [sp, #0]
d00524f0:	f73f aedb 	bgt.w	d00522aa <fillTriangleDitherBayer+0x202>
d00524f4:	ed5f fa2b 	vldr	s31, [pc, #-172]	; d005244c <fillTriangleDitherBayer+0x3a4>
d00524f8:	edcd fa0e 	vstr	s31, [sp, #56]	; 0x38
d00524fc:	edcd fa0d 	vstr	s31, [sp, #52]	; 0x34
d0052500:	eefd 7ac2 	vcvt.s32.f32	s15, s4
d0052504:	4bde      	ldr	r3, [pc, #888]	; (d0052880 <fillTriangleDitherBayer+0x7d8>)
d0052506:	4adf      	ldr	r2, [pc, #892]	; (d0052884 <fillTriangleDitherBayer+0x7dc>)
d0052508:	6819      	ldr	r1, [r3, #0]
d005250a:	ee17 3a90 	vmov	r3, s15
d005250e:	edcd 7a0b 	vstr	s15, [sp, #44]	; 0x2c
d0052512:	eefd 7ac3 	vcvt.s32.f32	s15, s6
d0052516:	6810      	ldr	r0, [r2, #0]
d0052518:	3b01      	subs	r3, #1
d005251a:	910c      	str	r1, [sp, #48]	; 0x30
d005251c:	900a      	str	r0, [sp, #40]	; 0x28
d005251e:	ee17 2a90 	vmov	r2, s15
d0052522:	428b      	cmp	r3, r1
d0052524:	bfa8      	it	ge
d0052526:	460b      	movge	r3, r1
d0052528:	4282      	cmp	r2, r0
d005252a:	bfb8      	it	lt
d005252c:	4602      	movlt	r2, r0
d005252e:	4293      	cmp	r3, r2
d0052530:	9201      	str	r2, [sp, #4]
d0052532:	f6ff af70 	blt.w	d0052416 <fillTriangleDitherBayer+0x36e>
d0052536:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d005253a:	3301      	adds	r3, #1
d005253c:	eef0 aa64 	vmov.f32	s21, s9
d0052540:	49d1      	ldr	r1, [pc, #836]	; (d0052888 <fillTriangleDitherBayer+0x7e0>)
d0052542:	eba0 1200 	sub.w	r2, r0, r0, lsl #4
d0052546:	9307      	str	r3, [sp, #28]
d0052548:	ee37 7ac3 	vsub.f32	s14, s15, s6
d005254c:	eddd 7a01 	vldr	s15, [sp, #4]
d0052550:	680b      	ldr	r3, [r1, #0]
d0052552:	eeb0 ba64 	vmov.f32	s22, s9
d0052556:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005255a:	eddf bacc 	vldr	s23, [pc, #816]	; d005288c <fillTriangleDitherBayer+0x7e4>
d005255e:	eef0 da48 	vmov.f32	s27, s16
d0052562:	930f      	str	r3, [sp, #60]	; 0x3c
d0052564:	eeb0 da65 	vmov.f32	s26, s11
d0052568:	0153      	lsls	r3, r2, #5
d005256a:	ee77 7a87 	vadd.f32	s15, s15, s14
d005256e:	ed9f 6ac8 	vldr	s12, [pc, #800]	; d0052890 <fillTriangleDitherBayer+0x7e8>
d0052572:	eef0 ea4c 	vmov.f32	s29, s24
d0052576:	ed9f 7ac7 	vldr	s14, [pc, #796]	; d0052894 <fillTriangleDitherBayer+0x7ec>
d005257a:	eef0 ca48 	vmov.f32	s25, s16
d005257e:	9310      	str	r3, [sp, #64]	; 0x40
d0052580:	eee7 aa8c 	vfma.f32	s21, s15, s24
d0052584:	ed8d 5a11 	vstr	s10, [sp, #68]	; 0x44
d0052588:	eeb0 ca65 	vmov.f32	s24, s11
d005258c:	edcd 4a12 	vstr	s9, [sp, #72]	; 0x48
d0052590:	eea0 baa7 	vfma.f32	s22, s1, s15
d0052594:	edcd fa13 	vstr	s31, [sp, #76]	; 0x4c
d0052598:	eee8 daa7 	vfma.f32	s27, s17, s15
d005259c:	eea9 da27 	vfma.f32	s26, s18, s15
d00525a0:	eee7 ca8a 	vfma.f32	s25, s15, s20
d00525a4:	eea7 ca8e 	vfma.f32	s24, s15, s28
d00525a8:	eeb0 fa4a 	vmov.f32	s30, s20
d00525ac:	e035      	b.n	d005261a <fillTriangleDitherBayer+0x572>
d00525ae:	eef0 1a4d 	vmov.f32	s3, s26
d00525b2:	eef0 3a6d 	vmov.f32	s7, s27
d00525b6:	eef0 7a4b 	vmov.f32	s15, s22
d00525ba:	eef0 4a4c 	vmov.f32	s9, s24
d00525be:	eeb0 5a6c 	vmov.f32	s10, s25
d00525c2:	eef0 6a6a 	vmov.f32	s13, s21
d00525c6:	feba 1a67 	vrintp.f32	s2, s15
d00525ca:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d00525ce:	fefa 9a66 	vrintp.f32	s19, s13
d00525d2:	f240 13df 	movw	r3, #479	; 0x1df
d00525d6:	ee11 7a10 	vmov	r7, s2
d00525da:	eebd 1ae9 	vcvt.s32.f32	s2, s19
d00525de:	3f01      	subs	r7, #1
d00525e0:	ee11 4a10 	vmov	r4, s2
d00525e4:	429f      	cmp	r7, r3
d00525e6:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d00525ea:	bfa8      	it	ge
d00525ec:	461f      	movge	r7, r3
d00525ee:	42a7      	cmp	r7, r4
d00525f0:	f280 8168 	bge.w	d00528c4 <fillTriangleDitherBayer+0x81c>
d00525f4:	9b01      	ldr	r3, [sp, #4]
d00525f6:	ee3b ba20 	vadd.f32	s22, s22, s1
d00525fa:	9a07      	ldr	r2, [sp, #28]
d00525fc:	ee7d daa8 	vadd.f32	s27, s27, s17
d0052600:	3301      	adds	r3, #1
d0052602:	ee3d da09 	vadd.f32	s26, s26, s18
d0052606:	ee7a aaae 	vadd.f32	s21, s21, s29
d005260a:	4293      	cmp	r3, r2
d005260c:	ee7c ca8f 	vadd.f32	s25, s25, s30
d0052610:	ee3c ca0e 	vadd.f32	s24, s24, s28
d0052614:	9301      	str	r3, [sp, #4]
d0052616:	f43f aef8 	beq.w	d005240a <fillTriangleDitherBayer+0x362>
d005261a:	eeb4 baea 	vcmpe.f32	s22, s21
d005261e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052622:	dcc4      	bgt.n	d00525ae <fillTriangleDitherBayer+0x506>
d0052624:	eef0 1a4c 	vmov.f32	s3, s24
d0052628:	eef0 3a6c 	vmov.f32	s7, s25
d005262c:	eef0 7a6a 	vmov.f32	s15, s21
d0052630:	eef0 4a4d 	vmov.f32	s9, s26
d0052634:	eeb0 5a6d 	vmov.f32	s10, s27
d0052638:	eef0 6a4b 	vmov.f32	s13, s22
d005263c:	e7c3      	b.n	d00525c6 <fillTriangleDitherBayer+0x51e>
d005263e:	eef0 0a65 	vmov.f32	s1, s11
d0052642:	eeb0 1a48 	vmov.f32	s2, s16
d0052646:	eef0 6a43 	vmov.f32	s13, s6
d005264a:	eef0 7a64 	vmov.f32	s15, s9
d005264e:	eef0 5a44 	vmov.f32	s11, s8
d0052652:	eeb0 8a40 	vmov.f32	s16, s0
d0052656:	eeb0 3a42 	vmov.f32	s6, s4
d005265a:	eef0 4a62 	vmov.f32	s9, s5
d005265e:	eeb0 4a60 	vmov.f32	s8, s1
d0052662:	eeb0 0a41 	vmov.f32	s0, s2
d0052666:	eeb0 2a66 	vmov.f32	s4, s13
d005266a:	eef0 2a67 	vmov.f32	s5, s15
d005266e:	e5a5      	b.n	d00521bc <fillTriangleDitherBayer+0x114>
d0052670:	eef0 0a65 	vmov.f32	s1, s11
d0052674:	eeb0 1a48 	vmov.f32	s2, s16
d0052678:	eef0 6a43 	vmov.f32	s13, s6
d005267c:	eef0 7a64 	vmov.f32	s15, s9
d0052680:	eef0 5a46 	vmov.f32	s11, s12
d0052684:	eeb0 8a47 	vmov.f32	s16, s14
d0052688:	eeb0 3a45 	vmov.f32	s6, s10
d005268c:	eef0 4a63 	vmov.f32	s9, s7
d0052690:	eeb0 6a60 	vmov.f32	s12, s1
d0052694:	eeb0 7a41 	vmov.f32	s14, s2
d0052698:	eeb0 5a66 	vmov.f32	s10, s13
d005269c:	eef0 3a67 	vmov.f32	s7, s15
d00526a0:	e58c      	b.n	d00521bc <fillTriangleDitherBayer+0x114>
d00526a2:	ee37 7a66 	vsub.f32	s14, s14, s13
d00526a6:	eeb4 7ac1 	vcmpe.f32	s14, s2
d00526aa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00526ae:	f340 8205 	ble.w	d0052abc <fillTriangleDitherBayer+0xa14>
d00526b2:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00526b6:	ee79 9ac3 	vsub.f32	s19, s19, s6
d00526ba:	ee3b ba42 	vsub.f32	s22, s22, s4
d00526be:	ee87 5a87 	vdiv.f32	s10, s15, s14
d00526c2:	ee07 5a10 	vmov	s14, r5
d00526c6:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00526ca:	ee77 7ae6 	vsub.f32	s15, s15, s13
d00526ce:	eef8 6ac7 	vcvt.f32.s32	s13, s14
d00526d2:	ee76 6aa7 	vadd.f32	s13, s13, s15
d00526d6:	ee69 9a85 	vmul.f32	s19, s19, s10
d00526da:	ee2b ba05 	vmul.f32	s22, s22, s10
d00526de:	eea6 3aa9 	vfma.f32	s6, s13, s19
d00526e2:	eea6 2a8b 	vfma.f32	s4, s13, s22
d00526e6:	9a01      	ldr	r2, [sp, #4]
d00526e8:	eb05 0e85 	add.w	lr, r5, r5, lsl #2
d00526ec:	4b6a      	ldr	r3, [pc, #424]	; (d0052898 <fillTriangleDitherBayer+0x7f0>)
d00526ee:	eeb6 5a00 	vmov.f32	s10, #96	; 0x3f000000  0.5
d00526f2:	ebc2 1a02 	rsb	sl, r2, r2, lsl #4
d00526f6:	990a      	ldr	r1, [sp, #40]	; 0x28
d00526f8:	eb01 1a4a 	add.w	sl, r1, sl, lsl #5
d00526fc:	6819      	ldr	r1, [r3, #0]
d00526fe:	eb02 138e 	add.w	r3, r2, lr, lsl #6
d0052702:	f002 0203 	and.w	r2, r2, #3
d0052706:	44aa      	add	sl, r5
d0052708:	eb01 0e03 	add.w	lr, r1, r3
d005270c:	0093      	lsls	r3, r2, #2
d005270e:	9308      	str	r3, [sp, #32]
d0052710:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0052712:	eb03 0a4a 	add.w	sl, r3, sl, lsl #1
d0052716:	eba7 0905 	sub.w	r9, r7, r5
d005271a:	eeb4 3ae1 	vcmpe.f32	s6, s3
d005271e:	f109 0101 	add.w	r1, r9, #1
d0052722:	2930      	cmp	r1, #48	; 0x30
d0052724:	bfa8      	it	ge
d0052726:	2130      	movge	r1, #48	; 0x30
d0052728:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005272c:	d971      	bls.n	d0052812 <fillTriangleDitherBayer+0x76a>
d005272e:	f1b9 0f00 	cmp.w	r9, #0
d0052732:	ee82 7a03 	vdiv.f32	s14, s4, s6
d0052736:	dd7c      	ble.n	d0052832 <fillTriangleDitherBayer+0x78a>
d0052738:	1e4b      	subs	r3, r1, #1
d005273a:	ee07 3a90 	vmov	s15, r3
d005273e:	eef0 6a43 	vmov.f32	s13, s6
d0052742:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052746:	eee7 6aa9 	vfma.f32	s13, s15, s19
d005274a:	eef4 6ae1 	vcmpe.f32	s13, s3
d005274e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052752:	f340 80a7 	ble.w	d00528a4 <fillTriangleDitherBayer+0x7fc>
d0052756:	eeb0 ca42 	vmov.f32	s24, s4
d005275a:	9b00      	ldr	r3, [sp, #0]
d005275c:	eea7 ca8b 	vfma.f32	s24, s15, s22
d0052760:	eecc ba26 	vdiv.f32	s23, s24, s13
d0052764:	ee7b bac7 	vsub.f32	s23, s23, s14
d0052768:	eecb 6aa7 	vdiv.f32	s13, s23, s15
d005276c:	2b00      	cmp	r3, #0
d005276e:	d168      	bne.n	d0052842 <fillTriangleDitherBayer+0x79a>
d0052770:	f005 0303 	and.w	r3, r5, #3
d0052774:	f8cd 900c 	str.w	r9, [sp, #12]
d0052778:	f1aa 0602 	sub.w	r6, sl, #2
d005277c:	9705      	str	r7, [sp, #20]
d005277e:	2200      	movs	r2, #0
d0052780:	9506      	str	r5, [sp, #24]
d0052782:	9f04      	ldr	r7, [sp, #16]
d0052784:	9d08      	ldr	r5, [sp, #32]
d0052786:	f8dd 9008 	ldr.w	r9, [sp, #8]
d005278a:	fec7 7a06 	vmaxnm.f32	s15, s14, s12
d005278e:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d0052792:	ee77 7a85 	vadd.f32	s15, s15, s10
d0052796:	4841      	ldr	r0, [pc, #260]	; (d005289c <fillTriangleDitherBayer+0x7f4>)
d0052798:	f836 cf02 	ldrh.w	ip, [r6, #2]!
d005279c:	eb02 0482 	add.w	r4, r2, r2, lsl #2
d00527a0:	eb00 0803 	add.w	r8, r0, r3
d00527a4:	3301      	adds	r3, #1
d00527a6:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00527aa:	01a4      	lsls	r4, r4, #6
d00527ac:	ee37 7a26 	vadd.f32	s14, s14, s13
d00527b0:	f003 0303 	and.w	r3, r3, #3
d00527b4:	3201      	adds	r2, #1
d00527b6:	ee17 0a90 	vmov	r0, s15
d00527ba:	b280      	uxth	r0, r0
d00527bc:	4584      	cmp	ip, r0
d00527be:	d908      	bls.n	d00527d2 <fillTriangleDitherBayer+0x72a>
d00527c0:	8030      	strh	r0, [r6, #0]
d00527c2:	f818 0005 	ldrb.w	r0, [r8, r5]
d00527c6:	4548      	cmp	r0, r9
d00527c8:	bfb4      	ite	lt
d00527ca:	4638      	movlt	r0, r7
d00527cc:	4658      	movge	r0, fp
d00527ce:	f80e 0004 	strb.w	r0, [lr, r4]
d00527d2:	4291      	cmp	r1, r2
d00527d4:	dcd9      	bgt.n	d005278a <fillTriangleDitherBayer+0x6e2>
d00527d6:	f8dd 900c 	ldr.w	r9, [sp, #12]
d00527da:	9f05      	ldr	r7, [sp, #20]
d00527dc:	9d06      	ldr	r5, [sp, #24]
d00527de:	f1b9 0f00 	cmp.w	r9, #0
d00527e2:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d00527e6:	ea4f 0241 	mov.w	r2, r1, lsl #1
d00527ea:	ea4f 1383 	mov.w	r3, r3, lsl #6
d00527ee:	bfbc      	itt	lt
d00527f0:	2202      	movlt	r2, #2
d00527f2:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d00527f6:	4492      	add	sl, r2
d00527f8:	449e      	add	lr, r3
d00527fa:	ee07 1a90 	vmov	s15, r1
d00527fe:	440d      	add	r5, r1
d0052800:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052804:	eea7 3aa9 	vfma.f32	s6, s15, s19
d0052808:	eea7 2a8b 	vfma.f32	s4, s15, s22
d005280c:	42af      	cmp	r7, r5
d005280e:	da82      	bge.n	d0052716 <fillTriangleDitherBayer+0x66e>
d0052810:	e5d7      	b.n	d00523c2 <fillTriangleDitherBayer+0x31a>
d0052812:	ee07 1a90 	vmov	s15, r1
d0052816:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d005281a:	eb0a 0a41 	add.w	sl, sl, r1, lsl #1
d005281e:	440d      	add	r5, r1
d0052820:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052824:	eb0e 1e83 	add.w	lr, lr, r3, lsl #6
d0052828:	eea7 3aa9 	vfma.f32	s6, s15, s19
d005282c:	eea7 2a8b 	vfma.f32	s4, s15, s22
d0052830:	e7ec      	b.n	d005280c <fillTriangleDitherBayer+0x764>
d0052832:	9b00      	ldr	r3, [sp, #0]
d0052834:	2b00      	cmp	r3, #0
d0052836:	d03d      	beq.n	d00528b4 <fillTriangleDitherBayer+0x80c>
d0052838:	f1b9 0f00 	cmp.w	r9, #0
d005283c:	dbdd      	blt.n	d00527fa <fillTriangleDitherBayer+0x752>
d005283e:	eef0 6a46 	vmov.f32	s13, s12
d0052842:	f1aa 0402 	sub.w	r4, sl, #2
d0052846:	2300      	movs	r3, #0
d0052848:	fec7 7a06 	vmaxnm.f32	s15, s14, s12
d005284c:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d0052850:	ee77 7a85 	vadd.f32	s15, s15, s10
d0052854:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0052858:	f834 6f02 	ldrh.w	r6, [r4, #2]!
d005285c:	ee37 7a26 	vadd.f32	s14, s14, s13
d0052860:	0190      	lsls	r0, r2, #6
d0052862:	3301      	adds	r3, #1
d0052864:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0052868:	ee17 2a90 	vmov	r2, s15
d005286c:	b292      	uxth	r2, r2
d005286e:	4296      	cmp	r6, r2
d0052870:	d902      	bls.n	d0052878 <fillTriangleDitherBayer+0x7d0>
d0052872:	8022      	strh	r2, [r4, #0]
d0052874:	f80e b000 	strb.w	fp, [lr, r0]
d0052878:	4299      	cmp	r1, r3
d005287a:	dce5      	bgt.n	d0052848 <fillTriangleDitherBayer+0x7a0>
d005287c:	e7af      	b.n	d00527de <fillTriangleDitherBayer+0x736>
d005287e:	bf00      	nop
d0052880:	d005ad6c 	.word	0xd005ad6c
d0052884:	d005ad68 	.word	0xd005ad68
d0052888:	d005ad70 	.word	0xd005ad70
d005288c:	33d6bf95 	.word	0x33d6bf95
d0052890:	477fff00 	.word	0x477fff00
d0052894:	00000000 	.word	0x00000000
d0052898:	d00f5084 	.word	0xd00f5084
d005289c:	d005a324 	.word	0xd005a324
d00528a0:	38d1b717 	.word	0x38d1b717
d00528a4:	9b00      	ldr	r3, [sp, #0]
d00528a6:	2b00      	cmp	r3, #0
d00528a8:	d1c9      	bne.n	d005283e <fillTriangleDitherBayer+0x796>
d00528aa:	eef0 6a46 	vmov.f32	s13, s12
d00528ae:	f005 0303 	and.w	r3, r5, #3
d00528b2:	e75f      	b.n	d0052774 <fillTriangleDitherBayer+0x6cc>
d00528b4:	f1b9 0f00 	cmp.w	r9, #0
d00528b8:	f005 0303 	and.w	r3, r5, #3
d00528bc:	db9d      	blt.n	d00527fa <fillTriangleDitherBayer+0x752>
d00528be:	eef0 6a46 	vmov.f32	s13, s12
d00528c2:	e757      	b.n	d0052774 <fillTriangleDitherBayer+0x6cc>
d00528c4:	ee77 7ae6 	vsub.f32	s15, s15, s13
d00528c8:	ed1f 1a0b 	vldr	s2, [pc, #-44]	; d00528a0 <fillTriangleDitherBayer+0x7f8>
d00528cc:	eef4 7ac1 	vcmpe.f32	s15, s2
d00528d0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00528d4:	f340 80f7 	ble.w	d0052ac6 <fillTriangleDitherBayer+0xa1e>
d00528d8:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d00528dc:	ee73 3ac5 	vsub.f32	s7, s7, s10
d00528e0:	ee71 1ae4 	vsub.f32	s3, s3, s9
d00528e4:	ee89 1aa7 	vdiv.f32	s2, s19, s15
d00528e8:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00528ec:	ee77 6ae6 	vsub.f32	s13, s15, s13
d00528f0:	ee07 4a90 	vmov	s15, r4
d00528f4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00528f8:	ee77 6aa6 	vadd.f32	s13, s15, s13
d00528fc:	ee63 3a81 	vmul.f32	s7, s7, s2
d0052900:	ee61 1a81 	vmul.f32	s3, s3, s2
d0052904:	eea6 5aa3 	vfma.f32	s10, s13, s7
d0052908:	eee6 4aa1 	vfma.f32	s9, s13, s3
d005290c:	9a01      	ldr	r2, [sp, #4]
d005290e:	eb04 0884 	add.w	r8, r4, r4, lsl #2
d0052912:	4b6f      	ldr	r3, [pc, #444]	; (d0052ad0 <fillTriangleDitherBayer+0xa28>)
d0052914:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0052918:	ebc2 1a02 	rsb	sl, r2, r2, lsl #4
d005291c:	9910      	ldr	r1, [sp, #64]	; 0x40
d005291e:	46b9      	mov	r9, r7
d0052920:	eb01 1a4a 	add.w	sl, r1, sl, lsl #5
d0052924:	6819      	ldr	r1, [r3, #0]
d0052926:	eb02 1388 	add.w	r3, r2, r8, lsl #6
d005292a:	f002 0203 	and.w	r2, r2, #3
d005292e:	44a2      	add	sl, r4
d0052930:	eb01 0803 	add.w	r8, r1, r3
d0052934:	4b67      	ldr	r3, [pc, #412]	; (d0052ad4 <fillTriangleDitherBayer+0xa2c>)
d0052936:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d005293a:	9309      	str	r3, [sp, #36]	; 0x24
d005293c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d005293e:	eb03 0a4a 	add.w	sl, r3, sl, lsl #1
d0052942:	eba9 0704 	sub.w	r7, r9, r4
d0052946:	eeb4 5aeb 	vcmpe.f32	s10, s23
d005294a:	1c79      	adds	r1, r7, #1
d005294c:	2930      	cmp	r1, #48	; 0x30
d005294e:	bfa8      	it	ge
d0052950:	2130      	movge	r1, #48	; 0x30
d0052952:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052956:	d96d      	bls.n	d0052a34 <fillTriangleDitherBayer+0x98c>
d0052958:	2f00      	cmp	r7, #0
d005295a:	ee84 1a85 	vdiv.f32	s2, s9, s10
d005295e:	dd79      	ble.n	d0052a54 <fillTriangleDitherBayer+0x9ac>
d0052960:	1e4b      	subs	r3, r1, #1
d0052962:	ee07 3a90 	vmov	s15, r3
d0052966:	eef0 9a45 	vmov.f32	s19, s10
d005296a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005296e:	eee7 9aa3 	vfma.f32	s19, s15, s7
d0052972:	eef4 9aeb 	vcmpe.f32	s19, s23
d0052976:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005297a:	f340 808f 	ble.w	d0052a9c <fillTriangleDitherBayer+0x9f4>
d005297e:	eef0 fa64 	vmov.f32	s31, s9
d0052982:	eee7 faa1 	vfma.f32	s31, s15, s3
d0052986:	ee8f aaa9 	vdiv.f32	s20, s31, s19
d005298a:	ee3a aa41 	vsub.f32	s20, s20, s2
d005298e:	eeca 9a27 	vdiv.f32	s19, s20, s15
d0052992:	9b00      	ldr	r3, [sp, #0]
d0052994:	2b00      	cmp	r3, #0
d0052996:	d163      	bne.n	d0052a60 <fillTriangleDitherBayer+0x9b8>
d0052998:	f004 0503 	and.w	r5, r4, #3
d005299c:	9703      	str	r7, [sp, #12]
d005299e:	f1aa 0602 	sub.w	r6, sl, #2
d00529a2:	9405      	str	r4, [sp, #20]
d00529a4:	2200      	movs	r2, #0
d00529a6:	f8cd 9018 	str.w	r9, [sp, #24]
d00529aa:	9c04      	ldr	r4, [sp, #16]
d00529ac:	9f02      	ldr	r7, [sp, #8]
d00529ae:	f8dd 9024 	ldr.w	r9, [sp, #36]	; 0x24
d00529b2:	fec1 7a07 	vmaxnm.f32	s15, s2, s14
d00529b6:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d00529ba:	ee77 7aa6 	vadd.f32	s15, s15, s13
d00529be:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d00529c2:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d00529c6:	ee31 1a29 	vadd.f32	s2, s2, s19
d00529ca:	f105 0c01 	add.w	ip, r5, #1
d00529ce:	3201      	adds	r2, #1
d00529d0:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00529d4:	0180      	lsls	r0, r0, #6
d00529d6:	ee17 3a90 	vmov	r3, s15
d00529da:	b29b      	uxth	r3, r3
d00529dc:	459e      	cmp	lr, r3
d00529de:	d908      	bls.n	d00529f2 <fillTriangleDitherBayer+0x94a>
d00529e0:	8033      	strh	r3, [r6, #0]
d00529e2:	f819 3005 	ldrb.w	r3, [r9, r5]
d00529e6:	42bb      	cmp	r3, r7
d00529e8:	bfac      	ite	ge
d00529ea:	465b      	movge	r3, fp
d00529ec:	4623      	movlt	r3, r4
d00529ee:	f808 3000 	strb.w	r3, [r8, r0]
d00529f2:	428a      	cmp	r2, r1
d00529f4:	f00c 0503 	and.w	r5, ip, #3
d00529f8:	dbdb      	blt.n	d00529b2 <fillTriangleDitherBayer+0x90a>
d00529fa:	9f03      	ldr	r7, [sp, #12]
d00529fc:	9c05      	ldr	r4, [sp, #20]
d00529fe:	f8dd 9018 	ldr.w	r9, [sp, #24]
d0052a02:	2f00      	cmp	r7, #0
d0052a04:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0052a08:	ea4f 0241 	mov.w	r2, r1, lsl #1
d0052a0c:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0052a10:	bfbc      	itt	lt
d0052a12:	2202      	movlt	r2, #2
d0052a14:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0052a18:	4492      	add	sl, r2
d0052a1a:	4498      	add	r8, r3
d0052a1c:	ee07 1a90 	vmov	s15, r1
d0052a20:	440c      	add	r4, r1
d0052a22:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052a26:	eea7 5aa3 	vfma.f32	s10, s15, s7
d0052a2a:	eee7 4aa1 	vfma.f32	s9, s15, s3
d0052a2e:	454c      	cmp	r4, r9
d0052a30:	dd87      	ble.n	d0052942 <fillTriangleDitherBayer+0x89a>
d0052a32:	e5df      	b.n	d00525f4 <fillTriangleDitherBayer+0x54c>
d0052a34:	ee07 1a90 	vmov	s15, r1
d0052a38:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0052a3c:	eb0a 0a41 	add.w	sl, sl, r1, lsl #1
d0052a40:	440c      	add	r4, r1
d0052a42:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052a46:	eb08 1883 	add.w	r8, r8, r3, lsl #6
d0052a4a:	eea7 5aa3 	vfma.f32	s10, s15, s7
d0052a4e:	eee7 4aa1 	vfma.f32	s9, s15, s3
d0052a52:	e7ec      	b.n	d0052a2e <fillTriangleDitherBayer+0x986>
d0052a54:	9b00      	ldr	r3, [sp, #0]
d0052a56:	b323      	cbz	r3, d0052aa2 <fillTriangleDitherBayer+0x9fa>
d0052a58:	2f00      	cmp	r7, #0
d0052a5a:	d1df      	bne.n	d0052a1c <fillTriangleDitherBayer+0x974>
d0052a5c:	eef0 9a47 	vmov.f32	s19, s14
d0052a60:	f1aa 0502 	sub.w	r5, sl, #2
d0052a64:	2200      	movs	r2, #0
d0052a66:	fec1 7a07 	vmaxnm.f32	s15, s2, s14
d0052a6a:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d0052a6e:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0052a72:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0052a76:	f835 6f02 	ldrh.w	r6, [r5, #2]!
d0052a7a:	ee31 1a29 	vadd.f32	s2, s2, s19
d0052a7e:	0198      	lsls	r0, r3, #6
d0052a80:	3201      	adds	r2, #1
d0052a82:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0052a86:	ee17 3a90 	vmov	r3, s15
d0052a8a:	b29b      	uxth	r3, r3
d0052a8c:	429e      	cmp	r6, r3
d0052a8e:	d902      	bls.n	d0052a96 <fillTriangleDitherBayer+0x9ee>
d0052a90:	802b      	strh	r3, [r5, #0]
d0052a92:	f808 b000 	strb.w	fp, [r8, r0]
d0052a96:	428a      	cmp	r2, r1
d0052a98:	dbe5      	blt.n	d0052a66 <fillTriangleDitherBayer+0x9be>
d0052a9a:	e7b2      	b.n	d0052a02 <fillTriangleDitherBayer+0x95a>
d0052a9c:	eef0 9a47 	vmov.f32	s19, s14
d0052aa0:	e777      	b.n	d0052992 <fillTriangleDitherBayer+0x8ea>
d0052aa2:	2f00      	cmp	r7, #0
d0052aa4:	f004 0503 	and.w	r5, r4, #3
d0052aa8:	dbb8      	blt.n	d0052a1c <fillTriangleDitherBayer+0x974>
d0052aaa:	eef0 9a47 	vmov.f32	s19, s14
d0052aae:	e775      	b.n	d005299c <fillTriangleDitherBayer+0x8f4>
d0052ab0:	f04f 0b10 	mov.w	fp, #16
d0052ab4:	2310      	movs	r3, #16
d0052ab6:	9304      	str	r3, [sp, #16]
d0052ab8:	f7ff bb5c 	b.w	d0052174 <fillTriangleDitherBayer+0xcc>
d0052abc:	eeb0 ba46 	vmov.f32	s22, s12
d0052ac0:	eef0 9a46 	vmov.f32	s19, s12
d0052ac4:	e60f      	b.n	d00526e6 <fillTriangleDitherBayer+0x63e>
d0052ac6:	eef0 1a47 	vmov.f32	s3, s14
d0052aca:	eef0 3a47 	vmov.f32	s7, s14
d0052ace:	e71d      	b.n	d005290c <fillTriangleDitherBayer+0x864>
d0052ad0:	d00f5084 	.word	0xd00f5084
d0052ad4:	d005a324 	.word	0xd005a324

d0052ad8 <fillTriangleDitherBayerT>:
d0052ad8:	eddf 5ae4 	vldr	s11, [pc, #912]	; d0052e6c <fillTriangleDitherBayerT+0x394>
d0052adc:	eef4 0ae5 	vcmpe.f32	s1, s11
d0052ae0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0052ae4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052ae8:	eeb4 1ae5 	vcmpe.f32	s2, s11
d0052aec:	ed2d 8b10 	vpush	{d8-d15}
d0052af0:	b095      	sub	sp, #84	; 0x54
d0052af2:	9204      	str	r2, [sp, #16]
d0052af4:	bf94      	ite	ls
d0052af6:	2201      	movls	r2, #1
d0052af8:	2200      	movhi	r2, #0
d0052afa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052afe:	9002      	str	r0, [sp, #8]
d0052b00:	9103      	str	r1, [sp, #12]
d0052b02:	bf98      	it	ls
d0052b04:	f042 0201 	orrls.w	r2, r2, #1
d0052b08:	9305      	str	r3, [sp, #20]
d0052b0a:	f8bd 50c0 	ldrh.w	r5, [sp, #192]	; 0xc0
d0052b0e:	f8bd 00c4 	ldrh.w	r0, [sp, #196]	; 0xc4
d0052b12:	f8bd 10c8 	ldrh.w	r1, [sp, #200]	; 0xc8
d0052b16:	f89d 30cc 	ldrb.w	r3, [sp, #204]	; 0xcc
d0052b1a:	f89d 40d0 	ldrb.w	r4, [sp, #208]	; 0xd0
d0052b1e:	ed8d 0a00 	vstr	s0, [sp]
d0052b22:	edcd 1a01 	vstr	s3, [sp, #4]
d0052b26:	2a00      	cmp	r2, #0
d0052b28:	f040 81b5 	bne.w	d0052e96 <fillTriangleDitherBayerT+0x3be>
d0052b2c:	eeb4 0a65 	vcmp.f32	s0, s11
d0052b30:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052b34:	f240 81af 	bls.w	d0052e96 <fillTriangleDitherBayerT+0x3be>
d0052b38:	eef0 7a41 	vmov.f32	s15, s2
d0052b3c:	eddf 5acc 	vldr	s11, [pc, #816]	; d0052e70 <fillTriangleDitherBayerT+0x398>
d0052b40:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0052b44:	eeb0 7a60 	vmov.f32	s14, s1
d0052b48:	fec1 6aa5 	vmaxnm.f32	s13, s3, s11
d0052b4c:	eef1 4a04 	vmov.f32	s9, #20	; 0x40a00000  5.0
d0052b50:	ee05 5a90 	vmov	s11, r5
d0052b54:	eec5 1a27 	vdiv.f32	s3, s10, s15
d0052b58:	fec6 6ae4 	vminnm.f32	s13, s13, s9
d0052b5c:	eec5 0a07 	vdiv.f32	s1, s10, s14
d0052b60:	ee85 1a00 	vdiv.f32	s2, s10, s0
d0052b64:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0052b68:	eef8 5a65 	vcvt.f32.u32	s11, s11
d0052b6c:	ee17 2a90 	vmov	r2, s15
d0052b70:	ee07 0a90 	vmov	s15, r0
d0052b74:	eeb8 4a67 	vcvt.f32.u32	s8, s15
d0052b78:	ee07 1a90 	vmov	s15, r1
d0052b7c:	1c51      	adds	r1, r2, #1
d0052b7e:	eeb8 7a67 	vcvt.f32.u32	s14, s15
d0052b82:	2905      	cmp	r1, #5
d0052b84:	ee24 4a20 	vmul.f32	s8, s8, s1
d0052b88:	bfa8      	it	ge
d0052b8a:	2105      	movge	r1, #5
d0052b8c:	2a04      	cmp	r2, #4
d0052b8e:	ee65 5a81 	vmul.f32	s11, s11, s2
d0052b92:	ee27 7a21 	vmul.f32	s14, s14, s3
d0052b96:	f300 84d4 	bgt.w	d0053542 <fillTriangleDitherBayerT+0xa6a>
d0052b9a:	f003 030f 	and.w	r3, r3, #15
d0052b9e:	2a03      	cmp	r2, #3
d0052ba0:	f103 0320 	add.w	r3, r3, #32
d0052ba4:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d0052ba8:	b2c0      	uxtb	r0, r0
d0052baa:	9000      	str	r0, [sp, #0]
d0052bac:	f300 84cb 	bgt.w	d0053546 <fillTriangleDitherBayerT+0xa6e>
d0052bb0:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d0052bb4:	b2db      	uxtb	r3, r3
d0052bb6:	9301      	str	r3, [sp, #4]
d0052bb8:	eddd 7a03 	vldr	s15, [sp, #12]
d0052bbc:	eeb8 3ae7 	vcvt.f32.s32	s6, s15
d0052bc0:	eddd 7a05 	vldr	s15, [sp, #20]
d0052bc4:	eeb8 2ae7 	vcvt.f32.s32	s4, s15
d0052bc8:	eddd 7a02 	vldr	s15, [sp, #8]
d0052bcc:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d0052bd0:	eddd 7a04 	vldr	s15, [sp, #16]
d0052bd4:	eeb4 3ac2 	vcmpe.f32	s6, s4
d0052bd8:	eef8 2ae7 	vcvt.f32.s32	s5, s15
d0052bdc:	eddd 7a2e 	vldr	s15, [sp, #184]	; 0xb8
d0052be0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052be4:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d0052be8:	eddd 7a2f 	vldr	s15, [sp, #188]	; 0xbc
d0052bec:	eeb8 5ae7 	vcvt.f32.s32	s10, s15
d0052bf0:	f300 8156 	bgt.w	d0052ea0 <fillTriangleDitherBayerT+0x3c8>
d0052bf4:	eeb4 3ac5 	vcmpe.f32	s6, s10
d0052bf8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052bfc:	f300 8263 	bgt.w	d00530c6 <fillTriangleDitherBayerT+0x5ee>
d0052c00:	eeb4 2ac5 	vcmpe.f32	s4, s10
d0052c04:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052c08:	dd17      	ble.n	d0052c3a <fillTriangleDitherBayerT+0x162>
d0052c0a:	eeb0 8a44 	vmov.f32	s16, s8
d0052c0e:	eeb0 0a60 	vmov.f32	s0, s1
d0052c12:	eef0 3a42 	vmov.f32	s7, s4
d0052c16:	eef0 7a62 	vmov.f32	s15, s5
d0052c1a:	eeb0 4a47 	vmov.f32	s8, s14
d0052c1e:	eef0 0a61 	vmov.f32	s1, s3
d0052c22:	eeb0 2a45 	vmov.f32	s4, s10
d0052c26:	eef0 2a46 	vmov.f32	s5, s12
d0052c2a:	eeb0 7a48 	vmov.f32	s14, s16
d0052c2e:	eef0 1a40 	vmov.f32	s3, s0
d0052c32:	eeb0 5a63 	vmov.f32	s10, s7
d0052c36:	eeb0 6a67 	vmov.f32	s12, s15
d0052c3a:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0052c3e:	ee73 3a27 	vadd.f32	s7, s6, s15
d0052c42:	ee75 7a27 	vadd.f32	s15, s10, s15
d0052c46:	eefd 3ae3 	vcvt.s32.f32	s7, s7
d0052c4a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0052c4e:	ee13 3a90 	vmov	r3, s7
d0052c52:	ee17 1a90 	vmov	r1, s15
d0052c56:	428b      	cmp	r3, r1
d0052c58:	f000 811d 	beq.w	d0052e96 <fillTriangleDitherBayerT+0x3be>
d0052c5c:	ee75 7a43 	vsub.f32	s15, s10, s6
d0052c60:	eddf 3a82 	vldr	s7, [pc, #520]	; d0052e6c <fillTriangleDitherBayerT+0x394>
d0052c64:	eef4 7ae3 	vcmpe.f32	s15, s7
d0052c68:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052c6c:	f240 8113 	bls.w	d0052e96 <fillTriangleDitherBayerT+0x3be>
d0052c70:	eeb7 aa00 	vmov.f32	s20, #112	; 0x3f800000  1.0
d0052c74:	ee72 9a43 	vsub.f32	s19, s4, s6
d0052c78:	ee36 8a64 	vsub.f32	s16, s12, s9
d0052c7c:	ee8a 0a27 	vdiv.f32	s0, s20, s15
d0052c80:	eef4 9ae3 	vcmpe.f32	s19, s7
d0052c84:	ee71 8ac1 	vsub.f32	s17, s3, s2
d0052c88:	ee37 9a65 	vsub.f32	s18, s14, s11
d0052c8c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052c90:	ee28 8a00 	vmul.f32	s16, s16, s0
d0052c94:	ee68 8a80 	vmul.f32	s17, s17, s0
d0052c98:	ee29 9a00 	vmul.f32	s18, s18, s0
d0052c9c:	f300 811f 	bgt.w	d0052ede <fillTriangleDitherBayerT+0x406>
d0052ca0:	ee07 2a90 	vmov	s15, r2
d0052ca4:	ee35 0a42 	vsub.f32	s0, s10, s4
d0052ca8:	9901      	ldr	r1, [sp, #4]
d0052caa:	eb04 1404 	add.w	r4, r4, r4, lsl #4
d0052cae:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052cb2:	eeb4 0ae3 	vcmpe.f32	s0, s7
d0052cb6:	1224      	asrs	r4, r4, #8
d0052cb8:	ed8d 0a09 	vstr	s0, [sp, #36]	; 0x24
d0052cbc:	ee76 6ae7 	vsub.f32	s13, s13, s15
d0052cc0:	eef0 7a66 	vmov.f32	s15, s13
d0052cc4:	eefe 7ace 	vcvt.s32.f32	s15, s15, #4
d0052cc8:	ee17 3a90 	vmov	r3, s15
d0052ccc:	f383 0204 	usat	r2, #4, r3
d0052cd0:	9202      	str	r2, [sp, #8]
d0052cd2:	9a00      	ldr	r2, [sp, #0]
d0052cd4:	428a      	cmp	r2, r1
d0052cd6:	bf18      	it	ne
d0052cd8:	2b00      	cmpne	r3, #0
d0052cda:	bfd4      	ite	le
d0052cdc:	2301      	movle	r3, #1
d0052cde:	2300      	movgt	r3, #0
d0052ce0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052ce4:	9303      	str	r3, [sp, #12]
d0052ce6:	f340 80d6 	ble.w	d0052e96 <fillTriangleDitherBayerT+0x3be>
d0052cea:	ed9f ea61 	vldr	s28, [pc, #388]	; d0052e70 <fillTriangleDitherBayerT+0x398>
d0052cee:	eef0 ea4e 	vmov.f32	s29, s28
d0052cf2:	eeb0 ca4e 	vmov.f32	s24, s28
d0052cf6:	eef7 3a00 	vmov.f32	s7, #112	; 0x3f800000  1.0
d0052cfa:	eddd 7a09 	vldr	s15, [sp, #36]	; 0x24
d0052cfe:	ee36 6a62 	vsub.f32	s12, s12, s5
d0052d02:	eddf 6a5a 	vldr	s13, [pc, #360]	; d0052e6c <fillTriangleDitherBayerT+0x394>
d0052d06:	ee71 1ae0 	vsub.f32	s3, s3, s1
d0052d0a:	eec3 7aa7 	vdiv.f32	s15, s7, s15
d0052d0e:	eef4 9ae6 	vcmpe.f32	s19, s13
d0052d12:	ee37 7a44 	vsub.f32	s14, s14, s8
d0052d16:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052d1a:	ee26 6a27 	vmul.f32	s12, s12, s15
d0052d1e:	ee67 fa27 	vmul.f32	s31, s14, s15
d0052d22:	ed8d 6a0e 	vstr	s12, [sp, #56]	; 0x38
d0052d26:	ee21 6aa7 	vmul.f32	s12, s3, s15
d0052d2a:	ed8d 6a0d 	vstr	s12, [sp, #52]	; 0x34
d0052d2e:	f300 8113 	bgt.w	d0052f58 <fillTriangleDitherBayerT+0x480>
d0052d32:	4a49      	ldr	r2, [pc, #292]	; (d0052e58 <fillTriangleDitherBayerT+0x380>)
d0052d34:	eefd 7ac2 	vcvt.s32.f32	s15, s4
d0052d38:	4b48      	ldr	r3, [pc, #288]	; (d0052e5c <fillTriangleDitherBayerT+0x384>)
d0052d3a:	6812      	ldr	r2, [r2, #0]
d0052d3c:	681b      	ldr	r3, [r3, #0]
d0052d3e:	edcd 7a0b 	vstr	s15, [sp, #44]	; 0x2c
d0052d42:	920a      	str	r2, [sp, #40]	; 0x28
d0052d44:	930c      	str	r3, [sp, #48]	; 0x30
d0052d46:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d0052d4a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d0052d4c:	980a      	ldr	r0, [sp, #40]	; 0x28
d0052d4e:	990c      	ldr	r1, [sp, #48]	; 0x30
d0052d50:	ee17 3a90 	vmov	r3, s15
d0052d54:	4282      	cmp	r2, r0
d0052d56:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
d0052d5a:	bfb8      	it	lt
d0052d5c:	4602      	movlt	r2, r0
d0052d5e:	428b      	cmp	r3, r1
d0052d60:	9204      	str	r2, [sp, #16]
d0052d62:	bfa8      	it	ge
d0052d64:	460b      	movge	r3, r1
d0052d66:	429a      	cmp	r2, r3
d0052d68:	f300 8095 	bgt.w	d0052e96 <fillTriangleDitherBayerT+0x3be>
d0052d6c:	ee07 2a90 	vmov	s15, r2
d0052d70:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d0052d74:	3301      	adds	r3, #1
d0052d76:	eba0 1200 	sub.w	r2, r0, r0, lsl #4
d0052d7a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052d7e:	4938      	ldr	r1, [pc, #224]	; (d0052e60 <fillTriangleDitherBayerT+0x388>)
d0052d80:	0152      	lsls	r2, r2, #5
d0052d82:	eddd aa0e 	vldr	s21, [sp, #56]	; 0x38
d0052d86:	ed9d 0a0d 	vldr	s0, [sp, #52]	; 0x34
d0052d8a:	ee77 7a87 	vadd.f32	s15, s15, s14
d0052d8e:	9308      	str	r3, [sp, #32]
d0052d90:	680b      	ldr	r3, [r1, #0]
d0052d92:	eddf 9a36 	vldr	s19, [pc, #216]	; d0052e6c <fillTriangleDitherBayerT+0x394>
d0052d96:	ee37 3ac3 	vsub.f32	s6, s15, s6
d0052d9a:	ed9f aa32 	vldr	s20, [pc, #200]	; d0052e64 <fillTriangleDitherBayerT+0x38c>
d0052d9e:	ee37 2ac2 	vsub.f32	s4, s15, s4
d0052da2:	ed9f 6a33 	vldr	s12, [pc, #204]	; d0052e70 <fillTriangleDitherBayerT+0x398>
d0052da6:	eddf 3a30 	vldr	s7, [pc, #192]	; d0052e68 <fillTriangleDitherBayerT+0x390>
d0052daa:	eee8 4a03 	vfma.f32	s9, s16, s6
d0052dae:	920a      	str	r2, [sp, #40]	; 0x28
d0052db0:	eea8 1a83 	vfma.f32	s2, s17, s6
d0052db4:	9309      	str	r3, [sp, #36]	; 0x24
d0052db6:	eee9 5a03 	vfma.f32	s11, s18, s6
d0052dba:	eeea 2a82 	vfma.f32	s5, s21, s4
d0052dbe:	eee0 0a02 	vfma.f32	s1, s0, s4
d0052dc2:	eea2 4a2f 	vfma.f32	s8, s4, s31
d0052dc6:	e034      	b.n	d0052e32 <fillTriangleDitherBayerT+0x35a>
d0052dc8:	eeb0 ba65 	vmov.f32	s22, s11
d0052dcc:	eef0 1a41 	vmov.f32	s3, s2
d0052dd0:	eeb0 7a64 	vmov.f32	s14, s9
d0052dd4:	eeb0 2a44 	vmov.f32	s4, s8
d0052dd8:	eeb0 3a60 	vmov.f32	s6, s1
d0052ddc:	eef0 6a62 	vmov.f32	s13, s5
d0052de0:	fefa 7a47 	vrintp.f32	s15, s14
d0052de4:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0052de8:	f240 13df 	movw	r3, #479	; 0x1df
d0052dec:	ee17 6a90 	vmov	r6, s15
d0052df0:	fefa 7a66 	vrintp.f32	s15, s13
d0052df4:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0052df8:	3e01      	subs	r6, #1
d0052dfa:	ee17 0a90 	vmov	r0, s15
d0052dfe:	429e      	cmp	r6, r3
d0052e00:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d0052e04:	bfa8      	it	ge
d0052e06:	461e      	movge	r6, r3
d0052e08:	42b0      	cmp	r0, r6
d0052e0a:	f340 8175 	ble.w	d00530f8 <fillTriangleDitherBayerT+0x620>
d0052e0e:	9b04      	ldr	r3, [sp, #16]
d0052e10:	ee74 4a88 	vadd.f32	s9, s9, s16
d0052e14:	9a08      	ldr	r2, [sp, #32]
d0052e16:	ee31 1a28 	vadd.f32	s2, s2, s17
d0052e1a:	3301      	adds	r3, #1
d0052e1c:	ee75 5a89 	vadd.f32	s11, s11, s18
d0052e20:	ee72 2aaa 	vadd.f32	s5, s5, s21
d0052e24:	4293      	cmp	r3, r2
d0052e26:	ee70 0a80 	vadd.f32	s1, s1, s0
d0052e2a:	ee34 4a2f 	vadd.f32	s8, s8, s31
d0052e2e:	9304      	str	r3, [sp, #16]
d0052e30:	d031      	beq.n	d0052e96 <fillTriangleDitherBayerT+0x3be>
d0052e32:	eef4 4ae2 	vcmpe.f32	s9, s5
d0052e36:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052e3a:	dcc5      	bgt.n	d0052dc8 <fillTriangleDitherBayerT+0x2f0>
d0052e3c:	eeb0 ba44 	vmov.f32	s22, s8
d0052e40:	eef0 1a60 	vmov.f32	s3, s1
d0052e44:	eeb0 7a62 	vmov.f32	s14, s5
d0052e48:	eeb0 2a65 	vmov.f32	s4, s11
d0052e4c:	eeb0 3a41 	vmov.f32	s6, s2
d0052e50:	eef0 6a64 	vmov.f32	s13, s9
d0052e54:	e7c4      	b.n	d0052de0 <fillTriangleDitherBayerT+0x308>
d0052e56:	bf00      	nop
d0052e58:	d005ad68 	.word	0xd005ad68
d0052e5c:	d005ad6c 	.word	0xd005ad6c
d0052e60:	d005ad70 	.word	0xd005ad70
d0052e64:	33d6bf95 	.word	0x33d6bf95
d0052e68:	477fff00 	.word	0x477fff00
d0052e6c:	38d1b717 	.word	0x38d1b717
d0052e70:	00000000 	.word	0x00000000
d0052e74:	eddd 5a11 	vldr	s11, [sp, #68]	; 0x44
d0052e78:	4644      	mov	r4, r8
d0052e7a:	ed9d 1a12 	vldr	s2, [sp, #72]	; 0x48
d0052e7e:	ed9d 4a13 	vldr	s8, [sp, #76]	; 0x4c
d0052e82:	ed5f 7a06 	vldr	s15, [pc, #-24]	; d0052e6c <fillTriangleDitherBayerT+0x394>
d0052e86:	ed9d 7a09 	vldr	s14, [sp, #36]	; 0x24
d0052e8a:	eeb4 7ae7 	vcmpe.f32	s14, s15
d0052e8e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052e92:	f73f af58 	bgt.w	d0052d46 <fillTriangleDitherBayerT+0x26e>
d0052e96:	b015      	add	sp, #84	; 0x54
d0052e98:	ecbd 8b10 	vpop	{d8-d15}
d0052e9c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0052ea0:	eeb4 2ac5 	vcmpe.f32	s4, s10
d0052ea4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052ea8:	f340 80f4 	ble.w	d0053094 <fillTriangleDitherBayerT+0x5bc>
d0052eac:	eeb0 8a47 	vmov.f32	s16, s14
d0052eb0:	eeb0 0a61 	vmov.f32	s0, s3
d0052eb4:	eef0 3a45 	vmov.f32	s7, s10
d0052eb8:	eef0 7a46 	vmov.f32	s15, s12
d0052ebc:	eeb0 7a65 	vmov.f32	s14, s11
d0052ec0:	eef0 1a41 	vmov.f32	s3, s2
d0052ec4:	eeb0 5a43 	vmov.f32	s10, s6
d0052ec8:	eeb0 6a64 	vmov.f32	s12, s9
d0052ecc:	eef0 5a48 	vmov.f32	s11, s16
d0052ed0:	eeb0 1a40 	vmov.f32	s2, s0
d0052ed4:	eeb0 3a63 	vmov.f32	s6, s7
d0052ed8:	eef0 4a67 	vmov.f32	s9, s15
d0052edc:	e6ad      	b.n	d0052c3a <fillTriangleDitherBayerT+0x162>
d0052ede:	ee07 2a90 	vmov	s15, r2
d0052ee2:	ee8a 0a29 	vdiv.f32	s0, s20, s19
d0052ee6:	9901      	ldr	r1, [sp, #4]
d0052ee8:	eb04 1404 	add.w	r4, r4, r4, lsl #4
d0052eec:	1224      	asrs	r4, r4, #8
d0052eee:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052ef2:	ee72 aae4 	vsub.f32	s21, s5, s9
d0052ef6:	ee30 aac1 	vsub.f32	s20, s1, s2
d0052efa:	ee76 6ae7 	vsub.f32	s13, s13, s15
d0052efe:	ee34 ea65 	vsub.f32	s28, s8, s11
d0052f02:	eef0 7a66 	vmov.f32	s15, s13
d0052f06:	ee75 6a42 	vsub.f32	s13, s10, s4
d0052f0a:	eefe 7ace 	vcvt.s32.f32	s15, s15, #4
d0052f0e:	eef4 6ae3 	vcmpe.f32	s13, s7
d0052f12:	edcd 6a09 	vstr	s13, [sp, #36]	; 0x24
d0052f16:	ee2e ea00 	vmul.f32	s28, s28, s0
d0052f1a:	ee17 3a90 	vmov	r3, s15
d0052f1e:	ee6a 7a80 	vmul.f32	s15, s21, s0
d0052f22:	f383 0204 	usat	r2, #4, r3
d0052f26:	eeb0 ca67 	vmov.f32	s24, s15
d0052f2a:	9202      	str	r2, [sp, #8]
d0052f2c:	ee6a 7a00 	vmul.f32	s15, s20, s0
d0052f30:	9a00      	ldr	r2, [sp, #0]
d0052f32:	428a      	cmp	r2, r1
d0052f34:	bf18      	it	ne
d0052f36:	2b00      	cmpne	r3, #0
d0052f38:	eef0 ea67 	vmov.f32	s29, s15
d0052f3c:	bfd4      	ite	le
d0052f3e:	2301      	movle	r3, #1
d0052f40:	2300      	movgt	r3, #0
d0052f42:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052f46:	9303      	str	r3, [sp, #12]
d0052f48:	f73f aed5 	bgt.w	d0052cf6 <fillTriangleDitherBayerT+0x21e>
d0052f4c:	ed5f fa38 	vldr	s31, [pc, #-224]	; d0052e70 <fillTriangleDitherBayerT+0x398>
d0052f50:	edcd fa0d 	vstr	s31, [sp, #52]	; 0x34
d0052f54:	edcd fa0e 	vstr	s31, [sp, #56]	; 0x38
d0052f58:	eefd 7ac2 	vcvt.s32.f32	s15, s4
d0052f5c:	4bcd      	ldr	r3, [pc, #820]	; (d0053294 <fillTriangleDitherBayerT+0x7bc>)
d0052f5e:	4ace      	ldr	r2, [pc, #824]	; (d0053298 <fillTriangleDitherBayerT+0x7c0>)
d0052f60:	6819      	ldr	r1, [r3, #0]
d0052f62:	ee17 3a90 	vmov	r3, s15
d0052f66:	edcd 7a0b 	vstr	s15, [sp, #44]	; 0x2c
d0052f6a:	eefd 7ac3 	vcvt.s32.f32	s15, s6
d0052f6e:	6810      	ldr	r0, [r2, #0]
d0052f70:	3b01      	subs	r3, #1
d0052f72:	910c      	str	r1, [sp, #48]	; 0x30
d0052f74:	900a      	str	r0, [sp, #40]	; 0x28
d0052f76:	ee17 2a90 	vmov	r2, s15
d0052f7a:	428b      	cmp	r3, r1
d0052f7c:	bfa8      	it	ge
d0052f7e:	460b      	movge	r3, r1
d0052f80:	4282      	cmp	r2, r0
d0052f82:	bfb8      	it	lt
d0052f84:	4602      	movlt	r2, r0
d0052f86:	4293      	cmp	r3, r2
d0052f88:	9204      	str	r2, [sp, #16]
d0052f8a:	f6ff af7a 	blt.w	d0052e82 <fillTriangleDitherBayerT+0x3aa>
d0052f8e:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0052f92:	3301      	adds	r3, #1
d0052f94:	eef0 aa64 	vmov.f32	s21, s9
d0052f98:	49c0      	ldr	r1, [pc, #768]	; (d005329c <fillTriangleDitherBayerT+0x7c4>)
d0052f9a:	eba0 1200 	sub.w	r2, r0, r0, lsl #4
d0052f9e:	9308      	str	r3, [sp, #32]
d0052fa0:	ee37 7ac3 	vsub.f32	s14, s15, s6
d0052fa4:	eddd 7a04 	vldr	s15, [sp, #16]
d0052fa8:	680b      	ldr	r3, [r1, #0]
d0052faa:	eeb0 ba64 	vmov.f32	s22, s9
d0052fae:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052fb2:	eddf babb 	vldr	s23, [pc, #748]	; d00532a0 <fillTriangleDitherBayerT+0x7c8>
d0052fb6:	eef0 da41 	vmov.f32	s27, s2
d0052fba:	930f      	str	r3, [sp, #60]	; 0x3c
d0052fbc:	eeb0 da65 	vmov.f32	s26, s11
d0052fc0:	0153      	lsls	r3, r2, #5
d0052fc2:	ee77 7a87 	vadd.f32	s15, s15, s14
d0052fc6:	ed9f 6ab7 	vldr	s12, [pc, #732]	; d00532a4 <fillTriangleDitherBayerT+0x7cc>
d0052fca:	eeb0 aa4c 	vmov.f32	s20, s24
d0052fce:	ed9f 7ab6 	vldr	s14, [pc, #728]	; d00532a8 <fillTriangleDitherBayerT+0x7d0>
d0052fd2:	eef0 ca41 	vmov.f32	s25, s2
d0052fd6:	46a0      	mov	r8, r4
d0052fd8:	eee7 aa8c 	vfma.f32	s21, s15, s24
d0052fdc:	9310      	str	r3, [sp, #64]	; 0x40
d0052fde:	eeb0 ca65 	vmov.f32	s24, s11
d0052fe2:	edcd 5a11 	vstr	s11, [sp, #68]	; 0x44
d0052fe6:	eea8 ba27 	vfma.f32	s22, s16, s15
d0052fea:	ed8d 1a12 	vstr	s2, [sp, #72]	; 0x48
d0052fee:	eee8 daa7 	vfma.f32	s27, s17, s15
d0052ff2:	ed8d 4a13 	vstr	s8, [sp, #76]	; 0x4c
d0052ff6:	eea9 da27 	vfma.f32	s26, s18, s15
d0052ffa:	eee7 caae 	vfma.f32	s25, s15, s29
d0052ffe:	eea7 ca8e 	vfma.f32	s24, s15, s28
d0053002:	e035      	b.n	d0053070 <fillTriangleDitherBayerT+0x598>
d0053004:	eef0 1a4d 	vmov.f32	s3, s26
d0053008:	eef0 3a6d 	vmov.f32	s7, s27
d005300c:	eef0 7a4b 	vmov.f32	s15, s22
d0053010:	eeb0 4a4c 	vmov.f32	s8, s24
d0053014:	eef0 5a6c 	vmov.f32	s11, s25
d0053018:	eef0 6a6a 	vmov.f32	s13, s21
d005301c:	feba 1a67 	vrintp.f32	s2, s15
d0053020:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d0053024:	feba 0a66 	vrintp.f32	s0, s13
d0053028:	f240 13df 	movw	r3, #479	; 0x1df
d005302c:	ee11 6a10 	vmov	r6, s2
d0053030:	eebd 1ac0 	vcvt.s32.f32	s2, s0
d0053034:	3e01      	subs	r6, #1
d0053036:	ee11 0a10 	vmov	r0, s2
d005303a:	429e      	cmp	r6, r3
d005303c:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d0053040:	bfa8      	it	ge
d0053042:	461e      	movge	r6, r3
d0053044:	4286      	cmp	r6, r0
d0053046:	f280 8173 	bge.w	d0053330 <fillTriangleDitherBayerT+0x858>
d005304a:	9b04      	ldr	r3, [sp, #16]
d005304c:	ee3b ba08 	vadd.f32	s22, s22, s16
d0053050:	9a08      	ldr	r2, [sp, #32]
d0053052:	ee7d daa8 	vadd.f32	s27, s27, s17
d0053056:	3301      	adds	r3, #1
d0053058:	ee3d da09 	vadd.f32	s26, s26, s18
d005305c:	ee7a aa8a 	vadd.f32	s21, s21, s20
d0053060:	4293      	cmp	r3, r2
d0053062:	ee7c caae 	vadd.f32	s25, s25, s29
d0053066:	ee3c ca0e 	vadd.f32	s24, s24, s28
d005306a:	9304      	str	r3, [sp, #16]
d005306c:	f43f af02 	beq.w	d0052e74 <fillTriangleDitherBayerT+0x39c>
d0053070:	eeb4 baea 	vcmpe.f32	s22, s21
d0053074:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053078:	dcc4      	bgt.n	d0053004 <fillTriangleDitherBayerT+0x52c>
d005307a:	eef0 1a4c 	vmov.f32	s3, s24
d005307e:	eef0 3a6c 	vmov.f32	s7, s25
d0053082:	eef0 7a6a 	vmov.f32	s15, s21
d0053086:	eeb0 4a4d 	vmov.f32	s8, s26
d005308a:	eef0 5a6d 	vmov.f32	s11, s27
d005308e:	eef0 6a4b 	vmov.f32	s13, s22
d0053092:	e7c3      	b.n	d005301c <fillTriangleDitherBayerT+0x544>
d0053094:	eeb0 8a65 	vmov.f32	s16, s11
d0053098:	eeb0 0a41 	vmov.f32	s0, s2
d005309c:	eef0 3a43 	vmov.f32	s7, s6
d00530a0:	eef0 7a64 	vmov.f32	s15, s9
d00530a4:	eef0 5a44 	vmov.f32	s11, s8
d00530a8:	eeb0 1a60 	vmov.f32	s2, s1
d00530ac:	eeb0 3a42 	vmov.f32	s6, s4
d00530b0:	eef0 4a62 	vmov.f32	s9, s5
d00530b4:	eeb0 4a48 	vmov.f32	s8, s16
d00530b8:	eef0 0a40 	vmov.f32	s1, s0
d00530bc:	eeb0 2a63 	vmov.f32	s4, s7
d00530c0:	eef0 2a67 	vmov.f32	s5, s15
d00530c4:	e59c      	b.n	d0052c00 <fillTriangleDitherBayerT+0x128>
d00530c6:	eeb0 8a65 	vmov.f32	s16, s11
d00530ca:	eeb0 0a41 	vmov.f32	s0, s2
d00530ce:	eef0 3a43 	vmov.f32	s7, s6
d00530d2:	eef0 7a64 	vmov.f32	s15, s9
d00530d6:	eef0 5a47 	vmov.f32	s11, s14
d00530da:	eeb0 1a61 	vmov.f32	s2, s3
d00530de:	eeb0 3a45 	vmov.f32	s6, s10
d00530e2:	eef0 4a46 	vmov.f32	s9, s12
d00530e6:	eeb0 7a48 	vmov.f32	s14, s16
d00530ea:	eef0 1a40 	vmov.f32	s3, s0
d00530ee:	eeb0 5a63 	vmov.f32	s10, s7
d00530f2:	eeb0 6a67 	vmov.f32	s12, s15
d00530f6:	e583      	b.n	d0052c00 <fillTriangleDitherBayerT+0x128>
d00530f8:	ee37 7a66 	vsub.f32	s14, s14, s13
d00530fc:	eeb4 7ae9 	vcmpe.f32	s14, s19
d0053100:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053104:	f340 8223 	ble.w	d005354e <fillTriangleDitherBayerT+0xa76>
d0053108:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d005310c:	ee71 1ac3 	vsub.f32	s3, s3, s6
d0053110:	ee3b ba42 	vsub.f32	s22, s22, s4
d0053114:	ee87 5a87 	vdiv.f32	s10, s15, s14
d0053118:	ee07 0a10 	vmov	s14, r0
d005311c:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0053120:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0053124:	eef8 6ac7 	vcvt.f32.s32	s13, s14
d0053128:	ee76 6aa7 	vadd.f32	s13, s13, s15
d005312c:	ee61 1a85 	vmul.f32	s3, s3, s10
d0053130:	ee2b ba05 	vmul.f32	s22, s22, s10
d0053134:	eea6 3aa1 	vfma.f32	s6, s13, s3
d0053138:	eea6 2a8b 	vfma.f32	s4, s13, s22
d005313c:	9a04      	ldr	r2, [sp, #16]
d005313e:	eeb6 5a00 	vmov.f32	s10, #96	; 0x3f000000  0.5
d0053142:	4b5a      	ldr	r3, [pc, #360]	; (d00532ac <fillTriangleDitherBayerT+0x7d4>)
d0053144:	ebc2 1e02 	rsb	lr, r2, r2, lsl #4
d0053148:	990a      	ldr	r1, [sp, #40]	; 0x28
d005314a:	681f      	ldr	r7, [r3, #0]
d005314c:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0053150:	eb01 1e4e 	add.w	lr, r1, lr, lsl #5
d0053154:	f002 0803 	and.w	r8, r2, #3
d0053158:	eb02 1383 	add.w	r3, r2, r3, lsl #6
d005315c:	4a54      	ldr	r2, [pc, #336]	; (d00532b0 <fillTriangleDitherBayerT+0x7d8>)
d005315e:	4486      	add	lr, r0
d0053160:	441f      	add	r7, r3
d0053162:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0053164:	eb02 0888 	add.w	r8, r2, r8, lsl #2
d0053168:	eb03 0e4e 	add.w	lr, r3, lr, lsl #1
d005316c:	eba6 0c00 	sub.w	ip, r6, r0
d0053170:	eeb4 3aca 	vcmpe.f32	s6, s20
d0053174:	f10c 0301 	add.w	r3, ip, #1
d0053178:	2b30      	cmp	r3, #48	; 0x30
d005317a:	bfa8      	it	ge
d005317c:	2330      	movge	r3, #48	; 0x30
d005317e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053182:	d963      	bls.n	d005324c <fillTriangleDitherBayerT+0x774>
d0053184:	f1bc 0f00 	cmp.w	ip, #0
d0053188:	ee82 7a03 	vdiv.f32	s14, s4, s6
d005318c:	dd6e      	ble.n	d005326c <fillTriangleDitherBayerT+0x794>
d005318e:	1e5a      	subs	r2, r3, #1
d0053190:	ee07 2a90 	vmov	s15, r2
d0053194:	eef0 6a43 	vmov.f32	s13, s6
d0053198:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005319c:	eee7 6aa1 	vfma.f32	s13, s15, s3
d00531a0:	eef4 6aca 	vcmpe.f32	s13, s20
d00531a4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00531a8:	dd6a      	ble.n	d0053280 <fillTriangleDitherBayerT+0x7a8>
d00531aa:	eeb0 ca42 	vmov.f32	s24, s4
d00531ae:	9a03      	ldr	r2, [sp, #12]
d00531b0:	eea7 ca8b 	vfma.f32	s24, s15, s22
d00531b4:	eecc ba26 	vdiv.f32	s23, s24, s13
d00531b8:	ee7b bac7 	vsub.f32	s23, s23, s14
d00531bc:	eecb 6aa7 	vdiv.f32	s13, s23, s15
d00531c0:	2a00      	cmp	r2, #0
d00531c2:	f000 81b6 	beq.w	d0053532 <fillTriangleDitherBayerT+0xa5a>
d00531c6:	f000 0503 	and.w	r5, r0, #3
d00531ca:	f1ae 0902 	sub.w	r9, lr, #2
d00531ce:	2100      	movs	r1, #0
d00531d0:	fec7 7a06 	vmaxnm.f32	s15, s14, s12
d00531d4:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d00531d8:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d00531dc:	f105 0a01 	add.w	sl, r5, #1
d00531e0:	ee77 7a85 	vadd.f32	s15, s15, s10
d00531e4:	ee37 7a26 	vadd.f32	s14, s14, s13
d00531e8:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00531ec:	ee17 2a90 	vmov	r2, s15
d00531f0:	b292      	uxth	r2, r2
d00531f2:	4593      	cmp	fp, r2
d00531f4:	d90b      	bls.n	d005320e <fillTriangleDitherBayerT+0x736>
d00531f6:	f818 b005 	ldrb.w	fp, [r8, r5]
d00531fa:	eb01 0581 	add.w	r5, r1, r1, lsl #2
d00531fe:	45a3      	cmp	fp, r4
d0053200:	ea4f 1585 	mov.w	r5, r5, lsl #6
d0053204:	db03      	blt.n	d005320e <fillTriangleDitherBayerT+0x736>
d0053206:	f8a9 2000 	strh.w	r2, [r9]
d005320a:	9a00      	ldr	r2, [sp, #0]
d005320c:	557a      	strb	r2, [r7, r5]
d005320e:	3101      	adds	r1, #1
d0053210:	f00a 0503 	and.w	r5, sl, #3
d0053214:	428b      	cmp	r3, r1
d0053216:	dcdb      	bgt.n	d00531d0 <fillTriangleDitherBayerT+0x6f8>
d0053218:	f1bc 0f00 	cmp.w	ip, #0
d005321c:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0053220:	ea4f 0143 	mov.w	r1, r3, lsl #1
d0053224:	ea4f 1282 	mov.w	r2, r2, lsl #6
d0053228:	bfbc      	itt	lt
d005322a:	2102      	movlt	r1, #2
d005322c:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d0053230:	448e      	add	lr, r1
d0053232:	4417      	add	r7, r2
d0053234:	ee07 3a90 	vmov	s15, r3
d0053238:	4418      	add	r0, r3
d005323a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005323e:	eea7 3aa1 	vfma.f32	s6, s15, s3
d0053242:	eea7 2a8b 	vfma.f32	s4, s15, s22
d0053246:	4286      	cmp	r6, r0
d0053248:	da90      	bge.n	d005316c <fillTriangleDitherBayerT+0x694>
d005324a:	e5e0      	b.n	d0052e0e <fillTriangleDitherBayerT+0x336>
d005324c:	ee07 3a90 	vmov	s15, r3
d0053250:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0053254:	eb0e 0e43 	add.w	lr, lr, r3, lsl #1
d0053258:	4418      	add	r0, r3
d005325a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005325e:	eb07 1782 	add.w	r7, r7, r2, lsl #6
d0053262:	eea7 3aa1 	vfma.f32	s6, s15, s3
d0053266:	eea7 2a8b 	vfma.f32	s4, s15, s22
d005326a:	e7ec      	b.n	d0053246 <fillTriangleDitherBayerT+0x76e>
d005326c:	9a03      	ldr	r2, [sp, #12]
d005326e:	f000 0503 	and.w	r5, r0, #3
d0053272:	b30a      	cbz	r2, d00532b8 <fillTriangleDitherBayerT+0x7e0>
d0053274:	f1bc 0f00 	cmp.w	ip, #0
d0053278:	dbdc      	blt.n	d0053234 <fillTriangleDitherBayerT+0x75c>
d005327a:	eef0 6a46 	vmov.f32	s13, s12
d005327e:	e7a4      	b.n	d00531ca <fillTriangleDitherBayerT+0x6f2>
d0053280:	9a03      	ldr	r2, [sp, #12]
d0053282:	2a00      	cmp	r2, #0
d0053284:	f000 8158 	beq.w	d0053538 <fillTriangleDitherBayerT+0xa60>
d0053288:	eef0 6a46 	vmov.f32	s13, s12
d005328c:	f000 0503 	and.w	r5, r0, #3
d0053290:	e79b      	b.n	d00531ca <fillTriangleDitherBayerT+0x6f2>
d0053292:	bf00      	nop
d0053294:	d005ad6c 	.word	0xd005ad6c
d0053298:	d005ad68 	.word	0xd005ad68
d005329c:	d005ad70 	.word	0xd005ad70
d00532a0:	33d6bf95 	.word	0x33d6bf95
d00532a4:	477fff00 	.word	0x477fff00
d00532a8:	00000000 	.word	0x00000000
d00532ac:	d00f5084 	.word	0xd00f5084
d00532b0:	d005a324 	.word	0xd005a324
d00532b4:	38d1b717 	.word	0x38d1b717
d00532b8:	f1bc 0f00 	cmp.w	ip, #0
d00532bc:	dbba      	blt.n	d0053234 <fillTriangleDitherBayerT+0x75c>
d00532be:	eef0 6a46 	vmov.f32	s13, s12
d00532c2:	f1ae 0902 	sub.w	r9, lr, #2
d00532c6:	2100      	movs	r1, #0
d00532c8:	f8cd c014 	str.w	ip, [sp, #20]
d00532cc:	9606      	str	r6, [sp, #24]
d00532ce:	9007      	str	r0, [sp, #28]
d00532d0:	fec7 7a06 	vmaxnm.f32	s15, s14, s12
d00532d4:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d00532d8:	ee77 7a85 	vadd.f32	s15, s15, s10
d00532dc:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d00532e0:	ee37 7a26 	vadd.f32	s14, s14, s13
d00532e4:	f105 0a01 	add.w	sl, r5, #1
d00532e8:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00532ec:	ee17 2a90 	vmov	r2, s15
d00532f0:	b292      	uxth	r2, r2
d00532f2:	4593      	cmp	fp, r2
d00532f4:	d912      	bls.n	d005331c <fillTriangleDitherBayerT+0x844>
d00532f6:	f818 b005 	ldrb.w	fp, [r8, r5]
d00532fa:	eb01 0581 	add.w	r5, r1, r1, lsl #2
d00532fe:	45a3      	cmp	fp, r4
d0053300:	ea4f 1585 	mov.w	r5, r5, lsl #6
d0053304:	db0a      	blt.n	d005331c <fillTriangleDitherBayerT+0x844>
d0053306:	9801      	ldr	r0, [sp, #4]
d0053308:	f8a9 2000 	strh.w	r2, [r9]
d005330c:	4606      	mov	r6, r0
d005330e:	9800      	ldr	r0, [sp, #0]
d0053310:	4684      	mov	ip, r0
d0053312:	9802      	ldr	r0, [sp, #8]
d0053314:	4583      	cmp	fp, r0
d0053316:	bfa8      	it	ge
d0053318:	4666      	movge	r6, ip
d005331a:	557e      	strb	r6, [r7, r5]
d005331c:	3101      	adds	r1, #1
d005331e:	f00a 0503 	and.w	r5, sl, #3
d0053322:	428b      	cmp	r3, r1
d0053324:	dcd4      	bgt.n	d00532d0 <fillTriangleDitherBayerT+0x7f8>
d0053326:	f8dd c014 	ldr.w	ip, [sp, #20]
d005332a:	9e06      	ldr	r6, [sp, #24]
d005332c:	9807      	ldr	r0, [sp, #28]
d005332e:	e773      	b.n	d0053218 <fillTriangleDitherBayerT+0x740>
d0053330:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0053334:	ed1f 1a21 	vldr	s2, [pc, #-132]	; d00532b4 <fillTriangleDitherBayerT+0x7dc>
d0053338:	eef4 7ac1 	vcmpe.f32	s15, s2
d005333c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053340:	f340 810a 	ble.w	d0053558 <fillTriangleDitherBayerT+0xa80>
d0053344:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0053348:	ee73 3ae5 	vsub.f32	s7, s7, s11
d005334c:	ee71 1ac4 	vsub.f32	s3, s3, s8
d0053350:	ee80 1a27 	vdiv.f32	s2, s0, s15
d0053354:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0053358:	ee77 6ae6 	vsub.f32	s13, s15, s13
d005335c:	ee07 0a90 	vmov	s15, r0
d0053360:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053364:	ee77 6aa6 	vadd.f32	s13, s15, s13
d0053368:	ee63 3a81 	vmul.f32	s7, s7, s2
d005336c:	ee61 1a81 	vmul.f32	s3, s3, s2
d0053370:	eee6 5aa3 	vfma.f32	s11, s13, s7
d0053374:	eea6 4aa1 	vfma.f32	s8, s13, s3
d0053378:	9a04      	ldr	r2, [sp, #16]
d005337a:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d005337e:	4b79      	ldr	r3, [pc, #484]	; (d0053564 <fillTriangleDitherBayerT+0xa8c>)
d0053380:	ebc2 1c02 	rsb	ip, r2, r2, lsl #4
d0053384:	9910      	ldr	r1, [sp, #64]	; 0x40
d0053386:	681f      	ldr	r7, [r3, #0]
d0053388:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d005338c:	eb01 1c4c 	add.w	ip, r1, ip, lsl #5
d0053390:	f002 0e03 	and.w	lr, r2, #3
d0053394:	eb02 1383 	add.w	r3, r2, r3, lsl #6
d0053398:	4a73      	ldr	r2, [pc, #460]	; (d0053568 <fillTriangleDitherBayerT+0xa90>)
d005339a:	4484      	add	ip, r0
d005339c:	441f      	add	r7, r3
d005339e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d00533a0:	eb02 0e8e 	add.w	lr, r2, lr, lsl #2
d00533a4:	eb03 0c4c 	add.w	ip, r3, ip, lsl #1
d00533a8:	1a35      	subs	r5, r6, r0
d00533aa:	eef4 5aeb 	vcmpe.f32	s11, s23
d00533ae:	1c6a      	adds	r2, r5, #1
d00533b0:	2a30      	cmp	r2, #48	; 0x30
d00533b2:	bfa8      	it	ge
d00533b4:	2230      	movge	r2, #48	; 0x30
d00533b6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00533ba:	d961      	bls.n	d0053480 <fillTriangleDitherBayerT+0x9a8>
d00533bc:	2d00      	cmp	r5, #0
d00533be:	ee84 1a25 	vdiv.f32	s2, s8, s11
d00533c2:	dd6d      	ble.n	d00534a0 <fillTriangleDitherBayerT+0x9c8>
d00533c4:	1e53      	subs	r3, r2, #1
d00533c6:	ee07 3a90 	vmov	s15, r3
d00533ca:	eeb0 0a65 	vmov.f32	s0, s11
d00533ce:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00533d2:	eea7 0aa3 	vfma.f32	s0, s15, s7
d00533d6:	eeb4 0aeb 	vcmpe.f32	s0, s23
d00533da:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00533de:	f340 80a0 	ble.w	d0053522 <fillTriangleDitherBayerT+0xa4a>
d00533e2:	eeb0 fa44 	vmov.f32	s30, s8
d00533e6:	eea7 faa1 	vfma.f32	s30, s15, s3
d00533ea:	eecf 9a00 	vdiv.f32	s19, s30, s0
d00533ee:	ee79 9ac1 	vsub.f32	s19, s19, s2
d00533f2:	ee89 0aa7 	vdiv.f32	s0, s19, s15
d00533f6:	9b03      	ldr	r3, [sp, #12]
d00533f8:	2b00      	cmp	r3, #0
d00533fa:	d05b      	beq.n	d00534b4 <fillTriangleDitherBayerT+0x9dc>
d00533fc:	f000 0403 	and.w	r4, r0, #3
d0053400:	f1ac 0902 	sub.w	r9, ip, #2
d0053404:	2100      	movs	r1, #0
d0053406:	fec1 7a07 	vmaxnm.f32	s15, s2, s14
d005340a:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d005340e:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0053412:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d0053416:	ee31 1a00 	vadd.f32	s2, s2, s0
d005341a:	f104 0a01 	add.w	sl, r4, #1
d005341e:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0053422:	ee17 3a90 	vmov	r3, s15
d0053426:	b29b      	uxth	r3, r3
d0053428:	459b      	cmp	fp, r3
d005342a:	d90b      	bls.n	d0053444 <fillTriangleDitherBayerT+0x96c>
d005342c:	f81e b004 	ldrb.w	fp, [lr, r4]
d0053430:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d0053434:	45c3      	cmp	fp, r8
d0053436:	ea4f 1484 	mov.w	r4, r4, lsl #6
d005343a:	db03      	blt.n	d0053444 <fillTriangleDitherBayerT+0x96c>
d005343c:	f8a9 3000 	strh.w	r3, [r9]
d0053440:	9b00      	ldr	r3, [sp, #0]
d0053442:	553b      	strb	r3, [r7, r4]
d0053444:	3101      	adds	r1, #1
d0053446:	f00a 0403 	and.w	r4, sl, #3
d005344a:	428a      	cmp	r2, r1
d005344c:	dcdb      	bgt.n	d0053406 <fillTriangleDitherBayerT+0x92e>
d005344e:	2d00      	cmp	r5, #0
d0053450:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0053454:	ea4f 0142 	mov.w	r1, r2, lsl #1
d0053458:	ea4f 1383 	mov.w	r3, r3, lsl #6
d005345c:	bfbc      	itt	lt
d005345e:	2102      	movlt	r1, #2
d0053460:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0053464:	448c      	add	ip, r1
d0053466:	441f      	add	r7, r3
d0053468:	ee07 2a90 	vmov	s15, r2
d005346c:	4410      	add	r0, r2
d005346e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053472:	eee7 5aa3 	vfma.f32	s11, s15, s7
d0053476:	eea7 4aa1 	vfma.f32	s8, s15, s3
d005347a:	4286      	cmp	r6, r0
d005347c:	da94      	bge.n	d00533a8 <fillTriangleDitherBayerT+0x8d0>
d005347e:	e5e4      	b.n	d005304a <fillTriangleDitherBayerT+0x572>
d0053480:	ee07 2a90 	vmov	s15, r2
d0053484:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0053488:	eb0c 0c42 	add.w	ip, ip, r2, lsl #1
d005348c:	4410      	add	r0, r2
d005348e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053492:	eb07 1783 	add.w	r7, r7, r3, lsl #6
d0053496:	eee7 5aa3 	vfma.f32	s11, s15, s7
d005349a:	eea7 4aa1 	vfma.f32	s8, s15, s3
d005349e:	e7ec      	b.n	d005347a <fillTriangleDitherBayerT+0x9a2>
d00534a0:	9b03      	ldr	r3, [sp, #12]
d00534a2:	f000 0403 	and.w	r4, r0, #3
d00534a6:	2b00      	cmp	r3, #0
d00534a8:	d03e      	beq.n	d0053528 <fillTriangleDitherBayerT+0xa50>
d00534aa:	2d00      	cmp	r5, #0
d00534ac:	d1dc      	bne.n	d0053468 <fillTriangleDitherBayerT+0x990>
d00534ae:	eeb0 0a47 	vmov.f32	s0, s14
d00534b2:	e7a5      	b.n	d0053400 <fillTriangleDitherBayerT+0x928>
d00534b4:	f000 0403 	and.w	r4, r0, #3
d00534b8:	f1ac 0902 	sub.w	r9, ip, #2
d00534bc:	2100      	movs	r1, #0
d00534be:	9605      	str	r6, [sp, #20]
d00534c0:	9506      	str	r5, [sp, #24]
d00534c2:	9007      	str	r0, [sp, #28]
d00534c4:	fec1 7a07 	vmaxnm.f32	s15, s2, s14
d00534c8:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d00534cc:	ee77 7aa6 	vadd.f32	s15, s15, s13
d00534d0:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d00534d4:	ee31 1a00 	vadd.f32	s2, s2, s0
d00534d8:	f104 0a01 	add.w	sl, r4, #1
d00534dc:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00534e0:	ee17 3a90 	vmov	r3, s15
d00534e4:	b29b      	uxth	r3, r3
d00534e6:	459b      	cmp	fp, r3
d00534e8:	d912      	bls.n	d0053510 <fillTriangleDitherBayerT+0xa38>
d00534ea:	f81e b004 	ldrb.w	fp, [lr, r4]
d00534ee:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d00534f2:	45c3      	cmp	fp, r8
d00534f4:	ea4f 1484 	mov.w	r4, r4, lsl #6
d00534f8:	db0a      	blt.n	d0053510 <fillTriangleDitherBayerT+0xa38>
d00534fa:	9800      	ldr	r0, [sp, #0]
d00534fc:	f8a9 3000 	strh.w	r3, [r9]
d0053500:	4605      	mov	r5, r0
d0053502:	9801      	ldr	r0, [sp, #4]
d0053504:	4606      	mov	r6, r0
d0053506:	9802      	ldr	r0, [sp, #8]
d0053508:	4583      	cmp	fp, r0
d005350a:	bfb8      	it	lt
d005350c:	4635      	movlt	r5, r6
d005350e:	553d      	strb	r5, [r7, r4]
d0053510:	3101      	adds	r1, #1
d0053512:	f00a 0403 	and.w	r4, sl, #3
d0053516:	428a      	cmp	r2, r1
d0053518:	dcd4      	bgt.n	d00534c4 <fillTriangleDitherBayerT+0x9ec>
d005351a:	9e05      	ldr	r6, [sp, #20]
d005351c:	9d06      	ldr	r5, [sp, #24]
d005351e:	9807      	ldr	r0, [sp, #28]
d0053520:	e795      	b.n	d005344e <fillTriangleDitherBayerT+0x976>
d0053522:	eeb0 0a47 	vmov.f32	s0, s14
d0053526:	e766      	b.n	d00533f6 <fillTriangleDitherBayerT+0x91e>
d0053528:	2d00      	cmp	r5, #0
d005352a:	db9d      	blt.n	d0053468 <fillTriangleDitherBayerT+0x990>
d005352c:	eeb0 0a47 	vmov.f32	s0, s14
d0053530:	e7c2      	b.n	d00534b8 <fillTriangleDitherBayerT+0x9e0>
d0053532:	f000 0503 	and.w	r5, r0, #3
d0053536:	e6c4      	b.n	d00532c2 <fillTriangleDitherBayerT+0x7ea>
d0053538:	eef0 6a46 	vmov.f32	s13, s12
d005353c:	f000 0503 	and.w	r5, r0, #3
d0053540:	e6bf      	b.n	d00532c2 <fillTriangleDitherBayerT+0x7ea>
d0053542:	2310      	movs	r3, #16
d0053544:	9300      	str	r3, [sp, #0]
d0053546:	2310      	movs	r3, #16
d0053548:	9301      	str	r3, [sp, #4]
d005354a:	f7ff bb35 	b.w	d0052bb8 <fillTriangleDitherBayerT+0xe0>
d005354e:	eeb0 ba46 	vmov.f32	s22, s12
d0053552:	eef0 1a46 	vmov.f32	s3, s12
d0053556:	e5f1      	b.n	d005313c <fillTriangleDitherBayerT+0x664>
d0053558:	eef0 1a47 	vmov.f32	s3, s14
d005355c:	eef0 3a47 	vmov.f32	s7, s14
d0053560:	e70a      	b.n	d0053378 <fillTriangleDitherBayerT+0x8a0>
d0053562:	bf00      	nop
d0053564:	d00f5084 	.word	0xd00f5084
d0053568:	d005a324 	.word	0xd005a324

d005356c <fillTriangleDitherBayer2Mode>:
d005356c:	ed9f 7ad6 	vldr	s14, [pc, #856]	; d00538c8 <fillTriangleDitherBayer2Mode+0x35c>
d0053570:	eef4 0ac7 	vcmpe.f32	s1, s14
d0053574:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0053578:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005357c:	eeb4 1ac7 	vcmpe.f32	s2, s14
d0053580:	ed2d 8b10 	vpush	{d8-d15}
d0053584:	b091      	sub	sp, #68	; 0x44
d0053586:	9305      	str	r3, [sp, #20]
d0053588:	bf94      	ite	ls
d005358a:	2301      	movls	r3, #1
d005358c:	2300      	movhi	r3, #0
d005358e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053592:	9002      	str	r0, [sp, #8]
d0053594:	9103      	str	r1, [sp, #12]
d0053596:	bf98      	it	ls
d0053598:	f043 0301 	orrls.w	r3, r3, #1
d005359c:	9204      	str	r2, [sp, #16]
d005359e:	f8bd 00b0 	ldrh.w	r0, [sp, #176]	; 0xb0
d00535a2:	f8bd 10b4 	ldrh.w	r1, [sp, #180]	; 0xb4
d00535a6:	f8bd 20b8 	ldrh.w	r2, [sp, #184]	; 0xb8
d00535aa:	f89d b0bc 	ldrb.w	fp, [sp, #188]	; 0xbc
d00535ae:	ed8d 0a00 	vstr	s0, [sp]
d00535b2:	edcd 1a01 	vstr	s3, [sp, #4]
d00535b6:	2b00      	cmp	r3, #0
d00535b8:	f040 8162 	bne.w	d0053880 <fillTriangleDitherBayer2Mode+0x314>
d00535bc:	eeb4 0a47 	vcmp.f32	s0, s14
d00535c0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00535c4:	f240 815c 	bls.w	d0053880 <fillTriangleDitherBayer2Mode+0x314>
d00535c8:	eef7 4a00 	vmov.f32	s9, #112	; 0x3f800000  1.0
d00535cc:	ee07 0a10 	vmov	s14, r0
d00535d0:	eef0 6a41 	vmov.f32	s13, s2
d00535d4:	ee05 1a90 	vmov	s11, r1
d00535d8:	eef0 7a61 	vmov.f32	s15, s3
d00535dc:	ee84 3a80 	vdiv.f32	s6, s9, s0
d00535e0:	ee84 1aa6 	vdiv.f32	s2, s9, s13
d00535e4:	ee06 2a90 	vmov	s13, r2
d00535e8:	eec4 1aa0 	vdiv.f32	s3, s9, s1
d00535ec:	eef8 2a66 	vcvt.f32.u32	s5, s13
d00535f0:	eddd 6a03 	vldr	s13, [sp, #12]
d00535f4:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d00535f8:	eeb8 5ae6 	vcvt.f32.s32	s10, s13
d00535fc:	eddd 6a05 	vldr	s13, [sp, #20]
d0053600:	eef8 5a65 	vcvt.f32.u32	s11, s11
d0053604:	eef8 3ae6 	vcvt.f32.s32	s7, s13
d0053608:	eddd 6a02 	vldr	s13, [sp, #8]
d005360c:	ee27 7a03 	vmul.f32	s14, s14, s6
d0053610:	eeb8 6ae6 	vcvt.f32.s32	s12, s13
d0053614:	eddd 6a04 	vldr	s13, [sp, #16]
d0053618:	eeb4 5ae3 	vcmpe.f32	s10, s7
d005361c:	eef8 4ae6 	vcvt.f32.s32	s9, s13
d0053620:	eddd 6a2a 	vldr	s13, [sp, #168]	; 0xa8
d0053624:	ee62 2a81 	vmul.f32	s5, s5, s2
d0053628:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005362c:	eeb8 2ae6 	vcvt.f32.s32	s4, s13
d0053630:	eddd 6a2b 	vldr	s13, [sp, #172]	; 0xac
d0053634:	ee65 5aa1 	vmul.f32	s11, s11, s3
d0053638:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d005363c:	f300 8125 	bgt.w	d005388a <fillTriangleDitherBayer2Mode+0x31e>
d0053640:	eeb4 5ae6 	vcmpe.f32	s10, s13
d0053644:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053648:	f300 8225 	bgt.w	d0053a96 <fillTriangleDitherBayer2Mode+0x52a>
d005364c:	eef4 3ae6 	vcmpe.f32	s7, s13
d0053650:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053654:	f300 823d 	bgt.w	d0053ad2 <fillTriangleDitherBayer2Mode+0x566>
d0053658:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d005365c:	ee75 0a04 	vadd.f32	s1, s10, s8
d0053660:	ee36 4a84 	vadd.f32	s8, s13, s8
d0053664:	eefd 0ae0 	vcvt.s32.f32	s1, s1
d0053668:	eebd 4ac4 	vcvt.s32.f32	s8, s8
d005366c:	ee10 3a90 	vmov	r3, s1
d0053670:	ee14 2a10 	vmov	r2, s8
d0053674:	4293      	cmp	r3, r2
d0053676:	f000 8103 	beq.w	d0053880 <fillTriangleDitherBayer2Mode+0x314>
d005367a:	ee76 8ac5 	vsub.f32	s17, s13, s10
d005367e:	ed9f 4a92 	vldr	s8, [pc, #584]	; d00538c8 <fillTriangleDitherBayer2Mode+0x35c>
d0053682:	eef4 8ac4 	vcmpe.f32	s17, s8
d0053686:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005368a:	f240 80f9 	bls.w	d0053880 <fillTriangleDitherBayer2Mode+0x314>
d005368e:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0053692:	ee33 9ac5 	vsub.f32	s18, s7, s10
d0053696:	ee32 0a46 	vsub.f32	s0, s4, s12
d005369a:	eec9 0aa8 	vdiv.f32	s1, s19, s17
d005369e:	eeb4 9ac4 	vcmpe.f32	s18, s8
d00536a2:	ee31 8a43 	vsub.f32	s16, s2, s6
d00536a6:	ee72 8ac7 	vsub.f32	s17, s5, s14
d00536aa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00536ae:	ee20 0a20 	vmul.f32	s0, s0, s1
d00536b2:	ee28 8a20 	vmul.f32	s16, s16, s1
d00536b6:	ee68 8aa0 	vmul.f32	s17, s17, s1
d00536ba:	f300 8115 	bgt.w	d00538e8 <fillTriangleDitherBayer2Mode+0x37c>
d00536be:	eef1 9a04 	vmov.f32	s19, #20	; 0x40a00000  5.0
d00536c2:	ed9f ba87 	vldr	s22, [pc, #540]	; d00538e0 <fillTriangleDitherBayer2Mode+0x374>
d00536c6:	eddf 0a87 	vldr	s1, [pc, #540]	; d00538e4 <fillTriangleDitherBayer2Mode+0x378>
d00536ca:	ee76 fae3 	vsub.f32	s31, s13, s7
d00536ce:	fec7 7a8b 	vmaxnm.f32	s15, s15, s22
d00536d2:	fec7 7ae9 	vminnm.f32	s15, s15, s19
d00536d6:	ee67 7aa0 	vmul.f32	s15, s15, s1
d00536da:	eef4 fac4 	vcmpe.f32	s31, s8
d00536de:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00536e2:	ee17 3a90 	vmov	r3, s15
d00536e6:	edcd 7a00 	vstr	s15, [sp]
d00536ea:	2b10      	cmp	r3, #16
d00536ec:	bfa8      	it	ge
d00536ee:	2310      	movge	r3, #16
d00536f0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00536f4:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d00536f8:	9302      	str	r3, [sp, #8]
d00536fa:	f340 80c1 	ble.w	d0053880 <fillTriangleDitherBayer2Mode+0x314>
d00536fe:	eef0 9a4b 	vmov.f32	s19, s22
d0053702:	eef0 ba4b 	vmov.f32	s23, s22
d0053706:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d005370a:	ed9f 4a6f 	vldr	s8, [pc, #444]	; d00538c8 <fillTriangleDitherBayer2Mode+0x35c>
d005370e:	ee32 2a64 	vsub.f32	s4, s4, s9
d0053712:	ee31 1a61 	vsub.f32	s2, s2, s3
d0053716:	eec0 7aaf 	vdiv.f32	s15, s1, s31
d005371a:	eeb4 9ac4 	vcmpe.f32	s18, s8
d005371e:	ee72 2ae5 	vsub.f32	s5, s5, s11
d0053722:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053726:	ee22 2a27 	vmul.f32	s4, s4, s15
d005372a:	ee22 faa7 	vmul.f32	s30, s5, s15
d005372e:	ed8d 2a08 	vstr	s4, [sp, #32]
d0053732:	ee21 2a27 	vmul.f32	s4, s2, s15
d0053736:	ed8d 2a07 	vstr	s4, [sp, #28]
d005373a:	f300 810d 	bgt.w	d0053958 <fillTriangleDitherBayer2Mode+0x3ec>
d005373e:	4a63      	ldr	r2, [pc, #396]	; (d00538cc <fillTriangleDitherBayer2Mode+0x360>)
d0053740:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0053744:	4b62      	ldr	r3, [pc, #392]	; (d00538d0 <fillTriangleDitherBayer2Mode+0x364>)
d0053746:	6812      	ldr	r2, [r2, #0]
d0053748:	681b      	ldr	r3, [r3, #0]
d005374a:	edcd 7a04 	vstr	s15, [sp, #16]
d005374e:	9203      	str	r2, [sp, #12]
d0053750:	9305      	str	r3, [sp, #20]
d0053752:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0053756:	9a04      	ldr	r2, [sp, #16]
d0053758:	9905      	ldr	r1, [sp, #20]
d005375a:	4691      	mov	r9, r2
d005375c:	9a03      	ldr	r2, [sp, #12]
d005375e:	ee17 3a90 	vmov	r3, s15
d0053762:	4591      	cmp	r9, r2
d0053764:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
d0053768:	bfb8      	it	lt
d005376a:	4691      	movlt	r9, r2
d005376c:	428b      	cmp	r3, r1
d005376e:	bfa8      	it	ge
d0053770:	460b      	movge	r3, r1
d0053772:	454b      	cmp	r3, r9
d0053774:	f2c0 8084 	blt.w	d0053880 <fillTriangleDitherBayer2Mode+0x314>
d0053778:	ee07 9a90 	vmov	s15, r9
d005377c:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0053780:	3301      	adds	r3, #1
d0053782:	eba2 1202 	sub.w	r2, r2, r2, lsl #4
d0053786:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005378a:	4952      	ldr	r1, [pc, #328]	; (d00538d4 <fillTriangleDitherBayer2Mode+0x368>)
d005378c:	0152      	lsls	r2, r2, #5
d005378e:	ed9d ba08 	vldr	s22, [sp, #32]
d0053792:	eddd aa07 	vldr	s21, [sp, #28]
d0053796:	ee77 7aa6 	vadd.f32	s15, s15, s13
d005379a:	9301      	str	r3, [sp, #4]
d005379c:	680b      	ldr	r3, [r1, #0]
d005379e:	ed9f 9a4a 	vldr	s18, [pc, #296]	; d00538c8 <fillTriangleDitherBayer2Mode+0x35c>
d00537a2:	ee37 5ac5 	vsub.f32	s10, s15, s10
d00537a6:	eddf 0a4c 	vldr	s1, [pc, #304]	; d00538d8 <fillTriangleDitherBayer2Mode+0x36c>
d00537aa:	ee77 3ae3 	vsub.f32	s7, s15, s7
d00537ae:	ed9f 4a4c 	vldr	s8, [pc, #304]	; d00538e0 <fillTriangleDitherBayer2Mode+0x374>
d00537b2:	ed9f 1a4a 	vldr	s2, [pc, #296]	; d00538dc <fillTriangleDitherBayer2Mode+0x370>
d00537b6:	eea0 6a05 	vfma.f32	s12, s0, s10
d00537ba:	9206      	str	r2, [sp, #24]
d00537bc:	eea8 3a05 	vfma.f32	s6, s16, s10
d00537c0:	9305      	str	r3, [sp, #20]
d00537c2:	eea8 7a85 	vfma.f32	s14, s17, s10
d00537c6:	eeeb 4a23 	vfma.f32	s9, s22, s7
d00537ca:	eeea 1aa3 	vfma.f32	s3, s21, s7
d00537ce:	eeef 5a23 	vfma.f32	s11, s30, s7
d00537d2:	e033      	b.n	d005383c <fillTriangleDitherBayer2Mode+0x2d0>
d00537d4:	eeb0 2a47 	vmov.f32	s4, s14
d00537d8:	eef0 9a43 	vmov.f32	s19, s6
d00537dc:	eef0 6a46 	vmov.f32	s13, s12
d00537e0:	eef0 3a65 	vmov.f32	s7, s11
d00537e4:	eeb0 5a61 	vmov.f32	s10, s3
d00537e8:	eef0 2a64 	vmov.f32	s5, s9
d00537ec:	fefa 7a66 	vrintp.f32	s15, s13
d00537f0:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00537f4:	f240 13df 	movw	r3, #479	; 0x1df
d00537f8:	ee17 4a90 	vmov	r4, s15
d00537fc:	fefa 7a62 	vrintp.f32	s15, s5
d0053800:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0053804:	3c01      	subs	r4, #1
d0053806:	ee17 1a90 	vmov	r1, s15
d005380a:	429c      	cmp	r4, r3
d005380c:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d0053810:	bfa8      	it	ge
d0053812:	461c      	movge	r4, r3
d0053814:	42a1      	cmp	r1, r4
d0053816:	f340 818e 	ble.w	d0053b36 <fillTriangleDitherBayer2Mode+0x5ca>
d005381a:	f109 0901 	add.w	r9, r9, #1
d005381e:	9b01      	ldr	r3, [sp, #4]
d0053820:	ee36 6a00 	vadd.f32	s12, s12, s0
d0053824:	4599      	cmp	r9, r3
d0053826:	ee33 3a08 	vadd.f32	s6, s6, s16
d005382a:	ee37 7a28 	vadd.f32	s14, s14, s17
d005382e:	ee74 4a8b 	vadd.f32	s9, s9, s22
d0053832:	ee71 1aaa 	vadd.f32	s3, s3, s21
d0053836:	ee75 5a8f 	vadd.f32	s11, s11, s30
d005383a:	d021      	beq.n	d0053880 <fillTriangleDitherBayer2Mode+0x314>
d005383c:	eeb4 6ae4 	vcmpe.f32	s12, s9
d0053840:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053844:	dcc6      	bgt.n	d00537d4 <fillTriangleDitherBayer2Mode+0x268>
d0053846:	eeb0 2a65 	vmov.f32	s4, s11
d005384a:	eef0 9a61 	vmov.f32	s19, s3
d005384e:	eef0 6a64 	vmov.f32	s13, s9
d0053852:	eef0 3a47 	vmov.f32	s7, s14
d0053856:	eeb0 5a43 	vmov.f32	s10, s6
d005385a:	eef0 2a46 	vmov.f32	s5, s12
d005385e:	e7c5      	b.n	d00537ec <fillTriangleDitherBayer2Mode+0x280>
d0053860:	eddd 6a0c 	vldr	s13, [sp, #48]	; 0x30
d0053864:	ed9d 6a0d 	vldr	s12, [sp, #52]	; 0x34
d0053868:	ed9d fa0e 	vldr	s30, [sp, #56]	; 0x38
d005386c:	eddd 1a0f 	vldr	s3, [sp, #60]	; 0x3c
d0053870:	eddf 7a15 	vldr	s15, [pc, #84]	; d00538c8 <fillTriangleDitherBayer2Mode+0x35c>
d0053874:	eef4 fae7 	vcmpe.f32	s31, s15
d0053878:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005387c:	f73f af69 	bgt.w	d0053752 <fillTriangleDitherBayer2Mode+0x1e6>
d0053880:	b011      	add	sp, #68	; 0x44
d0053882:	ecbd 8b10 	vpop	{d8-d15}
d0053886:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005388a:	eef4 3ae6 	vcmpe.f32	s7, s13
d005388e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053892:	f340 8137 	ble.w	d0053b04 <fillTriangleDitherBayer2Mode+0x598>
d0053896:	eeb0 8a62 	vmov.f32	s16, s5
d005389a:	eeb0 0a41 	vmov.f32	s0, s2
d005389e:	eef0 0a66 	vmov.f32	s1, s13
d00538a2:	eeb0 4a42 	vmov.f32	s8, s4
d00538a6:	eef0 2a47 	vmov.f32	s5, s14
d00538aa:	eeb0 1a43 	vmov.f32	s2, s6
d00538ae:	eef0 6a45 	vmov.f32	s13, s10
d00538b2:	eeb0 2a46 	vmov.f32	s4, s12
d00538b6:	eeb0 7a48 	vmov.f32	s14, s16
d00538ba:	eeb0 3a40 	vmov.f32	s6, s0
d00538be:	eeb0 5a60 	vmov.f32	s10, s1
d00538c2:	eeb0 6a44 	vmov.f32	s12, s8
d00538c6:	e6c7      	b.n	d0053658 <fillTriangleDitherBayer2Mode+0xec>
d00538c8:	38d1b717 	.word	0x38d1b717
d00538cc:	d005ad68 	.word	0xd005ad68
d00538d0:	d005ad6c 	.word	0xd005ad6c
d00538d4:	d005ad70 	.word	0xd005ad70
d00538d8:	33d6bf95 	.word	0x33d6bf95
d00538dc:	477fff00 	.word	0x477fff00
d00538e0:	00000000 	.word	0x00000000
d00538e4:	404ccccd 	.word	0x404ccccd
d00538e8:	eec9 0a89 	vdiv.f32	s1, s19, s18
d00538ec:	ed1f aa04 	vldr	s20, [pc, #-16]	; d00538e0 <fillTriangleDitherBayer2Mode+0x374>
d00538f0:	ed5f 9a04 	vldr	s19, [pc, #-16]	; d00538e4 <fillTriangleDitherBayer2Mode+0x378>
d00538f4:	fec7 7a8a 	vmaxnm.f32	s15, s15, s20
d00538f8:	eeb1 ba04 	vmov.f32	s22, #20	; 0x40a00000  5.0
d00538fc:	ee74 aac6 	vsub.f32	s21, s9, s12
d0053900:	ee76 fae3 	vsub.f32	s31, s13, s7
d0053904:	fec7 7acb 	vminnm.f32	s15, s15, s22
d0053908:	ee67 7aa9 	vmul.f32	s15, s15, s19
d005390c:	ee71 9ac3 	vsub.f32	s19, s3, s6
d0053910:	eef4 fac4 	vcmpe.f32	s31, s8
d0053914:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0053918:	ee35 bac7 	vsub.f32	s22, s11, s14
d005391c:	ee17 3a90 	vmov	r3, s15
d0053920:	edcd 7a00 	vstr	s15, [sp]
d0053924:	2b10      	cmp	r3, #16
d0053926:	ee6a 7aa0 	vmul.f32	s15, s21, s1
d005392a:	ee2b ba20 	vmul.f32	s22, s22, s1
d005392e:	bfa8      	it	ge
d0053930:	2310      	movge	r3, #16
d0053932:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053936:	eef0 ba67 	vmov.f32	s23, s15
d005393a:	ee69 7aa0 	vmul.f32	s15, s19, s1
d005393e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0053942:	9302      	str	r3, [sp, #8]
d0053944:	eef0 9a67 	vmov.f32	s19, s15
d0053948:	f73f aedd 	bgt.w	d0053706 <fillTriangleDitherBayer2Mode+0x19a>
d005394c:	eeb0 fa4a 	vmov.f32	s30, s20
d0053950:	ed8d aa07 	vstr	s20, [sp, #28]
d0053954:	ed8d aa08 	vstr	s20, [sp, #32]
d0053958:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d005395c:	4bd0      	ldr	r3, [pc, #832]	; (d0053ca0 <fillTriangleDitherBayer2Mode+0x734>)
d005395e:	4ad1      	ldr	r2, [pc, #836]	; (d0053ca4 <fillTriangleDitherBayer2Mode+0x738>)
d0053960:	6819      	ldr	r1, [r3, #0]
d0053962:	ee17 3a90 	vmov	r3, s15
d0053966:	edcd 7a04 	vstr	s15, [sp, #16]
d005396a:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d005396e:	6812      	ldr	r2, [r2, #0]
d0053970:	3b01      	subs	r3, #1
d0053972:	9105      	str	r1, [sp, #20]
d0053974:	9203      	str	r2, [sp, #12]
d0053976:	ee17 9a90 	vmov	r9, s15
d005397a:	428b      	cmp	r3, r1
d005397c:	bfa8      	it	ge
d005397e:	460b      	movge	r3, r1
d0053980:	4591      	cmp	r9, r2
d0053982:	bfb8      	it	lt
d0053984:	4691      	movlt	r9, r2
d0053986:	454b      	cmp	r3, r9
d0053988:	f6ff af72 	blt.w	d0053870 <fillTriangleDitherBayer2Mode+0x304>
d005398c:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0053990:	3301      	adds	r3, #1
d0053992:	eeb0 aa46 	vmov.f32	s20, s12
d0053996:	49c4      	ldr	r1, [pc, #784]	; (d0053ca8 <fillTriangleDitherBayer2Mode+0x73c>)
d0053998:	eba2 1202 	sub.w	r2, r2, r2, lsl #4
d005399c:	9301      	str	r3, [sp, #4]
d005399e:	ee37 4ac5 	vsub.f32	s8, s15, s10
d00539a2:	ee07 9a90 	vmov	s15, r9
d00539a6:	680b      	ldr	r3, [r1, #0]
d00539a8:	eef0 aa46 	vmov.f32	s21, s12
d00539ac:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00539b0:	eddf dabe 	vldr	s27, [pc, #760]	; d0053cac <fillTriangleDitherBayer2Mode+0x740>
d00539b4:	eeb0 da43 	vmov.f32	s26, s6
d00539b8:	930a      	str	r3, [sp, #40]	; 0x28
d00539ba:	eef0 ca47 	vmov.f32	s25, s14
d00539be:	0153      	lsls	r3, r2, #5
d00539c0:	ee77 7a84 	vadd.f32	s15, s15, s8
d00539c4:	eddf 2aba 	vldr	s5, [pc, #744]	; d0053cb0 <fillTriangleDitherBayer2Mode+0x744>
d00539c8:	eeb0 ea6b 	vmov.f32	s28, s23
d00539cc:	eddf 0ab9 	vldr	s1, [pc, #740]	; d0053cb4 <fillTriangleDitherBayer2Mode+0x748>
d00539d0:	eeb0 ca43 	vmov.f32	s24, s6
d00539d4:	930b      	str	r3, [sp, #44]	; 0x2c
d00539d6:	eea7 aaab 	vfma.f32	s20, s15, s23
d00539da:	edcd 6a0c 	vstr	s13, [sp, #48]	; 0x30
d00539de:	eef0 ba47 	vmov.f32	s23, s14
d00539e2:	ed8d 6a0d 	vstr	s12, [sp, #52]	; 0x34
d00539e6:	eee0 aa27 	vfma.f32	s21, s0, s15
d00539ea:	ed8d fa0e 	vstr	s30, [sp, #56]	; 0x38
d00539ee:	eea8 da27 	vfma.f32	s26, s16, s15
d00539f2:	edcd 1a0f 	vstr	s3, [sp, #60]	; 0x3c
d00539f6:	eee8 caa7 	vfma.f32	s25, s17, s15
d00539fa:	eea7 caa9 	vfma.f32	s24, s15, s19
d00539fe:	eee7 ba8b 	vfma.f32	s23, s15, s22
d0053a02:	eef0 ea69 	vmov.f32	s29, s19
d0053a06:	e034      	b.n	d0053a72 <fillTriangleDitherBayer2Mode+0x506>
d0053a08:	eef0 1a6c 	vmov.f32	s3, s25
d0053a0c:	eeb0 2a4d 	vmov.f32	s4, s26
d0053a10:	eef0 7a6a 	vmov.f32	s15, s21
d0053a14:	eeb0 6a6b 	vmov.f32	s12, s23
d0053a18:	eef0 6a4c 	vmov.f32	s13, s24
d0053a1c:	eeb0 4a4a 	vmov.f32	s8, s20
d0053a20:	feba 1a67 	vrintp.f32	s2, s15
d0053a24:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d0053a28:	feba 9a44 	vrintp.f32	s18, s8
d0053a2c:	f240 13df 	movw	r3, #479	; 0x1df
d0053a30:	ee11 4a10 	vmov	r4, s2
d0053a34:	eebd 1ac9 	vcvt.s32.f32	s2, s18
d0053a38:	3c01      	subs	r4, #1
d0053a3a:	ee11 1a10 	vmov	r1, s2
d0053a3e:	429c      	cmp	r4, r3
d0053a40:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d0053a44:	bfa8      	it	ge
d0053a46:	461c      	movge	r4, r3
d0053a48:	428c      	cmp	r4, r1
d0053a4a:	f280 816e 	bge.w	d0053d2a <fillTriangleDitherBayer2Mode+0x7be>
d0053a4e:	f109 0901 	add.w	r9, r9, #1
d0053a52:	9b01      	ldr	r3, [sp, #4]
d0053a54:	ee7a aa80 	vadd.f32	s21, s21, s0
d0053a58:	4599      	cmp	r9, r3
d0053a5a:	ee3d da08 	vadd.f32	s26, s26, s16
d0053a5e:	ee7c caa8 	vadd.f32	s25, s25, s17
d0053a62:	ee3a aa0e 	vadd.f32	s20, s20, s28
d0053a66:	ee3c ca2e 	vadd.f32	s24, s24, s29
d0053a6a:	ee7b ba8b 	vadd.f32	s23, s23, s22
d0053a6e:	f43f aef7 	beq.w	d0053860 <fillTriangleDitherBayer2Mode+0x2f4>
d0053a72:	eef4 aaca 	vcmpe.f32	s21, s20
d0053a76:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053a7a:	dcc5      	bgt.n	d0053a08 <fillTriangleDitherBayer2Mode+0x49c>
d0053a7c:	eef0 1a6b 	vmov.f32	s3, s23
d0053a80:	eeb0 2a4c 	vmov.f32	s4, s24
d0053a84:	eef0 7a4a 	vmov.f32	s15, s20
d0053a88:	eeb0 6a6c 	vmov.f32	s12, s25
d0053a8c:	eef0 6a4d 	vmov.f32	s13, s26
d0053a90:	eeb0 4a6a 	vmov.f32	s8, s21
d0053a94:	e7c4      	b.n	d0053a20 <fillTriangleDitherBayer2Mode+0x4b4>
d0053a96:	eef0 0a45 	vmov.f32	s1, s10
d0053a9a:	eeb0 5a66 	vmov.f32	s10, s13
d0053a9e:	eeb0 8a47 	vmov.f32	s16, s14
d0053aa2:	eef0 6a60 	vmov.f32	s13, s1
d0053aa6:	eeb0 0a43 	vmov.f32	s0, s6
d0053aaa:	eeb0 4a46 	vmov.f32	s8, s12
d0053aae:	eef4 3ae6 	vcmpe.f32	s7, s13
d0053ab2:	eeb0 7a62 	vmov.f32	s14, s5
d0053ab6:	eeb0 3a41 	vmov.f32	s6, s2
d0053aba:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053abe:	eeb0 6a42 	vmov.f32	s12, s4
d0053ac2:	eef0 2a48 	vmov.f32	s5, s16
d0053ac6:	eeb0 1a40 	vmov.f32	s2, s0
d0053aca:	eeb0 2a44 	vmov.f32	s4, s8
d0053ace:	f77f adc3 	ble.w	d0053658 <fillTriangleDitherBayer2Mode+0xec>
d0053ad2:	eeb0 8a65 	vmov.f32	s16, s11
d0053ad6:	eeb0 0a61 	vmov.f32	s0, s3
d0053ada:	eef0 0a63 	vmov.f32	s1, s7
d0053ade:	eeb0 4a64 	vmov.f32	s8, s9
d0053ae2:	eef0 5a62 	vmov.f32	s11, s5
d0053ae6:	eef0 1a41 	vmov.f32	s3, s2
d0053aea:	eef0 3a66 	vmov.f32	s7, s13
d0053aee:	eef0 4a42 	vmov.f32	s9, s4
d0053af2:	eef0 2a48 	vmov.f32	s5, s16
d0053af6:	eeb0 1a40 	vmov.f32	s2, s0
d0053afa:	eef0 6a60 	vmov.f32	s13, s1
d0053afe:	eeb0 2a44 	vmov.f32	s4, s8
d0053b02:	e5a9      	b.n	d0053658 <fillTriangleDitherBayer2Mode+0xec>
d0053b04:	eeb0 8a47 	vmov.f32	s16, s14
d0053b08:	eeb0 0a43 	vmov.f32	s0, s6
d0053b0c:	eef0 0a45 	vmov.f32	s1, s10
d0053b10:	eeb0 4a46 	vmov.f32	s8, s12
d0053b14:	eeb0 7a65 	vmov.f32	s14, s11
d0053b18:	eeb0 3a61 	vmov.f32	s6, s3
d0053b1c:	eeb0 5a63 	vmov.f32	s10, s7
d0053b20:	eeb0 6a64 	vmov.f32	s12, s9
d0053b24:	eef0 5a48 	vmov.f32	s11, s16
d0053b28:	eef0 1a40 	vmov.f32	s3, s0
d0053b2c:	eef0 3a60 	vmov.f32	s7, s1
d0053b30:	eef0 4a44 	vmov.f32	s9, s8
d0053b34:	e58a      	b.n	d005364c <fillTriangleDitherBayer2Mode+0xe0>
d0053b36:	ee76 6ae2 	vsub.f32	s13, s13, s5
d0053b3a:	eef4 6ac9 	vcmpe.f32	s13, s18
d0053b3e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053b42:	f340 8216 	ble.w	d0053f72 <fillTriangleDitherBayer2Mode+0xa06>
d0053b46:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0053b4a:	ee79 9ac5 	vsub.f32	s19, s19, s10
d0053b4e:	ee32 2a63 	vsub.f32	s4, s4, s7
d0053b52:	ee87 aaa6 	vdiv.f32	s20, s15, s13
d0053b56:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0053b5a:	ee77 2ae2 	vsub.f32	s5, s15, s5
d0053b5e:	ee07 1a90 	vmov	s15, r1
d0053b62:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053b66:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0053b6a:	ee69 9a8a 	vmul.f32	s19, s19, s20
d0053b6e:	ee22 aa0a 	vmul.f32	s20, s4, s20
d0053b72:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0053b76:	eee7 3a8a 	vfma.f32	s7, s15, s20
d0053b7a:	ebc9 1c09 	rsb	ip, r9, r9, lsl #4
d0053b7e:	4b4e      	ldr	r3, [pc, #312]	; (d0053cb8 <fillTriangleDitherBayer2Mode+0x74c>)
d0053b80:	eb01 0781 	add.w	r7, r1, r1, lsl #2
d0053b84:	9806      	ldr	r0, [sp, #24]
d0053b86:	f009 0203 	and.w	r2, r9, #3
d0053b8a:	681d      	ldr	r5, [r3, #0]
d0053b8c:	eb00 1c4c 	add.w	ip, r0, ip, lsl #5
d0053b90:	484a      	ldr	r0, [pc, #296]	; (d0053cbc <fillTriangleDitherBayer2Mode+0x750>)
d0053b92:	eb09 1387 	add.w	r3, r9, r7, lsl #6
d0053b96:	f8cd 900c 	str.w	r9, [sp, #12]
d0053b9a:	448c      	add	ip, r1
d0053b9c:	eeb6 2a00 	vmov.f32	s4, #96	; 0x3f000000  0.5
d0053ba0:	18ef      	adds	r7, r5, r3
d0053ba2:	eb00 0382 	add.w	r3, r0, r2, lsl #2
d0053ba6:	9a05      	ldr	r2, [sp, #20]
d0053ba8:	4699      	mov	r9, r3
d0053baa:	eb02 0c4c 	add.w	ip, r2, ip, lsl #1
d0053bae:	e010      	b.n	d0053bd2 <fillTriangleDitherBayer2Mode+0x666>
d0053bb0:	ee07 3a90 	vmov	s15, r3
d0053bb4:	4419      	add	r1, r3
d0053bb6:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0053bba:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053bbe:	428c      	cmp	r4, r1
d0053bc0:	eb0c 0c43 	add.w	ip, ip, r3, lsl #1
d0053bc4:	eb07 1782 	add.w	r7, r7, r2, lsl #6
d0053bc8:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0053bcc:	eee7 3a8a 	vfma.f32	s7, s15, s20
d0053bd0:	db62      	blt.n	d0053c98 <fillTriangleDitherBayer2Mode+0x72c>
d0053bd2:	eba4 0e01 	sub.w	lr, r4, r1
d0053bd6:	eeb4 5ae0 	vcmpe.f32	s10, s1
d0053bda:	f10e 0301 	add.w	r3, lr, #1
d0053bde:	2b30      	cmp	r3, #48	; 0x30
d0053be0:	bfa8      	it	ge
d0053be2:	2330      	movge	r3, #48	; 0x30
d0053be4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053be8:	d9e2      	bls.n	d0053bb0 <fillTriangleDitherBayer2Mode+0x644>
d0053bea:	f1be 0f00 	cmp.w	lr, #0
d0053bee:	eec3 7a85 	vdiv.f32	s15, s7, s10
d0053bf2:	dd67      	ble.n	d0053cc4 <fillTriangleDitherBayer2Mode+0x758>
d0053bf4:	1e5a      	subs	r2, r3, #1
d0053bf6:	ee06 2a90 	vmov	s13, r2
d0053bfa:	eef0 2a45 	vmov.f32	s5, s10
d0053bfe:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0053c02:	eee6 2aa9 	vfma.f32	s5, s13, s19
d0053c06:	eef4 2ae0 	vcmpe.f32	s5, s1
d0053c0a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053c0e:	dd5a      	ble.n	d0053cc6 <fillTriangleDitherBayer2Mode+0x75a>
d0053c10:	eeb0 ca63 	vmov.f32	s24, s7
d0053c14:	9a00      	ldr	r2, [sp, #0]
d0053c16:	2a0f      	cmp	r2, #15
d0053c18:	eea6 ca8a 	vfma.f32	s24, s13, s20
d0053c1c:	eecc ba22 	vdiv.f32	s23, s24, s5
d0053c20:	ee7b bae7 	vsub.f32	s23, s23, s15
d0053c24:	eecb 2aa6 	vdiv.f32	s5, s23, s13
d0053c28:	dd52      	ble.n	d0053cd0 <fillTriangleDitherBayer2Mode+0x764>
d0053c2a:	f1ac 0602 	sub.w	r6, ip, #2
d0053c2e:	2200      	movs	r2, #0
d0053c30:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d0053c34:	fec6 6ac1 	vminnm.f32	s13, s13, s2
d0053c38:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d0053c3c:	f836 8f02 	ldrh.w	r8, [r6, #2]!
d0053c40:	3201      	adds	r2, #1
d0053c42:	ee76 6a82 	vadd.f32	s13, s13, s4
d0053c46:	0185      	lsls	r5, r0, #6
d0053c48:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0053c4c:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d0053c50:	ee16 0a90 	vmov	r0, s13
d0053c54:	b280      	uxth	r0, r0
d0053c56:	4580      	cmp	r8, r0
d0053c58:	d903      	bls.n	d0053c62 <fillTriangleDitherBayer2Mode+0x6f6>
d0053c5a:	8030      	strh	r0, [r6, #0]
d0053c5c:	f04f 0010 	mov.w	r0, #16
d0053c60:	5578      	strb	r0, [r7, r5]
d0053c62:	4293      	cmp	r3, r2
d0053c64:	dce4      	bgt.n	d0053c30 <fillTriangleDitherBayer2Mode+0x6c4>
d0053c66:	f1be 0f00 	cmp.w	lr, #0
d0053c6a:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0053c6e:	ea4f 0043 	mov.w	r0, r3, lsl #1
d0053c72:	ea4f 1282 	mov.w	r2, r2, lsl #6
d0053c76:	bfbc      	itt	lt
d0053c78:	2002      	movlt	r0, #2
d0053c7a:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d0053c7e:	4484      	add	ip, r0
d0053c80:	4417      	add	r7, r2
d0053c82:	ee07 3a90 	vmov	s15, r3
d0053c86:	4419      	add	r1, r3
d0053c88:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053c8c:	428c      	cmp	r4, r1
d0053c8e:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0053c92:	eee7 3a8a 	vfma.f32	s7, s15, s20
d0053c96:	da9c      	bge.n	d0053bd2 <fillTriangleDitherBayer2Mode+0x666>
d0053c98:	f8dd 900c 	ldr.w	r9, [sp, #12]
d0053c9c:	e5bd      	b.n	d005381a <fillTriangleDitherBayer2Mode+0x2ae>
d0053c9e:	bf00      	nop
d0053ca0:	d005ad6c 	.word	0xd005ad6c
d0053ca4:	d005ad68 	.word	0xd005ad68
d0053ca8:	d005ad70 	.word	0xd005ad70
d0053cac:	33d6bf95 	.word	0x33d6bf95
d0053cb0:	00000000 	.word	0x00000000
d0053cb4:	477fff00 	.word	0x477fff00
d0053cb8:	d00f5084 	.word	0xd00f5084
d0053cbc:	d005a324 	.word	0xd005a324
d0053cc0:	38d1b717 	.word	0x38d1b717
d0053cc4:	d1dd      	bne.n	d0053c82 <fillTriangleDitherBayer2Mode+0x716>
d0053cc6:	9a00      	ldr	r2, [sp, #0]
d0053cc8:	eef0 2a44 	vmov.f32	s5, s8
d0053ccc:	2a0f      	cmp	r2, #15
d0053cce:	dcac      	bgt.n	d0053c2a <fillTriangleDitherBayer2Mode+0x6be>
d0053cd0:	2a00      	cmp	r2, #0
d0053cd2:	f340 8130 	ble.w	d0053f36 <fillTriangleDitherBayer2Mode+0x9ca>
d0053cd6:	9404      	str	r4, [sp, #16]
d0053cd8:	f1ac 0802 	sub.w	r8, ip, #2
d0053cdc:	2200      	movs	r2, #0
d0053cde:	9c02      	ldr	r4, [sp, #8]
d0053ce0:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d0053ce4:	fec6 6ac1 	vminnm.f32	s13, s13, s2
d0053ce8:	ee76 6a82 	vadd.f32	s13, s13, s4
d0053cec:	f838 af02 	ldrh.w	sl, [r8, #2]!
d0053cf0:	188e      	adds	r6, r1, r2
d0053cf2:	eb02 0582 	add.w	r5, r2, r2, lsl #2
d0053cf6:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0053cfa:	3201      	adds	r2, #1
d0053cfc:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d0053d00:	f006 0603 	and.w	r6, r6, #3
d0053d04:	01ad      	lsls	r5, r5, #6
d0053d06:	ee16 0a90 	vmov	r0, s13
d0053d0a:	b280      	uxth	r0, r0
d0053d0c:	4582      	cmp	sl, r0
d0053d0e:	d908      	bls.n	d0053d22 <fillTriangleDitherBayer2Mode+0x7b6>
d0053d10:	f8a8 0000 	strh.w	r0, [r8]
d0053d14:	f819 0006 	ldrb.w	r0, [r9, r6]
d0053d18:	42a0      	cmp	r0, r4
d0053d1a:	bfac      	ite	ge
d0053d1c:	4658      	movge	r0, fp
d0053d1e:	2010      	movlt	r0, #16
d0053d20:	5578      	strb	r0, [r7, r5]
d0053d22:	4293      	cmp	r3, r2
d0053d24:	dcdc      	bgt.n	d0053ce0 <fillTriangleDitherBayer2Mode+0x774>
d0053d26:	9c04      	ldr	r4, [sp, #16]
d0053d28:	e79d      	b.n	d0053c66 <fillTriangleDitherBayer2Mode+0x6fa>
d0053d2a:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0053d2e:	ed1f 1a1c 	vldr	s2, [pc, #-112]	; d0053cc0 <fillTriangleDitherBayer2Mode+0x754>
d0053d32:	eef4 7ac1 	vcmpe.f32	s15, s2
d0053d36:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053d3a:	f340 811f 	ble.w	d0053f7c <fillTriangleDitherBayer2Mode+0xa10>
d0053d3e:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d0053d42:	ee32 2a66 	vsub.f32	s4, s4, s13
d0053d46:	ee71 1ac6 	vsub.f32	s3, s3, s12
d0053d4a:	ee89 1a27 	vdiv.f32	s2, s18, s15
d0053d4e:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0053d52:	ee37 4ac4 	vsub.f32	s8, s15, s8
d0053d56:	ee07 1a90 	vmov	s15, r1
d0053d5a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053d5e:	ee77 7a84 	vadd.f32	s15, s15, s8
d0053d62:	ee22 2a01 	vmul.f32	s4, s4, s2
d0053d66:	ee61 1a81 	vmul.f32	s3, s3, s2
d0053d6a:	eee7 6a82 	vfma.f32	s13, s15, s4
d0053d6e:	eea7 6aa1 	vfma.f32	s12, s15, s3
d0053d72:	ebc9 1c09 	rsb	ip, r9, r9, lsl #4
d0053d76:	4b84      	ldr	r3, [pc, #528]	; (d0053f88 <fillTriangleDitherBayer2Mode+0xa1c>)
d0053d78:	eb01 0781 	add.w	r7, r1, r1, lsl #2
d0053d7c:	980b      	ldr	r0, [sp, #44]	; 0x2c
d0053d7e:	f009 0203 	and.w	r2, r9, #3
d0053d82:	681d      	ldr	r5, [r3, #0]
d0053d84:	eb00 1c4c 	add.w	ip, r0, ip, lsl #5
d0053d88:	4880      	ldr	r0, [pc, #512]	; (d0053f8c <fillTriangleDitherBayer2Mode+0xa20>)
d0053d8a:	eb09 1387 	add.w	r3, r9, r7, lsl #6
d0053d8e:	f8cd 9018 	str.w	r9, [sp, #24]
d0053d92:	448c      	add	ip, r1
d0053d94:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d0053d98:	18ef      	adds	r7, r5, r3
d0053d9a:	eb00 0382 	add.w	r3, r0, r2, lsl #2
d0053d9e:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d0053da0:	4699      	mov	r9, r3
d0053da2:	eb02 0c4c 	add.w	ip, r2, ip, lsl #1
d0053da6:	e010      	b.n	d0053dca <fillTriangleDitherBayer2Mode+0x85e>
d0053da8:	ee07 2a90 	vmov	s15, r2
d0053dac:	4411      	add	r1, r2
d0053dae:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0053db2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053db6:	428c      	cmp	r4, r1
d0053db8:	eb0c 0c42 	add.w	ip, ip, r2, lsl #1
d0053dbc:	eb07 1783 	add.w	r7, r7, r3, lsl #6
d0053dc0:	eee7 6a82 	vfma.f32	s13, s15, s4
d0053dc4:	eea7 6aa1 	vfma.f32	s12, s15, s3
d0053dc8:	db62      	blt.n	d0053e90 <fillTriangleDitherBayer2Mode+0x924>
d0053dca:	eba4 0e01 	sub.w	lr, r4, r1
d0053dce:	eef4 6aed 	vcmpe.f32	s13, s27
d0053dd2:	f10e 0201 	add.w	r2, lr, #1
d0053dd6:	2a30      	cmp	r2, #48	; 0x30
d0053dd8:	bfa8      	it	ge
d0053dda:	2230      	movge	r2, #48	; 0x30
d0053ddc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053de0:	d9e2      	bls.n	d0053da8 <fillTriangleDitherBayer2Mode+0x83c>
d0053de2:	f1be 0f00 	cmp.w	lr, #0
d0053de6:	eec6 7a26 	vdiv.f32	s15, s12, s13
d0053dea:	dd54      	ble.n	d0053e96 <fillTriangleDitherBayer2Mode+0x92a>
d0053dec:	1e53      	subs	r3, r2, #1
d0053dee:	ee01 3a10 	vmov	s2, r3
d0053df2:	eeb0 9a66 	vmov.f32	s18, s13
d0053df6:	eeb8 1ac1 	vcvt.f32.s32	s2, s2
d0053dfa:	eea1 9a02 	vfma.f32	s18, s2, s4
d0053dfe:	eeb4 9aed 	vcmpe.f32	s18, s27
d0053e02:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053e06:	dd47      	ble.n	d0053e98 <fillTriangleDitherBayer2Mode+0x92c>
d0053e08:	eeb0 fa46 	vmov.f32	s30, s12
d0053e0c:	9b00      	ldr	r3, [sp, #0]
d0053e0e:	2b0f      	cmp	r3, #15
d0053e10:	eea1 fa21 	vfma.f32	s30, s2, s3
d0053e14:	eecf 9a09 	vdiv.f32	s19, s30, s18
d0053e18:	ee79 9ae7 	vsub.f32	s19, s19, s15
d0053e1c:	ee89 9a81 	vdiv.f32	s18, s19, s2
d0053e20:	dd3f      	ble.n	d0053ea2 <fillTriangleDitherBayer2Mode+0x936>
d0053e22:	f1ac 0602 	sub.w	r6, ip, #2
d0053e26:	2000      	movs	r0, #0
d0053e28:	fe87 1aa2 	vmaxnm.f32	s2, s15, s5
d0053e2c:	fe81 1a60 	vminnm.f32	s2, s2, s1
d0053e30:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0053e34:	f836 8f02 	ldrh.w	r8, [r6, #2]!
d0053e38:	3001      	adds	r0, #1
d0053e3a:	ee31 1a04 	vadd.f32	s2, s2, s8
d0053e3e:	019d      	lsls	r5, r3, #6
d0053e40:	ee77 7a89 	vadd.f32	s15, s15, s18
d0053e44:	eebc 1ac1 	vcvt.u32.f32	s2, s2
d0053e48:	ee11 3a10 	vmov	r3, s2
d0053e4c:	b29b      	uxth	r3, r3
d0053e4e:	4598      	cmp	r8, r3
d0053e50:	d903      	bls.n	d0053e5a <fillTriangleDitherBayer2Mode+0x8ee>
d0053e52:	8033      	strh	r3, [r6, #0]
d0053e54:	f04f 0310 	mov.w	r3, #16
d0053e58:	557b      	strb	r3, [r7, r5]
d0053e5a:	4282      	cmp	r2, r0
d0053e5c:	dce4      	bgt.n	d0053e28 <fillTriangleDitherBayer2Mode+0x8bc>
d0053e5e:	f1be 0f00 	cmp.w	lr, #0
d0053e62:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0053e66:	ea4f 0042 	mov.w	r0, r2, lsl #1
d0053e6a:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0053e6e:	bfbc      	itt	lt
d0053e70:	2002      	movlt	r0, #2
d0053e72:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0053e76:	4484      	add	ip, r0
d0053e78:	441f      	add	r7, r3
d0053e7a:	ee07 2a90 	vmov	s15, r2
d0053e7e:	4411      	add	r1, r2
d0053e80:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053e84:	428c      	cmp	r4, r1
d0053e86:	eee7 6a82 	vfma.f32	s13, s15, s4
d0053e8a:	eea7 6aa1 	vfma.f32	s12, s15, s3
d0053e8e:	da9c      	bge.n	d0053dca <fillTriangleDitherBayer2Mode+0x85e>
d0053e90:	f8dd 9018 	ldr.w	r9, [sp, #24]
d0053e94:	e5db      	b.n	d0053a4e <fillTriangleDitherBayer2Mode+0x4e2>
d0053e96:	d1f0      	bne.n	d0053e7a <fillTriangleDitherBayer2Mode+0x90e>
d0053e98:	9b00      	ldr	r3, [sp, #0]
d0053e9a:	eeb0 9a62 	vmov.f32	s18, s5
d0053e9e:	2b0f      	cmp	r3, #15
d0053ea0:	dcbf      	bgt.n	d0053e22 <fillTriangleDitherBayer2Mode+0x8b6>
d0053ea2:	2b00      	cmp	r3, #0
d0053ea4:	dd29      	ble.n	d0053efa <fillTriangleDitherBayer2Mode+0x98e>
d0053ea6:	9409      	str	r4, [sp, #36]	; 0x24
d0053ea8:	f1ac 0802 	sub.w	r8, ip, #2
d0053eac:	2000      	movs	r0, #0
d0053eae:	9c02      	ldr	r4, [sp, #8]
d0053eb0:	fe87 1aa2 	vmaxnm.f32	s2, s15, s5
d0053eb4:	fe81 1a60 	vminnm.f32	s2, s2, s1
d0053eb8:	ee31 1a04 	vadd.f32	s2, s2, s8
d0053ebc:	f838 af02 	ldrh.w	sl, [r8, #2]!
d0053ec0:	180e      	adds	r6, r1, r0
d0053ec2:	eb00 0580 	add.w	r5, r0, r0, lsl #2
d0053ec6:	ee77 7a89 	vadd.f32	s15, s15, s18
d0053eca:	3001      	adds	r0, #1
d0053ecc:	eebc 1ac1 	vcvt.u32.f32	s2, s2
d0053ed0:	f006 0603 	and.w	r6, r6, #3
d0053ed4:	01ad      	lsls	r5, r5, #6
d0053ed6:	ee11 3a10 	vmov	r3, s2
d0053eda:	b29b      	uxth	r3, r3
d0053edc:	459a      	cmp	sl, r3
d0053ede:	d908      	bls.n	d0053ef2 <fillTriangleDitherBayer2Mode+0x986>
d0053ee0:	f8a8 3000 	strh.w	r3, [r8]
d0053ee4:	f819 3006 	ldrb.w	r3, [r9, r6]
d0053ee8:	42a3      	cmp	r3, r4
d0053eea:	bfac      	ite	ge
d0053eec:	465b      	movge	r3, fp
d0053eee:	2310      	movlt	r3, #16
d0053ef0:	557b      	strb	r3, [r7, r5]
d0053ef2:	4282      	cmp	r2, r0
d0053ef4:	dcdc      	bgt.n	d0053eb0 <fillTriangleDitherBayer2Mode+0x944>
d0053ef6:	9c09      	ldr	r4, [sp, #36]	; 0x24
d0053ef8:	e7b1      	b.n	d0053e5e <fillTriangleDitherBayer2Mode+0x8f2>
d0053efa:	f1ac 0602 	sub.w	r6, ip, #2
d0053efe:	2000      	movs	r0, #0
d0053f00:	fe87 1aa2 	vmaxnm.f32	s2, s15, s5
d0053f04:	fe81 1a60 	vminnm.f32	s2, s2, s1
d0053f08:	ee31 1a04 	vadd.f32	s2, s2, s8
d0053f0c:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0053f10:	f836 8f02 	ldrh.w	r8, [r6, #2]!
d0053f14:	ee77 7a89 	vadd.f32	s15, s15, s18
d0053f18:	019d      	lsls	r5, r3, #6
d0053f1a:	3001      	adds	r0, #1
d0053f1c:	eebc 1ac1 	vcvt.u32.f32	s2, s2
d0053f20:	ee11 3a10 	vmov	r3, s2
d0053f24:	b29b      	uxth	r3, r3
d0053f26:	4598      	cmp	r8, r3
d0053f28:	d902      	bls.n	d0053f30 <fillTriangleDitherBayer2Mode+0x9c4>
d0053f2a:	8033      	strh	r3, [r6, #0]
d0053f2c:	f807 b005 	strb.w	fp, [r7, r5]
d0053f30:	4282      	cmp	r2, r0
d0053f32:	dce5      	bgt.n	d0053f00 <fillTriangleDitherBayer2Mode+0x994>
d0053f34:	e793      	b.n	d0053e5e <fillTriangleDitherBayer2Mode+0x8f2>
d0053f36:	f1ac 0602 	sub.w	r6, ip, #2
d0053f3a:	2200      	movs	r2, #0
d0053f3c:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d0053f40:	fec6 6ac1 	vminnm.f32	s13, s13, s2
d0053f44:	ee76 6a82 	vadd.f32	s13, s13, s4
d0053f48:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d0053f4c:	f836 8f02 	ldrh.w	r8, [r6, #2]!
d0053f50:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0053f54:	0185      	lsls	r5, r0, #6
d0053f56:	3201      	adds	r2, #1
d0053f58:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d0053f5c:	ee16 0a90 	vmov	r0, s13
d0053f60:	b280      	uxth	r0, r0
d0053f62:	4580      	cmp	r8, r0
d0053f64:	d902      	bls.n	d0053f6c <fillTriangleDitherBayer2Mode+0xa00>
d0053f66:	8030      	strh	r0, [r6, #0]
d0053f68:	f807 b005 	strb.w	fp, [r7, r5]
d0053f6c:	4293      	cmp	r3, r2
d0053f6e:	dce5      	bgt.n	d0053f3c <fillTriangleDitherBayer2Mode+0x9d0>
d0053f70:	e679      	b.n	d0053c66 <fillTriangleDitherBayer2Mode+0x6fa>
d0053f72:	eeb0 aa44 	vmov.f32	s20, s8
d0053f76:	eef0 9a44 	vmov.f32	s19, s8
d0053f7a:	e5fe      	b.n	d0053b7a <fillTriangleDitherBayer2Mode+0x60e>
d0053f7c:	eef0 1a62 	vmov.f32	s3, s5
d0053f80:	eeb0 2a62 	vmov.f32	s4, s5
d0053f84:	e6f5      	b.n	d0053d72 <fillTriangleDitherBayer2Mode+0x806>
d0053f86:	bf00      	nop
d0053f88:	d00f5084 	.word	0xd00f5084
d0053f8c:	d005a324 	.word	0xd005a324

d0053f90 <vec3Add>:
d0053f90:	ee30 0a21 	vadd.f32	s0, s0, s3
d0053f94:	b08e      	sub	sp, #56	; 0x38
d0053f96:	ee70 0a82 	vadd.f32	s1, s1, s4
d0053f9a:	ee31 1a22 	vadd.f32	s2, s2, s5
d0053f9e:	b00e      	add	sp, #56	; 0x38
d0053fa0:	4770      	bx	lr
d0053fa2:	bf00      	nop

d0053fa4 <vec3Scale>:
d0053fa4:	ee20 0a21 	vmul.f32	s0, s0, s3
d0053fa8:	b08c      	sub	sp, #48	; 0x30
d0053faa:	ee61 0aa0 	vmul.f32	s1, s3, s1
d0053fae:	ee21 1a81 	vmul.f32	s2, s3, s2
d0053fb2:	b00c      	add	sp, #48	; 0x30
d0053fb4:	4770      	bx	lr
d0053fb6:	bf00      	nop

d0053fb8 <vec3Dot>:
d0053fb8:	ee20 2a82 	vmul.f32	s4, s1, s4
d0053fbc:	b086      	sub	sp, #24
d0053fbe:	eea0 2a21 	vfma.f32	s4, s0, s3
d0053fc2:	eea1 2a22 	vfma.f32	s4, s2, s5
d0053fc6:	eeb0 0a42 	vmov.f32	s0, s4
d0053fca:	b006      	add	sp, #24
d0053fcc:	4770      	bx	lr
d0053fce:	bf00      	nop

d0053fd0 <vec3Cross>:
d0053fd0:	eeb0 7a60 	vmov.f32	s14, s1
d0053fd4:	b08e      	sub	sp, #56	; 0x38
d0053fd6:	eef0 7a40 	vmov.f32	s15, s0
d0053fda:	ee62 0ac0 	vnmul.f32	s1, s5, s0
d0053fde:	ee61 6ac7 	vnmul.f32	s13, s3, s14
d0053fe2:	ee22 0a41 	vnmul.f32	s0, s4, s2
d0053fe6:	eee1 0a21 	vfma.f32	s1, s2, s3
d0053fea:	eee7 6a82 	vfma.f32	s13, s15, s4
d0053fee:	eea7 0a22 	vfma.f32	s0, s14, s5
d0053ff2:	eeb0 1a66 	vmov.f32	s2, s13
d0053ff6:	b00e      	add	sp, #56	; 0x38
d0053ff8:	4770      	bx	lr
d0053ffa:	bf00      	nop

d0053ffc <vec3Normalize>:
d0053ffc:	ee60 7aa0 	vmul.f32	s15, s1, s1
d0054000:	ed9f 7a22 	vldr	s14, [pc, #136]	; d005408c <vec3Normalize+0x90>
d0054004:	b08c      	sub	sp, #48	; 0x30
d0054006:	eee0 7a00 	vfma.f32	s15, s0, s0
d005400a:	eee1 7a01 	vfma.f32	s15, s2, s2
d005400e:	eef4 7ac7 	vcmpe.f32	s15, s14
d0054012:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054016:	d934      	bls.n	d0054082 <vec3Normalize+0x86>
d0054018:	ed9f 7a1d 	vldr	s14, [pc, #116]	; d0054090 <vec3Normalize+0x94>
d005401c:	eef4 7a47 	vcmp.f32	s15, s14
d0054020:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054024:	dd06      	ble.n	d0054034 <vec3Normalize+0x38>
d0054026:	ed9f 7a1b 	vldr	s14, [pc, #108]	; d0054094 <vec3Normalize+0x98>
d005402a:	eef4 7a47 	vcmp.f32	s15, s14
d005402e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054032:	d418      	bmi.n	d0054066 <vec3Normalize+0x6a>
d0054034:	ee17 2a90 	vmov	r2, s15
d0054038:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d005403c:	4b16      	ldr	r3, [pc, #88]	; (d0054098 <vec3Normalize+0x9c>)
d005403e:	eeb7 7a08 	vmov.f32	s14, #120	; 0x3fc00000  1.5
d0054042:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d0054046:	ee67 7a86 	vmul.f32	s15, s15, s12
d005404a:	ee06 3a90 	vmov	s13, r3
d005404e:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0054052:	eea6 7ae7 	vfms.f32	s14, s13, s15
d0054056:	ee67 7a26 	vmul.f32	s15, s14, s13
d005405a:	ee27 0a80 	vmul.f32	s0, s15, s0
d005405e:	ee67 0aa0 	vmul.f32	s1, s15, s1
d0054062:	ee27 1a81 	vmul.f32	s2, s15, s2
d0054066:	ed8d 0a09 	vstr	s0, [sp, #36]	; 0x24
d005406a:	edcd 0a0a 	vstr	s1, [sp, #40]	; 0x28
d005406e:	ed8d 1a0b 	vstr	s2, [sp, #44]	; 0x2c
d0054072:	ed9d 0a09 	vldr	s0, [sp, #36]	; 0x24
d0054076:	eddd 0a0a 	vldr	s1, [sp, #40]	; 0x28
d005407a:	ed9d 1a0b 	vldr	s2, [sp, #44]	; 0x2c
d005407e:	b00c      	add	sp, #48	; 0x30
d0054080:	4770      	bx	lr
d0054082:	2300      	movs	r3, #0
d0054084:	9309      	str	r3, [sp, #36]	; 0x24
d0054086:	930a      	str	r3, [sp, #40]	; 0x28
d0054088:	930b      	str	r3, [sp, #44]	; 0x2c
d005408a:	e7f2      	b.n	d0054072 <vec3Normalize+0x76>
d005408c:	358637bd 	.word	0x358637bd
d0054090:	3f7fbe77 	.word	0x3f7fbe77
d0054094:	3f8020c5 	.word	0x3f8020c5
d0054098:	5f3759df 	.word	0x5f3759df

d005409c <rotateAroundAxis>:
d005409c:	ee62 7a02 	vmul.f32	s15, s4, s4
d00540a0:	ed9f 7a51 	vldr	s14, [pc, #324]	; d00541e8 <rotateAroundAxis+0x14c>
d00540a4:	b500      	push	{lr}
d00540a6:	eee1 7aa1 	vfma.f32	s15, s3, s3
d00540aa:	ed2d 8b0c 	vpush	{d8-d13}
d00540ae:	eef0 ca40 	vmov.f32	s25, s0
d00540b2:	b08f      	sub	sp, #60	; 0x3c
d00540b4:	eeb0 ca60 	vmov.f32	s24, s1
d00540b8:	eef0 ba41 	vmov.f32	s23, s2
d00540bc:	eee2 7aa2 	vfma.f32	s15, s5, s5
d00540c0:	eeb0 da43 	vmov.f32	s26, s6
d00540c4:	eef4 7ac7 	vcmpe.f32	s15, s14
d00540c8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00540cc:	d97c      	bls.n	d00541c8 <rotateAroundAxis+0x12c>
d00540ce:	ed9f 7a47 	vldr	s14, [pc, #284]	; d00541ec <rotateAroundAxis+0x150>
d00540d2:	eef4 7a47 	vcmp.f32	s15, s14
d00540d6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00540da:	dd55      	ble.n	d0054188 <rotateAroundAxis+0xec>
d00540dc:	ed9f 7a44 	vldr	s14, [pc, #272]	; d00541f0 <rotateAroundAxis+0x154>
d00540e0:	eef4 7a47 	vcmp.f32	s15, s14
d00540e4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00540e8:	d54e      	bpl.n	d0054188 <rotateAroundAxis+0xec>
d00540ea:	eef0 da42 	vmov.f32	s27, s4
d00540ee:	eeb0 9a61 	vmov.f32	s18, s3
d00540f2:	eeb0 8a62 	vmov.f32	s16, s5
d00540f6:	ee60 8a82 	vmul.f32	s17, s1, s4
d00540fa:	ee62 5ae0 	vnmul.f32	s11, s5, s1
d00540fe:	ee21 6ac1 	vnmul.f32	s12, s3, s2
d0054102:	eeec 8a89 	vfma.f32	s17, s25, s18
d0054106:	ee6d 7aec 	vnmul.f32	s15, s27, s25
d005410a:	eeeb 5aad 	vfma.f32	s11, s23, s27
d005410e:	eeac 6a88 	vfma.f32	s12, s25, s16
d0054112:	eeec 7a09 	vfma.f32	s15, s24, s18
d0054116:	eeeb 8a88 	vfma.f32	s17, s23, s16
d005411a:	eeb0 ba65 	vmov.f32	s22, s11
d005411e:	eeb0 aa46 	vmov.f32	s20, s12
d0054122:	eef0 aa67 	vmov.f32	s21, s15
d0054126:	eeb0 0a4d 	vmov.f32	s0, s26
d005412a:	f005 fb5d 	bl	d00597e8 <cosf>
d005412e:	eef0 9a40 	vmov.f32	s19, s0
d0054132:	eeb0 0a4d 	vmov.f32	s0, s26
d0054136:	f005 fd3b 	bl	d0059bb0 <sinf>
d005413a:	ee60 5a0b 	vmul.f32	s11, s0, s22
d005413e:	ee20 6a0a 	vmul.f32	s12, s0, s20
d0054142:	ee60 7a2a 	vmul.f32	s15, s0, s21
d0054146:	eee9 5aac 	vfma.f32	s11, s19, s25
d005414a:	eea9 6a8c 	vfma.f32	s12, s19, s24
d005414e:	eee9 7aab 	vfma.f32	s15, s19, s23
d0054152:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0054156:	ee29 9a28 	vmul.f32	s18, s18, s17
d005415a:	ee2d 7aa8 	vmul.f32	s14, s27, s17
d005415e:	ee76 9ae9 	vsub.f32	s19, s13, s19
d0054162:	ee28 8a28 	vmul.f32	s16, s16, s17
d0054166:	eeb0 0a65 	vmov.f32	s0, s11
d005416a:	eef0 0a46 	vmov.f32	s1, s12
d005416e:	eeb0 1a67 	vmov.f32	s2, s15
d0054172:	eea9 0a89 	vfma.f32	s0, s19, s18
d0054176:	eee9 0a87 	vfma.f32	s1, s19, s14
d005417a:	eea9 1a88 	vfma.f32	s2, s19, s16
d005417e:	b00f      	add	sp, #60	; 0x3c
d0054180:	ecbd 8b0c 	vpop	{d8-d13}
d0054184:	f85d fb04 	ldr.w	pc, [sp], #4
d0054188:	ee17 2a90 	vmov	r2, s15
d005418c:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0054190:	4b18      	ldr	r3, [pc, #96]	; (d00541f4 <rotateAroundAxis+0x158>)
d0054192:	eeb7 8a08 	vmov.f32	s16, #120	; 0x3fc00000  1.5
d0054196:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d005419a:	ee67 7aa6 	vmul.f32	s15, s15, s13
d005419e:	ee07 3a10 	vmov	s14, r3
d00541a2:	ee67 7a87 	vmul.f32	s15, s15, s14
d00541a6:	eea7 8a67 	vfms.f32	s16, s14, s15
d00541aa:	ee27 8a08 	vmul.f32	s16, s14, s16
d00541ae:	ee62 da08 	vmul.f32	s27, s4, s16
d00541b2:	ee21 9a88 	vmul.f32	s18, s3, s16
d00541b6:	ee22 8a88 	vmul.f32	s16, s5, s16
d00541ba:	ee6c 8a2d 	vmul.f32	s17, s24, s27
d00541be:	ee29 6a6b 	vnmul.f32	s12, s18, s23
d00541c2:	ee68 5a4c 	vnmul.f32	s11, s16, s24
d00541c6:	e79c      	b.n	d0054102 <rotateAroundAxis+0x66>
d00541c8:	eddf 8a0b 	vldr	s17, [pc, #44]	; d00541f8 <rotateAroundAxis+0x15c>
d00541cc:	eef0 aa68 	vmov.f32	s21, s17
d00541d0:	eeb0 aa68 	vmov.f32	s20, s17
d00541d4:	eeb0 ba68 	vmov.f32	s22, s17
d00541d8:	eeb0 8a68 	vmov.f32	s16, s17
d00541dc:	eef0 da68 	vmov.f32	s27, s17
d00541e0:	eeb0 9a68 	vmov.f32	s18, s17
d00541e4:	e79f      	b.n	d0054126 <rotateAroundAxis+0x8a>
d00541e6:	bf00      	nop
d00541e8:	358637bd 	.word	0x358637bd
d00541ec:	3f7fbe77 	.word	0x3f7fbe77
d00541f0:	3f8020c5 	.word	0x3f8020c5
d00541f4:	5f3759df 	.word	0x5f3759df
d00541f8:	00000000 	.word	0x00000000

d00541fc <vec3>:
d00541fc:	b088      	sub	sp, #32
d00541fe:	b008      	add	sp, #32
d0054200:	4770      	bx	lr
d0054202:	bf00      	nop

d0054204 <degrees>:
d0054204:	eddf 7a02 	vldr	s15, [pc, #8]	; d0054210 <degrees+0xc>
d0054208:	ee20 0a27 	vmul.f32	s0, s0, s15
d005420c:	4770      	bx	lr
d005420e:	bf00      	nop
d0054210:	3c8efa35 	.word	0x3c8efa35

d0054214 <powfxt>:
d0054214:	eef5 0a40 	vcmp.f32	s1, #0.0
d0054218:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005421c:	d040      	beq.n	d00542a0 <powfxt+0x8c>
d005421e:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0054222:	eef0 7a40 	vmov.f32	s15, s0
d0054226:	eef4 0a47 	vcmp.f32	s1, s14
d005422a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005422e:	d034      	beq.n	d005429a <powfxt+0x86>
d0054230:	eeb4 0a47 	vcmp.f32	s0, s14
d0054234:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054238:	d02f      	beq.n	d005429a <powfxt+0x86>
d005423a:	eeb5 0a40 	vcmp.f32	s0, #0.0
d005423e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054242:	d030      	beq.n	d00542a6 <powfxt+0x92>
d0054244:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0054248:	eef4 0a66 	vcmp.f32	s1, s13
d005424c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054250:	d042      	beq.n	d00542d8 <powfxt+0xc4>
d0054252:	eefe 6a00 	vmov.f32	s13, #224	; 0xbf000000 -0.5
d0054256:	eef4 0a66 	vcmp.f32	s1, s13
d005425a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005425e:	d03e      	beq.n	d00542de <powfxt+0xca>
d0054260:	eefd 6ae0 	vcvt.s32.f32	s13, s1
d0054264:	eeb8 6ae6 	vcvt.f32.s32	s12, s13
d0054268:	eeb4 6a60 	vcmp.f32	s12, s1
d005426c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054270:	d022      	beq.n	d00542b8 <powfxt+0xa4>
d0054272:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0054276:	b500      	push	{lr}
d0054278:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005427c:	b083      	sub	sp, #12
d005427e:	edcd 0a01 	vstr	s1, [sp, #4]
d0054282:	d431      	bmi.n	d00542e8 <powfxt+0xd4>
d0054284:	f005 fc02 	bl	d0059a8c <logf>
d0054288:	eddd 0a01 	vldr	s1, [sp, #4]
d005428c:	ee20 0a20 	vmul.f32	s0, s0, s1
d0054290:	b003      	add	sp, #12
d0054292:	f85d eb04 	ldr.w	lr, [sp], #4
d0054296:	f005 bb83 	b.w	d00599a0 <expf>
d005429a:	eeb0 0a67 	vmov.f32	s0, s15
d005429e:	4770      	bx	lr
d00542a0:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d00542a4:	4770      	bx	lr
d00542a6:	eef5 0ac0 	vcmpe.f32	s1, #0.0
d00542aa:	ed9f 0a15 	vldr	s0, [pc, #84]	; d0054300 <powfxt+0xec>
d00542ae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00542b2:	fe37 0a80 	vselgt.f32	s0, s15, s0
d00542b6:	4770      	bx	lr
d00542b8:	ee16 3a90 	vmov	r3, s13
d00542bc:	2b00      	cmp	r3, #0
d00542be:	db18      	blt.n	d00542f2 <powfxt+0xde>
d00542c0:	d01b      	beq.n	d00542fa <powfxt+0xe6>
d00542c2:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d00542c6:	07da      	lsls	r2, r3, #31
d00542c8:	bf48      	it	mi
d00542ca:	ee20 0a27 	vmulmi.f32	s0, s0, s15
d00542ce:	085b      	lsrs	r3, r3, #1
d00542d0:	ee67 7aa7 	vmul.f32	s15, s15, s15
d00542d4:	d1f7      	bne.n	d00542c6 <powfxt+0xb2>
d00542d6:	4770      	bx	lr
d00542d8:	eeb1 0ae7 	vsqrt.f32	s0, s15
d00542dc:	4770      	bx	lr
d00542de:	eef1 6ac0 	vsqrt.f32	s13, s0
d00542e2:	ee87 0a26 	vdiv.f32	s0, s14, s13
d00542e6:	4770      	bx	lr
d00542e8:	ed9f 0a06 	vldr	s0, [pc, #24]	; d0054304 <powfxt+0xf0>
d00542ec:	b003      	add	sp, #12
d00542ee:	f85d fb04 	ldr.w	pc, [sp], #4
d00542f2:	eec7 7a00 	vdiv.f32	s15, s14, s0
d00542f6:	425b      	negs	r3, r3
d00542f8:	e7e3      	b.n	d00542c2 <powfxt+0xae>
d00542fa:	eeb0 0a47 	vmov.f32	s0, s14
d00542fe:	4770      	bx	lr
d0054300:	7f800000 	.word	0x7f800000
d0054304:	7fc00000 	.word	0x7fc00000

d0054308 <sb3dParticlesClear>:
d0054308:	4b0f      	ldr	r3, [pc, #60]	; (d0054348 <sb3dParticlesClear+0x40>)
d005430a:	f04f 507e 	mov.w	r0, #1065353216	; 0x3f800000
d005430e:	2100      	movs	r1, #0
d0054310:	2200      	movs	r2, #0
d0054312:	b430      	push	{r4, r5}
d0054314:	f503 5500 	add.w	r5, r3, #8192	; 0x2000
d0054318:	2421      	movs	r4, #33	; 0x21
d005431a:	7699      	strb	r1, [r3, #26]
d005431c:	3320      	adds	r3, #32
d005431e:	f843 2c20 	str.w	r2, [r3, #-32]
d0054322:	f843 2c1c 	str.w	r2, [r3, #-28]
d0054326:	f843 2c18 	str.w	r2, [r3, #-24]
d005432a:	f843 0c14 	str.w	r0, [r3, #-20]
d005432e:	f843 2c10 	str.w	r2, [r3, #-16]
d0054332:	f843 0c0c 	str.w	r0, [r3, #-12]
d0054336:	f803 4c08 	strb.w	r4, [r3, #-8]
d005433a:	f803 1c07 	strb.w	r1, [r3, #-7]
d005433e:	42ab      	cmp	r3, r5
d0054340:	d1eb      	bne.n	d005431a <sb3dParticlesClear+0x12>
d0054342:	bc30      	pop	{r4, r5}
d0054344:	4770      	bx	lr
d0054346:	bf00      	nop
d0054348:	d005ad80 	.word	0xd005ad80

d005434c <sb3dParticlesRender>:
d005434c:	2800      	cmp	r0, #0
d005434e:	f000 82d5 	beq.w	d00548fc <sb3dParticlesRender+0x5b0>
d0054352:	edd0 7a02 	vldr	s15, [r0, #8]
d0054356:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d005435a:	ed2d 8b10 	vpush	{d8-d15}
d005435e:	b0c7      	sub	sp, #284	; 0x11c
d0054360:	4605      	mov	r5, r0
d0054362:	ed90 ea00 	vldr	s28, [r0]
d0054366:	edcd 7a15 	vstr	s15, [sp, #84]	; 0x54
d005436a:	edd0 da01 	vldr	s27, [r0, #4]
d005436e:	edd0 ca06 	vldr	s25, [r0, #24]
d0054372:	ed90 ca07 	vldr	s24, [r0, #28]
d0054376:	edd0 ba08 	vldr	s23, [r0, #32]
d005437a:	ed90 9a09 	vldr	s18, [r0, #36]	; 0x24
d005437e:	edd0 8a0a 	vldr	s17, [r0, #40]	; 0x28
d0054382:	ed90 8a0b 	vldr	s16, [r0, #44]	; 0x2c
d0054386:	edd0 aa0c 	vldr	s21, [r0, #48]	; 0x30
d005438a:	ed90 aa0d 	vldr	s20, [r0, #52]	; 0x34
d005438e:	edd0 9a0e 	vldr	s19, [r0, #56]	; 0x38
d0054392:	ed90 ba10 	vldr	s22, [r0, #64]	; 0x40
d0054396:	f001 fdf9 	bl	d0055f8c <lightsGet>
d005439a:	4cae      	ldr	r4, [pc, #696]	; (d0054654 <sb3dParticlesRender+0x308>)
d005439c:	4682      	mov	sl, r0
d005439e:	f001 fdf9 	bl	d0055f94 <lightsGetCount>
d00543a2:	4681      	mov	r9, r0
d00543a4:	f504 5700 	add.w	r7, r4, #8192	; 0x2000
d00543a8:	eb0a 1880 	add.w	r8, sl, r0, lsl #6
d00543ac:	e115      	b.n	d00545da <sb3dParticlesRender+0x28e>
d00543ae:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d00543b2:	edd4 ea04 	vldr	s29, [r4, #16]
d00543b6:	ed9f 5aac 	vldr	s10, [pc, #688]	; d0054668 <sb3dParticlesRender+0x31c>
d00543ba:	fece ea85 	vmaxnm.f32	s29, s29, s10
d00543be:	fece eac7 	vminnm.f32	s29, s29, s14
d00543c2:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d00543c6:	f105 0610 	add.w	r6, r5, #16
d00543ca:	eeb0 4a46 	vmov.f32	s8, s12
d00543ce:	2250      	movs	r2, #80	; 0x50
d00543d0:	eef0 4a66 	vmov.f32	s9, s13
d00543d4:	4631      	mov	r1, r6
d00543d6:	ee67 7a87 	vmul.f32	s15, s15, s14
d00543da:	4668      	mov	r0, sp
d00543dc:	eeb0 5a65 	vmov.f32	s10, s11
d00543e0:	eeb0 7a65 	vmov.f32	s14, s11
d00543e4:	eeac 6aa7 	vfma.f32	s12, s25, s15
d00543e8:	eeac 4ae7 	vfms.f32	s8, s25, s15
d00543ec:	eeec 4a67 	vfms.f32	s9, s24, s15
d00543f0:	eeec 6a27 	vfma.f32	s13, s24, s15
d00543f4:	eeab 5ae7 	vfms.f32	s10, s23, s15
d00543f8:	eeab 7aa7 	vfma.f32	s14, s23, s15
d00543fc:	eef0 3a46 	vmov.f32	s7, s12
d0054400:	eea9 6a67 	vfms.f32	s12, s18, s15
d0054404:	eeb0 da44 	vmov.f32	s26, s8
d0054408:	eef0 fa64 	vmov.f32	s31, s9
d005440c:	eef0 5a66 	vmov.f32	s11, s13
d0054410:	eeb0 fa45 	vmov.f32	s30, s10
d0054414:	eea9 da27 	vfma.f32	s26, s18, s15
d0054418:	ed8d 6a1c 	vstr	s12, [sp, #112]	; 0x70
d005441c:	eeb0 6a47 	vmov.f32	s12, s14
d0054420:	eee8 faa7 	vfma.f32	s31, s17, s15
d0054424:	eea8 fa27 	vfma.f32	s30, s16, s15
d0054428:	eea9 4a67 	vfms.f32	s8, s18, s15
d005442c:	eee9 3a27 	vfma.f32	s7, s18, s15
d0054430:	eee8 4ae7 	vfms.f32	s9, s17, s15
d0054434:	ed8d da16 	vstr	s26, [sp, #88]	; 0x58
d0054438:	eee8 5aa7 	vfma.f32	s11, s17, s15
d005443c:	eee8 6ae7 	vfms.f32	s13, s17, s15
d0054440:	edcd fa17 	vstr	s31, [sp, #92]	; 0x5c
d0054444:	eea8 5a67 	vfms.f32	s10, s16, s15
d0054448:	ed8d fa18 	vstr	s30, [sp, #96]	; 0x60
d005444c:	eea8 6a27 	vfma.f32	s12, s16, s15
d0054450:	ed8d 4a1f 	vstr	s8, [sp, #124]	; 0x7c
d0054454:	eea8 7a67 	vfms.f32	s14, s16, s15
d0054458:	edcd 3a19 	vstr	s7, [sp, #100]	; 0x64
d005445c:	edcd 4a20 	vstr	s9, [sp, #128]	; 0x80
d0054460:	edcd 5a1a 	vstr	s11, [sp, #104]	; 0x68
d0054464:	edcd 6a1d 	vstr	s13, [sp, #116]	; 0x74
d0054468:	ed8d 5a21 	vstr	s10, [sp, #132]	; 0x84
d005446c:	ed8d 6a1b 	vstr	s12, [sp, #108]	; 0x6c
d0054470:	ed8d 7a1e 	vstr	s14, [sp, #120]	; 0x78
d0054474:	f004 fb9a 	bl	d0058bac <memcpy>
d0054478:	eeb0 0a4d 	vmov.f32	s0, s26
d005447c:	eef0 0a6f 	vmov.f32	s1, s31
d0054480:	eeb0 1a4f 	vmov.f32	s2, s30
d0054484:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0054488:	f000 fbfc 	bl	d0054c84 <worldToCamera>
d005448c:	ed9d da19 	vldr	s26, [sp, #100]	; 0x64
d0054490:	eddd fa1a 	vldr	s31, [sp, #104]	; 0x68
d0054494:	4631      	mov	r1, r6
d0054496:	ed9d fa1b 	vldr	s30, [sp, #108]	; 0x6c
d005449a:	2250      	movs	r2, #80	; 0x50
d005449c:	4668      	mov	r0, sp
d005449e:	ed8d 0a22 	vstr	s0, [sp, #136]	; 0x88
d00544a2:	edcd 0a23 	vstr	s1, [sp, #140]	; 0x8c
d00544a6:	ed8d 1a24 	vstr	s2, [sp, #144]	; 0x90
d00544aa:	f004 fb7f 	bl	d0058bac <memcpy>
d00544ae:	eeb0 0a4d 	vmov.f32	s0, s26
d00544b2:	eef0 0a6f 	vmov.f32	s1, s31
d00544b6:	eeb0 1a4f 	vmov.f32	s2, s30
d00544ba:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d00544be:	f000 fbe1 	bl	d0054c84 <worldToCamera>
d00544c2:	ed9d da1c 	vldr	s26, [sp, #112]	; 0x70
d00544c6:	eddd fa1d 	vldr	s31, [sp, #116]	; 0x74
d00544ca:	4631      	mov	r1, r6
d00544cc:	ed9d fa1e 	vldr	s30, [sp, #120]	; 0x78
d00544d0:	2250      	movs	r2, #80	; 0x50
d00544d2:	4668      	mov	r0, sp
d00544d4:	ed8d 0a25 	vstr	s0, [sp, #148]	; 0x94
d00544d8:	edcd 0a26 	vstr	s1, [sp, #152]	; 0x98
d00544dc:	ed8d 1a27 	vstr	s2, [sp, #156]	; 0x9c
d00544e0:	f004 fb64 	bl	d0058bac <memcpy>
d00544e4:	eeb0 0a4d 	vmov.f32	s0, s26
d00544e8:	eef0 0a6f 	vmov.f32	s1, s31
d00544ec:	eeb0 1a4f 	vmov.f32	s2, s30
d00544f0:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d00544f4:	f000 fbc6 	bl	d0054c84 <worldToCamera>
d00544f8:	ed9d da1f 	vldr	s26, [sp, #124]	; 0x7c
d00544fc:	eddd fa20 	vldr	s31, [sp, #128]	; 0x80
d0054500:	4631      	mov	r1, r6
d0054502:	ed9d fa21 	vldr	s30, [sp, #132]	; 0x84
d0054506:	2250      	movs	r2, #80	; 0x50
d0054508:	4668      	mov	r0, sp
d005450a:	ed8d 0a28 	vstr	s0, [sp, #160]	; 0xa0
d005450e:	edcd 0a29 	vstr	s1, [sp, #164]	; 0xa4
d0054512:	ed8d 1a2a 	vstr	s2, [sp, #168]	; 0xa8
d0054516:	f004 fb49 	bl	d0058bac <memcpy>
d005451a:	eeb0 0a4d 	vmov.f32	s0, s26
d005451e:	eef0 0a6f 	vmov.f32	s1, s31
d0054522:	eeb0 1a4f 	vmov.f32	s2, s30
d0054526:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d005452a:	f000 fbab 	bl	d0054c84 <worldToCamera>
d005452e:	eddd 7a24 	vldr	s15, [sp, #144]	; 0x90
d0054532:	ed8d 0a2b 	vstr	s0, [sp, #172]	; 0xac
d0054536:	eef4 7acb 	vcmpe.f32	s15, s22
d005453a:	edcd 0a2c 	vstr	s1, [sp, #176]	; 0xb0
d005453e:	ed8d 1a2d 	vstr	s2, [sp, #180]	; 0xb4
d0054542:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054546:	d812      	bhi.n	d005456e <sb3dParticlesRender+0x222>
d0054548:	eddd 7a27 	vldr	s15, [sp, #156]	; 0x9c
d005454c:	eef4 7acb 	vcmpe.f32	s15, s22
d0054550:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054554:	d80b      	bhi.n	d005456e <sb3dParticlesRender+0x222>
d0054556:	eddd 7a2a 	vldr	s15, [sp, #168]	; 0xa8
d005455a:	eef4 7acb 	vcmpe.f32	s15, s22
d005455e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054562:	d804      	bhi.n	d005456e <sb3dParticlesRender+0x222>
d0054564:	eeb4 1acb 	vcmpe.f32	s2, s22
d0054568:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005456c:	d931      	bls.n	d00545d2 <sb3dParticlesRender+0x286>
d005456e:	4629      	mov	r1, r5
d0054570:	ed9d 3a28 	vldr	s6, [sp, #160]	; 0xa0
d0054574:	eddd 3a29 	vldr	s7, [sp, #164]	; 0xa4
d0054578:	a82e      	add	r0, sp, #184	; 0xb8
d005457a:	ed9d 4a2a 	vldr	s8, [sp, #168]	; 0xa8
d005457e:	eddd 1a25 	vldr	s3, [sp, #148]	; 0x94
d0054582:	ed9d 2a26 	vldr	s4, [sp, #152]	; 0x98
d0054586:	eddd 2a27 	vldr	s5, [sp, #156]	; 0x9c
d005458a:	ed9d 0a22 	vldr	s0, [sp, #136]	; 0x88
d005458e:	eddd 0a23 	vldr	s1, [sp, #140]	; 0x8c
d0054592:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d0054596:	f001 fdc3 	bl	d0056120 <clipTriangleToFrustum>
d005459a:	2802      	cmp	r0, #2
d005459c:	f300 8155 	bgt.w	d005484a <sb3dParticlesRender+0x4fe>
d00545a0:	a82e      	add	r0, sp, #184	; 0xb8
d00545a2:	4629      	mov	r1, r5
d00545a4:	ed9d 3a2b 	vldr	s6, [sp, #172]	; 0xac
d00545a8:	eddd 3a2c 	vldr	s7, [sp, #176]	; 0xb0
d00545ac:	ed9d 4a2d 	vldr	s8, [sp, #180]	; 0xb4
d00545b0:	eddd 1a28 	vldr	s3, [sp, #160]	; 0xa0
d00545b4:	ed9d 2a29 	vldr	s4, [sp, #164]	; 0xa4
d00545b8:	eddd 2a2a 	vldr	s5, [sp, #168]	; 0xa8
d00545bc:	ed9d 0a22 	vldr	s0, [sp, #136]	; 0x88
d00545c0:	eddd 0a23 	vldr	s1, [sp, #140]	; 0x8c
d00545c4:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d00545c8:	f001 fdaa 	bl	d0056120 <clipTriangleToFrustum>
d00545cc:	2802      	cmp	r0, #2
d00545ce:	f300 8105 	bgt.w	d00547dc <sb3dParticlesRender+0x490>
d00545d2:	3420      	adds	r4, #32
d00545d4:	42a7      	cmp	r7, r4
d00545d6:	f000 8133 	beq.w	d0054840 <sb3dParticlesRender+0x4f4>
d00545da:	7ea3      	ldrb	r3, [r4, #26]
d00545dc:	2b00      	cmp	r3, #0
d00545de:	d0f8      	beq.n	d00545d2 <sb3dParticlesRender+0x286>
d00545e0:	edd4 7a03 	vldr	s15, [r4, #12]
d00545e4:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d00545e8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00545ec:	d9f1      	bls.n	d00545d2 <sb3dParticlesRender+0x286>
d00545ee:	edd4 6a01 	vldr	s13, [r4, #4]
d00545f2:	eeb1 5a67 	vneg.f32	s10, s15
d00545f6:	ed94 6a00 	vldr	s12, [r4]
d00545fa:	ee36 7aed 	vsub.f32	s14, s13, s27
d00545fe:	edd4 5a02 	vldr	s11, [r4, #8]
d0054602:	ee36 4a4e 	vsub.f32	s8, s12, s28
d0054606:	eddd 4a15 	vldr	s9, [sp, #84]	; 0x54
d005460a:	ee27 7a0a 	vmul.f32	s14, s14, s20
d005460e:	ee75 4ae4 	vsub.f32	s9, s11, s9
d0054612:	eeaa 7a84 	vfma.f32	s14, s21, s8
d0054616:	eea9 7aa4 	vfma.f32	s14, s19, s9
d005461a:	eeb4 5ac7 	vcmpe.f32	s10, s14
d005461e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054622:	dad6      	bge.n	d00545d2 <sb3dParticlesRender+0x286>
d0054624:	ed94 7a05 	vldr	s14, [r4, #20]
d0054628:	ed9f 5a0b 	vldr	s10, [pc, #44]	; d0054658 <sb3dParticlesRender+0x30c>
d005462c:	eeb4 7ac5 	vcmpe.f32	s14, s10
d0054630:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054634:	f67f aebb 	bls.w	d00543ae <sb3dParticlesRender+0x62>
d0054638:	f1b9 0f00 	cmp.w	r9, #0
d005463c:	f340 809e 	ble.w	d005477c <sb3dParticlesRender+0x430>
d0054640:	eeb7 4a00 	vmov.f32	s8, #112	; 0x3f800000  1.0
d0054644:	4653      	mov	r3, sl
d0054646:	eeb5 3a00 	vmov.f32	s6, #80	; 0x3e800000  0.250
d005464a:	ed9f 0a05 	vldr	s0, [pc, #20]	; d0054660 <sb3dParticlesRender+0x314>
d005464e:	eef6 3a08 	vmov.f32	s7, #104	; 0x3f400000  0.750
d0054652:	e07e      	b.n	d0054752 <sb3dParticlesRender+0x406>
d0054654:	d005ad80 	.word	0xd005ad80
d0054658:	38d1b717 	.word	0x38d1b717
d005465c:	358637bd 	.word	0x358637bd
d0054660:	3dcccccd 	.word	0x3dcccccd
d0054664:	3b808081 	.word	0x3b808081
d0054668:	00000000 	.word	0x00000000
d005466c:	edd3 7a02 	vldr	s15, [r3, #8]
d0054670:	edd3 4a01 	vldr	s9, [r3, #4]
d0054674:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0054678:	ed93 7a03 	vldr	s14, [r3, #12]
d005467c:	ee74 4ac6 	vsub.f32	s9, s9, s12
d0054680:	ed93 2a0a 	vldr	s4, [r3, #40]	; 0x28
d0054684:	ee37 7a65 	vsub.f32	s14, s14, s11
d0054688:	ee27 5aa7 	vmul.f32	s10, s15, s15
d005468c:	ee62 2a02 	vmul.f32	s5, s4, s4
d0054690:	eea4 5aa4 	vfma.f32	s10, s9, s9
d0054694:	eea7 5a07 	vfma.f32	s10, s14, s14
d0054698:	eeb4 5a62 	vcmp.f32	s10, s5
d005469c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00546a0:	d554      	bpl.n	d005474c <sb3dParticlesRender+0x400>
d00546a2:	ed5f 2a12 	vldr	s5, [pc, #-72]	; d005465c <sb3dParticlesRender+0x310>
d00546a6:	eeb4 5a62 	vcmp.f32	s10, s5
d00546aa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00546ae:	dd4d      	ble.n	d005474c <sb3dParticlesRender+0x400>
d00546b0:	eef1 0ac5 	vsqrt.f32	s1, s10
d00546b4:	edd3 1a08 	vldr	s3, [r3, #32]
d00546b8:	ee21 1aa1 	vmul.f32	s2, s3, s3
d00546bc:	eeb4 5ac1 	vcmpe.f32	s10, s2
d00546c0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00546c4:	eec4 2a20 	vdiv.f32	s5, s8, s1
d00546c8:	ee64 4aa2 	vmul.f32	s9, s9, s5
d00546cc:	ee67 7aa2 	vmul.f32	s15, s15, s5
d00546d0:	ee27 7a22 	vmul.f32	s14, s14, s5
d00546d4:	f240 80e8 	bls.w	d00548a8 <sb3dParticlesRender+0x55c>
d00546d8:	ed93 1a09 	vldr	s2, [r3, #36]	; 0x24
d00546dc:	eef4 1ac1 	vcmpe.f32	s3, s2
d00546e0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00546e4:	da32      	bge.n	d005474c <sb3dParticlesRender+0x400>
d00546e6:	eeb4 2ac1 	vcmpe.f32	s4, s2
d00546ea:	ee25 5a22 	vmul.f32	s10, s10, s5
d00546ee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00546f2:	eeb4 1ac5 	vcmpe.f32	s2, s10
d00546f6:	f200 80da 	bhi.w	d00548ae <sb3dParticlesRender+0x562>
d00546fa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00546fe:	d925      	bls.n	d005474c <sb3dParticlesRender+0x400>
d0054700:	ee75 2a61 	vsub.f32	s5, s10, s3
d0054704:	ee31 2a61 	vsub.f32	s4, s2, s3
d0054708:	ee82 5a82 	vdiv.f32	s10, s5, s4
d005470c:	ed5f 2a2a 	vldr	s5, [pc, #-168]	; d0054668 <sb3dParticlesRender+0x31c>
d0054710:	fe85 5a22 	vmaxnm.f32	s10, s10, s5
d0054714:	fe85 5a44 	vminnm.f32	s10, s10, s8
d0054718:	ee34 5a45 	vsub.f32	s10, s8, s10
d005471c:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d0054720:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054724:	d912      	bls.n	d005474c <sb3dParticlesRender+0x400>
d0054726:	ee67 7a8a 	vmul.f32	s15, s15, s20
d005472a:	eee4 7aaa 	vfma.f32	s15, s9, s21
d005472e:	eee7 7a29 	vfma.f32	s15, s14, s19
d0054732:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0054736:	eeb1 7a67 	vneg.f32	s14, s15
d005473a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005473e:	da05      	bge.n	d005474c <sb3dParticlesRender+0x400>
d0054740:	edd3 7a07 	vldr	s15, [r3, #28]
d0054744:	ee25 5a27 	vmul.f32	s10, s10, s15
d0054748:	eea5 0a07 	vfma.f32	s0, s10, s14
d005474c:	3340      	adds	r3, #64	; 0x40
d005474e:	4598      	cmp	r8, r3
d0054750:	d016      	beq.n	d0054780 <sb3dParticlesRender+0x434>
d0054752:	6ada      	ldr	r2, [r3, #44]	; 0x2c
d0054754:	2a00      	cmp	r2, #0
d0054756:	d0f9      	beq.n	d005474c <sb3dParticlesRender+0x400>
d0054758:	781a      	ldrb	r2, [r3, #0]
d005475a:	2a00      	cmp	r2, #0
d005475c:	d086      	beq.n	d005466c <sb3dParticlesRender+0x320>
d005475e:	edd3 4a04 	vldr	s9, [r3, #16]
d0054762:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0054766:	edd3 7a05 	vldr	s15, [r3, #20]
d005476a:	ed93 7a06 	vldr	s14, [r3, #24]
d005476e:	eef1 4a64 	vneg.f32	s9, s9
d0054772:	eef1 7a67 	vneg.f32	s15, s15
d0054776:	eeb1 7a47 	vneg.f32	s14, s14
d005477a:	e7d4      	b.n	d0054726 <sb3dParticlesRender+0x3da>
d005477c:	ed1f 0a48 	vldr	s0, [pc, #-288]	; d0054660 <sb3dParticlesRender+0x314>
d0054780:	7e63      	ldrb	r3, [r4, #25]
d0054782:	eeb7 fa00 	vmov.f32	s30, #112	; 0x3f800000  1.0
d0054786:	ed1f 7a49 	vldr	s14, [pc, #-292]	; d0054664 <sb3dParticlesRender+0x318>
d005478a:	ee07 3a90 	vmov	s15, r3
d005478e:	ed1f da4a 	vldr	s26, [pc, #-296]	; d0054668 <sb3dParticlesRender+0x31c>
d0054792:	eef8 7a67 	vcvt.f32.u32	s15, s15
d0054796:	ee67 7a87 	vmul.f32	s15, s15, s14
d005479a:	fec7 7a8d 	vmaxnm.f32	s15, s15, s26
d005479e:	fe87 0a80 	vmaxnm.f32	s0, s15, s0
d00547a2:	fe80 0a4f 	vminnm.f32	s0, s0, s30
d00547a6:	f001 fbc5 	bl	d0055f34 <brightnessToShadeF>
d00547aa:	edd4 ea05 	vldr	s29, [r4, #20]
d00547ae:	ed94 5a04 	vldr	s10, [r4, #16]
d00547b2:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d00547b6:	ee3f fa6e 	vsub.f32	s30, s30, s29
d00547ba:	edd4 7a03 	vldr	s15, [r4, #12]
d00547be:	ee60 ea2e 	vmul.f32	s29, s0, s29
d00547c2:	ed94 6a00 	vldr	s12, [r4]
d00547c6:	edd4 6a01 	vldr	s13, [r4, #4]
d00547ca:	edd4 5a02 	vldr	s11, [r4, #8]
d00547ce:	eee5 ea0f 	vfma.f32	s29, s10, s30
d00547d2:	fece ea8d 	vmaxnm.f32	s29, s29, s26
d00547d6:	fece eac7 	vminnm.f32	s29, s29, s14
d00547da:	e5f2      	b.n	d00543c2 <sb3dParticlesRender+0x76>
d00547dc:	f100 3bff 	add.w	fp, r0, #4294967295	; 0xffffffff
d00547e0:	2601      	movs	r6, #1
d00547e2:	4631      	mov	r1, r6
d00547e4:	3601      	adds	r6, #1
d00547e6:	aa46      	add	r2, sp, #280	; 0x118
d00547e8:	eef0 4a6e 	vmov.f32	s9, s29
d00547ec:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d00547f0:	2380      	movs	r3, #128	; 0x80
d00547f2:	eb06 0046 	add.w	r0, r6, r6, lsl #1
d00547f6:	ed9d 0a2e 	vldr	s0, [sp, #184]	; 0xb8
d00547fa:	eb02 0181 	add.w	r1, r2, r1, lsl #2
d00547fe:	eddd 0a2f 	vldr	s1, [sp, #188]	; 0xbc
d0054802:	eb02 0080 	add.w	r0, r2, r0, lsl #2
d0054806:	ed9d 1a30 	vldr	s2, [sp, #192]	; 0xc0
d005480a:	f1a1 0c60 	sub.w	ip, r1, #96	; 0x60
d005480e:	ed51 1a18 	vldr	s3, [r1, #-96]	; 0xffffffa0
d0054812:	ed10 3a18 	vldr	s6, [r0, #-96]	; 0xffffffa0
d0054816:	f1a0 0160 	sub.w	r1, r0, #96	; 0x60
d005481a:	7e62      	ldrb	r2, [r4, #25]
d005481c:	4628      	mov	r0, r5
d005481e:	edd1 3a01 	vldr	s7, [r1, #4]
d0054822:	ed91 4a02 	vldr	s8, [r1, #8]
d0054826:	ed9c 2a01 	vldr	s4, [ip, #4]
d005482a:	7e21      	ldrb	r1, [r4, #24]
d005482c:	eddc 2a02 	vldr	s5, [ip, #8]
d0054830:	f002 f8d6 	bl	d00569e0 <submitClippedTri>
d0054834:	455e      	cmp	r6, fp
d0054836:	d1d4      	bne.n	d00547e2 <sb3dParticlesRender+0x496>
d0054838:	3420      	adds	r4, #32
d005483a:	42a7      	cmp	r7, r4
d005483c:	f47f aecd 	bne.w	d00545da <sb3dParticlesRender+0x28e>
d0054840:	b047      	add	sp, #284	; 0x11c
d0054842:	ecbd 8b10 	vpop	{d8-d15}
d0054846:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005484a:	f100 3bff 	add.w	fp, r0, #4294967295	; 0xffffffff
d005484e:	2601      	movs	r6, #1
d0054850:	4631      	mov	r1, r6
d0054852:	3601      	adds	r6, #1
d0054854:	aa46      	add	r2, sp, #280	; 0x118
d0054856:	eef0 4a6e 	vmov.f32	s9, s29
d005485a:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d005485e:	2380      	movs	r3, #128	; 0x80
d0054860:	eb06 0046 	add.w	r0, r6, r6, lsl #1
d0054864:	ed9d 0a2e 	vldr	s0, [sp, #184]	; 0xb8
d0054868:	eb02 0181 	add.w	r1, r2, r1, lsl #2
d005486c:	eddd 0a2f 	vldr	s1, [sp, #188]	; 0xbc
d0054870:	eb02 0080 	add.w	r0, r2, r0, lsl #2
d0054874:	ed9d 1a30 	vldr	s2, [sp, #192]	; 0xc0
d0054878:	f1a1 0c60 	sub.w	ip, r1, #96	; 0x60
d005487c:	ed51 1a18 	vldr	s3, [r1, #-96]	; 0xffffffa0
d0054880:	ed10 3a18 	vldr	s6, [r0, #-96]	; 0xffffffa0
d0054884:	f1a0 0160 	sub.w	r1, r0, #96	; 0x60
d0054888:	7e62      	ldrb	r2, [r4, #25]
d005488a:	4628      	mov	r0, r5
d005488c:	edd1 3a01 	vldr	s7, [r1, #4]
d0054890:	ed91 4a02 	vldr	s8, [r1, #8]
d0054894:	ed9c 2a01 	vldr	s4, [ip, #4]
d0054898:	7e21      	ldrb	r1, [r4, #24]
d005489a:	eddc 2a02 	vldr	s5, [ip, #8]
d005489e:	f002 f89f 	bl	d00569e0 <submitClippedTri>
d00548a2:	455e      	cmp	r6, fp
d00548a4:	d1d4      	bne.n	d0054850 <sb3dParticlesRender+0x504>
d00548a6:	e67b      	b.n	d00545a0 <sb3dParticlesRender+0x254>
d00548a8:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d00548ac:	e73b      	b.n	d0054726 <sb3dParticlesRender+0x3da>
d00548ae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00548b2:	db12      	blt.n	d00548da <sb3dParticlesRender+0x58e>
d00548b4:	ee35 5a61 	vsub.f32	s10, s10, s3
d00548b8:	ee31 2a61 	vsub.f32	s4, s2, s3
d00548bc:	eec5 2a02 	vdiv.f32	s5, s10, s4
d00548c0:	ed1f 5a97 	vldr	s10, [pc, #-604]	; d0054668 <sb3dParticlesRender+0x31c>
d00548c4:	fe82 5a85 	vmaxnm.f32	s10, s5, s10
d00548c8:	eef0 2a44 	vmov.f32	s5, s8
d00548cc:	fe85 5a44 	vminnm.f32	s10, s10, s8
d00548d0:	eee5 2a63 	vfms.f32	s5, s10, s7
d00548d4:	eeb0 5a62 	vmov.f32	s10, s5
d00548d8:	e720      	b.n	d005471c <sb3dParticlesRender+0x3d0>
d00548da:	ee75 2a41 	vsub.f32	s5, s10, s2
d00548de:	ee32 2a41 	vsub.f32	s4, s4, s2
d00548e2:	ee82 5a82 	vdiv.f32	s10, s5, s4
d00548e6:	ed5f 2aa0 	vldr	s5, [pc, #-640]	; d0054668 <sb3dParticlesRender+0x31c>
d00548ea:	fe85 5a22 	vmaxnm.f32	s10, s10, s5
d00548ee:	fe85 5a44 	vminnm.f32	s10, s10, s8
d00548f2:	ee34 5a45 	vsub.f32	s10, s8, s10
d00548f6:	ee25 5a03 	vmul.f32	s10, s10, s6
d00548fa:	e70f      	b.n	d005471c <sb3dParticlesRender+0x3d0>
d00548fc:	4770      	bx	lr
d00548fe:	bf00      	nop

d0054900 <worldClear>:
d0054900:	f44f 42c0 	mov.w	r2, #24576	; 0x6000
d0054904:	2100      	movs	r1, #0
d0054906:	4801      	ldr	r0, [pc, #4]	; (d005490c <worldClear+0xc>)
d0054908:	f004 b95e 	b.w	d0058bc8 <memset>
d005490c:	d00f50a0 	.word	0xd00f50a0

d0054910 <cameraNormalize>:
d0054910:	edd0 0a0d 	vldr	s1, [r0, #52]	; 0x34
d0054914:	ed90 1a0e 	vldr	s2, [r0, #56]	; 0x38
d0054918:	ed90 0a0c 	vldr	s0, [r0, #48]	; 0x30
d005491c:	b510      	push	{r4, lr}
d005491e:	4604      	mov	r4, r0
d0054920:	f7ff fb6c 	bl	d0053ffc <vec3Normalize>
d0054924:	eeb0 7a60 	vmov.f32	s14, s1
d0054928:	eef0 7a41 	vmov.f32	s15, s2
d005492c:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0054930:	ed94 0a06 	vldr	s0, [r4, #24]
d0054934:	ed84 7a0d 	vstr	s14, [r4, #52]	; 0x34
d0054938:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d005493c:	edd4 0a07 	vldr	s1, [r4, #28]
d0054940:	ed94 1a08 	vldr	s2, [r4, #32]
d0054944:	f7ff fb5a 	bl	d0053ffc <vec3Normalize>
d0054948:	eef0 1a40 	vmov.f32	s3, s0
d005494c:	eeb0 2a60 	vmov.f32	s4, s1
d0054950:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0054954:	eef0 2a41 	vmov.f32	s5, s2
d0054958:	edc4 0a07 	vstr	s1, [r4, #28]
d005495c:	ed84 1a08 	vstr	s2, [r4, #32]
d0054960:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0054964:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0054968:	edc4 1a06 	vstr	s3, [r4, #24]
d005496c:	f7ff fb30 	bl	d0053fd0 <vec3Cross>
d0054970:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0054974:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0054978:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d005497c:	f7ff fb3e 	bl	d0053ffc <vec3Normalize>
d0054980:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0054984:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0054988:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d005498c:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0054990:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0054994:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0054998:	f7ff fb1a 	bl	d0053fd0 <vec3Cross>
d005499c:	ed84 0a06 	vstr	s0, [r4, #24]
d00549a0:	edc4 0a07 	vstr	s1, [r4, #28]
d00549a4:	ed84 1a08 	vstr	s2, [r4, #32]
d00549a8:	f7ff fb28 	bl	d0053ffc <vec3Normalize>
d00549ac:	ed84 0a06 	vstr	s0, [r4, #24]
d00549b0:	edc4 0a07 	vstr	s1, [r4, #28]
d00549b4:	ed84 1a08 	vstr	s2, [r4, #32]
d00549b8:	bd10      	pop	{r4, pc}
d00549ba:	bf00      	nop

d00549bc <cameraCreate>:
d00549bc:	b510      	push	{r4, lr}
d00549be:	4604      	mov	r4, r0
d00549c0:	2260      	movs	r2, #96	; 0x60
d00549c2:	4902      	ldr	r1, [pc, #8]	; (d00549cc <cameraCreate+0x10>)
d00549c4:	f004 f8f2 	bl	d0058bac <memcpy>
d00549c8:	4620      	mov	r0, r4
d00549ca:	bd10      	pop	{r4, pc}
d00549cc:	d005a340 	.word	0xd005a340

d00549d0 <cameraSetPosition>:
d00549d0:	b084      	sub	sp, #16
d00549d2:	ed8d 0a01 	vstr	s0, [sp, #4]
d00549d6:	edcd 0a02 	vstr	s1, [sp, #8]
d00549da:	ed8d 1a03 	vstr	s2, [sp, #12]
d00549de:	b128      	cbz	r0, d00549ec <cameraSetPosition+0x1c>
d00549e0:	aa04      	add	r2, sp, #16
d00549e2:	4603      	mov	r3, r0
d00549e4:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d00549e8:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d00549ec:	b004      	add	sp, #16
d00549ee:	4770      	bx	lr

d00549f0 <cameraTurn>:
d00549f0:	2800      	cmp	r0, #0
d00549f2:	f000 8144 	beq.w	d0054c7e <cameraTurn+0x28e>
d00549f6:	b570      	push	{r4, r5, r6, lr}
d00549f8:	4604      	mov	r4, r0
d00549fa:	ed2d 8b04 	vpush	{d8-d9}
d00549fe:	eef0 8a40 	vmov.f32	s17, s0
d0054a02:	b08a      	sub	sp, #40	; 0x28
d0054a04:	eeb0 9a60 	vmov.f32	s18, s1
d0054a08:	eeb0 8a41 	vmov.f32	s16, s2
d0054a0c:	bb69      	cbnz	r1, d0054a6a <cameraTurn+0x7a>
d0054a0e:	f100 0318 	add.w	r3, r0, #24
d0054a12:	ae01      	add	r6, sp, #4
d0054a14:	f100 0524 	add.w	r5, r0, #36	; 0x24
d0054a18:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0054a1c:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0054a20:	f104 0330 	add.w	r3, r4, #48	; 0x30
d0054a24:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054a28:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0054a2c:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d0054a30:	ae04      	add	r6, sp, #16
d0054a32:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0054a36:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0054a3a:	ab0a      	add	r3, sp, #40	; 0x28
d0054a3c:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0054a40:	d14a      	bne.n	d0054ad8 <cameraTurn+0xe8>
d0054a42:	eef5 8a40 	vcmp.f32	s17, #0.0
d0054a46:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054a4a:	f040 808d 	bne.w	d0054b68 <cameraTurn+0x178>
d0054a4e:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0054a52:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054a56:	f040 80cf 	bne.w	d0054bf8 <cameraTurn+0x208>
d0054a5a:	4620      	mov	r0, r4
d0054a5c:	b00a      	add	sp, #40	; 0x28
d0054a5e:	ecbd 8b04 	vpop	{d8-d9}
d0054a62:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0054a66:	f7ff bf53 	b.w	d0054910 <cameraNormalize>
d0054a6a:	ed9f 1a85 	vldr	s2, [pc, #532]	; d0054c80 <cameraTurn+0x290>
d0054a6e:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0054a72:	eef0 0a41 	vmov.f32	s1, s2
d0054a76:	f7ff fbc1 	bl	d00541fc <vec3>
d0054a7a:	eef0 7a41 	vmov.f32	s15, s2
d0054a7e:	ed9f 1a80 	vldr	s2, [pc, #512]	; d0054c80 <cameraTurn+0x290>
d0054a82:	eeb0 7a60 	vmov.f32	s14, s1
d0054a86:	ed8d 0a01 	vstr	s0, [sp, #4]
d0054a8a:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d0054a8e:	edcd 7a03 	vstr	s15, [sp, #12]
d0054a92:	eeb0 0a41 	vmov.f32	s0, s2
d0054a96:	ed8d 7a02 	vstr	s14, [sp, #8]
d0054a9a:	f7ff fbaf 	bl	d00541fc <vec3>
d0054a9e:	eeb0 7a60 	vmov.f32	s14, s1
d0054aa2:	eddf 0a77 	vldr	s1, [pc, #476]	; d0054c80 <cameraTurn+0x290>
d0054aa6:	eef0 7a41 	vmov.f32	s15, s2
d0054aaa:	ed8d 0a04 	vstr	s0, [sp, #16]
d0054aae:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d0054ab2:	eeb0 0a60 	vmov.f32	s0, s1
d0054ab6:	ed8d 7a05 	vstr	s14, [sp, #20]
d0054aba:	edcd 7a06 	vstr	s15, [sp, #24]
d0054abe:	f7ff fb9d 	bl	d00541fc <vec3>
d0054ac2:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0054ac6:	edcd 0a08 	vstr	s1, [sp, #32]
d0054aca:	ed8d 0a07 	vstr	s0, [sp, #28]
d0054ace:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d0054ad2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054ad6:	d0b4      	beq.n	d0054a42 <cameraTurn+0x52>
d0054ad8:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0054adc:	eeb0 3a49 	vmov.f32	s6, s18
d0054ae0:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0054ae4:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0054ae8:	eddd 1a04 	vldr	s3, [sp, #16]
d0054aec:	ed9d 2a05 	vldr	s4, [sp, #20]
d0054af0:	eddd 2a06 	vldr	s5, [sp, #24]
d0054af4:	f7ff fad2 	bl	d005409c <rotateAroundAxis>
d0054af8:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0054afc:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0054b00:	eeb0 3a49 	vmov.f32	s6, s18
d0054b04:	ed94 0a06 	vldr	s0, [r4, #24]
d0054b08:	edd4 0a07 	vldr	s1, [r4, #28]
d0054b0c:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0054b10:	ed94 1a08 	vldr	s2, [r4, #32]
d0054b14:	eddd 1a04 	vldr	s3, [sp, #16]
d0054b18:	ed9d 2a05 	vldr	s4, [sp, #20]
d0054b1c:	eddd 2a06 	vldr	s5, [sp, #24]
d0054b20:	f7ff fabc 	bl	d005409c <rotateAroundAxis>
d0054b24:	eeb0 3a49 	vmov.f32	s6, s18
d0054b28:	ed84 0a06 	vstr	s0, [r4, #24]
d0054b2c:	edc4 0a07 	vstr	s1, [r4, #28]
d0054b30:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0054b34:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0054b38:	ed84 1a08 	vstr	s2, [r4, #32]
d0054b3c:	eddd 1a04 	vldr	s3, [sp, #16]
d0054b40:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0054b44:	ed9d 2a05 	vldr	s4, [sp, #20]
d0054b48:	eddd 2a06 	vldr	s5, [sp, #24]
d0054b4c:	f7ff faa6 	bl	d005409c <rotateAroundAxis>
d0054b50:	eef5 8a40 	vcmp.f32	s17, #0.0
d0054b54:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0054b58:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0054b5c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054b60:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0054b64:	f43f af73 	beq.w	d0054a4e <cameraTurn+0x5e>
d0054b68:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0054b6c:	eeb0 3a68 	vmov.f32	s6, s17
d0054b70:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0054b74:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0054b78:	eddd 1a01 	vldr	s3, [sp, #4]
d0054b7c:	ed9d 2a02 	vldr	s4, [sp, #8]
d0054b80:	eddd 2a03 	vldr	s5, [sp, #12]
d0054b84:	f7ff fa8a 	bl	d005409c <rotateAroundAxis>
d0054b88:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0054b8c:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0054b90:	eeb0 3a68 	vmov.f32	s6, s17
d0054b94:	ed94 0a06 	vldr	s0, [r4, #24]
d0054b98:	edd4 0a07 	vldr	s1, [r4, #28]
d0054b9c:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0054ba0:	ed94 1a08 	vldr	s2, [r4, #32]
d0054ba4:	eddd 1a01 	vldr	s3, [sp, #4]
d0054ba8:	ed9d 2a02 	vldr	s4, [sp, #8]
d0054bac:	eddd 2a03 	vldr	s5, [sp, #12]
d0054bb0:	f7ff fa74 	bl	d005409c <rotateAroundAxis>
d0054bb4:	eeb0 3a68 	vmov.f32	s6, s17
d0054bb8:	ed84 0a06 	vstr	s0, [r4, #24]
d0054bbc:	edc4 0a07 	vstr	s1, [r4, #28]
d0054bc0:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0054bc4:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0054bc8:	ed84 1a08 	vstr	s2, [r4, #32]
d0054bcc:	eddd 1a01 	vldr	s3, [sp, #4]
d0054bd0:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0054bd4:	ed9d 2a02 	vldr	s4, [sp, #8]
d0054bd8:	eddd 2a03 	vldr	s5, [sp, #12]
d0054bdc:	f7ff fa5e 	bl	d005409c <rotateAroundAxis>
d0054be0:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0054be4:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0054be8:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0054bec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054bf0:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0054bf4:	f43f af31 	beq.w	d0054a5a <cameraTurn+0x6a>
d0054bf8:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0054bfc:	eeb0 3a48 	vmov.f32	s6, s16
d0054c00:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0054c04:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0054c08:	eddd 1a07 	vldr	s3, [sp, #28]
d0054c0c:	ed9d 2a08 	vldr	s4, [sp, #32]
d0054c10:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0054c14:	f7ff fa42 	bl	d005409c <rotateAroundAxis>
d0054c18:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0054c1c:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0054c20:	eeb0 3a48 	vmov.f32	s6, s16
d0054c24:	ed94 0a06 	vldr	s0, [r4, #24]
d0054c28:	edd4 0a07 	vldr	s1, [r4, #28]
d0054c2c:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0054c30:	ed94 1a08 	vldr	s2, [r4, #32]
d0054c34:	eddd 1a07 	vldr	s3, [sp, #28]
d0054c38:	ed9d 2a08 	vldr	s4, [sp, #32]
d0054c3c:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0054c40:	f7ff fa2c 	bl	d005409c <rotateAroundAxis>
d0054c44:	ed84 0a06 	vstr	s0, [r4, #24]
d0054c48:	edc4 0a07 	vstr	s1, [r4, #28]
d0054c4c:	eeb0 3a48 	vmov.f32	s6, s16
d0054c50:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0054c54:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0054c58:	ed84 1a08 	vstr	s2, [r4, #32]
d0054c5c:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0054c60:	eddd 1a07 	vldr	s3, [sp, #28]
d0054c64:	ed9d 2a08 	vldr	s4, [sp, #32]
d0054c68:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0054c6c:	f7ff fa16 	bl	d005409c <rotateAroundAxis>
d0054c70:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0054c74:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0054c78:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0054c7c:	e6ed      	b.n	d0054a5a <cameraTurn+0x6a>
d0054c7e:	4770      	bx	lr
d0054c80:	00000000 	.word	0x00000000

d0054c84 <worldToCamera>:
d0054c84:	b084      	sub	sp, #16
d0054c86:	b510      	push	{r4, lr}
d0054c88:	ed2d 8b02 	vpush	{d8}
d0054c8c:	b0ac      	sub	sp, #176	; 0xb0
d0054c8e:	f10d 042f 	add.w	r4, sp, #47	; 0x2f
d0054c92:	f10d 0cc0 	add.w	ip, sp, #192	; 0xc0
d0054c96:	ed8d 0a23 	vstr	s0, [sp, #140]	; 0x8c
d0054c9a:	f024 041f 	bic.w	r4, r4, #31
d0054c9e:	edcd 0a24 	vstr	s1, [sp, #144]	; 0x90
d0054ca2:	ed8d 1a25 	vstr	s2, [sp, #148]	; 0x94
d0054ca6:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d0054caa:	2260      	movs	r2, #96	; 0x60
d0054cac:	4661      	mov	r1, ip
d0054cae:	4620      	mov	r0, r4
d0054cb0:	f003 ff7c 	bl	d0058bac <memcpy>
d0054cb4:	edd4 7a00 	vldr	s15, [r4]
d0054cb8:	ed9d 0a23 	vldr	s0, [sp, #140]	; 0x8c
d0054cbc:	ed94 7a01 	vldr	s14, [r4, #4]
d0054cc0:	ee30 0a67 	vsub.f32	s0, s0, s15
d0054cc4:	eddd 0a24 	vldr	s1, [sp, #144]	; 0x90
d0054cc8:	edd4 7a02 	vldr	s15, [r4, #8]
d0054ccc:	ed9d 1a25 	vldr	s2, [sp, #148]	; 0x94
d0054cd0:	ee70 0ac7 	vsub.f32	s1, s1, s14
d0054cd4:	edd4 1a06 	vldr	s3, [r4, #24]
d0054cd8:	ee31 1a67 	vsub.f32	s2, s2, s15
d0054cdc:	ed94 2a07 	vldr	s4, [r4, #28]
d0054ce0:	edd4 2a08 	vldr	s5, [r4, #32]
d0054ce4:	edcd 0a27 	vstr	s1, [sp, #156]	; 0x9c
d0054ce8:	ed8d 1a28 	vstr	s2, [sp, #160]	; 0xa0
d0054cec:	ed8d 0a26 	vstr	s0, [sp, #152]	; 0x98
d0054cf0:	f7ff f962 	bl	d0053fb8 <vec3Dot>
d0054cf4:	edd4 1a09 	vldr	s3, [r4, #36]	; 0x24
d0054cf8:	eef0 8a40 	vmov.f32	s17, s0
d0054cfc:	ed94 2a0a 	vldr	s4, [r4, #40]	; 0x28
d0054d00:	edd4 2a0b 	vldr	s5, [r4, #44]	; 0x2c
d0054d04:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d0054d08:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d0054d0c:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d0054d10:	f7ff f952 	bl	d0053fb8 <vec3Dot>
d0054d14:	eeb0 8a40 	vmov.f32	s16, s0
d0054d18:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d0054d1c:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d0054d20:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0054d24:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d0054d28:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0054d2c:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0054d30:	f7ff f942 	bl	d0053fb8 <vec3Dot>
d0054d34:	eef0 0a48 	vmov.f32	s1, s16
d0054d38:	eeb0 1a40 	vmov.f32	s2, s0
d0054d3c:	eeb0 0a68 	vmov.f32	s0, s17
d0054d40:	b02c      	add	sp, #176	; 0xb0
d0054d42:	ecbd 8b02 	vpop	{d8}
d0054d46:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0054d4a:	b004      	add	sp, #16
d0054d4c:	4770      	bx	lr
d0054d4e:	bf00      	nop

d0054d50 <cameraSetRange>:
d0054d50:	b1d8      	cbz	r0, d0054d8a <cameraSetRange+0x3a>
d0054d52:	eddf 7a11 	vldr	s15, [pc, #68]	; d0054d98 <cameraSetRange+0x48>
d0054d56:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d0054d5a:	eeb4 0ae0 	vcmpe.f32	s0, s1
d0054d5e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054d62:	da13      	bge.n	d0054d8c <cameraSetRange+0x3c>
d0054d64:	ee30 7ac0 	vsub.f32	s14, s1, s0
d0054d68:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0054d6c:	eec6 7a87 	vdiv.f32	s15, s13, s14
d0054d70:	4b0a      	ldr	r3, [pc, #40]	; (d0054d9c <cameraSetRange+0x4c>)
d0054d72:	490b      	ldr	r1, [pc, #44]	; (d0054da0 <cameraSetRange+0x50>)
d0054d74:	4a0b      	ldr	r2, [pc, #44]	; (d0054da4 <cameraSetRange+0x54>)
d0054d76:	ed80 0a10 	vstr	s0, [r0, #64]	; 0x40
d0054d7a:	edc0 0a11 	vstr	s1, [r0, #68]	; 0x44
d0054d7e:	edc0 7a0f 	vstr	s15, [r0, #60]	; 0x3c
d0054d82:	6483      	str	r3, [r0, #72]	; 0x48
d0054d84:	64c3      	str	r3, [r0, #76]	; 0x4c
d0054d86:	6501      	str	r1, [r0, #80]	; 0x50
d0054d88:	6542      	str	r2, [r0, #84]	; 0x54
d0054d8a:	4770      	bx	lr
d0054d8c:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0054d90:	ee70 0a27 	vadd.f32	s1, s0, s15
d0054d94:	e7ec      	b.n	d0054d70 <cameraSetRange+0x20>
d0054d96:	bf00      	nop
d0054d98:	3a83126f 	.word	0x3a83126f
d0054d9c:	43700000 	.word	0x43700000
d0054da0:	43200000 	.word	0x43200000
d0054da4:	3f2aaaab 	.word	0x3f2aaaab

d0054da8 <cameraMove>:
d0054da8:	b3a8      	cbz	r0, d0054e16 <cameraMove+0x6e>
d0054daa:	edd0 6a0b 	vldr	s13, [r0, #44]	; 0x2c
d0054dae:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
d0054db2:	edd0 7a0a 	vldr	s15, [r0, #40]	; 0x28
d0054db6:	ee20 7a87 	vmul.f32	s14, s1, s14
d0054dba:	edd0 5a06 	vldr	s11, [r0, #24]
d0054dbe:	ee60 7aa7 	vmul.f32	s15, s1, s15
d0054dc2:	ed90 6a08 	vldr	s12, [r0, #32]
d0054dc6:	ee60 0aa6 	vmul.f32	s1, s1, s13
d0054dca:	edd0 6a07 	vldr	s13, [r0, #28]
d0054dce:	eea5 7a80 	vfma.f32	s14, s11, s0
d0054dd2:	edd0 4a01 	vldr	s9, [r0, #4]
d0054dd6:	eee6 7a80 	vfma.f32	s15, s13, s0
d0054dda:	ed90 5a02 	vldr	s10, [r0, #8]
d0054dde:	eee6 0a00 	vfma.f32	s1, s12, s0
d0054de2:	edd0 6a00 	vldr	s13, [r0]
d0054de6:	edd0 5a0c 	vldr	s11, [r0, #48]	; 0x30
d0054dea:	ed90 6a0d 	vldr	s12, [r0, #52]	; 0x34
d0054dee:	ee37 7a26 	vadd.f32	s14, s14, s13
d0054df2:	edd0 6a0e 	vldr	s13, [r0, #56]	; 0x38
d0054df6:	ee77 7aa4 	vadd.f32	s15, s15, s9
d0054dfa:	ee70 0a85 	vadd.f32	s1, s1, s10
d0054dfe:	eea5 7a81 	vfma.f32	s14, s11, s2
d0054e02:	eee6 7a01 	vfma.f32	s15, s12, s2
d0054e06:	eee6 0a81 	vfma.f32	s1, s13, s2
d0054e0a:	ed80 7a00 	vstr	s14, [r0]
d0054e0e:	edc0 7a01 	vstr	s15, [r0, #4]
d0054e12:	edc0 0a02 	vstr	s1, [r0, #8]
d0054e16:	4770      	bx	lr

d0054e18 <normalizeEntity.part.0>:
d0054e18:	edd0 0a05 	vldr	s1, [r0, #20]
d0054e1c:	ed90 1a06 	vldr	s2, [r0, #24]
d0054e20:	ed90 0a04 	vldr	s0, [r0, #16]
d0054e24:	b510      	push	{r4, lr}
d0054e26:	4604      	mov	r4, r0
d0054e28:	f7ff f8e8 	bl	d0053ffc <vec3Normalize>
d0054e2c:	eeb0 7a60 	vmov.f32	s14, s1
d0054e30:	eef0 7a41 	vmov.f32	s15, s2
d0054e34:	ed84 0a04 	vstr	s0, [r4, #16]
d0054e38:	ed94 0a07 	vldr	s0, [r4, #28]
d0054e3c:	ed84 7a05 	vstr	s14, [r4, #20]
d0054e40:	edc4 7a06 	vstr	s15, [r4, #24]
d0054e44:	edd4 0a08 	vldr	s1, [r4, #32]
d0054e48:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0054e4c:	f7ff f8d6 	bl	d0053ffc <vec3Normalize>
d0054e50:	eef0 1a40 	vmov.f32	s3, s0
d0054e54:	eeb0 2a60 	vmov.f32	s4, s1
d0054e58:	ed94 0a04 	vldr	s0, [r4, #16]
d0054e5c:	eef0 2a41 	vmov.f32	s5, s2
d0054e60:	edc4 0a08 	vstr	s1, [r4, #32]
d0054e64:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d0054e68:	edd4 0a05 	vldr	s1, [r4, #20]
d0054e6c:	ed94 1a06 	vldr	s2, [r4, #24]
d0054e70:	edc4 1a07 	vstr	s3, [r4, #28]
d0054e74:	f7ff f8ac 	bl	d0053fd0 <vec3Cross>
d0054e78:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0054e7c:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0054e80:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0054e84:	f7ff f8ba 	bl	d0053ffc <vec3Normalize>
d0054e88:	edd4 1a04 	vldr	s3, [r4, #16]
d0054e8c:	ed94 2a05 	vldr	s4, [r4, #20]
d0054e90:	edd4 2a06 	vldr	s5, [r4, #24]
d0054e94:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0054e98:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0054e9c:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0054ea0:	f7ff f896 	bl	d0053fd0 <vec3Cross>
d0054ea4:	ed84 0a07 	vstr	s0, [r4, #28]
d0054ea8:	edc4 0a08 	vstr	s1, [r4, #32]
d0054eac:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d0054eb0:	f7ff f8a4 	bl	d0053ffc <vec3Normalize>
d0054eb4:	ed84 0a07 	vstr	s0, [r4, #28]
d0054eb8:	edc4 0a08 	vstr	s1, [r4, #32]
d0054ebc:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d0054ec0:	bd10      	pop	{r4, pc}
d0054ec2:	bf00      	nop

d0054ec4 <entityRotation.part.0>:
d0054ec4:	b5f0      	push	{r4, r5, r6, r7, lr}
d0054ec6:	4eb7      	ldr	r6, [pc, #732]	; (d00551a4 <entityRotation.part.0+0x2e0>)
d0054ec8:	eb00 0440 	add.w	r4, r0, r0, lsl #1
d0054ecc:	ed2d 8b04 	vpush	{d8-d9}
d0054ed0:	eb06 1444 	add.w	r4, r6, r4, lsl #5
d0054ed4:	eeb0 9a40 	vmov.f32	s18, s0
d0054ed8:	eef0 8a60 	vmov.f32	s17, s1
d0054edc:	b08b      	sub	sp, #44	; 0x2c
d0054ede:	eeb0 8a41 	vmov.f32	s16, s2
d0054ee2:	2900      	cmp	r1, #0
d0054ee4:	d040      	beq.n	d0054f68 <entityRotation.part.0+0xa4>
d0054ee6:	eddf 1ab0 	vldr	s3, [pc, #704]	; d00551a8 <entityRotation.part.0+0x2e4>
d0054eea:	eeb7 2a00 	vmov.f32	s4, #112	; 0x3f800000  1.0
d0054eee:	eeb4 0a61 	vcmp.f32	s0, s3
d0054ef2:	edc4 1a08 	vstr	s3, [r4, #32]
d0054ef6:	ed84 2a07 	vstr	s4, [r4, #28]
d0054efa:	ed84 2a0b 	vstr	s4, [r4, #44]	; 0x2c
d0054efe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054f02:	ed84 2a06 	vstr	s4, [r4, #24]
d0054f06:	ed8d 2a02 	vstr	s4, [sp, #8]
d0054f0a:	ed8d 2a04 	vstr	s4, [sp, #16]
d0054f0e:	ed8d 2a09 	vstr	s4, [sp, #36]	; 0x24
d0054f12:	edc4 1a09 	vstr	s3, [r4, #36]	; 0x24
d0054f16:	edc4 1a0a 	vstr	s3, [r4, #40]	; 0x28
d0054f1a:	edc4 1a0c 	vstr	s3, [r4, #48]	; 0x30
d0054f1e:	edc4 1a04 	vstr	s3, [r4, #16]
d0054f22:	edc4 1a05 	vstr	s3, [r4, #20]
d0054f26:	edcd 1a01 	vstr	s3, [sp, #4]
d0054f2a:	edcd 1a03 	vstr	s3, [sp, #12]
d0054f2e:	edcd 1a05 	vstr	s3, [sp, #20]
d0054f32:	edcd 1a06 	vstr	s3, [sp, #24]
d0054f36:	edcd 1a07 	vstr	s3, [sp, #28]
d0054f3a:	edcd 1a08 	vstr	s3, [sp, #32]
d0054f3e:	d17e      	bne.n	d005503e <entityRotation.part.0+0x17a>
d0054f40:	eef5 8a40 	vcmp.f32	s17, #0.0
d0054f44:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054f48:	f040 80c9 	bne.w	d00550de <entityRotation.part.0+0x21a>
d0054f4c:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0054f50:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054f54:	f040 8117 	bne.w	d0055186 <entityRotation.part.0+0x2c2>
d0054f58:	4620      	mov	r0, r4
d0054f5a:	b00b      	add	sp, #44	; 0x2c
d0054f5c:	ecbd 8b04 	vpop	{d8-d9}
d0054f60:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0054f64:	f7ff bf58 	b.w	d0054e18 <normalizeEntity.part.0>
d0054f68:	eeb5 0a40 	vcmp.f32	s0, #0.0
d0054f6c:	4605      	mov	r5, r0
d0054f6e:	0047      	lsls	r7, r0, #1
d0054f70:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054f74:	f040 811a 	bne.w	d00551ac <entityRotation.part.0+0x2e8>
d0054f78:	eef5 8a40 	vcmp.f32	s17, #0.0
d0054f7c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054f80:	f040 8170 	bne.w	d0055264 <entityRotation.part.0+0x3a0>
d0054f84:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0054f88:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054f8c:	d0e4      	beq.n	d0054f58 <entityRotation.part.0+0x94>
d0054f8e:	443d      	add	r5, r7
d0054f90:	ab0a      	add	r3, sp, #40	; 0x28
d0054f92:	eeb0 3a48 	vmov.f32	s6, s16
d0054f96:	ed94 0a04 	vldr	s0, [r4, #16]
d0054f9a:	eb06 1545 	add.w	r5, r6, r5, lsl #5
d0054f9e:	edd4 0a05 	vldr	s1, [r4, #20]
d0054fa2:	ed94 1a06 	vldr	s2, [r4, #24]
d0054fa6:	3510      	adds	r5, #16
d0054fa8:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d0054fac:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0054fb0:	eddd 1a07 	vldr	s3, [sp, #28]
d0054fb4:	ed9d 2a08 	vldr	s4, [sp, #32]
d0054fb8:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0054fbc:	f7ff f86e 	bl	d005409c <rotateAroundAxis>
d0054fc0:	eef0 6a40 	vmov.f32	s13, s0
d0054fc4:	eeb0 7a60 	vmov.f32	s14, s1
d0054fc8:	ed94 0a07 	vldr	s0, [r4, #28]
d0054fcc:	eef0 7a41 	vmov.f32	s15, s2
d0054fd0:	edd4 0a08 	vldr	s1, [r4, #32]
d0054fd4:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0054fd8:	eeb0 3a48 	vmov.f32	s6, s16
d0054fdc:	eddd 1a07 	vldr	s3, [sp, #28]
d0054fe0:	ed9d 2a08 	vldr	s4, [sp, #32]
d0054fe4:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0054fe8:	edc4 6a04 	vstr	s13, [r4, #16]
d0054fec:	ed84 7a05 	vstr	s14, [r4, #20]
d0054ff0:	edc4 7a06 	vstr	s15, [r4, #24]
d0054ff4:	f7ff f852 	bl	d005409c <rotateAroundAxis>
d0054ff8:	eef0 6a40 	vmov.f32	s13, s0
d0054ffc:	eeb0 7a60 	vmov.f32	s14, s1
d0055000:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0055004:	eef0 7a41 	vmov.f32	s15, s2
d0055008:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d005500c:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0055010:	eeb0 3a48 	vmov.f32	s6, s16
d0055014:	eddd 1a07 	vldr	s3, [sp, #28]
d0055018:	ed9d 2a08 	vldr	s4, [sp, #32]
d005501c:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0055020:	edc4 6a07 	vstr	s13, [r4, #28]
d0055024:	ed84 7a08 	vstr	s14, [r4, #32]
d0055028:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d005502c:	f7ff f836 	bl	d005409c <rotateAroundAxis>
d0055030:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0055034:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0055038:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d005503c:	e78c      	b.n	d0054f58 <entityRotation.part.0+0x94>
d005503e:	eeb0 1a42 	vmov.f32	s2, s4
d0055042:	eef0 0a61 	vmov.f32	s1, s3
d0055046:	eeb0 3a40 	vmov.f32	s6, s0
d005504a:	eeb0 0a61 	vmov.f32	s0, s3
d005504e:	eef0 2a61 	vmov.f32	s5, s3
d0055052:	f7ff f823 	bl	d005409c <rotateAroundAxis>
d0055056:	eeb0 7a60 	vmov.f32	s14, s1
d005505a:	eef0 6a40 	vmov.f32	s13, s0
d005505e:	edd4 0a08 	vldr	s1, [r4, #32]
d0055062:	eef0 7a41 	vmov.f32	s15, s2
d0055066:	ed94 0a07 	vldr	s0, [r4, #28]
d005506a:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d005506e:	eeb0 3a49 	vmov.f32	s6, s18
d0055072:	eddd 1a01 	vldr	s3, [sp, #4]
d0055076:	ed9d 2a02 	vldr	s4, [sp, #8]
d005507a:	eddd 2a03 	vldr	s5, [sp, #12]
d005507e:	edc4 6a04 	vstr	s13, [r4, #16]
d0055082:	ed84 7a05 	vstr	s14, [r4, #20]
d0055086:	edc4 7a06 	vstr	s15, [r4, #24]
d005508a:	f7ff f807 	bl	d005409c <rotateAroundAxis>
d005508e:	eef0 6a40 	vmov.f32	s13, s0
d0055092:	eeb0 7a60 	vmov.f32	s14, s1
d0055096:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d005509a:	eef0 7a41 	vmov.f32	s15, s2
d005509e:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00550a2:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00550a6:	eeb0 3a49 	vmov.f32	s6, s18
d00550aa:	eddd 1a01 	vldr	s3, [sp, #4]
d00550ae:	ed9d 2a02 	vldr	s4, [sp, #8]
d00550b2:	eddd 2a03 	vldr	s5, [sp, #12]
d00550b6:	edc4 6a07 	vstr	s13, [r4, #28]
d00550ba:	ed84 7a08 	vstr	s14, [r4, #32]
d00550be:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d00550c2:	f7fe ffeb 	bl	d005409c <rotateAroundAxis>
d00550c6:	eef5 8a40 	vcmp.f32	s17, #0.0
d00550ca:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d00550ce:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d00550d2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00550d6:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d00550da:	f43f af37 	beq.w	d0054f4c <entityRotation.part.0+0x88>
d00550de:	ed94 0a04 	vldr	s0, [r4, #16]
d00550e2:	eeb0 3a68 	vmov.f32	s6, s17
d00550e6:	edd4 0a05 	vldr	s1, [r4, #20]
d00550ea:	ed94 1a06 	vldr	s2, [r4, #24]
d00550ee:	eddd 1a04 	vldr	s3, [sp, #16]
d00550f2:	ed9d 2a05 	vldr	s4, [sp, #20]
d00550f6:	eddd 2a06 	vldr	s5, [sp, #24]
d00550fa:	f7fe ffcf 	bl	d005409c <rotateAroundAxis>
d00550fe:	eef0 6a40 	vmov.f32	s13, s0
d0055102:	eeb0 7a60 	vmov.f32	s14, s1
d0055106:	ed94 0a07 	vldr	s0, [r4, #28]
d005510a:	eef0 7a41 	vmov.f32	s15, s2
d005510e:	edd4 0a08 	vldr	s1, [r4, #32]
d0055112:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0055116:	eeb0 3a68 	vmov.f32	s6, s17
d005511a:	eddd 1a04 	vldr	s3, [sp, #16]
d005511e:	ed9d 2a05 	vldr	s4, [sp, #20]
d0055122:	eddd 2a06 	vldr	s5, [sp, #24]
d0055126:	edc4 6a04 	vstr	s13, [r4, #16]
d005512a:	ed84 7a05 	vstr	s14, [r4, #20]
d005512e:	edc4 7a06 	vstr	s15, [r4, #24]
d0055132:	f7fe ffb3 	bl	d005409c <rotateAroundAxis>
d0055136:	eef0 6a40 	vmov.f32	s13, s0
d005513a:	eeb0 7a60 	vmov.f32	s14, s1
d005513e:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0055142:	eef0 7a41 	vmov.f32	s15, s2
d0055146:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d005514a:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d005514e:	eeb0 3a68 	vmov.f32	s6, s17
d0055152:	eddd 1a04 	vldr	s3, [sp, #16]
d0055156:	ed9d 2a05 	vldr	s4, [sp, #20]
d005515a:	eddd 2a06 	vldr	s5, [sp, #24]
d005515e:	edc4 6a07 	vstr	s13, [r4, #28]
d0055162:	ed84 7a08 	vstr	s14, [r4, #32]
d0055166:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d005516a:	f7fe ff97 	bl	d005409c <rotateAroundAxis>
d005516e:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0055172:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0055176:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d005517a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005517e:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0055182:	f43f aee9 	beq.w	d0054f58 <entityRotation.part.0+0x94>
d0055186:	eeb0 3a48 	vmov.f32	s6, s16
d005518a:	eddd 1a07 	vldr	s3, [sp, #28]
d005518e:	ed9d 2a08 	vldr	s4, [sp, #32]
d0055192:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0055196:	ed94 0a04 	vldr	s0, [r4, #16]
d005519a:	edd4 0a05 	vldr	s1, [r4, #20]
d005519e:	ed94 1a06 	vldr	s2, [r4, #24]
d00551a2:	e70b      	b.n	d0054fbc <entityRotation.part.0+0xf8>
d00551a4:	d00f50a0 	.word	0xd00f50a0
d00551a8:	00000000 	.word	0x00000000
d00551ac:	f104 0328 	add.w	r3, r4, #40	; 0x28
d00551b0:	f10d 0c04 	add.w	ip, sp, #4
d00551b4:	eeb0 3a40 	vmov.f32	s6, s0
d00551b8:	edd4 0a05 	vldr	s1, [r4, #20]
d00551bc:	ed94 0a04 	vldr	s0, [r4, #16]
d00551c0:	ed94 1a06 	vldr	s2, [r4, #24]
d00551c4:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d00551c8:	e88c 0007 	stmia.w	ip, {r0, r1, r2}
d00551cc:	eddd 1a01 	vldr	s3, [sp, #4]
d00551d0:	ed9d 2a02 	vldr	s4, [sp, #8]
d00551d4:	eddd 2a03 	vldr	s5, [sp, #12]
d00551d8:	f7fe ff60 	bl	d005409c <rotateAroundAxis>
d00551dc:	eef0 6a40 	vmov.f32	s13, s0
d00551e0:	eeb0 7a60 	vmov.f32	s14, s1
d00551e4:	ed94 0a07 	vldr	s0, [r4, #28]
d00551e8:	eef0 7a41 	vmov.f32	s15, s2
d00551ec:	edd4 0a08 	vldr	s1, [r4, #32]
d00551f0:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00551f4:	eeb0 3a49 	vmov.f32	s6, s18
d00551f8:	eddd 1a01 	vldr	s3, [sp, #4]
d00551fc:	ed9d 2a02 	vldr	s4, [sp, #8]
d0055200:	eddd 2a03 	vldr	s5, [sp, #12]
d0055204:	edc4 6a04 	vstr	s13, [r4, #16]
d0055208:	ed84 7a05 	vstr	s14, [r4, #20]
d005520c:	edc4 7a06 	vstr	s15, [r4, #24]
d0055210:	f7fe ff44 	bl	d005409c <rotateAroundAxis>
d0055214:	eef0 6a40 	vmov.f32	s13, s0
d0055218:	eeb0 7a60 	vmov.f32	s14, s1
d005521c:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0055220:	eef0 7a41 	vmov.f32	s15, s2
d0055224:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0055228:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d005522c:	eeb0 3a49 	vmov.f32	s6, s18
d0055230:	eddd 1a01 	vldr	s3, [sp, #4]
d0055234:	ed9d 2a02 	vldr	s4, [sp, #8]
d0055238:	eddd 2a03 	vldr	s5, [sp, #12]
d005523c:	edc4 6a07 	vstr	s13, [r4, #28]
d0055240:	ed84 7a08 	vstr	s14, [r4, #32]
d0055244:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0055248:	f7fe ff28 	bl	d005409c <rotateAroundAxis>
d005524c:	eef5 8a40 	vcmp.f32	s17, #0.0
d0055250:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0055254:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0055258:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005525c:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0055260:	f43f ae90 	beq.w	d0054f84 <entityRotation.part.0+0xc0>
d0055264:	197b      	adds	r3, r7, r5
d0055266:	f10d 0c10 	add.w	ip, sp, #16
d005526a:	ed94 0a04 	vldr	s0, [r4, #16]
d005526e:	eeb0 3a68 	vmov.f32	s6, s17
d0055272:	eb06 1343 	add.w	r3, r6, r3, lsl #5
d0055276:	edd4 0a05 	vldr	s1, [r4, #20]
d005527a:	ed94 1a06 	vldr	s2, [r4, #24]
d005527e:	331c      	adds	r3, #28
d0055280:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0055284:	e88c 0007 	stmia.w	ip, {r0, r1, r2}
d0055288:	eddd 1a04 	vldr	s3, [sp, #16]
d005528c:	ed9d 2a05 	vldr	s4, [sp, #20]
d0055290:	eddd 2a06 	vldr	s5, [sp, #24]
d0055294:	f7fe ff02 	bl	d005409c <rotateAroundAxis>
d0055298:	eef0 6a40 	vmov.f32	s13, s0
d005529c:	eeb0 7a60 	vmov.f32	s14, s1
d00552a0:	ed94 0a07 	vldr	s0, [r4, #28]
d00552a4:	eef0 7a41 	vmov.f32	s15, s2
d00552a8:	edd4 0a08 	vldr	s1, [r4, #32]
d00552ac:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00552b0:	eeb0 3a68 	vmov.f32	s6, s17
d00552b4:	eddd 1a04 	vldr	s3, [sp, #16]
d00552b8:	ed9d 2a05 	vldr	s4, [sp, #20]
d00552bc:	eddd 2a06 	vldr	s5, [sp, #24]
d00552c0:	edc4 6a04 	vstr	s13, [r4, #16]
d00552c4:	ed84 7a05 	vstr	s14, [r4, #20]
d00552c8:	edc4 7a06 	vstr	s15, [r4, #24]
d00552cc:	f7fe fee6 	bl	d005409c <rotateAroundAxis>
d00552d0:	eef0 6a40 	vmov.f32	s13, s0
d00552d4:	eeb0 7a60 	vmov.f32	s14, s1
d00552d8:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00552dc:	eef0 7a41 	vmov.f32	s15, s2
d00552e0:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00552e4:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00552e8:	eeb0 3a68 	vmov.f32	s6, s17
d00552ec:	eddd 1a04 	vldr	s3, [sp, #16]
d00552f0:	ed9d 2a05 	vldr	s4, [sp, #20]
d00552f4:	eddd 2a06 	vldr	s5, [sp, #24]
d00552f8:	edc4 6a07 	vstr	s13, [r4, #28]
d00552fc:	ed84 7a08 	vstr	s14, [r4, #32]
d0055300:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0055304:	f7fe feca 	bl	d005409c <rotateAroundAxis>
d0055308:	eeb5 8a40 	vcmp.f32	s16, #0.0
d005530c:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0055310:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0055314:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055318:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d005531c:	f43f ae1c 	beq.w	d0054f58 <entityRotation.part.0+0x94>
d0055320:	e635      	b.n	d0054f8e <entityRotation.part.0+0xca>
d0055322:	bf00      	nop

d0055324 <meshComputeBoundsRadius>:
d0055324:	b1f0      	cbz	r0, d0055364 <meshComputeBoundsRadius+0x40>
d0055326:	6803      	ldr	r3, [r0, #0]
d0055328:	b1e3      	cbz	r3, d0055364 <meshComputeBoundsRadius+0x40>
d005532a:	6842      	ldr	r2, [r0, #4]
d005532c:	2a00      	cmp	r2, #0
d005532e:	dd19      	ble.n	d0055364 <meshComputeBoundsRadius+0x40>
d0055330:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d0055334:	ed9f 6a0d 	vldr	s12, [pc, #52]	; d005536c <meshComputeBoundsRadius+0x48>
d0055338:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d005533c:	edd3 7a01 	vldr	s15, [r3, #4]
d0055340:	330c      	adds	r3, #12
d0055342:	ed53 6a03 	vldr	s13, [r3, #-12]
d0055346:	ee67 7aa7 	vmul.f32	s15, s15, s15
d005534a:	ed13 7a01 	vldr	s14, [r3, #-4]
d005534e:	429a      	cmp	r2, r3
d0055350:	eee6 7aa6 	vfma.f32	s15, s13, s13
d0055354:	eee7 7a07 	vfma.f32	s15, s14, s14
d0055358:	fe86 6a27 	vmaxnm.f32	s12, s12, s15
d005535c:	d1ee      	bne.n	d005533c <meshComputeBoundsRadius+0x18>
d005535e:	eeb1 0ac6 	vsqrt.f32	s0, s12
d0055362:	4770      	bx	lr
d0055364:	ed9f 0a01 	vldr	s0, [pc, #4]	; d005536c <meshComputeBoundsRadius+0x48>
d0055368:	4770      	bx	lr
d005536a:	bf00      	nop
d005536c:	00000000 	.word	0x00000000

d0055370 <entityWorldSpawn>:
d0055370:	b4f0      	push	{r4, r5, r6, r7}
d0055372:	4d20      	ldr	r5, [pc, #128]	; (d00553f4 <entityWorldSpawn+0x84>)
d0055374:	b084      	sub	sp, #16
d0055376:	2300      	movs	r3, #0
d0055378:	462a      	mov	r2, r5
d005537a:	ed8d 0a01 	vstr	s0, [sp, #4]
d005537e:	edcd 0a02 	vstr	s1, [sp, #8]
d0055382:	ed8d 1a03 	vstr	s2, [sp, #12]
d0055386:	e003      	b.n	d0055390 <entityWorldSpawn+0x20>
d0055388:	3301      	adds	r3, #1
d005538a:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d005538e:	d02b      	beq.n	d00553e8 <entityWorldSpawn+0x78>
d0055390:	f892 4034 	ldrb.w	r4, [r2, #52]	; 0x34
d0055394:	3260      	adds	r2, #96	; 0x60
d0055396:	2c00      	cmp	r4, #0
d0055398:	d1f6      	bne.n	d0055388 <entityWorldSpawn+0x18>
d005539a:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d005539e:	4f16      	ldr	r7, [pc, #88]	; (d00553f8 <entityWorldSpawn+0x88>)
d00553a0:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d00553a4:	2600      	movs	r6, #0
d00553a6:	eb05 1542 	add.w	r5, r5, r2, lsl #5
d00553aa:	f240 1c01 	movw	ip, #257	; 0x101
d00553ae:	eb07 1742 	add.w	r7, r7, r2, lsl #5
d00553b2:	aa04      	add	r2, sp, #16
d00553b4:	60e8      	str	r0, [r5, #12]
d00553b6:	61e9      	str	r1, [r5, #28]
d00553b8:	62e9      	str	r1, [r5, #44]	; 0x2c
d00553ba:	61a9      	str	r1, [r5, #24]
d00553bc:	622e      	str	r6, [r5, #32]
d00553be:	626e      	str	r6, [r5, #36]	; 0x24
d00553c0:	62ae      	str	r6, [r5, #40]	; 0x28
d00553c2:	632e      	str	r6, [r5, #48]	; 0x30
d00553c4:	612e      	str	r6, [r5, #16]
d00553c6:	616e      	str	r6, [r5, #20]
d00553c8:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d00553cc:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d00553d0:	4618      	mov	r0, r3
d00553d2:	f8a7 c014 	strh.w	ip, [r7, #20]
d00553d6:	f885 4036 	strb.w	r4, [r5, #54]	; 0x36
d00553da:	63ee      	str	r6, [r5, #60]	; 0x3c
d00553dc:	642e      	str	r6, [r5, #64]	; 0x40
d00553de:	646e      	str	r6, [r5, #68]	; 0x44
d00553e0:	63ae      	str	r6, [r5, #56]	; 0x38
d00553e2:	b004      	add	sp, #16
d00553e4:	bcf0      	pop	{r4, r5, r6, r7}
d00553e6:	4770      	bx	lr
d00553e8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d00553ec:	4618      	mov	r0, r3
d00553ee:	b004      	add	sp, #16
d00553f0:	bcf0      	pop	{r4, r5, r6, r7}
d00553f2:	4770      	bx	lr
d00553f4:	d00f50a0 	.word	0xd00f50a0
d00553f8:	d00f50c0 	.word	0xd00f50c0

d00553fc <entitySetPosition>:
d00553fc:	b084      	sub	sp, #16
d00553fe:	28ff      	cmp	r0, #255	; 0xff
d0055400:	ed8d 0a01 	vstr	s0, [sp, #4]
d0055404:	edcd 0a02 	vstr	s1, [sp, #8]
d0055408:	ed8d 1a03 	vstr	s2, [sp, #12]
d005540c:	d80e      	bhi.n	d005542c <entitySetPosition+0x30>
d005540e:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0055412:	4b07      	ldr	r3, [pc, #28]	; (d0055430 <entitySetPosition+0x34>)
d0055414:	eb03 1340 	add.w	r3, r3, r0, lsl #5
d0055418:	f893 2034 	ldrb.w	r2, [r3, #52]	; 0x34
d005541c:	b132      	cbz	r2, d005542c <entitySetPosition+0x30>
d005541e:	68da      	ldr	r2, [r3, #12]
d0055420:	b122      	cbz	r2, d005542c <entitySetPosition+0x30>
d0055422:	aa04      	add	r2, sp, #16
d0055424:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0055428:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d005542c:	b004      	add	sp, #16
d005542e:	4770      	bx	lr
d0055430:	d00f50a0 	.word	0xd00f50a0

d0055434 <entityGetPosition>:
d0055434:	28ff      	cmp	r0, #255	; 0xff
d0055436:	b088      	sub	sp, #32
d0055438:	d80e      	bhi.n	d0055458 <entityGetPosition+0x24>
d005543a:	4b0d      	ldr	r3, [pc, #52]	; (d0055470 <entityGetPosition+0x3c>)
d005543c:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0055440:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d0055444:	f890 3034 	ldrb.w	r3, [r0, #52]	; 0x34
d0055448:	b133      	cbz	r3, d0055458 <entityGetPosition+0x24>
d005544a:	68c3      	ldr	r3, [r0, #12]
d005544c:	b123      	cbz	r3, d0055458 <entityGetPosition+0x24>
d005544e:	ab08      	add	r3, sp, #32
d0055450:	c807      	ldmia	r0, {r0, r1, r2}
d0055452:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0055456:	e003      	b.n	d0055460 <entityGetPosition+0x2c>
d0055458:	2300      	movs	r3, #0
d005545a:	9305      	str	r3, [sp, #20]
d005545c:	9306      	str	r3, [sp, #24]
d005545e:	9307      	str	r3, [sp, #28]
d0055460:	ed9d 0a05 	vldr	s0, [sp, #20]
d0055464:	eddd 0a06 	vldr	s1, [sp, #24]
d0055468:	ed9d 1a07 	vldr	s2, [sp, #28]
d005546c:	b008      	add	sp, #32
d005546e:	4770      	bx	lr
d0055470:	d00f50a0 	.word	0xd00f50a0

d0055474 <entityMoveForward>:
d0055474:	28ff      	cmp	r0, #255	; 0xff
d0055476:	d82b      	bhi.n	d00554d0 <entityMoveForward+0x5c>
d0055478:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d005547c:	b510      	push	{r4, lr}
d005547e:	4c15      	ldr	r4, [pc, #84]	; (d00554d4 <entityMoveForward+0x60>)
d0055480:	b084      	sub	sp, #16
d0055482:	eb04 1440 	add.w	r4, r4, r0, lsl #5
d0055486:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d005548a:	b1fb      	cbz	r3, d00554cc <entityMoveForward+0x58>
d005548c:	68e3      	ldr	r3, [r4, #12]
d005548e:	b1eb      	cbz	r3, d00554cc <entityMoveForward+0x58>
d0055490:	eef0 1a40 	vmov.f32	s3, s0
d0055494:	edd4 0a05 	vldr	s1, [r4, #20]
d0055498:	ed94 0a04 	vldr	s0, [r4, #16]
d005549c:	ed94 1a06 	vldr	s2, [r4, #24]
d00554a0:	f7fe fd80 	bl	d0053fa4 <vec3Scale>
d00554a4:	eef0 1a40 	vmov.f32	s3, s0
d00554a8:	eeb0 2a60 	vmov.f32	s4, s1
d00554ac:	ed94 0a00 	vldr	s0, [r4]
d00554b0:	eef0 2a41 	vmov.f32	s5, s2
d00554b4:	edd4 0a01 	vldr	s1, [r4, #4]
d00554b8:	ed94 1a02 	vldr	s2, [r4, #8]
d00554bc:	f7fe fd68 	bl	d0053f90 <vec3Add>
d00554c0:	ed84 0a00 	vstr	s0, [r4]
d00554c4:	edc4 0a01 	vstr	s1, [r4, #4]
d00554c8:	ed84 1a02 	vstr	s2, [r4, #8]
d00554cc:	b004      	add	sp, #16
d00554ce:	bd10      	pop	{r4, pc}
d00554d0:	4770      	bx	lr
d00554d2:	bf00      	nop
d00554d4:	d00f50a0 	.word	0xd00f50a0

d00554d8 <entityTurnLocal>:
d00554d8:	28ff      	cmp	r0, #255	; 0xff
d00554da:	d82c      	bhi.n	d0055536 <entityTurnLocal+0x5e>
d00554dc:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d00554e0:	b510      	push	{r4, lr}
d00554e2:	4c65      	ldr	r4, [pc, #404]	; (d0055678 <entityTurnLocal+0x1a0>)
d00554e4:	eb04 1440 	add.w	r4, r4, r0, lsl #5
d00554e8:	ed2d 8b04 	vpush	{d8-d9}
d00554ec:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d00554f0:	b1f3      	cbz	r3, d0055530 <entityTurnLocal+0x58>
d00554f2:	68e3      	ldr	r3, [r4, #12]
d00554f4:	b1e3      	cbz	r3, d0055530 <entityTurnLocal+0x58>
d00554f6:	eeb5 0a40 	vcmp.f32	s0, #0.0
d00554fa:	eeb0 9a40 	vmov.f32	s18, s0
d00554fe:	eef0 8a60 	vmov.f32	s17, s1
d0055502:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055506:	eeb0 8a41 	vmov.f32	s16, s2
d005550a:	f040 8081 	bne.w	d0055610 <entityTurnLocal+0x138>
d005550e:	eef5 8a40 	vcmp.f32	s17, #0.0
d0055512:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055516:	d148      	bne.n	d00555aa <entityTurnLocal+0xd2>
d0055518:	eeb5 8a40 	vcmp.f32	s16, #0.0
d005551c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055520:	d10a      	bne.n	d0055538 <entityTurnLocal+0x60>
d0055522:	4620      	mov	r0, r4
d0055524:	ecbd 8b04 	vpop	{d8-d9}
d0055528:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d005552c:	f7ff bc74 	b.w	d0054e18 <normalizeEntity.part.0>
d0055530:	ecbd 8b04 	vpop	{d8-d9}
d0055534:	bd10      	pop	{r4, pc}
d0055536:	4770      	bx	lr
d0055538:	ed94 0a07 	vldr	s0, [r4, #28]
d005553c:	eeb0 3a48 	vmov.f32	s6, s16
d0055540:	edd4 0a08 	vldr	s1, [r4, #32]
d0055544:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0055548:	edd4 1a04 	vldr	s3, [r4, #16]
d005554c:	ed94 2a05 	vldr	s4, [r4, #20]
d0055550:	edd4 2a06 	vldr	s5, [r4, #24]
d0055554:	f7fe fda2 	bl	d005409c <rotateAroundAxis>
d0055558:	eef0 6a40 	vmov.f32	s13, s0
d005555c:	eeb0 7a60 	vmov.f32	s14, s1
d0055560:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0055564:	eef0 7a41 	vmov.f32	s15, s2
d0055568:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d005556c:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0055570:	eeb0 3a48 	vmov.f32	s6, s16
d0055574:	edd4 1a04 	vldr	s3, [r4, #16]
d0055578:	ed94 2a05 	vldr	s4, [r4, #20]
d005557c:	edd4 2a06 	vldr	s5, [r4, #24]
d0055580:	edc4 6a07 	vstr	s13, [r4, #28]
d0055584:	ed84 7a08 	vstr	s14, [r4, #32]
d0055588:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d005558c:	f7fe fd86 	bl	d005409c <rotateAroundAxis>
d0055590:	4620      	mov	r0, r4
d0055592:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0055596:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d005559a:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d005559e:	ecbd 8b04 	vpop	{d8-d9}
d00555a2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d00555a6:	f7ff bc37 	b.w	d0054e18 <normalizeEntity.part.0>
d00555aa:	ed94 0a04 	vldr	s0, [r4, #16]
d00555ae:	eeb0 3a68 	vmov.f32	s6, s17
d00555b2:	edd4 0a05 	vldr	s1, [r4, #20]
d00555b6:	ed94 1a06 	vldr	s2, [r4, #24]
d00555ba:	edd4 1a07 	vldr	s3, [r4, #28]
d00555be:	ed94 2a08 	vldr	s4, [r4, #32]
d00555c2:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d00555c6:	f7fe fd69 	bl	d005409c <rotateAroundAxis>
d00555ca:	eef0 6a40 	vmov.f32	s13, s0
d00555ce:	eeb0 7a60 	vmov.f32	s14, s1
d00555d2:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00555d6:	eef0 7a41 	vmov.f32	s15, s2
d00555da:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00555de:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00555e2:	eeb0 3a68 	vmov.f32	s6, s17
d00555e6:	edd4 1a07 	vldr	s3, [r4, #28]
d00555ea:	ed94 2a08 	vldr	s4, [r4, #32]
d00555ee:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d00555f2:	edc4 6a04 	vstr	s13, [r4, #16]
d00555f6:	ed84 7a05 	vstr	s14, [r4, #20]
d00555fa:	edc4 7a06 	vstr	s15, [r4, #24]
d00555fe:	f7fe fd4d 	bl	d005409c <rotateAroundAxis>
d0055602:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0055606:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d005560a:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d005560e:	e783      	b.n	d0055518 <entityTurnLocal+0x40>
d0055610:	eeb0 3a40 	vmov.f32	s6, s0
d0055614:	edd4 0a05 	vldr	s1, [r4, #20]
d0055618:	ed94 0a04 	vldr	s0, [r4, #16]
d005561c:	ed94 1a06 	vldr	s2, [r4, #24]
d0055620:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d0055624:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d0055628:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d005562c:	f7fe fd36 	bl	d005409c <rotateAroundAxis>
d0055630:	eef0 6a40 	vmov.f32	s13, s0
d0055634:	eeb0 7a60 	vmov.f32	s14, s1
d0055638:	ed94 0a07 	vldr	s0, [r4, #28]
d005563c:	eef0 7a41 	vmov.f32	s15, s2
d0055640:	edd4 0a08 	vldr	s1, [r4, #32]
d0055644:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0055648:	eeb0 3a49 	vmov.f32	s6, s18
d005564c:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d0055650:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d0055654:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d0055658:	edc4 6a04 	vstr	s13, [r4, #16]
d005565c:	ed84 7a05 	vstr	s14, [r4, #20]
d0055660:	edc4 7a06 	vstr	s15, [r4, #24]
d0055664:	f7fe fd1a 	bl	d005409c <rotateAroundAxis>
d0055668:	ed84 0a07 	vstr	s0, [r4, #28]
d005566c:	edc4 0a08 	vstr	s1, [r4, #32]
d0055670:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d0055674:	e74b      	b.n	d005550e <entityTurnLocal+0x36>
d0055676:	bf00      	nop
d0055678:	d00f50a0 	.word	0xd00f50a0

d005567c <entityRotation>:
d005567c:	28ff      	cmp	r0, #255	; 0xff
d005567e:	d80b      	bhi.n	d0055698 <entityRotation+0x1c>
d0055680:	4a06      	ldr	r2, [pc, #24]	; (d005569c <entityRotation+0x20>)
d0055682:	eb00 0340 	add.w	r3, r0, r0, lsl #1
d0055686:	eb02 1343 	add.w	r3, r2, r3, lsl #5
d005568a:	f893 2034 	ldrb.w	r2, [r3, #52]	; 0x34
d005568e:	b11a      	cbz	r2, d0055698 <entityRotation+0x1c>
d0055690:	68db      	ldr	r3, [r3, #12]
d0055692:	b10b      	cbz	r3, d0055698 <entityRotation+0x1c>
d0055694:	f7ff bc16 	b.w	d0054ec4 <entityRotation.part.0>
d0055698:	4770      	bx	lr
d005569a:	bf00      	nop
d005569c:	d00f50a0 	.word	0xd00f50a0

d00556a0 <createBox>:
d00556a0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00556a4:	ed2d 8b04 	vpush	{d8-d9}
d00556a8:	b0e1      	sub	sp, #388	; 0x184
d00556aa:	f04f 0824 	mov.w	r8, #36	; 0x24
d00556ae:	4606      	mov	r6, r0
d00556b0:	2100      	movs	r1, #0
d00556b2:	f20d 1547 	addw	r5, sp, #327	; 0x147
d00556b6:	4642      	mov	r2, r8
d00556b8:	eeb0 8a41 	vmov.f32	s16, s2
d00556bc:	9601      	str	r6, [sp, #4]
d00556be:	f025 051f 	bic.w	r5, r5, #31
d00556c2:	eeb0 9a40 	vmov.f32	s18, s0
d00556c6:	eef0 8a60 	vmov.f32	s17, s1
d00556ca:	f04f 090c 	mov.w	r9, #12
d00556ce:	f105 001c 	add.w	r0, r5, #28
d00556d2:	f04f 0ac0 	mov.w	sl, #192	; 0xc0
d00556d6:	f003 fa77 	bl	d0058bc8 <memset>
d00556da:	2308      	movs	r3, #8
d00556dc:	2060      	movs	r0, #96	; 0x60
d00556de:	f04f 0b04 	mov.w	fp, #4
d00556e2:	606b      	str	r3, [r5, #4]
d00556e4:	f003 fa44 	bl	d0058b70 <malloc>
d00556e8:	eeb6 1a00 	vmov.f32	s2, #96	; 0x3f000000  0.5
d00556ec:	4604      	mov	r4, r0
d00556ee:	2060      	movs	r0, #96	; 0x60
d00556f0:	f8c5 900c 	str.w	r9, [r5, #12]
d00556f4:	602c      	str	r4, [r5, #0]
d00556f6:	2604      	movs	r6, #4
d00556f8:	ee29 0a01 	vmul.f32	s0, s18, s2
d00556fc:	ee68 0a81 	vmul.f32	s1, s17, s2
d0055700:	ee28 1a01 	vmul.f32	s2, s16, s2
d0055704:	eef1 6a40 	vneg.f32	s13, s0
d0055708:	ed84 0a03 	vstr	s0, [r4, #12]
d005570c:	eeb1 7a60 	vneg.f32	s14, s1
d0055710:	ed84 0a06 	vstr	s0, [r4, #24]
d0055714:	eef1 7a41 	vneg.f32	s15, s2
d0055718:	ed84 1a08 	vstr	s2, [r4, #32]
d005571c:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0055720:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0055724:	ed84 0a0f 	vstr	s0, [r4, #60]	; 0x3c
d0055728:	edc4 0a10 	vstr	s1, [r4, #64]	; 0x40
d005572c:	ed84 0a12 	vstr	s0, [r4, #72]	; 0x48
d0055730:	edc4 0a13 	vstr	s1, [r4, #76]	; 0x4c
d0055734:	ed84 1a14 	vstr	s2, [r4, #80]	; 0x50
d0055738:	edc4 0a16 	vstr	s1, [r4, #88]	; 0x58
d005573c:	ed84 1a17 	vstr	s2, [r4, #92]	; 0x5c
d0055740:	edc4 6a00 	vstr	s13, [r4]
d0055744:	edc4 6a09 	vstr	s13, [r4, #36]	; 0x24
d0055748:	edc4 6a0c 	vstr	s13, [r4, #48]	; 0x30
d005574c:	edc4 6a15 	vstr	s13, [r4, #84]	; 0x54
d0055750:	ed84 7a01 	vstr	s14, [r4, #4]
d0055754:	ed84 7a04 	vstr	s14, [r4, #16]
d0055758:	ed84 7a07 	vstr	s14, [r4, #28]
d005575c:	ed84 7a0a 	vstr	s14, [r4, #40]	; 0x28
d0055760:	edc4 7a02 	vstr	s15, [r4, #8]
d0055764:	edc4 7a05 	vstr	s15, [r4, #20]
d0055768:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d005576c:	edc4 7a11 	vstr	s15, [r4, #68]	; 0x44
d0055770:	f003 f9fe 	bl	d0058b70 <malloc>
d0055774:	4607      	mov	r7, r0
d0055776:	2260      	movs	r2, #96	; 0x60
d0055778:	a802      	add	r0, sp, #8
d005577a:	4987      	ldr	r1, [pc, #540]	; (d0055998 <createBox+0x2f8>)
d005577c:	60af      	str	r7, [r5, #8]
d005577e:	f003 fa15 	bl	d0058bac <memcpy>
d0055782:	a902      	add	r1, sp, #8
d0055784:	2260      	movs	r2, #96	; 0x60
d0055786:	4638      	mov	r0, r7
d0055788:	f003 fa10 	bl	d0058bac <memcpy>
d005578c:	4650      	mov	r0, sl
d005578e:	f8c5 9014 	str.w	r9, [r5, #20]
d0055792:	f003 f9ed 	bl	d0058b70 <malloc>
d0055796:	4607      	mov	r7, r0
d0055798:	4652      	mov	r2, sl
d005579a:	a81a      	add	r0, sp, #104	; 0x68
d005579c:	2100      	movs	r1, #0
d005579e:	612f      	str	r7, [r5, #16]
d00557a0:	f003 fa12 	bl	d0058bc8 <memset>
d00557a4:	f04f 0c02 	mov.w	ip, #2
d00557a8:	4638      	mov	r0, r7
d00557aa:	2705      	movs	r7, #5
d00557ac:	4652      	mov	r2, sl
d00557ae:	f04f 0903 	mov.w	r9, #3
d00557b2:	f04f 0a06 	mov.w	sl, #6
d00557b6:	f88d 80b4 	strb.w	r8, [sp, #180]	; 0xb4
d00557ba:	f04f 0e01 	mov.w	lr, #1
d00557be:	f88d 80c4 	strb.w	r8, [sp, #196]	; 0xc4
d00557c2:	f04f 0804 	mov.w	r8, #4
d00557c6:	f8cd c070 	str.w	ip, [sp, #112]	; 0x70
d00557ca:	2307      	movs	r3, #7
d00557cc:	f8cd c07c 	str.w	ip, [sp, #124]	; 0x7c
d00557d0:	2122      	movs	r1, #34	; 0x22
d00557d2:	f8cd c0e0 	str.w	ip, [sp, #224]	; 0xe0
d00557d6:	f04f 0c06 	mov.w	ip, #6
d00557da:	9724      	str	r7, [sp, #144]	; 0x90
d00557dc:	972c      	str	r7, [sp, #176]	; 0xb0
d00557de:	972f      	str	r7, [sp, #188]	; 0xbc
d00557e0:	2707      	movs	r7, #7
d00557e2:	f8cd 9080 	str.w	r9, [sp, #128]	; 0x80
d00557e6:	f8cd 9100 	str.w	r9, [sp, #256]	; 0x100
d00557ea:	f04f 0905 	mov.w	r9, #5
d00557ee:	f8cd a0a0 	str.w	sl, [sp, #160]	; 0xa0
d00557f2:	f8cd a0d0 	str.w	sl, [sp, #208]	; 0xd0
d00557f6:	f04f 0a01 	mov.w	sl, #1
d00557fa:	f8cd 80ac 	str.w	r8, [sp, #172]	; 0xac
d00557fe:	f8cd 8110 	str.w	r8, [sp, #272]	; 0x110
d0055802:	f04f 0801 	mov.w	r8, #1
d0055806:	933c      	str	r3, [sp, #240]	; 0xf0
d0055808:	2323      	movs	r3, #35	; 0x23
d005580a:	f8cd e06c 	str.w	lr, [sp, #108]	; 0x6c
d005580e:	f8cd e0c0 	str.w	lr, [sp, #192]	; 0xc0
d0055812:	f04f 0e25 	mov.w	lr, #37	; 0x25
d0055816:	f88d 1074 	strb.w	r1, [sp, #116]	; 0x74
d005581a:	f88d 1084 	strb.w	r1, [sp, #132]	; 0x84
d005581e:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
d0055822:	f88d 1104 	strb.w	r1, [sp, #260]	; 0x104
d0055826:	a91a      	add	r1, sp, #104	; 0x68
d0055828:	f88d 3094 	strb.w	r3, [sp, #148]	; 0x94
d005582c:	f88d 30a4 	strb.w	r3, [sp, #164]	; 0xa4
d0055830:	f88d e0d4 	strb.w	lr, [sp, #212]	; 0xd4
d0055834:	f88d e0e4 	strb.w	lr, [sp, #228]	; 0xe4
d0055838:	e9cd bc22 	strd	fp, ip, [sp, #136]	; 0x88
d005583c:	e9cd 6726 	strd	r6, r7, [sp, #152]	; 0x98
d0055840:	f04f 0b06 	mov.w	fp, #6
d0055844:	2602      	movs	r6, #2
d0055846:	2706      	movs	r7, #6
d0055848:	e9cd 8932 	strd	r8, r9, [sp, #200]	; 0xc8
d005584c:	e9cd ab36 	strd	sl, fp, [sp, #216]	; 0xd8
d0055850:	e9cd 673a 	strd	r6, r7, [sp, #232]	; 0xe8
d0055854:	f04f 0802 	mov.w	r8, #2
d0055858:	f04f 0907 	mov.w	r9, #7
d005585c:	f04f 0a03 	mov.w	sl, #3
d0055860:	f04f 0b07 	mov.w	fp, #7
d0055864:	2603      	movs	r6, #3
d0055866:	2704      	movs	r7, #4
d0055868:	e9cd 893e 	strd	r8, r9, [sp, #248]	; 0xf8
d005586c:	e9cd ab42 	strd	sl, fp, [sp, #264]	; 0x108
d0055870:	f88d 3114 	strb.w	r3, [sp, #276]	; 0x114
d0055874:	f88d 3124 	strb.w	r3, [sp, #292]	; 0x124
d0055878:	e9cd 6746 	strd	r6, r7, [sp, #280]	; 0x118
d005587c:	f003 f996 	bl	d0058bac <memcpy>
d0055880:	edd4 7a01 	vldr	s15, [r4, #4]
d0055884:	ed94 6a04 	vldr	s12, [r4, #16]
d0055888:	4628      	mov	r0, r5
d005588a:	edd4 5a0a 	vldr	s11, [r4, #40]	; 0x28
d005588e:	ee67 6aa7 	vmul.f32	s13, s15, s15
d0055892:	ed94 7a07 	vldr	s14, [r4, #28]
d0055896:	ee66 7a06 	vmul.f32	s15, s12, s12
d005589a:	ed94 6a0d 	vldr	s12, [r4, #52]	; 0x34
d005589e:	ee25 4aa5 	vmul.f32	s8, s11, s11
d00558a2:	ed94 3a00 	vldr	s6, [r4]
d00558a6:	ee27 7a07 	vmul.f32	s14, s14, s14
d00558aa:	edd4 3a03 	vldr	s7, [r4, #12]
d00558ae:	ee66 4a06 	vmul.f32	s9, s12, s12
d00558b2:	ed94 5a10 	vldr	s10, [r4, #64]	; 0x40
d00558b6:	eee3 6a03 	vfma.f32	s13, s6, s6
d00558ba:	edd4 5a13 	vldr	s11, [r4, #76]	; 0x4c
d00558be:	eee3 7aa3 	vfma.f32	s15, s7, s7
d00558c2:	ed94 6a16 	vldr	s12, [r4, #88]	; 0x58
d00558c6:	ee25 5a05 	vmul.f32	s10, s10, s10
d00558ca:	edd4 2a06 	vldr	s5, [r4, #24]
d00558ce:	ee65 5aa5 	vmul.f32	s11, s11, s11
d00558d2:	ed94 3a09 	vldr	s6, [r4, #36]	; 0x24
d00558d6:	ee26 6a06 	vmul.f32	s12, s12, s12
d00558da:	edd4 3a0c 	vldr	s7, [r4, #48]	; 0x30
d00558de:	eea2 7aa2 	vfma.f32	s14, s5, s5
d00558e2:	eea3 4a03 	vfma.f32	s8, s6, s6
d00558e6:	edd4 2a0f 	vldr	s5, [r4, #60]	; 0x3c
d00558ea:	ed94 3a12 	vldr	s6, [r4, #72]	; 0x48
d00558ee:	eee3 4aa3 	vfma.f32	s9, s7, s7
d00558f2:	edd4 3a15 	vldr	s7, [r4, #84]	; 0x54
d00558f6:	eea2 5aa2 	vfma.f32	s10, s5, s5
d00558fa:	eee3 5a03 	vfma.f32	s11, s6, s6
d00558fe:	ed94 3a02 	vldr	s6, [r4, #8]
d0055902:	eea3 6aa3 	vfma.f32	s12, s7, s7
d0055906:	edd4 3a05 	vldr	s7, [r4, #20]
d005590a:	eee3 6a03 	vfma.f32	s13, s6, s6
d005590e:	edd4 2a08 	vldr	s5, [r4, #32]
d0055912:	ed94 3a0b 	vldr	s6, [r4, #44]	; 0x2c
d0055916:	eee3 7aa3 	vfma.f32	s15, s7, s7
d005591a:	edd4 3a0e 	vldr	s7, [r4, #56]	; 0x38
d005591e:	eea2 7aa2 	vfma.f32	s14, s5, s5
d0055922:	eea3 4a03 	vfma.f32	s8, s6, s6
d0055926:	edd4 2a11 	vldr	s5, [r4, #68]	; 0x44
d005592a:	eee3 4aa3 	vfma.f32	s9, s7, s7
d005592e:	ed94 3a14 	vldr	s6, [r4, #80]	; 0x50
d0055932:	edd4 3a17 	vldr	s7, [r4, #92]	; 0x5c
d0055936:	eea2 5aa2 	vfma.f32	s10, s5, s5
d005593a:	eee3 5a03 	vfma.f32	s11, s6, s6
d005593e:	ed9f 3a17 	vldr	s6, [pc, #92]	; d005599c <createBox+0x2fc>
d0055942:	eea3 6aa3 	vfma.f32	s12, s7, s7
d0055946:	fec6 7aa7 	vmaxnm.f32	s15, s13, s15
d005594a:	fec7 7a83 	vmaxnm.f32	s15, s15, s6
d005594e:	fe87 7a87 	vmaxnm.f32	s14, s15, s14
d0055952:	fe87 7a04 	vmaxnm.f32	s14, s14, s8
d0055956:	fec7 7a24 	vmaxnm.f32	s15, s14, s9
d005595a:	fec7 7a85 	vmaxnm.f32	s15, s15, s10
d005595e:	fec7 7aa5 	vmaxnm.f32	s15, s15, s11
d0055962:	fec6 7a27 	vmaxnm.f32	s15, s12, s15
d0055966:	eeb1 7ae7 	vsqrt.f32	s14, s15
d005596a:	ed85 7a06 	vstr	s14, [r5, #24]
d005596e:	f7fb fe9f 	bl	d00516b0 <meshSetDefaultMaterial>
d0055972:	9e01      	ldr	r6, [sp, #4]
d0055974:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0055976:	4634      	mov	r4, r6
d0055978:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d005597a:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d005597c:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d005597e:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0055980:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0055982:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0055986:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d005598a:	4630      	mov	r0, r6
d005598c:	b061      	add	sp, #388	; 0x184
d005598e:	ecbd 8b04 	vpop	{d8-d9}
d0055992:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0055996:	bf00      	nop
d0055998:	d005a3a0 	.word	0xd005a3a0
d005599c:	00000000 	.word	0x00000000

d00559a0 <copyMesh>:
d00559a0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00559a4:	460f      	mov	r7, r1
d00559a6:	b083      	sub	sp, #12
d00559a8:	2240      	movs	r2, #64	; 0x40
d00559aa:	2100      	movs	r1, #0
d00559ac:	4606      	mov	r6, r0
d00559ae:	f003 f90b 	bl	d0058bc8 <memset>
d00559b2:	2f00      	cmp	r7, #0
d00559b4:	d077      	beq.n	d0055aa6 <copyMesh+0x106>
d00559b6:	687b      	ldr	r3, [r7, #4]
d00559b8:	697a      	ldr	r2, [r7, #20]
d00559ba:	2b00      	cmp	r3, #0
d00559bc:	f8d7 800c 	ldr.w	r8, [r7, #12]
d00559c0:	9301      	str	r3, [sp, #4]
d00559c2:	9200      	str	r2, [sp, #0]
d00559c4:	dc59      	bgt.n	d0055a7a <copyMesh+0xda>
d00559c6:	f1b8 0f00 	cmp.w	r8, #0
d00559ca:	f04f 0900 	mov.w	r9, #0
d00559ce:	dc5d      	bgt.n	d0055a8c <copyMesh+0xec>
d00559d0:	9b00      	ldr	r3, [sp, #0]
d00559d2:	f04f 0a00 	mov.w	sl, #0
d00559d6:	2b00      	cmp	r3, #0
d00559d8:	dc60      	bgt.n	d0055a9c <copyMesh+0xfc>
d00559da:	f04f 0c00 	mov.w	ip, #0
d00559de:	9b01      	ldr	r3, [sp, #4]
d00559e0:	2b00      	cmp	r3, #0
d00559e2:	dd0f      	ble.n	d0055a04 <copyMesh+0x64>
d00559e4:	eb03 0543 	add.w	r5, r3, r3, lsl #1
d00559e8:	f8d7 e000 	ldr.w	lr, [r7]
d00559ec:	2300      	movs	r3, #0
d00559ee:	00ad      	lsls	r5, r5, #2
d00559f0:	eb0e 0203 	add.w	r2, lr, r3
d00559f4:	eb09 0403 	add.w	r4, r9, r3
d00559f8:	330c      	adds	r3, #12
d00559fa:	ca07      	ldmia	r2, {r0, r1, r2}
d00559fc:	429d      	cmp	r5, r3
d00559fe:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d0055a02:	d1f5      	bne.n	d00559f0 <copyMesh+0x50>
d0055a04:	f1b8 0f00 	cmp.w	r8, #0
d0055a08:	dd0b      	ble.n	d0055a22 <copyMesh+0x82>
d0055a0a:	68bc      	ldr	r4, [r7, #8]
d0055a0c:	2300      	movs	r3, #0
d0055a0e:	eb04 01c3 	add.w	r1, r4, r3, lsl #3
d0055a12:	eb0a 02c3 	add.w	r2, sl, r3, lsl #3
d0055a16:	3301      	adds	r3, #1
d0055a18:	c903      	ldmia	r1, {r0, r1}
d0055a1a:	4598      	cmp	r8, r3
d0055a1c:	e882 0003 	stmia.w	r2, {r0, r1}
d0055a20:	d1f5      	bne.n	d0055a0e <copyMesh+0x6e>
d0055a22:	9b00      	ldr	r3, [sp, #0]
d0055a24:	2b00      	cmp	r3, #0
d0055a26:	dd0e      	ble.n	d0055a46 <copyMesh+0xa6>
d0055a28:	f8d7 b010 	ldr.w	fp, [r7, #16]
d0055a2c:	ea4f 1e03 	mov.w	lr, r3, lsl #4
d0055a30:	2400      	movs	r4, #0
d0055a32:	eb0b 0304 	add.w	r3, fp, r4
d0055a36:	eb0c 0504 	add.w	r5, ip, r4
d0055a3a:	3410      	adds	r4, #16
d0055a3c:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
d0055a3e:	4574      	cmp	r4, lr
d0055a40:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d0055a44:	d1f5      	bne.n	d0055a32 <copyMesh+0x92>
d0055a46:	9a01      	ldr	r2, [sp, #4]
d0055a48:	f107 0520 	add.w	r5, r7, #32
d0055a4c:	69bb      	ldr	r3, [r7, #24]
d0055a4e:	f106 0420 	add.w	r4, r6, #32
d0055a52:	6072      	str	r2, [r6, #4]
d0055a54:	9a00      	ldr	r2, [sp, #0]
d0055a56:	61b3      	str	r3, [r6, #24]
d0055a58:	6172      	str	r2, [r6, #20]
d0055a5a:	f8c6 9000 	str.w	r9, [r6]
d0055a5e:	f8c6 c010 	str.w	ip, [r6, #16]
d0055a62:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0055a64:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0055a66:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0055a6a:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d0055a6e:	4630      	mov	r0, r6
d0055a70:	e9c6 a802 	strd	sl, r8, [r6, #8]
d0055a74:	b003      	add	sp, #12
d0055a76:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0055a7a:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0055a7e:	0080      	lsls	r0, r0, #2
d0055a80:	f003 f876 	bl	d0058b70 <malloc>
d0055a84:	f1b8 0f00 	cmp.w	r8, #0
d0055a88:	4681      	mov	r9, r0
d0055a8a:	dda1      	ble.n	d00559d0 <copyMesh+0x30>
d0055a8c:	ea4f 00c8 	mov.w	r0, r8, lsl #3
d0055a90:	f003 f86e 	bl	d0058b70 <malloc>
d0055a94:	9b00      	ldr	r3, [sp, #0]
d0055a96:	4682      	mov	sl, r0
d0055a98:	2b00      	cmp	r3, #0
d0055a9a:	dd9e      	ble.n	d00559da <copyMesh+0x3a>
d0055a9c:	0118      	lsls	r0, r3, #4
d0055a9e:	f003 f867 	bl	d0058b70 <malloc>
d0055aa2:	4684      	mov	ip, r0
d0055aa4:	e79b      	b.n	d00559de <copyMesh+0x3e>
d0055aa6:	2300      	movs	r3, #0
d0055aa8:	4630      	mov	r0, r6
d0055aaa:	e9c6 7700 	strd	r7, r7, [r6]
d0055aae:	e9c6 7702 	strd	r7, r7, [r6, #8]
d0055ab2:	e9c6 7704 	strd	r7, r7, [r6, #16]
d0055ab6:	61b3      	str	r3, [r6, #24]
d0055ab8:	b003      	add	sp, #12
d0055aba:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0055abe:	bf00      	nop

d0055ac0 <entityAllowHit>:
d0055ac0:	28ff      	cmp	r0, #255	; 0xff
d0055ac2:	d815      	bhi.n	d0055af0 <entityAllowHit+0x30>
d0055ac4:	4b0b      	ldr	r3, [pc, #44]	; (d0055af4 <entityAllowHit+0x34>)
d0055ac6:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0055aca:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d0055ace:	f890 3034 	ldrb.w	r3, [r0, #52]	; 0x34
d0055ad2:	b16b      	cbz	r3, d0055af0 <entityAllowHit+0x30>
d0055ad4:	68c3      	ldr	r3, [r0, #12]
d0055ad6:	b15b      	cbz	r3, d0055af0 <entityAllowHit+0x30>
d0055ad8:	f890 3035 	ldrb.w	r3, [r0, #53]	; 0x35
d0055adc:	b121      	cbz	r1, d0055ae8 <entityAllowHit+0x28>
d0055ade:	f043 0302 	orr.w	r3, r3, #2
d0055ae2:	f880 3035 	strb.w	r3, [r0, #53]	; 0x35
d0055ae6:	4770      	bx	lr
d0055ae8:	f023 0302 	bic.w	r3, r3, #2
d0055aec:	f880 3035 	strb.w	r3, [r0, #53]	; 0x35
d0055af0:	4770      	bx	lr
d0055af2:	bf00      	nop
d0055af4:	d00f50a0 	.word	0xd00f50a0

d0055af8 <buildLightingCLUT>:
d0055af8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0055afc:	f1b2 0900 	subs.w	r9, r2, #0
d0055b00:	b085      	sub	sp, #20
d0055b02:	9c0e      	ldr	r4, [sp, #56]	; 0x38
d0055b04:	f340 8212 	ble.w	d0055f2c <buildLightingCLUT+0x434>
d0055b08:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0055b0c:	4f24      	ldr	r7, [pc, #144]	; (d0055ba0 <buildLightingCLUT+0xa8>)
d0055b0e:	eb09 0c49 	add.w	ip, r9, r9, lsl #1
d0055b12:	edd4 4a00 	vldr	s9, [r4]
d0055b16:	ed94 5a01 	vldr	s10, [r4, #4]
d0055b1a:	eb09 0807 	add.w	r8, r9, r7
d0055b1e:	edd4 5a02 	vldr	s11, [r4, #8]
d0055b22:	eb07 0e49 	add.w	lr, r7, r9, lsl #1
d0055b26:	ed94 6a03 	vldr	s12, [r4, #12]
d0055b2a:	44bc      	add	ip, r7
d0055b2c:	edd4 6a04 	vldr	s13, [r4, #16]
d0055b30:	eb07 0789 	add.w	r7, r7, r9, lsl #2
d0055b34:	3904      	subs	r1, #4
d0055b36:	ee77 4ae4 	vsub.f32	s9, s15, s9
d0055b3a:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0055b3e:	ed9f 7a19 	vldr	s14, [pc, #100]	; d0055ba4 <buildLightingCLUT+0xac>
d0055b42:	ee77 5ae5 	vsub.f32	s11, s15, s11
d0055b46:	f100 067c 	add.w	r6, r0, #124	; 0x7c
d0055b4a:	ee37 6ac6 	vsub.f32	s12, s15, s12
d0055b4e:	eb00 0888 	add.w	r8, r0, r8, lsl #2
d0055b52:	ee77 6ae6 	vsub.f32	s13, s15, s13
d0055b56:	eb00 0e8e 	add.w	lr, r0, lr, lsl #2
d0055b5a:	eb00 0c8c 	add.w	ip, r0, ip, lsl #2
d0055b5e:	f3c3 4507 	ubfx	r5, r3, #16, #8
d0055b62:	eb00 0787 	add.w	r7, r0, r7, lsl #2
d0055b66:	f3c3 2007 	ubfx	r0, r3, #8, #8
d0055b6a:	eb01 0989 	add.w	r9, r1, r9, lsl #2
d0055b6e:	fec4 4a87 	vmaxnm.f32	s9, s9, s14
d0055b72:	0e1c      	lsrs	r4, r3, #24
d0055b74:	fe85 5a07 	vmaxnm.f32	s10, s10, s14
d0055b78:	b2da      	uxtb	r2, r3
d0055b7a:	fec5 5a87 	vmaxnm.f32	s11, s11, s14
d0055b7e:	fe86 6a07 	vmaxnm.f32	s12, s12, s14
d0055b82:	fec6 6a87 	vmaxnm.f32	s13, s13, s14
d0055b86:	fec4 4ae7 	vminnm.f32	s9, s9, s15
d0055b8a:	fe85 5a67 	vminnm.f32	s10, s10, s15
d0055b8e:	fec5 5ae7 	vminnm.f32	s11, s11, s15
d0055b92:	fe86 6a67 	vminnm.f32	s12, s12, s15
d0055b96:	fec6 6ae7 	vminnm.f32	s13, s13, s15
d0055b9a:	9601      	str	r6, [sp, #4]
d0055b9c:	e004      	b.n	d0055ba8 <buildLightingCLUT+0xb0>
d0055b9e:	bf00      	nop
d0055ba0:	4000001f 	.word	0x4000001f
d0055ba4:	00000000 	.word	0x00000000
d0055ba8:	f851 3f04 	ldr.w	r3, [r1, #4]!
d0055bac:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0055bb0:	0e1e      	lsrs	r6, r3, #24
d0055bb2:	fa5f fa83 	uxtb.w	sl, r3
d0055bb6:	4549      	cmp	r1, r9
d0055bb8:	ee07 6a10 	vmov	s14, r6
d0055bbc:	eba5 060b 	sub.w	r6, r5, fp
d0055bc0:	ee04 ba10 	vmov	s8, fp
d0055bc4:	ee07 6a90 	vmov	s15, r6
d0055bc8:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0055bcc:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0055bd0:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0055bd4:	ee02 6a10 	vmov	s4, r6
d0055bd8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0055bdc:	eba2 060a 	sub.w	r6, r2, sl
d0055be0:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0055be4:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0055be8:	ee04 aa10 	vmov	s8, sl
d0055bec:	ee02 6a90 	vmov	s5, r6
d0055bf0:	eba0 0603 	sub.w	r6, r0, r3
d0055bf4:	eee4 3aa7 	vfma.f32	s7, s9, s15
d0055bf8:	ee07 3a90 	vmov	s15, r3
d0055bfc:	eea4 7a82 	vfma.f32	s14, s9, s4
d0055c00:	ee03 6a10 	vmov	s6, r6
d0055c04:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0055c08:	9e01      	ldr	r6, [sp, #4]
d0055c0a:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0055c0e:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0055c12:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0055c16:	eea4 4aa2 	vfma.f32	s8, s9, s5
d0055c1a:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0055c1e:	eee4 7a83 	vfma.f32	s15, s9, s6
d0055c22:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0055c26:	edcd 3a02 	vstr	s7, [sp, #8]
d0055c2a:	f89d a008 	ldrb.w	sl, [sp, #8]
d0055c2e:	ee17 3a10 	vmov	r3, s14
d0055c32:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0055c36:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0055c3a:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0055c3e:	ed8d 7a02 	vstr	s14, [sp, #8]
d0055c42:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0055c46:	f89d b008 	ldrb.w	fp, [sp, #8]
d0055c4a:	edcd 7a03 	vstr	s15, [sp, #12]
d0055c4e:	ea43 030b 	orr.w	r3, r3, fp
d0055c52:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0055c56:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0055c5a:	f846 3f04 	str.w	r3, [r6, #4]!
d0055c5e:	680b      	ldr	r3, [r1, #0]
d0055c60:	9601      	str	r6, [sp, #4]
d0055c62:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0055c66:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0055c6a:	fa5f fa83 	uxtb.w	sl, r3
d0055c6e:	ee07 6a10 	vmov	s14, r6
d0055c72:	eba5 060b 	sub.w	r6, r5, fp
d0055c76:	ee04 ba10 	vmov	s8, fp
d0055c7a:	ee07 6a90 	vmov	s15, r6
d0055c7e:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0055c82:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0055c86:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0055c8a:	ee02 6a10 	vmov	s4, r6
d0055c8e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0055c92:	eba2 060a 	sub.w	r6, r2, sl
d0055c96:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0055c9a:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0055c9e:	ee04 aa10 	vmov	s8, sl
d0055ca2:	ee02 6a90 	vmov	s5, r6
d0055ca6:	eba0 0603 	sub.w	r6, r0, r3
d0055caa:	eee5 3a27 	vfma.f32	s7, s10, s15
d0055cae:	ee07 3a90 	vmov	s15, r3
d0055cb2:	eea5 7a02 	vfma.f32	s14, s10, s4
d0055cb6:	ee03 6a10 	vmov	s6, r6
d0055cba:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0055cbe:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0055cc2:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0055cc6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0055cca:	eea5 4a22 	vfma.f32	s8, s10, s5
d0055cce:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0055cd2:	eee5 7a03 	vfma.f32	s15, s10, s6
d0055cd6:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0055cda:	edcd 3a02 	vstr	s7, [sp, #8]
d0055cde:	f89d a008 	ldrb.w	sl, [sp, #8]
d0055ce2:	ee17 3a10 	vmov	r3, s14
d0055ce6:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0055cea:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0055cee:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0055cf2:	ed8d 7a02 	vstr	s14, [sp, #8]
d0055cf6:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0055cfa:	f89d b008 	ldrb.w	fp, [sp, #8]
d0055cfe:	edcd 7a03 	vstr	s15, [sp, #12]
d0055d02:	ea43 030b 	orr.w	r3, r3, fp
d0055d06:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0055d0a:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0055d0e:	f848 3f04 	str.w	r3, [r8, #4]!
d0055d12:	680b      	ldr	r3, [r1, #0]
d0055d14:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0055d18:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0055d1c:	fa5f fa83 	uxtb.w	sl, r3
d0055d20:	ee07 6a10 	vmov	s14, r6
d0055d24:	eba5 060b 	sub.w	r6, r5, fp
d0055d28:	ee04 ba10 	vmov	s8, fp
d0055d2c:	ee07 6a90 	vmov	s15, r6
d0055d30:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0055d34:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0055d38:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0055d3c:	ee02 6a10 	vmov	s4, r6
d0055d40:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0055d44:	eba2 060a 	sub.w	r6, r2, sl
d0055d48:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0055d4c:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0055d50:	ee04 aa10 	vmov	s8, sl
d0055d54:	ee02 6a90 	vmov	s5, r6
d0055d58:	eba0 0603 	sub.w	r6, r0, r3
d0055d5c:	eee5 3aa7 	vfma.f32	s7, s11, s15
d0055d60:	ee07 3a90 	vmov	s15, r3
d0055d64:	eea5 7a82 	vfma.f32	s14, s11, s4
d0055d68:	ee03 6a10 	vmov	s6, r6
d0055d6c:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0055d70:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0055d74:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0055d78:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0055d7c:	eea5 4aa2 	vfma.f32	s8, s11, s5
d0055d80:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0055d84:	eee5 7a83 	vfma.f32	s15, s11, s6
d0055d88:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0055d8c:	edcd 3a02 	vstr	s7, [sp, #8]
d0055d90:	f89d a008 	ldrb.w	sl, [sp, #8]
d0055d94:	ee17 3a10 	vmov	r3, s14
d0055d98:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0055d9c:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0055da0:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0055da4:	ed8d 7a02 	vstr	s14, [sp, #8]
d0055da8:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0055dac:	f89d b008 	ldrb.w	fp, [sp, #8]
d0055db0:	edcd 7a03 	vstr	s15, [sp, #12]
d0055db4:	ea43 030b 	orr.w	r3, r3, fp
d0055db8:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0055dbc:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0055dc0:	f84e 3f04 	str.w	r3, [lr, #4]!
d0055dc4:	680b      	ldr	r3, [r1, #0]
d0055dc6:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0055dca:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0055dce:	fa5f fa83 	uxtb.w	sl, r3
d0055dd2:	ee07 6a10 	vmov	s14, r6
d0055dd6:	eba5 060b 	sub.w	r6, r5, fp
d0055dda:	ee04 ba10 	vmov	s8, fp
d0055dde:	ee07 6a90 	vmov	s15, r6
d0055de2:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0055de6:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0055dea:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0055dee:	ee02 6a10 	vmov	s4, r6
d0055df2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0055df6:	eba2 060a 	sub.w	r6, r2, sl
d0055dfa:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0055dfe:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0055e02:	ee04 aa10 	vmov	s8, sl
d0055e06:	ee02 6a90 	vmov	s5, r6
d0055e0a:	eba0 0603 	sub.w	r6, r0, r3
d0055e0e:	eee6 3a27 	vfma.f32	s7, s12, s15
d0055e12:	ee07 3a90 	vmov	s15, r3
d0055e16:	eea6 7a02 	vfma.f32	s14, s12, s4
d0055e1a:	ee03 6a10 	vmov	s6, r6
d0055e1e:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0055e22:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0055e26:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0055e2a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0055e2e:	eea6 4a22 	vfma.f32	s8, s12, s5
d0055e32:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0055e36:	eee6 7a03 	vfma.f32	s15, s12, s6
d0055e3a:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0055e3e:	edcd 3a02 	vstr	s7, [sp, #8]
d0055e42:	f89d a008 	ldrb.w	sl, [sp, #8]
d0055e46:	ee17 3a10 	vmov	r3, s14
d0055e4a:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0055e4e:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0055e52:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0055e56:	ed8d 7a02 	vstr	s14, [sp, #8]
d0055e5a:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0055e5e:	f89d b008 	ldrb.w	fp, [sp, #8]
d0055e62:	edcd 7a03 	vstr	s15, [sp, #12]
d0055e66:	ea43 030b 	orr.w	r3, r3, fp
d0055e6a:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0055e6e:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0055e72:	f84c 3f04 	str.w	r3, [ip, #4]!
d0055e76:	680b      	ldr	r3, [r1, #0]
d0055e78:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0055e7c:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0055e80:	fa5f fa83 	uxtb.w	sl, r3
d0055e84:	ee07 6a10 	vmov	s14, r6
d0055e88:	eba5 060b 	sub.w	r6, r5, fp
d0055e8c:	ee04 ba10 	vmov	s8, fp
d0055e90:	ee07 6a90 	vmov	s15, r6
d0055e94:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0055e98:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0055e9c:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0055ea0:	ee02 6a10 	vmov	s4, r6
d0055ea4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0055ea8:	eba2 060a 	sub.w	r6, r2, sl
d0055eac:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0055eb0:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0055eb4:	ee04 aa10 	vmov	s8, sl
d0055eb8:	ee02 6a90 	vmov	s5, r6
d0055ebc:	eba0 0603 	sub.w	r6, r0, r3
d0055ec0:	eee6 3aa7 	vfma.f32	s7, s13, s15
d0055ec4:	ee07 3a90 	vmov	s15, r3
d0055ec8:	eea6 7a82 	vfma.f32	s14, s13, s4
d0055ecc:	ee03 6a10 	vmov	s6, r6
d0055ed0:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0055ed4:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0055ed8:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0055edc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0055ee0:	eea6 4aa2 	vfma.f32	s8, s13, s5
d0055ee4:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0055ee8:	eee6 7a83 	vfma.f32	s15, s13, s6
d0055eec:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0055ef0:	edcd 3a02 	vstr	s7, [sp, #8]
d0055ef4:	f89d a008 	ldrb.w	sl, [sp, #8]
d0055ef8:	ee17 3a10 	vmov	r3, s14
d0055efc:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0055f00:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d0055f04:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0055f08:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0055f0c:	ed8d 7a02 	vstr	s14, [sp, #8]
d0055f10:	f89d b008 	ldrb.w	fp, [sp, #8]
d0055f14:	edcd 7a03 	vstr	s15, [sp, #12]
d0055f18:	ea43 030b 	orr.w	r3, r3, fp
d0055f1c:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0055f20:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0055f24:	f847 3f04 	str.w	r3, [r7, #4]!
d0055f28:	f47f ae3e 	bne.w	d0055ba8 <buildLightingCLUT+0xb0>
d0055f2c:	b005      	add	sp, #20
d0055f2e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0055f32:	bf00      	nop

d0055f34 <brightnessToShadeF>:
d0055f34:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0055f38:	eddf 7a09 	vldr	s15, [pc, #36]	; d0055f60 <brightnessToShadeF+0x2c>
d0055f3c:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d0055f40:	eef7 6a08 	vmov.f32	s13, #120	; 0x3fc00000  1.5
d0055f44:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d0055f48:	fec0 7a47 	vminnm.f32	s15, s0, s14
d0055f4c:	eeb1 0a04 	vmov.f32	s0, #20	; 0x40a00000  5.0
d0055f50:	eee7 6ac6 	vfms.f32	s13, s15, s12
d0055f54:	eea6 7ae7 	vfms.f32	s14, s13, s15
d0055f58:	ee27 0a00 	vmul.f32	s0, s14, s0
d0055f5c:	4770      	bx	lr
d0055f5e:	bf00      	nop
d0055f60:	00000000 	.word	0x00000000

d0055f64 <lightSetRanges>:
d0055f64:	2800      	cmp	r0, #0
d0055f66:	db0c      	blt.n	d0055f82 <lightSetRanges+0x1e>
d0055f68:	4b06      	ldr	r3, [pc, #24]	; (d0055f84 <lightSetRanges+0x20>)
d0055f6a:	681b      	ldr	r3, [r3, #0]
d0055f6c:	4283      	cmp	r3, r0
d0055f6e:	dd08      	ble.n	d0055f82 <lightSetRanges+0x1e>
d0055f70:	4b05      	ldr	r3, [pc, #20]	; (d0055f88 <lightSetRanges+0x24>)
d0055f72:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d0055f76:	ed80 0a08 	vstr	s0, [r0, #32]
d0055f7a:	edc0 0a09 	vstr	s1, [r0, #36]	; 0x24
d0055f7e:	ed80 1a0a 	vstr	s2, [r0, #40]	; 0x28
d0055f82:	4770      	bx	lr
d0055f84:	d005cd80 	.word	0xd005cd80
d0055f88:	d005cda0 	.word	0xd005cda0

d0055f8c <lightsGet>:
d0055f8c:	4800      	ldr	r0, [pc, #0]	; (d0055f90 <lightsGet+0x4>)
d0055f8e:	4770      	bx	lr
d0055f90:	d005cda0 	.word	0xd005cda0

d0055f94 <lightsGetCount>:
d0055f94:	4b01      	ldr	r3, [pc, #4]	; (d0055f9c <lightsGetCount+0x8>)
d0055f96:	6818      	ldr	r0, [r3, #0]
d0055f98:	4770      	bx	lr
d0055f9a:	bf00      	nop
d0055f9c:	d005cd80 	.word	0xd005cd80

d0055fa0 <lightsClear>:
d0055fa0:	4b01      	ldr	r3, [pc, #4]	; (d0055fa8 <lightsClear+0x8>)
d0055fa2:	2200      	movs	r2, #0
d0055fa4:	601a      	str	r2, [r3, #0]
d0055fa6:	4770      	bx	lr
d0055fa8:	d005cd80 	.word	0xd005cd80

d0055fac <lightEnable>:
d0055fac:	4b04      	ldr	r3, [pc, #16]	; (d0055fc0 <lightEnable+0x14>)
d0055fae:	681b      	ldr	r3, [r3, #0]
d0055fb0:	4298      	cmp	r0, r3
d0055fb2:	da03      	bge.n	d0055fbc <lightEnable+0x10>
d0055fb4:	4b03      	ldr	r3, [pc, #12]	; (d0055fc4 <lightEnable+0x18>)
d0055fb6:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d0055fba:	62c1      	str	r1, [r0, #44]	; 0x2c
d0055fbc:	4770      	bx	lr
d0055fbe:	bf00      	nop
d0055fc0:	d005cd80 	.word	0xd005cd80
d0055fc4:	d005cda0 	.word	0xd005cda0

d0055fc8 <addPointLight>:
d0055fc8:	4918      	ldr	r1, [pc, #96]	; (d005602c <addPointLight+0x64>)
d0055fca:	b5f0      	push	{r4, r5, r6, r7, lr}
d0055fcc:	680c      	ldr	r4, [r1, #0]
d0055fce:	b085      	sub	sp, #20
d0055fd0:	2c07      	cmp	r4, #7
d0055fd2:	ed8d 0a01 	vstr	s0, [sp, #4]
d0055fd6:	edcd 0a02 	vstr	s1, [sp, #8]
d0055fda:	ed8d 1a03 	vstr	s2, [sp, #12]
d0055fde:	dc21      	bgt.n	d0056024 <addPointLight+0x5c>
d0055fe0:	4d13      	ldr	r5, [pc, #76]	; (d0056030 <addPointLight+0x68>)
d0055fe2:	01a2      	lsls	r2, r4, #6
d0055fe4:	2600      	movs	r6, #0
d0055fe6:	f8df e050 	ldr.w	lr, [pc, #80]	; d0056038 <addPointLight+0x70>
d0055fea:	eb05 1384 	add.w	r3, r5, r4, lsl #6
d0055fee:	f8df c04c 	ldr.w	ip, [pc, #76]	; d005603c <addPointLight+0x74>
d0055ff2:	54ae      	strb	r6, [r5, r2]
d0055ff4:	2200      	movs	r2, #0
d0055ff6:	4f0f      	ldr	r7, [pc, #60]	; (d0056034 <addPointLight+0x6c>)
d0055ff8:	1d1d      	adds	r5, r3, #4
d0055ffa:	62d8      	str	r0, [r3, #44]	; 0x2c
d0055ffc:	1c66      	adds	r6, r4, #1
d0055ffe:	611a      	str	r2, [r3, #16]
d0056000:	615a      	str	r2, [r3, #20]
d0056002:	619a      	str	r2, [r3, #24]
d0056004:	edc3 1a07 	vstr	s3, [r3, #28]
d0056008:	f8c3 e020 	str.w	lr, [r3, #32]
d005600c:	f8c3 c024 	str.w	ip, [r3, #36]	; 0x24
d0056010:	629f      	str	r7, [r3, #40]	; 0x28
d0056012:	ab04      	add	r3, sp, #16
d0056014:	600e      	str	r6, [r1, #0]
d0056016:	e913 0007 	ldmdb	r3, {r0, r1, r2}
d005601a:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d005601e:	4620      	mov	r0, r4
d0056020:	b005      	add	sp, #20
d0056022:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0056024:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
d0056028:	e7f9      	b.n	d005601e <addPointLight+0x56>
d005602a:	bf00      	nop
d005602c:	d005cd80 	.word	0xd005cd80
d0056030:	d005cda0 	.word	0xd005cda0
d0056034:	44020000 	.word	0x44020000
d0056038:	42c80000 	.word	0x42c80000
d005603c:	43660000 	.word	0x43660000

d0056040 <addDirectionalLight>:
d0056040:	b5f0      	push	{r4, r5, r6, r7, lr}
d0056042:	4f15      	ldr	r7, [pc, #84]	; (d0056098 <addDirectionalLight+0x58>)
d0056044:	683d      	ldr	r5, [r7, #0]
d0056046:	2d07      	cmp	r5, #7
d0056048:	ed2d 8b02 	vpush	{d8}
d005604c:	b085      	sub	sp, #20
d005604e:	dc1f      	bgt.n	d0056090 <addDirectionalLight+0x50>
d0056050:	4912      	ldr	r1, [pc, #72]	; (d005609c <addDirectionalLight+0x5c>)
d0056052:	2300      	movs	r3, #0
d0056054:	4606      	mov	r6, r0
d0056056:	01aa      	lsls	r2, r5, #6
d0056058:	eb01 1485 	add.w	r4, r1, r5, lsl #6
d005605c:	2001      	movs	r0, #1
d005605e:	eeb0 8a61 	vmov.f32	s16, s3
d0056062:	6063      	str	r3, [r4, #4]
d0056064:	60a3      	str	r3, [r4, #8]
d0056066:	60e3      	str	r3, [r4, #12]
d0056068:	5488      	strb	r0, [r1, r2]
d005606a:	f7fd ffc7 	bl	d0053ffc <vec3Normalize>
d005606e:	683b      	ldr	r3, [r7, #0]
d0056070:	ed84 8a07 	vstr	s16, [r4, #28]
d0056074:	3301      	adds	r3, #1
d0056076:	62e6      	str	r6, [r4, #44]	; 0x2c
d0056078:	ed84 0a04 	vstr	s0, [r4, #16]
d005607c:	edc4 0a05 	vstr	s1, [r4, #20]
d0056080:	ed84 1a06 	vstr	s2, [r4, #24]
d0056084:	603b      	str	r3, [r7, #0]
d0056086:	4628      	mov	r0, r5
d0056088:	b005      	add	sp, #20
d005608a:	ecbd 8b02 	vpop	{d8}
d005608e:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0056090:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0056094:	e7f7      	b.n	d0056086 <addDirectionalLight+0x46>
d0056096:	bf00      	nop
d0056098:	d005cd80 	.word	0xd005cd80
d005609c:	d005cda0 	.word	0xd005cda0

d00560a0 <lightSetPosition>:
d00560a0:	b084      	sub	sp, #16
d00560a2:	2800      	cmp	r0, #0
d00560a4:	ed8d 0a01 	vstr	s0, [sp, #4]
d00560a8:	edcd 0a02 	vstr	s1, [sp, #8]
d00560ac:	ed8d 1a03 	vstr	s2, [sp, #12]
d00560b0:	db0c      	blt.n	d00560cc <lightSetPosition+0x2c>
d00560b2:	4b07      	ldr	r3, [pc, #28]	; (d00560d0 <lightSetPosition+0x30>)
d00560b4:	681b      	ldr	r3, [r3, #0]
d00560b6:	4283      	cmp	r3, r0
d00560b8:	dd08      	ble.n	d00560cc <lightSetPosition+0x2c>
d00560ba:	4b06      	ldr	r3, [pc, #24]	; (d00560d4 <lightSetPosition+0x34>)
d00560bc:	aa04      	add	r2, sp, #16
d00560be:	eb03 1380 	add.w	r3, r3, r0, lsl #6
d00560c2:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d00560c6:	3304      	adds	r3, #4
d00560c8:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d00560cc:	b004      	add	sp, #16
d00560ce:	4770      	bx	lr
d00560d0:	d005cd80 	.word	0xd005cd80
d00560d4:	d005cda0 	.word	0xd005cda0

d00560d8 <lightSetIntensity>:
d00560d8:	2800      	cmp	r0, #0
d00560da:	db08      	blt.n	d00560ee <lightSetIntensity+0x16>
d00560dc:	4b04      	ldr	r3, [pc, #16]	; (d00560f0 <lightSetIntensity+0x18>)
d00560de:	681b      	ldr	r3, [r3, #0]
d00560e0:	4283      	cmp	r3, r0
d00560e2:	dd04      	ble.n	d00560ee <lightSetIntensity+0x16>
d00560e4:	4b03      	ldr	r3, [pc, #12]	; (d00560f4 <lightSetIntensity+0x1c>)
d00560e6:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d00560ea:	ed80 0a07 	vstr	s0, [r0, #28]
d00560ee:	4770      	bx	lr
d00560f0:	d005cd80 	.word	0xd005cd80
d00560f4:	d005cda0 	.word	0xd005cda0

d00560f8 <setDefaultRenderMode>:
d00560f8:	2300      	movs	r3, #0
d00560fa:	4803      	ldr	r0, [pc, #12]	; (d0056108 <setDefaultRenderMode+0x10>)
d00560fc:	4903      	ldr	r1, [pc, #12]	; (d005610c <setDefaultRenderMode+0x14>)
d00560fe:	4a04      	ldr	r2, [pc, #16]	; (d0056110 <setDefaultRenderMode+0x18>)
d0056100:	6003      	str	r3, [r0, #0]
d0056102:	600b      	str	r3, [r1, #0]
d0056104:	6013      	str	r3, [r2, #0]
d0056106:	4770      	bx	lr
d0056108:	d0068fa8 	.word	0xd0068fa8
d005610c:	d00e8fc0 	.word	0xd00e8fc0
d0056110:	d00e8fc4 	.word	0xd00e8fc4

d0056114 <enableFlatMode>:
d0056114:	4b01      	ldr	r3, [pc, #4]	; (d005611c <enableFlatMode+0x8>)
d0056116:	6018      	str	r0, [r3, #0]
d0056118:	4770      	bx	lr
d005611a:	bf00      	nop
d005611c:	d0068fa8 	.word	0xd0068fa8

d0056120 <clipTriangleToFrustum>:
d0056120:	4bd1      	ldr	r3, [pc, #836]	; (d0056468 <clipTriangleToFrustum+0x348>)
d0056122:	4ad2      	ldr	r2, [pc, #840]	; (d005646c <clipTriangleToFrustum+0x34c>)
d0056124:	681b      	ldr	r3, [r3, #0]
d0056126:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d005612a:	b08a      	sub	sp, #40	; 0x28
d005612c:	6814      	ldr	r4, [r2, #0]
d005612e:	ed8d 0a07 	vstr	s0, [sp, #28]
d0056132:	edcd 0a08 	vstr	s1, [sp, #32]
d0056136:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d005613a:	edcd 1a04 	vstr	s3, [sp, #16]
d005613e:	ed8d 2a05 	vstr	s4, [sp, #20]
d0056142:	edcd 2a06 	vstr	s5, [sp, #24]
d0056146:	ed8d 3a01 	vstr	s6, [sp, #4]
d005614a:	edcd 3a02 	vstr	s7, [sp, #8]
d005614e:	ed8d 4a03 	vstr	s8, [sp, #12]
d0056152:	2b00      	cmp	r3, #0
d0056154:	f000 826b 	beq.w	d005662e <clipTriangleToFrustum+0x50e>
d0056158:	2c00      	cmp	r4, #0
d005615a:	f000 8268 	beq.w	d005662e <clipTriangleToFrustum+0x50e>
d005615e:	aa0a      	add	r2, sp, #40	; 0x28
d0056160:	edd1 7a10 	vldr	s15, [r1, #64]	; 0x40
d0056164:	ed91 3a15 	vldr	s6, [r1, #84]	; 0x54
d0056168:	af04      	add	r7, sp, #16
d005616a:	4605      	mov	r5, r0
d005616c:	f103 060c 	add.w	r6, r3, #12
d0056170:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0056174:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0056178:	e897 0007 	ldmia.w	r7, {r0, r1, r2}
d005617c:	af01      	add	r7, sp, #4
d005617e:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0056182:	e897 0007 	ldmia.w	r7, {r0, r1, r2}
d0056186:	f103 0618 	add.w	r6, r3, #24
d005618a:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d005618e:	edd3 6a08 	vldr	s13, [r3, #32]
d0056192:	ed93 7a02 	vldr	s14, [r3, #8]
d0056196:	ee36 6ae7 	vsub.f32	s12, s13, s15
d005619a:	edd3 3a06 	vldr	s7, [r3, #24]
d005619e:	ee37 4a67 	vsub.f32	s8, s14, s15
d00561a2:	edd3 5a07 	vldr	s11, [r3, #28]
d00561a6:	ed93 5a00 	vldr	s10, [r3]
d00561aa:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d00561ae:	edd3 4a01 	vldr	s9, [r3, #4]
d00561b2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00561b6:	eeb5 4ac0 	vcmpe.f32	s8, #0.0
d00561ba:	bfac      	ite	ge
d00561bc:	2201      	movge	r2, #1
d00561be:	2200      	movlt	r2, #0
d00561c0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00561c4:	bfac      	ite	ge
d00561c6:	2101      	movge	r1, #1
d00561c8:	2100      	movlt	r1, #0
d00561ca:	2a00      	cmp	r2, #0
d00561cc:	f000 8234 	beq.w	d0056638 <clipTriangleToFrustum+0x518>
d00561d0:	2900      	cmp	r1, #0
d00561d2:	f000 8231 	beq.w	d0056638 <clipTriangleToFrustum+0x518>
d00561d6:	2201      	movs	r2, #1
d00561d8:	ed84 5a00 	vstr	s10, [r4]
d00561dc:	edc4 4a01 	vstr	s9, [r4, #4]
d00561e0:	ed84 7a02 	vstr	s14, [r4, #8]
d00561e4:	edd3 2a05 	vldr	s5, [r3, #20]
d00561e8:	f001 0001 	and.w	r0, r1, #1
d00561ec:	edd3 5a03 	vldr	s11, [r3, #12]
d00561f0:	ee72 6ae7 	vsub.f32	s13, s5, s15
d00561f4:	ed93 6a04 	vldr	s12, [r3, #16]
d00561f8:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00561fc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056200:	bfb6      	itet	lt
d0056202:	2000      	movlt	r0, #0
d0056204:	2601      	movge	r6, #1
d0056206:	2600      	movlt	r6, #0
d0056208:	2800      	cmp	r0, #0
d005620a:	f000 8244 	beq.w	d0056696 <clipTriangleToFrustum+0x576>
d005620e:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0056212:	3201      	adds	r2, #1
d0056214:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d0056218:	edc1 5a00 	vstr	s11, [r1]
d005621c:	ed81 6a01 	vstr	s12, [r1, #4]
d0056220:	edc1 2a02 	vstr	s5, [r1, #8]
d0056224:	ed93 7a08 	vldr	s14, [r3, #32]
d0056228:	ed93 4a06 	vldr	s8, [r3, #24]
d005622c:	ee37 5a67 	vsub.f32	s10, s14, s15
d0056230:	edd3 4a07 	vldr	s9, [r3, #28]
d0056234:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d0056238:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005623c:	bfac      	ite	ge
d005623e:	2101      	movge	r1, #1
d0056240:	2100      	movlt	r1, #0
d0056242:	f2c0 825c 	blt.w	d00566fe <clipTriangleToFrustum+0x5de>
d0056246:	2800      	cmp	r0, #0
d0056248:	f000 8259 	beq.w	d00566fe <clipTriangleToFrustum+0x5de>
d005624c:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0056250:	3201      	adds	r2, #1
d0056252:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d0056256:	ed81 4a00 	vstr	s8, [r1]
d005625a:	edc1 4a01 	vstr	s9, [r1, #4]
d005625e:	ed81 7a02 	vstr	s14, [r1, #8]
d0056262:	2a02      	cmp	r2, #2
d0056264:	f340 81e3 	ble.w	d005662e <clipTriangleToFrustum+0x50e>
d0056268:	eb02 0742 	add.w	r7, r2, r2, lsl #1
d005626c:	4626      	mov	r6, r4
d005626e:	4620      	mov	r0, r4
d0056270:	2200      	movs	r2, #0
d0056272:	00bf      	lsls	r7, r7, #2
d0056274:	f1a7 010c 	sub.w	r1, r7, #12
d0056278:	4427      	add	r7, r4
d005627a:	4421      	add	r1, r4
d005627c:	ed91 7a00 	vldr	s14, [r1]
d0056280:	edd1 7a02 	vldr	s15, [r1, #8]
d0056284:	ed91 6a01 	vldr	s12, [r1, #4]
d0056288:	ee77 6a27 	vadd.f32	s13, s14, s15
d005628c:	e009      	b.n	d00562a2 <clipTriangleToFrustum+0x182>
d005628e:	3201      	adds	r2, #1
d0056290:	ed81 7a00 	vstr	s14, [r1]
d0056294:	ed81 6a01 	vstr	s12, [r1, #4]
d0056298:	edc1 7a02 	vstr	s15, [r1, #8]
d005629c:	300c      	adds	r0, #12
d005629e:	4287      	cmp	r7, r0
d00562a0:	d053      	beq.n	d005634a <clipTriangleToFrustum+0x22a>
d00562a2:	eeb0 4a47 	vmov.f32	s8, s14
d00562a6:	ed90 7a00 	vldr	s14, [r0]
d00562aa:	eeb0 5a67 	vmov.f32	s10, s15
d00562ae:	edd0 7a02 	vldr	s15, [r0, #8]
d00562b2:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00562b6:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d00562ba:	eef0 5a66 	vmov.f32	s11, s13
d00562be:	ee77 6a27 	vadd.f32	s13, s14, s15
d00562c2:	eb03 0181 	add.w	r1, r3, r1, lsl #2
d00562c6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00562ca:	eef0 4a46 	vmov.f32	s9, s12
d00562ce:	ed90 6a01 	vldr	s12, [r0, #4]
d00562d2:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00562d6:	bfac      	ite	ge
d00562d8:	f04f 0c01 	movge.w	ip, #1
d00562dc:	f04f 0c00 	movlt.w	ip, #0
d00562e0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00562e4:	bfac      	ite	ge
d00562e6:	f04f 0e01 	movge.w	lr, #1
d00562ea:	f04f 0e00 	movlt.w	lr, #0
d00562ee:	f1bc 0f00 	cmp.w	ip, #0
d00562f2:	d002      	beq.n	d00562fa <clipTriangleToFrustum+0x1da>
d00562f4:	f1be 0f00 	cmp.w	lr, #0
d00562f8:	d1c9      	bne.n	d005628e <clipTriangleToFrustum+0x16e>
d00562fa:	eef5 6a40 	vcmp.f32	s13, #0.0
d00562fe:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0056302:	ee35 1ae6 	vsub.f32	s2, s11, s13
d0056306:	ee77 1a44 	vsub.f32	s3, s14, s8
d005630a:	eb03 0181 	add.w	r1, r3, r1, lsl #2
d005630e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056312:	ee36 2a64 	vsub.f32	s4, s12, s9
d0056316:	ee77 2ac5 	vsub.f32	s5, s15, s10
d005631a:	f140 8219 	bpl.w	d0056750 <clipTriangleToFrustum+0x630>
d005631e:	f1bc 0f00 	cmp.w	ip, #0
d0056322:	f000 8215 	beq.w	d0056750 <clipTriangleToFrustum+0x630>
d0056326:	eec5 3a81 	vdiv.f32	s7, s11, s2
d005632a:	300c      	adds	r0, #12
d005632c:	3201      	adds	r2, #1
d005632e:	4287      	cmp	r7, r0
d0056330:	eea1 4aa3 	vfma.f32	s8, s3, s7
d0056334:	eee2 4a23 	vfma.f32	s9, s4, s7
d0056338:	eea2 5aa3 	vfma.f32	s10, s5, s7
d005633c:	ed81 4a00 	vstr	s8, [r1]
d0056340:	edc1 4a01 	vstr	s9, [r1, #4]
d0056344:	ed81 5a02 	vstr	s10, [r1, #8]
d0056348:	d1ab      	bne.n	d00562a2 <clipTriangleToFrustum+0x182>
d005634a:	2a02      	cmp	r2, #2
d005634c:	f340 816f 	ble.w	d005662e <clipTriangleToFrustum+0x50e>
d0056350:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d0056354:	461f      	mov	r7, r3
d0056356:	469c      	mov	ip, r3
d0056358:	2100      	movs	r1, #0
d005635a:	0092      	lsls	r2, r2, #2
d005635c:	f1a2 000c 	sub.w	r0, r2, #12
d0056360:	441a      	add	r2, r3
d0056362:	4418      	add	r0, r3
d0056364:	edd0 7a00 	vldr	s15, [r0]
d0056368:	ed90 7a02 	vldr	s14, [r0, #8]
d005636c:	ed90 6a01 	vldr	s12, [r0, #4]
d0056370:	ee77 6a67 	vsub.f32	s13, s14, s15
d0056374:	e00a      	b.n	d005638c <clipTriangleToFrustum+0x26c>
d0056376:	3101      	adds	r1, #1
d0056378:	edc0 7a00 	vstr	s15, [r0]
d005637c:	ed80 6a01 	vstr	s12, [r0, #4]
d0056380:	ed80 7a02 	vstr	s14, [r0, #8]
d0056384:	f10c 0c0c 	add.w	ip, ip, #12
d0056388:	4562      	cmp	r2, ip
d005638a:	d056      	beq.n	d005643a <clipTriangleToFrustum+0x31a>
d005638c:	eeb0 4a67 	vmov.f32	s8, s15
d0056390:	eddc 7a00 	vldr	s15, [ip]
d0056394:	eeb0 5a47 	vmov.f32	s10, s14
d0056398:	ed9c 7a02 	vldr	s14, [ip, #8]
d005639c:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00563a0:	eb01 0041 	add.w	r0, r1, r1, lsl #1
d00563a4:	eef0 5a66 	vmov.f32	s11, s13
d00563a8:	ee77 6a67 	vsub.f32	s13, s14, s15
d00563ac:	eb04 0080 	add.w	r0, r4, r0, lsl #2
d00563b0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00563b4:	eef0 4a46 	vmov.f32	s9, s12
d00563b8:	ed9c 6a01 	vldr	s12, [ip, #4]
d00563bc:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00563c0:	bfac      	ite	ge
d00563c2:	f04f 0e01 	movge.w	lr, #1
d00563c6:	f04f 0e00 	movlt.w	lr, #0
d00563ca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00563ce:	bfac      	ite	ge
d00563d0:	f04f 0801 	movge.w	r8, #1
d00563d4:	f04f 0800 	movlt.w	r8, #0
d00563d8:	f1be 0f00 	cmp.w	lr, #0
d00563dc:	d002      	beq.n	d00563e4 <clipTriangleToFrustum+0x2c4>
d00563de:	f1b8 0f00 	cmp.w	r8, #0
d00563e2:	d1c8      	bne.n	d0056376 <clipTriangleToFrustum+0x256>
d00563e4:	eef5 6a40 	vcmp.f32	s13, #0.0
d00563e8:	eb01 0041 	add.w	r0, r1, r1, lsl #1
d00563ec:	ee77 3aa5 	vadd.f32	s7, s15, s11
d00563f0:	ee37 1ac4 	vsub.f32	s2, s15, s8
d00563f4:	eb04 0080 	add.w	r0, r4, r0, lsl #2
d00563f8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00563fc:	ee76 1a64 	vsub.f32	s3, s12, s9
d0056400:	ee73 3ac7 	vsub.f32	s7, s7, s14
d0056404:	ee37 2a45 	vsub.f32	s4, s14, s10
d0056408:	f140 81d1 	bpl.w	d00567ae <clipTriangleToFrustum+0x68e>
d005640c:	f1be 0f00 	cmp.w	lr, #0
d0056410:	f000 81cd 	beq.w	d00567ae <clipTriangleToFrustum+0x68e>
d0056414:	eec5 2aa3 	vdiv.f32	s5, s11, s7
d0056418:	f10c 0c0c 	add.w	ip, ip, #12
d005641c:	3101      	adds	r1, #1
d005641e:	4562      	cmp	r2, ip
d0056420:	eea1 4a22 	vfma.f32	s8, s2, s5
d0056424:	eee1 4aa2 	vfma.f32	s9, s3, s5
d0056428:	eea2 5a22 	vfma.f32	s10, s4, s5
d005642c:	ed80 4a00 	vstr	s8, [r0]
d0056430:	edc0 4a01 	vstr	s9, [r0, #4]
d0056434:	ed80 5a02 	vstr	s10, [r0, #8]
d0056438:	d1a8      	bne.n	d005638c <clipTriangleToFrustum+0x26c>
d005643a:	2902      	cmp	r1, #2
d005643c:	f340 80f7 	ble.w	d005662e <clipTriangleToFrustum+0x50e>
d0056440:	eb01 0241 	add.w	r2, r1, r1, lsl #1
d0056444:	2100      	movs	r1, #0
d0056446:	0092      	lsls	r2, r2, #2
d0056448:	f1a2 000c 	sub.w	r0, r2, #12
d005644c:	4422      	add	r2, r4
d005644e:	4420      	add	r0, r4
d0056450:	edd0 7a01 	vldr	s15, [r0, #4]
d0056454:	ed90 7a02 	vldr	s14, [r0, #8]
d0056458:	eef0 6a67 	vmov.f32	s13, s15
d005645c:	ed90 6a00 	vldr	s12, [r0]
d0056460:	eed3 6a07 	vfnms.f32	s13, s6, s14
d0056464:	e011      	b.n	d005648a <clipTriangleToFrustum+0x36a>
d0056466:	bf00      	nop
d0056468:	d0068fa0 	.word	0xd0068fa0
d005646c:	d0068fa4 	.word	0xd0068fa4
d0056470:	f1be 0f00 	cmp.w	lr, #0
d0056474:	d034      	beq.n	d00564e0 <clipTriangleToFrustum+0x3c0>
d0056476:	3101      	adds	r1, #1
d0056478:	ed80 6a00 	vstr	s12, [r0]
d005647c:	edc0 7a01 	vstr	s15, [r0, #4]
d0056480:	ed80 7a02 	vstr	s14, [r0, #8]
d0056484:	360c      	adds	r6, #12
d0056486:	4296      	cmp	r6, r2
d0056488:	d054      	beq.n	d0056534 <clipTriangleToFrustum+0x414>
d005648a:	eeb0 5a47 	vmov.f32	s10, s14
d005648e:	ed96 7a02 	vldr	s14, [r6, #8]
d0056492:	eef0 4a67 	vmov.f32	s9, s15
d0056496:	edd6 7a01 	vldr	s15, [r6, #4]
d005649a:	ee63 3a07 	vmul.f32	s7, s6, s14
d005649e:	eb01 0041 	add.w	r0, r1, r1, lsl #1
d00564a2:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00564a6:	eef0 5a66 	vmov.f32	s11, s13
d00564aa:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d00564ae:	ee73 6ae7 	vsub.f32	s13, s7, s15
d00564b2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00564b6:	eeb0 4a46 	vmov.f32	s8, s12
d00564ba:	ed96 6a00 	vldr	s12, [r6]
d00564be:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00564c2:	bfac      	ite	ge
d00564c4:	f04f 0c01 	movge.w	ip, #1
d00564c8:	f04f 0c00 	movlt.w	ip, #0
d00564cc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00564d0:	bfac      	ite	ge
d00564d2:	f04f 0e01 	movge.w	lr, #1
d00564d6:	f04f 0e00 	movlt.w	lr, #0
d00564da:	f1bc 0f00 	cmp.w	ip, #0
d00564de:	d1c7      	bne.n	d0056470 <clipTriangleToFrustum+0x350>
d00564e0:	eef5 6a40 	vcmp.f32	s13, #0.0
d00564e4:	eb01 0041 	add.w	r0, r1, r1, lsl #1
d00564e8:	ee77 2aa5 	vadd.f32	s5, s15, s11
d00564ec:	ee36 1a44 	vsub.f32	s2, s12, s8
d00564f0:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d00564f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00564f8:	ee77 1ae4 	vsub.f32	s3, s15, s9
d00564fc:	ee72 2ae3 	vsub.f32	s5, s5, s7
d0056500:	ee37 2a45 	vsub.f32	s4, s14, s10
d0056504:	f140 8209 	bpl.w	d005691a <clipTriangleToFrustum+0x7fa>
d0056508:	f1bc 0f00 	cmp.w	ip, #0
d005650c:	f000 8205 	beq.w	d005691a <clipTriangleToFrustum+0x7fa>
d0056510:	eec5 3aa2 	vdiv.f32	s7, s11, s5
d0056514:	360c      	adds	r6, #12
d0056516:	3101      	adds	r1, #1
d0056518:	4296      	cmp	r6, r2
d005651a:	eea1 4a23 	vfma.f32	s8, s2, s7
d005651e:	eee1 4aa3 	vfma.f32	s9, s3, s7
d0056522:	eea2 5a23 	vfma.f32	s10, s4, s7
d0056526:	ed80 4a00 	vstr	s8, [r0]
d005652a:	edc0 4a01 	vstr	s9, [r0, #4]
d005652e:	ed80 5a02 	vstr	s10, [r0, #8]
d0056532:	d1aa      	bne.n	d005648a <clipTriangleToFrustum+0x36a>
d0056534:	2902      	cmp	r1, #2
d0056536:	dd7a      	ble.n	d005662e <clipTriangleToFrustum+0x50e>
d0056538:	eb01 0241 	add.w	r2, r1, r1, lsl #1
d005653c:	2600      	movs	r6, #0
d005653e:	0092      	lsls	r2, r2, #2
d0056540:	f1a2 010c 	sub.w	r1, r2, #12
d0056544:	441a      	add	r2, r3
d0056546:	440b      	add	r3, r1
d0056548:	edd3 7a01 	vldr	s15, [r3, #4]
d005654c:	ed93 7a02 	vldr	s14, [r3, #8]
d0056550:	eef0 6a67 	vmov.f32	s13, s15
d0056554:	ed93 6a00 	vldr	s12, [r3]
d0056558:	eee3 6a07 	vfma.f32	s13, s6, s14
d005655c:	e00a      	b.n	d0056574 <clipTriangleToFrustum+0x454>
d005655e:	b378      	cbz	r0, d00565c0 <clipTriangleToFrustum+0x4a0>
d0056560:	3601      	adds	r6, #1
d0056562:	ed83 6a00 	vstr	s12, [r3]
d0056566:	edc3 7a01 	vstr	s15, [r3, #4]
d005656a:	ed83 7a02 	vstr	s14, [r3, #8]
d005656e:	370c      	adds	r7, #12
d0056570:	4297      	cmp	r7, r2
d0056572:	d04c      	beq.n	d005660e <clipTriangleToFrustum+0x4ee>
d0056574:	eef0 4a67 	vmov.f32	s9, s15
d0056578:	edd7 7a01 	vldr	s15, [r7, #4]
d005657c:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0056580:	eb06 0346 	add.w	r3, r6, r6, lsl #1
d0056584:	eef0 5a66 	vmov.f32	s11, s13
d0056588:	eef0 6a67 	vmov.f32	s13, s15
d005658c:	eb04 0383 	add.w	r3, r4, r3, lsl #2
d0056590:	eeb0 5a47 	vmov.f32	s10, s14
d0056594:	ed97 7a02 	vldr	s14, [r7, #8]
d0056598:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005659c:	eee3 6a07 	vfma.f32	s13, s6, s14
d00565a0:	eeb0 4a46 	vmov.f32	s8, s12
d00565a4:	ed97 6a00 	vldr	s12, [r7]
d00565a8:	bfac      	ite	ge
d00565aa:	2101      	movge	r1, #1
d00565ac:	2100      	movlt	r1, #0
d00565ae:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00565b2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00565b6:	bfac      	ite	ge
d00565b8:	2001      	movge	r0, #1
d00565ba:	2000      	movlt	r0, #0
d00565bc:	2900      	cmp	r1, #0
d00565be:	d1ce      	bne.n	d005655e <clipTriangleToFrustum+0x43e>
d00565c0:	eef5 6a40 	vcmp.f32	s13, #0.0
d00565c4:	eb06 0346 	add.w	r3, r6, r6, lsl #1
d00565c8:	ee35 1ae6 	vsub.f32	s2, s11, s13
d00565cc:	ee76 1a44 	vsub.f32	s3, s12, s8
d00565d0:	eb04 0383 	add.w	r3, r4, r3, lsl #2
d00565d4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00565d8:	ee37 2ae4 	vsub.f32	s4, s15, s9
d00565dc:	ee77 2a45 	vsub.f32	s5, s14, s10
d00565e0:	f140 81cc 	bpl.w	d005697c <clipTriangleToFrustum+0x85c>
d00565e4:	2900      	cmp	r1, #0
d00565e6:	f000 81c9 	beq.w	d005697c <clipTriangleToFrustum+0x85c>
d00565ea:	eec5 3a81 	vdiv.f32	s7, s11, s2
d00565ee:	370c      	adds	r7, #12
d00565f0:	3601      	adds	r6, #1
d00565f2:	4297      	cmp	r7, r2
d00565f4:	eea1 4aa3 	vfma.f32	s8, s3, s7
d00565f8:	eee2 4a23 	vfma.f32	s9, s4, s7
d00565fc:	eea2 5aa3 	vfma.f32	s10, s5, s7
d0056600:	ed83 4a00 	vstr	s8, [r3]
d0056604:	edc3 4a01 	vstr	s9, [r3, #4]
d0056608:	ed83 5a02 	vstr	s10, [r3, #8]
d005660c:	d1b2      	bne.n	d0056574 <clipTriangleToFrustum+0x454>
d005660e:	2e02      	cmp	r6, #2
d0056610:	dd0d      	ble.n	d005662e <clipTriangleToFrustum+0x50e>
d0056612:	eb06 0c46 	add.w	ip, r6, r6, lsl #1
d0056616:	2300      	movs	r3, #0
d0056618:	ea4f 0c8c 	mov.w	ip, ip, lsl #2
d005661c:	18e2      	adds	r2, r4, r3
d005661e:	18ef      	adds	r7, r5, r3
d0056620:	330c      	adds	r3, #12
d0056622:	ca07      	ldmia	r2, {r0, r1, r2}
d0056624:	459c      	cmp	ip, r3
d0056626:	e887 0007 	stmia.w	r7, {r0, r1, r2}
d005662a:	d1f7      	bne.n	d005661c <clipTriangleToFrustum+0x4fc>
d005662c:	e000      	b.n	d0056630 <clipTriangleToFrustum+0x510>
d005662e:	2600      	movs	r6, #0
d0056630:	4630      	mov	r0, r6
d0056632:	b00a      	add	sp, #40	; 0x28
d0056634:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0056638:	eeb5 4a40 	vcmp.f32	s8, #0.0
d005663c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056640:	f140 80e6 	bpl.w	d0056810 <clipTriangleToFrustum+0x6f0>
d0056644:	2a00      	cmp	r2, #0
d0056646:	f000 80e3 	beq.w	d0056810 <clipTriangleToFrustum+0x6f0>
d005664a:	ee36 1ac7 	vsub.f32	s2, s13, s14
d005664e:	2201      	movs	r2, #1
d0056650:	ee75 1a63 	vsub.f32	s3, s10, s7
d0056654:	ee34 2ae5 	vsub.f32	s4, s9, s11
d0056658:	eec6 2a01 	vdiv.f32	s5, s12, s2
d005665c:	ee37 6a66 	vsub.f32	s12, s14, s13
d0056660:	eee2 5a82 	vfma.f32	s11, s5, s4
d0056664:	eee2 6a86 	vfma.f32	s13, s5, s12
d0056668:	eee2 3aa1 	vfma.f32	s7, s5, s3
d005666c:	edc4 5a01 	vstr	s11, [r4, #4]
d0056670:	edc4 6a02 	vstr	s13, [r4, #8]
d0056674:	edc4 3a00 	vstr	s7, [r4]
d0056678:	edd3 2a05 	vldr	s5, [r3, #20]
d005667c:	edd3 5a03 	vldr	s11, [r3, #12]
d0056680:	ee72 6ae7 	vsub.f32	s13, s5, s15
d0056684:	ed93 6a04 	vldr	s12, [r3, #16]
d0056688:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d005668c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056690:	bfac      	ite	ge
d0056692:	4616      	movge	r6, r2
d0056694:	2600      	movlt	r6, #0
d0056696:	eef5 6a40 	vcmp.f32	s13, #0.0
d005669a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005669e:	f140 80de 	bpl.w	d005685e <clipTriangleToFrustum+0x73e>
d00566a2:	2900      	cmp	r1, #0
d00566a4:	f000 80db 	beq.w	d005685e <clipTriangleToFrustum+0x73e>
d00566a8:	ee37 1a62 	vsub.f32	s2, s14, s5
d00566ac:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d00566b0:	ee75 1ac5 	vsub.f32	s3, s11, s10
d00566b4:	4630      	mov	r0, r6
d00566b6:	ee36 2a64 	vsub.f32	s4, s12, s9
d00566ba:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d00566be:	eec4 3a01 	vdiv.f32	s7, s8, s2
d00566c2:	3201      	adds	r2, #1
d00566c4:	ee32 4ac7 	vsub.f32	s8, s5, s14
d00566c8:	eea1 5aa3 	vfma.f32	s10, s3, s7
d00566cc:	eea4 7a23 	vfma.f32	s14, s8, s7
d00566d0:	eee2 4a23 	vfma.f32	s9, s4, s7
d00566d4:	ed81 5a00 	vstr	s10, [r1]
d00566d8:	ed81 7a02 	vstr	s14, [r1, #8]
d00566dc:	edc1 4a01 	vstr	s9, [r1, #4]
d00566e0:	ed93 7a08 	vldr	s14, [r3, #32]
d00566e4:	ed93 4a06 	vldr	s8, [r3, #24]
d00566e8:	ee37 5a67 	vsub.f32	s10, s14, s15
d00566ec:	edd3 4a07 	vldr	s9, [r3, #28]
d00566f0:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d00566f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00566f8:	bfac      	ite	ge
d00566fa:	2101      	movge	r1, #1
d00566fc:	2100      	movlt	r1, #0
d00566fe:	eeb5 5a40 	vcmp.f32	s10, #0.0
d0056702:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056706:	f140 80d9 	bpl.w	d00568bc <clipTriangleToFrustum+0x79c>
d005670a:	2800      	cmp	r0, #0
d005670c:	f000 80d6 	beq.w	d00568bc <clipTriangleToFrustum+0x79c>
d0056710:	ee77 3ac7 	vsub.f32	s7, s15, s14
d0056714:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0056718:	ee34 4a65 	vsub.f32	s8, s8, s11
d005671c:	3201      	adds	r2, #1
d005671e:	ee74 4ac6 	vsub.f32	s9, s9, s12
d0056722:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d0056726:	ee73 3aa6 	vadd.f32	s7, s7, s13
d005672a:	ee37 7a62 	vsub.f32	s14, s14, s5
d005672e:	eef0 7a62 	vmov.f32	s15, s5
d0056732:	ee86 5aa3 	vdiv.f32	s10, s13, s7
d0056736:	eee4 5a05 	vfma.f32	s11, s8, s10
d005673a:	eea4 6a85 	vfma.f32	s12, s9, s10
d005673e:	eee7 7a05 	vfma.f32	s15, s14, s10
d0056742:	edc1 5a00 	vstr	s11, [r1]
d0056746:	ed81 6a01 	vstr	s12, [r1, #4]
d005674a:	edc1 7a02 	vstr	s15, [r1, #8]
d005674e:	e588      	b.n	d0056262 <clipTriangleToFrustum+0x142>
d0056750:	eef5 5a40 	vcmp.f32	s11, #0.0
d0056754:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0056758:	ee35 1ae6 	vsub.f32	s2, s11, s13
d005675c:	eb03 0c81 	add.w	ip, r3, r1, lsl #2
d0056760:	ee77 1a44 	vsub.f32	s3, s14, s8
d0056764:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056768:	4661      	mov	r1, ip
d005676a:	ee36 2a64 	vsub.f32	s4, s12, s9
d005676e:	ee77 2ac5 	vsub.f32	s5, s15, s10
d0056772:	f10c 0c0c 	add.w	ip, ip, #12
d0056776:	f57f ad91 	bpl.w	d005629c <clipTriangleToFrustum+0x17c>
d005677a:	f1be 0f00 	cmp.w	lr, #0
d005677e:	f43f ad8d 	beq.w	d005629c <clipTriangleToFrustum+0x17c>
d0056782:	eec5 3a81 	vdiv.f32	s7, s11, s2
d0056786:	3202      	adds	r2, #2
d0056788:	eea1 4aa3 	vfma.f32	s8, s3, s7
d005678c:	eee2 4a23 	vfma.f32	s9, s4, s7
d0056790:	eea2 5aa3 	vfma.f32	s10, s5, s7
d0056794:	ed81 4a00 	vstr	s8, [r1]
d0056798:	edc1 4a01 	vstr	s9, [r1, #4]
d005679c:	ed81 5a02 	vstr	s10, [r1, #8]
d00567a0:	ed8c 7a00 	vstr	s14, [ip]
d00567a4:	ed8c 6a01 	vstr	s12, [ip, #4]
d00567a8:	edcc 7a02 	vstr	s15, [ip, #8]
d00567ac:	e576      	b.n	d005629c <clipTriangleToFrustum+0x17c>
d00567ae:	eef5 5a40 	vcmp.f32	s11, #0.0
d00567b2:	eb01 0041 	add.w	r0, r1, r1, lsl #1
d00567b6:	ee77 3aa5 	vadd.f32	s7, s15, s11
d00567ba:	eb04 0e80 	add.w	lr, r4, r0, lsl #2
d00567be:	ee37 1ac4 	vsub.f32	s2, s15, s8
d00567c2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00567c6:	4670      	mov	r0, lr
d00567c8:	ee76 1a64 	vsub.f32	s3, s12, s9
d00567cc:	ee73 3ac7 	vsub.f32	s7, s7, s14
d00567d0:	f10e 0e0c 	add.w	lr, lr, #12
d00567d4:	ee37 2a45 	vsub.f32	s4, s14, s10
d00567d8:	f57f add4 	bpl.w	d0056384 <clipTriangleToFrustum+0x264>
d00567dc:	f1b8 0f00 	cmp.w	r8, #0
d00567e0:	f43f add0 	beq.w	d0056384 <clipTriangleToFrustum+0x264>
d00567e4:	eec5 2aa3 	vdiv.f32	s5, s11, s7
d00567e8:	3102      	adds	r1, #2
d00567ea:	eea1 4a22 	vfma.f32	s8, s2, s5
d00567ee:	eee1 4aa2 	vfma.f32	s9, s3, s5
d00567f2:	eea2 5a22 	vfma.f32	s10, s4, s5
d00567f6:	ed80 4a00 	vstr	s8, [r0]
d00567fa:	edc0 4a01 	vstr	s9, [r0, #4]
d00567fe:	ed80 5a02 	vstr	s10, [r0, #8]
d0056802:	edce 7a00 	vstr	s15, [lr]
d0056806:	ed8e 6a01 	vstr	s12, [lr, #4]
d005680a:	ed8e 7a02 	vstr	s14, [lr, #8]
d005680e:	e5b9      	b.n	d0056384 <clipTriangleToFrustum+0x264>
d0056810:	eeb5 6a40 	vcmp.f32	s12, #0.0
d0056814:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056818:	f140 80de 	bpl.w	d00569d8 <clipTriangleToFrustum+0x8b8>
d005681c:	2900      	cmp	r1, #0
d005681e:	f000 80db 	beq.w	d00569d8 <clipTriangleToFrustum+0x8b8>
d0056822:	ee36 1ac7 	vsub.f32	s2, s13, s14
d0056826:	2202      	movs	r2, #2
d0056828:	ee75 1a63 	vsub.f32	s3, s10, s7
d005682c:	ed84 5a03 	vstr	s10, [r4, #12]
d0056830:	ee34 2ae5 	vsub.f32	s4, s9, s11
d0056834:	edc4 4a04 	vstr	s9, [r4, #16]
d0056838:	eec6 2a01 	vdiv.f32	s5, s12, s2
d005683c:	ed84 7a05 	vstr	s14, [r4, #20]
d0056840:	ee37 6a66 	vsub.f32	s12, s14, s13
d0056844:	eee2 3aa1 	vfma.f32	s7, s5, s3
d0056848:	eee2 5a82 	vfma.f32	s11, s5, s4
d005684c:	eee2 6a86 	vfma.f32	s13, s5, s12
d0056850:	edc4 3a00 	vstr	s7, [r4]
d0056854:	edc4 5a01 	vstr	s11, [r4, #4]
d0056858:	edc4 6a02 	vstr	s13, [r4, #8]
d005685c:	e4c2      	b.n	d00561e4 <clipTriangleToFrustum+0xc4>
d005685e:	eeb5 4ac0 	vcmpe.f32	s8, #0.0
d0056862:	f006 0001 	and.w	r0, r6, #1
d0056866:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005686a:	bf58      	it	pl
d005686c:	2000      	movpl	r0, #0
d005686e:	2800      	cmp	r0, #0
d0056870:	f000 80b4 	beq.w	d00569dc <clipTriangleToFrustum+0x8bc>
d0056874:	ee37 1a62 	vsub.f32	s2, s14, s5
d0056878:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d005687c:	ee75 1ac5 	vsub.f32	s3, s11, s10
d0056880:	3202      	adds	r2, #2
d0056882:	ee36 2a64 	vsub.f32	s4, s12, s9
d0056886:	eb04 0681 	add.w	r6, r4, r1, lsl #2
d005688a:	eec4 3a01 	vdiv.f32	s7, s8, s2
d005688e:	4631      	mov	r1, r6
d0056890:	edc6 5a03 	vstr	s11, [r6, #12]
d0056894:	ed86 6a04 	vstr	s12, [r6, #16]
d0056898:	310c      	adds	r1, #12
d005689a:	edc6 2a05 	vstr	s5, [r6, #20]
d005689e:	ee32 4ac7 	vsub.f32	s8, s5, s14
d00568a2:	eea1 5aa3 	vfma.f32	s10, s3, s7
d00568a6:	eee2 4a23 	vfma.f32	s9, s4, s7
d00568aa:	eea4 7a23 	vfma.f32	s14, s8, s7
d00568ae:	ed86 5a00 	vstr	s10, [r6]
d00568b2:	edc6 4a01 	vstr	s9, [r6, #4]
d00568b6:	ed86 7a02 	vstr	s14, [r6, #8]
d00568ba:	e4b3      	b.n	d0056224 <clipTriangleToFrustum+0x104>
d00568bc:	eef5 6a40 	vcmp.f32	s13, #0.0
d00568c0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00568c4:	f57f accd 	bpl.w	d0056262 <clipTriangleToFrustum+0x142>
d00568c8:	2900      	cmp	r1, #0
d00568ca:	f43f acca 	beq.w	d0056262 <clipTriangleToFrustum+0x142>
d00568ce:	ee77 7ac7 	vsub.f32	s15, s15, s14
d00568d2:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d00568d6:	ee74 1a65 	vsub.f32	s3, s8, s11
d00568da:	3202      	adds	r2, #2
d00568dc:	ee34 2ac6 	vsub.f32	s4, s9, s12
d00568e0:	eb04 0081 	add.w	r0, r4, r1, lsl #2
d00568e4:	ee77 7aa6 	vadd.f32	s15, s15, s13
d00568e8:	ee77 3a62 	vsub.f32	s7, s14, s5
d00568ec:	ed80 4a03 	vstr	s8, [r0, #12]
d00568f0:	edc0 4a04 	vstr	s9, [r0, #16]
d00568f4:	ee86 5aa7 	vdiv.f32	s10, s13, s15
d00568f8:	ed80 7a05 	vstr	s14, [r0, #20]
d00568fc:	eef0 7a62 	vmov.f32	s15, s5
d0056900:	eee1 5a85 	vfma.f32	s11, s3, s10
d0056904:	eea2 6a05 	vfma.f32	s12, s4, s10
d0056908:	eee3 7a85 	vfma.f32	s15, s7, s10
d005690c:	edc0 5a00 	vstr	s11, [r0]
d0056910:	ed80 6a01 	vstr	s12, [r0, #4]
d0056914:	edc0 7a02 	vstr	s15, [r0, #8]
d0056918:	e4a3      	b.n	d0056262 <clipTriangleToFrustum+0x142>
d005691a:	eef5 5a40 	vcmp.f32	s11, #0.0
d005691e:	eb01 0041 	add.w	r0, r1, r1, lsl #1
d0056922:	ee77 2aa5 	vadd.f32	s5, s15, s11
d0056926:	eb03 0c80 	add.w	ip, r3, r0, lsl #2
d005692a:	ee36 1a44 	vsub.f32	s2, s12, s8
d005692e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056932:	4660      	mov	r0, ip
d0056934:	ee77 1ae4 	vsub.f32	s3, s15, s9
d0056938:	ee72 3ae3 	vsub.f32	s7, s5, s7
d005693c:	f10c 0c0c 	add.w	ip, ip, #12
d0056940:	ee37 2a45 	vsub.f32	s4, s14, s10
d0056944:	f57f ad9e 	bpl.w	d0056484 <clipTriangleToFrustum+0x364>
d0056948:	f1be 0f00 	cmp.w	lr, #0
d005694c:	f43f ad9a 	beq.w	d0056484 <clipTriangleToFrustum+0x364>
d0056950:	eec5 2aa3 	vdiv.f32	s5, s11, s7
d0056954:	3102      	adds	r1, #2
d0056956:	eea1 4a22 	vfma.f32	s8, s2, s5
d005695a:	eee1 4aa2 	vfma.f32	s9, s3, s5
d005695e:	eea2 5a22 	vfma.f32	s10, s4, s5
d0056962:	ed80 4a00 	vstr	s8, [r0]
d0056966:	edc0 4a01 	vstr	s9, [r0, #4]
d005696a:	ed80 5a02 	vstr	s10, [r0, #8]
d005696e:	ed8c 6a00 	vstr	s12, [ip]
d0056972:	edcc 7a01 	vstr	s15, [ip, #4]
d0056976:	ed8c 7a02 	vstr	s14, [ip, #8]
d005697a:	e583      	b.n	d0056484 <clipTriangleToFrustum+0x364>
d005697c:	eef5 5a40 	vcmp.f32	s11, #0.0
d0056980:	eb06 0346 	add.w	r3, r6, r6, lsl #1
d0056984:	ee35 1ae6 	vsub.f32	s2, s11, s13
d0056988:	eb04 0183 	add.w	r1, r4, r3, lsl #2
d005698c:	ee76 1a44 	vsub.f32	s3, s12, s8
d0056990:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056994:	460b      	mov	r3, r1
d0056996:	ee37 2ae4 	vsub.f32	s4, s15, s9
d005699a:	ee77 2a45 	vsub.f32	s5, s14, s10
d005699e:	f101 010c 	add.w	r1, r1, #12
d00569a2:	f57f ade4 	bpl.w	d005656e <clipTriangleToFrustum+0x44e>
d00569a6:	2800      	cmp	r0, #0
d00569a8:	f43f ade1 	beq.w	d005656e <clipTriangleToFrustum+0x44e>
d00569ac:	eec5 3a81 	vdiv.f32	s7, s11, s2
d00569b0:	3602      	adds	r6, #2
d00569b2:	eea1 4aa3 	vfma.f32	s8, s3, s7
d00569b6:	eee2 4a23 	vfma.f32	s9, s4, s7
d00569ba:	eea2 5aa3 	vfma.f32	s10, s5, s7
d00569be:	ed83 4a00 	vstr	s8, [r3]
d00569c2:	edc3 4a01 	vstr	s9, [r3, #4]
d00569c6:	ed83 5a02 	vstr	s10, [r3, #8]
d00569ca:	ed81 6a00 	vstr	s12, [r1]
d00569ce:	edc1 7a01 	vstr	s15, [r1, #4]
d00569d2:	ed81 7a02 	vstr	s14, [r1, #8]
d00569d6:	e5ca      	b.n	d005656e <clipTriangleToFrustum+0x44e>
d00569d8:	2200      	movs	r2, #0
d00569da:	e403      	b.n	d00561e4 <clipTriangleToFrustum+0xc4>
d00569dc:	4630      	mov	r0, r6
d00569de:	e421      	b.n	d0056224 <clipTriangleToFrustum+0x104>

d00569e0 <submitClippedTri>:
d00569e0:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d00569e4:	eef4 7ac1 	vcmpe.f32	s15, s2
d00569e8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00569ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00569f0:	eef4 7ae2 	vcmpe.f32	s15, s5
d00569f4:	bfac      	ite	ge
d00569f6:	2401      	movge	r4, #1
d00569f8:	2400      	movlt	r4, #0
d00569fa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00569fe:	ed2d 8b02 	vpush	{d8}
d0056a02:	bfa8      	it	ge
d0056a04:	f044 0401 	orrge.w	r4, r4, #1
d0056a08:	b08d      	sub	sp, #52	; 0x34
d0056a0a:	9301      	str	r3, [sp, #4]
d0056a0c:	b924      	cbnz	r4, d0056a18 <submitClippedTri+0x38>
d0056a0e:	eef4 7ac4 	vcmpe.f32	s15, s8
d0056a12:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056a16:	db04      	blt.n	d0056a22 <submitClippedTri+0x42>
d0056a18:	b00d      	add	sp, #52	; 0x34
d0056a1a:	ecbd 8b02 	vpop	{d8}
d0056a1e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0056a22:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0056a26:	ed90 7a14 	vldr	s14, [r0, #80]	; 0x50
d0056a2a:	eef6 8a00 	vmov.f32	s17, #96	; 0x3f000000  0.5
d0056a2e:	edd0 6a12 	vldr	s13, [r0, #72]	; 0x48
d0056a32:	edd0 7a13 	vldr	s15, [r0, #76]	; 0x4c
d0056a36:	ee86 8a01 	vdiv.f32	s16, s12, s2
d0056a3a:	ee86 5a22 	vdiv.f32	s10, s12, s5
d0056a3e:	eec6 5a04 	vdiv.f32	s11, s12, s8
d0056a42:	ee37 7a28 	vadd.f32	s14, s14, s17
d0056a46:	ee68 0a20 	vmul.f32	s1, s16, s1
d0056a4a:	ee77 7aa8 	vadd.f32	s15, s15, s17
d0056a4e:	ee28 0a00 	vmul.f32	s0, s16, s0
d0056a52:	eeb0 8a67 	vmov.f32	s16, s15
d0056a56:	ee65 1a21 	vmul.f32	s3, s10, s3
d0056a5a:	ee25 2a02 	vmul.f32	s4, s10, s4
d0056a5e:	eeb0 5a47 	vmov.f32	s10, s14
d0056a62:	eea6 8a80 	vfma.f32	s16, s13, s0
d0056a66:	eea6 5ae0 	vfms.f32	s10, s13, s1
d0056a6a:	ee65 3aa3 	vmul.f32	s7, s11, s7
d0056a6e:	ee25 3a83 	vmul.f32	s6, s11, s6
d0056a72:	eefd 5ac8 	vcvt.s32.f32	s11, s16
d0056a76:	eef0 0a45 	vmov.f32	s1, s10
d0056a7a:	eeb0 5a67 	vmov.f32	s10, s15
d0056a7e:	ee15 ba90 	vmov	fp, s11
d0056a82:	eee6 7a83 	vfma.f32	s15, s13, s6
d0056a86:	eea6 5aa1 	vfma.f32	s10, s13, s3
d0056a8a:	eef0 1a47 	vmov.f32	s3, s14
d0056a8e:	eea6 7ae3 	vfms.f32	s14, s13, s7
d0056a92:	eee6 1ac2 	vfms.f32	s3, s13, s4
d0056a96:	eefd 6ae0 	vcvt.s32.f32	s13, s1
d0056a9a:	eebd 5ac5 	vcvt.s32.f32	s10, s10
d0056a9e:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0056aa2:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0056aa6:	ee16 6a90 	vmov	r6, s13
d0056aaa:	ee15 3a10 	vmov	r3, s10
d0056aae:	eefd 6ae1 	vcvt.s32.f32	s13, s3
d0056ab2:	ee17 4a10 	vmov	r4, s14
d0056ab6:	eba3 080b 	sub.w	r8, r3, fp
d0056aba:	ee17 3a90 	vmov	r3, s15
d0056abe:	ee16 ca90 	vmov	ip, s13
d0056ac2:	1ba7      	subs	r7, r4, r6
d0056ac4:	eba3 0e0b 	sub.w	lr, r3, fp
d0056ac8:	ebac 0506 	sub.w	r5, ip, r6
d0056acc:	fb07 f708 	mul.w	r7, r7, r8
d0056ad0:	fb0e 7515 	mls	r5, lr, r5, r7
d0056ad4:	2d00      	cmp	r5, #0
d0056ad6:	dd9f      	ble.n	d0056a18 <submitClippedTri+0x38>
d0056ad8:	f8df 9188 	ldr.w	r9, [pc, #392]	; d0056c64 <submitClippedTri+0x284>
d0056adc:	f8d9 5000 	ldr.w	r5, [r9]
d0056ae0:	f5b5 5f00 	cmp.w	r5, #8192	; 0x2000
d0056ae4:	da98      	bge.n	d0056a18 <submitClippedTri+0x38>
d0056ae6:	4f5c      	ldr	r7, [pc, #368]	; (d0056c58 <submitClippedTri+0x278>)
d0056ae8:	ea4f 1e85 	mov.w	lr, r5, lsl #6
d0056aec:	1c6b      	adds	r3, r5, #1
d0056aee:	eddf 5a5b 	vldr	s11, [pc, #364]	; d0056c5c <submitClippedTri+0x27c>
d0056af2:	eb07 1585 	add.w	r5, r7, r5, lsl #6
d0056af6:	f10e 0808 	add.w	r8, lr, #8
d0056afa:	9302      	str	r3, [sp, #8]
d0056afc:	ee15 3a10 	vmov	r3, s10
d0056b00:	f847 b00e 	str.w	fp, [r7, lr]
d0056b04:	f10e 0a10 	add.w	sl, lr, #16
d0056b08:	606e      	str	r6, [r5, #4]
d0056b0a:	b236      	sxth	r6, r6
d0056b0c:	f847 3008 	str.w	r3, [r7, r8]
d0056b10:	ee17 3a90 	vmov	r3, s15
d0056b14:	44b8      	add	r8, r7
d0056b16:	eb07 0b0a 	add.w	fp, r7, sl
d0056b1a:	eddf 6a51 	vldr	s13, [pc, #324]	; d0056c60 <submitClippedTri+0x280>
d0056b1e:	45b4      	cmp	ip, r6
d0056b20:	f8c8 c004 	str.w	ip, [r8, #4]
d0056b24:	46b0      	mov	r8, r6
d0056b26:	f847 300a 	str.w	r3, [r7, sl]
d0056b2a:	9b01      	ldr	r3, [sp, #4]
d0056b2c:	ed8b 7a01 	vstr	s14, [fp, #4]
d0056b30:	f885 3036 	strb.w	r3, [r5, #54]	; 0x36
d0056b34:	f885 1034 	strb.w	r1, [r5, #52]	; 0x34
d0056b38:	f885 2035 	strb.w	r2, [r5, #53]	; 0x35
d0056b3c:	edc5 4a07 	vstr	s9, [r5, #28]
d0056b40:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0056b44:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0056b48:	ee31 7a47 	vsub.f32	s14, s2, s14
d0056b4c:	9b02      	ldr	r3, [sp, #8]
d0056b4e:	f8c9 3000 	str.w	r3, [r9]
d0056b52:	ee27 7a27 	vmul.f32	s14, s14, s15
d0056b56:	fe87 7a25 	vmaxnm.f32	s14, s14, s11
d0056b5a:	fe87 7a46 	vminnm.f32	s14, s14, s12
d0056b5e:	ee27 7a26 	vmul.f32	s14, s14, s13
d0056b62:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0056b66:	ee17 3a10 	vmov	r3, s14
d0056b6a:	842b      	strh	r3, [r5, #32]
d0056b6c:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0056b70:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0056b74:	ee32 7ac7 	vsub.f32	s14, s5, s14
d0056b78:	ee27 7a27 	vmul.f32	s14, s14, s15
d0056b7c:	fe87 7a25 	vmaxnm.f32	s14, s14, s11
d0056b80:	fe87 7a46 	vminnm.f32	s14, s14, s12
d0056b84:	ee27 7a26 	vmul.f32	s14, s14, s13
d0056b88:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0056b8c:	ee17 3a10 	vmov	r3, s14
d0056b90:	846b      	strh	r3, [r5, #34]	; 0x22
d0056b92:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d0056b96:	ed90 7a0f 	vldr	s14, [r0, #60]	; 0x3c
d0056b9a:	ee74 7a67 	vsub.f32	s15, s8, s15
d0056b9e:	ed85 1a0a 	vstr	s2, [r5, #40]	; 0x28
d0056ba2:	edc5 2a0b 	vstr	s5, [r5, #44]	; 0x2c
d0056ba6:	ed85 4a0c 	vstr	s8, [r5, #48]	; 0x30
d0056baa:	ee67 7a87 	vmul.f32	s15, s15, s14
d0056bae:	fec7 7aa5 	vmaxnm.f32	s15, s15, s11
d0056bb2:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d0056bb6:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0056bba:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0056bbe:	ee17 3a90 	vmov	r3, s15
d0056bc2:	84ab      	strh	r3, [r5, #36]	; 0x24
d0056bc4:	db42      	blt.n	d0056c4c <submitClippedTri+0x26c>
d0056bc6:	4633      	mov	r3, r6
d0056bc8:	872e      	strh	r6, [r5, #56]	; 0x38
d0056bca:	42a3      	cmp	r3, r4
d0056bcc:	dd02      	ble.n	d0056bd4 <submitClippedTri+0x1f4>
d0056bce:	eb07 030e 	add.w	r3, r7, lr
d0056bd2:	871c      	strh	r4, [r3, #56]	; 0x38
d0056bd4:	45b4      	cmp	ip, r6
d0056bd6:	dc31      	bgt.n	d0056c3c <submitClippedTri+0x25c>
d0056bd8:	eb07 030e 	add.w	r3, r7, lr
d0056bdc:	875e      	strh	r6, [r3, #58]	; 0x3a
d0056bde:	45a0      	cmp	r8, r4
d0056be0:	da02      	bge.n	d0056be8 <submitClippedTri+0x208>
d0056be2:	eb07 030e 	add.w	r3, r7, lr
d0056be6:	875c      	strh	r4, [r3, #58]	; 0x3a
d0056be8:	eb07 030e 	add.w	r3, r7, lr
d0056bec:	f9b3 2038 	ldrsh.w	r2, [r3, #56]	; 0x38
d0056bf0:	2a00      	cmp	r2, #0
d0056bf2:	da01      	bge.n	d0056bf8 <submitClippedTri+0x218>
d0056bf4:	2200      	movs	r2, #0
d0056bf6:	871a      	strh	r2, [r3, #56]	; 0x38
d0056bf8:	eb07 030e 	add.w	r3, r7, lr
d0056bfc:	f9b3 203a 	ldrsh.w	r2, [r3, #58]	; 0x3a
d0056c00:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d0056c04:	db02      	blt.n	d0056c0c <submitClippedTri+0x22c>
d0056c06:	f240 123f 	movw	r2, #319	; 0x13f
d0056c0a:	875a      	strh	r2, [r3, #58]	; 0x3a
d0056c0c:	eb07 010e 	add.w	r1, r7, lr
d0056c10:	4477      	add	r7, lr
d0056c12:	f9b1 3038 	ldrsh.w	r3, [r1, #56]	; 0x38
d0056c16:	2b00      	cmp	r3, #0
d0056c18:	bfb8      	it	lt
d0056c1a:	331f      	addlt	r3, #31
d0056c1c:	115a      	asrs	r2, r3, #5
d0056c1e:	f9b7 303a 	ldrsh.w	r3, [r7, #58]	; 0x3a
d0056c22:	2b00      	cmp	r3, #0
d0056c24:	f881 203c 	strb.w	r2, [r1, #60]	; 0x3c
d0056c28:	bfb8      	it	lt
d0056c2a:	331f      	addlt	r3, #31
d0056c2c:	115b      	asrs	r3, r3, #5
d0056c2e:	f887 303d 	strb.w	r3, [r7, #61]	; 0x3d
d0056c32:	b00d      	add	sp, #52	; 0x34
d0056c34:	ecbd 8b02 	vpop	{d8}
d0056c38:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0056c3c:	fa0f fc8c 	sxth.w	ip, ip
d0056c40:	eb07 030e 	add.w	r3, r7, lr
d0056c44:	46e0      	mov	r8, ip
d0056c46:	f8a3 c03a 	strh.w	ip, [r3, #58]	; 0x3a
d0056c4a:	e7c8      	b.n	d0056bde <submitClippedTri+0x1fe>
d0056c4c:	fa0f f28c 	sxth.w	r2, ip
d0056c50:	4613      	mov	r3, r2
d0056c52:	872a      	strh	r2, [r5, #56]	; 0x38
d0056c54:	e7b9      	b.n	d0056bca <submitClippedTri+0x1ea>
d0056c56:	bf00      	nop
d0056c58:	d0068fc0 	.word	0xd0068fc0
d0056c5c:	00000000 	.word	0x00000000
d0056c60:	477fff00 	.word	0x477fff00
d0056c64:	d0068fac 	.word	0xd0068fac

d0056c68 <getRenderTriCount>:
d0056c68:	4b01      	ldr	r3, [pc, #4]	; (d0056c70 <getRenderTriCount+0x8>)
d0056c6a:	6818      	ldr	r0, [r3, #0]
d0056c6c:	4770      	bx	lr
d0056c6e:	bf00      	nop
d0056c70:	d0068fac 	.word	0xd0068fac

d0056c74 <drawFakeHorizonDots>:
d0056c74:	2800      	cmp	r0, #0
d0056c76:	f000 8107 	beq.w	d0056e88 <drawFakeHorizonDots+0x214>
d0056c7a:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0056c7e:	4699      	mov	r9, r3
d0056c80:	ed2d 8b10 	vpush	{d8-d15}
d0056c84:	b085      	sub	sp, #20
d0056c86:	2b00      	cmp	r3, #0
d0056c88:	f000 80f9 	beq.w	d0056e7e <drawFakeHorizonDots+0x20a>
d0056c8c:	4617      	mov	r7, r2
d0056c8e:	ed90 9a02 	vldr	s18, [r0, #8]
d0056c92:	edd0 8a00 	vldr	s17, [r0]
d0056c96:	4606      	mov	r6, r0
d0056c98:	2f02      	cmp	r7, #2
d0056c9a:	ed90 6a01 	vldr	s12, [r0, #4]
d0056c9e:	ed90 da07 	vldr	s26, [r0, #28]
d0056ca2:	460a      	mov	r2, r1
d0056ca4:	bfb8      	it	lt
d0056ca6:	2702      	movlt	r7, #2
d0056ca8:	edd0 ca0a 	vldr	s25, [r0, #40]	; 0x28
d0056cac:	edd0 6a0d 	vldr	s13, [r0, #52]	; 0x34
d0056cb0:	ee30 ba46 	vsub.f32	s22, s0, s12
d0056cb4:	ee07 7a90 	vmov	s15, r7
d0056cb8:	ed90 fa06 	vldr	s30, [r0, #24]
d0056cbc:	edd0 ea08 	vldr	s29, [r0, #32]
d0056cc0:	f06f 0311 	mvn.w	r3, #17
d0056cc4:	eeb8 8ae7 	vcvt.f32.s32	s16, s15
d0056cc8:	ed90 ea09 	vldr	s28, [r0, #36]	; 0x24
d0056ccc:	edd0 da0b 	vldr	s27, [r0, #44]	; 0x2c
d0056cd0:	ee2b da0d 	vmul.f32	s26, s22, s26
d0056cd4:	ed90 ca0c 	vldr	s24, [r0, #48]	; 0x30
d0056cd8:	ee6b ca2c 	vmul.f32	s25, s22, s25
d0056cdc:	ee89 7a08 	vdiv.f32	s14, s18, s16
d0056ce0:	edd0 ba0e 	vldr	s23, [r0, #56]	; 0x38
d0056ce4:	eddf 5a69 	vldr	s11, [pc, #420]	; d0056e8c <drawFakeHorizonDots+0x218>
d0056ce8:	4d69      	ldr	r5, [pc, #420]	; (d0056e90 <drawFakeHorizonDots+0x21c>)
d0056cea:	4c6a      	ldr	r4, [pc, #424]	; (d0056e94 <drawFakeHorizonDots+0x220>)
d0056cec:	eddf 9a6a 	vldr	s19, [pc, #424]	; d0056e98 <drawFakeHorizonDots+0x224>
d0056cf0:	eec8 7a88 	vdiv.f32	s15, s17, s16
d0056cf4:	9302      	str	r3, [sp, #8]
d0056cf6:	f8df b1a8 	ldr.w	fp, [pc, #424]	; d0056ea0 <drawFakeHorizonDots+0x22c>
d0056cfa:	4623      	mov	r3, r4
d0056cfc:	ee28 8a25 	vmul.f32	s16, s16, s11
d0056d00:	ee2b ba26 	vmul.f32	s22, s22, s13
d0056d04:	ee68 9a29 	vmul.f32	s19, s16, s19
d0056d08:	febb 7a47 	vrintm.f32	s14, s14
d0056d0c:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0056d10:	ee17 0a10 	vmov	r0, s14
d0056d14:	fefb 7a67 	vrintm.f32	s15, s15
d0056d18:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0056d1c:	3812      	subs	r0, #18
d0056d1e:	ee17 1a90 	vmov	r1, s15
d0056d22:	fb05 f500 	mul.w	r5, r5, r0
d0056d26:	fb00 f007 	mul.w	r0, r0, r7
d0056d2a:	fb04 5a01 	mla	sl, r4, r1, r5
d0056d2e:	3912      	subs	r1, #18
d0056d30:	9001      	str	r0, [sp, #4]
d0056d32:	fb07 f101 	mul.w	r1, r7, r1
d0056d36:	9103      	str	r1, [sp, #12]
d0056d38:	eddd 7a01 	vldr	s15, [sp, #4]
d0056d3c:	ee39 aa08 	vadd.f32	s20, s18, s16
d0056d40:	9902      	ldr	r1, [sp, #8]
d0056d42:	ee78 aa88 	vadd.f32	s21, s17, s16
d0056d46:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0056d4a:	9d03      	ldr	r5, [sp, #12]
d0056d4c:	fb01 f801 	mul.w	r8, r1, r1
d0056d50:	f06f 0411 	mvn.w	r4, #17
d0056d54:	ee37 aaca 	vsub.f32	s20, s15, s20
d0056d58:	e078      	b.n	d0056e4c <drawFakeHorizonDots+0x1d8>
d0056d5a:	f5c0 70a2 	rsb	r0, r0, #324	; 0x144
d0056d5e:	fb09 f000 	mul.w	r0, r9, r0
d0056d62:	2850      	cmp	r0, #80	; 0x50
d0056d64:	dd6e      	ble.n	d0056e44 <drawFakeHorizonDots+0x1d0>
d0056d66:	494d      	ldr	r1, [pc, #308]	; (d0056e9c <drawFakeHorizonDots+0x228>)
d0056d68:	fba1 1000 	umull	r1, r0, r1, r0
d0056d6c:	f3c0 1087 	ubfx	r0, r0, #6, #8
d0056d70:	fb03 a104 	mla	r1, r3, r4, sl
d0056d74:	ea81 3151 	eor.w	r1, r1, r1, lsr #13
d0056d78:	fb0b f101 	mul.w	r1, fp, r1
d0056d7c:	ea81 4111 	eor.w	r1, r1, r1, lsr #16
d0056d80:	fa5f fc81 	uxtb.w	ip, r1
d0056d84:	4584      	cmp	ip, r0
d0056d86:	d85d      	bhi.n	d0056e44 <drawFakeHorizonDots+0x1d0>
d0056d88:	ee07 5a10 	vmov	s14, r5
d0056d8c:	f3c1 4007 	ubfx	r0, r1, #16, #8
d0056d90:	f3c1 2107 	ubfx	r1, r1, #8, #8
d0056d94:	eef0 4a4a 	vmov.f32	s9, s20
d0056d98:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0056d9c:	ee06 0a90 	vmov	s13, r0
d0056da0:	ee07 1a90 	vmov	s15, r1
d0056da4:	ed96 6a10 	vldr	s12, [r6, #64]	; 0x40
d0056da8:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0056dac:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0056db0:	ee37 7a6a 	vsub.f32	s14, s14, s21
d0056db4:	eee6 4aa9 	vfma.f32	s9, s13, s19
d0056db8:	eea7 7aa9 	vfma.f32	s14, s15, s19
d0056dbc:	eef0 7a47 	vmov.f32	s15, s14
d0056dc0:	ee2b 7aa4 	vmul.f32	s14, s23, s9
d0056dc4:	eeac 7a27 	vfma.f32	s14, s24, s15
d0056dc8:	ee3b 7a07 	vadd.f32	s14, s22, s14
d0056dcc:	eeb4 6ac7 	vcmpe.f32	s12, s14
d0056dd0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056dd4:	da36      	bge.n	d0056e44 <drawFakeHorizonDots+0x1d0>
d0056dd6:	eef7 3a00 	vmov.f32	s7, #112	; 0x3f800000  1.0
d0056dda:	edd6 6a13 	vldr	s13, [r6, #76]	; 0x4c
d0056dde:	ee2f 6a27 	vmul.f32	s12, s30, s15
d0056de2:	ed96 5a12 	vldr	s10, [r6, #72]	; 0x48
d0056de6:	ee6e 7a27 	vmul.f32	s15, s28, s15
d0056dea:	edd6 5a14 	vldr	s11, [r6, #80]	; 0x50
d0056dee:	ee83 4a87 	vdiv.f32	s8, s7, s14
d0056df2:	eeae 6aa4 	vfma.f32	s12, s29, s9
d0056df6:	eeed 7aa4 	vfma.f32	s15, s27, s9
d0056dfa:	eef6 4a00 	vmov.f32	s9, #96	; 0x3f000000  0.5
d0056dfe:	ee36 7aa4 	vadd.f32	s14, s13, s9
d0056e02:	ee7d 6a06 	vadd.f32	s13, s26, s12
d0056e06:	ee7c 7aa7 	vadd.f32	s15, s25, s15
d0056e0a:	ee35 6aa4 	vadd.f32	s12, s11, s9
d0056e0e:	ee66 6a85 	vmul.f32	s13, s13, s10
d0056e12:	ee65 7a67 	vnmul.f32	s15, s10, s15
d0056e16:	eea6 7a84 	vfma.f32	s14, s13, s8
d0056e1a:	eea7 6a84 	vfma.f32	s12, s15, s8
d0056e1e:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0056e22:	eefd 7ac6 	vcvt.s32.f32	s15, s12
d0056e26:	ee17 0a10 	vmov	r0, s14
d0056e2a:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0056e2e:	d209      	bcs.n	d0056e44 <drawFakeHorizonDots+0x1d0>
d0056e30:	ee17 1a90 	vmov	r1, s15
d0056e34:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d0056e38:	d204      	bcs.n	d0056e44 <drawFakeHorizonDots+0x1d0>
d0056e3a:	9200      	str	r2, [sp, #0]
d0056e3c:	f7fa fc90 	bl	d0051760 <putPixel>
d0056e40:	4b14      	ldr	r3, [pc, #80]	; (d0056e94 <drawFakeHorizonDots+0x220>)
d0056e42:	9a00      	ldr	r2, [sp, #0]
d0056e44:	3401      	adds	r4, #1
d0056e46:	443d      	add	r5, r7
d0056e48:	2c13      	cmp	r4, #19
d0056e4a:	d009      	beq.n	d0056e60 <drawFakeHorizonDots+0x1ec>
d0056e4c:	fb04 8004 	mla	r0, r4, r4, r8
d0056e50:	f5b0 7fa2 	cmp.w	r0, #324	; 0x144
d0056e54:	dcf6      	bgt.n	d0056e44 <drawFakeHorizonDots+0x1d0>
d0056e56:	28f3      	cmp	r0, #243	; 0xf3
d0056e58:	f73f af7f 	bgt.w	d0056d5a <drawFakeHorizonDots+0xe6>
d0056e5c:	4648      	mov	r0, r9
d0056e5e:	e787      	b.n	d0056d70 <drawFakeHorizonDots+0xfc>
d0056e60:	9902      	ldr	r1, [sp, #8]
d0056e62:	f10a 5a1f 	add.w	sl, sl, #666894336	; 0x27c00000
d0056e66:	9801      	ldr	r0, [sp, #4]
d0056e68:	3101      	adds	r1, #1
d0056e6a:	f50a 1aa7 	add.w	sl, sl, #1368064	; 0x14e000
d0056e6e:	4438      	add	r0, r7
d0056e70:	2913      	cmp	r1, #19
d0056e72:	f60a 3a2f 	addw	sl, sl, #2863	; 0xb2f
d0056e76:	9102      	str	r1, [sp, #8]
d0056e78:	9001      	str	r0, [sp, #4]
d0056e7a:	f47f af5d 	bne.w	d0056d38 <drawFakeHorizonDots+0xc4>
d0056e7e:	b005      	add	sp, #20
d0056e80:	ecbd 8b10 	vpop	{d8-d15}
d0056e84:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0056e88:	4770      	bx	lr
d0056e8a:	bf00      	nop
d0056e8c:	3eb33333 	.word	0x3eb33333
d0056e90:	27d4eb2f 	.word	0x27d4eb2f
d0056e94:	165667b1 	.word	0x165667b1
d0056e98:	3c008081 	.word	0x3c008081
d0056e9c:	ca4587e7 	.word	0xca4587e7
d0056ea0:	4bf19f61 	.word	0x4bf19f61

d0056ea4 <drawFakeSkyDots>:
d0056ea4:	2a10      	cmp	r2, #16
d0056ea6:	ed9f 6a73 	vldr	s12, [pc, #460]	; d0057074 <drawFakeSkyDots+0x1d0>
d0056eaa:	ed9f 7a73 	vldr	s14, [pc, #460]	; d0057078 <drawFakeSkyDots+0x1d4>
d0056eae:	bfb8      	it	lt
d0056eb0:	2210      	movlt	r2, #16
d0056eb2:	2b08      	cmp	r3, #8
d0056eb4:	ee07 2a90 	vmov	s15, r2
d0056eb8:	bfb8      	it	lt
d0056eba:	2308      	movlt	r3, #8
d0056ebc:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d0056ec0:	ee07 3a90 	vmov	s15, r3
d0056ec4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0056ec8:	ed2d 8b10 	vpush	{d8-d15}
d0056ecc:	eec6 da26 	vdiv.f32	s27, s12, s13
d0056ed0:	b085      	sub	sp, #20
d0056ed2:	4617      	mov	r7, r2
d0056ed4:	4682      	mov	sl, r0
d0056ed6:	9303      	str	r3, [sp, #12]
d0056ed8:	468b      	mov	fp, r1
d0056eda:	2300      	movs	r3, #0
d0056edc:	edd0 ea06 	vldr	s29, [r0, #24]
d0056ee0:	ed90 ea07 	vldr	s28, [r0, #28]
d0056ee4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0056ee8:	ed90 da08 	vldr	s26, [r0, #32]
d0056eec:	edd0 ca09 	vldr	s25, [r0, #36]	; 0x24
d0056ef0:	ed90 ca0a 	vldr	s24, [r0, #40]	; 0x28
d0056ef4:	eec7 aa27 	vdiv.f32	s21, s14, s15
d0056ef8:	edd0 7a0d 	vldr	s15, [r0, #52]	; 0x34
d0056efc:	edd0 ba0b 	vldr	s23, [r0, #44]	; 0x2c
d0056f00:	edcd 7a00 	vstr	s15, [sp]
d0056f04:	ed90 ba0c 	vldr	s22, [r0, #48]	; 0x30
d0056f08:	edd0 7a0e 	vldr	s15, [r0, #56]	; 0x38
d0056f0c:	f89d 9078 	ldrb.w	r9, [sp, #120]	; 0x78
d0056f10:	f8df 8178 	ldr.w	r8, [pc, #376]	; d005708c <drawFakeSkyDots+0x1e8>
d0056f14:	ed9f fa59 	vldr	s30, [pc, #356]	; d005707c <drawFakeSkyDots+0x1d8>
d0056f18:	9302      	str	r3, [sp, #8]
d0056f1a:	edcd 7a01 	vstr	s15, [sp, #4]
d0056f1e:	eddd 7a02 	vldr	s15, [sp, #8]
d0056f22:	eef6 8a00 	vmov.f32	s17, #96	; 0x3f000000  0.5
d0056f26:	4b56      	ldr	r3, [pc, #344]	; (d0057080 <drawFakeSkyDots+0x1dc>)
d0056f28:	2400      	movs	r4, #0
d0056f2a:	ee17 2a90 	vmov	r2, s15
d0056f2e:	eeb8 8ae7 	vcvt.f32.s32	s16, s15
d0056f32:	4e54      	ldr	r6, [pc, #336]	; (d0057084 <drawFakeSkyDots+0x1e0>)
d0056f34:	fb03 f502 	mul.w	r5, r3, r2
d0056f38:	ea85 3355 	eor.w	r3, r5, r5, lsr #13
d0056f3c:	ee07 4a90 	vmov	s15, r4
d0056f40:	eef0 fa48 	vmov.f32	s31, s16
d0056f44:	3401      	adds	r4, #1
d0056f46:	fb08 f303 	mul.w	r3, r8, r3
d0056f4a:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d0056f4e:	4435      	add	r5, r6
d0056f50:	ea83 4313 	eor.w	r3, r3, r3, lsr #16
d0056f54:	f3c3 4207 	ubfx	r2, r3, #16, #8
d0056f58:	ee07 2a90 	vmov	s15, r2
d0056f5c:	f3c3 2207 	ubfx	r2, r3, #8, #8
d0056f60:	b2db      	uxtb	r3, r3
d0056f62:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0056f66:	ee07 2a10 	vmov	s14, r2
d0056f6a:	454b      	cmp	r3, r9
d0056f6c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0056f70:	eee7 fa8f 	vfma.f32	s31, s15, s30
d0056f74:	d86f      	bhi.n	d0057056 <drawFakeSkyDots+0x1b2>
d0056f76:	eee7 6a0f 	vfma.f32	s13, s14, s30
d0056f7a:	ee6f faaa 	vmul.f32	s31, s31, s21
d0056f7e:	eeb0 0a6f 	vmov.f32	s0, s31
d0056f82:	ee26 aaad 	vmul.f32	s20, s13, s27
d0056f86:	f002 fe13 	bl	d0059bb0 <sinf>
d0056f8a:	eeb0 9a40 	vmov.f32	s18, s0
d0056f8e:	eeb0 0a6f 	vmov.f32	s0, s31
d0056f92:	f002 fc29 	bl	d00597e8 <cosf>
d0056f96:	eef0 fa40 	vmov.f32	s31, s0
d0056f9a:	eeb0 0a4a 	vmov.f32	s0, s20
d0056f9e:	f002 fe07 	bl	d0059bb0 <sinf>
d0056fa2:	eef0 9a40 	vmov.f32	s19, s0
d0056fa6:	eeb0 0a4a 	vmov.f32	s0, s20
d0056faa:	f002 fc1d 	bl	d00597e8 <cosf>
d0056fae:	eddd 6a01 	vldr	s13, [sp, #4]
d0056fb2:	ee2f 7aa9 	vmul.f32	s14, s31, s19
d0056fb6:	ee6f 7a80 	vmul.f32	s15, s31, s0
d0056fba:	ee26 6a87 	vmul.f32	s12, s13, s14
d0056fbe:	ee6c 4aa7 	vmul.f32	s9, s25, s15
d0056fc2:	ee6e 6aa7 	vmul.f32	s13, s29, s15
d0056fc6:	eeab 6a27 	vfma.f32	s12, s22, s15
d0056fca:	eef0 7a66 	vmov.f32	s15, s13
d0056fce:	eef0 6a64 	vmov.f32	s13, s9
d0056fd2:	eeed 7a07 	vfma.f32	s15, s26, s14
d0056fd6:	eeeb 6a87 	vfma.f32	s13, s23, s14
d0056fda:	eeb0 7a46 	vmov.f32	s14, s12
d0056fde:	ed9d 6a00 	vldr	s12, [sp]
d0056fe2:	eea6 7a09 	vfma.f32	s14, s12, s18
d0056fe6:	ed9f 6a28 	vldr	s12, [pc, #160]	; d0057088 <drawFakeSkyDots+0x1e4>
d0056fea:	eeee 7a09 	vfma.f32	s15, s28, s18
d0056fee:	eeec 6a09 	vfma.f32	s13, s24, s18
d0056ff2:	eeb4 7ac6 	vcmpe.f32	s14, s12
d0056ff6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056ffa:	d92c      	bls.n	d0057056 <drawFakeSkyDots+0x1b2>
d0056ffc:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0057000:	ed9a 5a12 	vldr	s10, [sl, #72]	; 0x48
d0057004:	ee65 7a27 	vmul.f32	s15, s10, s15
d0057008:	eec6 4a07 	vdiv.f32	s9, s12, s14
d005700c:	ed9a 7a13 	vldr	s14, [sl, #76]	; 0x4c
d0057010:	ed9a 6a14 	vldr	s12, [sl, #80]	; 0x50
d0057014:	ee37 7a28 	vadd.f32	s14, s14, s17
d0057018:	ee36 6a28 	vadd.f32	s12, s12, s17
d005701c:	ee65 6a26 	vmul.f32	s13, s10, s13
d0057020:	eea7 7aa4 	vfma.f32	s14, s15, s9
d0057024:	eef0 7a47 	vmov.f32	s15, s14
d0057028:	eeb0 7a46 	vmov.f32	s14, s12
d005702c:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0057030:	eea4 7ae6 	vfms.f32	s14, s9, s13
d0057034:	ee17 0a90 	vmov	r0, s15
d0057038:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d005703c:	eefd 7ac7 	vcvt.s32.f32	s15, s14
d0057040:	d209      	bcs.n	d0057056 <drawFakeSkyDots+0x1b2>
d0057042:	ee17 3a90 	vmov	r3, s15
d0057046:	465a      	mov	r2, fp
d0057048:	ee17 1a90 	vmov	r1, s15
d005704c:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0057050:	d201      	bcs.n	d0057056 <drawFakeSkyDots+0x1b2>
d0057052:	f7fa fb85 	bl	d0051760 <putPixel>
d0057056:	42a7      	cmp	r7, r4
d0057058:	f47f af6e 	bne.w	d0056f38 <drawFakeSkyDots+0x94>
d005705c:	9b02      	ldr	r3, [sp, #8]
d005705e:	9a03      	ldr	r2, [sp, #12]
d0057060:	3301      	adds	r3, #1
d0057062:	429a      	cmp	r2, r3
d0057064:	9302      	str	r3, [sp, #8]
d0057066:	f47f af5a 	bne.w	d0056f1e <drawFakeSkyDots+0x7a>
d005706a:	b005      	add	sp, #20
d005706c:	ecbd 8b10 	vpop	{d8-d15}
d0057070:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0057074:	40c90fdb 	.word	0x40c90fdb
d0057078:	3fc90fdb 	.word	0x3fc90fdb
d005707c:	3b808081 	.word	0x3b808081
d0057080:	27d4eb2f 	.word	0x27d4eb2f
d0057084:	165667b1 	.word	0x165667b1
d0057088:	3a83126f 	.word	0x3a83126f
d005708c:	4bf19f61 	.word	0x4bf19f61

d0057090 <drawFakeHorizon>:
d0057090:	2800      	cmp	r0, #0
d0057092:	f000 813e 	beq.w	d0057312 <drawFakeHorizon+0x282>
d0057096:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d005709a:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d005709e:	ed2d 8b0e 	vpush	{d8-d14}
d00570a2:	ed90 da12 	vldr	s26, [r0, #72]	; 0x48
d00570a6:	b083      	sub	sp, #12
d00570a8:	edd0 ba14 	vldr	s23, [r0, #80]	; 0x50
d00570ac:	460f      	mov	r7, r1
d00570ae:	eec7 8a8d 	vdiv.f32	s17, s15, s26
d00570b2:	eddf 7a9c 	vldr	s15, [pc, #624]	; d0057324 <drawFakeHorizon+0x294>
d00570b6:	edd0 da0a 	vldr	s27, [r0, #40]	; 0x28
d00570ba:	4690      	mov	r8, r2
d00570bc:	ed90 ca0d 	vldr	s24, [r0, #52]	; 0x34
d00570c0:	4699      	mov	r9, r3
d00570c2:	ed90 ea07 	vldr	s28, [r0, #28]
d00570c6:	2400      	movs	r4, #0
d00570c8:	ed90 9a01 	vldr	s18, [r0, #4]
d00570cc:	ee7b 7ae7 	vsub.f32	s15, s23, s15
d00570d0:	edd0 9a13 	vldr	s19, [r0, #76]	; 0x4c
d00570d4:	ee2b 7aad 	vmul.f32	s14, s23, s27
d00570d8:	4e93      	ldr	r6, [pc, #588]	; (d0057328 <drawFakeHorizon+0x298>)
d00570da:	eef0 aa4c 	vmov.f32	s21, s24
d00570de:	ed9f 8a93 	vldr	s16, [pc, #588]	; d005732c <drawFakeHorizon+0x29c>
d00570e2:	eeb0 aa4c 	vmov.f32	s20, s24
d00570e6:	eecd ca2d 	vdiv.f32	s25, s26, s27
d00570ea:	eeb0 baed 	vabs.f32	s22, s27
d00570ee:	ee30 9a49 	vsub.f32	s18, s0, s18
d00570f2:	ee67 7aa8 	vmul.f32	s15, s15, s17
d00570f6:	eee7 aa28 	vfma.f32	s21, s14, s17
d00570fa:	ee6e 8a28 	vmul.f32	s17, s28, s17
d00570fe:	eea7 aaad 	vfma.f32	s20, s15, s27
d0057102:	e056      	b.n	d00571b2 <drawFakeHorizon+0x122>
d0057104:	ee89 6a26 	vdiv.f32	s12, s18, s13
d0057108:	eef0 6ac7 	vabs.f32	s13, s14
d005710c:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d0057110:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057114:	eef4 6ac8 	vcmpe.f32	s13, s16
d0057118:	bfcc      	ite	gt
d005711a:	2201      	movgt	r2, #1
d005711c:	2200      	movle	r2, #0
d005711e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057122:	da61      	bge.n	d00571e8 <drawFakeHorizon+0x158>
d0057124:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d0057128:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d005712c:	6833      	ldr	r3, [r6, #0]
d005712e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057132:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d0057136:	f240 80a8 	bls.w	d005728a <drawFakeHorizon+0x1fa>
d005713a:	eeb4 bac8 	vcmpe.f32	s22, s16
d005713e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057142:	f100 809a 	bmi.w	d005727a <drawFakeHorizon+0x1ea>
d0057146:	ee7c 7a27 	vadd.f32	s15, s24, s15
d005714a:	eeb0 7a6b 	vmov.f32	s14, s23
d005714e:	eeac 7aa7 	vfma.f32	s14, s25, s15
d0057152:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d0057156:	ee17 ba90 	vmov	fp, s15
d005715a:	f1bb 0f00 	cmp.w	fp, #0
d005715e:	f2c0 80aa 	blt.w	d00572b6 <drawFakeHorizon+0x226>
d0057162:	2201      	movs	r2, #1
d0057164:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d0057168:	46da      	mov	sl, fp
d005716a:	bfa8      	it	ge
d005716c:	f44f 7aa0 	movge.w	sl, #320	; 0x140
d0057170:	2a00      	cmp	r2, #0
d0057172:	f000 8091 	beq.w	d0057298 <drawFakeHorizon+0x208>
d0057176:	f1bb 0f00 	cmp.w	fp, #0
d005717a:	d009      	beq.n	d0057190 <drawFakeHorizon+0x100>
d005717c:	f1ba 0f00 	cmp.w	sl, #0
d0057180:	4628      	mov	r0, r5
d0057182:	4641      	mov	r1, r8
d0057184:	bfcc      	ite	gt
d0057186:	4652      	movgt	r2, sl
d0057188:	2201      	movle	r2, #1
d005718a:	4415      	add	r5, r2
d005718c:	f001 fd1c 	bl	d0058bc8 <memset>
d0057190:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d0057194:	d009      	beq.n	d00571aa <drawFakeHorizon+0x11a>
d0057196:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d005719a:	f5ca 72a0 	rsb	r2, sl, #320	; 0x140
d005719e:	4628      	mov	r0, r5
d00571a0:	4639      	mov	r1, r7
d00571a2:	bfa8      	it	ge
d00571a4:	2201      	movge	r2, #1
d00571a6:	f001 fd0f 	bl	d0058bc8 <memset>
d00571aa:	3401      	adds	r4, #1
d00571ac:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d00571b0:	d04e      	beq.n	d0057250 <drawFakeHorizon+0x1c0>
d00571b2:	ee07 4a90 	vmov	s15, r4
d00571b6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00571ba:	ee77 7ae9 	vsub.f32	s15, s15, s19
d00571be:	ee67 7aa8 	vmul.f32	s15, s15, s17
d00571c2:	ee7a 6aa7 	vadd.f32	s13, s21, s15
d00571c6:	ee3a 7a27 	vadd.f32	s14, s20, s15
d00571ca:	eeb0 6ae6 	vabs.f32	s12, s13
d00571ce:	eeb4 6ac8 	vcmpe.f32	s12, s16
d00571d2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00571d6:	da95      	bge.n	d0057104 <drawFakeHorizon+0x74>
d00571d8:	eef0 6ac7 	vabs.f32	s13, s14
d00571dc:	eef4 6ac8 	vcmpe.f32	s13, s16
d00571e0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00571e4:	db4c      	blt.n	d0057280 <drawFakeHorizon+0x1f0>
d00571e6:	2200      	movs	r2, #0
d00571e8:	eec9 6a07 	vdiv.f32	s13, s18, s14
d00571ec:	6833      	ldr	r3, [r6, #0]
d00571ee:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d00571f2:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d00571f6:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00571fa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00571fe:	bfcc      	ite	gt
d0057200:	2301      	movgt	r3, #1
d0057202:	2300      	movle	r3, #0
d0057204:	4293      	cmp	r3, r2
d0057206:	f000 8085 	beq.w	d0057314 <drawFakeHorizon+0x284>
d005720a:	eeb4 bac8 	vcmpe.f32	s22, s16
d005720e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057212:	d429      	bmi.n	d0057268 <drawFakeHorizon+0x1d8>
d0057214:	ee7c 7a27 	vadd.f32	s15, s24, s15
d0057218:	eeb0 7a6b 	vmov.f32	s14, s23
d005721c:	eeac 7aa7 	vfma.f32	s14, s25, s15
d0057220:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d0057224:	ee17 ba90 	vmov	fp, s15
d0057228:	f1bb 0f00 	cmp.w	fp, #0
d005722c:	da9a      	bge.n	d0057164 <drawFakeHorizon+0xd4>
d005722e:	2a00      	cmp	r2, #0
d0057230:	d141      	bne.n	d00572b6 <drawFakeHorizon+0x226>
d0057232:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d0057236:	f104 0401 	add.w	r4, r4, #1
d005723a:	f5c2 72a0 	rsb	r2, r2, #320	; 0x140
d005723e:	4628      	mov	r0, r5
d0057240:	bfa8      	it	ge
d0057242:	2201      	movge	r2, #1
d0057244:	4641      	mov	r1, r8
d0057246:	f001 fcbf 	bl	d0058bc8 <memset>
d005724a:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d005724e:	d1b0      	bne.n	d00571b2 <drawFakeHorizon+0x122>
d0057250:	eddf 7a36 	vldr	s15, [pc, #216]	; d005732c <drawFakeHorizon+0x29c>
d0057254:	eeb4 bae7 	vcmpe.f32	s22, s15
d0057258:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005725c:	da31      	bge.n	d00572c2 <drawFakeHorizon+0x232>
d005725e:	b003      	add	sp, #12
d0057260:	ecbd 8b0e 	vpop	{d8-d14}
d0057264:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0057268:	b93a      	cbnz	r2, d005727a <drawFakeHorizon+0x1ea>
d005726a:	22a0      	movs	r2, #160	; 0xa0
d005726c:	4628      	mov	r0, r5
d005726e:	4639      	mov	r1, r7
d0057270:	4415      	add	r5, r2
d0057272:	f001 fca9 	bl	d0058bc8 <memset>
d0057276:	22a0      	movs	r2, #160	; 0xa0
d0057278:	e7db      	b.n	d0057232 <drawFakeHorizon+0x1a2>
d005727a:	f04f 0aa0 	mov.w	sl, #160	; 0xa0
d005727e:	e77d      	b.n	d005717c <drawFakeHorizon+0xec>
d0057280:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d0057284:	6832      	ldr	r2, [r6, #0]
d0057286:	eb02 1585 	add.w	r5, r2, r5, lsl #6
d005728a:	4639      	mov	r1, r7
d005728c:	4628      	mov	r0, r5
d005728e:	f44f 72a0 	mov.w	r2, #320	; 0x140
d0057292:	f001 fc99 	bl	d0058bc8 <memset>
d0057296:	e788      	b.n	d00571aa <drawFakeHorizon+0x11a>
d0057298:	f1bb 0f00 	cmp.w	fp, #0
d005729c:	d00e      	beq.n	d00572bc <drawFakeHorizon+0x22c>
d005729e:	4628      	mov	r0, r5
d00572a0:	4652      	mov	r2, sl
d00572a2:	4639      	mov	r1, r7
d00572a4:	4455      	add	r5, sl
d00572a6:	f001 fc8f 	bl	d0058bc8 <memset>
d00572aa:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d00572ae:	f6bf af7c 	bge.w	d00571aa <drawFakeHorizon+0x11a>
d00572b2:	4652      	mov	r2, sl
d00572b4:	e7bd      	b.n	d0057232 <drawFakeHorizon+0x1a2>
d00572b6:	f04f 0a00 	mov.w	sl, #0
d00572ba:	e76c      	b.n	d0057196 <drawFakeHorizon+0x106>
d00572bc:	46da      	mov	sl, fp
d00572be:	4652      	mov	r2, sl
d00572c0:	e7b7      	b.n	d0057232 <drawFakeHorizon+0x1a2>
d00572c2:	ee2d ca0c 	vmul.f32	s24, s26, s24
d00572c6:	eddf 7a1a 	vldr	s15, [pc, #104]	; d0057330 <drawFakeHorizon+0x2a0>
d00572ca:	f240 12df 	movw	r2, #479	; 0x1df
d00572ce:	2000      	movs	r0, #0
d00572d0:	ee77 7ae9 	vsub.f32	s15, s15, s19
d00572d4:	f8cd 9000 	str.w	r9, [sp]
d00572d8:	eef0 6a4c 	vmov.f32	s13, s24
d00572dc:	eea7 ca8e 	vfma.f32	s24, s15, s28
d00572e0:	eee9 6ace 	vfms.f32	s13, s19, s28
d00572e4:	eecc 7a2d 	vdiv.f32	s15, s24, s27
d00572e8:	ee86 7aad 	vdiv.f32	s14, s13, s27
d00572ec:	ee37 7a2b 	vadd.f32	s14, s14, s23
d00572f0:	ee77 baab 	vadd.f32	s23, s15, s23
d00572f4:	febc 7ac7 	vcvta.s32.f32	s14, s14
d00572f8:	fefc 7aeb 	vcvta.s32.f32	s15, s23
d00572fc:	ee17 1a10 	vmov	r1, s14
d0057300:	ee17 3a90 	vmov	r3, s15
d0057304:	f7fa fa3c 	bl	d0051780 <drawLine>
d0057308:	b003      	add	sp, #12
d005730a:	ecbd 8b0e 	vpop	{d8-d14}
d005730e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0057312:	4770      	bx	lr
d0057314:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0057318:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005731c:	ddb5      	ble.n	d005728a <drawFakeHorizon+0x1fa>
d005731e:	4641      	mov	r1, r8
d0057320:	e7b4      	b.n	d005728c <drawFakeHorizon+0x1fc>
d0057322:	bf00      	nop
d0057324:	439f8000 	.word	0x439f8000
d0057328:	d00f5084 	.word	0xd00f5084
d005732c:	38d1b717 	.word	0x38d1b717
d0057330:	43ef8000 	.word	0x43ef8000

d0057334 <submitEntitySolid>:
d0057334:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0057338:	ed2d 8b10 	vpush	{d8-d15}
d005733c:	b0bb      	sub	sp, #236	; 0xec
d005733e:	f10d 038f 	add.w	r3, sp, #143	; 0x8f
d0057342:	9102      	str	r1, [sp, #8]
d0057344:	f023 031f 	bic.w	r3, r3, #31
d0057348:	9303      	str	r3, [sp, #12]
d005734a:	2800      	cmp	r0, #0
d005734c:	f000 832e 	beq.w	d00579ac <submitEntitySolid+0x678>
d0057350:	f8d0 a00c 	ldr.w	sl, [r0, #12]
d0057354:	4604      	mov	r4, r0
d0057356:	f1ba 0f00 	cmp.w	sl, #0
d005735a:	f000 8327 	beq.w	d00579ac <submitEntitySolid+0x678>
d005735e:	f8da 3000 	ldr.w	r3, [sl]
d0057362:	2b00      	cmp	r3, #0
d0057364:	f000 8322 	beq.w	d00579ac <submitEntitySolid+0x678>
d0057368:	f8da 3010 	ldr.w	r3, [sl, #16]
d005736c:	2b00      	cmp	r3, #0
d005736e:	f000 831d 	beq.w	d00579ac <submitEntitySolid+0x678>
d0057372:	f8da 3004 	ldr.w	r3, [sl, #4]
d0057376:	3b01      	subs	r3, #1
d0057378:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d005737c:	f080 8316 	bcs.w	d00579ac <submitEntitySolid+0x678>
d0057380:	f8da 3014 	ldr.w	r3, [sl, #20]
d0057384:	2b00      	cmp	r3, #0
d0057386:	f340 8311 	ble.w	d00579ac <submitEntitySolid+0x678>
d005738a:	460e      	mov	r6, r1
d005738c:	edd1 fa11 	vldr	s31, [r1, #68]	; 0x44
d0057390:	ed91 ba10 	vldr	s22, [r1, #64]	; 0x40
d0057394:	f7fe fdfa 	bl	d0055f8c <lightsGet>
d0057398:	4605      	mov	r5, r0
d005739a:	f7fe fdfb 	bl	d0055f94 <lightsGetCount>
d005739e:	edda 7a09 	vldr	s15, [sl, #36]	; 0x24
d00573a2:	ed9a 7a0a 	vldr	s14, [sl, #40]	; 0x28
d00573a6:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d00573aa:	edcd 7a0b 	vstr	s15, [sp, #44]	; 0x2c
d00573ae:	edda 7a08 	vldr	s15, [sl, #32]
d00573b2:	edd4 3a00 	vldr	s7, [r4]
d00573b6:	edcd 7a05 	vstr	s15, [sp, #20]
d00573ba:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00573be:	edda 7a0c 	vldr	s15, [sl, #48]	; 0x30
d00573c2:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d00573c6:	edd4 1a02 	vldr	s3, [r4, #8]
d00573ca:	edcd 7a0a 	vstr	s15, [sp, #40]	; 0x28
d00573ce:	bfc8      	it	gt
d00573d0:	2301      	movgt	r3, #1
d00573d2:	edda 7a0b 	vldr	s15, [sl, #44]	; 0x2c
d00573d6:	bfd8      	it	le
d00573d8:	2300      	movle	r3, #0
d00573da:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00573de:	ed8d 7a0c 	vstr	s14, [sp, #48]	; 0x30
d00573e2:	edcd 7a0d 	vstr	s15, [sp, #52]	; 0x34
d00573e6:	edd6 7a00 	vldr	s15, [r6]
d00573ea:	bfc8      	it	gt
d00573ec:	f043 0301 	orrgt.w	r3, r3, #1
d00573f0:	ed94 fa01 	vldr	s30, [r4, #4]
d00573f4:	edcd 7a07 	vstr	s15, [sp, #28]
d00573f8:	edd6 7a01 	vldr	s15, [r6, #4]
d00573fc:	ed94 aa07 	vldr	s20, [r4, #28]
d0057400:	edcd 7a08 	vstr	s15, [sp, #32]
d0057404:	edd6 7a02 	vldr	s15, [r6, #8]
d0057408:	edd4 aa08 	vldr	s21, [r4, #32]
d005740c:	edcd 7a09 	vstr	s15, [sp, #36]	; 0x24
d0057410:	edd4 ea09 	vldr	s29, [r4, #36]	; 0x24
d0057414:	edd4 ba0a 	vldr	s23, [r4, #40]	; 0x28
d0057418:	ed94 ca0b 	vldr	s24, [r4, #44]	; 0x2c
d005741c:	edd4 ca0c 	vldr	s25, [r4, #48]	; 0x30
d0057420:	ed94 da04 	vldr	s26, [r4, #16]
d0057424:	edd4 da05 	vldr	s27, [r4, #20]
d0057428:	ed94 ea06 	vldr	s28, [r4, #24]
d005742c:	ed96 5a06 	vldr	s10, [r6, #24]
d0057430:	ed96 3a07 	vldr	s6, [r6, #28]
d0057434:	edcd 3a01 	vstr	s7, [sp, #4]
d0057438:	edcd 1a06 	vstr	s3, [sp, #24]
d005743c:	edd6 6a08 	vldr	s13, [r6, #32]
d0057440:	edd6 5a09 	vldr	s11, [r6, #36]	; 0x24
d0057444:	edd6 2a0a 	vldr	s5, [r6, #40]	; 0x28
d0057448:	ed96 7a0b 	vldr	s14, [r6, #44]	; 0x2c
d005744c:	ed96 6a0c 	vldr	s12, [r6, #48]	; 0x30
d0057450:	ed96 2a0d 	vldr	s4, [r6, #52]	; 0x34
d0057454:	edd6 7a0e 	vldr	s15, [r6, #56]	; 0x38
d0057458:	b113      	cbz	r3, d0057460 <submitEntitySolid+0x12c>
d005745a:	2800      	cmp	r0, #0
d005745c:	f300 8453 	bgt.w	d0057d06 <submitEntitySolid+0x9d2>
d0057460:	2300      	movs	r3, #0
d0057462:	9304      	str	r3, [sp, #16]
d0057464:	eddd 4a08 	vldr	s9, [sp, #32]
d0057468:	ee6a 1a83 	vmul.f32	s3, s21, s6
d005746c:	ed9d 4a07 	vldr	s8, [sp, #28]
d0057470:	ee2c 1a03 	vmul.f32	s2, s24, s6
d0057474:	ee7f 3a64 	vsub.f32	s7, s30, s9
d0057478:	eddd 4a01 	vldr	s9, [sp, #4]
d005747c:	ee6a 0aa2 	vmul.f32	s1, s21, s5
d0057480:	f8da 0004 	ldr.w	r0, [sl, #4]
d0057484:	ee74 4ac4 	vsub.f32	s9, s9, s8
d0057488:	ee23 9a23 	vmul.f32	s18, s6, s7
d005748c:	2800      	cmp	r0, #0
d005748e:	ee62 9aa3 	vmul.f32	s19, s5, s7
d0057492:	ee2c 0a22 	vmul.f32	s0, s24, s5
d0057496:	ee62 3a23 	vmul.f32	s7, s4, s7
d005749a:	ee2a 8a82 	vmul.f32	s16, s21, s4
d005749e:	ee6c 8a02 	vmul.f32	s17, s24, s4
d00574a2:	ee2d 3a83 	vmul.f32	s6, s27, s6
d00574a6:	ee6d 2aa2 	vmul.f32	s5, s27, s5
d00574aa:	ee2d 2a82 	vmul.f32	s4, s27, s4
d00574ae:	eee5 9aa4 	vfma.f32	s19, s11, s9
d00574b2:	eee6 3a24 	vfma.f32	s7, s12, s9
d00574b6:	eeea 0a25 	vfma.f32	s1, s20, s11
d00574ba:	eeab 0aa5 	vfma.f32	s0, s23, s11
d00574be:	eeed 2a25 	vfma.f32	s5, s26, s11
d00574c2:	eddd 5a09 	vldr	s11, [sp, #36]	; 0x24
d00574c6:	eeaa 8a06 	vfma.f32	s16, s20, s12
d00574ca:	eeeb 8a86 	vfma.f32	s17, s23, s12
d00574ce:	eead 2a06 	vfma.f32	s4, s26, s12
d00574d2:	ed9d 6a06 	vldr	s12, [sp, #24]
d00574d6:	eea5 9a24 	vfma.f32	s18, s10, s9
d00574da:	eeea 1a05 	vfma.f32	s3, s20, s10
d00574de:	eeab 1a85 	vfma.f32	s2, s23, s10
d00574e2:	eead 3a05 	vfma.f32	s6, s26, s10
d00574e6:	ee36 6a65 	vsub.f32	s12, s12, s11
d00574ea:	eeee 0a87 	vfma.f32	s1, s29, s14
d00574ee:	eeac 0a87 	vfma.f32	s0, s25, s14
d00574f2:	eeee 1aa6 	vfma.f32	s3, s29, s13
d00574f6:	eeac 1aa6 	vfma.f32	s2, s25, s13
d00574fa:	eea6 9a86 	vfma.f32	s18, s13, s12
d00574fe:	eee7 9a06 	vfma.f32	s19, s14, s12
d0057502:	eee7 3a86 	vfma.f32	s7, s15, s12
d0057506:	eeae 3a26 	vfma.f32	s6, s28, s13
d005750a:	eeee 2a07 	vfma.f32	s5, s28, s14
d005750e:	eeae 8aa7 	vfma.f32	s16, s29, s15
d0057512:	eeec 8aa7 	vfma.f32	s17, s25, s15
d0057516:	eeae 2a27 	vfma.f32	s4, s28, s15
d005751a:	dd5b      	ble.n	d00575d4 <submitEntitySolid+0x2a0>
d005751c:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0057520:	f8da 3000 	ldr.w	r3, [sl]
d0057524:	edcd fa0e 	vstr	s31, [sp, #56]	; 0x38
d0057528:	ed8d ba0f 	vstr	s22, [sp, #60]	; 0x3c
d005752c:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d0057530:	49ef      	ldr	r1, [pc, #956]	; (d00578f0 <submitEntitySolid+0x5bc>)
d0057532:	4af0      	ldr	r2, [pc, #960]	; (d00578f4 <submitEntitySolid+0x5c0>)
d0057534:	ed9d ba01 	vldr	s22, [sp, #4]
d0057538:	eddd fa06 	vldr	s31, [sp, #24]
d005753c:	edd3 7a01 	vldr	s15, [r3, #4]
d0057540:	330c      	adds	r3, #12
d0057542:	ed13 4a03 	vldr	s8, [r3, #-12]
d0057546:	310c      	adds	r1, #12
d0057548:	ee2b 5aa7 	vmul.f32	s10, s23, s15
d005754c:	ed53 4a01 	vldr	s9, [r3, #-4]
d0057550:	ee6c 5a27 	vmul.f32	s11, s24, s15
d0057554:	4298      	cmp	r0, r3
d0057556:	ee2c 6aa7 	vmul.f32	s12, s25, s15
d005755a:	f102 020c 	add.w	r2, r2, #12
d005755e:	ee61 6a27 	vmul.f32	s13, s2, s15
d0057562:	ee20 7a27 	vmul.f32	s14, s0, s15
d0057566:	ee68 7aa7 	vmul.f32	s15, s17, s15
d005756a:	eeaa 5a04 	vfma.f32	s10, s20, s8
d005756e:	eeea 5a84 	vfma.f32	s11, s21, s8
d0057572:	eeae 6a84 	vfma.f32	s12, s29, s8
d0057576:	eee1 6a84 	vfma.f32	s13, s3, s8
d005757a:	eea0 7a84 	vfma.f32	s14, s1, s8
d005757e:	eee8 7a04 	vfma.f32	s15, s16, s8
d0057582:	ee3b 5a05 	vadd.f32	s10, s22, s10
d0057586:	ee7f 5a25 	vadd.f32	s11, s30, s11
d005758a:	ee3f 6a86 	vadd.f32	s12, s31, s12
d005758e:	ee76 6a89 	vadd.f32	s13, s13, s18
d0057592:	ee37 7a29 	vadd.f32	s14, s14, s19
d0057596:	ee77 7aa3 	vadd.f32	s15, s15, s7
d005759a:	eead 5a24 	vfma.f32	s10, s26, s9
d005759e:	eeed 5aa4 	vfma.f32	s11, s27, s9
d00575a2:	eeae 6a24 	vfma.f32	s12, s28, s9
d00575a6:	eee3 6a24 	vfma.f32	s13, s6, s9
d00575aa:	eea2 7aa4 	vfma.f32	s14, s5, s9
d00575ae:	eee2 7a24 	vfma.f32	s15, s4, s9
d00575b2:	ed01 5a03 	vstr	s10, [r1, #-12]
d00575b6:	ed41 5a02 	vstr	s11, [r1, #-8]
d00575ba:	ed01 6a01 	vstr	s12, [r1, #-4]
d00575be:	ed42 6a03 	vstr	s13, [r2, #-12]
d00575c2:	ed02 7a02 	vstr	s14, [r2, #-8]
d00575c6:	ed42 7a01 	vstr	s15, [r2, #-4]
d00575ca:	d1b7      	bne.n	d005753c <submitEntitySolid+0x208>
d00575cc:	eddd fa0e 	vldr	s31, [sp, #56]	; 0x38
d00575d0:	ed9d ba0f 	vldr	s22, [sp, #60]	; 0x3c
d00575d4:	f8da 3014 	ldr.w	r3, [sl, #20]
d00575d8:	2b00      	cmp	r3, #0
d00575da:	9301      	str	r3, [sp, #4]
d00575dc:	f340 81e6 	ble.w	d00579ac <submitEntitySolid+0x678>
d00575e0:	f04f 0900 	mov.w	r9, #0
d00575e4:	f8df 830c 	ldr.w	r8, [pc, #780]	; d00578f4 <submitEntitySolid+0x5c0>
d00575e8:	ed9f aac3 	vldr	s20, [pc, #780]	; d00578f8 <submitEntitySolid+0x5c4>
d00575ec:	eddf aac3 	vldr	s21, [pc, #780]	; d00578fc <submitEntitySolid+0x5c8>
d00575f0:	ed9d da0a 	vldr	s26, [sp, #40]	; 0x28
d00575f4:	eddd ba0b 	vldr	s23, [sp, #44]	; 0x2c
d00575f8:	ed9d ca0c 	vldr	s24, [sp, #48]	; 0x30
d00575fc:	eddd ca0d 	vldr	s25, [sp, #52]	; 0x34
d0057600:	f8da 4010 	ldr.w	r4, [sl, #16]
d0057604:	ea4f 1309 	mov.w	r3, r9, lsl #4
d0057608:	58e3      	ldr	r3, [r4, r3]
d005760a:	eb04 1409 	add.w	r4, r4, r9, lsl #4
d005760e:	eb03 0543 	add.w	r5, r3, r3, lsl #1
d0057612:	6862      	ldr	r2, [r4, #4]
d0057614:	68a1      	ldr	r1, [r4, #8]
d0057616:	ea4f 0b43 	mov.w	fp, r3, lsl #1
d005761a:	eb08 0585 	add.w	r5, r8, r5, lsl #2
d005761e:	eb02 0642 	add.w	r6, r2, r2, lsl #1
d0057622:	edd5 6a02 	vldr	s13, [r5, #8]
d0057626:	eb01 0741 	add.w	r7, r1, r1, lsl #1
d005762a:	eb08 0686 	add.w	r6, r8, r6, lsl #2
d005762e:	eef4 6aef 	vcmpe.f32	s13, s31
d0057632:	eb08 0787 	add.w	r7, r8, r7, lsl #2
d0057636:	ea4f 0c42 	mov.w	ip, r2, lsl #1
d005763a:	ea4f 0e41 	mov.w	lr, r1, lsl #1
d005763e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057642:	dd0e      	ble.n	d0057662 <submitEntitySolid+0x32e>
d0057644:	edd6 7a02 	vldr	s15, [r6, #8]
d0057648:	eef4 7aef 	vcmpe.f32	s15, s31
d005764c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057650:	dd07      	ble.n	d0057662 <submitEntitySolid+0x32e>
d0057652:	edd7 7a02 	vldr	s15, [r7, #8]
d0057656:	eef4 7aef 	vcmpe.f32	s15, s31
d005765a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005765e:	f300 819f 	bgt.w	d00579a0 <submitEntitySolid+0x66c>
d0057662:	eef4 6acb 	vcmpe.f32	s13, s22
d0057666:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005766a:	d516      	bpl.n	d005769a <submitEntitySolid+0x366>
d005766c:	eb0c 0002 	add.w	r0, ip, r2
d0057670:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0057674:	edd0 7a02 	vldr	s15, [r0, #8]
d0057678:	eef4 7acb 	vcmpe.f32	s15, s22
d005767c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057680:	d50b      	bpl.n	d005769a <submitEntitySolid+0x366>
d0057682:	eb0e 0001 	add.w	r0, lr, r1
d0057686:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d005768a:	edd0 7a02 	vldr	s15, [r0, #8]
d005768e:	eef4 7acb 	vcmpe.f32	s15, s22
d0057692:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057696:	f100 8183 	bmi.w	d00579a0 <submitEntitySolid+0x66c>
d005769a:	ed95 6a00 	vldr	s12, [r5]
d005769e:	edd5 3a02 	vldr	s7, [r5, #8]
d00576a2:	ed96 2a00 	vldr	s4, [r6]
d00576a6:	ed97 5a02 	vldr	s10, [r7, #8]
d00576aa:	ee72 1a46 	vsub.f32	s3, s4, s12
d00576ae:	edd5 7a01 	vldr	s15, [r5, #4]
d00576b2:	ee35 5a63 	vsub.f32	s10, s10, s7
d00576b6:	ed96 4a02 	vldr	s8, [r6, #8]
d00576ba:	edd7 5a01 	vldr	s11, [r7, #4]
d00576be:	ed97 1a00 	vldr	s2, [r7]
d00576c2:	ee34 4a63 	vsub.f32	s8, s8, s7
d00576c6:	ee75 5ae7 	vsub.f32	s11, s11, s15
d00576ca:	edd6 4a01 	vldr	s9, [r6, #4]
d00576ce:	ee31 7a46 	vsub.f32	s14, s2, s12
d00576d2:	ee65 2a61 	vnmul.f32	s5, s10, s3
d00576d6:	ee74 4ae7 	vsub.f32	s9, s9, s15
d00576da:	ee25 3ac4 	vnmul.f32	s6, s11, s8
d00576de:	eee4 2a07 	vfma.f32	s5, s8, s14
d00576e2:	ee27 7a64 	vnmul.f32	s14, s14, s9
d00576e6:	eea4 3a85 	vfma.f32	s6, s9, s10
d00576ea:	eea1 7aa5 	vfma.f32	s14, s3, s11
d00576ee:	ee67 7aa2 	vmul.f32	s15, s15, s5
d00576f2:	eee6 7a03 	vfma.f32	s15, s12, s6
d00576f6:	eee3 7a87 	vfma.f32	s15, s7, s14
d00576fa:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d00576fe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057702:	f280 814d 	bge.w	d00579a0 <submitEntitySolid+0x66c>
d0057706:	eef1 5a66 	vneg.f32	s11, s13
d005770a:	eef4 5ac6 	vcmpe.f32	s11, s12
d005770e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057712:	dd1a      	ble.n	d005774a <submitEntitySolid+0x416>
d0057714:	eb0c 0002 	add.w	r0, ip, r2
d0057718:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d005771c:	edd0 7a02 	vldr	s15, [r0, #8]
d0057720:	eef1 7a67 	vneg.f32	s15, s15
d0057724:	eef4 7ac2 	vcmpe.f32	s15, s4
d0057728:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005772c:	dd0d      	ble.n	d005774a <submitEntitySolid+0x416>
d005772e:	eb0e 0001 	add.w	r0, lr, r1
d0057732:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0057736:	edd0 7a02 	vldr	s15, [r0, #8]
d005773a:	eef1 7a67 	vneg.f32	s15, s15
d005773e:	eef4 7ac1 	vcmpe.f32	s15, s2
d0057742:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057746:	f300 812b 	bgt.w	d00579a0 <submitEntitySolid+0x66c>
d005774a:	eef4 6ac6 	vcmpe.f32	s13, s12
d005774e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057752:	d516      	bpl.n	d0057782 <submitEntitySolid+0x44e>
d0057754:	eb0c 0002 	add.w	r0, ip, r2
d0057758:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d005775c:	edd0 7a02 	vldr	s15, [r0, #8]
d0057760:	eef4 7ac2 	vcmpe.f32	s15, s4
d0057764:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057768:	d50b      	bpl.n	d0057782 <submitEntitySolid+0x44e>
d005776a:	eb0e 0001 	add.w	r0, lr, r1
d005776e:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0057772:	edd0 7a02 	vldr	s15, [r0, #8]
d0057776:	eef4 7ac1 	vcmpe.f32	s15, s2
d005777a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005777e:	f100 810f 	bmi.w	d00579a0 <submitEntitySolid+0x66c>
d0057782:	ee26 7a8a 	vmul.f32	s14, s13, s20
d0057786:	eb0b 0003 	add.w	r0, fp, r3
d005778a:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d005778e:	eeb1 5a47 	vneg.f32	s10, s14
d0057792:	edd0 7a01 	vldr	s15, [r0, #4]
d0057796:	eef4 7ac5 	vcmpe.f32	s15, s10
d005779a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005779e:	d51e      	bpl.n	d00577de <submitEntitySolid+0x4aa>
d00577a0:	eb0c 0002 	add.w	r0, ip, r2
d00577a4:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d00577a8:	edd0 4a02 	vldr	s9, [r0, #8]
d00577ac:	ed90 4a01 	vldr	s8, [r0, #4]
d00577b0:	ee6a 4a64 	vnmul.f32	s9, s20, s9
d00577b4:	eeb4 4ae4 	vcmpe.f32	s8, s9
d00577b8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00577bc:	d50f      	bpl.n	d00577de <submitEntitySolid+0x4aa>
d00577be:	eb0e 0001 	add.w	r0, lr, r1
d00577c2:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d00577c6:	edd0 4a02 	vldr	s9, [r0, #8]
d00577ca:	ed90 4a01 	vldr	s8, [r0, #4]
d00577ce:	ee6a 4a64 	vnmul.f32	s9, s20, s9
d00577d2:	eeb4 4ae4 	vcmpe.f32	s8, s9
d00577d6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00577da:	f100 80e1 	bmi.w	d00579a0 <submitEntitySolid+0x66c>
d00577de:	eef4 7ac7 	vcmpe.f32	s15, s14
d00577e2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00577e6:	dd1e      	ble.n	d0057826 <submitEntitySolid+0x4f2>
d00577e8:	eb0c 0002 	add.w	r0, ip, r2
d00577ec:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d00577f0:	edd0 4a02 	vldr	s9, [r0, #8]
d00577f4:	ed90 4a01 	vldr	s8, [r0, #4]
d00577f8:	ee64 4a8a 	vmul.f32	s9, s9, s20
d00577fc:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0057800:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057804:	dd0f      	ble.n	d0057826 <submitEntitySolid+0x4f2>
d0057806:	eb0e 0001 	add.w	r0, lr, r1
d005780a:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d005780e:	edd0 4a02 	vldr	s9, [r0, #8]
d0057812:	ed90 4a01 	vldr	s8, [r0, #4]
d0057816:	ee64 4a8a 	vmul.f32	s9, s9, s20
d005781a:	eeb4 4ae4 	vcmpe.f32	s8, s9
d005781e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057822:	f300 80bd 	bgt.w	d00579a0 <submitEntitySolid+0x66c>
d0057826:	eef4 6acb 	vcmpe.f32	s13, s22
d005782a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005782e:	db26      	blt.n	d005787e <submitEntitySolid+0x54a>
d0057830:	eb0c 0002 	add.w	r0, ip, r2
d0057834:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0057838:	edd0 4a02 	vldr	s9, [r0, #8]
d005783c:	eef4 4acb 	vcmpe.f32	s9, s22
d0057840:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057844:	db1b      	blt.n	d005787e <submitEntitySolid+0x54a>
d0057846:	eb0e 0001 	add.w	r0, lr, r1
d005784a:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d005784e:	ed90 4a02 	vldr	s8, [r0, #8]
d0057852:	eeb4 4acb 	vcmpe.f32	s8, s22
d0057856:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005785a:	eef4 5ac6 	vcmpe.f32	s11, s12
d005785e:	bfac      	ite	ge
d0057860:	2001      	movge	r0, #1
d0057862:	2000      	movlt	r0, #0
d0057864:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057868:	f000 0001 	and.w	r0, r0, #1
d005786c:	bf88      	it	hi
d005786e:	2000      	movhi	r0, #0
d0057870:	b128      	cbz	r0, d005787e <submitEntitySolid+0x54a>
d0057872:	eef4 6a46 	vcmp.f32	s13, s12
d0057876:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005787a:	f280 82ad 	bge.w	d0057dd8 <submitEntitySolid+0xaa4>
d005787e:	2000      	movs	r0, #0
d0057880:	448e      	add	lr, r1
d0057882:	4462      	add	r2, ip
d0057884:	491a      	ldr	r1, [pc, #104]	; (d00578f0 <submitEntitySolid+0x5bc>)
d0057886:	445b      	add	r3, fp
d0057888:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d005788c:	eb01 0383 	add.w	r3, r1, r3, lsl #2
d0057890:	eb01 018e 	add.w	r1, r1, lr, lsl #2
d0057894:	edd2 4a00 	vldr	s9, [r2]
d0057898:	ed93 6a00 	vldr	s12, [r3]
d005789c:	ed93 7a02 	vldr	s14, [r3, #8]
d00578a0:	ed91 4a02 	vldr	s8, [r1, #8]
d00578a4:	ee74 2ac6 	vsub.f32	s5, s9, s12
d00578a8:	edd3 6a01 	vldr	s13, [r3, #4]
d00578ac:	ee34 2a47 	vsub.f32	s4, s8, s14
d00578b0:	edd2 5a02 	vldr	s11, [r2, #8]
d00578b4:	edd1 3a01 	vldr	s7, [r1, #4]
d00578b8:	ed91 3a00 	vldr	s6, [r1]
d00578bc:	ee35 1ac7 	vsub.f32	s2, s11, s14
d00578c0:	ee73 7ae6 	vsub.f32	s15, s7, s13
d00578c4:	ed92 5a01 	vldr	s10, [r2, #4]
d00578c8:	ee33 8a46 	vsub.f32	s16, s6, s12
d00578cc:	ee62 8a62 	vnmul.f32	s17, s4, s5
d00578d0:	ee75 1a66 	vsub.f32	s3, s10, s13
d00578d4:	ee27 9ac1 	vnmul.f32	s18, s15, s2
d00578d8:	eee1 8a08 	vfma.f32	s17, s2, s16
d00578dc:	ee28 8a61 	vnmul.f32	s16, s16, s3
d00578e0:	eea1 9a82 	vfma.f32	s18, s3, s4
d00578e4:	eea2 8aa7 	vfma.f32	s16, s5, s15
d00578e8:	ee68 7aa8 	vmul.f32	s15, s17, s17
d00578ec:	e00e      	b.n	d005790c <submitEntitySolid+0x5d8>
d00578ee:	bf00      	nop
d00578f0:	d00e8fe0 	.word	0xd00e8fe0
d00578f4:	d005cfa0 	.word	0xd005cfa0
d00578f8:	3f2aaaab 	.word	0x3f2aaaab
d00578fc:	358637bd 	.word	0x358637bd
d0057900:	3b808081 	.word	0x3b808081
d0057904:	3eaaaaab 	.word	0x3eaaaaab
d0057908:	00000000 	.word	0x00000000
d005790c:	eee9 7a09 	vfma.f32	s15, s18, s18
d0057910:	eee8 7a08 	vfma.f32	s15, s16, s16
d0057914:	eef4 7aea 	vcmpe.f32	s15, s21
d0057918:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005791c:	d940      	bls.n	d00579a0 <submitEntitySolid+0x66c>
d005791e:	7b63      	ldrb	r3, [r4, #13]
d0057920:	eddd 2a05 	vldr	s5, [sp, #20]
d0057924:	ee0f 3a10 	vmov	s30, r3
d0057928:	9b04      	ldr	r3, [sp, #16]
d005792a:	ee72 9a8d 	vadd.f32	s19, s5, s26
d005792e:	ed5f 2a0c 	vldr	s5, [pc, #-48]	; d0057900 <submitEntitySolid+0x5cc>
d0057932:	eeb8 fa4f 	vcvt.f32.u32	s30, s30
d0057936:	ee2f fa22 	vmul.f32	s30, s30, s5
d005793a:	2b00      	cmp	r3, #0
d005793c:	d158      	bne.n	d00579f0 <submitEntitySolid+0x6bc>
d005793e:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0057942:	fec9 9a8f 	vmaxnm.f32	s19, s19, s30
d0057946:	9001      	str	r0, [sp, #4]
d0057948:	fe89 0ac0 	vminnm.f32	s0, s19, s0
d005794c:	f7fe faf2 	bl	d0055f34 <brightnessToShadeF>
d0057950:	f894 b00c 	ldrb.w	fp, [r4, #12]
d0057954:	7ba3      	ldrb	r3, [r4, #14]
d0057956:	eeb0 8a40 	vmov.f32	s16, s0
d005795a:	f00b 0b0f 	and.w	fp, fp, #15
d005795e:	9801      	ldr	r0, [sp, #4]
d0057960:	b10b      	cbz	r3, d0057966 <submitEntitySolid+0x632>
d0057962:	f04b 0b10 	orr.w	fp, fp, #16
d0057966:	b330      	cbz	r0, d00579b6 <submitEntitySolid+0x682>
d0057968:	eef0 4a48 	vmov.f32	s9, s16
d005796c:	7b62      	ldrb	r2, [r4, #13]
d005796e:	4659      	mov	r1, fp
d0057970:	9802      	ldr	r0, [sp, #8]
d0057972:	ed97 3a00 	vldr	s6, [r7]
d0057976:	edd7 3a01 	vldr	s7, [r7, #4]
d005797a:	ed97 4a02 	vldr	s8, [r7, #8]
d005797e:	edd6 1a00 	vldr	s3, [r6]
d0057982:	ed96 2a01 	vldr	s4, [r6, #4]
d0057986:	edd6 2a02 	vldr	s5, [r6, #8]
d005798a:	ed95 0a00 	vldr	s0, [r5]
d005798e:	edd5 0a01 	vldr	s1, [r5, #4]
d0057992:	ed95 1a02 	vldr	s2, [r5, #8]
d0057996:	f7ff f823 	bl	d00569e0 <submitClippedTri>
d005799a:	f8da 3014 	ldr.w	r3, [sl, #20]
d005799e:	9301      	str	r3, [sp, #4]
d00579a0:	f109 0901 	add.w	r9, r9, #1
d00579a4:	9b01      	ldr	r3, [sp, #4]
d00579a6:	4599      	cmp	r9, r3
d00579a8:	f6ff ae2a 	blt.w	d0057600 <submitEntitySolid+0x2cc>
d00579ac:	b03b      	add	sp, #236	; 0xec
d00579ae:	ecbd 8b10 	vpop	{d8-d15}
d00579b2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00579b6:	9902      	ldr	r1, [sp, #8]
d00579b8:	9803      	ldr	r0, [sp, #12]
d00579ba:	ed97 3a00 	vldr	s6, [r7]
d00579be:	edd7 3a01 	vldr	s7, [r7, #4]
d00579c2:	ed97 4a02 	vldr	s8, [r7, #8]
d00579c6:	edd6 1a00 	vldr	s3, [r6]
d00579ca:	ed96 2a01 	vldr	s4, [r6, #4]
d00579ce:	edd6 2a02 	vldr	s5, [r6, #8]
d00579d2:	ed95 0a00 	vldr	s0, [r5]
d00579d6:	edd5 0a01 	vldr	s1, [r5, #4]
d00579da:	ed95 1a02 	vldr	s2, [r5, #8]
d00579de:	f7fe fb9f 	bl	d0056120 <clipTriangleToFrustum>
d00579e2:	2802      	cmp	r0, #2
d00579e4:	f300 815e 	bgt.w	d0057ca4 <submitEntitySolid+0x970>
d00579e8:	f8da 3014 	ldr.w	r3, [sl, #20]
d00579ec:	9301      	str	r3, [sp, #4]
d00579ee:	e7d7      	b.n	d00579a0 <submitEntitySolid+0x66c>
d00579f0:	ee74 da86 	vadd.f32	s27, s9, s12
d00579f4:	ed1f 6a3d 	vldr	s12, [pc, #-244]	; d0057904 <submitEntitySolid+0x5d0>
d00579f8:	ee35 ea26 	vadd.f32	s28, s10, s13
d00579fc:	ee75 ea87 	vadd.f32	s29, s11, s14
d0057a00:	eeb5 cac0 	vcmpe.f32	s24, #0.0
d0057a04:	ee7d da83 	vadd.f32	s27, s27, s6
d0057a08:	ee3e ea23 	vadd.f32	s28, s28, s7
d0057a0c:	ee7e ea84 	vadd.f32	s29, s29, s8
d0057a10:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057a14:	ee6d da86 	vmul.f32	s27, s27, s12
d0057a18:	ee2e ea06 	vmul.f32	s28, s28, s12
d0057a1c:	ee6e ea86 	vmul.f32	s29, s29, s12
d0057a20:	dd17      	ble.n	d0057a52 <submitEntitySolid+0x71e>
d0057a22:	ed9d 7a08 	vldr	s14, [sp, #32]
d0057a26:	ee77 2a4e 	vsub.f32	s5, s14, s28
d0057a2a:	ed9d 7a07 	vldr	s14, [sp, #28]
d0057a2e:	ee37 3a6d 	vsub.f32	s6, s14, s27
d0057a32:	ed9d 7a09 	vldr	s14, [sp, #36]	; 0x24
d0057a36:	ee37 4a6e 	vsub.f32	s8, s14, s29
d0057a3a:	ee22 7aa2 	vmul.f32	s14, s5, s5
d0057a3e:	eea3 7a03 	vfma.f32	s14, s6, s6
d0057a42:	eea4 7a04 	vfma.f32	s14, s8, s8
d0057a46:	eeb4 7aea 	vcmpe.f32	s14, s21
d0057a4a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057a4e:	f300 81a7 	bgt.w	d0057da0 <submitEntitySolid+0xa6c>
d0057a52:	ed1f 4a53 	vldr	s8, [pc, #-332]	; d0057908 <submitEntitySolid+0x5d4>
d0057a56:	eef0 2a44 	vmov.f32	s5, s8
d0057a5a:	eeb0 3a44 	vmov.f32	s6, s8
d0057a5e:	eef1 6ae7 	vsqrt.f32	s13, s15
d0057a62:	aa13      	add	r2, sp, #76	; 0x4c
d0057a64:	4639      	mov	r1, r7
d0057a66:	9501      	str	r5, [sp, #4]
d0057a68:	f04f 0b00 	mov.w	fp, #0
d0057a6c:	4615      	mov	r5, r2
d0057a6e:	4627      	mov	r7, r4
d0057a70:	4632      	mov	r2, r6
d0057a72:	9e04      	ldr	r6, [sp, #16]
d0057a74:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0057a78:	eef0 0a6c 	vmov.f32	s1, s25
d0057a7c:	eeb0 6a4f 	vmov.f32	s12, s30
d0057a80:	eeb0 5a47 	vmov.f32	s10, s14
d0057a84:	eef0 ca43 	vmov.f32	s25, s6
d0057a88:	eeb0 fa44 	vmov.f32	s30, s8
d0057a8c:	eec7 7a26 	vdiv.f32	s15, s14, s13
d0057a90:	eeb0 7a4b 	vmov.f32	s14, s22
d0057a94:	eef0 6a4d 	vmov.f32	s13, s26
d0057a98:	eeb0 ba6e 	vmov.f32	s22, s29
d0057a9c:	eeb0 da62 	vmov.f32	s26, s5
d0057aa0:	eef0 ea4e 	vmov.f32	s29, s28
d0057aa4:	eeb0 ea6d 	vmov.f32	s28, s27
d0057aa8:	ee28 8a27 	vmul.f32	s16, s16, s15
d0057aac:	ee29 9a27 	vmul.f32	s18, s18, s15
d0057ab0:	ee68 8aa7 	vmul.f32	s17, s17, s15
d0057ab4:	ee38 2a08 	vadd.f32	s4, s16, s16
d0057ab8:	eef0 7a6f 	vmov.f32	s15, s31
d0057abc:	ee39 1a09 	vadd.f32	s2, s18, s18
d0057ac0:	ee78 1aa8 	vadd.f32	s3, s17, s17
d0057ac4:	eef0 da48 	vmov.f32	s27, s16
d0057ac8:	eef0 fa42 	vmov.f32	s31, s4
d0057acc:	f855 4f04 	ldr.w	r4, [r5, #4]!
d0057ad0:	7823      	ldrb	r3, [r4, #0]
d0057ad2:	2b00      	cmp	r3, #0
d0057ad4:	d172      	bne.n	d0057bbc <submitEntitySolid+0x888>
d0057ad6:	ed94 0a02 	vldr	s0, [r4, #8]
d0057ada:	ed94 4a01 	vldr	s8, [r4, #4]
d0057ade:	ee30 0a6e 	vsub.f32	s0, s0, s29
d0057ae2:	edd4 4a03 	vldr	s9, [r4, #12]
d0057ae6:	ee34 4a4e 	vsub.f32	s8, s8, s28
d0057aea:	edd4 3a0a 	vldr	s7, [r4, #40]	; 0x28
d0057aee:	ee74 4acb 	vsub.f32	s9, s9, s22
d0057af2:	ee60 5a00 	vmul.f32	s11, s0, s0
d0057af6:	ee23 3aa3 	vmul.f32	s6, s7, s7
d0057afa:	eee4 5a04 	vfma.f32	s11, s8, s8
d0057afe:	eee4 5aa4 	vfma.f32	s11, s9, s9
d0057b02:	eef4 5a6a 	vcmp.f32	s11, s21
d0057b06:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057b0a:	dd44      	ble.n	d0057b96 <submitEntitySolid+0x862>
d0057b0c:	eeb4 3a65 	vcmp.f32	s6, s11
d0057b10:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057b14:	dd3f      	ble.n	d0057b96 <submitEntitySolid+0x862>
d0057b16:	eeb1 8ae5 	vsqrt.f32	s16, s11
d0057b1a:	edd4 2a08 	vldr	s5, [r4, #32]
d0057b1e:	ee22 2aa2 	vmul.f32	s4, s5, s5
d0057b22:	eeb4 2ae5 	vcmpe.f32	s4, s11
d0057b26:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057b2a:	ee85 3a08 	vdiv.f32	s6, s10, s16
d0057b2e:	ee24 4a03 	vmul.f32	s8, s8, s6
d0057b32:	ee20 0a03 	vmul.f32	s0, s0, s6
d0057b36:	ee64 4a83 	vmul.f32	s9, s9, s6
d0057b3a:	f140 80b0 	bpl.w	d0057c9e <submitEntitySolid+0x96a>
d0057b3e:	ed94 2a09 	vldr	s4, [r4, #36]	; 0x24
d0057b42:	eef4 2ac2 	vcmpe.f32	s5, s4
d0057b46:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057b4a:	da24      	bge.n	d0057b96 <submitEntitySolid+0x862>
d0057b4c:	eef4 3ac2 	vcmpe.f32	s7, s4
d0057b50:	ee65 5a83 	vmul.f32	s11, s11, s6
d0057b54:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057b58:	eeb4 2ae5 	vcmpe.f32	s4, s11
d0057b5c:	f240 810d 	bls.w	d0057d7a <submitEntitySolid+0xa46>
d0057b60:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057b64:	f2c0 81c2 	blt.w	d0057eec <submitEntitySolid+0xbb8>
d0057b68:	ee75 5ae2 	vsub.f32	s11, s11, s5
d0057b6c:	ee72 2a62 	vsub.f32	s5, s4, s5
d0057b70:	eeb6 3a08 	vmov.f32	s6, #104	; 0x3f400000  0.750
d0057b74:	eeb0 8a45 	vmov.f32	s16, s10
d0057b78:	eec5 3aa2 	vdiv.f32	s7, s11, s5
d0057b7c:	ed5f 5a9e 	vldr	s11, [pc, #-632]	; d0057908 <submitEntitySolid+0x5d4>
d0057b80:	fec3 5aa5 	vmaxnm.f32	s11, s7, s11
d0057b84:	fec5 5ac5 	vminnm.f32	s11, s11, s10
d0057b88:	eea5 8ac3 	vfms.f32	s16, s11, s6
d0057b8c:	eeb5 8ac0 	vcmpe.f32	s16, #0.0
d0057b90:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057b94:	d820      	bhi.n	d0057bd8 <submitEntitySolid+0x8a4>
d0057b96:	f10b 0b01 	add.w	fp, fp, #1
d0057b9a:	455e      	cmp	r6, fp
d0057b9c:	d196      	bne.n	d0057acc <submitEntitySolid+0x798>
d0057b9e:	463c      	mov	r4, r7
d0057ba0:	eef0 fa67 	vmov.f32	s31, s15
d0057ba4:	eeb0 ba47 	vmov.f32	s22, s14
d0057ba8:	9d01      	ldr	r5, [sp, #4]
d0057baa:	eeb0 da66 	vmov.f32	s26, s13
d0057bae:	4616      	mov	r6, r2
d0057bb0:	eef0 ca60 	vmov.f32	s25, s1
d0057bb4:	460f      	mov	r7, r1
d0057bb6:	eeb0 fa46 	vmov.f32	s30, s12
d0057bba:	e6c0      	b.n	d005793e <submitEntitySolid+0x60a>
d0057bbc:	ed94 4a04 	vldr	s8, [r4, #16]
d0057bc0:	eeb7 8a00 	vmov.f32	s16, #112	; 0x3f800000  1.0
d0057bc4:	ed94 0a05 	vldr	s0, [r4, #20]
d0057bc8:	edd4 4a06 	vldr	s9, [r4, #24]
d0057bcc:	eeb1 4a44 	vneg.f32	s8, s8
d0057bd0:	eeb1 0a40 	vneg.f32	s0, s0
d0057bd4:	eef1 4a64 	vneg.f32	s9, s9
d0057bd8:	ee60 5a28 	vmul.f32	s11, s0, s17
d0057bdc:	eee4 5a09 	vfma.f32	s11, s8, s18
d0057be0:	eee4 5aad 	vfma.f32	s11, s9, s27
d0057be4:	eef5 5ac0 	vcmpe.f32	s11, #0.0
d0057be8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057bec:	d9d3      	bls.n	d0057b96 <submitEntitySolid+0x862>
d0057bee:	eef5 bac0 	vcmpe.f32	s23, #0.0
d0057bf2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057bf6:	dd07      	ble.n	d0057c08 <submitEntitySolid+0x8d4>
d0057bf8:	edd4 3a07 	vldr	s7, [r4, #28]
d0057bfc:	ee6b 3aa3 	vmul.f32	s7, s23, s7
d0057c00:	ee63 3a88 	vmul.f32	s7, s7, s16
d0057c04:	eee5 9aa3 	vfma.f32	s19, s11, s7
d0057c08:	eeb5 cac0 	vcmpe.f32	s24, #0.0
d0057c0c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057c10:	dd2f      	ble.n	d0057c72 <submitEntitySolid+0x93e>
d0057c12:	ee95 0aa1 	vfnms.f32	s0, s11, s3
d0057c16:	ee95 4a81 	vfnms.f32	s8, s11, s2
d0057c1a:	eed5 4aaf 	vfnms.f32	s9, s11, s31
d0057c1e:	ee2d 0a00 	vmul.f32	s0, s26, s0
d0057c22:	eeac 0a84 	vfma.f32	s0, s25, s8
d0057c26:	eeaf 0a24 	vfma.f32	s0, s30, s9
d0057c2a:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0057c2e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057c32:	dd1e      	ble.n	d0057c72 <submitEntitySolid+0x93e>
d0057c34:	eef2 5a00 	vmov.f32	s11, #32	; 0x41000000  8.0
d0057c38:	eef4 0a65 	vcmp.f32	s1, s11
d0057c3c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057c40:	d009      	beq.n	d0057c56 <submitEntitySolid+0x922>
d0057c42:	eef3 5a00 	vmov.f32	s11, #48	; 0x41800000  16.0
d0057c46:	eef4 0a65 	vcmp.f32	s1, s11
d0057c4a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057c4e:	f040 8124 	bne.w	d0057e9a <submitEntitySolid+0xb66>
d0057c52:	ee20 0a00 	vmul.f32	s0, s0, s0
d0057c56:	ee20 0a00 	vmul.f32	s0, s0, s0
d0057c5a:	ee20 0a00 	vmul.f32	s0, s0, s0
d0057c5e:	ee20 0a00 	vmul.f32	s0, s0, s0
d0057c62:	edd4 5a07 	vldr	s11, [r4, #28]
d0057c66:	ee6c 5a25 	vmul.f32	s11, s24, s11
d0057c6a:	ee25 8a88 	vmul.f32	s16, s11, s16
d0057c6e:	eee0 9a08 	vfma.f32	s19, s0, s16
d0057c72:	eef4 9ac5 	vcmpe.f32	s19, s10
d0057c76:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057c7a:	db8c      	blt.n	d0057b96 <submitEntitySolid+0x862>
d0057c7c:	463c      	mov	r4, r7
d0057c7e:	eef0 fa67 	vmov.f32	s31, s15
d0057c82:	eeb0 ba47 	vmov.f32	s22, s14
d0057c86:	9d01      	ldr	r5, [sp, #4]
d0057c88:	eeb0 da66 	vmov.f32	s26, s13
d0057c8c:	4616      	mov	r6, r2
d0057c8e:	eef0 ca60 	vmov.f32	s25, s1
d0057c92:	460f      	mov	r7, r1
d0057c94:	eeb0 fa46 	vmov.f32	s30, s12
d0057c98:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0057c9c:	e64f      	b.n	d005793e <submitEntitySolid+0x60a>
d0057c9e:	eeb7 8a00 	vmov.f32	s16, #112	; 0x3f800000  1.0
d0057ca2:	e799      	b.n	d0057bd8 <submitEntitySolid+0x8a4>
d0057ca4:	1e46      	subs	r6, r0, #1
d0057ca6:	eef0 4a48 	vmov.f32	s9, s16
d0057caa:	f8cd 9004 	str.w	r9, [sp, #4]
d0057cae:	2501      	movs	r5, #1
d0057cb0:	46d9      	mov	r9, fp
d0057cb2:	9802      	ldr	r0, [sp, #8]
d0057cb4:	46b3      	mov	fp, r6
d0057cb6:	4626      	mov	r6, r4
d0057cb8:	9c03      	ldr	r4, [sp, #12]
d0057cba:	462f      	mov	r7, r5
d0057cbc:	3501      	adds	r5, #1
d0057cbe:	7bb3      	ldrb	r3, [r6, #14]
d0057cc0:	4649      	mov	r1, r9
d0057cc2:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d0057cc6:	7b72      	ldrb	r2, [r6, #13]
d0057cc8:	eb05 0c45 	add.w	ip, r5, r5, lsl #1
d0057ccc:	ed94 0a00 	vldr	s0, [r4]
d0057cd0:	eb04 0787 	add.w	r7, r4, r7, lsl #2
d0057cd4:	edd4 0a01 	vldr	s1, [r4, #4]
d0057cd8:	eb04 0c8c 	add.w	ip, r4, ip, lsl #2
d0057cdc:	ed94 1a02 	vldr	s2, [r4, #8]
d0057ce0:	edd7 1a00 	vldr	s3, [r7]
d0057ce4:	ed97 2a01 	vldr	s4, [r7, #4]
d0057ce8:	edd7 2a02 	vldr	s5, [r7, #8]
d0057cec:	ed9c 3a00 	vldr	s6, [ip]
d0057cf0:	eddc 3a01 	vldr	s7, [ip, #4]
d0057cf4:	ed9c 4a02 	vldr	s8, [ip, #8]
d0057cf8:	f7fe fe72 	bl	d00569e0 <submitClippedTri>
d0057cfc:	455d      	cmp	r5, fp
d0057cfe:	d1dc      	bne.n	d0057cba <submitEntitySolid+0x986>
d0057d00:	f8dd 9004 	ldr.w	r9, [sp, #4]
d0057d04:	e670      	b.n	d00579e8 <submitEntitySolid+0x6b4>
d0057d06:	2200      	movs	r2, #0
d0057d08:	ed9a 1a06 	vldr	s2, [sl, #24]
d0057d0c:	4611      	mov	r1, r2
d0057d0e:	e027      	b.n	d0057d60 <submitEntitySolid+0xa2c>
d0057d10:	edd5 4a02 	vldr	s9, [r5, #8]
d0057d14:	ab3a      	add	r3, sp, #232	; 0xe8
d0057d16:	ed95 0a01 	vldr	s0, [r5, #4]
d0057d1a:	ee74 4acf 	vsub.f32	s9, s9, s30
d0057d1e:	edd5 0a03 	vldr	s1, [r5, #12]
d0057d22:	ee30 0a63 	vsub.f32	s0, s0, s7
d0057d26:	ed95 4a0a 	vldr	s8, [r5, #40]	; 0x28
d0057d2a:	ee70 0ae1 	vsub.f32	s1, s1, s3
d0057d2e:	eb03 0381 	add.w	r3, r3, r1, lsl #2
d0057d32:	ee64 4aa4 	vmul.f32	s9, s9, s9
d0057d36:	ee31 4a04 	vadd.f32	s8, s2, s8
d0057d3a:	eee0 4a00 	vfma.f32	s9, s0, s0
d0057d3e:	ee24 4a04 	vmul.f32	s8, s8, s8
d0057d42:	eee0 4aa0 	vfma.f32	s9, s1, s1
d0057d46:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0057d4a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057d4e:	db02      	blt.n	d0057d56 <submitEntitySolid+0xa22>
d0057d50:	3101      	adds	r1, #1
d0057d52:	f843 5c98 	str.w	r5, [r3, #-152]
d0057d56:	3201      	adds	r2, #1
d0057d58:	3540      	adds	r5, #64	; 0x40
d0057d5a:	4290      	cmp	r0, r2
d0057d5c:	f340 809a 	ble.w	d0057e94 <submitEntitySolid+0xb60>
d0057d60:	6aeb      	ldr	r3, [r5, #44]	; 0x2c
d0057d62:	2b00      	cmp	r3, #0
d0057d64:	d0f7      	beq.n	d0057d56 <submitEntitySolid+0xa22>
d0057d66:	782b      	ldrb	r3, [r5, #0]
d0057d68:	2b01      	cmp	r3, #1
d0057d6a:	d1d1      	bne.n	d0057d10 <submitEntitySolid+0x9dc>
d0057d6c:	ab3a      	add	r3, sp, #232	; 0xe8
d0057d6e:	eb03 0381 	add.w	r3, r3, r1, lsl #2
d0057d72:	3101      	adds	r1, #1
d0057d74:	f843 5c98 	str.w	r5, [r3, #-152]
d0057d78:	e7ed      	b.n	d0057d56 <submitEntitySolid+0xa22>
d0057d7a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057d7e:	f67f af0a 	bls.w	d0057b96 <submitEntitySolid+0x862>
d0057d82:	ee75 5ae2 	vsub.f32	s11, s11, s5
d0057d86:	ee72 2a62 	vsub.f32	s5, s4, s5
d0057d8a:	ee85 8aa2 	vdiv.f32	s16, s11, s5
d0057d8e:	eddf 5a61 	vldr	s11, [pc, #388]	; d0057f14 <submitEntitySolid+0xbe0>
d0057d92:	fe88 8a25 	vmaxnm.f32	s16, s16, s11
d0057d96:	fe88 8a45 	vminnm.f32	s16, s16, s10
d0057d9a:	ee35 8a48 	vsub.f32	s16, s10, s16
d0057d9e:	e6f5      	b.n	d0057b8c <submitEntitySolid+0x858>
d0057da0:	eddf 6a5d 	vldr	s13, [pc, #372]	; d0057f18 <submitEntitySolid+0xbe4>
d0057da4:	eeb4 7ae6 	vcmpe.f32	s14, s13
d0057da8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057dac:	d407      	bmi.n	d0057dbe <submitEntitySolid+0xa8a>
d0057dae:	eddf 6a5b 	vldr	s13, [pc, #364]	; d0057f1c <submitEntitySolid+0xbe8>
d0057db2:	eeb4 7a66 	vcmp.f32	s14, s13
d0057db6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057dba:	f77f ae50 	ble.w	d0057a5e <submitEntitySolid+0x72a>
d0057dbe:	eef1 6ac7 	vsqrt.f32	s13, s14
d0057dc2:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0057dc6:	ee86 7a26 	vdiv.f32	s14, s12, s13
d0057dca:	ee23 3a07 	vmul.f32	s6, s6, s14
d0057dce:	ee62 2a87 	vmul.f32	s5, s5, s14
d0057dd2:	ee24 4a07 	vmul.f32	s8, s8, s14
d0057dd6:	e642      	b.n	d0057a5e <submitEntitySolid+0x72a>
d0057dd8:	eef1 6a64 	vneg.f32	s13, s9
d0057ddc:	eef4 6a42 	vcmp.f32	s13, s4
d0057de0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057de4:	f63f ad4b 	bhi.w	d005787e <submitEntitySolid+0x54a>
d0057de8:	eef4 4a42 	vcmp.f32	s9, s4
d0057dec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057df0:	f6ff ad45 	blt.w	d005787e <submitEntitySolid+0x54a>
d0057df4:	eef1 6a44 	vneg.f32	s13, s8
d0057df8:	eef4 6ac1 	vcmpe.f32	s13, s2
d0057dfc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057e00:	eeb4 4ac1 	vcmpe.f32	s8, s2
d0057e04:	bf94      	ite	ls
d0057e06:	2001      	movls	r0, #1
d0057e08:	2000      	movhi	r0, #0
d0057e0a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057e0e:	eef4 7ac5 	vcmpe.f32	s15, s10
d0057e12:	f000 0001 	and.w	r0, r0, #1
d0057e16:	bfb8      	it	lt
d0057e18:	2000      	movlt	r0, #0
d0057e1a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057e1e:	f000 0001 	and.w	r0, r0, #1
d0057e22:	bfb8      	it	lt
d0057e24:	2000      	movlt	r0, #0
d0057e26:	2800      	cmp	r0, #0
d0057e28:	f43f ad29 	beq.w	d005787e <submitEntitySolid+0x54a>
d0057e2c:	eef4 7a47 	vcmp.f32	s15, s14
d0057e30:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057e34:	f63f ad23 	bhi.w	d005787e <submitEntitySolid+0x54a>
d0057e38:	ee64 4a8a 	vmul.f32	s9, s9, s20
d0057e3c:	200c      	movs	r0, #12
d0057e3e:	fb00 8002 	mla	r0, r0, r2, r8
d0057e42:	eeb1 7a64 	vneg.f32	s14, s9
d0057e46:	edd0 7a01 	vldr	s15, [r0, #4]
d0057e4a:	eef4 7a47 	vcmp.f32	s15, s14
d0057e4e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057e52:	f6ff ad14 	blt.w	d005787e <submitEntitySolid+0x54a>
d0057e56:	eef4 7a64 	vcmp.f32	s15, s9
d0057e5a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057e5e:	f63f ad0e 	bhi.w	d005787e <submitEntitySolid+0x54a>
d0057e62:	ee24 4a0a 	vmul.f32	s8, s8, s20
d0057e66:	200c      	movs	r0, #12
d0057e68:	fb00 8001 	mla	r0, r0, r1, r8
d0057e6c:	eeb1 7a44 	vneg.f32	s14, s8
d0057e70:	edd0 7a01 	vldr	s15, [r0, #4]
d0057e74:	eef4 7ac7 	vcmpe.f32	s15, s14
d0057e78:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057e7c:	eef4 7ac4 	vcmpe.f32	s15, s8
d0057e80:	bfac      	ite	ge
d0057e82:	2001      	movge	r0, #1
d0057e84:	2000      	movlt	r0, #0
d0057e86:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057e8a:	f000 0001 	and.w	r0, r0, #1
d0057e8e:	bf88      	it	hi
d0057e90:	2000      	movhi	r0, #0
d0057e92:	e4f5      	b.n	d0057880 <submitEntitySolid+0x54c>
d0057e94:	9104      	str	r1, [sp, #16]
d0057e96:	f7ff bae5 	b.w	d0057464 <submitEntitySolid+0x130>
d0057e9a:	ed8d 1a13 	vstr	s2, [sp, #76]	; 0x4c
d0057e9e:	edcd 1a12 	vstr	s3, [sp, #72]	; 0x48
d0057ea2:	ed8d 6a11 	vstr	s12, [sp, #68]	; 0x44
d0057ea6:	9110      	str	r1, [sp, #64]	; 0x40
d0057ea8:	920f      	str	r2, [sp, #60]	; 0x3c
d0057eaa:	edcd 6a0e 	vstr	s13, [sp, #56]	; 0x38
d0057eae:	ed8d 7a0d 	vstr	s14, [sp, #52]	; 0x34
d0057eb2:	edcd 7a0c 	vstr	s15, [sp, #48]	; 0x30
d0057eb6:	900b      	str	r0, [sp, #44]	; 0x2c
d0057eb8:	ed8d 5a0a 	vstr	s10, [sp, #40]	; 0x28
d0057ebc:	edcd 0a06 	vstr	s1, [sp, #24]
d0057ec0:	f7fc f9a8 	bl	d0054214 <powfxt>
d0057ec4:	ed9d 1a13 	vldr	s2, [sp, #76]	; 0x4c
d0057ec8:	eddd 1a12 	vldr	s3, [sp, #72]	; 0x48
d0057ecc:	ed9d 6a11 	vldr	s12, [sp, #68]	; 0x44
d0057ed0:	9910      	ldr	r1, [sp, #64]	; 0x40
d0057ed2:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
d0057ed4:	eddd 6a0e 	vldr	s13, [sp, #56]	; 0x38
d0057ed8:	ed9d 7a0d 	vldr	s14, [sp, #52]	; 0x34
d0057edc:	eddd 7a0c 	vldr	s15, [sp, #48]	; 0x30
d0057ee0:	980b      	ldr	r0, [sp, #44]	; 0x2c
d0057ee2:	ed9d 5a0a 	vldr	s10, [sp, #40]	; 0x28
d0057ee6:	eddd 0a06 	vldr	s1, [sp, #24]
d0057eea:	e6ba      	b.n	d0057c62 <submitEntitySolid+0x92e>
d0057eec:	ee75 5ac2 	vsub.f32	s11, s11, s4
d0057ef0:	ee73 3ac2 	vsub.f32	s7, s7, s4
d0057ef4:	eeb5 3a00 	vmov.f32	s6, #80	; 0x3e800000  0.250
d0057ef8:	ee85 8aa3 	vdiv.f32	s16, s11, s7
d0057efc:	eddf 5a05 	vldr	s11, [pc, #20]	; d0057f14 <submitEntitySolid+0xbe0>
d0057f00:	fe88 8a25 	vmaxnm.f32	s16, s16, s11
d0057f04:	fe88 8a45 	vminnm.f32	s16, s16, s10
d0057f08:	ee35 8a48 	vsub.f32	s16, s10, s16
d0057f0c:	ee28 8a03 	vmul.f32	s16, s16, s6
d0057f10:	e63c      	b.n	d0057b8c <submitEntitySolid+0x858>
d0057f12:	bf00      	nop
d0057f14:	00000000 	.word	0x00000000
d0057f18:	3f7fbe77 	.word	0x3f7fbe77
d0057f1c:	3f8020c5 	.word	0x3f8020c5

d0057f20 <submitWorldEntities>:
d0057f20:	b570      	push	{r4, r5, r6, lr}
d0057f22:	4c3e      	ldr	r4, [pc, #248]	; (d005801c <submitWorldEntities+0xfc>)
d0057f24:	4605      	mov	r5, r0
d0057f26:	f504 46c0 	add.w	r6, r4, #24576	; 0x6000
d0057f2a:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0057f2e:	2b00      	cmp	r3, #0
d0057f30:	d070      	beq.n	d0058014 <submitWorldEntities+0xf4>
d0057f32:	68e3      	ldr	r3, [r4, #12]
d0057f34:	2b00      	cmp	r3, #0
d0057f36:	d06d      	beq.n	d0058014 <submitWorldEntities+0xf4>
d0057f38:	f894 2035 	ldrb.w	r2, [r4, #53]	; 0x35
d0057f3c:	07d2      	lsls	r2, r2, #31
d0057f3e:	d569      	bpl.n	d0058014 <submitWorldEntities+0xf4>
d0057f40:	edd5 6a01 	vldr	s13, [r5, #4]
d0057f44:	ed94 7a01 	vldr	s14, [r4, #4]
d0057f48:	ed95 5a00 	vldr	s10, [r5]
d0057f4c:	ee37 7a66 	vsub.f32	s14, s14, s13
d0057f50:	edd5 7a0d 	vldr	s15, [r5, #52]	; 0x34
d0057f54:	edd4 6a00 	vldr	s13, [r4]
d0057f58:	edd5 5a0c 	vldr	s11, [r5, #48]	; 0x30
d0057f5c:	ee76 6ac5 	vsub.f32	s13, s13, s10
d0057f60:	ed94 6a02 	vldr	s12, [r4, #8]
d0057f64:	ee67 7a27 	vmul.f32	s15, s14, s15
d0057f68:	ed95 5a02 	vldr	s10, [r5, #8]
d0057f6c:	edd5 4a0e 	vldr	s9, [r5, #56]	; 0x38
d0057f70:	ee36 6a45 	vsub.f32	s12, s12, s10
d0057f74:	ed93 5a06 	vldr	s10, [r3, #24]
d0057f78:	eee6 7aa5 	vfma.f32	s15, s13, s11
d0057f7c:	edd5 5a11 	vldr	s11, [r5, #68]	; 0x44
d0057f80:	eee6 7a24 	vfma.f32	s15, s12, s9
d0057f84:	ee77 4ac5 	vsub.f32	s9, s15, s10
d0057f88:	eef4 4ae5 	vcmpe.f32	s9, s11
d0057f8c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057f90:	dc40      	bgt.n	d0058014 <submitWorldEntities+0xf4>
d0057f92:	ee75 4a27 	vadd.f32	s9, s10, s15
d0057f96:	edd5 5a10 	vldr	s11, [r5, #64]	; 0x40
d0057f9a:	eef4 4ae5 	vcmpe.f32	s9, s11
d0057f9e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057fa2:	d437      	bmi.n	d0058014 <submitWorldEntities+0xf4>
d0057fa4:	edd5 5a07 	vldr	s11, [r5, #28]
d0057fa8:	eeb1 4a64 	vneg.f32	s8, s9
d0057fac:	ed95 3a08 	vldr	s6, [r5, #32]
d0057fb0:	ee67 5a25 	vmul.f32	s11, s14, s11
d0057fb4:	edd5 3a06 	vldr	s7, [r5, #24]
d0057fb8:	eee6 5a03 	vfma.f32	s11, s12, s6
d0057fbc:	eee6 5aa3 	vfma.f32	s11, s13, s7
d0057fc0:	eef4 5ac4 	vcmpe.f32	s11, s8
d0057fc4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057fc8:	d424      	bmi.n	d0058014 <submitWorldEntities+0xf4>
d0057fca:	eef4 5ae4 	vcmpe.f32	s11, s9
d0057fce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057fd2:	dc1f      	bgt.n	d0058014 <submitWorldEntities+0xf4>
d0057fd4:	edd5 5a0a 	vldr	s11, [r5, #40]	; 0x28
d0057fd8:	edd5 4a0b 	vldr	s9, [r5, #44]	; 0x2c
d0057fdc:	ee27 7a25 	vmul.f32	s14, s14, s11
d0057fe0:	ed95 4a15 	vldr	s8, [r5, #84]	; 0x54
d0057fe4:	edd5 5a09 	vldr	s11, [r5, #36]	; 0x24
d0057fe8:	eea7 5a84 	vfma.f32	s10, s15, s8
d0057fec:	eea6 7a24 	vfma.f32	s14, s12, s9
d0057ff0:	eef1 7a45 	vneg.f32	s15, s10
d0057ff4:	eea6 7aa5 	vfma.f32	s14, s13, s11
d0057ff8:	eeb4 7ae7 	vcmpe.f32	s14, s15
d0057ffc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058000:	d408      	bmi.n	d0058014 <submitWorldEntities+0xf4>
d0058002:	eeb4 7ac5 	vcmpe.f32	s14, s10
d0058006:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005800a:	dc03      	bgt.n	d0058014 <submitWorldEntities+0xf4>
d005800c:	4629      	mov	r1, r5
d005800e:	4620      	mov	r0, r4
d0058010:	f7ff f990 	bl	d0057334 <submitEntitySolid>
d0058014:	3460      	adds	r4, #96	; 0x60
d0058016:	42a6      	cmp	r6, r4
d0058018:	d187      	bne.n	d0057f2a <submitWorldEntities+0xa>
d005801a:	bd70      	pop	{r4, r5, r6, pc}
d005801c:	d00f50a0 	.word	0xd00f50a0

d0058020 <Render3D>:
d0058020:	4aa2      	ldr	r2, [pc, #648]	; (d00582ac <Render3D+0x28c>)
d0058022:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0058026:	7813      	ldrb	r3, [r2, #0]
d0058028:	4604      	mov	r4, r0
d005802a:	7850      	ldrb	r0, [r2, #1]
d005802c:	7891      	ldrb	r1, [r2, #2]
d005802e:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d0058032:	78d2      	ldrb	r2, [r2, #3]
d0058034:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0058038:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d005803c:	ed2d 8b02 	vpush	{d8}
d0058040:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d0058042:	b088      	sub	sp, #32
d0058044:	4798      	blx	r3
d0058046:	b128      	cbz	r0, d0058054 <Render3D+0x34>
d0058048:	4999      	ldr	r1, [pc, #612]	; (d00582b0 <Render3D+0x290>)
d005804a:	f100 0260 	add.w	r2, r0, #96	; 0x60
d005804e:	4b99      	ldr	r3, [pc, #612]	; (d00582b4 <Render3D+0x294>)
d0058050:	6008      	str	r0, [r1, #0]
d0058052:	601a      	str	r2, [r3, #0]
d0058054:	4f98      	ldr	r7, [pc, #608]	; (d00582b8 <Render3D+0x298>)
d0058056:	2600      	movs	r6, #0
d0058058:	4620      	mov	r0, r4
d005805a:	603e      	str	r6, [r7, #0]
d005805c:	f7ff ff60 	bl	d0057f20 <submitWorldEntities>
d0058060:	4620      	mov	r0, r4
d0058062:	f7fc f973 	bl	d005434c <sb3dParticlesRender>
d0058066:	4b95      	ldr	r3, [pc, #596]	; (d00582bc <Render3D+0x29c>)
d0058068:	681d      	ldr	r5, [r3, #0]
d005806a:	2d00      	cmp	r5, #0
d005806c:	f040 80cf 	bne.w	d005820e <Render3D+0x1ee>
d0058070:	f8df 8254 	ldr.w	r8, [pc, #596]	; d00582c8 <Render3D+0x2a8>
d0058074:	f8df 9254 	ldr.w	r9, [pc, #596]	; d00582cc <Render3D+0x2ac>
d0058078:	0168      	lsls	r0, r5, #5
d005807a:	f7f9 fb47 	bl	d005170c <beginDepthBand>
d005807e:	f8d8 6000 	ldr.w	r6, [r8]
d0058082:	2e00      	cmp	r6, #0
d0058084:	f040 8090 	bne.w	d00581a8 <Render3D+0x188>
d0058088:	f8d9 a000 	ldr.w	sl, [r9]
d005808c:	683a      	ldr	r2, [r7, #0]
d005808e:	f1ba 0f00 	cmp.w	sl, #0
d0058092:	d158      	bne.n	d0058146 <Render3D+0x126>
d0058094:	2a00      	cmp	r2, #0
d0058096:	dd4e      	ble.n	d0058136 <Render3D+0x116>
d0058098:	4c89      	ldr	r4, [pc, #548]	; (d00582c0 <Render3D+0x2a0>)
d005809a:	e021      	b.n	d00580e0 <Render3D+0xc0>
d005809c:	f894 1036 	ldrb.w	r1, [r4, #54]	; 0x36
d00580a0:	8ca2      	ldrh	r2, [r4, #36]	; 0x24
d00580a2:	8c20      	ldrh	r0, [r4, #32]
d00580a4:	8c66      	ldrh	r6, [r4, #34]	; 0x22
d00580a6:	9305      	str	r3, [sp, #20]
d00580a8:	9106      	str	r1, [sp, #24]
d00580aa:	9204      	str	r2, [sp, #16]
d00580ac:	9603      	str	r6, [sp, #12]
d00580ae:	9002      	str	r0, [sp, #8]
d00580b0:	6963      	ldr	r3, [r4, #20]
d00580b2:	9301      	str	r3, [sp, #4]
d00580b4:	6923      	ldr	r3, [r4, #16]
d00580b6:	9300      	str	r3, [sp, #0]
d00580b8:	edd4 1a07 	vldr	s3, [r4, #28]
d00580bc:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00580c0:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00580c4:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00580c8:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d00580cc:	e9d4 0100 	ldrd	r0, r1, [r4]
d00580d0:	f7fa fd02 	bl	d0052ad8 <fillTriangleDitherBayerT>
d00580d4:	683a      	ldr	r2, [r7, #0]
d00580d6:	f10a 0a01 	add.w	sl, sl, #1
d00580da:	3440      	adds	r4, #64	; 0x40
d00580dc:	4592      	cmp	sl, r2
d00580de:	da2a      	bge.n	d0058136 <Render3D+0x116>
d00580e0:	f894 303c 	ldrb.w	r3, [r4, #60]	; 0x3c
d00580e4:	42ab      	cmp	r3, r5
d00580e6:	dcf6      	bgt.n	d00580d6 <Render3D+0xb6>
d00580e8:	f894 303d 	ldrb.w	r3, [r4, #61]	; 0x3d
d00580ec:	42ab      	cmp	r3, r5
d00580ee:	dbf2      	blt.n	d00580d6 <Render3D+0xb6>
d00580f0:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d00580f4:	06da      	lsls	r2, r3, #27
d00580f6:	d4d1      	bmi.n	d005809c <Render3D+0x7c>
d00580f8:	8ca2      	ldrh	r2, [r4, #36]	; 0x24
d00580fa:	f10a 0a01 	add.w	sl, sl, #1
d00580fe:	8c20      	ldrh	r0, [r4, #32]
d0058100:	6961      	ldr	r1, [r4, #20]
d0058102:	8c66      	ldrh	r6, [r4, #34]	; 0x22
d0058104:	9305      	str	r3, [sp, #20]
d0058106:	9204      	str	r2, [sp, #16]
d0058108:	9603      	str	r6, [sp, #12]
d005810a:	9002      	str	r0, [sp, #8]
d005810c:	9101      	str	r1, [sp, #4]
d005810e:	6923      	ldr	r3, [r4, #16]
d0058110:	9300      	str	r3, [sp, #0]
d0058112:	edd4 1a07 	vldr	s3, [r4, #28]
d0058116:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d005811a:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d005811e:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0058122:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d0058126:	e9d4 0100 	ldrd	r0, r1, [r4]
d005812a:	f7f9 ffbd 	bl	d00520a8 <fillTriangleDitherBayer>
d005812e:	683a      	ldr	r2, [r7, #0]
d0058130:	3440      	adds	r4, #64	; 0x40
d0058132:	4592      	cmp	sl, r2
d0058134:	dbd4      	blt.n	d00580e0 <Render3D+0xc0>
d0058136:	3501      	adds	r5, #1
d0058138:	2d0a      	cmp	r5, #10
d005813a:	d19d      	bne.n	d0058078 <Render3D+0x58>
d005813c:	b008      	add	sp, #32
d005813e:	ecbd 8b02 	vpop	{d8}
d0058142:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0058146:	2a00      	cmp	r2, #0
d0058148:	ddf5      	ble.n	d0058136 <Render3D+0x116>
d005814a:	4c5d      	ldr	r4, [pc, #372]	; (d00582c0 <Render3D+0x2a0>)
d005814c:	f894 303c 	ldrb.w	r3, [r4, #60]	; 0x3c
d0058150:	3601      	adds	r6, #1
d0058152:	42ab      	cmp	r3, r5
d0058154:	dc1f      	bgt.n	d0058196 <Render3D+0x176>
d0058156:	f894 303d 	ldrb.w	r3, [r4, #61]	; 0x3d
d005815a:	42ab      	cmp	r3, r5
d005815c:	db1b      	blt.n	d0058196 <Render3D+0x176>
d005815e:	f894 2034 	ldrb.w	r2, [r4, #52]	; 0x34
d0058162:	8ca3      	ldrh	r3, [r4, #36]	; 0x24
d0058164:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d0058166:	8c21      	ldrh	r1, [r4, #32]
d0058168:	9205      	str	r2, [sp, #20]
d005816a:	9304      	str	r3, [sp, #16]
d005816c:	9003      	str	r0, [sp, #12]
d005816e:	9102      	str	r1, [sp, #8]
d0058170:	6963      	ldr	r3, [r4, #20]
d0058172:	9301      	str	r3, [sp, #4]
d0058174:	6923      	ldr	r3, [r4, #16]
d0058176:	9300      	str	r3, [sp, #0]
d0058178:	edd4 1a07 	vldr	s3, [r4, #28]
d005817c:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0058180:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0058184:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0058188:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d005818c:	e9d4 0100 	ldrd	r0, r1, [r4]
d0058190:	f7fb f9ec 	bl	d005356c <fillTriangleDitherBayer2Mode>
d0058194:	683a      	ldr	r2, [r7, #0]
d0058196:	4296      	cmp	r6, r2
d0058198:	f104 0440 	add.w	r4, r4, #64	; 0x40
d005819c:	dbd6      	blt.n	d005814c <Render3D+0x12c>
d005819e:	3501      	adds	r5, #1
d00581a0:	2d0a      	cmp	r5, #10
d00581a2:	f47f af69 	bne.w	d0058078 <Render3D+0x58>
d00581a6:	e7c9      	b.n	d005813c <Render3D+0x11c>
d00581a8:	683a      	ldr	r2, [r7, #0]
d00581aa:	2a00      	cmp	r2, #0
d00581ac:	ddc3      	ble.n	d0058136 <Render3D+0x116>
d00581ae:	4c44      	ldr	r4, [pc, #272]	; (d00582c0 <Render3D+0x2a0>)
d00581b0:	2600      	movs	r6, #0
d00581b2:	f894 303c 	ldrb.w	r3, [r4, #60]	; 0x3c
d00581b6:	3601      	adds	r6, #1
d00581b8:	42ab      	cmp	r3, r5
d00581ba:	dc1f      	bgt.n	d00581fc <Render3D+0x1dc>
d00581bc:	f894 303d 	ldrb.w	r3, [r4, #61]	; 0x3d
d00581c0:	42ab      	cmp	r3, r5
d00581c2:	db1b      	blt.n	d00581fc <Render3D+0x1dc>
d00581c4:	f894 2034 	ldrb.w	r2, [r4, #52]	; 0x34
d00581c8:	8ca3      	ldrh	r3, [r4, #36]	; 0x24
d00581ca:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d00581cc:	8c21      	ldrh	r1, [r4, #32]
d00581ce:	9205      	str	r2, [sp, #20]
d00581d0:	9304      	str	r3, [sp, #16]
d00581d2:	9003      	str	r0, [sp, #12]
d00581d4:	9102      	str	r1, [sp, #8]
d00581d6:	6963      	ldr	r3, [r4, #20]
d00581d8:	9301      	str	r3, [sp, #4]
d00581da:	6923      	ldr	r3, [r4, #16]
d00581dc:	9300      	str	r3, [sp, #0]
d00581de:	edd4 1a07 	vldr	s3, [r4, #28]
d00581e2:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00581e6:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00581ea:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00581ee:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d00581f2:	e9d4 0100 	ldrd	r0, r1, [r4]
d00581f6:	f7f9 fb21 	bl	d005183c <fillTriangleFlat>
d00581fa:	683a      	ldr	r2, [r7, #0]
d00581fc:	4296      	cmp	r6, r2
d00581fe:	f104 0440 	add.w	r4, r4, #64	; 0x40
d0058202:	dbd6      	blt.n	d00581b2 <Render3D+0x192>
d0058204:	3501      	adds	r5, #1
d0058206:	2d0a      	cmp	r5, #10
d0058208:	f47f af36 	bne.w	d0058078 <Render3D+0x58>
d005820c:	e796      	b.n	d005813c <Render3D+0x11c>
d005820e:	683b      	ldr	r3, [r7, #0]
d0058210:	42b3      	cmp	r3, r6
d0058212:	dd93      	ble.n	d005813c <Render3D+0x11c>
d0058214:	eeb6 8a00 	vmov.f32	s16, #96	; 0x3f000000  0.5
d0058218:	4c29      	ldr	r4, [pc, #164]	; (d00582c0 <Render3D+0x2a0>)
d005821a:	eddf 8a2a 	vldr	s17, [pc, #168]	; d00582c4 <Render3D+0x2a4>
d005821e:	edd4 7a07 	vldr	s15, [r4, #28]
d0058222:	3601      	adds	r6, #1
d0058224:	f894 3035 	ldrb.w	r3, [r4, #53]	; 0x35
d0058228:	ee77 7a88 	vadd.f32	s15, s15, s16
d005822c:	ee07 3a10 	vmov	s14, r3
d0058230:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0058234:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0058238:	ee17 1a90 	vmov	r1, s15
d005823c:	eef0 7a48 	vmov.f32	s15, s16
d0058240:	2904      	cmp	r1, #4
d0058242:	eee7 7a28 	vfma.f32	s15, s14, s17
d0058246:	bfa8      	it	ge
d0058248:	2104      	movge	r1, #4
d005824a:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d005824e:	b153      	cbz	r3, d0058266 <Render3D+0x246>
d0058250:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0058254:	ee17 3a90 	vmov	r3, s15
d0058258:	f1c3 0305 	rsb	r3, r3, #5
d005825c:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0058260:	4299      	cmp	r1, r3
d0058262:	bfa8      	it	ge
d0058264:	4619      	movge	r1, r3
d0058266:	f894 0034 	ldrb.w	r0, [r4, #52]	; 0x34
d005826a:	f7f9 fad7 	bl	d005181c <shadeColor>
d005826e:	4605      	mov	r5, r0
d0058270:	68e3      	ldr	r3, [r4, #12]
d0058272:	68a2      	ldr	r2, [r4, #8]
d0058274:	6861      	ldr	r1, [r4, #4]
d0058276:	9000      	str	r0, [sp, #0]
d0058278:	6820      	ldr	r0, [r4, #0]
d005827a:	f7f9 fa81 	bl	d0051780 <drawLine>
d005827e:	9500      	str	r5, [sp, #0]
d0058280:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
d0058284:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
d0058288:	f7f9 fa7a 	bl	d0051780 <drawLine>
d005828c:	9500      	str	r5, [sp, #0]
d005828e:	e9d4 2300 	ldrd	r2, r3, [r4]
d0058292:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
d0058296:	f7f9 fa73 	bl	d0051780 <drawLine>
d005829a:	683b      	ldr	r3, [r7, #0]
d005829c:	3440      	adds	r4, #64	; 0x40
d005829e:	42b3      	cmp	r3, r6
d00582a0:	dcbd      	bgt.n	d005821e <Render3D+0x1fe>
d00582a2:	b008      	add	sp, #32
d00582a4:	ecbd 8b02 	vpop	{d8}
d00582a8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00582ac:	2001f000 	.word	0x2001f000
d00582b0:	d0068fa0 	.word	0xd0068fa0
d00582b4:	d0068fa4 	.word	0xd0068fa4
d00582b8:	d0068fac 	.word	0xd0068fac
d00582bc:	d00e8fc4 	.word	0xd00e8fc4
d00582c0:	d0068fc0 	.word	0xd0068fc0
d00582c4:	3ca0a0a1 	.word	0x3ca0a0a1
d00582c8:	d0068fa8 	.word	0xd0068fa8
d00582cc:	d00e8fc0 	.word	0xd00e8fc0

d00582d0 <freeMesh>:
d00582d0:	b1b8      	cbz	r0, d0058302 <freeMesh+0x32>
d00582d2:	b510      	push	{r4, lr}
d00582d4:	4604      	mov	r4, r0
d00582d6:	6800      	ldr	r0, [r0, #0]
d00582d8:	b108      	cbz	r0, d00582de <freeMesh+0xe>
d00582da:	f000 fc51 	bl	d0058b80 <free>
d00582de:	6920      	ldr	r0, [r4, #16]
d00582e0:	b108      	cbz	r0, d00582e6 <freeMesh+0x16>
d00582e2:	f000 fc4d 	bl	d0058b80 <free>
d00582e6:	68a0      	ldr	r0, [r4, #8]
d00582e8:	b108      	cbz	r0, d00582ee <freeMesh+0x1e>
d00582ea:	f000 fc49 	bl	d0058b80 <free>
d00582ee:	2300      	movs	r3, #0
d00582f0:	2200      	movs	r2, #0
d00582f2:	6023      	str	r3, [r4, #0]
d00582f4:	6123      	str	r3, [r4, #16]
d00582f6:	60a3      	str	r3, [r4, #8]
d00582f8:	6063      	str	r3, [r4, #4]
d00582fa:	6163      	str	r3, [r4, #20]
d00582fc:	60e3      	str	r3, [r4, #12]
d00582fe:	61a2      	str	r2, [r4, #24]
d0058300:	bd10      	pop	{r4, pc}
d0058302:	4770      	bx	lr

d0058304 <loadMeshSB3D>:
d0058304:	2800      	cmp	r0, #0
d0058306:	f000 80fe 	beq.w	d0058506 <loadMeshSB3D+0x202>
d005830a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d005830e:	fab1 f781 	clz	r7, r1
d0058312:	460c      	mov	r4, r1
d0058314:	ed2d 8b02 	vpush	{d8}
d0058318:	097f      	lsrs	r7, r7, #5
d005831a:	b08c      	sub	sp, #48	; 0x30
d005831c:	2900      	cmp	r1, #0
d005831e:	f000 80ec 	beq.w	d00584fa <loadMeshSB3D+0x1f6>
d0058322:	4e7e      	ldr	r6, [pc, #504]	; (d005851c <loadMeshSB3D+0x218>)
d0058324:	4605      	mov	r5, r0
d0058326:	2240      	movs	r2, #64	; 0x40
d0058328:	4639      	mov	r1, r7
d005832a:	4620      	mov	r0, r4
d005832c:	eeb0 8a40 	vmov.f32	s16, s0
d0058330:	f000 fc4a 	bl	d0058bc8 <memset>
d0058334:	7933      	ldrb	r3, [r6, #4]
d0058336:	f896 c005 	ldrb.w	ip, [r6, #5]
d005833a:	4629      	mov	r1, r5
d005833c:	79b2      	ldrb	r2, [r6, #6]
d005833e:	4638      	mov	r0, r7
d0058340:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d0058344:	79f5      	ldrb	r5, [r6, #7]
d0058346:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d005834a:	2201      	movs	r2, #1
d005834c:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d0058350:	681b      	ldr	r3, [r3, #0]
d0058352:	681b      	ldr	r3, [r3, #0]
d0058354:	4798      	blx	r3
d0058356:	2800      	cmp	r0, #0
d0058358:	f040 80cf 	bne.w	d00584fa <loadMeshSB3D+0x1f6>
d005835c:	f896 c004 	ldrb.w	ip, [r6, #4]
d0058360:	2204      	movs	r2, #4
d0058362:	7971      	ldrb	r1, [r6, #5]
d0058364:	ab02      	add	r3, sp, #8
d0058366:	79b7      	ldrb	r7, [r6, #6]
d0058368:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d005836c:	79f5      	ldrb	r5, [r6, #7]
d005836e:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0058372:	a903      	add	r1, sp, #12
d0058374:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d0058378:	682d      	ldr	r5, [r5, #0]
d005837a:	68ad      	ldr	r5, [r5, #8]
d005837c:	47a8      	blx	r5
d005837e:	2800      	cmp	r0, #0
d0058380:	f040 80b8 	bne.w	d00584f4 <loadMeshSB3D+0x1f0>
d0058384:	9a02      	ldr	r2, [sp, #8]
d0058386:	2a04      	cmp	r2, #4
d0058388:	f040 80b4 	bne.w	d00584f4 <loadMeshSB3D+0x1f0>
d005838c:	4b64      	ldr	r3, [pc, #400]	; (d0058520 <loadMeshSB3D+0x21c>)
d005838e:	9903      	ldr	r1, [sp, #12]
d0058390:	4299      	cmp	r1, r3
d0058392:	f040 80af 	bne.w	d00584f4 <loadMeshSB3D+0x1f0>
d0058396:	7931      	ldrb	r1, [r6, #4]
d0058398:	ab02      	add	r3, sp, #8
d005839a:	7975      	ldrb	r5, [r6, #5]
d005839c:	79b7      	ldrb	r7, [r6, #6]
d005839e:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
d00583a2:	79f5      	ldrb	r5, [r6, #7]
d00583a4:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d00583a8:	a904      	add	r1, sp, #16
d00583aa:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d00583ae:	682d      	ldr	r5, [r5, #0]
d00583b0:	68ad      	ldr	r5, [r5, #8]
d00583b2:	47a8      	blx	r5
d00583b4:	2800      	cmp	r0, #0
d00583b6:	f040 809d 	bne.w	d00584f4 <loadMeshSB3D+0x1f0>
d00583ba:	9a02      	ldr	r2, [sp, #8]
d00583bc:	2a04      	cmp	r2, #4
d00583be:	f040 8099 	bne.w	d00584f4 <loadMeshSB3D+0x1f0>
d00583c2:	9b04      	ldr	r3, [sp, #16]
d00583c4:	2b05      	cmp	r3, #5
d00583c6:	f040 8095 	bne.w	d00584f4 <loadMeshSB3D+0x1f0>
d00583ca:	7931      	ldrb	r1, [r6, #4]
d00583cc:	ab02      	add	r3, sp, #8
d00583ce:	7975      	ldrb	r5, [r6, #5]
d00583d0:	79b7      	ldrb	r7, [r6, #6]
d00583d2:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
d00583d6:	79f5      	ldrb	r5, [r6, #7]
d00583d8:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d00583dc:	a905      	add	r1, sp, #20
d00583de:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d00583e2:	682d      	ldr	r5, [r5, #0]
d00583e4:	68ad      	ldr	r5, [r5, #8]
d00583e6:	47a8      	blx	r5
d00583e8:	2800      	cmp	r0, #0
d00583ea:	f040 8083 	bne.w	d00584f4 <loadMeshSB3D+0x1f0>
d00583ee:	9a02      	ldr	r2, [sp, #8]
d00583f0:	2a04      	cmp	r2, #4
d00583f2:	d17f      	bne.n	d00584f4 <loadMeshSB3D+0x1f0>
d00583f4:	7930      	ldrb	r0, [r6, #4]
d00583f6:	ab02      	add	r3, sp, #8
d00583f8:	7975      	ldrb	r5, [r6, #5]
d00583fa:	a906      	add	r1, sp, #24
d00583fc:	79b7      	ldrb	r7, [r6, #6]
d00583fe:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
d0058402:	79f5      	ldrb	r5, [r6, #7]
d0058404:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d0058408:	2000      	movs	r0, #0
d005840a:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d005840e:	682d      	ldr	r5, [r5, #0]
d0058410:	68ad      	ldr	r5, [r5, #8]
d0058412:	47a8      	blx	r5
d0058414:	4605      	mov	r5, r0
d0058416:	2800      	cmp	r0, #0
d0058418:	d16c      	bne.n	d00584f4 <loadMeshSB3D+0x1f0>
d005841a:	9b02      	ldr	r3, [sp, #8]
d005841c:	2b04      	cmp	r3, #4
d005841e:	d169      	bne.n	d00584f4 <loadMeshSB3D+0x1f0>
d0058420:	9b05      	ldr	r3, [sp, #20]
d0058422:	2b00      	cmp	r3, #0
d0058424:	d066      	beq.n	d00584f4 <loadMeshSB3D+0x1f0>
d0058426:	9f06      	ldr	r7, [sp, #24]
d0058428:	2f00      	cmp	r7, #0
d005842a:	d063      	beq.n	d00584f4 <loadMeshSB3D+0x1f0>
d005842c:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0058430:	6063      	str	r3, [r4, #4]
d0058432:	6167      	str	r7, [r4, #20]
d0058434:	0080      	lsls	r0, r0, #2
d0058436:	60e5      	str	r5, [r4, #12]
d0058438:	f000 fb9a 	bl	d0058b70 <malloc>
d005843c:	4603      	mov	r3, r0
d005843e:	0138      	lsls	r0, r7, #4
d0058440:	6023      	str	r3, [r4, #0]
d0058442:	461f      	mov	r7, r3
d0058444:	f000 fb94 	bl	d0058b70 <malloc>
d0058448:	60a5      	str	r5, [r4, #8]
d005844a:	6120      	str	r0, [r4, #16]
d005844c:	2800      	cmp	r0, #0
d005844e:	d05c      	beq.n	d005850a <loadMeshSB3D+0x206>
d0058450:	fab7 f887 	clz	r8, r7
d0058454:	ea4f 1858 	mov.w	r8, r8, lsr #5
d0058458:	b9df      	cbnz	r7, d0058492 <loadMeshSB3D+0x18e>
d005845a:	e056      	b.n	d005850a <loadMeshSB3D+0x206>
d005845c:	9b02      	ldr	r3, [sp, #8]
d005845e:	2b0c      	cmp	r3, #12
d0058460:	d12e      	bne.n	d00584c0 <loadMeshSB3D+0x1bc>
d0058462:	eddd 6a09 	vldr	s13, [sp, #36]	; 0x24
d0058466:	ed9d 7a0a 	vldr	s14, [sp, #40]	; 0x28
d005846a:	eddd 7a0b 	vldr	s15, [sp, #44]	; 0x2c
d005846e:	ee66 6a88 	vmul.f32	s13, s13, s16
d0058472:	6823      	ldr	r3, [r4, #0]
d0058474:	ee27 7a08 	vmul.f32	s14, s14, s16
d0058478:	9905      	ldr	r1, [sp, #20]
d005847a:	ee67 7a88 	vmul.f32	s15, s15, s16
d005847e:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d0058482:	4541      	cmp	r1, r8
d0058484:	edc3 6a00 	vstr	s13, [r3]
d0058488:	ed83 7a01 	vstr	s14, [r3, #4]
d005848c:	edc3 7a02 	vstr	s15, [r3, #8]
d0058490:	d948      	bls.n	d0058524 <loadMeshSB3D+0x220>
d0058492:	7930      	ldrb	r0, [r6, #4]
d0058494:	220c      	movs	r2, #12
d0058496:	7975      	ldrb	r5, [r6, #5]
d0058498:	ab02      	add	r3, sp, #8
d005849a:	79b7      	ldrb	r7, [r6, #6]
d005849c:	a909      	add	r1, sp, #36	; 0x24
d005849e:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
d00584a2:	79f5      	ldrb	r5, [r6, #7]
d00584a4:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d00584a8:	2000      	movs	r0, #0
d00584aa:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d00584ae:	682d      	ldr	r5, [r5, #0]
d00584b0:	68ad      	ldr	r5, [r5, #8]
d00584b2:	47a8      	blx	r5
d00584b4:	eb08 0248 	add.w	r2, r8, r8, lsl #1
d00584b8:	f108 0801 	add.w	r8, r8, #1
d00584bc:	2800      	cmp	r0, #0
d00584be:	d0cd      	beq.n	d005845c <loadMeshSB3D+0x158>
d00584c0:	6820      	ldr	r0, [r4, #0]
d00584c2:	b108      	cbz	r0, d00584c8 <loadMeshSB3D+0x1c4>
d00584c4:	f000 fb5c 	bl	d0058b80 <free>
d00584c8:	6920      	ldr	r0, [r4, #16]
d00584ca:	b108      	cbz	r0, d00584d0 <loadMeshSB3D+0x1cc>
d00584cc:	f000 fb58 	bl	d0058b80 <free>
d00584d0:	68a0      	ldr	r0, [r4, #8]
d00584d2:	b108      	cbz	r0, d00584d8 <loadMeshSB3D+0x1d4>
d00584d4:	f000 fb54 	bl	d0058b80 <free>
d00584d8:	2500      	movs	r5, #0
d00584da:	2300      	movs	r3, #0
d00584dc:	4628      	mov	r0, r5
d00584de:	6025      	str	r5, [r4, #0]
d00584e0:	6125      	str	r5, [r4, #16]
d00584e2:	60a5      	str	r5, [r4, #8]
d00584e4:	6065      	str	r5, [r4, #4]
d00584e6:	6165      	str	r5, [r4, #20]
d00584e8:	60e5      	str	r5, [r4, #12]
d00584ea:	61a3      	str	r3, [r4, #24]
d00584ec:	f000 f97c 	bl	d00587e8 <fclose>
d00584f0:	4628      	mov	r0, r5
d00584f2:	e003      	b.n	d00584fc <loadMeshSB3D+0x1f8>
d00584f4:	2000      	movs	r0, #0
d00584f6:	f000 f977 	bl	d00587e8 <fclose>
d00584fa:	2000      	movs	r0, #0
d00584fc:	b00c      	add	sp, #48	; 0x30
d00584fe:	ecbd 8b02 	vpop	{d8}
d0058502:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0058506:	2000      	movs	r0, #0
d0058508:	4770      	bx	lr
d005850a:	4620      	mov	r0, r4
d005850c:	f7ff fee0 	bl	d00582d0 <freeMesh>
d0058510:	2000      	movs	r0, #0
d0058512:	f000 f969 	bl	d00587e8 <fclose>
d0058516:	2000      	movs	r0, #0
d0058518:	e7f0      	b.n	d00584fc <loadMeshSB3D+0x1f8>
d005851a:	bf00      	nop
d005851c:	2001f000 	.word	0x2001f000
d0058520:	44334253 	.word	0x44334253
d0058524:	9b06      	ldr	r3, [sp, #24]
d0058526:	2b00      	cmp	r3, #0
d0058528:	f000 80de 	beq.w	d00586e8 <loadMeshSB3D+0x3e4>
d005852c:	4605      	mov	r5, r0
d005852e:	7937      	ldrb	r7, [r6, #4]
d0058530:	ab02      	add	r3, sp, #8
d0058532:	f896 c005 	ldrb.w	ip, [r6, #5]
d0058536:	2204      	movs	r2, #4
d0058538:	79b0      	ldrb	r0, [r6, #6]
d005853a:	a907      	add	r1, sp, #28
d005853c:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d0058540:	f896 c007 	ldrb.w	ip, [r6, #7]
d0058544:	ea47 4700 	orr.w	r7, r7, r0, lsl #16
d0058548:	2000      	movs	r0, #0
d005854a:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d005854e:	683f      	ldr	r7, [r7, #0]
d0058550:	68bf      	ldr	r7, [r7, #8]
d0058552:	47b8      	blx	r7
d0058554:	2800      	cmp	r0, #0
d0058556:	d1d8      	bne.n	d005850a <loadMeshSB3D+0x206>
d0058558:	9a02      	ldr	r2, [sp, #8]
d005855a:	2a04      	cmp	r2, #4
d005855c:	d1d5      	bne.n	d005850a <loadMeshSB3D+0x206>
d005855e:	7931      	ldrb	r1, [r6, #4]
d0058560:	ab02      	add	r3, sp, #8
d0058562:	f896 c005 	ldrb.w	ip, [r6, #5]
d0058566:	f896 e006 	ldrb.w	lr, [r6, #6]
d005856a:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d005856e:	f896 c007 	ldrb.w	ip, [r6, #7]
d0058572:	a908      	add	r1, sp, #32
d0058574:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d0058578:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d005857c:	683f      	ldr	r7, [r7, #0]
d005857e:	68bf      	ldr	r7, [r7, #8]
d0058580:	47b8      	blx	r7
d0058582:	2800      	cmp	r0, #0
d0058584:	d1c1      	bne.n	d005850a <loadMeshSB3D+0x206>
d0058586:	9a02      	ldr	r2, [sp, #8]
d0058588:	2a04      	cmp	r2, #4
d005858a:	d1be      	bne.n	d005850a <loadMeshSB3D+0x206>
d005858c:	7931      	ldrb	r1, [r6, #4]
d005858e:	ab02      	add	r3, sp, #8
d0058590:	f896 c005 	ldrb.w	ip, [r6, #5]
d0058594:	f896 e006 	ldrb.w	lr, [r6, #6]
d0058598:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d005859c:	f896 c007 	ldrb.w	ip, [r6, #7]
d00585a0:	a909      	add	r1, sp, #36	; 0x24
d00585a2:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d00585a6:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d00585aa:	683f      	ldr	r7, [r7, #0]
d00585ac:	68bf      	ldr	r7, [r7, #8]
d00585ae:	47b8      	blx	r7
d00585b0:	2800      	cmp	r0, #0
d00585b2:	d1aa      	bne.n	d005850a <loadMeshSB3D+0x206>
d00585b4:	9b02      	ldr	r3, [sp, #8]
d00585b6:	2b04      	cmp	r3, #4
d00585b8:	d1a7      	bne.n	d005850a <loadMeshSB3D+0x206>
d00585ba:	7937      	ldrb	r7, [r6, #4]
d00585bc:	ab02      	add	r3, sp, #8
d00585be:	f896 c005 	ldrb.w	ip, [r6, #5]
d00585c2:	2201      	movs	r2, #1
d00585c4:	79b1      	ldrb	r1, [r6, #6]
d00585c6:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d00585ca:	f896 c007 	ldrb.w	ip, [r6, #7]
d00585ce:	ea47 4701 	orr.w	r7, r7, r1, lsl #16
d00585d2:	a901      	add	r1, sp, #4
d00585d4:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d00585d8:	683f      	ldr	r7, [r7, #0]
d00585da:	68bf      	ldr	r7, [r7, #8]
d00585dc:	47b8      	blx	r7
d00585de:	2800      	cmp	r0, #0
d00585e0:	d193      	bne.n	d005850a <loadMeshSB3D+0x206>
d00585e2:	9a02      	ldr	r2, [sp, #8]
d00585e4:	2a01      	cmp	r2, #1
d00585e6:	d190      	bne.n	d005850a <loadMeshSB3D+0x206>
d00585e8:	7931      	ldrb	r1, [r6, #4]
d00585ea:	ab02      	add	r3, sp, #8
d00585ec:	f896 c005 	ldrb.w	ip, [r6, #5]
d00585f0:	f896 e006 	ldrb.w	lr, [r6, #6]
d00585f4:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d00585f8:	f896 c007 	ldrb.w	ip, [r6, #7]
d00585fc:	f10d 0105 	add.w	r1, sp, #5
d0058600:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d0058604:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0058608:	683f      	ldr	r7, [r7, #0]
d005860a:	68bf      	ldr	r7, [r7, #8]
d005860c:	47b8      	blx	r7
d005860e:	2800      	cmp	r0, #0
d0058610:	f47f af7b 	bne.w	d005850a <loadMeshSB3D+0x206>
d0058614:	9b02      	ldr	r3, [sp, #8]
d0058616:	2b01      	cmp	r3, #1
d0058618:	f47f af77 	bne.w	d005850a <loadMeshSB3D+0x206>
d005861c:	7937      	ldrb	r7, [r6, #4]
d005861e:	ab02      	add	r3, sp, #8
d0058620:	f896 c005 	ldrb.w	ip, [r6, #5]
d0058624:	2201      	movs	r2, #1
d0058626:	79b0      	ldrb	r0, [r6, #6]
d0058628:	f10d 0106 	add.w	r1, sp, #6
d005862c:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d0058630:	f896 c007 	ldrb.w	ip, [r6, #7]
d0058634:	ea47 4700 	orr.w	r7, r7, r0, lsl #16
d0058638:	2000      	movs	r0, #0
d005863a:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d005863e:	683f      	ldr	r7, [r7, #0]
d0058640:	68bf      	ldr	r7, [r7, #8]
d0058642:	47b8      	blx	r7
d0058644:	2800      	cmp	r0, #0
d0058646:	f47f af60 	bne.w	d005850a <loadMeshSB3D+0x206>
d005864a:	9a02      	ldr	r2, [sp, #8]
d005864c:	2a01      	cmp	r2, #1
d005864e:	f47f af5c 	bne.w	d005850a <loadMeshSB3D+0x206>
d0058652:	7931      	ldrb	r1, [r6, #4]
d0058654:	ab02      	add	r3, sp, #8
d0058656:	f896 c005 	ldrb.w	ip, [r6, #5]
d005865a:	f896 e006 	ldrb.w	lr, [r6, #6]
d005865e:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d0058662:	f896 c007 	ldrb.w	ip, [r6, #7]
d0058666:	f10d 0107 	add.w	r1, sp, #7
d005866a:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d005866e:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0058672:	683f      	ldr	r7, [r7, #0]
d0058674:	68bf      	ldr	r7, [r7, #8]
d0058676:	47b8      	blx	r7
d0058678:	2800      	cmp	r0, #0
d005867a:	f47f af46 	bne.w	d005850a <loadMeshSB3D+0x206>
d005867e:	9b02      	ldr	r3, [sp, #8]
d0058680:	2b01      	cmp	r3, #1
d0058682:	f47f af42 	bne.w	d005850a <loadMeshSB3D+0x206>
d0058686:	9907      	ldr	r1, [sp, #28]
d0058688:	9b05      	ldr	r3, [sp, #20]
d005868a:	4299      	cmp	r1, r3
d005868c:	f4bf af3d 	bcs.w	d005850a <loadMeshSB3D+0x206>
d0058690:	f8dd c020 	ldr.w	ip, [sp, #32]
d0058694:	4563      	cmp	r3, ip
d0058696:	f67f af38 	bls.w	d005850a <loadMeshSB3D+0x206>
d005869a:	9f09      	ldr	r7, [sp, #36]	; 0x24
d005869c:	42bb      	cmp	r3, r7
d005869e:	f67f af34 	bls.w	d005850a <loadMeshSB3D+0x206>
d00586a2:	6922      	ldr	r2, [r4, #16]
d00586a4:	ea4f 1e05 	mov.w	lr, r5, lsl #4
d00586a8:	4603      	mov	r3, r0
d00586aa:	9806      	ldr	r0, [sp, #24]
d00586ac:	f842 100e 	str.w	r1, [r2, lr]
d00586b0:	eb02 1205 	add.w	r2, r2, r5, lsl #4
d00586b4:	f89d 1004 	ldrb.w	r1, [sp, #4]
d00586b8:	3501      	adds	r5, #1
d00586ba:	f8c2 c004 	str.w	ip, [r2, #4]
d00586be:	f001 010f 	and.w	r1, r1, #15
d00586c2:	f89d c005 	ldrb.w	ip, [sp, #5]
d00586c6:	6097      	str	r7, [r2, #8]
d00586c8:	42a8      	cmp	r0, r5
d00586ca:	f361 0307 	bfi	r3, r1, #0, #8
d00586ce:	f89d 7006 	ldrb.w	r7, [sp, #6]
d00586d2:	f89d 1007 	ldrb.w	r1, [sp, #7]
d00586d6:	f36c 230f 	bfi	r3, ip, #8, #8
d00586da:	f367 4317 	bfi	r3, r7, #16, #8
d00586de:	f361 631f 	bfi	r3, r1, #24, #8
d00586e2:	60d3      	str	r3, [r2, #12]
d00586e4:	f63f af23 	bhi.w	d005852e <loadMeshSB3D+0x22a>
d00586e8:	2000      	movs	r0, #0
d00586ea:	f000 f87d 	bl	d00587e8 <fclose>
d00586ee:	4620      	mov	r0, r4
d00586f0:	f7fc fe18 	bl	d0055324 <meshComputeBoundsRadius>
d00586f4:	4620      	mov	r0, r4
d00586f6:	ed84 0a06 	vstr	s0, [r4, #24]
d00586fa:	f7f8 ffd9 	bl	d00516b0 <meshSetDefaultMaterial>
d00586fe:	2001      	movs	r0, #1
d0058700:	e6fc      	b.n	d00584fc <loadMeshSB3D+0x1f8>
d0058702:	bf00      	nop

d0058704 <__errno>:
d0058704:	4b01      	ldr	r3, [pc, #4]	; (d005870c <__errno+0x8>)
d0058706:	6818      	ldr	r0, [r3, #0]
d0058708:	4770      	bx	lr
d005870a:	bf00      	nop
d005870c:	d005acbc 	.word	0xd005acbc

d0058710 <_fclose_r>:
d0058710:	b570      	push	{r4, r5, r6, lr}
d0058712:	4605      	mov	r5, r0
d0058714:	460c      	mov	r4, r1
d0058716:	b911      	cbnz	r1, d005871e <_fclose_r+0xe>
d0058718:	2600      	movs	r6, #0
d005871a:	4630      	mov	r0, r6
d005871c:	bd70      	pop	{r4, r5, r6, pc}
d005871e:	b118      	cbz	r0, d0058728 <_fclose_r+0x18>
d0058720:	6983      	ldr	r3, [r0, #24]
d0058722:	b90b      	cbnz	r3, d0058728 <_fclose_r+0x18>
d0058724:	f000 f982 	bl	d0058a2c <__sinit>
d0058728:	4b2c      	ldr	r3, [pc, #176]	; (d00587dc <_fclose_r+0xcc>)
d005872a:	429c      	cmp	r4, r3
d005872c:	d114      	bne.n	d0058758 <_fclose_r+0x48>
d005872e:	686c      	ldr	r4, [r5, #4]
d0058730:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0058732:	07d8      	lsls	r0, r3, #31
d0058734:	d405      	bmi.n	d0058742 <_fclose_r+0x32>
d0058736:	89a3      	ldrh	r3, [r4, #12]
d0058738:	0599      	lsls	r1, r3, #22
d005873a:	d402      	bmi.n	d0058742 <_fclose_r+0x32>
d005873c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d005873e:	f000 fa14 	bl	d0058b6a <__retarget_lock_acquire_recursive>
d0058742:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0058746:	b98b      	cbnz	r3, d005876c <_fclose_r+0x5c>
d0058748:	6e66      	ldr	r6, [r4, #100]	; 0x64
d005874a:	f016 0601 	ands.w	r6, r6, #1
d005874e:	d1e3      	bne.n	d0058718 <_fclose_r+0x8>
d0058750:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0058752:	f000 fa0b 	bl	d0058b6c <__retarget_lock_release_recursive>
d0058756:	e7e0      	b.n	d005871a <_fclose_r+0xa>
d0058758:	4b21      	ldr	r3, [pc, #132]	; (d00587e0 <_fclose_r+0xd0>)
d005875a:	429c      	cmp	r4, r3
d005875c:	d101      	bne.n	d0058762 <_fclose_r+0x52>
d005875e:	68ac      	ldr	r4, [r5, #8]
d0058760:	e7e6      	b.n	d0058730 <_fclose_r+0x20>
d0058762:	4b20      	ldr	r3, [pc, #128]	; (d00587e4 <_fclose_r+0xd4>)
d0058764:	429c      	cmp	r4, r3
d0058766:	bf08      	it	eq
d0058768:	68ec      	ldreq	r4, [r5, #12]
d005876a:	e7e1      	b.n	d0058730 <_fclose_r+0x20>
d005876c:	4621      	mov	r1, r4
d005876e:	4628      	mov	r0, r5
d0058770:	f000 f842 	bl	d00587f8 <__sflush_r>
d0058774:	6b23      	ldr	r3, [r4, #48]	; 0x30
d0058776:	4606      	mov	r6, r0
d0058778:	b133      	cbz	r3, d0058788 <_fclose_r+0x78>
d005877a:	6a21      	ldr	r1, [r4, #32]
d005877c:	4628      	mov	r0, r5
d005877e:	4798      	blx	r3
d0058780:	2800      	cmp	r0, #0
d0058782:	bfb8      	it	lt
d0058784:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
d0058788:	89a3      	ldrh	r3, [r4, #12]
d005878a:	061a      	lsls	r2, r3, #24
d005878c:	d503      	bpl.n	d0058796 <_fclose_r+0x86>
d005878e:	6921      	ldr	r1, [r4, #16]
d0058790:	4628      	mov	r0, r5
d0058792:	f000 fa21 	bl	d0058bd8 <_free_r>
d0058796:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0058798:	b141      	cbz	r1, d00587ac <_fclose_r+0x9c>
d005879a:	f104 0344 	add.w	r3, r4, #68	; 0x44
d005879e:	4299      	cmp	r1, r3
d00587a0:	d002      	beq.n	d00587a8 <_fclose_r+0x98>
d00587a2:	4628      	mov	r0, r5
d00587a4:	f000 fa18 	bl	d0058bd8 <_free_r>
d00587a8:	2300      	movs	r3, #0
d00587aa:	6363      	str	r3, [r4, #52]	; 0x34
d00587ac:	6ca1      	ldr	r1, [r4, #72]	; 0x48
d00587ae:	b121      	cbz	r1, d00587ba <_fclose_r+0xaa>
d00587b0:	4628      	mov	r0, r5
d00587b2:	f000 fa11 	bl	d0058bd8 <_free_r>
d00587b6:	2300      	movs	r3, #0
d00587b8:	64a3      	str	r3, [r4, #72]	; 0x48
d00587ba:	f000 f91f 	bl	d00589fc <__sfp_lock_acquire>
d00587be:	2300      	movs	r3, #0
d00587c0:	81a3      	strh	r3, [r4, #12]
d00587c2:	6e63      	ldr	r3, [r4, #100]	; 0x64
d00587c4:	07db      	lsls	r3, r3, #31
d00587c6:	d402      	bmi.n	d00587ce <_fclose_r+0xbe>
d00587c8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00587ca:	f000 f9cf 	bl	d0058b6c <__retarget_lock_release_recursive>
d00587ce:	6da0      	ldr	r0, [r4, #88]	; 0x58
d00587d0:	f000 f9ca 	bl	d0058b68 <__retarget_lock_close_recursive>
d00587d4:	f000 f918 	bl	d0058a08 <__sfp_lock_release>
d00587d8:	e79f      	b.n	d005871a <_fclose_r+0xa>
d00587da:	bf00      	nop
d00587dc:	d005a448 	.word	0xd005a448
d00587e0:	d005a468 	.word	0xd005a468
d00587e4:	d005a428 	.word	0xd005a428

d00587e8 <fclose>:
d00587e8:	4b02      	ldr	r3, [pc, #8]	; (d00587f4 <fclose+0xc>)
d00587ea:	4601      	mov	r1, r0
d00587ec:	6818      	ldr	r0, [r3, #0]
d00587ee:	f7ff bf8f 	b.w	d0058710 <_fclose_r>
d00587f2:	bf00      	nop
d00587f4:	d005acbc 	.word	0xd005acbc

d00587f8 <__sflush_r>:
d00587f8:	898a      	ldrh	r2, [r1, #12]
d00587fa:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00587fe:	4605      	mov	r5, r0
d0058800:	0710      	lsls	r0, r2, #28
d0058802:	460c      	mov	r4, r1
d0058804:	d458      	bmi.n	d00588b8 <__sflush_r+0xc0>
d0058806:	684b      	ldr	r3, [r1, #4]
d0058808:	2b00      	cmp	r3, #0
d005880a:	dc05      	bgt.n	d0058818 <__sflush_r+0x20>
d005880c:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d005880e:	2b00      	cmp	r3, #0
d0058810:	dc02      	bgt.n	d0058818 <__sflush_r+0x20>
d0058812:	2000      	movs	r0, #0
d0058814:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0058818:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d005881a:	2e00      	cmp	r6, #0
d005881c:	d0f9      	beq.n	d0058812 <__sflush_r+0x1a>
d005881e:	2300      	movs	r3, #0
d0058820:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0058824:	682f      	ldr	r7, [r5, #0]
d0058826:	602b      	str	r3, [r5, #0]
d0058828:	d032      	beq.n	d0058890 <__sflush_r+0x98>
d005882a:	6d60      	ldr	r0, [r4, #84]	; 0x54
d005882c:	89a3      	ldrh	r3, [r4, #12]
d005882e:	075a      	lsls	r2, r3, #29
d0058830:	d505      	bpl.n	d005883e <__sflush_r+0x46>
d0058832:	6863      	ldr	r3, [r4, #4]
d0058834:	1ac0      	subs	r0, r0, r3
d0058836:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0058838:	b10b      	cbz	r3, d005883e <__sflush_r+0x46>
d005883a:	6c23      	ldr	r3, [r4, #64]	; 0x40
d005883c:	1ac0      	subs	r0, r0, r3
d005883e:	2300      	movs	r3, #0
d0058840:	4602      	mov	r2, r0
d0058842:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0058844:	6a21      	ldr	r1, [r4, #32]
d0058846:	4628      	mov	r0, r5
d0058848:	47b0      	blx	r6
d005884a:	1c43      	adds	r3, r0, #1
d005884c:	89a3      	ldrh	r3, [r4, #12]
d005884e:	d106      	bne.n	d005885e <__sflush_r+0x66>
d0058850:	6829      	ldr	r1, [r5, #0]
d0058852:	291d      	cmp	r1, #29
d0058854:	d82c      	bhi.n	d00588b0 <__sflush_r+0xb8>
d0058856:	4a2a      	ldr	r2, [pc, #168]	; (d0058900 <__sflush_r+0x108>)
d0058858:	40ca      	lsrs	r2, r1
d005885a:	07d6      	lsls	r6, r2, #31
d005885c:	d528      	bpl.n	d00588b0 <__sflush_r+0xb8>
d005885e:	2200      	movs	r2, #0
d0058860:	6062      	str	r2, [r4, #4]
d0058862:	04d9      	lsls	r1, r3, #19
d0058864:	6922      	ldr	r2, [r4, #16]
d0058866:	6022      	str	r2, [r4, #0]
d0058868:	d504      	bpl.n	d0058874 <__sflush_r+0x7c>
d005886a:	1c42      	adds	r2, r0, #1
d005886c:	d101      	bne.n	d0058872 <__sflush_r+0x7a>
d005886e:	682b      	ldr	r3, [r5, #0]
d0058870:	b903      	cbnz	r3, d0058874 <__sflush_r+0x7c>
d0058872:	6560      	str	r0, [r4, #84]	; 0x54
d0058874:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0058876:	602f      	str	r7, [r5, #0]
d0058878:	2900      	cmp	r1, #0
d005887a:	d0ca      	beq.n	d0058812 <__sflush_r+0x1a>
d005887c:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0058880:	4299      	cmp	r1, r3
d0058882:	d002      	beq.n	d005888a <__sflush_r+0x92>
d0058884:	4628      	mov	r0, r5
d0058886:	f000 f9a7 	bl	d0058bd8 <_free_r>
d005888a:	2000      	movs	r0, #0
d005888c:	6360      	str	r0, [r4, #52]	; 0x34
d005888e:	e7c1      	b.n	d0058814 <__sflush_r+0x1c>
d0058890:	6a21      	ldr	r1, [r4, #32]
d0058892:	2301      	movs	r3, #1
d0058894:	4628      	mov	r0, r5
d0058896:	47b0      	blx	r6
d0058898:	1c41      	adds	r1, r0, #1
d005889a:	d1c7      	bne.n	d005882c <__sflush_r+0x34>
d005889c:	682b      	ldr	r3, [r5, #0]
d005889e:	2b00      	cmp	r3, #0
d00588a0:	d0c4      	beq.n	d005882c <__sflush_r+0x34>
d00588a2:	2b1d      	cmp	r3, #29
d00588a4:	d001      	beq.n	d00588aa <__sflush_r+0xb2>
d00588a6:	2b16      	cmp	r3, #22
d00588a8:	d101      	bne.n	d00588ae <__sflush_r+0xb6>
d00588aa:	602f      	str	r7, [r5, #0]
d00588ac:	e7b1      	b.n	d0058812 <__sflush_r+0x1a>
d00588ae:	89a3      	ldrh	r3, [r4, #12]
d00588b0:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00588b4:	81a3      	strh	r3, [r4, #12]
d00588b6:	e7ad      	b.n	d0058814 <__sflush_r+0x1c>
d00588b8:	690f      	ldr	r7, [r1, #16]
d00588ba:	2f00      	cmp	r7, #0
d00588bc:	d0a9      	beq.n	d0058812 <__sflush_r+0x1a>
d00588be:	0793      	lsls	r3, r2, #30
d00588c0:	680e      	ldr	r6, [r1, #0]
d00588c2:	bf08      	it	eq
d00588c4:	694b      	ldreq	r3, [r1, #20]
d00588c6:	600f      	str	r7, [r1, #0]
d00588c8:	bf18      	it	ne
d00588ca:	2300      	movne	r3, #0
d00588cc:	eba6 0807 	sub.w	r8, r6, r7
d00588d0:	608b      	str	r3, [r1, #8]
d00588d2:	f1b8 0f00 	cmp.w	r8, #0
d00588d6:	dd9c      	ble.n	d0058812 <__sflush_r+0x1a>
d00588d8:	6a21      	ldr	r1, [r4, #32]
d00588da:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d00588dc:	4643      	mov	r3, r8
d00588de:	463a      	mov	r2, r7
d00588e0:	4628      	mov	r0, r5
d00588e2:	47b0      	blx	r6
d00588e4:	2800      	cmp	r0, #0
d00588e6:	dc06      	bgt.n	d00588f6 <__sflush_r+0xfe>
d00588e8:	89a3      	ldrh	r3, [r4, #12]
d00588ea:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00588ee:	81a3      	strh	r3, [r4, #12]
d00588f0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00588f4:	e78e      	b.n	d0058814 <__sflush_r+0x1c>
d00588f6:	4407      	add	r7, r0
d00588f8:	eba8 0800 	sub.w	r8, r8, r0
d00588fc:	e7e9      	b.n	d00588d2 <__sflush_r+0xda>
d00588fe:	bf00      	nop
d0058900:	20400001 	.word	0x20400001

d0058904 <_fflush_r>:
d0058904:	b538      	push	{r3, r4, r5, lr}
d0058906:	690b      	ldr	r3, [r1, #16]
d0058908:	4605      	mov	r5, r0
d005890a:	460c      	mov	r4, r1
d005890c:	b913      	cbnz	r3, d0058914 <_fflush_r+0x10>
d005890e:	2500      	movs	r5, #0
d0058910:	4628      	mov	r0, r5
d0058912:	bd38      	pop	{r3, r4, r5, pc}
d0058914:	b118      	cbz	r0, d005891e <_fflush_r+0x1a>
d0058916:	6983      	ldr	r3, [r0, #24]
d0058918:	b90b      	cbnz	r3, d005891e <_fflush_r+0x1a>
d005891a:	f000 f887 	bl	d0058a2c <__sinit>
d005891e:	4b14      	ldr	r3, [pc, #80]	; (d0058970 <_fflush_r+0x6c>)
d0058920:	429c      	cmp	r4, r3
d0058922:	d11b      	bne.n	d005895c <_fflush_r+0x58>
d0058924:	686c      	ldr	r4, [r5, #4]
d0058926:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d005892a:	2b00      	cmp	r3, #0
d005892c:	d0ef      	beq.n	d005890e <_fflush_r+0xa>
d005892e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0058930:	07d0      	lsls	r0, r2, #31
d0058932:	d404      	bmi.n	d005893e <_fflush_r+0x3a>
d0058934:	0599      	lsls	r1, r3, #22
d0058936:	d402      	bmi.n	d005893e <_fflush_r+0x3a>
d0058938:	6da0      	ldr	r0, [r4, #88]	; 0x58
d005893a:	f000 f916 	bl	d0058b6a <__retarget_lock_acquire_recursive>
d005893e:	4628      	mov	r0, r5
d0058940:	4621      	mov	r1, r4
d0058942:	f7ff ff59 	bl	d00587f8 <__sflush_r>
d0058946:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0058948:	07da      	lsls	r2, r3, #31
d005894a:	4605      	mov	r5, r0
d005894c:	d4e0      	bmi.n	d0058910 <_fflush_r+0xc>
d005894e:	89a3      	ldrh	r3, [r4, #12]
d0058950:	059b      	lsls	r3, r3, #22
d0058952:	d4dd      	bmi.n	d0058910 <_fflush_r+0xc>
d0058954:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0058956:	f000 f909 	bl	d0058b6c <__retarget_lock_release_recursive>
d005895a:	e7d9      	b.n	d0058910 <_fflush_r+0xc>
d005895c:	4b05      	ldr	r3, [pc, #20]	; (d0058974 <_fflush_r+0x70>)
d005895e:	429c      	cmp	r4, r3
d0058960:	d101      	bne.n	d0058966 <_fflush_r+0x62>
d0058962:	68ac      	ldr	r4, [r5, #8]
d0058964:	e7df      	b.n	d0058926 <_fflush_r+0x22>
d0058966:	4b04      	ldr	r3, [pc, #16]	; (d0058978 <_fflush_r+0x74>)
d0058968:	429c      	cmp	r4, r3
d005896a:	bf08      	it	eq
d005896c:	68ec      	ldreq	r4, [r5, #12]
d005896e:	e7da      	b.n	d0058926 <_fflush_r+0x22>
d0058970:	d005a448 	.word	0xd005a448
d0058974:	d005a468 	.word	0xd005a468
d0058978:	d005a428 	.word	0xd005a428

d005897c <std>:
d005897c:	2300      	movs	r3, #0
d005897e:	b510      	push	{r4, lr}
d0058980:	4604      	mov	r4, r0
d0058982:	e9c0 3300 	strd	r3, r3, [r0]
d0058986:	e9c0 3304 	strd	r3, r3, [r0, #16]
d005898a:	6083      	str	r3, [r0, #8]
d005898c:	8181      	strh	r1, [r0, #12]
d005898e:	6643      	str	r3, [r0, #100]	; 0x64
d0058990:	81c2      	strh	r2, [r0, #14]
d0058992:	6183      	str	r3, [r0, #24]
d0058994:	4619      	mov	r1, r3
d0058996:	2208      	movs	r2, #8
d0058998:	305c      	adds	r0, #92	; 0x5c
d005899a:	f000 f915 	bl	d0058bc8 <memset>
d005899e:	4b05      	ldr	r3, [pc, #20]	; (d00589b4 <std+0x38>)
d00589a0:	6263      	str	r3, [r4, #36]	; 0x24
d00589a2:	4b05      	ldr	r3, [pc, #20]	; (d00589b8 <std+0x3c>)
d00589a4:	62a3      	str	r3, [r4, #40]	; 0x28
d00589a6:	4b05      	ldr	r3, [pc, #20]	; (d00589bc <std+0x40>)
d00589a8:	62e3      	str	r3, [r4, #44]	; 0x2c
d00589aa:	4b05      	ldr	r3, [pc, #20]	; (d00589c0 <std+0x44>)
d00589ac:	6224      	str	r4, [r4, #32]
d00589ae:	6323      	str	r3, [r4, #48]	; 0x30
d00589b0:	bd10      	pop	{r4, pc}
d00589b2:	bf00      	nop
d00589b4:	d0058f09 	.word	0xd0058f09
d00589b8:	d0058f2b 	.word	0xd0058f2b
d00589bc:	d0058f63 	.word	0xd0058f63
d00589c0:	d0058f87 	.word	0xd0058f87

d00589c4 <_cleanup_r>:
d00589c4:	4901      	ldr	r1, [pc, #4]	; (d00589cc <_cleanup_r+0x8>)
d00589c6:	f000 b8af 	b.w	d0058b28 <_fwalk_reent>
d00589ca:	bf00      	nop
d00589cc:	d0058905 	.word	0xd0058905

d00589d0 <__sfmoreglue>:
d00589d0:	b570      	push	{r4, r5, r6, lr}
d00589d2:	1e4a      	subs	r2, r1, #1
d00589d4:	2568      	movs	r5, #104	; 0x68
d00589d6:	4355      	muls	r5, r2
d00589d8:	460e      	mov	r6, r1
d00589da:	f105 0174 	add.w	r1, r5, #116	; 0x74
d00589de:	f000 f94b 	bl	d0058c78 <_malloc_r>
d00589e2:	4604      	mov	r4, r0
d00589e4:	b140      	cbz	r0, d00589f8 <__sfmoreglue+0x28>
d00589e6:	2100      	movs	r1, #0
d00589e8:	e9c0 1600 	strd	r1, r6, [r0]
d00589ec:	300c      	adds	r0, #12
d00589ee:	60a0      	str	r0, [r4, #8]
d00589f0:	f105 0268 	add.w	r2, r5, #104	; 0x68
d00589f4:	f000 f8e8 	bl	d0058bc8 <memset>
d00589f8:	4620      	mov	r0, r4
d00589fa:	bd70      	pop	{r4, r5, r6, pc}

d00589fc <__sfp_lock_acquire>:
d00589fc:	4801      	ldr	r0, [pc, #4]	; (d0058a04 <__sfp_lock_acquire+0x8>)
d00589fe:	f000 b8b4 	b.w	d0058b6a <__retarget_lock_acquire_recursive>
d0058a02:	bf00      	nop
d0058a04:	d00fb0a8 	.word	0xd00fb0a8

d0058a08 <__sfp_lock_release>:
d0058a08:	4801      	ldr	r0, [pc, #4]	; (d0058a10 <__sfp_lock_release+0x8>)
d0058a0a:	f000 b8af 	b.w	d0058b6c <__retarget_lock_release_recursive>
d0058a0e:	bf00      	nop
d0058a10:	d00fb0a8 	.word	0xd00fb0a8

d0058a14 <__sinit_lock_acquire>:
d0058a14:	4801      	ldr	r0, [pc, #4]	; (d0058a1c <__sinit_lock_acquire+0x8>)
d0058a16:	f000 b8a8 	b.w	d0058b6a <__retarget_lock_acquire_recursive>
d0058a1a:	bf00      	nop
d0058a1c:	d00fb0a3 	.word	0xd00fb0a3

d0058a20 <__sinit_lock_release>:
d0058a20:	4801      	ldr	r0, [pc, #4]	; (d0058a28 <__sinit_lock_release+0x8>)
d0058a22:	f000 b8a3 	b.w	d0058b6c <__retarget_lock_release_recursive>
d0058a26:	bf00      	nop
d0058a28:	d00fb0a3 	.word	0xd00fb0a3

d0058a2c <__sinit>:
d0058a2c:	b510      	push	{r4, lr}
d0058a2e:	4604      	mov	r4, r0
d0058a30:	f7ff fff0 	bl	d0058a14 <__sinit_lock_acquire>
d0058a34:	69a3      	ldr	r3, [r4, #24]
d0058a36:	b11b      	cbz	r3, d0058a40 <__sinit+0x14>
d0058a38:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0058a3c:	f7ff bff0 	b.w	d0058a20 <__sinit_lock_release>
d0058a40:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d0058a44:	6523      	str	r3, [r4, #80]	; 0x50
d0058a46:	4b13      	ldr	r3, [pc, #76]	; (d0058a94 <__sinit+0x68>)
d0058a48:	4a13      	ldr	r2, [pc, #76]	; (d0058a98 <__sinit+0x6c>)
d0058a4a:	681b      	ldr	r3, [r3, #0]
d0058a4c:	62a2      	str	r2, [r4, #40]	; 0x28
d0058a4e:	42a3      	cmp	r3, r4
d0058a50:	bf04      	itt	eq
d0058a52:	2301      	moveq	r3, #1
d0058a54:	61a3      	streq	r3, [r4, #24]
d0058a56:	4620      	mov	r0, r4
d0058a58:	f000 f820 	bl	d0058a9c <__sfp>
d0058a5c:	6060      	str	r0, [r4, #4]
d0058a5e:	4620      	mov	r0, r4
d0058a60:	f000 f81c 	bl	d0058a9c <__sfp>
d0058a64:	60a0      	str	r0, [r4, #8]
d0058a66:	4620      	mov	r0, r4
d0058a68:	f000 f818 	bl	d0058a9c <__sfp>
d0058a6c:	2200      	movs	r2, #0
d0058a6e:	60e0      	str	r0, [r4, #12]
d0058a70:	2104      	movs	r1, #4
d0058a72:	6860      	ldr	r0, [r4, #4]
d0058a74:	f7ff ff82 	bl	d005897c <std>
d0058a78:	68a0      	ldr	r0, [r4, #8]
d0058a7a:	2201      	movs	r2, #1
d0058a7c:	2109      	movs	r1, #9
d0058a7e:	f7ff ff7d 	bl	d005897c <std>
d0058a82:	68e0      	ldr	r0, [r4, #12]
d0058a84:	2202      	movs	r2, #2
d0058a86:	2112      	movs	r1, #18
d0058a88:	f7ff ff78 	bl	d005897c <std>
d0058a8c:	2301      	movs	r3, #1
d0058a8e:	61a3      	str	r3, [r4, #24]
d0058a90:	e7d2      	b.n	d0058a38 <__sinit+0xc>
d0058a92:	bf00      	nop
d0058a94:	d005a488 	.word	0xd005a488
d0058a98:	d00589c5 	.word	0xd00589c5

d0058a9c <__sfp>:
d0058a9c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0058a9e:	4607      	mov	r7, r0
d0058aa0:	f7ff ffac 	bl	d00589fc <__sfp_lock_acquire>
d0058aa4:	4b1e      	ldr	r3, [pc, #120]	; (d0058b20 <__sfp+0x84>)
d0058aa6:	681e      	ldr	r6, [r3, #0]
d0058aa8:	69b3      	ldr	r3, [r6, #24]
d0058aaa:	b913      	cbnz	r3, d0058ab2 <__sfp+0x16>
d0058aac:	4630      	mov	r0, r6
d0058aae:	f7ff ffbd 	bl	d0058a2c <__sinit>
d0058ab2:	3648      	adds	r6, #72	; 0x48
d0058ab4:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d0058ab8:	3b01      	subs	r3, #1
d0058aba:	d503      	bpl.n	d0058ac4 <__sfp+0x28>
d0058abc:	6833      	ldr	r3, [r6, #0]
d0058abe:	b30b      	cbz	r3, d0058b04 <__sfp+0x68>
d0058ac0:	6836      	ldr	r6, [r6, #0]
d0058ac2:	e7f7      	b.n	d0058ab4 <__sfp+0x18>
d0058ac4:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d0058ac8:	b9d5      	cbnz	r5, d0058b00 <__sfp+0x64>
d0058aca:	4b16      	ldr	r3, [pc, #88]	; (d0058b24 <__sfp+0x88>)
d0058acc:	60e3      	str	r3, [r4, #12]
d0058ace:	f104 0058 	add.w	r0, r4, #88	; 0x58
d0058ad2:	6665      	str	r5, [r4, #100]	; 0x64
d0058ad4:	f000 f847 	bl	d0058b66 <__retarget_lock_init_recursive>
d0058ad8:	f7ff ff96 	bl	d0058a08 <__sfp_lock_release>
d0058adc:	e9c4 5501 	strd	r5, r5, [r4, #4]
d0058ae0:	e9c4 5504 	strd	r5, r5, [r4, #16]
d0058ae4:	6025      	str	r5, [r4, #0]
d0058ae6:	61a5      	str	r5, [r4, #24]
d0058ae8:	2208      	movs	r2, #8
d0058aea:	4629      	mov	r1, r5
d0058aec:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d0058af0:	f000 f86a 	bl	d0058bc8 <memset>
d0058af4:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d0058af8:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d0058afc:	4620      	mov	r0, r4
d0058afe:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0058b00:	3468      	adds	r4, #104	; 0x68
d0058b02:	e7d9      	b.n	d0058ab8 <__sfp+0x1c>
d0058b04:	2104      	movs	r1, #4
d0058b06:	4638      	mov	r0, r7
d0058b08:	f7ff ff62 	bl	d00589d0 <__sfmoreglue>
d0058b0c:	4604      	mov	r4, r0
d0058b0e:	6030      	str	r0, [r6, #0]
d0058b10:	2800      	cmp	r0, #0
d0058b12:	d1d5      	bne.n	d0058ac0 <__sfp+0x24>
d0058b14:	f7ff ff78 	bl	d0058a08 <__sfp_lock_release>
d0058b18:	230c      	movs	r3, #12
d0058b1a:	603b      	str	r3, [r7, #0]
d0058b1c:	e7ee      	b.n	d0058afc <__sfp+0x60>
d0058b1e:	bf00      	nop
d0058b20:	d005a488 	.word	0xd005a488
d0058b24:	ffff0001 	.word	0xffff0001

d0058b28 <_fwalk_reent>:
d0058b28:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d0058b2c:	4606      	mov	r6, r0
d0058b2e:	4688      	mov	r8, r1
d0058b30:	f100 0448 	add.w	r4, r0, #72	; 0x48
d0058b34:	2700      	movs	r7, #0
d0058b36:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d0058b3a:	f1b9 0901 	subs.w	r9, r9, #1
d0058b3e:	d505      	bpl.n	d0058b4c <_fwalk_reent+0x24>
d0058b40:	6824      	ldr	r4, [r4, #0]
d0058b42:	2c00      	cmp	r4, #0
d0058b44:	d1f7      	bne.n	d0058b36 <_fwalk_reent+0xe>
d0058b46:	4638      	mov	r0, r7
d0058b48:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d0058b4c:	89ab      	ldrh	r3, [r5, #12]
d0058b4e:	2b01      	cmp	r3, #1
d0058b50:	d907      	bls.n	d0058b62 <_fwalk_reent+0x3a>
d0058b52:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d0058b56:	3301      	adds	r3, #1
d0058b58:	d003      	beq.n	d0058b62 <_fwalk_reent+0x3a>
d0058b5a:	4629      	mov	r1, r5
d0058b5c:	4630      	mov	r0, r6
d0058b5e:	47c0      	blx	r8
d0058b60:	4307      	orrs	r7, r0
d0058b62:	3568      	adds	r5, #104	; 0x68
d0058b64:	e7e9      	b.n	d0058b3a <_fwalk_reent+0x12>

d0058b66 <__retarget_lock_init_recursive>:
d0058b66:	4770      	bx	lr

d0058b68 <__retarget_lock_close_recursive>:
d0058b68:	4770      	bx	lr

d0058b6a <__retarget_lock_acquire_recursive>:
d0058b6a:	4770      	bx	lr

d0058b6c <__retarget_lock_release_recursive>:
d0058b6c:	4770      	bx	lr
	...

d0058b70 <malloc>:
d0058b70:	4b02      	ldr	r3, [pc, #8]	; (d0058b7c <malloc+0xc>)
d0058b72:	4601      	mov	r1, r0
d0058b74:	6818      	ldr	r0, [r3, #0]
d0058b76:	f000 b87f 	b.w	d0058c78 <_malloc_r>
d0058b7a:	bf00      	nop
d0058b7c:	d005acbc 	.word	0xd005acbc

d0058b80 <free>:
d0058b80:	4b02      	ldr	r3, [pc, #8]	; (d0058b8c <free+0xc>)
d0058b82:	4601      	mov	r1, r0
d0058b84:	6818      	ldr	r0, [r3, #0]
d0058b86:	f000 b827 	b.w	d0058bd8 <_free_r>
d0058b8a:	bf00      	nop
d0058b8c:	d005acbc 	.word	0xd005acbc

d0058b90 <memcmp>:
d0058b90:	b530      	push	{r4, r5, lr}
d0058b92:	3901      	subs	r1, #1
d0058b94:	2400      	movs	r4, #0
d0058b96:	42a2      	cmp	r2, r4
d0058b98:	d101      	bne.n	d0058b9e <memcmp+0xe>
d0058b9a:	2000      	movs	r0, #0
d0058b9c:	e005      	b.n	d0058baa <memcmp+0x1a>
d0058b9e:	5d03      	ldrb	r3, [r0, r4]
d0058ba0:	3401      	adds	r4, #1
d0058ba2:	5d0d      	ldrb	r5, [r1, r4]
d0058ba4:	42ab      	cmp	r3, r5
d0058ba6:	d0f6      	beq.n	d0058b96 <memcmp+0x6>
d0058ba8:	1b58      	subs	r0, r3, r5
d0058baa:	bd30      	pop	{r4, r5, pc}

d0058bac <memcpy>:
d0058bac:	440a      	add	r2, r1
d0058bae:	4291      	cmp	r1, r2
d0058bb0:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d0058bb4:	d100      	bne.n	d0058bb8 <memcpy+0xc>
d0058bb6:	4770      	bx	lr
d0058bb8:	b510      	push	{r4, lr}
d0058bba:	f811 4b01 	ldrb.w	r4, [r1], #1
d0058bbe:	f803 4f01 	strb.w	r4, [r3, #1]!
d0058bc2:	4291      	cmp	r1, r2
d0058bc4:	d1f9      	bne.n	d0058bba <memcpy+0xe>
d0058bc6:	bd10      	pop	{r4, pc}

d0058bc8 <memset>:
d0058bc8:	4402      	add	r2, r0
d0058bca:	4603      	mov	r3, r0
d0058bcc:	4293      	cmp	r3, r2
d0058bce:	d100      	bne.n	d0058bd2 <memset+0xa>
d0058bd0:	4770      	bx	lr
d0058bd2:	f803 1b01 	strb.w	r1, [r3], #1
d0058bd6:	e7f9      	b.n	d0058bcc <memset+0x4>

d0058bd8 <_free_r>:
d0058bd8:	b537      	push	{r0, r1, r2, r4, r5, lr}
d0058bda:	2900      	cmp	r1, #0
d0058bdc:	d048      	beq.n	d0058c70 <_free_r+0x98>
d0058bde:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0058be2:	9001      	str	r0, [sp, #4]
d0058be4:	2b00      	cmp	r3, #0
d0058be6:	f1a1 0404 	sub.w	r4, r1, #4
d0058bea:	bfb8      	it	lt
d0058bec:	18e4      	addlt	r4, r4, r3
d0058bee:	f000 fa15 	bl	d005901c <__malloc_lock>
d0058bf2:	4a20      	ldr	r2, [pc, #128]	; (d0058c74 <_free_r+0x9c>)
d0058bf4:	9801      	ldr	r0, [sp, #4]
d0058bf6:	6813      	ldr	r3, [r2, #0]
d0058bf8:	4615      	mov	r5, r2
d0058bfa:	b933      	cbnz	r3, d0058c0a <_free_r+0x32>
d0058bfc:	6063      	str	r3, [r4, #4]
d0058bfe:	6014      	str	r4, [r2, #0]
d0058c00:	b003      	add	sp, #12
d0058c02:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d0058c06:	f000 ba0f 	b.w	d0059028 <__malloc_unlock>
d0058c0a:	42a3      	cmp	r3, r4
d0058c0c:	d90b      	bls.n	d0058c26 <_free_r+0x4e>
d0058c0e:	6821      	ldr	r1, [r4, #0]
d0058c10:	1862      	adds	r2, r4, r1
d0058c12:	4293      	cmp	r3, r2
d0058c14:	bf04      	itt	eq
d0058c16:	681a      	ldreq	r2, [r3, #0]
d0058c18:	685b      	ldreq	r3, [r3, #4]
d0058c1a:	6063      	str	r3, [r4, #4]
d0058c1c:	bf04      	itt	eq
d0058c1e:	1852      	addeq	r2, r2, r1
d0058c20:	6022      	streq	r2, [r4, #0]
d0058c22:	602c      	str	r4, [r5, #0]
d0058c24:	e7ec      	b.n	d0058c00 <_free_r+0x28>
d0058c26:	461a      	mov	r2, r3
d0058c28:	685b      	ldr	r3, [r3, #4]
d0058c2a:	b10b      	cbz	r3, d0058c30 <_free_r+0x58>
d0058c2c:	42a3      	cmp	r3, r4
d0058c2e:	d9fa      	bls.n	d0058c26 <_free_r+0x4e>
d0058c30:	6811      	ldr	r1, [r2, #0]
d0058c32:	1855      	adds	r5, r2, r1
d0058c34:	42a5      	cmp	r5, r4
d0058c36:	d10b      	bne.n	d0058c50 <_free_r+0x78>
d0058c38:	6824      	ldr	r4, [r4, #0]
d0058c3a:	4421      	add	r1, r4
d0058c3c:	1854      	adds	r4, r2, r1
d0058c3e:	42a3      	cmp	r3, r4
d0058c40:	6011      	str	r1, [r2, #0]
d0058c42:	d1dd      	bne.n	d0058c00 <_free_r+0x28>
d0058c44:	681c      	ldr	r4, [r3, #0]
d0058c46:	685b      	ldr	r3, [r3, #4]
d0058c48:	6053      	str	r3, [r2, #4]
d0058c4a:	4421      	add	r1, r4
d0058c4c:	6011      	str	r1, [r2, #0]
d0058c4e:	e7d7      	b.n	d0058c00 <_free_r+0x28>
d0058c50:	d902      	bls.n	d0058c58 <_free_r+0x80>
d0058c52:	230c      	movs	r3, #12
d0058c54:	6003      	str	r3, [r0, #0]
d0058c56:	e7d3      	b.n	d0058c00 <_free_r+0x28>
d0058c58:	6825      	ldr	r5, [r4, #0]
d0058c5a:	1961      	adds	r1, r4, r5
d0058c5c:	428b      	cmp	r3, r1
d0058c5e:	bf04      	itt	eq
d0058c60:	6819      	ldreq	r1, [r3, #0]
d0058c62:	685b      	ldreq	r3, [r3, #4]
d0058c64:	6063      	str	r3, [r4, #4]
d0058c66:	bf04      	itt	eq
d0058c68:	1949      	addeq	r1, r1, r5
d0058c6a:	6021      	streq	r1, [r4, #0]
d0058c6c:	6054      	str	r4, [r2, #4]
d0058c6e:	e7c7      	b.n	d0058c00 <_free_r+0x28>
d0058c70:	b003      	add	sp, #12
d0058c72:	bd30      	pop	{r4, r5, pc}
d0058c74:	d00f4fe0 	.word	0xd00f4fe0

d0058c78 <_malloc_r>:
d0058c78:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0058c7a:	1ccd      	adds	r5, r1, #3
d0058c7c:	f025 0503 	bic.w	r5, r5, #3
d0058c80:	3508      	adds	r5, #8
d0058c82:	2d0c      	cmp	r5, #12
d0058c84:	bf38      	it	cc
d0058c86:	250c      	movcc	r5, #12
d0058c88:	2d00      	cmp	r5, #0
d0058c8a:	4606      	mov	r6, r0
d0058c8c:	db01      	blt.n	d0058c92 <_malloc_r+0x1a>
d0058c8e:	42a9      	cmp	r1, r5
d0058c90:	d903      	bls.n	d0058c9a <_malloc_r+0x22>
d0058c92:	230c      	movs	r3, #12
d0058c94:	6033      	str	r3, [r6, #0]
d0058c96:	2000      	movs	r0, #0
d0058c98:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0058c9a:	f000 f9bf 	bl	d005901c <__malloc_lock>
d0058c9e:	4921      	ldr	r1, [pc, #132]	; (d0058d24 <_malloc_r+0xac>)
d0058ca0:	680a      	ldr	r2, [r1, #0]
d0058ca2:	4614      	mov	r4, r2
d0058ca4:	b99c      	cbnz	r4, d0058cce <_malloc_r+0x56>
d0058ca6:	4f20      	ldr	r7, [pc, #128]	; (d0058d28 <_malloc_r+0xb0>)
d0058ca8:	683b      	ldr	r3, [r7, #0]
d0058caa:	b923      	cbnz	r3, d0058cb6 <_malloc_r+0x3e>
d0058cac:	4621      	mov	r1, r4
d0058cae:	4630      	mov	r0, r6
d0058cb0:	f7f7 fa16 	bl	d00500e0 <_sbrk_r>
d0058cb4:	6038      	str	r0, [r7, #0]
d0058cb6:	4629      	mov	r1, r5
d0058cb8:	4630      	mov	r0, r6
d0058cba:	f7f7 fa11 	bl	d00500e0 <_sbrk_r>
d0058cbe:	1c43      	adds	r3, r0, #1
d0058cc0:	d123      	bne.n	d0058d0a <_malloc_r+0x92>
d0058cc2:	230c      	movs	r3, #12
d0058cc4:	6033      	str	r3, [r6, #0]
d0058cc6:	4630      	mov	r0, r6
d0058cc8:	f000 f9ae 	bl	d0059028 <__malloc_unlock>
d0058ccc:	e7e3      	b.n	d0058c96 <_malloc_r+0x1e>
d0058cce:	6823      	ldr	r3, [r4, #0]
d0058cd0:	1b5b      	subs	r3, r3, r5
d0058cd2:	d417      	bmi.n	d0058d04 <_malloc_r+0x8c>
d0058cd4:	2b0b      	cmp	r3, #11
d0058cd6:	d903      	bls.n	d0058ce0 <_malloc_r+0x68>
d0058cd8:	6023      	str	r3, [r4, #0]
d0058cda:	441c      	add	r4, r3
d0058cdc:	6025      	str	r5, [r4, #0]
d0058cde:	e004      	b.n	d0058cea <_malloc_r+0x72>
d0058ce0:	6863      	ldr	r3, [r4, #4]
d0058ce2:	42a2      	cmp	r2, r4
d0058ce4:	bf0c      	ite	eq
d0058ce6:	600b      	streq	r3, [r1, #0]
d0058ce8:	6053      	strne	r3, [r2, #4]
d0058cea:	4630      	mov	r0, r6
d0058cec:	f000 f99c 	bl	d0059028 <__malloc_unlock>
d0058cf0:	f104 000b 	add.w	r0, r4, #11
d0058cf4:	1d23      	adds	r3, r4, #4
d0058cf6:	f020 0007 	bic.w	r0, r0, #7
d0058cfa:	1ac2      	subs	r2, r0, r3
d0058cfc:	d0cc      	beq.n	d0058c98 <_malloc_r+0x20>
d0058cfe:	1a1b      	subs	r3, r3, r0
d0058d00:	50a3      	str	r3, [r4, r2]
d0058d02:	e7c9      	b.n	d0058c98 <_malloc_r+0x20>
d0058d04:	4622      	mov	r2, r4
d0058d06:	6864      	ldr	r4, [r4, #4]
d0058d08:	e7cc      	b.n	d0058ca4 <_malloc_r+0x2c>
d0058d0a:	1cc4      	adds	r4, r0, #3
d0058d0c:	f024 0403 	bic.w	r4, r4, #3
d0058d10:	42a0      	cmp	r0, r4
d0058d12:	d0e3      	beq.n	d0058cdc <_malloc_r+0x64>
d0058d14:	1a21      	subs	r1, r4, r0
d0058d16:	4630      	mov	r0, r6
d0058d18:	f7f7 f9e2 	bl	d00500e0 <_sbrk_r>
d0058d1c:	3001      	adds	r0, #1
d0058d1e:	d1dd      	bne.n	d0058cdc <_malloc_r+0x64>
d0058d20:	e7cf      	b.n	d0058cc2 <_malloc_r+0x4a>
d0058d22:	bf00      	nop
d0058d24:	d00f4fe0 	.word	0xd00f4fe0
d0058d28:	d00f4fe4 	.word	0xd00f4fe4

d0058d2c <setbuf>:
d0058d2c:	2900      	cmp	r1, #0
d0058d2e:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0058d32:	bf0c      	ite	eq
d0058d34:	2202      	moveq	r2, #2
d0058d36:	2200      	movne	r2, #0
d0058d38:	f000 b800 	b.w	d0058d3c <setvbuf>

d0058d3c <setvbuf>:
d0058d3c:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d0058d40:	461d      	mov	r5, r3
d0058d42:	4b5d      	ldr	r3, [pc, #372]	; (d0058eb8 <setvbuf+0x17c>)
d0058d44:	681f      	ldr	r7, [r3, #0]
d0058d46:	4604      	mov	r4, r0
d0058d48:	460e      	mov	r6, r1
d0058d4a:	4690      	mov	r8, r2
d0058d4c:	b127      	cbz	r7, d0058d58 <setvbuf+0x1c>
d0058d4e:	69bb      	ldr	r3, [r7, #24]
d0058d50:	b913      	cbnz	r3, d0058d58 <setvbuf+0x1c>
d0058d52:	4638      	mov	r0, r7
d0058d54:	f7ff fe6a 	bl	d0058a2c <__sinit>
d0058d58:	4b58      	ldr	r3, [pc, #352]	; (d0058ebc <setvbuf+0x180>)
d0058d5a:	429c      	cmp	r4, r3
d0058d5c:	d167      	bne.n	d0058e2e <setvbuf+0xf2>
d0058d5e:	687c      	ldr	r4, [r7, #4]
d0058d60:	f1b8 0f02 	cmp.w	r8, #2
d0058d64:	d006      	beq.n	d0058d74 <setvbuf+0x38>
d0058d66:	f1b8 0f01 	cmp.w	r8, #1
d0058d6a:	f200 809f 	bhi.w	d0058eac <setvbuf+0x170>
d0058d6e:	2d00      	cmp	r5, #0
d0058d70:	f2c0 809c 	blt.w	d0058eac <setvbuf+0x170>
d0058d74:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0058d76:	07db      	lsls	r3, r3, #31
d0058d78:	d405      	bmi.n	d0058d86 <setvbuf+0x4a>
d0058d7a:	89a3      	ldrh	r3, [r4, #12]
d0058d7c:	0598      	lsls	r0, r3, #22
d0058d7e:	d402      	bmi.n	d0058d86 <setvbuf+0x4a>
d0058d80:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0058d82:	f7ff fef2 	bl	d0058b6a <__retarget_lock_acquire_recursive>
d0058d86:	4621      	mov	r1, r4
d0058d88:	4638      	mov	r0, r7
d0058d8a:	f7ff fdbb 	bl	d0058904 <_fflush_r>
d0058d8e:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0058d90:	b141      	cbz	r1, d0058da4 <setvbuf+0x68>
d0058d92:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0058d96:	4299      	cmp	r1, r3
d0058d98:	d002      	beq.n	d0058da0 <setvbuf+0x64>
d0058d9a:	4638      	mov	r0, r7
d0058d9c:	f7ff ff1c 	bl	d0058bd8 <_free_r>
d0058da0:	2300      	movs	r3, #0
d0058da2:	6363      	str	r3, [r4, #52]	; 0x34
d0058da4:	2300      	movs	r3, #0
d0058da6:	61a3      	str	r3, [r4, #24]
d0058da8:	6063      	str	r3, [r4, #4]
d0058daa:	89a3      	ldrh	r3, [r4, #12]
d0058dac:	0619      	lsls	r1, r3, #24
d0058dae:	d503      	bpl.n	d0058db8 <setvbuf+0x7c>
d0058db0:	6921      	ldr	r1, [r4, #16]
d0058db2:	4638      	mov	r0, r7
d0058db4:	f7ff ff10 	bl	d0058bd8 <_free_r>
d0058db8:	89a3      	ldrh	r3, [r4, #12]
d0058dba:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d0058dbe:	f023 0303 	bic.w	r3, r3, #3
d0058dc2:	f1b8 0f02 	cmp.w	r8, #2
d0058dc6:	81a3      	strh	r3, [r4, #12]
d0058dc8:	d06c      	beq.n	d0058ea4 <setvbuf+0x168>
d0058dca:	ab01      	add	r3, sp, #4
d0058dcc:	466a      	mov	r2, sp
d0058dce:	4621      	mov	r1, r4
d0058dd0:	4638      	mov	r0, r7
d0058dd2:	f000 f8ff 	bl	d0058fd4 <__swhatbuf_r>
d0058dd6:	89a3      	ldrh	r3, [r4, #12]
d0058dd8:	4318      	orrs	r0, r3
d0058dda:	81a0      	strh	r0, [r4, #12]
d0058ddc:	2d00      	cmp	r5, #0
d0058dde:	d130      	bne.n	d0058e42 <setvbuf+0x106>
d0058de0:	9d00      	ldr	r5, [sp, #0]
d0058de2:	4628      	mov	r0, r5
d0058de4:	f7ff fec4 	bl	d0058b70 <malloc>
d0058de8:	4606      	mov	r6, r0
d0058dea:	2800      	cmp	r0, #0
d0058dec:	d155      	bne.n	d0058e9a <setvbuf+0x15e>
d0058dee:	f8dd 9000 	ldr.w	r9, [sp]
d0058df2:	45a9      	cmp	r9, r5
d0058df4:	d14a      	bne.n	d0058e8c <setvbuf+0x150>
d0058df6:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0058dfa:	2200      	movs	r2, #0
d0058dfc:	60a2      	str	r2, [r4, #8]
d0058dfe:	f104 0247 	add.w	r2, r4, #71	; 0x47
d0058e02:	6022      	str	r2, [r4, #0]
d0058e04:	6122      	str	r2, [r4, #16]
d0058e06:	2201      	movs	r2, #1
d0058e08:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0058e0c:	6162      	str	r2, [r4, #20]
d0058e0e:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0058e10:	f043 0302 	orr.w	r3, r3, #2
d0058e14:	07d2      	lsls	r2, r2, #31
d0058e16:	81a3      	strh	r3, [r4, #12]
d0058e18:	d405      	bmi.n	d0058e26 <setvbuf+0xea>
d0058e1a:	f413 7f00 	tst.w	r3, #512	; 0x200
d0058e1e:	d102      	bne.n	d0058e26 <setvbuf+0xea>
d0058e20:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0058e22:	f7ff fea3 	bl	d0058b6c <__retarget_lock_release_recursive>
d0058e26:	4628      	mov	r0, r5
d0058e28:	b003      	add	sp, #12
d0058e2a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d0058e2e:	4b24      	ldr	r3, [pc, #144]	; (d0058ec0 <setvbuf+0x184>)
d0058e30:	429c      	cmp	r4, r3
d0058e32:	d101      	bne.n	d0058e38 <setvbuf+0xfc>
d0058e34:	68bc      	ldr	r4, [r7, #8]
d0058e36:	e793      	b.n	d0058d60 <setvbuf+0x24>
d0058e38:	4b22      	ldr	r3, [pc, #136]	; (d0058ec4 <setvbuf+0x188>)
d0058e3a:	429c      	cmp	r4, r3
d0058e3c:	bf08      	it	eq
d0058e3e:	68fc      	ldreq	r4, [r7, #12]
d0058e40:	e78e      	b.n	d0058d60 <setvbuf+0x24>
d0058e42:	2e00      	cmp	r6, #0
d0058e44:	d0cd      	beq.n	d0058de2 <setvbuf+0xa6>
d0058e46:	69bb      	ldr	r3, [r7, #24]
d0058e48:	b913      	cbnz	r3, d0058e50 <setvbuf+0x114>
d0058e4a:	4638      	mov	r0, r7
d0058e4c:	f7ff fdee 	bl	d0058a2c <__sinit>
d0058e50:	f1b8 0f01 	cmp.w	r8, #1
d0058e54:	bf08      	it	eq
d0058e56:	89a3      	ldrheq	r3, [r4, #12]
d0058e58:	6026      	str	r6, [r4, #0]
d0058e5a:	bf04      	itt	eq
d0058e5c:	f043 0301 	orreq.w	r3, r3, #1
d0058e60:	81a3      	strheq	r3, [r4, #12]
d0058e62:	89a2      	ldrh	r2, [r4, #12]
d0058e64:	f012 0308 	ands.w	r3, r2, #8
d0058e68:	e9c4 6504 	strd	r6, r5, [r4, #16]
d0058e6c:	d01c      	beq.n	d0058ea8 <setvbuf+0x16c>
d0058e6e:	07d3      	lsls	r3, r2, #31
d0058e70:	bf41      	itttt	mi
d0058e72:	2300      	movmi	r3, #0
d0058e74:	426d      	negmi	r5, r5
d0058e76:	60a3      	strmi	r3, [r4, #8]
d0058e78:	61a5      	strmi	r5, [r4, #24]
d0058e7a:	bf58      	it	pl
d0058e7c:	60a5      	strpl	r5, [r4, #8]
d0058e7e:	6e65      	ldr	r5, [r4, #100]	; 0x64
d0058e80:	f015 0501 	ands.w	r5, r5, #1
d0058e84:	d115      	bne.n	d0058eb2 <setvbuf+0x176>
d0058e86:	f412 7f00 	tst.w	r2, #512	; 0x200
d0058e8a:	e7c8      	b.n	d0058e1e <setvbuf+0xe2>
d0058e8c:	4648      	mov	r0, r9
d0058e8e:	f7ff fe6f 	bl	d0058b70 <malloc>
d0058e92:	4606      	mov	r6, r0
d0058e94:	2800      	cmp	r0, #0
d0058e96:	d0ae      	beq.n	d0058df6 <setvbuf+0xba>
d0058e98:	464d      	mov	r5, r9
d0058e9a:	89a3      	ldrh	r3, [r4, #12]
d0058e9c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d0058ea0:	81a3      	strh	r3, [r4, #12]
d0058ea2:	e7d0      	b.n	d0058e46 <setvbuf+0x10a>
d0058ea4:	2500      	movs	r5, #0
d0058ea6:	e7a8      	b.n	d0058dfa <setvbuf+0xbe>
d0058ea8:	60a3      	str	r3, [r4, #8]
d0058eaa:	e7e8      	b.n	d0058e7e <setvbuf+0x142>
d0058eac:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0058eb0:	e7b9      	b.n	d0058e26 <setvbuf+0xea>
d0058eb2:	2500      	movs	r5, #0
d0058eb4:	e7b7      	b.n	d0058e26 <setvbuf+0xea>
d0058eb6:	bf00      	nop
d0058eb8:	d005acbc 	.word	0xd005acbc
d0058ebc:	d005a448 	.word	0xd005a448
d0058ec0:	d005a468 	.word	0xd005a468
d0058ec4:	d005a428 	.word	0xd005a428

d0058ec8 <siprintf>:
d0058ec8:	b40e      	push	{r1, r2, r3}
d0058eca:	b500      	push	{lr}
d0058ecc:	b09c      	sub	sp, #112	; 0x70
d0058ece:	ab1d      	add	r3, sp, #116	; 0x74
d0058ed0:	9002      	str	r0, [sp, #8]
d0058ed2:	9006      	str	r0, [sp, #24]
d0058ed4:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d0058ed8:	4809      	ldr	r0, [pc, #36]	; (d0058f00 <siprintf+0x38>)
d0058eda:	9107      	str	r1, [sp, #28]
d0058edc:	9104      	str	r1, [sp, #16]
d0058ede:	4909      	ldr	r1, [pc, #36]	; (d0058f04 <siprintf+0x3c>)
d0058ee0:	f853 2b04 	ldr.w	r2, [r3], #4
d0058ee4:	9105      	str	r1, [sp, #20]
d0058ee6:	6800      	ldr	r0, [r0, #0]
d0058ee8:	9301      	str	r3, [sp, #4]
d0058eea:	a902      	add	r1, sp, #8
d0058eec:	f000 f924 	bl	d0059138 <_svfiprintf_r>
d0058ef0:	9b02      	ldr	r3, [sp, #8]
d0058ef2:	2200      	movs	r2, #0
d0058ef4:	701a      	strb	r2, [r3, #0]
d0058ef6:	b01c      	add	sp, #112	; 0x70
d0058ef8:	f85d eb04 	ldr.w	lr, [sp], #4
d0058efc:	b003      	add	sp, #12
d0058efe:	4770      	bx	lr
d0058f00:	d005acbc 	.word	0xd005acbc
d0058f04:	ffff0208 	.word	0xffff0208

d0058f08 <__sread>:
d0058f08:	b510      	push	{r4, lr}
d0058f0a:	460c      	mov	r4, r1
d0058f0c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0058f10:	f000 fba6 	bl	d0059660 <_read_r>
d0058f14:	2800      	cmp	r0, #0
d0058f16:	bfab      	itete	ge
d0058f18:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d0058f1a:	89a3      	ldrhlt	r3, [r4, #12]
d0058f1c:	181b      	addge	r3, r3, r0
d0058f1e:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d0058f22:	bfac      	ite	ge
d0058f24:	6563      	strge	r3, [r4, #84]	; 0x54
d0058f26:	81a3      	strhlt	r3, [r4, #12]
d0058f28:	bd10      	pop	{r4, pc}

d0058f2a <__swrite>:
d0058f2a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0058f2e:	461f      	mov	r7, r3
d0058f30:	898b      	ldrh	r3, [r1, #12]
d0058f32:	05db      	lsls	r3, r3, #23
d0058f34:	4605      	mov	r5, r0
d0058f36:	460c      	mov	r4, r1
d0058f38:	4616      	mov	r6, r2
d0058f3a:	d505      	bpl.n	d0058f48 <__swrite+0x1e>
d0058f3c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0058f40:	2302      	movs	r3, #2
d0058f42:	2200      	movs	r2, #0
d0058f44:	f000 f834 	bl	d0058fb0 <_lseek_r>
d0058f48:	89a3      	ldrh	r3, [r4, #12]
d0058f4a:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d0058f4e:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d0058f52:	81a3      	strh	r3, [r4, #12]
d0058f54:	4632      	mov	r2, r6
d0058f56:	463b      	mov	r3, r7
d0058f58:	4628      	mov	r0, r5
d0058f5a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d0058f5e:	f7f7 b879 	b.w	d0050054 <_write_r>

d0058f62 <__sseek>:
d0058f62:	b510      	push	{r4, lr}
d0058f64:	460c      	mov	r4, r1
d0058f66:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0058f6a:	f000 f821 	bl	d0058fb0 <_lseek_r>
d0058f6e:	1c43      	adds	r3, r0, #1
d0058f70:	89a3      	ldrh	r3, [r4, #12]
d0058f72:	bf15      	itete	ne
d0058f74:	6560      	strne	r0, [r4, #84]	; 0x54
d0058f76:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d0058f7a:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d0058f7e:	81a3      	strheq	r3, [r4, #12]
d0058f80:	bf18      	it	ne
d0058f82:	81a3      	strhne	r3, [r4, #12]
d0058f84:	bd10      	pop	{r4, pc}

d0058f86 <__sclose>:
d0058f86:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0058f8a:	f000 b801 	b.w	d0058f90 <_close_r>
	...

d0058f90 <_close_r>:
d0058f90:	b538      	push	{r3, r4, r5, lr}
d0058f92:	4d06      	ldr	r5, [pc, #24]	; (d0058fac <_close_r+0x1c>)
d0058f94:	2300      	movs	r3, #0
d0058f96:	4604      	mov	r4, r0
d0058f98:	4608      	mov	r0, r1
d0058f9a:	602b      	str	r3, [r5, #0]
d0058f9c:	f7f7 f894 	bl	d00500c8 <_close>
d0058fa0:	1c43      	adds	r3, r0, #1
d0058fa2:	d102      	bne.n	d0058faa <_close_r+0x1a>
d0058fa4:	682b      	ldr	r3, [r5, #0]
d0058fa6:	b103      	cbz	r3, d0058faa <_close_r+0x1a>
d0058fa8:	6023      	str	r3, [r4, #0]
d0058faa:	bd38      	pop	{r3, r4, r5, pc}
d0058fac:	d00fb0ac 	.word	0xd00fb0ac

d0058fb0 <_lseek_r>:
d0058fb0:	b538      	push	{r3, r4, r5, lr}
d0058fb2:	4d07      	ldr	r5, [pc, #28]	; (d0058fd0 <_lseek_r+0x20>)
d0058fb4:	4604      	mov	r4, r0
d0058fb6:	4608      	mov	r0, r1
d0058fb8:	4611      	mov	r1, r2
d0058fba:	2200      	movs	r2, #0
d0058fbc:	602a      	str	r2, [r5, #0]
d0058fbe:	461a      	mov	r2, r3
d0058fc0:	f7f7 f88c 	bl	d00500dc <_lseek>
d0058fc4:	1c43      	adds	r3, r0, #1
d0058fc6:	d102      	bne.n	d0058fce <_lseek_r+0x1e>
d0058fc8:	682b      	ldr	r3, [r5, #0]
d0058fca:	b103      	cbz	r3, d0058fce <_lseek_r+0x1e>
d0058fcc:	6023      	str	r3, [r4, #0]
d0058fce:	bd38      	pop	{r3, r4, r5, pc}
d0058fd0:	d00fb0ac 	.word	0xd00fb0ac

d0058fd4 <__swhatbuf_r>:
d0058fd4:	b570      	push	{r4, r5, r6, lr}
d0058fd6:	460e      	mov	r6, r1
d0058fd8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d0058fdc:	2900      	cmp	r1, #0
d0058fde:	b096      	sub	sp, #88	; 0x58
d0058fe0:	4614      	mov	r4, r2
d0058fe2:	461d      	mov	r5, r3
d0058fe4:	da07      	bge.n	d0058ff6 <__swhatbuf_r+0x22>
d0058fe6:	2300      	movs	r3, #0
d0058fe8:	602b      	str	r3, [r5, #0]
d0058fea:	89b3      	ldrh	r3, [r6, #12]
d0058fec:	061a      	lsls	r2, r3, #24
d0058fee:	d410      	bmi.n	d0059012 <__swhatbuf_r+0x3e>
d0058ff0:	f44f 6380 	mov.w	r3, #1024	; 0x400
d0058ff4:	e00e      	b.n	d0059014 <__swhatbuf_r+0x40>
d0058ff6:	466a      	mov	r2, sp
d0058ff8:	f000 fb44 	bl	d0059684 <_fstat_r>
d0058ffc:	2800      	cmp	r0, #0
d0058ffe:	dbf2      	blt.n	d0058fe6 <__swhatbuf_r+0x12>
d0059000:	9a01      	ldr	r2, [sp, #4]
d0059002:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d0059006:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d005900a:	425a      	negs	r2, r3
d005900c:	415a      	adcs	r2, r3
d005900e:	602a      	str	r2, [r5, #0]
d0059010:	e7ee      	b.n	d0058ff0 <__swhatbuf_r+0x1c>
d0059012:	2340      	movs	r3, #64	; 0x40
d0059014:	2000      	movs	r0, #0
d0059016:	6023      	str	r3, [r4, #0]
d0059018:	b016      	add	sp, #88	; 0x58
d005901a:	bd70      	pop	{r4, r5, r6, pc}

d005901c <__malloc_lock>:
d005901c:	4801      	ldr	r0, [pc, #4]	; (d0059024 <__malloc_lock+0x8>)
d005901e:	f7ff bda4 	b.w	d0058b6a <__retarget_lock_acquire_recursive>
d0059022:	bf00      	nop
d0059024:	d00fb0a4 	.word	0xd00fb0a4

d0059028 <__malloc_unlock>:
d0059028:	4801      	ldr	r0, [pc, #4]	; (d0059030 <__malloc_unlock+0x8>)
d005902a:	f7ff bd9f 	b.w	d0058b6c <__retarget_lock_release_recursive>
d005902e:	bf00      	nop
d0059030:	d00fb0a4 	.word	0xd00fb0a4

d0059034 <_realloc_r>:
d0059034:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d0059036:	4607      	mov	r7, r0
d0059038:	4614      	mov	r4, r2
d005903a:	460e      	mov	r6, r1
d005903c:	b921      	cbnz	r1, d0059048 <_realloc_r+0x14>
d005903e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0059042:	4611      	mov	r1, r2
d0059044:	f7ff be18 	b.w	d0058c78 <_malloc_r>
d0059048:	b922      	cbnz	r2, d0059054 <_realloc_r+0x20>
d005904a:	f7ff fdc5 	bl	d0058bd8 <_free_r>
d005904e:	4625      	mov	r5, r4
d0059050:	4628      	mov	r0, r5
d0059052:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d0059054:	f000 fb96 	bl	d0059784 <_malloc_usable_size_r>
d0059058:	42a0      	cmp	r0, r4
d005905a:	d20f      	bcs.n	d005907c <_realloc_r+0x48>
d005905c:	4621      	mov	r1, r4
d005905e:	4638      	mov	r0, r7
d0059060:	f7ff fe0a 	bl	d0058c78 <_malloc_r>
d0059064:	4605      	mov	r5, r0
d0059066:	2800      	cmp	r0, #0
d0059068:	d0f2      	beq.n	d0059050 <_realloc_r+0x1c>
d005906a:	4631      	mov	r1, r6
d005906c:	4622      	mov	r2, r4
d005906e:	f7ff fd9d 	bl	d0058bac <memcpy>
d0059072:	4631      	mov	r1, r6
d0059074:	4638      	mov	r0, r7
d0059076:	f7ff fdaf 	bl	d0058bd8 <_free_r>
d005907a:	e7e9      	b.n	d0059050 <_realloc_r+0x1c>
d005907c:	4635      	mov	r5, r6
d005907e:	e7e7      	b.n	d0059050 <_realloc_r+0x1c>

d0059080 <__ssputs_r>:
d0059080:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d0059084:	688e      	ldr	r6, [r1, #8]
d0059086:	429e      	cmp	r6, r3
d0059088:	4682      	mov	sl, r0
d005908a:	460c      	mov	r4, r1
d005908c:	4690      	mov	r8, r2
d005908e:	461f      	mov	r7, r3
d0059090:	d838      	bhi.n	d0059104 <__ssputs_r+0x84>
d0059092:	898a      	ldrh	r2, [r1, #12]
d0059094:	f412 6f90 	tst.w	r2, #1152	; 0x480
d0059098:	d032      	beq.n	d0059100 <__ssputs_r+0x80>
d005909a:	6825      	ldr	r5, [r4, #0]
d005909c:	6909      	ldr	r1, [r1, #16]
d005909e:	eba5 0901 	sub.w	r9, r5, r1
d00590a2:	6965      	ldr	r5, [r4, #20]
d00590a4:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d00590a8:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d00590ac:	3301      	adds	r3, #1
d00590ae:	444b      	add	r3, r9
d00590b0:	106d      	asrs	r5, r5, #1
d00590b2:	429d      	cmp	r5, r3
d00590b4:	bf38      	it	cc
d00590b6:	461d      	movcc	r5, r3
d00590b8:	0553      	lsls	r3, r2, #21
d00590ba:	d531      	bpl.n	d0059120 <__ssputs_r+0xa0>
d00590bc:	4629      	mov	r1, r5
d00590be:	f7ff fddb 	bl	d0058c78 <_malloc_r>
d00590c2:	4606      	mov	r6, r0
d00590c4:	b950      	cbnz	r0, d00590dc <__ssputs_r+0x5c>
d00590c6:	230c      	movs	r3, #12
d00590c8:	f8ca 3000 	str.w	r3, [sl]
d00590cc:	89a3      	ldrh	r3, [r4, #12]
d00590ce:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d00590d2:	81a3      	strh	r3, [r4, #12]
d00590d4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00590d8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00590dc:	6921      	ldr	r1, [r4, #16]
d00590de:	464a      	mov	r2, r9
d00590e0:	f7ff fd64 	bl	d0058bac <memcpy>
d00590e4:	89a3      	ldrh	r3, [r4, #12]
d00590e6:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d00590ea:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d00590ee:	81a3      	strh	r3, [r4, #12]
d00590f0:	6126      	str	r6, [r4, #16]
d00590f2:	6165      	str	r5, [r4, #20]
d00590f4:	444e      	add	r6, r9
d00590f6:	eba5 0509 	sub.w	r5, r5, r9
d00590fa:	6026      	str	r6, [r4, #0]
d00590fc:	60a5      	str	r5, [r4, #8]
d00590fe:	463e      	mov	r6, r7
d0059100:	42be      	cmp	r6, r7
d0059102:	d900      	bls.n	d0059106 <__ssputs_r+0x86>
d0059104:	463e      	mov	r6, r7
d0059106:	4632      	mov	r2, r6
d0059108:	6820      	ldr	r0, [r4, #0]
d005910a:	4641      	mov	r1, r8
d005910c:	f000 fb20 	bl	d0059750 <memmove>
d0059110:	68a3      	ldr	r3, [r4, #8]
d0059112:	6822      	ldr	r2, [r4, #0]
d0059114:	1b9b      	subs	r3, r3, r6
d0059116:	4432      	add	r2, r6
d0059118:	60a3      	str	r3, [r4, #8]
d005911a:	6022      	str	r2, [r4, #0]
d005911c:	2000      	movs	r0, #0
d005911e:	e7db      	b.n	d00590d8 <__ssputs_r+0x58>
d0059120:	462a      	mov	r2, r5
d0059122:	f7ff ff87 	bl	d0059034 <_realloc_r>
d0059126:	4606      	mov	r6, r0
d0059128:	2800      	cmp	r0, #0
d005912a:	d1e1      	bne.n	d00590f0 <__ssputs_r+0x70>
d005912c:	6921      	ldr	r1, [r4, #16]
d005912e:	4650      	mov	r0, sl
d0059130:	f7ff fd52 	bl	d0058bd8 <_free_r>
d0059134:	e7c7      	b.n	d00590c6 <__ssputs_r+0x46>
	...

d0059138 <_svfiprintf_r>:
d0059138:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d005913c:	4698      	mov	r8, r3
d005913e:	898b      	ldrh	r3, [r1, #12]
d0059140:	061b      	lsls	r3, r3, #24
d0059142:	b09d      	sub	sp, #116	; 0x74
d0059144:	4607      	mov	r7, r0
d0059146:	460d      	mov	r5, r1
d0059148:	4614      	mov	r4, r2
d005914a:	d50e      	bpl.n	d005916a <_svfiprintf_r+0x32>
d005914c:	690b      	ldr	r3, [r1, #16]
d005914e:	b963      	cbnz	r3, d005916a <_svfiprintf_r+0x32>
d0059150:	2140      	movs	r1, #64	; 0x40
d0059152:	f7ff fd91 	bl	d0058c78 <_malloc_r>
d0059156:	6028      	str	r0, [r5, #0]
d0059158:	6128      	str	r0, [r5, #16]
d005915a:	b920      	cbnz	r0, d0059166 <_svfiprintf_r+0x2e>
d005915c:	230c      	movs	r3, #12
d005915e:	603b      	str	r3, [r7, #0]
d0059160:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0059164:	e0d1      	b.n	d005930a <_svfiprintf_r+0x1d2>
d0059166:	2340      	movs	r3, #64	; 0x40
d0059168:	616b      	str	r3, [r5, #20]
d005916a:	2300      	movs	r3, #0
d005916c:	9309      	str	r3, [sp, #36]	; 0x24
d005916e:	2320      	movs	r3, #32
d0059170:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d0059174:	f8cd 800c 	str.w	r8, [sp, #12]
d0059178:	2330      	movs	r3, #48	; 0x30
d005917a:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d0059324 <_svfiprintf_r+0x1ec>
d005917e:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d0059182:	f04f 0901 	mov.w	r9, #1
d0059186:	4623      	mov	r3, r4
d0059188:	469a      	mov	sl, r3
d005918a:	f813 2b01 	ldrb.w	r2, [r3], #1
d005918e:	b10a      	cbz	r2, d0059194 <_svfiprintf_r+0x5c>
d0059190:	2a25      	cmp	r2, #37	; 0x25
d0059192:	d1f9      	bne.n	d0059188 <_svfiprintf_r+0x50>
d0059194:	ebba 0b04 	subs.w	fp, sl, r4
d0059198:	d00b      	beq.n	d00591b2 <_svfiprintf_r+0x7a>
d005919a:	465b      	mov	r3, fp
d005919c:	4622      	mov	r2, r4
d005919e:	4629      	mov	r1, r5
d00591a0:	4638      	mov	r0, r7
d00591a2:	f7ff ff6d 	bl	d0059080 <__ssputs_r>
d00591a6:	3001      	adds	r0, #1
d00591a8:	f000 80aa 	beq.w	d0059300 <_svfiprintf_r+0x1c8>
d00591ac:	9a09      	ldr	r2, [sp, #36]	; 0x24
d00591ae:	445a      	add	r2, fp
d00591b0:	9209      	str	r2, [sp, #36]	; 0x24
d00591b2:	f89a 3000 	ldrb.w	r3, [sl]
d00591b6:	2b00      	cmp	r3, #0
d00591b8:	f000 80a2 	beq.w	d0059300 <_svfiprintf_r+0x1c8>
d00591bc:	2300      	movs	r3, #0
d00591be:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d00591c2:	e9cd 2305 	strd	r2, r3, [sp, #20]
d00591c6:	f10a 0a01 	add.w	sl, sl, #1
d00591ca:	9304      	str	r3, [sp, #16]
d00591cc:	9307      	str	r3, [sp, #28]
d00591ce:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d00591d2:	931a      	str	r3, [sp, #104]	; 0x68
d00591d4:	4654      	mov	r4, sl
d00591d6:	2205      	movs	r2, #5
d00591d8:	f814 1b01 	ldrb.w	r1, [r4], #1
d00591dc:	4851      	ldr	r0, [pc, #324]	; (d0059324 <_svfiprintf_r+0x1ec>)
d00591de:	f000 fa67 	bl	d00596b0 <memchr>
d00591e2:	9a04      	ldr	r2, [sp, #16]
d00591e4:	b9d8      	cbnz	r0, d005921e <_svfiprintf_r+0xe6>
d00591e6:	06d0      	lsls	r0, r2, #27
d00591e8:	bf44      	itt	mi
d00591ea:	2320      	movmi	r3, #32
d00591ec:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d00591f0:	0711      	lsls	r1, r2, #28
d00591f2:	bf44      	itt	mi
d00591f4:	232b      	movmi	r3, #43	; 0x2b
d00591f6:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d00591fa:	f89a 3000 	ldrb.w	r3, [sl]
d00591fe:	2b2a      	cmp	r3, #42	; 0x2a
d0059200:	d015      	beq.n	d005922e <_svfiprintf_r+0xf6>
d0059202:	9a07      	ldr	r2, [sp, #28]
d0059204:	4654      	mov	r4, sl
d0059206:	2000      	movs	r0, #0
d0059208:	f04f 0c0a 	mov.w	ip, #10
d005920c:	4621      	mov	r1, r4
d005920e:	f811 3b01 	ldrb.w	r3, [r1], #1
d0059212:	3b30      	subs	r3, #48	; 0x30
d0059214:	2b09      	cmp	r3, #9
d0059216:	d94e      	bls.n	d00592b6 <_svfiprintf_r+0x17e>
d0059218:	b1b0      	cbz	r0, d0059248 <_svfiprintf_r+0x110>
d005921a:	9207      	str	r2, [sp, #28]
d005921c:	e014      	b.n	d0059248 <_svfiprintf_r+0x110>
d005921e:	eba0 0308 	sub.w	r3, r0, r8
d0059222:	fa09 f303 	lsl.w	r3, r9, r3
d0059226:	4313      	orrs	r3, r2
d0059228:	9304      	str	r3, [sp, #16]
d005922a:	46a2      	mov	sl, r4
d005922c:	e7d2      	b.n	d00591d4 <_svfiprintf_r+0x9c>
d005922e:	9b03      	ldr	r3, [sp, #12]
d0059230:	1d19      	adds	r1, r3, #4
d0059232:	681b      	ldr	r3, [r3, #0]
d0059234:	9103      	str	r1, [sp, #12]
d0059236:	2b00      	cmp	r3, #0
d0059238:	bfbb      	ittet	lt
d005923a:	425b      	neglt	r3, r3
d005923c:	f042 0202 	orrlt.w	r2, r2, #2
d0059240:	9307      	strge	r3, [sp, #28]
d0059242:	9307      	strlt	r3, [sp, #28]
d0059244:	bfb8      	it	lt
d0059246:	9204      	strlt	r2, [sp, #16]
d0059248:	7823      	ldrb	r3, [r4, #0]
d005924a:	2b2e      	cmp	r3, #46	; 0x2e
d005924c:	d10c      	bne.n	d0059268 <_svfiprintf_r+0x130>
d005924e:	7863      	ldrb	r3, [r4, #1]
d0059250:	2b2a      	cmp	r3, #42	; 0x2a
d0059252:	d135      	bne.n	d00592c0 <_svfiprintf_r+0x188>
d0059254:	9b03      	ldr	r3, [sp, #12]
d0059256:	1d1a      	adds	r2, r3, #4
d0059258:	681b      	ldr	r3, [r3, #0]
d005925a:	9203      	str	r2, [sp, #12]
d005925c:	2b00      	cmp	r3, #0
d005925e:	bfb8      	it	lt
d0059260:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d0059264:	3402      	adds	r4, #2
d0059266:	9305      	str	r3, [sp, #20]
d0059268:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d0059334 <_svfiprintf_r+0x1fc>
d005926c:	7821      	ldrb	r1, [r4, #0]
d005926e:	2203      	movs	r2, #3
d0059270:	4650      	mov	r0, sl
d0059272:	f000 fa1d 	bl	d00596b0 <memchr>
d0059276:	b140      	cbz	r0, d005928a <_svfiprintf_r+0x152>
d0059278:	2340      	movs	r3, #64	; 0x40
d005927a:	eba0 000a 	sub.w	r0, r0, sl
d005927e:	fa03 f000 	lsl.w	r0, r3, r0
d0059282:	9b04      	ldr	r3, [sp, #16]
d0059284:	4303      	orrs	r3, r0
d0059286:	3401      	adds	r4, #1
d0059288:	9304      	str	r3, [sp, #16]
d005928a:	f814 1b01 	ldrb.w	r1, [r4], #1
d005928e:	4826      	ldr	r0, [pc, #152]	; (d0059328 <_svfiprintf_r+0x1f0>)
d0059290:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d0059294:	2206      	movs	r2, #6
d0059296:	f000 fa0b 	bl	d00596b0 <memchr>
d005929a:	2800      	cmp	r0, #0
d005929c:	d038      	beq.n	d0059310 <_svfiprintf_r+0x1d8>
d005929e:	4b23      	ldr	r3, [pc, #140]	; (d005932c <_svfiprintf_r+0x1f4>)
d00592a0:	bb1b      	cbnz	r3, d00592ea <_svfiprintf_r+0x1b2>
d00592a2:	9b03      	ldr	r3, [sp, #12]
d00592a4:	3307      	adds	r3, #7
d00592a6:	f023 0307 	bic.w	r3, r3, #7
d00592aa:	3308      	adds	r3, #8
d00592ac:	9303      	str	r3, [sp, #12]
d00592ae:	9b09      	ldr	r3, [sp, #36]	; 0x24
d00592b0:	4433      	add	r3, r6
d00592b2:	9309      	str	r3, [sp, #36]	; 0x24
d00592b4:	e767      	b.n	d0059186 <_svfiprintf_r+0x4e>
d00592b6:	fb0c 3202 	mla	r2, ip, r2, r3
d00592ba:	460c      	mov	r4, r1
d00592bc:	2001      	movs	r0, #1
d00592be:	e7a5      	b.n	d005920c <_svfiprintf_r+0xd4>
d00592c0:	2300      	movs	r3, #0
d00592c2:	3401      	adds	r4, #1
d00592c4:	9305      	str	r3, [sp, #20]
d00592c6:	4619      	mov	r1, r3
d00592c8:	f04f 0c0a 	mov.w	ip, #10
d00592cc:	4620      	mov	r0, r4
d00592ce:	f810 2b01 	ldrb.w	r2, [r0], #1
d00592d2:	3a30      	subs	r2, #48	; 0x30
d00592d4:	2a09      	cmp	r2, #9
d00592d6:	d903      	bls.n	d00592e0 <_svfiprintf_r+0x1a8>
d00592d8:	2b00      	cmp	r3, #0
d00592da:	d0c5      	beq.n	d0059268 <_svfiprintf_r+0x130>
d00592dc:	9105      	str	r1, [sp, #20]
d00592de:	e7c3      	b.n	d0059268 <_svfiprintf_r+0x130>
d00592e0:	fb0c 2101 	mla	r1, ip, r1, r2
d00592e4:	4604      	mov	r4, r0
d00592e6:	2301      	movs	r3, #1
d00592e8:	e7f0      	b.n	d00592cc <_svfiprintf_r+0x194>
d00592ea:	ab03      	add	r3, sp, #12
d00592ec:	9300      	str	r3, [sp, #0]
d00592ee:	462a      	mov	r2, r5
d00592f0:	4b0f      	ldr	r3, [pc, #60]	; (d0059330 <_svfiprintf_r+0x1f8>)
d00592f2:	a904      	add	r1, sp, #16
d00592f4:	4638      	mov	r0, r7
d00592f6:	f3af 8000 	nop.w
d00592fa:	1c42      	adds	r2, r0, #1
d00592fc:	4606      	mov	r6, r0
d00592fe:	d1d6      	bne.n	d00592ae <_svfiprintf_r+0x176>
d0059300:	89ab      	ldrh	r3, [r5, #12]
d0059302:	065b      	lsls	r3, r3, #25
d0059304:	f53f af2c 	bmi.w	d0059160 <_svfiprintf_r+0x28>
d0059308:	9809      	ldr	r0, [sp, #36]	; 0x24
d005930a:	b01d      	add	sp, #116	; 0x74
d005930c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0059310:	ab03      	add	r3, sp, #12
d0059312:	9300      	str	r3, [sp, #0]
d0059314:	462a      	mov	r2, r5
d0059316:	4b06      	ldr	r3, [pc, #24]	; (d0059330 <_svfiprintf_r+0x1f8>)
d0059318:	a904      	add	r1, sp, #16
d005931a:	4638      	mov	r0, r7
d005931c:	f000 f87a 	bl	d0059414 <_printf_i>
d0059320:	e7eb      	b.n	d00592fa <_svfiprintf_r+0x1c2>
d0059322:	bf00      	nop
d0059324:	d005a48c 	.word	0xd005a48c
d0059328:	d005a496 	.word	0xd005a496
d005932c:	00000000 	.word	0x00000000
d0059330:	d0059081 	.word	0xd0059081
d0059334:	d005a492 	.word	0xd005a492

d0059338 <_printf_common>:
d0059338:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d005933c:	4616      	mov	r6, r2
d005933e:	4699      	mov	r9, r3
d0059340:	688a      	ldr	r2, [r1, #8]
d0059342:	690b      	ldr	r3, [r1, #16]
d0059344:	f8dd 8020 	ldr.w	r8, [sp, #32]
d0059348:	4293      	cmp	r3, r2
d005934a:	bfb8      	it	lt
d005934c:	4613      	movlt	r3, r2
d005934e:	6033      	str	r3, [r6, #0]
d0059350:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d0059354:	4607      	mov	r7, r0
d0059356:	460c      	mov	r4, r1
d0059358:	b10a      	cbz	r2, d005935e <_printf_common+0x26>
d005935a:	3301      	adds	r3, #1
d005935c:	6033      	str	r3, [r6, #0]
d005935e:	6823      	ldr	r3, [r4, #0]
d0059360:	0699      	lsls	r1, r3, #26
d0059362:	bf42      	ittt	mi
d0059364:	6833      	ldrmi	r3, [r6, #0]
d0059366:	3302      	addmi	r3, #2
d0059368:	6033      	strmi	r3, [r6, #0]
d005936a:	6825      	ldr	r5, [r4, #0]
d005936c:	f015 0506 	ands.w	r5, r5, #6
d0059370:	d106      	bne.n	d0059380 <_printf_common+0x48>
d0059372:	f104 0a19 	add.w	sl, r4, #25
d0059376:	68e3      	ldr	r3, [r4, #12]
d0059378:	6832      	ldr	r2, [r6, #0]
d005937a:	1a9b      	subs	r3, r3, r2
d005937c:	42ab      	cmp	r3, r5
d005937e:	dc26      	bgt.n	d00593ce <_printf_common+0x96>
d0059380:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d0059384:	1e13      	subs	r3, r2, #0
d0059386:	6822      	ldr	r2, [r4, #0]
d0059388:	bf18      	it	ne
d005938a:	2301      	movne	r3, #1
d005938c:	0692      	lsls	r2, r2, #26
d005938e:	d42b      	bmi.n	d00593e8 <_printf_common+0xb0>
d0059390:	f104 0243 	add.w	r2, r4, #67	; 0x43
d0059394:	4649      	mov	r1, r9
d0059396:	4638      	mov	r0, r7
d0059398:	47c0      	blx	r8
d005939a:	3001      	adds	r0, #1
d005939c:	d01e      	beq.n	d00593dc <_printf_common+0xa4>
d005939e:	6823      	ldr	r3, [r4, #0]
d00593a0:	68e5      	ldr	r5, [r4, #12]
d00593a2:	6832      	ldr	r2, [r6, #0]
d00593a4:	f003 0306 	and.w	r3, r3, #6
d00593a8:	2b04      	cmp	r3, #4
d00593aa:	bf08      	it	eq
d00593ac:	1aad      	subeq	r5, r5, r2
d00593ae:	68a3      	ldr	r3, [r4, #8]
d00593b0:	6922      	ldr	r2, [r4, #16]
d00593b2:	bf0c      	ite	eq
d00593b4:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d00593b8:	2500      	movne	r5, #0
d00593ba:	4293      	cmp	r3, r2
d00593bc:	bfc4      	itt	gt
d00593be:	1a9b      	subgt	r3, r3, r2
d00593c0:	18ed      	addgt	r5, r5, r3
d00593c2:	2600      	movs	r6, #0
d00593c4:	341a      	adds	r4, #26
d00593c6:	42b5      	cmp	r5, r6
d00593c8:	d11a      	bne.n	d0059400 <_printf_common+0xc8>
d00593ca:	2000      	movs	r0, #0
d00593cc:	e008      	b.n	d00593e0 <_printf_common+0xa8>
d00593ce:	2301      	movs	r3, #1
d00593d0:	4652      	mov	r2, sl
d00593d2:	4649      	mov	r1, r9
d00593d4:	4638      	mov	r0, r7
d00593d6:	47c0      	blx	r8
d00593d8:	3001      	adds	r0, #1
d00593da:	d103      	bne.n	d00593e4 <_printf_common+0xac>
d00593dc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00593e0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d00593e4:	3501      	adds	r5, #1
d00593e6:	e7c6      	b.n	d0059376 <_printf_common+0x3e>
d00593e8:	18e1      	adds	r1, r4, r3
d00593ea:	1c5a      	adds	r2, r3, #1
d00593ec:	2030      	movs	r0, #48	; 0x30
d00593ee:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d00593f2:	4422      	add	r2, r4
d00593f4:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d00593f8:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d00593fc:	3302      	adds	r3, #2
d00593fe:	e7c7      	b.n	d0059390 <_printf_common+0x58>
d0059400:	2301      	movs	r3, #1
d0059402:	4622      	mov	r2, r4
d0059404:	4649      	mov	r1, r9
d0059406:	4638      	mov	r0, r7
d0059408:	47c0      	blx	r8
d005940a:	3001      	adds	r0, #1
d005940c:	d0e6      	beq.n	d00593dc <_printf_common+0xa4>
d005940e:	3601      	adds	r6, #1
d0059410:	e7d9      	b.n	d00593c6 <_printf_common+0x8e>
	...

d0059414 <_printf_i>:
d0059414:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d0059418:	460c      	mov	r4, r1
d005941a:	4691      	mov	r9, r2
d005941c:	7e27      	ldrb	r7, [r4, #24]
d005941e:	990c      	ldr	r1, [sp, #48]	; 0x30
d0059420:	2f78      	cmp	r7, #120	; 0x78
d0059422:	4680      	mov	r8, r0
d0059424:	469a      	mov	sl, r3
d0059426:	f104 0243 	add.w	r2, r4, #67	; 0x43
d005942a:	d807      	bhi.n	d005943c <_printf_i+0x28>
d005942c:	2f62      	cmp	r7, #98	; 0x62
d005942e:	d80a      	bhi.n	d0059446 <_printf_i+0x32>
d0059430:	2f00      	cmp	r7, #0
d0059432:	f000 80d8 	beq.w	d00595e6 <_printf_i+0x1d2>
d0059436:	2f58      	cmp	r7, #88	; 0x58
d0059438:	f000 80a3 	beq.w	d0059582 <_printf_i+0x16e>
d005943c:	f104 0642 	add.w	r6, r4, #66	; 0x42
d0059440:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d0059444:	e03a      	b.n	d00594bc <_printf_i+0xa8>
d0059446:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d005944a:	2b15      	cmp	r3, #21
d005944c:	d8f6      	bhi.n	d005943c <_printf_i+0x28>
d005944e:	a001      	add	r0, pc, #4	; (adr r0, d0059454 <_printf_i+0x40>)
d0059450:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d0059454:	d00594ad 	.word	0xd00594ad
d0059458:	d00594c1 	.word	0xd00594c1
d005945c:	d005943d 	.word	0xd005943d
d0059460:	d005943d 	.word	0xd005943d
d0059464:	d005943d 	.word	0xd005943d
d0059468:	d005943d 	.word	0xd005943d
d005946c:	d00594c1 	.word	0xd00594c1
d0059470:	d005943d 	.word	0xd005943d
d0059474:	d005943d 	.word	0xd005943d
d0059478:	d005943d 	.word	0xd005943d
d005947c:	d005943d 	.word	0xd005943d
d0059480:	d00595cd 	.word	0xd00595cd
d0059484:	d00594f1 	.word	0xd00594f1
d0059488:	d00595af 	.word	0xd00595af
d005948c:	d005943d 	.word	0xd005943d
d0059490:	d005943d 	.word	0xd005943d
d0059494:	d00595ef 	.word	0xd00595ef
d0059498:	d005943d 	.word	0xd005943d
d005949c:	d00594f1 	.word	0xd00594f1
d00594a0:	d005943d 	.word	0xd005943d
d00594a4:	d005943d 	.word	0xd005943d
d00594a8:	d00595b7 	.word	0xd00595b7
d00594ac:	680b      	ldr	r3, [r1, #0]
d00594ae:	1d1a      	adds	r2, r3, #4
d00594b0:	681b      	ldr	r3, [r3, #0]
d00594b2:	600a      	str	r2, [r1, #0]
d00594b4:	f104 0642 	add.w	r6, r4, #66	; 0x42
d00594b8:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d00594bc:	2301      	movs	r3, #1
d00594be:	e0a3      	b.n	d0059608 <_printf_i+0x1f4>
d00594c0:	6825      	ldr	r5, [r4, #0]
d00594c2:	6808      	ldr	r0, [r1, #0]
d00594c4:	062e      	lsls	r6, r5, #24
d00594c6:	f100 0304 	add.w	r3, r0, #4
d00594ca:	d50a      	bpl.n	d00594e2 <_printf_i+0xce>
d00594cc:	6805      	ldr	r5, [r0, #0]
d00594ce:	600b      	str	r3, [r1, #0]
d00594d0:	2d00      	cmp	r5, #0
d00594d2:	da03      	bge.n	d00594dc <_printf_i+0xc8>
d00594d4:	232d      	movs	r3, #45	; 0x2d
d00594d6:	426d      	negs	r5, r5
d00594d8:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d00594dc:	485e      	ldr	r0, [pc, #376]	; (d0059658 <_printf_i+0x244>)
d00594de:	230a      	movs	r3, #10
d00594e0:	e019      	b.n	d0059516 <_printf_i+0x102>
d00594e2:	f015 0f40 	tst.w	r5, #64	; 0x40
d00594e6:	6805      	ldr	r5, [r0, #0]
d00594e8:	600b      	str	r3, [r1, #0]
d00594ea:	bf18      	it	ne
d00594ec:	b22d      	sxthne	r5, r5
d00594ee:	e7ef      	b.n	d00594d0 <_printf_i+0xbc>
d00594f0:	680b      	ldr	r3, [r1, #0]
d00594f2:	6825      	ldr	r5, [r4, #0]
d00594f4:	1d18      	adds	r0, r3, #4
d00594f6:	6008      	str	r0, [r1, #0]
d00594f8:	0628      	lsls	r0, r5, #24
d00594fa:	d501      	bpl.n	d0059500 <_printf_i+0xec>
d00594fc:	681d      	ldr	r5, [r3, #0]
d00594fe:	e002      	b.n	d0059506 <_printf_i+0xf2>
d0059500:	0669      	lsls	r1, r5, #25
d0059502:	d5fb      	bpl.n	d00594fc <_printf_i+0xe8>
d0059504:	881d      	ldrh	r5, [r3, #0]
d0059506:	4854      	ldr	r0, [pc, #336]	; (d0059658 <_printf_i+0x244>)
d0059508:	2f6f      	cmp	r7, #111	; 0x6f
d005950a:	bf0c      	ite	eq
d005950c:	2308      	moveq	r3, #8
d005950e:	230a      	movne	r3, #10
d0059510:	2100      	movs	r1, #0
d0059512:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d0059516:	6866      	ldr	r6, [r4, #4]
d0059518:	60a6      	str	r6, [r4, #8]
d005951a:	2e00      	cmp	r6, #0
d005951c:	bfa2      	ittt	ge
d005951e:	6821      	ldrge	r1, [r4, #0]
d0059520:	f021 0104 	bicge.w	r1, r1, #4
d0059524:	6021      	strge	r1, [r4, #0]
d0059526:	b90d      	cbnz	r5, d005952c <_printf_i+0x118>
d0059528:	2e00      	cmp	r6, #0
d005952a:	d04d      	beq.n	d00595c8 <_printf_i+0x1b4>
d005952c:	4616      	mov	r6, r2
d005952e:	fbb5 f1f3 	udiv	r1, r5, r3
d0059532:	fb03 5711 	mls	r7, r3, r1, r5
d0059536:	5dc7      	ldrb	r7, [r0, r7]
d0059538:	f806 7d01 	strb.w	r7, [r6, #-1]!
d005953c:	462f      	mov	r7, r5
d005953e:	42bb      	cmp	r3, r7
d0059540:	460d      	mov	r5, r1
d0059542:	d9f4      	bls.n	d005952e <_printf_i+0x11a>
d0059544:	2b08      	cmp	r3, #8
d0059546:	d10b      	bne.n	d0059560 <_printf_i+0x14c>
d0059548:	6823      	ldr	r3, [r4, #0]
d005954a:	07df      	lsls	r7, r3, #31
d005954c:	d508      	bpl.n	d0059560 <_printf_i+0x14c>
d005954e:	6923      	ldr	r3, [r4, #16]
d0059550:	6861      	ldr	r1, [r4, #4]
d0059552:	4299      	cmp	r1, r3
d0059554:	bfde      	ittt	le
d0059556:	2330      	movle	r3, #48	; 0x30
d0059558:	f806 3c01 	strble.w	r3, [r6, #-1]
d005955c:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d0059560:	1b92      	subs	r2, r2, r6
d0059562:	6122      	str	r2, [r4, #16]
d0059564:	f8cd a000 	str.w	sl, [sp]
d0059568:	464b      	mov	r3, r9
d005956a:	aa03      	add	r2, sp, #12
d005956c:	4621      	mov	r1, r4
d005956e:	4640      	mov	r0, r8
d0059570:	f7ff fee2 	bl	d0059338 <_printf_common>
d0059574:	3001      	adds	r0, #1
d0059576:	d14c      	bne.n	d0059612 <_printf_i+0x1fe>
d0059578:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d005957c:	b004      	add	sp, #16
d005957e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0059582:	4835      	ldr	r0, [pc, #212]	; (d0059658 <_printf_i+0x244>)
d0059584:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d0059588:	6823      	ldr	r3, [r4, #0]
d005958a:	680e      	ldr	r6, [r1, #0]
d005958c:	061f      	lsls	r7, r3, #24
d005958e:	f856 5b04 	ldr.w	r5, [r6], #4
d0059592:	600e      	str	r6, [r1, #0]
d0059594:	d514      	bpl.n	d00595c0 <_printf_i+0x1ac>
d0059596:	07d9      	lsls	r1, r3, #31
d0059598:	bf44      	itt	mi
d005959a:	f043 0320 	orrmi.w	r3, r3, #32
d005959e:	6023      	strmi	r3, [r4, #0]
d00595a0:	b91d      	cbnz	r5, d00595aa <_printf_i+0x196>
d00595a2:	6823      	ldr	r3, [r4, #0]
d00595a4:	f023 0320 	bic.w	r3, r3, #32
d00595a8:	6023      	str	r3, [r4, #0]
d00595aa:	2310      	movs	r3, #16
d00595ac:	e7b0      	b.n	d0059510 <_printf_i+0xfc>
d00595ae:	6823      	ldr	r3, [r4, #0]
d00595b0:	f043 0320 	orr.w	r3, r3, #32
d00595b4:	6023      	str	r3, [r4, #0]
d00595b6:	2378      	movs	r3, #120	; 0x78
d00595b8:	4828      	ldr	r0, [pc, #160]	; (d005965c <_printf_i+0x248>)
d00595ba:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d00595be:	e7e3      	b.n	d0059588 <_printf_i+0x174>
d00595c0:	065e      	lsls	r6, r3, #25
d00595c2:	bf48      	it	mi
d00595c4:	b2ad      	uxthmi	r5, r5
d00595c6:	e7e6      	b.n	d0059596 <_printf_i+0x182>
d00595c8:	4616      	mov	r6, r2
d00595ca:	e7bb      	b.n	d0059544 <_printf_i+0x130>
d00595cc:	680b      	ldr	r3, [r1, #0]
d00595ce:	6826      	ldr	r6, [r4, #0]
d00595d0:	6960      	ldr	r0, [r4, #20]
d00595d2:	1d1d      	adds	r5, r3, #4
d00595d4:	600d      	str	r5, [r1, #0]
d00595d6:	0635      	lsls	r5, r6, #24
d00595d8:	681b      	ldr	r3, [r3, #0]
d00595da:	d501      	bpl.n	d00595e0 <_printf_i+0x1cc>
d00595dc:	6018      	str	r0, [r3, #0]
d00595de:	e002      	b.n	d00595e6 <_printf_i+0x1d2>
d00595e0:	0671      	lsls	r1, r6, #25
d00595e2:	d5fb      	bpl.n	d00595dc <_printf_i+0x1c8>
d00595e4:	8018      	strh	r0, [r3, #0]
d00595e6:	2300      	movs	r3, #0
d00595e8:	6123      	str	r3, [r4, #16]
d00595ea:	4616      	mov	r6, r2
d00595ec:	e7ba      	b.n	d0059564 <_printf_i+0x150>
d00595ee:	680b      	ldr	r3, [r1, #0]
d00595f0:	1d1a      	adds	r2, r3, #4
d00595f2:	600a      	str	r2, [r1, #0]
d00595f4:	681e      	ldr	r6, [r3, #0]
d00595f6:	6862      	ldr	r2, [r4, #4]
d00595f8:	2100      	movs	r1, #0
d00595fa:	4630      	mov	r0, r6
d00595fc:	f000 f858 	bl	d00596b0 <memchr>
d0059600:	b108      	cbz	r0, d0059606 <_printf_i+0x1f2>
d0059602:	1b80      	subs	r0, r0, r6
d0059604:	6060      	str	r0, [r4, #4]
d0059606:	6863      	ldr	r3, [r4, #4]
d0059608:	6123      	str	r3, [r4, #16]
d005960a:	2300      	movs	r3, #0
d005960c:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d0059610:	e7a8      	b.n	d0059564 <_printf_i+0x150>
d0059612:	6923      	ldr	r3, [r4, #16]
d0059614:	4632      	mov	r2, r6
d0059616:	4649      	mov	r1, r9
d0059618:	4640      	mov	r0, r8
d005961a:	47d0      	blx	sl
d005961c:	3001      	adds	r0, #1
d005961e:	d0ab      	beq.n	d0059578 <_printf_i+0x164>
d0059620:	6823      	ldr	r3, [r4, #0]
d0059622:	079b      	lsls	r3, r3, #30
d0059624:	d413      	bmi.n	d005964e <_printf_i+0x23a>
d0059626:	68e0      	ldr	r0, [r4, #12]
d0059628:	9b03      	ldr	r3, [sp, #12]
d005962a:	4298      	cmp	r0, r3
d005962c:	bfb8      	it	lt
d005962e:	4618      	movlt	r0, r3
d0059630:	e7a4      	b.n	d005957c <_printf_i+0x168>
d0059632:	2301      	movs	r3, #1
d0059634:	4632      	mov	r2, r6
d0059636:	4649      	mov	r1, r9
d0059638:	4640      	mov	r0, r8
d005963a:	47d0      	blx	sl
d005963c:	3001      	adds	r0, #1
d005963e:	d09b      	beq.n	d0059578 <_printf_i+0x164>
d0059640:	3501      	adds	r5, #1
d0059642:	68e3      	ldr	r3, [r4, #12]
d0059644:	9903      	ldr	r1, [sp, #12]
d0059646:	1a5b      	subs	r3, r3, r1
d0059648:	42ab      	cmp	r3, r5
d005964a:	dcf2      	bgt.n	d0059632 <_printf_i+0x21e>
d005964c:	e7eb      	b.n	d0059626 <_printf_i+0x212>
d005964e:	2500      	movs	r5, #0
d0059650:	f104 0619 	add.w	r6, r4, #25
d0059654:	e7f5      	b.n	d0059642 <_printf_i+0x22e>
d0059656:	bf00      	nop
d0059658:	d005a49d 	.word	0xd005a49d
d005965c:	d005a4ae 	.word	0xd005a4ae

d0059660 <_read_r>:
d0059660:	b538      	push	{r3, r4, r5, lr}
d0059662:	4d07      	ldr	r5, [pc, #28]	; (d0059680 <_read_r+0x20>)
d0059664:	4604      	mov	r4, r0
d0059666:	4608      	mov	r0, r1
d0059668:	4611      	mov	r1, r2
d005966a:	2200      	movs	r2, #0
d005966c:	602a      	str	r2, [r5, #0]
d005966e:	461a      	mov	r2, r3
d0059670:	f7f6 fd20 	bl	d00500b4 <_read>
d0059674:	1c43      	adds	r3, r0, #1
d0059676:	d102      	bne.n	d005967e <_read_r+0x1e>
d0059678:	682b      	ldr	r3, [r5, #0]
d005967a:	b103      	cbz	r3, d005967e <_read_r+0x1e>
d005967c:	6023      	str	r3, [r4, #0]
d005967e:	bd38      	pop	{r3, r4, r5, pc}
d0059680:	d00fb0ac 	.word	0xd00fb0ac

d0059684 <_fstat_r>:
d0059684:	b538      	push	{r3, r4, r5, lr}
d0059686:	4d07      	ldr	r5, [pc, #28]	; (d00596a4 <_fstat_r+0x20>)
d0059688:	2300      	movs	r3, #0
d005968a:	4604      	mov	r4, r0
d005968c:	4608      	mov	r0, r1
d005968e:	4611      	mov	r1, r2
d0059690:	602b      	str	r3, [r5, #0]
d0059692:	f7f6 fd1d 	bl	d00500d0 <_fstat>
d0059696:	1c43      	adds	r3, r0, #1
d0059698:	d102      	bne.n	d00596a0 <_fstat_r+0x1c>
d005969a:	682b      	ldr	r3, [r5, #0]
d005969c:	b103      	cbz	r3, d00596a0 <_fstat_r+0x1c>
d005969e:	6023      	str	r3, [r4, #0]
d00596a0:	bd38      	pop	{r3, r4, r5, pc}
d00596a2:	bf00      	nop
d00596a4:	d00fb0ac 	.word	0xd00fb0ac
	...

d00596b0 <memchr>:
d00596b0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d00596b4:	2a10      	cmp	r2, #16
d00596b6:	db2b      	blt.n	d0059710 <memchr+0x60>
d00596b8:	f010 0f07 	tst.w	r0, #7
d00596bc:	d008      	beq.n	d00596d0 <memchr+0x20>
d00596be:	f810 3b01 	ldrb.w	r3, [r0], #1
d00596c2:	3a01      	subs	r2, #1
d00596c4:	428b      	cmp	r3, r1
d00596c6:	d02d      	beq.n	d0059724 <memchr+0x74>
d00596c8:	f010 0f07 	tst.w	r0, #7
d00596cc:	b342      	cbz	r2, d0059720 <memchr+0x70>
d00596ce:	d1f6      	bne.n	d00596be <memchr+0xe>
d00596d0:	b4f0      	push	{r4, r5, r6, r7}
d00596d2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d00596d6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d00596da:	f022 0407 	bic.w	r4, r2, #7
d00596de:	f07f 0700 	mvns.w	r7, #0
d00596e2:	2300      	movs	r3, #0
d00596e4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d00596e8:	3c08      	subs	r4, #8
d00596ea:	ea85 0501 	eor.w	r5, r5, r1
d00596ee:	ea86 0601 	eor.w	r6, r6, r1
d00596f2:	fa85 f547 	uadd8	r5, r5, r7
d00596f6:	faa3 f587 	sel	r5, r3, r7
d00596fa:	fa86 f647 	uadd8	r6, r6, r7
d00596fe:	faa5 f687 	sel	r6, r5, r7
d0059702:	b98e      	cbnz	r6, d0059728 <memchr+0x78>
d0059704:	d1ee      	bne.n	d00596e4 <memchr+0x34>
d0059706:	bcf0      	pop	{r4, r5, r6, r7}
d0059708:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d005970c:	f002 0207 	and.w	r2, r2, #7
d0059710:	b132      	cbz	r2, d0059720 <memchr+0x70>
d0059712:	f810 3b01 	ldrb.w	r3, [r0], #1
d0059716:	3a01      	subs	r2, #1
d0059718:	ea83 0301 	eor.w	r3, r3, r1
d005971c:	b113      	cbz	r3, d0059724 <memchr+0x74>
d005971e:	d1f8      	bne.n	d0059712 <memchr+0x62>
d0059720:	2000      	movs	r0, #0
d0059722:	4770      	bx	lr
d0059724:	3801      	subs	r0, #1
d0059726:	4770      	bx	lr
d0059728:	2d00      	cmp	r5, #0
d005972a:	bf06      	itte	eq
d005972c:	4635      	moveq	r5, r6
d005972e:	3803      	subeq	r0, #3
d0059730:	3807      	subne	r0, #7
d0059732:	f015 0f01 	tst.w	r5, #1
d0059736:	d107      	bne.n	d0059748 <memchr+0x98>
d0059738:	3001      	adds	r0, #1
d005973a:	f415 7f80 	tst.w	r5, #256	; 0x100
d005973e:	bf02      	ittt	eq
d0059740:	3001      	addeq	r0, #1
d0059742:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d0059746:	3001      	addeq	r0, #1
d0059748:	bcf0      	pop	{r4, r5, r6, r7}
d005974a:	3801      	subs	r0, #1
d005974c:	4770      	bx	lr
d005974e:	bf00      	nop

d0059750 <memmove>:
d0059750:	4288      	cmp	r0, r1
d0059752:	b510      	push	{r4, lr}
d0059754:	eb01 0402 	add.w	r4, r1, r2
d0059758:	d902      	bls.n	d0059760 <memmove+0x10>
d005975a:	4284      	cmp	r4, r0
d005975c:	4623      	mov	r3, r4
d005975e:	d807      	bhi.n	d0059770 <memmove+0x20>
d0059760:	1e43      	subs	r3, r0, #1
d0059762:	42a1      	cmp	r1, r4
d0059764:	d008      	beq.n	d0059778 <memmove+0x28>
d0059766:	f811 2b01 	ldrb.w	r2, [r1], #1
d005976a:	f803 2f01 	strb.w	r2, [r3, #1]!
d005976e:	e7f8      	b.n	d0059762 <memmove+0x12>
d0059770:	4402      	add	r2, r0
d0059772:	4601      	mov	r1, r0
d0059774:	428a      	cmp	r2, r1
d0059776:	d100      	bne.n	d005977a <memmove+0x2a>
d0059778:	bd10      	pop	{r4, pc}
d005977a:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d005977e:	f802 4d01 	strb.w	r4, [r2, #-1]!
d0059782:	e7f7      	b.n	d0059774 <memmove+0x24>

d0059784 <_malloc_usable_size_r>:
d0059784:	f851 3c04 	ldr.w	r3, [r1, #-4]
d0059788:	1f18      	subs	r0, r3, #4
d005978a:	2b00      	cmp	r3, #0
d005978c:	bfbc      	itt	lt
d005978e:	580b      	ldrlt	r3, [r1, r0]
d0059790:	18c0      	addlt	r0, r0, r3
d0059792:	4770      	bx	lr

d0059794 <sinf_poly>:
d0059794:	07cb      	lsls	r3, r1, #31
d0059796:	d412      	bmi.n	d00597be <sinf_poly+0x2a>
d0059798:	ee21 6b00 	vmul.f64	d6, d1, d0
d005979c:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d00597a0:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d00597a4:	eea5 7b01 	vfma.f64	d7, d5, d1
d00597a8:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d00597ac:	ee21 1b06 	vmul.f64	d1, d1, d6
d00597b0:	eea5 0b06 	vfma.f64	d0, d5, d6
d00597b4:	eea7 0b01 	vfma.f64	d0, d7, d1
d00597b8:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d00597bc:	4770      	bx	lr
d00597be:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d00597c2:	ee21 6b01 	vmul.f64	d6, d1, d1
d00597c6:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d00597ca:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d00597ce:	eea1 7b05 	vfma.f64	d7, d1, d5
d00597d2:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d00597d6:	eea1 0b05 	vfma.f64	d0, d1, d5
d00597da:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d00597de:	ee21 1b06 	vmul.f64	d1, d1, d6
d00597e2:	eea6 0b05 	vfma.f64	d0, d6, d5
d00597e6:	e7e5      	b.n	d00597b4 <sinf_poly+0x20>

d00597e8 <cosf>:
d00597e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d00597ea:	ee10 4a10 	vmov	r4, s0
d00597ee:	f3c4 530a 	ubfx	r3, r4, #20, #11
d00597f2:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d00597f6:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d00597fa:	d20c      	bcs.n	d0059816 <cosf+0x2e>
d00597fc:	ee26 1b06 	vmul.f64	d1, d6, d6
d0059800:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d0059804:	d378      	bcc.n	d00598f8 <cosf+0x110>
d0059806:	eeb0 0b46 	vmov.f64	d0, d6
d005980a:	483f      	ldr	r0, [pc, #252]	; (d0059908 <cosf+0x120>)
d005980c:	2101      	movs	r1, #1
d005980e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d0059812:	f7ff bfbf 	b.w	d0059794 <sinf_poly>
d0059816:	f240 422e 	movw	r2, #1070	; 0x42e
d005981a:	4293      	cmp	r3, r2
d005981c:	d826      	bhi.n	d005986c <cosf+0x84>
d005981e:	4b3a      	ldr	r3, [pc, #232]	; (d0059908 <cosf+0x120>)
d0059820:	ed93 7b08 	vldr	d7, [r3, #32]
d0059824:	ee26 7b07 	vmul.f64	d7, d6, d7
d0059828:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d005982c:	f103 0070 	add.w	r0, r3, #112	; 0x70
d0059830:	ee17 1a90 	vmov	r1, s15
d0059834:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d0059838:	1609      	asrs	r1, r1, #24
d005983a:	ee07 1a90 	vmov	s15, r1
d005983e:	f001 0203 	and.w	r2, r1, #3
d0059842:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d0059846:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d005984a:	ed92 0b00 	vldr	d0, [r2]
d005984e:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d0059852:	f011 0f02 	tst.w	r1, #2
d0059856:	eea5 6b47 	vfms.f64	d6, d5, d7
d005985a:	f081 0101 	eor.w	r1, r1, #1
d005985e:	bf08      	it	eq
d0059860:	4618      	moveq	r0, r3
d0059862:	ee26 1b06 	vmul.f64	d1, d6, d6
d0059866:	ee20 0b06 	vmul.f64	d0, d0, d6
d005986a:	e7d0      	b.n	d005980e <cosf+0x26>
d005986c:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0059870:	d23e      	bcs.n	d00598f0 <cosf+0x108>
d0059872:	4b26      	ldr	r3, [pc, #152]	; (d005990c <cosf+0x124>)
d0059874:	f3c4 6283 	ubfx	r2, r4, #26, #4
d0059878:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d005987c:	f3c4 0116 	ubfx	r1, r4, #0, #23
d0059880:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d0059884:	6a06      	ldr	r6, [r0, #32]
d0059886:	6900      	ldr	r0, [r0, #16]
d0059888:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d005988c:	40a9      	lsls	r1, r5
d005988e:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d0059892:	fba1 6706 	umull	r6, r7, r1, r6
d0059896:	fb05 f301 	mul.w	r3, r5, r1
d005989a:	463a      	mov	r2, r7
d005989c:	fbe0 2301 	umlal	r2, r3, r0, r1
d00598a0:	1c11      	adds	r1, r2, #0
d00598a2:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d00598a6:	2000      	movs	r0, #0
d00598a8:	1a10      	subs	r0, r2, r0
d00598aa:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d00598ae:	eb63 0101 	sbc.w	r1, r3, r1
d00598b2:	f000 fbab 	bl	d005a00c <__aeabi_l2d>
d00598b6:	0fb5      	lsrs	r5, r6, #30
d00598b8:	4b13      	ldr	r3, [pc, #76]	; (d0059908 <cosf+0x120>)
d00598ba:	eb05 74d4 	add.w	r4, r5, r4, lsr #31
d00598be:	ed9f 0b10 	vldr	d0, [pc, #64]	; d0059900 <cosf+0x118>
d00598c2:	ec41 0b17 	vmov	d7, r0, r1
d00598c6:	f004 0203 	and.w	r2, r4, #3
d00598ca:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d00598ce:	ee27 0b00 	vmul.f64	d0, d7, d0
d00598d2:	ed92 7b00 	vldr	d7, [r2]
d00598d6:	ee20 1b00 	vmul.f64	d1, d0, d0
d00598da:	f014 0f02 	tst.w	r4, #2
d00598de:	f103 0070 	add.w	r0, r3, #112	; 0x70
d00598e2:	f085 0101 	eor.w	r1, r5, #1
d00598e6:	bf08      	it	eq
d00598e8:	4618      	moveq	r0, r3
d00598ea:	ee27 0b00 	vmul.f64	d0, d7, d0
d00598ee:	e78e      	b.n	d005980e <cosf+0x26>
d00598f0:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d00598f4:	f000 b844 	b.w	d0059980 <__math_invalidf>
d00598f8:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d00598fc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00598fe:	bf00      	nop
d0059900:	54442d18 	.word	0x54442d18
d0059904:	3c1921fb 	.word	0x3c1921fb
d0059908:	d005a788 	.word	0xd005a788
d005990c:	d005a728 	.word	0xd005a728

d0059910 <with_errnof>:
d0059910:	b513      	push	{r0, r1, r4, lr}
d0059912:	4604      	mov	r4, r0
d0059914:	ed8d 0a01 	vstr	s0, [sp, #4]
d0059918:	f7fe fef4 	bl	d0058704 <__errno>
d005991c:	ed9d 0a01 	vldr	s0, [sp, #4]
d0059920:	6004      	str	r4, [r0, #0]
d0059922:	b002      	add	sp, #8
d0059924:	bd10      	pop	{r4, pc}

d0059926 <xflowf>:
d0059926:	b130      	cbz	r0, d0059936 <xflowf+0x10>
d0059928:	eef1 7a40 	vneg.f32	s15, s0
d005992c:	ee27 0a80 	vmul.f32	s0, s15, s0
d0059930:	2022      	movs	r0, #34	; 0x22
d0059932:	f7ff bfed 	b.w	d0059910 <with_errnof>
d0059936:	eef0 7a40 	vmov.f32	s15, s0
d005993a:	e7f7      	b.n	d005992c <xflowf+0x6>

d005993c <__math_uflowf>:
d005993c:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0059944 <__math_uflowf+0x8>
d0059940:	f7ff bff1 	b.w	d0059926 <xflowf>
d0059944:	10000000 	.word	0x10000000

d0059948 <__math_may_uflowf>:
d0059948:	ed9f 0a01 	vldr	s0, [pc, #4]	; d0059950 <__math_may_uflowf+0x8>
d005994c:	f7ff bfeb 	b.w	d0059926 <xflowf>
d0059950:	1a200000 	.word	0x1a200000

d0059954 <__math_oflowf>:
d0059954:	ed9f 0a01 	vldr	s0, [pc, #4]	; d005995c <__math_oflowf+0x8>
d0059958:	f7ff bfe5 	b.w	d0059926 <xflowf>
d005995c:	70000000 	.word	0x70000000

d0059960 <__math_divzerof>:
d0059960:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0059964:	eeff 7a00 	vmov.f32	s15, #240	; 0xbf800000 -1.0
d0059968:	2800      	cmp	r0, #0
d005996a:	fe40 7a27 	vseleq.f32	s15, s0, s15
d005996e:	ed9f 0a03 	vldr	s0, [pc, #12]	; d005997c <__math_divzerof+0x1c>
d0059972:	2022      	movs	r0, #34	; 0x22
d0059974:	ee87 0a80 	vdiv.f32	s0, s15, s0
d0059978:	f7ff bfca 	b.w	d0059910 <with_errnof>
d005997c:	00000000 	.word	0x00000000

d0059980 <__math_invalidf>:
d0059980:	eef0 7a40 	vmov.f32	s15, s0
d0059984:	ee30 7a40 	vsub.f32	s14, s0, s0
d0059988:	eef4 7a67 	vcmp.f32	s15, s15
d005998c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059990:	ee87 0a07 	vdiv.f32	s0, s14, s14
d0059994:	d602      	bvs.n	d005999c <__math_invalidf+0x1c>
d0059996:	2021      	movs	r0, #33	; 0x21
d0059998:	f7ff bfba 	b.w	d0059910 <with_errnof>
d005999c:	4770      	bx	lr
	...

d00599a0 <expf>:
d00599a0:	ee10 2a10 	vmov	r2, s0
d00599a4:	b470      	push	{r4, r5, r6}
d00599a6:	f3c2 530a 	ubfx	r3, r2, #20, #11
d00599aa:	f240 442a 	movw	r4, #1066	; 0x42a
d00599ae:	42a3      	cmp	r3, r4
d00599b0:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d00599b4:	d92a      	bls.n	d0059a0c <expf+0x6c>
d00599b6:	f512 0f00 	cmn.w	r2, #8388608	; 0x800000
d00599ba:	d059      	beq.n	d0059a70 <expf+0xd0>
d00599bc:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d00599c0:	d303      	bcc.n	d00599ca <expf+0x2a>
d00599c2:	ee30 0a00 	vadd.f32	s0, s0, s0
d00599c6:	bc70      	pop	{r4, r5, r6}
d00599c8:	4770      	bx	lr
d00599ca:	eddf 7a2b 	vldr	s15, [pc, #172]	; d0059a78 <expf+0xd8>
d00599ce:	eeb4 0ae7 	vcmpe.f32	s0, s15
d00599d2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00599d6:	dd03      	ble.n	d00599e0 <expf+0x40>
d00599d8:	bc70      	pop	{r4, r5, r6}
d00599da:	2000      	movs	r0, #0
d00599dc:	f7ff bfba 	b.w	d0059954 <__math_oflowf>
d00599e0:	eddf 7a26 	vldr	s15, [pc, #152]	; d0059a7c <expf+0xdc>
d00599e4:	eeb4 0ae7 	vcmpe.f32	s0, s15
d00599e8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00599ec:	d503      	bpl.n	d00599f6 <expf+0x56>
d00599ee:	bc70      	pop	{r4, r5, r6}
d00599f0:	2000      	movs	r0, #0
d00599f2:	f7ff bfa3 	b.w	d005993c <__math_uflowf>
d00599f6:	eddf 7a22 	vldr	s15, [pc, #136]	; d0059a80 <expf+0xe0>
d00599fa:	eeb4 0ae7 	vcmpe.f32	s0, s15
d00599fe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059a02:	d503      	bpl.n	d0059a0c <expf+0x6c>
d0059a04:	bc70      	pop	{r4, r5, r6}
d0059a06:	2000      	movs	r0, #0
d0059a08:	f7ff bf9e 	b.w	d0059948 <__math_may_uflowf>
d0059a0c:	4b1d      	ldr	r3, [pc, #116]	; (d0059a84 <expf+0xe4>)
d0059a0e:	eeb7 0b00 	vmov.f64	d0, #112	; 0x3f800000  1.0
d0059a12:	ed93 5b4a 	vldr	d5, [r3, #296]	; 0x128
d0059a16:	ed93 4b48 	vldr	d4, [r3, #288]	; 0x120
d0059a1a:	eeb0 7b44 	vmov.f64	d7, d4
d0059a1e:	eea5 7b06 	vfma.f64	d7, d5, d6
d0059a22:	ee17 5a10 	vmov	r5, s14
d0059a26:	ee37 7b44 	vsub.f64	d7, d7, d4
d0059a2a:	f005 021f 	and.w	r2, r5, #31
d0059a2e:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d0059a32:	e9d2 4600 	ldrd	r4, r6, [r2]
d0059a36:	ee95 7b06 	vfnms.f64	d7, d5, d6
d0059a3a:	ed93 4b50 	vldr	d4, [r3, #320]	; 0x140
d0059a3e:	ed93 5b4c 	vldr	d5, [r3, #304]	; 0x130
d0059a42:	eea4 0b07 	vfma.f64	d0, d4, d7
d0059a46:	ed93 6b4e 	vldr	d6, [r3, #312]	; 0x138
d0059a4a:	2300      	movs	r3, #0
d0059a4c:	1918      	adds	r0, r3, r4
d0059a4e:	ea4f 32c5 	mov.w	r2, r5, lsl #15
d0059a52:	eb42 0106 	adc.w	r1, r2, r6
d0059a56:	eea5 6b07 	vfma.f64	d6, d5, d7
d0059a5a:	ee27 5b07 	vmul.f64	d5, d7, d7
d0059a5e:	ec41 0b17 	vmov	d7, r0, r1
d0059a62:	eea6 0b05 	vfma.f64	d0, d6, d5
d0059a66:	ee20 0b07 	vmul.f64	d0, d0, d7
d0059a6a:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0059a6e:	e7aa      	b.n	d00599c6 <expf+0x26>
d0059a70:	ed9f 0a05 	vldr	s0, [pc, #20]	; d0059a88 <expf+0xe8>
d0059a74:	e7a7      	b.n	d00599c6 <expf+0x26>
d0059a76:	bf00      	nop
d0059a78:	42b17217 	.word	0x42b17217
d0059a7c:	c2cff1b4 	.word	0xc2cff1b4
d0059a80:	c2ce8ecf 	.word	0xc2ce8ecf
d0059a84:	d005a4c0 	.word	0xd005a4c0
d0059a88:	00000000 	.word	0x00000000

d0059a8c <logf>:
d0059a8c:	ee10 3a10 	vmov	r3, s0
d0059a90:	f1b3 5f7e 	cmp.w	r3, #1065353216	; 0x3f800000
d0059a94:	b410      	push	{r4}
d0059a96:	d055      	beq.n	d0059b44 <logf+0xb8>
d0059a98:	f5a3 0200 	sub.w	r2, r3, #8388608	; 0x800000
d0059a9c:	f1b2 4ffe 	cmp.w	r2, #2130706432	; 0x7f000000
d0059aa0:	d31a      	bcc.n	d0059ad8 <logf+0x4c>
d0059aa2:	005a      	lsls	r2, r3, #1
d0059aa4:	d104      	bne.n	d0059ab0 <logf+0x24>
d0059aa6:	f85d 4b04 	ldr.w	r4, [sp], #4
d0059aaa:	2001      	movs	r0, #1
d0059aac:	f7ff bf58 	b.w	d0059960 <__math_divzerof>
d0059ab0:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d0059ab4:	d043      	beq.n	d0059b3e <logf+0xb2>
d0059ab6:	2b00      	cmp	r3, #0
d0059ab8:	db02      	blt.n	d0059ac0 <logf+0x34>
d0059aba:	f1b2 4f7f 	cmp.w	r2, #4278190080	; 0xff000000
d0059abe:	d303      	bcc.n	d0059ac8 <logf+0x3c>
d0059ac0:	f85d 4b04 	ldr.w	r4, [sp], #4
d0059ac4:	f7ff bf5c 	b.w	d0059980 <__math_invalidf>
d0059ac8:	eddf 7a20 	vldr	s15, [pc, #128]	; d0059b4c <logf+0xc0>
d0059acc:	ee20 0a27 	vmul.f32	s0, s0, s15
d0059ad0:	ee10 3a10 	vmov	r3, s0
d0059ad4:	f1a3 6338 	sub.w	r3, r3, #192937984	; 0xb800000
d0059ad8:	f103 4240 	add.w	r2, r3, #3221225472	; 0xc0000000
d0059adc:	491c      	ldr	r1, [pc, #112]	; (d0059b50 <logf+0xc4>)
d0059ade:	eebf 0b00 	vmov.f64	d0, #240	; 0xbf800000 -1.0
d0059ae2:	f502 024d 	add.w	r2, r2, #13434880	; 0xcd0000
d0059ae6:	f3c2 40c3 	ubfx	r0, r2, #19, #4
d0059aea:	0dd4      	lsrs	r4, r2, #23
d0059aec:	eb01 1000 	add.w	r0, r1, r0, lsl #4
d0059af0:	05e4      	lsls	r4, r4, #23
d0059af2:	ed90 6b00 	vldr	d6, [r0]
d0059af6:	1b1b      	subs	r3, r3, r4
d0059af8:	ee07 3a90 	vmov	s15, r3
d0059afc:	ed91 5b40 	vldr	d5, [r1, #256]	; 0x100
d0059b00:	eeb7 7ae7 	vcvt.f64.f32	d7, s15
d0059b04:	15d2      	asrs	r2, r2, #23
d0059b06:	eea6 0b07 	vfma.f64	d0, d6, d7
d0059b0a:	ed90 6b02 	vldr	d6, [r0, #8]
d0059b0e:	ee07 2a90 	vmov	s15, r2
d0059b12:	ed91 4b44 	vldr	d4, [r1, #272]	; 0x110
d0059b16:	eeb8 7be7 	vcvt.f64.s32	d7, s15
d0059b1a:	eea7 6b05 	vfma.f64	d6, d7, d5
d0059b1e:	ed91 7b46 	vldr	d7, [r1, #280]	; 0x118
d0059b22:	ee20 5b00 	vmul.f64	d5, d0, d0
d0059b26:	eea4 7b00 	vfma.f64	d7, d4, d0
d0059b2a:	ed91 4b42 	vldr	d4, [r1, #264]	; 0x108
d0059b2e:	ee30 0b06 	vadd.f64	d0, d0, d6
d0059b32:	eea4 7b05 	vfma.f64	d7, d4, d5
d0059b36:	eea5 0b07 	vfma.f64	d0, d5, d7
d0059b3a:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0059b3e:	f85d 4b04 	ldr.w	r4, [sp], #4
d0059b42:	4770      	bx	lr
d0059b44:	ed9f 0a03 	vldr	s0, [pc, #12]	; d0059b54 <logf+0xc8>
d0059b48:	e7f9      	b.n	d0059b3e <logf+0xb2>
d0059b4a:	bf00      	nop
d0059b4c:	4b000000 	.word	0x4b000000
d0059b50:	d005a608 	.word	0xd005a608
d0059b54:	00000000 	.word	0x00000000

d0059b58 <sinf_poly>:
d0059b58:	07cb      	lsls	r3, r1, #31
d0059b5a:	d412      	bmi.n	d0059b82 <sinf_poly+0x2a>
d0059b5c:	ee21 6b00 	vmul.f64	d6, d1, d0
d0059b60:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d0059b64:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d0059b68:	eea5 7b01 	vfma.f64	d7, d5, d1
d0059b6c:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d0059b70:	ee21 1b06 	vmul.f64	d1, d1, d6
d0059b74:	eea5 0b06 	vfma.f64	d0, d5, d6
d0059b78:	eea7 0b01 	vfma.f64	d0, d7, d1
d0059b7c:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d0059b80:	4770      	bx	lr
d0059b82:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d0059b86:	ee21 6b01 	vmul.f64	d6, d1, d1
d0059b8a:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d0059b8e:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d0059b92:	eea1 7b05 	vfma.f64	d7, d1, d5
d0059b96:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d0059b9a:	eea1 0b05 	vfma.f64	d0, d1, d5
d0059b9e:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d0059ba2:	ee21 1b06 	vmul.f64	d1, d1, d6
d0059ba6:	eea6 0b05 	vfma.f64	d0, d6, d5
d0059baa:	e7e5      	b.n	d0059b78 <sinf_poly+0x20>
d0059bac:	0000      	movs	r0, r0
	...

d0059bb0 <sinf>:
d0059bb0:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
d0059bb2:	ee10 4a10 	vmov	r4, s0
d0059bb6:	f3c4 530a 	ubfx	r3, r4, #20, #11
d0059bba:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d0059bbe:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d0059bc2:	eef0 7a40 	vmov.f32	s15, s0
d0059bc6:	ea4f 5214 	mov.w	r2, r4, lsr #20
d0059bca:	d218      	bcs.n	d0059bfe <sinf+0x4e>
d0059bcc:	ee26 1b06 	vmul.f64	d1, d6, d6
d0059bd0:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d0059bd4:	d20a      	bcs.n	d0059bec <sinf+0x3c>
d0059bd6:	f412 6fff 	tst.w	r2, #2040	; 0x7f8
d0059bda:	d103      	bne.n	d0059be4 <sinf+0x34>
d0059bdc:	eeb7 1bc1 	vcvt.f32.f64	s2, d1
d0059be0:	ed8d 1a01 	vstr	s2, [sp, #4]
d0059be4:	eeb0 0a67 	vmov.f32	s0, s15
d0059be8:	b003      	add	sp, #12
d0059bea:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0059bec:	483e      	ldr	r0, [pc, #248]	; (d0059ce8 <sinf+0x138>)
d0059bee:	eeb0 0b46 	vmov.f64	d0, d6
d0059bf2:	2100      	movs	r1, #0
d0059bf4:	b003      	add	sp, #12
d0059bf6:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0059bfa:	f7ff bfad 	b.w	d0059b58 <sinf_poly>
d0059bfe:	f240 422e 	movw	r2, #1070	; 0x42e
d0059c02:	4293      	cmp	r3, r2
d0059c04:	d824      	bhi.n	d0059c50 <sinf+0xa0>
d0059c06:	4b38      	ldr	r3, [pc, #224]	; (d0059ce8 <sinf+0x138>)
d0059c08:	ed93 7b08 	vldr	d7, [r3, #32]
d0059c0c:	ee26 7b07 	vmul.f64	d7, d6, d7
d0059c10:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d0059c14:	f103 0070 	add.w	r0, r3, #112	; 0x70
d0059c18:	ee17 1a90 	vmov	r1, s15
d0059c1c:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d0059c20:	1609      	asrs	r1, r1, #24
d0059c22:	ee07 1a90 	vmov	s15, r1
d0059c26:	f001 0203 	and.w	r2, r1, #3
d0059c2a:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d0059c2e:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d0059c32:	ed92 0b00 	vldr	d0, [r2]
d0059c36:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d0059c3a:	f011 0f02 	tst.w	r1, #2
d0059c3e:	eea5 6b47 	vfms.f64	d6, d5, d7
d0059c42:	bf08      	it	eq
d0059c44:	4618      	moveq	r0, r3
d0059c46:	ee26 1b06 	vmul.f64	d1, d6, d6
d0059c4a:	ee20 0b06 	vmul.f64	d0, d0, d6
d0059c4e:	e7d1      	b.n	d0059bf4 <sinf+0x44>
d0059c50:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d0059c54:	d23d      	bcs.n	d0059cd2 <sinf+0x122>
d0059c56:	4b25      	ldr	r3, [pc, #148]	; (d0059cec <sinf+0x13c>)
d0059c58:	f3c4 6283 	ubfx	r2, r4, #26, #4
d0059c5c:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d0059c60:	f3c4 0116 	ubfx	r1, r4, #0, #23
d0059c64:	6a06      	ldr	r6, [r0, #32]
d0059c66:	6900      	ldr	r0, [r0, #16]
d0059c68:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d0059c6c:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d0059c70:	40a9      	lsls	r1, r5
d0059c72:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d0059c76:	fba1 6706 	umull	r6, r7, r1, r6
d0059c7a:	fb05 f301 	mul.w	r3, r5, r1
d0059c7e:	463a      	mov	r2, r7
d0059c80:	fbe0 2301 	umlal	r2, r3, r0, r1
d0059c84:	1c11      	adds	r1, r2, #0
d0059c86:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d0059c8a:	2000      	movs	r0, #0
d0059c8c:	1a10      	subs	r0, r2, r0
d0059c8e:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d0059c92:	eb63 0101 	sbc.w	r1, r3, r1
d0059c96:	f000 f9b9 	bl	d005a00c <__aeabi_l2d>
d0059c9a:	0fb5      	lsrs	r5, r6, #30
d0059c9c:	4a12      	ldr	r2, [pc, #72]	; (d0059ce8 <sinf+0x138>)
d0059c9e:	eb05 73d4 	add.w	r3, r5, r4, lsr #31
d0059ca2:	ed9f 0b0f 	vldr	d0, [pc, #60]	; d0059ce0 <sinf+0x130>
d0059ca6:	ec41 0b17 	vmov	d7, r0, r1
d0059caa:	f003 0103 	and.w	r1, r3, #3
d0059cae:	eb02 01c1 	add.w	r1, r2, r1, lsl #3
d0059cb2:	ee27 0b00 	vmul.f64	d0, d7, d0
d0059cb6:	ed91 7b00 	vldr	d7, [r1]
d0059cba:	ee20 1b00 	vmul.f64	d1, d0, d0
d0059cbe:	f013 0f02 	tst.w	r3, #2
d0059cc2:	f102 0070 	add.w	r0, r2, #112	; 0x70
d0059cc6:	4629      	mov	r1, r5
d0059cc8:	bf08      	it	eq
d0059cca:	4610      	moveq	r0, r2
d0059ccc:	ee27 0b00 	vmul.f64	d0, d7, d0
d0059cd0:	e790      	b.n	d0059bf4 <sinf+0x44>
d0059cd2:	b003      	add	sp, #12
d0059cd4:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0059cd8:	f7ff be52 	b.w	d0059980 <__math_invalidf>
d0059cdc:	f3af 8000 	nop.w
d0059ce0:	54442d18 	.word	0x54442d18
d0059ce4:	3c1921fb 	.word	0x3c1921fb
d0059ce8:	d005a788 	.word	0xd005a788
d0059cec:	d005a728 	.word	0xd005a728

d0059cf0 <__aeabi_drsub>:
d0059cf0:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
d0059cf4:	e002      	b.n	d0059cfc <__adddf3>
d0059cf6:	bf00      	nop

d0059cf8 <__aeabi_dsub>:
d0059cf8:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

d0059cfc <__adddf3>:
d0059cfc:	b530      	push	{r4, r5, lr}
d0059cfe:	ea4f 0441 	mov.w	r4, r1, lsl #1
d0059d02:	ea4f 0543 	mov.w	r5, r3, lsl #1
d0059d06:	ea94 0f05 	teq	r4, r5
d0059d0a:	bf08      	it	eq
d0059d0c:	ea90 0f02 	teqeq	r0, r2
d0059d10:	bf1f      	itttt	ne
d0059d12:	ea54 0c00 	orrsne.w	ip, r4, r0
d0059d16:	ea55 0c02 	orrsne.w	ip, r5, r2
d0059d1a:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
d0059d1e:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d0059d22:	f000 80e2 	beq.w	d0059eea <__adddf3+0x1ee>
d0059d26:	ea4f 5454 	mov.w	r4, r4, lsr #21
d0059d2a:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
d0059d2e:	bfb8      	it	lt
d0059d30:	426d      	neglt	r5, r5
d0059d32:	dd0c      	ble.n	d0059d4e <__adddf3+0x52>
d0059d34:	442c      	add	r4, r5
d0059d36:	ea80 0202 	eor.w	r2, r0, r2
d0059d3a:	ea81 0303 	eor.w	r3, r1, r3
d0059d3e:	ea82 0000 	eor.w	r0, r2, r0
d0059d42:	ea83 0101 	eor.w	r1, r3, r1
d0059d46:	ea80 0202 	eor.w	r2, r0, r2
d0059d4a:	ea81 0303 	eor.w	r3, r1, r3
d0059d4e:	2d36      	cmp	r5, #54	; 0x36
d0059d50:	bf88      	it	hi
d0059d52:	bd30      	pophi	{r4, r5, pc}
d0059d54:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
d0059d58:	ea4f 3101 	mov.w	r1, r1, lsl #12
d0059d5c:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
d0059d60:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
d0059d64:	d002      	beq.n	d0059d6c <__adddf3+0x70>
d0059d66:	4240      	negs	r0, r0
d0059d68:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d0059d6c:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
d0059d70:	ea4f 3303 	mov.w	r3, r3, lsl #12
d0059d74:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
d0059d78:	d002      	beq.n	d0059d80 <__adddf3+0x84>
d0059d7a:	4252      	negs	r2, r2
d0059d7c:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
d0059d80:	ea94 0f05 	teq	r4, r5
d0059d84:	f000 80a7 	beq.w	d0059ed6 <__adddf3+0x1da>
d0059d88:	f1a4 0401 	sub.w	r4, r4, #1
d0059d8c:	f1d5 0e20 	rsbs	lr, r5, #32
d0059d90:	db0d      	blt.n	d0059dae <__adddf3+0xb2>
d0059d92:	fa02 fc0e 	lsl.w	ip, r2, lr
d0059d96:	fa22 f205 	lsr.w	r2, r2, r5
d0059d9a:	1880      	adds	r0, r0, r2
d0059d9c:	f141 0100 	adc.w	r1, r1, #0
d0059da0:	fa03 f20e 	lsl.w	r2, r3, lr
d0059da4:	1880      	adds	r0, r0, r2
d0059da6:	fa43 f305 	asr.w	r3, r3, r5
d0059daa:	4159      	adcs	r1, r3
d0059dac:	e00e      	b.n	d0059dcc <__adddf3+0xd0>
d0059dae:	f1a5 0520 	sub.w	r5, r5, #32
d0059db2:	f10e 0e20 	add.w	lr, lr, #32
d0059db6:	2a01      	cmp	r2, #1
d0059db8:	fa03 fc0e 	lsl.w	ip, r3, lr
d0059dbc:	bf28      	it	cs
d0059dbe:	f04c 0c02 	orrcs.w	ip, ip, #2
d0059dc2:	fa43 f305 	asr.w	r3, r3, r5
d0059dc6:	18c0      	adds	r0, r0, r3
d0059dc8:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
d0059dcc:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d0059dd0:	d507      	bpl.n	d0059de2 <__adddf3+0xe6>
d0059dd2:	f04f 0e00 	mov.w	lr, #0
d0059dd6:	f1dc 0c00 	rsbs	ip, ip, #0
d0059dda:	eb7e 0000 	sbcs.w	r0, lr, r0
d0059dde:	eb6e 0101 	sbc.w	r1, lr, r1
d0059de2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
d0059de6:	d31b      	bcc.n	d0059e20 <__adddf3+0x124>
d0059de8:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
d0059dec:	d30c      	bcc.n	d0059e08 <__adddf3+0x10c>
d0059dee:	0849      	lsrs	r1, r1, #1
d0059df0:	ea5f 0030 	movs.w	r0, r0, rrx
d0059df4:	ea4f 0c3c 	mov.w	ip, ip, rrx
d0059df8:	f104 0401 	add.w	r4, r4, #1
d0059dfc:	ea4f 5244 	mov.w	r2, r4, lsl #21
d0059e00:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
d0059e04:	f080 809a 	bcs.w	d0059f3c <__adddf3+0x240>
d0059e08:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
d0059e0c:	bf08      	it	eq
d0059e0e:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
d0059e12:	f150 0000 	adcs.w	r0, r0, #0
d0059e16:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
d0059e1a:	ea41 0105 	orr.w	r1, r1, r5
d0059e1e:	bd30      	pop	{r4, r5, pc}
d0059e20:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
d0059e24:	4140      	adcs	r0, r0
d0059e26:	eb41 0101 	adc.w	r1, r1, r1
d0059e2a:	3c01      	subs	r4, #1
d0059e2c:	bf28      	it	cs
d0059e2e:	f5b1 1f80 	cmpcs.w	r1, #1048576	; 0x100000
d0059e32:	d2e9      	bcs.n	d0059e08 <__adddf3+0x10c>
d0059e34:	f091 0f00 	teq	r1, #0
d0059e38:	bf04      	itt	eq
d0059e3a:	4601      	moveq	r1, r0
d0059e3c:	2000      	moveq	r0, #0
d0059e3e:	fab1 f381 	clz	r3, r1
d0059e42:	bf08      	it	eq
d0059e44:	3320      	addeq	r3, #32
d0059e46:	f1a3 030b 	sub.w	r3, r3, #11
d0059e4a:	f1b3 0220 	subs.w	r2, r3, #32
d0059e4e:	da0c      	bge.n	d0059e6a <__adddf3+0x16e>
d0059e50:	320c      	adds	r2, #12
d0059e52:	dd08      	ble.n	d0059e66 <__adddf3+0x16a>
d0059e54:	f102 0c14 	add.w	ip, r2, #20
d0059e58:	f1c2 020c 	rsb	r2, r2, #12
d0059e5c:	fa01 f00c 	lsl.w	r0, r1, ip
d0059e60:	fa21 f102 	lsr.w	r1, r1, r2
d0059e64:	e00c      	b.n	d0059e80 <__adddf3+0x184>
d0059e66:	f102 0214 	add.w	r2, r2, #20
d0059e6a:	bfd8      	it	le
d0059e6c:	f1c2 0c20 	rsble	ip, r2, #32
d0059e70:	fa01 f102 	lsl.w	r1, r1, r2
d0059e74:	fa20 fc0c 	lsr.w	ip, r0, ip
d0059e78:	bfdc      	itt	le
d0059e7a:	ea41 010c 	orrle.w	r1, r1, ip
d0059e7e:	4090      	lslle	r0, r2
d0059e80:	1ae4      	subs	r4, r4, r3
d0059e82:	bfa2      	ittt	ge
d0059e84:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
d0059e88:	4329      	orrge	r1, r5
d0059e8a:	bd30      	popge	{r4, r5, pc}
d0059e8c:	ea6f 0404 	mvn.w	r4, r4
d0059e90:	3c1f      	subs	r4, #31
d0059e92:	da1c      	bge.n	d0059ece <__adddf3+0x1d2>
d0059e94:	340c      	adds	r4, #12
d0059e96:	dc0e      	bgt.n	d0059eb6 <__adddf3+0x1ba>
d0059e98:	f104 0414 	add.w	r4, r4, #20
d0059e9c:	f1c4 0220 	rsb	r2, r4, #32
d0059ea0:	fa20 f004 	lsr.w	r0, r0, r4
d0059ea4:	fa01 f302 	lsl.w	r3, r1, r2
d0059ea8:	ea40 0003 	orr.w	r0, r0, r3
d0059eac:	fa21 f304 	lsr.w	r3, r1, r4
d0059eb0:	ea45 0103 	orr.w	r1, r5, r3
d0059eb4:	bd30      	pop	{r4, r5, pc}
d0059eb6:	f1c4 040c 	rsb	r4, r4, #12
d0059eba:	f1c4 0220 	rsb	r2, r4, #32
d0059ebe:	fa20 f002 	lsr.w	r0, r0, r2
d0059ec2:	fa01 f304 	lsl.w	r3, r1, r4
d0059ec6:	ea40 0003 	orr.w	r0, r0, r3
d0059eca:	4629      	mov	r1, r5
d0059ecc:	bd30      	pop	{r4, r5, pc}
d0059ece:	fa21 f004 	lsr.w	r0, r1, r4
d0059ed2:	4629      	mov	r1, r5
d0059ed4:	bd30      	pop	{r4, r5, pc}
d0059ed6:	f094 0f00 	teq	r4, #0
d0059eda:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
d0059ede:	bf06      	itte	eq
d0059ee0:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
d0059ee4:	3401      	addeq	r4, #1
d0059ee6:	3d01      	subne	r5, #1
d0059ee8:	e74e      	b.n	d0059d88 <__adddf3+0x8c>
d0059eea:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d0059eee:	bf18      	it	ne
d0059ef0:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d0059ef4:	d029      	beq.n	d0059f4a <__adddf3+0x24e>
d0059ef6:	ea94 0f05 	teq	r4, r5
d0059efa:	bf08      	it	eq
d0059efc:	ea90 0f02 	teqeq	r0, r2
d0059f00:	d005      	beq.n	d0059f0e <__adddf3+0x212>
d0059f02:	ea54 0c00 	orrs.w	ip, r4, r0
d0059f06:	bf04      	itt	eq
d0059f08:	4619      	moveq	r1, r3
d0059f0a:	4610      	moveq	r0, r2
d0059f0c:	bd30      	pop	{r4, r5, pc}
d0059f0e:	ea91 0f03 	teq	r1, r3
d0059f12:	bf1e      	ittt	ne
d0059f14:	2100      	movne	r1, #0
d0059f16:	2000      	movne	r0, #0
d0059f18:	bd30      	popne	{r4, r5, pc}
d0059f1a:	ea5f 5c54 	movs.w	ip, r4, lsr #21
d0059f1e:	d105      	bne.n	d0059f2c <__adddf3+0x230>
d0059f20:	0040      	lsls	r0, r0, #1
d0059f22:	4149      	adcs	r1, r1
d0059f24:	bf28      	it	cs
d0059f26:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
d0059f2a:	bd30      	pop	{r4, r5, pc}
d0059f2c:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
d0059f30:	bf3c      	itt	cc
d0059f32:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
d0059f36:	bd30      	popcc	{r4, r5, pc}
d0059f38:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d0059f3c:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
d0059f40:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
d0059f44:	f04f 0000 	mov.w	r0, #0
d0059f48:	bd30      	pop	{r4, r5, pc}
d0059f4a:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d0059f4e:	bf1a      	itte	ne
d0059f50:	4619      	movne	r1, r3
d0059f52:	4610      	movne	r0, r2
d0059f54:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
d0059f58:	bf1c      	itt	ne
d0059f5a:	460b      	movne	r3, r1
d0059f5c:	4602      	movne	r2, r0
d0059f5e:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
d0059f62:	bf06      	itte	eq
d0059f64:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
d0059f68:	ea91 0f03 	teqeq	r1, r3
d0059f6c:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
d0059f70:	bd30      	pop	{r4, r5, pc}
d0059f72:	bf00      	nop

d0059f74 <__aeabi_ui2d>:
d0059f74:	f090 0f00 	teq	r0, #0
d0059f78:	bf04      	itt	eq
d0059f7a:	2100      	moveq	r1, #0
d0059f7c:	4770      	bxeq	lr
d0059f7e:	b530      	push	{r4, r5, lr}
d0059f80:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0059f84:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0059f88:	f04f 0500 	mov.w	r5, #0
d0059f8c:	f04f 0100 	mov.w	r1, #0
d0059f90:	e750      	b.n	d0059e34 <__adddf3+0x138>
d0059f92:	bf00      	nop

d0059f94 <__aeabi_i2d>:
d0059f94:	f090 0f00 	teq	r0, #0
d0059f98:	bf04      	itt	eq
d0059f9a:	2100      	moveq	r1, #0
d0059f9c:	4770      	bxeq	lr
d0059f9e:	b530      	push	{r4, r5, lr}
d0059fa0:	f44f 6480 	mov.w	r4, #1024	; 0x400
d0059fa4:	f104 0432 	add.w	r4, r4, #50	; 0x32
d0059fa8:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
d0059fac:	bf48      	it	mi
d0059fae:	4240      	negmi	r0, r0
d0059fb0:	f04f 0100 	mov.w	r1, #0
d0059fb4:	e73e      	b.n	d0059e34 <__adddf3+0x138>
d0059fb6:	bf00      	nop

d0059fb8 <__aeabi_f2d>:
d0059fb8:	0042      	lsls	r2, r0, #1
d0059fba:	ea4f 01e2 	mov.w	r1, r2, asr #3
d0059fbe:	ea4f 0131 	mov.w	r1, r1, rrx
d0059fc2:	ea4f 7002 	mov.w	r0, r2, lsl #28
d0059fc6:	bf1f      	itttt	ne
d0059fc8:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
d0059fcc:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
d0059fd0:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
d0059fd4:	4770      	bxne	lr
d0059fd6:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
d0059fda:	bf08      	it	eq
d0059fdc:	4770      	bxeq	lr
d0059fde:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
d0059fe2:	bf04      	itt	eq
d0059fe4:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
d0059fe8:	4770      	bxeq	lr
d0059fea:	b530      	push	{r4, r5, lr}
d0059fec:	f44f 7460 	mov.w	r4, #896	; 0x380
d0059ff0:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d0059ff4:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
d0059ff8:	e71c      	b.n	d0059e34 <__adddf3+0x138>
d0059ffa:	bf00      	nop

d0059ffc <__aeabi_ul2d>:
d0059ffc:	ea50 0201 	orrs.w	r2, r0, r1
d005a000:	bf08      	it	eq
d005a002:	4770      	bxeq	lr
d005a004:	b530      	push	{r4, r5, lr}
d005a006:	f04f 0500 	mov.w	r5, #0
d005a00a:	e00a      	b.n	d005a022 <__aeabi_l2d+0x16>

d005a00c <__aeabi_l2d>:
d005a00c:	ea50 0201 	orrs.w	r2, r0, r1
d005a010:	bf08      	it	eq
d005a012:	4770      	bxeq	lr
d005a014:	b530      	push	{r4, r5, lr}
d005a016:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
d005a01a:	d502      	bpl.n	d005a022 <__aeabi_l2d+0x16>
d005a01c:	4240      	negs	r0, r0
d005a01e:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d005a022:	f44f 6480 	mov.w	r4, #1024	; 0x400
d005a026:	f104 0432 	add.w	r4, r4, #50	; 0x32
d005a02a:	ea5f 5c91 	movs.w	ip, r1, lsr #22
d005a02e:	f43f aed8 	beq.w	d0059de2 <__adddf3+0xe6>
d005a032:	f04f 0203 	mov.w	r2, #3
d005a036:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d005a03a:	bf18      	it	ne
d005a03c:	3203      	addne	r2, #3
d005a03e:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d005a042:	bf18      	it	ne
d005a044:	3203      	addne	r2, #3
d005a046:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
d005a04a:	f1c2 0320 	rsb	r3, r2, #32
d005a04e:	fa00 fc03 	lsl.w	ip, r0, r3
d005a052:	fa20 f002 	lsr.w	r0, r0, r2
d005a056:	fa01 fe03 	lsl.w	lr, r1, r3
d005a05a:	ea40 000e 	orr.w	r0, r0, lr
d005a05e:	fa21 f102 	lsr.w	r1, r1, r2
d005a062:	4414      	add	r4, r2
d005a064:	e6bd      	b.n	d0059de2 <__adddf3+0xe6>
d005a066:	bf00      	nop
d005a068:	46464952 	.word	0x46464952
d005a06c:	00000000 	.word	0x00000000
d005a070:	45564157 	.word	0x45564157
d005a074:	00000000 	.word	0x00000000
d005a078:	6d6f6f62 	.word	0x6d6f6f62
d005a07c:	6f6d2e64 	.word	0x6f6d2e64
d005a080:	00000064 	.word	0x00000064
d005a084:	6e756874 	.word	0x6e756874
d005a088:	31726564 	.word	0x31726564
d005a08c:	7661772e 	.word	0x7661772e
d005a090:	00000000 	.word	0x00000000
d005a094:	6e756874 	.word	0x6e756874
d005a098:	32726564 	.word	0x32726564
d005a09c:	7661772e 	.word	0x7661772e
d005a0a0:	00000000 	.word	0x00000000
d005a0a4:	616c7369 	.word	0x616c7369
d005a0a8:	2e78646e 	.word	0x2e78646e
d005a0ac:	64336273 	.word	0x64336273
d005a0b0:	00000000 	.word	0x00000000
d005a0b4:	72726163 	.word	0x72726163
d005a0b8:	2e726569 	.word	0x2e726569
d005a0bc:	64336273 	.word	0x64336273
d005a0c0:	00000000 	.word	0x00000000
d005a0c4:	70696873 	.word	0x70696873
d005a0c8:	732e3176 	.word	0x732e3176
d005a0cc:	00643362 	.word	0x00643362
d005a0d0:	74786574 	.word	0x74786574
d005a0d4:	3362732e 	.word	0x3362732e
d005a0d8:	00000064 	.word	0x00000064
d005a0dc:	3a535046 	.word	0x3a535046
d005a0e0:	2e756c25 	.word	0x2e756c25
d005a0e4:	6c323025 	.word	0x6c323025
d005a0e8:	4d202075 	.word	0x4d202075
d005a0ec:	33253a53 	.word	0x33253a53
d005a0f0:	252e756c 	.word	0x252e756c
d005a0f4:	756c3330 	.word	0x756c3330
d005a0f8:	50572020 	.word	0x50572020
d005a0fc:	7532253a 	.word	0x7532253a
d005a100:	52542020 	.word	0x52542020
d005a104:	253a5349 	.word	0x253a5349
d005a108:	0000756c 	.word	0x0000756c
d005a10c:	ff5516e3 	.word	0xff5516e3
d005a110:	ffffffff 	.word	0xffffffff
d005a114:	ffff0000 	.word	0xffff0000
d005a118:	ff00ff00 	.word	0xff00ff00
d005a11c:	ff0000ff 	.word	0xff0000ff
d005a120:	ffffff00 	.word	0xffffff00
d005a124:	ffff00ff 	.word	0xffff00ff
d005a128:	ff00ffff 	.word	0xff00ffff
d005a12c:	ff808080 	.word	0xff808080
d005a130:	ffff8000 	.word	0xffff8000
d005a134:	ff8000ff 	.word	0xff8000ff
d005a138:	ff0080ff 	.word	0xff0080ff
d005a13c:	ff80ff00 	.word	0xff80ff00
d005a140:	ffff0080 	.word	0xffff0080
d005a144:	ff00ff80 	.word	0xff00ff80
d005a148:	ffc0c0c0 	.word	0xffc0c0c0
d005a14c:	3f800000 	.word	0x3f800000
d005a150:	3f400000 	.word	0x3f400000
d005a154:	3f0ccccd 	.word	0x3f0ccccd
d005a158:	3eb33333 	.word	0x3eb33333
d005a15c:	3e4ccccd 	.word	0x3e4ccccd
d005a160:	bf800000 	.word	0xbf800000
d005a164:	bf000000 	.word	0xbf000000
d005a168:	3e99999a 	.word	0x3e99999a

d005a16c <museumRail.9297>:
d005a16c:	c2180000 42700000 3f800000 3f800000     ......pB...?...?
d005a17c:	00000000 c2180000 42900000 442f0000     ...........B../D
	...
d005a194:	c1f00000 43340000 44870000 00000000     ......4C...D....
d005a1a4:	3ecccccd 443e0000 433d0000 45014000     ...>..>D..=C.@.E
d005a1b4:	00000000 3ecccccd 44a6a000 42500000     .......>...D..PB
d005a1c4:	4491a000 00000000 3ecccccd 449d2000     ...D.......>. .D
d005a1d4:	43480000 c4208000 00000000 3ecccccd     ..HC.. ........>
d005a1e4:	44460000 438a8000 c4ce4000 00000000     ..FD...C.@......
d005a1f4:	3ecccccd 42100000 43dc0000 c4dac000     ...>...B...C....
d005a204:	00000000 3ecccccd 43150000 43dc0000     .......>...C...C
d005a214:	c3800000 00000000 3ecccccd c449c000     ...........>..I.
d005a224:	43440000 43d18000 00000000 3ecccccd     ..DC...C.......>
d005a234:	c487c000 43300000 43320000 00000000     ......0C..2C....
d005a244:	3ecccccd c4654000 42f00000 42be0000     ...>.@e....B...B
d005a254:	00000000 3ecccccd c3ab8000 42a60000     .......>.......B
d005a264:	c1b00000 00000000 3ecccccd c3580000     ...........>..X.
d005a274:	423c0000 424c0000 00000000 3ecccccd     ..<B..LB.......>
d005a284:	441fc000 423c0000 c23c0000 00000000     ...D..<B..<.....
d005a294:	3ecccccd 44e12000 43b80000 c2700000     ...>. .D...C..p.
d005a2a4:	40000000 3ecccccd 44dba000 43dc0000     ...@...>...D...C
d005a2b4:	44250000 00000000 3ecccccd 44090000     ..%D.......>...D
d005a2c4:	42fc0000 44856000 00000000 3ecccccd     ...B.`.D.......>
d005a2d4:	c2f80000 42a20000 44afe000 00000000     .......B...D....
d005a2e4:	3ecccccd c20c0000 42640000 4487a000     ...>......dB...D
d005a2f4:	00000000 3ecccccd c20c0000 42700000     .......>......pB
d005a304:	436b0000 00000000 3ecccccd c32d0000     ..kC.......>..-.
d005a314:	42700000 43420000 00000000 3ecccccd     ..pB..BC.......>

d005a324 <bayer4x4>:
d005a324:	0a020800 060e040c 09010b03 050d070f     ................
	...
d005a358:	3f800000 00000000 00000000 00000000     ...?............
d005a368:	3f800000 00000000 00000000 00000000     ...?............
d005a378:	3f800000 3a8312c5 3c23d70a 447a0000     ...?...:..#<..zD
d005a388:	43700000 43700000 43200000 3f2aaaab     ..pC..pC.. C..*?
	...
d005a3a4:	00000001 00000001 00000002 00000002     ................
d005a3b4:	00000003 00000003 00000000 00000004     ................
d005a3c4:	00000005 00000005 00000006 00000006     ................
d005a3d4:	00000007 00000007 00000004 00000000     ................
d005a3e4:	00000004 00000001 00000005 00000002     ................
d005a3f4:	00000006 00000003 00000007 00000001     ................
d005a404:	00000002 00000002 00000003 00000001     ................
d005a414:	00000004 00000002 00000004 00000003     ................
d005a424:	00000004                                ....

d005a428 <__sf_fake_stderr>:
	...

d005a448 <__sf_fake_stdin>:
	...

d005a468 <__sf_fake_stdout>:
	...

d005a488 <_global_impure_ptr>:
d005a488:	d005acc0 2b302d23 6c680020 6665004c     ....#-0+ .hlL.ef
d005a498:	47464567 32313000 36353433 41393837     gEFG.0123456789A
d005a4a8:	45444342 31300046 35343332 39383736     BCDEF.0123456789
d005a4b8:	64636261 00006665                       abcdef..

d005a4c0 <__exp2f_data>:
d005a4c0:	00000000 3ff00000 d3158574 3fefd9b0     .......?t......?
d005a4d0:	6cf9890f 3fefb558 d0125b51 3fef9301     ...lX..?Q[.....?
d005a4e0:	3c7d517b 3fef72b8 3168b9aa 3fef5487     {Q}<.r.?..h1.T.?
d005a4f0:	6e756238 3fef387a f51fdee1 3fef1e9d     8bunz8.?.......?
d005a500:	0a31b715 3fef06fe 373aa9cb 3feef1a7     ..1....?..:7...?
d005a510:	4c123422 3feedea6 6061892d 3feece08     "4.L...?-.a`...?
d005a520:	d5362a27 3feebfda 569d4f82 3feeb42b     '*6....?.O.V+..?
d005a530:	dd485429 3feeab07 b03a5585 3feea47e     )TH....?.U:.~..?
d005a540:	667f3bcd 3feea09e e8ec5f74 3fee9f75     .;.f...?t_..u..?
d005a550:	73eb0187 3feea114 994cce13 3feea589     ...s...?..L....?
d005a560:	422aa0db 3feeace5 b0cdc5e5 3feeb737     ..*B...?....7..?
d005a570:	82a3f090 3feec491 b23e255d 3feed503     .......?]%>....?
d005a580:	995ad3ad 3feee89f f2fb5e47 3feeff76     ..Z....?G^..v..?
d005a590:	dd85529c 3fef199b dcef9069 3fef3720     .R.....?i... 7.?
d005a5a0:	dcfba487 3fef5818 337b9b5f 3fef7c97     .....X.?_.{3.|.?
d005a5b0:	a2a490da 3fefa4af 5b6e4540 3fefd076     .......?@En[v..?
d005a5c0:	00000000 42e80000 4b912394 3fac6af8     .......B.#.K.j.?
d005a5d0:	50fac4f3 3fcebfce ff0c52d6 3fe62e42     ...P...?.R..B..?
d005a5e0:	00000000 43380000 652b82fe 40471547     ......8C..+eG.G@
d005a5f0:	4b912394 3ebc6af8 50fac4f3 3f2ebfce     .#.K.j.>...P...?
d005a600:	ff0c52d6 3f962e42                       .R..B..?

d005a608 <__logf_data>:
d005a608:	79f8f3be 3ff661ec 808caade bfd57bf7     ...y.a.?.....{..
d005a618:	4aaf883d 3ff571ed a7c06ddb bfd2bef0     =..J.q.?.m......
d005a628:	f0f010b0 3ff49539 7f513a67 bfd01eae     ....9..?g:Q.....
d005a638:	b0b80385 3ff3c995 a68224e9 bfcb31d8     .......?.$...1..
d005a648:	0c8864a5 3ff30d19 0ac07758 bfc6574f     .d.....?Xw..OW..
d005a658:	7b0b8ea0 3ff25e22 c79c8100 bfc1aa2b     ...{"^.?....+...
d005a668:	4a1a343f 3ff1bb4a ce8c0e5e bfba4e76     ?4.JJ..?^...vN..
d005a678:	f08ae5ba 3ff12358 5a611ccc bfb1973c     ....X#.?..aZ<...
d005a688:	419900a7 3ff0953f 38e10c1e bfa252f4     ...A?..?...8.R..
d005a698:	00000000 3ff00000 00000000 00000000     .......?........
d005a6a8:	fd9a47ac 3fee608c 5df25984 3faaa5aa     .G...`.?.Y.]...?
d005a6b8:	1f026aa0 3feca4b3 aa362eb4 3fbc5e53     .j.....?..6.S^.?
d005a6c8:	576afce6 3feb2036 7720db08 3fc526e5     ..jW6 .?.. w.&.?
d005a6d8:	63a1aa2d 3fe9c2d1 0d224770 3fcbc286     -..c...?pG"....?
d005a6e8:	037841ed 3fe886e6 c8a07ee1 3fd1058b     .Ax....?.~.....?
d005a6f8:	f5534862 3fe767dc 57b6ee09 3fd40430     bHS..g.?...W0..?
d005a708:	fefa39ef 3fe62e42 48b88334 bfd00ea3     .9..B..?4..H....
d005a718:	0be00b6a 3fd5575b f20a4123 bfdffffe     j...[W.?#A......

d005a728 <__inv_pio4>:
d005a728:	000000a2 0000a2f9 00a2f983 a2f9836e     ............n...
d005a738:	f9836e4e 836e4e44 6e4e4415 4e441529     Nn..DNn..DNn).DN
d005a748:	441529fc 1529fc27 29fc2757 fc2757d1     .).D'.).W'.).W'.
d005a758:	2757d1f5 57d1f534 d1f534dd f534ddc0     ..W'4..W.4....4.
d005a768:	34ddc0db ddc0db62 c0db6295 db629599     ...4b....b....b.
d005a778:	6295993c 95993c43 993c4390 3c439041     <..bC<...C<.A.C<

d005a788 <__sincosf_table>:
d005a788:	00000000 3ff00000 00000000 bff00000     .......?........
d005a798:	00000000 bff00000 00000000 3ff00000     ...............?
d005a7a8:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d005a7b8:	00000000 3ff00000 fd0c621c bfdfffff     .......?.b......
d005a7c8:	e1068f19 3fa55553 e89a359d bf56c087     ....SU.?.5....V.
d005a7d8:	027bf8c3 3ef99343 5995a603 bfc55554     ..{.C..>...YTU..
d005a7e8:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).
d005a7f8:	00000000 3ff00000 00000000 bff00000     .......?........
d005a808:	00000000 bff00000 00000000 3ff00000     ...............?
d005a818:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d005a828:	00000000 bff00000 fd0c621c 3fdfffff     .........b.....?
d005a838:	e1068f19 bfa55553 e89a359d 3f56c087     ....SU...5....V?
d005a848:	027bf8c3 bef99343 5995a603 bfc55554     ..{.C......YTU..
d005a858:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).

Disassembly of section .init:

d005a868 <_init>:
d005a868:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005a86a:	bf00      	nop

Disassembly of section .fini:

d005a86c <_fini>:
d005a86c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005a86e:	bf00      	nop
