
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
d005001e:	f00a fa23 	bl	d005a468 <setbuf>
d0050022:	6833      	ldr	r3, [r6, #0]
d0050024:	2100      	movs	r1, #0
d0050026:	68d8      	ldr	r0, [r3, #12]
d0050028:	f00a fa1e 	bl	d005a468 <setbuf>
d005002c:	4629      	mov	r1, r5
d005002e:	4620      	mov	r0, r4
d0050030:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0050034:	f001 bc28 	b.w	d0051888 <main>
d0050038:	d0090dcc 	.word	0xd0090dcc

d005003c <initMalloc>:
d005003c:	4902      	ldr	r1, [pc, #8]	; (d0050048 <initMalloc+0xc>)
d005003e:	4b03      	ldr	r3, [pc, #12]	; (d005004c <initMalloc+0x10>)
d0050040:	4a03      	ldr	r2, [pc, #12]	; (d0050050 <initMalloc+0x14>)
d0050042:	1a5b      	subs	r3, r3, r1
d0050044:	6013      	str	r3, [r2, #0]
d0050046:	4770      	bx	lr
d0050048:	d01332b0 	.word	0xd01332b0
d005004c:	d0600000 	.word	0xd0600000
d0050050:	d012b188 	.word	0xd012b188

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
d005009c:	f009 fe90 	bl	d0059dc0 <__errno>
d00500a0:	2209      	movs	r2, #9
d00500a2:	4603      	mov	r3, r0
d00500a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d00500a8:	601a      	str	r2, [r3, #0]
d00500aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d00500ac:	d0090e44 	.word	0xd0090e44
d00500b0:	2001f000 	.word	0x2001f000

d00500b4 <_read>:
d00500b4:	b508      	push	{r3, lr}
d00500b6:	f009 fe83 	bl	d0059dc0 <__errno>
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
d0050102:	f009 fe5d 	bl	d0059dc0 <__errno>
d0050106:	220c      	movs	r2, #12
d0050108:	4603      	mov	r3, r0
d005010a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d005010e:	601a      	str	r2, [r3, #0]
d0050110:	bd10      	pop	{r4, pc}
d0050112:	bf00      	nop
d0050114:	d0090e40 	.word	0xd0090e40
d0050118:	d01332b0 	.word	0xd01332b0
d005011c:	d0600000 	.word	0xd0600000

d0050120 <_isatty>:
d0050120:	2001      	movs	r0, #1
d0050122:	4770      	bx	lr

d0050124 <_exit>:
d0050124:	e7fe      	b.n	d0050124 <_exit>
d0050126:	bf00      	nop

d0050128 <_getpid>:
d0050128:	2001      	movs	r0, #1
d005012a:	4770      	bx	lr

d005012c <_kill>:
d005012c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0050130:	4770      	bx	lr
d0050132:	bf00      	nop

d0050134 <LoadSFX>:
d0050134:	b5f0      	push	{r4, r5, r6, r7, lr}
d0050136:	4c40      	ldr	r4, [pc, #256]	; (d0050238 <LoadSFX+0x104>)
d0050138:	460f      	mov	r7, r1
d005013a:	4601      	mov	r1, r0
d005013c:	b08f      	sub	sp, #60	; 0x3c
d005013e:	7925      	ldrb	r5, [r4, #4]
d0050140:	2201      	movs	r2, #1
d0050142:	7963      	ldrb	r3, [r4, #5]
d0050144:	79a0      	ldrb	r0, [r4, #6]
d0050146:	ea45 2303 	orr.w	r3, r5, r3, lsl #8
d005014a:	79e5      	ldrb	r5, [r4, #7]
d005014c:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0050150:	2000      	movs	r0, #0
d0050152:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d0050156:	681b      	ldr	r3, [r3, #0]
d0050158:	681b      	ldr	r3, [r3, #0]
d005015a:	4798      	blx	r3
d005015c:	bb00      	cbnz	r0, d00501a0 <LoadSFX+0x6c>
d005015e:	7921      	ldrb	r1, [r4, #4]
d0050160:	ab02      	add	r3, sp, #8
d0050162:	7962      	ldrb	r2, [r4, #5]
d0050164:	79a6      	ldrb	r6, [r4, #6]
d0050166:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
d005016a:	79e5      	ldrb	r5, [r4, #7]
d005016c:	a903      	add	r1, sp, #12
d005016e:	ea42 4606 	orr.w	r6, r2, r6, lsl #16
d0050172:	222c      	movs	r2, #44	; 0x2c
d0050174:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
d0050178:	682d      	ldr	r5, [r5, #0]
d005017a:	68ad      	ldr	r5, [r5, #8]
d005017c:	47a8      	blx	r5
d005017e:	a803      	add	r0, sp, #12
d0050180:	2204      	movs	r2, #4
d0050182:	492e      	ldr	r1, [pc, #184]	; (d005023c <LoadSFX+0x108>)
d0050184:	f00a f862 	bl	d005a24c <memcmp>
d0050188:	b950      	cbnz	r0, d00501a0 <LoadSFX+0x6c>
d005018a:	2204      	movs	r2, #4
d005018c:	492c      	ldr	r1, [pc, #176]	; (d0050240 <LoadSFX+0x10c>)
d005018e:	a805      	add	r0, sp, #20
d0050190:	f00a f85c 	bl	d005a24c <memcmp>
d0050194:	4605      	mov	r5, r0
d0050196:	b918      	cbnz	r0, d00501a0 <LoadSFX+0x6c>
d0050198:	f8bd 3020 	ldrh.w	r3, [sp, #32]
d005019c:	2b01      	cmp	r3, #1
d005019e:	d010      	beq.n	d00501c2 <LoadSFX+0x8e>
d00501a0:	7923      	ldrb	r3, [r4, #4]
d00501a2:	2000      	movs	r0, #0
d00501a4:	7962      	ldrb	r2, [r4, #5]
d00501a6:	79a1      	ldrb	r1, [r4, #6]
d00501a8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00501ac:	79e2      	ldrb	r2, [r4, #7]
d00501ae:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00501b2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00501b6:	681b      	ldr	r3, [r3, #0]
d00501b8:	68db      	ldr	r3, [r3, #12]
d00501ba:	4798      	blx	r3
d00501bc:	2000      	movs	r0, #0
d00501be:	b00f      	add	sp, #60	; 0x3c
d00501c0:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00501c2:	9a0d      	ldr	r2, [sp, #52]	; 0x34
d00501c4:	4610      	mov	r0, r2
d00501c6:	9201      	str	r2, [sp, #4]
d00501c8:	f00a f830 	bl	d005a22c <malloc>
d00501cc:	9a01      	ldr	r2, [sp, #4]
d00501ce:	4601      	mov	r1, r0
d00501d0:	6038      	str	r0, [r7, #0]
d00501d2:	b1f8      	cbz	r0, d0050214 <LoadSFX+0xe0>
d00501d4:	7920      	ldrb	r0, [r4, #4]
d00501d6:	ab02      	add	r3, sp, #8
d00501d8:	7966      	ldrb	r6, [r4, #5]
d00501da:	f894 c006 	ldrb.w	ip, [r4, #6]
d00501de:	ea40 2606 	orr.w	r6, r0, r6, lsl #8
d00501e2:	79e7      	ldrb	r7, [r4, #7]
d00501e4:	4628      	mov	r0, r5
d00501e6:	ea46 460c 	orr.w	r6, r6, ip, lsl #16
d00501ea:	ea46 6607 	orr.w	r6, r6, r7, lsl #24
d00501ee:	6836      	ldr	r6, [r6, #0]
d00501f0:	68b6      	ldr	r6, [r6, #8]
d00501f2:	47b0      	blx	r6
d00501f4:	7923      	ldrb	r3, [r4, #4]
d00501f6:	7962      	ldrb	r2, [r4, #5]
d00501f8:	4628      	mov	r0, r5
d00501fa:	79a1      	ldrb	r1, [r4, #6]
d00501fc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050200:	79e2      	ldrb	r2, [r4, #7]
d0050202:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0050206:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d005020a:	681b      	ldr	r3, [r3, #0]
d005020c:	68db      	ldr	r3, [r3, #12]
d005020e:	4798      	blx	r3
d0050210:	980d      	ldr	r0, [sp, #52]	; 0x34
d0050212:	e7d4      	b.n	d00501be <LoadSFX+0x8a>
d0050214:	7923      	ldrb	r3, [r4, #4]
d0050216:	7962      	ldrb	r2, [r4, #5]
d0050218:	79a5      	ldrb	r5, [r4, #6]
d005021a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d005021e:	79e2      	ldrb	r2, [r4, #7]
d0050220:	9001      	str	r0, [sp, #4]
d0050222:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0050226:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d005022a:	681b      	ldr	r3, [r3, #0]
d005022c:	68db      	ldr	r3, [r3, #12]
d005022e:	4798      	blx	r3
d0050230:	9901      	ldr	r1, [sp, #4]
d0050232:	4608      	mov	r0, r1
d0050234:	e7c3      	b.n	d00501be <LoadSFX+0x8a>
d0050236:	bf00      	nop
d0050238:	2001f000 	.word	0x2001f000
d005023c:	d005c068 	.word	0xd005c068
d0050240:	d005c070 	.word	0xd005c070

d0050244 <sr_steer_camera_to_tangent>:
d0050244:	b510      	push	{r4, lr}
d0050246:	ed2d 8b06 	vpush	{d8-d10}
d005024a:	ee20 9a00 	vmul.f32	s18, s0, s0
d005024e:	ed9f 6a4e 	vldr	s12, [pc, #312]	; d0050388 <sr_steer_camera_to_tangent+0x144>
d0050252:	ee61 aa01 	vmul.f32	s21, s2, s2
d0050256:	4604      	mov	r4, r0
d0050258:	eeb0 8a61 	vmov.f32	s16, s3
d005025c:	b084      	sub	sp, #16
d005025e:	eef0 7a49 	vmov.f32	s15, s18
d0050262:	4608      	mov	r0, r1
d0050264:	eef0 8a42 	vmov.f32	s17, s4
d0050268:	eee0 7aa0 	vfma.f32	s15, s1, s1
d005026c:	ee77 7aaa 	vadd.f32	s15, s15, s21
d0050270:	eef4 7ac6 	vcmpe.f32	s15, s12
d0050274:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050278:	f240 8081 	bls.w	d005037e <sr_steer_camera_to_tangent+0x13a>
d005027c:	ed9f 6a43 	vldr	s12, [pc, #268]	; d005038c <sr_steer_camera_to_tangent+0x148>
d0050280:	eef4 7ac6 	vcmpe.f32	s15, s12
d0050284:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050288:	d468      	bmi.n	d005035c <sr_steer_camera_to_tangent+0x118>
d005028a:	ed9f 6a41 	vldr	s12, [pc, #260]	; d0050390 <sr_steer_camera_to_tangent+0x14c>
d005028e:	eeb0 7a40 	vmov.f32	s14, s0
d0050292:	eeb0 aa60 	vmov.f32	s20, s1
d0050296:	eef4 7a46 	vcmp.f32	s15, s12
d005029a:	eef0 6a41 	vmov.f32	s13, s2
d005029e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00502a2:	dc5b      	bgt.n	d005035c <sr_steer_camera_to_tangent+0x118>
d00502a4:	ee39 9a2a 	vadd.f32	s18, s18, s21
d00502a8:	9000      	str	r0, [sp, #0]
d00502aa:	eef0 0a66 	vmov.f32	s1, s13
d00502ae:	eeb0 0a47 	vmov.f32	s0, s14
d00502b2:	f00b fba1 	bl	d005b9f8 <atan2f>
d00502b6:	eef1 0ac9 	vsqrt.f32	s1, s18
d00502ba:	eddf 7a36 	vldr	s15, [pc, #216]	; d0050394 <sr_steer_camera_to_tangent+0x150>
d00502be:	eef0 9a40 	vmov.f32	s19, s0
d00502c2:	eeb1 0a4a 	vneg.f32	s0, s20
d00502c6:	fec0 0aa7 	vmaxnm.f32	s1, s1, s15
d00502ca:	f00b fb95 	bl	d005b9f8 <atan2f>
d00502ce:	eef1 0a40 	vneg.f32	s1, s0
d00502d2:	9800      	ldr	r0, [sp, #0]
d00502d4:	ed94 7a0e 	vldr	s14, [r4, #56]	; 0x38
d00502d8:	edd4 7a10 	vldr	s15, [r4, #64]	; 0x40
d00502dc:	ee28 7a87 	vmul.f32	s14, s17, s14
d00502e0:	ee38 6a67 	vsub.f32	s12, s16, s15
d00502e4:	eef1 6a47 	vneg.f32	s13, s14
d00502e8:	eef4 6ac6 	vcmpe.f32	s13, s12
d00502ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00502f0:	dc01      	bgt.n	d00502f6 <sr_steer_camera_to_tangent+0xb2>
d00502f2:	fec6 6a47 	vminnm.f32	s13, s12, s14
d00502f6:	eeb0 8ac8 	vabs.f32	s16, s16
d00502fa:	ed9f 7a26 	vldr	s14, [pc, #152]	; d0050394 <sr_steer_camera_to_tangent+0x150>
d00502fe:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0050302:	eeb4 8ac7 	vcmpe.f32	s16, s14
d0050306:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005030a:	d50f      	bpl.n	d005032c <sr_steer_camera_to_tangent+0xe8>
d005030c:	ed94 2a11 	vldr	s4, [r4, #68]	; 0x44
d0050310:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0050314:	eddf 6a20 	vldr	s13, [pc, #128]	; d0050398 <sr_steer_camera_to_tangent+0x154>
d0050318:	ee28 2a82 	vmul.f32	s4, s17, s4
d005031c:	fe82 2a47 	vminnm.f32	s4, s4, s14
d0050320:	fe82 2a26 	vmaxnm.f32	s4, s4, s13
d0050324:	ee37 2a42 	vsub.f32	s4, s14, s4
d0050328:	ee67 7a82 	vmul.f32	s15, s15, s4
d005032c:	ed94 1a0f 	vldr	s2, [r4, #60]	; 0x3c
d0050330:	eeb1 7a41 	vneg.f32	s14, s2
d0050334:	eeb4 7ae7 	vcmpe.f32	s14, s15
d0050338:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005033c:	dc03      	bgt.n	d0050346 <sr_steer_camera_to_tangent+0x102>
d005033e:	fe81 7a67 	vminnm.f32	s14, s2, s15
d0050342:	eeb1 1a47 	vneg.f32	s2, s14
d0050346:	eeb0 0a69 	vmov.f32	s0, s19
d005034a:	ed84 7a10 	vstr	s14, [r4, #64]	; 0x40
d005034e:	b004      	add	sp, #16
d0050350:	ecbd 8b06 	vpop	{d8-d10}
d0050354:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0050358:	f005 bd10 	b.w	d0055d7c <cameraRotate>
d005035c:	eeb1 7ae7 	vsqrt.f32	s14, s15
d0050360:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0050364:	ee87 aa87 	vdiv.f32	s20, s15, s14
d0050368:	ee20 7a0a 	vmul.f32	s14, s0, s20
d005036c:	ee61 6a0a 	vmul.f32	s13, s2, s20
d0050370:	ee20 aa8a 	vmul.f32	s20, s1, s20
d0050374:	ee27 9a07 	vmul.f32	s18, s14, s14
d0050378:	ee66 aaa6 	vmul.f32	s21, s13, s13
d005037c:	e792      	b.n	d00502a4 <sr_steer_camera_to_tangent+0x60>
d005037e:	eddf 0a06 	vldr	s1, [pc, #24]	; d0050398 <sr_steer_camera_to_tangent+0x154>
d0050382:	eef0 9a60 	vmov.f32	s19, s1
d0050386:	e7a5      	b.n	d00502d4 <sr_steer_camera_to_tangent+0x90>
d0050388:	358637bd 	.word	0x358637bd
d005038c:	3f7fbe77 	.word	0x3f7fbe77
d0050390:	3f8020c5 	.word	0x3f8020c5
d0050394:	38d1b717 	.word	0x38d1b717
d0050398:	00000000 	.word	0x00000000

d005039c <sr_segment_dir>:
d005039c:	b088      	sub	sp, #32
d005039e:	2800      	cmp	r0, #0
d00503a0:	d050      	beq.n	d0050444 <sr_segment_dir+0xa8>
d00503a2:	6802      	ldr	r2, [r0, #0]
d00503a4:	2a00      	cmp	r2, #0
d00503a6:	d04d      	beq.n	d0050444 <sr_segment_dir+0xa8>
d00503a8:	6843      	ldr	r3, [r0, #4]
d00503aa:	2b01      	cmp	r3, #1
d00503ac:	dd4a      	ble.n	d0050444 <sr_segment_dir+0xa8>
d00503ae:	7c00      	ldrb	r0, [r0, #16]
d00503b0:	2800      	cmp	r0, #0
d00503b2:	d055      	beq.n	d0050460 <sr_segment_dir+0xc4>
d00503b4:	2900      	cmp	r1, #0
d00503b6:	da01      	bge.n	d00503bc <sr_segment_dir+0x20>
d00503b8:	18c9      	adds	r1, r1, r3
d00503ba:	d4fd      	bmi.n	d00503b8 <sr_segment_dir+0x1c>
d00503bc:	428b      	cmp	r3, r1
d00503be:	dc02      	bgt.n	d00503c6 <sr_segment_dir+0x2a>
d00503c0:	1ac9      	subs	r1, r1, r3
d00503c2:	428b      	cmp	r3, r1
d00503c4:	ddfc      	ble.n	d00503c0 <sr_segment_dir+0x24>
d00503c6:	1c48      	adds	r0, r1, #1
d00503c8:	4283      	cmp	r3, r0
d00503ca:	dd52      	ble.n	d0050472 <sr_segment_dir+0xd6>
d00503cc:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d00503d0:	eb02 0380 	add.w	r3, r2, r0, lsl #2
d00503d4:	eb01 0181 	add.w	r1, r1, r1, lsl #2
d00503d8:	ed93 7a01 	vldr	s14, [r3, #4]
d00503dc:	ed93 6a00 	vldr	s12, [r3]
d00503e0:	eb02 0181 	add.w	r1, r2, r1, lsl #2
d00503e4:	edd3 6a02 	vldr	s13, [r3, #8]
d00503e8:	eddf 5a33 	vldr	s11, [pc, #204]	; d00504b8 <sr_segment_dir+0x11c>
d00503ec:	edd1 7a01 	vldr	s15, [r1, #4]
d00503f0:	ed91 5a00 	vldr	s10, [r1]
d00503f4:	ee37 7a67 	vsub.f32	s14, s14, s15
d00503f8:	edd1 7a02 	vldr	s15, [r1, #8]
d00503fc:	ee36 6a45 	vsub.f32	s12, s12, s10
d0050400:	ee76 6ae7 	vsub.f32	s13, s13, s15
d0050404:	ee67 7a07 	vmul.f32	s15, s14, s14
d0050408:	eee6 7a06 	vfma.f32	s15, s12, s12
d005040c:	eee6 7aa6 	vfma.f32	s15, s13, s13
d0050410:	eef4 7ae5 	vcmpe.f32	s15, s11
d0050414:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050418:	d940      	bls.n	d005049c <sr_segment_dir+0x100>
d005041a:	eddf 5a28 	vldr	s11, [pc, #160]	; d00504bc <sr_segment_dir+0x120>
d005041e:	eef4 7ae5 	vcmpe.f32	s15, s11
d0050422:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050426:	d426      	bmi.n	d0050476 <sr_segment_dir+0xda>
d0050428:	eddf 5a25 	vldr	s11, [pc, #148]	; d00504c0 <sr_segment_dir+0x124>
d005042c:	eef4 7a65 	vcmp.f32	s15, s11
d0050430:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050434:	dc1f      	bgt.n	d0050476 <sr_segment_dir+0xda>
d0050436:	ed8d 6a05 	vstr	s12, [sp, #20]
d005043a:	ed8d 7a06 	vstr	s14, [sp, #24]
d005043e:	edcd 6a07 	vstr	s13, [sp, #28]
d0050442:	e005      	b.n	d0050450 <sr_segment_dir+0xb4>
d0050444:	2300      	movs	r3, #0
d0050446:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
d005044a:	9305      	str	r3, [sp, #20]
d005044c:	9207      	str	r2, [sp, #28]
d005044e:	9306      	str	r3, [sp, #24]
d0050450:	ed9d 0a05 	vldr	s0, [sp, #20]
d0050454:	eddd 0a06 	vldr	s1, [sp, #24]
d0050458:	ed9d 1a07 	vldr	s2, [sp, #28]
d005045c:	b008      	add	sp, #32
d005045e:	4770      	bx	lr
d0050460:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d0050464:	1e58      	subs	r0, r3, #1
d0050466:	4288      	cmp	r0, r1
d0050468:	dc01      	bgt.n	d005046e <sr_segment_dir+0xd2>
d005046a:	1e99      	subs	r1, r3, #2
d005046c:	e7ae      	b.n	d00503cc <sr_segment_dir+0x30>
d005046e:	1c48      	adds	r0, r1, #1
d0050470:	e7ac      	b.n	d00503cc <sr_segment_dir+0x30>
d0050472:	4613      	mov	r3, r2
d0050474:	e7ae      	b.n	d00503d4 <sr_segment_dir+0x38>
d0050476:	eef1 5ae7 	vsqrt.f32	s11, s15
d005047a:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d005047e:	eec5 7a25 	vdiv.f32	s15, s10, s11
d0050482:	ee26 6a27 	vmul.f32	s12, s12, s15
d0050486:	ee27 7a27 	vmul.f32	s14, s14, s15
d005048a:	ee66 6aa7 	vmul.f32	s13, s13, s15
d005048e:	ed8d 6a05 	vstr	s12, [sp, #20]
d0050492:	ed8d 7a06 	vstr	s14, [sp, #24]
d0050496:	edcd 6a07 	vstr	s13, [sp, #28]
d005049a:	e7d9      	b.n	d0050450 <sr_segment_dir+0xb4>
d005049c:	ed9f 7a09 	vldr	s14, [pc, #36]	; d00504c4 <sr_segment_dir+0x128>
d00504a0:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d00504a4:	eeb0 6a47 	vmov.f32	s12, s14
d00504a8:	ed8d 7a06 	vstr	s14, [sp, #24]
d00504ac:	edcd 6a07 	vstr	s13, [sp, #28]
d00504b0:	ed8d 6a05 	vstr	s12, [sp, #20]
d00504b4:	e7cc      	b.n	d0050450 <sr_segment_dir+0xb4>
d00504b6:	bf00      	nop
d00504b8:	358637bd 	.word	0x358637bd
d00504bc:	3f7fbe77 	.word	0x3f7fbe77
d00504c0:	3f8020c5 	.word	0x3f8020c5
d00504c4:	00000000 	.word	0x00000000

d00504c8 <splineRailBuildTable>:
d00504c8:	2800      	cmp	r0, #0
d00504ca:	d05d      	beq.n	d0050588 <splineRailBuildTable+0xc0>
d00504cc:	b5f0      	push	{r4, r5, r6, r7, lr}
d00504ce:	6807      	ldr	r7, [r0, #0]
d00504d0:	2f00      	cmp	r7, #0
d00504d2:	d054      	beq.n	d005057e <splineRailBuildTable+0xb6>
d00504d4:	6846      	ldr	r6, [r0, #4]
d00504d6:	2e01      	cmp	r6, #1
d00504d8:	dd51      	ble.n	d005057e <splineRailBuildTable+0xb6>
d00504da:	7c03      	ldrb	r3, [r0, #16]
d00504dc:	2b00      	cmp	r3, #0
d00504de:	d04f      	beq.n	d0050580 <splineRailBuildTable+0xb8>
d00504e0:	1c72      	adds	r2, r6, #1
d00504e2:	46b6      	mov	lr, r6
d00504e4:	f242 0154 	movw	r1, #8276	; 0x2054
d00504e8:	eddf 7a28 	vldr	s15, [pc, #160]	; d005058c <splineRailBuildTable+0xc4>
d00504ec:	f1b3 0c00 	subs.w	ip, r3, #0
d00504f0:	f242 0458 	movw	r4, #8280	; 0x2058
d00504f4:	4401      	add	r1, r0
d00504f6:	6502      	str	r2, [r0, #80]	; 0x50
d00504f8:	edc0 7a15 	vstr	s15, [r0, #84]	; 0x54
d00504fc:	eef0 5a67 	vmov.f32	s11, s15
d0050500:	bf18      	it	ne
d0050502:	f04f 0c01 	movne.w	ip, #1
d0050506:	4404      	add	r4, r0
d0050508:	f107 0314 	add.w	r3, r7, #20
d005050c:	f100 0558 	add.w	r5, r0, #88	; 0x58
d0050510:	2200      	movs	r2, #0
d0050512:	edc1 7a00 	vstr	s15, [r1]
d0050516:	e02a      	b.n	d005056e <splineRailBuildTable+0xa6>
d0050518:	f1bc 0f00 	cmp.w	ip, #0
d005051c:	d02b      	beq.n	d0050576 <splineRailBuildTable+0xae>
d005051e:	ed13 7a04 	vldr	s14, [r3, #-16]
d0050522:	4596      	cmp	lr, r2
d0050524:	edd1 7a01 	vldr	s15, [r1, #4]
d0050528:	f103 0314 	add.w	r3, r3, #20
d005052c:	ed13 6a0a 	vldr	s12, [r3, #-40]	; 0xffffffd8
d0050530:	ee77 7ac7 	vsub.f32	s15, s15, s14
d0050534:	edd1 6a00 	vldr	s13, [r1]
d0050538:	ed91 7a02 	vldr	s14, [r1, #8]
d005053c:	ee76 6ac6 	vsub.f32	s13, s13, s12
d0050540:	ed13 6a08 	vldr	s12, [r3, #-32]	; 0xffffffe0
d0050544:	ee67 7aa7 	vmul.f32	s15, s15, s15
d0050548:	ee37 7a46 	vsub.f32	s14, s14, s12
d005054c:	ee06 2a10 	vmov	s12, r2
d0050550:	eee6 7aa6 	vfma.f32	s15, s13, s13
d0050554:	eeb8 6ac6 	vcvt.f32.s32	s12, s12
d0050558:	eca5 6a01 	vstmia	r5!, {s12}
d005055c:	eee7 7a07 	vfma.f32	s15, s14, s14
d0050560:	eeb1 7ae7 	vsqrt.f32	s14, s15
d0050564:	ee75 5a87 	vadd.f32	s11, s11, s14
d0050568:	ece4 5a01 	vstmia	r4!, {s11}
d005056c:	d005      	beq.n	d005057a <splineRailBuildTable+0xb2>
d005056e:	3201      	adds	r2, #1
d0050570:	4639      	mov	r1, r7
d0050572:	4296      	cmp	r6, r2
d0050574:	ddd0      	ble.n	d0050518 <splineRailBuildTable+0x50>
d0050576:	4619      	mov	r1, r3
d0050578:	e7d1      	b.n	d005051e <splineRailBuildTable+0x56>
d005057a:	edc0 5a13 	vstr	s11, [r0, #76]	; 0x4c
d005057e:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0050580:	f106 3eff 	add.w	lr, r6, #4294967295	; 0xffffffff
d0050584:	4632      	mov	r2, r6
d0050586:	e7ad      	b.n	d00504e4 <splineRailBuildTable+0x1c>
d0050588:	4770      	bx	lr
d005058a:	bf00      	nop
d005058c:	00000000 	.word	0x00000000

d0050590 <splineRailDistanceToT>:
d0050590:	2800      	cmp	r0, #0
d0050592:	d053      	beq.n	d005063c <splineRailDistanceToT+0xac>
d0050594:	b430      	push	{r4, r5}
d0050596:	6844      	ldr	r4, [r0, #4]
d0050598:	2c01      	cmp	r4, #1
d005059a:	dd4b      	ble.n	d0050634 <splineRailDistanceToT+0xa4>
d005059c:	7c03      	ldrb	r3, [r0, #16]
d005059e:	6d05      	ldr	r5, [r0, #80]	; 0x50
d00505a0:	b3c3      	cbz	r3, d0050614 <splineRailDistanceToT+0x84>
d00505a2:	2d01      	cmp	r5, #1
d00505a4:	dd46      	ble.n	d0050634 <splineRailDistanceToT+0xa4>
d00505a6:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d00505aa:	edd0 7a13 	vldr	s15, [r0, #76]	; 0x4c
d00505ae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00505b2:	d506      	bpl.n	d00505c2 <splineRailDistanceToT+0x32>
d00505b4:	ee30 0a27 	vadd.f32	s0, s0, s15
d00505b8:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d00505bc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00505c0:	d4f8      	bmi.n	d00505b4 <splineRailDistanceToT+0x24>
d00505c2:	eef4 7ac0 	vcmpe.f32	s15, s0
d00505c6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00505ca:	d806      	bhi.n	d00505da <splineRailDistanceToT+0x4a>
d00505cc:	ee30 0a67 	vsub.f32	s0, s0, s15
d00505d0:	eeb4 0ae7 	vcmpe.f32	s0, s15
d00505d4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00505d8:	daf8      	bge.n	d00505cc <splineRailDistanceToT+0x3c>
d00505da:	f242 0154 	movw	r1, #8276	; 0x2054
d00505de:	f242 0258 	movw	r2, #8280	; 0x2058
d00505e2:	2300      	movs	r3, #0
d00505e4:	4401      	add	r1, r0
d00505e6:	4402      	add	r2, r0
d00505e8:	ed91 7a00 	vldr	s14, [r1]
d00505ec:	eef0 7a47 	vmov.f32	s15, s14
d00505f0:	ecb2 7a01 	vldmia	r2!, {s14}
d00505f4:	1c98      	adds	r0, r3, #2
d00505f6:	1c59      	adds	r1, r3, #1
d00505f8:	eeb4 0ac7 	vcmpe.f32	s0, s14
d00505fc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050600:	d91f      	bls.n	d0050642 <splineRailDistanceToT+0xb2>
d0050602:	4285      	cmp	r5, r0
d0050604:	460b      	mov	r3, r1
d0050606:	dcf1      	bgt.n	d00505ec <splineRailDistanceToT+0x5c>
d0050608:	ee07 4a90 	vmov	s15, r4
d005060c:	bc30      	pop	{r4, r5}
d005060e:	eeb8 0ae7 	vcvt.f32.s32	s0, s15
d0050612:	4770      	bx	lr
d0050614:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0050618:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005061c:	d90a      	bls.n	d0050634 <splineRailDistanceToT+0xa4>
d005061e:	2d01      	cmp	r5, #1
d0050620:	dd08      	ble.n	d0050634 <splineRailDistanceToT+0xa4>
d0050622:	edd0 7a13 	vldr	s15, [r0, #76]	; 0x4c
d0050626:	3c01      	subs	r4, #1
d0050628:	eef4 7ac0 	vcmpe.f32	s15, s0
d005062c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050630:	d8d3      	bhi.n	d00505da <splineRailDistanceToT+0x4a>
d0050632:	e7e9      	b.n	d0050608 <splineRailDistanceToT+0x78>
d0050634:	ed9f 0a0f 	vldr	s0, [pc, #60]	; d0050674 <splineRailDistanceToT+0xe4>
d0050638:	bc30      	pop	{r4, r5}
d005063a:	4770      	bx	lr
d005063c:	ed9f 0a0d 	vldr	s0, [pc, #52]	; d0050674 <splineRailDistanceToT+0xe4>
d0050640:	4770      	bx	lr
d0050642:	ee37 7a67 	vsub.f32	s14, s14, s15
d0050646:	eddf 6a0c 	vldr	s13, [pc, #48]	; d0050678 <splineRailDistanceToT+0xe8>
d005064a:	eeb4 7ae6 	vcmpe.f32	s14, s13
d005064e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050652:	dd0b      	ble.n	d005066c <splineRailDistanceToT+0xdc>
d0050654:	ee70 7a67 	vsub.f32	s15, s0, s15
d0050658:	eec7 6a87 	vdiv.f32	s13, s15, s14
d005065c:	ee07 3a90 	vmov	s15, r3
d0050660:	eeb8 0ae7 	vcvt.f32.s32	s0, s15
d0050664:	bc30      	pop	{r4, r5}
d0050666:	ee30 0a26 	vadd.f32	s0, s0, s13
d005066a:	4770      	bx	lr
d005066c:	eddf 6a01 	vldr	s13, [pc, #4]	; d0050674 <splineRailDistanceToT+0xe4>
d0050670:	e7f4      	b.n	d005065c <splineRailDistanceToT+0xcc>
d0050672:	bf00      	nop
d0050674:	00000000 	.word	0x00000000
d0050678:	358637bd 	.word	0x358637bd

d005067c <splineRailSamplePos>:
d005067c:	b088      	sub	sp, #32
d005067e:	2800      	cmp	r0, #0
d0050680:	d049      	beq.n	d0050716 <splineRailSamplePos+0x9a>
d0050682:	6803      	ldr	r3, [r0, #0]
d0050684:	2b00      	cmp	r3, #0
d0050686:	d046      	beq.n	d0050716 <splineRailSamplePos+0x9a>
d0050688:	6842      	ldr	r2, [r0, #4]
d005068a:	2a00      	cmp	r2, #0
d005068c:	dd43      	ble.n	d0050716 <splineRailSamplePos+0x9a>
d005068e:	2a01      	cmp	r2, #1
d0050690:	d052      	beq.n	d0050738 <splineRailSamplePos+0xbc>
d0050692:	7c01      	ldrb	r1, [r0, #16]
d0050694:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0050698:	2900      	cmp	r1, #0
d005069a:	d153      	bne.n	d0050744 <splineRailSamplePos+0xc8>
d005069c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00506a0:	d94a      	bls.n	d0050738 <splineRailSamplePos+0xbc>
d00506a2:	1e51      	subs	r1, r2, #1
d00506a4:	ee07 1a90 	vmov	s15, r1
d00506a8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00506ac:	eef4 7ac0 	vcmpe.f32	s15, s0
d00506b0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00506b4:	d93b      	bls.n	d005072e <splineRailSamplePos+0xb2>
d00506b6:	eefd 7ac0 	vcvt.s32.f32	s15, s0
d00506ba:	ee17 0a90 	vmov	r0, s15
d00506be:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00506c2:	1c42      	adds	r2, r0, #1
d00506c4:	ee30 0a67 	vsub.f32	s0, s0, s15
d00506c8:	eb02 0282 	add.w	r2, r2, r2, lsl #2
d00506cc:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d00506d0:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d00506d4:	ed92 5a00 	vldr	s10, [r2]
d00506d8:	edd2 5a01 	vldr	s11, [r2, #4]
d00506dc:	eb03 0380 	add.w	r3, r3, r0, lsl #2
d00506e0:	ed92 6a02 	vldr	s12, [r2, #8]
d00506e4:	edd3 6a00 	vldr	s13, [r3]
d00506e8:	ed93 7a01 	vldr	s14, [r3, #4]
d00506ec:	edd3 7a02 	vldr	s15, [r3, #8]
d00506f0:	ee35 5a66 	vsub.f32	s10, s10, s13
d00506f4:	ee75 5ac7 	vsub.f32	s11, s11, s14
d00506f8:	ee36 6a67 	vsub.f32	s12, s12, s15
d00506fc:	eee5 6a00 	vfma.f32	s13, s10, s0
d0050700:	eea5 7a80 	vfma.f32	s14, s11, s0
d0050704:	eee6 7a00 	vfma.f32	s15, s12, s0
d0050708:	edcd 6a05 	vstr	s13, [sp, #20]
d005070c:	ed8d 7a06 	vstr	s14, [sp, #24]
d0050710:	edcd 7a07 	vstr	s15, [sp, #28]
d0050714:	e003      	b.n	d005071e <splineRailSamplePos+0xa2>
d0050716:	2300      	movs	r3, #0
d0050718:	9305      	str	r3, [sp, #20]
d005071a:	9306      	str	r3, [sp, #24]
d005071c:	9307      	str	r3, [sp, #28]
d005071e:	ed9d 0a05 	vldr	s0, [sp, #20]
d0050722:	eddd 0a06 	vldr	s1, [sp, #24]
d0050726:	ed9d 1a07 	vldr	s2, [sp, #28]
d005072a:	b008      	add	sp, #32
d005072c:	4770      	bx	lr
d005072e:	eb02 0282 	add.w	r2, r2, r2, lsl #2
d0050732:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d0050736:	3b14      	subs	r3, #20
d0050738:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d005073c:	ab08      	add	r3, sp, #32
d005073e:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0050742:	e7ec      	b.n	d005071e <splineRailSamplePos+0xa2>
d0050744:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050748:	d528      	bpl.n	d005079c <splineRailSamplePos+0x120>
d005074a:	ee07 2a90 	vmov	s15, r2
d005074e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050752:	ee30 0a27 	vadd.f32	s0, s0, s15
d0050756:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d005075a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005075e:	d4f8      	bmi.n	d0050752 <splineRailSamplePos+0xd6>
d0050760:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0050764:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050768:	db06      	blt.n	d0050778 <splineRailSamplePos+0xfc>
d005076a:	ee30 0a67 	vsub.f32	s0, s0, s15
d005076e:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0050772:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050776:	daf8      	bge.n	d005076a <splineRailSamplePos+0xee>
d0050778:	eefd 7ac0 	vcvt.s32.f32	s15, s0
d005077c:	ee17 0a90 	vmov	r0, s15
d0050780:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050784:	1c41      	adds	r1, r0, #1
d0050786:	ee30 0a67 	vsub.f32	s0, s0, s15
d005078a:	428a      	cmp	r2, r1
d005078c:	dc01      	bgt.n	d0050792 <splineRailSamplePos+0x116>
d005078e:	461a      	mov	r2, r3
d0050790:	e79e      	b.n	d00506d0 <splineRailSamplePos+0x54>
d0050792:	eb01 0181 	add.w	r1, r1, r1, lsl #2
d0050796:	eb03 0281 	add.w	r2, r3, r1, lsl #2
d005079a:	e799      	b.n	d00506d0 <splineRailSamplePos+0x54>
d005079c:	ee07 2a90 	vmov	s15, r2
d00507a0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00507a4:	e7dc      	b.n	d0050760 <splineRailSamplePos+0xe4>
d00507a6:	bf00      	nop

d00507a8 <splineRailSampleTangent>:
d00507a8:	b510      	push	{r4, lr}
d00507aa:	b08a      	sub	sp, #40	; 0x28
d00507ac:	2800      	cmp	r0, #0
d00507ae:	f000 8097 	beq.w	d00508e0 <splineRailSampleTangent+0x138>
d00507b2:	6803      	ldr	r3, [r0, #0]
d00507b4:	4604      	mov	r4, r0
d00507b6:	2b00      	cmp	r3, #0
d00507b8:	f000 8092 	beq.w	d00508e0 <splineRailSampleTangent+0x138>
d00507bc:	6843      	ldr	r3, [r0, #4]
d00507be:	2b01      	cmp	r3, #1
d00507c0:	f340 80a9 	ble.w	d0050916 <splineRailSampleTangent+0x16e>
d00507c4:	7c02      	ldrb	r2, [r0, #16]
d00507c6:	2a00      	cmp	r2, #0
d00507c8:	f000 8091 	beq.w	d00508ee <splineRailSampleTangent+0x146>
d00507cc:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d00507d0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00507d4:	f140 80ba 	bpl.w	d005094c <splineRailSampleTangent+0x1a4>
d00507d8:	ee07 3a90 	vmov	s15, r3
d00507dc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00507e0:	ee30 0a27 	vadd.f32	s0, s0, s15
d00507e4:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d00507e8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00507ec:	d4f8      	bmi.n	d00507e0 <splineRailSampleTangent+0x38>
d00507ee:	eeb4 0ae7 	vcmpe.f32	s0, s15
d00507f2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00507f6:	db06      	blt.n	d0050806 <splineRailSampleTangent+0x5e>
d00507f8:	ee30 0a67 	vsub.f32	s0, s0, s15
d00507fc:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0050800:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050804:	daf8      	bge.n	d00507f8 <splineRailSampleTangent+0x50>
d0050806:	eebd 3ac0 	vcvt.s32.f32	s6, s0
d005080a:	4620      	mov	r0, r4
d005080c:	eef8 4ac3 	vcvt.f32.s32	s9, s6
d0050810:	ee13 1a10 	vmov	r1, s6
d0050814:	ee70 4a64 	vsub.f32	s9, s0, s9
d0050818:	f7ff fdc0 	bl	d005039c <sr_segment_dir>
d005081c:	ee13 1a10 	vmov	r1, s6
d0050820:	4620      	mov	r0, r4
d0050822:	eeb0 3a40 	vmov.f32	s6, s0
d0050826:	3101      	adds	r1, #1
d0050828:	eeb0 4a60 	vmov.f32	s8, s1
d005082c:	eef0 3a41 	vmov.f32	s7, s2
d0050830:	f7ff fdb4 	bl	d005039c <sr_segment_dir>
d0050834:	eddf 7a48 	vldr	s15, [pc, #288]	; d0050958 <splineRailSampleTangent+0x1b0>
d0050838:	eeb0 7a40 	vmov.f32	s14, s0
d005083c:	eef4 4ae7 	vcmpe.f32	s9, s15
d0050840:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050844:	d93e      	bls.n	d00508c4 <splineRailSampleTangent+0x11c>
d0050846:	ee74 7ae7 	vsub.f32	s15, s9, s15
d005084a:	ed9f 0a44 	vldr	s0, [pc, #272]	; d005095c <splineRailSampleTangent+0x1b4>
d005084e:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0050852:	eddf 5a43 	vldr	s11, [pc, #268]	; d0050960 <splineRailSampleTangent+0x1b8>
d0050856:	eef0 4a00 	vmov.f32	s9, #0	; 0x40000000  2.0
d005085a:	ed9f 5a42 	vldr	s10, [pc, #264]	; d0050964 <splineRailSampleTangent+0x1bc>
d005085e:	ee67 7a80 	vmul.f32	s15, s15, s0
d0050862:	eef0 6a08 	vmov.f32	s13, #8	; 0x40400000  3.0
d0050866:	ee70 0ac4 	vsub.f32	s1, s1, s8
d005086a:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d005086e:	fec7 7aa5 	vmaxnm.f32	s15, s15, s11
d0050872:	eee7 6ae4 	vfms.f32	s13, s15, s9
d0050876:	ee67 7aa7 	vmul.f32	s15, s15, s15
d005087a:	ee37 7a43 	vsub.f32	s14, s14, s6
d005087e:	ee31 1a63 	vsub.f32	s2, s2, s7
d0050882:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0050886:	eea7 4aa0 	vfma.f32	s8, s15, s1
d005088a:	eea7 3a87 	vfma.f32	s6, s15, s14
d005088e:	eee7 3a81 	vfma.f32	s7, s15, s2
d0050892:	ee64 7a04 	vmul.f32	s15, s8, s8
d0050896:	eee3 7a03 	vfma.f32	s15, s6, s6
d005089a:	eee3 7aa3 	vfma.f32	s15, s7, s7
d005089e:	eef4 7ac5 	vcmpe.f32	s15, s10
d00508a2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00508a6:	d93d      	bls.n	d0050924 <splineRailSampleTangent+0x17c>
d00508a8:	ed9f 7a2f 	vldr	s14, [pc, #188]	; d0050968 <splineRailSampleTangent+0x1c0>
d00508ac:	eef4 7ac7 	vcmpe.f32	s15, s14
d00508b0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00508b4:	d43d      	bmi.n	d0050932 <splineRailSampleTangent+0x18a>
d00508b6:	ed9f 7a2d 	vldr	s14, [pc, #180]	; d005096c <splineRailSampleTangent+0x1c4>
d00508ba:	eef4 7a47 	vcmp.f32	s15, s14
d00508be:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00508c2:	dc36      	bgt.n	d0050932 <splineRailSampleTangent+0x18a>
d00508c4:	ed8d 3a07 	vstr	s6, [sp, #28]
d00508c8:	ed8d 4a08 	vstr	s8, [sp, #32]
d00508cc:	edcd 3a09 	vstr	s7, [sp, #36]	; 0x24
d00508d0:	ed9d 0a07 	vldr	s0, [sp, #28]
d00508d4:	eddd 0a08 	vldr	s1, [sp, #32]
d00508d8:	ed9d 1a09 	vldr	s2, [sp, #36]	; 0x24
d00508dc:	b00a      	add	sp, #40	; 0x28
d00508de:	bd10      	pop	{r4, pc}
d00508e0:	2300      	movs	r3, #0
d00508e2:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
d00508e6:	9307      	str	r3, [sp, #28]
d00508e8:	9209      	str	r2, [sp, #36]	; 0x24
d00508ea:	9308      	str	r3, [sp, #32]
d00508ec:	e7f0      	b.n	d00508d0 <splineRailSampleTangent+0x128>
d00508ee:	3b01      	subs	r3, #1
d00508f0:	ed9f 7a1b 	vldr	s14, [pc, #108]	; d0050960 <splineRailSampleTangent+0x1b8>
d00508f4:	ee07 3a90 	vmov	s15, r3
d00508f8:	fe80 0a07 	vmaxnm.f32	s0, s0, s14
d00508fc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050900:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0050904:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050908:	f6ff af7d 	blt.w	d0050806 <splineRailSampleTangent+0x5e>
d005090c:	ed9f 0a18 	vldr	s0, [pc, #96]	; d0050970 <splineRailSampleTangent+0x1c8>
d0050910:	ee37 0ac0 	vsub.f32	s0, s15, s0
d0050914:	e777      	b.n	d0050806 <splineRailSampleTangent+0x5e>
d0050916:	ed9f 4a12 	vldr	s8, [pc, #72]	; d0050960 <splineRailSampleTangent+0x1b8>
d005091a:	eef7 3a00 	vmov.f32	s7, #112	; 0x3f800000  1.0
d005091e:	eeb0 3a44 	vmov.f32	s6, s8
d0050922:	e7cf      	b.n	d00508c4 <splineRailSampleTangent+0x11c>
d0050924:	eeb0 4a65 	vmov.f32	s8, s11
d0050928:	eef0 3a46 	vmov.f32	s7, s12
d005092c:	eeb0 3a65 	vmov.f32	s6, s11
d0050930:	e7c8      	b.n	d00508c4 <splineRailSampleTangent+0x11c>
d0050932:	eeb1 7ae7 	vsqrt.f32	s14, s15
d0050936:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d005093a:	eec6 7a87 	vdiv.f32	s15, s13, s14
d005093e:	ee23 3a27 	vmul.f32	s6, s6, s15
d0050942:	ee24 4a27 	vmul.f32	s8, s8, s15
d0050946:	ee63 3aa7 	vmul.f32	s7, s7, s15
d005094a:	e7bb      	b.n	d00508c4 <splineRailSampleTangent+0x11c>
d005094c:	ee07 3a90 	vmov	s15, r3
d0050950:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050954:	e74b      	b.n	d00507ee <splineRailSampleTangent+0x46>
d0050956:	bf00      	nop
d0050958:	3f333333 	.word	0x3f333333
d005095c:	40555555 	.word	0x40555555
d0050960:	00000000 	.word	0x00000000
d0050964:	358637bd 	.word	0x358637bd
d0050968:	3f7fbe77 	.word	0x3f7fbe77
d005096c:	3f8020c5 	.word	0x3f8020c5
d0050970:	38d1b717 	.word	0x38d1b717

d0050974 <splineRailInit>:
d0050974:	b338      	cbz	r0, d00509c6 <splineRailInit+0x52>
d0050976:	3b00      	subs	r3, #0
d0050978:	6001      	str	r1, [r0, #0]
d005097a:	f04f 4181 	mov.w	r1, #1082130432	; 0x40800000
d005097e:	6042      	str	r2, [r0, #4]
d0050980:	bf18      	it	ne
d0050982:	2301      	movne	r3, #1
d0050984:	2200      	movs	r2, #0
d0050986:	6381      	str	r1, [r0, #56]	; 0x38
d0050988:	7403      	strb	r3, [r0, #16]
d005098a:	2300      	movs	r3, #0
d005098c:	490e      	ldr	r1, [pc, #56]	; (d00509c8 <splineRailInit+0x54>)
d005098e:	ed80 0a03 	vstr	s0, [r0, #12]
d0050992:	6083      	str	r3, [r0, #8]
d0050994:	6143      	str	r3, [r0, #20]
d0050996:	6183      	str	r3, [r0, #24]
d0050998:	61c3      	str	r3, [r0, #28]
d005099a:	6243      	str	r3, [r0, #36]	; 0x24
d005099c:	6403      	str	r3, [r0, #64]	; 0x40
d005099e:	6483      	str	r3, [r0, #72]	; 0x48
d00509a0:	64c3      	str	r3, [r0, #76]	; 0x4c
d00509a2:	f880 2020 	strb.w	r2, [r0, #32]
d00509a6:	6502      	str	r2, [r0, #80]	; 0x50
d00509a8:	63c1      	str	r1, [r0, #60]	; 0x3c
d00509aa:	b4f0      	push	{r4, r5, r6, r7}
d00509ac:	4e07      	ldr	r6, [pc, #28]	; (d00509cc <splineRailInit+0x58>)
d00509ae:	f04f 4580 	mov.w	r5, #1073741824	; 0x40000000
d00509b2:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d00509b6:	62c6      	str	r6, [r0, #44]	; 0x2c
d00509b8:	6306      	str	r6, [r0, #48]	; 0x30
d00509ba:	6345      	str	r5, [r0, #52]	; 0x34
d00509bc:	6445      	str	r5, [r0, #68]	; 0x44
d00509be:	6287      	str	r7, [r0, #40]	; 0x28
d00509c0:	bcf0      	pop	{r4, r5, r6, r7}
d00509c2:	f7ff bd81 	b.w	d00504c8 <splineRailBuildTable>
d00509c6:	4770      	bx	lr
d00509c8:	3f4ccccd 	.word	0x3f4ccccd
d00509cc:	40200000 	.word	0x40200000

d00509d0 <splineRailSetTuning>:
d00509d0:	b128      	cbz	r0, d00509de <splineRailSetTuning+0xe>
d00509d2:	ed80 0a0b 	vstr	s0, [r0, #44]	; 0x2c
d00509d6:	edc0 0a0c 	vstr	s1, [r0, #48]	; 0x30
d00509da:	ed80 1a11 	vstr	s2, [r0, #68]	; 0x44
d00509de:	4770      	bx	lr

d00509e0 <splineRailSetBanking>:
d00509e0:	b128      	cbz	r0, d00509ee <splineRailSetBanking+0xe>
d00509e2:	ed80 0a0d 	vstr	s0, [r0, #52]	; 0x34
d00509e6:	edc0 0a0e 	vstr	s1, [r0, #56]	; 0x38
d00509ea:	ed80 1a0f 	vstr	s2, [r0, #60]	; 0x3c
d00509ee:	4770      	bx	lr

d00509f0 <splineRailUpdate>:
d00509f0:	2800      	cmp	r0, #0
d00509f2:	f000 8128 	beq.w	d0050c46 <splineRailUpdate+0x256>
d00509f6:	b5f0      	push	{r4, r5, r6, r7, lr}
d00509f8:	460d      	mov	r5, r1
d00509fa:	b08d      	sub	sp, #52	; 0x34
d00509fc:	2900      	cmp	r1, #0
d00509fe:	f000 8120 	beq.w	d0050c42 <splineRailUpdate+0x252>
d0050a02:	6807      	ldr	r7, [r0, #0]
d0050a04:	4604      	mov	r4, r0
d0050a06:	2f00      	cmp	r7, #0
d0050a08:	f000 811b 	beq.w	d0050c42 <splineRailUpdate+0x252>
d0050a0c:	6846      	ldr	r6, [r0, #4]
d0050a0e:	2e01      	cmp	r6, #1
d0050a10:	f340 8117 	ble.w	d0050c42 <splineRailUpdate+0x252>
d0050a14:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0050a18:	eeb0 2a40 	vmov.f32	s4, s0
d0050a1c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050a20:	f240 810f 	bls.w	d0050c42 <splineRailUpdate+0x252>
d0050a24:	6d03      	ldr	r3, [r0, #80]	; 0x50
d0050a26:	2b01      	cmp	r3, #1
d0050a28:	f340 810b 	ble.w	d0050c42 <splineRailUpdate+0x252>
d0050a2c:	edd0 7a13 	vldr	s15, [r0, #76]	; 0x4c
d0050a30:	ed9f 7adc 	vldr	s14, [pc, #880]	; d0050da4 <splineRailUpdate+0x3b4>
d0050a34:	eef4 7ac7 	vcmpe.f32	s15, s14
d0050a38:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050a3c:	f240 8101 	bls.w	d0050c42 <splineRailUpdate+0x252>
d0050a40:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
d0050a44:	2300      	movs	r3, #0
d0050a46:	ed90 6a02 	vldr	s12, [r0, #8]
d0050a4a:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d0050a4e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050a52:	f340 80f9 	ble.w	d0050c48 <splineRailUpdate+0x258>
d0050a56:	ee37 7a40 	vsub.f32	s14, s14, s0
d0050a5a:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d0050a5e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050a62:	f100 8115 	bmi.w	d0050c90 <splineRailUpdate+0x2a0>
d0050a66:	eeb0 0a46 	vmov.f32	s0, s12
d0050a6a:	ed80 7a09 	vstr	s14, [r0, #36]	; 0x24
d0050a6e:	eebd 6ac6 	vcvt.s32.f32	s12, s12
d0050a72:	eefd 7ac0 	vcvt.s32.f32	s15, s0
d0050a76:	ee16 2a10 	vmov	r2, s12
d0050a7a:	ee17 3a90 	vmov	r3, s15
d0050a7e:	429a      	cmp	r2, r3
d0050a80:	f040 814b 	bne.w	d0050d1a <splineRailUpdate+0x32a>
d0050a84:	4620      	mov	r0, r4
d0050a86:	f7ff fdf9 	bl	d005067c <splineRailSamplePos>
d0050a8a:	eef0 7a40 	vmov.f32	s15, s0
d0050a8e:	4620      	mov	r0, r4
d0050a90:	ed94 0a02 	vldr	s0, [r4, #8]
d0050a94:	edcd 0a01 	vstr	s1, [sp, #4]
d0050a98:	edcd 7a00 	vstr	s15, [sp]
d0050a9c:	ed8d 1a02 	vstr	s2, [sp, #8]
d0050aa0:	f7ff fe82 	bl	d00507a8 <splineRailSampleTangent>
d0050aa4:	ee20 7aa0 	vmul.f32	s14, s1, s1
d0050aa8:	eddf 6abf 	vldr	s13, [pc, #764]	; d0050da8 <splineRailUpdate+0x3b8>
d0050aac:	eef0 7a60 	vmov.f32	s15, s1
d0050ab0:	edcd 0a07 	vstr	s1, [sp, #28]
d0050ab4:	eef0 2a41 	vmov.f32	s5, s2
d0050ab8:	ed8d 0a06 	vstr	s0, [sp, #24]
d0050abc:	eea0 7a00 	vfma.f32	s14, s0, s0
d0050ac0:	ed8d 1a08 	vstr	s2, [sp, #32]
d0050ac4:	eef0 1a40 	vmov.f32	s3, s0
d0050ac8:	eea1 7a01 	vfma.f32	s14, s2, s2
d0050acc:	eeb4 7ae6 	vcmpe.f32	s14, s13
d0050ad0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050ad4:	f240 8102 	bls.w	d0050cdc <splineRailUpdate+0x2ec>
d0050ad8:	eddf 6ab4 	vldr	s13, [pc, #720]	; d0050dac <splineRailUpdate+0x3bc>
d0050adc:	eeb4 7ae6 	vcmpe.f32	s14, s13
d0050ae0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050ae4:	f100 810c 	bmi.w	d0050d00 <splineRailUpdate+0x310>
d0050ae8:	eddf 6ab1 	vldr	s13, [pc, #708]	; d0050db0 <splineRailUpdate+0x3c0>
d0050aec:	eeb4 7a66 	vcmp.f32	s14, s13
d0050af0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050af4:	f300 8104 	bgt.w	d0050d00 <splineRailUpdate+0x310>
d0050af8:	ed9f 7aae 	vldr	s14, [pc, #696]	; d0050db4 <splineRailUpdate+0x3c4>
d0050afc:	4620      	mov	r0, r4
d0050afe:	ed94 0a02 	vldr	s0, [r4, #8]
d0050b02:	edcd 7a04 	vstr	s15, [sp, #16]
d0050b06:	ee30 0a07 	vadd.f32	s0, s0, s14
d0050b0a:	edcd 1a03 	vstr	s3, [sp, #12]
d0050b0e:	edcd 2a05 	vstr	s5, [sp, #20]
d0050b12:	f7ff fe49 	bl	d00507a8 <splineRailSampleTangent>
d0050b16:	ee20 7aa0 	vmul.f32	s14, s1, s1
d0050b1a:	eddf 6aa3 	vldr	s13, [pc, #652]	; d0050da8 <splineRailUpdate+0x3b8>
d0050b1e:	eef0 7a41 	vmov.f32	s15, s2
d0050b22:	edcd 0a0a 	vstr	s1, [sp, #40]	; 0x28
d0050b26:	eeb0 5a40 	vmov.f32	s10, s0
d0050b2a:	ed8d 0a09 	vstr	s0, [sp, #36]	; 0x24
d0050b2e:	eea0 7a00 	vfma.f32	s14, s0, s0
d0050b32:	ed8d 1a0b 	vstr	s2, [sp, #44]	; 0x2c
d0050b36:	eea1 7a01 	vfma.f32	s14, s2, s2
d0050b3a:	eeb4 7ae6 	vcmpe.f32	s14, s13
d0050b3e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050b42:	f240 80c6 	bls.w	d0050cd2 <splineRailUpdate+0x2e2>
d0050b46:	eddf 6a99 	vldr	s13, [pc, #612]	; d0050dac <splineRailUpdate+0x3bc>
d0050b4a:	eeb4 7ae6 	vcmpe.f32	s14, s13
d0050b4e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050b52:	f100 80ca 	bmi.w	d0050cea <splineRailUpdate+0x2fa>
d0050b56:	eddf 6a96 	vldr	s13, [pc, #600]	; d0050db0 <splineRailUpdate+0x3c0>
d0050b5a:	eeb4 7a66 	vcmp.f32	s14, s13
d0050b5e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050b62:	f300 80c2 	bgt.w	d0050cea <splineRailUpdate+0x2fa>
d0050b66:	f894 3020 	ldrb.w	r3, [r4, #32]
d0050b6a:	2b00      	cmp	r3, #0
d0050b6c:	f000 80f7 	beq.w	d0050d5e <splineRailUpdate+0x36e>
d0050b70:	ed95 7a00 	vldr	s14, [r5]
d0050b74:	4626      	mov	r6, r4
d0050b76:	ed9d 6a00 	vldr	s12, [sp]
d0050b7a:	ee61 1aa7 	vmul.f32	s3, s3, s15
d0050b7e:	edd5 6a01 	vldr	s13, [r5, #4]
d0050b82:	ee62 7a85 	vmul.f32	s15, s5, s10
d0050b86:	ee36 6a07 	vadd.f32	s12, s12, s14
d0050b8a:	ed94 7a02 	vldr	s14, [r4, #8]
d0050b8e:	eddd 5a01 	vldr	s11, [sp, #4]
d0050b92:	3614      	adds	r6, #20
d0050b94:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0050b98:	ed95 5a02 	vldr	s10, [r5, #8]
d0050b9c:	ee75 5aa6 	vadd.f32	s11, s11, s13
d0050ba0:	eddd 6a02 	vldr	s13, [sp, #8]
d0050ba4:	6867      	ldr	r7, [r4, #4]
d0050ba6:	466a      	mov	r2, sp
d0050ba8:	ee17 3a10 	vmov	r3, s14
d0050bac:	ee76 6a85 	vadd.f32	s13, s13, s10
d0050bb0:	edd4 4a06 	vldr	s9, [r4, #24]
d0050bb4:	ee77 7ae1 	vsub.f32	s15, s15, s3
d0050bb8:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0050bbc:	ed96 5a00 	vldr	s10, [r6]
d0050bc0:	ed94 7a07 	vldr	s14, [r4, #28]
d0050bc4:	ee75 5ae4 	vsub.f32	s11, s11, s9
d0050bc8:	429f      	cmp	r7, r3
d0050bca:	ee36 6a45 	vsub.f32	s12, s12, s10
d0050bce:	ee36 7ac7 	vsub.f32	s14, s13, s14
d0050bd2:	edd4 2a0d 	vldr	s5, [r4, #52]	; 0x34
d0050bd6:	bfd8      	it	le
d0050bd8:	f107 33ff 	addle.w	r3, r7, #4294967295	; 0xffffffff
d0050bdc:	edc5 5a01 	vstr	s11, [r5, #4]
d0050be0:	ed85 6a00 	vstr	s12, [r5]
d0050be4:	ee67 7aa2 	vmul.f32	s15, s15, s5
d0050be8:	ed85 7a02 	vstr	s14, [r5, #8]
d0050bec:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d0050bf0:	edd4 6a0f 	vldr	s13, [r4, #60]	; 0x3c
d0050bf4:	ca07      	ldmia	r2, {r0, r1, r2}
d0050bf6:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0050bfa:	6822      	ldr	r2, [r4, #0]
d0050bfc:	eef1 1a66 	vneg.f32	s3, s13
d0050c00:	eb02 0383 	add.w	r3, r2, r3, lsl #2
d0050c04:	ed93 7a04 	vldr	s14, [r3, #16]
d0050c08:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d0050c0c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050c10:	bfd8      	it	le
d0050c12:	eeb7 7a00 	vmovle.f32	s14, #112	; 0x3f800000  1.0
d0050c16:	ee67 7a87 	vmul.f32	s15, s15, s14
d0050c1a:	eef4 1ae7 	vcmpe.f32	s3, s15
d0050c1e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050c22:	dc01      	bgt.n	d0050c28 <splineRailUpdate+0x238>
d0050c24:	fec6 1ae7 	vminnm.f32	s3, s13, s15
d0050c28:	4629      	mov	r1, r5
d0050c2a:	4620      	mov	r0, r4
d0050c2c:	ed9d 0a03 	vldr	s0, [sp, #12]
d0050c30:	eddd 0a04 	vldr	s1, [sp, #16]
d0050c34:	ed9d 1a05 	vldr	s2, [sp, #20]
d0050c38:	b00d      	add	sp, #52	; 0x34
d0050c3a:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d0050c3e:	f7ff bb01 	b.w	d0050244 <sr_steer_camera_to_tangent>
d0050c42:	b00d      	add	sp, #52	; 0x34
d0050c44:	bdf0      	pop	{r4, r5, r6, r7, pc}
d0050c46:	4770      	bx	lr
d0050c48:	ed90 0a12 	vldr	s0, [r0, #72]	; 0x48
d0050c4c:	ed90 7a03 	vldr	s14, [r0, #12]
d0050c50:	7c03      	ldrb	r3, [r0, #16]
d0050c52:	eea7 0a02 	vfma.f32	s0, s14, s4
d0050c56:	ed80 0a12 	vstr	s0, [r0, #72]	; 0x48
d0050c5a:	b9eb      	cbnz	r3, d0050c98 <splineRailUpdate+0x2a8>
d0050c5c:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0050c60:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050c64:	d505      	bpl.n	d0050c72 <splineRailUpdate+0x282>
d0050c66:	ed9f 7a54 	vldr	s14, [pc, #336]	; d0050db8 <splineRailUpdate+0x3c8>
d0050c6a:	eeb0 0a47 	vmov.f32	s0, s14
d0050c6e:	ed80 7a12 	vstr	s14, [r0, #72]	; 0x48
d0050c72:	eef4 7ac0 	vcmpe.f32	s15, s0
d0050c76:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050c7a:	d503      	bpl.n	d0050c84 <splineRailUpdate+0x294>
d0050c7c:	eeb0 0a67 	vmov.f32	s0, s15
d0050c80:	edc4 7a12 	vstr	s15, [r4, #72]	; 0x48
d0050c84:	4620      	mov	r0, r4
d0050c86:	f7ff fc83 	bl	d0050590 <splineRailDistanceToT>
d0050c8a:	ed84 0a02 	vstr	s0, [r4, #8]
d0050c8e:	e6ee      	b.n	d0050a6e <splineRailUpdate+0x7e>
d0050c90:	eeb0 0a46 	vmov.f32	s0, s12
d0050c94:	6243      	str	r3, [r0, #36]	; 0x24
d0050c96:	e6ea      	b.n	d0050a6e <splineRailUpdate+0x7e>
d0050c98:	eef4 7ac0 	vcmpe.f32	s15, s0
d0050c9c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050ca0:	d808      	bhi.n	d0050cb4 <splineRailUpdate+0x2c4>
d0050ca2:	ee30 0a67 	vsub.f32	s0, s0, s15
d0050ca6:	eef4 7ac0 	vcmpe.f32	s15, s0
d0050caa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050cae:	d9f8      	bls.n	d0050ca2 <splineRailUpdate+0x2b2>
d0050cb0:	ed84 0a12 	vstr	s0, [r4, #72]	; 0x48
d0050cb4:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0050cb8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050cbc:	d5e2      	bpl.n	d0050c84 <splineRailUpdate+0x294>
d0050cbe:	ee30 0a27 	vadd.f32	s0, s0, s15
d0050cc2:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0050cc6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050cca:	d4f8      	bmi.n	d0050cbe <splineRailUpdate+0x2ce>
d0050ccc:	ed84 0a12 	vstr	s0, [r4, #72]	; 0x48
d0050cd0:	e7d8      	b.n	d0050c84 <splineRailUpdate+0x294>
d0050cd2:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0050cd6:	ed9f 5a38 	vldr	s10, [pc, #224]	; d0050db8 <splineRailUpdate+0x3c8>
d0050cda:	e744      	b.n	d0050b66 <splineRailUpdate+0x176>
d0050cdc:	eddf 7a36 	vldr	s15, [pc, #216]	; d0050db8 <splineRailUpdate+0x3c8>
d0050ce0:	eef7 2a00 	vmov.f32	s5, #112	; 0x3f800000  1.0
d0050ce4:	eef0 1a67 	vmov.f32	s3, s15
d0050ce8:	e706      	b.n	d0050af8 <splineRailUpdate+0x108>
d0050cea:	eef1 7ac7 	vsqrt.f32	s15, s14
d0050cee:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d0050cf2:	ee86 7aa7 	vdiv.f32	s14, s13, s15
d0050cf6:	ee20 5a07 	vmul.f32	s10, s0, s14
d0050cfa:	ee61 7a07 	vmul.f32	s15, s2, s14
d0050cfe:	e732      	b.n	d0050b66 <splineRailUpdate+0x176>
d0050d00:	eef1 7ac7 	vsqrt.f32	s15, s14
d0050d04:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0050d08:	eec7 2a27 	vdiv.f32	s5, s14, s15
d0050d0c:	ee60 1a22 	vmul.f32	s3, s0, s5
d0050d10:	ee60 7aa2 	vmul.f32	s15, s1, s5
d0050d14:	ee61 2a22 	vmul.f32	s5, s2, s5
d0050d18:	e6ee      	b.n	d0050af8 <splineRailUpdate+0x108>
d0050d1a:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0050d1e:	7c22      	ldrb	r2, [r4, #16]
d0050d20:	ee70 7a27 	vadd.f32	s15, s0, s15
d0050d24:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0050d28:	ee17 3a90 	vmov	r3, s15
d0050d2c:	b372      	cbz	r2, d0050d8c <splineRailUpdate+0x39c>
d0050d2e:	429e      	cmp	r6, r3
d0050d30:	dc33      	bgt.n	d0050d9a <splineRailUpdate+0x3aa>
d0050d32:	1b9b      	subs	r3, r3, r6
d0050d34:	429e      	cmp	r6, r3
d0050d36:	ddfc      	ble.n	d0050d32 <splineRailUpdate+0x342>
d0050d38:	6aa2      	ldr	r2, [r4, #40]	; 0x28
d0050d3a:	429a      	cmp	r2, r3
d0050d3c:	f43f aea2 	beq.w	d0050a84 <splineRailUpdate+0x94>
d0050d40:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0050d44:	62a3      	str	r3, [r4, #40]	; 0x28
d0050d46:	eb07 0782 	add.w	r7, r7, r2, lsl #2
d0050d4a:	edd7 7a03 	vldr	s15, [r7, #12]
d0050d4e:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0050d52:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050d56:	bfc8      	it	gt
d0050d58:	edc4 7a09 	vstrgt	s15, [r4, #36]	; 0x24
d0050d5c:	e692      	b.n	d0050a84 <splineRailUpdate+0x94>
d0050d5e:	466b      	mov	r3, sp
d0050d60:	f104 0614 	add.w	r6, r4, #20
d0050d64:	eddf 1a14 	vldr	s3, [pc, #80]	; d0050db8 <splineRailUpdate+0x3c8>
d0050d68:	ed9d 0a03 	vldr	s0, [sp, #12]
d0050d6c:	eddd 0a04 	vldr	s1, [sp, #16]
d0050d70:	ed9d 1a05 	vldr	s2, [sp, #20]
d0050d74:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0050d78:	2301      	movs	r3, #1
d0050d7a:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d0050d7e:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0050d82:	4629      	mov	r1, r5
d0050d84:	4620      	mov	r0, r4
d0050d86:	f884 3020 	strb.w	r3, [r4, #32]
d0050d8a:	e755      	b.n	d0050c38 <splineRailUpdate+0x248>
d0050d8c:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0050d90:	429e      	cmp	r6, r3
d0050d92:	bfd8      	it	le
d0050d94:	f106 33ff 	addle.w	r3, r6, #4294967295	; 0xffffffff
d0050d98:	e7ce      	b.n	d0050d38 <splineRailUpdate+0x348>
d0050d9a:	2b00      	cmp	r3, #0
d0050d9c:	dacc      	bge.n	d0050d38 <splineRailUpdate+0x348>
d0050d9e:	199b      	adds	r3, r3, r6
d0050da0:	d4fd      	bmi.n	d0050d9e <splineRailUpdate+0x3ae>
d0050da2:	e7c9      	b.n	d0050d38 <splineRailUpdate+0x348>
d0050da4:	38d1b717 	.word	0x38d1b717
d0050da8:	358637bd 	.word	0x358637bd
d0050dac:	3f7fbe77 	.word	0x3f7fbe77
d0050db0:	3f8020c5 	.word	0x3f8020c5
d0050db4:	3e19999a 	.word	0x3e19999a
d0050db8:	00000000 	.word	0x00000000

d0050dbc <splineRailGetCurrentNode>:
d0050dbc:	b188      	cbz	r0, d0050de2 <splineRailGetCurrentNode+0x26>
d0050dbe:	6803      	ldr	r3, [r0, #0]
d0050dc0:	b173      	cbz	r3, d0050de0 <splineRailGetCurrentNode+0x24>
d0050dc2:	6843      	ldr	r3, [r0, #4]
d0050dc4:	2b01      	cmp	r3, #1
d0050dc6:	dd0b      	ble.n	d0050de0 <splineRailGetCurrentNode+0x24>
d0050dc8:	edd0 7a02 	vldr	s15, [r0, #8]
d0050dcc:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0050dd0:	ee17 0a90 	vmov	r0, s15
d0050dd4:	2800      	cmp	r0, #0
d0050dd6:	db03      	blt.n	d0050de0 <splineRailGetCurrentNode+0x24>
d0050dd8:	4283      	cmp	r3, r0
d0050dda:	dc02      	bgt.n	d0050de2 <splineRailGetCurrentNode+0x26>
d0050ddc:	1e58      	subs	r0, r3, #1
d0050dde:	4770      	bx	lr
d0050de0:	2000      	movs	r0, #0
d0050de2:	4770      	bx	lr

d0050de4 <initSystem>:
d0050de4:	b570      	push	{r4, r5, r6, lr}
d0050de6:	4c41      	ldr	r4, [pc, #260]	; (d0050eec <initSystem+0x108>)
d0050de8:	b082      	sub	sp, #8
d0050dea:	2000      	movs	r0, #0
d0050dec:	2600      	movs	r6, #0
d0050dee:	7823      	ldrb	r3, [r4, #0]
d0050df0:	7862      	ldrb	r2, [r4, #1]
d0050df2:	78a1      	ldrb	r1, [r4, #2]
d0050df4:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050df8:	78e2      	ldrb	r2, [r4, #3]
d0050dfa:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0050dfe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050e02:	681b      	ldr	r3, [r3, #0]
d0050e04:	4798      	blx	r3
d0050e06:	f7ff f919 	bl	d005003c <initMalloc>
d0050e0a:	7b23      	ldrb	r3, [r4, #12]
d0050e0c:	7b62      	ldrb	r2, [r4, #13]
d0050e0e:	2150      	movs	r1, #80	; 0x50
d0050e10:	7ba5      	ldrb	r5, [r4, #14]
d0050e12:	20dc      	movs	r0, #220	; 0xdc
d0050e14:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050e18:	7be2      	ldrb	r2, [r4, #15]
d0050e1a:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0050e1e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050e22:	681b      	ldr	r3, [r3, #0]
d0050e24:	691b      	ldr	r3, [r3, #16]
d0050e26:	4798      	blx	r3
d0050e28:	7b23      	ldrb	r3, [r4, #12]
d0050e2a:	7b62      	ldrb	r2, [r4, #13]
d0050e2c:	2000      	movs	r0, #0
d0050e2e:	7ba1      	ldrb	r1, [r4, #14]
d0050e30:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050e34:	7be2      	ldrb	r2, [r4, #15]
d0050e36:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0050e3a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050e3e:	681b      	ldr	r3, [r3, #0]
d0050e40:	689b      	ldr	r3, [r3, #8]
d0050e42:	4798      	blx	r3
d0050e44:	7b25      	ldrb	r5, [r4, #12]
d0050e46:	7b62      	ldrb	r2, [r4, #13]
d0050e48:	f44f 73a0 	mov.w	r3, #320	; 0x140
d0050e4c:	7ba1      	ldrb	r1, [r4, #14]
d0050e4e:	ea45 2502 	orr.w	r5, r5, r2, lsl #8
d0050e52:	7be0      	ldrb	r0, [r4, #15]
d0050e54:	f44f 72f0 	mov.w	r2, #480	; 0x1e0
d0050e58:	ea45 4501 	orr.w	r5, r5, r1, lsl #16
d0050e5c:	4619      	mov	r1, r3
d0050e5e:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d0050e62:	4610      	mov	r0, r2
d0050e64:	682d      	ldr	r5, [r5, #0]
d0050e66:	9600      	str	r6, [sp, #0]
d0050e68:	696d      	ldr	r5, [r5, #20]
d0050e6a:	47a8      	blx	r5
d0050e6c:	7c23      	ldrb	r3, [r4, #16]
d0050e6e:	7c62      	ldrb	r2, [r4, #17]
d0050e70:	f44f 7000 	mov.w	r0, #512	; 0x200
d0050e74:	7ca1      	ldrb	r1, [r4, #18]
d0050e76:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050e7a:	7ce2      	ldrb	r2, [r4, #19]
d0050e7c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0050e80:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050e84:	681b      	ldr	r3, [r3, #0]
d0050e86:	681b      	ldr	r3, [r3, #0]
d0050e88:	4798      	blx	r3
d0050e8a:	7c23      	ldrb	r3, [r4, #16]
d0050e8c:	7c61      	ldrb	r1, [r4, #17]
d0050e8e:	2201      	movs	r2, #1
d0050e90:	7ca0      	ldrb	r0, [r4, #18]
d0050e92:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
d0050e96:	7ce1      	ldrb	r1, [r4, #19]
d0050e98:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0050e9c:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d0050ea0:	681b      	ldr	r3, [r3, #0]
d0050ea2:	685b      	ldr	r3, [r3, #4]
d0050ea4:	701a      	strb	r2, [r3, #0]
d0050ea6:	f001 fde1 	bl	d0052a6c <initDepthBandMem>
d0050eaa:	7b23      	ldrb	r3, [r4, #12]
d0050eac:	7b62      	ldrb	r2, [r4, #13]
d0050eae:	7ba1      	ldrb	r1, [r4, #14]
d0050eb0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050eb4:	7be2      	ldrb	r2, [r4, #15]
d0050eb6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0050eba:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050ebe:	681b      	ldr	r3, [r3, #0]
d0050ec0:	6b5b      	ldr	r3, [r3, #52]	; 0x34
d0050ec2:	4798      	blx	r3
d0050ec4:	7b23      	ldrb	r3, [r4, #12]
d0050ec6:	7b62      	ldrb	r2, [r4, #13]
d0050ec8:	7ba5      	ldrb	r5, [r4, #14]
d0050eca:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0050ece:	7be2      	ldrb	r2, [r4, #15]
d0050ed0:	4907      	ldr	r1, [pc, #28]	; (d0050ef0 <initSystem+0x10c>)
d0050ed2:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0050ed6:	6008      	str	r0, [r1, #0]
d0050ed8:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0050edc:	681b      	ldr	r3, [r3, #0]
d0050ede:	6b9b      	ldr	r3, [r3, #56]	; 0x38
d0050ee0:	4798      	blx	r3
d0050ee2:	4b04      	ldr	r3, [pc, #16]	; (d0050ef4 <initSystem+0x110>)
d0050ee4:	6018      	str	r0, [r3, #0]
d0050ee6:	b002      	add	sp, #8
d0050ee8:	bd70      	pop	{r4, r5, r6, pc}
d0050eea:	bf00      	nop
d0050eec:	2001f000 	.word	0x2001f000
d0050ef0:	d012b280 	.word	0xd012b280
d0050ef4:	d012b260 	.word	0xd012b260

d0050ef8 <weatherLightning>:
d0050ef8:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0050efc:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0050f00:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050f04:	4605      	mov	r5, r0
d0050f06:	d930      	bls.n	d0050f6a <weatherLightning+0x72>
d0050f08:	eddf 7ab6 	vldr	s15, [pc, #728]	; d00511e4 <weatherLightning+0x2ec>
d0050f0c:	fe80 0a67 	vminnm.f32	s0, s0, s15
d0050f10:	4eb5      	ldr	r6, [pc, #724]	; (d00511e8 <weatherLightning+0x2f0>)
d0050f12:	4fb6      	ldr	r7, [pc, #728]	; (d00511ec <weatherLightning+0x2f4>)
d0050f14:	6833      	ldr	r3, [r6, #0]
d0050f16:	683a      	ldr	r2, [r7, #0]
d0050f18:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d0050f1c:	2a01      	cmp	r2, #1
d0050f1e:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0050f22:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0050f26:	6033      	str	r3, [r6, #0]
d0050f28:	d022      	beq.n	d0050f70 <weatherLightning+0x78>
d0050f2a:	2a02      	cmp	r2, #2
d0050f2c:	f000 8087 	beq.w	d005103e <weatherLightning+0x146>
d0050f30:	4caf      	ldr	r4, [pc, #700]	; (d00511f0 <weatherLightning+0x2f8>)
d0050f32:	2100      	movs	r1, #0
d0050f34:	b2e8      	uxtb	r0, r5
d0050f36:	edd4 7a00 	vldr	s15, [r4]
d0050f3a:	ee37 0ac0 	vsub.f32	s0, s15, s0
d0050f3e:	ed84 0a00 	vstr	s0, [r4]
d0050f42:	f006 fb91 	bl	d0057668 <lightEnable>
d0050f46:	4628      	mov	r0, r5
d0050f48:	ed9f 0aaa 	vldr	s0, [pc, #680]	; d00511f4 <weatherLightning+0x2fc>
d0050f4c:	f006 fc22 	bl	d0057794 <lightSetIntensity>
d0050f50:	edd4 7a00 	vldr	s15, [r4]
d0050f54:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0050f58:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050f5c:	f240 80d6 	bls.w	d005110c <weatherLightning+0x214>
d0050f60:	f04f 0800 	mov.w	r8, #0
d0050f64:	4640      	mov	r0, r8
d0050f66:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0050f6a:	ed9f 0aa3 	vldr	s0, [pc, #652]	; d00511f8 <weatherLightning+0x300>
d0050f6e:	e7cf      	b.n	d0050f10 <weatherLightning+0x18>
d0050f70:	4aa2      	ldr	r2, [pc, #648]	; (d00511fc <weatherLightning+0x304>)
d0050f72:	eef2 6a04 	vmov.f32	s13, #36	; 0x41200000  10.0
d0050f76:	f8df a2b4 	ldr.w	sl, [pc, #692]	; d005122c <weatherLightning+0x334>
d0050f7a:	ed92 7a00 	vldr	s14, [r2]
d0050f7e:	2200      	movs	r2, #0
d0050f80:	edda 7a00 	vldr	s15, [sl]
d0050f84:	ee66 6ac7 	vnmul.f32	s13, s13, s14
d0050f88:	f8df 9284 	ldr.w	r9, [pc, #644]	; d0051210 <weatherLightning+0x318>
d0050f8c:	ed99 7a00 	vldr	s14, [r9]
d0050f90:	eee6 7a80 	vfma.f32	s15, s13, s0
d0050f94:	ee37 0a40 	vsub.f32	s0, s14, s0
d0050f98:	ed89 0a00 	vstr	s0, [r9]
d0050f9c:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0050fa0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050fa4:	f100 80ad 	bmi.w	d0051102 <weatherLightning+0x20a>
d0050fa8:	bfcc      	ite	gt
d0050faa:	f04f 0801 	movgt.w	r8, #1
d0050fae:	f04f 0800 	movle.w	r8, #0
d0050fb2:	edca 7a00 	vstr	s15, [sl]
d0050fb6:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d0050fba:	2101      	movs	r1, #1
d0050fbc:	fa5f fb85 	uxtb.w	fp, r5
d0050fc0:	ea83 4453 	eor.w	r4, r3, r3, lsr #17
d0050fc4:	4658      	mov	r0, fp
d0050fc6:	ea84 1444 	eor.w	r4, r4, r4, lsl #5
d0050fca:	6034      	str	r4, [r6, #0]
d0050fcc:	b2e4      	uxtb	r4, r4
d0050fce:	f006 fb4b 	bl	d0057668 <lightEnable>
d0050fd2:	ed9f 7a8b 	vldr	s14, [pc, #556]	; d0051200 <weatherLightning+0x308>
d0050fd6:	ee07 4a90 	vmov	s15, r4
d0050fda:	ed9a 0a00 	vldr	s0, [sl]
d0050fde:	4628      	mov	r0, r5
d0050fe0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0050fe4:	eea7 0a87 	vfma.f32	s0, s15, s14
d0050fe8:	f006 fbd4 	bl	d0057794 <lightSetIntensity>
d0050fec:	edd9 7a00 	vldr	s15, [r9]
d0050ff0:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0050ff4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0050ff8:	d8b4      	bhi.n	d0050f64 <weatherLightning+0x6c>
d0050ffa:	4a82      	ldr	r2, [pc, #520]	; (d0051204 <weatherLightning+0x30c>)
d0050ffc:	6813      	ldr	r3, [r2, #0]
d0050ffe:	3b01      	subs	r3, #1
d0051000:	2b00      	cmp	r3, #0
d0051002:	6013      	str	r3, [r2, #0]
d0051004:	6833      	ldr	r3, [r6, #0]
d0051006:	f340 80ca 	ble.w	d005119e <weatherLightning+0x2a6>
d005100a:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d005100e:	2202      	movs	r2, #2
d0051010:	eddf 6a7d 	vldr	s13, [pc, #500]	; d0051208 <weatherLightning+0x310>
d0051014:	4640      	mov	r0, r8
d0051016:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d005101a:	603a      	str	r2, [r7, #0]
d005101c:	eddf 7a7b 	vldr	s15, [pc, #492]	; d005120c <weatherLightning+0x314>
d0051020:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0051024:	f3c3 0209 	ubfx	r2, r3, #0, #10
d0051028:	6033      	str	r3, [r6, #0]
d005102a:	ee07 2a10 	vmov	s14, r2
d005102e:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0051032:	eee7 7a26 	vfma.f32	s15, s14, s13
d0051036:	edc9 7a00 	vstr	s15, [r9]
d005103a:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005103e:	4c74      	ldr	r4, [pc, #464]	; (d0051210 <weatherLightning+0x318>)
d0051040:	2100      	movs	r1, #0
d0051042:	b2e8      	uxtb	r0, r5
d0051044:	edd4 7a00 	vldr	s15, [r4]
d0051048:	ee37 0ac0 	vsub.f32	s0, s15, s0
d005104c:	ed84 0a00 	vstr	s0, [r4]
d0051050:	f006 fb0a 	bl	d0057668 <lightEnable>
d0051054:	4628      	mov	r0, r5
d0051056:	ed9f 0a67 	vldr	s0, [pc, #412]	; d00511f4 <weatherLightning+0x2fc>
d005105a:	f006 fb9b 	bl	d0057794 <lightSetIntensity>
d005105e:	edd4 7a00 	vldr	s15, [r4]
d0051062:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0051066:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005106a:	f63f af79 	bhi.w	d0050f60 <weatherLightning+0x68>
d005106e:	6833      	ldr	r3, [r6, #0]
d0051070:	2201      	movs	r2, #1
d0051072:	eddf 4a68 	vldr	s9, [pc, #416]	; d0051214 <weatherLightning+0x31c>
d0051076:	f04f 0800 	mov.w	r8, #0
d005107a:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d005107e:	603a      	str	r2, [r7, #0]
d0051080:	ed9f 7a65 	vldr	s14, [pc, #404]	; d0051218 <weatherLightning+0x320>
d0051084:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0051088:	ed9f 5a64 	vldr	s10, [pc, #400]	; d005121c <weatherLightning+0x324>
d005108c:	ed9f 6a64 	vldr	s12, [pc, #400]	; d0051220 <weatherLightning+0x328>
d0051090:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0051094:	eddf 5a63 	vldr	s11, [pc, #396]	; d0051224 <weatherLightning+0x32c>
d0051098:	eddf 6a63 	vldr	s13, [pc, #396]	; d0051228 <weatherLightning+0x330>
d005109c:	ea83 3243 	eor.w	r2, r3, r3, lsl #13
d00510a0:	f3c3 0309 	ubfx	r3, r3, #0, #10
d00510a4:	4855      	ldr	r0, [pc, #340]	; (d00511fc <weatherLightning+0x304>)
d00510a6:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d00510aa:	ee07 3a90 	vmov	s15, r3
d00510ae:	495f      	ldr	r1, [pc, #380]	; (d005122c <weatherLightning+0x334>)
d00510b0:	ea82 1342 	eor.w	r3, r2, r2, lsl #5
d00510b4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00510b8:	ea83 3243 	eor.w	r2, r3, r3, lsl #13
d00510bc:	b2db      	uxtb	r3, r3
d00510be:	eea7 7aa4 	vfma.f32	s14, s15, s9
d00510c2:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d00510c6:	ee07 3a90 	vmov	s15, r3
d00510ca:	ea82 1342 	eor.w	r3, r2, r2, lsl #5
d00510ce:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00510d2:	f3c3 0209 	ubfx	r2, r3, #0, #10
d00510d6:	6033      	str	r3, [r6, #0]
d00510d8:	eea7 6a85 	vfma.f32	s12, s15, s10
d00510dc:	eef0 7a46 	vmov.f32	s15, s12
d00510e0:	ee06 2a10 	vmov	s12, r2
d00510e4:	eeb8 6ac6 	vcvt.f32.s32	s12, s12
d00510e8:	ee67 7a27 	vmul.f32	s15, s14, s15
d00510ec:	eee6 6a25 	vfma.f32	s13, s12, s11
d00510f0:	edc0 7a00 	vstr	s15, [r0]
d00510f4:	4640      	mov	r0, r8
d00510f6:	edc1 7a00 	vstr	s15, [r1]
d00510fa:	edc4 6a00 	vstr	s13, [r4]
d00510fe:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0051102:	f04f 0800 	mov.w	r8, #0
d0051106:	f8ca 2000 	str.w	r2, [sl]
d005110a:	e754      	b.n	d0050fb6 <weatherLightning+0xbe>
d005110c:	6833      	ldr	r3, [r6, #0]
d005110e:	2201      	movs	r2, #1
d0051110:	4947      	ldr	r1, [pc, #284]	; (d0051230 <weatherLightning+0x338>)
d0051112:	f04f 0800 	mov.w	r8, #0
d0051116:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d005111a:	603a      	str	r2, [r7, #0]
d005111c:	eddf 5a3d 	vldr	s11, [pc, #244]	; d0051214 <weatherLightning+0x31c>
d0051120:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d0051124:	ed9f 7a3c 	vldr	s14, [pc, #240]	; d0051218 <weatherLightning+0x320>
d0051128:	ed9f 6a3e 	vldr	s12, [pc, #248]	; d0051224 <weatherLightning+0x32c>
d005112c:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d0051130:	eddf 6a3d 	vldr	s13, [pc, #244]	; d0051228 <weatherLightning+0x330>
d0051134:	4c31      	ldr	r4, [pc, #196]	; (d00511fc <weatherLightning+0x304>)
d0051136:	ea83 3243 	eor.w	r2, r3, r3, lsl #13
d005113a:	fba1 0103 	umull	r0, r1, r1, r3
d005113e:	ea82 4252 	eor.w	r2, r2, r2, lsr #17
d0051142:	f021 0003 	bic.w	r0, r1, #3
d0051146:	ea82 1242 	eor.w	r2, r2, r2, lsl #5
d005114a:	eb00 0091 	add.w	r0, r0, r1, lsr #2
d005114e:	ea82 3142 	eor.w	r1, r2, r2, lsl #13
d0051152:	f3c2 0209 	ubfx	r2, r2, #0, #10
d0051156:	1a1b      	subs	r3, r3, r0
d0051158:	482d      	ldr	r0, [pc, #180]	; (d0051210 <weatherLightning+0x318>)
d005115a:	ee07 2a90 	vmov	s15, r2
d005115e:	ea81 4151 	eor.w	r1, r1, r1, lsr #17
d0051162:	3302      	adds	r3, #2
d0051164:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0051168:	ea81 1241 	eor.w	r2, r1, r1, lsl #5
d005116c:	492f      	ldr	r1, [pc, #188]	; (d005122c <weatherLightning+0x334>)
d005116e:	f3c2 0509 	ubfx	r5, r2, #0, #10
d0051172:	6032      	str	r2, [r6, #0]
d0051174:	eea7 7aa5 	vfma.f32	s14, s15, s11
d0051178:	4a22      	ldr	r2, [pc, #136]	; (d0051204 <weatherLightning+0x30c>)
d005117a:	6013      	str	r3, [r2, #0]
d005117c:	eef0 7a47 	vmov.f32	s15, s14
d0051180:	ee07 5a10 	vmov	s14, r5
d0051184:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0051188:	edc4 7a00 	vstr	s15, [r4]
d005118c:	edc1 7a00 	vstr	s15, [r1]
d0051190:	eee7 6a06 	vfma.f32	s13, s14, s12
d0051194:	edc0 6a00 	vstr	s13, [r0]
d0051198:	4640      	mov	r0, r8
d005119a:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005119e:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
d00511a2:	eddf 6a24 	vldr	s13, [pc, #144]	; d0051234 <weatherLightning+0x33c>
d00511a6:	eddf 7a24 	vldr	s15, [pc, #144]	; d0051238 <weatherLightning+0x340>
d00511aa:	4658      	mov	r0, fp
d00511ac:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
d00511b0:	4a0f      	ldr	r2, [pc, #60]	; (d00511f0 <weatherLightning+0x2f8>)
d00511b2:	2100      	movs	r1, #0
d00511b4:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
d00511b8:	f3c3 040a 	ubfx	r4, r3, #0, #11
d00511bc:	6033      	str	r3, [r6, #0]
d00511be:	ee07 4a10 	vmov	s14, r4
d00511c2:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00511c6:	eee7 7a26 	vfma.f32	s15, s14, s13
d00511ca:	edc2 7a00 	vstr	s15, [r2]
d00511ce:	f006 fa4b 	bl	d0057668 <lightEnable>
d00511d2:	4628      	mov	r0, r5
d00511d4:	ed9f 0a07 	vldr	s0, [pc, #28]	; d00511f4 <weatherLightning+0x2fc>
d00511d8:	f006 fadc 	bl	d0057794 <lightSetIntensity>
d00511dc:	2300      	movs	r3, #0
d00511de:	603b      	str	r3, [r7, #0]
d00511e0:	e6c0      	b.n	d0050f64 <weatherLightning+0x6c>
d00511e2:	bf00      	nop
d00511e4:	3dcccccd 	.word	0x3dcccccd
d00511e8:	d0090d88 	.word	0xd0090d88
d00511ec:	d0090ee4 	.word	0xd0090ee4
d00511f0:	d0090d80 	.word	0xd0090d80
d00511f4:	00000000 	.word	0x00000000
d00511f8:	3c83126f 	.word	0x3c83126f
d00511fc:	d0090ec8 	.word	0xd0090ec8
d0051200:	3ab3e71b 	.word	0x3ab3e71b
d0051204:	d0090ecc 	.word	0xd0090ecc
d0051208:	38cd000c 	.word	0x38cd000c
d005120c:	3ca3d70a 	.word	0x3ca3d70a
d0051210:	d0090ee8 	.word	0xd0090ee8
d0051214:	3ad9d00e 	.word	0x3ad9d00e
d0051218:	3e99999a 	.word	0x3e99999a
d005121c:	3b33e71b 	.word	0x3b33e71b
d0051220:	3f266666 	.word	0x3f266666
d0051224:	3776000e 	.word	0x3776000e
d0051228:	3ccccccd 	.word	0x3ccccccd
d005122c:	d0090ec4 	.word	0xd0090ec4
d0051230:	cccccccd 	.word	0xcccccccd
d0051234:	3aace269 	.word	0x3aace269
d0051238:	3f4ccccd 	.word	0x3f4ccccd
d005123c:	00000000 	.word	0x00000000

d0051240 <goIntro>:
d0051240:	b5f0      	push	{r4, r5, r6, r7, lr}
d0051242:	4da7      	ldr	r5, [pc, #668]	; (d00514e0 <goIntro+0x2a0>)
d0051244:	2678      	movs	r6, #120	; 0x78
d0051246:	4ca7      	ldr	r4, [pc, #668]	; (d00514e4 <goIntro+0x2a4>)
d0051248:	7b2b      	ldrb	r3, [r5, #12]
d005124a:	7b6a      	ldrb	r2, [r5, #13]
d005124c:	7ba9      	ldrb	r1, [r5, #14]
d005124e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051252:	7bea      	ldrb	r2, [r5, #15]
d0051254:	6820      	ldr	r0, [r4, #0]
d0051256:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d005125a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d005125e:	681b      	ldr	r3, [r3, #0]
d0051260:	ed2d 8b04 	vpush	{d8-d9}
d0051264:	69db      	ldr	r3, [r3, #28]
d0051266:	b083      	sub	sp, #12
d0051268:	4798      	blx	r3
d005126a:	7b2b      	ldrb	r3, [r5, #12]
d005126c:	7b6a      	ldrb	r2, [r5, #13]
d005126e:	7ba9      	ldrb	r1, [r5, #14]
d0051270:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051274:	7bea      	ldrb	r2, [r5, #15]
d0051276:	6820      	ldr	r0, [r4, #0]
d0051278:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d005127c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051280:	681b      	ldr	r3, [r3, #0]
d0051282:	699b      	ldr	r3, [r3, #24]
d0051284:	4798      	blx	r3
d0051286:	7b2b      	ldrb	r3, [r5, #12]
d0051288:	7b6a      	ldrb	r2, [r5, #13]
d005128a:	2000      	movs	r0, #0
d005128c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051290:	7baa      	ldrb	r2, [r5, #14]
d0051292:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0051296:	7bea      	ldrb	r2, [r5, #15]
d0051298:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d005129c:	681b      	ldr	r3, [r3, #0]
d005129e:	689b      	ldr	r3, [r3, #8]
d00512a0:	4798      	blx	r3
d00512a2:	7b29      	ldrb	r1, [r5, #12]
d00512a4:	7b6b      	ldrb	r3, [r5, #13]
d00512a6:	7baa      	ldrb	r2, [r5, #14]
d00512a8:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d00512ac:	7beb      	ldrb	r3, [r5, #15]
d00512ae:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00512b2:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00512b6:	681b      	ldr	r3, [r3, #0]
d00512b8:	68db      	ldr	r3, [r3, #12]
d00512ba:	4798      	blx	r3
d00512bc:	3e01      	subs	r6, #1
d00512be:	d1f0      	bne.n	d00512a2 <goIntro+0x62>
d00512c0:	4e89      	ldr	r6, [pc, #548]	; (d00514e8 <goIntro+0x2a8>)
d00512c2:	f243 2760 	movw	r7, #12896	; 0x3260
d00512c6:	f506 4c48 	add.w	ip, r6, #51200	; 0xc800
d00512ca:	f5a6 72c8 	sub.w	r2, r6, #400	; 0x190
d00512ce:	463b      	mov	r3, r7
d00512d0:	6821      	ldr	r1, [r4, #0]
d00512d2:	f812 0f01 	ldrb.w	r0, [r2, #1]!
d00512d6:	6809      	ldr	r1, [r1, #0]
d00512d8:	4296      	cmp	r6, r2
d00512da:	54c8      	strb	r0, [r1, r3]
d00512dc:	f503 73a0 	add.w	r3, r3, #320	; 0x140
d00512e0:	d1f6      	bne.n	d00512d0 <goIntro+0x90>
d00512e2:	f506 76c8 	add.w	r6, r6, #400	; 0x190
d00512e6:	3701      	adds	r7, #1
d00512e8:	45b4      	cmp	ip, r6
d00512ea:	d1ee      	bne.n	d00512ca <goIntro+0x8a>
d00512ec:	ed9f 9b7a 	vldr	d9, [pc, #488]	; d00514d8 <goIntro+0x298>
d00512f0:	2765      	movs	r7, #101	; 0x65
d00512f2:	ed9f 8a7e 	vldr	s16, [pc, #504]	; d00514ec <goIntro+0x2ac>
d00512f6:	eddf 8a7e 	vldr	s17, [pc, #504]	; d00514f0 <goIntro+0x2b0>
d00512fa:	7b29      	ldrb	r1, [r5, #12]
d00512fc:	ee38 8a28 	vadd.f32	s16, s16, s17
d0051300:	7b6b      	ldrb	r3, [r5, #13]
d0051302:	7baa      	ldrb	r2, [r5, #14]
d0051304:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0051308:	7beb      	ldrb	r3, [r5, #15]
d005130a:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d005130e:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051312:	681b      	ldr	r3, [r3, #0]
d0051314:	68db      	ldr	r3, [r3, #12]
d0051316:	4798      	blx	r3
d0051318:	eeb7 7ac8 	vcvt.f64.f32	d7, s16
d005131c:	7b29      	ldrb	r1, [r5, #12]
d005131e:	7b68      	ldrb	r0, [r5, #13]
d0051320:	ee27 7b09 	vmul.f64	d7, d7, d9
d0051324:	7baa      	ldrb	r2, [r5, #14]
d0051326:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d005132a:	7beb      	ldrb	r3, [r5, #15]
d005132c:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0051330:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051334:	eefc 7bc7 	vcvt.u32.f64	s15, d7
d0051338:	681b      	ldr	r3, [r3, #0]
d005133a:	edcd 7a01 	vstr	s15, [sp, #4]
d005133e:	689b      	ldr	r3, [r3, #8]
d0051340:	f89d 0004 	ldrb.w	r0, [sp, #4]
d0051344:	4798      	blx	r3
d0051346:	7b28      	ldrb	r0, [r5, #12]
d0051348:	7b6b      	ldrb	r3, [r5, #13]
d005134a:	7baa      	ldrb	r2, [r5, #14]
d005134c:	ea40 2003 	orr.w	r0, r0, r3, lsl #8
d0051350:	7beb      	ldrb	r3, [r5, #15]
d0051352:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0051356:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d005135a:	681b      	ldr	r3, [r3, #0]
d005135c:	681b      	ldr	r3, [r3, #0]
d005135e:	4798      	blx	r3
d0051360:	3f01      	subs	r7, #1
d0051362:	d1ca      	bne.n	d00512fa <goIntro+0xba>
d0051364:	7c2b      	ldrb	r3, [r5, #16]
d0051366:	4639      	mov	r1, r7
d0051368:	7c6a      	ldrb	r2, [r5, #17]
d005136a:	2650      	movs	r6, #80	; 0x50
d005136c:	4861      	ldr	r0, [pc, #388]	; (d00514f4 <goIntro+0x2b4>)
d005136e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051372:	7caa      	ldrb	r2, [r5, #18]
d0051374:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0051378:	7cea      	ldrb	r2, [r5, #19]
d005137a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d005137e:	685b      	ldr	r3, [r3, #4]
d0051380:	681b      	ldr	r3, [r3, #0]
d0051382:	4798      	blx	r3
d0051384:	7b29      	ldrb	r1, [r5, #12]
d0051386:	7b6b      	ldrb	r3, [r5, #13]
d0051388:	7baa      	ldrb	r2, [r5, #14]
d005138a:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d005138e:	7beb      	ldrb	r3, [r5, #15]
d0051390:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0051394:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051398:	681b      	ldr	r3, [r3, #0]
d005139a:	68db      	ldr	r3, [r3, #12]
d005139c:	4798      	blx	r3
d005139e:	7b29      	ldrb	r1, [r5, #12]
d00513a0:	7b6b      	ldrb	r3, [r5, #13]
d00513a2:	7baa      	ldrb	r2, [r5, #14]
d00513a4:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d00513a8:	7beb      	ldrb	r3, [r5, #15]
d00513aa:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00513ae:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00513b2:	681b      	ldr	r3, [r3, #0]
d00513b4:	681b      	ldr	r3, [r3, #0]
d00513b6:	4798      	blx	r3
d00513b8:	3e01      	subs	r6, #1
d00513ba:	d1e3      	bne.n	d0051384 <goIntro+0x144>
d00513bc:	eeb7 8a00 	vmov.f32	s16, #112	; 0x3f800000  1.0
d00513c0:	2733      	movs	r7, #51	; 0x33
d00513c2:	eddf 8a4e 	vldr	s17, [pc, #312]	; d00514fc <goIntro+0x2bc>
d00513c6:	ed9f 9b44 	vldr	d9, [pc, #272]	; d00514d8 <goIntro+0x298>
d00513ca:	7b2a      	ldrb	r2, [r5, #12]
d00513cc:	ee38 8a68 	vsub.f32	s16, s16, s17
d00513d0:	7b69      	ldrb	r1, [r5, #13]
d00513d2:	7bab      	ldrb	r3, [r5, #14]
d00513d4:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d00513d8:	7be9      	ldrb	r1, [r5, #15]
d00513da:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d00513de:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d00513e2:	681b      	ldr	r3, [r3, #0]
d00513e4:	68db      	ldr	r3, [r3, #12]
d00513e6:	4798      	blx	r3
d00513e8:	eeb7 7ac8 	vcvt.f64.f32	d7, s16
d00513ec:	7b2a      	ldrb	r2, [r5, #12]
d00513ee:	7b69      	ldrb	r1, [r5, #13]
d00513f0:	ee27 7b09 	vmul.f64	d7, d7, d9
d00513f4:	7bab      	ldrb	r3, [r5, #14]
d00513f6:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d00513fa:	7be9      	ldrb	r1, [r5, #15]
d00513fc:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d0051400:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d0051404:	eefc 7bc7 	vcvt.u32.f64	s15, d7
d0051408:	681b      	ldr	r3, [r3, #0]
d005140a:	edcd 7a01 	vstr	s15, [sp, #4]
d005140e:	689b      	ldr	r3, [r3, #8]
d0051410:	f89d 0004 	ldrb.w	r0, [sp, #4]
d0051414:	4798      	blx	r3
d0051416:	7b2a      	ldrb	r2, [r5, #12]
d0051418:	7b69      	ldrb	r1, [r5, #13]
d005141a:	7bab      	ldrb	r3, [r5, #14]
d005141c:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d0051420:	7be9      	ldrb	r1, [r5, #15]
d0051422:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d0051426:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d005142a:	681b      	ldr	r3, [r3, #0]
d005142c:	681b      	ldr	r3, [r3, #0]
d005142e:	4798      	blx	r3
d0051430:	3f01      	subs	r7, #1
d0051432:	d1ca      	bne.n	d00513ca <goIntro+0x18a>
d0051434:	4e30      	ldr	r6, [pc, #192]	; (d00514f8 <goIntro+0x2b8>)
d0051436:	f506 3c16 	add.w	ip, r6, #153600	; 0x25800
d005143a:	463a      	mov	r2, r7
d005143c:	f5a6 73f0 	sub.w	r3, r6, #480	; 0x1e0
d0051440:	6821      	ldr	r1, [r4, #0]
d0051442:	f813 0f01 	ldrb.w	r0, [r3, #1]!
d0051446:	6809      	ldr	r1, [r1, #0]
d0051448:	429e      	cmp	r6, r3
d005144a:	5488      	strb	r0, [r1, r2]
d005144c:	f502 72a0 	add.w	r2, r2, #320	; 0x140
d0051450:	d1f6      	bne.n	d0051440 <goIntro+0x200>
d0051452:	f506 76f0 	add.w	r6, r6, #480	; 0x1e0
d0051456:	3701      	adds	r7, #1
d0051458:	4566      	cmp	r6, ip
d005145a:	d1ee      	bne.n	d005143a <goIntro+0x1fa>
d005145c:	ed9f 9b1e 	vldr	d9, [pc, #120]	; d00514d8 <goIntro+0x298>
d0051460:	2633      	movs	r6, #51	; 0x33
d0051462:	ed9f 8a22 	vldr	s16, [pc, #136]	; d00514ec <goIntro+0x2ac>
d0051466:	eddf 8a25 	vldr	s17, [pc, #148]	; d00514fc <goIntro+0x2bc>
d005146a:	7b2a      	ldrb	r2, [r5, #12]
d005146c:	ee38 8a28 	vadd.f32	s16, s16, s17
d0051470:	7b69      	ldrb	r1, [r5, #13]
d0051472:	7bab      	ldrb	r3, [r5, #14]
d0051474:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d0051478:	7be9      	ldrb	r1, [r5, #15]
d005147a:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d005147e:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d0051482:	681b      	ldr	r3, [r3, #0]
d0051484:	68db      	ldr	r3, [r3, #12]
d0051486:	4798      	blx	r3
d0051488:	eeb7 7ac8 	vcvt.f64.f32	d7, s16
d005148c:	7b2a      	ldrb	r2, [r5, #12]
d005148e:	7b69      	ldrb	r1, [r5, #13]
d0051490:	ee27 7b09 	vmul.f64	d7, d7, d9
d0051494:	7bab      	ldrb	r3, [r5, #14]
d0051496:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d005149a:	7be9      	ldrb	r1, [r5, #15]
d005149c:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d00514a0:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d00514a4:	eefc 7bc7 	vcvt.u32.f64	s15, d7
d00514a8:	681b      	ldr	r3, [r3, #0]
d00514aa:	edcd 7a01 	vstr	s15, [sp, #4]
d00514ae:	689b      	ldr	r3, [r3, #8]
d00514b0:	f89d 0004 	ldrb.w	r0, [sp, #4]
d00514b4:	4798      	blx	r3
d00514b6:	7b2a      	ldrb	r2, [r5, #12]
d00514b8:	7b69      	ldrb	r1, [r5, #13]
d00514ba:	7bab      	ldrb	r3, [r5, #14]
d00514bc:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d00514c0:	7be9      	ldrb	r1, [r5, #15]
d00514c2:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d00514c6:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d00514ca:	681b      	ldr	r3, [r3, #0]
d00514cc:	681b      	ldr	r3, [r3, #0]
d00514ce:	4798      	blx	r3
d00514d0:	3e01      	subs	r6, #1
d00514d2:	d1ca      	bne.n	d005146a <goIntro+0x22a>
d00514d4:	2650      	movs	r6, #80	; 0x50
d00514d6:	e013      	b.n	d0051500 <goIntro+0x2c0>
d00514d8:	00000000 	.word	0x00000000
d00514dc:	40590000 	.word	0x40590000
d00514e0:	2001f000 	.word	0x2001f000
d00514e4:	d012b280 	.word	0xd012b280
d00514e8:	d008330f 	.word	0xd008330f
d00514ec:	00000000 	.word	0x00000000
d00514f0:	3c23d70a 	.word	0x3c23d70a
d00514f4:	d005c078 	.word	0xd005c078
d00514f8:	d005cb5f 	.word	0xd005cb5f
d00514fc:	3ca3d70a 	.word	0x3ca3d70a
d0051500:	7b29      	ldrb	r1, [r5, #12]
d0051502:	7b6b      	ldrb	r3, [r5, #13]
d0051504:	7baa      	ldrb	r2, [r5, #14]
d0051506:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d005150a:	7beb      	ldrb	r3, [r5, #15]
d005150c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0051510:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0051514:	681b      	ldr	r3, [r3, #0]
d0051516:	68db      	ldr	r3, [r3, #12]
d0051518:	4798      	blx	r3
d005151a:	7b29      	ldrb	r1, [r5, #12]
d005151c:	7b6b      	ldrb	r3, [r5, #13]
d005151e:	7baa      	ldrb	r2, [r5, #14]
d0051520:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
d0051524:	7beb      	ldrb	r3, [r5, #15]
d0051526:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d005152a:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d005152e:	681b      	ldr	r3, [r3, #0]
d0051530:	681b      	ldr	r3, [r3, #0]
d0051532:	4798      	blx	r3
d0051534:	3e01      	subs	r6, #1
d0051536:	d1e3      	bne.n	d0051500 <goIntro+0x2c0>
d0051538:	eeb7 8a00 	vmov.f32	s16, #112	; 0x3f800000  1.0
d005153c:	2633      	movs	r6, #51	; 0x33
d005153e:	ed5f 8a11 	vldr	s17, [pc, #-68]	; d00514fc <goIntro+0x2bc>
d0051542:	ed9f 9b29 	vldr	d9, [pc, #164]	; d00515e8 <goIntro+0x3a8>
d0051546:	7b2a      	ldrb	r2, [r5, #12]
d0051548:	ee38 8a68 	vsub.f32	s16, s16, s17
d005154c:	7b69      	ldrb	r1, [r5, #13]
d005154e:	7bab      	ldrb	r3, [r5, #14]
d0051550:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d0051554:	7be9      	ldrb	r1, [r5, #15]
d0051556:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d005155a:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d005155e:	681b      	ldr	r3, [r3, #0]
d0051560:	68db      	ldr	r3, [r3, #12]
d0051562:	4798      	blx	r3
d0051564:	eeb7 7ac8 	vcvt.f64.f32	d7, s16
d0051568:	7b2a      	ldrb	r2, [r5, #12]
d005156a:	7b69      	ldrb	r1, [r5, #13]
d005156c:	ee27 7b09 	vmul.f64	d7, d7, d9
d0051570:	7bab      	ldrb	r3, [r5, #14]
d0051572:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d0051576:	7be9      	ldrb	r1, [r5, #15]
d0051578:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d005157c:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d0051580:	eefc 7bc7 	vcvt.u32.f64	s15, d7
d0051584:	681b      	ldr	r3, [r3, #0]
d0051586:	edcd 7a01 	vstr	s15, [sp, #4]
d005158a:	689b      	ldr	r3, [r3, #8]
d005158c:	f89d 0004 	ldrb.w	r0, [sp, #4]
d0051590:	4798      	blx	r3
d0051592:	7b2a      	ldrb	r2, [r5, #12]
d0051594:	7b69      	ldrb	r1, [r5, #13]
d0051596:	7bab      	ldrb	r3, [r5, #14]
d0051598:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
d005159c:	7be9      	ldrb	r1, [r5, #15]
d005159e:	ea42 4303 	orr.w	r3, r2, r3, lsl #16
d00515a2:	ea43 6301 	orr.w	r3, r3, r1, lsl #24
d00515a6:	681b      	ldr	r3, [r3, #0]
d00515a8:	681b      	ldr	r3, [r3, #0]
d00515aa:	4798      	blx	r3
d00515ac:	3e01      	subs	r6, #1
d00515ae:	d1ca      	bne.n	d0051546 <goIntro+0x306>
d00515b0:	4633      	mov	r3, r6
d00515b2:	4631      	mov	r1, r6
d00515b4:	6822      	ldr	r2, [r4, #0]
d00515b6:	6812      	ldr	r2, [r2, #0]
d00515b8:	54d1      	strb	r1, [r2, r3]
d00515ba:	3301      	adds	r3, #1
d00515bc:	f5b3 3f16 	cmp.w	r3, #153600	; 0x25800
d00515c0:	d1f8      	bne.n	d00515b4 <goIntro+0x374>
d00515c2:	7b2b      	ldrb	r3, [r5, #12]
d00515c4:	7b6a      	ldrb	r2, [r5, #13]
d00515c6:	7ba9      	ldrb	r1, [r5, #14]
d00515c8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d00515cc:	7bea      	ldrb	r2, [r5, #15]
d00515ce:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00515d2:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00515d6:	681b      	ldr	r3, [r3, #0]
d00515d8:	681b      	ldr	r3, [r3, #0]
d00515da:	b003      	add	sp, #12
d00515dc:	ecbd 8b04 	vpop	{d8-d9}
d00515e0:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d00515e4:	4718      	bx	r3
d00515e6:	bf00      	nop
d00515e8:	00000000 	.word	0x00000000
d00515ec:	40590000 	.word	0x40590000

d00515f0 <InitLasers>:
d00515f0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00515f4:	2230      	movs	r2, #48	; 0x30
d00515f6:	2100      	movs	r1, #0
d00515f8:	4828      	ldr	r0, [pc, #160]	; (d005169c <InitLasers+0xac>)
d00515fa:	2600      	movs	r6, #0
d00515fc:	4d28      	ldr	r5, [pc, #160]	; (d00516a0 <InitLasers+0xb0>)
d00515fe:	ed2d 8b02 	vpush	{d8}
d0051602:	b094      	sub	sp, #80	; 0x50
d0051604:	f008 fe3e 	bl	d005a284 <memset>
d0051608:	eef2 0a04 	vmov.f32	s1, #36	; 0x41200000  10.0
d005160c:	466c      	mov	r4, sp
d005160e:	4668      	mov	r0, sp
d0051610:	ed9f 1a24 	vldr	s2, [pc, #144]	; d00516a4 <InitLasers+0xb4>
d0051614:	eeb0 0a60 	vmov.f32	s0, s1
d0051618:	f005 fb16 	bl	d0056c48 <createBox>
d005161c:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d0051620:	ed9f 2a21 	vldr	s4, [pc, #132]	; d00516a8 <InitLasers+0xb8>
d0051624:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d0051626:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0051628:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d005162a:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d005162c:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
d005162e:	c50f      	stmia	r5!, {r0, r1, r2, r3}
d0051630:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
d0051634:	f1a5 0830 	sub.w	r8, r5, #48	; 0x30
d0051638:	eeb0 1a61 	vmov.f32	s2, s3
d005163c:	eef0 0a61 	vmov.f32	s1, s3
d0051640:	4c16      	ldr	r4, [pc, #88]	; (d005169c <InitLasers+0xac>)
d0051642:	eeb0 0a61 	vmov.f32	s0, s3
d0051646:	eeb0 8a42 	vmov.f32	s16, s4
d005164a:	f104 0730 	add.w	r7, r4, #48	; 0x30
d005164e:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d0051652:	4640      	mov	r0, r8
d0051654:	f001 f9fe 	bl	d0052a54 <meshSetMaterial>
d0051658:	4640      	mov	r0, r8
d005165a:	2122      	movs	r1, #34	; 0x22
d005165c:	f005 fa02 	bl	d0056a64 <meshColour>
d0051660:	eddf 0a11 	vldr	s1, [pc, #68]	; d00516a8 <InitLasers+0xb8>
d0051664:	eeb0 1a48 	vmov.f32	s2, s16
d0051668:	3406      	adds	r4, #6
d005166a:	eeb0 0a60 	vmov.f32	s0, s1
d005166e:	f003 ff8b 	bl	d0055588 <vec3>
d0051672:	4640      	mov	r0, r8
d0051674:	f005 f91e 	bl	d00568b4 <entityWorldSpawn>
d0051678:	f804 6c06 	strb.w	r6, [r4, #-6]
d005167c:	f824 0c02 	strh.w	r0, [r4, #-2]
d0051680:	2100      	movs	r1, #0
d0051682:	f824 6c04 	strh.w	r6, [r4, #-4]
d0051686:	b280      	uxth	r0, r0
d0051688:	f005 fd78 	bl	d005717c <entityVisible>
d005168c:	42bc      	cmp	r4, r7
d005168e:	d1e7      	bne.n	d0051660 <InitLasers+0x70>
d0051690:	b014      	add	sp, #80	; 0x50
d0051692:	ecbd 8b02 	vpop	{d8}
d0051696:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d005169a:	bf00      	nop
d005169c:	d012b224 	.word	0xd012b224
d00516a0:	d012b1a0 	.word	0xd012b1a0
d00516a4:	42480000 	.word	0x42480000
d00516a8:	00000000 	.word	0x00000000

d00516ac <FireTurret>:
d00516ac:	b530      	push	{r4, r5, lr}
d00516ae:	ed2d 8b02 	vpush	{d8}
d00516b2:	b091      	sub	sp, #68	; 0x44
d00516b4:	eeb0 8a60 	vmov.f32	s16, s1
d00516b8:	4604      	mov	r4, r0
d00516ba:	ed8d 0a01 	vstr	s0, [sp, #4]
d00516be:	ed8d 1a03 	vstr	s2, [sp, #12]
d00516c2:	f005 f959 	bl	d0056978 <entityGetPosition>
d00516c6:	eef0 6a40 	vmov.f32	s13, s0
d00516ca:	4620      	mov	r0, r4
d00516cc:	eeb0 7a60 	vmov.f32	s14, s1
d00516d0:	eddf 0a3b 	vldr	s1, [pc, #236]	; d00517c0 <FireTurret+0x114>
d00516d4:	eef0 7a41 	vmov.f32	s15, s2
d00516d8:	ed9d 0a01 	vldr	s0, [sp, #4]
d00516dc:	ee78 0a60 	vsub.f32	s1, s16, s1
d00516e0:	ed9d 1a03 	vldr	s2, [sp, #12]
d00516e4:	2100      	movs	r1, #0
d00516e6:	edcd 6a04 	vstr	s13, [sp, #16]
d00516ea:	ed8d 7a05 	vstr	s14, [sp, #20]
d00516ee:	edcd 7a06 	vstr	s15, [sp, #24]
d00516f2:	f005 fcb9 	bl	d0057068 <entityLookAtPosition>
d00516f6:	4b33      	ldr	r3, [pc, #204]	; (d00517c4 <FireTurret+0x118>)
d00516f8:	ed8d 0a07 	vstr	s0, [sp, #28]
d00516fc:	781a      	ldrb	r2, [r3, #0]
d00516fe:	edcd 0a08 	vstr	s1, [sp, #32]
d0051702:	b1d2      	cbz	r2, d005173a <FireTurret+0x8e>
d0051704:	799a      	ldrb	r2, [r3, #6]
d0051706:	2a00      	cmp	r2, #0
d0051708:	d04d      	beq.n	d00517a6 <FireTurret+0xfa>
d005170a:	7b1a      	ldrb	r2, [r3, #12]
d005170c:	2a00      	cmp	r2, #0
d005170e:	d04c      	beq.n	d00517aa <FireTurret+0xfe>
d0051710:	7c9a      	ldrb	r2, [r3, #18]
d0051712:	2a00      	cmp	r2, #0
d0051714:	d04b      	beq.n	d00517ae <FireTurret+0x102>
d0051716:	7e1a      	ldrb	r2, [r3, #24]
d0051718:	2a00      	cmp	r2, #0
d005171a:	d04a      	beq.n	d00517b2 <FireTurret+0x106>
d005171c:	7f9a      	ldrb	r2, [r3, #30]
d005171e:	2a00      	cmp	r2, #0
d0051720:	d049      	beq.n	d00517b6 <FireTurret+0x10a>
d0051722:	f893 2024 	ldrb.w	r2, [r3, #36]	; 0x24
d0051726:	b13a      	cbz	r2, d0051738 <FireTurret+0x8c>
d0051728:	f893 202a 	ldrb.w	r2, [r3, #42]	; 0x2a
d005172c:	2a00      	cmp	r2, #0
d005172e:	d044      	beq.n	d00517ba <FireTurret+0x10e>
d0051730:	b011      	add	sp, #68	; 0x44
d0051732:	ecbd 8b02 	vpop	{d8}
d0051736:	bd30      	pop	{r4, r5, pc}
d0051738:	2206      	movs	r2, #6
d005173a:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d005173e:	2132      	movs	r1, #50	; 0x32
d0051740:	2501      	movs	r5, #1
d0051742:	4620      	mov	r0, r4
d0051744:	eb03 0442 	add.w	r4, r3, r2, lsl #1
d0051748:	f803 5012 	strb.w	r5, [r3, r2, lsl #1]
d005174c:	8061      	strh	r1, [r4, #2]
d005174e:	f005 f933 	bl	d00569b8 <entityGetForward>
d0051752:	eddf 7a1b 	vldr	s15, [pc, #108]	; d00517c0 <FireTurret+0x114>
d0051756:	eddd 0a05 	vldr	s1, [sp, #20]
d005175a:	ed9d 0a04 	vldr	s0, [sp, #16]
d005175e:	ee70 0aa7 	vadd.f32	s1, s1, s15
d0051762:	ed9d 1a06 	vldr	s2, [sp, #24]
d0051766:	88a0      	ldrh	r0, [r4, #4]
d0051768:	f005 f8ea 	bl	d0056940 <entitySetPosition>
d005176c:	ed9f 1a16 	vldr	s2, [pc, #88]	; d00517c8 <FireTurret+0x11c>
d0051770:	4629      	mov	r1, r5
d0051772:	ed9d 0a08 	vldr	s0, [sp, #32]
d0051776:	eef0 0a41 	vmov.f32	s1, s2
d005177a:	88a0      	ldrh	r0, [r4, #4]
d005177c:	f005 fa52 	bl	d0056c24 <entityRotation>
d0051780:	ed9f 1a11 	vldr	s2, [pc, #68]	; d00517c8 <FireTurret+0x11c>
d0051784:	88a0      	ldrh	r0, [r4, #4]
d0051786:	2100      	movs	r1, #0
d0051788:	eeb0 0a41 	vmov.f32	s0, s2
d005178c:	eddd 0a07 	vldr	s1, [sp, #28]
d0051790:	f005 fa48 	bl	d0056c24 <entityRotation>
d0051794:	4629      	mov	r1, r5
d0051796:	88a0      	ldrh	r0, [r4, #4]
d0051798:	b011      	add	sp, #68	; 0x44
d005179a:	ecbd 8b02 	vpop	{d8}
d005179e:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d00517a2:	f005 bceb 	b.w	d005717c <entityVisible>
d00517a6:	2201      	movs	r2, #1
d00517a8:	e7c7      	b.n	d005173a <FireTurret+0x8e>
d00517aa:	2202      	movs	r2, #2
d00517ac:	e7c5      	b.n	d005173a <FireTurret+0x8e>
d00517ae:	2203      	movs	r2, #3
d00517b0:	e7c3      	b.n	d005173a <FireTurret+0x8e>
d00517b2:	2204      	movs	r2, #4
d00517b4:	e7c1      	b.n	d005173a <FireTurret+0x8e>
d00517b6:	2205      	movs	r2, #5
d00517b8:	e7bf      	b.n	d005173a <FireTurret+0x8e>
d00517ba:	2207      	movs	r2, #7
d00517bc:	e7bd      	b.n	d005173a <FireTurret+0x8e>
d00517be:	bf00      	nop
d00517c0:	42480000 	.word	0x42480000
d00517c4:	d012b224 	.word	0xd012b224
d00517c8:	00000000 	.word	0x00000000

d00517cc <UpdateTurretTest.part.0>:
d00517cc:	b500      	push	{lr}
d00517ce:	b085      	sub	sp, #20
d00517d0:	f008 fe0a 	bl	d005a3e8 <rand>
d00517d4:	4a24      	ldr	r2, [pc, #144]	; (d0051868 <UpdateTurretTest.part.0+0x9c>)
d00517d6:	fb82 3200 	smull	r3, r2, r2, r0
d00517da:	17c3      	asrs	r3, r0, #31
d00517dc:	ebc3 0362 	rsb	r3, r3, r2, asr #1
d00517e0:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d00517e4:	eb03 0342 	add.w	r3, r3, r2, lsl #1
d00517e8:	1ac0      	subs	r0, r0, r3
d00517ea:	2802      	cmp	r0, #2
d00517ec:	dc1f      	bgt.n	d005182e <UpdateTurretTest.part.0+0x62>
d00517ee:	4b1f      	ldr	r3, [pc, #124]	; (d005186c <UpdateTurretTest.part.0+0xa0>)
d00517f0:	6818      	ldr	r0, [r3, #0]
d00517f2:	f005 f8c1 	bl	d0056978 <entityGetPosition>
d00517f6:	4b1e      	ldr	r3, [pc, #120]	; (d0051870 <UpdateTurretTest.part.0+0xa4>)
d00517f8:	8818      	ldrh	r0, [r3, #0]
d00517fa:	f7ff ff57 	bl	d00516ac <FireTurret>
d00517fe:	4a1d      	ldr	r2, [pc, #116]	; (d0051874 <UpdateTurretTest.part.0+0xa8>)
d0051800:	8813      	ldrh	r3, [r2, #0]
d0051802:	3b01      	subs	r3, #1
d0051804:	b21b      	sxth	r3, r3
d0051806:	2b00      	cmp	r3, #0
d0051808:	8013      	strh	r3, [r2, #0]
d005180a:	dd1c      	ble.n	d0051846 <UpdateTurretTest.part.0+0x7a>
d005180c:	f008 fdec 	bl	d005a3e8 <rand>
d0051810:	4a19      	ldr	r2, [pc, #100]	; (d0051878 <UpdateTurretTest.part.0+0xac>)
d0051812:	491a      	ldr	r1, [pc, #104]	; (d005187c <UpdateTurretTest.part.0+0xb0>)
d0051814:	fb82 3200 	smull	r3, r2, r2, r0
d0051818:	17c3      	asrs	r3, r0, #31
d005181a:	ebc3 0362 	rsb	r3, r3, r2, asr #1
d005181e:	eb03 0383 	add.w	r3, r3, r3, lsl #2
d0051822:	1ac0      	subs	r0, r0, r3
d0051824:	3004      	adds	r0, #4
d0051826:	8008      	strh	r0, [r1, #0]
d0051828:	b005      	add	sp, #20
d005182a:	f85d fb04 	ldr.w	pc, [sp], #4
d005182e:	4b14      	ldr	r3, [pc, #80]	; (d0051880 <UpdateTurretTest.part.0+0xb4>)
d0051830:	4a0f      	ldr	r2, [pc, #60]	; (d0051870 <UpdateTurretTest.part.0+0xa4>)
d0051832:	ed93 0a00 	vldr	s0, [r3]
d0051836:	edd3 0a01 	vldr	s1, [r3, #4]
d005183a:	ed93 1a02 	vldr	s2, [r3, #8]
d005183e:	8810      	ldrh	r0, [r2, #0]
d0051840:	f7ff ff34 	bl	d00516ac <FireTurret>
d0051844:	e7db      	b.n	d00517fe <UpdateTurretTest.part.0+0x32>
d0051846:	f008 fdcf 	bl	d005a3e8 <rand>
d005184a:	4b0e      	ldr	r3, [pc, #56]	; (d0051884 <UpdateTurretTest.part.0+0xb8>)
d005184c:	4a0b      	ldr	r2, [pc, #44]	; (d005187c <UpdateTurretTest.part.0+0xb0>)
d005184e:	fb83 1300 	smull	r1, r3, r3, r0
d0051852:	eba3 73e0 	sub.w	r3, r3, r0, asr #31
d0051856:	eb03 0343 	add.w	r3, r3, r3, lsl #1
d005185a:	eba0 0043 	sub.w	r0, r0, r3, lsl #1
d005185e:	300f      	adds	r0, #15
d0051860:	8010      	strh	r0, [r2, #0]
d0051862:	b005      	add	sp, #20
d0051864:	f85d fb04 	ldr.w	pc, [sp], #4
d0051868:	2e8ba2e9 	.word	0x2e8ba2e9
d005186c:	d0090ec0 	.word	0xd0090ec0
d0051870:	d0090f00 	.word	0xd0090f00
d0051874:	d0090f04 	.word	0xd0090f04
d0051878:	66666667 	.word	0x66666667
d005187c:	d0090f06 	.word	0xd0090f06
d0051880:	d0090e60 	.word	0xd0090e60
d0051884:	2aaaaaab 	.word	0x2aaaaaab

d0051888 <main>:
d0051888:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d005188c:	ed2d 8b10 	vpush	{d8-d15}
d0051890:	f5ad 4d89 	sub.w	sp, sp, #17536	; 0x4480
d0051894:	f244 2657 	movw	r6, #16983	; 0x4257
d0051898:	ed9f 8acb 	vldr	s16, [pc, #812]	; d0051bc8 <main+0x340>
d005189c:	f04f 4b7f 	mov.w	fp, #4278190080	; 0xff000000
d00518a0:	b09f      	sub	sp, #124	; 0x7c
d00518a2:	4dca      	ldr	r5, [pc, #808]	; (d0051bcc <main+0x344>)
d00518a4:	f7ff fa9e 	bl	d0050de4 <initSystem>
d00518a8:	f8df a364 	ldr.w	sl, [pc, #868]	; d0051c10 <main+0x388>
d00518ac:	446e      	add	r6, sp
d00518ae:	f7ff fcc7 	bl	d0051240 <goIntro>
d00518b2:	f004 f9eb 	bl	d0055c8c <worldClear>
d00518b6:	4cc6      	ldr	r4, [pc, #792]	; (d0051bd0 <main+0x348>)
d00518b8:	f005 fed0 	bl	d005765c <lightsClear>
d00518bc:	f026 061f 	bic.w	r6, r6, #31
d00518c0:	f003 fee8 	bl	d0055694 <sb3dParticlesClear>
d00518c4:	eef0 9a48 	vmov.f32	s19, s16
d00518c8:	f005 ff74 	bl	d00577b4 <setDefaultRenderMode>
d00518cc:	a81a      	add	r0, sp, #104	; 0x68
d00518ce:	f004 fa3b 	bl	d0055d48 <cameraCreate>
d00518d2:	a91a      	add	r1, sp, #104	; 0x68
d00518d4:	2260      	movs	r2, #96	; 0x60
d00518d6:	48bf      	ldr	r0, [pc, #764]	; (d0051bd4 <main+0x34c>)
d00518d8:	f008 fcc6 	bl	d005a268 <memcpy>
d00518dc:	f506 73e0 	add.w	r3, r6, #448	; 0x1c0
d00518e0:	48bc      	ldr	r0, [pc, #752]	; (d0051bd4 <main+0x34c>)
d00518e2:	f506 7810 	add.w	r8, r6, #576	; 0x240
d00518e6:	eddf 0abc 	vldr	s1, [pc, #752]	; d0051bd8 <main+0x350>
d00518ea:	f506 7700 	add.w	r7, r6, #512	; 0x200
d00518ee:	ed9f 0abb 	vldr	s0, [pc, #748]	; d0051bdc <main+0x354>
d00518f2:	f506 79a0 	add.w	r9, r6, #320	; 0x140
d00518f6:	9305      	str	r3, [sp, #20]
d00518f8:	f004 fccc 	bl	d0056294 <cameraSetRange>
d00518fc:	eeb0 1a48 	vmov.f32	s2, s16
d0051900:	eddf 0ac5 	vldr	s1, [pc, #788]	; d0051c18 <main+0x390>
d0051904:	eeb0 0a48 	vmov.f32	s0, s16
d0051908:	ed9f 9ab5 	vldr	s18, [pc, #724]	; d0051be0 <main+0x358>
d005190c:	f003 fe3c 	bl	d0055588 <vec3>
d0051910:	f506 72c0 	add.w	r2, r6, #384	; 0x180
d0051914:	f506 7180 	add.w	r1, r6, #256	; 0x100
d0051918:	48ae      	ldr	r0, [pc, #696]	; (d0051bd4 <main+0x34c>)
d005191a:	ed8d 0a43 	vstr	s0, [sp, #268]	; 0x10c
d005191e:	edcd 0a44 	vstr	s1, [sp, #272]	; 0x110
d0051922:	ed8d 1a45 	vstr	s2, [sp, #276]	; 0x114
d0051926:	9206      	str	r2, [sp, #24]
d0051928:	9107      	str	r1, [sp, #28]
d005192a:	f004 fa17 	bl	d0055d5c <cameraSetPosition>
d005192e:	48a9      	ldr	r0, [pc, #676]	; (d0051bd4 <main+0x34c>)
d0051930:	f004 f9b4 	bl	d0055c9c <cameraNormalize>
d0051934:	f50d 7cd2 	add.w	ip, sp, #420	; 0x1a4
d0051938:	f50d 7ec8 	add.w	lr, sp, #400	; 0x190
d005193c:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d005193e:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d0051942:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0051944:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d0051948:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d005194a:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d005194e:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0051952:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d0051956:	f105 0c10 	add.w	ip, r5, #16
d005195a:	f8ca b000 	str.w	fp, [sl]
d005195e:	f8cd e000 	str.w	lr, [sp]
d0051962:	3524      	adds	r5, #36	; 0x24
d0051964:	f8ca b040 	str.w	fp, [sl, #64]	; 0x40
d0051968:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
d005196c:	f8dc c000 	ldr.w	ip, [ip]
d0051970:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
d0051974:	465b      	mov	r3, fp
d0051976:	f8ce c000 	str.w	ip, [lr]
d005197a:	4650      	mov	r0, sl
d005197c:	a969      	add	r1, sp, #420	; 0x1a4
d005197e:	2210      	movs	r2, #16
d0051980:	f10d 0bf4 	add.w	fp, sp, #244	; 0xf4
d0051984:	f005 fc16 	bl	d00571b4 <buildLightingCLUT>
d0051988:	7b23      	ldrb	r3, [r4, #12]
d005198a:	7b62      	ldrb	r2, [r4, #13]
d005198c:	4650      	mov	r0, sl
d005198e:	7ba1      	ldrb	r1, [r4, #14]
d0051990:	46b2      	mov	sl, r6
d0051992:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051996:	7be2      	ldrb	r2, [r4, #15]
d0051998:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d005199c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00519a0:	681b      	ldr	r3, [r3, #0]
d00519a2:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
d00519a4:	4798      	blx	r3
d00519a6:	eeb0 1a48 	vmov.f32	s2, s16
d00519aa:	eef0 0a48 	vmov.f32	s1, s16
d00519ae:	eeb0 0a48 	vmov.f32	s0, s16
d00519b2:	f003 fde9 	bl	d0055588 <vec3>
d00519b6:	eddf 1a89 	vldr	s3, [pc, #548]	; d0051bdc <main+0x354>
d00519ba:	2001      	movs	r0, #1
d00519bc:	edcd 0a47 	vstr	s1, [sp, #284]	; 0x11c
d00519c0:	ed8d 0a46 	vstr	s0, [sp, #280]	; 0x118
d00519c4:	ed8d 1a48 	vstr	s2, [sp, #288]	; 0x120
d00519c8:	f005 fe5c 	bl	d0057684 <addPointLight>
d00519cc:	ab37      	add	r3, sp, #220	; 0xdc
d00519ce:	9004      	str	r0, [sp, #16]
d00519d0:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d00519d4:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d00519d8:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d00519dc:	2001      	movs	r0, #1
d00519de:	edd3 0a01 	vldr	s1, [r3, #4]
d00519e2:	ed93 1a02 	vldr	s2, [r3, #8]
d00519e6:	ed93 0a00 	vldr	s0, [r3]
d00519ea:	f005 fe87 	bl	d00576fc <addDirectionalLight>
d00519ee:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d00519f2:	b2c3      	uxtb	r3, r0
d00519f4:	461d      	mov	r5, r3
d00519f6:	4618      	mov	r0, r3
d00519f8:	ee0f 3a90 	vmov	s31, r3
d00519fc:	f005 feca 	bl	d0057794 <lightSetIntensity>
d0051a00:	4628      	mov	r0, r5
d0051a02:	2100      	movs	r1, #0
d0051a04:	f005 fe30 	bl	d0057668 <lightEnable>
d0051a08:	f506 7128 	add.w	r1, r6, #672	; 0x2a0
d0051a0c:	4875      	ldr	r0, [pc, #468]	; (d0051be4 <main+0x35c>)
d0051a0e:	f7fe fb91 	bl	d0050134 <LoadSFX>
d0051a12:	7c21      	ldrb	r1, [r4, #16]
d0051a14:	7c65      	ldrb	r5, [r4, #17]
d0051a16:	4602      	mov	r2, r0
d0051a18:	f894 c012 	ldrb.w	ip, [r4, #18]
d0051a1c:	2300      	movs	r3, #0
d0051a1e:	ea41 2505 	orr.w	r5, r1, r5, lsl #8
d0051a22:	7ce0      	ldrb	r0, [r4, #19]
d0051a24:	f8d6 12a0 	ldr.w	r1, [r6, #672]	; 0x2a0
d0051a28:	ea45 450c 	orr.w	r5, r5, ip, lsl #16
d0051a2c:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d0051a30:	4618      	mov	r0, r3
d0051a32:	68ad      	ldr	r5, [r5, #8]
d0051a34:	68ed      	ldr	r5, [r5, #12]
d0051a36:	47a8      	blx	r5
d0051a38:	7c23      	ldrb	r3, [r4, #16]
d0051a3a:	7c62      	ldrb	r2, [r4, #17]
d0051a3c:	f644 6184 	movw	r1, #20100	; 0x4e84
d0051a40:	7ca5      	ldrb	r5, [r4, #18]
d0051a42:	2000      	movs	r0, #0
d0051a44:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051a48:	7ce2      	ldrb	r2, [r4, #19]
d0051a4a:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0051a4e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051a52:	689b      	ldr	r3, [r3, #8]
d0051a54:	691b      	ldr	r3, [r3, #16]
d0051a56:	4798      	blx	r3
d0051a58:	7c23      	ldrb	r3, [r4, #16]
d0051a5a:	7c62      	ldrb	r2, [r4, #17]
d0051a5c:	f44f 71dc 	mov.w	r1, #440	; 0x1b8
d0051a60:	7ca5      	ldrb	r5, [r4, #18]
d0051a62:	2000      	movs	r0, #0
d0051a64:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051a68:	7ce2      	ldrb	r2, [r4, #19]
d0051a6a:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0051a6e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051a72:	689b      	ldr	r3, [r3, #8]
d0051a74:	695b      	ldr	r3, [r3, #20]
d0051a76:	4798      	blx	r3
d0051a78:	7c23      	ldrb	r3, [r4, #16]
d0051a7a:	7c62      	ldrb	r2, [r4, #17]
d0051a7c:	f06f 013f 	mvn.w	r1, #63	; 0x3f
d0051a80:	7ca5      	ldrb	r5, [r4, #18]
d0051a82:	2000      	movs	r0, #0
d0051a84:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051a88:	7ce2      	ldrb	r2, [r4, #19]
d0051a8a:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0051a8e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051a92:	689b      	ldr	r3, [r3, #8]
d0051a94:	699b      	ldr	r3, [r3, #24]
d0051a96:	4798      	blx	r3
d0051a98:	7c23      	ldrb	r3, [r4, #16]
d0051a9a:	7c62      	ldrb	r2, [r4, #17]
d0051a9c:	2100      	movs	r1, #0
d0051a9e:	7ca5      	ldrb	r5, [r4, #18]
d0051aa0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051aa4:	7ce2      	ldrb	r2, [r4, #19]
d0051aa6:	4608      	mov	r0, r1
d0051aa8:	ea43 4305 	orr.w	r3, r3, r5, lsl #16
d0051aac:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051ab0:	689b      	ldr	r3, [r3, #8]
d0051ab2:	6a1b      	ldr	r3, [r3, #32]
d0051ab4:	4798      	blx	r3
d0051ab6:	f506 7120 	add.w	r1, r6, #640	; 0x280
d0051aba:	484b      	ldr	r0, [pc, #300]	; (d0051be8 <main+0x360>)
d0051abc:	f7fe fb3a 	bl	d0050134 <LoadSFX>
d0051ac0:	7c21      	ldrb	r1, [r4, #16]
d0051ac2:	7c65      	ldrb	r5, [r4, #17]
d0051ac4:	4602      	mov	r2, r0
d0051ac6:	f894 c012 	ldrb.w	ip, [r4, #18]
d0051aca:	2300      	movs	r3, #0
d0051acc:	ea41 2505 	orr.w	r5, r1, r5, lsl #8
d0051ad0:	7ce0      	ldrb	r0, [r4, #19]
d0051ad2:	f8d6 1280 	ldr.w	r1, [r6, #640]	; 0x280
d0051ad6:	ea45 450c 	orr.w	r5, r5, ip, lsl #16
d0051ada:	ea45 6500 	orr.w	r5, r5, r0, lsl #24
d0051ade:	2001      	movs	r0, #1
d0051ae0:	68ad      	ldr	r5, [r5, #8]
d0051ae2:	68ed      	ldr	r5, [r5, #12]
d0051ae4:	47a8      	blx	r5
d0051ae6:	7c23      	ldrb	r3, [r4, #16]
d0051ae8:	7c62      	ldrb	r2, [r4, #17]
d0051aea:	f244 21cc 	movw	r1, #17100	; 0x42cc
d0051aee:	7ca0      	ldrb	r0, [r4, #18]
d0051af0:	2500      	movs	r5, #0
d0051af2:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051af6:	7ce2      	ldrb	r2, [r4, #19]
d0051af8:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0051afc:	2001      	movs	r0, #1
d0051afe:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051b02:	689b      	ldr	r3, [r3, #8]
d0051b04:	691b      	ldr	r3, [r3, #16]
d0051b06:	4798      	blx	r3
d0051b08:	7c23      	ldrb	r3, [r4, #16]
d0051b0a:	7c62      	ldrb	r2, [r4, #17]
d0051b0c:	f44f 71dc 	mov.w	r1, #440	; 0x1b8
d0051b10:	2001      	movs	r0, #1
d0051b12:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051b16:	7ca2      	ldrb	r2, [r4, #18]
d0051b18:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0051b1c:	7ce2      	ldrb	r2, [r4, #19]
d0051b1e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051b22:	689b      	ldr	r3, [r3, #8]
d0051b24:	695b      	ldr	r3, [r3, #20]
d0051b26:	4798      	blx	r3
d0051b28:	7c23      	ldrb	r3, [r4, #16]
d0051b2a:	7c62      	ldrb	r2, [r4, #17]
d0051b2c:	2140      	movs	r1, #64	; 0x40
d0051b2e:	2001      	movs	r0, #1
d0051b30:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051b34:	7ca2      	ldrb	r2, [r4, #18]
d0051b36:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0051b3a:	7ce2      	ldrb	r2, [r4, #19]
d0051b3c:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051b40:	689b      	ldr	r3, [r3, #8]
d0051b42:	699b      	ldr	r3, [r3, #24]
d0051b44:	4798      	blx	r3
d0051b46:	7c23      	ldrb	r3, [r4, #16]
d0051b48:	7c62      	ldrb	r2, [r4, #17]
d0051b4a:	4629      	mov	r1, r5
d0051b4c:	2001      	movs	r0, #1
d0051b4e:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051b52:	7ca2      	ldrb	r2, [r4, #18]
d0051b54:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0051b58:	7ce2      	ldrb	r2, [r4, #19]
d0051b5a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051b5e:	689b      	ldr	r3, [r3, #8]
d0051b60:	6a1b      	ldr	r3, [r3, #32]
d0051b62:	4798      	blx	r3
d0051b64:	4641      	mov	r1, r8
d0051b66:	eeb3 0a09 	vmov.f32	s0, #57	; 0x41c80000  25.0
d0051b6a:	4820      	ldr	r0, [pc, #128]	; (d0051bec <main+0x364>)
d0051b6c:	f007 ff28 	bl	d00599c0 <loadMeshSB3D>
d0051b70:	ed9f 1a1f 	vldr	s2, [pc, #124]	; d0051bf0 <main+0x368>
d0051b74:	eddf 0a1f 	vldr	s1, [pc, #124]	; d0051bf4 <main+0x36c>
d0051b78:	ed9f 0a1f 	vldr	s0, [pc, #124]	; d0051bf8 <main+0x370>
d0051b7c:	f003 fd04 	bl	d0055588 <vec3>
d0051b80:	4640      	mov	r0, r8
d0051b82:	ed8d 0a49 	vstr	s0, [sp, #292]	; 0x124
d0051b86:	edcd 0a4a 	vstr	s1, [sp, #296]	; 0x128
d0051b8a:	ed8d 1a4b 	vstr	s2, [sp, #300]	; 0x12c
d0051b8e:	f004 fe91 	bl	d00568b4 <entityWorldSpawn>
d0051b92:	4b1a      	ldr	r3, [pc, #104]	; (d0051bfc <main+0x374>)
d0051b94:	4602      	mov	r2, r0
d0051b96:	eef0 1a00 	vmov.f32	s3, #0	; 0x40000000  2.0
d0051b9a:	ed9f 2a19 	vldr	s4, [pc, #100]	; d0051c00 <main+0x378>
d0051b9e:	eeb0 1a48 	vmov.f32	s2, s16
d0051ba2:	4640      	mov	r0, r8
d0051ba4:	eeb0 0a48 	vmov.f32	s0, s16
d0051ba8:	eddf 0a16 	vldr	s1, [pc, #88]	; d0051c04 <main+0x37c>
d0051bac:	601a      	str	r2, [r3, #0]
d0051bae:	f000 ff51 	bl	d0052a54 <meshSetMaterial>
d0051bb2:	f7ff fd1d 	bl	d00515f0 <InitLasers>
d0051bb6:	4639      	mov	r1, r7
d0051bb8:	ed9f 0a13 	vldr	s0, [pc, #76]	; d0051c08 <main+0x380>
d0051bbc:	4813      	ldr	r0, [pc, #76]	; (d0051c0c <main+0x384>)
d0051bbe:	f007 feff 	bl	d00599c0 <loadMeshSB3D>
d0051bc2:	eeb0 1a48 	vmov.f32	s2, s16
d0051bc6:	e029      	b.n	d0051c1c <main+0x394>
d0051bc8:	00000000 	.word	0x00000000
d0051bcc:	d005c11c 	.word	0xd005c11c
d0051bd0:	2001f000 	.word	0x2001f000
d0051bd4:	d0090e60 	.word	0xd0090e60
d0051bd8:	459c4000 	.word	0x459c4000
d0051bdc:	3c23d70a 	.word	0x3c23d70a
d0051be0:	42280000 	.word	0x42280000
d0051be4:	d005c084 	.word	0xd005c084
d0051be8:	d005c094 	.word	0xd005c094
d0051bec:	d005c0a4 	.word	0xd005c0a4
d0051bf0:	44460000 	.word	0x44460000
d0051bf4:	42a00000 	.word	0x42a00000
d0051bf8:	c4080000 	.word	0xc4080000
d0051bfc:	d0090f00 	.word	0xd0090f00
d0051c00:	42c00000 	.word	0x42c00000
d0051c04:	3ee66666 	.word	0x3ee66666
d0051c08:	43480000 	.word	0x43480000
d0051c0c:	d005c0b4 	.word	0xd005c0b4
d0051c10:	d0090980 	.word	0xd0090980
d0051c14:	3e4ccccd 	.word	0x3e4ccccd
d0051c18:	42480000 	.word	0x42480000
d0051c1c:	eef0 0a48 	vmov.f32	s1, s16
d0051c20:	eeb0 0a48 	vmov.f32	s0, s16
d0051c24:	f003 fcb0 	bl	d0055588 <vec3>
d0051c28:	4638      	mov	r0, r7
d0051c2a:	edcd 0a4d 	vstr	s1, [sp, #308]	; 0x134
d0051c2e:	ed8d 0a4c 	vstr	s0, [sp, #304]	; 0x130
d0051c32:	ed8d 1a4e 	vstr	s2, [sp, #312]	; 0x138
d0051c36:	f004 fe3d 	bl	d00568b4 <entityWorldSpawn>
d0051c3a:	2101      	movs	r1, #1
d0051c3c:	f005 fa82 	bl	d0057144 <entityAllowHit>
d0051c40:	eeb0 2a48 	vmov.f32	s4, s16
d0051c44:	ed5f 1a0d 	vldr	s3, [pc, #-52]	; d0051c14 <main+0x38c>
d0051c48:	eeb0 1a48 	vmov.f32	s2, s16
d0051c4c:	eeb0 0a48 	vmov.f32	s0, s16
d0051c50:	4638      	mov	r0, r7
d0051c52:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d0051c56:	f000 fefd 	bl	d0052a54 <meshSetMaterial>
d0051c5a:	eeb2 1a04 	vmov.f32	s2, #36	; 0x41200000  10.0
d0051c5e:	eddd 8a05 	vldr	s17, [sp, #20]
d0051c62:	eef0 0a41 	vmov.f32	s1, s2
d0051c66:	ee18 0a90 	vmov	r0, s17
d0051c6a:	eeb0 0a41 	vmov.f32	s0, s2
d0051c6e:	f004 ffeb 	bl	d0056c48 <createBox>
d0051c72:	eef0 0a48 	vmov.f32	s1, s16
d0051c76:	eeb0 1a48 	vmov.f32	s2, s16
d0051c7a:	ee18 0a90 	vmov	r0, s17
d0051c7e:	eeb0 0a48 	vmov.f32	s0, s16
d0051c82:	ed8d 8a3a 	vstr	s16, [sp, #232]	; 0xe8
d0051c86:	ed8d 8a3b 	vstr	s16, [sp, #236]	; 0xec
d0051c8a:	ed8d 8a3c 	vstr	s16, [sp, #240]	; 0xf0
d0051c8e:	f004 fe11 	bl	d00568b4 <entityWorldSpawn>
d0051c92:	f8dd 8018 	ldr.w	r8, [sp, #24]
d0051c96:	ed1f 0a20 	vldr	s0, [pc, #-128]	; d0051c18 <main+0x390>
d0051c9a:	4641      	mov	r1, r8
d0051c9c:	48bb      	ldr	r0, [pc, #748]	; (d0051f8c <main+0x704>)
d0051c9e:	f007 fe8f 	bl	d00599c0 <loadMeshSB3D>
d0051ca2:	eef0 0a48 	vmov.f32	s1, s16
d0051ca6:	ed9f 1aba 	vldr	s2, [pc, #744]	; d0051f90 <main+0x708>
d0051caa:	ed9f 0aba 	vldr	s0, [pc, #744]	; d0051f94 <main+0x70c>
d0051cae:	f003 fc6b 	bl	d0055588 <vec3>
d0051cb2:	4640      	mov	r0, r8
d0051cb4:	edcd 0a50 	vstr	s1, [sp, #320]	; 0x140
d0051cb8:	ed8d 1a51 	vstr	s2, [sp, #324]	; 0x144
d0051cbc:	ed8d 0a4f 	vstr	s0, [sp, #316]	; 0x13c
d0051cc0:	f004 fdf8 	bl	d00568b4 <entityWorldSpawn>
d0051cc4:	4ab4      	ldr	r2, [pc, #720]	; (d0051f98 <main+0x710>)
d0051cc6:	4603      	mov	r3, r0
d0051cc8:	eeb2 0a04 	vmov.f32	s0, #36	; 0x41200000  10.0
d0051ccc:	4649      	mov	r1, r9
d0051cce:	48b3      	ldr	r0, [pc, #716]	; (d0051f9c <main+0x714>)
d0051cd0:	6013      	str	r3, [r2, #0]
d0051cd2:	f007 fe75 	bl	d00599c0 <loadMeshSB3D>
d0051cd6:	9f07      	ldr	r7, [sp, #28]
d0051cd8:	4649      	mov	r1, r9
d0051cda:	eddf 8ab1 	vldr	s17, [pc, #708]	; d0051fa0 <main+0x718>
d0051cde:	4638      	mov	r0, r7
d0051ce0:	f005 f932 	bl	d0056f48 <copyMesh>
d0051ce4:	ed9f 1aaf 	vldr	s2, [pc, #700]	; d0051fa4 <main+0x71c>
d0051ce8:	eddf 0aaf 	vldr	s1, [pc, #700]	; d0051fa8 <main+0x720>
d0051cec:	ed9f 0aaf 	vldr	s0, [pc, #700]	; d0051fac <main+0x724>
d0051cf0:	f003 fc4a 	bl	d0055588 <vec3>
d0051cf4:	4638      	mov	r0, r7
d0051cf6:	ed8d 0a52 	vstr	s0, [sp, #328]	; 0x148
d0051cfa:	edcd 0a53 	vstr	s1, [sp, #332]	; 0x14c
d0051cfe:	ed8d 1a54 	vstr	s2, [sp, #336]	; 0x150
d0051d02:	f004 fdd7 	bl	d00568b4 <entityWorldSpawn>
d0051d06:	eeb0 1a48 	vmov.f32	s2, s16
d0051d0a:	4607      	mov	r7, r0
d0051d0c:	eef0 0a48 	vmov.f32	s1, s16
d0051d10:	eeb0 0a48 	vmov.f32	s0, s16
d0051d14:	ed9f 8aa6 	vldr	s16, [pc, #664]	; d0051fb0 <main+0x728>
d0051d18:	f003 fc36 	bl	d0055588 <vec3>
d0051d1c:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d0051d20:	2001      	movs	r0, #1
d0051d22:	edcd 0a56 	vstr	s1, [sp, #344]	; 0x158
d0051d26:	ed8d 0a55 	vstr	s0, [sp, #340]	; 0x154
d0051d2a:	ed8d 1a57 	vstr	s2, [sp, #348]	; 0x15c
d0051d2e:	f005 fca9 	bl	d0057684 <addPointLight>
d0051d32:	b2c3      	uxtb	r3, r0
d0051d34:	ed9f 1a9f 	vldr	s2, [pc, #636]	; d0051fb4 <main+0x72c>
d0051d38:	eddf 0a9f 	vldr	s1, [pc, #636]	; d0051fb8 <main+0x730>
d0051d3c:	4618      	mov	r0, r3
d0051d3e:	ed9f 0a9f 	vldr	s0, [pc, #636]	; d0051fbc <main+0x734>
d0051d42:	ee0e 3a10 	vmov	s28, r3
d0051d46:	f005 fc6b 	bl	d0057620 <lightSetRanges>
d0051d4a:	4649      	mov	r1, r9
d0051d4c:	a80a      	add	r0, sp, #40	; 0x28
d0051d4e:	f005 f8fb 	bl	d0056f48 <copyMesh>
d0051d52:	2364      	movs	r3, #100	; 0x64
d0051d54:	eb06 1c85 	add.w	ip, r6, r5, lsl #6
d0051d58:	3501      	adds	r5, #1
d0051d5a:	f10d 0e28 	add.w	lr, sp, #40	; 0x28
d0051d5e:	eef0 0a49 	vmov.f32	s1, s18
d0051d62:	fb03 f305 	mul.w	r3, r3, r5
d0051d66:	eeb0 0a68 	vmov.f32	s0, s17
d0051d6a:	ee01 3a10 	vmov	s2, r3
d0051d6e:	e8be 000f 	ldmia.w	lr!, {r0, r1, r2, r3}
d0051d72:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d0051d76:	e8be 000f 	ldmia.w	lr!, {r0, r1, r2, r3}
d0051d7a:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d0051d7e:	e8be 000f 	ldmia.w	lr!, {r0, r1, r2, r3}
d0051d82:	eeb8 1ac1 	vcvt.f32.s32	s2, s2
d0051d86:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
d0051d8a:	e89e 000f 	ldmia.w	lr, {r0, r1, r2, r3}
d0051d8e:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d0051d92:	f003 fbf9 	bl	d0055588 <vec3>
d0051d96:	4650      	mov	r0, sl
d0051d98:	edcd 0a59 	vstr	s1, [sp, #356]	; 0x164
d0051d9c:	f10a 0a40 	add.w	sl, sl, #64	; 0x40
d0051da0:	ed8d 1a5a 	vstr	s2, [sp, #360]	; 0x168
d0051da4:	ed8d 0a58 	vstr	s0, [sp, #352]	; 0x160
d0051da8:	f004 fd84 	bl	d00568b4 <entityWorldSpawn>
d0051dac:	4680      	mov	r8, r0
d0051dae:	f84b 0b04 	str.w	r0, [fp], #4
d0051db2:	eeb0 0a48 	vmov.f32	s0, s16
d0051db6:	f003 fbeb 	bl	d0055590 <degrees>
d0051dba:	eeb0 1a69 	vmov.f32	s2, s19
d0051dbe:	4640      	mov	r0, r8
d0051dc0:	2101      	movs	r1, #1
d0051dc2:	eddf 0a7f 	vldr	s1, [pc, #508]	; d0051fc0 <main+0x738>
d0051dc6:	f004 ff2d 	bl	d0056c24 <entityRotation>
d0051dca:	2d03      	cmp	r5, #3
d0051dcc:	d1bd      	bne.n	d0051d4a <main+0x4c2>
d0051dce:	983e      	ldr	r0, [sp, #248]	; 0xf8
d0051dd0:	2301      	movs	r3, #1
d0051dd2:	ed9f 1a7c 	vldr	s2, [pc, #496]	; d0051fc4 <main+0x73c>
d0051dd6:	36c0      	adds	r6, #192	; 0xc0
d0051dd8:	eddf 0a7b 	vldr	s1, [pc, #492]	; d0051fc8 <main+0x740>
d0051ddc:	ee0d 7a90 	vmov	s27, r7
d0051de0:	ed9f 0a6f 	vldr	s0, [pc, #444]	; d0051fa0 <main+0x718>
d0051de4:	f89d 9010 	ldrb.w	r9, [sp, #16]
d0051de8:	9005      	str	r0, [sp, #20]
d0051dea:	9308      	str	r3, [sp, #32]
d0051dec:	f003 fbcc 	bl	d0055588 <vec3>
d0051df0:	2300      	movs	r3, #0
d0051df2:	9805      	ldr	r0, [sp, #20]
d0051df4:	edcd 0a5c 	vstr	s1, [sp, #368]	; 0x170
d0051df8:	ee0f 9a10 	vmov	s30, r9
d0051dfc:	9304      	str	r3, [sp, #16]
d0051dfe:	ed8d 1a5d 	vstr	s2, [sp, #372]	; 0x174
d0051e02:	ed8d 0a5b 	vstr	s0, [sp, #364]	; 0x16c
d0051e06:	f004 fd9b 	bl	d0056940 <entitySetPosition>
d0051e0a:	4631      	mov	r1, r6
d0051e0c:	ed9f 0a66 	vldr	s0, [pc, #408]	; d0051fa8 <main+0x720>
d0051e10:	486e      	ldr	r0, [pc, #440]	; (d0051fcc <main+0x744>)
d0051e12:	f007 fdd5 	bl	d00599c0 <loadMeshSB3D>
d0051e16:	ed9f 1a6b 	vldr	s2, [pc, #428]	; d0051fc4 <main+0x73c>
d0051e1a:	eddf 0a6d 	vldr	s1, [pc, #436]	; d0051fd0 <main+0x748>
d0051e1e:	ed9f 0a6d 	vldr	s0, [pc, #436]	; d0051fd4 <main+0x74c>
d0051e22:	f003 fbb1 	bl	d0055588 <vec3>
d0051e26:	4630      	mov	r0, r6
d0051e28:	ed8d 0a5e 	vstr	s0, [sp, #376]	; 0x178
d0051e2c:	edcd 0a5f 	vstr	s1, [sp, #380]	; 0x17c
d0051e30:	ed8d 1a60 	vstr	s2, [sp, #384]	; 0x180
d0051e34:	f004 fd3e 	bl	d00568b4 <entityWorldSpawn>
d0051e38:	ed9f 1a61 	vldr	s2, [pc, #388]	; d0051fc0 <main+0x738>
d0051e3c:	4603      	mov	r3, r0
d0051e3e:	eef0 1a00 	vmov.f32	s3, #0	; 0x40000000  2.0
d0051e42:	ed9f 2a65 	vldr	s4, [pc, #404]	; d0051fd8 <main+0x750>
d0051e46:	eeb0 0a41 	vmov.f32	s0, s2
d0051e4a:	4630      	mov	r0, r6
d0051e4c:	eddf 0a63 	vldr	s1, [pc, #396]	; d0051fdc <main+0x754>
d0051e50:	ee0e 3a90 	vmov	s29, r3
d0051e54:	f000 fdfe 	bl	d0052a54 <meshSetMaterial>
d0051e58:	2301      	movs	r3, #1
d0051e5a:	2216      	movs	r2, #22
d0051e5c:	4960      	ldr	r1, [pc, #384]	; (d0051fe0 <main+0x758>)
d0051e5e:	a879      	add	r0, sp, #484	; 0x1e4
d0051e60:	ed9f 0a60 	vldr	s0, [pc, #384]	; d0051fe4 <main+0x75c>
d0051e64:	f7fe fd86 	bl	d0050974 <splineRailInit>
d0051e68:	a879      	add	r0, sp, #484	; 0x1e4
d0051e6a:	ed9f 1a5f 	vldr	s2, [pc, #380]	; d0051fe8 <main+0x760>
d0051e6e:	eddf 0a5f 	vldr	s1, [pc, #380]	; d0051fec <main+0x764>
d0051e72:	ed9f 0a5f 	vldr	s0, [pc, #380]	; d0051ff0 <main+0x768>
d0051e76:	f7fe fdab 	bl	d00509d0 <splineRailSetTuning>
d0051e7a:	eef7 0a08 	vmov.f32	s1, #120	; 0x3fc00000  1.5
d0051e7e:	eeb0 0a00 	vmov.f32	s0, #0	; 0x40000000  2.0
d0051e82:	ed9f 1a5c 	vldr	s2, [pc, #368]	; d0051ff4 <main+0x76c>
d0051e86:	a879      	add	r0, sp, #484	; 0x1e4
d0051e88:	4e5b      	ldr	r6, [pc, #364]	; (d0051ff8 <main+0x770>)
d0051e8a:	f7fe fda9 	bl	d00509e0 <splineRailSetBanking>
d0051e8e:	2000      	movs	r0, #0
d0051e90:	f005 fc9e 	bl	d00577d0 <enableFlatMode>
d0051e94:	7b23      	ldrb	r3, [r4, #12]
d0051e96:	7b62      	ldrb	r2, [r4, #13]
d0051e98:	7ba1      	ldrb	r1, [r4, #14]
d0051e9a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051e9e:	7be2      	ldrb	r2, [r4, #15]
d0051ea0:	6830      	ldr	r0, [r6, #0]
d0051ea2:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0051ea6:	f8df b174 	ldr.w	fp, [pc, #372]	; d005201c <main+0x794>
d0051eaa:	eddf 9a54 	vldr	s19, [pc, #336]	; d0051ffc <main+0x774>
d0051eae:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051eb2:	46da      	mov	sl, fp
d0051eb4:	4d52      	ldr	r5, [pc, #328]	; (d0052000 <main+0x778>)
d0051eb6:	681b      	ldr	r3, [r3, #0]
d0051eb8:	eddf ba40 	vldr	s23, [pc, #256]	; d0051fbc <main+0x734>
d0051ebc:	69db      	ldr	r3, [r3, #28]
d0051ebe:	4798      	blx	r3
d0051ec0:	7b23      	ldrb	r3, [r4, #12]
d0051ec2:	7b62      	ldrb	r2, [r4, #13]
d0051ec4:	7ba1      	ldrb	r1, [r4, #14]
d0051ec6:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051eca:	7be2      	ldrb	r2, [r4, #15]
d0051ecc:	6830      	ldr	r0, [r6, #0]
d0051ece:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0051ed2:	ed9f ca4c 	vldr	s24, [pc, #304]	; d0052004 <main+0x77c>
d0051ed6:	eddf ca4c 	vldr	s25, [pc, #304]	; d0052008 <main+0x780>
d0051eda:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051ede:	eddf 8a38 	vldr	s17, [pc, #224]	; d0051fc0 <main+0x738>
d0051ee2:	681b      	ldr	r3, [r3, #0]
d0051ee4:	699b      	ldr	r3, [r3, #24]
d0051ee6:	4798      	blx	r3
d0051ee8:	7b23      	ldrb	r3, [r4, #12]
d0051eea:	7b62      	ldrb	r2, [r4, #13]
d0051eec:	2001      	movs	r0, #1
d0051eee:	7ba1      	ldrb	r1, [r4, #14]
d0051ef0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051ef4:	7be2      	ldrb	r2, [r4, #15]
d0051ef6:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0051efa:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051efe:	685b      	ldr	r3, [r3, #4]
d0051f00:	68db      	ldr	r3, [r3, #12]
d0051f02:	4798      	blx	r3
d0051f04:	7b23      	ldrb	r3, [r4, #12]
d0051f06:	7b62      	ldrb	r2, [r4, #13]
d0051f08:	211e      	movs	r1, #30
d0051f0a:	7ba6      	ldrb	r6, [r4, #14]
d0051f0c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051f10:	7be2      	ldrb	r2, [r4, #15]
d0051f12:	4608      	mov	r0, r1
d0051f14:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
d0051f18:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051f1c:	685b      	ldr	r3, [r3, #4]
d0051f1e:	689b      	ldr	r3, [r3, #8]
d0051f20:	4798      	blx	r3
d0051f22:	7823      	ldrb	r3, [r4, #0]
d0051f24:	7862      	ldrb	r2, [r4, #1]
d0051f26:	a934      	add	r1, sp, #208	; 0xd0
d0051f28:	78a0      	ldrb	r0, [r4, #2]
d0051f2a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051f2e:	78e2      	ldrb	r2, [r4, #3]
d0051f30:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
d0051f34:	a833      	add	r0, sp, #204	; 0xcc
d0051f36:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051f3a:	691b      	ldr	r3, [r3, #16]
d0051f3c:	4798      	blx	r3
d0051f3e:	7823      	ldrb	r3, [r4, #0]
d0051f40:	7862      	ldrb	r2, [r4, #1]
d0051f42:	78a1      	ldrb	r1, [r4, #2]
d0051f44:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051f48:	78e2      	ldrb	r2, [r4, #3]
d0051f4a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0051f4e:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051f52:	69db      	ldr	r3, [r3, #28]
d0051f54:	4798      	blx	r3
d0051f56:	7823      	ldrb	r3, [r4, #0]
d0051f58:	7862      	ldrb	r2, [r4, #1]
d0051f5a:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
d0051f5e:	78a2      	ldrb	r2, [r4, #2]
d0051f60:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0051f64:	78e2      	ldrb	r2, [r4, #3]
d0051f66:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0051f6a:	689b      	ldr	r3, [r3, #8]
d0051f6c:	4798      	blx	r3
d0051f6e:	2313      	movs	r3, #19
d0051f70:	4606      	mov	r6, r0
d0051f72:	4826      	ldr	r0, [pc, #152]	; (d005200c <main+0x784>)
d0051f74:	2112      	movs	r1, #18
d0051f76:	2215      	movs	r2, #21
d0051f78:	7003      	strb	r3, [r0, #0]
d0051f7a:	2317      	movs	r3, #23
d0051f7c:	4824      	ldr	r0, [pc, #144]	; (d0052010 <main+0x788>)
d0051f7e:	7001      	strb	r1, [r0, #0]
d0051f80:	4924      	ldr	r1, [pc, #144]	; (d0052014 <main+0x78c>)
d0051f82:	700a      	strb	r2, [r1, #0]
d0051f84:	4a24      	ldr	r2, [pc, #144]	; (d0052018 <main+0x790>)
d0051f86:	7013      	strb	r3, [r2, #0]
d0051f88:	e16f      	b.n	d005226a <main+0x9e2>
d0051f8a:	bf00      	nop
d0051f8c:	d005c0c4 	.word	0xd005c0c4
d0051f90:	c2c80000 	.word	0xc2c80000
d0051f94:	44f3c000 	.word	0x44f3c000
d0051f98:	d0090ec0 	.word	0xd0090ec0
d0051f9c:	d005c0d4 	.word	0xd005c0d4
d0051fa0:	c3750000 	.word	0xc3750000
d0051fa4:	c3480000 	.word	0xc3480000
d0051fa8:	42480000 	.word	0x42480000
d0051fac:	c3070000 	.word	0xc3070000
d0051fb0:	42b40000 	.word	0x42b40000
d0051fb4:	44048000 	.word	0x44048000
d0051fb8:	43a00000 	.word	0x43a00000
d0051fbc:	42c80000 	.word	0x42c80000
d0051fc0:	00000000 	.word	0x00000000
d0051fc4:	43480000 	.word	0x43480000
d0051fc8:	42a40000 	.word	0x42a40000
d0051fcc:	d005c0e0 	.word	0xd005c0e0
d0051fd0:	43af0000 	.word	0x43af0000
d0051fd4:	44fa0000 	.word	0x44fa0000
d0051fd8:	42c00000 	.word	0x42c00000
d0051fdc:	3ee66666 	.word	0x3ee66666
d0051fe0:	d005c17c 	.word	0xd005c17c
d0051fe4:	43340000 	.word	0x43340000
d0051fe8:	402ccccd 	.word	0x402ccccd
d0051fec:	3fe66666 	.word	0x3fe66666
d0051ff0:	3fb33333 	.word	0x3fb33333
d0051ff4:	3f59999a 	.word	0x3f59999a
d0051ff8:	d012b280 	.word	0xd012b280
d0051ffc:	3b83126f 	.word	0x3b83126f
d0052000:	d012b224 	.word	0xd012b224
d0052004:	4d7bc521 	.word	0x4d7bc521
d0052008:	42f20000 	.word	0x42f20000
d005200c:	d012b221 	.word	0xd012b221
d0052010:	d012b1e0 	.word	0xd012b1e0
d0052014:	d012b254 	.word	0xd012b254
d0052018:	d012b220 	.word	0xd012b220
d005201c:	d0090e60 	.word	0xd0090e60
d0052020:	9b08      	ldr	r3, [sp, #32]
d0052022:	2b00      	cmp	r3, #0
d0052024:	f040 8473 	bne.w	d005290e <main+0x1086>
d0052028:	9b04      	ldr	r3, [sp, #16]
d005202a:	2b00      	cmp	r3, #0
d005202c:	f040 845a 	bne.w	d00528e4 <main+0x105c>
d0052030:	9b07      	ldr	r3, [sp, #28]
d0052032:	eeb0 0a68 	vmov.f32	s0, s17
d0052036:	2b00      	cmp	r3, #0
d0052038:	f000 83bc 	beq.w	d00527b4 <main+0xf2c>
d005203c:	49b0      	ldr	r1, [pc, #704]	; (d0052300 <main+0xa78>)
d005203e:	2305      	movs	r3, #5
d0052040:	2215      	movs	r2, #21
d0052042:	4650      	mov	r0, sl
d0052044:	7809      	ldrb	r1, [r1, #0]
d0052046:	f006 fb81 	bl	d005874c <drawFakeHorizon>
d005204a:	49ae      	ldr	r1, [pc, #696]	; (d0052304 <main+0xa7c>)
d005204c:	780b      	ldrb	r3, [r1, #0]
d005204e:	2b00      	cmp	r3, #0
d0052050:	f040 8487 	bne.w	d0052962 <main+0x10da>
d0052054:	48ac      	ldr	r0, [pc, #688]	; (d0052308 <main+0xa80>)
d0052056:	2205      	movs	r2, #5
d0052058:	4eac      	ldr	r6, [pc, #688]	; (d005230c <main+0xa84>)
d005205a:	7803      	ldrb	r3, [r0, #0]
d005205c:	700a      	strb	r2, [r1, #0]
d005205e:	f1c3 0301 	rsb	r3, r3, #1
d0052062:	b2db      	uxtb	r3, r3
d0052064:	5cf2      	ldrb	r2, [r6, r3]
d0052066:	7003      	strb	r3, [r0, #0]
d0052068:	b92a      	cbnz	r2, d0052076 <main+0x7ee>
d005206a:	2101      	movs	r1, #1
d005206c:	2278      	movs	r2, #120	; 0x78
d005206e:	54f1      	strb	r1, [r6, r3]
d0052070:	49a7      	ldr	r1, [pc, #668]	; (d0052310 <main+0xa88>)
d0052072:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
d0052076:	2008      	movs	r0, #8
d0052078:	2320      	movs	r3, #32
d005207a:	2280      	movs	r2, #128	; 0x80
d005207c:	2105      	movs	r1, #5
d005207e:	9000      	str	r0, [sp, #0]
d0052080:	4650      	mov	r0, sl
d0052082:	f006 fa6d 	bl	d0058560 <drawFakeSkyDots>
d0052086:	49a3      	ldr	r1, [pc, #652]	; (d0052314 <main+0xa8c>)
d0052088:	eeb0 0a68 	vmov.f32	s0, s17
d005208c:	236e      	movs	r3, #110	; 0x6e
d005208e:	2280      	movs	r2, #128	; 0x80
d0052090:	7809      	ldrb	r1, [r1, #0]
d0052092:	4650      	mov	r0, sl
d0052094:	f006 f94c 	bl	d0058330 <drawFakeHorizonDots>
d0052098:	7820      	ldrb	r0, [r4, #0]
d005209a:	7861      	ldrb	r1, [r4, #1]
d005209c:	78a2      	ldrb	r2, [r4, #2]
d005209e:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00520a2:	78e3      	ldrb	r3, [r4, #3]
d00520a4:	4e9c      	ldr	r6, [pc, #624]	; (d0052318 <main+0xa90>)
d00520a6:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00520aa:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00520ae:	689b      	ldr	r3, [r3, #8]
d00520b0:	4798      	blx	r3
d00520b2:	4603      	mov	r3, r0
d00520b4:	4650      	mov	r0, sl
d00520b6:	6033      	str	r3, [r6, #0]
d00520b8:	f007 fb10 	bl	d00596dc <Render3D>
d00520bc:	7820      	ldrb	r0, [r4, #0]
d00520be:	7861      	ldrb	r1, [r4, #1]
d00520c0:	78a2      	ldrb	r2, [r4, #2]
d00520c2:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00520c6:	78e3      	ldrb	r3, [r4, #3]
d00520c8:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00520cc:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00520d0:	689b      	ldr	r3, [r3, #8]
d00520d2:	4798      	blx	r3
d00520d4:	4991      	ldr	r1, [pc, #580]	; (d005231c <main+0xa94>)
d00520d6:	eeb5 7a00 	vmov.f32	s14, #80	; 0x3e800000  0.250
d00520da:	6832      	ldr	r2, [r6, #0]
d00520dc:	edd1 7a00 	vldr	s15, [r1]
d00520e0:	4e8f      	ldr	r6, [pc, #572]	; (d0052320 <main+0xa98>)
d00520e2:	1a80      	subs	r0, r0, r2
d00520e4:	ee38 8a27 	vadd.f32	s16, s16, s15
d00520e8:	4a8e      	ldr	r2, [pc, #568]	; (d0052324 <main+0xa9c>)
d00520ea:	6833      	ldr	r3, [r6, #0]
d00520ec:	6010      	str	r0, [r2, #0]
d00520ee:	eeb4 8ac7 	vcmpe.f32	s16, s14
d00520f2:	3301      	adds	r3, #1
d00520f4:	ed81 8a00 	vstr	s16, [r1]
d00520f8:	6033      	str	r3, [r6, #0]
d00520fa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00520fe:	db24      	blt.n	d005214a <main+0x8c2>
d0052100:	eddf 7a89 	vldr	s15, [pc, #548]	; d0052328 <main+0xaa0>
d0052104:	eeb4 8ae7 	vcmpe.f32	s16, s15
d0052108:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005210c:	f340 8425 	ble.w	d005295a <main+0x10d2>
d0052110:	ee07 3a90 	vmov	s15, r3
d0052114:	4b85      	ldr	r3, [pc, #532]	; (d005232c <main+0xaa4>)
d0052116:	2164      	movs	r1, #100	; 0x64
d0052118:	eef8 7a67 	vcvt.f32.u32	s15, s15
d005211c:	ee67 7aab 	vmul.f32	s15, s15, s23
d0052120:	ee87 7a88 	vdiv.f32	s14, s15, s16
d0052124:	eefc 7ac7 	vcvt.u32.f32	s15, s14
d0052128:	ee17 2a90 	vmov	r2, s15
d005212c:	fba3 0302 	umull	r0, r3, r3, r2
d0052130:	095b      	lsrs	r3, r3, #5
d0052132:	fb01 2213 	mls	r2, r1, r3, r2
d0052136:	487e      	ldr	r0, [pc, #504]	; (d0052330 <main+0xaa8>)
d0052138:	2100      	movs	r1, #0
d005213a:	6003      	str	r3, [r0, #0]
d005213c:	4b7d      	ldr	r3, [pc, #500]	; (d0052334 <main+0xaac>)
d005213e:	601a      	str	r2, [r3, #0]
d0052140:	4b76      	ldr	r3, [pc, #472]	; (d005231c <main+0xa94>)
d0052142:	edc3 8a00 	vstr	s17, [r3]
d0052146:	4b76      	ldr	r3, [pc, #472]	; (d0052320 <main+0xa98>)
d0052148:	6019      	str	r1, [r3, #0]
d005214a:	a879      	add	r0, sp, #484	; 0x1e4
d005214c:	f7fe fe36 	bl	d0050dbc <splineRailGetCurrentNode>
d0052150:	9b05      	ldr	r3, [sp, #20]
d0052152:	2b00      	cmp	r3, #0
d0052154:	f040 82b6 	bne.w	d00526c4 <main+0xe3c>
d0052158:	4b72      	ldr	r3, [pc, #456]	; (d0052324 <main+0xa9c>)
d005215a:	fa5f f980 	uxtb.w	r9, r0
d005215e:	4f76      	ldr	r7, [pc, #472]	; (d0052338 <main+0xab0>)
d0052160:	f44f 767a 	mov.w	r6, #1000	; 0x3e8
d0052164:	f8d3 8000 	ldr.w	r8, [r3]
d0052168:	4b71      	ldr	r3, [pc, #452]	; (d0052330 <main+0xaa8>)
d005216a:	681a      	ldr	r2, [r3, #0]
d005216c:	4b71      	ldr	r3, [pc, #452]	; (d0052334 <main+0xaac>)
d005216e:	9207      	str	r2, [sp, #28]
d0052170:	681b      	ldr	r3, [r3, #0]
d0052172:	9305      	str	r3, [sp, #20]
d0052174:	f006 f8d6 	bl	d0058324 <getRenderTriCount>
d0052178:	f8df c1f8 	ldr.w	ip, [pc, #504]	; d0052374 <main+0xaec>
d005217c:	9003      	str	r0, [sp, #12]
d005217e:	fbac 3108 	umull	r3, r1, ip, r8
d0052182:	9a07      	ldr	r2, [sp, #28]
d0052184:	9b05      	ldr	r3, [sp, #20]
d0052186:	ea4f 4e51 	mov.w	lr, r1, lsr #17
d005218a:	486c      	ldr	r0, [pc, #432]	; (d005233c <main+0xab4>)
d005218c:	496c      	ldr	r1, [pc, #432]	; (d0052340 <main+0xab8>)
d005218e:	fb07 871e 	mls	r7, r7, lr, r8
d0052192:	f8cd 9008 	str.w	r9, [sp, #8]
d0052196:	fb06 f607 	mul.w	r6, r6, r7
d005219a:	f8cd e000 	str.w	lr, [sp]
d005219e:	fbac 7606 	umull	r7, r6, ip, r6
d00521a2:	0c76      	lsrs	r6, r6, #17
d00521a4:	9601      	str	r6, [sp, #4]
d00521a6:	f008 fa2d 	bl	d005a604 <siprintf>
d00521aa:	4b66      	ldr	r3, [pc, #408]	; (d0052344 <main+0xabc>)
d00521ac:	781b      	ldrb	r3, [r3, #0]
d00521ae:	454b      	cmp	r3, r9
d00521b0:	d003      	beq.n	d00521ba <main+0x932>
d00521b2:	f1b9 0f14 	cmp.w	r9, #20
d00521b6:	f000 82b1 	beq.w	d005271c <main+0xe94>
d00521ba:	7b20      	ldrb	r0, [r4, #12]
d00521bc:	2740      	movs	r7, #64	; 0x40
d00521be:	7b61      	ldrb	r1, [r4, #13]
d00521c0:	f44f 7280 	mov.w	r2, #256	; 0x100
d00521c4:	f894 c00e 	ldrb.w	ip, [r4, #14]
d00521c8:	463b      	mov	r3, r7
d00521ca:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
d00521ce:	7be6      	ldrb	r6, [r4, #15]
d00521d0:	495c      	ldr	r1, [pc, #368]	; (d0052344 <main+0xabc>)
d00521d2:	ea40 4c0c 	orr.w	ip, r0, ip, lsl #16
d00521d6:	485c      	ldr	r0, [pc, #368]	; (d0052348 <main+0xac0>)
d00521d8:	f881 9000 	strb.w	r9, [r1]
d00521dc:	210a      	movs	r1, #10
d00521de:	ea4c 6606 	orr.w	r6, ip, r6, lsl #24
d00521e2:	6876      	ldr	r6, [r6, #4]
d00521e4:	9700      	str	r7, [sp, #0]
d00521e6:	69b6      	ldr	r6, [r6, #24]
d00521e8:	47b0      	blx	r6
d00521ea:	4b58      	ldr	r3, [pc, #352]	; (d005234c <main+0xac4>)
d00521ec:	781b      	ldrb	r3, [r3, #0]
d00521ee:	b193      	cbz	r3, d0052216 <main+0x98e>
d00521f0:	f894 c00c 	ldrb.w	ip, [r4, #12]
d00521f4:	463b      	mov	r3, r7
d00521f6:	7b61      	ldrb	r1, [r4, #13]
d00521f8:	2280      	movs	r2, #128	; 0x80
d00521fa:	7ba0      	ldrb	r0, [r4, #14]
d00521fc:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0052200:	7be6      	ldrb	r6, [r4, #15]
d0052202:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
d0052206:	21d0      	movs	r1, #208	; 0xd0
d0052208:	ea40 6606 	orr.w	r6, r0, r6, lsl #24
d005220c:	4850      	ldr	r0, [pc, #320]	; (d0052350 <main+0xac8>)
d005220e:	6876      	ldr	r6, [r6, #4]
d0052210:	9700      	str	r7, [sp, #0]
d0052212:	69b6      	ldr	r6, [r6, #24]
d0052214:	47b0      	blx	r6
d0052216:	7b27      	ldrb	r7, [r4, #12]
d0052218:	2100      	movs	r1, #0
d005221a:	7b66      	ldrb	r6, [r4, #13]
d005221c:	7ba3      	ldrb	r3, [r4, #14]
d005221e:	ea47 2006 	orr.w	r0, r7, r6, lsl #8
d0052222:	7be7      	ldrb	r7, [r4, #15]
d0052224:	4a45      	ldr	r2, [pc, #276]	; (d005233c <main+0xab4>)
d0052226:	ea40 4603 	orr.w	r6, r0, r3, lsl #16
d005222a:	4608      	mov	r0, r1
d005222c:	ea46 6307 	orr.w	r3, r6, r7, lsl #24
d0052230:	685b      	ldr	r3, [r3, #4]
d0052232:	6adb      	ldr	r3, [r3, #44]	; 0x2c
d0052234:	4798      	blx	r3
d0052236:	7b20      	ldrb	r0, [r4, #12]
d0052238:	7b61      	ldrb	r1, [r4, #13]
d005223a:	7ba2      	ldrb	r2, [r4, #14]
d005223c:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0052240:	7be3      	ldrb	r3, [r4, #15]
d0052242:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0052246:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d005224a:	681b      	ldr	r3, [r3, #0]
d005224c:	681b      	ldr	r3, [r3, #0]
d005224e:	4798      	blx	r3
d0052250:	eddf 7a40 	vldr	s15, [pc, #256]	; d0052354 <main+0xacc>
d0052254:	eef4 9ae7 	vcmpe.f32	s19, s15
d0052258:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005225c:	f300 827a 	bgt.w	d0052754 <main+0xecc>
d0052260:	eddf 7a3d 	vldr	s15, [pc, #244]	; d0052358 <main+0xad0>
d0052264:	ee79 9aa7 	vadd.f32	s19, s19, s15
d0052268:	9e06      	ldr	r6, [sp, #24]
d005226a:	7b20      	ldrb	r0, [r4, #12]
d005226c:	ee69 7aab 	vmul.f32	s15, s19, s23
d0052270:	7b61      	ldrb	r1, [r4, #13]
d0052272:	7ba2      	ldrb	r2, [r4, #14]
d0052274:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d0052278:	7be3      	ldrb	r3, [r4, #15]
d005227a:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d005227e:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0052282:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0052286:	edcd 7a05 	vstr	s15, [sp, #20]
d005228a:	f89d 0014 	ldrb.w	r0, [sp, #20]
d005228e:	681b      	ldr	r3, [r3, #0]
d0052290:	689b      	ldr	r3, [r3, #8]
d0052292:	4798      	blx	r3
d0052294:	7820      	ldrb	r0, [r4, #0]
d0052296:	7861      	ldrb	r1, [r4, #1]
d0052298:	78a2      	ldrb	r2, [r4, #2]
d005229a:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d005229e:	78e3      	ldrb	r3, [r4, #3]
d00522a0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00522a4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00522a8:	689b      	ldr	r3, [r3, #8]
d00522aa:	4798      	blx	r3
d00522ac:	1b83      	subs	r3, r0, r6
d00522ae:	9006      	str	r0, [sp, #24]
d00522b0:	ee08 3a10 	vmov	s16, r3
d00522b4:	eeb8 8a48 	vcvt.f32.u32	s16, s16
d00522b8:	eeb4 8acc 	vcmpe.f32	s16, s24
d00522bc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00522c0:	f300 824b 	bgt.w	d005275a <main+0xed2>
d00522c4:	eddf 7a25 	vldr	s15, [pc, #148]	; d005235c <main+0xad4>
d00522c8:	eeb2 9a04 	vmov.f32	s18, #36	; 0x41200000  10.0
d00522cc:	ed9f da24 	vldr	s26, [pc, #144]	; d0052360 <main+0xad8>
d00522d0:	ee28 8a27 	vmul.f32	s16, s16, s15
d00522d4:	eddf aa23 	vldr	s21, [pc, #140]	; d0052364 <main+0xadc>
d00522d8:	eddf 7a23 	vldr	s15, [pc, #140]	; d0052368 <main+0xae0>
d00522dc:	ed9f aa23 	vldr	s20, [pc, #140]	; d005236c <main+0xae4>
d00522e0:	ee28 9a09 	vmul.f32	s18, s16, s18
d00522e4:	ed9f ba22 	vldr	s22, [pc, #136]	; d0052370 <main+0xae8>
d00522e8:	ee68 aa2a 	vmul.f32	s21, s16, s21
d00522ec:	ee28 aa0a 	vmul.f32	s20, s16, s20
d00522f0:	ee29 da0d 	vmul.f32	s26, s18, s26
d00522f4:	ee28 ba0b 	vmul.f32	s22, s16, s22
d00522f8:	ee29 9a27 	vmul.f32	s18, s18, s15
d00522fc:	e040      	b.n	d0052380 <main+0xaf8>
d00522fe:	bf00      	nop
d0052300:	d012b221 	.word	0xd012b221
d0052304:	d0090d84 	.word	0xd0090d84
d0052308:	d0090e48 	.word	0xd0090e48
d005230c:	d0090eec 	.word	0xd0090eec
d0052310:	d0090ef0 	.word	0xd0090ef0
d0052314:	d012b220 	.word	0xd012b220
d0052318:	d0090ef8 	.word	0xd0090ef8
d005231c:	d0090ed8 	.word	0xd0090ed8
d0052320:	d0090ed4 	.word	0xd0090ed4
d0052324:	d0090efc 	.word	0xd0090efc
d0052328:	3727c5ac 	.word	0x3727c5ac
d005232c:	51eb851f 	.word	0x51eb851f
d0052330:	d0090edc 	.word	0xd0090edc
d0052334:	d0090ed0 	.word	0xd0090ed0
d0052338:	00075300 	.word	0x00075300
d005233c:	d0090d8c 	.word	0xd0090d8c
d0052340:	d005c0ec 	.word	0xd005c0ec
d0052344:	d0090ee1 	.word	0xd0090ee1
d0052348:	d0082180 	.word	0xd0082180
d005234c:	d0090ee0 	.word	0xd0090ee0
d0052350:	d008f980 	.word	0xd008f980
d0052354:	3f7ef9db 	.word	0x3f7ef9db
d0052358:	3b83126f 	.word	0x3b83126f
d005235c:	310f2a63 	.word	0x310f2a63
d0052360:	bb449ba6 	.word	0xbb449ba6
d0052364:	3f99999a 	.word	0x3f99999a
d0052368:	40d9999a 	.word	0x40d9999a
d005236c:	43264ccd 	.word	0x43264ccd
d0052370:	435c0000 	.word	0x435c0000
d0052374:	45e7b273 	.word	0x45e7b273
d0052378:	3ba3d70a 	.word	0x3ba3d70a
d005237c:	3c088889 	.word	0x3c088889
d0052380:	7820      	ldrb	r0, [r4, #0]
d0052382:	7861      	ldrb	r1, [r4, #1]
d0052384:	78a2      	ldrb	r2, [r4, #2]
d0052386:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d005238a:	78e3      	ldrb	r3, [r4, #3]
d005238c:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0052390:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0052394:	6a1b      	ldr	r3, [r3, #32]
d0052396:	4798      	blx	r3
d0052398:	7827      	ldrb	r7, [r4, #0]
d005239a:	7863      	ldrb	r3, [r4, #1]
d005239c:	a936      	add	r1, sp, #216	; 0xd8
d005239e:	78a2      	ldrb	r2, [r4, #2]
d00523a0:	4606      	mov	r6, r0
d00523a2:	ea47 2703 	orr.w	r7, r7, r3, lsl #8
d00523a6:	78e3      	ldrb	r3, [r4, #3]
d00523a8:	a835      	add	r0, sp, #212	; 0xd4
d00523aa:	ea47 4202 	orr.w	r2, r7, r2, lsl #16
d00523ae:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00523b2:	699b      	ldr	r3, [r3, #24]
d00523b4:	4798      	blx	r3
d00523b6:	9a35      	ldr	r2, [sp, #212]	; 0xd4
d00523b8:	9b36      	ldr	r3, [sp, #216]	; 0xd8
d00523ba:	eef0 0a68 	vmov.f32	s1, s17
d00523be:	4252      	negs	r2, r2
d00523c0:	ed1f 1a13 	vldr	s2, [pc, #-76]	; d0052378 <main+0xaf0>
d00523c4:	425b      	negs	r3, r3
d00523c6:	ed1f 0a13 	vldr	s0, [pc, #-76]	; d005237c <main+0xaf4>
d00523ca:	ee07 2a90 	vmov	s15, r2
d00523ce:	2100      	movs	r1, #0
d00523d0:	4650      	mov	r0, sl
d00523d2:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
d00523d6:	ee07 3a90 	vmov	s15, r3
d00523da:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00523de:	ee27 1a01 	vmul.f32	s2, s14, s2
d00523e2:	ee27 0a80 	vmul.f32	s0, s15, s0
d00523e6:	f003 fda5 	bl	d0055f34 <cameraTurn>
d00523ea:	eef0 7a04 	vmov.f32	s15, #4	; 0x40200000  2.5
d00523ee:	eddb 0a07 	vldr	s1, [fp, #28]
d00523f2:	ee60 0aa7 	vmul.f32	s1, s1, s15
d00523f6:	ee60 0a88 	vmul.f32	s1, s1, s16
d00523fa:	eef5 0a40 	vcmp.f32	s1, #0.0
d00523fe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052402:	f040 829f 	bne.w	d0052944 <main+0x10bc>
d0052406:	4ba3      	ldr	r3, [pc, #652]	; (d0052694 <main+0xe0c>)
d0052408:	eeb0 1a68 	vmov.f32	s2, s17
d005240c:	eddf 0aa2 	vldr	s1, [pc, #648]	; d0052698 <main+0xe10>
d0052410:	eeb0 0a4d 	vmov.f32	s0, s26
d0052414:	461f      	mov	r7, r3
d0052416:	6818      	ldr	r0, [r3, #0]
d0052418:	f004 fb32 	bl	d0056a80 <entityTurnLocal>
d005241c:	eeb0 0a49 	vmov.f32	s0, s18
d0052420:	6838      	ldr	r0, [r7, #0]
d0052422:	f004 faed 	bl	d0056a00 <entityMoveForward>
d0052426:	eeb0 1a68 	vmov.f32	s2, s17
d005242a:	eddf 0a9b 	vldr	s1, [pc, #620]	; d0052698 <main+0xe10>
d005242e:	eeb0 0a6a 	vmov.f32	s0, s21
d0052432:	ee1e 0a90 	vmov	r0, s29
d0052436:	f004 fb23 	bl	d0056a80 <entityTurnLocal>
d005243a:	eeb0 0a4a 	vmov.f32	s0, s20
d005243e:	ee1d 0a90 	vmov	r0, s27
d0052442:	f004 fadd 	bl	d0056a00 <entityMoveForward>
d0052446:	ee1d 0a90 	vmov	r0, s27
d005244a:	f004 fa95 	bl	d0056978 <entityGetPosition>
d005244e:	eddf 7a93 	vldr	s15, [pc, #588]	; d005269c <main+0xe14>
d0052452:	ed8d 0a40 	vstr	s0, [sp, #256]	; 0x100
d0052456:	eeb4 1ae7 	vcmpe.f32	s2, s15
d005245a:	edcd 0a41 	vstr	s1, [sp, #260]	; 0x104
d005245e:	ed8d 1a42 	vstr	s2, [sp, #264]	; 0x108
d0052462:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052466:	f300 825a 	bgt.w	d005291e <main+0x1096>
d005246a:	ed9d 0a40 	vldr	s0, [sp, #256]	; 0x100
d005246e:	ee1e 0a10 	vmov	r0, s28
d0052472:	eddd 0a41 	vldr	s1, [sp, #260]	; 0x104
d0052476:	ed9d 1a42 	vldr	s2, [sp, #264]	; 0x108
d005247a:	f005 f96f 	bl	d005775c <lightSetPosition>
d005247e:	eddb 0a01 	vldr	s1, [fp, #4]
d0052482:	ed9b 1a02 	vldr	s2, [fp, #8]
d0052486:	ee1f 0a10 	vmov	r0, s30
d005248a:	ed9b 0a00 	vldr	s0, [fp]
d005248e:	f005 f965 	bl	d005775c <lightSetPosition>
d0052492:	eeb0 0a00 	vmov.f32	s0, #0	; 0x40000000  2.0
d0052496:	ee1f 0a10 	vmov	r0, s30
d005249a:	f005 f97b 	bl	d0057794 <lightSetIntensity>
d005249e:	eeb0 0a6b 	vmov.f32	s0, s23
d00524a2:	ed9f 1a7f 	vldr	s2, [pc, #508]	; d00526a0 <main+0xe18>
d00524a6:	ee1f 0a10 	vmov	r0, s30
d00524aa:	eddf 0a7e 	vldr	s1, [pc, #504]	; d00526a4 <main+0xe1c>
d00524ae:	f005 f8b7 	bl	d0057620 <lightSetRanges>
d00524b2:	9b04      	ldr	r3, [sp, #16]
d00524b4:	2b00      	cmp	r3, #0
d00524b6:	f000 820d 	beq.w	d00528d4 <main+0x104c>
d00524ba:	2300      	movs	r3, #0
d00524bc:	9307      	str	r3, [sp, #28]
d00524be:	7820      	ldrb	r0, [r4, #0]
d00524c0:	7861      	ldrb	r1, [r4, #1]
d00524c2:	78a2      	ldrb	r2, [r4, #2]
d00524c4:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00524c8:	78e3      	ldrb	r3, [r4, #3]
d00524ca:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00524ce:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00524d2:	69db      	ldr	r3, [r3, #28]
d00524d4:	4798      	blx	r3
d00524d6:	f016 0301 	ands.w	r3, r6, #1
d00524da:	9305      	str	r3, [sp, #20]
d00524dc:	f040 81ee 	bne.w	d00528bc <main+0x1034>
d00524e0:	07b3      	lsls	r3, r6, #30
d00524e2:	f100 81e1 	bmi.w	d00528a8 <main+0x1020>
d00524e6:	f006 0603 	and.w	r6, r6, #3
d00524ea:	782b      	ldrb	r3, [r5, #0]
d00524ec:	2e03      	cmp	r6, #3
d00524ee:	bf08      	it	eq
d00524f0:	edcb 8a07 	vstreq	s17, [fp, #28]
d00524f4:	b143      	cbz	r3, d0052508 <main+0xc80>
d00524f6:	886b      	ldrh	r3, [r5, #2]
d00524f8:	2b00      	cmp	r3, #0
d00524fa:	f040 81b9 	bne.w	d0052870 <main+0xfe8>
d00524fe:	2100      	movs	r1, #0
d0052500:	88a8      	ldrh	r0, [r5, #4]
d0052502:	7029      	strb	r1, [r5, #0]
d0052504:	f004 fe3a 	bl	d005717c <entityVisible>
d0052508:	79ab      	ldrb	r3, [r5, #6]
d005250a:	b143      	cbz	r3, d005251e <main+0xc96>
d005250c:	892b      	ldrh	r3, [r5, #8]
d005250e:	2b00      	cmp	r3, #0
d0052510:	f040 81bc 	bne.w	d005288c <main+0x1004>
d0052514:	2100      	movs	r1, #0
d0052516:	8968      	ldrh	r0, [r5, #10]
d0052518:	71a9      	strb	r1, [r5, #6]
d005251a:	f004 fe2f 	bl	d005717c <entityVisible>
d005251e:	7b2b      	ldrb	r3, [r5, #12]
d0052520:	b143      	cbz	r3, d0052534 <main+0xcac>
d0052522:	89eb      	ldrh	r3, [r5, #14]
d0052524:	2b00      	cmp	r3, #0
d0052526:	f040 816b 	bne.w	d0052800 <main+0xf78>
d005252a:	2100      	movs	r1, #0
d005252c:	8a28      	ldrh	r0, [r5, #16]
d005252e:	7329      	strb	r1, [r5, #12]
d0052530:	f004 fe24 	bl	d005717c <entityVisible>
d0052534:	7cab      	ldrb	r3, [r5, #18]
d0052536:	b143      	cbz	r3, d005254a <main+0xcc2>
d0052538:	8aab      	ldrh	r3, [r5, #20]
d005253a:	2b00      	cmp	r3, #0
d005253c:	f040 816e 	bne.w	d005281c <main+0xf94>
d0052540:	2100      	movs	r1, #0
d0052542:	8ae8      	ldrh	r0, [r5, #22]
d0052544:	74a9      	strb	r1, [r5, #18]
d0052546:	f004 fe19 	bl	d005717c <entityVisible>
d005254a:	7e2b      	ldrb	r3, [r5, #24]
d005254c:	b143      	cbz	r3, d0052560 <main+0xcd8>
d005254e:	8b6b      	ldrh	r3, [r5, #26]
d0052550:	2b00      	cmp	r3, #0
d0052552:	f040 8171 	bne.w	d0052838 <main+0xfb0>
d0052556:	2100      	movs	r1, #0
d0052558:	8ba8      	ldrh	r0, [r5, #28]
d005255a:	7629      	strb	r1, [r5, #24]
d005255c:	f004 fe0e 	bl	d005717c <entityVisible>
d0052560:	7fab      	ldrb	r3, [r5, #30]
d0052562:	b143      	cbz	r3, d0052576 <main+0xcee>
d0052564:	8c2b      	ldrh	r3, [r5, #32]
d0052566:	2b00      	cmp	r3, #0
d0052568:	f040 8174 	bne.w	d0052854 <main+0xfcc>
d005256c:	2100      	movs	r1, #0
d005256e:	8c68      	ldrh	r0, [r5, #34]	; 0x22
d0052570:	77a9      	strb	r1, [r5, #30]
d0052572:	f004 fe03 	bl	d005717c <entityVisible>
d0052576:	f895 3024 	ldrb.w	r3, [r5, #36]	; 0x24
d005257a:	b14b      	cbz	r3, d0052590 <main+0xd08>
d005257c:	8ceb      	ldrh	r3, [r5, #38]	; 0x26
d005257e:	2b00      	cmp	r3, #0
d0052580:	f040 8122 	bne.w	d00527c8 <main+0xf40>
d0052584:	2100      	movs	r1, #0
d0052586:	8d28      	ldrh	r0, [r5, #40]	; 0x28
d0052588:	f885 1024 	strb.w	r1, [r5, #36]	; 0x24
d005258c:	f004 fdf6 	bl	d005717c <entityVisible>
d0052590:	f895 302a 	ldrb.w	r3, [r5, #42]	; 0x2a
d0052594:	b14b      	cbz	r3, d00525aa <main+0xd22>
d0052596:	8dab      	ldrh	r3, [r5, #44]	; 0x2c
d0052598:	2b00      	cmp	r3, #0
d005259a:	f040 8123 	bne.w	d00527e4 <main+0xf5c>
d005259e:	2100      	movs	r1, #0
d00525a0:	8de8      	ldrh	r0, [r5, #46]	; 0x2e
d00525a2:	f885 102a 	strb.w	r1, [r5, #42]	; 0x2a
d00525a6:	f004 fde9 	bl	d005717c <entityVisible>
d00525aa:	4a3f      	ldr	r2, [pc, #252]	; (d00526a8 <main+0xe20>)
d00525ac:	8813      	ldrh	r3, [r2, #0]
d00525ae:	3b01      	subs	r3, #1
d00525b0:	b21b      	sxth	r3, r3
d00525b2:	2b00      	cmp	r3, #0
d00525b4:	8013      	strh	r3, [r2, #0]
d00525b6:	dc07      	bgt.n	d00525c8 <main+0xd40>
d00525b8:	4b3c      	ldr	r3, [pc, #240]	; (d00526ac <main+0xe24>)
d00525ba:	f9b3 3000 	ldrsh.w	r3, [r3]
d00525be:	2b00      	cmp	r3, #0
d00525c0:	f340 81d4 	ble.w	d005296c <main+0x10e4>
d00525c4:	f7ff f902 	bl	d00517cc <UpdateTurretTest.part.0>
d00525c8:	7b20      	ldrb	r0, [r4, #12]
d00525ca:	7b61      	ldrb	r1, [r4, #13]
d00525cc:	7ba2      	ldrb	r2, [r4, #14]
d00525ce:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
d00525d2:	7be3      	ldrb	r3, [r4, #15]
d00525d4:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00525d8:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00525dc:	681b      	ldr	r3, [r3, #0]
d00525de:	68db      	ldr	r3, [r3, #12]
d00525e0:	4798      	blx	r3
d00525e2:	4a33      	ldr	r2, [pc, #204]	; (d00526b0 <main+0xe28>)
d00525e4:	7813      	ldrb	r3, [r2, #0]
d00525e6:	f1c3 0301 	rsb	r3, r3, #1
d00525ea:	b2db      	uxtb	r3, r3
d00525ec:	7013      	strb	r3, [r2, #0]
d00525ee:	7813      	ldrb	r3, [r2, #0]
d00525f0:	7b21      	ldrb	r1, [r4, #12]
d00525f2:	7b60      	ldrb	r0, [r4, #13]
d00525f4:	7ba2      	ldrb	r2, [r4, #14]
d00525f6:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
d00525fa:	2b00      	cmp	r3, #0
d00525fc:	f000 80a3 	beq.w	d0052746 <main+0xebe>
d0052600:	4e2c      	ldr	r6, [pc, #176]	; (d00526b4 <main+0xe2c>)
d0052602:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d0052606:	7be3      	ldrb	r3, [r4, #15]
d0052608:	6831      	ldr	r1, [r6, #0]
d005260a:	482b      	ldr	r0, [pc, #172]	; (d00526b8 <main+0xe30>)
d005260c:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d0052610:	6800      	ldr	r0, [r0, #0]
d0052612:	f8df 80ac 	ldr.w	r8, [pc, #172]	; d00526c0 <main+0xe38>
d0052616:	2700      	movs	r7, #0
d0052618:	681b      	ldr	r3, [r3, #0]
d005261a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d005261c:	4798      	blx	r3
d005261e:	6833      	ldr	r3, [r6, #0]
d0052620:	4e26      	ldr	r6, [pc, #152]	; (d00526bc <main+0xe34>)
d0052622:	6818      	ldr	r0, [r3, #0]
d0052624:	f000 fa5c 	bl	d0052ae0 <set3DRenderBuffer>
d0052628:	f818 3b01 	ldrb.w	r3, [r8], #1
d005262c:	b35b      	cbz	r3, d0052686 <main+0xdfe>
d005262e:	f8d6 9000 	ldr.w	r9, [r6]
d0052632:	4638      	mov	r0, r7
d0052634:	f109 31ff 	add.w	r1, r9, #4294967295	; 0xffffffff
d0052638:	f1b9 0f00 	cmp.w	r9, #0
d005263c:	f000 809a 	beq.w	d0052774 <main+0xeec>
d0052640:	6031      	str	r1, [r6, #0]
d0052642:	9109      	str	r1, [sp, #36]	; 0x24
d0052644:	b9f9      	cbnz	r1, d0052686 <main+0xdfe>
d0052646:	f894 c010 	ldrb.w	ip, [r4, #16]
d005264a:	7c63      	ldrb	r3, [r4, #17]
d005264c:	7ca2      	ldrb	r2, [r4, #18]
d005264e:	ea4c 2c03 	orr.w	ip, ip, r3, lsl #8
d0052652:	7ce3      	ldrb	r3, [r4, #19]
d0052654:	ea4c 4202 	orr.w	r2, ip, r2, lsl #16
d0052658:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d005265c:	689b      	ldr	r3, [r3, #8]
d005265e:	689b      	ldr	r3, [r3, #8]
d0052660:	4798      	blx	r3
d0052662:	f894 c010 	ldrb.w	ip, [r4, #16]
d0052666:	7c63      	ldrb	r3, [r4, #17]
d0052668:	4638      	mov	r0, r7
d005266a:	7ca2      	ldrb	r2, [r4, #18]
d005266c:	ea4c 2c03 	orr.w	ip, ip, r3, lsl #8
d0052670:	7ce3      	ldrb	r3, [r4, #19]
d0052672:	ea4c 4202 	orr.w	r2, ip, r2, lsl #16
d0052676:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d005267a:	689b      	ldr	r3, [r3, #8]
d005267c:	685b      	ldr	r3, [r3, #4]
d005267e:	4798      	blx	r3
d0052680:	9909      	ldr	r1, [sp, #36]	; 0x24
d0052682:	f808 1c01 	strb.w	r1, [r8, #-1]
d0052686:	3604      	adds	r6, #4
d0052688:	2f00      	cmp	r7, #0
d005268a:	f47f acc9 	bne.w	d0052020 <main+0x798>
d005268e:	2701      	movs	r7, #1
d0052690:	e7ca      	b.n	d0052628 <main+0xda0>
d0052692:	bf00      	nop
d0052694:	d0090ec0 	.word	0xd0090ec0
d0052698:	00000000 	.word	0x00000000
d005269c:	451c4000 	.word	0x451c4000
d00526a0:	44048000 	.word	0x44048000
d00526a4:	43a00000 	.word	0x43a00000
d00526a8:	d0090f06 	.word	0xd0090f06
d00526ac:	d0090f04 	.word	0xd0090f04
d00526b0:	d0090ee0 	.word	0xd0090ee0
d00526b4:	d012b260 	.word	0xd012b260
d00526b8:	d012b280 	.word	0xd012b280
d00526bc:	d0090ef0 	.word	0xd0090ef0
d00526c0:	d0090eec 	.word	0xd0090eec
d00526c4:	4bc1      	ldr	r3, [pc, #772]	; (d00529cc <main+0x1144>)
d00526c6:	4fc2      	ldr	r7, [pc, #776]	; (d00529d0 <main+0x1148>)
d00526c8:	f8d3 8000 	ldr.w	r8, [r3]
d00526cc:	4bc1      	ldr	r3, [pc, #772]	; (d00529d4 <main+0x114c>)
d00526ce:	681a      	ldr	r2, [r3, #0]
d00526d0:	4bc1      	ldr	r3, [pc, #772]	; (d00529d8 <main+0x1150>)
d00526d2:	9207      	str	r2, [sp, #28]
d00526d4:	681b      	ldr	r3, [r3, #0]
d00526d6:	9305      	str	r3, [sp, #20]
d00526d8:	f005 fe24 	bl	d0058324 <getRenderTriCount>
d00526dc:	f8df c358 	ldr.w	ip, [pc, #856]	; d0052a38 <main+0x11b0>
d00526e0:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
d00526e4:	9003      	str	r0, [sp, #12]
d00526e6:	fbac 3608 	umull	r3, r6, ip, r8
d00526ea:	9a07      	ldr	r2, [sp, #28]
d00526ec:	9b05      	ldr	r3, [sp, #20]
d00526ee:	0c70      	lsrs	r0, r6, #17
d00526f0:	2614      	movs	r6, #20
d00526f2:	fb07 8710 	mls	r7, r7, r0, r8
d00526f6:	9602      	str	r6, [sp, #8]
d00526f8:	fb01 f707 	mul.w	r7, r1, r7
d00526fc:	49b7      	ldr	r1, [pc, #732]	; (d00529dc <main+0x1154>)
d00526fe:	9000      	str	r0, [sp, #0]
d0052700:	fbac 6707 	umull	r6, r7, ip, r7
d0052704:	48b6      	ldr	r0, [pc, #728]	; (d00529e0 <main+0x1158>)
d0052706:	0c7f      	lsrs	r7, r7, #17
d0052708:	9701      	str	r7, [sp, #4]
d005270a:	f007 ff7b 	bl	d005a604 <siprintf>
d005270e:	4bb5      	ldr	r3, [pc, #724]	; (d00529e4 <main+0x115c>)
d0052710:	f893 9000 	ldrb.w	r9, [r3]
d0052714:	f1b9 0f14 	cmp.w	r9, #20
d0052718:	f43f ad4f 	beq.w	d00521ba <main+0x932>
d005271c:	9b04      	ldr	r3, [sp, #16]
d005271e:	2b00      	cmp	r3, #0
d0052720:	f000 8142 	beq.w	d00529a8 <main+0x1120>
d0052724:	2013      	movs	r0, #19
d0052726:	4eb0      	ldr	r6, [pc, #704]	; (d00529e8 <main+0x1160>)
d0052728:	2112      	movs	r1, #18
d005272a:	2215      	movs	r2, #21
d005272c:	7030      	strb	r0, [r6, #0]
d005272e:	2317      	movs	r3, #23
d0052730:	48ae      	ldr	r0, [pc, #696]	; (d00529ec <main+0x1164>)
d0052732:	f04f 0914 	mov.w	r9, #20
d0052736:	7001      	strb	r1, [r0, #0]
d0052738:	2100      	movs	r1, #0
d005273a:	9104      	str	r1, [sp, #16]
d005273c:	49ac      	ldr	r1, [pc, #688]	; (d00529f0 <main+0x1168>)
d005273e:	700a      	strb	r2, [r1, #0]
d0052740:	4aac      	ldr	r2, [pc, #688]	; (d00529f4 <main+0x116c>)
d0052742:	7013      	strb	r3, [r2, #0]
d0052744:	e539      	b.n	d00521ba <main+0x932>
d0052746:	4eac      	ldr	r6, [pc, #688]	; (d00529f8 <main+0x1170>)
d0052748:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
d005274c:	7be3      	ldrb	r3, [r4, #15]
d005274e:	6831      	ldr	r1, [r6, #0]
d0052750:	48aa      	ldr	r0, [pc, #680]	; (d00529fc <main+0x1174>)
d0052752:	e75b      	b.n	d005260c <main+0xd84>
d0052754:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0052758:	e586      	b.n	d0052268 <main+0x9e0>
d005275a:	eeb0 ba6c 	vmov.f32	s22, s25
d005275e:	ed9f aaa8 	vldr	s20, [pc, #672]	; d0052a00 <main+0x1178>
d0052762:	eddf aaa8 	vldr	s21, [pc, #672]	; d0052a04 <main+0x117c>
d0052766:	ed9f 9aa8 	vldr	s18, [pc, #672]	; d0052a08 <main+0x1180>
d005276a:	ed9f daa8 	vldr	s26, [pc, #672]	; d0052a0c <main+0x1184>
d005276e:	ed9f 8aa8 	vldr	s16, [pc, #672]	; d0052a10 <main+0x1188>
d0052772:	e605      	b.n	d0052380 <main+0xaf8>
d0052774:	f894 c010 	ldrb.w	ip, [r4, #16]
d0052778:	7c61      	ldrb	r1, [r4, #17]
d005277a:	7ca2      	ldrb	r2, [r4, #18]
d005277c:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0052780:	7ce3      	ldrb	r3, [r4, #19]
d0052782:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d0052786:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d005278a:	689b      	ldr	r3, [r3, #8]
d005278c:	689b      	ldr	r3, [r3, #8]
d005278e:	4798      	blx	r3
d0052790:	f894 c010 	ldrb.w	ip, [r4, #16]
d0052794:	7c61      	ldrb	r1, [r4, #17]
d0052796:	4638      	mov	r0, r7
d0052798:	7ca2      	ldrb	r2, [r4, #18]
d005279a:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d005279e:	7ce3      	ldrb	r3, [r4, #19]
d00527a0:	ea41 4202 	orr.w	r2, r1, r2, lsl #16
d00527a4:	ea42 6303 	orr.w	r3, r2, r3, lsl #24
d00527a8:	689b      	ldr	r3, [r3, #8]
d00527aa:	685b      	ldr	r3, [r3, #4]
d00527ac:	4798      	blx	r3
d00527ae:	f808 9c01 	strb.w	r9, [r8, #-1]
d00527b2:	e768      	b.n	d0052686 <main+0xdfe>
d00527b4:	4b8e      	ldr	r3, [pc, #568]	; (d00529f0 <main+0x1168>)
d00527b6:	4650      	mov	r0, sl
d00527b8:	4a8c      	ldr	r2, [pc, #560]	; (d00529ec <main+0x1164>)
d00527ba:	498b      	ldr	r1, [pc, #556]	; (d00529e8 <main+0x1160>)
d00527bc:	781b      	ldrb	r3, [r3, #0]
d00527be:	7812      	ldrb	r2, [r2, #0]
d00527c0:	7809      	ldrb	r1, [r1, #0]
d00527c2:	f005 ffc3 	bl	d005874c <drawFakeHorizon>
d00527c6:	e456      	b.n	d0052076 <main+0x7ee>
d00527c8:	3b01      	subs	r3, #1
d00527ca:	ed9f 0a92 	vldr	s0, [pc, #584]	; d0052a14 <main+0x118c>
d00527ce:	8d28      	ldrh	r0, [r5, #40]	; 0x28
d00527d0:	84eb      	strh	r3, [r5, #38]	; 0x26
d00527d2:	ee28 0a00 	vmul.f32	s0, s16, s0
d00527d6:	f004 f913 	bl	d0056a00 <entityMoveForward>
d00527da:	8ceb      	ldrh	r3, [r5, #38]	; 0x26
d00527dc:	2b00      	cmp	r3, #0
d00527de:	f47f aed7 	bne.w	d0052590 <main+0xd08>
d00527e2:	e6cf      	b.n	d0052584 <main+0xcfc>
d00527e4:	3b01      	subs	r3, #1
d00527e6:	ed9f 0a8b 	vldr	s0, [pc, #556]	; d0052a14 <main+0x118c>
d00527ea:	8de8      	ldrh	r0, [r5, #46]	; 0x2e
d00527ec:	85ab      	strh	r3, [r5, #44]	; 0x2c
d00527ee:	ee28 0a00 	vmul.f32	s0, s16, s0
d00527f2:	f004 f905 	bl	d0056a00 <entityMoveForward>
d00527f6:	8dab      	ldrh	r3, [r5, #44]	; 0x2c
d00527f8:	2b00      	cmp	r3, #0
d00527fa:	f47f aed6 	bne.w	d00525aa <main+0xd22>
d00527fe:	e6ce      	b.n	d005259e <main+0xd16>
d0052800:	3b01      	subs	r3, #1
d0052802:	ed9f 0a84 	vldr	s0, [pc, #528]	; d0052a14 <main+0x118c>
d0052806:	8a28      	ldrh	r0, [r5, #16]
d0052808:	81eb      	strh	r3, [r5, #14]
d005280a:	ee28 0a00 	vmul.f32	s0, s16, s0
d005280e:	f004 f8f7 	bl	d0056a00 <entityMoveForward>
d0052812:	89eb      	ldrh	r3, [r5, #14]
d0052814:	2b00      	cmp	r3, #0
d0052816:	f47f ae8d 	bne.w	d0052534 <main+0xcac>
d005281a:	e686      	b.n	d005252a <main+0xca2>
d005281c:	3b01      	subs	r3, #1
d005281e:	ed9f 0a7d 	vldr	s0, [pc, #500]	; d0052a14 <main+0x118c>
d0052822:	8ae8      	ldrh	r0, [r5, #22]
d0052824:	82ab      	strh	r3, [r5, #20]
d0052826:	ee28 0a00 	vmul.f32	s0, s16, s0
d005282a:	f004 f8e9 	bl	d0056a00 <entityMoveForward>
d005282e:	8aab      	ldrh	r3, [r5, #20]
d0052830:	2b00      	cmp	r3, #0
d0052832:	f47f ae8a 	bne.w	d005254a <main+0xcc2>
d0052836:	e683      	b.n	d0052540 <main+0xcb8>
d0052838:	3b01      	subs	r3, #1
d005283a:	ed9f 0a76 	vldr	s0, [pc, #472]	; d0052a14 <main+0x118c>
d005283e:	8ba8      	ldrh	r0, [r5, #28]
d0052840:	836b      	strh	r3, [r5, #26]
d0052842:	ee28 0a00 	vmul.f32	s0, s16, s0
d0052846:	f004 f8db 	bl	d0056a00 <entityMoveForward>
d005284a:	8b6b      	ldrh	r3, [r5, #26]
d005284c:	2b00      	cmp	r3, #0
d005284e:	f47f ae87 	bne.w	d0052560 <main+0xcd8>
d0052852:	e680      	b.n	d0052556 <main+0xcce>
d0052854:	3b01      	subs	r3, #1
d0052856:	ed9f 0a6f 	vldr	s0, [pc, #444]	; d0052a14 <main+0x118c>
d005285a:	8c68      	ldrh	r0, [r5, #34]	; 0x22
d005285c:	842b      	strh	r3, [r5, #32]
d005285e:	ee28 0a00 	vmul.f32	s0, s16, s0
d0052862:	f004 f8cd 	bl	d0056a00 <entityMoveForward>
d0052866:	8c2b      	ldrh	r3, [r5, #32]
d0052868:	2b00      	cmp	r3, #0
d005286a:	f47f ae84 	bne.w	d0052576 <main+0xcee>
d005286e:	e67d      	b.n	d005256c <main+0xce4>
d0052870:	3b01      	subs	r3, #1
d0052872:	ed9f 0a68 	vldr	s0, [pc, #416]	; d0052a14 <main+0x118c>
d0052876:	88a8      	ldrh	r0, [r5, #4]
d0052878:	806b      	strh	r3, [r5, #2]
d005287a:	ee28 0a00 	vmul.f32	s0, s16, s0
d005287e:	f004 f8bf 	bl	d0056a00 <entityMoveForward>
d0052882:	886b      	ldrh	r3, [r5, #2]
d0052884:	2b00      	cmp	r3, #0
d0052886:	f47f ae3f 	bne.w	d0052508 <main+0xc80>
d005288a:	e638      	b.n	d00524fe <main+0xc76>
d005288c:	3b01      	subs	r3, #1
d005288e:	ed9f 0a61 	vldr	s0, [pc, #388]	; d0052a14 <main+0x118c>
d0052892:	8968      	ldrh	r0, [r5, #10]
d0052894:	812b      	strh	r3, [r5, #8]
d0052896:	ee28 0a00 	vmul.f32	s0, s16, s0
d005289a:	f004 f8b1 	bl	d0056a00 <entityMoveForward>
d005289e:	892b      	ldrh	r3, [r5, #8]
d00528a0:	2b00      	cmp	r3, #0
d00528a2:	f47f ae3c 	bne.w	d005251e <main+0xc96>
d00528a6:	e635      	b.n	d0052514 <main+0xc8c>
d00528a8:	eeb1 1a4b 	vneg.f32	s2, s22
d00528ac:	ed9f 0a5a 	vldr	s0, [pc, #360]	; d0052a18 <main+0x1190>
d00528b0:	eef0 0a68 	vmov.f32	s1, s17
d00528b4:	4650      	mov	r0, sl
d00528b6:	f003 fd19 	bl	d00562ec <cameraMove>
d00528ba:	e614      	b.n	d00524e6 <main+0xc5e>
d00528bc:	2300      	movs	r3, #0
d00528be:	eeb0 1a4b 	vmov.f32	s2, s22
d00528c2:	eef0 0a68 	vmov.f32	s1, s17
d00528c6:	ed9f 0a54 	vldr	s0, [pc, #336]	; d0052a18 <main+0x1190>
d00528ca:	4650      	mov	r0, sl
d00528cc:	9308      	str	r3, [sp, #32]
d00528ce:	f003 fd0d 	bl	d00562ec <cameraMove>
d00528d2:	e605      	b.n	d00524e0 <main+0xc58>
d00528d4:	eeb0 0a48 	vmov.f32	s0, s16
d00528d8:	ee1f 0a90 	vmov	r0, s31
d00528dc:	f7fe fb0c 	bl	d0050ef8 <weatherLightning>
d00528e0:	9007      	str	r0, [sp, #28]
d00528e2:	e5ec      	b.n	d00524be <main+0xc36>
d00528e4:	2101      	movs	r1, #1
d00528e6:	ee1f 0a90 	vmov	r0, s31
d00528ea:	f004 febd 	bl	d0057668 <lightEnable>
d00528ee:	ee1f 0a90 	vmov	r0, s31
d00528f2:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d00528f6:	f004 ff4d 	bl	d0057794 <lightSetIntensity>
d00528fa:	eeb0 0a68 	vmov.f32	s0, s17
d00528fe:	2301      	movs	r3, #1
d0052900:	2224      	movs	r2, #36	; 0x24
d0052902:	212b      	movs	r1, #43	; 0x2b
d0052904:	4650      	mov	r0, sl
d0052906:	f005 ff21 	bl	d005874c <drawFakeHorizon>
d005290a:	f7ff bbbc 	b.w	d0052086 <main+0x7fe>
d005290e:	eeb0 0a48 	vmov.f32	s0, s16
d0052912:	4651      	mov	r1, sl
d0052914:	a879      	add	r0, sp, #484	; 0x1e4
d0052916:	f7fe f86b 	bl	d00509f0 <splineRailUpdate>
d005291a:	f7ff bb85 	b.w	d0052028 <main+0x7a0>
d005291e:	ed9f 1a3f 	vldr	s2, [pc, #252]	; d0052a1c <main+0x1194>
d0052922:	eddf 0a3f 	vldr	s1, [pc, #252]	; d0052a20 <main+0x1198>
d0052926:	ed9f 0a3f 	vldr	s0, [pc, #252]	; d0052a24 <main+0x119c>
d005292a:	f002 fe2d 	bl	d0055588 <vec3>
d005292e:	ee1d 0a90 	vmov	r0, s27
d0052932:	ed8d 0a61 	vstr	s0, [sp, #388]	; 0x184
d0052936:	edcd 0a62 	vstr	s1, [sp, #392]	; 0x188
d005293a:	ed8d 1a63 	vstr	s2, [sp, #396]	; 0x18c
d005293e:	f003 ffff 	bl	d0056940 <entitySetPosition>
d0052942:	e592      	b.n	d005246a <main+0xbe2>
d0052944:	eef1 0a60 	vneg.f32	s1, s1
d0052948:	2101      	movs	r1, #1
d005294a:	eeb0 1a68 	vmov.f32	s2, s17
d005294e:	ed9f 0a32 	vldr	s0, [pc, #200]	; d0052a18 <main+0x1190>
d0052952:	4650      	mov	r0, sl
d0052954:	f003 faee 	bl	d0055f34 <cameraTurn>
d0052958:	e555      	b.n	d0052406 <main+0xb7e>
d005295a:	2200      	movs	r2, #0
d005295c:	4613      	mov	r3, r2
d005295e:	f7ff bbea 	b.w	d0052136 <main+0x8ae>
d0052962:	3b01      	subs	r3, #1
d0052964:	4a30      	ldr	r2, [pc, #192]	; (d0052a28 <main+0x11a0>)
d0052966:	7013      	strb	r3, [r2, #0]
d0052968:	f7ff bb85 	b.w	d0052076 <main+0x7ee>
d005296c:	f007 fd3c 	bl	d005a3e8 <rand>
d0052970:	4242      	negs	r2, r0
d0052972:	f000 0303 	and.w	r3, r0, #3
d0052976:	f002 0203 	and.w	r2, r2, #3
d005297a:	bf58      	it	pl
d005297c:	4253      	negpl	r3, r2
d005297e:	4a2b      	ldr	r2, [pc, #172]	; (d0052a2c <main+0x11a4>)
d0052980:	3303      	adds	r3, #3
d0052982:	8013      	strh	r3, [r2, #0]
d0052984:	f007 fd30 	bl	d005a3e8 <rand>
d0052988:	4a29      	ldr	r2, [pc, #164]	; (d0052a30 <main+0x11a8>)
d005298a:	fb82 3200 	smull	r3, r2, r2, r0
d005298e:	17c3      	asrs	r3, r0, #31
d0052990:	4402      	add	r2, r0
d0052992:	ebc3 13a2 	rsb	r3, r3, r2, asr #6
d0052996:	eb03 02c3 	add.w	r2, r3, r3, lsl #3
d005299a:	ebc3 03c2 	rsb	r3, r3, r2, lsl #3
d005299e:	1ac0      	subs	r0, r0, r3
d00529a0:	4b24      	ldr	r3, [pc, #144]	; (d0052a34 <main+0x11ac>)
d00529a2:	3014      	adds	r0, #20
d00529a4:	8018      	strh	r0, [r3, #0]
d00529a6:	e60f      	b.n	d00525c8 <main+0xd40>
d00529a8:	2009      	movs	r0, #9
d00529aa:	4e0f      	ldr	r6, [pc, #60]	; (d00529e8 <main+0x1160>)
d00529ac:	213b      	movs	r1, #59	; 0x3b
d00529ae:	222b      	movs	r2, #43	; 0x2b
d00529b0:	7030      	strb	r0, [r6, #0]
d00529b2:	2302      	movs	r3, #2
d00529b4:	480d      	ldr	r0, [pc, #52]	; (d00529ec <main+0x1164>)
d00529b6:	f04f 0914 	mov.w	r9, #20
d00529ba:	7001      	strb	r1, [r0, #0]
d00529bc:	2101      	movs	r1, #1
d00529be:	9104      	str	r1, [sp, #16]
d00529c0:	490b      	ldr	r1, [pc, #44]	; (d00529f0 <main+0x1168>)
d00529c2:	700a      	strb	r2, [r1, #0]
d00529c4:	4a0b      	ldr	r2, [pc, #44]	; (d00529f4 <main+0x116c>)
d00529c6:	7013      	strb	r3, [r2, #0]
d00529c8:	f7ff bbf7 	b.w	d00521ba <main+0x932>
d00529cc:	d0090efc 	.word	0xd0090efc
d00529d0:	00075300 	.word	0x00075300
d00529d4:	d0090edc 	.word	0xd0090edc
d00529d8:	d0090ed0 	.word	0xd0090ed0
d00529dc:	d005c0ec 	.word	0xd005c0ec
d00529e0:	d0090d8c 	.word	0xd0090d8c
d00529e4:	d0090ee1 	.word	0xd0090ee1
d00529e8:	d012b221 	.word	0xd012b221
d00529ec:	d012b1e0 	.word	0xd012b1e0
d00529f0:	d012b254 	.word	0xd012b254
d00529f4:	d012b220 	.word	0xd012b220
d00529f8:	d012b280 	.word	0xd012b280
d00529fc:	d012b260 	.word	0xd012b260
d0052a00:	42b6ee15 	.word	0x42b6ee15
d0052a04:	3f28f5c3 	.word	0x3f28f5c3
d0052a08:	4215999a 	.word	0x4215999a
d0052a0c:	bc872b02 	.word	0xbc872b02
d0052a10:	3f0ccccd 	.word	0x3f0ccccd
d0052a14:	44fa0000 	.word	0x44fa0000
d0052a18:	00000000 	.word	0x00000000
d0052a1c:	c3c80000 	.word	0xc3c80000
d0052a20:	42480000 	.word	0x42480000
d0052a24:	c3070000 	.word	0xc3070000
d0052a28:	d0090d84 	.word	0xd0090d84
d0052a2c:	d0090f04 	.word	0xd0090f04
d0052a30:	e6c2b449 	.word	0xe6c2b449
d0052a34:	d0090f06 	.word	0xd0090f06
d0052a38:	45e7b273 	.word	0x45e7b273

d0052a3c <meshSetDefaultMaterial>:
d0052a3c:	b148      	cbz	r0, d0052a52 <meshSetDefaultMaterial+0x16>
d0052a3e:	2300      	movs	r3, #0
d0052a40:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d0052a44:	f04f 4282 	mov.w	r2, #1090519040	; 0x41000000
d0052a48:	6203      	str	r3, [r0, #32]
d0052a4a:	6241      	str	r1, [r0, #36]	; 0x24
d0052a4c:	62c2      	str	r2, [r0, #44]	; 0x2c
d0052a4e:	6303      	str	r3, [r0, #48]	; 0x30
d0052a50:	6283      	str	r3, [r0, #40]	; 0x28
d0052a52:	4770      	bx	lr

d0052a54 <meshSetMaterial>:
d0052a54:	b148      	cbz	r0, d0052a6a <meshSetMaterial+0x16>
d0052a56:	ed80 0a08 	vstr	s0, [r0, #32]
d0052a5a:	edc0 0a09 	vstr	s1, [r0, #36]	; 0x24
d0052a5e:	ed80 1a0c 	vstr	s2, [r0, #48]	; 0x30
d0052a62:	edc0 1a0a 	vstr	s3, [r0, #40]	; 0x28
d0052a66:	ed80 2a0b 	vstr	s4, [r0, #44]	; 0x2c
d0052a6a:	4770      	bx	lr

d0052a6c <initDepthBandMem>:
d0052a6c:	4a08      	ldr	r2, [pc, #32]	; (d0052a90 <initDepthBandMem+0x24>)
d0052a6e:	b508      	push	{r3, lr}
d0052a70:	7813      	ldrb	r3, [r2, #0]
d0052a72:	7850      	ldrb	r0, [r2, #1]
d0052a74:	7891      	ldrb	r1, [r2, #2]
d0052a76:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d0052a7a:	78d2      	ldrb	r2, [r2, #3]
d0052a7c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d0052a80:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d0052a84:	6a5b      	ldr	r3, [r3, #36]	; 0x24
d0052a86:	4798      	blx	r3
d0052a88:	4b02      	ldr	r3, [pc, #8]	; (d0052a94 <initDepthBandMem+0x28>)
d0052a8a:	6018      	str	r0, [r3, #0]
d0052a8c:	bd08      	pop	{r3, pc}
d0052a8e:	bf00      	nop
d0052a90:	2001f000 	.word	0x2001f000
d0052a94:	d0090f10 	.word	0xd0090f10

d0052a98 <beginDepthBand>:
d0052a98:	f100 031f 	add.w	r3, r0, #31
d0052a9c:	4a0d      	ldr	r2, [pc, #52]	; (d0052ad4 <beginDepthBand+0x3c>)
d0052a9e:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d0052aa2:	6010      	str	r0, [r2, #0]
d0052aa4:	da08      	bge.n	d0052ab8 <beginDepthBand+0x20>
d0052aa6:	490c      	ldr	r1, [pc, #48]	; (d0052ad8 <beginDepthBand+0x40>)
d0052aa8:	f44f 42f0 	mov.w	r2, #30720	; 0x7800
d0052aac:	600b      	str	r3, [r1, #0]
d0052aae:	21ff      	movs	r1, #255	; 0xff
d0052ab0:	4b0a      	ldr	r3, [pc, #40]	; (d0052adc <beginDepthBand+0x44>)
d0052ab2:	6818      	ldr	r0, [r3, #0]
d0052ab4:	f007 bbe6 	b.w	d005a284 <memset>
d0052ab8:	4b07      	ldr	r3, [pc, #28]	; (d0052ad8 <beginDepthBand+0x40>)
d0052aba:	f240 123f 	movw	r2, #319	; 0x13f
d0052abe:	f5c0 70a0 	rsb	r0, r0, #320	; 0x140
d0052ac2:	21ff      	movs	r1, #255	; 0xff
d0052ac4:	601a      	str	r2, [r3, #0]
d0052ac6:	ebc0 1000 	rsb	r0, r0, r0, lsl #4
d0052aca:	4b04      	ldr	r3, [pc, #16]	; (d0052adc <beginDepthBand+0x44>)
d0052acc:	0182      	lsls	r2, r0, #6
d0052ace:	6818      	ldr	r0, [r3, #0]
d0052ad0:	f007 bbd8 	b.w	d005a284 <memset>
d0052ad4:	d0090f08 	.word	0xd0090f08
d0052ad8:	d0090f0c 	.word	0xd0090f0c
d0052adc:	d0090f10 	.word	0xd0090f10

d0052ae0 <set3DRenderBuffer>:
d0052ae0:	4b01      	ldr	r3, [pc, #4]	; (d0052ae8 <set3DRenderBuffer+0x8>)
d0052ae2:	6018      	str	r0, [r3, #0]
d0052ae4:	4770      	bx	lr
d0052ae6:	bf00      	nop
d0052ae8:	d012b284 	.word	0xd012b284

d0052aec <putPixel>:
d0052aec:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d0052af0:	d209      	bcs.n	d0052b06 <putPixel+0x1a>
d0052af2:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d0052af6:	d206      	bcs.n	d0052b06 <putPixel+0x1a>
d0052af8:	4b03      	ldr	r3, [pc, #12]	; (d0052b08 <putPixel+0x1c>)
d0052afa:	eb00 0080 	add.w	r0, r0, r0, lsl #2
d0052afe:	681b      	ldr	r3, [r3, #0]
d0052b00:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d0052b04:	5442      	strb	r2, [r0, r1]
d0052b06:	4770      	bx	lr
d0052b08:	d012b284 	.word	0xd012b284

d0052b0c <drawLine>:
d0052b0c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0052b10:	b085      	sub	sp, #20
d0052b12:	eba2 0c00 	sub.w	ip, r2, r0
d0052b16:	eba3 0901 	sub.w	r9, r3, r1
d0052b1a:	f240 1edf 	movw	lr, #479	; 0x1df
d0052b1e:	f89d 4038 	ldrb.w	r4, [sp, #56]	; 0x38
d0052b22:	f240 1a3f 	movw	sl, #319	; 0x13f
d0052b26:	f8df b07c 	ldr.w	fp, [pc, #124]	; d0052ba4 <drawLine+0x98>
d0052b2a:	9401      	str	r4, [sp, #4]
d0052b2c:	4282      	cmp	r2, r0
d0052b2e:	bfcc      	ite	gt
d0052b30:	2401      	movgt	r4, #1
d0052b32:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d0052b36:	9402      	str	r4, [sp, #8]
d0052b38:	428b      	cmp	r3, r1
d0052b3a:	bfcc      	ite	gt
d0052b3c:	2401      	movgt	r4, #1
d0052b3e:	f04f 34ff 	movle.w	r4, #4294967295	; 0xffffffff
d0052b42:	f1bc 0f00 	cmp.w	ip, #0
d0052b46:	9403      	str	r4, [sp, #12]
d0052b48:	bfb8      	it	lt
d0052b4a:	f1cc 0c00 	rsblt	ip, ip, #0
d0052b4e:	f1b9 0f00 	cmp.w	r9, #0
d0052b52:	bfb8      	it	lt
d0052b54:	f1c9 0900 	rsblt	r9, r9, #0
d0052b58:	ebac 0409 	sub.w	r4, ip, r9
d0052b5c:	f1c9 0800 	rsb	r8, r9, #0
d0052b60:	4570      	cmp	r0, lr
d0052b62:	eb00 0780 	add.w	r7, r0, r0, lsl #2
d0052b66:	ea4f 0644 	mov.w	r6, r4, lsl #1
d0052b6a:	d807      	bhi.n	d0052b7c <drawLine+0x70>
d0052b6c:	4551      	cmp	r1, sl
d0052b6e:	d805      	bhi.n	d0052b7c <drawLine+0x70>
d0052b70:	f8db 5000 	ldr.w	r5, [fp]
d0052b74:	eb05 1587 	add.w	r5, r5, r7, lsl #6
d0052b78:	9f01      	ldr	r7, [sp, #4]
d0052b7a:	546f      	strb	r7, [r5, r1]
d0052b7c:	4290      	cmp	r0, r2
d0052b7e:	d101      	bne.n	d0052b84 <drawLine+0x78>
d0052b80:	4299      	cmp	r1, r3
d0052b82:	d00c      	beq.n	d0052b9e <drawLine+0x92>
d0052b84:	ebb8 0f44 	cmp.w	r8, r4, lsl #1
d0052b88:	dc05      	bgt.n	d0052b96 <drawLine+0x8a>
d0052b8a:	9d02      	ldr	r5, [sp, #8]
d0052b8c:	45b4      	cmp	ip, r6
d0052b8e:	eba4 0409 	sub.w	r4, r4, r9
d0052b92:	4428      	add	r0, r5
d0052b94:	dbe4      	blt.n	d0052b60 <drawLine+0x54>
d0052b96:	9d03      	ldr	r5, [sp, #12]
d0052b98:	4464      	add	r4, ip
d0052b9a:	4429      	add	r1, r5
d0052b9c:	e7e0      	b.n	d0052b60 <drawLine+0x54>
d0052b9e:	b005      	add	sp, #20
d0052ba0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0052ba4:	d012b284 	.word	0xd012b284

d0052ba8 <shadeColor>:
d0052ba8:	2900      	cmp	r1, #0
d0052baa:	db09      	blt.n	d0052bc0 <shadeColor+0x18>
d0052bac:	2904      	cmp	r1, #4
d0052bae:	dc09      	bgt.n	d0052bc4 <shadeColor+0x1c>
d0052bb0:	0109      	lsls	r1, r1, #4
d0052bb2:	b2c9      	uxtb	r1, r1
d0052bb4:	f000 000f 	and.w	r0, r0, #15
d0052bb8:	3020      	adds	r0, #32
d0052bba:	4408      	add	r0, r1
d0052bbc:	b2c0      	uxtb	r0, r0
d0052bbe:	4770      	bx	lr
d0052bc0:	2100      	movs	r1, #0
d0052bc2:	e7f7      	b.n	d0052bb4 <shadeColor+0xc>
d0052bc4:	2010      	movs	r0, #16
d0052bc6:	4770      	bx	lr

d0052bc8 <fillTriangleFlat>:
d0052bc8:	eddf 7adc 	vldr	s15, [pc, #880]	; d0052f3c <fillTriangleFlat+0x374>
d0052bcc:	eef4 0ae7 	vcmpe.f32	s1, s15
d0052bd0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0052bd4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052bd8:	eeb4 1ae7 	vcmpe.f32	s2, s15
d0052bdc:	ed2d 8b10 	vpush	{d8-d15}
d0052be0:	b08d      	sub	sp, #52	; 0x34
d0052be2:	9304      	str	r3, [sp, #16]
d0052be4:	bf94      	ite	ls
d0052be6:	2301      	movls	r3, #1
d0052be8:	2300      	movhi	r3, #0
d0052bea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052bee:	9001      	str	r0, [sp, #4]
d0052bf0:	9102      	str	r1, [sp, #8]
d0052bf2:	bf98      	it	ls
d0052bf4:	f043 0301 	orrls.w	r3, r3, #1
d0052bf8:	9203      	str	r2, [sp, #12]
d0052bfa:	f8bd 40a0 	ldrh.w	r4, [sp, #160]	; 0xa0
d0052bfe:	f8bd 00a4 	ldrh.w	r0, [sp, #164]	; 0xa4
d0052c02:	f8bd 10a8 	ldrh.w	r1, [sp, #168]	; 0xa8
d0052c06:	f89d 20ac 	ldrb.w	r2, [sp, #172]	; 0xac
d0052c0a:	2b00      	cmp	r3, #0
d0052c0c:	f040 8169 	bne.w	d0052ee2 <fillTriangleFlat+0x31a>
d0052c10:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0052c14:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052c18:	bf94      	ite	ls
d0052c1a:	2701      	movls	r7, #1
d0052c1c:	2700      	movhi	r7, #0
d0052c1e:	f240 8160 	bls.w	d0052ee2 <fillTriangleFlat+0x31a>
d0052c22:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0052c26:	ee07 4a10 	vmov	s14, r4
d0052c2a:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0052c2e:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0052c32:	ee87 8a80 	vdiv.f32	s16, s15, s0
d0052c36:	eec7 2a81 	vdiv.f32	s5, s15, s2
d0052c3a:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d0052c3e:	ee07 0a90 	vmov	s15, r0
d0052c42:	ee71 1aa6 	vadd.f32	s3, s3, s13
d0052c46:	eef8 5a67 	vcvt.f32.u32	s11, s15
d0052c4a:	ee07 1a90 	vmov	s15, r1
d0052c4e:	ee27 7a08 	vmul.f32	s14, s14, s16
d0052c52:	eef8 3a67 	vcvt.f32.u32	s7, s15
d0052c56:	eefd 7ae1 	vcvt.s32.f32	s15, s3
d0052c5a:	ee63 3aa2 	vmul.f32	s7, s7, s5
d0052c5e:	ee17 3a90 	vmov	r3, s15
d0052c62:	2b00      	cmp	r3, #0
d0052c64:	ee65 5a80 	vmul.f32	s11, s11, s0
d0052c68:	f2c0 8142 	blt.w	d0052ef0 <fillTriangleFlat+0x328>
d0052c6c:	2b04      	cmp	r3, #4
d0052c6e:	f340 813d 	ble.w	d0052eec <fillTriangleFlat+0x324>
d0052c72:	2710      	movs	r7, #16
d0052c74:	eddd 7a02 	vldr	s15, [sp, #8]
d0052c78:	eddd 6a27 	vldr	s13, [sp, #156]	; 0x9c
d0052c7c:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d0052c80:	eddd 7a04 	vldr	s15, [sp, #16]
d0052c84:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0052c88:	eeb8 3ae7 	vcvt.f32.s32	s6, s15
d0052c8c:	eddd 7a01 	vldr	s15, [sp, #4]
d0052c90:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d0052c94:	eddd 7a03 	vldr	s15, [sp, #12]
d0052c98:	eef4 4ac3 	vcmpe.f32	s9, s6
d0052c9c:	eeb8 4ae7 	vcvt.f32.s32	s8, s15
d0052ca0:	eddd 7a26 	vldr	s15, [sp, #152]	; 0x98
d0052ca4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052ca8:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052cac:	f300 8126 	bgt.w	d0052efc <fillTriangleFlat+0x334>
d0052cb0:	eef4 4ae6 	vcmpe.f32	s9, s13
d0052cb4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052cb8:	f300 8217 	bgt.w	d00530ea <fillTriangleFlat+0x522>
d0052cbc:	eeb4 3ae6 	vcmpe.f32	s6, s13
d0052cc0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052cc4:	dd17      	ble.n	d0052cf6 <fillTriangleFlat+0x12e>
d0052cc6:	eeb0 1a65 	vmov.f32	s2, s11
d0052cca:	eef0 1a40 	vmov.f32	s3, s0
d0052cce:	eeb0 2a43 	vmov.f32	s4, s6
d0052cd2:	eeb0 5a44 	vmov.f32	s10, s8
d0052cd6:	eef0 5a63 	vmov.f32	s11, s7
d0052cda:	eeb0 0a62 	vmov.f32	s0, s5
d0052cde:	eeb0 3a66 	vmov.f32	s6, s13
d0052ce2:	eeb0 4a67 	vmov.f32	s8, s15
d0052ce6:	eef0 3a41 	vmov.f32	s7, s2
d0052cea:	eef0 2a61 	vmov.f32	s5, s3
d0052cee:	eef0 6a42 	vmov.f32	s13, s4
d0052cf2:	eef0 7a45 	vmov.f32	s15, s10
d0052cf6:	eeb6 5a00 	vmov.f32	s10, #96	; 0x3f000000  0.5
d0052cfa:	ee34 2a85 	vadd.f32	s4, s9, s10
d0052cfe:	ee36 5a85 	vadd.f32	s10, s13, s10
d0052d02:	eebd 2ac2 	vcvt.s32.f32	s4, s4
d0052d06:	eebd 5ac5 	vcvt.s32.f32	s10, s10
d0052d0a:	ee12 3a10 	vmov	r3, s4
d0052d0e:	ee15 2a10 	vmov	r2, s10
d0052d12:	4293      	cmp	r3, r2
d0052d14:	f000 80e5 	beq.w	d0052ee2 <fillTriangleFlat+0x31a>
d0052d18:	ee36 2ae4 	vsub.f32	s4, s13, s9
d0052d1c:	ed9f 1a87 	vldr	s2, [pc, #540]	; d0052f3c <fillTriangleFlat+0x374>
d0052d20:	eeb4 2ac1 	vcmpe.f32	s4, s2
d0052d24:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052d28:	f240 80db 	bls.w	d0052ee2 <fillTriangleFlat+0x31a>
d0052d2c:	eef7 1a00 	vmov.f32	s3, #112	; 0x3f800000  1.0
d0052d30:	ee77 0ac6 	vsub.f32	s1, s15, s12
d0052d34:	ee72 8ac8 	vsub.f32	s17, s5, s16
d0052d38:	ee81 5a82 	vdiv.f32	s10, s3, s4
d0052d3c:	ee33 2a64 	vsub.f32	s4, s6, s9
d0052d40:	ee33 9ac7 	vsub.f32	s18, s7, s14
d0052d44:	eeb4 2ac1 	vcmpe.f32	s4, s2
d0052d48:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052d4c:	ee60 0a85 	vmul.f32	s1, s1, s10
d0052d50:	ee68 8a85 	vmul.f32	s17, s17, s10
d0052d54:	ee29 9a05 	vmul.f32	s18, s18, s10
d0052d58:	f300 80fe 	bgt.w	d0052f58 <fillTriangleFlat+0x390>
d0052d5c:	ee36 5ac3 	vsub.f32	s10, s13, s6
d0052d60:	eeb4 5ac1 	vcmpe.f32	s10, s2
d0052d64:	ed8d 5a01 	vstr	s10, [sp, #4]
d0052d68:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052d6c:	f340 80b9 	ble.w	d0052ee2 <fillTriangleFlat+0x31a>
d0052d70:	ee81 5a85 	vdiv.f32	s10, s3, s10
d0052d74:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0052d78:	eeb4 2ac1 	vcmpe.f32	s4, s2
d0052d7c:	ee72 2ac0 	vsub.f32	s5, s5, s0
d0052d80:	ee73 3ae5 	vsub.f32	s7, s7, s11
d0052d84:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052d88:	ee67 7a85 	vmul.f32	s15, s15, s10
d0052d8c:	ee62 fa85 	vmul.f32	s31, s5, s10
d0052d90:	ee23 5a85 	vmul.f32	s10, s7, s10
d0052d94:	edcd 7a04 	vstr	s15, [sp, #16]
d0052d98:	f300 8343 	bgt.w	d0053422 <fillTriangleFlat+0x85a>
d0052d9c:	4a68      	ldr	r2, [pc, #416]	; (d0052f40 <fillTriangleFlat+0x378>)
d0052d9e:	eefd 7ac3 	vcvt.s32.f32	s15, s6
d0052da2:	4b68      	ldr	r3, [pc, #416]	; (d0052f44 <fillTriangleFlat+0x37c>)
d0052da4:	f8d2 a000 	ldr.w	sl, [r2]
d0052da8:	681b      	ldr	r3, [r3, #0]
d0052daa:	edcd 7a02 	vstr	s15, [sp, #8]
d0052dae:	9303      	str	r3, [sp, #12]
d0052db0:	9b02      	ldr	r3, [sp, #8]
d0052db2:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0052db6:	4553      	cmp	r3, sl
d0052db8:	ee17 ea90 	vmov	lr, s15
d0052dbc:	bfb8      	it	lt
d0052dbe:	4653      	movlt	r3, sl
d0052dc0:	f10e 3eff 	add.w	lr, lr, #4294967295	; 0xffffffff
d0052dc4:	469b      	mov	fp, r3
d0052dc6:	9b03      	ldr	r3, [sp, #12]
d0052dc8:	459e      	cmp	lr, r3
d0052dca:	bfa8      	it	ge
d0052dcc:	469e      	movge	lr, r3
d0052dce:	45f3      	cmp	fp, lr
d0052dd0:	f300 8087 	bgt.w	d0052ee2 <fillTriangleFlat+0x31a>
d0052dd4:	ee07 ba90 	vmov	s15, fp
d0052dd8:	eef6 1a00 	vmov.f32	s3, #96	; 0x3f000000  0.5
d0052ddc:	ebaa 1a0a 	sub.w	sl, sl, sl, lsl #4
d0052de0:	4b59      	ldr	r3, [pc, #356]	; (d0052f48 <fillTriangleFlat+0x380>)
d0052de2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052de6:	ed9d ba04 	vldr	s22, [sp, #16]
d0052dea:	ea4f 124a 	mov.w	r2, sl, lsl #5
d0052dee:	681b      	ldr	r3, [r3, #0]
d0052df0:	f10e 0e01 	add.w	lr, lr, #1
d0052df4:	eddf 9a51 	vldr	s19, [pc, #324]	; d0052f3c <fillTriangleFlat+0x374>
d0052df8:	ee77 7aa1 	vadd.f32	s15, s15, s3
d0052dfc:	ed9f aa53 	vldr	s20, [pc, #332]	; d0052f4c <fillTriangleFlat+0x384>
d0052e00:	ed9f 2a53 	vldr	s4, [pc, #332]	; d0052f50 <fillTriangleFlat+0x388>
d0052e04:	ed9f 1a53 	vldr	s2, [pc, #332]	; d0052f54 <fillTriangleFlat+0x38c>
d0052e08:	ee77 4ae4 	vsub.f32	s9, s15, s9
d0052e0c:	9202      	str	r2, [sp, #8]
d0052e0e:	ee37 3ac3 	vsub.f32	s6, s15, s6
d0052e12:	9301      	str	r3, [sp, #4]
d0052e14:	eea0 6aa4 	vfma.f32	s12, s1, s9
d0052e18:	eea8 8aa4 	vfma.f32	s16, s17, s9
d0052e1c:	eea9 7a24 	vfma.f32	s14, s18, s9
d0052e20:	eea3 4a0b 	vfma.f32	s8, s6, s22
d0052e24:	eea3 0a2f 	vfma.f32	s0, s6, s31
d0052e28:	eee5 5a03 	vfma.f32	s11, s10, s6
d0052e2c:	e033      	b.n	d0052e96 <fillTriangleFlat+0x2ce>
d0052e2e:	eef0 aa47 	vmov.f32	s21, s14
d0052e32:	eef0 2a48 	vmov.f32	s5, s16
d0052e36:	eef0 6a46 	vmov.f32	s13, s12
d0052e3a:	eeb0 3a65 	vmov.f32	s6, s11
d0052e3e:	eef0 4a40 	vmov.f32	s9, s0
d0052e42:	eef0 3a44 	vmov.f32	s7, s8
d0052e46:	fefa 7a66 	vrintp.f32	s15, s13
d0052e4a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0052e4e:	f240 13df 	movw	r3, #479	; 0x1df
d0052e52:	ee17 ca90 	vmov	ip, s15
d0052e56:	fefa 7a63 	vrintp.f32	s15, s7
d0052e5a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0052e5e:	f10c 3cff 	add.w	ip, ip, #4294967295	; 0xffffffff
d0052e62:	ee17 5a90 	vmov	r5, s15
d0052e66:	459c      	cmp	ip, r3
d0052e68:	ea25 75e5 	bic.w	r5, r5, r5, asr #31
d0052e6c:	bfa8      	it	ge
d0052e6e:	469c      	movge	ip, r3
d0052e70:	45ac      	cmp	ip, r5
d0052e72:	f280 816c 	bge.w	d005314e <fillTriangleFlat+0x586>
d0052e76:	f10b 0b01 	add.w	fp, fp, #1
d0052e7a:	ee36 6a20 	vadd.f32	s12, s12, s1
d0052e7e:	ee38 8a28 	vadd.f32	s16, s16, s17
d0052e82:	45f3      	cmp	fp, lr
d0052e84:	ee37 7a09 	vadd.f32	s14, s14, s18
d0052e88:	ee34 4a0b 	vadd.f32	s8, s8, s22
d0052e8c:	ee30 0a2f 	vadd.f32	s0, s0, s31
d0052e90:	ee75 5a85 	vadd.f32	s11, s11, s10
d0052e94:	d025      	beq.n	d0052ee2 <fillTriangleFlat+0x31a>
d0052e96:	eeb4 6ac4 	vcmpe.f32	s12, s8
d0052e9a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052e9e:	dcc6      	bgt.n	d0052e2e <fillTriangleFlat+0x266>
d0052ea0:	eef0 aa65 	vmov.f32	s21, s11
d0052ea4:	eef0 2a40 	vmov.f32	s5, s0
d0052ea8:	eef0 6a44 	vmov.f32	s13, s8
d0052eac:	eeb0 3a47 	vmov.f32	s6, s14
d0052eb0:	eef0 4a48 	vmov.f32	s9, s16
d0052eb4:	eef0 3a46 	vmov.f32	s7, s12
d0052eb8:	e7c5      	b.n	d0052e46 <fillTriangleFlat+0x27e>
d0052eba:	eddd 6a07 	vldr	s13, [sp, #28]
d0052ebe:	f8dd a020 	ldr.w	sl, [sp, #32]
d0052ec2:	ed9d 4a09 	vldr	s8, [sp, #36]	; 0x24
d0052ec6:	ed9d 7a0a 	vldr	s14, [sp, #40]	; 0x28
d0052eca:	ed9d 8a0b 	vldr	s16, [sp, #44]	; 0x2c
d0052ece:	eddf 7a1b 	vldr	s15, [pc, #108]	; d0052f3c <fillTriangleFlat+0x374>
d0052ed2:	eddd 3a01 	vldr	s7, [sp, #4]
d0052ed6:	eef4 3ae7 	vcmpe.f32	s7, s15
d0052eda:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052ede:	f73f af67 	bgt.w	d0052db0 <fillTriangleFlat+0x1e8>
d0052ee2:	b00d      	add	sp, #52	; 0x34
d0052ee4:	ecbd 8b10 	vpop	{d8-d15}
d0052ee8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0052eec:	011b      	lsls	r3, r3, #4
d0052eee:	b2df      	uxtb	r7, r3
d0052ef0:	f002 020f 	and.w	r2, r2, #15
d0052ef4:	3220      	adds	r2, #32
d0052ef6:	4417      	add	r7, r2
d0052ef8:	b2ff      	uxtb	r7, r7
d0052efa:	e6bb      	b.n	d0052c74 <fillTriangleFlat+0xac>
d0052efc:	eeb4 3ae6 	vcmpe.f32	s6, s13
d0052f00:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052f04:	f340 810a 	ble.w	d005311c <fillTriangleFlat+0x554>
d0052f08:	eeb0 1a63 	vmov.f32	s2, s7
d0052f0c:	eef0 1a62 	vmov.f32	s3, s5
d0052f10:	eeb0 2a66 	vmov.f32	s4, s13
d0052f14:	eeb0 5a67 	vmov.f32	s10, s15
d0052f18:	eef0 3a47 	vmov.f32	s7, s14
d0052f1c:	eef0 2a48 	vmov.f32	s5, s16
d0052f20:	eef0 6a64 	vmov.f32	s13, s9
d0052f24:	eef0 7a46 	vmov.f32	s15, s12
d0052f28:	eeb0 7a41 	vmov.f32	s14, s2
d0052f2c:	eeb0 8a61 	vmov.f32	s16, s3
d0052f30:	eef0 4a42 	vmov.f32	s9, s4
d0052f34:	eeb0 6a45 	vmov.f32	s12, s10
d0052f38:	e6dd      	b.n	d0052cf6 <fillTriangleFlat+0x12e>
d0052f3a:	bf00      	nop
d0052f3c:	38d1b717 	.word	0x38d1b717
d0052f40:	d0090f08 	.word	0xd0090f08
d0052f44:	d0090f0c 	.word	0xd0090f0c
d0052f48:	d0090f10 	.word	0xd0090f10
d0052f4c:	33d6bf95 	.word	0x33d6bf95
d0052f50:	00000000 	.word	0x00000000
d0052f54:	477fff00 	.word	0x477fff00
d0052f58:	ee81 5a82 	vdiv.f32	s10, s3, s4
d0052f5c:	ee76 aac3 	vsub.f32	s21, s13, s6
d0052f60:	ee34 aa46 	vsub.f32	s20, s8, s12
d0052f64:	ee70 9a48 	vsub.f32	s19, s0, s16
d0052f68:	ee35 2ac7 	vsub.f32	s4, s11, s14
d0052f6c:	edcd aa01 	vstr	s21, [sp, #4]
d0052f70:	eef4 aac1 	vcmpe.f32	s21, s2
d0052f74:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0052f78:	ee2a aa05 	vmul.f32	s20, s20, s10
d0052f7c:	ee69 9a85 	vmul.f32	s19, s19, s10
d0052f80:	ee22 5a05 	vmul.f32	s10, s4, s10
d0052f84:	eef0 ea45 	vmov.f32	s29, s10
d0052f88:	f340 8244 	ble.w	d0053414 <fillTriangleFlat+0x84c>
d0052f8c:	ee81 2aaa 	vdiv.f32	s4, s3, s21
d0052f90:	ee77 7ac4 	vsub.f32	s15, s15, s8
d0052f94:	ee72 2ac0 	vsub.f32	s5, s5, s0
d0052f98:	ee33 5ae5 	vsub.f32	s10, s7, s11
d0052f9c:	ee67 7a82 	vmul.f32	s15, s15, s4
d0052fa0:	ee62 fa82 	vmul.f32	s31, s5, s4
d0052fa4:	ee25 5a02 	vmul.f32	s10, s10, s4
d0052fa8:	edcd 7a04 	vstr	s15, [sp, #16]
d0052fac:	eefd 7ac3 	vcvt.s32.f32	s15, s6
d0052fb0:	4bd2      	ldr	r3, [pc, #840]	; (d00532fc <fillTriangleFlat+0x734>)
d0052fb2:	4ad3      	ldr	r2, [pc, #844]	; (d0053300 <fillTriangleFlat+0x738>)
d0052fb4:	6819      	ldr	r1, [r3, #0]
d0052fb6:	ee17 3a90 	vmov	r3, s15
d0052fba:	edcd 7a02 	vstr	s15, [sp, #8]
d0052fbe:	eefd 7ae4 	vcvt.s32.f32	s15, s9
d0052fc2:	f8d2 a000 	ldr.w	sl, [r2]
d0052fc6:	3b01      	subs	r3, #1
d0052fc8:	9103      	str	r1, [sp, #12]
d0052fca:	ee17 ba90 	vmov	fp, s15
d0052fce:	428b      	cmp	r3, r1
d0052fd0:	bfa8      	it	ge
d0052fd2:	460b      	movge	r3, r1
d0052fd4:	45d3      	cmp	fp, sl
d0052fd6:	bfb8      	it	lt
d0052fd8:	46d3      	movlt	fp, sl
d0052fda:	455b      	cmp	r3, fp
d0052fdc:	f6ff af77 	blt.w	d0052ece <fillTriangleFlat+0x306>
d0052fe0:	eeb6 2a00 	vmov.f32	s4, #96	; 0x3f000000  0.5
d0052fe4:	ee07 ba90 	vmov	s15, fp
d0052fe8:	49c6      	ldr	r1, [pc, #792]	; (d0053304 <fillTriangleFlat+0x73c>)
d0052fea:	ebaa 120a 	sub.w	r2, sl, sl, lsl #4
d0052fee:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0052ff2:	1c58      	adds	r0, r3, #1
d0052ff4:	ee72 3a64 	vsub.f32	s7, s4, s9
d0052ff8:	680b      	ldr	r3, [r1, #0]
d0052ffa:	eeb0 ba46 	vmov.f32	s22, s12
d0052ffe:	f8cd a020 	str.w	sl, [sp, #32]
d0053002:	eeb0 da48 	vmov.f32	s26, s16
d0053006:	9305      	str	r3, [sp, #20]
d0053008:	ee77 7aa3 	vadd.f32	s15, s15, s7
d005300c:	0153      	lsls	r3, r2, #5
d005300e:	eef0 ca47 	vmov.f32	s25, s14
d0053012:	eddf dabd 	vldr	s27, [pc, #756]	; d0053308 <fillTriangleFlat+0x740>
d0053016:	eef0 aa46 	vmov.f32	s21, s12
d005301a:	eddf 2abf 	vldr	s5, [pc, #764]	; d0053318 <fillTriangleFlat+0x750>
d005301e:	eeb0 ca48 	vmov.f32	s24, s16
d0053022:	eddf 1aba 	vldr	s3, [pc, #744]	; d005330c <fillTriangleFlat+0x744>
d0053026:	eef0 ba47 	vmov.f32	s23, s14
d005302a:	4682      	mov	sl, r0
d005302c:	eea0 baa7 	vfma.f32	s22, s1, s15
d0053030:	9306      	str	r3, [sp, #24]
d0053032:	eea8 daa7 	vfma.f32	s26, s17, s15
d0053036:	edcd 6a07 	vstr	s13, [sp, #28]
d005303a:	eee9 ca27 	vfma.f32	s25, s18, s15
d005303e:	ed8d 4a09 	vstr	s8, [sp, #36]	; 0x24
d0053042:	eee7 aa8a 	vfma.f32	s21, s15, s20
d0053046:	ed8d 7a0a 	vstr	s14, [sp, #40]	; 0x28
d005304a:	eea7 caa9 	vfma.f32	s24, s15, s19
d005304e:	ed8d 8a0b 	vstr	s16, [sp, #44]	; 0x2c
d0053052:	eee7 baae 	vfma.f32	s23, s15, s29
d0053056:	eeb0 ea69 	vmov.f32	s28, s19
d005305a:	e034      	b.n	d00530c6 <fillTriangleFlat+0x4fe>
d005305c:	eef0 3a6c 	vmov.f32	s7, s25
d0053060:	eeb0 4a4d 	vmov.f32	s8, s26
d0053064:	eef0 7a4b 	vmov.f32	s15, s22
d0053068:	eef0 6a6b 	vmov.f32	s13, s23
d005306c:	eeb0 7a4c 	vmov.f32	s14, s24
d0053070:	eeb0 1a6a 	vmov.f32	s2, s21
d0053074:	feba 8a67 	vrintp.f32	s16, s15
d0053078:	eebd 8ac8 	vcvt.s32.f32	s16, s16
d005307c:	fefa 9a41 	vrintp.f32	s19, s2
d0053080:	f240 13df 	movw	r3, #479	; 0x1df
d0053084:	ee18 ca10 	vmov	ip, s16
d0053088:	eebd 8ae9 	vcvt.s32.f32	s16, s19
d005308c:	f10c 3cff 	add.w	ip, ip, #4294967295	; 0xffffffff
d0053090:	ee18 5a10 	vmov	r5, s16
d0053094:	459c      	cmp	ip, r3
d0053096:	ea25 75e5 	bic.w	r5, r5, r5, asr #31
d005309a:	bfa8      	it	ge
d005309c:	469c      	movge	ip, r3
d005309e:	45ac      	cmp	ip, r5
d00530a0:	f280 80f8 	bge.w	d0053294 <fillTriangleFlat+0x6cc>
d00530a4:	f10b 0b01 	add.w	fp, fp, #1
d00530a8:	ee3b ba20 	vadd.f32	s22, s22, s1
d00530ac:	ee3d da28 	vadd.f32	s26, s26, s17
d00530b0:	45d3      	cmp	fp, sl
d00530b2:	ee7c ca89 	vadd.f32	s25, s25, s18
d00530b6:	ee7a aa8a 	vadd.f32	s21, s21, s20
d00530ba:	ee3c ca0e 	vadd.f32	s24, s24, s28
d00530be:	ee7b baae 	vadd.f32	s23, s23, s29
d00530c2:	f43f aefa 	beq.w	d0052eba <fillTriangleFlat+0x2f2>
d00530c6:	eeb4 baea 	vcmpe.f32	s22, s21
d00530ca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00530ce:	dcc5      	bgt.n	d005305c <fillTriangleFlat+0x494>
d00530d0:	eef0 3a6b 	vmov.f32	s7, s23
d00530d4:	eeb0 4a4c 	vmov.f32	s8, s24
d00530d8:	eef0 7a6a 	vmov.f32	s15, s21
d00530dc:	eef0 6a6c 	vmov.f32	s13, s25
d00530e0:	eeb0 7a4d 	vmov.f32	s14, s26
d00530e4:	eeb0 1a4b 	vmov.f32	s2, s22
d00530e8:	e7c4      	b.n	d0053074 <fillTriangleFlat+0x4ac>
d00530ea:	eeb0 1a47 	vmov.f32	s2, s14
d00530ee:	eef0 1a48 	vmov.f32	s3, s16
d00530f2:	eeb0 2a64 	vmov.f32	s4, s9
d00530f6:	eeb0 5a46 	vmov.f32	s10, s12
d00530fa:	eeb0 7a63 	vmov.f32	s14, s7
d00530fe:	eeb0 8a62 	vmov.f32	s16, s5
d0053102:	eef0 4a66 	vmov.f32	s9, s13
d0053106:	eeb0 6a67 	vmov.f32	s12, s15
d005310a:	eef0 3a41 	vmov.f32	s7, s2
d005310e:	eef0 2a61 	vmov.f32	s5, s3
d0053112:	eef0 6a42 	vmov.f32	s13, s4
d0053116:	eef0 7a45 	vmov.f32	s15, s10
d005311a:	e5cf      	b.n	d0052cbc <fillTriangleFlat+0xf4>
d005311c:	eeb0 1a47 	vmov.f32	s2, s14
d0053120:	eef0 1a48 	vmov.f32	s3, s16
d0053124:	eeb0 2a64 	vmov.f32	s4, s9
d0053128:	eeb0 5a46 	vmov.f32	s10, s12
d005312c:	eeb0 7a65 	vmov.f32	s14, s11
d0053130:	eeb0 8a40 	vmov.f32	s16, s0
d0053134:	eef0 4a43 	vmov.f32	s9, s6
d0053138:	eeb0 6a44 	vmov.f32	s12, s8
d005313c:	eef0 5a41 	vmov.f32	s11, s2
d0053140:	eeb0 0a61 	vmov.f32	s0, s3
d0053144:	eeb0 3a42 	vmov.f32	s6, s4
d0053148:	eeb0 4a45 	vmov.f32	s8, s10
d005314c:	e5b6      	b.n	d0052cbc <fillTriangleFlat+0xf4>
d005314e:	ee76 6ae3 	vsub.f32	s13, s13, s7
d0053152:	eef4 6ae9 	vcmpe.f32	s13, s19
d0053156:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005315a:	f340 8156 	ble.w	d005340a <fillTriangleFlat+0x842>
d005315e:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0053162:	ee72 2ae4 	vsub.f32	s5, s5, s9
d0053166:	ee7a aac3 	vsub.f32	s21, s21, s6
d005316a:	eec7 baa6 	vdiv.f32	s23, s15, s13
d005316e:	ee07 5a90 	vmov	s15, r5
d0053172:	ee71 3ae3 	vsub.f32	s7, s3, s7
d0053176:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005317a:	ee77 3aa3 	vadd.f32	s7, s15, s7
d005317e:	ee62 2aab 	vmul.f32	s5, s5, s23
d0053182:	ee6a aaab 	vmul.f32	s21, s21, s23
d0053186:	eee3 4aa2 	vfma.f32	s9, s7, s5
d005318a:	eea3 3aaa 	vfma.f32	s6, s7, s21
d005318e:	ebcb 190b 	rsb	r9, fp, fp, lsl #4
d0053192:	4b5f      	ldr	r3, [pc, #380]	; (d0053310 <fillTriangleFlat+0x748>)
d0053194:	eb05 0885 	add.w	r8, r5, r5, lsl #2
d0053198:	9a02      	ldr	r2, [sp, #8]
d005319a:	681b      	ldr	r3, [r3, #0]
d005319c:	eb02 1949 	add.w	r9, r2, r9, lsl #5
d00531a0:	eb0b 1888 	add.w	r8, fp, r8, lsl #6
d00531a4:	44a9      	add	r9, r5
d00531a6:	4498      	add	r8, r3
d00531a8:	9b01      	ldr	r3, [sp, #4]
d00531aa:	eb03 0949 	add.w	r9, r3, r9, lsl #1
d00531ae:	e011      	b.n	d00531d4 <fillTriangleFlat+0x60c>
d00531b0:	ee07 1a90 	vmov	s15, r1
d00531b4:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d00531b8:	eb09 0941 	add.w	r9, r9, r1, lsl #1
d00531bc:	440d      	add	r5, r1
d00531be:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00531c2:	eb08 1883 	add.w	r8, r8, r3, lsl #6
d00531c6:	eee7 4aa2 	vfma.f32	s9, s15, s5
d00531ca:	eea7 3aaa 	vfma.f32	s6, s15, s21
d00531ce:	45ac      	cmp	ip, r5
d00531d0:	f6ff ae51 	blt.w	d0052e76 <fillTriangleFlat+0x2ae>
d00531d4:	ebac 0605 	sub.w	r6, ip, r5
d00531d8:	eef4 4aca 	vcmpe.f32	s9, s20
d00531dc:	1c71      	adds	r1, r6, #1
d00531de:	2930      	cmp	r1, #48	; 0x30
d00531e0:	bfa8      	it	ge
d00531e2:	2130      	movge	r1, #48	; 0x30
d00531e4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00531e8:	d9e2      	bls.n	d00531b0 <fillTriangleFlat+0x5e8>
d00531ea:	2e00      	cmp	r6, #0
d00531ec:	eec3 6a24 	vdiv.f32	s13, s6, s9
d00531f0:	dd4c      	ble.n	d005328c <fillTriangleFlat+0x6c4>
d00531f2:	1e4b      	subs	r3, r1, #1
d00531f4:	ee07 3a90 	vmov	s15, r3
d00531f8:	eef0 3a64 	vmov.f32	s7, s9
d00531fc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053200:	eee7 3aa2 	vfma.f32	s7, s15, s5
d0053204:	eef4 3aca 	vcmpe.f32	s7, s20
d0053208:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005320c:	dd3f      	ble.n	d005328e <fillTriangleFlat+0x6c6>
d005320e:	eeb0 ca43 	vmov.f32	s24, s6
d0053212:	eea7 caaa 	vfma.f32	s24, s15, s21
d0053216:	eecc ba23 	vdiv.f32	s23, s24, s7
d005321a:	ee7b bae6 	vsub.f32	s23, s23, s13
d005321e:	eecb 3aa7 	vdiv.f32	s7, s23, s15
d0053222:	f1a9 0002 	sub.w	r0, r9, #2
d0053226:	2300      	movs	r3, #0
d0053228:	fec6 7a82 	vmaxnm.f32	s15, s13, s4
d005322c:	fec7 7ac1 	vminnm.f32	s15, s15, s2
d0053230:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0053234:	f830 4f02 	ldrh.w	r4, [r0, #2]!
d0053238:	3301      	adds	r3, #1
d005323a:	ee77 7aa1 	vadd.f32	s15, s15, s3
d005323e:	ea4f 1a82 	mov.w	sl, r2, lsl #6
d0053242:	ee76 6aa3 	vadd.f32	s13, s13, s7
d0053246:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d005324a:	ee17 2a90 	vmov	r2, s15
d005324e:	b292      	uxth	r2, r2
d0053250:	4294      	cmp	r4, r2
d0053252:	d902      	bls.n	d005325a <fillTriangleFlat+0x692>
d0053254:	8002      	strh	r2, [r0, #0]
d0053256:	f808 700a 	strb.w	r7, [r8, sl]
d005325a:	4299      	cmp	r1, r3
d005325c:	dce4      	bgt.n	d0053228 <fillTriangleFlat+0x660>
d005325e:	2e00      	cmp	r6, #0
d0053260:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0053264:	ea4f 0241 	mov.w	r2, r1, lsl #1
d0053268:	ea4f 1383 	mov.w	r3, r3, lsl #6
d005326c:	bfbc      	itt	lt
d005326e:	2202      	movlt	r2, #2
d0053270:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0053274:	4491      	add	r9, r2
d0053276:	4498      	add	r8, r3
d0053278:	ee07 1a90 	vmov	s15, r1
d005327c:	440d      	add	r5, r1
d005327e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053282:	eee7 4aa2 	vfma.f32	s9, s15, s5
d0053286:	eea7 3aaa 	vfma.f32	s6, s15, s21
d005328a:	e7a0      	b.n	d00531ce <fillTriangleFlat+0x606>
d005328c:	d1f4      	bne.n	d0053278 <fillTriangleFlat+0x6b0>
d005328e:	eef0 3a42 	vmov.f32	s7, s4
d0053292:	e7c6      	b.n	d0053222 <fillTriangleFlat+0x65a>
d0053294:	ee77 7ac1 	vsub.f32	s15, s15, s2
d0053298:	ed9f 8a1e 	vldr	s16, [pc, #120]	; d0053314 <fillTriangleFlat+0x74c>
d005329c:	eef4 7ac8 	vcmpe.f32	s15, s16
d00532a0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00532a4:	f340 80ac 	ble.w	d0053400 <fillTriangleFlat+0x838>
d00532a8:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d00532ac:	ee34 4a47 	vsub.f32	s8, s8, s14
d00532b0:	ee73 3ae6 	vsub.f32	s7, s7, s13
d00532b4:	ee89 8aa7 	vdiv.f32	s16, s19, s15
d00532b8:	ee07 5a90 	vmov	s15, r5
d00532bc:	ee32 1a41 	vsub.f32	s2, s4, s2
d00532c0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00532c4:	ee37 1a81 	vadd.f32	s2, s15, s2
d00532c8:	ee24 4a08 	vmul.f32	s8, s8, s16
d00532cc:	ee63 3a88 	vmul.f32	s7, s7, s16
d00532d0:	eea1 7a04 	vfma.f32	s14, s2, s8
d00532d4:	eee1 6a23 	vfma.f32	s13, s2, s7
d00532d8:	ebcb 180b 	rsb	r8, fp, fp, lsl #4
d00532dc:	4b0c      	ldr	r3, [pc, #48]	; (d0053310 <fillTriangleFlat+0x748>)
d00532de:	eb05 0e85 	add.w	lr, r5, r5, lsl #2
d00532e2:	9a06      	ldr	r2, [sp, #24]
d00532e4:	681b      	ldr	r3, [r3, #0]
d00532e6:	eb02 1848 	add.w	r8, r2, r8, lsl #5
d00532ea:	eb0b 1e8e 	add.w	lr, fp, lr, lsl #6
d00532ee:	44a8      	add	r8, r5
d00532f0:	449e      	add	lr, r3
d00532f2:	9b05      	ldr	r3, [sp, #20]
d00532f4:	eb03 0848 	add.w	r8, r3, r8, lsl #1
d00532f8:	e022      	b.n	d0053340 <fillTriangleFlat+0x778>
d00532fa:	bf00      	nop
d00532fc:	d0090f0c 	.word	0xd0090f0c
d0053300:	d0090f08 	.word	0xd0090f08
d0053304:	d0090f10 	.word	0xd0090f10
d0053308:	33d6bf95 	.word	0x33d6bf95
d005330c:	477fff00 	.word	0x477fff00
d0053310:	d012b284 	.word	0xd012b284
d0053314:	38d1b717 	.word	0x38d1b717
d0053318:	00000000 	.word	0x00000000
d005331c:	ee07 1a90 	vmov	s15, r1
d0053320:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0053324:	eb08 0841 	add.w	r8, r8, r1, lsl #1
d0053328:	440d      	add	r5, r1
d005332a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005332e:	eb0e 1e83 	add.w	lr, lr, r3, lsl #6
d0053332:	eea7 7a84 	vfma.f32	s14, s15, s8
d0053336:	eee7 6aa3 	vfma.f32	s13, s15, s7
d005333a:	4565      	cmp	r5, ip
d005333c:	f73f aeb2 	bgt.w	d00530a4 <fillTriangleFlat+0x4dc>
d0053340:	ebac 0605 	sub.w	r6, ip, r5
d0053344:	eeb4 7aed 	vcmpe.f32	s14, s27
d0053348:	1c71      	adds	r1, r6, #1
d005334a:	2930      	cmp	r1, #48	; 0x30
d005334c:	bfa8      	it	ge
d005334e:	2130      	movge	r1, #48	; 0x30
d0053350:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053354:	d9e2      	bls.n	d005331c <fillTriangleFlat+0x754>
d0053356:	2e00      	cmp	r6, #0
d0053358:	ee86 1a87 	vdiv.f32	s2, s13, s14
d005335c:	dd4c      	ble.n	d00533f8 <fillTriangleFlat+0x830>
d005335e:	1e4b      	subs	r3, r1, #1
d0053360:	ee07 3a90 	vmov	s15, r3
d0053364:	eeb0 8a47 	vmov.f32	s16, s14
d0053368:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005336c:	eea7 8a84 	vfma.f32	s16, s15, s8
d0053370:	eeb4 8aed 	vcmpe.f32	s16, s27
d0053374:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053378:	dd3f      	ble.n	d00533fa <fillTriangleFlat+0x832>
d005337a:	eeb0 fa66 	vmov.f32	s30, s13
d005337e:	eea7 faa3 	vfma.f32	s30, s15, s7
d0053382:	eecf 9a08 	vdiv.f32	s19, s30, s16
d0053386:	ee79 9ac1 	vsub.f32	s19, s19, s2
d005338a:	ee89 8aa7 	vdiv.f32	s16, s19, s15
d005338e:	f1a8 0002 	sub.w	r0, r8, #2
d0053392:	2200      	movs	r2, #0
d0053394:	fec1 7a22 	vmaxnm.f32	s15, s2, s5
d0053398:	fec7 7ae1 	vminnm.f32	s15, s15, s3
d005339c:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d00533a0:	f830 4f02 	ldrh.w	r4, [r0, #2]!
d00533a4:	3201      	adds	r2, #1
d00533a6:	ee77 7a82 	vadd.f32	s15, s15, s4
d00533aa:	ea4f 1983 	mov.w	r9, r3, lsl #6
d00533ae:	ee31 1a08 	vadd.f32	s2, s2, s16
d00533b2:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00533b6:	ee17 3a90 	vmov	r3, s15
d00533ba:	b29b      	uxth	r3, r3
d00533bc:	429c      	cmp	r4, r3
d00533be:	d902      	bls.n	d00533c6 <fillTriangleFlat+0x7fe>
d00533c0:	8003      	strh	r3, [r0, #0]
d00533c2:	f80e 7009 	strb.w	r7, [lr, r9]
d00533c6:	428a      	cmp	r2, r1
d00533c8:	dbe4      	blt.n	d0053394 <fillTriangleFlat+0x7cc>
d00533ca:	2e00      	cmp	r6, #0
d00533cc:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d00533d0:	ea4f 0241 	mov.w	r2, r1, lsl #1
d00533d4:	ea4f 1383 	mov.w	r3, r3, lsl #6
d00533d8:	bfbc      	itt	lt
d00533da:	2202      	movlt	r2, #2
d00533dc:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d00533e0:	4490      	add	r8, r2
d00533e2:	449e      	add	lr, r3
d00533e4:	ee07 1a90 	vmov	s15, r1
d00533e8:	440d      	add	r5, r1
d00533ea:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00533ee:	eea7 7a84 	vfma.f32	s14, s15, s8
d00533f2:	eee7 6aa3 	vfma.f32	s13, s15, s7
d00533f6:	e7a0      	b.n	d005333a <fillTriangleFlat+0x772>
d00533f8:	d1f4      	bne.n	d00533e4 <fillTriangleFlat+0x81c>
d00533fa:	eeb0 8a62 	vmov.f32	s16, s5
d00533fe:	e7c6      	b.n	d005338e <fillTriangleFlat+0x7c6>
d0053400:	eef0 3a62 	vmov.f32	s7, s5
d0053404:	eeb0 4a62 	vmov.f32	s8, s5
d0053408:	e766      	b.n	d00532d8 <fillTriangleFlat+0x710>
d005340a:	eef0 aa42 	vmov.f32	s21, s4
d005340e:	eef0 2a42 	vmov.f32	s5, s4
d0053412:	e6bc      	b.n	d005318e <fillTriangleFlat+0x5c6>
d0053414:	ed1f 5a40 	vldr	s10, [pc, #-256]	; d0053318 <fillTriangleFlat+0x750>
d0053418:	eef0 fa45 	vmov.f32	s31, s10
d005341c:	ed8d 5a04 	vstr	s10, [sp, #16]
d0053420:	e5c4      	b.n	d0052fac <fillTriangleFlat+0x3e4>
d0053422:	ed5f 7a43 	vldr	s15, [pc, #-268]	; d0053318 <fillTriangleFlat+0x750>
d0053426:	eef0 ea67 	vmov.f32	s29, s15
d005342a:	eef0 9a67 	vmov.f32	s19, s15
d005342e:	eeb0 aa67 	vmov.f32	s20, s15
d0053432:	e5bb      	b.n	d0052fac <fillTriangleFlat+0x3e4>

d0053434 <fillTriangleDitherBayer>:
d0053434:	eddf 7ae2 	vldr	s15, [pc, #904]	; d00537c0 <fillTriangleDitherBayer+0x38c>
d0053438:	eef4 0ae7 	vcmpe.f32	s1, s15
d005343c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0053440:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053444:	eeb4 1ae7 	vcmpe.f32	s2, s15
d0053448:	ed2d 8b10 	vpush	{d8-d15}
d005344c:	b095      	sub	sp, #84	; 0x54
d005344e:	9202      	str	r2, [sp, #8]
d0053450:	bf94      	ite	ls
d0053452:	2201      	movls	r2, #1
d0053454:	2200      	movhi	r2, #0
d0053456:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005345a:	9303      	str	r3, [sp, #12]
d005345c:	f8bd 40c0 	ldrh.w	r4, [sp, #192]	; 0xc0
d0053460:	bf98      	it	ls
d0053462:	f042 0201 	orrls.w	r2, r2, #1
d0053466:	f89d 30cc 	ldrb.w	r3, [sp, #204]	; 0xcc
d005346a:	e9cd 0100 	strd	r0, r1, [sp]
d005346e:	f8bd 00c4 	ldrh.w	r0, [sp, #196]	; 0xc4
d0053472:	f8bd 10c8 	ldrh.w	r1, [sp, #200]	; 0xc8
d0053476:	2a00      	cmp	r2, #0
d0053478:	f040 819d 	bne.w	d00537b6 <fillTriangleDitherBayer+0x382>
d005347c:	eeb4 0a67 	vcmp.f32	s0, s15
d0053480:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053484:	f240 8197 	bls.w	d00537b6 <fillTriangleDitherBayer+0x382>
d0053488:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d005348c:	eddf 6ad2 	vldr	s13, [pc, #840]	; d00537d8 <fillTriangleDitherBayer+0x3a4>
d0053490:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d0053494:	fec1 1aa6 	vmaxnm.f32	s3, s3, s13
d0053498:	ee06 4a90 	vmov	s13, r4
d005349c:	ee87 8a80 	vdiv.f32	s16, s15, s0
d00534a0:	fec1 1ac7 	vminnm.f32	s3, s3, s14
d00534a4:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d00534a8:	ee87 7a81 	vdiv.f32	s14, s15, s2
d00534ac:	eefd 7ae1 	vcvt.s32.f32	s15, s3
d00534b0:	eef8 5a66 	vcvt.f32.u32	s11, s13
d00534b4:	ee17 2a90 	vmov	r2, s15
d00534b8:	ee07 0a90 	vmov	s15, r0
d00534bc:	ee65 5a88 	vmul.f32	s11, s11, s16
d00534c0:	eeb8 4a67 	vcvt.f32.u32	s8, s15
d00534c4:	ee07 1a90 	vmov	s15, r1
d00534c8:	1c51      	adds	r1, r2, #1
d00534ca:	eef8 7a67 	vcvt.f32.u32	s15, s15
d00534ce:	2905      	cmp	r1, #5
d00534d0:	ee24 4a00 	vmul.f32	s8, s8, s0
d00534d4:	bfa8      	it	ge
d00534d6:	2105      	movge	r1, #5
d00534d8:	2a04      	cmp	r2, #4
d00534da:	ee27 6a87 	vmul.f32	s12, s15, s14
d00534de:	f300 84ad 	bgt.w	d0053e3c <fillTriangleDitherBayer+0xa08>
d00534e2:	f003 030f 	and.w	r3, r3, #15
d00534e6:	2a03      	cmp	r2, #3
d00534e8:	f103 0320 	add.w	r3, r3, #32
d00534ec:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d00534f0:	fa5f fb80 	uxtb.w	fp, r0
d00534f4:	f300 84a4 	bgt.w	d0053e40 <fillTriangleDitherBayer+0xa0c>
d00534f8:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d00534fc:	b2db      	uxtb	r3, r3
d00534fe:	9304      	str	r3, [sp, #16]
d0053500:	eddd 7a01 	vldr	s15, [sp, #4]
d0053504:	eeb8 3ae7 	vcvt.f32.s32	s6, s15
d0053508:	eddd 7a03 	vldr	s15, [sp, #12]
d005350c:	eeb8 2ae7 	vcvt.f32.s32	s4, s15
d0053510:	eddd 7a00 	vldr	s15, [sp]
d0053514:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d0053518:	eddd 7a02 	vldr	s15, [sp, #8]
d005351c:	eeb4 3ac2 	vcmpe.f32	s6, s4
d0053520:	eef8 2ae7 	vcvt.f32.s32	s5, s15
d0053524:	eddd 7a2e 	vldr	s15, [sp, #184]	; 0xb8
d0053528:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005352c:	eef8 3ae7 	vcvt.f32.s32	s7, s15
d0053530:	eddd 7a2f 	vldr	s15, [sp, #188]	; 0xbc
d0053534:	eeb8 5ae7 	vcvt.f32.s32	s10, s15
d0053538:	f300 8150 	bgt.w	d00537dc <fillTriangleDitherBayer+0x3a8>
d005353c:	eeb4 3ac5 	vcmpe.f32	s6, s10
d0053540:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053544:	f300 825a 	bgt.w	d00539fc <fillTriangleDitherBayer+0x5c8>
d0053548:	eeb4 5ac2 	vcmpe.f32	s10, s4
d005354c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053550:	d517      	bpl.n	d0053582 <fillTriangleDitherBayer+0x14e>
d0053552:	eef0 0a44 	vmov.f32	s1, s8
d0053556:	eeb0 1a40 	vmov.f32	s2, s0
d005355a:	eef0 6a42 	vmov.f32	s13, s4
d005355e:	eef0 7a62 	vmov.f32	s15, s5
d0053562:	eeb0 4a46 	vmov.f32	s8, s12
d0053566:	eeb0 0a47 	vmov.f32	s0, s14
d005356a:	eeb0 2a45 	vmov.f32	s4, s10
d005356e:	eef0 2a63 	vmov.f32	s5, s7
d0053572:	eeb0 6a60 	vmov.f32	s12, s1
d0053576:	eeb0 7a41 	vmov.f32	s14, s2
d005357a:	eeb0 5a66 	vmov.f32	s10, s13
d005357e:	eef0 3a67 	vmov.f32	s7, s15
d0053582:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0053586:	ee73 6a27 	vadd.f32	s13, s6, s15
d005358a:	ee75 7a27 	vadd.f32	s15, s10, s15
d005358e:	eefd 6ae6 	vcvt.s32.f32	s13, s13
d0053592:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0053596:	ee16 3a90 	vmov	r3, s13
d005359a:	ee17 1a90 	vmov	r1, s15
d005359e:	428b      	cmp	r3, r1
d00535a0:	f000 8109 	beq.w	d00537b6 <fillTriangleDitherBayer+0x382>
d00535a4:	ee75 7a43 	vsub.f32	s15, s10, s6
d00535a8:	eddf 6a85 	vldr	s13, [pc, #532]	; d00537c0 <fillTriangleDitherBayer+0x38c>
d00535ac:	eef4 7ae6 	vcmpe.f32	s15, s13
d00535b0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00535b4:	f240 80ff 	bls.w	d00537b6 <fillTriangleDitherBayer+0x382>
d00535b8:	eeb7 aa00 	vmov.f32	s20, #112	; 0x3f800000  1.0
d00535bc:	ee72 9a43 	vsub.f32	s19, s4, s6
d00535c0:	ee73 0ae4 	vsub.f32	s1, s7, s9
d00535c4:	ee8a 1a27 	vdiv.f32	s2, s20, s15
d00535c8:	eef4 9ae6 	vcmpe.f32	s19, s13
d00535cc:	ee77 8a48 	vsub.f32	s17, s14, s16
d00535d0:	ee36 9a65 	vsub.f32	s18, s12, s11
d00535d4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00535d8:	ee60 0a81 	vmul.f32	s1, s1, s2
d00535dc:	ee68 8a81 	vmul.f32	s17, s17, s2
d00535e0:	ee29 9a01 	vmul.f32	s18, s18, s2
d00535e4:	f300 8119 	bgt.w	d005381a <fillTriangleDitherBayer+0x3e6>
d00535e8:	ee07 2a90 	vmov	s15, r2
d00535ec:	ee35 1a42 	vsub.f32	s2, s10, s4
d00535f0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00535f4:	eeb4 1ae6 	vcmpe.f32	s2, s13
d00535f8:	ed8d 1a08 	vstr	s2, [sp, #32]
d00535fc:	ee71 1ae7 	vsub.f32	s3, s3, s15
d0053600:	eef0 7a61 	vmov.f32	s15, s3
d0053604:	eefe 7ace 	vcvt.s32.f32	s15, s15, #4
d0053608:	ee17 3a90 	vmov	r3, s15
d005360c:	f383 0204 	usat	r2, #4, r3
d0053610:	9202      	str	r2, [sp, #8]
d0053612:	9a04      	ldr	r2, [sp, #16]
d0053614:	4593      	cmp	fp, r2
d0053616:	bf18      	it	ne
d0053618:	2b00      	cmpne	r3, #0
d005361a:	bfd4      	ite	le
d005361c:	2301      	movle	r3, #1
d005361e:	2300      	movgt	r3, #0
d0053620:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053624:	9300      	str	r3, [sp, #0]
d0053626:	f340 80c6 	ble.w	d00537b6 <fillTriangleDitherBayer+0x382>
d005362a:	ed9f ea6b 	vldr	s28, [pc, #428]	; d00537d8 <fillTriangleDitherBayer+0x3a4>
d005362e:	eeb0 aa4e 	vmov.f32	s20, s28
d0053632:	eeb0 ca4e 	vmov.f32	s24, s28
d0053636:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d005363a:	eddd 6a08 	vldr	s13, [sp, #32]
d005363e:	eddf 1a60 	vldr	s3, [pc, #384]	; d00537c0 <fillTriangleDitherBayer+0x38c>
d0053642:	ee73 3ae2 	vsub.f32	s7, s7, s5
d0053646:	ee37 7a40 	vsub.f32	s14, s14, s0
d005364a:	eec7 6aa6 	vdiv.f32	s13, s15, s13
d005364e:	eef4 9ae1 	vcmpe.f32	s19, s3
d0053652:	ee76 7a44 	vsub.f32	s15, s12, s8
d0053656:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005365a:	ee23 6aa6 	vmul.f32	s12, s7, s13
d005365e:	ee27 7a26 	vmul.f32	s14, s14, s13
d0053662:	ee67 faa6 	vmul.f32	s31, s15, s13
d0053666:	ed8d 6a0d 	vstr	s12, [sp, #52]	; 0x34
d005366a:	ed8d 7a0e 	vstr	s14, [sp, #56]	; 0x38
d005366e:	f300 810d 	bgt.w	d005388c <fillTriangleDitherBayer+0x458>
d0053672:	4a54      	ldr	r2, [pc, #336]	; (d00537c4 <fillTriangleDitherBayer+0x390>)
d0053674:	eefd 7ac2 	vcvt.s32.f32	s15, s4
d0053678:	4b53      	ldr	r3, [pc, #332]	; (d00537c8 <fillTriangleDitherBayer+0x394>)
d005367a:	6812      	ldr	r2, [r2, #0]
d005367c:	681b      	ldr	r3, [r3, #0]
d005367e:	edcd 7a0b 	vstr	s15, [sp, #44]	; 0x2c
d0053682:	920a      	str	r2, [sp, #40]	; 0x28
d0053684:	930c      	str	r3, [sp, #48]	; 0x30
d0053686:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d005368a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d005368c:	980a      	ldr	r0, [sp, #40]	; 0x28
d005368e:	990c      	ldr	r1, [sp, #48]	; 0x30
d0053690:	ee17 3a90 	vmov	r3, s15
d0053694:	4282      	cmp	r2, r0
d0053696:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
d005369a:	bfb8      	it	lt
d005369c:	4602      	movlt	r2, r0
d005369e:	428b      	cmp	r3, r1
d00536a0:	9201      	str	r2, [sp, #4]
d00536a2:	bfa8      	it	ge
d00536a4:	460b      	movge	r3, r1
d00536a6:	4293      	cmp	r3, r2
d00536a8:	f2c0 8085 	blt.w	d00537b6 <fillTriangleDitherBayer+0x382>
d00536ac:	ee07 2a90 	vmov	s15, r2
d00536b0:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d00536b4:	3301      	adds	r3, #1
d00536b6:	eba0 1200 	sub.w	r2, r0, r0, lsl #4
d00536ba:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00536be:	4943      	ldr	r1, [pc, #268]	; (d00537cc <fillTriangleDitherBayer+0x398>)
d00536c0:	0152      	lsls	r2, r2, #5
d00536c2:	ed9d aa0d 	vldr	s20, [sp, #52]	; 0x34
d00536c6:	eddd aa0e 	vldr	s21, [sp, #56]	; 0x38
d00536ca:	ee77 7a87 	vadd.f32	s15, s15, s14
d00536ce:	9307      	str	r3, [sp, #28]
d00536d0:	680b      	ldr	r3, [r1, #0]
d00536d2:	ed9f 1a3b 	vldr	s2, [pc, #236]	; d00537c0 <fillTriangleDitherBayer+0x38c>
d00536d6:	ee37 3ac3 	vsub.f32	s6, s15, s6
d00536da:	eddf 1a3d 	vldr	s3, [pc, #244]	; d00537d0 <fillTriangleDitherBayer+0x39c>
d00536de:	ee37 2ac2 	vsub.f32	s4, s15, s4
d00536e2:	ed9f 6a3d 	vldr	s12, [pc, #244]	; d00537d8 <fillTriangleDitherBayer+0x3a4>
d00536e6:	eddf 3a3b 	vldr	s7, [pc, #236]	; d00537d4 <fillTriangleDitherBayer+0x3a0>
d00536ea:	eee0 4a83 	vfma.f32	s9, s1, s6
d00536ee:	920a      	str	r2, [sp, #40]	; 0x28
d00536f0:	eea8 8a83 	vfma.f32	s16, s17, s6
d00536f4:	9309      	str	r3, [sp, #36]	; 0x24
d00536f6:	eee9 5a03 	vfma.f32	s11, s18, s6
d00536fa:	eee2 2a0a 	vfma.f32	s5, s4, s20
d00536fe:	eeaa 0a82 	vfma.f32	s0, s21, s4
d0053702:	eeaf 4a82 	vfma.f32	s8, s31, s4
d0053706:	e034      	b.n	d0053772 <fillTriangleDitherBayer+0x33e>
d0053708:	eeb0 ba65 	vmov.f32	s22, s11
d005370c:	eef0 9a48 	vmov.f32	s19, s16
d0053710:	eeb0 7a64 	vmov.f32	s14, s9
d0053714:	eeb0 2a44 	vmov.f32	s4, s8
d0053718:	eeb0 3a40 	vmov.f32	s6, s0
d005371c:	eef0 6a62 	vmov.f32	s13, s5
d0053720:	fefa 7a47 	vrintp.f32	s15, s14
d0053724:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0053728:	f240 13df 	movw	r3, #479	; 0x1df
d005372c:	ee17 7a90 	vmov	r7, s15
d0053730:	fefa 7a66 	vrintp.f32	s15, s13
d0053734:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0053738:	3f01      	subs	r7, #1
d005373a:	ee17 5a90 	vmov	r5, s15
d005373e:	429f      	cmp	r7, r3
d0053740:	ea25 75e5 	bic.w	r5, r5, r5, asr #31
d0053744:	bfa8      	it	ge
d0053746:	461f      	movge	r7, r3
d0053748:	42af      	cmp	r7, r5
d005374a:	f280 8170 	bge.w	d0053a2e <fillTriangleDitherBayer+0x5fa>
d005374e:	9b01      	ldr	r3, [sp, #4]
d0053750:	ee74 4aa0 	vadd.f32	s9, s9, s1
d0053754:	9a07      	ldr	r2, [sp, #28]
d0053756:	ee38 8a28 	vadd.f32	s16, s16, s17
d005375a:	3301      	adds	r3, #1
d005375c:	ee75 5a89 	vadd.f32	s11, s11, s18
d0053760:	ee72 2a8a 	vadd.f32	s5, s5, s20
d0053764:	4293      	cmp	r3, r2
d0053766:	ee30 0a2a 	vadd.f32	s0, s0, s21
d005376a:	ee34 4a2f 	vadd.f32	s8, s8, s31
d005376e:	9301      	str	r3, [sp, #4]
d0053770:	d021      	beq.n	d00537b6 <fillTriangleDitherBayer+0x382>
d0053772:	eef4 4ae2 	vcmpe.f32	s9, s5
d0053776:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005377a:	dcc5      	bgt.n	d0053708 <fillTriangleDitherBayer+0x2d4>
d005377c:	eeb0 ba44 	vmov.f32	s22, s8
d0053780:	eef0 9a40 	vmov.f32	s19, s0
d0053784:	eeb0 7a62 	vmov.f32	s14, s5
d0053788:	eeb0 2a65 	vmov.f32	s4, s11
d005378c:	eeb0 3a48 	vmov.f32	s6, s16
d0053790:	eef0 6a64 	vmov.f32	s13, s9
d0053794:	e7c4      	b.n	d0053720 <fillTriangleDitherBayer+0x2ec>
d0053796:	ed9d 5a11 	vldr	s10, [sp, #68]	; 0x44
d005379a:	eddd 4a12 	vldr	s9, [sp, #72]	; 0x48
d005379e:	eddd fa13 	vldr	s31, [sp, #76]	; 0x4c
d00537a2:	eddf 7a07 	vldr	s15, [pc, #28]	; d00537c0 <fillTriangleDitherBayer+0x38c>
d00537a6:	ed9d 7a08 	vldr	s14, [sp, #32]
d00537aa:	eeb4 7ae7 	vcmpe.f32	s14, s15
d00537ae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00537b2:	f73f af68 	bgt.w	d0053686 <fillTriangleDitherBayer+0x252>
d00537b6:	b015      	add	sp, #84	; 0x54
d00537b8:	ecbd 8b10 	vpop	{d8-d15}
d00537bc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00537c0:	38d1b717 	.word	0x38d1b717
d00537c4:	d0090f08 	.word	0xd0090f08
d00537c8:	d0090f0c 	.word	0xd0090f0c
d00537cc:	d0090f10 	.word	0xd0090f10
d00537d0:	33d6bf95 	.word	0x33d6bf95
d00537d4:	477fff00 	.word	0x477fff00
d00537d8:	00000000 	.word	0x00000000
d00537dc:	eeb4 2ac5 	vcmpe.f32	s4, s10
d00537e0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00537e4:	f340 80f1 	ble.w	d00539ca <fillTriangleDitherBayer+0x596>
d00537e8:	eef0 0a46 	vmov.f32	s1, s12
d00537ec:	eeb0 1a47 	vmov.f32	s2, s14
d00537f0:	eef0 6a45 	vmov.f32	s13, s10
d00537f4:	eef0 7a63 	vmov.f32	s15, s7
d00537f8:	eeb0 6a65 	vmov.f32	s12, s11
d00537fc:	eeb0 7a48 	vmov.f32	s14, s16
d0053800:	eeb0 5a43 	vmov.f32	s10, s6
d0053804:	eef0 3a64 	vmov.f32	s7, s9
d0053808:	eef0 5a60 	vmov.f32	s11, s1
d005380c:	eeb0 8a41 	vmov.f32	s16, s2
d0053810:	eeb0 3a66 	vmov.f32	s6, s13
d0053814:	eef0 4a67 	vmov.f32	s9, s15
d0053818:	e6b3      	b.n	d0053582 <fillTriangleDitherBayer+0x14e>
d005381a:	ee07 2a90 	vmov	s15, r2
d005381e:	ee8a 1a29 	vdiv.f32	s2, s20, s19
d0053822:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053826:	ee72 aae4 	vsub.f32	s21, s5, s9
d005382a:	ee30 aa48 	vsub.f32	s20, s0, s16
d005382e:	ee71 1ae7 	vsub.f32	s3, s3, s15
d0053832:	ee34 ea65 	vsub.f32	s28, s8, s11
d0053836:	eef0 7a61 	vmov.f32	s15, s3
d005383a:	ee75 1a42 	vsub.f32	s3, s10, s4
d005383e:	eefe 7ace 	vcvt.s32.f32	s15, s15, #4
d0053842:	eef4 1ae6 	vcmpe.f32	s3, s13
d0053846:	edcd 1a08 	vstr	s3, [sp, #32]
d005384a:	ee2e ea01 	vmul.f32	s28, s28, s2
d005384e:	ee17 3a90 	vmov	r3, s15
d0053852:	ee6a 7a81 	vmul.f32	s15, s21, s2
d0053856:	f383 0204 	usat	r2, #4, r3
d005385a:	eeb0 ca67 	vmov.f32	s24, s15
d005385e:	9202      	str	r2, [sp, #8]
d0053860:	ee6a 7a01 	vmul.f32	s15, s20, s2
d0053864:	9a04      	ldr	r2, [sp, #16]
d0053866:	4593      	cmp	fp, r2
d0053868:	bf18      	it	ne
d005386a:	2b00      	cmpne	r3, #0
d005386c:	eeb0 aa67 	vmov.f32	s20, s15
d0053870:	bfd4      	ite	le
d0053872:	2301      	movle	r3, #1
d0053874:	2300      	movgt	r3, #0
d0053876:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005387a:	9300      	str	r3, [sp, #0]
d005387c:	f73f aedb 	bgt.w	d0053636 <fillTriangleDitherBayer+0x202>
d0053880:	ed5f fa2b 	vldr	s31, [pc, #-172]	; d00537d8 <fillTriangleDitherBayer+0x3a4>
d0053884:	edcd fa0e 	vstr	s31, [sp, #56]	; 0x38
d0053888:	edcd fa0d 	vstr	s31, [sp, #52]	; 0x34
d005388c:	eefd 7ac2 	vcvt.s32.f32	s15, s4
d0053890:	4bde      	ldr	r3, [pc, #888]	; (d0053c0c <fillTriangleDitherBayer+0x7d8>)
d0053892:	4adf      	ldr	r2, [pc, #892]	; (d0053c10 <fillTriangleDitherBayer+0x7dc>)
d0053894:	6819      	ldr	r1, [r3, #0]
d0053896:	ee17 3a90 	vmov	r3, s15
d005389a:	edcd 7a0b 	vstr	s15, [sp, #44]	; 0x2c
d005389e:	eefd 7ac3 	vcvt.s32.f32	s15, s6
d00538a2:	6810      	ldr	r0, [r2, #0]
d00538a4:	3b01      	subs	r3, #1
d00538a6:	910c      	str	r1, [sp, #48]	; 0x30
d00538a8:	900a      	str	r0, [sp, #40]	; 0x28
d00538aa:	ee17 2a90 	vmov	r2, s15
d00538ae:	428b      	cmp	r3, r1
d00538b0:	bfa8      	it	ge
d00538b2:	460b      	movge	r3, r1
d00538b4:	4282      	cmp	r2, r0
d00538b6:	bfb8      	it	lt
d00538b8:	4602      	movlt	r2, r0
d00538ba:	4293      	cmp	r3, r2
d00538bc:	9201      	str	r2, [sp, #4]
d00538be:	f6ff af70 	blt.w	d00537a2 <fillTriangleDitherBayer+0x36e>
d00538c2:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00538c6:	3301      	adds	r3, #1
d00538c8:	eef0 aa64 	vmov.f32	s21, s9
d00538cc:	49d1      	ldr	r1, [pc, #836]	; (d0053c14 <fillTriangleDitherBayer+0x7e0>)
d00538ce:	eba0 1200 	sub.w	r2, r0, r0, lsl #4
d00538d2:	9307      	str	r3, [sp, #28]
d00538d4:	ee37 7ac3 	vsub.f32	s14, s15, s6
d00538d8:	eddd 7a01 	vldr	s15, [sp, #4]
d00538dc:	680b      	ldr	r3, [r1, #0]
d00538de:	eeb0 ba64 	vmov.f32	s22, s9
d00538e2:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00538e6:	eddf bacc 	vldr	s23, [pc, #816]	; d0053c18 <fillTriangleDitherBayer+0x7e4>
d00538ea:	eef0 da48 	vmov.f32	s27, s16
d00538ee:	930f      	str	r3, [sp, #60]	; 0x3c
d00538f0:	eeb0 da65 	vmov.f32	s26, s11
d00538f4:	0153      	lsls	r3, r2, #5
d00538f6:	ee77 7a87 	vadd.f32	s15, s15, s14
d00538fa:	ed9f 6ac8 	vldr	s12, [pc, #800]	; d0053c1c <fillTriangleDitherBayer+0x7e8>
d00538fe:	eef0 ea4c 	vmov.f32	s29, s24
d0053902:	ed9f 7ac7 	vldr	s14, [pc, #796]	; d0053c20 <fillTriangleDitherBayer+0x7ec>
d0053906:	eef0 ca48 	vmov.f32	s25, s16
d005390a:	9310      	str	r3, [sp, #64]	; 0x40
d005390c:	eee7 aa8c 	vfma.f32	s21, s15, s24
d0053910:	ed8d 5a11 	vstr	s10, [sp, #68]	; 0x44
d0053914:	eeb0 ca65 	vmov.f32	s24, s11
d0053918:	edcd 4a12 	vstr	s9, [sp, #72]	; 0x48
d005391c:	eea0 baa7 	vfma.f32	s22, s1, s15
d0053920:	edcd fa13 	vstr	s31, [sp, #76]	; 0x4c
d0053924:	eee8 daa7 	vfma.f32	s27, s17, s15
d0053928:	eea9 da27 	vfma.f32	s26, s18, s15
d005392c:	eee7 ca8a 	vfma.f32	s25, s15, s20
d0053930:	eea7 ca8e 	vfma.f32	s24, s15, s28
d0053934:	eeb0 fa4a 	vmov.f32	s30, s20
d0053938:	e035      	b.n	d00539a6 <fillTriangleDitherBayer+0x572>
d005393a:	eef0 1a4d 	vmov.f32	s3, s26
d005393e:	eef0 3a6d 	vmov.f32	s7, s27
d0053942:	eef0 7a4b 	vmov.f32	s15, s22
d0053946:	eef0 4a4c 	vmov.f32	s9, s24
d005394a:	eeb0 5a6c 	vmov.f32	s10, s25
d005394e:	eef0 6a6a 	vmov.f32	s13, s21
d0053952:	feba 1a67 	vrintp.f32	s2, s15
d0053956:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d005395a:	fefa 9a66 	vrintp.f32	s19, s13
d005395e:	f240 13df 	movw	r3, #479	; 0x1df
d0053962:	ee11 7a10 	vmov	r7, s2
d0053966:	eebd 1ae9 	vcvt.s32.f32	s2, s19
d005396a:	3f01      	subs	r7, #1
d005396c:	ee11 4a10 	vmov	r4, s2
d0053970:	429f      	cmp	r7, r3
d0053972:	ea24 74e4 	bic.w	r4, r4, r4, asr #31
d0053976:	bfa8      	it	ge
d0053978:	461f      	movge	r7, r3
d005397a:	42a7      	cmp	r7, r4
d005397c:	f280 8168 	bge.w	d0053c50 <fillTriangleDitherBayer+0x81c>
d0053980:	9b01      	ldr	r3, [sp, #4]
d0053982:	ee3b ba20 	vadd.f32	s22, s22, s1
d0053986:	9a07      	ldr	r2, [sp, #28]
d0053988:	ee7d daa8 	vadd.f32	s27, s27, s17
d005398c:	3301      	adds	r3, #1
d005398e:	ee3d da09 	vadd.f32	s26, s26, s18
d0053992:	ee7a aaae 	vadd.f32	s21, s21, s29
d0053996:	4293      	cmp	r3, r2
d0053998:	ee7c ca8f 	vadd.f32	s25, s25, s30
d005399c:	ee3c ca0e 	vadd.f32	s24, s24, s28
d00539a0:	9301      	str	r3, [sp, #4]
d00539a2:	f43f aef8 	beq.w	d0053796 <fillTriangleDitherBayer+0x362>
d00539a6:	eeb4 baea 	vcmpe.f32	s22, s21
d00539aa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00539ae:	dcc4      	bgt.n	d005393a <fillTriangleDitherBayer+0x506>
d00539b0:	eef0 1a4c 	vmov.f32	s3, s24
d00539b4:	eef0 3a6c 	vmov.f32	s7, s25
d00539b8:	eef0 7a6a 	vmov.f32	s15, s21
d00539bc:	eef0 4a4d 	vmov.f32	s9, s26
d00539c0:	eeb0 5a6d 	vmov.f32	s10, s27
d00539c4:	eef0 6a4b 	vmov.f32	s13, s22
d00539c8:	e7c3      	b.n	d0053952 <fillTriangleDitherBayer+0x51e>
d00539ca:	eef0 0a65 	vmov.f32	s1, s11
d00539ce:	eeb0 1a48 	vmov.f32	s2, s16
d00539d2:	eef0 6a43 	vmov.f32	s13, s6
d00539d6:	eef0 7a64 	vmov.f32	s15, s9
d00539da:	eef0 5a44 	vmov.f32	s11, s8
d00539de:	eeb0 8a40 	vmov.f32	s16, s0
d00539e2:	eeb0 3a42 	vmov.f32	s6, s4
d00539e6:	eef0 4a62 	vmov.f32	s9, s5
d00539ea:	eeb0 4a60 	vmov.f32	s8, s1
d00539ee:	eeb0 0a41 	vmov.f32	s0, s2
d00539f2:	eeb0 2a66 	vmov.f32	s4, s13
d00539f6:	eef0 2a67 	vmov.f32	s5, s15
d00539fa:	e5a5      	b.n	d0053548 <fillTriangleDitherBayer+0x114>
d00539fc:	eef0 0a65 	vmov.f32	s1, s11
d0053a00:	eeb0 1a48 	vmov.f32	s2, s16
d0053a04:	eef0 6a43 	vmov.f32	s13, s6
d0053a08:	eef0 7a64 	vmov.f32	s15, s9
d0053a0c:	eef0 5a46 	vmov.f32	s11, s12
d0053a10:	eeb0 8a47 	vmov.f32	s16, s14
d0053a14:	eeb0 3a45 	vmov.f32	s6, s10
d0053a18:	eef0 4a63 	vmov.f32	s9, s7
d0053a1c:	eeb0 6a60 	vmov.f32	s12, s1
d0053a20:	eeb0 7a41 	vmov.f32	s14, s2
d0053a24:	eeb0 5a66 	vmov.f32	s10, s13
d0053a28:	eef0 3a67 	vmov.f32	s7, s15
d0053a2c:	e58c      	b.n	d0053548 <fillTriangleDitherBayer+0x114>
d0053a2e:	ee37 7a66 	vsub.f32	s14, s14, s13
d0053a32:	eeb4 7ac1 	vcmpe.f32	s14, s2
d0053a36:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053a3a:	f340 8205 	ble.w	d0053e48 <fillTriangleDitherBayer+0xa14>
d0053a3e:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0053a42:	ee79 9ac3 	vsub.f32	s19, s19, s6
d0053a46:	ee3b ba42 	vsub.f32	s22, s22, s4
d0053a4a:	ee87 5a87 	vdiv.f32	s10, s15, s14
d0053a4e:	ee07 5a10 	vmov	s14, r5
d0053a52:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0053a56:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0053a5a:	eef8 6ac7 	vcvt.f32.s32	s13, s14
d0053a5e:	ee76 6aa7 	vadd.f32	s13, s13, s15
d0053a62:	ee69 9a85 	vmul.f32	s19, s19, s10
d0053a66:	ee2b ba05 	vmul.f32	s22, s22, s10
d0053a6a:	eea6 3aa9 	vfma.f32	s6, s13, s19
d0053a6e:	eea6 2a8b 	vfma.f32	s4, s13, s22
d0053a72:	9a01      	ldr	r2, [sp, #4]
d0053a74:	eb05 0e85 	add.w	lr, r5, r5, lsl #2
d0053a78:	4b6a      	ldr	r3, [pc, #424]	; (d0053c24 <fillTriangleDitherBayer+0x7f0>)
d0053a7a:	eeb6 5a00 	vmov.f32	s10, #96	; 0x3f000000  0.5
d0053a7e:	ebc2 1a02 	rsb	sl, r2, r2, lsl #4
d0053a82:	990a      	ldr	r1, [sp, #40]	; 0x28
d0053a84:	eb01 1a4a 	add.w	sl, r1, sl, lsl #5
d0053a88:	6819      	ldr	r1, [r3, #0]
d0053a8a:	eb02 138e 	add.w	r3, r2, lr, lsl #6
d0053a8e:	f002 0203 	and.w	r2, r2, #3
d0053a92:	44aa      	add	sl, r5
d0053a94:	eb01 0e03 	add.w	lr, r1, r3
d0053a98:	0093      	lsls	r3, r2, #2
d0053a9a:	9308      	str	r3, [sp, #32]
d0053a9c:	9b09      	ldr	r3, [sp, #36]	; 0x24
d0053a9e:	eb03 0a4a 	add.w	sl, r3, sl, lsl #1
d0053aa2:	eba7 0905 	sub.w	r9, r7, r5
d0053aa6:	eeb4 3ae1 	vcmpe.f32	s6, s3
d0053aaa:	f109 0101 	add.w	r1, r9, #1
d0053aae:	2930      	cmp	r1, #48	; 0x30
d0053ab0:	bfa8      	it	ge
d0053ab2:	2130      	movge	r1, #48	; 0x30
d0053ab4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053ab8:	d971      	bls.n	d0053b9e <fillTriangleDitherBayer+0x76a>
d0053aba:	f1b9 0f00 	cmp.w	r9, #0
d0053abe:	ee82 7a03 	vdiv.f32	s14, s4, s6
d0053ac2:	dd7c      	ble.n	d0053bbe <fillTriangleDitherBayer+0x78a>
d0053ac4:	1e4b      	subs	r3, r1, #1
d0053ac6:	ee07 3a90 	vmov	s15, r3
d0053aca:	eef0 6a43 	vmov.f32	s13, s6
d0053ace:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053ad2:	eee7 6aa9 	vfma.f32	s13, s15, s19
d0053ad6:	eef4 6ae1 	vcmpe.f32	s13, s3
d0053ada:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053ade:	f340 80a7 	ble.w	d0053c30 <fillTriangleDitherBayer+0x7fc>
d0053ae2:	eeb0 ca42 	vmov.f32	s24, s4
d0053ae6:	9b00      	ldr	r3, [sp, #0]
d0053ae8:	eea7 ca8b 	vfma.f32	s24, s15, s22
d0053aec:	eecc ba26 	vdiv.f32	s23, s24, s13
d0053af0:	ee7b bac7 	vsub.f32	s23, s23, s14
d0053af4:	eecb 6aa7 	vdiv.f32	s13, s23, s15
d0053af8:	2b00      	cmp	r3, #0
d0053afa:	d168      	bne.n	d0053bce <fillTriangleDitherBayer+0x79a>
d0053afc:	f005 0303 	and.w	r3, r5, #3
d0053b00:	f8cd 900c 	str.w	r9, [sp, #12]
d0053b04:	f1aa 0602 	sub.w	r6, sl, #2
d0053b08:	9705      	str	r7, [sp, #20]
d0053b0a:	2200      	movs	r2, #0
d0053b0c:	9506      	str	r5, [sp, #24]
d0053b0e:	9f04      	ldr	r7, [sp, #16]
d0053b10:	9d08      	ldr	r5, [sp, #32]
d0053b12:	f8dd 9008 	ldr.w	r9, [sp, #8]
d0053b16:	fec7 7a06 	vmaxnm.f32	s15, s14, s12
d0053b1a:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d0053b1e:	ee77 7a85 	vadd.f32	s15, s15, s10
d0053b22:	4841      	ldr	r0, [pc, #260]	; (d0053c28 <fillTriangleDitherBayer+0x7f4>)
d0053b24:	f836 cf02 	ldrh.w	ip, [r6, #2]!
d0053b28:	eb02 0482 	add.w	r4, r2, r2, lsl #2
d0053b2c:	eb00 0803 	add.w	r8, r0, r3
d0053b30:	3301      	adds	r3, #1
d0053b32:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0053b36:	01a4      	lsls	r4, r4, #6
d0053b38:	ee37 7a26 	vadd.f32	s14, s14, s13
d0053b3c:	f003 0303 	and.w	r3, r3, #3
d0053b40:	3201      	adds	r2, #1
d0053b42:	ee17 0a90 	vmov	r0, s15
d0053b46:	b280      	uxth	r0, r0
d0053b48:	4584      	cmp	ip, r0
d0053b4a:	d908      	bls.n	d0053b5e <fillTriangleDitherBayer+0x72a>
d0053b4c:	8030      	strh	r0, [r6, #0]
d0053b4e:	f818 0005 	ldrb.w	r0, [r8, r5]
d0053b52:	4548      	cmp	r0, r9
d0053b54:	bfb4      	ite	lt
d0053b56:	4638      	movlt	r0, r7
d0053b58:	4658      	movge	r0, fp
d0053b5a:	f80e 0004 	strb.w	r0, [lr, r4]
d0053b5e:	4291      	cmp	r1, r2
d0053b60:	dcd9      	bgt.n	d0053b16 <fillTriangleDitherBayer+0x6e2>
d0053b62:	f8dd 900c 	ldr.w	r9, [sp, #12]
d0053b66:	9f05      	ldr	r7, [sp, #20]
d0053b68:	9d06      	ldr	r5, [sp, #24]
d0053b6a:	f1b9 0f00 	cmp.w	r9, #0
d0053b6e:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0053b72:	ea4f 0241 	mov.w	r2, r1, lsl #1
d0053b76:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0053b7a:	bfbc      	itt	lt
d0053b7c:	2202      	movlt	r2, #2
d0053b7e:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0053b82:	4492      	add	sl, r2
d0053b84:	449e      	add	lr, r3
d0053b86:	ee07 1a90 	vmov	s15, r1
d0053b8a:	440d      	add	r5, r1
d0053b8c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053b90:	eea7 3aa9 	vfma.f32	s6, s15, s19
d0053b94:	eea7 2a8b 	vfma.f32	s4, s15, s22
d0053b98:	42af      	cmp	r7, r5
d0053b9a:	da82      	bge.n	d0053aa2 <fillTriangleDitherBayer+0x66e>
d0053b9c:	e5d7      	b.n	d005374e <fillTriangleDitherBayer+0x31a>
d0053b9e:	ee07 1a90 	vmov	s15, r1
d0053ba2:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0053ba6:	eb0a 0a41 	add.w	sl, sl, r1, lsl #1
d0053baa:	440d      	add	r5, r1
d0053bac:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053bb0:	eb0e 1e83 	add.w	lr, lr, r3, lsl #6
d0053bb4:	eea7 3aa9 	vfma.f32	s6, s15, s19
d0053bb8:	eea7 2a8b 	vfma.f32	s4, s15, s22
d0053bbc:	e7ec      	b.n	d0053b98 <fillTriangleDitherBayer+0x764>
d0053bbe:	9b00      	ldr	r3, [sp, #0]
d0053bc0:	2b00      	cmp	r3, #0
d0053bc2:	d03d      	beq.n	d0053c40 <fillTriangleDitherBayer+0x80c>
d0053bc4:	f1b9 0f00 	cmp.w	r9, #0
d0053bc8:	dbdd      	blt.n	d0053b86 <fillTriangleDitherBayer+0x752>
d0053bca:	eef0 6a46 	vmov.f32	s13, s12
d0053bce:	f1aa 0402 	sub.w	r4, sl, #2
d0053bd2:	2300      	movs	r3, #0
d0053bd4:	fec7 7a06 	vmaxnm.f32	s15, s14, s12
d0053bd8:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d0053bdc:	ee77 7a85 	vadd.f32	s15, s15, s10
d0053be0:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0053be4:	f834 6f02 	ldrh.w	r6, [r4, #2]!
d0053be8:	ee37 7a26 	vadd.f32	s14, s14, s13
d0053bec:	0190      	lsls	r0, r2, #6
d0053bee:	3301      	adds	r3, #1
d0053bf0:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0053bf4:	ee17 2a90 	vmov	r2, s15
d0053bf8:	b292      	uxth	r2, r2
d0053bfa:	4296      	cmp	r6, r2
d0053bfc:	d902      	bls.n	d0053c04 <fillTriangleDitherBayer+0x7d0>
d0053bfe:	8022      	strh	r2, [r4, #0]
d0053c00:	f80e b000 	strb.w	fp, [lr, r0]
d0053c04:	4299      	cmp	r1, r3
d0053c06:	dce5      	bgt.n	d0053bd4 <fillTriangleDitherBayer+0x7a0>
d0053c08:	e7af      	b.n	d0053b6a <fillTriangleDitherBayer+0x736>
d0053c0a:	bf00      	nop
d0053c0c:	d0090f0c 	.word	0xd0090f0c
d0053c10:	d0090f08 	.word	0xd0090f08
d0053c14:	d0090f10 	.word	0xd0090f10
d0053c18:	33d6bf95 	.word	0x33d6bf95
d0053c1c:	477fff00 	.word	0x477fff00
d0053c20:	00000000 	.word	0x00000000
d0053c24:	d012b284 	.word	0xd012b284
d0053c28:	d005c334 	.word	0xd005c334
d0053c2c:	38d1b717 	.word	0x38d1b717
d0053c30:	9b00      	ldr	r3, [sp, #0]
d0053c32:	2b00      	cmp	r3, #0
d0053c34:	d1c9      	bne.n	d0053bca <fillTriangleDitherBayer+0x796>
d0053c36:	eef0 6a46 	vmov.f32	s13, s12
d0053c3a:	f005 0303 	and.w	r3, r5, #3
d0053c3e:	e75f      	b.n	d0053b00 <fillTriangleDitherBayer+0x6cc>
d0053c40:	f1b9 0f00 	cmp.w	r9, #0
d0053c44:	f005 0303 	and.w	r3, r5, #3
d0053c48:	db9d      	blt.n	d0053b86 <fillTriangleDitherBayer+0x752>
d0053c4a:	eef0 6a46 	vmov.f32	s13, s12
d0053c4e:	e757      	b.n	d0053b00 <fillTriangleDitherBayer+0x6cc>
d0053c50:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0053c54:	ed1f 1a0b 	vldr	s2, [pc, #-44]	; d0053c2c <fillTriangleDitherBayer+0x7f8>
d0053c58:	eef4 7ac1 	vcmpe.f32	s15, s2
d0053c5c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053c60:	f340 80f7 	ble.w	d0053e52 <fillTriangleDitherBayer+0xa1e>
d0053c64:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0053c68:	ee73 3ac5 	vsub.f32	s7, s7, s10
d0053c6c:	ee71 1ae4 	vsub.f32	s3, s3, s9
d0053c70:	ee89 1aa7 	vdiv.f32	s2, s19, s15
d0053c74:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0053c78:	ee77 6ae6 	vsub.f32	s13, s15, s13
d0053c7c:	ee07 4a90 	vmov	s15, r4
d0053c80:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053c84:	ee77 6aa6 	vadd.f32	s13, s15, s13
d0053c88:	ee63 3a81 	vmul.f32	s7, s7, s2
d0053c8c:	ee61 1a81 	vmul.f32	s3, s3, s2
d0053c90:	eea6 5aa3 	vfma.f32	s10, s13, s7
d0053c94:	eee6 4aa1 	vfma.f32	s9, s13, s3
d0053c98:	9a01      	ldr	r2, [sp, #4]
d0053c9a:	eb04 0884 	add.w	r8, r4, r4, lsl #2
d0053c9e:	4b6f      	ldr	r3, [pc, #444]	; (d0053e5c <fillTriangleDitherBayer+0xa28>)
d0053ca0:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0053ca4:	ebc2 1a02 	rsb	sl, r2, r2, lsl #4
d0053ca8:	9910      	ldr	r1, [sp, #64]	; 0x40
d0053caa:	46b9      	mov	r9, r7
d0053cac:	eb01 1a4a 	add.w	sl, r1, sl, lsl #5
d0053cb0:	6819      	ldr	r1, [r3, #0]
d0053cb2:	eb02 1388 	add.w	r3, r2, r8, lsl #6
d0053cb6:	f002 0203 	and.w	r2, r2, #3
d0053cba:	44a2      	add	sl, r4
d0053cbc:	eb01 0803 	add.w	r8, r1, r3
d0053cc0:	4b67      	ldr	r3, [pc, #412]	; (d0053e60 <fillTriangleDitherBayer+0xa2c>)
d0053cc2:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d0053cc6:	9309      	str	r3, [sp, #36]	; 0x24
d0053cc8:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d0053cca:	eb03 0a4a 	add.w	sl, r3, sl, lsl #1
d0053cce:	eba9 0704 	sub.w	r7, r9, r4
d0053cd2:	eeb4 5aeb 	vcmpe.f32	s10, s23
d0053cd6:	1c79      	adds	r1, r7, #1
d0053cd8:	2930      	cmp	r1, #48	; 0x30
d0053cda:	bfa8      	it	ge
d0053cdc:	2130      	movge	r1, #48	; 0x30
d0053cde:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053ce2:	d96d      	bls.n	d0053dc0 <fillTriangleDitherBayer+0x98c>
d0053ce4:	2f00      	cmp	r7, #0
d0053ce6:	ee84 1a85 	vdiv.f32	s2, s9, s10
d0053cea:	dd79      	ble.n	d0053de0 <fillTriangleDitherBayer+0x9ac>
d0053cec:	1e4b      	subs	r3, r1, #1
d0053cee:	ee07 3a90 	vmov	s15, r3
d0053cf2:	eef0 9a45 	vmov.f32	s19, s10
d0053cf6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053cfa:	eee7 9aa3 	vfma.f32	s19, s15, s7
d0053cfe:	eef4 9aeb 	vcmpe.f32	s19, s23
d0053d02:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053d06:	f340 808f 	ble.w	d0053e28 <fillTriangleDitherBayer+0x9f4>
d0053d0a:	eef0 fa64 	vmov.f32	s31, s9
d0053d0e:	eee7 faa1 	vfma.f32	s31, s15, s3
d0053d12:	ee8f aaa9 	vdiv.f32	s20, s31, s19
d0053d16:	ee3a aa41 	vsub.f32	s20, s20, s2
d0053d1a:	eeca 9a27 	vdiv.f32	s19, s20, s15
d0053d1e:	9b00      	ldr	r3, [sp, #0]
d0053d20:	2b00      	cmp	r3, #0
d0053d22:	d163      	bne.n	d0053dec <fillTriangleDitherBayer+0x9b8>
d0053d24:	f004 0503 	and.w	r5, r4, #3
d0053d28:	9703      	str	r7, [sp, #12]
d0053d2a:	f1aa 0602 	sub.w	r6, sl, #2
d0053d2e:	9405      	str	r4, [sp, #20]
d0053d30:	2200      	movs	r2, #0
d0053d32:	f8cd 9018 	str.w	r9, [sp, #24]
d0053d36:	9c04      	ldr	r4, [sp, #16]
d0053d38:	9f02      	ldr	r7, [sp, #8]
d0053d3a:	f8dd 9024 	ldr.w	r9, [sp, #36]	; 0x24
d0053d3e:	fec1 7a07 	vmaxnm.f32	s15, s2, s14
d0053d42:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d0053d46:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0053d4a:	f836 ef02 	ldrh.w	lr, [r6, #2]!
d0053d4e:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d0053d52:	ee31 1a29 	vadd.f32	s2, s2, s19
d0053d56:	f105 0c01 	add.w	ip, r5, #1
d0053d5a:	3201      	adds	r2, #1
d0053d5c:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0053d60:	0180      	lsls	r0, r0, #6
d0053d62:	ee17 3a90 	vmov	r3, s15
d0053d66:	b29b      	uxth	r3, r3
d0053d68:	459e      	cmp	lr, r3
d0053d6a:	d908      	bls.n	d0053d7e <fillTriangleDitherBayer+0x94a>
d0053d6c:	8033      	strh	r3, [r6, #0]
d0053d6e:	f819 3005 	ldrb.w	r3, [r9, r5]
d0053d72:	42bb      	cmp	r3, r7
d0053d74:	bfac      	ite	ge
d0053d76:	465b      	movge	r3, fp
d0053d78:	4623      	movlt	r3, r4
d0053d7a:	f808 3000 	strb.w	r3, [r8, r0]
d0053d7e:	428a      	cmp	r2, r1
d0053d80:	f00c 0503 	and.w	r5, ip, #3
d0053d84:	dbdb      	blt.n	d0053d3e <fillTriangleDitherBayer+0x90a>
d0053d86:	9f03      	ldr	r7, [sp, #12]
d0053d88:	9c05      	ldr	r4, [sp, #20]
d0053d8a:	f8dd 9018 	ldr.w	r9, [sp, #24]
d0053d8e:	2f00      	cmp	r7, #0
d0053d90:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0053d94:	ea4f 0241 	mov.w	r2, r1, lsl #1
d0053d98:	ea4f 1383 	mov.w	r3, r3, lsl #6
d0053d9c:	bfbc      	itt	lt
d0053d9e:	2202      	movlt	r2, #2
d0053da0:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0053da4:	4492      	add	sl, r2
d0053da6:	4498      	add	r8, r3
d0053da8:	ee07 1a90 	vmov	s15, r1
d0053dac:	440c      	add	r4, r1
d0053dae:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053db2:	eea7 5aa3 	vfma.f32	s10, s15, s7
d0053db6:	eee7 4aa1 	vfma.f32	s9, s15, s3
d0053dba:	454c      	cmp	r4, r9
d0053dbc:	dd87      	ble.n	d0053cce <fillTriangleDitherBayer+0x89a>
d0053dbe:	e5df      	b.n	d0053980 <fillTriangleDitherBayer+0x54c>
d0053dc0:	ee07 1a90 	vmov	s15, r1
d0053dc4:	eb01 0381 	add.w	r3, r1, r1, lsl #2
d0053dc8:	eb0a 0a41 	add.w	sl, sl, r1, lsl #1
d0053dcc:	440c      	add	r4, r1
d0053dce:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0053dd2:	eb08 1883 	add.w	r8, r8, r3, lsl #6
d0053dd6:	eea7 5aa3 	vfma.f32	s10, s15, s7
d0053dda:	eee7 4aa1 	vfma.f32	s9, s15, s3
d0053dde:	e7ec      	b.n	d0053dba <fillTriangleDitherBayer+0x986>
d0053de0:	9b00      	ldr	r3, [sp, #0]
d0053de2:	b323      	cbz	r3, d0053e2e <fillTriangleDitherBayer+0x9fa>
d0053de4:	2f00      	cmp	r7, #0
d0053de6:	d1df      	bne.n	d0053da8 <fillTriangleDitherBayer+0x974>
d0053de8:	eef0 9a47 	vmov.f32	s19, s14
d0053dec:	f1aa 0502 	sub.w	r5, sl, #2
d0053df0:	2200      	movs	r2, #0
d0053df2:	fec1 7a07 	vmaxnm.f32	s15, s2, s14
d0053df6:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d0053dfa:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0053dfe:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0053e02:	f835 6f02 	ldrh.w	r6, [r5, #2]!
d0053e06:	ee31 1a29 	vadd.f32	s2, s2, s19
d0053e0a:	0198      	lsls	r0, r3, #6
d0053e0c:	3201      	adds	r2, #1
d0053e0e:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0053e12:	ee17 3a90 	vmov	r3, s15
d0053e16:	b29b      	uxth	r3, r3
d0053e18:	429e      	cmp	r6, r3
d0053e1a:	d902      	bls.n	d0053e22 <fillTriangleDitherBayer+0x9ee>
d0053e1c:	802b      	strh	r3, [r5, #0]
d0053e1e:	f808 b000 	strb.w	fp, [r8, r0]
d0053e22:	428a      	cmp	r2, r1
d0053e24:	dbe5      	blt.n	d0053df2 <fillTriangleDitherBayer+0x9be>
d0053e26:	e7b2      	b.n	d0053d8e <fillTriangleDitherBayer+0x95a>
d0053e28:	eef0 9a47 	vmov.f32	s19, s14
d0053e2c:	e777      	b.n	d0053d1e <fillTriangleDitherBayer+0x8ea>
d0053e2e:	2f00      	cmp	r7, #0
d0053e30:	f004 0503 	and.w	r5, r4, #3
d0053e34:	dbb8      	blt.n	d0053da8 <fillTriangleDitherBayer+0x974>
d0053e36:	eef0 9a47 	vmov.f32	s19, s14
d0053e3a:	e775      	b.n	d0053d28 <fillTriangleDitherBayer+0x8f4>
d0053e3c:	f04f 0b10 	mov.w	fp, #16
d0053e40:	2310      	movs	r3, #16
d0053e42:	9304      	str	r3, [sp, #16]
d0053e44:	f7ff bb5c 	b.w	d0053500 <fillTriangleDitherBayer+0xcc>
d0053e48:	eeb0 ba46 	vmov.f32	s22, s12
d0053e4c:	eef0 9a46 	vmov.f32	s19, s12
d0053e50:	e60f      	b.n	d0053a72 <fillTriangleDitherBayer+0x63e>
d0053e52:	eef0 1a47 	vmov.f32	s3, s14
d0053e56:	eef0 3a47 	vmov.f32	s7, s14
d0053e5a:	e71d      	b.n	d0053c98 <fillTriangleDitherBayer+0x864>
d0053e5c:	d012b284 	.word	0xd012b284
d0053e60:	d005c334 	.word	0xd005c334

d0053e64 <fillTriangleDitherBayerT>:
d0053e64:	eddf 5ae4 	vldr	s11, [pc, #912]	; d00541f8 <fillTriangleDitherBayerT+0x394>
d0053e68:	eef4 0ae5 	vcmpe.f32	s1, s11
d0053e6c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0053e70:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053e74:	eeb4 1ae5 	vcmpe.f32	s2, s11
d0053e78:	ed2d 8b10 	vpush	{d8-d15}
d0053e7c:	b095      	sub	sp, #84	; 0x54
d0053e7e:	9204      	str	r2, [sp, #16]
d0053e80:	bf94      	ite	ls
d0053e82:	2201      	movls	r2, #1
d0053e84:	2200      	movhi	r2, #0
d0053e86:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053e8a:	9002      	str	r0, [sp, #8]
d0053e8c:	9103      	str	r1, [sp, #12]
d0053e8e:	bf98      	it	ls
d0053e90:	f042 0201 	orrls.w	r2, r2, #1
d0053e94:	9305      	str	r3, [sp, #20]
d0053e96:	f8bd 50c0 	ldrh.w	r5, [sp, #192]	; 0xc0
d0053e9a:	f8bd 00c4 	ldrh.w	r0, [sp, #196]	; 0xc4
d0053e9e:	f8bd 10c8 	ldrh.w	r1, [sp, #200]	; 0xc8
d0053ea2:	f89d 30cc 	ldrb.w	r3, [sp, #204]	; 0xcc
d0053ea6:	f89d 40d0 	ldrb.w	r4, [sp, #208]	; 0xd0
d0053eaa:	ed8d 0a00 	vstr	s0, [sp]
d0053eae:	edcd 1a01 	vstr	s3, [sp, #4]
d0053eb2:	2a00      	cmp	r2, #0
d0053eb4:	f040 81b5 	bne.w	d0054222 <fillTriangleDitherBayerT+0x3be>
d0053eb8:	eeb4 0a65 	vcmp.f32	s0, s11
d0053ebc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053ec0:	f240 81af 	bls.w	d0054222 <fillTriangleDitherBayerT+0x3be>
d0053ec4:	eef0 7a41 	vmov.f32	s15, s2
d0053ec8:	eddf 5acc 	vldr	s11, [pc, #816]	; d00541fc <fillTriangleDitherBayerT+0x398>
d0053ecc:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0053ed0:	eeb0 7a60 	vmov.f32	s14, s1
d0053ed4:	fec1 6aa5 	vmaxnm.f32	s13, s3, s11
d0053ed8:	eef1 4a04 	vmov.f32	s9, #20	; 0x40a00000  5.0
d0053edc:	ee05 5a90 	vmov	s11, r5
d0053ee0:	eec5 1a27 	vdiv.f32	s3, s10, s15
d0053ee4:	fec6 6ae4 	vminnm.f32	s13, s13, s9
d0053ee8:	eec5 0a07 	vdiv.f32	s1, s10, s14
d0053eec:	ee85 1a00 	vdiv.f32	s2, s10, s0
d0053ef0:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0053ef4:	eef8 5a65 	vcvt.f32.u32	s11, s11
d0053ef8:	ee17 2a90 	vmov	r2, s15
d0053efc:	ee07 0a90 	vmov	s15, r0
d0053f00:	eeb8 4a67 	vcvt.f32.u32	s8, s15
d0053f04:	ee07 1a90 	vmov	s15, r1
d0053f08:	1c51      	adds	r1, r2, #1
d0053f0a:	eeb8 7a67 	vcvt.f32.u32	s14, s15
d0053f0e:	2905      	cmp	r1, #5
d0053f10:	ee24 4a20 	vmul.f32	s8, s8, s1
d0053f14:	bfa8      	it	ge
d0053f16:	2105      	movge	r1, #5
d0053f18:	2a04      	cmp	r2, #4
d0053f1a:	ee65 5a81 	vmul.f32	s11, s11, s2
d0053f1e:	ee27 7a21 	vmul.f32	s14, s14, s3
d0053f22:	f300 84d4 	bgt.w	d00548ce <fillTriangleDitherBayerT+0xa6a>
d0053f26:	f003 030f 	and.w	r3, r3, #15
d0053f2a:	2a03      	cmp	r2, #3
d0053f2c:	f103 0320 	add.w	r3, r3, #32
d0053f30:	eb03 1002 	add.w	r0, r3, r2, lsl #4
d0053f34:	b2c0      	uxtb	r0, r0
d0053f36:	9000      	str	r0, [sp, #0]
d0053f38:	f300 84cb 	bgt.w	d00548d2 <fillTriangleDitherBayerT+0xa6e>
d0053f3c:	eb03 1301 	add.w	r3, r3, r1, lsl #4
d0053f40:	b2db      	uxtb	r3, r3
d0053f42:	9301      	str	r3, [sp, #4]
d0053f44:	eddd 7a03 	vldr	s15, [sp, #12]
d0053f48:	eeb8 3ae7 	vcvt.f32.s32	s6, s15
d0053f4c:	eddd 7a05 	vldr	s15, [sp, #20]
d0053f50:	eeb8 2ae7 	vcvt.f32.s32	s4, s15
d0053f54:	eddd 7a02 	vldr	s15, [sp, #8]
d0053f58:	eef8 4ae7 	vcvt.f32.s32	s9, s15
d0053f5c:	eddd 7a04 	vldr	s15, [sp, #16]
d0053f60:	eeb4 3ac2 	vcmpe.f32	s6, s4
d0053f64:	eef8 2ae7 	vcvt.f32.s32	s5, s15
d0053f68:	eddd 7a2e 	vldr	s15, [sp, #184]	; 0xb8
d0053f6c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053f70:	eeb8 6ae7 	vcvt.f32.s32	s12, s15
d0053f74:	eddd 7a2f 	vldr	s15, [sp, #188]	; 0xbc
d0053f78:	eeb8 5ae7 	vcvt.f32.s32	s10, s15
d0053f7c:	f300 8156 	bgt.w	d005422c <fillTriangleDitherBayerT+0x3c8>
d0053f80:	eeb4 3ac5 	vcmpe.f32	s6, s10
d0053f84:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053f88:	f300 8263 	bgt.w	d0054452 <fillTriangleDitherBayerT+0x5ee>
d0053f8c:	eeb4 2ac5 	vcmpe.f32	s4, s10
d0053f90:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053f94:	dd17      	ble.n	d0053fc6 <fillTriangleDitherBayerT+0x162>
d0053f96:	eeb0 8a44 	vmov.f32	s16, s8
d0053f9a:	eeb0 0a60 	vmov.f32	s0, s1
d0053f9e:	eef0 3a42 	vmov.f32	s7, s4
d0053fa2:	eef0 7a62 	vmov.f32	s15, s5
d0053fa6:	eeb0 4a47 	vmov.f32	s8, s14
d0053faa:	eef0 0a61 	vmov.f32	s1, s3
d0053fae:	eeb0 2a45 	vmov.f32	s4, s10
d0053fb2:	eef0 2a46 	vmov.f32	s5, s12
d0053fb6:	eeb0 7a48 	vmov.f32	s14, s16
d0053fba:	eef0 1a40 	vmov.f32	s3, s0
d0053fbe:	eeb0 5a63 	vmov.f32	s10, s7
d0053fc2:	eeb0 6a67 	vmov.f32	s12, s15
d0053fc6:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0053fca:	ee73 3a27 	vadd.f32	s7, s6, s15
d0053fce:	ee75 7a27 	vadd.f32	s15, s10, s15
d0053fd2:	eefd 3ae3 	vcvt.s32.f32	s7, s7
d0053fd6:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0053fda:	ee13 3a90 	vmov	r3, s7
d0053fde:	ee17 1a90 	vmov	r1, s15
d0053fe2:	428b      	cmp	r3, r1
d0053fe4:	f000 811d 	beq.w	d0054222 <fillTriangleDitherBayerT+0x3be>
d0053fe8:	ee75 7a43 	vsub.f32	s15, s10, s6
d0053fec:	eddf 3a82 	vldr	s7, [pc, #520]	; d00541f8 <fillTriangleDitherBayerT+0x394>
d0053ff0:	eef4 7ae3 	vcmpe.f32	s15, s7
d0053ff4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0053ff8:	f240 8113 	bls.w	d0054222 <fillTriangleDitherBayerT+0x3be>
d0053ffc:	eeb7 aa00 	vmov.f32	s20, #112	; 0x3f800000  1.0
d0054000:	ee72 9a43 	vsub.f32	s19, s4, s6
d0054004:	ee36 8a64 	vsub.f32	s16, s12, s9
d0054008:	ee8a 0a27 	vdiv.f32	s0, s20, s15
d005400c:	eef4 9ae3 	vcmpe.f32	s19, s7
d0054010:	ee71 8ac1 	vsub.f32	s17, s3, s2
d0054014:	ee37 9a65 	vsub.f32	s18, s14, s11
d0054018:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005401c:	ee28 8a00 	vmul.f32	s16, s16, s0
d0054020:	ee68 8a80 	vmul.f32	s17, s17, s0
d0054024:	ee29 9a00 	vmul.f32	s18, s18, s0
d0054028:	f300 811f 	bgt.w	d005426a <fillTriangleDitherBayerT+0x406>
d005402c:	ee07 2a90 	vmov	s15, r2
d0054030:	ee35 0a42 	vsub.f32	s0, s10, s4
d0054034:	9901      	ldr	r1, [sp, #4]
d0054036:	eb04 1404 	add.w	r4, r4, r4, lsl #4
d005403a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005403e:	eeb4 0ae3 	vcmpe.f32	s0, s7
d0054042:	1224      	asrs	r4, r4, #8
d0054044:	ed8d 0a09 	vstr	s0, [sp, #36]	; 0x24
d0054048:	ee76 6ae7 	vsub.f32	s13, s13, s15
d005404c:	eef0 7a66 	vmov.f32	s15, s13
d0054050:	eefe 7ace 	vcvt.s32.f32	s15, s15, #4
d0054054:	ee17 3a90 	vmov	r3, s15
d0054058:	f383 0204 	usat	r2, #4, r3
d005405c:	9202      	str	r2, [sp, #8]
d005405e:	9a00      	ldr	r2, [sp, #0]
d0054060:	428a      	cmp	r2, r1
d0054062:	bf18      	it	ne
d0054064:	2b00      	cmpne	r3, #0
d0054066:	bfd4      	ite	le
d0054068:	2301      	movle	r3, #1
d005406a:	2300      	movgt	r3, #0
d005406c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054070:	9303      	str	r3, [sp, #12]
d0054072:	f340 80d6 	ble.w	d0054222 <fillTriangleDitherBayerT+0x3be>
d0054076:	ed9f ea61 	vldr	s28, [pc, #388]	; d00541fc <fillTriangleDitherBayerT+0x398>
d005407a:	eef0 ea4e 	vmov.f32	s29, s28
d005407e:	eeb0 ca4e 	vmov.f32	s24, s28
d0054082:	eef7 3a00 	vmov.f32	s7, #112	; 0x3f800000  1.0
d0054086:	eddd 7a09 	vldr	s15, [sp, #36]	; 0x24
d005408a:	ee36 6a62 	vsub.f32	s12, s12, s5
d005408e:	eddf 6a5a 	vldr	s13, [pc, #360]	; d00541f8 <fillTriangleDitherBayerT+0x394>
d0054092:	ee71 1ae0 	vsub.f32	s3, s3, s1
d0054096:	eec3 7aa7 	vdiv.f32	s15, s7, s15
d005409a:	eef4 9ae6 	vcmpe.f32	s19, s13
d005409e:	ee37 7a44 	vsub.f32	s14, s14, s8
d00540a2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00540a6:	ee26 6a27 	vmul.f32	s12, s12, s15
d00540aa:	ee67 fa27 	vmul.f32	s31, s14, s15
d00540ae:	ed8d 6a0e 	vstr	s12, [sp, #56]	; 0x38
d00540b2:	ee21 6aa7 	vmul.f32	s12, s3, s15
d00540b6:	ed8d 6a0d 	vstr	s12, [sp, #52]	; 0x34
d00540ba:	f300 8113 	bgt.w	d00542e4 <fillTriangleDitherBayerT+0x480>
d00540be:	4a49      	ldr	r2, [pc, #292]	; (d00541e4 <fillTriangleDitherBayerT+0x380>)
d00540c0:	eefd 7ac2 	vcvt.s32.f32	s15, s4
d00540c4:	4b48      	ldr	r3, [pc, #288]	; (d00541e8 <fillTriangleDitherBayerT+0x384>)
d00540c6:	6812      	ldr	r2, [r2, #0]
d00540c8:	681b      	ldr	r3, [r3, #0]
d00540ca:	edcd 7a0b 	vstr	s15, [sp, #44]	; 0x2c
d00540ce:	920a      	str	r2, [sp, #40]	; 0x28
d00540d0:	930c      	str	r3, [sp, #48]	; 0x30
d00540d2:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d00540d6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
d00540d8:	980a      	ldr	r0, [sp, #40]	; 0x28
d00540da:	990c      	ldr	r1, [sp, #48]	; 0x30
d00540dc:	ee17 3a90 	vmov	r3, s15
d00540e0:	4282      	cmp	r2, r0
d00540e2:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
d00540e6:	bfb8      	it	lt
d00540e8:	4602      	movlt	r2, r0
d00540ea:	428b      	cmp	r3, r1
d00540ec:	9204      	str	r2, [sp, #16]
d00540ee:	bfa8      	it	ge
d00540f0:	460b      	movge	r3, r1
d00540f2:	429a      	cmp	r2, r3
d00540f4:	f300 8095 	bgt.w	d0054222 <fillTriangleDitherBayerT+0x3be>
d00540f8:	ee07 2a90 	vmov	s15, r2
d00540fc:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d0054100:	3301      	adds	r3, #1
d0054102:	eba0 1200 	sub.w	r2, r0, r0, lsl #4
d0054106:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005410a:	4938      	ldr	r1, [pc, #224]	; (d00541ec <fillTriangleDitherBayerT+0x388>)
d005410c:	0152      	lsls	r2, r2, #5
d005410e:	eddd aa0e 	vldr	s21, [sp, #56]	; 0x38
d0054112:	ed9d 0a0d 	vldr	s0, [sp, #52]	; 0x34
d0054116:	ee77 7a87 	vadd.f32	s15, s15, s14
d005411a:	9308      	str	r3, [sp, #32]
d005411c:	680b      	ldr	r3, [r1, #0]
d005411e:	eddf 9a36 	vldr	s19, [pc, #216]	; d00541f8 <fillTriangleDitherBayerT+0x394>
d0054122:	ee37 3ac3 	vsub.f32	s6, s15, s6
d0054126:	ed9f aa32 	vldr	s20, [pc, #200]	; d00541f0 <fillTriangleDitherBayerT+0x38c>
d005412a:	ee37 2ac2 	vsub.f32	s4, s15, s4
d005412e:	ed9f 6a33 	vldr	s12, [pc, #204]	; d00541fc <fillTriangleDitherBayerT+0x398>
d0054132:	eddf 3a30 	vldr	s7, [pc, #192]	; d00541f4 <fillTriangleDitherBayerT+0x390>
d0054136:	eee8 4a03 	vfma.f32	s9, s16, s6
d005413a:	920a      	str	r2, [sp, #40]	; 0x28
d005413c:	eea8 1a83 	vfma.f32	s2, s17, s6
d0054140:	9309      	str	r3, [sp, #36]	; 0x24
d0054142:	eee9 5a03 	vfma.f32	s11, s18, s6
d0054146:	eeea 2a82 	vfma.f32	s5, s21, s4
d005414a:	eee0 0a02 	vfma.f32	s1, s0, s4
d005414e:	eea2 4a2f 	vfma.f32	s8, s4, s31
d0054152:	e034      	b.n	d00541be <fillTriangleDitherBayerT+0x35a>
d0054154:	eeb0 ba65 	vmov.f32	s22, s11
d0054158:	eef0 1a41 	vmov.f32	s3, s2
d005415c:	eeb0 7a64 	vmov.f32	s14, s9
d0054160:	eeb0 2a44 	vmov.f32	s4, s8
d0054164:	eeb0 3a60 	vmov.f32	s6, s1
d0054168:	eef0 6a62 	vmov.f32	s13, s5
d005416c:	fefa 7a47 	vrintp.f32	s15, s14
d0054170:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0054174:	f240 13df 	movw	r3, #479	; 0x1df
d0054178:	ee17 6a90 	vmov	r6, s15
d005417c:	fefa 7a66 	vrintp.f32	s15, s13
d0054180:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0054184:	3e01      	subs	r6, #1
d0054186:	ee17 0a90 	vmov	r0, s15
d005418a:	429e      	cmp	r6, r3
d005418c:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d0054190:	bfa8      	it	ge
d0054192:	461e      	movge	r6, r3
d0054194:	42b0      	cmp	r0, r6
d0054196:	f340 8175 	ble.w	d0054484 <fillTriangleDitherBayerT+0x620>
d005419a:	9b04      	ldr	r3, [sp, #16]
d005419c:	ee74 4a88 	vadd.f32	s9, s9, s16
d00541a0:	9a08      	ldr	r2, [sp, #32]
d00541a2:	ee31 1a28 	vadd.f32	s2, s2, s17
d00541a6:	3301      	adds	r3, #1
d00541a8:	ee75 5a89 	vadd.f32	s11, s11, s18
d00541ac:	ee72 2aaa 	vadd.f32	s5, s5, s21
d00541b0:	4293      	cmp	r3, r2
d00541b2:	ee70 0a80 	vadd.f32	s1, s1, s0
d00541b6:	ee34 4a2f 	vadd.f32	s8, s8, s31
d00541ba:	9304      	str	r3, [sp, #16]
d00541bc:	d031      	beq.n	d0054222 <fillTriangleDitherBayerT+0x3be>
d00541be:	eef4 4ae2 	vcmpe.f32	s9, s5
d00541c2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00541c6:	dcc5      	bgt.n	d0054154 <fillTriangleDitherBayerT+0x2f0>
d00541c8:	eeb0 ba44 	vmov.f32	s22, s8
d00541cc:	eef0 1a60 	vmov.f32	s3, s1
d00541d0:	eeb0 7a62 	vmov.f32	s14, s5
d00541d4:	eeb0 2a65 	vmov.f32	s4, s11
d00541d8:	eeb0 3a41 	vmov.f32	s6, s2
d00541dc:	eef0 6a64 	vmov.f32	s13, s9
d00541e0:	e7c4      	b.n	d005416c <fillTriangleDitherBayerT+0x308>
d00541e2:	bf00      	nop
d00541e4:	d0090f08 	.word	0xd0090f08
d00541e8:	d0090f0c 	.word	0xd0090f0c
d00541ec:	d0090f10 	.word	0xd0090f10
d00541f0:	33d6bf95 	.word	0x33d6bf95
d00541f4:	477fff00 	.word	0x477fff00
d00541f8:	38d1b717 	.word	0x38d1b717
d00541fc:	00000000 	.word	0x00000000
d0054200:	eddd 5a11 	vldr	s11, [sp, #68]	; 0x44
d0054204:	4644      	mov	r4, r8
d0054206:	ed9d 1a12 	vldr	s2, [sp, #72]	; 0x48
d005420a:	ed9d 4a13 	vldr	s8, [sp, #76]	; 0x4c
d005420e:	ed5f 7a06 	vldr	s15, [pc, #-24]	; d00541f8 <fillTriangleDitherBayerT+0x394>
d0054212:	ed9d 7a09 	vldr	s14, [sp, #36]	; 0x24
d0054216:	eeb4 7ae7 	vcmpe.f32	s14, s15
d005421a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005421e:	f73f af58 	bgt.w	d00540d2 <fillTriangleDitherBayerT+0x26e>
d0054222:	b015      	add	sp, #84	; 0x54
d0054224:	ecbd 8b10 	vpop	{d8-d15}
d0054228:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005422c:	eeb4 2ac5 	vcmpe.f32	s4, s10
d0054230:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054234:	f340 80f4 	ble.w	d0054420 <fillTriangleDitherBayerT+0x5bc>
d0054238:	eeb0 8a47 	vmov.f32	s16, s14
d005423c:	eeb0 0a61 	vmov.f32	s0, s3
d0054240:	eef0 3a45 	vmov.f32	s7, s10
d0054244:	eef0 7a46 	vmov.f32	s15, s12
d0054248:	eeb0 7a65 	vmov.f32	s14, s11
d005424c:	eef0 1a41 	vmov.f32	s3, s2
d0054250:	eeb0 5a43 	vmov.f32	s10, s6
d0054254:	eeb0 6a64 	vmov.f32	s12, s9
d0054258:	eef0 5a48 	vmov.f32	s11, s16
d005425c:	eeb0 1a40 	vmov.f32	s2, s0
d0054260:	eeb0 3a63 	vmov.f32	s6, s7
d0054264:	eef0 4a67 	vmov.f32	s9, s15
d0054268:	e6ad      	b.n	d0053fc6 <fillTriangleDitherBayerT+0x162>
d005426a:	ee07 2a90 	vmov	s15, r2
d005426e:	ee8a 0a29 	vdiv.f32	s0, s20, s19
d0054272:	9901      	ldr	r1, [sp, #4]
d0054274:	eb04 1404 	add.w	r4, r4, r4, lsl #4
d0054278:	1224      	asrs	r4, r4, #8
d005427a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005427e:	ee72 aae4 	vsub.f32	s21, s5, s9
d0054282:	ee30 aac1 	vsub.f32	s20, s1, s2
d0054286:	ee76 6ae7 	vsub.f32	s13, s13, s15
d005428a:	ee34 ea65 	vsub.f32	s28, s8, s11
d005428e:	eef0 7a66 	vmov.f32	s15, s13
d0054292:	ee75 6a42 	vsub.f32	s13, s10, s4
d0054296:	eefe 7ace 	vcvt.s32.f32	s15, s15, #4
d005429a:	eef4 6ae3 	vcmpe.f32	s13, s7
d005429e:	edcd 6a09 	vstr	s13, [sp, #36]	; 0x24
d00542a2:	ee2e ea00 	vmul.f32	s28, s28, s0
d00542a6:	ee17 3a90 	vmov	r3, s15
d00542aa:	ee6a 7a80 	vmul.f32	s15, s21, s0
d00542ae:	f383 0204 	usat	r2, #4, r3
d00542b2:	eeb0 ca67 	vmov.f32	s24, s15
d00542b6:	9202      	str	r2, [sp, #8]
d00542b8:	ee6a 7a00 	vmul.f32	s15, s20, s0
d00542bc:	9a00      	ldr	r2, [sp, #0]
d00542be:	428a      	cmp	r2, r1
d00542c0:	bf18      	it	ne
d00542c2:	2b00      	cmpne	r3, #0
d00542c4:	eef0 ea67 	vmov.f32	s29, s15
d00542c8:	bfd4      	ite	le
d00542ca:	2301      	movle	r3, #1
d00542cc:	2300      	movgt	r3, #0
d00542ce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00542d2:	9303      	str	r3, [sp, #12]
d00542d4:	f73f aed5 	bgt.w	d0054082 <fillTriangleDitherBayerT+0x21e>
d00542d8:	ed5f fa38 	vldr	s31, [pc, #-224]	; d00541fc <fillTriangleDitherBayerT+0x398>
d00542dc:	edcd fa0d 	vstr	s31, [sp, #52]	; 0x34
d00542e0:	edcd fa0e 	vstr	s31, [sp, #56]	; 0x38
d00542e4:	eefd 7ac2 	vcvt.s32.f32	s15, s4
d00542e8:	4bcd      	ldr	r3, [pc, #820]	; (d0054620 <fillTriangleDitherBayerT+0x7bc>)
d00542ea:	4ace      	ldr	r2, [pc, #824]	; (d0054624 <fillTriangleDitherBayerT+0x7c0>)
d00542ec:	6819      	ldr	r1, [r3, #0]
d00542ee:	ee17 3a90 	vmov	r3, s15
d00542f2:	edcd 7a0b 	vstr	s15, [sp, #44]	; 0x2c
d00542f6:	eefd 7ac3 	vcvt.s32.f32	s15, s6
d00542fa:	6810      	ldr	r0, [r2, #0]
d00542fc:	3b01      	subs	r3, #1
d00542fe:	910c      	str	r1, [sp, #48]	; 0x30
d0054300:	900a      	str	r0, [sp, #40]	; 0x28
d0054302:	ee17 2a90 	vmov	r2, s15
d0054306:	428b      	cmp	r3, r1
d0054308:	bfa8      	it	ge
d005430a:	460b      	movge	r3, r1
d005430c:	4282      	cmp	r2, r0
d005430e:	bfb8      	it	lt
d0054310:	4602      	movlt	r2, r0
d0054312:	4293      	cmp	r3, r2
d0054314:	9204      	str	r2, [sp, #16]
d0054316:	f6ff af7a 	blt.w	d005420e <fillTriangleDitherBayerT+0x3aa>
d005431a:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d005431e:	3301      	adds	r3, #1
d0054320:	eef0 aa64 	vmov.f32	s21, s9
d0054324:	49c0      	ldr	r1, [pc, #768]	; (d0054628 <fillTriangleDitherBayerT+0x7c4>)
d0054326:	eba0 1200 	sub.w	r2, r0, r0, lsl #4
d005432a:	9308      	str	r3, [sp, #32]
d005432c:	ee37 7ac3 	vsub.f32	s14, s15, s6
d0054330:	eddd 7a04 	vldr	s15, [sp, #16]
d0054334:	680b      	ldr	r3, [r1, #0]
d0054336:	eeb0 ba64 	vmov.f32	s22, s9
d005433a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005433e:	eddf babb 	vldr	s23, [pc, #748]	; d005462c <fillTriangleDitherBayerT+0x7c8>
d0054342:	eef0 da41 	vmov.f32	s27, s2
d0054346:	930f      	str	r3, [sp, #60]	; 0x3c
d0054348:	eeb0 da65 	vmov.f32	s26, s11
d005434c:	0153      	lsls	r3, r2, #5
d005434e:	ee77 7a87 	vadd.f32	s15, s15, s14
d0054352:	ed9f 6ab7 	vldr	s12, [pc, #732]	; d0054630 <fillTriangleDitherBayerT+0x7cc>
d0054356:	eeb0 aa4c 	vmov.f32	s20, s24
d005435a:	ed9f 7ab6 	vldr	s14, [pc, #728]	; d0054634 <fillTriangleDitherBayerT+0x7d0>
d005435e:	eef0 ca41 	vmov.f32	s25, s2
d0054362:	46a0      	mov	r8, r4
d0054364:	eee7 aa8c 	vfma.f32	s21, s15, s24
d0054368:	9310      	str	r3, [sp, #64]	; 0x40
d005436a:	eeb0 ca65 	vmov.f32	s24, s11
d005436e:	edcd 5a11 	vstr	s11, [sp, #68]	; 0x44
d0054372:	eea8 ba27 	vfma.f32	s22, s16, s15
d0054376:	ed8d 1a12 	vstr	s2, [sp, #72]	; 0x48
d005437a:	eee8 daa7 	vfma.f32	s27, s17, s15
d005437e:	ed8d 4a13 	vstr	s8, [sp, #76]	; 0x4c
d0054382:	eea9 da27 	vfma.f32	s26, s18, s15
d0054386:	eee7 caae 	vfma.f32	s25, s15, s29
d005438a:	eea7 ca8e 	vfma.f32	s24, s15, s28
d005438e:	e035      	b.n	d00543fc <fillTriangleDitherBayerT+0x598>
d0054390:	eef0 1a4d 	vmov.f32	s3, s26
d0054394:	eef0 3a6d 	vmov.f32	s7, s27
d0054398:	eef0 7a4b 	vmov.f32	s15, s22
d005439c:	eeb0 4a4c 	vmov.f32	s8, s24
d00543a0:	eef0 5a6c 	vmov.f32	s11, s25
d00543a4:	eef0 6a6a 	vmov.f32	s13, s21
d00543a8:	feba 1a67 	vrintp.f32	s2, s15
d00543ac:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d00543b0:	feba 0a66 	vrintp.f32	s0, s13
d00543b4:	f240 13df 	movw	r3, #479	; 0x1df
d00543b8:	ee11 6a10 	vmov	r6, s2
d00543bc:	eebd 1ac0 	vcvt.s32.f32	s2, s0
d00543c0:	3e01      	subs	r6, #1
d00543c2:	ee11 0a10 	vmov	r0, s2
d00543c6:	429e      	cmp	r6, r3
d00543c8:	ea20 70e0 	bic.w	r0, r0, r0, asr #31
d00543cc:	bfa8      	it	ge
d00543ce:	461e      	movge	r6, r3
d00543d0:	4286      	cmp	r6, r0
d00543d2:	f280 8173 	bge.w	d00546bc <fillTriangleDitherBayerT+0x858>
d00543d6:	9b04      	ldr	r3, [sp, #16]
d00543d8:	ee3b ba08 	vadd.f32	s22, s22, s16
d00543dc:	9a08      	ldr	r2, [sp, #32]
d00543de:	ee7d daa8 	vadd.f32	s27, s27, s17
d00543e2:	3301      	adds	r3, #1
d00543e4:	ee3d da09 	vadd.f32	s26, s26, s18
d00543e8:	ee7a aa8a 	vadd.f32	s21, s21, s20
d00543ec:	4293      	cmp	r3, r2
d00543ee:	ee7c caae 	vadd.f32	s25, s25, s29
d00543f2:	ee3c ca0e 	vadd.f32	s24, s24, s28
d00543f6:	9304      	str	r3, [sp, #16]
d00543f8:	f43f af02 	beq.w	d0054200 <fillTriangleDitherBayerT+0x39c>
d00543fc:	eeb4 baea 	vcmpe.f32	s22, s21
d0054400:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054404:	dcc4      	bgt.n	d0054390 <fillTriangleDitherBayerT+0x52c>
d0054406:	eef0 1a4c 	vmov.f32	s3, s24
d005440a:	eef0 3a6c 	vmov.f32	s7, s25
d005440e:	eef0 7a6a 	vmov.f32	s15, s21
d0054412:	eeb0 4a4d 	vmov.f32	s8, s26
d0054416:	eef0 5a6d 	vmov.f32	s11, s27
d005441a:	eef0 6a4b 	vmov.f32	s13, s22
d005441e:	e7c3      	b.n	d00543a8 <fillTriangleDitherBayerT+0x544>
d0054420:	eeb0 8a65 	vmov.f32	s16, s11
d0054424:	eeb0 0a41 	vmov.f32	s0, s2
d0054428:	eef0 3a43 	vmov.f32	s7, s6
d005442c:	eef0 7a64 	vmov.f32	s15, s9
d0054430:	eef0 5a44 	vmov.f32	s11, s8
d0054434:	eeb0 1a60 	vmov.f32	s2, s1
d0054438:	eeb0 3a42 	vmov.f32	s6, s4
d005443c:	eef0 4a62 	vmov.f32	s9, s5
d0054440:	eeb0 4a48 	vmov.f32	s8, s16
d0054444:	eef0 0a40 	vmov.f32	s1, s0
d0054448:	eeb0 2a63 	vmov.f32	s4, s7
d005444c:	eef0 2a67 	vmov.f32	s5, s15
d0054450:	e59c      	b.n	d0053f8c <fillTriangleDitherBayerT+0x128>
d0054452:	eeb0 8a65 	vmov.f32	s16, s11
d0054456:	eeb0 0a41 	vmov.f32	s0, s2
d005445a:	eef0 3a43 	vmov.f32	s7, s6
d005445e:	eef0 7a64 	vmov.f32	s15, s9
d0054462:	eef0 5a47 	vmov.f32	s11, s14
d0054466:	eeb0 1a61 	vmov.f32	s2, s3
d005446a:	eeb0 3a45 	vmov.f32	s6, s10
d005446e:	eef0 4a46 	vmov.f32	s9, s12
d0054472:	eeb0 7a48 	vmov.f32	s14, s16
d0054476:	eef0 1a40 	vmov.f32	s3, s0
d005447a:	eeb0 5a63 	vmov.f32	s10, s7
d005447e:	eeb0 6a67 	vmov.f32	s12, s15
d0054482:	e583      	b.n	d0053f8c <fillTriangleDitherBayerT+0x128>
d0054484:	ee37 7a66 	vsub.f32	s14, s14, s13
d0054488:	eeb4 7ae9 	vcmpe.f32	s14, s19
d005448c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054490:	f340 8223 	ble.w	d00548da <fillTriangleDitherBayerT+0xa76>
d0054494:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0054498:	ee71 1ac3 	vsub.f32	s3, s3, s6
d005449c:	ee3b ba42 	vsub.f32	s22, s22, s4
d00544a0:	ee87 5a87 	vdiv.f32	s10, s15, s14
d00544a4:	ee07 0a10 	vmov	s14, r0
d00544a8:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00544ac:	ee77 7ae6 	vsub.f32	s15, s15, s13
d00544b0:	eef8 6ac7 	vcvt.f32.s32	s13, s14
d00544b4:	ee76 6aa7 	vadd.f32	s13, s13, s15
d00544b8:	ee61 1a85 	vmul.f32	s3, s3, s10
d00544bc:	ee2b ba05 	vmul.f32	s22, s22, s10
d00544c0:	eea6 3aa1 	vfma.f32	s6, s13, s3
d00544c4:	eea6 2a8b 	vfma.f32	s4, s13, s22
d00544c8:	9a04      	ldr	r2, [sp, #16]
d00544ca:	eeb6 5a00 	vmov.f32	s10, #96	; 0x3f000000  0.5
d00544ce:	4b5a      	ldr	r3, [pc, #360]	; (d0054638 <fillTriangleDitherBayerT+0x7d4>)
d00544d0:	ebc2 1e02 	rsb	lr, r2, r2, lsl #4
d00544d4:	990a      	ldr	r1, [sp, #40]	; 0x28
d00544d6:	681f      	ldr	r7, [r3, #0]
d00544d8:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d00544dc:	eb01 1e4e 	add.w	lr, r1, lr, lsl #5
d00544e0:	f002 0803 	and.w	r8, r2, #3
d00544e4:	eb02 1383 	add.w	r3, r2, r3, lsl #6
d00544e8:	4a54      	ldr	r2, [pc, #336]	; (d005463c <fillTriangleDitherBayerT+0x7d8>)
d00544ea:	4486      	add	lr, r0
d00544ec:	441f      	add	r7, r3
d00544ee:	9b09      	ldr	r3, [sp, #36]	; 0x24
d00544f0:	eb02 0888 	add.w	r8, r2, r8, lsl #2
d00544f4:	eb03 0e4e 	add.w	lr, r3, lr, lsl #1
d00544f8:	eba6 0c00 	sub.w	ip, r6, r0
d00544fc:	eeb4 3aca 	vcmpe.f32	s6, s20
d0054500:	f10c 0301 	add.w	r3, ip, #1
d0054504:	2b30      	cmp	r3, #48	; 0x30
d0054506:	bfa8      	it	ge
d0054508:	2330      	movge	r3, #48	; 0x30
d005450a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005450e:	d963      	bls.n	d00545d8 <fillTriangleDitherBayerT+0x774>
d0054510:	f1bc 0f00 	cmp.w	ip, #0
d0054514:	ee82 7a03 	vdiv.f32	s14, s4, s6
d0054518:	dd6e      	ble.n	d00545f8 <fillTriangleDitherBayerT+0x794>
d005451a:	1e5a      	subs	r2, r3, #1
d005451c:	ee07 2a90 	vmov	s15, r2
d0054520:	eef0 6a43 	vmov.f32	s13, s6
d0054524:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0054528:	eee7 6aa1 	vfma.f32	s13, s15, s3
d005452c:	eef4 6aca 	vcmpe.f32	s13, s20
d0054530:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054534:	dd6a      	ble.n	d005460c <fillTriangleDitherBayerT+0x7a8>
d0054536:	eeb0 ca42 	vmov.f32	s24, s4
d005453a:	9a03      	ldr	r2, [sp, #12]
d005453c:	eea7 ca8b 	vfma.f32	s24, s15, s22
d0054540:	eecc ba26 	vdiv.f32	s23, s24, s13
d0054544:	ee7b bac7 	vsub.f32	s23, s23, s14
d0054548:	eecb 6aa7 	vdiv.f32	s13, s23, s15
d005454c:	2a00      	cmp	r2, #0
d005454e:	f000 81b6 	beq.w	d00548be <fillTriangleDitherBayerT+0xa5a>
d0054552:	f000 0503 	and.w	r5, r0, #3
d0054556:	f1ae 0902 	sub.w	r9, lr, #2
d005455a:	2100      	movs	r1, #0
d005455c:	fec7 7a06 	vmaxnm.f32	s15, s14, s12
d0054560:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d0054564:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d0054568:	f105 0a01 	add.w	sl, r5, #1
d005456c:	ee77 7a85 	vadd.f32	s15, s15, s10
d0054570:	ee37 7a26 	vadd.f32	s14, s14, s13
d0054574:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0054578:	ee17 2a90 	vmov	r2, s15
d005457c:	b292      	uxth	r2, r2
d005457e:	4593      	cmp	fp, r2
d0054580:	d90b      	bls.n	d005459a <fillTriangleDitherBayerT+0x736>
d0054582:	f818 b005 	ldrb.w	fp, [r8, r5]
d0054586:	eb01 0581 	add.w	r5, r1, r1, lsl #2
d005458a:	45a3      	cmp	fp, r4
d005458c:	ea4f 1585 	mov.w	r5, r5, lsl #6
d0054590:	db03      	blt.n	d005459a <fillTriangleDitherBayerT+0x736>
d0054592:	f8a9 2000 	strh.w	r2, [r9]
d0054596:	9a00      	ldr	r2, [sp, #0]
d0054598:	557a      	strb	r2, [r7, r5]
d005459a:	3101      	adds	r1, #1
d005459c:	f00a 0503 	and.w	r5, sl, #3
d00545a0:	428b      	cmp	r3, r1
d00545a2:	dcdb      	bgt.n	d005455c <fillTriangleDitherBayerT+0x6f8>
d00545a4:	f1bc 0f00 	cmp.w	ip, #0
d00545a8:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d00545ac:	ea4f 0143 	mov.w	r1, r3, lsl #1
d00545b0:	ea4f 1282 	mov.w	r2, r2, lsl #6
d00545b4:	bfbc      	itt	lt
d00545b6:	2102      	movlt	r1, #2
d00545b8:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d00545bc:	448e      	add	lr, r1
d00545be:	4417      	add	r7, r2
d00545c0:	ee07 3a90 	vmov	s15, r3
d00545c4:	4418      	add	r0, r3
d00545c6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00545ca:	eea7 3aa1 	vfma.f32	s6, s15, s3
d00545ce:	eea7 2a8b 	vfma.f32	s4, s15, s22
d00545d2:	4286      	cmp	r6, r0
d00545d4:	da90      	bge.n	d00544f8 <fillTriangleDitherBayerT+0x694>
d00545d6:	e5e0      	b.n	d005419a <fillTriangleDitherBayerT+0x336>
d00545d8:	ee07 3a90 	vmov	s15, r3
d00545dc:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d00545e0:	eb0e 0e43 	add.w	lr, lr, r3, lsl #1
d00545e4:	4418      	add	r0, r3
d00545e6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00545ea:	eb07 1782 	add.w	r7, r7, r2, lsl #6
d00545ee:	eea7 3aa1 	vfma.f32	s6, s15, s3
d00545f2:	eea7 2a8b 	vfma.f32	s4, s15, s22
d00545f6:	e7ec      	b.n	d00545d2 <fillTriangleDitherBayerT+0x76e>
d00545f8:	9a03      	ldr	r2, [sp, #12]
d00545fa:	f000 0503 	and.w	r5, r0, #3
d00545fe:	b30a      	cbz	r2, d0054644 <fillTriangleDitherBayerT+0x7e0>
d0054600:	f1bc 0f00 	cmp.w	ip, #0
d0054604:	dbdc      	blt.n	d00545c0 <fillTriangleDitherBayerT+0x75c>
d0054606:	eef0 6a46 	vmov.f32	s13, s12
d005460a:	e7a4      	b.n	d0054556 <fillTriangleDitherBayerT+0x6f2>
d005460c:	9a03      	ldr	r2, [sp, #12]
d005460e:	2a00      	cmp	r2, #0
d0054610:	f000 8158 	beq.w	d00548c4 <fillTriangleDitherBayerT+0xa60>
d0054614:	eef0 6a46 	vmov.f32	s13, s12
d0054618:	f000 0503 	and.w	r5, r0, #3
d005461c:	e79b      	b.n	d0054556 <fillTriangleDitherBayerT+0x6f2>
d005461e:	bf00      	nop
d0054620:	d0090f0c 	.word	0xd0090f0c
d0054624:	d0090f08 	.word	0xd0090f08
d0054628:	d0090f10 	.word	0xd0090f10
d005462c:	33d6bf95 	.word	0x33d6bf95
d0054630:	477fff00 	.word	0x477fff00
d0054634:	00000000 	.word	0x00000000
d0054638:	d012b284 	.word	0xd012b284
d005463c:	d005c334 	.word	0xd005c334
d0054640:	38d1b717 	.word	0x38d1b717
d0054644:	f1bc 0f00 	cmp.w	ip, #0
d0054648:	dbba      	blt.n	d00545c0 <fillTriangleDitherBayerT+0x75c>
d005464a:	eef0 6a46 	vmov.f32	s13, s12
d005464e:	f1ae 0902 	sub.w	r9, lr, #2
d0054652:	2100      	movs	r1, #0
d0054654:	f8cd c014 	str.w	ip, [sp, #20]
d0054658:	9606      	str	r6, [sp, #24]
d005465a:	9007      	str	r0, [sp, #28]
d005465c:	fec7 7a06 	vmaxnm.f32	s15, s14, s12
d0054660:	fec7 7ae3 	vminnm.f32	s15, s15, s7
d0054664:	ee77 7a85 	vadd.f32	s15, s15, s10
d0054668:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d005466c:	ee37 7a26 	vadd.f32	s14, s14, s13
d0054670:	f105 0a01 	add.w	sl, r5, #1
d0054674:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0054678:	ee17 2a90 	vmov	r2, s15
d005467c:	b292      	uxth	r2, r2
d005467e:	4593      	cmp	fp, r2
d0054680:	d912      	bls.n	d00546a8 <fillTriangleDitherBayerT+0x844>
d0054682:	f818 b005 	ldrb.w	fp, [r8, r5]
d0054686:	eb01 0581 	add.w	r5, r1, r1, lsl #2
d005468a:	45a3      	cmp	fp, r4
d005468c:	ea4f 1585 	mov.w	r5, r5, lsl #6
d0054690:	db0a      	blt.n	d00546a8 <fillTriangleDitherBayerT+0x844>
d0054692:	9801      	ldr	r0, [sp, #4]
d0054694:	f8a9 2000 	strh.w	r2, [r9]
d0054698:	4606      	mov	r6, r0
d005469a:	9800      	ldr	r0, [sp, #0]
d005469c:	4684      	mov	ip, r0
d005469e:	9802      	ldr	r0, [sp, #8]
d00546a0:	4583      	cmp	fp, r0
d00546a2:	bfa8      	it	ge
d00546a4:	4666      	movge	r6, ip
d00546a6:	557e      	strb	r6, [r7, r5]
d00546a8:	3101      	adds	r1, #1
d00546aa:	f00a 0503 	and.w	r5, sl, #3
d00546ae:	428b      	cmp	r3, r1
d00546b0:	dcd4      	bgt.n	d005465c <fillTriangleDitherBayerT+0x7f8>
d00546b2:	f8dd c014 	ldr.w	ip, [sp, #20]
d00546b6:	9e06      	ldr	r6, [sp, #24]
d00546b8:	9807      	ldr	r0, [sp, #28]
d00546ba:	e773      	b.n	d00545a4 <fillTriangleDitherBayerT+0x740>
d00546bc:	ee77 7ae6 	vsub.f32	s15, s15, s13
d00546c0:	ed1f 1a21 	vldr	s2, [pc, #-132]	; d0054640 <fillTriangleDitherBayerT+0x7dc>
d00546c4:	eef4 7ac1 	vcmpe.f32	s15, s2
d00546c8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00546cc:	f340 810a 	ble.w	d00548e4 <fillTriangleDitherBayerT+0xa80>
d00546d0:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d00546d4:	ee73 3ae5 	vsub.f32	s7, s7, s11
d00546d8:	ee71 1ac4 	vsub.f32	s3, s3, s8
d00546dc:	ee80 1a27 	vdiv.f32	s2, s0, s15
d00546e0:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00546e4:	ee77 6ae6 	vsub.f32	s13, s15, s13
d00546e8:	ee07 0a90 	vmov	s15, r0
d00546ec:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00546f0:	ee77 6aa6 	vadd.f32	s13, s15, s13
d00546f4:	ee63 3a81 	vmul.f32	s7, s7, s2
d00546f8:	ee61 1a81 	vmul.f32	s3, s3, s2
d00546fc:	eee6 5aa3 	vfma.f32	s11, s13, s7
d0054700:	eea6 4aa1 	vfma.f32	s8, s13, s3
d0054704:	9a04      	ldr	r2, [sp, #16]
d0054706:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d005470a:	4b79      	ldr	r3, [pc, #484]	; (d00548f0 <fillTriangleDitherBayerT+0xa8c>)
d005470c:	ebc2 1c02 	rsb	ip, r2, r2, lsl #4
d0054710:	9910      	ldr	r1, [sp, #64]	; 0x40
d0054712:	681f      	ldr	r7, [r3, #0]
d0054714:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d0054718:	eb01 1c4c 	add.w	ip, r1, ip, lsl #5
d005471c:	f002 0e03 	and.w	lr, r2, #3
d0054720:	eb02 1383 	add.w	r3, r2, r3, lsl #6
d0054724:	4a73      	ldr	r2, [pc, #460]	; (d00548f4 <fillTriangleDitherBayerT+0xa90>)
d0054726:	4484      	add	ip, r0
d0054728:	441f      	add	r7, r3
d005472a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
d005472c:	eb02 0e8e 	add.w	lr, r2, lr, lsl #2
d0054730:	eb03 0c4c 	add.w	ip, r3, ip, lsl #1
d0054734:	1a35      	subs	r5, r6, r0
d0054736:	eef4 5aeb 	vcmpe.f32	s11, s23
d005473a:	1c6a      	adds	r2, r5, #1
d005473c:	2a30      	cmp	r2, #48	; 0x30
d005473e:	bfa8      	it	ge
d0054740:	2230      	movge	r2, #48	; 0x30
d0054742:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054746:	d961      	bls.n	d005480c <fillTriangleDitherBayerT+0x9a8>
d0054748:	2d00      	cmp	r5, #0
d005474a:	ee84 1a25 	vdiv.f32	s2, s8, s11
d005474e:	dd6d      	ble.n	d005482c <fillTriangleDitherBayerT+0x9c8>
d0054750:	1e53      	subs	r3, r2, #1
d0054752:	ee07 3a90 	vmov	s15, r3
d0054756:	eeb0 0a65 	vmov.f32	s0, s11
d005475a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005475e:	eea7 0aa3 	vfma.f32	s0, s15, s7
d0054762:	eeb4 0aeb 	vcmpe.f32	s0, s23
d0054766:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005476a:	f340 80a0 	ble.w	d00548ae <fillTriangleDitherBayerT+0xa4a>
d005476e:	eeb0 fa44 	vmov.f32	s30, s8
d0054772:	eea7 faa1 	vfma.f32	s30, s15, s3
d0054776:	eecf 9a00 	vdiv.f32	s19, s30, s0
d005477a:	ee79 9ac1 	vsub.f32	s19, s19, s2
d005477e:	ee89 0aa7 	vdiv.f32	s0, s19, s15
d0054782:	9b03      	ldr	r3, [sp, #12]
d0054784:	2b00      	cmp	r3, #0
d0054786:	d05b      	beq.n	d0054840 <fillTriangleDitherBayerT+0x9dc>
d0054788:	f000 0403 	and.w	r4, r0, #3
d005478c:	f1ac 0902 	sub.w	r9, ip, #2
d0054790:	2100      	movs	r1, #0
d0054792:	fec1 7a07 	vmaxnm.f32	s15, s2, s14
d0054796:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d005479a:	ee77 7aa6 	vadd.f32	s15, s15, s13
d005479e:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d00547a2:	ee31 1a00 	vadd.f32	s2, s2, s0
d00547a6:	f104 0a01 	add.w	sl, r4, #1
d00547aa:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00547ae:	ee17 3a90 	vmov	r3, s15
d00547b2:	b29b      	uxth	r3, r3
d00547b4:	459b      	cmp	fp, r3
d00547b6:	d90b      	bls.n	d00547d0 <fillTriangleDitherBayerT+0x96c>
d00547b8:	f81e b004 	ldrb.w	fp, [lr, r4]
d00547bc:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d00547c0:	45c3      	cmp	fp, r8
d00547c2:	ea4f 1484 	mov.w	r4, r4, lsl #6
d00547c6:	db03      	blt.n	d00547d0 <fillTriangleDitherBayerT+0x96c>
d00547c8:	f8a9 3000 	strh.w	r3, [r9]
d00547cc:	9b00      	ldr	r3, [sp, #0]
d00547ce:	553b      	strb	r3, [r7, r4]
d00547d0:	3101      	adds	r1, #1
d00547d2:	f00a 0403 	and.w	r4, sl, #3
d00547d6:	428a      	cmp	r2, r1
d00547d8:	dcdb      	bgt.n	d0054792 <fillTriangleDitherBayerT+0x92e>
d00547da:	2d00      	cmp	r5, #0
d00547dc:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d00547e0:	ea4f 0142 	mov.w	r1, r2, lsl #1
d00547e4:	ea4f 1383 	mov.w	r3, r3, lsl #6
d00547e8:	bfbc      	itt	lt
d00547ea:	2102      	movlt	r1, #2
d00547ec:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d00547f0:	448c      	add	ip, r1
d00547f2:	441f      	add	r7, r3
d00547f4:	ee07 2a90 	vmov	s15, r2
d00547f8:	4410      	add	r0, r2
d00547fa:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00547fe:	eee7 5aa3 	vfma.f32	s11, s15, s7
d0054802:	eea7 4aa1 	vfma.f32	s8, s15, s3
d0054806:	4286      	cmp	r6, r0
d0054808:	da94      	bge.n	d0054734 <fillTriangleDitherBayerT+0x8d0>
d005480a:	e5e4      	b.n	d00543d6 <fillTriangleDitherBayerT+0x572>
d005480c:	ee07 2a90 	vmov	s15, r2
d0054810:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d0054814:	eb0c 0c42 	add.w	ip, ip, r2, lsl #1
d0054818:	4410      	add	r0, r2
d005481a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005481e:	eb07 1783 	add.w	r7, r7, r3, lsl #6
d0054822:	eee7 5aa3 	vfma.f32	s11, s15, s7
d0054826:	eea7 4aa1 	vfma.f32	s8, s15, s3
d005482a:	e7ec      	b.n	d0054806 <fillTriangleDitherBayerT+0x9a2>
d005482c:	9b03      	ldr	r3, [sp, #12]
d005482e:	f000 0403 	and.w	r4, r0, #3
d0054832:	2b00      	cmp	r3, #0
d0054834:	d03e      	beq.n	d00548b4 <fillTriangleDitherBayerT+0xa50>
d0054836:	2d00      	cmp	r5, #0
d0054838:	d1dc      	bne.n	d00547f4 <fillTriangleDitherBayerT+0x990>
d005483a:	eeb0 0a47 	vmov.f32	s0, s14
d005483e:	e7a5      	b.n	d005478c <fillTriangleDitherBayerT+0x928>
d0054840:	f000 0403 	and.w	r4, r0, #3
d0054844:	f1ac 0902 	sub.w	r9, ip, #2
d0054848:	2100      	movs	r1, #0
d005484a:	9605      	str	r6, [sp, #20]
d005484c:	9506      	str	r5, [sp, #24]
d005484e:	9007      	str	r0, [sp, #28]
d0054850:	fec1 7a07 	vmaxnm.f32	s15, s2, s14
d0054854:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d0054858:	ee77 7aa6 	vadd.f32	s15, s15, s13
d005485c:	f839 bf02 	ldrh.w	fp, [r9, #2]!
d0054860:	ee31 1a00 	vadd.f32	s2, s2, s0
d0054864:	f104 0a01 	add.w	sl, r4, #1
d0054868:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d005486c:	ee17 3a90 	vmov	r3, s15
d0054870:	b29b      	uxth	r3, r3
d0054872:	459b      	cmp	fp, r3
d0054874:	d912      	bls.n	d005489c <fillTriangleDitherBayerT+0xa38>
d0054876:	f81e b004 	ldrb.w	fp, [lr, r4]
d005487a:	eb01 0481 	add.w	r4, r1, r1, lsl #2
d005487e:	45c3      	cmp	fp, r8
d0054880:	ea4f 1484 	mov.w	r4, r4, lsl #6
d0054884:	db0a      	blt.n	d005489c <fillTriangleDitherBayerT+0xa38>
d0054886:	9800      	ldr	r0, [sp, #0]
d0054888:	f8a9 3000 	strh.w	r3, [r9]
d005488c:	4605      	mov	r5, r0
d005488e:	9801      	ldr	r0, [sp, #4]
d0054890:	4606      	mov	r6, r0
d0054892:	9802      	ldr	r0, [sp, #8]
d0054894:	4583      	cmp	fp, r0
d0054896:	bfb8      	it	lt
d0054898:	4635      	movlt	r5, r6
d005489a:	553d      	strb	r5, [r7, r4]
d005489c:	3101      	adds	r1, #1
d005489e:	f00a 0403 	and.w	r4, sl, #3
d00548a2:	428a      	cmp	r2, r1
d00548a4:	dcd4      	bgt.n	d0054850 <fillTriangleDitherBayerT+0x9ec>
d00548a6:	9e05      	ldr	r6, [sp, #20]
d00548a8:	9d06      	ldr	r5, [sp, #24]
d00548aa:	9807      	ldr	r0, [sp, #28]
d00548ac:	e795      	b.n	d00547da <fillTriangleDitherBayerT+0x976>
d00548ae:	eeb0 0a47 	vmov.f32	s0, s14
d00548b2:	e766      	b.n	d0054782 <fillTriangleDitherBayerT+0x91e>
d00548b4:	2d00      	cmp	r5, #0
d00548b6:	db9d      	blt.n	d00547f4 <fillTriangleDitherBayerT+0x990>
d00548b8:	eeb0 0a47 	vmov.f32	s0, s14
d00548bc:	e7c2      	b.n	d0054844 <fillTriangleDitherBayerT+0x9e0>
d00548be:	f000 0503 	and.w	r5, r0, #3
d00548c2:	e6c4      	b.n	d005464e <fillTriangleDitherBayerT+0x7ea>
d00548c4:	eef0 6a46 	vmov.f32	s13, s12
d00548c8:	f000 0503 	and.w	r5, r0, #3
d00548cc:	e6bf      	b.n	d005464e <fillTriangleDitherBayerT+0x7ea>
d00548ce:	2310      	movs	r3, #16
d00548d0:	9300      	str	r3, [sp, #0]
d00548d2:	2310      	movs	r3, #16
d00548d4:	9301      	str	r3, [sp, #4]
d00548d6:	f7ff bb35 	b.w	d0053f44 <fillTriangleDitherBayerT+0xe0>
d00548da:	eeb0 ba46 	vmov.f32	s22, s12
d00548de:	eef0 1a46 	vmov.f32	s3, s12
d00548e2:	e5f1      	b.n	d00544c8 <fillTriangleDitherBayerT+0x664>
d00548e4:	eef0 1a47 	vmov.f32	s3, s14
d00548e8:	eef0 3a47 	vmov.f32	s7, s14
d00548ec:	e70a      	b.n	d0054704 <fillTriangleDitherBayerT+0x8a0>
d00548ee:	bf00      	nop
d00548f0:	d012b284 	.word	0xd012b284
d00548f4:	d005c334 	.word	0xd005c334

d00548f8 <fillTriangleDitherBayer2Mode>:
d00548f8:	ed9f 7ad6 	vldr	s14, [pc, #856]	; d0054c54 <fillTriangleDitherBayer2Mode+0x35c>
d00548fc:	eef4 0ac7 	vcmpe.f32	s1, s14
d0054900:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0054904:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054908:	eeb4 1ac7 	vcmpe.f32	s2, s14
d005490c:	ed2d 8b10 	vpush	{d8-d15}
d0054910:	b091      	sub	sp, #68	; 0x44
d0054912:	9305      	str	r3, [sp, #20]
d0054914:	bf94      	ite	ls
d0054916:	2301      	movls	r3, #1
d0054918:	2300      	movhi	r3, #0
d005491a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005491e:	9002      	str	r0, [sp, #8]
d0054920:	9103      	str	r1, [sp, #12]
d0054922:	bf98      	it	ls
d0054924:	f043 0301 	orrls.w	r3, r3, #1
d0054928:	9204      	str	r2, [sp, #16]
d005492a:	f8bd 00b0 	ldrh.w	r0, [sp, #176]	; 0xb0
d005492e:	f8bd 10b4 	ldrh.w	r1, [sp, #180]	; 0xb4
d0054932:	f8bd 20b8 	ldrh.w	r2, [sp, #184]	; 0xb8
d0054936:	f89d b0bc 	ldrb.w	fp, [sp, #188]	; 0xbc
d005493a:	ed8d 0a00 	vstr	s0, [sp]
d005493e:	edcd 1a01 	vstr	s3, [sp, #4]
d0054942:	2b00      	cmp	r3, #0
d0054944:	f040 8162 	bne.w	d0054c0c <fillTriangleDitherBayer2Mode+0x314>
d0054948:	eeb4 0a47 	vcmp.f32	s0, s14
d005494c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054950:	f240 815c 	bls.w	d0054c0c <fillTriangleDitherBayer2Mode+0x314>
d0054954:	eef7 4a00 	vmov.f32	s9, #112	; 0x3f800000  1.0
d0054958:	ee07 0a10 	vmov	s14, r0
d005495c:	eef0 6a41 	vmov.f32	s13, s2
d0054960:	ee05 1a90 	vmov	s11, r1
d0054964:	eef0 7a61 	vmov.f32	s15, s3
d0054968:	ee84 3a80 	vdiv.f32	s6, s9, s0
d005496c:	ee84 1aa6 	vdiv.f32	s2, s9, s13
d0054970:	ee06 2a90 	vmov	s13, r2
d0054974:	eec4 1aa0 	vdiv.f32	s3, s9, s1
d0054978:	eef8 2a66 	vcvt.f32.u32	s5, s13
d005497c:	eddd 6a03 	vldr	s13, [sp, #12]
d0054980:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d0054984:	eeb8 5ae6 	vcvt.f32.s32	s10, s13
d0054988:	eddd 6a05 	vldr	s13, [sp, #20]
d005498c:	eef8 5a65 	vcvt.f32.u32	s11, s11
d0054990:	eef8 3ae6 	vcvt.f32.s32	s7, s13
d0054994:	eddd 6a02 	vldr	s13, [sp, #8]
d0054998:	ee27 7a03 	vmul.f32	s14, s14, s6
d005499c:	eeb8 6ae6 	vcvt.f32.s32	s12, s13
d00549a0:	eddd 6a04 	vldr	s13, [sp, #16]
d00549a4:	eeb4 5ae3 	vcmpe.f32	s10, s7
d00549a8:	eef8 4ae6 	vcvt.f32.s32	s9, s13
d00549ac:	eddd 6a2a 	vldr	s13, [sp, #168]	; 0xa8
d00549b0:	ee62 2a81 	vmul.f32	s5, s5, s2
d00549b4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00549b8:	eeb8 2ae6 	vcvt.f32.s32	s4, s13
d00549bc:	eddd 6a2b 	vldr	s13, [sp, #172]	; 0xac
d00549c0:	ee65 5aa1 	vmul.f32	s11, s11, s3
d00549c4:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d00549c8:	f300 8125 	bgt.w	d0054c16 <fillTriangleDitherBayer2Mode+0x31e>
d00549cc:	eeb4 5ae6 	vcmpe.f32	s10, s13
d00549d0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00549d4:	f300 8225 	bgt.w	d0054e22 <fillTriangleDitherBayer2Mode+0x52a>
d00549d8:	eef4 3ae6 	vcmpe.f32	s7, s13
d00549dc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00549e0:	f300 823d 	bgt.w	d0054e5e <fillTriangleDitherBayer2Mode+0x566>
d00549e4:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d00549e8:	ee75 0a04 	vadd.f32	s1, s10, s8
d00549ec:	ee36 4a84 	vadd.f32	s8, s13, s8
d00549f0:	eefd 0ae0 	vcvt.s32.f32	s1, s1
d00549f4:	eebd 4ac4 	vcvt.s32.f32	s8, s8
d00549f8:	ee10 3a90 	vmov	r3, s1
d00549fc:	ee14 2a10 	vmov	r2, s8
d0054a00:	4293      	cmp	r3, r2
d0054a02:	f000 8103 	beq.w	d0054c0c <fillTriangleDitherBayer2Mode+0x314>
d0054a06:	ee76 8ac5 	vsub.f32	s17, s13, s10
d0054a0a:	ed9f 4a92 	vldr	s8, [pc, #584]	; d0054c54 <fillTriangleDitherBayer2Mode+0x35c>
d0054a0e:	eef4 8ac4 	vcmpe.f32	s17, s8
d0054a12:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054a16:	f240 80f9 	bls.w	d0054c0c <fillTriangleDitherBayer2Mode+0x314>
d0054a1a:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0054a1e:	ee33 9ac5 	vsub.f32	s18, s7, s10
d0054a22:	ee32 0a46 	vsub.f32	s0, s4, s12
d0054a26:	eec9 0aa8 	vdiv.f32	s1, s19, s17
d0054a2a:	eeb4 9ac4 	vcmpe.f32	s18, s8
d0054a2e:	ee31 8a43 	vsub.f32	s16, s2, s6
d0054a32:	ee72 8ac7 	vsub.f32	s17, s5, s14
d0054a36:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054a3a:	ee20 0a20 	vmul.f32	s0, s0, s1
d0054a3e:	ee28 8a20 	vmul.f32	s16, s16, s1
d0054a42:	ee68 8aa0 	vmul.f32	s17, s17, s1
d0054a46:	f300 8115 	bgt.w	d0054c74 <fillTriangleDitherBayer2Mode+0x37c>
d0054a4a:	eef1 9a04 	vmov.f32	s19, #20	; 0x40a00000  5.0
d0054a4e:	ed9f ba87 	vldr	s22, [pc, #540]	; d0054c6c <fillTriangleDitherBayer2Mode+0x374>
d0054a52:	eddf 0a87 	vldr	s1, [pc, #540]	; d0054c70 <fillTriangleDitherBayer2Mode+0x378>
d0054a56:	ee76 fae3 	vsub.f32	s31, s13, s7
d0054a5a:	fec7 7a8b 	vmaxnm.f32	s15, s15, s22
d0054a5e:	fec7 7ae9 	vminnm.f32	s15, s15, s19
d0054a62:	ee67 7aa0 	vmul.f32	s15, s15, s1
d0054a66:	eef4 fac4 	vcmpe.f32	s31, s8
d0054a6a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0054a6e:	ee17 3a90 	vmov	r3, s15
d0054a72:	edcd 7a00 	vstr	s15, [sp]
d0054a76:	2b10      	cmp	r3, #16
d0054a78:	bfa8      	it	ge
d0054a7a:	2310      	movge	r3, #16
d0054a7c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054a80:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0054a84:	9302      	str	r3, [sp, #8]
d0054a86:	f340 80c1 	ble.w	d0054c0c <fillTriangleDitherBayer2Mode+0x314>
d0054a8a:	eef0 9a4b 	vmov.f32	s19, s22
d0054a8e:	eef0 ba4b 	vmov.f32	s23, s22
d0054a92:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d0054a96:	ed9f 4a6f 	vldr	s8, [pc, #444]	; d0054c54 <fillTriangleDitherBayer2Mode+0x35c>
d0054a9a:	ee32 2a64 	vsub.f32	s4, s4, s9
d0054a9e:	ee31 1a61 	vsub.f32	s2, s2, s3
d0054aa2:	eec0 7aaf 	vdiv.f32	s15, s1, s31
d0054aa6:	eeb4 9ac4 	vcmpe.f32	s18, s8
d0054aaa:	ee72 2ae5 	vsub.f32	s5, s5, s11
d0054aae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054ab2:	ee22 2a27 	vmul.f32	s4, s4, s15
d0054ab6:	ee22 faa7 	vmul.f32	s30, s5, s15
d0054aba:	ed8d 2a08 	vstr	s4, [sp, #32]
d0054abe:	ee21 2a27 	vmul.f32	s4, s2, s15
d0054ac2:	ed8d 2a07 	vstr	s4, [sp, #28]
d0054ac6:	f300 810d 	bgt.w	d0054ce4 <fillTriangleDitherBayer2Mode+0x3ec>
d0054aca:	4a63      	ldr	r2, [pc, #396]	; (d0054c58 <fillTriangleDitherBayer2Mode+0x360>)
d0054acc:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0054ad0:	4b62      	ldr	r3, [pc, #392]	; (d0054c5c <fillTriangleDitherBayer2Mode+0x364>)
d0054ad2:	6812      	ldr	r2, [r2, #0]
d0054ad4:	681b      	ldr	r3, [r3, #0]
d0054ad6:	edcd 7a04 	vstr	s15, [sp, #16]
d0054ada:	9203      	str	r2, [sp, #12]
d0054adc:	9305      	str	r3, [sp, #20]
d0054ade:	eefd 7ae6 	vcvt.s32.f32	s15, s13
d0054ae2:	9a04      	ldr	r2, [sp, #16]
d0054ae4:	9905      	ldr	r1, [sp, #20]
d0054ae6:	4691      	mov	r9, r2
d0054ae8:	9a03      	ldr	r2, [sp, #12]
d0054aea:	ee17 3a90 	vmov	r3, s15
d0054aee:	4591      	cmp	r9, r2
d0054af0:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
d0054af4:	bfb8      	it	lt
d0054af6:	4691      	movlt	r9, r2
d0054af8:	428b      	cmp	r3, r1
d0054afa:	bfa8      	it	ge
d0054afc:	460b      	movge	r3, r1
d0054afe:	454b      	cmp	r3, r9
d0054b00:	f2c0 8084 	blt.w	d0054c0c <fillTriangleDitherBayer2Mode+0x314>
d0054b04:	ee07 9a90 	vmov	s15, r9
d0054b08:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d0054b0c:	3301      	adds	r3, #1
d0054b0e:	eba2 1202 	sub.w	r2, r2, r2, lsl #4
d0054b12:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0054b16:	4952      	ldr	r1, [pc, #328]	; (d0054c60 <fillTriangleDitherBayer2Mode+0x368>)
d0054b18:	0152      	lsls	r2, r2, #5
d0054b1a:	ed9d ba08 	vldr	s22, [sp, #32]
d0054b1e:	eddd aa07 	vldr	s21, [sp, #28]
d0054b22:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0054b26:	9301      	str	r3, [sp, #4]
d0054b28:	680b      	ldr	r3, [r1, #0]
d0054b2a:	ed9f 9a4a 	vldr	s18, [pc, #296]	; d0054c54 <fillTriangleDitherBayer2Mode+0x35c>
d0054b2e:	ee37 5ac5 	vsub.f32	s10, s15, s10
d0054b32:	eddf 0a4c 	vldr	s1, [pc, #304]	; d0054c64 <fillTriangleDitherBayer2Mode+0x36c>
d0054b36:	ee77 3ae3 	vsub.f32	s7, s15, s7
d0054b3a:	ed9f 4a4c 	vldr	s8, [pc, #304]	; d0054c6c <fillTriangleDitherBayer2Mode+0x374>
d0054b3e:	ed9f 1a4a 	vldr	s2, [pc, #296]	; d0054c68 <fillTriangleDitherBayer2Mode+0x370>
d0054b42:	eea0 6a05 	vfma.f32	s12, s0, s10
d0054b46:	9206      	str	r2, [sp, #24]
d0054b48:	eea8 3a05 	vfma.f32	s6, s16, s10
d0054b4c:	9305      	str	r3, [sp, #20]
d0054b4e:	eea8 7a85 	vfma.f32	s14, s17, s10
d0054b52:	eeeb 4a23 	vfma.f32	s9, s22, s7
d0054b56:	eeea 1aa3 	vfma.f32	s3, s21, s7
d0054b5a:	eeef 5a23 	vfma.f32	s11, s30, s7
d0054b5e:	e033      	b.n	d0054bc8 <fillTriangleDitherBayer2Mode+0x2d0>
d0054b60:	eeb0 2a47 	vmov.f32	s4, s14
d0054b64:	eef0 9a43 	vmov.f32	s19, s6
d0054b68:	eef0 6a46 	vmov.f32	s13, s12
d0054b6c:	eef0 3a65 	vmov.f32	s7, s11
d0054b70:	eeb0 5a61 	vmov.f32	s10, s3
d0054b74:	eef0 2a64 	vmov.f32	s5, s9
d0054b78:	fefa 7a66 	vrintp.f32	s15, s13
d0054b7c:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0054b80:	f240 13df 	movw	r3, #479	; 0x1df
d0054b84:	ee17 4a90 	vmov	r4, s15
d0054b88:	fefa 7a62 	vrintp.f32	s15, s5
d0054b8c:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0054b90:	3c01      	subs	r4, #1
d0054b92:	ee17 1a90 	vmov	r1, s15
d0054b96:	429c      	cmp	r4, r3
d0054b98:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d0054b9c:	bfa8      	it	ge
d0054b9e:	461c      	movge	r4, r3
d0054ba0:	42a1      	cmp	r1, r4
d0054ba2:	f340 818e 	ble.w	d0054ec2 <fillTriangleDitherBayer2Mode+0x5ca>
d0054ba6:	f109 0901 	add.w	r9, r9, #1
d0054baa:	9b01      	ldr	r3, [sp, #4]
d0054bac:	ee36 6a00 	vadd.f32	s12, s12, s0
d0054bb0:	4599      	cmp	r9, r3
d0054bb2:	ee33 3a08 	vadd.f32	s6, s6, s16
d0054bb6:	ee37 7a28 	vadd.f32	s14, s14, s17
d0054bba:	ee74 4a8b 	vadd.f32	s9, s9, s22
d0054bbe:	ee71 1aaa 	vadd.f32	s3, s3, s21
d0054bc2:	ee75 5a8f 	vadd.f32	s11, s11, s30
d0054bc6:	d021      	beq.n	d0054c0c <fillTriangleDitherBayer2Mode+0x314>
d0054bc8:	eeb4 6ae4 	vcmpe.f32	s12, s9
d0054bcc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054bd0:	dcc6      	bgt.n	d0054b60 <fillTriangleDitherBayer2Mode+0x268>
d0054bd2:	eeb0 2a65 	vmov.f32	s4, s11
d0054bd6:	eef0 9a61 	vmov.f32	s19, s3
d0054bda:	eef0 6a64 	vmov.f32	s13, s9
d0054bde:	eef0 3a47 	vmov.f32	s7, s14
d0054be2:	eeb0 5a43 	vmov.f32	s10, s6
d0054be6:	eef0 2a46 	vmov.f32	s5, s12
d0054bea:	e7c5      	b.n	d0054b78 <fillTriangleDitherBayer2Mode+0x280>
d0054bec:	eddd 6a0c 	vldr	s13, [sp, #48]	; 0x30
d0054bf0:	ed9d 6a0d 	vldr	s12, [sp, #52]	; 0x34
d0054bf4:	ed9d fa0e 	vldr	s30, [sp, #56]	; 0x38
d0054bf8:	eddd 1a0f 	vldr	s3, [sp, #60]	; 0x3c
d0054bfc:	eddf 7a15 	vldr	s15, [pc, #84]	; d0054c54 <fillTriangleDitherBayer2Mode+0x35c>
d0054c00:	eef4 fae7 	vcmpe.f32	s31, s15
d0054c04:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054c08:	f73f af69 	bgt.w	d0054ade <fillTriangleDitherBayer2Mode+0x1e6>
d0054c0c:	b011      	add	sp, #68	; 0x44
d0054c0e:	ecbd 8b10 	vpop	{d8-d15}
d0054c12:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0054c16:	eef4 3ae6 	vcmpe.f32	s7, s13
d0054c1a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054c1e:	f340 8137 	ble.w	d0054e90 <fillTriangleDitherBayer2Mode+0x598>
d0054c22:	eeb0 8a62 	vmov.f32	s16, s5
d0054c26:	eeb0 0a41 	vmov.f32	s0, s2
d0054c2a:	eef0 0a66 	vmov.f32	s1, s13
d0054c2e:	eeb0 4a42 	vmov.f32	s8, s4
d0054c32:	eef0 2a47 	vmov.f32	s5, s14
d0054c36:	eeb0 1a43 	vmov.f32	s2, s6
d0054c3a:	eef0 6a45 	vmov.f32	s13, s10
d0054c3e:	eeb0 2a46 	vmov.f32	s4, s12
d0054c42:	eeb0 7a48 	vmov.f32	s14, s16
d0054c46:	eeb0 3a40 	vmov.f32	s6, s0
d0054c4a:	eeb0 5a60 	vmov.f32	s10, s1
d0054c4e:	eeb0 6a44 	vmov.f32	s12, s8
d0054c52:	e6c7      	b.n	d00549e4 <fillTriangleDitherBayer2Mode+0xec>
d0054c54:	38d1b717 	.word	0x38d1b717
d0054c58:	d0090f08 	.word	0xd0090f08
d0054c5c:	d0090f0c 	.word	0xd0090f0c
d0054c60:	d0090f10 	.word	0xd0090f10
d0054c64:	33d6bf95 	.word	0x33d6bf95
d0054c68:	477fff00 	.word	0x477fff00
d0054c6c:	00000000 	.word	0x00000000
d0054c70:	404ccccd 	.word	0x404ccccd
d0054c74:	eec9 0a89 	vdiv.f32	s1, s19, s18
d0054c78:	ed1f aa04 	vldr	s20, [pc, #-16]	; d0054c6c <fillTriangleDitherBayer2Mode+0x374>
d0054c7c:	ed5f 9a04 	vldr	s19, [pc, #-16]	; d0054c70 <fillTriangleDitherBayer2Mode+0x378>
d0054c80:	fec7 7a8a 	vmaxnm.f32	s15, s15, s20
d0054c84:	eeb1 ba04 	vmov.f32	s22, #20	; 0x40a00000  5.0
d0054c88:	ee74 aac6 	vsub.f32	s21, s9, s12
d0054c8c:	ee76 fae3 	vsub.f32	s31, s13, s7
d0054c90:	fec7 7acb 	vminnm.f32	s15, s15, s22
d0054c94:	ee67 7aa9 	vmul.f32	s15, s15, s19
d0054c98:	ee71 9ac3 	vsub.f32	s19, s3, s6
d0054c9c:	eef4 fac4 	vcmpe.f32	s31, s8
d0054ca0:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0054ca4:	ee35 bac7 	vsub.f32	s22, s11, s14
d0054ca8:	ee17 3a90 	vmov	r3, s15
d0054cac:	edcd 7a00 	vstr	s15, [sp]
d0054cb0:	2b10      	cmp	r3, #16
d0054cb2:	ee6a 7aa0 	vmul.f32	s15, s21, s1
d0054cb6:	ee2b ba20 	vmul.f32	s22, s22, s1
d0054cba:	bfa8      	it	ge
d0054cbc:	2310      	movge	r3, #16
d0054cbe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054cc2:	eef0 ba67 	vmov.f32	s23, s15
d0054cc6:	ee69 7aa0 	vmul.f32	s15, s19, s1
d0054cca:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d0054cce:	9302      	str	r3, [sp, #8]
d0054cd0:	eef0 9a67 	vmov.f32	s19, s15
d0054cd4:	f73f aedd 	bgt.w	d0054a92 <fillTriangleDitherBayer2Mode+0x19a>
d0054cd8:	eeb0 fa4a 	vmov.f32	s30, s20
d0054cdc:	ed8d aa07 	vstr	s20, [sp, #28]
d0054ce0:	ed8d aa08 	vstr	s20, [sp, #32]
d0054ce4:	eefd 7ae3 	vcvt.s32.f32	s15, s7
d0054ce8:	4bd0      	ldr	r3, [pc, #832]	; (d005502c <fillTriangleDitherBayer2Mode+0x734>)
d0054cea:	4ad1      	ldr	r2, [pc, #836]	; (d0055030 <fillTriangleDitherBayer2Mode+0x738>)
d0054cec:	6819      	ldr	r1, [r3, #0]
d0054cee:	ee17 3a90 	vmov	r3, s15
d0054cf2:	edcd 7a04 	vstr	s15, [sp, #16]
d0054cf6:	eefd 7ac5 	vcvt.s32.f32	s15, s10
d0054cfa:	6812      	ldr	r2, [r2, #0]
d0054cfc:	3b01      	subs	r3, #1
d0054cfe:	9105      	str	r1, [sp, #20]
d0054d00:	9203      	str	r2, [sp, #12]
d0054d02:	ee17 9a90 	vmov	r9, s15
d0054d06:	428b      	cmp	r3, r1
d0054d08:	bfa8      	it	ge
d0054d0a:	460b      	movge	r3, r1
d0054d0c:	4591      	cmp	r9, r2
d0054d0e:	bfb8      	it	lt
d0054d10:	4691      	movlt	r9, r2
d0054d12:	454b      	cmp	r3, r9
d0054d14:	f6ff af72 	blt.w	d0054bfc <fillTriangleDitherBayer2Mode+0x304>
d0054d18:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0054d1c:	3301      	adds	r3, #1
d0054d1e:	eeb0 aa46 	vmov.f32	s20, s12
d0054d22:	49c4      	ldr	r1, [pc, #784]	; (d0055034 <fillTriangleDitherBayer2Mode+0x73c>)
d0054d24:	eba2 1202 	sub.w	r2, r2, r2, lsl #4
d0054d28:	9301      	str	r3, [sp, #4]
d0054d2a:	ee37 4ac5 	vsub.f32	s8, s15, s10
d0054d2e:	ee07 9a90 	vmov	s15, r9
d0054d32:	680b      	ldr	r3, [r1, #0]
d0054d34:	eef0 aa46 	vmov.f32	s21, s12
d0054d38:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0054d3c:	eddf dabe 	vldr	s27, [pc, #760]	; d0055038 <fillTriangleDitherBayer2Mode+0x740>
d0054d40:	eeb0 da43 	vmov.f32	s26, s6
d0054d44:	930a      	str	r3, [sp, #40]	; 0x28
d0054d46:	eef0 ca47 	vmov.f32	s25, s14
d0054d4a:	0153      	lsls	r3, r2, #5
d0054d4c:	ee77 7a84 	vadd.f32	s15, s15, s8
d0054d50:	eddf 2aba 	vldr	s5, [pc, #744]	; d005503c <fillTriangleDitherBayer2Mode+0x744>
d0054d54:	eeb0 ea6b 	vmov.f32	s28, s23
d0054d58:	eddf 0ab9 	vldr	s1, [pc, #740]	; d0055040 <fillTriangleDitherBayer2Mode+0x748>
d0054d5c:	eeb0 ca43 	vmov.f32	s24, s6
d0054d60:	930b      	str	r3, [sp, #44]	; 0x2c
d0054d62:	eea7 aaab 	vfma.f32	s20, s15, s23
d0054d66:	edcd 6a0c 	vstr	s13, [sp, #48]	; 0x30
d0054d6a:	eef0 ba47 	vmov.f32	s23, s14
d0054d6e:	ed8d 6a0d 	vstr	s12, [sp, #52]	; 0x34
d0054d72:	eee0 aa27 	vfma.f32	s21, s0, s15
d0054d76:	ed8d fa0e 	vstr	s30, [sp, #56]	; 0x38
d0054d7a:	eea8 da27 	vfma.f32	s26, s16, s15
d0054d7e:	edcd 1a0f 	vstr	s3, [sp, #60]	; 0x3c
d0054d82:	eee8 caa7 	vfma.f32	s25, s17, s15
d0054d86:	eea7 caa9 	vfma.f32	s24, s15, s19
d0054d8a:	eee7 ba8b 	vfma.f32	s23, s15, s22
d0054d8e:	eef0 ea69 	vmov.f32	s29, s19
d0054d92:	e034      	b.n	d0054dfe <fillTriangleDitherBayer2Mode+0x506>
d0054d94:	eef0 1a6c 	vmov.f32	s3, s25
d0054d98:	eeb0 2a4d 	vmov.f32	s4, s26
d0054d9c:	eef0 7a6a 	vmov.f32	s15, s21
d0054da0:	eeb0 6a6b 	vmov.f32	s12, s23
d0054da4:	eef0 6a4c 	vmov.f32	s13, s24
d0054da8:	eeb0 4a4a 	vmov.f32	s8, s20
d0054dac:	feba 1a67 	vrintp.f32	s2, s15
d0054db0:	eebd 1ac1 	vcvt.s32.f32	s2, s2
d0054db4:	feba 9a44 	vrintp.f32	s18, s8
d0054db8:	f240 13df 	movw	r3, #479	; 0x1df
d0054dbc:	ee11 4a10 	vmov	r4, s2
d0054dc0:	eebd 1ac9 	vcvt.s32.f32	s2, s18
d0054dc4:	3c01      	subs	r4, #1
d0054dc6:	ee11 1a10 	vmov	r1, s2
d0054dca:	429c      	cmp	r4, r3
d0054dcc:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d0054dd0:	bfa8      	it	ge
d0054dd2:	461c      	movge	r4, r3
d0054dd4:	428c      	cmp	r4, r1
d0054dd6:	f280 816e 	bge.w	d00550b6 <fillTriangleDitherBayer2Mode+0x7be>
d0054dda:	f109 0901 	add.w	r9, r9, #1
d0054dde:	9b01      	ldr	r3, [sp, #4]
d0054de0:	ee7a aa80 	vadd.f32	s21, s21, s0
d0054de4:	4599      	cmp	r9, r3
d0054de6:	ee3d da08 	vadd.f32	s26, s26, s16
d0054dea:	ee7c caa8 	vadd.f32	s25, s25, s17
d0054dee:	ee3a aa0e 	vadd.f32	s20, s20, s28
d0054df2:	ee3c ca2e 	vadd.f32	s24, s24, s29
d0054df6:	ee7b ba8b 	vadd.f32	s23, s23, s22
d0054dfa:	f43f aef7 	beq.w	d0054bec <fillTriangleDitherBayer2Mode+0x2f4>
d0054dfe:	eef4 aaca 	vcmpe.f32	s21, s20
d0054e02:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054e06:	dcc5      	bgt.n	d0054d94 <fillTriangleDitherBayer2Mode+0x49c>
d0054e08:	eef0 1a6b 	vmov.f32	s3, s23
d0054e0c:	eeb0 2a4c 	vmov.f32	s4, s24
d0054e10:	eef0 7a4a 	vmov.f32	s15, s20
d0054e14:	eeb0 6a6c 	vmov.f32	s12, s25
d0054e18:	eef0 6a4d 	vmov.f32	s13, s26
d0054e1c:	eeb0 4a6a 	vmov.f32	s8, s21
d0054e20:	e7c4      	b.n	d0054dac <fillTriangleDitherBayer2Mode+0x4b4>
d0054e22:	eef0 0a45 	vmov.f32	s1, s10
d0054e26:	eeb0 5a66 	vmov.f32	s10, s13
d0054e2a:	eeb0 8a47 	vmov.f32	s16, s14
d0054e2e:	eef0 6a60 	vmov.f32	s13, s1
d0054e32:	eeb0 0a43 	vmov.f32	s0, s6
d0054e36:	eeb0 4a46 	vmov.f32	s8, s12
d0054e3a:	eef4 3ae6 	vcmpe.f32	s7, s13
d0054e3e:	eeb0 7a62 	vmov.f32	s14, s5
d0054e42:	eeb0 3a41 	vmov.f32	s6, s2
d0054e46:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054e4a:	eeb0 6a42 	vmov.f32	s12, s4
d0054e4e:	eef0 2a48 	vmov.f32	s5, s16
d0054e52:	eeb0 1a40 	vmov.f32	s2, s0
d0054e56:	eeb0 2a44 	vmov.f32	s4, s8
d0054e5a:	f77f adc3 	ble.w	d00549e4 <fillTriangleDitherBayer2Mode+0xec>
d0054e5e:	eeb0 8a65 	vmov.f32	s16, s11
d0054e62:	eeb0 0a61 	vmov.f32	s0, s3
d0054e66:	eef0 0a63 	vmov.f32	s1, s7
d0054e6a:	eeb0 4a64 	vmov.f32	s8, s9
d0054e6e:	eef0 5a62 	vmov.f32	s11, s5
d0054e72:	eef0 1a41 	vmov.f32	s3, s2
d0054e76:	eef0 3a66 	vmov.f32	s7, s13
d0054e7a:	eef0 4a42 	vmov.f32	s9, s4
d0054e7e:	eef0 2a48 	vmov.f32	s5, s16
d0054e82:	eeb0 1a40 	vmov.f32	s2, s0
d0054e86:	eef0 6a60 	vmov.f32	s13, s1
d0054e8a:	eeb0 2a44 	vmov.f32	s4, s8
d0054e8e:	e5a9      	b.n	d00549e4 <fillTriangleDitherBayer2Mode+0xec>
d0054e90:	eeb0 8a47 	vmov.f32	s16, s14
d0054e94:	eeb0 0a43 	vmov.f32	s0, s6
d0054e98:	eef0 0a45 	vmov.f32	s1, s10
d0054e9c:	eeb0 4a46 	vmov.f32	s8, s12
d0054ea0:	eeb0 7a65 	vmov.f32	s14, s11
d0054ea4:	eeb0 3a61 	vmov.f32	s6, s3
d0054ea8:	eeb0 5a63 	vmov.f32	s10, s7
d0054eac:	eeb0 6a64 	vmov.f32	s12, s9
d0054eb0:	eef0 5a48 	vmov.f32	s11, s16
d0054eb4:	eef0 1a40 	vmov.f32	s3, s0
d0054eb8:	eef0 3a60 	vmov.f32	s7, s1
d0054ebc:	eef0 4a44 	vmov.f32	s9, s8
d0054ec0:	e58a      	b.n	d00549d8 <fillTriangleDitherBayer2Mode+0xe0>
d0054ec2:	ee76 6ae2 	vsub.f32	s13, s13, s5
d0054ec6:	eef4 6ac9 	vcmpe.f32	s13, s18
d0054eca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054ece:	f340 8216 	ble.w	d00552fe <fillTriangleDitherBayer2Mode+0xa06>
d0054ed2:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0054ed6:	ee79 9ac5 	vsub.f32	s19, s19, s10
d0054eda:	ee32 2a63 	vsub.f32	s4, s4, s7
d0054ede:	ee87 aaa6 	vdiv.f32	s20, s15, s13
d0054ee2:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d0054ee6:	ee77 2ae2 	vsub.f32	s5, s15, s5
d0054eea:	ee07 1a90 	vmov	s15, r1
d0054eee:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0054ef2:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0054ef6:	ee69 9a8a 	vmul.f32	s19, s19, s20
d0054efa:	ee22 aa0a 	vmul.f32	s20, s4, s20
d0054efe:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0054f02:	eee7 3a8a 	vfma.f32	s7, s15, s20
d0054f06:	ebc9 1c09 	rsb	ip, r9, r9, lsl #4
d0054f0a:	4b4e      	ldr	r3, [pc, #312]	; (d0055044 <fillTriangleDitherBayer2Mode+0x74c>)
d0054f0c:	eb01 0781 	add.w	r7, r1, r1, lsl #2
d0054f10:	9806      	ldr	r0, [sp, #24]
d0054f12:	f009 0203 	and.w	r2, r9, #3
d0054f16:	681d      	ldr	r5, [r3, #0]
d0054f18:	eb00 1c4c 	add.w	ip, r0, ip, lsl #5
d0054f1c:	484a      	ldr	r0, [pc, #296]	; (d0055048 <fillTriangleDitherBayer2Mode+0x750>)
d0054f1e:	eb09 1387 	add.w	r3, r9, r7, lsl #6
d0054f22:	f8cd 900c 	str.w	r9, [sp, #12]
d0054f26:	448c      	add	ip, r1
d0054f28:	eeb6 2a00 	vmov.f32	s4, #96	; 0x3f000000  0.5
d0054f2c:	18ef      	adds	r7, r5, r3
d0054f2e:	eb00 0382 	add.w	r3, r0, r2, lsl #2
d0054f32:	9a05      	ldr	r2, [sp, #20]
d0054f34:	4699      	mov	r9, r3
d0054f36:	eb02 0c4c 	add.w	ip, r2, ip, lsl #1
d0054f3a:	e010      	b.n	d0054f5e <fillTriangleDitherBayer2Mode+0x666>
d0054f3c:	ee07 3a90 	vmov	s15, r3
d0054f40:	4419      	add	r1, r3
d0054f42:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0054f46:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0054f4a:	428c      	cmp	r4, r1
d0054f4c:	eb0c 0c43 	add.w	ip, ip, r3, lsl #1
d0054f50:	eb07 1782 	add.w	r7, r7, r2, lsl #6
d0054f54:	eea7 5aa9 	vfma.f32	s10, s15, s19
d0054f58:	eee7 3a8a 	vfma.f32	s7, s15, s20
d0054f5c:	db62      	blt.n	d0055024 <fillTriangleDitherBayer2Mode+0x72c>
d0054f5e:	eba4 0e01 	sub.w	lr, r4, r1
d0054f62:	eeb4 5ae0 	vcmpe.f32	s10, s1
d0054f66:	f10e 0301 	add.w	r3, lr, #1
d0054f6a:	2b30      	cmp	r3, #48	; 0x30
d0054f6c:	bfa8      	it	ge
d0054f6e:	2330      	movge	r3, #48	; 0x30
d0054f70:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054f74:	d9e2      	bls.n	d0054f3c <fillTriangleDitherBayer2Mode+0x644>
d0054f76:	f1be 0f00 	cmp.w	lr, #0
d0054f7a:	eec3 7a85 	vdiv.f32	s15, s7, s10
d0054f7e:	dd67      	ble.n	d0055050 <fillTriangleDitherBayer2Mode+0x758>
d0054f80:	1e5a      	subs	r2, r3, #1
d0054f82:	ee06 2a90 	vmov	s13, r2
d0054f86:	eef0 2a45 	vmov.f32	s5, s10
d0054f8a:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0054f8e:	eee6 2aa9 	vfma.f32	s5, s13, s19
d0054f92:	eef4 2ae0 	vcmpe.f32	s5, s1
d0054f96:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0054f9a:	dd5a      	ble.n	d0055052 <fillTriangleDitherBayer2Mode+0x75a>
d0054f9c:	eeb0 ca63 	vmov.f32	s24, s7
d0054fa0:	9a00      	ldr	r2, [sp, #0]
d0054fa2:	2a0f      	cmp	r2, #15
d0054fa4:	eea6 ca8a 	vfma.f32	s24, s13, s20
d0054fa8:	eecc ba22 	vdiv.f32	s23, s24, s5
d0054fac:	ee7b bae7 	vsub.f32	s23, s23, s15
d0054fb0:	eecb 2aa6 	vdiv.f32	s5, s23, s13
d0054fb4:	dd52      	ble.n	d005505c <fillTriangleDitherBayer2Mode+0x764>
d0054fb6:	f1ac 0602 	sub.w	r6, ip, #2
d0054fba:	2200      	movs	r2, #0
d0054fbc:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d0054fc0:	fec6 6ac1 	vminnm.f32	s13, s13, s2
d0054fc4:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d0054fc8:	f836 8f02 	ldrh.w	r8, [r6, #2]!
d0054fcc:	3201      	adds	r2, #1
d0054fce:	ee76 6a82 	vadd.f32	s13, s13, s4
d0054fd2:	0185      	lsls	r5, r0, #6
d0054fd4:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0054fd8:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d0054fdc:	ee16 0a90 	vmov	r0, s13
d0054fe0:	b280      	uxth	r0, r0
d0054fe2:	4580      	cmp	r8, r0
d0054fe4:	d903      	bls.n	d0054fee <fillTriangleDitherBayer2Mode+0x6f6>
d0054fe6:	8030      	strh	r0, [r6, #0]
d0054fe8:	f04f 0010 	mov.w	r0, #16
d0054fec:	5578      	strb	r0, [r7, r5]
d0054fee:	4293      	cmp	r3, r2
d0054ff0:	dce4      	bgt.n	d0054fbc <fillTriangleDitherBayer2Mode+0x6c4>
d0054ff2:	f1be 0f00 	cmp.w	lr, #0
d0054ff6:	eb03 0283 	add.w	r2, r3, r3, lsl #2
d0054ffa:	ea4f 0043 	mov.w	r0, r3, lsl #1
d0054ffe:	ea4f 1282 	mov.w	r2, r2, lsl #6
d0055002:	bfbc      	itt	lt
d0055004:	2002      	movlt	r0, #2
d0055006:	f44f 72a0 	movlt.w	r2, #320	; 0x140
d005500a:	4484      	add	ip, r0
d005500c:	4417      	add	r7, r2
d005500e:	ee07 3a90 	vmov	s15, r3
d0055012:	4419      	add	r1, r3
d0055014:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0055018:	428c      	cmp	r4, r1
d005501a:	eea7 5aa9 	vfma.f32	s10, s15, s19
d005501e:	eee7 3a8a 	vfma.f32	s7, s15, s20
d0055022:	da9c      	bge.n	d0054f5e <fillTriangleDitherBayer2Mode+0x666>
d0055024:	f8dd 900c 	ldr.w	r9, [sp, #12]
d0055028:	e5bd      	b.n	d0054ba6 <fillTriangleDitherBayer2Mode+0x2ae>
d005502a:	bf00      	nop
d005502c:	d0090f0c 	.word	0xd0090f0c
d0055030:	d0090f08 	.word	0xd0090f08
d0055034:	d0090f10 	.word	0xd0090f10
d0055038:	33d6bf95 	.word	0x33d6bf95
d005503c:	00000000 	.word	0x00000000
d0055040:	477fff00 	.word	0x477fff00
d0055044:	d012b284 	.word	0xd012b284
d0055048:	d005c334 	.word	0xd005c334
d005504c:	38d1b717 	.word	0x38d1b717
d0055050:	d1dd      	bne.n	d005500e <fillTriangleDitherBayer2Mode+0x716>
d0055052:	9a00      	ldr	r2, [sp, #0]
d0055054:	eef0 2a44 	vmov.f32	s5, s8
d0055058:	2a0f      	cmp	r2, #15
d005505a:	dcac      	bgt.n	d0054fb6 <fillTriangleDitherBayer2Mode+0x6be>
d005505c:	2a00      	cmp	r2, #0
d005505e:	f340 8130 	ble.w	d00552c2 <fillTriangleDitherBayer2Mode+0x9ca>
d0055062:	9404      	str	r4, [sp, #16]
d0055064:	f1ac 0802 	sub.w	r8, ip, #2
d0055068:	2200      	movs	r2, #0
d005506a:	9c02      	ldr	r4, [sp, #8]
d005506c:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d0055070:	fec6 6ac1 	vminnm.f32	s13, s13, s2
d0055074:	ee76 6a82 	vadd.f32	s13, s13, s4
d0055078:	f838 af02 	ldrh.w	sl, [r8, #2]!
d005507c:	188e      	adds	r6, r1, r2
d005507e:	eb02 0582 	add.w	r5, r2, r2, lsl #2
d0055082:	ee77 7aa2 	vadd.f32	s15, s15, s5
d0055086:	3201      	adds	r2, #1
d0055088:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d005508c:	f006 0603 	and.w	r6, r6, #3
d0055090:	01ad      	lsls	r5, r5, #6
d0055092:	ee16 0a90 	vmov	r0, s13
d0055096:	b280      	uxth	r0, r0
d0055098:	4582      	cmp	sl, r0
d005509a:	d908      	bls.n	d00550ae <fillTriangleDitherBayer2Mode+0x7b6>
d005509c:	f8a8 0000 	strh.w	r0, [r8]
d00550a0:	f819 0006 	ldrb.w	r0, [r9, r6]
d00550a4:	42a0      	cmp	r0, r4
d00550a6:	bfac      	ite	ge
d00550a8:	4658      	movge	r0, fp
d00550aa:	2010      	movlt	r0, #16
d00550ac:	5578      	strb	r0, [r7, r5]
d00550ae:	4293      	cmp	r3, r2
d00550b0:	dcdc      	bgt.n	d005506c <fillTriangleDitherBayer2Mode+0x774>
d00550b2:	9c04      	ldr	r4, [sp, #16]
d00550b4:	e79d      	b.n	d0054ff2 <fillTriangleDitherBayer2Mode+0x6fa>
d00550b6:	ee77 7ac4 	vsub.f32	s15, s15, s8
d00550ba:	ed1f 1a1c 	vldr	s2, [pc, #-112]	; d005504c <fillTriangleDitherBayer2Mode+0x754>
d00550be:	eef4 7ac1 	vcmpe.f32	s15, s2
d00550c2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00550c6:	f340 811f 	ble.w	d0055308 <fillTriangleDitherBayer2Mode+0xa10>
d00550ca:	eeb7 9a00 	vmov.f32	s18, #112	; 0x3f800000  1.0
d00550ce:	ee32 2a66 	vsub.f32	s4, s4, s13
d00550d2:	ee71 1ac6 	vsub.f32	s3, s3, s12
d00550d6:	ee89 1a27 	vdiv.f32	s2, s18, s15
d00550da:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
d00550de:	ee37 4ac4 	vsub.f32	s8, s15, s8
d00550e2:	ee07 1a90 	vmov	s15, r1
d00550e6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00550ea:	ee77 7a84 	vadd.f32	s15, s15, s8
d00550ee:	ee22 2a01 	vmul.f32	s4, s4, s2
d00550f2:	ee61 1a81 	vmul.f32	s3, s3, s2
d00550f6:	eee7 6a82 	vfma.f32	s13, s15, s4
d00550fa:	eea7 6aa1 	vfma.f32	s12, s15, s3
d00550fe:	ebc9 1c09 	rsb	ip, r9, r9, lsl #4
d0055102:	4b84      	ldr	r3, [pc, #528]	; (d0055314 <fillTriangleDitherBayer2Mode+0xa1c>)
d0055104:	eb01 0781 	add.w	r7, r1, r1, lsl #2
d0055108:	980b      	ldr	r0, [sp, #44]	; 0x2c
d005510a:	f009 0203 	and.w	r2, r9, #3
d005510e:	681d      	ldr	r5, [r3, #0]
d0055110:	eb00 1c4c 	add.w	ip, r0, ip, lsl #5
d0055114:	4880      	ldr	r0, [pc, #512]	; (d0055318 <fillTriangleDitherBayer2Mode+0xa20>)
d0055116:	eb09 1387 	add.w	r3, r9, r7, lsl #6
d005511a:	f8cd 9018 	str.w	r9, [sp, #24]
d005511e:	448c      	add	ip, r1
d0055120:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
d0055124:	18ef      	adds	r7, r5, r3
d0055126:	eb00 0382 	add.w	r3, r0, r2, lsl #2
d005512a:	9a0a      	ldr	r2, [sp, #40]	; 0x28
d005512c:	4699      	mov	r9, r3
d005512e:	eb02 0c4c 	add.w	ip, r2, ip, lsl #1
d0055132:	e010      	b.n	d0055156 <fillTriangleDitherBayer2Mode+0x85e>
d0055134:	ee07 2a90 	vmov	s15, r2
d0055138:	4411      	add	r1, r2
d005513a:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d005513e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0055142:	428c      	cmp	r4, r1
d0055144:	eb0c 0c42 	add.w	ip, ip, r2, lsl #1
d0055148:	eb07 1783 	add.w	r7, r7, r3, lsl #6
d005514c:	eee7 6a82 	vfma.f32	s13, s15, s4
d0055150:	eea7 6aa1 	vfma.f32	s12, s15, s3
d0055154:	db62      	blt.n	d005521c <fillTriangleDitherBayer2Mode+0x924>
d0055156:	eba4 0e01 	sub.w	lr, r4, r1
d005515a:	eef4 6aed 	vcmpe.f32	s13, s27
d005515e:	f10e 0201 	add.w	r2, lr, #1
d0055162:	2a30      	cmp	r2, #48	; 0x30
d0055164:	bfa8      	it	ge
d0055166:	2230      	movge	r2, #48	; 0x30
d0055168:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005516c:	d9e2      	bls.n	d0055134 <fillTriangleDitherBayer2Mode+0x83c>
d005516e:	f1be 0f00 	cmp.w	lr, #0
d0055172:	eec6 7a26 	vdiv.f32	s15, s12, s13
d0055176:	dd54      	ble.n	d0055222 <fillTriangleDitherBayer2Mode+0x92a>
d0055178:	1e53      	subs	r3, r2, #1
d005517a:	ee01 3a10 	vmov	s2, r3
d005517e:	eeb0 9a66 	vmov.f32	s18, s13
d0055182:	eeb8 1ac1 	vcvt.f32.s32	s2, s2
d0055186:	eea1 9a02 	vfma.f32	s18, s2, s4
d005518a:	eeb4 9aed 	vcmpe.f32	s18, s27
d005518e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055192:	dd47      	ble.n	d0055224 <fillTriangleDitherBayer2Mode+0x92c>
d0055194:	eeb0 fa46 	vmov.f32	s30, s12
d0055198:	9b00      	ldr	r3, [sp, #0]
d005519a:	2b0f      	cmp	r3, #15
d005519c:	eea1 fa21 	vfma.f32	s30, s2, s3
d00551a0:	eecf 9a09 	vdiv.f32	s19, s30, s18
d00551a4:	ee79 9ae7 	vsub.f32	s19, s19, s15
d00551a8:	ee89 9a81 	vdiv.f32	s18, s19, s2
d00551ac:	dd3f      	ble.n	d005522e <fillTriangleDitherBayer2Mode+0x936>
d00551ae:	f1ac 0602 	sub.w	r6, ip, #2
d00551b2:	2000      	movs	r0, #0
d00551b4:	fe87 1aa2 	vmaxnm.f32	s2, s15, s5
d00551b8:	fe81 1a60 	vminnm.f32	s2, s2, s1
d00551bc:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d00551c0:	f836 8f02 	ldrh.w	r8, [r6, #2]!
d00551c4:	3001      	adds	r0, #1
d00551c6:	ee31 1a04 	vadd.f32	s2, s2, s8
d00551ca:	019d      	lsls	r5, r3, #6
d00551cc:	ee77 7a89 	vadd.f32	s15, s15, s18
d00551d0:	eebc 1ac1 	vcvt.u32.f32	s2, s2
d00551d4:	ee11 3a10 	vmov	r3, s2
d00551d8:	b29b      	uxth	r3, r3
d00551da:	4598      	cmp	r8, r3
d00551dc:	d903      	bls.n	d00551e6 <fillTriangleDitherBayer2Mode+0x8ee>
d00551de:	8033      	strh	r3, [r6, #0]
d00551e0:	f04f 0310 	mov.w	r3, #16
d00551e4:	557b      	strb	r3, [r7, r5]
d00551e6:	4282      	cmp	r2, r0
d00551e8:	dce4      	bgt.n	d00551b4 <fillTriangleDitherBayer2Mode+0x8bc>
d00551ea:	f1be 0f00 	cmp.w	lr, #0
d00551ee:	eb02 0382 	add.w	r3, r2, r2, lsl #2
d00551f2:	ea4f 0042 	mov.w	r0, r2, lsl #1
d00551f6:	ea4f 1383 	mov.w	r3, r3, lsl #6
d00551fa:	bfbc      	itt	lt
d00551fc:	2002      	movlt	r0, #2
d00551fe:	f44f 73a0 	movlt.w	r3, #320	; 0x140
d0055202:	4484      	add	ip, r0
d0055204:	441f      	add	r7, r3
d0055206:	ee07 2a90 	vmov	s15, r2
d005520a:	4411      	add	r1, r2
d005520c:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0055210:	428c      	cmp	r4, r1
d0055212:	eee7 6a82 	vfma.f32	s13, s15, s4
d0055216:	eea7 6aa1 	vfma.f32	s12, s15, s3
d005521a:	da9c      	bge.n	d0055156 <fillTriangleDitherBayer2Mode+0x85e>
d005521c:	f8dd 9018 	ldr.w	r9, [sp, #24]
d0055220:	e5db      	b.n	d0054dda <fillTriangleDitherBayer2Mode+0x4e2>
d0055222:	d1f0      	bne.n	d0055206 <fillTriangleDitherBayer2Mode+0x90e>
d0055224:	9b00      	ldr	r3, [sp, #0]
d0055226:	eeb0 9a62 	vmov.f32	s18, s5
d005522a:	2b0f      	cmp	r3, #15
d005522c:	dcbf      	bgt.n	d00551ae <fillTriangleDitherBayer2Mode+0x8b6>
d005522e:	2b00      	cmp	r3, #0
d0055230:	dd29      	ble.n	d0055286 <fillTriangleDitherBayer2Mode+0x98e>
d0055232:	9409      	str	r4, [sp, #36]	; 0x24
d0055234:	f1ac 0802 	sub.w	r8, ip, #2
d0055238:	2000      	movs	r0, #0
d005523a:	9c02      	ldr	r4, [sp, #8]
d005523c:	fe87 1aa2 	vmaxnm.f32	s2, s15, s5
d0055240:	fe81 1a60 	vminnm.f32	s2, s2, s1
d0055244:	ee31 1a04 	vadd.f32	s2, s2, s8
d0055248:	f838 af02 	ldrh.w	sl, [r8, #2]!
d005524c:	180e      	adds	r6, r1, r0
d005524e:	eb00 0580 	add.w	r5, r0, r0, lsl #2
d0055252:	ee77 7a89 	vadd.f32	s15, s15, s18
d0055256:	3001      	adds	r0, #1
d0055258:	eebc 1ac1 	vcvt.u32.f32	s2, s2
d005525c:	f006 0603 	and.w	r6, r6, #3
d0055260:	01ad      	lsls	r5, r5, #6
d0055262:	ee11 3a10 	vmov	r3, s2
d0055266:	b29b      	uxth	r3, r3
d0055268:	459a      	cmp	sl, r3
d005526a:	d908      	bls.n	d005527e <fillTriangleDitherBayer2Mode+0x986>
d005526c:	f8a8 3000 	strh.w	r3, [r8]
d0055270:	f819 3006 	ldrb.w	r3, [r9, r6]
d0055274:	42a3      	cmp	r3, r4
d0055276:	bfac      	ite	ge
d0055278:	465b      	movge	r3, fp
d005527a:	2310      	movlt	r3, #16
d005527c:	557b      	strb	r3, [r7, r5]
d005527e:	4282      	cmp	r2, r0
d0055280:	dcdc      	bgt.n	d005523c <fillTriangleDitherBayer2Mode+0x944>
d0055282:	9c09      	ldr	r4, [sp, #36]	; 0x24
d0055284:	e7b1      	b.n	d00551ea <fillTriangleDitherBayer2Mode+0x8f2>
d0055286:	f1ac 0602 	sub.w	r6, ip, #2
d005528a:	2000      	movs	r0, #0
d005528c:	fe87 1aa2 	vmaxnm.f32	s2, s15, s5
d0055290:	fe81 1a60 	vminnm.f32	s2, s2, s1
d0055294:	ee31 1a04 	vadd.f32	s2, s2, s8
d0055298:	eb00 0380 	add.w	r3, r0, r0, lsl #2
d005529c:	f836 8f02 	ldrh.w	r8, [r6, #2]!
d00552a0:	ee77 7a89 	vadd.f32	s15, s15, s18
d00552a4:	019d      	lsls	r5, r3, #6
d00552a6:	3001      	adds	r0, #1
d00552a8:	eebc 1ac1 	vcvt.u32.f32	s2, s2
d00552ac:	ee11 3a10 	vmov	r3, s2
d00552b0:	b29b      	uxth	r3, r3
d00552b2:	4598      	cmp	r8, r3
d00552b4:	d902      	bls.n	d00552bc <fillTriangleDitherBayer2Mode+0x9c4>
d00552b6:	8033      	strh	r3, [r6, #0]
d00552b8:	f807 b005 	strb.w	fp, [r7, r5]
d00552bc:	4282      	cmp	r2, r0
d00552be:	dce5      	bgt.n	d005528c <fillTriangleDitherBayer2Mode+0x994>
d00552c0:	e793      	b.n	d00551ea <fillTriangleDitherBayer2Mode+0x8f2>
d00552c2:	f1ac 0602 	sub.w	r6, ip, #2
d00552c6:	2200      	movs	r2, #0
d00552c8:	fec7 6a84 	vmaxnm.f32	s13, s15, s8
d00552cc:	fec6 6ac1 	vminnm.f32	s13, s13, s2
d00552d0:	ee76 6a82 	vadd.f32	s13, s13, s4
d00552d4:	eb02 0082 	add.w	r0, r2, r2, lsl #2
d00552d8:	f836 8f02 	ldrh.w	r8, [r6, #2]!
d00552dc:	ee77 7aa2 	vadd.f32	s15, s15, s5
d00552e0:	0185      	lsls	r5, r0, #6
d00552e2:	3201      	adds	r2, #1
d00552e4:	eefc 6ae6 	vcvt.u32.f32	s13, s13
d00552e8:	ee16 0a90 	vmov	r0, s13
d00552ec:	b280      	uxth	r0, r0
d00552ee:	4580      	cmp	r8, r0
d00552f0:	d902      	bls.n	d00552f8 <fillTriangleDitherBayer2Mode+0xa00>
d00552f2:	8030      	strh	r0, [r6, #0]
d00552f4:	f807 b005 	strb.w	fp, [r7, r5]
d00552f8:	4293      	cmp	r3, r2
d00552fa:	dce5      	bgt.n	d00552c8 <fillTriangleDitherBayer2Mode+0x9d0>
d00552fc:	e679      	b.n	d0054ff2 <fillTriangleDitherBayer2Mode+0x6fa>
d00552fe:	eeb0 aa44 	vmov.f32	s20, s8
d0055302:	eef0 9a44 	vmov.f32	s19, s8
d0055306:	e5fe      	b.n	d0054f06 <fillTriangleDitherBayer2Mode+0x60e>
d0055308:	eef0 1a62 	vmov.f32	s3, s5
d005530c:	eeb0 2a62 	vmov.f32	s4, s5
d0055310:	e6f5      	b.n	d00550fe <fillTriangleDitherBayer2Mode+0x806>
d0055312:	bf00      	nop
d0055314:	d012b284 	.word	0xd012b284
d0055318:	d005c334 	.word	0xd005c334

d005531c <vec3Add>:
d005531c:	ee30 0a21 	vadd.f32	s0, s0, s3
d0055320:	b08e      	sub	sp, #56	; 0x38
d0055322:	ee70 0a82 	vadd.f32	s1, s1, s4
d0055326:	ee31 1a22 	vadd.f32	s2, s2, s5
d005532a:	b00e      	add	sp, #56	; 0x38
d005532c:	4770      	bx	lr
d005532e:	bf00      	nop

d0055330 <vec3Scale>:
d0055330:	ee20 0a21 	vmul.f32	s0, s0, s3
d0055334:	b08c      	sub	sp, #48	; 0x30
d0055336:	ee61 0aa0 	vmul.f32	s1, s3, s1
d005533a:	ee21 1a81 	vmul.f32	s2, s3, s2
d005533e:	b00c      	add	sp, #48	; 0x30
d0055340:	4770      	bx	lr
d0055342:	bf00      	nop

d0055344 <vec3Dot>:
d0055344:	ee20 2a82 	vmul.f32	s4, s1, s4
d0055348:	b086      	sub	sp, #24
d005534a:	eea0 2a21 	vfma.f32	s4, s0, s3
d005534e:	eea1 2a22 	vfma.f32	s4, s2, s5
d0055352:	eeb0 0a42 	vmov.f32	s0, s4
d0055356:	b006      	add	sp, #24
d0055358:	4770      	bx	lr
d005535a:	bf00      	nop

d005535c <vec3Cross>:
d005535c:	eeb0 7a60 	vmov.f32	s14, s1
d0055360:	b08e      	sub	sp, #56	; 0x38
d0055362:	eef0 7a40 	vmov.f32	s15, s0
d0055366:	ee62 0ac0 	vnmul.f32	s1, s5, s0
d005536a:	ee61 6ac7 	vnmul.f32	s13, s3, s14
d005536e:	ee22 0a41 	vnmul.f32	s0, s4, s2
d0055372:	eee1 0a21 	vfma.f32	s1, s2, s3
d0055376:	eee7 6a82 	vfma.f32	s13, s15, s4
d005537a:	eea7 0a22 	vfma.f32	s0, s14, s5
d005537e:	eeb0 1a66 	vmov.f32	s2, s13
d0055382:	b00e      	add	sp, #56	; 0x38
d0055384:	4770      	bx	lr
d0055386:	bf00      	nop

d0055388 <vec3Normalize>:
d0055388:	ee60 7aa0 	vmul.f32	s15, s1, s1
d005538c:	ed9f 7a22 	vldr	s14, [pc, #136]	; d0055418 <vec3Normalize+0x90>
d0055390:	b08c      	sub	sp, #48	; 0x30
d0055392:	eee0 7a00 	vfma.f32	s15, s0, s0
d0055396:	eee1 7a01 	vfma.f32	s15, s2, s2
d005539a:	eef4 7ac7 	vcmpe.f32	s15, s14
d005539e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00553a2:	d934      	bls.n	d005540e <vec3Normalize+0x86>
d00553a4:	ed9f 7a1d 	vldr	s14, [pc, #116]	; d005541c <vec3Normalize+0x94>
d00553a8:	eef4 7a47 	vcmp.f32	s15, s14
d00553ac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00553b0:	dd06      	ble.n	d00553c0 <vec3Normalize+0x38>
d00553b2:	ed9f 7a1b 	vldr	s14, [pc, #108]	; d0055420 <vec3Normalize+0x98>
d00553b6:	eef4 7a47 	vcmp.f32	s15, s14
d00553ba:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00553be:	d418      	bmi.n	d00553f2 <vec3Normalize+0x6a>
d00553c0:	ee17 2a90 	vmov	r2, s15
d00553c4:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d00553c8:	4b16      	ldr	r3, [pc, #88]	; (d0055424 <vec3Normalize+0x9c>)
d00553ca:	eeb7 7a08 	vmov.f32	s14, #120	; 0x3fc00000  1.5
d00553ce:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d00553d2:	ee67 7a86 	vmul.f32	s15, s15, s12
d00553d6:	ee06 3a90 	vmov	s13, r3
d00553da:	ee67 7aa6 	vmul.f32	s15, s15, s13
d00553de:	eea6 7ae7 	vfms.f32	s14, s13, s15
d00553e2:	ee67 7a26 	vmul.f32	s15, s14, s13
d00553e6:	ee27 0a80 	vmul.f32	s0, s15, s0
d00553ea:	ee67 0aa0 	vmul.f32	s1, s15, s1
d00553ee:	ee27 1a81 	vmul.f32	s2, s15, s2
d00553f2:	ed8d 0a09 	vstr	s0, [sp, #36]	; 0x24
d00553f6:	edcd 0a0a 	vstr	s1, [sp, #40]	; 0x28
d00553fa:	ed8d 1a0b 	vstr	s2, [sp, #44]	; 0x2c
d00553fe:	ed9d 0a09 	vldr	s0, [sp, #36]	; 0x24
d0055402:	eddd 0a0a 	vldr	s1, [sp, #40]	; 0x28
d0055406:	ed9d 1a0b 	vldr	s2, [sp, #44]	; 0x2c
d005540a:	b00c      	add	sp, #48	; 0x30
d005540c:	4770      	bx	lr
d005540e:	2300      	movs	r3, #0
d0055410:	9309      	str	r3, [sp, #36]	; 0x24
d0055412:	930a      	str	r3, [sp, #40]	; 0x28
d0055414:	930b      	str	r3, [sp, #44]	; 0x2c
d0055416:	e7f2      	b.n	d00553fe <vec3Normalize+0x76>
d0055418:	358637bd 	.word	0x358637bd
d005541c:	3f7fbe77 	.word	0x3f7fbe77
d0055420:	3f8020c5 	.word	0x3f8020c5
d0055424:	5f3759df 	.word	0x5f3759df

d0055428 <rotateAroundAxis>:
d0055428:	ee62 7a02 	vmul.f32	s15, s4, s4
d005542c:	ed9f 7a51 	vldr	s14, [pc, #324]	; d0055574 <rotateAroundAxis+0x14c>
d0055430:	b500      	push	{lr}
d0055432:	eee1 7aa1 	vfma.f32	s15, s3, s3
d0055436:	ed2d 8b0c 	vpush	{d8-d13}
d005543a:	eef0 ca40 	vmov.f32	s25, s0
d005543e:	b08f      	sub	sp, #60	; 0x3c
d0055440:	eeb0 ca60 	vmov.f32	s24, s1
d0055444:	eef0 ba41 	vmov.f32	s23, s2
d0055448:	eee2 7aa2 	vfma.f32	s15, s5, s5
d005544c:	eeb0 da43 	vmov.f32	s26, s6
d0055450:	eef4 7ac7 	vcmpe.f32	s15, s14
d0055454:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055458:	d97c      	bls.n	d0055554 <rotateAroundAxis+0x12c>
d005545a:	ed9f 7a47 	vldr	s14, [pc, #284]	; d0055578 <rotateAroundAxis+0x150>
d005545e:	eef4 7a47 	vcmp.f32	s15, s14
d0055462:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055466:	dd55      	ble.n	d0055514 <rotateAroundAxis+0xec>
d0055468:	ed9f 7a44 	vldr	s14, [pc, #272]	; d005557c <rotateAroundAxis+0x154>
d005546c:	eef4 7a47 	vcmp.f32	s15, s14
d0055470:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055474:	d54e      	bpl.n	d0055514 <rotateAroundAxis+0xec>
d0055476:	eef0 da42 	vmov.f32	s27, s4
d005547a:	eeb0 9a61 	vmov.f32	s18, s3
d005547e:	eeb0 8a62 	vmov.f32	s16, s5
d0055482:	ee60 8a82 	vmul.f32	s17, s1, s4
d0055486:	ee62 5ae0 	vnmul.f32	s11, s5, s1
d005548a:	ee21 6ac1 	vnmul.f32	s12, s3, s2
d005548e:	eeec 8a89 	vfma.f32	s17, s25, s18
d0055492:	ee6d 7aec 	vnmul.f32	s15, s27, s25
d0055496:	eeeb 5aad 	vfma.f32	s11, s23, s27
d005549a:	eeac 6a88 	vfma.f32	s12, s25, s16
d005549e:	eeec 7a09 	vfma.f32	s15, s24, s18
d00554a2:	eeeb 8a88 	vfma.f32	s17, s23, s16
d00554a6:	eeb0 ba65 	vmov.f32	s22, s11
d00554aa:	eeb0 aa46 	vmov.f32	s20, s12
d00554ae:	eef0 aa67 	vmov.f32	s21, s15
d00554b2:	eeb0 0a4d 	vmov.f32	s0, s26
d00554b6:	f006 f81b 	bl	d005b4f0 <cosf>
d00554ba:	eef0 9a40 	vmov.f32	s19, s0
d00554be:	eeb0 0a4d 	vmov.f32	s0, s26
d00554c2:	f006 f9f9 	bl	d005b8b8 <sinf>
d00554c6:	ee60 5a0b 	vmul.f32	s11, s0, s22
d00554ca:	ee20 6a0a 	vmul.f32	s12, s0, s20
d00554ce:	ee60 7a2a 	vmul.f32	s15, s0, s21
d00554d2:	eee9 5aac 	vfma.f32	s11, s19, s25
d00554d6:	eea9 6a8c 	vfma.f32	s12, s19, s24
d00554da:	eee9 7aab 	vfma.f32	s15, s19, s23
d00554de:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d00554e2:	ee29 9a28 	vmul.f32	s18, s18, s17
d00554e6:	ee2d 7aa8 	vmul.f32	s14, s27, s17
d00554ea:	ee76 9ae9 	vsub.f32	s19, s13, s19
d00554ee:	ee28 8a28 	vmul.f32	s16, s16, s17
d00554f2:	eeb0 0a65 	vmov.f32	s0, s11
d00554f6:	eef0 0a46 	vmov.f32	s1, s12
d00554fa:	eeb0 1a67 	vmov.f32	s2, s15
d00554fe:	eea9 0a89 	vfma.f32	s0, s19, s18
d0055502:	eee9 0a87 	vfma.f32	s1, s19, s14
d0055506:	eea9 1a88 	vfma.f32	s2, s19, s16
d005550a:	b00f      	add	sp, #60	; 0x3c
d005550c:	ecbd 8b0c 	vpop	{d8-d13}
d0055510:	f85d fb04 	ldr.w	pc, [sp], #4
d0055514:	ee17 2a90 	vmov	r2, s15
d0055518:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d005551c:	4b18      	ldr	r3, [pc, #96]	; (d0055580 <rotateAroundAxis+0x158>)
d005551e:	eeb7 8a08 	vmov.f32	s16, #120	; 0x3fc00000  1.5
d0055522:	eba3 0352 	sub.w	r3, r3, r2, lsr #1
d0055526:	ee67 7aa6 	vmul.f32	s15, s15, s13
d005552a:	ee07 3a10 	vmov	s14, r3
d005552e:	ee67 7a87 	vmul.f32	s15, s15, s14
d0055532:	eea7 8a67 	vfms.f32	s16, s14, s15
d0055536:	ee27 8a08 	vmul.f32	s16, s14, s16
d005553a:	ee62 da08 	vmul.f32	s27, s4, s16
d005553e:	ee21 9a88 	vmul.f32	s18, s3, s16
d0055542:	ee22 8a88 	vmul.f32	s16, s5, s16
d0055546:	ee6c 8a2d 	vmul.f32	s17, s24, s27
d005554a:	ee29 6a6b 	vnmul.f32	s12, s18, s23
d005554e:	ee68 5a4c 	vnmul.f32	s11, s16, s24
d0055552:	e79c      	b.n	d005548e <rotateAroundAxis+0x66>
d0055554:	eddf 8a0b 	vldr	s17, [pc, #44]	; d0055584 <rotateAroundAxis+0x15c>
d0055558:	eef0 aa68 	vmov.f32	s21, s17
d005555c:	eeb0 aa68 	vmov.f32	s20, s17
d0055560:	eeb0 ba68 	vmov.f32	s22, s17
d0055564:	eeb0 8a68 	vmov.f32	s16, s17
d0055568:	eef0 da68 	vmov.f32	s27, s17
d005556c:	eeb0 9a68 	vmov.f32	s18, s17
d0055570:	e79f      	b.n	d00554b2 <rotateAroundAxis+0x8a>
d0055572:	bf00      	nop
d0055574:	358637bd 	.word	0x358637bd
d0055578:	3f7fbe77 	.word	0x3f7fbe77
d005557c:	3f8020c5 	.word	0x3f8020c5
d0055580:	5f3759df 	.word	0x5f3759df
d0055584:	00000000 	.word	0x00000000

d0055588 <vec3>:
d0055588:	b088      	sub	sp, #32
d005558a:	b008      	add	sp, #32
d005558c:	4770      	bx	lr
d005558e:	bf00      	nop

d0055590 <degrees>:
d0055590:	eddf 7a02 	vldr	s15, [pc, #8]	; d005559c <degrees+0xc>
d0055594:	ee20 0a27 	vmul.f32	s0, s0, s15
d0055598:	4770      	bx	lr
d005559a:	bf00      	nop
d005559c:	3c8efa35 	.word	0x3c8efa35

d00555a0 <powfxt>:
d00555a0:	eef5 0a40 	vcmp.f32	s1, #0.0
d00555a4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00555a8:	d040      	beq.n	d005562c <powfxt+0x8c>
d00555aa:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d00555ae:	eef0 7a40 	vmov.f32	s15, s0
d00555b2:	eef4 0a47 	vcmp.f32	s1, s14
d00555b6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00555ba:	d034      	beq.n	d0055626 <powfxt+0x86>
d00555bc:	eeb4 0a47 	vcmp.f32	s0, s14
d00555c0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00555c4:	d02f      	beq.n	d0055626 <powfxt+0x86>
d00555c6:	eeb5 0a40 	vcmp.f32	s0, #0.0
d00555ca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00555ce:	d030      	beq.n	d0055632 <powfxt+0x92>
d00555d0:	eef6 6a00 	vmov.f32	s13, #96	; 0x3f000000  0.5
d00555d4:	eef4 0a66 	vcmp.f32	s1, s13
d00555d8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00555dc:	d042      	beq.n	d0055664 <powfxt+0xc4>
d00555de:	eefe 6a00 	vmov.f32	s13, #224	; 0xbf000000 -0.5
d00555e2:	eef4 0a66 	vcmp.f32	s1, s13
d00555e6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00555ea:	d03e      	beq.n	d005566a <powfxt+0xca>
d00555ec:	eefd 6ae0 	vcvt.s32.f32	s13, s1
d00555f0:	eeb8 6ae6 	vcvt.f32.s32	s12, s13
d00555f4:	eeb4 6a60 	vcmp.f32	s12, s1
d00555f8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00555fc:	d022      	beq.n	d0055644 <powfxt+0xa4>
d00555fe:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d0055602:	b500      	push	{lr}
d0055604:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055608:	b083      	sub	sp, #12
d005560a:	edcd 0a01 	vstr	s1, [sp, #4]
d005560e:	d431      	bmi.n	d0055674 <powfxt+0xd4>
d0055610:	f006 f8c0 	bl	d005b794 <logf>
d0055614:	eddd 0a01 	vldr	s1, [sp, #4]
d0055618:	ee20 0a20 	vmul.f32	s0, s0, s1
d005561c:	b003      	add	sp, #12
d005561e:	f85d eb04 	ldr.w	lr, [sp], #4
d0055622:	f006 b841 	b.w	d005b6a8 <expf>
d0055626:	eeb0 0a67 	vmov.f32	s0, s15
d005562a:	4770      	bx	lr
d005562c:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0055630:	4770      	bx	lr
d0055632:	eef5 0ac0 	vcmpe.f32	s1, #0.0
d0055636:	ed9f 0a15 	vldr	s0, [pc, #84]	; d005568c <powfxt+0xec>
d005563a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005563e:	fe37 0a80 	vselgt.f32	s0, s15, s0
d0055642:	4770      	bx	lr
d0055644:	ee16 3a90 	vmov	r3, s13
d0055648:	2b00      	cmp	r3, #0
d005564a:	db18      	blt.n	d005567e <powfxt+0xde>
d005564c:	d01b      	beq.n	d0055686 <powfxt+0xe6>
d005564e:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0055652:	07da      	lsls	r2, r3, #31
d0055654:	bf48      	it	mi
d0055656:	ee20 0a27 	vmulmi.f32	s0, s0, s15
d005565a:	085b      	lsrs	r3, r3, #1
d005565c:	ee67 7aa7 	vmul.f32	s15, s15, s15
d0055660:	d1f7      	bne.n	d0055652 <powfxt+0xb2>
d0055662:	4770      	bx	lr
d0055664:	eeb1 0ae7 	vsqrt.f32	s0, s15
d0055668:	4770      	bx	lr
d005566a:	eef1 6ac0 	vsqrt.f32	s13, s0
d005566e:	ee87 0a26 	vdiv.f32	s0, s14, s13
d0055672:	4770      	bx	lr
d0055674:	ed9f 0a06 	vldr	s0, [pc, #24]	; d0055690 <powfxt+0xf0>
d0055678:	b003      	add	sp, #12
d005567a:	f85d fb04 	ldr.w	pc, [sp], #4
d005567e:	eec7 7a00 	vdiv.f32	s15, s14, s0
d0055682:	425b      	negs	r3, r3
d0055684:	e7e3      	b.n	d005564e <powfxt+0xae>
d0055686:	eeb0 0a47 	vmov.f32	s0, s14
d005568a:	4770      	bx	lr
d005568c:	7f800000 	.word	0x7f800000
d0055690:	7fc00000 	.word	0x7fc00000

d0055694 <sb3dParticlesClear>:
d0055694:	4b0f      	ldr	r3, [pc, #60]	; (d00556d4 <sb3dParticlesClear+0x40>)
d0055696:	f04f 507e 	mov.w	r0, #1065353216	; 0x3f800000
d005569a:	2100      	movs	r1, #0
d005569c:	2200      	movs	r2, #0
d005569e:	b430      	push	{r4, r5}
d00556a0:	f503 5500 	add.w	r5, r3, #8192	; 0x2000
d00556a4:	2421      	movs	r4, #33	; 0x21
d00556a6:	7699      	strb	r1, [r3, #26]
d00556a8:	3320      	adds	r3, #32
d00556aa:	f843 2c20 	str.w	r2, [r3, #-32]
d00556ae:	f843 2c1c 	str.w	r2, [r3, #-28]
d00556b2:	f843 2c18 	str.w	r2, [r3, #-24]
d00556b6:	f843 0c14 	str.w	r0, [r3, #-20]
d00556ba:	f843 2c10 	str.w	r2, [r3, #-16]
d00556be:	f843 0c0c 	str.w	r0, [r3, #-12]
d00556c2:	f803 4c08 	strb.w	r4, [r3, #-8]
d00556c6:	f803 1c07 	strb.w	r1, [r3, #-7]
d00556ca:	42ab      	cmp	r3, r5
d00556cc:	d1eb      	bne.n	d00556a6 <sb3dParticlesClear+0x12>
d00556ce:	bc30      	pop	{r4, r5}
d00556d0:	4770      	bx	lr
d00556d2:	bf00      	nop
d00556d4:	d0090f20 	.word	0xd0090f20

d00556d8 <sb3dParticlesRender>:
d00556d8:	2800      	cmp	r0, #0
d00556da:	f000 82d5 	beq.w	d0055c88 <sb3dParticlesRender+0x5b0>
d00556de:	edd0 7a02 	vldr	s15, [r0, #8]
d00556e2:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00556e6:	ed2d 8b10 	vpush	{d8-d15}
d00556ea:	b0c7      	sub	sp, #284	; 0x11c
d00556ec:	4605      	mov	r5, r0
d00556ee:	ed90 ea00 	vldr	s28, [r0]
d00556f2:	edcd 7a15 	vstr	s15, [sp, #84]	; 0x54
d00556f6:	edd0 da01 	vldr	s27, [r0, #4]
d00556fa:	edd0 ca06 	vldr	s25, [r0, #24]
d00556fe:	ed90 ca07 	vldr	s24, [r0, #28]
d0055702:	edd0 ba08 	vldr	s23, [r0, #32]
d0055706:	ed90 9a09 	vldr	s18, [r0, #36]	; 0x24
d005570a:	edd0 8a0a 	vldr	s17, [r0, #40]	; 0x28
d005570e:	ed90 8a0b 	vldr	s16, [r0, #44]	; 0x2c
d0055712:	edd0 aa0c 	vldr	s21, [r0, #48]	; 0x30
d0055716:	ed90 aa0d 	vldr	s20, [r0, #52]	; 0x34
d005571a:	edd0 9a0e 	vldr	s19, [r0, #56]	; 0x38
d005571e:	ed90 ba10 	vldr	s22, [r0, #64]	; 0x40
d0055722:	f001 ff91 	bl	d0057648 <lightsGet>
d0055726:	4cae      	ldr	r4, [pc, #696]	; (d00559e0 <sb3dParticlesRender+0x308>)
d0055728:	4682      	mov	sl, r0
d005572a:	f001 ff91 	bl	d0057650 <lightsGetCount>
d005572e:	4681      	mov	r9, r0
d0055730:	f504 5700 	add.w	r7, r4, #8192	; 0x2000
d0055734:	eb0a 1880 	add.w	r8, sl, r0, lsl #6
d0055738:	e115      	b.n	d0055966 <sb3dParticlesRender+0x28e>
d005573a:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d005573e:	edd4 ea04 	vldr	s29, [r4, #16]
d0055742:	ed9f 5aac 	vldr	s10, [pc, #688]	; d00559f4 <sb3dParticlesRender+0x31c>
d0055746:	fece ea85 	vmaxnm.f32	s29, s29, s10
d005574a:	fece eac7 	vminnm.f32	s29, s29, s14
d005574e:	eeb6 7a00 	vmov.f32	s14, #96	; 0x3f000000  0.5
d0055752:	f105 0610 	add.w	r6, r5, #16
d0055756:	eeb0 4a46 	vmov.f32	s8, s12
d005575a:	2250      	movs	r2, #80	; 0x50
d005575c:	eef0 4a66 	vmov.f32	s9, s13
d0055760:	4631      	mov	r1, r6
d0055762:	ee67 7a87 	vmul.f32	s15, s15, s14
d0055766:	4668      	mov	r0, sp
d0055768:	eeb0 5a65 	vmov.f32	s10, s11
d005576c:	eeb0 7a65 	vmov.f32	s14, s11
d0055770:	eeac 6aa7 	vfma.f32	s12, s25, s15
d0055774:	eeac 4ae7 	vfms.f32	s8, s25, s15
d0055778:	eeec 4a67 	vfms.f32	s9, s24, s15
d005577c:	eeec 6a27 	vfma.f32	s13, s24, s15
d0055780:	eeab 5ae7 	vfms.f32	s10, s23, s15
d0055784:	eeab 7aa7 	vfma.f32	s14, s23, s15
d0055788:	eef0 3a46 	vmov.f32	s7, s12
d005578c:	eea9 6a67 	vfms.f32	s12, s18, s15
d0055790:	eeb0 da44 	vmov.f32	s26, s8
d0055794:	eef0 fa64 	vmov.f32	s31, s9
d0055798:	eef0 5a66 	vmov.f32	s11, s13
d005579c:	eeb0 fa45 	vmov.f32	s30, s10
d00557a0:	eea9 da27 	vfma.f32	s26, s18, s15
d00557a4:	ed8d 6a1c 	vstr	s12, [sp, #112]	; 0x70
d00557a8:	eeb0 6a47 	vmov.f32	s12, s14
d00557ac:	eee8 faa7 	vfma.f32	s31, s17, s15
d00557b0:	eea8 fa27 	vfma.f32	s30, s16, s15
d00557b4:	eea9 4a67 	vfms.f32	s8, s18, s15
d00557b8:	eee9 3a27 	vfma.f32	s7, s18, s15
d00557bc:	eee8 4ae7 	vfms.f32	s9, s17, s15
d00557c0:	ed8d da16 	vstr	s26, [sp, #88]	; 0x58
d00557c4:	eee8 5aa7 	vfma.f32	s11, s17, s15
d00557c8:	eee8 6ae7 	vfms.f32	s13, s17, s15
d00557cc:	edcd fa17 	vstr	s31, [sp, #92]	; 0x5c
d00557d0:	eea8 5a67 	vfms.f32	s10, s16, s15
d00557d4:	ed8d fa18 	vstr	s30, [sp, #96]	; 0x60
d00557d8:	eea8 6a27 	vfma.f32	s12, s16, s15
d00557dc:	ed8d 4a1f 	vstr	s8, [sp, #124]	; 0x7c
d00557e0:	eea8 7a67 	vfms.f32	s14, s16, s15
d00557e4:	edcd 3a19 	vstr	s7, [sp, #100]	; 0x64
d00557e8:	edcd 4a20 	vstr	s9, [sp, #128]	; 0x80
d00557ec:	edcd 5a1a 	vstr	s11, [sp, #104]	; 0x68
d00557f0:	edcd 6a1d 	vstr	s13, [sp, #116]	; 0x74
d00557f4:	ed8d 5a21 	vstr	s10, [sp, #132]	; 0x84
d00557f8:	ed8d 6a1b 	vstr	s12, [sp, #108]	; 0x6c
d00557fc:	ed8d 7a1e 	vstr	s14, [sp, #120]	; 0x78
d0055800:	f004 fd32 	bl	d005a268 <memcpy>
d0055804:	eeb0 0a4d 	vmov.f32	s0, s26
d0055808:	eef0 0a6f 	vmov.f32	s1, s31
d005580c:	eeb0 1a4f 	vmov.f32	s2, s30
d0055810:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0055814:	f000 fcd8 	bl	d00561c8 <worldToCamera>
d0055818:	ed9d da19 	vldr	s26, [sp, #100]	; 0x64
d005581c:	eddd fa1a 	vldr	s31, [sp, #104]	; 0x68
d0055820:	4631      	mov	r1, r6
d0055822:	ed9d fa1b 	vldr	s30, [sp, #108]	; 0x6c
d0055826:	2250      	movs	r2, #80	; 0x50
d0055828:	4668      	mov	r0, sp
d005582a:	ed8d 0a22 	vstr	s0, [sp, #136]	; 0x88
d005582e:	edcd 0a23 	vstr	s1, [sp, #140]	; 0x8c
d0055832:	ed8d 1a24 	vstr	s2, [sp, #144]	; 0x90
d0055836:	f004 fd17 	bl	d005a268 <memcpy>
d005583a:	eeb0 0a4d 	vmov.f32	s0, s26
d005583e:	eef0 0a6f 	vmov.f32	s1, s31
d0055842:	eeb0 1a4f 	vmov.f32	s2, s30
d0055846:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d005584a:	f000 fcbd 	bl	d00561c8 <worldToCamera>
d005584e:	ed9d da1c 	vldr	s26, [sp, #112]	; 0x70
d0055852:	eddd fa1d 	vldr	s31, [sp, #116]	; 0x74
d0055856:	4631      	mov	r1, r6
d0055858:	ed9d fa1e 	vldr	s30, [sp, #120]	; 0x78
d005585c:	2250      	movs	r2, #80	; 0x50
d005585e:	4668      	mov	r0, sp
d0055860:	ed8d 0a25 	vstr	s0, [sp, #148]	; 0x94
d0055864:	edcd 0a26 	vstr	s1, [sp, #152]	; 0x98
d0055868:	ed8d 1a27 	vstr	s2, [sp, #156]	; 0x9c
d005586c:	f004 fcfc 	bl	d005a268 <memcpy>
d0055870:	eeb0 0a4d 	vmov.f32	s0, s26
d0055874:	eef0 0a6f 	vmov.f32	s1, s31
d0055878:	eeb0 1a4f 	vmov.f32	s2, s30
d005587c:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0055880:	f000 fca2 	bl	d00561c8 <worldToCamera>
d0055884:	ed9d da1f 	vldr	s26, [sp, #124]	; 0x7c
d0055888:	eddd fa20 	vldr	s31, [sp, #128]	; 0x80
d005588c:	4631      	mov	r1, r6
d005588e:	ed9d fa21 	vldr	s30, [sp, #132]	; 0x84
d0055892:	2250      	movs	r2, #80	; 0x50
d0055894:	4668      	mov	r0, sp
d0055896:	ed8d 0a28 	vstr	s0, [sp, #160]	; 0xa0
d005589a:	edcd 0a29 	vstr	s1, [sp, #164]	; 0xa4
d005589e:	ed8d 1a2a 	vstr	s2, [sp, #168]	; 0xa8
d00558a2:	f004 fce1 	bl	d005a268 <memcpy>
d00558a6:	eeb0 0a4d 	vmov.f32	s0, s26
d00558aa:	eef0 0a6f 	vmov.f32	s1, s31
d00558ae:	eeb0 1a4f 	vmov.f32	s2, s30
d00558b2:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d00558b6:	f000 fc87 	bl	d00561c8 <worldToCamera>
d00558ba:	eddd 7a24 	vldr	s15, [sp, #144]	; 0x90
d00558be:	ed8d 0a2b 	vstr	s0, [sp, #172]	; 0xac
d00558c2:	eef4 7acb 	vcmpe.f32	s15, s22
d00558c6:	edcd 0a2c 	vstr	s1, [sp, #176]	; 0xb0
d00558ca:	ed8d 1a2d 	vstr	s2, [sp, #180]	; 0xb4
d00558ce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00558d2:	d812      	bhi.n	d00558fa <sb3dParticlesRender+0x222>
d00558d4:	eddd 7a27 	vldr	s15, [sp, #156]	; 0x9c
d00558d8:	eef4 7acb 	vcmpe.f32	s15, s22
d00558dc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00558e0:	d80b      	bhi.n	d00558fa <sb3dParticlesRender+0x222>
d00558e2:	eddd 7a2a 	vldr	s15, [sp, #168]	; 0xa8
d00558e6:	eef4 7acb 	vcmpe.f32	s15, s22
d00558ea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00558ee:	d804      	bhi.n	d00558fa <sb3dParticlesRender+0x222>
d00558f0:	eeb4 1acb 	vcmpe.f32	s2, s22
d00558f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00558f8:	d931      	bls.n	d005595e <sb3dParticlesRender+0x286>
d00558fa:	4629      	mov	r1, r5
d00558fc:	ed9d 3a28 	vldr	s6, [sp, #160]	; 0xa0
d0055900:	eddd 3a29 	vldr	s7, [sp, #164]	; 0xa4
d0055904:	a82e      	add	r0, sp, #184	; 0xb8
d0055906:	ed9d 4a2a 	vldr	s8, [sp, #168]	; 0xa8
d005590a:	eddd 1a25 	vldr	s3, [sp, #148]	; 0x94
d005590e:	ed9d 2a26 	vldr	s4, [sp, #152]	; 0x98
d0055912:	eddd 2a27 	vldr	s5, [sp, #156]	; 0x9c
d0055916:	ed9d 0a22 	vldr	s0, [sp, #136]	; 0x88
d005591a:	eddd 0a23 	vldr	s1, [sp, #140]	; 0x8c
d005591e:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d0055922:	f001 ff5b 	bl	d00577dc <clipTriangleToFrustum>
d0055926:	2802      	cmp	r0, #2
d0055928:	f300 8155 	bgt.w	d0055bd6 <sb3dParticlesRender+0x4fe>
d005592c:	a82e      	add	r0, sp, #184	; 0xb8
d005592e:	4629      	mov	r1, r5
d0055930:	ed9d 3a2b 	vldr	s6, [sp, #172]	; 0xac
d0055934:	eddd 3a2c 	vldr	s7, [sp, #176]	; 0xb0
d0055938:	ed9d 4a2d 	vldr	s8, [sp, #180]	; 0xb4
d005593c:	eddd 1a28 	vldr	s3, [sp, #160]	; 0xa0
d0055940:	ed9d 2a29 	vldr	s4, [sp, #164]	; 0xa4
d0055944:	eddd 2a2a 	vldr	s5, [sp, #168]	; 0xa8
d0055948:	ed9d 0a22 	vldr	s0, [sp, #136]	; 0x88
d005594c:	eddd 0a23 	vldr	s1, [sp, #140]	; 0x8c
d0055950:	ed9d 1a24 	vldr	s2, [sp, #144]	; 0x90
d0055954:	f001 ff42 	bl	d00577dc <clipTriangleToFrustum>
d0055958:	2802      	cmp	r0, #2
d005595a:	f300 8105 	bgt.w	d0055b68 <sb3dParticlesRender+0x490>
d005595e:	3420      	adds	r4, #32
d0055960:	42a7      	cmp	r7, r4
d0055962:	f000 8133 	beq.w	d0055bcc <sb3dParticlesRender+0x4f4>
d0055966:	7ea3      	ldrb	r3, [r4, #26]
d0055968:	2b00      	cmp	r3, #0
d005596a:	d0f8      	beq.n	d005595e <sb3dParticlesRender+0x286>
d005596c:	edd4 7a03 	vldr	s15, [r4, #12]
d0055970:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0055974:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055978:	d9f1      	bls.n	d005595e <sb3dParticlesRender+0x286>
d005597a:	edd4 6a01 	vldr	s13, [r4, #4]
d005597e:	eeb1 5a67 	vneg.f32	s10, s15
d0055982:	ed94 6a00 	vldr	s12, [r4]
d0055986:	ee36 7aed 	vsub.f32	s14, s13, s27
d005598a:	edd4 5a02 	vldr	s11, [r4, #8]
d005598e:	ee36 4a4e 	vsub.f32	s8, s12, s28
d0055992:	eddd 4a15 	vldr	s9, [sp, #84]	; 0x54
d0055996:	ee27 7a0a 	vmul.f32	s14, s14, s20
d005599a:	ee75 4ae4 	vsub.f32	s9, s11, s9
d005599e:	eeaa 7a84 	vfma.f32	s14, s21, s8
d00559a2:	eea9 7aa4 	vfma.f32	s14, s19, s9
d00559a6:	eeb4 5ac7 	vcmpe.f32	s10, s14
d00559aa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00559ae:	dad6      	bge.n	d005595e <sb3dParticlesRender+0x286>
d00559b0:	ed94 7a05 	vldr	s14, [r4, #20]
d00559b4:	ed9f 5a0b 	vldr	s10, [pc, #44]	; d00559e4 <sb3dParticlesRender+0x30c>
d00559b8:	eeb4 7ac5 	vcmpe.f32	s14, s10
d00559bc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00559c0:	f67f aebb 	bls.w	d005573a <sb3dParticlesRender+0x62>
d00559c4:	f1b9 0f00 	cmp.w	r9, #0
d00559c8:	f340 809e 	ble.w	d0055b08 <sb3dParticlesRender+0x430>
d00559cc:	eeb7 4a00 	vmov.f32	s8, #112	; 0x3f800000  1.0
d00559d0:	4653      	mov	r3, sl
d00559d2:	eeb5 3a00 	vmov.f32	s6, #80	; 0x3e800000  0.250
d00559d6:	ed9f 0a05 	vldr	s0, [pc, #20]	; d00559ec <sb3dParticlesRender+0x314>
d00559da:	eef6 3a08 	vmov.f32	s7, #104	; 0x3f400000  0.750
d00559de:	e07e      	b.n	d0055ade <sb3dParticlesRender+0x406>
d00559e0:	d0090f20 	.word	0xd0090f20
d00559e4:	38d1b717 	.word	0x38d1b717
d00559e8:	358637bd 	.word	0x358637bd
d00559ec:	3dcccccd 	.word	0x3dcccccd
d00559f0:	3b808081 	.word	0x3b808081
d00559f4:	00000000 	.word	0x00000000
d00559f8:	edd3 7a02 	vldr	s15, [r3, #8]
d00559fc:	edd3 4a01 	vldr	s9, [r3, #4]
d0055a00:	ee77 7ae6 	vsub.f32	s15, s15, s13
d0055a04:	ed93 7a03 	vldr	s14, [r3, #12]
d0055a08:	ee74 4ac6 	vsub.f32	s9, s9, s12
d0055a0c:	ed93 2a0a 	vldr	s4, [r3, #40]	; 0x28
d0055a10:	ee37 7a65 	vsub.f32	s14, s14, s11
d0055a14:	ee27 5aa7 	vmul.f32	s10, s15, s15
d0055a18:	ee62 2a02 	vmul.f32	s5, s4, s4
d0055a1c:	eea4 5aa4 	vfma.f32	s10, s9, s9
d0055a20:	eea7 5a07 	vfma.f32	s10, s14, s14
d0055a24:	eeb4 5a62 	vcmp.f32	s10, s5
d0055a28:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055a2c:	d554      	bpl.n	d0055ad8 <sb3dParticlesRender+0x400>
d0055a2e:	ed5f 2a12 	vldr	s5, [pc, #-72]	; d00559e8 <sb3dParticlesRender+0x310>
d0055a32:	eeb4 5a62 	vcmp.f32	s10, s5
d0055a36:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055a3a:	dd4d      	ble.n	d0055ad8 <sb3dParticlesRender+0x400>
d0055a3c:	eef1 0ac5 	vsqrt.f32	s1, s10
d0055a40:	edd3 1a08 	vldr	s3, [r3, #32]
d0055a44:	ee21 1aa1 	vmul.f32	s2, s3, s3
d0055a48:	eeb4 5ac1 	vcmpe.f32	s10, s2
d0055a4c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055a50:	eec4 2a20 	vdiv.f32	s5, s8, s1
d0055a54:	ee64 4aa2 	vmul.f32	s9, s9, s5
d0055a58:	ee67 7aa2 	vmul.f32	s15, s15, s5
d0055a5c:	ee27 7a22 	vmul.f32	s14, s14, s5
d0055a60:	f240 80e8 	bls.w	d0055c34 <sb3dParticlesRender+0x55c>
d0055a64:	ed93 1a09 	vldr	s2, [r3, #36]	; 0x24
d0055a68:	eef4 1ac1 	vcmpe.f32	s3, s2
d0055a6c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055a70:	da32      	bge.n	d0055ad8 <sb3dParticlesRender+0x400>
d0055a72:	eeb4 2ac1 	vcmpe.f32	s4, s2
d0055a76:	ee25 5a22 	vmul.f32	s10, s10, s5
d0055a7a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055a7e:	eeb4 1ac5 	vcmpe.f32	s2, s10
d0055a82:	f200 80da 	bhi.w	d0055c3a <sb3dParticlesRender+0x562>
d0055a86:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055a8a:	d925      	bls.n	d0055ad8 <sb3dParticlesRender+0x400>
d0055a8c:	ee75 2a61 	vsub.f32	s5, s10, s3
d0055a90:	ee31 2a61 	vsub.f32	s4, s2, s3
d0055a94:	ee82 5a82 	vdiv.f32	s10, s5, s4
d0055a98:	ed5f 2a2a 	vldr	s5, [pc, #-168]	; d00559f4 <sb3dParticlesRender+0x31c>
d0055a9c:	fe85 5a22 	vmaxnm.f32	s10, s10, s5
d0055aa0:	fe85 5a44 	vminnm.f32	s10, s10, s8
d0055aa4:	ee34 5a45 	vsub.f32	s10, s8, s10
d0055aa8:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d0055aac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055ab0:	d912      	bls.n	d0055ad8 <sb3dParticlesRender+0x400>
d0055ab2:	ee67 7a8a 	vmul.f32	s15, s15, s20
d0055ab6:	eee4 7aaa 	vfma.f32	s15, s9, s21
d0055aba:	eee7 7a29 	vfma.f32	s15, s14, s19
d0055abe:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0055ac2:	eeb1 7a67 	vneg.f32	s14, s15
d0055ac6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055aca:	da05      	bge.n	d0055ad8 <sb3dParticlesRender+0x400>
d0055acc:	edd3 7a07 	vldr	s15, [r3, #28]
d0055ad0:	ee25 5a27 	vmul.f32	s10, s10, s15
d0055ad4:	eea5 0a07 	vfma.f32	s0, s10, s14
d0055ad8:	3340      	adds	r3, #64	; 0x40
d0055ada:	4598      	cmp	r8, r3
d0055adc:	d016      	beq.n	d0055b0c <sb3dParticlesRender+0x434>
d0055ade:	6ada      	ldr	r2, [r3, #44]	; 0x2c
d0055ae0:	2a00      	cmp	r2, #0
d0055ae2:	d0f9      	beq.n	d0055ad8 <sb3dParticlesRender+0x400>
d0055ae4:	781a      	ldrb	r2, [r3, #0]
d0055ae6:	2a00      	cmp	r2, #0
d0055ae8:	d086      	beq.n	d00559f8 <sb3dParticlesRender+0x320>
d0055aea:	edd3 4a04 	vldr	s9, [r3, #16]
d0055aee:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0055af2:	edd3 7a05 	vldr	s15, [r3, #20]
d0055af6:	ed93 7a06 	vldr	s14, [r3, #24]
d0055afa:	eef1 4a64 	vneg.f32	s9, s9
d0055afe:	eef1 7a67 	vneg.f32	s15, s15
d0055b02:	eeb1 7a47 	vneg.f32	s14, s14
d0055b06:	e7d4      	b.n	d0055ab2 <sb3dParticlesRender+0x3da>
d0055b08:	ed1f 0a48 	vldr	s0, [pc, #-288]	; d00559ec <sb3dParticlesRender+0x314>
d0055b0c:	7e63      	ldrb	r3, [r4, #25]
d0055b0e:	eeb7 fa00 	vmov.f32	s30, #112	; 0x3f800000  1.0
d0055b12:	ed1f 7a49 	vldr	s14, [pc, #-292]	; d00559f0 <sb3dParticlesRender+0x318>
d0055b16:	ee07 3a90 	vmov	s15, r3
d0055b1a:	ed1f da4a 	vldr	s26, [pc, #-296]	; d00559f4 <sb3dParticlesRender+0x31c>
d0055b1e:	eef8 7a67 	vcvt.f32.u32	s15, s15
d0055b22:	ee67 7a87 	vmul.f32	s15, s15, s14
d0055b26:	fec7 7a8d 	vmaxnm.f32	s15, s15, s26
d0055b2a:	fe87 0a80 	vmaxnm.f32	s0, s15, s0
d0055b2e:	fe80 0a4f 	vminnm.f32	s0, s0, s30
d0055b32:	f001 fd5d 	bl	d00575f0 <brightnessToShadeF>
d0055b36:	edd4 ea05 	vldr	s29, [r4, #20]
d0055b3a:	ed94 5a04 	vldr	s10, [r4, #16]
d0055b3e:	eeb1 7a04 	vmov.f32	s14, #20	; 0x40a00000  5.0
d0055b42:	ee3f fa6e 	vsub.f32	s30, s30, s29
d0055b46:	edd4 7a03 	vldr	s15, [r4, #12]
d0055b4a:	ee60 ea2e 	vmul.f32	s29, s0, s29
d0055b4e:	ed94 6a00 	vldr	s12, [r4]
d0055b52:	edd4 6a01 	vldr	s13, [r4, #4]
d0055b56:	edd4 5a02 	vldr	s11, [r4, #8]
d0055b5a:	eee5 ea0f 	vfma.f32	s29, s10, s30
d0055b5e:	fece ea8d 	vmaxnm.f32	s29, s29, s26
d0055b62:	fece eac7 	vminnm.f32	s29, s29, s14
d0055b66:	e5f2      	b.n	d005574e <sb3dParticlesRender+0x76>
d0055b68:	f100 3bff 	add.w	fp, r0, #4294967295	; 0xffffffff
d0055b6c:	2601      	movs	r6, #1
d0055b6e:	4631      	mov	r1, r6
d0055b70:	3601      	adds	r6, #1
d0055b72:	aa46      	add	r2, sp, #280	; 0x118
d0055b74:	eef0 4a6e 	vmov.f32	s9, s29
d0055b78:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d0055b7c:	2380      	movs	r3, #128	; 0x80
d0055b7e:	eb06 0046 	add.w	r0, r6, r6, lsl #1
d0055b82:	ed9d 0a2e 	vldr	s0, [sp, #184]	; 0xb8
d0055b86:	eb02 0181 	add.w	r1, r2, r1, lsl #2
d0055b8a:	eddd 0a2f 	vldr	s1, [sp, #188]	; 0xbc
d0055b8e:	eb02 0080 	add.w	r0, r2, r0, lsl #2
d0055b92:	ed9d 1a30 	vldr	s2, [sp, #192]	; 0xc0
d0055b96:	f1a1 0c60 	sub.w	ip, r1, #96	; 0x60
d0055b9a:	ed51 1a18 	vldr	s3, [r1, #-96]	; 0xffffffa0
d0055b9e:	ed10 3a18 	vldr	s6, [r0, #-96]	; 0xffffffa0
d0055ba2:	f1a0 0160 	sub.w	r1, r0, #96	; 0x60
d0055ba6:	7e62      	ldrb	r2, [r4, #25]
d0055ba8:	4628      	mov	r0, r5
d0055baa:	edd1 3a01 	vldr	s7, [r1, #4]
d0055bae:	ed91 4a02 	vldr	s8, [r1, #8]
d0055bb2:	ed9c 2a01 	vldr	s4, [ip, #4]
d0055bb6:	7e21      	ldrb	r1, [r4, #24]
d0055bb8:	eddc 2a02 	vldr	s5, [ip, #8]
d0055bbc:	f002 fa6e 	bl	d005809c <submitClippedTri>
d0055bc0:	455e      	cmp	r6, fp
d0055bc2:	d1d4      	bne.n	d0055b6e <sb3dParticlesRender+0x496>
d0055bc4:	3420      	adds	r4, #32
d0055bc6:	42a7      	cmp	r7, r4
d0055bc8:	f47f aecd 	bne.w	d0055966 <sb3dParticlesRender+0x28e>
d0055bcc:	b047      	add	sp, #284	; 0x11c
d0055bce:	ecbd 8b10 	vpop	{d8-d15}
d0055bd2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0055bd6:	f100 3bff 	add.w	fp, r0, #4294967295	; 0xffffffff
d0055bda:	2601      	movs	r6, #1
d0055bdc:	4631      	mov	r1, r6
d0055bde:	3601      	adds	r6, #1
d0055be0:	aa46      	add	r2, sp, #280	; 0x118
d0055be2:	eef0 4a6e 	vmov.f32	s9, s29
d0055be6:	eb01 0141 	add.w	r1, r1, r1, lsl #1
d0055bea:	2380      	movs	r3, #128	; 0x80
d0055bec:	eb06 0046 	add.w	r0, r6, r6, lsl #1
d0055bf0:	ed9d 0a2e 	vldr	s0, [sp, #184]	; 0xb8
d0055bf4:	eb02 0181 	add.w	r1, r2, r1, lsl #2
d0055bf8:	eddd 0a2f 	vldr	s1, [sp, #188]	; 0xbc
d0055bfc:	eb02 0080 	add.w	r0, r2, r0, lsl #2
d0055c00:	ed9d 1a30 	vldr	s2, [sp, #192]	; 0xc0
d0055c04:	f1a1 0c60 	sub.w	ip, r1, #96	; 0x60
d0055c08:	ed51 1a18 	vldr	s3, [r1, #-96]	; 0xffffffa0
d0055c0c:	ed10 3a18 	vldr	s6, [r0, #-96]	; 0xffffffa0
d0055c10:	f1a0 0160 	sub.w	r1, r0, #96	; 0x60
d0055c14:	7e62      	ldrb	r2, [r4, #25]
d0055c16:	4628      	mov	r0, r5
d0055c18:	edd1 3a01 	vldr	s7, [r1, #4]
d0055c1c:	ed91 4a02 	vldr	s8, [r1, #8]
d0055c20:	ed9c 2a01 	vldr	s4, [ip, #4]
d0055c24:	7e21      	ldrb	r1, [r4, #24]
d0055c26:	eddc 2a02 	vldr	s5, [ip, #8]
d0055c2a:	f002 fa37 	bl	d005809c <submitClippedTri>
d0055c2e:	455e      	cmp	r6, fp
d0055c30:	d1d4      	bne.n	d0055bdc <sb3dParticlesRender+0x504>
d0055c32:	e67b      	b.n	d005592c <sb3dParticlesRender+0x254>
d0055c34:	eeb7 5a00 	vmov.f32	s10, #112	; 0x3f800000  1.0
d0055c38:	e73b      	b.n	d0055ab2 <sb3dParticlesRender+0x3da>
d0055c3a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055c3e:	db12      	blt.n	d0055c66 <sb3dParticlesRender+0x58e>
d0055c40:	ee35 5a61 	vsub.f32	s10, s10, s3
d0055c44:	ee31 2a61 	vsub.f32	s4, s2, s3
d0055c48:	eec5 2a02 	vdiv.f32	s5, s10, s4
d0055c4c:	ed1f 5a97 	vldr	s10, [pc, #-604]	; d00559f4 <sb3dParticlesRender+0x31c>
d0055c50:	fe82 5a85 	vmaxnm.f32	s10, s5, s10
d0055c54:	eef0 2a44 	vmov.f32	s5, s8
d0055c58:	fe85 5a44 	vminnm.f32	s10, s10, s8
d0055c5c:	eee5 2a63 	vfms.f32	s5, s10, s7
d0055c60:	eeb0 5a62 	vmov.f32	s10, s5
d0055c64:	e720      	b.n	d0055aa8 <sb3dParticlesRender+0x3d0>
d0055c66:	ee75 2a41 	vsub.f32	s5, s10, s2
d0055c6a:	ee32 2a41 	vsub.f32	s4, s4, s2
d0055c6e:	ee82 5a82 	vdiv.f32	s10, s5, s4
d0055c72:	ed5f 2aa0 	vldr	s5, [pc, #-640]	; d00559f4 <sb3dParticlesRender+0x31c>
d0055c76:	fe85 5a22 	vmaxnm.f32	s10, s10, s5
d0055c7a:	fe85 5a44 	vminnm.f32	s10, s10, s8
d0055c7e:	ee34 5a45 	vsub.f32	s10, s8, s10
d0055c82:	ee25 5a03 	vmul.f32	s10, s10, s6
d0055c86:	e70f      	b.n	d0055aa8 <sb3dParticlesRender+0x3d0>
d0055c88:	4770      	bx	lr
d0055c8a:	bf00      	nop

d0055c8c <worldClear>:
d0055c8c:	f44f 42c0 	mov.w	r2, #24576	; 0x6000
d0055c90:	2100      	movs	r1, #0
d0055c92:	4801      	ldr	r0, [pc, #4]	; (d0055c98 <worldClear+0xc>)
d0055c94:	f004 baf6 	b.w	d005a284 <memset>
d0055c98:	d012b2a0 	.word	0xd012b2a0

d0055c9c <cameraNormalize>:
d0055c9c:	edd0 0a0d 	vldr	s1, [r0, #52]	; 0x34
d0055ca0:	ed90 1a0e 	vldr	s2, [r0, #56]	; 0x38
d0055ca4:	ed90 0a0c 	vldr	s0, [r0, #48]	; 0x30
d0055ca8:	b510      	push	{r4, lr}
d0055caa:	4604      	mov	r4, r0
d0055cac:	f7ff fb6c 	bl	d0055388 <vec3Normalize>
d0055cb0:	eeb0 7a60 	vmov.f32	s14, s1
d0055cb4:	eef0 7a41 	vmov.f32	s15, s2
d0055cb8:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0055cbc:	ed94 0a06 	vldr	s0, [r4, #24]
d0055cc0:	ed84 7a0d 	vstr	s14, [r4, #52]	; 0x34
d0055cc4:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d0055cc8:	edd4 0a07 	vldr	s1, [r4, #28]
d0055ccc:	ed94 1a08 	vldr	s2, [r4, #32]
d0055cd0:	f7ff fb5a 	bl	d0055388 <vec3Normalize>
d0055cd4:	eef0 1a40 	vmov.f32	s3, s0
d0055cd8:	eeb0 2a60 	vmov.f32	s4, s1
d0055cdc:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0055ce0:	eef0 2a41 	vmov.f32	s5, s2
d0055ce4:	edc4 0a07 	vstr	s1, [r4, #28]
d0055ce8:	ed84 1a08 	vstr	s2, [r4, #32]
d0055cec:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0055cf0:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0055cf4:	edc4 1a06 	vstr	s3, [r4, #24]
d0055cf8:	f7ff fb30 	bl	d005535c <vec3Cross>
d0055cfc:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0055d00:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0055d04:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0055d08:	f7ff fb3e 	bl	d0055388 <vec3Normalize>
d0055d0c:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0055d10:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0055d14:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0055d18:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0055d1c:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0055d20:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0055d24:	f7ff fb1a 	bl	d005535c <vec3Cross>
d0055d28:	ed84 0a06 	vstr	s0, [r4, #24]
d0055d2c:	edc4 0a07 	vstr	s1, [r4, #28]
d0055d30:	ed84 1a08 	vstr	s2, [r4, #32]
d0055d34:	f7ff fb28 	bl	d0055388 <vec3Normalize>
d0055d38:	ed84 0a06 	vstr	s0, [r4, #24]
d0055d3c:	edc4 0a07 	vstr	s1, [r4, #28]
d0055d40:	ed84 1a08 	vstr	s2, [r4, #32]
d0055d44:	bd10      	pop	{r4, pc}
d0055d46:	bf00      	nop

d0055d48 <cameraCreate>:
d0055d48:	b510      	push	{r4, lr}
d0055d4a:	4604      	mov	r4, r0
d0055d4c:	2260      	movs	r2, #96	; 0x60
d0055d4e:	4902      	ldr	r1, [pc, #8]	; (d0055d58 <cameraCreate+0x10>)
d0055d50:	f004 fa8a 	bl	d005a268 <memcpy>
d0055d54:	4620      	mov	r0, r4
d0055d56:	bd10      	pop	{r4, pc}
d0055d58:	d005c360 	.word	0xd005c360

d0055d5c <cameraSetPosition>:
d0055d5c:	b084      	sub	sp, #16
d0055d5e:	ed8d 0a01 	vstr	s0, [sp, #4]
d0055d62:	edcd 0a02 	vstr	s1, [sp, #8]
d0055d66:	ed8d 1a03 	vstr	s2, [sp, #12]
d0055d6a:	b128      	cbz	r0, d0055d78 <cameraSetPosition+0x1c>
d0055d6c:	aa04      	add	r2, sp, #16
d0055d6e:	4603      	mov	r3, r0
d0055d70:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0055d74:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0055d78:	b004      	add	sp, #16
d0055d7a:	4770      	bx	lr

d0055d7c <cameraRotate>:
d0055d7c:	2800      	cmp	r0, #0
d0055d7e:	f000 80a8 	beq.w	d0055ed2 <cameraRotate+0x156>
d0055d82:	b510      	push	{r4, lr}
d0055d84:	ed2d 8b04 	vpush	{d8-d9}
d0055d88:	edc0 0a04 	vstr	s1, [r0, #16]
d0055d8c:	b084      	sub	sp, #16
d0055d8e:	ed80 1a05 	vstr	s2, [r0, #20]
d0055d92:	eef0 8a40 	vmov.f32	s17, s0
d0055d96:	ed80 0a03 	vstr	s0, [r0, #12]
d0055d9a:	4604      	mov	r4, r0
d0055d9c:	eeb0 8a60 	vmov.f32	s16, s1
d0055da0:	f005 fba6 	bl	d005b4f0 <cosf>
d0055da4:	eeb0 1a40 	vmov.f32	s2, s0
d0055da8:	eeb0 0a68 	vmov.f32	s0, s17
d0055dac:	eef0 8a41 	vmov.f32	s17, s2
d0055db0:	f005 fd82 	bl	d005b8b8 <sinf>
d0055db4:	eeb0 9a40 	vmov.f32	s18, s0
d0055db8:	eeb0 0a48 	vmov.f32	s0, s16
d0055dbc:	f005 fb98 	bl	d005b4f0 <cosf>
d0055dc0:	eeb0 1a40 	vmov.f32	s2, s0
d0055dc4:	eeb0 0a48 	vmov.f32	s0, s16
d0055dc8:	eeb0 8a41 	vmov.f32	s16, s2
d0055dcc:	f005 fd74 	bl	d005b8b8 <sinf>
d0055dd0:	eef0 0a40 	vmov.f32	s1, s0
d0055dd4:	ee28 1a88 	vmul.f32	s2, s17, s16
d0055dd8:	ee29 9a08 	vmul.f32	s18, s18, s16
d0055ddc:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0055de0:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0055de4:	eeb0 0a49 	vmov.f32	s0, s18
d0055de8:	ed84 9a0c 	vstr	s18, [r4, #48]	; 0x30
d0055dec:	f7ff facc 	bl	d0055388 <vec3Normalize>
d0055df0:	eef0 7a41 	vmov.f32	s15, s2
d0055df4:	eeb0 7a60 	vmov.f32	s14, s1
d0055df8:	ed9f 1a4c 	vldr	s2, [pc, #304]	; d0055f2c <cameraRotate+0x1b0>
d0055dfc:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d0055e00:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0055e04:	eeb0 0a41 	vmov.f32	s0, s2
d0055e08:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d0055e0c:	ed84 7a0d 	vstr	s14, [r4, #52]	; 0x34
d0055e10:	f7ff fbba 	bl	d0055588 <vec3>
d0055e14:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0055e18:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0055e1c:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0055e20:	f7ff fa9c 	bl	d005535c <vec3Cross>
d0055e24:	eef0 1a40 	vmov.f32	s3, s0
d0055e28:	eeb0 2a60 	vmov.f32	s4, s1
d0055e2c:	ed84 0a06 	vstr	s0, [r4, #24]
d0055e30:	eef0 2a41 	vmov.f32	s5, s2
d0055e34:	edc4 0a07 	vstr	s1, [r4, #28]
d0055e38:	ed84 1a08 	vstr	s2, [r4, #32]
d0055e3c:	f7ff fa82 	bl	d0055344 <vec3Dot>
d0055e40:	eddf 7a3b 	vldr	s15, [pc, #236]	; d0055f30 <cameraRotate+0x1b4>
d0055e44:	eeb4 0ae7 	vcmpe.f32	s0, s15
d0055e48:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055e4c:	d438      	bmi.n	d0055ec0 <cameraRotate+0x144>
d0055e4e:	ed94 0a06 	vldr	s0, [r4, #24]
d0055e52:	edd4 0a07 	vldr	s1, [r4, #28]
d0055e56:	ed94 1a08 	vldr	s2, [r4, #32]
d0055e5a:	f7ff fa95 	bl	d0055388 <vec3Normalize>
d0055e5e:	eef0 1a40 	vmov.f32	s3, s0
d0055e62:	ed84 0a06 	vstr	s0, [r4, #24]
d0055e66:	eeb0 2a60 	vmov.f32	s4, s1
d0055e6a:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0055e6e:	eef0 2a41 	vmov.f32	s5, s2
d0055e72:	edc4 0a07 	vstr	s1, [r4, #28]
d0055e76:	ed84 1a08 	vstr	s2, [r4, #32]
d0055e7a:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0055e7e:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d0055e82:	f7ff fa6b 	bl	d005535c <vec3Cross>
d0055e86:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0055e8a:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0055e8e:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0055e92:	f7ff fa79 	bl	d0055388 <vec3Normalize>
d0055e96:	ed94 3a05 	vldr	s6, [r4, #20]
d0055e9a:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0055e9e:	eeb5 3a40 	vcmp.f32	s6, #0.0
d0055ea2:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0055ea6:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0055eaa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055eae:	d111      	bne.n	d0055ed4 <cameraRotate+0x158>
d0055eb0:	4620      	mov	r0, r4
d0055eb2:	b004      	add	sp, #16
d0055eb4:	ecbd 8b04 	vpop	{d8-d9}
d0055eb8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0055ebc:	f7ff beee 	b.w	d0055c9c <cameraNormalize>
d0055ec0:	ed9f 1a1a 	vldr	s2, [pc, #104]	; d0055f2c <cameraRotate+0x1b0>
d0055ec4:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0055ec8:	eef0 0a41 	vmov.f32	s1, s2
d0055ecc:	f7ff fb5c 	bl	d0055588 <vec3>
d0055ed0:	e7c5      	b.n	d0055e5e <cameraRotate+0xe2>
d0055ed2:	4770      	bx	lr
d0055ed4:	ed94 0a06 	vldr	s0, [r4, #24]
d0055ed8:	edd4 0a07 	vldr	s1, [r4, #28]
d0055edc:	ed94 1a08 	vldr	s2, [r4, #32]
d0055ee0:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0055ee4:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0055ee8:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0055eec:	f7ff fa9c 	bl	d0055428 <rotateAroundAxis>
d0055ef0:	ed84 0a06 	vstr	s0, [r4, #24]
d0055ef4:	edc4 0a07 	vstr	s1, [r4, #28]
d0055ef8:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0055efc:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d0055f00:	ed84 1a08 	vstr	s2, [r4, #32]
d0055f04:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0055f08:	ed94 3a05 	vldr	s6, [r4, #20]
d0055f0c:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0055f10:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0055f14:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0055f18:	f7ff fa86 	bl	d0055428 <rotateAroundAxis>
d0055f1c:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d0055f20:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0055f24:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0055f28:	e7c2      	b.n	d0055eb0 <cameraRotate+0x134>
d0055f2a:	bf00      	nop
d0055f2c:	00000000 	.word	0x00000000
d0055f30:	322bcc77 	.word	0x322bcc77

d0055f34 <cameraTurn>:
d0055f34:	2800      	cmp	r0, #0
d0055f36:	f000 8144 	beq.w	d00561c2 <cameraTurn+0x28e>
d0055f3a:	b570      	push	{r4, r5, r6, lr}
d0055f3c:	4604      	mov	r4, r0
d0055f3e:	ed2d 8b04 	vpush	{d8-d9}
d0055f42:	eef0 8a40 	vmov.f32	s17, s0
d0055f46:	b08a      	sub	sp, #40	; 0x28
d0055f48:	eeb0 9a60 	vmov.f32	s18, s1
d0055f4c:	eeb0 8a41 	vmov.f32	s16, s2
d0055f50:	bb69      	cbnz	r1, d0055fae <cameraTurn+0x7a>
d0055f52:	f100 0318 	add.w	r3, r0, #24
d0055f56:	ae01      	add	r6, sp, #4
d0055f58:	f100 0524 	add.w	r5, r0, #36	; 0x24
d0055f5c:	eeb5 9a40 	vcmp.f32	s18, #0.0
d0055f60:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0055f64:	f104 0330 	add.w	r3, r4, #48	; 0x30
d0055f68:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055f6c:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0055f70:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d0055f74:	ae04      	add	r6, sp, #16
d0055f76:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d0055f7a:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d0055f7e:	ab0a      	add	r3, sp, #40	; 0x28
d0055f80:	e903 0007 	stmdb	r3, {r0, r1, r2}
d0055f84:	d14a      	bne.n	d005601c <cameraTurn+0xe8>
d0055f86:	eef5 8a40 	vcmp.f32	s17, #0.0
d0055f8a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055f8e:	f040 808d 	bne.w	d00560ac <cameraTurn+0x178>
d0055f92:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0055f96:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0055f9a:	f040 80cf 	bne.w	d005613c <cameraTurn+0x208>
d0055f9e:	4620      	mov	r0, r4
d0055fa0:	b00a      	add	sp, #40	; 0x28
d0055fa2:	ecbd 8b04 	vpop	{d8-d9}
d0055fa6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
d0055faa:	f7ff be77 	b.w	d0055c9c <cameraNormalize>
d0055fae:	ed9f 1a85 	vldr	s2, [pc, #532]	; d00561c4 <cameraTurn+0x290>
d0055fb2:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0055fb6:	eef0 0a41 	vmov.f32	s1, s2
d0055fba:	f7ff fae5 	bl	d0055588 <vec3>
d0055fbe:	eef0 7a41 	vmov.f32	s15, s2
d0055fc2:	ed9f 1a80 	vldr	s2, [pc, #512]	; d00561c4 <cameraTurn+0x290>
d0055fc6:	eeb0 7a60 	vmov.f32	s14, s1
d0055fca:	ed8d 0a01 	vstr	s0, [sp, #4]
d0055fce:	eef7 0a00 	vmov.f32	s1, #112	; 0x3f800000  1.0
d0055fd2:	edcd 7a03 	vstr	s15, [sp, #12]
d0055fd6:	eeb0 0a41 	vmov.f32	s0, s2
d0055fda:	ed8d 7a02 	vstr	s14, [sp, #8]
d0055fde:	f7ff fad3 	bl	d0055588 <vec3>
d0055fe2:	eeb0 7a60 	vmov.f32	s14, s1
d0055fe6:	eddf 0a77 	vldr	s1, [pc, #476]	; d00561c4 <cameraTurn+0x290>
d0055fea:	eef0 7a41 	vmov.f32	s15, s2
d0055fee:	ed8d 0a04 	vstr	s0, [sp, #16]
d0055ff2:	eeb7 1a00 	vmov.f32	s2, #112	; 0x3f800000  1.0
d0055ff6:	eeb0 0a60 	vmov.f32	s0, s1
d0055ffa:	ed8d 7a05 	vstr	s14, [sp, #20]
d0055ffe:	edcd 7a06 	vstr	s15, [sp, #24]
d0056002:	f7ff fac1 	bl	d0055588 <vec3>
d0056006:	eeb5 9a40 	vcmp.f32	s18, #0.0
d005600a:	edcd 0a08 	vstr	s1, [sp, #32]
d005600e:	ed8d 0a07 	vstr	s0, [sp, #28]
d0056012:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d0056016:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005601a:	d0b4      	beq.n	d0055f86 <cameraTurn+0x52>
d005601c:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0056020:	eeb0 3a49 	vmov.f32	s6, s18
d0056024:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0056028:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d005602c:	eddd 1a04 	vldr	s3, [sp, #16]
d0056030:	ed9d 2a05 	vldr	s4, [sp, #20]
d0056034:	eddd 2a06 	vldr	s5, [sp, #24]
d0056038:	f7ff f9f6 	bl	d0055428 <rotateAroundAxis>
d005603c:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0056040:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0056044:	eeb0 3a49 	vmov.f32	s6, s18
d0056048:	ed94 0a06 	vldr	s0, [r4, #24]
d005604c:	edd4 0a07 	vldr	s1, [r4, #28]
d0056050:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0056054:	ed94 1a08 	vldr	s2, [r4, #32]
d0056058:	eddd 1a04 	vldr	s3, [sp, #16]
d005605c:	ed9d 2a05 	vldr	s4, [sp, #20]
d0056060:	eddd 2a06 	vldr	s5, [sp, #24]
d0056064:	f7ff f9e0 	bl	d0055428 <rotateAroundAxis>
d0056068:	eeb0 3a49 	vmov.f32	s6, s18
d005606c:	ed84 0a06 	vstr	s0, [r4, #24]
d0056070:	edc4 0a07 	vstr	s1, [r4, #28]
d0056074:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0056078:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d005607c:	ed84 1a08 	vstr	s2, [r4, #32]
d0056080:	eddd 1a04 	vldr	s3, [sp, #16]
d0056084:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0056088:	ed9d 2a05 	vldr	s4, [sp, #20]
d005608c:	eddd 2a06 	vldr	s5, [sp, #24]
d0056090:	f7ff f9ca 	bl	d0055428 <rotateAroundAxis>
d0056094:	eef5 8a40 	vcmp.f32	s17, #0.0
d0056098:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d005609c:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d00560a0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00560a4:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d00560a8:	f43f af73 	beq.w	d0055f92 <cameraTurn+0x5e>
d00560ac:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d00560b0:	eeb0 3a68 	vmov.f32	s6, s17
d00560b4:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d00560b8:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d00560bc:	eddd 1a01 	vldr	s3, [sp, #4]
d00560c0:	ed9d 2a02 	vldr	s4, [sp, #8]
d00560c4:	eddd 2a03 	vldr	s5, [sp, #12]
d00560c8:	f7ff f9ae 	bl	d0055428 <rotateAroundAxis>
d00560cc:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d00560d0:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d00560d4:	eeb0 3a68 	vmov.f32	s6, s17
d00560d8:	ed94 0a06 	vldr	s0, [r4, #24]
d00560dc:	edd4 0a07 	vldr	s1, [r4, #28]
d00560e0:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d00560e4:	ed94 1a08 	vldr	s2, [r4, #32]
d00560e8:	eddd 1a01 	vldr	s3, [sp, #4]
d00560ec:	ed9d 2a02 	vldr	s4, [sp, #8]
d00560f0:	eddd 2a03 	vldr	s5, [sp, #12]
d00560f4:	f7ff f998 	bl	d0055428 <rotateAroundAxis>
d00560f8:	eeb0 3a68 	vmov.f32	s6, s17
d00560fc:	ed84 0a06 	vstr	s0, [r4, #24]
d0056100:	edc4 0a07 	vstr	s1, [r4, #28]
d0056104:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0056108:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d005610c:	ed84 1a08 	vstr	s2, [r4, #32]
d0056110:	eddd 1a01 	vldr	s3, [sp, #4]
d0056114:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d0056118:	ed9d 2a02 	vldr	s4, [sp, #8]
d005611c:	eddd 2a03 	vldr	s5, [sp, #12]
d0056120:	f7ff f982 	bl	d0055428 <rotateAroundAxis>
d0056124:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0056128:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d005612c:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d0056130:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056134:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0056138:	f43f af31 	beq.w	d0055f9e <cameraTurn+0x6a>
d005613c:	ed94 0a0c 	vldr	s0, [r4, #48]	; 0x30
d0056140:	eeb0 3a48 	vmov.f32	s6, s16
d0056144:	edd4 0a0d 	vldr	s1, [r4, #52]	; 0x34
d0056148:	ed94 1a0e 	vldr	s2, [r4, #56]	; 0x38
d005614c:	eddd 1a07 	vldr	s3, [sp, #28]
d0056150:	ed9d 2a08 	vldr	s4, [sp, #32]
d0056154:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0056158:	f7ff f966 	bl	d0055428 <rotateAroundAxis>
d005615c:	ed84 0a0c 	vstr	s0, [r4, #48]	; 0x30
d0056160:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0056164:	eeb0 3a48 	vmov.f32	s6, s16
d0056168:	ed94 0a06 	vldr	s0, [r4, #24]
d005616c:	edd4 0a07 	vldr	s1, [r4, #28]
d0056170:	ed84 1a0e 	vstr	s2, [r4, #56]	; 0x38
d0056174:	ed94 1a08 	vldr	s2, [r4, #32]
d0056178:	eddd 1a07 	vldr	s3, [sp, #28]
d005617c:	ed9d 2a08 	vldr	s4, [sp, #32]
d0056180:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0056184:	f7ff f950 	bl	d0055428 <rotateAroundAxis>
d0056188:	ed84 0a06 	vstr	s0, [r4, #24]
d005618c:	edc4 0a07 	vstr	s1, [r4, #28]
d0056190:	eeb0 3a48 	vmov.f32	s6, s16
d0056194:	ed94 0a09 	vldr	s0, [r4, #36]	; 0x24
d0056198:	edd4 0a0a 	vldr	s1, [r4, #40]	; 0x28
d005619c:	ed84 1a08 	vstr	s2, [r4, #32]
d00561a0:	ed94 1a0b 	vldr	s2, [r4, #44]	; 0x2c
d00561a4:	eddd 1a07 	vldr	s3, [sp, #28]
d00561a8:	ed9d 2a08 	vldr	s4, [sp, #32]
d00561ac:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d00561b0:	f7ff f93a 	bl	d0055428 <rotateAroundAxis>
d00561b4:	ed84 0a09 	vstr	s0, [r4, #36]	; 0x24
d00561b8:	edc4 0a0a 	vstr	s1, [r4, #40]	; 0x28
d00561bc:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d00561c0:	e6ed      	b.n	d0055f9e <cameraTurn+0x6a>
d00561c2:	4770      	bx	lr
d00561c4:	00000000 	.word	0x00000000

d00561c8 <worldToCamera>:
d00561c8:	b084      	sub	sp, #16
d00561ca:	b510      	push	{r4, lr}
d00561cc:	ed2d 8b02 	vpush	{d8}
d00561d0:	b0ac      	sub	sp, #176	; 0xb0
d00561d2:	f10d 042f 	add.w	r4, sp, #47	; 0x2f
d00561d6:	f10d 0cc0 	add.w	ip, sp, #192	; 0xc0
d00561da:	ed8d 0a23 	vstr	s0, [sp, #140]	; 0x8c
d00561de:	f024 041f 	bic.w	r4, r4, #31
d00561e2:	edcd 0a24 	vstr	s1, [sp, #144]	; 0x90
d00561e6:	ed8d 1a25 	vstr	s2, [sp, #148]	; 0x94
d00561ea:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
d00561ee:	2260      	movs	r2, #96	; 0x60
d00561f0:	4661      	mov	r1, ip
d00561f2:	4620      	mov	r0, r4
d00561f4:	f004 f838 	bl	d005a268 <memcpy>
d00561f8:	edd4 7a00 	vldr	s15, [r4]
d00561fc:	ed9d 0a23 	vldr	s0, [sp, #140]	; 0x8c
d0056200:	ed94 7a01 	vldr	s14, [r4, #4]
d0056204:	ee30 0a67 	vsub.f32	s0, s0, s15
d0056208:	eddd 0a24 	vldr	s1, [sp, #144]	; 0x90
d005620c:	edd4 7a02 	vldr	s15, [r4, #8]
d0056210:	ed9d 1a25 	vldr	s2, [sp, #148]	; 0x94
d0056214:	ee70 0ac7 	vsub.f32	s1, s1, s14
d0056218:	edd4 1a06 	vldr	s3, [r4, #24]
d005621c:	ee31 1a67 	vsub.f32	s2, s2, s15
d0056220:	ed94 2a07 	vldr	s4, [r4, #28]
d0056224:	edd4 2a08 	vldr	s5, [r4, #32]
d0056228:	edcd 0a27 	vstr	s1, [sp, #156]	; 0x9c
d005622c:	ed8d 1a28 	vstr	s2, [sp, #160]	; 0xa0
d0056230:	ed8d 0a26 	vstr	s0, [sp, #152]	; 0x98
d0056234:	f7ff f886 	bl	d0055344 <vec3Dot>
d0056238:	edd4 1a09 	vldr	s3, [r4, #36]	; 0x24
d005623c:	eef0 8a40 	vmov.f32	s17, s0
d0056240:	ed94 2a0a 	vldr	s4, [r4, #40]	; 0x28
d0056244:	edd4 2a0b 	vldr	s5, [r4, #44]	; 0x2c
d0056248:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d005624c:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d0056250:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d0056254:	f7ff f876 	bl	d0055344 <vec3Dot>
d0056258:	eeb0 8a40 	vmov.f32	s16, s0
d005625c:	eddd 0a27 	vldr	s1, [sp, #156]	; 0x9c
d0056260:	ed9d 1a28 	vldr	s2, [sp, #160]	; 0xa0
d0056264:	edd4 1a0c 	vldr	s3, [r4, #48]	; 0x30
d0056268:	ed9d 0a26 	vldr	s0, [sp, #152]	; 0x98
d005626c:	ed94 2a0d 	vldr	s4, [r4, #52]	; 0x34
d0056270:	edd4 2a0e 	vldr	s5, [r4, #56]	; 0x38
d0056274:	f7ff f866 	bl	d0055344 <vec3Dot>
d0056278:	eef0 0a48 	vmov.f32	s1, s16
d005627c:	eeb0 1a40 	vmov.f32	s2, s0
d0056280:	eeb0 0a68 	vmov.f32	s0, s17
d0056284:	b02c      	add	sp, #176	; 0xb0
d0056286:	ecbd 8b02 	vpop	{d8}
d005628a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d005628e:	b004      	add	sp, #16
d0056290:	4770      	bx	lr
d0056292:	bf00      	nop

d0056294 <cameraSetRange>:
d0056294:	b1d8      	cbz	r0, d00562ce <cameraSetRange+0x3a>
d0056296:	eddf 7a11 	vldr	s15, [pc, #68]	; d00562dc <cameraSetRange+0x48>
d005629a:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d005629e:	eeb4 0ae0 	vcmpe.f32	s0, s1
d00562a2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00562a6:	da13      	bge.n	d00562d0 <cameraSetRange+0x3c>
d00562a8:	ee30 7ac0 	vsub.f32	s14, s1, s0
d00562ac:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d00562b0:	eec6 7a87 	vdiv.f32	s15, s13, s14
d00562b4:	4b0a      	ldr	r3, [pc, #40]	; (d00562e0 <cameraSetRange+0x4c>)
d00562b6:	490b      	ldr	r1, [pc, #44]	; (d00562e4 <cameraSetRange+0x50>)
d00562b8:	4a0b      	ldr	r2, [pc, #44]	; (d00562e8 <cameraSetRange+0x54>)
d00562ba:	ed80 0a10 	vstr	s0, [r0, #64]	; 0x40
d00562be:	edc0 0a11 	vstr	s1, [r0, #68]	; 0x44
d00562c2:	edc0 7a0f 	vstr	s15, [r0, #60]	; 0x3c
d00562c6:	6483      	str	r3, [r0, #72]	; 0x48
d00562c8:	64c3      	str	r3, [r0, #76]	; 0x4c
d00562ca:	6501      	str	r1, [r0, #80]	; 0x50
d00562cc:	6542      	str	r2, [r0, #84]	; 0x54
d00562ce:	4770      	bx	lr
d00562d0:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00562d4:	ee70 0a27 	vadd.f32	s1, s0, s15
d00562d8:	e7ec      	b.n	d00562b4 <cameraSetRange+0x20>
d00562da:	bf00      	nop
d00562dc:	3a83126f 	.word	0x3a83126f
d00562e0:	43700000 	.word	0x43700000
d00562e4:	43200000 	.word	0x43200000
d00562e8:	3f2aaaab 	.word	0x3f2aaaab

d00562ec <cameraMove>:
d00562ec:	b3a8      	cbz	r0, d005635a <cameraMove+0x6e>
d00562ee:	edd0 6a0b 	vldr	s13, [r0, #44]	; 0x2c
d00562f2:	ed90 7a09 	vldr	s14, [r0, #36]	; 0x24
d00562f6:	edd0 7a0a 	vldr	s15, [r0, #40]	; 0x28
d00562fa:	ee20 7a87 	vmul.f32	s14, s1, s14
d00562fe:	edd0 5a06 	vldr	s11, [r0, #24]
d0056302:	ee60 7aa7 	vmul.f32	s15, s1, s15
d0056306:	ed90 6a08 	vldr	s12, [r0, #32]
d005630a:	ee60 0aa6 	vmul.f32	s1, s1, s13
d005630e:	edd0 6a07 	vldr	s13, [r0, #28]
d0056312:	eea5 7a80 	vfma.f32	s14, s11, s0
d0056316:	edd0 4a01 	vldr	s9, [r0, #4]
d005631a:	eee6 7a80 	vfma.f32	s15, s13, s0
d005631e:	ed90 5a02 	vldr	s10, [r0, #8]
d0056322:	eee6 0a00 	vfma.f32	s1, s12, s0
d0056326:	edd0 6a00 	vldr	s13, [r0]
d005632a:	edd0 5a0c 	vldr	s11, [r0, #48]	; 0x30
d005632e:	ed90 6a0d 	vldr	s12, [r0, #52]	; 0x34
d0056332:	ee37 7a26 	vadd.f32	s14, s14, s13
d0056336:	edd0 6a0e 	vldr	s13, [r0, #56]	; 0x38
d005633a:	ee77 7aa4 	vadd.f32	s15, s15, s9
d005633e:	ee70 0a85 	vadd.f32	s1, s1, s10
d0056342:	eea5 7a81 	vfma.f32	s14, s11, s2
d0056346:	eee6 7a01 	vfma.f32	s15, s12, s2
d005634a:	eee6 0a81 	vfma.f32	s1, s13, s2
d005634e:	ed80 7a00 	vstr	s14, [r0]
d0056352:	edc0 7a01 	vstr	s15, [r0, #4]
d0056356:	edc0 0a02 	vstr	s1, [r0, #8]
d005635a:	4770      	bx	lr

d005635c <normalizeEntity.part.0>:
d005635c:	edd0 0a05 	vldr	s1, [r0, #20]
d0056360:	ed90 1a06 	vldr	s2, [r0, #24]
d0056364:	ed90 0a04 	vldr	s0, [r0, #16]
d0056368:	b510      	push	{r4, lr}
d005636a:	4604      	mov	r4, r0
d005636c:	f7ff f80c 	bl	d0055388 <vec3Normalize>
d0056370:	eeb0 7a60 	vmov.f32	s14, s1
d0056374:	eef0 7a41 	vmov.f32	s15, s2
d0056378:	ed84 0a04 	vstr	s0, [r4, #16]
d005637c:	ed94 0a07 	vldr	s0, [r4, #28]
d0056380:	ed84 7a05 	vstr	s14, [r4, #20]
d0056384:	edc4 7a06 	vstr	s15, [r4, #24]
d0056388:	edd4 0a08 	vldr	s1, [r4, #32]
d005638c:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0056390:	f7fe fffa 	bl	d0055388 <vec3Normalize>
d0056394:	eef0 1a40 	vmov.f32	s3, s0
d0056398:	eeb0 2a60 	vmov.f32	s4, s1
d005639c:	ed94 0a04 	vldr	s0, [r4, #16]
d00563a0:	eef0 2a41 	vmov.f32	s5, s2
d00563a4:	edc4 0a08 	vstr	s1, [r4, #32]
d00563a8:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d00563ac:	edd4 0a05 	vldr	s1, [r4, #20]
d00563b0:	ed94 1a06 	vldr	s2, [r4, #24]
d00563b4:	edc4 1a07 	vstr	s3, [r4, #28]
d00563b8:	f7fe ffd0 	bl	d005535c <vec3Cross>
d00563bc:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d00563c0:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d00563c4:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d00563c8:	f7fe ffde 	bl	d0055388 <vec3Normalize>
d00563cc:	edd4 1a04 	vldr	s3, [r4, #16]
d00563d0:	ed94 2a05 	vldr	s4, [r4, #20]
d00563d4:	edd4 2a06 	vldr	s5, [r4, #24]
d00563d8:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d00563dc:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d00563e0:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d00563e4:	f7fe ffba 	bl	d005535c <vec3Cross>
d00563e8:	ed84 0a07 	vstr	s0, [r4, #28]
d00563ec:	edc4 0a08 	vstr	s1, [r4, #32]
d00563f0:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d00563f4:	f7fe ffc8 	bl	d0055388 <vec3Normalize>
d00563f8:	ed84 0a07 	vstr	s0, [r4, #28]
d00563fc:	edc4 0a08 	vstr	s1, [r4, #32]
d0056400:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d0056404:	bd10      	pop	{r4, pc}
d0056406:	bf00      	nop

d0056408 <entityRotation.part.0>:
d0056408:	b5f0      	push	{r4, r5, r6, r7, lr}
d005640a:	4eb7      	ldr	r6, [pc, #732]	; (d00566e8 <entityRotation.part.0+0x2e0>)
d005640c:	eb00 0440 	add.w	r4, r0, r0, lsl #1
d0056410:	ed2d 8b04 	vpush	{d8-d9}
d0056414:	eb06 1444 	add.w	r4, r6, r4, lsl #5
d0056418:	eeb0 9a40 	vmov.f32	s18, s0
d005641c:	eef0 8a60 	vmov.f32	s17, s1
d0056420:	b08b      	sub	sp, #44	; 0x2c
d0056422:	eeb0 8a41 	vmov.f32	s16, s2
d0056426:	2900      	cmp	r1, #0
d0056428:	d040      	beq.n	d00564ac <entityRotation.part.0+0xa4>
d005642a:	eddf 1ab0 	vldr	s3, [pc, #704]	; d00566ec <entityRotation.part.0+0x2e4>
d005642e:	eeb7 2a00 	vmov.f32	s4, #112	; 0x3f800000  1.0
d0056432:	eeb4 0a61 	vcmp.f32	s0, s3
d0056436:	edc4 1a08 	vstr	s3, [r4, #32]
d005643a:	ed84 2a07 	vstr	s4, [r4, #28]
d005643e:	ed84 2a0b 	vstr	s4, [r4, #44]	; 0x2c
d0056442:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056446:	ed84 2a06 	vstr	s4, [r4, #24]
d005644a:	ed8d 2a02 	vstr	s4, [sp, #8]
d005644e:	ed8d 2a04 	vstr	s4, [sp, #16]
d0056452:	ed8d 2a09 	vstr	s4, [sp, #36]	; 0x24
d0056456:	edc4 1a09 	vstr	s3, [r4, #36]	; 0x24
d005645a:	edc4 1a0a 	vstr	s3, [r4, #40]	; 0x28
d005645e:	edc4 1a0c 	vstr	s3, [r4, #48]	; 0x30
d0056462:	edc4 1a04 	vstr	s3, [r4, #16]
d0056466:	edc4 1a05 	vstr	s3, [r4, #20]
d005646a:	edcd 1a01 	vstr	s3, [sp, #4]
d005646e:	edcd 1a03 	vstr	s3, [sp, #12]
d0056472:	edcd 1a05 	vstr	s3, [sp, #20]
d0056476:	edcd 1a06 	vstr	s3, [sp, #24]
d005647a:	edcd 1a07 	vstr	s3, [sp, #28]
d005647e:	edcd 1a08 	vstr	s3, [sp, #32]
d0056482:	d17e      	bne.n	d0056582 <entityRotation.part.0+0x17a>
d0056484:	eef5 8a40 	vcmp.f32	s17, #0.0
d0056488:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005648c:	f040 80c9 	bne.w	d0056622 <entityRotation.part.0+0x21a>
d0056490:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0056494:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056498:	f040 8117 	bne.w	d00566ca <entityRotation.part.0+0x2c2>
d005649c:	4620      	mov	r0, r4
d005649e:	b00b      	add	sp, #44	; 0x2c
d00564a0:	ecbd 8b04 	vpop	{d8-d9}
d00564a4:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d00564a8:	f7ff bf58 	b.w	d005635c <normalizeEntity.part.0>
d00564ac:	eeb5 0a40 	vcmp.f32	s0, #0.0
d00564b0:	4605      	mov	r5, r0
d00564b2:	0047      	lsls	r7, r0, #1
d00564b4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00564b8:	f040 811a 	bne.w	d00566f0 <entityRotation.part.0+0x2e8>
d00564bc:	eef5 8a40 	vcmp.f32	s17, #0.0
d00564c0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00564c4:	f040 8170 	bne.w	d00567a8 <entityRotation.part.0+0x3a0>
d00564c8:	eeb5 8a40 	vcmp.f32	s16, #0.0
d00564cc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00564d0:	d0e4      	beq.n	d005649c <entityRotation.part.0+0x94>
d00564d2:	443d      	add	r5, r7
d00564d4:	ab0a      	add	r3, sp, #40	; 0x28
d00564d6:	eeb0 3a48 	vmov.f32	s6, s16
d00564da:	ed94 0a04 	vldr	s0, [r4, #16]
d00564de:	eb06 1545 	add.w	r5, r6, r5, lsl #5
d00564e2:	edd4 0a05 	vldr	s1, [r4, #20]
d00564e6:	ed94 1a06 	vldr	s2, [r4, #24]
d00564ea:	3510      	adds	r5, #16
d00564ec:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
d00564f0:	e903 0007 	stmdb	r3, {r0, r1, r2}
d00564f4:	eddd 1a07 	vldr	s3, [sp, #28]
d00564f8:	ed9d 2a08 	vldr	s4, [sp, #32]
d00564fc:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0056500:	f7fe ff92 	bl	d0055428 <rotateAroundAxis>
d0056504:	eef0 6a40 	vmov.f32	s13, s0
d0056508:	eeb0 7a60 	vmov.f32	s14, s1
d005650c:	ed94 0a07 	vldr	s0, [r4, #28]
d0056510:	eef0 7a41 	vmov.f32	s15, s2
d0056514:	edd4 0a08 	vldr	s1, [r4, #32]
d0056518:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d005651c:	eeb0 3a48 	vmov.f32	s6, s16
d0056520:	eddd 1a07 	vldr	s3, [sp, #28]
d0056524:	ed9d 2a08 	vldr	s4, [sp, #32]
d0056528:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d005652c:	edc4 6a04 	vstr	s13, [r4, #16]
d0056530:	ed84 7a05 	vstr	s14, [r4, #20]
d0056534:	edc4 7a06 	vstr	s15, [r4, #24]
d0056538:	f7fe ff76 	bl	d0055428 <rotateAroundAxis>
d005653c:	eef0 6a40 	vmov.f32	s13, s0
d0056540:	eeb0 7a60 	vmov.f32	s14, s1
d0056544:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0056548:	eef0 7a41 	vmov.f32	s15, s2
d005654c:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0056550:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0056554:	eeb0 3a48 	vmov.f32	s6, s16
d0056558:	eddd 1a07 	vldr	s3, [sp, #28]
d005655c:	ed9d 2a08 	vldr	s4, [sp, #32]
d0056560:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d0056564:	edc4 6a07 	vstr	s13, [r4, #28]
d0056568:	ed84 7a08 	vstr	s14, [r4, #32]
d005656c:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0056570:	f7fe ff5a 	bl	d0055428 <rotateAroundAxis>
d0056574:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0056578:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d005657c:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0056580:	e78c      	b.n	d005649c <entityRotation.part.0+0x94>
d0056582:	eeb0 1a42 	vmov.f32	s2, s4
d0056586:	eef0 0a61 	vmov.f32	s1, s3
d005658a:	eeb0 3a40 	vmov.f32	s6, s0
d005658e:	eeb0 0a61 	vmov.f32	s0, s3
d0056592:	eef0 2a61 	vmov.f32	s5, s3
d0056596:	f7fe ff47 	bl	d0055428 <rotateAroundAxis>
d005659a:	eeb0 7a60 	vmov.f32	s14, s1
d005659e:	eef0 6a40 	vmov.f32	s13, s0
d00565a2:	edd4 0a08 	vldr	s1, [r4, #32]
d00565a6:	eef0 7a41 	vmov.f32	s15, s2
d00565aa:	ed94 0a07 	vldr	s0, [r4, #28]
d00565ae:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00565b2:	eeb0 3a49 	vmov.f32	s6, s18
d00565b6:	eddd 1a01 	vldr	s3, [sp, #4]
d00565ba:	ed9d 2a02 	vldr	s4, [sp, #8]
d00565be:	eddd 2a03 	vldr	s5, [sp, #12]
d00565c2:	edc4 6a04 	vstr	s13, [r4, #16]
d00565c6:	ed84 7a05 	vstr	s14, [r4, #20]
d00565ca:	edc4 7a06 	vstr	s15, [r4, #24]
d00565ce:	f7fe ff2b 	bl	d0055428 <rotateAroundAxis>
d00565d2:	eef0 6a40 	vmov.f32	s13, s0
d00565d6:	eeb0 7a60 	vmov.f32	s14, s1
d00565da:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00565de:	eef0 7a41 	vmov.f32	s15, s2
d00565e2:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00565e6:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00565ea:	eeb0 3a49 	vmov.f32	s6, s18
d00565ee:	eddd 1a01 	vldr	s3, [sp, #4]
d00565f2:	ed9d 2a02 	vldr	s4, [sp, #8]
d00565f6:	eddd 2a03 	vldr	s5, [sp, #12]
d00565fa:	edc4 6a07 	vstr	s13, [r4, #28]
d00565fe:	ed84 7a08 	vstr	s14, [r4, #32]
d0056602:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0056606:	f7fe ff0f 	bl	d0055428 <rotateAroundAxis>
d005660a:	eef5 8a40 	vcmp.f32	s17, #0.0
d005660e:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0056612:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0056616:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005661a:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d005661e:	f43f af37 	beq.w	d0056490 <entityRotation.part.0+0x88>
d0056622:	ed94 0a04 	vldr	s0, [r4, #16]
d0056626:	eeb0 3a68 	vmov.f32	s6, s17
d005662a:	edd4 0a05 	vldr	s1, [r4, #20]
d005662e:	ed94 1a06 	vldr	s2, [r4, #24]
d0056632:	eddd 1a04 	vldr	s3, [sp, #16]
d0056636:	ed9d 2a05 	vldr	s4, [sp, #20]
d005663a:	eddd 2a06 	vldr	s5, [sp, #24]
d005663e:	f7fe fef3 	bl	d0055428 <rotateAroundAxis>
d0056642:	eef0 6a40 	vmov.f32	s13, s0
d0056646:	eeb0 7a60 	vmov.f32	s14, s1
d005664a:	ed94 0a07 	vldr	s0, [r4, #28]
d005664e:	eef0 7a41 	vmov.f32	s15, s2
d0056652:	edd4 0a08 	vldr	s1, [r4, #32]
d0056656:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d005665a:	eeb0 3a68 	vmov.f32	s6, s17
d005665e:	eddd 1a04 	vldr	s3, [sp, #16]
d0056662:	ed9d 2a05 	vldr	s4, [sp, #20]
d0056666:	eddd 2a06 	vldr	s5, [sp, #24]
d005666a:	edc4 6a04 	vstr	s13, [r4, #16]
d005666e:	ed84 7a05 	vstr	s14, [r4, #20]
d0056672:	edc4 7a06 	vstr	s15, [r4, #24]
d0056676:	f7fe fed7 	bl	d0055428 <rotateAroundAxis>
d005667a:	eef0 6a40 	vmov.f32	s13, s0
d005667e:	eeb0 7a60 	vmov.f32	s14, s1
d0056682:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0056686:	eef0 7a41 	vmov.f32	s15, s2
d005668a:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d005668e:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0056692:	eeb0 3a68 	vmov.f32	s6, s17
d0056696:	eddd 1a04 	vldr	s3, [sp, #16]
d005669a:	ed9d 2a05 	vldr	s4, [sp, #20]
d005669e:	eddd 2a06 	vldr	s5, [sp, #24]
d00566a2:	edc4 6a07 	vstr	s13, [r4, #28]
d00566a6:	ed84 7a08 	vstr	s14, [r4, #32]
d00566aa:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d00566ae:	f7fe febb 	bl	d0055428 <rotateAroundAxis>
d00566b2:	eeb5 8a40 	vcmp.f32	s16, #0.0
d00566b6:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d00566ba:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d00566be:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00566c2:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d00566c6:	f43f aee9 	beq.w	d005649c <entityRotation.part.0+0x94>
d00566ca:	eeb0 3a48 	vmov.f32	s6, s16
d00566ce:	eddd 1a07 	vldr	s3, [sp, #28]
d00566d2:	ed9d 2a08 	vldr	s4, [sp, #32]
d00566d6:	eddd 2a09 	vldr	s5, [sp, #36]	; 0x24
d00566da:	ed94 0a04 	vldr	s0, [r4, #16]
d00566de:	edd4 0a05 	vldr	s1, [r4, #20]
d00566e2:	ed94 1a06 	vldr	s2, [r4, #24]
d00566e6:	e70b      	b.n	d0056500 <entityRotation.part.0+0xf8>
d00566e8:	d012b2a0 	.word	0xd012b2a0
d00566ec:	00000000 	.word	0x00000000
d00566f0:	f104 0328 	add.w	r3, r4, #40	; 0x28
d00566f4:	f10d 0c04 	add.w	ip, sp, #4
d00566f8:	eeb0 3a40 	vmov.f32	s6, s0
d00566fc:	edd4 0a05 	vldr	s1, [r4, #20]
d0056700:	ed94 0a04 	vldr	s0, [r4, #16]
d0056704:	ed94 1a06 	vldr	s2, [r4, #24]
d0056708:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d005670c:	e88c 0007 	stmia.w	ip, {r0, r1, r2}
d0056710:	eddd 1a01 	vldr	s3, [sp, #4]
d0056714:	ed9d 2a02 	vldr	s4, [sp, #8]
d0056718:	eddd 2a03 	vldr	s5, [sp, #12]
d005671c:	f7fe fe84 	bl	d0055428 <rotateAroundAxis>
d0056720:	eef0 6a40 	vmov.f32	s13, s0
d0056724:	eeb0 7a60 	vmov.f32	s14, s1
d0056728:	ed94 0a07 	vldr	s0, [r4, #28]
d005672c:	eef0 7a41 	vmov.f32	s15, s2
d0056730:	edd4 0a08 	vldr	s1, [r4, #32]
d0056734:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0056738:	eeb0 3a49 	vmov.f32	s6, s18
d005673c:	eddd 1a01 	vldr	s3, [sp, #4]
d0056740:	ed9d 2a02 	vldr	s4, [sp, #8]
d0056744:	eddd 2a03 	vldr	s5, [sp, #12]
d0056748:	edc4 6a04 	vstr	s13, [r4, #16]
d005674c:	ed84 7a05 	vstr	s14, [r4, #20]
d0056750:	edc4 7a06 	vstr	s15, [r4, #24]
d0056754:	f7fe fe68 	bl	d0055428 <rotateAroundAxis>
d0056758:	eef0 6a40 	vmov.f32	s13, s0
d005675c:	eeb0 7a60 	vmov.f32	s14, s1
d0056760:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0056764:	eef0 7a41 	vmov.f32	s15, s2
d0056768:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d005676c:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0056770:	eeb0 3a49 	vmov.f32	s6, s18
d0056774:	eddd 1a01 	vldr	s3, [sp, #4]
d0056778:	ed9d 2a02 	vldr	s4, [sp, #8]
d005677c:	eddd 2a03 	vldr	s5, [sp, #12]
d0056780:	edc4 6a07 	vstr	s13, [r4, #28]
d0056784:	ed84 7a08 	vstr	s14, [r4, #32]
d0056788:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d005678c:	f7fe fe4c 	bl	d0055428 <rotateAroundAxis>
d0056790:	eef5 8a40 	vcmp.f32	s17, #0.0
d0056794:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0056798:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d005679c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00567a0:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d00567a4:	f43f ae90 	beq.w	d00564c8 <entityRotation.part.0+0xc0>
d00567a8:	197b      	adds	r3, r7, r5
d00567aa:	f10d 0c10 	add.w	ip, sp, #16
d00567ae:	ed94 0a04 	vldr	s0, [r4, #16]
d00567b2:	eeb0 3a68 	vmov.f32	s6, s17
d00567b6:	eb06 1343 	add.w	r3, r6, r3, lsl #5
d00567ba:	edd4 0a05 	vldr	s1, [r4, #20]
d00567be:	ed94 1a06 	vldr	s2, [r4, #24]
d00567c2:	331c      	adds	r3, #28
d00567c4:	e893 0007 	ldmia.w	r3, {r0, r1, r2}
d00567c8:	e88c 0007 	stmia.w	ip, {r0, r1, r2}
d00567cc:	eddd 1a04 	vldr	s3, [sp, #16]
d00567d0:	ed9d 2a05 	vldr	s4, [sp, #20]
d00567d4:	eddd 2a06 	vldr	s5, [sp, #24]
d00567d8:	f7fe fe26 	bl	d0055428 <rotateAroundAxis>
d00567dc:	eef0 6a40 	vmov.f32	s13, s0
d00567e0:	eeb0 7a60 	vmov.f32	s14, s1
d00567e4:	ed94 0a07 	vldr	s0, [r4, #28]
d00567e8:	eef0 7a41 	vmov.f32	s15, s2
d00567ec:	edd4 0a08 	vldr	s1, [r4, #32]
d00567f0:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d00567f4:	eeb0 3a68 	vmov.f32	s6, s17
d00567f8:	eddd 1a04 	vldr	s3, [sp, #16]
d00567fc:	ed9d 2a05 	vldr	s4, [sp, #20]
d0056800:	eddd 2a06 	vldr	s5, [sp, #24]
d0056804:	edc4 6a04 	vstr	s13, [r4, #16]
d0056808:	ed84 7a05 	vstr	s14, [r4, #20]
d005680c:	edc4 7a06 	vstr	s15, [r4, #24]
d0056810:	f7fe fe0a 	bl	d0055428 <rotateAroundAxis>
d0056814:	eef0 6a40 	vmov.f32	s13, s0
d0056818:	eeb0 7a60 	vmov.f32	s14, s1
d005681c:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0056820:	eef0 7a41 	vmov.f32	s15, s2
d0056824:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0056828:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d005682c:	eeb0 3a68 	vmov.f32	s6, s17
d0056830:	eddd 1a04 	vldr	s3, [sp, #16]
d0056834:	ed9d 2a05 	vldr	s4, [sp, #20]
d0056838:	eddd 2a06 	vldr	s5, [sp, #24]
d005683c:	edc4 6a07 	vstr	s13, [r4, #28]
d0056840:	ed84 7a08 	vstr	s14, [r4, #32]
d0056844:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0056848:	f7fe fdee 	bl	d0055428 <rotateAroundAxis>
d005684c:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0056850:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0056854:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0056858:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005685c:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0056860:	f43f ae1c 	beq.w	d005649c <entityRotation.part.0+0x94>
d0056864:	e635      	b.n	d00564d2 <entityRotation.part.0+0xca>
d0056866:	bf00      	nop

d0056868 <meshComputeBoundsRadius>:
d0056868:	b1f0      	cbz	r0, d00568a8 <meshComputeBoundsRadius+0x40>
d005686a:	6803      	ldr	r3, [r0, #0]
d005686c:	b1e3      	cbz	r3, d00568a8 <meshComputeBoundsRadius+0x40>
d005686e:	6842      	ldr	r2, [r0, #4]
d0056870:	2a00      	cmp	r2, #0
d0056872:	dd19      	ble.n	d00568a8 <meshComputeBoundsRadius+0x40>
d0056874:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d0056878:	ed9f 6a0d 	vldr	s12, [pc, #52]	; d00568b0 <meshComputeBoundsRadius+0x48>
d005687c:	eb03 0282 	add.w	r2, r3, r2, lsl #2
d0056880:	edd3 7a01 	vldr	s15, [r3, #4]
d0056884:	330c      	adds	r3, #12
d0056886:	ed53 6a03 	vldr	s13, [r3, #-12]
d005688a:	ee67 7aa7 	vmul.f32	s15, s15, s15
d005688e:	ed13 7a01 	vldr	s14, [r3, #-4]
d0056892:	429a      	cmp	r2, r3
d0056894:	eee6 7aa6 	vfma.f32	s15, s13, s13
d0056898:	eee7 7a07 	vfma.f32	s15, s14, s14
d005689c:	fe86 6a27 	vmaxnm.f32	s12, s12, s15
d00568a0:	d1ee      	bne.n	d0056880 <meshComputeBoundsRadius+0x18>
d00568a2:	eeb1 0ac6 	vsqrt.f32	s0, s12
d00568a6:	4770      	bx	lr
d00568a8:	ed9f 0a01 	vldr	s0, [pc, #4]	; d00568b0 <meshComputeBoundsRadius+0x48>
d00568ac:	4770      	bx	lr
d00568ae:	bf00      	nop
d00568b0:	00000000 	.word	0x00000000

d00568b4 <entityWorldSpawn>:
d00568b4:	b4f0      	push	{r4, r5, r6, r7}
d00568b6:	4d20      	ldr	r5, [pc, #128]	; (d0056938 <entityWorldSpawn+0x84>)
d00568b8:	b084      	sub	sp, #16
d00568ba:	2300      	movs	r3, #0
d00568bc:	462a      	mov	r2, r5
d00568be:	ed8d 0a01 	vstr	s0, [sp, #4]
d00568c2:	edcd 0a02 	vstr	s1, [sp, #8]
d00568c6:	ed8d 1a03 	vstr	s2, [sp, #12]
d00568ca:	e003      	b.n	d00568d4 <entityWorldSpawn+0x20>
d00568cc:	3301      	adds	r3, #1
d00568ce:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
d00568d2:	d02b      	beq.n	d005692c <entityWorldSpawn+0x78>
d00568d4:	f892 4034 	ldrb.w	r4, [r2, #52]	; 0x34
d00568d8:	3260      	adds	r2, #96	; 0x60
d00568da:	2c00      	cmp	r4, #0
d00568dc:	d1f6      	bne.n	d00568cc <entityWorldSpawn+0x18>
d00568de:	eb03 0243 	add.w	r2, r3, r3, lsl #1
d00568e2:	4f16      	ldr	r7, [pc, #88]	; (d005693c <entityWorldSpawn+0x88>)
d00568e4:	f04f 517e 	mov.w	r1, #1065353216	; 0x3f800000
d00568e8:	2600      	movs	r6, #0
d00568ea:	eb05 1542 	add.w	r5, r5, r2, lsl #5
d00568ee:	f240 1c01 	movw	ip, #257	; 0x101
d00568f2:	eb07 1742 	add.w	r7, r7, r2, lsl #5
d00568f6:	aa04      	add	r2, sp, #16
d00568f8:	60e8      	str	r0, [r5, #12]
d00568fa:	61e9      	str	r1, [r5, #28]
d00568fc:	62e9      	str	r1, [r5, #44]	; 0x2c
d00568fe:	61a9      	str	r1, [r5, #24]
d0056900:	622e      	str	r6, [r5, #32]
d0056902:	626e      	str	r6, [r5, #36]	; 0x24
d0056904:	62ae      	str	r6, [r5, #40]	; 0x28
d0056906:	632e      	str	r6, [r5, #48]	; 0x30
d0056908:	612e      	str	r6, [r5, #16]
d005690a:	616e      	str	r6, [r5, #20]
d005690c:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0056910:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d0056914:	4618      	mov	r0, r3
d0056916:	f8a7 c014 	strh.w	ip, [r7, #20]
d005691a:	f885 4036 	strb.w	r4, [r5, #54]	; 0x36
d005691e:	63ee      	str	r6, [r5, #60]	; 0x3c
d0056920:	642e      	str	r6, [r5, #64]	; 0x40
d0056922:	646e      	str	r6, [r5, #68]	; 0x44
d0056924:	63ae      	str	r6, [r5, #56]	; 0x38
d0056926:	b004      	add	sp, #16
d0056928:	bcf0      	pop	{r4, r5, r6, r7}
d005692a:	4770      	bx	lr
d005692c:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d0056930:	4618      	mov	r0, r3
d0056932:	b004      	add	sp, #16
d0056934:	bcf0      	pop	{r4, r5, r6, r7}
d0056936:	4770      	bx	lr
d0056938:	d012b2a0 	.word	0xd012b2a0
d005693c:	d012b2c0 	.word	0xd012b2c0

d0056940 <entitySetPosition>:
d0056940:	b084      	sub	sp, #16
d0056942:	28ff      	cmp	r0, #255	; 0xff
d0056944:	ed8d 0a01 	vstr	s0, [sp, #4]
d0056948:	edcd 0a02 	vstr	s1, [sp, #8]
d005694c:	ed8d 1a03 	vstr	s2, [sp, #12]
d0056950:	d80e      	bhi.n	d0056970 <entitySetPosition+0x30>
d0056952:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0056956:	4b07      	ldr	r3, [pc, #28]	; (d0056974 <entitySetPosition+0x34>)
d0056958:	eb03 1340 	add.w	r3, r3, r0, lsl #5
d005695c:	f893 2034 	ldrb.w	r2, [r3, #52]	; 0x34
d0056960:	b132      	cbz	r2, d0056970 <entitySetPosition+0x30>
d0056962:	68da      	ldr	r2, [r3, #12]
d0056964:	b122      	cbz	r2, d0056970 <entitySetPosition+0x30>
d0056966:	aa04      	add	r2, sp, #16
d0056968:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d005696c:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0056970:	b004      	add	sp, #16
d0056972:	4770      	bx	lr
d0056974:	d012b2a0 	.word	0xd012b2a0

d0056978 <entityGetPosition>:
d0056978:	28ff      	cmp	r0, #255	; 0xff
d005697a:	b088      	sub	sp, #32
d005697c:	d80e      	bhi.n	d005699c <entityGetPosition+0x24>
d005697e:	4b0d      	ldr	r3, [pc, #52]	; (d00569b4 <entityGetPosition+0x3c>)
d0056980:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0056984:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d0056988:	f890 3034 	ldrb.w	r3, [r0, #52]	; 0x34
d005698c:	b133      	cbz	r3, d005699c <entityGetPosition+0x24>
d005698e:	68c3      	ldr	r3, [r0, #12]
d0056990:	b123      	cbz	r3, d005699c <entityGetPosition+0x24>
d0056992:	ab08      	add	r3, sp, #32
d0056994:	c807      	ldmia	r0, {r0, r1, r2}
d0056996:	e903 0007 	stmdb	r3, {r0, r1, r2}
d005699a:	e003      	b.n	d00569a4 <entityGetPosition+0x2c>
d005699c:	2300      	movs	r3, #0
d005699e:	9305      	str	r3, [sp, #20]
d00569a0:	9306      	str	r3, [sp, #24]
d00569a2:	9307      	str	r3, [sp, #28]
d00569a4:	ed9d 0a05 	vldr	s0, [sp, #20]
d00569a8:	eddd 0a06 	vldr	s1, [sp, #24]
d00569ac:	ed9d 1a07 	vldr	s2, [sp, #28]
d00569b0:	b008      	add	sp, #32
d00569b2:	4770      	bx	lr
d00569b4:	d012b2a0 	.word	0xd012b2a0

d00569b8 <entityGetForward>:
d00569b8:	28ff      	cmp	r0, #255	; 0xff
d00569ba:	b088      	sub	sp, #32
d00569bc:	d80f      	bhi.n	d00569de <entityGetForward+0x26>
d00569be:	4b0f      	ldr	r3, [pc, #60]	; (d00569fc <entityGetForward+0x44>)
d00569c0:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d00569c4:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d00569c8:	f890 3034 	ldrb.w	r3, [r0, #52]	; 0x34
d00569cc:	b13b      	cbz	r3, d00569de <entityGetForward+0x26>
d00569ce:	68c3      	ldr	r3, [r0, #12]
d00569d0:	b12b      	cbz	r3, d00569de <entityGetForward+0x26>
d00569d2:	3010      	adds	r0, #16
d00569d4:	ab08      	add	r3, sp, #32
d00569d6:	c807      	ldmia	r0, {r0, r1, r2}
d00569d8:	e903 0007 	stmdb	r3, {r0, r1, r2}
d00569dc:	e005      	b.n	d00569ea <entityGetForward+0x32>
d00569de:	2300      	movs	r3, #0
d00569e0:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
d00569e4:	9305      	str	r3, [sp, #20]
d00569e6:	9207      	str	r2, [sp, #28]
d00569e8:	9306      	str	r3, [sp, #24]
d00569ea:	ed9d 0a05 	vldr	s0, [sp, #20]
d00569ee:	eddd 0a06 	vldr	s1, [sp, #24]
d00569f2:	ed9d 1a07 	vldr	s2, [sp, #28]
d00569f6:	b008      	add	sp, #32
d00569f8:	4770      	bx	lr
d00569fa:	bf00      	nop
d00569fc:	d012b2a0 	.word	0xd012b2a0

d0056a00 <entityMoveForward>:
d0056a00:	28ff      	cmp	r0, #255	; 0xff
d0056a02:	d82b      	bhi.n	d0056a5c <entityMoveForward+0x5c>
d0056a04:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0056a08:	b510      	push	{r4, lr}
d0056a0a:	4c15      	ldr	r4, [pc, #84]	; (d0056a60 <entityMoveForward+0x60>)
d0056a0c:	b084      	sub	sp, #16
d0056a0e:	eb04 1440 	add.w	r4, r4, r0, lsl #5
d0056a12:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0056a16:	b1fb      	cbz	r3, d0056a58 <entityMoveForward+0x58>
d0056a18:	68e3      	ldr	r3, [r4, #12]
d0056a1a:	b1eb      	cbz	r3, d0056a58 <entityMoveForward+0x58>
d0056a1c:	eef0 1a40 	vmov.f32	s3, s0
d0056a20:	edd4 0a05 	vldr	s1, [r4, #20]
d0056a24:	ed94 0a04 	vldr	s0, [r4, #16]
d0056a28:	ed94 1a06 	vldr	s2, [r4, #24]
d0056a2c:	f7fe fc80 	bl	d0055330 <vec3Scale>
d0056a30:	eef0 1a40 	vmov.f32	s3, s0
d0056a34:	eeb0 2a60 	vmov.f32	s4, s1
d0056a38:	ed94 0a00 	vldr	s0, [r4]
d0056a3c:	eef0 2a41 	vmov.f32	s5, s2
d0056a40:	edd4 0a01 	vldr	s1, [r4, #4]
d0056a44:	ed94 1a02 	vldr	s2, [r4, #8]
d0056a48:	f7fe fc68 	bl	d005531c <vec3Add>
d0056a4c:	ed84 0a00 	vstr	s0, [r4]
d0056a50:	edc4 0a01 	vstr	s1, [r4, #4]
d0056a54:	ed84 1a02 	vstr	s2, [r4, #8]
d0056a58:	b004      	add	sp, #16
d0056a5a:	bd10      	pop	{r4, pc}
d0056a5c:	4770      	bx	lr
d0056a5e:	bf00      	nop
d0056a60:	d012b2a0 	.word	0xd012b2a0

d0056a64 <meshColour>:
d0056a64:	b150      	cbz	r0, d0056a7c <meshColour+0x18>
d0056a66:	6903      	ldr	r3, [r0, #16]
d0056a68:	b143      	cbz	r3, d0056a7c <meshColour+0x18>
d0056a6a:	6942      	ldr	r2, [r0, #20]
d0056a6c:	2a00      	cmp	r2, #0
d0056a6e:	dd05      	ble.n	d0056a7c <meshColour+0x18>
d0056a70:	eb03 1202 	add.w	r2, r3, r2, lsl #4
d0056a74:	7319      	strb	r1, [r3, #12]
d0056a76:	3310      	adds	r3, #16
d0056a78:	429a      	cmp	r2, r3
d0056a7a:	d1fb      	bne.n	d0056a74 <meshColour+0x10>
d0056a7c:	4770      	bx	lr
d0056a7e:	bf00      	nop

d0056a80 <entityTurnLocal>:
d0056a80:	28ff      	cmp	r0, #255	; 0xff
d0056a82:	d82c      	bhi.n	d0056ade <entityTurnLocal+0x5e>
d0056a84:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0056a88:	b510      	push	{r4, lr}
d0056a8a:	4c65      	ldr	r4, [pc, #404]	; (d0056c20 <entityTurnLocal+0x1a0>)
d0056a8c:	eb04 1440 	add.w	r4, r4, r0, lsl #5
d0056a90:	ed2d 8b04 	vpush	{d8-d9}
d0056a94:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d0056a98:	b1f3      	cbz	r3, d0056ad8 <entityTurnLocal+0x58>
d0056a9a:	68e3      	ldr	r3, [r4, #12]
d0056a9c:	b1e3      	cbz	r3, d0056ad8 <entityTurnLocal+0x58>
d0056a9e:	eeb5 0a40 	vcmp.f32	s0, #0.0
d0056aa2:	eeb0 9a40 	vmov.f32	s18, s0
d0056aa6:	eef0 8a60 	vmov.f32	s17, s1
d0056aaa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056aae:	eeb0 8a41 	vmov.f32	s16, s2
d0056ab2:	f040 8081 	bne.w	d0056bb8 <entityTurnLocal+0x138>
d0056ab6:	eef5 8a40 	vcmp.f32	s17, #0.0
d0056aba:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056abe:	d148      	bne.n	d0056b52 <entityTurnLocal+0xd2>
d0056ac0:	eeb5 8a40 	vcmp.f32	s16, #0.0
d0056ac4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0056ac8:	d10a      	bne.n	d0056ae0 <entityTurnLocal+0x60>
d0056aca:	4620      	mov	r0, r4
d0056acc:	ecbd 8b04 	vpop	{d8-d9}
d0056ad0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0056ad4:	f7ff bc42 	b.w	d005635c <normalizeEntity.part.0>
d0056ad8:	ecbd 8b04 	vpop	{d8-d9}
d0056adc:	bd10      	pop	{r4, pc}
d0056ade:	4770      	bx	lr
d0056ae0:	ed94 0a07 	vldr	s0, [r4, #28]
d0056ae4:	eeb0 3a48 	vmov.f32	s6, s16
d0056ae8:	edd4 0a08 	vldr	s1, [r4, #32]
d0056aec:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0056af0:	edd4 1a04 	vldr	s3, [r4, #16]
d0056af4:	ed94 2a05 	vldr	s4, [r4, #20]
d0056af8:	edd4 2a06 	vldr	s5, [r4, #24]
d0056afc:	f7fe fc94 	bl	d0055428 <rotateAroundAxis>
d0056b00:	eef0 6a40 	vmov.f32	s13, s0
d0056b04:	eeb0 7a60 	vmov.f32	s14, s1
d0056b08:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0056b0c:	eef0 7a41 	vmov.f32	s15, s2
d0056b10:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0056b14:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0056b18:	eeb0 3a48 	vmov.f32	s6, s16
d0056b1c:	edd4 1a04 	vldr	s3, [r4, #16]
d0056b20:	ed94 2a05 	vldr	s4, [r4, #20]
d0056b24:	edd4 2a06 	vldr	s5, [r4, #24]
d0056b28:	edc4 6a07 	vstr	s13, [r4, #28]
d0056b2c:	ed84 7a08 	vstr	s14, [r4, #32]
d0056b30:	edc4 7a09 	vstr	s15, [r4, #36]	; 0x24
d0056b34:	f7fe fc78 	bl	d0055428 <rotateAroundAxis>
d0056b38:	4620      	mov	r0, r4
d0056b3a:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0056b3e:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0056b42:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0056b46:	ecbd 8b04 	vpop	{d8-d9}
d0056b4a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d0056b4e:	f7ff bc05 	b.w	d005635c <normalizeEntity.part.0>
d0056b52:	ed94 0a04 	vldr	s0, [r4, #16]
d0056b56:	eeb0 3a68 	vmov.f32	s6, s17
d0056b5a:	edd4 0a05 	vldr	s1, [r4, #20]
d0056b5e:	ed94 1a06 	vldr	s2, [r4, #24]
d0056b62:	edd4 1a07 	vldr	s3, [r4, #28]
d0056b66:	ed94 2a08 	vldr	s4, [r4, #32]
d0056b6a:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d0056b6e:	f7fe fc5b 	bl	d0055428 <rotateAroundAxis>
d0056b72:	eef0 6a40 	vmov.f32	s13, s0
d0056b76:	eeb0 7a60 	vmov.f32	s14, s1
d0056b7a:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0056b7e:	eef0 7a41 	vmov.f32	s15, s2
d0056b82:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0056b86:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d0056b8a:	eeb0 3a68 	vmov.f32	s6, s17
d0056b8e:	edd4 1a07 	vldr	s3, [r4, #28]
d0056b92:	ed94 2a08 	vldr	s4, [r4, #32]
d0056b96:	edd4 2a09 	vldr	s5, [r4, #36]	; 0x24
d0056b9a:	edc4 6a04 	vstr	s13, [r4, #16]
d0056b9e:	ed84 7a05 	vstr	s14, [r4, #20]
d0056ba2:	edc4 7a06 	vstr	s15, [r4, #24]
d0056ba6:	f7fe fc3f 	bl	d0055428 <rotateAroundAxis>
d0056baa:	ed84 0a0a 	vstr	s0, [r4, #40]	; 0x28
d0056bae:	edc4 0a0b 	vstr	s1, [r4, #44]	; 0x2c
d0056bb2:	ed84 1a0c 	vstr	s2, [r4, #48]	; 0x30
d0056bb6:	e783      	b.n	d0056ac0 <entityTurnLocal+0x40>
d0056bb8:	eeb0 3a40 	vmov.f32	s6, s0
d0056bbc:	edd4 0a05 	vldr	s1, [r4, #20]
d0056bc0:	ed94 0a04 	vldr	s0, [r4, #16]
d0056bc4:	ed94 1a06 	vldr	s2, [r4, #24]
d0056bc8:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d0056bcc:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d0056bd0:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d0056bd4:	f7fe fc28 	bl	d0055428 <rotateAroundAxis>
d0056bd8:	eef0 6a40 	vmov.f32	s13, s0
d0056bdc:	eeb0 7a60 	vmov.f32	s14, s1
d0056be0:	ed94 0a07 	vldr	s0, [r4, #28]
d0056be4:	eef0 7a41 	vmov.f32	s15, s2
d0056be8:	edd4 0a08 	vldr	s1, [r4, #32]
d0056bec:	ed94 1a09 	vldr	s2, [r4, #36]	; 0x24
d0056bf0:	eeb0 3a49 	vmov.f32	s6, s18
d0056bf4:	edd4 1a0a 	vldr	s3, [r4, #40]	; 0x28
d0056bf8:	ed94 2a0b 	vldr	s4, [r4, #44]	; 0x2c
d0056bfc:	edd4 2a0c 	vldr	s5, [r4, #48]	; 0x30
d0056c00:	edc4 6a04 	vstr	s13, [r4, #16]
d0056c04:	ed84 7a05 	vstr	s14, [r4, #20]
d0056c08:	edc4 7a06 	vstr	s15, [r4, #24]
d0056c0c:	f7fe fc0c 	bl	d0055428 <rotateAroundAxis>
d0056c10:	ed84 0a07 	vstr	s0, [r4, #28]
d0056c14:	edc4 0a08 	vstr	s1, [r4, #32]
d0056c18:	ed84 1a09 	vstr	s2, [r4, #36]	; 0x24
d0056c1c:	e74b      	b.n	d0056ab6 <entityTurnLocal+0x36>
d0056c1e:	bf00      	nop
d0056c20:	d012b2a0 	.word	0xd012b2a0

d0056c24 <entityRotation>:
d0056c24:	28ff      	cmp	r0, #255	; 0xff
d0056c26:	d80b      	bhi.n	d0056c40 <entityRotation+0x1c>
d0056c28:	4a06      	ldr	r2, [pc, #24]	; (d0056c44 <entityRotation+0x20>)
d0056c2a:	eb00 0340 	add.w	r3, r0, r0, lsl #1
d0056c2e:	eb02 1343 	add.w	r3, r2, r3, lsl #5
d0056c32:	f893 2034 	ldrb.w	r2, [r3, #52]	; 0x34
d0056c36:	b11a      	cbz	r2, d0056c40 <entityRotation+0x1c>
d0056c38:	68db      	ldr	r3, [r3, #12]
d0056c3a:	b10b      	cbz	r3, d0056c40 <entityRotation+0x1c>
d0056c3c:	f7ff bbe4 	b.w	d0056408 <entityRotation.part.0>
d0056c40:	4770      	bx	lr
d0056c42:	bf00      	nop
d0056c44:	d012b2a0 	.word	0xd012b2a0

d0056c48 <createBox>:
d0056c48:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0056c4c:	ed2d 8b04 	vpush	{d8-d9}
d0056c50:	b0e1      	sub	sp, #388	; 0x184
d0056c52:	f04f 0824 	mov.w	r8, #36	; 0x24
d0056c56:	4606      	mov	r6, r0
d0056c58:	2100      	movs	r1, #0
d0056c5a:	f20d 1547 	addw	r5, sp, #327	; 0x147
d0056c5e:	4642      	mov	r2, r8
d0056c60:	eeb0 8a41 	vmov.f32	s16, s2
d0056c64:	9601      	str	r6, [sp, #4]
d0056c66:	f025 051f 	bic.w	r5, r5, #31
d0056c6a:	eeb0 9a40 	vmov.f32	s18, s0
d0056c6e:	eef0 8a60 	vmov.f32	s17, s1
d0056c72:	f04f 090c 	mov.w	r9, #12
d0056c76:	f105 001c 	add.w	r0, r5, #28
d0056c7a:	f04f 0ac0 	mov.w	sl, #192	; 0xc0
d0056c7e:	f003 fb01 	bl	d005a284 <memset>
d0056c82:	2308      	movs	r3, #8
d0056c84:	2060      	movs	r0, #96	; 0x60
d0056c86:	f04f 0b04 	mov.w	fp, #4
d0056c8a:	606b      	str	r3, [r5, #4]
d0056c8c:	f003 face 	bl	d005a22c <malloc>
d0056c90:	eeb6 1a00 	vmov.f32	s2, #96	; 0x3f000000  0.5
d0056c94:	4604      	mov	r4, r0
d0056c96:	2060      	movs	r0, #96	; 0x60
d0056c98:	f8c5 900c 	str.w	r9, [r5, #12]
d0056c9c:	602c      	str	r4, [r5, #0]
d0056c9e:	2604      	movs	r6, #4
d0056ca0:	ee29 0a01 	vmul.f32	s0, s18, s2
d0056ca4:	ee68 0a81 	vmul.f32	s1, s17, s2
d0056ca8:	ee28 1a01 	vmul.f32	s2, s16, s2
d0056cac:	eef1 6a40 	vneg.f32	s13, s0
d0056cb0:	ed84 0a03 	vstr	s0, [r4, #12]
d0056cb4:	eeb1 7a60 	vneg.f32	s14, s1
d0056cb8:	ed84 0a06 	vstr	s0, [r4, #24]
d0056cbc:	eef1 7a41 	vneg.f32	s15, s2
d0056cc0:	ed84 1a08 	vstr	s2, [r4, #32]
d0056cc4:	ed84 1a0b 	vstr	s2, [r4, #44]	; 0x2c
d0056cc8:	edc4 0a0d 	vstr	s1, [r4, #52]	; 0x34
d0056ccc:	ed84 0a0f 	vstr	s0, [r4, #60]	; 0x3c
d0056cd0:	edc4 0a10 	vstr	s1, [r4, #64]	; 0x40
d0056cd4:	ed84 0a12 	vstr	s0, [r4, #72]	; 0x48
d0056cd8:	edc4 0a13 	vstr	s1, [r4, #76]	; 0x4c
d0056cdc:	ed84 1a14 	vstr	s2, [r4, #80]	; 0x50
d0056ce0:	edc4 0a16 	vstr	s1, [r4, #88]	; 0x58
d0056ce4:	ed84 1a17 	vstr	s2, [r4, #92]	; 0x5c
d0056ce8:	edc4 6a00 	vstr	s13, [r4]
d0056cec:	edc4 6a09 	vstr	s13, [r4, #36]	; 0x24
d0056cf0:	edc4 6a0c 	vstr	s13, [r4, #48]	; 0x30
d0056cf4:	edc4 6a15 	vstr	s13, [r4, #84]	; 0x54
d0056cf8:	ed84 7a01 	vstr	s14, [r4, #4]
d0056cfc:	ed84 7a04 	vstr	s14, [r4, #16]
d0056d00:	ed84 7a07 	vstr	s14, [r4, #28]
d0056d04:	ed84 7a0a 	vstr	s14, [r4, #40]	; 0x28
d0056d08:	edc4 7a02 	vstr	s15, [r4, #8]
d0056d0c:	edc4 7a05 	vstr	s15, [r4, #20]
d0056d10:	edc4 7a0e 	vstr	s15, [r4, #56]	; 0x38
d0056d14:	edc4 7a11 	vstr	s15, [r4, #68]	; 0x44
d0056d18:	f003 fa88 	bl	d005a22c <malloc>
d0056d1c:	4607      	mov	r7, r0
d0056d1e:	2260      	movs	r2, #96	; 0x60
d0056d20:	a802      	add	r0, sp, #8
d0056d22:	4987      	ldr	r1, [pc, #540]	; (d0056f40 <createBox+0x2f8>)
d0056d24:	60af      	str	r7, [r5, #8]
d0056d26:	f003 fa9f 	bl	d005a268 <memcpy>
d0056d2a:	a902      	add	r1, sp, #8
d0056d2c:	2260      	movs	r2, #96	; 0x60
d0056d2e:	4638      	mov	r0, r7
d0056d30:	f003 fa9a 	bl	d005a268 <memcpy>
d0056d34:	4650      	mov	r0, sl
d0056d36:	f8c5 9014 	str.w	r9, [r5, #20]
d0056d3a:	f003 fa77 	bl	d005a22c <malloc>
d0056d3e:	4607      	mov	r7, r0
d0056d40:	4652      	mov	r2, sl
d0056d42:	a81a      	add	r0, sp, #104	; 0x68
d0056d44:	2100      	movs	r1, #0
d0056d46:	612f      	str	r7, [r5, #16]
d0056d48:	f003 fa9c 	bl	d005a284 <memset>
d0056d4c:	f04f 0c02 	mov.w	ip, #2
d0056d50:	4638      	mov	r0, r7
d0056d52:	2705      	movs	r7, #5
d0056d54:	4652      	mov	r2, sl
d0056d56:	f04f 0903 	mov.w	r9, #3
d0056d5a:	f04f 0a06 	mov.w	sl, #6
d0056d5e:	f88d 80b4 	strb.w	r8, [sp, #180]	; 0xb4
d0056d62:	f04f 0e01 	mov.w	lr, #1
d0056d66:	f88d 80c4 	strb.w	r8, [sp, #196]	; 0xc4
d0056d6a:	f04f 0804 	mov.w	r8, #4
d0056d6e:	f8cd c070 	str.w	ip, [sp, #112]	; 0x70
d0056d72:	2307      	movs	r3, #7
d0056d74:	f8cd c07c 	str.w	ip, [sp, #124]	; 0x7c
d0056d78:	2122      	movs	r1, #34	; 0x22
d0056d7a:	f8cd c0e0 	str.w	ip, [sp, #224]	; 0xe0
d0056d7e:	f04f 0c06 	mov.w	ip, #6
d0056d82:	9724      	str	r7, [sp, #144]	; 0x90
d0056d84:	972c      	str	r7, [sp, #176]	; 0xb0
d0056d86:	972f      	str	r7, [sp, #188]	; 0xbc
d0056d88:	2707      	movs	r7, #7
d0056d8a:	f8cd 9080 	str.w	r9, [sp, #128]	; 0x80
d0056d8e:	f8cd 9100 	str.w	r9, [sp, #256]	; 0x100
d0056d92:	f04f 0905 	mov.w	r9, #5
d0056d96:	f8cd a0a0 	str.w	sl, [sp, #160]	; 0xa0
d0056d9a:	f8cd a0d0 	str.w	sl, [sp, #208]	; 0xd0
d0056d9e:	f04f 0a01 	mov.w	sl, #1
d0056da2:	f8cd 80ac 	str.w	r8, [sp, #172]	; 0xac
d0056da6:	f8cd 8110 	str.w	r8, [sp, #272]	; 0x110
d0056daa:	f04f 0801 	mov.w	r8, #1
d0056dae:	933c      	str	r3, [sp, #240]	; 0xf0
d0056db0:	2323      	movs	r3, #35	; 0x23
d0056db2:	f8cd e06c 	str.w	lr, [sp, #108]	; 0x6c
d0056db6:	f8cd e0c0 	str.w	lr, [sp, #192]	; 0xc0
d0056dba:	f04f 0e25 	mov.w	lr, #37	; 0x25
d0056dbe:	f88d 1074 	strb.w	r1, [sp, #116]	; 0x74
d0056dc2:	f88d 1084 	strb.w	r1, [sp, #132]	; 0x84
d0056dc6:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
d0056dca:	f88d 1104 	strb.w	r1, [sp, #260]	; 0x104
d0056dce:	a91a      	add	r1, sp, #104	; 0x68
d0056dd0:	f88d 3094 	strb.w	r3, [sp, #148]	; 0x94
d0056dd4:	f88d 30a4 	strb.w	r3, [sp, #164]	; 0xa4
d0056dd8:	f88d e0d4 	strb.w	lr, [sp, #212]	; 0xd4
d0056ddc:	f88d e0e4 	strb.w	lr, [sp, #228]	; 0xe4
d0056de0:	e9cd bc22 	strd	fp, ip, [sp, #136]	; 0x88
d0056de4:	e9cd 6726 	strd	r6, r7, [sp, #152]	; 0x98
d0056de8:	f04f 0b06 	mov.w	fp, #6
d0056dec:	2602      	movs	r6, #2
d0056dee:	2706      	movs	r7, #6
d0056df0:	e9cd 8932 	strd	r8, r9, [sp, #200]	; 0xc8
d0056df4:	e9cd ab36 	strd	sl, fp, [sp, #216]	; 0xd8
d0056df8:	e9cd 673a 	strd	r6, r7, [sp, #232]	; 0xe8
d0056dfc:	f04f 0802 	mov.w	r8, #2
d0056e00:	f04f 0907 	mov.w	r9, #7
d0056e04:	f04f 0a03 	mov.w	sl, #3
d0056e08:	f04f 0b07 	mov.w	fp, #7
d0056e0c:	2603      	movs	r6, #3
d0056e0e:	2704      	movs	r7, #4
d0056e10:	e9cd 893e 	strd	r8, r9, [sp, #248]	; 0xf8
d0056e14:	e9cd ab42 	strd	sl, fp, [sp, #264]	; 0x108
d0056e18:	f88d 3114 	strb.w	r3, [sp, #276]	; 0x114
d0056e1c:	f88d 3124 	strb.w	r3, [sp, #292]	; 0x124
d0056e20:	e9cd 6746 	strd	r6, r7, [sp, #280]	; 0x118
d0056e24:	f003 fa20 	bl	d005a268 <memcpy>
d0056e28:	edd4 7a01 	vldr	s15, [r4, #4]
d0056e2c:	ed94 6a04 	vldr	s12, [r4, #16]
d0056e30:	4628      	mov	r0, r5
d0056e32:	edd4 5a0a 	vldr	s11, [r4, #40]	; 0x28
d0056e36:	ee67 6aa7 	vmul.f32	s13, s15, s15
d0056e3a:	ed94 7a07 	vldr	s14, [r4, #28]
d0056e3e:	ee66 7a06 	vmul.f32	s15, s12, s12
d0056e42:	ed94 6a0d 	vldr	s12, [r4, #52]	; 0x34
d0056e46:	ee25 4aa5 	vmul.f32	s8, s11, s11
d0056e4a:	ed94 3a00 	vldr	s6, [r4]
d0056e4e:	ee27 7a07 	vmul.f32	s14, s14, s14
d0056e52:	edd4 3a03 	vldr	s7, [r4, #12]
d0056e56:	ee66 4a06 	vmul.f32	s9, s12, s12
d0056e5a:	ed94 5a10 	vldr	s10, [r4, #64]	; 0x40
d0056e5e:	eee3 6a03 	vfma.f32	s13, s6, s6
d0056e62:	edd4 5a13 	vldr	s11, [r4, #76]	; 0x4c
d0056e66:	eee3 7aa3 	vfma.f32	s15, s7, s7
d0056e6a:	ed94 6a16 	vldr	s12, [r4, #88]	; 0x58
d0056e6e:	ee25 5a05 	vmul.f32	s10, s10, s10
d0056e72:	edd4 2a06 	vldr	s5, [r4, #24]
d0056e76:	ee65 5aa5 	vmul.f32	s11, s11, s11
d0056e7a:	ed94 3a09 	vldr	s6, [r4, #36]	; 0x24
d0056e7e:	ee26 6a06 	vmul.f32	s12, s12, s12
d0056e82:	edd4 3a0c 	vldr	s7, [r4, #48]	; 0x30
d0056e86:	eea2 7aa2 	vfma.f32	s14, s5, s5
d0056e8a:	eea3 4a03 	vfma.f32	s8, s6, s6
d0056e8e:	edd4 2a0f 	vldr	s5, [r4, #60]	; 0x3c
d0056e92:	ed94 3a12 	vldr	s6, [r4, #72]	; 0x48
d0056e96:	eee3 4aa3 	vfma.f32	s9, s7, s7
d0056e9a:	edd4 3a15 	vldr	s7, [r4, #84]	; 0x54
d0056e9e:	eea2 5aa2 	vfma.f32	s10, s5, s5
d0056ea2:	eee3 5a03 	vfma.f32	s11, s6, s6
d0056ea6:	ed94 3a02 	vldr	s6, [r4, #8]
d0056eaa:	eea3 6aa3 	vfma.f32	s12, s7, s7
d0056eae:	edd4 3a05 	vldr	s7, [r4, #20]
d0056eb2:	eee3 6a03 	vfma.f32	s13, s6, s6
d0056eb6:	edd4 2a08 	vldr	s5, [r4, #32]
d0056eba:	ed94 3a0b 	vldr	s6, [r4, #44]	; 0x2c
d0056ebe:	eee3 7aa3 	vfma.f32	s15, s7, s7
d0056ec2:	edd4 3a0e 	vldr	s7, [r4, #56]	; 0x38
d0056ec6:	eea2 7aa2 	vfma.f32	s14, s5, s5
d0056eca:	eea3 4a03 	vfma.f32	s8, s6, s6
d0056ece:	edd4 2a11 	vldr	s5, [r4, #68]	; 0x44
d0056ed2:	eee3 4aa3 	vfma.f32	s9, s7, s7
d0056ed6:	ed94 3a14 	vldr	s6, [r4, #80]	; 0x50
d0056eda:	edd4 3a17 	vldr	s7, [r4, #92]	; 0x5c
d0056ede:	eea2 5aa2 	vfma.f32	s10, s5, s5
d0056ee2:	eee3 5a03 	vfma.f32	s11, s6, s6
d0056ee6:	ed9f 3a17 	vldr	s6, [pc, #92]	; d0056f44 <createBox+0x2fc>
d0056eea:	eea3 6aa3 	vfma.f32	s12, s7, s7
d0056eee:	fec6 7aa7 	vmaxnm.f32	s15, s13, s15
d0056ef2:	fec7 7a83 	vmaxnm.f32	s15, s15, s6
d0056ef6:	fe87 7a87 	vmaxnm.f32	s14, s15, s14
d0056efa:	fe87 7a04 	vmaxnm.f32	s14, s14, s8
d0056efe:	fec7 7a24 	vmaxnm.f32	s15, s14, s9
d0056f02:	fec7 7a85 	vmaxnm.f32	s15, s15, s10
d0056f06:	fec7 7aa5 	vmaxnm.f32	s15, s15, s11
d0056f0a:	fec6 7a27 	vmaxnm.f32	s15, s12, s15
d0056f0e:	eeb1 7ae7 	vsqrt.f32	s14, s15
d0056f12:	ed85 7a06 	vstr	s14, [r5, #24]
d0056f16:	f7fb fd91 	bl	d0052a3c <meshSetDefaultMaterial>
d0056f1a:	9e01      	ldr	r6, [sp, #4]
d0056f1c:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0056f1e:	4634      	mov	r4, r6
d0056f20:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0056f22:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0056f24:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0056f26:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d0056f28:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d0056f2a:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0056f2e:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d0056f32:	4630      	mov	r0, r6
d0056f34:	b061      	add	sp, #388	; 0x184
d0056f36:	ecbd 8b04 	vpop	{d8-d9}
d0056f3a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0056f3e:	bf00      	nop
d0056f40:	d005c3c0 	.word	0xd005c3c0
d0056f44:	00000000 	.word	0x00000000

d0056f48 <copyMesh>:
d0056f48:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0056f4c:	460f      	mov	r7, r1
d0056f4e:	b083      	sub	sp, #12
d0056f50:	2240      	movs	r2, #64	; 0x40
d0056f52:	2100      	movs	r1, #0
d0056f54:	4606      	mov	r6, r0
d0056f56:	f003 f995 	bl	d005a284 <memset>
d0056f5a:	2f00      	cmp	r7, #0
d0056f5c:	d077      	beq.n	d005704e <copyMesh+0x106>
d0056f5e:	687b      	ldr	r3, [r7, #4]
d0056f60:	697a      	ldr	r2, [r7, #20]
d0056f62:	2b00      	cmp	r3, #0
d0056f64:	f8d7 800c 	ldr.w	r8, [r7, #12]
d0056f68:	9301      	str	r3, [sp, #4]
d0056f6a:	9200      	str	r2, [sp, #0]
d0056f6c:	dc59      	bgt.n	d0057022 <copyMesh+0xda>
d0056f6e:	f1b8 0f00 	cmp.w	r8, #0
d0056f72:	f04f 0900 	mov.w	r9, #0
d0056f76:	dc5d      	bgt.n	d0057034 <copyMesh+0xec>
d0056f78:	9b00      	ldr	r3, [sp, #0]
d0056f7a:	f04f 0a00 	mov.w	sl, #0
d0056f7e:	2b00      	cmp	r3, #0
d0056f80:	dc60      	bgt.n	d0057044 <copyMesh+0xfc>
d0056f82:	f04f 0c00 	mov.w	ip, #0
d0056f86:	9b01      	ldr	r3, [sp, #4]
d0056f88:	2b00      	cmp	r3, #0
d0056f8a:	dd0f      	ble.n	d0056fac <copyMesh+0x64>
d0056f8c:	eb03 0543 	add.w	r5, r3, r3, lsl #1
d0056f90:	f8d7 e000 	ldr.w	lr, [r7]
d0056f94:	2300      	movs	r3, #0
d0056f96:	00ad      	lsls	r5, r5, #2
d0056f98:	eb0e 0203 	add.w	r2, lr, r3
d0056f9c:	eb09 0403 	add.w	r4, r9, r3
d0056fa0:	330c      	adds	r3, #12
d0056fa2:	ca07      	ldmia	r2, {r0, r1, r2}
d0056fa4:	429d      	cmp	r5, r3
d0056fa6:	e884 0007 	stmia.w	r4, {r0, r1, r2}
d0056faa:	d1f5      	bne.n	d0056f98 <copyMesh+0x50>
d0056fac:	f1b8 0f00 	cmp.w	r8, #0
d0056fb0:	dd0b      	ble.n	d0056fca <copyMesh+0x82>
d0056fb2:	68bc      	ldr	r4, [r7, #8]
d0056fb4:	2300      	movs	r3, #0
d0056fb6:	eb04 01c3 	add.w	r1, r4, r3, lsl #3
d0056fba:	eb0a 02c3 	add.w	r2, sl, r3, lsl #3
d0056fbe:	3301      	adds	r3, #1
d0056fc0:	c903      	ldmia	r1, {r0, r1}
d0056fc2:	4598      	cmp	r8, r3
d0056fc4:	e882 0003 	stmia.w	r2, {r0, r1}
d0056fc8:	d1f5      	bne.n	d0056fb6 <copyMesh+0x6e>
d0056fca:	9b00      	ldr	r3, [sp, #0]
d0056fcc:	2b00      	cmp	r3, #0
d0056fce:	dd0e      	ble.n	d0056fee <copyMesh+0xa6>
d0056fd0:	f8d7 b010 	ldr.w	fp, [r7, #16]
d0056fd4:	ea4f 1e03 	mov.w	lr, r3, lsl #4
d0056fd8:	2400      	movs	r4, #0
d0056fda:	eb0b 0304 	add.w	r3, fp, r4
d0056fde:	eb0c 0504 	add.w	r5, ip, r4
d0056fe2:	3410      	adds	r4, #16
d0056fe4:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
d0056fe6:	4574      	cmp	r4, lr
d0056fe8:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
d0056fec:	d1f5      	bne.n	d0056fda <copyMesh+0x92>
d0056fee:	9a01      	ldr	r2, [sp, #4]
d0056ff0:	f107 0520 	add.w	r5, r7, #32
d0056ff4:	69bb      	ldr	r3, [r7, #24]
d0056ff6:	f106 0420 	add.w	r4, r6, #32
d0056ffa:	6072      	str	r2, [r6, #4]
d0056ffc:	9a00      	ldr	r2, [sp, #0]
d0056ffe:	61b3      	str	r3, [r6, #24]
d0057000:	6172      	str	r2, [r6, #20]
d0057002:	f8c6 9000 	str.w	r9, [r6]
d0057006:	f8c6 c010 	str.w	ip, [r6, #16]
d005700a:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
d005700c:	c40f      	stmia	r4!, {r0, r1, r2, r3}
d005700e:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
d0057012:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
d0057016:	4630      	mov	r0, r6
d0057018:	e9c6 a802 	strd	sl, r8, [r6, #8]
d005701c:	b003      	add	sp, #12
d005701e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0057022:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0057026:	0080      	lsls	r0, r0, #2
d0057028:	f003 f900 	bl	d005a22c <malloc>
d005702c:	f1b8 0f00 	cmp.w	r8, #0
d0057030:	4681      	mov	r9, r0
d0057032:	dda1      	ble.n	d0056f78 <copyMesh+0x30>
d0057034:	ea4f 00c8 	mov.w	r0, r8, lsl #3
d0057038:	f003 f8f8 	bl	d005a22c <malloc>
d005703c:	9b00      	ldr	r3, [sp, #0]
d005703e:	4682      	mov	sl, r0
d0057040:	2b00      	cmp	r3, #0
d0057042:	dd9e      	ble.n	d0056f82 <copyMesh+0x3a>
d0057044:	0118      	lsls	r0, r3, #4
d0057046:	f003 f8f1 	bl	d005a22c <malloc>
d005704a:	4684      	mov	ip, r0
d005704c:	e79b      	b.n	d0056f86 <copyMesh+0x3e>
d005704e:	2300      	movs	r3, #0
d0057050:	4630      	mov	r0, r6
d0057052:	e9c6 7700 	strd	r7, r7, [r6]
d0057056:	e9c6 7702 	strd	r7, r7, [r6, #8]
d005705a:	e9c6 7704 	strd	r7, r7, [r6, #16]
d005705e:	61b3      	str	r3, [r6, #24]
d0057060:	b003      	add	sp, #12
d0057062:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0057066:	bf00      	nop

d0057068 <entityLookAtPosition>:
d0057068:	28ff      	cmp	r0, #255	; 0xff
d005706a:	b530      	push	{r4, r5, lr}
d005706c:	ed2d 8b04 	vpush	{d8-d9}
d0057070:	b08d      	sub	sp, #52	; 0x34
d0057072:	d84a      	bhi.n	d005710a <entityLookAtPosition+0xa2>
d0057074:	eb00 0240 	add.w	r2, r0, r0, lsl #1
d0057078:	4b30      	ldr	r3, [pc, #192]	; (d005713c <entityLookAtPosition+0xd4>)
d005707a:	4604      	mov	r4, r0
d005707c:	eb03 1342 	add.w	r3, r3, r2, lsl #5
d0057080:	f893 2034 	ldrb.w	r2, [r3, #52]	; 0x34
d0057084:	2a00      	cmp	r2, #0
d0057086:	d040      	beq.n	d005710a <entityLookAtPosition+0xa2>
d0057088:	68da      	ldr	r2, [r3, #12]
d005708a:	2a00      	cmp	r2, #0
d005708c:	d03d      	beq.n	d005710a <entityLookAtPosition+0xa2>
d005708e:	edd3 8a00 	vldr	s17, [r3]
d0057092:	460d      	mov	r5, r1
d0057094:	ed93 9a01 	vldr	s18, [r3, #4]
d0057098:	ee70 8a68 	vsub.f32	s17, s0, s17
d005709c:	ed93 8a02 	vldr	s16, [r3, #8]
d00570a0:	ee30 9ac9 	vsub.f32	s18, s1, s18
d00570a4:	ee31 8a48 	vsub.f32	s16, s2, s16
d00570a8:	eef5 8a40 	vcmp.f32	s17, #0.0
d00570ac:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00570b0:	eeb5 9a40 	vcmp.f32	s18, #0.0
d00570b4:	bf14      	ite	ne
d00570b6:	2300      	movne	r3, #0
d00570b8:	2301      	moveq	r3, #1
d00570ba:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00570be:	bf18      	it	ne
d00570c0:	2300      	movne	r3, #0
d00570c2:	b123      	cbz	r3, d00570ce <entityLookAtPosition+0x66>
d00570c4:	eeb5 8a40 	vcmp.f32	s16, #0.0
d00570c8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00570cc:	d01d      	beq.n	d005710a <entityLookAtPosition+0xa2>
d00570ce:	eef0 0a48 	vmov.f32	s1, s16
d00570d2:	ee28 8a08 	vmul.f32	s16, s16, s16
d00570d6:	eeb0 0a68 	vmov.f32	s0, s17
d00570da:	f004 fc8d 	bl	d005b9f8 <atan2f>
d00570de:	eef0 7a40 	vmov.f32	s15, s0
d00570e2:	eea8 8aa8 	vfma.f32	s16, s17, s17
d00570e6:	eeb0 0a49 	vmov.f32	s0, s18
d00570ea:	eeb0 9a67 	vmov.f32	s18, s15
d00570ee:	eef1 0ac8 	vsqrt.f32	s1, s16
d00570f2:	f004 fc81 	bl	d005b9f8 <atan2f>
d00570f6:	eeb1 8a40 	vneg.f32	s16, s0
d00570fa:	b9a5      	cbnz	r5, d0057126 <entityLookAtPosition+0xbe>
d00570fc:	2300      	movs	r3, #0
d00570fe:	ed8d 8a09 	vstr	s16, [sp, #36]	; 0x24
d0057102:	ed8d 9a0a 	vstr	s18, [sp, #40]	; 0x28
d0057106:	930b      	str	r3, [sp, #44]	; 0x2c
d0057108:	e003      	b.n	d0057112 <entityLookAtPosition+0xaa>
d005710a:	2300      	movs	r3, #0
d005710c:	9309      	str	r3, [sp, #36]	; 0x24
d005710e:	930a      	str	r3, [sp, #40]	; 0x28
d0057110:	930b      	str	r3, [sp, #44]	; 0x2c
d0057112:	ed9d 0a09 	vldr	s0, [sp, #36]	; 0x24
d0057116:	eddd 0a0a 	vldr	s1, [sp, #40]	; 0x28
d005711a:	ed9d 1a0b 	vldr	s2, [sp, #44]	; 0x2c
d005711e:	b00d      	add	sp, #52	; 0x34
d0057120:	ecbd 8b04 	vpop	{d8-d9}
d0057124:	bd30      	pop	{r4, r5, pc}
d0057126:	eef0 0a48 	vmov.f32	s1, s16
d005712a:	4620      	mov	r0, r4
d005712c:	eeb0 0a49 	vmov.f32	s0, s18
d0057130:	2101      	movs	r1, #1
d0057132:	ed9f 1a03 	vldr	s2, [pc, #12]	; d0057140 <entityLookAtPosition+0xd8>
d0057136:	f7ff f967 	bl	d0056408 <entityRotation.part.0>
d005713a:	e7df      	b.n	d00570fc <entityLookAtPosition+0x94>
d005713c:	d012b2a0 	.word	0xd012b2a0
d0057140:	00000000 	.word	0x00000000

d0057144 <entityAllowHit>:
d0057144:	28ff      	cmp	r0, #255	; 0xff
d0057146:	d815      	bhi.n	d0057174 <entityAllowHit+0x30>
d0057148:	4b0b      	ldr	r3, [pc, #44]	; (d0057178 <entityAllowHit+0x34>)
d005714a:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d005714e:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d0057152:	f890 3034 	ldrb.w	r3, [r0, #52]	; 0x34
d0057156:	b16b      	cbz	r3, d0057174 <entityAllowHit+0x30>
d0057158:	68c3      	ldr	r3, [r0, #12]
d005715a:	b15b      	cbz	r3, d0057174 <entityAllowHit+0x30>
d005715c:	f890 3035 	ldrb.w	r3, [r0, #53]	; 0x35
d0057160:	b121      	cbz	r1, d005716c <entityAllowHit+0x28>
d0057162:	f043 0302 	orr.w	r3, r3, #2
d0057166:	f880 3035 	strb.w	r3, [r0, #53]	; 0x35
d005716a:	4770      	bx	lr
d005716c:	f023 0302 	bic.w	r3, r3, #2
d0057170:	f880 3035 	strb.w	r3, [r0, #53]	; 0x35
d0057174:	4770      	bx	lr
d0057176:	bf00      	nop
d0057178:	d012b2a0 	.word	0xd012b2a0

d005717c <entityVisible>:
d005717c:	28ff      	cmp	r0, #255	; 0xff
d005717e:	d815      	bhi.n	d00571ac <entityVisible+0x30>
d0057180:	4b0b      	ldr	r3, [pc, #44]	; (d00571b0 <entityVisible+0x34>)
d0057182:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0057186:	eb03 1040 	add.w	r0, r3, r0, lsl #5
d005718a:	f890 3034 	ldrb.w	r3, [r0, #52]	; 0x34
d005718e:	b16b      	cbz	r3, d00571ac <entityVisible+0x30>
d0057190:	68c3      	ldr	r3, [r0, #12]
d0057192:	b15b      	cbz	r3, d00571ac <entityVisible+0x30>
d0057194:	f890 3035 	ldrb.w	r3, [r0, #53]	; 0x35
d0057198:	b121      	cbz	r1, d00571a4 <entityVisible+0x28>
d005719a:	f043 0301 	orr.w	r3, r3, #1
d005719e:	f880 3035 	strb.w	r3, [r0, #53]	; 0x35
d00571a2:	4770      	bx	lr
d00571a4:	f023 0301 	bic.w	r3, r3, #1
d00571a8:	f880 3035 	strb.w	r3, [r0, #53]	; 0x35
d00571ac:	4770      	bx	lr
d00571ae:	bf00      	nop
d00571b0:	d012b2a0 	.word	0xd012b2a0

d00571b4 <buildLightingCLUT>:
d00571b4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00571b8:	f1b2 0900 	subs.w	r9, r2, #0
d00571bc:	b085      	sub	sp, #20
d00571be:	9c0e      	ldr	r4, [sp, #56]	; 0x38
d00571c0:	f340 8212 	ble.w	d00575e8 <buildLightingCLUT+0x434>
d00571c4:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d00571c8:	4f24      	ldr	r7, [pc, #144]	; (d005725c <buildLightingCLUT+0xa8>)
d00571ca:	eb09 0c49 	add.w	ip, r9, r9, lsl #1
d00571ce:	edd4 4a00 	vldr	s9, [r4]
d00571d2:	ed94 5a01 	vldr	s10, [r4, #4]
d00571d6:	eb09 0807 	add.w	r8, r9, r7
d00571da:	edd4 5a02 	vldr	s11, [r4, #8]
d00571de:	eb07 0e49 	add.w	lr, r7, r9, lsl #1
d00571e2:	ed94 6a03 	vldr	s12, [r4, #12]
d00571e6:	44bc      	add	ip, r7
d00571e8:	edd4 6a04 	vldr	s13, [r4, #16]
d00571ec:	eb07 0789 	add.w	r7, r7, r9, lsl #2
d00571f0:	3904      	subs	r1, #4
d00571f2:	ee77 4ae4 	vsub.f32	s9, s15, s9
d00571f6:	ee37 5ac5 	vsub.f32	s10, s15, s10
d00571fa:	ed9f 7a19 	vldr	s14, [pc, #100]	; d0057260 <buildLightingCLUT+0xac>
d00571fe:	ee77 5ae5 	vsub.f32	s11, s15, s11
d0057202:	f100 067c 	add.w	r6, r0, #124	; 0x7c
d0057206:	ee37 6ac6 	vsub.f32	s12, s15, s12
d005720a:	eb00 0888 	add.w	r8, r0, r8, lsl #2
d005720e:	ee77 6ae6 	vsub.f32	s13, s15, s13
d0057212:	eb00 0e8e 	add.w	lr, r0, lr, lsl #2
d0057216:	eb00 0c8c 	add.w	ip, r0, ip, lsl #2
d005721a:	f3c3 4507 	ubfx	r5, r3, #16, #8
d005721e:	eb00 0787 	add.w	r7, r0, r7, lsl #2
d0057222:	f3c3 2007 	ubfx	r0, r3, #8, #8
d0057226:	eb01 0989 	add.w	r9, r1, r9, lsl #2
d005722a:	fec4 4a87 	vmaxnm.f32	s9, s9, s14
d005722e:	0e1c      	lsrs	r4, r3, #24
d0057230:	fe85 5a07 	vmaxnm.f32	s10, s10, s14
d0057234:	b2da      	uxtb	r2, r3
d0057236:	fec5 5a87 	vmaxnm.f32	s11, s11, s14
d005723a:	fe86 6a07 	vmaxnm.f32	s12, s12, s14
d005723e:	fec6 6a87 	vmaxnm.f32	s13, s13, s14
d0057242:	fec4 4ae7 	vminnm.f32	s9, s9, s15
d0057246:	fe85 5a67 	vminnm.f32	s10, s10, s15
d005724a:	fec5 5ae7 	vminnm.f32	s11, s11, s15
d005724e:	fe86 6a67 	vminnm.f32	s12, s12, s15
d0057252:	fec6 6ae7 	vminnm.f32	s13, s13, s15
d0057256:	9601      	str	r6, [sp, #4]
d0057258:	e004      	b.n	d0057264 <buildLightingCLUT+0xb0>
d005725a:	bf00      	nop
d005725c:	4000001f 	.word	0x4000001f
d0057260:	00000000 	.word	0x00000000
d0057264:	f851 3f04 	ldr.w	r3, [r1, #4]!
d0057268:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d005726c:	0e1e      	lsrs	r6, r3, #24
d005726e:	fa5f fa83 	uxtb.w	sl, r3
d0057272:	4549      	cmp	r1, r9
d0057274:	ee07 6a10 	vmov	s14, r6
d0057278:	eba5 060b 	sub.w	r6, r5, fp
d005727c:	ee04 ba10 	vmov	s8, fp
d0057280:	ee07 6a90 	vmov	s15, r6
d0057284:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0057288:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d005728c:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0057290:	ee02 6a10 	vmov	s4, r6
d0057294:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0057298:	eba2 060a 	sub.w	r6, r2, sl
d005729c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00572a0:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d00572a4:	ee04 aa10 	vmov	s8, sl
d00572a8:	ee02 6a90 	vmov	s5, r6
d00572ac:	eba0 0603 	sub.w	r6, r0, r3
d00572b0:	eee4 3aa7 	vfma.f32	s7, s9, s15
d00572b4:	ee07 3a90 	vmov	s15, r3
d00572b8:	eea4 7a82 	vfma.f32	s14, s9, s4
d00572bc:	ee03 6a10 	vmov	s6, r6
d00572c0:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d00572c4:	9e01      	ldr	r6, [sp, #4]
d00572c6:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00572ca:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d00572ce:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00572d2:	eea4 4aa2 	vfma.f32	s8, s9, s5
d00572d6:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d00572da:	eee4 7a83 	vfma.f32	s15, s9, s6
d00572de:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00572e2:	edcd 3a02 	vstr	s7, [sp, #8]
d00572e6:	f89d a008 	ldrb.w	sl, [sp, #8]
d00572ea:	ee17 3a10 	vmov	r3, s14
d00572ee:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d00572f2:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d00572f6:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00572fa:	ed8d 7a02 	vstr	s14, [sp, #8]
d00572fe:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0057302:	f89d b008 	ldrb.w	fp, [sp, #8]
d0057306:	edcd 7a03 	vstr	s15, [sp, #12]
d005730a:	ea43 030b 	orr.w	r3, r3, fp
d005730e:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0057312:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d0057316:	f846 3f04 	str.w	r3, [r6, #4]!
d005731a:	680b      	ldr	r3, [r1, #0]
d005731c:	9601      	str	r6, [sp, #4]
d005731e:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0057322:	ea4f 6613 	mov.w	r6, r3, lsr #24
d0057326:	fa5f fa83 	uxtb.w	sl, r3
d005732a:	ee07 6a10 	vmov	s14, r6
d005732e:	eba5 060b 	sub.w	r6, r5, fp
d0057332:	ee04 ba10 	vmov	s8, fp
d0057336:	ee07 6a90 	vmov	s15, r6
d005733a:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d005733e:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0057342:	f3c3 2307 	ubfx	r3, r3, #8, #8
d0057346:	ee02 6a10 	vmov	s4, r6
d005734a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005734e:	eba2 060a 	sub.w	r6, r2, sl
d0057352:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0057356:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d005735a:	ee04 aa10 	vmov	s8, sl
d005735e:	ee02 6a90 	vmov	s5, r6
d0057362:	eba0 0603 	sub.w	r6, r0, r3
d0057366:	eee5 3a27 	vfma.f32	s7, s10, s15
d005736a:	ee07 3a90 	vmov	s15, r3
d005736e:	eea5 7a02 	vfma.f32	s14, s10, s4
d0057372:	ee03 6a10 	vmov	s6, r6
d0057376:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d005737a:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d005737e:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0057382:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0057386:	eea5 4a22 	vfma.f32	s8, s10, s5
d005738a:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d005738e:	eee5 7a03 	vfma.f32	s15, s10, s6
d0057392:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0057396:	edcd 3a02 	vstr	s7, [sp, #8]
d005739a:	f89d a008 	ldrb.w	sl, [sp, #8]
d005739e:	ee17 3a10 	vmov	r3, s14
d00573a2:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d00573a6:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d00573aa:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00573ae:	ed8d 7a02 	vstr	s14, [sp, #8]
d00573b2:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d00573b6:	f89d b008 	ldrb.w	fp, [sp, #8]
d00573ba:	edcd 7a03 	vstr	s15, [sp, #12]
d00573be:	ea43 030b 	orr.w	r3, r3, fp
d00573c2:	f89d a00c 	ldrb.w	sl, [sp, #12]
d00573c6:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d00573ca:	f848 3f04 	str.w	r3, [r8, #4]!
d00573ce:	680b      	ldr	r3, [r1, #0]
d00573d0:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d00573d4:	ea4f 6613 	mov.w	r6, r3, lsr #24
d00573d8:	fa5f fa83 	uxtb.w	sl, r3
d00573dc:	ee07 6a10 	vmov	s14, r6
d00573e0:	eba5 060b 	sub.w	r6, r5, fp
d00573e4:	ee04 ba10 	vmov	s8, fp
d00573e8:	ee07 6a90 	vmov	s15, r6
d00573ec:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d00573f0:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d00573f4:	f3c3 2307 	ubfx	r3, r3, #8, #8
d00573f8:	ee02 6a10 	vmov	s4, r6
d00573fc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0057400:	eba2 060a 	sub.w	r6, r2, sl
d0057404:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0057408:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d005740c:	ee04 aa10 	vmov	s8, sl
d0057410:	ee02 6a90 	vmov	s5, r6
d0057414:	eba0 0603 	sub.w	r6, r0, r3
d0057418:	eee5 3aa7 	vfma.f32	s7, s11, s15
d005741c:	ee07 3a90 	vmov	s15, r3
d0057420:	eea5 7a82 	vfma.f32	s14, s11, s4
d0057424:	ee03 6a10 	vmov	s6, r6
d0057428:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d005742c:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0057430:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0057434:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0057438:	eea5 4aa2 	vfma.f32	s8, s11, s5
d005743c:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d0057440:	eee5 7a83 	vfma.f32	s15, s11, s6
d0057444:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0057448:	edcd 3a02 	vstr	s7, [sp, #8]
d005744c:	f89d a008 	ldrb.w	sl, [sp, #8]
d0057450:	ee17 3a10 	vmov	r3, s14
d0057454:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d0057458:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d005745c:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0057460:	ed8d 7a02 	vstr	s14, [sp, #8]
d0057464:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d0057468:	f89d b008 	ldrb.w	fp, [sp, #8]
d005746c:	edcd 7a03 	vstr	s15, [sp, #12]
d0057470:	ea43 030b 	orr.w	r3, r3, fp
d0057474:	f89d a00c 	ldrb.w	sl, [sp, #12]
d0057478:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d005747c:	f84e 3f04 	str.w	r3, [lr, #4]!
d0057480:	680b      	ldr	r3, [r1, #0]
d0057482:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0057486:	ea4f 6613 	mov.w	r6, r3, lsr #24
d005748a:	fa5f fa83 	uxtb.w	sl, r3
d005748e:	ee07 6a10 	vmov	s14, r6
d0057492:	eba5 060b 	sub.w	r6, r5, fp
d0057496:	ee04 ba10 	vmov	s8, fp
d005749a:	ee07 6a90 	vmov	s15, r6
d005749e:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d00574a2:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d00574a6:	f3c3 2307 	ubfx	r3, r3, #8, #8
d00574aa:	ee02 6a10 	vmov	s4, r6
d00574ae:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00574b2:	eba2 060a 	sub.w	r6, r2, sl
d00574b6:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d00574ba:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d00574be:	ee04 aa10 	vmov	s8, sl
d00574c2:	ee02 6a90 	vmov	s5, r6
d00574c6:	eba0 0603 	sub.w	r6, r0, r3
d00574ca:	eee6 3a27 	vfma.f32	s7, s12, s15
d00574ce:	ee07 3a90 	vmov	s15, r3
d00574d2:	eea6 7a02 	vfma.f32	s14, s12, s4
d00574d6:	ee03 6a10 	vmov	s6, r6
d00574da:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d00574de:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d00574e2:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d00574e6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00574ea:	eea6 4a22 	vfma.f32	s8, s12, s5
d00574ee:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d00574f2:	eee6 7a03 	vfma.f32	s15, s12, s6
d00574f6:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00574fa:	edcd 3a02 	vstr	s7, [sp, #8]
d00574fe:	f89d a008 	ldrb.w	sl, [sp, #8]
d0057502:	ee17 3a10 	vmov	r3, s14
d0057506:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d005750a:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d005750e:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d0057512:	ed8d 7a02 	vstr	s14, [sp, #8]
d0057516:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d005751a:	f89d b008 	ldrb.w	fp, [sp, #8]
d005751e:	edcd 7a03 	vstr	s15, [sp, #12]
d0057522:	ea43 030b 	orr.w	r3, r3, fp
d0057526:	f89d a00c 	ldrb.w	sl, [sp, #12]
d005752a:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d005752e:	f84c 3f04 	str.w	r3, [ip, #4]!
d0057532:	680b      	ldr	r3, [r1, #0]
d0057534:	f3c3 4b07 	ubfx	fp, r3, #16, #8
d0057538:	ea4f 6613 	mov.w	r6, r3, lsr #24
d005753c:	fa5f fa83 	uxtb.w	sl, r3
d0057540:	ee07 6a10 	vmov	s14, r6
d0057544:	eba5 060b 	sub.w	r6, r5, fp
d0057548:	ee04 ba10 	vmov	s8, fp
d005754c:	ee07 6a90 	vmov	s15, r6
d0057550:	eba4 6613 	sub.w	r6, r4, r3, lsr #24
d0057554:	eef8 3ac4 	vcvt.f32.s32	s7, s8
d0057558:	f3c3 2307 	ubfx	r3, r3, #8, #8
d005755c:	ee02 6a10 	vmov	s4, r6
d0057560:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0057564:	eba2 060a 	sub.w	r6, r2, sl
d0057568:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d005756c:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
d0057570:	ee04 aa10 	vmov	s8, sl
d0057574:	ee02 6a90 	vmov	s5, r6
d0057578:	eba0 0603 	sub.w	r6, r0, r3
d005757c:	eee6 3aa7 	vfma.f32	s7, s13, s15
d0057580:	ee07 3a90 	vmov	s15, r3
d0057584:	eea6 7a82 	vfma.f32	s14, s13, s4
d0057588:	ee03 6a10 	vmov	s6, r6
d005758c:	eeb8 4ac4 	vcvt.f32.s32	s8, s8
d0057590:	eef8 2ae2 	vcvt.f32.s32	s5, s5
d0057594:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
d0057598:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005759c:	eea6 4aa2 	vfma.f32	s8, s13, s5
d00575a0:	eefc 3ae3 	vcvt.u32.f32	s7, s7
d00575a4:	eee6 7a83 	vfma.f32	s15, s13, s6
d00575a8:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d00575ac:	edcd 3a02 	vstr	s7, [sp, #8]
d00575b0:	f89d a008 	ldrb.w	sl, [sp, #8]
d00575b4:	ee17 3a10 	vmov	r3, s14
d00575b8:	eebc 7ac4 	vcvt.u32.f32	s14, s8
d00575bc:	ea4f 4a0a 	mov.w	sl, sl, lsl #16
d00575c0:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d00575c4:	ea4a 6303 	orr.w	r3, sl, r3, lsl #24
d00575c8:	ed8d 7a02 	vstr	s14, [sp, #8]
d00575cc:	f89d b008 	ldrb.w	fp, [sp, #8]
d00575d0:	edcd 7a03 	vstr	s15, [sp, #12]
d00575d4:	ea43 030b 	orr.w	r3, r3, fp
d00575d8:	f89d a00c 	ldrb.w	sl, [sp, #12]
d00575dc:	ea43 230a 	orr.w	r3, r3, sl, lsl #8
d00575e0:	f847 3f04 	str.w	r3, [r7, #4]!
d00575e4:	f47f ae3e 	bne.w	d0057264 <buildLightingCLUT+0xb0>
d00575e8:	b005      	add	sp, #20
d00575ea:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00575ee:	bf00      	nop

d00575f0 <brightnessToShadeF>:
d00575f0:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d00575f4:	eddf 7a09 	vldr	s15, [pc, #36]	; d005761c <brightnessToShadeF+0x2c>
d00575f8:	eeb6 6a00 	vmov.f32	s12, #96	; 0x3f000000  0.5
d00575fc:	eef7 6a08 	vmov.f32	s13, #120	; 0x3fc00000  1.5
d0057600:	fe80 0a27 	vmaxnm.f32	s0, s0, s15
d0057604:	fec0 7a47 	vminnm.f32	s15, s0, s14
d0057608:	eeb1 0a04 	vmov.f32	s0, #20	; 0x40a00000  5.0
d005760c:	eee7 6ac6 	vfms.f32	s13, s15, s12
d0057610:	eea6 7ae7 	vfms.f32	s14, s13, s15
d0057614:	ee27 0a00 	vmul.f32	s0, s14, s0
d0057618:	4770      	bx	lr
d005761a:	bf00      	nop
d005761c:	00000000 	.word	0x00000000

d0057620 <lightSetRanges>:
d0057620:	2800      	cmp	r0, #0
d0057622:	db0c      	blt.n	d005763e <lightSetRanges+0x1e>
d0057624:	4b06      	ldr	r3, [pc, #24]	; (d0057640 <lightSetRanges+0x20>)
d0057626:	681b      	ldr	r3, [r3, #0]
d0057628:	4283      	cmp	r3, r0
d005762a:	dd08      	ble.n	d005763e <lightSetRanges+0x1e>
d005762c:	4b05      	ldr	r3, [pc, #20]	; (d0057644 <lightSetRanges+0x24>)
d005762e:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d0057632:	ed80 0a08 	vstr	s0, [r0, #32]
d0057636:	edc0 0a09 	vstr	s1, [r0, #36]	; 0x24
d005763a:	ed80 1a0a 	vstr	s2, [r0, #40]	; 0x28
d005763e:	4770      	bx	lr
d0057640:	d0092f20 	.word	0xd0092f20
d0057644:	d0092f40 	.word	0xd0092f40

d0057648 <lightsGet>:
d0057648:	4800      	ldr	r0, [pc, #0]	; (d005764c <lightsGet+0x4>)
d005764a:	4770      	bx	lr
d005764c:	d0092f40 	.word	0xd0092f40

d0057650 <lightsGetCount>:
d0057650:	4b01      	ldr	r3, [pc, #4]	; (d0057658 <lightsGetCount+0x8>)
d0057652:	6818      	ldr	r0, [r3, #0]
d0057654:	4770      	bx	lr
d0057656:	bf00      	nop
d0057658:	d0092f20 	.word	0xd0092f20

d005765c <lightsClear>:
d005765c:	4b01      	ldr	r3, [pc, #4]	; (d0057664 <lightsClear+0x8>)
d005765e:	2200      	movs	r2, #0
d0057660:	601a      	str	r2, [r3, #0]
d0057662:	4770      	bx	lr
d0057664:	d0092f20 	.word	0xd0092f20

d0057668 <lightEnable>:
d0057668:	4b04      	ldr	r3, [pc, #16]	; (d005767c <lightEnable+0x14>)
d005766a:	681b      	ldr	r3, [r3, #0]
d005766c:	4298      	cmp	r0, r3
d005766e:	da03      	bge.n	d0057678 <lightEnable+0x10>
d0057670:	4b03      	ldr	r3, [pc, #12]	; (d0057680 <lightEnable+0x18>)
d0057672:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d0057676:	62c1      	str	r1, [r0, #44]	; 0x2c
d0057678:	4770      	bx	lr
d005767a:	bf00      	nop
d005767c:	d0092f20 	.word	0xd0092f20
d0057680:	d0092f40 	.word	0xd0092f40

d0057684 <addPointLight>:
d0057684:	4918      	ldr	r1, [pc, #96]	; (d00576e8 <addPointLight+0x64>)
d0057686:	b5f0      	push	{r4, r5, r6, r7, lr}
d0057688:	680c      	ldr	r4, [r1, #0]
d005768a:	b085      	sub	sp, #20
d005768c:	2c07      	cmp	r4, #7
d005768e:	ed8d 0a01 	vstr	s0, [sp, #4]
d0057692:	edcd 0a02 	vstr	s1, [sp, #8]
d0057696:	ed8d 1a03 	vstr	s2, [sp, #12]
d005769a:	dc21      	bgt.n	d00576e0 <addPointLight+0x5c>
d005769c:	4d13      	ldr	r5, [pc, #76]	; (d00576ec <addPointLight+0x68>)
d005769e:	01a2      	lsls	r2, r4, #6
d00576a0:	2600      	movs	r6, #0
d00576a2:	f8df e050 	ldr.w	lr, [pc, #80]	; d00576f4 <addPointLight+0x70>
d00576a6:	eb05 1384 	add.w	r3, r5, r4, lsl #6
d00576aa:	f8df c04c 	ldr.w	ip, [pc, #76]	; d00576f8 <addPointLight+0x74>
d00576ae:	54ae      	strb	r6, [r5, r2]
d00576b0:	2200      	movs	r2, #0
d00576b2:	4f0f      	ldr	r7, [pc, #60]	; (d00576f0 <addPointLight+0x6c>)
d00576b4:	1d1d      	adds	r5, r3, #4
d00576b6:	62d8      	str	r0, [r3, #44]	; 0x2c
d00576b8:	1c66      	adds	r6, r4, #1
d00576ba:	611a      	str	r2, [r3, #16]
d00576bc:	615a      	str	r2, [r3, #20]
d00576be:	619a      	str	r2, [r3, #24]
d00576c0:	edc3 1a07 	vstr	s3, [r3, #28]
d00576c4:	f8c3 e020 	str.w	lr, [r3, #32]
d00576c8:	f8c3 c024 	str.w	ip, [r3, #36]	; 0x24
d00576cc:	629f      	str	r7, [r3, #40]	; 0x28
d00576ce:	ab04      	add	r3, sp, #16
d00576d0:	600e      	str	r6, [r1, #0]
d00576d2:	e913 0007 	ldmdb	r3, {r0, r1, r2}
d00576d6:	e885 0007 	stmia.w	r5, {r0, r1, r2}
d00576da:	4620      	mov	r0, r4
d00576dc:	b005      	add	sp, #20
d00576de:	bdf0      	pop	{r4, r5, r6, r7, pc}
d00576e0:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
d00576e4:	e7f9      	b.n	d00576da <addPointLight+0x56>
d00576e6:	bf00      	nop
d00576e8:	d0092f20 	.word	0xd0092f20
d00576ec:	d0092f40 	.word	0xd0092f40
d00576f0:	44020000 	.word	0x44020000
d00576f4:	42c80000 	.word	0x42c80000
d00576f8:	43660000 	.word	0x43660000

d00576fc <addDirectionalLight>:
d00576fc:	b5f0      	push	{r4, r5, r6, r7, lr}
d00576fe:	4f15      	ldr	r7, [pc, #84]	; (d0057754 <addDirectionalLight+0x58>)
d0057700:	683d      	ldr	r5, [r7, #0]
d0057702:	2d07      	cmp	r5, #7
d0057704:	ed2d 8b02 	vpush	{d8}
d0057708:	b085      	sub	sp, #20
d005770a:	dc1f      	bgt.n	d005774c <addDirectionalLight+0x50>
d005770c:	4912      	ldr	r1, [pc, #72]	; (d0057758 <addDirectionalLight+0x5c>)
d005770e:	2300      	movs	r3, #0
d0057710:	4606      	mov	r6, r0
d0057712:	01aa      	lsls	r2, r5, #6
d0057714:	eb01 1485 	add.w	r4, r1, r5, lsl #6
d0057718:	2001      	movs	r0, #1
d005771a:	eeb0 8a61 	vmov.f32	s16, s3
d005771e:	6063      	str	r3, [r4, #4]
d0057720:	60a3      	str	r3, [r4, #8]
d0057722:	60e3      	str	r3, [r4, #12]
d0057724:	5488      	strb	r0, [r1, r2]
d0057726:	f7fd fe2f 	bl	d0055388 <vec3Normalize>
d005772a:	683b      	ldr	r3, [r7, #0]
d005772c:	ed84 8a07 	vstr	s16, [r4, #28]
d0057730:	3301      	adds	r3, #1
d0057732:	62e6      	str	r6, [r4, #44]	; 0x2c
d0057734:	ed84 0a04 	vstr	s0, [r4, #16]
d0057738:	edc4 0a05 	vstr	s1, [r4, #20]
d005773c:	ed84 1a06 	vstr	s2, [r4, #24]
d0057740:	603b      	str	r3, [r7, #0]
d0057742:	4628      	mov	r0, r5
d0057744:	b005      	add	sp, #20
d0057746:	ecbd 8b02 	vpop	{d8}
d005774a:	bdf0      	pop	{r4, r5, r6, r7, pc}
d005774c:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d0057750:	e7f7      	b.n	d0057742 <addDirectionalLight+0x46>
d0057752:	bf00      	nop
d0057754:	d0092f20 	.word	0xd0092f20
d0057758:	d0092f40 	.word	0xd0092f40

d005775c <lightSetPosition>:
d005775c:	b084      	sub	sp, #16
d005775e:	2800      	cmp	r0, #0
d0057760:	ed8d 0a01 	vstr	s0, [sp, #4]
d0057764:	edcd 0a02 	vstr	s1, [sp, #8]
d0057768:	ed8d 1a03 	vstr	s2, [sp, #12]
d005776c:	db0c      	blt.n	d0057788 <lightSetPosition+0x2c>
d005776e:	4b07      	ldr	r3, [pc, #28]	; (d005778c <lightSetPosition+0x30>)
d0057770:	681b      	ldr	r3, [r3, #0]
d0057772:	4283      	cmp	r3, r0
d0057774:	dd08      	ble.n	d0057788 <lightSetPosition+0x2c>
d0057776:	4b06      	ldr	r3, [pc, #24]	; (d0057790 <lightSetPosition+0x34>)
d0057778:	aa04      	add	r2, sp, #16
d005777a:	eb03 1380 	add.w	r3, r3, r0, lsl #6
d005777e:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0057782:	3304      	adds	r3, #4
d0057784:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0057788:	b004      	add	sp, #16
d005778a:	4770      	bx	lr
d005778c:	d0092f20 	.word	0xd0092f20
d0057790:	d0092f40 	.word	0xd0092f40

d0057794 <lightSetIntensity>:
d0057794:	2800      	cmp	r0, #0
d0057796:	db08      	blt.n	d00577aa <lightSetIntensity+0x16>
d0057798:	4b04      	ldr	r3, [pc, #16]	; (d00577ac <lightSetIntensity+0x18>)
d005779a:	681b      	ldr	r3, [r3, #0]
d005779c:	4283      	cmp	r3, r0
d005779e:	dd04      	ble.n	d00577aa <lightSetIntensity+0x16>
d00577a0:	4b03      	ldr	r3, [pc, #12]	; (d00577b0 <lightSetIntensity+0x1c>)
d00577a2:	eb03 1080 	add.w	r0, r3, r0, lsl #6
d00577a6:	ed80 0a07 	vstr	s0, [r0, #28]
d00577aa:	4770      	bx	lr
d00577ac:	d0092f20 	.word	0xd0092f20
d00577b0:	d0092f40 	.word	0xd0092f40

d00577b4 <setDefaultRenderMode>:
d00577b4:	2300      	movs	r3, #0
d00577b6:	4803      	ldr	r0, [pc, #12]	; (d00577c4 <setDefaultRenderMode+0x10>)
d00577b8:	4903      	ldr	r1, [pc, #12]	; (d00577c8 <setDefaultRenderMode+0x14>)
d00577ba:	4a04      	ldr	r2, [pc, #16]	; (d00577cc <setDefaultRenderMode+0x18>)
d00577bc:	6003      	str	r3, [r0, #0]
d00577be:	600b      	str	r3, [r1, #0]
d00577c0:	6013      	str	r3, [r2, #0]
d00577c2:	4770      	bx	lr
d00577c4:	d009f148 	.word	0xd009f148
d00577c8:	d011f160 	.word	0xd011f160
d00577cc:	d011f164 	.word	0xd011f164

d00577d0 <enableFlatMode>:
d00577d0:	4b01      	ldr	r3, [pc, #4]	; (d00577d8 <enableFlatMode+0x8>)
d00577d2:	6018      	str	r0, [r3, #0]
d00577d4:	4770      	bx	lr
d00577d6:	bf00      	nop
d00577d8:	d009f148 	.word	0xd009f148

d00577dc <clipTriangleToFrustum>:
d00577dc:	4bd1      	ldr	r3, [pc, #836]	; (d0057b24 <clipTriangleToFrustum+0x348>)
d00577de:	4ad2      	ldr	r2, [pc, #840]	; (d0057b28 <clipTriangleToFrustum+0x34c>)
d00577e0:	681b      	ldr	r3, [r3, #0]
d00577e2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00577e6:	b08a      	sub	sp, #40	; 0x28
d00577e8:	6814      	ldr	r4, [r2, #0]
d00577ea:	ed8d 0a07 	vstr	s0, [sp, #28]
d00577ee:	edcd 0a08 	vstr	s1, [sp, #32]
d00577f2:	ed8d 1a09 	vstr	s2, [sp, #36]	; 0x24
d00577f6:	edcd 1a04 	vstr	s3, [sp, #16]
d00577fa:	ed8d 2a05 	vstr	s4, [sp, #20]
d00577fe:	edcd 2a06 	vstr	s5, [sp, #24]
d0057802:	ed8d 3a01 	vstr	s6, [sp, #4]
d0057806:	edcd 3a02 	vstr	s7, [sp, #8]
d005780a:	ed8d 4a03 	vstr	s8, [sp, #12]
d005780e:	2b00      	cmp	r3, #0
d0057810:	f000 826b 	beq.w	d0057cea <clipTriangleToFrustum+0x50e>
d0057814:	2c00      	cmp	r4, #0
d0057816:	f000 8268 	beq.w	d0057cea <clipTriangleToFrustum+0x50e>
d005781a:	aa0a      	add	r2, sp, #40	; 0x28
d005781c:	edd1 7a10 	vldr	s15, [r1, #64]	; 0x40
d0057820:	ed91 3a15 	vldr	s6, [r1, #84]	; 0x54
d0057824:	af04      	add	r7, sp, #16
d0057826:	4605      	mov	r5, r0
d0057828:	f103 060c 	add.w	r6, r3, #12
d005782c:	e912 0007 	ldmdb	r2, {r0, r1, r2}
d0057830:	e883 0007 	stmia.w	r3, {r0, r1, r2}
d0057834:	e897 0007 	ldmia.w	r7, {r0, r1, r2}
d0057838:	af01      	add	r7, sp, #4
d005783a:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d005783e:	e897 0007 	ldmia.w	r7, {r0, r1, r2}
d0057842:	f103 0618 	add.w	r6, r3, #24
d0057846:	e886 0007 	stmia.w	r6, {r0, r1, r2}
d005784a:	edd3 6a08 	vldr	s13, [r3, #32]
d005784e:	ed93 7a02 	vldr	s14, [r3, #8]
d0057852:	ee36 6ae7 	vsub.f32	s12, s13, s15
d0057856:	edd3 3a06 	vldr	s7, [r3, #24]
d005785a:	ee37 4a67 	vsub.f32	s8, s14, s15
d005785e:	edd3 5a07 	vldr	s11, [r3, #28]
d0057862:	ed93 5a00 	vldr	s10, [r3]
d0057866:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d005786a:	edd3 4a01 	vldr	s9, [r3, #4]
d005786e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057872:	eeb5 4ac0 	vcmpe.f32	s8, #0.0
d0057876:	bfac      	ite	ge
d0057878:	2201      	movge	r2, #1
d005787a:	2200      	movlt	r2, #0
d005787c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057880:	bfac      	ite	ge
d0057882:	2101      	movge	r1, #1
d0057884:	2100      	movlt	r1, #0
d0057886:	2a00      	cmp	r2, #0
d0057888:	f000 8234 	beq.w	d0057cf4 <clipTriangleToFrustum+0x518>
d005788c:	2900      	cmp	r1, #0
d005788e:	f000 8231 	beq.w	d0057cf4 <clipTriangleToFrustum+0x518>
d0057892:	2201      	movs	r2, #1
d0057894:	ed84 5a00 	vstr	s10, [r4]
d0057898:	edc4 4a01 	vstr	s9, [r4, #4]
d005789c:	ed84 7a02 	vstr	s14, [r4, #8]
d00578a0:	edd3 2a05 	vldr	s5, [r3, #20]
d00578a4:	f001 0001 	and.w	r0, r1, #1
d00578a8:	edd3 5a03 	vldr	s11, [r3, #12]
d00578ac:	ee72 6ae7 	vsub.f32	s13, s5, s15
d00578b0:	ed93 6a04 	vldr	s12, [r3, #16]
d00578b4:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00578b8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00578bc:	bfb6      	itet	lt
d00578be:	2000      	movlt	r0, #0
d00578c0:	2601      	movge	r6, #1
d00578c2:	2600      	movlt	r6, #0
d00578c4:	2800      	cmp	r0, #0
d00578c6:	f000 8244 	beq.w	d0057d52 <clipTriangleToFrustum+0x576>
d00578ca:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d00578ce:	3201      	adds	r2, #1
d00578d0:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d00578d4:	edc1 5a00 	vstr	s11, [r1]
d00578d8:	ed81 6a01 	vstr	s12, [r1, #4]
d00578dc:	edc1 2a02 	vstr	s5, [r1, #8]
d00578e0:	ed93 7a08 	vldr	s14, [r3, #32]
d00578e4:	ed93 4a06 	vldr	s8, [r3, #24]
d00578e8:	ee37 5a67 	vsub.f32	s10, s14, s15
d00578ec:	edd3 4a07 	vldr	s9, [r3, #28]
d00578f0:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d00578f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00578f8:	bfac      	ite	ge
d00578fa:	2101      	movge	r1, #1
d00578fc:	2100      	movlt	r1, #0
d00578fe:	f2c0 825c 	blt.w	d0057dba <clipTriangleToFrustum+0x5de>
d0057902:	2800      	cmp	r0, #0
d0057904:	f000 8259 	beq.w	d0057dba <clipTriangleToFrustum+0x5de>
d0057908:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d005790c:	3201      	adds	r2, #1
d005790e:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d0057912:	ed81 4a00 	vstr	s8, [r1]
d0057916:	edc1 4a01 	vstr	s9, [r1, #4]
d005791a:	ed81 7a02 	vstr	s14, [r1, #8]
d005791e:	2a02      	cmp	r2, #2
d0057920:	f340 81e3 	ble.w	d0057cea <clipTriangleToFrustum+0x50e>
d0057924:	eb02 0742 	add.w	r7, r2, r2, lsl #1
d0057928:	4626      	mov	r6, r4
d005792a:	4620      	mov	r0, r4
d005792c:	2200      	movs	r2, #0
d005792e:	00bf      	lsls	r7, r7, #2
d0057930:	f1a7 010c 	sub.w	r1, r7, #12
d0057934:	4427      	add	r7, r4
d0057936:	4421      	add	r1, r4
d0057938:	ed91 7a00 	vldr	s14, [r1]
d005793c:	edd1 7a02 	vldr	s15, [r1, #8]
d0057940:	ed91 6a01 	vldr	s12, [r1, #4]
d0057944:	ee77 6a27 	vadd.f32	s13, s14, s15
d0057948:	e009      	b.n	d005795e <clipTriangleToFrustum+0x182>
d005794a:	3201      	adds	r2, #1
d005794c:	ed81 7a00 	vstr	s14, [r1]
d0057950:	ed81 6a01 	vstr	s12, [r1, #4]
d0057954:	edc1 7a02 	vstr	s15, [r1, #8]
d0057958:	300c      	adds	r0, #12
d005795a:	4287      	cmp	r7, r0
d005795c:	d053      	beq.n	d0057a06 <clipTriangleToFrustum+0x22a>
d005795e:	eeb0 4a47 	vmov.f32	s8, s14
d0057962:	ed90 7a00 	vldr	s14, [r0]
d0057966:	eeb0 5a67 	vmov.f32	s10, s15
d005796a:	edd0 7a02 	vldr	s15, [r0, #8]
d005796e:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0057972:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0057976:	eef0 5a66 	vmov.f32	s11, s13
d005797a:	ee77 6a27 	vadd.f32	s13, s14, s15
d005797e:	eb03 0181 	add.w	r1, r3, r1, lsl #2
d0057982:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057986:	eef0 4a46 	vmov.f32	s9, s12
d005798a:	ed90 6a01 	vldr	s12, [r0, #4]
d005798e:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0057992:	bfac      	ite	ge
d0057994:	f04f 0c01 	movge.w	ip, #1
d0057998:	f04f 0c00 	movlt.w	ip, #0
d005799c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00579a0:	bfac      	ite	ge
d00579a2:	f04f 0e01 	movge.w	lr, #1
d00579a6:	f04f 0e00 	movlt.w	lr, #0
d00579aa:	f1bc 0f00 	cmp.w	ip, #0
d00579ae:	d002      	beq.n	d00579b6 <clipTriangleToFrustum+0x1da>
d00579b0:	f1be 0f00 	cmp.w	lr, #0
d00579b4:	d1c9      	bne.n	d005794a <clipTriangleToFrustum+0x16e>
d00579b6:	eef5 6a40 	vcmp.f32	s13, #0.0
d00579ba:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d00579be:	ee35 1ae6 	vsub.f32	s2, s11, s13
d00579c2:	ee77 1a44 	vsub.f32	s3, s14, s8
d00579c6:	eb03 0181 	add.w	r1, r3, r1, lsl #2
d00579ca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00579ce:	ee36 2a64 	vsub.f32	s4, s12, s9
d00579d2:	ee77 2ac5 	vsub.f32	s5, s15, s10
d00579d6:	f140 8219 	bpl.w	d0057e0c <clipTriangleToFrustum+0x630>
d00579da:	f1bc 0f00 	cmp.w	ip, #0
d00579de:	f000 8215 	beq.w	d0057e0c <clipTriangleToFrustum+0x630>
d00579e2:	eec5 3a81 	vdiv.f32	s7, s11, s2
d00579e6:	300c      	adds	r0, #12
d00579e8:	3201      	adds	r2, #1
d00579ea:	4287      	cmp	r7, r0
d00579ec:	eea1 4aa3 	vfma.f32	s8, s3, s7
d00579f0:	eee2 4a23 	vfma.f32	s9, s4, s7
d00579f4:	eea2 5aa3 	vfma.f32	s10, s5, s7
d00579f8:	ed81 4a00 	vstr	s8, [r1]
d00579fc:	edc1 4a01 	vstr	s9, [r1, #4]
d0057a00:	ed81 5a02 	vstr	s10, [r1, #8]
d0057a04:	d1ab      	bne.n	d005795e <clipTriangleToFrustum+0x182>
d0057a06:	2a02      	cmp	r2, #2
d0057a08:	f340 816f 	ble.w	d0057cea <clipTriangleToFrustum+0x50e>
d0057a0c:	eb02 0242 	add.w	r2, r2, r2, lsl #1
d0057a10:	461f      	mov	r7, r3
d0057a12:	469c      	mov	ip, r3
d0057a14:	2100      	movs	r1, #0
d0057a16:	0092      	lsls	r2, r2, #2
d0057a18:	f1a2 000c 	sub.w	r0, r2, #12
d0057a1c:	441a      	add	r2, r3
d0057a1e:	4418      	add	r0, r3
d0057a20:	edd0 7a00 	vldr	s15, [r0]
d0057a24:	ed90 7a02 	vldr	s14, [r0, #8]
d0057a28:	ed90 6a01 	vldr	s12, [r0, #4]
d0057a2c:	ee77 6a67 	vsub.f32	s13, s14, s15
d0057a30:	e00a      	b.n	d0057a48 <clipTriangleToFrustum+0x26c>
d0057a32:	3101      	adds	r1, #1
d0057a34:	edc0 7a00 	vstr	s15, [r0]
d0057a38:	ed80 6a01 	vstr	s12, [r0, #4]
d0057a3c:	ed80 7a02 	vstr	s14, [r0, #8]
d0057a40:	f10c 0c0c 	add.w	ip, ip, #12
d0057a44:	4562      	cmp	r2, ip
d0057a46:	d056      	beq.n	d0057af6 <clipTriangleToFrustum+0x31a>
d0057a48:	eeb0 4a67 	vmov.f32	s8, s15
d0057a4c:	eddc 7a00 	vldr	s15, [ip]
d0057a50:	eeb0 5a47 	vmov.f32	s10, s14
d0057a54:	ed9c 7a02 	vldr	s14, [ip, #8]
d0057a58:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0057a5c:	eb01 0041 	add.w	r0, r1, r1, lsl #1
d0057a60:	eef0 5a66 	vmov.f32	s11, s13
d0057a64:	ee77 6a67 	vsub.f32	s13, s14, s15
d0057a68:	eb04 0080 	add.w	r0, r4, r0, lsl #2
d0057a6c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057a70:	eef0 4a46 	vmov.f32	s9, s12
d0057a74:	ed9c 6a01 	vldr	s12, [ip, #4]
d0057a78:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0057a7c:	bfac      	ite	ge
d0057a7e:	f04f 0e01 	movge.w	lr, #1
d0057a82:	f04f 0e00 	movlt.w	lr, #0
d0057a86:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057a8a:	bfac      	ite	ge
d0057a8c:	f04f 0801 	movge.w	r8, #1
d0057a90:	f04f 0800 	movlt.w	r8, #0
d0057a94:	f1be 0f00 	cmp.w	lr, #0
d0057a98:	d002      	beq.n	d0057aa0 <clipTriangleToFrustum+0x2c4>
d0057a9a:	f1b8 0f00 	cmp.w	r8, #0
d0057a9e:	d1c8      	bne.n	d0057a32 <clipTriangleToFrustum+0x256>
d0057aa0:	eef5 6a40 	vcmp.f32	s13, #0.0
d0057aa4:	eb01 0041 	add.w	r0, r1, r1, lsl #1
d0057aa8:	ee77 3aa5 	vadd.f32	s7, s15, s11
d0057aac:	ee37 1ac4 	vsub.f32	s2, s15, s8
d0057ab0:	eb04 0080 	add.w	r0, r4, r0, lsl #2
d0057ab4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057ab8:	ee76 1a64 	vsub.f32	s3, s12, s9
d0057abc:	ee73 3ac7 	vsub.f32	s7, s7, s14
d0057ac0:	ee37 2a45 	vsub.f32	s4, s14, s10
d0057ac4:	f140 81d1 	bpl.w	d0057e6a <clipTriangleToFrustum+0x68e>
d0057ac8:	f1be 0f00 	cmp.w	lr, #0
d0057acc:	f000 81cd 	beq.w	d0057e6a <clipTriangleToFrustum+0x68e>
d0057ad0:	eec5 2aa3 	vdiv.f32	s5, s11, s7
d0057ad4:	f10c 0c0c 	add.w	ip, ip, #12
d0057ad8:	3101      	adds	r1, #1
d0057ada:	4562      	cmp	r2, ip
d0057adc:	eea1 4a22 	vfma.f32	s8, s2, s5
d0057ae0:	eee1 4aa2 	vfma.f32	s9, s3, s5
d0057ae4:	eea2 5a22 	vfma.f32	s10, s4, s5
d0057ae8:	ed80 4a00 	vstr	s8, [r0]
d0057aec:	edc0 4a01 	vstr	s9, [r0, #4]
d0057af0:	ed80 5a02 	vstr	s10, [r0, #8]
d0057af4:	d1a8      	bne.n	d0057a48 <clipTriangleToFrustum+0x26c>
d0057af6:	2902      	cmp	r1, #2
d0057af8:	f340 80f7 	ble.w	d0057cea <clipTriangleToFrustum+0x50e>
d0057afc:	eb01 0241 	add.w	r2, r1, r1, lsl #1
d0057b00:	2100      	movs	r1, #0
d0057b02:	0092      	lsls	r2, r2, #2
d0057b04:	f1a2 000c 	sub.w	r0, r2, #12
d0057b08:	4422      	add	r2, r4
d0057b0a:	4420      	add	r0, r4
d0057b0c:	edd0 7a01 	vldr	s15, [r0, #4]
d0057b10:	ed90 7a02 	vldr	s14, [r0, #8]
d0057b14:	eef0 6a67 	vmov.f32	s13, s15
d0057b18:	ed90 6a00 	vldr	s12, [r0]
d0057b1c:	eed3 6a07 	vfnms.f32	s13, s6, s14
d0057b20:	e011      	b.n	d0057b46 <clipTriangleToFrustum+0x36a>
d0057b22:	bf00      	nop
d0057b24:	d009f140 	.word	0xd009f140
d0057b28:	d009f144 	.word	0xd009f144
d0057b2c:	f1be 0f00 	cmp.w	lr, #0
d0057b30:	d034      	beq.n	d0057b9c <clipTriangleToFrustum+0x3c0>
d0057b32:	3101      	adds	r1, #1
d0057b34:	ed80 6a00 	vstr	s12, [r0]
d0057b38:	edc0 7a01 	vstr	s15, [r0, #4]
d0057b3c:	ed80 7a02 	vstr	s14, [r0, #8]
d0057b40:	360c      	adds	r6, #12
d0057b42:	4296      	cmp	r6, r2
d0057b44:	d054      	beq.n	d0057bf0 <clipTriangleToFrustum+0x414>
d0057b46:	eeb0 5a47 	vmov.f32	s10, s14
d0057b4a:	ed96 7a02 	vldr	s14, [r6, #8]
d0057b4e:	eef0 4a67 	vmov.f32	s9, s15
d0057b52:	edd6 7a01 	vldr	s15, [r6, #4]
d0057b56:	ee63 3a07 	vmul.f32	s7, s6, s14
d0057b5a:	eb01 0041 	add.w	r0, r1, r1, lsl #1
d0057b5e:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0057b62:	eef0 5a66 	vmov.f32	s11, s13
d0057b66:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d0057b6a:	ee73 6ae7 	vsub.f32	s13, s7, s15
d0057b6e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057b72:	eeb0 4a46 	vmov.f32	s8, s12
d0057b76:	ed96 6a00 	vldr	s12, [r6]
d0057b7a:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0057b7e:	bfac      	ite	ge
d0057b80:	f04f 0c01 	movge.w	ip, #1
d0057b84:	f04f 0c00 	movlt.w	ip, #0
d0057b88:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057b8c:	bfac      	ite	ge
d0057b8e:	f04f 0e01 	movge.w	lr, #1
d0057b92:	f04f 0e00 	movlt.w	lr, #0
d0057b96:	f1bc 0f00 	cmp.w	ip, #0
d0057b9a:	d1c7      	bne.n	d0057b2c <clipTriangleToFrustum+0x350>
d0057b9c:	eef5 6a40 	vcmp.f32	s13, #0.0
d0057ba0:	eb01 0041 	add.w	r0, r1, r1, lsl #1
d0057ba4:	ee77 2aa5 	vadd.f32	s5, s15, s11
d0057ba8:	ee36 1a44 	vsub.f32	s2, s12, s8
d0057bac:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d0057bb0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057bb4:	ee77 1ae4 	vsub.f32	s3, s15, s9
d0057bb8:	ee72 2ae3 	vsub.f32	s5, s5, s7
d0057bbc:	ee37 2a45 	vsub.f32	s4, s14, s10
d0057bc0:	f140 8209 	bpl.w	d0057fd6 <clipTriangleToFrustum+0x7fa>
d0057bc4:	f1bc 0f00 	cmp.w	ip, #0
d0057bc8:	f000 8205 	beq.w	d0057fd6 <clipTriangleToFrustum+0x7fa>
d0057bcc:	eec5 3aa2 	vdiv.f32	s7, s11, s5
d0057bd0:	360c      	adds	r6, #12
d0057bd2:	3101      	adds	r1, #1
d0057bd4:	4296      	cmp	r6, r2
d0057bd6:	eea1 4a23 	vfma.f32	s8, s2, s7
d0057bda:	eee1 4aa3 	vfma.f32	s9, s3, s7
d0057bde:	eea2 5a23 	vfma.f32	s10, s4, s7
d0057be2:	ed80 4a00 	vstr	s8, [r0]
d0057be6:	edc0 4a01 	vstr	s9, [r0, #4]
d0057bea:	ed80 5a02 	vstr	s10, [r0, #8]
d0057bee:	d1aa      	bne.n	d0057b46 <clipTriangleToFrustum+0x36a>
d0057bf0:	2902      	cmp	r1, #2
d0057bf2:	dd7a      	ble.n	d0057cea <clipTriangleToFrustum+0x50e>
d0057bf4:	eb01 0241 	add.w	r2, r1, r1, lsl #1
d0057bf8:	2600      	movs	r6, #0
d0057bfa:	0092      	lsls	r2, r2, #2
d0057bfc:	f1a2 010c 	sub.w	r1, r2, #12
d0057c00:	441a      	add	r2, r3
d0057c02:	440b      	add	r3, r1
d0057c04:	edd3 7a01 	vldr	s15, [r3, #4]
d0057c08:	ed93 7a02 	vldr	s14, [r3, #8]
d0057c0c:	eef0 6a67 	vmov.f32	s13, s15
d0057c10:	ed93 6a00 	vldr	s12, [r3]
d0057c14:	eee3 6a07 	vfma.f32	s13, s6, s14
d0057c18:	e00a      	b.n	d0057c30 <clipTriangleToFrustum+0x454>
d0057c1a:	b378      	cbz	r0, d0057c7c <clipTriangleToFrustum+0x4a0>
d0057c1c:	3601      	adds	r6, #1
d0057c1e:	ed83 6a00 	vstr	s12, [r3]
d0057c22:	edc3 7a01 	vstr	s15, [r3, #4]
d0057c26:	ed83 7a02 	vstr	s14, [r3, #8]
d0057c2a:	370c      	adds	r7, #12
d0057c2c:	4297      	cmp	r7, r2
d0057c2e:	d04c      	beq.n	d0057cca <clipTriangleToFrustum+0x4ee>
d0057c30:	eef0 4a67 	vmov.f32	s9, s15
d0057c34:	edd7 7a01 	vldr	s15, [r7, #4]
d0057c38:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0057c3c:	eb06 0346 	add.w	r3, r6, r6, lsl #1
d0057c40:	eef0 5a66 	vmov.f32	s11, s13
d0057c44:	eef0 6a67 	vmov.f32	s13, s15
d0057c48:	eb04 0383 	add.w	r3, r4, r3, lsl #2
d0057c4c:	eeb0 5a47 	vmov.f32	s10, s14
d0057c50:	ed97 7a02 	vldr	s14, [r7, #8]
d0057c54:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057c58:	eee3 6a07 	vfma.f32	s13, s6, s14
d0057c5c:	eeb0 4a46 	vmov.f32	s8, s12
d0057c60:	ed97 6a00 	vldr	s12, [r7]
d0057c64:	bfac      	ite	ge
d0057c66:	2101      	movge	r1, #1
d0057c68:	2100      	movlt	r1, #0
d0057c6a:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0057c6e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057c72:	bfac      	ite	ge
d0057c74:	2001      	movge	r0, #1
d0057c76:	2000      	movlt	r0, #0
d0057c78:	2900      	cmp	r1, #0
d0057c7a:	d1ce      	bne.n	d0057c1a <clipTriangleToFrustum+0x43e>
d0057c7c:	eef5 6a40 	vcmp.f32	s13, #0.0
d0057c80:	eb06 0346 	add.w	r3, r6, r6, lsl #1
d0057c84:	ee35 1ae6 	vsub.f32	s2, s11, s13
d0057c88:	ee76 1a44 	vsub.f32	s3, s12, s8
d0057c8c:	eb04 0383 	add.w	r3, r4, r3, lsl #2
d0057c90:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057c94:	ee37 2ae4 	vsub.f32	s4, s15, s9
d0057c98:	ee77 2a45 	vsub.f32	s5, s14, s10
d0057c9c:	f140 81cc 	bpl.w	d0058038 <clipTriangleToFrustum+0x85c>
d0057ca0:	2900      	cmp	r1, #0
d0057ca2:	f000 81c9 	beq.w	d0058038 <clipTriangleToFrustum+0x85c>
d0057ca6:	eec5 3a81 	vdiv.f32	s7, s11, s2
d0057caa:	370c      	adds	r7, #12
d0057cac:	3601      	adds	r6, #1
d0057cae:	4297      	cmp	r7, r2
d0057cb0:	eea1 4aa3 	vfma.f32	s8, s3, s7
d0057cb4:	eee2 4a23 	vfma.f32	s9, s4, s7
d0057cb8:	eea2 5aa3 	vfma.f32	s10, s5, s7
d0057cbc:	ed83 4a00 	vstr	s8, [r3]
d0057cc0:	edc3 4a01 	vstr	s9, [r3, #4]
d0057cc4:	ed83 5a02 	vstr	s10, [r3, #8]
d0057cc8:	d1b2      	bne.n	d0057c30 <clipTriangleToFrustum+0x454>
d0057cca:	2e02      	cmp	r6, #2
d0057ccc:	dd0d      	ble.n	d0057cea <clipTriangleToFrustum+0x50e>
d0057cce:	eb06 0c46 	add.w	ip, r6, r6, lsl #1
d0057cd2:	2300      	movs	r3, #0
d0057cd4:	ea4f 0c8c 	mov.w	ip, ip, lsl #2
d0057cd8:	18e2      	adds	r2, r4, r3
d0057cda:	18ef      	adds	r7, r5, r3
d0057cdc:	330c      	adds	r3, #12
d0057cde:	ca07      	ldmia	r2, {r0, r1, r2}
d0057ce0:	459c      	cmp	ip, r3
d0057ce2:	e887 0007 	stmia.w	r7, {r0, r1, r2}
d0057ce6:	d1f7      	bne.n	d0057cd8 <clipTriangleToFrustum+0x4fc>
d0057ce8:	e000      	b.n	d0057cec <clipTriangleToFrustum+0x510>
d0057cea:	2600      	movs	r6, #0
d0057cec:	4630      	mov	r0, r6
d0057cee:	b00a      	add	sp, #40	; 0x28
d0057cf0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0057cf4:	eeb5 4a40 	vcmp.f32	s8, #0.0
d0057cf8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057cfc:	f140 80e6 	bpl.w	d0057ecc <clipTriangleToFrustum+0x6f0>
d0057d00:	2a00      	cmp	r2, #0
d0057d02:	f000 80e3 	beq.w	d0057ecc <clipTriangleToFrustum+0x6f0>
d0057d06:	ee36 1ac7 	vsub.f32	s2, s13, s14
d0057d0a:	2201      	movs	r2, #1
d0057d0c:	ee75 1a63 	vsub.f32	s3, s10, s7
d0057d10:	ee34 2ae5 	vsub.f32	s4, s9, s11
d0057d14:	eec6 2a01 	vdiv.f32	s5, s12, s2
d0057d18:	ee37 6a66 	vsub.f32	s12, s14, s13
d0057d1c:	eee2 5a82 	vfma.f32	s11, s5, s4
d0057d20:	eee2 6a86 	vfma.f32	s13, s5, s12
d0057d24:	eee2 3aa1 	vfma.f32	s7, s5, s3
d0057d28:	edc4 5a01 	vstr	s11, [r4, #4]
d0057d2c:	edc4 6a02 	vstr	s13, [r4, #8]
d0057d30:	edc4 3a00 	vstr	s7, [r4]
d0057d34:	edd3 2a05 	vldr	s5, [r3, #20]
d0057d38:	edd3 5a03 	vldr	s11, [r3, #12]
d0057d3c:	ee72 6ae7 	vsub.f32	s13, s5, s15
d0057d40:	ed93 6a04 	vldr	s12, [r3, #16]
d0057d44:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d0057d48:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057d4c:	bfac      	ite	ge
d0057d4e:	4616      	movge	r6, r2
d0057d50:	2600      	movlt	r6, #0
d0057d52:	eef5 6a40 	vcmp.f32	s13, #0.0
d0057d56:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057d5a:	f140 80de 	bpl.w	d0057f1a <clipTriangleToFrustum+0x73e>
d0057d5e:	2900      	cmp	r1, #0
d0057d60:	f000 80db 	beq.w	d0057f1a <clipTriangleToFrustum+0x73e>
d0057d64:	ee37 1a62 	vsub.f32	s2, s14, s5
d0057d68:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0057d6c:	ee75 1ac5 	vsub.f32	s3, s11, s10
d0057d70:	4630      	mov	r0, r6
d0057d72:	ee36 2a64 	vsub.f32	s4, s12, s9
d0057d76:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d0057d7a:	eec4 3a01 	vdiv.f32	s7, s8, s2
d0057d7e:	3201      	adds	r2, #1
d0057d80:	ee32 4ac7 	vsub.f32	s8, s5, s14
d0057d84:	eea1 5aa3 	vfma.f32	s10, s3, s7
d0057d88:	eea4 7a23 	vfma.f32	s14, s8, s7
d0057d8c:	eee2 4a23 	vfma.f32	s9, s4, s7
d0057d90:	ed81 5a00 	vstr	s10, [r1]
d0057d94:	ed81 7a02 	vstr	s14, [r1, #8]
d0057d98:	edc1 4a01 	vstr	s9, [r1, #4]
d0057d9c:	ed93 7a08 	vldr	s14, [r3, #32]
d0057da0:	ed93 4a06 	vldr	s8, [r3, #24]
d0057da4:	ee37 5a67 	vsub.f32	s10, s14, s15
d0057da8:	edd3 4a07 	vldr	s9, [r3, #28]
d0057dac:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
d0057db0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057db4:	bfac      	ite	ge
d0057db6:	2101      	movge	r1, #1
d0057db8:	2100      	movlt	r1, #0
d0057dba:	eeb5 5a40 	vcmp.f32	s10, #0.0
d0057dbe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057dc2:	f140 80d9 	bpl.w	d0057f78 <clipTriangleToFrustum+0x79c>
d0057dc6:	2800      	cmp	r0, #0
d0057dc8:	f000 80d6 	beq.w	d0057f78 <clipTriangleToFrustum+0x79c>
d0057dcc:	ee77 3ac7 	vsub.f32	s7, s15, s14
d0057dd0:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0057dd4:	ee34 4a65 	vsub.f32	s8, s8, s11
d0057dd8:	3201      	adds	r2, #1
d0057dda:	ee74 4ac6 	vsub.f32	s9, s9, s12
d0057dde:	eb04 0181 	add.w	r1, r4, r1, lsl #2
d0057de2:	ee73 3aa6 	vadd.f32	s7, s7, s13
d0057de6:	ee37 7a62 	vsub.f32	s14, s14, s5
d0057dea:	eef0 7a62 	vmov.f32	s15, s5
d0057dee:	ee86 5aa3 	vdiv.f32	s10, s13, s7
d0057df2:	eee4 5a05 	vfma.f32	s11, s8, s10
d0057df6:	eea4 6a85 	vfma.f32	s12, s9, s10
d0057dfa:	eee7 7a05 	vfma.f32	s15, s14, s10
d0057dfe:	edc1 5a00 	vstr	s11, [r1]
d0057e02:	ed81 6a01 	vstr	s12, [r1, #4]
d0057e06:	edc1 7a02 	vstr	s15, [r1, #8]
d0057e0a:	e588      	b.n	d005791e <clipTriangleToFrustum+0x142>
d0057e0c:	eef5 5a40 	vcmp.f32	s11, #0.0
d0057e10:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0057e14:	ee35 1ae6 	vsub.f32	s2, s11, s13
d0057e18:	eb03 0c81 	add.w	ip, r3, r1, lsl #2
d0057e1c:	ee77 1a44 	vsub.f32	s3, s14, s8
d0057e20:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057e24:	4661      	mov	r1, ip
d0057e26:	ee36 2a64 	vsub.f32	s4, s12, s9
d0057e2a:	ee77 2ac5 	vsub.f32	s5, s15, s10
d0057e2e:	f10c 0c0c 	add.w	ip, ip, #12
d0057e32:	f57f ad91 	bpl.w	d0057958 <clipTriangleToFrustum+0x17c>
d0057e36:	f1be 0f00 	cmp.w	lr, #0
d0057e3a:	f43f ad8d 	beq.w	d0057958 <clipTriangleToFrustum+0x17c>
d0057e3e:	eec5 3a81 	vdiv.f32	s7, s11, s2
d0057e42:	3202      	adds	r2, #2
d0057e44:	eea1 4aa3 	vfma.f32	s8, s3, s7
d0057e48:	eee2 4a23 	vfma.f32	s9, s4, s7
d0057e4c:	eea2 5aa3 	vfma.f32	s10, s5, s7
d0057e50:	ed81 4a00 	vstr	s8, [r1]
d0057e54:	edc1 4a01 	vstr	s9, [r1, #4]
d0057e58:	ed81 5a02 	vstr	s10, [r1, #8]
d0057e5c:	ed8c 7a00 	vstr	s14, [ip]
d0057e60:	ed8c 6a01 	vstr	s12, [ip, #4]
d0057e64:	edcc 7a02 	vstr	s15, [ip, #8]
d0057e68:	e576      	b.n	d0057958 <clipTriangleToFrustum+0x17c>
d0057e6a:	eef5 5a40 	vcmp.f32	s11, #0.0
d0057e6e:	eb01 0041 	add.w	r0, r1, r1, lsl #1
d0057e72:	ee77 3aa5 	vadd.f32	s7, s15, s11
d0057e76:	eb04 0e80 	add.w	lr, r4, r0, lsl #2
d0057e7a:	ee37 1ac4 	vsub.f32	s2, s15, s8
d0057e7e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057e82:	4670      	mov	r0, lr
d0057e84:	ee76 1a64 	vsub.f32	s3, s12, s9
d0057e88:	ee73 3ac7 	vsub.f32	s7, s7, s14
d0057e8c:	f10e 0e0c 	add.w	lr, lr, #12
d0057e90:	ee37 2a45 	vsub.f32	s4, s14, s10
d0057e94:	f57f add4 	bpl.w	d0057a40 <clipTriangleToFrustum+0x264>
d0057e98:	f1b8 0f00 	cmp.w	r8, #0
d0057e9c:	f43f add0 	beq.w	d0057a40 <clipTriangleToFrustum+0x264>
d0057ea0:	eec5 2aa3 	vdiv.f32	s5, s11, s7
d0057ea4:	3102      	adds	r1, #2
d0057ea6:	eea1 4a22 	vfma.f32	s8, s2, s5
d0057eaa:	eee1 4aa2 	vfma.f32	s9, s3, s5
d0057eae:	eea2 5a22 	vfma.f32	s10, s4, s5
d0057eb2:	ed80 4a00 	vstr	s8, [r0]
d0057eb6:	edc0 4a01 	vstr	s9, [r0, #4]
d0057eba:	ed80 5a02 	vstr	s10, [r0, #8]
d0057ebe:	edce 7a00 	vstr	s15, [lr]
d0057ec2:	ed8e 6a01 	vstr	s12, [lr, #4]
d0057ec6:	ed8e 7a02 	vstr	s14, [lr, #8]
d0057eca:	e5b9      	b.n	d0057a40 <clipTriangleToFrustum+0x264>
d0057ecc:	eeb5 6a40 	vcmp.f32	s12, #0.0
d0057ed0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057ed4:	f140 80de 	bpl.w	d0058094 <clipTriangleToFrustum+0x8b8>
d0057ed8:	2900      	cmp	r1, #0
d0057eda:	f000 80db 	beq.w	d0058094 <clipTriangleToFrustum+0x8b8>
d0057ede:	ee36 1ac7 	vsub.f32	s2, s13, s14
d0057ee2:	2202      	movs	r2, #2
d0057ee4:	ee75 1a63 	vsub.f32	s3, s10, s7
d0057ee8:	ed84 5a03 	vstr	s10, [r4, #12]
d0057eec:	ee34 2ae5 	vsub.f32	s4, s9, s11
d0057ef0:	edc4 4a04 	vstr	s9, [r4, #16]
d0057ef4:	eec6 2a01 	vdiv.f32	s5, s12, s2
d0057ef8:	ed84 7a05 	vstr	s14, [r4, #20]
d0057efc:	ee37 6a66 	vsub.f32	s12, s14, s13
d0057f00:	eee2 3aa1 	vfma.f32	s7, s5, s3
d0057f04:	eee2 5a82 	vfma.f32	s11, s5, s4
d0057f08:	eee2 6a86 	vfma.f32	s13, s5, s12
d0057f0c:	edc4 3a00 	vstr	s7, [r4]
d0057f10:	edc4 5a01 	vstr	s11, [r4, #4]
d0057f14:	edc4 6a02 	vstr	s13, [r4, #8]
d0057f18:	e4c2      	b.n	d00578a0 <clipTriangleToFrustum+0xc4>
d0057f1a:	eeb5 4ac0 	vcmpe.f32	s8, #0.0
d0057f1e:	f006 0001 	and.w	r0, r6, #1
d0057f22:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057f26:	bf58      	it	pl
d0057f28:	2000      	movpl	r0, #0
d0057f2a:	2800      	cmp	r0, #0
d0057f2c:	f000 80b4 	beq.w	d0058098 <clipTriangleToFrustum+0x8bc>
d0057f30:	ee37 1a62 	vsub.f32	s2, s14, s5
d0057f34:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0057f38:	ee75 1ac5 	vsub.f32	s3, s11, s10
d0057f3c:	3202      	adds	r2, #2
d0057f3e:	ee36 2a64 	vsub.f32	s4, s12, s9
d0057f42:	eb04 0681 	add.w	r6, r4, r1, lsl #2
d0057f46:	eec4 3a01 	vdiv.f32	s7, s8, s2
d0057f4a:	4631      	mov	r1, r6
d0057f4c:	edc6 5a03 	vstr	s11, [r6, #12]
d0057f50:	ed86 6a04 	vstr	s12, [r6, #16]
d0057f54:	310c      	adds	r1, #12
d0057f56:	edc6 2a05 	vstr	s5, [r6, #20]
d0057f5a:	ee32 4ac7 	vsub.f32	s8, s5, s14
d0057f5e:	eea1 5aa3 	vfma.f32	s10, s3, s7
d0057f62:	eee2 4a23 	vfma.f32	s9, s4, s7
d0057f66:	eea4 7a23 	vfma.f32	s14, s8, s7
d0057f6a:	ed86 5a00 	vstr	s10, [r6]
d0057f6e:	edc6 4a01 	vstr	s9, [r6, #4]
d0057f72:	ed86 7a02 	vstr	s14, [r6, #8]
d0057f76:	e4b3      	b.n	d00578e0 <clipTriangleToFrustum+0x104>
d0057f78:	eef5 6a40 	vcmp.f32	s13, #0.0
d0057f7c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057f80:	f57f accd 	bpl.w	d005791e <clipTriangleToFrustum+0x142>
d0057f84:	2900      	cmp	r1, #0
d0057f86:	f43f acca 	beq.w	d005791e <clipTriangleToFrustum+0x142>
d0057f8a:	ee77 7ac7 	vsub.f32	s15, s15, s14
d0057f8e:	eb02 0142 	add.w	r1, r2, r2, lsl #1
d0057f92:	ee74 1a65 	vsub.f32	s3, s8, s11
d0057f96:	3202      	adds	r2, #2
d0057f98:	ee34 2ac6 	vsub.f32	s4, s9, s12
d0057f9c:	eb04 0081 	add.w	r0, r4, r1, lsl #2
d0057fa0:	ee77 7aa6 	vadd.f32	s15, s15, s13
d0057fa4:	ee77 3a62 	vsub.f32	s7, s14, s5
d0057fa8:	ed80 4a03 	vstr	s8, [r0, #12]
d0057fac:	edc0 4a04 	vstr	s9, [r0, #16]
d0057fb0:	ee86 5aa7 	vdiv.f32	s10, s13, s15
d0057fb4:	ed80 7a05 	vstr	s14, [r0, #20]
d0057fb8:	eef0 7a62 	vmov.f32	s15, s5
d0057fbc:	eee1 5a85 	vfma.f32	s11, s3, s10
d0057fc0:	eea2 6a05 	vfma.f32	s12, s4, s10
d0057fc4:	eee3 7a85 	vfma.f32	s15, s7, s10
d0057fc8:	edc0 5a00 	vstr	s11, [r0]
d0057fcc:	ed80 6a01 	vstr	s12, [r0, #4]
d0057fd0:	edc0 7a02 	vstr	s15, [r0, #8]
d0057fd4:	e4a3      	b.n	d005791e <clipTriangleToFrustum+0x142>
d0057fd6:	eef5 5a40 	vcmp.f32	s11, #0.0
d0057fda:	eb01 0041 	add.w	r0, r1, r1, lsl #1
d0057fde:	ee77 2aa5 	vadd.f32	s5, s15, s11
d0057fe2:	eb03 0c80 	add.w	ip, r3, r0, lsl #2
d0057fe6:	ee36 1a44 	vsub.f32	s2, s12, s8
d0057fea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0057fee:	4660      	mov	r0, ip
d0057ff0:	ee77 1ae4 	vsub.f32	s3, s15, s9
d0057ff4:	ee72 3ae3 	vsub.f32	s7, s5, s7
d0057ff8:	f10c 0c0c 	add.w	ip, ip, #12
d0057ffc:	ee37 2a45 	vsub.f32	s4, s14, s10
d0058000:	f57f ad9e 	bpl.w	d0057b40 <clipTriangleToFrustum+0x364>
d0058004:	f1be 0f00 	cmp.w	lr, #0
d0058008:	f43f ad9a 	beq.w	d0057b40 <clipTriangleToFrustum+0x364>
d005800c:	eec5 2aa3 	vdiv.f32	s5, s11, s7
d0058010:	3102      	adds	r1, #2
d0058012:	eea1 4a22 	vfma.f32	s8, s2, s5
d0058016:	eee1 4aa2 	vfma.f32	s9, s3, s5
d005801a:	eea2 5a22 	vfma.f32	s10, s4, s5
d005801e:	ed80 4a00 	vstr	s8, [r0]
d0058022:	edc0 4a01 	vstr	s9, [r0, #4]
d0058026:	ed80 5a02 	vstr	s10, [r0, #8]
d005802a:	ed8c 6a00 	vstr	s12, [ip]
d005802e:	edcc 7a01 	vstr	s15, [ip, #4]
d0058032:	ed8c 7a02 	vstr	s14, [ip, #8]
d0058036:	e583      	b.n	d0057b40 <clipTriangleToFrustum+0x364>
d0058038:	eef5 5a40 	vcmp.f32	s11, #0.0
d005803c:	eb06 0346 	add.w	r3, r6, r6, lsl #1
d0058040:	ee35 1ae6 	vsub.f32	s2, s11, s13
d0058044:	eb04 0183 	add.w	r1, r4, r3, lsl #2
d0058048:	ee76 1a44 	vsub.f32	s3, s12, s8
d005804c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058050:	460b      	mov	r3, r1
d0058052:	ee37 2ae4 	vsub.f32	s4, s15, s9
d0058056:	ee77 2a45 	vsub.f32	s5, s14, s10
d005805a:	f101 010c 	add.w	r1, r1, #12
d005805e:	f57f ade4 	bpl.w	d0057c2a <clipTriangleToFrustum+0x44e>
d0058062:	2800      	cmp	r0, #0
d0058064:	f43f ade1 	beq.w	d0057c2a <clipTriangleToFrustum+0x44e>
d0058068:	eec5 3a81 	vdiv.f32	s7, s11, s2
d005806c:	3602      	adds	r6, #2
d005806e:	eea1 4aa3 	vfma.f32	s8, s3, s7
d0058072:	eee2 4a23 	vfma.f32	s9, s4, s7
d0058076:	eea2 5aa3 	vfma.f32	s10, s5, s7
d005807a:	ed83 4a00 	vstr	s8, [r3]
d005807e:	edc3 4a01 	vstr	s9, [r3, #4]
d0058082:	ed83 5a02 	vstr	s10, [r3, #8]
d0058086:	ed81 6a00 	vstr	s12, [r1]
d005808a:	edc1 7a01 	vstr	s15, [r1, #4]
d005808e:	ed81 7a02 	vstr	s14, [r1, #8]
d0058092:	e5ca      	b.n	d0057c2a <clipTriangleToFrustum+0x44e>
d0058094:	2200      	movs	r2, #0
d0058096:	e403      	b.n	d00578a0 <clipTriangleToFrustum+0xc4>
d0058098:	4630      	mov	r0, r6
d005809a:	e421      	b.n	d00578e0 <clipTriangleToFrustum+0x104>

d005809c <submitClippedTri>:
d005809c:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d00580a0:	eef4 7ac1 	vcmpe.f32	s15, s2
d00580a4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00580a8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00580ac:	eef4 7ae2 	vcmpe.f32	s15, s5
d00580b0:	bfac      	ite	ge
d00580b2:	2401      	movge	r4, #1
d00580b4:	2400      	movlt	r4, #0
d00580b6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00580ba:	ed2d 8b02 	vpush	{d8}
d00580be:	bfa8      	it	ge
d00580c0:	f044 0401 	orrge.w	r4, r4, #1
d00580c4:	b08d      	sub	sp, #52	; 0x34
d00580c6:	9301      	str	r3, [sp, #4]
d00580c8:	b924      	cbnz	r4, d00580d4 <submitClippedTri+0x38>
d00580ca:	eef4 7ac4 	vcmpe.f32	s15, s8
d00580ce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00580d2:	db04      	blt.n	d00580de <submitClippedTri+0x42>
d00580d4:	b00d      	add	sp, #52	; 0x34
d00580d6:	ecbd 8b02 	vpop	{d8}
d00580da:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00580de:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d00580e2:	ed90 7a14 	vldr	s14, [r0, #80]	; 0x50
d00580e6:	eef6 8a00 	vmov.f32	s17, #96	; 0x3f000000  0.5
d00580ea:	edd0 6a12 	vldr	s13, [r0, #72]	; 0x48
d00580ee:	edd0 7a13 	vldr	s15, [r0, #76]	; 0x4c
d00580f2:	ee86 8a01 	vdiv.f32	s16, s12, s2
d00580f6:	ee86 5a22 	vdiv.f32	s10, s12, s5
d00580fa:	eec6 5a04 	vdiv.f32	s11, s12, s8
d00580fe:	ee37 7a28 	vadd.f32	s14, s14, s17
d0058102:	ee68 0a20 	vmul.f32	s1, s16, s1
d0058106:	ee77 7aa8 	vadd.f32	s15, s15, s17
d005810a:	ee28 0a00 	vmul.f32	s0, s16, s0
d005810e:	eeb0 8a67 	vmov.f32	s16, s15
d0058112:	ee65 1a21 	vmul.f32	s3, s10, s3
d0058116:	ee25 2a02 	vmul.f32	s4, s10, s4
d005811a:	eeb0 5a47 	vmov.f32	s10, s14
d005811e:	eea6 8a80 	vfma.f32	s16, s13, s0
d0058122:	eea6 5ae0 	vfms.f32	s10, s13, s1
d0058126:	ee65 3aa3 	vmul.f32	s7, s11, s7
d005812a:	ee25 3a83 	vmul.f32	s6, s11, s6
d005812e:	eefd 5ac8 	vcvt.s32.f32	s11, s16
d0058132:	eef0 0a45 	vmov.f32	s1, s10
d0058136:	eeb0 5a67 	vmov.f32	s10, s15
d005813a:	ee15 ba90 	vmov	fp, s11
d005813e:	eee6 7a83 	vfma.f32	s15, s13, s6
d0058142:	eea6 5aa1 	vfma.f32	s10, s13, s3
d0058146:	eef0 1a47 	vmov.f32	s3, s14
d005814a:	eea6 7ae3 	vfms.f32	s14, s13, s7
d005814e:	eee6 1ac2 	vfms.f32	s3, s13, s4
d0058152:	eefd 6ae0 	vcvt.s32.f32	s13, s1
d0058156:	eebd 5ac5 	vcvt.s32.f32	s10, s10
d005815a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d005815e:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d0058162:	ee16 6a90 	vmov	r6, s13
d0058166:	ee15 3a10 	vmov	r3, s10
d005816a:	eefd 6ae1 	vcvt.s32.f32	s13, s3
d005816e:	ee17 4a10 	vmov	r4, s14
d0058172:	eba3 080b 	sub.w	r8, r3, fp
d0058176:	ee17 3a90 	vmov	r3, s15
d005817a:	ee16 ca90 	vmov	ip, s13
d005817e:	1ba7      	subs	r7, r4, r6
d0058180:	eba3 0e0b 	sub.w	lr, r3, fp
d0058184:	ebac 0506 	sub.w	r5, ip, r6
d0058188:	fb07 f708 	mul.w	r7, r7, r8
d005818c:	fb0e 7515 	mls	r5, lr, r5, r7
d0058190:	2d00      	cmp	r5, #0
d0058192:	dd9f      	ble.n	d00580d4 <submitClippedTri+0x38>
d0058194:	f8df 9188 	ldr.w	r9, [pc, #392]	; d0058320 <submitClippedTri+0x284>
d0058198:	f8d9 5000 	ldr.w	r5, [r9]
d005819c:	f5b5 5f00 	cmp.w	r5, #8192	; 0x2000
d00581a0:	da98      	bge.n	d00580d4 <submitClippedTri+0x38>
d00581a2:	4f5c      	ldr	r7, [pc, #368]	; (d0058314 <submitClippedTri+0x278>)
d00581a4:	ea4f 1e85 	mov.w	lr, r5, lsl #6
d00581a8:	1c6b      	adds	r3, r5, #1
d00581aa:	eddf 5a5b 	vldr	s11, [pc, #364]	; d0058318 <submitClippedTri+0x27c>
d00581ae:	eb07 1585 	add.w	r5, r7, r5, lsl #6
d00581b2:	f10e 0808 	add.w	r8, lr, #8
d00581b6:	9302      	str	r3, [sp, #8]
d00581b8:	ee15 3a10 	vmov	r3, s10
d00581bc:	f847 b00e 	str.w	fp, [r7, lr]
d00581c0:	f10e 0a10 	add.w	sl, lr, #16
d00581c4:	606e      	str	r6, [r5, #4]
d00581c6:	b236      	sxth	r6, r6
d00581c8:	f847 3008 	str.w	r3, [r7, r8]
d00581cc:	ee17 3a90 	vmov	r3, s15
d00581d0:	44b8      	add	r8, r7
d00581d2:	eb07 0b0a 	add.w	fp, r7, sl
d00581d6:	eddf 6a51 	vldr	s13, [pc, #324]	; d005831c <submitClippedTri+0x280>
d00581da:	45b4      	cmp	ip, r6
d00581dc:	f8c8 c004 	str.w	ip, [r8, #4]
d00581e0:	46b0      	mov	r8, r6
d00581e2:	f847 300a 	str.w	r3, [r7, sl]
d00581e6:	9b01      	ldr	r3, [sp, #4]
d00581e8:	ed8b 7a01 	vstr	s14, [fp, #4]
d00581ec:	f885 3036 	strb.w	r3, [r5, #54]	; 0x36
d00581f0:	f885 1034 	strb.w	r1, [r5, #52]	; 0x34
d00581f4:	f885 2035 	strb.w	r2, [r5, #53]	; 0x35
d00581f8:	edc5 4a07 	vstr	s9, [r5, #28]
d00581fc:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d0058200:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0058204:	ee31 7a47 	vsub.f32	s14, s2, s14
d0058208:	9b02      	ldr	r3, [sp, #8]
d005820a:	f8c9 3000 	str.w	r3, [r9]
d005820e:	ee27 7a27 	vmul.f32	s14, s14, s15
d0058212:	fe87 7a25 	vmaxnm.f32	s14, s14, s11
d0058216:	fe87 7a46 	vminnm.f32	s14, s14, s12
d005821a:	ee27 7a26 	vmul.f32	s14, s14, s13
d005821e:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0058222:	ee17 3a10 	vmov	r3, s14
d0058226:	842b      	strh	r3, [r5, #32]
d0058228:	ed90 7a10 	vldr	s14, [r0, #64]	; 0x40
d005822c:	edd0 7a0f 	vldr	s15, [r0, #60]	; 0x3c
d0058230:	ee32 7ac7 	vsub.f32	s14, s5, s14
d0058234:	ee27 7a27 	vmul.f32	s14, s14, s15
d0058238:	fe87 7a25 	vmaxnm.f32	s14, s14, s11
d005823c:	fe87 7a46 	vminnm.f32	s14, s14, s12
d0058240:	ee27 7a26 	vmul.f32	s14, s14, s13
d0058244:	eebc 7ac7 	vcvt.u32.f32	s14, s14
d0058248:	ee17 3a10 	vmov	r3, s14
d005824c:	846b      	strh	r3, [r5, #34]	; 0x22
d005824e:	edd0 7a10 	vldr	s15, [r0, #64]	; 0x40
d0058252:	ed90 7a0f 	vldr	s14, [r0, #60]	; 0x3c
d0058256:	ee74 7a67 	vsub.f32	s15, s8, s15
d005825a:	ed85 1a0a 	vstr	s2, [r5, #40]	; 0x28
d005825e:	edc5 2a0b 	vstr	s5, [r5, #44]	; 0x2c
d0058262:	ed85 4a0c 	vstr	s8, [r5, #48]	; 0x30
d0058266:	ee67 7a87 	vmul.f32	s15, s15, s14
d005826a:	fec7 7aa5 	vmaxnm.f32	s15, s15, s11
d005826e:	fec7 7ac6 	vminnm.f32	s15, s15, s12
d0058272:	ee67 7aa6 	vmul.f32	s15, s15, s13
d0058276:	eefc 7ae7 	vcvt.u32.f32	s15, s15
d005827a:	ee17 3a90 	vmov	r3, s15
d005827e:	84ab      	strh	r3, [r5, #36]	; 0x24
d0058280:	db42      	blt.n	d0058308 <submitClippedTri+0x26c>
d0058282:	4633      	mov	r3, r6
d0058284:	872e      	strh	r6, [r5, #56]	; 0x38
d0058286:	42a3      	cmp	r3, r4
d0058288:	dd02      	ble.n	d0058290 <submitClippedTri+0x1f4>
d005828a:	eb07 030e 	add.w	r3, r7, lr
d005828e:	871c      	strh	r4, [r3, #56]	; 0x38
d0058290:	45b4      	cmp	ip, r6
d0058292:	dc31      	bgt.n	d00582f8 <submitClippedTri+0x25c>
d0058294:	eb07 030e 	add.w	r3, r7, lr
d0058298:	875e      	strh	r6, [r3, #58]	; 0x3a
d005829a:	45a0      	cmp	r8, r4
d005829c:	da02      	bge.n	d00582a4 <submitClippedTri+0x208>
d005829e:	eb07 030e 	add.w	r3, r7, lr
d00582a2:	875c      	strh	r4, [r3, #58]	; 0x3a
d00582a4:	eb07 030e 	add.w	r3, r7, lr
d00582a8:	f9b3 2038 	ldrsh.w	r2, [r3, #56]	; 0x38
d00582ac:	2a00      	cmp	r2, #0
d00582ae:	da01      	bge.n	d00582b4 <submitClippedTri+0x218>
d00582b0:	2200      	movs	r2, #0
d00582b2:	871a      	strh	r2, [r3, #56]	; 0x38
d00582b4:	eb07 030e 	add.w	r3, r7, lr
d00582b8:	f9b3 203a 	ldrsh.w	r2, [r3, #58]	; 0x3a
d00582bc:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d00582c0:	db02      	blt.n	d00582c8 <submitClippedTri+0x22c>
d00582c2:	f240 123f 	movw	r2, #319	; 0x13f
d00582c6:	875a      	strh	r2, [r3, #58]	; 0x3a
d00582c8:	eb07 010e 	add.w	r1, r7, lr
d00582cc:	4477      	add	r7, lr
d00582ce:	f9b1 3038 	ldrsh.w	r3, [r1, #56]	; 0x38
d00582d2:	2b00      	cmp	r3, #0
d00582d4:	bfb8      	it	lt
d00582d6:	331f      	addlt	r3, #31
d00582d8:	115a      	asrs	r2, r3, #5
d00582da:	f9b7 303a 	ldrsh.w	r3, [r7, #58]	; 0x3a
d00582de:	2b00      	cmp	r3, #0
d00582e0:	f881 203c 	strb.w	r2, [r1, #60]	; 0x3c
d00582e4:	bfb8      	it	lt
d00582e6:	331f      	addlt	r3, #31
d00582e8:	115b      	asrs	r3, r3, #5
d00582ea:	f887 303d 	strb.w	r3, [r7, #61]	; 0x3d
d00582ee:	b00d      	add	sp, #52	; 0x34
d00582f0:	ecbd 8b02 	vpop	{d8}
d00582f4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00582f8:	fa0f fc8c 	sxth.w	ip, ip
d00582fc:	eb07 030e 	add.w	r3, r7, lr
d0058300:	46e0      	mov	r8, ip
d0058302:	f8a3 c03a 	strh.w	ip, [r3, #58]	; 0x3a
d0058306:	e7c8      	b.n	d005829a <submitClippedTri+0x1fe>
d0058308:	fa0f f28c 	sxth.w	r2, ip
d005830c:	4613      	mov	r3, r2
d005830e:	872a      	strh	r2, [r5, #56]	; 0x38
d0058310:	e7b9      	b.n	d0058286 <submitClippedTri+0x1ea>
d0058312:	bf00      	nop
d0058314:	d009f160 	.word	0xd009f160
d0058318:	00000000 	.word	0x00000000
d005831c:	477fff00 	.word	0x477fff00
d0058320:	d009f14c 	.word	0xd009f14c

d0058324 <getRenderTriCount>:
d0058324:	4b01      	ldr	r3, [pc, #4]	; (d005832c <getRenderTriCount+0x8>)
d0058326:	6818      	ldr	r0, [r3, #0]
d0058328:	4770      	bx	lr
d005832a:	bf00      	nop
d005832c:	d009f14c 	.word	0xd009f14c

d0058330 <drawFakeHorizonDots>:
d0058330:	2800      	cmp	r0, #0
d0058332:	f000 8107 	beq.w	d0058544 <drawFakeHorizonDots+0x214>
d0058336:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d005833a:	4699      	mov	r9, r3
d005833c:	ed2d 8b10 	vpush	{d8-d15}
d0058340:	b085      	sub	sp, #20
d0058342:	2b00      	cmp	r3, #0
d0058344:	f000 80f9 	beq.w	d005853a <drawFakeHorizonDots+0x20a>
d0058348:	4617      	mov	r7, r2
d005834a:	ed90 9a02 	vldr	s18, [r0, #8]
d005834e:	edd0 8a00 	vldr	s17, [r0]
d0058352:	4606      	mov	r6, r0
d0058354:	2f02      	cmp	r7, #2
d0058356:	ed90 6a01 	vldr	s12, [r0, #4]
d005835a:	ed90 da07 	vldr	s26, [r0, #28]
d005835e:	460a      	mov	r2, r1
d0058360:	bfb8      	it	lt
d0058362:	2702      	movlt	r7, #2
d0058364:	edd0 ca0a 	vldr	s25, [r0, #40]	; 0x28
d0058368:	edd0 6a0d 	vldr	s13, [r0, #52]	; 0x34
d005836c:	ee30 ba46 	vsub.f32	s22, s0, s12
d0058370:	ee07 7a90 	vmov	s15, r7
d0058374:	ed90 fa06 	vldr	s30, [r0, #24]
d0058378:	edd0 ea08 	vldr	s29, [r0, #32]
d005837c:	f06f 0311 	mvn.w	r3, #17
d0058380:	eeb8 8ae7 	vcvt.f32.s32	s16, s15
d0058384:	ed90 ea09 	vldr	s28, [r0, #36]	; 0x24
d0058388:	edd0 da0b 	vldr	s27, [r0, #44]	; 0x2c
d005838c:	ee2b da0d 	vmul.f32	s26, s22, s26
d0058390:	ed90 ca0c 	vldr	s24, [r0, #48]	; 0x30
d0058394:	ee6b ca2c 	vmul.f32	s25, s22, s25
d0058398:	ee89 7a08 	vdiv.f32	s14, s18, s16
d005839c:	edd0 ba0e 	vldr	s23, [r0, #56]	; 0x38
d00583a0:	eddf 5a69 	vldr	s11, [pc, #420]	; d0058548 <drawFakeHorizonDots+0x218>
d00583a4:	4d69      	ldr	r5, [pc, #420]	; (d005854c <drawFakeHorizonDots+0x21c>)
d00583a6:	4c6a      	ldr	r4, [pc, #424]	; (d0058550 <drawFakeHorizonDots+0x220>)
d00583a8:	eddf 9a6a 	vldr	s19, [pc, #424]	; d0058554 <drawFakeHorizonDots+0x224>
d00583ac:	eec8 7a88 	vdiv.f32	s15, s17, s16
d00583b0:	9302      	str	r3, [sp, #8]
d00583b2:	f8df b1a8 	ldr.w	fp, [pc, #424]	; d005855c <drawFakeHorizonDots+0x22c>
d00583b6:	4623      	mov	r3, r4
d00583b8:	ee28 8a25 	vmul.f32	s16, s16, s11
d00583bc:	ee2b ba26 	vmul.f32	s22, s22, s13
d00583c0:	ee68 9a29 	vmul.f32	s19, s16, s19
d00583c4:	febb 7a47 	vrintm.f32	s14, s14
d00583c8:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d00583cc:	ee17 0a10 	vmov	r0, s14
d00583d0:	fefb 7a67 	vrintm.f32	s15, s15
d00583d4:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00583d8:	3812      	subs	r0, #18
d00583da:	ee17 1a90 	vmov	r1, s15
d00583de:	fb05 f500 	mul.w	r5, r5, r0
d00583e2:	fb00 f007 	mul.w	r0, r0, r7
d00583e6:	fb04 5a01 	mla	sl, r4, r1, r5
d00583ea:	3912      	subs	r1, #18
d00583ec:	9001      	str	r0, [sp, #4]
d00583ee:	fb07 f101 	mul.w	r1, r7, r1
d00583f2:	9103      	str	r1, [sp, #12]
d00583f4:	eddd 7a01 	vldr	s15, [sp, #4]
d00583f8:	ee39 aa08 	vadd.f32	s20, s18, s16
d00583fc:	9902      	ldr	r1, [sp, #8]
d00583fe:	ee78 aa88 	vadd.f32	s21, s17, s16
d0058402:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0058406:	9d03      	ldr	r5, [sp, #12]
d0058408:	fb01 f801 	mul.w	r8, r1, r1
d005840c:	f06f 0411 	mvn.w	r4, #17
d0058410:	ee37 aaca 	vsub.f32	s20, s15, s20
d0058414:	e078      	b.n	d0058508 <drawFakeHorizonDots+0x1d8>
d0058416:	f5c0 70a2 	rsb	r0, r0, #324	; 0x144
d005841a:	fb09 f000 	mul.w	r0, r9, r0
d005841e:	2850      	cmp	r0, #80	; 0x50
d0058420:	dd6e      	ble.n	d0058500 <drawFakeHorizonDots+0x1d0>
d0058422:	494d      	ldr	r1, [pc, #308]	; (d0058558 <drawFakeHorizonDots+0x228>)
d0058424:	fba1 1000 	umull	r1, r0, r1, r0
d0058428:	f3c0 1087 	ubfx	r0, r0, #6, #8
d005842c:	fb03 a104 	mla	r1, r3, r4, sl
d0058430:	ea81 3151 	eor.w	r1, r1, r1, lsr #13
d0058434:	fb0b f101 	mul.w	r1, fp, r1
d0058438:	ea81 4111 	eor.w	r1, r1, r1, lsr #16
d005843c:	fa5f fc81 	uxtb.w	ip, r1
d0058440:	4584      	cmp	ip, r0
d0058442:	d85d      	bhi.n	d0058500 <drawFakeHorizonDots+0x1d0>
d0058444:	ee07 5a10 	vmov	s14, r5
d0058448:	f3c1 4007 	ubfx	r0, r1, #16, #8
d005844c:	f3c1 2107 	ubfx	r1, r1, #8, #8
d0058450:	eef0 4a4a 	vmov.f32	s9, s20
d0058454:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d0058458:	ee06 0a90 	vmov	s13, r0
d005845c:	ee07 1a90 	vmov	s15, r1
d0058460:	ed96 6a10 	vldr	s12, [r6, #64]	; 0x40
d0058464:	eef8 6ae6 	vcvt.f32.s32	s13, s13
d0058468:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d005846c:	ee37 7a6a 	vsub.f32	s14, s14, s21
d0058470:	eee6 4aa9 	vfma.f32	s9, s13, s19
d0058474:	eea7 7aa9 	vfma.f32	s14, s15, s19
d0058478:	eef0 7a47 	vmov.f32	s15, s14
d005847c:	ee2b 7aa4 	vmul.f32	s14, s23, s9
d0058480:	eeac 7a27 	vfma.f32	s14, s24, s15
d0058484:	ee3b 7a07 	vadd.f32	s14, s22, s14
d0058488:	eeb4 6ac7 	vcmpe.f32	s12, s14
d005848c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058490:	da36      	bge.n	d0058500 <drawFakeHorizonDots+0x1d0>
d0058492:	eef7 3a00 	vmov.f32	s7, #112	; 0x3f800000  1.0
d0058496:	edd6 6a13 	vldr	s13, [r6, #76]	; 0x4c
d005849a:	ee2f 6a27 	vmul.f32	s12, s30, s15
d005849e:	ed96 5a12 	vldr	s10, [r6, #72]	; 0x48
d00584a2:	ee6e 7a27 	vmul.f32	s15, s28, s15
d00584a6:	edd6 5a14 	vldr	s11, [r6, #80]	; 0x50
d00584aa:	ee83 4a87 	vdiv.f32	s8, s7, s14
d00584ae:	eeae 6aa4 	vfma.f32	s12, s29, s9
d00584b2:	eeed 7aa4 	vfma.f32	s15, s27, s9
d00584b6:	eef6 4a00 	vmov.f32	s9, #96	; 0x3f000000  0.5
d00584ba:	ee36 7aa4 	vadd.f32	s14, s13, s9
d00584be:	ee7d 6a06 	vadd.f32	s13, s26, s12
d00584c2:	ee7c 7aa7 	vadd.f32	s15, s25, s15
d00584c6:	ee35 6aa4 	vadd.f32	s12, s11, s9
d00584ca:	ee66 6a85 	vmul.f32	s13, s13, s10
d00584ce:	ee65 7a67 	vnmul.f32	s15, s10, s15
d00584d2:	eea6 7a84 	vfma.f32	s14, s13, s8
d00584d6:	eea7 6a84 	vfma.f32	s12, s15, s8
d00584da:	eebd 7ac7 	vcvt.s32.f32	s14, s14
d00584de:	eefd 7ac6 	vcvt.s32.f32	s15, s12
d00584e2:	ee17 0a10 	vmov	r0, s14
d00584e6:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d00584ea:	d209      	bcs.n	d0058500 <drawFakeHorizonDots+0x1d0>
d00584ec:	ee17 1a90 	vmov	r1, s15
d00584f0:	f5b1 7fa0 	cmp.w	r1, #320	; 0x140
d00584f4:	d204      	bcs.n	d0058500 <drawFakeHorizonDots+0x1d0>
d00584f6:	9200      	str	r2, [sp, #0]
d00584f8:	f7fa faf8 	bl	d0052aec <putPixel>
d00584fc:	4b14      	ldr	r3, [pc, #80]	; (d0058550 <drawFakeHorizonDots+0x220>)
d00584fe:	9a00      	ldr	r2, [sp, #0]
d0058500:	3401      	adds	r4, #1
d0058502:	443d      	add	r5, r7
d0058504:	2c13      	cmp	r4, #19
d0058506:	d009      	beq.n	d005851c <drawFakeHorizonDots+0x1ec>
d0058508:	fb04 8004 	mla	r0, r4, r4, r8
d005850c:	f5b0 7fa2 	cmp.w	r0, #324	; 0x144
d0058510:	dcf6      	bgt.n	d0058500 <drawFakeHorizonDots+0x1d0>
d0058512:	28f3      	cmp	r0, #243	; 0xf3
d0058514:	f73f af7f 	bgt.w	d0058416 <drawFakeHorizonDots+0xe6>
d0058518:	4648      	mov	r0, r9
d005851a:	e787      	b.n	d005842c <drawFakeHorizonDots+0xfc>
d005851c:	9902      	ldr	r1, [sp, #8]
d005851e:	f10a 5a1f 	add.w	sl, sl, #666894336	; 0x27c00000
d0058522:	9801      	ldr	r0, [sp, #4]
d0058524:	3101      	adds	r1, #1
d0058526:	f50a 1aa7 	add.w	sl, sl, #1368064	; 0x14e000
d005852a:	4438      	add	r0, r7
d005852c:	2913      	cmp	r1, #19
d005852e:	f60a 3a2f 	addw	sl, sl, #2863	; 0xb2f
d0058532:	9102      	str	r1, [sp, #8]
d0058534:	9001      	str	r0, [sp, #4]
d0058536:	f47f af5d 	bne.w	d00583f4 <drawFakeHorizonDots+0xc4>
d005853a:	b005      	add	sp, #20
d005853c:	ecbd 8b10 	vpop	{d8-d15}
d0058540:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0058544:	4770      	bx	lr
d0058546:	bf00      	nop
d0058548:	3eb33333 	.word	0x3eb33333
d005854c:	27d4eb2f 	.word	0x27d4eb2f
d0058550:	165667b1 	.word	0x165667b1
d0058554:	3c008081 	.word	0x3c008081
d0058558:	ca4587e7 	.word	0xca4587e7
d005855c:	4bf19f61 	.word	0x4bf19f61

d0058560 <drawFakeSkyDots>:
d0058560:	2a10      	cmp	r2, #16
d0058562:	ed9f 6a73 	vldr	s12, [pc, #460]	; d0058730 <drawFakeSkyDots+0x1d0>
d0058566:	ed9f 7a73 	vldr	s14, [pc, #460]	; d0058734 <drawFakeSkyDots+0x1d4>
d005856a:	bfb8      	it	lt
d005856c:	2210      	movlt	r2, #16
d005856e:	2b08      	cmp	r3, #8
d0058570:	ee07 2a90 	vmov	s15, r2
d0058574:	bfb8      	it	lt
d0058576:	2308      	movlt	r3, #8
d0058578:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d005857c:	ee07 3a90 	vmov	s15, r3
d0058580:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d0058584:	ed2d 8b10 	vpush	{d8-d15}
d0058588:	eec6 da26 	vdiv.f32	s27, s12, s13
d005858c:	b085      	sub	sp, #20
d005858e:	4617      	mov	r7, r2
d0058590:	4682      	mov	sl, r0
d0058592:	9303      	str	r3, [sp, #12]
d0058594:	468b      	mov	fp, r1
d0058596:	2300      	movs	r3, #0
d0058598:	edd0 ea06 	vldr	s29, [r0, #24]
d005859c:	ed90 ea07 	vldr	s28, [r0, #28]
d00585a0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d00585a4:	ed90 da08 	vldr	s26, [r0, #32]
d00585a8:	edd0 ca09 	vldr	s25, [r0, #36]	; 0x24
d00585ac:	ed90 ca0a 	vldr	s24, [r0, #40]	; 0x28
d00585b0:	eec7 aa27 	vdiv.f32	s21, s14, s15
d00585b4:	edd0 7a0d 	vldr	s15, [r0, #52]	; 0x34
d00585b8:	edd0 ba0b 	vldr	s23, [r0, #44]	; 0x2c
d00585bc:	edcd 7a00 	vstr	s15, [sp]
d00585c0:	ed90 ba0c 	vldr	s22, [r0, #48]	; 0x30
d00585c4:	edd0 7a0e 	vldr	s15, [r0, #56]	; 0x38
d00585c8:	f89d 9078 	ldrb.w	r9, [sp, #120]	; 0x78
d00585cc:	f8df 8178 	ldr.w	r8, [pc, #376]	; d0058748 <drawFakeSkyDots+0x1e8>
d00585d0:	ed9f fa59 	vldr	s30, [pc, #356]	; d0058738 <drawFakeSkyDots+0x1d8>
d00585d4:	9302      	str	r3, [sp, #8]
d00585d6:	edcd 7a01 	vstr	s15, [sp, #4]
d00585da:	eddd 7a02 	vldr	s15, [sp, #8]
d00585de:	eef6 8a00 	vmov.f32	s17, #96	; 0x3f000000  0.5
d00585e2:	4b56      	ldr	r3, [pc, #344]	; (d005873c <drawFakeSkyDots+0x1dc>)
d00585e4:	2400      	movs	r4, #0
d00585e6:	ee17 2a90 	vmov	r2, s15
d00585ea:	eeb8 8ae7 	vcvt.f32.s32	s16, s15
d00585ee:	4e54      	ldr	r6, [pc, #336]	; (d0058740 <drawFakeSkyDots+0x1e0>)
d00585f0:	fb03 f502 	mul.w	r5, r3, r2
d00585f4:	ea85 3355 	eor.w	r3, r5, r5, lsr #13
d00585f8:	ee07 4a90 	vmov	s15, r4
d00585fc:	eef0 fa48 	vmov.f32	s31, s16
d0058600:	3401      	adds	r4, #1
d0058602:	fb08 f303 	mul.w	r3, r8, r3
d0058606:	eef8 6ae7 	vcvt.f32.s32	s13, s15
d005860a:	4435      	add	r5, r6
d005860c:	ea83 4313 	eor.w	r3, r3, r3, lsr #16
d0058610:	f3c3 4207 	ubfx	r2, r3, #16, #8
d0058614:	ee07 2a90 	vmov	s15, r2
d0058618:	f3c3 2207 	ubfx	r2, r3, #8, #8
d005861c:	b2db      	uxtb	r3, r3
d005861e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0058622:	ee07 2a10 	vmov	s14, r2
d0058626:	454b      	cmp	r3, r9
d0058628:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
d005862c:	eee7 fa8f 	vfma.f32	s31, s15, s30
d0058630:	d86f      	bhi.n	d0058712 <drawFakeSkyDots+0x1b2>
d0058632:	eee7 6a0f 	vfma.f32	s13, s14, s30
d0058636:	ee6f faaa 	vmul.f32	s31, s31, s21
d005863a:	eeb0 0a6f 	vmov.f32	s0, s31
d005863e:	ee26 aaad 	vmul.f32	s20, s13, s27
d0058642:	f003 f939 	bl	d005b8b8 <sinf>
d0058646:	eeb0 9a40 	vmov.f32	s18, s0
d005864a:	eeb0 0a6f 	vmov.f32	s0, s31
d005864e:	f002 ff4f 	bl	d005b4f0 <cosf>
d0058652:	eef0 fa40 	vmov.f32	s31, s0
d0058656:	eeb0 0a4a 	vmov.f32	s0, s20
d005865a:	f003 f92d 	bl	d005b8b8 <sinf>
d005865e:	eef0 9a40 	vmov.f32	s19, s0
d0058662:	eeb0 0a4a 	vmov.f32	s0, s20
d0058666:	f002 ff43 	bl	d005b4f0 <cosf>
d005866a:	eddd 6a01 	vldr	s13, [sp, #4]
d005866e:	ee2f 7aa9 	vmul.f32	s14, s31, s19
d0058672:	ee6f 7a80 	vmul.f32	s15, s31, s0
d0058676:	ee26 6a87 	vmul.f32	s12, s13, s14
d005867a:	ee6c 4aa7 	vmul.f32	s9, s25, s15
d005867e:	ee6e 6aa7 	vmul.f32	s13, s29, s15
d0058682:	eeab 6a27 	vfma.f32	s12, s22, s15
d0058686:	eef0 7a66 	vmov.f32	s15, s13
d005868a:	eef0 6a64 	vmov.f32	s13, s9
d005868e:	eeed 7a07 	vfma.f32	s15, s26, s14
d0058692:	eeeb 6a87 	vfma.f32	s13, s23, s14
d0058696:	eeb0 7a46 	vmov.f32	s14, s12
d005869a:	ed9d 6a00 	vldr	s12, [sp]
d005869e:	eea6 7a09 	vfma.f32	s14, s12, s18
d00586a2:	ed9f 6a28 	vldr	s12, [pc, #160]	; d0058744 <drawFakeSkyDots+0x1e4>
d00586a6:	eeee 7a09 	vfma.f32	s15, s28, s18
d00586aa:	eeec 6a09 	vfma.f32	s13, s24, s18
d00586ae:	eeb4 7ac6 	vcmpe.f32	s14, s12
d00586b2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00586b6:	d92c      	bls.n	d0058712 <drawFakeSkyDots+0x1b2>
d00586b8:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d00586bc:	ed9a 5a12 	vldr	s10, [sl, #72]	; 0x48
d00586c0:	ee65 7a27 	vmul.f32	s15, s10, s15
d00586c4:	eec6 4a07 	vdiv.f32	s9, s12, s14
d00586c8:	ed9a 7a13 	vldr	s14, [sl, #76]	; 0x4c
d00586cc:	ed9a 6a14 	vldr	s12, [sl, #80]	; 0x50
d00586d0:	ee37 7a28 	vadd.f32	s14, s14, s17
d00586d4:	ee36 6a28 	vadd.f32	s12, s12, s17
d00586d8:	ee65 6a26 	vmul.f32	s13, s10, s13
d00586dc:	eea7 7aa4 	vfma.f32	s14, s15, s9
d00586e0:	eef0 7a47 	vmov.f32	s15, s14
d00586e4:	eeb0 7a46 	vmov.f32	s14, s12
d00586e8:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00586ec:	eea4 7ae6 	vfms.f32	s14, s9, s13
d00586f0:	ee17 0a90 	vmov	r0, s15
d00586f4:	f5b0 7ff0 	cmp.w	r0, #480	; 0x1e0
d00586f8:	eefd 7ac7 	vcvt.s32.f32	s15, s14
d00586fc:	d209      	bcs.n	d0058712 <drawFakeSkyDots+0x1b2>
d00586fe:	ee17 3a90 	vmov	r3, s15
d0058702:	465a      	mov	r2, fp
d0058704:	ee17 1a90 	vmov	r1, s15
d0058708:	f5b3 7fa0 	cmp.w	r3, #320	; 0x140
d005870c:	d201      	bcs.n	d0058712 <drawFakeSkyDots+0x1b2>
d005870e:	f7fa f9ed 	bl	d0052aec <putPixel>
d0058712:	42a7      	cmp	r7, r4
d0058714:	f47f af6e 	bne.w	d00585f4 <drawFakeSkyDots+0x94>
d0058718:	9b02      	ldr	r3, [sp, #8]
d005871a:	9a03      	ldr	r2, [sp, #12]
d005871c:	3301      	adds	r3, #1
d005871e:	429a      	cmp	r2, r3
d0058720:	9302      	str	r3, [sp, #8]
d0058722:	f47f af5a 	bne.w	d00585da <drawFakeSkyDots+0x7a>
d0058726:	b005      	add	sp, #20
d0058728:	ecbd 8b10 	vpop	{d8-d15}
d005872c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0058730:	40c90fdb 	.word	0x40c90fdb
d0058734:	3fc90fdb 	.word	0x3fc90fdb
d0058738:	3b808081 	.word	0x3b808081
d005873c:	27d4eb2f 	.word	0x27d4eb2f
d0058740:	165667b1 	.word	0x165667b1
d0058744:	3a83126f 	.word	0x3a83126f
d0058748:	4bf19f61 	.word	0x4bf19f61

d005874c <drawFakeHorizon>:
d005874c:	2800      	cmp	r0, #0
d005874e:	f000 813e 	beq.w	d00589ce <drawFakeHorizon+0x282>
d0058752:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d0058756:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d005875a:	ed2d 8b0e 	vpush	{d8-d14}
d005875e:	ed90 da12 	vldr	s26, [r0, #72]	; 0x48
d0058762:	b083      	sub	sp, #12
d0058764:	edd0 ba14 	vldr	s23, [r0, #80]	; 0x50
d0058768:	460f      	mov	r7, r1
d005876a:	eec7 8a8d 	vdiv.f32	s17, s15, s26
d005876e:	eddf 7a9c 	vldr	s15, [pc, #624]	; d00589e0 <drawFakeHorizon+0x294>
d0058772:	edd0 da0a 	vldr	s27, [r0, #40]	; 0x28
d0058776:	4690      	mov	r8, r2
d0058778:	ed90 ca0d 	vldr	s24, [r0, #52]	; 0x34
d005877c:	4699      	mov	r9, r3
d005877e:	ed90 ea07 	vldr	s28, [r0, #28]
d0058782:	2400      	movs	r4, #0
d0058784:	ed90 9a01 	vldr	s18, [r0, #4]
d0058788:	ee7b 7ae7 	vsub.f32	s15, s23, s15
d005878c:	edd0 9a13 	vldr	s19, [r0, #76]	; 0x4c
d0058790:	ee2b 7aad 	vmul.f32	s14, s23, s27
d0058794:	4e93      	ldr	r6, [pc, #588]	; (d00589e4 <drawFakeHorizon+0x298>)
d0058796:	eef0 aa4c 	vmov.f32	s21, s24
d005879a:	ed9f 8a93 	vldr	s16, [pc, #588]	; d00589e8 <drawFakeHorizon+0x29c>
d005879e:	eeb0 aa4c 	vmov.f32	s20, s24
d00587a2:	eecd ca2d 	vdiv.f32	s25, s26, s27
d00587a6:	eeb0 baed 	vabs.f32	s22, s27
d00587aa:	ee30 9a49 	vsub.f32	s18, s0, s18
d00587ae:	ee67 7aa8 	vmul.f32	s15, s15, s17
d00587b2:	eee7 aa28 	vfma.f32	s21, s14, s17
d00587b6:	ee6e 8a28 	vmul.f32	s17, s28, s17
d00587ba:	eea7 aaad 	vfma.f32	s20, s15, s27
d00587be:	e056      	b.n	d005886e <drawFakeHorizon+0x122>
d00587c0:	ee89 6a26 	vdiv.f32	s12, s18, s13
d00587c4:	eef0 6ac7 	vabs.f32	s13, s14
d00587c8:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d00587cc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00587d0:	eef4 6ac8 	vcmpe.f32	s13, s16
d00587d4:	bfcc      	ite	gt
d00587d6:	2201      	movgt	r2, #1
d00587d8:	2200      	movle	r2, #0
d00587da:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00587de:	da61      	bge.n	d00588a4 <drawFakeHorizon+0x158>
d00587e0:	eeb5 6ac0 	vcmpe.f32	s12, #0.0
d00587e4:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d00587e8:	6833      	ldr	r3, [r6, #0]
d00587ea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00587ee:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d00587f2:	f240 80a8 	bls.w	d0058946 <drawFakeHorizon+0x1fa>
d00587f6:	eeb4 bac8 	vcmpe.f32	s22, s16
d00587fa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00587fe:	f100 809a 	bmi.w	d0058936 <drawFakeHorizon+0x1ea>
d0058802:	ee7c 7a27 	vadd.f32	s15, s24, s15
d0058806:	eeb0 7a6b 	vmov.f32	s14, s23
d005880a:	eeac 7aa7 	vfma.f32	s14, s25, s15
d005880e:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d0058812:	ee17 ba90 	vmov	fp, s15
d0058816:	f1bb 0f00 	cmp.w	fp, #0
d005881a:	f2c0 80aa 	blt.w	d0058972 <drawFakeHorizon+0x226>
d005881e:	2201      	movs	r2, #1
d0058820:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d0058824:	46da      	mov	sl, fp
d0058826:	bfa8      	it	ge
d0058828:	f44f 7aa0 	movge.w	sl, #320	; 0x140
d005882c:	2a00      	cmp	r2, #0
d005882e:	f000 8091 	beq.w	d0058954 <drawFakeHorizon+0x208>
d0058832:	f1bb 0f00 	cmp.w	fp, #0
d0058836:	d009      	beq.n	d005884c <drawFakeHorizon+0x100>
d0058838:	f1ba 0f00 	cmp.w	sl, #0
d005883c:	4628      	mov	r0, r5
d005883e:	4641      	mov	r1, r8
d0058840:	bfcc      	ite	gt
d0058842:	4652      	movgt	r2, sl
d0058844:	2201      	movle	r2, #1
d0058846:	4415      	add	r5, r2
d0058848:	f001 fd1c 	bl	d005a284 <memset>
d005884c:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d0058850:	d009      	beq.n	d0058866 <drawFakeHorizon+0x11a>
d0058852:	f5ba 7fa0 	cmp.w	sl, #320	; 0x140
d0058856:	f5ca 72a0 	rsb	r2, sl, #320	; 0x140
d005885a:	4628      	mov	r0, r5
d005885c:	4639      	mov	r1, r7
d005885e:	bfa8      	it	ge
d0058860:	2201      	movge	r2, #1
d0058862:	f001 fd0f 	bl	d005a284 <memset>
d0058866:	3401      	adds	r4, #1
d0058868:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d005886c:	d04e      	beq.n	d005890c <drawFakeHorizon+0x1c0>
d005886e:	ee07 4a90 	vmov	s15, r4
d0058872:	eef8 7ae7 	vcvt.f32.s32	s15, s15
d0058876:	ee77 7ae9 	vsub.f32	s15, s15, s19
d005887a:	ee67 7aa8 	vmul.f32	s15, s15, s17
d005887e:	ee7a 6aa7 	vadd.f32	s13, s21, s15
d0058882:	ee3a 7a27 	vadd.f32	s14, s20, s15
d0058886:	eeb0 6ae6 	vabs.f32	s12, s13
d005888a:	eeb4 6ac8 	vcmpe.f32	s12, s16
d005888e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058892:	da95      	bge.n	d00587c0 <drawFakeHorizon+0x74>
d0058894:	eef0 6ac7 	vabs.f32	s13, s14
d0058898:	eef4 6ac8 	vcmpe.f32	s13, s16
d005889c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00588a0:	db4c      	blt.n	d005893c <drawFakeHorizon+0x1f0>
d00588a2:	2200      	movs	r2, #0
d00588a4:	eec9 6a07 	vdiv.f32	s13, s18, s14
d00588a8:	6833      	ldr	r3, [r6, #0]
d00588aa:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d00588ae:	eb03 1585 	add.w	r5, r3, r5, lsl #6
d00588b2:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00588b6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00588ba:	bfcc      	ite	gt
d00588bc:	2301      	movgt	r3, #1
d00588be:	2300      	movle	r3, #0
d00588c0:	4293      	cmp	r3, r2
d00588c2:	f000 8085 	beq.w	d00589d0 <drawFakeHorizon+0x284>
d00588c6:	eeb4 bac8 	vcmpe.f32	s22, s16
d00588ca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00588ce:	d429      	bmi.n	d0058924 <drawFakeHorizon+0x1d8>
d00588d0:	ee7c 7a27 	vadd.f32	s15, s24, s15
d00588d4:	eeb0 7a6b 	vmov.f32	s14, s23
d00588d8:	eeac 7aa7 	vfma.f32	s14, s25, s15
d00588dc:	fefc 7ac7 	vcvta.s32.f32	s15, s14
d00588e0:	ee17 ba90 	vmov	fp, s15
d00588e4:	f1bb 0f00 	cmp.w	fp, #0
d00588e8:	da9a      	bge.n	d0058820 <drawFakeHorizon+0xd4>
d00588ea:	2a00      	cmp	r2, #0
d00588ec:	d141      	bne.n	d0058972 <drawFakeHorizon+0x226>
d00588ee:	f5b2 7fa0 	cmp.w	r2, #320	; 0x140
d00588f2:	f104 0401 	add.w	r4, r4, #1
d00588f6:	f5c2 72a0 	rsb	r2, r2, #320	; 0x140
d00588fa:	4628      	mov	r0, r5
d00588fc:	bfa8      	it	ge
d00588fe:	2201      	movge	r2, #1
d0058900:	4641      	mov	r1, r8
d0058902:	f001 fcbf 	bl	d005a284 <memset>
d0058906:	f5b4 7ff0 	cmp.w	r4, #480	; 0x1e0
d005890a:	d1b0      	bne.n	d005886e <drawFakeHorizon+0x122>
d005890c:	eddf 7a36 	vldr	s15, [pc, #216]	; d00589e8 <drawFakeHorizon+0x29c>
d0058910:	eeb4 bae7 	vcmpe.f32	s22, s15
d0058914:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058918:	da31      	bge.n	d005897e <drawFakeHorizon+0x232>
d005891a:	b003      	add	sp, #12
d005891c:	ecbd 8b0e 	vpop	{d8-d14}
d0058920:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0058924:	b93a      	cbnz	r2, d0058936 <drawFakeHorizon+0x1ea>
d0058926:	22a0      	movs	r2, #160	; 0xa0
d0058928:	4628      	mov	r0, r5
d005892a:	4639      	mov	r1, r7
d005892c:	4415      	add	r5, r2
d005892e:	f001 fca9 	bl	d005a284 <memset>
d0058932:	22a0      	movs	r2, #160	; 0xa0
d0058934:	e7db      	b.n	d00588ee <drawFakeHorizon+0x1a2>
d0058936:	f04f 0aa0 	mov.w	sl, #160	; 0xa0
d005893a:	e77d      	b.n	d0058838 <drawFakeHorizon+0xec>
d005893c:	eb04 0584 	add.w	r5, r4, r4, lsl #2
d0058940:	6832      	ldr	r2, [r6, #0]
d0058942:	eb02 1585 	add.w	r5, r2, r5, lsl #6
d0058946:	4639      	mov	r1, r7
d0058948:	4628      	mov	r0, r5
d005894a:	f44f 72a0 	mov.w	r2, #320	; 0x140
d005894e:	f001 fc99 	bl	d005a284 <memset>
d0058952:	e788      	b.n	d0058866 <drawFakeHorizon+0x11a>
d0058954:	f1bb 0f00 	cmp.w	fp, #0
d0058958:	d00e      	beq.n	d0058978 <drawFakeHorizon+0x22c>
d005895a:	4628      	mov	r0, r5
d005895c:	4652      	mov	r2, sl
d005895e:	4639      	mov	r1, r7
d0058960:	4455      	add	r5, sl
d0058962:	f001 fc8f 	bl	d005a284 <memset>
d0058966:	f5bb 7fa0 	cmp.w	fp, #320	; 0x140
d005896a:	f6bf af7c 	bge.w	d0058866 <drawFakeHorizon+0x11a>
d005896e:	4652      	mov	r2, sl
d0058970:	e7bd      	b.n	d00588ee <drawFakeHorizon+0x1a2>
d0058972:	f04f 0a00 	mov.w	sl, #0
d0058976:	e76c      	b.n	d0058852 <drawFakeHorizon+0x106>
d0058978:	46da      	mov	sl, fp
d005897a:	4652      	mov	r2, sl
d005897c:	e7b7      	b.n	d00588ee <drawFakeHorizon+0x1a2>
d005897e:	ee2d ca0c 	vmul.f32	s24, s26, s24
d0058982:	eddf 7a1a 	vldr	s15, [pc, #104]	; d00589ec <drawFakeHorizon+0x2a0>
d0058986:	f240 12df 	movw	r2, #479	; 0x1df
d005898a:	2000      	movs	r0, #0
d005898c:	ee77 7ae9 	vsub.f32	s15, s15, s19
d0058990:	f8cd 9000 	str.w	r9, [sp]
d0058994:	eef0 6a4c 	vmov.f32	s13, s24
d0058998:	eea7 ca8e 	vfma.f32	s24, s15, s28
d005899c:	eee9 6ace 	vfms.f32	s13, s19, s28
d00589a0:	eecc 7a2d 	vdiv.f32	s15, s24, s27
d00589a4:	ee86 7aad 	vdiv.f32	s14, s13, s27
d00589a8:	ee37 7a2b 	vadd.f32	s14, s14, s23
d00589ac:	ee77 baab 	vadd.f32	s23, s15, s23
d00589b0:	febc 7ac7 	vcvta.s32.f32	s14, s14
d00589b4:	fefc 7aeb 	vcvta.s32.f32	s15, s23
d00589b8:	ee17 1a10 	vmov	r1, s14
d00589bc:	ee17 3a90 	vmov	r3, s15
d00589c0:	f7fa f8a4 	bl	d0052b0c <drawLine>
d00589c4:	b003      	add	sp, #12
d00589c6:	ecbd 8b0e 	vpop	{d8-d14}
d00589ca:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d00589ce:	4770      	bx	lr
d00589d0:	eef5 6ac0 	vcmpe.f32	s13, #0.0
d00589d4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00589d8:	ddb5      	ble.n	d0058946 <drawFakeHorizon+0x1fa>
d00589da:	4641      	mov	r1, r8
d00589dc:	e7b4      	b.n	d0058948 <drawFakeHorizon+0x1fc>
d00589de:	bf00      	nop
d00589e0:	439f8000 	.word	0x439f8000
d00589e4:	d012b284 	.word	0xd012b284
d00589e8:	38d1b717 	.word	0x38d1b717
d00589ec:	43ef8000 	.word	0x43ef8000

d00589f0 <submitEntitySolid>:
d00589f0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d00589f4:	ed2d 8b10 	vpush	{d8-d15}
d00589f8:	b0bb      	sub	sp, #236	; 0xec
d00589fa:	f10d 038f 	add.w	r3, sp, #143	; 0x8f
d00589fe:	9102      	str	r1, [sp, #8]
d0058a00:	f023 031f 	bic.w	r3, r3, #31
d0058a04:	9303      	str	r3, [sp, #12]
d0058a06:	2800      	cmp	r0, #0
d0058a08:	f000 832e 	beq.w	d0059068 <submitEntitySolid+0x678>
d0058a0c:	f8d0 a00c 	ldr.w	sl, [r0, #12]
d0058a10:	4604      	mov	r4, r0
d0058a12:	f1ba 0f00 	cmp.w	sl, #0
d0058a16:	f000 8327 	beq.w	d0059068 <submitEntitySolid+0x678>
d0058a1a:	f8da 3000 	ldr.w	r3, [sl]
d0058a1e:	2b00      	cmp	r3, #0
d0058a20:	f000 8322 	beq.w	d0059068 <submitEntitySolid+0x678>
d0058a24:	f8da 3010 	ldr.w	r3, [sl, #16]
d0058a28:	2b00      	cmp	r3, #0
d0058a2a:	f000 831d 	beq.w	d0059068 <submitEntitySolid+0x678>
d0058a2e:	f8da 3004 	ldr.w	r3, [sl, #4]
d0058a32:	3b01      	subs	r3, #1
d0058a34:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
d0058a38:	f080 8316 	bcs.w	d0059068 <submitEntitySolid+0x678>
d0058a3c:	f8da 3014 	ldr.w	r3, [sl, #20]
d0058a40:	2b00      	cmp	r3, #0
d0058a42:	f340 8311 	ble.w	d0059068 <submitEntitySolid+0x678>
d0058a46:	460e      	mov	r6, r1
d0058a48:	edd1 fa11 	vldr	s31, [r1, #68]	; 0x44
d0058a4c:	ed91 ba10 	vldr	s22, [r1, #64]	; 0x40
d0058a50:	f7fe fdfa 	bl	d0057648 <lightsGet>
d0058a54:	4605      	mov	r5, r0
d0058a56:	f7fe fdfb 	bl	d0057650 <lightsGetCount>
d0058a5a:	edda 7a09 	vldr	s15, [sl, #36]	; 0x24
d0058a5e:	ed9a 7a0a 	vldr	s14, [sl, #40]	; 0x28
d0058a62:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0058a66:	edcd 7a0b 	vstr	s15, [sp, #44]	; 0x2c
d0058a6a:	edda 7a08 	vldr	s15, [sl, #32]
d0058a6e:	edd4 3a00 	vldr	s7, [r4]
d0058a72:	edcd 7a05 	vstr	s15, [sp, #20]
d0058a76:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058a7a:	edda 7a0c 	vldr	s15, [sl, #48]	; 0x30
d0058a7e:	eeb5 7ac0 	vcmpe.f32	s14, #0.0
d0058a82:	edd4 1a02 	vldr	s3, [r4, #8]
d0058a86:	edcd 7a0a 	vstr	s15, [sp, #40]	; 0x28
d0058a8a:	bfc8      	it	gt
d0058a8c:	2301      	movgt	r3, #1
d0058a8e:	edda 7a0b 	vldr	s15, [sl, #44]	; 0x2c
d0058a92:	bfd8      	it	le
d0058a94:	2300      	movle	r3, #0
d0058a96:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058a9a:	ed8d 7a0c 	vstr	s14, [sp, #48]	; 0x30
d0058a9e:	edcd 7a0d 	vstr	s15, [sp, #52]	; 0x34
d0058aa2:	edd6 7a00 	vldr	s15, [r6]
d0058aa6:	bfc8      	it	gt
d0058aa8:	f043 0301 	orrgt.w	r3, r3, #1
d0058aac:	ed94 fa01 	vldr	s30, [r4, #4]
d0058ab0:	edcd 7a07 	vstr	s15, [sp, #28]
d0058ab4:	edd6 7a01 	vldr	s15, [r6, #4]
d0058ab8:	ed94 aa07 	vldr	s20, [r4, #28]
d0058abc:	edcd 7a08 	vstr	s15, [sp, #32]
d0058ac0:	edd6 7a02 	vldr	s15, [r6, #8]
d0058ac4:	edd4 aa08 	vldr	s21, [r4, #32]
d0058ac8:	edcd 7a09 	vstr	s15, [sp, #36]	; 0x24
d0058acc:	edd4 ea09 	vldr	s29, [r4, #36]	; 0x24
d0058ad0:	edd4 ba0a 	vldr	s23, [r4, #40]	; 0x28
d0058ad4:	ed94 ca0b 	vldr	s24, [r4, #44]	; 0x2c
d0058ad8:	edd4 ca0c 	vldr	s25, [r4, #48]	; 0x30
d0058adc:	ed94 da04 	vldr	s26, [r4, #16]
d0058ae0:	edd4 da05 	vldr	s27, [r4, #20]
d0058ae4:	ed94 ea06 	vldr	s28, [r4, #24]
d0058ae8:	ed96 5a06 	vldr	s10, [r6, #24]
d0058aec:	ed96 3a07 	vldr	s6, [r6, #28]
d0058af0:	edcd 3a01 	vstr	s7, [sp, #4]
d0058af4:	edcd 1a06 	vstr	s3, [sp, #24]
d0058af8:	edd6 6a08 	vldr	s13, [r6, #32]
d0058afc:	edd6 5a09 	vldr	s11, [r6, #36]	; 0x24
d0058b00:	edd6 2a0a 	vldr	s5, [r6, #40]	; 0x28
d0058b04:	ed96 7a0b 	vldr	s14, [r6, #44]	; 0x2c
d0058b08:	ed96 6a0c 	vldr	s12, [r6, #48]	; 0x30
d0058b0c:	ed96 2a0d 	vldr	s4, [r6, #52]	; 0x34
d0058b10:	edd6 7a0e 	vldr	s15, [r6, #56]	; 0x38
d0058b14:	b113      	cbz	r3, d0058b1c <submitEntitySolid+0x12c>
d0058b16:	2800      	cmp	r0, #0
d0058b18:	f300 8453 	bgt.w	d00593c2 <submitEntitySolid+0x9d2>
d0058b1c:	2300      	movs	r3, #0
d0058b1e:	9304      	str	r3, [sp, #16]
d0058b20:	eddd 4a08 	vldr	s9, [sp, #32]
d0058b24:	ee6a 1a83 	vmul.f32	s3, s21, s6
d0058b28:	ed9d 4a07 	vldr	s8, [sp, #28]
d0058b2c:	ee2c 1a03 	vmul.f32	s2, s24, s6
d0058b30:	ee7f 3a64 	vsub.f32	s7, s30, s9
d0058b34:	eddd 4a01 	vldr	s9, [sp, #4]
d0058b38:	ee6a 0aa2 	vmul.f32	s1, s21, s5
d0058b3c:	f8da 0004 	ldr.w	r0, [sl, #4]
d0058b40:	ee74 4ac4 	vsub.f32	s9, s9, s8
d0058b44:	ee23 9a23 	vmul.f32	s18, s6, s7
d0058b48:	2800      	cmp	r0, #0
d0058b4a:	ee62 9aa3 	vmul.f32	s19, s5, s7
d0058b4e:	ee2c 0a22 	vmul.f32	s0, s24, s5
d0058b52:	ee62 3a23 	vmul.f32	s7, s4, s7
d0058b56:	ee2a 8a82 	vmul.f32	s16, s21, s4
d0058b5a:	ee6c 8a02 	vmul.f32	s17, s24, s4
d0058b5e:	ee2d 3a83 	vmul.f32	s6, s27, s6
d0058b62:	ee6d 2aa2 	vmul.f32	s5, s27, s5
d0058b66:	ee2d 2a82 	vmul.f32	s4, s27, s4
d0058b6a:	eee5 9aa4 	vfma.f32	s19, s11, s9
d0058b6e:	eee6 3a24 	vfma.f32	s7, s12, s9
d0058b72:	eeea 0a25 	vfma.f32	s1, s20, s11
d0058b76:	eeab 0aa5 	vfma.f32	s0, s23, s11
d0058b7a:	eeed 2a25 	vfma.f32	s5, s26, s11
d0058b7e:	eddd 5a09 	vldr	s11, [sp, #36]	; 0x24
d0058b82:	eeaa 8a06 	vfma.f32	s16, s20, s12
d0058b86:	eeeb 8a86 	vfma.f32	s17, s23, s12
d0058b8a:	eead 2a06 	vfma.f32	s4, s26, s12
d0058b8e:	ed9d 6a06 	vldr	s12, [sp, #24]
d0058b92:	eea5 9a24 	vfma.f32	s18, s10, s9
d0058b96:	eeea 1a05 	vfma.f32	s3, s20, s10
d0058b9a:	eeab 1a85 	vfma.f32	s2, s23, s10
d0058b9e:	eead 3a05 	vfma.f32	s6, s26, s10
d0058ba2:	ee36 6a65 	vsub.f32	s12, s12, s11
d0058ba6:	eeee 0a87 	vfma.f32	s1, s29, s14
d0058baa:	eeac 0a87 	vfma.f32	s0, s25, s14
d0058bae:	eeee 1aa6 	vfma.f32	s3, s29, s13
d0058bb2:	eeac 1aa6 	vfma.f32	s2, s25, s13
d0058bb6:	eea6 9a86 	vfma.f32	s18, s13, s12
d0058bba:	eee7 9a06 	vfma.f32	s19, s14, s12
d0058bbe:	eee7 3a86 	vfma.f32	s7, s15, s12
d0058bc2:	eeae 3a26 	vfma.f32	s6, s28, s13
d0058bc6:	eeee 2a07 	vfma.f32	s5, s28, s14
d0058bca:	eeae 8aa7 	vfma.f32	s16, s29, s15
d0058bce:	eeec 8aa7 	vfma.f32	s17, s25, s15
d0058bd2:	eeae 2a27 	vfma.f32	s4, s28, s15
d0058bd6:	dd5b      	ble.n	d0058c90 <submitEntitySolid+0x2a0>
d0058bd8:	eb00 0040 	add.w	r0, r0, r0, lsl #1
d0058bdc:	f8da 3000 	ldr.w	r3, [sl]
d0058be0:	edcd fa0e 	vstr	s31, [sp, #56]	; 0x38
d0058be4:	ed8d ba0f 	vstr	s22, [sp, #60]	; 0x3c
d0058be8:	eb03 0080 	add.w	r0, r3, r0, lsl #2
d0058bec:	49ef      	ldr	r1, [pc, #956]	; (d0058fac <submitEntitySolid+0x5bc>)
d0058bee:	4af0      	ldr	r2, [pc, #960]	; (d0058fb0 <submitEntitySolid+0x5c0>)
d0058bf0:	ed9d ba01 	vldr	s22, [sp, #4]
d0058bf4:	eddd fa06 	vldr	s31, [sp, #24]
d0058bf8:	edd3 7a01 	vldr	s15, [r3, #4]
d0058bfc:	330c      	adds	r3, #12
d0058bfe:	ed13 4a03 	vldr	s8, [r3, #-12]
d0058c02:	310c      	adds	r1, #12
d0058c04:	ee2b 5aa7 	vmul.f32	s10, s23, s15
d0058c08:	ed53 4a01 	vldr	s9, [r3, #-4]
d0058c0c:	ee6c 5a27 	vmul.f32	s11, s24, s15
d0058c10:	4298      	cmp	r0, r3
d0058c12:	ee2c 6aa7 	vmul.f32	s12, s25, s15
d0058c16:	f102 020c 	add.w	r2, r2, #12
d0058c1a:	ee61 6a27 	vmul.f32	s13, s2, s15
d0058c1e:	ee20 7a27 	vmul.f32	s14, s0, s15
d0058c22:	ee68 7aa7 	vmul.f32	s15, s17, s15
d0058c26:	eeaa 5a04 	vfma.f32	s10, s20, s8
d0058c2a:	eeea 5a84 	vfma.f32	s11, s21, s8
d0058c2e:	eeae 6a84 	vfma.f32	s12, s29, s8
d0058c32:	eee1 6a84 	vfma.f32	s13, s3, s8
d0058c36:	eea0 7a84 	vfma.f32	s14, s1, s8
d0058c3a:	eee8 7a04 	vfma.f32	s15, s16, s8
d0058c3e:	ee3b 5a05 	vadd.f32	s10, s22, s10
d0058c42:	ee7f 5a25 	vadd.f32	s11, s30, s11
d0058c46:	ee3f 6a86 	vadd.f32	s12, s31, s12
d0058c4a:	ee76 6a89 	vadd.f32	s13, s13, s18
d0058c4e:	ee37 7a29 	vadd.f32	s14, s14, s19
d0058c52:	ee77 7aa3 	vadd.f32	s15, s15, s7
d0058c56:	eead 5a24 	vfma.f32	s10, s26, s9
d0058c5a:	eeed 5aa4 	vfma.f32	s11, s27, s9
d0058c5e:	eeae 6a24 	vfma.f32	s12, s28, s9
d0058c62:	eee3 6a24 	vfma.f32	s13, s6, s9
d0058c66:	eea2 7aa4 	vfma.f32	s14, s5, s9
d0058c6a:	eee2 7a24 	vfma.f32	s15, s4, s9
d0058c6e:	ed01 5a03 	vstr	s10, [r1, #-12]
d0058c72:	ed41 5a02 	vstr	s11, [r1, #-8]
d0058c76:	ed01 6a01 	vstr	s12, [r1, #-4]
d0058c7a:	ed42 6a03 	vstr	s13, [r2, #-12]
d0058c7e:	ed02 7a02 	vstr	s14, [r2, #-8]
d0058c82:	ed42 7a01 	vstr	s15, [r2, #-4]
d0058c86:	d1b7      	bne.n	d0058bf8 <submitEntitySolid+0x208>
d0058c88:	eddd fa0e 	vldr	s31, [sp, #56]	; 0x38
d0058c8c:	ed9d ba0f 	vldr	s22, [sp, #60]	; 0x3c
d0058c90:	f8da 3014 	ldr.w	r3, [sl, #20]
d0058c94:	2b00      	cmp	r3, #0
d0058c96:	9301      	str	r3, [sp, #4]
d0058c98:	f340 81e6 	ble.w	d0059068 <submitEntitySolid+0x678>
d0058c9c:	f04f 0900 	mov.w	r9, #0
d0058ca0:	f8df 830c 	ldr.w	r8, [pc, #780]	; d0058fb0 <submitEntitySolid+0x5c0>
d0058ca4:	ed9f aac3 	vldr	s20, [pc, #780]	; d0058fb4 <submitEntitySolid+0x5c4>
d0058ca8:	eddf aac3 	vldr	s21, [pc, #780]	; d0058fb8 <submitEntitySolid+0x5c8>
d0058cac:	ed9d da0a 	vldr	s26, [sp, #40]	; 0x28
d0058cb0:	eddd ba0b 	vldr	s23, [sp, #44]	; 0x2c
d0058cb4:	ed9d ca0c 	vldr	s24, [sp, #48]	; 0x30
d0058cb8:	eddd ca0d 	vldr	s25, [sp, #52]	; 0x34
d0058cbc:	f8da 4010 	ldr.w	r4, [sl, #16]
d0058cc0:	ea4f 1309 	mov.w	r3, r9, lsl #4
d0058cc4:	58e3      	ldr	r3, [r4, r3]
d0058cc6:	eb04 1409 	add.w	r4, r4, r9, lsl #4
d0058cca:	eb03 0543 	add.w	r5, r3, r3, lsl #1
d0058cce:	6862      	ldr	r2, [r4, #4]
d0058cd0:	68a1      	ldr	r1, [r4, #8]
d0058cd2:	ea4f 0b43 	mov.w	fp, r3, lsl #1
d0058cd6:	eb08 0585 	add.w	r5, r8, r5, lsl #2
d0058cda:	eb02 0642 	add.w	r6, r2, r2, lsl #1
d0058cde:	edd5 6a02 	vldr	s13, [r5, #8]
d0058ce2:	eb01 0741 	add.w	r7, r1, r1, lsl #1
d0058ce6:	eb08 0686 	add.w	r6, r8, r6, lsl #2
d0058cea:	eef4 6aef 	vcmpe.f32	s13, s31
d0058cee:	eb08 0787 	add.w	r7, r8, r7, lsl #2
d0058cf2:	ea4f 0c42 	mov.w	ip, r2, lsl #1
d0058cf6:	ea4f 0e41 	mov.w	lr, r1, lsl #1
d0058cfa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058cfe:	dd0e      	ble.n	d0058d1e <submitEntitySolid+0x32e>
d0058d00:	edd6 7a02 	vldr	s15, [r6, #8]
d0058d04:	eef4 7aef 	vcmpe.f32	s15, s31
d0058d08:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058d0c:	dd07      	ble.n	d0058d1e <submitEntitySolid+0x32e>
d0058d0e:	edd7 7a02 	vldr	s15, [r7, #8]
d0058d12:	eef4 7aef 	vcmpe.f32	s15, s31
d0058d16:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058d1a:	f300 819f 	bgt.w	d005905c <submitEntitySolid+0x66c>
d0058d1e:	eef4 6acb 	vcmpe.f32	s13, s22
d0058d22:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058d26:	d516      	bpl.n	d0058d56 <submitEntitySolid+0x366>
d0058d28:	eb0c 0002 	add.w	r0, ip, r2
d0058d2c:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0058d30:	edd0 7a02 	vldr	s15, [r0, #8]
d0058d34:	eef4 7acb 	vcmpe.f32	s15, s22
d0058d38:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058d3c:	d50b      	bpl.n	d0058d56 <submitEntitySolid+0x366>
d0058d3e:	eb0e 0001 	add.w	r0, lr, r1
d0058d42:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0058d46:	edd0 7a02 	vldr	s15, [r0, #8]
d0058d4a:	eef4 7acb 	vcmpe.f32	s15, s22
d0058d4e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058d52:	f100 8183 	bmi.w	d005905c <submitEntitySolid+0x66c>
d0058d56:	ed95 6a00 	vldr	s12, [r5]
d0058d5a:	edd5 3a02 	vldr	s7, [r5, #8]
d0058d5e:	ed96 2a00 	vldr	s4, [r6]
d0058d62:	ed97 5a02 	vldr	s10, [r7, #8]
d0058d66:	ee72 1a46 	vsub.f32	s3, s4, s12
d0058d6a:	edd5 7a01 	vldr	s15, [r5, #4]
d0058d6e:	ee35 5a63 	vsub.f32	s10, s10, s7
d0058d72:	ed96 4a02 	vldr	s8, [r6, #8]
d0058d76:	edd7 5a01 	vldr	s11, [r7, #4]
d0058d7a:	ed97 1a00 	vldr	s2, [r7]
d0058d7e:	ee34 4a63 	vsub.f32	s8, s8, s7
d0058d82:	ee75 5ae7 	vsub.f32	s11, s11, s15
d0058d86:	edd6 4a01 	vldr	s9, [r6, #4]
d0058d8a:	ee31 7a46 	vsub.f32	s14, s2, s12
d0058d8e:	ee65 2a61 	vnmul.f32	s5, s10, s3
d0058d92:	ee74 4ae7 	vsub.f32	s9, s9, s15
d0058d96:	ee25 3ac4 	vnmul.f32	s6, s11, s8
d0058d9a:	eee4 2a07 	vfma.f32	s5, s8, s14
d0058d9e:	ee27 7a64 	vnmul.f32	s14, s14, s9
d0058da2:	eea4 3a85 	vfma.f32	s6, s9, s10
d0058da6:	eea1 7aa5 	vfma.f32	s14, s3, s11
d0058daa:	ee67 7aa2 	vmul.f32	s15, s15, s5
d0058dae:	eee6 7a03 	vfma.f32	s15, s12, s6
d0058db2:	eee3 7a87 	vfma.f32	s15, s7, s14
d0058db6:	eef5 7ac0 	vcmpe.f32	s15, #0.0
d0058dba:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058dbe:	f280 814d 	bge.w	d005905c <submitEntitySolid+0x66c>
d0058dc2:	eef1 5a66 	vneg.f32	s11, s13
d0058dc6:	eef4 5ac6 	vcmpe.f32	s11, s12
d0058dca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058dce:	dd1a      	ble.n	d0058e06 <submitEntitySolid+0x416>
d0058dd0:	eb0c 0002 	add.w	r0, ip, r2
d0058dd4:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0058dd8:	edd0 7a02 	vldr	s15, [r0, #8]
d0058ddc:	eef1 7a67 	vneg.f32	s15, s15
d0058de0:	eef4 7ac2 	vcmpe.f32	s15, s4
d0058de4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058de8:	dd0d      	ble.n	d0058e06 <submitEntitySolid+0x416>
d0058dea:	eb0e 0001 	add.w	r0, lr, r1
d0058dee:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0058df2:	edd0 7a02 	vldr	s15, [r0, #8]
d0058df6:	eef1 7a67 	vneg.f32	s15, s15
d0058dfa:	eef4 7ac1 	vcmpe.f32	s15, s2
d0058dfe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058e02:	f300 812b 	bgt.w	d005905c <submitEntitySolid+0x66c>
d0058e06:	eef4 6ac6 	vcmpe.f32	s13, s12
d0058e0a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058e0e:	d516      	bpl.n	d0058e3e <submitEntitySolid+0x44e>
d0058e10:	eb0c 0002 	add.w	r0, ip, r2
d0058e14:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0058e18:	edd0 7a02 	vldr	s15, [r0, #8]
d0058e1c:	eef4 7ac2 	vcmpe.f32	s15, s4
d0058e20:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058e24:	d50b      	bpl.n	d0058e3e <submitEntitySolid+0x44e>
d0058e26:	eb0e 0001 	add.w	r0, lr, r1
d0058e2a:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0058e2e:	edd0 7a02 	vldr	s15, [r0, #8]
d0058e32:	eef4 7ac1 	vcmpe.f32	s15, s2
d0058e36:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058e3a:	f100 810f 	bmi.w	d005905c <submitEntitySolid+0x66c>
d0058e3e:	ee26 7a8a 	vmul.f32	s14, s13, s20
d0058e42:	eb0b 0003 	add.w	r0, fp, r3
d0058e46:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0058e4a:	eeb1 5a47 	vneg.f32	s10, s14
d0058e4e:	edd0 7a01 	vldr	s15, [r0, #4]
d0058e52:	eef4 7ac5 	vcmpe.f32	s15, s10
d0058e56:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058e5a:	d51e      	bpl.n	d0058e9a <submitEntitySolid+0x4aa>
d0058e5c:	eb0c 0002 	add.w	r0, ip, r2
d0058e60:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0058e64:	edd0 4a02 	vldr	s9, [r0, #8]
d0058e68:	ed90 4a01 	vldr	s8, [r0, #4]
d0058e6c:	ee6a 4a64 	vnmul.f32	s9, s20, s9
d0058e70:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0058e74:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058e78:	d50f      	bpl.n	d0058e9a <submitEntitySolid+0x4aa>
d0058e7a:	eb0e 0001 	add.w	r0, lr, r1
d0058e7e:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0058e82:	edd0 4a02 	vldr	s9, [r0, #8]
d0058e86:	ed90 4a01 	vldr	s8, [r0, #4]
d0058e8a:	ee6a 4a64 	vnmul.f32	s9, s20, s9
d0058e8e:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0058e92:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058e96:	f100 80e1 	bmi.w	d005905c <submitEntitySolid+0x66c>
d0058e9a:	eef4 7ac7 	vcmpe.f32	s15, s14
d0058e9e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058ea2:	dd1e      	ble.n	d0058ee2 <submitEntitySolid+0x4f2>
d0058ea4:	eb0c 0002 	add.w	r0, ip, r2
d0058ea8:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0058eac:	edd0 4a02 	vldr	s9, [r0, #8]
d0058eb0:	ed90 4a01 	vldr	s8, [r0, #4]
d0058eb4:	ee64 4a8a 	vmul.f32	s9, s9, s20
d0058eb8:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0058ebc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058ec0:	dd0f      	ble.n	d0058ee2 <submitEntitySolid+0x4f2>
d0058ec2:	eb0e 0001 	add.w	r0, lr, r1
d0058ec6:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0058eca:	edd0 4a02 	vldr	s9, [r0, #8]
d0058ece:	ed90 4a01 	vldr	s8, [r0, #4]
d0058ed2:	ee64 4a8a 	vmul.f32	s9, s9, s20
d0058ed6:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0058eda:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058ede:	f300 80bd 	bgt.w	d005905c <submitEntitySolid+0x66c>
d0058ee2:	eef4 6acb 	vcmpe.f32	s13, s22
d0058ee6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058eea:	db26      	blt.n	d0058f3a <submitEntitySolid+0x54a>
d0058eec:	eb0c 0002 	add.w	r0, ip, r2
d0058ef0:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0058ef4:	edd0 4a02 	vldr	s9, [r0, #8]
d0058ef8:	eef4 4acb 	vcmpe.f32	s9, s22
d0058efc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058f00:	db1b      	blt.n	d0058f3a <submitEntitySolid+0x54a>
d0058f02:	eb0e 0001 	add.w	r0, lr, r1
d0058f06:	eb08 0080 	add.w	r0, r8, r0, lsl #2
d0058f0a:	ed90 4a02 	vldr	s8, [r0, #8]
d0058f0e:	eeb4 4acb 	vcmpe.f32	s8, s22
d0058f12:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058f16:	eef4 5ac6 	vcmpe.f32	s11, s12
d0058f1a:	bfac      	ite	ge
d0058f1c:	2001      	movge	r0, #1
d0058f1e:	2000      	movlt	r0, #0
d0058f20:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058f24:	f000 0001 	and.w	r0, r0, #1
d0058f28:	bf88      	it	hi
d0058f2a:	2000      	movhi	r0, #0
d0058f2c:	b128      	cbz	r0, d0058f3a <submitEntitySolid+0x54a>
d0058f2e:	eef4 6a46 	vcmp.f32	s13, s12
d0058f32:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058f36:	f280 82ad 	bge.w	d0059494 <submitEntitySolid+0xaa4>
d0058f3a:	2000      	movs	r0, #0
d0058f3c:	448e      	add	lr, r1
d0058f3e:	4462      	add	r2, ip
d0058f40:	491a      	ldr	r1, [pc, #104]	; (d0058fac <submitEntitySolid+0x5bc>)
d0058f42:	445b      	add	r3, fp
d0058f44:	eb01 0282 	add.w	r2, r1, r2, lsl #2
d0058f48:	eb01 0383 	add.w	r3, r1, r3, lsl #2
d0058f4c:	eb01 018e 	add.w	r1, r1, lr, lsl #2
d0058f50:	edd2 4a00 	vldr	s9, [r2]
d0058f54:	ed93 6a00 	vldr	s12, [r3]
d0058f58:	ed93 7a02 	vldr	s14, [r3, #8]
d0058f5c:	ed91 4a02 	vldr	s8, [r1, #8]
d0058f60:	ee74 2ac6 	vsub.f32	s5, s9, s12
d0058f64:	edd3 6a01 	vldr	s13, [r3, #4]
d0058f68:	ee34 2a47 	vsub.f32	s4, s8, s14
d0058f6c:	edd2 5a02 	vldr	s11, [r2, #8]
d0058f70:	edd1 3a01 	vldr	s7, [r1, #4]
d0058f74:	ed91 3a00 	vldr	s6, [r1]
d0058f78:	ee35 1ac7 	vsub.f32	s2, s11, s14
d0058f7c:	ee73 7ae6 	vsub.f32	s15, s7, s13
d0058f80:	ed92 5a01 	vldr	s10, [r2, #4]
d0058f84:	ee33 8a46 	vsub.f32	s16, s6, s12
d0058f88:	ee62 8a62 	vnmul.f32	s17, s4, s5
d0058f8c:	ee75 1a66 	vsub.f32	s3, s10, s13
d0058f90:	ee27 9ac1 	vnmul.f32	s18, s15, s2
d0058f94:	eee1 8a08 	vfma.f32	s17, s2, s16
d0058f98:	ee28 8a61 	vnmul.f32	s16, s16, s3
d0058f9c:	eea1 9a82 	vfma.f32	s18, s3, s4
d0058fa0:	eea2 8aa7 	vfma.f32	s16, s5, s15
d0058fa4:	ee68 7aa8 	vmul.f32	s15, s17, s17
d0058fa8:	e00e      	b.n	d0058fc8 <submitEntitySolid+0x5d8>
d0058faa:	bf00      	nop
d0058fac:	d011f180 	.word	0xd011f180
d0058fb0:	d0093140 	.word	0xd0093140
d0058fb4:	3f2aaaab 	.word	0x3f2aaaab
d0058fb8:	358637bd 	.word	0x358637bd
d0058fbc:	3b808081 	.word	0x3b808081
d0058fc0:	3eaaaaab 	.word	0x3eaaaaab
d0058fc4:	00000000 	.word	0x00000000
d0058fc8:	eee9 7a09 	vfma.f32	s15, s18, s18
d0058fcc:	eee8 7a08 	vfma.f32	s15, s16, s16
d0058fd0:	eef4 7aea 	vcmpe.f32	s15, s21
d0058fd4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0058fd8:	d940      	bls.n	d005905c <submitEntitySolid+0x66c>
d0058fda:	7b63      	ldrb	r3, [r4, #13]
d0058fdc:	eddd 2a05 	vldr	s5, [sp, #20]
d0058fe0:	ee0f 3a10 	vmov	s30, r3
d0058fe4:	9b04      	ldr	r3, [sp, #16]
d0058fe6:	ee72 9a8d 	vadd.f32	s19, s5, s26
d0058fea:	ed5f 2a0c 	vldr	s5, [pc, #-48]	; d0058fbc <submitEntitySolid+0x5cc>
d0058fee:	eeb8 fa4f 	vcvt.f32.u32	s30, s30
d0058ff2:	ee2f fa22 	vmul.f32	s30, s30, s5
d0058ff6:	2b00      	cmp	r3, #0
d0058ff8:	d158      	bne.n	d00590ac <submitEntitySolid+0x6bc>
d0058ffa:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d0058ffe:	fec9 9a8f 	vmaxnm.f32	s19, s19, s30
d0059002:	9001      	str	r0, [sp, #4]
d0059004:	fe89 0ac0 	vminnm.f32	s0, s19, s0
d0059008:	f7fe faf2 	bl	d00575f0 <brightnessToShadeF>
d005900c:	f894 b00c 	ldrb.w	fp, [r4, #12]
d0059010:	7ba3      	ldrb	r3, [r4, #14]
d0059012:	eeb0 8a40 	vmov.f32	s16, s0
d0059016:	f00b 0b0f 	and.w	fp, fp, #15
d005901a:	9801      	ldr	r0, [sp, #4]
d005901c:	b10b      	cbz	r3, d0059022 <submitEntitySolid+0x632>
d005901e:	f04b 0b10 	orr.w	fp, fp, #16
d0059022:	b330      	cbz	r0, d0059072 <submitEntitySolid+0x682>
d0059024:	eef0 4a48 	vmov.f32	s9, s16
d0059028:	7b62      	ldrb	r2, [r4, #13]
d005902a:	4659      	mov	r1, fp
d005902c:	9802      	ldr	r0, [sp, #8]
d005902e:	ed97 3a00 	vldr	s6, [r7]
d0059032:	edd7 3a01 	vldr	s7, [r7, #4]
d0059036:	ed97 4a02 	vldr	s8, [r7, #8]
d005903a:	edd6 1a00 	vldr	s3, [r6]
d005903e:	ed96 2a01 	vldr	s4, [r6, #4]
d0059042:	edd6 2a02 	vldr	s5, [r6, #8]
d0059046:	ed95 0a00 	vldr	s0, [r5]
d005904a:	edd5 0a01 	vldr	s1, [r5, #4]
d005904e:	ed95 1a02 	vldr	s2, [r5, #8]
d0059052:	f7ff f823 	bl	d005809c <submitClippedTri>
d0059056:	f8da 3014 	ldr.w	r3, [sl, #20]
d005905a:	9301      	str	r3, [sp, #4]
d005905c:	f109 0901 	add.w	r9, r9, #1
d0059060:	9b01      	ldr	r3, [sp, #4]
d0059062:	4599      	cmp	r9, r3
d0059064:	f6ff ae2a 	blt.w	d0058cbc <submitEntitySolid+0x2cc>
d0059068:	b03b      	add	sp, #236	; 0xec
d005906a:	ecbd 8b10 	vpop	{d8-d15}
d005906e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d0059072:	9902      	ldr	r1, [sp, #8]
d0059074:	9803      	ldr	r0, [sp, #12]
d0059076:	ed97 3a00 	vldr	s6, [r7]
d005907a:	edd7 3a01 	vldr	s7, [r7, #4]
d005907e:	ed97 4a02 	vldr	s8, [r7, #8]
d0059082:	edd6 1a00 	vldr	s3, [r6]
d0059086:	ed96 2a01 	vldr	s4, [r6, #4]
d005908a:	edd6 2a02 	vldr	s5, [r6, #8]
d005908e:	ed95 0a00 	vldr	s0, [r5]
d0059092:	edd5 0a01 	vldr	s1, [r5, #4]
d0059096:	ed95 1a02 	vldr	s2, [r5, #8]
d005909a:	f7fe fb9f 	bl	d00577dc <clipTriangleToFrustum>
d005909e:	2802      	cmp	r0, #2
d00590a0:	f300 815e 	bgt.w	d0059360 <submitEntitySolid+0x970>
d00590a4:	f8da 3014 	ldr.w	r3, [sl, #20]
d00590a8:	9301      	str	r3, [sp, #4]
d00590aa:	e7d7      	b.n	d005905c <submitEntitySolid+0x66c>
d00590ac:	ee74 da86 	vadd.f32	s27, s9, s12
d00590b0:	ed1f 6a3d 	vldr	s12, [pc, #-244]	; d0058fc0 <submitEntitySolid+0x5d0>
d00590b4:	ee35 ea26 	vadd.f32	s28, s10, s13
d00590b8:	ee75 ea87 	vadd.f32	s29, s11, s14
d00590bc:	eeb5 cac0 	vcmpe.f32	s24, #0.0
d00590c0:	ee7d da83 	vadd.f32	s27, s27, s6
d00590c4:	ee3e ea23 	vadd.f32	s28, s28, s7
d00590c8:	ee7e ea84 	vadd.f32	s29, s29, s8
d00590cc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00590d0:	ee6d da86 	vmul.f32	s27, s27, s12
d00590d4:	ee2e ea06 	vmul.f32	s28, s28, s12
d00590d8:	ee6e ea86 	vmul.f32	s29, s29, s12
d00590dc:	dd17      	ble.n	d005910e <submitEntitySolid+0x71e>
d00590de:	ed9d 7a08 	vldr	s14, [sp, #32]
d00590e2:	ee77 2a4e 	vsub.f32	s5, s14, s28
d00590e6:	ed9d 7a07 	vldr	s14, [sp, #28]
d00590ea:	ee37 3a6d 	vsub.f32	s6, s14, s27
d00590ee:	ed9d 7a09 	vldr	s14, [sp, #36]	; 0x24
d00590f2:	ee37 4a6e 	vsub.f32	s8, s14, s29
d00590f6:	ee22 7aa2 	vmul.f32	s14, s5, s5
d00590fa:	eea3 7a03 	vfma.f32	s14, s6, s6
d00590fe:	eea4 7a04 	vfma.f32	s14, s8, s8
d0059102:	eeb4 7aea 	vcmpe.f32	s14, s21
d0059106:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005910a:	f300 81a7 	bgt.w	d005945c <submitEntitySolid+0xa6c>
d005910e:	ed1f 4a53 	vldr	s8, [pc, #-332]	; d0058fc4 <submitEntitySolid+0x5d4>
d0059112:	eef0 2a44 	vmov.f32	s5, s8
d0059116:	eeb0 3a44 	vmov.f32	s6, s8
d005911a:	eef1 6ae7 	vsqrt.f32	s13, s15
d005911e:	aa13      	add	r2, sp, #76	; 0x4c
d0059120:	4639      	mov	r1, r7
d0059122:	9501      	str	r5, [sp, #4]
d0059124:	f04f 0b00 	mov.w	fp, #0
d0059128:	4615      	mov	r5, r2
d005912a:	4627      	mov	r7, r4
d005912c:	4632      	mov	r2, r6
d005912e:	9e04      	ldr	r6, [sp, #16]
d0059130:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d0059134:	eef0 0a6c 	vmov.f32	s1, s25
d0059138:	eeb0 6a4f 	vmov.f32	s12, s30
d005913c:	eeb0 5a47 	vmov.f32	s10, s14
d0059140:	eef0 ca43 	vmov.f32	s25, s6
d0059144:	eeb0 fa44 	vmov.f32	s30, s8
d0059148:	eec7 7a26 	vdiv.f32	s15, s14, s13
d005914c:	eeb0 7a4b 	vmov.f32	s14, s22
d0059150:	eef0 6a4d 	vmov.f32	s13, s26
d0059154:	eeb0 ba6e 	vmov.f32	s22, s29
d0059158:	eeb0 da62 	vmov.f32	s26, s5
d005915c:	eef0 ea4e 	vmov.f32	s29, s28
d0059160:	eeb0 ea6d 	vmov.f32	s28, s27
d0059164:	ee28 8a27 	vmul.f32	s16, s16, s15
d0059168:	ee29 9a27 	vmul.f32	s18, s18, s15
d005916c:	ee68 8aa7 	vmul.f32	s17, s17, s15
d0059170:	ee38 2a08 	vadd.f32	s4, s16, s16
d0059174:	eef0 7a6f 	vmov.f32	s15, s31
d0059178:	ee39 1a09 	vadd.f32	s2, s18, s18
d005917c:	ee78 1aa8 	vadd.f32	s3, s17, s17
d0059180:	eef0 da48 	vmov.f32	s27, s16
d0059184:	eef0 fa42 	vmov.f32	s31, s4
d0059188:	f855 4f04 	ldr.w	r4, [r5, #4]!
d005918c:	7823      	ldrb	r3, [r4, #0]
d005918e:	2b00      	cmp	r3, #0
d0059190:	d172      	bne.n	d0059278 <submitEntitySolid+0x888>
d0059192:	ed94 0a02 	vldr	s0, [r4, #8]
d0059196:	ed94 4a01 	vldr	s8, [r4, #4]
d005919a:	ee30 0a6e 	vsub.f32	s0, s0, s29
d005919e:	edd4 4a03 	vldr	s9, [r4, #12]
d00591a2:	ee34 4a4e 	vsub.f32	s8, s8, s28
d00591a6:	edd4 3a0a 	vldr	s7, [r4, #40]	; 0x28
d00591aa:	ee74 4acb 	vsub.f32	s9, s9, s22
d00591ae:	ee60 5a00 	vmul.f32	s11, s0, s0
d00591b2:	ee23 3aa3 	vmul.f32	s6, s7, s7
d00591b6:	eee4 5a04 	vfma.f32	s11, s8, s8
d00591ba:	eee4 5aa4 	vfma.f32	s11, s9, s9
d00591be:	eef4 5a6a 	vcmp.f32	s11, s21
d00591c2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00591c6:	dd44      	ble.n	d0059252 <submitEntitySolid+0x862>
d00591c8:	eeb4 3a65 	vcmp.f32	s6, s11
d00591cc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00591d0:	dd3f      	ble.n	d0059252 <submitEntitySolid+0x862>
d00591d2:	eeb1 8ae5 	vsqrt.f32	s16, s11
d00591d6:	edd4 2a08 	vldr	s5, [r4, #32]
d00591da:	ee22 2aa2 	vmul.f32	s4, s5, s5
d00591de:	eeb4 2ae5 	vcmpe.f32	s4, s11
d00591e2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00591e6:	ee85 3a08 	vdiv.f32	s6, s10, s16
d00591ea:	ee24 4a03 	vmul.f32	s8, s8, s6
d00591ee:	ee20 0a03 	vmul.f32	s0, s0, s6
d00591f2:	ee64 4a83 	vmul.f32	s9, s9, s6
d00591f6:	f140 80b0 	bpl.w	d005935a <submitEntitySolid+0x96a>
d00591fa:	ed94 2a09 	vldr	s4, [r4, #36]	; 0x24
d00591fe:	eef4 2ac2 	vcmpe.f32	s5, s4
d0059202:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059206:	da24      	bge.n	d0059252 <submitEntitySolid+0x862>
d0059208:	eef4 3ac2 	vcmpe.f32	s7, s4
d005920c:	ee65 5a83 	vmul.f32	s11, s11, s6
d0059210:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059214:	eeb4 2ae5 	vcmpe.f32	s4, s11
d0059218:	f240 810d 	bls.w	d0059436 <submitEntitySolid+0xa46>
d005921c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059220:	f2c0 81c2 	blt.w	d00595a8 <submitEntitySolid+0xbb8>
d0059224:	ee75 5ae2 	vsub.f32	s11, s11, s5
d0059228:	ee72 2a62 	vsub.f32	s5, s4, s5
d005922c:	eeb6 3a08 	vmov.f32	s6, #104	; 0x3f400000  0.750
d0059230:	eeb0 8a45 	vmov.f32	s16, s10
d0059234:	eec5 3aa2 	vdiv.f32	s7, s11, s5
d0059238:	ed5f 5a9e 	vldr	s11, [pc, #-632]	; d0058fc4 <submitEntitySolid+0x5d4>
d005923c:	fec3 5aa5 	vmaxnm.f32	s11, s7, s11
d0059240:	fec5 5ac5 	vminnm.f32	s11, s11, s10
d0059244:	eea5 8ac3 	vfms.f32	s16, s11, s6
d0059248:	eeb5 8ac0 	vcmpe.f32	s16, #0.0
d005924c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059250:	d820      	bhi.n	d0059294 <submitEntitySolid+0x8a4>
d0059252:	f10b 0b01 	add.w	fp, fp, #1
d0059256:	455e      	cmp	r6, fp
d0059258:	d196      	bne.n	d0059188 <submitEntitySolid+0x798>
d005925a:	463c      	mov	r4, r7
d005925c:	eef0 fa67 	vmov.f32	s31, s15
d0059260:	eeb0 ba47 	vmov.f32	s22, s14
d0059264:	9d01      	ldr	r5, [sp, #4]
d0059266:	eeb0 da66 	vmov.f32	s26, s13
d005926a:	4616      	mov	r6, r2
d005926c:	eef0 ca60 	vmov.f32	s25, s1
d0059270:	460f      	mov	r7, r1
d0059272:	eeb0 fa46 	vmov.f32	s30, s12
d0059276:	e6c0      	b.n	d0058ffa <submitEntitySolid+0x60a>
d0059278:	ed94 4a04 	vldr	s8, [r4, #16]
d005927c:	eeb7 8a00 	vmov.f32	s16, #112	; 0x3f800000  1.0
d0059280:	ed94 0a05 	vldr	s0, [r4, #20]
d0059284:	edd4 4a06 	vldr	s9, [r4, #24]
d0059288:	eeb1 4a44 	vneg.f32	s8, s8
d005928c:	eeb1 0a40 	vneg.f32	s0, s0
d0059290:	eef1 4a64 	vneg.f32	s9, s9
d0059294:	ee60 5a28 	vmul.f32	s11, s0, s17
d0059298:	eee4 5a09 	vfma.f32	s11, s8, s18
d005929c:	eee4 5aad 	vfma.f32	s11, s9, s27
d00592a0:	eef5 5ac0 	vcmpe.f32	s11, #0.0
d00592a4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00592a8:	d9d3      	bls.n	d0059252 <submitEntitySolid+0x862>
d00592aa:	eef5 bac0 	vcmpe.f32	s23, #0.0
d00592ae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00592b2:	dd07      	ble.n	d00592c4 <submitEntitySolid+0x8d4>
d00592b4:	edd4 3a07 	vldr	s7, [r4, #28]
d00592b8:	ee6b 3aa3 	vmul.f32	s7, s23, s7
d00592bc:	ee63 3a88 	vmul.f32	s7, s7, s16
d00592c0:	eee5 9aa3 	vfma.f32	s19, s11, s7
d00592c4:	eeb5 cac0 	vcmpe.f32	s24, #0.0
d00592c8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00592cc:	dd2f      	ble.n	d005932e <submitEntitySolid+0x93e>
d00592ce:	ee95 0aa1 	vfnms.f32	s0, s11, s3
d00592d2:	ee95 4a81 	vfnms.f32	s8, s11, s2
d00592d6:	eed5 4aaf 	vfnms.f32	s9, s11, s31
d00592da:	ee2d 0a00 	vmul.f32	s0, s26, s0
d00592de:	eeac 0a84 	vfma.f32	s0, s25, s8
d00592e2:	eeaf 0a24 	vfma.f32	s0, s30, s9
d00592e6:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
d00592ea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00592ee:	dd1e      	ble.n	d005932e <submitEntitySolid+0x93e>
d00592f0:	eef2 5a00 	vmov.f32	s11, #32	; 0x41000000  8.0
d00592f4:	eef4 0a65 	vcmp.f32	s1, s11
d00592f8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00592fc:	d009      	beq.n	d0059312 <submitEntitySolid+0x922>
d00592fe:	eef3 5a00 	vmov.f32	s11, #48	; 0x41800000  16.0
d0059302:	eef4 0a65 	vcmp.f32	s1, s11
d0059306:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005930a:	f040 8124 	bne.w	d0059556 <submitEntitySolid+0xb66>
d005930e:	ee20 0a00 	vmul.f32	s0, s0, s0
d0059312:	ee20 0a00 	vmul.f32	s0, s0, s0
d0059316:	ee20 0a00 	vmul.f32	s0, s0, s0
d005931a:	ee20 0a00 	vmul.f32	s0, s0, s0
d005931e:	edd4 5a07 	vldr	s11, [r4, #28]
d0059322:	ee6c 5a25 	vmul.f32	s11, s24, s11
d0059326:	ee25 8a88 	vmul.f32	s16, s11, s16
d005932a:	eee0 9a08 	vfma.f32	s19, s0, s16
d005932e:	eef4 9ac5 	vcmpe.f32	s19, s10
d0059332:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059336:	db8c      	blt.n	d0059252 <submitEntitySolid+0x862>
d0059338:	463c      	mov	r4, r7
d005933a:	eef0 fa67 	vmov.f32	s31, s15
d005933e:	eeb0 ba47 	vmov.f32	s22, s14
d0059342:	9d01      	ldr	r5, [sp, #4]
d0059344:	eeb0 da66 	vmov.f32	s26, s13
d0059348:	4616      	mov	r6, r2
d005934a:	eef0 ca60 	vmov.f32	s25, s1
d005934e:	460f      	mov	r7, r1
d0059350:	eeb0 fa46 	vmov.f32	s30, s12
d0059354:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
d0059358:	e64f      	b.n	d0058ffa <submitEntitySolid+0x60a>
d005935a:	eeb7 8a00 	vmov.f32	s16, #112	; 0x3f800000  1.0
d005935e:	e799      	b.n	d0059294 <submitEntitySolid+0x8a4>
d0059360:	1e46      	subs	r6, r0, #1
d0059362:	eef0 4a48 	vmov.f32	s9, s16
d0059366:	f8cd 9004 	str.w	r9, [sp, #4]
d005936a:	2501      	movs	r5, #1
d005936c:	46d9      	mov	r9, fp
d005936e:	9802      	ldr	r0, [sp, #8]
d0059370:	46b3      	mov	fp, r6
d0059372:	4626      	mov	r6, r4
d0059374:	9c03      	ldr	r4, [sp, #12]
d0059376:	462f      	mov	r7, r5
d0059378:	3501      	adds	r5, #1
d005937a:	7bb3      	ldrb	r3, [r6, #14]
d005937c:	4649      	mov	r1, r9
d005937e:	eb07 0747 	add.w	r7, r7, r7, lsl #1
d0059382:	7b72      	ldrb	r2, [r6, #13]
d0059384:	eb05 0c45 	add.w	ip, r5, r5, lsl #1
d0059388:	ed94 0a00 	vldr	s0, [r4]
d005938c:	eb04 0787 	add.w	r7, r4, r7, lsl #2
d0059390:	edd4 0a01 	vldr	s1, [r4, #4]
d0059394:	eb04 0c8c 	add.w	ip, r4, ip, lsl #2
d0059398:	ed94 1a02 	vldr	s2, [r4, #8]
d005939c:	edd7 1a00 	vldr	s3, [r7]
d00593a0:	ed97 2a01 	vldr	s4, [r7, #4]
d00593a4:	edd7 2a02 	vldr	s5, [r7, #8]
d00593a8:	ed9c 3a00 	vldr	s6, [ip]
d00593ac:	eddc 3a01 	vldr	s7, [ip, #4]
d00593b0:	ed9c 4a02 	vldr	s8, [ip, #8]
d00593b4:	f7fe fe72 	bl	d005809c <submitClippedTri>
d00593b8:	455d      	cmp	r5, fp
d00593ba:	d1dc      	bne.n	d0059376 <submitEntitySolid+0x986>
d00593bc:	f8dd 9004 	ldr.w	r9, [sp, #4]
d00593c0:	e670      	b.n	d00590a4 <submitEntitySolid+0x6b4>
d00593c2:	2200      	movs	r2, #0
d00593c4:	ed9a 1a06 	vldr	s2, [sl, #24]
d00593c8:	4611      	mov	r1, r2
d00593ca:	e027      	b.n	d005941c <submitEntitySolid+0xa2c>
d00593cc:	edd5 4a02 	vldr	s9, [r5, #8]
d00593d0:	ab3a      	add	r3, sp, #232	; 0xe8
d00593d2:	ed95 0a01 	vldr	s0, [r5, #4]
d00593d6:	ee74 4acf 	vsub.f32	s9, s9, s30
d00593da:	edd5 0a03 	vldr	s1, [r5, #12]
d00593de:	ee30 0a63 	vsub.f32	s0, s0, s7
d00593e2:	ed95 4a0a 	vldr	s8, [r5, #40]	; 0x28
d00593e6:	ee70 0ae1 	vsub.f32	s1, s1, s3
d00593ea:	eb03 0381 	add.w	r3, r3, r1, lsl #2
d00593ee:	ee64 4aa4 	vmul.f32	s9, s9, s9
d00593f2:	ee31 4a04 	vadd.f32	s8, s2, s8
d00593f6:	eee0 4a00 	vfma.f32	s9, s0, s0
d00593fa:	ee24 4a04 	vmul.f32	s8, s8, s8
d00593fe:	eee0 4aa0 	vfma.f32	s9, s1, s1
d0059402:	eeb4 4ae4 	vcmpe.f32	s8, s9
d0059406:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005940a:	db02      	blt.n	d0059412 <submitEntitySolid+0xa22>
d005940c:	3101      	adds	r1, #1
d005940e:	f843 5c98 	str.w	r5, [r3, #-152]
d0059412:	3201      	adds	r2, #1
d0059414:	3540      	adds	r5, #64	; 0x40
d0059416:	4290      	cmp	r0, r2
d0059418:	f340 809a 	ble.w	d0059550 <submitEntitySolid+0xb60>
d005941c:	6aeb      	ldr	r3, [r5, #44]	; 0x2c
d005941e:	2b00      	cmp	r3, #0
d0059420:	d0f7      	beq.n	d0059412 <submitEntitySolid+0xa22>
d0059422:	782b      	ldrb	r3, [r5, #0]
d0059424:	2b01      	cmp	r3, #1
d0059426:	d1d1      	bne.n	d00593cc <submitEntitySolid+0x9dc>
d0059428:	ab3a      	add	r3, sp, #232	; 0xe8
d005942a:	eb03 0381 	add.w	r3, r3, r1, lsl #2
d005942e:	3101      	adds	r1, #1
d0059430:	f843 5c98 	str.w	r5, [r3, #-152]
d0059434:	e7ed      	b.n	d0059412 <submitEntitySolid+0xa22>
d0059436:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005943a:	f67f af0a 	bls.w	d0059252 <submitEntitySolid+0x862>
d005943e:	ee75 5ae2 	vsub.f32	s11, s11, s5
d0059442:	ee72 2a62 	vsub.f32	s5, s4, s5
d0059446:	ee85 8aa2 	vdiv.f32	s16, s11, s5
d005944a:	eddf 5a61 	vldr	s11, [pc, #388]	; d00595d0 <submitEntitySolid+0xbe0>
d005944e:	fe88 8a25 	vmaxnm.f32	s16, s16, s11
d0059452:	fe88 8a45 	vminnm.f32	s16, s16, s10
d0059456:	ee35 8a48 	vsub.f32	s16, s10, s16
d005945a:	e6f5      	b.n	d0059248 <submitEntitySolid+0x858>
d005945c:	eddf 6a5d 	vldr	s13, [pc, #372]	; d00595d4 <submitEntitySolid+0xbe4>
d0059460:	eeb4 7ae6 	vcmpe.f32	s14, s13
d0059464:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059468:	d407      	bmi.n	d005947a <submitEntitySolid+0xa8a>
d005946a:	eddf 6a5b 	vldr	s13, [pc, #364]	; d00595d8 <submitEntitySolid+0xbe8>
d005946e:	eeb4 7a66 	vcmp.f32	s14, s13
d0059472:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059476:	f77f ae50 	ble.w	d005911a <submitEntitySolid+0x72a>
d005947a:	eef1 6ac7 	vsqrt.f32	s13, s14
d005947e:	eeb7 6a00 	vmov.f32	s12, #112	; 0x3f800000  1.0
d0059482:	ee86 7a26 	vdiv.f32	s14, s12, s13
d0059486:	ee23 3a07 	vmul.f32	s6, s6, s14
d005948a:	ee62 2a87 	vmul.f32	s5, s5, s14
d005948e:	ee24 4a07 	vmul.f32	s8, s8, s14
d0059492:	e642      	b.n	d005911a <submitEntitySolid+0x72a>
d0059494:	eef1 6a64 	vneg.f32	s13, s9
d0059498:	eef4 6a42 	vcmp.f32	s13, s4
d005949c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00594a0:	f63f ad4b 	bhi.w	d0058f3a <submitEntitySolid+0x54a>
d00594a4:	eef4 4a42 	vcmp.f32	s9, s4
d00594a8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00594ac:	f6ff ad45 	blt.w	d0058f3a <submitEntitySolid+0x54a>
d00594b0:	eef1 6a44 	vneg.f32	s13, s8
d00594b4:	eef4 6ac1 	vcmpe.f32	s13, s2
d00594b8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00594bc:	eeb4 4ac1 	vcmpe.f32	s8, s2
d00594c0:	bf94      	ite	ls
d00594c2:	2001      	movls	r0, #1
d00594c4:	2000      	movhi	r0, #0
d00594c6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00594ca:	eef4 7ac5 	vcmpe.f32	s15, s10
d00594ce:	f000 0001 	and.w	r0, r0, #1
d00594d2:	bfb8      	it	lt
d00594d4:	2000      	movlt	r0, #0
d00594d6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00594da:	f000 0001 	and.w	r0, r0, #1
d00594de:	bfb8      	it	lt
d00594e0:	2000      	movlt	r0, #0
d00594e2:	2800      	cmp	r0, #0
d00594e4:	f43f ad29 	beq.w	d0058f3a <submitEntitySolid+0x54a>
d00594e8:	eef4 7a47 	vcmp.f32	s15, s14
d00594ec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00594f0:	f63f ad23 	bhi.w	d0058f3a <submitEntitySolid+0x54a>
d00594f4:	ee64 4a8a 	vmul.f32	s9, s9, s20
d00594f8:	200c      	movs	r0, #12
d00594fa:	fb00 8002 	mla	r0, r0, r2, r8
d00594fe:	eeb1 7a64 	vneg.f32	s14, s9
d0059502:	edd0 7a01 	vldr	s15, [r0, #4]
d0059506:	eef4 7a47 	vcmp.f32	s15, s14
d005950a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005950e:	f6ff ad14 	blt.w	d0058f3a <submitEntitySolid+0x54a>
d0059512:	eef4 7a64 	vcmp.f32	s15, s9
d0059516:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005951a:	f63f ad0e 	bhi.w	d0058f3a <submitEntitySolid+0x54a>
d005951e:	ee24 4a0a 	vmul.f32	s8, s8, s20
d0059522:	200c      	movs	r0, #12
d0059524:	fb00 8001 	mla	r0, r0, r1, r8
d0059528:	eeb1 7a44 	vneg.f32	s14, s8
d005952c:	edd0 7a01 	vldr	s15, [r0, #4]
d0059530:	eef4 7ac7 	vcmpe.f32	s15, s14
d0059534:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059538:	eef4 7ac4 	vcmpe.f32	s15, s8
d005953c:	bfac      	ite	ge
d005953e:	2001      	movge	r0, #1
d0059540:	2000      	movlt	r0, #0
d0059542:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059546:	f000 0001 	and.w	r0, r0, #1
d005954a:	bf88      	it	hi
d005954c:	2000      	movhi	r0, #0
d005954e:	e4f5      	b.n	d0058f3c <submitEntitySolid+0x54c>
d0059550:	9104      	str	r1, [sp, #16]
d0059552:	f7ff bae5 	b.w	d0058b20 <submitEntitySolid+0x130>
d0059556:	ed8d 1a13 	vstr	s2, [sp, #76]	; 0x4c
d005955a:	edcd 1a12 	vstr	s3, [sp, #72]	; 0x48
d005955e:	ed8d 6a11 	vstr	s12, [sp, #68]	; 0x44
d0059562:	9110      	str	r1, [sp, #64]	; 0x40
d0059564:	920f      	str	r2, [sp, #60]	; 0x3c
d0059566:	edcd 6a0e 	vstr	s13, [sp, #56]	; 0x38
d005956a:	ed8d 7a0d 	vstr	s14, [sp, #52]	; 0x34
d005956e:	edcd 7a0c 	vstr	s15, [sp, #48]	; 0x30
d0059572:	900b      	str	r0, [sp, #44]	; 0x2c
d0059574:	ed8d 5a0a 	vstr	s10, [sp, #40]	; 0x28
d0059578:	edcd 0a06 	vstr	s1, [sp, #24]
d005957c:	f7fc f810 	bl	d00555a0 <powfxt>
d0059580:	ed9d 1a13 	vldr	s2, [sp, #76]	; 0x4c
d0059584:	eddd 1a12 	vldr	s3, [sp, #72]	; 0x48
d0059588:	ed9d 6a11 	vldr	s12, [sp, #68]	; 0x44
d005958c:	9910      	ldr	r1, [sp, #64]	; 0x40
d005958e:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
d0059590:	eddd 6a0e 	vldr	s13, [sp, #56]	; 0x38
d0059594:	ed9d 7a0d 	vldr	s14, [sp, #52]	; 0x34
d0059598:	eddd 7a0c 	vldr	s15, [sp, #48]	; 0x30
d005959c:	980b      	ldr	r0, [sp, #44]	; 0x2c
d005959e:	ed9d 5a0a 	vldr	s10, [sp, #40]	; 0x28
d00595a2:	eddd 0a06 	vldr	s1, [sp, #24]
d00595a6:	e6ba      	b.n	d005931e <submitEntitySolid+0x92e>
d00595a8:	ee75 5ac2 	vsub.f32	s11, s11, s4
d00595ac:	ee73 3ac2 	vsub.f32	s7, s7, s4
d00595b0:	eeb5 3a00 	vmov.f32	s6, #80	; 0x3e800000  0.250
d00595b4:	ee85 8aa3 	vdiv.f32	s16, s11, s7
d00595b8:	eddf 5a05 	vldr	s11, [pc, #20]	; d00595d0 <submitEntitySolid+0xbe0>
d00595bc:	fe88 8a25 	vmaxnm.f32	s16, s16, s11
d00595c0:	fe88 8a45 	vminnm.f32	s16, s16, s10
d00595c4:	ee35 8a48 	vsub.f32	s16, s10, s16
d00595c8:	ee28 8a03 	vmul.f32	s16, s16, s6
d00595cc:	e63c      	b.n	d0059248 <submitEntitySolid+0x858>
d00595ce:	bf00      	nop
d00595d0:	00000000 	.word	0x00000000
d00595d4:	3f7fbe77 	.word	0x3f7fbe77
d00595d8:	3f8020c5 	.word	0x3f8020c5

d00595dc <submitWorldEntities>:
d00595dc:	b570      	push	{r4, r5, r6, lr}
d00595de:	4c3e      	ldr	r4, [pc, #248]	; (d00596d8 <submitWorldEntities+0xfc>)
d00595e0:	4605      	mov	r5, r0
d00595e2:	f504 46c0 	add.w	r6, r4, #24576	; 0x6000
d00595e6:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d00595ea:	2b00      	cmp	r3, #0
d00595ec:	d070      	beq.n	d00596d0 <submitWorldEntities+0xf4>
d00595ee:	68e3      	ldr	r3, [r4, #12]
d00595f0:	2b00      	cmp	r3, #0
d00595f2:	d06d      	beq.n	d00596d0 <submitWorldEntities+0xf4>
d00595f4:	f894 2035 	ldrb.w	r2, [r4, #53]	; 0x35
d00595f8:	07d2      	lsls	r2, r2, #31
d00595fa:	d569      	bpl.n	d00596d0 <submitWorldEntities+0xf4>
d00595fc:	edd5 6a01 	vldr	s13, [r5, #4]
d0059600:	ed94 7a01 	vldr	s14, [r4, #4]
d0059604:	ed95 5a00 	vldr	s10, [r5]
d0059608:	ee37 7a66 	vsub.f32	s14, s14, s13
d005960c:	edd5 7a0d 	vldr	s15, [r5, #52]	; 0x34
d0059610:	edd4 6a00 	vldr	s13, [r4]
d0059614:	edd5 5a0c 	vldr	s11, [r5, #48]	; 0x30
d0059618:	ee76 6ac5 	vsub.f32	s13, s13, s10
d005961c:	ed94 6a02 	vldr	s12, [r4, #8]
d0059620:	ee67 7a27 	vmul.f32	s15, s14, s15
d0059624:	ed95 5a02 	vldr	s10, [r5, #8]
d0059628:	edd5 4a0e 	vldr	s9, [r5, #56]	; 0x38
d005962c:	ee36 6a45 	vsub.f32	s12, s12, s10
d0059630:	ed93 5a06 	vldr	s10, [r3, #24]
d0059634:	eee6 7aa5 	vfma.f32	s15, s13, s11
d0059638:	edd5 5a11 	vldr	s11, [r5, #68]	; 0x44
d005963c:	eee6 7a24 	vfma.f32	s15, s12, s9
d0059640:	ee77 4ac5 	vsub.f32	s9, s15, s10
d0059644:	eef4 4ae5 	vcmpe.f32	s9, s11
d0059648:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005964c:	dc40      	bgt.n	d00596d0 <submitWorldEntities+0xf4>
d005964e:	ee75 4a27 	vadd.f32	s9, s10, s15
d0059652:	edd5 5a10 	vldr	s11, [r5, #64]	; 0x40
d0059656:	eef4 4ae5 	vcmpe.f32	s9, s11
d005965a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005965e:	d437      	bmi.n	d00596d0 <submitWorldEntities+0xf4>
d0059660:	edd5 5a07 	vldr	s11, [r5, #28]
d0059664:	eeb1 4a64 	vneg.f32	s8, s9
d0059668:	ed95 3a08 	vldr	s6, [r5, #32]
d005966c:	ee67 5a25 	vmul.f32	s11, s14, s11
d0059670:	edd5 3a06 	vldr	s7, [r5, #24]
d0059674:	eee6 5a03 	vfma.f32	s11, s12, s6
d0059678:	eee6 5aa3 	vfma.f32	s11, s13, s7
d005967c:	eef4 5ac4 	vcmpe.f32	s11, s8
d0059680:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d0059684:	d424      	bmi.n	d00596d0 <submitWorldEntities+0xf4>
d0059686:	eef4 5ae4 	vcmpe.f32	s11, s9
d005968a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005968e:	dc1f      	bgt.n	d00596d0 <submitWorldEntities+0xf4>
d0059690:	edd5 5a0a 	vldr	s11, [r5, #40]	; 0x28
d0059694:	edd5 4a0b 	vldr	s9, [r5, #44]	; 0x2c
d0059698:	ee27 7a25 	vmul.f32	s14, s14, s11
d005969c:	ed95 4a15 	vldr	s8, [r5, #84]	; 0x54
d00596a0:	edd5 5a09 	vldr	s11, [r5, #36]	; 0x24
d00596a4:	eea7 5a84 	vfma.f32	s10, s15, s8
d00596a8:	eea6 7a24 	vfma.f32	s14, s12, s9
d00596ac:	eef1 7a45 	vneg.f32	s15, s10
d00596b0:	eea6 7aa5 	vfma.f32	s14, s13, s11
d00596b4:	eeb4 7ae7 	vcmpe.f32	s14, s15
d00596b8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00596bc:	d408      	bmi.n	d00596d0 <submitWorldEntities+0xf4>
d00596be:	eeb4 7ac5 	vcmpe.f32	s14, s10
d00596c2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d00596c6:	dc03      	bgt.n	d00596d0 <submitWorldEntities+0xf4>
d00596c8:	4629      	mov	r1, r5
d00596ca:	4620      	mov	r0, r4
d00596cc:	f7ff f990 	bl	d00589f0 <submitEntitySolid>
d00596d0:	3460      	adds	r4, #96	; 0x60
d00596d2:	42a6      	cmp	r6, r4
d00596d4:	d187      	bne.n	d00595e6 <submitWorldEntities+0xa>
d00596d6:	bd70      	pop	{r4, r5, r6, pc}
d00596d8:	d012b2a0 	.word	0xd012b2a0

d00596dc <Render3D>:
d00596dc:	4aa2      	ldr	r2, [pc, #648]	; (d0059968 <Render3D+0x28c>)
d00596de:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d00596e2:	7813      	ldrb	r3, [r2, #0]
d00596e4:	4604      	mov	r4, r0
d00596e6:	7850      	ldrb	r0, [r2, #1]
d00596e8:	7891      	ldrb	r1, [r2, #2]
d00596ea:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
d00596ee:	78d2      	ldrb	r2, [r2, #3]
d00596f0:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
d00596f4:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
d00596f8:	ed2d 8b02 	vpush	{d8}
d00596fc:	6a9b      	ldr	r3, [r3, #40]	; 0x28
d00596fe:	b088      	sub	sp, #32
d0059700:	4798      	blx	r3
d0059702:	b128      	cbz	r0, d0059710 <Render3D+0x34>
d0059704:	4999      	ldr	r1, [pc, #612]	; (d005996c <Render3D+0x290>)
d0059706:	f100 0260 	add.w	r2, r0, #96	; 0x60
d005970a:	4b99      	ldr	r3, [pc, #612]	; (d0059970 <Render3D+0x294>)
d005970c:	6008      	str	r0, [r1, #0]
d005970e:	601a      	str	r2, [r3, #0]
d0059710:	4f98      	ldr	r7, [pc, #608]	; (d0059974 <Render3D+0x298>)
d0059712:	2600      	movs	r6, #0
d0059714:	4620      	mov	r0, r4
d0059716:	603e      	str	r6, [r7, #0]
d0059718:	f7ff ff60 	bl	d00595dc <submitWorldEntities>
d005971c:	4620      	mov	r0, r4
d005971e:	f7fb ffdb 	bl	d00556d8 <sb3dParticlesRender>
d0059722:	4b95      	ldr	r3, [pc, #596]	; (d0059978 <Render3D+0x29c>)
d0059724:	681d      	ldr	r5, [r3, #0]
d0059726:	2d00      	cmp	r5, #0
d0059728:	f040 80cf 	bne.w	d00598ca <Render3D+0x1ee>
d005972c:	f8df 8254 	ldr.w	r8, [pc, #596]	; d0059984 <Render3D+0x2a8>
d0059730:	f8df 9254 	ldr.w	r9, [pc, #596]	; d0059988 <Render3D+0x2ac>
d0059734:	0168      	lsls	r0, r5, #5
d0059736:	f7f9 f9af 	bl	d0052a98 <beginDepthBand>
d005973a:	f8d8 6000 	ldr.w	r6, [r8]
d005973e:	2e00      	cmp	r6, #0
d0059740:	f040 8090 	bne.w	d0059864 <Render3D+0x188>
d0059744:	f8d9 a000 	ldr.w	sl, [r9]
d0059748:	683a      	ldr	r2, [r7, #0]
d005974a:	f1ba 0f00 	cmp.w	sl, #0
d005974e:	d158      	bne.n	d0059802 <Render3D+0x126>
d0059750:	2a00      	cmp	r2, #0
d0059752:	dd4e      	ble.n	d00597f2 <Render3D+0x116>
d0059754:	4c89      	ldr	r4, [pc, #548]	; (d005997c <Render3D+0x2a0>)
d0059756:	e021      	b.n	d005979c <Render3D+0xc0>
d0059758:	f894 1036 	ldrb.w	r1, [r4, #54]	; 0x36
d005975c:	8ca2      	ldrh	r2, [r4, #36]	; 0x24
d005975e:	8c20      	ldrh	r0, [r4, #32]
d0059760:	8c66      	ldrh	r6, [r4, #34]	; 0x22
d0059762:	9305      	str	r3, [sp, #20]
d0059764:	9106      	str	r1, [sp, #24]
d0059766:	9204      	str	r2, [sp, #16]
d0059768:	9603      	str	r6, [sp, #12]
d005976a:	9002      	str	r0, [sp, #8]
d005976c:	6963      	ldr	r3, [r4, #20]
d005976e:	9301      	str	r3, [sp, #4]
d0059770:	6923      	ldr	r3, [r4, #16]
d0059772:	9300      	str	r3, [sp, #0]
d0059774:	edd4 1a07 	vldr	s3, [r4, #28]
d0059778:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d005977c:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0059780:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0059784:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d0059788:	e9d4 0100 	ldrd	r0, r1, [r4]
d005978c:	f7fa fb6a 	bl	d0053e64 <fillTriangleDitherBayerT>
d0059790:	683a      	ldr	r2, [r7, #0]
d0059792:	f10a 0a01 	add.w	sl, sl, #1
d0059796:	3440      	adds	r4, #64	; 0x40
d0059798:	4592      	cmp	sl, r2
d005979a:	da2a      	bge.n	d00597f2 <Render3D+0x116>
d005979c:	f894 303c 	ldrb.w	r3, [r4, #60]	; 0x3c
d00597a0:	42ab      	cmp	r3, r5
d00597a2:	dcf6      	bgt.n	d0059792 <Render3D+0xb6>
d00597a4:	f894 303d 	ldrb.w	r3, [r4, #61]	; 0x3d
d00597a8:	42ab      	cmp	r3, r5
d00597aa:	dbf2      	blt.n	d0059792 <Render3D+0xb6>
d00597ac:	f894 3034 	ldrb.w	r3, [r4, #52]	; 0x34
d00597b0:	06da      	lsls	r2, r3, #27
d00597b2:	d4d1      	bmi.n	d0059758 <Render3D+0x7c>
d00597b4:	8ca2      	ldrh	r2, [r4, #36]	; 0x24
d00597b6:	f10a 0a01 	add.w	sl, sl, #1
d00597ba:	8c20      	ldrh	r0, [r4, #32]
d00597bc:	6961      	ldr	r1, [r4, #20]
d00597be:	8c66      	ldrh	r6, [r4, #34]	; 0x22
d00597c0:	9305      	str	r3, [sp, #20]
d00597c2:	9204      	str	r2, [sp, #16]
d00597c4:	9603      	str	r6, [sp, #12]
d00597c6:	9002      	str	r0, [sp, #8]
d00597c8:	9101      	str	r1, [sp, #4]
d00597ca:	6923      	ldr	r3, [r4, #16]
d00597cc:	9300      	str	r3, [sp, #0]
d00597ce:	edd4 1a07 	vldr	s3, [r4, #28]
d00597d2:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00597d6:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00597da:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00597de:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d00597e2:	e9d4 0100 	ldrd	r0, r1, [r4]
d00597e6:	f7f9 fe25 	bl	d0053434 <fillTriangleDitherBayer>
d00597ea:	683a      	ldr	r2, [r7, #0]
d00597ec:	3440      	adds	r4, #64	; 0x40
d00597ee:	4592      	cmp	sl, r2
d00597f0:	dbd4      	blt.n	d005979c <Render3D+0xc0>
d00597f2:	3501      	adds	r5, #1
d00597f4:	2d0a      	cmp	r5, #10
d00597f6:	d19d      	bne.n	d0059734 <Render3D+0x58>
d00597f8:	b008      	add	sp, #32
d00597fa:	ecbd 8b02 	vpop	{d8}
d00597fe:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0059802:	2a00      	cmp	r2, #0
d0059804:	ddf5      	ble.n	d00597f2 <Render3D+0x116>
d0059806:	4c5d      	ldr	r4, [pc, #372]	; (d005997c <Render3D+0x2a0>)
d0059808:	f894 303c 	ldrb.w	r3, [r4, #60]	; 0x3c
d005980c:	3601      	adds	r6, #1
d005980e:	42ab      	cmp	r3, r5
d0059810:	dc1f      	bgt.n	d0059852 <Render3D+0x176>
d0059812:	f894 303d 	ldrb.w	r3, [r4, #61]	; 0x3d
d0059816:	42ab      	cmp	r3, r5
d0059818:	db1b      	blt.n	d0059852 <Render3D+0x176>
d005981a:	f894 2034 	ldrb.w	r2, [r4, #52]	; 0x34
d005981e:	8ca3      	ldrh	r3, [r4, #36]	; 0x24
d0059820:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d0059822:	8c21      	ldrh	r1, [r4, #32]
d0059824:	9205      	str	r2, [sp, #20]
d0059826:	9304      	str	r3, [sp, #16]
d0059828:	9003      	str	r0, [sp, #12]
d005982a:	9102      	str	r1, [sp, #8]
d005982c:	6963      	ldr	r3, [r4, #20]
d005982e:	9301      	str	r3, [sp, #4]
d0059830:	6923      	ldr	r3, [r4, #16]
d0059832:	9300      	str	r3, [sp, #0]
d0059834:	edd4 1a07 	vldr	s3, [r4, #28]
d0059838:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d005983c:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d0059840:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d0059844:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d0059848:	e9d4 0100 	ldrd	r0, r1, [r4]
d005984c:	f7fb f854 	bl	d00548f8 <fillTriangleDitherBayer2Mode>
d0059850:	683a      	ldr	r2, [r7, #0]
d0059852:	4296      	cmp	r6, r2
d0059854:	f104 0440 	add.w	r4, r4, #64	; 0x40
d0059858:	dbd6      	blt.n	d0059808 <Render3D+0x12c>
d005985a:	3501      	adds	r5, #1
d005985c:	2d0a      	cmp	r5, #10
d005985e:	f47f af69 	bne.w	d0059734 <Render3D+0x58>
d0059862:	e7c9      	b.n	d00597f8 <Render3D+0x11c>
d0059864:	683a      	ldr	r2, [r7, #0]
d0059866:	2a00      	cmp	r2, #0
d0059868:	ddc3      	ble.n	d00597f2 <Render3D+0x116>
d005986a:	4c44      	ldr	r4, [pc, #272]	; (d005997c <Render3D+0x2a0>)
d005986c:	2600      	movs	r6, #0
d005986e:	f894 303c 	ldrb.w	r3, [r4, #60]	; 0x3c
d0059872:	3601      	adds	r6, #1
d0059874:	42ab      	cmp	r3, r5
d0059876:	dc1f      	bgt.n	d00598b8 <Render3D+0x1dc>
d0059878:	f894 303d 	ldrb.w	r3, [r4, #61]	; 0x3d
d005987c:	42ab      	cmp	r3, r5
d005987e:	db1b      	blt.n	d00598b8 <Render3D+0x1dc>
d0059880:	f894 2034 	ldrb.w	r2, [r4, #52]	; 0x34
d0059884:	8ca3      	ldrh	r3, [r4, #36]	; 0x24
d0059886:	8c60      	ldrh	r0, [r4, #34]	; 0x22
d0059888:	8c21      	ldrh	r1, [r4, #32]
d005988a:	9205      	str	r2, [sp, #20]
d005988c:	9304      	str	r3, [sp, #16]
d005988e:	9003      	str	r0, [sp, #12]
d0059890:	9102      	str	r1, [sp, #8]
d0059892:	6963      	ldr	r3, [r4, #20]
d0059894:	9301      	str	r3, [sp, #4]
d0059896:	6923      	ldr	r3, [r4, #16]
d0059898:	9300      	str	r3, [sp, #0]
d005989a:	edd4 1a07 	vldr	s3, [r4, #28]
d005989e:	ed94 1a0c 	vldr	s2, [r4, #48]	; 0x30
d00598a2:	edd4 0a0b 	vldr	s1, [r4, #44]	; 0x2c
d00598a6:	ed94 0a0a 	vldr	s0, [r4, #40]	; 0x28
d00598aa:	e9d4 2302 	ldrd	r2, r3, [r4, #8]
d00598ae:	e9d4 0100 	ldrd	r0, r1, [r4]
d00598b2:	f7f9 f989 	bl	d0052bc8 <fillTriangleFlat>
d00598b6:	683a      	ldr	r2, [r7, #0]
d00598b8:	4296      	cmp	r6, r2
d00598ba:	f104 0440 	add.w	r4, r4, #64	; 0x40
d00598be:	dbd6      	blt.n	d005986e <Render3D+0x192>
d00598c0:	3501      	adds	r5, #1
d00598c2:	2d0a      	cmp	r5, #10
d00598c4:	f47f af36 	bne.w	d0059734 <Render3D+0x58>
d00598c8:	e796      	b.n	d00597f8 <Render3D+0x11c>
d00598ca:	683b      	ldr	r3, [r7, #0]
d00598cc:	42b3      	cmp	r3, r6
d00598ce:	dd93      	ble.n	d00597f8 <Render3D+0x11c>
d00598d0:	eeb6 8a00 	vmov.f32	s16, #96	; 0x3f000000  0.5
d00598d4:	4c29      	ldr	r4, [pc, #164]	; (d005997c <Render3D+0x2a0>)
d00598d6:	eddf 8a2a 	vldr	s17, [pc, #168]	; d0059980 <Render3D+0x2a4>
d00598da:	edd4 7a07 	vldr	s15, [r4, #28]
d00598de:	3601      	adds	r6, #1
d00598e0:	f894 3035 	ldrb.w	r3, [r4, #53]	; 0x35
d00598e4:	ee77 7a88 	vadd.f32	s15, s15, s16
d00598e8:	ee07 3a10 	vmov	s14, r3
d00598ec:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d00598f0:	eeb8 7a47 	vcvt.f32.u32	s14, s14
d00598f4:	ee17 1a90 	vmov	r1, s15
d00598f8:	eef0 7a48 	vmov.f32	s15, s16
d00598fc:	2904      	cmp	r1, #4
d00598fe:	eee7 7a28 	vfma.f32	s15, s14, s17
d0059902:	bfa8      	it	ge
d0059904:	2104      	movge	r1, #4
d0059906:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
d005990a:	b153      	cbz	r3, d0059922 <Render3D+0x246>
d005990c:	eefd 7ae7 	vcvt.s32.f32	s15, s15
d0059910:	ee17 3a90 	vmov	r3, s15
d0059914:	f1c3 0305 	rsb	r3, r3, #5
d0059918:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
d005991c:	4299      	cmp	r1, r3
d005991e:	bfa8      	it	ge
d0059920:	4619      	movge	r1, r3
d0059922:	f894 0034 	ldrb.w	r0, [r4, #52]	; 0x34
d0059926:	f7f9 f93f 	bl	d0052ba8 <shadeColor>
d005992a:	4605      	mov	r5, r0
d005992c:	68e3      	ldr	r3, [r4, #12]
d005992e:	68a2      	ldr	r2, [r4, #8]
d0059930:	6861      	ldr	r1, [r4, #4]
d0059932:	9000      	str	r0, [sp, #0]
d0059934:	6820      	ldr	r0, [r4, #0]
d0059936:	f7f9 f8e9 	bl	d0052b0c <drawLine>
d005993a:	9500      	str	r5, [sp, #0]
d005993c:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
d0059940:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
d0059944:	f7f9 f8e2 	bl	d0052b0c <drawLine>
d0059948:	9500      	str	r5, [sp, #0]
d005994a:	e9d4 2300 	ldrd	r2, r3, [r4]
d005994e:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
d0059952:	f7f9 f8db 	bl	d0052b0c <drawLine>
d0059956:	683b      	ldr	r3, [r7, #0]
d0059958:	3440      	adds	r4, #64	; 0x40
d005995a:	42b3      	cmp	r3, r6
d005995c:	dcbd      	bgt.n	d00598da <Render3D+0x1fe>
d005995e:	b008      	add	sp, #32
d0059960:	ecbd 8b02 	vpop	{d8}
d0059964:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d0059968:	2001f000 	.word	0x2001f000
d005996c:	d009f140 	.word	0xd009f140
d0059970:	d009f144 	.word	0xd009f144
d0059974:	d009f14c 	.word	0xd009f14c
d0059978:	d011f164 	.word	0xd011f164
d005997c:	d009f160 	.word	0xd009f160
d0059980:	3ca0a0a1 	.word	0x3ca0a0a1
d0059984:	d009f148 	.word	0xd009f148
d0059988:	d011f160 	.word	0xd011f160

d005998c <freeMesh>:
d005998c:	b1b8      	cbz	r0, d00599be <freeMesh+0x32>
d005998e:	b510      	push	{r4, lr}
d0059990:	4604      	mov	r4, r0
d0059992:	6800      	ldr	r0, [r0, #0]
d0059994:	b108      	cbz	r0, d005999a <freeMesh+0xe>
d0059996:	f000 fc51 	bl	d005a23c <free>
d005999a:	6920      	ldr	r0, [r4, #16]
d005999c:	b108      	cbz	r0, d00599a2 <freeMesh+0x16>
d005999e:	f000 fc4d 	bl	d005a23c <free>
d00599a2:	68a0      	ldr	r0, [r4, #8]
d00599a4:	b108      	cbz	r0, d00599aa <freeMesh+0x1e>
d00599a6:	f000 fc49 	bl	d005a23c <free>
d00599aa:	2300      	movs	r3, #0
d00599ac:	2200      	movs	r2, #0
d00599ae:	6023      	str	r3, [r4, #0]
d00599b0:	6123      	str	r3, [r4, #16]
d00599b2:	60a3      	str	r3, [r4, #8]
d00599b4:	6063      	str	r3, [r4, #4]
d00599b6:	6163      	str	r3, [r4, #20]
d00599b8:	60e3      	str	r3, [r4, #12]
d00599ba:	61a2      	str	r2, [r4, #24]
d00599bc:	bd10      	pop	{r4, pc}
d00599be:	4770      	bx	lr

d00599c0 <loadMeshSB3D>:
d00599c0:	2800      	cmp	r0, #0
d00599c2:	f000 80fe 	beq.w	d0059bc2 <loadMeshSB3D+0x202>
d00599c6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d00599ca:	fab1 f781 	clz	r7, r1
d00599ce:	460c      	mov	r4, r1
d00599d0:	ed2d 8b02 	vpush	{d8}
d00599d4:	097f      	lsrs	r7, r7, #5
d00599d6:	b08c      	sub	sp, #48	; 0x30
d00599d8:	2900      	cmp	r1, #0
d00599da:	f000 80ec 	beq.w	d0059bb6 <loadMeshSB3D+0x1f6>
d00599de:	4e7e      	ldr	r6, [pc, #504]	; (d0059bd8 <loadMeshSB3D+0x218>)
d00599e0:	4605      	mov	r5, r0
d00599e2:	2240      	movs	r2, #64	; 0x40
d00599e4:	4639      	mov	r1, r7
d00599e6:	4620      	mov	r0, r4
d00599e8:	eeb0 8a40 	vmov.f32	s16, s0
d00599ec:	f000 fc4a 	bl	d005a284 <memset>
d00599f0:	7933      	ldrb	r3, [r6, #4]
d00599f2:	f896 c005 	ldrb.w	ip, [r6, #5]
d00599f6:	4629      	mov	r1, r5
d00599f8:	79b2      	ldrb	r2, [r6, #6]
d00599fa:	4638      	mov	r0, r7
d00599fc:	ea43 230c 	orr.w	r3, r3, ip, lsl #8
d0059a00:	79f5      	ldrb	r5, [r6, #7]
d0059a02:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
d0059a06:	2201      	movs	r2, #1
d0059a08:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
d0059a0c:	681b      	ldr	r3, [r3, #0]
d0059a0e:	681b      	ldr	r3, [r3, #0]
d0059a10:	4798      	blx	r3
d0059a12:	2800      	cmp	r0, #0
d0059a14:	f040 80cf 	bne.w	d0059bb6 <loadMeshSB3D+0x1f6>
d0059a18:	f896 c004 	ldrb.w	ip, [r6, #4]
d0059a1c:	2204      	movs	r2, #4
d0059a1e:	7971      	ldrb	r1, [r6, #5]
d0059a20:	ab02      	add	r3, sp, #8
d0059a22:	79b7      	ldrb	r7, [r6, #6]
d0059a24:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
d0059a28:	79f5      	ldrb	r5, [r6, #7]
d0059a2a:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0059a2e:	a903      	add	r1, sp, #12
d0059a30:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d0059a34:	682d      	ldr	r5, [r5, #0]
d0059a36:	68ad      	ldr	r5, [r5, #8]
d0059a38:	47a8      	blx	r5
d0059a3a:	2800      	cmp	r0, #0
d0059a3c:	f040 80b8 	bne.w	d0059bb0 <loadMeshSB3D+0x1f0>
d0059a40:	9a02      	ldr	r2, [sp, #8]
d0059a42:	2a04      	cmp	r2, #4
d0059a44:	f040 80b4 	bne.w	d0059bb0 <loadMeshSB3D+0x1f0>
d0059a48:	4b64      	ldr	r3, [pc, #400]	; (d0059bdc <loadMeshSB3D+0x21c>)
d0059a4a:	9903      	ldr	r1, [sp, #12]
d0059a4c:	4299      	cmp	r1, r3
d0059a4e:	f040 80af 	bne.w	d0059bb0 <loadMeshSB3D+0x1f0>
d0059a52:	7931      	ldrb	r1, [r6, #4]
d0059a54:	ab02      	add	r3, sp, #8
d0059a56:	7975      	ldrb	r5, [r6, #5]
d0059a58:	79b7      	ldrb	r7, [r6, #6]
d0059a5a:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
d0059a5e:	79f5      	ldrb	r5, [r6, #7]
d0059a60:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0059a64:	a904      	add	r1, sp, #16
d0059a66:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d0059a6a:	682d      	ldr	r5, [r5, #0]
d0059a6c:	68ad      	ldr	r5, [r5, #8]
d0059a6e:	47a8      	blx	r5
d0059a70:	2800      	cmp	r0, #0
d0059a72:	f040 809d 	bne.w	d0059bb0 <loadMeshSB3D+0x1f0>
d0059a76:	9a02      	ldr	r2, [sp, #8]
d0059a78:	2a04      	cmp	r2, #4
d0059a7a:	f040 8099 	bne.w	d0059bb0 <loadMeshSB3D+0x1f0>
d0059a7e:	9b04      	ldr	r3, [sp, #16]
d0059a80:	2b05      	cmp	r3, #5
d0059a82:	f040 8095 	bne.w	d0059bb0 <loadMeshSB3D+0x1f0>
d0059a86:	7931      	ldrb	r1, [r6, #4]
d0059a88:	ab02      	add	r3, sp, #8
d0059a8a:	7975      	ldrb	r5, [r6, #5]
d0059a8c:	79b7      	ldrb	r7, [r6, #6]
d0059a8e:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
d0059a92:	79f5      	ldrb	r5, [r6, #7]
d0059a94:	ea41 4707 	orr.w	r7, r1, r7, lsl #16
d0059a98:	a905      	add	r1, sp, #20
d0059a9a:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d0059a9e:	682d      	ldr	r5, [r5, #0]
d0059aa0:	68ad      	ldr	r5, [r5, #8]
d0059aa2:	47a8      	blx	r5
d0059aa4:	2800      	cmp	r0, #0
d0059aa6:	f040 8083 	bne.w	d0059bb0 <loadMeshSB3D+0x1f0>
d0059aaa:	9a02      	ldr	r2, [sp, #8]
d0059aac:	2a04      	cmp	r2, #4
d0059aae:	d17f      	bne.n	d0059bb0 <loadMeshSB3D+0x1f0>
d0059ab0:	7930      	ldrb	r0, [r6, #4]
d0059ab2:	ab02      	add	r3, sp, #8
d0059ab4:	7975      	ldrb	r5, [r6, #5]
d0059ab6:	a906      	add	r1, sp, #24
d0059ab8:	79b7      	ldrb	r7, [r6, #6]
d0059aba:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
d0059abe:	79f5      	ldrb	r5, [r6, #7]
d0059ac0:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d0059ac4:	2000      	movs	r0, #0
d0059ac6:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d0059aca:	682d      	ldr	r5, [r5, #0]
d0059acc:	68ad      	ldr	r5, [r5, #8]
d0059ace:	47a8      	blx	r5
d0059ad0:	4605      	mov	r5, r0
d0059ad2:	2800      	cmp	r0, #0
d0059ad4:	d16c      	bne.n	d0059bb0 <loadMeshSB3D+0x1f0>
d0059ad6:	9b02      	ldr	r3, [sp, #8]
d0059ad8:	2b04      	cmp	r3, #4
d0059ada:	d169      	bne.n	d0059bb0 <loadMeshSB3D+0x1f0>
d0059adc:	9b05      	ldr	r3, [sp, #20]
d0059ade:	2b00      	cmp	r3, #0
d0059ae0:	d066      	beq.n	d0059bb0 <loadMeshSB3D+0x1f0>
d0059ae2:	9f06      	ldr	r7, [sp, #24]
d0059ae4:	2f00      	cmp	r7, #0
d0059ae6:	d063      	beq.n	d0059bb0 <loadMeshSB3D+0x1f0>
d0059ae8:	eb03 0043 	add.w	r0, r3, r3, lsl #1
d0059aec:	6063      	str	r3, [r4, #4]
d0059aee:	6167      	str	r7, [r4, #20]
d0059af0:	0080      	lsls	r0, r0, #2
d0059af2:	60e5      	str	r5, [r4, #12]
d0059af4:	f000 fb9a 	bl	d005a22c <malloc>
d0059af8:	4603      	mov	r3, r0
d0059afa:	0138      	lsls	r0, r7, #4
d0059afc:	6023      	str	r3, [r4, #0]
d0059afe:	461f      	mov	r7, r3
d0059b00:	f000 fb94 	bl	d005a22c <malloc>
d0059b04:	60a5      	str	r5, [r4, #8]
d0059b06:	6120      	str	r0, [r4, #16]
d0059b08:	2800      	cmp	r0, #0
d0059b0a:	d05c      	beq.n	d0059bc6 <loadMeshSB3D+0x206>
d0059b0c:	fab7 f887 	clz	r8, r7
d0059b10:	ea4f 1858 	mov.w	r8, r8, lsr #5
d0059b14:	b9df      	cbnz	r7, d0059b4e <loadMeshSB3D+0x18e>
d0059b16:	e056      	b.n	d0059bc6 <loadMeshSB3D+0x206>
d0059b18:	9b02      	ldr	r3, [sp, #8]
d0059b1a:	2b0c      	cmp	r3, #12
d0059b1c:	d12e      	bne.n	d0059b7c <loadMeshSB3D+0x1bc>
d0059b1e:	eddd 6a09 	vldr	s13, [sp, #36]	; 0x24
d0059b22:	ed9d 7a0a 	vldr	s14, [sp, #40]	; 0x28
d0059b26:	eddd 7a0b 	vldr	s15, [sp, #44]	; 0x2c
d0059b2a:	ee66 6a88 	vmul.f32	s13, s13, s16
d0059b2e:	6823      	ldr	r3, [r4, #0]
d0059b30:	ee27 7a08 	vmul.f32	s14, s14, s16
d0059b34:	9905      	ldr	r1, [sp, #20]
d0059b36:	ee67 7a88 	vmul.f32	s15, s15, s16
d0059b3a:	eb03 0382 	add.w	r3, r3, r2, lsl #2
d0059b3e:	4541      	cmp	r1, r8
d0059b40:	edc3 6a00 	vstr	s13, [r3]
d0059b44:	ed83 7a01 	vstr	s14, [r3, #4]
d0059b48:	edc3 7a02 	vstr	s15, [r3, #8]
d0059b4c:	d948      	bls.n	d0059be0 <loadMeshSB3D+0x220>
d0059b4e:	7930      	ldrb	r0, [r6, #4]
d0059b50:	220c      	movs	r2, #12
d0059b52:	7975      	ldrb	r5, [r6, #5]
d0059b54:	ab02      	add	r3, sp, #8
d0059b56:	79b7      	ldrb	r7, [r6, #6]
d0059b58:	a909      	add	r1, sp, #36	; 0x24
d0059b5a:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
d0059b5e:	79f5      	ldrb	r5, [r6, #7]
d0059b60:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
d0059b64:	2000      	movs	r0, #0
d0059b66:	ea47 6505 	orr.w	r5, r7, r5, lsl #24
d0059b6a:	682d      	ldr	r5, [r5, #0]
d0059b6c:	68ad      	ldr	r5, [r5, #8]
d0059b6e:	47a8      	blx	r5
d0059b70:	eb08 0248 	add.w	r2, r8, r8, lsl #1
d0059b74:	f108 0801 	add.w	r8, r8, #1
d0059b78:	2800      	cmp	r0, #0
d0059b7a:	d0cd      	beq.n	d0059b18 <loadMeshSB3D+0x158>
d0059b7c:	6820      	ldr	r0, [r4, #0]
d0059b7e:	b108      	cbz	r0, d0059b84 <loadMeshSB3D+0x1c4>
d0059b80:	f000 fb5c 	bl	d005a23c <free>
d0059b84:	6920      	ldr	r0, [r4, #16]
d0059b86:	b108      	cbz	r0, d0059b8c <loadMeshSB3D+0x1cc>
d0059b88:	f000 fb58 	bl	d005a23c <free>
d0059b8c:	68a0      	ldr	r0, [r4, #8]
d0059b8e:	b108      	cbz	r0, d0059b94 <loadMeshSB3D+0x1d4>
d0059b90:	f000 fb54 	bl	d005a23c <free>
d0059b94:	2500      	movs	r5, #0
d0059b96:	2300      	movs	r3, #0
d0059b98:	4628      	mov	r0, r5
d0059b9a:	6025      	str	r5, [r4, #0]
d0059b9c:	6125      	str	r5, [r4, #16]
d0059b9e:	60a5      	str	r5, [r4, #8]
d0059ba0:	6065      	str	r5, [r4, #4]
d0059ba2:	6165      	str	r5, [r4, #20]
d0059ba4:	60e5      	str	r5, [r4, #12]
d0059ba6:	61a3      	str	r3, [r4, #24]
d0059ba8:	f000 f97c 	bl	d0059ea4 <fclose>
d0059bac:	4628      	mov	r0, r5
d0059bae:	e003      	b.n	d0059bb8 <loadMeshSB3D+0x1f8>
d0059bb0:	2000      	movs	r0, #0
d0059bb2:	f000 f977 	bl	d0059ea4 <fclose>
d0059bb6:	2000      	movs	r0, #0
d0059bb8:	b00c      	add	sp, #48	; 0x30
d0059bba:	ecbd 8b02 	vpop	{d8}
d0059bbe:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0059bc2:	2000      	movs	r0, #0
d0059bc4:	4770      	bx	lr
d0059bc6:	4620      	mov	r0, r4
d0059bc8:	f7ff fee0 	bl	d005998c <freeMesh>
d0059bcc:	2000      	movs	r0, #0
d0059bce:	f000 f969 	bl	d0059ea4 <fclose>
d0059bd2:	2000      	movs	r0, #0
d0059bd4:	e7f0      	b.n	d0059bb8 <loadMeshSB3D+0x1f8>
d0059bd6:	bf00      	nop
d0059bd8:	2001f000 	.word	0x2001f000
d0059bdc:	44334253 	.word	0x44334253
d0059be0:	9b06      	ldr	r3, [sp, #24]
d0059be2:	2b00      	cmp	r3, #0
d0059be4:	f000 80de 	beq.w	d0059da4 <loadMeshSB3D+0x3e4>
d0059be8:	4605      	mov	r5, r0
d0059bea:	7937      	ldrb	r7, [r6, #4]
d0059bec:	ab02      	add	r3, sp, #8
d0059bee:	f896 c005 	ldrb.w	ip, [r6, #5]
d0059bf2:	2204      	movs	r2, #4
d0059bf4:	79b0      	ldrb	r0, [r6, #6]
d0059bf6:	a907      	add	r1, sp, #28
d0059bf8:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d0059bfc:	f896 c007 	ldrb.w	ip, [r6, #7]
d0059c00:	ea47 4700 	orr.w	r7, r7, r0, lsl #16
d0059c04:	2000      	movs	r0, #0
d0059c06:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0059c0a:	683f      	ldr	r7, [r7, #0]
d0059c0c:	68bf      	ldr	r7, [r7, #8]
d0059c0e:	47b8      	blx	r7
d0059c10:	2800      	cmp	r0, #0
d0059c12:	d1d8      	bne.n	d0059bc6 <loadMeshSB3D+0x206>
d0059c14:	9a02      	ldr	r2, [sp, #8]
d0059c16:	2a04      	cmp	r2, #4
d0059c18:	d1d5      	bne.n	d0059bc6 <loadMeshSB3D+0x206>
d0059c1a:	7931      	ldrb	r1, [r6, #4]
d0059c1c:	ab02      	add	r3, sp, #8
d0059c1e:	f896 c005 	ldrb.w	ip, [r6, #5]
d0059c22:	f896 e006 	ldrb.w	lr, [r6, #6]
d0059c26:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d0059c2a:	f896 c007 	ldrb.w	ip, [r6, #7]
d0059c2e:	a908      	add	r1, sp, #32
d0059c30:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d0059c34:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0059c38:	683f      	ldr	r7, [r7, #0]
d0059c3a:	68bf      	ldr	r7, [r7, #8]
d0059c3c:	47b8      	blx	r7
d0059c3e:	2800      	cmp	r0, #0
d0059c40:	d1c1      	bne.n	d0059bc6 <loadMeshSB3D+0x206>
d0059c42:	9a02      	ldr	r2, [sp, #8]
d0059c44:	2a04      	cmp	r2, #4
d0059c46:	d1be      	bne.n	d0059bc6 <loadMeshSB3D+0x206>
d0059c48:	7931      	ldrb	r1, [r6, #4]
d0059c4a:	ab02      	add	r3, sp, #8
d0059c4c:	f896 c005 	ldrb.w	ip, [r6, #5]
d0059c50:	f896 e006 	ldrb.w	lr, [r6, #6]
d0059c54:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d0059c58:	f896 c007 	ldrb.w	ip, [r6, #7]
d0059c5c:	a909      	add	r1, sp, #36	; 0x24
d0059c5e:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d0059c62:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0059c66:	683f      	ldr	r7, [r7, #0]
d0059c68:	68bf      	ldr	r7, [r7, #8]
d0059c6a:	47b8      	blx	r7
d0059c6c:	2800      	cmp	r0, #0
d0059c6e:	d1aa      	bne.n	d0059bc6 <loadMeshSB3D+0x206>
d0059c70:	9b02      	ldr	r3, [sp, #8]
d0059c72:	2b04      	cmp	r3, #4
d0059c74:	d1a7      	bne.n	d0059bc6 <loadMeshSB3D+0x206>
d0059c76:	7937      	ldrb	r7, [r6, #4]
d0059c78:	ab02      	add	r3, sp, #8
d0059c7a:	f896 c005 	ldrb.w	ip, [r6, #5]
d0059c7e:	2201      	movs	r2, #1
d0059c80:	79b1      	ldrb	r1, [r6, #6]
d0059c82:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d0059c86:	f896 c007 	ldrb.w	ip, [r6, #7]
d0059c8a:	ea47 4701 	orr.w	r7, r7, r1, lsl #16
d0059c8e:	a901      	add	r1, sp, #4
d0059c90:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0059c94:	683f      	ldr	r7, [r7, #0]
d0059c96:	68bf      	ldr	r7, [r7, #8]
d0059c98:	47b8      	blx	r7
d0059c9a:	2800      	cmp	r0, #0
d0059c9c:	d193      	bne.n	d0059bc6 <loadMeshSB3D+0x206>
d0059c9e:	9a02      	ldr	r2, [sp, #8]
d0059ca0:	2a01      	cmp	r2, #1
d0059ca2:	d190      	bne.n	d0059bc6 <loadMeshSB3D+0x206>
d0059ca4:	7931      	ldrb	r1, [r6, #4]
d0059ca6:	ab02      	add	r3, sp, #8
d0059ca8:	f896 c005 	ldrb.w	ip, [r6, #5]
d0059cac:	f896 e006 	ldrb.w	lr, [r6, #6]
d0059cb0:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d0059cb4:	f896 c007 	ldrb.w	ip, [r6, #7]
d0059cb8:	f10d 0105 	add.w	r1, sp, #5
d0059cbc:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d0059cc0:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0059cc4:	683f      	ldr	r7, [r7, #0]
d0059cc6:	68bf      	ldr	r7, [r7, #8]
d0059cc8:	47b8      	blx	r7
d0059cca:	2800      	cmp	r0, #0
d0059ccc:	f47f af7b 	bne.w	d0059bc6 <loadMeshSB3D+0x206>
d0059cd0:	9b02      	ldr	r3, [sp, #8]
d0059cd2:	2b01      	cmp	r3, #1
d0059cd4:	f47f af77 	bne.w	d0059bc6 <loadMeshSB3D+0x206>
d0059cd8:	7937      	ldrb	r7, [r6, #4]
d0059cda:	ab02      	add	r3, sp, #8
d0059cdc:	f896 c005 	ldrb.w	ip, [r6, #5]
d0059ce0:	2201      	movs	r2, #1
d0059ce2:	79b0      	ldrb	r0, [r6, #6]
d0059ce4:	f10d 0106 	add.w	r1, sp, #6
d0059ce8:	ea47 270c 	orr.w	r7, r7, ip, lsl #8
d0059cec:	f896 c007 	ldrb.w	ip, [r6, #7]
d0059cf0:	ea47 4700 	orr.w	r7, r7, r0, lsl #16
d0059cf4:	2000      	movs	r0, #0
d0059cf6:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0059cfa:	683f      	ldr	r7, [r7, #0]
d0059cfc:	68bf      	ldr	r7, [r7, #8]
d0059cfe:	47b8      	blx	r7
d0059d00:	2800      	cmp	r0, #0
d0059d02:	f47f af60 	bne.w	d0059bc6 <loadMeshSB3D+0x206>
d0059d06:	9a02      	ldr	r2, [sp, #8]
d0059d08:	2a01      	cmp	r2, #1
d0059d0a:	f47f af5c 	bne.w	d0059bc6 <loadMeshSB3D+0x206>
d0059d0e:	7931      	ldrb	r1, [r6, #4]
d0059d10:	ab02      	add	r3, sp, #8
d0059d12:	f896 c005 	ldrb.w	ip, [r6, #5]
d0059d16:	f896 e006 	ldrb.w	lr, [r6, #6]
d0059d1a:	ea41 270c 	orr.w	r7, r1, ip, lsl #8
d0059d1e:	f896 c007 	ldrb.w	ip, [r6, #7]
d0059d22:	f10d 0107 	add.w	r1, sp, #7
d0059d26:	ea47 470e 	orr.w	r7, r7, lr, lsl #16
d0059d2a:	ea47 670c 	orr.w	r7, r7, ip, lsl #24
d0059d2e:	683f      	ldr	r7, [r7, #0]
d0059d30:	68bf      	ldr	r7, [r7, #8]
d0059d32:	47b8      	blx	r7
d0059d34:	2800      	cmp	r0, #0
d0059d36:	f47f af46 	bne.w	d0059bc6 <loadMeshSB3D+0x206>
d0059d3a:	9b02      	ldr	r3, [sp, #8]
d0059d3c:	2b01      	cmp	r3, #1
d0059d3e:	f47f af42 	bne.w	d0059bc6 <loadMeshSB3D+0x206>
d0059d42:	9907      	ldr	r1, [sp, #28]
d0059d44:	9b05      	ldr	r3, [sp, #20]
d0059d46:	4299      	cmp	r1, r3
d0059d48:	f4bf af3d 	bcs.w	d0059bc6 <loadMeshSB3D+0x206>
d0059d4c:	f8dd c020 	ldr.w	ip, [sp, #32]
d0059d50:	4563      	cmp	r3, ip
d0059d52:	f67f af38 	bls.w	d0059bc6 <loadMeshSB3D+0x206>
d0059d56:	9f09      	ldr	r7, [sp, #36]	; 0x24
d0059d58:	42bb      	cmp	r3, r7
d0059d5a:	f67f af34 	bls.w	d0059bc6 <loadMeshSB3D+0x206>
d0059d5e:	6922      	ldr	r2, [r4, #16]
d0059d60:	ea4f 1e05 	mov.w	lr, r5, lsl #4
d0059d64:	4603      	mov	r3, r0
d0059d66:	9806      	ldr	r0, [sp, #24]
d0059d68:	f842 100e 	str.w	r1, [r2, lr]
d0059d6c:	eb02 1205 	add.w	r2, r2, r5, lsl #4
d0059d70:	f89d 1004 	ldrb.w	r1, [sp, #4]
d0059d74:	3501      	adds	r5, #1
d0059d76:	f8c2 c004 	str.w	ip, [r2, #4]
d0059d7a:	f001 010f 	and.w	r1, r1, #15
d0059d7e:	f89d c005 	ldrb.w	ip, [sp, #5]
d0059d82:	6097      	str	r7, [r2, #8]
d0059d84:	42a8      	cmp	r0, r5
d0059d86:	f361 0307 	bfi	r3, r1, #0, #8
d0059d8a:	f89d 7006 	ldrb.w	r7, [sp, #6]
d0059d8e:	f89d 1007 	ldrb.w	r1, [sp, #7]
d0059d92:	f36c 230f 	bfi	r3, ip, #8, #8
d0059d96:	f367 4317 	bfi	r3, r7, #16, #8
d0059d9a:	f361 631f 	bfi	r3, r1, #24, #8
d0059d9e:	60d3      	str	r3, [r2, #12]
d0059da0:	f63f af23 	bhi.w	d0059bea <loadMeshSB3D+0x22a>
d0059da4:	2000      	movs	r0, #0
d0059da6:	f000 f87d 	bl	d0059ea4 <fclose>
d0059daa:	4620      	mov	r0, r4
d0059dac:	f7fc fd5c 	bl	d0056868 <meshComputeBoundsRadius>
d0059db0:	4620      	mov	r0, r4
d0059db2:	ed84 0a06 	vstr	s0, [r4, #24]
d0059db6:	f7f8 fe41 	bl	d0052a3c <meshSetDefaultMaterial>
d0059dba:	2001      	movs	r0, #1
d0059dbc:	e6fc      	b.n	d0059bb8 <loadMeshSB3D+0x1f8>
d0059dbe:	bf00      	nop

d0059dc0 <__errno>:
d0059dc0:	4b01      	ldr	r3, [pc, #4]	; (d0059dc8 <__errno+0x8>)
d0059dc2:	6818      	ldr	r0, [r3, #0]
d0059dc4:	4770      	bx	lr
d0059dc6:	bf00      	nop
d0059dc8:	d0090dcc 	.word	0xd0090dcc

d0059dcc <_fclose_r>:
d0059dcc:	b570      	push	{r4, r5, r6, lr}
d0059dce:	4605      	mov	r5, r0
d0059dd0:	460c      	mov	r4, r1
d0059dd2:	b911      	cbnz	r1, d0059dda <_fclose_r+0xe>
d0059dd4:	2600      	movs	r6, #0
d0059dd6:	4630      	mov	r0, r6
d0059dd8:	bd70      	pop	{r4, r5, r6, pc}
d0059dda:	b118      	cbz	r0, d0059de4 <_fclose_r+0x18>
d0059ddc:	6983      	ldr	r3, [r0, #24]
d0059dde:	b90b      	cbnz	r3, d0059de4 <_fclose_r+0x18>
d0059de0:	f000 f982 	bl	d005a0e8 <__sinit>
d0059de4:	4b2c      	ldr	r3, [pc, #176]	; (d0059e98 <_fclose_r+0xcc>)
d0059de6:	429c      	cmp	r4, r3
d0059de8:	d114      	bne.n	d0059e14 <_fclose_r+0x48>
d0059dea:	686c      	ldr	r4, [r5, #4]
d0059dec:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0059dee:	07d8      	lsls	r0, r3, #31
d0059df0:	d405      	bmi.n	d0059dfe <_fclose_r+0x32>
d0059df2:	89a3      	ldrh	r3, [r4, #12]
d0059df4:	0599      	lsls	r1, r3, #22
d0059df6:	d402      	bmi.n	d0059dfe <_fclose_r+0x32>
d0059df8:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0059dfa:	f000 fa14 	bl	d005a226 <__retarget_lock_acquire_recursive>
d0059dfe:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0059e02:	b98b      	cbnz	r3, d0059e28 <_fclose_r+0x5c>
d0059e04:	6e66      	ldr	r6, [r4, #100]	; 0x64
d0059e06:	f016 0601 	ands.w	r6, r6, #1
d0059e0a:	d1e3      	bne.n	d0059dd4 <_fclose_r+0x8>
d0059e0c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0059e0e:	f000 fa0b 	bl	d005a228 <__retarget_lock_release_recursive>
d0059e12:	e7e0      	b.n	d0059dd6 <_fclose_r+0xa>
d0059e14:	4b21      	ldr	r3, [pc, #132]	; (d0059e9c <_fclose_r+0xd0>)
d0059e16:	429c      	cmp	r4, r3
d0059e18:	d101      	bne.n	d0059e1e <_fclose_r+0x52>
d0059e1a:	68ac      	ldr	r4, [r5, #8]
d0059e1c:	e7e6      	b.n	d0059dec <_fclose_r+0x20>
d0059e1e:	4b20      	ldr	r3, [pc, #128]	; (d0059ea0 <_fclose_r+0xd4>)
d0059e20:	429c      	cmp	r4, r3
d0059e22:	bf08      	it	eq
d0059e24:	68ec      	ldreq	r4, [r5, #12]
d0059e26:	e7e1      	b.n	d0059dec <_fclose_r+0x20>
d0059e28:	4621      	mov	r1, r4
d0059e2a:	4628      	mov	r0, r5
d0059e2c:	f000 f842 	bl	d0059eb4 <__sflush_r>
d0059e30:	6b23      	ldr	r3, [r4, #48]	; 0x30
d0059e32:	4606      	mov	r6, r0
d0059e34:	b133      	cbz	r3, d0059e44 <_fclose_r+0x78>
d0059e36:	6a21      	ldr	r1, [r4, #32]
d0059e38:	4628      	mov	r0, r5
d0059e3a:	4798      	blx	r3
d0059e3c:	2800      	cmp	r0, #0
d0059e3e:	bfb8      	it	lt
d0059e40:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
d0059e44:	89a3      	ldrh	r3, [r4, #12]
d0059e46:	061a      	lsls	r2, r3, #24
d0059e48:	d503      	bpl.n	d0059e52 <_fclose_r+0x86>
d0059e4a:	6921      	ldr	r1, [r4, #16]
d0059e4c:	4628      	mov	r0, r5
d0059e4e:	f000 fa21 	bl	d005a294 <_free_r>
d0059e52:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0059e54:	b141      	cbz	r1, d0059e68 <_fclose_r+0x9c>
d0059e56:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0059e5a:	4299      	cmp	r1, r3
d0059e5c:	d002      	beq.n	d0059e64 <_fclose_r+0x98>
d0059e5e:	4628      	mov	r0, r5
d0059e60:	f000 fa18 	bl	d005a294 <_free_r>
d0059e64:	2300      	movs	r3, #0
d0059e66:	6363      	str	r3, [r4, #52]	; 0x34
d0059e68:	6ca1      	ldr	r1, [r4, #72]	; 0x48
d0059e6a:	b121      	cbz	r1, d0059e76 <_fclose_r+0xaa>
d0059e6c:	4628      	mov	r0, r5
d0059e6e:	f000 fa11 	bl	d005a294 <_free_r>
d0059e72:	2300      	movs	r3, #0
d0059e74:	64a3      	str	r3, [r4, #72]	; 0x48
d0059e76:	f000 f91f 	bl	d005a0b8 <__sfp_lock_acquire>
d0059e7a:	2300      	movs	r3, #0
d0059e7c:	81a3      	strh	r3, [r4, #12]
d0059e7e:	6e63      	ldr	r3, [r4, #100]	; 0x64
d0059e80:	07db      	lsls	r3, r3, #31
d0059e82:	d402      	bmi.n	d0059e8a <_fclose_r+0xbe>
d0059e84:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0059e86:	f000 f9cf 	bl	d005a228 <__retarget_lock_release_recursive>
d0059e8a:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0059e8c:	f000 f9ca 	bl	d005a224 <__retarget_lock_close_recursive>
d0059e90:	f000 f918 	bl	d005a0c4 <__sfp_lock_release>
d0059e94:	e79f      	b.n	d0059dd6 <_fclose_r+0xa>
d0059e96:	bf00      	nop
d0059e98:	d005c468 	.word	0xd005c468
d0059e9c:	d005c488 	.word	0xd005c488
d0059ea0:	d005c448 	.word	0xd005c448

d0059ea4 <fclose>:
d0059ea4:	4b02      	ldr	r3, [pc, #8]	; (d0059eb0 <fclose+0xc>)
d0059ea6:	4601      	mov	r1, r0
d0059ea8:	6818      	ldr	r0, [r3, #0]
d0059eaa:	f7ff bf8f 	b.w	d0059dcc <_fclose_r>
d0059eae:	bf00      	nop
d0059eb0:	d0090dcc 	.word	0xd0090dcc

d0059eb4 <__sflush_r>:
d0059eb4:	898a      	ldrh	r2, [r1, #12]
d0059eb6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d0059eba:	4605      	mov	r5, r0
d0059ebc:	0710      	lsls	r0, r2, #28
d0059ebe:	460c      	mov	r4, r1
d0059ec0:	d458      	bmi.n	d0059f74 <__sflush_r+0xc0>
d0059ec2:	684b      	ldr	r3, [r1, #4]
d0059ec4:	2b00      	cmp	r3, #0
d0059ec6:	dc05      	bgt.n	d0059ed4 <__sflush_r+0x20>
d0059ec8:	6c0b      	ldr	r3, [r1, #64]	; 0x40
d0059eca:	2b00      	cmp	r3, #0
d0059ecc:	dc02      	bgt.n	d0059ed4 <__sflush_r+0x20>
d0059ece:	2000      	movs	r0, #0
d0059ed0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
d0059ed4:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0059ed6:	2e00      	cmp	r6, #0
d0059ed8:	d0f9      	beq.n	d0059ece <__sflush_r+0x1a>
d0059eda:	2300      	movs	r3, #0
d0059edc:	f412 5280 	ands.w	r2, r2, #4096	; 0x1000
d0059ee0:	682f      	ldr	r7, [r5, #0]
d0059ee2:	602b      	str	r3, [r5, #0]
d0059ee4:	d032      	beq.n	d0059f4c <__sflush_r+0x98>
d0059ee6:	6d60      	ldr	r0, [r4, #84]	; 0x54
d0059ee8:	89a3      	ldrh	r3, [r4, #12]
d0059eea:	075a      	lsls	r2, r3, #29
d0059eec:	d505      	bpl.n	d0059efa <__sflush_r+0x46>
d0059eee:	6863      	ldr	r3, [r4, #4]
d0059ef0:	1ac0      	subs	r0, r0, r3
d0059ef2:	6b63      	ldr	r3, [r4, #52]	; 0x34
d0059ef4:	b10b      	cbz	r3, d0059efa <__sflush_r+0x46>
d0059ef6:	6c23      	ldr	r3, [r4, #64]	; 0x40
d0059ef8:	1ac0      	subs	r0, r0, r3
d0059efa:	2300      	movs	r3, #0
d0059efc:	4602      	mov	r2, r0
d0059efe:	6ae6      	ldr	r6, [r4, #44]	; 0x2c
d0059f00:	6a21      	ldr	r1, [r4, #32]
d0059f02:	4628      	mov	r0, r5
d0059f04:	47b0      	blx	r6
d0059f06:	1c43      	adds	r3, r0, #1
d0059f08:	89a3      	ldrh	r3, [r4, #12]
d0059f0a:	d106      	bne.n	d0059f1a <__sflush_r+0x66>
d0059f0c:	6829      	ldr	r1, [r5, #0]
d0059f0e:	291d      	cmp	r1, #29
d0059f10:	d82c      	bhi.n	d0059f6c <__sflush_r+0xb8>
d0059f12:	4a2a      	ldr	r2, [pc, #168]	; (d0059fbc <__sflush_r+0x108>)
d0059f14:	40ca      	lsrs	r2, r1
d0059f16:	07d6      	lsls	r6, r2, #31
d0059f18:	d528      	bpl.n	d0059f6c <__sflush_r+0xb8>
d0059f1a:	2200      	movs	r2, #0
d0059f1c:	6062      	str	r2, [r4, #4]
d0059f1e:	04d9      	lsls	r1, r3, #19
d0059f20:	6922      	ldr	r2, [r4, #16]
d0059f22:	6022      	str	r2, [r4, #0]
d0059f24:	d504      	bpl.n	d0059f30 <__sflush_r+0x7c>
d0059f26:	1c42      	adds	r2, r0, #1
d0059f28:	d101      	bne.n	d0059f2e <__sflush_r+0x7a>
d0059f2a:	682b      	ldr	r3, [r5, #0]
d0059f2c:	b903      	cbnz	r3, d0059f30 <__sflush_r+0x7c>
d0059f2e:	6560      	str	r0, [r4, #84]	; 0x54
d0059f30:	6b61      	ldr	r1, [r4, #52]	; 0x34
d0059f32:	602f      	str	r7, [r5, #0]
d0059f34:	2900      	cmp	r1, #0
d0059f36:	d0ca      	beq.n	d0059ece <__sflush_r+0x1a>
d0059f38:	f104 0344 	add.w	r3, r4, #68	; 0x44
d0059f3c:	4299      	cmp	r1, r3
d0059f3e:	d002      	beq.n	d0059f46 <__sflush_r+0x92>
d0059f40:	4628      	mov	r0, r5
d0059f42:	f000 f9a7 	bl	d005a294 <_free_r>
d0059f46:	2000      	movs	r0, #0
d0059f48:	6360      	str	r0, [r4, #52]	; 0x34
d0059f4a:	e7c1      	b.n	d0059ed0 <__sflush_r+0x1c>
d0059f4c:	6a21      	ldr	r1, [r4, #32]
d0059f4e:	2301      	movs	r3, #1
d0059f50:	4628      	mov	r0, r5
d0059f52:	47b0      	blx	r6
d0059f54:	1c41      	adds	r1, r0, #1
d0059f56:	d1c7      	bne.n	d0059ee8 <__sflush_r+0x34>
d0059f58:	682b      	ldr	r3, [r5, #0]
d0059f5a:	2b00      	cmp	r3, #0
d0059f5c:	d0c4      	beq.n	d0059ee8 <__sflush_r+0x34>
d0059f5e:	2b1d      	cmp	r3, #29
d0059f60:	d001      	beq.n	d0059f66 <__sflush_r+0xb2>
d0059f62:	2b16      	cmp	r3, #22
d0059f64:	d101      	bne.n	d0059f6a <__sflush_r+0xb6>
d0059f66:	602f      	str	r7, [r5, #0]
d0059f68:	e7b1      	b.n	d0059ece <__sflush_r+0x1a>
d0059f6a:	89a3      	ldrh	r3, [r4, #12]
d0059f6c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0059f70:	81a3      	strh	r3, [r4, #12]
d0059f72:	e7ad      	b.n	d0059ed0 <__sflush_r+0x1c>
d0059f74:	690f      	ldr	r7, [r1, #16]
d0059f76:	2f00      	cmp	r7, #0
d0059f78:	d0a9      	beq.n	d0059ece <__sflush_r+0x1a>
d0059f7a:	0793      	lsls	r3, r2, #30
d0059f7c:	680e      	ldr	r6, [r1, #0]
d0059f7e:	bf08      	it	eq
d0059f80:	694b      	ldreq	r3, [r1, #20]
d0059f82:	600f      	str	r7, [r1, #0]
d0059f84:	bf18      	it	ne
d0059f86:	2300      	movne	r3, #0
d0059f88:	eba6 0807 	sub.w	r8, r6, r7
d0059f8c:	608b      	str	r3, [r1, #8]
d0059f8e:	f1b8 0f00 	cmp.w	r8, #0
d0059f92:	dd9c      	ble.n	d0059ece <__sflush_r+0x1a>
d0059f94:	6a21      	ldr	r1, [r4, #32]
d0059f96:	6aa6      	ldr	r6, [r4, #40]	; 0x28
d0059f98:	4643      	mov	r3, r8
d0059f9a:	463a      	mov	r2, r7
d0059f9c:	4628      	mov	r0, r5
d0059f9e:	47b0      	blx	r6
d0059fa0:	2800      	cmp	r0, #0
d0059fa2:	dc06      	bgt.n	d0059fb2 <__sflush_r+0xfe>
d0059fa4:	89a3      	ldrh	r3, [r4, #12]
d0059fa6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d0059faa:	81a3      	strh	r3, [r4, #12]
d0059fac:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d0059fb0:	e78e      	b.n	d0059ed0 <__sflush_r+0x1c>
d0059fb2:	4407      	add	r7, r0
d0059fb4:	eba8 0800 	sub.w	r8, r8, r0
d0059fb8:	e7e9      	b.n	d0059f8e <__sflush_r+0xda>
d0059fba:	bf00      	nop
d0059fbc:	20400001 	.word	0x20400001

d0059fc0 <_fflush_r>:
d0059fc0:	b538      	push	{r3, r4, r5, lr}
d0059fc2:	690b      	ldr	r3, [r1, #16]
d0059fc4:	4605      	mov	r5, r0
d0059fc6:	460c      	mov	r4, r1
d0059fc8:	b913      	cbnz	r3, d0059fd0 <_fflush_r+0x10>
d0059fca:	2500      	movs	r5, #0
d0059fcc:	4628      	mov	r0, r5
d0059fce:	bd38      	pop	{r3, r4, r5, pc}
d0059fd0:	b118      	cbz	r0, d0059fda <_fflush_r+0x1a>
d0059fd2:	6983      	ldr	r3, [r0, #24]
d0059fd4:	b90b      	cbnz	r3, d0059fda <_fflush_r+0x1a>
d0059fd6:	f000 f887 	bl	d005a0e8 <__sinit>
d0059fda:	4b14      	ldr	r3, [pc, #80]	; (d005a02c <_fflush_r+0x6c>)
d0059fdc:	429c      	cmp	r4, r3
d0059fde:	d11b      	bne.n	d005a018 <_fflush_r+0x58>
d0059fe0:	686c      	ldr	r4, [r5, #4]
d0059fe2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d0059fe6:	2b00      	cmp	r3, #0
d0059fe8:	d0ef      	beq.n	d0059fca <_fflush_r+0xa>
d0059fea:	6e62      	ldr	r2, [r4, #100]	; 0x64
d0059fec:	07d0      	lsls	r0, r2, #31
d0059fee:	d404      	bmi.n	d0059ffa <_fflush_r+0x3a>
d0059ff0:	0599      	lsls	r1, r3, #22
d0059ff2:	d402      	bmi.n	d0059ffa <_fflush_r+0x3a>
d0059ff4:	6da0      	ldr	r0, [r4, #88]	; 0x58
d0059ff6:	f000 f916 	bl	d005a226 <__retarget_lock_acquire_recursive>
d0059ffa:	4628      	mov	r0, r5
d0059ffc:	4621      	mov	r1, r4
d0059ffe:	f7ff ff59 	bl	d0059eb4 <__sflush_r>
d005a002:	6e63      	ldr	r3, [r4, #100]	; 0x64
d005a004:	07da      	lsls	r2, r3, #31
d005a006:	4605      	mov	r5, r0
d005a008:	d4e0      	bmi.n	d0059fcc <_fflush_r+0xc>
d005a00a:	89a3      	ldrh	r3, [r4, #12]
d005a00c:	059b      	lsls	r3, r3, #22
d005a00e:	d4dd      	bmi.n	d0059fcc <_fflush_r+0xc>
d005a010:	6da0      	ldr	r0, [r4, #88]	; 0x58
d005a012:	f000 f909 	bl	d005a228 <__retarget_lock_release_recursive>
d005a016:	e7d9      	b.n	d0059fcc <_fflush_r+0xc>
d005a018:	4b05      	ldr	r3, [pc, #20]	; (d005a030 <_fflush_r+0x70>)
d005a01a:	429c      	cmp	r4, r3
d005a01c:	d101      	bne.n	d005a022 <_fflush_r+0x62>
d005a01e:	68ac      	ldr	r4, [r5, #8]
d005a020:	e7df      	b.n	d0059fe2 <_fflush_r+0x22>
d005a022:	4b04      	ldr	r3, [pc, #16]	; (d005a034 <_fflush_r+0x74>)
d005a024:	429c      	cmp	r4, r3
d005a026:	bf08      	it	eq
d005a028:	68ec      	ldreq	r4, [r5, #12]
d005a02a:	e7da      	b.n	d0059fe2 <_fflush_r+0x22>
d005a02c:	d005c468 	.word	0xd005c468
d005a030:	d005c488 	.word	0xd005c488
d005a034:	d005c448 	.word	0xd005c448

d005a038 <std>:
d005a038:	2300      	movs	r3, #0
d005a03a:	b510      	push	{r4, lr}
d005a03c:	4604      	mov	r4, r0
d005a03e:	e9c0 3300 	strd	r3, r3, [r0]
d005a042:	e9c0 3304 	strd	r3, r3, [r0, #16]
d005a046:	6083      	str	r3, [r0, #8]
d005a048:	8181      	strh	r1, [r0, #12]
d005a04a:	6643      	str	r3, [r0, #100]	; 0x64
d005a04c:	81c2      	strh	r2, [r0, #14]
d005a04e:	6183      	str	r3, [r0, #24]
d005a050:	4619      	mov	r1, r3
d005a052:	2208      	movs	r2, #8
d005a054:	305c      	adds	r0, #92	; 0x5c
d005a056:	f000 f915 	bl	d005a284 <memset>
d005a05a:	4b05      	ldr	r3, [pc, #20]	; (d005a070 <std+0x38>)
d005a05c:	6263      	str	r3, [r4, #36]	; 0x24
d005a05e:	4b05      	ldr	r3, [pc, #20]	; (d005a074 <std+0x3c>)
d005a060:	62a3      	str	r3, [r4, #40]	; 0x28
d005a062:	4b05      	ldr	r3, [pc, #20]	; (d005a078 <std+0x40>)
d005a064:	62e3      	str	r3, [r4, #44]	; 0x2c
d005a066:	4b05      	ldr	r3, [pc, #20]	; (d005a07c <std+0x44>)
d005a068:	6224      	str	r4, [r4, #32]
d005a06a:	6323      	str	r3, [r4, #48]	; 0x30
d005a06c:	bd10      	pop	{r4, pc}
d005a06e:	bf00      	nop
d005a070:	d005a645 	.word	0xd005a645
d005a074:	d005a667 	.word	0xd005a667
d005a078:	d005a69f 	.word	0xd005a69f
d005a07c:	d005a6c3 	.word	0xd005a6c3

d005a080 <_cleanup_r>:
d005a080:	4901      	ldr	r1, [pc, #4]	; (d005a088 <_cleanup_r+0x8>)
d005a082:	f000 b8af 	b.w	d005a1e4 <_fwalk_reent>
d005a086:	bf00      	nop
d005a088:	d0059fc1 	.word	0xd0059fc1

d005a08c <__sfmoreglue>:
d005a08c:	b570      	push	{r4, r5, r6, lr}
d005a08e:	1e4a      	subs	r2, r1, #1
d005a090:	2568      	movs	r5, #104	; 0x68
d005a092:	4355      	muls	r5, r2
d005a094:	460e      	mov	r6, r1
d005a096:	f105 0174 	add.w	r1, r5, #116	; 0x74
d005a09a:	f000 f94b 	bl	d005a334 <_malloc_r>
d005a09e:	4604      	mov	r4, r0
d005a0a0:	b140      	cbz	r0, d005a0b4 <__sfmoreglue+0x28>
d005a0a2:	2100      	movs	r1, #0
d005a0a4:	e9c0 1600 	strd	r1, r6, [r0]
d005a0a8:	300c      	adds	r0, #12
d005a0aa:	60a0      	str	r0, [r4, #8]
d005a0ac:	f105 0268 	add.w	r2, r5, #104	; 0x68
d005a0b0:	f000 f8e8 	bl	d005a284 <memset>
d005a0b4:	4620      	mov	r0, r4
d005a0b6:	bd70      	pop	{r4, r5, r6, pc}

d005a0b8 <__sfp_lock_acquire>:
d005a0b8:	4801      	ldr	r0, [pc, #4]	; (d005a0c0 <__sfp_lock_acquire+0x8>)
d005a0ba:	f000 b8b4 	b.w	d005a226 <__retarget_lock_acquire_recursive>
d005a0be:	bf00      	nop
d005a0c0:	d01312a8 	.word	0xd01312a8

d005a0c4 <__sfp_lock_release>:
d005a0c4:	4801      	ldr	r0, [pc, #4]	; (d005a0cc <__sfp_lock_release+0x8>)
d005a0c6:	f000 b8af 	b.w	d005a228 <__retarget_lock_release_recursive>
d005a0ca:	bf00      	nop
d005a0cc:	d01312a8 	.word	0xd01312a8

d005a0d0 <__sinit_lock_acquire>:
d005a0d0:	4801      	ldr	r0, [pc, #4]	; (d005a0d8 <__sinit_lock_acquire+0x8>)
d005a0d2:	f000 b8a8 	b.w	d005a226 <__retarget_lock_acquire_recursive>
d005a0d6:	bf00      	nop
d005a0d8:	d01312a3 	.word	0xd01312a3

d005a0dc <__sinit_lock_release>:
d005a0dc:	4801      	ldr	r0, [pc, #4]	; (d005a0e4 <__sinit_lock_release+0x8>)
d005a0de:	f000 b8a3 	b.w	d005a228 <__retarget_lock_release_recursive>
d005a0e2:	bf00      	nop
d005a0e4:	d01312a3 	.word	0xd01312a3

d005a0e8 <__sinit>:
d005a0e8:	b510      	push	{r4, lr}
d005a0ea:	4604      	mov	r4, r0
d005a0ec:	f7ff fff0 	bl	d005a0d0 <__sinit_lock_acquire>
d005a0f0:	69a3      	ldr	r3, [r4, #24]
d005a0f2:	b11b      	cbz	r3, d005a0fc <__sinit+0x14>
d005a0f4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d005a0f8:	f7ff bff0 	b.w	d005a0dc <__sinit_lock_release>
d005a0fc:	e9c4 3312 	strd	r3, r3, [r4, #72]	; 0x48
d005a100:	6523      	str	r3, [r4, #80]	; 0x50
d005a102:	4b13      	ldr	r3, [pc, #76]	; (d005a150 <__sinit+0x68>)
d005a104:	4a13      	ldr	r2, [pc, #76]	; (d005a154 <__sinit+0x6c>)
d005a106:	681b      	ldr	r3, [r3, #0]
d005a108:	62a2      	str	r2, [r4, #40]	; 0x28
d005a10a:	42a3      	cmp	r3, r4
d005a10c:	bf04      	itt	eq
d005a10e:	2301      	moveq	r3, #1
d005a110:	61a3      	streq	r3, [r4, #24]
d005a112:	4620      	mov	r0, r4
d005a114:	f000 f820 	bl	d005a158 <__sfp>
d005a118:	6060      	str	r0, [r4, #4]
d005a11a:	4620      	mov	r0, r4
d005a11c:	f000 f81c 	bl	d005a158 <__sfp>
d005a120:	60a0      	str	r0, [r4, #8]
d005a122:	4620      	mov	r0, r4
d005a124:	f000 f818 	bl	d005a158 <__sfp>
d005a128:	2200      	movs	r2, #0
d005a12a:	60e0      	str	r0, [r4, #12]
d005a12c:	2104      	movs	r1, #4
d005a12e:	6860      	ldr	r0, [r4, #4]
d005a130:	f7ff ff82 	bl	d005a038 <std>
d005a134:	68a0      	ldr	r0, [r4, #8]
d005a136:	2201      	movs	r2, #1
d005a138:	2109      	movs	r1, #9
d005a13a:	f7ff ff7d 	bl	d005a038 <std>
d005a13e:	68e0      	ldr	r0, [r4, #12]
d005a140:	2202      	movs	r2, #2
d005a142:	2112      	movs	r1, #18
d005a144:	f7ff ff78 	bl	d005a038 <std>
d005a148:	2301      	movs	r3, #1
d005a14a:	61a3      	str	r3, [r4, #24]
d005a14c:	e7d2      	b.n	d005a0f4 <__sinit+0xc>
d005a14e:	bf00      	nop
d005a150:	d005c4a8 	.word	0xd005c4a8
d005a154:	d005a081 	.word	0xd005a081

d005a158 <__sfp>:
d005a158:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005a15a:	4607      	mov	r7, r0
d005a15c:	f7ff ffac 	bl	d005a0b8 <__sfp_lock_acquire>
d005a160:	4b1e      	ldr	r3, [pc, #120]	; (d005a1dc <__sfp+0x84>)
d005a162:	681e      	ldr	r6, [r3, #0]
d005a164:	69b3      	ldr	r3, [r6, #24]
d005a166:	b913      	cbnz	r3, d005a16e <__sfp+0x16>
d005a168:	4630      	mov	r0, r6
d005a16a:	f7ff ffbd 	bl	d005a0e8 <__sinit>
d005a16e:	3648      	adds	r6, #72	; 0x48
d005a170:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
d005a174:	3b01      	subs	r3, #1
d005a176:	d503      	bpl.n	d005a180 <__sfp+0x28>
d005a178:	6833      	ldr	r3, [r6, #0]
d005a17a:	b30b      	cbz	r3, d005a1c0 <__sfp+0x68>
d005a17c:	6836      	ldr	r6, [r6, #0]
d005a17e:	e7f7      	b.n	d005a170 <__sfp+0x18>
d005a180:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
d005a184:	b9d5      	cbnz	r5, d005a1bc <__sfp+0x64>
d005a186:	4b16      	ldr	r3, [pc, #88]	; (d005a1e0 <__sfp+0x88>)
d005a188:	60e3      	str	r3, [r4, #12]
d005a18a:	f104 0058 	add.w	r0, r4, #88	; 0x58
d005a18e:	6665      	str	r5, [r4, #100]	; 0x64
d005a190:	f000 f847 	bl	d005a222 <__retarget_lock_init_recursive>
d005a194:	f7ff ff96 	bl	d005a0c4 <__sfp_lock_release>
d005a198:	e9c4 5501 	strd	r5, r5, [r4, #4]
d005a19c:	e9c4 5504 	strd	r5, r5, [r4, #16]
d005a1a0:	6025      	str	r5, [r4, #0]
d005a1a2:	61a5      	str	r5, [r4, #24]
d005a1a4:	2208      	movs	r2, #8
d005a1a6:	4629      	mov	r1, r5
d005a1a8:	f104 005c 	add.w	r0, r4, #92	; 0x5c
d005a1ac:	f000 f86a 	bl	d005a284 <memset>
d005a1b0:	e9c4 550d 	strd	r5, r5, [r4, #52]	; 0x34
d005a1b4:	e9c4 5512 	strd	r5, r5, [r4, #72]	; 0x48
d005a1b8:	4620      	mov	r0, r4
d005a1ba:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d005a1bc:	3468      	adds	r4, #104	; 0x68
d005a1be:	e7d9      	b.n	d005a174 <__sfp+0x1c>
d005a1c0:	2104      	movs	r1, #4
d005a1c2:	4638      	mov	r0, r7
d005a1c4:	f7ff ff62 	bl	d005a08c <__sfmoreglue>
d005a1c8:	4604      	mov	r4, r0
d005a1ca:	6030      	str	r0, [r6, #0]
d005a1cc:	2800      	cmp	r0, #0
d005a1ce:	d1d5      	bne.n	d005a17c <__sfp+0x24>
d005a1d0:	f7ff ff78 	bl	d005a0c4 <__sfp_lock_release>
d005a1d4:	230c      	movs	r3, #12
d005a1d6:	603b      	str	r3, [r7, #0]
d005a1d8:	e7ee      	b.n	d005a1b8 <__sfp+0x60>
d005a1da:	bf00      	nop
d005a1dc:	d005c4a8 	.word	0xd005c4a8
d005a1e0:	ffff0001 	.word	0xffff0001

d005a1e4 <_fwalk_reent>:
d005a1e4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
d005a1e8:	4606      	mov	r6, r0
d005a1ea:	4688      	mov	r8, r1
d005a1ec:	f100 0448 	add.w	r4, r0, #72	; 0x48
d005a1f0:	2700      	movs	r7, #0
d005a1f2:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
d005a1f6:	f1b9 0901 	subs.w	r9, r9, #1
d005a1fa:	d505      	bpl.n	d005a208 <_fwalk_reent+0x24>
d005a1fc:	6824      	ldr	r4, [r4, #0]
d005a1fe:	2c00      	cmp	r4, #0
d005a200:	d1f7      	bne.n	d005a1f2 <_fwalk_reent+0xe>
d005a202:	4638      	mov	r0, r7
d005a204:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
d005a208:	89ab      	ldrh	r3, [r5, #12]
d005a20a:	2b01      	cmp	r3, #1
d005a20c:	d907      	bls.n	d005a21e <_fwalk_reent+0x3a>
d005a20e:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
d005a212:	3301      	adds	r3, #1
d005a214:	d003      	beq.n	d005a21e <_fwalk_reent+0x3a>
d005a216:	4629      	mov	r1, r5
d005a218:	4630      	mov	r0, r6
d005a21a:	47c0      	blx	r8
d005a21c:	4307      	orrs	r7, r0
d005a21e:	3568      	adds	r5, #104	; 0x68
d005a220:	e7e9      	b.n	d005a1f6 <_fwalk_reent+0x12>

d005a222 <__retarget_lock_init_recursive>:
d005a222:	4770      	bx	lr

d005a224 <__retarget_lock_close_recursive>:
d005a224:	4770      	bx	lr

d005a226 <__retarget_lock_acquire_recursive>:
d005a226:	4770      	bx	lr

d005a228 <__retarget_lock_release_recursive>:
d005a228:	4770      	bx	lr
	...

d005a22c <malloc>:
d005a22c:	4b02      	ldr	r3, [pc, #8]	; (d005a238 <malloc+0xc>)
d005a22e:	4601      	mov	r1, r0
d005a230:	6818      	ldr	r0, [r3, #0]
d005a232:	f000 b87f 	b.w	d005a334 <_malloc_r>
d005a236:	bf00      	nop
d005a238:	d0090dcc 	.word	0xd0090dcc

d005a23c <free>:
d005a23c:	4b02      	ldr	r3, [pc, #8]	; (d005a248 <free+0xc>)
d005a23e:	4601      	mov	r1, r0
d005a240:	6818      	ldr	r0, [r3, #0]
d005a242:	f000 b827 	b.w	d005a294 <_free_r>
d005a246:	bf00      	nop
d005a248:	d0090dcc 	.word	0xd0090dcc

d005a24c <memcmp>:
d005a24c:	b530      	push	{r4, r5, lr}
d005a24e:	3901      	subs	r1, #1
d005a250:	2400      	movs	r4, #0
d005a252:	42a2      	cmp	r2, r4
d005a254:	d101      	bne.n	d005a25a <memcmp+0xe>
d005a256:	2000      	movs	r0, #0
d005a258:	e005      	b.n	d005a266 <memcmp+0x1a>
d005a25a:	5d03      	ldrb	r3, [r0, r4]
d005a25c:	3401      	adds	r4, #1
d005a25e:	5d0d      	ldrb	r5, [r1, r4]
d005a260:	42ab      	cmp	r3, r5
d005a262:	d0f6      	beq.n	d005a252 <memcmp+0x6>
d005a264:	1b58      	subs	r0, r3, r5
d005a266:	bd30      	pop	{r4, r5, pc}

d005a268 <memcpy>:
d005a268:	440a      	add	r2, r1
d005a26a:	4291      	cmp	r1, r2
d005a26c:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
d005a270:	d100      	bne.n	d005a274 <memcpy+0xc>
d005a272:	4770      	bx	lr
d005a274:	b510      	push	{r4, lr}
d005a276:	f811 4b01 	ldrb.w	r4, [r1], #1
d005a27a:	f803 4f01 	strb.w	r4, [r3, #1]!
d005a27e:	4291      	cmp	r1, r2
d005a280:	d1f9      	bne.n	d005a276 <memcpy+0xe>
d005a282:	bd10      	pop	{r4, pc}

d005a284 <memset>:
d005a284:	4402      	add	r2, r0
d005a286:	4603      	mov	r3, r0
d005a288:	4293      	cmp	r3, r2
d005a28a:	d100      	bne.n	d005a28e <memset+0xa>
d005a28c:	4770      	bx	lr
d005a28e:	f803 1b01 	strb.w	r1, [r3], #1
d005a292:	e7f9      	b.n	d005a288 <memset+0x4>

d005a294 <_free_r>:
d005a294:	b537      	push	{r0, r1, r2, r4, r5, lr}
d005a296:	2900      	cmp	r1, #0
d005a298:	d048      	beq.n	d005a32c <_free_r+0x98>
d005a29a:	f851 3c04 	ldr.w	r3, [r1, #-4]
d005a29e:	9001      	str	r0, [sp, #4]
d005a2a0:	2b00      	cmp	r3, #0
d005a2a2:	f1a1 0404 	sub.w	r4, r1, #4
d005a2a6:	bfb8      	it	lt
d005a2a8:	18e4      	addlt	r4, r4, r3
d005a2aa:	f000 fac5 	bl	d005a838 <__malloc_lock>
d005a2ae:	4a20      	ldr	r2, [pc, #128]	; (d005a330 <_free_r+0x9c>)
d005a2b0:	9801      	ldr	r0, [sp, #4]
d005a2b2:	6813      	ldr	r3, [r2, #0]
d005a2b4:	4615      	mov	r5, r2
d005a2b6:	b933      	cbnz	r3, d005a2c6 <_free_r+0x32>
d005a2b8:	6063      	str	r3, [r4, #4]
d005a2ba:	6014      	str	r4, [r2, #0]
d005a2bc:	b003      	add	sp, #12
d005a2be:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
d005a2c2:	f000 babf 	b.w	d005a844 <__malloc_unlock>
d005a2c6:	42a3      	cmp	r3, r4
d005a2c8:	d90b      	bls.n	d005a2e2 <_free_r+0x4e>
d005a2ca:	6821      	ldr	r1, [r4, #0]
d005a2cc:	1862      	adds	r2, r4, r1
d005a2ce:	4293      	cmp	r3, r2
d005a2d0:	bf04      	itt	eq
d005a2d2:	681a      	ldreq	r2, [r3, #0]
d005a2d4:	685b      	ldreq	r3, [r3, #4]
d005a2d6:	6063      	str	r3, [r4, #4]
d005a2d8:	bf04      	itt	eq
d005a2da:	1852      	addeq	r2, r2, r1
d005a2dc:	6022      	streq	r2, [r4, #0]
d005a2de:	602c      	str	r4, [r5, #0]
d005a2e0:	e7ec      	b.n	d005a2bc <_free_r+0x28>
d005a2e2:	461a      	mov	r2, r3
d005a2e4:	685b      	ldr	r3, [r3, #4]
d005a2e6:	b10b      	cbz	r3, d005a2ec <_free_r+0x58>
d005a2e8:	42a3      	cmp	r3, r4
d005a2ea:	d9fa      	bls.n	d005a2e2 <_free_r+0x4e>
d005a2ec:	6811      	ldr	r1, [r2, #0]
d005a2ee:	1855      	adds	r5, r2, r1
d005a2f0:	42a5      	cmp	r5, r4
d005a2f2:	d10b      	bne.n	d005a30c <_free_r+0x78>
d005a2f4:	6824      	ldr	r4, [r4, #0]
d005a2f6:	4421      	add	r1, r4
d005a2f8:	1854      	adds	r4, r2, r1
d005a2fa:	42a3      	cmp	r3, r4
d005a2fc:	6011      	str	r1, [r2, #0]
d005a2fe:	d1dd      	bne.n	d005a2bc <_free_r+0x28>
d005a300:	681c      	ldr	r4, [r3, #0]
d005a302:	685b      	ldr	r3, [r3, #4]
d005a304:	6053      	str	r3, [r2, #4]
d005a306:	4421      	add	r1, r4
d005a308:	6011      	str	r1, [r2, #0]
d005a30a:	e7d7      	b.n	d005a2bc <_free_r+0x28>
d005a30c:	d902      	bls.n	d005a314 <_free_r+0x80>
d005a30e:	230c      	movs	r3, #12
d005a310:	6003      	str	r3, [r0, #0]
d005a312:	e7d3      	b.n	d005a2bc <_free_r+0x28>
d005a314:	6825      	ldr	r5, [r4, #0]
d005a316:	1961      	adds	r1, r4, r5
d005a318:	428b      	cmp	r3, r1
d005a31a:	bf04      	itt	eq
d005a31c:	6819      	ldreq	r1, [r3, #0]
d005a31e:	685b      	ldreq	r3, [r3, #4]
d005a320:	6063      	str	r3, [r4, #4]
d005a322:	bf04      	itt	eq
d005a324:	1949      	addeq	r1, r1, r5
d005a326:	6021      	streq	r1, [r4, #0]
d005a328:	6054      	str	r4, [r2, #4]
d005a32a:	e7c7      	b.n	d005a2bc <_free_r+0x28>
d005a32c:	b003      	add	sp, #12
d005a32e:	bd30      	pop	{r4, r5, pc}
d005a330:	d012b180 	.word	0xd012b180

d005a334 <_malloc_r>:
d005a334:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005a336:	1ccd      	adds	r5, r1, #3
d005a338:	f025 0503 	bic.w	r5, r5, #3
d005a33c:	3508      	adds	r5, #8
d005a33e:	2d0c      	cmp	r5, #12
d005a340:	bf38      	it	cc
d005a342:	250c      	movcc	r5, #12
d005a344:	2d00      	cmp	r5, #0
d005a346:	4606      	mov	r6, r0
d005a348:	db01      	blt.n	d005a34e <_malloc_r+0x1a>
d005a34a:	42a9      	cmp	r1, r5
d005a34c:	d903      	bls.n	d005a356 <_malloc_r+0x22>
d005a34e:	230c      	movs	r3, #12
d005a350:	6033      	str	r3, [r6, #0]
d005a352:	2000      	movs	r0, #0
d005a354:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d005a356:	f000 fa6f 	bl	d005a838 <__malloc_lock>
d005a35a:	4921      	ldr	r1, [pc, #132]	; (d005a3e0 <_malloc_r+0xac>)
d005a35c:	680a      	ldr	r2, [r1, #0]
d005a35e:	4614      	mov	r4, r2
d005a360:	b99c      	cbnz	r4, d005a38a <_malloc_r+0x56>
d005a362:	4f20      	ldr	r7, [pc, #128]	; (d005a3e4 <_malloc_r+0xb0>)
d005a364:	683b      	ldr	r3, [r7, #0]
d005a366:	b923      	cbnz	r3, d005a372 <_malloc_r+0x3e>
d005a368:	4621      	mov	r1, r4
d005a36a:	4630      	mov	r0, r6
d005a36c:	f7f5 feb8 	bl	d00500e0 <_sbrk_r>
d005a370:	6038      	str	r0, [r7, #0]
d005a372:	4629      	mov	r1, r5
d005a374:	4630      	mov	r0, r6
d005a376:	f7f5 feb3 	bl	d00500e0 <_sbrk_r>
d005a37a:	1c43      	adds	r3, r0, #1
d005a37c:	d123      	bne.n	d005a3c6 <_malloc_r+0x92>
d005a37e:	230c      	movs	r3, #12
d005a380:	6033      	str	r3, [r6, #0]
d005a382:	4630      	mov	r0, r6
d005a384:	f000 fa5e 	bl	d005a844 <__malloc_unlock>
d005a388:	e7e3      	b.n	d005a352 <_malloc_r+0x1e>
d005a38a:	6823      	ldr	r3, [r4, #0]
d005a38c:	1b5b      	subs	r3, r3, r5
d005a38e:	d417      	bmi.n	d005a3c0 <_malloc_r+0x8c>
d005a390:	2b0b      	cmp	r3, #11
d005a392:	d903      	bls.n	d005a39c <_malloc_r+0x68>
d005a394:	6023      	str	r3, [r4, #0]
d005a396:	441c      	add	r4, r3
d005a398:	6025      	str	r5, [r4, #0]
d005a39a:	e004      	b.n	d005a3a6 <_malloc_r+0x72>
d005a39c:	6863      	ldr	r3, [r4, #4]
d005a39e:	42a2      	cmp	r2, r4
d005a3a0:	bf0c      	ite	eq
d005a3a2:	600b      	streq	r3, [r1, #0]
d005a3a4:	6053      	strne	r3, [r2, #4]
d005a3a6:	4630      	mov	r0, r6
d005a3a8:	f000 fa4c 	bl	d005a844 <__malloc_unlock>
d005a3ac:	f104 000b 	add.w	r0, r4, #11
d005a3b0:	1d23      	adds	r3, r4, #4
d005a3b2:	f020 0007 	bic.w	r0, r0, #7
d005a3b6:	1ac2      	subs	r2, r0, r3
d005a3b8:	d0cc      	beq.n	d005a354 <_malloc_r+0x20>
d005a3ba:	1a1b      	subs	r3, r3, r0
d005a3bc:	50a3      	str	r3, [r4, r2]
d005a3be:	e7c9      	b.n	d005a354 <_malloc_r+0x20>
d005a3c0:	4622      	mov	r2, r4
d005a3c2:	6864      	ldr	r4, [r4, #4]
d005a3c4:	e7cc      	b.n	d005a360 <_malloc_r+0x2c>
d005a3c6:	1cc4      	adds	r4, r0, #3
d005a3c8:	f024 0403 	bic.w	r4, r4, #3
d005a3cc:	42a0      	cmp	r0, r4
d005a3ce:	d0e3      	beq.n	d005a398 <_malloc_r+0x64>
d005a3d0:	1a21      	subs	r1, r4, r0
d005a3d2:	4630      	mov	r0, r6
d005a3d4:	f7f5 fe84 	bl	d00500e0 <_sbrk_r>
d005a3d8:	3001      	adds	r0, #1
d005a3da:	d1dd      	bne.n	d005a398 <_malloc_r+0x64>
d005a3dc:	e7cf      	b.n	d005a37e <_malloc_r+0x4a>
d005a3de:	bf00      	nop
d005a3e0:	d012b180 	.word	0xd012b180
d005a3e4:	d012b184 	.word	0xd012b184

d005a3e8 <rand>:
d005a3e8:	4b17      	ldr	r3, [pc, #92]	; (d005a448 <rand+0x60>)
d005a3ea:	b510      	push	{r4, lr}
d005a3ec:	681c      	ldr	r4, [r3, #0]
d005a3ee:	6ba3      	ldr	r3, [r4, #56]	; 0x38
d005a3f0:	b9b3      	cbnz	r3, d005a420 <rand+0x38>
d005a3f2:	2018      	movs	r0, #24
d005a3f4:	f7ff ff1a 	bl	d005a22c <malloc>
d005a3f8:	63a0      	str	r0, [r4, #56]	; 0x38
d005a3fa:	b928      	cbnz	r0, d005a408 <rand+0x20>
d005a3fc:	4602      	mov	r2, r0
d005a3fe:	4b13      	ldr	r3, [pc, #76]	; (d005a44c <rand+0x64>)
d005a400:	4813      	ldr	r0, [pc, #76]	; (d005a450 <rand+0x68>)
d005a402:	214e      	movs	r1, #78	; 0x4e
d005a404:	f000 f962 	bl	d005a6cc <__assert_func>
d005a408:	4a12      	ldr	r2, [pc, #72]	; (d005a454 <rand+0x6c>)
d005a40a:	4b13      	ldr	r3, [pc, #76]	; (d005a458 <rand+0x70>)
d005a40c:	e9c0 2300 	strd	r2, r3, [r0]
d005a410:	4b12      	ldr	r3, [pc, #72]	; (d005a45c <rand+0x74>)
d005a412:	6083      	str	r3, [r0, #8]
d005a414:	230b      	movs	r3, #11
d005a416:	8183      	strh	r3, [r0, #12]
d005a418:	2201      	movs	r2, #1
d005a41a:	2300      	movs	r3, #0
d005a41c:	e9c0 2304 	strd	r2, r3, [r0, #16]
d005a420:	6ba1      	ldr	r1, [r4, #56]	; 0x38
d005a422:	480f      	ldr	r0, [pc, #60]	; (d005a460 <rand+0x78>)
d005a424:	690a      	ldr	r2, [r1, #16]
d005a426:	694b      	ldr	r3, [r1, #20]
d005a428:	4c0e      	ldr	r4, [pc, #56]	; (d005a464 <rand+0x7c>)
d005a42a:	4350      	muls	r0, r2
d005a42c:	fb04 0003 	mla	r0, r4, r3, r0
d005a430:	fba2 3404 	umull	r3, r4, r2, r4
d005a434:	1c5a      	adds	r2, r3, #1
d005a436:	4404      	add	r4, r0
d005a438:	f144 0000 	adc.w	r0, r4, #0
d005a43c:	e9c1 2004 	strd	r2, r0, [r1, #16]
d005a440:	f020 4000 	bic.w	r0, r0, #2147483648	; 0x80000000
d005a444:	bd10      	pop	{r4, pc}
d005a446:	bf00      	nop
d005a448:	d0090dcc 	.word	0xd0090dcc
d005a44c:	d005c4ac 	.word	0xd005c4ac
d005a450:	d005c4c3 	.word	0xd005c4c3
d005a454:	abcd330e 	.word	0xabcd330e
d005a458:	e66d1234 	.word	0xe66d1234
d005a45c:	0005deec 	.word	0x0005deec
d005a460:	5851f42d 	.word	0x5851f42d
d005a464:	4c957f2d 	.word	0x4c957f2d

d005a468 <setbuf>:
d005a468:	2900      	cmp	r1, #0
d005a46a:	f44f 6380 	mov.w	r3, #1024	; 0x400
d005a46e:	bf0c      	ite	eq
d005a470:	2202      	moveq	r2, #2
d005a472:	2200      	movne	r2, #0
d005a474:	f000 b800 	b.w	d005a478 <setvbuf>

d005a478 <setvbuf>:
d005a478:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
d005a47c:	461d      	mov	r5, r3
d005a47e:	4b5d      	ldr	r3, [pc, #372]	; (d005a5f4 <setvbuf+0x17c>)
d005a480:	681f      	ldr	r7, [r3, #0]
d005a482:	4604      	mov	r4, r0
d005a484:	460e      	mov	r6, r1
d005a486:	4690      	mov	r8, r2
d005a488:	b127      	cbz	r7, d005a494 <setvbuf+0x1c>
d005a48a:	69bb      	ldr	r3, [r7, #24]
d005a48c:	b913      	cbnz	r3, d005a494 <setvbuf+0x1c>
d005a48e:	4638      	mov	r0, r7
d005a490:	f7ff fe2a 	bl	d005a0e8 <__sinit>
d005a494:	4b58      	ldr	r3, [pc, #352]	; (d005a5f8 <setvbuf+0x180>)
d005a496:	429c      	cmp	r4, r3
d005a498:	d167      	bne.n	d005a56a <setvbuf+0xf2>
d005a49a:	687c      	ldr	r4, [r7, #4]
d005a49c:	f1b8 0f02 	cmp.w	r8, #2
d005a4a0:	d006      	beq.n	d005a4b0 <setvbuf+0x38>
d005a4a2:	f1b8 0f01 	cmp.w	r8, #1
d005a4a6:	f200 809f 	bhi.w	d005a5e8 <setvbuf+0x170>
d005a4aa:	2d00      	cmp	r5, #0
d005a4ac:	f2c0 809c 	blt.w	d005a5e8 <setvbuf+0x170>
d005a4b0:	6e63      	ldr	r3, [r4, #100]	; 0x64
d005a4b2:	07db      	lsls	r3, r3, #31
d005a4b4:	d405      	bmi.n	d005a4c2 <setvbuf+0x4a>
d005a4b6:	89a3      	ldrh	r3, [r4, #12]
d005a4b8:	0598      	lsls	r0, r3, #22
d005a4ba:	d402      	bmi.n	d005a4c2 <setvbuf+0x4a>
d005a4bc:	6da0      	ldr	r0, [r4, #88]	; 0x58
d005a4be:	f7ff feb2 	bl	d005a226 <__retarget_lock_acquire_recursive>
d005a4c2:	4621      	mov	r1, r4
d005a4c4:	4638      	mov	r0, r7
d005a4c6:	f7ff fd7b 	bl	d0059fc0 <_fflush_r>
d005a4ca:	6b61      	ldr	r1, [r4, #52]	; 0x34
d005a4cc:	b141      	cbz	r1, d005a4e0 <setvbuf+0x68>
d005a4ce:	f104 0344 	add.w	r3, r4, #68	; 0x44
d005a4d2:	4299      	cmp	r1, r3
d005a4d4:	d002      	beq.n	d005a4dc <setvbuf+0x64>
d005a4d6:	4638      	mov	r0, r7
d005a4d8:	f7ff fedc 	bl	d005a294 <_free_r>
d005a4dc:	2300      	movs	r3, #0
d005a4de:	6363      	str	r3, [r4, #52]	; 0x34
d005a4e0:	2300      	movs	r3, #0
d005a4e2:	61a3      	str	r3, [r4, #24]
d005a4e4:	6063      	str	r3, [r4, #4]
d005a4e6:	89a3      	ldrh	r3, [r4, #12]
d005a4e8:	0619      	lsls	r1, r3, #24
d005a4ea:	d503      	bpl.n	d005a4f4 <setvbuf+0x7c>
d005a4ec:	6921      	ldr	r1, [r4, #16]
d005a4ee:	4638      	mov	r0, r7
d005a4f0:	f7ff fed0 	bl	d005a294 <_free_r>
d005a4f4:	89a3      	ldrh	r3, [r4, #12]
d005a4f6:	f423 634a 	bic.w	r3, r3, #3232	; 0xca0
d005a4fa:	f023 0303 	bic.w	r3, r3, #3
d005a4fe:	f1b8 0f02 	cmp.w	r8, #2
d005a502:	81a3      	strh	r3, [r4, #12]
d005a504:	d06c      	beq.n	d005a5e0 <setvbuf+0x168>
d005a506:	ab01      	add	r3, sp, #4
d005a508:	466a      	mov	r2, sp
d005a50a:	4621      	mov	r1, r4
d005a50c:	4638      	mov	r0, r7
d005a50e:	f000 f92f 	bl	d005a770 <__swhatbuf_r>
d005a512:	89a3      	ldrh	r3, [r4, #12]
d005a514:	4318      	orrs	r0, r3
d005a516:	81a0      	strh	r0, [r4, #12]
d005a518:	2d00      	cmp	r5, #0
d005a51a:	d130      	bne.n	d005a57e <setvbuf+0x106>
d005a51c:	9d00      	ldr	r5, [sp, #0]
d005a51e:	4628      	mov	r0, r5
d005a520:	f7ff fe84 	bl	d005a22c <malloc>
d005a524:	4606      	mov	r6, r0
d005a526:	2800      	cmp	r0, #0
d005a528:	d155      	bne.n	d005a5d6 <setvbuf+0x15e>
d005a52a:	f8dd 9000 	ldr.w	r9, [sp]
d005a52e:	45a9      	cmp	r9, r5
d005a530:	d14a      	bne.n	d005a5c8 <setvbuf+0x150>
d005a532:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d005a536:	2200      	movs	r2, #0
d005a538:	60a2      	str	r2, [r4, #8]
d005a53a:	f104 0247 	add.w	r2, r4, #71	; 0x47
d005a53e:	6022      	str	r2, [r4, #0]
d005a540:	6122      	str	r2, [r4, #16]
d005a542:	2201      	movs	r2, #1
d005a544:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d005a548:	6162      	str	r2, [r4, #20]
d005a54a:	6e62      	ldr	r2, [r4, #100]	; 0x64
d005a54c:	f043 0302 	orr.w	r3, r3, #2
d005a550:	07d2      	lsls	r2, r2, #31
d005a552:	81a3      	strh	r3, [r4, #12]
d005a554:	d405      	bmi.n	d005a562 <setvbuf+0xea>
d005a556:	f413 7f00 	tst.w	r3, #512	; 0x200
d005a55a:	d102      	bne.n	d005a562 <setvbuf+0xea>
d005a55c:	6da0      	ldr	r0, [r4, #88]	; 0x58
d005a55e:	f7ff fe63 	bl	d005a228 <__retarget_lock_release_recursive>
d005a562:	4628      	mov	r0, r5
d005a564:	b003      	add	sp, #12
d005a566:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
d005a56a:	4b24      	ldr	r3, [pc, #144]	; (d005a5fc <setvbuf+0x184>)
d005a56c:	429c      	cmp	r4, r3
d005a56e:	d101      	bne.n	d005a574 <setvbuf+0xfc>
d005a570:	68bc      	ldr	r4, [r7, #8]
d005a572:	e793      	b.n	d005a49c <setvbuf+0x24>
d005a574:	4b22      	ldr	r3, [pc, #136]	; (d005a600 <setvbuf+0x188>)
d005a576:	429c      	cmp	r4, r3
d005a578:	bf08      	it	eq
d005a57a:	68fc      	ldreq	r4, [r7, #12]
d005a57c:	e78e      	b.n	d005a49c <setvbuf+0x24>
d005a57e:	2e00      	cmp	r6, #0
d005a580:	d0cd      	beq.n	d005a51e <setvbuf+0xa6>
d005a582:	69bb      	ldr	r3, [r7, #24]
d005a584:	b913      	cbnz	r3, d005a58c <setvbuf+0x114>
d005a586:	4638      	mov	r0, r7
d005a588:	f7ff fdae 	bl	d005a0e8 <__sinit>
d005a58c:	f1b8 0f01 	cmp.w	r8, #1
d005a590:	bf08      	it	eq
d005a592:	89a3      	ldrheq	r3, [r4, #12]
d005a594:	6026      	str	r6, [r4, #0]
d005a596:	bf04      	itt	eq
d005a598:	f043 0301 	orreq.w	r3, r3, #1
d005a59c:	81a3      	strheq	r3, [r4, #12]
d005a59e:	89a2      	ldrh	r2, [r4, #12]
d005a5a0:	f012 0308 	ands.w	r3, r2, #8
d005a5a4:	e9c4 6504 	strd	r6, r5, [r4, #16]
d005a5a8:	d01c      	beq.n	d005a5e4 <setvbuf+0x16c>
d005a5aa:	07d3      	lsls	r3, r2, #31
d005a5ac:	bf41      	itttt	mi
d005a5ae:	2300      	movmi	r3, #0
d005a5b0:	426d      	negmi	r5, r5
d005a5b2:	60a3      	strmi	r3, [r4, #8]
d005a5b4:	61a5      	strmi	r5, [r4, #24]
d005a5b6:	bf58      	it	pl
d005a5b8:	60a5      	strpl	r5, [r4, #8]
d005a5ba:	6e65      	ldr	r5, [r4, #100]	; 0x64
d005a5bc:	f015 0501 	ands.w	r5, r5, #1
d005a5c0:	d115      	bne.n	d005a5ee <setvbuf+0x176>
d005a5c2:	f412 7f00 	tst.w	r2, #512	; 0x200
d005a5c6:	e7c8      	b.n	d005a55a <setvbuf+0xe2>
d005a5c8:	4648      	mov	r0, r9
d005a5ca:	f7ff fe2f 	bl	d005a22c <malloc>
d005a5ce:	4606      	mov	r6, r0
d005a5d0:	2800      	cmp	r0, #0
d005a5d2:	d0ae      	beq.n	d005a532 <setvbuf+0xba>
d005a5d4:	464d      	mov	r5, r9
d005a5d6:	89a3      	ldrh	r3, [r4, #12]
d005a5d8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d005a5dc:	81a3      	strh	r3, [r4, #12]
d005a5de:	e7d0      	b.n	d005a582 <setvbuf+0x10a>
d005a5e0:	2500      	movs	r5, #0
d005a5e2:	e7a8      	b.n	d005a536 <setvbuf+0xbe>
d005a5e4:	60a3      	str	r3, [r4, #8]
d005a5e6:	e7e8      	b.n	d005a5ba <setvbuf+0x142>
d005a5e8:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
d005a5ec:	e7b9      	b.n	d005a562 <setvbuf+0xea>
d005a5ee:	2500      	movs	r5, #0
d005a5f0:	e7b7      	b.n	d005a562 <setvbuf+0xea>
d005a5f2:	bf00      	nop
d005a5f4:	d0090dcc 	.word	0xd0090dcc
d005a5f8:	d005c468 	.word	0xd005c468
d005a5fc:	d005c488 	.word	0xd005c488
d005a600:	d005c448 	.word	0xd005c448

d005a604 <siprintf>:
d005a604:	b40e      	push	{r1, r2, r3}
d005a606:	b500      	push	{lr}
d005a608:	b09c      	sub	sp, #112	; 0x70
d005a60a:	ab1d      	add	r3, sp, #116	; 0x74
d005a60c:	9002      	str	r0, [sp, #8]
d005a60e:	9006      	str	r0, [sp, #24]
d005a610:	f06f 4100 	mvn.w	r1, #2147483648	; 0x80000000
d005a614:	4809      	ldr	r0, [pc, #36]	; (d005a63c <siprintf+0x38>)
d005a616:	9107      	str	r1, [sp, #28]
d005a618:	9104      	str	r1, [sp, #16]
d005a61a:	4909      	ldr	r1, [pc, #36]	; (d005a640 <siprintf+0x3c>)
d005a61c:	f853 2b04 	ldr.w	r2, [r3], #4
d005a620:	9105      	str	r1, [sp, #20]
d005a622:	6800      	ldr	r0, [r0, #0]
d005a624:	9301      	str	r3, [sp, #4]
d005a626:	a902      	add	r1, sp, #8
d005a628:	f000 f994 	bl	d005a954 <_svfiprintf_r>
d005a62c:	9b02      	ldr	r3, [sp, #8]
d005a62e:	2200      	movs	r2, #0
d005a630:	701a      	strb	r2, [r3, #0]
d005a632:	b01c      	add	sp, #112	; 0x70
d005a634:	f85d eb04 	ldr.w	lr, [sp], #4
d005a638:	b003      	add	sp, #12
d005a63a:	4770      	bx	lr
d005a63c:	d0090dcc 	.word	0xd0090dcc
d005a640:	ffff0208 	.word	0xffff0208

d005a644 <__sread>:
d005a644:	b510      	push	{r4, lr}
d005a646:	460c      	mov	r4, r1
d005a648:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d005a64c:	f000 fd70 	bl	d005b130 <_read_r>
d005a650:	2800      	cmp	r0, #0
d005a652:	bfab      	itete	ge
d005a654:	6d63      	ldrge	r3, [r4, #84]	; 0x54
d005a656:	89a3      	ldrhlt	r3, [r4, #12]
d005a658:	181b      	addge	r3, r3, r0
d005a65a:	f423 5380 	biclt.w	r3, r3, #4096	; 0x1000
d005a65e:	bfac      	ite	ge
d005a660:	6563      	strge	r3, [r4, #84]	; 0x54
d005a662:	81a3      	strhlt	r3, [r4, #12]
d005a664:	bd10      	pop	{r4, pc}

d005a666 <__swrite>:
d005a666:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
d005a66a:	461f      	mov	r7, r3
d005a66c:	898b      	ldrh	r3, [r1, #12]
d005a66e:	05db      	lsls	r3, r3, #23
d005a670:	4605      	mov	r5, r0
d005a672:	460c      	mov	r4, r1
d005a674:	4616      	mov	r6, r2
d005a676:	d505      	bpl.n	d005a684 <__swrite+0x1e>
d005a678:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d005a67c:	2302      	movs	r3, #2
d005a67e:	2200      	movs	r2, #0
d005a680:	f000 f864 	bl	d005a74c <_lseek_r>
d005a684:	89a3      	ldrh	r3, [r4, #12]
d005a686:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d005a68a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
d005a68e:	81a3      	strh	r3, [r4, #12]
d005a690:	4632      	mov	r2, r6
d005a692:	463b      	mov	r3, r7
d005a694:	4628      	mov	r0, r5
d005a696:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
d005a69a:	f7f5 bcdb 	b.w	d0050054 <_write_r>

d005a69e <__sseek>:
d005a69e:	b510      	push	{r4, lr}
d005a6a0:	460c      	mov	r4, r1
d005a6a2:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d005a6a6:	f000 f851 	bl	d005a74c <_lseek_r>
d005a6aa:	1c43      	adds	r3, r0, #1
d005a6ac:	89a3      	ldrh	r3, [r4, #12]
d005a6ae:	bf15      	itete	ne
d005a6b0:	6560      	strne	r0, [r4, #84]	; 0x54
d005a6b2:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
d005a6b6:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
d005a6ba:	81a3      	strheq	r3, [r4, #12]
d005a6bc:	bf18      	it	ne
d005a6be:	81a3      	strhne	r3, [r4, #12]
d005a6c0:	bd10      	pop	{r4, pc}

d005a6c2 <__sclose>:
d005a6c2:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d005a6c6:	f000 b81f 	b.w	d005a708 <_close_r>
	...

d005a6cc <__assert_func>:
d005a6cc:	b51f      	push	{r0, r1, r2, r3, r4, lr}
d005a6ce:	4614      	mov	r4, r2
d005a6d0:	461a      	mov	r2, r3
d005a6d2:	4b09      	ldr	r3, [pc, #36]	; (d005a6f8 <__assert_func+0x2c>)
d005a6d4:	681b      	ldr	r3, [r3, #0]
d005a6d6:	4605      	mov	r5, r0
d005a6d8:	68d8      	ldr	r0, [r3, #12]
d005a6da:	b14c      	cbz	r4, d005a6f0 <__assert_func+0x24>
d005a6dc:	4b07      	ldr	r3, [pc, #28]	; (d005a6fc <__assert_func+0x30>)
d005a6de:	9100      	str	r1, [sp, #0]
d005a6e0:	e9cd 3401 	strd	r3, r4, [sp, #4]
d005a6e4:	4906      	ldr	r1, [pc, #24]	; (d005a700 <__assert_func+0x34>)
d005a6e6:	462b      	mov	r3, r5
d005a6e8:	f000 f81e 	bl	d005a728 <fiprintf>
d005a6ec:	f000 fdf2 	bl	d005b2d4 <abort>
d005a6f0:	4b04      	ldr	r3, [pc, #16]	; (d005a704 <__assert_func+0x38>)
d005a6f2:	461c      	mov	r4, r3
d005a6f4:	e7f3      	b.n	d005a6de <__assert_func+0x12>
d005a6f6:	bf00      	nop
d005a6f8:	d0090dcc 	.word	0xd0090dcc
d005a6fc:	d005c522 	.word	0xd005c522
d005a700:	d005c52f 	.word	0xd005c52f
d005a704:	d005c55d 	.word	0xd005c55d

d005a708 <_close_r>:
d005a708:	b538      	push	{r3, r4, r5, lr}
d005a70a:	4d06      	ldr	r5, [pc, #24]	; (d005a724 <_close_r+0x1c>)
d005a70c:	2300      	movs	r3, #0
d005a70e:	4604      	mov	r4, r0
d005a710:	4608      	mov	r0, r1
d005a712:	602b      	str	r3, [r5, #0]
d005a714:	f7f5 fcd8 	bl	d00500c8 <_close>
d005a718:	1c43      	adds	r3, r0, #1
d005a71a:	d102      	bne.n	d005a722 <_close_r+0x1a>
d005a71c:	682b      	ldr	r3, [r5, #0]
d005a71e:	b103      	cbz	r3, d005a722 <_close_r+0x1a>
d005a720:	6023      	str	r3, [r4, #0]
d005a722:	bd38      	pop	{r3, r4, r5, pc}
d005a724:	d01312ac 	.word	0xd01312ac

d005a728 <fiprintf>:
d005a728:	b40e      	push	{r1, r2, r3}
d005a72a:	b503      	push	{r0, r1, lr}
d005a72c:	4601      	mov	r1, r0
d005a72e:	ab03      	add	r3, sp, #12
d005a730:	4805      	ldr	r0, [pc, #20]	; (d005a748 <fiprintf+0x20>)
d005a732:	f853 2b04 	ldr.w	r2, [r3], #4
d005a736:	6800      	ldr	r0, [r0, #0]
d005a738:	9301      	str	r3, [sp, #4]
d005a73a:	f000 fa35 	bl	d005aba8 <_vfiprintf_r>
d005a73e:	b002      	add	sp, #8
d005a740:	f85d eb04 	ldr.w	lr, [sp], #4
d005a744:	b003      	add	sp, #12
d005a746:	4770      	bx	lr
d005a748:	d0090dcc 	.word	0xd0090dcc

d005a74c <_lseek_r>:
d005a74c:	b538      	push	{r3, r4, r5, lr}
d005a74e:	4d07      	ldr	r5, [pc, #28]	; (d005a76c <_lseek_r+0x20>)
d005a750:	4604      	mov	r4, r0
d005a752:	4608      	mov	r0, r1
d005a754:	4611      	mov	r1, r2
d005a756:	2200      	movs	r2, #0
d005a758:	602a      	str	r2, [r5, #0]
d005a75a:	461a      	mov	r2, r3
d005a75c:	f7f5 fcbe 	bl	d00500dc <_lseek>
d005a760:	1c43      	adds	r3, r0, #1
d005a762:	d102      	bne.n	d005a76a <_lseek_r+0x1e>
d005a764:	682b      	ldr	r3, [r5, #0]
d005a766:	b103      	cbz	r3, d005a76a <_lseek_r+0x1e>
d005a768:	6023      	str	r3, [r4, #0]
d005a76a:	bd38      	pop	{r3, r4, r5, pc}
d005a76c:	d01312ac 	.word	0xd01312ac

d005a770 <__swhatbuf_r>:
d005a770:	b570      	push	{r4, r5, r6, lr}
d005a772:	460e      	mov	r6, r1
d005a774:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
d005a778:	2900      	cmp	r1, #0
d005a77a:	b096      	sub	sp, #88	; 0x58
d005a77c:	4614      	mov	r4, r2
d005a77e:	461d      	mov	r5, r3
d005a780:	da07      	bge.n	d005a792 <__swhatbuf_r+0x22>
d005a782:	2300      	movs	r3, #0
d005a784:	602b      	str	r3, [r5, #0]
d005a786:	89b3      	ldrh	r3, [r6, #12]
d005a788:	061a      	lsls	r2, r3, #24
d005a78a:	d410      	bmi.n	d005a7ae <__swhatbuf_r+0x3e>
d005a78c:	f44f 6380 	mov.w	r3, #1024	; 0x400
d005a790:	e00e      	b.n	d005a7b0 <__swhatbuf_r+0x40>
d005a792:	466a      	mov	r2, sp
d005a794:	f000 fda6 	bl	d005b2e4 <_fstat_r>
d005a798:	2800      	cmp	r0, #0
d005a79a:	dbf2      	blt.n	d005a782 <__swhatbuf_r+0x12>
d005a79c:	9a01      	ldr	r2, [sp, #4]
d005a79e:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
d005a7a2:	f5a2 5300 	sub.w	r3, r2, #8192	; 0x2000
d005a7a6:	425a      	negs	r2, r3
d005a7a8:	415a      	adcs	r2, r3
d005a7aa:	602a      	str	r2, [r5, #0]
d005a7ac:	e7ee      	b.n	d005a78c <__swhatbuf_r+0x1c>
d005a7ae:	2340      	movs	r3, #64	; 0x40
d005a7b0:	2000      	movs	r0, #0
d005a7b2:	6023      	str	r3, [r4, #0]
d005a7b4:	b016      	add	sp, #88	; 0x58
d005a7b6:	bd70      	pop	{r4, r5, r6, pc}

d005a7b8 <__smakebuf_r>:
d005a7b8:	898b      	ldrh	r3, [r1, #12]
d005a7ba:	b573      	push	{r0, r1, r4, r5, r6, lr}
d005a7bc:	079d      	lsls	r5, r3, #30
d005a7be:	4606      	mov	r6, r0
d005a7c0:	460c      	mov	r4, r1
d005a7c2:	d507      	bpl.n	d005a7d4 <__smakebuf_r+0x1c>
d005a7c4:	f104 0347 	add.w	r3, r4, #71	; 0x47
d005a7c8:	6023      	str	r3, [r4, #0]
d005a7ca:	6123      	str	r3, [r4, #16]
d005a7cc:	2301      	movs	r3, #1
d005a7ce:	6163      	str	r3, [r4, #20]
d005a7d0:	b002      	add	sp, #8
d005a7d2:	bd70      	pop	{r4, r5, r6, pc}
d005a7d4:	ab01      	add	r3, sp, #4
d005a7d6:	466a      	mov	r2, sp
d005a7d8:	f7ff ffca 	bl	d005a770 <__swhatbuf_r>
d005a7dc:	9900      	ldr	r1, [sp, #0]
d005a7de:	4605      	mov	r5, r0
d005a7e0:	4630      	mov	r0, r6
d005a7e2:	f7ff fda7 	bl	d005a334 <_malloc_r>
d005a7e6:	b948      	cbnz	r0, d005a7fc <__smakebuf_r+0x44>
d005a7e8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
d005a7ec:	059a      	lsls	r2, r3, #22
d005a7ee:	d4ef      	bmi.n	d005a7d0 <__smakebuf_r+0x18>
d005a7f0:	f023 0303 	bic.w	r3, r3, #3
d005a7f4:	f043 0302 	orr.w	r3, r3, #2
d005a7f8:	81a3      	strh	r3, [r4, #12]
d005a7fa:	e7e3      	b.n	d005a7c4 <__smakebuf_r+0xc>
d005a7fc:	4b0d      	ldr	r3, [pc, #52]	; (d005a834 <__smakebuf_r+0x7c>)
d005a7fe:	62b3      	str	r3, [r6, #40]	; 0x28
d005a800:	89a3      	ldrh	r3, [r4, #12]
d005a802:	6020      	str	r0, [r4, #0]
d005a804:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d005a808:	81a3      	strh	r3, [r4, #12]
d005a80a:	9b00      	ldr	r3, [sp, #0]
d005a80c:	6163      	str	r3, [r4, #20]
d005a80e:	9b01      	ldr	r3, [sp, #4]
d005a810:	6120      	str	r0, [r4, #16]
d005a812:	b15b      	cbz	r3, d005a82c <__smakebuf_r+0x74>
d005a814:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
d005a818:	4630      	mov	r0, r6
d005a81a:	f000 fd75 	bl	d005b308 <_isatty_r>
d005a81e:	b128      	cbz	r0, d005a82c <__smakebuf_r+0x74>
d005a820:	89a3      	ldrh	r3, [r4, #12]
d005a822:	f023 0303 	bic.w	r3, r3, #3
d005a826:	f043 0301 	orr.w	r3, r3, #1
d005a82a:	81a3      	strh	r3, [r4, #12]
d005a82c:	89a0      	ldrh	r0, [r4, #12]
d005a82e:	4305      	orrs	r5, r0
d005a830:	81a5      	strh	r5, [r4, #12]
d005a832:	e7cd      	b.n	d005a7d0 <__smakebuf_r+0x18>
d005a834:	d005a081 	.word	0xd005a081

d005a838 <__malloc_lock>:
d005a838:	4801      	ldr	r0, [pc, #4]	; (d005a840 <__malloc_lock+0x8>)
d005a83a:	f7ff bcf4 	b.w	d005a226 <__retarget_lock_acquire_recursive>
d005a83e:	bf00      	nop
d005a840:	d01312a4 	.word	0xd01312a4

d005a844 <__malloc_unlock>:
d005a844:	4801      	ldr	r0, [pc, #4]	; (d005a84c <__malloc_unlock+0x8>)
d005a846:	f7ff bcef 	b.w	d005a228 <__retarget_lock_release_recursive>
d005a84a:	bf00      	nop
d005a84c:	d01312a4 	.word	0xd01312a4

d005a850 <_realloc_r>:
d005a850:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005a852:	4607      	mov	r7, r0
d005a854:	4614      	mov	r4, r2
d005a856:	460e      	mov	r6, r1
d005a858:	b921      	cbnz	r1, d005a864 <_realloc_r+0x14>
d005a85a:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d005a85e:	4611      	mov	r1, r2
d005a860:	f7ff bd68 	b.w	d005a334 <_malloc_r>
d005a864:	b922      	cbnz	r2, d005a870 <_realloc_r+0x20>
d005a866:	f7ff fd15 	bl	d005a294 <_free_r>
d005a86a:	4625      	mov	r5, r4
d005a86c:	4628      	mov	r0, r5
d005a86e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d005a870:	f000 fdc8 	bl	d005b404 <_malloc_usable_size_r>
d005a874:	42a0      	cmp	r0, r4
d005a876:	d20f      	bcs.n	d005a898 <_realloc_r+0x48>
d005a878:	4621      	mov	r1, r4
d005a87a:	4638      	mov	r0, r7
d005a87c:	f7ff fd5a 	bl	d005a334 <_malloc_r>
d005a880:	4605      	mov	r5, r0
d005a882:	2800      	cmp	r0, #0
d005a884:	d0f2      	beq.n	d005a86c <_realloc_r+0x1c>
d005a886:	4631      	mov	r1, r6
d005a888:	4622      	mov	r2, r4
d005a88a:	f7ff fced 	bl	d005a268 <memcpy>
d005a88e:	4631      	mov	r1, r6
d005a890:	4638      	mov	r0, r7
d005a892:	f7ff fcff 	bl	d005a294 <_free_r>
d005a896:	e7e9      	b.n	d005a86c <_realloc_r+0x1c>
d005a898:	4635      	mov	r5, r6
d005a89a:	e7e7      	b.n	d005a86c <_realloc_r+0x1c>

d005a89c <__ssputs_r>:
d005a89c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d005a8a0:	688e      	ldr	r6, [r1, #8]
d005a8a2:	429e      	cmp	r6, r3
d005a8a4:	4682      	mov	sl, r0
d005a8a6:	460c      	mov	r4, r1
d005a8a8:	4690      	mov	r8, r2
d005a8aa:	461f      	mov	r7, r3
d005a8ac:	d838      	bhi.n	d005a920 <__ssputs_r+0x84>
d005a8ae:	898a      	ldrh	r2, [r1, #12]
d005a8b0:	f412 6f90 	tst.w	r2, #1152	; 0x480
d005a8b4:	d032      	beq.n	d005a91c <__ssputs_r+0x80>
d005a8b6:	6825      	ldr	r5, [r4, #0]
d005a8b8:	6909      	ldr	r1, [r1, #16]
d005a8ba:	eba5 0901 	sub.w	r9, r5, r1
d005a8be:	6965      	ldr	r5, [r4, #20]
d005a8c0:	eb05 0545 	add.w	r5, r5, r5, lsl #1
d005a8c4:	eb05 75d5 	add.w	r5, r5, r5, lsr #31
d005a8c8:	3301      	adds	r3, #1
d005a8ca:	444b      	add	r3, r9
d005a8cc:	106d      	asrs	r5, r5, #1
d005a8ce:	429d      	cmp	r5, r3
d005a8d0:	bf38      	it	cc
d005a8d2:	461d      	movcc	r5, r3
d005a8d4:	0553      	lsls	r3, r2, #21
d005a8d6:	d531      	bpl.n	d005a93c <__ssputs_r+0xa0>
d005a8d8:	4629      	mov	r1, r5
d005a8da:	f7ff fd2b 	bl	d005a334 <_malloc_r>
d005a8de:	4606      	mov	r6, r0
d005a8e0:	b950      	cbnz	r0, d005a8f8 <__ssputs_r+0x5c>
d005a8e2:	230c      	movs	r3, #12
d005a8e4:	f8ca 3000 	str.w	r3, [sl]
d005a8e8:	89a3      	ldrh	r3, [r4, #12]
d005a8ea:	f043 0340 	orr.w	r3, r3, #64	; 0x40
d005a8ee:	81a3      	strh	r3, [r4, #12]
d005a8f0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d005a8f4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d005a8f8:	6921      	ldr	r1, [r4, #16]
d005a8fa:	464a      	mov	r2, r9
d005a8fc:	f7ff fcb4 	bl	d005a268 <memcpy>
d005a900:	89a3      	ldrh	r3, [r4, #12]
d005a902:	f423 6390 	bic.w	r3, r3, #1152	; 0x480
d005a906:	f043 0380 	orr.w	r3, r3, #128	; 0x80
d005a90a:	81a3      	strh	r3, [r4, #12]
d005a90c:	6126      	str	r6, [r4, #16]
d005a90e:	6165      	str	r5, [r4, #20]
d005a910:	444e      	add	r6, r9
d005a912:	eba5 0509 	sub.w	r5, r5, r9
d005a916:	6026      	str	r6, [r4, #0]
d005a918:	60a5      	str	r5, [r4, #8]
d005a91a:	463e      	mov	r6, r7
d005a91c:	42be      	cmp	r6, r7
d005a91e:	d900      	bls.n	d005a922 <__ssputs_r+0x86>
d005a920:	463e      	mov	r6, r7
d005a922:	4632      	mov	r2, r6
d005a924:	6820      	ldr	r0, [r4, #0]
d005a926:	4641      	mov	r1, r8
d005a928:	f000 fd52 	bl	d005b3d0 <memmove>
d005a92c:	68a3      	ldr	r3, [r4, #8]
d005a92e:	6822      	ldr	r2, [r4, #0]
d005a930:	1b9b      	subs	r3, r3, r6
d005a932:	4432      	add	r2, r6
d005a934:	60a3      	str	r3, [r4, #8]
d005a936:	6022      	str	r2, [r4, #0]
d005a938:	2000      	movs	r0, #0
d005a93a:	e7db      	b.n	d005a8f4 <__ssputs_r+0x58>
d005a93c:	462a      	mov	r2, r5
d005a93e:	f7ff ff87 	bl	d005a850 <_realloc_r>
d005a942:	4606      	mov	r6, r0
d005a944:	2800      	cmp	r0, #0
d005a946:	d1e1      	bne.n	d005a90c <__ssputs_r+0x70>
d005a948:	6921      	ldr	r1, [r4, #16]
d005a94a:	4650      	mov	r0, sl
d005a94c:	f7ff fca2 	bl	d005a294 <_free_r>
d005a950:	e7c7      	b.n	d005a8e2 <__ssputs_r+0x46>
	...

d005a954 <_svfiprintf_r>:
d005a954:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d005a958:	4698      	mov	r8, r3
d005a95a:	898b      	ldrh	r3, [r1, #12]
d005a95c:	061b      	lsls	r3, r3, #24
d005a95e:	b09d      	sub	sp, #116	; 0x74
d005a960:	4607      	mov	r7, r0
d005a962:	460d      	mov	r5, r1
d005a964:	4614      	mov	r4, r2
d005a966:	d50e      	bpl.n	d005a986 <_svfiprintf_r+0x32>
d005a968:	690b      	ldr	r3, [r1, #16]
d005a96a:	b963      	cbnz	r3, d005a986 <_svfiprintf_r+0x32>
d005a96c:	2140      	movs	r1, #64	; 0x40
d005a96e:	f7ff fce1 	bl	d005a334 <_malloc_r>
d005a972:	6028      	str	r0, [r5, #0]
d005a974:	6128      	str	r0, [r5, #16]
d005a976:	b920      	cbnz	r0, d005a982 <_svfiprintf_r+0x2e>
d005a978:	230c      	movs	r3, #12
d005a97a:	603b      	str	r3, [r7, #0]
d005a97c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d005a980:	e0d1      	b.n	d005ab26 <_svfiprintf_r+0x1d2>
d005a982:	2340      	movs	r3, #64	; 0x40
d005a984:	616b      	str	r3, [r5, #20]
d005a986:	2300      	movs	r3, #0
d005a988:	9309      	str	r3, [sp, #36]	; 0x24
d005a98a:	2320      	movs	r3, #32
d005a98c:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d005a990:	f8cd 800c 	str.w	r8, [sp, #12]
d005a994:	2330      	movs	r3, #48	; 0x30
d005a996:	f8df 81a8 	ldr.w	r8, [pc, #424]	; d005ab40 <_svfiprintf_r+0x1ec>
d005a99a:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d005a99e:	f04f 0901 	mov.w	r9, #1
d005a9a2:	4623      	mov	r3, r4
d005a9a4:	469a      	mov	sl, r3
d005a9a6:	f813 2b01 	ldrb.w	r2, [r3], #1
d005a9aa:	b10a      	cbz	r2, d005a9b0 <_svfiprintf_r+0x5c>
d005a9ac:	2a25      	cmp	r2, #37	; 0x25
d005a9ae:	d1f9      	bne.n	d005a9a4 <_svfiprintf_r+0x50>
d005a9b0:	ebba 0b04 	subs.w	fp, sl, r4
d005a9b4:	d00b      	beq.n	d005a9ce <_svfiprintf_r+0x7a>
d005a9b6:	465b      	mov	r3, fp
d005a9b8:	4622      	mov	r2, r4
d005a9ba:	4629      	mov	r1, r5
d005a9bc:	4638      	mov	r0, r7
d005a9be:	f7ff ff6d 	bl	d005a89c <__ssputs_r>
d005a9c2:	3001      	adds	r0, #1
d005a9c4:	f000 80aa 	beq.w	d005ab1c <_svfiprintf_r+0x1c8>
d005a9c8:	9a09      	ldr	r2, [sp, #36]	; 0x24
d005a9ca:	445a      	add	r2, fp
d005a9cc:	9209      	str	r2, [sp, #36]	; 0x24
d005a9ce:	f89a 3000 	ldrb.w	r3, [sl]
d005a9d2:	2b00      	cmp	r3, #0
d005a9d4:	f000 80a2 	beq.w	d005ab1c <_svfiprintf_r+0x1c8>
d005a9d8:	2300      	movs	r3, #0
d005a9da:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d005a9de:	e9cd 2305 	strd	r2, r3, [sp, #20]
d005a9e2:	f10a 0a01 	add.w	sl, sl, #1
d005a9e6:	9304      	str	r3, [sp, #16]
d005a9e8:	9307      	str	r3, [sp, #28]
d005a9ea:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d005a9ee:	931a      	str	r3, [sp, #104]	; 0x68
d005a9f0:	4654      	mov	r4, sl
d005a9f2:	2205      	movs	r2, #5
d005a9f4:	f814 1b01 	ldrb.w	r1, [r4], #1
d005a9f8:	4851      	ldr	r0, [pc, #324]	; (d005ab40 <_svfiprintf_r+0x1ec>)
d005a9fa:	f000 fc99 	bl	d005b330 <memchr>
d005a9fe:	9a04      	ldr	r2, [sp, #16]
d005aa00:	b9d8      	cbnz	r0, d005aa3a <_svfiprintf_r+0xe6>
d005aa02:	06d0      	lsls	r0, r2, #27
d005aa04:	bf44      	itt	mi
d005aa06:	2320      	movmi	r3, #32
d005aa08:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d005aa0c:	0711      	lsls	r1, r2, #28
d005aa0e:	bf44      	itt	mi
d005aa10:	232b      	movmi	r3, #43	; 0x2b
d005aa12:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d005aa16:	f89a 3000 	ldrb.w	r3, [sl]
d005aa1a:	2b2a      	cmp	r3, #42	; 0x2a
d005aa1c:	d015      	beq.n	d005aa4a <_svfiprintf_r+0xf6>
d005aa1e:	9a07      	ldr	r2, [sp, #28]
d005aa20:	4654      	mov	r4, sl
d005aa22:	2000      	movs	r0, #0
d005aa24:	f04f 0c0a 	mov.w	ip, #10
d005aa28:	4621      	mov	r1, r4
d005aa2a:	f811 3b01 	ldrb.w	r3, [r1], #1
d005aa2e:	3b30      	subs	r3, #48	; 0x30
d005aa30:	2b09      	cmp	r3, #9
d005aa32:	d94e      	bls.n	d005aad2 <_svfiprintf_r+0x17e>
d005aa34:	b1b0      	cbz	r0, d005aa64 <_svfiprintf_r+0x110>
d005aa36:	9207      	str	r2, [sp, #28]
d005aa38:	e014      	b.n	d005aa64 <_svfiprintf_r+0x110>
d005aa3a:	eba0 0308 	sub.w	r3, r0, r8
d005aa3e:	fa09 f303 	lsl.w	r3, r9, r3
d005aa42:	4313      	orrs	r3, r2
d005aa44:	9304      	str	r3, [sp, #16]
d005aa46:	46a2      	mov	sl, r4
d005aa48:	e7d2      	b.n	d005a9f0 <_svfiprintf_r+0x9c>
d005aa4a:	9b03      	ldr	r3, [sp, #12]
d005aa4c:	1d19      	adds	r1, r3, #4
d005aa4e:	681b      	ldr	r3, [r3, #0]
d005aa50:	9103      	str	r1, [sp, #12]
d005aa52:	2b00      	cmp	r3, #0
d005aa54:	bfbb      	ittet	lt
d005aa56:	425b      	neglt	r3, r3
d005aa58:	f042 0202 	orrlt.w	r2, r2, #2
d005aa5c:	9307      	strge	r3, [sp, #28]
d005aa5e:	9307      	strlt	r3, [sp, #28]
d005aa60:	bfb8      	it	lt
d005aa62:	9204      	strlt	r2, [sp, #16]
d005aa64:	7823      	ldrb	r3, [r4, #0]
d005aa66:	2b2e      	cmp	r3, #46	; 0x2e
d005aa68:	d10c      	bne.n	d005aa84 <_svfiprintf_r+0x130>
d005aa6a:	7863      	ldrb	r3, [r4, #1]
d005aa6c:	2b2a      	cmp	r3, #42	; 0x2a
d005aa6e:	d135      	bne.n	d005aadc <_svfiprintf_r+0x188>
d005aa70:	9b03      	ldr	r3, [sp, #12]
d005aa72:	1d1a      	adds	r2, r3, #4
d005aa74:	681b      	ldr	r3, [r3, #0]
d005aa76:	9203      	str	r2, [sp, #12]
d005aa78:	2b00      	cmp	r3, #0
d005aa7a:	bfb8      	it	lt
d005aa7c:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d005aa80:	3402      	adds	r4, #2
d005aa82:	9305      	str	r3, [sp, #20]
d005aa84:	f8df a0c8 	ldr.w	sl, [pc, #200]	; d005ab50 <_svfiprintf_r+0x1fc>
d005aa88:	7821      	ldrb	r1, [r4, #0]
d005aa8a:	2203      	movs	r2, #3
d005aa8c:	4650      	mov	r0, sl
d005aa8e:	f000 fc4f 	bl	d005b330 <memchr>
d005aa92:	b140      	cbz	r0, d005aaa6 <_svfiprintf_r+0x152>
d005aa94:	2340      	movs	r3, #64	; 0x40
d005aa96:	eba0 000a 	sub.w	r0, r0, sl
d005aa9a:	fa03 f000 	lsl.w	r0, r3, r0
d005aa9e:	9b04      	ldr	r3, [sp, #16]
d005aaa0:	4303      	orrs	r3, r0
d005aaa2:	3401      	adds	r4, #1
d005aaa4:	9304      	str	r3, [sp, #16]
d005aaa6:	f814 1b01 	ldrb.w	r1, [r4], #1
d005aaaa:	4826      	ldr	r0, [pc, #152]	; (d005ab44 <_svfiprintf_r+0x1f0>)
d005aaac:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d005aab0:	2206      	movs	r2, #6
d005aab2:	f000 fc3d 	bl	d005b330 <memchr>
d005aab6:	2800      	cmp	r0, #0
d005aab8:	d038      	beq.n	d005ab2c <_svfiprintf_r+0x1d8>
d005aaba:	4b23      	ldr	r3, [pc, #140]	; (d005ab48 <_svfiprintf_r+0x1f4>)
d005aabc:	bb1b      	cbnz	r3, d005ab06 <_svfiprintf_r+0x1b2>
d005aabe:	9b03      	ldr	r3, [sp, #12]
d005aac0:	3307      	adds	r3, #7
d005aac2:	f023 0307 	bic.w	r3, r3, #7
d005aac6:	3308      	adds	r3, #8
d005aac8:	9303      	str	r3, [sp, #12]
d005aaca:	9b09      	ldr	r3, [sp, #36]	; 0x24
d005aacc:	4433      	add	r3, r6
d005aace:	9309      	str	r3, [sp, #36]	; 0x24
d005aad0:	e767      	b.n	d005a9a2 <_svfiprintf_r+0x4e>
d005aad2:	fb0c 3202 	mla	r2, ip, r2, r3
d005aad6:	460c      	mov	r4, r1
d005aad8:	2001      	movs	r0, #1
d005aada:	e7a5      	b.n	d005aa28 <_svfiprintf_r+0xd4>
d005aadc:	2300      	movs	r3, #0
d005aade:	3401      	adds	r4, #1
d005aae0:	9305      	str	r3, [sp, #20]
d005aae2:	4619      	mov	r1, r3
d005aae4:	f04f 0c0a 	mov.w	ip, #10
d005aae8:	4620      	mov	r0, r4
d005aaea:	f810 2b01 	ldrb.w	r2, [r0], #1
d005aaee:	3a30      	subs	r2, #48	; 0x30
d005aaf0:	2a09      	cmp	r2, #9
d005aaf2:	d903      	bls.n	d005aafc <_svfiprintf_r+0x1a8>
d005aaf4:	2b00      	cmp	r3, #0
d005aaf6:	d0c5      	beq.n	d005aa84 <_svfiprintf_r+0x130>
d005aaf8:	9105      	str	r1, [sp, #20]
d005aafa:	e7c3      	b.n	d005aa84 <_svfiprintf_r+0x130>
d005aafc:	fb0c 2101 	mla	r1, ip, r1, r2
d005ab00:	4604      	mov	r4, r0
d005ab02:	2301      	movs	r3, #1
d005ab04:	e7f0      	b.n	d005aae8 <_svfiprintf_r+0x194>
d005ab06:	ab03      	add	r3, sp, #12
d005ab08:	9300      	str	r3, [sp, #0]
d005ab0a:	462a      	mov	r2, r5
d005ab0c:	4b0f      	ldr	r3, [pc, #60]	; (d005ab4c <_svfiprintf_r+0x1f8>)
d005ab0e:	a904      	add	r1, sp, #16
d005ab10:	4638      	mov	r0, r7
d005ab12:	f3af 8000 	nop.w
d005ab16:	1c42      	adds	r2, r0, #1
d005ab18:	4606      	mov	r6, r0
d005ab1a:	d1d6      	bne.n	d005aaca <_svfiprintf_r+0x176>
d005ab1c:	89ab      	ldrh	r3, [r5, #12]
d005ab1e:	065b      	lsls	r3, r3, #25
d005ab20:	f53f af2c 	bmi.w	d005a97c <_svfiprintf_r+0x28>
d005ab24:	9809      	ldr	r0, [sp, #36]	; 0x24
d005ab26:	b01d      	add	sp, #116	; 0x74
d005ab28:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005ab2c:	ab03      	add	r3, sp, #12
d005ab2e:	9300      	str	r3, [sp, #0]
d005ab30:	462a      	mov	r2, r5
d005ab32:	4b06      	ldr	r3, [pc, #24]	; (d005ab4c <_svfiprintf_r+0x1f8>)
d005ab34:	a904      	add	r1, sp, #16
d005ab36:	4638      	mov	r0, r7
d005ab38:	f000 f9d4 	bl	d005aee4 <_printf_i>
d005ab3c:	e7eb      	b.n	d005ab16 <_svfiprintf_r+0x1c2>
d005ab3e:	bf00      	nop
d005ab40:	d005c55e 	.word	0xd005c55e
d005ab44:	d005c568 	.word	0xd005c568
d005ab48:	00000000 	.word	0x00000000
d005ab4c:	d005a89d 	.word	0xd005a89d
d005ab50:	d005c564 	.word	0xd005c564

d005ab54 <__sfputc_r>:
d005ab54:	6893      	ldr	r3, [r2, #8]
d005ab56:	3b01      	subs	r3, #1
d005ab58:	2b00      	cmp	r3, #0
d005ab5a:	b410      	push	{r4}
d005ab5c:	6093      	str	r3, [r2, #8]
d005ab5e:	da08      	bge.n	d005ab72 <__sfputc_r+0x1e>
d005ab60:	6994      	ldr	r4, [r2, #24]
d005ab62:	42a3      	cmp	r3, r4
d005ab64:	db01      	blt.n	d005ab6a <__sfputc_r+0x16>
d005ab66:	290a      	cmp	r1, #10
d005ab68:	d103      	bne.n	d005ab72 <__sfputc_r+0x1e>
d005ab6a:	f85d 4b04 	ldr.w	r4, [sp], #4
d005ab6e:	f000 baf1 	b.w	d005b154 <__swbuf_r>
d005ab72:	6813      	ldr	r3, [r2, #0]
d005ab74:	1c58      	adds	r0, r3, #1
d005ab76:	6010      	str	r0, [r2, #0]
d005ab78:	7019      	strb	r1, [r3, #0]
d005ab7a:	4608      	mov	r0, r1
d005ab7c:	f85d 4b04 	ldr.w	r4, [sp], #4
d005ab80:	4770      	bx	lr

d005ab82 <__sfputs_r>:
d005ab82:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005ab84:	4606      	mov	r6, r0
d005ab86:	460f      	mov	r7, r1
d005ab88:	4614      	mov	r4, r2
d005ab8a:	18d5      	adds	r5, r2, r3
d005ab8c:	42ac      	cmp	r4, r5
d005ab8e:	d101      	bne.n	d005ab94 <__sfputs_r+0x12>
d005ab90:	2000      	movs	r0, #0
d005ab92:	e007      	b.n	d005aba4 <__sfputs_r+0x22>
d005ab94:	f814 1b01 	ldrb.w	r1, [r4], #1
d005ab98:	463a      	mov	r2, r7
d005ab9a:	4630      	mov	r0, r6
d005ab9c:	f7ff ffda 	bl	d005ab54 <__sfputc_r>
d005aba0:	1c43      	adds	r3, r0, #1
d005aba2:	d1f3      	bne.n	d005ab8c <__sfputs_r+0xa>
d005aba4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

d005aba8 <_vfiprintf_r>:
d005aba8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
d005abac:	460d      	mov	r5, r1
d005abae:	b09d      	sub	sp, #116	; 0x74
d005abb0:	4614      	mov	r4, r2
d005abb2:	4698      	mov	r8, r3
d005abb4:	4606      	mov	r6, r0
d005abb6:	b118      	cbz	r0, d005abc0 <_vfiprintf_r+0x18>
d005abb8:	6983      	ldr	r3, [r0, #24]
d005abba:	b90b      	cbnz	r3, d005abc0 <_vfiprintf_r+0x18>
d005abbc:	f7ff fa94 	bl	d005a0e8 <__sinit>
d005abc0:	4b89      	ldr	r3, [pc, #548]	; (d005ade8 <_vfiprintf_r+0x240>)
d005abc2:	429d      	cmp	r5, r3
d005abc4:	d11b      	bne.n	d005abfe <_vfiprintf_r+0x56>
d005abc6:	6875      	ldr	r5, [r6, #4]
d005abc8:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d005abca:	07d9      	lsls	r1, r3, #31
d005abcc:	d405      	bmi.n	d005abda <_vfiprintf_r+0x32>
d005abce:	89ab      	ldrh	r3, [r5, #12]
d005abd0:	059a      	lsls	r2, r3, #22
d005abd2:	d402      	bmi.n	d005abda <_vfiprintf_r+0x32>
d005abd4:	6da8      	ldr	r0, [r5, #88]	; 0x58
d005abd6:	f7ff fb26 	bl	d005a226 <__retarget_lock_acquire_recursive>
d005abda:	89ab      	ldrh	r3, [r5, #12]
d005abdc:	071b      	lsls	r3, r3, #28
d005abde:	d501      	bpl.n	d005abe4 <_vfiprintf_r+0x3c>
d005abe0:	692b      	ldr	r3, [r5, #16]
d005abe2:	b9eb      	cbnz	r3, d005ac20 <_vfiprintf_r+0x78>
d005abe4:	4629      	mov	r1, r5
d005abe6:	4630      	mov	r0, r6
d005abe8:	f000 fb06 	bl	d005b1f8 <__swsetup_r>
d005abec:	b1c0      	cbz	r0, d005ac20 <_vfiprintf_r+0x78>
d005abee:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d005abf0:	07dc      	lsls	r4, r3, #31
d005abf2:	d50e      	bpl.n	d005ac12 <_vfiprintf_r+0x6a>
d005abf4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d005abf8:	b01d      	add	sp, #116	; 0x74
d005abfa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
d005abfe:	4b7b      	ldr	r3, [pc, #492]	; (d005adec <_vfiprintf_r+0x244>)
d005ac00:	429d      	cmp	r5, r3
d005ac02:	d101      	bne.n	d005ac08 <_vfiprintf_r+0x60>
d005ac04:	68b5      	ldr	r5, [r6, #8]
d005ac06:	e7df      	b.n	d005abc8 <_vfiprintf_r+0x20>
d005ac08:	4b79      	ldr	r3, [pc, #484]	; (d005adf0 <_vfiprintf_r+0x248>)
d005ac0a:	429d      	cmp	r5, r3
d005ac0c:	bf08      	it	eq
d005ac0e:	68f5      	ldreq	r5, [r6, #12]
d005ac10:	e7da      	b.n	d005abc8 <_vfiprintf_r+0x20>
d005ac12:	89ab      	ldrh	r3, [r5, #12]
d005ac14:	0598      	lsls	r0, r3, #22
d005ac16:	d4ed      	bmi.n	d005abf4 <_vfiprintf_r+0x4c>
d005ac18:	6da8      	ldr	r0, [r5, #88]	; 0x58
d005ac1a:	f7ff fb05 	bl	d005a228 <__retarget_lock_release_recursive>
d005ac1e:	e7e9      	b.n	d005abf4 <_vfiprintf_r+0x4c>
d005ac20:	2300      	movs	r3, #0
d005ac22:	9309      	str	r3, [sp, #36]	; 0x24
d005ac24:	2320      	movs	r3, #32
d005ac26:	f88d 3029 	strb.w	r3, [sp, #41]	; 0x29
d005ac2a:	f8cd 800c 	str.w	r8, [sp, #12]
d005ac2e:	2330      	movs	r3, #48	; 0x30
d005ac30:	f8df 81c0 	ldr.w	r8, [pc, #448]	; d005adf4 <_vfiprintf_r+0x24c>
d005ac34:	f88d 302a 	strb.w	r3, [sp, #42]	; 0x2a
d005ac38:	f04f 0901 	mov.w	r9, #1
d005ac3c:	4623      	mov	r3, r4
d005ac3e:	469a      	mov	sl, r3
d005ac40:	f813 2b01 	ldrb.w	r2, [r3], #1
d005ac44:	b10a      	cbz	r2, d005ac4a <_vfiprintf_r+0xa2>
d005ac46:	2a25      	cmp	r2, #37	; 0x25
d005ac48:	d1f9      	bne.n	d005ac3e <_vfiprintf_r+0x96>
d005ac4a:	ebba 0b04 	subs.w	fp, sl, r4
d005ac4e:	d00b      	beq.n	d005ac68 <_vfiprintf_r+0xc0>
d005ac50:	465b      	mov	r3, fp
d005ac52:	4622      	mov	r2, r4
d005ac54:	4629      	mov	r1, r5
d005ac56:	4630      	mov	r0, r6
d005ac58:	f7ff ff93 	bl	d005ab82 <__sfputs_r>
d005ac5c:	3001      	adds	r0, #1
d005ac5e:	f000 80aa 	beq.w	d005adb6 <_vfiprintf_r+0x20e>
d005ac62:	9a09      	ldr	r2, [sp, #36]	; 0x24
d005ac64:	445a      	add	r2, fp
d005ac66:	9209      	str	r2, [sp, #36]	; 0x24
d005ac68:	f89a 3000 	ldrb.w	r3, [sl]
d005ac6c:	2b00      	cmp	r3, #0
d005ac6e:	f000 80a2 	beq.w	d005adb6 <_vfiprintf_r+0x20e>
d005ac72:	2300      	movs	r3, #0
d005ac74:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
d005ac78:	e9cd 2305 	strd	r2, r3, [sp, #20]
d005ac7c:	f10a 0a01 	add.w	sl, sl, #1
d005ac80:	9304      	str	r3, [sp, #16]
d005ac82:	9307      	str	r3, [sp, #28]
d005ac84:	f88d 3053 	strb.w	r3, [sp, #83]	; 0x53
d005ac88:	931a      	str	r3, [sp, #104]	; 0x68
d005ac8a:	4654      	mov	r4, sl
d005ac8c:	2205      	movs	r2, #5
d005ac8e:	f814 1b01 	ldrb.w	r1, [r4], #1
d005ac92:	4858      	ldr	r0, [pc, #352]	; (d005adf4 <_vfiprintf_r+0x24c>)
d005ac94:	f000 fb4c 	bl	d005b330 <memchr>
d005ac98:	9a04      	ldr	r2, [sp, #16]
d005ac9a:	b9d8      	cbnz	r0, d005acd4 <_vfiprintf_r+0x12c>
d005ac9c:	06d1      	lsls	r1, r2, #27
d005ac9e:	bf44      	itt	mi
d005aca0:	2320      	movmi	r3, #32
d005aca2:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d005aca6:	0713      	lsls	r3, r2, #28
d005aca8:	bf44      	itt	mi
d005acaa:	232b      	movmi	r3, #43	; 0x2b
d005acac:	f88d 3053 	strbmi.w	r3, [sp, #83]	; 0x53
d005acb0:	f89a 3000 	ldrb.w	r3, [sl]
d005acb4:	2b2a      	cmp	r3, #42	; 0x2a
d005acb6:	d015      	beq.n	d005ace4 <_vfiprintf_r+0x13c>
d005acb8:	9a07      	ldr	r2, [sp, #28]
d005acba:	4654      	mov	r4, sl
d005acbc:	2000      	movs	r0, #0
d005acbe:	f04f 0c0a 	mov.w	ip, #10
d005acc2:	4621      	mov	r1, r4
d005acc4:	f811 3b01 	ldrb.w	r3, [r1], #1
d005acc8:	3b30      	subs	r3, #48	; 0x30
d005acca:	2b09      	cmp	r3, #9
d005accc:	d94e      	bls.n	d005ad6c <_vfiprintf_r+0x1c4>
d005acce:	b1b0      	cbz	r0, d005acfe <_vfiprintf_r+0x156>
d005acd0:	9207      	str	r2, [sp, #28]
d005acd2:	e014      	b.n	d005acfe <_vfiprintf_r+0x156>
d005acd4:	eba0 0308 	sub.w	r3, r0, r8
d005acd8:	fa09 f303 	lsl.w	r3, r9, r3
d005acdc:	4313      	orrs	r3, r2
d005acde:	9304      	str	r3, [sp, #16]
d005ace0:	46a2      	mov	sl, r4
d005ace2:	e7d2      	b.n	d005ac8a <_vfiprintf_r+0xe2>
d005ace4:	9b03      	ldr	r3, [sp, #12]
d005ace6:	1d19      	adds	r1, r3, #4
d005ace8:	681b      	ldr	r3, [r3, #0]
d005acea:	9103      	str	r1, [sp, #12]
d005acec:	2b00      	cmp	r3, #0
d005acee:	bfbb      	ittet	lt
d005acf0:	425b      	neglt	r3, r3
d005acf2:	f042 0202 	orrlt.w	r2, r2, #2
d005acf6:	9307      	strge	r3, [sp, #28]
d005acf8:	9307      	strlt	r3, [sp, #28]
d005acfa:	bfb8      	it	lt
d005acfc:	9204      	strlt	r2, [sp, #16]
d005acfe:	7823      	ldrb	r3, [r4, #0]
d005ad00:	2b2e      	cmp	r3, #46	; 0x2e
d005ad02:	d10c      	bne.n	d005ad1e <_vfiprintf_r+0x176>
d005ad04:	7863      	ldrb	r3, [r4, #1]
d005ad06:	2b2a      	cmp	r3, #42	; 0x2a
d005ad08:	d135      	bne.n	d005ad76 <_vfiprintf_r+0x1ce>
d005ad0a:	9b03      	ldr	r3, [sp, #12]
d005ad0c:	1d1a      	adds	r2, r3, #4
d005ad0e:	681b      	ldr	r3, [r3, #0]
d005ad10:	9203      	str	r2, [sp, #12]
d005ad12:	2b00      	cmp	r3, #0
d005ad14:	bfb8      	it	lt
d005ad16:	f04f 33ff 	movlt.w	r3, #4294967295	; 0xffffffff
d005ad1a:	3402      	adds	r4, #2
d005ad1c:	9305      	str	r3, [sp, #20]
d005ad1e:	f8df a0e4 	ldr.w	sl, [pc, #228]	; d005ae04 <_vfiprintf_r+0x25c>
d005ad22:	7821      	ldrb	r1, [r4, #0]
d005ad24:	2203      	movs	r2, #3
d005ad26:	4650      	mov	r0, sl
d005ad28:	f000 fb02 	bl	d005b330 <memchr>
d005ad2c:	b140      	cbz	r0, d005ad40 <_vfiprintf_r+0x198>
d005ad2e:	2340      	movs	r3, #64	; 0x40
d005ad30:	eba0 000a 	sub.w	r0, r0, sl
d005ad34:	fa03 f000 	lsl.w	r0, r3, r0
d005ad38:	9b04      	ldr	r3, [sp, #16]
d005ad3a:	4303      	orrs	r3, r0
d005ad3c:	3401      	adds	r4, #1
d005ad3e:	9304      	str	r3, [sp, #16]
d005ad40:	f814 1b01 	ldrb.w	r1, [r4], #1
d005ad44:	482c      	ldr	r0, [pc, #176]	; (d005adf8 <_vfiprintf_r+0x250>)
d005ad46:	f88d 1028 	strb.w	r1, [sp, #40]	; 0x28
d005ad4a:	2206      	movs	r2, #6
d005ad4c:	f000 faf0 	bl	d005b330 <memchr>
d005ad50:	2800      	cmp	r0, #0
d005ad52:	d03f      	beq.n	d005add4 <_vfiprintf_r+0x22c>
d005ad54:	4b29      	ldr	r3, [pc, #164]	; (d005adfc <_vfiprintf_r+0x254>)
d005ad56:	bb1b      	cbnz	r3, d005ada0 <_vfiprintf_r+0x1f8>
d005ad58:	9b03      	ldr	r3, [sp, #12]
d005ad5a:	3307      	adds	r3, #7
d005ad5c:	f023 0307 	bic.w	r3, r3, #7
d005ad60:	3308      	adds	r3, #8
d005ad62:	9303      	str	r3, [sp, #12]
d005ad64:	9b09      	ldr	r3, [sp, #36]	; 0x24
d005ad66:	443b      	add	r3, r7
d005ad68:	9309      	str	r3, [sp, #36]	; 0x24
d005ad6a:	e767      	b.n	d005ac3c <_vfiprintf_r+0x94>
d005ad6c:	fb0c 3202 	mla	r2, ip, r2, r3
d005ad70:	460c      	mov	r4, r1
d005ad72:	2001      	movs	r0, #1
d005ad74:	e7a5      	b.n	d005acc2 <_vfiprintf_r+0x11a>
d005ad76:	2300      	movs	r3, #0
d005ad78:	3401      	adds	r4, #1
d005ad7a:	9305      	str	r3, [sp, #20]
d005ad7c:	4619      	mov	r1, r3
d005ad7e:	f04f 0c0a 	mov.w	ip, #10
d005ad82:	4620      	mov	r0, r4
d005ad84:	f810 2b01 	ldrb.w	r2, [r0], #1
d005ad88:	3a30      	subs	r2, #48	; 0x30
d005ad8a:	2a09      	cmp	r2, #9
d005ad8c:	d903      	bls.n	d005ad96 <_vfiprintf_r+0x1ee>
d005ad8e:	2b00      	cmp	r3, #0
d005ad90:	d0c5      	beq.n	d005ad1e <_vfiprintf_r+0x176>
d005ad92:	9105      	str	r1, [sp, #20]
d005ad94:	e7c3      	b.n	d005ad1e <_vfiprintf_r+0x176>
d005ad96:	fb0c 2101 	mla	r1, ip, r1, r2
d005ad9a:	4604      	mov	r4, r0
d005ad9c:	2301      	movs	r3, #1
d005ad9e:	e7f0      	b.n	d005ad82 <_vfiprintf_r+0x1da>
d005ada0:	ab03      	add	r3, sp, #12
d005ada2:	9300      	str	r3, [sp, #0]
d005ada4:	462a      	mov	r2, r5
d005ada6:	4b16      	ldr	r3, [pc, #88]	; (d005ae00 <_vfiprintf_r+0x258>)
d005ada8:	a904      	add	r1, sp, #16
d005adaa:	4630      	mov	r0, r6
d005adac:	f3af 8000 	nop.w
d005adb0:	4607      	mov	r7, r0
d005adb2:	1c78      	adds	r0, r7, #1
d005adb4:	d1d6      	bne.n	d005ad64 <_vfiprintf_r+0x1bc>
d005adb6:	6e6b      	ldr	r3, [r5, #100]	; 0x64
d005adb8:	07d9      	lsls	r1, r3, #31
d005adba:	d405      	bmi.n	d005adc8 <_vfiprintf_r+0x220>
d005adbc:	89ab      	ldrh	r3, [r5, #12]
d005adbe:	059a      	lsls	r2, r3, #22
d005adc0:	d402      	bmi.n	d005adc8 <_vfiprintf_r+0x220>
d005adc2:	6da8      	ldr	r0, [r5, #88]	; 0x58
d005adc4:	f7ff fa30 	bl	d005a228 <__retarget_lock_release_recursive>
d005adc8:	89ab      	ldrh	r3, [r5, #12]
d005adca:	065b      	lsls	r3, r3, #25
d005adcc:	f53f af12 	bmi.w	d005abf4 <_vfiprintf_r+0x4c>
d005add0:	9809      	ldr	r0, [sp, #36]	; 0x24
d005add2:	e711      	b.n	d005abf8 <_vfiprintf_r+0x50>
d005add4:	ab03      	add	r3, sp, #12
d005add6:	9300      	str	r3, [sp, #0]
d005add8:	462a      	mov	r2, r5
d005adda:	4b09      	ldr	r3, [pc, #36]	; (d005ae00 <_vfiprintf_r+0x258>)
d005addc:	a904      	add	r1, sp, #16
d005adde:	4630      	mov	r0, r6
d005ade0:	f000 f880 	bl	d005aee4 <_printf_i>
d005ade4:	e7e4      	b.n	d005adb0 <_vfiprintf_r+0x208>
d005ade6:	bf00      	nop
d005ade8:	d005c468 	.word	0xd005c468
d005adec:	d005c488 	.word	0xd005c488
d005adf0:	d005c448 	.word	0xd005c448
d005adf4:	d005c55e 	.word	0xd005c55e
d005adf8:	d005c568 	.word	0xd005c568
d005adfc:	00000000 	.word	0x00000000
d005ae00:	d005ab83 	.word	0xd005ab83
d005ae04:	d005c564 	.word	0xd005c564

d005ae08 <_printf_common>:
d005ae08:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
d005ae0c:	4616      	mov	r6, r2
d005ae0e:	4699      	mov	r9, r3
d005ae10:	688a      	ldr	r2, [r1, #8]
d005ae12:	690b      	ldr	r3, [r1, #16]
d005ae14:	f8dd 8020 	ldr.w	r8, [sp, #32]
d005ae18:	4293      	cmp	r3, r2
d005ae1a:	bfb8      	it	lt
d005ae1c:	4613      	movlt	r3, r2
d005ae1e:	6033      	str	r3, [r6, #0]
d005ae20:	f891 2043 	ldrb.w	r2, [r1, #67]	; 0x43
d005ae24:	4607      	mov	r7, r0
d005ae26:	460c      	mov	r4, r1
d005ae28:	b10a      	cbz	r2, d005ae2e <_printf_common+0x26>
d005ae2a:	3301      	adds	r3, #1
d005ae2c:	6033      	str	r3, [r6, #0]
d005ae2e:	6823      	ldr	r3, [r4, #0]
d005ae30:	0699      	lsls	r1, r3, #26
d005ae32:	bf42      	ittt	mi
d005ae34:	6833      	ldrmi	r3, [r6, #0]
d005ae36:	3302      	addmi	r3, #2
d005ae38:	6033      	strmi	r3, [r6, #0]
d005ae3a:	6825      	ldr	r5, [r4, #0]
d005ae3c:	f015 0506 	ands.w	r5, r5, #6
d005ae40:	d106      	bne.n	d005ae50 <_printf_common+0x48>
d005ae42:	f104 0a19 	add.w	sl, r4, #25
d005ae46:	68e3      	ldr	r3, [r4, #12]
d005ae48:	6832      	ldr	r2, [r6, #0]
d005ae4a:	1a9b      	subs	r3, r3, r2
d005ae4c:	42ab      	cmp	r3, r5
d005ae4e:	dc26      	bgt.n	d005ae9e <_printf_common+0x96>
d005ae50:	f894 2043 	ldrb.w	r2, [r4, #67]	; 0x43
d005ae54:	1e13      	subs	r3, r2, #0
d005ae56:	6822      	ldr	r2, [r4, #0]
d005ae58:	bf18      	it	ne
d005ae5a:	2301      	movne	r3, #1
d005ae5c:	0692      	lsls	r2, r2, #26
d005ae5e:	d42b      	bmi.n	d005aeb8 <_printf_common+0xb0>
d005ae60:	f104 0243 	add.w	r2, r4, #67	; 0x43
d005ae64:	4649      	mov	r1, r9
d005ae66:	4638      	mov	r0, r7
d005ae68:	47c0      	blx	r8
d005ae6a:	3001      	adds	r0, #1
d005ae6c:	d01e      	beq.n	d005aeac <_printf_common+0xa4>
d005ae6e:	6823      	ldr	r3, [r4, #0]
d005ae70:	68e5      	ldr	r5, [r4, #12]
d005ae72:	6832      	ldr	r2, [r6, #0]
d005ae74:	f003 0306 	and.w	r3, r3, #6
d005ae78:	2b04      	cmp	r3, #4
d005ae7a:	bf08      	it	eq
d005ae7c:	1aad      	subeq	r5, r5, r2
d005ae7e:	68a3      	ldr	r3, [r4, #8]
d005ae80:	6922      	ldr	r2, [r4, #16]
d005ae82:	bf0c      	ite	eq
d005ae84:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
d005ae88:	2500      	movne	r5, #0
d005ae8a:	4293      	cmp	r3, r2
d005ae8c:	bfc4      	itt	gt
d005ae8e:	1a9b      	subgt	r3, r3, r2
d005ae90:	18ed      	addgt	r5, r5, r3
d005ae92:	2600      	movs	r6, #0
d005ae94:	341a      	adds	r4, #26
d005ae96:	42b5      	cmp	r5, r6
d005ae98:	d11a      	bne.n	d005aed0 <_printf_common+0xc8>
d005ae9a:	2000      	movs	r0, #0
d005ae9c:	e008      	b.n	d005aeb0 <_printf_common+0xa8>
d005ae9e:	2301      	movs	r3, #1
d005aea0:	4652      	mov	r2, sl
d005aea2:	4649      	mov	r1, r9
d005aea4:	4638      	mov	r0, r7
d005aea6:	47c0      	blx	r8
d005aea8:	3001      	adds	r0, #1
d005aeaa:	d103      	bne.n	d005aeb4 <_printf_common+0xac>
d005aeac:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d005aeb0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d005aeb4:	3501      	adds	r5, #1
d005aeb6:	e7c6      	b.n	d005ae46 <_printf_common+0x3e>
d005aeb8:	18e1      	adds	r1, r4, r3
d005aeba:	1c5a      	adds	r2, r3, #1
d005aebc:	2030      	movs	r0, #48	; 0x30
d005aebe:	f881 0043 	strb.w	r0, [r1, #67]	; 0x43
d005aec2:	4422      	add	r2, r4
d005aec4:	f894 1045 	ldrb.w	r1, [r4, #69]	; 0x45
d005aec8:	f882 1043 	strb.w	r1, [r2, #67]	; 0x43
d005aecc:	3302      	adds	r3, #2
d005aece:	e7c7      	b.n	d005ae60 <_printf_common+0x58>
d005aed0:	2301      	movs	r3, #1
d005aed2:	4622      	mov	r2, r4
d005aed4:	4649      	mov	r1, r9
d005aed6:	4638      	mov	r0, r7
d005aed8:	47c0      	blx	r8
d005aeda:	3001      	adds	r0, #1
d005aedc:	d0e6      	beq.n	d005aeac <_printf_common+0xa4>
d005aede:	3601      	adds	r6, #1
d005aee0:	e7d9      	b.n	d005ae96 <_printf_common+0x8e>
	...

d005aee4 <_printf_i>:
d005aee4:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
d005aee8:	460c      	mov	r4, r1
d005aeea:	4691      	mov	r9, r2
d005aeec:	7e27      	ldrb	r7, [r4, #24]
d005aeee:	990c      	ldr	r1, [sp, #48]	; 0x30
d005aef0:	2f78      	cmp	r7, #120	; 0x78
d005aef2:	4680      	mov	r8, r0
d005aef4:	469a      	mov	sl, r3
d005aef6:	f104 0243 	add.w	r2, r4, #67	; 0x43
d005aefa:	d807      	bhi.n	d005af0c <_printf_i+0x28>
d005aefc:	2f62      	cmp	r7, #98	; 0x62
d005aefe:	d80a      	bhi.n	d005af16 <_printf_i+0x32>
d005af00:	2f00      	cmp	r7, #0
d005af02:	f000 80d8 	beq.w	d005b0b6 <_printf_i+0x1d2>
d005af06:	2f58      	cmp	r7, #88	; 0x58
d005af08:	f000 80a3 	beq.w	d005b052 <_printf_i+0x16e>
d005af0c:	f104 0642 	add.w	r6, r4, #66	; 0x42
d005af10:	f884 7042 	strb.w	r7, [r4, #66]	; 0x42
d005af14:	e03a      	b.n	d005af8c <_printf_i+0xa8>
d005af16:	f1a7 0363 	sub.w	r3, r7, #99	; 0x63
d005af1a:	2b15      	cmp	r3, #21
d005af1c:	d8f6      	bhi.n	d005af0c <_printf_i+0x28>
d005af1e:	a001      	add	r0, pc, #4	; (adr r0, d005af24 <_printf_i+0x40>)
d005af20:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
d005af24:	d005af7d 	.word	0xd005af7d
d005af28:	d005af91 	.word	0xd005af91
d005af2c:	d005af0d 	.word	0xd005af0d
d005af30:	d005af0d 	.word	0xd005af0d
d005af34:	d005af0d 	.word	0xd005af0d
d005af38:	d005af0d 	.word	0xd005af0d
d005af3c:	d005af91 	.word	0xd005af91
d005af40:	d005af0d 	.word	0xd005af0d
d005af44:	d005af0d 	.word	0xd005af0d
d005af48:	d005af0d 	.word	0xd005af0d
d005af4c:	d005af0d 	.word	0xd005af0d
d005af50:	d005b09d 	.word	0xd005b09d
d005af54:	d005afc1 	.word	0xd005afc1
d005af58:	d005b07f 	.word	0xd005b07f
d005af5c:	d005af0d 	.word	0xd005af0d
d005af60:	d005af0d 	.word	0xd005af0d
d005af64:	d005b0bf 	.word	0xd005b0bf
d005af68:	d005af0d 	.word	0xd005af0d
d005af6c:	d005afc1 	.word	0xd005afc1
d005af70:	d005af0d 	.word	0xd005af0d
d005af74:	d005af0d 	.word	0xd005af0d
d005af78:	d005b087 	.word	0xd005b087
d005af7c:	680b      	ldr	r3, [r1, #0]
d005af7e:	1d1a      	adds	r2, r3, #4
d005af80:	681b      	ldr	r3, [r3, #0]
d005af82:	600a      	str	r2, [r1, #0]
d005af84:	f104 0642 	add.w	r6, r4, #66	; 0x42
d005af88:	f884 3042 	strb.w	r3, [r4, #66]	; 0x42
d005af8c:	2301      	movs	r3, #1
d005af8e:	e0a3      	b.n	d005b0d8 <_printf_i+0x1f4>
d005af90:	6825      	ldr	r5, [r4, #0]
d005af92:	6808      	ldr	r0, [r1, #0]
d005af94:	062e      	lsls	r6, r5, #24
d005af96:	f100 0304 	add.w	r3, r0, #4
d005af9a:	d50a      	bpl.n	d005afb2 <_printf_i+0xce>
d005af9c:	6805      	ldr	r5, [r0, #0]
d005af9e:	600b      	str	r3, [r1, #0]
d005afa0:	2d00      	cmp	r5, #0
d005afa2:	da03      	bge.n	d005afac <_printf_i+0xc8>
d005afa4:	232d      	movs	r3, #45	; 0x2d
d005afa6:	426d      	negs	r5, r5
d005afa8:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d005afac:	485e      	ldr	r0, [pc, #376]	; (d005b128 <_printf_i+0x244>)
d005afae:	230a      	movs	r3, #10
d005afb0:	e019      	b.n	d005afe6 <_printf_i+0x102>
d005afb2:	f015 0f40 	tst.w	r5, #64	; 0x40
d005afb6:	6805      	ldr	r5, [r0, #0]
d005afb8:	600b      	str	r3, [r1, #0]
d005afba:	bf18      	it	ne
d005afbc:	b22d      	sxthne	r5, r5
d005afbe:	e7ef      	b.n	d005afa0 <_printf_i+0xbc>
d005afc0:	680b      	ldr	r3, [r1, #0]
d005afc2:	6825      	ldr	r5, [r4, #0]
d005afc4:	1d18      	adds	r0, r3, #4
d005afc6:	6008      	str	r0, [r1, #0]
d005afc8:	0628      	lsls	r0, r5, #24
d005afca:	d501      	bpl.n	d005afd0 <_printf_i+0xec>
d005afcc:	681d      	ldr	r5, [r3, #0]
d005afce:	e002      	b.n	d005afd6 <_printf_i+0xf2>
d005afd0:	0669      	lsls	r1, r5, #25
d005afd2:	d5fb      	bpl.n	d005afcc <_printf_i+0xe8>
d005afd4:	881d      	ldrh	r5, [r3, #0]
d005afd6:	4854      	ldr	r0, [pc, #336]	; (d005b128 <_printf_i+0x244>)
d005afd8:	2f6f      	cmp	r7, #111	; 0x6f
d005afda:	bf0c      	ite	eq
d005afdc:	2308      	moveq	r3, #8
d005afde:	230a      	movne	r3, #10
d005afe0:	2100      	movs	r1, #0
d005afe2:	f884 1043 	strb.w	r1, [r4, #67]	; 0x43
d005afe6:	6866      	ldr	r6, [r4, #4]
d005afe8:	60a6      	str	r6, [r4, #8]
d005afea:	2e00      	cmp	r6, #0
d005afec:	bfa2      	ittt	ge
d005afee:	6821      	ldrge	r1, [r4, #0]
d005aff0:	f021 0104 	bicge.w	r1, r1, #4
d005aff4:	6021      	strge	r1, [r4, #0]
d005aff6:	b90d      	cbnz	r5, d005affc <_printf_i+0x118>
d005aff8:	2e00      	cmp	r6, #0
d005affa:	d04d      	beq.n	d005b098 <_printf_i+0x1b4>
d005affc:	4616      	mov	r6, r2
d005affe:	fbb5 f1f3 	udiv	r1, r5, r3
d005b002:	fb03 5711 	mls	r7, r3, r1, r5
d005b006:	5dc7      	ldrb	r7, [r0, r7]
d005b008:	f806 7d01 	strb.w	r7, [r6, #-1]!
d005b00c:	462f      	mov	r7, r5
d005b00e:	42bb      	cmp	r3, r7
d005b010:	460d      	mov	r5, r1
d005b012:	d9f4      	bls.n	d005affe <_printf_i+0x11a>
d005b014:	2b08      	cmp	r3, #8
d005b016:	d10b      	bne.n	d005b030 <_printf_i+0x14c>
d005b018:	6823      	ldr	r3, [r4, #0]
d005b01a:	07df      	lsls	r7, r3, #31
d005b01c:	d508      	bpl.n	d005b030 <_printf_i+0x14c>
d005b01e:	6923      	ldr	r3, [r4, #16]
d005b020:	6861      	ldr	r1, [r4, #4]
d005b022:	4299      	cmp	r1, r3
d005b024:	bfde      	ittt	le
d005b026:	2330      	movle	r3, #48	; 0x30
d005b028:	f806 3c01 	strble.w	r3, [r6, #-1]
d005b02c:	f106 36ff 	addle.w	r6, r6, #4294967295	; 0xffffffff
d005b030:	1b92      	subs	r2, r2, r6
d005b032:	6122      	str	r2, [r4, #16]
d005b034:	f8cd a000 	str.w	sl, [sp]
d005b038:	464b      	mov	r3, r9
d005b03a:	aa03      	add	r2, sp, #12
d005b03c:	4621      	mov	r1, r4
d005b03e:	4640      	mov	r0, r8
d005b040:	f7ff fee2 	bl	d005ae08 <_printf_common>
d005b044:	3001      	adds	r0, #1
d005b046:	d14c      	bne.n	d005b0e2 <_printf_i+0x1fe>
d005b048:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d005b04c:	b004      	add	sp, #16
d005b04e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
d005b052:	4835      	ldr	r0, [pc, #212]	; (d005b128 <_printf_i+0x244>)
d005b054:	f884 7045 	strb.w	r7, [r4, #69]	; 0x45
d005b058:	6823      	ldr	r3, [r4, #0]
d005b05a:	680e      	ldr	r6, [r1, #0]
d005b05c:	061f      	lsls	r7, r3, #24
d005b05e:	f856 5b04 	ldr.w	r5, [r6], #4
d005b062:	600e      	str	r6, [r1, #0]
d005b064:	d514      	bpl.n	d005b090 <_printf_i+0x1ac>
d005b066:	07d9      	lsls	r1, r3, #31
d005b068:	bf44      	itt	mi
d005b06a:	f043 0320 	orrmi.w	r3, r3, #32
d005b06e:	6023      	strmi	r3, [r4, #0]
d005b070:	b91d      	cbnz	r5, d005b07a <_printf_i+0x196>
d005b072:	6823      	ldr	r3, [r4, #0]
d005b074:	f023 0320 	bic.w	r3, r3, #32
d005b078:	6023      	str	r3, [r4, #0]
d005b07a:	2310      	movs	r3, #16
d005b07c:	e7b0      	b.n	d005afe0 <_printf_i+0xfc>
d005b07e:	6823      	ldr	r3, [r4, #0]
d005b080:	f043 0320 	orr.w	r3, r3, #32
d005b084:	6023      	str	r3, [r4, #0]
d005b086:	2378      	movs	r3, #120	; 0x78
d005b088:	4828      	ldr	r0, [pc, #160]	; (d005b12c <_printf_i+0x248>)
d005b08a:	f884 3045 	strb.w	r3, [r4, #69]	; 0x45
d005b08e:	e7e3      	b.n	d005b058 <_printf_i+0x174>
d005b090:	065e      	lsls	r6, r3, #25
d005b092:	bf48      	it	mi
d005b094:	b2ad      	uxthmi	r5, r5
d005b096:	e7e6      	b.n	d005b066 <_printf_i+0x182>
d005b098:	4616      	mov	r6, r2
d005b09a:	e7bb      	b.n	d005b014 <_printf_i+0x130>
d005b09c:	680b      	ldr	r3, [r1, #0]
d005b09e:	6826      	ldr	r6, [r4, #0]
d005b0a0:	6960      	ldr	r0, [r4, #20]
d005b0a2:	1d1d      	adds	r5, r3, #4
d005b0a4:	600d      	str	r5, [r1, #0]
d005b0a6:	0635      	lsls	r5, r6, #24
d005b0a8:	681b      	ldr	r3, [r3, #0]
d005b0aa:	d501      	bpl.n	d005b0b0 <_printf_i+0x1cc>
d005b0ac:	6018      	str	r0, [r3, #0]
d005b0ae:	e002      	b.n	d005b0b6 <_printf_i+0x1d2>
d005b0b0:	0671      	lsls	r1, r6, #25
d005b0b2:	d5fb      	bpl.n	d005b0ac <_printf_i+0x1c8>
d005b0b4:	8018      	strh	r0, [r3, #0]
d005b0b6:	2300      	movs	r3, #0
d005b0b8:	6123      	str	r3, [r4, #16]
d005b0ba:	4616      	mov	r6, r2
d005b0bc:	e7ba      	b.n	d005b034 <_printf_i+0x150>
d005b0be:	680b      	ldr	r3, [r1, #0]
d005b0c0:	1d1a      	adds	r2, r3, #4
d005b0c2:	600a      	str	r2, [r1, #0]
d005b0c4:	681e      	ldr	r6, [r3, #0]
d005b0c6:	6862      	ldr	r2, [r4, #4]
d005b0c8:	2100      	movs	r1, #0
d005b0ca:	4630      	mov	r0, r6
d005b0cc:	f000 f930 	bl	d005b330 <memchr>
d005b0d0:	b108      	cbz	r0, d005b0d6 <_printf_i+0x1f2>
d005b0d2:	1b80      	subs	r0, r0, r6
d005b0d4:	6060      	str	r0, [r4, #4]
d005b0d6:	6863      	ldr	r3, [r4, #4]
d005b0d8:	6123      	str	r3, [r4, #16]
d005b0da:	2300      	movs	r3, #0
d005b0dc:	f884 3043 	strb.w	r3, [r4, #67]	; 0x43
d005b0e0:	e7a8      	b.n	d005b034 <_printf_i+0x150>
d005b0e2:	6923      	ldr	r3, [r4, #16]
d005b0e4:	4632      	mov	r2, r6
d005b0e6:	4649      	mov	r1, r9
d005b0e8:	4640      	mov	r0, r8
d005b0ea:	47d0      	blx	sl
d005b0ec:	3001      	adds	r0, #1
d005b0ee:	d0ab      	beq.n	d005b048 <_printf_i+0x164>
d005b0f0:	6823      	ldr	r3, [r4, #0]
d005b0f2:	079b      	lsls	r3, r3, #30
d005b0f4:	d413      	bmi.n	d005b11e <_printf_i+0x23a>
d005b0f6:	68e0      	ldr	r0, [r4, #12]
d005b0f8:	9b03      	ldr	r3, [sp, #12]
d005b0fa:	4298      	cmp	r0, r3
d005b0fc:	bfb8      	it	lt
d005b0fe:	4618      	movlt	r0, r3
d005b100:	e7a4      	b.n	d005b04c <_printf_i+0x168>
d005b102:	2301      	movs	r3, #1
d005b104:	4632      	mov	r2, r6
d005b106:	4649      	mov	r1, r9
d005b108:	4640      	mov	r0, r8
d005b10a:	47d0      	blx	sl
d005b10c:	3001      	adds	r0, #1
d005b10e:	d09b      	beq.n	d005b048 <_printf_i+0x164>
d005b110:	3501      	adds	r5, #1
d005b112:	68e3      	ldr	r3, [r4, #12]
d005b114:	9903      	ldr	r1, [sp, #12]
d005b116:	1a5b      	subs	r3, r3, r1
d005b118:	42ab      	cmp	r3, r5
d005b11a:	dcf2      	bgt.n	d005b102 <_printf_i+0x21e>
d005b11c:	e7eb      	b.n	d005b0f6 <_printf_i+0x212>
d005b11e:	2500      	movs	r5, #0
d005b120:	f104 0619 	add.w	r6, r4, #25
d005b124:	e7f5      	b.n	d005b112 <_printf_i+0x22e>
d005b126:	bf00      	nop
d005b128:	d005c56f 	.word	0xd005c56f
d005b12c:	d005c580 	.word	0xd005c580

d005b130 <_read_r>:
d005b130:	b538      	push	{r3, r4, r5, lr}
d005b132:	4d07      	ldr	r5, [pc, #28]	; (d005b150 <_read_r+0x20>)
d005b134:	4604      	mov	r4, r0
d005b136:	4608      	mov	r0, r1
d005b138:	4611      	mov	r1, r2
d005b13a:	2200      	movs	r2, #0
d005b13c:	602a      	str	r2, [r5, #0]
d005b13e:	461a      	mov	r2, r3
d005b140:	f7f4 ffb8 	bl	d00500b4 <_read>
d005b144:	1c43      	adds	r3, r0, #1
d005b146:	d102      	bne.n	d005b14e <_read_r+0x1e>
d005b148:	682b      	ldr	r3, [r5, #0]
d005b14a:	b103      	cbz	r3, d005b14e <_read_r+0x1e>
d005b14c:	6023      	str	r3, [r4, #0]
d005b14e:	bd38      	pop	{r3, r4, r5, pc}
d005b150:	d01312ac 	.word	0xd01312ac

d005b154 <__swbuf_r>:
d005b154:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005b156:	460e      	mov	r6, r1
d005b158:	4614      	mov	r4, r2
d005b15a:	4605      	mov	r5, r0
d005b15c:	b118      	cbz	r0, d005b166 <__swbuf_r+0x12>
d005b15e:	6983      	ldr	r3, [r0, #24]
d005b160:	b90b      	cbnz	r3, d005b166 <__swbuf_r+0x12>
d005b162:	f7fe ffc1 	bl	d005a0e8 <__sinit>
d005b166:	4b21      	ldr	r3, [pc, #132]	; (d005b1ec <__swbuf_r+0x98>)
d005b168:	429c      	cmp	r4, r3
d005b16a:	d12b      	bne.n	d005b1c4 <__swbuf_r+0x70>
d005b16c:	686c      	ldr	r4, [r5, #4]
d005b16e:	69a3      	ldr	r3, [r4, #24]
d005b170:	60a3      	str	r3, [r4, #8]
d005b172:	89a3      	ldrh	r3, [r4, #12]
d005b174:	071a      	lsls	r2, r3, #28
d005b176:	d52f      	bpl.n	d005b1d8 <__swbuf_r+0x84>
d005b178:	6923      	ldr	r3, [r4, #16]
d005b17a:	b36b      	cbz	r3, d005b1d8 <__swbuf_r+0x84>
d005b17c:	6923      	ldr	r3, [r4, #16]
d005b17e:	6820      	ldr	r0, [r4, #0]
d005b180:	1ac0      	subs	r0, r0, r3
d005b182:	6963      	ldr	r3, [r4, #20]
d005b184:	b2f6      	uxtb	r6, r6
d005b186:	4283      	cmp	r3, r0
d005b188:	4637      	mov	r7, r6
d005b18a:	dc04      	bgt.n	d005b196 <__swbuf_r+0x42>
d005b18c:	4621      	mov	r1, r4
d005b18e:	4628      	mov	r0, r5
d005b190:	f7fe ff16 	bl	d0059fc0 <_fflush_r>
d005b194:	bb30      	cbnz	r0, d005b1e4 <__swbuf_r+0x90>
d005b196:	68a3      	ldr	r3, [r4, #8]
d005b198:	3b01      	subs	r3, #1
d005b19a:	60a3      	str	r3, [r4, #8]
d005b19c:	6823      	ldr	r3, [r4, #0]
d005b19e:	1c5a      	adds	r2, r3, #1
d005b1a0:	6022      	str	r2, [r4, #0]
d005b1a2:	701e      	strb	r6, [r3, #0]
d005b1a4:	6963      	ldr	r3, [r4, #20]
d005b1a6:	3001      	adds	r0, #1
d005b1a8:	4283      	cmp	r3, r0
d005b1aa:	d004      	beq.n	d005b1b6 <__swbuf_r+0x62>
d005b1ac:	89a3      	ldrh	r3, [r4, #12]
d005b1ae:	07db      	lsls	r3, r3, #31
d005b1b0:	d506      	bpl.n	d005b1c0 <__swbuf_r+0x6c>
d005b1b2:	2e0a      	cmp	r6, #10
d005b1b4:	d104      	bne.n	d005b1c0 <__swbuf_r+0x6c>
d005b1b6:	4621      	mov	r1, r4
d005b1b8:	4628      	mov	r0, r5
d005b1ba:	f7fe ff01 	bl	d0059fc0 <_fflush_r>
d005b1be:	b988      	cbnz	r0, d005b1e4 <__swbuf_r+0x90>
d005b1c0:	4638      	mov	r0, r7
d005b1c2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d005b1c4:	4b0a      	ldr	r3, [pc, #40]	; (d005b1f0 <__swbuf_r+0x9c>)
d005b1c6:	429c      	cmp	r4, r3
d005b1c8:	d101      	bne.n	d005b1ce <__swbuf_r+0x7a>
d005b1ca:	68ac      	ldr	r4, [r5, #8]
d005b1cc:	e7cf      	b.n	d005b16e <__swbuf_r+0x1a>
d005b1ce:	4b09      	ldr	r3, [pc, #36]	; (d005b1f4 <__swbuf_r+0xa0>)
d005b1d0:	429c      	cmp	r4, r3
d005b1d2:	bf08      	it	eq
d005b1d4:	68ec      	ldreq	r4, [r5, #12]
d005b1d6:	e7ca      	b.n	d005b16e <__swbuf_r+0x1a>
d005b1d8:	4621      	mov	r1, r4
d005b1da:	4628      	mov	r0, r5
d005b1dc:	f000 f80c 	bl	d005b1f8 <__swsetup_r>
d005b1e0:	2800      	cmp	r0, #0
d005b1e2:	d0cb      	beq.n	d005b17c <__swbuf_r+0x28>
d005b1e4:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
d005b1e8:	e7ea      	b.n	d005b1c0 <__swbuf_r+0x6c>
d005b1ea:	bf00      	nop
d005b1ec:	d005c468 	.word	0xd005c468
d005b1f0:	d005c488 	.word	0xd005c488
d005b1f4:	d005c448 	.word	0xd005c448

d005b1f8 <__swsetup_r>:
d005b1f8:	4b32      	ldr	r3, [pc, #200]	; (d005b2c4 <__swsetup_r+0xcc>)
d005b1fa:	b570      	push	{r4, r5, r6, lr}
d005b1fc:	681d      	ldr	r5, [r3, #0]
d005b1fe:	4606      	mov	r6, r0
d005b200:	460c      	mov	r4, r1
d005b202:	b125      	cbz	r5, d005b20e <__swsetup_r+0x16>
d005b204:	69ab      	ldr	r3, [r5, #24]
d005b206:	b913      	cbnz	r3, d005b20e <__swsetup_r+0x16>
d005b208:	4628      	mov	r0, r5
d005b20a:	f7fe ff6d 	bl	d005a0e8 <__sinit>
d005b20e:	4b2e      	ldr	r3, [pc, #184]	; (d005b2c8 <__swsetup_r+0xd0>)
d005b210:	429c      	cmp	r4, r3
d005b212:	d10f      	bne.n	d005b234 <__swsetup_r+0x3c>
d005b214:	686c      	ldr	r4, [r5, #4]
d005b216:	89a3      	ldrh	r3, [r4, #12]
d005b218:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d005b21c:	0719      	lsls	r1, r3, #28
d005b21e:	d42c      	bmi.n	d005b27a <__swsetup_r+0x82>
d005b220:	06dd      	lsls	r5, r3, #27
d005b222:	d411      	bmi.n	d005b248 <__swsetup_r+0x50>
d005b224:	2309      	movs	r3, #9
d005b226:	6033      	str	r3, [r6, #0]
d005b228:	f042 0340 	orr.w	r3, r2, #64	; 0x40
d005b22c:	81a3      	strh	r3, [r4, #12]
d005b22e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d005b232:	e03e      	b.n	d005b2b2 <__swsetup_r+0xba>
d005b234:	4b25      	ldr	r3, [pc, #148]	; (d005b2cc <__swsetup_r+0xd4>)
d005b236:	429c      	cmp	r4, r3
d005b238:	d101      	bne.n	d005b23e <__swsetup_r+0x46>
d005b23a:	68ac      	ldr	r4, [r5, #8]
d005b23c:	e7eb      	b.n	d005b216 <__swsetup_r+0x1e>
d005b23e:	4b24      	ldr	r3, [pc, #144]	; (d005b2d0 <__swsetup_r+0xd8>)
d005b240:	429c      	cmp	r4, r3
d005b242:	bf08      	it	eq
d005b244:	68ec      	ldreq	r4, [r5, #12]
d005b246:	e7e6      	b.n	d005b216 <__swsetup_r+0x1e>
d005b248:	0758      	lsls	r0, r3, #29
d005b24a:	d512      	bpl.n	d005b272 <__swsetup_r+0x7a>
d005b24c:	6b61      	ldr	r1, [r4, #52]	; 0x34
d005b24e:	b141      	cbz	r1, d005b262 <__swsetup_r+0x6a>
d005b250:	f104 0344 	add.w	r3, r4, #68	; 0x44
d005b254:	4299      	cmp	r1, r3
d005b256:	d002      	beq.n	d005b25e <__swsetup_r+0x66>
d005b258:	4630      	mov	r0, r6
d005b25a:	f7ff f81b 	bl	d005a294 <_free_r>
d005b25e:	2300      	movs	r3, #0
d005b260:	6363      	str	r3, [r4, #52]	; 0x34
d005b262:	89a3      	ldrh	r3, [r4, #12]
d005b264:	f023 0324 	bic.w	r3, r3, #36	; 0x24
d005b268:	81a3      	strh	r3, [r4, #12]
d005b26a:	2300      	movs	r3, #0
d005b26c:	6063      	str	r3, [r4, #4]
d005b26e:	6923      	ldr	r3, [r4, #16]
d005b270:	6023      	str	r3, [r4, #0]
d005b272:	89a3      	ldrh	r3, [r4, #12]
d005b274:	f043 0308 	orr.w	r3, r3, #8
d005b278:	81a3      	strh	r3, [r4, #12]
d005b27a:	6923      	ldr	r3, [r4, #16]
d005b27c:	b94b      	cbnz	r3, d005b292 <__swsetup_r+0x9a>
d005b27e:	89a3      	ldrh	r3, [r4, #12]
d005b280:	f403 7320 	and.w	r3, r3, #640	; 0x280
d005b284:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
d005b288:	d003      	beq.n	d005b292 <__swsetup_r+0x9a>
d005b28a:	4621      	mov	r1, r4
d005b28c:	4630      	mov	r0, r6
d005b28e:	f7ff fa93 	bl	d005a7b8 <__smakebuf_r>
d005b292:	89a0      	ldrh	r0, [r4, #12]
d005b294:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
d005b298:	f010 0301 	ands.w	r3, r0, #1
d005b29c:	d00a      	beq.n	d005b2b4 <__swsetup_r+0xbc>
d005b29e:	2300      	movs	r3, #0
d005b2a0:	60a3      	str	r3, [r4, #8]
d005b2a2:	6963      	ldr	r3, [r4, #20]
d005b2a4:	425b      	negs	r3, r3
d005b2a6:	61a3      	str	r3, [r4, #24]
d005b2a8:	6923      	ldr	r3, [r4, #16]
d005b2aa:	b943      	cbnz	r3, d005b2be <__swsetup_r+0xc6>
d005b2ac:	f010 0080 	ands.w	r0, r0, #128	; 0x80
d005b2b0:	d1ba      	bne.n	d005b228 <__swsetup_r+0x30>
d005b2b2:	bd70      	pop	{r4, r5, r6, pc}
d005b2b4:	0781      	lsls	r1, r0, #30
d005b2b6:	bf58      	it	pl
d005b2b8:	6963      	ldrpl	r3, [r4, #20]
d005b2ba:	60a3      	str	r3, [r4, #8]
d005b2bc:	e7f4      	b.n	d005b2a8 <__swsetup_r+0xb0>
d005b2be:	2000      	movs	r0, #0
d005b2c0:	e7f7      	b.n	d005b2b2 <__swsetup_r+0xba>
d005b2c2:	bf00      	nop
d005b2c4:	d0090dcc 	.word	0xd0090dcc
d005b2c8:	d005c468 	.word	0xd005c468
d005b2cc:	d005c488 	.word	0xd005c488
d005b2d0:	d005c448 	.word	0xd005c448

d005b2d4 <abort>:
d005b2d4:	b508      	push	{r3, lr}
d005b2d6:	2006      	movs	r0, #6
d005b2d8:	f000 f8c4 	bl	d005b464 <raise>
d005b2dc:	2001      	movs	r0, #1
d005b2de:	f7f4 ff21 	bl	d0050124 <_exit>
	...

d005b2e4 <_fstat_r>:
d005b2e4:	b538      	push	{r3, r4, r5, lr}
d005b2e6:	4d07      	ldr	r5, [pc, #28]	; (d005b304 <_fstat_r+0x20>)
d005b2e8:	2300      	movs	r3, #0
d005b2ea:	4604      	mov	r4, r0
d005b2ec:	4608      	mov	r0, r1
d005b2ee:	4611      	mov	r1, r2
d005b2f0:	602b      	str	r3, [r5, #0]
d005b2f2:	f7f4 feed 	bl	d00500d0 <_fstat>
d005b2f6:	1c43      	adds	r3, r0, #1
d005b2f8:	d102      	bne.n	d005b300 <_fstat_r+0x1c>
d005b2fa:	682b      	ldr	r3, [r5, #0]
d005b2fc:	b103      	cbz	r3, d005b300 <_fstat_r+0x1c>
d005b2fe:	6023      	str	r3, [r4, #0]
d005b300:	bd38      	pop	{r3, r4, r5, pc}
d005b302:	bf00      	nop
d005b304:	d01312ac 	.word	0xd01312ac

d005b308 <_isatty_r>:
d005b308:	b538      	push	{r3, r4, r5, lr}
d005b30a:	4d06      	ldr	r5, [pc, #24]	; (d005b324 <_isatty_r+0x1c>)
d005b30c:	2300      	movs	r3, #0
d005b30e:	4604      	mov	r4, r0
d005b310:	4608      	mov	r0, r1
d005b312:	602b      	str	r3, [r5, #0]
d005b314:	f7f4 ff04 	bl	d0050120 <_isatty>
d005b318:	1c43      	adds	r3, r0, #1
d005b31a:	d102      	bne.n	d005b322 <_isatty_r+0x1a>
d005b31c:	682b      	ldr	r3, [r5, #0]
d005b31e:	b103      	cbz	r3, d005b322 <_isatty_r+0x1a>
d005b320:	6023      	str	r3, [r4, #0]
d005b322:	bd38      	pop	{r3, r4, r5, pc}
d005b324:	d01312ac 	.word	0xd01312ac
	...

d005b330 <memchr>:
d005b330:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d005b334:	2a10      	cmp	r2, #16
d005b336:	db2b      	blt.n	d005b390 <memchr+0x60>
d005b338:	f010 0f07 	tst.w	r0, #7
d005b33c:	d008      	beq.n	d005b350 <memchr+0x20>
d005b33e:	f810 3b01 	ldrb.w	r3, [r0], #1
d005b342:	3a01      	subs	r2, #1
d005b344:	428b      	cmp	r3, r1
d005b346:	d02d      	beq.n	d005b3a4 <memchr+0x74>
d005b348:	f010 0f07 	tst.w	r0, #7
d005b34c:	b342      	cbz	r2, d005b3a0 <memchr+0x70>
d005b34e:	d1f6      	bne.n	d005b33e <memchr+0xe>
d005b350:	b4f0      	push	{r4, r5, r6, r7}
d005b352:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
d005b356:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
d005b35a:	f022 0407 	bic.w	r4, r2, #7
d005b35e:	f07f 0700 	mvns.w	r7, #0
d005b362:	2300      	movs	r3, #0
d005b364:	e8f0 5602 	ldrd	r5, r6, [r0], #8
d005b368:	3c08      	subs	r4, #8
d005b36a:	ea85 0501 	eor.w	r5, r5, r1
d005b36e:	ea86 0601 	eor.w	r6, r6, r1
d005b372:	fa85 f547 	uadd8	r5, r5, r7
d005b376:	faa3 f587 	sel	r5, r3, r7
d005b37a:	fa86 f647 	uadd8	r6, r6, r7
d005b37e:	faa5 f687 	sel	r6, r5, r7
d005b382:	b98e      	cbnz	r6, d005b3a8 <memchr+0x78>
d005b384:	d1ee      	bne.n	d005b364 <memchr+0x34>
d005b386:	bcf0      	pop	{r4, r5, r6, r7}
d005b388:	f001 01ff 	and.w	r1, r1, #255	; 0xff
d005b38c:	f002 0207 	and.w	r2, r2, #7
d005b390:	b132      	cbz	r2, d005b3a0 <memchr+0x70>
d005b392:	f810 3b01 	ldrb.w	r3, [r0], #1
d005b396:	3a01      	subs	r2, #1
d005b398:	ea83 0301 	eor.w	r3, r3, r1
d005b39c:	b113      	cbz	r3, d005b3a4 <memchr+0x74>
d005b39e:	d1f8      	bne.n	d005b392 <memchr+0x62>
d005b3a0:	2000      	movs	r0, #0
d005b3a2:	4770      	bx	lr
d005b3a4:	3801      	subs	r0, #1
d005b3a6:	4770      	bx	lr
d005b3a8:	2d00      	cmp	r5, #0
d005b3aa:	bf06      	itte	eq
d005b3ac:	4635      	moveq	r5, r6
d005b3ae:	3803      	subeq	r0, #3
d005b3b0:	3807      	subne	r0, #7
d005b3b2:	f015 0f01 	tst.w	r5, #1
d005b3b6:	d107      	bne.n	d005b3c8 <memchr+0x98>
d005b3b8:	3001      	adds	r0, #1
d005b3ba:	f415 7f80 	tst.w	r5, #256	; 0x100
d005b3be:	bf02      	ittt	eq
d005b3c0:	3001      	addeq	r0, #1
d005b3c2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
d005b3c6:	3001      	addeq	r0, #1
d005b3c8:	bcf0      	pop	{r4, r5, r6, r7}
d005b3ca:	3801      	subs	r0, #1
d005b3cc:	4770      	bx	lr
d005b3ce:	bf00      	nop

d005b3d0 <memmove>:
d005b3d0:	4288      	cmp	r0, r1
d005b3d2:	b510      	push	{r4, lr}
d005b3d4:	eb01 0402 	add.w	r4, r1, r2
d005b3d8:	d902      	bls.n	d005b3e0 <memmove+0x10>
d005b3da:	4284      	cmp	r4, r0
d005b3dc:	4623      	mov	r3, r4
d005b3de:	d807      	bhi.n	d005b3f0 <memmove+0x20>
d005b3e0:	1e43      	subs	r3, r0, #1
d005b3e2:	42a1      	cmp	r1, r4
d005b3e4:	d008      	beq.n	d005b3f8 <memmove+0x28>
d005b3e6:	f811 2b01 	ldrb.w	r2, [r1], #1
d005b3ea:	f803 2f01 	strb.w	r2, [r3, #1]!
d005b3ee:	e7f8      	b.n	d005b3e2 <memmove+0x12>
d005b3f0:	4402      	add	r2, r0
d005b3f2:	4601      	mov	r1, r0
d005b3f4:	428a      	cmp	r2, r1
d005b3f6:	d100      	bne.n	d005b3fa <memmove+0x2a>
d005b3f8:	bd10      	pop	{r4, pc}
d005b3fa:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
d005b3fe:	f802 4d01 	strb.w	r4, [r2, #-1]!
d005b402:	e7f7      	b.n	d005b3f4 <memmove+0x24>

d005b404 <_malloc_usable_size_r>:
d005b404:	f851 3c04 	ldr.w	r3, [r1, #-4]
d005b408:	1f18      	subs	r0, r3, #4
d005b40a:	2b00      	cmp	r3, #0
d005b40c:	bfbc      	itt	lt
d005b40e:	580b      	ldrlt	r3, [r1, r0]
d005b410:	18c0      	addlt	r0, r0, r3
d005b412:	4770      	bx	lr

d005b414 <_raise_r>:
d005b414:	291f      	cmp	r1, #31
d005b416:	b538      	push	{r3, r4, r5, lr}
d005b418:	4604      	mov	r4, r0
d005b41a:	460d      	mov	r5, r1
d005b41c:	d904      	bls.n	d005b428 <_raise_r+0x14>
d005b41e:	2316      	movs	r3, #22
d005b420:	6003      	str	r3, [r0, #0]
d005b422:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
d005b426:	bd38      	pop	{r3, r4, r5, pc}
d005b428:	6c42      	ldr	r2, [r0, #68]	; 0x44
d005b42a:	b112      	cbz	r2, d005b432 <_raise_r+0x1e>
d005b42c:	f852 3021 	ldr.w	r3, [r2, r1, lsl #2]
d005b430:	b94b      	cbnz	r3, d005b446 <_raise_r+0x32>
d005b432:	4620      	mov	r0, r4
d005b434:	f000 f830 	bl	d005b498 <_getpid_r>
d005b438:	462a      	mov	r2, r5
d005b43a:	4601      	mov	r1, r0
d005b43c:	4620      	mov	r0, r4
d005b43e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
d005b442:	f000 b817 	b.w	d005b474 <_kill_r>
d005b446:	2b01      	cmp	r3, #1
d005b448:	d00a      	beq.n	d005b460 <_raise_r+0x4c>
d005b44a:	1c59      	adds	r1, r3, #1
d005b44c:	d103      	bne.n	d005b456 <_raise_r+0x42>
d005b44e:	2316      	movs	r3, #22
d005b450:	6003      	str	r3, [r0, #0]
d005b452:	2001      	movs	r0, #1
d005b454:	e7e7      	b.n	d005b426 <_raise_r+0x12>
d005b456:	2400      	movs	r4, #0
d005b458:	f842 4025 	str.w	r4, [r2, r5, lsl #2]
d005b45c:	4628      	mov	r0, r5
d005b45e:	4798      	blx	r3
d005b460:	2000      	movs	r0, #0
d005b462:	e7e0      	b.n	d005b426 <_raise_r+0x12>

d005b464 <raise>:
d005b464:	4b02      	ldr	r3, [pc, #8]	; (d005b470 <raise+0xc>)
d005b466:	4601      	mov	r1, r0
d005b468:	6818      	ldr	r0, [r3, #0]
d005b46a:	f7ff bfd3 	b.w	d005b414 <_raise_r>
d005b46e:	bf00      	nop
d005b470:	d0090dcc 	.word	0xd0090dcc

d005b474 <_kill_r>:
d005b474:	b538      	push	{r3, r4, r5, lr}
d005b476:	4d07      	ldr	r5, [pc, #28]	; (d005b494 <_kill_r+0x20>)
d005b478:	2300      	movs	r3, #0
d005b47a:	4604      	mov	r4, r0
d005b47c:	4608      	mov	r0, r1
d005b47e:	4611      	mov	r1, r2
d005b480:	602b      	str	r3, [r5, #0]
d005b482:	f7f4 fe53 	bl	d005012c <_kill>
d005b486:	1c43      	adds	r3, r0, #1
d005b488:	d102      	bne.n	d005b490 <_kill_r+0x1c>
d005b48a:	682b      	ldr	r3, [r5, #0]
d005b48c:	b103      	cbz	r3, d005b490 <_kill_r+0x1c>
d005b48e:	6023      	str	r3, [r4, #0]
d005b490:	bd38      	pop	{r3, r4, r5, pc}
d005b492:	bf00      	nop
d005b494:	d01312ac 	.word	0xd01312ac

d005b498 <_getpid_r>:
d005b498:	f7f4 be46 	b.w	d0050128 <_getpid>

d005b49c <sinf_poly>:
d005b49c:	07cb      	lsls	r3, r1, #31
d005b49e:	d412      	bmi.n	d005b4c6 <sinf_poly+0x2a>
d005b4a0:	ee21 6b00 	vmul.f64	d6, d1, d0
d005b4a4:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d005b4a8:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d005b4ac:	eea5 7b01 	vfma.f64	d7, d5, d1
d005b4b0:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d005b4b4:	ee21 1b06 	vmul.f64	d1, d1, d6
d005b4b8:	eea5 0b06 	vfma.f64	d0, d5, d6
d005b4bc:	eea7 0b01 	vfma.f64	d0, d7, d1
d005b4c0:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d005b4c4:	4770      	bx	lr
d005b4c6:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d005b4ca:	ee21 6b01 	vmul.f64	d6, d1, d1
d005b4ce:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d005b4d2:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d005b4d6:	eea1 7b05 	vfma.f64	d7, d1, d5
d005b4da:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d005b4de:	eea1 0b05 	vfma.f64	d0, d1, d5
d005b4e2:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d005b4e6:	ee21 1b06 	vmul.f64	d1, d1, d6
d005b4ea:	eea6 0b05 	vfma.f64	d0, d6, d5
d005b4ee:	e7e5      	b.n	d005b4bc <sinf_poly+0x20>

d005b4f0 <cosf>:
d005b4f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005b4f2:	ee10 4a10 	vmov	r4, s0
d005b4f6:	f3c4 530a 	ubfx	r3, r4, #20, #11
d005b4fa:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d005b4fe:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d005b502:	d20c      	bcs.n	d005b51e <cosf+0x2e>
d005b504:	ee26 1b06 	vmul.f64	d1, d6, d6
d005b508:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d005b50c:	d378      	bcc.n	d005b600 <cosf+0x110>
d005b50e:	eeb0 0b46 	vmov.f64	d0, d6
d005b512:	483f      	ldr	r0, [pc, #252]	; (d005b610 <cosf+0x120>)
d005b514:	2101      	movs	r1, #1
d005b516:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d005b51a:	f7ff bfbf 	b.w	d005b49c <sinf_poly>
d005b51e:	f240 422e 	movw	r2, #1070	; 0x42e
d005b522:	4293      	cmp	r3, r2
d005b524:	d826      	bhi.n	d005b574 <cosf+0x84>
d005b526:	4b3a      	ldr	r3, [pc, #232]	; (d005b610 <cosf+0x120>)
d005b528:	ed93 7b08 	vldr	d7, [r3, #32]
d005b52c:	ee26 7b07 	vmul.f64	d7, d6, d7
d005b530:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d005b534:	f103 0070 	add.w	r0, r3, #112	; 0x70
d005b538:	ee17 1a90 	vmov	r1, s15
d005b53c:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d005b540:	1609      	asrs	r1, r1, #24
d005b542:	ee07 1a90 	vmov	s15, r1
d005b546:	f001 0203 	and.w	r2, r1, #3
d005b54a:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d005b54e:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d005b552:	ed92 0b00 	vldr	d0, [r2]
d005b556:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d005b55a:	f011 0f02 	tst.w	r1, #2
d005b55e:	eea5 6b47 	vfms.f64	d6, d5, d7
d005b562:	f081 0101 	eor.w	r1, r1, #1
d005b566:	bf08      	it	eq
d005b568:	4618      	moveq	r0, r3
d005b56a:	ee26 1b06 	vmul.f64	d1, d6, d6
d005b56e:	ee20 0b06 	vmul.f64	d0, d0, d6
d005b572:	e7d0      	b.n	d005b516 <cosf+0x26>
d005b574:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d005b578:	d23e      	bcs.n	d005b5f8 <cosf+0x108>
d005b57a:	4b26      	ldr	r3, [pc, #152]	; (d005b614 <cosf+0x124>)
d005b57c:	f3c4 6283 	ubfx	r2, r4, #26, #4
d005b580:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d005b584:	f3c4 0116 	ubfx	r1, r4, #0, #23
d005b588:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d005b58c:	6a06      	ldr	r6, [r0, #32]
d005b58e:	6900      	ldr	r0, [r0, #16]
d005b590:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d005b594:	40a9      	lsls	r1, r5
d005b596:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d005b59a:	fba1 6706 	umull	r6, r7, r1, r6
d005b59e:	fb05 f301 	mul.w	r3, r5, r1
d005b5a2:	463a      	mov	r2, r7
d005b5a4:	fbe0 2301 	umlal	r2, r3, r0, r1
d005b5a8:	1c11      	adds	r1, r2, #0
d005b5aa:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d005b5ae:	2000      	movs	r0, #0
d005b5b0:	1a10      	subs	r0, r2, r0
d005b5b2:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d005b5b6:	eb63 0101 	sbc.w	r1, r3, r1
d005b5ba:	f000 fd27 	bl	d005c00c <__aeabi_l2d>
d005b5be:	0fb5      	lsrs	r5, r6, #30
d005b5c0:	4b13      	ldr	r3, [pc, #76]	; (d005b610 <cosf+0x120>)
d005b5c2:	eb05 74d4 	add.w	r4, r5, r4, lsr #31
d005b5c6:	ed9f 0b10 	vldr	d0, [pc, #64]	; d005b608 <cosf+0x118>
d005b5ca:	ec41 0b17 	vmov	d7, r0, r1
d005b5ce:	f004 0203 	and.w	r2, r4, #3
d005b5d2:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d005b5d6:	ee27 0b00 	vmul.f64	d0, d7, d0
d005b5da:	ed92 7b00 	vldr	d7, [r2]
d005b5de:	ee20 1b00 	vmul.f64	d1, d0, d0
d005b5e2:	f014 0f02 	tst.w	r4, #2
d005b5e6:	f103 0070 	add.w	r0, r3, #112	; 0x70
d005b5ea:	f085 0101 	eor.w	r1, r5, #1
d005b5ee:	bf08      	it	eq
d005b5f0:	4618      	moveq	r0, r3
d005b5f2:	ee27 0b00 	vmul.f64	d0, d7, d0
d005b5f6:	e78e      	b.n	d005b516 <cosf+0x26>
d005b5f8:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
d005b5fc:	f000 b844 	b.w	d005b688 <__math_invalidf>
d005b600:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d005b604:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
d005b606:	bf00      	nop
d005b608:	54442d18 	.word	0x54442d18
d005b60c:	3c1921fb 	.word	0x3c1921fb
d005b610:	d005c860 	.word	0xd005c860
d005b614:	d005c800 	.word	0xd005c800

d005b618 <with_errnof>:
d005b618:	b513      	push	{r0, r1, r4, lr}
d005b61a:	4604      	mov	r4, r0
d005b61c:	ed8d 0a01 	vstr	s0, [sp, #4]
d005b620:	f7fe fbce 	bl	d0059dc0 <__errno>
d005b624:	ed9d 0a01 	vldr	s0, [sp, #4]
d005b628:	6004      	str	r4, [r0, #0]
d005b62a:	b002      	add	sp, #8
d005b62c:	bd10      	pop	{r4, pc}

d005b62e <xflowf>:
d005b62e:	b130      	cbz	r0, d005b63e <xflowf+0x10>
d005b630:	eef1 7a40 	vneg.f32	s15, s0
d005b634:	ee27 0a80 	vmul.f32	s0, s15, s0
d005b638:	2022      	movs	r0, #34	; 0x22
d005b63a:	f7ff bfed 	b.w	d005b618 <with_errnof>
d005b63e:	eef0 7a40 	vmov.f32	s15, s0
d005b642:	e7f7      	b.n	d005b634 <xflowf+0x6>

d005b644 <__math_uflowf>:
d005b644:	ed9f 0a01 	vldr	s0, [pc, #4]	; d005b64c <__math_uflowf+0x8>
d005b648:	f7ff bff1 	b.w	d005b62e <xflowf>
d005b64c:	10000000 	.word	0x10000000

d005b650 <__math_may_uflowf>:
d005b650:	ed9f 0a01 	vldr	s0, [pc, #4]	; d005b658 <__math_may_uflowf+0x8>
d005b654:	f7ff bfeb 	b.w	d005b62e <xflowf>
d005b658:	1a200000 	.word	0x1a200000

d005b65c <__math_oflowf>:
d005b65c:	ed9f 0a01 	vldr	s0, [pc, #4]	; d005b664 <__math_oflowf+0x8>
d005b660:	f7ff bfe5 	b.w	d005b62e <xflowf>
d005b664:	70000000 	.word	0x70000000

d005b668 <__math_divzerof>:
d005b668:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
d005b66c:	eeff 7a00 	vmov.f32	s15, #240	; 0xbf800000 -1.0
d005b670:	2800      	cmp	r0, #0
d005b672:	fe40 7a27 	vseleq.f32	s15, s0, s15
d005b676:	ed9f 0a03 	vldr	s0, [pc, #12]	; d005b684 <__math_divzerof+0x1c>
d005b67a:	2022      	movs	r0, #34	; 0x22
d005b67c:	ee87 0a80 	vdiv.f32	s0, s15, s0
d005b680:	f7ff bfca 	b.w	d005b618 <with_errnof>
d005b684:	00000000 	.word	0x00000000

d005b688 <__math_invalidf>:
d005b688:	eef0 7a40 	vmov.f32	s15, s0
d005b68c:	ee30 7a40 	vsub.f32	s14, s0, s0
d005b690:	eef4 7a67 	vcmp.f32	s15, s15
d005b694:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005b698:	ee87 0a07 	vdiv.f32	s0, s14, s14
d005b69c:	d602      	bvs.n	d005b6a4 <__math_invalidf+0x1c>
d005b69e:	2021      	movs	r0, #33	; 0x21
d005b6a0:	f7ff bfba 	b.w	d005b618 <with_errnof>
d005b6a4:	4770      	bx	lr
	...

d005b6a8 <expf>:
d005b6a8:	ee10 2a10 	vmov	r2, s0
d005b6ac:	b470      	push	{r4, r5, r6}
d005b6ae:	f3c2 530a 	ubfx	r3, r2, #20, #11
d005b6b2:	f240 442a 	movw	r4, #1066	; 0x42a
d005b6b6:	42a3      	cmp	r3, r4
d005b6b8:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d005b6bc:	d92a      	bls.n	d005b714 <expf+0x6c>
d005b6be:	f512 0f00 	cmn.w	r2, #8388608	; 0x800000
d005b6c2:	d059      	beq.n	d005b778 <expf+0xd0>
d005b6c4:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d005b6c8:	d303      	bcc.n	d005b6d2 <expf+0x2a>
d005b6ca:	ee30 0a00 	vadd.f32	s0, s0, s0
d005b6ce:	bc70      	pop	{r4, r5, r6}
d005b6d0:	4770      	bx	lr
d005b6d2:	eddf 7a2b 	vldr	s15, [pc, #172]	; d005b780 <expf+0xd8>
d005b6d6:	eeb4 0ae7 	vcmpe.f32	s0, s15
d005b6da:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005b6de:	dd03      	ble.n	d005b6e8 <expf+0x40>
d005b6e0:	bc70      	pop	{r4, r5, r6}
d005b6e2:	2000      	movs	r0, #0
d005b6e4:	f7ff bfba 	b.w	d005b65c <__math_oflowf>
d005b6e8:	eddf 7a26 	vldr	s15, [pc, #152]	; d005b784 <expf+0xdc>
d005b6ec:	eeb4 0ae7 	vcmpe.f32	s0, s15
d005b6f0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005b6f4:	d503      	bpl.n	d005b6fe <expf+0x56>
d005b6f6:	bc70      	pop	{r4, r5, r6}
d005b6f8:	2000      	movs	r0, #0
d005b6fa:	f7ff bfa3 	b.w	d005b644 <__math_uflowf>
d005b6fe:	eddf 7a22 	vldr	s15, [pc, #136]	; d005b788 <expf+0xe0>
d005b702:	eeb4 0ae7 	vcmpe.f32	s0, s15
d005b706:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005b70a:	d503      	bpl.n	d005b714 <expf+0x6c>
d005b70c:	bc70      	pop	{r4, r5, r6}
d005b70e:	2000      	movs	r0, #0
d005b710:	f7ff bf9e 	b.w	d005b650 <__math_may_uflowf>
d005b714:	4b1d      	ldr	r3, [pc, #116]	; (d005b78c <expf+0xe4>)
d005b716:	eeb7 0b00 	vmov.f64	d0, #112	; 0x3f800000  1.0
d005b71a:	ed93 5b4a 	vldr	d5, [r3, #296]	; 0x128
d005b71e:	ed93 4b48 	vldr	d4, [r3, #288]	; 0x120
d005b722:	eeb0 7b44 	vmov.f64	d7, d4
d005b726:	eea5 7b06 	vfma.f64	d7, d5, d6
d005b72a:	ee17 5a10 	vmov	r5, s14
d005b72e:	ee37 7b44 	vsub.f64	d7, d7, d4
d005b732:	f005 021f 	and.w	r2, r5, #31
d005b736:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d005b73a:	e9d2 4600 	ldrd	r4, r6, [r2]
d005b73e:	ee95 7b06 	vfnms.f64	d7, d5, d6
d005b742:	ed93 4b50 	vldr	d4, [r3, #320]	; 0x140
d005b746:	ed93 5b4c 	vldr	d5, [r3, #304]	; 0x130
d005b74a:	eea4 0b07 	vfma.f64	d0, d4, d7
d005b74e:	ed93 6b4e 	vldr	d6, [r3, #312]	; 0x138
d005b752:	2300      	movs	r3, #0
d005b754:	1918      	adds	r0, r3, r4
d005b756:	ea4f 32c5 	mov.w	r2, r5, lsl #15
d005b75a:	eb42 0106 	adc.w	r1, r2, r6
d005b75e:	eea5 6b07 	vfma.f64	d6, d5, d7
d005b762:	ee27 5b07 	vmul.f64	d5, d7, d7
d005b766:	ec41 0b17 	vmov	d7, r0, r1
d005b76a:	eea6 0b05 	vfma.f64	d0, d6, d5
d005b76e:	ee20 0b07 	vmul.f64	d0, d0, d7
d005b772:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d005b776:	e7aa      	b.n	d005b6ce <expf+0x26>
d005b778:	ed9f 0a05 	vldr	s0, [pc, #20]	; d005b790 <expf+0xe8>
d005b77c:	e7a7      	b.n	d005b6ce <expf+0x26>
d005b77e:	bf00      	nop
d005b780:	42b17217 	.word	0x42b17217
d005b784:	c2cff1b4 	.word	0xc2cff1b4
d005b788:	c2ce8ecf 	.word	0xc2ce8ecf
d005b78c:	d005c598 	.word	0xd005c598
d005b790:	00000000 	.word	0x00000000

d005b794 <logf>:
d005b794:	ee10 3a10 	vmov	r3, s0
d005b798:	f1b3 5f7e 	cmp.w	r3, #1065353216	; 0x3f800000
d005b79c:	b410      	push	{r4}
d005b79e:	d055      	beq.n	d005b84c <logf+0xb8>
d005b7a0:	f5a3 0200 	sub.w	r2, r3, #8388608	; 0x800000
d005b7a4:	f1b2 4ffe 	cmp.w	r2, #2130706432	; 0x7f000000
d005b7a8:	d31a      	bcc.n	d005b7e0 <logf+0x4c>
d005b7aa:	005a      	lsls	r2, r3, #1
d005b7ac:	d104      	bne.n	d005b7b8 <logf+0x24>
d005b7ae:	f85d 4b04 	ldr.w	r4, [sp], #4
d005b7b2:	2001      	movs	r0, #1
d005b7b4:	f7ff bf58 	b.w	d005b668 <__math_divzerof>
d005b7b8:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d005b7bc:	d043      	beq.n	d005b846 <logf+0xb2>
d005b7be:	2b00      	cmp	r3, #0
d005b7c0:	db02      	blt.n	d005b7c8 <logf+0x34>
d005b7c2:	f1b2 4f7f 	cmp.w	r2, #4278190080	; 0xff000000
d005b7c6:	d303      	bcc.n	d005b7d0 <logf+0x3c>
d005b7c8:	f85d 4b04 	ldr.w	r4, [sp], #4
d005b7cc:	f7ff bf5c 	b.w	d005b688 <__math_invalidf>
d005b7d0:	eddf 7a20 	vldr	s15, [pc, #128]	; d005b854 <logf+0xc0>
d005b7d4:	ee20 0a27 	vmul.f32	s0, s0, s15
d005b7d8:	ee10 3a10 	vmov	r3, s0
d005b7dc:	f1a3 6338 	sub.w	r3, r3, #192937984	; 0xb800000
d005b7e0:	f103 4240 	add.w	r2, r3, #3221225472	; 0xc0000000
d005b7e4:	491c      	ldr	r1, [pc, #112]	; (d005b858 <logf+0xc4>)
d005b7e6:	eebf 0b00 	vmov.f64	d0, #240	; 0xbf800000 -1.0
d005b7ea:	f502 024d 	add.w	r2, r2, #13434880	; 0xcd0000
d005b7ee:	f3c2 40c3 	ubfx	r0, r2, #19, #4
d005b7f2:	0dd4      	lsrs	r4, r2, #23
d005b7f4:	eb01 1000 	add.w	r0, r1, r0, lsl #4
d005b7f8:	05e4      	lsls	r4, r4, #23
d005b7fa:	ed90 6b00 	vldr	d6, [r0]
d005b7fe:	1b1b      	subs	r3, r3, r4
d005b800:	ee07 3a90 	vmov	s15, r3
d005b804:	ed91 5b40 	vldr	d5, [r1, #256]	; 0x100
d005b808:	eeb7 7ae7 	vcvt.f64.f32	d7, s15
d005b80c:	15d2      	asrs	r2, r2, #23
d005b80e:	eea6 0b07 	vfma.f64	d0, d6, d7
d005b812:	ed90 6b02 	vldr	d6, [r0, #8]
d005b816:	ee07 2a90 	vmov	s15, r2
d005b81a:	ed91 4b44 	vldr	d4, [r1, #272]	; 0x110
d005b81e:	eeb8 7be7 	vcvt.f64.s32	d7, s15
d005b822:	eea7 6b05 	vfma.f64	d6, d7, d5
d005b826:	ed91 7b46 	vldr	d7, [r1, #280]	; 0x118
d005b82a:	ee20 5b00 	vmul.f64	d5, d0, d0
d005b82e:	eea4 7b00 	vfma.f64	d7, d4, d0
d005b832:	ed91 4b42 	vldr	d4, [r1, #264]	; 0x108
d005b836:	ee30 0b06 	vadd.f64	d0, d0, d6
d005b83a:	eea4 7b05 	vfma.f64	d7, d4, d5
d005b83e:	eea5 0b07 	vfma.f64	d0, d5, d7
d005b842:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d005b846:	f85d 4b04 	ldr.w	r4, [sp], #4
d005b84a:	4770      	bx	lr
d005b84c:	ed9f 0a03 	vldr	s0, [pc, #12]	; d005b85c <logf+0xc8>
d005b850:	e7f9      	b.n	d005b846 <logf+0xb2>
d005b852:	bf00      	nop
d005b854:	4b000000 	.word	0x4b000000
d005b858:	d005c6e0 	.word	0xd005c6e0
d005b85c:	00000000 	.word	0x00000000

d005b860 <sinf_poly>:
d005b860:	07cb      	lsls	r3, r1, #31
d005b862:	d412      	bmi.n	d005b88a <sinf_poly+0x2a>
d005b864:	ee21 6b00 	vmul.f64	d6, d1, d0
d005b868:	ed90 5b1a 	vldr	d5, [r0, #104]	; 0x68
d005b86c:	ed90 7b18 	vldr	d7, [r0, #96]	; 0x60
d005b870:	eea5 7b01 	vfma.f64	d7, d5, d1
d005b874:	ed90 5b16 	vldr	d5, [r0, #88]	; 0x58
d005b878:	ee21 1b06 	vmul.f64	d1, d1, d6
d005b87c:	eea5 0b06 	vfma.f64	d0, d5, d6
d005b880:	eea7 0b01 	vfma.f64	d0, d7, d1
d005b884:	eeb7 0bc0 	vcvt.f32.f64	s0, d0
d005b888:	4770      	bx	lr
d005b88a:	ed90 5b14 	vldr	d5, [r0, #80]	; 0x50
d005b88e:	ee21 6b01 	vmul.f64	d6, d1, d1
d005b892:	ed90 7b12 	vldr	d7, [r0, #72]	; 0x48
d005b896:	ed90 0b0c 	vldr	d0, [r0, #48]	; 0x30
d005b89a:	eea1 7b05 	vfma.f64	d7, d1, d5
d005b89e:	ed90 5b0e 	vldr	d5, [r0, #56]	; 0x38
d005b8a2:	eea1 0b05 	vfma.f64	d0, d1, d5
d005b8a6:	ed90 5b10 	vldr	d5, [r0, #64]	; 0x40
d005b8aa:	ee21 1b06 	vmul.f64	d1, d1, d6
d005b8ae:	eea6 0b05 	vfma.f64	d0, d6, d5
d005b8b2:	e7e5      	b.n	d005b880 <sinf_poly+0x20>
d005b8b4:	0000      	movs	r0, r0
	...

d005b8b8 <sinf>:
d005b8b8:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
d005b8ba:	ee10 4a10 	vmov	r4, s0
d005b8be:	f3c4 530a 	ubfx	r3, r4, #20, #11
d005b8c2:	f5b3 7f7d 	cmp.w	r3, #1012	; 0x3f4
d005b8c6:	eeb7 6ac0 	vcvt.f64.f32	d6, s0
d005b8ca:	eef0 7a40 	vmov.f32	s15, s0
d005b8ce:	ea4f 5214 	mov.w	r2, r4, lsr #20
d005b8d2:	d218      	bcs.n	d005b906 <sinf+0x4e>
d005b8d4:	ee26 1b06 	vmul.f64	d1, d6, d6
d005b8d8:	f5b3 7f66 	cmp.w	r3, #920	; 0x398
d005b8dc:	d20a      	bcs.n	d005b8f4 <sinf+0x3c>
d005b8de:	f412 6fff 	tst.w	r2, #2040	; 0x7f8
d005b8e2:	d103      	bne.n	d005b8ec <sinf+0x34>
d005b8e4:	eeb7 1bc1 	vcvt.f32.f64	s2, d1
d005b8e8:	ed8d 1a01 	vstr	s2, [sp, #4]
d005b8ec:	eeb0 0a67 	vmov.f32	s0, s15
d005b8f0:	b003      	add	sp, #12
d005b8f2:	bdf0      	pop	{r4, r5, r6, r7, pc}
d005b8f4:	483e      	ldr	r0, [pc, #248]	; (d005b9f0 <sinf+0x138>)
d005b8f6:	eeb0 0b46 	vmov.f64	d0, d6
d005b8fa:	2100      	movs	r1, #0
d005b8fc:	b003      	add	sp, #12
d005b8fe:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d005b902:	f7ff bfad 	b.w	d005b860 <sinf_poly>
d005b906:	f240 422e 	movw	r2, #1070	; 0x42e
d005b90a:	4293      	cmp	r3, r2
d005b90c:	d824      	bhi.n	d005b958 <sinf+0xa0>
d005b90e:	4b38      	ldr	r3, [pc, #224]	; (d005b9f0 <sinf+0x138>)
d005b910:	ed93 7b08 	vldr	d7, [r3, #32]
d005b914:	ee26 7b07 	vmul.f64	d7, d6, d7
d005b918:	eefd 7bc7 	vcvt.s32.f64	s15, d7
d005b91c:	f103 0070 	add.w	r0, r3, #112	; 0x70
d005b920:	ee17 1a90 	vmov	r1, s15
d005b924:	f501 0100 	add.w	r1, r1, #8388608	; 0x800000
d005b928:	1609      	asrs	r1, r1, #24
d005b92a:	ee07 1a90 	vmov	s15, r1
d005b92e:	f001 0203 	and.w	r2, r1, #3
d005b932:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
d005b936:	eeb8 5be7 	vcvt.f64.s32	d5, s15
d005b93a:	ed92 0b00 	vldr	d0, [r2]
d005b93e:	ed93 7b0a 	vldr	d7, [r3, #40]	; 0x28
d005b942:	f011 0f02 	tst.w	r1, #2
d005b946:	eea5 6b47 	vfms.f64	d6, d5, d7
d005b94a:	bf08      	it	eq
d005b94c:	4618      	moveq	r0, r3
d005b94e:	ee26 1b06 	vmul.f64	d1, d6, d6
d005b952:	ee20 0b06 	vmul.f64	d0, d0, d6
d005b956:	e7d1      	b.n	d005b8fc <sinf+0x44>
d005b958:	f5b3 6fff 	cmp.w	r3, #2040	; 0x7f8
d005b95c:	d23d      	bcs.n	d005b9da <sinf+0x122>
d005b95e:	4b25      	ldr	r3, [pc, #148]	; (d005b9f4 <sinf+0x13c>)
d005b960:	f3c4 6283 	ubfx	r2, r4, #26, #4
d005b964:	eb03 0082 	add.w	r0, r3, r2, lsl #2
d005b968:	f3c4 0116 	ubfx	r1, r4, #0, #23
d005b96c:	6a06      	ldr	r6, [r0, #32]
d005b96e:	6900      	ldr	r0, [r0, #16]
d005b970:	f3c4 55c2 	ubfx	r5, r4, #23, #3
d005b974:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
d005b978:	40a9      	lsls	r1, r5
d005b97a:	f853 5022 	ldr.w	r5, [r3, r2, lsl #2]
d005b97e:	fba1 6706 	umull	r6, r7, r1, r6
d005b982:	fb05 f301 	mul.w	r3, r5, r1
d005b986:	463a      	mov	r2, r7
d005b988:	fbe0 2301 	umlal	r2, r3, r0, r1
d005b98c:	1c11      	adds	r1, r2, #0
d005b98e:	f143 5600 	adc.w	r6, r3, #536870912	; 0x20000000
d005b992:	2000      	movs	r0, #0
d005b994:	1a10      	subs	r0, r2, r0
d005b996:	f006 4140 	and.w	r1, r6, #3221225472	; 0xc0000000
d005b99a:	eb63 0101 	sbc.w	r1, r3, r1
d005b99e:	f000 fb35 	bl	d005c00c <__aeabi_l2d>
d005b9a2:	0fb5      	lsrs	r5, r6, #30
d005b9a4:	4a12      	ldr	r2, [pc, #72]	; (d005b9f0 <sinf+0x138>)
d005b9a6:	eb05 73d4 	add.w	r3, r5, r4, lsr #31
d005b9aa:	ed9f 0b0f 	vldr	d0, [pc, #60]	; d005b9e8 <sinf+0x130>
d005b9ae:	ec41 0b17 	vmov	d7, r0, r1
d005b9b2:	f003 0103 	and.w	r1, r3, #3
d005b9b6:	eb02 01c1 	add.w	r1, r2, r1, lsl #3
d005b9ba:	ee27 0b00 	vmul.f64	d0, d7, d0
d005b9be:	ed91 7b00 	vldr	d7, [r1]
d005b9c2:	ee20 1b00 	vmul.f64	d1, d0, d0
d005b9c6:	f013 0f02 	tst.w	r3, #2
d005b9ca:	f102 0070 	add.w	r0, r2, #112	; 0x70
d005b9ce:	4629      	mov	r1, r5
d005b9d0:	bf08      	it	eq
d005b9d2:	4610      	moveq	r0, r2
d005b9d4:	ee27 0b00 	vmul.f64	d0, d7, d0
d005b9d8:	e790      	b.n	d005b8fc <sinf+0x44>
d005b9da:	b003      	add	sp, #12
d005b9dc:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
d005b9e0:	f7ff be52 	b.w	d005b688 <__math_invalidf>
d005b9e4:	f3af 8000 	nop.w
d005b9e8:	54442d18 	.word	0x54442d18
d005b9ec:	3c1921fb 	.word	0x3c1921fb
d005b9f0:	d005c860 	.word	0xd005c860
d005b9f4:	d005c800 	.word	0xd005c800

d005b9f8 <atan2f>:
d005b9f8:	f000 b800 	b.w	d005b9fc <__ieee754_atan2f>

d005b9fc <__ieee754_atan2f>:
d005b9fc:	ee10 2a90 	vmov	r2, s1
d005ba00:	f022 4100 	bic.w	r1, r2, #2147483648	; 0x80000000
d005ba04:	f1b1 4fff 	cmp.w	r1, #2139095040	; 0x7f800000
d005ba08:	b510      	push	{r4, lr}
d005ba0a:	eef0 7a40 	vmov.f32	s15, s0
d005ba0e:	dc06      	bgt.n	d005ba1e <__ieee754_atan2f+0x22>
d005ba10:	ee10 0a10 	vmov	r0, s0
d005ba14:	f020 4300 	bic.w	r3, r0, #2147483648	; 0x80000000
d005ba18:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d005ba1c:	dd04      	ble.n	d005ba28 <__ieee754_atan2f+0x2c>
d005ba1e:	ee77 7aa0 	vadd.f32	s15, s15, s1
d005ba22:	eeb0 0a67 	vmov.f32	s0, s15
d005ba26:	bd10      	pop	{r4, pc}
d005ba28:	f1b2 5f7e 	cmp.w	r2, #1065353216	; 0x3f800000
d005ba2c:	d103      	bne.n	d005ba36 <__ieee754_atan2f+0x3a>
d005ba2e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
d005ba32:	f000 b881 	b.w	d005bb38 <atanf>
d005ba36:	1794      	asrs	r4, r2, #30
d005ba38:	f004 0402 	and.w	r4, r4, #2
d005ba3c:	ea44 74d0 	orr.w	r4, r4, r0, lsr #31
d005ba40:	b93b      	cbnz	r3, d005ba52 <__ieee754_atan2f+0x56>
d005ba42:	2c02      	cmp	r4, #2
d005ba44:	d05c      	beq.n	d005bb00 <__ieee754_atan2f+0x104>
d005ba46:	ed9f 7a33 	vldr	s14, [pc, #204]	; d005bb14 <__ieee754_atan2f+0x118>
d005ba4a:	2c03      	cmp	r4, #3
d005ba4c:	fe47 7a00 	vseleq.f32	s15, s14, s0
d005ba50:	e7e7      	b.n	d005ba22 <__ieee754_atan2f+0x26>
d005ba52:	b939      	cbnz	r1, d005ba64 <__ieee754_atan2f+0x68>
d005ba54:	eddf 7a30 	vldr	s15, [pc, #192]	; d005bb18 <__ieee754_atan2f+0x11c>
d005ba58:	ed9f 0a30 	vldr	s0, [pc, #192]	; d005bb1c <__ieee754_atan2f+0x120>
d005ba5c:	2800      	cmp	r0, #0
d005ba5e:	fe67 7a80 	vselge.f32	s15, s15, s0
d005ba62:	e7de      	b.n	d005ba22 <__ieee754_atan2f+0x26>
d005ba64:	f1b1 4fff 	cmp.w	r1, #2139095040	; 0x7f800000
d005ba68:	d110      	bne.n	d005ba8c <__ieee754_atan2f+0x90>
d005ba6a:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d005ba6e:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
d005ba72:	d107      	bne.n	d005ba84 <__ieee754_atan2f+0x88>
d005ba74:	2c02      	cmp	r4, #2
d005ba76:	d846      	bhi.n	d005bb06 <__ieee754_atan2f+0x10a>
d005ba78:	4b29      	ldr	r3, [pc, #164]	; (d005bb20 <__ieee754_atan2f+0x124>)
d005ba7a:	eb03 0484 	add.w	r4, r3, r4, lsl #2
d005ba7e:	edd4 7a00 	vldr	s15, [r4]
d005ba82:	e7ce      	b.n	d005ba22 <__ieee754_atan2f+0x26>
d005ba84:	2c02      	cmp	r4, #2
d005ba86:	d841      	bhi.n	d005bb0c <__ieee754_atan2f+0x110>
d005ba88:	4b26      	ldr	r3, [pc, #152]	; (d005bb24 <__ieee754_atan2f+0x128>)
d005ba8a:	e7f6      	b.n	d005ba7a <__ieee754_atan2f+0x7e>
d005ba8c:	f1b3 4fff 	cmp.w	r3, #2139095040	; 0x7f800000
d005ba90:	d0e0      	beq.n	d005ba54 <__ieee754_atan2f+0x58>
d005ba92:	1a5b      	subs	r3, r3, r1
d005ba94:	f1b3 5ff4 	cmp.w	r3, #511705088	; 0x1e800000
d005ba98:	ea4f 51e3 	mov.w	r1, r3, asr #23
d005ba9c:	da1a      	bge.n	d005bad4 <__ieee754_atan2f+0xd8>
d005ba9e:	2a00      	cmp	r2, #0
d005baa0:	da01      	bge.n	d005baa6 <__ieee754_atan2f+0xaa>
d005baa2:	313c      	adds	r1, #60	; 0x3c
d005baa4:	db19      	blt.n	d005bada <__ieee754_atan2f+0xde>
d005baa6:	ee87 0aa0 	vdiv.f32	s0, s15, s1
d005baaa:	f000 f919 	bl	d005bce0 <fabsf>
d005baae:	f000 f843 	bl	d005bb38 <atanf>
d005bab2:	eef0 7a40 	vmov.f32	s15, s0
d005bab6:	2c01      	cmp	r4, #1
d005bab8:	d012      	beq.n	d005bae0 <__ieee754_atan2f+0xe4>
d005baba:	2c02      	cmp	r4, #2
d005babc:	d017      	beq.n	d005baee <__ieee754_atan2f+0xf2>
d005babe:	2c00      	cmp	r4, #0
d005bac0:	d0af      	beq.n	d005ba22 <__ieee754_atan2f+0x26>
d005bac2:	ed9f 0a19 	vldr	s0, [pc, #100]	; d005bb28 <__ieee754_atan2f+0x12c>
d005bac6:	ee77 7a80 	vadd.f32	s15, s15, s0
d005baca:	ed9f 0a18 	vldr	s0, [pc, #96]	; d005bb2c <__ieee754_atan2f+0x130>
d005bace:	ee77 7ac0 	vsub.f32	s15, s15, s0
d005bad2:	e7a6      	b.n	d005ba22 <__ieee754_atan2f+0x26>
d005bad4:	eddf 7a10 	vldr	s15, [pc, #64]	; d005bb18 <__ieee754_atan2f+0x11c>
d005bad8:	e7ed      	b.n	d005bab6 <__ieee754_atan2f+0xba>
d005bada:	eddf 7a15 	vldr	s15, [pc, #84]	; d005bb30 <__ieee754_atan2f+0x134>
d005bade:	e7ea      	b.n	d005bab6 <__ieee754_atan2f+0xba>
d005bae0:	ee17 3a90 	vmov	r3, s15
d005bae4:	f103 4300 	add.w	r3, r3, #2147483648	; 0x80000000
d005bae8:	ee07 3a90 	vmov	s15, r3
d005baec:	e799      	b.n	d005ba22 <__ieee754_atan2f+0x26>
d005baee:	ed9f 0a0e 	vldr	s0, [pc, #56]	; d005bb28 <__ieee754_atan2f+0x12c>
d005baf2:	ee77 7a80 	vadd.f32	s15, s15, s0
d005baf6:	ed9f 0a0d 	vldr	s0, [pc, #52]	; d005bb2c <__ieee754_atan2f+0x130>
d005bafa:	ee70 7a67 	vsub.f32	s15, s0, s15
d005bafe:	e790      	b.n	d005ba22 <__ieee754_atan2f+0x26>
d005bb00:	eddf 7a0a 	vldr	s15, [pc, #40]	; d005bb2c <__ieee754_atan2f+0x130>
d005bb04:	e78d      	b.n	d005ba22 <__ieee754_atan2f+0x26>
d005bb06:	eddf 7a0b 	vldr	s15, [pc, #44]	; d005bb34 <__ieee754_atan2f+0x138>
d005bb0a:	e78a      	b.n	d005ba22 <__ieee754_atan2f+0x26>
d005bb0c:	eddf 7a08 	vldr	s15, [pc, #32]	; d005bb30 <__ieee754_atan2f+0x134>
d005bb10:	e787      	b.n	d005ba22 <__ieee754_atan2f+0x26>
d005bb12:	bf00      	nop
d005bb14:	c0490fdb 	.word	0xc0490fdb
d005bb18:	3fc90fdb 	.word	0x3fc90fdb
d005bb1c:	bfc90fdb 	.word	0xbfc90fdb
d005bb20:	d005c940 	.word	0xd005c940
d005bb24:	d005c94c 	.word	0xd005c94c
d005bb28:	33bbbd2e 	.word	0x33bbbd2e
d005bb2c:	40490fdb 	.word	0x40490fdb
d005bb30:	00000000 	.word	0x00000000
d005bb34:	3f490fdb 	.word	0x3f490fdb

d005bb38 <atanf>:
d005bb38:	b538      	push	{r3, r4, r5, lr}
d005bb3a:	ee10 5a10 	vmov	r5, s0
d005bb3e:	f025 4400 	bic.w	r4, r5, #2147483648	; 0x80000000
d005bb42:	f1b4 4fa1 	cmp.w	r4, #1350565888	; 0x50800000
d005bb46:	eef0 7a40 	vmov.f32	s15, s0
d005bb4a:	db0f      	blt.n	d005bb6c <atanf+0x34>
d005bb4c:	f1b4 4fff 	cmp.w	r4, #2139095040	; 0x7f800000
d005bb50:	dd04      	ble.n	d005bb5c <atanf+0x24>
d005bb52:	ee70 7a00 	vadd.f32	s15, s0, s0
d005bb56:	eeb0 0a67 	vmov.f32	s0, s15
d005bb5a:	bd38      	pop	{r3, r4, r5, pc}
d005bb5c:	eddf 7a4d 	vldr	s15, [pc, #308]	; d005bc94 <atanf+0x15c>
d005bb60:	ed9f 0a4d 	vldr	s0, [pc, #308]	; d005bc98 <atanf+0x160>
d005bb64:	2d00      	cmp	r5, #0
d005bb66:	fe77 7a80 	vselgt.f32	s15, s15, s0
d005bb6a:	e7f4      	b.n	d005bb56 <atanf+0x1e>
d005bb6c:	4b4b      	ldr	r3, [pc, #300]	; (d005bc9c <atanf+0x164>)
d005bb6e:	429c      	cmp	r4, r3
d005bb70:	dc10      	bgt.n	d005bb94 <atanf+0x5c>
d005bb72:	f1b4 5f44 	cmp.w	r4, #822083584	; 0x31000000
d005bb76:	da0a      	bge.n	d005bb8e <atanf+0x56>
d005bb78:	ed9f 7a49 	vldr	s14, [pc, #292]	; d005bca0 <atanf+0x168>
d005bb7c:	ee30 7a07 	vadd.f32	s14, s0, s14
d005bb80:	eef7 6a00 	vmov.f32	s13, #112	; 0x3f800000  1.0
d005bb84:	eeb4 7ae6 	vcmpe.f32	s14, s13
d005bb88:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
d005bb8c:	dce3      	bgt.n	d005bb56 <atanf+0x1e>
d005bb8e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
d005bb92:	e013      	b.n	d005bbbc <atanf+0x84>
d005bb94:	f000 f8a4 	bl	d005bce0 <fabsf>
d005bb98:	4b42      	ldr	r3, [pc, #264]	; (d005bca4 <atanf+0x16c>)
d005bb9a:	429c      	cmp	r4, r3
d005bb9c:	dc4f      	bgt.n	d005bc3e <atanf+0x106>
d005bb9e:	f5a3 03d0 	sub.w	r3, r3, #6815744	; 0x680000
d005bba2:	429c      	cmp	r4, r3
d005bba4:	dc41      	bgt.n	d005bc2a <atanf+0xf2>
d005bba6:	eef0 7a00 	vmov.f32	s15, #0	; 0x40000000  2.0
d005bbaa:	eebf 7a00 	vmov.f32	s14, #240	; 0xbf800000 -1.0
d005bbae:	eea0 7a27 	vfma.f32	s14, s0, s15
d005bbb2:	2300      	movs	r3, #0
d005bbb4:	ee30 0a27 	vadd.f32	s0, s0, s15
d005bbb8:	eec7 7a00 	vdiv.f32	s15, s14, s0
d005bbbc:	1c5a      	adds	r2, r3, #1
d005bbbe:	ee67 6aa7 	vmul.f32	s13, s15, s15
d005bbc2:	eddf 5a39 	vldr	s11, [pc, #228]	; d005bca8 <atanf+0x170>
d005bbc6:	ed9f 6a39 	vldr	s12, [pc, #228]	; d005bcac <atanf+0x174>
d005bbca:	ed9f 5a39 	vldr	s10, [pc, #228]	; d005bcb0 <atanf+0x178>
d005bbce:	ed9f 0a39 	vldr	s0, [pc, #228]	; d005bcb4 <atanf+0x17c>
d005bbd2:	ee26 7aa6 	vmul.f32	s14, s13, s13
d005bbd6:	eea7 6a25 	vfma.f32	s12, s14, s11
d005bbda:	eddf 5a37 	vldr	s11, [pc, #220]	; d005bcb8 <atanf+0x180>
d005bbde:	eee6 5a07 	vfma.f32	s11, s12, s14
d005bbe2:	ed9f 6a36 	vldr	s12, [pc, #216]	; d005bcbc <atanf+0x184>
d005bbe6:	eea5 6a87 	vfma.f32	s12, s11, s14
d005bbea:	eddf 5a35 	vldr	s11, [pc, #212]	; d005bcc0 <atanf+0x188>
d005bbee:	eee6 5a07 	vfma.f32	s11, s12, s14
d005bbf2:	ed9f 6a34 	vldr	s12, [pc, #208]	; d005bcc4 <atanf+0x18c>
d005bbf6:	eea5 6a87 	vfma.f32	s12, s11, s14
d005bbfa:	eddf 5a33 	vldr	s11, [pc, #204]	; d005bcc8 <atanf+0x190>
d005bbfe:	eee7 5a05 	vfma.f32	s11, s14, s10
d005bc02:	ed9f 5a32 	vldr	s10, [pc, #200]	; d005bccc <atanf+0x194>
d005bc06:	eea5 5a87 	vfma.f32	s10, s11, s14
d005bc0a:	eddf 5a31 	vldr	s11, [pc, #196]	; d005bcd0 <atanf+0x198>
d005bc0e:	eee5 5a07 	vfma.f32	s11, s10, s14
d005bc12:	eea5 0a87 	vfma.f32	s0, s11, s14
d005bc16:	ee20 0a07 	vmul.f32	s0, s0, s14
d005bc1a:	eea6 0a26 	vfma.f32	s0, s12, s13
d005bc1e:	ee27 0a80 	vmul.f32	s0, s15, s0
d005bc22:	d121      	bne.n	d005bc68 <atanf+0x130>
d005bc24:	ee77 7ac0 	vsub.f32	s15, s15, s0
d005bc28:	e795      	b.n	d005bb56 <atanf+0x1e>
d005bc2a:	eef7 7a00 	vmov.f32	s15, #112	; 0x3f800000  1.0
d005bc2e:	ee30 7a67 	vsub.f32	s14, s0, s15
d005bc32:	ee30 0a27 	vadd.f32	s0, s0, s15
d005bc36:	2301      	movs	r3, #1
d005bc38:	eec7 7a00 	vdiv.f32	s15, s14, s0
d005bc3c:	e7be      	b.n	d005bbbc <atanf+0x84>
d005bc3e:	4b25      	ldr	r3, [pc, #148]	; (d005bcd4 <atanf+0x19c>)
d005bc40:	429c      	cmp	r4, r3
d005bc42:	dc0b      	bgt.n	d005bc5c <atanf+0x124>
d005bc44:	eef7 7a08 	vmov.f32	s15, #120	; 0x3fc00000  1.5
d005bc48:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
d005bc4c:	eea0 7a27 	vfma.f32	s14, s0, s15
d005bc50:	2302      	movs	r3, #2
d005bc52:	ee70 6a67 	vsub.f32	s13, s0, s15
d005bc56:	eec6 7a87 	vdiv.f32	s15, s13, s14
d005bc5a:	e7af      	b.n	d005bbbc <atanf+0x84>
d005bc5c:	eebf 7a00 	vmov.f32	s14, #240	; 0xbf800000 -1.0
d005bc60:	eec7 7a00 	vdiv.f32	s15, s14, s0
d005bc64:	2303      	movs	r3, #3
d005bc66:	e7a9      	b.n	d005bbbc <atanf+0x84>
d005bc68:	4a1b      	ldr	r2, [pc, #108]	; (d005bcd8 <atanf+0x1a0>)
d005bc6a:	491c      	ldr	r1, [pc, #112]	; (d005bcdc <atanf+0x1a4>)
d005bc6c:	eb02 0283 	add.w	r2, r2, r3, lsl #2
d005bc70:	eb01 0383 	add.w	r3, r1, r3, lsl #2
d005bc74:	ed93 7a00 	vldr	s14, [r3]
d005bc78:	ee30 0a47 	vsub.f32	s0, s0, s14
d005bc7c:	2d00      	cmp	r5, #0
d005bc7e:	ee70 7a67 	vsub.f32	s15, s0, s15
d005bc82:	ed92 0a00 	vldr	s0, [r2]
d005bc86:	ee70 7a67 	vsub.f32	s15, s0, s15
d005bc8a:	bfb8      	it	lt
d005bc8c:	eef1 7a67 	vneglt.f32	s15, s15
d005bc90:	e761      	b.n	d005bb56 <atanf+0x1e>
d005bc92:	bf00      	nop
d005bc94:	3fc90fdb 	.word	0x3fc90fdb
d005bc98:	bfc90fdb 	.word	0xbfc90fdb
d005bc9c:	3edfffff 	.word	0x3edfffff
d005bca0:	7149f2ca 	.word	0x7149f2ca
d005bca4:	3f97ffff 	.word	0x3f97ffff
d005bca8:	3c8569d7 	.word	0x3c8569d7
d005bcac:	3d4bda59 	.word	0x3d4bda59
d005bcb0:	bd15a221 	.word	0xbd15a221
d005bcb4:	be4ccccd 	.word	0xbe4ccccd
d005bcb8:	3d886b35 	.word	0x3d886b35
d005bcbc:	3dba2e6e 	.word	0x3dba2e6e
d005bcc0:	3e124925 	.word	0x3e124925
d005bcc4:	3eaaaaab 	.word	0x3eaaaaab
d005bcc8:	bd6ef16b 	.word	0xbd6ef16b
d005bccc:	bd9d8795 	.word	0xbd9d8795
d005bcd0:	bde38e38 	.word	0xbde38e38
d005bcd4:	401bffff 	.word	0x401bffff
d005bcd8:	d005c958 	.word	0xd005c958
d005bcdc:	d005c968 	.word	0xd005c968

d005bce0 <fabsf>:
d005bce0:	ee10 3a10 	vmov	r3, s0
d005bce4:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
d005bce8:	ee00 3a10 	vmov	s0, r3
d005bcec:	4770      	bx	lr
	...

d005bcf0 <__aeabi_drsub>:
d005bcf0:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
d005bcf4:	e002      	b.n	d005bcfc <__adddf3>
d005bcf6:	bf00      	nop

d005bcf8 <__aeabi_dsub>:
d005bcf8:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

d005bcfc <__adddf3>:
d005bcfc:	b530      	push	{r4, r5, lr}
d005bcfe:	ea4f 0441 	mov.w	r4, r1, lsl #1
d005bd02:	ea4f 0543 	mov.w	r5, r3, lsl #1
d005bd06:	ea94 0f05 	teq	r4, r5
d005bd0a:	bf08      	it	eq
d005bd0c:	ea90 0f02 	teqeq	r0, r2
d005bd10:	bf1f      	itttt	ne
d005bd12:	ea54 0c00 	orrsne.w	ip, r4, r0
d005bd16:	ea55 0c02 	orrsne.w	ip, r5, r2
d005bd1a:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
d005bd1e:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d005bd22:	f000 80e2 	beq.w	d005beea <__adddf3+0x1ee>
d005bd26:	ea4f 5454 	mov.w	r4, r4, lsr #21
d005bd2a:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
d005bd2e:	bfb8      	it	lt
d005bd30:	426d      	neglt	r5, r5
d005bd32:	dd0c      	ble.n	d005bd4e <__adddf3+0x52>
d005bd34:	442c      	add	r4, r5
d005bd36:	ea80 0202 	eor.w	r2, r0, r2
d005bd3a:	ea81 0303 	eor.w	r3, r1, r3
d005bd3e:	ea82 0000 	eor.w	r0, r2, r0
d005bd42:	ea83 0101 	eor.w	r1, r3, r1
d005bd46:	ea80 0202 	eor.w	r2, r0, r2
d005bd4a:	ea81 0303 	eor.w	r3, r1, r3
d005bd4e:	2d36      	cmp	r5, #54	; 0x36
d005bd50:	bf88      	it	hi
d005bd52:	bd30      	pophi	{r4, r5, pc}
d005bd54:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
d005bd58:	ea4f 3101 	mov.w	r1, r1, lsl #12
d005bd5c:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
d005bd60:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
d005bd64:	d002      	beq.n	d005bd6c <__adddf3+0x70>
d005bd66:	4240      	negs	r0, r0
d005bd68:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d005bd6c:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
d005bd70:	ea4f 3303 	mov.w	r3, r3, lsl #12
d005bd74:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
d005bd78:	d002      	beq.n	d005bd80 <__adddf3+0x84>
d005bd7a:	4252      	negs	r2, r2
d005bd7c:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
d005bd80:	ea94 0f05 	teq	r4, r5
d005bd84:	f000 80a7 	beq.w	d005bed6 <__adddf3+0x1da>
d005bd88:	f1a4 0401 	sub.w	r4, r4, #1
d005bd8c:	f1d5 0e20 	rsbs	lr, r5, #32
d005bd90:	db0d      	blt.n	d005bdae <__adddf3+0xb2>
d005bd92:	fa02 fc0e 	lsl.w	ip, r2, lr
d005bd96:	fa22 f205 	lsr.w	r2, r2, r5
d005bd9a:	1880      	adds	r0, r0, r2
d005bd9c:	f141 0100 	adc.w	r1, r1, #0
d005bda0:	fa03 f20e 	lsl.w	r2, r3, lr
d005bda4:	1880      	adds	r0, r0, r2
d005bda6:	fa43 f305 	asr.w	r3, r3, r5
d005bdaa:	4159      	adcs	r1, r3
d005bdac:	e00e      	b.n	d005bdcc <__adddf3+0xd0>
d005bdae:	f1a5 0520 	sub.w	r5, r5, #32
d005bdb2:	f10e 0e20 	add.w	lr, lr, #32
d005bdb6:	2a01      	cmp	r2, #1
d005bdb8:	fa03 fc0e 	lsl.w	ip, r3, lr
d005bdbc:	bf28      	it	cs
d005bdbe:	f04c 0c02 	orrcs.w	ip, ip, #2
d005bdc2:	fa43 f305 	asr.w	r3, r3, r5
d005bdc6:	18c0      	adds	r0, r0, r3
d005bdc8:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
d005bdcc:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d005bdd0:	d507      	bpl.n	d005bde2 <__adddf3+0xe6>
d005bdd2:	f04f 0e00 	mov.w	lr, #0
d005bdd6:	f1dc 0c00 	rsbs	ip, ip, #0
d005bdda:	eb7e 0000 	sbcs.w	r0, lr, r0
d005bdde:	eb6e 0101 	sbc.w	r1, lr, r1
d005bde2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
d005bde6:	d31b      	bcc.n	d005be20 <__adddf3+0x124>
d005bde8:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
d005bdec:	d30c      	bcc.n	d005be08 <__adddf3+0x10c>
d005bdee:	0849      	lsrs	r1, r1, #1
d005bdf0:	ea5f 0030 	movs.w	r0, r0, rrx
d005bdf4:	ea4f 0c3c 	mov.w	ip, ip, rrx
d005bdf8:	f104 0401 	add.w	r4, r4, #1
d005bdfc:	ea4f 5244 	mov.w	r2, r4, lsl #21
d005be00:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
d005be04:	f080 809a 	bcs.w	d005bf3c <__adddf3+0x240>
d005be08:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
d005be0c:	bf08      	it	eq
d005be0e:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
d005be12:	f150 0000 	adcs.w	r0, r0, #0
d005be16:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
d005be1a:	ea41 0105 	orr.w	r1, r1, r5
d005be1e:	bd30      	pop	{r4, r5, pc}
d005be20:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
d005be24:	4140      	adcs	r0, r0
d005be26:	eb41 0101 	adc.w	r1, r1, r1
d005be2a:	3c01      	subs	r4, #1
d005be2c:	bf28      	it	cs
d005be2e:	f5b1 1f80 	cmpcs.w	r1, #1048576	; 0x100000
d005be32:	d2e9      	bcs.n	d005be08 <__adddf3+0x10c>
d005be34:	f091 0f00 	teq	r1, #0
d005be38:	bf04      	itt	eq
d005be3a:	4601      	moveq	r1, r0
d005be3c:	2000      	moveq	r0, #0
d005be3e:	fab1 f381 	clz	r3, r1
d005be42:	bf08      	it	eq
d005be44:	3320      	addeq	r3, #32
d005be46:	f1a3 030b 	sub.w	r3, r3, #11
d005be4a:	f1b3 0220 	subs.w	r2, r3, #32
d005be4e:	da0c      	bge.n	d005be6a <__adddf3+0x16e>
d005be50:	320c      	adds	r2, #12
d005be52:	dd08      	ble.n	d005be66 <__adddf3+0x16a>
d005be54:	f102 0c14 	add.w	ip, r2, #20
d005be58:	f1c2 020c 	rsb	r2, r2, #12
d005be5c:	fa01 f00c 	lsl.w	r0, r1, ip
d005be60:	fa21 f102 	lsr.w	r1, r1, r2
d005be64:	e00c      	b.n	d005be80 <__adddf3+0x184>
d005be66:	f102 0214 	add.w	r2, r2, #20
d005be6a:	bfd8      	it	le
d005be6c:	f1c2 0c20 	rsble	ip, r2, #32
d005be70:	fa01 f102 	lsl.w	r1, r1, r2
d005be74:	fa20 fc0c 	lsr.w	ip, r0, ip
d005be78:	bfdc      	itt	le
d005be7a:	ea41 010c 	orrle.w	r1, r1, ip
d005be7e:	4090      	lslle	r0, r2
d005be80:	1ae4      	subs	r4, r4, r3
d005be82:	bfa2      	ittt	ge
d005be84:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
d005be88:	4329      	orrge	r1, r5
d005be8a:	bd30      	popge	{r4, r5, pc}
d005be8c:	ea6f 0404 	mvn.w	r4, r4
d005be90:	3c1f      	subs	r4, #31
d005be92:	da1c      	bge.n	d005bece <__adddf3+0x1d2>
d005be94:	340c      	adds	r4, #12
d005be96:	dc0e      	bgt.n	d005beb6 <__adddf3+0x1ba>
d005be98:	f104 0414 	add.w	r4, r4, #20
d005be9c:	f1c4 0220 	rsb	r2, r4, #32
d005bea0:	fa20 f004 	lsr.w	r0, r0, r4
d005bea4:	fa01 f302 	lsl.w	r3, r1, r2
d005bea8:	ea40 0003 	orr.w	r0, r0, r3
d005beac:	fa21 f304 	lsr.w	r3, r1, r4
d005beb0:	ea45 0103 	orr.w	r1, r5, r3
d005beb4:	bd30      	pop	{r4, r5, pc}
d005beb6:	f1c4 040c 	rsb	r4, r4, #12
d005beba:	f1c4 0220 	rsb	r2, r4, #32
d005bebe:	fa20 f002 	lsr.w	r0, r0, r2
d005bec2:	fa01 f304 	lsl.w	r3, r1, r4
d005bec6:	ea40 0003 	orr.w	r0, r0, r3
d005beca:	4629      	mov	r1, r5
d005becc:	bd30      	pop	{r4, r5, pc}
d005bece:	fa21 f004 	lsr.w	r0, r1, r4
d005bed2:	4629      	mov	r1, r5
d005bed4:	bd30      	pop	{r4, r5, pc}
d005bed6:	f094 0f00 	teq	r4, #0
d005beda:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
d005bede:	bf06      	itte	eq
d005bee0:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
d005bee4:	3401      	addeq	r4, #1
d005bee6:	3d01      	subne	r5, #1
d005bee8:	e74e      	b.n	d005bd88 <__adddf3+0x8c>
d005beea:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d005beee:	bf18      	it	ne
d005bef0:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
d005bef4:	d029      	beq.n	d005bf4a <__adddf3+0x24e>
d005bef6:	ea94 0f05 	teq	r4, r5
d005befa:	bf08      	it	eq
d005befc:	ea90 0f02 	teqeq	r0, r2
d005bf00:	d005      	beq.n	d005bf0e <__adddf3+0x212>
d005bf02:	ea54 0c00 	orrs.w	ip, r4, r0
d005bf06:	bf04      	itt	eq
d005bf08:	4619      	moveq	r1, r3
d005bf0a:	4610      	moveq	r0, r2
d005bf0c:	bd30      	pop	{r4, r5, pc}
d005bf0e:	ea91 0f03 	teq	r1, r3
d005bf12:	bf1e      	ittt	ne
d005bf14:	2100      	movne	r1, #0
d005bf16:	2000      	movne	r0, #0
d005bf18:	bd30      	popne	{r4, r5, pc}
d005bf1a:	ea5f 5c54 	movs.w	ip, r4, lsr #21
d005bf1e:	d105      	bne.n	d005bf2c <__adddf3+0x230>
d005bf20:	0040      	lsls	r0, r0, #1
d005bf22:	4149      	adcs	r1, r1
d005bf24:	bf28      	it	cs
d005bf26:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
d005bf2a:	bd30      	pop	{r4, r5, pc}
d005bf2c:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
d005bf30:	bf3c      	itt	cc
d005bf32:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
d005bf36:	bd30      	popcc	{r4, r5, pc}
d005bf38:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d005bf3c:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
d005bf40:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
d005bf44:	f04f 0000 	mov.w	r0, #0
d005bf48:	bd30      	pop	{r4, r5, pc}
d005bf4a:	ea7f 5c64 	mvns.w	ip, r4, asr #21
d005bf4e:	bf1a      	itte	ne
d005bf50:	4619      	movne	r1, r3
d005bf52:	4610      	movne	r0, r2
d005bf54:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
d005bf58:	bf1c      	itt	ne
d005bf5a:	460b      	movne	r3, r1
d005bf5c:	4602      	movne	r2, r0
d005bf5e:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
d005bf62:	bf06      	itte	eq
d005bf64:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
d005bf68:	ea91 0f03 	teqeq	r1, r3
d005bf6c:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
d005bf70:	bd30      	pop	{r4, r5, pc}
d005bf72:	bf00      	nop

d005bf74 <__aeabi_ui2d>:
d005bf74:	f090 0f00 	teq	r0, #0
d005bf78:	bf04      	itt	eq
d005bf7a:	2100      	moveq	r1, #0
d005bf7c:	4770      	bxeq	lr
d005bf7e:	b530      	push	{r4, r5, lr}
d005bf80:	f44f 6480 	mov.w	r4, #1024	; 0x400
d005bf84:	f104 0432 	add.w	r4, r4, #50	; 0x32
d005bf88:	f04f 0500 	mov.w	r5, #0
d005bf8c:	f04f 0100 	mov.w	r1, #0
d005bf90:	e750      	b.n	d005be34 <__adddf3+0x138>
d005bf92:	bf00      	nop

d005bf94 <__aeabi_i2d>:
d005bf94:	f090 0f00 	teq	r0, #0
d005bf98:	bf04      	itt	eq
d005bf9a:	2100      	moveq	r1, #0
d005bf9c:	4770      	bxeq	lr
d005bf9e:	b530      	push	{r4, r5, lr}
d005bfa0:	f44f 6480 	mov.w	r4, #1024	; 0x400
d005bfa4:	f104 0432 	add.w	r4, r4, #50	; 0x32
d005bfa8:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
d005bfac:	bf48      	it	mi
d005bfae:	4240      	negmi	r0, r0
d005bfb0:	f04f 0100 	mov.w	r1, #0
d005bfb4:	e73e      	b.n	d005be34 <__adddf3+0x138>
d005bfb6:	bf00      	nop

d005bfb8 <__aeabi_f2d>:
d005bfb8:	0042      	lsls	r2, r0, #1
d005bfba:	ea4f 01e2 	mov.w	r1, r2, asr #3
d005bfbe:	ea4f 0131 	mov.w	r1, r1, rrx
d005bfc2:	ea4f 7002 	mov.w	r0, r2, lsl #28
d005bfc6:	bf1f      	itttt	ne
d005bfc8:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
d005bfcc:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
d005bfd0:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
d005bfd4:	4770      	bxne	lr
d005bfd6:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
d005bfda:	bf08      	it	eq
d005bfdc:	4770      	bxeq	lr
d005bfde:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
d005bfe2:	bf04      	itt	eq
d005bfe4:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
d005bfe8:	4770      	bxeq	lr
d005bfea:	b530      	push	{r4, r5, lr}
d005bfec:	f44f 7460 	mov.w	r4, #896	; 0x380
d005bff0:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
d005bff4:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
d005bff8:	e71c      	b.n	d005be34 <__adddf3+0x138>
d005bffa:	bf00      	nop

d005bffc <__aeabi_ul2d>:
d005bffc:	ea50 0201 	orrs.w	r2, r0, r1
d005c000:	bf08      	it	eq
d005c002:	4770      	bxeq	lr
d005c004:	b530      	push	{r4, r5, lr}
d005c006:	f04f 0500 	mov.w	r5, #0
d005c00a:	e00a      	b.n	d005c022 <__aeabi_l2d+0x16>

d005c00c <__aeabi_l2d>:
d005c00c:	ea50 0201 	orrs.w	r2, r0, r1
d005c010:	bf08      	it	eq
d005c012:	4770      	bxeq	lr
d005c014:	b530      	push	{r4, r5, lr}
d005c016:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
d005c01a:	d502      	bpl.n	d005c022 <__aeabi_l2d+0x16>
d005c01c:	4240      	negs	r0, r0
d005c01e:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
d005c022:	f44f 6480 	mov.w	r4, #1024	; 0x400
d005c026:	f104 0432 	add.w	r4, r4, #50	; 0x32
d005c02a:	ea5f 5c91 	movs.w	ip, r1, lsr #22
d005c02e:	f43f aed8 	beq.w	d005bde2 <__adddf3+0xe6>
d005c032:	f04f 0203 	mov.w	r2, #3
d005c036:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d005c03a:	bf18      	it	ne
d005c03c:	3203      	addne	r2, #3
d005c03e:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
d005c042:	bf18      	it	ne
d005c044:	3203      	addne	r2, #3
d005c046:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
d005c04a:	f1c2 0320 	rsb	r3, r2, #32
d005c04e:	fa00 fc03 	lsl.w	ip, r0, r3
d005c052:	fa20 f002 	lsr.w	r0, r0, r2
d005c056:	fa01 fe03 	lsl.w	lr, r1, r3
d005c05a:	ea40 000e 	orr.w	r0, r0, lr
d005c05e:	fa21 f102 	lsr.w	r1, r1, r2
d005c062:	4414      	add	r4, r2
d005c064:	e6bd      	b.n	d005bde2 <__adddf3+0xe6>
d005c066:	bf00      	nop
d005c068:	46464952 	.word	0x46464952
d005c06c:	00000000 	.word	0x00000000
d005c070:	45564157 	.word	0x45564157
d005c074:	00000000 	.word	0x00000000
d005c078:	6d6f6f62 	.word	0x6d6f6f62
d005c07c:	6f6d2e64 	.word	0x6f6d2e64
d005c080:	00000064 	.word	0x00000064
d005c084:	6e756874 	.word	0x6e756874
d005c088:	31726564 	.word	0x31726564
d005c08c:	7661772e 	.word	0x7661772e
d005c090:	00000000 	.word	0x00000000
d005c094:	6e756874 	.word	0x6e756874
d005c098:	32726564 	.word	0x32726564
d005c09c:	7661772e 	.word	0x7661772e
d005c0a0:	00000000 	.word	0x00000000
d005c0a4:	72727574 	.word	0x72727574
d005c0a8:	2e317465 	.word	0x2e317465
d005c0ac:	64336273 	.word	0x64336273
d005c0b0:	00000000 	.word	0x00000000
d005c0b4:	616c7369 	.word	0x616c7369
d005c0b8:	2e78646e 	.word	0x2e78646e
d005c0bc:	64336273 	.word	0x64336273
d005c0c0:	00000000 	.word	0x00000000
d005c0c4:	72726163 	.word	0x72726163
d005c0c8:	2e726569 	.word	0x2e726569
d005c0cc:	64336273 	.word	0x64336273
d005c0d0:	00000000 	.word	0x00000000
d005c0d4:	70696873 	.word	0x70696873
d005c0d8:	732e3176 	.word	0x732e3176
d005c0dc:	00643362 	.word	0x00643362
d005c0e0:	74786574 	.word	0x74786574
d005c0e4:	3362732e 	.word	0x3362732e
d005c0e8:	00000064 	.word	0x00000064
d005c0ec:	3a535046 	.word	0x3a535046
d005c0f0:	2e756c25 	.word	0x2e756c25
d005c0f4:	6c323025 	.word	0x6c323025
d005c0f8:	4d202075 	.word	0x4d202075
d005c0fc:	33253a53 	.word	0x33253a53
d005c100:	252e756c 	.word	0x252e756c
d005c104:	756c3330 	.word	0x756c3330
d005c108:	50572020 	.word	0x50572020
d005c10c:	7532253a 	.word	0x7532253a
d005c110:	52542020 	.word	0x52542020
d005c114:	253a5349 	.word	0x253a5349
d005c118:	0000756c 	.word	0x0000756c
d005c11c:	ff5516e3 	.word	0xff5516e3
d005c120:	ffffffff 	.word	0xffffffff
d005c124:	ffff0000 	.word	0xffff0000
d005c128:	ff00ff00 	.word	0xff00ff00
d005c12c:	ff0000ff 	.word	0xff0000ff
d005c130:	ffffff00 	.word	0xffffff00
d005c134:	ffff00ff 	.word	0xffff00ff
d005c138:	ff00ffff 	.word	0xff00ffff
d005c13c:	ff808080 	.word	0xff808080
d005c140:	ffff8000 	.word	0xffff8000
d005c144:	ff8000ff 	.word	0xff8000ff
d005c148:	ff0080ff 	.word	0xff0080ff
d005c14c:	ff80ff00 	.word	0xff80ff00
d005c150:	ffff0080 	.word	0xffff0080
d005c154:	ff00ff80 	.word	0xff00ff80
d005c158:	ffc0c0c0 	.word	0xffc0c0c0
d005c15c:	3f800000 	.word	0x3f800000
d005c160:	3f400000 	.word	0x3f400000
d005c164:	3f0ccccd 	.word	0x3f0ccccd
d005c168:	3eb33333 	.word	0x3eb33333
d005c16c:	3e4ccccd 	.word	0x3e4ccccd
d005c170:	bf800000 	.word	0xbf800000
d005c174:	bf000000 	.word	0xbf000000
d005c178:	3e99999a 	.word	0x3e99999a

d005c17c <museumRail.9361>:
d005c17c:	c2180000 42700000 3f800000 3f800000     ......pB...?...?
d005c18c:	00000000 c2180000 42900000 442f0000     ...........B../D
	...
d005c1a4:	c1f00000 43340000 44870000 00000000     ......4C...D....
d005c1b4:	3ecccccd 443e0000 433d0000 45014000     ...>..>D..=C.@.E
d005c1c4:	00000000 3ecccccd 44a6a000 42500000     .......>...D..PB
d005c1d4:	4491a000 00000000 3ecccccd 449d2000     ...D.......>. .D
d005c1e4:	43480000 c4208000 00000000 3ecccccd     ..HC.. ........>
d005c1f4:	44460000 438a8000 c4ce4000 00000000     ..FD...C.@......
d005c204:	3ecccccd 42100000 43dc0000 c4dac000     ...>...B...C....
d005c214:	00000000 3ecccccd 43150000 43dc0000     .......>...C...C
d005c224:	c3800000 00000000 3ecccccd c449c000     ...........>..I.
d005c234:	43440000 43d18000 00000000 3ecccccd     ..DC...C.......>
d005c244:	c487c000 43300000 43320000 00000000     ......0C..2C....
d005c254:	3ecccccd c4654000 42f00000 42be0000     ...>.@e....B...B
d005c264:	00000000 3ecccccd c3ab8000 42a60000     .......>.......B
d005c274:	c1b00000 00000000 3ecccccd c3580000     ...........>..X.
d005c284:	423c0000 424c0000 00000000 3ecccccd     ..<B..LB.......>
d005c294:	441fc000 423c0000 c23c0000 00000000     ...D..<B..<.....
d005c2a4:	3ecccccd 44e12000 43b80000 c2700000     ...>. .D...C..p.
d005c2b4:	40000000 3ecccccd 44dba000 43dc0000     ...@...>...D...C
d005c2c4:	44250000 00000000 3ecccccd 44090000     ..%D.......>...D
d005c2d4:	42fc0000 44856000 00000000 3ecccccd     ...B.`.D.......>
d005c2e4:	c2f80000 42a20000 44afe000 00000000     .......B...D....
d005c2f4:	3ecccccd c20c0000 42640000 4487a000     ...>......dB...D
d005c304:	00000000 3ecccccd c20c0000 42700000     .......>......pB
d005c314:	436b0000 00000000 3ecccccd c32d0000     ..kC.......>..-.
d005c324:	42700000 43420000 00000000 3ecccccd     ..pB..BC.......>

d005c334 <bayer4x4>:
d005c334:	0a020800 060e040c 09010b03 050d070f     ................
	...
d005c378:	3f800000 00000000 00000000 00000000     ...?............
d005c388:	3f800000 00000000 00000000 00000000     ...?............
d005c398:	3f800000 3a8312c5 3c23d70a 447a0000     ...?...:..#<..zD
d005c3a8:	43700000 43700000 43200000 3f2aaaab     ..pC..pC.. C..*?
	...
d005c3c4:	00000001 00000001 00000002 00000002     ................
d005c3d4:	00000003 00000003 00000000 00000004     ................
d005c3e4:	00000005 00000005 00000006 00000006     ................
d005c3f4:	00000007 00000007 00000004 00000000     ................
d005c404:	00000004 00000001 00000005 00000002     ................
d005c414:	00000006 00000003 00000007 00000001     ................
d005c424:	00000002 00000002 00000003 00000001     ................
d005c434:	00000004 00000002 00000004 00000003     ................
d005c444:	00000004                                ....

d005c448 <__sf_fake_stderr>:
	...

d005c468 <__sf_fake_stdin>:
	...

d005c488 <__sf_fake_stdout>:
	...

d005c4a8 <_global_impure_ptr>:
d005c4a8:	d0090dd0 4e454552 616d2054 636f6c6c     ....REENT malloc
d005c4b8:	63757320 64656563 2f006465 6c697562      succeeded./buil
d005c4c8:	6e672f64 6f742d75 2d736c6f 2d726f66     d/gnu-tools-for-
d005c4d8:	336d7473 2d395f32 30323032 2d32712d     stm32_9-2020-q2-
d005c4e8:	61647075 322e6574 31303230 2d313030     update.20201001-
d005c4f8:	31323631 6372732f 77656e2f 2f62696c     1621/src/newlib/
d005c508:	6c77656e 6c2f6269 2f636269 6c647473     newlib/libc/stdl
d005c518:	722f6269 2e646e61 202c0063 636e7566     ib/rand.c., func
d005c528:	6e6f6974 6100203a 72657373 6e6f6974     tion: .assertion
d005c538:	73252220 61662022 64656c69 6966203a      "%s" failed: fi
d005c548:	2220656c 2c227325 6e696c20 64252065     le "%s", line %d
d005c558:	73257325 2d23000a 00202b30 004c6c68     %s%s..#-0+ .hlL.
d005c568:	45676665 30004746 34333231 38373635     efgEFG.012345678
d005c578:	43424139 00464544 33323130 37363534     9ABCDEF.01234567
d005c588:	62613938 66656463 00000000 00000000     89abcdef........

d005c598 <__exp2f_data>:
d005c598:	00000000 3ff00000 d3158574 3fefd9b0     .......?t......?
d005c5a8:	6cf9890f 3fefb558 d0125b51 3fef9301     ...lX..?Q[.....?
d005c5b8:	3c7d517b 3fef72b8 3168b9aa 3fef5487     {Q}<.r.?..h1.T.?
d005c5c8:	6e756238 3fef387a f51fdee1 3fef1e9d     8bunz8.?.......?
d005c5d8:	0a31b715 3fef06fe 373aa9cb 3feef1a7     ..1....?..:7...?
d005c5e8:	4c123422 3feedea6 6061892d 3feece08     "4.L...?-.a`...?
d005c5f8:	d5362a27 3feebfda 569d4f82 3feeb42b     '*6....?.O.V+..?
d005c608:	dd485429 3feeab07 b03a5585 3feea47e     )TH....?.U:.~..?
d005c618:	667f3bcd 3feea09e e8ec5f74 3fee9f75     .;.f...?t_..u..?
d005c628:	73eb0187 3feea114 994cce13 3feea589     ...s...?..L....?
d005c638:	422aa0db 3feeace5 b0cdc5e5 3feeb737     ..*B...?....7..?
d005c648:	82a3f090 3feec491 b23e255d 3feed503     .......?]%>....?
d005c658:	995ad3ad 3feee89f f2fb5e47 3feeff76     ..Z....?G^..v..?
d005c668:	dd85529c 3fef199b dcef9069 3fef3720     .R.....?i... 7.?
d005c678:	dcfba487 3fef5818 337b9b5f 3fef7c97     .....X.?_.{3.|.?
d005c688:	a2a490da 3fefa4af 5b6e4540 3fefd076     .......?@En[v..?
d005c698:	00000000 42e80000 4b912394 3fac6af8     .......B.#.K.j.?
d005c6a8:	50fac4f3 3fcebfce ff0c52d6 3fe62e42     ...P...?.R..B..?
d005c6b8:	00000000 43380000 652b82fe 40471547     ......8C..+eG.G@
d005c6c8:	4b912394 3ebc6af8 50fac4f3 3f2ebfce     .#.K.j.>...P...?
d005c6d8:	ff0c52d6 3f962e42                       .R..B..?

d005c6e0 <__logf_data>:
d005c6e0:	79f8f3be 3ff661ec 808caade bfd57bf7     ...y.a.?.....{..
d005c6f0:	4aaf883d 3ff571ed a7c06ddb bfd2bef0     =..J.q.?.m......
d005c700:	f0f010b0 3ff49539 7f513a67 bfd01eae     ....9..?g:Q.....
d005c710:	b0b80385 3ff3c995 a68224e9 bfcb31d8     .......?.$...1..
d005c720:	0c8864a5 3ff30d19 0ac07758 bfc6574f     .d.....?Xw..OW..
d005c730:	7b0b8ea0 3ff25e22 c79c8100 bfc1aa2b     ...{"^.?....+...
d005c740:	4a1a343f 3ff1bb4a ce8c0e5e bfba4e76     ?4.JJ..?^...vN..
d005c750:	f08ae5ba 3ff12358 5a611ccc bfb1973c     ....X#.?..aZ<...
d005c760:	419900a7 3ff0953f 38e10c1e bfa252f4     ...A?..?...8.R..
d005c770:	00000000 3ff00000 00000000 00000000     .......?........
d005c780:	fd9a47ac 3fee608c 5df25984 3faaa5aa     .G...`.?.Y.]...?
d005c790:	1f026aa0 3feca4b3 aa362eb4 3fbc5e53     .j.....?..6.S^.?
d005c7a0:	576afce6 3feb2036 7720db08 3fc526e5     ..jW6 .?.. w.&.?
d005c7b0:	63a1aa2d 3fe9c2d1 0d224770 3fcbc286     -..c...?pG"....?
d005c7c0:	037841ed 3fe886e6 c8a07ee1 3fd1058b     .Ax....?.~.....?
d005c7d0:	f5534862 3fe767dc 57b6ee09 3fd40430     bHS..g.?...W0..?
d005c7e0:	fefa39ef 3fe62e42 48b88334 bfd00ea3     .9..B..?4..H....
d005c7f0:	0be00b6a 3fd5575b f20a4123 bfdffffe     j...[W.?#A......

d005c800 <__inv_pio4>:
d005c800:	000000a2 0000a2f9 00a2f983 a2f9836e     ............n...
d005c810:	f9836e4e 836e4e44 6e4e4415 4e441529     Nn..DNn..DNn).DN
d005c820:	441529fc 1529fc27 29fc2757 fc2757d1     .).D'.).W'.).W'.
d005c830:	2757d1f5 57d1f534 d1f534dd f534ddc0     ..W'4..W.4....4.
d005c840:	34ddc0db ddc0db62 c0db6295 db629599     ...4b....b....b.
d005c850:	6295993c 95993c43 993c4390 3c439041     <..bC<...C<.A.C<

d005c860 <__sincosf_table>:
d005c860:	00000000 3ff00000 00000000 bff00000     .......?........
d005c870:	00000000 bff00000 00000000 3ff00000     ...............?
d005c880:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d005c890:	00000000 3ff00000 fd0c621c bfdfffff     .......?.b......
d005c8a0:	e1068f19 3fa55553 e89a359d bf56c087     ....SU.?.5....V.
d005c8b0:	027bf8c3 3ef99343 5995a603 bfc55554     ..{.C..>...YTU..
d005c8c0:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).
d005c8d0:	00000000 3ff00000 00000000 bff00000     .......?........
d005c8e0:	00000000 bff00000 00000000 3ff00000     ...............?
d005c8f0:	6dc9c883 41645f30 54442d18 3ff921fb     ...m0_dA.-DT.!.?
d005c900:	00000000 bff00000 fd0c621c 3fdfffff     .........b.....?
d005c910:	e1068f19 bfa55553 e89a359d 3f56c087     ....SU...5....V?
d005c920:	027bf8c3 bef99343 5995a603 bfc55554     ..{.C......YTU..
d005c930:	05230bc4 3f811076 3774cf24 bf2994eb     ..#.v..?$.t7..).

d005c940 <CSWTCH.8>:
d005c940:	bf490fdb 4016cbe4 c016cbe4              ..I....@....

d005c94c <CSWTCH.9>:
d005c94c:	80000000 40490fdb c0490fdb              ......I@..I.

d005c958 <atanhi>:
d005c958:	3eed6338 3f490fda 3f7b985e 3fc90fda     8c.>..I?^.{?...?

d005c968 <atanlo>:
d005c968:	31ac3769 33222168 33140fb4 33a22168     i7.1h!"3...3h!.3

Disassembly of section .init:

d005c978 <_init>:
d005c978:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005c97a:	bf00      	nop

Disassembly of section .fini:

d005c97c <_fini>:
d005c97c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
d005c97e:	bf00      	nop
